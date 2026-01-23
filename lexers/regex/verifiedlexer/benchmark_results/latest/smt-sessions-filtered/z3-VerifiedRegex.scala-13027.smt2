; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714358 () Bool)

(assert start!714358)

(declare-fun b_free!134285 () Bool)

(declare-fun b_next!135075 () Bool)

(assert (=> start!714358 (= b_free!134285 (not b_next!135075))))

(declare-fun tp!2079641 () Bool)

(declare-fun b_and!351803 () Bool)

(assert (=> start!714358 (= tp!2079641 b_and!351803)))

(declare-fun res!2959398 () Bool)

(declare-fun e!4383652 () Bool)

(assert (=> start!714358 (=> (not res!2959398) (not e!4383652))))

(declare-datatypes ((B!3817 0))(
  ( (B!3818 (val!29440 Int)) )
))
(declare-datatypes ((List!71439 0))(
  ( (Nil!71315) (Cons!71315 (h!77763 B!3817) (t!385790 List!71439)) )
))
(declare-fun l!3043 () List!71439)

(declare-fun e!9239 () B!3817)

(declare-fun contains!20822 (List!71439 B!3817) Bool)

(assert (=> start!714358 (= res!2959398 (contains!20822 l!3043 e!9239))))

(assert (=> start!714358 e!4383652))

(declare-fun e!4383653 () Bool)

(assert (=> start!714358 e!4383653))

(declare-fun tp_is_empty!48131 () Bool)

(assert (=> start!714358 tp_is_empty!48131))

(assert (=> start!714358 tp!2079641))

(declare-fun b!7321543 () Bool)

(declare-fun res!2959397 () Bool)

(assert (=> b!7321543 (=> (not res!2959397) (not e!4383652))))

(declare-fun p!1874 () Int)

(declare-fun dynLambda!29370 (Int B!3817) Bool)

(assert (=> b!7321543 (= res!2959397 (dynLambda!29370 p!1874 e!9239))))

(declare-fun b!7321544 () Bool)

(declare-fun ListPrimitiveSize!432 (List!71439) Int)

(assert (=> b!7321544 (= e!4383652 (< (ListPrimitiveSize!432 l!3043) 0))))

(declare-fun b!7321545 () Bool)

(declare-fun tp!2079640 () Bool)

(assert (=> b!7321545 (= e!4383653 (and tp_is_empty!48131 tp!2079640))))

(assert (= (and start!714358 res!2959398) b!7321543))

(assert (= (and b!7321543 res!2959397) b!7321544))

(get-info :version)

(assert (= (and start!714358 ((_ is Cons!71315) l!3043)) b!7321545))

(declare-fun b_lambda!283033 () Bool)

(assert (=> (not b_lambda!283033) (not b!7321543)))

(declare-fun t!385789 () Bool)

(declare-fun tb!262361 () Bool)

(assert (=> (and start!714358 (= p!1874 p!1874) t!385789) tb!262361))

(declare-fun result!353556 () Bool)

(assert (=> tb!262361 (= result!353556 true)))

(assert (=> b!7321543 t!385789))

(declare-fun b_and!351805 () Bool)

(assert (= b_and!351803 (and (=> t!385789 result!353556) b_and!351805)))

(declare-fun m!7987320 () Bool)

(assert (=> start!714358 m!7987320))

(declare-fun m!7987322 () Bool)

(assert (=> b!7321543 m!7987322))

(declare-fun m!7987324 () Bool)

(assert (=> b!7321544 m!7987324))

(check-sat (not start!714358) (not b_next!135075) (not b!7321545) tp_is_empty!48131 b_and!351805 (not b!7321544) (not b_lambda!283033))
(check-sat b_and!351805 (not b_next!135075))
(get-model)

(declare-fun b_lambda!283037 () Bool)

(assert (= b_lambda!283033 (or (and start!714358 b_free!134285) b_lambda!283037)))

(check-sat (not b_lambda!283037) (not start!714358) (not b_next!135075) (not b!7321545) (not b!7321544) tp_is_empty!48131 b_and!351805)
(check-sat b_and!351805 (not b_next!135075))
(get-model)

(declare-fun d!2273640 () Bool)

(declare-fun lt!2604751 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!14907 (List!71439) (InoxSet B!3817))

(assert (=> d!2273640 (= lt!2604751 (select (content!14907 l!3043) e!9239))))

(declare-fun e!4383663 () Bool)

(assert (=> d!2273640 (= lt!2604751 e!4383663)))

(declare-fun res!2959408 () Bool)

(assert (=> d!2273640 (=> (not res!2959408) (not e!4383663))))

(assert (=> d!2273640 (= res!2959408 ((_ is Cons!71315) l!3043))))

(assert (=> d!2273640 (= (contains!20822 l!3043 e!9239) lt!2604751)))

(declare-fun b!7321554 () Bool)

(declare-fun e!4383662 () Bool)

(assert (=> b!7321554 (= e!4383663 e!4383662)))

(declare-fun res!2959407 () Bool)

(assert (=> b!7321554 (=> res!2959407 e!4383662)))

(assert (=> b!7321554 (= res!2959407 (= (h!77763 l!3043) e!9239))))

(declare-fun b!7321555 () Bool)

(assert (=> b!7321555 (= e!4383662 (contains!20822 (t!385790 l!3043) e!9239))))

(assert (= (and d!2273640 res!2959408) b!7321554))

(assert (= (and b!7321554 (not res!2959407)) b!7321555))

(declare-fun m!7987326 () Bool)

(assert (=> d!2273640 m!7987326))

(declare-fun m!7987328 () Bool)

(assert (=> d!2273640 m!7987328))

(declare-fun m!7987330 () Bool)

(assert (=> b!7321555 m!7987330))

(assert (=> start!714358 d!2273640))

(declare-fun d!2273644 () Bool)

(declare-fun lt!2604757 () Int)

(assert (=> d!2273644 (>= lt!2604757 0)))

(declare-fun e!4383670 () Int)

(assert (=> d!2273644 (= lt!2604757 e!4383670)))

(declare-fun c!1358775 () Bool)

(assert (=> d!2273644 (= c!1358775 ((_ is Nil!71315) l!3043))))

(assert (=> d!2273644 (= (ListPrimitiveSize!432 l!3043) lt!2604757)))

(declare-fun b!7321566 () Bool)

(assert (=> b!7321566 (= e!4383670 0)))

(declare-fun b!7321567 () Bool)

(assert (=> b!7321567 (= e!4383670 (+ 1 (ListPrimitiveSize!432 (t!385790 l!3043))))))

(assert (= (and d!2273644 c!1358775) b!7321566))

(assert (= (and d!2273644 (not c!1358775)) b!7321567))

(declare-fun m!7987338 () Bool)

(assert (=> b!7321567 m!7987338))

(assert (=> b!7321544 d!2273644))

(declare-fun b!7321576 () Bool)

(declare-fun e!4383674 () Bool)

(declare-fun tp!2079644 () Bool)

(assert (=> b!7321576 (= e!4383674 (and tp_is_empty!48131 tp!2079644))))

(assert (=> b!7321545 (= tp!2079640 e!4383674)))

(assert (= (and b!7321545 ((_ is Cons!71315) (t!385790 l!3043))) b!7321576))

(check-sat (not b!7321555) (not d!2273640) (not b!7321567) (not b_next!135075) (not b!7321576) (not b_lambda!283037) tp_is_empty!48131 b_and!351805)
(check-sat b_and!351805 (not b_next!135075))
