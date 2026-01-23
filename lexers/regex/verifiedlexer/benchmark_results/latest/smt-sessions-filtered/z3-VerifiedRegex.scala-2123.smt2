; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107200 () Bool)

(assert start!107200)

(declare-fun b!1203648 () Bool)

(declare-fun res!542180 () Bool)

(declare-fun e!772221 () Bool)

(assert (=> b!1203648 (=> (not res!542180) (not e!772221))))

(declare-datatypes ((T!21936 0))(
  ( (T!21937 (val!3910 Int)) )
))
(declare-datatypes ((List!12089 0))(
  ( (Nil!12065) (Cons!12065 (h!17466 T!21936) (t!112505 List!12089)) )
))
(declare-fun r!2028 () List!12089)

(declare-fun until!61 () Int)

(declare-fun l!2744 () List!12089)

(declare-fun size!9605 (List!12089) Int)

(assert (=> b!1203648 (= res!542180 (<= until!61 (+ (size!9605 l!2744) (size!9605 r!2028))))))

(declare-fun b!1203649 () Bool)

(declare-fun res!542181 () Bool)

(assert (=> b!1203649 (=> (not res!542181) (not e!772221))))

(assert (=> b!1203649 (= res!542181 (and (not (= l!2744 Nil!12065)) (not (= r!2028 Nil!12065)) (= until!61 0)))))

(declare-fun res!542182 () Bool)

(assert (=> start!107200 (=> (not res!542182) (not e!772221))))

(declare-fun from!613 () Int)

(assert (=> start!107200 (= res!542182 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107200 e!772221))

(assert (=> start!107200 true))

(declare-fun e!772220 () Bool)

(assert (=> start!107200 e!772220))

(declare-fun e!772222 () Bool)

(assert (=> start!107200 e!772222))

(declare-fun b!1203650 () Bool)

(declare-fun tp_is_empty!6023 () Bool)

(declare-fun tp!341652 () Bool)

(assert (=> b!1203650 (= e!772222 (and tp_is_empty!6023 tp!341652))))

(declare-fun b!1203651 () Bool)

(declare-fun ++!3097 (List!12089 List!12089) List!12089)

(assert (=> b!1203651 (= e!772221 (> until!61 (size!9605 (++!3097 l!2744 r!2028))))))

(declare-fun b!1203652 () Bool)

(declare-fun tp!341653 () Bool)

(assert (=> b!1203652 (= e!772220 (and tp_is_empty!6023 tp!341653))))

(assert (= (and start!107200 res!542182) b!1203648))

(assert (= (and b!1203648 res!542180) b!1203649))

(assert (= (and b!1203649 res!542181) b!1203651))

(get-info :version)

(assert (= (and start!107200 ((_ is Cons!12065) l!2744)) b!1203652))

(assert (= (and start!107200 ((_ is Cons!12065) r!2028)) b!1203650))

(declare-fun m!1379313 () Bool)

(assert (=> b!1203648 m!1379313))

(declare-fun m!1379315 () Bool)

(assert (=> b!1203648 m!1379315))

(declare-fun m!1379317 () Bool)

(assert (=> b!1203651 m!1379317))

(assert (=> b!1203651 m!1379317))

(declare-fun m!1379319 () Bool)

(assert (=> b!1203651 m!1379319))

(check-sat (not b!1203648) (not b!1203652) (not b!1203651) tp_is_empty!6023 (not b!1203650))
(check-sat)
(get-model)

(declare-fun d!344154 () Bool)

(declare-fun lt!411431 () Int)

(assert (=> d!344154 (>= lt!411431 0)))

(declare-fun e!772225 () Int)

(assert (=> d!344154 (= lt!411431 e!772225)))

(declare-fun c!200909 () Bool)

(assert (=> d!344154 (= c!200909 ((_ is Nil!12065) (++!3097 l!2744 r!2028)))))

(assert (=> d!344154 (= (size!9605 (++!3097 l!2744 r!2028)) lt!411431)))

(declare-fun b!1203657 () Bool)

(assert (=> b!1203657 (= e!772225 0)))

(declare-fun b!1203658 () Bool)

(assert (=> b!1203658 (= e!772225 (+ 1 (size!9605 (t!112505 (++!3097 l!2744 r!2028)))))))

(assert (= (and d!344154 c!200909) b!1203657))

(assert (= (and d!344154 (not c!200909)) b!1203658))

(declare-fun m!1379321 () Bool)

(assert (=> b!1203658 m!1379321))

(assert (=> b!1203651 d!344154))

(declare-fun e!772234 () Bool)

(declare-fun b!1203676 () Bool)

(declare-fun lt!411437 () List!12089)

(assert (=> b!1203676 (= e!772234 (or (not (= r!2028 Nil!12065)) (= lt!411437 l!2744)))))

(declare-fun b!1203674 () Bool)

(declare-fun e!772233 () List!12089)

(assert (=> b!1203674 (= e!772233 (Cons!12065 (h!17466 l!2744) (++!3097 (t!112505 l!2744) r!2028)))))

(declare-fun d!344156 () Bool)

(assert (=> d!344156 e!772234))

(declare-fun res!542188 () Bool)

(assert (=> d!344156 (=> (not res!542188) (not e!772234))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1699 (List!12089) (InoxSet T!21936))

(assert (=> d!344156 (= res!542188 (= (content!1699 lt!411437) ((_ map or) (content!1699 l!2744) (content!1699 r!2028))))))

(assert (=> d!344156 (= lt!411437 e!772233)))

(declare-fun c!200915 () Bool)

(assert (=> d!344156 (= c!200915 ((_ is Nil!12065) l!2744))))

(assert (=> d!344156 (= (++!3097 l!2744 r!2028) lt!411437)))

(declare-fun b!1203675 () Bool)

(declare-fun res!542187 () Bool)

(assert (=> b!1203675 (=> (not res!542187) (not e!772234))))

(assert (=> b!1203675 (= res!542187 (= (size!9605 lt!411437) (+ (size!9605 l!2744) (size!9605 r!2028))))))

(declare-fun b!1203673 () Bool)

(assert (=> b!1203673 (= e!772233 r!2028)))

(assert (= (and d!344156 c!200915) b!1203673))

(assert (= (and d!344156 (not c!200915)) b!1203674))

(assert (= (and d!344156 res!542188) b!1203675))

(assert (= (and b!1203675 res!542187) b!1203676))

(declare-fun m!1379327 () Bool)

(assert (=> b!1203674 m!1379327))

(declare-fun m!1379329 () Bool)

(assert (=> d!344156 m!1379329))

(declare-fun m!1379331 () Bool)

(assert (=> d!344156 m!1379331))

(declare-fun m!1379333 () Bool)

(assert (=> d!344156 m!1379333))

(declare-fun m!1379335 () Bool)

(assert (=> b!1203675 m!1379335))

(assert (=> b!1203675 m!1379313))

(assert (=> b!1203675 m!1379315))

(assert (=> b!1203651 d!344156))

(declare-fun d!344164 () Bool)

(declare-fun lt!411440 () Int)

(assert (=> d!344164 (>= lt!411440 0)))

(declare-fun e!772237 () Int)

(assert (=> d!344164 (= lt!411440 e!772237)))

(declare-fun c!200918 () Bool)

(assert (=> d!344164 (= c!200918 ((_ is Nil!12065) l!2744))))

(assert (=> d!344164 (= (size!9605 l!2744) lt!411440)))

(declare-fun b!1203681 () Bool)

(assert (=> b!1203681 (= e!772237 0)))

(declare-fun b!1203682 () Bool)

(assert (=> b!1203682 (= e!772237 (+ 1 (size!9605 (t!112505 l!2744))))))

(assert (= (and d!344164 c!200918) b!1203681))

(assert (= (and d!344164 (not c!200918)) b!1203682))

(declare-fun m!1379339 () Bool)

(assert (=> b!1203682 m!1379339))

(assert (=> b!1203648 d!344164))

(declare-fun d!344168 () Bool)

(declare-fun lt!411441 () Int)

(assert (=> d!344168 (>= lt!411441 0)))

(declare-fun e!772238 () Int)

(assert (=> d!344168 (= lt!411441 e!772238)))

(declare-fun c!200919 () Bool)

(assert (=> d!344168 (= c!200919 ((_ is Nil!12065) r!2028))))

(assert (=> d!344168 (= (size!9605 r!2028) lt!411441)))

(declare-fun b!1203683 () Bool)

(assert (=> b!1203683 (= e!772238 0)))

(declare-fun b!1203684 () Bool)

(assert (=> b!1203684 (= e!772238 (+ 1 (size!9605 (t!112505 r!2028))))))

(assert (= (and d!344168 c!200919) b!1203683))

(assert (= (and d!344168 (not c!200919)) b!1203684))

(declare-fun m!1379341 () Bool)

(assert (=> b!1203684 m!1379341))

(assert (=> b!1203648 d!344168))

(declare-fun b!1203689 () Bool)

(declare-fun e!772241 () Bool)

(declare-fun tp!341656 () Bool)

(assert (=> b!1203689 (= e!772241 (and tp_is_empty!6023 tp!341656))))

(assert (=> b!1203652 (= tp!341653 e!772241)))

(assert (= (and b!1203652 ((_ is Cons!12065) (t!112505 l!2744))) b!1203689))

(declare-fun b!1203690 () Bool)

(declare-fun e!772242 () Bool)

(declare-fun tp!341657 () Bool)

(assert (=> b!1203690 (= e!772242 (and tp_is_empty!6023 tp!341657))))

(assert (=> b!1203650 (= tp!341652 e!772242)))

(assert (= (and b!1203650 ((_ is Cons!12065) (t!112505 r!2028))) b!1203690))

(check-sat tp_is_empty!6023 (not b!1203689) (not b!1203684) (not b!1203682) (not b!1203658) (not b!1203690) (not b!1203675) (not d!344156) (not b!1203674))
(check-sat)
