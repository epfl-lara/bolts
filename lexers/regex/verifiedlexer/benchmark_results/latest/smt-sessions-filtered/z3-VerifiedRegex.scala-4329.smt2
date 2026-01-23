; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231016 () Bool)

(assert start!231016)

(declare-fun res!1000611 () Bool)

(declare-fun e!1505368 () Bool)

(assert (=> start!231016 (=> (not res!1000611) (not e!1505368))))

(declare-datatypes ((B!1849 0))(
  ( (B!1850 (val!8136 Int)) )
))
(declare-datatypes ((List!27948 0))(
  ( (Nil!27850) (Cons!27850 (h!33251 B!1849) (t!207807 List!27948)) )
))
(declare-fun l1!1275 () List!27948)

(declare-fun l3!250 () List!27948)

(declare-fun subseq!435 (List!27948 List!27948) Bool)

(assert (=> start!231016 (= res!1000611 (subseq!435 l1!1275 l3!250))))

(assert (=> start!231016 e!1505368))

(declare-fun e!1505370 () Bool)

(assert (=> start!231016 e!1505370))

(declare-fun e!1505367 () Bool)

(assert (=> start!231016 e!1505367))

(declare-fun e!1505369 () Bool)

(assert (=> start!231016 e!1505369))

(declare-fun b!2357290 () Bool)

(declare-fun tp_is_empty!11105 () Bool)

(declare-fun tp!753550 () Bool)

(assert (=> b!2357290 (= e!1505370 (and tp_is_empty!11105 tp!753550))))

(declare-fun b!2357292 () Bool)

(declare-fun tp!753551 () Bool)

(assert (=> b!2357292 (= e!1505369 (and tp_is_empty!11105 tp!753551))))

(declare-fun b!2357291 () Bool)

(declare-fun tp!753549 () Bool)

(assert (=> b!2357291 (= e!1505367 (and tp_is_empty!11105 tp!753549))))

(declare-fun b!2357289 () Bool)

(declare-fun l2!1244 () List!27948)

(declare-fun ListPrimitiveSize!159 (List!27948) Int)

(assert (=> b!2357289 (= e!1505368 (< (ListPrimitiveSize!159 l2!1244) 0))))

(assert (= (and start!231016 res!1000611) b!2357289))

(get-info :version)

(assert (= (and start!231016 ((_ is Cons!27850) l1!1275)) b!2357290))

(assert (= (and start!231016 ((_ is Cons!27850) l3!250)) b!2357291))

(assert (= (and start!231016 ((_ is Cons!27850) l2!1244)) b!2357292))

(declare-fun m!2770423 () Bool)

(assert (=> start!231016 m!2770423))

(declare-fun m!2770425 () Bool)

(assert (=> b!2357289 m!2770425))

(check-sat (not b!2357290) (not b!2357291) (not b!2357289) tp_is_empty!11105 (not start!231016) (not b!2357292))
(check-sat)
(get-model)

(declare-fun d!693202 () Bool)

(declare-fun res!1000635 () Bool)

(declare-fun e!1505392 () Bool)

(assert (=> d!693202 (=> res!1000635 e!1505392)))

(assert (=> d!693202 (= res!1000635 ((_ is Nil!27850) l1!1275))))

(assert (=> d!693202 (= (subseq!435 l1!1275 l3!250) e!1505392)))

(declare-fun b!2357314 () Bool)

(declare-fun e!1505393 () Bool)

(declare-fun e!1505391 () Bool)

(assert (=> b!2357314 (= e!1505393 e!1505391)))

(declare-fun res!1000634 () Bool)

(assert (=> b!2357314 (=> res!1000634 e!1505391)))

(declare-fun e!1505394 () Bool)

(assert (=> b!2357314 (= res!1000634 e!1505394)))

(declare-fun res!1000633 () Bool)

(assert (=> b!2357314 (=> (not res!1000633) (not e!1505394))))

(assert (=> b!2357314 (= res!1000633 (= (h!33251 l1!1275) (h!33251 l3!250)))))

(declare-fun b!2357313 () Bool)

(assert (=> b!2357313 (= e!1505392 e!1505393)))

(declare-fun res!1000632 () Bool)

(assert (=> b!2357313 (=> (not res!1000632) (not e!1505393))))

(assert (=> b!2357313 (= res!1000632 ((_ is Cons!27850) l3!250))))

(declare-fun b!2357315 () Bool)

(assert (=> b!2357315 (= e!1505394 (subseq!435 (t!207807 l1!1275) (t!207807 l3!250)))))

(declare-fun b!2357316 () Bool)

(assert (=> b!2357316 (= e!1505391 (subseq!435 l1!1275 (t!207807 l3!250)))))

(assert (= (and d!693202 (not res!1000635)) b!2357313))

(assert (= (and b!2357313 res!1000632) b!2357314))

(assert (= (and b!2357314 res!1000633) b!2357315))

(assert (= (and b!2357314 (not res!1000634)) b!2357316))

(declare-fun m!2770431 () Bool)

(assert (=> b!2357315 m!2770431))

(declare-fun m!2770433 () Bool)

(assert (=> b!2357316 m!2770433))

(assert (=> start!231016 d!693202))

(declare-fun d!693206 () Bool)

(declare-fun lt!863091 () Int)

(assert (=> d!693206 (>= lt!863091 0)))

(declare-fun e!1505405 () Int)

(assert (=> d!693206 (= lt!863091 e!1505405)))

(declare-fun c!374783 () Bool)

(assert (=> d!693206 (= c!374783 ((_ is Nil!27850) l2!1244))))

(assert (=> d!693206 (= (ListPrimitiveSize!159 l2!1244) lt!863091)))

(declare-fun b!2357334 () Bool)

(assert (=> b!2357334 (= e!1505405 0)))

(declare-fun b!2357335 () Bool)

(assert (=> b!2357335 (= e!1505405 (+ 1 (ListPrimitiveSize!159 (t!207807 l2!1244))))))

(assert (= (and d!693206 c!374783) b!2357334))

(assert (= (and d!693206 (not c!374783)) b!2357335))

(declare-fun m!2770437 () Bool)

(assert (=> b!2357335 m!2770437))

(assert (=> b!2357289 d!693206))

(declare-fun b!2357340 () Bool)

(declare-fun e!1505408 () Bool)

(declare-fun tp!753559 () Bool)

(assert (=> b!2357340 (= e!1505408 (and tp_is_empty!11105 tp!753559))))

(assert (=> b!2357290 (= tp!753550 e!1505408)))

(assert (= (and b!2357290 ((_ is Cons!27850) (t!207807 l1!1275))) b!2357340))

(declare-fun b!2357341 () Bool)

(declare-fun e!1505409 () Bool)

(declare-fun tp!753560 () Bool)

(assert (=> b!2357341 (= e!1505409 (and tp_is_empty!11105 tp!753560))))

(assert (=> b!2357291 (= tp!753549 e!1505409)))

(assert (= (and b!2357291 ((_ is Cons!27850) (t!207807 l3!250))) b!2357341))

(declare-fun b!2357342 () Bool)

(declare-fun e!1505410 () Bool)

(declare-fun tp!753561 () Bool)

(assert (=> b!2357342 (= e!1505410 (and tp_is_empty!11105 tp!753561))))

(assert (=> b!2357292 (= tp!753551 e!1505410)))

(assert (= (and b!2357292 ((_ is Cons!27850) (t!207807 l2!1244))) b!2357342))

(check-sat (not b!2357342) (not b!2357341) tp_is_empty!11105 (not b!2357315) (not b!2357316) (not b!2357335) (not b!2357340))
(check-sat)
