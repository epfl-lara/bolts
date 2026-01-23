; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107172 () Bool)

(assert start!107172)

(declare-fun b!1203478 () Bool)

(declare-fun e!772088 () Bool)

(declare-fun tp_is_empty!6003 () Bool)

(declare-fun tp!341584 () Bool)

(assert (=> b!1203478 (= e!772088 (and tp_is_empty!6003 tp!341584))))

(declare-fun b!1203479 () Bool)

(declare-fun res!542116 () Bool)

(declare-fun e!772090 () Bool)

(assert (=> b!1203479 (=> (not res!542116) (not e!772090))))

(declare-datatypes ((T!21866 0))(
  ( (T!21867 (val!3900 Int)) )
))
(declare-datatypes ((List!12079 0))(
  ( (Nil!12055) (Cons!12055 (h!17456 T!21866) (t!112495 List!12079)) )
))
(declare-fun l!2744 () List!12079)

(declare-fun r!2028 () List!12079)

(assert (=> b!1203479 (= res!542116 (or (= l!2744 Nil!12055) (= r!2028 Nil!12055)))))

(declare-fun b!1203480 () Bool)

(declare-fun e!772089 () Bool)

(declare-fun tp!341585 () Bool)

(assert (=> b!1203480 (= e!772089 (and tp_is_empty!6003 tp!341585))))

(declare-fun res!542114 () Bool)

(assert (=> start!107172 (=> (not res!542114) (not e!772090))))

(declare-fun from!613 () Int)

(declare-fun until!61 () Int)

(assert (=> start!107172 (= res!542114 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107172 e!772090))

(assert (=> start!107172 true))

(assert (=> start!107172 e!772089))

(assert (=> start!107172 e!772088))

(declare-fun b!1203481 () Bool)

(declare-fun size!9595 (List!12079) Int)

(declare-fun ++!3095 (List!12079 List!12079) List!12079)

(assert (=> b!1203481 (= e!772090 (> until!61 (size!9595 (++!3095 l!2744 r!2028))))))

(declare-fun b!1203482 () Bool)

(declare-fun res!542115 () Bool)

(assert (=> b!1203482 (=> (not res!542115) (not e!772090))))

(assert (=> b!1203482 (= res!542115 (<= until!61 (+ (size!9595 l!2744) (size!9595 r!2028))))))

(assert (= (and start!107172 res!542114) b!1203482))

(assert (= (and b!1203482 res!542115) b!1203479))

(assert (= (and b!1203479 res!542116) b!1203481))

(get-info :version)

(assert (= (and start!107172 ((_ is Cons!12055) l!2744)) b!1203480))

(assert (= (and start!107172 ((_ is Cons!12055) r!2028)) b!1203478))

(declare-fun m!1379229 () Bool)

(assert (=> b!1203481 m!1379229))

(assert (=> b!1203481 m!1379229))

(declare-fun m!1379231 () Bool)

(assert (=> b!1203481 m!1379231))

(declare-fun m!1379233 () Bool)

(assert (=> b!1203482 m!1379233))

(declare-fun m!1379235 () Bool)

(assert (=> b!1203482 m!1379235))

(check-sat (not b!1203478) (not b!1203480) (not b!1203482) (not b!1203481) tp_is_empty!6003)
(check-sat)
(get-model)

(declare-fun d!344133 () Bool)

(declare-fun lt!411364 () Int)

(assert (=> d!344133 (>= lt!411364 0)))

(declare-fun e!772096 () Int)

(assert (=> d!344133 (= lt!411364 e!772096)))

(declare-fun c!200896 () Bool)

(assert (=> d!344133 (= c!200896 ((_ is Nil!12055) (++!3095 l!2744 r!2028)))))

(assert (=> d!344133 (= (size!9595 (++!3095 l!2744 r!2028)) lt!411364)))

(declare-fun b!1203495 () Bool)

(assert (=> b!1203495 (= e!772096 0)))

(declare-fun b!1203496 () Bool)

(assert (=> b!1203496 (= e!772096 (+ 1 (size!9595 (t!112495 (++!3095 l!2744 r!2028)))))))

(assert (= (and d!344133 c!200896) b!1203495))

(assert (= (and d!344133 (not c!200896)) b!1203496))

(declare-fun m!1379239 () Bool)

(assert (=> b!1203496 m!1379239))

(assert (=> b!1203481 d!344133))

(declare-fun b!1203528 () Bool)

(declare-fun lt!411372 () List!12079)

(declare-fun e!772114 () Bool)

(assert (=> b!1203528 (= e!772114 (or (not (= r!2028 Nil!12055)) (= lt!411372 l!2744)))))

(declare-fun b!1203526 () Bool)

(declare-fun e!772113 () List!12079)

(assert (=> b!1203526 (= e!772113 (Cons!12055 (h!17456 l!2744) (++!3095 (t!112495 l!2744) r!2028)))))

(declare-fun d!344139 () Bool)

(assert (=> d!344139 e!772114))

(declare-fun res!542128 () Bool)

(assert (=> d!344139 (=> (not res!542128) (not e!772114))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1698 (List!12079) (InoxSet T!21866))

(assert (=> d!344139 (= res!542128 (= (content!1698 lt!411372) ((_ map or) (content!1698 l!2744) (content!1698 r!2028))))))

(assert (=> d!344139 (= lt!411372 e!772113)))

(declare-fun c!200904 () Bool)

(assert (=> d!344139 (= c!200904 ((_ is Nil!12055) l!2744))))

(assert (=> d!344139 (= (++!3095 l!2744 r!2028) lt!411372)))

(declare-fun b!1203527 () Bool)

(declare-fun res!542127 () Bool)

(assert (=> b!1203527 (=> (not res!542127) (not e!772114))))

(assert (=> b!1203527 (= res!542127 (= (size!9595 lt!411372) (+ (size!9595 l!2744) (size!9595 r!2028))))))

(declare-fun b!1203525 () Bool)

(assert (=> b!1203525 (= e!772113 r!2028)))

(assert (= (and d!344139 c!200904) b!1203525))

(assert (= (and d!344139 (not c!200904)) b!1203526))

(assert (= (and d!344139 res!542128) b!1203527))

(assert (= (and b!1203527 res!542127) b!1203528))

(declare-fun m!1379255 () Bool)

(assert (=> b!1203526 m!1379255))

(declare-fun m!1379257 () Bool)

(assert (=> d!344139 m!1379257))

(declare-fun m!1379259 () Bool)

(assert (=> d!344139 m!1379259))

(declare-fun m!1379261 () Bool)

(assert (=> d!344139 m!1379261))

(declare-fun m!1379263 () Bool)

(assert (=> b!1203527 m!1379263))

(assert (=> b!1203527 m!1379233))

(assert (=> b!1203527 m!1379235))

(assert (=> b!1203481 d!344139))

(declare-fun d!344145 () Bool)

(declare-fun lt!411373 () Int)

(assert (=> d!344145 (>= lt!411373 0)))

(declare-fun e!772115 () Int)

(assert (=> d!344145 (= lt!411373 e!772115)))

(declare-fun c!200905 () Bool)

(assert (=> d!344145 (= c!200905 ((_ is Nil!12055) l!2744))))

(assert (=> d!344145 (= (size!9595 l!2744) lt!411373)))

(declare-fun b!1203529 () Bool)

(assert (=> b!1203529 (= e!772115 0)))

(declare-fun b!1203530 () Bool)

(assert (=> b!1203530 (= e!772115 (+ 1 (size!9595 (t!112495 l!2744))))))

(assert (= (and d!344145 c!200905) b!1203529))

(assert (= (and d!344145 (not c!200905)) b!1203530))

(declare-fun m!1379265 () Bool)

(assert (=> b!1203530 m!1379265))

(assert (=> b!1203482 d!344145))

(declare-fun d!344147 () Bool)

(declare-fun lt!411374 () Int)

(assert (=> d!344147 (>= lt!411374 0)))

(declare-fun e!772116 () Int)

(assert (=> d!344147 (= lt!411374 e!772116)))

(declare-fun c!200906 () Bool)

(assert (=> d!344147 (= c!200906 ((_ is Nil!12055) r!2028))))

(assert (=> d!344147 (= (size!9595 r!2028) lt!411374)))

(declare-fun b!1203531 () Bool)

(assert (=> b!1203531 (= e!772116 0)))

(declare-fun b!1203532 () Bool)

(assert (=> b!1203532 (= e!772116 (+ 1 (size!9595 (t!112495 r!2028))))))

(assert (= (and d!344147 c!200906) b!1203531))

(assert (= (and d!344147 (not c!200906)) b!1203532))

(declare-fun m!1379267 () Bool)

(assert (=> b!1203532 m!1379267))

(assert (=> b!1203482 d!344147))

(declare-fun b!1203537 () Bool)

(declare-fun e!772119 () Bool)

(declare-fun tp!341592 () Bool)

(assert (=> b!1203537 (= e!772119 (and tp_is_empty!6003 tp!341592))))

(assert (=> b!1203480 (= tp!341585 e!772119)))

(assert (= (and b!1203480 ((_ is Cons!12055) (t!112495 l!2744))) b!1203537))

(declare-fun b!1203538 () Bool)

(declare-fun e!772120 () Bool)

(declare-fun tp!341593 () Bool)

(assert (=> b!1203538 (= e!772120 (and tp_is_empty!6003 tp!341593))))

(assert (=> b!1203478 (= tp!341584 e!772120)))

(assert (= (and b!1203478 ((_ is Cons!12055) (t!112495 r!2028))) b!1203538))

(check-sat (not b!1203538) (not b!1203496) (not b!1203532) (not b!1203537) (not b!1203530) (not b!1203527) (not b!1203526) (not d!344139) tp_is_empty!6003)
(check-sat)
