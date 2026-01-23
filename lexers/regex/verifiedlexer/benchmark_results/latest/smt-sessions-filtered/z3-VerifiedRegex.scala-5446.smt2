; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!276388 () Bool)

(assert start!276388)

(declare-fun b!2841662 () Bool)

(declare-fun e!1800289 () Bool)

(declare-fun tp_is_empty!14667 () Bool)

(declare-fun tp!910326 () Bool)

(assert (=> b!2841662 (= e!1800289 (and tp_is_empty!14667 tp!910326))))

(declare-fun res!1182228 () Bool)

(declare-fun e!1800288 () Bool)

(assert (=> start!276388 (=> (not res!1182228) (not e!1800288))))

(declare-fun i!849 () Int)

(assert (=> start!276388 (= res!1182228 (>= i!849 0))))

(assert (=> start!276388 e!1800288))

(assert (=> start!276388 true))

(assert (=> start!276388 e!1800289))

(declare-fun b!2841663 () Bool)

(declare-fun res!1182230 () Bool)

(assert (=> b!2841663 (=> (not res!1182230) (not e!1800288))))

(declare-datatypes ((B!2537 0))(
  ( (B!2538 (val!10572 Int)) )
))
(declare-datatypes ((List!33784 0))(
  ( (Nil!33660) (Cons!33660 (h!39080 B!2537) (t!232629 List!33784)) )
))
(declare-fun l!2988 () List!33784)

(declare-fun size!26129 (List!33784) Int)

(assert (=> b!2841663 (= res!1182230 (<= i!849 (size!26129 l!2988)))))

(declare-fun b!2841664 () Bool)

(declare-fun res!1182227 () Bool)

(assert (=> b!2841664 (=> (not res!1182227) (not e!1800288))))

(assert (=> b!2841664 (= res!1182227 (<= (- i!849 1) (size!26129 (t!232629 l!2988))))))

(declare-fun b!2841665 () Bool)

(declare-fun ListPrimitiveSize!233 (List!33784) Int)

(assert (=> b!2841665 (= e!1800288 (>= (ListPrimitiveSize!233 (t!232629 l!2988)) (ListPrimitiveSize!233 l!2988)))))

(declare-fun b!2841666 () Bool)

(declare-fun res!1182229 () Bool)

(assert (=> b!2841666 (=> (not res!1182229) (not e!1800288))))

(get-info :version)

(assert (=> b!2841666 (= res!1182229 (and (not ((_ is Nil!33660) l!2988)) (> i!849 0) (>= (- i!849 1) 0)))))

(assert (= (and start!276388 res!1182228) b!2841663))

(assert (= (and b!2841663 res!1182230) b!2841666))

(assert (= (and b!2841666 res!1182229) b!2841664))

(assert (= (and b!2841664 res!1182227) b!2841665))

(assert (= (and start!276388 ((_ is Cons!33660) l!2988)) b!2841662))

(declare-fun m!3269503 () Bool)

(assert (=> b!2841663 m!3269503))

(declare-fun m!3269505 () Bool)

(assert (=> b!2841664 m!3269505))

(declare-fun m!3269507 () Bool)

(assert (=> b!2841665 m!3269507))

(declare-fun m!3269509 () Bool)

(assert (=> b!2841665 m!3269509))

(check-sat (not b!2841662) (not b!2841664) tp_is_empty!14667 (not b!2841663) (not b!2841665))
(check-sat)
(get-model)

(declare-fun d!823901 () Bool)

(declare-fun lt!1011666 () Int)

(assert (=> d!823901 (>= lt!1011666 0)))

(declare-fun e!1800292 () Int)

(assert (=> d!823901 (= lt!1011666 e!1800292)))

(declare-fun c!458710 () Bool)

(assert (=> d!823901 (= c!458710 ((_ is Nil!33660) (t!232629 l!2988)))))

(assert (=> d!823901 (= (size!26129 (t!232629 l!2988)) lt!1011666)))

(declare-fun b!2841671 () Bool)

(assert (=> b!2841671 (= e!1800292 0)))

(declare-fun b!2841672 () Bool)

(assert (=> b!2841672 (= e!1800292 (+ 1 (size!26129 (t!232629 (t!232629 l!2988)))))))

(assert (= (and d!823901 c!458710) b!2841671))

(assert (= (and d!823901 (not c!458710)) b!2841672))

(declare-fun m!3269511 () Bool)

(assert (=> b!2841672 m!3269511))

(assert (=> b!2841664 d!823901))

(declare-fun d!823903 () Bool)

(declare-fun lt!1011669 () Int)

(assert (=> d!823903 (>= lt!1011669 0)))

(declare-fun e!1800295 () Int)

(assert (=> d!823903 (= lt!1011669 e!1800295)))

(declare-fun c!458713 () Bool)

(assert (=> d!823903 (= c!458713 ((_ is Nil!33660) (t!232629 l!2988)))))

(assert (=> d!823903 (= (ListPrimitiveSize!233 (t!232629 l!2988)) lt!1011669)))

(declare-fun b!2841677 () Bool)

(assert (=> b!2841677 (= e!1800295 0)))

(declare-fun b!2841678 () Bool)

(assert (=> b!2841678 (= e!1800295 (+ 1 (ListPrimitiveSize!233 (t!232629 (t!232629 l!2988)))))))

(assert (= (and d!823903 c!458713) b!2841677))

(assert (= (and d!823903 (not c!458713)) b!2841678))

(declare-fun m!3269513 () Bool)

(assert (=> b!2841678 m!3269513))

(assert (=> b!2841665 d!823903))

(declare-fun d!823905 () Bool)

(declare-fun lt!1011670 () Int)

(assert (=> d!823905 (>= lt!1011670 0)))

(declare-fun e!1800296 () Int)

(assert (=> d!823905 (= lt!1011670 e!1800296)))

(declare-fun c!458714 () Bool)

(assert (=> d!823905 (= c!458714 ((_ is Nil!33660) l!2988))))

(assert (=> d!823905 (= (ListPrimitiveSize!233 l!2988) lt!1011670)))

(declare-fun b!2841679 () Bool)

(assert (=> b!2841679 (= e!1800296 0)))

(declare-fun b!2841680 () Bool)

(assert (=> b!2841680 (= e!1800296 (+ 1 (ListPrimitiveSize!233 (t!232629 l!2988))))))

(assert (= (and d!823905 c!458714) b!2841679))

(assert (= (and d!823905 (not c!458714)) b!2841680))

(assert (=> b!2841680 m!3269507))

(assert (=> b!2841665 d!823905))

(declare-fun d!823907 () Bool)

(declare-fun lt!1011671 () Int)

(assert (=> d!823907 (>= lt!1011671 0)))

(declare-fun e!1800297 () Int)

(assert (=> d!823907 (= lt!1011671 e!1800297)))

(declare-fun c!458715 () Bool)

(assert (=> d!823907 (= c!458715 ((_ is Nil!33660) l!2988))))

(assert (=> d!823907 (= (size!26129 l!2988) lt!1011671)))

(declare-fun b!2841681 () Bool)

(assert (=> b!2841681 (= e!1800297 0)))

(declare-fun b!2841682 () Bool)

(assert (=> b!2841682 (= e!1800297 (+ 1 (size!26129 (t!232629 l!2988))))))

(assert (= (and d!823907 c!458715) b!2841681))

(assert (= (and d!823907 (not c!458715)) b!2841682))

(assert (=> b!2841682 m!3269505))

(assert (=> b!2841663 d!823907))

(declare-fun b!2841687 () Bool)

(declare-fun e!1800300 () Bool)

(declare-fun tp!910329 () Bool)

(assert (=> b!2841687 (= e!1800300 (and tp_is_empty!14667 tp!910329))))

(assert (=> b!2841662 (= tp!910326 e!1800300)))

(assert (= (and b!2841662 ((_ is Cons!33660) (t!232629 l!2988))) b!2841687))

(check-sat (not b!2841680) (not b!2841678) (not b!2841687) (not b!2841672) tp_is_empty!14667 (not b!2841682))
(check-sat)
