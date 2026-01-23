; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!720374 () Bool)

(assert start!720374)

(declare-fun res!2978166 () Bool)

(declare-fun e!4420301 () Bool)

(assert (=> start!720374 (=> (not res!2978166) (not e!4420301))))

(declare-datatypes ((C!38964 0))(
  ( (C!38965 (val!29856 Int)) )
))
(declare-datatypes ((Regex!19345 0))(
  ( (ElementMatch!19345 (c!1372613 C!38964)) (Concat!28190 (regOne!39202 Regex!19345) (regTwo!39202 Regex!19345)) (EmptyExpr!19345) (Star!19345 (reg!19674 Regex!19345)) (EmptyLang!19345) (Union!19345 (regOne!39203 Regex!19345) (regTwo!39203 Regex!19345)) )
))
(declare-datatypes ((List!71855 0))(
  ( (Nil!71731) (Cons!71731 (h!78179 Regex!19345) (t!386406 List!71855)) )
))
(declare-datatypes ((Context!16570 0))(
  ( (Context!16571 (exprs!8785 List!71855)) )
))
(declare-fun c!7050 () Context!16570)

(get-info :version)

(assert (=> start!720374 (= res!2978166 ((_ is Cons!71731) (exprs!8785 c!7050)))))

(assert (=> start!720374 e!4420301))

(declare-fun e!4420302 () Bool)

(declare-fun inv!91723 (Context!16570) Bool)

(assert (=> start!720374 (and (inv!91723 c!7050) e!4420302)))

(declare-fun b!7384695 () Bool)

(declare-fun regexDepthTotal!340 (Regex!19345) Int)

(declare-fun contextDepthTotal!571 (Context!16570) Int)

(assert (=> b!7384695 (= e!4420301 (< (+ (regexDepthTotal!340 (h!78179 (exprs!8785 c!7050))) (contextDepthTotal!571 (Context!16571 (t!386406 (exprs!8785 c!7050))))) 0))))

(declare-fun b!7384696 () Bool)

(declare-fun tp!2100886 () Bool)

(assert (=> b!7384696 (= e!4420302 tp!2100886)))

(assert (= (and start!720374 res!2978166) b!7384695))

(assert (= start!720374 b!7384696))

(declare-fun m!8033488 () Bool)

(assert (=> start!720374 m!8033488))

(declare-fun m!8033490 () Bool)

(assert (=> b!7384695 m!8033490))

(declare-fun m!8033492 () Bool)

(assert (=> b!7384695 m!8033492))

(check-sat (not b!7384695) (not start!720374) (not b!7384696))
(check-sat)
(get-model)

(declare-fun b!7384714 () Bool)

(declare-fun e!4420312 () Int)

(declare-fun call!679760 () Int)

(declare-fun call!679759 () Int)

(assert (=> b!7384714 (= e!4420312 (+ 1 call!679760 call!679759))))

(declare-fun c!1372623 () Bool)

(declare-fun call!679758 () Int)

(declare-fun bm!679753 () Bool)

(declare-fun c!1372624 () Bool)

(assert (=> bm!679753 (= call!679758 (regexDepthTotal!340 (ite c!1372623 (reg!19674 (h!78179 (exprs!8785 c!7050))) (ite c!1372624 (regTwo!39203 (h!78179 (exprs!8785 c!7050))) (regTwo!39202 (h!78179 (exprs!8785 c!7050)))))))))

(declare-fun b!7384715 () Bool)

(declare-fun e!4420311 () Int)

(assert (=> b!7384715 (= e!4420311 1)))

(declare-fun bm!679754 () Bool)

(assert (=> bm!679754 (= call!679759 call!679758)))

(declare-fun b!7384716 () Bool)

(assert (=> b!7384716 (= e!4420312 e!4420311)))

(declare-fun c!1372622 () Bool)

(assert (=> b!7384716 (= c!1372622 ((_ is Concat!28190) (h!78179 (exprs!8785 c!7050))))))

(declare-fun b!7384717 () Bool)

(assert (=> b!7384717 (= e!4420311 (+ 1 call!679760 call!679759))))

(declare-fun b!7384718 () Bool)

(assert (=> b!7384718 (= c!1372624 ((_ is Union!19345) (h!78179 (exprs!8785 c!7050))))))

(declare-fun e!4420313 () Int)

(assert (=> b!7384718 (= e!4420313 e!4420312)))

(declare-fun b!7384719 () Bool)

(declare-fun e!4420314 () Int)

(assert (=> b!7384719 (= e!4420314 e!4420313)))

(assert (=> b!7384719 (= c!1372623 ((_ is Star!19345) (h!78179 (exprs!8785 c!7050))))))

(declare-fun d!2286356 () Bool)

(declare-fun lt!2617536 () Int)

(assert (=> d!2286356 (> lt!2617536 0)))

(assert (=> d!2286356 (= lt!2617536 e!4420314)))

(declare-fun c!1372625 () Bool)

(assert (=> d!2286356 (= c!1372625 ((_ is ElementMatch!19345) (h!78179 (exprs!8785 c!7050))))))

(assert (=> d!2286356 (= (regexDepthTotal!340 (h!78179 (exprs!8785 c!7050))) lt!2617536)))

(declare-fun b!7384713 () Bool)

(assert (=> b!7384713 (= e!4420314 1)))

(declare-fun b!7384720 () Bool)

(assert (=> b!7384720 (= e!4420313 (+ 1 call!679758))))

(declare-fun bm!679755 () Bool)

(assert (=> bm!679755 (= call!679760 (regexDepthTotal!340 (ite c!1372624 (regOne!39203 (h!78179 (exprs!8785 c!7050))) (regOne!39202 (h!78179 (exprs!8785 c!7050))))))))

(assert (= (and d!2286356 c!1372625) b!7384713))

(assert (= (and d!2286356 (not c!1372625)) b!7384719))

(assert (= (and b!7384719 c!1372623) b!7384720))

(assert (= (and b!7384719 (not c!1372623)) b!7384718))

(assert (= (and b!7384718 c!1372624) b!7384714))

(assert (= (and b!7384718 (not c!1372624)) b!7384716))

(assert (= (and b!7384716 c!1372622) b!7384717))

(assert (= (and b!7384716 (not c!1372622)) b!7384715))

(assert (= (or b!7384714 b!7384717) bm!679754))

(assert (= (or b!7384714 b!7384717) bm!679755))

(assert (= (or b!7384720 bm!679754) bm!679753))

(declare-fun m!8033494 () Bool)

(assert (=> bm!679753 m!8033494))

(declare-fun m!8033496 () Bool)

(assert (=> bm!679755 m!8033496))

(assert (=> b!7384695 d!2286356))

(declare-fun d!2286360 () Bool)

(declare-fun lt!2617539 () Int)

(assert (=> d!2286360 (>= lt!2617539 0)))

(declare-fun e!4420317 () Int)

(assert (=> d!2286360 (= lt!2617539 e!4420317)))

(declare-fun c!1372629 () Bool)

(assert (=> d!2286360 (= c!1372629 ((_ is Cons!71731) (exprs!8785 (Context!16571 (t!386406 (exprs!8785 c!7050))))))))

(assert (=> d!2286360 (= (contextDepthTotal!571 (Context!16571 (t!386406 (exprs!8785 c!7050)))) lt!2617539)))

(declare-fun b!7384725 () Bool)

(assert (=> b!7384725 (= e!4420317 (+ (regexDepthTotal!340 (h!78179 (exprs!8785 (Context!16571 (t!386406 (exprs!8785 c!7050)))))) (contextDepthTotal!571 (Context!16571 (t!386406 (exprs!8785 (Context!16571 (t!386406 (exprs!8785 c!7050)))))))))))

(declare-fun b!7384726 () Bool)

(assert (=> b!7384726 (= e!4420317 1)))

(assert (= (and d!2286360 c!1372629) b!7384725))

(assert (= (and d!2286360 (not c!1372629)) b!7384726))

(declare-fun m!8033498 () Bool)

(assert (=> b!7384725 m!8033498))

(declare-fun m!8033500 () Bool)

(assert (=> b!7384725 m!8033500))

(assert (=> b!7384695 d!2286360))

(declare-fun d!2286362 () Bool)

(declare-fun lambda!458788 () Int)

(declare-fun forall!18138 (List!71855 Int) Bool)

(assert (=> d!2286362 (= (inv!91723 c!7050) (forall!18138 (exprs!8785 c!7050) lambda!458788))))

(declare-fun bs!1921886 () Bool)

(assert (= bs!1921886 d!2286362))

(declare-fun m!8033504 () Bool)

(assert (=> bs!1921886 m!8033504))

(assert (=> start!720374 d!2286362))

(declare-fun b!7384747 () Bool)

(declare-fun e!4420328 () Bool)

(declare-fun tp!2100891 () Bool)

(declare-fun tp!2100892 () Bool)

(assert (=> b!7384747 (= e!4420328 (and tp!2100891 tp!2100892))))

(assert (=> b!7384696 (= tp!2100886 e!4420328)))

(assert (= (and b!7384696 ((_ is Cons!71731) (exprs!8785 c!7050))) b!7384747))

(check-sat (not bm!679753) (not b!7384725) (not bm!679755) (not b!7384747) (not d!2286362))
(check-sat)
