; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!519952 () Bool)

(assert start!519952)

(declare-fun res!2109019 () Bool)

(declare-fun e!3087875 () Bool)

(assert (=> start!519952 (=> (not res!2109019) (not e!3087875))))

(declare-datatypes ((C!27152 0))(
  ( (C!27153 (val!22910 Int)) )
))
(declare-datatypes ((List!57033 0))(
  ( (Nil!56909) (Cons!56909 (h!63357 C!27152) (t!367553 List!57033)) )
))
(declare-fun lt!2037208 () List!57033)

(declare-fun lt!2037216 () List!57033)

(assert (=> start!519952 (= res!2109019 (= lt!2037208 lt!2037216))))

(declare-datatypes ((IArray!30001 0))(
  ( (IArray!30002 (innerList!15058 List!57033)) )
))
(declare-datatypes ((Conc!14970 0))(
  ( (Node!14970 (left!41517 Conc!14970) (right!41847 Conc!14970) (csize!30170 Int) (cheight!15181 Int)) (Leaf!24888 (xs!18296 IArray!30001) (csize!30171 Int)) (Empty!14970) )
))
(declare-datatypes ((BalanceConc!29370 0))(
  ( (BalanceConc!29371 (c!843064 Conc!14970)) )
))
(declare-fun totalInput!685 () BalanceConc!29370)

(declare-fun list!18105 (BalanceConc!29370) List!57033)

(assert (=> start!519952 (= lt!2037216 (list!18105 totalInput!685))))

(declare-fun testedP!110 () List!57033)

(declare-fun testedSuffix!70 () List!57033)

(declare-fun ++!12434 (List!57033 List!57033) List!57033)

(assert (=> start!519952 (= lt!2037208 (++!12434 testedP!110 testedSuffix!70))))

(assert (=> start!519952 e!3087875))

(declare-fun e!3087879 () Bool)

(assert (=> start!519952 e!3087879))

(declare-fun condSetEmpty!27930 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13459 0))(
  ( (ElementMatch!13459 (c!843065 C!27152)) (Concat!22032 (regOne!27430 Regex!13459) (regTwo!27430 Regex!13459)) (EmptyExpr!13459) (Star!13459 (reg!13788 Regex!13459)) (EmptyLang!13459) (Union!13459 (regOne!27431 Regex!13459) (regTwo!27431 Regex!13459)) )
))
(declare-datatypes ((List!57034 0))(
  ( (Nil!56910) (Cons!56910 (h!63358 Regex!13459) (t!367554 List!57034)) )
))
(declare-datatypes ((Context!6202 0))(
  ( (Context!6203 (exprs!3601 List!57034)) )
))
(declare-fun z!3568 () (InoxSet Context!6202))

(assert (=> start!519952 (= condSetEmpty!27930 (= z!3568 ((as const (Array Context!6202 Bool)) false)))))

(declare-fun setRes!27930 () Bool)

(assert (=> start!519952 setRes!27930))

(assert (=> start!519952 true))

(declare-fun e!3087874 () Bool)

(declare-fun inv!74029 (BalanceConc!29370) Bool)

(assert (=> start!519952 (and (inv!74029 totalInput!685) e!3087874)))

(declare-fun e!3087877 () Bool)

(assert (=> start!519952 e!3087877))

(declare-fun b!4942228 () Bool)

(declare-fun tp_is_empty!36099 () Bool)

(declare-fun tp!1386500 () Bool)

(assert (=> b!4942228 (= e!3087877 (and tp_is_empty!36099 tp!1386500))))

(declare-fun b!4942229 () Bool)

(declare-fun res!2109022 () Bool)

(assert (=> b!4942229 (=> (not res!2109022) (not e!3087875))))

(declare-fun totalInputSize!132 () Int)

(declare-fun size!37723 (BalanceConc!29370) Int)

(assert (=> b!4942229 (= res!2109022 (= totalInputSize!132 (size!37723 totalInput!685)))))

(declare-fun b!4942230 () Bool)

(declare-fun e!3087876 () Bool)

(assert (=> b!4942230 (= e!3087875 (not e!3087876))))

(declare-fun res!2109018 () Bool)

(assert (=> b!4942230 (=> res!2109018 e!3087876)))

(declare-fun isPrefix!5059 (List!57033 List!57033) Bool)

(assert (=> b!4942230 (= res!2109018 (not (isPrefix!5059 testedP!110 lt!2037216)))))

(assert (=> b!4942230 (isPrefix!5059 testedP!110 lt!2037208)))

(declare-datatypes ((Unit!147661 0))(
  ( (Unit!147662) )
))
(declare-fun lt!2037211 () Unit!147661)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3283 (List!57033 List!57033) Unit!147661)

(assert (=> b!4942230 (= lt!2037211 (lemmaConcatTwoListThenFirstIsPrefix!3283 testedP!110 testedSuffix!70))))

(declare-fun b!4942231 () Bool)

(declare-fun e!3087880 () Bool)

(assert (=> b!4942231 (= e!3087876 e!3087880)))

(declare-fun res!2109016 () Bool)

(assert (=> b!4942231 (=> res!2109016 e!3087880)))

(declare-fun lostCauseZipper!777 ((InoxSet Context!6202)) Bool)

(assert (=> b!4942231 (= res!2109016 (lostCauseZipper!777 z!3568))))

(declare-fun lt!2037210 () List!57033)

(assert (=> b!4942231 (and (= testedSuffix!70 lt!2037210) (= lt!2037210 testedSuffix!70))))

(declare-fun lt!2037214 () Unit!147661)

(declare-fun lemmaSamePrefixThenSameSuffix!2455 (List!57033 List!57033 List!57033 List!57033 List!57033) Unit!147661)

(assert (=> b!4942231 (= lt!2037214 (lemmaSamePrefixThenSameSuffix!2455 testedP!110 testedSuffix!70 testedP!110 lt!2037210 lt!2037216))))

(declare-fun getSuffix!3041 (List!57033 List!57033) List!57033)

(assert (=> b!4942231 (= lt!2037210 (getSuffix!3041 lt!2037216 testedP!110))))

(declare-fun b!4942232 () Bool)

(declare-fun e!3087881 () Bool)

(declare-fun tp!1386501 () Bool)

(assert (=> b!4942232 (= e!3087881 tp!1386501)))

(declare-fun b!4942233 () Bool)

(declare-fun tp!1386499 () Bool)

(declare-fun inv!74030 (Conc!14970) Bool)

(assert (=> b!4942233 (= e!3087874 (and (inv!74030 (c!843064 totalInput!685)) tp!1386499))))

(declare-fun b!4942234 () Bool)

(declare-fun tp!1386502 () Bool)

(assert (=> b!4942234 (= e!3087879 (and tp_is_empty!36099 tp!1386502))))

(declare-fun tp!1386503 () Bool)

(declare-fun setNonEmpty!27930 () Bool)

(declare-fun setElem!27930 () Context!6202)

(declare-fun inv!74031 (Context!6202) Bool)

(assert (=> setNonEmpty!27930 (= setRes!27930 (and tp!1386503 (inv!74031 setElem!27930) e!3087881))))

(declare-fun setRest!27930 () (InoxSet Context!6202))

(assert (=> setNonEmpty!27930 (= z!3568 ((_ map or) (store ((as const (Array Context!6202 Bool)) false) setElem!27930 true) setRest!27930))))

(declare-fun setIsEmpty!27930 () Bool)

(assert (=> setIsEmpty!27930 setRes!27930))

(declare-fun b!4942235 () Bool)

(declare-fun e!3087878 () Bool)

(assert (=> b!4942235 (= e!3087880 e!3087878)))

(declare-fun res!2109017 () Bool)

(assert (=> b!4942235 (=> res!2109017 e!3087878)))

(declare-fun lt!2037217 () List!57033)

(declare-fun lt!2037209 () List!57033)

(assert (=> b!4942235 (= res!2109017 (not (= (++!12434 lt!2037209 lt!2037217) lt!2037216)))))

(declare-datatypes ((tuple2!61452 0))(
  ( (tuple2!61453 (_1!34029 BalanceConc!29370) (_2!34029 BalanceConc!29370)) )
))
(declare-fun lt!2037213 () tuple2!61452)

(assert (=> b!4942235 (= lt!2037217 (list!18105 (_2!34029 lt!2037213)))))

(assert (=> b!4942235 (= lt!2037209 (list!18105 (_1!34029 lt!2037213)))))

(declare-fun testedPSize!70 () Int)

(declare-fun splitAt!374 (BalanceConc!29370 Int) tuple2!61452)

(assert (=> b!4942235 (= lt!2037213 (splitAt!374 totalInput!685 testedPSize!70))))

(declare-fun b!4942236 () Bool)

(declare-fun res!2109020 () Bool)

(assert (=> b!4942236 (=> (not res!2109020) (not e!3087875))))

(declare-fun size!37724 (List!57033) Int)

(assert (=> b!4942236 (= res!2109020 (= testedPSize!70 (size!37724 testedP!110)))))

(declare-fun b!4942237 () Bool)

(declare-fun res!2109015 () Bool)

(assert (=> b!4942237 (=> res!2109015 e!3087880)))

(assert (=> b!4942237 (= res!2109015 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4942238 () Bool)

(declare-fun res!2109021 () Bool)

(assert (=> b!4942238 (=> res!2109021 e!3087878)))

(assert (=> b!4942238 (= res!2109021 (not (= (size!37723 (_1!34029 lt!2037213)) testedPSize!70)))))

(declare-fun b!4942239 () Bool)

(declare-fun apply!13793 (BalanceConc!29370 Int) C!27152)

(declare-fun head!10588 (List!57033) C!27152)

(assert (=> b!4942239 (= e!3087878 (= (apply!13793 totalInput!685 testedPSize!70) (head!10588 testedSuffix!70)))))

(declare-fun drop!2282 (List!57033 Int) List!57033)

(declare-fun apply!13794 (List!57033 Int) C!27152)

(assert (=> b!4942239 (= (head!10588 (drop!2282 lt!2037216 testedPSize!70)) (apply!13794 lt!2037216 testedPSize!70))))

(declare-fun lt!2037212 () Unit!147661)

(declare-fun lemmaDropApply!1336 (List!57033 Int) Unit!147661)

(assert (=> b!4942239 (= lt!2037212 (lemmaDropApply!1336 lt!2037216 testedPSize!70))))

(assert (=> b!4942239 (not (or (not (= lt!2037209 testedP!110)) (not (= lt!2037217 testedSuffix!70))))))

(declare-fun lt!2037215 () Unit!147661)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!717 (List!57033 List!57033 List!57033 List!57033) Unit!147661)

(assert (=> b!4942239 (= lt!2037215 (lemmaConcatSameAndSameSizesThenSameLists!717 lt!2037209 lt!2037217 testedP!110 testedSuffix!70))))

(assert (= (and start!519952 res!2109019) b!4942236))

(assert (= (and b!4942236 res!2109020) b!4942229))

(assert (= (and b!4942229 res!2109022) b!4942230))

(assert (= (and b!4942230 (not res!2109018)) b!4942231))

(assert (= (and b!4942231 (not res!2109016)) b!4942237))

(assert (= (and b!4942237 (not res!2109015)) b!4942235))

(assert (= (and b!4942235 (not res!2109017)) b!4942238))

(assert (= (and b!4942238 (not res!2109021)) b!4942239))

(get-info :version)

(assert (= (and start!519952 ((_ is Cons!56909) testedP!110)) b!4942234))

(assert (= (and start!519952 condSetEmpty!27930) setIsEmpty!27930))

(assert (= (and start!519952 (not condSetEmpty!27930)) setNonEmpty!27930))

(assert (= setNonEmpty!27930 b!4942232))

(assert (= start!519952 b!4942233))

(assert (= (and start!519952 ((_ is Cons!56909) testedSuffix!70)) b!4942228))

(declare-fun m!5965214 () Bool)

(assert (=> setNonEmpty!27930 m!5965214))

(declare-fun m!5965216 () Bool)

(assert (=> b!4942238 m!5965216))

(declare-fun m!5965218 () Bool)

(assert (=> b!4942230 m!5965218))

(declare-fun m!5965220 () Bool)

(assert (=> b!4942230 m!5965220))

(declare-fun m!5965222 () Bool)

(assert (=> b!4942230 m!5965222))

(declare-fun m!5965224 () Bool)

(assert (=> start!519952 m!5965224))

(declare-fun m!5965226 () Bool)

(assert (=> start!519952 m!5965226))

(declare-fun m!5965228 () Bool)

(assert (=> start!519952 m!5965228))

(declare-fun m!5965230 () Bool)

(assert (=> b!4942233 m!5965230))

(declare-fun m!5965232 () Bool)

(assert (=> b!4942229 m!5965232))

(declare-fun m!5965234 () Bool)

(assert (=> b!4942239 m!5965234))

(declare-fun m!5965236 () Bool)

(assert (=> b!4942239 m!5965236))

(declare-fun m!5965238 () Bool)

(assert (=> b!4942239 m!5965238))

(assert (=> b!4942239 m!5965234))

(declare-fun m!5965240 () Bool)

(assert (=> b!4942239 m!5965240))

(declare-fun m!5965242 () Bool)

(assert (=> b!4942239 m!5965242))

(declare-fun m!5965244 () Bool)

(assert (=> b!4942239 m!5965244))

(declare-fun m!5965246 () Bool)

(assert (=> b!4942239 m!5965246))

(declare-fun m!5965248 () Bool)

(assert (=> b!4942231 m!5965248))

(declare-fun m!5965250 () Bool)

(assert (=> b!4942231 m!5965250))

(declare-fun m!5965252 () Bool)

(assert (=> b!4942231 m!5965252))

(declare-fun m!5965254 () Bool)

(assert (=> b!4942236 m!5965254))

(declare-fun m!5965256 () Bool)

(assert (=> b!4942235 m!5965256))

(declare-fun m!5965258 () Bool)

(assert (=> b!4942235 m!5965258))

(declare-fun m!5965260 () Bool)

(assert (=> b!4942235 m!5965260))

(declare-fun m!5965262 () Bool)

(assert (=> b!4942235 m!5965262))

(check-sat (not b!4942233) (not b!4942231) (not b!4942229) (not start!519952) (not b!4942236) (not b!4942235) (not b!4942239) (not b!4942238) (not b!4942228) (not b!4942234) (not b!4942230) (not setNonEmpty!27930) tp_is_empty!36099 (not b!4942232))
(check-sat)
(get-model)

(declare-fun d!1591354 () Bool)

(declare-fun list!18106 (Conc!14970) List!57033)

(assert (=> d!1591354 (= (list!18105 totalInput!685) (list!18106 (c!843064 totalInput!685)))))

(declare-fun bs!1181375 () Bool)

(assert (= bs!1181375 d!1591354))

(declare-fun m!5965264 () Bool)

(assert (=> bs!1181375 m!5965264))

(assert (=> start!519952 d!1591354))

(declare-fun b!4942250 () Bool)

(declare-fun res!2109028 () Bool)

(declare-fun e!3087886 () Bool)

(assert (=> b!4942250 (=> (not res!2109028) (not e!3087886))))

(declare-fun lt!2037220 () List!57033)

(assert (=> b!4942250 (= res!2109028 (= (size!37724 lt!2037220) (+ (size!37724 testedP!110) (size!37724 testedSuffix!70))))))

(declare-fun d!1591356 () Bool)

(assert (=> d!1591356 e!3087886))

(declare-fun res!2109027 () Bool)

(assert (=> d!1591356 (=> (not res!2109027) (not e!3087886))))

(declare-fun content!10125 (List!57033) (InoxSet C!27152))

(assert (=> d!1591356 (= res!2109027 (= (content!10125 lt!2037220) ((_ map or) (content!10125 testedP!110) (content!10125 testedSuffix!70))))))

(declare-fun e!3087887 () List!57033)

(assert (=> d!1591356 (= lt!2037220 e!3087887)))

(declare-fun c!843068 () Bool)

(assert (=> d!1591356 (= c!843068 ((_ is Nil!56909) testedP!110))))

(assert (=> d!1591356 (= (++!12434 testedP!110 testedSuffix!70) lt!2037220)))

(declare-fun b!4942251 () Bool)

(assert (=> b!4942251 (= e!3087886 (or (not (= testedSuffix!70 Nil!56909)) (= lt!2037220 testedP!110)))))

(declare-fun b!4942249 () Bool)

(assert (=> b!4942249 (= e!3087887 (Cons!56909 (h!63357 testedP!110) (++!12434 (t!367553 testedP!110) testedSuffix!70)))))

(declare-fun b!4942248 () Bool)

(assert (=> b!4942248 (= e!3087887 testedSuffix!70)))

(assert (= (and d!1591356 c!843068) b!4942248))

(assert (= (and d!1591356 (not c!843068)) b!4942249))

(assert (= (and d!1591356 res!2109027) b!4942250))

(assert (= (and b!4942250 res!2109028) b!4942251))

(declare-fun m!5965266 () Bool)

(assert (=> b!4942250 m!5965266))

(assert (=> b!4942250 m!5965254))

(declare-fun m!5965268 () Bool)

(assert (=> b!4942250 m!5965268))

(declare-fun m!5965270 () Bool)

(assert (=> d!1591356 m!5965270))

(declare-fun m!5965272 () Bool)

(assert (=> d!1591356 m!5965272))

(declare-fun m!5965274 () Bool)

(assert (=> d!1591356 m!5965274))

(declare-fun m!5965276 () Bool)

(assert (=> b!4942249 m!5965276))

(assert (=> start!519952 d!1591356))

(declare-fun d!1591360 () Bool)

(declare-fun isBalanced!4131 (Conc!14970) Bool)

(assert (=> d!1591360 (= (inv!74029 totalInput!685) (isBalanced!4131 (c!843064 totalInput!685)))))

(declare-fun bs!1181376 () Bool)

(assert (= bs!1181376 d!1591360))

(declare-fun m!5965278 () Bool)

(assert (=> bs!1181376 m!5965278))

(assert (=> start!519952 d!1591360))

(declare-fun bs!1181377 () Bool)

(declare-fun b!4942260 () Bool)

(declare-fun d!1591362 () Bool)

(assert (= bs!1181377 (and b!4942260 d!1591362)))

(declare-fun lambda!246286 () Int)

(declare-fun lambda!246285 () Int)

(assert (=> bs!1181377 (not (= lambda!246286 lambda!246285))))

(declare-fun bs!1181378 () Bool)

(declare-fun b!4942261 () Bool)

(assert (= bs!1181378 (and b!4942261 d!1591362)))

(declare-fun lambda!246287 () Int)

(assert (=> bs!1181378 (not (= lambda!246287 lambda!246285))))

(declare-fun bs!1181379 () Bool)

(assert (= bs!1181379 (and b!4942261 b!4942260)))

(assert (=> bs!1181379 (= lambda!246287 lambda!246286)))

(declare-fun lt!2037245 () Bool)

(declare-datatypes ((Option!14199 0))(
  ( (None!14198) (Some!14198 (v!50172 List!57033)) )
))
(declare-fun isEmpty!30634 (Option!14199) Bool)

(declare-fun getLanguageWitness!666 ((InoxSet Context!6202)) Option!14199)

(assert (=> d!1591362 (= lt!2037245 (isEmpty!30634 (getLanguageWitness!666 z!3568)))))

(declare-fun forall!13225 ((InoxSet Context!6202) Int) Bool)

(assert (=> d!1591362 (= lt!2037245 (forall!13225 z!3568 lambda!246285))))

(declare-fun lt!2037247 () Unit!147661)

(declare-fun e!3087896 () Unit!147661)

(assert (=> d!1591362 (= lt!2037247 e!3087896)))

(declare-fun c!843083 () Bool)

(assert (=> d!1591362 (= c!843083 (not (forall!13225 z!3568 lambda!246285)))))

(assert (=> d!1591362 (= (lostCauseZipper!777 z!3568) lt!2037245)))

(declare-fun Unit!147663 () Unit!147661)

(assert (=> b!4942260 (= e!3087896 Unit!147663)))

(declare-datatypes ((List!57035 0))(
  ( (Nil!56911) (Cons!56911 (h!63359 Context!6202) (t!367555 List!57035)) )
))
(declare-fun lt!2037241 () List!57035)

(declare-fun call!344898 () List!57035)

(assert (=> b!4942260 (= lt!2037241 call!344898)))

(declare-fun lt!2037244 () Unit!147661)

(declare-fun lemmaNotForallThenExists!219 (List!57035 Int) Unit!147661)

(assert (=> b!4942260 (= lt!2037244 (lemmaNotForallThenExists!219 lt!2037241 lambda!246285))))

(declare-fun call!344897 () Bool)

(assert (=> b!4942260 call!344897))

(declare-fun lt!2037246 () Unit!147661)

(assert (=> b!4942260 (= lt!2037246 lt!2037244)))

(declare-fun Unit!147664 () Unit!147661)

(assert (=> b!4942261 (= e!3087896 Unit!147664)))

(declare-fun lt!2037248 () List!57035)

(assert (=> b!4942261 (= lt!2037248 call!344898)))

(declare-fun lt!2037243 () Unit!147661)

(declare-fun lemmaForallThenNotExists!202 (List!57035 Int) Unit!147661)

(assert (=> b!4942261 (= lt!2037243 (lemmaForallThenNotExists!202 lt!2037248 lambda!246285))))

(assert (=> b!4942261 (not call!344897)))

(declare-fun lt!2037242 () Unit!147661)

(assert (=> b!4942261 (= lt!2037242 lt!2037243)))

(declare-fun bm!344893 () Bool)

(declare-fun toList!7981 ((InoxSet Context!6202)) List!57035)

(assert (=> bm!344893 (= call!344898 (toList!7981 z!3568))))

(declare-fun bm!344892 () Bool)

(declare-fun exists!1311 (List!57035 Int) Bool)

(assert (=> bm!344892 (= call!344897 (exists!1311 (ite c!843083 lt!2037241 lt!2037248) (ite c!843083 lambda!246286 lambda!246287)))))

(assert (= (and d!1591362 c!843083) b!4942260))

(assert (= (and d!1591362 (not c!843083)) b!4942261))

(assert (= (or b!4942260 b!4942261) bm!344892))

(assert (= (or b!4942260 b!4942261) bm!344893))

(declare-fun m!5965280 () Bool)

(assert (=> bm!344892 m!5965280))

(declare-fun m!5965282 () Bool)

(assert (=> b!4942260 m!5965282))

(declare-fun m!5965284 () Bool)

(assert (=> b!4942261 m!5965284))

(declare-fun m!5965286 () Bool)

(assert (=> d!1591362 m!5965286))

(assert (=> d!1591362 m!5965286))

(declare-fun m!5965288 () Bool)

(assert (=> d!1591362 m!5965288))

(declare-fun m!5965290 () Bool)

(assert (=> d!1591362 m!5965290))

(assert (=> d!1591362 m!5965290))

(declare-fun m!5965292 () Bool)

(assert (=> bm!344893 m!5965292))

(assert (=> b!4942231 d!1591362))

(declare-fun d!1591364 () Bool)

(assert (=> d!1591364 (= testedSuffix!70 lt!2037210)))

(declare-fun lt!2037251 () Unit!147661)

(declare-fun choose!36393 (List!57033 List!57033 List!57033 List!57033 List!57033) Unit!147661)

(assert (=> d!1591364 (= lt!2037251 (choose!36393 testedP!110 testedSuffix!70 testedP!110 lt!2037210 lt!2037216))))

(assert (=> d!1591364 (isPrefix!5059 testedP!110 lt!2037216)))

(assert (=> d!1591364 (= (lemmaSamePrefixThenSameSuffix!2455 testedP!110 testedSuffix!70 testedP!110 lt!2037210 lt!2037216) lt!2037251)))

(declare-fun bs!1181380 () Bool)

(assert (= bs!1181380 d!1591364))

(declare-fun m!5965294 () Bool)

(assert (=> bs!1181380 m!5965294))

(assert (=> bs!1181380 m!5965218))

(assert (=> b!4942231 d!1591364))

(declare-fun d!1591366 () Bool)

(declare-fun lt!2037254 () List!57033)

(assert (=> d!1591366 (= (++!12434 testedP!110 lt!2037254) lt!2037216)))

(declare-fun e!3087899 () List!57033)

(assert (=> d!1591366 (= lt!2037254 e!3087899)))

(declare-fun c!843086 () Bool)

(assert (=> d!1591366 (= c!843086 ((_ is Cons!56909) testedP!110))))

(assert (=> d!1591366 (>= (size!37724 lt!2037216) (size!37724 testedP!110))))

(assert (=> d!1591366 (= (getSuffix!3041 lt!2037216 testedP!110) lt!2037254)))

(declare-fun b!4942266 () Bool)

(declare-fun tail!9726 (List!57033) List!57033)

(assert (=> b!4942266 (= e!3087899 (getSuffix!3041 (tail!9726 lt!2037216) (t!367553 testedP!110)))))

(declare-fun b!4942267 () Bool)

(assert (=> b!4942267 (= e!3087899 lt!2037216)))

(assert (= (and d!1591366 c!843086) b!4942266))

(assert (= (and d!1591366 (not c!843086)) b!4942267))

(declare-fun m!5965296 () Bool)

(assert (=> d!1591366 m!5965296))

(declare-fun m!5965298 () Bool)

(assert (=> d!1591366 m!5965298))

(assert (=> d!1591366 m!5965254))

(declare-fun m!5965300 () Bool)

(assert (=> b!4942266 m!5965300))

(assert (=> b!4942266 m!5965300))

(declare-fun m!5965302 () Bool)

(assert (=> b!4942266 m!5965302))

(assert (=> b!4942231 d!1591366))

(declare-fun b!4942279 () Bool)

(declare-fun e!3087908 () Bool)

(assert (=> b!4942279 (= e!3087908 (>= (size!37724 lt!2037216) (size!37724 testedP!110)))))

(declare-fun d!1591368 () Bool)

(assert (=> d!1591368 e!3087908))

(declare-fun res!2109039 () Bool)

(assert (=> d!1591368 (=> res!2109039 e!3087908)))

(declare-fun lt!2037257 () Bool)

(assert (=> d!1591368 (= res!2109039 (not lt!2037257))))

(declare-fun e!3087906 () Bool)

(assert (=> d!1591368 (= lt!2037257 e!3087906)))

(declare-fun res!2109037 () Bool)

(assert (=> d!1591368 (=> res!2109037 e!3087906)))

(assert (=> d!1591368 (= res!2109037 ((_ is Nil!56909) testedP!110))))

(assert (=> d!1591368 (= (isPrefix!5059 testedP!110 lt!2037216) lt!2037257)))

(declare-fun b!4942276 () Bool)

(declare-fun e!3087907 () Bool)

(assert (=> b!4942276 (= e!3087906 e!3087907)))

(declare-fun res!2109038 () Bool)

(assert (=> b!4942276 (=> (not res!2109038) (not e!3087907))))

(assert (=> b!4942276 (= res!2109038 (not ((_ is Nil!56909) lt!2037216)))))

(declare-fun b!4942278 () Bool)

(assert (=> b!4942278 (= e!3087907 (isPrefix!5059 (tail!9726 testedP!110) (tail!9726 lt!2037216)))))

(declare-fun b!4942277 () Bool)

(declare-fun res!2109040 () Bool)

(assert (=> b!4942277 (=> (not res!2109040) (not e!3087907))))

(assert (=> b!4942277 (= res!2109040 (= (head!10588 testedP!110) (head!10588 lt!2037216)))))

(assert (= (and d!1591368 (not res!2109037)) b!4942276))

(assert (= (and b!4942276 res!2109038) b!4942277))

(assert (= (and b!4942277 res!2109040) b!4942278))

(assert (= (and d!1591368 (not res!2109039)) b!4942279))

(assert (=> b!4942279 m!5965298))

(assert (=> b!4942279 m!5965254))

(declare-fun m!5965304 () Bool)

(assert (=> b!4942278 m!5965304))

(assert (=> b!4942278 m!5965300))

(assert (=> b!4942278 m!5965304))

(assert (=> b!4942278 m!5965300))

(declare-fun m!5965306 () Bool)

(assert (=> b!4942278 m!5965306))

(declare-fun m!5965308 () Bool)

(assert (=> b!4942277 m!5965308))

(declare-fun m!5965310 () Bool)

(assert (=> b!4942277 m!5965310))

(assert (=> b!4942230 d!1591368))

(declare-fun b!4942283 () Bool)

(declare-fun e!3087911 () Bool)

(assert (=> b!4942283 (= e!3087911 (>= (size!37724 lt!2037208) (size!37724 testedP!110)))))

(declare-fun d!1591370 () Bool)

(assert (=> d!1591370 e!3087911))

(declare-fun res!2109043 () Bool)

(assert (=> d!1591370 (=> res!2109043 e!3087911)))

(declare-fun lt!2037258 () Bool)

(assert (=> d!1591370 (= res!2109043 (not lt!2037258))))

(declare-fun e!3087909 () Bool)

(assert (=> d!1591370 (= lt!2037258 e!3087909)))

(declare-fun res!2109041 () Bool)

(assert (=> d!1591370 (=> res!2109041 e!3087909)))

(assert (=> d!1591370 (= res!2109041 ((_ is Nil!56909) testedP!110))))

(assert (=> d!1591370 (= (isPrefix!5059 testedP!110 lt!2037208) lt!2037258)))

(declare-fun b!4942280 () Bool)

(declare-fun e!3087910 () Bool)

(assert (=> b!4942280 (= e!3087909 e!3087910)))

(declare-fun res!2109042 () Bool)

(assert (=> b!4942280 (=> (not res!2109042) (not e!3087910))))

(assert (=> b!4942280 (= res!2109042 (not ((_ is Nil!56909) lt!2037208)))))

(declare-fun b!4942282 () Bool)

(assert (=> b!4942282 (= e!3087910 (isPrefix!5059 (tail!9726 testedP!110) (tail!9726 lt!2037208)))))

(declare-fun b!4942281 () Bool)

(declare-fun res!2109044 () Bool)

(assert (=> b!4942281 (=> (not res!2109044) (not e!3087910))))

(assert (=> b!4942281 (= res!2109044 (= (head!10588 testedP!110) (head!10588 lt!2037208)))))

(assert (= (and d!1591370 (not res!2109041)) b!4942280))

(assert (= (and b!4942280 res!2109042) b!4942281))

(assert (= (and b!4942281 res!2109044) b!4942282))

(assert (= (and d!1591370 (not res!2109043)) b!4942283))

(declare-fun m!5965312 () Bool)

(assert (=> b!4942283 m!5965312))

(assert (=> b!4942283 m!5965254))

(assert (=> b!4942282 m!5965304))

(declare-fun m!5965314 () Bool)

(assert (=> b!4942282 m!5965314))

(assert (=> b!4942282 m!5965304))

(assert (=> b!4942282 m!5965314))

(declare-fun m!5965316 () Bool)

(assert (=> b!4942282 m!5965316))

(assert (=> b!4942281 m!5965308))

(declare-fun m!5965318 () Bool)

(assert (=> b!4942281 m!5965318))

(assert (=> b!4942230 d!1591370))

(declare-fun d!1591372 () Bool)

(assert (=> d!1591372 (isPrefix!5059 testedP!110 (++!12434 testedP!110 testedSuffix!70))))

(declare-fun lt!2037261 () Unit!147661)

(declare-fun choose!36394 (List!57033 List!57033) Unit!147661)

(assert (=> d!1591372 (= lt!2037261 (choose!36394 testedP!110 testedSuffix!70))))

(assert (=> d!1591372 (= (lemmaConcatTwoListThenFirstIsPrefix!3283 testedP!110 testedSuffix!70) lt!2037261)))

(declare-fun bs!1181381 () Bool)

(assert (= bs!1181381 d!1591372))

(assert (=> bs!1181381 m!5965226))

(assert (=> bs!1181381 m!5965226))

(declare-fun m!5965320 () Bool)

(assert (=> bs!1181381 m!5965320))

(declare-fun m!5965322 () Bool)

(assert (=> bs!1181381 m!5965322))

(assert (=> b!4942230 d!1591372))

(declare-fun d!1591374 () Bool)

(assert (=> d!1591374 (= (head!10588 testedSuffix!70) (h!63357 testedSuffix!70))))

(assert (=> b!4942239 d!1591374))

(declare-fun d!1591376 () Bool)

(assert (=> d!1591376 (= (head!10588 (drop!2282 lt!2037216 testedPSize!70)) (h!63357 (drop!2282 lt!2037216 testedPSize!70)))))

(assert (=> b!4942239 d!1591376))

(declare-fun d!1591378 () Bool)

(declare-fun lt!2037264 () C!27152)

(declare-fun contains!19485 (List!57033 C!27152) Bool)

(assert (=> d!1591378 (contains!19485 lt!2037216 lt!2037264)))

(declare-fun e!3087917 () C!27152)

(assert (=> d!1591378 (= lt!2037264 e!3087917)))

(declare-fun c!843089 () Bool)

(assert (=> d!1591378 (= c!843089 (= testedPSize!70 0))))

(declare-fun e!3087916 () Bool)

(assert (=> d!1591378 e!3087916))

(declare-fun res!2109047 () Bool)

(assert (=> d!1591378 (=> (not res!2109047) (not e!3087916))))

(assert (=> d!1591378 (= res!2109047 (<= 0 testedPSize!70))))

(assert (=> d!1591378 (= (apply!13794 lt!2037216 testedPSize!70) lt!2037264)))

(declare-fun b!4942290 () Bool)

(assert (=> b!4942290 (= e!3087916 (< testedPSize!70 (size!37724 lt!2037216)))))

(declare-fun b!4942291 () Bool)

(assert (=> b!4942291 (= e!3087917 (head!10588 lt!2037216))))

(declare-fun b!4942292 () Bool)

(assert (=> b!4942292 (= e!3087917 (apply!13794 (tail!9726 lt!2037216) (- testedPSize!70 1)))))

(assert (= (and d!1591378 res!2109047) b!4942290))

(assert (= (and d!1591378 c!843089) b!4942291))

(assert (= (and d!1591378 (not c!843089)) b!4942292))

(declare-fun m!5965324 () Bool)

(assert (=> d!1591378 m!5965324))

(assert (=> b!4942290 m!5965298))

(assert (=> b!4942291 m!5965310))

(assert (=> b!4942292 m!5965300))

(assert (=> b!4942292 m!5965300))

(declare-fun m!5965326 () Bool)

(assert (=> b!4942292 m!5965326))

(assert (=> b!4942239 d!1591378))

(declare-fun d!1591380 () Bool)

(assert (=> d!1591380 (and (= lt!2037209 testedP!110) (= lt!2037217 testedSuffix!70))))

(declare-fun lt!2037267 () Unit!147661)

(declare-fun choose!36395 (List!57033 List!57033 List!57033 List!57033) Unit!147661)

(assert (=> d!1591380 (= lt!2037267 (choose!36395 lt!2037209 lt!2037217 testedP!110 testedSuffix!70))))

(assert (=> d!1591380 (= (++!12434 lt!2037209 lt!2037217) (++!12434 testedP!110 testedSuffix!70))))

(assert (=> d!1591380 (= (lemmaConcatSameAndSameSizesThenSameLists!717 lt!2037209 lt!2037217 testedP!110 testedSuffix!70) lt!2037267)))

(declare-fun bs!1181382 () Bool)

(assert (= bs!1181382 d!1591380))

(declare-fun m!5965328 () Bool)

(assert (=> bs!1181382 m!5965328))

(assert (=> bs!1181382 m!5965256))

(assert (=> bs!1181382 m!5965226))

(assert (=> b!4942239 d!1591380))

(declare-fun d!1591382 () Bool)

(declare-fun lt!2037276 () C!27152)

(assert (=> d!1591382 (= lt!2037276 (apply!13794 (list!18105 totalInput!685) testedPSize!70))))

(declare-fun apply!13795 (Conc!14970 Int) C!27152)

(assert (=> d!1591382 (= lt!2037276 (apply!13795 (c!843064 totalInput!685) testedPSize!70))))

(declare-fun e!3087922 () Bool)

(assert (=> d!1591382 e!3087922))

(declare-fun res!2109050 () Bool)

(assert (=> d!1591382 (=> (not res!2109050) (not e!3087922))))

(assert (=> d!1591382 (= res!2109050 (<= 0 testedPSize!70))))

(assert (=> d!1591382 (= (apply!13793 totalInput!685 testedPSize!70) lt!2037276)))

(declare-fun b!4942295 () Bool)

(assert (=> b!4942295 (= e!3087922 (< testedPSize!70 (size!37723 totalInput!685)))))

(assert (= (and d!1591382 res!2109050) b!4942295))

(assert (=> d!1591382 m!5965224))

(assert (=> d!1591382 m!5965224))

(declare-fun m!5965330 () Bool)

(assert (=> d!1591382 m!5965330))

(declare-fun m!5965332 () Bool)

(assert (=> d!1591382 m!5965332))

(assert (=> b!4942295 m!5965232))

(assert (=> b!4942239 d!1591382))

(declare-fun bm!344902 () Bool)

(declare-fun call!344907 () Int)

(assert (=> bm!344902 (= call!344907 (size!37724 lt!2037216))))

(declare-fun b!4942316 () Bool)

(declare-fun e!3087936 () List!57033)

(assert (=> b!4942316 (= e!3087936 lt!2037216)))

(declare-fun b!4942317 () Bool)

(declare-fun e!3087940 () List!57033)

(assert (=> b!4942317 (= e!3087940 Nil!56909)))

(declare-fun b!4942318 () Bool)

(assert (=> b!4942318 (= e!3087940 e!3087936)))

(declare-fun c!843108 () Bool)

(assert (=> b!4942318 (= c!843108 (<= testedPSize!70 0))))

(declare-fun d!1591384 () Bool)

(declare-fun e!3087939 () Bool)

(assert (=> d!1591384 e!3087939))

(declare-fun res!2109053 () Bool)

(assert (=> d!1591384 (=> (not res!2109053) (not e!3087939))))

(declare-fun lt!2037293 () List!57033)

(assert (=> d!1591384 (= res!2109053 (= ((_ map implies) (content!10125 lt!2037293) (content!10125 lt!2037216)) ((as const (InoxSet C!27152)) true)))))

(assert (=> d!1591384 (= lt!2037293 e!3087940)))

(declare-fun c!843106 () Bool)

(assert (=> d!1591384 (= c!843106 ((_ is Nil!56909) lt!2037216))))

(assert (=> d!1591384 (= (drop!2282 lt!2037216 testedPSize!70) lt!2037293)))

(declare-fun b!4942319 () Bool)

(declare-fun e!3087938 () Int)

(assert (=> b!4942319 (= e!3087938 (- call!344907 testedPSize!70))))

(declare-fun b!4942320 () Bool)

(declare-fun e!3087937 () Int)

(assert (=> b!4942320 (= e!3087937 e!3087938)))

(declare-fun c!843105 () Bool)

(assert (=> b!4942320 (= c!843105 (>= testedPSize!70 call!344907))))

(declare-fun b!4942321 () Bool)

(assert (=> b!4942321 (= e!3087937 call!344907)))

(declare-fun b!4942322 () Bool)

(assert (=> b!4942322 (= e!3087936 (drop!2282 (t!367553 lt!2037216) (- testedPSize!70 1)))))

(declare-fun b!4942323 () Bool)

(assert (=> b!4942323 (= e!3087938 0)))

(declare-fun b!4942324 () Bool)

(assert (=> b!4942324 (= e!3087939 (= (size!37724 lt!2037293) e!3087937))))

(declare-fun c!843107 () Bool)

(assert (=> b!4942324 (= c!843107 (<= testedPSize!70 0))))

(assert (= (and d!1591384 c!843106) b!4942317))

(assert (= (and d!1591384 (not c!843106)) b!4942318))

(assert (= (and b!4942318 c!843108) b!4942316))

(assert (= (and b!4942318 (not c!843108)) b!4942322))

(assert (= (and d!1591384 res!2109053) b!4942324))

(assert (= (and b!4942324 c!843107) b!4942321))

(assert (= (and b!4942324 (not c!843107)) b!4942320))

(assert (= (and b!4942320 c!843105) b!4942323))

(assert (= (and b!4942320 (not c!843105)) b!4942319))

(assert (= (or b!4942321 b!4942320 b!4942319) bm!344902))

(assert (=> bm!344902 m!5965298))

(declare-fun m!5965348 () Bool)

(assert (=> d!1591384 m!5965348))

(declare-fun m!5965350 () Bool)

(assert (=> d!1591384 m!5965350))

(declare-fun m!5965352 () Bool)

(assert (=> b!4942322 m!5965352))

(declare-fun m!5965354 () Bool)

(assert (=> b!4942324 m!5965354))

(assert (=> b!4942239 d!1591384))

(declare-fun d!1591388 () Bool)

(assert (=> d!1591388 (= (head!10588 (drop!2282 lt!2037216 testedPSize!70)) (apply!13794 lt!2037216 testedPSize!70))))

(declare-fun lt!2037299 () Unit!147661)

(declare-fun choose!36396 (List!57033 Int) Unit!147661)

(assert (=> d!1591388 (= lt!2037299 (choose!36396 lt!2037216 testedPSize!70))))

(declare-fun e!3087943 () Bool)

(assert (=> d!1591388 e!3087943))

(declare-fun res!2109056 () Bool)

(assert (=> d!1591388 (=> (not res!2109056) (not e!3087943))))

(assert (=> d!1591388 (= res!2109056 (>= testedPSize!70 0))))

(assert (=> d!1591388 (= (lemmaDropApply!1336 lt!2037216 testedPSize!70) lt!2037299)))

(declare-fun b!4942327 () Bool)

(assert (=> b!4942327 (= e!3087943 (< testedPSize!70 (size!37724 lt!2037216)))))

(assert (= (and d!1591388 res!2109056) b!4942327))

(assert (=> d!1591388 m!5965234))

(assert (=> d!1591388 m!5965234))

(assert (=> d!1591388 m!5965240))

(assert (=> d!1591388 m!5965244))

(declare-fun m!5965358 () Bool)

(assert (=> d!1591388 m!5965358))

(assert (=> b!4942327 m!5965298))

(assert (=> b!4942239 d!1591388))

(declare-fun d!1591392 () Bool)

(declare-fun lt!2037305 () Int)

(assert (=> d!1591392 (= lt!2037305 (size!37724 (list!18105 (_1!34029 lt!2037213))))))

(declare-fun size!37725 (Conc!14970) Int)

(assert (=> d!1591392 (= lt!2037305 (size!37725 (c!843064 (_1!34029 lt!2037213))))))

(assert (=> d!1591392 (= (size!37723 (_1!34029 lt!2037213)) lt!2037305)))

(declare-fun bs!1181387 () Bool)

(assert (= bs!1181387 d!1591392))

(assert (=> bs!1181387 m!5965260))

(assert (=> bs!1181387 m!5965260))

(declare-fun m!5965362 () Bool)

(assert (=> bs!1181387 m!5965362))

(declare-fun m!5965366 () Bool)

(assert (=> bs!1181387 m!5965366))

(assert (=> b!4942238 d!1591392))

(declare-fun d!1591394 () Bool)

(declare-fun lambda!246305 () Int)

(declare-fun forall!13227 (List!57034 Int) Bool)

(assert (=> d!1591394 (= (inv!74031 setElem!27930) (forall!13227 (exprs!3601 setElem!27930) lambda!246305))))

(declare-fun bs!1181389 () Bool)

(assert (= bs!1181389 d!1591394))

(declare-fun m!5965376 () Bool)

(assert (=> bs!1181389 m!5965376))

(assert (=> setNonEmpty!27930 d!1591394))

(declare-fun d!1591400 () Bool)

(declare-fun lt!2037309 () Int)

(assert (=> d!1591400 (= lt!2037309 (size!37724 (list!18105 totalInput!685)))))

(assert (=> d!1591400 (= lt!2037309 (size!37725 (c!843064 totalInput!685)))))

(assert (=> d!1591400 (= (size!37723 totalInput!685) lt!2037309)))

(declare-fun bs!1181390 () Bool)

(assert (= bs!1181390 d!1591400))

(assert (=> bs!1181390 m!5965224))

(assert (=> bs!1181390 m!5965224))

(declare-fun m!5965378 () Bool)

(assert (=> bs!1181390 m!5965378))

(declare-fun m!5965380 () Bool)

(assert (=> bs!1181390 m!5965380))

(assert (=> b!4942229 d!1591400))

(declare-fun d!1591402 () Bool)

(declare-fun lt!2037312 () Int)

(assert (=> d!1591402 (>= lt!2037312 0)))

(declare-fun e!3087949 () Int)

(assert (=> d!1591402 (= lt!2037312 e!3087949)))

(declare-fun c!843114 () Bool)

(assert (=> d!1591402 (= c!843114 ((_ is Nil!56909) testedP!110))))

(assert (=> d!1591402 (= (size!37724 testedP!110) lt!2037312)))

(declare-fun b!4942338 () Bool)

(assert (=> b!4942338 (= e!3087949 0)))

(declare-fun b!4942339 () Bool)

(assert (=> b!4942339 (= e!3087949 (+ 1 (size!37724 (t!367553 testedP!110))))))

(assert (= (and d!1591402 c!843114) b!4942338))

(assert (= (and d!1591402 (not c!843114)) b!4942339))

(declare-fun m!5965384 () Bool)

(assert (=> b!4942339 m!5965384))

(assert (=> b!4942236 d!1591402))

(declare-fun d!1591406 () Bool)

(declare-fun c!843119 () Bool)

(assert (=> d!1591406 (= c!843119 ((_ is Node!14970) (c!843064 totalInput!685)))))

(declare-fun e!3087958 () Bool)

(assert (=> d!1591406 (= (inv!74030 (c!843064 totalInput!685)) e!3087958)))

(declare-fun b!4942352 () Bool)

(declare-fun inv!74032 (Conc!14970) Bool)

(assert (=> b!4942352 (= e!3087958 (inv!74032 (c!843064 totalInput!685)))))

(declare-fun b!4942353 () Bool)

(declare-fun e!3087959 () Bool)

(assert (=> b!4942353 (= e!3087958 e!3087959)))

(declare-fun res!2109061 () Bool)

(assert (=> b!4942353 (= res!2109061 (not ((_ is Leaf!24888) (c!843064 totalInput!685))))))

(assert (=> b!4942353 (=> res!2109061 e!3087959)))

(declare-fun b!4942354 () Bool)

(declare-fun inv!74033 (Conc!14970) Bool)

(assert (=> b!4942354 (= e!3087959 (inv!74033 (c!843064 totalInput!685)))))

(assert (= (and d!1591406 c!843119) b!4942352))

(assert (= (and d!1591406 (not c!843119)) b!4942353))

(assert (= (and b!4942353 (not res!2109061)) b!4942354))

(declare-fun m!5965386 () Bool)

(assert (=> b!4942352 m!5965386))

(declare-fun m!5965388 () Bool)

(assert (=> b!4942354 m!5965388))

(assert (=> b!4942233 d!1591406))

(declare-fun b!4942360 () Bool)

(declare-fun res!2109064 () Bool)

(declare-fun e!3087962 () Bool)

(assert (=> b!4942360 (=> (not res!2109064) (not e!3087962))))

(declare-fun lt!2037313 () List!57033)

(assert (=> b!4942360 (= res!2109064 (= (size!37724 lt!2037313) (+ (size!37724 lt!2037209) (size!37724 lt!2037217))))))

(declare-fun d!1591408 () Bool)

(assert (=> d!1591408 e!3087962))

(declare-fun res!2109063 () Bool)

(assert (=> d!1591408 (=> (not res!2109063) (not e!3087962))))

(assert (=> d!1591408 (= res!2109063 (= (content!10125 lt!2037313) ((_ map or) (content!10125 lt!2037209) (content!10125 lt!2037217))))))

(declare-fun e!3087963 () List!57033)

(assert (=> d!1591408 (= lt!2037313 e!3087963)))

(declare-fun c!843121 () Bool)

(assert (=> d!1591408 (= c!843121 ((_ is Nil!56909) lt!2037209))))

(assert (=> d!1591408 (= (++!12434 lt!2037209 lt!2037217) lt!2037313)))

(declare-fun b!4942361 () Bool)

(assert (=> b!4942361 (= e!3087962 (or (not (= lt!2037217 Nil!56909)) (= lt!2037313 lt!2037209)))))

(declare-fun b!4942359 () Bool)

(assert (=> b!4942359 (= e!3087963 (Cons!56909 (h!63357 lt!2037209) (++!12434 (t!367553 lt!2037209) lt!2037217)))))

(declare-fun b!4942358 () Bool)

(assert (=> b!4942358 (= e!3087963 lt!2037217)))

(assert (= (and d!1591408 c!843121) b!4942358))

(assert (= (and d!1591408 (not c!843121)) b!4942359))

(assert (= (and d!1591408 res!2109063) b!4942360))

(assert (= (and b!4942360 res!2109064) b!4942361))

(declare-fun m!5965394 () Bool)

(assert (=> b!4942360 m!5965394))

(declare-fun m!5965396 () Bool)

(assert (=> b!4942360 m!5965396))

(declare-fun m!5965398 () Bool)

(assert (=> b!4942360 m!5965398))

(declare-fun m!5965400 () Bool)

(assert (=> d!1591408 m!5965400))

(declare-fun m!5965402 () Bool)

(assert (=> d!1591408 m!5965402))

(declare-fun m!5965404 () Bool)

(assert (=> d!1591408 m!5965404))

(declare-fun m!5965406 () Bool)

(assert (=> b!4942359 m!5965406))

(assert (=> b!4942235 d!1591408))

(declare-fun d!1591412 () Bool)

(assert (=> d!1591412 (= (list!18105 (_2!34029 lt!2037213)) (list!18106 (c!843064 (_2!34029 lt!2037213))))))

(declare-fun bs!1181392 () Bool)

(assert (= bs!1181392 d!1591412))

(declare-fun m!5965408 () Bool)

(assert (=> bs!1181392 m!5965408))

(assert (=> b!4942235 d!1591412))

(declare-fun d!1591414 () Bool)

(assert (=> d!1591414 (= (list!18105 (_1!34029 lt!2037213)) (list!18106 (c!843064 (_1!34029 lt!2037213))))))

(declare-fun bs!1181393 () Bool)

(assert (= bs!1181393 d!1591414))

(declare-fun m!5965410 () Bool)

(assert (=> bs!1181393 m!5965410))

(assert (=> b!4942235 d!1591414))

(declare-fun d!1591416 () Bool)

(declare-fun e!3087977 () Bool)

(assert (=> d!1591416 e!3087977))

(declare-fun res!2109077 () Bool)

(assert (=> d!1591416 (=> (not res!2109077) (not e!3087977))))

(declare-fun lt!2037330 () tuple2!61452)

(assert (=> d!1591416 (= res!2109077 (isBalanced!4131 (c!843064 (_1!34029 lt!2037330))))))

(declare-datatypes ((tuple2!61454 0))(
  ( (tuple2!61455 (_1!34030 Conc!14970) (_2!34030 Conc!14970)) )
))
(declare-fun lt!2037329 () tuple2!61454)

(assert (=> d!1591416 (= lt!2037330 (tuple2!61453 (BalanceConc!29371 (_1!34030 lt!2037329)) (BalanceConc!29371 (_2!34030 lt!2037329))))))

(declare-fun splitAt!375 (Conc!14970 Int) tuple2!61454)

(assert (=> d!1591416 (= lt!2037329 (splitAt!375 (c!843064 totalInput!685) testedPSize!70))))

(assert (=> d!1591416 (isBalanced!4131 (c!843064 totalInput!685))))

(assert (=> d!1591416 (= (splitAt!374 totalInput!685 testedPSize!70) lt!2037330)))

(declare-fun b!4942380 () Bool)

(declare-fun res!2109078 () Bool)

(assert (=> b!4942380 (=> (not res!2109078) (not e!3087977))))

(assert (=> b!4942380 (= res!2109078 (isBalanced!4131 (c!843064 (_2!34029 lt!2037330))))))

(declare-fun b!4942381 () Bool)

(declare-datatypes ((tuple2!61456 0))(
  ( (tuple2!61457 (_1!34031 List!57033) (_2!34031 List!57033)) )
))
(declare-fun splitAtIndex!137 (List!57033 Int) tuple2!61456)

(assert (=> b!4942381 (= e!3087977 (= (tuple2!61457 (list!18105 (_1!34029 lt!2037330)) (list!18105 (_2!34029 lt!2037330))) (splitAtIndex!137 (list!18105 totalInput!685) testedPSize!70)))))

(assert (= (and d!1591416 res!2109077) b!4942380))

(assert (= (and b!4942380 res!2109078) b!4942381))

(declare-fun m!5965422 () Bool)

(assert (=> d!1591416 m!5965422))

(declare-fun m!5965424 () Bool)

(assert (=> d!1591416 m!5965424))

(assert (=> d!1591416 m!5965278))

(declare-fun m!5965426 () Bool)

(assert (=> b!4942380 m!5965426))

(declare-fun m!5965428 () Bool)

(assert (=> b!4942381 m!5965428))

(declare-fun m!5965430 () Bool)

(assert (=> b!4942381 m!5965430))

(assert (=> b!4942381 m!5965224))

(assert (=> b!4942381 m!5965224))

(declare-fun m!5965432 () Bool)

(assert (=> b!4942381 m!5965432))

(assert (=> b!4942235 d!1591416))

(declare-fun condSetEmpty!27933 () Bool)

(assert (=> setNonEmpty!27930 (= condSetEmpty!27933 (= setRest!27930 ((as const (Array Context!6202 Bool)) false)))))

(declare-fun setRes!27933 () Bool)

(assert (=> setNonEmpty!27930 (= tp!1386503 setRes!27933)))

(declare-fun setIsEmpty!27933 () Bool)

(assert (=> setIsEmpty!27933 setRes!27933))

(declare-fun setElem!27933 () Context!6202)

(declare-fun e!3087981 () Bool)

(declare-fun tp!1386508 () Bool)

(declare-fun setNonEmpty!27933 () Bool)

(assert (=> setNonEmpty!27933 (= setRes!27933 (and tp!1386508 (inv!74031 setElem!27933) e!3087981))))

(declare-fun setRest!27933 () (InoxSet Context!6202))

(assert (=> setNonEmpty!27933 (= setRest!27930 ((_ map or) (store ((as const (Array Context!6202 Bool)) false) setElem!27933 true) setRest!27933))))

(declare-fun b!4942387 () Bool)

(declare-fun tp!1386509 () Bool)

(assert (=> b!4942387 (= e!3087981 tp!1386509)))

(assert (= (and setNonEmpty!27930 condSetEmpty!27933) setIsEmpty!27933))

(assert (= (and setNonEmpty!27930 (not condSetEmpty!27933)) setNonEmpty!27933))

(assert (= setNonEmpty!27933 b!4942387))

(declare-fun m!5965438 () Bool)

(assert (=> setNonEmpty!27933 m!5965438))

(declare-fun b!4942392 () Bool)

(declare-fun e!3087984 () Bool)

(declare-fun tp!1386512 () Bool)

(assert (=> b!4942392 (= e!3087984 (and tp_is_empty!36099 tp!1386512))))

(assert (=> b!4942234 (= tp!1386502 e!3087984)))

(assert (= (and b!4942234 ((_ is Cons!56909) (t!367553 testedP!110))) b!4942392))

(declare-fun b!4942393 () Bool)

(declare-fun e!3087985 () Bool)

(declare-fun tp!1386513 () Bool)

(assert (=> b!4942393 (= e!3087985 (and tp_is_empty!36099 tp!1386513))))

(assert (=> b!4942228 (= tp!1386500 e!3087985)))

(assert (= (and b!4942228 ((_ is Cons!56909) (t!367553 testedSuffix!70))) b!4942393))

(declare-fun tp!1386521 () Bool)

(declare-fun tp!1386522 () Bool)

(declare-fun e!3087991 () Bool)

(declare-fun b!4942402 () Bool)

(assert (=> b!4942402 (= e!3087991 (and (inv!74030 (left!41517 (c!843064 totalInput!685))) tp!1386521 (inv!74030 (right!41847 (c!843064 totalInput!685))) tp!1386522))))

(declare-fun b!4942404 () Bool)

(declare-fun e!3087990 () Bool)

(declare-fun tp!1386520 () Bool)

(assert (=> b!4942404 (= e!3087990 tp!1386520)))

(declare-fun b!4942403 () Bool)

(declare-fun inv!74036 (IArray!30001) Bool)

(assert (=> b!4942403 (= e!3087991 (and (inv!74036 (xs!18296 (c!843064 totalInput!685))) e!3087990))))

(assert (=> b!4942233 (= tp!1386499 (and (inv!74030 (c!843064 totalInput!685)) e!3087991))))

(assert (= (and b!4942233 ((_ is Node!14970) (c!843064 totalInput!685))) b!4942402))

(assert (= b!4942403 b!4942404))

(assert (= (and b!4942233 ((_ is Leaf!24888) (c!843064 totalInput!685))) b!4942403))

(declare-fun m!5965440 () Bool)

(assert (=> b!4942402 m!5965440))

(declare-fun m!5965442 () Bool)

(assert (=> b!4942402 m!5965442))

(declare-fun m!5965444 () Bool)

(assert (=> b!4942403 m!5965444))

(assert (=> b!4942233 m!5965230))

(declare-fun b!4942417 () Bool)

(declare-fun e!3087998 () Bool)

(declare-fun tp!1386527 () Bool)

(declare-fun tp!1386528 () Bool)

(assert (=> b!4942417 (= e!3087998 (and tp!1386527 tp!1386528))))

(assert (=> b!4942232 (= tp!1386501 e!3087998)))

(assert (= (and b!4942232 ((_ is Cons!56910) (exprs!3601 setElem!27930))) b!4942417))

(check-sat (not b!4942359) (not d!1591366) (not b!4942233) (not d!1591380) (not d!1591392) (not d!1591360) (not b!4942290) (not b!4942360) (not b!4942403) (not d!1591394) (not d!1591364) (not d!1591356) (not b!4942282) (not d!1591382) (not d!1591378) (not b!4942381) (not bm!344902) (not b!4942266) (not d!1591416) (not b!4942291) (not b!4942277) (not bm!344893) (not b!4942250) (not d!1591414) (not b!4942283) (not b!4942295) (not b!4942322) (not b!4942281) (not d!1591400) (not b!4942279) (not b!4942387) (not b!4942404) (not d!1591372) (not d!1591362) (not b!4942292) (not b!4942392) (not b!4942249) (not setNonEmpty!27933) (not b!4942393) (not b!4942352) (not b!4942278) (not b!4942261) (not b!4942354) (not b!4942260) (not b!4942380) (not d!1591354) (not b!4942402) (not b!4942327) (not d!1591388) (not bm!344892) (not b!4942417) (not d!1591408) (not d!1591412) tp_is_empty!36099 (not d!1591384) (not b!4942339) (not b!4942324))
(check-sat)
(get-model)

(declare-fun d!1591454 () Bool)

(declare-fun lt!2037356 () C!27152)

(assert (=> d!1591454 (contains!19485 (list!18105 totalInput!685) lt!2037356)))

(declare-fun e!3088053 () C!27152)

(assert (=> d!1591454 (= lt!2037356 e!3088053)))

(declare-fun c!843144 () Bool)

(assert (=> d!1591454 (= c!843144 (= testedPSize!70 0))))

(declare-fun e!3088052 () Bool)

(assert (=> d!1591454 e!3088052))

(declare-fun res!2109113 () Bool)

(assert (=> d!1591454 (=> (not res!2109113) (not e!3088052))))

(assert (=> d!1591454 (= res!2109113 (<= 0 testedPSize!70))))

(assert (=> d!1591454 (= (apply!13794 (list!18105 totalInput!685) testedPSize!70) lt!2037356)))

(declare-fun b!4942508 () Bool)

(assert (=> b!4942508 (= e!3088052 (< testedPSize!70 (size!37724 (list!18105 totalInput!685))))))

(declare-fun b!4942509 () Bool)

(assert (=> b!4942509 (= e!3088053 (head!10588 (list!18105 totalInput!685)))))

(declare-fun b!4942510 () Bool)

(assert (=> b!4942510 (= e!3088053 (apply!13794 (tail!9726 (list!18105 totalInput!685)) (- testedPSize!70 1)))))

(assert (= (and d!1591454 res!2109113) b!4942508))

(assert (= (and d!1591454 c!843144) b!4942509))

(assert (= (and d!1591454 (not c!843144)) b!4942510))

(assert (=> d!1591454 m!5965224))

(declare-fun m!5965532 () Bool)

(assert (=> d!1591454 m!5965532))

(assert (=> b!4942508 m!5965224))

(assert (=> b!4942508 m!5965378))

(assert (=> b!4942509 m!5965224))

(declare-fun m!5965534 () Bool)

(assert (=> b!4942509 m!5965534))

(assert (=> b!4942510 m!5965224))

(declare-fun m!5965536 () Bool)

(assert (=> b!4942510 m!5965536))

(assert (=> b!4942510 m!5965536))

(declare-fun m!5965538 () Bool)

(assert (=> b!4942510 m!5965538))

(assert (=> d!1591382 d!1591454))

(assert (=> d!1591382 d!1591354))

(declare-fun b!4942525 () Bool)

(declare-fun e!3088063 () C!27152)

(declare-fun call!344913 () C!27152)

(assert (=> b!4942525 (= e!3088063 call!344913)))

(declare-fun b!4942526 () Bool)

(declare-fun e!3088065 () C!27152)

(assert (=> b!4942526 (= e!3088065 e!3088063)))

(declare-fun lt!2037361 () Bool)

(declare-fun appendIndex!384 (List!57033 List!57033 Int) Bool)

(assert (=> b!4942526 (= lt!2037361 (appendIndex!384 (list!18106 (left!41517 (c!843064 totalInput!685))) (list!18106 (right!41847 (c!843064 totalInput!685))) testedPSize!70))))

(declare-fun c!843153 () Bool)

(assert (=> b!4942526 (= c!843153 (< testedPSize!70 (size!37725 (left!41517 (c!843064 totalInput!685)))))))

(declare-fun b!4942528 () Bool)

(declare-fun e!3088064 () Int)

(assert (=> b!4942528 (= e!3088064 (- testedPSize!70 (size!37725 (left!41517 (c!843064 totalInput!685)))))))

(declare-fun bm!344908 () Bool)

(declare-fun c!843151 () Bool)

(assert (=> bm!344908 (= c!843151 c!843153)))

(assert (=> bm!344908 (= call!344913 (apply!13795 (ite c!843153 (left!41517 (c!843064 totalInput!685)) (right!41847 (c!843064 totalInput!685))) e!3088064))))

(declare-fun b!4942529 () Bool)

(declare-fun apply!13797 (IArray!30001 Int) C!27152)

(assert (=> b!4942529 (= e!3088065 (apply!13797 (xs!18296 (c!843064 totalInput!685)) testedPSize!70))))

(declare-fun b!4942530 () Bool)

(assert (=> b!4942530 (= e!3088063 call!344913)))

(declare-fun b!4942531 () Bool)

(declare-fun e!3088062 () Bool)

(assert (=> b!4942531 (= e!3088062 (< testedPSize!70 (size!37725 (c!843064 totalInput!685))))))

(declare-fun b!4942527 () Bool)

(assert (=> b!4942527 (= e!3088064 testedPSize!70)))

(declare-fun d!1591456 () Bool)

(declare-fun lt!2037362 () C!27152)

(assert (=> d!1591456 (= lt!2037362 (apply!13794 (list!18106 (c!843064 totalInput!685)) testedPSize!70))))

(assert (=> d!1591456 (= lt!2037362 e!3088065)))

(declare-fun c!843152 () Bool)

(assert (=> d!1591456 (= c!843152 ((_ is Leaf!24888) (c!843064 totalInput!685)))))

(assert (=> d!1591456 e!3088062))

(declare-fun res!2109116 () Bool)

(assert (=> d!1591456 (=> (not res!2109116) (not e!3088062))))

(assert (=> d!1591456 (= res!2109116 (<= 0 testedPSize!70))))

(assert (=> d!1591456 (= (apply!13795 (c!843064 totalInput!685) testedPSize!70) lt!2037362)))

(assert (= (and d!1591456 res!2109116) b!4942531))

(assert (= (and d!1591456 c!843152) b!4942529))

(assert (= (and d!1591456 (not c!843152)) b!4942526))

(assert (= (and b!4942526 c!843153) b!4942525))

(assert (= (and b!4942526 (not c!843153)) b!4942530))

(assert (= (or b!4942525 b!4942530) bm!344908))

(assert (= (and bm!344908 c!843151) b!4942527))

(assert (= (and bm!344908 (not c!843151)) b!4942528))

(assert (=> d!1591456 m!5965264))

(assert (=> d!1591456 m!5965264))

(declare-fun m!5965540 () Bool)

(assert (=> d!1591456 m!5965540))

(declare-fun m!5965542 () Bool)

(assert (=> b!4942528 m!5965542))

(assert (=> b!4942531 m!5965380))

(declare-fun m!5965544 () Bool)

(assert (=> b!4942529 m!5965544))

(declare-fun m!5965546 () Bool)

(assert (=> b!4942526 m!5965546))

(declare-fun m!5965548 () Bool)

(assert (=> b!4942526 m!5965548))

(assert (=> b!4942526 m!5965546))

(assert (=> b!4942526 m!5965548))

(declare-fun m!5965550 () Bool)

(assert (=> b!4942526 m!5965550))

(assert (=> b!4942526 m!5965542))

(declare-fun m!5965552 () Bool)

(assert (=> bm!344908 m!5965552))

(assert (=> d!1591382 d!1591456))

(declare-fun d!1591458 () Bool)

(assert (=> d!1591458 (= (head!10588 lt!2037216) (h!63357 lt!2037216))))

(assert (=> b!4942291 d!1591458))

(declare-fun b!4942540 () Bool)

(declare-fun e!3088070 () List!57033)

(assert (=> b!4942540 (= e!3088070 Nil!56909)))

(declare-fun d!1591460 () Bool)

(declare-fun c!843158 () Bool)

(assert (=> d!1591460 (= c!843158 ((_ is Empty!14970) (c!843064 (_2!34029 lt!2037213))))))

(assert (=> d!1591460 (= (list!18106 (c!843064 (_2!34029 lt!2037213))) e!3088070)))

(declare-fun b!4942541 () Bool)

(declare-fun e!3088071 () List!57033)

(assert (=> b!4942541 (= e!3088070 e!3088071)))

(declare-fun c!843159 () Bool)

(assert (=> b!4942541 (= c!843159 ((_ is Leaf!24888) (c!843064 (_2!34029 lt!2037213))))))

(declare-fun b!4942543 () Bool)

(assert (=> b!4942543 (= e!3088071 (++!12434 (list!18106 (left!41517 (c!843064 (_2!34029 lt!2037213)))) (list!18106 (right!41847 (c!843064 (_2!34029 lt!2037213))))))))

(declare-fun b!4942542 () Bool)

(declare-fun list!18108 (IArray!30001) List!57033)

(assert (=> b!4942542 (= e!3088071 (list!18108 (xs!18296 (c!843064 (_2!34029 lt!2037213)))))))

(assert (= (and d!1591460 c!843158) b!4942540))

(assert (= (and d!1591460 (not c!843158)) b!4942541))

(assert (= (and b!4942541 c!843159) b!4942542))

(assert (= (and b!4942541 (not c!843159)) b!4942543))

(declare-fun m!5965554 () Bool)

(assert (=> b!4942543 m!5965554))

(declare-fun m!5965556 () Bool)

(assert (=> b!4942543 m!5965556))

(assert (=> b!4942543 m!5965554))

(assert (=> b!4942543 m!5965556))

(declare-fun m!5965558 () Bool)

(assert (=> b!4942543 m!5965558))

(declare-fun m!5965560 () Bool)

(assert (=> b!4942542 m!5965560))

(assert (=> d!1591412 d!1591460))

(declare-fun d!1591462 () Bool)

(declare-fun lt!2037363 () Int)

(assert (=> d!1591462 (>= lt!2037363 0)))

(declare-fun e!3088072 () Int)

(assert (=> d!1591462 (= lt!2037363 e!3088072)))

(declare-fun c!843160 () Bool)

(assert (=> d!1591462 (= c!843160 ((_ is Nil!56909) lt!2037313))))

(assert (=> d!1591462 (= (size!37724 lt!2037313) lt!2037363)))

(declare-fun b!4942544 () Bool)

(assert (=> b!4942544 (= e!3088072 0)))

(declare-fun b!4942545 () Bool)

(assert (=> b!4942545 (= e!3088072 (+ 1 (size!37724 (t!367553 lt!2037313))))))

(assert (= (and d!1591462 c!843160) b!4942544))

(assert (= (and d!1591462 (not c!843160)) b!4942545))

(declare-fun m!5965562 () Bool)

(assert (=> b!4942545 m!5965562))

(assert (=> b!4942360 d!1591462))

(declare-fun d!1591464 () Bool)

(declare-fun lt!2037364 () Int)

(assert (=> d!1591464 (>= lt!2037364 0)))

(declare-fun e!3088073 () Int)

(assert (=> d!1591464 (= lt!2037364 e!3088073)))

(declare-fun c!843161 () Bool)

(assert (=> d!1591464 (= c!843161 ((_ is Nil!56909) lt!2037209))))

(assert (=> d!1591464 (= (size!37724 lt!2037209) lt!2037364)))

(declare-fun b!4942546 () Bool)

(assert (=> b!4942546 (= e!3088073 0)))

(declare-fun b!4942547 () Bool)

(assert (=> b!4942547 (= e!3088073 (+ 1 (size!37724 (t!367553 lt!2037209))))))

(assert (= (and d!1591464 c!843161) b!4942546))

(assert (= (and d!1591464 (not c!843161)) b!4942547))

(declare-fun m!5965564 () Bool)

(assert (=> b!4942547 m!5965564))

(assert (=> b!4942360 d!1591464))

(declare-fun d!1591466 () Bool)

(declare-fun lt!2037365 () Int)

(assert (=> d!1591466 (>= lt!2037365 0)))

(declare-fun e!3088074 () Int)

(assert (=> d!1591466 (= lt!2037365 e!3088074)))

(declare-fun c!843162 () Bool)

(assert (=> d!1591466 (= c!843162 ((_ is Nil!56909) lt!2037217))))

(assert (=> d!1591466 (= (size!37724 lt!2037217) lt!2037365)))

(declare-fun b!4942548 () Bool)

(assert (=> b!4942548 (= e!3088074 0)))

(declare-fun b!4942549 () Bool)

(assert (=> b!4942549 (= e!3088074 (+ 1 (size!37724 (t!367553 lt!2037217))))))

(assert (= (and d!1591466 c!843162) b!4942548))

(assert (= (and d!1591466 (not c!843162)) b!4942549))

(declare-fun m!5965566 () Bool)

(assert (=> b!4942549 m!5965566))

(assert (=> b!4942360 d!1591466))

(declare-fun d!1591468 () Bool)

(declare-fun c!843165 () Bool)

(assert (=> d!1591468 (= c!843165 ((_ is Nil!56909) lt!2037220))))

(declare-fun e!3088077 () (InoxSet C!27152))

(assert (=> d!1591468 (= (content!10125 lt!2037220) e!3088077)))

(declare-fun b!4942554 () Bool)

(assert (=> b!4942554 (= e!3088077 ((as const (Array C!27152 Bool)) false))))

(declare-fun b!4942555 () Bool)

(assert (=> b!4942555 (= e!3088077 ((_ map or) (store ((as const (Array C!27152 Bool)) false) (h!63357 lt!2037220) true) (content!10125 (t!367553 lt!2037220))))))

(assert (= (and d!1591468 c!843165) b!4942554))

(assert (= (and d!1591468 (not c!843165)) b!4942555))

(declare-fun m!5965568 () Bool)

(assert (=> b!4942555 m!5965568))

(declare-fun m!5965570 () Bool)

(assert (=> b!4942555 m!5965570))

(assert (=> d!1591356 d!1591468))

(declare-fun d!1591470 () Bool)

(declare-fun c!843166 () Bool)

(assert (=> d!1591470 (= c!843166 ((_ is Nil!56909) testedP!110))))

(declare-fun e!3088078 () (InoxSet C!27152))

(assert (=> d!1591470 (= (content!10125 testedP!110) e!3088078)))

(declare-fun b!4942556 () Bool)

(assert (=> b!4942556 (= e!3088078 ((as const (Array C!27152 Bool)) false))))

(declare-fun b!4942557 () Bool)

(assert (=> b!4942557 (= e!3088078 ((_ map or) (store ((as const (Array C!27152 Bool)) false) (h!63357 testedP!110) true) (content!10125 (t!367553 testedP!110))))))

(assert (= (and d!1591470 c!843166) b!4942556))

(assert (= (and d!1591470 (not c!843166)) b!4942557))

(declare-fun m!5965572 () Bool)

(assert (=> b!4942557 m!5965572))

(declare-fun m!5965574 () Bool)

(assert (=> b!4942557 m!5965574))

(assert (=> d!1591356 d!1591470))

(declare-fun d!1591472 () Bool)

(declare-fun c!843167 () Bool)

(assert (=> d!1591472 (= c!843167 ((_ is Nil!56909) testedSuffix!70))))

(declare-fun e!3088079 () (InoxSet C!27152))

(assert (=> d!1591472 (= (content!10125 testedSuffix!70) e!3088079)))

(declare-fun b!4942558 () Bool)

(assert (=> b!4942558 (= e!3088079 ((as const (Array C!27152 Bool)) false))))

(declare-fun b!4942559 () Bool)

(assert (=> b!4942559 (= e!3088079 ((_ map or) (store ((as const (Array C!27152 Bool)) false) (h!63357 testedSuffix!70) true) (content!10125 (t!367553 testedSuffix!70))))))

(assert (= (and d!1591472 c!843167) b!4942558))

(assert (= (and d!1591472 (not c!843167)) b!4942559))

(declare-fun m!5965576 () Bool)

(assert (=> b!4942559 m!5965576))

(declare-fun m!5965578 () Bool)

(assert (=> b!4942559 m!5965578))

(assert (=> d!1591356 d!1591472))

(declare-fun b!4942562 () Bool)

(declare-fun res!2109118 () Bool)

(declare-fun e!3088080 () Bool)

(assert (=> b!4942562 (=> (not res!2109118) (not e!3088080))))

(declare-fun lt!2037366 () List!57033)

(assert (=> b!4942562 (= res!2109118 (= (size!37724 lt!2037366) (+ (size!37724 testedP!110) (size!37724 lt!2037254))))))

(declare-fun d!1591474 () Bool)

(assert (=> d!1591474 e!3088080))

(declare-fun res!2109117 () Bool)

(assert (=> d!1591474 (=> (not res!2109117) (not e!3088080))))

(assert (=> d!1591474 (= res!2109117 (= (content!10125 lt!2037366) ((_ map or) (content!10125 testedP!110) (content!10125 lt!2037254))))))

(declare-fun e!3088081 () List!57033)

(assert (=> d!1591474 (= lt!2037366 e!3088081)))

(declare-fun c!843168 () Bool)

(assert (=> d!1591474 (= c!843168 ((_ is Nil!56909) testedP!110))))

(assert (=> d!1591474 (= (++!12434 testedP!110 lt!2037254) lt!2037366)))

(declare-fun b!4942563 () Bool)

(assert (=> b!4942563 (= e!3088080 (or (not (= lt!2037254 Nil!56909)) (= lt!2037366 testedP!110)))))

(declare-fun b!4942561 () Bool)

(assert (=> b!4942561 (= e!3088081 (Cons!56909 (h!63357 testedP!110) (++!12434 (t!367553 testedP!110) lt!2037254)))))

(declare-fun b!4942560 () Bool)

(assert (=> b!4942560 (= e!3088081 lt!2037254)))

(assert (= (and d!1591474 c!843168) b!4942560))

(assert (= (and d!1591474 (not c!843168)) b!4942561))

(assert (= (and d!1591474 res!2109117) b!4942562))

(assert (= (and b!4942562 res!2109118) b!4942563))

(declare-fun m!5965580 () Bool)

(assert (=> b!4942562 m!5965580))

(assert (=> b!4942562 m!5965254))

(declare-fun m!5965582 () Bool)

(assert (=> b!4942562 m!5965582))

(declare-fun m!5965584 () Bool)

(assert (=> d!1591474 m!5965584))

(assert (=> d!1591474 m!5965272))

(declare-fun m!5965586 () Bool)

(assert (=> d!1591474 m!5965586))

(declare-fun m!5965588 () Bool)

(assert (=> b!4942561 m!5965588))

(assert (=> d!1591366 d!1591474))

(declare-fun d!1591476 () Bool)

(declare-fun lt!2037367 () Int)

(assert (=> d!1591476 (>= lt!2037367 0)))

(declare-fun e!3088082 () Int)

(assert (=> d!1591476 (= lt!2037367 e!3088082)))

(declare-fun c!843169 () Bool)

(assert (=> d!1591476 (= c!843169 ((_ is Nil!56909) lt!2037216))))

(assert (=> d!1591476 (= (size!37724 lt!2037216) lt!2037367)))

(declare-fun b!4942564 () Bool)

(assert (=> b!4942564 (= e!3088082 0)))

(declare-fun b!4942565 () Bool)

(assert (=> b!4942565 (= e!3088082 (+ 1 (size!37724 (t!367553 lt!2037216))))))

(assert (= (and d!1591476 c!843169) b!4942564))

(assert (= (and d!1591476 (not c!843169)) b!4942565))

(declare-fun m!5965590 () Bool)

(assert (=> b!4942565 m!5965590))

(assert (=> d!1591366 d!1591476))

(assert (=> d!1591366 d!1591402))

(declare-fun d!1591478 () Bool)

(declare-fun lt!2037370 () Bool)

(assert (=> d!1591478 (= lt!2037370 (select (content!10125 lt!2037216) lt!2037264))))

(declare-fun e!3088088 () Bool)

(assert (=> d!1591478 (= lt!2037370 e!3088088)))

(declare-fun res!2109123 () Bool)

(assert (=> d!1591478 (=> (not res!2109123) (not e!3088088))))

(assert (=> d!1591478 (= res!2109123 ((_ is Cons!56909) lt!2037216))))

(assert (=> d!1591478 (= (contains!19485 lt!2037216 lt!2037264) lt!2037370)))

(declare-fun b!4942570 () Bool)

(declare-fun e!3088087 () Bool)

(assert (=> b!4942570 (= e!3088088 e!3088087)))

(declare-fun res!2109124 () Bool)

(assert (=> b!4942570 (=> res!2109124 e!3088087)))

(assert (=> b!4942570 (= res!2109124 (= (h!63357 lt!2037216) lt!2037264))))

(declare-fun b!4942571 () Bool)

(assert (=> b!4942571 (= e!3088087 (contains!19485 (t!367553 lt!2037216) lt!2037264))))

(assert (= (and d!1591478 res!2109123) b!4942570))

(assert (= (and b!4942570 (not res!2109124)) b!4942571))

(assert (=> d!1591478 m!5965350))

(declare-fun m!5965592 () Bool)

(assert (=> d!1591478 m!5965592))

(declare-fun m!5965594 () Bool)

(assert (=> b!4942571 m!5965594))

(assert (=> d!1591378 d!1591478))

(declare-fun b!4942575 () Bool)

(declare-fun e!3088091 () Bool)

(assert (=> b!4942575 (= e!3088091 (>= (size!37724 (++!12434 testedP!110 testedSuffix!70)) (size!37724 testedP!110)))))

(declare-fun d!1591480 () Bool)

(assert (=> d!1591480 e!3088091))

(declare-fun res!2109127 () Bool)

(assert (=> d!1591480 (=> res!2109127 e!3088091)))

(declare-fun lt!2037371 () Bool)

(assert (=> d!1591480 (= res!2109127 (not lt!2037371))))

(declare-fun e!3088089 () Bool)

(assert (=> d!1591480 (= lt!2037371 e!3088089)))

(declare-fun res!2109125 () Bool)

(assert (=> d!1591480 (=> res!2109125 e!3088089)))

(assert (=> d!1591480 (= res!2109125 ((_ is Nil!56909) testedP!110))))

(assert (=> d!1591480 (= (isPrefix!5059 testedP!110 (++!12434 testedP!110 testedSuffix!70)) lt!2037371)))

(declare-fun b!4942572 () Bool)

(declare-fun e!3088090 () Bool)

(assert (=> b!4942572 (= e!3088089 e!3088090)))

(declare-fun res!2109126 () Bool)

(assert (=> b!4942572 (=> (not res!2109126) (not e!3088090))))

(assert (=> b!4942572 (= res!2109126 (not ((_ is Nil!56909) (++!12434 testedP!110 testedSuffix!70))))))

(declare-fun b!4942574 () Bool)

(assert (=> b!4942574 (= e!3088090 (isPrefix!5059 (tail!9726 testedP!110) (tail!9726 (++!12434 testedP!110 testedSuffix!70))))))

(declare-fun b!4942573 () Bool)

(declare-fun res!2109128 () Bool)

(assert (=> b!4942573 (=> (not res!2109128) (not e!3088090))))

(assert (=> b!4942573 (= res!2109128 (= (head!10588 testedP!110) (head!10588 (++!12434 testedP!110 testedSuffix!70))))))

(assert (= (and d!1591480 (not res!2109125)) b!4942572))

(assert (= (and b!4942572 res!2109126) b!4942573))

(assert (= (and b!4942573 res!2109128) b!4942574))

(assert (= (and d!1591480 (not res!2109127)) b!4942575))

(assert (=> b!4942575 m!5965226))

(declare-fun m!5965596 () Bool)

(assert (=> b!4942575 m!5965596))

(assert (=> b!4942575 m!5965254))

(assert (=> b!4942574 m!5965304))

(assert (=> b!4942574 m!5965226))

(declare-fun m!5965598 () Bool)

(assert (=> b!4942574 m!5965598))

(assert (=> b!4942574 m!5965304))

(assert (=> b!4942574 m!5965598))

(declare-fun m!5965600 () Bool)

(assert (=> b!4942574 m!5965600))

(assert (=> b!4942573 m!5965308))

(assert (=> b!4942573 m!5965226))

(declare-fun m!5965602 () Bool)

(assert (=> b!4942573 m!5965602))

(assert (=> d!1591372 d!1591480))

(assert (=> d!1591372 d!1591356))

(declare-fun d!1591482 () Bool)

(assert (=> d!1591482 (isPrefix!5059 testedP!110 (++!12434 testedP!110 testedSuffix!70))))

(assert (=> d!1591482 true))

(declare-fun _$46!1912 () Unit!147661)

(assert (=> d!1591482 (= (choose!36394 testedP!110 testedSuffix!70) _$46!1912)))

(declare-fun bs!1181401 () Bool)

(assert (= bs!1181401 d!1591482))

(assert (=> bs!1181401 m!5965226))

(assert (=> bs!1181401 m!5965226))

(assert (=> bs!1181401 m!5965320))

(assert (=> d!1591372 d!1591482))

(assert (=> b!4942295 d!1591400))

(declare-fun b!4942576 () Bool)

(declare-fun e!3088092 () List!57033)

(assert (=> b!4942576 (= e!3088092 Nil!56909)))

(declare-fun d!1591484 () Bool)

(declare-fun c!843170 () Bool)

(assert (=> d!1591484 (= c!843170 ((_ is Empty!14970) (c!843064 totalInput!685)))))

(assert (=> d!1591484 (= (list!18106 (c!843064 totalInput!685)) e!3088092)))

(declare-fun b!4942577 () Bool)

(declare-fun e!3088093 () List!57033)

(assert (=> b!4942577 (= e!3088092 e!3088093)))

(declare-fun c!843171 () Bool)

(assert (=> b!4942577 (= c!843171 ((_ is Leaf!24888) (c!843064 totalInput!685)))))

(declare-fun b!4942579 () Bool)

(assert (=> b!4942579 (= e!3088093 (++!12434 (list!18106 (left!41517 (c!843064 totalInput!685))) (list!18106 (right!41847 (c!843064 totalInput!685)))))))

(declare-fun b!4942578 () Bool)

(assert (=> b!4942578 (= e!3088093 (list!18108 (xs!18296 (c!843064 totalInput!685))))))

(assert (= (and d!1591484 c!843170) b!4942576))

(assert (= (and d!1591484 (not c!843170)) b!4942577))

(assert (= (and b!4942577 c!843171) b!4942578))

(assert (= (and b!4942577 (not c!843171)) b!4942579))

(assert (=> b!4942579 m!5965546))

(assert (=> b!4942579 m!5965548))

(assert (=> b!4942579 m!5965546))

(assert (=> b!4942579 m!5965548))

(declare-fun m!5965604 () Bool)

(assert (=> b!4942579 m!5965604))

(declare-fun m!5965606 () Bool)

(assert (=> b!4942578 m!5965606))

(assert (=> d!1591354 d!1591484))

(declare-fun b!4942582 () Bool)

(declare-fun res!2109130 () Bool)

(declare-fun e!3088094 () Bool)

(assert (=> b!4942582 (=> (not res!2109130) (not e!3088094))))

(declare-fun lt!2037372 () List!57033)

(assert (=> b!4942582 (= res!2109130 (= (size!37724 lt!2037372) (+ (size!37724 (t!367553 testedP!110)) (size!37724 testedSuffix!70))))))

(declare-fun d!1591486 () Bool)

(assert (=> d!1591486 e!3088094))

(declare-fun res!2109129 () Bool)

(assert (=> d!1591486 (=> (not res!2109129) (not e!3088094))))

(assert (=> d!1591486 (= res!2109129 (= (content!10125 lt!2037372) ((_ map or) (content!10125 (t!367553 testedP!110)) (content!10125 testedSuffix!70))))))

(declare-fun e!3088095 () List!57033)

(assert (=> d!1591486 (= lt!2037372 e!3088095)))

(declare-fun c!843172 () Bool)

(assert (=> d!1591486 (= c!843172 ((_ is Nil!56909) (t!367553 testedP!110)))))

(assert (=> d!1591486 (= (++!12434 (t!367553 testedP!110) testedSuffix!70) lt!2037372)))

(declare-fun b!4942583 () Bool)

(assert (=> b!4942583 (= e!3088094 (or (not (= testedSuffix!70 Nil!56909)) (= lt!2037372 (t!367553 testedP!110))))))

(declare-fun b!4942581 () Bool)

(assert (=> b!4942581 (= e!3088095 (Cons!56909 (h!63357 (t!367553 testedP!110)) (++!12434 (t!367553 (t!367553 testedP!110)) testedSuffix!70)))))

(declare-fun b!4942580 () Bool)

(assert (=> b!4942580 (= e!3088095 testedSuffix!70)))

(assert (= (and d!1591486 c!843172) b!4942580))

(assert (= (and d!1591486 (not c!843172)) b!4942581))

(assert (= (and d!1591486 res!2109129) b!4942582))

(assert (= (and b!4942582 res!2109130) b!4942583))

(declare-fun m!5965608 () Bool)

(assert (=> b!4942582 m!5965608))

(assert (=> b!4942582 m!5965384))

(assert (=> b!4942582 m!5965268))

(declare-fun m!5965610 () Bool)

(assert (=> d!1591486 m!5965610))

(assert (=> d!1591486 m!5965574))

(assert (=> d!1591486 m!5965274))

(declare-fun m!5965612 () Bool)

(assert (=> b!4942581 m!5965612))

(assert (=> b!4942249 d!1591486))

(declare-fun d!1591488 () Bool)

(assert (=> d!1591488 (= (inv!74036 (xs!18296 (c!843064 totalInput!685))) (<= (size!37724 (innerList!15058 (xs!18296 (c!843064 totalInput!685)))) 2147483647))))

(declare-fun bs!1181402 () Bool)

(assert (= bs!1181402 d!1591488))

(declare-fun m!5965614 () Bool)

(assert (=> bs!1181402 m!5965614))

(assert (=> b!4942403 d!1591488))

(declare-fun d!1591490 () Bool)

(assert (=> d!1591490 (= (list!18105 (_1!34029 lt!2037330)) (list!18106 (c!843064 (_1!34029 lt!2037330))))))

(declare-fun bs!1181403 () Bool)

(assert (= bs!1181403 d!1591490))

(declare-fun m!5965616 () Bool)

(assert (=> bs!1181403 m!5965616))

(assert (=> b!4942381 d!1591490))

(declare-fun d!1591492 () Bool)

(assert (=> d!1591492 (= (list!18105 (_2!34029 lt!2037330)) (list!18106 (c!843064 (_2!34029 lt!2037330))))))

(declare-fun bs!1181404 () Bool)

(assert (= bs!1181404 d!1591492))

(declare-fun m!5965618 () Bool)

(assert (=> bs!1181404 m!5965618))

(assert (=> b!4942381 d!1591492))

(declare-fun b!4942596 () Bool)

(declare-fun e!3088104 () tuple2!61456)

(declare-fun e!3088102 () tuple2!61456)

(assert (=> b!4942596 (= e!3088104 e!3088102)))

(declare-fun c!843177 () Bool)

(assert (=> b!4942596 (= c!843177 (<= testedPSize!70 0))))

(declare-fun b!4942598 () Bool)

(assert (=> b!4942598 (= e!3088102 (tuple2!61457 Nil!56909 (list!18105 totalInput!685)))))

(declare-fun b!4942597 () Bool)

(assert (=> b!4942597 (= e!3088104 (tuple2!61457 Nil!56909 Nil!56909))))

(declare-fun d!1591494 () Bool)

(declare-fun e!3088103 () Bool)

(assert (=> d!1591494 e!3088103))

(declare-fun res!2109135 () Bool)

(assert (=> d!1591494 (=> (not res!2109135) (not e!3088103))))

(declare-fun lt!2037377 () tuple2!61456)

(assert (=> d!1591494 (= res!2109135 (= (++!12434 (_1!34031 lt!2037377) (_2!34031 lt!2037377)) (list!18105 totalInput!685)))))

(assert (=> d!1591494 (= lt!2037377 e!3088104)))

(declare-fun c!843178 () Bool)

(assert (=> d!1591494 (= c!843178 ((_ is Nil!56909) (list!18105 totalInput!685)))))

(assert (=> d!1591494 (= (splitAtIndex!137 (list!18105 totalInput!685) testedPSize!70) lt!2037377)))

(declare-fun b!4942599 () Bool)

(declare-fun res!2109136 () Bool)

(assert (=> b!4942599 (=> (not res!2109136) (not e!3088103))))

(declare-fun take!589 (List!57033 Int) List!57033)

(assert (=> b!4942599 (= res!2109136 (= (_1!34031 lt!2037377) (take!589 (list!18105 totalInput!685) testedPSize!70)))))

(declare-fun b!4942600 () Bool)

(declare-fun lt!2037378 () tuple2!61456)

(assert (=> b!4942600 (= lt!2037378 (splitAtIndex!137 (t!367553 (list!18105 totalInput!685)) (- testedPSize!70 1)))))

(assert (=> b!4942600 (= e!3088102 (tuple2!61457 (Cons!56909 (h!63357 (list!18105 totalInput!685)) (_1!34031 lt!2037378)) (_2!34031 lt!2037378)))))

(declare-fun b!4942601 () Bool)

(assert (=> b!4942601 (= e!3088103 (= (_2!34031 lt!2037377) (drop!2282 (list!18105 totalInput!685) testedPSize!70)))))

(assert (= (and d!1591494 c!843178) b!4942597))

(assert (= (and d!1591494 (not c!843178)) b!4942596))

(assert (= (and b!4942596 c!843177) b!4942598))

(assert (= (and b!4942596 (not c!843177)) b!4942600))

(assert (= (and d!1591494 res!2109135) b!4942599))

(assert (= (and b!4942599 res!2109136) b!4942601))

(declare-fun m!5965620 () Bool)

(assert (=> d!1591494 m!5965620))

(assert (=> b!4942599 m!5965224))

(declare-fun m!5965622 () Bool)

(assert (=> b!4942599 m!5965622))

(declare-fun m!5965624 () Bool)

(assert (=> b!4942600 m!5965624))

(assert (=> b!4942601 m!5965224))

(declare-fun m!5965626 () Bool)

(assert (=> b!4942601 m!5965626))

(assert (=> b!4942381 d!1591494))

(assert (=> b!4942381 d!1591354))

(declare-fun d!1591496 () Bool)

(declare-fun lt!2037379 () Int)

(assert (=> d!1591496 (>= lt!2037379 0)))

(declare-fun e!3088105 () Int)

(assert (=> d!1591496 (= lt!2037379 e!3088105)))

(declare-fun c!843179 () Bool)

(assert (=> d!1591496 (= c!843179 ((_ is Nil!56909) (t!367553 testedP!110)))))

(assert (=> d!1591496 (= (size!37724 (t!367553 testedP!110)) lt!2037379)))

(declare-fun b!4942602 () Bool)

(assert (=> b!4942602 (= e!3088105 0)))

(declare-fun b!4942603 () Bool)

(assert (=> b!4942603 (= e!3088105 (+ 1 (size!37724 (t!367553 (t!367553 testedP!110)))))))

(assert (= (and d!1591496 c!843179) b!4942602))

(assert (= (and d!1591496 (not c!843179)) b!4942603))

(declare-fun m!5965628 () Bool)

(assert (=> b!4942603 m!5965628))

(assert (=> b!4942339 d!1591496))

(declare-fun bs!1181405 () Bool)

(declare-fun d!1591498 () Bool)

(assert (= bs!1181405 (and d!1591498 d!1591394)))

(declare-fun lambda!246309 () Int)

(assert (=> bs!1181405 (= lambda!246309 lambda!246305)))

(assert (=> d!1591498 (= (inv!74031 setElem!27933) (forall!13227 (exprs!3601 setElem!27933) lambda!246309))))

(declare-fun bs!1181406 () Bool)

(assert (= bs!1181406 d!1591498))

(declare-fun m!5965630 () Bool)

(assert (=> bs!1181406 m!5965630))

(assert (=> setNonEmpty!27933 d!1591498))

(assert (=> b!4942233 d!1591406))

(declare-fun b!4942607 () Bool)

(declare-fun e!3088108 () Bool)

(assert (=> b!4942607 (= e!3088108 (>= (size!37724 (tail!9726 lt!2037216)) (size!37724 (tail!9726 testedP!110))))))

(declare-fun d!1591500 () Bool)

(assert (=> d!1591500 e!3088108))

(declare-fun res!2109139 () Bool)

(assert (=> d!1591500 (=> res!2109139 e!3088108)))

(declare-fun lt!2037380 () Bool)

(assert (=> d!1591500 (= res!2109139 (not lt!2037380))))

(declare-fun e!3088106 () Bool)

(assert (=> d!1591500 (= lt!2037380 e!3088106)))

(declare-fun res!2109137 () Bool)

(assert (=> d!1591500 (=> res!2109137 e!3088106)))

(assert (=> d!1591500 (= res!2109137 ((_ is Nil!56909) (tail!9726 testedP!110)))))

(assert (=> d!1591500 (= (isPrefix!5059 (tail!9726 testedP!110) (tail!9726 lt!2037216)) lt!2037380)))

(declare-fun b!4942604 () Bool)

(declare-fun e!3088107 () Bool)

(assert (=> b!4942604 (= e!3088106 e!3088107)))

(declare-fun res!2109138 () Bool)

(assert (=> b!4942604 (=> (not res!2109138) (not e!3088107))))

(assert (=> b!4942604 (= res!2109138 (not ((_ is Nil!56909) (tail!9726 lt!2037216))))))

(declare-fun b!4942606 () Bool)

(assert (=> b!4942606 (= e!3088107 (isPrefix!5059 (tail!9726 (tail!9726 testedP!110)) (tail!9726 (tail!9726 lt!2037216))))))

(declare-fun b!4942605 () Bool)

(declare-fun res!2109140 () Bool)

(assert (=> b!4942605 (=> (not res!2109140) (not e!3088107))))

(assert (=> b!4942605 (= res!2109140 (= (head!10588 (tail!9726 testedP!110)) (head!10588 (tail!9726 lt!2037216))))))

(assert (= (and d!1591500 (not res!2109137)) b!4942604))

(assert (= (and b!4942604 res!2109138) b!4942605))

(assert (= (and b!4942605 res!2109140) b!4942606))

(assert (= (and d!1591500 (not res!2109139)) b!4942607))

(assert (=> b!4942607 m!5965300))

(declare-fun m!5965632 () Bool)

(assert (=> b!4942607 m!5965632))

(assert (=> b!4942607 m!5965304))

(declare-fun m!5965634 () Bool)

(assert (=> b!4942607 m!5965634))

(assert (=> b!4942606 m!5965304))

(declare-fun m!5965636 () Bool)

(assert (=> b!4942606 m!5965636))

(assert (=> b!4942606 m!5965300))

(declare-fun m!5965638 () Bool)

(assert (=> b!4942606 m!5965638))

(assert (=> b!4942606 m!5965636))

(assert (=> b!4942606 m!5965638))

(declare-fun m!5965640 () Bool)

(assert (=> b!4942606 m!5965640))

(assert (=> b!4942605 m!5965304))

(declare-fun m!5965642 () Bool)

(assert (=> b!4942605 m!5965642))

(assert (=> b!4942605 m!5965300))

(declare-fun m!5965644 () Bool)

(assert (=> b!4942605 m!5965644))

(assert (=> b!4942278 d!1591500))

(declare-fun d!1591502 () Bool)

(assert (=> d!1591502 (= (tail!9726 testedP!110) (t!367553 testedP!110))))

(assert (=> b!4942278 d!1591502))

(declare-fun d!1591504 () Bool)

(assert (=> d!1591504 (= (tail!9726 lt!2037216) (t!367553 lt!2037216))))

(assert (=> b!4942278 d!1591504))

(declare-fun d!1591506 () Bool)

(assert (=> d!1591506 (= (head!10588 testedP!110) (h!63357 testedP!110))))

(assert (=> b!4942281 d!1591506))

(declare-fun d!1591508 () Bool)

(assert (=> d!1591508 (= (head!10588 lt!2037208) (h!63357 lt!2037208))))

(assert (=> b!4942281 d!1591508))

(declare-fun bs!1181407 () Bool)

(declare-fun d!1591510 () Bool)

(assert (= bs!1181407 (and d!1591510 d!1591362)))

(declare-fun lambda!246312 () Int)

(assert (=> bs!1181407 (not (= lambda!246312 lambda!246285))))

(declare-fun bs!1181408 () Bool)

(assert (= bs!1181408 (and d!1591510 b!4942260)))

(assert (=> bs!1181408 (not (= lambda!246312 lambda!246286))))

(declare-fun bs!1181409 () Bool)

(assert (= bs!1181409 (and d!1591510 b!4942261)))

(assert (=> bs!1181409 (not (= lambda!246312 lambda!246287))))

(assert (=> d!1591510 true))

(declare-fun order!25999 () Int)

(declare-fun dynLambda!23032 (Int Int) Int)

(assert (=> d!1591510 (< (dynLambda!23032 order!25999 lambda!246285) (dynLambda!23032 order!25999 lambda!246312))))

(assert (=> d!1591510 (not (exists!1311 lt!2037248 lambda!246312))))

(declare-fun lt!2037383 () Unit!147661)

(declare-fun choose!36401 (List!57035 Int) Unit!147661)

(assert (=> d!1591510 (= lt!2037383 (choose!36401 lt!2037248 lambda!246285))))

(declare-fun forall!13229 (List!57035 Int) Bool)

(assert (=> d!1591510 (forall!13229 lt!2037248 lambda!246285)))

(assert (=> d!1591510 (= (lemmaForallThenNotExists!202 lt!2037248 lambda!246285) lt!2037383)))

(declare-fun bs!1181410 () Bool)

(assert (= bs!1181410 d!1591510))

(declare-fun m!5965646 () Bool)

(assert (=> bs!1181410 m!5965646))

(declare-fun m!5965648 () Bool)

(assert (=> bs!1181410 m!5965648))

(declare-fun m!5965650 () Bool)

(assert (=> bs!1181410 m!5965650))

(assert (=> b!4942261 d!1591510))

(declare-fun b!4942610 () Bool)

(declare-fun e!3088111 () List!57033)

(assert (=> b!4942610 (= e!3088111 Nil!56909)))

(declare-fun d!1591512 () Bool)

(declare-fun c!843180 () Bool)

(assert (=> d!1591512 (= c!843180 ((_ is Empty!14970) (c!843064 (_1!34029 lt!2037213))))))

(assert (=> d!1591512 (= (list!18106 (c!843064 (_1!34029 lt!2037213))) e!3088111)))

(declare-fun b!4942611 () Bool)

(declare-fun e!3088112 () List!57033)

(assert (=> b!4942611 (= e!3088111 e!3088112)))

(declare-fun c!843181 () Bool)

(assert (=> b!4942611 (= c!843181 ((_ is Leaf!24888) (c!843064 (_1!34029 lt!2037213))))))

(declare-fun b!4942613 () Bool)

(assert (=> b!4942613 (= e!3088112 (++!12434 (list!18106 (left!41517 (c!843064 (_1!34029 lt!2037213)))) (list!18106 (right!41847 (c!843064 (_1!34029 lt!2037213))))))))

(declare-fun b!4942612 () Bool)

(assert (=> b!4942612 (= e!3088112 (list!18108 (xs!18296 (c!843064 (_1!34029 lt!2037213)))))))

(assert (= (and d!1591512 c!843180) b!4942610))

(assert (= (and d!1591512 (not c!843180)) b!4942611))

(assert (= (and b!4942611 c!843181) b!4942612))

(assert (= (and b!4942611 (not c!843181)) b!4942613))

(declare-fun m!5965652 () Bool)

(assert (=> b!4942613 m!5965652))

(declare-fun m!5965654 () Bool)

(assert (=> b!4942613 m!5965654))

(assert (=> b!4942613 m!5965652))

(assert (=> b!4942613 m!5965654))

(declare-fun m!5965656 () Bool)

(assert (=> b!4942613 m!5965656))

(declare-fun m!5965658 () Bool)

(assert (=> b!4942612 m!5965658))

(assert (=> d!1591414 d!1591512))

(assert (=> b!4942327 d!1591476))

(declare-fun d!1591514 () Bool)

(assert (=> d!1591514 (and (= lt!2037209 testedP!110) (= lt!2037217 testedSuffix!70))))

(assert (=> d!1591514 true))

(declare-fun _$50!425 () Unit!147661)

(assert (=> d!1591514 (= (choose!36395 lt!2037209 lt!2037217 testedP!110 testedSuffix!70) _$50!425)))

(assert (=> d!1591380 d!1591514))

(assert (=> d!1591380 d!1591408))

(assert (=> d!1591380 d!1591356))

(declare-fun d!1591516 () Bool)

(declare-fun lt!2037384 () Int)

(assert (=> d!1591516 (>= lt!2037384 0)))

(declare-fun e!3088113 () Int)

(assert (=> d!1591516 (= lt!2037384 e!3088113)))

(declare-fun c!843182 () Bool)

(assert (=> d!1591516 (= c!843182 ((_ is Nil!56909) (list!18105 (_1!34029 lt!2037213))))))

(assert (=> d!1591516 (= (size!37724 (list!18105 (_1!34029 lt!2037213))) lt!2037384)))

(declare-fun b!4942614 () Bool)

(assert (=> b!4942614 (= e!3088113 0)))

(declare-fun b!4942615 () Bool)

(assert (=> b!4942615 (= e!3088113 (+ 1 (size!37724 (t!367553 (list!18105 (_1!34029 lt!2037213))))))))

(assert (= (and d!1591516 c!843182) b!4942614))

(assert (= (and d!1591516 (not c!843182)) b!4942615))

(declare-fun m!5965660 () Bool)

(assert (=> b!4942615 m!5965660))

(assert (=> d!1591392 d!1591516))

(assert (=> d!1591392 d!1591414))

(declare-fun d!1591518 () Bool)

(declare-fun lt!2037387 () Int)

(assert (=> d!1591518 (= lt!2037387 (size!37724 (list!18106 (c!843064 (_1!34029 lt!2037213)))))))

(assert (=> d!1591518 (= lt!2037387 (ite ((_ is Empty!14970) (c!843064 (_1!34029 lt!2037213))) 0 (ite ((_ is Leaf!24888) (c!843064 (_1!34029 lt!2037213))) (csize!30171 (c!843064 (_1!34029 lt!2037213))) (csize!30170 (c!843064 (_1!34029 lt!2037213))))))))

(assert (=> d!1591518 (= (size!37725 (c!843064 (_1!34029 lt!2037213))) lt!2037387)))

(declare-fun bs!1181411 () Bool)

(assert (= bs!1181411 d!1591518))

(assert (=> bs!1181411 m!5965410))

(assert (=> bs!1181411 m!5965410))

(declare-fun m!5965662 () Bool)

(assert (=> bs!1181411 m!5965662))

(assert (=> d!1591392 d!1591518))

(declare-fun d!1591520 () Bool)

(declare-fun lt!2037388 () Int)

(assert (=> d!1591520 (>= lt!2037388 0)))

(declare-fun e!3088114 () Int)

(assert (=> d!1591520 (= lt!2037388 e!3088114)))

(declare-fun c!843183 () Bool)

(assert (=> d!1591520 (= c!843183 ((_ is Nil!56909) lt!2037208))))

(assert (=> d!1591520 (= (size!37724 lt!2037208) lt!2037388)))

(declare-fun b!4942616 () Bool)

(assert (=> b!4942616 (= e!3088114 0)))

(declare-fun b!4942617 () Bool)

(assert (=> b!4942617 (= e!3088114 (+ 1 (size!37724 (t!367553 lt!2037208))))))

(assert (= (and d!1591520 c!843183) b!4942616))

(assert (= (and d!1591520 (not c!843183)) b!4942617))

(declare-fun m!5965664 () Bool)

(assert (=> b!4942617 m!5965664))

(assert (=> b!4942283 d!1591520))

(assert (=> b!4942283 d!1591402))

(declare-fun d!1591522 () Bool)

(declare-fun e!3088117 () Bool)

(assert (=> d!1591522 e!3088117))

(declare-fun res!2109143 () Bool)

(assert (=> d!1591522 (=> (not res!2109143) (not e!3088117))))

(declare-fun lt!2037391 () List!57035)

(declare-fun noDuplicate!1000 (List!57035) Bool)

(assert (=> d!1591522 (= res!2109143 (noDuplicate!1000 lt!2037391))))

(declare-fun choose!36402 ((InoxSet Context!6202)) List!57035)

(assert (=> d!1591522 (= lt!2037391 (choose!36402 z!3568))))

(assert (=> d!1591522 (= (toList!7981 z!3568) lt!2037391)))

(declare-fun b!4942620 () Bool)

(declare-fun content!10127 (List!57035) (InoxSet Context!6202))

(assert (=> b!4942620 (= e!3088117 (= (content!10127 lt!2037391) z!3568))))

(assert (= (and d!1591522 res!2109143) b!4942620))

(declare-fun m!5965666 () Bool)

(assert (=> d!1591522 m!5965666))

(declare-fun m!5965668 () Bool)

(assert (=> d!1591522 m!5965668))

(declare-fun m!5965670 () Bool)

(assert (=> b!4942620 m!5965670))

(assert (=> bm!344893 d!1591522))

(assert (=> b!4942290 d!1591476))

(declare-fun b!4942623 () Bool)

(declare-fun res!2109145 () Bool)

(declare-fun e!3088118 () Bool)

(assert (=> b!4942623 (=> (not res!2109145) (not e!3088118))))

(declare-fun lt!2037392 () List!57033)

(assert (=> b!4942623 (= res!2109145 (= (size!37724 lt!2037392) (+ (size!37724 (t!367553 lt!2037209)) (size!37724 lt!2037217))))))

(declare-fun d!1591524 () Bool)

(assert (=> d!1591524 e!3088118))

(declare-fun res!2109144 () Bool)

(assert (=> d!1591524 (=> (not res!2109144) (not e!3088118))))

(assert (=> d!1591524 (= res!2109144 (= (content!10125 lt!2037392) ((_ map or) (content!10125 (t!367553 lt!2037209)) (content!10125 lt!2037217))))))

(declare-fun e!3088119 () List!57033)

(assert (=> d!1591524 (= lt!2037392 e!3088119)))

(declare-fun c!843184 () Bool)

(assert (=> d!1591524 (= c!843184 ((_ is Nil!56909) (t!367553 lt!2037209)))))

(assert (=> d!1591524 (= (++!12434 (t!367553 lt!2037209) lt!2037217) lt!2037392)))

(declare-fun b!4942624 () Bool)

(assert (=> b!4942624 (= e!3088118 (or (not (= lt!2037217 Nil!56909)) (= lt!2037392 (t!367553 lt!2037209))))))

(declare-fun b!4942622 () Bool)

(assert (=> b!4942622 (= e!3088119 (Cons!56909 (h!63357 (t!367553 lt!2037209)) (++!12434 (t!367553 (t!367553 lt!2037209)) lt!2037217)))))

(declare-fun b!4942621 () Bool)

(assert (=> b!4942621 (= e!3088119 lt!2037217)))

(assert (= (and d!1591524 c!843184) b!4942621))

(assert (= (and d!1591524 (not c!843184)) b!4942622))

(assert (= (and d!1591524 res!2109144) b!4942623))

(assert (= (and b!4942623 res!2109145) b!4942624))

(declare-fun m!5965672 () Bool)

(assert (=> b!4942623 m!5965672))

(assert (=> b!4942623 m!5965564))

(assert (=> b!4942623 m!5965398))

(declare-fun m!5965674 () Bool)

(assert (=> d!1591524 m!5965674))

(declare-fun m!5965676 () Bool)

(assert (=> d!1591524 m!5965676))

(assert (=> d!1591524 m!5965404))

(declare-fun m!5965678 () Bool)

(assert (=> b!4942622 m!5965678))

(assert (=> b!4942359 d!1591524))

(declare-fun d!1591526 () Bool)

(declare-fun lt!2037393 () C!27152)

(assert (=> d!1591526 (contains!19485 (tail!9726 lt!2037216) lt!2037393)))

(declare-fun e!3088121 () C!27152)

(assert (=> d!1591526 (= lt!2037393 e!3088121)))

(declare-fun c!843185 () Bool)

(assert (=> d!1591526 (= c!843185 (= (- testedPSize!70 1) 0))))

(declare-fun e!3088120 () Bool)

(assert (=> d!1591526 e!3088120))

(declare-fun res!2109146 () Bool)

(assert (=> d!1591526 (=> (not res!2109146) (not e!3088120))))

(assert (=> d!1591526 (= res!2109146 (<= 0 (- testedPSize!70 1)))))

(assert (=> d!1591526 (= (apply!13794 (tail!9726 lt!2037216) (- testedPSize!70 1)) lt!2037393)))

(declare-fun b!4942625 () Bool)

(assert (=> b!4942625 (= e!3088120 (< (- testedPSize!70 1) (size!37724 (tail!9726 lt!2037216))))))

(declare-fun b!4942626 () Bool)

(assert (=> b!4942626 (= e!3088121 (head!10588 (tail!9726 lt!2037216)))))

(declare-fun b!4942627 () Bool)

(assert (=> b!4942627 (= e!3088121 (apply!13794 (tail!9726 (tail!9726 lt!2037216)) (- (- testedPSize!70 1) 1)))))

(assert (= (and d!1591526 res!2109146) b!4942625))

(assert (= (and d!1591526 c!843185) b!4942626))

(assert (= (and d!1591526 (not c!843185)) b!4942627))

(assert (=> d!1591526 m!5965300))

(declare-fun m!5965680 () Bool)

(assert (=> d!1591526 m!5965680))

(assert (=> b!4942625 m!5965300))

(assert (=> b!4942625 m!5965632))

(assert (=> b!4942626 m!5965300))

(assert (=> b!4942626 m!5965644))

(assert (=> b!4942627 m!5965300))

(assert (=> b!4942627 m!5965638))

(assert (=> b!4942627 m!5965638))

(declare-fun m!5965682 () Bool)

(assert (=> b!4942627 m!5965682))

(assert (=> b!4942292 d!1591526))

(assert (=> b!4942292 d!1591504))

(declare-fun d!1591528 () Bool)

(declare-fun res!2109151 () Bool)

(declare-fun e!3088126 () Bool)

(assert (=> d!1591528 (=> res!2109151 e!3088126)))

(assert (=> d!1591528 (= res!2109151 ((_ is Nil!56910) (exprs!3601 setElem!27930)))))

(assert (=> d!1591528 (= (forall!13227 (exprs!3601 setElem!27930) lambda!246305) e!3088126)))

(declare-fun b!4942632 () Bool)

(declare-fun e!3088127 () Bool)

(assert (=> b!4942632 (= e!3088126 e!3088127)))

(declare-fun res!2109152 () Bool)

(assert (=> b!4942632 (=> (not res!2109152) (not e!3088127))))

(declare-fun dynLambda!23033 (Int Regex!13459) Bool)

(assert (=> b!4942632 (= res!2109152 (dynLambda!23033 lambda!246305 (h!63358 (exprs!3601 setElem!27930))))))

(declare-fun b!4942633 () Bool)

(assert (=> b!4942633 (= e!3088127 (forall!13227 (t!367554 (exprs!3601 setElem!27930)) lambda!246305))))

(assert (= (and d!1591528 (not res!2109151)) b!4942632))

(assert (= (and b!4942632 res!2109152) b!4942633))

(declare-fun b_lambda!196413 () Bool)

(assert (=> (not b_lambda!196413) (not b!4942632)))

(declare-fun m!5965684 () Bool)

(assert (=> b!4942632 m!5965684))

(declare-fun m!5965686 () Bool)

(assert (=> b!4942633 m!5965686))

(assert (=> d!1591394 d!1591528))

(declare-fun d!1591530 () Bool)

(declare-fun res!2109159 () Bool)

(declare-fun e!3088130 () Bool)

(assert (=> d!1591530 (=> (not res!2109159) (not e!3088130))))

(assert (=> d!1591530 (= res!2109159 (= (csize!30170 (c!843064 totalInput!685)) (+ (size!37725 (left!41517 (c!843064 totalInput!685))) (size!37725 (right!41847 (c!843064 totalInput!685))))))))

(assert (=> d!1591530 (= (inv!74032 (c!843064 totalInput!685)) e!3088130)))

(declare-fun b!4942640 () Bool)

(declare-fun res!2109160 () Bool)

(assert (=> b!4942640 (=> (not res!2109160) (not e!3088130))))

(assert (=> b!4942640 (= res!2109160 (and (not (= (left!41517 (c!843064 totalInput!685)) Empty!14970)) (not (= (right!41847 (c!843064 totalInput!685)) Empty!14970))))))

(declare-fun b!4942641 () Bool)

(declare-fun res!2109161 () Bool)

(assert (=> b!4942641 (=> (not res!2109161) (not e!3088130))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2000 (Conc!14970) Int)

(assert (=> b!4942641 (= res!2109161 (= (cheight!15181 (c!843064 totalInput!685)) (+ (max!0 (height!2000 (left!41517 (c!843064 totalInput!685))) (height!2000 (right!41847 (c!843064 totalInput!685)))) 1)))))

(declare-fun b!4942642 () Bool)

(assert (=> b!4942642 (= e!3088130 (<= 0 (cheight!15181 (c!843064 totalInput!685))))))

(assert (= (and d!1591530 res!2109159) b!4942640))

(assert (= (and b!4942640 res!2109160) b!4942641))

(assert (= (and b!4942641 res!2109161) b!4942642))

(assert (=> d!1591530 m!5965542))

(declare-fun m!5965688 () Bool)

(assert (=> d!1591530 m!5965688))

(declare-fun m!5965690 () Bool)

(assert (=> b!4942641 m!5965690))

(declare-fun m!5965692 () Bool)

(assert (=> b!4942641 m!5965692))

(assert (=> b!4942641 m!5965690))

(assert (=> b!4942641 m!5965692))

(declare-fun m!5965694 () Bool)

(assert (=> b!4942641 m!5965694))

(assert (=> b!4942352 d!1591530))

(declare-fun d!1591532 () Bool)

(declare-fun lt!2037394 () Int)

(assert (=> d!1591532 (>= lt!2037394 0)))

(declare-fun e!3088131 () Int)

(assert (=> d!1591532 (= lt!2037394 e!3088131)))

(declare-fun c!843186 () Bool)

(assert (=> d!1591532 (= c!843186 ((_ is Nil!56909) lt!2037220))))

(assert (=> d!1591532 (= (size!37724 lt!2037220) lt!2037394)))

(declare-fun b!4942643 () Bool)

(assert (=> b!4942643 (= e!3088131 0)))

(declare-fun b!4942644 () Bool)

(assert (=> b!4942644 (= e!3088131 (+ 1 (size!37724 (t!367553 lt!2037220))))))

(assert (= (and d!1591532 c!843186) b!4942643))

(assert (= (and d!1591532 (not c!843186)) b!4942644))

(declare-fun m!5965696 () Bool)

(assert (=> b!4942644 m!5965696))

(assert (=> b!4942250 d!1591532))

(assert (=> b!4942250 d!1591402))

(declare-fun d!1591534 () Bool)

(declare-fun lt!2037395 () Int)

(assert (=> d!1591534 (>= lt!2037395 0)))

(declare-fun e!3088132 () Int)

(assert (=> d!1591534 (= lt!2037395 e!3088132)))

(declare-fun c!843187 () Bool)

(assert (=> d!1591534 (= c!843187 ((_ is Nil!56909) testedSuffix!70))))

(assert (=> d!1591534 (= (size!37724 testedSuffix!70) lt!2037395)))

(declare-fun b!4942645 () Bool)

(assert (=> b!4942645 (= e!3088132 0)))

(declare-fun b!4942646 () Bool)

(assert (=> b!4942646 (= e!3088132 (+ 1 (size!37724 (t!367553 testedSuffix!70))))))

(assert (= (and d!1591534 c!843187) b!4942645))

(assert (= (and d!1591534 (not c!843187)) b!4942646))

(declare-fun m!5965698 () Bool)

(assert (=> b!4942646 m!5965698))

(assert (=> b!4942250 d!1591534))

(assert (=> d!1591388 d!1591376))

(assert (=> d!1591388 d!1591384))

(assert (=> d!1591388 d!1591378))

(declare-fun d!1591536 () Bool)

(assert (=> d!1591536 (= (head!10588 (drop!2282 lt!2037216 testedPSize!70)) (apply!13794 lt!2037216 testedPSize!70))))

(assert (=> d!1591536 true))

(declare-fun _$27!1678 () Unit!147661)

(assert (=> d!1591536 (= (choose!36396 lt!2037216 testedPSize!70) _$27!1678)))

(declare-fun bs!1181412 () Bool)

(assert (= bs!1181412 d!1591536))

(assert (=> bs!1181412 m!5965234))

(assert (=> bs!1181412 m!5965234))

(assert (=> bs!1181412 m!5965240))

(assert (=> bs!1181412 m!5965244))

(assert (=> d!1591388 d!1591536))

(declare-fun b!4942659 () Bool)

(declare-fun res!2109178 () Bool)

(declare-fun e!3088138 () Bool)

(assert (=> b!4942659 (=> (not res!2109178) (not e!3088138))))

(assert (=> b!4942659 (= res!2109178 (isBalanced!4131 (right!41847 (c!843064 (_2!34029 lt!2037330)))))))

(declare-fun b!4942660 () Bool)

(declare-fun e!3088137 () Bool)

(assert (=> b!4942660 (= e!3088137 e!3088138)))

(declare-fun res!2109177 () Bool)

(assert (=> b!4942660 (=> (not res!2109177) (not e!3088138))))

(assert (=> b!4942660 (= res!2109177 (<= (- 1) (- (height!2000 (left!41517 (c!843064 (_2!34029 lt!2037330)))) (height!2000 (right!41847 (c!843064 (_2!34029 lt!2037330)))))))))

(declare-fun b!4942661 () Bool)

(declare-fun res!2109175 () Bool)

(assert (=> b!4942661 (=> (not res!2109175) (not e!3088138))))

(assert (=> b!4942661 (= res!2109175 (isBalanced!4131 (left!41517 (c!843064 (_2!34029 lt!2037330)))))))

(declare-fun b!4942662 () Bool)

(declare-fun res!2109179 () Bool)

(assert (=> b!4942662 (=> (not res!2109179) (not e!3088138))))

(declare-fun isEmpty!30637 (Conc!14970) Bool)

(assert (=> b!4942662 (= res!2109179 (not (isEmpty!30637 (left!41517 (c!843064 (_2!34029 lt!2037330))))))))

(declare-fun b!4942663 () Bool)

(declare-fun res!2109176 () Bool)

(assert (=> b!4942663 (=> (not res!2109176) (not e!3088138))))

(assert (=> b!4942663 (= res!2109176 (<= (- (height!2000 (left!41517 (c!843064 (_2!34029 lt!2037330)))) (height!2000 (right!41847 (c!843064 (_2!34029 lt!2037330))))) 1))))

(declare-fun b!4942664 () Bool)

(assert (=> b!4942664 (= e!3088138 (not (isEmpty!30637 (right!41847 (c!843064 (_2!34029 lt!2037330))))))))

(declare-fun d!1591538 () Bool)

(declare-fun res!2109174 () Bool)

(assert (=> d!1591538 (=> res!2109174 e!3088137)))

(assert (=> d!1591538 (= res!2109174 (not ((_ is Node!14970) (c!843064 (_2!34029 lt!2037330)))))))

(assert (=> d!1591538 (= (isBalanced!4131 (c!843064 (_2!34029 lt!2037330))) e!3088137)))

(assert (= (and d!1591538 (not res!2109174)) b!4942660))

(assert (= (and b!4942660 res!2109177) b!4942663))

(assert (= (and b!4942663 res!2109176) b!4942661))

(assert (= (and b!4942661 res!2109175) b!4942659))

(assert (= (and b!4942659 res!2109178) b!4942662))

(assert (= (and b!4942662 res!2109179) b!4942664))

(declare-fun m!5965700 () Bool)

(assert (=> b!4942664 m!5965700))

(declare-fun m!5965702 () Bool)

(assert (=> b!4942662 m!5965702))

(declare-fun m!5965704 () Bool)

(assert (=> b!4942663 m!5965704))

(declare-fun m!5965706 () Bool)

(assert (=> b!4942663 m!5965706))

(assert (=> b!4942660 m!5965704))

(assert (=> b!4942660 m!5965706))

(declare-fun m!5965708 () Bool)

(assert (=> b!4942661 m!5965708))

(declare-fun m!5965710 () Bool)

(assert (=> b!4942659 m!5965710))

(assert (=> b!4942380 d!1591538))

(declare-fun d!1591540 () Bool)

(declare-fun lt!2037396 () Int)

(assert (=> d!1591540 (>= lt!2037396 0)))

(declare-fun e!3088139 () Int)

(assert (=> d!1591540 (= lt!2037396 e!3088139)))

(declare-fun c!843188 () Bool)

(assert (=> d!1591540 (= c!843188 ((_ is Nil!56909) (list!18105 totalInput!685)))))

(assert (=> d!1591540 (= (size!37724 (list!18105 totalInput!685)) lt!2037396)))

(declare-fun b!4942665 () Bool)

(assert (=> b!4942665 (= e!3088139 0)))

(declare-fun b!4942666 () Bool)

(assert (=> b!4942666 (= e!3088139 (+ 1 (size!37724 (t!367553 (list!18105 totalInput!685)))))))

(assert (= (and d!1591540 c!843188) b!4942665))

(assert (= (and d!1591540 (not c!843188)) b!4942666))

(declare-fun m!5965712 () Bool)

(assert (=> b!4942666 m!5965712))

(assert (=> d!1591400 d!1591540))

(assert (=> d!1591400 d!1591354))

(declare-fun d!1591542 () Bool)

(declare-fun lt!2037397 () Int)

(assert (=> d!1591542 (= lt!2037397 (size!37724 (list!18106 (c!843064 totalInput!685))))))

(assert (=> d!1591542 (= lt!2037397 (ite ((_ is Empty!14970) (c!843064 totalInput!685)) 0 (ite ((_ is Leaf!24888) (c!843064 totalInput!685)) (csize!30171 (c!843064 totalInput!685)) (csize!30170 (c!843064 totalInput!685)))))))

(assert (=> d!1591542 (= (size!37725 (c!843064 totalInput!685)) lt!2037397)))

(declare-fun bs!1181413 () Bool)

(assert (= bs!1181413 d!1591542))

(assert (=> bs!1181413 m!5965264))

(assert (=> bs!1181413 m!5965264))

(declare-fun m!5965714 () Bool)

(assert (=> bs!1181413 m!5965714))

(assert (=> d!1591400 d!1591542))

(declare-fun d!1591544 () Bool)

(declare-fun c!843189 () Bool)

(assert (=> d!1591544 (= c!843189 ((_ is Node!14970) (left!41517 (c!843064 totalInput!685))))))

(declare-fun e!3088140 () Bool)

(assert (=> d!1591544 (= (inv!74030 (left!41517 (c!843064 totalInput!685))) e!3088140)))

(declare-fun b!4942667 () Bool)

(assert (=> b!4942667 (= e!3088140 (inv!74032 (left!41517 (c!843064 totalInput!685))))))

(declare-fun b!4942668 () Bool)

(declare-fun e!3088141 () Bool)

(assert (=> b!4942668 (= e!3088140 e!3088141)))

(declare-fun res!2109180 () Bool)

(assert (=> b!4942668 (= res!2109180 (not ((_ is Leaf!24888) (left!41517 (c!843064 totalInput!685)))))))

(assert (=> b!4942668 (=> res!2109180 e!3088141)))

(declare-fun b!4942669 () Bool)

(assert (=> b!4942669 (= e!3088141 (inv!74033 (left!41517 (c!843064 totalInput!685))))))

(assert (= (and d!1591544 c!843189) b!4942667))

(assert (= (and d!1591544 (not c!843189)) b!4942668))

(assert (= (and b!4942668 (not res!2109180)) b!4942669))

(declare-fun m!5965716 () Bool)

(assert (=> b!4942667 m!5965716))

(declare-fun m!5965718 () Bool)

(assert (=> b!4942669 m!5965718))

(assert (=> b!4942402 d!1591544))

(declare-fun d!1591546 () Bool)

(declare-fun c!843190 () Bool)

(assert (=> d!1591546 (= c!843190 ((_ is Node!14970) (right!41847 (c!843064 totalInput!685))))))

(declare-fun e!3088142 () Bool)

(assert (=> d!1591546 (= (inv!74030 (right!41847 (c!843064 totalInput!685))) e!3088142)))

(declare-fun b!4942670 () Bool)

(assert (=> b!4942670 (= e!3088142 (inv!74032 (right!41847 (c!843064 totalInput!685))))))

(declare-fun b!4942671 () Bool)

(declare-fun e!3088143 () Bool)

(assert (=> b!4942671 (= e!3088142 e!3088143)))

(declare-fun res!2109181 () Bool)

(assert (=> b!4942671 (= res!2109181 (not ((_ is Leaf!24888) (right!41847 (c!843064 totalInput!685)))))))

(assert (=> b!4942671 (=> res!2109181 e!3088143)))

(declare-fun b!4942672 () Bool)

(assert (=> b!4942672 (= e!3088143 (inv!74033 (right!41847 (c!843064 totalInput!685))))))

(assert (= (and d!1591546 c!843190) b!4942670))

(assert (= (and d!1591546 (not c!843190)) b!4942671))

(assert (= (and b!4942671 (not res!2109181)) b!4942672))

(declare-fun m!5965720 () Bool)

(assert (=> b!4942670 m!5965720))

(declare-fun m!5965722 () Bool)

(assert (=> b!4942672 m!5965722))

(assert (=> b!4942402 d!1591546))

(declare-fun d!1591548 () Bool)

(declare-fun lt!2037398 () List!57033)

(assert (=> d!1591548 (= (++!12434 (t!367553 testedP!110) lt!2037398) (tail!9726 lt!2037216))))

(declare-fun e!3088144 () List!57033)

(assert (=> d!1591548 (= lt!2037398 e!3088144)))

(declare-fun c!843191 () Bool)

(assert (=> d!1591548 (= c!843191 ((_ is Cons!56909) (t!367553 testedP!110)))))

(assert (=> d!1591548 (>= (size!37724 (tail!9726 lt!2037216)) (size!37724 (t!367553 testedP!110)))))

(assert (=> d!1591548 (= (getSuffix!3041 (tail!9726 lt!2037216) (t!367553 testedP!110)) lt!2037398)))

(declare-fun b!4942673 () Bool)

(assert (=> b!4942673 (= e!3088144 (getSuffix!3041 (tail!9726 (tail!9726 lt!2037216)) (t!367553 (t!367553 testedP!110))))))

(declare-fun b!4942674 () Bool)

(assert (=> b!4942674 (= e!3088144 (tail!9726 lt!2037216))))

(assert (= (and d!1591548 c!843191) b!4942673))

(assert (= (and d!1591548 (not c!843191)) b!4942674))

(declare-fun m!5965724 () Bool)

(assert (=> d!1591548 m!5965724))

(assert (=> d!1591548 m!5965300))

(assert (=> d!1591548 m!5965632))

(assert (=> d!1591548 m!5965384))

(assert (=> b!4942673 m!5965300))

(assert (=> b!4942673 m!5965638))

(assert (=> b!4942673 m!5965638))

(declare-fun m!5965726 () Bool)

(assert (=> b!4942673 m!5965726))

(assert (=> b!4942266 d!1591548))

(assert (=> b!4942266 d!1591504))

(declare-fun d!1591550 () Bool)

(declare-fun res!2109186 () Bool)

(declare-fun e!3088147 () Bool)

(assert (=> d!1591550 (=> (not res!2109186) (not e!3088147))))

(assert (=> d!1591550 (= res!2109186 (<= (size!37724 (list!18108 (xs!18296 (c!843064 totalInput!685)))) 512))))

(assert (=> d!1591550 (= (inv!74033 (c!843064 totalInput!685)) e!3088147)))

(declare-fun b!4942679 () Bool)

(declare-fun res!2109187 () Bool)

(assert (=> b!4942679 (=> (not res!2109187) (not e!3088147))))

(assert (=> b!4942679 (= res!2109187 (= (csize!30171 (c!843064 totalInput!685)) (size!37724 (list!18108 (xs!18296 (c!843064 totalInput!685))))))))

(declare-fun b!4942680 () Bool)

(assert (=> b!4942680 (= e!3088147 (and (> (csize!30171 (c!843064 totalInput!685)) 0) (<= (csize!30171 (c!843064 totalInput!685)) 512)))))

(assert (= (and d!1591550 res!2109186) b!4942679))

(assert (= (and b!4942679 res!2109187) b!4942680))

(assert (=> d!1591550 m!5965606))

(assert (=> d!1591550 m!5965606))

(declare-fun m!5965728 () Bool)

(assert (=> d!1591550 m!5965728))

(assert (=> b!4942679 m!5965606))

(assert (=> b!4942679 m!5965606))

(assert (=> b!4942679 m!5965728))

(assert (=> b!4942354 d!1591550))

(assert (=> bm!344902 d!1591476))

(declare-fun d!1591552 () Bool)

(assert (=> d!1591552 (= (isEmpty!30634 (getLanguageWitness!666 z!3568)) (not ((_ is Some!14198) (getLanguageWitness!666 z!3568))))))

(assert (=> d!1591362 d!1591552))

(declare-fun bs!1181414 () Bool)

(declare-fun d!1591556 () Bool)

(assert (= bs!1181414 (and d!1591556 d!1591362)))

(declare-fun lambda!246319 () Int)

(assert (=> bs!1181414 (not (= lambda!246319 lambda!246285))))

(declare-fun bs!1181415 () Bool)

(assert (= bs!1181415 (and d!1591556 b!4942260)))

(assert (=> bs!1181415 (= lambda!246319 lambda!246286)))

(declare-fun bs!1181416 () Bool)

(assert (= bs!1181416 (and d!1591556 b!4942261)))

(assert (=> bs!1181416 (= lambda!246319 lambda!246287)))

(declare-fun bs!1181417 () Bool)

(assert (= bs!1181417 (and d!1591556 d!1591510)))

(assert (=> bs!1181417 (not (= lambda!246319 lambda!246312))))

(declare-fun lt!2037403 () Option!14199)

(declare-fun isDefined!11178 (Option!14199) Bool)

(declare-fun exists!1313 ((InoxSet Context!6202) Int) Bool)

(assert (=> d!1591556 (= (isDefined!11178 lt!2037403) (exists!1313 z!3568 lambda!246319))))

(declare-fun e!3088161 () Option!14199)

(assert (=> d!1591556 (= lt!2037403 e!3088161)))

(declare-fun c!843205 () Bool)

(assert (=> d!1591556 (= c!843205 (exists!1313 z!3568 lambda!246319))))

(assert (=> d!1591556 (= (getLanguageWitness!666 z!3568) lt!2037403)))

(declare-fun b!4942709 () Bool)

(declare-fun getLanguageWitness!668 (Context!6202) Option!14199)

(declare-fun getWitness!644 ((InoxSet Context!6202) Int) Context!6202)

(assert (=> b!4942709 (= e!3088161 (getLanguageWitness!668 (getWitness!644 z!3568 lambda!246319)))))

(declare-fun b!4942710 () Bool)

(assert (=> b!4942710 (= e!3088161 None!14198)))

(assert (= (and d!1591556 c!843205) b!4942709))

(assert (= (and d!1591556 (not c!843205)) b!4942710))

(declare-fun m!5965750 () Bool)

(assert (=> d!1591556 m!5965750))

(declare-fun m!5965752 () Bool)

(assert (=> d!1591556 m!5965752))

(assert (=> d!1591556 m!5965752))

(declare-fun m!5965754 () Bool)

(assert (=> b!4942709 m!5965754))

(assert (=> b!4942709 m!5965754))

(declare-fun m!5965756 () Bool)

(assert (=> b!4942709 m!5965756))

(assert (=> d!1591362 d!1591556))

(declare-fun d!1591568 () Bool)

(declare-fun lt!2037406 () Bool)

(assert (=> d!1591568 (= lt!2037406 (forall!13229 (toList!7981 z!3568) lambda!246285))))

(declare-fun choose!36404 ((InoxSet Context!6202) Int) Bool)

(assert (=> d!1591568 (= lt!2037406 (choose!36404 z!3568 lambda!246285))))

(assert (=> d!1591568 (= (forall!13225 z!3568 lambda!246285) lt!2037406)))

(declare-fun bs!1181418 () Bool)

(assert (= bs!1181418 d!1591568))

(assert (=> bs!1181418 m!5965292))

(assert (=> bs!1181418 m!5965292))

(declare-fun m!5965770 () Bool)

(assert (=> bs!1181418 m!5965770))

(declare-fun m!5965772 () Bool)

(assert (=> bs!1181418 m!5965772))

(assert (=> d!1591362 d!1591568))

(declare-fun d!1591574 () Bool)

(declare-fun c!843210 () Bool)

(assert (=> d!1591574 (= c!843210 ((_ is Nil!56909) lt!2037313))))

(declare-fun e!3088168 () (InoxSet C!27152))

(assert (=> d!1591574 (= (content!10125 lt!2037313) e!3088168)))

(declare-fun b!4942725 () Bool)

(assert (=> b!4942725 (= e!3088168 ((as const (Array C!27152 Bool)) false))))

(declare-fun b!4942726 () Bool)

(assert (=> b!4942726 (= e!3088168 ((_ map or) (store ((as const (Array C!27152 Bool)) false) (h!63357 lt!2037313) true) (content!10125 (t!367553 lt!2037313))))))

(assert (= (and d!1591574 c!843210) b!4942725))

(assert (= (and d!1591574 (not c!843210)) b!4942726))

(declare-fun m!5965774 () Bool)

(assert (=> b!4942726 m!5965774))

(declare-fun m!5965776 () Bool)

(assert (=> b!4942726 m!5965776))

(assert (=> d!1591408 d!1591574))

(declare-fun d!1591576 () Bool)

(declare-fun c!843211 () Bool)

(assert (=> d!1591576 (= c!843211 ((_ is Nil!56909) lt!2037209))))

(declare-fun e!3088169 () (InoxSet C!27152))

(assert (=> d!1591576 (= (content!10125 lt!2037209) e!3088169)))

(declare-fun b!4942727 () Bool)

(assert (=> b!4942727 (= e!3088169 ((as const (Array C!27152 Bool)) false))))

(declare-fun b!4942728 () Bool)

(assert (=> b!4942728 (= e!3088169 ((_ map or) (store ((as const (Array C!27152 Bool)) false) (h!63357 lt!2037209) true) (content!10125 (t!367553 lt!2037209))))))

(assert (= (and d!1591576 c!843211) b!4942727))

(assert (= (and d!1591576 (not c!843211)) b!4942728))

(declare-fun m!5965778 () Bool)

(assert (=> b!4942728 m!5965778))

(assert (=> b!4942728 m!5965676))

(assert (=> d!1591408 d!1591576))

(declare-fun d!1591578 () Bool)

(declare-fun c!843212 () Bool)

(assert (=> d!1591578 (= c!843212 ((_ is Nil!56909) lt!2037217))))

(declare-fun e!3088170 () (InoxSet C!27152))

(assert (=> d!1591578 (= (content!10125 lt!2037217) e!3088170)))

(declare-fun b!4942729 () Bool)

(assert (=> b!4942729 (= e!3088170 ((as const (Array C!27152 Bool)) false))))

(declare-fun b!4942730 () Bool)

(assert (=> b!4942730 (= e!3088170 ((_ map or) (store ((as const (Array C!27152 Bool)) false) (h!63357 lt!2037217) true) (content!10125 (t!367553 lt!2037217))))))

(assert (= (and d!1591578 c!843212) b!4942729))

(assert (= (and d!1591578 (not c!843212)) b!4942730))

(declare-fun m!5965780 () Bool)

(assert (=> b!4942730 m!5965780))

(declare-fun m!5965782 () Bool)

(assert (=> b!4942730 m!5965782))

(assert (=> d!1591408 d!1591578))

(declare-fun b!4942731 () Bool)

(declare-fun res!2109212 () Bool)

(declare-fun e!3088172 () Bool)

(assert (=> b!4942731 (=> (not res!2109212) (not e!3088172))))

(assert (=> b!4942731 (= res!2109212 (isBalanced!4131 (right!41847 (c!843064 (_1!34029 lt!2037330)))))))

(declare-fun b!4942732 () Bool)

(declare-fun e!3088171 () Bool)

(assert (=> b!4942732 (= e!3088171 e!3088172)))

(declare-fun res!2109211 () Bool)

(assert (=> b!4942732 (=> (not res!2109211) (not e!3088172))))

(assert (=> b!4942732 (= res!2109211 (<= (- 1) (- (height!2000 (left!41517 (c!843064 (_1!34029 lt!2037330)))) (height!2000 (right!41847 (c!843064 (_1!34029 lt!2037330)))))))))

(declare-fun b!4942733 () Bool)

(declare-fun res!2109209 () Bool)

(assert (=> b!4942733 (=> (not res!2109209) (not e!3088172))))

(assert (=> b!4942733 (= res!2109209 (isBalanced!4131 (left!41517 (c!843064 (_1!34029 lt!2037330)))))))

(declare-fun b!4942734 () Bool)

(declare-fun res!2109213 () Bool)

(assert (=> b!4942734 (=> (not res!2109213) (not e!3088172))))

(assert (=> b!4942734 (= res!2109213 (not (isEmpty!30637 (left!41517 (c!843064 (_1!34029 lt!2037330))))))))

(declare-fun b!4942735 () Bool)

(declare-fun res!2109210 () Bool)

(assert (=> b!4942735 (=> (not res!2109210) (not e!3088172))))

(assert (=> b!4942735 (= res!2109210 (<= (- (height!2000 (left!41517 (c!843064 (_1!34029 lt!2037330)))) (height!2000 (right!41847 (c!843064 (_1!34029 lt!2037330))))) 1))))

(declare-fun b!4942736 () Bool)

(assert (=> b!4942736 (= e!3088172 (not (isEmpty!30637 (right!41847 (c!843064 (_1!34029 lt!2037330))))))))

(declare-fun d!1591580 () Bool)

(declare-fun res!2109208 () Bool)

(assert (=> d!1591580 (=> res!2109208 e!3088171)))

(assert (=> d!1591580 (= res!2109208 (not ((_ is Node!14970) (c!843064 (_1!34029 lt!2037330)))))))

(assert (=> d!1591580 (= (isBalanced!4131 (c!843064 (_1!34029 lt!2037330))) e!3088171)))

(assert (= (and d!1591580 (not res!2109208)) b!4942732))

(assert (= (and b!4942732 res!2109211) b!4942735))

(assert (= (and b!4942735 res!2109210) b!4942733))

(assert (= (and b!4942733 res!2109209) b!4942731))

(assert (= (and b!4942731 res!2109212) b!4942734))

(assert (= (and b!4942734 res!2109213) b!4942736))

(declare-fun m!5965784 () Bool)

(assert (=> b!4942736 m!5965784))

(declare-fun m!5965786 () Bool)

(assert (=> b!4942734 m!5965786))

(declare-fun m!5965788 () Bool)

(assert (=> b!4942735 m!5965788))

(declare-fun m!5965790 () Bool)

(assert (=> b!4942735 m!5965790))

(assert (=> b!4942732 m!5965788))

(assert (=> b!4942732 m!5965790))

(declare-fun m!5965792 () Bool)

(assert (=> b!4942733 m!5965792))

(declare-fun m!5965794 () Bool)

(assert (=> b!4942731 m!5965794))

(assert (=> d!1591416 d!1591580))

(declare-fun b!4942909 () Bool)

(declare-fun e!3088266 () Int)

(assert (=> b!4942909 (= e!3088266 testedPSize!70)))

(declare-fun b!4942910 () Bool)

(declare-fun e!3088273 () tuple2!61456)

(declare-fun lt!2037473 () List!57033)

(declare-fun lt!2037476 () List!57033)

(assert (=> b!4942910 (= e!3088273 (tuple2!61457 lt!2037473 lt!2037476))))

(declare-fun b!4942911 () Bool)

(declare-fun c!843285 () Bool)

(assert (=> b!4942911 (= c!843285 (= (size!37725 (left!41517 (c!843064 totalInput!685))) testedPSize!70))))

(declare-fun lt!2037469 () Unit!147661)

(declare-fun lt!2037474 () Unit!147661)

(assert (=> b!4942911 (= lt!2037469 lt!2037474)))

(assert (=> b!4942911 (= (splitAtIndex!137 (++!12434 lt!2037473 lt!2037476) testedPSize!70) e!3088273)))

(declare-fun c!843288 () Bool)

(declare-fun call!344928 () Int)

(assert (=> b!4942911 (= c!843288 (= call!344928 testedPSize!70))))

(declare-fun splitAtLemma!39 (List!57033 List!57033 Int) Unit!147661)

(assert (=> b!4942911 (= lt!2037474 (splitAtLemma!39 lt!2037473 lt!2037476 testedPSize!70))))

(assert (=> b!4942911 (= lt!2037476 (list!18106 (right!41847 (c!843064 totalInput!685))))))

(assert (=> b!4942911 (= lt!2037473 (list!18106 (left!41517 (c!843064 totalInput!685))))))

(declare-fun e!3088268 () tuple2!61454)

(declare-fun e!3088269 () tuple2!61454)

(assert (=> b!4942911 (= e!3088268 e!3088269)))

(declare-fun b!4942912 () Bool)

(declare-fun e!3088271 () tuple2!61456)

(assert (=> b!4942912 (= e!3088273 e!3088271)))

(declare-fun c!843289 () Bool)

(assert (=> b!4942912 (= c!843289 (< testedPSize!70 call!344928))))

(declare-fun bm!344922 () Bool)

(declare-fun c!843286 () Bool)

(declare-fun c!843284 () Bool)

(assert (=> bm!344922 (= c!843286 c!843284)))

(declare-fun call!344929 () tuple2!61454)

(assert (=> bm!344922 (= call!344929 (splitAt!375 (ite c!843284 (left!41517 (c!843064 totalInput!685)) (right!41847 (c!843064 totalInput!685))) e!3088266))))

(declare-fun b!4942913 () Bool)

(declare-fun e!3088278 () tuple2!61454)

(assert (=> b!4942913 (= e!3088278 e!3088268)))

(declare-fun c!843290 () Bool)

(assert (=> b!4942913 (= c!843290 ((_ is Leaf!24888) (c!843064 totalInput!685)))))

(declare-fun b!4942914 () Bool)

(declare-fun lt!2037475 () tuple2!61454)

(assert (=> b!4942914 (= lt!2037475 call!344929)))

(declare-fun e!3088276 () tuple2!61454)

(declare-fun call!344930 () Conc!14970)

(assert (=> b!4942914 (= e!3088276 (tuple2!61455 (_1!34030 lt!2037475) call!344930))))

(declare-fun b!4942915 () Bool)

(assert (=> b!4942915 (= e!3088269 e!3088276)))

(assert (=> b!4942915 (= c!843284 (< testedPSize!70 (size!37725 (left!41517 (c!843064 totalInput!685)))))))

(declare-fun b!4942917 () Bool)

(declare-fun res!2109260 () Bool)

(declare-fun e!3088270 () Bool)

(assert (=> b!4942917 (=> (not res!2109260) (not e!3088270))))

(declare-fun lt!2037471 () tuple2!61454)

(assert (=> b!4942917 (= res!2109260 (isBalanced!4131 (_2!34030 lt!2037471)))))

(declare-fun b!4942918 () Bool)

(declare-fun e!3088277 () Int)

(assert (=> b!4942918 (= e!3088277 testedPSize!70)))

(declare-fun b!4942919 () Bool)

(declare-fun e!3088274 () List!57033)

(assert (=> b!4942919 (= e!3088274 (list!18108 (xs!18296 (c!843064 totalInput!685))))))

(declare-fun b!4942920 () Bool)

(declare-fun lt!2037477 () Unit!147661)

(declare-fun lt!2037472 () Unit!147661)

(assert (=> b!4942920 (= lt!2037477 lt!2037472)))

(declare-fun lt!2037468 () List!57033)

(declare-fun slice!794 (List!57033 Int Int) List!57033)

(assert (=> b!4942920 (= (drop!2282 lt!2037468 testedPSize!70) (slice!794 lt!2037468 testedPSize!70 call!344928))))

(declare-fun dropLemma!39 (List!57033 Int) Unit!147661)

(assert (=> b!4942920 (= lt!2037472 (dropLemma!39 lt!2037468 testedPSize!70))))

(assert (=> b!4942920 (= lt!2037468 (list!18108 (xs!18296 (c!843064 totalInput!685))))))

(declare-fun lt!2037480 () tuple2!61456)

(declare-fun call!344932 () tuple2!61456)

(assert (=> b!4942920 (= lt!2037480 call!344932)))

(declare-fun e!3088275 () tuple2!61454)

(declare-fun slice!795 (IArray!30001 Int Int) IArray!30001)

(assert (=> b!4942920 (= e!3088275 (tuple2!61455 (Leaf!24888 (slice!795 (xs!18296 (c!843064 totalInput!685)) 0 testedPSize!70) testedPSize!70) (Leaf!24888 (slice!795 (xs!18296 (c!843064 totalInput!685)) testedPSize!70 (csize!30171 (c!843064 totalInput!685))) (- (csize!30171 (c!843064 totalInput!685)) testedPSize!70))))))

(declare-fun bm!344923 () Bool)

(declare-fun c!843280 () Bool)

(assert (=> bm!344923 (= c!843280 c!843289)))

(declare-fun call!344927 () tuple2!61456)

(assert (=> bm!344923 (= call!344927 call!344932)))

(declare-fun b!4942921 () Bool)

(declare-fun e!3088272 () tuple2!61454)

(assert (=> b!4942921 (= e!3088272 e!3088275)))

(declare-fun c!843287 () Bool)

(assert (=> b!4942921 (= c!843287 (= testedPSize!70 (csize!30171 (c!843064 totalInput!685))))))

(declare-fun bm!344924 () Bool)

(declare-fun c!843282 () Bool)

(assert (=> bm!344924 (= c!843282 c!843290)))

(assert (=> bm!344924 (= call!344932 (splitAtIndex!137 e!3088274 (ite c!843290 testedPSize!70 e!3088277)))))

(declare-fun b!4942922 () Bool)

(declare-fun lt!2037470 () tuple2!61456)

(assert (=> b!4942922 (= lt!2037470 call!344927)))

(declare-fun call!344931 () List!57033)

(assert (=> b!4942922 (= e!3088271 (tuple2!61457 (_1!34031 lt!2037470) call!344931))))

(declare-fun b!4942923 () Bool)

(declare-fun c!843281 () Bool)

(assert (=> b!4942923 (= c!843281 (<= testedPSize!70 0))))

(assert (=> b!4942923 (= e!3088268 e!3088272)))

(declare-fun b!4942924 () Bool)

(assert (=> b!4942924 (= e!3088277 (- testedPSize!70 call!344928))))

(declare-fun b!4942925 () Bool)

(assert (=> b!4942925 (= e!3088269 (tuple2!61455 (left!41517 (c!843064 totalInput!685)) (right!41847 (c!843064 totalInput!685))))))

(declare-fun b!4942926 () Bool)

(assert (=> b!4942926 (= e!3088270 (= (tuple2!61457 (list!18106 (_1!34030 lt!2037471)) (list!18106 (_2!34030 lt!2037471))) (splitAtIndex!137 (list!18106 (c!843064 totalInput!685)) testedPSize!70)))))

(declare-fun b!4942927 () Bool)

(assert (=> b!4942927 (= e!3088275 (tuple2!61455 (c!843064 totalInput!685) Empty!14970))))

(declare-fun lt!2037478 () tuple2!61454)

(declare-fun bm!344925 () Bool)

(declare-fun ++!12435 (Conc!14970 Conc!14970) Conc!14970)

(assert (=> bm!344925 (= call!344930 (++!12435 (ite c!843284 (_2!34030 lt!2037475) (left!41517 (c!843064 totalInput!685))) (ite c!843284 (right!41847 (c!843064 totalInput!685)) (_1!34030 lt!2037478))))))

(declare-fun bm!344926 () Bool)

(declare-fun lt!2037479 () tuple2!61456)

(assert (=> bm!344926 (= call!344931 (++!12434 (ite c!843289 (_2!34031 lt!2037470) lt!2037473) (ite c!843289 lt!2037476 (_1!34031 lt!2037479))))))

(declare-fun bm!344927 () Bool)

(assert (=> bm!344927 (= call!344928 (size!37724 (ite c!843290 lt!2037468 lt!2037473)))))

(declare-fun b!4942928 () Bool)

(assert (=> b!4942928 (= lt!2037479 call!344927)))

(assert (=> b!4942928 (= e!3088271 (tuple2!61457 call!344931 (_2!34031 lt!2037479)))))

(declare-fun b!4942929 () Bool)

(assert (=> b!4942929 (= e!3088278 (tuple2!61455 (c!843064 totalInput!685) (c!843064 totalInput!685)))))

(declare-fun b!4942930 () Bool)

(assert (=> b!4942930 (= lt!2037478 call!344929)))

(assert (=> b!4942930 (= e!3088276 (tuple2!61455 call!344930 (_2!34030 lt!2037478)))))

(declare-fun b!4942931 () Bool)

(assert (=> b!4942931 (= e!3088274 (ite c!843289 lt!2037473 lt!2037476))))

(declare-fun b!4942932 () Bool)

(assert (=> b!4942932 (= e!3088266 (- testedPSize!70 (size!37725 (left!41517 (c!843064 totalInput!685)))))))

(declare-fun d!1591582 () Bool)

(assert (=> d!1591582 e!3088270))

(declare-fun res!2109261 () Bool)

(assert (=> d!1591582 (=> (not res!2109261) (not e!3088270))))

(assert (=> d!1591582 (= res!2109261 (isBalanced!4131 (_1!34030 lt!2037471)))))

(assert (=> d!1591582 (= lt!2037471 e!3088278)))

(declare-fun c!843291 () Bool)

(assert (=> d!1591582 (= c!843291 ((_ is Empty!14970) (c!843064 totalInput!685)))))

(assert (=> d!1591582 (isBalanced!4131 (c!843064 totalInput!685))))

(assert (=> d!1591582 (= (splitAt!375 (c!843064 totalInput!685) testedPSize!70) lt!2037471)))

(declare-fun b!4942916 () Bool)

(assert (=> b!4942916 (= e!3088272 (tuple2!61455 Empty!14970 (c!843064 totalInput!685)))))

(assert (= (and d!1591582 c!843291) b!4942929))

(assert (= (and d!1591582 (not c!843291)) b!4942913))

(assert (= (and b!4942913 c!843290) b!4942923))

(assert (= (and b!4942913 (not c!843290)) b!4942911))

(assert (= (and b!4942923 c!843281) b!4942916))

(assert (= (and b!4942923 (not c!843281)) b!4942921))

(assert (= (and b!4942921 c!843287) b!4942927))

(assert (= (and b!4942921 (not c!843287)) b!4942920))

(assert (= (and b!4942911 c!843288) b!4942910))

(assert (= (and b!4942911 (not c!843288)) b!4942912))

(assert (= (and b!4942912 c!843289) b!4942922))

(assert (= (and b!4942912 (not c!843289)) b!4942928))

(assert (= (or b!4942922 b!4942928) bm!344926))

(assert (= (or b!4942922 b!4942928) bm!344923))

(assert (= (and bm!344923 c!843280) b!4942918))

(assert (= (and bm!344923 (not c!843280)) b!4942924))

(assert (= (and b!4942911 c!843285) b!4942925))

(assert (= (and b!4942911 (not c!843285)) b!4942915))

(assert (= (and b!4942915 c!843284) b!4942914))

(assert (= (and b!4942915 (not c!843284)) b!4942930))

(assert (= (or b!4942914 b!4942930) bm!344925))

(assert (= (or b!4942914 b!4942930) bm!344922))

(assert (= (and bm!344922 c!843286) b!4942909))

(assert (= (and bm!344922 (not c!843286)) b!4942932))

(assert (= (or b!4942920 b!4942911 b!4942912 b!4942924) bm!344927))

(assert (= (or b!4942920 bm!344923) bm!344924))

(assert (= (and bm!344924 c!843282) b!4942919))

(assert (= (and bm!344924 (not c!843282)) b!4942931))

(assert (= (and d!1591582 res!2109261) b!4942917))

(assert (= (and b!4942917 res!2109260) b!4942926))

(assert (=> b!4942932 m!5965542))

(declare-fun m!5965968 () Bool)

(assert (=> bm!344922 m!5965968))

(assert (=> b!4942915 m!5965542))

(declare-fun m!5965970 () Bool)

(assert (=> bm!344927 m!5965970))

(declare-fun m!5965972 () Bool)

(assert (=> b!4942917 m!5965972))

(declare-fun m!5965974 () Bool)

(assert (=> bm!344926 m!5965974))

(assert (=> b!4942919 m!5965606))

(assert (=> b!4942911 m!5965542))

(declare-fun m!5965976 () Bool)

(assert (=> b!4942911 m!5965976))

(assert (=> b!4942911 m!5965548))

(assert (=> b!4942911 m!5965546))

(declare-fun m!5965978 () Bool)

(assert (=> b!4942911 m!5965978))

(assert (=> b!4942911 m!5965976))

(declare-fun m!5965980 () Bool)

(assert (=> b!4942911 m!5965980))

(declare-fun m!5965982 () Bool)

(assert (=> bm!344924 m!5965982))

(declare-fun m!5965984 () Bool)

(assert (=> b!4942926 m!5965984))

(declare-fun m!5965986 () Bool)

(assert (=> b!4942926 m!5965986))

(assert (=> b!4942926 m!5965264))

(assert (=> b!4942926 m!5965264))

(declare-fun m!5965988 () Bool)

(assert (=> b!4942926 m!5965988))

(declare-fun m!5965990 () Bool)

(assert (=> b!4942920 m!5965990))

(declare-fun m!5965992 () Bool)

(assert (=> b!4942920 m!5965992))

(declare-fun m!5965994 () Bool)

(assert (=> b!4942920 m!5965994))

(declare-fun m!5965996 () Bool)

(assert (=> b!4942920 m!5965996))

(declare-fun m!5965998 () Bool)

(assert (=> b!4942920 m!5965998))

(assert (=> b!4942920 m!5965606))

(declare-fun m!5966000 () Bool)

(assert (=> d!1591582 m!5966000))

(assert (=> d!1591582 m!5965278))

(declare-fun m!5966002 () Bool)

(assert (=> bm!344925 m!5966002))

(assert (=> d!1591416 d!1591582))

(declare-fun b!4942937 () Bool)

(declare-fun res!2109266 () Bool)

(declare-fun e!3088282 () Bool)

(assert (=> b!4942937 (=> (not res!2109266) (not e!3088282))))

(assert (=> b!4942937 (= res!2109266 (isBalanced!4131 (right!41847 (c!843064 totalInput!685))))))

(declare-fun b!4942938 () Bool)

(declare-fun e!3088281 () Bool)

(assert (=> b!4942938 (= e!3088281 e!3088282)))

(declare-fun res!2109265 () Bool)

(assert (=> b!4942938 (=> (not res!2109265) (not e!3088282))))

(assert (=> b!4942938 (= res!2109265 (<= (- 1) (- (height!2000 (left!41517 (c!843064 totalInput!685))) (height!2000 (right!41847 (c!843064 totalInput!685))))))))

(declare-fun b!4942939 () Bool)

(declare-fun res!2109263 () Bool)

(assert (=> b!4942939 (=> (not res!2109263) (not e!3088282))))

(assert (=> b!4942939 (= res!2109263 (isBalanced!4131 (left!41517 (c!843064 totalInput!685))))))

(declare-fun b!4942940 () Bool)

(declare-fun res!2109267 () Bool)

(assert (=> b!4942940 (=> (not res!2109267) (not e!3088282))))

(assert (=> b!4942940 (= res!2109267 (not (isEmpty!30637 (left!41517 (c!843064 totalInput!685)))))))

(declare-fun b!4942941 () Bool)

(declare-fun res!2109264 () Bool)

(assert (=> b!4942941 (=> (not res!2109264) (not e!3088282))))

(assert (=> b!4942941 (= res!2109264 (<= (- (height!2000 (left!41517 (c!843064 totalInput!685))) (height!2000 (right!41847 (c!843064 totalInput!685)))) 1))))

(declare-fun b!4942942 () Bool)

(assert (=> b!4942942 (= e!3088282 (not (isEmpty!30637 (right!41847 (c!843064 totalInput!685)))))))

(declare-fun d!1591670 () Bool)

(declare-fun res!2109262 () Bool)

(assert (=> d!1591670 (=> res!2109262 e!3088281)))

(assert (=> d!1591670 (= res!2109262 (not ((_ is Node!14970) (c!843064 totalInput!685))))))

(assert (=> d!1591670 (= (isBalanced!4131 (c!843064 totalInput!685)) e!3088281)))

(assert (= (and d!1591670 (not res!2109262)) b!4942938))

(assert (= (and b!4942938 res!2109265) b!4942941))

(assert (= (and b!4942941 res!2109264) b!4942939))

(assert (= (and b!4942939 res!2109263) b!4942937))

(assert (= (and b!4942937 res!2109266) b!4942940))

(assert (= (and b!4942940 res!2109267) b!4942942))

(declare-fun m!5966004 () Bool)

(assert (=> b!4942942 m!5966004))

(declare-fun m!5966006 () Bool)

(assert (=> b!4942940 m!5966006))

(assert (=> b!4942941 m!5965690))

(assert (=> b!4942941 m!5965692))

(assert (=> b!4942938 m!5965690))

(assert (=> b!4942938 m!5965692))

(declare-fun m!5966008 () Bool)

(assert (=> b!4942939 m!5966008))

(declare-fun m!5966010 () Bool)

(assert (=> b!4942937 m!5966010))

(assert (=> d!1591416 d!1591670))

(assert (=> d!1591360 d!1591670))

(declare-fun b!4942953 () Bool)

(declare-fun e!3088289 () Bool)

(assert (=> b!4942953 (= e!3088289 (>= (size!37724 (tail!9726 lt!2037208)) (size!37724 (tail!9726 testedP!110))))))

(declare-fun d!1591672 () Bool)

(assert (=> d!1591672 e!3088289))

(declare-fun res!2109271 () Bool)

(assert (=> d!1591672 (=> res!2109271 e!3088289)))

(declare-fun lt!2037483 () Bool)

(assert (=> d!1591672 (= res!2109271 (not lt!2037483))))

(declare-fun e!3088287 () Bool)

(assert (=> d!1591672 (= lt!2037483 e!3088287)))

(declare-fun res!2109269 () Bool)

(assert (=> d!1591672 (=> res!2109269 e!3088287)))

(assert (=> d!1591672 (= res!2109269 ((_ is Nil!56909) (tail!9726 testedP!110)))))

(assert (=> d!1591672 (= (isPrefix!5059 (tail!9726 testedP!110) (tail!9726 lt!2037208)) lt!2037483)))

(declare-fun b!4942950 () Bool)

(declare-fun e!3088288 () Bool)

(assert (=> b!4942950 (= e!3088287 e!3088288)))

(declare-fun res!2109270 () Bool)

(assert (=> b!4942950 (=> (not res!2109270) (not e!3088288))))

(assert (=> b!4942950 (= res!2109270 (not ((_ is Nil!56909) (tail!9726 lt!2037208))))))

(declare-fun b!4942952 () Bool)

(assert (=> b!4942952 (= e!3088288 (isPrefix!5059 (tail!9726 (tail!9726 testedP!110)) (tail!9726 (tail!9726 lt!2037208))))))

(declare-fun b!4942951 () Bool)

(declare-fun res!2109272 () Bool)

(assert (=> b!4942951 (=> (not res!2109272) (not e!3088288))))

(assert (=> b!4942951 (= res!2109272 (= (head!10588 (tail!9726 testedP!110)) (head!10588 (tail!9726 lt!2037208))))))

(assert (= (and d!1591672 (not res!2109269)) b!4942950))

(assert (= (and b!4942950 res!2109270) b!4942951))

(assert (= (and b!4942951 res!2109272) b!4942952))

(assert (= (and d!1591672 (not res!2109271)) b!4942953))

(assert (=> b!4942953 m!5965314))

(declare-fun m!5966018 () Bool)

(assert (=> b!4942953 m!5966018))

(assert (=> b!4942953 m!5965304))

(assert (=> b!4942953 m!5965634))

(assert (=> b!4942952 m!5965304))

(assert (=> b!4942952 m!5965636))

(assert (=> b!4942952 m!5965314))

(declare-fun m!5966022 () Bool)

(assert (=> b!4942952 m!5966022))

(assert (=> b!4942952 m!5965636))

(assert (=> b!4942952 m!5966022))

(declare-fun m!5966024 () Bool)

(assert (=> b!4942952 m!5966024))

(assert (=> b!4942951 m!5965304))

(assert (=> b!4942951 m!5965642))

(assert (=> b!4942951 m!5965314))

(declare-fun m!5966026 () Bool)

(assert (=> b!4942951 m!5966026))

(assert (=> b!4942282 d!1591672))

(assert (=> b!4942282 d!1591502))

(declare-fun d!1591676 () Bool)

(assert (=> d!1591676 (= (tail!9726 lt!2037208) (t!367553 lt!2037208))))

(assert (=> b!4942282 d!1591676))

(declare-fun bs!1181442 () Bool)

(declare-fun d!1591678 () Bool)

(assert (= bs!1181442 (and d!1591678 b!4942261)))

(declare-fun lambda!246336 () Int)

(assert (=> bs!1181442 (not (= lambda!246336 lambda!246287))))

(declare-fun bs!1181443 () Bool)

(assert (= bs!1181443 (and d!1591678 b!4942260)))

(assert (=> bs!1181443 (not (= lambda!246336 lambda!246286))))

(declare-fun bs!1181444 () Bool)

(assert (= bs!1181444 (and d!1591678 d!1591362)))

(assert (=> bs!1181444 (not (= lambda!246336 lambda!246285))))

(declare-fun bs!1181445 () Bool)

(assert (= bs!1181445 (and d!1591678 d!1591556)))

(assert (=> bs!1181445 (not (= lambda!246336 lambda!246319))))

(declare-fun bs!1181446 () Bool)

(assert (= bs!1181446 (and d!1591678 d!1591510)))

(assert (=> bs!1181446 (= (= (ite c!843083 lambda!246286 lambda!246287) lambda!246285) (= lambda!246336 lambda!246312))))

(assert (=> d!1591678 true))

(assert (=> d!1591678 (< (dynLambda!23032 order!25999 (ite c!843083 lambda!246286 lambda!246287)) (dynLambda!23032 order!25999 lambda!246336))))

(assert (=> d!1591678 (= (exists!1311 (ite c!843083 lt!2037241 lt!2037248) (ite c!843083 lambda!246286 lambda!246287)) (not (forall!13229 (ite c!843083 lt!2037241 lt!2037248) lambda!246336)))))

(declare-fun bs!1181447 () Bool)

(assert (= bs!1181447 d!1591678))

(declare-fun m!5966028 () Bool)

(assert (=> bs!1181447 m!5966028))

(assert (=> bm!344892 d!1591678))

(declare-fun d!1591680 () Bool)

(declare-fun lt!2037486 () Int)

(assert (=> d!1591680 (>= lt!2037486 0)))

(declare-fun e!3088292 () Int)

(assert (=> d!1591680 (= lt!2037486 e!3088292)))

(declare-fun c!843297 () Bool)

(assert (=> d!1591680 (= c!843297 ((_ is Nil!56909) lt!2037293))))

(assert (=> d!1591680 (= (size!37724 lt!2037293) lt!2037486)))

(declare-fun b!4942954 () Bool)

(assert (=> b!4942954 (= e!3088292 0)))

(declare-fun b!4942955 () Bool)

(assert (=> b!4942955 (= e!3088292 (+ 1 (size!37724 (t!367553 lt!2037293))))))

(assert (= (and d!1591680 c!843297) b!4942954))

(assert (= (and d!1591680 (not c!843297)) b!4942955))

(declare-fun m!5966030 () Bool)

(assert (=> b!4942955 m!5966030))

(assert (=> b!4942324 d!1591680))

(declare-fun d!1591682 () Bool)

(declare-fun c!843298 () Bool)

(assert (=> d!1591682 (= c!843298 ((_ is Nil!56909) lt!2037293))))

(declare-fun e!3088293 () (InoxSet C!27152))

(assert (=> d!1591682 (= (content!10125 lt!2037293) e!3088293)))

(declare-fun b!4942956 () Bool)

(assert (=> b!4942956 (= e!3088293 ((as const (Array C!27152 Bool)) false))))

(declare-fun b!4942957 () Bool)

(assert (=> b!4942957 (= e!3088293 ((_ map or) (store ((as const (Array C!27152 Bool)) false) (h!63357 lt!2037293) true) (content!10125 (t!367553 lt!2037293))))))

(assert (= (and d!1591682 c!843298) b!4942956))

(assert (= (and d!1591682 (not c!843298)) b!4942957))

(declare-fun m!5966032 () Bool)

(assert (=> b!4942957 m!5966032))

(declare-fun m!5966034 () Bool)

(assert (=> b!4942957 m!5966034))

(assert (=> d!1591384 d!1591682))

(declare-fun d!1591684 () Bool)

(declare-fun c!843299 () Bool)

(assert (=> d!1591684 (= c!843299 ((_ is Nil!56909) lt!2037216))))

(declare-fun e!3088294 () (InoxSet C!27152))

(assert (=> d!1591684 (= (content!10125 lt!2037216) e!3088294)))

(declare-fun b!4942958 () Bool)

(assert (=> b!4942958 (= e!3088294 ((as const (Array C!27152 Bool)) false))))

(declare-fun b!4942959 () Bool)

(assert (=> b!4942959 (= e!3088294 ((_ map or) (store ((as const (Array C!27152 Bool)) false) (h!63357 lt!2037216) true) (content!10125 (t!367553 lt!2037216))))))

(assert (= (and d!1591684 c!843299) b!4942958))

(assert (= (and d!1591684 (not c!843299)) b!4942959))

(declare-fun m!5966036 () Bool)

(assert (=> b!4942959 m!5966036))

(declare-fun m!5966038 () Bool)

(assert (=> b!4942959 m!5966038))

(assert (=> d!1591384 d!1591684))

(assert (=> b!4942279 d!1591476))

(assert (=> b!4942279 d!1591402))

(declare-fun bs!1181455 () Bool)

(declare-fun d!1591686 () Bool)

(assert (= bs!1181455 (and d!1591686 b!4942261)))

(declare-fun lambda!246342 () Int)

(assert (=> bs!1181455 (not (= lambda!246342 lambda!246287))))

(declare-fun bs!1181456 () Bool)

(assert (= bs!1181456 (and d!1591686 b!4942260)))

(assert (=> bs!1181456 (not (= lambda!246342 lambda!246286))))

(declare-fun bs!1181457 () Bool)

(assert (= bs!1181457 (and d!1591686 d!1591362)))

(assert (=> bs!1181457 (not (= lambda!246342 lambda!246285))))

(declare-fun bs!1181458 () Bool)

(assert (= bs!1181458 (and d!1591686 d!1591556)))

(assert (=> bs!1181458 (not (= lambda!246342 lambda!246319))))

(declare-fun bs!1181459 () Bool)

(assert (= bs!1181459 (and d!1591686 d!1591678)))

(assert (=> bs!1181459 (= (= lambda!246285 (ite c!843083 lambda!246286 lambda!246287)) (= lambda!246342 lambda!246336))))

(declare-fun bs!1181460 () Bool)

(assert (= bs!1181460 (and d!1591686 d!1591510)))

(assert (=> bs!1181460 (= lambda!246342 lambda!246312)))

(assert (=> d!1591686 true))

(assert (=> d!1591686 (< (dynLambda!23032 order!25999 lambda!246285) (dynLambda!23032 order!25999 lambda!246342))))

(assert (=> d!1591686 (exists!1311 lt!2037241 lambda!246342)))

(declare-fun lt!2037490 () Unit!147661)

(declare-fun choose!36406 (List!57035 Int) Unit!147661)

(assert (=> d!1591686 (= lt!2037490 (choose!36406 lt!2037241 lambda!246285))))

(assert (=> d!1591686 (not (forall!13229 lt!2037241 lambda!246285))))

(assert (=> d!1591686 (= (lemmaNotForallThenExists!219 lt!2037241 lambda!246285) lt!2037490)))

(declare-fun bs!1181461 () Bool)

(assert (= bs!1181461 d!1591686))

(declare-fun m!5966058 () Bool)

(assert (=> bs!1181461 m!5966058))

(declare-fun m!5966060 () Bool)

(assert (=> bs!1181461 m!5966060))

(declare-fun m!5966062 () Bool)

(assert (=> bs!1181461 m!5966062))

(assert (=> b!4942260 d!1591686))

(declare-fun bm!344931 () Bool)

(declare-fun call!344936 () Int)

(assert (=> bm!344931 (= call!344936 (size!37724 (t!367553 lt!2037216)))))

(declare-fun b!4942966 () Bool)

(declare-fun e!3088299 () List!57033)

(assert (=> b!4942966 (= e!3088299 (t!367553 lt!2037216))))

(declare-fun b!4942967 () Bool)

(declare-fun e!3088303 () List!57033)

(assert (=> b!4942967 (= e!3088303 Nil!56909)))

(declare-fun b!4942968 () Bool)

(assert (=> b!4942968 (= e!3088303 e!3088299)))

(declare-fun c!843303 () Bool)

(assert (=> b!4942968 (= c!843303 (<= (- testedPSize!70 1) 0))))

(declare-fun d!1591692 () Bool)

(declare-fun e!3088302 () Bool)

(assert (=> d!1591692 e!3088302))

(declare-fun res!2109279 () Bool)

(assert (=> d!1591692 (=> (not res!2109279) (not e!3088302))))

(declare-fun lt!2037491 () List!57033)

(assert (=> d!1591692 (= res!2109279 (= ((_ map implies) (content!10125 lt!2037491) (content!10125 (t!367553 lt!2037216))) ((as const (InoxSet C!27152)) true)))))

(assert (=> d!1591692 (= lt!2037491 e!3088303)))

(declare-fun c!843301 () Bool)

(assert (=> d!1591692 (= c!843301 ((_ is Nil!56909) (t!367553 lt!2037216)))))

(assert (=> d!1591692 (= (drop!2282 (t!367553 lt!2037216) (- testedPSize!70 1)) lt!2037491)))

(declare-fun b!4942969 () Bool)

(declare-fun e!3088301 () Int)

(assert (=> b!4942969 (= e!3088301 (- call!344936 (- testedPSize!70 1)))))

(declare-fun b!4942970 () Bool)

(declare-fun e!3088300 () Int)

(assert (=> b!4942970 (= e!3088300 e!3088301)))

(declare-fun c!843300 () Bool)

(assert (=> b!4942970 (= c!843300 (>= (- testedPSize!70 1) call!344936))))

(declare-fun b!4942971 () Bool)

(assert (=> b!4942971 (= e!3088300 call!344936)))

(declare-fun b!4942972 () Bool)

(assert (=> b!4942972 (= e!3088299 (drop!2282 (t!367553 (t!367553 lt!2037216)) (- (- testedPSize!70 1) 1)))))

(declare-fun b!4942973 () Bool)

(assert (=> b!4942973 (= e!3088301 0)))

(declare-fun b!4942974 () Bool)

(assert (=> b!4942974 (= e!3088302 (= (size!37724 lt!2037491) e!3088300))))

(declare-fun c!843302 () Bool)

(assert (=> b!4942974 (= c!843302 (<= (- testedPSize!70 1) 0))))

(assert (= (and d!1591692 c!843301) b!4942967))

(assert (= (and d!1591692 (not c!843301)) b!4942968))

(assert (= (and b!4942968 c!843303) b!4942966))

(assert (= (and b!4942968 (not c!843303)) b!4942972))

(assert (= (and d!1591692 res!2109279) b!4942974))

(assert (= (and b!4942974 c!843302) b!4942971))

(assert (= (and b!4942974 (not c!843302)) b!4942970))

(assert (= (and b!4942970 c!843300) b!4942973))

(assert (= (and b!4942970 (not c!843300)) b!4942969))

(assert (= (or b!4942971 b!4942970 b!4942969) bm!344931))

(assert (=> bm!344931 m!5965590))

(declare-fun m!5966064 () Bool)

(assert (=> d!1591692 m!5966064))

(assert (=> d!1591692 m!5966038))

(declare-fun m!5966066 () Bool)

(assert (=> b!4942972 m!5966066))

(declare-fun m!5966068 () Bool)

(assert (=> b!4942974 m!5966068))

(assert (=> b!4942322 d!1591692))

(assert (=> b!4942277 d!1591506))

(assert (=> b!4942277 d!1591458))

(declare-fun d!1591694 () Bool)

(assert (=> d!1591694 (= testedSuffix!70 lt!2037210)))

(assert (=> d!1591694 true))

(declare-fun _$63!1219 () Unit!147661)

(assert (=> d!1591694 (= (choose!36393 testedP!110 testedSuffix!70 testedP!110 lt!2037210 lt!2037216) _$63!1219)))

(assert (=> d!1591364 d!1591694))

(assert (=> d!1591364 d!1591368))

(declare-fun b!4942975 () Bool)

(declare-fun e!3088304 () Bool)

(declare-fun tp!1386554 () Bool)

(declare-fun tp!1386555 () Bool)

(assert (=> b!4942975 (= e!3088304 (and tp!1386554 tp!1386555))))

(assert (=> b!4942387 (= tp!1386509 e!3088304)))

(assert (= (and b!4942387 ((_ is Cons!56910) (exprs!3601 setElem!27933))) b!4942975))

(declare-fun b!4942976 () Bool)

(declare-fun tp!1386557 () Bool)

(declare-fun tp!1386558 () Bool)

(declare-fun e!3088306 () Bool)

(assert (=> b!4942976 (= e!3088306 (and (inv!74030 (left!41517 (left!41517 (c!843064 totalInput!685)))) tp!1386557 (inv!74030 (right!41847 (left!41517 (c!843064 totalInput!685)))) tp!1386558))))

(declare-fun b!4942978 () Bool)

(declare-fun e!3088305 () Bool)

(declare-fun tp!1386556 () Bool)

(assert (=> b!4942978 (= e!3088305 tp!1386556)))

(declare-fun b!4942977 () Bool)

(assert (=> b!4942977 (= e!3088306 (and (inv!74036 (xs!18296 (left!41517 (c!843064 totalInput!685)))) e!3088305))))

(assert (=> b!4942402 (= tp!1386521 (and (inv!74030 (left!41517 (c!843064 totalInput!685))) e!3088306))))

(assert (= (and b!4942402 ((_ is Node!14970) (left!41517 (c!843064 totalInput!685)))) b!4942976))

(assert (= b!4942977 b!4942978))

(assert (= (and b!4942402 ((_ is Leaf!24888) (left!41517 (c!843064 totalInput!685)))) b!4942977))

(declare-fun m!5966070 () Bool)

(assert (=> b!4942976 m!5966070))

(declare-fun m!5966072 () Bool)

(assert (=> b!4942976 m!5966072))

(declare-fun m!5966074 () Bool)

(assert (=> b!4942977 m!5966074))

(assert (=> b!4942402 m!5965440))

(declare-fun tp!1386560 () Bool)

(declare-fun b!4942979 () Bool)

(declare-fun e!3088308 () Bool)

(declare-fun tp!1386561 () Bool)

(assert (=> b!4942979 (= e!3088308 (and (inv!74030 (left!41517 (right!41847 (c!843064 totalInput!685)))) tp!1386560 (inv!74030 (right!41847 (right!41847 (c!843064 totalInput!685)))) tp!1386561))))

(declare-fun b!4942981 () Bool)

(declare-fun e!3088307 () Bool)

(declare-fun tp!1386559 () Bool)

(assert (=> b!4942981 (= e!3088307 tp!1386559)))

(declare-fun b!4942980 () Bool)

(assert (=> b!4942980 (= e!3088308 (and (inv!74036 (xs!18296 (right!41847 (c!843064 totalInput!685)))) e!3088307))))

(assert (=> b!4942402 (= tp!1386522 (and (inv!74030 (right!41847 (c!843064 totalInput!685))) e!3088308))))

(assert (= (and b!4942402 ((_ is Node!14970) (right!41847 (c!843064 totalInput!685)))) b!4942979))

(assert (= b!4942980 b!4942981))

(assert (= (and b!4942402 ((_ is Leaf!24888) (right!41847 (c!843064 totalInput!685)))) b!4942980))

(declare-fun m!5966076 () Bool)

(assert (=> b!4942979 m!5966076))

(declare-fun m!5966078 () Bool)

(assert (=> b!4942979 m!5966078))

(declare-fun m!5966080 () Bool)

(assert (=> b!4942980 m!5966080))

(assert (=> b!4942402 m!5965442))

(declare-fun b!4942993 () Bool)

(declare-fun e!3088311 () Bool)

(declare-fun tp!1386572 () Bool)

(declare-fun tp!1386573 () Bool)

(assert (=> b!4942993 (= e!3088311 (and tp!1386572 tp!1386573))))

(assert (=> b!4942417 (= tp!1386527 e!3088311)))

(declare-fun b!4942994 () Bool)

(declare-fun tp!1386574 () Bool)

(assert (=> b!4942994 (= e!3088311 tp!1386574)))

(declare-fun b!4942992 () Bool)

(assert (=> b!4942992 (= e!3088311 tp_is_empty!36099)))

(declare-fun b!4942995 () Bool)

(declare-fun tp!1386576 () Bool)

(declare-fun tp!1386575 () Bool)

(assert (=> b!4942995 (= e!3088311 (and tp!1386576 tp!1386575))))

(assert (= (and b!4942417 ((_ is ElementMatch!13459) (h!63358 (exprs!3601 setElem!27930)))) b!4942992))

(assert (= (and b!4942417 ((_ is Concat!22032) (h!63358 (exprs!3601 setElem!27930)))) b!4942993))

(assert (= (and b!4942417 ((_ is Star!13459) (h!63358 (exprs!3601 setElem!27930)))) b!4942994))

(assert (= (and b!4942417 ((_ is Union!13459) (h!63358 (exprs!3601 setElem!27930)))) b!4942995))

(declare-fun b!4942996 () Bool)

(declare-fun e!3088312 () Bool)

(declare-fun tp!1386577 () Bool)

(declare-fun tp!1386578 () Bool)

(assert (=> b!4942996 (= e!3088312 (and tp!1386577 tp!1386578))))

(assert (=> b!4942417 (= tp!1386528 e!3088312)))

(assert (= (and b!4942417 ((_ is Cons!56910) (t!367554 (exprs!3601 setElem!27930)))) b!4942996))

(declare-fun condSetEmpty!27937 () Bool)

(assert (=> setNonEmpty!27933 (= condSetEmpty!27937 (= setRest!27933 ((as const (Array Context!6202 Bool)) false)))))

(declare-fun setRes!27937 () Bool)

(assert (=> setNonEmpty!27933 (= tp!1386508 setRes!27937)))

(declare-fun setIsEmpty!27937 () Bool)

(assert (=> setIsEmpty!27937 setRes!27937))

(declare-fun setNonEmpty!27937 () Bool)

(declare-fun setElem!27937 () Context!6202)

(declare-fun e!3088313 () Bool)

(declare-fun tp!1386579 () Bool)

(assert (=> setNonEmpty!27937 (= setRes!27937 (and tp!1386579 (inv!74031 setElem!27937) e!3088313))))

(declare-fun setRest!27937 () (InoxSet Context!6202))

(assert (=> setNonEmpty!27937 (= setRest!27933 ((_ map or) (store ((as const (Array Context!6202 Bool)) false) setElem!27937 true) setRest!27937))))

(declare-fun b!4942997 () Bool)

(declare-fun tp!1386580 () Bool)

(assert (=> b!4942997 (= e!3088313 tp!1386580)))

(assert (= (and setNonEmpty!27933 condSetEmpty!27937) setIsEmpty!27937))

(assert (= (and setNonEmpty!27933 (not condSetEmpty!27937)) setNonEmpty!27937))

(assert (= setNonEmpty!27937 b!4942997))

(declare-fun m!5966082 () Bool)

(assert (=> setNonEmpty!27937 m!5966082))

(declare-fun b!4942998 () Bool)

(declare-fun e!3088314 () Bool)

(declare-fun tp!1386581 () Bool)

(assert (=> b!4942998 (= e!3088314 (and tp_is_empty!36099 tp!1386581))))

(assert (=> b!4942393 (= tp!1386513 e!3088314)))

(assert (= (and b!4942393 ((_ is Cons!56909) (t!367553 (t!367553 testedSuffix!70)))) b!4942998))

(declare-fun b!4942999 () Bool)

(declare-fun e!3088315 () Bool)

(declare-fun tp!1386582 () Bool)

(assert (=> b!4942999 (= e!3088315 (and tp_is_empty!36099 tp!1386582))))

(assert (=> b!4942404 (= tp!1386520 e!3088315)))

(assert (= (and b!4942404 ((_ is Cons!56909) (innerList!15058 (xs!18296 (c!843064 totalInput!685))))) b!4942999))

(declare-fun b!4943000 () Bool)

(declare-fun e!3088316 () Bool)

(declare-fun tp!1386583 () Bool)

(assert (=> b!4943000 (= e!3088316 (and tp_is_empty!36099 tp!1386583))))

(assert (=> b!4942392 (= tp!1386512 e!3088316)))

(assert (= (and b!4942392 ((_ is Cons!56909) (t!367553 (t!367553 testedP!110)))) b!4943000))

(declare-fun b_lambda!196417 () Bool)

(assert (= b_lambda!196413 (or d!1591394 b_lambda!196417)))

(declare-fun bs!1181462 () Bool)

(declare-fun d!1591696 () Bool)

(assert (= bs!1181462 (and d!1591696 d!1591394)))

(declare-fun validRegex!5954 (Regex!13459) Bool)

(assert (=> bs!1181462 (= (dynLambda!23033 lambda!246305 (h!63358 (exprs!3601 setElem!27930))) (validRegex!5954 (h!63358 (exprs!3601 setElem!27930))))))

(declare-fun m!5966084 () Bool)

(assert (=> bs!1181462 m!5966084))

(assert (=> b!4942632 d!1591696))

(check-sat (not b!4942646) (not b!4942633) (not bm!344922) (not bs!1181462) (not b!4942731) (not b!4942953) (not b!4942601) (not b!4942938) (not b!4942673) (not b!4942911) (not b!4942733) (not b!4942526) (not b!4942531) (not b!4942622) (not b!4942574) (not b!4942728) (not b!4942573) (not b!4942939) (not b!4942979) (not b!4942543) (not d!1591492) (not b!4942998) (not b!4942644) (not b!4943000) (not d!1591686) (not b!4942679) (not b!4942972) (not b!4942581) (not d!1591582) (not d!1591478) (not b!4942508) (not b!4942562) (not bm!344931) (not d!1591522) (not b!4942529) (not b!4942940) (not b!4942978) (not b!4942660) (not b!4942974) (not d!1591692) (not b!4942736) (not b!4942571) (not d!1591536) (not b!4942664) (not bm!344926) (not b!4942920) (not setNonEmpty!27937) (not b!4942957) (not b!4942997) (not b!4942994) (not b!4942996) (not b!4942542) (not b!4942666) (not b!4942732) (not b!4942995) (not b!4942565) (not b_lambda!196417) (not b!4942659) (not d!1591550) (not b!4942926) (not d!1591488) (not b!4942613) (not b!4942919) (not b!4942941) (not d!1591456) (not b!4942510) (not b!4942976) (not b!4942641) (not b!4942726) (not d!1591556) (not d!1591490) (not b!4942667) (not d!1591494) (not b!4942980) (not b!4942955) (not b!4942663) (not b!4942623) (not b!4942599) (not b!4942977) (not d!1591486) (not d!1591518) (not b!4942575) (not d!1591530) (not b!4942559) (not b!4942709) (not b!4942545) (not b!4942981) (not b!4942606) (not b!4942561) (not d!1591454) (not b!4942734) (not bm!344908) (not d!1591498) (not b!4942999) (not b!4942672) (not b!4942975) (not b!4942557) (not b!4942617) (not d!1591474) (not b!4942951) (not b!4942603) (not d!1591524) (not b!4942730) (not b!4942937) (not b!4942578) (not b!4942625) (not b!4942509) (not b!4942620) (not b!4942528) (not b!4942579) (not b!4942600) (not b!4942952) (not d!1591548) (not b!4942582) (not b!4942627) (not d!1591542) (not b!4942993) (not b!4942615) (not d!1591482) (not b!4942626) (not b!4942942) (not b!4942549) (not b!4942555) (not d!1591526) (not b!4942915) (not b!4942612) (not b!4942932) (not b!4942547) (not b!4942605) (not b!4942402) (not d!1591678) (not b!4942661) (not b!4942735) (not bm!344927) (not b!4942670) (not bm!344925) (not d!1591568) (not b!4942607) tp_is_empty!36099 (not b!4942917) (not b!4942959) (not bm!344924) (not b!4942662) (not d!1591510) (not b!4942669))
(check-sat)
