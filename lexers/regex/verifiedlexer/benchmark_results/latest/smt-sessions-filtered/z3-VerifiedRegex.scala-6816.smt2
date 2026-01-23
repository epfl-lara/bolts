; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!358592 () Bool)

(assert start!358592)

(declare-fun res!1551392 () Bool)

(declare-fun e!2366425 () Bool)

(assert (=> start!358592 (=> (not res!1551392) (not e!2366425))))

(declare-datatypes ((B!2581 0))(
  ( (B!2582 (val!13312 Int)) )
))
(declare-datatypes ((List!40565 0))(
  ( (Nil!40441) (Cons!40441 (h!45861 B!2581) (t!309154 List!40565)) )
))
(declare-fun l1!1027 () List!40565)

(get-info :version)

(assert (=> start!358592 (= res!1551392 ((_ is Cons!40441) l1!1027))))

(assert (=> start!358592 e!2366425))

(declare-fun e!2366426 () Bool)

(assert (=> start!358592 e!2366426))

(declare-fun b!3832121 () Bool)

(declare-fun size!30484 (List!40565) Int)

(assert (=> b!3832121 (= e!2366425 (>= (size!30484 (t!309154 l1!1027)) (size!30484 l1!1027)))))

(declare-fun b!3832122 () Bool)

(declare-fun tp_is_empty!19221 () Bool)

(declare-fun tp!1159376 () Bool)

(assert (=> b!3832122 (= e!2366426 (and tp_is_empty!19221 tp!1159376))))

(assert (= (and start!358592 res!1551392) b!3832121))

(assert (= (and start!358592 ((_ is Cons!40441) l1!1027)) b!3832122))

(declare-fun m!4386809 () Bool)

(assert (=> b!3832121 m!4386809))

(declare-fun m!4386811 () Bool)

(assert (=> b!3832121 m!4386811))

(check-sat (not b!3832121) (not b!3832122) tp_is_empty!19221)
(check-sat)
(get-model)

(declare-fun d!1137575 () Bool)

(declare-fun lt!1330574 () Int)

(assert (=> d!1137575 (>= lt!1330574 0)))

(declare-fun e!2366436 () Int)

(assert (=> d!1137575 (= lt!1330574 e!2366436)))

(declare-fun c!668262 () Bool)

(assert (=> d!1137575 (= c!668262 ((_ is Nil!40441) (t!309154 l1!1027)))))

(assert (=> d!1137575 (= (size!30484 (t!309154 l1!1027)) lt!1330574)))

(declare-fun b!3832140 () Bool)

(assert (=> b!3832140 (= e!2366436 0)))

(declare-fun b!3832141 () Bool)

(assert (=> b!3832141 (= e!2366436 (+ 1 (size!30484 (t!309154 (t!309154 l1!1027)))))))

(assert (= (and d!1137575 c!668262) b!3832140))

(assert (= (and d!1137575 (not c!668262)) b!3832141))

(declare-fun m!4386815 () Bool)

(assert (=> b!3832141 m!4386815))

(assert (=> b!3832121 d!1137575))

(declare-fun d!1137579 () Bool)

(declare-fun lt!1330575 () Int)

(assert (=> d!1137579 (>= lt!1330575 0)))

(declare-fun e!2366437 () Int)

(assert (=> d!1137579 (= lt!1330575 e!2366437)))

(declare-fun c!668263 () Bool)

(assert (=> d!1137579 (= c!668263 ((_ is Nil!40441) l1!1027))))

(assert (=> d!1137579 (= (size!30484 l1!1027) lt!1330575)))

(declare-fun b!3832142 () Bool)

(assert (=> b!3832142 (= e!2366437 0)))

(declare-fun b!3832143 () Bool)

(assert (=> b!3832143 (= e!2366437 (+ 1 (size!30484 (t!309154 l1!1027))))))

(assert (= (and d!1137579 c!668263) b!3832142))

(assert (= (and d!1137579 (not c!668263)) b!3832143))

(assert (=> b!3832143 m!4386809))

(assert (=> b!3832121 d!1137579))

(declare-fun b!3832148 () Bool)

(declare-fun e!2366440 () Bool)

(declare-fun tp!1159382 () Bool)

(assert (=> b!3832148 (= e!2366440 (and tp_is_empty!19221 tp!1159382))))

(assert (=> b!3832122 (= tp!1159376 e!2366440)))

(assert (= (and b!3832122 ((_ is Cons!40441) (t!309154 l1!1027))) b!3832148))

(check-sat (not b!3832141) (not b!3832143) (not b!3832148) tp_is_empty!19221)
(check-sat)
