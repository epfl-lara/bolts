; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405138 () Bool)

(assert start!405138)

(declare-fun b!4234247 () Bool)

(declare-fun e!2629086 () Bool)

(declare-datatypes ((B!2761 0))(
  ( (B!2762 (val!15082 Int)) )
))
(declare-datatypes ((List!46879 0))(
  ( (Nil!46755) (Cons!46755 (h!52175 B!2761) (t!349582 List!46879)) )
))
(declare-fun l!3106 () List!46879)

(declare-fun ListPrimitiveSize!311 (List!46879) Int)

(assert (=> b!4234247 (= e!2629086 (< (ListPrimitiveSize!311 l!3106) 0))))

(declare-fun b!4234248 () Bool)

(declare-fun e!2629085 () Bool)

(declare-fun tp_is_empty!22577 () Bool)

(declare-fun tp!1296592 () Bool)

(assert (=> b!4234248 (= e!2629085 (and tp_is_empty!22577 tp!1296592))))

(declare-fun b!4234246 () Bool)

(declare-fun res!1741513 () Bool)

(assert (=> b!4234246 (=> (not res!1741513) (not e!2629086))))

(declare-fun e1!42 () B!2761)

(declare-fun e2!42 () B!2761)

(declare-fun getIndex!898 (List!46879 B!2761) Int)

(assert (=> b!4234246 (= res!1741513 (= (getIndex!898 l!3106 e1!42) (getIndex!898 l!3106 e2!42)))))

(declare-fun res!1741512 () Bool)

(assert (=> start!405138 (=> (not res!1741512) (not e!2629086))))

(declare-fun contains!9699 (List!46879 B!2761) Bool)

(assert (=> start!405138 (= res!1741512 (contains!9699 l!3106 e1!42))))

(assert (=> start!405138 e!2629086))

(assert (=> start!405138 e!2629085))

(assert (=> start!405138 tp_is_empty!22577))

(declare-fun b!4234245 () Bool)

(declare-fun res!1741514 () Bool)

(assert (=> b!4234245 (=> (not res!1741514) (not e!2629086))))

(assert (=> b!4234245 (= res!1741514 (contains!9699 l!3106 e2!42))))

(assert (= (and start!405138 res!1741512) b!4234245))

(assert (= (and b!4234245 res!1741514) b!4234246))

(assert (= (and b!4234246 res!1741513) b!4234247))

(get-info :version)

(assert (= (and start!405138 ((_ is Cons!46755) l!3106)) b!4234248))

(declare-fun m!4820421 () Bool)

(assert (=> b!4234247 m!4820421))

(declare-fun m!4820423 () Bool)

(assert (=> b!4234246 m!4820423))

(declare-fun m!4820425 () Bool)

(assert (=> b!4234246 m!4820425))

(declare-fun m!4820427 () Bool)

(assert (=> start!405138 m!4820427))

(declare-fun m!4820429 () Bool)

(assert (=> b!4234245 m!4820429))

(check-sat (not b!4234247) (not b!4234246) (not start!405138) (not b!4234245) (not b!4234248) tp_is_empty!22577)
(check-sat)
(get-model)

(declare-fun d!1245949 () Bool)

(declare-fun lt!1505507 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7353 (List!46879) (InoxSet B!2761))

(assert (=> d!1245949 (= lt!1505507 (select (content!7353 l!3106) e2!42))))

(declare-fun e!2629100 () Bool)

(assert (=> d!1245949 (= lt!1505507 e!2629100)))

(declare-fun res!1741525 () Bool)

(assert (=> d!1245949 (=> (not res!1741525) (not e!2629100))))

(assert (=> d!1245949 (= res!1741525 ((_ is Cons!46755) l!3106))))

(assert (=> d!1245949 (= (contains!9699 l!3106 e2!42) lt!1505507)))

(declare-fun b!4234265 () Bool)

(declare-fun e!2629101 () Bool)

(assert (=> b!4234265 (= e!2629100 e!2629101)))

(declare-fun res!1741526 () Bool)

(assert (=> b!4234265 (=> res!1741526 e!2629101)))

(assert (=> b!4234265 (= res!1741526 (= (h!52175 l!3106) e2!42))))

(declare-fun b!4234266 () Bool)

(assert (=> b!4234266 (= e!2629101 (contains!9699 (t!349582 l!3106) e2!42))))

(assert (= (and d!1245949 res!1741525) b!4234265))

(assert (= (and b!4234265 (not res!1741526)) b!4234266))

(declare-fun m!4820439 () Bool)

(assert (=> d!1245949 m!4820439))

(declare-fun m!4820441 () Bool)

(assert (=> d!1245949 m!4820441))

(declare-fun m!4820443 () Bool)

(assert (=> b!4234266 m!4820443))

(assert (=> b!4234245 d!1245949))

(declare-fun b!4234292 () Bool)

(declare-fun e!2629116 () Int)

(declare-fun e!2629117 () Int)

(assert (=> b!4234292 (= e!2629116 e!2629117)))

(declare-fun c!719766 () Bool)

(assert (=> b!4234292 (= c!719766 (and ((_ is Cons!46755) l!3106) (not (= (h!52175 l!3106) e1!42))))))

(declare-fun b!4234293 () Bool)

(assert (=> b!4234293 (= e!2629117 (+ 1 (getIndex!898 (t!349582 l!3106) e1!42)))))

(declare-fun b!4234294 () Bool)

(assert (=> b!4234294 (= e!2629117 (- 1))))

(declare-fun d!1245955 () Bool)

(declare-fun lt!1505514 () Int)

(assert (=> d!1245955 (>= lt!1505514 0)))

(assert (=> d!1245955 (= lt!1505514 e!2629116)))

(declare-fun c!719765 () Bool)

(assert (=> d!1245955 (= c!719765 (and ((_ is Cons!46755) l!3106) (= (h!52175 l!3106) e1!42)))))

(assert (=> d!1245955 (contains!9699 l!3106 e1!42)))

(assert (=> d!1245955 (= (getIndex!898 l!3106 e1!42) lt!1505514)))

(declare-fun b!4234291 () Bool)

(assert (=> b!4234291 (= e!2629116 0)))

(assert (= (and d!1245955 c!719765) b!4234291))

(assert (= (and d!1245955 (not c!719765)) b!4234292))

(assert (= (and b!4234292 c!719766) b!4234293))

(assert (= (and b!4234292 (not c!719766)) b!4234294))

(declare-fun m!4820449 () Bool)

(assert (=> b!4234293 m!4820449))

(assert (=> d!1245955 m!4820427))

(assert (=> b!4234246 d!1245955))

(declare-fun b!4234298 () Bool)

(declare-fun e!2629120 () Int)

(declare-fun e!2629121 () Int)

(assert (=> b!4234298 (= e!2629120 e!2629121)))

(declare-fun c!719768 () Bool)

(assert (=> b!4234298 (= c!719768 (and ((_ is Cons!46755) l!3106) (not (= (h!52175 l!3106) e2!42))))))

(declare-fun b!4234299 () Bool)

(assert (=> b!4234299 (= e!2629121 (+ 1 (getIndex!898 (t!349582 l!3106) e2!42)))))

(declare-fun b!4234300 () Bool)

(assert (=> b!4234300 (= e!2629121 (- 1))))

(declare-fun d!1245961 () Bool)

(declare-fun lt!1505516 () Int)

(assert (=> d!1245961 (>= lt!1505516 0)))

(assert (=> d!1245961 (= lt!1505516 e!2629120)))

(declare-fun c!719767 () Bool)

(assert (=> d!1245961 (= c!719767 (and ((_ is Cons!46755) l!3106) (= (h!52175 l!3106) e2!42)))))

(assert (=> d!1245961 (contains!9699 l!3106 e2!42)))

(assert (=> d!1245961 (= (getIndex!898 l!3106 e2!42) lt!1505516)))

(declare-fun b!4234297 () Bool)

(assert (=> b!4234297 (= e!2629120 0)))

(assert (= (and d!1245961 c!719767) b!4234297))

(assert (= (and d!1245961 (not c!719767)) b!4234298))

(assert (= (and b!4234298 c!719768) b!4234299))

(assert (= (and b!4234298 (not c!719768)) b!4234300))

(declare-fun m!4820455 () Bool)

(assert (=> b!4234299 m!4820455))

(assert (=> d!1245961 m!4820429))

(assert (=> b!4234246 d!1245961))

(declare-fun d!1245963 () Bool)

(declare-fun lt!1505517 () Bool)

(assert (=> d!1245963 (= lt!1505517 (select (content!7353 l!3106) e1!42))))

(declare-fun e!2629124 () Bool)

(assert (=> d!1245963 (= lt!1505517 e!2629124)))

(declare-fun res!1741529 () Bool)

(assert (=> d!1245963 (=> (not res!1741529) (not e!2629124))))

(assert (=> d!1245963 (= res!1741529 ((_ is Cons!46755) l!3106))))

(assert (=> d!1245963 (= (contains!9699 l!3106 e1!42) lt!1505517)))

(declare-fun b!4234305 () Bool)

(declare-fun e!2629125 () Bool)

(assert (=> b!4234305 (= e!2629124 e!2629125)))

(declare-fun res!1741530 () Bool)

(assert (=> b!4234305 (=> res!1741530 e!2629125)))

(assert (=> b!4234305 (= res!1741530 (= (h!52175 l!3106) e1!42))))

(declare-fun b!4234306 () Bool)

(assert (=> b!4234306 (= e!2629125 (contains!9699 (t!349582 l!3106) e1!42))))

(assert (= (and d!1245963 res!1741529) b!4234305))

(assert (= (and b!4234305 (not res!1741530)) b!4234306))

(assert (=> d!1245963 m!4820439))

(declare-fun m!4820457 () Bool)

(assert (=> d!1245963 m!4820457))

(declare-fun m!4820459 () Bool)

(assert (=> b!4234306 m!4820459))

(assert (=> start!405138 d!1245963))

(declare-fun d!1245965 () Bool)

(declare-fun lt!1505520 () Int)

(assert (=> d!1245965 (>= lt!1505520 0)))

(declare-fun e!2629129 () Int)

(assert (=> d!1245965 (= lt!1505520 e!2629129)))

(declare-fun c!719771 () Bool)

(assert (=> d!1245965 (= c!719771 ((_ is Nil!46755) l!3106))))

(assert (=> d!1245965 (= (ListPrimitiveSize!311 l!3106) lt!1505520)))

(declare-fun b!4234312 () Bool)

(assert (=> b!4234312 (= e!2629129 0)))

(declare-fun b!4234313 () Bool)

(assert (=> b!4234313 (= e!2629129 (+ 1 (ListPrimitiveSize!311 (t!349582 l!3106))))))

(assert (= (and d!1245965 c!719771) b!4234312))

(assert (= (and d!1245965 (not c!719771)) b!4234313))

(declare-fun m!4820461 () Bool)

(assert (=> b!4234313 m!4820461))

(assert (=> b!4234247 d!1245965))

(declare-fun b!4234318 () Bool)

(declare-fun e!2629132 () Bool)

(declare-fun tp!1296598 () Bool)

(assert (=> b!4234318 (= e!2629132 (and tp_is_empty!22577 tp!1296598))))

(assert (=> b!4234248 (= tp!1296592 e!2629132)))

(assert (= (and b!4234248 ((_ is Cons!46755) (t!349582 l!3106))) b!4234318))

(check-sat (not b!4234299) (not b!4234266) (not b!4234318) tp_is_empty!22577 (not d!1245949) (not b!4234306) (not d!1245961) (not d!1245963) (not b!4234293) (not b!4234313) (not d!1245955))
(check-sat)
