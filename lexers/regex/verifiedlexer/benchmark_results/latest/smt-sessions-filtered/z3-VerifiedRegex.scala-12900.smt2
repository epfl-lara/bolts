; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712024 () Bool)

(assert start!712024)

(declare-fun b_free!133901 () Bool)

(declare-fun b_next!134691 () Bool)

(assert (=> start!712024 (= b_free!133901 (not b_next!134691))))

(declare-fun tp!2074955 () Bool)

(declare-fun b_and!351173 () Bool)

(assert (=> start!712024 (= tp!2074955 b_and!351173)))

(declare-fun b!7310920 () Bool)

(declare-fun res!2953367 () Bool)

(declare-fun e!4375845 () Bool)

(assert (=> b!7310920 (=> (not res!2953367) (not e!4375845))))

(declare-datatypes ((B!3449 0))(
  ( (B!3450 (val!29005 Int)) )
))
(declare-datatypes ((List!71126 0))(
  ( (Nil!71002) (Cons!71002 (h!77450 B!3449) (t!385228 List!71126)) )
))
(declare-fun lRes!24 () List!71126)

(get-info :version)

(assert (=> b!7310920 (= res!2953367 ((_ is Cons!71002) lRes!24))))

(declare-fun b!7310921 () Bool)

(declare-fun isEmpty!40836 (List!71126) Bool)

(assert (=> b!7310921 (= e!4375845 (isEmpty!40836 lRes!24))))

(declare-fun setNonEmpty!53783 () Bool)

(declare-fun setRes!53783 () Bool)

(declare-fun tp!2074957 () Bool)

(declare-fun tp_is_empty!47289 () Bool)

(assert (=> setNonEmpty!53783 (= setRes!53783 (and tp!2074957 tp_is_empty!47289))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!747 0))(
  ( (A!748 (val!29006 Int)) )
))
(declare-fun s!1445 () (InoxSet A!747))

(declare-fun setElem!53783 () A!747)

(declare-fun setRest!53783 () (InoxSet A!747))

(assert (=> setNonEmpty!53783 (= s!1445 ((_ map or) (store ((as const (Array A!747 Bool)) false) setElem!53783 true) setRest!53783))))

(declare-fun setIsEmpty!53783 () Bool)

(assert (=> setIsEmpty!53783 setRes!53783))

(declare-fun b!7310922 () Bool)

(declare-fun res!2953366 () Bool)

(assert (=> b!7310922 (=> (not res!2953366) (not e!4375845))))

(declare-fun elmt!124 () A!747)

(declare-fun f!903 () Int)

(declare-fun subseq!785 (List!71126 List!71126) Bool)

(declare-fun toList!11535 ((InoxSet B!3449)) List!71126)

(declare-fun dynLambda!29041 (Int A!747) (InoxSet B!3449))

(assert (=> b!7310922 (= res!2953366 (subseq!785 lRes!24 (toList!11535 (dynLambda!29041 f!903 elmt!124))))))

(declare-fun res!2953368 () Bool)

(assert (=> start!712024 (=> (not res!2953368) (not e!4375845))))

(assert (=> start!712024 (= res!2953368 (= s!1445 (store ((as const (Array A!747 Bool)) false) elmt!124 true)))))

(assert (=> start!712024 e!4375845))

(declare-fun condSetEmpty!53783 () Bool)

(assert (=> start!712024 (= condSetEmpty!53783 (= s!1445 ((as const (Array A!747 Bool)) false)))))

(assert (=> start!712024 setRes!53783))

(assert (=> start!712024 tp_is_empty!47289))

(declare-fun e!4375844 () Bool)

(assert (=> start!712024 e!4375844))

(assert (=> start!712024 tp!2074955))

(declare-fun b!7310923 () Bool)

(declare-fun tp_is_empty!47291 () Bool)

(declare-fun tp!2074956 () Bool)

(assert (=> b!7310923 (= e!4375844 (and tp_is_empty!47291 tp!2074956))))

(assert (= (and start!712024 res!2953368) b!7310922))

(assert (= (and b!7310922 res!2953366) b!7310920))

(assert (= (and b!7310920 res!2953367) b!7310921))

(assert (= (and start!712024 condSetEmpty!53783) setIsEmpty!53783))

(assert (= (and start!712024 (not condSetEmpty!53783)) setNonEmpty!53783))

(assert (= (and start!712024 ((_ is Cons!71002) lRes!24)) b!7310923))

(declare-fun b_lambda!282047 () Bool)

(assert (=> (not b_lambda!282047) (not b!7310922)))

(declare-fun t!385227 () Bool)

(declare-fun tb!262139 () Bool)

(assert (=> (and start!712024 (= f!903 f!903) t!385227) tb!262139))

(assert (=> b!7310922 t!385227))

(declare-fun result!352654 () Bool)

(declare-fun b_and!351175 () Bool)

(assert (= b_and!351173 (and (=> t!385227 result!352654) b_and!351175)))

(declare-fun m!7975134 () Bool)

(assert (=> b!7310921 m!7975134))

(declare-fun m!7975136 () Bool)

(assert (=> b!7310922 m!7975136))

(assert (=> b!7310922 m!7975136))

(declare-fun m!7975138 () Bool)

(assert (=> b!7310922 m!7975138))

(assert (=> b!7310922 m!7975138))

(declare-fun m!7975140 () Bool)

(assert (=> b!7310922 m!7975140))

(declare-fun m!7975142 () Bool)

(assert (=> start!712024 m!7975142))

(check-sat (not setNonEmpty!53783) (not b_next!134691) (not b!7310921) tp_is_empty!47289 (not tb!262139) (not b!7310922) (not b_lambda!282047) (not b!7310923) b_and!351175 tp_is_empty!47291)
(check-sat b_and!351175 (not b_next!134691))
(get-model)

(declare-fun b_lambda!282049 () Bool)

(assert (= b_lambda!282047 (or (and start!712024 b_free!133901) b_lambda!282049)))

(check-sat (not setNonEmpty!53783) (not b_next!134691) (not b!7310923) (not b!7310921) tp_is_empty!47289 (not b_lambda!282049) (not tb!262139) (not b!7310922) b_and!351175 tp_is_empty!47291)
(check-sat b_and!351175 (not b_next!134691))
(get-model)

(declare-fun b!7310932 () Bool)

(declare-fun e!4375855 () Bool)

(declare-fun e!4375856 () Bool)

(assert (=> b!7310932 (= e!4375855 e!4375856)))

(declare-fun res!2953380 () Bool)

(assert (=> b!7310932 (=> (not res!2953380) (not e!4375856))))

(assert (=> b!7310932 (= res!2953380 ((_ is Cons!71002) (toList!11535 (dynLambda!29041 f!903 elmt!124))))))

(declare-fun d!2269809 () Bool)

(declare-fun res!2953379 () Bool)

(assert (=> d!2269809 (=> res!2953379 e!4375855)))

(assert (=> d!2269809 (= res!2953379 ((_ is Nil!71002) lRes!24))))

(assert (=> d!2269809 (= (subseq!785 lRes!24 (toList!11535 (dynLambda!29041 f!903 elmt!124))) e!4375855)))

(declare-fun b!7310934 () Bool)

(declare-fun e!4375857 () Bool)

(assert (=> b!7310934 (= e!4375857 (subseq!785 (t!385228 lRes!24) (t!385228 (toList!11535 (dynLambda!29041 f!903 elmt!124)))))))

(declare-fun e!4375854 () Bool)

(declare-fun b!7310935 () Bool)

(assert (=> b!7310935 (= e!4375854 (subseq!785 lRes!24 (t!385228 (toList!11535 (dynLambda!29041 f!903 elmt!124)))))))

(declare-fun b!7310933 () Bool)

(assert (=> b!7310933 (= e!4375856 e!4375854)))

(declare-fun res!2953377 () Bool)

(assert (=> b!7310933 (=> res!2953377 e!4375854)))

(assert (=> b!7310933 (= res!2953377 e!4375857)))

(declare-fun res!2953378 () Bool)

(assert (=> b!7310933 (=> (not res!2953378) (not e!4375857))))

(assert (=> b!7310933 (= res!2953378 (= (h!77450 lRes!24) (h!77450 (toList!11535 (dynLambda!29041 f!903 elmt!124)))))))

(assert (= (and d!2269809 (not res!2953379)) b!7310932))

(assert (= (and b!7310932 res!2953380) b!7310933))

(assert (= (and b!7310933 res!2953378) b!7310934))

(assert (= (and b!7310933 (not res!2953377)) b!7310935))

(declare-fun m!7975144 () Bool)

(assert (=> b!7310934 m!7975144))

(declare-fun m!7975146 () Bool)

(assert (=> b!7310935 m!7975146))

(assert (=> b!7310922 d!2269809))

(declare-fun d!2269815 () Bool)

(declare-fun e!4375868 () Bool)

(assert (=> d!2269815 e!4375868))

(declare-fun res!2953391 () Bool)

(assert (=> d!2269815 (=> (not res!2953391) (not e!4375868))))

(declare-fun lt!2600404 () List!71126)

(declare-fun noDuplicate!3021 (List!71126) Bool)

(assert (=> d!2269815 (= res!2953391 (noDuplicate!3021 lt!2600404))))

(declare-fun choose!56616 ((InoxSet B!3449)) List!71126)

(assert (=> d!2269815 (= lt!2600404 (choose!56616 (dynLambda!29041 f!903 elmt!124)))))

(assert (=> d!2269815 (= (toList!11535 (dynLambda!29041 f!903 elmt!124)) lt!2600404)))

(declare-fun b!7310946 () Bool)

(declare-fun content!14840 (List!71126) (InoxSet B!3449))

(assert (=> b!7310946 (= e!4375868 (= (content!14840 lt!2600404) (dynLambda!29041 f!903 elmt!124)))))

(assert (= (and d!2269815 res!2953391) b!7310946))

(declare-fun m!7975148 () Bool)

(assert (=> d!2269815 m!7975148))

(assert (=> d!2269815 m!7975136))

(declare-fun m!7975150 () Bool)

(assert (=> d!2269815 m!7975150))

(declare-fun m!7975152 () Bool)

(assert (=> b!7310946 m!7975152))

(assert (=> b!7310922 d!2269815))

(declare-fun d!2269817 () Bool)

(assert (=> d!2269817 (= (isEmpty!40836 lRes!24) ((_ is Nil!71002) lRes!24))))

(assert (=> b!7310921 d!2269817))

(declare-fun b!7310955 () Bool)

(declare-fun e!4375875 () Bool)

(declare-fun tp!2074960 () Bool)

(assert (=> b!7310955 (= e!4375875 (and tp_is_empty!47291 tp!2074960))))

(assert (=> b!7310923 (= tp!2074956 e!4375875)))

(assert (= (and b!7310923 ((_ is Cons!71002) (t!385228 lRes!24))) b!7310955))

(declare-fun condSetEmpty!53786 () Bool)

(assert (=> tb!262139 (= condSetEmpty!53786 (= (dynLambda!29041 f!903 elmt!124) ((as const (Array B!3449 Bool)) false)))))

(declare-fun setRes!53786 () Bool)

(assert (=> tb!262139 (= result!352654 setRes!53786)))

(declare-fun setIsEmpty!53786 () Bool)

(assert (=> setIsEmpty!53786 setRes!53786))

(declare-fun setNonEmpty!53786 () Bool)

(declare-fun tp!2074963 () Bool)

(assert (=> setNonEmpty!53786 (= setRes!53786 (and tp!2074963 tp_is_empty!47291))))

(declare-fun setElem!53786 () B!3449)

(declare-fun setRest!53786 () (InoxSet B!3449))

(assert (=> setNonEmpty!53786 (= (dynLambda!29041 f!903 elmt!124) ((_ map or) (store ((as const (Array B!3449 Bool)) false) setElem!53786 true) setRest!53786))))

(assert (= (and tb!262139 condSetEmpty!53786) setIsEmpty!53786))

(assert (= (and tb!262139 (not condSetEmpty!53786)) setNonEmpty!53786))

(declare-fun condSetEmpty!53789 () Bool)

(assert (=> setNonEmpty!53783 (= condSetEmpty!53789 (= setRest!53783 ((as const (Array A!747 Bool)) false)))))

(declare-fun setRes!53789 () Bool)

(assert (=> setNonEmpty!53783 (= tp!2074957 setRes!53789)))

(declare-fun setIsEmpty!53789 () Bool)

(assert (=> setIsEmpty!53789 setRes!53789))

(declare-fun setNonEmpty!53789 () Bool)

(declare-fun tp!2074966 () Bool)

(assert (=> setNonEmpty!53789 (= setRes!53789 (and tp!2074966 tp_is_empty!47289))))

(declare-fun setElem!53789 () A!747)

(declare-fun setRest!53789 () (InoxSet A!747))

(assert (=> setNonEmpty!53789 (= setRest!53783 ((_ map or) (store ((as const (Array A!747 Bool)) false) setElem!53789 true) setRest!53789))))

(assert (= (and setNonEmpty!53783 condSetEmpty!53789) setIsEmpty!53789))

(assert (= (and setNonEmpty!53783 (not condSetEmpty!53789)) setNonEmpty!53789))

(check-sat (not b!7310935) (not d!2269815) (not b!7310934) (not setNonEmpty!53786) (not b_next!134691) (not b!7310946) tp_is_empty!47289 (not b_lambda!282049) (not setNonEmpty!53789) b_and!351175 (not b!7310955) tp_is_empty!47291)
(check-sat b_and!351175 (not b_next!134691))
