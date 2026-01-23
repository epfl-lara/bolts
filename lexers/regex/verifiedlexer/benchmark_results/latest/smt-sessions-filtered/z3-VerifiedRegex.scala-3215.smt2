; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187320 () Bool)

(assert start!187320)

(declare-fun res!837613 () Bool)

(declare-fun e!1193664 () Bool)

(assert (=> start!187320 (=> (not res!837613) (not e!1193664))))

(declare-datatypes ((T!33284 0))(
  ( (T!33285 (val!5966 Int)) )
))
(declare-datatypes ((List!20783 0))(
  ( (Nil!20701) (Cons!20701 (h!26102 T!33284) (t!173000 List!20783)) )
))
(declare-fun l!2791 () List!20783)

(declare-fun size!16434 (List!20783) Int)

(assert (=> start!187320 (= res!837613 (> (size!16434 l!2791) 0))))

(assert (=> start!187320 e!1193664))

(declare-fun e!1193665 () Bool)

(assert (=> start!187320 e!1193665))

(declare-fun b!1871013 () Bool)

(get-info :version)

(assert (=> b!1871013 (= e!1193664 (and ((_ is Nil!20701) l!2791) (= l!2791 Nil!20701)))))

(declare-fun b!1871014 () Bool)

(declare-fun tp_is_empty!8711 () Bool)

(declare-fun tp!532265 () Bool)

(assert (=> b!1871014 (= e!1193665 (and tp_is_empty!8711 tp!532265))))

(assert (= (and start!187320 res!837613) b!1871013))

(assert (= (and start!187320 ((_ is Cons!20701) l!2791)) b!1871014))

(declare-fun m!2297149 () Bool)

(assert (=> start!187320 m!2297149))

(check-sat (not start!187320) (not b!1871014) tp_is_empty!8711)
(check-sat)
(get-model)

(declare-fun d!572042 () Bool)

(declare-fun lt!719287 () Int)

(assert (=> d!572042 (>= lt!719287 0)))

(declare-fun e!1193673 () Int)

(assert (=> d!572042 (= lt!719287 e!1193673)))

(declare-fun c!304889 () Bool)

(assert (=> d!572042 (= c!304889 ((_ is Nil!20701) l!2791))))

(assert (=> d!572042 (= (size!16434 l!2791) lt!719287)))

(declare-fun b!1871029 () Bool)

(assert (=> b!1871029 (= e!1193673 0)))

(declare-fun b!1871030 () Bool)

(assert (=> b!1871030 (= e!1193673 (+ 1 (size!16434 (t!173000 l!2791))))))

(assert (= (and d!572042 c!304889) b!1871029))

(assert (= (and d!572042 (not c!304889)) b!1871030))

(declare-fun m!2297153 () Bool)

(assert (=> b!1871030 m!2297153))

(assert (=> start!187320 d!572042))

(declare-fun b!1871036 () Bool)

(declare-fun e!1193677 () Bool)

(declare-fun tp!532271 () Bool)

(assert (=> b!1871036 (= e!1193677 (and tp_is_empty!8711 tp!532271))))

(assert (=> b!1871014 (= tp!532265 e!1193677)))

(assert (= (and b!1871014 ((_ is Cons!20701) (t!173000 l!2791))) b!1871036))

(check-sat (not b!1871030) (not b!1871036) tp_is_empty!8711)
(check-sat)
