; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251224 () Bool)

(assert start!251224)

(declare-fun b!2592236 () Bool)

(declare-fun res!1090179 () Bool)

(declare-fun e!1635372 () Bool)

(assert (=> b!2592236 (=> (not res!1090179) (not e!1635372))))

(declare-datatypes ((B!2057 0))(
  ( (B!2058 (val!9496 Int)) )
))
(declare-datatypes ((List!29929 0))(
  ( (Nil!29829) (Cons!29829 (h!35249 B!2057) (t!212942 List!29929)) )
))
(declare-fun l!3230 () List!29929)

(get-info :version)

(assert (=> b!2592236 (= res!1090179 ((_ is Cons!29829) l!3230))))

(declare-fun b!2592238 () Bool)

(declare-fun ListPrimitiveSize!183 (List!29929) Int)

(assert (=> b!2592238 (= e!1635372 (>= (ListPrimitiveSize!183 (t!212942 l!3230)) (ListPrimitiveSize!183 l!3230)))))

(declare-fun res!1090181 () Bool)

(assert (=> start!251224 (=> (not res!1090181) (not e!1635372))))

(declare-fun noDuplicate!377 (List!29929) Bool)

(assert (=> start!251224 (= res!1090181 (noDuplicate!377 l!3230))))

(assert (=> start!251224 e!1635372))

(declare-fun e!1635373 () Bool)

(assert (=> start!251224 e!1635373))

(declare-fun b!2592237 () Bool)

(declare-fun res!1090180 () Bool)

(assert (=> b!2592237 (=> (not res!1090180) (not e!1635372))))

(assert (=> b!2592237 (= res!1090180 (noDuplicate!377 (t!212942 l!3230)))))

(declare-fun b!2592239 () Bool)

(declare-fun tp_is_empty!13337 () Bool)

(declare-fun tp!822770 () Bool)

(assert (=> b!2592239 (= e!1635373 (and tp_is_empty!13337 tp!822770))))

(assert (= (and start!251224 res!1090181) b!2592236))

(assert (= (and b!2592236 res!1090179) b!2592237))

(assert (= (and b!2592237 res!1090180) b!2592238))

(assert (= (and start!251224 ((_ is Cons!29829) l!3230)) b!2592239))

(declare-fun m!2928333 () Bool)

(assert (=> b!2592238 m!2928333))

(declare-fun m!2928335 () Bool)

(assert (=> b!2592238 m!2928335))

(declare-fun m!2928337 () Bool)

(assert (=> start!251224 m!2928337))

(declare-fun m!2928339 () Bool)

(assert (=> b!2592237 m!2928339))

(check-sat (not b!2592237) tp_is_empty!13337 (not b!2592238) (not b!2592239) (not start!251224))
(check-sat)
(get-model)

(declare-fun d!734364 () Bool)

(declare-fun res!1090194 () Bool)

(declare-fun e!1635392 () Bool)

(assert (=> d!734364 (=> res!1090194 e!1635392)))

(assert (=> d!734364 (= res!1090194 ((_ is Nil!29829) l!3230))))

(assert (=> d!734364 (= (noDuplicate!377 l!3230) e!1635392)))

(declare-fun b!2592264 () Bool)

(declare-fun e!1635393 () Bool)

(assert (=> b!2592264 (= e!1635392 e!1635393)))

(declare-fun res!1090195 () Bool)

(assert (=> b!2592264 (=> (not res!1090195) (not e!1635393))))

(declare-fun contains!5379 (List!29929 B!2057) Bool)

(assert (=> b!2592264 (= res!1090195 (not (contains!5379 (t!212942 l!3230) (h!35249 l!3230))))))

(declare-fun b!2592265 () Bool)

(assert (=> b!2592265 (= e!1635393 (noDuplicate!377 (t!212942 l!3230)))))

(assert (= (and d!734364 (not res!1090194)) b!2592264))

(assert (= (and b!2592264 res!1090195) b!2592265))

(declare-fun m!2928349 () Bool)

(assert (=> b!2592264 m!2928349))

(assert (=> b!2592265 m!2928339))

(assert (=> start!251224 d!734364))

(declare-fun d!734372 () Bool)

(declare-fun lt!912020 () Int)

(assert (=> d!734372 (>= lt!912020 0)))

(declare-fun e!1635397 () Int)

(assert (=> d!734372 (= lt!912020 e!1635397)))

(declare-fun c!417887 () Bool)

(assert (=> d!734372 (= c!417887 ((_ is Nil!29829) (t!212942 l!3230)))))

(assert (=> d!734372 (= (ListPrimitiveSize!183 (t!212942 l!3230)) lt!912020)))

(declare-fun b!2592271 () Bool)

(assert (=> b!2592271 (= e!1635397 0)))

(declare-fun b!2592272 () Bool)

(assert (=> b!2592272 (= e!1635397 (+ 1 (ListPrimitiveSize!183 (t!212942 (t!212942 l!3230)))))))

(assert (= (and d!734372 c!417887) b!2592271))

(assert (= (and d!734372 (not c!417887)) b!2592272))

(declare-fun m!2928351 () Bool)

(assert (=> b!2592272 m!2928351))

(assert (=> b!2592238 d!734372))

(declare-fun d!734374 () Bool)

(declare-fun lt!912021 () Int)

(assert (=> d!734374 (>= lt!912021 0)))

(declare-fun e!1635398 () Int)

(assert (=> d!734374 (= lt!912021 e!1635398)))

(declare-fun c!417888 () Bool)

(assert (=> d!734374 (= c!417888 ((_ is Nil!29829) l!3230))))

(assert (=> d!734374 (= (ListPrimitiveSize!183 l!3230) lt!912021)))

(declare-fun b!2592273 () Bool)

(assert (=> b!2592273 (= e!1635398 0)))

(declare-fun b!2592274 () Bool)

(assert (=> b!2592274 (= e!1635398 (+ 1 (ListPrimitiveSize!183 (t!212942 l!3230))))))

(assert (= (and d!734374 c!417888) b!2592273))

(assert (= (and d!734374 (not c!417888)) b!2592274))

(assert (=> b!2592274 m!2928333))

(assert (=> b!2592238 d!734374))

(declare-fun d!734376 () Bool)

(declare-fun res!1090196 () Bool)

(declare-fun e!1635399 () Bool)

(assert (=> d!734376 (=> res!1090196 e!1635399)))

(assert (=> d!734376 (= res!1090196 ((_ is Nil!29829) (t!212942 l!3230)))))

(assert (=> d!734376 (= (noDuplicate!377 (t!212942 l!3230)) e!1635399)))

(declare-fun b!2592275 () Bool)

(declare-fun e!1635400 () Bool)

(assert (=> b!2592275 (= e!1635399 e!1635400)))

(declare-fun res!1090197 () Bool)

(assert (=> b!2592275 (=> (not res!1090197) (not e!1635400))))

(assert (=> b!2592275 (= res!1090197 (not (contains!5379 (t!212942 (t!212942 l!3230)) (h!35249 (t!212942 l!3230)))))))

(declare-fun b!2592276 () Bool)

(assert (=> b!2592276 (= e!1635400 (noDuplicate!377 (t!212942 (t!212942 l!3230))))))

(assert (= (and d!734376 (not res!1090196)) b!2592275))

(assert (= (and b!2592275 res!1090197) b!2592276))

(declare-fun m!2928353 () Bool)

(assert (=> b!2592275 m!2928353))

(declare-fun m!2928355 () Bool)

(assert (=> b!2592276 m!2928355))

(assert (=> b!2592237 d!734376))

(declare-fun b!2592281 () Bool)

(declare-fun e!1635403 () Bool)

(declare-fun tp!822776 () Bool)

(assert (=> b!2592281 (= e!1635403 (and tp_is_empty!13337 tp!822776))))

(assert (=> b!2592239 (= tp!822770 e!1635403)))

(assert (= (and b!2592239 ((_ is Cons!29829) (t!212942 l!3230))) b!2592281))

(check-sat (not b!2592265) (not b!2592274) tp_is_empty!13337 (not b!2592264) (not b!2592281) (not b!2592276) (not b!2592272) (not b!2592275))
(check-sat)
