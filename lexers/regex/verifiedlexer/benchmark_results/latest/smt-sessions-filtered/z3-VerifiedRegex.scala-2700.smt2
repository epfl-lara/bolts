; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!145260 () Bool)

(assert start!145260)

(declare-fun b!1563485 () Bool)

(declare-fun res!696893 () Bool)

(declare-fun e!1004067 () Bool)

(assert (=> b!1563485 (=> (not res!696893) (not e!1004067))))

(declare-datatypes ((B!1417 0))(
  ( (B!1418 (val!4972 Int)) )
))
(declare-datatypes ((List!17039 0))(
  ( (Nil!16969) (Cons!16969 (h!22370 B!1417) (t!141618 List!17039)) )
))
(declare-fun l!3627 () List!17039)

(get-info :version)

(assert (=> b!1563485 (= res!696893 ((_ is Cons!16969) l!3627))))

(declare-fun b!1563486 () Bool)

(declare-fun elmt!170 () B!1417)

(declare-fun contains!2990 (List!17039 B!1417) Bool)

(assert (=> b!1563486 (= e!1004067 (contains!2990 (t!141618 l!3627) elmt!170))))

(declare-fun res!696892 () Bool)

(assert (=> start!145260 (=> (not res!696892) (not e!1004067))))

(declare-fun noDuplicate!232 (List!17039) Bool)

(assert (=> start!145260 (= res!696892 (noDuplicate!232 l!3627))))

(assert (=> start!145260 e!1004067))

(declare-fun e!1004068 () Bool)

(assert (=> start!145260 e!1004068))

(declare-fun tp_is_empty!7113 () Bool)

(assert (=> start!145260 tp_is_empty!7113))

(declare-fun b!1563487 () Bool)

(declare-fun tp!460576 () Bool)

(assert (=> b!1563487 (= e!1004068 (and tp_is_empty!7113 tp!460576))))

(declare-fun b!1563488 () Bool)

(declare-fun res!696894 () Bool)

(assert (=> b!1563488 (=> (not res!696894) (not e!1004067))))

(assert (=> b!1563488 (= res!696894 (not (contains!2990 l!3627 elmt!170)))))

(declare-fun b!1563489 () Bool)

(declare-fun res!696895 () Bool)

(assert (=> b!1563489 (=> (not res!696895) (not e!1004067))))

(assert (=> b!1563489 (= res!696895 (noDuplicate!232 (t!141618 l!3627)))))

(assert (= (and start!145260 res!696892) b!1563488))

(assert (= (and b!1563488 res!696894) b!1563485))

(assert (= (and b!1563485 res!696893) b!1563489))

(assert (= (and b!1563489 res!696895) b!1563486))

(assert (= (and start!145260 ((_ is Cons!16969) l!3627)) b!1563487))

(declare-fun m!1834823 () Bool)

(assert (=> b!1563486 m!1834823))

(declare-fun m!1834825 () Bool)

(assert (=> start!145260 m!1834825))

(declare-fun m!1834827 () Bool)

(assert (=> b!1563488 m!1834827))

(declare-fun m!1834829 () Bool)

(assert (=> b!1563489 m!1834829))

(check-sat tp_is_empty!7113 (not b!1563486) (not start!145260) (not b!1563488) (not b!1563487) (not b!1563489))
(check-sat)
(get-model)

(declare-fun d!462971 () Bool)

(declare-fun lt!541386 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2350 (List!17039) (InoxSet B!1417))

(assert (=> d!462971 (= lt!541386 (select (content!2350 l!3627) elmt!170))))

(declare-fun e!1004080 () Bool)

(assert (=> d!462971 (= lt!541386 e!1004080)))

(declare-fun res!696906 () Bool)

(assert (=> d!462971 (=> (not res!696906) (not e!1004080))))

(assert (=> d!462971 (= res!696906 ((_ is Cons!16969) l!3627))))

(assert (=> d!462971 (= (contains!2990 l!3627 elmt!170) lt!541386)))

(declare-fun b!1563500 () Bool)

(declare-fun e!1004079 () Bool)

(assert (=> b!1563500 (= e!1004080 e!1004079)))

(declare-fun res!696907 () Bool)

(assert (=> b!1563500 (=> res!696907 e!1004079)))

(assert (=> b!1563500 (= res!696907 (= (h!22370 l!3627) elmt!170))))

(declare-fun b!1563501 () Bool)

(assert (=> b!1563501 (= e!1004079 (contains!2990 (t!141618 l!3627) elmt!170))))

(assert (= (and d!462971 res!696906) b!1563500))

(assert (= (and b!1563500 (not res!696907)) b!1563501))

(declare-fun m!1834837 () Bool)

(assert (=> d!462971 m!1834837))

(declare-fun m!1834839 () Bool)

(assert (=> d!462971 m!1834839))

(assert (=> b!1563501 m!1834823))

(assert (=> b!1563488 d!462971))

(declare-fun d!462975 () Bool)

(declare-fun res!696922 () Bool)

(declare-fun e!1004097 () Bool)

(assert (=> d!462975 (=> res!696922 e!1004097)))

(assert (=> d!462975 (= res!696922 ((_ is Nil!16969) l!3627))))

(assert (=> d!462975 (= (noDuplicate!232 l!3627) e!1004097)))

(declare-fun b!1563520 () Bool)

(declare-fun e!1004098 () Bool)

(assert (=> b!1563520 (= e!1004097 e!1004098)))

(declare-fun res!696923 () Bool)

(assert (=> b!1563520 (=> (not res!696923) (not e!1004098))))

(assert (=> b!1563520 (= res!696923 (not (contains!2990 (t!141618 l!3627) (h!22370 l!3627))))))

(declare-fun b!1563521 () Bool)

(assert (=> b!1563521 (= e!1004098 (noDuplicate!232 (t!141618 l!3627)))))

(assert (= (and d!462975 (not res!696922)) b!1563520))

(assert (= (and b!1563520 res!696923) b!1563521))

(declare-fun m!1834851 () Bool)

(assert (=> b!1563520 m!1834851))

(assert (=> b!1563521 m!1834829))

(assert (=> start!145260 d!462975))

(declare-fun d!462981 () Bool)

(declare-fun res!696924 () Bool)

(declare-fun e!1004100 () Bool)

(assert (=> d!462981 (=> res!696924 e!1004100)))

(assert (=> d!462981 (= res!696924 ((_ is Nil!16969) (t!141618 l!3627)))))

(assert (=> d!462981 (= (noDuplicate!232 (t!141618 l!3627)) e!1004100)))

(declare-fun b!1563523 () Bool)

(declare-fun e!1004101 () Bool)

(assert (=> b!1563523 (= e!1004100 e!1004101)))

(declare-fun res!696925 () Bool)

(assert (=> b!1563523 (=> (not res!696925) (not e!1004101))))

(assert (=> b!1563523 (= res!696925 (not (contains!2990 (t!141618 (t!141618 l!3627)) (h!22370 (t!141618 l!3627)))))))

(declare-fun b!1563524 () Bool)

(assert (=> b!1563524 (= e!1004101 (noDuplicate!232 (t!141618 (t!141618 l!3627))))))

(assert (= (and d!462981 (not res!696924)) b!1563523))

(assert (= (and b!1563523 res!696925) b!1563524))

(declare-fun m!1834853 () Bool)

(assert (=> b!1563523 m!1834853))

(declare-fun m!1834855 () Bool)

(assert (=> b!1563524 m!1834855))

(assert (=> b!1563489 d!462981))

(declare-fun d!462983 () Bool)

(declare-fun lt!541388 () Bool)

(assert (=> d!462983 (= lt!541388 (select (content!2350 (t!141618 l!3627)) elmt!170))))

(declare-fun e!1004103 () Bool)

(assert (=> d!462983 (= lt!541388 e!1004103)))

(declare-fun res!696926 () Bool)

(assert (=> d!462983 (=> (not res!696926) (not e!1004103))))

(assert (=> d!462983 (= res!696926 ((_ is Cons!16969) (t!141618 l!3627)))))

(assert (=> d!462983 (= (contains!2990 (t!141618 l!3627) elmt!170) lt!541388)))

(declare-fun b!1563525 () Bool)

(declare-fun e!1004102 () Bool)

(assert (=> b!1563525 (= e!1004103 e!1004102)))

(declare-fun res!696927 () Bool)

(assert (=> b!1563525 (=> res!696927 e!1004102)))

(assert (=> b!1563525 (= res!696927 (= (h!22370 (t!141618 l!3627)) elmt!170))))

(declare-fun b!1563526 () Bool)

(assert (=> b!1563526 (= e!1004102 (contains!2990 (t!141618 (t!141618 l!3627)) elmt!170))))

(assert (= (and d!462983 res!696926) b!1563525))

(assert (= (and b!1563525 (not res!696927)) b!1563526))

(declare-fun m!1834857 () Bool)

(assert (=> d!462983 m!1834857))

(declare-fun m!1834859 () Bool)

(assert (=> d!462983 m!1834859))

(declare-fun m!1834861 () Bool)

(assert (=> b!1563526 m!1834861))

(assert (=> b!1563486 d!462983))

(declare-fun b!1563531 () Bool)

(declare-fun e!1004106 () Bool)

(declare-fun tp!460582 () Bool)

(assert (=> b!1563531 (= e!1004106 (and tp_is_empty!7113 tp!460582))))

(assert (=> b!1563487 (= tp!460576 e!1004106)))

(assert (= (and b!1563487 ((_ is Cons!16969) (t!141618 l!3627))) b!1563531))

(check-sat (not b!1563501) tp_is_empty!7113 (not d!462983) (not b!1563524) (not b!1563521) (not b!1563520) (not d!462971) (not b!1563531) (not b!1563523) (not b!1563526))
(check-sat)
