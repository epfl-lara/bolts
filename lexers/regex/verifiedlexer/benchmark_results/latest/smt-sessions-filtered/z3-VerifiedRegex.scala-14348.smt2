; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749314 () Bool)

(assert start!749314)

(declare-datatypes ((T!146038 0))(
  ( (T!146039 (val!32094 Int)) )
))
(declare-datatypes ((List!74606 0))(
  ( (Nil!74482) (Cons!74482 (h!80930 T!146038) (t!390343 List!74606)) )
))
(declare-datatypes ((IArray!31929 0))(
  ( (IArray!31930 (innerList!16022 List!74606)) )
))
(declare-datatypes ((Conc!15934 0))(
  ( (Node!15934 (left!56922 Conc!15934) (right!57252 Conc!15934) (csize!32098 Int) (cheight!16145 Int)) (Leaf!30283 (xs!19332 IArray!31929) (csize!32099 Int)) (Empty!15934) )
))
(declare-fun t!3637 () Conc!15934)

(declare-fun size!43314 (Conc!15934) Int)

(declare-fun isEmpty!42811 (List!74606) Bool)

(declare-fun list!19466 (Conc!15934) List!74606)

(assert (=> start!749314 (not (= (= (size!43314 t!3637) 0) (isEmpty!42811 (list!19466 t!3637))))))

(declare-fun e!4684491 () Bool)

(declare-fun inv!95894 (Conc!15934) Bool)

(assert (=> start!749314 (and (inv!95894 t!3637) e!4684491)))

(declare-fun b!7939056 () Bool)

(declare-fun tp!2360378 () Bool)

(declare-fun tp!2360379 () Bool)

(assert (=> b!7939056 (= e!4684491 (and (inv!95894 (left!56922 t!3637)) tp!2360378 (inv!95894 (right!57252 t!3637)) tp!2360379))))

(declare-fun b!7939058 () Bool)

(declare-fun e!4684492 () Bool)

(declare-fun tp!2360380 () Bool)

(assert (=> b!7939058 (= e!4684492 tp!2360380)))

(declare-fun b!7939057 () Bool)

(declare-fun inv!95895 (IArray!31929) Bool)

(assert (=> b!7939057 (= e!4684491 (and (inv!95895 (xs!19332 t!3637)) e!4684492))))

(get-info :version)

(assert (= (and start!749314 ((_ is Node!15934) t!3637)) b!7939056))

(assert (= b!7939057 b!7939058))

(assert (= (and start!749314 ((_ is Leaf!30283) t!3637)) b!7939057))

(declare-fun m!8328370 () Bool)

(assert (=> start!749314 m!8328370))

(declare-fun m!8328372 () Bool)

(assert (=> start!749314 m!8328372))

(assert (=> start!749314 m!8328372))

(declare-fun m!8328374 () Bool)

(assert (=> start!749314 m!8328374))

(declare-fun m!8328376 () Bool)

(assert (=> start!749314 m!8328376))

(declare-fun m!8328378 () Bool)

(assert (=> b!7939056 m!8328378))

(declare-fun m!8328380 () Bool)

(assert (=> b!7939056 m!8328380))

(declare-fun m!8328382 () Bool)

(assert (=> b!7939057 m!8328382))

(check-sat (not start!749314) (not b!7939056) (not b!7939057) (not b!7939058))
(check-sat)
(get-model)

(declare-fun d!2374585 () Bool)

(declare-fun lt!2695715 () Int)

(declare-fun size!43316 (List!74606) Int)

(assert (=> d!2374585 (= lt!2695715 (size!43316 (list!19466 t!3637)))))

(assert (=> d!2374585 (= lt!2695715 (ite ((_ is Empty!15934) t!3637) 0 (ite ((_ is Leaf!30283) t!3637) (csize!32099 t!3637) (csize!32098 t!3637))))))

(assert (=> d!2374585 (= (size!43314 t!3637) lt!2695715)))

(declare-fun bs!1969340 () Bool)

(assert (= bs!1969340 d!2374585))

(assert (=> bs!1969340 m!8328372))

(assert (=> bs!1969340 m!8328372))

(declare-fun m!8328386 () Bool)

(assert (=> bs!1969340 m!8328386))

(assert (=> start!749314 d!2374585))

(declare-fun d!2374589 () Bool)

(assert (=> d!2374589 (= (isEmpty!42811 (list!19466 t!3637)) ((_ is Nil!74482) (list!19466 t!3637)))))

(assert (=> start!749314 d!2374589))

(declare-fun b!7939076 () Bool)

(declare-fun e!4684501 () List!74606)

(declare-fun e!4684502 () List!74606)

(assert (=> b!7939076 (= e!4684501 e!4684502)))

(declare-fun c!1458578 () Bool)

(assert (=> b!7939076 (= c!1458578 ((_ is Leaf!30283) t!3637))))

(declare-fun d!2374593 () Bool)

(declare-fun c!1458577 () Bool)

(assert (=> d!2374593 (= c!1458577 ((_ is Empty!15934) t!3637))))

(assert (=> d!2374593 (= (list!19466 t!3637) e!4684501)))

(declare-fun b!7939077 () Bool)

(declare-fun list!19467 (IArray!31929) List!74606)

(assert (=> b!7939077 (= e!4684502 (list!19467 (xs!19332 t!3637)))))

(declare-fun b!7939078 () Bool)

(declare-fun ++!18285 (List!74606 List!74606) List!74606)

(assert (=> b!7939078 (= e!4684502 (++!18285 (list!19466 (left!56922 t!3637)) (list!19466 (right!57252 t!3637))))))

(declare-fun b!7939075 () Bool)

(assert (=> b!7939075 (= e!4684501 Nil!74482)))

(assert (= (and d!2374593 c!1458577) b!7939075))

(assert (= (and d!2374593 (not c!1458577)) b!7939076))

(assert (= (and b!7939076 c!1458578) b!7939077))

(assert (= (and b!7939076 (not c!1458578)) b!7939078))

(declare-fun m!8328390 () Bool)

(assert (=> b!7939077 m!8328390))

(declare-fun m!8328392 () Bool)

(assert (=> b!7939078 m!8328392))

(declare-fun m!8328394 () Bool)

(assert (=> b!7939078 m!8328394))

(assert (=> b!7939078 m!8328392))

(assert (=> b!7939078 m!8328394))

(declare-fun m!8328396 () Bool)

(assert (=> b!7939078 m!8328396))

(assert (=> start!749314 d!2374593))

(declare-fun d!2374597 () Bool)

(declare-fun c!1458585 () Bool)

(assert (=> d!2374597 (= c!1458585 ((_ is Node!15934) t!3637))))

(declare-fun e!4684513 () Bool)

(assert (=> d!2374597 (= (inv!95894 t!3637) e!4684513)))

(declare-fun b!7939095 () Bool)

(declare-fun inv!95896 (Conc!15934) Bool)

(assert (=> b!7939095 (= e!4684513 (inv!95896 t!3637))))

(declare-fun b!7939096 () Bool)

(declare-fun e!4684514 () Bool)

(assert (=> b!7939096 (= e!4684513 e!4684514)))

(declare-fun res!3149621 () Bool)

(assert (=> b!7939096 (= res!3149621 (not ((_ is Leaf!30283) t!3637)))))

(assert (=> b!7939096 (=> res!3149621 e!4684514)))

(declare-fun b!7939097 () Bool)

(declare-fun inv!95898 (Conc!15934) Bool)

(assert (=> b!7939097 (= e!4684514 (inv!95898 t!3637))))

(assert (= (and d!2374597 c!1458585) b!7939095))

(assert (= (and d!2374597 (not c!1458585)) b!7939096))

(assert (= (and b!7939096 (not res!3149621)) b!7939097))

(declare-fun m!8328406 () Bool)

(assert (=> b!7939095 m!8328406))

(declare-fun m!8328408 () Bool)

(assert (=> b!7939097 m!8328408))

(assert (=> start!749314 d!2374597))

(declare-fun d!2374601 () Bool)

(declare-fun c!1458587 () Bool)

(assert (=> d!2374601 (= c!1458587 ((_ is Node!15934) (left!56922 t!3637)))))

(declare-fun e!4684517 () Bool)

(assert (=> d!2374601 (= (inv!95894 (left!56922 t!3637)) e!4684517)))

(declare-fun b!7939101 () Bool)

(assert (=> b!7939101 (= e!4684517 (inv!95896 (left!56922 t!3637)))))

(declare-fun b!7939102 () Bool)

(declare-fun e!4684518 () Bool)

(assert (=> b!7939102 (= e!4684517 e!4684518)))

(declare-fun res!3149623 () Bool)

(assert (=> b!7939102 (= res!3149623 (not ((_ is Leaf!30283) (left!56922 t!3637))))))

(assert (=> b!7939102 (=> res!3149623 e!4684518)))

(declare-fun b!7939103 () Bool)

(assert (=> b!7939103 (= e!4684518 (inv!95898 (left!56922 t!3637)))))

(assert (= (and d!2374601 c!1458587) b!7939101))

(assert (= (and d!2374601 (not c!1458587)) b!7939102))

(assert (= (and b!7939102 (not res!3149623)) b!7939103))

(declare-fun m!8328414 () Bool)

(assert (=> b!7939101 m!8328414))

(declare-fun m!8328416 () Bool)

(assert (=> b!7939103 m!8328416))

(assert (=> b!7939056 d!2374601))

(declare-fun d!2374605 () Bool)

(declare-fun c!1458589 () Bool)

(assert (=> d!2374605 (= c!1458589 ((_ is Node!15934) (right!57252 t!3637)))))

(declare-fun e!4684521 () Bool)

(assert (=> d!2374605 (= (inv!95894 (right!57252 t!3637)) e!4684521)))

(declare-fun b!7939107 () Bool)

(assert (=> b!7939107 (= e!4684521 (inv!95896 (right!57252 t!3637)))))

(declare-fun b!7939108 () Bool)

(declare-fun e!4684522 () Bool)

(assert (=> b!7939108 (= e!4684521 e!4684522)))

(declare-fun res!3149625 () Bool)

(assert (=> b!7939108 (= res!3149625 (not ((_ is Leaf!30283) (right!57252 t!3637))))))

(assert (=> b!7939108 (=> res!3149625 e!4684522)))

(declare-fun b!7939109 () Bool)

(assert (=> b!7939109 (= e!4684522 (inv!95898 (right!57252 t!3637)))))

(assert (= (and d!2374605 c!1458589) b!7939107))

(assert (= (and d!2374605 (not c!1458589)) b!7939108))

(assert (= (and b!7939108 (not res!3149625)) b!7939109))

(declare-fun m!8328422 () Bool)

(assert (=> b!7939107 m!8328422))

(declare-fun m!8328424 () Bool)

(assert (=> b!7939109 m!8328424))

(assert (=> b!7939056 d!2374605))

(declare-fun d!2374609 () Bool)

(assert (=> d!2374609 (= (inv!95895 (xs!19332 t!3637)) (<= (size!43316 (innerList!16022 (xs!19332 t!3637))) 2147483647))))

(declare-fun bs!1969342 () Bool)

(assert (= bs!1969342 d!2374609))

(declare-fun m!8328430 () Bool)

(assert (=> bs!1969342 m!8328430))

(assert (=> b!7939057 d!2374609))

(declare-fun b!7939125 () Bool)

(declare-fun e!4684531 () Bool)

(declare-fun tp_is_empty!53295 () Bool)

(declare-fun tp!2360389 () Bool)

(assert (=> b!7939125 (= e!4684531 (and tp_is_empty!53295 tp!2360389))))

(assert (=> b!7939058 (= tp!2360380 e!4684531)))

(assert (= (and b!7939058 ((_ is Cons!74482) (innerList!16022 (xs!19332 t!3637)))) b!7939125))

(declare-fun b!7939145 () Bool)

(declare-fun tp!2360407 () Bool)

(declare-fun tp!2360406 () Bool)

(declare-fun e!4684544 () Bool)

(assert (=> b!7939145 (= e!4684544 (and (inv!95894 (left!56922 (left!56922 t!3637))) tp!2360406 (inv!95894 (right!57252 (left!56922 t!3637))) tp!2360407))))

(declare-fun b!7939147 () Bool)

(declare-fun e!4684543 () Bool)

(declare-fun tp!2360405 () Bool)

(assert (=> b!7939147 (= e!4684543 tp!2360405)))

(declare-fun b!7939146 () Bool)

(assert (=> b!7939146 (= e!4684544 (and (inv!95895 (xs!19332 (left!56922 t!3637))) e!4684543))))

(assert (=> b!7939056 (= tp!2360378 (and (inv!95894 (left!56922 t!3637)) e!4684544))))

(assert (= (and b!7939056 ((_ is Node!15934) (left!56922 t!3637))) b!7939145))

(assert (= b!7939146 b!7939147))

(assert (= (and b!7939056 ((_ is Leaf!30283) (left!56922 t!3637))) b!7939146))

(declare-fun m!8328444 () Bool)

(assert (=> b!7939145 m!8328444))

(declare-fun m!8328446 () Bool)

(assert (=> b!7939145 m!8328446))

(declare-fun m!8328448 () Bool)

(assert (=> b!7939146 m!8328448))

(assert (=> b!7939056 m!8328378))

(declare-fun b!7939148 () Bool)

(declare-fun tp!2360410 () Bool)

(declare-fun e!4684546 () Bool)

(declare-fun tp!2360409 () Bool)

(assert (=> b!7939148 (= e!4684546 (and (inv!95894 (left!56922 (right!57252 t!3637))) tp!2360409 (inv!95894 (right!57252 (right!57252 t!3637))) tp!2360410))))

(declare-fun b!7939150 () Bool)

(declare-fun e!4684545 () Bool)

(declare-fun tp!2360408 () Bool)

(assert (=> b!7939150 (= e!4684545 tp!2360408)))

(declare-fun b!7939149 () Bool)

(assert (=> b!7939149 (= e!4684546 (and (inv!95895 (xs!19332 (right!57252 t!3637))) e!4684545))))

(assert (=> b!7939056 (= tp!2360379 (and (inv!95894 (right!57252 t!3637)) e!4684546))))

(assert (= (and b!7939056 ((_ is Node!15934) (right!57252 t!3637))) b!7939148))

(assert (= b!7939149 b!7939150))

(assert (= (and b!7939056 ((_ is Leaf!30283) (right!57252 t!3637))) b!7939149))

(declare-fun m!8328450 () Bool)

(assert (=> b!7939148 m!8328450))

(declare-fun m!8328452 () Bool)

(assert (=> b!7939148 m!8328452))

(declare-fun m!8328454 () Bool)

(assert (=> b!7939149 m!8328454))

(assert (=> b!7939056 m!8328380))

(check-sat (not b!7939056) (not b!7939103) (not b!7939078) (not b!7939109) (not b!7939125) (not b!7939097) (not b!7939101) (not b!7939146) (not b!7939147) (not b!7939150) (not b!7939149) (not b!7939145) tp_is_empty!53295 (not b!7939148) (not d!2374585) (not b!7939107) (not d!2374609) (not b!7939095) (not b!7939077))
(check-sat)
(get-model)

(declare-fun b!7939163 () Bool)

(declare-fun res!3149634 () Bool)

(declare-fun e!4684554 () Bool)

(assert (=> b!7939163 (=> (not res!3149634) (not e!4684554))))

(declare-fun lt!2695719 () List!74606)

(assert (=> b!7939163 (= res!3149634 (= (size!43316 lt!2695719) (+ (size!43316 (list!19466 (left!56922 t!3637))) (size!43316 (list!19466 (right!57252 t!3637))))))))

(declare-fun b!7939160 () Bool)

(declare-fun e!4684553 () List!74606)

(assert (=> b!7939160 (= e!4684553 (Cons!74482 (h!80930 (list!19466 (left!56922 t!3637))) (++!18285 (t!390343 (list!19466 (left!56922 t!3637))) (list!19466 (right!57252 t!3637)))))))

(declare-fun b!7939159 () Bool)

(assert (=> b!7939159 (= e!4684553 (list!19466 (right!57252 t!3637)))))

(declare-fun d!2374611 () Bool)

(assert (=> d!2374611 e!4684554))

(declare-fun res!3149633 () Bool)

(assert (=> d!2374611 (=> (not res!3149633) (not e!4684554))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15806 (List!74606) (InoxSet T!146038))

(assert (=> d!2374611 (= res!3149633 (= (content!15806 lt!2695719) ((_ map or) (content!15806 (list!19466 (left!56922 t!3637))) (content!15806 (list!19466 (right!57252 t!3637))))))))

(assert (=> d!2374611 (= lt!2695719 e!4684553)))

(declare-fun c!1458593 () Bool)

(assert (=> d!2374611 (= c!1458593 ((_ is Nil!74482) (list!19466 (left!56922 t!3637))))))

(assert (=> d!2374611 (= (++!18285 (list!19466 (left!56922 t!3637)) (list!19466 (right!57252 t!3637))) lt!2695719)))

(declare-fun b!7939164 () Bool)

(assert (=> b!7939164 (= e!4684554 (or (not (= (list!19466 (right!57252 t!3637)) Nil!74482)) (= lt!2695719 (list!19466 (left!56922 t!3637)))))))

(assert (= (and d!2374611 c!1458593) b!7939159))

(assert (= (and d!2374611 (not c!1458593)) b!7939160))

(assert (= (and d!2374611 res!3149633) b!7939163))

(assert (= (and b!7939163 res!3149634) b!7939164))

(declare-fun m!8328456 () Bool)

(assert (=> b!7939163 m!8328456))

(assert (=> b!7939163 m!8328392))

(declare-fun m!8328458 () Bool)

(assert (=> b!7939163 m!8328458))

(assert (=> b!7939163 m!8328394))

(declare-fun m!8328460 () Bool)

(assert (=> b!7939163 m!8328460))

(assert (=> b!7939160 m!8328394))

(declare-fun m!8328462 () Bool)

(assert (=> b!7939160 m!8328462))

(declare-fun m!8328464 () Bool)

(assert (=> d!2374611 m!8328464))

(assert (=> d!2374611 m!8328392))

(declare-fun m!8328466 () Bool)

(assert (=> d!2374611 m!8328466))

(assert (=> d!2374611 m!8328394))

(declare-fun m!8328468 () Bool)

(assert (=> d!2374611 m!8328468))

(assert (=> b!7939078 d!2374611))

(declare-fun b!7939168 () Bool)

(declare-fun e!4684555 () List!74606)

(declare-fun e!4684556 () List!74606)

(assert (=> b!7939168 (= e!4684555 e!4684556)))

(declare-fun c!1458595 () Bool)

(assert (=> b!7939168 (= c!1458595 ((_ is Leaf!30283) (left!56922 t!3637)))))

(declare-fun d!2374615 () Bool)

(declare-fun c!1458594 () Bool)

(assert (=> d!2374615 (= c!1458594 ((_ is Empty!15934) (left!56922 t!3637)))))

(assert (=> d!2374615 (= (list!19466 (left!56922 t!3637)) e!4684555)))

(declare-fun b!7939169 () Bool)

(assert (=> b!7939169 (= e!4684556 (list!19467 (xs!19332 (left!56922 t!3637))))))

(declare-fun b!7939170 () Bool)

(assert (=> b!7939170 (= e!4684556 (++!18285 (list!19466 (left!56922 (left!56922 t!3637))) (list!19466 (right!57252 (left!56922 t!3637)))))))

(declare-fun b!7939167 () Bool)

(assert (=> b!7939167 (= e!4684555 Nil!74482)))

(assert (= (and d!2374615 c!1458594) b!7939167))

(assert (= (and d!2374615 (not c!1458594)) b!7939168))

(assert (= (and b!7939168 c!1458595) b!7939169))

(assert (= (and b!7939168 (not c!1458595)) b!7939170))

(declare-fun m!8328470 () Bool)

(assert (=> b!7939169 m!8328470))

(declare-fun m!8328472 () Bool)

(assert (=> b!7939170 m!8328472))

(declare-fun m!8328474 () Bool)

(assert (=> b!7939170 m!8328474))

(assert (=> b!7939170 m!8328472))

(assert (=> b!7939170 m!8328474))

(declare-fun m!8328476 () Bool)

(assert (=> b!7939170 m!8328476))

(assert (=> b!7939078 d!2374615))

(declare-fun b!7939172 () Bool)

(declare-fun e!4684557 () List!74606)

(declare-fun e!4684558 () List!74606)

(assert (=> b!7939172 (= e!4684557 e!4684558)))

(declare-fun c!1458597 () Bool)

(assert (=> b!7939172 (= c!1458597 ((_ is Leaf!30283) (right!57252 t!3637)))))

(declare-fun d!2374617 () Bool)

(declare-fun c!1458596 () Bool)

(assert (=> d!2374617 (= c!1458596 ((_ is Empty!15934) (right!57252 t!3637)))))

(assert (=> d!2374617 (= (list!19466 (right!57252 t!3637)) e!4684557)))

(declare-fun b!7939173 () Bool)

(assert (=> b!7939173 (= e!4684558 (list!19467 (xs!19332 (right!57252 t!3637))))))

(declare-fun b!7939174 () Bool)

(assert (=> b!7939174 (= e!4684558 (++!18285 (list!19466 (left!56922 (right!57252 t!3637))) (list!19466 (right!57252 (right!57252 t!3637)))))))

(declare-fun b!7939171 () Bool)

(assert (=> b!7939171 (= e!4684557 Nil!74482)))

(assert (= (and d!2374617 c!1458596) b!7939171))

(assert (= (and d!2374617 (not c!1458596)) b!7939172))

(assert (= (and b!7939172 c!1458597) b!7939173))

(assert (= (and b!7939172 (not c!1458597)) b!7939174))

(declare-fun m!8328478 () Bool)

(assert (=> b!7939173 m!8328478))

(declare-fun m!8328480 () Bool)

(assert (=> b!7939174 m!8328480))

(declare-fun m!8328482 () Bool)

(assert (=> b!7939174 m!8328482))

(assert (=> b!7939174 m!8328480))

(assert (=> b!7939174 m!8328482))

(declare-fun m!8328484 () Bool)

(assert (=> b!7939174 m!8328484))

(assert (=> b!7939078 d!2374617))

(declare-fun d!2374619 () Bool)

(assert (=> d!2374619 (= (inv!95895 (xs!19332 (left!56922 t!3637))) (<= (size!43316 (innerList!16022 (xs!19332 (left!56922 t!3637)))) 2147483647))))

(declare-fun bs!1969343 () Bool)

(assert (= bs!1969343 d!2374619))

(declare-fun m!8328490 () Bool)

(assert (=> bs!1969343 m!8328490))

(assert (=> b!7939146 d!2374619))

(declare-fun d!2374621 () Bool)

(assert (=> d!2374621 (= (list!19467 (xs!19332 t!3637)) (innerList!16022 (xs!19332 t!3637)))))

(assert (=> b!7939077 d!2374621))

(declare-fun d!2374627 () Bool)

(declare-fun lt!2695722 () Int)

(assert (=> d!2374627 (>= lt!2695722 0)))

(declare-fun e!4684566 () Int)

(assert (=> d!2374627 (= lt!2695722 e!4684566)))

(declare-fun c!1458602 () Bool)

(assert (=> d!2374627 (= c!1458602 ((_ is Nil!74482) (list!19466 t!3637)))))

(assert (=> d!2374627 (= (size!43316 (list!19466 t!3637)) lt!2695722)))

(declare-fun b!7939187 () Bool)

(assert (=> b!7939187 (= e!4684566 0)))

(declare-fun b!7939188 () Bool)

(assert (=> b!7939188 (= e!4684566 (+ 1 (size!43316 (t!390343 (list!19466 t!3637)))))))

(assert (= (and d!2374627 c!1458602) b!7939187))

(assert (= (and d!2374627 (not c!1458602)) b!7939188))

(declare-fun m!8328500 () Bool)

(assert (=> b!7939188 m!8328500))

(assert (=> d!2374585 d!2374627))

(assert (=> d!2374585 d!2374593))

(declare-fun d!2374631 () Bool)

(declare-fun c!1458603 () Bool)

(assert (=> d!2374631 (= c!1458603 ((_ is Node!15934) (left!56922 (left!56922 t!3637))))))

(declare-fun e!4684567 () Bool)

(assert (=> d!2374631 (= (inv!95894 (left!56922 (left!56922 t!3637))) e!4684567)))

(declare-fun b!7939189 () Bool)

(assert (=> b!7939189 (= e!4684567 (inv!95896 (left!56922 (left!56922 t!3637))))))

(declare-fun b!7939190 () Bool)

(declare-fun e!4684568 () Bool)

(assert (=> b!7939190 (= e!4684567 e!4684568)))

(declare-fun res!3149641 () Bool)

(assert (=> b!7939190 (= res!3149641 (not ((_ is Leaf!30283) (left!56922 (left!56922 t!3637)))))))

(assert (=> b!7939190 (=> res!3149641 e!4684568)))

(declare-fun b!7939191 () Bool)

(assert (=> b!7939191 (= e!4684568 (inv!95898 (left!56922 (left!56922 t!3637))))))

(assert (= (and d!2374631 c!1458603) b!7939189))

(assert (= (and d!2374631 (not c!1458603)) b!7939190))

(assert (= (and b!7939190 (not res!3149641)) b!7939191))

(declare-fun m!8328502 () Bool)

(assert (=> b!7939189 m!8328502))

(declare-fun m!8328504 () Bool)

(assert (=> b!7939191 m!8328504))

(assert (=> b!7939145 d!2374631))

(declare-fun d!2374633 () Bool)

(declare-fun c!1458604 () Bool)

(assert (=> d!2374633 (= c!1458604 ((_ is Node!15934) (right!57252 (left!56922 t!3637))))))

(declare-fun e!4684569 () Bool)

(assert (=> d!2374633 (= (inv!95894 (right!57252 (left!56922 t!3637))) e!4684569)))

(declare-fun b!7939192 () Bool)

(assert (=> b!7939192 (= e!4684569 (inv!95896 (right!57252 (left!56922 t!3637))))))

(declare-fun b!7939193 () Bool)

(declare-fun e!4684570 () Bool)

(assert (=> b!7939193 (= e!4684569 e!4684570)))

(declare-fun res!3149642 () Bool)

(assert (=> b!7939193 (= res!3149642 (not ((_ is Leaf!30283) (right!57252 (left!56922 t!3637)))))))

(assert (=> b!7939193 (=> res!3149642 e!4684570)))

(declare-fun b!7939194 () Bool)

(assert (=> b!7939194 (= e!4684570 (inv!95898 (right!57252 (left!56922 t!3637))))))

(assert (= (and d!2374633 c!1458604) b!7939192))

(assert (= (and d!2374633 (not c!1458604)) b!7939193))

(assert (= (and b!7939193 (not res!3149642)) b!7939194))

(declare-fun m!8328506 () Bool)

(assert (=> b!7939192 m!8328506))

(declare-fun m!8328508 () Bool)

(assert (=> b!7939194 m!8328508))

(assert (=> b!7939145 d!2374633))

(declare-fun d!2374635 () Bool)

(declare-fun res!3149667 () Bool)

(declare-fun e!4684583 () Bool)

(assert (=> d!2374635 (=> (not res!3149667) (not e!4684583))))

(assert (=> d!2374635 (= res!3149667 (= (csize!32098 t!3637) (+ (size!43314 (left!56922 t!3637)) (size!43314 (right!57252 t!3637)))))))

(assert (=> d!2374635 (= (inv!95896 t!3637) e!4684583)))

(declare-fun b!7939223 () Bool)

(declare-fun res!3149668 () Bool)

(assert (=> b!7939223 (=> (not res!3149668) (not e!4684583))))

(assert (=> b!7939223 (= res!3149668 (and (not (= (left!56922 t!3637) Empty!15934)) (not (= (right!57252 t!3637) Empty!15934))))))

(declare-fun b!7939224 () Bool)

(declare-fun res!3149669 () Bool)

(assert (=> b!7939224 (=> (not res!3149669) (not e!4684583))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2241 (Conc!15934) Int)

(assert (=> b!7939224 (= res!3149669 (= (cheight!16145 t!3637) (+ (max!0 (height!2241 (left!56922 t!3637)) (height!2241 (right!57252 t!3637))) 1)))))

(declare-fun b!7939225 () Bool)

(assert (=> b!7939225 (= e!4684583 (<= 0 (cheight!16145 t!3637)))))

(assert (= (and d!2374635 res!3149667) b!7939223))

(assert (= (and b!7939223 res!3149668) b!7939224))

(assert (= (and b!7939224 res!3149669) b!7939225))

(declare-fun m!8328548 () Bool)

(assert (=> d!2374635 m!8328548))

(declare-fun m!8328550 () Bool)

(assert (=> d!2374635 m!8328550))

(declare-fun m!8328552 () Bool)

(assert (=> b!7939224 m!8328552))

(declare-fun m!8328554 () Bool)

(assert (=> b!7939224 m!8328554))

(assert (=> b!7939224 m!8328552))

(assert (=> b!7939224 m!8328554))

(declare-fun m!8328556 () Bool)

(assert (=> b!7939224 m!8328556))

(assert (=> b!7939095 d!2374635))

(declare-fun d!2374653 () Bool)

(declare-fun res!3149674 () Bool)

(declare-fun e!4684589 () Bool)

(assert (=> d!2374653 (=> (not res!3149674) (not e!4684589))))

(assert (=> d!2374653 (= res!3149674 (<= (size!43316 (list!19467 (xs!19332 (left!56922 t!3637)))) 512))))

(assert (=> d!2374653 (= (inv!95898 (left!56922 t!3637)) e!4684589)))

(declare-fun b!7939236 () Bool)

(declare-fun res!3149675 () Bool)

(assert (=> b!7939236 (=> (not res!3149675) (not e!4684589))))

(assert (=> b!7939236 (= res!3149675 (= (csize!32099 (left!56922 t!3637)) (size!43316 (list!19467 (xs!19332 (left!56922 t!3637))))))))

(declare-fun b!7939237 () Bool)

(assert (=> b!7939237 (= e!4684589 (and (> (csize!32099 (left!56922 t!3637)) 0) (<= (csize!32099 (left!56922 t!3637)) 512)))))

(assert (= (and d!2374653 res!3149674) b!7939236))

(assert (= (and b!7939236 res!3149675) b!7939237))

(assert (=> d!2374653 m!8328470))

(assert (=> d!2374653 m!8328470))

(declare-fun m!8328560 () Bool)

(assert (=> d!2374653 m!8328560))

(assert (=> b!7939236 m!8328470))

(assert (=> b!7939236 m!8328470))

(assert (=> b!7939236 m!8328560))

(assert (=> b!7939103 d!2374653))

(declare-fun d!2374657 () Bool)

(declare-fun res!3149676 () Bool)

(declare-fun e!4684590 () Bool)

(assert (=> d!2374657 (=> (not res!3149676) (not e!4684590))))

(assert (=> d!2374657 (= res!3149676 (= (csize!32098 (left!56922 t!3637)) (+ (size!43314 (left!56922 (left!56922 t!3637))) (size!43314 (right!57252 (left!56922 t!3637))))))))

(assert (=> d!2374657 (= (inv!95896 (left!56922 t!3637)) e!4684590)))

(declare-fun b!7939238 () Bool)

(declare-fun res!3149677 () Bool)

(assert (=> b!7939238 (=> (not res!3149677) (not e!4684590))))

(assert (=> b!7939238 (= res!3149677 (and (not (= (left!56922 (left!56922 t!3637)) Empty!15934)) (not (= (right!57252 (left!56922 t!3637)) Empty!15934))))))

(declare-fun b!7939239 () Bool)

(declare-fun res!3149678 () Bool)

(assert (=> b!7939239 (=> (not res!3149678) (not e!4684590))))

(assert (=> b!7939239 (= res!3149678 (= (cheight!16145 (left!56922 t!3637)) (+ (max!0 (height!2241 (left!56922 (left!56922 t!3637))) (height!2241 (right!57252 (left!56922 t!3637)))) 1)))))

(declare-fun b!7939240 () Bool)

(assert (=> b!7939240 (= e!4684590 (<= 0 (cheight!16145 (left!56922 t!3637))))))

(assert (= (and d!2374657 res!3149676) b!7939238))

(assert (= (and b!7939238 res!3149677) b!7939239))

(assert (= (and b!7939239 res!3149678) b!7939240))

(declare-fun m!8328562 () Bool)

(assert (=> d!2374657 m!8328562))

(declare-fun m!8328564 () Bool)

(assert (=> d!2374657 m!8328564))

(declare-fun m!8328566 () Bool)

(assert (=> b!7939239 m!8328566))

(declare-fun m!8328568 () Bool)

(assert (=> b!7939239 m!8328568))

(assert (=> b!7939239 m!8328566))

(assert (=> b!7939239 m!8328568))

(declare-fun m!8328570 () Bool)

(assert (=> b!7939239 m!8328570))

(assert (=> b!7939101 d!2374657))

(declare-fun d!2374659 () Bool)

(declare-fun c!1458610 () Bool)

(assert (=> d!2374659 (= c!1458610 ((_ is Node!15934) (left!56922 (right!57252 t!3637))))))

(declare-fun e!4684591 () Bool)

(assert (=> d!2374659 (= (inv!95894 (left!56922 (right!57252 t!3637))) e!4684591)))

(declare-fun b!7939241 () Bool)

(assert (=> b!7939241 (= e!4684591 (inv!95896 (left!56922 (right!57252 t!3637))))))

(declare-fun b!7939242 () Bool)

(declare-fun e!4684592 () Bool)

(assert (=> b!7939242 (= e!4684591 e!4684592)))

(declare-fun res!3149679 () Bool)

(assert (=> b!7939242 (= res!3149679 (not ((_ is Leaf!30283) (left!56922 (right!57252 t!3637)))))))

(assert (=> b!7939242 (=> res!3149679 e!4684592)))

(declare-fun b!7939243 () Bool)

(assert (=> b!7939243 (= e!4684592 (inv!95898 (left!56922 (right!57252 t!3637))))))

(assert (= (and d!2374659 c!1458610) b!7939241))

(assert (= (and d!2374659 (not c!1458610)) b!7939242))

(assert (= (and b!7939242 (not res!3149679)) b!7939243))

(declare-fun m!8328572 () Bool)

(assert (=> b!7939241 m!8328572))

(declare-fun m!8328574 () Bool)

(assert (=> b!7939243 m!8328574))

(assert (=> b!7939148 d!2374659))

(declare-fun d!2374661 () Bool)

(declare-fun c!1458611 () Bool)

(assert (=> d!2374661 (= c!1458611 ((_ is Node!15934) (right!57252 (right!57252 t!3637))))))

(declare-fun e!4684593 () Bool)

(assert (=> d!2374661 (= (inv!95894 (right!57252 (right!57252 t!3637))) e!4684593)))

(declare-fun b!7939244 () Bool)

(assert (=> b!7939244 (= e!4684593 (inv!95896 (right!57252 (right!57252 t!3637))))))

(declare-fun b!7939245 () Bool)

(declare-fun e!4684594 () Bool)

(assert (=> b!7939245 (= e!4684593 e!4684594)))

(declare-fun res!3149680 () Bool)

(assert (=> b!7939245 (= res!3149680 (not ((_ is Leaf!30283) (right!57252 (right!57252 t!3637)))))))

(assert (=> b!7939245 (=> res!3149680 e!4684594)))

(declare-fun b!7939246 () Bool)

(assert (=> b!7939246 (= e!4684594 (inv!95898 (right!57252 (right!57252 t!3637))))))

(assert (= (and d!2374661 c!1458611) b!7939244))

(assert (= (and d!2374661 (not c!1458611)) b!7939245))

(assert (= (and b!7939245 (not res!3149680)) b!7939246))

(declare-fun m!8328576 () Bool)

(assert (=> b!7939244 m!8328576))

(declare-fun m!8328578 () Bool)

(assert (=> b!7939246 m!8328578))

(assert (=> b!7939148 d!2374661))

(declare-fun d!2374663 () Bool)

(declare-fun lt!2695726 () Int)

(assert (=> d!2374663 (>= lt!2695726 0)))

(declare-fun e!4684595 () Int)

(assert (=> d!2374663 (= lt!2695726 e!4684595)))

(declare-fun c!1458612 () Bool)

(assert (=> d!2374663 (= c!1458612 ((_ is Nil!74482) (innerList!16022 (xs!19332 t!3637))))))

(assert (=> d!2374663 (= (size!43316 (innerList!16022 (xs!19332 t!3637))) lt!2695726)))

(declare-fun b!7939247 () Bool)

(assert (=> b!7939247 (= e!4684595 0)))

(declare-fun b!7939248 () Bool)

(assert (=> b!7939248 (= e!4684595 (+ 1 (size!43316 (t!390343 (innerList!16022 (xs!19332 t!3637))))))))

(assert (= (and d!2374663 c!1458612) b!7939247))

(assert (= (and d!2374663 (not c!1458612)) b!7939248))

(declare-fun m!8328580 () Bool)

(assert (=> b!7939248 m!8328580))

(assert (=> d!2374609 d!2374663))

(declare-fun d!2374665 () Bool)

(assert (=> d!2374665 (= (inv!95895 (xs!19332 (right!57252 t!3637))) (<= (size!43316 (innerList!16022 (xs!19332 (right!57252 t!3637)))) 2147483647))))

(declare-fun bs!1969346 () Bool)

(assert (= bs!1969346 d!2374665))

(declare-fun m!8328582 () Bool)

(assert (=> bs!1969346 m!8328582))

(assert (=> b!7939149 d!2374665))

(declare-fun d!2374667 () Bool)

(declare-fun res!3149681 () Bool)

(declare-fun e!4684596 () Bool)

(assert (=> d!2374667 (=> (not res!3149681) (not e!4684596))))

(assert (=> d!2374667 (= res!3149681 (= (csize!32098 (right!57252 t!3637)) (+ (size!43314 (left!56922 (right!57252 t!3637))) (size!43314 (right!57252 (right!57252 t!3637))))))))

(assert (=> d!2374667 (= (inv!95896 (right!57252 t!3637)) e!4684596)))

(declare-fun b!7939249 () Bool)

(declare-fun res!3149682 () Bool)

(assert (=> b!7939249 (=> (not res!3149682) (not e!4684596))))

(assert (=> b!7939249 (= res!3149682 (and (not (= (left!56922 (right!57252 t!3637)) Empty!15934)) (not (= (right!57252 (right!57252 t!3637)) Empty!15934))))))

(declare-fun b!7939250 () Bool)

(declare-fun res!3149683 () Bool)

(assert (=> b!7939250 (=> (not res!3149683) (not e!4684596))))

(assert (=> b!7939250 (= res!3149683 (= (cheight!16145 (right!57252 t!3637)) (+ (max!0 (height!2241 (left!56922 (right!57252 t!3637))) (height!2241 (right!57252 (right!57252 t!3637)))) 1)))))

(declare-fun b!7939251 () Bool)

(assert (=> b!7939251 (= e!4684596 (<= 0 (cheight!16145 (right!57252 t!3637))))))

(assert (= (and d!2374667 res!3149681) b!7939249))

(assert (= (and b!7939249 res!3149682) b!7939250))

(assert (= (and b!7939250 res!3149683) b!7939251))

(declare-fun m!8328584 () Bool)

(assert (=> d!2374667 m!8328584))

(declare-fun m!8328586 () Bool)

(assert (=> d!2374667 m!8328586))

(declare-fun m!8328588 () Bool)

(assert (=> b!7939250 m!8328588))

(declare-fun m!8328590 () Bool)

(assert (=> b!7939250 m!8328590))

(assert (=> b!7939250 m!8328588))

(assert (=> b!7939250 m!8328590))

(declare-fun m!8328592 () Bool)

(assert (=> b!7939250 m!8328592))

(assert (=> b!7939107 d!2374667))

(declare-fun d!2374669 () Bool)

(declare-fun res!3149686 () Bool)

(declare-fun e!4684601 () Bool)

(assert (=> d!2374669 (=> (not res!3149686) (not e!4684601))))

(assert (=> d!2374669 (= res!3149686 (<= (size!43316 (list!19467 (xs!19332 t!3637))) 512))))

(assert (=> d!2374669 (= (inv!95898 t!3637) e!4684601)))

(declare-fun b!7939256 () Bool)

(declare-fun res!3149687 () Bool)

(assert (=> b!7939256 (=> (not res!3149687) (not e!4684601))))

(assert (=> b!7939256 (= res!3149687 (= (csize!32099 t!3637) (size!43316 (list!19467 (xs!19332 t!3637)))))))

(declare-fun b!7939257 () Bool)

(assert (=> b!7939257 (= e!4684601 (and (> (csize!32099 t!3637) 0) (<= (csize!32099 t!3637) 512)))))

(assert (= (and d!2374669 res!3149686) b!7939256))

(assert (= (and b!7939256 res!3149687) b!7939257))

(assert (=> d!2374669 m!8328390))

(assert (=> d!2374669 m!8328390))

(declare-fun m!8328594 () Bool)

(assert (=> d!2374669 m!8328594))

(assert (=> b!7939256 m!8328390))

(assert (=> b!7939256 m!8328390))

(assert (=> b!7939256 m!8328594))

(assert (=> b!7939097 d!2374669))

(declare-fun d!2374671 () Bool)

(declare-fun res!3149690 () Bool)

(declare-fun e!4684602 () Bool)

(assert (=> d!2374671 (=> (not res!3149690) (not e!4684602))))

(assert (=> d!2374671 (= res!3149690 (<= (size!43316 (list!19467 (xs!19332 (right!57252 t!3637)))) 512))))

(assert (=> d!2374671 (= (inv!95898 (right!57252 t!3637)) e!4684602)))

(declare-fun b!7939262 () Bool)

(declare-fun res!3149691 () Bool)

(assert (=> b!7939262 (=> (not res!3149691) (not e!4684602))))

(assert (=> b!7939262 (= res!3149691 (= (csize!32099 (right!57252 t!3637)) (size!43316 (list!19467 (xs!19332 (right!57252 t!3637))))))))

(declare-fun b!7939263 () Bool)

(assert (=> b!7939263 (= e!4684602 (and (> (csize!32099 (right!57252 t!3637)) 0) (<= (csize!32099 (right!57252 t!3637)) 512)))))

(assert (= (and d!2374671 res!3149690) b!7939262))

(assert (= (and b!7939262 res!3149691) b!7939263))

(assert (=> d!2374671 m!8328478))

(assert (=> d!2374671 m!8328478))

(declare-fun m!8328596 () Bool)

(assert (=> d!2374671 m!8328596))

(assert (=> b!7939262 m!8328478))

(assert (=> b!7939262 m!8328478))

(assert (=> b!7939262 m!8328596))

(assert (=> b!7939109 d!2374671))

(assert (=> b!7939056 d!2374601))

(assert (=> b!7939056 d!2374605))

(declare-fun b!7939264 () Bool)

(declare-fun e!4684603 () Bool)

(declare-fun tp!2360411 () Bool)

(assert (=> b!7939264 (= e!4684603 (and tp_is_empty!53295 tp!2360411))))

(assert (=> b!7939150 (= tp!2360408 e!4684603)))

(assert (= (and b!7939150 ((_ is Cons!74482) (innerList!16022 (xs!19332 (right!57252 t!3637))))) b!7939264))

(declare-fun tp!2360414 () Bool)

(declare-fun tp!2360413 () Bool)

(declare-fun e!4684605 () Bool)

(declare-fun b!7939265 () Bool)

(assert (=> b!7939265 (= e!4684605 (and (inv!95894 (left!56922 (left!56922 (left!56922 t!3637)))) tp!2360413 (inv!95894 (right!57252 (left!56922 (left!56922 t!3637)))) tp!2360414))))

(declare-fun b!7939267 () Bool)

(declare-fun e!4684604 () Bool)

(declare-fun tp!2360412 () Bool)

(assert (=> b!7939267 (= e!4684604 tp!2360412)))

(declare-fun b!7939266 () Bool)

(assert (=> b!7939266 (= e!4684605 (and (inv!95895 (xs!19332 (left!56922 (left!56922 t!3637)))) e!4684604))))

(assert (=> b!7939145 (= tp!2360406 (and (inv!95894 (left!56922 (left!56922 t!3637))) e!4684605))))

(assert (= (and b!7939145 ((_ is Node!15934) (left!56922 (left!56922 t!3637)))) b!7939265))

(assert (= b!7939266 b!7939267))

(assert (= (and b!7939145 ((_ is Leaf!30283) (left!56922 (left!56922 t!3637)))) b!7939266))

(declare-fun m!8328598 () Bool)

(assert (=> b!7939265 m!8328598))

(declare-fun m!8328600 () Bool)

(assert (=> b!7939265 m!8328600))

(declare-fun m!8328602 () Bool)

(assert (=> b!7939266 m!8328602))

(assert (=> b!7939145 m!8328444))

(declare-fun tp!2360417 () Bool)

(declare-fun tp!2360416 () Bool)

(declare-fun e!4684607 () Bool)

(declare-fun b!7939268 () Bool)

(assert (=> b!7939268 (= e!4684607 (and (inv!95894 (left!56922 (right!57252 (left!56922 t!3637)))) tp!2360416 (inv!95894 (right!57252 (right!57252 (left!56922 t!3637)))) tp!2360417))))

(declare-fun b!7939270 () Bool)

(declare-fun e!4684606 () Bool)

(declare-fun tp!2360415 () Bool)

(assert (=> b!7939270 (= e!4684606 tp!2360415)))

(declare-fun b!7939269 () Bool)

(assert (=> b!7939269 (= e!4684607 (and (inv!95895 (xs!19332 (right!57252 (left!56922 t!3637)))) e!4684606))))

(assert (=> b!7939145 (= tp!2360407 (and (inv!95894 (right!57252 (left!56922 t!3637))) e!4684607))))

(assert (= (and b!7939145 ((_ is Node!15934) (right!57252 (left!56922 t!3637)))) b!7939268))

(assert (= b!7939269 b!7939270))

(assert (= (and b!7939145 ((_ is Leaf!30283) (right!57252 (left!56922 t!3637)))) b!7939269))

(declare-fun m!8328604 () Bool)

(assert (=> b!7939268 m!8328604))

(declare-fun m!8328606 () Bool)

(assert (=> b!7939268 m!8328606))

(declare-fun m!8328608 () Bool)

(assert (=> b!7939269 m!8328608))

(assert (=> b!7939145 m!8328446))

(declare-fun b!7939271 () Bool)

(declare-fun e!4684608 () Bool)

(declare-fun tp!2360418 () Bool)

(assert (=> b!7939271 (= e!4684608 (and tp_is_empty!53295 tp!2360418))))

(assert (=> b!7939147 (= tp!2360405 e!4684608)))

(assert (= (and b!7939147 ((_ is Cons!74482) (innerList!16022 (xs!19332 (left!56922 t!3637))))) b!7939271))

(declare-fun b!7939272 () Bool)

(declare-fun e!4684609 () Bool)

(declare-fun tp!2360419 () Bool)

(assert (=> b!7939272 (= e!4684609 (and tp_is_empty!53295 tp!2360419))))

(assert (=> b!7939125 (= tp!2360389 e!4684609)))

(assert (= (and b!7939125 ((_ is Cons!74482) (t!390343 (innerList!16022 (xs!19332 t!3637))))) b!7939272))

(declare-fun b!7939273 () Bool)

(declare-fun e!4684611 () Bool)

(declare-fun tp!2360422 () Bool)

(declare-fun tp!2360421 () Bool)

(assert (=> b!7939273 (= e!4684611 (and (inv!95894 (left!56922 (left!56922 (right!57252 t!3637)))) tp!2360421 (inv!95894 (right!57252 (left!56922 (right!57252 t!3637)))) tp!2360422))))

(declare-fun b!7939275 () Bool)

(declare-fun e!4684610 () Bool)

(declare-fun tp!2360420 () Bool)

(assert (=> b!7939275 (= e!4684610 tp!2360420)))

(declare-fun b!7939274 () Bool)

(assert (=> b!7939274 (= e!4684611 (and (inv!95895 (xs!19332 (left!56922 (right!57252 t!3637)))) e!4684610))))

(assert (=> b!7939148 (= tp!2360409 (and (inv!95894 (left!56922 (right!57252 t!3637))) e!4684611))))

(assert (= (and b!7939148 ((_ is Node!15934) (left!56922 (right!57252 t!3637)))) b!7939273))

(assert (= b!7939274 b!7939275))

(assert (= (and b!7939148 ((_ is Leaf!30283) (left!56922 (right!57252 t!3637)))) b!7939274))

(declare-fun m!8328610 () Bool)

(assert (=> b!7939273 m!8328610))

(declare-fun m!8328612 () Bool)

(assert (=> b!7939273 m!8328612))

(declare-fun m!8328614 () Bool)

(assert (=> b!7939274 m!8328614))

(assert (=> b!7939148 m!8328450))

(declare-fun b!7939280 () Bool)

(declare-fun e!4684615 () Bool)

(declare-fun tp!2360424 () Bool)

(declare-fun tp!2360425 () Bool)

(assert (=> b!7939280 (= e!4684615 (and (inv!95894 (left!56922 (right!57252 (right!57252 t!3637)))) tp!2360424 (inv!95894 (right!57252 (right!57252 (right!57252 t!3637)))) tp!2360425))))

(declare-fun b!7939282 () Bool)

(declare-fun e!4684614 () Bool)

(declare-fun tp!2360423 () Bool)

(assert (=> b!7939282 (= e!4684614 tp!2360423)))

(declare-fun b!7939281 () Bool)

(assert (=> b!7939281 (= e!4684615 (and (inv!95895 (xs!19332 (right!57252 (right!57252 t!3637)))) e!4684614))))

(assert (=> b!7939148 (= tp!2360410 (and (inv!95894 (right!57252 (right!57252 t!3637))) e!4684615))))

(assert (= (and b!7939148 ((_ is Node!15934) (right!57252 (right!57252 t!3637)))) b!7939280))

(assert (= b!7939281 b!7939282))

(assert (= (and b!7939148 ((_ is Leaf!30283) (right!57252 (right!57252 t!3637)))) b!7939281))

(declare-fun m!8328616 () Bool)

(assert (=> b!7939280 m!8328616))

(declare-fun m!8328618 () Bool)

(assert (=> b!7939280 m!8328618))

(declare-fun m!8328622 () Bool)

(assert (=> b!7939281 m!8328622))

(assert (=> b!7939148 m!8328452))

(check-sat (not b!7939250) (not b!7939273) (not b!7939173) (not b!7939243) (not b!7939282) (not b!7939246) (not b!7939262) (not d!2374671) (not b!7939236) (not b!7939188) (not b!7939191) (not b!7939275) (not d!2374667) (not b!7939160) (not b!7939192) (not b!7939271) (not d!2374653) (not b!7939241) (not b!7939265) (not d!2374619) (not d!2374669) (not b!7939268) (not d!2374657) (not b!7939170) (not b!7939269) (not b!7939272) (not b!7939174) (not b!7939145) tp_is_empty!53295 (not b!7939248) (not b!7939264) (not b!7939280) (not b!7939189) (not b!7939274) (not b!7939148) (not b!7939267) (not b!7939224) (not b!7939169) (not b!7939270) (not d!2374611) (not b!7939281) (not d!2374665) (not d!2374635) (not b!7939256) (not b!7939239) (not b!7939194) (not b!7939244) (not b!7939266) (not b!7939163))
(check-sat)
(get-model)

(declare-fun d!2374683 () Bool)

(declare-fun res!3149697 () Bool)

(declare-fun e!4684633 () Bool)

(assert (=> d!2374683 (=> (not res!3149697) (not e!4684633))))

(assert (=> d!2374683 (= res!3149697 (= (csize!32098 (right!57252 (right!57252 t!3637))) (+ (size!43314 (left!56922 (right!57252 (right!57252 t!3637)))) (size!43314 (right!57252 (right!57252 (right!57252 t!3637)))))))))

(assert (=> d!2374683 (= (inv!95896 (right!57252 (right!57252 t!3637))) e!4684633)))

(declare-fun b!7939311 () Bool)

(declare-fun res!3149698 () Bool)

(assert (=> b!7939311 (=> (not res!3149698) (not e!4684633))))

(assert (=> b!7939311 (= res!3149698 (and (not (= (left!56922 (right!57252 (right!57252 t!3637))) Empty!15934)) (not (= (right!57252 (right!57252 (right!57252 t!3637))) Empty!15934))))))

(declare-fun b!7939312 () Bool)

(declare-fun res!3149699 () Bool)

(assert (=> b!7939312 (=> (not res!3149699) (not e!4684633))))

(assert (=> b!7939312 (= res!3149699 (= (cheight!16145 (right!57252 (right!57252 t!3637))) (+ (max!0 (height!2241 (left!56922 (right!57252 (right!57252 t!3637)))) (height!2241 (right!57252 (right!57252 (right!57252 t!3637))))) 1)))))

(declare-fun b!7939313 () Bool)

(assert (=> b!7939313 (= e!4684633 (<= 0 (cheight!16145 (right!57252 (right!57252 t!3637)))))))

(assert (= (and d!2374683 res!3149697) b!7939311))

(assert (= (and b!7939311 res!3149698) b!7939312))

(assert (= (and b!7939312 res!3149699) b!7939313))

(declare-fun m!8328684 () Bool)

(assert (=> d!2374683 m!8328684))

(declare-fun m!8328686 () Bool)

(assert (=> d!2374683 m!8328686))

(declare-fun m!8328688 () Bool)

(assert (=> b!7939312 m!8328688))

(declare-fun m!8328690 () Bool)

(assert (=> b!7939312 m!8328690))

(assert (=> b!7939312 m!8328688))

(assert (=> b!7939312 m!8328690))

(declare-fun m!8328692 () Bool)

(assert (=> b!7939312 m!8328692))

(assert (=> b!7939244 d!2374683))

(declare-fun d!2374685 () Bool)

(assert (=> d!2374685 (= (inv!95895 (xs!19332 (right!57252 (right!57252 t!3637)))) (<= (size!43316 (innerList!16022 (xs!19332 (right!57252 (right!57252 t!3637))))) 2147483647))))

(declare-fun bs!1969347 () Bool)

(assert (= bs!1969347 d!2374685))

(declare-fun m!8328694 () Bool)

(assert (=> bs!1969347 m!8328694))

(assert (=> b!7939281 d!2374685))

(declare-fun b!7939316 () Bool)

(declare-fun res!3149701 () Bool)

(declare-fun e!4684635 () Bool)

(assert (=> b!7939316 (=> (not res!3149701) (not e!4684635))))

(declare-fun lt!2695731 () List!74606)

(assert (=> b!7939316 (= res!3149701 (= (size!43316 lt!2695731) (+ (size!43316 (t!390343 (list!19466 (left!56922 t!3637)))) (size!43316 (list!19466 (right!57252 t!3637))))))))

(declare-fun b!7939315 () Bool)

(declare-fun e!4684634 () List!74606)

(assert (=> b!7939315 (= e!4684634 (Cons!74482 (h!80930 (t!390343 (list!19466 (left!56922 t!3637)))) (++!18285 (t!390343 (t!390343 (list!19466 (left!56922 t!3637)))) (list!19466 (right!57252 t!3637)))))))

(declare-fun b!7939314 () Bool)

(assert (=> b!7939314 (= e!4684634 (list!19466 (right!57252 t!3637)))))

(declare-fun d!2374687 () Bool)

(assert (=> d!2374687 e!4684635))

(declare-fun res!3149700 () Bool)

(assert (=> d!2374687 (=> (not res!3149700) (not e!4684635))))

(assert (=> d!2374687 (= res!3149700 (= (content!15806 lt!2695731) ((_ map or) (content!15806 (t!390343 (list!19466 (left!56922 t!3637)))) (content!15806 (list!19466 (right!57252 t!3637))))))))

(assert (=> d!2374687 (= lt!2695731 e!4684634)))

(declare-fun c!1458621 () Bool)

(assert (=> d!2374687 (= c!1458621 ((_ is Nil!74482) (t!390343 (list!19466 (left!56922 t!3637)))))))

(assert (=> d!2374687 (= (++!18285 (t!390343 (list!19466 (left!56922 t!3637))) (list!19466 (right!57252 t!3637))) lt!2695731)))

(declare-fun b!7939317 () Bool)

(assert (=> b!7939317 (= e!4684635 (or (not (= (list!19466 (right!57252 t!3637)) Nil!74482)) (= lt!2695731 (t!390343 (list!19466 (left!56922 t!3637))))))))

(assert (= (and d!2374687 c!1458621) b!7939314))

(assert (= (and d!2374687 (not c!1458621)) b!7939315))

(assert (= (and d!2374687 res!3149700) b!7939316))

(assert (= (and b!7939316 res!3149701) b!7939317))

(declare-fun m!8328696 () Bool)

(assert (=> b!7939316 m!8328696))

(declare-fun m!8328698 () Bool)

(assert (=> b!7939316 m!8328698))

(assert (=> b!7939316 m!8328394))

(assert (=> b!7939316 m!8328460))

(assert (=> b!7939315 m!8328394))

(declare-fun m!8328700 () Bool)

(assert (=> b!7939315 m!8328700))

(declare-fun m!8328702 () Bool)

(assert (=> d!2374687 m!8328702))

(declare-fun m!8328704 () Bool)

(assert (=> d!2374687 m!8328704))

(assert (=> d!2374687 m!8328394))

(assert (=> d!2374687 m!8328468))

(assert (=> b!7939160 d!2374687))

(declare-fun d!2374689 () Bool)

(declare-fun lt!2695732 () Int)

(assert (=> d!2374689 (= lt!2695732 (size!43316 (list!19466 (left!56922 (right!57252 t!3637)))))))

(assert (=> d!2374689 (= lt!2695732 (ite ((_ is Empty!15934) (left!56922 (right!57252 t!3637))) 0 (ite ((_ is Leaf!30283) (left!56922 (right!57252 t!3637))) (csize!32099 (left!56922 (right!57252 t!3637))) (csize!32098 (left!56922 (right!57252 t!3637))))))))

(assert (=> d!2374689 (= (size!43314 (left!56922 (right!57252 t!3637))) lt!2695732)))

(declare-fun bs!1969348 () Bool)

(assert (= bs!1969348 d!2374689))

(assert (=> bs!1969348 m!8328480))

(assert (=> bs!1969348 m!8328480))

(declare-fun m!8328706 () Bool)

(assert (=> bs!1969348 m!8328706))

(assert (=> d!2374667 d!2374689))

(declare-fun d!2374691 () Bool)

(declare-fun lt!2695733 () Int)

(assert (=> d!2374691 (= lt!2695733 (size!43316 (list!19466 (right!57252 (right!57252 t!3637)))))))

(assert (=> d!2374691 (= lt!2695733 (ite ((_ is Empty!15934) (right!57252 (right!57252 t!3637))) 0 (ite ((_ is Leaf!30283) (right!57252 (right!57252 t!3637))) (csize!32099 (right!57252 (right!57252 t!3637))) (csize!32098 (right!57252 (right!57252 t!3637))))))))

(assert (=> d!2374691 (= (size!43314 (right!57252 (right!57252 t!3637))) lt!2695733)))

(declare-fun bs!1969349 () Bool)

(assert (= bs!1969349 d!2374691))

(assert (=> bs!1969349 m!8328482))

(assert (=> bs!1969349 m!8328482))

(declare-fun m!8328708 () Bool)

(assert (=> bs!1969349 m!8328708))

(assert (=> d!2374667 d!2374691))

(declare-fun d!2374693 () Bool)

(declare-fun res!3149702 () Bool)

(declare-fun e!4684636 () Bool)

(assert (=> d!2374693 (=> (not res!3149702) (not e!4684636))))

(assert (=> d!2374693 (= res!3149702 (<= (size!43316 (list!19467 (xs!19332 (right!57252 (left!56922 t!3637))))) 512))))

(assert (=> d!2374693 (= (inv!95898 (right!57252 (left!56922 t!3637))) e!4684636)))

(declare-fun b!7939318 () Bool)

(declare-fun res!3149703 () Bool)

(assert (=> b!7939318 (=> (not res!3149703) (not e!4684636))))

(assert (=> b!7939318 (= res!3149703 (= (csize!32099 (right!57252 (left!56922 t!3637))) (size!43316 (list!19467 (xs!19332 (right!57252 (left!56922 t!3637)))))))))

(declare-fun b!7939319 () Bool)

(assert (=> b!7939319 (= e!4684636 (and (> (csize!32099 (right!57252 (left!56922 t!3637))) 0) (<= (csize!32099 (right!57252 (left!56922 t!3637))) 512)))))

(assert (= (and d!2374693 res!3149702) b!7939318))

(assert (= (and b!7939318 res!3149703) b!7939319))

(declare-fun m!8328710 () Bool)

(assert (=> d!2374693 m!8328710))

(assert (=> d!2374693 m!8328710))

(declare-fun m!8328712 () Bool)

(assert (=> d!2374693 m!8328712))

(assert (=> b!7939318 m!8328710))

(assert (=> b!7939318 m!8328710))

(assert (=> b!7939318 m!8328712))

(assert (=> b!7939194 d!2374693))

(declare-fun d!2374695 () Bool)

(declare-fun lt!2695734 () Int)

(assert (=> d!2374695 (>= lt!2695734 0)))

(declare-fun e!4684637 () Int)

(assert (=> d!2374695 (= lt!2695734 e!4684637)))

(declare-fun c!1458622 () Bool)

(assert (=> d!2374695 (= c!1458622 ((_ is Nil!74482) (list!19467 (xs!19332 (left!56922 t!3637)))))))

(assert (=> d!2374695 (= (size!43316 (list!19467 (xs!19332 (left!56922 t!3637)))) lt!2695734)))

(declare-fun b!7939320 () Bool)

(assert (=> b!7939320 (= e!4684637 0)))

(declare-fun b!7939321 () Bool)

(assert (=> b!7939321 (= e!4684637 (+ 1 (size!43316 (t!390343 (list!19467 (xs!19332 (left!56922 t!3637)))))))))

(assert (= (and d!2374695 c!1458622) b!7939320))

(assert (= (and d!2374695 (not c!1458622)) b!7939321))

(declare-fun m!8328714 () Bool)

(assert (=> b!7939321 m!8328714))

(assert (=> b!7939236 d!2374695))

(declare-fun d!2374697 () Bool)

(assert (=> d!2374697 (= (list!19467 (xs!19332 (left!56922 t!3637))) (innerList!16022 (xs!19332 (left!56922 t!3637))))))

(assert (=> b!7939236 d!2374697))

(declare-fun d!2374699 () Bool)

(declare-fun c!1458625 () Bool)

(assert (=> d!2374699 (= c!1458625 ((_ is Nil!74482) lt!2695719))))

(declare-fun e!4684640 () (InoxSet T!146038))

(assert (=> d!2374699 (= (content!15806 lt!2695719) e!4684640)))

(declare-fun b!7939326 () Bool)

(assert (=> b!7939326 (= e!4684640 ((as const (Array T!146038 Bool)) false))))

(declare-fun b!7939327 () Bool)

(assert (=> b!7939327 (= e!4684640 ((_ map or) (store ((as const (Array T!146038 Bool)) false) (h!80930 lt!2695719) true) (content!15806 (t!390343 lt!2695719))))))

(assert (= (and d!2374699 c!1458625) b!7939326))

(assert (= (and d!2374699 (not c!1458625)) b!7939327))

(declare-fun m!8328716 () Bool)

(assert (=> b!7939327 m!8328716))

(declare-fun m!8328718 () Bool)

(assert (=> b!7939327 m!8328718))

(assert (=> d!2374611 d!2374699))

(declare-fun d!2374701 () Bool)

(declare-fun c!1458626 () Bool)

(assert (=> d!2374701 (= c!1458626 ((_ is Nil!74482) (list!19466 (left!56922 t!3637))))))

(declare-fun e!4684641 () (InoxSet T!146038))

(assert (=> d!2374701 (= (content!15806 (list!19466 (left!56922 t!3637))) e!4684641)))

(declare-fun b!7939328 () Bool)

(assert (=> b!7939328 (= e!4684641 ((as const (Array T!146038 Bool)) false))))

(declare-fun b!7939329 () Bool)

(assert (=> b!7939329 (= e!4684641 ((_ map or) (store ((as const (Array T!146038 Bool)) false) (h!80930 (list!19466 (left!56922 t!3637))) true) (content!15806 (t!390343 (list!19466 (left!56922 t!3637))))))))

(assert (= (and d!2374701 c!1458626) b!7939328))

(assert (= (and d!2374701 (not c!1458626)) b!7939329))

(declare-fun m!8328720 () Bool)

(assert (=> b!7939329 m!8328720))

(assert (=> b!7939329 m!8328704))

(assert (=> d!2374611 d!2374701))

(declare-fun d!2374703 () Bool)

(declare-fun c!1458627 () Bool)

(assert (=> d!2374703 (= c!1458627 ((_ is Nil!74482) (list!19466 (right!57252 t!3637))))))

(declare-fun e!4684642 () (InoxSet T!146038))

(assert (=> d!2374703 (= (content!15806 (list!19466 (right!57252 t!3637))) e!4684642)))

(declare-fun b!7939330 () Bool)

(assert (=> b!7939330 (= e!4684642 ((as const (Array T!146038 Bool)) false))))

(declare-fun b!7939331 () Bool)

(assert (=> b!7939331 (= e!4684642 ((_ map or) (store ((as const (Array T!146038 Bool)) false) (h!80930 (list!19466 (right!57252 t!3637))) true) (content!15806 (t!390343 (list!19466 (right!57252 t!3637))))))))

(assert (= (and d!2374703 c!1458627) b!7939330))

(assert (= (and d!2374703 (not c!1458627)) b!7939331))

(declare-fun m!8328722 () Bool)

(assert (=> b!7939331 m!8328722))

(declare-fun m!8328724 () Bool)

(assert (=> b!7939331 m!8328724))

(assert (=> d!2374611 d!2374703))

(declare-fun d!2374705 () Bool)

(declare-fun lt!2695735 () Int)

(assert (=> d!2374705 (>= lt!2695735 0)))

(declare-fun e!4684643 () Int)

(assert (=> d!2374705 (= lt!2695735 e!4684643)))

(declare-fun c!1458628 () Bool)

(assert (=> d!2374705 (= c!1458628 ((_ is Nil!74482) (innerList!16022 (xs!19332 (left!56922 t!3637)))))))

(assert (=> d!2374705 (= (size!43316 (innerList!16022 (xs!19332 (left!56922 t!3637)))) lt!2695735)))

(declare-fun b!7939332 () Bool)

(assert (=> b!7939332 (= e!4684643 0)))

(declare-fun b!7939333 () Bool)

(assert (=> b!7939333 (= e!4684643 (+ 1 (size!43316 (t!390343 (innerList!16022 (xs!19332 (left!56922 t!3637)))))))))

(assert (= (and d!2374705 c!1458628) b!7939332))

(assert (= (and d!2374705 (not c!1458628)) b!7939333))

(declare-fun m!8328726 () Bool)

(assert (=> b!7939333 m!8328726))

(assert (=> d!2374619 d!2374705))

(declare-fun d!2374707 () Bool)

(declare-fun res!3149704 () Bool)

(declare-fun e!4684644 () Bool)

(assert (=> d!2374707 (=> (not res!3149704) (not e!4684644))))

(assert (=> d!2374707 (= res!3149704 (<= (size!43316 (list!19467 (xs!19332 (right!57252 (right!57252 t!3637))))) 512))))

(assert (=> d!2374707 (= (inv!95898 (right!57252 (right!57252 t!3637))) e!4684644)))

(declare-fun b!7939334 () Bool)

(declare-fun res!3149705 () Bool)

(assert (=> b!7939334 (=> (not res!3149705) (not e!4684644))))

(assert (=> b!7939334 (= res!3149705 (= (csize!32099 (right!57252 (right!57252 t!3637))) (size!43316 (list!19467 (xs!19332 (right!57252 (right!57252 t!3637)))))))))

(declare-fun b!7939335 () Bool)

(assert (=> b!7939335 (= e!4684644 (and (> (csize!32099 (right!57252 (right!57252 t!3637))) 0) (<= (csize!32099 (right!57252 (right!57252 t!3637))) 512)))))

(assert (= (and d!2374707 res!3149704) b!7939334))

(assert (= (and b!7939334 res!3149705) b!7939335))

(declare-fun m!8328728 () Bool)

(assert (=> d!2374707 m!8328728))

(assert (=> d!2374707 m!8328728))

(declare-fun m!8328730 () Bool)

(assert (=> d!2374707 m!8328730))

(assert (=> b!7939334 m!8328728))

(assert (=> b!7939334 m!8328728))

(assert (=> b!7939334 m!8328730))

(assert (=> b!7939246 d!2374707))

(assert (=> d!2374653 d!2374695))

(assert (=> d!2374653 d!2374697))

(assert (=> b!7939148 d!2374659))

(assert (=> b!7939148 d!2374661))

(declare-fun d!2374709 () Bool)

(declare-fun lt!2695736 () Int)

(assert (=> d!2374709 (>= lt!2695736 0)))

(declare-fun e!4684645 () Int)

(assert (=> d!2374709 (= lt!2695736 e!4684645)))

(declare-fun c!1458629 () Bool)

(assert (=> d!2374709 (= c!1458629 ((_ is Nil!74482) lt!2695719))))

(assert (=> d!2374709 (= (size!43316 lt!2695719) lt!2695736)))

(declare-fun b!7939336 () Bool)

(assert (=> b!7939336 (= e!4684645 0)))

(declare-fun b!7939337 () Bool)

(assert (=> b!7939337 (= e!4684645 (+ 1 (size!43316 (t!390343 lt!2695719))))))

(assert (= (and d!2374709 c!1458629) b!7939336))

(assert (= (and d!2374709 (not c!1458629)) b!7939337))

(declare-fun m!8328732 () Bool)

(assert (=> b!7939337 m!8328732))

(assert (=> b!7939163 d!2374709))

(declare-fun d!2374711 () Bool)

(declare-fun lt!2695737 () Int)

(assert (=> d!2374711 (>= lt!2695737 0)))

(declare-fun e!4684646 () Int)

(assert (=> d!2374711 (= lt!2695737 e!4684646)))

(declare-fun c!1458630 () Bool)

(assert (=> d!2374711 (= c!1458630 ((_ is Nil!74482) (list!19466 (left!56922 t!3637))))))

(assert (=> d!2374711 (= (size!43316 (list!19466 (left!56922 t!3637))) lt!2695737)))

(declare-fun b!7939338 () Bool)

(assert (=> b!7939338 (= e!4684646 0)))

(declare-fun b!7939339 () Bool)

(assert (=> b!7939339 (= e!4684646 (+ 1 (size!43316 (t!390343 (list!19466 (left!56922 t!3637))))))))

(assert (= (and d!2374711 c!1458630) b!7939338))

(assert (= (and d!2374711 (not c!1458630)) b!7939339))

(assert (=> b!7939339 m!8328698))

(assert (=> b!7939163 d!2374711))

(declare-fun d!2374713 () Bool)

(declare-fun lt!2695738 () Int)

(assert (=> d!2374713 (>= lt!2695738 0)))

(declare-fun e!4684647 () Int)

(assert (=> d!2374713 (= lt!2695738 e!4684647)))

(declare-fun c!1458631 () Bool)

(assert (=> d!2374713 (= c!1458631 ((_ is Nil!74482) (list!19466 (right!57252 t!3637))))))

(assert (=> d!2374713 (= (size!43316 (list!19466 (right!57252 t!3637))) lt!2695738)))

(declare-fun b!7939340 () Bool)

(assert (=> b!7939340 (= e!4684647 0)))

(declare-fun b!7939341 () Bool)

(assert (=> b!7939341 (= e!4684647 (+ 1 (size!43316 (t!390343 (list!19466 (right!57252 t!3637))))))))

(assert (= (and d!2374713 c!1458631) b!7939340))

(assert (= (and d!2374713 (not c!1458631)) b!7939341))

(declare-fun m!8328734 () Bool)

(assert (=> b!7939341 m!8328734))

(assert (=> b!7939163 d!2374713))

(declare-fun d!2374715 () Bool)

(assert (=> d!2374715 (= (inv!95895 (xs!19332 (left!56922 (left!56922 t!3637)))) (<= (size!43316 (innerList!16022 (xs!19332 (left!56922 (left!56922 t!3637))))) 2147483647))))

(declare-fun bs!1969350 () Bool)

(assert (= bs!1969350 d!2374715))

(declare-fun m!8328736 () Bool)

(assert (=> bs!1969350 m!8328736))

(assert (=> b!7939266 d!2374715))

(declare-fun d!2374717 () Bool)

(declare-fun lt!2695739 () Int)

(assert (=> d!2374717 (= lt!2695739 (size!43316 (list!19466 (left!56922 (left!56922 t!3637)))))))

(assert (=> d!2374717 (= lt!2695739 (ite ((_ is Empty!15934) (left!56922 (left!56922 t!3637))) 0 (ite ((_ is Leaf!30283) (left!56922 (left!56922 t!3637))) (csize!32099 (left!56922 (left!56922 t!3637))) (csize!32098 (left!56922 (left!56922 t!3637))))))))

(assert (=> d!2374717 (= (size!43314 (left!56922 (left!56922 t!3637))) lt!2695739)))

(declare-fun bs!1969351 () Bool)

(assert (= bs!1969351 d!2374717))

(assert (=> bs!1969351 m!8328472))

(assert (=> bs!1969351 m!8328472))

(declare-fun m!8328738 () Bool)

(assert (=> bs!1969351 m!8328738))

(assert (=> d!2374657 d!2374717))

(declare-fun d!2374719 () Bool)

(declare-fun lt!2695740 () Int)

(assert (=> d!2374719 (= lt!2695740 (size!43316 (list!19466 (right!57252 (left!56922 t!3637)))))))

(assert (=> d!2374719 (= lt!2695740 (ite ((_ is Empty!15934) (right!57252 (left!56922 t!3637))) 0 (ite ((_ is Leaf!30283) (right!57252 (left!56922 t!3637))) (csize!32099 (right!57252 (left!56922 t!3637))) (csize!32098 (right!57252 (left!56922 t!3637))))))))

(assert (=> d!2374719 (= (size!43314 (right!57252 (left!56922 t!3637))) lt!2695740)))

(declare-fun bs!1969352 () Bool)

(assert (= bs!1969352 d!2374719))

(assert (=> bs!1969352 m!8328474))

(assert (=> bs!1969352 m!8328474))

(declare-fun m!8328740 () Bool)

(assert (=> bs!1969352 m!8328740))

(assert (=> d!2374657 d!2374719))

(declare-fun d!2374721 () Bool)

(declare-fun c!1458632 () Bool)

(assert (=> d!2374721 (= c!1458632 ((_ is Node!15934) (left!56922 (left!56922 (left!56922 t!3637)))))))

(declare-fun e!4684648 () Bool)

(assert (=> d!2374721 (= (inv!95894 (left!56922 (left!56922 (left!56922 t!3637)))) e!4684648)))

(declare-fun b!7939342 () Bool)

(assert (=> b!7939342 (= e!4684648 (inv!95896 (left!56922 (left!56922 (left!56922 t!3637)))))))

(declare-fun b!7939343 () Bool)

(declare-fun e!4684649 () Bool)

(assert (=> b!7939343 (= e!4684648 e!4684649)))

(declare-fun res!3149706 () Bool)

(assert (=> b!7939343 (= res!3149706 (not ((_ is Leaf!30283) (left!56922 (left!56922 (left!56922 t!3637))))))))

(assert (=> b!7939343 (=> res!3149706 e!4684649)))

(declare-fun b!7939344 () Bool)

(assert (=> b!7939344 (= e!4684649 (inv!95898 (left!56922 (left!56922 (left!56922 t!3637)))))))

(assert (= (and d!2374721 c!1458632) b!7939342))

(assert (= (and d!2374721 (not c!1458632)) b!7939343))

(assert (= (and b!7939343 (not res!3149706)) b!7939344))

(declare-fun m!8328742 () Bool)

(assert (=> b!7939342 m!8328742))

(declare-fun m!8328744 () Bool)

(assert (=> b!7939344 m!8328744))

(assert (=> b!7939265 d!2374721))

(declare-fun d!2374723 () Bool)

(declare-fun c!1458633 () Bool)

(assert (=> d!2374723 (= c!1458633 ((_ is Node!15934) (right!57252 (left!56922 (left!56922 t!3637)))))))

(declare-fun e!4684650 () Bool)

(assert (=> d!2374723 (= (inv!95894 (right!57252 (left!56922 (left!56922 t!3637)))) e!4684650)))

(declare-fun b!7939345 () Bool)

(assert (=> b!7939345 (= e!4684650 (inv!95896 (right!57252 (left!56922 (left!56922 t!3637)))))))

(declare-fun b!7939346 () Bool)

(declare-fun e!4684651 () Bool)

(assert (=> b!7939346 (= e!4684650 e!4684651)))

(declare-fun res!3149707 () Bool)

(assert (=> b!7939346 (= res!3149707 (not ((_ is Leaf!30283) (right!57252 (left!56922 (left!56922 t!3637))))))))

(assert (=> b!7939346 (=> res!3149707 e!4684651)))

(declare-fun b!7939347 () Bool)

(assert (=> b!7939347 (= e!4684651 (inv!95898 (right!57252 (left!56922 (left!56922 t!3637)))))))

(assert (= (and d!2374723 c!1458633) b!7939345))

(assert (= (and d!2374723 (not c!1458633)) b!7939346))

(assert (= (and b!7939346 (not res!3149707)) b!7939347))

(declare-fun m!8328746 () Bool)

(assert (=> b!7939345 m!8328746))

(declare-fun m!8328748 () Bool)

(assert (=> b!7939347 m!8328748))

(assert (=> b!7939265 d!2374723))

(declare-fun d!2374725 () Bool)

(declare-fun res!3149708 () Bool)

(declare-fun e!4684652 () Bool)

(assert (=> d!2374725 (=> (not res!3149708) (not e!4684652))))

(assert (=> d!2374725 (= res!3149708 (= (csize!32098 (left!56922 (left!56922 t!3637))) (+ (size!43314 (left!56922 (left!56922 (left!56922 t!3637)))) (size!43314 (right!57252 (left!56922 (left!56922 t!3637)))))))))

(assert (=> d!2374725 (= (inv!95896 (left!56922 (left!56922 t!3637))) e!4684652)))

(declare-fun b!7939348 () Bool)

(declare-fun res!3149709 () Bool)

(assert (=> b!7939348 (=> (not res!3149709) (not e!4684652))))

(assert (=> b!7939348 (= res!3149709 (and (not (= (left!56922 (left!56922 (left!56922 t!3637))) Empty!15934)) (not (= (right!57252 (left!56922 (left!56922 t!3637))) Empty!15934))))))

(declare-fun b!7939349 () Bool)

(declare-fun res!3149710 () Bool)

(assert (=> b!7939349 (=> (not res!3149710) (not e!4684652))))

(assert (=> b!7939349 (= res!3149710 (= (cheight!16145 (left!56922 (left!56922 t!3637))) (+ (max!0 (height!2241 (left!56922 (left!56922 (left!56922 t!3637)))) (height!2241 (right!57252 (left!56922 (left!56922 t!3637))))) 1)))))

(declare-fun b!7939350 () Bool)

(assert (=> b!7939350 (= e!4684652 (<= 0 (cheight!16145 (left!56922 (left!56922 t!3637)))))))

(assert (= (and d!2374725 res!3149708) b!7939348))

(assert (= (and b!7939348 res!3149709) b!7939349))

(assert (= (and b!7939349 res!3149710) b!7939350))

(declare-fun m!8328750 () Bool)

(assert (=> d!2374725 m!8328750))

(declare-fun m!8328752 () Bool)

(assert (=> d!2374725 m!8328752))

(declare-fun m!8328754 () Bool)

(assert (=> b!7939349 m!8328754))

(declare-fun m!8328756 () Bool)

(assert (=> b!7939349 m!8328756))

(assert (=> b!7939349 m!8328754))

(assert (=> b!7939349 m!8328756))

(declare-fun m!8328758 () Bool)

(assert (=> b!7939349 m!8328758))

(assert (=> b!7939189 d!2374725))

(declare-fun d!2374727 () Bool)

(assert (=> d!2374727 (= (max!0 (height!2241 (left!56922 (right!57252 t!3637))) (height!2241 (right!57252 (right!57252 t!3637)))) (ite (< (height!2241 (left!56922 (right!57252 t!3637))) (height!2241 (right!57252 (right!57252 t!3637)))) (height!2241 (right!57252 (right!57252 t!3637))) (height!2241 (left!56922 (right!57252 t!3637)))))))

(assert (=> b!7939250 d!2374727))

(declare-fun d!2374729 () Bool)

(assert (=> d!2374729 (= (height!2241 (left!56922 (right!57252 t!3637))) (ite ((_ is Empty!15934) (left!56922 (right!57252 t!3637))) 0 (ite ((_ is Leaf!30283) (left!56922 (right!57252 t!3637))) 1 (cheight!16145 (left!56922 (right!57252 t!3637))))))))

(assert (=> b!7939250 d!2374729))

(declare-fun d!2374731 () Bool)

(assert (=> d!2374731 (= (height!2241 (right!57252 (right!57252 t!3637))) (ite ((_ is Empty!15934) (right!57252 (right!57252 t!3637))) 0 (ite ((_ is Leaf!30283) (right!57252 (right!57252 t!3637))) 1 (cheight!16145 (right!57252 (right!57252 t!3637))))))))

(assert (=> b!7939250 d!2374731))

(declare-fun b!7939353 () Bool)

(declare-fun res!3149712 () Bool)

(declare-fun e!4684654 () Bool)

(assert (=> b!7939353 (=> (not res!3149712) (not e!4684654))))

(declare-fun lt!2695741 () List!74606)

(assert (=> b!7939353 (= res!3149712 (= (size!43316 lt!2695741) (+ (size!43316 (list!19466 (left!56922 (right!57252 t!3637)))) (size!43316 (list!19466 (right!57252 (right!57252 t!3637)))))))))

(declare-fun b!7939352 () Bool)

(declare-fun e!4684653 () List!74606)

(assert (=> b!7939352 (= e!4684653 (Cons!74482 (h!80930 (list!19466 (left!56922 (right!57252 t!3637)))) (++!18285 (t!390343 (list!19466 (left!56922 (right!57252 t!3637)))) (list!19466 (right!57252 (right!57252 t!3637))))))))

(declare-fun b!7939351 () Bool)

(assert (=> b!7939351 (= e!4684653 (list!19466 (right!57252 (right!57252 t!3637))))))

(declare-fun d!2374733 () Bool)

(assert (=> d!2374733 e!4684654))

(declare-fun res!3149711 () Bool)

(assert (=> d!2374733 (=> (not res!3149711) (not e!4684654))))

(assert (=> d!2374733 (= res!3149711 (= (content!15806 lt!2695741) ((_ map or) (content!15806 (list!19466 (left!56922 (right!57252 t!3637)))) (content!15806 (list!19466 (right!57252 (right!57252 t!3637)))))))))

(assert (=> d!2374733 (= lt!2695741 e!4684653)))

(declare-fun c!1458634 () Bool)

(assert (=> d!2374733 (= c!1458634 ((_ is Nil!74482) (list!19466 (left!56922 (right!57252 t!3637)))))))

(assert (=> d!2374733 (= (++!18285 (list!19466 (left!56922 (right!57252 t!3637))) (list!19466 (right!57252 (right!57252 t!3637)))) lt!2695741)))

(declare-fun b!7939354 () Bool)

(assert (=> b!7939354 (= e!4684654 (or (not (= (list!19466 (right!57252 (right!57252 t!3637))) Nil!74482)) (= lt!2695741 (list!19466 (left!56922 (right!57252 t!3637))))))))

(assert (= (and d!2374733 c!1458634) b!7939351))

(assert (= (and d!2374733 (not c!1458634)) b!7939352))

(assert (= (and d!2374733 res!3149711) b!7939353))

(assert (= (and b!7939353 res!3149712) b!7939354))

(declare-fun m!8328760 () Bool)

(assert (=> b!7939353 m!8328760))

(assert (=> b!7939353 m!8328480))

(assert (=> b!7939353 m!8328706))

(assert (=> b!7939353 m!8328482))

(assert (=> b!7939353 m!8328708))

(assert (=> b!7939352 m!8328482))

(declare-fun m!8328762 () Bool)

(assert (=> b!7939352 m!8328762))

(declare-fun m!8328764 () Bool)

(assert (=> d!2374733 m!8328764))

(assert (=> d!2374733 m!8328480))

(declare-fun m!8328766 () Bool)

(assert (=> d!2374733 m!8328766))

(assert (=> d!2374733 m!8328482))

(declare-fun m!8328768 () Bool)

(assert (=> d!2374733 m!8328768))

(assert (=> b!7939174 d!2374733))

(declare-fun b!7939356 () Bool)

(declare-fun e!4684655 () List!74606)

(declare-fun e!4684656 () List!74606)

(assert (=> b!7939356 (= e!4684655 e!4684656)))

(declare-fun c!1458636 () Bool)

(assert (=> b!7939356 (= c!1458636 ((_ is Leaf!30283) (left!56922 (right!57252 t!3637))))))

(declare-fun d!2374735 () Bool)

(declare-fun c!1458635 () Bool)

(assert (=> d!2374735 (= c!1458635 ((_ is Empty!15934) (left!56922 (right!57252 t!3637))))))

(assert (=> d!2374735 (= (list!19466 (left!56922 (right!57252 t!3637))) e!4684655)))

(declare-fun b!7939357 () Bool)

(assert (=> b!7939357 (= e!4684656 (list!19467 (xs!19332 (left!56922 (right!57252 t!3637)))))))

(declare-fun b!7939358 () Bool)

(assert (=> b!7939358 (= e!4684656 (++!18285 (list!19466 (left!56922 (left!56922 (right!57252 t!3637)))) (list!19466 (right!57252 (left!56922 (right!57252 t!3637))))))))

(declare-fun b!7939355 () Bool)

(assert (=> b!7939355 (= e!4684655 Nil!74482)))

(assert (= (and d!2374735 c!1458635) b!7939355))

(assert (= (and d!2374735 (not c!1458635)) b!7939356))

(assert (= (and b!7939356 c!1458636) b!7939357))

(assert (= (and b!7939356 (not c!1458636)) b!7939358))

(declare-fun m!8328770 () Bool)

(assert (=> b!7939357 m!8328770))

(declare-fun m!8328772 () Bool)

(assert (=> b!7939358 m!8328772))

(declare-fun m!8328774 () Bool)

(assert (=> b!7939358 m!8328774))

(assert (=> b!7939358 m!8328772))

(assert (=> b!7939358 m!8328774))

(declare-fun m!8328776 () Bool)

(assert (=> b!7939358 m!8328776))

(assert (=> b!7939174 d!2374735))

(declare-fun b!7939360 () Bool)

(declare-fun e!4684657 () List!74606)

(declare-fun e!4684658 () List!74606)

(assert (=> b!7939360 (= e!4684657 e!4684658)))

(declare-fun c!1458638 () Bool)

(assert (=> b!7939360 (= c!1458638 ((_ is Leaf!30283) (right!57252 (right!57252 t!3637))))))

(declare-fun d!2374737 () Bool)

(declare-fun c!1458637 () Bool)

(assert (=> d!2374737 (= c!1458637 ((_ is Empty!15934) (right!57252 (right!57252 t!3637))))))

(assert (=> d!2374737 (= (list!19466 (right!57252 (right!57252 t!3637))) e!4684657)))

(declare-fun b!7939361 () Bool)

(assert (=> b!7939361 (= e!4684658 (list!19467 (xs!19332 (right!57252 (right!57252 t!3637)))))))

(declare-fun b!7939362 () Bool)

(assert (=> b!7939362 (= e!4684658 (++!18285 (list!19466 (left!56922 (right!57252 (right!57252 t!3637)))) (list!19466 (right!57252 (right!57252 (right!57252 t!3637))))))))

(declare-fun b!7939359 () Bool)

(assert (=> b!7939359 (= e!4684657 Nil!74482)))

(assert (= (and d!2374737 c!1458637) b!7939359))

(assert (= (and d!2374737 (not c!1458637)) b!7939360))

(assert (= (and b!7939360 c!1458638) b!7939361))

(assert (= (and b!7939360 (not c!1458638)) b!7939362))

(assert (=> b!7939361 m!8328728))

(declare-fun m!8328778 () Bool)

(assert (=> b!7939362 m!8328778))

(declare-fun m!8328780 () Bool)

(assert (=> b!7939362 m!8328780))

(assert (=> b!7939362 m!8328778))

(assert (=> b!7939362 m!8328780))

(declare-fun m!8328782 () Bool)

(assert (=> b!7939362 m!8328782))

(assert (=> b!7939174 d!2374737))

(declare-fun d!2374739 () Bool)

(declare-fun res!3149713 () Bool)

(declare-fun e!4684659 () Bool)

(assert (=> d!2374739 (=> (not res!3149713) (not e!4684659))))

(assert (=> d!2374739 (= res!3149713 (= (csize!32098 (left!56922 (right!57252 t!3637))) (+ (size!43314 (left!56922 (left!56922 (right!57252 t!3637)))) (size!43314 (right!57252 (left!56922 (right!57252 t!3637)))))))))

(assert (=> d!2374739 (= (inv!95896 (left!56922 (right!57252 t!3637))) e!4684659)))

(declare-fun b!7939363 () Bool)

(declare-fun res!3149714 () Bool)

(assert (=> b!7939363 (=> (not res!3149714) (not e!4684659))))

(assert (=> b!7939363 (= res!3149714 (and (not (= (left!56922 (left!56922 (right!57252 t!3637))) Empty!15934)) (not (= (right!57252 (left!56922 (right!57252 t!3637))) Empty!15934))))))

(declare-fun b!7939364 () Bool)

(declare-fun res!3149715 () Bool)

(assert (=> b!7939364 (=> (not res!3149715) (not e!4684659))))

(assert (=> b!7939364 (= res!3149715 (= (cheight!16145 (left!56922 (right!57252 t!3637))) (+ (max!0 (height!2241 (left!56922 (left!56922 (right!57252 t!3637)))) (height!2241 (right!57252 (left!56922 (right!57252 t!3637))))) 1)))))

(declare-fun b!7939365 () Bool)

(assert (=> b!7939365 (= e!4684659 (<= 0 (cheight!16145 (left!56922 (right!57252 t!3637)))))))

(assert (= (and d!2374739 res!3149713) b!7939363))

(assert (= (and b!7939363 res!3149714) b!7939364))

(assert (= (and b!7939364 res!3149715) b!7939365))

(declare-fun m!8328784 () Bool)

(assert (=> d!2374739 m!8328784))

(declare-fun m!8328786 () Bool)

(assert (=> d!2374739 m!8328786))

(declare-fun m!8328790 () Bool)

(assert (=> b!7939364 m!8328790))

(declare-fun m!8328792 () Bool)

(assert (=> b!7939364 m!8328792))

(assert (=> b!7939364 m!8328790))

(assert (=> b!7939364 m!8328792))

(declare-fun m!8328794 () Bool)

(assert (=> b!7939364 m!8328794))

(assert (=> b!7939241 d!2374739))

(declare-fun d!2374745 () Bool)

(assert (=> d!2374745 (= (list!19467 (xs!19332 (right!57252 t!3637))) (innerList!16022 (xs!19332 (right!57252 t!3637))))))

(assert (=> b!7939173 d!2374745))

(declare-fun d!2374747 () Bool)

(declare-fun lt!2695744 () Int)

(assert (=> d!2374747 (= lt!2695744 (size!43316 (list!19466 (left!56922 t!3637))))))

(assert (=> d!2374747 (= lt!2695744 (ite ((_ is Empty!15934) (left!56922 t!3637)) 0 (ite ((_ is Leaf!30283) (left!56922 t!3637)) (csize!32099 (left!56922 t!3637)) (csize!32098 (left!56922 t!3637)))))))

(assert (=> d!2374747 (= (size!43314 (left!56922 t!3637)) lt!2695744)))

(declare-fun bs!1969354 () Bool)

(assert (= bs!1969354 d!2374747))

(assert (=> bs!1969354 m!8328392))

(assert (=> bs!1969354 m!8328392))

(assert (=> bs!1969354 m!8328458))

(assert (=> d!2374635 d!2374747))

(declare-fun d!2374751 () Bool)

(declare-fun lt!2695746 () Int)

(assert (=> d!2374751 (= lt!2695746 (size!43316 (list!19466 (right!57252 t!3637))))))

(assert (=> d!2374751 (= lt!2695746 (ite ((_ is Empty!15934) (right!57252 t!3637)) 0 (ite ((_ is Leaf!30283) (right!57252 t!3637)) (csize!32099 (right!57252 t!3637)) (csize!32098 (right!57252 t!3637)))))))

(assert (=> d!2374751 (= (size!43314 (right!57252 t!3637)) lt!2695746)))

(declare-fun bs!1969356 () Bool)

(assert (= bs!1969356 d!2374751))

(assert (=> bs!1969356 m!8328394))

(assert (=> bs!1969356 m!8328394))

(assert (=> bs!1969356 m!8328460))

(assert (=> d!2374635 d!2374751))

(declare-fun d!2374755 () Bool)

(declare-fun res!3149717 () Bool)

(declare-fun e!4684663 () Bool)

(assert (=> d!2374755 (=> (not res!3149717) (not e!4684663))))

(assert (=> d!2374755 (= res!3149717 (<= (size!43316 (list!19467 (xs!19332 (left!56922 (left!56922 t!3637))))) 512))))

(assert (=> d!2374755 (= (inv!95898 (left!56922 (left!56922 t!3637))) e!4684663)))

(declare-fun b!7939371 () Bool)

(declare-fun res!3149718 () Bool)

(assert (=> b!7939371 (=> (not res!3149718) (not e!4684663))))

(assert (=> b!7939371 (= res!3149718 (= (csize!32099 (left!56922 (left!56922 t!3637))) (size!43316 (list!19467 (xs!19332 (left!56922 (left!56922 t!3637)))))))))

(declare-fun b!7939372 () Bool)

(assert (=> b!7939372 (= e!4684663 (and (> (csize!32099 (left!56922 (left!56922 t!3637))) 0) (<= (csize!32099 (left!56922 (left!56922 t!3637))) 512)))))

(assert (= (and d!2374755 res!3149717) b!7939371))

(assert (= (and b!7939371 res!3149718) b!7939372))

(declare-fun m!8328800 () Bool)

(assert (=> d!2374755 m!8328800))

(assert (=> d!2374755 m!8328800))

(declare-fun m!8328802 () Bool)

(assert (=> d!2374755 m!8328802))

(assert (=> b!7939371 m!8328800))

(assert (=> b!7939371 m!8328800))

(assert (=> b!7939371 m!8328802))

(assert (=> b!7939191 d!2374755))

(assert (=> b!7939169 d!2374697))

(declare-fun d!2374759 () Bool)

(declare-fun res!3149720 () Bool)

(declare-fun e!4684666 () Bool)

(assert (=> d!2374759 (=> (not res!3149720) (not e!4684666))))

(assert (=> d!2374759 (= res!3149720 (<= (size!43316 (list!19467 (xs!19332 (left!56922 (right!57252 t!3637))))) 512))))

(assert (=> d!2374759 (= (inv!95898 (left!56922 (right!57252 t!3637))) e!4684666)))

(declare-fun b!7939376 () Bool)

(declare-fun res!3149721 () Bool)

(assert (=> b!7939376 (=> (not res!3149721) (not e!4684666))))

(assert (=> b!7939376 (= res!3149721 (= (csize!32099 (left!56922 (right!57252 t!3637))) (size!43316 (list!19467 (xs!19332 (left!56922 (right!57252 t!3637)))))))))

(declare-fun b!7939377 () Bool)

(assert (=> b!7939377 (= e!4684666 (and (> (csize!32099 (left!56922 (right!57252 t!3637))) 0) (<= (csize!32099 (left!56922 (right!57252 t!3637))) 512)))))

(assert (= (and d!2374759 res!3149720) b!7939376))

(assert (= (and b!7939376 res!3149721) b!7939377))

(assert (=> d!2374759 m!8328770))

(assert (=> d!2374759 m!8328770))

(declare-fun m!8328808 () Bool)

(assert (=> d!2374759 m!8328808))

(assert (=> b!7939376 m!8328770))

(assert (=> b!7939376 m!8328770))

(assert (=> b!7939376 m!8328808))

(assert (=> b!7939243 d!2374759))

(declare-fun d!2374765 () Bool)

(declare-fun lt!2695748 () Int)

(assert (=> d!2374765 (>= lt!2695748 0)))

(declare-fun e!4684668 () Int)

(assert (=> d!2374765 (= lt!2695748 e!4684668)))

(declare-fun c!1458643 () Bool)

(assert (=> d!2374765 (= c!1458643 ((_ is Nil!74482) (list!19467 (xs!19332 (right!57252 t!3637)))))))

(assert (=> d!2374765 (= (size!43316 (list!19467 (xs!19332 (right!57252 t!3637)))) lt!2695748)))

(declare-fun b!7939380 () Bool)

(assert (=> b!7939380 (= e!4684668 0)))

(declare-fun b!7939381 () Bool)

(assert (=> b!7939381 (= e!4684668 (+ 1 (size!43316 (t!390343 (list!19467 (xs!19332 (right!57252 t!3637)))))))))

(assert (= (and d!2374765 c!1458643) b!7939380))

(assert (= (and d!2374765 (not c!1458643)) b!7939381))

(declare-fun m!8328814 () Bool)

(assert (=> b!7939381 m!8328814))

(assert (=> d!2374671 d!2374765))

(assert (=> d!2374671 d!2374745))

(declare-fun d!2374773 () Bool)

(declare-fun lt!2695749 () Int)

(assert (=> d!2374773 (>= lt!2695749 0)))

(declare-fun e!4684669 () Int)

(assert (=> d!2374773 (= lt!2695749 e!4684669)))

(declare-fun c!1458645 () Bool)

(assert (=> d!2374773 (= c!1458645 ((_ is Nil!74482) (list!19467 (xs!19332 t!3637))))))

(assert (=> d!2374773 (= (size!43316 (list!19467 (xs!19332 t!3637))) lt!2695749)))

(declare-fun b!7939382 () Bool)

(assert (=> b!7939382 (= e!4684669 0)))

(declare-fun b!7939383 () Bool)

(assert (=> b!7939383 (= e!4684669 (+ 1 (size!43316 (t!390343 (list!19467 (xs!19332 t!3637))))))))

(assert (= (and d!2374773 c!1458645) b!7939382))

(assert (= (and d!2374773 (not c!1458645)) b!7939383))

(declare-fun m!8328816 () Bool)

(assert (=> b!7939383 m!8328816))

(assert (=> d!2374669 d!2374773))

(assert (=> d!2374669 d!2374621))

(declare-fun b!7939390 () Bool)

(declare-fun res!3149725 () Bool)

(declare-fun e!4684673 () Bool)

(assert (=> b!7939390 (=> (not res!3149725) (not e!4684673))))

(declare-fun lt!2695751 () List!74606)

(assert (=> b!7939390 (= res!3149725 (= (size!43316 lt!2695751) (+ (size!43316 (list!19466 (left!56922 (left!56922 t!3637)))) (size!43316 (list!19466 (right!57252 (left!56922 t!3637)))))))))

(declare-fun b!7939389 () Bool)

(declare-fun e!4684672 () List!74606)

(assert (=> b!7939389 (= e!4684672 (Cons!74482 (h!80930 (list!19466 (left!56922 (left!56922 t!3637)))) (++!18285 (t!390343 (list!19466 (left!56922 (left!56922 t!3637)))) (list!19466 (right!57252 (left!56922 t!3637))))))))

(declare-fun b!7939388 () Bool)

(assert (=> b!7939388 (= e!4684672 (list!19466 (right!57252 (left!56922 t!3637))))))

(declare-fun d!2374775 () Bool)

(assert (=> d!2374775 e!4684673))

(declare-fun res!3149724 () Bool)

(assert (=> d!2374775 (=> (not res!3149724) (not e!4684673))))

(assert (=> d!2374775 (= res!3149724 (= (content!15806 lt!2695751) ((_ map or) (content!15806 (list!19466 (left!56922 (left!56922 t!3637)))) (content!15806 (list!19466 (right!57252 (left!56922 t!3637)))))))))

(assert (=> d!2374775 (= lt!2695751 e!4684672)))

(declare-fun c!1458646 () Bool)

(assert (=> d!2374775 (= c!1458646 ((_ is Nil!74482) (list!19466 (left!56922 (left!56922 t!3637)))))))

(assert (=> d!2374775 (= (++!18285 (list!19466 (left!56922 (left!56922 t!3637))) (list!19466 (right!57252 (left!56922 t!3637)))) lt!2695751)))

(declare-fun b!7939391 () Bool)

(assert (=> b!7939391 (= e!4684673 (or (not (= (list!19466 (right!57252 (left!56922 t!3637))) Nil!74482)) (= lt!2695751 (list!19466 (left!56922 (left!56922 t!3637))))))))

(assert (= (and d!2374775 c!1458646) b!7939388))

(assert (= (and d!2374775 (not c!1458646)) b!7939389))

(assert (= (and d!2374775 res!3149724) b!7939390))

(assert (= (and b!7939390 res!3149725) b!7939391))

(declare-fun m!8328832 () Bool)

(assert (=> b!7939390 m!8328832))

(assert (=> b!7939390 m!8328472))

(assert (=> b!7939390 m!8328738))

(assert (=> b!7939390 m!8328474))

(assert (=> b!7939390 m!8328740))

(assert (=> b!7939389 m!8328474))

(declare-fun m!8328834 () Bool)

(assert (=> b!7939389 m!8328834))

(declare-fun m!8328836 () Bool)

(assert (=> d!2374775 m!8328836))

(assert (=> d!2374775 m!8328472))

(declare-fun m!8328838 () Bool)

(assert (=> d!2374775 m!8328838))

(assert (=> d!2374775 m!8328474))

(declare-fun m!8328840 () Bool)

(assert (=> d!2374775 m!8328840))

(assert (=> b!7939170 d!2374775))

(declare-fun b!7939397 () Bool)

(declare-fun e!4684676 () List!74606)

(declare-fun e!4684677 () List!74606)

(assert (=> b!7939397 (= e!4684676 e!4684677)))

(declare-fun c!1458650 () Bool)

(assert (=> b!7939397 (= c!1458650 ((_ is Leaf!30283) (left!56922 (left!56922 t!3637))))))

(declare-fun d!2374779 () Bool)

(declare-fun c!1458649 () Bool)

(assert (=> d!2374779 (= c!1458649 ((_ is Empty!15934) (left!56922 (left!56922 t!3637))))))

(assert (=> d!2374779 (= (list!19466 (left!56922 (left!56922 t!3637))) e!4684676)))

(declare-fun b!7939398 () Bool)

(assert (=> b!7939398 (= e!4684677 (list!19467 (xs!19332 (left!56922 (left!56922 t!3637)))))))

(declare-fun b!7939399 () Bool)

(assert (=> b!7939399 (= e!4684677 (++!18285 (list!19466 (left!56922 (left!56922 (left!56922 t!3637)))) (list!19466 (right!57252 (left!56922 (left!56922 t!3637))))))))

(declare-fun b!7939396 () Bool)

(assert (=> b!7939396 (= e!4684676 Nil!74482)))

(assert (= (and d!2374779 c!1458649) b!7939396))

(assert (= (and d!2374779 (not c!1458649)) b!7939397))

(assert (= (and b!7939397 c!1458650) b!7939398))

(assert (= (and b!7939397 (not c!1458650)) b!7939399))

(assert (=> b!7939398 m!8328800))

(declare-fun m!8328850 () Bool)

(assert (=> b!7939399 m!8328850))

(declare-fun m!8328852 () Bool)

(assert (=> b!7939399 m!8328852))

(assert (=> b!7939399 m!8328850))

(assert (=> b!7939399 m!8328852))

(declare-fun m!8328854 () Bool)

(assert (=> b!7939399 m!8328854))

(assert (=> b!7939170 d!2374779))

(declare-fun b!7939405 () Bool)

(declare-fun e!4684680 () List!74606)

(declare-fun e!4684681 () List!74606)

(assert (=> b!7939405 (= e!4684680 e!4684681)))

(declare-fun c!1458654 () Bool)

(assert (=> b!7939405 (= c!1458654 ((_ is Leaf!30283) (right!57252 (left!56922 t!3637))))))

(declare-fun d!2374783 () Bool)

(declare-fun c!1458653 () Bool)

(assert (=> d!2374783 (= c!1458653 ((_ is Empty!15934) (right!57252 (left!56922 t!3637))))))

(assert (=> d!2374783 (= (list!19466 (right!57252 (left!56922 t!3637))) e!4684680)))

(declare-fun b!7939406 () Bool)

(assert (=> b!7939406 (= e!4684681 (list!19467 (xs!19332 (right!57252 (left!56922 t!3637)))))))

(declare-fun b!7939407 () Bool)

(assert (=> b!7939407 (= e!4684681 (++!18285 (list!19466 (left!56922 (right!57252 (left!56922 t!3637)))) (list!19466 (right!57252 (right!57252 (left!56922 t!3637))))))))

(declare-fun b!7939404 () Bool)

(assert (=> b!7939404 (= e!4684680 Nil!74482)))

(assert (= (and d!2374783 c!1458653) b!7939404))

(assert (= (and d!2374783 (not c!1458653)) b!7939405))

(assert (= (and b!7939405 c!1458654) b!7939406))

(assert (= (and b!7939405 (not c!1458654)) b!7939407))

(assert (=> b!7939406 m!8328710))

(declare-fun m!8328864 () Bool)

(assert (=> b!7939407 m!8328864))

(declare-fun m!8328866 () Bool)

(assert (=> b!7939407 m!8328866))

(assert (=> b!7939407 m!8328864))

(assert (=> b!7939407 m!8328866))

(declare-fun m!8328868 () Bool)

(assert (=> b!7939407 m!8328868))

(assert (=> b!7939170 d!2374783))

(declare-fun d!2374787 () Bool)

(assert (=> d!2374787 (= (max!0 (height!2241 (left!56922 (left!56922 t!3637))) (height!2241 (right!57252 (left!56922 t!3637)))) (ite (< (height!2241 (left!56922 (left!56922 t!3637))) (height!2241 (right!57252 (left!56922 t!3637)))) (height!2241 (right!57252 (left!56922 t!3637))) (height!2241 (left!56922 (left!56922 t!3637)))))))

(assert (=> b!7939239 d!2374787))

(declare-fun d!2374791 () Bool)

(assert (=> d!2374791 (= (height!2241 (left!56922 (left!56922 t!3637))) (ite ((_ is Empty!15934) (left!56922 (left!56922 t!3637))) 0 (ite ((_ is Leaf!30283) (left!56922 (left!56922 t!3637))) 1 (cheight!16145 (left!56922 (left!56922 t!3637))))))))

(assert (=> b!7939239 d!2374791))

(declare-fun d!2374793 () Bool)

(assert (=> d!2374793 (= (height!2241 (right!57252 (left!56922 t!3637))) (ite ((_ is Empty!15934) (right!57252 (left!56922 t!3637))) 0 (ite ((_ is Leaf!30283) (right!57252 (left!56922 t!3637))) 1 (cheight!16145 (right!57252 (left!56922 t!3637))))))))

(assert (=> b!7939239 d!2374793))

(assert (=> b!7939145 d!2374631))

(assert (=> b!7939145 d!2374633))

(declare-fun d!2374795 () Bool)

(declare-fun lt!2695753 () Int)

(assert (=> d!2374795 (>= lt!2695753 0)))

(declare-fun e!4684684 () Int)

(assert (=> d!2374795 (= lt!2695753 e!4684684)))

(declare-fun c!1458656 () Bool)

(assert (=> d!2374795 (= c!1458656 ((_ is Nil!74482) (t!390343 (innerList!16022 (xs!19332 t!3637)))))))

(assert (=> d!2374795 (= (size!43316 (t!390343 (innerList!16022 (xs!19332 t!3637)))) lt!2695753)))

(declare-fun b!7939413 () Bool)

(assert (=> b!7939413 (= e!4684684 0)))

(declare-fun b!7939414 () Bool)

(assert (=> b!7939414 (= e!4684684 (+ 1 (size!43316 (t!390343 (t!390343 (innerList!16022 (xs!19332 t!3637)))))))))

(assert (= (and d!2374795 c!1458656) b!7939413))

(assert (= (and d!2374795 (not c!1458656)) b!7939414))

(declare-fun m!8328880 () Bool)

(assert (=> b!7939414 m!8328880))

(assert (=> b!7939248 d!2374795))

(declare-fun d!2374797 () Bool)

(assert (=> d!2374797 (= (max!0 (height!2241 (left!56922 t!3637)) (height!2241 (right!57252 t!3637))) (ite (< (height!2241 (left!56922 t!3637)) (height!2241 (right!57252 t!3637))) (height!2241 (right!57252 t!3637)) (height!2241 (left!56922 t!3637))))))

(assert (=> b!7939224 d!2374797))

(declare-fun d!2374801 () Bool)

(assert (=> d!2374801 (= (height!2241 (left!56922 t!3637)) (ite ((_ is Empty!15934) (left!56922 t!3637)) 0 (ite ((_ is Leaf!30283) (left!56922 t!3637)) 1 (cheight!16145 (left!56922 t!3637)))))))

(assert (=> b!7939224 d!2374801))

(declare-fun d!2374803 () Bool)

(assert (=> d!2374803 (= (height!2241 (right!57252 t!3637)) (ite ((_ is Empty!15934) (right!57252 t!3637)) 0 (ite ((_ is Leaf!30283) (right!57252 t!3637)) 1 (cheight!16145 (right!57252 t!3637)))))))

(assert (=> b!7939224 d!2374803))

(assert (=> b!7939262 d!2374765))

(assert (=> b!7939262 d!2374745))

(declare-fun d!2374805 () Bool)

(declare-fun c!1458659 () Bool)

(assert (=> d!2374805 (= c!1458659 ((_ is Node!15934) (left!56922 (left!56922 (right!57252 t!3637)))))))

(declare-fun e!4684687 () Bool)

(assert (=> d!2374805 (= (inv!95894 (left!56922 (left!56922 (right!57252 t!3637)))) e!4684687)))

(declare-fun b!7939419 () Bool)

(assert (=> b!7939419 (= e!4684687 (inv!95896 (left!56922 (left!56922 (right!57252 t!3637)))))))

(declare-fun b!7939420 () Bool)

(declare-fun e!4684688 () Bool)

(assert (=> b!7939420 (= e!4684687 e!4684688)))

(declare-fun res!3149729 () Bool)

(assert (=> b!7939420 (= res!3149729 (not ((_ is Leaf!30283) (left!56922 (left!56922 (right!57252 t!3637))))))))

(assert (=> b!7939420 (=> res!3149729 e!4684688)))

(declare-fun b!7939421 () Bool)

(assert (=> b!7939421 (= e!4684688 (inv!95898 (left!56922 (left!56922 (right!57252 t!3637)))))))

(assert (= (and d!2374805 c!1458659) b!7939419))

(assert (= (and d!2374805 (not c!1458659)) b!7939420))

(assert (= (and b!7939420 (not res!3149729)) b!7939421))

(declare-fun m!8328888 () Bool)

(assert (=> b!7939419 m!8328888))

(declare-fun m!8328890 () Bool)

(assert (=> b!7939421 m!8328890))

(assert (=> b!7939273 d!2374805))

(declare-fun d!2374811 () Bool)

(declare-fun c!1458661 () Bool)

(assert (=> d!2374811 (= c!1458661 ((_ is Node!15934) (right!57252 (left!56922 (right!57252 t!3637)))))))

(declare-fun e!4684690 () Bool)

(assert (=> d!2374811 (= (inv!95894 (right!57252 (left!56922 (right!57252 t!3637)))) e!4684690)))

(declare-fun b!7939424 () Bool)

(assert (=> b!7939424 (= e!4684690 (inv!95896 (right!57252 (left!56922 (right!57252 t!3637)))))))

(declare-fun b!7939425 () Bool)

(declare-fun e!4684691 () Bool)

(assert (=> b!7939425 (= e!4684690 e!4684691)))

(declare-fun res!3149730 () Bool)

(assert (=> b!7939425 (= res!3149730 (not ((_ is Leaf!30283) (right!57252 (left!56922 (right!57252 t!3637))))))))

(assert (=> b!7939425 (=> res!3149730 e!4684691)))

(declare-fun b!7939426 () Bool)

(assert (=> b!7939426 (= e!4684691 (inv!95898 (right!57252 (left!56922 (right!57252 t!3637)))))))

(assert (= (and d!2374811 c!1458661) b!7939424))

(assert (= (and d!2374811 (not c!1458661)) b!7939425))

(assert (= (and b!7939425 (not res!3149730)) b!7939426))

(declare-fun m!8328894 () Bool)

(assert (=> b!7939424 m!8328894))

(declare-fun m!8328896 () Bool)

(assert (=> b!7939426 m!8328896))

(assert (=> b!7939273 d!2374811))

(declare-fun d!2374815 () Bool)

(declare-fun lt!2695757 () Int)

(assert (=> d!2374815 (>= lt!2695757 0)))

(declare-fun e!4684693 () Int)

(assert (=> d!2374815 (= lt!2695757 e!4684693)))

(declare-fun c!1458662 () Bool)

(assert (=> d!2374815 (= c!1458662 ((_ is Nil!74482) (innerList!16022 (xs!19332 (right!57252 t!3637)))))))

(assert (=> d!2374815 (= (size!43316 (innerList!16022 (xs!19332 (right!57252 t!3637)))) lt!2695757)))

(declare-fun b!7939429 () Bool)

(assert (=> b!7939429 (= e!4684693 0)))

(declare-fun b!7939430 () Bool)

(assert (=> b!7939430 (= e!4684693 (+ 1 (size!43316 (t!390343 (innerList!16022 (xs!19332 (right!57252 t!3637)))))))))

(assert (= (and d!2374815 c!1458662) b!7939429))

(assert (= (and d!2374815 (not c!1458662)) b!7939430))

(declare-fun m!8328900 () Bool)

(assert (=> b!7939430 m!8328900))

(assert (=> d!2374665 d!2374815))

(declare-fun d!2374817 () Bool)

(declare-fun c!1458663 () Bool)

(assert (=> d!2374817 (= c!1458663 ((_ is Node!15934) (left!56922 (right!57252 (left!56922 t!3637)))))))

(declare-fun e!4684694 () Bool)

(assert (=> d!2374817 (= (inv!95894 (left!56922 (right!57252 (left!56922 t!3637)))) e!4684694)))

(declare-fun b!7939431 () Bool)

(assert (=> b!7939431 (= e!4684694 (inv!95896 (left!56922 (right!57252 (left!56922 t!3637)))))))

(declare-fun b!7939432 () Bool)

(declare-fun e!4684695 () Bool)

(assert (=> b!7939432 (= e!4684694 e!4684695)))

(declare-fun res!3149733 () Bool)

(assert (=> b!7939432 (= res!3149733 (not ((_ is Leaf!30283) (left!56922 (right!57252 (left!56922 t!3637))))))))

(assert (=> b!7939432 (=> res!3149733 e!4684695)))

(declare-fun b!7939433 () Bool)

(assert (=> b!7939433 (= e!4684695 (inv!95898 (left!56922 (right!57252 (left!56922 t!3637)))))))

(assert (= (and d!2374817 c!1458663) b!7939431))

(assert (= (and d!2374817 (not c!1458663)) b!7939432))

(assert (= (and b!7939432 (not res!3149733)) b!7939433))

(declare-fun m!8328904 () Bool)

(assert (=> b!7939431 m!8328904))

(declare-fun m!8328906 () Bool)

(assert (=> b!7939433 m!8328906))

(assert (=> b!7939268 d!2374817))

(declare-fun d!2374821 () Bool)

(declare-fun c!1458665 () Bool)

(assert (=> d!2374821 (= c!1458665 ((_ is Node!15934) (right!57252 (right!57252 (left!56922 t!3637)))))))

(declare-fun e!4684698 () Bool)

(assert (=> d!2374821 (= (inv!95894 (right!57252 (right!57252 (left!56922 t!3637)))) e!4684698)))

(declare-fun b!7939438 () Bool)

(assert (=> b!7939438 (= e!4684698 (inv!95896 (right!57252 (right!57252 (left!56922 t!3637)))))))

(declare-fun b!7939439 () Bool)

(declare-fun e!4684699 () Bool)

(assert (=> b!7939439 (= e!4684698 e!4684699)))

(declare-fun res!3149736 () Bool)

(assert (=> b!7939439 (= res!3149736 (not ((_ is Leaf!30283) (right!57252 (right!57252 (left!56922 t!3637))))))))

(assert (=> b!7939439 (=> res!3149736 e!4684699)))

(declare-fun b!7939440 () Bool)

(assert (=> b!7939440 (= e!4684699 (inv!95898 (right!57252 (right!57252 (left!56922 t!3637)))))))

(assert (= (and d!2374821 c!1458665) b!7939438))

(assert (= (and d!2374821 (not c!1458665)) b!7939439))

(assert (= (and b!7939439 (not res!3149736)) b!7939440))

(declare-fun m!8328908 () Bool)

(assert (=> b!7939438 m!8328908))

(declare-fun m!8328910 () Bool)

(assert (=> b!7939440 m!8328910))

(assert (=> b!7939268 d!2374821))

(declare-fun d!2374823 () Bool)

(assert (=> d!2374823 (= (inv!95895 (xs!19332 (left!56922 (right!57252 t!3637)))) (<= (size!43316 (innerList!16022 (xs!19332 (left!56922 (right!57252 t!3637))))) 2147483647))))

(declare-fun bs!1969358 () Bool)

(assert (= bs!1969358 d!2374823))

(declare-fun m!8328916 () Bool)

(assert (=> bs!1969358 m!8328916))

(assert (=> b!7939274 d!2374823))

(assert (=> b!7939256 d!2374773))

(assert (=> b!7939256 d!2374621))

(declare-fun d!2374825 () Bool)

(declare-fun c!1458666 () Bool)

(assert (=> d!2374825 (= c!1458666 ((_ is Node!15934) (left!56922 (right!57252 (right!57252 t!3637)))))))

(declare-fun e!4684700 () Bool)

(assert (=> d!2374825 (= (inv!95894 (left!56922 (right!57252 (right!57252 t!3637)))) e!4684700)))

(declare-fun b!7939441 () Bool)

(assert (=> b!7939441 (= e!4684700 (inv!95896 (left!56922 (right!57252 (right!57252 t!3637)))))))

(declare-fun b!7939442 () Bool)

(declare-fun e!4684701 () Bool)

(assert (=> b!7939442 (= e!4684700 e!4684701)))

(declare-fun res!3149737 () Bool)

(assert (=> b!7939442 (= res!3149737 (not ((_ is Leaf!30283) (left!56922 (right!57252 (right!57252 t!3637))))))))

(assert (=> b!7939442 (=> res!3149737 e!4684701)))

(declare-fun b!7939443 () Bool)

(assert (=> b!7939443 (= e!4684701 (inv!95898 (left!56922 (right!57252 (right!57252 t!3637)))))))

(assert (= (and d!2374825 c!1458666) b!7939441))

(assert (= (and d!2374825 (not c!1458666)) b!7939442))

(assert (= (and b!7939442 (not res!3149737)) b!7939443))

(declare-fun m!8328922 () Bool)

(assert (=> b!7939441 m!8328922))

(declare-fun m!8328924 () Bool)

(assert (=> b!7939443 m!8328924))

(assert (=> b!7939280 d!2374825))

(declare-fun d!2374829 () Bool)

(declare-fun c!1458667 () Bool)

(assert (=> d!2374829 (= c!1458667 ((_ is Node!15934) (right!57252 (right!57252 (right!57252 t!3637)))))))

(declare-fun e!4684702 () Bool)

(assert (=> d!2374829 (= (inv!95894 (right!57252 (right!57252 (right!57252 t!3637)))) e!4684702)))

(declare-fun b!7939444 () Bool)

(assert (=> b!7939444 (= e!4684702 (inv!95896 (right!57252 (right!57252 (right!57252 t!3637)))))))

(declare-fun b!7939445 () Bool)

(declare-fun e!4684703 () Bool)

(assert (=> b!7939445 (= e!4684702 e!4684703)))

(declare-fun res!3149738 () Bool)

(assert (=> b!7939445 (= res!3149738 (not ((_ is Leaf!30283) (right!57252 (right!57252 (right!57252 t!3637))))))))

(assert (=> b!7939445 (=> res!3149738 e!4684703)))

(declare-fun b!7939446 () Bool)

(assert (=> b!7939446 (= e!4684703 (inv!95898 (right!57252 (right!57252 (right!57252 t!3637)))))))

(assert (= (and d!2374829 c!1458667) b!7939444))

(assert (= (and d!2374829 (not c!1458667)) b!7939445))

(assert (= (and b!7939445 (not res!3149738)) b!7939446))

(declare-fun m!8328926 () Bool)

(assert (=> b!7939444 m!8328926))

(declare-fun m!8328928 () Bool)

(assert (=> b!7939446 m!8328928))

(assert (=> b!7939280 d!2374829))

(declare-fun d!2374831 () Bool)

(declare-fun res!3149739 () Bool)

(declare-fun e!4684704 () Bool)

(assert (=> d!2374831 (=> (not res!3149739) (not e!4684704))))

(assert (=> d!2374831 (= res!3149739 (= (csize!32098 (right!57252 (left!56922 t!3637))) (+ (size!43314 (left!56922 (right!57252 (left!56922 t!3637)))) (size!43314 (right!57252 (right!57252 (left!56922 t!3637)))))))))

(assert (=> d!2374831 (= (inv!95896 (right!57252 (left!56922 t!3637))) e!4684704)))

(declare-fun b!7939447 () Bool)

(declare-fun res!3149740 () Bool)

(assert (=> b!7939447 (=> (not res!3149740) (not e!4684704))))

(assert (=> b!7939447 (= res!3149740 (and (not (= (left!56922 (right!57252 (left!56922 t!3637))) Empty!15934)) (not (= (right!57252 (right!57252 (left!56922 t!3637))) Empty!15934))))))

(declare-fun b!7939448 () Bool)

(declare-fun res!3149741 () Bool)

(assert (=> b!7939448 (=> (not res!3149741) (not e!4684704))))

(assert (=> b!7939448 (= res!3149741 (= (cheight!16145 (right!57252 (left!56922 t!3637))) (+ (max!0 (height!2241 (left!56922 (right!57252 (left!56922 t!3637)))) (height!2241 (right!57252 (right!57252 (left!56922 t!3637))))) 1)))))

(declare-fun b!7939449 () Bool)

(assert (=> b!7939449 (= e!4684704 (<= 0 (cheight!16145 (right!57252 (left!56922 t!3637)))))))

(assert (= (and d!2374831 res!3149739) b!7939447))

(assert (= (and b!7939447 res!3149740) b!7939448))

(assert (= (and b!7939448 res!3149741) b!7939449))

(declare-fun m!8328930 () Bool)

(assert (=> d!2374831 m!8328930))

(declare-fun m!8328932 () Bool)

(assert (=> d!2374831 m!8328932))

(declare-fun m!8328934 () Bool)

(assert (=> b!7939448 m!8328934))

(declare-fun m!8328936 () Bool)

(assert (=> b!7939448 m!8328936))

(assert (=> b!7939448 m!8328934))

(assert (=> b!7939448 m!8328936))

(declare-fun m!8328938 () Bool)

(assert (=> b!7939448 m!8328938))

(assert (=> b!7939192 d!2374831))

(declare-fun d!2374835 () Bool)

(assert (=> d!2374835 (= (inv!95895 (xs!19332 (right!57252 (left!56922 t!3637)))) (<= (size!43316 (innerList!16022 (xs!19332 (right!57252 (left!56922 t!3637))))) 2147483647))))

(declare-fun bs!1969359 () Bool)

(assert (= bs!1969359 d!2374835))

(declare-fun m!8328940 () Bool)

(assert (=> bs!1969359 m!8328940))

(assert (=> b!7939269 d!2374835))

(declare-fun d!2374837 () Bool)

(declare-fun lt!2695759 () Int)

(assert (=> d!2374837 (>= lt!2695759 0)))

(declare-fun e!4684705 () Int)

(assert (=> d!2374837 (= lt!2695759 e!4684705)))

(declare-fun c!1458668 () Bool)

(assert (=> d!2374837 (= c!1458668 ((_ is Nil!74482) (t!390343 (list!19466 t!3637))))))

(assert (=> d!2374837 (= (size!43316 (t!390343 (list!19466 t!3637))) lt!2695759)))

(declare-fun b!7939450 () Bool)

(assert (=> b!7939450 (= e!4684705 0)))

(declare-fun b!7939451 () Bool)

(assert (=> b!7939451 (= e!4684705 (+ 1 (size!43316 (t!390343 (t!390343 (list!19466 t!3637))))))))

(assert (= (and d!2374837 c!1458668) b!7939450))

(assert (= (and d!2374837 (not c!1458668)) b!7939451))

(declare-fun m!8328942 () Bool)

(assert (=> b!7939451 m!8328942))

(assert (=> b!7939188 d!2374837))

(declare-fun tp!2360443 () Bool)

(declare-fun tp!2360442 () Bool)

(declare-fun b!7939452 () Bool)

(declare-fun e!4684707 () Bool)

(assert (=> b!7939452 (= e!4684707 (and (inv!95894 (left!56922 (left!56922 (left!56922 (left!56922 t!3637))))) tp!2360442 (inv!95894 (right!57252 (left!56922 (left!56922 (left!56922 t!3637))))) tp!2360443))))

(declare-fun b!7939454 () Bool)

(declare-fun e!4684706 () Bool)

(declare-fun tp!2360441 () Bool)

(assert (=> b!7939454 (= e!4684706 tp!2360441)))

(declare-fun b!7939453 () Bool)

(assert (=> b!7939453 (= e!4684707 (and (inv!95895 (xs!19332 (left!56922 (left!56922 (left!56922 t!3637))))) e!4684706))))

(assert (=> b!7939265 (= tp!2360413 (and (inv!95894 (left!56922 (left!56922 (left!56922 t!3637)))) e!4684707))))

(assert (= (and b!7939265 ((_ is Node!15934) (left!56922 (left!56922 (left!56922 t!3637))))) b!7939452))

(assert (= b!7939453 b!7939454))

(assert (= (and b!7939265 ((_ is Leaf!30283) (left!56922 (left!56922 (left!56922 t!3637))))) b!7939453))

(declare-fun m!8328944 () Bool)

(assert (=> b!7939452 m!8328944))

(declare-fun m!8328946 () Bool)

(assert (=> b!7939452 m!8328946))

(declare-fun m!8328948 () Bool)

(assert (=> b!7939453 m!8328948))

(assert (=> b!7939265 m!8328598))

(declare-fun e!4684709 () Bool)

(declare-fun tp!2360445 () Bool)

(declare-fun b!7939455 () Bool)

(declare-fun tp!2360446 () Bool)

(assert (=> b!7939455 (= e!4684709 (and (inv!95894 (left!56922 (right!57252 (left!56922 (left!56922 t!3637))))) tp!2360445 (inv!95894 (right!57252 (right!57252 (left!56922 (left!56922 t!3637))))) tp!2360446))))

(declare-fun b!7939457 () Bool)

(declare-fun e!4684708 () Bool)

(declare-fun tp!2360444 () Bool)

(assert (=> b!7939457 (= e!4684708 tp!2360444)))

(declare-fun b!7939456 () Bool)

(assert (=> b!7939456 (= e!4684709 (and (inv!95895 (xs!19332 (right!57252 (left!56922 (left!56922 t!3637))))) e!4684708))))

(assert (=> b!7939265 (= tp!2360414 (and (inv!95894 (right!57252 (left!56922 (left!56922 t!3637)))) e!4684709))))

(assert (= (and b!7939265 ((_ is Node!15934) (right!57252 (left!56922 (left!56922 t!3637))))) b!7939455))

(assert (= b!7939456 b!7939457))

(assert (= (and b!7939265 ((_ is Leaf!30283) (right!57252 (left!56922 (left!56922 t!3637))))) b!7939456))

(declare-fun m!8328950 () Bool)

(assert (=> b!7939455 m!8328950))

(declare-fun m!8328952 () Bool)

(assert (=> b!7939455 m!8328952))

(declare-fun m!8328956 () Bool)

(assert (=> b!7939456 m!8328956))

(assert (=> b!7939265 m!8328600))

(declare-fun b!7939460 () Bool)

(declare-fun e!4684711 () Bool)

(declare-fun tp!2360447 () Bool)

(assert (=> b!7939460 (= e!4684711 (and tp_is_empty!53295 tp!2360447))))

(assert (=> b!7939270 (= tp!2360415 e!4684711)))

(assert (= (and b!7939270 ((_ is Cons!74482) (innerList!16022 (xs!19332 (right!57252 (left!56922 t!3637)))))) b!7939460))

(declare-fun tp!2360449 () Bool)

(declare-fun b!7939464 () Bool)

(declare-fun e!4684715 () Bool)

(declare-fun tp!2360450 () Bool)

(assert (=> b!7939464 (= e!4684715 (and (inv!95894 (left!56922 (left!56922 (left!56922 (right!57252 t!3637))))) tp!2360449 (inv!95894 (right!57252 (left!56922 (left!56922 (right!57252 t!3637))))) tp!2360450))))

(declare-fun b!7939466 () Bool)

(declare-fun e!4684714 () Bool)

(declare-fun tp!2360448 () Bool)

(assert (=> b!7939466 (= e!4684714 tp!2360448)))

(declare-fun b!7939465 () Bool)

(assert (=> b!7939465 (= e!4684715 (and (inv!95895 (xs!19332 (left!56922 (left!56922 (right!57252 t!3637))))) e!4684714))))

(assert (=> b!7939273 (= tp!2360421 (and (inv!95894 (left!56922 (left!56922 (right!57252 t!3637)))) e!4684715))))

(assert (= (and b!7939273 ((_ is Node!15934) (left!56922 (left!56922 (right!57252 t!3637))))) b!7939464))

(assert (= b!7939465 b!7939466))

(assert (= (and b!7939273 ((_ is Leaf!30283) (left!56922 (left!56922 (right!57252 t!3637))))) b!7939465))

(declare-fun m!8328962 () Bool)

(assert (=> b!7939464 m!8328962))

(declare-fun m!8328964 () Bool)

(assert (=> b!7939464 m!8328964))

(declare-fun m!8328966 () Bool)

(assert (=> b!7939465 m!8328966))

(assert (=> b!7939273 m!8328610))

(declare-fun e!4684719 () Bool)

(declare-fun tp!2360453 () Bool)

(declare-fun b!7939470 () Bool)

(declare-fun tp!2360452 () Bool)

(assert (=> b!7939470 (= e!4684719 (and (inv!95894 (left!56922 (right!57252 (left!56922 (right!57252 t!3637))))) tp!2360452 (inv!95894 (right!57252 (right!57252 (left!56922 (right!57252 t!3637))))) tp!2360453))))

(declare-fun b!7939472 () Bool)

(declare-fun e!4684718 () Bool)

(declare-fun tp!2360451 () Bool)

(assert (=> b!7939472 (= e!4684718 tp!2360451)))

(declare-fun b!7939471 () Bool)

(assert (=> b!7939471 (= e!4684719 (and (inv!95895 (xs!19332 (right!57252 (left!56922 (right!57252 t!3637))))) e!4684718))))

(assert (=> b!7939273 (= tp!2360422 (and (inv!95894 (right!57252 (left!56922 (right!57252 t!3637)))) e!4684719))))

(assert (= (and b!7939273 ((_ is Node!15934) (right!57252 (left!56922 (right!57252 t!3637))))) b!7939470))

(assert (= b!7939471 b!7939472))

(assert (= (and b!7939273 ((_ is Leaf!30283) (right!57252 (left!56922 (right!57252 t!3637))))) b!7939471))

(declare-fun m!8328972 () Bool)

(assert (=> b!7939470 m!8328972))

(declare-fun m!8328974 () Bool)

(assert (=> b!7939470 m!8328974))

(declare-fun m!8328976 () Bool)

(assert (=> b!7939471 m!8328976))

(assert (=> b!7939273 m!8328612))

(declare-fun b!7939476 () Bool)

(declare-fun e!4684721 () Bool)

(declare-fun tp!2360454 () Bool)

(assert (=> b!7939476 (= e!4684721 (and tp_is_empty!53295 tp!2360454))))

(assert (=> b!7939267 (= tp!2360412 e!4684721)))

(assert (= (and b!7939267 ((_ is Cons!74482) (innerList!16022 (xs!19332 (left!56922 (left!56922 t!3637)))))) b!7939476))

(declare-fun b!7939477 () Bool)

(declare-fun e!4684722 () Bool)

(declare-fun tp!2360455 () Bool)

(assert (=> b!7939477 (= e!4684722 (and tp_is_empty!53295 tp!2360455))))

(assert (=> b!7939282 (= tp!2360423 e!4684722)))

(assert (= (and b!7939282 ((_ is Cons!74482) (innerList!16022 (xs!19332 (right!57252 (right!57252 t!3637)))))) b!7939477))

(declare-fun b!7939478 () Bool)

(declare-fun e!4684723 () Bool)

(declare-fun tp!2360456 () Bool)

(assert (=> b!7939478 (= e!4684723 (and tp_is_empty!53295 tp!2360456))))

(assert (=> b!7939272 (= tp!2360419 e!4684723)))

(assert (= (and b!7939272 ((_ is Cons!74482) (t!390343 (t!390343 (innerList!16022 (xs!19332 t!3637)))))) b!7939478))

(declare-fun b!7939479 () Bool)

(declare-fun e!4684724 () Bool)

(declare-fun tp!2360457 () Bool)

(assert (=> b!7939479 (= e!4684724 (and tp_is_empty!53295 tp!2360457))))

(assert (=> b!7939271 (= tp!2360418 e!4684724)))

(assert (= (and b!7939271 ((_ is Cons!74482) (t!390343 (innerList!16022 (xs!19332 (left!56922 t!3637)))))) b!7939479))

(declare-fun tp!2360459 () Bool)

(declare-fun b!7939482 () Bool)

(declare-fun tp!2360460 () Bool)

(declare-fun e!4684728 () Bool)

(assert (=> b!7939482 (= e!4684728 (and (inv!95894 (left!56922 (left!56922 (right!57252 (left!56922 t!3637))))) tp!2360459 (inv!95894 (right!57252 (left!56922 (right!57252 (left!56922 t!3637))))) tp!2360460))))

(declare-fun b!7939486 () Bool)

(declare-fun e!4684725 () Bool)

(declare-fun tp!2360458 () Bool)

(assert (=> b!7939486 (= e!4684725 tp!2360458)))

(declare-fun b!7939484 () Bool)

(assert (=> b!7939484 (= e!4684728 (and (inv!95895 (xs!19332 (left!56922 (right!57252 (left!56922 t!3637))))) e!4684725))))

(assert (=> b!7939268 (= tp!2360416 (and (inv!95894 (left!56922 (right!57252 (left!56922 t!3637)))) e!4684728))))

(assert (= (and b!7939268 ((_ is Node!15934) (left!56922 (right!57252 (left!56922 t!3637))))) b!7939482))

(assert (= b!7939484 b!7939486))

(assert (= (and b!7939268 ((_ is Leaf!30283) (left!56922 (right!57252 (left!56922 t!3637))))) b!7939484))

(declare-fun m!8328988 () Bool)

(assert (=> b!7939482 m!8328988))

(declare-fun m!8328990 () Bool)

(assert (=> b!7939482 m!8328990))

(declare-fun m!8328992 () Bool)

(assert (=> b!7939484 m!8328992))

(assert (=> b!7939268 m!8328604))

(declare-fun b!7939487 () Bool)

(declare-fun e!4684730 () Bool)

(declare-fun tp!2360463 () Bool)

(declare-fun tp!2360462 () Bool)

(assert (=> b!7939487 (= e!4684730 (and (inv!95894 (left!56922 (right!57252 (right!57252 (left!56922 t!3637))))) tp!2360462 (inv!95894 (right!57252 (right!57252 (right!57252 (left!56922 t!3637))))) tp!2360463))))

(declare-fun b!7939489 () Bool)

(declare-fun e!4684729 () Bool)

(declare-fun tp!2360461 () Bool)

(assert (=> b!7939489 (= e!4684729 tp!2360461)))

(declare-fun b!7939488 () Bool)

(assert (=> b!7939488 (= e!4684730 (and (inv!95895 (xs!19332 (right!57252 (right!57252 (left!56922 t!3637))))) e!4684729))))

(assert (=> b!7939268 (= tp!2360417 (and (inv!95894 (right!57252 (right!57252 (left!56922 t!3637)))) e!4684730))))

(assert (= (and b!7939268 ((_ is Node!15934) (right!57252 (right!57252 (left!56922 t!3637))))) b!7939487))

(assert (= b!7939488 b!7939489))

(assert (= (and b!7939268 ((_ is Leaf!30283) (right!57252 (right!57252 (left!56922 t!3637))))) b!7939488))

(declare-fun m!8329004 () Bool)

(assert (=> b!7939487 m!8329004))

(declare-fun m!8329008 () Bool)

(assert (=> b!7939487 m!8329008))

(declare-fun m!8329012 () Bool)

(assert (=> b!7939488 m!8329012))

(assert (=> b!7939268 m!8328606))

(declare-fun tp!2360466 () Bool)

(declare-fun tp!2360465 () Bool)

(declare-fun b!7939494 () Bool)

(declare-fun e!4684734 () Bool)

(assert (=> b!7939494 (= e!4684734 (and (inv!95894 (left!56922 (left!56922 (right!57252 (right!57252 t!3637))))) tp!2360465 (inv!95894 (right!57252 (left!56922 (right!57252 (right!57252 t!3637))))) tp!2360466))))

(declare-fun b!7939496 () Bool)

(declare-fun e!4684733 () Bool)

(declare-fun tp!2360464 () Bool)

(assert (=> b!7939496 (= e!4684733 tp!2360464)))

(declare-fun b!7939495 () Bool)

(assert (=> b!7939495 (= e!4684734 (and (inv!95895 (xs!19332 (left!56922 (right!57252 (right!57252 t!3637))))) e!4684733))))

(assert (=> b!7939280 (= tp!2360424 (and (inv!95894 (left!56922 (right!57252 (right!57252 t!3637)))) e!4684734))))

(assert (= (and b!7939280 ((_ is Node!15934) (left!56922 (right!57252 (right!57252 t!3637))))) b!7939494))

(assert (= b!7939495 b!7939496))

(assert (= (and b!7939280 ((_ is Leaf!30283) (left!56922 (right!57252 (right!57252 t!3637))))) b!7939495))

(declare-fun m!8329014 () Bool)

(assert (=> b!7939494 m!8329014))

(declare-fun m!8329016 () Bool)

(assert (=> b!7939494 m!8329016))

(declare-fun m!8329020 () Bool)

(assert (=> b!7939495 m!8329020))

(assert (=> b!7939280 m!8328616))

(declare-fun b!7939497 () Bool)

(declare-fun e!4684736 () Bool)

(declare-fun tp!2360469 () Bool)

(declare-fun tp!2360468 () Bool)

(assert (=> b!7939497 (= e!4684736 (and (inv!95894 (left!56922 (right!57252 (right!57252 (right!57252 t!3637))))) tp!2360468 (inv!95894 (right!57252 (right!57252 (right!57252 (right!57252 t!3637))))) tp!2360469))))

(declare-fun b!7939499 () Bool)

(declare-fun e!4684735 () Bool)

(declare-fun tp!2360467 () Bool)

(assert (=> b!7939499 (= e!4684735 tp!2360467)))

(declare-fun b!7939498 () Bool)

(assert (=> b!7939498 (= e!4684736 (and (inv!95895 (xs!19332 (right!57252 (right!57252 (right!57252 t!3637))))) e!4684735))))

(assert (=> b!7939280 (= tp!2360425 (and (inv!95894 (right!57252 (right!57252 (right!57252 t!3637)))) e!4684736))))

(assert (= (and b!7939280 ((_ is Node!15934) (right!57252 (right!57252 (right!57252 t!3637))))) b!7939497))

(assert (= b!7939498 b!7939499))

(assert (= (and b!7939280 ((_ is Leaf!30283) (right!57252 (right!57252 (right!57252 t!3637))))) b!7939498))

(declare-fun m!8329026 () Bool)

(assert (=> b!7939497 m!8329026))

(declare-fun m!8329028 () Bool)

(assert (=> b!7939497 m!8329028))

(declare-fun m!8329030 () Bool)

(assert (=> b!7939498 m!8329030))

(assert (=> b!7939280 m!8328618))

(declare-fun b!7939504 () Bool)

(declare-fun e!4684739 () Bool)

(declare-fun tp!2360470 () Bool)

(assert (=> b!7939504 (= e!4684739 (and tp_is_empty!53295 tp!2360470))))

(assert (=> b!7939264 (= tp!2360411 e!4684739)))

(assert (= (and b!7939264 ((_ is Cons!74482) (t!390343 (innerList!16022 (xs!19332 (right!57252 t!3637)))))) b!7939504))

(declare-fun b!7939505 () Bool)

(declare-fun e!4684740 () Bool)

(declare-fun tp!2360471 () Bool)

(assert (=> b!7939505 (= e!4684740 (and tp_is_empty!53295 tp!2360471))))

(assert (=> b!7939275 (= tp!2360420 e!4684740)))

(assert (= (and b!7939275 ((_ is Cons!74482) (innerList!16022 (xs!19332 (left!56922 (right!57252 t!3637)))))) b!7939505))

(check-sat (not b!7939376) (not b!7939424) (not b!7939280) (not b!7939495) (not b!7939357) (not d!2374717) (not b!7939472) (not b!7939494) (not b!7939465) (not b!7939273) (not b!7939333) (not b!7939398) (not d!2374707) (not d!2374755) (not b!7939421) (not b!7939460) (not b!7939321) (not b!7939265) (not b!7939347) (not b!7939381) (not b!7939341) (not d!2374685) (not b!7939451) (not b!7939364) (not d!2374725) (not b!7939268) (not b!7939339) (not b!7939371) (not b!7939383) (not b!7939352) (not b!7939488) (not b!7939331) (not b!7939453) (not b!7939327) (not b!7939448) (not b!7939482) (not b!7939389) (not b!7939486) (not b!7939399) (not b!7939358) (not b!7939479) (not b!7939344) (not b!7939446) (not b!7939318) (not b!7939426) (not b!7939440) (not d!2374835) (not b!7939334) (not b!7939337) (not d!2374715) (not b!7939430) (not b!7939497) (not d!2374719) tp_is_empty!53295 (not b!7939315) (not b!7939452) (not b!7939345) (not b!7939349) (not d!2374751) (not b!7939455) (not b!7939419) (not d!2374683) (not b!7939457) (not b!7939487) (not b!7939470) (not b!7939407) (not d!2374689) (not b!7939464) (not b!7939489) (not b!7939471) (not b!7939329) (not d!2374691) (not d!2374739) (not b!7939406) (not b!7939499) (not b!7939504) (not b!7939476) (not b!7939390) (not d!2374775) (not b!7939362) (not b!7939316) (not b!7939484) (not b!7939433) (not b!7939477) (not b!7939478) (not b!7939444) (not b!7939441) (not b!7939498) (not d!2374687) (not d!2374733) (not b!7939466) (not b!7939443) (not b!7939431) (not b!7939456) (not b!7939496) (not b!7939312) (not d!2374823) (not d!2374747) (not b!7939505) (not b!7939454) (not b!7939438) (not b!7939414) (not d!2374759) (not d!2374831) (not b!7939361) (not d!2374693) (not b!7939353) (not b!7939342))
(check-sat)
