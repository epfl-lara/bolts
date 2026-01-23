; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!695024 () Bool)

(assert start!695024)

(declare-fun b_free!133849 () Bool)

(declare-fun b_next!134639 () Bool)

(assert (=> start!695024 (= b_free!133849 (not b_next!134639))))

(declare-fun tp!1966401 () Bool)

(declare-fun b_and!351049 () Bool)

(assert (=> start!695024 (= tp!1966401 b_and!351049)))

(declare-fun b!7133699 () Bool)

(declare-fun e!4287274 () Bool)

(declare-fun e!4287277 () Bool)

(assert (=> b!7133699 (= e!4287274 e!4287277)))

(declare-fun res!2910776 () Bool)

(assert (=> b!7133699 (=> (not res!2910776) (not e!4287277))))

(declare-fun p!2111 () Int)

(declare-datatypes ((B!3413 0))(
  ( (B!3414 (val!28178 Int)) )
))
(declare-datatypes ((List!69271 0))(
  ( (Nil!69147) (Cons!69147 (h!75595 B!3413) (t!383276 List!69271)) )
))
(declare-fun l2!1464 () List!69271)

(declare-fun dynLambda!28128 (Int B!3413) Bool)

(assert (=> b!7133699 (= res!2910776 (dynLambda!28128 p!2111 (h!75595 l2!1464)))))

(declare-fun l1!1495 () List!69271)

(declare-datatypes ((Unit!163063 0))(
  ( (Unit!163064) )
))
(declare-fun lt!2565262 () Unit!163063)

(declare-fun forallContained!4633 (List!69271 Int B!3413) Unit!163063)

(assert (=> b!7133699 (= lt!2565262 (forallContained!4633 l1!1495 p!2111 (h!75595 l2!1464)))))

(declare-fun b!7133700 () Bool)

(declare-fun forall!16945 (List!69271 Int) Bool)

(assert (=> b!7133700 (= e!4287277 (not (forall!16945 l2!1464 p!2111)))))

(declare-fun b!7133701 () Bool)

(declare-fun res!2910778 () Bool)

(declare-fun e!4287278 () Bool)

(assert (=> b!7133701 (=> (not res!2910778) (not e!4287278))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!14147 (List!69271) (InoxSet B!3413))

(assert (=> b!7133701 (= res!2910778 (= ((_ map implies) (content!14147 l2!1464) (content!14147 l1!1495)) ((as const (InoxSet B!3413)) true)))))

(declare-fun res!2910775 () Bool)

(assert (=> start!695024 (=> (not res!2910775) (not e!4287278))))

(assert (=> start!695024 (= res!2910775 (forall!16945 l1!1495 p!2111))))

(assert (=> start!695024 e!4287278))

(declare-fun e!4287276 () Bool)

(assert (=> start!695024 e!4287276))

(assert (=> start!695024 tp!1966401))

(declare-fun e!4287275 () Bool)

(assert (=> start!695024 e!4287275))

(declare-fun b!7133702 () Bool)

(declare-fun tp_is_empty!45835 () Bool)

(declare-fun tp!1966399 () Bool)

(assert (=> b!7133702 (= e!4287276 (and tp_is_empty!45835 tp!1966399))))

(declare-fun b!7133703 () Bool)

(declare-fun tp!1966400 () Bool)

(assert (=> b!7133703 (= e!4287275 (and tp_is_empty!45835 tp!1966400))))

(declare-fun b!7133704 () Bool)

(declare-fun res!2910777 () Bool)

(assert (=> b!7133704 (=> (not res!2910777) (not e!4287278))))

(get-info :version)

(assert (=> b!7133704 (= res!2910777 ((_ is Cons!69147) l2!1464))))

(declare-fun b!7133705 () Bool)

(assert (=> b!7133705 (= e!4287278 e!4287274)))

(declare-fun res!2910779 () Bool)

(assert (=> b!7133705 (=> (not res!2910779) (not e!4287274))))

(declare-fun contains!20553 (List!69271 B!3413) Bool)

(assert (=> b!7133705 (= res!2910779 (contains!20553 l1!1495 (h!75595 l2!1464)))))

(declare-fun lt!2565261 () Unit!163063)

(declare-fun lemmaContentSubsetPreservesForall!372 (List!69271 List!69271 Int) Unit!163063)

(assert (=> b!7133705 (= lt!2565261 (lemmaContentSubsetPreservesForall!372 l1!1495 (t!383276 l2!1464) p!2111))))

(assert (= (and start!695024 res!2910775) b!7133701))

(assert (= (and b!7133701 res!2910778) b!7133704))

(assert (= (and b!7133704 res!2910777) b!7133705))

(assert (= (and b!7133705 res!2910779) b!7133699))

(assert (= (and b!7133699 res!2910776) b!7133700))

(assert (= (and start!695024 ((_ is Cons!69147) l1!1495)) b!7133702))

(assert (= (and start!695024 ((_ is Cons!69147) l2!1464)) b!7133703))

(declare-fun b_lambda!272151 () Bool)

(assert (=> (not b_lambda!272151) (not b!7133699)))

(declare-fun t!383275 () Bool)

(declare-fun tb!262085 () Bool)

(assert (=> (and start!695024 (= p!2111 p!2111) t!383275) tb!262085))

(declare-fun result!349676 () Bool)

(assert (=> tb!262085 (= result!349676 true)))

(assert (=> b!7133699 t!383275))

(declare-fun b_and!351051 () Bool)

(assert (= b_and!351049 (and (=> t!383275 result!349676) b_and!351051)))

(declare-fun m!7850682 () Bool)

(assert (=> b!7133699 m!7850682))

(declare-fun m!7850684 () Bool)

(assert (=> b!7133699 m!7850684))

(declare-fun m!7850686 () Bool)

(assert (=> start!695024 m!7850686))

(declare-fun m!7850688 () Bool)

(assert (=> b!7133700 m!7850688))

(declare-fun m!7850690 () Bool)

(assert (=> b!7133705 m!7850690))

(declare-fun m!7850692 () Bool)

(assert (=> b!7133705 m!7850692))

(declare-fun m!7850694 () Bool)

(assert (=> b!7133701 m!7850694))

(declare-fun m!7850696 () Bool)

(assert (=> b!7133701 m!7850696))

(check-sat b_and!351051 (not b!7133699) tp_is_empty!45835 (not b!7133700) (not b!7133702) (not start!695024) (not b!7133703) (not b!7133705) (not b!7133701) (not b_lambda!272151) (not b_next!134639))
(check-sat b_and!351051 (not b_next!134639))
(get-model)

(declare-fun b_lambda!272153 () Bool)

(assert (= b_lambda!272151 (or (and start!695024 b_free!133849) b_lambda!272153)))

(check-sat b_and!351051 (not b!7133699) tp_is_empty!45835 (not b!7133700) (not b!7133702) (not b_lambda!272153) (not start!695024) (not b!7133703) (not b_next!134639) (not b!7133705) (not b!7133701))
(check-sat b_and!351051 (not b_next!134639))
(get-model)

(declare-fun d!2226009 () Bool)

(declare-fun res!2910784 () Bool)

(declare-fun e!4287283 () Bool)

(assert (=> d!2226009 (=> res!2910784 e!4287283)))

(assert (=> d!2226009 (= res!2910784 ((_ is Nil!69147) l2!1464))))

(assert (=> d!2226009 (= (forall!16945 l2!1464 p!2111) e!4287283)))

(declare-fun b!7133710 () Bool)

(declare-fun e!4287284 () Bool)

(assert (=> b!7133710 (= e!4287283 e!4287284)))

(declare-fun res!2910785 () Bool)

(assert (=> b!7133710 (=> (not res!2910785) (not e!4287284))))

(assert (=> b!7133710 (= res!2910785 (dynLambda!28128 p!2111 (h!75595 l2!1464)))))

(declare-fun b!7133711 () Bool)

(assert (=> b!7133711 (= e!4287284 (forall!16945 (t!383276 l2!1464) p!2111))))

(assert (= (and d!2226009 (not res!2910784)) b!7133710))

(assert (= (and b!7133710 res!2910785) b!7133711))

(declare-fun b_lambda!272157 () Bool)

(assert (=> (not b_lambda!272157) (not b!7133710)))

(assert (=> b!7133710 t!383275))

(declare-fun b_and!351053 () Bool)

(assert (= b_and!351051 (and (=> t!383275 result!349676) b_and!351053)))

(assert (=> b!7133710 m!7850682))

(declare-fun m!7850698 () Bool)

(assert (=> b!7133711 m!7850698))

(assert (=> b!7133700 d!2226009))

(declare-fun d!2226011 () Bool)

(declare-fun lt!2565265 () Bool)

(assert (=> d!2226011 (= lt!2565265 (select (content!14147 l1!1495) (h!75595 l2!1464)))))

(declare-fun e!4287290 () Bool)

(assert (=> d!2226011 (= lt!2565265 e!4287290)))

(declare-fun res!2910790 () Bool)

(assert (=> d!2226011 (=> (not res!2910790) (not e!4287290))))

(assert (=> d!2226011 (= res!2910790 ((_ is Cons!69147) l1!1495))))

(assert (=> d!2226011 (= (contains!20553 l1!1495 (h!75595 l2!1464)) lt!2565265)))

(declare-fun b!7133716 () Bool)

(declare-fun e!4287289 () Bool)

(assert (=> b!7133716 (= e!4287290 e!4287289)))

(declare-fun res!2910791 () Bool)

(assert (=> b!7133716 (=> res!2910791 e!4287289)))

(assert (=> b!7133716 (= res!2910791 (= (h!75595 l1!1495) (h!75595 l2!1464)))))

(declare-fun b!7133717 () Bool)

(assert (=> b!7133717 (= e!4287289 (contains!20553 (t!383276 l1!1495) (h!75595 l2!1464)))))

(assert (= (and d!2226011 res!2910790) b!7133716))

(assert (= (and b!7133716 (not res!2910791)) b!7133717))

(assert (=> d!2226011 m!7850696))

(declare-fun m!7850700 () Bool)

(assert (=> d!2226011 m!7850700))

(declare-fun m!7850702 () Bool)

(assert (=> b!7133717 m!7850702))

(assert (=> b!7133705 d!2226011))

(declare-fun d!2226015 () Bool)

(assert (=> d!2226015 (forall!16945 (t!383276 l2!1464) p!2111)))

(declare-fun lt!2565271 () Unit!163063)

(declare-fun choose!55135 (List!69271 List!69271 Int) Unit!163063)

(assert (=> d!2226015 (= lt!2565271 (choose!55135 l1!1495 (t!383276 l2!1464) p!2111))))

(assert (=> d!2226015 (forall!16945 l1!1495 p!2111)))

(assert (=> d!2226015 (= (lemmaContentSubsetPreservesForall!372 l1!1495 (t!383276 l2!1464) p!2111) lt!2565271)))

(declare-fun bs!1887057 () Bool)

(assert (= bs!1887057 d!2226015))

(assert (=> bs!1887057 m!7850698))

(declare-fun m!7850704 () Bool)

(assert (=> bs!1887057 m!7850704))

(assert (=> bs!1887057 m!7850686))

(assert (=> b!7133705 d!2226015))

(declare-fun d!2226017 () Bool)

(assert (=> d!2226017 (dynLambda!28128 p!2111 (h!75595 l2!1464))))

(declare-fun lt!2565274 () Unit!163063)

(declare-fun choose!55136 (List!69271 Int B!3413) Unit!163063)

(assert (=> d!2226017 (= lt!2565274 (choose!55136 l1!1495 p!2111 (h!75595 l2!1464)))))

(declare-fun e!4287300 () Bool)

(assert (=> d!2226017 e!4287300))

(declare-fun res!2910797 () Bool)

(assert (=> d!2226017 (=> (not res!2910797) (not e!4287300))))

(assert (=> d!2226017 (= res!2910797 (forall!16945 l1!1495 p!2111))))

(assert (=> d!2226017 (= (forallContained!4633 l1!1495 p!2111 (h!75595 l2!1464)) lt!2565274)))

(declare-fun b!7133731 () Bool)

(assert (=> b!7133731 (= e!4287300 (contains!20553 l1!1495 (h!75595 l2!1464)))))

(assert (= (and d!2226017 res!2910797) b!7133731))

(declare-fun b_lambda!272161 () Bool)

(assert (=> (not b_lambda!272161) (not d!2226017)))

(assert (=> d!2226017 t!383275))

(declare-fun b_and!351057 () Bool)

(assert (= b_and!351053 (and (=> t!383275 result!349676) b_and!351057)))

(assert (=> d!2226017 m!7850682))

(declare-fun m!7850716 () Bool)

(assert (=> d!2226017 m!7850716))

(assert (=> d!2226017 m!7850686))

(assert (=> b!7133731 m!7850690))

(assert (=> b!7133699 d!2226017))

(declare-fun d!2226025 () Bool)

(declare-fun res!2910798 () Bool)

(declare-fun e!4287301 () Bool)

(assert (=> d!2226025 (=> res!2910798 e!4287301)))

(assert (=> d!2226025 (= res!2910798 ((_ is Nil!69147) l1!1495))))

(assert (=> d!2226025 (= (forall!16945 l1!1495 p!2111) e!4287301)))

(declare-fun b!7133732 () Bool)

(declare-fun e!4287302 () Bool)

(assert (=> b!7133732 (= e!4287301 e!4287302)))

(declare-fun res!2910799 () Bool)

(assert (=> b!7133732 (=> (not res!2910799) (not e!4287302))))

(assert (=> b!7133732 (= res!2910799 (dynLambda!28128 p!2111 (h!75595 l1!1495)))))

(declare-fun b!7133733 () Bool)

(assert (=> b!7133733 (= e!4287302 (forall!16945 (t!383276 l1!1495) p!2111))))

(assert (= (and d!2226025 (not res!2910798)) b!7133732))

(assert (= (and b!7133732 res!2910799) b!7133733))

(declare-fun b_lambda!272163 () Bool)

(assert (=> (not b_lambda!272163) (not b!7133732)))

(declare-fun t!383278 () Bool)

(declare-fun tb!262087 () Bool)

(assert (=> (and start!695024 (= p!2111 p!2111) t!383278) tb!262087))

(declare-fun result!349678 () Bool)

(assert (=> tb!262087 (= result!349678 true)))

(assert (=> b!7133732 t!383278))

(declare-fun b_and!351059 () Bool)

(assert (= b_and!351057 (and (=> t!383278 result!349678) b_and!351059)))

(declare-fun m!7850718 () Bool)

(assert (=> b!7133732 m!7850718))

(declare-fun m!7850720 () Bool)

(assert (=> b!7133733 m!7850720))

(assert (=> start!695024 d!2226025))

(declare-fun d!2226027 () Bool)

(declare-fun c!1330453 () Bool)

(assert (=> d!2226027 (= c!1330453 ((_ is Nil!69147) l2!1464))))

(declare-fun e!4287311 () (InoxSet B!3413))

(assert (=> d!2226027 (= (content!14147 l2!1464) e!4287311)))

(declare-fun b!7133744 () Bool)

(assert (=> b!7133744 (= e!4287311 ((as const (Array B!3413 Bool)) false))))

(declare-fun b!7133745 () Bool)

(assert (=> b!7133745 (= e!4287311 ((_ map or) (store ((as const (Array B!3413 Bool)) false) (h!75595 l2!1464) true) (content!14147 (t!383276 l2!1464))))))

(assert (= (and d!2226027 c!1330453) b!7133744))

(assert (= (and d!2226027 (not c!1330453)) b!7133745))

(declare-fun m!7850726 () Bool)

(assert (=> b!7133745 m!7850726))

(declare-fun m!7850728 () Bool)

(assert (=> b!7133745 m!7850728))

(assert (=> b!7133701 d!2226027))

(declare-fun d!2226031 () Bool)

(declare-fun c!1330454 () Bool)

(assert (=> d!2226031 (= c!1330454 ((_ is Nil!69147) l1!1495))))

(declare-fun e!4287312 () (InoxSet B!3413))

(assert (=> d!2226031 (= (content!14147 l1!1495) e!4287312)))

(declare-fun b!7133746 () Bool)

(assert (=> b!7133746 (= e!4287312 ((as const (Array B!3413 Bool)) false))))

(declare-fun b!7133747 () Bool)

(assert (=> b!7133747 (= e!4287312 ((_ map or) (store ((as const (Array B!3413 Bool)) false) (h!75595 l1!1495) true) (content!14147 (t!383276 l1!1495))))))

(assert (= (and d!2226031 c!1330454) b!7133746))

(assert (= (and d!2226031 (not c!1330454)) b!7133747))

(declare-fun m!7850730 () Bool)

(assert (=> b!7133747 m!7850730))

(declare-fun m!7850732 () Bool)

(assert (=> b!7133747 m!7850732))

(assert (=> b!7133701 d!2226031))

(declare-fun b!7133752 () Bool)

(declare-fun e!4287315 () Bool)

(declare-fun tp!1966404 () Bool)

(assert (=> b!7133752 (= e!4287315 (and tp_is_empty!45835 tp!1966404))))

(assert (=> b!7133703 (= tp!1966400 e!4287315)))

(assert (= (and b!7133703 ((_ is Cons!69147) (t!383276 l2!1464))) b!7133752))

(declare-fun b!7133753 () Bool)

(declare-fun e!4287316 () Bool)

(declare-fun tp!1966405 () Bool)

(assert (=> b!7133753 (= e!4287316 (and tp_is_empty!45835 tp!1966405))))

(assert (=> b!7133702 (= tp!1966399 e!4287316)))

(assert (= (and b!7133702 ((_ is Cons!69147) (t!383276 l1!1495))) b!7133753))

(declare-fun b_lambda!272165 () Bool)

(assert (= b_lambda!272163 (or (and start!695024 b_free!133849) b_lambda!272165)))

(declare-fun b_lambda!272167 () Bool)

(assert (= b_lambda!272157 (or (and start!695024 b_free!133849) b_lambda!272167)))

(declare-fun b_lambda!272169 () Bool)

(assert (= b_lambda!272161 (or (and start!695024 b_free!133849) b_lambda!272169)))

(check-sat (not b_lambda!272165) (not b!7133747) b_and!351059 (not b!7133731) (not b!7133717) (not d!2226011) (not b!7133752) (not b!7133753) (not b!7133711) (not b_next!134639) (not b_lambda!272169) tp_is_empty!45835 (not d!2226015) (not b_lambda!272167) (not b_lambda!272153) (not b!7133745) (not b!7133733) (not d!2226017))
(check-sat b_and!351059 (not b_next!134639))
