; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!283668 () Bool)

(assert start!283668)

(declare-fun res!1201622 () Bool)

(declare-fun e!1837414 () Bool)

(assert (=> start!283668 (=> (not res!1201622) (not e!1837414))))

(declare-datatypes ((C!18080 0))(
  ( (C!18081 (val!11074 Int)) )
))
(declare-datatypes ((List!34810 0))(
  ( (Nil!34686) (Cons!34686 (h!40106 C!18080) (t!233873 List!34810)) )
))
(declare-fun input!3754 () List!34810)

(declare-fun isEmpty!18930 (List!34810) Bool)

(assert (=> start!283668 (= res!1201622 (not (isEmpty!18930 input!3754)))))

(assert (=> start!283668 e!1837414))

(declare-fun e!1837415 () Bool)

(assert (=> start!283668 e!1837415))

(declare-fun b!2910954 () Bool)

(declare-fun size!26434 (List!34810) Int)

(declare-fun tail!4689 (List!34810) List!34810)

(assert (=> b!2910954 (= e!1837414 (>= (size!26434 (tail!4689 input!3754)) (size!26434 input!3754)))))

(declare-fun b!2910955 () Bool)

(declare-fun tp_is_empty!15453 () Bool)

(declare-fun tp!935275 () Bool)

(assert (=> b!2910955 (= e!1837415 (and tp_is_empty!15453 tp!935275))))

(assert (= (and start!283668 res!1201622) b!2910954))

(get-info :version)

(assert (= (and start!283668 ((_ is Cons!34686) input!3754)) b!2910955))

(declare-fun m!3312509 () Bool)

(assert (=> start!283668 m!3312509))

(declare-fun m!3312511 () Bool)

(assert (=> b!2910954 m!3312511))

(assert (=> b!2910954 m!3312511))

(declare-fun m!3312513 () Bool)

(assert (=> b!2910954 m!3312513))

(declare-fun m!3312515 () Bool)

(assert (=> b!2910954 m!3312515))

(check-sat (not b!2910954) (not start!283668) (not b!2910955) tp_is_empty!15453)
(check-sat)
(get-model)

(declare-fun d!837606 () Bool)

(declare-fun lt!1023828 () Int)

(assert (=> d!837606 (>= lt!1023828 0)))

(declare-fun e!1837418 () Int)

(assert (=> d!837606 (= lt!1023828 e!1837418)))

(declare-fun c!474672 () Bool)

(assert (=> d!837606 (= c!474672 ((_ is Nil!34686) (tail!4689 input!3754)))))

(assert (=> d!837606 (= (size!26434 (tail!4689 input!3754)) lt!1023828)))

(declare-fun b!2910960 () Bool)

(assert (=> b!2910960 (= e!1837418 0)))

(declare-fun b!2910961 () Bool)

(assert (=> b!2910961 (= e!1837418 (+ 1 (size!26434 (t!233873 (tail!4689 input!3754)))))))

(assert (= (and d!837606 c!474672) b!2910960))

(assert (= (and d!837606 (not c!474672)) b!2910961))

(declare-fun m!3312517 () Bool)

(assert (=> b!2910961 m!3312517))

(assert (=> b!2910954 d!837606))

(declare-fun d!837612 () Bool)

(assert (=> d!837612 (= (tail!4689 input!3754) (t!233873 input!3754))))

(assert (=> b!2910954 d!837612))

(declare-fun d!837614 () Bool)

(declare-fun lt!1023831 () Int)

(assert (=> d!837614 (>= lt!1023831 0)))

(declare-fun e!1837421 () Int)

(assert (=> d!837614 (= lt!1023831 e!1837421)))

(declare-fun c!474675 () Bool)

(assert (=> d!837614 (= c!474675 ((_ is Nil!34686) input!3754))))

(assert (=> d!837614 (= (size!26434 input!3754) lt!1023831)))

(declare-fun b!2910966 () Bool)

(assert (=> b!2910966 (= e!1837421 0)))

(declare-fun b!2910967 () Bool)

(assert (=> b!2910967 (= e!1837421 (+ 1 (size!26434 (t!233873 input!3754))))))

(assert (= (and d!837614 c!474675) b!2910966))

(assert (= (and d!837614 (not c!474675)) b!2910967))

(declare-fun m!3312519 () Bool)

(assert (=> b!2910967 m!3312519))

(assert (=> b!2910954 d!837614))

(declare-fun d!837616 () Bool)

(assert (=> d!837616 (= (isEmpty!18930 input!3754) ((_ is Nil!34686) input!3754))))

(assert (=> start!283668 d!837616))

(declare-fun b!2910974 () Bool)

(declare-fun e!1837425 () Bool)

(declare-fun tp!935278 () Bool)

(assert (=> b!2910974 (= e!1837425 (and tp_is_empty!15453 tp!935278))))

(assert (=> b!2910955 (= tp!935275 e!1837425)))

(assert (= (and b!2910955 ((_ is Cons!34686) (t!233873 input!3754))) b!2910974))

(check-sat (not b!2910961) (not b!2910967) (not b!2910974) tp_is_empty!15453)
(check-sat)
