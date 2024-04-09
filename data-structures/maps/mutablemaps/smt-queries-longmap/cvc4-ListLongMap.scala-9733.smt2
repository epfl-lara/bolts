; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115320 () Bool)

(assert start!115320)

(declare-fun res!908184 () Bool)

(declare-fun e!773842 () Bool)

(assert (=> start!115320 (=> (not res!908184) (not e!773842))))

(declare-datatypes ((List!32005 0))(
  ( (Nil!32002) (Cons!32001 (h!33210 (_ BitVec 64)) (t!46706 List!32005)) )
))
(declare-datatypes ((tuple2!24532 0))(
  ( (tuple2!24533 (_1!12276 (_ BitVec 64)) (_2!12276 List!32005)) )
))
(declare-datatypes ((Option!792 0))(
  ( (Some!791 (v!21588 tuple2!24532)) (None!790) )
))
(declare-fun lt!601031 () Option!792)

(declare-fun isEmpty!1117 (Option!792) Bool)

(assert (=> start!115320 (= res!908184 (not (isEmpty!1117 lt!601031)))))

(declare-fun l!3677 () List!32005)

(declare-fun unapply!57 (List!32005) Option!792)

(assert (=> start!115320 (= lt!601031 (unapply!57 l!3677))))

(assert (=> start!115320 e!773842))

(assert (=> start!115320 true))

(declare-fun b!1364465 () Bool)

(declare-fun ListPrimitiveSize!174 (List!32005) Int)

(declare-fun get!22745 (Option!792) tuple2!24532)

(assert (=> b!1364465 (= e!773842 (>= (ListPrimitiveSize!174 (_2!12276 (get!22745 lt!601031))) (ListPrimitiveSize!174 l!3677)))))

(assert (= (and start!115320 res!908184) b!1364465))

(declare-fun m!1249293 () Bool)

(assert (=> start!115320 m!1249293))

(declare-fun m!1249295 () Bool)

(assert (=> start!115320 m!1249295))

(declare-fun m!1249297 () Bool)

(assert (=> b!1364465 m!1249297))

(declare-fun m!1249299 () Bool)

(assert (=> b!1364465 m!1249299))

(declare-fun m!1249301 () Bool)

(assert (=> b!1364465 m!1249301))

(push 1)

(assert (not start!115320))

(assert (not b!1364465))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146391 () Bool)

(assert (=> d!146391 (= (isEmpty!1117 lt!601031) (not (is-Some!791 lt!601031)))))

(assert (=> start!115320 d!146391))

(declare-fun d!146393 () Bool)

(assert (=> d!146393 (= (unapply!57 l!3677) (ite (is-Nil!32002 l!3677) None!790 (Some!791 (tuple2!24533 (h!33210 l!3677) (t!46706 l!3677)))))))

(assert (=> start!115320 d!146393))

(declare-fun d!146401 () Bool)

(declare-fun lt!601039 () Int)

(assert (=> d!146401 (>= lt!601039 0)))

(declare-fun e!773848 () Int)

(assert (=> d!146401 (= lt!601039 e!773848)))

(declare-fun c!127588 () Bool)

(assert (=> d!146401 (= c!127588 (is-Nil!32002 (_2!12276 (get!22745 lt!601031))))))

(assert (=> d!146401 (= (ListPrimitiveSize!174 (_2!12276 (get!22745 lt!601031))) lt!601039)))

(declare-fun b!1364478 () Bool)

(assert (=> b!1364478 (= e!773848 0)))

(declare-fun b!1364479 () Bool)

(assert (=> b!1364479 (= e!773848 (+ 1 (ListPrimitiveSize!174 (t!46706 (_2!12276 (get!22745 lt!601031))))))))

(assert (= (and d!146401 c!127588) b!1364478))

(assert (= (and d!146401 (not c!127588)) b!1364479))

(declare-fun m!1249305 () Bool)

(assert (=> b!1364479 m!1249305))

(assert (=> b!1364465 d!146401))

(declare-fun d!146409 () Bool)

(assert (=> d!146409 (= (get!22745 lt!601031) (v!21588 lt!601031))))

(assert (=> b!1364465 d!146409))

(declare-fun d!146413 () Bool)

(declare-fun lt!601041 () Int)

(assert (=> d!146413 (>= lt!601041 0)))

(declare-fun e!773852 () Int)

(assert (=> d!146413 (= lt!601041 e!773852)))

(declare-fun c!127592 () Bool)

(assert (=> d!146413 (= c!127592 (is-Nil!32002 l!3677))))

(assert (=> d!146413 (= (ListPrimitiveSize!174 l!3677) lt!601041)))

(declare-fun b!1364484 () Bool)

(assert (=> b!1364484 (= e!773852 0)))

(declare-fun b!1364485 () Bool)

(assert (=> b!1364485 (= e!773852 (+ 1 (ListPrimitiveSize!174 (t!46706 l!3677))))))

(assert (= (and d!146413 c!127592) b!1364484))

(assert (= (and d!146413 (not c!127592)) b!1364485))

(declare-fun m!1249309 () Bool)

(assert (=> b!1364485 m!1249309))

(assert (=> b!1364465 d!146413))

(push 1)

