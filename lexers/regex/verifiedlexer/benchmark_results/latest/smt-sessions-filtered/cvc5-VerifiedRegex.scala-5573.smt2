; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279640 () Bool)

(assert start!279640)

(declare-fun res!1189920 () Bool)

(declare-fun e!1814499 () Bool)

(assert (=> start!279640 (=> (not res!1189920) (not e!1814499))))

(declare-datatypes ((C!17582 0))(
  ( (C!17583 (val!10825 Int)) )
))
(declare-datatypes ((Regex!8700 0))(
  ( (ElementMatch!8700 (c!462769 C!17582)) (Concat!14021 (regOne!17912 Regex!8700) (regTwo!17912 Regex!8700)) (EmptyExpr!8700) (Star!8700 (reg!9029 Regex!8700)) (EmptyLang!8700) (Union!8700 (regOne!17913 Regex!8700) (regTwo!17913 Regex!8700)) )
))
(declare-datatypes ((List!34425 0))(
  ( (Nil!34301) (Cons!34301 (h!39721 Regex!8700) (t!233468 List!34425)) )
))
(declare-datatypes ((Context!5320 0))(
  ( (Context!5321 (exprs!3160 List!34425)) )
))
(declare-fun c!7184 () Context!5320)

(declare-fun lostCause!792 (Context!5320) Bool)

(assert (=> start!279640 (= res!1189920 (not (lostCause!792 c!7184)))))

(assert (=> start!279640 e!1814499))

(declare-fun e!1814494 () Bool)

(declare-fun inv!46338 (Context!5320) Bool)

(assert (=> start!279640 (and (inv!46338 c!7184) e!1814494)))

(declare-fun b!2866148 () Bool)

(declare-fun e!1814498 () Bool)

(declare-fun e!1814497 () Bool)

(assert (=> b!2866148 (= e!1814498 (not e!1814497))))

(declare-fun res!1189919 () Bool)

(assert (=> b!2866148 (=> res!1189919 e!1814497)))

(declare-datatypes ((List!34426 0))(
  ( (Nil!34302) (Cons!34302 (h!39722 C!17582) (t!233469 List!34426)) )
))
(declare-datatypes ((Option!6379 0))(
  ( (None!6378) (Some!6378 (v!34500 List!34426)) )
))
(declare-fun lt!1016838 () Option!6379)

(declare-fun matchR!3720 (Regex!8700 List!34426) Bool)

(assert (=> b!2866148 (= res!1189919 (not (matchR!3720 (h!39721 (exprs!3160 c!7184)) (v!34500 lt!1016838))))))

(declare-fun lt!1016831 () (Set Context!5320))

(declare-fun lt!1016839 () Option!6379)

(declare-fun matchZipper!466 ((Set Context!5320) List!34426) Bool)

(declare-fun get!10297 (Option!6379) List!34426)

(assert (=> b!2866148 (matchZipper!466 lt!1016831 (get!10297 lt!1016839))))

(declare-fun lt!1016832 () Context!5320)

(assert (=> b!2866148 (= lt!1016831 (set.insert lt!1016832 (as set.empty (Set Context!5320))))))

(declare-datatypes ((Unit!47937 0))(
  ( (Unit!47938) )
))
(declare-fun lt!1016835 () Unit!47937)

(declare-fun lemmaGetWitnessMatchesContext!25 (Context!5320) Unit!47937)

(assert (=> b!2866148 (= lt!1016835 (lemmaGetWitnessMatchesContext!25 lt!1016832))))

(assert (=> b!2866148 (matchR!3720 (h!39721 (exprs!3160 c!7184)) (get!10297 lt!1016838))))

(declare-fun lt!1016834 () Unit!47937)

(declare-fun lemmaGetWitnessMatches!27 (Regex!8700) Unit!47937)

(assert (=> b!2866148 (= lt!1016834 (lemmaGetWitnessMatches!27 (h!39721 (exprs!3160 c!7184))))))

(declare-fun b!2866149 () Bool)

(declare-fun tp!922923 () Bool)

(assert (=> b!2866149 (= e!1814494 tp!922923)))

(declare-fun b!2866150 () Bool)

(declare-fun res!1189921 () Bool)

(assert (=> b!2866150 (=> (not res!1189921) (not e!1814499))))

(assert (=> b!2866150 (= res!1189921 (is-Cons!34301 (exprs!3160 c!7184)))))

(declare-fun b!2866151 () Bool)

(declare-fun e!1814496 () Bool)

(assert (=> b!2866151 (= e!1814499 e!1814496)))

(declare-fun res!1189923 () Bool)

(assert (=> b!2866151 (=> (not res!1189923) (not e!1814496))))

(assert (=> b!2866151 (= res!1189923 (is-Some!6378 lt!1016838))))

(declare-fun getLanguageWitness!364 (Regex!8700) Option!6379)

(assert (=> b!2866151 (= lt!1016838 (getLanguageWitness!364 (h!39721 (exprs!3160 c!7184))))))

(declare-fun b!2866152 () Bool)

(declare-fun e!1814495 () Bool)

(assert (=> b!2866152 (= e!1814497 e!1814495)))

(declare-fun res!1189918 () Bool)

(assert (=> b!2866152 (=> res!1189918 e!1814495)))

(assert (=> b!2866152 (= res!1189918 (not (matchZipper!466 lt!1016831 (v!34500 lt!1016839))))))

(declare-fun lt!1016840 () (Set Context!5320))

(assert (=> b!2866152 (matchZipper!466 lt!1016840 (v!34500 lt!1016838))))

(declare-fun lt!1016829 () Unit!47937)

(declare-fun lt!1016837 () Context!5320)

(declare-datatypes ((List!34427 0))(
  ( (Nil!34303) (Cons!34303 (h!39723 Context!5320) (t!233470 List!34427)) )
))
(declare-fun theoremZipperRegexEquiv!110 ((Set Context!5320) List!34427 Regex!8700 List!34426) Unit!47937)

(assert (=> b!2866152 (= lt!1016829 (theoremZipperRegexEquiv!110 lt!1016840 (Cons!34303 lt!1016837 Nil!34303) (h!39721 (exprs!3160 c!7184)) (v!34500 lt!1016838)))))

(assert (=> b!2866152 (= lt!1016840 (set.insert lt!1016837 (as set.empty (Set Context!5320))))))

(declare-fun lt!1016833 () List!34425)

(assert (=> b!2866152 (= lt!1016837 (Context!5321 lt!1016833))))

(assert (=> b!2866152 (= lt!1016833 (Cons!34301 (h!39721 (exprs!3160 c!7184)) Nil!34301))))

(declare-fun b!2866153 () Bool)

(declare-fun isDefined!4989 (Option!6379) Bool)

(declare-fun getLanguageWitness!365 (Context!5320) Option!6379)

(assert (=> b!2866153 (= e!1814495 (isDefined!4989 (getLanguageWitness!365 c!7184)))))

(declare-fun ++!8147 (List!34425 List!34425) List!34425)

(declare-fun ++!8148 (List!34426 List!34426) List!34426)

(assert (=> b!2866153 (matchZipper!466 (set.insert (Context!5321 (++!8147 lt!1016833 (t!233468 (exprs!3160 c!7184)))) (as set.empty (Set Context!5320))) (++!8148 (v!34500 lt!1016838) (v!34500 lt!1016839)))))

(declare-fun lt!1016830 () Unit!47937)

(declare-fun lambda!106769 () Int)

(declare-fun lemmaConcatPreservesForall!127 (List!34425 List!34425 Int) Unit!47937)

(assert (=> b!2866153 (= lt!1016830 (lemmaConcatPreservesForall!127 lt!1016833 (t!233468 (exprs!3160 c!7184)) lambda!106769))))

(declare-fun lt!1016836 () Unit!47937)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!1 (Context!5320 Context!5320 List!34426 List!34426) Unit!47937)

(assert (=> b!2866153 (= lt!1016836 (lemmaConcatenateContextMatchesConcatOfStrings!1 lt!1016837 lt!1016832 (v!34500 lt!1016838) (v!34500 lt!1016839)))))

(declare-fun b!2866154 () Bool)

(assert (=> b!2866154 (= e!1814496 e!1814498)))

(declare-fun res!1189922 () Bool)

(assert (=> b!2866154 (=> (not res!1189922) (not e!1814498))))

(assert (=> b!2866154 (= res!1189922 (is-Some!6378 lt!1016839))))

(assert (=> b!2866154 (= lt!1016839 (getLanguageWitness!365 lt!1016832))))

(assert (=> b!2866154 (= lt!1016832 (Context!5321 (t!233468 (exprs!3160 c!7184))))))

(assert (= (and start!279640 res!1189920) b!2866150))

(assert (= (and b!2866150 res!1189921) b!2866151))

(assert (= (and b!2866151 res!1189923) b!2866154))

(assert (= (and b!2866154 res!1189922) b!2866148))

(assert (= (and b!2866148 (not res!1189919)) b!2866152))

(assert (= (and b!2866152 (not res!1189918)) b!2866153))

(assert (= start!279640 b!2866149))

(declare-fun m!3286451 () Bool)

(assert (=> b!2866152 m!3286451))

(declare-fun m!3286453 () Bool)

(assert (=> b!2866152 m!3286453))

(declare-fun m!3286455 () Bool)

(assert (=> b!2866152 m!3286455))

(declare-fun m!3286457 () Bool)

(assert (=> b!2866152 m!3286457))

(declare-fun m!3286459 () Bool)

(assert (=> b!2866148 m!3286459))

(declare-fun m!3286461 () Bool)

(assert (=> b!2866148 m!3286461))

(declare-fun m!3286463 () Bool)

(assert (=> b!2866148 m!3286463))

(declare-fun m!3286465 () Bool)

(assert (=> b!2866148 m!3286465))

(declare-fun m!3286467 () Bool)

(assert (=> b!2866148 m!3286467))

(declare-fun m!3286469 () Bool)

(assert (=> b!2866148 m!3286469))

(declare-fun m!3286471 () Bool)

(assert (=> b!2866148 m!3286471))

(assert (=> b!2866148 m!3286461))

(assert (=> b!2866148 m!3286469))

(declare-fun m!3286473 () Bool)

(assert (=> b!2866148 m!3286473))

(declare-fun m!3286475 () Bool)

(assert (=> b!2866151 m!3286475))

(declare-fun m!3286477 () Bool)

(assert (=> b!2866153 m!3286477))

(declare-fun m!3286479 () Bool)

(assert (=> b!2866153 m!3286479))

(declare-fun m!3286481 () Bool)

(assert (=> b!2866153 m!3286481))

(declare-fun m!3286483 () Bool)

(assert (=> b!2866153 m!3286483))

(declare-fun m!3286485 () Bool)

(assert (=> b!2866153 m!3286485))

(declare-fun m!3286487 () Bool)

(assert (=> b!2866153 m!3286487))

(assert (=> b!2866153 m!3286485))

(declare-fun m!3286489 () Bool)

(assert (=> b!2866153 m!3286489))

(assert (=> b!2866153 m!3286487))

(assert (=> b!2866153 m!3286477))

(declare-fun m!3286491 () Bool)

(assert (=> b!2866153 m!3286491))

(declare-fun m!3286493 () Bool)

(assert (=> b!2866154 m!3286493))

(declare-fun m!3286495 () Bool)

(assert (=> start!279640 m!3286495))

(declare-fun m!3286497 () Bool)

(assert (=> start!279640 m!3286497))

(push 1)

(assert (not b!2866149))

(assert (not b!2866148))

(assert (not b!2866154))

(assert (not b!2866153))

(assert (not b!2866151))

(assert (not b!2866152))

(assert (not start!279640))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!521560 () Bool)

(declare-fun d!828704 () Bool)

(assert (= bs!521560 (and d!828704 b!2866153)))

(declare-fun lambda!106775 () Int)

(assert (=> bs!521560 (not (= lambda!106775 lambda!106769))))

(declare-fun exists!1129 (List!34425 Int) Bool)

(assert (=> d!828704 (= (lostCause!792 c!7184) (exists!1129 (exprs!3160 c!7184) lambda!106775))))

(declare-fun bs!521561 () Bool)

(assert (= bs!521561 d!828704))

(declare-fun m!3286547 () Bool)

(assert (=> bs!521561 m!3286547))

(assert (=> start!279640 d!828704))

(declare-fun bs!521562 () Bool)

(declare-fun d!828706 () Bool)

(assert (= bs!521562 (and d!828706 b!2866153)))

(declare-fun lambda!106778 () Int)

(assert (=> bs!521562 (= lambda!106778 lambda!106769)))

(declare-fun bs!521563 () Bool)

(assert (= bs!521563 (and d!828706 d!828704)))

(assert (=> bs!521563 (not (= lambda!106778 lambda!106775))))

(declare-fun forall!7056 (List!34425 Int) Bool)

(assert (=> d!828706 (= (inv!46338 c!7184) (forall!7056 (exprs!3160 c!7184) lambda!106778))))

(declare-fun bs!521564 () Bool)

(assert (= bs!521564 d!828706))

(declare-fun m!3286549 () Bool)

(assert (=> bs!521564 m!3286549))

(assert (=> start!279640 d!828706))

(declare-fun bm!184920 () Bool)

(declare-fun call!184925 () Option!6379)

(declare-fun c!462796 () Bool)

(assert (=> bm!184920 (= call!184925 (getLanguageWitness!364 (ite c!462796 (regOne!17913 (h!39721 (exprs!3160 c!7184))) (regOne!17912 (h!39721 (exprs!3160 c!7184))))))))

(declare-fun bm!184921 () Bool)

(declare-fun call!184926 () Option!6379)

(assert (=> bm!184921 (= call!184926 (getLanguageWitness!364 (ite c!462796 (regTwo!17913 (h!39721 (exprs!3160 c!7184))) (regTwo!17912 (h!39721 (exprs!3160 c!7184))))))))

(declare-fun d!828708 () Bool)

(declare-fun c!462792 () Bool)

(assert (=> d!828708 (= c!462792 (is-EmptyExpr!8700 (h!39721 (exprs!3160 c!7184))))))

(declare-fun e!1814541 () Option!6379)

(assert (=> d!828708 (= (getLanguageWitness!364 (h!39721 (exprs!3160 c!7184))) e!1814541)))

(declare-fun b!2866212 () Bool)

(declare-fun e!1814543 () Option!6379)

(declare-fun e!1814540 () Option!6379)

(assert (=> b!2866212 (= e!1814543 e!1814540)))

(declare-fun lt!1016884 () Option!6379)

(assert (=> b!2866212 (= lt!1016884 call!184925)))

(declare-fun c!462793 () Bool)

(assert (=> b!2866212 (= c!462793 (is-Some!6378 lt!1016884))))

(declare-fun b!2866213 () Bool)

(assert (=> b!2866213 (= e!1814541 (Some!6378 Nil!34302))))

(declare-fun b!2866214 () Bool)

(assert (=> b!2866214 (= e!1814540 None!6378)))

(declare-fun b!2866215 () Bool)

(declare-fun e!1814542 () Option!6379)

(declare-fun lt!1016883 () Option!6379)

(assert (=> b!2866215 (= e!1814542 lt!1016883)))

(declare-fun b!2866216 () Bool)

(declare-fun e!1814538 () Option!6379)

(assert (=> b!2866216 (= e!1814538 (Some!6378 Nil!34302))))

(declare-fun b!2866217 () Bool)

(declare-fun c!462790 () Bool)

(declare-fun lt!1016885 () Option!6379)

(assert (=> b!2866217 (= c!462790 (is-Some!6378 lt!1016885))))

(assert (=> b!2866217 (= lt!1016885 call!184926)))

(declare-fun e!1814537 () Option!6379)

(assert (=> b!2866217 (= e!1814540 e!1814537)))

(declare-fun b!2866218 () Bool)

(declare-fun c!462789 () Bool)

(assert (=> b!2866218 (= c!462789 (is-ElementMatch!8700 (h!39721 (exprs!3160 c!7184))))))

(declare-fun e!1814539 () Option!6379)

(declare-fun e!1814536 () Option!6379)

(assert (=> b!2866218 (= e!1814539 e!1814536)))

(declare-fun b!2866219 () Bool)

(assert (=> b!2866219 (= c!462796 (is-Union!8700 (h!39721 (exprs!3160 c!7184))))))

(assert (=> b!2866219 (= e!1814538 e!1814543)))

(declare-fun b!2866220 () Bool)

(assert (=> b!2866220 (= e!1814536 (Some!6378 (Cons!34302 (c!462769 (h!39721 (exprs!3160 c!7184))) Nil!34302)))))

(declare-fun b!2866221 () Bool)

(assert (=> b!2866221 (= e!1814537 None!6378)))

(declare-fun b!2866222 () Bool)

(assert (=> b!2866222 (= e!1814537 (Some!6378 (++!8148 (v!34500 lt!1016884) (v!34500 lt!1016885))))))

(declare-fun b!2866223 () Bool)

(assert (=> b!2866223 (= e!1814543 e!1814542)))

(assert (=> b!2866223 (= lt!1016883 call!184925)))

(declare-fun c!462794 () Bool)

(assert (=> b!2866223 (= c!462794 (is-Some!6378 lt!1016883))))

(declare-fun b!2866224 () Bool)

(assert (=> b!2866224 (= e!1814539 None!6378)))

(declare-fun b!2866225 () Bool)

(assert (=> b!2866225 (= e!1814536 e!1814538)))

(declare-fun c!462795 () Bool)

(assert (=> b!2866225 (= c!462795 (is-Star!8700 (h!39721 (exprs!3160 c!7184))))))

(declare-fun b!2866226 () Bool)

(assert (=> b!2866226 (= e!1814541 e!1814539)))

(declare-fun c!462791 () Bool)

(assert (=> b!2866226 (= c!462791 (is-EmptyLang!8700 (h!39721 (exprs!3160 c!7184))))))

(declare-fun b!2866227 () Bool)

(assert (=> b!2866227 (= e!1814542 call!184926)))

(assert (= (and d!828708 c!462792) b!2866213))

(assert (= (and d!828708 (not c!462792)) b!2866226))

(assert (= (and b!2866226 c!462791) b!2866224))

(assert (= (and b!2866226 (not c!462791)) b!2866218))

(assert (= (and b!2866218 c!462789) b!2866220))

(assert (= (and b!2866218 (not c!462789)) b!2866225))

(assert (= (and b!2866225 c!462795) b!2866216))

(assert (= (and b!2866225 (not c!462795)) b!2866219))

(assert (= (and b!2866219 c!462796) b!2866223))

(assert (= (and b!2866219 (not c!462796)) b!2866212))

(assert (= (and b!2866223 c!462794) b!2866215))

(assert (= (and b!2866223 (not c!462794)) b!2866227))

(assert (= (and b!2866212 c!462793) b!2866217))

(assert (= (and b!2866212 (not c!462793)) b!2866214))

(assert (= (and b!2866217 c!462790) b!2866222))

(assert (= (and b!2866217 (not c!462790)) b!2866221))

(assert (= (or b!2866227 b!2866217) bm!184921))

(assert (= (or b!2866223 b!2866212) bm!184920))

(declare-fun m!3286551 () Bool)

(assert (=> bm!184920 m!3286551))

(declare-fun m!3286553 () Bool)

(assert (=> bm!184921 m!3286553))

(declare-fun m!3286555 () Bool)

(assert (=> b!2866222 m!3286555))

(assert (=> b!2866151 d!828708))

(declare-fun d!828712 () Bool)

(declare-fun c!462801 () Bool)

(declare-fun isEmpty!18677 (List!34426) Bool)

(assert (=> d!828712 (= c!462801 (isEmpty!18677 (v!34500 lt!1016839)))))

(declare-fun e!1814548 () Bool)

(assert (=> d!828712 (= (matchZipper!466 lt!1016831 (v!34500 lt!1016839)) e!1814548)))

(declare-fun b!2866236 () Bool)

(declare-fun nullableZipper!705 ((Set Context!5320)) Bool)

(assert (=> b!2866236 (= e!1814548 (nullableZipper!705 lt!1016831))))

(declare-fun b!2866237 () Bool)

(declare-fun derivationStepZipper!461 ((Set Context!5320) C!17582) (Set Context!5320))

(declare-fun head!6326 (List!34426) C!17582)

(declare-fun tail!4551 (List!34426) List!34426)

(assert (=> b!2866237 (= e!1814548 (matchZipper!466 (derivationStepZipper!461 lt!1016831 (head!6326 (v!34500 lt!1016839))) (tail!4551 (v!34500 lt!1016839))))))

(assert (= (and d!828712 c!462801) b!2866236))

(assert (= (and d!828712 (not c!462801)) b!2866237))

(declare-fun m!3286581 () Bool)

(assert (=> d!828712 m!3286581))

(declare-fun m!3286583 () Bool)

(assert (=> b!2866236 m!3286583))

(declare-fun m!3286585 () Bool)

(assert (=> b!2866237 m!3286585))

(assert (=> b!2866237 m!3286585))

(declare-fun m!3286587 () Bool)

(assert (=> b!2866237 m!3286587))

(declare-fun m!3286589 () Bool)

(assert (=> b!2866237 m!3286589))

(assert (=> b!2866237 m!3286587))

(assert (=> b!2866237 m!3286589))

(declare-fun m!3286591 () Bool)

(assert (=> b!2866237 m!3286591))

(assert (=> b!2866152 d!828712))

(declare-fun d!828718 () Bool)

(declare-fun c!462802 () Bool)

(assert (=> d!828718 (= c!462802 (isEmpty!18677 (v!34500 lt!1016838)))))

(declare-fun e!1814549 () Bool)

(assert (=> d!828718 (= (matchZipper!466 lt!1016840 (v!34500 lt!1016838)) e!1814549)))

(declare-fun b!2866238 () Bool)

(assert (=> b!2866238 (= e!1814549 (nullableZipper!705 lt!1016840))))

(declare-fun b!2866239 () Bool)

(assert (=> b!2866239 (= e!1814549 (matchZipper!466 (derivationStepZipper!461 lt!1016840 (head!6326 (v!34500 lt!1016838))) (tail!4551 (v!34500 lt!1016838))))))

(assert (= (and d!828718 c!462802) b!2866238))

(assert (= (and d!828718 (not c!462802)) b!2866239))

(declare-fun m!3286593 () Bool)

(assert (=> d!828718 m!3286593))

(declare-fun m!3286595 () Bool)

(assert (=> b!2866238 m!3286595))

(declare-fun m!3286597 () Bool)

(assert (=> b!2866239 m!3286597))

(assert (=> b!2866239 m!3286597))

(declare-fun m!3286599 () Bool)

(assert (=> b!2866239 m!3286599))

(declare-fun m!3286601 () Bool)

(assert (=> b!2866239 m!3286601))

(assert (=> b!2866239 m!3286599))

(assert (=> b!2866239 m!3286601))

(declare-fun m!3286603 () Bool)

(assert (=> b!2866239 m!3286603))

(assert (=> b!2866152 d!828718))

(declare-fun d!828720 () Bool)

(assert (=> d!828720 (= (matchR!3720 (h!39721 (exprs!3160 c!7184)) (v!34500 lt!1016838)) (matchZipper!466 lt!1016840 (v!34500 lt!1016838)))))

(declare-fun lt!1016888 () Unit!47937)

(declare-fun choose!16947 ((Set Context!5320) List!34427 Regex!8700 List!34426) Unit!47937)

(assert (=> d!828720 (= lt!1016888 (choose!16947 lt!1016840 (Cons!34303 lt!1016837 Nil!34303) (h!39721 (exprs!3160 c!7184)) (v!34500 lt!1016838)))))

(declare-fun validRegex!3495 (Regex!8700) Bool)

(assert (=> d!828720 (validRegex!3495 (h!39721 (exprs!3160 c!7184)))))

(assert (=> d!828720 (= (theoremZipperRegexEquiv!110 lt!1016840 (Cons!34303 lt!1016837 Nil!34303) (h!39721 (exprs!3160 c!7184)) (v!34500 lt!1016838)) lt!1016888)))

(declare-fun bs!521565 () Bool)

(assert (= bs!521565 d!828720))

(assert (=> bs!521565 m!3286459))

(assert (=> bs!521565 m!3286453))

(declare-fun m!3286605 () Bool)

(assert (=> bs!521565 m!3286605))

(declare-fun m!3286607 () Bool)

(assert (=> bs!521565 m!3286607))

(assert (=> b!2866152 d!828720))

(declare-fun d!828722 () Bool)

(assert (=> d!828722 (= (get!10297 lt!1016839) (v!34500 lt!1016839))))

(assert (=> b!2866148 d!828722))

(declare-fun d!828724 () Bool)

(assert (=> d!828724 (matchR!3720 (h!39721 (exprs!3160 c!7184)) (get!10297 (getLanguageWitness!364 (h!39721 (exprs!3160 c!7184)))))))

(declare-fun lt!1016894 () Unit!47937)

(declare-fun choose!16948 (Regex!8700) Unit!47937)

(assert (=> d!828724 (= lt!1016894 (choose!16948 (h!39721 (exprs!3160 c!7184))))))

(assert (=> d!828724 (validRegex!3495 (h!39721 (exprs!3160 c!7184)))))

(assert (=> d!828724 (= (lemmaGetWitnessMatches!27 (h!39721 (exprs!3160 c!7184))) lt!1016894)))

(declare-fun bs!521566 () Bool)

(assert (= bs!521566 d!828724))

(declare-fun m!3286609 () Bool)

(assert (=> bs!521566 m!3286609))

(declare-fun m!3286611 () Bool)

(assert (=> bs!521566 m!3286611))

(declare-fun m!3286613 () Bool)

(assert (=> bs!521566 m!3286613))

(assert (=> bs!521566 m!3286607))

(assert (=> bs!521566 m!3286475))

(assert (=> bs!521566 m!3286475))

(assert (=> bs!521566 m!3286611))

(assert (=> b!2866148 d!828724))

(declare-fun d!828726 () Bool)

(assert (=> d!828726 (= (get!10297 lt!1016838) (v!34500 lt!1016838))))

(assert (=> b!2866148 d!828726))

(declare-fun d!828728 () Bool)

(declare-fun c!462803 () Bool)

(assert (=> d!828728 (= c!462803 (isEmpty!18677 (get!10297 lt!1016839)))))

(declare-fun e!1814550 () Bool)

(assert (=> d!828728 (= (matchZipper!466 lt!1016831 (get!10297 lt!1016839)) e!1814550)))

(declare-fun b!2866240 () Bool)

(assert (=> b!2866240 (= e!1814550 (nullableZipper!705 lt!1016831))))

(declare-fun b!2866241 () Bool)

(assert (=> b!2866241 (= e!1814550 (matchZipper!466 (derivationStepZipper!461 lt!1016831 (head!6326 (get!10297 lt!1016839))) (tail!4551 (get!10297 lt!1016839))))))

(assert (= (and d!828728 c!462803) b!2866240))

(assert (= (and d!828728 (not c!462803)) b!2866241))

(assert (=> d!828728 m!3286469))

(declare-fun m!3286619 () Bool)

(assert (=> d!828728 m!3286619))

(assert (=> b!2866240 m!3286583))

(assert (=> b!2866241 m!3286469))

(declare-fun m!3286621 () Bool)

(assert (=> b!2866241 m!3286621))

(assert (=> b!2866241 m!3286621))

(declare-fun m!3286623 () Bool)

(assert (=> b!2866241 m!3286623))

(assert (=> b!2866241 m!3286469))

(declare-fun m!3286625 () Bool)

(assert (=> b!2866241 m!3286625))

(assert (=> b!2866241 m!3286623))

(assert (=> b!2866241 m!3286625))

(declare-fun m!3286627 () Bool)

(assert (=> b!2866241 m!3286627))

(assert (=> b!2866148 d!828728))

(declare-fun d!828732 () Bool)

(assert (=> d!828732 (matchZipper!466 (set.insert lt!1016832 (as set.empty (Set Context!5320))) (get!10297 (getLanguageWitness!365 lt!1016832)))))

(declare-fun lt!1016897 () Unit!47937)

(declare-fun choose!16949 (Context!5320) Unit!47937)

(assert (=> d!828732 (= lt!1016897 (choose!16949 lt!1016832))))

(assert (=> d!828732 (not (lostCause!792 lt!1016832))))

(assert (=> d!828732 (= (lemmaGetWitnessMatchesContext!25 lt!1016832) lt!1016897)))

(declare-fun bs!521568 () Bool)

(assert (= bs!521568 d!828732))

(assert (=> bs!521568 m!3286493))

(declare-fun m!3286629 () Bool)

(assert (=> bs!521568 m!3286629))

(assert (=> bs!521568 m!3286465))

(declare-fun m!3286631 () Bool)

(assert (=> bs!521568 m!3286631))

(declare-fun m!3286633 () Bool)

(assert (=> bs!521568 m!3286633))

(assert (=> bs!521568 m!3286465))

(declare-fun m!3286635 () Bool)

(assert (=> bs!521568 m!3286635))

(assert (=> bs!521568 m!3286493))

(assert (=> bs!521568 m!3286631))

(assert (=> b!2866148 d!828732))

(declare-fun b!2866282 () Bool)

(declare-fun res!1189970 () Bool)

(declare-fun e!1814574 () Bool)

(assert (=> b!2866282 (=> (not res!1189970) (not e!1814574))))

(declare-fun call!184929 () Bool)

(assert (=> b!2866282 (= res!1189970 (not call!184929))))

(declare-fun b!2866283 () Bool)

(declare-fun e!1814572 () Bool)

(assert (=> b!2866283 (= e!1814572 (not (= (head!6326 (v!34500 lt!1016838)) (c!462769 (h!39721 (exprs!3160 c!7184))))))))

(declare-fun d!828734 () Bool)

(declare-fun e!1814573 () Bool)

(assert (=> d!828734 e!1814573))

(declare-fun c!462815 () Bool)

(assert (=> d!828734 (= c!462815 (is-EmptyExpr!8700 (h!39721 (exprs!3160 c!7184))))))

(declare-fun lt!1016903 () Bool)

(declare-fun e!1814577 () Bool)

(assert (=> d!828734 (= lt!1016903 e!1814577)))

(declare-fun c!462814 () Bool)

(assert (=> d!828734 (= c!462814 (isEmpty!18677 (v!34500 lt!1016838)))))

(assert (=> d!828734 (validRegex!3495 (h!39721 (exprs!3160 c!7184)))))

(assert (=> d!828734 (= (matchR!3720 (h!39721 (exprs!3160 c!7184)) (v!34500 lt!1016838)) lt!1016903)))

(declare-fun b!2866284 () Bool)

(declare-fun res!1189966 () Bool)

(declare-fun e!1814576 () Bool)

(assert (=> b!2866284 (=> res!1189966 e!1814576)))

(assert (=> b!2866284 (= res!1189966 e!1814574)))

(declare-fun res!1189967 () Bool)

(assert (=> b!2866284 (=> (not res!1189967) (not e!1814574))))

(assert (=> b!2866284 (= res!1189967 lt!1016903)))

(declare-fun b!2866285 () Bool)

(declare-fun res!1189969 () Bool)

(assert (=> b!2866285 (=> res!1189969 e!1814572)))

(assert (=> b!2866285 (= res!1189969 (not (isEmpty!18677 (tail!4551 (v!34500 lt!1016838)))))))

(declare-fun b!2866286 () Bool)

(declare-fun res!1189971 () Bool)

(assert (=> b!2866286 (=> (not res!1189971) (not e!1814574))))

(assert (=> b!2866286 (= res!1189971 (isEmpty!18677 (tail!4551 (v!34500 lt!1016838))))))

(declare-fun b!2866287 () Bool)

(declare-fun e!1814571 () Bool)

(assert (=> b!2866287 (= e!1814571 e!1814572)))

(declare-fun res!1189965 () Bool)

(assert (=> b!2866287 (=> res!1189965 e!1814572)))

(assert (=> b!2866287 (= res!1189965 call!184929)))

(declare-fun b!2866288 () Bool)

(declare-fun e!1814575 () Bool)

(assert (=> b!2866288 (= e!1814575 (not lt!1016903))))

(declare-fun b!2866289 () Bool)

(declare-fun derivativeStep!2306 (Regex!8700 C!17582) Regex!8700)

(assert (=> b!2866289 (= e!1814577 (matchR!3720 (derivativeStep!2306 (h!39721 (exprs!3160 c!7184)) (head!6326 (v!34500 lt!1016838))) (tail!4551 (v!34500 lt!1016838))))))

(declare-fun b!2866290 () Bool)

(declare-fun nullable!2669 (Regex!8700) Bool)

(assert (=> b!2866290 (= e!1814577 (nullable!2669 (h!39721 (exprs!3160 c!7184))))))

(declare-fun bm!184924 () Bool)

(assert (=> bm!184924 (= call!184929 (isEmpty!18677 (v!34500 lt!1016838)))))

(declare-fun b!2866291 () Bool)

(assert (=> b!2866291 (= e!1814574 (= (head!6326 (v!34500 lt!1016838)) (c!462769 (h!39721 (exprs!3160 c!7184)))))))

(declare-fun b!2866292 () Bool)

(declare-fun res!1189964 () Bool)

(assert (=> b!2866292 (=> res!1189964 e!1814576)))

(assert (=> b!2866292 (= res!1189964 (not (is-ElementMatch!8700 (h!39721 (exprs!3160 c!7184)))))))

(assert (=> b!2866292 (= e!1814575 e!1814576)))

(declare-fun b!2866293 () Bool)

(assert (=> b!2866293 (= e!1814573 (= lt!1016903 call!184929))))

(declare-fun b!2866294 () Bool)

(assert (=> b!2866294 (= e!1814573 e!1814575)))

(declare-fun c!462816 () Bool)

(assert (=> b!2866294 (= c!462816 (is-EmptyLang!8700 (h!39721 (exprs!3160 c!7184))))))

(declare-fun b!2866295 () Bool)

(assert (=> b!2866295 (= e!1814576 e!1814571)))

(declare-fun res!1189968 () Bool)

(assert (=> b!2866295 (=> (not res!1189968) (not e!1814571))))

(assert (=> b!2866295 (= res!1189968 (not lt!1016903))))

(assert (= (and d!828734 c!462814) b!2866290))

(assert (= (and d!828734 (not c!462814)) b!2866289))

(assert (= (and d!828734 c!462815) b!2866293))

(assert (= (and d!828734 (not c!462815)) b!2866294))

(assert (= (and b!2866294 c!462816) b!2866288))

(assert (= (and b!2866294 (not c!462816)) b!2866292))

(assert (= (and b!2866292 (not res!1189964)) b!2866284))

(assert (= (and b!2866284 res!1189967) b!2866282))

(assert (= (and b!2866282 res!1189970) b!2866286))

(assert (= (and b!2866286 res!1189971) b!2866291))

(assert (= (and b!2866284 (not res!1189966)) b!2866295))

(assert (= (and b!2866295 res!1189968) b!2866287))

(assert (= (and b!2866287 (not res!1189965)) b!2866285))

(assert (= (and b!2866285 (not res!1189969)) b!2866283))

(assert (= (or b!2866293 b!2866282 b!2866287) bm!184924))

(assert (=> b!2866283 m!3286597))

(assert (=> d!828734 m!3286593))

(assert (=> d!828734 m!3286607))

(declare-fun m!3286651 () Bool)

(assert (=> b!2866290 m!3286651))

(assert (=> bm!184924 m!3286593))

(assert (=> b!2866291 m!3286597))

(assert (=> b!2866289 m!3286597))

(assert (=> b!2866289 m!3286597))

(declare-fun m!3286653 () Bool)

(assert (=> b!2866289 m!3286653))

(assert (=> b!2866289 m!3286601))

(assert (=> b!2866289 m!3286653))

(assert (=> b!2866289 m!3286601))

(declare-fun m!3286655 () Bool)

(assert (=> b!2866289 m!3286655))

(assert (=> b!2866285 m!3286601))

(assert (=> b!2866285 m!3286601))

(declare-fun m!3286657 () Bool)

(assert (=> b!2866285 m!3286657))

(assert (=> b!2866286 m!3286601))

(assert (=> b!2866286 m!3286601))

(assert (=> b!2866286 m!3286657))

(assert (=> b!2866148 d!828734))

(declare-fun b!2866296 () Bool)

(declare-fun res!1189978 () Bool)

(declare-fun e!1814581 () Bool)

(assert (=> b!2866296 (=> (not res!1189978) (not e!1814581))))

(declare-fun call!184930 () Bool)

(assert (=> b!2866296 (= res!1189978 (not call!184930))))

(declare-fun b!2866297 () Bool)

(declare-fun e!1814579 () Bool)

(assert (=> b!2866297 (= e!1814579 (not (= (head!6326 (get!10297 lt!1016838)) (c!462769 (h!39721 (exprs!3160 c!7184))))))))

(declare-fun d!828738 () Bool)

(declare-fun e!1814580 () Bool)

(assert (=> d!828738 e!1814580))

(declare-fun c!462818 () Bool)

(assert (=> d!828738 (= c!462818 (is-EmptyExpr!8700 (h!39721 (exprs!3160 c!7184))))))

(declare-fun lt!1016904 () Bool)

(declare-fun e!1814584 () Bool)

(assert (=> d!828738 (= lt!1016904 e!1814584)))

(declare-fun c!462817 () Bool)

(assert (=> d!828738 (= c!462817 (isEmpty!18677 (get!10297 lt!1016838)))))

(assert (=> d!828738 (validRegex!3495 (h!39721 (exprs!3160 c!7184)))))

(assert (=> d!828738 (= (matchR!3720 (h!39721 (exprs!3160 c!7184)) (get!10297 lt!1016838)) lt!1016904)))

(declare-fun b!2866298 () Bool)

(declare-fun res!1189974 () Bool)

(declare-fun e!1814583 () Bool)

(assert (=> b!2866298 (=> res!1189974 e!1814583)))

(assert (=> b!2866298 (= res!1189974 e!1814581)))

(declare-fun res!1189975 () Bool)

(assert (=> b!2866298 (=> (not res!1189975) (not e!1814581))))

(assert (=> b!2866298 (= res!1189975 lt!1016904)))

(declare-fun b!2866299 () Bool)

(declare-fun res!1189977 () Bool)

(assert (=> b!2866299 (=> res!1189977 e!1814579)))

(assert (=> b!2866299 (= res!1189977 (not (isEmpty!18677 (tail!4551 (get!10297 lt!1016838)))))))

(declare-fun b!2866300 () Bool)

(declare-fun res!1189979 () Bool)

(assert (=> b!2866300 (=> (not res!1189979) (not e!1814581))))

(assert (=> b!2866300 (= res!1189979 (isEmpty!18677 (tail!4551 (get!10297 lt!1016838))))))

(declare-fun b!2866301 () Bool)

(declare-fun e!1814578 () Bool)

(assert (=> b!2866301 (= e!1814578 e!1814579)))

(declare-fun res!1189973 () Bool)

(assert (=> b!2866301 (=> res!1189973 e!1814579)))

(assert (=> b!2866301 (= res!1189973 call!184930)))

(declare-fun b!2866302 () Bool)

(declare-fun e!1814582 () Bool)

(assert (=> b!2866302 (= e!1814582 (not lt!1016904))))

(declare-fun b!2866303 () Bool)

(assert (=> b!2866303 (= e!1814584 (matchR!3720 (derivativeStep!2306 (h!39721 (exprs!3160 c!7184)) (head!6326 (get!10297 lt!1016838))) (tail!4551 (get!10297 lt!1016838))))))

(declare-fun b!2866304 () Bool)

(assert (=> b!2866304 (= e!1814584 (nullable!2669 (h!39721 (exprs!3160 c!7184))))))

(declare-fun bm!184925 () Bool)

(assert (=> bm!184925 (= call!184930 (isEmpty!18677 (get!10297 lt!1016838)))))

(declare-fun b!2866305 () Bool)

(assert (=> b!2866305 (= e!1814581 (= (head!6326 (get!10297 lt!1016838)) (c!462769 (h!39721 (exprs!3160 c!7184)))))))

(declare-fun b!2866306 () Bool)

(declare-fun res!1189972 () Bool)

(assert (=> b!2866306 (=> res!1189972 e!1814583)))

(assert (=> b!2866306 (= res!1189972 (not (is-ElementMatch!8700 (h!39721 (exprs!3160 c!7184)))))))

(assert (=> b!2866306 (= e!1814582 e!1814583)))

(declare-fun b!2866307 () Bool)

(assert (=> b!2866307 (= e!1814580 (= lt!1016904 call!184930))))

(declare-fun b!2866308 () Bool)

(assert (=> b!2866308 (= e!1814580 e!1814582)))

(declare-fun c!462819 () Bool)

(assert (=> b!2866308 (= c!462819 (is-EmptyLang!8700 (h!39721 (exprs!3160 c!7184))))))

(declare-fun b!2866309 () Bool)

(assert (=> b!2866309 (= e!1814583 e!1814578)))

(declare-fun res!1189976 () Bool)

(assert (=> b!2866309 (=> (not res!1189976) (not e!1814578))))

(assert (=> b!2866309 (= res!1189976 (not lt!1016904))))

(assert (= (and d!828738 c!462817) b!2866304))

(assert (= (and d!828738 (not c!462817)) b!2866303))

(assert (= (and d!828738 c!462818) b!2866307))

(assert (= (and d!828738 (not c!462818)) b!2866308))

(assert (= (and b!2866308 c!462819) b!2866302))

(assert (= (and b!2866308 (not c!462819)) b!2866306))

(assert (= (and b!2866306 (not res!1189972)) b!2866298))

(assert (= (and b!2866298 res!1189975) b!2866296))

(assert (= (and b!2866296 res!1189978) b!2866300))

(assert (= (and b!2866300 res!1189979) b!2866305))

(assert (= (and b!2866298 (not res!1189974)) b!2866309))

(assert (= (and b!2866309 res!1189976) b!2866301))

(assert (= (and b!2866301 (not res!1189973)) b!2866299))

(assert (= (and b!2866299 (not res!1189977)) b!2866297))

(assert (= (or b!2866307 b!2866296 b!2866301) bm!184925))

(assert (=> b!2866297 m!3286461))

(declare-fun m!3286659 () Bool)

(assert (=> b!2866297 m!3286659))

(assert (=> d!828738 m!3286461))

(declare-fun m!3286661 () Bool)

(assert (=> d!828738 m!3286661))

(assert (=> d!828738 m!3286607))

(assert (=> b!2866304 m!3286651))

(assert (=> bm!184925 m!3286461))

(assert (=> bm!184925 m!3286661))

(assert (=> b!2866305 m!3286461))

(assert (=> b!2866305 m!3286659))

(assert (=> b!2866303 m!3286461))

(assert (=> b!2866303 m!3286659))

(assert (=> b!2866303 m!3286659))

(declare-fun m!3286663 () Bool)

(assert (=> b!2866303 m!3286663))

(assert (=> b!2866303 m!3286461))

(declare-fun m!3286665 () Bool)

(assert (=> b!2866303 m!3286665))

(assert (=> b!2866303 m!3286663))

(assert (=> b!2866303 m!3286665))

(declare-fun m!3286667 () Bool)

(assert (=> b!2866303 m!3286667))

(assert (=> b!2866299 m!3286461))

(assert (=> b!2866299 m!3286665))

(assert (=> b!2866299 m!3286665))

(declare-fun m!3286669 () Bool)

(assert (=> b!2866299 m!3286669))

(assert (=> b!2866300 m!3286461))

(assert (=> b!2866300 m!3286665))

(assert (=> b!2866300 m!3286665))

(assert (=> b!2866300 m!3286669))

(assert (=> b!2866148 d!828738))

(declare-fun d!828740 () Bool)

(assert (=> d!828740 (forall!7056 (++!8147 lt!1016833 (t!233468 (exprs!3160 c!7184))) lambda!106769)))

(declare-fun lt!1016907 () Unit!47937)

(declare-fun choose!16950 (List!34425 List!34425 Int) Unit!47937)

(assert (=> d!828740 (= lt!1016907 (choose!16950 lt!1016833 (t!233468 (exprs!3160 c!7184)) lambda!106769))))

(assert (=> d!828740 (forall!7056 lt!1016833 lambda!106769)))

(assert (=> d!828740 (= (lemmaConcatPreservesForall!127 lt!1016833 (t!233468 (exprs!3160 c!7184)) lambda!106769) lt!1016907)))

(declare-fun bs!521569 () Bool)

(assert (= bs!521569 d!828740))

(assert (=> bs!521569 m!3286483))

(assert (=> bs!521569 m!3286483))

(declare-fun m!3286671 () Bool)

(assert (=> bs!521569 m!3286671))

(declare-fun m!3286673 () Bool)

(assert (=> bs!521569 m!3286673))

(declare-fun m!3286675 () Bool)

(assert (=> bs!521569 m!3286675))

(assert (=> b!2866153 d!828740))

(declare-fun bs!521570 () Bool)

(declare-fun d!828742 () Bool)

(assert (= bs!521570 (and d!828742 b!2866153)))

(declare-fun lambda!106783 () Int)

(assert (=> bs!521570 (= lambda!106783 lambda!106769)))

(declare-fun bs!521571 () Bool)

(assert (= bs!521571 (and d!828742 d!828704)))

(assert (=> bs!521571 (not (= lambda!106783 lambda!106775))))

(declare-fun bs!521572 () Bool)

(assert (= bs!521572 (and d!828742 d!828706)))

(assert (=> bs!521572 (= lambda!106783 lambda!106778)))

(assert (=> d!828742 (matchZipper!466 (set.insert (Context!5321 (++!8147 (exprs!3160 lt!1016837) (exprs!3160 lt!1016832))) (as set.empty (Set Context!5320))) (++!8148 (v!34500 lt!1016838) (v!34500 lt!1016839)))))

(declare-fun lt!1016917 () Unit!47937)

(assert (=> d!828742 (= lt!1016917 (lemmaConcatPreservesForall!127 (exprs!3160 lt!1016837) (exprs!3160 lt!1016832) lambda!106783))))

(declare-fun lt!1016916 () Unit!47937)

(declare-fun choose!16951 (Context!5320 Context!5320 List!34426 List!34426) Unit!47937)

(assert (=> d!828742 (= lt!1016916 (choose!16951 lt!1016837 lt!1016832 (v!34500 lt!1016838) (v!34500 lt!1016839)))))

(assert (=> d!828742 (matchZipper!466 (set.insert lt!1016837 (as set.empty (Set Context!5320))) (v!34500 lt!1016838))))

(assert (=> d!828742 (= (lemmaConcatenateContextMatchesConcatOfStrings!1 lt!1016837 lt!1016832 (v!34500 lt!1016838) (v!34500 lt!1016839)) lt!1016916)))

(declare-fun bs!521574 () Bool)

(assert (= bs!521574 d!828742))

(declare-fun m!3286677 () Bool)

(assert (=> bs!521574 m!3286677))

(assert (=> bs!521574 m!3286485))

(declare-fun m!3286679 () Bool)

(assert (=> bs!521574 m!3286679))

(declare-fun m!3286681 () Bool)

(assert (=> bs!521574 m!3286681))

(declare-fun m!3286683 () Bool)

(assert (=> bs!521574 m!3286683))

(declare-fun m!3286685 () Bool)

(assert (=> bs!521574 m!3286685))

(assert (=> bs!521574 m!3286485))

(assert (=> bs!521574 m!3286677))

(assert (=> bs!521574 m!3286457))

(assert (=> bs!521574 m!3286457))

(declare-fun m!3286687 () Bool)

(assert (=> bs!521574 m!3286687))

(assert (=> b!2866153 d!828742))

(declare-fun e!1814590 () Bool)

(declare-fun b!2866321 () Bool)

(declare-fun lt!1016922 () List!34426)

(assert (=> b!2866321 (= e!1814590 (or (not (= (v!34500 lt!1016839) Nil!34302)) (= lt!1016922 (v!34500 lt!1016838))))))

(declare-fun b!2866318 () Bool)

(declare-fun e!1814589 () List!34426)

(assert (=> b!2866318 (= e!1814589 (v!34500 lt!1016839))))

(declare-fun d!828744 () Bool)

(assert (=> d!828744 e!1814590))

(declare-fun res!1189985 () Bool)

(assert (=> d!828744 (=> (not res!1189985) (not e!1814590))))

(declare-fun content!4683 (List!34426) (Set C!17582))

(assert (=> d!828744 (= res!1189985 (= (content!4683 lt!1016922) (set.union (content!4683 (v!34500 lt!1016838)) (content!4683 (v!34500 lt!1016839)))))))

(assert (=> d!828744 (= lt!1016922 e!1814589)))

(declare-fun c!462822 () Bool)

(assert (=> d!828744 (= c!462822 (is-Nil!34302 (v!34500 lt!1016838)))))

(assert (=> d!828744 (= (++!8148 (v!34500 lt!1016838) (v!34500 lt!1016839)) lt!1016922)))

(declare-fun b!2866320 () Bool)

(declare-fun res!1189984 () Bool)

(assert (=> b!2866320 (=> (not res!1189984) (not e!1814590))))

(declare-fun size!26302 (List!34426) Int)

(assert (=> b!2866320 (= res!1189984 (= (size!26302 lt!1016922) (+ (size!26302 (v!34500 lt!1016838)) (size!26302 (v!34500 lt!1016839)))))))

(declare-fun b!2866319 () Bool)

(assert (=> b!2866319 (= e!1814589 (Cons!34302 (h!39722 (v!34500 lt!1016838)) (++!8148 (t!233469 (v!34500 lt!1016838)) (v!34500 lt!1016839))))))

(assert (= (and d!828744 c!462822) b!2866318))

(assert (= (and d!828744 (not c!462822)) b!2866319))

(assert (= (and d!828744 res!1189985) b!2866320))

(assert (= (and b!2866320 res!1189984) b!2866321))

(declare-fun m!3286701 () Bool)

(assert (=> d!828744 m!3286701))

(declare-fun m!3286703 () Bool)

(assert (=> d!828744 m!3286703))

(declare-fun m!3286705 () Bool)

(assert (=> d!828744 m!3286705))

(declare-fun m!3286707 () Bool)

(assert (=> b!2866320 m!3286707))

(declare-fun m!3286709 () Bool)

(assert (=> b!2866320 m!3286709))

(declare-fun m!3286711 () Bool)

(assert (=> b!2866320 m!3286711))

(declare-fun m!3286713 () Bool)

(assert (=> b!2866319 m!3286713))

(assert (=> b!2866153 d!828744))

(declare-fun d!828748 () Bool)

(declare-fun isEmpty!18678 (Option!6379) Bool)

(assert (=> d!828748 (= (isDefined!4989 (getLanguageWitness!365 c!7184)) (not (isEmpty!18678 (getLanguageWitness!365 c!7184))))))

(declare-fun bs!521576 () Bool)

(assert (= bs!521576 d!828748))

(assert (=> bs!521576 m!3286477))

(declare-fun m!3286715 () Bool)

(assert (=> bs!521576 m!3286715))

(assert (=> b!2866153 d!828748))

(declare-fun b!2866331 () Bool)

(declare-fun e!1814596 () List!34425)

(assert (=> b!2866331 (= e!1814596 (Cons!34301 (h!39721 lt!1016833) (++!8147 (t!233468 lt!1016833) (t!233468 (exprs!3160 c!7184)))))))

(declare-fun d!828750 () Bool)

(declare-fun e!1814595 () Bool)

(assert (=> d!828750 e!1814595))

(declare-fun res!1189990 () Bool)

(assert (=> d!828750 (=> (not res!1189990) (not e!1814595))))

(declare-fun lt!1016928 () List!34425)

(declare-fun content!4684 (List!34425) (Set Regex!8700))

(assert (=> d!828750 (= res!1189990 (= (content!4684 lt!1016928) (set.union (content!4684 lt!1016833) (content!4684 (t!233468 (exprs!3160 c!7184))))))))

(assert (=> d!828750 (= lt!1016928 e!1814596)))

(declare-fun c!462825 () Bool)

(assert (=> d!828750 (= c!462825 (is-Nil!34301 lt!1016833))))

(assert (=> d!828750 (= (++!8147 lt!1016833 (t!233468 (exprs!3160 c!7184))) lt!1016928)))

(declare-fun b!2866330 () Bool)

(assert (=> b!2866330 (= e!1814596 (t!233468 (exprs!3160 c!7184)))))

(declare-fun b!2866333 () Bool)

(assert (=> b!2866333 (= e!1814595 (or (not (= (t!233468 (exprs!3160 c!7184)) Nil!34301)) (= lt!1016928 lt!1016833)))))

(declare-fun b!2866332 () Bool)

(declare-fun res!1189991 () Bool)

(assert (=> b!2866332 (=> (not res!1189991) (not e!1814595))))

(declare-fun size!26303 (List!34425) Int)

(assert (=> b!2866332 (= res!1189991 (= (size!26303 lt!1016928) (+ (size!26303 lt!1016833) (size!26303 (t!233468 (exprs!3160 c!7184))))))))

(assert (= (and d!828750 c!462825) b!2866330))

(assert (= (and d!828750 (not c!462825)) b!2866331))

(assert (= (and d!828750 res!1189990) b!2866332))

(assert (= (and b!2866332 res!1189991) b!2866333))

(declare-fun m!3286723 () Bool)

(assert (=> b!2866331 m!3286723))

(declare-fun m!3286725 () Bool)

(assert (=> d!828750 m!3286725))

(declare-fun m!3286727 () Bool)

(assert (=> d!828750 m!3286727))

(declare-fun m!3286729 () Bool)

(assert (=> d!828750 m!3286729))

(declare-fun m!3286731 () Bool)

(assert (=> b!2866332 m!3286731))

(declare-fun m!3286733 () Bool)

(assert (=> b!2866332 m!3286733))

(declare-fun m!3286735 () Bool)

(assert (=> b!2866332 m!3286735))

(assert (=> b!2866153 d!828750))

(declare-fun d!828754 () Bool)

(declare-fun c!462826 () Bool)

(assert (=> d!828754 (= c!462826 (isEmpty!18677 (++!8148 (v!34500 lt!1016838) (v!34500 lt!1016839))))))

(declare-fun e!1814597 () Bool)

(assert (=> d!828754 (= (matchZipper!466 (set.insert (Context!5321 (++!8147 lt!1016833 (t!233468 (exprs!3160 c!7184)))) (as set.empty (Set Context!5320))) (++!8148 (v!34500 lt!1016838) (v!34500 lt!1016839))) e!1814597)))

(declare-fun b!2866334 () Bool)

(assert (=> b!2866334 (= e!1814597 (nullableZipper!705 (set.insert (Context!5321 (++!8147 lt!1016833 (t!233468 (exprs!3160 c!7184)))) (as set.empty (Set Context!5320)))))))

(declare-fun b!2866335 () Bool)

(assert (=> b!2866335 (= e!1814597 (matchZipper!466 (derivationStepZipper!461 (set.insert (Context!5321 (++!8147 lt!1016833 (t!233468 (exprs!3160 c!7184)))) (as set.empty (Set Context!5320))) (head!6326 (++!8148 (v!34500 lt!1016838) (v!34500 lt!1016839)))) (tail!4551 (++!8148 (v!34500 lt!1016838) (v!34500 lt!1016839)))))))

(assert (= (and d!828754 c!462826) b!2866334))

(assert (= (and d!828754 (not c!462826)) b!2866335))

(assert (=> d!828754 m!3286485))

(declare-fun m!3286737 () Bool)

(assert (=> d!828754 m!3286737))

(assert (=> b!2866334 m!3286487))

(declare-fun m!3286739 () Bool)

(assert (=> b!2866334 m!3286739))

(assert (=> b!2866335 m!3286485))

(declare-fun m!3286741 () Bool)

(assert (=> b!2866335 m!3286741))

(assert (=> b!2866335 m!3286487))

(assert (=> b!2866335 m!3286741))

(declare-fun m!3286743 () Bool)

(assert (=> b!2866335 m!3286743))

(assert (=> b!2866335 m!3286485))

(declare-fun m!3286745 () Bool)

(assert (=> b!2866335 m!3286745))

(assert (=> b!2866335 m!3286743))

(assert (=> b!2866335 m!3286745))

(declare-fun m!3286747 () Bool)

(assert (=> b!2866335 m!3286747))

(assert (=> b!2866153 d!828754))

(declare-fun bs!521578 () Bool)

(declare-fun d!828756 () Bool)

(assert (= bs!521578 (and d!828756 b!2866153)))

(declare-fun lambda!106787 () Int)

(assert (=> bs!521578 (not (= lambda!106787 lambda!106769))))

(declare-fun bs!521579 () Bool)

(assert (= bs!521579 (and d!828756 d!828704)))

(assert (=> bs!521579 (= lambda!106787 lambda!106775)))

(declare-fun bs!521580 () Bool)

(assert (= bs!521580 (and d!828756 d!828706)))

(assert (=> bs!521580 (not (= lambda!106787 lambda!106778))))

(declare-fun bs!521581 () Bool)

(assert (= bs!521581 (and d!828756 d!828742)))

(assert (=> bs!521581 (not (= lambda!106787 lambda!106783))))

(declare-fun b!2866348 () Bool)

(declare-fun c!462835 () Bool)

(declare-fun lt!1016937 () Option!6379)

(assert (=> b!2866348 (= c!462835 (is-Some!6378 lt!1016937))))

(assert (=> b!2866348 (= lt!1016937 (getLanguageWitness!365 (Context!5321 (t!233468 (exprs!3160 c!7184)))))))

(declare-fun e!1814606 () Option!6379)

(declare-fun e!1814605 () Option!6379)

(assert (=> b!2866348 (= e!1814606 e!1814605)))

(declare-fun b!2866349 () Bool)

(declare-fun e!1814604 () Option!6379)

(assert (=> b!2866349 (= e!1814604 (Some!6378 Nil!34302))))

(declare-fun b!2866350 () Bool)

(assert (=> b!2866350 (= e!1814606 None!6378)))

(declare-fun b!2866351 () Bool)

(declare-fun lt!1016936 () Option!6379)

(assert (=> b!2866351 (= e!1814605 (Some!6378 (++!8148 (v!34500 lt!1016936) (v!34500 lt!1016937))))))

(declare-fun b!2866352 () Bool)

(assert (=> b!2866352 (= e!1814605 None!6378)))

(declare-fun b!2866353 () Bool)

(assert (=> b!2866353 (= e!1814604 e!1814606)))

(assert (=> b!2866353 (= lt!1016936 (getLanguageWitness!364 (h!39721 (exprs!3160 c!7184))))))

(declare-fun c!462834 () Bool)

(assert (=> b!2866353 (= c!462834 (is-Some!6378 lt!1016936))))

(declare-fun lt!1016935 () Option!6379)

(assert (=> d!828756 (= (isEmpty!18678 lt!1016935) (exists!1129 (exprs!3160 c!7184) lambda!106787))))

(assert (=> d!828756 (= lt!1016935 e!1814604)))

(declare-fun c!462836 () Bool)

(assert (=> d!828756 (= c!462836 (is-Cons!34301 (exprs!3160 c!7184)))))

(assert (=> d!828756 (= (getLanguageWitness!365 c!7184) lt!1016935)))

(assert (= (and d!828756 c!462836) b!2866353))

(assert (= (and d!828756 (not c!462836)) b!2866349))

(assert (= (and b!2866353 c!462834) b!2866348))

(assert (= (and b!2866353 (not c!462834)) b!2866350))

(assert (= (and b!2866348 c!462835) b!2866351))

(assert (= (and b!2866348 (not c!462835)) b!2866352))

(declare-fun m!3286749 () Bool)

(assert (=> b!2866348 m!3286749))

(declare-fun m!3286751 () Bool)

(assert (=> b!2866351 m!3286751))

(assert (=> b!2866353 m!3286475))

(declare-fun m!3286753 () Bool)

(assert (=> d!828756 m!3286753))

(declare-fun m!3286755 () Bool)

(assert (=> d!828756 m!3286755))

(assert (=> b!2866153 d!828756))

(declare-fun bs!521582 () Bool)

(declare-fun d!828758 () Bool)

(assert (= bs!521582 (and d!828758 d!828756)))

(declare-fun lambda!106788 () Int)

(assert (=> bs!521582 (= lambda!106788 lambda!106787)))

(declare-fun bs!521583 () Bool)

(assert (= bs!521583 (and d!828758 d!828742)))

(assert (=> bs!521583 (not (= lambda!106788 lambda!106783))))

(declare-fun bs!521584 () Bool)

(assert (= bs!521584 (and d!828758 d!828706)))

(assert (=> bs!521584 (not (= lambda!106788 lambda!106778))))

(declare-fun bs!521585 () Bool)

(assert (= bs!521585 (and d!828758 b!2866153)))

(assert (=> bs!521585 (not (= lambda!106788 lambda!106769))))

(declare-fun bs!521586 () Bool)

(assert (= bs!521586 (and d!828758 d!828704)))

(assert (=> bs!521586 (= lambda!106788 lambda!106775)))

(declare-fun b!2866364 () Bool)

(declare-fun c!462843 () Bool)

(declare-fun lt!1016946 () Option!6379)

(assert (=> b!2866364 (= c!462843 (is-Some!6378 lt!1016946))))

(assert (=> b!2866364 (= lt!1016946 (getLanguageWitness!365 (Context!5321 (t!233468 (exprs!3160 lt!1016832)))))))

(declare-fun e!1814613 () Option!6379)

(declare-fun e!1814612 () Option!6379)

(assert (=> b!2866364 (= e!1814613 e!1814612)))

(declare-fun b!2866365 () Bool)

(declare-fun e!1814611 () Option!6379)

(assert (=> b!2866365 (= e!1814611 (Some!6378 Nil!34302))))

(declare-fun b!2866366 () Bool)

(assert (=> b!2866366 (= e!1814613 None!6378)))

(declare-fun b!2866367 () Bool)

(declare-fun lt!1016945 () Option!6379)

(assert (=> b!2866367 (= e!1814612 (Some!6378 (++!8148 (v!34500 lt!1016945) (v!34500 lt!1016946))))))

(declare-fun b!2866368 () Bool)

(assert (=> b!2866368 (= e!1814612 None!6378)))

(declare-fun b!2866369 () Bool)

(assert (=> b!2866369 (= e!1814611 e!1814613)))

(assert (=> b!2866369 (= lt!1016945 (getLanguageWitness!364 (h!39721 (exprs!3160 lt!1016832))))))

(declare-fun c!462842 () Bool)

(assert (=> b!2866369 (= c!462842 (is-Some!6378 lt!1016945))))

(declare-fun lt!1016944 () Option!6379)

(assert (=> d!828758 (= (isEmpty!18678 lt!1016944) (exists!1129 (exprs!3160 lt!1016832) lambda!106788))))

(assert (=> d!828758 (= lt!1016944 e!1814611)))

(declare-fun c!462844 () Bool)

(assert (=> d!828758 (= c!462844 (is-Cons!34301 (exprs!3160 lt!1016832)))))

(assert (=> d!828758 (= (getLanguageWitness!365 lt!1016832) lt!1016944)))

(assert (= (and d!828758 c!462844) b!2866369))

(assert (= (and d!828758 (not c!462844)) b!2866365))

(assert (= (and b!2866369 c!462842) b!2866364))

(assert (= (and b!2866369 (not c!462842)) b!2866366))

(assert (= (and b!2866364 c!462843) b!2866367))

(assert (= (and b!2866364 (not c!462843)) b!2866368))

(declare-fun m!3286757 () Bool)

(assert (=> b!2866364 m!3286757))

(declare-fun m!3286759 () Bool)

(assert (=> b!2866367 m!3286759))

(declare-fun m!3286761 () Bool)

(assert (=> b!2866369 m!3286761))

(declare-fun m!3286763 () Bool)

(assert (=> d!828758 m!3286763))

(declare-fun m!3286765 () Bool)

(assert (=> d!828758 m!3286765))

(assert (=> b!2866154 d!828758))

(declare-fun b!2866376 () Bool)

(declare-fun e!1814618 () Bool)

(declare-fun tp!922931 () Bool)

(declare-fun tp!922932 () Bool)

(assert (=> b!2866376 (= e!1814618 (and tp!922931 tp!922932))))

(assert (=> b!2866149 (= tp!922923 e!1814618)))

(assert (= (and b!2866149 (is-Cons!34301 (exprs!3160 c!7184))) b!2866376))

(push 1)

(assert (not d!828742))

(assert (not b!2866348))

(assert (not d!828758))

(assert (not b!2866304))

(assert (not b!2866237))

(assert (not b!2866353))

(assert (not d!828732))

(assert (not b!2866222))

(assert (not b!2866376))

(assert (not b!2866351))

(assert (not b!2866367))

(assert (not bm!184925))

(assert (not b!2866320))

(assert (not b!2866289))

(assert (not b!2866239))

(assert (not d!828718))

(assert (not d!828704))

(assert (not d!828740))

(assert (not d!828728))

(assert (not d!828712))

(assert (not bm!184921))

(assert (not b!2866305))

(assert (not d!828750))

(assert (not d!828720))

(assert (not bm!184920))

(assert (not b!2866335))

(assert (not b!2866332))

(assert (not d!828748))

(assert (not d!828738))

(assert (not b!2866303))

(assert (not b!2866285))

(assert (not b!2866334))

(assert (not b!2866240))

(assert (not b!2866238))

(assert (not b!2866290))

(assert (not d!828724))

(assert (not bm!184924))

(assert (not d!828756))

(assert (not b!2866299))

(assert (not b!2866319))

(assert (not b!2866291))

(assert (not d!828754))

(assert (not d!828744))

(assert (not b!2866286))

(assert (not b!2866283))

(assert (not d!828706))

(assert (not b!2866331))

(assert (not b!2866241))

(assert (not b!2866369))

(assert (not b!2866236))

(assert (not d!828734))

(assert (not b!2866297))

(assert (not b!2866300))

(assert (not b!2866364))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

