; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694932 () Bool)

(assert start!694932)

(declare-fun b_free!133825 () Bool)

(declare-fun b_next!134615 () Bool)

(assert (=> start!694932 (= b_free!133825 (not b_next!134615))))

(declare-fun tp!1966253 () Bool)

(declare-fun b_and!350995 () Bool)

(assert (=> start!694932 (= tp!1966253 b_and!350995)))

(declare-fun b!7133249 () Bool)

(declare-fun res!2910568 () Bool)

(declare-fun e!4286967 () Bool)

(assert (=> b!7133249 (=> (not res!2910568) (not e!4286967))))

(declare-datatypes ((B!3389 0))(
  ( (B!3390 (val!28166 Int)) )
))
(declare-datatypes ((List!69259 0))(
  ( (Nil!69135) (Cons!69135 (h!75583 B!3389) (t!383236 List!69259)) )
))
(declare-fun l2!1464 () List!69259)

(get-info :version)

(assert (=> b!7133249 (= res!2910568 ((_ is Cons!69135) l2!1464))))

(declare-fun res!2910569 () Bool)

(declare-fun e!4286965 () Bool)

(assert (=> start!694932 (=> (not res!2910569) (not e!4286965))))

(declare-fun l1!1495 () List!69259)

(declare-fun p!2111 () Int)

(declare-fun forall!16933 (List!69259 Int) Bool)

(assert (=> start!694932 (= res!2910569 (forall!16933 l1!1495 p!2111))))

(assert (=> start!694932 e!4286965))

(declare-fun e!4286964 () Bool)

(assert (=> start!694932 e!4286964))

(assert (=> start!694932 tp!1966253))

(declare-fun e!4286966 () Bool)

(assert (=> start!694932 e!4286966))

(declare-fun b!7133250 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2565176 () (InoxSet B!3389))

(declare-fun content!14135 (List!69259) (InoxSet B!3389))

(assert (=> b!7133250 (= e!4286967 (not (= ((_ map implies) (content!14135 (t!383236 l2!1464)) lt!2565176) ((as const (InoxSet B!3389)) true))))))

(declare-fun b!7133251 () Bool)

(declare-fun tp_is_empty!45811 () Bool)

(declare-fun tp!1966251 () Bool)

(assert (=> b!7133251 (= e!4286964 (and tp_is_empty!45811 tp!1966251))))

(declare-fun b!7133252 () Bool)

(declare-fun tp!1966252 () Bool)

(assert (=> b!7133252 (= e!4286966 (and tp_is_empty!45811 tp!1966252))))

(declare-fun b!7133253 () Bool)

(assert (=> b!7133253 (= e!4286965 e!4286967)))

(declare-fun res!2910567 () Bool)

(assert (=> b!7133253 (=> (not res!2910567) (not e!4286967))))

(assert (=> b!7133253 (= res!2910567 (= ((_ map implies) (content!14135 l2!1464) lt!2565176) ((as const (InoxSet B!3389)) true)))))

(assert (=> b!7133253 (= lt!2565176 (content!14135 l1!1495))))

(assert (= (and start!694932 res!2910569) b!7133253))

(assert (= (and b!7133253 res!2910567) b!7133249))

(assert (= (and b!7133249 res!2910568) b!7133250))

(assert (= (and start!694932 ((_ is Cons!69135) l1!1495)) b!7133251))

(assert (= (and start!694932 ((_ is Cons!69135) l2!1464)) b!7133252))

(declare-fun m!7850394 () Bool)

(assert (=> start!694932 m!7850394))

(declare-fun m!7850396 () Bool)

(assert (=> b!7133250 m!7850396))

(declare-fun m!7850398 () Bool)

(assert (=> b!7133253 m!7850398))

(declare-fun m!7850400 () Bool)

(assert (=> b!7133253 m!7850400))

(check-sat (not start!694932) (not b!7133250) b_and!350995 tp_is_empty!45811 (not b_next!134615) (not b!7133251) (not b!7133252) (not b!7133253))
(check-sat b_and!350995 (not b_next!134615))
(get-model)

(declare-fun d!2225909 () Bool)

(declare-fun c!1330394 () Bool)

(assert (=> d!2225909 (= c!1330394 ((_ is Nil!69135) l2!1464))))

(declare-fun e!4286970 () (InoxSet B!3389))

(assert (=> d!2225909 (= (content!14135 l2!1464) e!4286970)))

(declare-fun b!7133258 () Bool)

(assert (=> b!7133258 (= e!4286970 ((as const (Array B!3389 Bool)) false))))

(declare-fun b!7133259 () Bool)

(assert (=> b!7133259 (= e!4286970 ((_ map or) (store ((as const (Array B!3389 Bool)) false) (h!75583 l2!1464) true) (content!14135 (t!383236 l2!1464))))))

(assert (= (and d!2225909 c!1330394) b!7133258))

(assert (= (and d!2225909 (not c!1330394)) b!7133259))

(declare-fun m!7850402 () Bool)

(assert (=> b!7133259 m!7850402))

(assert (=> b!7133259 m!7850396))

(assert (=> b!7133253 d!2225909))

(declare-fun d!2225911 () Bool)

(declare-fun c!1330395 () Bool)

(assert (=> d!2225911 (= c!1330395 ((_ is Nil!69135) l1!1495))))

(declare-fun e!4286971 () (InoxSet B!3389))

(assert (=> d!2225911 (= (content!14135 l1!1495) e!4286971)))

(declare-fun b!7133260 () Bool)

(assert (=> b!7133260 (= e!4286971 ((as const (Array B!3389 Bool)) false))))

(declare-fun b!7133261 () Bool)

(assert (=> b!7133261 (= e!4286971 ((_ map or) (store ((as const (Array B!3389 Bool)) false) (h!75583 l1!1495) true) (content!14135 (t!383236 l1!1495))))))

(assert (= (and d!2225911 c!1330395) b!7133260))

(assert (= (and d!2225911 (not c!1330395)) b!7133261))

(declare-fun m!7850404 () Bool)

(assert (=> b!7133261 m!7850404))

(declare-fun m!7850406 () Bool)

(assert (=> b!7133261 m!7850406))

(assert (=> b!7133253 d!2225911))

(declare-fun d!2225913 () Bool)

(declare-fun c!1330396 () Bool)

(assert (=> d!2225913 (= c!1330396 ((_ is Nil!69135) (t!383236 l2!1464)))))

(declare-fun e!4286972 () (InoxSet B!3389))

(assert (=> d!2225913 (= (content!14135 (t!383236 l2!1464)) e!4286972)))

(declare-fun b!7133262 () Bool)

(assert (=> b!7133262 (= e!4286972 ((as const (Array B!3389 Bool)) false))))

(declare-fun b!7133263 () Bool)

(assert (=> b!7133263 (= e!4286972 ((_ map or) (store ((as const (Array B!3389 Bool)) false) (h!75583 (t!383236 l2!1464)) true) (content!14135 (t!383236 (t!383236 l2!1464)))))))

(assert (= (and d!2225913 c!1330396) b!7133262))

(assert (= (and d!2225913 (not c!1330396)) b!7133263))

(declare-fun m!7850408 () Bool)

(assert (=> b!7133263 m!7850408))

(declare-fun m!7850410 () Bool)

(assert (=> b!7133263 m!7850410))

(assert (=> b!7133250 d!2225913))

(declare-fun d!2225915 () Bool)

(declare-fun res!2910574 () Bool)

(declare-fun e!4286977 () Bool)

(assert (=> d!2225915 (=> res!2910574 e!4286977)))

(assert (=> d!2225915 (= res!2910574 ((_ is Nil!69135) l1!1495))))

(assert (=> d!2225915 (= (forall!16933 l1!1495 p!2111) e!4286977)))

(declare-fun b!7133268 () Bool)

(declare-fun e!4286978 () Bool)

(assert (=> b!7133268 (= e!4286977 e!4286978)))

(declare-fun res!2910575 () Bool)

(assert (=> b!7133268 (=> (not res!2910575) (not e!4286978))))

(declare-fun dynLambda!28118 (Int B!3389) Bool)

(assert (=> b!7133268 (= res!2910575 (dynLambda!28118 p!2111 (h!75583 l1!1495)))))

(declare-fun b!7133269 () Bool)

(assert (=> b!7133269 (= e!4286978 (forall!16933 (t!383236 l1!1495) p!2111))))

(assert (= (and d!2225915 (not res!2910574)) b!7133268))

(assert (= (and b!7133268 res!2910575) b!7133269))

(declare-fun b_lambda!272093 () Bool)

(assert (=> (not b_lambda!272093) (not b!7133268)))

(declare-fun t!383238 () Bool)

(declare-fun tb!262059 () Bool)

(assert (=> (and start!694932 (= p!2111 p!2111) t!383238) tb!262059))

(declare-fun result!349630 () Bool)

(assert (=> tb!262059 (= result!349630 true)))

(assert (=> b!7133268 t!383238))

(declare-fun b_and!350997 () Bool)

(assert (= b_and!350995 (and (=> t!383238 result!349630) b_and!350997)))

(declare-fun m!7850412 () Bool)

(assert (=> b!7133268 m!7850412))

(declare-fun m!7850414 () Bool)

(assert (=> b!7133269 m!7850414))

(assert (=> start!694932 d!2225915))

(declare-fun b!7133274 () Bool)

(declare-fun e!4286981 () Bool)

(declare-fun tp!1966256 () Bool)

(assert (=> b!7133274 (= e!4286981 (and tp_is_empty!45811 tp!1966256))))

(assert (=> b!7133251 (= tp!1966251 e!4286981)))

(assert (= (and b!7133251 ((_ is Cons!69135) (t!383236 l1!1495))) b!7133274))

(declare-fun b!7133275 () Bool)

(declare-fun e!4286982 () Bool)

(declare-fun tp!1966257 () Bool)

(assert (=> b!7133275 (= e!4286982 (and tp_is_empty!45811 tp!1966257))))

(assert (=> b!7133252 (= tp!1966252 e!4286982)))

(assert (= (and b!7133252 ((_ is Cons!69135) (t!383236 l2!1464))) b!7133275))

(declare-fun b_lambda!272095 () Bool)

(assert (= b_lambda!272093 (or (and start!694932 b_free!133825) b_lambda!272095)))

(check-sat b_and!350997 (not b!7133269) (not b!7133261) (not b!7133274) (not b!7133275) (not b!7133263) (not b_lambda!272095) tp_is_empty!45811 (not b_next!134615) (not b!7133259))
(check-sat b_and!350997 (not b_next!134615))
