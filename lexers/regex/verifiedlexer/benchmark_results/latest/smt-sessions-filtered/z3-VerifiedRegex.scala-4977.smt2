; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252460 () Bool)

(assert start!252460)

(declare-fun b!2599258 () Bool)

(declare-fun e!1640621 () Bool)

(declare-fun tp_is_empty!13609 () Bool)

(declare-fun tp!823636 () Bool)

(assert (=> b!2599258 (= e!1640621 (and tp_is_empty!13609 tp!823636))))

(declare-fun b!2599259 () Bool)

(declare-fun e!1640620 () Bool)

(declare-datatypes ((B!2329 0))(
  ( (B!2330 (val!9632 Int)) )
))
(declare-datatypes ((List!30065 0))(
  ( (Nil!29965) (Cons!29965 (h!35385 B!2329) (t!213078 List!30065)) )
))
(declare-fun l!3217 () List!30065)

(declare-fun noDuplicate!513 (List!30065) Bool)

(assert (=> b!2599259 (= e!1640620 (not (noDuplicate!513 (t!213078 l!3217))))))

(declare-fun b!2599260 () Bool)

(declare-fun res!1094635 () Bool)

(assert (=> b!2599260 (=> (not res!1094635) (not e!1640620))))

(declare-fun e!9312 () B!2329)

(declare-fun contains!5513 (List!30065 B!2329) Bool)

(assert (=> b!2599260 (= res!1094635 (not (contains!5513 (t!213078 l!3217) e!9312)))))

(declare-fun b!2599261 () Bool)

(declare-fun res!1094637 () Bool)

(assert (=> b!2599261 (=> (not res!1094637) (not e!1640620))))

(declare-fun head!5910 (List!30065) B!2329)

(assert (=> b!2599261 (= res!1094637 (= (head!5910 l!3217) e!9312))))

(declare-fun b!2599262 () Bool)

(declare-fun res!1094634 () Bool)

(assert (=> b!2599262 (=> (not res!1094634) (not e!1640620))))

(assert (=> b!2599262 (= res!1094634 (contains!5513 l!3217 e!9312))))

(declare-fun res!1094633 () Bool)

(assert (=> start!252460 (=> (not res!1094633) (not e!1640620))))

(assert (=> start!252460 (= res!1094633 (noDuplicate!513 l!3217))))

(assert (=> start!252460 e!1640620))

(assert (=> start!252460 e!1640621))

(assert (=> start!252460 tp_is_empty!13609))

(declare-fun b!2599263 () Bool)

(declare-fun res!1094636 () Bool)

(assert (=> b!2599263 (=> (not res!1094636) (not e!1640620))))

(get-info :version)

(assert (=> b!2599263 (= res!1094636 (and ((_ is Cons!29965) l!3217) (= (h!35385 l!3217) e!9312)))))

(assert (= (and start!252460 res!1094633) b!2599262))

(assert (= (and b!2599262 res!1094634) b!2599261))

(assert (= (and b!2599261 res!1094637) b!2599263))

(assert (= (and b!2599263 res!1094636) b!2599260))

(assert (= (and b!2599260 res!1094635) b!2599259))

(assert (= (and start!252460 ((_ is Cons!29965) l!3217)) b!2599258))

(declare-fun m!2935043 () Bool)

(assert (=> b!2599260 m!2935043))

(declare-fun m!2935045 () Bool)

(assert (=> start!252460 m!2935045))

(declare-fun m!2935047 () Bool)

(assert (=> b!2599261 m!2935047))

(declare-fun m!2935049 () Bool)

(assert (=> b!2599262 m!2935049))

(declare-fun m!2935051 () Bool)

(assert (=> b!2599259 m!2935051))

(check-sat (not b!2599261) tp_is_empty!13609 (not b!2599259) (not b!2599258) (not start!252460) (not b!2599262) (not b!2599260))
(check-sat)
(get-model)

(declare-fun d!736456 () Bool)

(declare-fun res!1094648 () Bool)

(declare-fun e!1640632 () Bool)

(assert (=> d!736456 (=> res!1094648 e!1640632)))

(assert (=> d!736456 (= res!1094648 ((_ is Nil!29965) (t!213078 l!3217)))))

(assert (=> d!736456 (= (noDuplicate!513 (t!213078 l!3217)) e!1640632)))

(declare-fun b!2599274 () Bool)

(declare-fun e!1640633 () Bool)

(assert (=> b!2599274 (= e!1640632 e!1640633)))

(declare-fun res!1094649 () Bool)

(assert (=> b!2599274 (=> (not res!1094649) (not e!1640633))))

(assert (=> b!2599274 (= res!1094649 (not (contains!5513 (t!213078 (t!213078 l!3217)) (h!35385 (t!213078 l!3217)))))))

(declare-fun b!2599275 () Bool)

(assert (=> b!2599275 (= e!1640633 (noDuplicate!513 (t!213078 (t!213078 l!3217))))))

(assert (= (and d!736456 (not res!1094648)) b!2599274))

(assert (= (and b!2599274 res!1094649) b!2599275))

(declare-fun m!2935059 () Bool)

(assert (=> b!2599274 m!2935059))

(declare-fun m!2935061 () Bool)

(assert (=> b!2599275 m!2935061))

(assert (=> b!2599259 d!736456))

(declare-fun d!736460 () Bool)

(assert (=> d!736460 (= (head!5910 l!3217) (h!35385 l!3217))))

(assert (=> b!2599261 d!736460))

(declare-fun d!736462 () Bool)

(declare-fun lt!915106 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4238 (List!30065) (InoxSet B!2329))

(assert (=> d!736462 (= lt!915106 (select (content!4238 (t!213078 l!3217)) e!9312))))

(declare-fun e!1640650 () Bool)

(assert (=> d!736462 (= lt!915106 e!1640650)))

(declare-fun res!1094664 () Bool)

(assert (=> d!736462 (=> (not res!1094664) (not e!1640650))))

(assert (=> d!736462 (= res!1094664 ((_ is Cons!29965) (t!213078 l!3217)))))

(assert (=> d!736462 (= (contains!5513 (t!213078 l!3217) e!9312) lt!915106)))

(declare-fun b!2599294 () Bool)

(declare-fun e!1640651 () Bool)

(assert (=> b!2599294 (= e!1640650 e!1640651)))

(declare-fun res!1094665 () Bool)

(assert (=> b!2599294 (=> res!1094665 e!1640651)))

(assert (=> b!2599294 (= res!1094665 (= (h!35385 (t!213078 l!3217)) e!9312))))

(declare-fun b!2599295 () Bool)

(assert (=> b!2599295 (= e!1640651 (contains!5513 (t!213078 (t!213078 l!3217)) e!9312))))

(assert (= (and d!736462 res!1094664) b!2599294))

(assert (= (and b!2599294 (not res!1094665)) b!2599295))

(declare-fun m!2935073 () Bool)

(assert (=> d!736462 m!2935073))

(declare-fun m!2935075 () Bool)

(assert (=> d!736462 m!2935075))

(declare-fun m!2935077 () Bool)

(assert (=> b!2599295 m!2935077))

(assert (=> b!2599260 d!736462))

(declare-fun d!736470 () Bool)

(declare-fun lt!915107 () Bool)

(assert (=> d!736470 (= lt!915107 (select (content!4238 l!3217) e!9312))))

(declare-fun e!1640653 () Bool)

(assert (=> d!736470 (= lt!915107 e!1640653)))

(declare-fun res!1094666 () Bool)

(assert (=> d!736470 (=> (not res!1094666) (not e!1640653))))

(assert (=> d!736470 (= res!1094666 ((_ is Cons!29965) l!3217))))

(assert (=> d!736470 (= (contains!5513 l!3217 e!9312) lt!915107)))

(declare-fun b!2599297 () Bool)

(declare-fun e!1640654 () Bool)

(assert (=> b!2599297 (= e!1640653 e!1640654)))

(declare-fun res!1094667 () Bool)

(assert (=> b!2599297 (=> res!1094667 e!1640654)))

(assert (=> b!2599297 (= res!1094667 (= (h!35385 l!3217) e!9312))))

(declare-fun b!2599298 () Bool)

(assert (=> b!2599298 (= e!1640654 (contains!5513 (t!213078 l!3217) e!9312))))

(assert (= (and d!736470 res!1094666) b!2599297))

(assert (= (and b!2599297 (not res!1094667)) b!2599298))

(declare-fun m!2935079 () Bool)

(assert (=> d!736470 m!2935079))

(declare-fun m!2935081 () Bool)

(assert (=> d!736470 m!2935081))

(assert (=> b!2599298 m!2935043))

(assert (=> b!2599262 d!736470))

(declare-fun d!736472 () Bool)

(declare-fun res!1094668 () Bool)

(declare-fun e!1640655 () Bool)

(assert (=> d!736472 (=> res!1094668 e!1640655)))

(assert (=> d!736472 (= res!1094668 ((_ is Nil!29965) l!3217))))

(assert (=> d!736472 (= (noDuplicate!513 l!3217) e!1640655)))

(declare-fun b!2599299 () Bool)

(declare-fun e!1640656 () Bool)

(assert (=> b!2599299 (= e!1640655 e!1640656)))

(declare-fun res!1094669 () Bool)

(assert (=> b!2599299 (=> (not res!1094669) (not e!1640656))))

(assert (=> b!2599299 (= res!1094669 (not (contains!5513 (t!213078 l!3217) (h!35385 l!3217))))))

(declare-fun b!2599300 () Bool)

(assert (=> b!2599300 (= e!1640656 (noDuplicate!513 (t!213078 l!3217)))))

(assert (= (and d!736472 (not res!1094668)) b!2599299))

(assert (= (and b!2599299 res!1094669) b!2599300))

(declare-fun m!2935083 () Bool)

(assert (=> b!2599299 m!2935083))

(assert (=> b!2599300 m!2935051))

(assert (=> start!252460 d!736472))

(declare-fun b!2599305 () Bool)

(declare-fun e!1640659 () Bool)

(declare-fun tp!823642 () Bool)

(assert (=> b!2599305 (= e!1640659 (and tp_is_empty!13609 tp!823642))))

(assert (=> b!2599258 (= tp!823636 e!1640659)))

(assert (= (and b!2599258 ((_ is Cons!29965) (t!213078 l!3217))) b!2599305))

(check-sat (not b!2599275) tp_is_empty!13609 (not b!2599300) (not b!2599274) (not d!736470) (not b!2599295) (not d!736462) (not b!2599299) (not b!2599305) (not b!2599298))
(check-sat)
