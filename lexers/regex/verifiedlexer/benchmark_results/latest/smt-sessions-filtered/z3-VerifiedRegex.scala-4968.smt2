; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252384 () Bool)

(assert start!252384)

(declare-fun res!1094332 () Bool)

(declare-fun e!1640389 () Bool)

(assert (=> start!252384 (=> (not res!1094332) (not e!1640389))))

(declare-datatypes ((B!2293 0))(
  ( (B!2294 (val!9614 Int)) )
))
(declare-datatypes ((List!30047 0))(
  ( (Nil!29947) (Cons!29947 (h!35367 B!2293) (t!213060 List!30047)) )
))
(declare-fun l!3796 () List!30047)

(declare-fun noDuplicate!495 (List!30047) Bool)

(assert (=> start!252384 (= res!1094332 (noDuplicate!495 l!3796))))

(assert (=> start!252384 e!1640389))

(declare-fun e!1640388 () Bool)

(assert (=> start!252384 e!1640388))

(declare-fun tp_is_empty!13573 () Bool)

(assert (=> start!252384 tp_is_empty!13573))

(declare-fun b!2598863 () Bool)

(declare-fun res!1094333 () Bool)

(assert (=> b!2598863 (=> (not res!1094333) (not e!1640389))))

(declare-fun e!9468 () B!2293)

(declare-fun contains!5495 (List!30047 B!2293) Bool)

(assert (=> b!2598863 (= res!1094333 (contains!5495 l!3796 e!9468))))

(declare-fun b!2598864 () Bool)

(get-info :version)

(assert (=> b!2598864 (= e!1640389 (and (or (not ((_ is Cons!29947) l!3796)) (= (h!35367 l!3796) e!9468)) (or (not ((_ is Cons!29947) l!3796)) (not (= (h!35367 l!3796) e!9468))) ((_ is Nil!29947) l!3796)))))

(declare-fun b!2598865 () Bool)

(declare-fun tp!823558 () Bool)

(assert (=> b!2598865 (= e!1640388 (and tp_is_empty!13573 tp!823558))))

(assert (= (and start!252384 res!1094332) b!2598863))

(assert (= (and b!2598863 res!1094333) b!2598864))

(assert (= (and start!252384 ((_ is Cons!29947) l!3796)) b!2598865))

(declare-fun m!2934809 () Bool)

(assert (=> start!252384 m!2934809))

(declare-fun m!2934811 () Bool)

(assert (=> b!2598863 m!2934811))

(check-sat (not start!252384) (not b!2598863) (not b!2598865) tp_is_empty!13573)
(check-sat)
(get-model)

(declare-fun d!736403 () Bool)

(declare-fun res!1094344 () Bool)

(declare-fun e!1640400 () Bool)

(assert (=> d!736403 (=> res!1094344 e!1640400)))

(assert (=> d!736403 (= res!1094344 ((_ is Nil!29947) l!3796))))

(assert (=> d!736403 (= (noDuplicate!495 l!3796) e!1640400)))

(declare-fun b!2598876 () Bool)

(declare-fun e!1640401 () Bool)

(assert (=> b!2598876 (= e!1640400 e!1640401)))

(declare-fun res!1094345 () Bool)

(assert (=> b!2598876 (=> (not res!1094345) (not e!1640401))))

(assert (=> b!2598876 (= res!1094345 (not (contains!5495 (t!213060 l!3796) (h!35367 l!3796))))))

(declare-fun b!2598877 () Bool)

(assert (=> b!2598877 (= e!1640401 (noDuplicate!495 (t!213060 l!3796)))))

(assert (= (and d!736403 (not res!1094344)) b!2598876))

(assert (= (and b!2598876 res!1094345) b!2598877))

(declare-fun m!2934817 () Bool)

(assert (=> b!2598876 m!2934817))

(declare-fun m!2934819 () Bool)

(assert (=> b!2598877 m!2934819))

(assert (=> start!252384 d!736403))

(declare-fun d!736407 () Bool)

(declare-fun lt!915049 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4230 (List!30047) (InoxSet B!2293))

(assert (=> d!736407 (= lt!915049 (select (content!4230 l!3796) e!9468))))

(declare-fun e!1640414 () Bool)

(assert (=> d!736407 (= lt!915049 e!1640414)))

(declare-fun res!1094357 () Bool)

(assert (=> d!736407 (=> (not res!1094357) (not e!1640414))))

(assert (=> d!736407 (= res!1094357 ((_ is Cons!29947) l!3796))))

(assert (=> d!736407 (= (contains!5495 l!3796 e!9468) lt!915049)))

(declare-fun b!2598892 () Bool)

(declare-fun e!1640415 () Bool)

(assert (=> b!2598892 (= e!1640414 e!1640415)))

(declare-fun res!1094356 () Bool)

(assert (=> b!2598892 (=> res!1094356 e!1640415)))

(assert (=> b!2598892 (= res!1094356 (= (h!35367 l!3796) e!9468))))

(declare-fun b!2598893 () Bool)

(assert (=> b!2598893 (= e!1640415 (contains!5495 (t!213060 l!3796) e!9468))))

(assert (= (and d!736407 res!1094357) b!2598892))

(assert (= (and b!2598892 (not res!1094356)) b!2598893))

(declare-fun m!2934827 () Bool)

(assert (=> d!736407 m!2934827))

(declare-fun m!2934829 () Bool)

(assert (=> d!736407 m!2934829))

(declare-fun m!2934831 () Bool)

(assert (=> b!2598893 m!2934831))

(assert (=> b!2598863 d!736407))

(declare-fun b!2598899 () Bool)

(declare-fun e!1640419 () Bool)

(declare-fun tp!823564 () Bool)

(assert (=> b!2598899 (= e!1640419 (and tp_is_empty!13573 tp!823564))))

(assert (=> b!2598865 (= tp!823558 e!1640419)))

(assert (= (and b!2598865 ((_ is Cons!29947) (t!213060 l!3796))) b!2598899))

(check-sat (not b!2598899) (not b!2598876) (not b!2598877) (not b!2598893) (not d!736407) tp_is_empty!13573)
(check-sat)
