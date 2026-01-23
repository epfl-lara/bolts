; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!276380 () Bool)

(assert start!276380)

(declare-fun b!2841606 () Bool)

(declare-fun res!1182206 () Bool)

(declare-fun e!1800263 () Bool)

(assert (=> b!2841606 (=> (not res!1182206) (not e!1800263))))

(declare-fun i!849 () Int)

(declare-datatypes ((B!2533 0))(
  ( (B!2534 (val!10570 Int)) )
))
(declare-datatypes ((List!33782 0))(
  ( (Nil!33658) (Cons!33658 (h!39078 B!2533) (t!232627 List!33782)) )
))
(declare-fun l!2988 () List!33782)

(declare-fun size!26127 (List!33782) Int)

(assert (=> b!2841606 (= res!1182206 (<= i!849 (size!26127 l!2988)))))

(declare-fun b!2841607 () Bool)

(declare-fun res!1182203 () Bool)

(assert (=> b!2841607 (=> (not res!1182203) (not e!1800263))))

(get-info :version)

(assert (=> b!2841607 (= res!1182203 (and (not ((_ is Nil!33658) l!2988)) (> i!849 0)))))

(declare-fun res!1182204 () Bool)

(assert (=> start!276380 (=> (not res!1182204) (not e!1800263))))

(assert (=> start!276380 (= res!1182204 (>= i!849 0))))

(assert (=> start!276380 e!1800263))

(assert (=> start!276380 true))

(declare-fun e!1800262 () Bool)

(assert (=> start!276380 e!1800262))

(declare-fun b!2841608 () Bool)

(declare-fun e!1800261 () Bool)

(assert (=> b!2841608 (= e!1800263 e!1800261)))

(declare-fun res!1182205 () Bool)

(assert (=> b!2841608 (=> res!1182205 e!1800261)))

(assert (=> b!2841608 (= res!1182205 (< (- i!849 1) 0))))

(declare-fun b!2841609 () Bool)

(assert (=> b!2841609 (= e!1800261 (> (- i!849 1) (size!26127 (t!232627 l!2988))))))

(declare-fun b!2841610 () Bool)

(declare-fun tp_is_empty!14663 () Bool)

(declare-fun tp!910314 () Bool)

(assert (=> b!2841610 (= e!1800262 (and tp_is_empty!14663 tp!910314))))

(assert (= (and start!276380 res!1182204) b!2841606))

(assert (= (and b!2841606 res!1182206) b!2841607))

(assert (= (and b!2841607 res!1182203) b!2841608))

(assert (= (and b!2841608 (not res!1182205)) b!2841609))

(assert (= (and start!276380 ((_ is Cons!33658) l!2988)) b!2841610))

(declare-fun m!3269487 () Bool)

(assert (=> b!2841606 m!3269487))

(declare-fun m!3269489 () Bool)

(assert (=> b!2841609 m!3269489))

(check-sat (not b!2841609) (not b!2841606) (not b!2841610) tp_is_empty!14663)
(check-sat)
(get-model)

(declare-fun d!823892 () Bool)

(declare-fun lt!1011658 () Int)

(assert (=> d!823892 (>= lt!1011658 0)))

(declare-fun e!1800266 () Int)

(assert (=> d!823892 (= lt!1011658 e!1800266)))

(declare-fun c!458702 () Bool)

(assert (=> d!823892 (= c!458702 ((_ is Nil!33658) (t!232627 l!2988)))))

(assert (=> d!823892 (= (size!26127 (t!232627 l!2988)) lt!1011658)))

(declare-fun b!2841615 () Bool)

(assert (=> b!2841615 (= e!1800266 0)))

(declare-fun b!2841616 () Bool)

(assert (=> b!2841616 (= e!1800266 (+ 1 (size!26127 (t!232627 (t!232627 l!2988)))))))

(assert (= (and d!823892 c!458702) b!2841615))

(assert (= (and d!823892 (not c!458702)) b!2841616))

(declare-fun m!3269491 () Bool)

(assert (=> b!2841616 m!3269491))

(assert (=> b!2841609 d!823892))

(declare-fun d!823894 () Bool)

(declare-fun lt!1011659 () Int)

(assert (=> d!823894 (>= lt!1011659 0)))

(declare-fun e!1800267 () Int)

(assert (=> d!823894 (= lt!1011659 e!1800267)))

(declare-fun c!458703 () Bool)

(assert (=> d!823894 (= c!458703 ((_ is Nil!33658) l!2988))))

(assert (=> d!823894 (= (size!26127 l!2988) lt!1011659)))

(declare-fun b!2841617 () Bool)

(assert (=> b!2841617 (= e!1800267 0)))

(declare-fun b!2841618 () Bool)

(assert (=> b!2841618 (= e!1800267 (+ 1 (size!26127 (t!232627 l!2988))))))

(assert (= (and d!823894 c!458703) b!2841617))

(assert (= (and d!823894 (not c!458703)) b!2841618))

(assert (=> b!2841618 m!3269489))

(assert (=> b!2841606 d!823894))

(declare-fun b!2841623 () Bool)

(declare-fun e!1800270 () Bool)

(declare-fun tp!910317 () Bool)

(assert (=> b!2841623 (= e!1800270 (and tp_is_empty!14663 tp!910317))))

(assert (=> b!2841610 (= tp!910314 e!1800270)))

(assert (= (and b!2841610 ((_ is Cons!33658) (t!232627 l!2988))) b!2841623))

(check-sat (not b!2841618) (not b!2841616) (not b!2841623) tp_is_empty!14663)
(check-sat)
