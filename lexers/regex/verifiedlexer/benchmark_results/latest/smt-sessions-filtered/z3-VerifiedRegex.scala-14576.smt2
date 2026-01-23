; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755560 () Bool)

(assert start!755560)

(declare-fun b!8025220 () Bool)

(declare-fun e!4727669 () Bool)

(declare-datatypes ((T!148334 0))(
  ( (T!148335 (val!32550 Int)) )
))
(declare-datatypes ((List!75062 0))(
  ( (Nil!74938) (Cons!74938 (h!81386 T!148334) (t!390811 List!75062)) )
))
(declare-datatypes ((IArray!31945 0))(
  ( (IArray!31946 (innerList!16030 List!75062)) )
))
(declare-datatypes ((Conc!15942 0))(
  ( (Node!15942 (left!57158 Conc!15942) (right!57488 Conc!15942) (csize!32114 Int) (cheight!16153 Int)) (Leaf!30519 (xs!19340 IArray!31945) (csize!32115 Int)) (Empty!15942) )
))
(declare-fun t!3624 () Conc!15942)

(declare-fun e!4727671 () Bool)

(declare-fun inv!96612 (IArray!31945) Bool)

(assert (=> b!8025220 (= e!4727669 (and (inv!96612 (xs!19340 t!3624)) e!4727671))))

(declare-fun b!8025221 () Bool)

(declare-fun tp!2401745 () Bool)

(assert (=> b!8025221 (= e!4727671 tp!2401745)))

(declare-fun res!3173592 () Bool)

(declare-fun e!4727670 () Bool)

(assert (=> start!755560 (=> (not res!3173592) (not e!4727670))))

(get-info :version)

(assert (=> start!755560 (= res!3173592 (and (not ((_ is Empty!15942) t!3624)) (not ((_ is Leaf!30519) t!3624))))))

(assert (=> start!755560 e!4727670))

(declare-fun inv!96613 (Conc!15942) Bool)

(assert (=> start!755560 (and (inv!96613 t!3624) e!4727669)))

(declare-fun b!8025218 () Bool)

(declare-fun size!43711 (List!75062) Int)

(declare-fun list!19482 (Conc!15942) List!75062)

(assert (=> b!8025218 (= e!4727670 (not (= (csize!32114 t!3624) (size!43711 (list!19482 t!3624)))))))

(declare-fun tp!2401746 () Bool)

(declare-fun tp!2401747 () Bool)

(declare-fun b!8025219 () Bool)

(assert (=> b!8025219 (= e!4727669 (and (inv!96613 (left!57158 t!3624)) tp!2401747 (inv!96613 (right!57488 t!3624)) tp!2401746))))

(assert (= (and start!755560 res!3173592) b!8025218))

(assert (= (and start!755560 ((_ is Node!15942) t!3624)) b!8025219))

(assert (= b!8025220 b!8025221))

(assert (= (and start!755560 ((_ is Leaf!30519) t!3624)) b!8025220))

(declare-fun m!8387538 () Bool)

(assert (=> b!8025220 m!8387538))

(declare-fun m!8387540 () Bool)

(assert (=> start!755560 m!8387540))

(declare-fun m!8387542 () Bool)

(assert (=> b!8025218 m!8387542))

(assert (=> b!8025218 m!8387542))

(declare-fun m!8387544 () Bool)

(assert (=> b!8025218 m!8387544))

(declare-fun m!8387546 () Bool)

(assert (=> b!8025219 m!8387546))

(declare-fun m!8387548 () Bool)

(assert (=> b!8025219 m!8387548))

(check-sat (not b!8025218) (not b!8025221) (not start!755560) (not b!8025219) (not b!8025220))
(check-sat)
(get-model)

(declare-fun d!2392959 () Bool)

(declare-fun lt!2720709 () Int)

(assert (=> d!2392959 (>= lt!2720709 0)))

(declare-fun e!4727674 () Int)

(assert (=> d!2392959 (= lt!2720709 e!4727674)))

(declare-fun c!1472550 () Bool)

(assert (=> d!2392959 (= c!1472550 ((_ is Nil!74938) (list!19482 t!3624)))))

(assert (=> d!2392959 (= (size!43711 (list!19482 t!3624)) lt!2720709)))

(declare-fun b!8025226 () Bool)

(assert (=> b!8025226 (= e!4727674 0)))

(declare-fun b!8025227 () Bool)

(assert (=> b!8025227 (= e!4727674 (+ 1 (size!43711 (t!390811 (list!19482 t!3624)))))))

(assert (= (and d!2392959 c!1472550) b!8025226))

(assert (= (and d!2392959 (not c!1472550)) b!8025227))

(declare-fun m!8387550 () Bool)

(assert (=> b!8025227 m!8387550))

(assert (=> b!8025218 d!2392959))

(declare-fun b!8025255 () Bool)

(declare-fun e!4727691 () List!75062)

(assert (=> b!8025255 (= e!4727691 Nil!74938)))

(declare-fun b!8025256 () Bool)

(declare-fun e!4727692 () List!75062)

(assert (=> b!8025256 (= e!4727691 e!4727692)))

(declare-fun c!1472563 () Bool)

(assert (=> b!8025256 (= c!1472563 ((_ is Leaf!30519) t!3624))))

(declare-fun d!2392963 () Bool)

(declare-fun c!1472562 () Bool)

(assert (=> d!2392963 (= c!1472562 ((_ is Empty!15942) t!3624))))

(assert (=> d!2392963 (= (list!19482 t!3624) e!4727691)))

(declare-fun b!8025258 () Bool)

(declare-fun ++!18579 (List!75062 List!75062) List!75062)

(assert (=> b!8025258 (= e!4727692 (++!18579 (list!19482 (left!57158 t!3624)) (list!19482 (right!57488 t!3624))))))

(declare-fun b!8025257 () Bool)

(declare-fun list!19483 (IArray!31945) List!75062)

(assert (=> b!8025257 (= e!4727692 (list!19483 (xs!19340 t!3624)))))

(assert (= (and d!2392963 c!1472562) b!8025255))

(assert (= (and d!2392963 (not c!1472562)) b!8025256))

(assert (= (and b!8025256 c!1472563) b!8025257))

(assert (= (and b!8025256 (not c!1472563)) b!8025258))

(declare-fun m!8387566 () Bool)

(assert (=> b!8025258 m!8387566))

(declare-fun m!8387568 () Bool)

(assert (=> b!8025258 m!8387568))

(assert (=> b!8025258 m!8387566))

(assert (=> b!8025258 m!8387568))

(declare-fun m!8387570 () Bool)

(assert (=> b!8025258 m!8387570))

(declare-fun m!8387572 () Bool)

(assert (=> b!8025257 m!8387572))

(assert (=> b!8025218 d!2392963))

(declare-fun d!2392973 () Bool)

(declare-fun c!1472571 () Bool)

(assert (=> d!2392973 (= c!1472571 ((_ is Node!15942) (left!57158 t!3624)))))

(declare-fun e!4727702 () Bool)

(assert (=> d!2392973 (= (inv!96613 (left!57158 t!3624)) e!4727702)))

(declare-fun b!8025275 () Bool)

(declare-fun inv!96616 (Conc!15942) Bool)

(assert (=> b!8025275 (= e!4727702 (inv!96616 (left!57158 t!3624)))))

(declare-fun b!8025276 () Bool)

(declare-fun e!4727703 () Bool)

(assert (=> b!8025276 (= e!4727702 e!4727703)))

(declare-fun res!3173600 () Bool)

(assert (=> b!8025276 (= res!3173600 (not ((_ is Leaf!30519) (left!57158 t!3624))))))

(assert (=> b!8025276 (=> res!3173600 e!4727703)))

(declare-fun b!8025277 () Bool)

(declare-fun inv!96617 (Conc!15942) Bool)

(assert (=> b!8025277 (= e!4727703 (inv!96617 (left!57158 t!3624)))))

(assert (= (and d!2392973 c!1472571) b!8025275))

(assert (= (and d!2392973 (not c!1472571)) b!8025276))

(assert (= (and b!8025276 (not res!3173600)) b!8025277))

(declare-fun m!8387576 () Bool)

(assert (=> b!8025275 m!8387576))

(declare-fun m!8387578 () Bool)

(assert (=> b!8025277 m!8387578))

(assert (=> b!8025219 d!2392973))

(declare-fun d!2392977 () Bool)

(declare-fun c!1472572 () Bool)

(assert (=> d!2392977 (= c!1472572 ((_ is Node!15942) (right!57488 t!3624)))))

(declare-fun e!4727704 () Bool)

(assert (=> d!2392977 (= (inv!96613 (right!57488 t!3624)) e!4727704)))

(declare-fun b!8025278 () Bool)

(assert (=> b!8025278 (= e!4727704 (inv!96616 (right!57488 t!3624)))))

(declare-fun b!8025279 () Bool)

(declare-fun e!4727705 () Bool)

(assert (=> b!8025279 (= e!4727704 e!4727705)))

(declare-fun res!3173601 () Bool)

(assert (=> b!8025279 (= res!3173601 (not ((_ is Leaf!30519) (right!57488 t!3624))))))

(assert (=> b!8025279 (=> res!3173601 e!4727705)))

(declare-fun b!8025280 () Bool)

(assert (=> b!8025280 (= e!4727705 (inv!96617 (right!57488 t!3624)))))

(assert (= (and d!2392977 c!1472572) b!8025278))

(assert (= (and d!2392977 (not c!1472572)) b!8025279))

(assert (= (and b!8025279 (not res!3173601)) b!8025280))

(declare-fun m!8387580 () Bool)

(assert (=> b!8025278 m!8387580))

(declare-fun m!8387582 () Bool)

(assert (=> b!8025280 m!8387582))

(assert (=> b!8025219 d!2392977))

(declare-fun d!2392979 () Bool)

(assert (=> d!2392979 (= (inv!96612 (xs!19340 t!3624)) (<= (size!43711 (innerList!16030 (xs!19340 t!3624))) 2147483647))))

(declare-fun bs!1971264 () Bool)

(assert (= bs!1971264 d!2392979))

(declare-fun m!8387584 () Bool)

(assert (=> bs!1971264 m!8387584))

(assert (=> b!8025220 d!2392979))

(declare-fun d!2392981 () Bool)

(declare-fun c!1472575 () Bool)

(assert (=> d!2392981 (= c!1472575 ((_ is Node!15942) t!3624))))

(declare-fun e!4727708 () Bool)

(assert (=> d!2392981 (= (inv!96613 t!3624) e!4727708)))

(declare-fun b!8025285 () Bool)

(assert (=> b!8025285 (= e!4727708 (inv!96616 t!3624))))

(declare-fun b!8025286 () Bool)

(declare-fun e!4727709 () Bool)

(assert (=> b!8025286 (= e!4727708 e!4727709)))

(declare-fun res!3173602 () Bool)

(assert (=> b!8025286 (= res!3173602 (not ((_ is Leaf!30519) t!3624)))))

(assert (=> b!8025286 (=> res!3173602 e!4727709)))

(declare-fun b!8025287 () Bool)

(assert (=> b!8025287 (= e!4727709 (inv!96617 t!3624))))

(assert (= (and d!2392981 c!1472575) b!8025285))

(assert (= (and d!2392981 (not c!1472575)) b!8025286))

(assert (= (and b!8025286 (not res!3173602)) b!8025287))

(declare-fun m!8387594 () Bool)

(assert (=> b!8025285 m!8387594))

(declare-fun m!8387596 () Bool)

(assert (=> b!8025287 m!8387596))

(assert (=> start!755560 d!2392981))

(declare-fun b!8025300 () Bool)

(declare-fun e!4727716 () Bool)

(declare-fun tp_is_empty!54203 () Bool)

(declare-fun tp!2401756 () Bool)

(assert (=> b!8025300 (= e!4727716 (and tp_is_empty!54203 tp!2401756))))

(assert (=> b!8025221 (= tp!2401745 e!4727716)))

(assert (= (and b!8025221 ((_ is Cons!74938) (innerList!16030 (xs!19340 t!3624)))) b!8025300))

(declare-fun tp!2401769 () Bool)

(declare-fun b!8025315 () Bool)

(declare-fun tp!2401771 () Bool)

(declare-fun e!4727726 () Bool)

(assert (=> b!8025315 (= e!4727726 (and (inv!96613 (left!57158 (left!57158 t!3624))) tp!2401771 (inv!96613 (right!57488 (left!57158 t!3624))) tp!2401769))))

(declare-fun b!8025317 () Bool)

(declare-fun e!4727725 () Bool)

(declare-fun tp!2401770 () Bool)

(assert (=> b!8025317 (= e!4727725 tp!2401770)))

(declare-fun b!8025316 () Bool)

(assert (=> b!8025316 (= e!4727726 (and (inv!96612 (xs!19340 (left!57158 t!3624))) e!4727725))))

(assert (=> b!8025219 (= tp!2401747 (and (inv!96613 (left!57158 t!3624)) e!4727726))))

(assert (= (and b!8025219 ((_ is Node!15942) (left!57158 t!3624))) b!8025315))

(assert (= b!8025316 b!8025317))

(assert (= (and b!8025219 ((_ is Leaf!30519) (left!57158 t!3624))) b!8025316))

(declare-fun m!8387610 () Bool)

(assert (=> b!8025315 m!8387610))

(declare-fun m!8387612 () Bool)

(assert (=> b!8025315 m!8387612))

(declare-fun m!8387614 () Bool)

(assert (=> b!8025316 m!8387614))

(assert (=> b!8025219 m!8387546))

(declare-fun tp!2401776 () Bool)

(declare-fun b!8025322 () Bool)

(declare-fun e!4727730 () Bool)

(declare-fun tp!2401774 () Bool)

(assert (=> b!8025322 (= e!4727730 (and (inv!96613 (left!57158 (right!57488 t!3624))) tp!2401776 (inv!96613 (right!57488 (right!57488 t!3624))) tp!2401774))))

(declare-fun b!8025324 () Bool)

(declare-fun e!4727729 () Bool)

(declare-fun tp!2401775 () Bool)

(assert (=> b!8025324 (= e!4727729 tp!2401775)))

(declare-fun b!8025323 () Bool)

(assert (=> b!8025323 (= e!4727730 (and (inv!96612 (xs!19340 (right!57488 t!3624))) e!4727729))))

(assert (=> b!8025219 (= tp!2401746 (and (inv!96613 (right!57488 t!3624)) e!4727730))))

(assert (= (and b!8025219 ((_ is Node!15942) (right!57488 t!3624))) b!8025322))

(assert (= b!8025323 b!8025324))

(assert (= (and b!8025219 ((_ is Leaf!30519) (right!57488 t!3624))) b!8025323))

(declare-fun m!8387616 () Bool)

(assert (=> b!8025322 m!8387616))

(declare-fun m!8387618 () Bool)

(assert (=> b!8025322 m!8387618))

(declare-fun m!8387620 () Bool)

(assert (=> b!8025323 m!8387620))

(assert (=> b!8025219 m!8387548))

(check-sat (not b!8025322) (not b!8025300) (not d!2392979) tp_is_empty!54203 (not b!8025258) (not b!8025287) (not b!8025219) (not b!8025323) (not b!8025227) (not b!8025277) (not b!8025315) (not b!8025285) (not b!8025324) (not b!8025275) (not b!8025280) (not b!8025316) (not b!8025317) (not b!8025257) (not b!8025278))
(check-sat)
(get-model)

(declare-fun d!2392983 () Bool)

(assert (=> d!2392983 (= (list!19483 (xs!19340 t!3624)) (innerList!16030 (xs!19340 t!3624)))))

(assert (=> b!8025257 d!2392983))

(declare-fun d!2392985 () Bool)

(declare-fun lt!2720713 () Int)

(assert (=> d!2392985 (>= lt!2720713 0)))

(declare-fun e!4727732 () Int)

(assert (=> d!2392985 (= lt!2720713 e!4727732)))

(declare-fun c!1472576 () Bool)

(assert (=> d!2392985 (= c!1472576 ((_ is Nil!74938) (t!390811 (list!19482 t!3624))))))

(assert (=> d!2392985 (= (size!43711 (t!390811 (list!19482 t!3624))) lt!2720713)))

(declare-fun b!8025326 () Bool)

(assert (=> b!8025326 (= e!4727732 0)))

(declare-fun b!8025327 () Bool)

(assert (=> b!8025327 (= e!4727732 (+ 1 (size!43711 (t!390811 (t!390811 (list!19482 t!3624))))))))

(assert (= (and d!2392985 c!1472576) b!8025326))

(assert (= (and d!2392985 (not c!1472576)) b!8025327))

(declare-fun m!8387622 () Bool)

(assert (=> b!8025327 m!8387622))

(assert (=> b!8025227 d!2392985))

(declare-fun d!2392987 () Bool)

(declare-fun res!3173609 () Bool)

(declare-fun e!4727735 () Bool)

(assert (=> d!2392987 (=> (not res!3173609) (not e!4727735))))

(declare-fun size!43712 (Conc!15942) Int)

(assert (=> d!2392987 (= res!3173609 (= (csize!32114 (right!57488 t!3624)) (+ (size!43712 (left!57158 (right!57488 t!3624))) (size!43712 (right!57488 (right!57488 t!3624))))))))

(assert (=> d!2392987 (= (inv!96616 (right!57488 t!3624)) e!4727735)))

(declare-fun b!8025334 () Bool)

(declare-fun res!3173610 () Bool)

(assert (=> b!8025334 (=> (not res!3173610) (not e!4727735))))

(assert (=> b!8025334 (= res!3173610 (and (not (= (left!57158 (right!57488 t!3624)) Empty!15942)) (not (= (right!57488 (right!57488 t!3624)) Empty!15942))))))

(declare-fun b!8025335 () Bool)

(declare-fun res!3173611 () Bool)

(assert (=> b!8025335 (=> (not res!3173611) (not e!4727735))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2244 (Conc!15942) Int)

(assert (=> b!8025335 (= res!3173611 (= (cheight!16153 (right!57488 t!3624)) (+ (max!0 (height!2244 (left!57158 (right!57488 t!3624))) (height!2244 (right!57488 (right!57488 t!3624)))) 1)))))

(declare-fun b!8025336 () Bool)

(assert (=> b!8025336 (= e!4727735 (<= 0 (cheight!16153 (right!57488 t!3624))))))

(assert (= (and d!2392987 res!3173609) b!8025334))

(assert (= (and b!8025334 res!3173610) b!8025335))

(assert (= (and b!8025335 res!3173611) b!8025336))

(declare-fun m!8387624 () Bool)

(assert (=> d!2392987 m!8387624))

(declare-fun m!8387626 () Bool)

(assert (=> d!2392987 m!8387626))

(declare-fun m!8387628 () Bool)

(assert (=> b!8025335 m!8387628))

(declare-fun m!8387630 () Bool)

(assert (=> b!8025335 m!8387630))

(assert (=> b!8025335 m!8387628))

(assert (=> b!8025335 m!8387630))

(declare-fun m!8387632 () Bool)

(assert (=> b!8025335 m!8387632))

(assert (=> b!8025278 d!2392987))

(declare-fun d!2392989 () Bool)

(declare-fun res!3173616 () Bool)

(declare-fun e!4727738 () Bool)

(assert (=> d!2392989 (=> (not res!3173616) (not e!4727738))))

(assert (=> d!2392989 (= res!3173616 (<= (size!43711 (list!19483 (xs!19340 (right!57488 t!3624)))) 512))))

(assert (=> d!2392989 (= (inv!96617 (right!57488 t!3624)) e!4727738)))

(declare-fun b!8025341 () Bool)

(declare-fun res!3173617 () Bool)

(assert (=> b!8025341 (=> (not res!3173617) (not e!4727738))))

(assert (=> b!8025341 (= res!3173617 (= (csize!32115 (right!57488 t!3624)) (size!43711 (list!19483 (xs!19340 (right!57488 t!3624))))))))

(declare-fun b!8025342 () Bool)

(assert (=> b!8025342 (= e!4727738 (and (> (csize!32115 (right!57488 t!3624)) 0) (<= (csize!32115 (right!57488 t!3624)) 512)))))

(assert (= (and d!2392989 res!3173616) b!8025341))

(assert (= (and b!8025341 res!3173617) b!8025342))

(declare-fun m!8387634 () Bool)

(assert (=> d!2392989 m!8387634))

(assert (=> d!2392989 m!8387634))

(declare-fun m!8387636 () Bool)

(assert (=> d!2392989 m!8387636))

(assert (=> b!8025341 m!8387634))

(assert (=> b!8025341 m!8387634))

(assert (=> b!8025341 m!8387636))

(assert (=> b!8025280 d!2392989))

(declare-fun b!8025352 () Bool)

(declare-fun e!4727744 () List!75062)

(assert (=> b!8025352 (= e!4727744 (Cons!74938 (h!81386 (list!19482 (left!57158 t!3624))) (++!18579 (t!390811 (list!19482 (left!57158 t!3624))) (list!19482 (right!57488 t!3624)))))))

(declare-fun b!8025354 () Bool)

(declare-fun e!4727743 () Bool)

(declare-fun lt!2720716 () List!75062)

(assert (=> b!8025354 (= e!4727743 (or (not (= (list!19482 (right!57488 t!3624)) Nil!74938)) (= lt!2720716 (list!19482 (left!57158 t!3624)))))))

(declare-fun b!8025353 () Bool)

(declare-fun res!3173622 () Bool)

(assert (=> b!8025353 (=> (not res!3173622) (not e!4727743))))

(assert (=> b!8025353 (= res!3173622 (= (size!43711 lt!2720716) (+ (size!43711 (list!19482 (left!57158 t!3624))) (size!43711 (list!19482 (right!57488 t!3624))))))))

(declare-fun d!2392991 () Bool)

(assert (=> d!2392991 e!4727743))

(declare-fun res!3173623 () Bool)

(assert (=> d!2392991 (=> (not res!3173623) (not e!4727743))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15962 (List!75062) (InoxSet T!148334))

(assert (=> d!2392991 (= res!3173623 (= (content!15962 lt!2720716) ((_ map or) (content!15962 (list!19482 (left!57158 t!3624))) (content!15962 (list!19482 (right!57488 t!3624))))))))

(assert (=> d!2392991 (= lt!2720716 e!4727744)))

(declare-fun c!1472579 () Bool)

(assert (=> d!2392991 (= c!1472579 ((_ is Nil!74938) (list!19482 (left!57158 t!3624))))))

(assert (=> d!2392991 (= (++!18579 (list!19482 (left!57158 t!3624)) (list!19482 (right!57488 t!3624))) lt!2720716)))

(declare-fun b!8025351 () Bool)

(assert (=> b!8025351 (= e!4727744 (list!19482 (right!57488 t!3624)))))

(assert (= (and d!2392991 c!1472579) b!8025351))

(assert (= (and d!2392991 (not c!1472579)) b!8025352))

(assert (= (and d!2392991 res!3173623) b!8025353))

(assert (= (and b!8025353 res!3173622) b!8025354))

(assert (=> b!8025352 m!8387568))

(declare-fun m!8387638 () Bool)

(assert (=> b!8025352 m!8387638))

(declare-fun m!8387640 () Bool)

(assert (=> b!8025353 m!8387640))

(assert (=> b!8025353 m!8387566))

(declare-fun m!8387642 () Bool)

(assert (=> b!8025353 m!8387642))

(assert (=> b!8025353 m!8387568))

(declare-fun m!8387644 () Bool)

(assert (=> b!8025353 m!8387644))

(declare-fun m!8387646 () Bool)

(assert (=> d!2392991 m!8387646))

(assert (=> d!2392991 m!8387566))

(declare-fun m!8387648 () Bool)

(assert (=> d!2392991 m!8387648))

(assert (=> d!2392991 m!8387568))

(declare-fun m!8387650 () Bool)

(assert (=> d!2392991 m!8387650))

(assert (=> b!8025258 d!2392991))

(declare-fun b!8025355 () Bool)

(declare-fun e!4727745 () List!75062)

(assert (=> b!8025355 (= e!4727745 Nil!74938)))

(declare-fun b!8025356 () Bool)

(declare-fun e!4727746 () List!75062)

(assert (=> b!8025356 (= e!4727745 e!4727746)))

(declare-fun c!1472581 () Bool)

(assert (=> b!8025356 (= c!1472581 ((_ is Leaf!30519) (left!57158 t!3624)))))

(declare-fun d!2392993 () Bool)

(declare-fun c!1472580 () Bool)

(assert (=> d!2392993 (= c!1472580 ((_ is Empty!15942) (left!57158 t!3624)))))

(assert (=> d!2392993 (= (list!19482 (left!57158 t!3624)) e!4727745)))

(declare-fun b!8025358 () Bool)

(assert (=> b!8025358 (= e!4727746 (++!18579 (list!19482 (left!57158 (left!57158 t!3624))) (list!19482 (right!57488 (left!57158 t!3624)))))))

(declare-fun b!8025357 () Bool)

(assert (=> b!8025357 (= e!4727746 (list!19483 (xs!19340 (left!57158 t!3624))))))

(assert (= (and d!2392993 c!1472580) b!8025355))

(assert (= (and d!2392993 (not c!1472580)) b!8025356))

(assert (= (and b!8025356 c!1472581) b!8025357))

(assert (= (and b!8025356 (not c!1472581)) b!8025358))

(declare-fun m!8387652 () Bool)

(assert (=> b!8025358 m!8387652))

(declare-fun m!8387654 () Bool)

(assert (=> b!8025358 m!8387654))

(assert (=> b!8025358 m!8387652))

(assert (=> b!8025358 m!8387654))

(declare-fun m!8387656 () Bool)

(assert (=> b!8025358 m!8387656))

(declare-fun m!8387658 () Bool)

(assert (=> b!8025357 m!8387658))

(assert (=> b!8025258 d!2392993))

(declare-fun b!8025359 () Bool)

(declare-fun e!4727747 () List!75062)

(assert (=> b!8025359 (= e!4727747 Nil!74938)))

(declare-fun b!8025360 () Bool)

(declare-fun e!4727748 () List!75062)

(assert (=> b!8025360 (= e!4727747 e!4727748)))

(declare-fun c!1472583 () Bool)

(assert (=> b!8025360 (= c!1472583 ((_ is Leaf!30519) (right!57488 t!3624)))))

(declare-fun d!2392995 () Bool)

(declare-fun c!1472582 () Bool)

(assert (=> d!2392995 (= c!1472582 ((_ is Empty!15942) (right!57488 t!3624)))))

(assert (=> d!2392995 (= (list!19482 (right!57488 t!3624)) e!4727747)))

(declare-fun b!8025362 () Bool)

(assert (=> b!8025362 (= e!4727748 (++!18579 (list!19482 (left!57158 (right!57488 t!3624))) (list!19482 (right!57488 (right!57488 t!3624)))))))

(declare-fun b!8025361 () Bool)

(assert (=> b!8025361 (= e!4727748 (list!19483 (xs!19340 (right!57488 t!3624))))))

(assert (= (and d!2392995 c!1472582) b!8025359))

(assert (= (and d!2392995 (not c!1472582)) b!8025360))

(assert (= (and b!8025360 c!1472583) b!8025361))

(assert (= (and b!8025360 (not c!1472583)) b!8025362))

(declare-fun m!8387660 () Bool)

(assert (=> b!8025362 m!8387660))

(declare-fun m!8387662 () Bool)

(assert (=> b!8025362 m!8387662))

(assert (=> b!8025362 m!8387660))

(assert (=> b!8025362 m!8387662))

(declare-fun m!8387664 () Bool)

(assert (=> b!8025362 m!8387664))

(assert (=> b!8025361 m!8387634))

(assert (=> b!8025258 d!2392995))

(assert (=> b!8025219 d!2392973))

(assert (=> b!8025219 d!2392977))

(declare-fun d!2392997 () Bool)

(assert (=> d!2392997 (= (inv!96612 (xs!19340 (left!57158 t!3624))) (<= (size!43711 (innerList!16030 (xs!19340 (left!57158 t!3624)))) 2147483647))))

(declare-fun bs!1971265 () Bool)

(assert (= bs!1971265 d!2392997))

(declare-fun m!8387666 () Bool)

(assert (=> bs!1971265 m!8387666))

(assert (=> b!8025316 d!2392997))

(declare-fun d!2392999 () Bool)

(declare-fun c!1472584 () Bool)

(assert (=> d!2392999 (= c!1472584 ((_ is Node!15942) (left!57158 (left!57158 t!3624))))))

(declare-fun e!4727749 () Bool)

(assert (=> d!2392999 (= (inv!96613 (left!57158 (left!57158 t!3624))) e!4727749)))

(declare-fun b!8025363 () Bool)

(assert (=> b!8025363 (= e!4727749 (inv!96616 (left!57158 (left!57158 t!3624))))))

(declare-fun b!8025364 () Bool)

(declare-fun e!4727750 () Bool)

(assert (=> b!8025364 (= e!4727749 e!4727750)))

(declare-fun res!3173624 () Bool)

(assert (=> b!8025364 (= res!3173624 (not ((_ is Leaf!30519) (left!57158 (left!57158 t!3624)))))))

(assert (=> b!8025364 (=> res!3173624 e!4727750)))

(declare-fun b!8025365 () Bool)

(assert (=> b!8025365 (= e!4727750 (inv!96617 (left!57158 (left!57158 t!3624))))))

(assert (= (and d!2392999 c!1472584) b!8025363))

(assert (= (and d!2392999 (not c!1472584)) b!8025364))

(assert (= (and b!8025364 (not res!3173624)) b!8025365))

(declare-fun m!8387668 () Bool)

(assert (=> b!8025363 m!8387668))

(declare-fun m!8387670 () Bool)

(assert (=> b!8025365 m!8387670))

(assert (=> b!8025315 d!2392999))

(declare-fun d!2393001 () Bool)

(declare-fun c!1472585 () Bool)

(assert (=> d!2393001 (= c!1472585 ((_ is Node!15942) (right!57488 (left!57158 t!3624))))))

(declare-fun e!4727751 () Bool)

(assert (=> d!2393001 (= (inv!96613 (right!57488 (left!57158 t!3624))) e!4727751)))

(declare-fun b!8025366 () Bool)

(assert (=> b!8025366 (= e!4727751 (inv!96616 (right!57488 (left!57158 t!3624))))))

(declare-fun b!8025367 () Bool)

(declare-fun e!4727752 () Bool)

(assert (=> b!8025367 (= e!4727751 e!4727752)))

(declare-fun res!3173625 () Bool)

(assert (=> b!8025367 (= res!3173625 (not ((_ is Leaf!30519) (right!57488 (left!57158 t!3624)))))))

(assert (=> b!8025367 (=> res!3173625 e!4727752)))

(declare-fun b!8025368 () Bool)

(assert (=> b!8025368 (= e!4727752 (inv!96617 (right!57488 (left!57158 t!3624))))))

(assert (= (and d!2393001 c!1472585) b!8025366))

(assert (= (and d!2393001 (not c!1472585)) b!8025367))

(assert (= (and b!8025367 (not res!3173625)) b!8025368))

(declare-fun m!8387672 () Bool)

(assert (=> b!8025366 m!8387672))

(declare-fun m!8387674 () Bool)

(assert (=> b!8025368 m!8387674))

(assert (=> b!8025315 d!2393001))

(declare-fun d!2393003 () Bool)

(declare-fun c!1472586 () Bool)

(assert (=> d!2393003 (= c!1472586 ((_ is Node!15942) (left!57158 (right!57488 t!3624))))))

(declare-fun e!4727753 () Bool)

(assert (=> d!2393003 (= (inv!96613 (left!57158 (right!57488 t!3624))) e!4727753)))

(declare-fun b!8025369 () Bool)

(assert (=> b!8025369 (= e!4727753 (inv!96616 (left!57158 (right!57488 t!3624))))))

(declare-fun b!8025370 () Bool)

(declare-fun e!4727754 () Bool)

(assert (=> b!8025370 (= e!4727753 e!4727754)))

(declare-fun res!3173626 () Bool)

(assert (=> b!8025370 (= res!3173626 (not ((_ is Leaf!30519) (left!57158 (right!57488 t!3624)))))))

(assert (=> b!8025370 (=> res!3173626 e!4727754)))

(declare-fun b!8025371 () Bool)

(assert (=> b!8025371 (= e!4727754 (inv!96617 (left!57158 (right!57488 t!3624))))))

(assert (= (and d!2393003 c!1472586) b!8025369))

(assert (= (and d!2393003 (not c!1472586)) b!8025370))

(assert (= (and b!8025370 (not res!3173626)) b!8025371))

(declare-fun m!8387676 () Bool)

(assert (=> b!8025369 m!8387676))

(declare-fun m!8387678 () Bool)

(assert (=> b!8025371 m!8387678))

(assert (=> b!8025322 d!2393003))

(declare-fun d!2393007 () Bool)

(declare-fun c!1472587 () Bool)

(assert (=> d!2393007 (= c!1472587 ((_ is Node!15942) (right!57488 (right!57488 t!3624))))))

(declare-fun e!4727755 () Bool)

(assert (=> d!2393007 (= (inv!96613 (right!57488 (right!57488 t!3624))) e!4727755)))

(declare-fun b!8025372 () Bool)

(assert (=> b!8025372 (= e!4727755 (inv!96616 (right!57488 (right!57488 t!3624))))))

(declare-fun b!8025373 () Bool)

(declare-fun e!4727756 () Bool)

(assert (=> b!8025373 (= e!4727755 e!4727756)))

(declare-fun res!3173627 () Bool)

(assert (=> b!8025373 (= res!3173627 (not ((_ is Leaf!30519) (right!57488 (right!57488 t!3624)))))))

(assert (=> b!8025373 (=> res!3173627 e!4727756)))

(declare-fun b!8025374 () Bool)

(assert (=> b!8025374 (= e!4727756 (inv!96617 (right!57488 (right!57488 t!3624))))))

(assert (= (and d!2393007 c!1472587) b!8025372))

(assert (= (and d!2393007 (not c!1472587)) b!8025373))

(assert (= (and b!8025373 (not res!3173627)) b!8025374))

(declare-fun m!8387680 () Bool)

(assert (=> b!8025372 m!8387680))

(declare-fun m!8387682 () Bool)

(assert (=> b!8025374 m!8387682))

(assert (=> b!8025322 d!2393007))

(declare-fun d!2393009 () Bool)

(declare-fun res!3173629 () Bool)

(declare-fun e!4727759 () Bool)

(assert (=> d!2393009 (=> (not res!3173629) (not e!4727759))))

(assert (=> d!2393009 (= res!3173629 (= (csize!32114 t!3624) (+ (size!43712 (left!57158 t!3624)) (size!43712 (right!57488 t!3624)))))))

(assert (=> d!2393009 (= (inv!96616 t!3624) e!4727759)))

(declare-fun b!8025378 () Bool)

(declare-fun res!3173630 () Bool)

(assert (=> b!8025378 (=> (not res!3173630) (not e!4727759))))

(assert (=> b!8025378 (= res!3173630 (and (not (= (left!57158 t!3624) Empty!15942)) (not (= (right!57488 t!3624) Empty!15942))))))

(declare-fun b!8025379 () Bool)

(declare-fun res!3173631 () Bool)

(assert (=> b!8025379 (=> (not res!3173631) (not e!4727759))))

(assert (=> b!8025379 (= res!3173631 (= (cheight!16153 t!3624) (+ (max!0 (height!2244 (left!57158 t!3624)) (height!2244 (right!57488 t!3624))) 1)))))

(declare-fun b!8025380 () Bool)

(assert (=> b!8025380 (= e!4727759 (<= 0 (cheight!16153 t!3624)))))

(assert (= (and d!2393009 res!3173629) b!8025378))

(assert (= (and b!8025378 res!3173630) b!8025379))

(assert (= (and b!8025379 res!3173631) b!8025380))

(declare-fun m!8387688 () Bool)

(assert (=> d!2393009 m!8387688))

(declare-fun m!8387690 () Bool)

(assert (=> d!2393009 m!8387690))

(declare-fun m!8387692 () Bool)

(assert (=> b!8025379 m!8387692))

(declare-fun m!8387694 () Bool)

(assert (=> b!8025379 m!8387694))

(assert (=> b!8025379 m!8387692))

(assert (=> b!8025379 m!8387694))

(declare-fun m!8387700 () Bool)

(assert (=> b!8025379 m!8387700))

(assert (=> b!8025285 d!2393009))

(declare-fun d!2393015 () Bool)

(assert (=> d!2393015 (= (inv!96612 (xs!19340 (right!57488 t!3624))) (<= (size!43711 (innerList!16030 (xs!19340 (right!57488 t!3624)))) 2147483647))))

(declare-fun bs!1971266 () Bool)

(assert (= bs!1971266 d!2393015))

(declare-fun m!8387702 () Bool)

(assert (=> bs!1971266 m!8387702))

(assert (=> b!8025323 d!2393015))

(declare-fun d!2393017 () Bool)

(declare-fun res!3173633 () Bool)

(declare-fun e!4727762 () Bool)

(assert (=> d!2393017 (=> (not res!3173633) (not e!4727762))))

(assert (=> d!2393017 (= res!3173633 (= (csize!32114 (left!57158 t!3624)) (+ (size!43712 (left!57158 (left!57158 t!3624))) (size!43712 (right!57488 (left!57158 t!3624))))))))

(assert (=> d!2393017 (= (inv!96616 (left!57158 t!3624)) e!4727762)))

(declare-fun b!8025384 () Bool)

(declare-fun res!3173634 () Bool)

(assert (=> b!8025384 (=> (not res!3173634) (not e!4727762))))

(assert (=> b!8025384 (= res!3173634 (and (not (= (left!57158 (left!57158 t!3624)) Empty!15942)) (not (= (right!57488 (left!57158 t!3624)) Empty!15942))))))

(declare-fun b!8025385 () Bool)

(declare-fun res!3173635 () Bool)

(assert (=> b!8025385 (=> (not res!3173635) (not e!4727762))))

(assert (=> b!8025385 (= res!3173635 (= (cheight!16153 (left!57158 t!3624)) (+ (max!0 (height!2244 (left!57158 (left!57158 t!3624))) (height!2244 (right!57488 (left!57158 t!3624)))) 1)))))

(declare-fun b!8025386 () Bool)

(assert (=> b!8025386 (= e!4727762 (<= 0 (cheight!16153 (left!57158 t!3624))))))

(assert (= (and d!2393017 res!3173633) b!8025384))

(assert (= (and b!8025384 res!3173634) b!8025385))

(assert (= (and b!8025385 res!3173635) b!8025386))

(declare-fun m!8387704 () Bool)

(assert (=> d!2393017 m!8387704))

(declare-fun m!8387706 () Bool)

(assert (=> d!2393017 m!8387706))

(declare-fun m!8387708 () Bool)

(assert (=> b!8025385 m!8387708))

(declare-fun m!8387710 () Bool)

(assert (=> b!8025385 m!8387710))

(assert (=> b!8025385 m!8387708))

(assert (=> b!8025385 m!8387710))

(declare-fun m!8387712 () Bool)

(assert (=> b!8025385 m!8387712))

(assert (=> b!8025275 d!2393017))

(declare-fun d!2393019 () Bool)

(declare-fun lt!2720717 () Int)

(assert (=> d!2393019 (>= lt!2720717 0)))

(declare-fun e!4727763 () Int)

(assert (=> d!2393019 (= lt!2720717 e!4727763)))

(declare-fun c!1472590 () Bool)

(assert (=> d!2393019 (= c!1472590 ((_ is Nil!74938) (innerList!16030 (xs!19340 t!3624))))))

(assert (=> d!2393019 (= (size!43711 (innerList!16030 (xs!19340 t!3624))) lt!2720717)))

(declare-fun b!8025387 () Bool)

(assert (=> b!8025387 (= e!4727763 0)))

(declare-fun b!8025388 () Bool)

(assert (=> b!8025388 (= e!4727763 (+ 1 (size!43711 (t!390811 (innerList!16030 (xs!19340 t!3624))))))))

(assert (= (and d!2393019 c!1472590) b!8025387))

(assert (= (and d!2393019 (not c!1472590)) b!8025388))

(declare-fun m!8387714 () Bool)

(assert (=> b!8025388 m!8387714))

(assert (=> d!2392979 d!2393019))

(declare-fun d!2393021 () Bool)

(declare-fun res!3173636 () Bool)

(declare-fun e!4727764 () Bool)

(assert (=> d!2393021 (=> (not res!3173636) (not e!4727764))))

(assert (=> d!2393021 (= res!3173636 (<= (size!43711 (list!19483 (xs!19340 (left!57158 t!3624)))) 512))))

(assert (=> d!2393021 (= (inv!96617 (left!57158 t!3624)) e!4727764)))

(declare-fun b!8025389 () Bool)

(declare-fun res!3173637 () Bool)

(assert (=> b!8025389 (=> (not res!3173637) (not e!4727764))))

(assert (=> b!8025389 (= res!3173637 (= (csize!32115 (left!57158 t!3624)) (size!43711 (list!19483 (xs!19340 (left!57158 t!3624))))))))

(declare-fun b!8025390 () Bool)

(assert (=> b!8025390 (= e!4727764 (and (> (csize!32115 (left!57158 t!3624)) 0) (<= (csize!32115 (left!57158 t!3624)) 512)))))

(assert (= (and d!2393021 res!3173636) b!8025389))

(assert (= (and b!8025389 res!3173637) b!8025390))

(assert (=> d!2393021 m!8387658))

(assert (=> d!2393021 m!8387658))

(declare-fun m!8387716 () Bool)

(assert (=> d!2393021 m!8387716))

(assert (=> b!8025389 m!8387658))

(assert (=> b!8025389 m!8387658))

(assert (=> b!8025389 m!8387716))

(assert (=> b!8025277 d!2393021))

(declare-fun d!2393023 () Bool)

(declare-fun res!3173638 () Bool)

(declare-fun e!4727765 () Bool)

(assert (=> d!2393023 (=> (not res!3173638) (not e!4727765))))

(assert (=> d!2393023 (= res!3173638 (<= (size!43711 (list!19483 (xs!19340 t!3624))) 512))))

(assert (=> d!2393023 (= (inv!96617 t!3624) e!4727765)))

(declare-fun b!8025391 () Bool)

(declare-fun res!3173639 () Bool)

(assert (=> b!8025391 (=> (not res!3173639) (not e!4727765))))

(assert (=> b!8025391 (= res!3173639 (= (csize!32115 t!3624) (size!43711 (list!19483 (xs!19340 t!3624)))))))

(declare-fun b!8025392 () Bool)

(assert (=> b!8025392 (= e!4727765 (and (> (csize!32115 t!3624) 0) (<= (csize!32115 t!3624) 512)))))

(assert (= (and d!2393023 res!3173638) b!8025391))

(assert (= (and b!8025391 res!3173639) b!8025392))

(assert (=> d!2393023 m!8387572))

(assert (=> d!2393023 m!8387572))

(declare-fun m!8387718 () Bool)

(assert (=> d!2393023 m!8387718))

(assert (=> b!8025391 m!8387572))

(assert (=> b!8025391 m!8387572))

(assert (=> b!8025391 m!8387718))

(assert (=> b!8025287 d!2393023))

(declare-fun b!8025393 () Bool)

(declare-fun tp!2401780 () Bool)

(declare-fun tp!2401778 () Bool)

(declare-fun e!4727767 () Bool)

(assert (=> b!8025393 (= e!4727767 (and (inv!96613 (left!57158 (left!57158 (right!57488 t!3624)))) tp!2401780 (inv!96613 (right!57488 (left!57158 (right!57488 t!3624)))) tp!2401778))))

(declare-fun b!8025395 () Bool)

(declare-fun e!4727766 () Bool)

(declare-fun tp!2401779 () Bool)

(assert (=> b!8025395 (= e!4727766 tp!2401779)))

(declare-fun b!8025394 () Bool)

(assert (=> b!8025394 (= e!4727767 (and (inv!96612 (xs!19340 (left!57158 (right!57488 t!3624)))) e!4727766))))

(assert (=> b!8025322 (= tp!2401776 (and (inv!96613 (left!57158 (right!57488 t!3624))) e!4727767))))

(assert (= (and b!8025322 ((_ is Node!15942) (left!57158 (right!57488 t!3624)))) b!8025393))

(assert (= b!8025394 b!8025395))

(assert (= (and b!8025322 ((_ is Leaf!30519) (left!57158 (right!57488 t!3624)))) b!8025394))

(declare-fun m!8387720 () Bool)

(assert (=> b!8025393 m!8387720))

(declare-fun m!8387722 () Bool)

(assert (=> b!8025393 m!8387722))

(declare-fun m!8387724 () Bool)

(assert (=> b!8025394 m!8387724))

(assert (=> b!8025322 m!8387616))

(declare-fun e!4727769 () Bool)

(declare-fun tp!2401781 () Bool)

(declare-fun b!8025396 () Bool)

(declare-fun tp!2401783 () Bool)

(assert (=> b!8025396 (= e!4727769 (and (inv!96613 (left!57158 (right!57488 (right!57488 t!3624)))) tp!2401783 (inv!96613 (right!57488 (right!57488 (right!57488 t!3624)))) tp!2401781))))

(declare-fun b!8025398 () Bool)

(declare-fun e!4727768 () Bool)

(declare-fun tp!2401782 () Bool)

(assert (=> b!8025398 (= e!4727768 tp!2401782)))

(declare-fun b!8025397 () Bool)

(assert (=> b!8025397 (= e!4727769 (and (inv!96612 (xs!19340 (right!57488 (right!57488 t!3624)))) e!4727768))))

(assert (=> b!8025322 (= tp!2401774 (and (inv!96613 (right!57488 (right!57488 t!3624))) e!4727769))))

(assert (= (and b!8025322 ((_ is Node!15942) (right!57488 (right!57488 t!3624)))) b!8025396))

(assert (= b!8025397 b!8025398))

(assert (= (and b!8025322 ((_ is Leaf!30519) (right!57488 (right!57488 t!3624)))) b!8025397))

(declare-fun m!8387726 () Bool)

(assert (=> b!8025396 m!8387726))

(declare-fun m!8387728 () Bool)

(assert (=> b!8025396 m!8387728))

(declare-fun m!8387730 () Bool)

(assert (=> b!8025397 m!8387730))

(assert (=> b!8025322 m!8387618))

(declare-fun b!8025399 () Bool)

(declare-fun e!4727770 () Bool)

(declare-fun tp!2401784 () Bool)

(assert (=> b!8025399 (= e!4727770 (and tp_is_empty!54203 tp!2401784))))

(assert (=> b!8025317 (= tp!2401770 e!4727770)))

(assert (= (and b!8025317 ((_ is Cons!74938) (innerList!16030 (xs!19340 (left!57158 t!3624))))) b!8025399))

(declare-fun b!8025400 () Bool)

(declare-fun e!4727771 () Bool)

(declare-fun tp!2401785 () Bool)

(assert (=> b!8025400 (= e!4727771 (and tp_is_empty!54203 tp!2401785))))

(assert (=> b!8025300 (= tp!2401756 e!4727771)))

(assert (= (and b!8025300 ((_ is Cons!74938) (t!390811 (innerList!16030 (xs!19340 t!3624))))) b!8025400))

(declare-fun b!8025401 () Bool)

(declare-fun e!4727772 () Bool)

(declare-fun tp!2401786 () Bool)

(assert (=> b!8025401 (= e!4727772 (and tp_is_empty!54203 tp!2401786))))

(assert (=> b!8025324 (= tp!2401775 e!4727772)))

(assert (= (and b!8025324 ((_ is Cons!74938) (innerList!16030 (xs!19340 (right!57488 t!3624))))) b!8025401))

(declare-fun tp!2401789 () Bool)

(declare-fun e!4727774 () Bool)

(declare-fun b!8025402 () Bool)

(declare-fun tp!2401787 () Bool)

(assert (=> b!8025402 (= e!4727774 (and (inv!96613 (left!57158 (left!57158 (left!57158 t!3624)))) tp!2401789 (inv!96613 (right!57488 (left!57158 (left!57158 t!3624)))) tp!2401787))))

(declare-fun b!8025404 () Bool)

(declare-fun e!4727773 () Bool)

(declare-fun tp!2401788 () Bool)

(assert (=> b!8025404 (= e!4727773 tp!2401788)))

(declare-fun b!8025403 () Bool)

(assert (=> b!8025403 (= e!4727774 (and (inv!96612 (xs!19340 (left!57158 (left!57158 t!3624)))) e!4727773))))

(assert (=> b!8025315 (= tp!2401771 (and (inv!96613 (left!57158 (left!57158 t!3624))) e!4727774))))

(assert (= (and b!8025315 ((_ is Node!15942) (left!57158 (left!57158 t!3624)))) b!8025402))

(assert (= b!8025403 b!8025404))

(assert (= (and b!8025315 ((_ is Leaf!30519) (left!57158 (left!57158 t!3624)))) b!8025403))

(declare-fun m!8387732 () Bool)

(assert (=> b!8025402 m!8387732))

(declare-fun m!8387734 () Bool)

(assert (=> b!8025402 m!8387734))

(declare-fun m!8387736 () Bool)

(assert (=> b!8025403 m!8387736))

(assert (=> b!8025315 m!8387610))

(declare-fun tp!2401792 () Bool)

(declare-fun b!8025405 () Bool)

(declare-fun tp!2401790 () Bool)

(declare-fun e!4727776 () Bool)

(assert (=> b!8025405 (= e!4727776 (and (inv!96613 (left!57158 (right!57488 (left!57158 t!3624)))) tp!2401792 (inv!96613 (right!57488 (right!57488 (left!57158 t!3624)))) tp!2401790))))

(declare-fun b!8025407 () Bool)

(declare-fun e!4727775 () Bool)

(declare-fun tp!2401791 () Bool)

(assert (=> b!8025407 (= e!4727775 tp!2401791)))

(declare-fun b!8025406 () Bool)

(assert (=> b!8025406 (= e!4727776 (and (inv!96612 (xs!19340 (right!57488 (left!57158 t!3624)))) e!4727775))))

(assert (=> b!8025315 (= tp!2401769 (and (inv!96613 (right!57488 (left!57158 t!3624))) e!4727776))))

(assert (= (and b!8025315 ((_ is Node!15942) (right!57488 (left!57158 t!3624)))) b!8025405))

(assert (= b!8025406 b!8025407))

(assert (= (and b!8025315 ((_ is Leaf!30519) (right!57488 (left!57158 t!3624)))) b!8025406))

(declare-fun m!8387738 () Bool)

(assert (=> b!8025405 m!8387738))

(declare-fun m!8387740 () Bool)

(assert (=> b!8025405 m!8387740))

(declare-fun m!8387742 () Bool)

(assert (=> b!8025406 m!8387742))

(assert (=> b!8025315 m!8387612))

(check-sat (not d!2393009) (not b!8025403) (not d!2392997) (not b!8025352) (not b!8025366) (not b!8025315) (not d!2393021) (not b!8025363) (not b!8025372) (not b!8025395) (not d!2393023) (not b!8025394) (not b!8025362) (not b!8025388) (not b!8025353) (not b!8025369) (not b!8025322) (not b!8025400) tp_is_empty!54203 (not d!2393015) (not b!8025402) (not b!8025361) (not b!8025393) (not b!8025401) (not b!8025358) (not b!8025399) (not b!8025396) (not b!8025405) (not b!8025365) (not b!8025341) (not b!8025357) (not d!2392991) (not b!8025406) (not b!8025327) (not b!8025368) (not b!8025398) (not b!8025389) (not b!8025385) (not b!8025397) (not d!2393017) (not b!8025379) (not d!2392987) (not b!8025335) (not d!2392989) (not b!8025371) (not b!8025374) (not b!8025407) (not b!8025404) (not b!8025391))
(check-sat)
(get-model)

(declare-fun d!2393055 () Bool)

(assert (=> d!2393055 (= (max!0 (height!2244 (left!57158 t!3624)) (height!2244 (right!57488 t!3624))) (ite (< (height!2244 (left!57158 t!3624)) (height!2244 (right!57488 t!3624))) (height!2244 (right!57488 t!3624)) (height!2244 (left!57158 t!3624))))))

(assert (=> b!8025379 d!2393055))

(declare-fun d!2393057 () Bool)

(assert (=> d!2393057 (= (height!2244 (left!57158 t!3624)) (ite ((_ is Empty!15942) (left!57158 t!3624)) 0 (ite ((_ is Leaf!30519) (left!57158 t!3624)) 1 (cheight!16153 (left!57158 t!3624)))))))

(assert (=> b!8025379 d!2393057))

(declare-fun d!2393059 () Bool)

(assert (=> d!2393059 (= (height!2244 (right!57488 t!3624)) (ite ((_ is Empty!15942) (right!57488 t!3624)) 0 (ite ((_ is Leaf!30519) (right!57488 t!3624)) 1 (cheight!16153 (right!57488 t!3624)))))))

(assert (=> b!8025379 d!2393059))

(declare-fun d!2393061 () Bool)

(assert (=> d!2393061 (= (max!0 (height!2244 (left!57158 (right!57488 t!3624))) (height!2244 (right!57488 (right!57488 t!3624)))) (ite (< (height!2244 (left!57158 (right!57488 t!3624))) (height!2244 (right!57488 (right!57488 t!3624)))) (height!2244 (right!57488 (right!57488 t!3624))) (height!2244 (left!57158 (right!57488 t!3624)))))))

(assert (=> b!8025335 d!2393061))

(declare-fun d!2393063 () Bool)

(assert (=> d!2393063 (= (height!2244 (left!57158 (right!57488 t!3624))) (ite ((_ is Empty!15942) (left!57158 (right!57488 t!3624))) 0 (ite ((_ is Leaf!30519) (left!57158 (right!57488 t!3624))) 1 (cheight!16153 (left!57158 (right!57488 t!3624))))))))

(assert (=> b!8025335 d!2393063))

(declare-fun d!2393065 () Bool)

(assert (=> d!2393065 (= (height!2244 (right!57488 (right!57488 t!3624))) (ite ((_ is Empty!15942) (right!57488 (right!57488 t!3624))) 0 (ite ((_ is Leaf!30519) (right!57488 (right!57488 t!3624))) 1 (cheight!16153 (right!57488 (right!57488 t!3624))))))))

(assert (=> b!8025335 d!2393065))

(declare-fun d!2393067 () Bool)

(declare-fun lt!2720723 () Int)

(assert (=> d!2393067 (>= lt!2720723 0)))

(declare-fun e!4727814 () Int)

(assert (=> d!2393067 (= lt!2720723 e!4727814)))

(declare-fun c!1472602 () Bool)

(assert (=> d!2393067 (= c!1472602 ((_ is Nil!74938) (list!19483 (xs!19340 (left!57158 t!3624)))))))

(assert (=> d!2393067 (= (size!43711 (list!19483 (xs!19340 (left!57158 t!3624)))) lt!2720723)))

(declare-fun b!8025478 () Bool)

(assert (=> b!8025478 (= e!4727814 0)))

(declare-fun b!8025479 () Bool)

(assert (=> b!8025479 (= e!4727814 (+ 1 (size!43711 (t!390811 (list!19483 (xs!19340 (left!57158 t!3624)))))))))

(assert (= (and d!2393067 c!1472602) b!8025478))

(assert (= (and d!2393067 (not c!1472602)) b!8025479))

(declare-fun m!8387850 () Bool)

(assert (=> b!8025479 m!8387850))

(assert (=> d!2393021 d!2393067))

(declare-fun d!2393069 () Bool)

(assert (=> d!2393069 (= (list!19483 (xs!19340 (left!57158 t!3624))) (innerList!16030 (xs!19340 (left!57158 t!3624))))))

(assert (=> d!2393021 d!2393069))

(declare-fun d!2393071 () Bool)

(declare-fun res!3173673 () Bool)

(declare-fun e!4727815 () Bool)

(assert (=> d!2393071 (=> (not res!3173673) (not e!4727815))))

(assert (=> d!2393071 (= res!3173673 (= (csize!32114 (right!57488 (right!57488 t!3624))) (+ (size!43712 (left!57158 (right!57488 (right!57488 t!3624)))) (size!43712 (right!57488 (right!57488 (right!57488 t!3624)))))))))

(assert (=> d!2393071 (= (inv!96616 (right!57488 (right!57488 t!3624))) e!4727815)))

(declare-fun b!8025480 () Bool)

(declare-fun res!3173674 () Bool)

(assert (=> b!8025480 (=> (not res!3173674) (not e!4727815))))

(assert (=> b!8025480 (= res!3173674 (and (not (= (left!57158 (right!57488 (right!57488 t!3624))) Empty!15942)) (not (= (right!57488 (right!57488 (right!57488 t!3624))) Empty!15942))))))

(declare-fun b!8025481 () Bool)

(declare-fun res!3173675 () Bool)

(assert (=> b!8025481 (=> (not res!3173675) (not e!4727815))))

(assert (=> b!8025481 (= res!3173675 (= (cheight!16153 (right!57488 (right!57488 t!3624))) (+ (max!0 (height!2244 (left!57158 (right!57488 (right!57488 t!3624)))) (height!2244 (right!57488 (right!57488 (right!57488 t!3624))))) 1)))))

(declare-fun b!8025482 () Bool)

(assert (=> b!8025482 (= e!4727815 (<= 0 (cheight!16153 (right!57488 (right!57488 t!3624)))))))

(assert (= (and d!2393071 res!3173673) b!8025480))

(assert (= (and b!8025480 res!3173674) b!8025481))

(assert (= (and b!8025481 res!3173675) b!8025482))

(declare-fun m!8387852 () Bool)

(assert (=> d!2393071 m!8387852))

(declare-fun m!8387854 () Bool)

(assert (=> d!2393071 m!8387854))

(declare-fun m!8387856 () Bool)

(assert (=> b!8025481 m!8387856))

(declare-fun m!8387858 () Bool)

(assert (=> b!8025481 m!8387858))

(assert (=> b!8025481 m!8387856))

(assert (=> b!8025481 m!8387858))

(declare-fun m!8387860 () Bool)

(assert (=> b!8025481 m!8387860))

(assert (=> b!8025372 d!2393071))

(declare-fun d!2393073 () Bool)

(assert (=> d!2393073 (= (max!0 (height!2244 (left!57158 (left!57158 t!3624))) (height!2244 (right!57488 (left!57158 t!3624)))) (ite (< (height!2244 (left!57158 (left!57158 t!3624))) (height!2244 (right!57488 (left!57158 t!3624)))) (height!2244 (right!57488 (left!57158 t!3624))) (height!2244 (left!57158 (left!57158 t!3624)))))))

(assert (=> b!8025385 d!2393073))

(declare-fun d!2393075 () Bool)

(assert (=> d!2393075 (= (height!2244 (left!57158 (left!57158 t!3624))) (ite ((_ is Empty!15942) (left!57158 (left!57158 t!3624))) 0 (ite ((_ is Leaf!30519) (left!57158 (left!57158 t!3624))) 1 (cheight!16153 (left!57158 (left!57158 t!3624))))))))

(assert (=> b!8025385 d!2393075))

(declare-fun d!2393077 () Bool)

(assert (=> d!2393077 (= (height!2244 (right!57488 (left!57158 t!3624))) (ite ((_ is Empty!15942) (right!57488 (left!57158 t!3624))) 0 (ite ((_ is Leaf!30519) (right!57488 (left!57158 t!3624))) 1 (cheight!16153 (right!57488 (left!57158 t!3624))))))))

(assert (=> b!8025385 d!2393077))

(declare-fun d!2393079 () Bool)

(declare-fun res!3173676 () Bool)

(declare-fun e!4727816 () Bool)

(assert (=> d!2393079 (=> (not res!3173676) (not e!4727816))))

(assert (=> d!2393079 (= res!3173676 (<= (size!43711 (list!19483 (xs!19340 (right!57488 (right!57488 t!3624))))) 512))))

(assert (=> d!2393079 (= (inv!96617 (right!57488 (right!57488 t!3624))) e!4727816)))

(declare-fun b!8025483 () Bool)

(declare-fun res!3173677 () Bool)

(assert (=> b!8025483 (=> (not res!3173677) (not e!4727816))))

(assert (=> b!8025483 (= res!3173677 (= (csize!32115 (right!57488 (right!57488 t!3624))) (size!43711 (list!19483 (xs!19340 (right!57488 (right!57488 t!3624)))))))))

(declare-fun b!8025484 () Bool)

(assert (=> b!8025484 (= e!4727816 (and (> (csize!32115 (right!57488 (right!57488 t!3624))) 0) (<= (csize!32115 (right!57488 (right!57488 t!3624))) 512)))))

(assert (= (and d!2393079 res!3173676) b!8025483))

(assert (= (and b!8025483 res!3173677) b!8025484))

(declare-fun m!8387862 () Bool)

(assert (=> d!2393079 m!8387862))

(assert (=> d!2393079 m!8387862))

(declare-fun m!8387864 () Bool)

(assert (=> d!2393079 m!8387864))

(assert (=> b!8025483 m!8387862))

(assert (=> b!8025483 m!8387862))

(assert (=> b!8025483 m!8387864))

(assert (=> b!8025374 d!2393079))

(declare-fun d!2393081 () Bool)

(assert (=> d!2393081 (= (inv!96612 (xs!19340 (left!57158 (right!57488 t!3624)))) (<= (size!43711 (innerList!16030 (xs!19340 (left!57158 (right!57488 t!3624))))) 2147483647))))

(declare-fun bs!1971269 () Bool)

(assert (= bs!1971269 d!2393081))

(declare-fun m!8387866 () Bool)

(assert (=> bs!1971269 m!8387866))

(assert (=> b!8025394 d!2393081))

(declare-fun d!2393083 () Bool)

(declare-fun c!1472603 () Bool)

(assert (=> d!2393083 (= c!1472603 ((_ is Node!15942) (left!57158 (left!57158 (right!57488 t!3624)))))))

(declare-fun e!4727817 () Bool)

(assert (=> d!2393083 (= (inv!96613 (left!57158 (left!57158 (right!57488 t!3624)))) e!4727817)))

(declare-fun b!8025485 () Bool)

(assert (=> b!8025485 (= e!4727817 (inv!96616 (left!57158 (left!57158 (right!57488 t!3624)))))))

(declare-fun b!8025486 () Bool)

(declare-fun e!4727818 () Bool)

(assert (=> b!8025486 (= e!4727817 e!4727818)))

(declare-fun res!3173678 () Bool)

(assert (=> b!8025486 (= res!3173678 (not ((_ is Leaf!30519) (left!57158 (left!57158 (right!57488 t!3624))))))))

(assert (=> b!8025486 (=> res!3173678 e!4727818)))

(declare-fun b!8025487 () Bool)

(assert (=> b!8025487 (= e!4727818 (inv!96617 (left!57158 (left!57158 (right!57488 t!3624)))))))

(assert (= (and d!2393083 c!1472603) b!8025485))

(assert (= (and d!2393083 (not c!1472603)) b!8025486))

(assert (= (and b!8025486 (not res!3173678)) b!8025487))

(declare-fun m!8387868 () Bool)

(assert (=> b!8025485 m!8387868))

(declare-fun m!8387870 () Bool)

(assert (=> b!8025487 m!8387870))

(assert (=> b!8025393 d!2393083))

(declare-fun d!2393085 () Bool)

(declare-fun c!1472604 () Bool)

(assert (=> d!2393085 (= c!1472604 ((_ is Node!15942) (right!57488 (left!57158 (right!57488 t!3624)))))))

(declare-fun e!4727819 () Bool)

(assert (=> d!2393085 (= (inv!96613 (right!57488 (left!57158 (right!57488 t!3624)))) e!4727819)))

(declare-fun b!8025488 () Bool)

(assert (=> b!8025488 (= e!4727819 (inv!96616 (right!57488 (left!57158 (right!57488 t!3624)))))))

(declare-fun b!8025489 () Bool)

(declare-fun e!4727820 () Bool)

(assert (=> b!8025489 (= e!4727819 e!4727820)))

(declare-fun res!3173679 () Bool)

(assert (=> b!8025489 (= res!3173679 (not ((_ is Leaf!30519) (right!57488 (left!57158 (right!57488 t!3624))))))))

(assert (=> b!8025489 (=> res!3173679 e!4727820)))

(declare-fun b!8025490 () Bool)

(assert (=> b!8025490 (= e!4727820 (inv!96617 (right!57488 (left!57158 (right!57488 t!3624)))))))

(assert (= (and d!2393085 c!1472604) b!8025488))

(assert (= (and d!2393085 (not c!1472604)) b!8025489))

(assert (= (and b!8025489 (not res!3173679)) b!8025490))

(declare-fun m!8387872 () Bool)

(assert (=> b!8025488 m!8387872))

(declare-fun m!8387874 () Bool)

(assert (=> b!8025490 m!8387874))

(assert (=> b!8025393 d!2393085))

(declare-fun d!2393087 () Bool)

(declare-fun res!3173680 () Bool)

(declare-fun e!4727821 () Bool)

(assert (=> d!2393087 (=> (not res!3173680) (not e!4727821))))

(assert (=> d!2393087 (= res!3173680 (= (csize!32114 (left!57158 (left!57158 t!3624))) (+ (size!43712 (left!57158 (left!57158 (left!57158 t!3624)))) (size!43712 (right!57488 (left!57158 (left!57158 t!3624)))))))))

(assert (=> d!2393087 (= (inv!96616 (left!57158 (left!57158 t!3624))) e!4727821)))

(declare-fun b!8025491 () Bool)

(declare-fun res!3173681 () Bool)

(assert (=> b!8025491 (=> (not res!3173681) (not e!4727821))))

(assert (=> b!8025491 (= res!3173681 (and (not (= (left!57158 (left!57158 (left!57158 t!3624))) Empty!15942)) (not (= (right!57488 (left!57158 (left!57158 t!3624))) Empty!15942))))))

(declare-fun b!8025492 () Bool)

(declare-fun res!3173682 () Bool)

(assert (=> b!8025492 (=> (not res!3173682) (not e!4727821))))

(assert (=> b!8025492 (= res!3173682 (= (cheight!16153 (left!57158 (left!57158 t!3624))) (+ (max!0 (height!2244 (left!57158 (left!57158 (left!57158 t!3624)))) (height!2244 (right!57488 (left!57158 (left!57158 t!3624))))) 1)))))

(declare-fun b!8025493 () Bool)

(assert (=> b!8025493 (= e!4727821 (<= 0 (cheight!16153 (left!57158 (left!57158 t!3624)))))))

(assert (= (and d!2393087 res!3173680) b!8025491))

(assert (= (and b!8025491 res!3173681) b!8025492))

(assert (= (and b!8025492 res!3173682) b!8025493))

(declare-fun m!8387876 () Bool)

(assert (=> d!2393087 m!8387876))

(declare-fun m!8387878 () Bool)

(assert (=> d!2393087 m!8387878))

(declare-fun m!8387880 () Bool)

(assert (=> b!8025492 m!8387880))

(declare-fun m!8387882 () Bool)

(assert (=> b!8025492 m!8387882))

(assert (=> b!8025492 m!8387880))

(assert (=> b!8025492 m!8387882))

(declare-fun m!8387884 () Bool)

(assert (=> b!8025492 m!8387884))

(assert (=> b!8025363 d!2393087))

(declare-fun d!2393089 () Bool)

(declare-fun res!3173683 () Bool)

(declare-fun e!4727822 () Bool)

(assert (=> d!2393089 (=> (not res!3173683) (not e!4727822))))

(assert (=> d!2393089 (= res!3173683 (<= (size!43711 (list!19483 (xs!19340 (left!57158 (left!57158 t!3624))))) 512))))

(assert (=> d!2393089 (= (inv!96617 (left!57158 (left!57158 t!3624))) e!4727822)))

(declare-fun b!8025494 () Bool)

(declare-fun res!3173684 () Bool)

(assert (=> b!8025494 (=> (not res!3173684) (not e!4727822))))

(assert (=> b!8025494 (= res!3173684 (= (csize!32115 (left!57158 (left!57158 t!3624))) (size!43711 (list!19483 (xs!19340 (left!57158 (left!57158 t!3624)))))))))

(declare-fun b!8025495 () Bool)

(assert (=> b!8025495 (= e!4727822 (and (> (csize!32115 (left!57158 (left!57158 t!3624))) 0) (<= (csize!32115 (left!57158 (left!57158 t!3624))) 512)))))

(assert (= (and d!2393089 res!3173683) b!8025494))

(assert (= (and b!8025494 res!3173684) b!8025495))

(declare-fun m!8387886 () Bool)

(assert (=> d!2393089 m!8387886))

(assert (=> d!2393089 m!8387886))

(declare-fun m!8387888 () Bool)

(assert (=> d!2393089 m!8387888))

(assert (=> b!8025494 m!8387886))

(assert (=> b!8025494 m!8387886))

(assert (=> b!8025494 m!8387888))

(assert (=> b!8025365 d!2393089))

(declare-fun b!8025497 () Bool)

(declare-fun e!4727824 () List!75062)

(assert (=> b!8025497 (= e!4727824 (Cons!74938 (h!81386 (t!390811 (list!19482 (left!57158 t!3624)))) (++!18579 (t!390811 (t!390811 (list!19482 (left!57158 t!3624)))) (list!19482 (right!57488 t!3624)))))))

(declare-fun b!8025499 () Bool)

(declare-fun e!4727823 () Bool)

(declare-fun lt!2720724 () List!75062)

(assert (=> b!8025499 (= e!4727823 (or (not (= (list!19482 (right!57488 t!3624)) Nil!74938)) (= lt!2720724 (t!390811 (list!19482 (left!57158 t!3624))))))))

(declare-fun b!8025498 () Bool)

(declare-fun res!3173685 () Bool)

(assert (=> b!8025498 (=> (not res!3173685) (not e!4727823))))

(assert (=> b!8025498 (= res!3173685 (= (size!43711 lt!2720724) (+ (size!43711 (t!390811 (list!19482 (left!57158 t!3624)))) (size!43711 (list!19482 (right!57488 t!3624))))))))

(declare-fun d!2393091 () Bool)

(assert (=> d!2393091 e!4727823))

(declare-fun res!3173686 () Bool)

(assert (=> d!2393091 (=> (not res!3173686) (not e!4727823))))

(assert (=> d!2393091 (= res!3173686 (= (content!15962 lt!2720724) ((_ map or) (content!15962 (t!390811 (list!19482 (left!57158 t!3624)))) (content!15962 (list!19482 (right!57488 t!3624))))))))

(assert (=> d!2393091 (= lt!2720724 e!4727824)))

(declare-fun c!1472605 () Bool)

(assert (=> d!2393091 (= c!1472605 ((_ is Nil!74938) (t!390811 (list!19482 (left!57158 t!3624)))))))

(assert (=> d!2393091 (= (++!18579 (t!390811 (list!19482 (left!57158 t!3624))) (list!19482 (right!57488 t!3624))) lt!2720724)))

(declare-fun b!8025496 () Bool)

(assert (=> b!8025496 (= e!4727824 (list!19482 (right!57488 t!3624)))))

(assert (= (and d!2393091 c!1472605) b!8025496))

(assert (= (and d!2393091 (not c!1472605)) b!8025497))

(assert (= (and d!2393091 res!3173686) b!8025498))

(assert (= (and b!8025498 res!3173685) b!8025499))

(assert (=> b!8025497 m!8387568))

(declare-fun m!8387890 () Bool)

(assert (=> b!8025497 m!8387890))

(declare-fun m!8387892 () Bool)

(assert (=> b!8025498 m!8387892))

(declare-fun m!8387894 () Bool)

(assert (=> b!8025498 m!8387894))

(assert (=> b!8025498 m!8387568))

(assert (=> b!8025498 m!8387644))

(declare-fun m!8387896 () Bool)

(assert (=> d!2393091 m!8387896))

(declare-fun m!8387898 () Bool)

(assert (=> d!2393091 m!8387898))

(assert (=> d!2393091 m!8387568))

(assert (=> d!2393091 m!8387650))

(assert (=> b!8025352 d!2393091))

(assert (=> b!8025322 d!2393003))

(assert (=> b!8025322 d!2393007))

(declare-fun d!2393093 () Bool)

(declare-fun lt!2720725 () Int)

(assert (=> d!2393093 (>= lt!2720725 0)))

(declare-fun e!4727825 () Int)

(assert (=> d!2393093 (= lt!2720725 e!4727825)))

(declare-fun c!1472606 () Bool)

(assert (=> d!2393093 (= c!1472606 ((_ is Nil!74938) lt!2720716))))

(assert (=> d!2393093 (= (size!43711 lt!2720716) lt!2720725)))

(declare-fun b!8025500 () Bool)

(assert (=> b!8025500 (= e!4727825 0)))

(declare-fun b!8025501 () Bool)

(assert (=> b!8025501 (= e!4727825 (+ 1 (size!43711 (t!390811 lt!2720716))))))

(assert (= (and d!2393093 c!1472606) b!8025500))

(assert (= (and d!2393093 (not c!1472606)) b!8025501))

(declare-fun m!8387900 () Bool)

(assert (=> b!8025501 m!8387900))

(assert (=> b!8025353 d!2393093))

(declare-fun d!2393095 () Bool)

(declare-fun lt!2720726 () Int)

(assert (=> d!2393095 (>= lt!2720726 0)))

(declare-fun e!4727826 () Int)

(assert (=> d!2393095 (= lt!2720726 e!4727826)))

(declare-fun c!1472607 () Bool)

(assert (=> d!2393095 (= c!1472607 ((_ is Nil!74938) (list!19482 (left!57158 t!3624))))))

(assert (=> d!2393095 (= (size!43711 (list!19482 (left!57158 t!3624))) lt!2720726)))

(declare-fun b!8025502 () Bool)

(assert (=> b!8025502 (= e!4727826 0)))

(declare-fun b!8025503 () Bool)

(assert (=> b!8025503 (= e!4727826 (+ 1 (size!43711 (t!390811 (list!19482 (left!57158 t!3624))))))))

(assert (= (and d!2393095 c!1472607) b!8025502))

(assert (= (and d!2393095 (not c!1472607)) b!8025503))

(assert (=> b!8025503 m!8387894))

(assert (=> b!8025353 d!2393095))

(declare-fun d!2393097 () Bool)

(declare-fun lt!2720727 () Int)

(assert (=> d!2393097 (>= lt!2720727 0)))

(declare-fun e!4727827 () Int)

(assert (=> d!2393097 (= lt!2720727 e!4727827)))

(declare-fun c!1472608 () Bool)

(assert (=> d!2393097 (= c!1472608 ((_ is Nil!74938) (list!19482 (right!57488 t!3624))))))

(assert (=> d!2393097 (= (size!43711 (list!19482 (right!57488 t!3624))) lt!2720727)))

(declare-fun b!8025504 () Bool)

(assert (=> b!8025504 (= e!4727827 0)))

(declare-fun b!8025505 () Bool)

(assert (=> b!8025505 (= e!4727827 (+ 1 (size!43711 (t!390811 (list!19482 (right!57488 t!3624))))))))

(assert (= (and d!2393097 c!1472608) b!8025504))

(assert (= (and d!2393097 (not c!1472608)) b!8025505))

(declare-fun m!8387902 () Bool)

(assert (=> b!8025505 m!8387902))

(assert (=> b!8025353 d!2393097))

(assert (=> b!8025389 d!2393067))

(assert (=> b!8025389 d!2393069))

(declare-fun b!8025507 () Bool)

(declare-fun e!4727829 () List!75062)

(assert (=> b!8025507 (= e!4727829 (Cons!74938 (h!81386 (list!19482 (left!57158 (right!57488 t!3624)))) (++!18579 (t!390811 (list!19482 (left!57158 (right!57488 t!3624)))) (list!19482 (right!57488 (right!57488 t!3624))))))))

(declare-fun b!8025509 () Bool)

(declare-fun e!4727828 () Bool)

(declare-fun lt!2720728 () List!75062)

(assert (=> b!8025509 (= e!4727828 (or (not (= (list!19482 (right!57488 (right!57488 t!3624))) Nil!74938)) (= lt!2720728 (list!19482 (left!57158 (right!57488 t!3624))))))))

(declare-fun b!8025508 () Bool)

(declare-fun res!3173687 () Bool)

(assert (=> b!8025508 (=> (not res!3173687) (not e!4727828))))

(assert (=> b!8025508 (= res!3173687 (= (size!43711 lt!2720728) (+ (size!43711 (list!19482 (left!57158 (right!57488 t!3624)))) (size!43711 (list!19482 (right!57488 (right!57488 t!3624)))))))))

(declare-fun d!2393099 () Bool)

(assert (=> d!2393099 e!4727828))

(declare-fun res!3173688 () Bool)

(assert (=> d!2393099 (=> (not res!3173688) (not e!4727828))))

(assert (=> d!2393099 (= res!3173688 (= (content!15962 lt!2720728) ((_ map or) (content!15962 (list!19482 (left!57158 (right!57488 t!3624)))) (content!15962 (list!19482 (right!57488 (right!57488 t!3624)))))))))

(assert (=> d!2393099 (= lt!2720728 e!4727829)))

(declare-fun c!1472609 () Bool)

(assert (=> d!2393099 (= c!1472609 ((_ is Nil!74938) (list!19482 (left!57158 (right!57488 t!3624)))))))

(assert (=> d!2393099 (= (++!18579 (list!19482 (left!57158 (right!57488 t!3624))) (list!19482 (right!57488 (right!57488 t!3624)))) lt!2720728)))

(declare-fun b!8025506 () Bool)

(assert (=> b!8025506 (= e!4727829 (list!19482 (right!57488 (right!57488 t!3624))))))

(assert (= (and d!2393099 c!1472609) b!8025506))

(assert (= (and d!2393099 (not c!1472609)) b!8025507))

(assert (= (and d!2393099 res!3173688) b!8025508))

(assert (= (and b!8025508 res!3173687) b!8025509))

(assert (=> b!8025507 m!8387662))

(declare-fun m!8387904 () Bool)

(assert (=> b!8025507 m!8387904))

(declare-fun m!8387906 () Bool)

(assert (=> b!8025508 m!8387906))

(assert (=> b!8025508 m!8387660))

(declare-fun m!8387908 () Bool)

(assert (=> b!8025508 m!8387908))

(assert (=> b!8025508 m!8387662))

(declare-fun m!8387910 () Bool)

(assert (=> b!8025508 m!8387910))

(declare-fun m!8387912 () Bool)

(assert (=> d!2393099 m!8387912))

(assert (=> d!2393099 m!8387660))

(declare-fun m!8387914 () Bool)

(assert (=> d!2393099 m!8387914))

(assert (=> d!2393099 m!8387662))

(declare-fun m!8387916 () Bool)

(assert (=> d!2393099 m!8387916))

(assert (=> b!8025362 d!2393099))

(declare-fun b!8025510 () Bool)

(declare-fun e!4727830 () List!75062)

(assert (=> b!8025510 (= e!4727830 Nil!74938)))

(declare-fun b!8025511 () Bool)

(declare-fun e!4727831 () List!75062)

(assert (=> b!8025511 (= e!4727830 e!4727831)))

(declare-fun c!1472611 () Bool)

(assert (=> b!8025511 (= c!1472611 ((_ is Leaf!30519) (left!57158 (right!57488 t!3624))))))

(declare-fun d!2393101 () Bool)

(declare-fun c!1472610 () Bool)

(assert (=> d!2393101 (= c!1472610 ((_ is Empty!15942) (left!57158 (right!57488 t!3624))))))

(assert (=> d!2393101 (= (list!19482 (left!57158 (right!57488 t!3624))) e!4727830)))

(declare-fun b!8025513 () Bool)

(assert (=> b!8025513 (= e!4727831 (++!18579 (list!19482 (left!57158 (left!57158 (right!57488 t!3624)))) (list!19482 (right!57488 (left!57158 (right!57488 t!3624))))))))

(declare-fun b!8025512 () Bool)

(assert (=> b!8025512 (= e!4727831 (list!19483 (xs!19340 (left!57158 (right!57488 t!3624)))))))

(assert (= (and d!2393101 c!1472610) b!8025510))

(assert (= (and d!2393101 (not c!1472610)) b!8025511))

(assert (= (and b!8025511 c!1472611) b!8025512))

(assert (= (and b!8025511 (not c!1472611)) b!8025513))

(declare-fun m!8387918 () Bool)

(assert (=> b!8025513 m!8387918))

(declare-fun m!8387920 () Bool)

(assert (=> b!8025513 m!8387920))

(assert (=> b!8025513 m!8387918))

(assert (=> b!8025513 m!8387920))

(declare-fun m!8387922 () Bool)

(assert (=> b!8025513 m!8387922))

(declare-fun m!8387924 () Bool)

(assert (=> b!8025512 m!8387924))

(assert (=> b!8025362 d!2393101))

(declare-fun b!8025514 () Bool)

(declare-fun e!4727832 () List!75062)

(assert (=> b!8025514 (= e!4727832 Nil!74938)))

(declare-fun b!8025515 () Bool)

(declare-fun e!4727833 () List!75062)

(assert (=> b!8025515 (= e!4727832 e!4727833)))

(declare-fun c!1472613 () Bool)

(assert (=> b!8025515 (= c!1472613 ((_ is Leaf!30519) (right!57488 (right!57488 t!3624))))))

(declare-fun d!2393103 () Bool)

(declare-fun c!1472612 () Bool)

(assert (=> d!2393103 (= c!1472612 ((_ is Empty!15942) (right!57488 (right!57488 t!3624))))))

(assert (=> d!2393103 (= (list!19482 (right!57488 (right!57488 t!3624))) e!4727832)))

(declare-fun b!8025517 () Bool)

(assert (=> b!8025517 (= e!4727833 (++!18579 (list!19482 (left!57158 (right!57488 (right!57488 t!3624)))) (list!19482 (right!57488 (right!57488 (right!57488 t!3624))))))))

(declare-fun b!8025516 () Bool)

(assert (=> b!8025516 (= e!4727833 (list!19483 (xs!19340 (right!57488 (right!57488 t!3624)))))))

(assert (= (and d!2393103 c!1472612) b!8025514))

(assert (= (and d!2393103 (not c!1472612)) b!8025515))

(assert (= (and b!8025515 c!1472613) b!8025516))

(assert (= (and b!8025515 (not c!1472613)) b!8025517))

(declare-fun m!8387926 () Bool)

(assert (=> b!8025517 m!8387926))

(declare-fun m!8387928 () Bool)

(assert (=> b!8025517 m!8387928))

(assert (=> b!8025517 m!8387926))

(assert (=> b!8025517 m!8387928))

(declare-fun m!8387930 () Bool)

(assert (=> b!8025517 m!8387930))

(assert (=> b!8025516 m!8387862))

(assert (=> b!8025362 d!2393103))

(declare-fun d!2393105 () Bool)

(assert (=> d!2393105 (= (list!19483 (xs!19340 (right!57488 t!3624))) (innerList!16030 (xs!19340 (right!57488 t!3624))))))

(assert (=> b!8025361 d!2393105))

(declare-fun d!2393107 () Bool)

(declare-fun res!3173689 () Bool)

(declare-fun e!4727834 () Bool)

(assert (=> d!2393107 (=> (not res!3173689) (not e!4727834))))

(assert (=> d!2393107 (= res!3173689 (= (csize!32114 (left!57158 (right!57488 t!3624))) (+ (size!43712 (left!57158 (left!57158 (right!57488 t!3624)))) (size!43712 (right!57488 (left!57158 (right!57488 t!3624)))))))))

(assert (=> d!2393107 (= (inv!96616 (left!57158 (right!57488 t!3624))) e!4727834)))

(declare-fun b!8025518 () Bool)

(declare-fun res!3173690 () Bool)

(assert (=> b!8025518 (=> (not res!3173690) (not e!4727834))))

(assert (=> b!8025518 (= res!3173690 (and (not (= (left!57158 (left!57158 (right!57488 t!3624))) Empty!15942)) (not (= (right!57488 (left!57158 (right!57488 t!3624))) Empty!15942))))))

(declare-fun b!8025519 () Bool)

(declare-fun res!3173691 () Bool)

(assert (=> b!8025519 (=> (not res!3173691) (not e!4727834))))

(assert (=> b!8025519 (= res!3173691 (= (cheight!16153 (left!57158 (right!57488 t!3624))) (+ (max!0 (height!2244 (left!57158 (left!57158 (right!57488 t!3624)))) (height!2244 (right!57488 (left!57158 (right!57488 t!3624))))) 1)))))

(declare-fun b!8025520 () Bool)

(assert (=> b!8025520 (= e!4727834 (<= 0 (cheight!16153 (left!57158 (right!57488 t!3624)))))))

(assert (= (and d!2393107 res!3173689) b!8025518))

(assert (= (and b!8025518 res!3173690) b!8025519))

(assert (= (and b!8025519 res!3173691) b!8025520))

(declare-fun m!8387932 () Bool)

(assert (=> d!2393107 m!8387932))

(declare-fun m!8387934 () Bool)

(assert (=> d!2393107 m!8387934))

(declare-fun m!8387936 () Bool)

(assert (=> b!8025519 m!8387936))

(declare-fun m!8387938 () Bool)

(assert (=> b!8025519 m!8387938))

(assert (=> b!8025519 m!8387936))

(assert (=> b!8025519 m!8387938))

(declare-fun m!8387940 () Bool)

(assert (=> b!8025519 m!8387940))

(assert (=> b!8025369 d!2393107))

(declare-fun d!2393109 () Bool)

(declare-fun lt!2720729 () Int)

(assert (=> d!2393109 (>= lt!2720729 0)))

(declare-fun e!4727835 () Int)

(assert (=> d!2393109 (= lt!2720729 e!4727835)))

(declare-fun c!1472614 () Bool)

(assert (=> d!2393109 (= c!1472614 ((_ is Nil!74938) (list!19483 (xs!19340 (right!57488 t!3624)))))))

(assert (=> d!2393109 (= (size!43711 (list!19483 (xs!19340 (right!57488 t!3624)))) lt!2720729)))

(declare-fun b!8025521 () Bool)

(assert (=> b!8025521 (= e!4727835 0)))

(declare-fun b!8025522 () Bool)

(assert (=> b!8025522 (= e!4727835 (+ 1 (size!43711 (t!390811 (list!19483 (xs!19340 (right!57488 t!3624)))))))))

(assert (= (and d!2393109 c!1472614) b!8025521))

(assert (= (and d!2393109 (not c!1472614)) b!8025522))

(declare-fun m!8387942 () Bool)

(assert (=> b!8025522 m!8387942))

(assert (=> b!8025341 d!2393109))

(assert (=> b!8025341 d!2393105))

(assert (=> b!8025357 d!2393069))

(declare-fun d!2393111 () Bool)

(declare-fun res!3173692 () Bool)

(declare-fun e!4727836 () Bool)

(assert (=> d!2393111 (=> (not res!3173692) (not e!4727836))))

(assert (=> d!2393111 (= res!3173692 (<= (size!43711 (list!19483 (xs!19340 (left!57158 (right!57488 t!3624))))) 512))))

(assert (=> d!2393111 (= (inv!96617 (left!57158 (right!57488 t!3624))) e!4727836)))

(declare-fun b!8025523 () Bool)

(declare-fun res!3173693 () Bool)

(assert (=> b!8025523 (=> (not res!3173693) (not e!4727836))))

(assert (=> b!8025523 (= res!3173693 (= (csize!32115 (left!57158 (right!57488 t!3624))) (size!43711 (list!19483 (xs!19340 (left!57158 (right!57488 t!3624)))))))))

(declare-fun b!8025524 () Bool)

(assert (=> b!8025524 (= e!4727836 (and (> (csize!32115 (left!57158 (right!57488 t!3624))) 0) (<= (csize!32115 (left!57158 (right!57488 t!3624))) 512)))))

(assert (= (and d!2393111 res!3173692) b!8025523))

(assert (= (and b!8025523 res!3173693) b!8025524))

(assert (=> d!2393111 m!8387924))

(assert (=> d!2393111 m!8387924))

(declare-fun m!8387944 () Bool)

(assert (=> d!2393111 m!8387944))

(assert (=> b!8025523 m!8387924))

(assert (=> b!8025523 m!8387924))

(assert (=> b!8025523 m!8387944))

(assert (=> b!8025371 d!2393111))

(declare-fun b!8025526 () Bool)

(declare-fun e!4727838 () List!75062)

(assert (=> b!8025526 (= e!4727838 (Cons!74938 (h!81386 (list!19482 (left!57158 (left!57158 t!3624)))) (++!18579 (t!390811 (list!19482 (left!57158 (left!57158 t!3624)))) (list!19482 (right!57488 (left!57158 t!3624))))))))

(declare-fun b!8025528 () Bool)

(declare-fun e!4727837 () Bool)

(declare-fun lt!2720730 () List!75062)

(assert (=> b!8025528 (= e!4727837 (or (not (= (list!19482 (right!57488 (left!57158 t!3624))) Nil!74938)) (= lt!2720730 (list!19482 (left!57158 (left!57158 t!3624))))))))

(declare-fun b!8025527 () Bool)

(declare-fun res!3173694 () Bool)

(assert (=> b!8025527 (=> (not res!3173694) (not e!4727837))))

(assert (=> b!8025527 (= res!3173694 (= (size!43711 lt!2720730) (+ (size!43711 (list!19482 (left!57158 (left!57158 t!3624)))) (size!43711 (list!19482 (right!57488 (left!57158 t!3624)))))))))

(declare-fun d!2393113 () Bool)

(assert (=> d!2393113 e!4727837))

(declare-fun res!3173695 () Bool)

(assert (=> d!2393113 (=> (not res!3173695) (not e!4727837))))

(assert (=> d!2393113 (= res!3173695 (= (content!15962 lt!2720730) ((_ map or) (content!15962 (list!19482 (left!57158 (left!57158 t!3624)))) (content!15962 (list!19482 (right!57488 (left!57158 t!3624)))))))))

(assert (=> d!2393113 (= lt!2720730 e!4727838)))

(declare-fun c!1472615 () Bool)

(assert (=> d!2393113 (= c!1472615 ((_ is Nil!74938) (list!19482 (left!57158 (left!57158 t!3624)))))))

(assert (=> d!2393113 (= (++!18579 (list!19482 (left!57158 (left!57158 t!3624))) (list!19482 (right!57488 (left!57158 t!3624)))) lt!2720730)))

(declare-fun b!8025525 () Bool)

(assert (=> b!8025525 (= e!4727838 (list!19482 (right!57488 (left!57158 t!3624))))))

(assert (= (and d!2393113 c!1472615) b!8025525))

(assert (= (and d!2393113 (not c!1472615)) b!8025526))

(assert (= (and d!2393113 res!3173695) b!8025527))

(assert (= (and b!8025527 res!3173694) b!8025528))

(assert (=> b!8025526 m!8387654))

(declare-fun m!8387946 () Bool)

(assert (=> b!8025526 m!8387946))

(declare-fun m!8387948 () Bool)

(assert (=> b!8025527 m!8387948))

(assert (=> b!8025527 m!8387652))

(declare-fun m!8387950 () Bool)

(assert (=> b!8025527 m!8387950))

(assert (=> b!8025527 m!8387654))

(declare-fun m!8387952 () Bool)

(assert (=> b!8025527 m!8387952))

(declare-fun m!8387954 () Bool)

(assert (=> d!2393113 m!8387954))

(assert (=> d!2393113 m!8387652))

(declare-fun m!8387956 () Bool)

(assert (=> d!2393113 m!8387956))

(assert (=> d!2393113 m!8387654))

(declare-fun m!8387958 () Bool)

(assert (=> d!2393113 m!8387958))

(assert (=> b!8025358 d!2393113))

(declare-fun b!8025529 () Bool)

(declare-fun e!4727839 () List!75062)

(assert (=> b!8025529 (= e!4727839 Nil!74938)))

(declare-fun b!8025530 () Bool)

(declare-fun e!4727840 () List!75062)

(assert (=> b!8025530 (= e!4727839 e!4727840)))

(declare-fun c!1472617 () Bool)

(assert (=> b!8025530 (= c!1472617 ((_ is Leaf!30519) (left!57158 (left!57158 t!3624))))))

(declare-fun d!2393115 () Bool)

(declare-fun c!1472616 () Bool)

(assert (=> d!2393115 (= c!1472616 ((_ is Empty!15942) (left!57158 (left!57158 t!3624))))))

(assert (=> d!2393115 (= (list!19482 (left!57158 (left!57158 t!3624))) e!4727839)))

(declare-fun b!8025532 () Bool)

(assert (=> b!8025532 (= e!4727840 (++!18579 (list!19482 (left!57158 (left!57158 (left!57158 t!3624)))) (list!19482 (right!57488 (left!57158 (left!57158 t!3624))))))))

(declare-fun b!8025531 () Bool)

(assert (=> b!8025531 (= e!4727840 (list!19483 (xs!19340 (left!57158 (left!57158 t!3624)))))))

(assert (= (and d!2393115 c!1472616) b!8025529))

(assert (= (and d!2393115 (not c!1472616)) b!8025530))

(assert (= (and b!8025530 c!1472617) b!8025531))

(assert (= (and b!8025530 (not c!1472617)) b!8025532))

(declare-fun m!8387960 () Bool)

(assert (=> b!8025532 m!8387960))

(declare-fun m!8387962 () Bool)

(assert (=> b!8025532 m!8387962))

(assert (=> b!8025532 m!8387960))

(assert (=> b!8025532 m!8387962))

(declare-fun m!8387964 () Bool)

(assert (=> b!8025532 m!8387964))

(assert (=> b!8025531 m!8387886))

(assert (=> b!8025358 d!2393115))

(declare-fun b!8025533 () Bool)

(declare-fun e!4727841 () List!75062)

(assert (=> b!8025533 (= e!4727841 Nil!74938)))

(declare-fun b!8025534 () Bool)

(declare-fun e!4727842 () List!75062)

(assert (=> b!8025534 (= e!4727841 e!4727842)))

(declare-fun c!1472619 () Bool)

(assert (=> b!8025534 (= c!1472619 ((_ is Leaf!30519) (right!57488 (left!57158 t!3624))))))

(declare-fun d!2393117 () Bool)

(declare-fun c!1472618 () Bool)

(assert (=> d!2393117 (= c!1472618 ((_ is Empty!15942) (right!57488 (left!57158 t!3624))))))

(assert (=> d!2393117 (= (list!19482 (right!57488 (left!57158 t!3624))) e!4727841)))

(declare-fun b!8025536 () Bool)

(assert (=> b!8025536 (= e!4727842 (++!18579 (list!19482 (left!57158 (right!57488 (left!57158 t!3624)))) (list!19482 (right!57488 (right!57488 (left!57158 t!3624))))))))

(declare-fun b!8025535 () Bool)

(assert (=> b!8025535 (= e!4727842 (list!19483 (xs!19340 (right!57488 (left!57158 t!3624)))))))

(assert (= (and d!2393117 c!1472618) b!8025533))

(assert (= (and d!2393117 (not c!1472618)) b!8025534))

(assert (= (and b!8025534 c!1472619) b!8025535))

(assert (= (and b!8025534 (not c!1472619)) b!8025536))

(declare-fun m!8387966 () Bool)

(assert (=> b!8025536 m!8387966))

(declare-fun m!8387968 () Bool)

(assert (=> b!8025536 m!8387968))

(assert (=> b!8025536 m!8387966))

(assert (=> b!8025536 m!8387968))

(declare-fun m!8387970 () Bool)

(assert (=> b!8025536 m!8387970))

(declare-fun m!8387972 () Bool)

(assert (=> b!8025535 m!8387972))

(assert (=> b!8025358 d!2393117))

(declare-fun d!2393119 () Bool)

(declare-fun lt!2720731 () Int)

(assert (=> d!2393119 (>= lt!2720731 0)))

(declare-fun e!4727843 () Int)

(assert (=> d!2393119 (= lt!2720731 e!4727843)))

(declare-fun c!1472620 () Bool)

(assert (=> d!2393119 (= c!1472620 ((_ is Nil!74938) (innerList!16030 (xs!19340 (right!57488 t!3624)))))))

(assert (=> d!2393119 (= (size!43711 (innerList!16030 (xs!19340 (right!57488 t!3624)))) lt!2720731)))

(declare-fun b!8025537 () Bool)

(assert (=> b!8025537 (= e!4727843 0)))

(declare-fun b!8025538 () Bool)

(assert (=> b!8025538 (= e!4727843 (+ 1 (size!43711 (t!390811 (innerList!16030 (xs!19340 (right!57488 t!3624)))))))))

(assert (= (and d!2393119 c!1472620) b!8025537))

(assert (= (and d!2393119 (not c!1472620)) b!8025538))

(declare-fun m!8387974 () Bool)

(assert (=> b!8025538 m!8387974))

(assert (=> d!2393015 d!2393119))

(declare-fun d!2393121 () Bool)

(declare-fun lt!2720732 () Int)

(assert (=> d!2393121 (>= lt!2720732 0)))

(declare-fun e!4727844 () Int)

(assert (=> d!2393121 (= lt!2720732 e!4727844)))

(declare-fun c!1472621 () Bool)

(assert (=> d!2393121 (= c!1472621 ((_ is Nil!74938) (list!19483 (xs!19340 t!3624))))))

(assert (=> d!2393121 (= (size!43711 (list!19483 (xs!19340 t!3624))) lt!2720732)))

(declare-fun b!8025539 () Bool)

(assert (=> b!8025539 (= e!4727844 0)))

(declare-fun b!8025540 () Bool)

(assert (=> b!8025540 (= e!4727844 (+ 1 (size!43711 (t!390811 (list!19483 (xs!19340 t!3624))))))))

(assert (= (and d!2393121 c!1472621) b!8025539))

(assert (= (and d!2393121 (not c!1472621)) b!8025540))

(declare-fun m!8387976 () Bool)

(assert (=> b!8025540 m!8387976))

(assert (=> d!2393023 d!2393121))

(assert (=> d!2393023 d!2392983))

(declare-fun d!2393123 () Bool)

(declare-fun c!1472622 () Bool)

(assert (=> d!2393123 (= c!1472622 ((_ is Node!15942) (left!57158 (right!57488 (left!57158 t!3624)))))))

(declare-fun e!4727845 () Bool)

(assert (=> d!2393123 (= (inv!96613 (left!57158 (right!57488 (left!57158 t!3624)))) e!4727845)))

(declare-fun b!8025541 () Bool)

(assert (=> b!8025541 (= e!4727845 (inv!96616 (left!57158 (right!57488 (left!57158 t!3624)))))))

(declare-fun b!8025542 () Bool)

(declare-fun e!4727846 () Bool)

(assert (=> b!8025542 (= e!4727845 e!4727846)))

(declare-fun res!3173696 () Bool)

(assert (=> b!8025542 (= res!3173696 (not ((_ is Leaf!30519) (left!57158 (right!57488 (left!57158 t!3624))))))))

(assert (=> b!8025542 (=> res!3173696 e!4727846)))

(declare-fun b!8025543 () Bool)

(assert (=> b!8025543 (= e!4727846 (inv!96617 (left!57158 (right!57488 (left!57158 t!3624)))))))

(assert (= (and d!2393123 c!1472622) b!8025541))

(assert (= (and d!2393123 (not c!1472622)) b!8025542))

(assert (= (and b!8025542 (not res!3173696)) b!8025543))

(declare-fun m!8387978 () Bool)

(assert (=> b!8025541 m!8387978))

(declare-fun m!8387980 () Bool)

(assert (=> b!8025543 m!8387980))

(assert (=> b!8025405 d!2393123))

(declare-fun d!2393125 () Bool)

(declare-fun c!1472623 () Bool)

(assert (=> d!2393125 (= c!1472623 ((_ is Node!15942) (right!57488 (right!57488 (left!57158 t!3624)))))))

(declare-fun e!4727847 () Bool)

(assert (=> d!2393125 (= (inv!96613 (right!57488 (right!57488 (left!57158 t!3624)))) e!4727847)))

(declare-fun b!8025544 () Bool)

(assert (=> b!8025544 (= e!4727847 (inv!96616 (right!57488 (right!57488 (left!57158 t!3624)))))))

(declare-fun b!8025545 () Bool)

(declare-fun e!4727848 () Bool)

(assert (=> b!8025545 (= e!4727847 e!4727848)))

(declare-fun res!3173697 () Bool)

(assert (=> b!8025545 (= res!3173697 (not ((_ is Leaf!30519) (right!57488 (right!57488 (left!57158 t!3624))))))))

(assert (=> b!8025545 (=> res!3173697 e!4727848)))

(declare-fun b!8025546 () Bool)

(assert (=> b!8025546 (= e!4727848 (inv!96617 (right!57488 (right!57488 (left!57158 t!3624)))))))

(assert (= (and d!2393125 c!1472623) b!8025544))

(assert (= (and d!2393125 (not c!1472623)) b!8025545))

(assert (= (and b!8025545 (not res!3173697)) b!8025546))

(declare-fun m!8387982 () Bool)

(assert (=> b!8025544 m!8387982))

(declare-fun m!8387984 () Bool)

(assert (=> b!8025546 m!8387984))

(assert (=> b!8025405 d!2393125))

(assert (=> d!2392989 d!2393109))

(assert (=> d!2392989 d!2393105))

(declare-fun d!2393127 () Bool)

(assert (=> d!2393127 (= (inv!96612 (xs!19340 (right!57488 (left!57158 t!3624)))) (<= (size!43711 (innerList!16030 (xs!19340 (right!57488 (left!57158 t!3624))))) 2147483647))))

(declare-fun bs!1971270 () Bool)

(assert (= bs!1971270 d!2393127))

(declare-fun m!8387986 () Bool)

(assert (=> bs!1971270 m!8387986))

(assert (=> b!8025406 d!2393127))

(declare-fun d!2393129 () Bool)

(declare-fun lt!2720733 () Int)

(assert (=> d!2393129 (>= lt!2720733 0)))

(declare-fun e!4727849 () Int)

(assert (=> d!2393129 (= lt!2720733 e!4727849)))

(declare-fun c!1472624 () Bool)

(assert (=> d!2393129 (= c!1472624 ((_ is Nil!74938) (innerList!16030 (xs!19340 (left!57158 t!3624)))))))

(assert (=> d!2393129 (= (size!43711 (innerList!16030 (xs!19340 (left!57158 t!3624)))) lt!2720733)))

(declare-fun b!8025547 () Bool)

(assert (=> b!8025547 (= e!4727849 0)))

(declare-fun b!8025548 () Bool)

(assert (=> b!8025548 (= e!4727849 (+ 1 (size!43711 (t!390811 (innerList!16030 (xs!19340 (left!57158 t!3624)))))))))

(assert (= (and d!2393129 c!1472624) b!8025547))

(assert (= (and d!2393129 (not c!1472624)) b!8025548))

(declare-fun m!8387988 () Bool)

(assert (=> b!8025548 m!8387988))

(assert (=> d!2392997 d!2393129))

(declare-fun d!2393131 () Bool)

(declare-fun c!1472627 () Bool)

(assert (=> d!2393131 (= c!1472627 ((_ is Nil!74938) lt!2720716))))

(declare-fun e!4727852 () (InoxSet T!148334))

(assert (=> d!2393131 (= (content!15962 lt!2720716) e!4727852)))

(declare-fun b!8025553 () Bool)

(assert (=> b!8025553 (= e!4727852 ((as const (Array T!148334 Bool)) false))))

(declare-fun b!8025554 () Bool)

(assert (=> b!8025554 (= e!4727852 ((_ map or) (store ((as const (Array T!148334 Bool)) false) (h!81386 lt!2720716) true) (content!15962 (t!390811 lt!2720716))))))

(assert (= (and d!2393131 c!1472627) b!8025553))

(assert (= (and d!2393131 (not c!1472627)) b!8025554))

(declare-fun m!8387990 () Bool)

(assert (=> b!8025554 m!8387990))

(declare-fun m!8387992 () Bool)

(assert (=> b!8025554 m!8387992))

(assert (=> d!2392991 d!2393131))

(declare-fun d!2393133 () Bool)

(declare-fun c!1472628 () Bool)

(assert (=> d!2393133 (= c!1472628 ((_ is Nil!74938) (list!19482 (left!57158 t!3624))))))

(declare-fun e!4727853 () (InoxSet T!148334))

(assert (=> d!2393133 (= (content!15962 (list!19482 (left!57158 t!3624))) e!4727853)))

(declare-fun b!8025555 () Bool)

(assert (=> b!8025555 (= e!4727853 ((as const (Array T!148334 Bool)) false))))

(declare-fun b!8025556 () Bool)

(assert (=> b!8025556 (= e!4727853 ((_ map or) (store ((as const (Array T!148334 Bool)) false) (h!81386 (list!19482 (left!57158 t!3624))) true) (content!15962 (t!390811 (list!19482 (left!57158 t!3624))))))))

(assert (= (and d!2393133 c!1472628) b!8025555))

(assert (= (and d!2393133 (not c!1472628)) b!8025556))

(declare-fun m!8387994 () Bool)

(assert (=> b!8025556 m!8387994))

(assert (=> b!8025556 m!8387898))

(assert (=> d!2392991 d!2393133))

(declare-fun d!2393135 () Bool)

(declare-fun c!1472629 () Bool)

(assert (=> d!2393135 (= c!1472629 ((_ is Nil!74938) (list!19482 (right!57488 t!3624))))))

(declare-fun e!4727854 () (InoxSet T!148334))

(assert (=> d!2393135 (= (content!15962 (list!19482 (right!57488 t!3624))) e!4727854)))

(declare-fun b!8025557 () Bool)

(assert (=> b!8025557 (= e!4727854 ((as const (Array T!148334 Bool)) false))))

(declare-fun b!8025558 () Bool)

(assert (=> b!8025558 (= e!4727854 ((_ map or) (store ((as const (Array T!148334 Bool)) false) (h!81386 (list!19482 (right!57488 t!3624))) true) (content!15962 (t!390811 (list!19482 (right!57488 t!3624))))))))

(assert (= (and d!2393135 c!1472629) b!8025557))

(assert (= (and d!2393135 (not c!1472629)) b!8025558))

(declare-fun m!8387996 () Bool)

(assert (=> b!8025558 m!8387996))

(declare-fun m!8387998 () Bool)

(assert (=> b!8025558 m!8387998))

(assert (=> d!2392991 d!2393135))

(declare-fun d!2393137 () Bool)

(declare-fun lt!2720734 () Int)

(assert (=> d!2393137 (>= lt!2720734 0)))

(declare-fun e!4727855 () Int)

(assert (=> d!2393137 (= lt!2720734 e!4727855)))

(declare-fun c!1472630 () Bool)

(assert (=> d!2393137 (= c!1472630 ((_ is Nil!74938) (t!390811 (t!390811 (list!19482 t!3624)))))))

(assert (=> d!2393137 (= (size!43711 (t!390811 (t!390811 (list!19482 t!3624)))) lt!2720734)))

(declare-fun b!8025559 () Bool)

(assert (=> b!8025559 (= e!4727855 0)))

(declare-fun b!8025560 () Bool)

(assert (=> b!8025560 (= e!4727855 (+ 1 (size!43711 (t!390811 (t!390811 (t!390811 (list!19482 t!3624)))))))))

(assert (= (and d!2393137 c!1472630) b!8025559))

(assert (= (and d!2393137 (not c!1472630)) b!8025560))

(declare-fun m!8388000 () Bool)

(assert (=> b!8025560 m!8388000))

(assert (=> b!8025327 d!2393137))

(assert (=> b!8025315 d!2392999))

(assert (=> b!8025315 d!2393001))

(assert (=> b!8025391 d!2393121))

(assert (=> b!8025391 d!2392983))

(declare-fun d!2393139 () Bool)

(declare-fun c!1472631 () Bool)

(assert (=> d!2393139 (= c!1472631 ((_ is Node!15942) (left!57158 (right!57488 (right!57488 t!3624)))))))

(declare-fun e!4727856 () Bool)

(assert (=> d!2393139 (= (inv!96613 (left!57158 (right!57488 (right!57488 t!3624)))) e!4727856)))

(declare-fun b!8025561 () Bool)

(assert (=> b!8025561 (= e!4727856 (inv!96616 (left!57158 (right!57488 (right!57488 t!3624)))))))

(declare-fun b!8025562 () Bool)

(declare-fun e!4727857 () Bool)

(assert (=> b!8025562 (= e!4727856 e!4727857)))

(declare-fun res!3173698 () Bool)

(assert (=> b!8025562 (= res!3173698 (not ((_ is Leaf!30519) (left!57158 (right!57488 (right!57488 t!3624))))))))

(assert (=> b!8025562 (=> res!3173698 e!4727857)))

(declare-fun b!8025563 () Bool)

(assert (=> b!8025563 (= e!4727857 (inv!96617 (left!57158 (right!57488 (right!57488 t!3624)))))))

(assert (= (and d!2393139 c!1472631) b!8025561))

(assert (= (and d!2393139 (not c!1472631)) b!8025562))

(assert (= (and b!8025562 (not res!3173698)) b!8025563))

(declare-fun m!8388002 () Bool)

(assert (=> b!8025561 m!8388002))

(declare-fun m!8388004 () Bool)

(assert (=> b!8025563 m!8388004))

(assert (=> b!8025396 d!2393139))

(declare-fun d!2393141 () Bool)

(declare-fun c!1472632 () Bool)

(assert (=> d!2393141 (= c!1472632 ((_ is Node!15942) (right!57488 (right!57488 (right!57488 t!3624)))))))

(declare-fun e!4727858 () Bool)

(assert (=> d!2393141 (= (inv!96613 (right!57488 (right!57488 (right!57488 t!3624)))) e!4727858)))

(declare-fun b!8025564 () Bool)

(assert (=> b!8025564 (= e!4727858 (inv!96616 (right!57488 (right!57488 (right!57488 t!3624)))))))

(declare-fun b!8025565 () Bool)

(declare-fun e!4727859 () Bool)

(assert (=> b!8025565 (= e!4727858 e!4727859)))

(declare-fun res!3173699 () Bool)

(assert (=> b!8025565 (= res!3173699 (not ((_ is Leaf!30519) (right!57488 (right!57488 (right!57488 t!3624))))))))

(assert (=> b!8025565 (=> res!3173699 e!4727859)))

(declare-fun b!8025566 () Bool)

(assert (=> b!8025566 (= e!4727859 (inv!96617 (right!57488 (right!57488 (right!57488 t!3624)))))))

(assert (= (and d!2393141 c!1472632) b!8025564))

(assert (= (and d!2393141 (not c!1472632)) b!8025565))

(assert (= (and b!8025565 (not res!3173699)) b!8025566))

(declare-fun m!8388006 () Bool)

(assert (=> b!8025564 m!8388006))

(declare-fun m!8388008 () Bool)

(assert (=> b!8025566 m!8388008))

(assert (=> b!8025396 d!2393141))

(declare-fun d!2393143 () Bool)

(declare-fun lt!2720737 () Int)

(assert (=> d!2393143 (= lt!2720737 (size!43711 (list!19482 (left!57158 (left!57158 t!3624)))))))

(assert (=> d!2393143 (= lt!2720737 (ite ((_ is Empty!15942) (left!57158 (left!57158 t!3624))) 0 (ite ((_ is Leaf!30519) (left!57158 (left!57158 t!3624))) (csize!32115 (left!57158 (left!57158 t!3624))) (csize!32114 (left!57158 (left!57158 t!3624))))))))

(assert (=> d!2393143 (= (size!43712 (left!57158 (left!57158 t!3624))) lt!2720737)))

(declare-fun bs!1971271 () Bool)

(assert (= bs!1971271 d!2393143))

(assert (=> bs!1971271 m!8387652))

(assert (=> bs!1971271 m!8387652))

(assert (=> bs!1971271 m!8387950))

(assert (=> d!2393017 d!2393143))

(declare-fun d!2393145 () Bool)

(declare-fun lt!2720738 () Int)

(assert (=> d!2393145 (= lt!2720738 (size!43711 (list!19482 (right!57488 (left!57158 t!3624)))))))

(assert (=> d!2393145 (= lt!2720738 (ite ((_ is Empty!15942) (right!57488 (left!57158 t!3624))) 0 (ite ((_ is Leaf!30519) (right!57488 (left!57158 t!3624))) (csize!32115 (right!57488 (left!57158 t!3624))) (csize!32114 (right!57488 (left!57158 t!3624))))))))

(assert (=> d!2393145 (= (size!43712 (right!57488 (left!57158 t!3624))) lt!2720738)))

(declare-fun bs!1971272 () Bool)

(assert (= bs!1971272 d!2393145))

(assert (=> bs!1971272 m!8387654))

(assert (=> bs!1971272 m!8387654))

(assert (=> bs!1971272 m!8387952))

(assert (=> d!2393017 d!2393145))

(declare-fun d!2393147 () Bool)

(declare-fun res!3173700 () Bool)

(declare-fun e!4727860 () Bool)

(assert (=> d!2393147 (=> (not res!3173700) (not e!4727860))))

(assert (=> d!2393147 (= res!3173700 (= (csize!32114 (right!57488 (left!57158 t!3624))) (+ (size!43712 (left!57158 (right!57488 (left!57158 t!3624)))) (size!43712 (right!57488 (right!57488 (left!57158 t!3624)))))))))

(assert (=> d!2393147 (= (inv!96616 (right!57488 (left!57158 t!3624))) e!4727860)))

(declare-fun b!8025567 () Bool)

(declare-fun res!3173701 () Bool)

(assert (=> b!8025567 (=> (not res!3173701) (not e!4727860))))

(assert (=> b!8025567 (= res!3173701 (and (not (= (left!57158 (right!57488 (left!57158 t!3624))) Empty!15942)) (not (= (right!57488 (right!57488 (left!57158 t!3624))) Empty!15942))))))

(declare-fun b!8025568 () Bool)

(declare-fun res!3173702 () Bool)

(assert (=> b!8025568 (=> (not res!3173702) (not e!4727860))))

(assert (=> b!8025568 (= res!3173702 (= (cheight!16153 (right!57488 (left!57158 t!3624))) (+ (max!0 (height!2244 (left!57158 (right!57488 (left!57158 t!3624)))) (height!2244 (right!57488 (right!57488 (left!57158 t!3624))))) 1)))))

(declare-fun b!8025569 () Bool)

(assert (=> b!8025569 (= e!4727860 (<= 0 (cheight!16153 (right!57488 (left!57158 t!3624)))))))

(assert (= (and d!2393147 res!3173700) b!8025567))

(assert (= (and b!8025567 res!3173701) b!8025568))

(assert (= (and b!8025568 res!3173702) b!8025569))

(declare-fun m!8388010 () Bool)

(assert (=> d!2393147 m!8388010))

(declare-fun m!8388012 () Bool)

(assert (=> d!2393147 m!8388012))

(declare-fun m!8388014 () Bool)

(assert (=> b!8025568 m!8388014))

(declare-fun m!8388016 () Bool)

(assert (=> b!8025568 m!8388016))

(assert (=> b!8025568 m!8388014))

(assert (=> b!8025568 m!8388016))

(declare-fun m!8388018 () Bool)

(assert (=> b!8025568 m!8388018))

(assert (=> b!8025366 d!2393147))

(declare-fun d!2393149 () Bool)

(declare-fun lt!2720739 () Int)

(assert (=> d!2393149 (= lt!2720739 (size!43711 (list!19482 (left!57158 t!3624))))))

(assert (=> d!2393149 (= lt!2720739 (ite ((_ is Empty!15942) (left!57158 t!3624)) 0 (ite ((_ is Leaf!30519) (left!57158 t!3624)) (csize!32115 (left!57158 t!3624)) (csize!32114 (left!57158 t!3624)))))))

(assert (=> d!2393149 (= (size!43712 (left!57158 t!3624)) lt!2720739)))

(declare-fun bs!1971273 () Bool)

(assert (= bs!1971273 d!2393149))

(assert (=> bs!1971273 m!8387566))

(assert (=> bs!1971273 m!8387566))

(assert (=> bs!1971273 m!8387642))

(assert (=> d!2393009 d!2393149))

(declare-fun d!2393151 () Bool)

(declare-fun lt!2720740 () Int)

(assert (=> d!2393151 (= lt!2720740 (size!43711 (list!19482 (right!57488 t!3624))))))

(assert (=> d!2393151 (= lt!2720740 (ite ((_ is Empty!15942) (right!57488 t!3624)) 0 (ite ((_ is Leaf!30519) (right!57488 t!3624)) (csize!32115 (right!57488 t!3624)) (csize!32114 (right!57488 t!3624)))))))

(assert (=> d!2393151 (= (size!43712 (right!57488 t!3624)) lt!2720740)))

(declare-fun bs!1971274 () Bool)

(assert (= bs!1971274 d!2393151))

(assert (=> bs!1971274 m!8387568))

(assert (=> bs!1971274 m!8387568))

(assert (=> bs!1971274 m!8387644))

(assert (=> d!2393009 d!2393151))

(declare-fun d!2393153 () Bool)

(declare-fun res!3173703 () Bool)

(declare-fun e!4727861 () Bool)

(assert (=> d!2393153 (=> (not res!3173703) (not e!4727861))))

(assert (=> d!2393153 (= res!3173703 (<= (size!43711 (list!19483 (xs!19340 (right!57488 (left!57158 t!3624))))) 512))))

(assert (=> d!2393153 (= (inv!96617 (right!57488 (left!57158 t!3624))) e!4727861)))

(declare-fun b!8025570 () Bool)

(declare-fun res!3173704 () Bool)

(assert (=> b!8025570 (=> (not res!3173704) (not e!4727861))))

(assert (=> b!8025570 (= res!3173704 (= (csize!32115 (right!57488 (left!57158 t!3624))) (size!43711 (list!19483 (xs!19340 (right!57488 (left!57158 t!3624)))))))))

(declare-fun b!8025571 () Bool)

(assert (=> b!8025571 (= e!4727861 (and (> (csize!32115 (right!57488 (left!57158 t!3624))) 0) (<= (csize!32115 (right!57488 (left!57158 t!3624))) 512)))))

(assert (= (and d!2393153 res!3173703) b!8025570))

(assert (= (and b!8025570 res!3173704) b!8025571))

(assert (=> d!2393153 m!8387972))

(assert (=> d!2393153 m!8387972))

(declare-fun m!8388020 () Bool)

(assert (=> d!2393153 m!8388020))

(assert (=> b!8025570 m!8387972))

(assert (=> b!8025570 m!8387972))

(assert (=> b!8025570 m!8388020))

(assert (=> b!8025368 d!2393153))

(declare-fun d!2393155 () Bool)

(declare-fun c!1472633 () Bool)

(assert (=> d!2393155 (= c!1472633 ((_ is Node!15942) (left!57158 (left!57158 (left!57158 t!3624)))))))

(declare-fun e!4727862 () Bool)

(assert (=> d!2393155 (= (inv!96613 (left!57158 (left!57158 (left!57158 t!3624)))) e!4727862)))

(declare-fun b!8025572 () Bool)

(assert (=> b!8025572 (= e!4727862 (inv!96616 (left!57158 (left!57158 (left!57158 t!3624)))))))

(declare-fun b!8025573 () Bool)

(declare-fun e!4727863 () Bool)

(assert (=> b!8025573 (= e!4727862 e!4727863)))

(declare-fun res!3173705 () Bool)

(assert (=> b!8025573 (= res!3173705 (not ((_ is Leaf!30519) (left!57158 (left!57158 (left!57158 t!3624))))))))

(assert (=> b!8025573 (=> res!3173705 e!4727863)))

(declare-fun b!8025574 () Bool)

(assert (=> b!8025574 (= e!4727863 (inv!96617 (left!57158 (left!57158 (left!57158 t!3624)))))))

(assert (= (and d!2393155 c!1472633) b!8025572))

(assert (= (and d!2393155 (not c!1472633)) b!8025573))

(assert (= (and b!8025573 (not res!3173705)) b!8025574))

(declare-fun m!8388022 () Bool)

(assert (=> b!8025572 m!8388022))

(declare-fun m!8388024 () Bool)

(assert (=> b!8025574 m!8388024))

(assert (=> b!8025402 d!2393155))

(declare-fun d!2393157 () Bool)

(declare-fun c!1472634 () Bool)

(assert (=> d!2393157 (= c!1472634 ((_ is Node!15942) (right!57488 (left!57158 (left!57158 t!3624)))))))

(declare-fun e!4727864 () Bool)

(assert (=> d!2393157 (= (inv!96613 (right!57488 (left!57158 (left!57158 t!3624)))) e!4727864)))

(declare-fun b!8025575 () Bool)

(assert (=> b!8025575 (= e!4727864 (inv!96616 (right!57488 (left!57158 (left!57158 t!3624)))))))

(declare-fun b!8025576 () Bool)

(declare-fun e!4727865 () Bool)

(assert (=> b!8025576 (= e!4727864 e!4727865)))

(declare-fun res!3173706 () Bool)

(assert (=> b!8025576 (= res!3173706 (not ((_ is Leaf!30519) (right!57488 (left!57158 (left!57158 t!3624))))))))

(assert (=> b!8025576 (=> res!3173706 e!4727865)))

(declare-fun b!8025577 () Bool)

(assert (=> b!8025577 (= e!4727865 (inv!96617 (right!57488 (left!57158 (left!57158 t!3624)))))))

(assert (= (and d!2393157 c!1472634) b!8025575))

(assert (= (and d!2393157 (not c!1472634)) b!8025576))

(assert (= (and b!8025576 (not res!3173706)) b!8025577))

(declare-fun m!8388026 () Bool)

(assert (=> b!8025575 m!8388026))

(declare-fun m!8388028 () Bool)

(assert (=> b!8025577 m!8388028))

(assert (=> b!8025402 d!2393157))

(declare-fun d!2393159 () Bool)

(assert (=> d!2393159 (= (inv!96612 (xs!19340 (right!57488 (right!57488 t!3624)))) (<= (size!43711 (innerList!16030 (xs!19340 (right!57488 (right!57488 t!3624))))) 2147483647))))

(declare-fun bs!1971275 () Bool)

(assert (= bs!1971275 d!2393159))

(declare-fun m!8388030 () Bool)

(assert (=> bs!1971275 m!8388030))

(assert (=> b!8025397 d!2393159))

(declare-fun d!2393161 () Bool)

(declare-fun lt!2720741 () Int)

(assert (=> d!2393161 (>= lt!2720741 0)))

(declare-fun e!4727866 () Int)

(assert (=> d!2393161 (= lt!2720741 e!4727866)))

(declare-fun c!1472635 () Bool)

(assert (=> d!2393161 (= c!1472635 ((_ is Nil!74938) (t!390811 (innerList!16030 (xs!19340 t!3624)))))))

(assert (=> d!2393161 (= (size!43711 (t!390811 (innerList!16030 (xs!19340 t!3624)))) lt!2720741)))

(declare-fun b!8025578 () Bool)

(assert (=> b!8025578 (= e!4727866 0)))

(declare-fun b!8025579 () Bool)

(assert (=> b!8025579 (= e!4727866 (+ 1 (size!43711 (t!390811 (t!390811 (innerList!16030 (xs!19340 t!3624)))))))))

(assert (= (and d!2393161 c!1472635) b!8025578))

(assert (= (and d!2393161 (not c!1472635)) b!8025579))

(declare-fun m!8388032 () Bool)

(assert (=> b!8025579 m!8388032))

(assert (=> b!8025388 d!2393161))

(declare-fun d!2393163 () Bool)

(assert (=> d!2393163 (= (inv!96612 (xs!19340 (left!57158 (left!57158 t!3624)))) (<= (size!43711 (innerList!16030 (xs!19340 (left!57158 (left!57158 t!3624))))) 2147483647))))

(declare-fun bs!1971276 () Bool)

(assert (= bs!1971276 d!2393163))

(declare-fun m!8388034 () Bool)

(assert (=> bs!1971276 m!8388034))

(assert (=> b!8025403 d!2393163))

(declare-fun d!2393165 () Bool)

(declare-fun lt!2720742 () Int)

(assert (=> d!2393165 (= lt!2720742 (size!43711 (list!19482 (left!57158 (right!57488 t!3624)))))))

(assert (=> d!2393165 (= lt!2720742 (ite ((_ is Empty!15942) (left!57158 (right!57488 t!3624))) 0 (ite ((_ is Leaf!30519) (left!57158 (right!57488 t!3624))) (csize!32115 (left!57158 (right!57488 t!3624))) (csize!32114 (left!57158 (right!57488 t!3624))))))))

(assert (=> d!2393165 (= (size!43712 (left!57158 (right!57488 t!3624))) lt!2720742)))

(declare-fun bs!1971277 () Bool)

(assert (= bs!1971277 d!2393165))

(assert (=> bs!1971277 m!8387660))

(assert (=> bs!1971277 m!8387660))

(assert (=> bs!1971277 m!8387908))

(assert (=> d!2392987 d!2393165))

(declare-fun d!2393167 () Bool)

(declare-fun lt!2720743 () Int)

(assert (=> d!2393167 (= lt!2720743 (size!43711 (list!19482 (right!57488 (right!57488 t!3624)))))))

(assert (=> d!2393167 (= lt!2720743 (ite ((_ is Empty!15942) (right!57488 (right!57488 t!3624))) 0 (ite ((_ is Leaf!30519) (right!57488 (right!57488 t!3624))) (csize!32115 (right!57488 (right!57488 t!3624))) (csize!32114 (right!57488 (right!57488 t!3624))))))))

(assert (=> d!2393167 (= (size!43712 (right!57488 (right!57488 t!3624))) lt!2720743)))

(declare-fun bs!1971278 () Bool)

(assert (= bs!1971278 d!2393167))

(assert (=> bs!1971278 m!8387662))

(assert (=> bs!1971278 m!8387662))

(assert (=> bs!1971278 m!8387910))

(assert (=> d!2392987 d!2393167))

(declare-fun tp!2401810 () Bool)

(declare-fun e!4727868 () Bool)

(declare-fun tp!2401808 () Bool)

(declare-fun b!8025580 () Bool)

(assert (=> b!8025580 (= e!4727868 (and (inv!96613 (left!57158 (left!57158 (right!57488 (right!57488 t!3624))))) tp!2401810 (inv!96613 (right!57488 (left!57158 (right!57488 (right!57488 t!3624))))) tp!2401808))))

(declare-fun b!8025582 () Bool)

(declare-fun e!4727867 () Bool)

(declare-fun tp!2401809 () Bool)

(assert (=> b!8025582 (= e!4727867 tp!2401809)))

(declare-fun b!8025581 () Bool)

(assert (=> b!8025581 (= e!4727868 (and (inv!96612 (xs!19340 (left!57158 (right!57488 (right!57488 t!3624))))) e!4727867))))

(assert (=> b!8025396 (= tp!2401783 (and (inv!96613 (left!57158 (right!57488 (right!57488 t!3624)))) e!4727868))))

(assert (= (and b!8025396 ((_ is Node!15942) (left!57158 (right!57488 (right!57488 t!3624))))) b!8025580))

(assert (= b!8025581 b!8025582))

(assert (= (and b!8025396 ((_ is Leaf!30519) (left!57158 (right!57488 (right!57488 t!3624))))) b!8025581))

(declare-fun m!8388036 () Bool)

(assert (=> b!8025580 m!8388036))

(declare-fun m!8388038 () Bool)

(assert (=> b!8025580 m!8388038))

(declare-fun m!8388040 () Bool)

(assert (=> b!8025581 m!8388040))

(assert (=> b!8025396 m!8387726))

(declare-fun tp!2401813 () Bool)

(declare-fun b!8025583 () Bool)

(declare-fun tp!2401811 () Bool)

(declare-fun e!4727870 () Bool)

(assert (=> b!8025583 (= e!4727870 (and (inv!96613 (left!57158 (right!57488 (right!57488 (right!57488 t!3624))))) tp!2401813 (inv!96613 (right!57488 (right!57488 (right!57488 (right!57488 t!3624))))) tp!2401811))))

(declare-fun b!8025585 () Bool)

(declare-fun e!4727869 () Bool)

(declare-fun tp!2401812 () Bool)

(assert (=> b!8025585 (= e!4727869 tp!2401812)))

(declare-fun b!8025584 () Bool)

(assert (=> b!8025584 (= e!4727870 (and (inv!96612 (xs!19340 (right!57488 (right!57488 (right!57488 t!3624))))) e!4727869))))

(assert (=> b!8025396 (= tp!2401781 (and (inv!96613 (right!57488 (right!57488 (right!57488 t!3624)))) e!4727870))))

(assert (= (and b!8025396 ((_ is Node!15942) (right!57488 (right!57488 (right!57488 t!3624))))) b!8025583))

(assert (= b!8025584 b!8025585))

(assert (= (and b!8025396 ((_ is Leaf!30519) (right!57488 (right!57488 (right!57488 t!3624))))) b!8025584))

(declare-fun m!8388042 () Bool)

(assert (=> b!8025583 m!8388042))

(declare-fun m!8388044 () Bool)

(assert (=> b!8025583 m!8388044))

(declare-fun m!8388046 () Bool)

(assert (=> b!8025584 m!8388046))

(assert (=> b!8025396 m!8387728))

(declare-fun b!8025586 () Bool)

(declare-fun e!4727871 () Bool)

(declare-fun tp!2401814 () Bool)

(assert (=> b!8025586 (= e!4727871 (and tp_is_empty!54203 tp!2401814))))

(assert (=> b!8025399 (= tp!2401784 e!4727871)))

(assert (= (and b!8025399 ((_ is Cons!74938) (t!390811 (innerList!16030 (xs!19340 (left!57158 t!3624)))))) b!8025586))

(declare-fun tp!2401817 () Bool)

(declare-fun e!4727873 () Bool)

(declare-fun b!8025587 () Bool)

(declare-fun tp!2401815 () Bool)

(assert (=> b!8025587 (= e!4727873 (and (inv!96613 (left!57158 (left!57158 (right!57488 (left!57158 t!3624))))) tp!2401817 (inv!96613 (right!57488 (left!57158 (right!57488 (left!57158 t!3624))))) tp!2401815))))

(declare-fun b!8025589 () Bool)

(declare-fun e!4727872 () Bool)

(declare-fun tp!2401816 () Bool)

(assert (=> b!8025589 (= e!4727872 tp!2401816)))

(declare-fun b!8025588 () Bool)

(assert (=> b!8025588 (= e!4727873 (and (inv!96612 (xs!19340 (left!57158 (right!57488 (left!57158 t!3624))))) e!4727872))))

(assert (=> b!8025405 (= tp!2401792 (and (inv!96613 (left!57158 (right!57488 (left!57158 t!3624)))) e!4727873))))

(assert (= (and b!8025405 ((_ is Node!15942) (left!57158 (right!57488 (left!57158 t!3624))))) b!8025587))

(assert (= b!8025588 b!8025589))

(assert (= (and b!8025405 ((_ is Leaf!30519) (left!57158 (right!57488 (left!57158 t!3624))))) b!8025588))

(declare-fun m!8388048 () Bool)

(assert (=> b!8025587 m!8388048))

(declare-fun m!8388050 () Bool)

(assert (=> b!8025587 m!8388050))

(declare-fun m!8388052 () Bool)

(assert (=> b!8025588 m!8388052))

(assert (=> b!8025405 m!8387738))

(declare-fun tp!2401820 () Bool)

(declare-fun e!4727875 () Bool)

(declare-fun tp!2401818 () Bool)

(declare-fun b!8025590 () Bool)

(assert (=> b!8025590 (= e!4727875 (and (inv!96613 (left!57158 (right!57488 (right!57488 (left!57158 t!3624))))) tp!2401820 (inv!96613 (right!57488 (right!57488 (right!57488 (left!57158 t!3624))))) tp!2401818))))

(declare-fun b!8025592 () Bool)

(declare-fun e!4727874 () Bool)

(declare-fun tp!2401819 () Bool)

(assert (=> b!8025592 (= e!4727874 tp!2401819)))

(declare-fun b!8025591 () Bool)

(assert (=> b!8025591 (= e!4727875 (and (inv!96612 (xs!19340 (right!57488 (right!57488 (left!57158 t!3624))))) e!4727874))))

(assert (=> b!8025405 (= tp!2401790 (and (inv!96613 (right!57488 (right!57488 (left!57158 t!3624)))) e!4727875))))

(assert (= (and b!8025405 ((_ is Node!15942) (right!57488 (right!57488 (left!57158 t!3624))))) b!8025590))

(assert (= b!8025591 b!8025592))

(assert (= (and b!8025405 ((_ is Leaf!30519) (right!57488 (right!57488 (left!57158 t!3624))))) b!8025591))

(declare-fun m!8388054 () Bool)

(assert (=> b!8025590 m!8388054))

(declare-fun m!8388056 () Bool)

(assert (=> b!8025590 m!8388056))

(declare-fun m!8388058 () Bool)

(assert (=> b!8025591 m!8388058))

(assert (=> b!8025405 m!8387740))

(declare-fun tp!2401821 () Bool)

(declare-fun b!8025593 () Bool)

(declare-fun e!4727877 () Bool)

(declare-fun tp!2401823 () Bool)

(assert (=> b!8025593 (= e!4727877 (and (inv!96613 (left!57158 (left!57158 (left!57158 (left!57158 t!3624))))) tp!2401823 (inv!96613 (right!57488 (left!57158 (left!57158 (left!57158 t!3624))))) tp!2401821))))

(declare-fun b!8025595 () Bool)

(declare-fun e!4727876 () Bool)

(declare-fun tp!2401822 () Bool)

(assert (=> b!8025595 (= e!4727876 tp!2401822)))

(declare-fun b!8025594 () Bool)

(assert (=> b!8025594 (= e!4727877 (and (inv!96612 (xs!19340 (left!57158 (left!57158 (left!57158 t!3624))))) e!4727876))))

(assert (=> b!8025402 (= tp!2401789 (and (inv!96613 (left!57158 (left!57158 (left!57158 t!3624)))) e!4727877))))

(assert (= (and b!8025402 ((_ is Node!15942) (left!57158 (left!57158 (left!57158 t!3624))))) b!8025593))

(assert (= b!8025594 b!8025595))

(assert (= (and b!8025402 ((_ is Leaf!30519) (left!57158 (left!57158 (left!57158 t!3624))))) b!8025594))

(declare-fun m!8388060 () Bool)

(assert (=> b!8025593 m!8388060))

(declare-fun m!8388062 () Bool)

(assert (=> b!8025593 m!8388062))

(declare-fun m!8388064 () Bool)

(assert (=> b!8025594 m!8388064))

(assert (=> b!8025402 m!8387732))

(declare-fun tp!2401824 () Bool)

(declare-fun e!4727879 () Bool)

(declare-fun tp!2401826 () Bool)

(declare-fun b!8025596 () Bool)

(assert (=> b!8025596 (= e!4727879 (and (inv!96613 (left!57158 (right!57488 (left!57158 (left!57158 t!3624))))) tp!2401826 (inv!96613 (right!57488 (right!57488 (left!57158 (left!57158 t!3624))))) tp!2401824))))

(declare-fun b!8025598 () Bool)

(declare-fun e!4727878 () Bool)

(declare-fun tp!2401825 () Bool)

(assert (=> b!8025598 (= e!4727878 tp!2401825)))

(declare-fun b!8025597 () Bool)

(assert (=> b!8025597 (= e!4727879 (and (inv!96612 (xs!19340 (right!57488 (left!57158 (left!57158 t!3624))))) e!4727878))))

(assert (=> b!8025402 (= tp!2401787 (and (inv!96613 (right!57488 (left!57158 (left!57158 t!3624)))) e!4727879))))

(assert (= (and b!8025402 ((_ is Node!15942) (right!57488 (left!57158 (left!57158 t!3624))))) b!8025596))

(assert (= b!8025597 b!8025598))

(assert (= (and b!8025402 ((_ is Leaf!30519) (right!57488 (left!57158 (left!57158 t!3624))))) b!8025597))

(declare-fun m!8388066 () Bool)

(assert (=> b!8025596 m!8388066))

(declare-fun m!8388068 () Bool)

(assert (=> b!8025596 m!8388068))

(declare-fun m!8388070 () Bool)

(assert (=> b!8025597 m!8388070))

(assert (=> b!8025402 m!8387734))

(declare-fun b!8025599 () Bool)

(declare-fun e!4727880 () Bool)

(declare-fun tp!2401827 () Bool)

(assert (=> b!8025599 (= e!4727880 (and tp_is_empty!54203 tp!2401827))))

(assert (=> b!8025407 (= tp!2401791 e!4727880)))

(assert (= (and b!8025407 ((_ is Cons!74938) (innerList!16030 (xs!19340 (right!57488 (left!57158 t!3624)))))) b!8025599))

(declare-fun b!8025600 () Bool)

(declare-fun e!4727881 () Bool)

(declare-fun tp!2401828 () Bool)

(assert (=> b!8025600 (= e!4727881 (and tp_is_empty!54203 tp!2401828))))

(assert (=> b!8025401 (= tp!2401786 e!4727881)))

(assert (= (and b!8025401 ((_ is Cons!74938) (t!390811 (innerList!16030 (xs!19340 (right!57488 t!3624)))))) b!8025600))

(declare-fun b!8025601 () Bool)

(declare-fun tp!2401829 () Bool)

(declare-fun e!4727883 () Bool)

(declare-fun tp!2401831 () Bool)

(assert (=> b!8025601 (= e!4727883 (and (inv!96613 (left!57158 (left!57158 (left!57158 (right!57488 t!3624))))) tp!2401831 (inv!96613 (right!57488 (left!57158 (left!57158 (right!57488 t!3624))))) tp!2401829))))

(declare-fun b!8025603 () Bool)

(declare-fun e!4727882 () Bool)

(declare-fun tp!2401830 () Bool)

(assert (=> b!8025603 (= e!4727882 tp!2401830)))

(declare-fun b!8025602 () Bool)

(assert (=> b!8025602 (= e!4727883 (and (inv!96612 (xs!19340 (left!57158 (left!57158 (right!57488 t!3624))))) e!4727882))))

(assert (=> b!8025393 (= tp!2401780 (and (inv!96613 (left!57158 (left!57158 (right!57488 t!3624)))) e!4727883))))

(assert (= (and b!8025393 ((_ is Node!15942) (left!57158 (left!57158 (right!57488 t!3624))))) b!8025601))

(assert (= b!8025602 b!8025603))

(assert (= (and b!8025393 ((_ is Leaf!30519) (left!57158 (left!57158 (right!57488 t!3624))))) b!8025602))

(declare-fun m!8388072 () Bool)

(assert (=> b!8025601 m!8388072))

(declare-fun m!8388074 () Bool)

(assert (=> b!8025601 m!8388074))

(declare-fun m!8388076 () Bool)

(assert (=> b!8025602 m!8388076))

(assert (=> b!8025393 m!8387720))

(declare-fun tp!2401832 () Bool)

(declare-fun b!8025604 () Bool)

(declare-fun tp!2401834 () Bool)

(declare-fun e!4727885 () Bool)

(assert (=> b!8025604 (= e!4727885 (and (inv!96613 (left!57158 (right!57488 (left!57158 (right!57488 t!3624))))) tp!2401834 (inv!96613 (right!57488 (right!57488 (left!57158 (right!57488 t!3624))))) tp!2401832))))

(declare-fun b!8025606 () Bool)

(declare-fun e!4727884 () Bool)

(declare-fun tp!2401833 () Bool)

(assert (=> b!8025606 (= e!4727884 tp!2401833)))

(declare-fun b!8025605 () Bool)

(assert (=> b!8025605 (= e!4727885 (and (inv!96612 (xs!19340 (right!57488 (left!57158 (right!57488 t!3624))))) e!4727884))))

(assert (=> b!8025393 (= tp!2401778 (and (inv!96613 (right!57488 (left!57158 (right!57488 t!3624)))) e!4727885))))

(assert (= (and b!8025393 ((_ is Node!15942) (right!57488 (left!57158 (right!57488 t!3624))))) b!8025604))

(assert (= b!8025605 b!8025606))

(assert (= (and b!8025393 ((_ is Leaf!30519) (right!57488 (left!57158 (right!57488 t!3624))))) b!8025605))

(declare-fun m!8388078 () Bool)

(assert (=> b!8025604 m!8388078))

(declare-fun m!8388080 () Bool)

(assert (=> b!8025604 m!8388080))

(declare-fun m!8388082 () Bool)

(assert (=> b!8025605 m!8388082))

(assert (=> b!8025393 m!8387722))

(declare-fun b!8025607 () Bool)

(declare-fun e!4727886 () Bool)

(declare-fun tp!2401835 () Bool)

(assert (=> b!8025607 (= e!4727886 (and tp_is_empty!54203 tp!2401835))))

(assert (=> b!8025398 (= tp!2401782 e!4727886)))

(assert (= (and b!8025398 ((_ is Cons!74938) (innerList!16030 (xs!19340 (right!57488 (right!57488 t!3624)))))) b!8025607))

(declare-fun b!8025608 () Bool)

(declare-fun e!4727887 () Bool)

(declare-fun tp!2401836 () Bool)

(assert (=> b!8025608 (= e!4727887 (and tp_is_empty!54203 tp!2401836))))

(assert (=> b!8025395 (= tp!2401779 e!4727887)))

(assert (= (and b!8025395 ((_ is Cons!74938) (innerList!16030 (xs!19340 (left!57158 (right!57488 t!3624)))))) b!8025608))

(declare-fun b!8025609 () Bool)

(declare-fun e!4727888 () Bool)

(declare-fun tp!2401837 () Bool)

(assert (=> b!8025609 (= e!4727888 (and tp_is_empty!54203 tp!2401837))))

(assert (=> b!8025400 (= tp!2401785 e!4727888)))

(assert (= (and b!8025400 ((_ is Cons!74938) (t!390811 (t!390811 (innerList!16030 (xs!19340 t!3624)))))) b!8025609))

(declare-fun b!8025610 () Bool)

(declare-fun e!4727889 () Bool)

(declare-fun tp!2401838 () Bool)

(assert (=> b!8025610 (= e!4727889 (and tp_is_empty!54203 tp!2401838))))

(assert (=> b!8025404 (= tp!2401788 e!4727889)))

(assert (= (and b!8025404 ((_ is Cons!74938) (innerList!16030 (xs!19340 (left!57158 (left!57158 t!3624)))))) b!8025610))

(check-sat (not b!8025568) (not b!8025546) (not d!2393147) (not b!8025548) (not b!8025558) (not b!8025605) (not b!8025483) (not b!8025596) (not d!2393163) (not b!8025561) (not d!2393145) (not b!8025582) (not b!8025544) (not b!8025512) (not b!8025536) (not b!8025501) (not d!2393071) (not d!2393151) (not b!8025556) (not b!8025606) (not b!8025595) (not b!8025481) (not b!8025584) (not b!8025580) (not b!8025600) (not b!8025505) (not b!8025598) (not b!8025609) (not b!8025532) (not b!8025560) (not b!8025589) (not d!2393165) (not b!8025610) (not b!8025564) (not b!8025574) (not b!8025604) (not b!8025494) (not b!8025508) (not b!8025402) tp_is_empty!54203 (not b!8025601) (not b!8025393) (not b!8025575) (not b!8025540) (not d!2393159) (not b!8025531) (not b!8025570) (not b!8025603) (not b!8025479) (not b!8025587) (not b!8025503) (not b!8025488) (not b!8025585) (not b!8025396) (not b!8025579) (not b!8025405) (not b!8025602) (not b!8025588) (not b!8025497) (not d!2393079) (not d!2393153) (not b!8025586) (not b!8025563) (not b!8025581) (not b!8025487) (not d!2393167) (not b!8025490) (not b!8025535) (not b!8025538) (not d!2393127) (not d!2393149) (not b!8025526) (not b!8025543) (not b!8025523) (not b!8025591) (not b!8025590) (not b!8025597) (not b!8025516) (not d!2393143) (not d!2393111) (not b!8025517) (not b!8025607) (not b!8025572) (not b!8025608) (not b!8025599) (not b!8025498) (not b!8025554) (not b!8025492) (not b!8025522) (not b!8025519) (not b!8025513) (not d!2393107) (not b!8025592) (not d!2393081) (not d!2393113) (not d!2393099) (not d!2393089) (not d!2393087) (not b!8025566) (not b!8025541) (not b!8025583) (not b!8025527) (not b!8025593) (not b!8025507) (not d!2393091) (not b!8025594) (not b!8025577) (not b!8025485))
(check-sat)
