; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230060 () Bool)

(assert start!230060)

(declare-fun b!2329160 () Bool)

(declare-fun res!994449 () Bool)

(declare-fun e!1492353 () Bool)

(assert (=> b!2329160 (=> (not res!994449) (not e!1492353))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((B!1837 0))(
  ( (B!1838 (val!8052 Int)) )
))
(declare-fun s!1517 () (InoxSet B!1837))

(declare-datatypes ((List!27916 0))(
  ( (Nil!27818) (Cons!27818 (h!33219 B!1837) (t!207686 List!27916)) )
))
(declare-fun l!3834 () List!27916)

(declare-fun toList!1411 ((InoxSet B!1837)) List!27916)

(assert (=> b!2329160 (= res!994449 (= (toList!1411 s!1517) l!3834))))

(declare-fun res!994448 () Bool)

(assert (=> start!230060 (=> (not res!994448) (not e!1492353))))

(declare-fun noDuplicate!315 (List!27916) Bool)

(assert (=> start!230060 (= res!994448 (noDuplicate!315 l!3834))))

(assert (=> start!230060 e!1492353))

(declare-fun e!1492352 () Bool)

(assert (=> start!230060 e!1492352))

(declare-fun condSetEmpty!20914 () Bool)

(assert (=> start!230060 (= condSetEmpty!20914 (= s!1517 ((as const (Array B!1837 Bool)) false)))))

(declare-fun setRes!20914 () Bool)

(assert (=> start!230060 setRes!20914))

(declare-fun b!2329161 () Bool)

(declare-fun tp_is_empty!10937 () Bool)

(declare-fun tp!738138 () Bool)

(assert (=> b!2329161 (= e!1492352 (and tp_is_empty!10937 tp!738138))))

(declare-fun b!2329162 () Bool)

(assert (=> b!2329162 (= e!1492353 (= l!3834 Nil!27818))))

(declare-fun setIsEmpty!20914 () Bool)

(assert (=> setIsEmpty!20914 setRes!20914))

(declare-fun b!2329163 () Bool)

(declare-fun res!994450 () Bool)

(assert (=> b!2329163 (=> (not res!994450) (not e!1492353))))

(declare-fun isEmpty!15842 (List!27916) Bool)

(assert (=> b!2329163 (= res!994450 (not (isEmpty!15842 l!3834)))))

(declare-fun setNonEmpty!20914 () Bool)

(declare-fun tp!738139 () Bool)

(assert (=> setNonEmpty!20914 (= setRes!20914 (and tp!738139 tp_is_empty!10937))))

(declare-fun setElem!20914 () B!1837)

(declare-fun setRest!20914 () (InoxSet B!1837))

(assert (=> setNonEmpty!20914 (= s!1517 ((_ map or) (store ((as const (Array B!1837 Bool)) false) setElem!20914 true) setRest!20914))))

(assert (= (and start!230060 res!994448) b!2329160))

(assert (= (and b!2329160 res!994449) b!2329163))

(assert (= (and b!2329163 res!994450) b!2329162))

(get-info :version)

(assert (= (and start!230060 ((_ is Cons!27818) l!3834)) b!2329161))

(assert (= (and start!230060 condSetEmpty!20914) setIsEmpty!20914))

(assert (= (and start!230060 (not condSetEmpty!20914)) setNonEmpty!20914))

(declare-fun m!2759419 () Bool)

(assert (=> b!2329160 m!2759419))

(declare-fun m!2759421 () Bool)

(assert (=> start!230060 m!2759421))

(declare-fun m!2759423 () Bool)

(assert (=> b!2329163 m!2759423))

(check-sat (not b!2329160) (not b!2329163) (not start!230060) (not b!2329161) (not setNonEmpty!20914) tp_is_empty!10937)
(check-sat)
(get-model)

(declare-fun d!689508 () Bool)

(assert (=> d!689508 (= (isEmpty!15842 l!3834) ((_ is Nil!27818) l!3834))))

(assert (=> b!2329163 d!689508))

(declare-fun d!689510 () Bool)

(declare-fun e!1492362 () Bool)

(assert (=> d!689510 e!1492362))

(declare-fun res!994459 () Bool)

(assert (=> d!689510 (=> (not res!994459) (not e!1492362))))

(declare-fun lt!862080 () List!27916)

(assert (=> d!689510 (= res!994459 (noDuplicate!315 lt!862080))))

(declare-fun choose!13623 ((InoxSet B!1837)) List!27916)

(assert (=> d!689510 (= lt!862080 (choose!13623 s!1517))))

(assert (=> d!689510 (= (toList!1411 s!1517) lt!862080)))

(declare-fun b!2329172 () Bool)

(declare-fun content!3761 (List!27916) (InoxSet B!1837))

(assert (=> b!2329172 (= e!1492362 (= (content!3761 lt!862080) s!1517))))

(assert (= (and d!689510 res!994459) b!2329172))

(declare-fun m!2759429 () Bool)

(assert (=> d!689510 m!2759429))

(declare-fun m!2759431 () Bool)

(assert (=> d!689510 m!2759431))

(declare-fun m!2759433 () Bool)

(assert (=> b!2329172 m!2759433))

(assert (=> b!2329160 d!689510))

(declare-fun d!689514 () Bool)

(declare-fun res!994467 () Bool)

(declare-fun e!1492373 () Bool)

(assert (=> d!689514 (=> res!994467 e!1492373)))

(assert (=> d!689514 (= res!994467 ((_ is Nil!27818) l!3834))))

(assert (=> d!689514 (= (noDuplicate!315 l!3834) e!1492373)))

(declare-fun b!2329187 () Bool)

(declare-fun e!1492374 () Bool)

(assert (=> b!2329187 (= e!1492373 e!1492374)))

(declare-fun res!994468 () Bool)

(assert (=> b!2329187 (=> (not res!994468) (not e!1492374))))

(declare-fun contains!4809 (List!27916 B!1837) Bool)

(assert (=> b!2329187 (= res!994468 (not (contains!4809 (t!207686 l!3834) (h!33219 l!3834))))))

(declare-fun b!2329188 () Bool)

(assert (=> b!2329188 (= e!1492374 (noDuplicate!315 (t!207686 l!3834)))))

(assert (= (and d!689514 (not res!994467)) b!2329187))

(assert (= (and b!2329187 res!994468) b!2329188))

(declare-fun m!2759441 () Bool)

(assert (=> b!2329187 m!2759441))

(declare-fun m!2759443 () Bool)

(assert (=> b!2329188 m!2759443))

(assert (=> start!230060 d!689514))

(declare-fun b!2329193 () Bool)

(declare-fun e!1492377 () Bool)

(declare-fun tp!738148 () Bool)

(assert (=> b!2329193 (= e!1492377 (and tp_is_empty!10937 tp!738148))))

(assert (=> b!2329161 (= tp!738138 e!1492377)))

(assert (= (and b!2329161 ((_ is Cons!27818) (t!207686 l!3834))) b!2329193))

(declare-fun condSetEmpty!20920 () Bool)

(assert (=> setNonEmpty!20914 (= condSetEmpty!20920 (= setRest!20914 ((as const (Array B!1837 Bool)) false)))))

(declare-fun setRes!20920 () Bool)

(assert (=> setNonEmpty!20914 (= tp!738139 setRes!20920)))

(declare-fun setIsEmpty!20920 () Bool)

(assert (=> setIsEmpty!20920 setRes!20920))

(declare-fun setNonEmpty!20920 () Bool)

(declare-fun tp!738151 () Bool)

(assert (=> setNonEmpty!20920 (= setRes!20920 (and tp!738151 tp_is_empty!10937))))

(declare-fun setElem!20920 () B!1837)

(declare-fun setRest!20920 () (InoxSet B!1837))

(assert (=> setNonEmpty!20920 (= setRest!20914 ((_ map or) (store ((as const (Array B!1837 Bool)) false) setElem!20920 true) setRest!20920))))

(assert (= (and setNonEmpty!20914 condSetEmpty!20920) setIsEmpty!20920))

(assert (= (and setNonEmpty!20914 (not condSetEmpty!20920)) setNonEmpty!20920))

(check-sat (not b!2329187) (not b!2329188) (not b!2329172) (not d!689510) (not b!2329193) (not setNonEmpty!20920) tp_is_empty!10937)
(check-sat)
