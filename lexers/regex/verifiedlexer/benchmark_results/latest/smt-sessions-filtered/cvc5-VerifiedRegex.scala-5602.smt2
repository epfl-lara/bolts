; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!281376 () Bool)

(assert start!281376)

(declare-fun b!2882030 () Bool)

(declare-fun e!1823216 () Bool)

(declare-fun e!1823215 () Bool)

(assert (=> b!2882030 (= e!1823216 e!1823215)))

(declare-fun res!1194109 () Bool)

(assert (=> b!2882030 (=> (not res!1194109) (not e!1823215))))

(declare-datatypes ((C!17698 0))(
  ( (C!17699 (val!10883 Int)) )
))
(declare-datatypes ((Regex!8758 0))(
  ( (ElementMatch!8758 (c!468211 C!17698)) (Concat!14079 (regOne!18028 Regex!8758) (regTwo!18028 Regex!8758)) (EmptyExpr!8758) (Star!8758 (reg!9087 Regex!8758)) (EmptyLang!8758) (Union!8758 (regOne!18029 Regex!8758) (regTwo!18029 Regex!8758)) )
))
(declare-datatypes ((List!34557 0))(
  ( (Nil!34433) (Cons!34433 (h!39853 Regex!8758) (t!233600 List!34557)) )
))
(declare-datatypes ((Context!5436 0))(
  ( (Context!5437 (exprs!3218 List!34557)) )
))
(declare-fun lt!1019907 () (Set Context!5436))

(assert (=> b!2882030 (= res!1194109 (= lt!1019907 (set.singleton (Context!5437 Nil!34433))))))

(declare-fun c!7184 () Context!5436)

(assert (=> b!2882030 (= lt!1019907 (set.insert c!7184 (as set.empty (Set Context!5436))))))

(declare-fun b!2882029 () Bool)

(declare-fun res!1194110 () Bool)

(assert (=> b!2882029 (=> (not res!1194110) (not e!1823216))))

(assert (=> b!2882029 (= res!1194110 (not (is-Cons!34433 (exprs!3218 c!7184))))))

(declare-fun res!1194108 () Bool)

(assert (=> start!281376 (=> (not res!1194108) (not e!1823216))))

(declare-fun lostCause!850 (Context!5436) Bool)

(assert (=> start!281376 (= res!1194108 (not (lostCause!850 c!7184)))))

(assert (=> start!281376 e!1823216))

(declare-fun e!1823214 () Bool)

(declare-fun inv!46483 (Context!5436) Bool)

(assert (=> start!281376 (and (inv!46483 c!7184) e!1823214)))

(declare-fun b!2882032 () Bool)

(declare-fun tp!924254 () Bool)

(assert (=> b!2882032 (= e!1823214 tp!924254)))

(declare-fun b!2882031 () Bool)

(declare-datatypes ((List!34558 0))(
  ( (Nil!34434) (Cons!34434 (h!39854 C!17698) (t!233601 List!34558)) )
))
(declare-fun matchZipper!498 ((Set Context!5436) List!34558) Bool)

(declare-datatypes ((Option!6431 0))(
  ( (None!6430) (Some!6430 (v!34556 List!34558)) )
))
(declare-fun get!10362 (Option!6431) List!34558)

(declare-fun getLanguageWitness!463 (Context!5436) Option!6431)

(assert (=> b!2882031 (= e!1823215 (not (matchZipper!498 lt!1019907 (get!10362 (getLanguageWitness!463 c!7184)))))))

(assert (=> b!2882031 (= (matchZipper!498 lt!1019907 Nil!34434) true)))

(declare-datatypes ((Unit!48005 0))(
  ( (Unit!48006) )
))
(declare-fun lt!1019908 () Unit!48005)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!3 ((Set Context!5436) List!34558) Unit!48005)

(assert (=> b!2882031 (= lt!1019908 (lemmaZipperOfEmptyContextMatchesEmptyString!3 lt!1019907 Nil!34434))))

(assert (= (and start!281376 res!1194108) b!2882029))

(assert (= (and b!2882029 res!1194110) b!2882030))

(assert (= (and b!2882030 res!1194109) b!2882031))

(assert (= start!281376 b!2882032))

(declare-fun m!3299179 () Bool)

(assert (=> b!2882030 m!3299179))

(declare-fun m!3299181 () Bool)

(assert (=> start!281376 m!3299181))

(declare-fun m!3299183 () Bool)

(assert (=> start!281376 m!3299183))

(declare-fun m!3299185 () Bool)

(assert (=> b!2882031 m!3299185))

(assert (=> b!2882031 m!3299185))

(declare-fun m!3299187 () Bool)

(assert (=> b!2882031 m!3299187))

(declare-fun m!3299189 () Bool)

(assert (=> b!2882031 m!3299189))

(assert (=> b!2882031 m!3299187))

(declare-fun m!3299191 () Bool)

(assert (=> b!2882031 m!3299191))

(declare-fun m!3299193 () Bool)

(assert (=> b!2882031 m!3299193))

(push 1)

(assert (not start!281376))

(assert (not b!2882031))

(assert (not b!2882032))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!833629 () Bool)

(declare-fun lambda!107652 () Int)

(declare-fun exists!1202 (List!34557 Int) Bool)

(assert (=> d!833629 (= (lostCause!850 c!7184) (exists!1202 (exprs!3218 c!7184) lambda!107652))))

(declare-fun bs!523727 () Bool)

(assert (= bs!523727 d!833629))

(declare-fun m!3299211 () Bool)

(assert (=> bs!523727 m!3299211))

(assert (=> start!281376 d!833629))

(declare-fun bs!523729 () Bool)

(declare-fun d!833631 () Bool)

(assert (= bs!523729 (and d!833631 d!833629)))

(declare-fun lambda!107658 () Int)

(assert (=> bs!523729 (not (= lambda!107658 lambda!107652))))

(declare-fun forall!7100 (List!34557 Int) Bool)

(assert (=> d!833631 (= (inv!46483 c!7184) (forall!7100 (exprs!3218 c!7184) lambda!107658))))

(declare-fun bs!523730 () Bool)

(assert (= bs!523730 d!833631))

(declare-fun m!3299215 () Bool)

(assert (=> bs!523730 m!3299215))

(assert (=> start!281376 d!833631))

(declare-fun d!833635 () Bool)

(declare-fun c!468215 () Bool)

(declare-fun isEmpty!18755 (List!34558) Bool)

(assert (=> d!833635 (= c!468215 (isEmpty!18755 Nil!34434))))

(declare-fun e!1823228 () Bool)

(assert (=> d!833635 (= (matchZipper!498 lt!1019907 Nil!34434) e!1823228)))

(declare-fun b!2882049 () Bool)

(declare-fun nullableZipper!734 ((Set Context!5436)) Bool)

(assert (=> b!2882049 (= e!1823228 (nullableZipper!734 lt!1019907))))

(declare-fun b!2882050 () Bool)

(declare-fun derivationStepZipper!490 ((Set Context!5436) C!17698) (Set Context!5436))

(declare-fun head!6363 (List!34558) C!17698)

(declare-fun tail!4588 (List!34558) List!34558)

(assert (=> b!2882050 (= e!1823228 (matchZipper!498 (derivationStepZipper!490 lt!1019907 (head!6363 Nil!34434)) (tail!4588 Nil!34434)))))

(assert (= (and d!833635 c!468215) b!2882049))

(assert (= (and d!833635 (not c!468215)) b!2882050))

(declare-fun m!3299217 () Bool)

(assert (=> d!833635 m!3299217))

(declare-fun m!3299219 () Bool)

(assert (=> b!2882049 m!3299219))

(declare-fun m!3299221 () Bool)

(assert (=> b!2882050 m!3299221))

(assert (=> b!2882050 m!3299221))

(declare-fun m!3299223 () Bool)

(assert (=> b!2882050 m!3299223))

(declare-fun m!3299225 () Bool)

(assert (=> b!2882050 m!3299225))

(assert (=> b!2882050 m!3299223))

(assert (=> b!2882050 m!3299225))

(declare-fun m!3299227 () Bool)

(assert (=> b!2882050 m!3299227))

(assert (=> b!2882031 d!833635))

(declare-fun d!833637 () Bool)

(assert (=> d!833637 (= (get!10362 (getLanguageWitness!463 c!7184)) (v!34556 (getLanguageWitness!463 c!7184)))))

(assert (=> b!2882031 d!833637))

(declare-fun d!833639 () Bool)

(assert (=> d!833639 (= (matchZipper!498 lt!1019907 Nil!34434) (isEmpty!18755 Nil!34434))))

(declare-fun lt!1019917 () Unit!48005)

(declare-fun choose!17045 ((Set Context!5436) List!34558) Unit!48005)

(assert (=> d!833639 (= lt!1019917 (choose!17045 lt!1019907 Nil!34434))))

(assert (=> d!833639 (= lt!1019907 (set.singleton (Context!5437 Nil!34433)))))

(assert (=> d!833639 (= (lemmaZipperOfEmptyContextMatchesEmptyString!3 lt!1019907 Nil!34434) lt!1019917)))

(declare-fun bs!523733 () Bool)

(assert (= bs!523733 d!833639))

(assert (=> bs!523733 m!3299189))

(assert (=> bs!523733 m!3299217))

(declare-fun m!3299231 () Bool)

(assert (=> bs!523733 m!3299231))

(assert (=> b!2882031 d!833639))

(declare-fun d!833643 () Bool)

(declare-fun c!468216 () Bool)

(assert (=> d!833643 (= c!468216 (isEmpty!18755 (get!10362 (getLanguageWitness!463 c!7184))))))

(declare-fun e!1823229 () Bool)

(assert (=> d!833643 (= (matchZipper!498 lt!1019907 (get!10362 (getLanguageWitness!463 c!7184))) e!1823229)))

(declare-fun b!2882051 () Bool)

(assert (=> b!2882051 (= e!1823229 (nullableZipper!734 lt!1019907))))

(declare-fun b!2882052 () Bool)

(assert (=> b!2882052 (= e!1823229 (matchZipper!498 (derivationStepZipper!490 lt!1019907 (head!6363 (get!10362 (getLanguageWitness!463 c!7184)))) (tail!4588 (get!10362 (getLanguageWitness!463 c!7184)))))))

(assert (= (and d!833643 c!468216) b!2882051))

(assert (= (and d!833643 (not c!468216)) b!2882052))

(assert (=> d!833643 m!3299187))

(declare-fun m!3299233 () Bool)

(assert (=> d!833643 m!3299233))

(assert (=> b!2882051 m!3299219))

(assert (=> b!2882052 m!3299187))

(declare-fun m!3299235 () Bool)

(assert (=> b!2882052 m!3299235))

(assert (=> b!2882052 m!3299235))

(declare-fun m!3299237 () Bool)

(assert (=> b!2882052 m!3299237))

(assert (=> b!2882052 m!3299187))

(declare-fun m!3299239 () Bool)

(assert (=> b!2882052 m!3299239))

(assert (=> b!2882052 m!3299237))

(assert (=> b!2882052 m!3299239))

(declare-fun m!3299241 () Bool)

(assert (=> b!2882052 m!3299241))

(assert (=> b!2882031 d!833643))

(declare-fun bs!523734 () Bool)

(declare-fun d!833645 () Bool)

(assert (= bs!523734 (and d!833645 d!833629)))

(declare-fun lambda!107664 () Int)

(assert (=> bs!523734 (= lambda!107664 lambda!107652)))

(declare-fun bs!523735 () Bool)

(assert (= bs!523735 (and d!833645 d!833631)))

(assert (=> bs!523735 (not (= lambda!107664 lambda!107658))))

(declare-fun b!2882065 () Bool)

(declare-fun e!1823238 () Option!6431)

(assert (=> b!2882065 (= e!1823238 (Some!6430 Nil!34434))))

(declare-fun lt!1019925 () Option!6431)

(declare-fun isEmpty!18756 (Option!6431) Bool)

(assert (=> d!833645 (= (isEmpty!18756 lt!1019925) (exists!1202 (exprs!3218 c!7184) lambda!107664))))

(assert (=> d!833645 (= lt!1019925 e!1823238)))

(declare-fun c!468226 () Bool)

(assert (=> d!833645 (= c!468226 (is-Cons!34433 (exprs!3218 c!7184)))))

(assert (=> d!833645 (= (getLanguageWitness!463 c!7184) lt!1019925)))

(declare-fun b!2882066 () Bool)

(declare-fun c!468225 () Bool)

(declare-fun lt!1019926 () Option!6431)

(assert (=> b!2882066 (= c!468225 (is-Some!6430 lt!1019926))))

(assert (=> b!2882066 (= lt!1019926 (getLanguageWitness!463 (Context!5437 (t!233600 (exprs!3218 c!7184)))))))

(declare-fun e!1823237 () Option!6431)

(declare-fun e!1823236 () Option!6431)

(assert (=> b!2882066 (= e!1823237 e!1823236)))

(declare-fun b!2882067 () Bool)

(assert (=> b!2882067 (= e!1823237 None!6430)))

(declare-fun b!2882068 () Bool)

(declare-fun lt!1019924 () Option!6431)

(declare-fun ++!8194 (List!34558 List!34558) List!34558)

(assert (=> b!2882068 (= e!1823236 (Some!6430 (++!8194 (v!34556 lt!1019924) (v!34556 lt!1019926))))))

(declare-fun b!2882069 () Bool)

(assert (=> b!2882069 (= e!1823238 e!1823237)))

(declare-fun getLanguageWitness!465 (Regex!8758) Option!6431)

(assert (=> b!2882069 (= lt!1019924 (getLanguageWitness!465 (h!39853 (exprs!3218 c!7184))))))

(declare-fun c!468224 () Bool)

(assert (=> b!2882069 (= c!468224 (is-Some!6430 lt!1019924))))

(declare-fun b!2882070 () Bool)

(assert (=> b!2882070 (= e!1823236 None!6430)))

(assert (= (and d!833645 c!468226) b!2882069))

(assert (= (and d!833645 (not c!468226)) b!2882065))

(assert (= (and b!2882069 c!468224) b!2882066))

(assert (= (and b!2882069 (not c!468224)) b!2882067))

(assert (= (and b!2882066 c!468225) b!2882068))

(assert (= (and b!2882066 (not c!468225)) b!2882070))

(declare-fun m!3299243 () Bool)

(assert (=> d!833645 m!3299243))

(declare-fun m!3299245 () Bool)

(assert (=> d!833645 m!3299245))

(declare-fun m!3299247 () Bool)

(assert (=> b!2882066 m!3299247))

(declare-fun m!3299249 () Bool)

(assert (=> b!2882068 m!3299249))

(declare-fun m!3299251 () Bool)

(assert (=> b!2882069 m!3299251))

(assert (=> b!2882031 d!833645))

(declare-fun b!2882075 () Bool)

(declare-fun e!1823241 () Bool)

(declare-fun tp!924262 () Bool)

(declare-fun tp!924263 () Bool)

(assert (=> b!2882075 (= e!1823241 (and tp!924262 tp!924263))))

(assert (=> b!2882032 (= tp!924254 e!1823241)))

(assert (= (and b!2882032 (is-Cons!34433 (exprs!3218 c!7184))) b!2882075))

(push 1)

(assert (not b!2882052))

(assert (not b!2882069))

(assert (not b!2882068))

(assert (not d!833645))

(assert (not d!833629))

(assert (not d!833635))

(assert (not b!2882051))

(assert (not d!833639))

(assert (not b!2882066))

(assert (not b!2882049))

(assert (not b!2882050))

(assert (not b!2882075))

(assert (not d!833631))

(assert (not d!833643))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

