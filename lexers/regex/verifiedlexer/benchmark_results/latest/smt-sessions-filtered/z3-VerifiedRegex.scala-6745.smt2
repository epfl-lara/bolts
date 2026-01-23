; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!352256 () Bool)

(assert start!352256)

(declare-fun b_free!100411 () Bool)

(declare-fun b_next!101115 () Bool)

(assert (=> start!352256 (= b_free!100411 (not b_next!101115))))

(declare-fun tp!1145558 () Bool)

(declare-fun b_and!278797 () Bool)

(assert (=> start!352256 (= tp!1145558 b_and!278797)))

(declare-fun b!3751318 () Bool)

(declare-fun e!2320438 () Bool)

(declare-fun tp!1145557 () Bool)

(assert (=> b!3751318 (= e!2320438 tp!1145557)))

(declare-fun b!3751315 () Bool)

(declare-fun e!2320436 () Bool)

(declare-datatypes ((T!69084 0))(
  ( (T!69085 (val!13170 Int)) )
))
(declare-datatypes ((List!40129 0))(
  ( (Nil!40005) (Cons!40005 (h!45425 T!69084) (t!303116 List!40129)) )
))
(declare-datatypes ((IArray!24467 0))(
  ( (IArray!24468 (innerList!12291 List!40129)) )
))
(declare-datatypes ((Conc!12231 0))(
  ( (Node!12231 (left!30968 Conc!12231) (right!31298 Conc!12231) (csize!24692 Int) (cheight!12442 Int)) (Leaf!18977 (xs!15433 IArray!24467) (csize!24693 Int)) (Empty!12231) )
))
(declare-fun t!3709 () Conc!12231)

(declare-fun p!1451 () Int)

(declare-fun forall!8224 (IArray!24467 Int) Bool)

(declare-fun forall!8225 (List!40129 Int) Bool)

(declare-fun list!14734 (Conc!12231) List!40129)

(assert (=> b!3751315 (= e!2320436 (not (= (forall!8224 (xs!15433 t!3709) p!1451) (forall!8225 (list!14734 t!3709) p!1451))))))

(declare-fun b!3751317 () Bool)

(declare-fun e!2320437 () Bool)

(declare-fun inv!53543 (IArray!24467) Bool)

(assert (=> b!3751317 (= e!2320437 (and (inv!53543 (xs!15433 t!3709)) e!2320438))))

(declare-fun tp!1145560 () Bool)

(declare-fun b!3751316 () Bool)

(declare-fun tp!1145559 () Bool)

(declare-fun inv!53544 (Conc!12231) Bool)

(assert (=> b!3751316 (= e!2320437 (and (inv!53544 (left!30968 t!3709)) tp!1145559 (inv!53544 (right!31298 t!3709)) tp!1145560))))

(declare-fun res!1520325 () Bool)

(assert (=> start!352256 (=> (not res!1520325) (not e!2320436))))

(get-info :version)

(assert (=> start!352256 (= res!1520325 (and (not ((_ is Empty!12231) t!3709)) ((_ is Leaf!18977) t!3709)))))

(assert (=> start!352256 e!2320436))

(assert (=> start!352256 (and (inv!53544 t!3709) e!2320437)))

(assert (=> start!352256 tp!1145558))

(assert (= (and start!352256 res!1520325) b!3751315))

(assert (= (and start!352256 ((_ is Node!12231) t!3709)) b!3751316))

(assert (= b!3751317 b!3751318))

(assert (= (and start!352256 ((_ is Leaf!18977) t!3709)) b!3751317))

(declare-fun m!4242111 () Bool)

(assert (=> b!3751315 m!4242111))

(declare-fun m!4242113 () Bool)

(assert (=> b!3751315 m!4242113))

(assert (=> b!3751315 m!4242113))

(declare-fun m!4242115 () Bool)

(assert (=> b!3751315 m!4242115))

(declare-fun m!4242117 () Bool)

(assert (=> b!3751317 m!4242117))

(declare-fun m!4242119 () Bool)

(assert (=> b!3751316 m!4242119))

(declare-fun m!4242121 () Bool)

(assert (=> b!3751316 m!4242121))

(declare-fun m!4242123 () Bool)

(assert (=> start!352256 m!4242123))

(check-sat (not b!3751316) (not b!3751317) b_and!278797 (not b!3751315) (not b!3751318) (not start!352256) (not b_next!101115))
(check-sat b_and!278797 (not b_next!101115))
(get-model)

(declare-fun d!1094194 () Bool)

(declare-fun c!649260 () Bool)

(assert (=> d!1094194 (= c!649260 ((_ is Node!12231) (left!30968 t!3709)))))

(declare-fun e!2320449 () Bool)

(assert (=> d!1094194 (= (inv!53544 (left!30968 t!3709)) e!2320449)))

(declare-fun b!3751331 () Bool)

(declare-fun inv!53545 (Conc!12231) Bool)

(assert (=> b!3751331 (= e!2320449 (inv!53545 (left!30968 t!3709)))))

(declare-fun b!3751332 () Bool)

(declare-fun e!2320450 () Bool)

(assert (=> b!3751332 (= e!2320449 e!2320450)))

(declare-fun res!1520334 () Bool)

(assert (=> b!3751332 (= res!1520334 (not ((_ is Leaf!18977) (left!30968 t!3709))))))

(assert (=> b!3751332 (=> res!1520334 e!2320450)))

(declare-fun b!3751333 () Bool)

(declare-fun inv!53546 (Conc!12231) Bool)

(assert (=> b!3751333 (= e!2320450 (inv!53546 (left!30968 t!3709)))))

(assert (= (and d!1094194 c!649260) b!3751331))

(assert (= (and d!1094194 (not c!649260)) b!3751332))

(assert (= (and b!3751332 (not res!1520334)) b!3751333))

(declare-fun m!4242135 () Bool)

(assert (=> b!3751331 m!4242135))

(declare-fun m!4242137 () Bool)

(assert (=> b!3751333 m!4242137))

(assert (=> b!3751316 d!1094194))

(declare-fun d!1094200 () Bool)

(declare-fun c!649261 () Bool)

(assert (=> d!1094200 (= c!649261 ((_ is Node!12231) (right!31298 t!3709)))))

(declare-fun e!2320451 () Bool)

(assert (=> d!1094200 (= (inv!53544 (right!31298 t!3709)) e!2320451)))

(declare-fun b!3751334 () Bool)

(assert (=> b!3751334 (= e!2320451 (inv!53545 (right!31298 t!3709)))))

(declare-fun b!3751335 () Bool)

(declare-fun e!2320452 () Bool)

(assert (=> b!3751335 (= e!2320451 e!2320452)))

(declare-fun res!1520335 () Bool)

(assert (=> b!3751335 (= res!1520335 (not ((_ is Leaf!18977) (right!31298 t!3709))))))

(assert (=> b!3751335 (=> res!1520335 e!2320452)))

(declare-fun b!3751336 () Bool)

(assert (=> b!3751336 (= e!2320452 (inv!53546 (right!31298 t!3709)))))

(assert (= (and d!1094200 c!649261) b!3751334))

(assert (= (and d!1094200 (not c!649261)) b!3751335))

(assert (= (and b!3751335 (not res!1520335)) b!3751336))

(declare-fun m!4242139 () Bool)

(assert (=> b!3751334 m!4242139))

(declare-fun m!4242141 () Bool)

(assert (=> b!3751336 m!4242141))

(assert (=> b!3751316 d!1094200))

(declare-fun d!1094202 () Bool)

(declare-fun size!30097 (List!40129) Int)

(assert (=> d!1094202 (= (inv!53543 (xs!15433 t!3709)) (<= (size!30097 (innerList!12291 (xs!15433 t!3709))) 2147483647))))

(declare-fun bs!575394 () Bool)

(assert (= bs!575394 d!1094202))

(declare-fun m!4242143 () Bool)

(assert (=> bs!575394 m!4242143))

(assert (=> b!3751317 d!1094202))

(declare-fun d!1094204 () Bool)

(declare-fun c!649262 () Bool)

(assert (=> d!1094204 (= c!649262 ((_ is Node!12231) t!3709))))

(declare-fun e!2320453 () Bool)

(assert (=> d!1094204 (= (inv!53544 t!3709) e!2320453)))

(declare-fun b!3751337 () Bool)

(assert (=> b!3751337 (= e!2320453 (inv!53545 t!3709))))

(declare-fun b!3751338 () Bool)

(declare-fun e!2320454 () Bool)

(assert (=> b!3751338 (= e!2320453 e!2320454)))

(declare-fun res!1520336 () Bool)

(assert (=> b!3751338 (= res!1520336 (not ((_ is Leaf!18977) t!3709)))))

(assert (=> b!3751338 (=> res!1520336 e!2320454)))

(declare-fun b!3751339 () Bool)

(assert (=> b!3751339 (= e!2320454 (inv!53546 t!3709))))

(assert (= (and d!1094204 c!649262) b!3751337))

(assert (= (and d!1094204 (not c!649262)) b!3751338))

(assert (= (and b!3751338 (not res!1520336)) b!3751339))

(declare-fun m!4242145 () Bool)

(assert (=> b!3751337 m!4242145))

(declare-fun m!4242147 () Bool)

(assert (=> b!3751339 m!4242147))

(assert (=> start!352256 d!1094204))

(declare-fun d!1094206 () Bool)

(declare-fun lt!1299871 () Bool)

(declare-fun list!14736 (IArray!24467) List!40129)

(assert (=> d!1094206 (= lt!1299871 (forall!8225 (list!14736 (xs!15433 t!3709)) p!1451))))

(declare-fun choose!22252 (IArray!24467 Int) Bool)

(assert (=> d!1094206 (= lt!1299871 (choose!22252 (xs!15433 t!3709) p!1451))))

(assert (=> d!1094206 (= (forall!8224 (xs!15433 t!3709) p!1451) lt!1299871)))

(declare-fun bs!575395 () Bool)

(assert (= bs!575395 d!1094206))

(declare-fun m!4242149 () Bool)

(assert (=> bs!575395 m!4242149))

(assert (=> bs!575395 m!4242149))

(declare-fun m!4242151 () Bool)

(assert (=> bs!575395 m!4242151))

(declare-fun m!4242153 () Bool)

(assert (=> bs!575395 m!4242153))

(assert (=> b!3751315 d!1094206))

(declare-fun d!1094208 () Bool)

(declare-fun res!1520341 () Bool)

(declare-fun e!2320465 () Bool)

(assert (=> d!1094208 (=> res!1520341 e!2320465)))

(assert (=> d!1094208 (= res!1520341 ((_ is Nil!40005) (list!14734 t!3709)))))

(assert (=> d!1094208 (= (forall!8225 (list!14734 t!3709) p!1451) e!2320465)))

(declare-fun b!3751356 () Bool)

(declare-fun e!2320466 () Bool)

(assert (=> b!3751356 (= e!2320465 e!2320466)))

(declare-fun res!1520342 () Bool)

(assert (=> b!3751356 (=> (not res!1520342) (not e!2320466))))

(declare-fun dynLambda!17298 (Int T!69084) Bool)

(assert (=> b!3751356 (= res!1520342 (dynLambda!17298 p!1451 (h!45425 (list!14734 t!3709))))))

(declare-fun b!3751357 () Bool)

(assert (=> b!3751357 (= e!2320466 (forall!8225 (t!303116 (list!14734 t!3709)) p!1451))))

(assert (= (and d!1094208 (not res!1520341)) b!3751356))

(assert (= (and b!3751356 res!1520342) b!3751357))

(declare-fun b_lambda!109985 () Bool)

(assert (=> (not b_lambda!109985) (not b!3751356)))

(declare-fun t!303121 () Bool)

(declare-fun tb!214647 () Bool)

(assert (=> (and start!352256 (= p!1451 p!1451) t!303121) tb!214647))

(declare-fun result!262112 () Bool)

(assert (=> tb!214647 (= result!262112 true)))

(assert (=> b!3751356 t!303121))

(declare-fun b_and!278801 () Bool)

(assert (= b_and!278797 (and (=> t!303121 result!262112) b_and!278801)))

(declare-fun m!4242161 () Bool)

(assert (=> b!3751356 m!4242161))

(declare-fun m!4242163 () Bool)

(assert (=> b!3751357 m!4242163))

(assert (=> b!3751315 d!1094208))

(declare-fun b!3751390 () Bool)

(declare-fun e!2320485 () List!40129)

(declare-fun e!2320486 () List!40129)

(assert (=> b!3751390 (= e!2320485 e!2320486)))

(declare-fun c!649279 () Bool)

(assert (=> b!3751390 (= c!649279 ((_ is Leaf!18977) t!3709))))

(declare-fun d!1094212 () Bool)

(declare-fun c!649278 () Bool)

(assert (=> d!1094212 (= c!649278 ((_ is Empty!12231) t!3709))))

(assert (=> d!1094212 (= (list!14734 t!3709) e!2320485)))

(declare-fun b!3751389 () Bool)

(assert (=> b!3751389 (= e!2320485 Nil!40005)))

(declare-fun b!3751391 () Bool)

(assert (=> b!3751391 (= e!2320486 (list!14736 (xs!15433 t!3709)))))

(declare-fun b!3751392 () Bool)

(declare-fun ++!9899 (List!40129 List!40129) List!40129)

(assert (=> b!3751392 (= e!2320486 (++!9899 (list!14734 (left!30968 t!3709)) (list!14734 (right!31298 t!3709))))))

(assert (= (and d!1094212 c!649278) b!3751389))

(assert (= (and d!1094212 (not c!649278)) b!3751390))

(assert (= (and b!3751390 c!649279) b!3751391))

(assert (= (and b!3751390 (not c!649279)) b!3751392))

(assert (=> b!3751391 m!4242149))

(declare-fun m!4242179 () Bool)

(assert (=> b!3751392 m!4242179))

(declare-fun m!4242181 () Bool)

(assert (=> b!3751392 m!4242181))

(assert (=> b!3751392 m!4242179))

(assert (=> b!3751392 m!4242181))

(declare-fun m!4242183 () Bool)

(assert (=> b!3751392 m!4242183))

(assert (=> b!3751315 d!1094212))

(declare-fun tp!1145582 () Bool)

(declare-fun tp!1145583 () Bool)

(declare-fun b!3751411 () Bool)

(declare-fun e!2320498 () Bool)

(assert (=> b!3751411 (= e!2320498 (and (inv!53544 (left!30968 (left!30968 t!3709))) tp!1145583 (inv!53544 (right!31298 (left!30968 t!3709))) tp!1145582))))

(declare-fun b!3751413 () Bool)

(declare-fun e!2320497 () Bool)

(declare-fun tp!1145581 () Bool)

(assert (=> b!3751413 (= e!2320497 tp!1145581)))

(declare-fun b!3751412 () Bool)

(assert (=> b!3751412 (= e!2320498 (and (inv!53543 (xs!15433 (left!30968 t!3709))) e!2320497))))

(assert (=> b!3751316 (= tp!1145559 (and (inv!53544 (left!30968 t!3709)) e!2320498))))

(assert (= (and b!3751316 ((_ is Node!12231) (left!30968 t!3709))) b!3751411))

(assert (= b!3751412 b!3751413))

(assert (= (and b!3751316 ((_ is Leaf!18977) (left!30968 t!3709))) b!3751412))

(declare-fun m!4242197 () Bool)

(assert (=> b!3751411 m!4242197))

(declare-fun m!4242199 () Bool)

(assert (=> b!3751411 m!4242199))

(declare-fun m!4242201 () Bool)

(assert (=> b!3751412 m!4242201))

(assert (=> b!3751316 m!4242119))

(declare-fun e!2320501 () Bool)

(declare-fun b!3751415 () Bool)

(declare-fun tp!1145586 () Bool)

(declare-fun tp!1145587 () Bool)

(assert (=> b!3751415 (= e!2320501 (and (inv!53544 (left!30968 (right!31298 t!3709))) tp!1145587 (inv!53544 (right!31298 (right!31298 t!3709))) tp!1145586))))

(declare-fun b!3751417 () Bool)

(declare-fun e!2320500 () Bool)

(declare-fun tp!1145585 () Bool)

(assert (=> b!3751417 (= e!2320500 tp!1145585)))

(declare-fun b!3751416 () Bool)

(assert (=> b!3751416 (= e!2320501 (and (inv!53543 (xs!15433 (right!31298 t!3709))) e!2320500))))

(assert (=> b!3751316 (= tp!1145560 (and (inv!53544 (right!31298 t!3709)) e!2320501))))

(assert (= (and b!3751316 ((_ is Node!12231) (right!31298 t!3709))) b!3751415))

(assert (= b!3751416 b!3751417))

(assert (= (and b!3751316 ((_ is Leaf!18977) (right!31298 t!3709))) b!3751416))

(declare-fun m!4242203 () Bool)

(assert (=> b!3751415 m!4242203))

(declare-fun m!4242205 () Bool)

(assert (=> b!3751415 m!4242205))

(declare-fun m!4242207 () Bool)

(assert (=> b!3751416 m!4242207))

(assert (=> b!3751316 m!4242121))

(declare-fun b!3751422 () Bool)

(declare-fun e!2320504 () Bool)

(declare-fun tp_is_empty!19045 () Bool)

(declare-fun tp!1145590 () Bool)

(assert (=> b!3751422 (= e!2320504 (and tp_is_empty!19045 tp!1145590))))

(assert (=> b!3751318 (= tp!1145557 e!2320504)))

(assert (= (and b!3751318 ((_ is Cons!40005) (innerList!12291 (xs!15433 t!3709)))) b!3751422))

(declare-fun b_lambda!109989 () Bool)

(assert (= b_lambda!109985 (or (and start!352256 b_free!100411) b_lambda!109989)))

(check-sat (not b!3751392) (not b!3751417) (not b!3751339) (not b!3751333) (not b_next!101115) (not b!3751416) (not b_lambda!109989) (not b!3751357) (not b!3751334) (not b!3751422) (not b!3751415) (not b!3751316) (not b!3751337) (not b!3751331) (not b!3751411) (not b!3751412) (not b!3751413) (not d!1094206) b_and!278801 (not b!3751391) (not b!3751336) (not d!1094202) tp_is_empty!19045)
(check-sat b_and!278801 (not b_next!101115))
