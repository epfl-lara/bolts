; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277688 () Bool)

(assert start!277688)

(declare-fun b!2851337 () Bool)

(assert (=> b!2851337 true))

(declare-fun condSetEmpty!25144 () Bool)

(declare-datatypes ((C!17270 0))(
  ( (C!17271 (val!10669 Int)) )
))
(declare-datatypes ((Regex!8544 0))(
  ( (ElementMatch!8544 (c!459735 C!17270)) (Concat!13865 (regOne!17600 Regex!8544) (regTwo!17600 Regex!8544)) (EmptyExpr!8544) (Star!8544 (reg!8873 Regex!8544)) (EmptyLang!8544) (Union!8544 (regOne!17601 Regex!8544) (regTwo!17601 Regex!8544)) )
))
(declare-datatypes ((List!34097 0))(
  ( (Nil!33973) (Cons!33973 (h!39393 Regex!8544) (t!233128 List!34097)) )
))
(declare-datatypes ((Context!5108 0))(
  ( (Context!5109 (exprs!3054 List!34097)) )
))
(declare-fun z!809 () (Set Context!5108))

(assert (=> b!2851337 (= condSetEmpty!25144 (= z!809 (as set.empty (Set Context!5108))))))

(declare-fun setRes!25144 () Bool)

(assert (=> b!2851337 setRes!25144))

(declare-fun setIsEmpty!25144 () Bool)

(assert (=> setIsEmpty!25144 setRes!25144))

(declare-fun setNonEmpty!25144 () Bool)

(assert (=> setNonEmpty!25144 (= setRes!25144 true)))

(declare-fun setElem!25144 () Context!5108)

(declare-fun setRest!25144 () (Set Context!5108))

(assert (=> setNonEmpty!25144 (= z!809 (set.union (set.insert setElem!25144 (as set.empty (Set Context!5108))) setRest!25144))))

(assert (= (and b!2851337 condSetEmpty!25144) setIsEmpty!25144))

(assert (= (and b!2851337 (not condSetEmpty!25144)) setNonEmpty!25144))

(declare-fun b!2851335 () Bool)

(declare-fun e!1806643 () Bool)

(declare-fun tp!916173 () Bool)

(assert (=> b!2851335 (= e!1806643 tp!916173)))

(declare-fun e!1806641 () Bool)

(declare-fun tp!916168 () Bool)

(declare-fun b!2851336 () Bool)

(declare-datatypes ((List!34098 0))(
  ( (Nil!33974) (Cons!33974 (h!39394 Context!5108) (t!233129 List!34098)) )
))
(declare-fun zl!222 () List!34098)

(declare-fun e!1806639 () Bool)

(declare-fun inv!45998 (Context!5108) Bool)

(assert (=> b!2851336 (= e!1806639 (and (inv!45998 (h!39394 zl!222)) e!1806641 tp!916168))))

(declare-fun e!1806645 () Bool)

(declare-fun e!1806640 () Bool)

(assert (=> b!2851337 (= e!1806645 (not e!1806640))))

(declare-fun res!1185277 () Bool)

(assert (=> b!2851337 (=> res!1185277 e!1806640)))

(declare-fun lambda!104858 () Int)

(declare-fun Exists!1270 (Int) Bool)

(assert (=> b!2851337 (= res!1185277 (not (Exists!1270 lambda!104858)))))

(assert (=> b!2851337 (Exists!1270 lambda!104858)))

(declare-datatypes ((Unit!47659 0))(
  ( (Unit!47660) )
))
(declare-fun lt!1013500 () Unit!47659)

(declare-datatypes ((List!34099 0))(
  ( (Nil!33975) (Cons!33975 (h!39395 C!17270) (t!233130 List!34099)) )
))
(declare-fun prefix!862 () List!34099)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!318 ((Set Context!5108) List!34099) Unit!47659)

(assert (=> b!2851337 (= lt!1013500 (lemmaPrefixMatchThenExistsStringThatMatches!318 z!809 prefix!862))))

(declare-fun b!2851339 () Bool)

(declare-fun e!1806644 () Bool)

(declare-fun tp_is_empty!14825 () Bool)

(declare-fun tp!916166 () Bool)

(assert (=> b!2851339 (= e!1806644 (and tp_is_empty!14825 tp!916166))))

(declare-fun b!2851340 () Bool)

(declare-fun res!1185279 () Bool)

(assert (=> b!2851340 (=> (not res!1185279) (not e!1806645))))

(declare-fun r!5723 () Regex!8544)

(declare-fun unfocusZipper!216 (List!34098) Regex!8544)

(assert (=> b!2851340 (= res!1185279 (= r!5723 (unfocusZipper!216 zl!222)))))

(declare-fun setIsEmpty!25141 () Bool)

(declare-fun setRes!25141 () Bool)

(assert (=> setIsEmpty!25141 setRes!25141))

(declare-fun b!2851341 () Bool)

(declare-fun e!1806642 () Bool)

(declare-fun tp!916167 () Bool)

(declare-fun tp!916170 () Bool)

(assert (=> b!2851341 (= e!1806642 (and tp!916167 tp!916170))))

(declare-fun b!2851342 () Bool)

(declare-fun tp!916172 () Bool)

(assert (=> b!2851342 (= e!1806642 tp!916172)))

(declare-fun b!2851343 () Bool)

(declare-fun res!1185280 () Bool)

(assert (=> b!2851343 (=> (not res!1185280) (not e!1806645))))

(declare-fun prefixMatch!852 (Regex!8544 List!34099) Bool)

(assert (=> b!2851343 (= res!1185280 (not (prefixMatch!852 r!5723 prefix!862)))))

(declare-fun b!2851344 () Bool)

(assert (=> b!2851344 (= e!1806642 tp_is_empty!14825)))

(declare-fun b!2851345 () Bool)

(declare-fun res!1185278 () Bool)

(assert (=> b!2851345 (=> (not res!1185278) (not e!1806645))))

(declare-fun prefixMatchZipper!276 ((Set Context!5108) List!34099) Bool)

(assert (=> b!2851345 (= res!1185278 (prefixMatchZipper!276 z!809 prefix!862))))

(declare-fun b!2851346 () Bool)

(declare-fun tp!916165 () Bool)

(assert (=> b!2851346 (= e!1806641 tp!916165)))

(declare-fun b!2851347 () Bool)

(declare-fun matchZipper!410 ((Set Context!5108) List!34099) Bool)

(declare-fun pickWitness!289 (Int) List!34099)

(assert (=> b!2851347 (= e!1806640 (matchZipper!410 z!809 (pickWitness!289 lambda!104858)))))

(declare-fun res!1185276 () Bool)

(assert (=> start!277688 (=> (not res!1185276) (not e!1806645))))

(declare-fun validRegex!3414 (Regex!8544) Bool)

(assert (=> start!277688 (= res!1185276 (validRegex!3414 r!5723))))

(assert (=> start!277688 e!1806645))

(assert (=> start!277688 e!1806642))

(declare-fun condSetEmpty!25141 () Bool)

(assert (=> start!277688 (= condSetEmpty!25141 (= z!809 (as set.empty (Set Context!5108))))))

(assert (=> start!277688 setRes!25141))

(assert (=> start!277688 e!1806639))

(assert (=> start!277688 e!1806644))

(declare-fun b!2851338 () Bool)

(declare-fun res!1185275 () Bool)

(assert (=> b!2851338 (=> (not res!1185275) (not e!1806645))))

(declare-fun toList!1957 ((Set Context!5108)) List!34098)

(assert (=> b!2851338 (= res!1185275 (= (toList!1957 z!809) zl!222))))

(declare-fun tp!916171 () Bool)

(declare-fun setElem!25141 () Context!5108)

(declare-fun setNonEmpty!25141 () Bool)

(assert (=> setNonEmpty!25141 (= setRes!25141 (and tp!916171 (inv!45998 setElem!25141) e!1806643))))

(declare-fun setRest!25141 () (Set Context!5108))

(assert (=> setNonEmpty!25141 (= z!809 (set.union (set.insert setElem!25141 (as set.empty (Set Context!5108))) setRest!25141))))

(declare-fun b!2851348 () Bool)

(declare-fun tp!916174 () Bool)

(declare-fun tp!916169 () Bool)

(assert (=> b!2851348 (= e!1806642 (and tp!916174 tp!916169))))

(assert (= (and start!277688 res!1185276) b!2851338))

(assert (= (and b!2851338 res!1185275) b!2851340))

(assert (= (and b!2851340 res!1185279) b!2851343))

(assert (= (and b!2851343 res!1185280) b!2851345))

(assert (= (and b!2851345 res!1185278) b!2851337))

(assert (= (and b!2851337 (not res!1185277)) b!2851347))

(assert (= (and start!277688 (is-ElementMatch!8544 r!5723)) b!2851344))

(assert (= (and start!277688 (is-Concat!13865 r!5723)) b!2851341))

(assert (= (and start!277688 (is-Star!8544 r!5723)) b!2851342))

(assert (= (and start!277688 (is-Union!8544 r!5723)) b!2851348))

(assert (= (and start!277688 condSetEmpty!25141) setIsEmpty!25141))

(assert (= (and start!277688 (not condSetEmpty!25141)) setNonEmpty!25141))

(assert (= setNonEmpty!25141 b!2851335))

(assert (= b!2851336 b!2851346))

(assert (= (and start!277688 (is-Cons!33974 zl!222)) b!2851336))

(assert (= (and start!277688 (is-Cons!33975 prefix!862)) b!2851339))

(declare-fun m!3276997 () Bool)

(assert (=> b!2851337 m!3276997))

(assert (=> b!2851337 m!3276997))

(declare-fun m!3276999 () Bool)

(assert (=> b!2851337 m!3276999))

(declare-fun m!3277001 () Bool)

(assert (=> b!2851345 m!3277001))

(declare-fun m!3277003 () Bool)

(assert (=> b!2851343 m!3277003))

(declare-fun m!3277005 () Bool)

(assert (=> b!2851347 m!3277005))

(assert (=> b!2851347 m!3277005))

(declare-fun m!3277007 () Bool)

(assert (=> b!2851347 m!3277007))

(declare-fun m!3277009 () Bool)

(assert (=> b!2851338 m!3277009))

(declare-fun m!3277011 () Bool)

(assert (=> start!277688 m!3277011))

(declare-fun m!3277013 () Bool)

(assert (=> b!2851336 m!3277013))

(declare-fun m!3277015 () Bool)

(assert (=> b!2851340 m!3277015))

(declare-fun m!3277017 () Bool)

(assert (=> setNonEmpty!25141 m!3277017))

(push 1)

(assert (not b!2851337))

(assert (not b!2851343))

(assert (not b!2851347))

(assert (not b!2851335))

(assert (not setNonEmpty!25144))

(assert (not b!2851345))

(assert (not b!2851342))

(assert (not start!277688))

(assert tp_is_empty!14825)

(assert (not b!2851348))

(assert (not setNonEmpty!25141))

(assert (not b!2851336))

(assert (not b!2851338))

(assert (not b!2851346))

(assert (not b!2851340))

(assert (not b!2851341))

(assert (not b!2851339))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!183680 () Bool)

(declare-fun c!459741 () Bool)

(declare-fun call!183687 () Bool)

(declare-fun c!459742 () Bool)

(assert (=> bm!183680 (= call!183687 (validRegex!3414 (ite c!459741 (reg!8873 r!5723) (ite c!459742 (regOne!17601 r!5723) (regOne!17600 r!5723)))))))

(declare-fun bm!183681 () Bool)

(declare-fun call!183686 () Bool)

(assert (=> bm!183681 (= call!183686 call!183687)))

(declare-fun bm!183682 () Bool)

(declare-fun call!183685 () Bool)

(assert (=> bm!183682 (= call!183685 (validRegex!3414 (ite c!459742 (regTwo!17601 r!5723) (regTwo!17600 r!5723))))))

(declare-fun b!2851423 () Bool)

(declare-fun e!1806693 () Bool)

(declare-fun e!1806687 () Bool)

(assert (=> b!2851423 (= e!1806693 e!1806687)))

(declare-fun res!1185316 () Bool)

(declare-fun nullable!2634 (Regex!8544) Bool)

(assert (=> b!2851423 (= res!1185316 (not (nullable!2634 (reg!8873 r!5723))))))

(assert (=> b!2851423 (=> (not res!1185316) (not e!1806687))))

(declare-fun b!2851424 () Bool)

(declare-fun res!1185319 () Bool)

(declare-fun e!1806690 () Bool)

(assert (=> b!2851424 (=> (not res!1185319) (not e!1806690))))

(assert (=> b!2851424 (= res!1185319 call!183686)))

(declare-fun e!1806692 () Bool)

(assert (=> b!2851424 (= e!1806692 e!1806690)))

(declare-fun b!2851425 () Bool)

(assert (=> b!2851425 (= e!1806690 call!183685)))

(declare-fun d!826024 () Bool)

(declare-fun res!1185318 () Bool)

(declare-fun e!1806689 () Bool)

(assert (=> d!826024 (=> res!1185318 e!1806689)))

(assert (=> d!826024 (= res!1185318 (is-ElementMatch!8544 r!5723))))

(assert (=> d!826024 (= (validRegex!3414 r!5723) e!1806689)))

(declare-fun b!2851426 () Bool)

(assert (=> b!2851426 (= e!1806689 e!1806693)))

(assert (=> b!2851426 (= c!459741 (is-Star!8544 r!5723))))

(declare-fun b!2851427 () Bool)

(assert (=> b!2851427 (= e!1806693 e!1806692)))

(assert (=> b!2851427 (= c!459742 (is-Union!8544 r!5723))))

(declare-fun b!2851428 () Bool)

(declare-fun res!1185315 () Bool)

(declare-fun e!1806691 () Bool)

(assert (=> b!2851428 (=> res!1185315 e!1806691)))

(assert (=> b!2851428 (= res!1185315 (not (is-Concat!13865 r!5723)))))

(assert (=> b!2851428 (= e!1806692 e!1806691)))

(declare-fun b!2851429 () Bool)

(assert (=> b!2851429 (= e!1806687 call!183687)))

(declare-fun b!2851430 () Bool)

(declare-fun e!1806688 () Bool)

(assert (=> b!2851430 (= e!1806691 e!1806688)))

(declare-fun res!1185317 () Bool)

(assert (=> b!2851430 (=> (not res!1185317) (not e!1806688))))

(assert (=> b!2851430 (= res!1185317 call!183686)))

(declare-fun b!2851431 () Bool)

(assert (=> b!2851431 (= e!1806688 call!183685)))

(assert (= (and d!826024 (not res!1185318)) b!2851426))

(assert (= (and b!2851426 c!459741) b!2851423))

(assert (= (and b!2851426 (not c!459741)) b!2851427))

(assert (= (and b!2851423 res!1185316) b!2851429))

(assert (= (and b!2851427 c!459742) b!2851424))

(assert (= (and b!2851427 (not c!459742)) b!2851428))

(assert (= (and b!2851424 res!1185319) b!2851425))

(assert (= (and b!2851428 (not res!1185315)) b!2851430))

(assert (= (and b!2851430 res!1185317) b!2851431))

(assert (= (or b!2851424 b!2851430) bm!183681))

(assert (= (or b!2851425 b!2851431) bm!183682))

(assert (= (or b!2851429 bm!183681) bm!183680))

(declare-fun m!3277041 () Bool)

(assert (=> bm!183680 m!3277041))

(declare-fun m!3277043 () Bool)

(assert (=> bm!183682 m!3277043))

(declare-fun m!3277045 () Bool)

(assert (=> b!2851423 m!3277045))

(assert (=> start!277688 d!826024))

(declare-fun d!826026 () Bool)

(declare-fun lambda!104868 () Int)

(declare-fun forall!6955 (List!34097 Int) Bool)

(assert (=> d!826026 (= (inv!45998 (h!39394 zl!222)) (forall!6955 (exprs!3054 (h!39394 zl!222)) lambda!104868))))

(declare-fun bs!520135 () Bool)

(assert (= bs!520135 d!826026))

(declare-fun m!3277047 () Bool)

(assert (=> bs!520135 m!3277047))

(assert (=> b!2851336 d!826026))

(declare-fun d!826030 () Bool)

(declare-fun c!459745 () Bool)

(declare-fun isEmpty!18584 (List!34099) Bool)

(assert (=> d!826030 (= c!459745 (isEmpty!18584 prefix!862))))

(declare-fun e!1806696 () Bool)

(assert (=> d!826030 (= (prefixMatchZipper!276 z!809 prefix!862) e!1806696)))

(declare-fun b!2851436 () Bool)

(declare-fun lostCauseZipper!530 ((Set Context!5108)) Bool)

(assert (=> b!2851436 (= e!1806696 (not (lostCauseZipper!530 z!809)))))

(declare-fun b!2851437 () Bool)

(declare-fun derivationStepZipper!414 ((Set Context!5108) C!17270) (Set Context!5108))

(declare-fun head!6261 (List!34099) C!17270)

(declare-fun tail!4486 (List!34099) List!34099)

(assert (=> b!2851437 (= e!1806696 (prefixMatchZipper!276 (derivationStepZipper!414 z!809 (head!6261 prefix!862)) (tail!4486 prefix!862)))))

(assert (= (and d!826030 c!459745) b!2851436))

(assert (= (and d!826030 (not c!459745)) b!2851437))

(declare-fun m!3277051 () Bool)

(assert (=> d!826030 m!3277051))

(declare-fun m!3277053 () Bool)

(assert (=> b!2851436 m!3277053))

(declare-fun m!3277055 () Bool)

(assert (=> b!2851437 m!3277055))

(assert (=> b!2851437 m!3277055))

(declare-fun m!3277057 () Bool)

(assert (=> b!2851437 m!3277057))

(declare-fun m!3277059 () Bool)

(assert (=> b!2851437 m!3277059))

(assert (=> b!2851437 m!3277057))

(assert (=> b!2851437 m!3277059))

(declare-fun m!3277061 () Bool)

(assert (=> b!2851437 m!3277061))

(assert (=> b!2851345 d!826030))

(declare-fun d!826034 () Bool)

(declare-fun lt!1013506 () Regex!8544)

(assert (=> d!826034 (validRegex!3414 lt!1013506)))

(declare-fun generalisedUnion!548 (List!34097) Regex!8544)

(declare-fun unfocusZipperList!61 (List!34098) List!34097)

(assert (=> d!826034 (= lt!1013506 (generalisedUnion!548 (unfocusZipperList!61 zl!222)))))

(assert (=> d!826034 (= (unfocusZipper!216 zl!222) lt!1013506)))

(declare-fun bs!520137 () Bool)

(assert (= bs!520137 d!826034))

(declare-fun m!3277063 () Bool)

(assert (=> bs!520137 m!3277063))

(declare-fun m!3277065 () Bool)

(assert (=> bs!520137 m!3277065))

(assert (=> bs!520137 m!3277065))

(declare-fun m!3277067 () Bool)

(assert (=> bs!520137 m!3277067))

(assert (=> b!2851340 d!826034))

(declare-fun bs!520138 () Bool)

(declare-fun d!826036 () Bool)

(assert (= bs!520138 (and d!826036 d!826026)))

(declare-fun lambda!104872 () Int)

(assert (=> bs!520138 (= lambda!104872 lambda!104868)))

(assert (=> d!826036 (= (inv!45998 setElem!25141) (forall!6955 (exprs!3054 setElem!25141) lambda!104872))))

(declare-fun bs!520139 () Bool)

(assert (= bs!520139 d!826036))

(declare-fun m!3277069 () Bool)

(assert (=> bs!520139 m!3277069))

(assert (=> setNonEmpty!25141 d!826036))

(declare-fun d!826038 () Bool)

(declare-fun c!459750 () Bool)

(assert (=> d!826038 (= c!459750 (isEmpty!18584 prefix!862))))

(declare-fun e!1806701 () Bool)

(assert (=> d!826038 (= (prefixMatch!852 r!5723 prefix!862) e!1806701)))

(declare-fun b!2851446 () Bool)

(declare-fun lostCause!732 (Regex!8544) Bool)

(assert (=> b!2851446 (= e!1806701 (not (lostCause!732 r!5723)))))

(declare-fun b!2851447 () Bool)

(declare-fun derivativeStep!2257 (Regex!8544 C!17270) Regex!8544)

(assert (=> b!2851447 (= e!1806701 (prefixMatch!852 (derivativeStep!2257 r!5723 (head!6261 prefix!862)) (tail!4486 prefix!862)))))

(assert (= (and d!826038 c!459750) b!2851446))

(assert (= (and d!826038 (not c!459750)) b!2851447))

(assert (=> d!826038 m!3277051))

(declare-fun m!3277071 () Bool)

(assert (=> b!2851446 m!3277071))

(assert (=> b!2851447 m!3277055))

(assert (=> b!2851447 m!3277055))

(declare-fun m!3277073 () Bool)

(assert (=> b!2851447 m!3277073))

(assert (=> b!2851447 m!3277059))

(assert (=> b!2851447 m!3277073))

(assert (=> b!2851447 m!3277059))

(declare-fun m!3277075 () Bool)

(assert (=> b!2851447 m!3277075))

(assert (=> b!2851343 d!826038))

(declare-fun d!826040 () Bool)

(declare-fun e!1806705 () Bool)

(assert (=> d!826040 e!1806705))

(declare-fun res!1185322 () Bool)

(assert (=> d!826040 (=> (not res!1185322) (not e!1806705))))

(declare-fun lt!1013509 () List!34098)

(declare-fun noDuplicate!558 (List!34098) Bool)

(assert (=> d!826040 (= res!1185322 (noDuplicate!558 lt!1013509))))

(declare-fun choose!16765 ((Set Context!5108)) List!34098)

(assert (=> d!826040 (= lt!1013509 (choose!16765 z!809))))

(assert (=> d!826040 (= (toList!1957 z!809) lt!1013509)))

(declare-fun b!2851452 () Bool)

(declare-fun content!4658 (List!34098) (Set Context!5108))

(assert (=> b!2851452 (= e!1806705 (= (content!4658 lt!1013509) z!809))))

(assert (= (and d!826040 res!1185322) b!2851452))

(declare-fun m!3277089 () Bool)

(assert (=> d!826040 m!3277089))

(declare-fun m!3277091 () Bool)

(assert (=> d!826040 m!3277091))

(declare-fun m!3277093 () Bool)

(assert (=> b!2851452 m!3277093))

(assert (=> b!2851338 d!826040))

(declare-fun d!826044 () Bool)

(declare-fun choose!16766 (Int) Bool)

(assert (=> d!826044 (= (Exists!1270 lambda!104858) (choose!16766 lambda!104858))))

(declare-fun bs!520140 () Bool)

(assert (= bs!520140 d!826044))

(declare-fun m!3277095 () Bool)

(assert (=> bs!520140 m!3277095))

(assert (=> b!2851337 d!826044))

(declare-fun bs!520142 () Bool)

(declare-fun d!826046 () Bool)

(assert (= bs!520142 (and d!826046 b!2851337)))

(declare-fun lambda!104875 () Int)

(assert (=> bs!520142 (= lambda!104875 lambda!104858)))

(assert (=> d!826046 true))

(declare-fun condSetEmpty!25151 () Bool)

(assert (=> d!826046 (= condSetEmpty!25151 (= z!809 (as set.empty (Set Context!5108))))))

(declare-fun setRes!25151 () Bool)

(assert (=> d!826046 setRes!25151))

(declare-fun setIsEmpty!25151 () Bool)

(assert (=> setIsEmpty!25151 setRes!25151))

(declare-fun setNonEmpty!25151 () Bool)

(assert (=> setNonEmpty!25151 (= setRes!25151 true)))

(declare-fun setElem!25151 () Context!5108)

(declare-fun setRest!25151 () (Set Context!5108))

(assert (=> setNonEmpty!25151 (= z!809 (set.union (set.insert setElem!25151 (as set.empty (Set Context!5108))) setRest!25151))))

(assert (= (and d!826046 condSetEmpty!25151) setIsEmpty!25151))

(assert (= (and d!826046 (not condSetEmpty!25151)) setNonEmpty!25151))

(assert (=> d!826046 (Exists!1270 lambda!104875)))

(declare-fun lt!1013512 () Unit!47659)

(declare-fun choose!16767 ((Set Context!5108) List!34099) Unit!47659)

(assert (=> d!826046 (= lt!1013512 (choose!16767 z!809 prefix!862))))

(assert (=> d!826046 (prefixMatchZipper!276 z!809 prefix!862)))

(assert (=> d!826046 (= (lemmaPrefixMatchThenExistsStringThatMatches!318 z!809 prefix!862) lt!1013512)))

(declare-fun m!3277099 () Bool)

(assert (=> d!826046 m!3277099))

(declare-fun m!3277101 () Bool)

(assert (=> d!826046 m!3277101))

(assert (=> d!826046 m!3277001))

(assert (=> b!2851337 d!826046))

(declare-fun d!826050 () Bool)

(declare-fun c!459754 () Bool)

(assert (=> d!826050 (= c!459754 (isEmpty!18584 (pickWitness!289 lambda!104858)))))

(declare-fun e!1806710 () Bool)

(assert (=> d!826050 (= (matchZipper!410 z!809 (pickWitness!289 lambda!104858)) e!1806710)))

(declare-fun b!2851459 () Bool)

(declare-fun nullableZipper!679 ((Set Context!5108)) Bool)

(assert (=> b!2851459 (= e!1806710 (nullableZipper!679 z!809))))

(declare-fun b!2851460 () Bool)

(assert (=> b!2851460 (= e!1806710 (matchZipper!410 (derivationStepZipper!414 z!809 (head!6261 (pickWitness!289 lambda!104858))) (tail!4486 (pickWitness!289 lambda!104858))))))

(assert (= (and d!826050 c!459754) b!2851459))

(assert (= (and d!826050 (not c!459754)) b!2851460))

(assert (=> d!826050 m!3277005))

(declare-fun m!3277103 () Bool)

(assert (=> d!826050 m!3277103))

(declare-fun m!3277105 () Bool)

(assert (=> b!2851459 m!3277105))

(assert (=> b!2851460 m!3277005))

(declare-fun m!3277107 () Bool)

(assert (=> b!2851460 m!3277107))

(assert (=> b!2851460 m!3277107))

(declare-fun m!3277109 () Bool)

(assert (=> b!2851460 m!3277109))

(assert (=> b!2851460 m!3277005))

(declare-fun m!3277111 () Bool)

(assert (=> b!2851460 m!3277111))

(assert (=> b!2851460 m!3277109))

(assert (=> b!2851460 m!3277111))

(declare-fun m!3277113 () Bool)

(assert (=> b!2851460 m!3277113))

(assert (=> b!2851347 d!826050))

(declare-fun d!826052 () Bool)

(declare-fun lt!1013515 () List!34099)

(declare-fun dynLambda!14224 (Int List!34099) Bool)

(assert (=> d!826052 (dynLambda!14224 lambda!104858 lt!1013515)))

(declare-fun choose!16768 (Int) List!34099)

(assert (=> d!826052 (= lt!1013515 (choose!16768 lambda!104858))))

(assert (=> d!826052 (Exists!1270 lambda!104858)))

(assert (=> d!826052 (= (pickWitness!289 lambda!104858) lt!1013515)))

(declare-fun b_lambda!85651 () Bool)

(assert (=> (not b_lambda!85651) (not d!826052)))

(declare-fun bs!520143 () Bool)

(assert (= bs!520143 d!826052))

(declare-fun m!3277115 () Bool)

(assert (=> bs!520143 m!3277115))

(declare-fun m!3277117 () Bool)

(assert (=> bs!520143 m!3277117))

(assert (=> bs!520143 m!3276997))

(assert (=> b!2851347 d!826052))

(declare-fun b!2851468 () Bool)

(declare-fun e!1806716 () Bool)

(declare-fun tp!916209 () Bool)

(assert (=> b!2851468 (= e!1806716 tp!916209)))

(declare-fun tp!916210 () Bool)

(declare-fun b!2851467 () Bool)

(declare-fun e!1806715 () Bool)

(assert (=> b!2851467 (= e!1806715 (and (inv!45998 (h!39394 (t!233129 zl!222))) e!1806716 tp!916210))))

(assert (=> b!2851336 (= tp!916168 e!1806715)))

(assert (= b!2851467 b!2851468))

(assert (= (and b!2851336 (is-Cons!33974 (t!233129 zl!222))) b!2851467))

(declare-fun m!3277119 () Bool)

(assert (=> b!2851467 m!3277119))

(declare-fun b!2851473 () Bool)

(declare-fun e!1806719 () Bool)

(declare-fun tp!916215 () Bool)

(declare-fun tp!916216 () Bool)

(assert (=> b!2851473 (= e!1806719 (and tp!916215 tp!916216))))

(assert (=> b!2851335 (= tp!916173 e!1806719)))

(assert (= (and b!2851335 (is-Cons!33973 (exprs!3054 setElem!25141))) b!2851473))

(declare-fun b!2851478 () Bool)

(declare-fun e!1806722 () Bool)

(declare-fun tp!916219 () Bool)

(assert (=> b!2851478 (= e!1806722 (and tp_is_empty!14825 tp!916219))))

(assert (=> b!2851339 (= tp!916166 e!1806722)))

(assert (= (and b!2851339 (is-Cons!33975 (t!233130 prefix!862))) b!2851478))

(declare-fun b!2851494 () Bool)

(declare-fun e!1806727 () Bool)

(declare-fun tp!916232 () Bool)

(declare-fun tp!916233 () Bool)

(assert (=> b!2851494 (= e!1806727 (and tp!916232 tp!916233))))

(declare-fun b!2851491 () Bool)

(assert (=> b!2851491 (= e!1806727 tp_is_empty!14825)))

(assert (=> b!2851348 (= tp!916174 e!1806727)))

(declare-fun b!2851492 () Bool)

(declare-fun tp!916230 () Bool)

(declare-fun tp!916234 () Bool)

(assert (=> b!2851492 (= e!1806727 (and tp!916230 tp!916234))))

(declare-fun b!2851493 () Bool)

(declare-fun tp!916231 () Bool)

(assert (=> b!2851493 (= e!1806727 tp!916231)))

(assert (= (and b!2851348 (is-ElementMatch!8544 (regOne!17601 r!5723))) b!2851491))

(assert (= (and b!2851348 (is-Concat!13865 (regOne!17601 r!5723))) b!2851492))

(assert (= (and b!2851348 (is-Star!8544 (regOne!17601 r!5723))) b!2851493))

(assert (= (and b!2851348 (is-Union!8544 (regOne!17601 r!5723))) b!2851494))

(declare-fun b!2851498 () Bool)

(declare-fun e!1806728 () Bool)

(declare-fun tp!916237 () Bool)

(declare-fun tp!916238 () Bool)

(assert (=> b!2851498 (= e!1806728 (and tp!916237 tp!916238))))

(declare-fun b!2851495 () Bool)

(assert (=> b!2851495 (= e!1806728 tp_is_empty!14825)))

(assert (=> b!2851348 (= tp!916169 e!1806728)))

(declare-fun b!2851496 () Bool)

(declare-fun tp!916235 () Bool)

(declare-fun tp!916239 () Bool)

(assert (=> b!2851496 (= e!1806728 (and tp!916235 tp!916239))))

(declare-fun b!2851497 () Bool)

(declare-fun tp!916236 () Bool)

(assert (=> b!2851497 (= e!1806728 tp!916236)))

(assert (= (and b!2851348 (is-ElementMatch!8544 (regTwo!17601 r!5723))) b!2851495))

(assert (= (and b!2851348 (is-Concat!13865 (regTwo!17601 r!5723))) b!2851496))

(assert (= (and b!2851348 (is-Star!8544 (regTwo!17601 r!5723))) b!2851497))

(assert (= (and b!2851348 (is-Union!8544 (regTwo!17601 r!5723))) b!2851498))

(declare-fun condSetEmpty!25154 () Bool)

(assert (=> setNonEmpty!25141 (= condSetEmpty!25154 (= setRest!25141 (as set.empty (Set Context!5108))))))

(declare-fun setRes!25154 () Bool)

(assert (=> setNonEmpty!25141 (= tp!916171 setRes!25154)))

(declare-fun setIsEmpty!25154 () Bool)

(assert (=> setIsEmpty!25154 setRes!25154))

(declare-fun setElem!25154 () Context!5108)

(declare-fun e!1806731 () Bool)

(declare-fun setNonEmpty!25154 () Bool)

(declare-fun tp!916244 () Bool)

(assert (=> setNonEmpty!25154 (= setRes!25154 (and tp!916244 (inv!45998 setElem!25154) e!1806731))))

(declare-fun setRest!25154 () (Set Context!5108))

(assert (=> setNonEmpty!25154 (= setRest!25141 (set.union (set.insert setElem!25154 (as set.empty (Set Context!5108))) setRest!25154))))

(declare-fun b!2851503 () Bool)

(declare-fun tp!916245 () Bool)

(assert (=> b!2851503 (= e!1806731 tp!916245)))

(assert (= (and setNonEmpty!25141 condSetEmpty!25154) setIsEmpty!25154))

(assert (= (and setNonEmpty!25141 (not condSetEmpty!25154)) setNonEmpty!25154))

(assert (= setNonEmpty!25154 b!2851503))

(declare-fun m!3277121 () Bool)

(assert (=> setNonEmpty!25154 m!3277121))

(declare-fun b!2851507 () Bool)

(declare-fun e!1806732 () Bool)

(declare-fun tp!916248 () Bool)

(declare-fun tp!916249 () Bool)

(assert (=> b!2851507 (= e!1806732 (and tp!916248 tp!916249))))

(declare-fun b!2851504 () Bool)

(assert (=> b!2851504 (= e!1806732 tp_is_empty!14825)))

(assert (=> b!2851342 (= tp!916172 e!1806732)))

(declare-fun b!2851505 () Bool)

(declare-fun tp!916246 () Bool)

(declare-fun tp!916250 () Bool)

(assert (=> b!2851505 (= e!1806732 (and tp!916246 tp!916250))))

(declare-fun b!2851506 () Bool)

(declare-fun tp!916247 () Bool)

(assert (=> b!2851506 (= e!1806732 tp!916247)))

(assert (= (and b!2851342 (is-ElementMatch!8544 (reg!8873 r!5723))) b!2851504))

(assert (= (and b!2851342 (is-Concat!13865 (reg!8873 r!5723))) b!2851505))

(assert (= (and b!2851342 (is-Star!8544 (reg!8873 r!5723))) b!2851506))

(assert (= (and b!2851342 (is-Union!8544 (reg!8873 r!5723))) b!2851507))

(declare-fun condSetEmpty!25155 () Bool)

(assert (=> setNonEmpty!25144 (= condSetEmpty!25155 (= setRest!25144 (as set.empty (Set Context!5108))))))

(declare-fun setRes!25155 () Bool)

(assert (=> setNonEmpty!25144 setRes!25155))

(declare-fun setIsEmpty!25155 () Bool)

(assert (=> setIsEmpty!25155 setRes!25155))

(declare-fun setNonEmpty!25155 () Bool)

(assert (=> setNonEmpty!25155 (= setRes!25155 true)))

(declare-fun setElem!25155 () Context!5108)

(declare-fun setRest!25155 () (Set Context!5108))

(assert (=> setNonEmpty!25155 (= setRest!25144 (set.union (set.insert setElem!25155 (as set.empty (Set Context!5108))) setRest!25155))))

(assert (= (and setNonEmpty!25144 condSetEmpty!25155) setIsEmpty!25155))

(assert (= (and setNonEmpty!25144 (not condSetEmpty!25155)) setNonEmpty!25155))

(declare-fun b!2851508 () Bool)

(declare-fun e!1806733 () Bool)

(declare-fun tp!916251 () Bool)

(declare-fun tp!916252 () Bool)

(assert (=> b!2851508 (= e!1806733 (and tp!916251 tp!916252))))

(assert (=> b!2851346 (= tp!916165 e!1806733)))

(assert (= (and b!2851346 (is-Cons!33973 (exprs!3054 (h!39394 zl!222)))) b!2851508))

(declare-fun b!2851512 () Bool)

(declare-fun e!1806734 () Bool)

(declare-fun tp!916255 () Bool)

(declare-fun tp!916256 () Bool)

(assert (=> b!2851512 (= e!1806734 (and tp!916255 tp!916256))))

(declare-fun b!2851509 () Bool)

(assert (=> b!2851509 (= e!1806734 tp_is_empty!14825)))

(assert (=> b!2851341 (= tp!916167 e!1806734)))

(declare-fun b!2851510 () Bool)

(declare-fun tp!916253 () Bool)

(declare-fun tp!916257 () Bool)

(assert (=> b!2851510 (= e!1806734 (and tp!916253 tp!916257))))

(declare-fun b!2851511 () Bool)

(declare-fun tp!916254 () Bool)

(assert (=> b!2851511 (= e!1806734 tp!916254)))

(assert (= (and b!2851341 (is-ElementMatch!8544 (regOne!17600 r!5723))) b!2851509))

(assert (= (and b!2851341 (is-Concat!13865 (regOne!17600 r!5723))) b!2851510))

(assert (= (and b!2851341 (is-Star!8544 (regOne!17600 r!5723))) b!2851511))

(assert (= (and b!2851341 (is-Union!8544 (regOne!17600 r!5723))) b!2851512))

(declare-fun b!2851516 () Bool)

(declare-fun e!1806735 () Bool)

(declare-fun tp!916260 () Bool)

(declare-fun tp!916261 () Bool)

(assert (=> b!2851516 (= e!1806735 (and tp!916260 tp!916261))))

(declare-fun b!2851513 () Bool)

(assert (=> b!2851513 (= e!1806735 tp_is_empty!14825)))

(assert (=> b!2851341 (= tp!916170 e!1806735)))

(declare-fun b!2851514 () Bool)

(declare-fun tp!916258 () Bool)

(declare-fun tp!916262 () Bool)

(assert (=> b!2851514 (= e!1806735 (and tp!916258 tp!916262))))

(declare-fun b!2851515 () Bool)

(declare-fun tp!916259 () Bool)

(assert (=> b!2851515 (= e!1806735 tp!916259)))

(assert (= (and b!2851341 (is-ElementMatch!8544 (regTwo!17600 r!5723))) b!2851513))

(assert (= (and b!2851341 (is-Concat!13865 (regTwo!17600 r!5723))) b!2851514))

(assert (= (and b!2851341 (is-Star!8544 (regTwo!17600 r!5723))) b!2851515))

(assert (= (and b!2851341 (is-Union!8544 (regTwo!17600 r!5723))) b!2851516))

(declare-fun b_lambda!85653 () Bool)

(assert (= b_lambda!85651 (or b!2851337 b_lambda!85653)))

(declare-fun bs!520144 () Bool)

(declare-fun d!826054 () Bool)

(assert (= bs!520144 (and d!826054 b!2851337)))

(declare-fun res!1185327 () Bool)

(declare-fun e!1806736 () Bool)

(assert (=> bs!520144 (=> (not res!1185327) (not e!1806736))))

(assert (=> bs!520144 (= res!1185327 (matchZipper!410 z!809 lt!1013515))))

(assert (=> bs!520144 (= (dynLambda!14224 lambda!104858 lt!1013515) e!1806736)))

(declare-fun b!2851517 () Bool)

(declare-fun isPrefix!2654 (List!34099 List!34099) Bool)

(assert (=> b!2851517 (= e!1806736 (isPrefix!2654 prefix!862 lt!1013515))))

(assert (= (and bs!520144 res!1185327) b!2851517))

(declare-fun m!3277123 () Bool)

(assert (=> bs!520144 m!3277123))

(declare-fun m!3277125 () Bool)

(assert (=> b!2851517 m!3277125))

(assert (=> d!826052 d!826054))

(push 1)

(assert (not b!2851473))

(assert (not b!2851492))

(assert (not b!2851507))

(assert tp_is_empty!14825)

(assert (not bs!520144))

(assert (not d!826036))

(assert (not b!2851436))

(assert (not b!2851452))

(assert (not b!2851493))

(assert (not d!826050))

(assert (not b!2851496))

(assert (not b!2851467))

(assert (not d!826038))

(assert (not b!2851515))

(assert (not b!2851459))

(assert (not b!2851514))

(assert (not b!2851423))

(assert (not b!2851494))

(assert (not b!2851460))

(assert (not b!2851505))

(assert (not d!826044))

(assert (not setNonEmpty!25154))

(assert (not setNonEmpty!25155))

(assert (not b!2851516))

(assert (not d!826030))

(assert (not b!2851478))

(assert (not b!2851447))

(assert (not b!2851517))

(assert (not b!2851508))

(assert (not d!826040))

(assert (not b!2851511))

(assert (not bm!183680))

(assert (not b!2851497))

(assert (not b!2851446))

(assert (not b!2851503))

(assert (not d!826034))

(assert (not b!2851510))

(assert (not d!826026))

(assert (not b_lambda!85653))

(assert (not b!2851498))

(assert (not bm!183682))

(assert (not d!826052))

(assert (not b!2851437))

(assert (not b!2851512))

(assert (not d!826046))

(assert (not b!2851506))

(assert (not setNonEmpty!25151))

(assert (not b!2851468))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

