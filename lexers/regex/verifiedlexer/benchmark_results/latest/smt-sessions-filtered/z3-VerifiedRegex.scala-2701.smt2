; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!145272 () Bool)

(assert start!145272)

(declare-fun b!1563562 () Bool)

(declare-fun res!696957 () Bool)

(declare-fun e!1004117 () Bool)

(assert (=> b!1563562 (=> (not res!696957) (not e!1004117))))

(declare-datatypes ((B!1421 0))(
  ( (B!1422 (val!4974 Int)) )
))
(declare-datatypes ((List!17041 0))(
  ( (Nil!16971) (Cons!16971 (h!22372 B!1421) (t!141620 List!17041)) )
))
(declare-fun l!3627 () List!17041)

(declare-fun noDuplicate!234 (List!17041) Bool)

(assert (=> b!1563562 (= res!696957 (noDuplicate!234 (t!141620 l!3627)))))

(declare-fun b!1563563 () Bool)

(declare-fun ListPrimitiveSize!106 (List!17041) Int)

(assert (=> b!1563563 (= e!1004117 (>= (ListPrimitiveSize!106 (t!141620 l!3627)) (ListPrimitiveSize!106 l!3627)))))

(declare-fun b!1563564 () Bool)

(declare-fun res!696956 () Bool)

(assert (=> b!1563564 (=> (not res!696956) (not e!1004117))))

(declare-fun elmt!170 () B!1421)

(declare-fun contains!2992 (List!17041 B!1421) Bool)

(assert (=> b!1563564 (= res!696956 (not (contains!2992 (t!141620 l!3627) elmt!170)))))

(declare-fun b!1563565 () Bool)

(declare-fun res!696955 () Bool)

(assert (=> b!1563565 (=> (not res!696955) (not e!1004117))))

(get-info :version)

(assert (=> b!1563565 (= res!696955 ((_ is Cons!16971) l!3627))))

(declare-fun b!1563566 () Bool)

(declare-fun res!696954 () Bool)

(assert (=> b!1563566 (=> (not res!696954) (not e!1004117))))

(assert (=> b!1563566 (= res!696954 (not (contains!2992 l!3627 elmt!170)))))

(declare-fun b!1563567 () Bool)

(declare-fun e!1004118 () Bool)

(declare-fun tp_is_empty!7117 () Bool)

(declare-fun tp!460588 () Bool)

(assert (=> b!1563567 (= e!1004118 (and tp_is_empty!7117 tp!460588))))

(declare-fun res!696953 () Bool)

(assert (=> start!145272 (=> (not res!696953) (not e!1004117))))

(assert (=> start!145272 (= res!696953 (noDuplicate!234 l!3627))))

(assert (=> start!145272 e!1004117))

(assert (=> start!145272 e!1004118))

(assert (=> start!145272 tp_is_empty!7117))

(assert (= (and start!145272 res!696953) b!1563566))

(assert (= (and b!1563566 res!696954) b!1563565))

(assert (= (and b!1563565 res!696955) b!1563562))

(assert (= (and b!1563562 res!696957) b!1563564))

(assert (= (and b!1563564 res!696956) b!1563563))

(assert (= (and start!145272 ((_ is Cons!16971) l!3627)) b!1563567))

(declare-fun m!1834875 () Bool)

(assert (=> start!145272 m!1834875))

(declare-fun m!1834877 () Bool)

(assert (=> b!1563563 m!1834877))

(declare-fun m!1834879 () Bool)

(assert (=> b!1563563 m!1834879))

(declare-fun m!1834881 () Bool)

(assert (=> b!1563566 m!1834881))

(declare-fun m!1834883 () Bool)

(assert (=> b!1563562 m!1834883))

(declare-fun m!1834885 () Bool)

(assert (=> b!1563564 m!1834885))

(check-sat (not b!1563566) (not b!1563563) (not start!145272) tp_is_empty!7117 (not b!1563562) (not b!1563564) (not b!1563567))
(check-sat)
(get-model)

(declare-fun d!462988 () Bool)

(declare-fun lt!541393 () Int)

(assert (=> d!462988 (>= lt!541393 0)))

(declare-fun e!1004125 () Int)

(assert (=> d!462988 (= lt!541393 e!1004125)))

(declare-fun c!253425 () Bool)

(assert (=> d!462988 (= c!253425 ((_ is Nil!16971) (t!141620 l!3627)))))

(assert (=> d!462988 (= (ListPrimitiveSize!106 (t!141620 l!3627)) lt!541393)))

(declare-fun b!1563576 () Bool)

(assert (=> b!1563576 (= e!1004125 0)))

(declare-fun b!1563577 () Bool)

(assert (=> b!1563577 (= e!1004125 (+ 1 (ListPrimitiveSize!106 (t!141620 (t!141620 l!3627)))))))

(assert (= (and d!462988 c!253425) b!1563576))

(assert (= (and d!462988 (not c!253425)) b!1563577))

(declare-fun m!1834887 () Bool)

(assert (=> b!1563577 m!1834887))

(assert (=> b!1563563 d!462988))

(declare-fun d!462990 () Bool)

(declare-fun lt!541395 () Int)

(assert (=> d!462990 (>= lt!541395 0)))

(declare-fun e!1004128 () Int)

(assert (=> d!462990 (= lt!541395 e!1004128)))

(declare-fun c!253426 () Bool)

(assert (=> d!462990 (= c!253426 ((_ is Nil!16971) l!3627))))

(assert (=> d!462990 (= (ListPrimitiveSize!106 l!3627) lt!541395)))

(declare-fun b!1563580 () Bool)

(assert (=> b!1563580 (= e!1004128 0)))

(declare-fun b!1563581 () Bool)

(assert (=> b!1563581 (= e!1004128 (+ 1 (ListPrimitiveSize!106 (t!141620 l!3627))))))

(assert (= (and d!462990 c!253426) b!1563580))

(assert (= (and d!462990 (not c!253426)) b!1563581))

(assert (=> b!1563581 m!1834877))

(assert (=> b!1563563 d!462990))

(declare-fun d!462994 () Bool)

(declare-fun lt!541398 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2352 (List!17041) (InoxSet B!1421))

(assert (=> d!462994 (= lt!541398 (select (content!2352 (t!141620 l!3627)) elmt!170))))

(declare-fun e!1004141 () Bool)

(assert (=> d!462994 (= lt!541398 e!1004141)))

(declare-fun res!696977 () Bool)

(assert (=> d!462994 (=> (not res!696977) (not e!1004141))))

(assert (=> d!462994 (= res!696977 ((_ is Cons!16971) (t!141620 l!3627)))))

(assert (=> d!462994 (= (contains!2992 (t!141620 l!3627) elmt!170) lt!541398)))

(declare-fun b!1563594 () Bool)

(declare-fun e!1004142 () Bool)

(assert (=> b!1563594 (= e!1004141 e!1004142)))

(declare-fun res!696976 () Bool)

(assert (=> b!1563594 (=> res!696976 e!1004142)))

(assert (=> b!1563594 (= res!696976 (= (h!22372 (t!141620 l!3627)) elmt!170))))

(declare-fun b!1563595 () Bool)

(assert (=> b!1563595 (= e!1004142 (contains!2992 (t!141620 (t!141620 l!3627)) elmt!170))))

(assert (= (and d!462994 res!696977) b!1563594))

(assert (= (and b!1563594 (not res!696976)) b!1563595))

(declare-fun m!1834899 () Bool)

(assert (=> d!462994 m!1834899))

(declare-fun m!1834901 () Bool)

(assert (=> d!462994 m!1834901))

(declare-fun m!1834903 () Bool)

(assert (=> b!1563595 m!1834903))

(assert (=> b!1563564 d!462994))

(declare-fun d!463000 () Bool)

(declare-fun res!696984 () Bool)

(declare-fun e!1004155 () Bool)

(assert (=> d!463000 (=> res!696984 e!1004155)))

(assert (=> d!463000 (= res!696984 ((_ is Nil!16971) l!3627))))

(assert (=> d!463000 (= (noDuplicate!234 l!3627) e!1004155)))

(declare-fun b!1563614 () Bool)

(declare-fun e!1004156 () Bool)

(assert (=> b!1563614 (= e!1004155 e!1004156)))

(declare-fun res!696985 () Bool)

(assert (=> b!1563614 (=> (not res!696985) (not e!1004156))))

(assert (=> b!1563614 (= res!696985 (not (contains!2992 (t!141620 l!3627) (h!22372 l!3627))))))

(declare-fun b!1563615 () Bool)

(assert (=> b!1563615 (= e!1004156 (noDuplicate!234 (t!141620 l!3627)))))

(assert (= (and d!463000 (not res!696984)) b!1563614))

(assert (= (and b!1563614 res!696985) b!1563615))

(declare-fun m!1834913 () Bool)

(assert (=> b!1563614 m!1834913))

(assert (=> b!1563615 m!1834883))

(assert (=> start!145272 d!463000))

(declare-fun d!463006 () Bool)

(declare-fun lt!541404 () Bool)

(assert (=> d!463006 (= lt!541404 (select (content!2352 l!3627) elmt!170))))

(declare-fun e!1004158 () Bool)

(assert (=> d!463006 (= lt!541404 e!1004158)))

(declare-fun res!696987 () Bool)

(assert (=> d!463006 (=> (not res!696987) (not e!1004158))))

(assert (=> d!463006 (= res!696987 ((_ is Cons!16971) l!3627))))

(assert (=> d!463006 (= (contains!2992 l!3627 elmt!170) lt!541404)))

(declare-fun b!1563617 () Bool)

(declare-fun e!1004159 () Bool)

(assert (=> b!1563617 (= e!1004158 e!1004159)))

(declare-fun res!696986 () Bool)

(assert (=> b!1563617 (=> res!696986 e!1004159)))

(assert (=> b!1563617 (= res!696986 (= (h!22372 l!3627) elmt!170))))

(declare-fun b!1563618 () Bool)

(assert (=> b!1563618 (= e!1004159 (contains!2992 (t!141620 l!3627) elmt!170))))

(assert (= (and d!463006 res!696987) b!1563617))

(assert (= (and b!1563617 (not res!696986)) b!1563618))

(declare-fun m!1834915 () Bool)

(assert (=> d!463006 m!1834915))

(declare-fun m!1834917 () Bool)

(assert (=> d!463006 m!1834917))

(assert (=> b!1563618 m!1834885))

(assert (=> b!1563566 d!463006))

(declare-fun d!463008 () Bool)

(declare-fun res!696988 () Bool)

(declare-fun e!1004160 () Bool)

(assert (=> d!463008 (=> res!696988 e!1004160)))

(assert (=> d!463008 (= res!696988 ((_ is Nil!16971) (t!141620 l!3627)))))

(assert (=> d!463008 (= (noDuplicate!234 (t!141620 l!3627)) e!1004160)))

(declare-fun b!1563619 () Bool)

(declare-fun e!1004161 () Bool)

(assert (=> b!1563619 (= e!1004160 e!1004161)))

(declare-fun res!696989 () Bool)

(assert (=> b!1563619 (=> (not res!696989) (not e!1004161))))

(assert (=> b!1563619 (= res!696989 (not (contains!2992 (t!141620 (t!141620 l!3627)) (h!22372 (t!141620 l!3627)))))))

(declare-fun b!1563620 () Bool)

(assert (=> b!1563620 (= e!1004161 (noDuplicate!234 (t!141620 (t!141620 l!3627))))))

(assert (= (and d!463008 (not res!696988)) b!1563619))

(assert (= (and b!1563619 res!696989) b!1563620))

(declare-fun m!1834919 () Bool)

(assert (=> b!1563619 m!1834919))

(declare-fun m!1834921 () Bool)

(assert (=> b!1563620 m!1834921))

(assert (=> b!1563562 d!463008))

(declare-fun b!1563625 () Bool)

(declare-fun e!1004164 () Bool)

(declare-fun tp!460594 () Bool)

(assert (=> b!1563625 (= e!1004164 (and tp_is_empty!7117 tp!460594))))

(assert (=> b!1563567 (= tp!460588 e!1004164)))

(assert (= (and b!1563567 ((_ is Cons!16971) (t!141620 l!3627))) b!1563625))

(check-sat (not b!1563595) (not b!1563577) (not d!463006) (not b!1563625) (not b!1563619) (not b!1563620) (not b!1563614) (not d!462994) (not b!1563618) tp_is_empty!7117 (not b!1563615) (not b!1563581))
(check-sat)
