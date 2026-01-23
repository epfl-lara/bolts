; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13154 () Bool)

(assert start!13154)

(declare-fun b!127954 () Bool)

(declare-fun e!73526 () Bool)

(declare-fun tp_is_empty!1253 () Bool)

(declare-fun tp!69787 () Bool)

(assert (=> b!127954 (= e!73526 (and tp_is_empty!1253 tp!69787))))

(declare-fun b!127955 () Bool)

(declare-fun e!73524 () Bool)

(declare-fun tp!69786 () Bool)

(assert (=> b!127955 (= e!73524 (and tp_is_empty!1253 tp!69786))))

(declare-fun res!59038 () Bool)

(declare-fun e!73525 () Bool)

(assert (=> start!13154 (=> (not res!59038) (not e!73525))))

(declare-datatypes ((B!645 0))(
  ( (B!646 (val!786 Int)) )
))
(declare-datatypes ((List!2117 0))(
  ( (Nil!2111) (Cons!2111 (h!7508 B!645) (t!22693 List!2117)) )
))
(declare-fun s!1511 () List!2117)

(declare-fun l!3367 () List!2117)

(declare-fun p!1997 () List!2117)

(declare-fun ++!408 (List!2117 List!2117) List!2117)

(assert (=> start!13154 (= res!59038 (= (++!408 p!1997 s!1511) l!3367))))

(assert (=> start!13154 e!73525))

(assert (=> start!13154 e!73526))

(assert (=> start!13154 e!73524))

(declare-fun e!73527 () Bool)

(assert (=> start!13154 e!73527))

(declare-fun b!127956 () Bool)

(declare-fun res!59037 () Bool)

(assert (=> b!127956 (=> (not res!59037) (not e!73525))))

(declare-fun isEmpty!841 (List!2117) Bool)

(assert (=> b!127956 (= res!59037 (not (isEmpty!841 s!1511)))))

(declare-fun b!127957 () Bool)

(declare-fun ListPrimitiveSize!14 (List!2117) Int)

(assert (=> b!127957 (= e!73525 (< (ListPrimitiveSize!14 p!1997) 0))))

(declare-fun b!127958 () Bool)

(declare-fun tp!69785 () Bool)

(assert (=> b!127958 (= e!73527 (and tp_is_empty!1253 tp!69785))))

(assert (= (and start!13154 res!59038) b!127956))

(assert (= (and b!127956 res!59037) b!127957))

(get-info :version)

(assert (= (and start!13154 ((_ is Cons!2111) p!1997)) b!127954))

(assert (= (and start!13154 ((_ is Cons!2111) s!1511)) b!127955))

(assert (= (and start!13154 ((_ is Cons!2111) l!3367)) b!127958))

(declare-fun m!112701 () Bool)

(assert (=> start!13154 m!112701))

(declare-fun m!112703 () Bool)

(assert (=> b!127956 m!112703))

(declare-fun m!112705 () Bool)

(assert (=> b!127957 m!112705))

(check-sat (not b!127958) (not b!127954) tp_is_empty!1253 (not b!127957) (not b!127955) (not b!127956) (not start!13154))
(check-sat)
(get-model)

(declare-fun d!30198 () Bool)

(assert (=> d!30198 (= (isEmpty!841 s!1511) ((_ is Nil!2111) s!1511))))

(assert (=> b!127956 d!30198))

(declare-fun d!30200 () Bool)

(declare-fun e!73532 () Bool)

(assert (=> d!30200 e!73532))

(declare-fun res!59043 () Bool)

(assert (=> d!30200 (=> (not res!59043) (not e!73532))))

(declare-fun lt!38314 () List!2117)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!247 (List!2117) (InoxSet B!645))

(assert (=> d!30200 (= res!59043 (= (content!247 lt!38314) ((_ map or) (content!247 p!1997) (content!247 s!1511))))))

(declare-fun e!73533 () List!2117)

(assert (=> d!30200 (= lt!38314 e!73533)))

(declare-fun c!27975 () Bool)

(assert (=> d!30200 (= c!27975 ((_ is Nil!2111) p!1997))))

(assert (=> d!30200 (= (++!408 p!1997 s!1511) lt!38314)))

(declare-fun b!127968 () Bool)

(assert (=> b!127968 (= e!73533 (Cons!2111 (h!7508 p!1997) (++!408 (t!22693 p!1997) s!1511)))))

(declare-fun b!127969 () Bool)

(declare-fun res!59044 () Bool)

(assert (=> b!127969 (=> (not res!59044) (not e!73532))))

(declare-fun size!1929 (List!2117) Int)

(assert (=> b!127969 (= res!59044 (= (size!1929 lt!38314) (+ (size!1929 p!1997) (size!1929 s!1511))))))

(declare-fun b!127967 () Bool)

(assert (=> b!127967 (= e!73533 s!1511)))

(declare-fun b!127970 () Bool)

(assert (=> b!127970 (= e!73532 (or (not (= s!1511 Nil!2111)) (= lt!38314 p!1997)))))

(assert (= (and d!30200 c!27975) b!127967))

(assert (= (and d!30200 (not c!27975)) b!127968))

(assert (= (and d!30200 res!59043) b!127969))

(assert (= (and b!127969 res!59044) b!127970))

(declare-fun m!112707 () Bool)

(assert (=> d!30200 m!112707))

(declare-fun m!112709 () Bool)

(assert (=> d!30200 m!112709))

(declare-fun m!112711 () Bool)

(assert (=> d!30200 m!112711))

(declare-fun m!112713 () Bool)

(assert (=> b!127968 m!112713))

(declare-fun m!112715 () Bool)

(assert (=> b!127969 m!112715))

(declare-fun m!112717 () Bool)

(assert (=> b!127969 m!112717))

(declare-fun m!112719 () Bool)

(assert (=> b!127969 m!112719))

(assert (=> start!13154 d!30200))

(declare-fun d!30204 () Bool)

(declare-fun lt!38317 () Int)

(assert (=> d!30204 (>= lt!38317 0)))

(declare-fun e!73536 () Int)

(assert (=> d!30204 (= lt!38317 e!73536)))

(declare-fun c!27978 () Bool)

(assert (=> d!30204 (= c!27978 ((_ is Nil!2111) p!1997))))

(assert (=> d!30204 (= (ListPrimitiveSize!14 p!1997) lt!38317)))

(declare-fun b!127975 () Bool)

(assert (=> b!127975 (= e!73536 0)))

(declare-fun b!127976 () Bool)

(assert (=> b!127976 (= e!73536 (+ 1 (ListPrimitiveSize!14 (t!22693 p!1997))))))

(assert (= (and d!30204 c!27978) b!127975))

(assert (= (and d!30204 (not c!27978)) b!127976))

(declare-fun m!112721 () Bool)

(assert (=> b!127976 m!112721))

(assert (=> b!127957 d!30204))

(declare-fun b!127981 () Bool)

(declare-fun e!73539 () Bool)

(declare-fun tp!69790 () Bool)

(assert (=> b!127981 (= e!73539 (and tp_is_empty!1253 tp!69790))))

(assert (=> b!127955 (= tp!69786 e!73539)))

(assert (= (and b!127955 ((_ is Cons!2111) (t!22693 s!1511))) b!127981))

(declare-fun b!127982 () Bool)

(declare-fun e!73540 () Bool)

(declare-fun tp!69791 () Bool)

(assert (=> b!127982 (= e!73540 (and tp_is_empty!1253 tp!69791))))

(assert (=> b!127954 (= tp!69787 e!73540)))

(assert (= (and b!127954 ((_ is Cons!2111) (t!22693 p!1997))) b!127982))

(declare-fun b!127983 () Bool)

(declare-fun e!73541 () Bool)

(declare-fun tp!69792 () Bool)

(assert (=> b!127983 (= e!73541 (and tp_is_empty!1253 tp!69792))))

(assert (=> b!127958 (= tp!69785 e!73541)))

(assert (= (and b!127958 ((_ is Cons!2111) (t!22693 l!3367))) b!127983))

(check-sat (not d!30200) tp_is_empty!1253 (not b!127981) (not b!127982) (not b!127968) (not b!127969) (not b!127976) (not b!127983))
(check-sat)
