; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384200 () Bool)

(assert start!384200)

(declare-fun res!1662362 () Bool)

(declare-fun e!2526578 () Bool)

(assert (=> start!384200 (=> (not res!1662362) (not e!2526578))))

(declare-datatypes ((B!2601 0))(
  ( (B!2602 (val!14086 Int)) )
))
(declare-datatypes ((List!43609 0))(
  ( (Nil!43485) (Cons!43485 (h!48905 B!2601) (t!337056 List!43609)) )
))
(declare-fun p!1991 () List!43609)

(declare-fun l!3332 () List!43609)

(declare-fun isPrefix!4081 (List!43609 List!43609) Bool)

(assert (=> start!384200 (= res!1662362 (isPrefix!4081 p!1991 l!3332))))

(assert (=> start!384200 e!2526578))

(declare-fun e!2526576 () Bool)

(assert (=> start!384200 e!2526576))

(declare-fun e!2526577 () Bool)

(assert (=> start!384200 e!2526577))

(declare-fun b!4071090 () Bool)

(declare-fun ListPrimitiveSize!273 (List!43609) Int)

(assert (=> b!4071090 (= e!2526578 (< (ListPrimitiveSize!273 p!1991) 0))))

(declare-fun b!4071091 () Bool)

(declare-fun tp_is_empty!20769 () Bool)

(declare-fun tp!1231914 () Bool)

(assert (=> b!4071091 (= e!2526576 (and tp_is_empty!20769 tp!1231914))))

(declare-fun b!4071092 () Bool)

(declare-fun tp!1231913 () Bool)

(assert (=> b!4071092 (= e!2526577 (and tp_is_empty!20769 tp!1231913))))

(assert (= (and start!384200 res!1662362) b!4071090))

(get-info :version)

(assert (= (and start!384200 ((_ is Cons!43485) p!1991)) b!4071091))

(assert (= (and start!384200 ((_ is Cons!43485) l!3332)) b!4071092))

(declare-fun m!4680365 () Bool)

(assert (=> start!384200 m!4680365))

(declare-fun m!4680367 () Bool)

(assert (=> b!4071090 m!4680367))

(check-sat (not b!4071090) tp_is_empty!20769 (not start!384200) (not b!4071092) (not b!4071091))
(check-sat)
(get-model)

(declare-fun b!4071120 () Bool)

(declare-fun res!1662384 () Bool)

(declare-fun e!2526599 () Bool)

(assert (=> b!4071120 (=> (not res!1662384) (not e!2526599))))

(declare-fun head!8593 (List!43609) B!2601)

(assert (=> b!4071120 (= res!1662384 (= (head!8593 p!1991) (head!8593 l!3332)))))

(declare-fun d!1210102 () Bool)

(declare-fun e!2526597 () Bool)

(assert (=> d!1210102 e!2526597))

(declare-fun res!1662385 () Bool)

(assert (=> d!1210102 (=> res!1662385 e!2526597)))

(declare-fun lt!1457430 () Bool)

(assert (=> d!1210102 (= res!1662385 (not lt!1457430))))

(declare-fun e!2526598 () Bool)

(assert (=> d!1210102 (= lt!1457430 e!2526598)))

(declare-fun res!1662383 () Bool)

(assert (=> d!1210102 (=> res!1662383 e!2526598)))

(assert (=> d!1210102 (= res!1662383 ((_ is Nil!43485) p!1991))))

(assert (=> d!1210102 (= (isPrefix!4081 p!1991 l!3332) lt!1457430)))

(declare-fun b!4071121 () Bool)

(declare-fun tail!6327 (List!43609) List!43609)

(assert (=> b!4071121 (= e!2526599 (isPrefix!4081 (tail!6327 p!1991) (tail!6327 l!3332)))))

(declare-fun b!4071119 () Bool)

(assert (=> b!4071119 (= e!2526598 e!2526599)))

(declare-fun res!1662386 () Bool)

(assert (=> b!4071119 (=> (not res!1662386) (not e!2526599))))

(assert (=> b!4071119 (= res!1662386 (not ((_ is Nil!43485) l!3332)))))

(declare-fun b!4071122 () Bool)

(declare-fun size!32510 (List!43609) Int)

(assert (=> b!4071122 (= e!2526597 (>= (size!32510 l!3332) (size!32510 p!1991)))))

(assert (= (and d!1210102 (not res!1662383)) b!4071119))

(assert (= (and b!4071119 res!1662386) b!4071120))

(assert (= (and b!4071120 res!1662384) b!4071121))

(assert (= (and d!1210102 (not res!1662385)) b!4071122))

(declare-fun m!4680385 () Bool)

(assert (=> b!4071120 m!4680385))

(declare-fun m!4680387 () Bool)

(assert (=> b!4071120 m!4680387))

(declare-fun m!4680389 () Bool)

(assert (=> b!4071121 m!4680389))

(declare-fun m!4680391 () Bool)

(assert (=> b!4071121 m!4680391))

(assert (=> b!4071121 m!4680389))

(assert (=> b!4071121 m!4680391))

(declare-fun m!4680393 () Bool)

(assert (=> b!4071121 m!4680393))

(declare-fun m!4680395 () Bool)

(assert (=> b!4071122 m!4680395))

(declare-fun m!4680397 () Bool)

(assert (=> b!4071122 m!4680397))

(assert (=> start!384200 d!1210102))

(declare-fun d!1210106 () Bool)

(declare-fun lt!1457433 () Int)

(assert (=> d!1210106 (>= lt!1457433 0)))

(declare-fun e!2526606 () Int)

(assert (=> d!1210106 (= lt!1457433 e!2526606)))

(declare-fun c!702695 () Bool)

(assert (=> d!1210106 (= c!702695 ((_ is Nil!43485) p!1991))))

(assert (=> d!1210106 (= (ListPrimitiveSize!273 p!1991) lt!1457433)))

(declare-fun b!4071133 () Bool)

(assert (=> b!4071133 (= e!2526606 0)))

(declare-fun b!4071134 () Bool)

(assert (=> b!4071134 (= e!2526606 (+ 1 (ListPrimitiveSize!273 (t!337056 p!1991))))))

(assert (= (and d!1210106 c!702695) b!4071133))

(assert (= (and d!1210106 (not c!702695)) b!4071134))

(declare-fun m!4680399 () Bool)

(assert (=> b!4071134 m!4680399))

(assert (=> b!4071090 d!1210106))

(declare-fun b!4071139 () Bool)

(declare-fun e!2526609 () Bool)

(declare-fun tp!1231921 () Bool)

(assert (=> b!4071139 (= e!2526609 (and tp_is_empty!20769 tp!1231921))))

(assert (=> b!4071092 (= tp!1231913 e!2526609)))

(assert (= (and b!4071092 ((_ is Cons!43485) (t!337056 l!3332))) b!4071139))

(declare-fun b!4071140 () Bool)

(declare-fun e!2526610 () Bool)

(declare-fun tp!1231922 () Bool)

(assert (=> b!4071140 (= e!2526610 (and tp_is_empty!20769 tp!1231922))))

(assert (=> b!4071091 (= tp!1231914 e!2526610)))

(assert (= (and b!4071091 ((_ is Cons!43485) (t!337056 p!1991))) b!4071140))

(check-sat (not b!4071134) tp_is_empty!20769 (not b!4071120) (not b!4071139) (not b!4071140) (not b!4071122) (not b!4071121))
(check-sat)
