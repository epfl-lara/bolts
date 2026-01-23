; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251272 () Bool)

(assert start!251272)

(declare-fun b!2592542 () Bool)

(declare-fun res!1090389 () Bool)

(declare-fun e!1635576 () Bool)

(assert (=> b!2592542 (=> (not res!1090389) (not e!1635576))))

(declare-datatypes ((B!2069 0))(
  ( (B!2070 (val!9502 Int)) )
))
(declare-datatypes ((List!29935 0))(
  ( (Nil!29835) (Cons!29835 (h!35255 B!2069) (t!212948 List!29935)) )
))
(declare-fun l!3230 () List!29935)

(get-info :version)

(assert (=> b!2592542 (= res!1090389 ((_ is Cons!29835) l!3230))))

(declare-fun res!1090387 () Bool)

(assert (=> start!251272 (=> (not res!1090387) (not e!1635576))))

(declare-fun noDuplicate!383 (List!29935) Bool)

(assert (=> start!251272 (= res!1090387 (noDuplicate!383 l!3230))))

(assert (=> start!251272 e!1635576))

(declare-fun e!1635575 () Bool)

(assert (=> start!251272 e!1635575))

(declare-fun b!2592543 () Bool)

(declare-fun e!1635578 () Bool)

(declare-fun e!1635577 () Bool)

(assert (=> b!2592543 (= e!1635578 e!1635577)))

(declare-fun res!1090390 () Bool)

(assert (=> b!2592543 (=> res!1090390 e!1635577)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!912208 () (InoxSet B!2069))

(declare-fun content!4170 (List!29935) (InoxSet B!2069))

(assert (=> b!2592543 (= res!1090390 (not (= (content!4170 l!3230) lt!912208)))))

(declare-fun lt!912215 () (InoxSet B!2069))

(assert (=> b!2592543 (= lt!912208 ((_ map or) lt!912215 (store ((as const (Array B!2069 Bool)) false) (h!35255 l!3230) true)))))

(declare-fun b!2592544 () Bool)

(declare-fun tp_is_empty!13349 () Bool)

(declare-fun tp!822800 () Bool)

(assert (=> b!2592544 (= e!1635575 (and tp_is_empty!13349 tp!822800))))

(declare-fun b!2592545 () Bool)

(declare-fun res!1090394 () Bool)

(declare-fun e!1635573 () Bool)

(assert (=> b!2592545 (=> res!1090394 e!1635573)))

(declare-fun contains!5385 (List!29935 B!2069) Bool)

(assert (=> b!2592545 (= res!1090394 (contains!5385 (t!212948 l!3230) (h!35255 l!3230)))))

(declare-fun b!2592546 () Bool)

(declare-fun res!1090392 () Bool)

(declare-fun e!1635574 () Bool)

(assert (=> b!2592546 (=> res!1090392 e!1635574)))

(assert (=> b!2592546 (= res!1090392 (not (= lt!912208 (content!4170 l!3230))))))

(declare-fun b!2592547 () Bool)

(declare-fun e!1635579 () Bool)

(declare-fun lt!912212 () Int)

(declare-fun lt!912210 () Int)

(assert (=> b!2592547 (= e!1635579 (> lt!912212 lt!912210))))

(declare-fun b!2592548 () Bool)

(assert (=> b!2592548 (= e!1635576 (not e!1635573))))

(declare-fun res!1090393 () Bool)

(assert (=> b!2592548 (=> res!1090393 e!1635573)))

(declare-fun lt!912206 () Int)

(assert (=> b!2592548 (= res!1090393 (or (>= lt!912206 lt!912212) (select lt!912215 (h!35255 l!3230))))))

(declare-fun size!23142 (List!29935) Int)

(assert (=> b!2592548 (= lt!912212 (size!23142 l!3230))))

(declare-fun lt!912211 () Int)

(assert (=> b!2592548 (= lt!912206 lt!912211)))

(assert (=> b!2592548 (= lt!912211 (size!23142 (t!212948 l!3230)))))

(declare-fun toList!1780 ((InoxSet B!2069)) List!29935)

(assert (=> b!2592548 (= lt!912206 (size!23142 (toList!1780 lt!912215)))))

(assert (=> b!2592548 (= lt!912215 (content!4170 (t!212948 l!3230)))))

(declare-datatypes ((Unit!43799 0))(
  ( (Unit!43800) )
))
(declare-fun lt!912207 () Unit!43799)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!70 (List!29935) Unit!43799)

(assert (=> b!2592548 (= lt!912207 (lemmaNoDuplicateThenContentToListSameSize!70 (t!212948 l!3230)))))

(declare-fun b!2592549 () Bool)

(assert (=> b!2592549 (= e!1635577 e!1635574)))

(declare-fun res!1090395 () Bool)

(assert (=> b!2592549 (=> res!1090395 e!1635574)))

(declare-fun lt!912209 () Int)

(assert (=> b!2592549 (= res!1090395 (>= lt!912210 lt!912209))))

(declare-fun lt!912214 () List!29935)

(assert (=> b!2592549 (= lt!912210 (size!23142 lt!912214))))

(assert (=> b!2592549 (= lt!912214 (toList!1780 lt!912208))))

(declare-fun b!2592550 () Bool)

(assert (=> b!2592550 (= e!1635574 e!1635579)))

(declare-fun res!1090391 () Bool)

(assert (=> b!2592550 (=> res!1090391 e!1635579)))

(assert (=> b!2592550 (= res!1090391 (not (noDuplicate!383 lt!912214)))))

(declare-fun lt!912213 () Unit!43799)

(declare-fun subsetContains!58 (List!29935 List!29935) Unit!43799)

(assert (=> b!2592550 (= lt!912213 (subsetContains!58 lt!912214 l!3230))))

(declare-fun b!2592551 () Bool)

(assert (=> b!2592551 (= e!1635573 e!1635578)))

(declare-fun res!1090388 () Bool)

(assert (=> b!2592551 (=> res!1090388 e!1635578)))

(assert (=> b!2592551 (= res!1090388 (not (= (size!23142 l!3230) lt!912209)))))

(assert (=> b!2592551 (= lt!912209 (+ 1 lt!912211))))

(assert (= (and start!251272 res!1090387) b!2592542))

(assert (= (and b!2592542 res!1090389) b!2592548))

(assert (= (and b!2592548 (not res!1090393)) b!2592545))

(assert (= (and b!2592545 (not res!1090394)) b!2592551))

(assert (= (and b!2592551 (not res!1090388)) b!2592543))

(assert (= (and b!2592543 (not res!1090390)) b!2592549))

(assert (= (and b!2592549 (not res!1090395)) b!2592546))

(assert (= (and b!2592546 (not res!1090392)) b!2592550))

(assert (= (and b!2592550 (not res!1090391)) b!2592547))

(assert (= (and start!251272 ((_ is Cons!29835) l!3230)) b!2592544))

(declare-fun m!2928591 () Bool)

(assert (=> b!2592548 m!2928591))

(declare-fun m!2928593 () Bool)

(assert (=> b!2592548 m!2928593))

(declare-fun m!2928595 () Bool)

(assert (=> b!2592548 m!2928595))

(declare-fun m!2928597 () Bool)

(assert (=> b!2592548 m!2928597))

(declare-fun m!2928599 () Bool)

(assert (=> b!2592548 m!2928599))

(assert (=> b!2592548 m!2928593))

(declare-fun m!2928601 () Bool)

(assert (=> b!2592548 m!2928601))

(declare-fun m!2928603 () Bool)

(assert (=> b!2592548 m!2928603))

(declare-fun m!2928605 () Bool)

(assert (=> b!2592543 m!2928605))

(declare-fun m!2928607 () Bool)

(assert (=> b!2592543 m!2928607))

(declare-fun m!2928609 () Bool)

(assert (=> b!2592550 m!2928609))

(declare-fun m!2928611 () Bool)

(assert (=> b!2592550 m!2928611))

(declare-fun m!2928613 () Bool)

(assert (=> b!2592545 m!2928613))

(assert (=> b!2592551 m!2928591))

(declare-fun m!2928615 () Bool)

(assert (=> start!251272 m!2928615))

(assert (=> b!2592546 m!2928605))

(declare-fun m!2928617 () Bool)

(assert (=> b!2592549 m!2928617))

(declare-fun m!2928619 () Bool)

(assert (=> b!2592549 m!2928619))

(check-sat (not b!2592548) (not b!2592549) (not b!2592543) (not start!251272) tp_is_empty!13349 (not b!2592551) (not b!2592544) (not b!2592546) (not b!2592545) (not b!2592550))
(check-sat)
