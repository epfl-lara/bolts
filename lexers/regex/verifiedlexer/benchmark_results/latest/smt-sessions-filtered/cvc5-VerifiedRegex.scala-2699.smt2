; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!145246 () Bool)

(assert start!145246)

(declare-fun b!1563406 () Bool)

(declare-fun res!696834 () Bool)

(declare-fun e!1004015 () Bool)

(assert (=> b!1563406 (=> (not res!696834) (not e!1004015))))

(declare-datatypes ((B!1411 0))(
  ( (B!1412 (val!4969 Int)) )
))
(declare-datatypes ((List!17036 0))(
  ( (Nil!16966) (Cons!16966 (h!22367 B!1411) (t!141615 List!17036)) )
))
(declare-fun l!3627 () List!17036)

(declare-fun elmt!170 () B!1411)

(declare-fun contains!2987 (List!17036 B!1411) Bool)

(assert (=> b!1563406 (= res!696834 (not (contains!2987 l!3627 elmt!170)))))

(declare-fun res!696833 () Bool)

(assert (=> start!145246 (=> (not res!696833) (not e!1004015))))

(declare-fun noDuplicate!229 (List!17036) Bool)

(assert (=> start!145246 (= res!696833 (noDuplicate!229 l!3627))))

(assert (=> start!145246 e!1004015))

(declare-fun e!1004016 () Bool)

(assert (=> start!145246 e!1004016))

(declare-fun tp_is_empty!7107 () Bool)

(assert (=> start!145246 tp_is_empty!7107))

(declare-fun b!1563407 () Bool)

(declare-fun res!696832 () Bool)

(assert (=> b!1563407 (=> (not res!696832) (not e!1004015))))

(assert (=> b!1563407 (= res!696832 (is-Cons!16966 l!3627))))

(declare-fun b!1563408 () Bool)

(assert (=> b!1563408 (= e!1004015 (not (noDuplicate!229 (t!141615 l!3627))))))

(declare-fun b!1563409 () Bool)

(declare-fun tp!460561 () Bool)

(assert (=> b!1563409 (= e!1004016 (and tp_is_empty!7107 tp!460561))))

(assert (= (and start!145246 res!696833) b!1563406))

(assert (= (and b!1563406 res!696834) b!1563407))

(assert (= (and b!1563407 res!696832) b!1563408))

(assert (= (and start!145246 (is-Cons!16966 l!3627)) b!1563409))

(declare-fun m!1834783 () Bool)

(assert (=> b!1563406 m!1834783))

(declare-fun m!1834785 () Bool)

(assert (=> start!145246 m!1834785))

(declare-fun m!1834787 () Bool)

(assert (=> b!1563408 m!1834787))

(push 1)

(assert tp_is_empty!7107)

(assert (not b!1563409))

(assert (not b!1563408))

(assert (not start!145246))

(assert (not b!1563406))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!462956 () Bool)

(declare-fun lt!541377 () Bool)

(declare-fun content!2348 (List!17036) (Set B!1411))

(assert (=> d!462956 (= lt!541377 (set.member elmt!170 (content!2348 l!3627)))))

(declare-fun e!1004028 () Bool)

(assert (=> d!462956 (= lt!541377 e!1004028)))

(declare-fun res!696848 () Bool)

(assert (=> d!462956 (=> (not res!696848) (not e!1004028))))

(assert (=> d!462956 (= res!696848 (is-Cons!16966 l!3627))))

(assert (=> d!462956 (= (contains!2987 l!3627 elmt!170) lt!541377)))

(declare-fun b!1563426 () Bool)

(declare-fun e!1004027 () Bool)

(assert (=> b!1563426 (= e!1004028 e!1004027)))

(declare-fun res!696849 () Bool)

(assert (=> b!1563426 (=> res!696849 e!1004027)))

(assert (=> b!1563426 (= res!696849 (= (h!22367 l!3627) elmt!170))))

(declare-fun b!1563427 () Bool)

(assert (=> b!1563427 (= e!1004027 (contains!2987 (t!141615 l!3627) elmt!170))))

(assert (= (and d!462956 res!696848) b!1563426))

(assert (= (and b!1563426 (not res!696849)) b!1563427))

(declare-fun m!1834795 () Bool)

(assert (=> d!462956 m!1834795))

(declare-fun m!1834797 () Bool)

(assert (=> d!462956 m!1834797))

(declare-fun m!1834799 () Bool)

(assert (=> b!1563427 m!1834799))

(assert (=> b!1563406 d!462956))

(declare-fun d!462958 () Bool)

(declare-fun res!696854 () Bool)

(declare-fun e!1004033 () Bool)

(assert (=> d!462958 (=> res!696854 e!1004033)))

(assert (=> d!462958 (= res!696854 (is-Nil!16966 (t!141615 l!3627)))))

(assert (=> d!462958 (= (noDuplicate!229 (t!141615 l!3627)) e!1004033)))

(declare-fun b!1563432 () Bool)

(declare-fun e!1004034 () Bool)

(assert (=> b!1563432 (= e!1004033 e!1004034)))

(declare-fun res!696855 () Bool)

(assert (=> b!1563432 (=> (not res!696855) (not e!1004034))))

(assert (=> b!1563432 (= res!696855 (not (contains!2987 (t!141615 (t!141615 l!3627)) (h!22367 (t!141615 l!3627)))))))

(declare-fun b!1563433 () Bool)

(assert (=> b!1563433 (= e!1004034 (noDuplicate!229 (t!141615 (t!141615 l!3627))))))

(assert (= (and d!462958 (not res!696854)) b!1563432))

(assert (= (and b!1563432 res!696855) b!1563433))

(declare-fun m!1834801 () Bool)

(assert (=> b!1563432 m!1834801))

(declare-fun m!1834803 () Bool)

(assert (=> b!1563433 m!1834803))

(assert (=> b!1563408 d!462958))

(declare-fun d!462962 () Bool)

(declare-fun res!696856 () Bool)

(declare-fun e!1004035 () Bool)

(assert (=> d!462962 (=> res!696856 e!1004035)))

(assert (=> d!462962 (= res!696856 (is-Nil!16966 l!3627))))

(assert (=> d!462962 (= (noDuplicate!229 l!3627) e!1004035)))

(declare-fun b!1563434 () Bool)

(declare-fun e!1004036 () Bool)

(assert (=> b!1563434 (= e!1004035 e!1004036)))

(declare-fun res!696857 () Bool)

(assert (=> b!1563434 (=> (not res!696857) (not e!1004036))))

(assert (=> b!1563434 (= res!696857 (not (contains!2987 (t!141615 l!3627) (h!22367 l!3627))))))

(declare-fun b!1563435 () Bool)

(assert (=> b!1563435 (= e!1004036 (noDuplicate!229 (t!141615 l!3627)))))

(assert (= (and d!462962 (not res!696856)) b!1563434))

(assert (= (and b!1563434 res!696857) b!1563435))

(declare-fun m!1834805 () Bool)

(assert (=> b!1563434 m!1834805))

(assert (=> b!1563435 m!1834787))

(assert (=> start!145246 d!462962))

(declare-fun b!1563440 () Bool)

(declare-fun e!1004039 () Bool)

(declare-fun tp!460567 () Bool)

(assert (=> b!1563440 (= e!1004039 (and tp_is_empty!7107 tp!460567))))

(assert (=> b!1563409 (= tp!460561 e!1004039)))

(assert (= (and b!1563409 (is-Cons!16966 (t!141615 l!3627))) b!1563440))

(push 1)

(assert (not d!462956))

(assert (not b!1563427))

(assert (not b!1563432))

(assert (not b!1563435))

(assert (not b!1563433))

(assert (not b!1563440))

(assert (not b!1563434))

(assert tp_is_empty!7107)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

