; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104046 () Bool)

(assert start!104046)

(declare-fun b!1177291 () Bool)

(declare-fun res!532337 () Bool)

(declare-fun e!755500 () Bool)

(assert (=> b!1177291 (=> (not res!532337) (not e!755500))))

(declare-fun i!757 () Int)

(declare-fun j!89 () Int)

(declare-datatypes ((B!1253 0))(
  ( (B!1254 (val!3736 Int)) )
))
(declare-datatypes ((List!11683 0))(
  ( (Nil!11659) (Cons!11659 (h!17060 B!1253) (t!111175 List!11683)) )
))
(declare-fun l!2952 () List!11683)

(get-info :version)

(assert (=> b!1177291 (= res!532337 (and (not ((_ is Nil!11659) l!2952)) (or (not (= i!757 0)) (not (= j!89 0))) (> i!757 0)))))

(declare-fun res!532338 () Bool)

(assert (=> start!104046 (=> (not res!532338) (not e!755500))))

(assert (=> start!104046 (= res!532338 (and (>= i!757 0) (>= j!89 i!757)))))

(assert (=> start!104046 e!755500))

(assert (=> start!104046 true))

(declare-fun e!755499 () Bool)

(assert (=> start!104046 e!755499))

(declare-fun b!1177292 () Bool)

(declare-fun e!755501 () Bool)

(declare-fun size!9223 (List!11683) Int)

(assert (=> b!1177292 (= e!755501 (> (- j!89 1) (size!9223 (t!111175 l!2952))))))

(declare-fun b!1177293 () Bool)

(declare-fun res!532336 () Bool)

(assert (=> b!1177293 (=> (not res!532336) (not e!755500))))

(assert (=> b!1177293 (= res!532336 (<= j!89 (size!9223 l!2952)))))

(declare-fun b!1177294 () Bool)

(declare-fun tp_is_empty!5775 () Bool)

(declare-fun tp!335172 () Bool)

(assert (=> b!1177294 (= e!755499 (and tp_is_empty!5775 tp!335172))))

(declare-fun b!1177295 () Bool)

(assert (=> b!1177295 (= e!755500 e!755501)))

(declare-fun res!532339 () Bool)

(assert (=> b!1177295 (=> res!532339 e!755501)))

(assert (=> b!1177295 (= res!532339 (or (< (- i!757 1) 0) (< (- j!89 1) (- i!757 1))))))

(assert (= (and start!104046 res!532338) b!1177293))

(assert (= (and b!1177293 res!532336) b!1177291))

(assert (= (and b!1177291 res!532337) b!1177295))

(assert (= (and b!1177295 (not res!532339)) b!1177292))

(assert (= (and start!104046 ((_ is Cons!11659) l!2952)) b!1177294))

(declare-fun m!1354465 () Bool)

(assert (=> b!1177292 m!1354465))

(declare-fun m!1354467 () Bool)

(assert (=> b!1177293 m!1354467))

(check-sat (not b!1177292) (not b!1177293) (not b!1177294) tp_is_empty!5775)
(check-sat)
(get-model)

(declare-fun d!337256 () Bool)

(declare-fun lt!406039 () Int)

(assert (=> d!337256 (>= lt!406039 0)))

(declare-fun e!755511 () Int)

(assert (=> d!337256 (= lt!406039 e!755511)))

(declare-fun c!196224 () Bool)

(assert (=> d!337256 (= c!196224 ((_ is Nil!11659) (t!111175 l!2952)))))

(assert (=> d!337256 (= (size!9223 (t!111175 l!2952)) lt!406039)))

(declare-fun b!1177313 () Bool)

(assert (=> b!1177313 (= e!755511 0)))

(declare-fun b!1177314 () Bool)

(assert (=> b!1177314 (= e!755511 (+ 1 (size!9223 (t!111175 (t!111175 l!2952)))))))

(assert (= (and d!337256 c!196224) b!1177313))

(assert (= (and d!337256 (not c!196224)) b!1177314))

(declare-fun m!1354471 () Bool)

(assert (=> b!1177314 m!1354471))

(assert (=> b!1177292 d!337256))

(declare-fun d!337260 () Bool)

(declare-fun lt!406040 () Int)

(assert (=> d!337260 (>= lt!406040 0)))

(declare-fun e!755512 () Int)

(assert (=> d!337260 (= lt!406040 e!755512)))

(declare-fun c!196225 () Bool)

(assert (=> d!337260 (= c!196225 ((_ is Nil!11659) l!2952))))

(assert (=> d!337260 (= (size!9223 l!2952) lt!406040)))

(declare-fun b!1177315 () Bool)

(assert (=> b!1177315 (= e!755512 0)))

(declare-fun b!1177316 () Bool)

(assert (=> b!1177316 (= e!755512 (+ 1 (size!9223 (t!111175 l!2952))))))

(assert (= (and d!337260 c!196225) b!1177315))

(assert (= (and d!337260 (not c!196225)) b!1177316))

(assert (=> b!1177316 m!1354465))

(assert (=> b!1177293 d!337260))

(declare-fun b!1177321 () Bool)

(declare-fun e!755515 () Bool)

(declare-fun tp!335178 () Bool)

(assert (=> b!1177321 (= e!755515 (and tp_is_empty!5775 tp!335178))))

(assert (=> b!1177294 (= tp!335172 e!755515)))

(assert (= (and b!1177294 ((_ is Cons!11659) (t!111175 l!2952))) b!1177321))

(check-sat (not b!1177314) (not b!1177316) (not b!1177321) tp_is_empty!5775)
(check-sat)
