; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252440 () Bool)

(assert start!252440)

(declare-fun b!2599149 () Bool)

(declare-fun e!1640563 () Bool)

(declare-datatypes ((B!2321 0))(
  ( (B!2322 (val!9628 Int)) )
))
(declare-datatypes ((List!30061 0))(
  ( (Nil!29961) (Cons!29961 (h!35381 B!2321) (t!213074 List!30061)) )
))
(declare-fun l!3217 () List!30061)

(declare-fun e!9312 () B!2321)

(declare-fun contains!5509 (List!30061 B!2321) Bool)

(assert (=> b!2599149 (= e!1640563 (contains!5509 (t!213074 l!3217) e!9312))))

(declare-fun b!2599150 () Bool)

(declare-fun e!1640562 () Bool)

(declare-fun tp_is_empty!13601 () Bool)

(declare-fun tp!823618 () Bool)

(assert (=> b!2599150 (= e!1640562 (and tp_is_empty!13601 tp!823618))))

(declare-fun b!2599152 () Bool)

(declare-fun res!1094548 () Bool)

(assert (=> b!2599152 (=> (not res!1094548) (not e!1640563))))

(assert (=> b!2599152 (= res!1094548 (contains!5509 l!3217 e!9312))))

(declare-fun b!2599153 () Bool)

(declare-fun res!1094546 () Bool)

(assert (=> b!2599153 (=> (not res!1094546) (not e!1640563))))

(declare-fun head!5906 (List!30061) B!2321)

(assert (=> b!2599153 (= res!1094546 (= (head!5906 l!3217) e!9312))))

(declare-fun b!2599151 () Bool)

(declare-fun res!1094547 () Bool)

(assert (=> b!2599151 (=> (not res!1094547) (not e!1640563))))

(get-info :version)

(assert (=> b!2599151 (= res!1094547 (and ((_ is Cons!29961) l!3217) (= (h!35381 l!3217) e!9312)))))

(declare-fun res!1094549 () Bool)

(assert (=> start!252440 (=> (not res!1094549) (not e!1640563))))

(declare-fun noDuplicate!509 (List!30061) Bool)

(assert (=> start!252440 (= res!1094549 (noDuplicate!509 l!3217))))

(assert (=> start!252440 e!1640563))

(assert (=> start!252440 e!1640562))

(assert (=> start!252440 tp_is_empty!13601))

(assert (= (and start!252440 res!1094549) b!2599152))

(assert (= (and b!2599152 res!1094548) b!2599153))

(assert (= (and b!2599153 res!1094546) b!2599151))

(assert (= (and b!2599151 res!1094547) b!2599149))

(assert (= (and start!252440 ((_ is Cons!29961) l!3217)) b!2599150))

(declare-fun m!2934973 () Bool)

(assert (=> b!2599149 m!2934973))

(declare-fun m!2934975 () Bool)

(assert (=> b!2599152 m!2934975))

(declare-fun m!2934977 () Bool)

(assert (=> b!2599153 m!2934977))

(declare-fun m!2934979 () Bool)

(assert (=> start!252440 m!2934979))

(check-sat tp_is_empty!13601 (not b!2599150) (not b!2599153) (not b!2599149) (not b!2599152) (not start!252440))
(check-sat)
(get-model)

(declare-fun d!736438 () Bool)

(declare-fun lt!915085 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4236 (List!30061) (InoxSet B!2321))

(assert (=> d!736438 (= lt!915085 (select (content!4236 (t!213074 l!3217)) e!9312))))

(declare-fun e!1640575 () Bool)

(assert (=> d!736438 (= lt!915085 e!1640575)))

(declare-fun res!1094560 () Bool)

(assert (=> d!736438 (=> (not res!1094560) (not e!1640575))))

(assert (=> d!736438 (= res!1094560 ((_ is Cons!29961) (t!213074 l!3217)))))

(assert (=> d!736438 (= (contains!5509 (t!213074 l!3217) e!9312) lt!915085)))

(declare-fun b!2599164 () Bool)

(declare-fun e!1640574 () Bool)

(assert (=> b!2599164 (= e!1640575 e!1640574)))

(declare-fun res!1094561 () Bool)

(assert (=> b!2599164 (=> res!1094561 e!1640574)))

(assert (=> b!2599164 (= res!1094561 (= (h!35381 (t!213074 l!3217)) e!9312))))

(declare-fun b!2599165 () Bool)

(assert (=> b!2599165 (= e!1640574 (contains!5509 (t!213074 (t!213074 l!3217)) e!9312))))

(assert (= (and d!736438 res!1094560) b!2599164))

(assert (= (and b!2599164 (not res!1094561)) b!2599165))

(declare-fun m!2934987 () Bool)

(assert (=> d!736438 m!2934987))

(declare-fun m!2934989 () Bool)

(assert (=> d!736438 m!2934989))

(declare-fun m!2934991 () Bool)

(assert (=> b!2599165 m!2934991))

(assert (=> b!2599149 d!736438))

(declare-fun d!736444 () Bool)

(assert (=> d!736444 (= (head!5906 l!3217) (h!35381 l!3217))))

(assert (=> b!2599153 d!736444))

(declare-fun d!736446 () Bool)

(declare-fun lt!915086 () Bool)

(assert (=> d!736446 (= lt!915086 (select (content!4236 l!3217) e!9312))))

(declare-fun e!1640581 () Bool)

(assert (=> d!736446 (= lt!915086 e!1640581)))

(declare-fun res!1094566 () Bool)

(assert (=> d!736446 (=> (not res!1094566) (not e!1640581))))

(assert (=> d!736446 (= res!1094566 ((_ is Cons!29961) l!3217))))

(assert (=> d!736446 (= (contains!5509 l!3217 e!9312) lt!915086)))

(declare-fun b!2599170 () Bool)

(declare-fun e!1640580 () Bool)

(assert (=> b!2599170 (= e!1640581 e!1640580)))

(declare-fun res!1094567 () Bool)

(assert (=> b!2599170 (=> res!1094567 e!1640580)))

(assert (=> b!2599170 (= res!1094567 (= (h!35381 l!3217) e!9312))))

(declare-fun b!2599171 () Bool)

(assert (=> b!2599171 (= e!1640580 (contains!5509 (t!213074 l!3217) e!9312))))

(assert (= (and d!736446 res!1094566) b!2599170))

(assert (= (and b!2599170 (not res!1094567)) b!2599171))

(declare-fun m!2934993 () Bool)

(assert (=> d!736446 m!2934993))

(declare-fun m!2934995 () Bool)

(assert (=> d!736446 m!2934995))

(assert (=> b!2599171 m!2934973))

(assert (=> b!2599152 d!736446))

(declare-fun d!736448 () Bool)

(declare-fun res!1094576 () Bool)

(declare-fun e!1640593 () Bool)

(assert (=> d!736448 (=> res!1094576 e!1640593)))

(assert (=> d!736448 (= res!1094576 ((_ is Nil!29961) l!3217))))

(assert (=> d!736448 (= (noDuplicate!509 l!3217) e!1640593)))

(declare-fun b!2599185 () Bool)

(declare-fun e!1640594 () Bool)

(assert (=> b!2599185 (= e!1640593 e!1640594)))

(declare-fun res!1094577 () Bool)

(assert (=> b!2599185 (=> (not res!1094577) (not e!1640594))))

(assert (=> b!2599185 (= res!1094577 (not (contains!5509 (t!213074 l!3217) (h!35381 l!3217))))))

(declare-fun b!2599186 () Bool)

(assert (=> b!2599186 (= e!1640594 (noDuplicate!509 (t!213074 l!3217)))))

(assert (= (and d!736448 (not res!1094576)) b!2599185))

(assert (= (and b!2599185 res!1094577) b!2599186))

(declare-fun m!2935005 () Bool)

(assert (=> b!2599185 m!2935005))

(declare-fun m!2935007 () Bool)

(assert (=> b!2599186 m!2935007))

(assert (=> start!252440 d!736448))

(declare-fun b!2599191 () Bool)

(declare-fun e!1640597 () Bool)

(declare-fun tp!823624 () Bool)

(assert (=> b!2599191 (= e!1640597 (and tp_is_empty!13601 tp!823624))))

(assert (=> b!2599150 (= tp!823618 e!1640597)))

(assert (= (and b!2599150 ((_ is Cons!29961) (t!213074 l!3217))) b!2599191))

(check-sat tp_is_empty!13601 (not d!736438) (not b!2599191) (not d!736446) (not b!2599186) (not b!2599185) (not b!2599171) (not b!2599165))
(check-sat)
