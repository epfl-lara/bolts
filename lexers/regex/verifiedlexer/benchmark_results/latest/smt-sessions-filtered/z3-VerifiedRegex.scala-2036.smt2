; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104054 () Bool)

(assert start!104054)

(declare-fun b!1177347 () Bool)

(declare-fun e!755526 () Bool)

(declare-datatypes ((B!1257 0))(
  ( (B!1258 (val!3738 Int)) )
))
(declare-datatypes ((List!11685 0))(
  ( (Nil!11661) (Cons!11661 (h!17062 B!1257) (t!111177 List!11685)) )
))
(declare-fun l!2952 () List!11685)

(declare-fun ListPrimitiveSize!66 (List!11685) Int)

(assert (=> b!1177347 (= e!755526 (>= (ListPrimitiveSize!66 (t!111177 l!2952)) (ListPrimitiveSize!66 l!2952)))))

(declare-fun res!532360 () Bool)

(assert (=> start!104054 (=> (not res!532360) (not e!755526))))

(declare-fun i!757 () Int)

(declare-fun j!89 () Int)

(assert (=> start!104054 (= res!532360 (and (>= i!757 0) (>= j!89 i!757)))))

(assert (=> start!104054 e!755526))

(assert (=> start!104054 true))

(declare-fun e!755527 () Bool)

(assert (=> start!104054 e!755527))

(declare-fun b!1177348 () Bool)

(declare-fun res!532362 () Bool)

(assert (=> b!1177348 (=> (not res!532362) (not e!755526))))

(declare-fun size!9225 (List!11685) Int)

(assert (=> b!1177348 (= res!532362 (<= j!89 (size!9225 l!2952)))))

(declare-fun b!1177349 () Bool)

(declare-fun tp_is_empty!5779 () Bool)

(declare-fun tp!335184 () Bool)

(assert (=> b!1177349 (= e!755527 (and tp_is_empty!5779 tp!335184))))

(declare-fun b!1177350 () Bool)

(declare-fun res!532361 () Bool)

(assert (=> b!1177350 (=> (not res!532361) (not e!755526))))

(assert (=> b!1177350 (= res!532361 (<= (- j!89 1) (size!9225 (t!111177 l!2952))))))

(declare-fun b!1177351 () Bool)

(declare-fun res!532363 () Bool)

(assert (=> b!1177351 (=> (not res!532363) (not e!755526))))

(get-info :version)

(assert (=> b!1177351 (= res!532363 (and (not ((_ is Nil!11661) l!2952)) (or (not (= i!757 0)) (not (= j!89 0))) (> i!757 0) (>= (- i!757 1) 0) (>= (- j!89 1) (- i!757 1))))))

(assert (= (and start!104054 res!532360) b!1177348))

(assert (= (and b!1177348 res!532362) b!1177351))

(assert (= (and b!1177351 res!532363) b!1177350))

(assert (= (and b!1177350 res!532361) b!1177347))

(assert (= (and start!104054 ((_ is Cons!11661) l!2952)) b!1177349))

(declare-fun m!1354481 () Bool)

(assert (=> b!1177347 m!1354481))

(declare-fun m!1354483 () Bool)

(assert (=> b!1177347 m!1354483))

(declare-fun m!1354485 () Bool)

(assert (=> b!1177348 m!1354485))

(declare-fun m!1354487 () Bool)

(assert (=> b!1177350 m!1354487))

(check-sat tp_is_empty!5779 (not b!1177349) (not b!1177350) (not b!1177347) (not b!1177348))
(check-sat)
(get-model)

(declare-fun d!337263 () Bool)

(declare-fun lt!406045 () Int)

(assert (=> d!337263 (>= lt!406045 0)))

(declare-fun e!755532 () Int)

(assert (=> d!337263 (= lt!406045 e!755532)))

(declare-fun c!196230 () Bool)

(assert (=> d!337263 (= c!196230 ((_ is Nil!11661) l!2952))))

(assert (=> d!337263 (= (size!9225 l!2952) lt!406045)))

(declare-fun b!1177360 () Bool)

(assert (=> b!1177360 (= e!755532 0)))

(declare-fun b!1177361 () Bool)

(assert (=> b!1177361 (= e!755532 (+ 1 (size!9225 (t!111177 l!2952))))))

(assert (= (and d!337263 c!196230) b!1177360))

(assert (= (and d!337263 (not c!196230)) b!1177361))

(assert (=> b!1177361 m!1354487))

(assert (=> b!1177348 d!337263))

(declare-fun d!337267 () Bool)

(declare-fun lt!406051 () Int)

(assert (=> d!337267 (>= lt!406051 0)))

(declare-fun e!755538 () Int)

(assert (=> d!337267 (= lt!406051 e!755538)))

(declare-fun c!196236 () Bool)

(assert (=> d!337267 (= c!196236 ((_ is Nil!11661) (t!111177 l!2952)))))

(assert (=> d!337267 (= (ListPrimitiveSize!66 (t!111177 l!2952)) lt!406051)))

(declare-fun b!1177372 () Bool)

(assert (=> b!1177372 (= e!755538 0)))

(declare-fun b!1177373 () Bool)

(assert (=> b!1177373 (= e!755538 (+ 1 (ListPrimitiveSize!66 (t!111177 (t!111177 l!2952)))))))

(assert (= (and d!337267 c!196236) b!1177372))

(assert (= (and d!337267 (not c!196236)) b!1177373))

(declare-fun m!1354489 () Bool)

(assert (=> b!1177373 m!1354489))

(assert (=> b!1177347 d!337267))

(declare-fun d!337271 () Bool)

(declare-fun lt!406053 () Int)

(assert (=> d!337271 (>= lt!406053 0)))

(declare-fun e!755540 () Int)

(assert (=> d!337271 (= lt!406053 e!755540)))

(declare-fun c!196238 () Bool)

(assert (=> d!337271 (= c!196238 ((_ is Nil!11661) l!2952))))

(assert (=> d!337271 (= (ListPrimitiveSize!66 l!2952) lt!406053)))

(declare-fun b!1177376 () Bool)

(assert (=> b!1177376 (= e!755540 0)))

(declare-fun b!1177377 () Bool)

(assert (=> b!1177377 (= e!755540 (+ 1 (ListPrimitiveSize!66 (t!111177 l!2952))))))

(assert (= (and d!337271 c!196238) b!1177376))

(assert (= (and d!337271 (not c!196238)) b!1177377))

(assert (=> b!1177377 m!1354481))

(assert (=> b!1177347 d!337271))

(declare-fun d!337275 () Bool)

(declare-fun lt!406055 () Int)

(assert (=> d!337275 (>= lt!406055 0)))

(declare-fun e!755542 () Int)

(assert (=> d!337275 (= lt!406055 e!755542)))

(declare-fun c!196240 () Bool)

(assert (=> d!337275 (= c!196240 ((_ is Nil!11661) (t!111177 l!2952)))))

(assert (=> d!337275 (= (size!9225 (t!111177 l!2952)) lt!406055)))

(declare-fun b!1177380 () Bool)

(assert (=> b!1177380 (= e!755542 0)))

(declare-fun b!1177381 () Bool)

(assert (=> b!1177381 (= e!755542 (+ 1 (size!9225 (t!111177 (t!111177 l!2952)))))))

(assert (= (and d!337275 c!196240) b!1177380))

(assert (= (and d!337275 (not c!196240)) b!1177381))

(declare-fun m!1354493 () Bool)

(assert (=> b!1177381 m!1354493))

(assert (=> b!1177350 d!337275))

(declare-fun b!1177392 () Bool)

(declare-fun e!755548 () Bool)

(declare-fun tp!335189 () Bool)

(assert (=> b!1177392 (= e!755548 (and tp_is_empty!5779 tp!335189))))

(assert (=> b!1177349 (= tp!335184 e!755548)))

(assert (= (and b!1177349 ((_ is Cons!11661) (t!111177 l!2952))) b!1177392))

(check-sat (not b!1177381) tp_is_empty!5779 (not b!1177373) (not b!1177361) (not b!1177377) (not b!1177392))
(check-sat)
