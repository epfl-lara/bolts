; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536134 () Bool)

(assert start!536134)

(declare-fun res!2166173 () Bool)

(declare-fun e!3173576 () Bool)

(assert (=> start!536134 (=> (not res!2166173) (not e!3173576))))

(declare-fun i!607 () Int)

(assert (=> start!536134 (= res!2166173 (<= 0 i!607))))

(assert (=> start!536134 e!3173576))

(assert (=> start!536134 true))

(declare-datatypes ((T!105440 0))(
  ( (T!105441 (val!23698 Int)) )
))
(declare-datatypes ((List!58623 0))(
  ( (Nil!58499) (Cons!58499 (h!64947 T!105440) (t!371492 List!58623)) )
))
(declare-datatypes ((IArray!31289 0))(
  ( (IArray!31290 (innerList!15702 List!58623)) )
))
(declare-datatypes ((Conc!15614 0))(
  ( (Node!15614 (left!42893 Conc!15614) (right!43223 Conc!15614) (csize!31458 Int) (cheight!15825 Int)) (Leaf!25926 (xs!18996 IArray!31289) (csize!31459 Int)) (Empty!15614) )
))
(declare-fun t!3643 () Conc!15614)

(declare-fun e!3173577 () Bool)

(declare-fun inv!77822 (Conc!15614) Bool)

(assert (=> start!536134 (and (inv!77822 t!3643) e!3173577)))

(declare-fun b!5088506 () Bool)

(declare-fun res!2166176 () Bool)

(assert (=> b!5088506 (=> (not res!2166176) (not e!3173576))))

(declare-fun size!39169 (List!58623) Int)

(declare-fun list!19062 (IArray!31289) List!58623)

(assert (=> b!5088506 (= res!2166176 (<= (size!39169 (list!19062 (xs!18996 t!3643))) 512))))

(declare-fun b!5088507 () Bool)

(declare-fun res!2166175 () Bool)

(assert (=> b!5088507 (=> (not res!2166175) (not e!3173576))))

(declare-fun size!39170 (Conc!15614) Int)

(assert (=> b!5088507 (= res!2166175 (< i!607 (size!39170 t!3643)))))

(declare-fun b!5088508 () Bool)

(declare-fun e!3173578 () Bool)

(declare-fun inv!77823 (IArray!31289) Bool)

(assert (=> b!5088508 (= e!3173577 (and (inv!77823 (xs!18996 t!3643)) e!3173578))))

(declare-fun tp!1418603 () Bool)

(declare-fun b!5088509 () Bool)

(declare-fun tp!1418602 () Bool)

(assert (=> b!5088509 (= e!3173577 (and (inv!77822 (left!42893 t!3643)) tp!1418602 (inv!77822 (right!43223 t!3643)) tp!1418603))))

(declare-fun b!5088510 () Bool)

(declare-fun res!2166174 () Bool)

(assert (=> b!5088510 (=> (not res!2166174) (not e!3173576))))

(get-info :version)

(assert (=> b!5088510 (= res!2166174 (and ((_ is Leaf!25926) t!3643) (>= i!607 0) (< i!607 (csize!31459 t!3643))))))

(declare-fun b!5088511 () Bool)

(declare-fun tp!1418601 () Bool)

(assert (=> b!5088511 (= e!3173578 tp!1418601)))

(declare-fun b!5088512 () Bool)

(declare-fun size!39171 (IArray!31289) Int)

(assert (=> b!5088512 (= e!3173576 (>= i!607 (size!39171 (xs!18996 t!3643))))))

(assert (= (and start!536134 res!2166173) b!5088507))

(assert (= (and b!5088507 res!2166175) b!5088510))

(assert (= (and b!5088510 res!2166174) b!5088506))

(assert (= (and b!5088506 res!2166176) b!5088512))

(assert (= (and start!536134 ((_ is Node!15614) t!3643)) b!5088509))

(assert (= b!5088508 b!5088511))

(assert (= (and start!536134 ((_ is Leaf!25926) t!3643)) b!5088508))

(declare-fun m!6146382 () Bool)

(assert (=> b!5088507 m!6146382))

(declare-fun m!6146384 () Bool)

(assert (=> start!536134 m!6146384))

(declare-fun m!6146386 () Bool)

(assert (=> b!5088512 m!6146386))

(declare-fun m!6146388 () Bool)

(assert (=> b!5088508 m!6146388))

(declare-fun m!6146390 () Bool)

(assert (=> b!5088506 m!6146390))

(assert (=> b!5088506 m!6146390))

(declare-fun m!6146392 () Bool)

(assert (=> b!5088506 m!6146392))

(declare-fun m!6146394 () Bool)

(assert (=> b!5088509 m!6146394))

(declare-fun m!6146396 () Bool)

(assert (=> b!5088509 m!6146396))

(check-sat (not start!536134) (not b!5088508) (not b!5088506) (not b!5088507) (not b!5088509) (not b!5088512) (not b!5088511))
(check-sat)
(get-model)

(declare-fun d!1647034 () Bool)

(declare-fun lt!2092102 () Int)

(assert (=> d!1647034 (>= lt!2092102 0)))

(declare-fun e!3173581 () Int)

(assert (=> d!1647034 (= lt!2092102 e!3173581)))

(declare-fun c!874349 () Bool)

(assert (=> d!1647034 (= c!874349 ((_ is Nil!58499) (list!19062 (xs!18996 t!3643))))))

(assert (=> d!1647034 (= (size!39169 (list!19062 (xs!18996 t!3643))) lt!2092102)))

(declare-fun b!5088517 () Bool)

(assert (=> b!5088517 (= e!3173581 0)))

(declare-fun b!5088518 () Bool)

(assert (=> b!5088518 (= e!3173581 (+ 1 (size!39169 (t!371492 (list!19062 (xs!18996 t!3643))))))))

(assert (= (and d!1647034 c!874349) b!5088517))

(assert (= (and d!1647034 (not c!874349)) b!5088518))

(declare-fun m!6146402 () Bool)

(assert (=> b!5088518 m!6146402))

(assert (=> b!5088506 d!1647034))

(declare-fun d!1647038 () Bool)

(assert (=> d!1647038 (= (list!19062 (xs!18996 t!3643)) (innerList!15702 (xs!18996 t!3643)))))

(assert (=> b!5088506 d!1647038))

(declare-fun d!1647042 () Bool)

(declare-fun lt!2092108 () Int)

(declare-fun list!19064 (Conc!15614) List!58623)

(assert (=> d!1647042 (= lt!2092108 (size!39169 (list!19064 t!3643)))))

(assert (=> d!1647042 (= lt!2092108 (ite ((_ is Empty!15614) t!3643) 0 (ite ((_ is Leaf!25926) t!3643) (csize!31459 t!3643) (csize!31458 t!3643))))))

(assert (=> d!1647042 (= (size!39170 t!3643) lt!2092108)))

(declare-fun bs!1191052 () Bool)

(assert (= bs!1191052 d!1647042))

(declare-fun m!6146408 () Bool)

(assert (=> bs!1191052 m!6146408))

(assert (=> bs!1191052 m!6146408))

(declare-fun m!6146410 () Bool)

(assert (=> bs!1191052 m!6146410))

(assert (=> b!5088507 d!1647042))

(declare-fun d!1647048 () Bool)

(declare-fun lt!2092114 () Int)

(assert (=> d!1647048 (= lt!2092114 (size!39169 (list!19062 (xs!18996 t!3643))))))

(declare-fun choose!37288 (IArray!31289) Int)

(assert (=> d!1647048 (= lt!2092114 (choose!37288 (xs!18996 t!3643)))))

(assert (=> d!1647048 (= (size!39171 (xs!18996 t!3643)) lt!2092114)))

(declare-fun bs!1191054 () Bool)

(assert (= bs!1191054 d!1647048))

(assert (=> bs!1191054 m!6146390))

(assert (=> bs!1191054 m!6146390))

(assert (=> bs!1191054 m!6146392))

(declare-fun m!6146414 () Bool)

(assert (=> bs!1191054 m!6146414))

(assert (=> b!5088512 d!1647048))

(declare-fun d!1647052 () Bool)

(assert (=> d!1647052 (= (inv!77823 (xs!18996 t!3643)) (<= (size!39169 (innerList!15702 (xs!18996 t!3643))) 2147483647))))

(declare-fun bs!1191055 () Bool)

(assert (= bs!1191055 d!1647052))

(declare-fun m!6146416 () Bool)

(assert (=> bs!1191055 m!6146416))

(assert (=> b!5088508 d!1647052))

(declare-fun d!1647054 () Bool)

(declare-fun c!874360 () Bool)

(assert (=> d!1647054 (= c!874360 ((_ is Node!15614) (left!42893 t!3643)))))

(declare-fun e!3173601 () Bool)

(assert (=> d!1647054 (= (inv!77822 (left!42893 t!3643)) e!3173601)))

(declare-fun b!5088550 () Bool)

(declare-fun inv!77825 (Conc!15614) Bool)

(assert (=> b!5088550 (= e!3173601 (inv!77825 (left!42893 t!3643)))))

(declare-fun b!5088551 () Bool)

(declare-fun e!3173602 () Bool)

(assert (=> b!5088551 (= e!3173601 e!3173602)))

(declare-fun res!2166184 () Bool)

(assert (=> b!5088551 (= res!2166184 (not ((_ is Leaf!25926) (left!42893 t!3643))))))

(assert (=> b!5088551 (=> res!2166184 e!3173602)))

(declare-fun b!5088552 () Bool)

(declare-fun inv!77826 (Conc!15614) Bool)

(assert (=> b!5088552 (= e!3173602 (inv!77826 (left!42893 t!3643)))))

(assert (= (and d!1647054 c!874360) b!5088550))

(assert (= (and d!1647054 (not c!874360)) b!5088551))

(assert (= (and b!5088551 (not res!2166184)) b!5088552))

(declare-fun m!6146430 () Bool)

(assert (=> b!5088550 m!6146430))

(declare-fun m!6146432 () Bool)

(assert (=> b!5088552 m!6146432))

(assert (=> b!5088509 d!1647054))

(declare-fun d!1647060 () Bool)

(declare-fun c!874361 () Bool)

(assert (=> d!1647060 (= c!874361 ((_ is Node!15614) (right!43223 t!3643)))))

(declare-fun e!3173604 () Bool)

(assert (=> d!1647060 (= (inv!77822 (right!43223 t!3643)) e!3173604)))

(declare-fun b!5088554 () Bool)

(assert (=> b!5088554 (= e!3173604 (inv!77825 (right!43223 t!3643)))))

(declare-fun b!5088555 () Bool)

(declare-fun e!3173605 () Bool)

(assert (=> b!5088555 (= e!3173604 e!3173605)))

(declare-fun res!2166185 () Bool)

(assert (=> b!5088555 (= res!2166185 (not ((_ is Leaf!25926) (right!43223 t!3643))))))

(assert (=> b!5088555 (=> res!2166185 e!3173605)))

(declare-fun b!5088556 () Bool)

(assert (=> b!5088556 (= e!3173605 (inv!77826 (right!43223 t!3643)))))

(assert (= (and d!1647060 c!874361) b!5088554))

(assert (= (and d!1647060 (not c!874361)) b!5088555))

(assert (= (and b!5088555 (not res!2166185)) b!5088556))

(declare-fun m!6146434 () Bool)

(assert (=> b!5088554 m!6146434))

(declare-fun m!6146436 () Bool)

(assert (=> b!5088556 m!6146436))

(assert (=> b!5088509 d!1647060))

(declare-fun d!1647062 () Bool)

(declare-fun c!874362 () Bool)

(assert (=> d!1647062 (= c!874362 ((_ is Node!15614) t!3643))))

(declare-fun e!3173608 () Bool)

(assert (=> d!1647062 (= (inv!77822 t!3643) e!3173608)))

(declare-fun b!5088561 () Bool)

(assert (=> b!5088561 (= e!3173608 (inv!77825 t!3643))))

(declare-fun b!5088562 () Bool)

(declare-fun e!3173609 () Bool)

(assert (=> b!5088562 (= e!3173608 e!3173609)))

(declare-fun res!2166186 () Bool)

(assert (=> b!5088562 (= res!2166186 (not ((_ is Leaf!25926) t!3643)))))

(assert (=> b!5088562 (=> res!2166186 e!3173609)))

(declare-fun b!5088563 () Bool)

(assert (=> b!5088563 (= e!3173609 (inv!77826 t!3643))))

(assert (= (and d!1647062 c!874362) b!5088561))

(assert (= (and d!1647062 (not c!874362)) b!5088562))

(assert (= (and b!5088562 (not res!2166186)) b!5088563))

(declare-fun m!6146438 () Bool)

(assert (=> b!5088561 m!6146438))

(declare-fun m!6146440 () Bool)

(assert (=> b!5088563 m!6146440))

(assert (=> start!536134 d!1647062))

(declare-fun b!5088572 () Bool)

(declare-fun e!3173614 () Bool)

(declare-fun tp_is_empty!37111 () Bool)

(declare-fun tp!1418615 () Bool)

(assert (=> b!5088572 (= e!3173614 (and tp_is_empty!37111 tp!1418615))))

(assert (=> b!5088511 (= tp!1418601 e!3173614)))

(assert (= (and b!5088511 ((_ is Cons!58499) (innerList!15702 (xs!18996 t!3643)))) b!5088572))

(declare-fun tp!1418629 () Bool)

(declare-fun e!3173624 () Bool)

(declare-fun b!5088587 () Bool)

(declare-fun tp!1418628 () Bool)

(assert (=> b!5088587 (= e!3173624 (and (inv!77822 (left!42893 (left!42893 t!3643))) tp!1418628 (inv!77822 (right!43223 (left!42893 t!3643))) tp!1418629))))

(declare-fun b!5088589 () Bool)

(declare-fun e!3173623 () Bool)

(declare-fun tp!1418630 () Bool)

(assert (=> b!5088589 (= e!3173623 tp!1418630)))

(declare-fun b!5088588 () Bool)

(assert (=> b!5088588 (= e!3173624 (and (inv!77823 (xs!18996 (left!42893 t!3643))) e!3173623))))

(assert (=> b!5088509 (= tp!1418602 (and (inv!77822 (left!42893 t!3643)) e!3173624))))

(assert (= (and b!5088509 ((_ is Node!15614) (left!42893 t!3643))) b!5088587))

(assert (= b!5088588 b!5088589))

(assert (= (and b!5088509 ((_ is Leaf!25926) (left!42893 t!3643))) b!5088588))

(declare-fun m!6146454 () Bool)

(assert (=> b!5088587 m!6146454))

(declare-fun m!6146456 () Bool)

(assert (=> b!5088587 m!6146456))

(declare-fun m!6146458 () Bool)

(assert (=> b!5088588 m!6146458))

(assert (=> b!5088509 m!6146394))

(declare-fun tp!1418632 () Bool)

(declare-fun tp!1418631 () Bool)

(declare-fun b!5088590 () Bool)

(declare-fun e!3173626 () Bool)

(assert (=> b!5088590 (= e!3173626 (and (inv!77822 (left!42893 (right!43223 t!3643))) tp!1418631 (inv!77822 (right!43223 (right!43223 t!3643))) tp!1418632))))

(declare-fun b!5088592 () Bool)

(declare-fun e!3173625 () Bool)

(declare-fun tp!1418633 () Bool)

(assert (=> b!5088592 (= e!3173625 tp!1418633)))

(declare-fun b!5088591 () Bool)

(assert (=> b!5088591 (= e!3173626 (and (inv!77823 (xs!18996 (right!43223 t!3643))) e!3173625))))

(assert (=> b!5088509 (= tp!1418603 (and (inv!77822 (right!43223 t!3643)) e!3173626))))

(assert (= (and b!5088509 ((_ is Node!15614) (right!43223 t!3643))) b!5088590))

(assert (= b!5088591 b!5088592))

(assert (= (and b!5088509 ((_ is Leaf!25926) (right!43223 t!3643))) b!5088591))

(declare-fun m!6146460 () Bool)

(assert (=> b!5088590 m!6146460))

(declare-fun m!6146462 () Bool)

(assert (=> b!5088590 m!6146462))

(declare-fun m!6146464 () Bool)

(assert (=> b!5088591 m!6146464))

(assert (=> b!5088509 m!6146396))

(check-sat (not b!5088518) (not b!5088550) (not b!5088588) (not b!5088589) (not b!5088587) (not b!5088592) (not b!5088556) (not d!1647052) (not b!5088563) (not b!5088561) (not d!1647048) (not b!5088552) (not b!5088554) tp_is_empty!37111 (not d!1647042) (not b!5088509) (not b!5088590) (not b!5088572) (not b!5088591))
(check-sat)
(get-model)

(declare-fun d!1647064 () Bool)

(declare-fun res!2166193 () Bool)

(declare-fun e!3173629 () Bool)

(assert (=> d!1647064 (=> (not res!2166193) (not e!3173629))))

(assert (=> d!1647064 (= res!2166193 (= (csize!31458 (left!42893 t!3643)) (+ (size!39170 (left!42893 (left!42893 t!3643))) (size!39170 (right!43223 (left!42893 t!3643))))))))

(assert (=> d!1647064 (= (inv!77825 (left!42893 t!3643)) e!3173629)))

(declare-fun b!5088599 () Bool)

(declare-fun res!2166194 () Bool)

(assert (=> b!5088599 (=> (not res!2166194) (not e!3173629))))

(assert (=> b!5088599 (= res!2166194 (and (not (= (left!42893 (left!42893 t!3643)) Empty!15614)) (not (= (right!43223 (left!42893 t!3643)) Empty!15614))))))

(declare-fun b!5088600 () Bool)

(declare-fun res!2166195 () Bool)

(assert (=> b!5088600 (=> (not res!2166195) (not e!3173629))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2168 (Conc!15614) Int)

(assert (=> b!5088600 (= res!2166195 (= (cheight!15825 (left!42893 t!3643)) (+ (max!0 (height!2168 (left!42893 (left!42893 t!3643))) (height!2168 (right!43223 (left!42893 t!3643)))) 1)))))

(declare-fun b!5088601 () Bool)

(assert (=> b!5088601 (= e!3173629 (<= 0 (cheight!15825 (left!42893 t!3643))))))

(assert (= (and d!1647064 res!2166193) b!5088599))

(assert (= (and b!5088599 res!2166194) b!5088600))

(assert (= (and b!5088600 res!2166195) b!5088601))

(declare-fun m!6146466 () Bool)

(assert (=> d!1647064 m!6146466))

(declare-fun m!6146468 () Bool)

(assert (=> d!1647064 m!6146468))

(declare-fun m!6146470 () Bool)

(assert (=> b!5088600 m!6146470))

(declare-fun m!6146472 () Bool)

(assert (=> b!5088600 m!6146472))

(assert (=> b!5088600 m!6146470))

(assert (=> b!5088600 m!6146472))

(declare-fun m!6146474 () Bool)

(assert (=> b!5088600 m!6146474))

(assert (=> b!5088550 d!1647064))

(declare-fun d!1647066 () Bool)

(declare-fun lt!2092115 () Int)

(assert (=> d!1647066 (>= lt!2092115 0)))

(declare-fun e!3173630 () Int)

(assert (=> d!1647066 (= lt!2092115 e!3173630)))

(declare-fun c!874363 () Bool)

(assert (=> d!1647066 (= c!874363 ((_ is Nil!58499) (list!19064 t!3643)))))

(assert (=> d!1647066 (= (size!39169 (list!19064 t!3643)) lt!2092115)))

(declare-fun b!5088602 () Bool)

(assert (=> b!5088602 (= e!3173630 0)))

(declare-fun b!5088603 () Bool)

(assert (=> b!5088603 (= e!3173630 (+ 1 (size!39169 (t!371492 (list!19064 t!3643)))))))

(assert (= (and d!1647066 c!874363) b!5088602))

(assert (= (and d!1647066 (not c!874363)) b!5088603))

(declare-fun m!6146476 () Bool)

(assert (=> b!5088603 m!6146476))

(assert (=> d!1647042 d!1647066))

(declare-fun b!5088612 () Bool)

(declare-fun e!3173635 () List!58623)

(assert (=> b!5088612 (= e!3173635 Nil!58499)))

(declare-fun d!1647068 () Bool)

(declare-fun c!874368 () Bool)

(assert (=> d!1647068 (= c!874368 ((_ is Empty!15614) t!3643))))

(assert (=> d!1647068 (= (list!19064 t!3643) e!3173635)))

(declare-fun b!5088614 () Bool)

(declare-fun e!3173636 () List!58623)

(assert (=> b!5088614 (= e!3173636 (list!19062 (xs!18996 t!3643)))))

(declare-fun b!5088615 () Bool)

(declare-fun ++!12820 (List!58623 List!58623) List!58623)

(assert (=> b!5088615 (= e!3173636 (++!12820 (list!19064 (left!42893 t!3643)) (list!19064 (right!43223 t!3643))))))

(declare-fun b!5088613 () Bool)

(assert (=> b!5088613 (= e!3173635 e!3173636)))

(declare-fun c!874369 () Bool)

(assert (=> b!5088613 (= c!874369 ((_ is Leaf!25926) t!3643))))

(assert (= (and d!1647068 c!874368) b!5088612))

(assert (= (and d!1647068 (not c!874368)) b!5088613))

(assert (= (and b!5088613 c!874369) b!5088614))

(assert (= (and b!5088613 (not c!874369)) b!5088615))

(assert (=> b!5088614 m!6146390))

(declare-fun m!6146478 () Bool)

(assert (=> b!5088615 m!6146478))

(declare-fun m!6146480 () Bool)

(assert (=> b!5088615 m!6146480))

(assert (=> b!5088615 m!6146478))

(assert (=> b!5088615 m!6146480))

(declare-fun m!6146482 () Bool)

(assert (=> b!5088615 m!6146482))

(assert (=> d!1647042 d!1647068))

(declare-fun d!1647070 () Bool)

(declare-fun res!2166196 () Bool)

(declare-fun e!3173637 () Bool)

(assert (=> d!1647070 (=> (not res!2166196) (not e!3173637))))

(assert (=> d!1647070 (= res!2166196 (= (csize!31458 t!3643) (+ (size!39170 (left!42893 t!3643)) (size!39170 (right!43223 t!3643)))))))

(assert (=> d!1647070 (= (inv!77825 t!3643) e!3173637)))

(declare-fun b!5088616 () Bool)

(declare-fun res!2166197 () Bool)

(assert (=> b!5088616 (=> (not res!2166197) (not e!3173637))))

(assert (=> b!5088616 (= res!2166197 (and (not (= (left!42893 t!3643) Empty!15614)) (not (= (right!43223 t!3643) Empty!15614))))))

(declare-fun b!5088617 () Bool)

(declare-fun res!2166198 () Bool)

(assert (=> b!5088617 (=> (not res!2166198) (not e!3173637))))

(assert (=> b!5088617 (= res!2166198 (= (cheight!15825 t!3643) (+ (max!0 (height!2168 (left!42893 t!3643)) (height!2168 (right!43223 t!3643))) 1)))))

(declare-fun b!5088618 () Bool)

(assert (=> b!5088618 (= e!3173637 (<= 0 (cheight!15825 t!3643)))))

(assert (= (and d!1647070 res!2166196) b!5088616))

(assert (= (and b!5088616 res!2166197) b!5088617))

(assert (= (and b!5088617 res!2166198) b!5088618))

(declare-fun m!6146484 () Bool)

(assert (=> d!1647070 m!6146484))

(declare-fun m!6146486 () Bool)

(assert (=> d!1647070 m!6146486))

(declare-fun m!6146488 () Bool)

(assert (=> b!5088617 m!6146488))

(declare-fun m!6146490 () Bool)

(assert (=> b!5088617 m!6146490))

(assert (=> b!5088617 m!6146488))

(assert (=> b!5088617 m!6146490))

(declare-fun m!6146492 () Bool)

(assert (=> b!5088617 m!6146492))

(assert (=> b!5088561 d!1647070))

(declare-fun d!1647072 () Bool)

(assert (=> d!1647072 (= (inv!77823 (xs!18996 (left!42893 t!3643))) (<= (size!39169 (innerList!15702 (xs!18996 (left!42893 t!3643)))) 2147483647))))

(declare-fun bs!1191056 () Bool)

(assert (= bs!1191056 d!1647072))

(declare-fun m!6146494 () Bool)

(assert (=> bs!1191056 m!6146494))

(assert (=> b!5088588 d!1647072))

(declare-fun d!1647074 () Bool)

(declare-fun c!874370 () Bool)

(assert (=> d!1647074 (= c!874370 ((_ is Node!15614) (left!42893 (left!42893 t!3643))))))

(declare-fun e!3173638 () Bool)

(assert (=> d!1647074 (= (inv!77822 (left!42893 (left!42893 t!3643))) e!3173638)))

(declare-fun b!5088619 () Bool)

(assert (=> b!5088619 (= e!3173638 (inv!77825 (left!42893 (left!42893 t!3643))))))

(declare-fun b!5088620 () Bool)

(declare-fun e!3173639 () Bool)

(assert (=> b!5088620 (= e!3173638 e!3173639)))

(declare-fun res!2166199 () Bool)

(assert (=> b!5088620 (= res!2166199 (not ((_ is Leaf!25926) (left!42893 (left!42893 t!3643)))))))

(assert (=> b!5088620 (=> res!2166199 e!3173639)))

(declare-fun b!5088621 () Bool)

(assert (=> b!5088621 (= e!3173639 (inv!77826 (left!42893 (left!42893 t!3643))))))

(assert (= (and d!1647074 c!874370) b!5088619))

(assert (= (and d!1647074 (not c!874370)) b!5088620))

(assert (= (and b!5088620 (not res!2166199)) b!5088621))

(declare-fun m!6146496 () Bool)

(assert (=> b!5088619 m!6146496))

(declare-fun m!6146498 () Bool)

(assert (=> b!5088621 m!6146498))

(assert (=> b!5088587 d!1647074))

(declare-fun d!1647076 () Bool)

(declare-fun c!874371 () Bool)

(assert (=> d!1647076 (= c!874371 ((_ is Node!15614) (right!43223 (left!42893 t!3643))))))

(declare-fun e!3173640 () Bool)

(assert (=> d!1647076 (= (inv!77822 (right!43223 (left!42893 t!3643))) e!3173640)))

(declare-fun b!5088622 () Bool)

(assert (=> b!5088622 (= e!3173640 (inv!77825 (right!43223 (left!42893 t!3643))))))

(declare-fun b!5088623 () Bool)

(declare-fun e!3173641 () Bool)

(assert (=> b!5088623 (= e!3173640 e!3173641)))

(declare-fun res!2166200 () Bool)

(assert (=> b!5088623 (= res!2166200 (not ((_ is Leaf!25926) (right!43223 (left!42893 t!3643)))))))

(assert (=> b!5088623 (=> res!2166200 e!3173641)))

(declare-fun b!5088624 () Bool)

(assert (=> b!5088624 (= e!3173641 (inv!77826 (right!43223 (left!42893 t!3643))))))

(assert (= (and d!1647076 c!874371) b!5088622))

(assert (= (and d!1647076 (not c!874371)) b!5088623))

(assert (= (and b!5088623 (not res!2166200)) b!5088624))

(declare-fun m!6146500 () Bool)

(assert (=> b!5088622 m!6146500))

(declare-fun m!6146502 () Bool)

(assert (=> b!5088624 m!6146502))

(assert (=> b!5088587 d!1647076))

(declare-fun d!1647078 () Bool)

(declare-fun res!2166205 () Bool)

(declare-fun e!3173644 () Bool)

(assert (=> d!1647078 (=> (not res!2166205) (not e!3173644))))

(assert (=> d!1647078 (= res!2166205 (<= (size!39169 (list!19062 (xs!18996 (left!42893 t!3643)))) 512))))

(assert (=> d!1647078 (= (inv!77826 (left!42893 t!3643)) e!3173644)))

(declare-fun b!5088629 () Bool)

(declare-fun res!2166206 () Bool)

(assert (=> b!5088629 (=> (not res!2166206) (not e!3173644))))

(assert (=> b!5088629 (= res!2166206 (= (csize!31459 (left!42893 t!3643)) (size!39169 (list!19062 (xs!18996 (left!42893 t!3643))))))))

(declare-fun b!5088630 () Bool)

(assert (=> b!5088630 (= e!3173644 (and (> (csize!31459 (left!42893 t!3643)) 0) (<= (csize!31459 (left!42893 t!3643)) 512)))))

(assert (= (and d!1647078 res!2166205) b!5088629))

(assert (= (and b!5088629 res!2166206) b!5088630))

(declare-fun m!6146504 () Bool)

(assert (=> d!1647078 m!6146504))

(assert (=> d!1647078 m!6146504))

(declare-fun m!6146506 () Bool)

(assert (=> d!1647078 m!6146506))

(assert (=> b!5088629 m!6146504))

(assert (=> b!5088629 m!6146504))

(assert (=> b!5088629 m!6146506))

(assert (=> b!5088552 d!1647078))

(declare-fun d!1647080 () Bool)

(declare-fun res!2166207 () Bool)

(declare-fun e!3173645 () Bool)

(assert (=> d!1647080 (=> (not res!2166207) (not e!3173645))))

(assert (=> d!1647080 (= res!2166207 (<= (size!39169 (list!19062 (xs!18996 t!3643))) 512))))

(assert (=> d!1647080 (= (inv!77826 t!3643) e!3173645)))

(declare-fun b!5088631 () Bool)

(declare-fun res!2166208 () Bool)

(assert (=> b!5088631 (=> (not res!2166208) (not e!3173645))))

(assert (=> b!5088631 (= res!2166208 (= (csize!31459 t!3643) (size!39169 (list!19062 (xs!18996 t!3643)))))))

(declare-fun b!5088632 () Bool)

(assert (=> b!5088632 (= e!3173645 (and (> (csize!31459 t!3643) 0) (<= (csize!31459 t!3643) 512)))))

(assert (= (and d!1647080 res!2166207) b!5088631))

(assert (= (and b!5088631 res!2166208) b!5088632))

(assert (=> d!1647080 m!6146390))

(assert (=> d!1647080 m!6146390))

(assert (=> d!1647080 m!6146392))

(assert (=> b!5088631 m!6146390))

(assert (=> b!5088631 m!6146390))

(assert (=> b!5088631 m!6146392))

(assert (=> b!5088563 d!1647080))

(declare-fun d!1647082 () Bool)

(declare-fun lt!2092116 () Int)

(assert (=> d!1647082 (>= lt!2092116 0)))

(declare-fun e!3173646 () Int)

(assert (=> d!1647082 (= lt!2092116 e!3173646)))

(declare-fun c!874372 () Bool)

(assert (=> d!1647082 (= c!874372 ((_ is Nil!58499) (t!371492 (list!19062 (xs!18996 t!3643)))))))

(assert (=> d!1647082 (= (size!39169 (t!371492 (list!19062 (xs!18996 t!3643)))) lt!2092116)))

(declare-fun b!5088633 () Bool)

(assert (=> b!5088633 (= e!3173646 0)))

(declare-fun b!5088634 () Bool)

(assert (=> b!5088634 (= e!3173646 (+ 1 (size!39169 (t!371492 (t!371492 (list!19062 (xs!18996 t!3643)))))))))

(assert (= (and d!1647082 c!874372) b!5088633))

(assert (= (and d!1647082 (not c!874372)) b!5088634))

(declare-fun m!6146508 () Bool)

(assert (=> b!5088634 m!6146508))

(assert (=> b!5088518 d!1647082))

(declare-fun d!1647084 () Bool)

(declare-fun res!2166209 () Bool)

(declare-fun e!3173647 () Bool)

(assert (=> d!1647084 (=> (not res!2166209) (not e!3173647))))

(assert (=> d!1647084 (= res!2166209 (= (csize!31458 (right!43223 t!3643)) (+ (size!39170 (left!42893 (right!43223 t!3643))) (size!39170 (right!43223 (right!43223 t!3643))))))))

(assert (=> d!1647084 (= (inv!77825 (right!43223 t!3643)) e!3173647)))

(declare-fun b!5088635 () Bool)

(declare-fun res!2166210 () Bool)

(assert (=> b!5088635 (=> (not res!2166210) (not e!3173647))))

(assert (=> b!5088635 (= res!2166210 (and (not (= (left!42893 (right!43223 t!3643)) Empty!15614)) (not (= (right!43223 (right!43223 t!3643)) Empty!15614))))))

(declare-fun b!5088636 () Bool)

(declare-fun res!2166211 () Bool)

(assert (=> b!5088636 (=> (not res!2166211) (not e!3173647))))

(assert (=> b!5088636 (= res!2166211 (= (cheight!15825 (right!43223 t!3643)) (+ (max!0 (height!2168 (left!42893 (right!43223 t!3643))) (height!2168 (right!43223 (right!43223 t!3643)))) 1)))))

(declare-fun b!5088637 () Bool)

(assert (=> b!5088637 (= e!3173647 (<= 0 (cheight!15825 (right!43223 t!3643))))))

(assert (= (and d!1647084 res!2166209) b!5088635))

(assert (= (and b!5088635 res!2166210) b!5088636))

(assert (= (and b!5088636 res!2166211) b!5088637))

(declare-fun m!6146510 () Bool)

(assert (=> d!1647084 m!6146510))

(declare-fun m!6146512 () Bool)

(assert (=> d!1647084 m!6146512))

(declare-fun m!6146514 () Bool)

(assert (=> b!5088636 m!6146514))

(declare-fun m!6146516 () Bool)

(assert (=> b!5088636 m!6146516))

(assert (=> b!5088636 m!6146514))

(assert (=> b!5088636 m!6146516))

(declare-fun m!6146518 () Bool)

(assert (=> b!5088636 m!6146518))

(assert (=> b!5088554 d!1647084))

(declare-fun d!1647086 () Bool)

(declare-fun c!874373 () Bool)

(assert (=> d!1647086 (= c!874373 ((_ is Node!15614) (left!42893 (right!43223 t!3643))))))

(declare-fun e!3173648 () Bool)

(assert (=> d!1647086 (= (inv!77822 (left!42893 (right!43223 t!3643))) e!3173648)))

(declare-fun b!5088638 () Bool)

(assert (=> b!5088638 (= e!3173648 (inv!77825 (left!42893 (right!43223 t!3643))))))

(declare-fun b!5088639 () Bool)

(declare-fun e!3173649 () Bool)

(assert (=> b!5088639 (= e!3173648 e!3173649)))

(declare-fun res!2166212 () Bool)

(assert (=> b!5088639 (= res!2166212 (not ((_ is Leaf!25926) (left!42893 (right!43223 t!3643)))))))

(assert (=> b!5088639 (=> res!2166212 e!3173649)))

(declare-fun b!5088640 () Bool)

(assert (=> b!5088640 (= e!3173649 (inv!77826 (left!42893 (right!43223 t!3643))))))

(assert (= (and d!1647086 c!874373) b!5088638))

(assert (= (and d!1647086 (not c!874373)) b!5088639))

(assert (= (and b!5088639 (not res!2166212)) b!5088640))

(declare-fun m!6146520 () Bool)

(assert (=> b!5088638 m!6146520))

(declare-fun m!6146522 () Bool)

(assert (=> b!5088640 m!6146522))

(assert (=> b!5088590 d!1647086))

(declare-fun d!1647088 () Bool)

(declare-fun c!874374 () Bool)

(assert (=> d!1647088 (= c!874374 ((_ is Node!15614) (right!43223 (right!43223 t!3643))))))

(declare-fun e!3173650 () Bool)

(assert (=> d!1647088 (= (inv!77822 (right!43223 (right!43223 t!3643))) e!3173650)))

(declare-fun b!5088641 () Bool)

(assert (=> b!5088641 (= e!3173650 (inv!77825 (right!43223 (right!43223 t!3643))))))

(declare-fun b!5088642 () Bool)

(declare-fun e!3173651 () Bool)

(assert (=> b!5088642 (= e!3173650 e!3173651)))

(declare-fun res!2166213 () Bool)

(assert (=> b!5088642 (= res!2166213 (not ((_ is Leaf!25926) (right!43223 (right!43223 t!3643)))))))

(assert (=> b!5088642 (=> res!2166213 e!3173651)))

(declare-fun b!5088643 () Bool)

(assert (=> b!5088643 (= e!3173651 (inv!77826 (right!43223 (right!43223 t!3643))))))

(assert (= (and d!1647088 c!874374) b!5088641))

(assert (= (and d!1647088 (not c!874374)) b!5088642))

(assert (= (and b!5088642 (not res!2166213)) b!5088643))

(declare-fun m!6146524 () Bool)

(assert (=> b!5088641 m!6146524))

(declare-fun m!6146526 () Bool)

(assert (=> b!5088643 m!6146526))

(assert (=> b!5088590 d!1647088))

(assert (=> d!1647048 d!1647034))

(assert (=> d!1647048 d!1647038))

(declare-fun d!1647090 () Bool)

(declare-fun _$1!11295 () Int)

(assert (=> d!1647090 (= _$1!11295 (size!39169 (list!19062 (xs!18996 t!3643))))))

(assert (=> d!1647090 true))

(assert (=> d!1647090 (= (choose!37288 (xs!18996 t!3643)) _$1!11295)))

(declare-fun bs!1191057 () Bool)

(assert (= bs!1191057 d!1647090))

(assert (=> bs!1191057 m!6146390))

(assert (=> bs!1191057 m!6146390))

(assert (=> bs!1191057 m!6146392))

(assert (=> d!1647048 d!1647090))

(declare-fun d!1647092 () Bool)

(assert (=> d!1647092 (= (inv!77823 (xs!18996 (right!43223 t!3643))) (<= (size!39169 (innerList!15702 (xs!18996 (right!43223 t!3643)))) 2147483647))))

(declare-fun bs!1191058 () Bool)

(assert (= bs!1191058 d!1647092))

(declare-fun m!6146528 () Bool)

(assert (=> bs!1191058 m!6146528))

(assert (=> b!5088591 d!1647092))

(declare-fun d!1647094 () Bool)

(declare-fun res!2166214 () Bool)

(declare-fun e!3173652 () Bool)

(assert (=> d!1647094 (=> (not res!2166214) (not e!3173652))))

(assert (=> d!1647094 (= res!2166214 (<= (size!39169 (list!19062 (xs!18996 (right!43223 t!3643)))) 512))))

(assert (=> d!1647094 (= (inv!77826 (right!43223 t!3643)) e!3173652)))

(declare-fun b!5088644 () Bool)

(declare-fun res!2166215 () Bool)

(assert (=> b!5088644 (=> (not res!2166215) (not e!3173652))))

(assert (=> b!5088644 (= res!2166215 (= (csize!31459 (right!43223 t!3643)) (size!39169 (list!19062 (xs!18996 (right!43223 t!3643))))))))

(declare-fun b!5088645 () Bool)

(assert (=> b!5088645 (= e!3173652 (and (> (csize!31459 (right!43223 t!3643)) 0) (<= (csize!31459 (right!43223 t!3643)) 512)))))

(assert (= (and d!1647094 res!2166214) b!5088644))

(assert (= (and b!5088644 res!2166215) b!5088645))

(declare-fun m!6146530 () Bool)

(assert (=> d!1647094 m!6146530))

(assert (=> d!1647094 m!6146530))

(declare-fun m!6146532 () Bool)

(assert (=> d!1647094 m!6146532))

(assert (=> b!5088644 m!6146530))

(assert (=> b!5088644 m!6146530))

(assert (=> b!5088644 m!6146532))

(assert (=> b!5088556 d!1647094))

(declare-fun d!1647096 () Bool)

(declare-fun lt!2092117 () Int)

(assert (=> d!1647096 (>= lt!2092117 0)))

(declare-fun e!3173653 () Int)

(assert (=> d!1647096 (= lt!2092117 e!3173653)))

(declare-fun c!874375 () Bool)

(assert (=> d!1647096 (= c!874375 ((_ is Nil!58499) (innerList!15702 (xs!18996 t!3643))))))

(assert (=> d!1647096 (= (size!39169 (innerList!15702 (xs!18996 t!3643))) lt!2092117)))

(declare-fun b!5088646 () Bool)

(assert (=> b!5088646 (= e!3173653 0)))

(declare-fun b!5088647 () Bool)

(assert (=> b!5088647 (= e!3173653 (+ 1 (size!39169 (t!371492 (innerList!15702 (xs!18996 t!3643))))))))

(assert (= (and d!1647096 c!874375) b!5088646))

(assert (= (and d!1647096 (not c!874375)) b!5088647))

(declare-fun m!6146534 () Bool)

(assert (=> b!5088647 m!6146534))

(assert (=> d!1647052 d!1647096))

(assert (=> b!5088509 d!1647054))

(assert (=> b!5088509 d!1647060))

(declare-fun b!5088648 () Bool)

(declare-fun e!3173654 () Bool)

(declare-fun tp!1418634 () Bool)

(assert (=> b!5088648 (= e!3173654 (and tp_is_empty!37111 tp!1418634))))

(assert (=> b!5088572 (= tp!1418615 e!3173654)))

(assert (= (and b!5088572 ((_ is Cons!58499) (t!371492 (innerList!15702 (xs!18996 t!3643))))) b!5088648))

(declare-fun tp!1418635 () Bool)

(declare-fun e!3173656 () Bool)

(declare-fun tp!1418636 () Bool)

(declare-fun b!5088649 () Bool)

(assert (=> b!5088649 (= e!3173656 (and (inv!77822 (left!42893 (left!42893 (right!43223 t!3643)))) tp!1418635 (inv!77822 (right!43223 (left!42893 (right!43223 t!3643)))) tp!1418636))))

(declare-fun b!5088651 () Bool)

(declare-fun e!3173655 () Bool)

(declare-fun tp!1418637 () Bool)

(assert (=> b!5088651 (= e!3173655 tp!1418637)))

(declare-fun b!5088650 () Bool)

(assert (=> b!5088650 (= e!3173656 (and (inv!77823 (xs!18996 (left!42893 (right!43223 t!3643)))) e!3173655))))

(assert (=> b!5088590 (= tp!1418631 (and (inv!77822 (left!42893 (right!43223 t!3643))) e!3173656))))

(assert (= (and b!5088590 ((_ is Node!15614) (left!42893 (right!43223 t!3643)))) b!5088649))

(assert (= b!5088650 b!5088651))

(assert (= (and b!5088590 ((_ is Leaf!25926) (left!42893 (right!43223 t!3643)))) b!5088650))

(declare-fun m!6146536 () Bool)

(assert (=> b!5088649 m!6146536))

(declare-fun m!6146540 () Bool)

(assert (=> b!5088649 m!6146540))

(declare-fun m!6146542 () Bool)

(assert (=> b!5088650 m!6146542))

(assert (=> b!5088590 m!6146460))

(declare-fun b!5088654 () Bool)

(declare-fun tp!1418639 () Bool)

(declare-fun e!3173659 () Bool)

(declare-fun tp!1418638 () Bool)

(assert (=> b!5088654 (= e!3173659 (and (inv!77822 (left!42893 (right!43223 (right!43223 t!3643)))) tp!1418638 (inv!77822 (right!43223 (right!43223 (right!43223 t!3643)))) tp!1418639))))

(declare-fun b!5088656 () Bool)

(declare-fun e!3173658 () Bool)

(declare-fun tp!1418640 () Bool)

(assert (=> b!5088656 (= e!3173658 tp!1418640)))

(declare-fun b!5088655 () Bool)

(assert (=> b!5088655 (= e!3173659 (and (inv!77823 (xs!18996 (right!43223 (right!43223 t!3643)))) e!3173658))))

(assert (=> b!5088590 (= tp!1418632 (and (inv!77822 (right!43223 (right!43223 t!3643))) e!3173659))))

(assert (= (and b!5088590 ((_ is Node!15614) (right!43223 (right!43223 t!3643)))) b!5088654))

(assert (= b!5088655 b!5088656))

(assert (= (and b!5088590 ((_ is Leaf!25926) (right!43223 (right!43223 t!3643)))) b!5088655))

(declare-fun m!6146546 () Bool)

(assert (=> b!5088654 m!6146546))

(declare-fun m!6146548 () Bool)

(assert (=> b!5088654 m!6146548))

(declare-fun m!6146550 () Bool)

(assert (=> b!5088655 m!6146550))

(assert (=> b!5088590 m!6146462))

(declare-fun b!5088659 () Bool)

(declare-fun e!3173661 () Bool)

(declare-fun tp!1418641 () Bool)

(assert (=> b!5088659 (= e!3173661 (and tp_is_empty!37111 tp!1418641))))

(assert (=> b!5088592 (= tp!1418633 e!3173661)))

(assert (= (and b!5088592 ((_ is Cons!58499) (innerList!15702 (xs!18996 (right!43223 t!3643))))) b!5088659))

(declare-fun e!3173663 () Bool)

(declare-fun tp!1418643 () Bool)

(declare-fun b!5088660 () Bool)

(declare-fun tp!1418642 () Bool)

(assert (=> b!5088660 (= e!3173663 (and (inv!77822 (left!42893 (left!42893 (left!42893 t!3643)))) tp!1418642 (inv!77822 (right!43223 (left!42893 (left!42893 t!3643)))) tp!1418643))))

(declare-fun b!5088662 () Bool)

(declare-fun e!3173662 () Bool)

(declare-fun tp!1418644 () Bool)

(assert (=> b!5088662 (= e!3173662 tp!1418644)))

(declare-fun b!5088661 () Bool)

(assert (=> b!5088661 (= e!3173663 (and (inv!77823 (xs!18996 (left!42893 (left!42893 t!3643)))) e!3173662))))

(assert (=> b!5088587 (= tp!1418628 (and (inv!77822 (left!42893 (left!42893 t!3643))) e!3173663))))

(assert (= (and b!5088587 ((_ is Node!15614) (left!42893 (left!42893 t!3643)))) b!5088660))

(assert (= b!5088661 b!5088662))

(assert (= (and b!5088587 ((_ is Leaf!25926) (left!42893 (left!42893 t!3643)))) b!5088661))

(declare-fun m!6146554 () Bool)

(assert (=> b!5088660 m!6146554))

(declare-fun m!6146556 () Bool)

(assert (=> b!5088660 m!6146556))

(declare-fun m!6146558 () Bool)

(assert (=> b!5088661 m!6146558))

(assert (=> b!5088587 m!6146454))

(declare-fun b!5088663 () Bool)

(declare-fun tp!1418645 () Bool)

(declare-fun tp!1418646 () Bool)

(declare-fun e!3173665 () Bool)

(assert (=> b!5088663 (= e!3173665 (and (inv!77822 (left!42893 (right!43223 (left!42893 t!3643)))) tp!1418645 (inv!77822 (right!43223 (right!43223 (left!42893 t!3643)))) tp!1418646))))

(declare-fun b!5088665 () Bool)

(declare-fun e!3173664 () Bool)

(declare-fun tp!1418647 () Bool)

(assert (=> b!5088665 (= e!3173664 tp!1418647)))

(declare-fun b!5088664 () Bool)

(assert (=> b!5088664 (= e!3173665 (and (inv!77823 (xs!18996 (right!43223 (left!42893 t!3643)))) e!3173664))))

(assert (=> b!5088587 (= tp!1418629 (and (inv!77822 (right!43223 (left!42893 t!3643))) e!3173665))))

(assert (= (and b!5088587 ((_ is Node!15614) (right!43223 (left!42893 t!3643)))) b!5088663))

(assert (= b!5088664 b!5088665))

(assert (= (and b!5088587 ((_ is Leaf!25926) (right!43223 (left!42893 t!3643)))) b!5088664))

(declare-fun m!6146560 () Bool)

(assert (=> b!5088663 m!6146560))

(declare-fun m!6146562 () Bool)

(assert (=> b!5088663 m!6146562))

(declare-fun m!6146564 () Bool)

(assert (=> b!5088664 m!6146564))

(assert (=> b!5088587 m!6146456))

(declare-fun b!5088666 () Bool)

(declare-fun e!3173666 () Bool)

(declare-fun tp!1418648 () Bool)

(assert (=> b!5088666 (= e!3173666 (and tp_is_empty!37111 tp!1418648))))

(assert (=> b!5088589 (= tp!1418630 e!3173666)))

(assert (= (and b!5088589 ((_ is Cons!58499) (innerList!15702 (xs!18996 (left!42893 t!3643))))) b!5088666))

(check-sat (not b!5088654) (not b!5088615) (not b!5088651) (not b!5088641) (not b!5088587) (not b!5088659) (not b!5088664) (not b!5088619) (not d!1647070) (not b!5088622) (not b!5088631) (not b!5088660) (not b!5088624) (not b!5088629) (not d!1647080) (not b!5088655) (not b!5088666) (not b!5088644) (not b!5088647) (not b!5088614) (not b!5088649) (not d!1647092) (not b!5088662) (not b!5088640) tp_is_empty!37111 (not b!5088617) (not b!5088600) (not b!5088638) (not b!5088621) (not b!5088636) (not d!1647078) (not d!1647064) (not b!5088656) (not b!5088603) (not d!1647094) (not b!5088648) (not b!5088634) (not b!5088665) (not b!5088650) (not b!5088590) (not b!5088661) (not b!5088663) (not d!1647072) (not b!5088643) (not d!1647084) (not d!1647090))
(check-sat)
