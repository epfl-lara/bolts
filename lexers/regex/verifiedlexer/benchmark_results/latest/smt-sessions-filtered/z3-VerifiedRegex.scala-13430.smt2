; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!726414 () Bool)

(assert start!726414)

(declare-fun b!7505063 () Bool)

(declare-fun res!3010921 () Bool)

(declare-fun e!4474866 () Bool)

(assert (=> b!7505063 (=> (not res!3010921) (not e!4474866))))

(declare-fun totalInputSize!226 () Int)

(declare-datatypes ((C!39720 0))(
  ( (C!39721 (val!30258 Int)) )
))
(declare-datatypes ((List!72485 0))(
  ( (Nil!72361) (Cons!72361 (h!78809 C!39720) (t!387054 List!72485)) )
))
(declare-fun totalInput!779 () List!72485)

(declare-fun size!42268 (List!72485) Int)

(assert (=> b!7505063 (= res!3010921 (= totalInputSize!226 (size!42268 totalInput!779)))))

(declare-fun res!3010922 () Bool)

(declare-fun e!4474858 () Bool)

(assert (=> start!726414 (=> (not res!3010922) (not e!4474858))))

(declare-fun lt!2634316 () List!72485)

(assert (=> start!726414 (= res!3010922 (= lt!2634316 totalInput!779))))

(declare-fun testedP!204 () List!72485)

(declare-fun testedSuffix!164 () List!72485)

(declare-fun ++!17326 (List!72485 List!72485) List!72485)

(assert (=> start!726414 (= lt!2634316 (++!17326 testedP!204 testedSuffix!164))))

(assert (=> start!726414 e!4474858))

(declare-fun e!4474863 () Bool)

(assert (=> start!726414 e!4474863))

(assert (=> start!726414 true))

(declare-fun e!4474860 () Bool)

(assert (=> start!726414 e!4474860))

(declare-fun e!4474865 () Bool)

(assert (=> start!726414 e!4474865))

(declare-fun condSetEmpty!56958 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!19697 0))(
  ( (ElementMatch!19697 (c!1385528 C!39720)) (Concat!28542 (regOne!39906 Regex!19697) (regTwo!39906 Regex!19697)) (EmptyExpr!19697) (Star!19697 (reg!20026 Regex!19697)) (EmptyLang!19697) (Union!19697 (regOne!39907 Regex!19697) (regTwo!39907 Regex!19697)) )
))
(declare-datatypes ((List!72486 0))(
  ( (Nil!72362) (Cons!72362 (h!78810 Regex!19697) (t!387055 List!72486)) )
))
(declare-datatypes ((Context!16898 0))(
  ( (Context!16899 (exprs!8949 List!72486)) )
))
(declare-fun z!3716 () (InoxSet Context!16898))

(assert (=> start!726414 (= condSetEmpty!56958 (= z!3716 ((as const (Array Context!16898 Bool)) false)))))

(declare-fun setRes!56958 () Bool)

(assert (=> start!726414 setRes!56958))

(declare-fun b!7505064 () Bool)

(declare-fun e!4474861 () Bool)

(declare-fun tp!2178564 () Bool)

(assert (=> b!7505064 (= e!4474861 tp!2178564)))

(declare-fun b!7505065 () Bool)

(declare-fun tp_is_empty!49735 () Bool)

(declare-fun tp!2178561 () Bool)

(assert (=> b!7505065 (= e!4474860 (and tp_is_empty!49735 tp!2178561))))

(declare-fun b!7505066 () Bool)

(declare-fun e!4474864 () Bool)

(declare-fun e!4474862 () Bool)

(assert (=> b!7505066 (= e!4474864 e!4474862)))

(declare-fun res!3010923 () Bool)

(assert (=> b!7505066 (=> (not res!3010923) (not e!4474862))))

(assert (=> b!7505066 (= res!3010923 (= (++!17326 Nil!72361 totalInput!779) totalInput!779))))

(declare-fun b!7505067 () Bool)

(declare-fun e!4474857 () Bool)

(declare-fun lt!2634315 () Int)

(assert (=> b!7505067 (= e!4474857 (>= (size!42268 Nil!72361) lt!2634315))))

(declare-fun tp!2178563 () Bool)

(declare-fun setNonEmpty!56958 () Bool)

(declare-fun setElem!56958 () Context!16898)

(declare-fun inv!92472 (Context!16898) Bool)

(assert (=> setNonEmpty!56958 (= setRes!56958 (and tp!2178563 (inv!92472 setElem!56958) e!4474861))))

(declare-fun setRest!56958 () (InoxSet Context!16898))

(assert (=> setNonEmpty!56958 (= z!3716 ((_ map or) (store ((as const (Array Context!16898 Bool)) false) setElem!56958 true) setRest!56958))))

(declare-fun b!7505068 () Bool)

(declare-fun e!4474859 () Bool)

(assert (=> b!7505068 (= e!4474866 (not e!4474859))))

(declare-fun res!3010925 () Bool)

(assert (=> b!7505068 (=> res!3010925 e!4474859)))

(declare-fun isPrefix!5991 (List!72485 List!72485) Bool)

(assert (=> b!7505068 (= res!3010925 (not (isPrefix!5991 testedP!204 totalInput!779)))))

(assert (=> b!7505068 (isPrefix!5991 testedP!204 lt!2634316)))

(declare-datatypes ((Unit!166344 0))(
  ( (Unit!166345) )
))
(declare-fun lt!2634314 () Unit!166344)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3704 (List!72485 List!72485) Unit!166344)

(assert (=> b!7505068 (= lt!2634314 (lemmaConcatTwoListThenFirstIsPrefix!3704 testedP!204 testedSuffix!164))))

(declare-fun b!7505069 () Bool)

(assert (=> b!7505069 (= e!4474858 e!4474866)))

(declare-fun res!3010924 () Bool)

(assert (=> b!7505069 (=> (not res!3010924) (not e!4474866))))

(declare-fun testedPSize!164 () Int)

(assert (=> b!7505069 (= res!3010924 (= testedPSize!164 lt!2634315))))

(assert (=> b!7505069 (= lt!2634315 (size!42268 testedP!204))))

(declare-fun b!7505070 () Bool)

(declare-fun tp!2178565 () Bool)

(assert (=> b!7505070 (= e!4474863 (and tp_is_empty!49735 tp!2178565))))

(declare-fun b!7505071 () Bool)

(assert (=> b!7505071 (= e!4474859 e!4474864)))

(declare-fun res!3010920 () Bool)

(assert (=> b!7505071 (=> res!3010920 e!4474864)))

(declare-fun lostCauseZipper!1385 ((InoxSet Context!16898)) Bool)

(assert (=> b!7505071 (= res!3010920 (not (lostCauseZipper!1385 z!3716)))))

(declare-fun lt!2634317 () List!72485)

(assert (=> b!7505071 (and (= testedSuffix!164 lt!2634317) (= lt!2634317 testedSuffix!164))))

(declare-fun lt!2634318 () Unit!166344)

(declare-fun lemmaSamePrefixThenSameSuffix!2790 (List!72485 List!72485 List!72485 List!72485 List!72485) Unit!166344)

(assert (=> b!7505071 (= lt!2634318 (lemmaSamePrefixThenSameSuffix!2790 testedP!204 testedSuffix!164 testedP!204 lt!2634317 totalInput!779))))

(declare-fun getSuffix!3491 (List!72485 List!72485) List!72485)

(assert (=> b!7505071 (= lt!2634317 (getSuffix!3491 totalInput!779 testedP!204))))

(declare-fun b!7505072 () Bool)

(declare-fun tp!2178562 () Bool)

(assert (=> b!7505072 (= e!4474865 (and tp_is_empty!49735 tp!2178562))))

(declare-fun setIsEmpty!56958 () Bool)

(assert (=> setIsEmpty!56958 setRes!56958))

(declare-fun b!7505073 () Bool)

(assert (=> b!7505073 (= e!4474862 e!4474857)))

(declare-fun res!3010926 () Bool)

(assert (=> b!7505073 (=> res!3010926 e!4474857)))

(assert (=> b!7505073 (= res!3010926 true)))

(assert (= (and start!726414 res!3010922) b!7505069))

(assert (= (and b!7505069 res!3010924) b!7505063))

(assert (= (and b!7505063 res!3010921) b!7505068))

(assert (= (and b!7505068 (not res!3010925)) b!7505071))

(assert (= (and b!7505071 (not res!3010920)) b!7505066))

(assert (= (and b!7505066 res!3010923) b!7505073))

(assert (= (and b!7505073 (not res!3010926)) b!7505067))

(get-info :version)

(assert (= (and start!726414 ((_ is Cons!72361) testedSuffix!164)) b!7505070))

(assert (= (and start!726414 ((_ is Cons!72361) totalInput!779)) b!7505065))

(assert (= (and start!726414 ((_ is Cons!72361) testedP!204)) b!7505072))

(assert (= (and start!726414 condSetEmpty!56958) setIsEmpty!56958))

(assert (= (and start!726414 (not condSetEmpty!56958)) setNonEmpty!56958))

(assert (= setNonEmpty!56958 b!7505064))

(declare-fun m!8087306 () Bool)

(assert (=> start!726414 m!8087306))

(declare-fun m!8087308 () Bool)

(assert (=> b!7505067 m!8087308))

(declare-fun m!8087310 () Bool)

(assert (=> b!7505063 m!8087310))

(declare-fun m!8087312 () Bool)

(assert (=> b!7505066 m!8087312))

(declare-fun m!8087314 () Bool)

(assert (=> b!7505069 m!8087314))

(declare-fun m!8087316 () Bool)

(assert (=> b!7505068 m!8087316))

(declare-fun m!8087318 () Bool)

(assert (=> b!7505068 m!8087318))

(declare-fun m!8087320 () Bool)

(assert (=> b!7505068 m!8087320))

(declare-fun m!8087322 () Bool)

(assert (=> setNonEmpty!56958 m!8087322))

(declare-fun m!8087324 () Bool)

(assert (=> b!7505071 m!8087324))

(declare-fun m!8087326 () Bool)

(assert (=> b!7505071 m!8087326))

(declare-fun m!8087328 () Bool)

(assert (=> b!7505071 m!8087328))

(check-sat (not b!7505065) (not setNonEmpty!56958) tp_is_empty!49735 (not b!7505068) (not b!7505063) (not b!7505069) (not b!7505070) (not b!7505072) (not b!7505071) (not start!726414) (not b!7505066) (not b!7505067) (not b!7505064))
(check-sat)
(get-model)

(declare-fun bs!1938072 () Bool)

(declare-fun b!7505149 () Bool)

(declare-fun d!2303807 () Bool)

(assert (= bs!1938072 (and b!7505149 d!2303807)))

(declare-fun lambda!465261 () Int)

(declare-fun lambda!465260 () Int)

(assert (=> bs!1938072 (not (= lambda!465261 lambda!465260))))

(declare-fun bs!1938073 () Bool)

(declare-fun b!7505150 () Bool)

(assert (= bs!1938073 (and b!7505150 d!2303807)))

(declare-fun lambda!465262 () Int)

(assert (=> bs!1938073 (not (= lambda!465262 lambda!465260))))

(declare-fun bs!1938074 () Bool)

(assert (= bs!1938074 (and b!7505150 b!7505149)))

(assert (=> bs!1938074 (= lambda!465262 lambda!465261)))

(declare-fun e!4474919 () Unit!166344)

(declare-fun Unit!166348 () Unit!166344)

(assert (=> b!7505150 (= e!4474919 Unit!166348)))

(declare-datatypes ((List!72488 0))(
  ( (Nil!72364) (Cons!72364 (h!78812 Context!16898) (t!387057 List!72488)) )
))
(declare-fun lt!2634383 () List!72488)

(declare-fun call!688680 () List!72488)

(assert (=> b!7505150 (= lt!2634383 call!688680)))

(declare-fun lt!2634382 () Unit!166344)

(declare-fun lemmaForallThenNotExists!462 (List!72488 Int) Unit!166344)

(assert (=> b!7505150 (= lt!2634382 (lemmaForallThenNotExists!462 lt!2634383 lambda!465260))))

(declare-fun call!688679 () Bool)

(assert (=> b!7505150 (not call!688679)))

(declare-fun lt!2634386 () Unit!166344)

(assert (=> b!7505150 (= lt!2634386 lt!2634382)))

(declare-fun Unit!166349 () Unit!166344)

(assert (=> b!7505149 (= e!4474919 Unit!166349)))

(declare-fun lt!2634381 () List!72488)

(assert (=> b!7505149 (= lt!2634381 call!688680)))

(declare-fun lt!2634385 () Unit!166344)

(declare-fun lemmaNotForallThenExists!495 (List!72488 Int) Unit!166344)

(assert (=> b!7505149 (= lt!2634385 (lemmaNotForallThenExists!495 lt!2634381 lambda!465260))))

(assert (=> b!7505149 call!688679))

(declare-fun lt!2634384 () Unit!166344)

(assert (=> b!7505149 (= lt!2634384 lt!2634385)))

(declare-fun bm!688674 () Bool)

(declare-fun toList!11824 ((InoxSet Context!16898)) List!72488)

(assert (=> bm!688674 (= call!688680 (toList!11824 z!3716))))

(declare-fun bm!688675 () Bool)

(declare-fun c!1385562 () Bool)

(declare-fun exists!4851 (List!72488 Int) Bool)

(assert (=> bm!688675 (= call!688679 (exists!4851 (ite c!1385562 lt!2634381 lt!2634383) (ite c!1385562 lambda!465261 lambda!465262)))))

(declare-fun lt!2634388 () Bool)

(declare-datatypes ((Option!17220 0))(
  ( (None!17219) (Some!17219 (v!54348 List!72485)) )
))
(declare-fun isEmpty!41304 (Option!17220) Bool)

(declare-fun getLanguageWitness!1042 ((InoxSet Context!16898)) Option!17220)

(assert (=> d!2303807 (= lt!2634388 (isEmpty!41304 (getLanguageWitness!1042 z!3716)))))

(declare-fun forall!18274 ((InoxSet Context!16898) Int) Bool)

(assert (=> d!2303807 (= lt!2634388 (forall!18274 z!3716 lambda!465260))))

(declare-fun lt!2634387 () Unit!166344)

(assert (=> d!2303807 (= lt!2634387 e!4474919)))

(assert (=> d!2303807 (= c!1385562 (not (forall!18274 z!3716 lambda!465260)))))

(assert (=> d!2303807 (= (lostCauseZipper!1385 z!3716) lt!2634388)))

(assert (= (and d!2303807 c!1385562) b!7505149))

(assert (= (and d!2303807 (not c!1385562)) b!7505150))

(assert (= (or b!7505149 b!7505150) bm!688674))

(assert (= (or b!7505149 b!7505150) bm!688675))

(declare-fun m!8087404 () Bool)

(assert (=> d!2303807 m!8087404))

(assert (=> d!2303807 m!8087404))

(declare-fun m!8087406 () Bool)

(assert (=> d!2303807 m!8087406))

(declare-fun m!8087408 () Bool)

(assert (=> d!2303807 m!8087408))

(assert (=> d!2303807 m!8087408))

(declare-fun m!8087410 () Bool)

(assert (=> bm!688674 m!8087410))

(declare-fun m!8087412 () Bool)

(assert (=> b!7505150 m!8087412))

(declare-fun m!8087414 () Bool)

(assert (=> bm!688675 m!8087414))

(declare-fun m!8087416 () Bool)

(assert (=> b!7505149 m!8087416))

(assert (=> b!7505071 d!2303807))

(declare-fun d!2303833 () Bool)

(assert (=> d!2303833 (= testedSuffix!164 lt!2634317)))

(declare-fun lt!2634391 () Unit!166344)

(declare-fun choose!58088 (List!72485 List!72485 List!72485 List!72485 List!72485) Unit!166344)

(assert (=> d!2303833 (= lt!2634391 (choose!58088 testedP!204 testedSuffix!164 testedP!204 lt!2634317 totalInput!779))))

(assert (=> d!2303833 (isPrefix!5991 testedP!204 totalInput!779)))

(assert (=> d!2303833 (= (lemmaSamePrefixThenSameSuffix!2790 testedP!204 testedSuffix!164 testedP!204 lt!2634317 totalInput!779) lt!2634391)))

(declare-fun bs!1938075 () Bool)

(assert (= bs!1938075 d!2303833))

(declare-fun m!8087418 () Bool)

(assert (=> bs!1938075 m!8087418))

(assert (=> bs!1938075 m!8087316))

(assert (=> b!7505071 d!2303833))

(declare-fun d!2303835 () Bool)

(declare-fun lt!2634394 () List!72485)

(assert (=> d!2303835 (= (++!17326 testedP!204 lt!2634394) totalInput!779)))

(declare-fun e!4474922 () List!72485)

(assert (=> d!2303835 (= lt!2634394 e!4474922)))

(declare-fun c!1385565 () Bool)

(assert (=> d!2303835 (= c!1385565 ((_ is Cons!72361) testedP!204))))

(assert (=> d!2303835 (>= (size!42268 totalInput!779) (size!42268 testedP!204))))

(assert (=> d!2303835 (= (getSuffix!3491 totalInput!779 testedP!204) lt!2634394)))

(declare-fun b!7505155 () Bool)

(declare-fun tail!14987 (List!72485) List!72485)

(assert (=> b!7505155 (= e!4474922 (getSuffix!3491 (tail!14987 totalInput!779) (t!387054 testedP!204)))))

(declare-fun b!7505156 () Bool)

(assert (=> b!7505156 (= e!4474922 totalInput!779)))

(assert (= (and d!2303835 c!1385565) b!7505155))

(assert (= (and d!2303835 (not c!1385565)) b!7505156))

(declare-fun m!8087420 () Bool)

(assert (=> d!2303835 m!8087420))

(assert (=> d!2303835 m!8087310))

(assert (=> d!2303835 m!8087314))

(declare-fun m!8087422 () Bool)

(assert (=> b!7505155 m!8087422))

(assert (=> b!7505155 m!8087422))

(declare-fun m!8087424 () Bool)

(assert (=> b!7505155 m!8087424))

(assert (=> b!7505071 d!2303835))

(declare-fun b!7505166 () Bool)

(declare-fun e!4474928 () List!72485)

(assert (=> b!7505166 (= e!4474928 (Cons!72361 (h!78809 Nil!72361) (++!17326 (t!387054 Nil!72361) totalInput!779)))))

(declare-fun b!7505168 () Bool)

(declare-fun e!4474927 () Bool)

(declare-fun lt!2634397 () List!72485)

(assert (=> b!7505168 (= e!4474927 (or (not (= totalInput!779 Nil!72361)) (= lt!2634397 Nil!72361)))))

(declare-fun b!7505167 () Bool)

(declare-fun res!3010955 () Bool)

(assert (=> b!7505167 (=> (not res!3010955) (not e!4474927))))

(assert (=> b!7505167 (= res!3010955 (= (size!42268 lt!2634397) (+ (size!42268 Nil!72361) (size!42268 totalInput!779))))))

(declare-fun b!7505165 () Bool)

(assert (=> b!7505165 (= e!4474928 totalInput!779)))

(declare-fun d!2303837 () Bool)

(assert (=> d!2303837 e!4474927))

(declare-fun res!3010956 () Bool)

(assert (=> d!2303837 (=> (not res!3010956) (not e!4474927))))

(declare-fun content!15297 (List!72485) (InoxSet C!39720))

(assert (=> d!2303837 (= res!3010956 (= (content!15297 lt!2634397) ((_ map or) (content!15297 Nil!72361) (content!15297 totalInput!779))))))

(assert (=> d!2303837 (= lt!2634397 e!4474928)))

(declare-fun c!1385568 () Bool)

(assert (=> d!2303837 (= c!1385568 ((_ is Nil!72361) Nil!72361))))

(assert (=> d!2303837 (= (++!17326 Nil!72361 totalInput!779) lt!2634397)))

(assert (= (and d!2303837 c!1385568) b!7505165))

(assert (= (and d!2303837 (not c!1385568)) b!7505166))

(assert (= (and d!2303837 res!3010956) b!7505167))

(assert (= (and b!7505167 res!3010955) b!7505168))

(declare-fun m!8087426 () Bool)

(assert (=> b!7505166 m!8087426))

(declare-fun m!8087428 () Bool)

(assert (=> b!7505167 m!8087428))

(assert (=> b!7505167 m!8087308))

(assert (=> b!7505167 m!8087310))

(declare-fun m!8087430 () Bool)

(assert (=> d!2303837 m!8087430))

(declare-fun m!8087432 () Bool)

(assert (=> d!2303837 m!8087432))

(declare-fun m!8087434 () Bool)

(assert (=> d!2303837 m!8087434))

(assert (=> b!7505066 d!2303837))

(declare-fun d!2303839 () Bool)

(declare-fun lt!2634400 () Int)

(assert (=> d!2303839 (>= lt!2634400 0)))

(declare-fun e!4474931 () Int)

(assert (=> d!2303839 (= lt!2634400 e!4474931)))

(declare-fun c!1385571 () Bool)

(assert (=> d!2303839 (= c!1385571 ((_ is Nil!72361) testedP!204))))

(assert (=> d!2303839 (= (size!42268 testedP!204) lt!2634400)))

(declare-fun b!7505173 () Bool)

(assert (=> b!7505173 (= e!4474931 0)))

(declare-fun b!7505174 () Bool)

(assert (=> b!7505174 (= e!4474931 (+ 1 (size!42268 (t!387054 testedP!204))))))

(assert (= (and d!2303839 c!1385571) b!7505173))

(assert (= (and d!2303839 (not c!1385571)) b!7505174))

(declare-fun m!8087436 () Bool)

(assert (=> b!7505174 m!8087436))

(assert (=> b!7505069 d!2303839))

(declare-fun b!7505176 () Bool)

(declare-fun e!4474933 () List!72485)

(assert (=> b!7505176 (= e!4474933 (Cons!72361 (h!78809 testedP!204) (++!17326 (t!387054 testedP!204) testedSuffix!164)))))

(declare-fun lt!2634401 () List!72485)

(declare-fun e!4474932 () Bool)

(declare-fun b!7505178 () Bool)

(assert (=> b!7505178 (= e!4474932 (or (not (= testedSuffix!164 Nil!72361)) (= lt!2634401 testedP!204)))))

(declare-fun b!7505177 () Bool)

(declare-fun res!3010957 () Bool)

(assert (=> b!7505177 (=> (not res!3010957) (not e!4474932))))

(assert (=> b!7505177 (= res!3010957 (= (size!42268 lt!2634401) (+ (size!42268 testedP!204) (size!42268 testedSuffix!164))))))

(declare-fun b!7505175 () Bool)

(assert (=> b!7505175 (= e!4474933 testedSuffix!164)))

(declare-fun d!2303841 () Bool)

(assert (=> d!2303841 e!4474932))

(declare-fun res!3010958 () Bool)

(assert (=> d!2303841 (=> (not res!3010958) (not e!4474932))))

(assert (=> d!2303841 (= res!3010958 (= (content!15297 lt!2634401) ((_ map or) (content!15297 testedP!204) (content!15297 testedSuffix!164))))))

(assert (=> d!2303841 (= lt!2634401 e!4474933)))

(declare-fun c!1385572 () Bool)

(assert (=> d!2303841 (= c!1385572 ((_ is Nil!72361) testedP!204))))

(assert (=> d!2303841 (= (++!17326 testedP!204 testedSuffix!164) lt!2634401)))

(assert (= (and d!2303841 c!1385572) b!7505175))

(assert (= (and d!2303841 (not c!1385572)) b!7505176))

(assert (= (and d!2303841 res!3010958) b!7505177))

(assert (= (and b!7505177 res!3010957) b!7505178))

(declare-fun m!8087438 () Bool)

(assert (=> b!7505176 m!8087438))

(declare-fun m!8087440 () Bool)

(assert (=> b!7505177 m!8087440))

(assert (=> b!7505177 m!8087314))

(declare-fun m!8087442 () Bool)

(assert (=> b!7505177 m!8087442))

(declare-fun m!8087444 () Bool)

(assert (=> d!2303841 m!8087444))

(declare-fun m!8087446 () Bool)

(assert (=> d!2303841 m!8087446))

(declare-fun m!8087448 () Bool)

(assert (=> d!2303841 m!8087448))

(assert (=> start!726414 d!2303841))

(declare-fun b!7505189 () Bool)

(declare-fun e!4474941 () Bool)

(assert (=> b!7505189 (= e!4474941 (isPrefix!5991 (tail!14987 testedP!204) (tail!14987 totalInput!779)))))

(declare-fun b!7505188 () Bool)

(declare-fun res!3010970 () Bool)

(assert (=> b!7505188 (=> (not res!3010970) (not e!4474941))))

(declare-fun head!15421 (List!72485) C!39720)

(assert (=> b!7505188 (= res!3010970 (= (head!15421 testedP!204) (head!15421 totalInput!779)))))

(declare-fun d!2303843 () Bool)

(declare-fun e!4474940 () Bool)

(assert (=> d!2303843 e!4474940))

(declare-fun res!3010969 () Bool)

(assert (=> d!2303843 (=> res!3010969 e!4474940)))

(declare-fun lt!2634404 () Bool)

(assert (=> d!2303843 (= res!3010969 (not lt!2634404))))

(declare-fun e!4474942 () Bool)

(assert (=> d!2303843 (= lt!2634404 e!4474942)))

(declare-fun res!3010968 () Bool)

(assert (=> d!2303843 (=> res!3010968 e!4474942)))

(assert (=> d!2303843 (= res!3010968 ((_ is Nil!72361) testedP!204))))

(assert (=> d!2303843 (= (isPrefix!5991 testedP!204 totalInput!779) lt!2634404)))

(declare-fun b!7505187 () Bool)

(assert (=> b!7505187 (= e!4474942 e!4474941)))

(declare-fun res!3010967 () Bool)

(assert (=> b!7505187 (=> (not res!3010967) (not e!4474941))))

(assert (=> b!7505187 (= res!3010967 (not ((_ is Nil!72361) totalInput!779)))))

(declare-fun b!7505190 () Bool)

(assert (=> b!7505190 (= e!4474940 (>= (size!42268 totalInput!779) (size!42268 testedP!204)))))

(assert (= (and d!2303843 (not res!3010968)) b!7505187))

(assert (= (and b!7505187 res!3010967) b!7505188))

(assert (= (and b!7505188 res!3010970) b!7505189))

(assert (= (and d!2303843 (not res!3010969)) b!7505190))

(declare-fun m!8087450 () Bool)

(assert (=> b!7505189 m!8087450))

(assert (=> b!7505189 m!8087422))

(assert (=> b!7505189 m!8087450))

(assert (=> b!7505189 m!8087422))

(declare-fun m!8087452 () Bool)

(assert (=> b!7505189 m!8087452))

(declare-fun m!8087454 () Bool)

(assert (=> b!7505188 m!8087454))

(declare-fun m!8087456 () Bool)

(assert (=> b!7505188 m!8087456))

(assert (=> b!7505190 m!8087310))

(assert (=> b!7505190 m!8087314))

(assert (=> b!7505068 d!2303843))

(declare-fun b!7505193 () Bool)

(declare-fun e!4474944 () Bool)

(assert (=> b!7505193 (= e!4474944 (isPrefix!5991 (tail!14987 testedP!204) (tail!14987 lt!2634316)))))

(declare-fun b!7505192 () Bool)

(declare-fun res!3010974 () Bool)

(assert (=> b!7505192 (=> (not res!3010974) (not e!4474944))))

(assert (=> b!7505192 (= res!3010974 (= (head!15421 testedP!204) (head!15421 lt!2634316)))))

(declare-fun d!2303845 () Bool)

(declare-fun e!4474943 () Bool)

(assert (=> d!2303845 e!4474943))

(declare-fun res!3010973 () Bool)

(assert (=> d!2303845 (=> res!3010973 e!4474943)))

(declare-fun lt!2634405 () Bool)

(assert (=> d!2303845 (= res!3010973 (not lt!2634405))))

(declare-fun e!4474945 () Bool)

(assert (=> d!2303845 (= lt!2634405 e!4474945)))

(declare-fun res!3010972 () Bool)

(assert (=> d!2303845 (=> res!3010972 e!4474945)))

(assert (=> d!2303845 (= res!3010972 ((_ is Nil!72361) testedP!204))))

(assert (=> d!2303845 (= (isPrefix!5991 testedP!204 lt!2634316) lt!2634405)))

(declare-fun b!7505191 () Bool)

(assert (=> b!7505191 (= e!4474945 e!4474944)))

(declare-fun res!3010971 () Bool)

(assert (=> b!7505191 (=> (not res!3010971) (not e!4474944))))

(assert (=> b!7505191 (= res!3010971 (not ((_ is Nil!72361) lt!2634316)))))

(declare-fun b!7505194 () Bool)

(assert (=> b!7505194 (= e!4474943 (>= (size!42268 lt!2634316) (size!42268 testedP!204)))))

(assert (= (and d!2303845 (not res!3010972)) b!7505191))

(assert (= (and b!7505191 res!3010971) b!7505192))

(assert (= (and b!7505192 res!3010974) b!7505193))

(assert (= (and d!2303845 (not res!3010973)) b!7505194))

(assert (=> b!7505193 m!8087450))

(declare-fun m!8087458 () Bool)

(assert (=> b!7505193 m!8087458))

(assert (=> b!7505193 m!8087450))

(assert (=> b!7505193 m!8087458))

(declare-fun m!8087460 () Bool)

(assert (=> b!7505193 m!8087460))

(assert (=> b!7505192 m!8087454))

(declare-fun m!8087462 () Bool)

(assert (=> b!7505192 m!8087462))

(declare-fun m!8087464 () Bool)

(assert (=> b!7505194 m!8087464))

(assert (=> b!7505194 m!8087314))

(assert (=> b!7505068 d!2303845))

(declare-fun d!2303847 () Bool)

(assert (=> d!2303847 (isPrefix!5991 testedP!204 (++!17326 testedP!204 testedSuffix!164))))

(declare-fun lt!2634408 () Unit!166344)

(declare-fun choose!58089 (List!72485 List!72485) Unit!166344)

(assert (=> d!2303847 (= lt!2634408 (choose!58089 testedP!204 testedSuffix!164))))

(assert (=> d!2303847 (= (lemmaConcatTwoListThenFirstIsPrefix!3704 testedP!204 testedSuffix!164) lt!2634408)))

(declare-fun bs!1938076 () Bool)

(assert (= bs!1938076 d!2303847))

(assert (=> bs!1938076 m!8087306))

(assert (=> bs!1938076 m!8087306))

(declare-fun m!8087466 () Bool)

(assert (=> bs!1938076 m!8087466))

(declare-fun m!8087468 () Bool)

(assert (=> bs!1938076 m!8087468))

(assert (=> b!7505068 d!2303847))

(declare-fun d!2303849 () Bool)

(declare-fun lt!2634409 () Int)

(assert (=> d!2303849 (>= lt!2634409 0)))

(declare-fun e!4474946 () Int)

(assert (=> d!2303849 (= lt!2634409 e!4474946)))

(declare-fun c!1385573 () Bool)

(assert (=> d!2303849 (= c!1385573 ((_ is Nil!72361) totalInput!779))))

(assert (=> d!2303849 (= (size!42268 totalInput!779) lt!2634409)))

(declare-fun b!7505195 () Bool)

(assert (=> b!7505195 (= e!4474946 0)))

(declare-fun b!7505196 () Bool)

(assert (=> b!7505196 (= e!4474946 (+ 1 (size!42268 (t!387054 totalInput!779))))))

(assert (= (and d!2303849 c!1385573) b!7505195))

(assert (= (and d!2303849 (not c!1385573)) b!7505196))

(declare-fun m!8087470 () Bool)

(assert (=> b!7505196 m!8087470))

(assert (=> b!7505063 d!2303849))

(declare-fun d!2303851 () Bool)

(declare-fun lambda!465265 () Int)

(declare-fun forall!18276 (List!72486 Int) Bool)

(assert (=> d!2303851 (= (inv!92472 setElem!56958) (forall!18276 (exprs!8949 setElem!56958) lambda!465265))))

(declare-fun bs!1938077 () Bool)

(assert (= bs!1938077 d!2303851))

(declare-fun m!8087472 () Bool)

(assert (=> bs!1938077 m!8087472))

(assert (=> setNonEmpty!56958 d!2303851))

(declare-fun d!2303853 () Bool)

(declare-fun lt!2634410 () Int)

(assert (=> d!2303853 (>= lt!2634410 0)))

(declare-fun e!4474947 () Int)

(assert (=> d!2303853 (= lt!2634410 e!4474947)))

(declare-fun c!1385574 () Bool)

(assert (=> d!2303853 (= c!1385574 ((_ is Nil!72361) Nil!72361))))

(assert (=> d!2303853 (= (size!42268 Nil!72361) lt!2634410)))

(declare-fun b!7505197 () Bool)

(assert (=> b!7505197 (= e!4474947 0)))

(declare-fun b!7505198 () Bool)

(assert (=> b!7505198 (= e!4474947 (+ 1 (size!42268 (t!387054 Nil!72361))))))

(assert (= (and d!2303853 c!1385574) b!7505197))

(assert (= (and d!2303853 (not c!1385574)) b!7505198))

(declare-fun m!8087474 () Bool)

(assert (=> b!7505198 m!8087474))

(assert (=> b!7505067 d!2303853))

(declare-fun b!7505203 () Bool)

(declare-fun e!4474950 () Bool)

(declare-fun tp!2178585 () Bool)

(assert (=> b!7505203 (= e!4474950 (and tp_is_empty!49735 tp!2178585))))

(assert (=> b!7505070 (= tp!2178565 e!4474950)))

(assert (= (and b!7505070 ((_ is Cons!72361) (t!387054 testedSuffix!164))) b!7505203))

(declare-fun b!7505204 () Bool)

(declare-fun e!4474951 () Bool)

(declare-fun tp!2178586 () Bool)

(assert (=> b!7505204 (= e!4474951 (and tp_is_empty!49735 tp!2178586))))

(assert (=> b!7505065 (= tp!2178561 e!4474951)))

(assert (= (and b!7505065 ((_ is Cons!72361) (t!387054 totalInput!779))) b!7505204))

(declare-fun b!7505209 () Bool)

(declare-fun e!4474954 () Bool)

(declare-fun tp!2178591 () Bool)

(declare-fun tp!2178592 () Bool)

(assert (=> b!7505209 (= e!4474954 (and tp!2178591 tp!2178592))))

(assert (=> b!7505064 (= tp!2178564 e!4474954)))

(assert (= (and b!7505064 ((_ is Cons!72362) (exprs!8949 setElem!56958))) b!7505209))

(declare-fun condSetEmpty!56964 () Bool)

(assert (=> setNonEmpty!56958 (= condSetEmpty!56964 (= setRest!56958 ((as const (Array Context!16898 Bool)) false)))))

(declare-fun setRes!56964 () Bool)

(assert (=> setNonEmpty!56958 (= tp!2178563 setRes!56964)))

(declare-fun setIsEmpty!56964 () Bool)

(assert (=> setIsEmpty!56964 setRes!56964))

(declare-fun tp!2178598 () Bool)

(declare-fun setElem!56964 () Context!16898)

(declare-fun setNonEmpty!56964 () Bool)

(declare-fun e!4474957 () Bool)

(assert (=> setNonEmpty!56964 (= setRes!56964 (and tp!2178598 (inv!92472 setElem!56964) e!4474957))))

(declare-fun setRest!56964 () (InoxSet Context!16898))

(assert (=> setNonEmpty!56964 (= setRest!56958 ((_ map or) (store ((as const (Array Context!16898 Bool)) false) setElem!56964 true) setRest!56964))))

(declare-fun b!7505214 () Bool)

(declare-fun tp!2178597 () Bool)

(assert (=> b!7505214 (= e!4474957 tp!2178597)))

(assert (= (and setNonEmpty!56958 condSetEmpty!56964) setIsEmpty!56964))

(assert (= (and setNonEmpty!56958 (not condSetEmpty!56964)) setNonEmpty!56964))

(assert (= setNonEmpty!56964 b!7505214))

(declare-fun m!8087476 () Bool)

(assert (=> setNonEmpty!56964 m!8087476))

(declare-fun b!7505215 () Bool)

(declare-fun e!4474958 () Bool)

(declare-fun tp!2178599 () Bool)

(assert (=> b!7505215 (= e!4474958 (and tp_is_empty!49735 tp!2178599))))

(assert (=> b!7505072 (= tp!2178562 e!4474958)))

(assert (= (and b!7505072 ((_ is Cons!72361) (t!387054 testedP!204))) b!7505215))

(check-sat (not b!7505174) (not d!2303851) (not b!7505196) tp_is_empty!49735 (not b!7505189) (not d!2303847) (not setNonEmpty!56964) (not b!7505192) (not b!7505209) (not b!7505150) (not b!7505155) (not b!7505203) (not d!2303841) (not d!2303835) (not d!2303833) (not d!2303837) (not b!7505149) (not b!7505215) (not b!7505167) (not b!7505176) (not b!7505193) (not b!7505214) (not b!7505194) (not b!7505177) (not b!7505198) (not b!7505188) (not bm!688674) (not b!7505190) (not b!7505204) (not b!7505166) (not bm!688675) (not d!2303807))
(check-sat)
