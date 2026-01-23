; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396098 () Bool)

(assert start!396098)

(declare-fun b!4158519 () Bool)

(declare-fun res!1703310 () Bool)

(declare-fun e!2580860 () Bool)

(assert (=> b!4158519 (=> (not res!1703310) (not e!2580860))))

(declare-datatypes ((B!2665 0))(
  ( (B!2666 (val!14624 Int)) )
))
(declare-fun e2!32 () B!2665)

(declare-datatypes ((List!45501 0))(
  ( (Nil!45377) (Cons!45377 (h!50797 B!2665) (t!343532 List!45501)) )
))
(declare-fun l!3062 () List!45501)

(declare-fun e1!32 () B!2665)

(declare-fun getIndex!856 (List!45501 B!2665) Int)

(assert (=> b!4158519 (= res!1703310 (< (getIndex!856 l!3062 e1!32) (getIndex!856 l!3062 e2!32)))))

(declare-fun b!4158520 () Bool)

(declare-fun res!1703306 () Bool)

(assert (=> b!4158520 (=> (not res!1703306) (not e!2580860))))

(declare-fun contains!9235 (List!45501 B!2665) Bool)

(assert (=> b!4158520 (= res!1703306 (contains!9235 l!3062 e2!32))))

(declare-fun b!4158521 () Bool)

(declare-fun head!8820 (List!45501) B!2665)

(assert (=> b!4158521 (= e!2580860 (= (head!8820 l!3062) e1!32))))

(declare-fun b!4158522 () Bool)

(declare-fun e!2580859 () Bool)

(declare-fun tp_is_empty!21713 () Bool)

(declare-fun tp!1268930 () Bool)

(assert (=> b!4158522 (= e!2580859 (and tp_is_empty!21713 tp!1268930))))

(declare-fun b!4158523 () Bool)

(declare-fun res!1703308 () Bool)

(assert (=> b!4158523 (=> (not res!1703308) (not e!2580860))))

(assert (=> b!4158523 (= res!1703308 (not (= e1!32 e2!32)))))

(declare-fun res!1703307 () Bool)

(assert (=> start!396098 (=> (not res!1703307) (not e!2580860))))

(assert (=> start!396098 (= res!1703307 (contains!9235 l!3062 e1!32))))

(assert (=> start!396098 e!2580860))

(assert (=> start!396098 e!2580859))

(assert (=> start!396098 tp_is_empty!21713))

(declare-fun b!4158524 () Bool)

(declare-fun res!1703309 () Bool)

(assert (=> b!4158524 (=> (not res!1703309) (not e!2580860))))

(get-info :version)

(assert (=> b!4158524 (= res!1703309 (and (or (not ((_ is Cons!45377) l!3062)) (not (= (h!50797 l!3062) e1!32))) ((_ is Cons!45377) l!3062) (not (= (h!50797 l!3062) e1!32))))))

(assert (= (and start!396098 res!1703307) b!4158520))

(assert (= (and b!4158520 res!1703306) b!4158523))

(assert (= (and b!4158523 res!1703308) b!4158519))

(assert (= (and b!4158519 res!1703310) b!4158524))

(assert (= (and b!4158524 res!1703309) b!4158521))

(assert (= (and start!396098 ((_ is Cons!45377) l!3062)) b!4158522))

(declare-fun m!4752323 () Bool)

(assert (=> b!4158519 m!4752323))

(declare-fun m!4752325 () Bool)

(assert (=> b!4158519 m!4752325))

(declare-fun m!4752327 () Bool)

(assert (=> b!4158520 m!4752327))

(declare-fun m!4752329 () Bool)

(assert (=> b!4158521 m!4752329))

(declare-fun m!4752331 () Bool)

(assert (=> start!396098 m!4752331))

(check-sat (not b!4158522) (not b!4158519) tp_is_empty!21713 (not b!4158520) (not b!4158521) (not start!396098))
(check-sat)
(get-model)

(declare-fun b!4158539 () Bool)

(declare-fun e!2580872 () Int)

(assert (=> b!4158539 (= e!2580872 0)))

(declare-fun d!1229547 () Bool)

(declare-fun lt!1482238 () Int)

(assert (=> d!1229547 (>= lt!1482238 0)))

(assert (=> d!1229547 (= lt!1482238 e!2580872)))

(declare-fun c!711676 () Bool)

(assert (=> d!1229547 (= c!711676 (and ((_ is Cons!45377) l!3062) (= (h!50797 l!3062) e1!32)))))

(assert (=> d!1229547 (contains!9235 l!3062 e1!32)))

(assert (=> d!1229547 (= (getIndex!856 l!3062 e1!32) lt!1482238)))

(declare-fun b!4158540 () Bool)

(declare-fun e!2580873 () Int)

(assert (=> b!4158540 (= e!2580872 e!2580873)))

(declare-fun c!711677 () Bool)

(assert (=> b!4158540 (= c!711677 (and ((_ is Cons!45377) l!3062) (not (= (h!50797 l!3062) e1!32))))))

(declare-fun b!4158541 () Bool)

(assert (=> b!4158541 (= e!2580873 (+ 1 (getIndex!856 (t!343532 l!3062) e1!32)))))

(declare-fun b!4158542 () Bool)

(assert (=> b!4158542 (= e!2580873 (- 1))))

(assert (= (and d!1229547 c!711676) b!4158539))

(assert (= (and d!1229547 (not c!711676)) b!4158540))

(assert (= (and b!4158540 c!711677) b!4158541))

(assert (= (and b!4158540 (not c!711677)) b!4158542))

(assert (=> d!1229547 m!4752331))

(declare-fun m!4752339 () Bool)

(assert (=> b!4158541 m!4752339))

(assert (=> b!4158519 d!1229547))

(declare-fun b!4158547 () Bool)

(declare-fun e!2580877 () Int)

(assert (=> b!4158547 (= e!2580877 0)))

(declare-fun d!1229553 () Bool)

(declare-fun lt!1482241 () Int)

(assert (=> d!1229553 (>= lt!1482241 0)))

(assert (=> d!1229553 (= lt!1482241 e!2580877)))

(declare-fun c!711680 () Bool)

(assert (=> d!1229553 (= c!711680 (and ((_ is Cons!45377) l!3062) (= (h!50797 l!3062) e2!32)))))

(assert (=> d!1229553 (contains!9235 l!3062 e2!32)))

(assert (=> d!1229553 (= (getIndex!856 l!3062 e2!32) lt!1482241)))

(declare-fun b!4158548 () Bool)

(declare-fun e!2580878 () Int)

(assert (=> b!4158548 (= e!2580877 e!2580878)))

(declare-fun c!711681 () Bool)

(assert (=> b!4158548 (= c!711681 (and ((_ is Cons!45377) l!3062) (not (= (h!50797 l!3062) e2!32))))))

(declare-fun b!4158549 () Bool)

(assert (=> b!4158549 (= e!2580878 (+ 1 (getIndex!856 (t!343532 l!3062) e2!32)))))

(declare-fun b!4158550 () Bool)

(assert (=> b!4158550 (= e!2580878 (- 1))))

(assert (= (and d!1229553 c!711680) b!4158547))

(assert (= (and d!1229553 (not c!711680)) b!4158548))

(assert (= (and b!4158548 c!711681) b!4158549))

(assert (= (and b!4158548 (not c!711681)) b!4158550))

(assert (=> d!1229553 m!4752327))

(declare-fun m!4752341 () Bool)

(assert (=> b!4158549 m!4752341))

(assert (=> b!4158519 d!1229553))

(declare-fun d!1229555 () Bool)

(declare-fun lt!1482247 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7026 (List!45501) (InoxSet B!2665))

(assert (=> d!1229555 (= lt!1482247 (select (content!7026 l!3062) e1!32))))

(declare-fun e!2580894 () Bool)

(assert (=> d!1229555 (= lt!1482247 e!2580894)))

(declare-fun res!1703324 () Bool)

(assert (=> d!1229555 (=> (not res!1703324) (not e!2580894))))

(assert (=> d!1229555 (= res!1703324 ((_ is Cons!45377) l!3062))))

(assert (=> d!1229555 (= (contains!9235 l!3062 e1!32) lt!1482247)))

(declare-fun b!4158574 () Bool)

(declare-fun e!2580895 () Bool)

(assert (=> b!4158574 (= e!2580894 e!2580895)))

(declare-fun res!1703323 () Bool)

(assert (=> b!4158574 (=> res!1703323 e!2580895)))

(assert (=> b!4158574 (= res!1703323 (= (h!50797 l!3062) e1!32))))

(declare-fun b!4158575 () Bool)

(assert (=> b!4158575 (= e!2580895 (contains!9235 (t!343532 l!3062) e1!32))))

(assert (= (and d!1229555 res!1703324) b!4158574))

(assert (= (and b!4158574 (not res!1703323)) b!4158575))

(declare-fun m!4752351 () Bool)

(assert (=> d!1229555 m!4752351))

(declare-fun m!4752353 () Bool)

(assert (=> d!1229555 m!4752353))

(declare-fun m!4752355 () Bool)

(assert (=> b!4158575 m!4752355))

(assert (=> start!396098 d!1229555))

(declare-fun d!1229561 () Bool)

(assert (=> d!1229561 (= (head!8820 l!3062) (h!50797 l!3062))))

(assert (=> b!4158521 d!1229561))

(declare-fun d!1229563 () Bool)

(declare-fun lt!1482248 () Bool)

(assert (=> d!1229563 (= lt!1482248 (select (content!7026 l!3062) e2!32))))

(declare-fun e!2580896 () Bool)

(assert (=> d!1229563 (= lt!1482248 e!2580896)))

(declare-fun res!1703326 () Bool)

(assert (=> d!1229563 (=> (not res!1703326) (not e!2580896))))

(assert (=> d!1229563 (= res!1703326 ((_ is Cons!45377) l!3062))))

(assert (=> d!1229563 (= (contains!9235 l!3062 e2!32) lt!1482248)))

(declare-fun b!4158576 () Bool)

(declare-fun e!2580897 () Bool)

(assert (=> b!4158576 (= e!2580896 e!2580897)))

(declare-fun res!1703325 () Bool)

(assert (=> b!4158576 (=> res!1703325 e!2580897)))

(assert (=> b!4158576 (= res!1703325 (= (h!50797 l!3062) e2!32))))

(declare-fun b!4158577 () Bool)

(assert (=> b!4158577 (= e!2580897 (contains!9235 (t!343532 l!3062) e2!32))))

(assert (= (and d!1229563 res!1703326) b!4158576))

(assert (= (and b!4158576 (not res!1703325)) b!4158577))

(assert (=> d!1229563 m!4752351))

(declare-fun m!4752357 () Bool)

(assert (=> d!1229563 m!4752357))

(declare-fun m!4752359 () Bool)

(assert (=> b!4158577 m!4752359))

(assert (=> b!4158520 d!1229563))

(declare-fun b!4158582 () Bool)

(declare-fun e!2580900 () Bool)

(declare-fun tp!1268936 () Bool)

(assert (=> b!4158582 (= e!2580900 (and tp_is_empty!21713 tp!1268936))))

(assert (=> b!4158522 (= tp!1268930 e!2580900)))

(assert (= (and b!4158522 ((_ is Cons!45377) (t!343532 l!3062))) b!4158582))

(check-sat (not d!1229563) (not b!4158549) (not b!4158582) (not d!1229555) (not b!4158541) (not d!1229553) tp_is_empty!21713 (not d!1229547) (not b!4158577) (not b!4158575))
(check-sat)
