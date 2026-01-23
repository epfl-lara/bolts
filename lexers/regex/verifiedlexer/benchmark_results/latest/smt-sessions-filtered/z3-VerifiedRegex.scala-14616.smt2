; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756292 () Bool)

(assert start!756292)

(declare-fun res!3175487 () Bool)

(declare-fun e!4730301 () Bool)

(assert (=> start!756292 (=> (not res!3175487) (not e!4730301))))

(declare-datatypes ((B!4461 0))(
  ( (B!4462 (val!32630 Int)) )
))
(declare-datatypes ((List!75146 0))(
  ( (Nil!75020) (Cons!75020 (h!81468 B!4461) (t!390902 List!75146)) )
))
(declare-fun prefix!66 () List!75146)

(get-info :version)

(assert (=> start!756292 (= res!3175487 ((_ is Nil!75020) prefix!66))))

(assert (=> start!756292 e!4730301))

(declare-fun e!4730302 () Bool)

(assert (=> start!756292 e!4730302))

(declare-fun e!4730303 () Bool)

(assert (=> start!756292 e!4730303))

(declare-fun b!8029147 () Bool)

(declare-fun l!2919 () List!75146)

(declare-fun size!43746 (List!75146) Int)

(assert (=> b!8029147 (= e!4730301 (< (size!43746 l!2919) (size!43746 prefix!66)))))

(declare-fun b!8029148 () Bool)

(declare-fun tp_is_empty!54365 () Bool)

(declare-fun tp!2402690 () Bool)

(assert (=> b!8029148 (= e!4730302 (and tp_is_empty!54365 tp!2402690))))

(declare-fun b!8029149 () Bool)

(declare-fun tp!2402691 () Bool)

(assert (=> b!8029149 (= e!4730303 (and tp_is_empty!54365 tp!2402691))))

(assert (= (and start!756292 res!3175487) b!8029147))

(assert (= (and start!756292 ((_ is Cons!75020) prefix!66)) b!8029148))

(assert (= (and start!756292 ((_ is Cons!75020) l!2919)) b!8029149))

(declare-fun m!8391246 () Bool)

(assert (=> b!8029147 m!8391246))

(declare-fun m!8391248 () Bool)

(assert (=> b!8029147 m!8391248))

(check-sat (not b!8029147) (not b!8029149) (not b!8029148) tp_is_empty!54365)
(check-sat)
(get-model)

(declare-fun d!2394299 () Bool)

(declare-fun lt!2721751 () Int)

(assert (=> d!2394299 (>= lt!2721751 0)))

(declare-fun e!4730308 () Int)

(assert (=> d!2394299 (= lt!2721751 e!4730308)))

(declare-fun c!1473039 () Bool)

(assert (=> d!2394299 (= c!1473039 ((_ is Nil!75020) l!2919))))

(assert (=> d!2394299 (= (size!43746 l!2919) lt!2721751)))

(declare-fun b!8029158 () Bool)

(assert (=> b!8029158 (= e!4730308 0)))

(declare-fun b!8029159 () Bool)

(assert (=> b!8029159 (= e!4730308 (+ 1 (size!43746 (t!390902 l!2919))))))

(assert (= (and d!2394299 c!1473039) b!8029158))

(assert (= (and d!2394299 (not c!1473039)) b!8029159))

(declare-fun m!8391250 () Bool)

(assert (=> b!8029159 m!8391250))

(assert (=> b!8029147 d!2394299))

(declare-fun d!2394303 () Bool)

(declare-fun lt!2721752 () Int)

(assert (=> d!2394303 (>= lt!2721752 0)))

(declare-fun e!4730309 () Int)

(assert (=> d!2394303 (= lt!2721752 e!4730309)))

(declare-fun c!1473040 () Bool)

(assert (=> d!2394303 (= c!1473040 ((_ is Nil!75020) prefix!66))))

(assert (=> d!2394303 (= (size!43746 prefix!66) lt!2721752)))

(declare-fun b!8029160 () Bool)

(assert (=> b!8029160 (= e!4730309 0)))

(declare-fun b!8029161 () Bool)

(assert (=> b!8029161 (= e!4730309 (+ 1 (size!43746 (t!390902 prefix!66))))))

(assert (= (and d!2394303 c!1473040) b!8029160))

(assert (= (and d!2394303 (not c!1473040)) b!8029161))

(declare-fun m!8391252 () Bool)

(assert (=> b!8029161 m!8391252))

(assert (=> b!8029147 d!2394303))

(declare-fun b!8029168 () Bool)

(declare-fun e!4730313 () Bool)

(declare-fun tp!2402694 () Bool)

(assert (=> b!8029168 (= e!4730313 (and tp_is_empty!54365 tp!2402694))))

(assert (=> b!8029149 (= tp!2402691 e!4730313)))

(assert (= (and b!8029149 ((_ is Cons!75020) (t!390902 l!2919))) b!8029168))

(declare-fun b!8029171 () Bool)

(declare-fun e!4730315 () Bool)

(declare-fun tp!2402695 () Bool)

(assert (=> b!8029171 (= e!4730315 (and tp_is_empty!54365 tp!2402695))))

(assert (=> b!8029148 (= tp!2402690 e!4730315)))

(assert (= (and b!8029148 ((_ is Cons!75020) (t!390902 prefix!66))) b!8029171))

(check-sat (not b!8029171) (not b!8029161) (not b!8029168) tp_is_empty!54365 (not b!8029159))
(check-sat)
