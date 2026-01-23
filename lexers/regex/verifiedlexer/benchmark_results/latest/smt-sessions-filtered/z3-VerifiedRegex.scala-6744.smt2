; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!352236 () Bool)

(assert start!352236)

(declare-fun b_free!100407 () Bool)

(declare-fun b_next!101111 () Bool)

(assert (=> start!352236 (= b_free!100407 (not b_next!101111))))

(declare-fun tp!1145503 () Bool)

(declare-fun b_and!278789 () Bool)

(assert (=> start!352236 (= tp!1145503 b_and!278789)))

(declare-fun res!1520297 () Bool)

(declare-fun e!2320353 () Bool)

(assert (=> start!352236 (=> (not res!1520297) (not e!2320353))))

(declare-datatypes ((T!69070 0))(
  ( (T!69071 (val!13168 Int)) )
))
(declare-datatypes ((List!40127 0))(
  ( (Nil!40003) (Cons!40003 (h!45423 T!69070) (t!303108 List!40127)) )
))
(declare-datatypes ((IArray!24463 0))(
  ( (IArray!24464 (innerList!12289 List!40127)) )
))
(declare-datatypes ((Conc!12229 0))(
  ( (Node!12229 (left!30965 Conc!12229) (right!31295 Conc!12229) (csize!24688 Int) (cheight!12440 Int)) (Leaf!18974 (xs!15431 IArray!24463) (csize!24689 Int)) (Empty!12229) )
))
(declare-fun t!3709 () Conc!12229)

(get-info :version)

(assert (=> start!352236 (= res!1520297 ((_ is Empty!12229) t!3709))))

(assert (=> start!352236 e!2320353))

(declare-fun e!2320354 () Bool)

(declare-fun inv!53532 (Conc!12229) Bool)

(assert (=> start!352236 (and (inv!53532 t!3709) e!2320354)))

(assert (=> start!352236 tp!1145503))

(declare-fun b!3751190 () Bool)

(declare-fun e!2320352 () Bool)

(declare-fun tp!1145505 () Bool)

(assert (=> b!3751190 (= e!2320352 tp!1145505)))

(declare-fun b!3751187 () Bool)

(declare-fun p!1451 () Int)

(declare-fun forall!8221 (List!40127 Int) Bool)

(declare-fun list!14730 (Conc!12229) List!40127)

(assert (=> b!3751187 (= e!2320353 (not (forall!8221 (list!14730 t!3709) p!1451)))))

(declare-fun b!3751189 () Bool)

(declare-fun inv!53533 (IArray!24463) Bool)

(assert (=> b!3751189 (= e!2320354 (and (inv!53533 (xs!15431 t!3709)) e!2320352))))

(declare-fun tp!1145506 () Bool)

(declare-fun tp!1145504 () Bool)

(declare-fun b!3751188 () Bool)

(assert (=> b!3751188 (= e!2320354 (and (inv!53532 (left!30965 t!3709)) tp!1145504 (inv!53532 (right!31295 t!3709)) tp!1145506))))

(assert (= (and start!352236 res!1520297) b!3751187))

(assert (= (and start!352236 ((_ is Node!12229) t!3709)) b!3751188))

(assert (= b!3751189 b!3751190))

(assert (= (and start!352236 ((_ is Leaf!18974) t!3709)) b!3751189))

(declare-fun m!4242009 () Bool)

(assert (=> start!352236 m!4242009))

(declare-fun m!4242011 () Bool)

(assert (=> b!3751187 m!4242011))

(assert (=> b!3751187 m!4242011))

(declare-fun m!4242013 () Bool)

(assert (=> b!3751187 m!4242013))

(declare-fun m!4242015 () Bool)

(assert (=> b!3751189 m!4242015))

(declare-fun m!4242017 () Bool)

(assert (=> b!3751188 m!4242017))

(declare-fun m!4242019 () Bool)

(assert (=> b!3751188 m!4242019))

(check-sat (not b!3751187) (not b_next!101111) (not b!3751189) (not b!3751190) (not b!3751188) (not start!352236) b_and!278789)
(check-sat b_and!278789 (not b_next!101111))
(get-model)

(declare-fun d!1094171 () Bool)

(declare-fun c!649243 () Bool)

(assert (=> d!1094171 (= c!649243 ((_ is Node!12229) (left!30965 t!3709)))))

(declare-fun e!2320369 () Bool)

(assert (=> d!1094171 (= (inv!53532 (left!30965 t!3709)) e!2320369)))

(declare-fun b!3751212 () Bool)

(declare-fun inv!53536 (Conc!12229) Bool)

(assert (=> b!3751212 (= e!2320369 (inv!53536 (left!30965 t!3709)))))

(declare-fun b!3751213 () Bool)

(declare-fun e!2320370 () Bool)

(assert (=> b!3751213 (= e!2320369 e!2320370)))

(declare-fun res!1520305 () Bool)

(assert (=> b!3751213 (= res!1520305 (not ((_ is Leaf!18974) (left!30965 t!3709))))))

(assert (=> b!3751213 (=> res!1520305 e!2320370)))

(declare-fun b!3751214 () Bool)

(declare-fun inv!53537 (Conc!12229) Bool)

(assert (=> b!3751214 (= e!2320370 (inv!53537 (left!30965 t!3709)))))

(assert (= (and d!1094171 c!649243) b!3751212))

(assert (= (and d!1094171 (not c!649243)) b!3751213))

(assert (= (and b!3751213 (not res!1520305)) b!3751214))

(declare-fun m!4242035 () Bool)

(assert (=> b!3751212 m!4242035))

(declare-fun m!4242037 () Bool)

(assert (=> b!3751214 m!4242037))

(assert (=> b!3751188 d!1094171))

(declare-fun d!1094179 () Bool)

(declare-fun c!649244 () Bool)

(assert (=> d!1094179 (= c!649244 ((_ is Node!12229) (right!31295 t!3709)))))

(declare-fun e!2320371 () Bool)

(assert (=> d!1094179 (= (inv!53532 (right!31295 t!3709)) e!2320371)))

(declare-fun b!3751215 () Bool)

(assert (=> b!3751215 (= e!2320371 (inv!53536 (right!31295 t!3709)))))

(declare-fun b!3751216 () Bool)

(declare-fun e!2320372 () Bool)

(assert (=> b!3751216 (= e!2320371 e!2320372)))

(declare-fun res!1520306 () Bool)

(assert (=> b!3751216 (= res!1520306 (not ((_ is Leaf!18974) (right!31295 t!3709))))))

(assert (=> b!3751216 (=> res!1520306 e!2320372)))

(declare-fun b!3751217 () Bool)

(assert (=> b!3751217 (= e!2320372 (inv!53537 (right!31295 t!3709)))))

(assert (= (and d!1094179 c!649244) b!3751215))

(assert (= (and d!1094179 (not c!649244)) b!3751216))

(assert (= (and b!3751216 (not res!1520306)) b!3751217))

(declare-fun m!4242039 () Bool)

(assert (=> b!3751215 m!4242039))

(declare-fun m!4242041 () Bool)

(assert (=> b!3751217 m!4242041))

(assert (=> b!3751188 d!1094179))

(declare-fun d!1094181 () Bool)

(declare-fun size!30096 (List!40127) Int)

(assert (=> d!1094181 (= (inv!53533 (xs!15431 t!3709)) (<= (size!30096 (innerList!12289 (xs!15431 t!3709))) 2147483647))))

(declare-fun bs!575390 () Bool)

(assert (= bs!575390 d!1094181))

(declare-fun m!4242043 () Bool)

(assert (=> bs!575390 m!4242043))

(assert (=> b!3751189 d!1094181))

(declare-fun d!1094183 () Bool)

(declare-fun res!1520317 () Bool)

(declare-fun e!2320383 () Bool)

(assert (=> d!1094183 (=> res!1520317 e!2320383)))

(assert (=> d!1094183 (= res!1520317 ((_ is Nil!40003) (list!14730 t!3709)))))

(assert (=> d!1094183 (= (forall!8221 (list!14730 t!3709) p!1451) e!2320383)))

(declare-fun b!3751228 () Bool)

(declare-fun e!2320384 () Bool)

(assert (=> b!3751228 (= e!2320383 e!2320384)))

(declare-fun res!1520318 () Bool)

(assert (=> b!3751228 (=> (not res!1520318) (not e!2320384))))

(declare-fun dynLambda!17296 (Int T!69070) Bool)

(assert (=> b!3751228 (= res!1520318 (dynLambda!17296 p!1451 (h!45423 (list!14730 t!3709))))))

(declare-fun b!3751229 () Bool)

(assert (=> b!3751229 (= e!2320384 (forall!8221 (t!303108 (list!14730 t!3709)) p!1451))))

(assert (= (and d!1094183 (not res!1520317)) b!3751228))

(assert (= (and b!3751228 res!1520318) b!3751229))

(declare-fun b_lambda!109977 () Bool)

(assert (=> (not b_lambda!109977) (not b!3751228)))

(declare-fun t!303112 () Bool)

(declare-fun tb!214643 () Bool)

(assert (=> (and start!352236 (= p!1451 p!1451) t!303112) tb!214643))

(declare-fun result!262100 () Bool)

(assert (=> tb!214643 (= result!262100 true)))

(assert (=> b!3751228 t!303112))

(declare-fun b_and!278793 () Bool)

(assert (= b_and!278789 (and (=> t!303112 result!262100) b_and!278793)))

(declare-fun m!4242049 () Bool)

(assert (=> b!3751228 m!4242049))

(declare-fun m!4242051 () Bool)

(assert (=> b!3751229 m!4242051))

(assert (=> b!3751187 d!1094183))

(declare-fun b!3751268 () Bool)

(declare-fun e!2320405 () List!40127)

(declare-fun list!14732 (IArray!24463) List!40127)

(assert (=> b!3751268 (= e!2320405 (list!14732 (xs!15431 t!3709)))))

(declare-fun b!3751267 () Bool)

(declare-fun e!2320404 () List!40127)

(assert (=> b!3751267 (= e!2320404 e!2320405)))

(declare-fun c!649256 () Bool)

(assert (=> b!3751267 (= c!649256 ((_ is Leaf!18974) t!3709))))

(declare-fun d!1094187 () Bool)

(declare-fun c!649255 () Bool)

(assert (=> d!1094187 (= c!649255 ((_ is Empty!12229) t!3709))))

(assert (=> d!1094187 (= (list!14730 t!3709) e!2320404)))

(declare-fun b!3751266 () Bool)

(assert (=> b!3751266 (= e!2320404 Nil!40003)))

(declare-fun b!3751269 () Bool)

(declare-fun ++!9897 (List!40127 List!40127) List!40127)

(assert (=> b!3751269 (= e!2320405 (++!9897 (list!14730 (left!30965 t!3709)) (list!14730 (right!31295 t!3709))))))

(assert (= (and d!1094187 c!649255) b!3751266))

(assert (= (and d!1094187 (not c!649255)) b!3751267))

(assert (= (and b!3751267 c!649256) b!3751268))

(assert (= (and b!3751267 (not c!649256)) b!3751269))

(declare-fun m!4242065 () Bool)

(assert (=> b!3751268 m!4242065))

(declare-fun m!4242069 () Bool)

(assert (=> b!3751269 m!4242069))

(declare-fun m!4242071 () Bool)

(assert (=> b!3751269 m!4242071))

(assert (=> b!3751269 m!4242069))

(assert (=> b!3751269 m!4242071))

(declare-fun m!4242073 () Bool)

(assert (=> b!3751269 m!4242073))

(assert (=> b!3751187 d!1094187))

(declare-fun d!1094189 () Bool)

(declare-fun c!649257 () Bool)

(assert (=> d!1094189 (= c!649257 ((_ is Node!12229) t!3709))))

(declare-fun e!2320408 () Bool)

(assert (=> d!1094189 (= (inv!53532 t!3709) e!2320408)))

(declare-fun b!3751273 () Bool)

(assert (=> b!3751273 (= e!2320408 (inv!53536 t!3709))))

(declare-fun b!3751274 () Bool)

(declare-fun e!2320409 () Bool)

(assert (=> b!3751274 (= e!2320408 e!2320409)))

(declare-fun res!1520319 () Bool)

(assert (=> b!3751274 (= res!1520319 (not ((_ is Leaf!18974) t!3709)))))

(assert (=> b!3751274 (=> res!1520319 e!2320409)))

(declare-fun b!3751275 () Bool)

(assert (=> b!3751275 (= e!2320409 (inv!53537 t!3709))))

(assert (= (and d!1094189 c!649257) b!3751273))

(assert (= (and d!1094189 (not c!649257)) b!3751274))

(assert (= (and b!3751274 (not res!1520319)) b!3751275))

(declare-fun m!4242081 () Bool)

(assert (=> b!3751273 m!4242081))

(declare-fun m!4242083 () Bool)

(assert (=> b!3751275 m!4242083))

(assert (=> start!352236 d!1094189))

(declare-fun tp!1145530 () Bool)

(declare-fun tp!1145529 () Bool)

(declare-fun b!3751284 () Bool)

(declare-fun e!2320415 () Bool)

(assert (=> b!3751284 (= e!2320415 (and (inv!53532 (left!30965 (left!30965 t!3709))) tp!1145529 (inv!53532 (right!31295 (left!30965 t!3709))) tp!1145530))))

(declare-fun b!3751286 () Bool)

(declare-fun e!2320414 () Bool)

(declare-fun tp!1145528 () Bool)

(assert (=> b!3751286 (= e!2320414 tp!1145528)))

(declare-fun b!3751285 () Bool)

(assert (=> b!3751285 (= e!2320415 (and (inv!53533 (xs!15431 (left!30965 t!3709))) e!2320414))))

(assert (=> b!3751188 (= tp!1145504 (and (inv!53532 (left!30965 t!3709)) e!2320415))))

(assert (= (and b!3751188 ((_ is Node!12229) (left!30965 t!3709))) b!3751284))

(assert (= b!3751285 b!3751286))

(assert (= (and b!3751188 ((_ is Leaf!18974) (left!30965 t!3709))) b!3751285))

(declare-fun m!4242085 () Bool)

(assert (=> b!3751284 m!4242085))

(declare-fun m!4242087 () Bool)

(assert (=> b!3751284 m!4242087))

(declare-fun m!4242089 () Bool)

(assert (=> b!3751285 m!4242089))

(assert (=> b!3751188 m!4242017))

(declare-fun tp!1145532 () Bool)

(declare-fun tp!1145533 () Bool)

(declare-fun e!2320417 () Bool)

(declare-fun b!3751287 () Bool)

(assert (=> b!3751287 (= e!2320417 (and (inv!53532 (left!30965 (right!31295 t!3709))) tp!1145532 (inv!53532 (right!31295 (right!31295 t!3709))) tp!1145533))))

(declare-fun b!3751289 () Bool)

(declare-fun e!2320416 () Bool)

(declare-fun tp!1145531 () Bool)

(assert (=> b!3751289 (= e!2320416 tp!1145531)))

(declare-fun b!3751288 () Bool)

(assert (=> b!3751288 (= e!2320417 (and (inv!53533 (xs!15431 (right!31295 t!3709))) e!2320416))))

(assert (=> b!3751188 (= tp!1145506 (and (inv!53532 (right!31295 t!3709)) e!2320417))))

(assert (= (and b!3751188 ((_ is Node!12229) (right!31295 t!3709))) b!3751287))

(assert (= b!3751288 b!3751289))

(assert (= (and b!3751188 ((_ is Leaf!18974) (right!31295 t!3709))) b!3751288))

(declare-fun m!4242091 () Bool)

(assert (=> b!3751287 m!4242091))

(declare-fun m!4242093 () Bool)

(assert (=> b!3751287 m!4242093))

(declare-fun m!4242095 () Bool)

(assert (=> b!3751288 m!4242095))

(assert (=> b!3751188 m!4242019))

(declare-fun b!3751294 () Bool)

(declare-fun e!2320420 () Bool)

(declare-fun tp_is_empty!19041 () Bool)

(declare-fun tp!1145536 () Bool)

(assert (=> b!3751294 (= e!2320420 (and tp_is_empty!19041 tp!1145536))))

(assert (=> b!3751190 (= tp!1145505 e!2320420)))

(assert (= (and b!3751190 ((_ is Cons!40003) (innerList!12289 (xs!15431 t!3709)))) b!3751294))

(declare-fun b_lambda!109981 () Bool)

(assert (= b_lambda!109977 (or (and start!352236 b_free!100407) b_lambda!109981)))

(check-sat (not b!3751285) (not b!3751288) b_and!278793 (not b_next!101111) (not b!3751217) tp_is_empty!19041 (not b!3751215) (not b!3751294) (not b!3751289) (not b!3751287) (not d!1094181) (not b_lambda!109981) (not b!3751286) (not b!3751212) (not b!3751214) (not b!3751284) (not b!3751268) (not b!3751269) (not b!3751229) (not b!3751275) (not b!3751273) (not b!3751188))
(check-sat b_and!278793 (not b_next!101111))
