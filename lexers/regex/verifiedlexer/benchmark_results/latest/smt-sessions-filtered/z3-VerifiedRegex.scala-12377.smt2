; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693128 () Bool)

(assert start!693128)

(declare-fun b_free!133613 () Bool)

(declare-fun b_next!134403 () Bool)

(assert (=> start!693128 (= b_free!133613 (not b_next!134403))))

(declare-fun tp!1960512 () Bool)

(declare-fun b_and!350661 () Bool)

(assert (=> start!693128 (= tp!1960512 b_and!350661)))

(declare-fun res!2904846 () Bool)

(declare-fun e!4278646 () Bool)

(assert (=> start!693128 (=> (not res!2904846) (not e!4278646))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!519 0))(
  ( (A!520 (val!27845 Int)) )
))
(declare-fun s!1400 () (InoxSet A!519))

(assert (=> start!693128 (= res!2904846 (= s!1400 ((as const (Array A!519 Bool)) false)))))

(assert (=> start!693128 e!4278646))

(declare-fun condSetEmpty!50693 () Bool)

(assert (=> start!693128 (= condSetEmpty!50693 (= s!1400 ((as const (Array A!519 Bool)) false)))))

(declare-fun setRes!50693 () Bool)

(assert (=> start!693128 setRes!50693))

(assert (=> start!693128 tp!1960512))

(declare-fun b!7120904 () Bool)

(declare-fun e!4278647 () Bool)

(assert (=> b!7120904 (= e!4278647 (not false))))

(declare-fun empty!2719 () A!519)

(declare-datatypes ((B!3177 0))(
  ( (B!3178 (val!27846 Int)) )
))
(declare-fun lt!2561374 () B!3177)

(declare-fun f!473 () Int)

(declare-fun mapPost2!548 ((InoxSet A!519) Int B!3177) A!519)

(assert (=> b!7120904 (= (mapPost2!548 s!1400 f!473 lt!2561374) empty!2719)))

(assert (=> b!7120904 true))

(declare-fun tp_is_empty!45235 () Bool)

(assert (=> b!7120904 tp_is_empty!45235))

(declare-fun setNonEmpty!50693 () Bool)

(declare-fun tp!1960511 () Bool)

(assert (=> setNonEmpty!50693 (= setRes!50693 (and tp!1960511 tp_is_empty!45235))))

(declare-fun setElem!50693 () A!519)

(declare-fun setRest!50693 () (InoxSet A!519))

(assert (=> setNonEmpty!50693 (= s!1400 ((_ map or) (store ((as const (Array A!519 Bool)) false) setElem!50693 true) setRest!50693))))

(declare-fun b!7120905 () Bool)

(declare-fun e!4278648 () Bool)

(assert (=> b!7120905 (= e!4278648 e!4278647)))

(declare-fun res!2904847 () Bool)

(assert (=> b!7120905 (=> (not res!2904847) (not e!4278647))))

(declare-fun lt!2561373 () (InoxSet B!3177))

(assert (=> b!7120905 (= res!2904847 (select lt!2561373 lt!2561374))))

(declare-datatypes ((List!68958 0))(
  ( (Nil!68834) (Cons!68834 (h!75282 B!3177) (t!382821 List!68958)) )
))
(declare-fun head!14456 (List!68958) B!3177)

(declare-fun toList!11061 ((InoxSet B!3177)) List!68958)

(assert (=> b!7120905 (= lt!2561374 (head!14456 (toList!11061 lt!2561373)))))

(declare-fun b!7120906 () Bool)

(assert (=> b!7120906 (= e!4278646 e!4278648)))

(declare-fun res!2904848 () Bool)

(assert (=> b!7120906 (=> (not res!2904848) (not e!4278648))))

(assert (=> b!7120906 (= res!2904848 (not (= lt!2561373 ((as const (Array B!3177 Bool)) false))))))

(declare-fun map!16335 ((InoxSet A!519) Int) (InoxSet B!3177))

(assert (=> b!7120906 (= lt!2561373 (map!16335 s!1400 f!473))))

(declare-fun setIsEmpty!50693 () Bool)

(assert (=> setIsEmpty!50693 setRes!50693))

(assert (= (and start!693128 res!2904846) b!7120906))

(assert (= (and b!7120906 res!2904848) b!7120905))

(assert (= (and b!7120905 res!2904847) b!7120904))

(assert (= (and start!693128 condSetEmpty!50693) setIsEmpty!50693))

(assert (= (and start!693128 (not condSetEmpty!50693)) setNonEmpty!50693))

(declare-fun m!7837714 () Bool)

(assert (=> b!7120904 m!7837714))

(declare-fun m!7837716 () Bool)

(assert (=> b!7120905 m!7837716))

(declare-fun m!7837718 () Bool)

(assert (=> b!7120905 m!7837718))

(assert (=> b!7120905 m!7837718))

(declare-fun m!7837720 () Bool)

(assert (=> b!7120905 m!7837720))

(declare-fun m!7837722 () Bool)

(assert (=> b!7120906 m!7837722))

(check-sat tp_is_empty!45235 (not b!7120906) b_and!350661 (not b!7120904) (not b!7120905) (not b_next!134403) (not setNonEmpty!50693))
(check-sat b_and!350661 (not b_next!134403))
(get-model)

(declare-fun d!2221974 () Bool)

(declare-fun choose!54934 ((InoxSet A!519) Int) (InoxSet B!3177))

(assert (=> d!2221974 (= (map!16335 s!1400 f!473) (choose!54934 s!1400 f!473))))

(declare-fun bs!1885906 () Bool)

(assert (= bs!1885906 d!2221974))

(declare-fun m!7837734 () Bool)

(assert (=> bs!1885906 m!7837734))

(assert (=> b!7120906 d!2221974))

(declare-fun d!2221980 () Bool)

(assert (=> d!2221980 (= (head!14456 (toList!11061 lt!2561373)) (h!75282 (toList!11061 lt!2561373)))))

(assert (=> b!7120905 d!2221980))

(declare-fun d!2221984 () Bool)

(declare-fun e!4278657 () Bool)

(assert (=> d!2221984 e!4278657))

(declare-fun res!2904857 () Bool)

(assert (=> d!2221984 (=> (not res!2904857) (not e!4278657))))

(declare-fun lt!2561383 () List!68958)

(declare-fun noDuplicate!2767 (List!68958) Bool)

(assert (=> d!2221984 (= res!2904857 (noDuplicate!2767 lt!2561383))))

(declare-fun choose!54936 ((InoxSet B!3177)) List!68958)

(assert (=> d!2221984 (= lt!2561383 (choose!54936 lt!2561373))))

(assert (=> d!2221984 (= (toList!11061 lt!2561373) lt!2561383)))

(declare-fun b!7120920 () Bool)

(declare-fun content!14065 (List!68958) (InoxSet B!3177))

(assert (=> b!7120920 (= e!4278657 (= (content!14065 lt!2561383) lt!2561373))))

(assert (= (and d!2221984 res!2904857) b!7120920))

(declare-fun m!7837742 () Bool)

(assert (=> d!2221984 m!7837742))

(declare-fun m!7837744 () Bool)

(assert (=> d!2221984 m!7837744))

(declare-fun m!7837746 () Bool)

(assert (=> b!7120920 m!7837746))

(assert (=> b!7120905 d!2221984))

(declare-fun d!2221986 () Bool)

(declare-fun e!4278660 () Bool)

(assert (=> d!2221986 e!4278660))

(declare-fun res!2904860 () Bool)

(assert (=> d!2221986 (=> (not res!2904860) (not e!4278660))))

(declare-fun lt!2561386 () A!519)

(declare-fun dynLambda!28065 (Int A!519) B!3177)

(assert (=> d!2221986 (= res!2904860 (= lt!2561374 (dynLambda!28065 f!473 lt!2561386)))))

(declare-fun choose!54937 ((InoxSet A!519) Int B!3177) A!519)

(assert (=> d!2221986 (= lt!2561386 (choose!54937 s!1400 f!473 lt!2561374))))

(assert (=> d!2221986 (select (map!16335 s!1400 f!473) lt!2561374)))

(assert (=> d!2221986 (= (mapPost2!548 s!1400 f!473 lt!2561374) lt!2561386)))

(declare-fun b!7120924 () Bool)

(assert (=> b!7120924 (= e!4278660 (select s!1400 lt!2561386))))

(assert (= (and d!2221986 res!2904860) b!7120924))

(declare-fun b_lambda!271581 () Bool)

(assert (=> (not b_lambda!271581) (not d!2221986)))

(declare-fun t!382825 () Bool)

(declare-fun tb!261955 () Bool)

(assert (=> (and start!693128 (= f!473 f!473) t!382825) tb!261955))

(declare-fun result!349050 () Bool)

(declare-fun tp_is_empty!45239 () Bool)

(assert (=> tb!261955 (= result!349050 tp_is_empty!45239)))

(assert (=> d!2221986 t!382825))

(declare-fun b_and!350665 () Bool)

(assert (= b_and!350661 (and (=> t!382825 result!349050) b_and!350665)))

(declare-fun m!7837748 () Bool)

(assert (=> d!2221986 m!7837748))

(declare-fun m!7837750 () Bool)

(assert (=> d!2221986 m!7837750))

(assert (=> d!2221986 m!7837722))

(declare-fun m!7837752 () Bool)

(assert (=> d!2221986 m!7837752))

(declare-fun m!7837754 () Bool)

(assert (=> b!7120924 m!7837754))

(assert (=> b!7120904 d!2221986))

(declare-fun condSetEmpty!50699 () Bool)

(assert (=> setNonEmpty!50693 (= condSetEmpty!50699 (= setRest!50693 ((as const (Array A!519 Bool)) false)))))

(declare-fun setRes!50699 () Bool)

(assert (=> setNonEmpty!50693 (= tp!1960511 setRes!50699)))

(declare-fun setIsEmpty!50699 () Bool)

(assert (=> setIsEmpty!50699 setRes!50699))

(declare-fun setNonEmpty!50699 () Bool)

(declare-fun tp!1960518 () Bool)

(assert (=> setNonEmpty!50699 (= setRes!50699 (and tp!1960518 tp_is_empty!45235))))

(declare-fun setElem!50699 () A!519)

(declare-fun setRest!50699 () (InoxSet A!519))

(assert (=> setNonEmpty!50699 (= setRest!50693 ((_ map or) (store ((as const (Array A!519 Bool)) false) setElem!50699 true) setRest!50699))))

(assert (= (and setNonEmpty!50693 condSetEmpty!50699) setIsEmpty!50699))

(assert (= (and setNonEmpty!50693 (not condSetEmpty!50699)) setNonEmpty!50699))

(declare-fun b_lambda!271583 () Bool)

(assert (= b_lambda!271581 (or (and start!693128 b_free!133613) b_lambda!271583)))

(check-sat tp_is_empty!45235 b_and!350665 (not b!7120920) (not b_next!134403) (not setNonEmpty!50699) (not d!2221984) (not d!2221974) (not d!2221986) (not b_lambda!271583) tp_is_empty!45239)
(check-sat b_and!350665 (not b_next!134403))
