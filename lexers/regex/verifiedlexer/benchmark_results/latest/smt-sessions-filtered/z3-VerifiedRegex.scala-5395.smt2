; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274550 () Bool)

(assert start!274550)

(declare-fun b_free!81115 () Bool)

(declare-fun b_next!81819 () Bool)

(assert (=> start!274550 (= b_free!81115 (not b_next!81819))))

(declare-fun tp!903174 () Bool)

(declare-fun b_and!206761 () Bool)

(assert (=> start!274550 (= tp!903174 b_and!206761)))

(declare-fun b!2827895 () Bool)

(declare-fun e!1789907 () Bool)

(declare-fun tp_is_empty!14551 () Bool)

(declare-fun tp!903172 () Bool)

(assert (=> b!2827895 (= e!1789907 (and tp_is_empty!14551 tp!903172))))

(declare-fun b!2827896 () Bool)

(declare-fun e!1789908 () Bool)

(declare-datatypes ((B!2501 0))(
  ( (B!2502 (val!10470 Int)) )
))
(declare-datatypes ((List!33359 0))(
  ( (Nil!33235) (Cons!33235 (h!38655 B!2501) (t!231150 List!33359)) )
))
(declare-fun l1!953 () List!33359)

(declare-fun p!1912 () Int)

(declare-fun forall!6835 (List!33359 Int) Bool)

(assert (=> b!2827896 (= e!1789908 (not (forall!6835 l1!953 p!1912)))))

(declare-fun res!1177281 () Bool)

(assert (=> start!274550 (=> (not res!1177281) (not e!1789908))))

(declare-fun l2!930 () List!33359)

(assert (=> start!274550 (= res!1177281 (forall!6835 l2!930 p!1912))))

(assert (=> start!274550 e!1789908))

(declare-fun e!1789906 () Bool)

(assert (=> start!274550 e!1789906))

(assert (=> start!274550 tp!903174))

(assert (=> start!274550 e!1789907))

(declare-fun b!2827897 () Bool)

(declare-fun res!1177283 () Bool)

(assert (=> b!2827897 (=> (not res!1177283) (not e!1789908))))

(get-info :version)

(assert (=> b!2827897 (= res!1177283 (and (not ((_ is Nil!33235) l1!953)) (not ((_ is Cons!33235) l2!930))))))

(declare-fun b!2827898 () Bool)

(declare-fun res!1177282 () Bool)

(assert (=> b!2827898 (=> (not res!1177282) (not e!1789908))))

(declare-fun subseq!489 (List!33359 List!33359) Bool)

(assert (=> b!2827898 (= res!1177282 (subseq!489 l1!953 l2!930))))

(declare-fun b!2827899 () Bool)

(declare-fun tp!903173 () Bool)

(assert (=> b!2827899 (= e!1789906 (and tp_is_empty!14551 tp!903173))))

(assert (= (and start!274550 res!1177281) b!2827898))

(assert (= (and b!2827898 res!1177282) b!2827897))

(assert (= (and b!2827897 res!1177283) b!2827896))

(assert (= (and start!274550 ((_ is Cons!33235) l2!930)) b!2827899))

(assert (= (and start!274550 ((_ is Cons!33235) l1!953)) b!2827895))

(declare-fun m!3257325 () Bool)

(assert (=> b!2827896 m!3257325))

(declare-fun m!3257327 () Bool)

(assert (=> start!274550 m!3257327))

(declare-fun m!3257329 () Bool)

(assert (=> b!2827898 m!3257329))

(check-sat tp_is_empty!14551 (not start!274550) (not b!2827899) (not b!2827896) (not b!2827898) (not b!2827895) b_and!206761 (not b_next!81819))
(check-sat b_and!206761 (not b_next!81819))
(get-model)

(declare-fun d!820634 () Bool)

(declare-fun res!1177296 () Bool)

(declare-fun e!1789921 () Bool)

(assert (=> d!820634 (=> res!1177296 e!1789921)))

(assert (=> d!820634 (= res!1177296 ((_ is Nil!33235) l2!930))))

(assert (=> d!820634 (= (forall!6835 l2!930 p!1912) e!1789921)))

(declare-fun b!2827912 () Bool)

(declare-fun e!1789922 () Bool)

(assert (=> b!2827912 (= e!1789921 e!1789922)))

(declare-fun res!1177297 () Bool)

(assert (=> b!2827912 (=> (not res!1177297) (not e!1789922))))

(declare-fun dynLambda!13976 (Int B!2501) Bool)

(assert (=> b!2827912 (= res!1177297 (dynLambda!13976 p!1912 (h!38655 l2!930)))))

(declare-fun b!2827913 () Bool)

(assert (=> b!2827913 (= e!1789922 (forall!6835 (t!231150 l2!930) p!1912))))

(assert (= (and d!820634 (not res!1177296)) b!2827912))

(assert (= (and b!2827912 res!1177297) b!2827913))

(declare-fun b_lambda!84963 () Bool)

(assert (=> (not b_lambda!84963) (not b!2827912)))

(declare-fun t!231152 () Bool)

(declare-fun tb!154149 () Bool)

(assert (=> (and start!274550 (= p!1912 p!1912) t!231152) tb!154149))

(declare-fun result!192086 () Bool)

(assert (=> tb!154149 (= result!192086 true)))

(assert (=> b!2827912 t!231152))

(declare-fun b_and!206763 () Bool)

(assert (= b_and!206761 (and (=> t!231152 result!192086) b_and!206763)))

(declare-fun m!3257331 () Bool)

(assert (=> b!2827912 m!3257331))

(declare-fun m!3257333 () Bool)

(assert (=> b!2827913 m!3257333))

(assert (=> start!274550 d!820634))

(declare-fun b!2827937 () Bool)

(declare-fun e!1789946 () Bool)

(assert (=> b!2827937 (= e!1789946 (subseq!489 l1!953 (t!231150 l2!930)))))

(declare-fun b!2827934 () Bool)

(declare-fun e!1789943 () Bool)

(declare-fun e!1789944 () Bool)

(assert (=> b!2827934 (= e!1789943 e!1789944)))

(declare-fun res!1177318 () Bool)

(assert (=> b!2827934 (=> (not res!1177318) (not e!1789944))))

(assert (=> b!2827934 (= res!1177318 ((_ is Cons!33235) l2!930))))

(declare-fun b!2827935 () Bool)

(assert (=> b!2827935 (= e!1789944 e!1789946)))

(declare-fun res!1177319 () Bool)

(assert (=> b!2827935 (=> res!1177319 e!1789946)))

(declare-fun e!1789945 () Bool)

(assert (=> b!2827935 (= res!1177319 e!1789945)))

(declare-fun res!1177321 () Bool)

(assert (=> b!2827935 (=> (not res!1177321) (not e!1789945))))

(assert (=> b!2827935 (= res!1177321 (= (h!38655 l1!953) (h!38655 l2!930)))))

(declare-fun d!820636 () Bool)

(declare-fun res!1177320 () Bool)

(assert (=> d!820636 (=> res!1177320 e!1789943)))

(assert (=> d!820636 (= res!1177320 ((_ is Nil!33235) l1!953))))

(assert (=> d!820636 (= (subseq!489 l1!953 l2!930) e!1789943)))

(declare-fun b!2827936 () Bool)

(assert (=> b!2827936 (= e!1789945 (subseq!489 (t!231150 l1!953) (t!231150 l2!930)))))

(assert (= (and d!820636 (not res!1177320)) b!2827934))

(assert (= (and b!2827934 res!1177318) b!2827935))

(assert (= (and b!2827935 res!1177321) b!2827936))

(assert (= (and b!2827935 (not res!1177319)) b!2827937))

(declare-fun m!3257347 () Bool)

(assert (=> b!2827937 m!3257347))

(declare-fun m!3257349 () Bool)

(assert (=> b!2827936 m!3257349))

(assert (=> b!2827898 d!820636))

(declare-fun d!820642 () Bool)

(declare-fun res!1177322 () Bool)

(declare-fun e!1789949 () Bool)

(assert (=> d!820642 (=> res!1177322 e!1789949)))

(assert (=> d!820642 (= res!1177322 ((_ is Nil!33235) l1!953))))

(assert (=> d!820642 (= (forall!6835 l1!953 p!1912) e!1789949)))

(declare-fun b!2827942 () Bool)

(declare-fun e!1789950 () Bool)

(assert (=> b!2827942 (= e!1789949 e!1789950)))

(declare-fun res!1177323 () Bool)

(assert (=> b!2827942 (=> (not res!1177323) (not e!1789950))))

(assert (=> b!2827942 (= res!1177323 (dynLambda!13976 p!1912 (h!38655 l1!953)))))

(declare-fun b!2827943 () Bool)

(assert (=> b!2827943 (= e!1789950 (forall!6835 (t!231150 l1!953) p!1912))))

(assert (= (and d!820642 (not res!1177322)) b!2827942))

(assert (= (and b!2827942 res!1177323) b!2827943))

(declare-fun b_lambda!84969 () Bool)

(assert (=> (not b_lambda!84969) (not b!2827942)))

(declare-fun t!231158 () Bool)

(declare-fun tb!154155 () Bool)

(assert (=> (and start!274550 (= p!1912 p!1912) t!231158) tb!154155))

(declare-fun result!192094 () Bool)

(assert (=> tb!154155 (= result!192094 true)))

(assert (=> b!2827942 t!231158))

(declare-fun b_and!206769 () Bool)

(assert (= b_and!206763 (and (=> t!231158 result!192094) b_and!206769)))

(declare-fun m!3257351 () Bool)

(assert (=> b!2827942 m!3257351))

(declare-fun m!3257353 () Bool)

(assert (=> b!2827943 m!3257353))

(assert (=> b!2827896 d!820642))

(declare-fun b!2827950 () Bool)

(declare-fun e!1789955 () Bool)

(declare-fun tp!903181 () Bool)

(assert (=> b!2827950 (= e!1789955 (and tp_is_empty!14551 tp!903181))))

(assert (=> b!2827895 (= tp!903172 e!1789955)))

(assert (= (and b!2827895 ((_ is Cons!33235) (t!231150 l1!953))) b!2827950))

(declare-fun b!2827951 () Bool)

(declare-fun e!1789956 () Bool)

(declare-fun tp!903182 () Bool)

(assert (=> b!2827951 (= e!1789956 (and tp_is_empty!14551 tp!903182))))

(assert (=> b!2827899 (= tp!903173 e!1789956)))

(assert (= (and b!2827899 ((_ is Cons!33235) (t!231150 l2!930))) b!2827951))

(declare-fun b_lambda!84975 () Bool)

(assert (= b_lambda!84963 (or (and start!274550 b_free!81115) b_lambda!84975)))

(declare-fun b_lambda!84977 () Bool)

(assert (= b_lambda!84969 (or (and start!274550 b_free!81115) b_lambda!84977)))

(check-sat (not b_lambda!84977) tp_is_empty!14551 (not b!2827951) b_and!206769 (not b!2827936) (not b!2827937) (not b!2827913) (not b_next!81819) (not b_lambda!84975) (not b!2827943) (not b!2827950))
(check-sat b_and!206769 (not b_next!81819))
