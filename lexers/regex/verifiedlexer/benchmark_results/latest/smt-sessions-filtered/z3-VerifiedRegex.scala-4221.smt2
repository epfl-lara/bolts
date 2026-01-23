; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228470 () Bool)

(assert start!228470)

(declare-fun b!2315448 () Bool)

(declare-fun e!1484451 () Bool)

(declare-fun e!1484452 () Bool)

(assert (=> b!2315448 (= e!1484451 e!1484452)))

(declare-fun res!989327 () Bool)

(assert (=> b!2315448 (=> (not res!989327) (not e!1484452))))

(declare-fun lt!858435 () Int)

(assert (=> b!2315448 (= res!989327 (and (<= lt!858435 512) (not (= lt!858435 0))))))

(declare-datatypes ((T!43572 0))(
  ( (T!43573 (val!7932 Int)) )
))
(declare-datatypes ((List!27718 0))(
  ( (Nil!27620) (Cons!27620 (h!33021 T!43572) (t!207328 List!27718)) )
))
(declare-datatypes ((IArray!18055 0))(
  ( (IArray!18056 (innerList!9085 List!27718)) )
))
(declare-fun arr!18 () IArray!18055)

(declare-fun size!21838 (IArray!18055) Int)

(assert (=> b!2315448 (= lt!858435 (size!21838 arr!18))))

(declare-fun res!989328 () Bool)

(assert (=> start!228470 (=> (not res!989328) (not e!1484451))))

(declare-datatypes ((Conc!9025 0))(
  ( (Node!9025 (left!20934 Conc!9025) (right!21264 Conc!9025) (csize!18280 Int) (cheight!9236 Int)) (Leaf!13247 (xs!11969 IArray!18055) (csize!18281 Int)) (Empty!9025) )
))
(declare-fun acc!252 () Conc!9025)

(declare-fun isBalanced!2719 (Conc!9025) Bool)

(assert (=> start!228470 (= res!989328 (isBalanced!2719 acc!252))))

(assert (=> start!228470 e!1484451))

(declare-fun e!1484455 () Bool)

(declare-fun inv!37419 (Conc!9025) Bool)

(assert (=> start!228470 (and (inv!37419 acc!252) e!1484455)))

(declare-fun e!1484453 () Bool)

(declare-fun inv!37420 (IArray!18055) Bool)

(assert (=> start!228470 (and (inv!37420 arr!18) e!1484453)))

(declare-fun b!2315449 () Bool)

(declare-fun tp!735443 () Bool)

(declare-fun tp!735442 () Bool)

(assert (=> b!2315449 (= e!1484455 (and (inv!37419 (left!20934 acc!252)) tp!735443 (inv!37419 (right!21264 acc!252)) tp!735442))))

(declare-fun b!2315450 () Bool)

(declare-fun e!1484454 () Bool)

(declare-fun tp!735441 () Bool)

(assert (=> b!2315450 (= e!1484454 tp!735441)))

(declare-fun b!2315451 () Bool)

(assert (=> b!2315451 (= e!1484455 (and (inv!37420 (xs!11969 acc!252)) e!1484454))))

(declare-fun b!2315452 () Bool)

(assert (=> b!2315452 (= e!1484452 (not (isBalanced!2719 (Leaf!13247 arr!18 lt!858435))))))

(declare-fun b!2315453 () Bool)

(declare-fun tp!735440 () Bool)

(assert (=> b!2315453 (= e!1484453 tp!735440)))

(assert (= (and start!228470 res!989328) b!2315448))

(assert (= (and b!2315448 res!989327) b!2315452))

(get-info :version)

(assert (= (and start!228470 ((_ is Node!9025) acc!252)) b!2315449))

(assert (= b!2315451 b!2315450))

(assert (= (and start!228470 ((_ is Leaf!13247) acc!252)) b!2315451))

(assert (= start!228470 b!2315453))

(declare-fun m!2742539 () Bool)

(assert (=> b!2315452 m!2742539))

(declare-fun m!2742541 () Bool)

(assert (=> start!228470 m!2742541))

(declare-fun m!2742543 () Bool)

(assert (=> start!228470 m!2742543))

(declare-fun m!2742545 () Bool)

(assert (=> start!228470 m!2742545))

(declare-fun m!2742547 () Bool)

(assert (=> b!2315449 m!2742547))

(declare-fun m!2742549 () Bool)

(assert (=> b!2315449 m!2742549))

(declare-fun m!2742551 () Bool)

(assert (=> b!2315448 m!2742551))

(declare-fun m!2742553 () Bool)

(assert (=> b!2315451 m!2742553))

(check-sat (not b!2315448) (not b!2315449) (not start!228470) (not b!2315453) (not b!2315450) (not b!2315451) (not b!2315452))
(check-sat)
(get-model)

(declare-fun b!2315472 () Bool)

(declare-fun e!1484464 () Bool)

(declare-fun isEmpty!15759 (Conc!9025) Bool)

(assert (=> b!2315472 (= e!1484464 (not (isEmpty!15759 (right!21264 (Leaf!13247 arr!18 lt!858435)))))))

(declare-fun b!2315473 () Bool)

(declare-fun res!989344 () Bool)

(assert (=> b!2315473 (=> (not res!989344) (not e!1484464))))

(assert (=> b!2315473 (= res!989344 (isBalanced!2719 (right!21264 (Leaf!13247 arr!18 lt!858435))))))

(declare-fun b!2315474 () Bool)

(declare-fun e!1484465 () Bool)

(assert (=> b!2315474 (= e!1484465 e!1484464)))

(declare-fun res!989347 () Bool)

(assert (=> b!2315474 (=> (not res!989347) (not e!1484464))))

(declare-fun height!1305 (Conc!9025) Int)

(assert (=> b!2315474 (= res!989347 (<= (- 1) (- (height!1305 (left!20934 (Leaf!13247 arr!18 lt!858435))) (height!1305 (right!21264 (Leaf!13247 arr!18 lt!858435))))))))

(declare-fun d!684688 () Bool)

(declare-fun res!989346 () Bool)

(assert (=> d!684688 (=> res!989346 e!1484465)))

(assert (=> d!684688 (= res!989346 (not ((_ is Node!9025) (Leaf!13247 arr!18 lt!858435))))))

(assert (=> d!684688 (= (isBalanced!2719 (Leaf!13247 arr!18 lt!858435)) e!1484465)))

(declare-fun b!2315475 () Bool)

(declare-fun res!989343 () Bool)

(assert (=> b!2315475 (=> (not res!989343) (not e!1484464))))

(assert (=> b!2315475 (= res!989343 (<= (- (height!1305 (left!20934 (Leaf!13247 arr!18 lt!858435))) (height!1305 (right!21264 (Leaf!13247 arr!18 lt!858435)))) 1))))

(declare-fun b!2315476 () Bool)

(declare-fun res!989348 () Bool)

(assert (=> b!2315476 (=> (not res!989348) (not e!1484464))))

(assert (=> b!2315476 (= res!989348 (not (isEmpty!15759 (left!20934 (Leaf!13247 arr!18 lt!858435)))))))

(declare-fun b!2315477 () Bool)

(declare-fun res!989345 () Bool)

(assert (=> b!2315477 (=> (not res!989345) (not e!1484464))))

(assert (=> b!2315477 (= res!989345 (isBalanced!2719 (left!20934 (Leaf!13247 arr!18 lt!858435))))))

(assert (= (and d!684688 (not res!989346)) b!2315474))

(assert (= (and b!2315474 res!989347) b!2315475))

(assert (= (and b!2315475 res!989343) b!2315477))

(assert (= (and b!2315477 res!989345) b!2315473))

(assert (= (and b!2315473 res!989344) b!2315476))

(assert (= (and b!2315476 res!989348) b!2315472))

(declare-fun m!2742565 () Bool)

(assert (=> b!2315473 m!2742565))

(declare-fun m!2742569 () Bool)

(assert (=> b!2315476 m!2742569))

(declare-fun m!2742573 () Bool)

(assert (=> b!2315472 m!2742573))

(declare-fun m!2742575 () Bool)

(assert (=> b!2315477 m!2742575))

(declare-fun m!2742577 () Bool)

(assert (=> b!2315474 m!2742577))

(declare-fun m!2742579 () Bool)

(assert (=> b!2315474 m!2742579))

(assert (=> b!2315475 m!2742577))

(assert (=> b!2315475 m!2742579))

(assert (=> b!2315452 d!684688))

(declare-fun d!684696 () Bool)

(declare-fun size!21840 (List!27718) Int)

(assert (=> d!684696 (= (inv!37420 (xs!11969 acc!252)) (<= (size!21840 (innerList!9085 (xs!11969 acc!252))) 2147483647))))

(declare-fun bs!458811 () Bool)

(assert (= bs!458811 d!684696))

(declare-fun m!2742581 () Bool)

(assert (=> bs!458811 m!2742581))

(assert (=> b!2315451 d!684696))

(declare-fun d!684698 () Bool)

(declare-fun lt!858441 () Int)

(declare-fun list!10933 (IArray!18055) List!27718)

(assert (=> d!684698 (= lt!858441 (size!21840 (list!10933 arr!18)))))

(declare-fun choose!13542 (IArray!18055) Int)

(assert (=> d!684698 (= lt!858441 (choose!13542 arr!18))))

(assert (=> d!684698 (= (size!21838 arr!18) lt!858441)))

(declare-fun bs!458812 () Bool)

(assert (= bs!458812 d!684698))

(declare-fun m!2742583 () Bool)

(assert (=> bs!458812 m!2742583))

(assert (=> bs!458812 m!2742583))

(declare-fun m!2742585 () Bool)

(assert (=> bs!458812 m!2742585))

(declare-fun m!2742587 () Bool)

(assert (=> bs!458812 m!2742587))

(assert (=> b!2315448 d!684698))

(declare-fun b!2315484 () Bool)

(declare-fun e!1484470 () Bool)

(assert (=> b!2315484 (= e!1484470 (not (isEmpty!15759 (right!21264 acc!252))))))

(declare-fun b!2315485 () Bool)

(declare-fun res!989352 () Bool)

(assert (=> b!2315485 (=> (not res!989352) (not e!1484470))))

(assert (=> b!2315485 (= res!989352 (isBalanced!2719 (right!21264 acc!252)))))

(declare-fun b!2315486 () Bool)

(declare-fun e!1484471 () Bool)

(assert (=> b!2315486 (= e!1484471 e!1484470)))

(declare-fun res!989355 () Bool)

(assert (=> b!2315486 (=> (not res!989355) (not e!1484470))))

(assert (=> b!2315486 (= res!989355 (<= (- 1) (- (height!1305 (left!20934 acc!252)) (height!1305 (right!21264 acc!252)))))))

(declare-fun d!684700 () Bool)

(declare-fun res!989354 () Bool)

(assert (=> d!684700 (=> res!989354 e!1484471)))

(assert (=> d!684700 (= res!989354 (not ((_ is Node!9025) acc!252)))))

(assert (=> d!684700 (= (isBalanced!2719 acc!252) e!1484471)))

(declare-fun b!2315487 () Bool)

(declare-fun res!989351 () Bool)

(assert (=> b!2315487 (=> (not res!989351) (not e!1484470))))

(assert (=> b!2315487 (= res!989351 (<= (- (height!1305 (left!20934 acc!252)) (height!1305 (right!21264 acc!252))) 1))))

(declare-fun b!2315488 () Bool)

(declare-fun res!989356 () Bool)

(assert (=> b!2315488 (=> (not res!989356) (not e!1484470))))

(assert (=> b!2315488 (= res!989356 (not (isEmpty!15759 (left!20934 acc!252))))))

(declare-fun b!2315489 () Bool)

(declare-fun res!989353 () Bool)

(assert (=> b!2315489 (=> (not res!989353) (not e!1484470))))

(assert (=> b!2315489 (= res!989353 (isBalanced!2719 (left!20934 acc!252)))))

(assert (= (and d!684700 (not res!989354)) b!2315486))

(assert (= (and b!2315486 res!989355) b!2315487))

(assert (= (and b!2315487 res!989351) b!2315489))

(assert (= (and b!2315489 res!989353) b!2315485))

(assert (= (and b!2315485 res!989352) b!2315488))

(assert (= (and b!2315488 res!989356) b!2315484))

(declare-fun m!2742589 () Bool)

(assert (=> b!2315485 m!2742589))

(declare-fun m!2742591 () Bool)

(assert (=> b!2315488 m!2742591))

(declare-fun m!2742593 () Bool)

(assert (=> b!2315484 m!2742593))

(declare-fun m!2742595 () Bool)

(assert (=> b!2315489 m!2742595))

(declare-fun m!2742597 () Bool)

(assert (=> b!2315486 m!2742597))

(declare-fun m!2742599 () Bool)

(assert (=> b!2315486 m!2742599))

(assert (=> b!2315487 m!2742597))

(assert (=> b!2315487 m!2742599))

(assert (=> start!228470 d!684700))

(declare-fun d!684702 () Bool)

(declare-fun c!367032 () Bool)

(assert (=> d!684702 (= c!367032 ((_ is Node!9025) acc!252))))

(declare-fun e!1484482 () Bool)

(assert (=> d!684702 (= (inv!37419 acc!252) e!1484482)))

(declare-fun b!2315514 () Bool)

(declare-fun inv!37423 (Conc!9025) Bool)

(assert (=> b!2315514 (= e!1484482 (inv!37423 acc!252))))

(declare-fun b!2315515 () Bool)

(declare-fun e!1484483 () Bool)

(assert (=> b!2315515 (= e!1484482 e!1484483)))

(declare-fun res!989377 () Bool)

(assert (=> b!2315515 (= res!989377 (not ((_ is Leaf!13247) acc!252)))))

(assert (=> b!2315515 (=> res!989377 e!1484483)))

(declare-fun b!2315516 () Bool)

(declare-fun inv!37424 (Conc!9025) Bool)

(assert (=> b!2315516 (= e!1484483 (inv!37424 acc!252))))

(assert (= (and d!684702 c!367032) b!2315514))

(assert (= (and d!684702 (not c!367032)) b!2315515))

(assert (= (and b!2315515 (not res!989377)) b!2315516))

(declare-fun m!2742601 () Bool)

(assert (=> b!2315514 m!2742601))

(declare-fun m!2742603 () Bool)

(assert (=> b!2315516 m!2742603))

(assert (=> start!228470 d!684702))

(declare-fun d!684704 () Bool)

(assert (=> d!684704 (= (inv!37420 arr!18) (<= (size!21840 (innerList!9085 arr!18)) 2147483647))))

(declare-fun bs!458813 () Bool)

(assert (= bs!458813 d!684704))

(declare-fun m!2742605 () Bool)

(assert (=> bs!458813 m!2742605))

(assert (=> start!228470 d!684704))

(declare-fun d!684706 () Bool)

(declare-fun c!367033 () Bool)

(assert (=> d!684706 (= c!367033 ((_ is Node!9025) (left!20934 acc!252)))))

(declare-fun e!1484484 () Bool)

(assert (=> d!684706 (= (inv!37419 (left!20934 acc!252)) e!1484484)))

(declare-fun b!2315517 () Bool)

(assert (=> b!2315517 (= e!1484484 (inv!37423 (left!20934 acc!252)))))

(declare-fun b!2315518 () Bool)

(declare-fun e!1484485 () Bool)

(assert (=> b!2315518 (= e!1484484 e!1484485)))

(declare-fun res!989378 () Bool)

(assert (=> b!2315518 (= res!989378 (not ((_ is Leaf!13247) (left!20934 acc!252))))))

(assert (=> b!2315518 (=> res!989378 e!1484485)))

(declare-fun b!2315519 () Bool)

(assert (=> b!2315519 (= e!1484485 (inv!37424 (left!20934 acc!252)))))

(assert (= (and d!684706 c!367033) b!2315517))

(assert (= (and d!684706 (not c!367033)) b!2315518))

(assert (= (and b!2315518 (not res!989378)) b!2315519))

(declare-fun m!2742609 () Bool)

(assert (=> b!2315517 m!2742609))

(declare-fun m!2742613 () Bool)

(assert (=> b!2315519 m!2742613))

(assert (=> b!2315449 d!684706))

(declare-fun d!684708 () Bool)

(declare-fun c!367034 () Bool)

(assert (=> d!684708 (= c!367034 ((_ is Node!9025) (right!21264 acc!252)))))

(declare-fun e!1484486 () Bool)

(assert (=> d!684708 (= (inv!37419 (right!21264 acc!252)) e!1484486)))

(declare-fun b!2315520 () Bool)

(assert (=> b!2315520 (= e!1484486 (inv!37423 (right!21264 acc!252)))))

(declare-fun b!2315521 () Bool)

(declare-fun e!1484487 () Bool)

(assert (=> b!2315521 (= e!1484486 e!1484487)))

(declare-fun res!989379 () Bool)

(assert (=> b!2315521 (= res!989379 (not ((_ is Leaf!13247) (right!21264 acc!252))))))

(assert (=> b!2315521 (=> res!989379 e!1484487)))

(declare-fun b!2315522 () Bool)

(assert (=> b!2315522 (= e!1484487 (inv!37424 (right!21264 acc!252)))))

(assert (= (and d!684708 c!367034) b!2315520))

(assert (= (and d!684708 (not c!367034)) b!2315521))

(assert (= (and b!2315521 (not res!989379)) b!2315522))

(declare-fun m!2742623 () Bool)

(assert (=> b!2315520 m!2742623))

(declare-fun m!2742625 () Bool)

(assert (=> b!2315522 m!2742625))

(assert (=> b!2315449 d!684708))

(declare-fun b!2315533 () Bool)

(declare-fun e!1484492 () Bool)

(declare-fun tp_is_empty!10775 () Bool)

(declare-fun tp!735446 () Bool)

(assert (=> b!2315533 (= e!1484492 (and tp_is_empty!10775 tp!735446))))

(assert (=> b!2315450 (= tp!735441 e!1484492)))

(assert (= (and b!2315450 ((_ is Cons!27620) (innerList!9085 (xs!11969 acc!252)))) b!2315533))

(declare-fun b!2315534 () Bool)

(declare-fun e!1484493 () Bool)

(declare-fun tp!735447 () Bool)

(assert (=> b!2315534 (= e!1484493 (and tp_is_empty!10775 tp!735447))))

(assert (=> b!2315453 (= tp!735440 e!1484493)))

(assert (= (and b!2315453 ((_ is Cons!27620) (innerList!9085 arr!18))) b!2315534))

(declare-fun tp!735456 () Bool)

(declare-fun e!1484501 () Bool)

(declare-fun tp!735455 () Bool)

(declare-fun b!2315546 () Bool)

(assert (=> b!2315546 (= e!1484501 (and (inv!37419 (left!20934 (left!20934 acc!252))) tp!735455 (inv!37419 (right!21264 (left!20934 acc!252))) tp!735456))))

(declare-fun b!2315548 () Bool)

(declare-fun e!1484500 () Bool)

(declare-fun tp!735454 () Bool)

(assert (=> b!2315548 (= e!1484500 tp!735454)))

(declare-fun b!2315547 () Bool)

(assert (=> b!2315547 (= e!1484501 (and (inv!37420 (xs!11969 (left!20934 acc!252))) e!1484500))))

(assert (=> b!2315449 (= tp!735443 (and (inv!37419 (left!20934 acc!252)) e!1484501))))

(assert (= (and b!2315449 ((_ is Node!9025) (left!20934 acc!252))) b!2315546))

(assert (= b!2315547 b!2315548))

(assert (= (and b!2315449 ((_ is Leaf!13247) (left!20934 acc!252))) b!2315547))

(declare-fun m!2742647 () Bool)

(assert (=> b!2315546 m!2742647))

(declare-fun m!2742649 () Bool)

(assert (=> b!2315546 m!2742649))

(declare-fun m!2742651 () Bool)

(assert (=> b!2315547 m!2742651))

(assert (=> b!2315449 m!2742547))

(declare-fun tp!735459 () Bool)

(declare-fun b!2315553 () Bool)

(declare-fun e!1484505 () Bool)

(declare-fun tp!735458 () Bool)

(assert (=> b!2315553 (= e!1484505 (and (inv!37419 (left!20934 (right!21264 acc!252))) tp!735458 (inv!37419 (right!21264 (right!21264 acc!252))) tp!735459))))

(declare-fun b!2315555 () Bool)

(declare-fun e!1484504 () Bool)

(declare-fun tp!735457 () Bool)

(assert (=> b!2315555 (= e!1484504 tp!735457)))

(declare-fun b!2315554 () Bool)

(assert (=> b!2315554 (= e!1484505 (and (inv!37420 (xs!11969 (right!21264 acc!252))) e!1484504))))

(assert (=> b!2315449 (= tp!735442 (and (inv!37419 (right!21264 acc!252)) e!1484505))))

(assert (= (and b!2315449 ((_ is Node!9025) (right!21264 acc!252))) b!2315553))

(assert (= b!2315554 b!2315555))

(assert (= (and b!2315449 ((_ is Leaf!13247) (right!21264 acc!252))) b!2315554))

(declare-fun m!2742653 () Bool)

(assert (=> b!2315553 m!2742653))

(declare-fun m!2742655 () Bool)

(assert (=> b!2315553 m!2742655))

(declare-fun m!2742657 () Bool)

(assert (=> b!2315554 m!2742657))

(assert (=> b!2315449 m!2742549))

(check-sat (not b!2315555) (not b!2315489) (not b!2315522) (not d!684696) (not b!2315546) (not b!2315516) (not b!2315520) (not b!2315487) (not b!2315517) (not b!2315472) (not b!2315475) (not b!2315534) (not b!2315474) (not d!684698) (not b!2315554) (not b!2315553) (not b!2315449) (not b!2315548) (not b!2315477) (not b!2315488) (not b!2315473) tp_is_empty!10775 (not b!2315485) (not b!2315533) (not b!2315519) (not b!2315486) (not b!2315484) (not b!2315514) (not b!2315547) (not d!684704) (not b!2315476))
(check-sat)
