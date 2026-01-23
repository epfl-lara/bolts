; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!686658 () Bool)

(assert start!686658)

(declare-fun b!7069933 () Bool)

(assert (=> b!7069933 true))

(declare-fun b!7069925 () Bool)

(assert (=> b!7069925 true))

(declare-fun b!7069917 () Bool)

(assert (=> b!7069917 true))

(declare-fun b!7069912 () Bool)

(declare-fun e!4250433 () Bool)

(declare-fun e!4250442 () Bool)

(assert (=> b!7069912 (= e!4250433 e!4250442)))

(declare-fun res!2887195 () Bool)

(assert (=> b!7069912 (=> res!2887195 e!4250442)))

(declare-datatypes ((C!35542 0))(
  ( (C!35543 (val!27473 Int)) )
))
(declare-datatypes ((Regex!17636 0))(
  ( (ElementMatch!17636 (c!1318647 C!35542)) (Concat!26481 (regOne!35784 Regex!17636) (regTwo!35784 Regex!17636)) (EmptyExpr!17636) (Star!17636 (reg!17965 Regex!17636)) (EmptyLang!17636) (Union!17636 (regOne!35785 Regex!17636) (regTwo!35785 Regex!17636)) )
))
(declare-datatypes ((List!68434 0))(
  ( (Nil!68310) (Cons!68310 (h!74758 Regex!17636) (t!382217 List!68434)) )
))
(declare-datatypes ((Context!13264 0))(
  ( (Context!13265 (exprs!7132 List!68434)) )
))
(declare-fun lt!2544289 () (Set Context!13264))

(declare-datatypes ((List!68435 0))(
  ( (Nil!68311) (Cons!68311 (h!74759 C!35542) (t!382218 List!68435)) )
))
(declare-datatypes ((tuple2!68246 0))(
  ( (tuple2!68247 (_1!37426 List!68435) (_2!37426 List!68435)) )
))
(declare-fun lt!2544295 () tuple2!68246)

(declare-fun matchZipper!3176 ((Set Context!13264) List!68435) Bool)

(assert (=> b!7069912 (= res!2887195 (not (matchZipper!3176 lt!2544289 (_1!37426 lt!2544295))))))

(declare-datatypes ((Option!16955 0))(
  ( (None!16954) (Some!16954 (v!53248 tuple2!68246)) )
))
(declare-fun lt!2544299 () Option!16955)

(declare-fun get!23924 (Option!16955) tuple2!68246)

(assert (=> b!7069912 (= lt!2544295 (get!23924 lt!2544299))))

(declare-fun isDefined!13656 (Option!16955) Bool)

(assert (=> b!7069912 (isDefined!13656 lt!2544299)))

(declare-fun lt!2544286 () (Set Context!13264))

(declare-fun s!7408 () List!68435)

(declare-fun findConcatSeparationZippers!471 ((Set Context!13264) (Set Context!13264) List!68435 List!68435 List!68435) Option!16955)

(assert (=> b!7069912 (= lt!2544299 (findConcatSeparationZippers!471 lt!2544289 lt!2544286 Nil!68311 (t!382218 s!7408) (t!382218 s!7408)))))

(declare-fun ct2!306 () Context!13264)

(assert (=> b!7069912 (= lt!2544286 (set.insert ct2!306 (as set.empty (Set Context!13264))))))

(declare-datatypes ((Unit!161982 0))(
  ( (Unit!161983) )
))
(declare-fun lt!2544265 () Unit!161982)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!459 ((Set Context!13264) Context!13264 List!68435) Unit!161982)

(assert (=> b!7069912 (= lt!2544265 (lemmaConcatZipperMatchesStringThenFindConcatDefined!459 lt!2544289 ct2!306 (t!382218 s!7408)))))

(declare-fun lt!2544293 () Unit!161982)

(declare-fun lambda!425039 () Int)

(declare-fun lt!2544296 () List!68434)

(declare-fun lemmaConcatPreservesForall!947 (List!68434 List!68434 Int) Unit!161982)

(assert (=> b!7069912 (= lt!2544293 (lemmaConcatPreservesForall!947 lt!2544296 (exprs!7132 ct2!306) lambda!425039))))

(declare-fun lt!2544291 () (Set Context!13264))

(declare-fun appendTo!757 ((Set Context!13264) Context!13264) (Set Context!13264))

(assert (=> b!7069912 (= lt!2544291 (appendTo!757 lt!2544289 ct2!306))))

(declare-fun lt!2544288 () Context!13264)

(declare-fun lt!2544267 () Context!13264)

(declare-fun derivationStepZipperDown!2270 (Regex!17636 Context!13264 C!35542) (Set Context!13264))

(assert (=> b!7069912 (= lt!2544289 (derivationStepZipperDown!2270 (h!74758 (exprs!7132 lt!2544288)) lt!2544267 (h!74759 s!7408)))))

(declare-fun lt!2544276 () Unit!161982)

(assert (=> b!7069912 (= lt!2544276 (lemmaConcatPreservesForall!947 lt!2544296 (exprs!7132 ct2!306) lambda!425039))))

(declare-fun lt!2544264 () Unit!161982)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!107 (Context!13264 Regex!17636 C!35542 Context!13264) Unit!161982)

(assert (=> b!7069912 (= lt!2544264 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!107 lt!2544267 (h!74758 (exprs!7132 lt!2544288)) (h!74759 s!7408) ct2!306))))

(declare-fun b!7069913 () Bool)

(declare-fun e!4250443 () Bool)

(assert (=> b!7069913 (= e!4250442 e!4250443)))

(declare-fun res!2887185 () Bool)

(assert (=> b!7069913 (=> res!2887185 e!4250443)))

(declare-fun lt!2544279 () (Set Context!13264))

(declare-fun lt!2544275 () (Set Context!13264))

(assert (=> b!7069913 (= res!2887185 (not (= lt!2544279 lt!2544275)))))

(declare-fun lt!2544263 () (Set Context!13264))

(declare-fun lambda!425040 () Int)

(declare-fun flatMap!2562 ((Set Context!13264) Int) (Set Context!13264))

(declare-fun derivationStepZipperUp!2220 (Context!13264 C!35542) (Set Context!13264))

(assert (=> b!7069913 (= (flatMap!2562 lt!2544263 lambda!425040) (derivationStepZipperUp!2220 lt!2544288 (h!74759 s!7408)))))

(declare-fun lt!2544270 () Unit!161982)

(declare-fun lemmaFlatMapOnSingletonSet!2071 ((Set Context!13264) Context!13264 Int) Unit!161982)

(assert (=> b!7069913 (= lt!2544270 (lemmaFlatMapOnSingletonSet!2071 lt!2544263 lt!2544288 lambda!425040))))

(assert (=> b!7069913 (= lt!2544275 (derivationStepZipperUp!2220 lt!2544288 (h!74759 s!7408)))))

(declare-fun derivationStepZipper!3086 ((Set Context!13264) C!35542) (Set Context!13264))

(assert (=> b!7069913 (= lt!2544279 (derivationStepZipper!3086 lt!2544263 (h!74759 s!7408)))))

(assert (=> b!7069913 (= lt!2544263 (set.insert lt!2544288 (as set.empty (Set Context!13264))))))

(declare-fun b!7069914 () Bool)

(declare-fun e!4250440 () Bool)

(declare-fun lt!2544274 () (Set Context!13264))

(assert (=> b!7069914 (= e!4250440 (not (matchZipper!3176 lt!2544274 (_1!37426 lt!2544295))))))

(declare-fun b!7069915 () Bool)

(declare-fun e!4250429 () Bool)

(assert (=> b!7069915 (= e!4250429 e!4250433)))

(declare-fun res!2887203 () Bool)

(assert (=> b!7069915 (=> res!2887203 e!4250433)))

(declare-fun lt!2544261 () Bool)

(assert (=> b!7069915 (= res!2887203 (not lt!2544261))))

(declare-fun lt!2544287 () Unit!161982)

(assert (=> b!7069915 (= lt!2544287 (lemmaConcatPreservesForall!947 lt!2544296 (exprs!7132 ct2!306) lambda!425039))))

(declare-fun lt!2544294 () Unit!161982)

(assert (=> b!7069915 (= lt!2544294 (lemmaConcatPreservesForall!947 lt!2544296 (exprs!7132 ct2!306) lambda!425039))))

(declare-fun e!4250434 () Bool)

(declare-fun b!7069916 () Bool)

(declare-fun lt!2544268 () List!68435)

(declare-fun ++!15755 (List!68435 List!68435) List!68435)

(assert (=> b!7069916 (= e!4250434 (= (++!15755 lt!2544268 (_2!37426 lt!2544295)) s!7408))))

(declare-fun e!4250441 () Bool)

(declare-fun e!4250438 () Bool)

(assert (=> b!7069917 (= e!4250441 e!4250438)))

(declare-fun res!2887186 () Bool)

(assert (=> b!7069917 (=> res!2887186 e!4250438)))

(declare-fun lt!2544283 () (Set Context!13264))

(declare-fun lt!2544266 () (Set Context!13264))

(assert (=> b!7069917 (= res!2887186 (not (= (derivationStepZipper!3086 lt!2544283 (h!74759 s!7408)) lt!2544266)))))

(declare-fun lt!2544258 () Context!13264)

(assert (=> b!7069917 (= (flatMap!2562 lt!2544283 lambda!425040) (derivationStepZipperUp!2220 lt!2544258 (h!74759 s!7408)))))

(declare-fun lt!2544262 () Unit!161982)

(assert (=> b!7069917 (= lt!2544262 (lemmaFlatMapOnSingletonSet!2071 lt!2544283 lt!2544258 lambda!425040))))

(assert (=> b!7069917 (= lt!2544266 (derivationStepZipperUp!2220 lt!2544258 (h!74759 s!7408)))))

(declare-fun lt!2544273 () Unit!161982)

(assert (=> b!7069917 (= lt!2544273 (lemmaConcatPreservesForall!947 (exprs!7132 lt!2544288) (exprs!7132 ct2!306) lambda!425039))))

(declare-fun b!7069918 () Bool)

(declare-fun e!4250430 () Bool)

(declare-fun lt!2544298 () (Set Context!13264))

(assert (=> b!7069918 (= e!4250430 (not (matchZipper!3176 lt!2544298 (t!382218 s!7408))))))

(declare-fun lt!2544253 () Unit!161982)

(assert (=> b!7069918 (= lt!2544253 (lemmaConcatPreservesForall!947 lt!2544296 (exprs!7132 ct2!306) lambda!425039))))

(declare-fun b!7069919 () Bool)

(declare-fun e!4250439 () Bool)

(assert (=> b!7069919 (= e!4250443 e!4250439)))

(declare-fun res!2887188 () Bool)

(assert (=> b!7069919 (=> res!2887188 e!4250439)))

(declare-fun lt!2544254 () (Set Context!13264))

(assert (=> b!7069919 (= res!2887188 (not (= lt!2544279 lt!2544254)))))

(assert (=> b!7069919 (= lt!2544254 (set.union lt!2544289 lt!2544274))))

(assert (=> b!7069919 (= lt!2544274 (derivationStepZipperUp!2220 lt!2544267 (h!74759 s!7408)))))

(declare-fun b!7069921 () Bool)

(declare-fun e!4250432 () Bool)

(declare-fun tp!1942101 () Bool)

(assert (=> b!7069921 (= e!4250432 tp!1942101)))

(declare-fun b!7069922 () Bool)

(declare-fun e!4250427 () Bool)

(assert (=> b!7069922 (= e!4250438 e!4250427)))

(declare-fun res!2887192 () Bool)

(assert (=> b!7069922 (=> res!2887192 e!4250427)))

(declare-fun nullable!7319 (Regex!17636) Bool)

(assert (=> b!7069922 (= res!2887192 (not (nullable!7319 (h!74758 (exprs!7132 lt!2544288)))))))

(assert (=> b!7069922 (= lt!2544267 (Context!13265 lt!2544296))))

(declare-fun tail!13813 (List!68434) List!68434)

(assert (=> b!7069922 (= lt!2544296 (tail!13813 (exprs!7132 lt!2544288)))))

(declare-fun b!7069923 () Bool)

(declare-fun e!4250426 () Bool)

(declare-fun e!4250437 () Bool)

(assert (=> b!7069923 (= e!4250426 e!4250437)))

(declare-fun res!2887182 () Bool)

(assert (=> b!7069923 (=> res!2887182 e!4250437)))

(assert (=> b!7069923 (= res!2887182 e!4250430)))

(declare-fun res!2887201 () Bool)

(assert (=> b!7069923 (=> (not res!2887201) (not e!4250430))))

(declare-fun lt!2544284 () Bool)

(assert (=> b!7069923 (= res!2887201 (not (= lt!2544284 lt!2544261)))))

(assert (=> b!7069923 (= lt!2544284 (matchZipper!3176 lt!2544266 (t!382218 s!7408)))))

(declare-fun lt!2544278 () Unit!161982)

(assert (=> b!7069923 (= lt!2544278 (lemmaConcatPreservesForall!947 lt!2544296 (exprs!7132 ct2!306) lambda!425039))))

(declare-fun lt!2544300 () (Set Context!13264))

(declare-fun e!4250435 () Bool)

(assert (=> b!7069923 (= (matchZipper!3176 lt!2544300 (t!382218 s!7408)) e!4250435)))

(declare-fun res!2887183 () Bool)

(assert (=> b!7069923 (=> res!2887183 e!4250435)))

(assert (=> b!7069923 (= res!2887183 lt!2544261)))

(assert (=> b!7069923 (= lt!2544261 (matchZipper!3176 lt!2544291 (t!382218 s!7408)))))

(declare-fun lt!2544255 () Unit!161982)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1649 ((Set Context!13264) (Set Context!13264) List!68435) Unit!161982)

(assert (=> b!7069923 (= lt!2544255 (lemmaZipperConcatMatchesSameAsBothZippers!1649 lt!2544291 lt!2544298 (t!382218 s!7408)))))

(declare-fun lt!2544257 () Unit!161982)

(assert (=> b!7069923 (= lt!2544257 (lemmaConcatPreservesForall!947 lt!2544296 (exprs!7132 ct2!306) lambda!425039))))

(declare-fun lt!2544281 () Unit!161982)

(assert (=> b!7069923 (= lt!2544281 (lemmaConcatPreservesForall!947 lt!2544296 (exprs!7132 ct2!306) lambda!425039))))

(declare-fun b!7069924 () Bool)

(declare-fun res!2887187 () Bool)

(assert (=> b!7069924 (=> res!2887187 e!4250438)))

(assert (=> b!7069924 (= res!2887187 (not (is-Cons!68310 (exprs!7132 lt!2544288))))))

(declare-fun e!4250431 () Bool)

(declare-fun e!4250425 () Bool)

(assert (=> b!7069925 (= e!4250431 e!4250425)))

(declare-fun res!2887199 () Bool)

(assert (=> b!7069925 (=> res!2887199 e!4250425)))

(declare-fun z1!570 () (Set Context!13264))

(declare-fun lt!2544297 () Context!13264)

(assert (=> b!7069925 (= res!2887199 (or (not (= lt!2544258 lt!2544297)) (not (set.member lt!2544288 z1!570))))))

(declare-fun ++!15756 (List!68434 List!68434) List!68434)

(assert (=> b!7069925 (= lt!2544258 (Context!13265 (++!15756 (exprs!7132 lt!2544288) (exprs!7132 ct2!306))))))

(declare-fun lt!2544256 () Unit!161982)

(assert (=> b!7069925 (= lt!2544256 (lemmaConcatPreservesForall!947 (exprs!7132 lt!2544288) (exprs!7132 ct2!306) lambda!425039))))

(declare-fun lambda!425038 () Int)

(declare-fun mapPost2!465 ((Set Context!13264) Int Context!13264) Context!13264)

(assert (=> b!7069925 (= lt!2544288 (mapPost2!465 z1!570 lambda!425038 lt!2544297))))

(declare-fun b!7069926 () Bool)

(declare-fun e!4250428 () Bool)

(declare-fun tp!1942100 () Bool)

(assert (=> b!7069926 (= e!4250428 tp!1942100)))

(declare-fun b!7069927 () Bool)

(declare-fun res!2887181 () Bool)

(assert (=> b!7069927 (=> res!2887181 e!4250438)))

(declare-fun isEmpty!39863 (List!68434) Bool)

(assert (=> b!7069927 (= res!2887181 (isEmpty!39863 (exprs!7132 lt!2544288)))))

(declare-fun b!7069928 () Bool)

(declare-fun res!2887194 () Bool)

(assert (=> b!7069928 (=> res!2887194 e!4250437)))

(assert (=> b!7069928 (= res!2887194 (not lt!2544284))))

(declare-fun setIsEmpty!50213 () Bool)

(declare-fun setRes!50213 () Bool)

(assert (=> setIsEmpty!50213 setRes!50213))

(declare-fun b!7069929 () Bool)

(declare-fun res!2887204 () Bool)

(declare-fun e!4250436 () Bool)

(assert (=> b!7069929 (=> (not res!2887204) (not e!4250436))))

(assert (=> b!7069929 (= res!2887204 (is-Cons!68311 s!7408))))

(declare-fun setNonEmpty!50213 () Bool)

(declare-fun setElem!50213 () Context!13264)

(declare-fun tp!1942099 () Bool)

(declare-fun inv!86950 (Context!13264) Bool)

(assert (=> setNonEmpty!50213 (= setRes!50213 (and tp!1942099 (inv!86950 setElem!50213) e!4250428))))

(declare-fun setRest!50213 () (Set Context!13264))

(assert (=> setNonEmpty!50213 (= z1!570 (set.union (set.insert setElem!50213 (as set.empty (Set Context!13264))) setRest!50213))))

(declare-fun b!7069930 () Bool)

(assert (=> b!7069930 (= e!4250435 (matchZipper!3176 lt!2544298 (t!382218 s!7408)))))

(declare-fun b!7069931 () Bool)

(assert (=> b!7069931 (= e!4250427 e!4250426)))

(declare-fun res!2887180 () Bool)

(assert (=> b!7069931 (=> res!2887180 e!4250426)))

(assert (=> b!7069931 (= res!2887180 (not (= lt!2544266 lt!2544300)))))

(assert (=> b!7069931 (= lt!2544300 (set.union lt!2544291 lt!2544298))))

(declare-fun lt!2544271 () Context!13264)

(assert (=> b!7069931 (= lt!2544298 (derivationStepZipperUp!2220 lt!2544271 (h!74759 s!7408)))))

(assert (=> b!7069931 (= lt!2544291 (derivationStepZipperDown!2270 (h!74758 (exprs!7132 lt!2544288)) lt!2544271 (h!74759 s!7408)))))

(assert (=> b!7069931 (= lt!2544271 (Context!13265 (++!15756 lt!2544296 (exprs!7132 ct2!306))))))

(declare-fun lt!2544260 () Unit!161982)

(assert (=> b!7069931 (= lt!2544260 (lemmaConcatPreservesForall!947 lt!2544296 (exprs!7132 ct2!306) lambda!425039))))

(declare-fun lt!2544285 () Unit!161982)

(assert (=> b!7069931 (= lt!2544285 (lemmaConcatPreservesForall!947 lt!2544296 (exprs!7132 ct2!306) lambda!425039))))

(declare-fun b!7069932 () Bool)

(declare-fun e!4250424 () Bool)

(declare-fun tp_is_empty!44497 () Bool)

(declare-fun tp!1942098 () Bool)

(assert (=> b!7069932 (= e!4250424 (and tp_is_empty!44497 tp!1942098))))

(assert (=> b!7069933 (= e!4250436 (not e!4250431))))

(declare-fun res!2887193 () Bool)

(assert (=> b!7069933 (=> res!2887193 e!4250431)))

(declare-fun lt!2544269 () (Set Context!13264))

(assert (=> b!7069933 (= res!2887193 (not (matchZipper!3176 lt!2544269 s!7408)))))

(assert (=> b!7069933 (= lt!2544269 (set.insert lt!2544297 (as set.empty (Set Context!13264))))))

(declare-fun lt!2544282 () (Set Context!13264))

(declare-fun lambda!425037 () Int)

(declare-fun getWitness!1732 ((Set Context!13264) Int) Context!13264)

(assert (=> b!7069933 (= lt!2544297 (getWitness!1732 lt!2544282 lambda!425037))))

(declare-datatypes ((List!68436 0))(
  ( (Nil!68312) (Cons!68312 (h!74760 Context!13264) (t!382219 List!68436)) )
))
(declare-fun lt!2544290 () List!68436)

(declare-fun exists!3675 (List!68436 Int) Bool)

(assert (=> b!7069933 (exists!3675 lt!2544290 lambda!425037)))

(declare-fun lt!2544277 () Unit!161982)

(declare-fun lemmaZipperMatchesExistsMatchingContext!557 (List!68436 List!68435) Unit!161982)

(assert (=> b!7069933 (= lt!2544277 (lemmaZipperMatchesExistsMatchingContext!557 lt!2544290 s!7408))))

(declare-fun toList!10977 ((Set Context!13264)) List!68436)

(assert (=> b!7069933 (= lt!2544290 (toList!10977 lt!2544282))))

(declare-fun b!7069934 () Bool)

(assert (=> b!7069934 (= e!4250437 e!4250429)))

(declare-fun res!2887184 () Bool)

(assert (=> b!7069934 (=> res!2887184 e!4250429)))

(assert (=> b!7069934 (= res!2887184 (matchZipper!3176 lt!2544298 (t!382218 s!7408)))))

(declare-fun lt!2544272 () Unit!161982)

(assert (=> b!7069934 (= lt!2544272 (lemmaConcatPreservesForall!947 lt!2544296 (exprs!7132 ct2!306) lambda!425039))))

(declare-fun b!7069935 () Bool)

(declare-fun res!2887198 () Bool)

(assert (=> b!7069935 (=> res!2887198 e!4250434)))

(declare-fun lt!2544292 () Bool)

(assert (=> b!7069935 (= res!2887198 (not lt!2544292))))

(declare-fun b!7069936 () Bool)

(assert (=> b!7069936 (= e!4250439 e!4250434)))

(declare-fun res!2887191 () Bool)

(assert (=> b!7069936 (=> res!2887191 e!4250434)))

(assert (=> b!7069936 (= res!2887191 e!4250440)))

(declare-fun res!2887197 () Bool)

(assert (=> b!7069936 (=> (not res!2887197) (not e!4250440))))

(assert (=> b!7069936 (= res!2887197 (not lt!2544292))))

(assert (=> b!7069936 (= lt!2544292 (matchZipper!3176 lt!2544263 lt!2544268))))

(assert (=> b!7069936 (= lt!2544268 (Cons!68311 (h!74759 s!7408) (_1!37426 lt!2544295)))))

(assert (=> b!7069936 (matchZipper!3176 lt!2544254 (_1!37426 lt!2544295))))

(declare-fun lt!2544259 () Unit!161982)

(assert (=> b!7069936 (= lt!2544259 (lemmaZipperConcatMatchesSameAsBothZippers!1649 lt!2544289 lt!2544274 (_1!37426 lt!2544295)))))

(declare-fun b!7069937 () Bool)

(declare-fun res!2887190 () Bool)

(assert (=> b!7069937 (=> res!2887190 e!4250442)))

(assert (=> b!7069937 (= res!2887190 (not (= (++!15755 (_1!37426 lt!2544295) (_2!37426 lt!2544295)) (t!382218 s!7408))))))

(declare-fun res!2887189 () Bool)

(assert (=> start!686658 (=> (not res!2887189) (not e!4250436))))

(assert (=> start!686658 (= res!2887189 (matchZipper!3176 lt!2544282 s!7408))))

(assert (=> start!686658 (= lt!2544282 (appendTo!757 z1!570 ct2!306))))

(assert (=> start!686658 e!4250436))

(declare-fun condSetEmpty!50213 () Bool)

(assert (=> start!686658 (= condSetEmpty!50213 (= z1!570 (as set.empty (Set Context!13264))))))

(assert (=> start!686658 setRes!50213))

(assert (=> start!686658 (and (inv!86950 ct2!306) e!4250432)))

(assert (=> start!686658 e!4250424))

(declare-fun b!7069920 () Bool)

(declare-fun res!2887196 () Bool)

(assert (=> b!7069920 (=> res!2887196 e!4250442)))

(assert (=> b!7069920 (= res!2887196 (not (matchZipper!3176 lt!2544286 (_2!37426 lt!2544295))))))

(declare-fun b!7069938 () Bool)

(assert (=> b!7069938 (= e!4250425 e!4250441)))

(declare-fun res!2887200 () Bool)

(assert (=> b!7069938 (=> res!2887200 e!4250441)))

(assert (=> b!7069938 (= res!2887200 (not (= lt!2544283 lt!2544269)))))

(assert (=> b!7069938 (= lt!2544283 (set.insert lt!2544258 (as set.empty (Set Context!13264))))))

(declare-fun lt!2544280 () Unit!161982)

(assert (=> b!7069938 (= lt!2544280 (lemmaConcatPreservesForall!947 (exprs!7132 lt!2544288) (exprs!7132 ct2!306) lambda!425039))))

(declare-fun b!7069939 () Bool)

(declare-fun res!2887202 () Bool)

(assert (=> b!7069939 (=> res!2887202 e!4250431)))

(assert (=> b!7069939 (= res!2887202 (not (set.member lt!2544297 lt!2544282)))))

(assert (= (and start!686658 res!2887189) b!7069929))

(assert (= (and b!7069929 res!2887204) b!7069933))

(assert (= (and b!7069933 (not res!2887193)) b!7069939))

(assert (= (and b!7069939 (not res!2887202)) b!7069925))

(assert (= (and b!7069925 (not res!2887199)) b!7069938))

(assert (= (and b!7069938 (not res!2887200)) b!7069917))

(assert (= (and b!7069917 (not res!2887186)) b!7069924))

(assert (= (and b!7069924 (not res!2887187)) b!7069927))

(assert (= (and b!7069927 (not res!2887181)) b!7069922))

(assert (= (and b!7069922 (not res!2887192)) b!7069931))

(assert (= (and b!7069931 (not res!2887180)) b!7069923))

(assert (= (and b!7069923 (not res!2887183)) b!7069930))

(assert (= (and b!7069923 res!2887201) b!7069918))

(assert (= (and b!7069923 (not res!2887182)) b!7069928))

(assert (= (and b!7069928 (not res!2887194)) b!7069934))

(assert (= (and b!7069934 (not res!2887184)) b!7069915))

(assert (= (and b!7069915 (not res!2887203)) b!7069912))

(assert (= (and b!7069912 (not res!2887195)) b!7069920))

(assert (= (and b!7069920 (not res!2887196)) b!7069937))

(assert (= (and b!7069937 (not res!2887190)) b!7069913))

(assert (= (and b!7069913 (not res!2887185)) b!7069919))

(assert (= (and b!7069919 (not res!2887188)) b!7069936))

(assert (= (and b!7069936 res!2887197) b!7069914))

(assert (= (and b!7069936 (not res!2887191)) b!7069935))

(assert (= (and b!7069935 (not res!2887198)) b!7069916))

(assert (= (and start!686658 condSetEmpty!50213) setIsEmpty!50213))

(assert (= (and start!686658 (not condSetEmpty!50213)) setNonEmpty!50213))

(assert (= setNonEmpty!50213 b!7069926))

(assert (= start!686658 b!7069921))

(assert (= (and start!686658 (is-Cons!68311 s!7408)) b!7069932))

(declare-fun m!7794814 () Bool)

(assert (=> b!7069914 m!7794814))

(declare-fun m!7794816 () Bool)

(assert (=> b!7069936 m!7794816))

(declare-fun m!7794818 () Bool)

(assert (=> b!7069936 m!7794818))

(declare-fun m!7794820 () Bool)

(assert (=> b!7069936 m!7794820))

(declare-fun m!7794822 () Bool)

(assert (=> b!7069922 m!7794822))

(declare-fun m!7794824 () Bool)

(assert (=> b!7069922 m!7794824))

(declare-fun m!7794826 () Bool)

(assert (=> b!7069913 m!7794826))

(declare-fun m!7794828 () Bool)

(assert (=> b!7069913 m!7794828))

(declare-fun m!7794830 () Bool)

(assert (=> b!7069913 m!7794830))

(declare-fun m!7794832 () Bool)

(assert (=> b!7069913 m!7794832))

(declare-fun m!7794834 () Bool)

(assert (=> b!7069913 m!7794834))

(declare-fun m!7794836 () Bool)

(assert (=> b!7069918 m!7794836))

(declare-fun m!7794838 () Bool)

(assert (=> b!7069918 m!7794838))

(declare-fun m!7794840 () Bool)

(assert (=> b!7069925 m!7794840))

(declare-fun m!7794842 () Bool)

(assert (=> b!7069925 m!7794842))

(declare-fun m!7794844 () Bool)

(assert (=> b!7069925 m!7794844))

(declare-fun m!7794846 () Bool)

(assert (=> b!7069925 m!7794846))

(declare-fun m!7794848 () Bool)

(assert (=> b!7069919 m!7794848))

(declare-fun m!7794850 () Bool)

(assert (=> b!7069933 m!7794850))

(declare-fun m!7794852 () Bool)

(assert (=> b!7069933 m!7794852))

(declare-fun m!7794854 () Bool)

(assert (=> b!7069933 m!7794854))

(declare-fun m!7794856 () Bool)

(assert (=> b!7069933 m!7794856))

(declare-fun m!7794858 () Bool)

(assert (=> b!7069933 m!7794858))

(declare-fun m!7794860 () Bool)

(assert (=> b!7069933 m!7794860))

(declare-fun m!7794862 () Bool)

(assert (=> setNonEmpty!50213 m!7794862))

(declare-fun m!7794864 () Bool)

(assert (=> b!7069939 m!7794864))

(declare-fun m!7794866 () Bool)

(assert (=> b!7069931 m!7794866))

(assert (=> b!7069931 m!7794838))

(declare-fun m!7794868 () Bool)

(assert (=> b!7069931 m!7794868))

(assert (=> b!7069931 m!7794838))

(declare-fun m!7794870 () Bool)

(assert (=> b!7069931 m!7794870))

(declare-fun m!7794872 () Bool)

(assert (=> b!7069916 m!7794872))

(declare-fun m!7794874 () Bool)

(assert (=> b!7069938 m!7794874))

(assert (=> b!7069938 m!7794844))

(declare-fun m!7794876 () Bool)

(assert (=> b!7069937 m!7794876))

(assert (=> b!7069934 m!7794836))

(assert (=> b!7069934 m!7794838))

(declare-fun m!7794878 () Bool)

(assert (=> start!686658 m!7794878))

(declare-fun m!7794880 () Bool)

(assert (=> start!686658 m!7794880))

(declare-fun m!7794882 () Bool)

(assert (=> start!686658 m!7794882))

(declare-fun m!7794884 () Bool)

(assert (=> b!7069927 m!7794884))

(assert (=> b!7069923 m!7794838))

(assert (=> b!7069923 m!7794838))

(declare-fun m!7794886 () Bool)

(assert (=> b!7069923 m!7794886))

(assert (=> b!7069923 m!7794838))

(declare-fun m!7794888 () Bool)

(assert (=> b!7069923 m!7794888))

(declare-fun m!7794890 () Bool)

(assert (=> b!7069923 m!7794890))

(declare-fun m!7794892 () Bool)

(assert (=> b!7069923 m!7794892))

(declare-fun m!7794894 () Bool)

(assert (=> b!7069917 m!7794894))

(assert (=> b!7069917 m!7794844))

(declare-fun m!7794896 () Bool)

(assert (=> b!7069917 m!7794896))

(declare-fun m!7794898 () Bool)

(assert (=> b!7069917 m!7794898))

(declare-fun m!7794900 () Bool)

(assert (=> b!7069917 m!7794900))

(declare-fun m!7794902 () Bool)

(assert (=> b!7069920 m!7794902))

(assert (=> b!7069915 m!7794838))

(assert (=> b!7069915 m!7794838))

(declare-fun m!7794904 () Bool)

(assert (=> b!7069912 m!7794904))

(declare-fun m!7794906 () Bool)

(assert (=> b!7069912 m!7794906))

(declare-fun m!7794908 () Bool)

(assert (=> b!7069912 m!7794908))

(declare-fun m!7794910 () Bool)

(assert (=> b!7069912 m!7794910))

(declare-fun m!7794912 () Bool)

(assert (=> b!7069912 m!7794912))

(assert (=> b!7069912 m!7794838))

(assert (=> b!7069912 m!7794838))

(declare-fun m!7794914 () Bool)

(assert (=> b!7069912 m!7794914))

(declare-fun m!7794916 () Bool)

(assert (=> b!7069912 m!7794916))

(declare-fun m!7794918 () Bool)

(assert (=> b!7069912 m!7794918))

(declare-fun m!7794920 () Bool)

(assert (=> b!7069912 m!7794920))

(assert (=> b!7069930 m!7794836))

(push 1)

(assert (not b!7069933))

(assert (not b!7069917))

(assert tp_is_empty!44497)

(assert (not b!7069932))

(assert (not b!7069920))

(assert (not b!7069923))

(assert (not b!7069930))

(assert (not b!7069936))

(assert (not b!7069925))

(assert (not setNonEmpty!50213))

(assert (not b!7069937))

(assert (not b!7069912))

(assert (not b!7069938))

(assert (not b!7069921))

(assert (not b!7069918))

(assert (not b!7069927))

(assert (not start!686658))

(assert (not b!7069916))

(assert (not b!7069931))

(assert (not b!7069914))

(assert (not b!7069934))

(assert (not b!7069919))

(assert (not b!7069913))

(assert (not b!7069926))

(assert (not b!7069922))

(assert (not b!7069915))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2210876 () Bool)

(assert (=> d!2210876 (= (isEmpty!39863 (exprs!7132 lt!2544288)) (is-Nil!68310 (exprs!7132 lt!2544288)))))

(assert (=> b!7069927 d!2210876))

(declare-fun d!2210878 () Bool)

(declare-fun e!4250508 () Bool)

(assert (=> d!2210878 e!4250508))

(declare-fun res!2887285 () Bool)

(assert (=> d!2210878 (=> (not res!2887285) (not e!4250508))))

(declare-fun lt!2544449 () List!68435)

(declare-fun content!13773 (List!68435) (Set C!35542))

(assert (=> d!2210878 (= res!2887285 (= (content!13773 lt!2544449) (set.union (content!13773 lt!2544268) (content!13773 (_2!37426 lt!2544295)))))))

(declare-fun e!4250509 () List!68435)

(assert (=> d!2210878 (= lt!2544449 e!4250509)))

(declare-fun c!1318661 () Bool)

(assert (=> d!2210878 (= c!1318661 (is-Nil!68311 lt!2544268))))

(assert (=> d!2210878 (= (++!15755 lt!2544268 (_2!37426 lt!2544295)) lt!2544449)))

(declare-fun b!7070047 () Bool)

(assert (=> b!7070047 (= e!4250508 (or (not (= (_2!37426 lt!2544295) Nil!68311)) (= lt!2544449 lt!2544268)))))

(declare-fun b!7070044 () Bool)

(assert (=> b!7070044 (= e!4250509 (_2!37426 lt!2544295))))

(declare-fun b!7070045 () Bool)

(assert (=> b!7070045 (= e!4250509 (Cons!68311 (h!74759 lt!2544268) (++!15755 (t!382218 lt!2544268) (_2!37426 lt!2544295))))))

(declare-fun b!7070046 () Bool)

(declare-fun res!2887286 () Bool)

(assert (=> b!7070046 (=> (not res!2887286) (not e!4250508))))

(declare-fun size!41202 (List!68435) Int)

(assert (=> b!7070046 (= res!2887286 (= (size!41202 lt!2544449) (+ (size!41202 lt!2544268) (size!41202 (_2!37426 lt!2544295)))))))

(assert (= (and d!2210878 c!1318661) b!7070044))

(assert (= (and d!2210878 (not c!1318661)) b!7070045))

(assert (= (and d!2210878 res!2887285) b!7070046))

(assert (= (and b!7070046 res!2887286) b!7070047))

(declare-fun m!7795030 () Bool)

(assert (=> d!2210878 m!7795030))

(declare-fun m!7795032 () Bool)

(assert (=> d!2210878 m!7795032))

(declare-fun m!7795034 () Bool)

(assert (=> d!2210878 m!7795034))

(declare-fun m!7795036 () Bool)

(assert (=> b!7070045 m!7795036))

(declare-fun m!7795038 () Bool)

(assert (=> b!7070046 m!7795038))

(declare-fun m!7795040 () Bool)

(assert (=> b!7070046 m!7795040))

(declare-fun m!7795042 () Bool)

(assert (=> b!7070046 m!7795042))

(assert (=> b!7069916 d!2210878))

(declare-fun b!7070058 () Bool)

(declare-fun e!4250517 () (Set Context!13264))

(assert (=> b!7070058 (= e!4250517 (as set.empty (Set Context!13264)))))

(declare-fun b!7070059 () Bool)

(declare-fun e!4250518 () Bool)

(assert (=> b!7070059 (= e!4250518 (nullable!7319 (h!74758 (exprs!7132 lt!2544258))))))

(declare-fun b!7070060 () Bool)

(declare-fun call!642555 () (Set Context!13264))

(assert (=> b!7070060 (= e!4250517 call!642555)))

(declare-fun b!7070061 () Bool)

(declare-fun e!4250516 () (Set Context!13264))

(assert (=> b!7070061 (= e!4250516 (set.union call!642555 (derivationStepZipperUp!2220 (Context!13265 (t!382217 (exprs!7132 lt!2544258))) (h!74759 s!7408))))))

(declare-fun d!2210880 () Bool)

(declare-fun c!1318667 () Bool)

(assert (=> d!2210880 (= c!1318667 e!4250518)))

(declare-fun res!2887289 () Bool)

(assert (=> d!2210880 (=> (not res!2887289) (not e!4250518))))

(assert (=> d!2210880 (= res!2887289 (is-Cons!68310 (exprs!7132 lt!2544258)))))

(assert (=> d!2210880 (= (derivationStepZipperUp!2220 lt!2544258 (h!74759 s!7408)) e!4250516)))

(declare-fun b!7070062 () Bool)

(assert (=> b!7070062 (= e!4250516 e!4250517)))

(declare-fun c!1318666 () Bool)

(assert (=> b!7070062 (= c!1318666 (is-Cons!68310 (exprs!7132 lt!2544258)))))

(declare-fun bm!642550 () Bool)

(assert (=> bm!642550 (= call!642555 (derivationStepZipperDown!2270 (h!74758 (exprs!7132 lt!2544258)) (Context!13265 (t!382217 (exprs!7132 lt!2544258))) (h!74759 s!7408)))))

(assert (= (and d!2210880 res!2887289) b!7070059))

(assert (= (and d!2210880 c!1318667) b!7070061))

(assert (= (and d!2210880 (not c!1318667)) b!7070062))

(assert (= (and b!7070062 c!1318666) b!7070060))

(assert (= (and b!7070062 (not c!1318666)) b!7070058))

(assert (= (or b!7070061 b!7070060) bm!642550))

(declare-fun m!7795044 () Bool)

(assert (=> b!7070059 m!7795044))

(declare-fun m!7795046 () Bool)

(assert (=> b!7070061 m!7795046))

(declare-fun m!7795048 () Bool)

(assert (=> bm!642550 m!7795048))

(assert (=> b!7069917 d!2210880))

(declare-fun d!2210882 () Bool)

(declare-fun choose!54158 ((Set Context!13264) Int) (Set Context!13264))

(assert (=> d!2210882 (= (flatMap!2562 lt!2544283 lambda!425040) (choose!54158 lt!2544283 lambda!425040))))

(declare-fun bs!1880431 () Bool)

(assert (= bs!1880431 d!2210882))

(declare-fun m!7795050 () Bool)

(assert (=> bs!1880431 m!7795050))

(assert (=> b!7069917 d!2210882))

(declare-fun d!2210884 () Bool)

(declare-fun dynLambda!27775 (Int Context!13264) (Set Context!13264))

(assert (=> d!2210884 (= (flatMap!2562 lt!2544283 lambda!425040) (dynLambda!27775 lambda!425040 lt!2544258))))

(declare-fun lt!2544452 () Unit!161982)

(declare-fun choose!54159 ((Set Context!13264) Context!13264 Int) Unit!161982)

(assert (=> d!2210884 (= lt!2544452 (choose!54159 lt!2544283 lt!2544258 lambda!425040))))

(assert (=> d!2210884 (= lt!2544283 (set.insert lt!2544258 (as set.empty (Set Context!13264))))))

(assert (=> d!2210884 (= (lemmaFlatMapOnSingletonSet!2071 lt!2544283 lt!2544258 lambda!425040) lt!2544452)))

(declare-fun b_lambda!269895 () Bool)

(assert (=> (not b_lambda!269895) (not d!2210884)))

(declare-fun bs!1880432 () Bool)

(assert (= bs!1880432 d!2210884))

(assert (=> bs!1880432 m!7794896))

(declare-fun m!7795052 () Bool)

(assert (=> bs!1880432 m!7795052))

(declare-fun m!7795054 () Bool)

(assert (=> bs!1880432 m!7795054))

(assert (=> bs!1880432 m!7794874))

(assert (=> b!7069917 d!2210884))

(declare-fun bs!1880433 () Bool)

(declare-fun d!2210886 () Bool)

(assert (= bs!1880433 (and d!2210886 b!7069917)))

(declare-fun lambda!425087 () Int)

(assert (=> bs!1880433 (= lambda!425087 lambda!425040)))

(assert (=> d!2210886 true))

(assert (=> d!2210886 (= (derivationStepZipper!3086 lt!2544283 (h!74759 s!7408)) (flatMap!2562 lt!2544283 lambda!425087))))

(declare-fun bs!1880434 () Bool)

(assert (= bs!1880434 d!2210886))

(declare-fun m!7795056 () Bool)

(assert (=> bs!1880434 m!7795056))

(assert (=> b!7069917 d!2210886))

(declare-fun d!2210888 () Bool)

(declare-fun forall!16585 (List!68434 Int) Bool)

(assert (=> d!2210888 (forall!16585 (++!15756 (exprs!7132 lt!2544288) (exprs!7132 ct2!306)) lambda!425039)))

(declare-fun lt!2544455 () Unit!161982)

(declare-fun choose!54160 (List!68434 List!68434 Int) Unit!161982)

(assert (=> d!2210888 (= lt!2544455 (choose!54160 (exprs!7132 lt!2544288) (exprs!7132 ct2!306) lambda!425039))))

(assert (=> d!2210888 (forall!16585 (exprs!7132 lt!2544288) lambda!425039)))

(assert (=> d!2210888 (= (lemmaConcatPreservesForall!947 (exprs!7132 lt!2544288) (exprs!7132 ct2!306) lambda!425039) lt!2544455)))

(declare-fun bs!1880435 () Bool)

(assert (= bs!1880435 d!2210888))

(assert (=> bs!1880435 m!7794842))

(assert (=> bs!1880435 m!7794842))

(declare-fun m!7795058 () Bool)

(assert (=> bs!1880435 m!7795058))

(declare-fun m!7795060 () Bool)

(assert (=> bs!1880435 m!7795060))

(declare-fun m!7795062 () Bool)

(assert (=> bs!1880435 m!7795062))

(assert (=> b!7069917 d!2210888))

(declare-fun d!2210890 () Bool)

(declare-fun c!1318672 () Bool)

(declare-fun isEmpty!39865 (List!68435) Bool)

(assert (=> d!2210890 (= c!1318672 (isEmpty!39865 lt!2544268))))

(declare-fun e!4250521 () Bool)

(assert (=> d!2210890 (= (matchZipper!3176 lt!2544263 lt!2544268) e!4250521)))

(declare-fun b!7070069 () Bool)

(declare-fun nullableZipper!2693 ((Set Context!13264)) Bool)

(assert (=> b!7070069 (= e!4250521 (nullableZipper!2693 lt!2544263))))

(declare-fun b!7070070 () Bool)

(declare-fun head!14401 (List!68435) C!35542)

(declare-fun tail!13815 (List!68435) List!68435)

(assert (=> b!7070070 (= e!4250521 (matchZipper!3176 (derivationStepZipper!3086 lt!2544263 (head!14401 lt!2544268)) (tail!13815 lt!2544268)))))

(assert (= (and d!2210890 c!1318672) b!7070069))

(assert (= (and d!2210890 (not c!1318672)) b!7070070))

(declare-fun m!7795064 () Bool)

(assert (=> d!2210890 m!7795064))

(declare-fun m!7795066 () Bool)

(assert (=> b!7070069 m!7795066))

(declare-fun m!7795068 () Bool)

(assert (=> b!7070070 m!7795068))

(assert (=> b!7070070 m!7795068))

(declare-fun m!7795070 () Bool)

(assert (=> b!7070070 m!7795070))

(declare-fun m!7795072 () Bool)

(assert (=> b!7070070 m!7795072))

(assert (=> b!7070070 m!7795070))

(assert (=> b!7070070 m!7795072))

(declare-fun m!7795074 () Bool)

(assert (=> b!7070070 m!7795074))

(assert (=> b!7069936 d!2210890))

(declare-fun d!2210892 () Bool)

(declare-fun c!1318673 () Bool)

(assert (=> d!2210892 (= c!1318673 (isEmpty!39865 (_1!37426 lt!2544295)))))

(declare-fun e!4250522 () Bool)

(assert (=> d!2210892 (= (matchZipper!3176 lt!2544254 (_1!37426 lt!2544295)) e!4250522)))

(declare-fun b!7070071 () Bool)

(assert (=> b!7070071 (= e!4250522 (nullableZipper!2693 lt!2544254))))

(declare-fun b!7070072 () Bool)

(assert (=> b!7070072 (= e!4250522 (matchZipper!3176 (derivationStepZipper!3086 lt!2544254 (head!14401 (_1!37426 lt!2544295))) (tail!13815 (_1!37426 lt!2544295))))))

(assert (= (and d!2210892 c!1318673) b!7070071))

(assert (= (and d!2210892 (not c!1318673)) b!7070072))

(declare-fun m!7795076 () Bool)

(assert (=> d!2210892 m!7795076))

(declare-fun m!7795078 () Bool)

(assert (=> b!7070071 m!7795078))

(declare-fun m!7795080 () Bool)

(assert (=> b!7070072 m!7795080))

(assert (=> b!7070072 m!7795080))

(declare-fun m!7795082 () Bool)

(assert (=> b!7070072 m!7795082))

(declare-fun m!7795084 () Bool)

(assert (=> b!7070072 m!7795084))

(assert (=> b!7070072 m!7795082))

(assert (=> b!7070072 m!7795084))

(declare-fun m!7795086 () Bool)

(assert (=> b!7070072 m!7795086))

(assert (=> b!7069936 d!2210892))

(declare-fun d!2210894 () Bool)

(declare-fun e!4250525 () Bool)

(assert (=> d!2210894 (= (matchZipper!3176 (set.union lt!2544289 lt!2544274) (_1!37426 lt!2544295)) e!4250525)))

(declare-fun res!2887292 () Bool)

(assert (=> d!2210894 (=> res!2887292 e!4250525)))

(assert (=> d!2210894 (= res!2887292 (matchZipper!3176 lt!2544289 (_1!37426 lt!2544295)))))

(declare-fun lt!2544458 () Unit!161982)

(declare-fun choose!54161 ((Set Context!13264) (Set Context!13264) List!68435) Unit!161982)

(assert (=> d!2210894 (= lt!2544458 (choose!54161 lt!2544289 lt!2544274 (_1!37426 lt!2544295)))))

(assert (=> d!2210894 (= (lemmaZipperConcatMatchesSameAsBothZippers!1649 lt!2544289 lt!2544274 (_1!37426 lt!2544295)) lt!2544458)))

(declare-fun b!7070075 () Bool)

(assert (=> b!7070075 (= e!4250525 (matchZipper!3176 lt!2544274 (_1!37426 lt!2544295)))))

(assert (= (and d!2210894 (not res!2887292)) b!7070075))

(declare-fun m!7795088 () Bool)

(assert (=> d!2210894 m!7795088))

(assert (=> d!2210894 m!7794908))

(declare-fun m!7795090 () Bool)

(assert (=> d!2210894 m!7795090))

(assert (=> b!7070075 m!7794814))

(assert (=> b!7069936 d!2210894))

(declare-fun d!2210896 () Bool)

(assert (=> d!2210896 (forall!16585 (++!15756 lt!2544296 (exprs!7132 ct2!306)) lambda!425039)))

(declare-fun lt!2544459 () Unit!161982)

(assert (=> d!2210896 (= lt!2544459 (choose!54160 lt!2544296 (exprs!7132 ct2!306) lambda!425039))))

(assert (=> d!2210896 (forall!16585 lt!2544296 lambda!425039)))

(assert (=> d!2210896 (= (lemmaConcatPreservesForall!947 lt!2544296 (exprs!7132 ct2!306) lambda!425039) lt!2544459)))

(declare-fun bs!1880436 () Bool)

(assert (= bs!1880436 d!2210896))

(assert (=> bs!1880436 m!7794870))

(assert (=> bs!1880436 m!7794870))

(declare-fun m!7795092 () Bool)

(assert (=> bs!1880436 m!7795092))

(declare-fun m!7795094 () Bool)

(assert (=> bs!1880436 m!7795094))

(declare-fun m!7795096 () Bool)

(assert (=> bs!1880436 m!7795096))

(assert (=> b!7069915 d!2210896))

(declare-fun d!2210898 () Bool)

(declare-fun c!1318674 () Bool)

(assert (=> d!2210898 (= c!1318674 (isEmpty!39865 (t!382218 s!7408)))))

(declare-fun e!4250526 () Bool)

(assert (=> d!2210898 (= (matchZipper!3176 lt!2544298 (t!382218 s!7408)) e!4250526)))

(declare-fun b!7070076 () Bool)

(assert (=> b!7070076 (= e!4250526 (nullableZipper!2693 lt!2544298))))

(declare-fun b!7070077 () Bool)

(assert (=> b!7070077 (= e!4250526 (matchZipper!3176 (derivationStepZipper!3086 lt!2544298 (head!14401 (t!382218 s!7408))) (tail!13815 (t!382218 s!7408))))))

(assert (= (and d!2210898 c!1318674) b!7070076))

(assert (= (and d!2210898 (not c!1318674)) b!7070077))

(declare-fun m!7795098 () Bool)

(assert (=> d!2210898 m!7795098))

(declare-fun m!7795100 () Bool)

(assert (=> b!7070076 m!7795100))

(declare-fun m!7795102 () Bool)

(assert (=> b!7070077 m!7795102))

(assert (=> b!7070077 m!7795102))

(declare-fun m!7795104 () Bool)

(assert (=> b!7070077 m!7795104))

(declare-fun m!7795106 () Bool)

(assert (=> b!7070077 m!7795106))

(assert (=> b!7070077 m!7795104))

(assert (=> b!7070077 m!7795106))

(declare-fun m!7795108 () Bool)

(assert (=> b!7070077 m!7795108))

(assert (=> b!7069934 d!2210898))

(assert (=> b!7069934 d!2210896))

(declare-fun bs!1880437 () Bool)

(declare-fun d!2210900 () Bool)

(assert (= bs!1880437 (and d!2210900 b!7069933)))

(declare-fun lambda!425090 () Int)

(assert (=> bs!1880437 (= lambda!425090 lambda!425037)))

(assert (=> d!2210900 true))

(assert (=> d!2210900 (exists!3675 lt!2544290 lambda!425090)))

(declare-fun lt!2544462 () Unit!161982)

(declare-fun choose!54162 (List!68436 List!68435) Unit!161982)

(assert (=> d!2210900 (= lt!2544462 (choose!54162 lt!2544290 s!7408))))

(declare-fun content!13774 (List!68436) (Set Context!13264))

(assert (=> d!2210900 (matchZipper!3176 (content!13774 lt!2544290) s!7408)))

(assert (=> d!2210900 (= (lemmaZipperMatchesExistsMatchingContext!557 lt!2544290 s!7408) lt!2544462)))

(declare-fun bs!1880438 () Bool)

(assert (= bs!1880438 d!2210900))

(declare-fun m!7795110 () Bool)

(assert (=> bs!1880438 m!7795110))

(declare-fun m!7795112 () Bool)

(assert (=> bs!1880438 m!7795112))

(declare-fun m!7795114 () Bool)

(assert (=> bs!1880438 m!7795114))

(assert (=> bs!1880438 m!7795114))

(declare-fun m!7795116 () Bool)

(assert (=> bs!1880438 m!7795116))

(assert (=> b!7069933 d!2210900))

(declare-fun d!2210902 () Bool)

(declare-fun c!1318677 () Bool)

(assert (=> d!2210902 (= c!1318677 (isEmpty!39865 s!7408))))

(declare-fun e!4250527 () Bool)

(assert (=> d!2210902 (= (matchZipper!3176 lt!2544269 s!7408) e!4250527)))

(declare-fun b!7070078 () Bool)

(assert (=> b!7070078 (= e!4250527 (nullableZipper!2693 lt!2544269))))

(declare-fun b!7070079 () Bool)

(assert (=> b!7070079 (= e!4250527 (matchZipper!3176 (derivationStepZipper!3086 lt!2544269 (head!14401 s!7408)) (tail!13815 s!7408)))))

(assert (= (and d!2210902 c!1318677) b!7070078))

(assert (= (and d!2210902 (not c!1318677)) b!7070079))

(declare-fun m!7795118 () Bool)

(assert (=> d!2210902 m!7795118))

(declare-fun m!7795120 () Bool)

(assert (=> b!7070078 m!7795120))

(declare-fun m!7795122 () Bool)

(assert (=> b!7070079 m!7795122))

(assert (=> b!7070079 m!7795122))

(declare-fun m!7795124 () Bool)

(assert (=> b!7070079 m!7795124))

(declare-fun m!7795126 () Bool)

(assert (=> b!7070079 m!7795126))

(assert (=> b!7070079 m!7795124))

(assert (=> b!7070079 m!7795126))

(declare-fun m!7795128 () Bool)

(assert (=> b!7070079 m!7795128))

(assert (=> b!7069933 d!2210902))

(declare-fun d!2210904 () Bool)

(declare-fun e!4250530 () Bool)

(assert (=> d!2210904 e!4250530))

(declare-fun res!2887295 () Bool)

(assert (=> d!2210904 (=> (not res!2887295) (not e!4250530))))

(declare-fun lt!2544465 () Context!13264)

(declare-fun dynLambda!27776 (Int Context!13264) Bool)

(assert (=> d!2210904 (= res!2887295 (dynLambda!27776 lambda!425037 lt!2544465))))

(declare-fun getWitness!1734 (List!68436 Int) Context!13264)

(assert (=> d!2210904 (= lt!2544465 (getWitness!1734 (toList!10977 lt!2544282) lambda!425037))))

(declare-fun exists!3677 ((Set Context!13264) Int) Bool)

(assert (=> d!2210904 (exists!3677 lt!2544282 lambda!425037)))

(assert (=> d!2210904 (= (getWitness!1732 lt!2544282 lambda!425037) lt!2544465)))

(declare-fun b!7070082 () Bool)

(assert (=> b!7070082 (= e!4250530 (set.member lt!2544465 lt!2544282))))

(assert (= (and d!2210904 res!2887295) b!7070082))

(declare-fun b_lambda!269897 () Bool)

(assert (=> (not b_lambda!269897) (not d!2210904)))

(declare-fun m!7795130 () Bool)

(assert (=> d!2210904 m!7795130))

(assert (=> d!2210904 m!7794858))

(assert (=> d!2210904 m!7794858))

(declare-fun m!7795132 () Bool)

(assert (=> d!2210904 m!7795132))

(declare-fun m!7795134 () Bool)

(assert (=> d!2210904 m!7795134))

(declare-fun m!7795136 () Bool)

(assert (=> b!7070082 m!7795136))

(assert (=> b!7069933 d!2210904))

(declare-fun d!2210906 () Bool)

(declare-fun e!4250533 () Bool)

(assert (=> d!2210906 e!4250533))

(declare-fun res!2887298 () Bool)

(assert (=> d!2210906 (=> (not res!2887298) (not e!4250533))))

(declare-fun lt!2544468 () List!68436)

(declare-fun noDuplicate!2722 (List!68436) Bool)

(assert (=> d!2210906 (= res!2887298 (noDuplicate!2722 lt!2544468))))

(declare-fun choose!54163 ((Set Context!13264)) List!68436)

(assert (=> d!2210906 (= lt!2544468 (choose!54163 lt!2544282))))

(assert (=> d!2210906 (= (toList!10977 lt!2544282) lt!2544468)))

(declare-fun b!7070085 () Bool)

(assert (=> b!7070085 (= e!4250533 (= (content!13774 lt!2544468) lt!2544282))))

(assert (= (and d!2210906 res!2887298) b!7070085))

(declare-fun m!7795138 () Bool)

(assert (=> d!2210906 m!7795138))

(declare-fun m!7795140 () Bool)

(assert (=> d!2210906 m!7795140))

(declare-fun m!7795142 () Bool)

(assert (=> b!7070085 m!7795142))

(assert (=> b!7069933 d!2210906))

(declare-fun bs!1880439 () Bool)

(declare-fun d!2210908 () Bool)

(assert (= bs!1880439 (and d!2210908 b!7069933)))

(declare-fun lambda!425093 () Int)

(assert (=> bs!1880439 (not (= lambda!425093 lambda!425037))))

(declare-fun bs!1880440 () Bool)

(assert (= bs!1880440 (and d!2210908 d!2210900)))

(assert (=> bs!1880440 (not (= lambda!425093 lambda!425090))))

(assert (=> d!2210908 true))

(declare-fun order!28395 () Int)

(declare-fun dynLambda!27777 (Int Int) Int)

(assert (=> d!2210908 (< (dynLambda!27777 order!28395 lambda!425037) (dynLambda!27777 order!28395 lambda!425093))))

(declare-fun forall!16586 (List!68436 Int) Bool)

(assert (=> d!2210908 (= (exists!3675 lt!2544290 lambda!425037) (not (forall!16586 lt!2544290 lambda!425093)))))

(declare-fun bs!1880441 () Bool)

(assert (= bs!1880441 d!2210908))

(declare-fun m!7795144 () Bool)

(assert (=> bs!1880441 m!7795144))

(assert (=> b!7069933 d!2210908))

(declare-fun b!7070099 () Bool)

(declare-fun lt!2544471 () List!68434)

(declare-fun e!4250539 () Bool)

(assert (=> b!7070099 (= e!4250539 (or (not (= (exprs!7132 ct2!306) Nil!68310)) (= lt!2544471 (exprs!7132 lt!2544288))))))

(declare-fun b!7070097 () Bool)

(declare-fun e!4250538 () List!68434)

(assert (=> b!7070097 (= e!4250538 (Cons!68310 (h!74758 (exprs!7132 lt!2544288)) (++!15756 (t!382217 (exprs!7132 lt!2544288)) (exprs!7132 ct2!306))))))

(declare-fun d!2210910 () Bool)

(assert (=> d!2210910 e!4250539))

(declare-fun res!2887303 () Bool)

(assert (=> d!2210910 (=> (not res!2887303) (not e!4250539))))

(declare-fun content!13775 (List!68434) (Set Regex!17636))

(assert (=> d!2210910 (= res!2887303 (= (content!13775 lt!2544471) (set.union (content!13775 (exprs!7132 lt!2544288)) (content!13775 (exprs!7132 ct2!306)))))))

(assert (=> d!2210910 (= lt!2544471 e!4250538)))

(declare-fun c!1318680 () Bool)

(assert (=> d!2210910 (= c!1318680 (is-Nil!68310 (exprs!7132 lt!2544288)))))

(assert (=> d!2210910 (= (++!15756 (exprs!7132 lt!2544288) (exprs!7132 ct2!306)) lt!2544471)))

(declare-fun b!7070096 () Bool)

(assert (=> b!7070096 (= e!4250538 (exprs!7132 ct2!306))))

(declare-fun b!7070098 () Bool)

(declare-fun res!2887304 () Bool)

(assert (=> b!7070098 (=> (not res!2887304) (not e!4250539))))

(declare-fun size!41203 (List!68434) Int)

(assert (=> b!7070098 (= res!2887304 (= (size!41203 lt!2544471) (+ (size!41203 (exprs!7132 lt!2544288)) (size!41203 (exprs!7132 ct2!306)))))))

(assert (= (and d!2210910 c!1318680) b!7070096))

(assert (= (and d!2210910 (not c!1318680)) b!7070097))

(assert (= (and d!2210910 res!2887303) b!7070098))

(assert (= (and b!7070098 res!2887304) b!7070099))

(declare-fun m!7795146 () Bool)

(assert (=> b!7070097 m!7795146))

(declare-fun m!7795148 () Bool)

(assert (=> d!2210910 m!7795148))

(declare-fun m!7795150 () Bool)

(assert (=> d!2210910 m!7795150))

(declare-fun m!7795152 () Bool)

(assert (=> d!2210910 m!7795152))

(declare-fun m!7795154 () Bool)

(assert (=> b!7070098 m!7795154))

(declare-fun m!7795156 () Bool)

(assert (=> b!7070098 m!7795156))

(declare-fun m!7795158 () Bool)

(assert (=> b!7070098 m!7795158))

(assert (=> b!7069925 d!2210910))

(assert (=> b!7069925 d!2210888))

(declare-fun d!2210912 () Bool)

(declare-fun e!4250542 () Bool)

(assert (=> d!2210912 e!4250542))

(declare-fun res!2887307 () Bool)

(assert (=> d!2210912 (=> (not res!2887307) (not e!4250542))))

(declare-fun lt!2544474 () Context!13264)

(declare-fun dynLambda!27778 (Int Context!13264) Context!13264)

(assert (=> d!2210912 (= res!2887307 (= lt!2544297 (dynLambda!27778 lambda!425038 lt!2544474)))))

(declare-fun choose!54164 ((Set Context!13264) Int Context!13264) Context!13264)

(assert (=> d!2210912 (= lt!2544474 (choose!54164 z1!570 lambda!425038 lt!2544297))))

(declare-fun map!15980 ((Set Context!13264) Int) (Set Context!13264))

(assert (=> d!2210912 (set.member lt!2544297 (map!15980 z1!570 lambda!425038))))

(assert (=> d!2210912 (= (mapPost2!465 z1!570 lambda!425038 lt!2544297) lt!2544474)))

(declare-fun b!7070103 () Bool)

(assert (=> b!7070103 (= e!4250542 (set.member lt!2544474 z1!570))))

(assert (= (and d!2210912 res!2887307) b!7070103))

(declare-fun b_lambda!269899 () Bool)

(assert (=> (not b_lambda!269899) (not d!2210912)))

(declare-fun m!7795160 () Bool)

(assert (=> d!2210912 m!7795160))

(declare-fun m!7795162 () Bool)

(assert (=> d!2210912 m!7795162))

(declare-fun m!7795164 () Bool)

(assert (=> d!2210912 m!7795164))

(declare-fun m!7795166 () Bool)

(assert (=> d!2210912 m!7795166))

(declare-fun m!7795168 () Bool)

(assert (=> b!7070103 m!7795168))

(assert (=> b!7069925 d!2210912))

(declare-fun d!2210914 () Bool)

(declare-fun c!1318681 () Bool)

(assert (=> d!2210914 (= c!1318681 (isEmpty!39865 (_1!37426 lt!2544295)))))

(declare-fun e!4250543 () Bool)

(assert (=> d!2210914 (= (matchZipper!3176 lt!2544274 (_1!37426 lt!2544295)) e!4250543)))

(declare-fun b!7070104 () Bool)

(assert (=> b!7070104 (= e!4250543 (nullableZipper!2693 lt!2544274))))

(declare-fun b!7070105 () Bool)

(assert (=> b!7070105 (= e!4250543 (matchZipper!3176 (derivationStepZipper!3086 lt!2544274 (head!14401 (_1!37426 lt!2544295))) (tail!13815 (_1!37426 lt!2544295))))))

(assert (= (and d!2210914 c!1318681) b!7070104))

(assert (= (and d!2210914 (not c!1318681)) b!7070105))

(assert (=> d!2210914 m!7795076))

(declare-fun m!7795170 () Bool)

(assert (=> b!7070104 m!7795170))

(assert (=> b!7070105 m!7795080))

(assert (=> b!7070105 m!7795080))

(declare-fun m!7795172 () Bool)

(assert (=> b!7070105 m!7795172))

(assert (=> b!7070105 m!7795084))

(assert (=> b!7070105 m!7795172))

(assert (=> b!7070105 m!7795084))

(declare-fun m!7795174 () Bool)

(assert (=> b!7070105 m!7795174))

(assert (=> b!7069914 d!2210914))

(declare-fun d!2210916 () Bool)

(declare-fun c!1318682 () Bool)

(assert (=> d!2210916 (= c!1318682 (isEmpty!39865 (t!382218 s!7408)))))

(declare-fun e!4250544 () Bool)

(assert (=> d!2210916 (= (matchZipper!3176 lt!2544291 (t!382218 s!7408)) e!4250544)))

(declare-fun b!7070106 () Bool)

(assert (=> b!7070106 (= e!4250544 (nullableZipper!2693 lt!2544291))))

(declare-fun b!7070107 () Bool)

(assert (=> b!7070107 (= e!4250544 (matchZipper!3176 (derivationStepZipper!3086 lt!2544291 (head!14401 (t!382218 s!7408))) (tail!13815 (t!382218 s!7408))))))

(assert (= (and d!2210916 c!1318682) b!7070106))

(assert (= (and d!2210916 (not c!1318682)) b!7070107))

(assert (=> d!2210916 m!7795098))

(declare-fun m!7795176 () Bool)

(assert (=> b!7070106 m!7795176))

(assert (=> b!7070107 m!7795102))

(assert (=> b!7070107 m!7795102))

(declare-fun m!7795178 () Bool)

(assert (=> b!7070107 m!7795178))

(assert (=> b!7070107 m!7795106))

(assert (=> b!7070107 m!7795178))

(assert (=> b!7070107 m!7795106))

(declare-fun m!7795180 () Bool)

(assert (=> b!7070107 m!7795180))

(assert (=> b!7069923 d!2210916))

(declare-fun d!2210918 () Bool)

(declare-fun c!1318683 () Bool)

(assert (=> d!2210918 (= c!1318683 (isEmpty!39865 (t!382218 s!7408)))))

(declare-fun e!4250545 () Bool)

(assert (=> d!2210918 (= (matchZipper!3176 lt!2544266 (t!382218 s!7408)) e!4250545)))

(declare-fun b!7070108 () Bool)

(assert (=> b!7070108 (= e!4250545 (nullableZipper!2693 lt!2544266))))

(declare-fun b!7070109 () Bool)

(assert (=> b!7070109 (= e!4250545 (matchZipper!3176 (derivationStepZipper!3086 lt!2544266 (head!14401 (t!382218 s!7408))) (tail!13815 (t!382218 s!7408))))))

(assert (= (and d!2210918 c!1318683) b!7070108))

(assert (= (and d!2210918 (not c!1318683)) b!7070109))

(assert (=> d!2210918 m!7795098))

(declare-fun m!7795182 () Bool)

(assert (=> b!7070108 m!7795182))

(assert (=> b!7070109 m!7795102))

(assert (=> b!7070109 m!7795102))

(declare-fun m!7795184 () Bool)

(assert (=> b!7070109 m!7795184))

(assert (=> b!7070109 m!7795106))

(assert (=> b!7070109 m!7795184))

(assert (=> b!7070109 m!7795106))

(declare-fun m!7795186 () Bool)

(assert (=> b!7070109 m!7795186))

(assert (=> b!7069923 d!2210918))

(declare-fun d!2210920 () Bool)

(declare-fun c!1318684 () Bool)

(assert (=> d!2210920 (= c!1318684 (isEmpty!39865 (t!382218 s!7408)))))

(declare-fun e!4250546 () Bool)

(assert (=> d!2210920 (= (matchZipper!3176 lt!2544300 (t!382218 s!7408)) e!4250546)))

(declare-fun b!7070110 () Bool)

(assert (=> b!7070110 (= e!4250546 (nullableZipper!2693 lt!2544300))))

(declare-fun b!7070111 () Bool)

(assert (=> b!7070111 (= e!4250546 (matchZipper!3176 (derivationStepZipper!3086 lt!2544300 (head!14401 (t!382218 s!7408))) (tail!13815 (t!382218 s!7408))))))

(assert (= (and d!2210920 c!1318684) b!7070110))

(assert (= (and d!2210920 (not c!1318684)) b!7070111))

(assert (=> d!2210920 m!7795098))

(declare-fun m!7795188 () Bool)

(assert (=> b!7070110 m!7795188))

(assert (=> b!7070111 m!7795102))

(assert (=> b!7070111 m!7795102))

(declare-fun m!7795190 () Bool)

(assert (=> b!7070111 m!7795190))

(assert (=> b!7070111 m!7795106))

(assert (=> b!7070111 m!7795190))

(assert (=> b!7070111 m!7795106))

(declare-fun m!7795192 () Bool)

(assert (=> b!7070111 m!7795192))

(assert (=> b!7069923 d!2210920))

(assert (=> b!7069923 d!2210896))

(declare-fun e!4250547 () Bool)

(declare-fun d!2210922 () Bool)

(assert (=> d!2210922 (= (matchZipper!3176 (set.union lt!2544291 lt!2544298) (t!382218 s!7408)) e!4250547)))

(declare-fun res!2887308 () Bool)

(assert (=> d!2210922 (=> res!2887308 e!4250547)))

(assert (=> d!2210922 (= res!2887308 (matchZipper!3176 lt!2544291 (t!382218 s!7408)))))

(declare-fun lt!2544475 () Unit!161982)

(assert (=> d!2210922 (= lt!2544475 (choose!54161 lt!2544291 lt!2544298 (t!382218 s!7408)))))

(assert (=> d!2210922 (= (lemmaZipperConcatMatchesSameAsBothZippers!1649 lt!2544291 lt!2544298 (t!382218 s!7408)) lt!2544475)))

(declare-fun b!7070112 () Bool)

(assert (=> b!7070112 (= e!4250547 (matchZipper!3176 lt!2544298 (t!382218 s!7408)))))

(assert (= (and d!2210922 (not res!2887308)) b!7070112))

(declare-fun m!7795194 () Bool)

(assert (=> d!2210922 m!7795194))

(assert (=> d!2210922 m!7794892))

(declare-fun m!7795196 () Bool)

(assert (=> d!2210922 m!7795196))

(assert (=> b!7070112 m!7794836))

(assert (=> b!7069923 d!2210922))

(declare-fun d!2210924 () Bool)

(assert (=> d!2210924 (= (get!23924 lt!2544299) (v!53248 lt!2544299))))

(assert (=> b!7069912 d!2210924))

(declare-fun d!2210926 () Bool)

(declare-fun isEmpty!39866 (Option!16955) Bool)

(assert (=> d!2210926 (= (isDefined!13656 lt!2544299) (not (isEmpty!39866 lt!2544299)))))

(declare-fun bs!1880442 () Bool)

(assert (= bs!1880442 d!2210926))

(declare-fun m!7795198 () Bool)

(assert (=> bs!1880442 m!7795198))

(assert (=> b!7069912 d!2210926))

(declare-fun d!2210928 () Bool)

(declare-fun c!1318697 () Bool)

(assert (=> d!2210928 (= c!1318697 (and (is-ElementMatch!17636 (h!74758 (exprs!7132 lt!2544288))) (= (c!1318647 (h!74758 (exprs!7132 lt!2544288))) (h!74759 s!7408))))))

(declare-fun e!4250564 () (Set Context!13264))

(assert (=> d!2210928 (= (derivationStepZipperDown!2270 (h!74758 (exprs!7132 lt!2544288)) lt!2544267 (h!74759 s!7408)) e!4250564)))

(declare-fun bm!642563 () Bool)

(declare-fun call!642568 () List!68434)

(declare-fun call!642571 () List!68434)

(assert (=> bm!642563 (= call!642568 call!642571)))

(declare-fun bm!642564 () Bool)

(declare-fun call!642573 () (Set Context!13264))

(declare-fun call!642569 () (Set Context!13264))

(assert (=> bm!642564 (= call!642573 call!642569)))

(declare-fun b!7070135 () Bool)

(declare-fun e!4250565 () (Set Context!13264))

(declare-fun e!4250562 () (Set Context!13264))

(assert (=> b!7070135 (= e!4250565 e!4250562)))

(declare-fun c!1318698 () Bool)

(assert (=> b!7070135 (= c!1318698 (is-Concat!26481 (h!74758 (exprs!7132 lt!2544288))))))

(declare-fun c!1318699 () Bool)

(declare-fun bm!642565 () Bool)

(declare-fun call!642572 () (Set Context!13264))

(assert (=> bm!642565 (= call!642572 (derivationStepZipperDown!2270 (ite c!1318699 (regOne!35785 (h!74758 (exprs!7132 lt!2544288))) (regOne!35784 (h!74758 (exprs!7132 lt!2544288)))) (ite c!1318699 lt!2544267 (Context!13265 call!642571)) (h!74759 s!7408)))))

(declare-fun b!7070136 () Bool)

(assert (=> b!7070136 (= e!4250562 call!642573)))

(declare-fun b!7070137 () Bool)

(declare-fun e!4250563 () (Set Context!13264))

(assert (=> b!7070137 (= e!4250564 e!4250563)))

(assert (=> b!7070137 (= c!1318699 (is-Union!17636 (h!74758 (exprs!7132 lt!2544288))))))

(declare-fun b!7070138 () Bool)

(assert (=> b!7070138 (= e!4250564 (set.insert lt!2544267 (as set.empty (Set Context!13264))))))

(declare-fun bm!642566 () Bool)

(declare-fun c!1318696 () Bool)

(declare-fun $colon$colon!2654 (List!68434 Regex!17636) List!68434)

(assert (=> bm!642566 (= call!642571 ($colon$colon!2654 (exprs!7132 lt!2544267) (ite (or c!1318696 c!1318698) (regTwo!35784 (h!74758 (exprs!7132 lt!2544288))) (h!74758 (exprs!7132 lt!2544288)))))))

(declare-fun b!7070139 () Bool)

(declare-fun e!4250561 () Bool)

(assert (=> b!7070139 (= c!1318696 e!4250561)))

(declare-fun res!2887311 () Bool)

(assert (=> b!7070139 (=> (not res!2887311) (not e!4250561))))

(assert (=> b!7070139 (= res!2887311 (is-Concat!26481 (h!74758 (exprs!7132 lt!2544288))))))

(assert (=> b!7070139 (= e!4250563 e!4250565)))

(declare-fun b!7070140 () Bool)

(assert (=> b!7070140 (= e!4250561 (nullable!7319 (regOne!35784 (h!74758 (exprs!7132 lt!2544288)))))))

(declare-fun bm!642567 () Bool)

(declare-fun call!642570 () (Set Context!13264))

(assert (=> bm!642567 (= call!642569 call!642570)))

(declare-fun b!7070141 () Bool)

(assert (=> b!7070141 (= e!4250563 (set.union call!642572 call!642570))))

(declare-fun b!7070142 () Bool)

(assert (=> b!7070142 (= e!4250565 (set.union call!642572 call!642569))))

(declare-fun bm!642568 () Bool)

(assert (=> bm!642568 (= call!642570 (derivationStepZipperDown!2270 (ite c!1318699 (regTwo!35785 (h!74758 (exprs!7132 lt!2544288))) (ite c!1318696 (regTwo!35784 (h!74758 (exprs!7132 lt!2544288))) (ite c!1318698 (regOne!35784 (h!74758 (exprs!7132 lt!2544288))) (reg!17965 (h!74758 (exprs!7132 lt!2544288)))))) (ite (or c!1318699 c!1318696) lt!2544267 (Context!13265 call!642568)) (h!74759 s!7408)))))

(declare-fun b!7070143 () Bool)

(declare-fun e!4250560 () (Set Context!13264))

(assert (=> b!7070143 (= e!4250560 call!642573)))

(declare-fun b!7070144 () Bool)

(declare-fun c!1318695 () Bool)

(assert (=> b!7070144 (= c!1318695 (is-Star!17636 (h!74758 (exprs!7132 lt!2544288))))))

(assert (=> b!7070144 (= e!4250562 e!4250560)))

(declare-fun b!7070145 () Bool)

(assert (=> b!7070145 (= e!4250560 (as set.empty (Set Context!13264)))))

(assert (= (and d!2210928 c!1318697) b!7070138))

(assert (= (and d!2210928 (not c!1318697)) b!7070137))

(assert (= (and b!7070137 c!1318699) b!7070141))

(assert (= (and b!7070137 (not c!1318699)) b!7070139))

(assert (= (and b!7070139 res!2887311) b!7070140))

(assert (= (and b!7070139 c!1318696) b!7070142))

(assert (= (and b!7070139 (not c!1318696)) b!7070135))

(assert (= (and b!7070135 c!1318698) b!7070136))

(assert (= (and b!7070135 (not c!1318698)) b!7070144))

(assert (= (and b!7070144 c!1318695) b!7070143))

(assert (= (and b!7070144 (not c!1318695)) b!7070145))

(assert (= (or b!7070136 b!7070143) bm!642563))

(assert (= (or b!7070136 b!7070143) bm!642564))

(assert (= (or b!7070142 bm!642564) bm!642567))

(assert (= (or b!7070142 bm!642563) bm!642566))

(assert (= (or b!7070141 b!7070142) bm!642565))

(assert (= (or b!7070141 bm!642567) bm!642568))

(declare-fun m!7795200 () Bool)

(assert (=> bm!642565 m!7795200))

(declare-fun m!7795202 () Bool)

(assert (=> bm!642568 m!7795202))

(declare-fun m!7795204 () Bool)

(assert (=> b!7070140 m!7795204))

(declare-fun m!7795206 () Bool)

(assert (=> b!7070138 m!7795206))

(declare-fun m!7795208 () Bool)

(assert (=> bm!642566 m!7795208))

(assert (=> b!7069912 d!2210928))

(declare-fun d!2210930 () Bool)

(declare-fun c!1318700 () Bool)

(assert (=> d!2210930 (= c!1318700 (isEmpty!39865 (_1!37426 lt!2544295)))))

(declare-fun e!4250566 () Bool)

(assert (=> d!2210930 (= (matchZipper!3176 lt!2544289 (_1!37426 lt!2544295)) e!4250566)))

(declare-fun b!7070146 () Bool)

(assert (=> b!7070146 (= e!4250566 (nullableZipper!2693 lt!2544289))))

(declare-fun b!7070147 () Bool)

(assert (=> b!7070147 (= e!4250566 (matchZipper!3176 (derivationStepZipper!3086 lt!2544289 (head!14401 (_1!37426 lt!2544295))) (tail!13815 (_1!37426 lt!2544295))))))

(assert (= (and d!2210930 c!1318700) b!7070146))

(assert (= (and d!2210930 (not c!1318700)) b!7070147))

(assert (=> d!2210930 m!7795076))

(declare-fun m!7795210 () Bool)

(assert (=> b!7070146 m!7795210))

(assert (=> b!7070147 m!7795080))

(assert (=> b!7070147 m!7795080))

(declare-fun m!7795212 () Bool)

(assert (=> b!7070147 m!7795212))

(assert (=> b!7070147 m!7795084))

(assert (=> b!7070147 m!7795212))

(assert (=> b!7070147 m!7795084))

(declare-fun m!7795214 () Bool)

(assert (=> b!7070147 m!7795214))

(assert (=> b!7069912 d!2210930))

(assert (=> b!7069912 d!2210896))

(declare-fun bs!1880443 () Bool)

(declare-fun d!2210932 () Bool)

(assert (= bs!1880443 (and d!2210932 b!7069925)))

(declare-fun lambda!425098 () Int)

(assert (=> bs!1880443 (= lambda!425098 lambda!425038)))

(assert (=> d!2210932 true))

(assert (=> d!2210932 (= (appendTo!757 lt!2544289 ct2!306) (map!15980 lt!2544289 lambda!425098))))

(declare-fun bs!1880444 () Bool)

(assert (= bs!1880444 d!2210932))

(declare-fun m!7795216 () Bool)

(assert (=> bs!1880444 m!7795216))

(assert (=> b!7069912 d!2210932))

(declare-fun b!7070166 () Bool)

(declare-fun res!2887325 () Bool)

(declare-fun e!4250581 () Bool)

(assert (=> b!7070166 (=> (not res!2887325) (not e!4250581))))

(declare-fun lt!2544484 () Option!16955)

(assert (=> b!7070166 (= res!2887325 (matchZipper!3176 lt!2544289 (_1!37426 (get!23924 lt!2544484))))))

(declare-fun b!7070167 () Bool)

(declare-fun e!4250577 () Option!16955)

(assert (=> b!7070167 (= e!4250577 None!16954)))

(declare-fun d!2210934 () Bool)

(declare-fun e!4250579 () Bool)

(assert (=> d!2210934 e!4250579))

(declare-fun res!2887323 () Bool)

(assert (=> d!2210934 (=> res!2887323 e!4250579)))

(assert (=> d!2210934 (= res!2887323 e!4250581)))

(declare-fun res!2887326 () Bool)

(assert (=> d!2210934 (=> (not res!2887326) (not e!4250581))))

(assert (=> d!2210934 (= res!2887326 (isDefined!13656 lt!2544484))))

(declare-fun e!4250578 () Option!16955)

(assert (=> d!2210934 (= lt!2544484 e!4250578)))

(declare-fun c!1318707 () Bool)

(declare-fun e!4250580 () Bool)

(assert (=> d!2210934 (= c!1318707 e!4250580)))

(declare-fun res!2887322 () Bool)

(assert (=> d!2210934 (=> (not res!2887322) (not e!4250580))))

(assert (=> d!2210934 (= res!2887322 (matchZipper!3176 lt!2544289 Nil!68311))))

(assert (=> d!2210934 (= (++!15755 Nil!68311 (t!382218 s!7408)) (t!382218 s!7408))))

(assert (=> d!2210934 (= (findConcatSeparationZippers!471 lt!2544289 lt!2544286 Nil!68311 (t!382218 s!7408) (t!382218 s!7408)) lt!2544484)))

(declare-fun b!7070168 () Bool)

(assert (=> b!7070168 (= e!4250579 (not (isDefined!13656 lt!2544484)))))

(declare-fun b!7070169 () Bool)

(assert (=> b!7070169 (= e!4250580 (matchZipper!3176 lt!2544286 (t!382218 s!7408)))))

(declare-fun b!7070170 () Bool)

(assert (=> b!7070170 (= e!4250581 (= (++!15755 (_1!37426 (get!23924 lt!2544484)) (_2!37426 (get!23924 lt!2544484))) (t!382218 s!7408)))))

(declare-fun b!7070171 () Bool)

(declare-fun res!2887324 () Bool)

(assert (=> b!7070171 (=> (not res!2887324) (not e!4250581))))

(assert (=> b!7070171 (= res!2887324 (matchZipper!3176 lt!2544286 (_2!37426 (get!23924 lt!2544484))))))

(declare-fun b!7070172 () Bool)

(assert (=> b!7070172 (= e!4250578 e!4250577)))

(declare-fun c!1318706 () Bool)

(assert (=> b!7070172 (= c!1318706 (is-Nil!68311 (t!382218 s!7408)))))

(declare-fun b!7070173 () Bool)

(declare-fun lt!2544486 () Unit!161982)

(declare-fun lt!2544485 () Unit!161982)

(assert (=> b!7070173 (= lt!2544486 lt!2544485)))

(assert (=> b!7070173 (= (++!15755 (++!15755 Nil!68311 (Cons!68311 (h!74759 (t!382218 s!7408)) Nil!68311)) (t!382218 (t!382218 s!7408))) (t!382218 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2970 (List!68435 C!35542 List!68435 List!68435) Unit!161982)

(assert (=> b!7070173 (= lt!2544485 (lemmaMoveElementToOtherListKeepsConcatEq!2970 Nil!68311 (h!74759 (t!382218 s!7408)) (t!382218 (t!382218 s!7408)) (t!382218 s!7408)))))

(assert (=> b!7070173 (= e!4250577 (findConcatSeparationZippers!471 lt!2544289 lt!2544286 (++!15755 Nil!68311 (Cons!68311 (h!74759 (t!382218 s!7408)) Nil!68311)) (t!382218 (t!382218 s!7408)) (t!382218 s!7408)))))

(declare-fun b!7070174 () Bool)

(assert (=> b!7070174 (= e!4250578 (Some!16954 (tuple2!68247 Nil!68311 (t!382218 s!7408))))))

(assert (= (and d!2210934 res!2887322) b!7070169))

(assert (= (and d!2210934 c!1318707) b!7070174))

(assert (= (and d!2210934 (not c!1318707)) b!7070172))

(assert (= (and b!7070172 c!1318706) b!7070167))

(assert (= (and b!7070172 (not c!1318706)) b!7070173))

(assert (= (and d!2210934 res!2887326) b!7070166))

(assert (= (and b!7070166 res!2887325) b!7070171))

(assert (= (and b!7070171 res!2887324) b!7070170))

(assert (= (and d!2210934 (not res!2887323)) b!7070168))

(declare-fun m!7795218 () Bool)

(assert (=> b!7070168 m!7795218))

(assert (=> d!2210934 m!7795218))

(declare-fun m!7795220 () Bool)

(assert (=> d!2210934 m!7795220))

(declare-fun m!7795222 () Bool)

(assert (=> d!2210934 m!7795222))

(declare-fun m!7795224 () Bool)

(assert (=> b!7070166 m!7795224))

(declare-fun m!7795226 () Bool)

(assert (=> b!7070166 m!7795226))

(declare-fun m!7795228 () Bool)

(assert (=> b!7070173 m!7795228))

(assert (=> b!7070173 m!7795228))

(declare-fun m!7795230 () Bool)

(assert (=> b!7070173 m!7795230))

(declare-fun m!7795232 () Bool)

(assert (=> b!7070173 m!7795232))

(assert (=> b!7070173 m!7795228))

(declare-fun m!7795234 () Bool)

(assert (=> b!7070173 m!7795234))

(assert (=> b!7070170 m!7795224))

(declare-fun m!7795236 () Bool)

(assert (=> b!7070170 m!7795236))

(declare-fun m!7795238 () Bool)

(assert (=> b!7070169 m!7795238))

(assert (=> b!7070171 m!7795224))

(declare-fun m!7795240 () Bool)

(assert (=> b!7070171 m!7795240))

(assert (=> b!7069912 d!2210934))

(declare-fun d!2210936 () Bool)

(assert (=> d!2210936 (isDefined!13656 (findConcatSeparationZippers!471 lt!2544289 (set.insert ct2!306 (as set.empty (Set Context!13264))) Nil!68311 (t!382218 s!7408) (t!382218 s!7408)))))

(declare-fun lt!2544489 () Unit!161982)

(declare-fun choose!54165 ((Set Context!13264) Context!13264 List!68435) Unit!161982)

(assert (=> d!2210936 (= lt!2544489 (choose!54165 lt!2544289 ct2!306 (t!382218 s!7408)))))

(assert (=> d!2210936 (matchZipper!3176 (appendTo!757 lt!2544289 ct2!306) (t!382218 s!7408))))

(assert (=> d!2210936 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!459 lt!2544289 ct2!306 (t!382218 s!7408)) lt!2544489)))

(declare-fun bs!1880445 () Bool)

(assert (= bs!1880445 d!2210936))

(assert (=> bs!1880445 m!7794914))

(assert (=> bs!1880445 m!7794910))

(declare-fun m!7795242 () Bool)

(assert (=> bs!1880445 m!7795242))

(assert (=> bs!1880445 m!7794910))

(declare-fun m!7795244 () Bool)

(assert (=> bs!1880445 m!7795244))

(assert (=> bs!1880445 m!7795242))

(declare-fun m!7795246 () Bool)

(assert (=> bs!1880445 m!7795246))

(assert (=> bs!1880445 m!7794914))

(declare-fun m!7795248 () Bool)

(assert (=> bs!1880445 m!7795248))

(assert (=> b!7069912 d!2210936))

(declare-fun bs!1880446 () Bool)

(declare-fun d!2210938 () Bool)

(assert (= bs!1880446 (and d!2210938 b!7069925)))

(declare-fun lambda!425101 () Int)

(assert (=> bs!1880446 (= lambda!425101 lambda!425039)))

(assert (=> d!2210938 (= (derivationStepZipperDown!2270 (h!74758 (exprs!7132 lt!2544288)) (Context!13265 (++!15756 (exprs!7132 lt!2544267) (exprs!7132 ct2!306))) (h!74759 s!7408)) (appendTo!757 (derivationStepZipperDown!2270 (h!74758 (exprs!7132 lt!2544288)) lt!2544267 (h!74759 s!7408)) ct2!306))))

(declare-fun lt!2544495 () Unit!161982)

(assert (=> d!2210938 (= lt!2544495 (lemmaConcatPreservesForall!947 (exprs!7132 lt!2544267) (exprs!7132 ct2!306) lambda!425101))))

(declare-fun lt!2544494 () Unit!161982)

(declare-fun choose!54166 (Context!13264 Regex!17636 C!35542 Context!13264) Unit!161982)

(assert (=> d!2210938 (= lt!2544494 (choose!54166 lt!2544267 (h!74758 (exprs!7132 lt!2544288)) (h!74759 s!7408) ct2!306))))

(declare-fun validRegex!8968 (Regex!17636) Bool)

(assert (=> d!2210938 (validRegex!8968 (h!74758 (exprs!7132 lt!2544288)))))

(assert (=> d!2210938 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!107 lt!2544267 (h!74758 (exprs!7132 lt!2544288)) (h!74759 s!7408) ct2!306) lt!2544494)))

(declare-fun bs!1880447 () Bool)

(assert (= bs!1880447 d!2210938))

(declare-fun m!7795250 () Bool)

(assert (=> bs!1880447 m!7795250))

(declare-fun m!7795252 () Bool)

(assert (=> bs!1880447 m!7795252))

(declare-fun m!7795254 () Bool)

(assert (=> bs!1880447 m!7795254))

(assert (=> bs!1880447 m!7794916))

(assert (=> bs!1880447 m!7794916))

(declare-fun m!7795256 () Bool)

(assert (=> bs!1880447 m!7795256))

(declare-fun m!7795258 () Bool)

(assert (=> bs!1880447 m!7795258))

(declare-fun m!7795260 () Bool)

(assert (=> bs!1880447 m!7795260))

(assert (=> b!7069912 d!2210938))

(declare-fun d!2210940 () Bool)

(assert (=> d!2210940 (= (flatMap!2562 lt!2544263 lambda!425040) (choose!54158 lt!2544263 lambda!425040))))

(declare-fun bs!1880448 () Bool)

(assert (= bs!1880448 d!2210940))

(declare-fun m!7795262 () Bool)

(assert (=> bs!1880448 m!7795262))

(assert (=> b!7069913 d!2210940))

(declare-fun b!7070175 () Bool)

(declare-fun e!4250583 () (Set Context!13264))

(assert (=> b!7070175 (= e!4250583 (as set.empty (Set Context!13264)))))

(declare-fun b!7070176 () Bool)

(declare-fun e!4250584 () Bool)

(assert (=> b!7070176 (= e!4250584 (nullable!7319 (h!74758 (exprs!7132 lt!2544288))))))

(declare-fun b!7070177 () Bool)

(declare-fun call!642574 () (Set Context!13264))

(assert (=> b!7070177 (= e!4250583 call!642574)))

(declare-fun e!4250582 () (Set Context!13264))

(declare-fun b!7070178 () Bool)

(assert (=> b!7070178 (= e!4250582 (set.union call!642574 (derivationStepZipperUp!2220 (Context!13265 (t!382217 (exprs!7132 lt!2544288))) (h!74759 s!7408))))))

(declare-fun d!2210942 () Bool)

(declare-fun c!1318710 () Bool)

(assert (=> d!2210942 (= c!1318710 e!4250584)))

(declare-fun res!2887327 () Bool)

(assert (=> d!2210942 (=> (not res!2887327) (not e!4250584))))

(assert (=> d!2210942 (= res!2887327 (is-Cons!68310 (exprs!7132 lt!2544288)))))

(assert (=> d!2210942 (= (derivationStepZipperUp!2220 lt!2544288 (h!74759 s!7408)) e!4250582)))

(declare-fun b!7070179 () Bool)

(assert (=> b!7070179 (= e!4250582 e!4250583)))

(declare-fun c!1318709 () Bool)

(assert (=> b!7070179 (= c!1318709 (is-Cons!68310 (exprs!7132 lt!2544288)))))

(declare-fun bm!642569 () Bool)

(assert (=> bm!642569 (= call!642574 (derivationStepZipperDown!2270 (h!74758 (exprs!7132 lt!2544288)) (Context!13265 (t!382217 (exprs!7132 lt!2544288))) (h!74759 s!7408)))))

(assert (= (and d!2210942 res!2887327) b!7070176))

(assert (= (and d!2210942 c!1318710) b!7070178))

(assert (= (and d!2210942 (not c!1318710)) b!7070179))

(assert (= (and b!7070179 c!1318709) b!7070177))

(assert (= (and b!7070179 (not c!1318709)) b!7070175))

(assert (= (or b!7070178 b!7070177) bm!642569))

(assert (=> b!7070176 m!7794822))

(declare-fun m!7795264 () Bool)

(assert (=> b!7070178 m!7795264))

(declare-fun m!7795266 () Bool)

(assert (=> bm!642569 m!7795266))

(assert (=> b!7069913 d!2210942))

(declare-fun d!2210944 () Bool)

(assert (=> d!2210944 (= (flatMap!2562 lt!2544263 lambda!425040) (dynLambda!27775 lambda!425040 lt!2544288))))

(declare-fun lt!2544496 () Unit!161982)

(assert (=> d!2210944 (= lt!2544496 (choose!54159 lt!2544263 lt!2544288 lambda!425040))))

(assert (=> d!2210944 (= lt!2544263 (set.insert lt!2544288 (as set.empty (Set Context!13264))))))

(assert (=> d!2210944 (= (lemmaFlatMapOnSingletonSet!2071 lt!2544263 lt!2544288 lambda!425040) lt!2544496)))

(declare-fun b_lambda!269901 () Bool)

(assert (=> (not b_lambda!269901) (not d!2210944)))

(declare-fun bs!1880449 () Bool)

(assert (= bs!1880449 d!2210944))

(assert (=> bs!1880449 m!7794834))

(declare-fun m!7795268 () Bool)

(assert (=> bs!1880449 m!7795268))

(declare-fun m!7795270 () Bool)

(assert (=> bs!1880449 m!7795270))

(assert (=> bs!1880449 m!7794828))

(assert (=> b!7069913 d!2210944))

(declare-fun bs!1880450 () Bool)

(declare-fun d!2210946 () Bool)

(assert (= bs!1880450 (and d!2210946 b!7069917)))

(declare-fun lambda!425102 () Int)

(assert (=> bs!1880450 (= lambda!425102 lambda!425040)))

(declare-fun bs!1880451 () Bool)

(assert (= bs!1880451 (and d!2210946 d!2210886)))

(assert (=> bs!1880451 (= lambda!425102 lambda!425087)))

(assert (=> d!2210946 true))

(assert (=> d!2210946 (= (derivationStepZipper!3086 lt!2544263 (h!74759 s!7408)) (flatMap!2562 lt!2544263 lambda!425102))))

(declare-fun bs!1880452 () Bool)

(assert (= bs!1880452 d!2210946))

(declare-fun m!7795272 () Bool)

(assert (=> bs!1880452 m!7795272))

(assert (=> b!7069913 d!2210946))

(assert (=> b!7069930 d!2210898))

(declare-fun b!7070180 () Bool)

(declare-fun e!4250586 () (Set Context!13264))

(assert (=> b!7070180 (= e!4250586 (as set.empty (Set Context!13264)))))

(declare-fun b!7070181 () Bool)

(declare-fun e!4250587 () Bool)

(assert (=> b!7070181 (= e!4250587 (nullable!7319 (h!74758 (exprs!7132 lt!2544271))))))

(declare-fun b!7070182 () Bool)

(declare-fun call!642575 () (Set Context!13264))

(assert (=> b!7070182 (= e!4250586 call!642575)))

(declare-fun e!4250585 () (Set Context!13264))

(declare-fun b!7070183 () Bool)

(assert (=> b!7070183 (= e!4250585 (set.union call!642575 (derivationStepZipperUp!2220 (Context!13265 (t!382217 (exprs!7132 lt!2544271))) (h!74759 s!7408))))))

(declare-fun d!2210948 () Bool)

(declare-fun c!1318712 () Bool)

(assert (=> d!2210948 (= c!1318712 e!4250587)))

(declare-fun res!2887328 () Bool)

(assert (=> d!2210948 (=> (not res!2887328) (not e!4250587))))

(assert (=> d!2210948 (= res!2887328 (is-Cons!68310 (exprs!7132 lt!2544271)))))

(assert (=> d!2210948 (= (derivationStepZipperUp!2220 lt!2544271 (h!74759 s!7408)) e!4250585)))

(declare-fun b!7070184 () Bool)

(assert (=> b!7070184 (= e!4250585 e!4250586)))

(declare-fun c!1318711 () Bool)

(assert (=> b!7070184 (= c!1318711 (is-Cons!68310 (exprs!7132 lt!2544271)))))

(declare-fun bm!642570 () Bool)

(assert (=> bm!642570 (= call!642575 (derivationStepZipperDown!2270 (h!74758 (exprs!7132 lt!2544271)) (Context!13265 (t!382217 (exprs!7132 lt!2544271))) (h!74759 s!7408)))))

(assert (= (and d!2210948 res!2887328) b!7070181))

(assert (= (and d!2210948 c!1318712) b!7070183))

(assert (= (and d!2210948 (not c!1318712)) b!7070184))

(assert (= (and b!7070184 c!1318711) b!7070182))

(assert (= (and b!7070184 (not c!1318711)) b!7070180))

(assert (= (or b!7070183 b!7070182) bm!642570))

(declare-fun m!7795274 () Bool)

(assert (=> b!7070181 m!7795274))

(declare-fun m!7795276 () Bool)

(assert (=> b!7070183 m!7795276))

(declare-fun m!7795278 () Bool)

(assert (=> bm!642570 m!7795278))

(assert (=> b!7069931 d!2210948))

(declare-fun d!2210950 () Bool)

(declare-fun c!1318715 () Bool)

(assert (=> d!2210950 (= c!1318715 (and (is-ElementMatch!17636 (h!74758 (exprs!7132 lt!2544288))) (= (c!1318647 (h!74758 (exprs!7132 lt!2544288))) (h!74759 s!7408))))))

(declare-fun e!4250592 () (Set Context!13264))

(assert (=> d!2210950 (= (derivationStepZipperDown!2270 (h!74758 (exprs!7132 lt!2544288)) lt!2544271 (h!74759 s!7408)) e!4250592)))

(declare-fun bm!642571 () Bool)

(declare-fun call!642576 () List!68434)

(declare-fun call!642579 () List!68434)

(assert (=> bm!642571 (= call!642576 call!642579)))

(declare-fun bm!642572 () Bool)

(declare-fun call!642581 () (Set Context!13264))

(declare-fun call!642577 () (Set Context!13264))

(assert (=> bm!642572 (= call!642581 call!642577)))

(declare-fun b!7070185 () Bool)

(declare-fun e!4250593 () (Set Context!13264))

(declare-fun e!4250590 () (Set Context!13264))

(assert (=> b!7070185 (= e!4250593 e!4250590)))

(declare-fun c!1318716 () Bool)

(assert (=> b!7070185 (= c!1318716 (is-Concat!26481 (h!74758 (exprs!7132 lt!2544288))))))

(declare-fun call!642580 () (Set Context!13264))

(declare-fun bm!642573 () Bool)

(declare-fun c!1318717 () Bool)

(assert (=> bm!642573 (= call!642580 (derivationStepZipperDown!2270 (ite c!1318717 (regOne!35785 (h!74758 (exprs!7132 lt!2544288))) (regOne!35784 (h!74758 (exprs!7132 lt!2544288)))) (ite c!1318717 lt!2544271 (Context!13265 call!642579)) (h!74759 s!7408)))))

(declare-fun b!7070186 () Bool)

(assert (=> b!7070186 (= e!4250590 call!642581)))

(declare-fun b!7070187 () Bool)

(declare-fun e!4250591 () (Set Context!13264))

(assert (=> b!7070187 (= e!4250592 e!4250591)))

(assert (=> b!7070187 (= c!1318717 (is-Union!17636 (h!74758 (exprs!7132 lt!2544288))))))

(declare-fun b!7070188 () Bool)

(assert (=> b!7070188 (= e!4250592 (set.insert lt!2544271 (as set.empty (Set Context!13264))))))

(declare-fun c!1318714 () Bool)

(declare-fun bm!642574 () Bool)

(assert (=> bm!642574 (= call!642579 ($colon$colon!2654 (exprs!7132 lt!2544271) (ite (or c!1318714 c!1318716) (regTwo!35784 (h!74758 (exprs!7132 lt!2544288))) (h!74758 (exprs!7132 lt!2544288)))))))

(declare-fun b!7070189 () Bool)

(declare-fun e!4250589 () Bool)

(assert (=> b!7070189 (= c!1318714 e!4250589)))

(declare-fun res!2887329 () Bool)

(assert (=> b!7070189 (=> (not res!2887329) (not e!4250589))))

(assert (=> b!7070189 (= res!2887329 (is-Concat!26481 (h!74758 (exprs!7132 lt!2544288))))))

(assert (=> b!7070189 (= e!4250591 e!4250593)))

(declare-fun b!7070190 () Bool)

(assert (=> b!7070190 (= e!4250589 (nullable!7319 (regOne!35784 (h!74758 (exprs!7132 lt!2544288)))))))

(declare-fun bm!642575 () Bool)

(declare-fun call!642578 () (Set Context!13264))

(assert (=> bm!642575 (= call!642577 call!642578)))

(declare-fun b!7070191 () Bool)

(assert (=> b!7070191 (= e!4250591 (set.union call!642580 call!642578))))

(declare-fun b!7070192 () Bool)

(assert (=> b!7070192 (= e!4250593 (set.union call!642580 call!642577))))

(declare-fun bm!642576 () Bool)

(assert (=> bm!642576 (= call!642578 (derivationStepZipperDown!2270 (ite c!1318717 (regTwo!35785 (h!74758 (exprs!7132 lt!2544288))) (ite c!1318714 (regTwo!35784 (h!74758 (exprs!7132 lt!2544288))) (ite c!1318716 (regOne!35784 (h!74758 (exprs!7132 lt!2544288))) (reg!17965 (h!74758 (exprs!7132 lt!2544288)))))) (ite (or c!1318717 c!1318714) lt!2544271 (Context!13265 call!642576)) (h!74759 s!7408)))))

(declare-fun b!7070193 () Bool)

(declare-fun e!4250588 () (Set Context!13264))

(assert (=> b!7070193 (= e!4250588 call!642581)))

(declare-fun b!7070194 () Bool)

(declare-fun c!1318713 () Bool)

(assert (=> b!7070194 (= c!1318713 (is-Star!17636 (h!74758 (exprs!7132 lt!2544288))))))

(assert (=> b!7070194 (= e!4250590 e!4250588)))

(declare-fun b!7070195 () Bool)

(assert (=> b!7070195 (= e!4250588 (as set.empty (Set Context!13264)))))

(assert (= (and d!2210950 c!1318715) b!7070188))

(assert (= (and d!2210950 (not c!1318715)) b!7070187))

(assert (= (and b!7070187 c!1318717) b!7070191))

(assert (= (and b!7070187 (not c!1318717)) b!7070189))

(assert (= (and b!7070189 res!2887329) b!7070190))

(assert (= (and b!7070189 c!1318714) b!7070192))

(assert (= (and b!7070189 (not c!1318714)) b!7070185))

(assert (= (and b!7070185 c!1318716) b!7070186))

(assert (= (and b!7070185 (not c!1318716)) b!7070194))

(assert (= (and b!7070194 c!1318713) b!7070193))

(assert (= (and b!7070194 (not c!1318713)) b!7070195))

(assert (= (or b!7070186 b!7070193) bm!642571))

(assert (= (or b!7070186 b!7070193) bm!642572))

(assert (= (or b!7070192 bm!642572) bm!642575))

(assert (= (or b!7070192 bm!642571) bm!642574))

(assert (= (or b!7070191 b!7070192) bm!642573))

(assert (= (or b!7070191 bm!642575) bm!642576))

(declare-fun m!7795280 () Bool)

(assert (=> bm!642573 m!7795280))

(declare-fun m!7795282 () Bool)

(assert (=> bm!642576 m!7795282))

(assert (=> b!7070190 m!7795204))

(declare-fun m!7795284 () Bool)

(assert (=> b!7070188 m!7795284))

(declare-fun m!7795286 () Bool)

(assert (=> bm!642574 m!7795286))

(assert (=> b!7069931 d!2210950))

(declare-fun lt!2544497 () List!68434)

(declare-fun e!4250595 () Bool)

(declare-fun b!7070199 () Bool)

(assert (=> b!7070199 (= e!4250595 (or (not (= (exprs!7132 ct2!306) Nil!68310)) (= lt!2544497 lt!2544296)))))

(declare-fun b!7070197 () Bool)

(declare-fun e!4250594 () List!68434)

(assert (=> b!7070197 (= e!4250594 (Cons!68310 (h!74758 lt!2544296) (++!15756 (t!382217 lt!2544296) (exprs!7132 ct2!306))))))

(declare-fun d!2210952 () Bool)

(assert (=> d!2210952 e!4250595))

(declare-fun res!2887330 () Bool)

(assert (=> d!2210952 (=> (not res!2887330) (not e!4250595))))

(assert (=> d!2210952 (= res!2887330 (= (content!13775 lt!2544497) (set.union (content!13775 lt!2544296) (content!13775 (exprs!7132 ct2!306)))))))

(assert (=> d!2210952 (= lt!2544497 e!4250594)))

(declare-fun c!1318718 () Bool)

(assert (=> d!2210952 (= c!1318718 (is-Nil!68310 lt!2544296))))

(assert (=> d!2210952 (= (++!15756 lt!2544296 (exprs!7132 ct2!306)) lt!2544497)))

(declare-fun b!7070196 () Bool)

(assert (=> b!7070196 (= e!4250594 (exprs!7132 ct2!306))))

(declare-fun b!7070198 () Bool)

(declare-fun res!2887331 () Bool)

(assert (=> b!7070198 (=> (not res!2887331) (not e!4250595))))

(assert (=> b!7070198 (= res!2887331 (= (size!41203 lt!2544497) (+ (size!41203 lt!2544296) (size!41203 (exprs!7132 ct2!306)))))))

(assert (= (and d!2210952 c!1318718) b!7070196))

(assert (= (and d!2210952 (not c!1318718)) b!7070197))

(assert (= (and d!2210952 res!2887330) b!7070198))

(assert (= (and b!7070198 res!2887331) b!7070199))

(declare-fun m!7795288 () Bool)

(assert (=> b!7070197 m!7795288))

(declare-fun m!7795290 () Bool)

(assert (=> d!2210952 m!7795290))

(declare-fun m!7795292 () Bool)

(assert (=> d!2210952 m!7795292))

(assert (=> d!2210952 m!7795152))

(declare-fun m!7795294 () Bool)

(assert (=> b!7070198 m!7795294))

(declare-fun m!7795296 () Bool)

(assert (=> b!7070198 m!7795296))

(assert (=> b!7070198 m!7795158))

(assert (=> b!7069931 d!2210952))

(assert (=> b!7069931 d!2210896))

(declare-fun d!2210954 () Bool)

(declare-fun nullableFct!2808 (Regex!17636) Bool)

(assert (=> d!2210954 (= (nullable!7319 (h!74758 (exprs!7132 lt!2544288))) (nullableFct!2808 (h!74758 (exprs!7132 lt!2544288))))))

(declare-fun bs!1880453 () Bool)

(assert (= bs!1880453 d!2210954))

(declare-fun m!7795298 () Bool)

(assert (=> bs!1880453 m!7795298))

(assert (=> b!7069922 d!2210954))

(declare-fun d!2210956 () Bool)

(assert (=> d!2210956 (= (tail!13813 (exprs!7132 lt!2544288)) (t!382217 (exprs!7132 lt!2544288)))))

(assert (=> b!7069922 d!2210956))

(declare-fun bs!1880454 () Bool)

(declare-fun d!2210958 () Bool)

(assert (= bs!1880454 (and d!2210958 b!7069925)))

(declare-fun lambda!425105 () Int)

(assert (=> bs!1880454 (= lambda!425105 lambda!425039)))

(declare-fun bs!1880455 () Bool)

(assert (= bs!1880455 (and d!2210958 d!2210938)))

(assert (=> bs!1880455 (= lambda!425105 lambda!425101)))

(assert (=> d!2210958 (= (inv!86950 setElem!50213) (forall!16585 (exprs!7132 setElem!50213) lambda!425105))))

(declare-fun bs!1880456 () Bool)

(assert (= bs!1880456 d!2210958))

(declare-fun m!7795300 () Bool)

(assert (=> bs!1880456 m!7795300))

(assert (=> setNonEmpty!50213 d!2210958))

(declare-fun d!2210960 () Bool)

(declare-fun c!1318719 () Bool)

(assert (=> d!2210960 (= c!1318719 (isEmpty!39865 (_2!37426 lt!2544295)))))

(declare-fun e!4250596 () Bool)

(assert (=> d!2210960 (= (matchZipper!3176 lt!2544286 (_2!37426 lt!2544295)) e!4250596)))

(declare-fun b!7070200 () Bool)

(assert (=> b!7070200 (= e!4250596 (nullableZipper!2693 lt!2544286))))

(declare-fun b!7070201 () Bool)

(assert (=> b!7070201 (= e!4250596 (matchZipper!3176 (derivationStepZipper!3086 lt!2544286 (head!14401 (_2!37426 lt!2544295))) (tail!13815 (_2!37426 lt!2544295))))))

(assert (= (and d!2210960 c!1318719) b!7070200))

(assert (= (and d!2210960 (not c!1318719)) b!7070201))

(declare-fun m!7795302 () Bool)

(assert (=> d!2210960 m!7795302))

(declare-fun m!7795304 () Bool)

(assert (=> b!7070200 m!7795304))

(declare-fun m!7795306 () Bool)

(assert (=> b!7070201 m!7795306))

(assert (=> b!7070201 m!7795306))

(declare-fun m!7795308 () Bool)

(assert (=> b!7070201 m!7795308))

(declare-fun m!7795310 () Bool)

(assert (=> b!7070201 m!7795310))

(assert (=> b!7070201 m!7795308))

(assert (=> b!7070201 m!7795310))

(declare-fun m!7795312 () Bool)

(assert (=> b!7070201 m!7795312))

(assert (=> b!7069920 d!2210960))

(declare-fun b!7070202 () Bool)

(declare-fun e!4250598 () (Set Context!13264))

(assert (=> b!7070202 (= e!4250598 (as set.empty (Set Context!13264)))))

(declare-fun b!7070203 () Bool)

(declare-fun e!4250599 () Bool)

(assert (=> b!7070203 (= e!4250599 (nullable!7319 (h!74758 (exprs!7132 lt!2544267))))))

(declare-fun b!7070204 () Bool)

(declare-fun call!642582 () (Set Context!13264))

(assert (=> b!7070204 (= e!4250598 call!642582)))

(declare-fun e!4250597 () (Set Context!13264))

(declare-fun b!7070205 () Bool)

(assert (=> b!7070205 (= e!4250597 (set.union call!642582 (derivationStepZipperUp!2220 (Context!13265 (t!382217 (exprs!7132 lt!2544267))) (h!74759 s!7408))))))

(declare-fun d!2210962 () Bool)

(declare-fun c!1318721 () Bool)

(assert (=> d!2210962 (= c!1318721 e!4250599)))

(declare-fun res!2887332 () Bool)

(assert (=> d!2210962 (=> (not res!2887332) (not e!4250599))))

(assert (=> d!2210962 (= res!2887332 (is-Cons!68310 (exprs!7132 lt!2544267)))))

(assert (=> d!2210962 (= (derivationStepZipperUp!2220 lt!2544267 (h!74759 s!7408)) e!4250597)))

(declare-fun b!7070206 () Bool)

(assert (=> b!7070206 (= e!4250597 e!4250598)))

(declare-fun c!1318720 () Bool)

(assert (=> b!7070206 (= c!1318720 (is-Cons!68310 (exprs!7132 lt!2544267)))))

(declare-fun bm!642577 () Bool)

(assert (=> bm!642577 (= call!642582 (derivationStepZipperDown!2270 (h!74758 (exprs!7132 lt!2544267)) (Context!13265 (t!382217 (exprs!7132 lt!2544267))) (h!74759 s!7408)))))

(assert (= (and d!2210962 res!2887332) b!7070203))

(assert (= (and d!2210962 c!1318721) b!7070205))

(assert (= (and d!2210962 (not c!1318721)) b!7070206))

(assert (= (and b!7070206 c!1318720) b!7070204))

(assert (= (and b!7070206 (not c!1318720)) b!7070202))

(assert (= (or b!7070205 b!7070204) bm!642577))

(declare-fun m!7795314 () Bool)

(assert (=> b!7070203 m!7795314))

(declare-fun m!7795316 () Bool)

(assert (=> b!7070205 m!7795316))

(declare-fun m!7795318 () Bool)

(assert (=> bm!642577 m!7795318))

(assert (=> b!7069919 d!2210962))

(assert (=> b!7069938 d!2210888))

(declare-fun d!2210964 () Bool)

(declare-fun e!4250600 () Bool)

(assert (=> d!2210964 e!4250600))

(declare-fun res!2887333 () Bool)

(assert (=> d!2210964 (=> (not res!2887333) (not e!4250600))))

(declare-fun lt!2544498 () List!68435)

(assert (=> d!2210964 (= res!2887333 (= (content!13773 lt!2544498) (set.union (content!13773 (_1!37426 lt!2544295)) (content!13773 (_2!37426 lt!2544295)))))))

(declare-fun e!4250601 () List!68435)

(assert (=> d!2210964 (= lt!2544498 e!4250601)))

(declare-fun c!1318722 () Bool)

(assert (=> d!2210964 (= c!1318722 (is-Nil!68311 (_1!37426 lt!2544295)))))

(assert (=> d!2210964 (= (++!15755 (_1!37426 lt!2544295) (_2!37426 lt!2544295)) lt!2544498)))

(declare-fun b!7070210 () Bool)

(assert (=> b!7070210 (= e!4250600 (or (not (= (_2!37426 lt!2544295) Nil!68311)) (= lt!2544498 (_1!37426 lt!2544295))))))

(declare-fun b!7070207 () Bool)

(assert (=> b!7070207 (= e!4250601 (_2!37426 lt!2544295))))

(declare-fun b!7070208 () Bool)

(assert (=> b!7070208 (= e!4250601 (Cons!68311 (h!74759 (_1!37426 lt!2544295)) (++!15755 (t!382218 (_1!37426 lt!2544295)) (_2!37426 lt!2544295))))))

(declare-fun b!7070209 () Bool)

(declare-fun res!2887334 () Bool)

(assert (=> b!7070209 (=> (not res!2887334) (not e!4250600))))

(assert (=> b!7070209 (= res!2887334 (= (size!41202 lt!2544498) (+ (size!41202 (_1!37426 lt!2544295)) (size!41202 (_2!37426 lt!2544295)))))))

(assert (= (and d!2210964 c!1318722) b!7070207))

(assert (= (and d!2210964 (not c!1318722)) b!7070208))

(assert (= (and d!2210964 res!2887333) b!7070209))

(assert (= (and b!7070209 res!2887334) b!7070210))

(declare-fun m!7795320 () Bool)

(assert (=> d!2210964 m!7795320))

(declare-fun m!7795322 () Bool)

(assert (=> d!2210964 m!7795322))

(assert (=> d!2210964 m!7795034))

(declare-fun m!7795324 () Bool)

(assert (=> b!7070208 m!7795324))

(declare-fun m!7795326 () Bool)

(assert (=> b!7070209 m!7795326))

(declare-fun m!7795328 () Bool)

(assert (=> b!7070209 m!7795328))

(assert (=> b!7070209 m!7795042))

(assert (=> b!7069937 d!2210964))

(assert (=> b!7069918 d!2210898))

(assert (=> b!7069918 d!2210896))

(declare-fun d!2210966 () Bool)

(declare-fun c!1318723 () Bool)

(assert (=> d!2210966 (= c!1318723 (isEmpty!39865 s!7408))))

(declare-fun e!4250602 () Bool)

(assert (=> d!2210966 (= (matchZipper!3176 lt!2544282 s!7408) e!4250602)))

(declare-fun b!7070211 () Bool)

(assert (=> b!7070211 (= e!4250602 (nullableZipper!2693 lt!2544282))))

(declare-fun b!7070212 () Bool)

(assert (=> b!7070212 (= e!4250602 (matchZipper!3176 (derivationStepZipper!3086 lt!2544282 (head!14401 s!7408)) (tail!13815 s!7408)))))

(assert (= (and d!2210966 c!1318723) b!7070211))

(assert (= (and d!2210966 (not c!1318723)) b!7070212))

(assert (=> d!2210966 m!7795118))

(declare-fun m!7795330 () Bool)

(assert (=> b!7070211 m!7795330))

(assert (=> b!7070212 m!7795122))

(assert (=> b!7070212 m!7795122))

(declare-fun m!7795332 () Bool)

(assert (=> b!7070212 m!7795332))

(assert (=> b!7070212 m!7795126))

(assert (=> b!7070212 m!7795332))

(assert (=> b!7070212 m!7795126))

(declare-fun m!7795334 () Bool)

(assert (=> b!7070212 m!7795334))

(assert (=> start!686658 d!2210966))

(declare-fun bs!1880457 () Bool)

(declare-fun d!2210968 () Bool)

(assert (= bs!1880457 (and d!2210968 b!7069925)))

(declare-fun lambda!425106 () Int)

(assert (=> bs!1880457 (= lambda!425106 lambda!425038)))

(declare-fun bs!1880458 () Bool)

(assert (= bs!1880458 (and d!2210968 d!2210932)))

(assert (=> bs!1880458 (= lambda!425106 lambda!425098)))

(assert (=> d!2210968 true))

(assert (=> d!2210968 (= (appendTo!757 z1!570 ct2!306) (map!15980 z1!570 lambda!425106))))

(declare-fun bs!1880459 () Bool)

(assert (= bs!1880459 d!2210968))

(declare-fun m!7795336 () Bool)

(assert (=> bs!1880459 m!7795336))

(assert (=> start!686658 d!2210968))

(declare-fun bs!1880460 () Bool)

(declare-fun d!2210970 () Bool)

(assert (= bs!1880460 (and d!2210970 b!7069925)))

(declare-fun lambda!425107 () Int)

(assert (=> bs!1880460 (= lambda!425107 lambda!425039)))

(declare-fun bs!1880461 () Bool)

(assert (= bs!1880461 (and d!2210970 d!2210938)))

(assert (=> bs!1880461 (= lambda!425107 lambda!425101)))

(declare-fun bs!1880462 () Bool)

(assert (= bs!1880462 (and d!2210970 d!2210958)))

(assert (=> bs!1880462 (= lambda!425107 lambda!425105)))

(assert (=> d!2210970 (= (inv!86950 ct2!306) (forall!16585 (exprs!7132 ct2!306) lambda!425107))))

(declare-fun bs!1880463 () Bool)

(assert (= bs!1880463 d!2210970))

(declare-fun m!7795338 () Bool)

(assert (=> bs!1880463 m!7795338))

(assert (=> start!686658 d!2210970))

(declare-fun condSetEmpty!50219 () Bool)

(assert (=> setNonEmpty!50213 (= condSetEmpty!50219 (= setRest!50213 (as set.empty (Set Context!13264))))))

(declare-fun setRes!50219 () Bool)

(assert (=> setNonEmpty!50213 (= tp!1942099 setRes!50219)))

(declare-fun setIsEmpty!50219 () Bool)

(assert (=> setIsEmpty!50219 setRes!50219))

(declare-fun e!4250605 () Bool)

(declare-fun tp!1942119 () Bool)

(declare-fun setElem!50219 () Context!13264)

(declare-fun setNonEmpty!50219 () Bool)

(assert (=> setNonEmpty!50219 (= setRes!50219 (and tp!1942119 (inv!86950 setElem!50219) e!4250605))))

(declare-fun setRest!50219 () (Set Context!13264))

(assert (=> setNonEmpty!50219 (= setRest!50213 (set.union (set.insert setElem!50219 (as set.empty (Set Context!13264))) setRest!50219))))

(declare-fun b!7070217 () Bool)

(declare-fun tp!1942118 () Bool)

(assert (=> b!7070217 (= e!4250605 tp!1942118)))

(assert (= (and setNonEmpty!50213 condSetEmpty!50219) setIsEmpty!50219))

(assert (= (and setNonEmpty!50213 (not condSetEmpty!50219)) setNonEmpty!50219))

(assert (= setNonEmpty!50219 b!7070217))

(declare-fun m!7795340 () Bool)

(assert (=> setNonEmpty!50219 m!7795340))

(declare-fun b!7070222 () Bool)

(declare-fun e!4250608 () Bool)

(declare-fun tp!1942124 () Bool)

(declare-fun tp!1942125 () Bool)

(assert (=> b!7070222 (= e!4250608 (and tp!1942124 tp!1942125))))

(assert (=> b!7069921 (= tp!1942101 e!4250608)))

(assert (= (and b!7069921 (is-Cons!68310 (exprs!7132 ct2!306))) b!7070222))

(declare-fun b!7070223 () Bool)

(declare-fun e!4250609 () Bool)

(declare-fun tp!1942126 () Bool)

(declare-fun tp!1942127 () Bool)

(assert (=> b!7070223 (= e!4250609 (and tp!1942126 tp!1942127))))

(assert (=> b!7069926 (= tp!1942100 e!4250609)))

(assert (= (and b!7069926 (is-Cons!68310 (exprs!7132 setElem!50213))) b!7070223))

(declare-fun b!7070228 () Bool)

(declare-fun e!4250612 () Bool)

(declare-fun tp!1942130 () Bool)

(assert (=> b!7070228 (= e!4250612 (and tp_is_empty!44497 tp!1942130))))

(assert (=> b!7069932 (= tp!1942098 e!4250612)))

(assert (= (and b!7069932 (is-Cons!68311 (t!382218 s!7408))) b!7070228))

(declare-fun b_lambda!269903 () Bool)

(assert (= b_lambda!269899 (or b!7069925 b_lambda!269903)))

(declare-fun bs!1880464 () Bool)

(declare-fun d!2210972 () Bool)

(assert (= bs!1880464 (and d!2210972 b!7069925)))

(declare-fun lt!2544499 () Unit!161982)

(assert (=> bs!1880464 (= lt!2544499 (lemmaConcatPreservesForall!947 (exprs!7132 lt!2544474) (exprs!7132 ct2!306) lambda!425039))))

(assert (=> bs!1880464 (= (dynLambda!27778 lambda!425038 lt!2544474) (Context!13265 (++!15756 (exprs!7132 lt!2544474) (exprs!7132 ct2!306))))))

(declare-fun m!7795342 () Bool)

(assert (=> bs!1880464 m!7795342))

(declare-fun m!7795344 () Bool)

(assert (=> bs!1880464 m!7795344))

(assert (=> d!2210912 d!2210972))

(declare-fun b_lambda!269905 () Bool)

(assert (= b_lambda!269895 (or b!7069917 b_lambda!269905)))

(declare-fun bs!1880465 () Bool)

(declare-fun d!2210974 () Bool)

(assert (= bs!1880465 (and d!2210974 b!7069917)))

(assert (=> bs!1880465 (= (dynLambda!27775 lambda!425040 lt!2544258) (derivationStepZipperUp!2220 lt!2544258 (h!74759 s!7408)))))

(assert (=> bs!1880465 m!7794894))

(assert (=> d!2210884 d!2210974))

(declare-fun b_lambda!269907 () Bool)

(assert (= b_lambda!269901 (or b!7069917 b_lambda!269907)))

(declare-fun bs!1880466 () Bool)

(declare-fun d!2210976 () Bool)

(assert (= bs!1880466 (and d!2210976 b!7069917)))

(assert (=> bs!1880466 (= (dynLambda!27775 lambda!425040 lt!2544288) (derivationStepZipperUp!2220 lt!2544288 (h!74759 s!7408)))))

(assert (=> bs!1880466 m!7794826))

(assert (=> d!2210944 d!2210976))

(declare-fun b_lambda!269909 () Bool)

(assert (= b_lambda!269897 (or b!7069933 b_lambda!269909)))

(declare-fun bs!1880467 () Bool)

(declare-fun d!2210978 () Bool)

(assert (= bs!1880467 (and d!2210978 b!7069933)))

(assert (=> bs!1880467 (= (dynLambda!27776 lambda!425037 lt!2544465) (matchZipper!3176 (set.insert lt!2544465 (as set.empty (Set Context!13264))) s!7408))))

(declare-fun m!7795346 () Bool)

(assert (=> bs!1880467 m!7795346))

(assert (=> bs!1880467 m!7795346))

(declare-fun m!7795348 () Bool)

(assert (=> bs!1880467 m!7795348))

(assert (=> d!2210904 d!2210978))

(push 1)

(assert (not b!7070097))

(assert (not d!2210968))

(assert (not b!7070173))

(assert (not b!7070222))

(assert (not bm!642568))

(assert (not b!7070106))

(assert (not b!7070190))

(assert (not d!2210914))

(assert (not b!7070059))

(assert (not b!7070211))

(assert (not d!2210894))

(assert (not d!2210966))

(assert (not b!7070076))

(assert (not d!2210920))

(assert (not b!7070111))

(assert (not d!2210922))

(assert (not bm!642565))

(assert (not b!7070176))

(assert (not b!7070178))

(assert (not d!2210944))

(assert tp_is_empty!44497)

(assert (not b!7070140))

(assert (not bm!642566))

(assert (not b!7070108))

(assert (not b!7070170))

(assert (not b!7070107))

(assert (not b!7070105))

(assert (not b!7070046))

(assert (not d!2210888))

(assert (not d!2210896))

(assert (not b!7070079))

(assert (not b!7070077))

(assert (not setNonEmpty!50219))

(assert (not bs!1880464))

(assert (not d!2210952))

(assert (not bm!642573))

(assert (not d!2210934))

(assert (not b!7070168))

(assert (not d!2210960))

(assert (not b!7070181))

(assert (not d!2210886))

(assert (not b!7070205))

(assert (not d!2210898))

(assert (not b!7070098))

(assert (not b!7070201))

(assert (not d!2210932))

(assert (not b!7070217))

(assert (not d!2210936))

(assert (not b!7070147))

(assert (not b!7070104))

(assert (not bm!642577))

(assert (not bs!1880466))

(assert (not b_lambda!269905))

(assert (not bm!642576))

(assert (not b!7070223))

(assert (not d!2210958))

(assert (not d!2210910))

(assert (not b!7070110))

(assert (not b!7070197))

(assert (not d!2210906))

(assert (not b!7070109))

(assert (not b!7070228))

(assert (not d!2210900))

(assert (not b!7070071))

(assert (not b!7070169))

(assert (not bm!642574))

(assert (not b!7070198))

(assert (not bs!1880465))

(assert (not b!7070212))

(assert (not bm!642550))

(assert (not b!7070072))

(assert (not b!7070171))

(assert (not d!2210964))

(assert (not d!2210954))

(assert (not b!7070112))

(assert (not d!2210882))

(assert (not d!2210902))

(assert (not d!2210938))

(assert (not d!2210912))

(assert (not bm!642570))

(assert (not d!2210890))

(assert (not d!2210940))

(assert (not b!7070209))

(assert (not b!7070061))

(assert (not b!7070078))

(assert (not b!7070085))

(assert (not b_lambda!269903))

(assert (not b!7070203))

(assert (not b_lambda!269907))

(assert (not d!2210926))

(assert (not b!7070045))

(assert (not b!7070166))

(assert (not d!2210930))

(assert (not b_lambda!269909))

(assert (not d!2210908))

(assert (not bs!1880467))

(assert (not d!2210884))

(assert (not d!2210918))

(assert (not bm!642569))

(assert (not b!7070200))

(assert (not b!7070208))

(assert (not d!2210970))

(assert (not b!7070146))

(assert (not d!2210946))

(assert (not d!2210904))

(assert (not b!7070183))

(assert (not d!2210878))

(assert (not b!7070069))

(assert (not b!7070070))

(assert (not d!2210916))

(assert (not d!2210892))

(assert (not b!7070075))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

