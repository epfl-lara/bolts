; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384248 () Bool)

(assert start!384248)

(declare-fun b!4071373 () Bool)

(declare-fun e!2526776 () Bool)

(declare-fun tp_is_empty!20781 () Bool)

(declare-fun tp!1231983 () Bool)

(assert (=> b!4071373 (= e!2526776 (and tp_is_empty!20781 tp!1231983))))

(declare-fun res!1662514 () Bool)

(declare-fun e!2526774 () Bool)

(assert (=> start!384248 (=> (not res!1662514) (not e!2526774))))

(declare-datatypes ((B!2613 0))(
  ( (B!2614 (val!14092 Int)) )
))
(declare-datatypes ((List!43615 0))(
  ( (Nil!43491) (Cons!43491 (h!48911 B!2613) (t!337062 List!43615)) )
))
(declare-fun p!1991 () List!43615)

(declare-fun l!3332 () List!43615)

(declare-fun isPrefix!4087 (List!43615 List!43615) Bool)

(assert (=> start!384248 (= res!1662514 (isPrefix!4087 p!1991 l!3332))))

(assert (=> start!384248 e!2526774))

(assert (=> start!384248 e!2526776))

(declare-fun e!2526775 () Bool)

(assert (=> start!384248 e!2526775))

(declare-fun e!2526773 () Bool)

(assert (=> start!384248 e!2526773))

(declare-fun b!4071374 () Bool)

(declare-fun e!2526772 () Bool)

(assert (=> b!4071374 (= e!2526774 e!2526772)))

(declare-fun res!1662513 () Bool)

(assert (=> b!4071374 (=> (not res!1662513) (not e!2526772))))

(declare-fun lt!1457484 () List!43615)

(assert (=> b!4071374 (= res!1662513 (isPrefix!4087 (t!337062 p!1991) lt!1457484))))

(declare-fun tail!6333 (List!43615) List!43615)

(assert (=> b!4071374 (= lt!1457484 (tail!6333 l!3332))))

(declare-fun b!4071375 () Bool)

(declare-fun suffix!260 () List!43615)

(declare-fun ++!11392 (List!43615 List!43615) List!43615)

(assert (=> b!4071375 (= e!2526772 (not (isPrefix!4087 p!1991 (++!11392 l!3332 suffix!260))))))

(assert (=> b!4071375 (isPrefix!4087 (t!337062 p!1991) (++!11392 lt!1457484 suffix!260))))

(declare-datatypes ((Unit!63049 0))(
  ( (Unit!63050) )
))
(declare-fun lt!1457485 () Unit!63049)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!870 (List!43615 List!43615 List!43615) Unit!63049)

(assert (=> b!4071375 (= lt!1457485 (lemmaPrefixStaysPrefixWhenAddingToSuffix!870 (t!337062 p!1991) lt!1457484 suffix!260))))

(declare-fun b!4071376 () Bool)

(declare-fun tp!1231982 () Bool)

(assert (=> b!4071376 (= e!2526775 (and tp_is_empty!20781 tp!1231982))))

(declare-fun b!4071377 () Bool)

(declare-fun tp!1231984 () Bool)

(assert (=> b!4071377 (= e!2526773 (and tp_is_empty!20781 tp!1231984))))

(declare-fun b!4071378 () Bool)

(declare-fun res!1662512 () Bool)

(assert (=> b!4071378 (=> (not res!1662512) (not e!2526774))))

(get-info :version)

(assert (=> b!4071378 (= res!1662512 ((_ is Cons!43491) p!1991))))

(assert (= (and start!384248 res!1662514) b!4071378))

(assert (= (and b!4071378 res!1662512) b!4071374))

(assert (= (and b!4071374 res!1662513) b!4071375))

(assert (= (and start!384248 ((_ is Cons!43491) p!1991)) b!4071373))

(assert (= (and start!384248 ((_ is Cons!43491) l!3332)) b!4071376))

(assert (= (and start!384248 ((_ is Cons!43491) suffix!260)) b!4071377))

(declare-fun m!4680613 () Bool)

(assert (=> start!384248 m!4680613))

(declare-fun m!4680615 () Bool)

(assert (=> b!4071374 m!4680615))

(declare-fun m!4680617 () Bool)

(assert (=> b!4071374 m!4680617))

(declare-fun m!4680619 () Bool)

(assert (=> b!4071375 m!4680619))

(assert (=> b!4071375 m!4680619))

(declare-fun m!4680621 () Bool)

(assert (=> b!4071375 m!4680621))

(declare-fun m!4680623 () Bool)

(assert (=> b!4071375 m!4680623))

(declare-fun m!4680625 () Bool)

(assert (=> b!4071375 m!4680625))

(declare-fun m!4680627 () Bool)

(assert (=> b!4071375 m!4680627))

(assert (=> b!4071375 m!4680623))

(check-sat (not b!4071373) (not b!4071376) (not b!4071375) tp_is_empty!20781 (not start!384248) (not b!4071377) (not b!4071374))
(check-sat)
(get-model)

(declare-fun d!1210197 () Bool)

(declare-fun e!2526799 () Bool)

(assert (=> d!1210197 e!2526799))

(declare-fun res!1662544 () Bool)

(assert (=> d!1210197 (=> res!1662544 e!2526799)))

(declare-fun lt!1457494 () Bool)

(assert (=> d!1210197 (= res!1662544 (not lt!1457494))))

(declare-fun e!2526800 () Bool)

(assert (=> d!1210197 (= lt!1457494 e!2526800)))

(declare-fun res!1662545 () Bool)

(assert (=> d!1210197 (=> res!1662545 e!2526800)))

(assert (=> d!1210197 (= res!1662545 ((_ is Nil!43491) p!1991))))

(assert (=> d!1210197 (= (isPrefix!4087 p!1991 l!3332) lt!1457494)))

(declare-fun b!4071412 () Bool)

(declare-fun res!1662543 () Bool)

(declare-fun e!2526801 () Bool)

(assert (=> b!4071412 (=> (not res!1662543) (not e!2526801))))

(declare-fun head!8599 (List!43615) B!2613)

(assert (=> b!4071412 (= res!1662543 (= (head!8599 p!1991) (head!8599 l!3332)))))

(declare-fun b!4071414 () Bool)

(declare-fun size!32516 (List!43615) Int)

(assert (=> b!4071414 (= e!2526799 (>= (size!32516 l!3332) (size!32516 p!1991)))))

(declare-fun b!4071413 () Bool)

(assert (=> b!4071413 (= e!2526801 (isPrefix!4087 (tail!6333 p!1991) (tail!6333 l!3332)))))

(declare-fun b!4071411 () Bool)

(assert (=> b!4071411 (= e!2526800 e!2526801)))

(declare-fun res!1662546 () Bool)

(assert (=> b!4071411 (=> (not res!1662546) (not e!2526801))))

(assert (=> b!4071411 (= res!1662546 (not ((_ is Nil!43491) l!3332)))))

(assert (= (and d!1210197 (not res!1662545)) b!4071411))

(assert (= (and b!4071411 res!1662546) b!4071412))

(assert (= (and b!4071412 res!1662543) b!4071413))

(assert (= (and d!1210197 (not res!1662544)) b!4071414))

(declare-fun m!4680655 () Bool)

(assert (=> b!4071412 m!4680655))

(declare-fun m!4680657 () Bool)

(assert (=> b!4071412 m!4680657))

(declare-fun m!4680659 () Bool)

(assert (=> b!4071414 m!4680659))

(declare-fun m!4680661 () Bool)

(assert (=> b!4071414 m!4680661))

(declare-fun m!4680663 () Bool)

(assert (=> b!4071413 m!4680663))

(assert (=> b!4071413 m!4680617))

(assert (=> b!4071413 m!4680663))

(assert (=> b!4071413 m!4680617))

(declare-fun m!4680665 () Bool)

(assert (=> b!4071413 m!4680665))

(assert (=> start!384248 d!1210197))

(declare-fun b!4071445 () Bool)

(declare-fun e!2526819 () List!43615)

(assert (=> b!4071445 (= e!2526819 (Cons!43491 (h!48911 lt!1457484) (++!11392 (t!337062 lt!1457484) suffix!260)))))

(declare-fun b!4071444 () Bool)

(assert (=> b!4071444 (= e!2526819 suffix!260)))

(declare-fun b!4071446 () Bool)

(declare-fun res!1662563 () Bool)

(declare-fun e!2526820 () Bool)

(assert (=> b!4071446 (=> (not res!1662563) (not e!2526820))))

(declare-fun lt!1457504 () List!43615)

(assert (=> b!4071446 (= res!1662563 (= (size!32516 lt!1457504) (+ (size!32516 lt!1457484) (size!32516 suffix!260))))))

(declare-fun d!1210205 () Bool)

(assert (=> d!1210205 e!2526820))

(declare-fun res!1662564 () Bool)

(assert (=> d!1210205 (=> (not res!1662564) (not e!2526820))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6649 (List!43615) (InoxSet B!2613))

(assert (=> d!1210205 (= res!1662564 (= (content!6649 lt!1457504) ((_ map or) (content!6649 lt!1457484) (content!6649 suffix!260))))))

(assert (=> d!1210205 (= lt!1457504 e!2526819)))

(declare-fun c!702722 () Bool)

(assert (=> d!1210205 (= c!702722 ((_ is Nil!43491) lt!1457484))))

(assert (=> d!1210205 (= (++!11392 lt!1457484 suffix!260) lt!1457504)))

(declare-fun b!4071447 () Bool)

(assert (=> b!4071447 (= e!2526820 (or (not (= suffix!260 Nil!43491)) (= lt!1457504 lt!1457484)))))

(assert (= (and d!1210205 c!702722) b!4071444))

(assert (= (and d!1210205 (not c!702722)) b!4071445))

(assert (= (and d!1210205 res!1662564) b!4071446))

(assert (= (and b!4071446 res!1662563) b!4071447))

(declare-fun m!4680705 () Bool)

(assert (=> b!4071445 m!4680705))

(declare-fun m!4680707 () Bool)

(assert (=> b!4071446 m!4680707))

(declare-fun m!4680709 () Bool)

(assert (=> b!4071446 m!4680709))

(declare-fun m!4680711 () Bool)

(assert (=> b!4071446 m!4680711))

(declare-fun m!4680713 () Bool)

(assert (=> d!1210205 m!4680713))

(declare-fun m!4680715 () Bool)

(assert (=> d!1210205 m!4680715))

(declare-fun m!4680717 () Bool)

(assert (=> d!1210205 m!4680717))

(assert (=> b!4071375 d!1210205))

(declare-fun b!4071451 () Bool)

(declare-fun e!2526823 () List!43615)

(assert (=> b!4071451 (= e!2526823 (Cons!43491 (h!48911 l!3332) (++!11392 (t!337062 l!3332) suffix!260)))))

(declare-fun b!4071450 () Bool)

(assert (=> b!4071450 (= e!2526823 suffix!260)))

(declare-fun b!4071452 () Bool)

(declare-fun res!1662565 () Bool)

(declare-fun e!2526824 () Bool)

(assert (=> b!4071452 (=> (not res!1662565) (not e!2526824))))

(declare-fun lt!1457505 () List!43615)

(assert (=> b!4071452 (= res!1662565 (= (size!32516 lt!1457505) (+ (size!32516 l!3332) (size!32516 suffix!260))))))

(declare-fun d!1210215 () Bool)

(assert (=> d!1210215 e!2526824))

(declare-fun res!1662566 () Bool)

(assert (=> d!1210215 (=> (not res!1662566) (not e!2526824))))

(assert (=> d!1210215 (= res!1662566 (= (content!6649 lt!1457505) ((_ map or) (content!6649 l!3332) (content!6649 suffix!260))))))

(assert (=> d!1210215 (= lt!1457505 e!2526823)))

(declare-fun c!702723 () Bool)

(assert (=> d!1210215 (= c!702723 ((_ is Nil!43491) l!3332))))

(assert (=> d!1210215 (= (++!11392 l!3332 suffix!260) lt!1457505)))

(declare-fun b!4071453 () Bool)

(assert (=> b!4071453 (= e!2526824 (or (not (= suffix!260 Nil!43491)) (= lt!1457505 l!3332)))))

(assert (= (and d!1210215 c!702723) b!4071450))

(assert (= (and d!1210215 (not c!702723)) b!4071451))

(assert (= (and d!1210215 res!1662566) b!4071452))

(assert (= (and b!4071452 res!1662565) b!4071453))

(declare-fun m!4680719 () Bool)

(assert (=> b!4071451 m!4680719))

(declare-fun m!4680721 () Bool)

(assert (=> b!4071452 m!4680721))

(assert (=> b!4071452 m!4680659))

(assert (=> b!4071452 m!4680711))

(declare-fun m!4680723 () Bool)

(assert (=> d!1210215 m!4680723))

(declare-fun m!4680725 () Bool)

(assert (=> d!1210215 m!4680725))

(assert (=> d!1210215 m!4680717))

(assert (=> b!4071375 d!1210215))

(declare-fun d!1210217 () Bool)

(assert (=> d!1210217 (isPrefix!4087 (t!337062 p!1991) (++!11392 lt!1457484 suffix!260))))

(declare-fun lt!1457508 () Unit!63049)

(declare-fun choose!24853 (List!43615 List!43615 List!43615) Unit!63049)

(assert (=> d!1210217 (= lt!1457508 (choose!24853 (t!337062 p!1991) lt!1457484 suffix!260))))

(assert (=> d!1210217 (isPrefix!4087 (t!337062 p!1991) lt!1457484)))

(assert (=> d!1210217 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!870 (t!337062 p!1991) lt!1457484 suffix!260) lt!1457508)))

(declare-fun bs!592594 () Bool)

(assert (= bs!592594 d!1210217))

(assert (=> bs!592594 m!4680619))

(assert (=> bs!592594 m!4680619))

(assert (=> bs!592594 m!4680621))

(declare-fun m!4680727 () Bool)

(assert (=> bs!592594 m!4680727))

(assert (=> bs!592594 m!4680615))

(assert (=> b!4071375 d!1210217))

(declare-fun d!1210219 () Bool)

(declare-fun e!2526825 () Bool)

(assert (=> d!1210219 e!2526825))

(declare-fun res!1662568 () Bool)

(assert (=> d!1210219 (=> res!1662568 e!2526825)))

(declare-fun lt!1457509 () Bool)

(assert (=> d!1210219 (= res!1662568 (not lt!1457509))))

(declare-fun e!2526826 () Bool)

(assert (=> d!1210219 (= lt!1457509 e!2526826)))

(declare-fun res!1662569 () Bool)

(assert (=> d!1210219 (=> res!1662569 e!2526826)))

(assert (=> d!1210219 (= res!1662569 ((_ is Nil!43491) p!1991))))

(assert (=> d!1210219 (= (isPrefix!4087 p!1991 (++!11392 l!3332 suffix!260)) lt!1457509)))

(declare-fun b!4071455 () Bool)

(declare-fun res!1662567 () Bool)

(declare-fun e!2526827 () Bool)

(assert (=> b!4071455 (=> (not res!1662567) (not e!2526827))))

(assert (=> b!4071455 (= res!1662567 (= (head!8599 p!1991) (head!8599 (++!11392 l!3332 suffix!260))))))

(declare-fun b!4071457 () Bool)

(assert (=> b!4071457 (= e!2526825 (>= (size!32516 (++!11392 l!3332 suffix!260)) (size!32516 p!1991)))))

(declare-fun b!4071456 () Bool)

(assert (=> b!4071456 (= e!2526827 (isPrefix!4087 (tail!6333 p!1991) (tail!6333 (++!11392 l!3332 suffix!260))))))

(declare-fun b!4071454 () Bool)

(assert (=> b!4071454 (= e!2526826 e!2526827)))

(declare-fun res!1662570 () Bool)

(assert (=> b!4071454 (=> (not res!1662570) (not e!2526827))))

(assert (=> b!4071454 (= res!1662570 (not ((_ is Nil!43491) (++!11392 l!3332 suffix!260))))))

(assert (= (and d!1210219 (not res!1662569)) b!4071454))

(assert (= (and b!4071454 res!1662570) b!4071455))

(assert (= (and b!4071455 res!1662567) b!4071456))

(assert (= (and d!1210219 (not res!1662568)) b!4071457))

(assert (=> b!4071455 m!4680655))

(assert (=> b!4071455 m!4680623))

(declare-fun m!4680729 () Bool)

(assert (=> b!4071455 m!4680729))

(assert (=> b!4071457 m!4680623))

(declare-fun m!4680731 () Bool)

(assert (=> b!4071457 m!4680731))

(assert (=> b!4071457 m!4680661))

(assert (=> b!4071456 m!4680663))

(assert (=> b!4071456 m!4680623))

(declare-fun m!4680733 () Bool)

(assert (=> b!4071456 m!4680733))

(assert (=> b!4071456 m!4680663))

(assert (=> b!4071456 m!4680733))

(declare-fun m!4680735 () Bool)

(assert (=> b!4071456 m!4680735))

(assert (=> b!4071375 d!1210219))

(declare-fun d!1210221 () Bool)

(declare-fun e!2526828 () Bool)

(assert (=> d!1210221 e!2526828))

(declare-fun res!1662572 () Bool)

(assert (=> d!1210221 (=> res!1662572 e!2526828)))

(declare-fun lt!1457510 () Bool)

(assert (=> d!1210221 (= res!1662572 (not lt!1457510))))

(declare-fun e!2526829 () Bool)

(assert (=> d!1210221 (= lt!1457510 e!2526829)))

(declare-fun res!1662573 () Bool)

(assert (=> d!1210221 (=> res!1662573 e!2526829)))

(assert (=> d!1210221 (= res!1662573 ((_ is Nil!43491) (t!337062 p!1991)))))

(assert (=> d!1210221 (= (isPrefix!4087 (t!337062 p!1991) (++!11392 lt!1457484 suffix!260)) lt!1457510)))

(declare-fun b!4071459 () Bool)

(declare-fun res!1662571 () Bool)

(declare-fun e!2526830 () Bool)

(assert (=> b!4071459 (=> (not res!1662571) (not e!2526830))))

(assert (=> b!4071459 (= res!1662571 (= (head!8599 (t!337062 p!1991)) (head!8599 (++!11392 lt!1457484 suffix!260))))))

(declare-fun b!4071461 () Bool)

(assert (=> b!4071461 (= e!2526828 (>= (size!32516 (++!11392 lt!1457484 suffix!260)) (size!32516 (t!337062 p!1991))))))

(declare-fun b!4071460 () Bool)

(assert (=> b!4071460 (= e!2526830 (isPrefix!4087 (tail!6333 (t!337062 p!1991)) (tail!6333 (++!11392 lt!1457484 suffix!260))))))

(declare-fun b!4071458 () Bool)

(assert (=> b!4071458 (= e!2526829 e!2526830)))

(declare-fun res!1662574 () Bool)

(assert (=> b!4071458 (=> (not res!1662574) (not e!2526830))))

(assert (=> b!4071458 (= res!1662574 (not ((_ is Nil!43491) (++!11392 lt!1457484 suffix!260))))))

(assert (= (and d!1210221 (not res!1662573)) b!4071458))

(assert (= (and b!4071458 res!1662574) b!4071459))

(assert (= (and b!4071459 res!1662571) b!4071460))

(assert (= (and d!1210221 (not res!1662572)) b!4071461))

(declare-fun m!4680737 () Bool)

(assert (=> b!4071459 m!4680737))

(assert (=> b!4071459 m!4680619))

(declare-fun m!4680739 () Bool)

(assert (=> b!4071459 m!4680739))

(assert (=> b!4071461 m!4680619))

(declare-fun m!4680741 () Bool)

(assert (=> b!4071461 m!4680741))

(declare-fun m!4680743 () Bool)

(assert (=> b!4071461 m!4680743))

(declare-fun m!4680745 () Bool)

(assert (=> b!4071460 m!4680745))

(assert (=> b!4071460 m!4680619))

(declare-fun m!4680747 () Bool)

(assert (=> b!4071460 m!4680747))

(assert (=> b!4071460 m!4680745))

(assert (=> b!4071460 m!4680747))

(declare-fun m!4680749 () Bool)

(assert (=> b!4071460 m!4680749))

(assert (=> b!4071375 d!1210221))

(declare-fun d!1210223 () Bool)

(declare-fun e!2526831 () Bool)

(assert (=> d!1210223 e!2526831))

(declare-fun res!1662576 () Bool)

(assert (=> d!1210223 (=> res!1662576 e!2526831)))

(declare-fun lt!1457511 () Bool)

(assert (=> d!1210223 (= res!1662576 (not lt!1457511))))

(declare-fun e!2526832 () Bool)

(assert (=> d!1210223 (= lt!1457511 e!2526832)))

(declare-fun res!1662577 () Bool)

(assert (=> d!1210223 (=> res!1662577 e!2526832)))

(assert (=> d!1210223 (= res!1662577 ((_ is Nil!43491) (t!337062 p!1991)))))

(assert (=> d!1210223 (= (isPrefix!4087 (t!337062 p!1991) lt!1457484) lt!1457511)))

(declare-fun b!4071463 () Bool)

(declare-fun res!1662575 () Bool)

(declare-fun e!2526833 () Bool)

(assert (=> b!4071463 (=> (not res!1662575) (not e!2526833))))

(assert (=> b!4071463 (= res!1662575 (= (head!8599 (t!337062 p!1991)) (head!8599 lt!1457484)))))

(declare-fun b!4071465 () Bool)

(assert (=> b!4071465 (= e!2526831 (>= (size!32516 lt!1457484) (size!32516 (t!337062 p!1991))))))

(declare-fun b!4071464 () Bool)

(assert (=> b!4071464 (= e!2526833 (isPrefix!4087 (tail!6333 (t!337062 p!1991)) (tail!6333 lt!1457484)))))

(declare-fun b!4071462 () Bool)

(assert (=> b!4071462 (= e!2526832 e!2526833)))

(declare-fun res!1662578 () Bool)

(assert (=> b!4071462 (=> (not res!1662578) (not e!2526833))))

(assert (=> b!4071462 (= res!1662578 (not ((_ is Nil!43491) lt!1457484)))))

(assert (= (and d!1210223 (not res!1662577)) b!4071462))

(assert (= (and b!4071462 res!1662578) b!4071463))

(assert (= (and b!4071463 res!1662575) b!4071464))

(assert (= (and d!1210223 (not res!1662576)) b!4071465))

(assert (=> b!4071463 m!4680737))

(declare-fun m!4680751 () Bool)

(assert (=> b!4071463 m!4680751))

(assert (=> b!4071465 m!4680709))

(assert (=> b!4071465 m!4680743))

(assert (=> b!4071464 m!4680745))

(declare-fun m!4680753 () Bool)

(assert (=> b!4071464 m!4680753))

(assert (=> b!4071464 m!4680745))

(assert (=> b!4071464 m!4680753))

(declare-fun m!4680755 () Bool)

(assert (=> b!4071464 m!4680755))

(assert (=> b!4071374 d!1210223))

(declare-fun d!1210225 () Bool)

(assert (=> d!1210225 (= (tail!6333 l!3332) (t!337062 l!3332))))

(assert (=> b!4071374 d!1210225))

(declare-fun b!4071470 () Bool)

(declare-fun e!2526836 () Bool)

(declare-fun tp!1231992 () Bool)

(assert (=> b!4071470 (= e!2526836 (and tp_is_empty!20781 tp!1231992))))

(assert (=> b!4071373 (= tp!1231983 e!2526836)))

(assert (= (and b!4071373 ((_ is Cons!43491) (t!337062 p!1991))) b!4071470))

(declare-fun b!4071471 () Bool)

(declare-fun e!2526837 () Bool)

(declare-fun tp!1231993 () Bool)

(assert (=> b!4071471 (= e!2526837 (and tp_is_empty!20781 tp!1231993))))

(assert (=> b!4071377 (= tp!1231984 e!2526837)))

(assert (= (and b!4071377 ((_ is Cons!43491) (t!337062 suffix!260))) b!4071471))

(declare-fun b!4071472 () Bool)

(declare-fun e!2526838 () Bool)

(declare-fun tp!1231994 () Bool)

(assert (=> b!4071472 (= e!2526838 (and tp_is_empty!20781 tp!1231994))))

(assert (=> b!4071376 (= tp!1231982 e!2526838)))

(assert (= (and b!4071376 ((_ is Cons!43491) (t!337062 l!3332))) b!4071472))

(check-sat (not b!4071465) (not b!4071452) (not b!4071451) (not b!4071414) (not b!4071470) (not b!4071464) (not b!4071459) (not d!1210205) (not b!4071471) (not b!4071461) (not b!4071412) (not b!4071455) (not b!4071445) (not b!4071463) tp_is_empty!20781 (not b!4071457) (not b!4071413) (not d!1210217) (not b!4071456) (not b!4071446) (not b!4071460) (not d!1210215) (not b!4071472))
(check-sat)
(get-model)

(assert (=> d!1210217 d!1210221))

(assert (=> d!1210217 d!1210205))

(declare-fun d!1210227 () Bool)

(assert (=> d!1210227 (isPrefix!4087 (t!337062 p!1991) (++!11392 lt!1457484 suffix!260))))

(assert (=> d!1210227 true))

(declare-fun _$58!631 () Unit!63049)

(assert (=> d!1210227 (= (choose!24853 (t!337062 p!1991) lt!1457484 suffix!260) _$58!631)))

(declare-fun bs!592595 () Bool)

(assert (= bs!592595 d!1210227))

(assert (=> bs!592595 m!4680619))

(assert (=> bs!592595 m!4680619))

(assert (=> bs!592595 m!4680621))

(assert (=> d!1210217 d!1210227))

(assert (=> d!1210217 d!1210223))

(declare-fun d!1210229 () Bool)

(assert (=> d!1210229 (= (head!8599 (t!337062 p!1991)) (h!48911 (t!337062 p!1991)))))

(assert (=> b!4071463 d!1210229))

(declare-fun d!1210231 () Bool)

(assert (=> d!1210231 (= (head!8599 lt!1457484) (h!48911 lt!1457484))))

(assert (=> b!4071463 d!1210231))

(declare-fun b!4071474 () Bool)

(declare-fun e!2526839 () List!43615)

(assert (=> b!4071474 (= e!2526839 (Cons!43491 (h!48911 (t!337062 l!3332)) (++!11392 (t!337062 (t!337062 l!3332)) suffix!260)))))

(declare-fun b!4071473 () Bool)

(assert (=> b!4071473 (= e!2526839 suffix!260)))

(declare-fun b!4071475 () Bool)

(declare-fun res!1662579 () Bool)

(declare-fun e!2526840 () Bool)

(assert (=> b!4071475 (=> (not res!1662579) (not e!2526840))))

(declare-fun lt!1457512 () List!43615)

(assert (=> b!4071475 (= res!1662579 (= (size!32516 lt!1457512) (+ (size!32516 (t!337062 l!3332)) (size!32516 suffix!260))))))

(declare-fun d!1210233 () Bool)

(assert (=> d!1210233 e!2526840))

(declare-fun res!1662580 () Bool)

(assert (=> d!1210233 (=> (not res!1662580) (not e!2526840))))

(assert (=> d!1210233 (= res!1662580 (= (content!6649 lt!1457512) ((_ map or) (content!6649 (t!337062 l!3332)) (content!6649 suffix!260))))))

(assert (=> d!1210233 (= lt!1457512 e!2526839)))

(declare-fun c!702724 () Bool)

(assert (=> d!1210233 (= c!702724 ((_ is Nil!43491) (t!337062 l!3332)))))

(assert (=> d!1210233 (= (++!11392 (t!337062 l!3332) suffix!260) lt!1457512)))

(declare-fun b!4071476 () Bool)

(assert (=> b!4071476 (= e!2526840 (or (not (= suffix!260 Nil!43491)) (= lt!1457512 (t!337062 l!3332))))))

(assert (= (and d!1210233 c!702724) b!4071473))

(assert (= (and d!1210233 (not c!702724)) b!4071474))

(assert (= (and d!1210233 res!1662580) b!4071475))

(assert (= (and b!4071475 res!1662579) b!4071476))

(declare-fun m!4680757 () Bool)

(assert (=> b!4071474 m!4680757))

(declare-fun m!4680759 () Bool)

(assert (=> b!4071475 m!4680759))

(declare-fun m!4680761 () Bool)

(assert (=> b!4071475 m!4680761))

(assert (=> b!4071475 m!4680711))

(declare-fun m!4680763 () Bool)

(assert (=> d!1210233 m!4680763))

(declare-fun m!4680765 () Bool)

(assert (=> d!1210233 m!4680765))

(assert (=> d!1210233 m!4680717))

(assert (=> b!4071451 d!1210233))

(declare-fun b!4071478 () Bool)

(declare-fun e!2526841 () List!43615)

(assert (=> b!4071478 (= e!2526841 (Cons!43491 (h!48911 (t!337062 lt!1457484)) (++!11392 (t!337062 (t!337062 lt!1457484)) suffix!260)))))

(declare-fun b!4071477 () Bool)

(assert (=> b!4071477 (= e!2526841 suffix!260)))

(declare-fun b!4071479 () Bool)

(declare-fun res!1662581 () Bool)

(declare-fun e!2526842 () Bool)

(assert (=> b!4071479 (=> (not res!1662581) (not e!2526842))))

(declare-fun lt!1457513 () List!43615)

(assert (=> b!4071479 (= res!1662581 (= (size!32516 lt!1457513) (+ (size!32516 (t!337062 lt!1457484)) (size!32516 suffix!260))))))

(declare-fun d!1210235 () Bool)

(assert (=> d!1210235 e!2526842))

(declare-fun res!1662582 () Bool)

(assert (=> d!1210235 (=> (not res!1662582) (not e!2526842))))

(assert (=> d!1210235 (= res!1662582 (= (content!6649 lt!1457513) ((_ map or) (content!6649 (t!337062 lt!1457484)) (content!6649 suffix!260))))))

(assert (=> d!1210235 (= lt!1457513 e!2526841)))

(declare-fun c!702725 () Bool)

(assert (=> d!1210235 (= c!702725 ((_ is Nil!43491) (t!337062 lt!1457484)))))

(assert (=> d!1210235 (= (++!11392 (t!337062 lt!1457484) suffix!260) lt!1457513)))

(declare-fun b!4071480 () Bool)

(assert (=> b!4071480 (= e!2526842 (or (not (= suffix!260 Nil!43491)) (= lt!1457513 (t!337062 lt!1457484))))))

(assert (= (and d!1210235 c!702725) b!4071477))

(assert (= (and d!1210235 (not c!702725)) b!4071478))

(assert (= (and d!1210235 res!1662582) b!4071479))

(assert (= (and b!4071479 res!1662581) b!4071480))

(declare-fun m!4680767 () Bool)

(assert (=> b!4071478 m!4680767))

(declare-fun m!4680769 () Bool)

(assert (=> b!4071479 m!4680769))

(declare-fun m!4680771 () Bool)

(assert (=> b!4071479 m!4680771))

(assert (=> b!4071479 m!4680711))

(declare-fun m!4680773 () Bool)

(assert (=> d!1210235 m!4680773))

(declare-fun m!4680775 () Bool)

(assert (=> d!1210235 m!4680775))

(assert (=> d!1210235 m!4680717))

(assert (=> b!4071445 d!1210235))

(declare-fun d!1210237 () Bool)

(declare-fun lt!1457516 () Int)

(assert (=> d!1210237 (>= lt!1457516 0)))

(declare-fun e!2526845 () Int)

(assert (=> d!1210237 (= lt!1457516 e!2526845)))

(declare-fun c!702728 () Bool)

(assert (=> d!1210237 (= c!702728 ((_ is Nil!43491) l!3332))))

(assert (=> d!1210237 (= (size!32516 l!3332) lt!1457516)))

(declare-fun b!4071485 () Bool)

(assert (=> b!4071485 (= e!2526845 0)))

(declare-fun b!4071486 () Bool)

(assert (=> b!4071486 (= e!2526845 (+ 1 (size!32516 (t!337062 l!3332))))))

(assert (= (and d!1210237 c!702728) b!4071485))

(assert (= (and d!1210237 (not c!702728)) b!4071486))

(assert (=> b!4071486 m!4680761))

(assert (=> b!4071414 d!1210237))

(declare-fun d!1210239 () Bool)

(declare-fun lt!1457517 () Int)

(assert (=> d!1210239 (>= lt!1457517 0)))

(declare-fun e!2526846 () Int)

(assert (=> d!1210239 (= lt!1457517 e!2526846)))

(declare-fun c!702729 () Bool)

(assert (=> d!1210239 (= c!702729 ((_ is Nil!43491) p!1991))))

(assert (=> d!1210239 (= (size!32516 p!1991) lt!1457517)))

(declare-fun b!4071487 () Bool)

(assert (=> b!4071487 (= e!2526846 0)))

(declare-fun b!4071488 () Bool)

(assert (=> b!4071488 (= e!2526846 (+ 1 (size!32516 (t!337062 p!1991))))))

(assert (= (and d!1210239 c!702729) b!4071487))

(assert (= (and d!1210239 (not c!702729)) b!4071488))

(assert (=> b!4071488 m!4680743))

(assert (=> b!4071414 d!1210239))

(declare-fun d!1210243 () Bool)

(declare-fun lt!1457518 () Int)

(assert (=> d!1210243 (>= lt!1457518 0)))

(declare-fun e!2526847 () Int)

(assert (=> d!1210243 (= lt!1457518 e!2526847)))

(declare-fun c!702730 () Bool)

(assert (=> d!1210243 (= c!702730 ((_ is Nil!43491) lt!1457505))))

(assert (=> d!1210243 (= (size!32516 lt!1457505) lt!1457518)))

(declare-fun b!4071489 () Bool)

(assert (=> b!4071489 (= e!2526847 0)))

(declare-fun b!4071490 () Bool)

(assert (=> b!4071490 (= e!2526847 (+ 1 (size!32516 (t!337062 lt!1457505))))))

(assert (= (and d!1210243 c!702730) b!4071489))

(assert (= (and d!1210243 (not c!702730)) b!4071490))

(declare-fun m!4680777 () Bool)

(assert (=> b!4071490 m!4680777))

(assert (=> b!4071452 d!1210243))

(assert (=> b!4071452 d!1210237))

(declare-fun d!1210245 () Bool)

(declare-fun lt!1457519 () Int)

(assert (=> d!1210245 (>= lt!1457519 0)))

(declare-fun e!2526848 () Int)

(assert (=> d!1210245 (= lt!1457519 e!2526848)))

(declare-fun c!702731 () Bool)

(assert (=> d!1210245 (= c!702731 ((_ is Nil!43491) suffix!260))))

(assert (=> d!1210245 (= (size!32516 suffix!260) lt!1457519)))

(declare-fun b!4071491 () Bool)

(assert (=> b!4071491 (= e!2526848 0)))

(declare-fun b!4071492 () Bool)

(assert (=> b!4071492 (= e!2526848 (+ 1 (size!32516 (t!337062 suffix!260))))))

(assert (= (and d!1210245 c!702731) b!4071491))

(assert (= (and d!1210245 (not c!702731)) b!4071492))

(declare-fun m!4680779 () Bool)

(assert (=> b!4071492 m!4680779))

(assert (=> b!4071452 d!1210245))

(declare-fun d!1210247 () Bool)

(declare-fun lt!1457520 () Int)

(assert (=> d!1210247 (>= lt!1457520 0)))

(declare-fun e!2526849 () Int)

(assert (=> d!1210247 (= lt!1457520 e!2526849)))

(declare-fun c!702732 () Bool)

(assert (=> d!1210247 (= c!702732 ((_ is Nil!43491) lt!1457504))))

(assert (=> d!1210247 (= (size!32516 lt!1457504) lt!1457520)))

(declare-fun b!4071493 () Bool)

(assert (=> b!4071493 (= e!2526849 0)))

(declare-fun b!4071494 () Bool)

(assert (=> b!4071494 (= e!2526849 (+ 1 (size!32516 (t!337062 lt!1457504))))))

(assert (= (and d!1210247 c!702732) b!4071493))

(assert (= (and d!1210247 (not c!702732)) b!4071494))

(declare-fun m!4680781 () Bool)

(assert (=> b!4071494 m!4680781))

(assert (=> b!4071446 d!1210247))

(declare-fun d!1210249 () Bool)

(declare-fun lt!1457521 () Int)

(assert (=> d!1210249 (>= lt!1457521 0)))

(declare-fun e!2526850 () Int)

(assert (=> d!1210249 (= lt!1457521 e!2526850)))

(declare-fun c!702733 () Bool)

(assert (=> d!1210249 (= c!702733 ((_ is Nil!43491) lt!1457484))))

(assert (=> d!1210249 (= (size!32516 lt!1457484) lt!1457521)))

(declare-fun b!4071495 () Bool)

(assert (=> b!4071495 (= e!2526850 0)))

(declare-fun b!4071496 () Bool)

(assert (=> b!4071496 (= e!2526850 (+ 1 (size!32516 (t!337062 lt!1457484))))))

(assert (= (and d!1210249 c!702733) b!4071495))

(assert (= (and d!1210249 (not c!702733)) b!4071496))

(assert (=> b!4071496 m!4680771))

(assert (=> b!4071446 d!1210249))

(assert (=> b!4071446 d!1210245))

(declare-fun d!1210251 () Bool)

(assert (=> d!1210251 (= (head!8599 p!1991) (h!48911 p!1991))))

(assert (=> b!4071455 d!1210251))

(declare-fun d!1210253 () Bool)

(assert (=> d!1210253 (= (head!8599 (++!11392 l!3332 suffix!260)) (h!48911 (++!11392 l!3332 suffix!260)))))

(assert (=> b!4071455 d!1210253))

(declare-fun d!1210255 () Bool)

(declare-fun c!702742 () Bool)

(assert (=> d!1210255 (= c!702742 ((_ is Nil!43491) lt!1457505))))

(declare-fun e!2526860 () (InoxSet B!2613))

(assert (=> d!1210255 (= (content!6649 lt!1457505) e!2526860)))

(declare-fun b!4071515 () Bool)

(assert (=> b!4071515 (= e!2526860 ((as const (Array B!2613 Bool)) false))))

(declare-fun b!4071516 () Bool)

(assert (=> b!4071516 (= e!2526860 ((_ map or) (store ((as const (Array B!2613 Bool)) false) (h!48911 lt!1457505) true) (content!6649 (t!337062 lt!1457505))))))

(assert (= (and d!1210255 c!702742) b!4071515))

(assert (= (and d!1210255 (not c!702742)) b!4071516))

(declare-fun m!4680795 () Bool)

(assert (=> b!4071516 m!4680795))

(declare-fun m!4680797 () Bool)

(assert (=> b!4071516 m!4680797))

(assert (=> d!1210215 d!1210255))

(declare-fun d!1210263 () Bool)

(declare-fun c!702743 () Bool)

(assert (=> d!1210263 (= c!702743 ((_ is Nil!43491) l!3332))))

(declare-fun e!2526861 () (InoxSet B!2613))

(assert (=> d!1210263 (= (content!6649 l!3332) e!2526861)))

(declare-fun b!4071517 () Bool)

(assert (=> b!4071517 (= e!2526861 ((as const (Array B!2613 Bool)) false))))

(declare-fun b!4071518 () Bool)

(assert (=> b!4071518 (= e!2526861 ((_ map or) (store ((as const (Array B!2613 Bool)) false) (h!48911 l!3332) true) (content!6649 (t!337062 l!3332))))))

(assert (= (and d!1210263 c!702743) b!4071517))

(assert (= (and d!1210263 (not c!702743)) b!4071518))

(declare-fun m!4680801 () Bool)

(assert (=> b!4071518 m!4680801))

(assert (=> b!4071518 m!4680765))

(assert (=> d!1210215 d!1210263))

(declare-fun d!1210267 () Bool)

(declare-fun c!702744 () Bool)

(assert (=> d!1210267 (= c!702744 ((_ is Nil!43491) suffix!260))))

(declare-fun e!2526862 () (InoxSet B!2613))

(assert (=> d!1210267 (= (content!6649 suffix!260) e!2526862)))

(declare-fun b!4071519 () Bool)

(assert (=> b!4071519 (= e!2526862 ((as const (Array B!2613 Bool)) false))))

(declare-fun b!4071520 () Bool)

(assert (=> b!4071520 (= e!2526862 ((_ map or) (store ((as const (Array B!2613 Bool)) false) (h!48911 suffix!260) true) (content!6649 (t!337062 suffix!260))))))

(assert (= (and d!1210267 c!702744) b!4071519))

(assert (= (and d!1210267 (not c!702744)) b!4071520))

(declare-fun m!4680803 () Bool)

(assert (=> b!4071520 m!4680803))

(declare-fun m!4680805 () Bool)

(assert (=> b!4071520 m!4680805))

(assert (=> d!1210215 d!1210267))

(declare-fun d!1210273 () Bool)

(declare-fun e!2526865 () Bool)

(assert (=> d!1210273 e!2526865))

(declare-fun res!1662588 () Bool)

(assert (=> d!1210273 (=> res!1662588 e!2526865)))

(declare-fun lt!1457529 () Bool)

(assert (=> d!1210273 (= res!1662588 (not lt!1457529))))

(declare-fun e!2526866 () Bool)

(assert (=> d!1210273 (= lt!1457529 e!2526866)))

(declare-fun res!1662589 () Bool)

(assert (=> d!1210273 (=> res!1662589 e!2526866)))

(assert (=> d!1210273 (= res!1662589 ((_ is Nil!43491) (tail!6333 (t!337062 p!1991))))))

(assert (=> d!1210273 (= (isPrefix!4087 (tail!6333 (t!337062 p!1991)) (tail!6333 lt!1457484)) lt!1457529)))

(declare-fun b!4071526 () Bool)

(declare-fun res!1662587 () Bool)

(declare-fun e!2526867 () Bool)

(assert (=> b!4071526 (=> (not res!1662587) (not e!2526867))))

(assert (=> b!4071526 (= res!1662587 (= (head!8599 (tail!6333 (t!337062 p!1991))) (head!8599 (tail!6333 lt!1457484))))))

(declare-fun b!4071528 () Bool)

(assert (=> b!4071528 (= e!2526865 (>= (size!32516 (tail!6333 lt!1457484)) (size!32516 (tail!6333 (t!337062 p!1991)))))))

(declare-fun b!4071527 () Bool)

(assert (=> b!4071527 (= e!2526867 (isPrefix!4087 (tail!6333 (tail!6333 (t!337062 p!1991))) (tail!6333 (tail!6333 lt!1457484))))))

(declare-fun b!4071525 () Bool)

(assert (=> b!4071525 (= e!2526866 e!2526867)))

(declare-fun res!1662590 () Bool)

(assert (=> b!4071525 (=> (not res!1662590) (not e!2526867))))

(assert (=> b!4071525 (= res!1662590 (not ((_ is Nil!43491) (tail!6333 lt!1457484))))))

(assert (= (and d!1210273 (not res!1662589)) b!4071525))

(assert (= (and b!4071525 res!1662590) b!4071526))

(assert (= (and b!4071526 res!1662587) b!4071527))

(assert (= (and d!1210273 (not res!1662588)) b!4071528))

(assert (=> b!4071526 m!4680745))

(declare-fun m!4680817 () Bool)

(assert (=> b!4071526 m!4680817))

(assert (=> b!4071526 m!4680753))

(declare-fun m!4680819 () Bool)

(assert (=> b!4071526 m!4680819))

(assert (=> b!4071528 m!4680753))

(declare-fun m!4680821 () Bool)

(assert (=> b!4071528 m!4680821))

(assert (=> b!4071528 m!4680745))

(declare-fun m!4680823 () Bool)

(assert (=> b!4071528 m!4680823))

(assert (=> b!4071527 m!4680745))

(declare-fun m!4680825 () Bool)

(assert (=> b!4071527 m!4680825))

(assert (=> b!4071527 m!4680753))

(declare-fun m!4680827 () Bool)

(assert (=> b!4071527 m!4680827))

(assert (=> b!4071527 m!4680825))

(assert (=> b!4071527 m!4680827))

(declare-fun m!4680829 () Bool)

(assert (=> b!4071527 m!4680829))

(assert (=> b!4071464 d!1210273))

(declare-fun d!1210283 () Bool)

(assert (=> d!1210283 (= (tail!6333 (t!337062 p!1991)) (t!337062 (t!337062 p!1991)))))

(assert (=> b!4071464 d!1210283))

(declare-fun d!1210287 () Bool)

(assert (=> d!1210287 (= (tail!6333 lt!1457484) (t!337062 lt!1457484))))

(assert (=> b!4071464 d!1210287))

(declare-fun d!1210289 () Bool)

(declare-fun c!702748 () Bool)

(assert (=> d!1210289 (= c!702748 ((_ is Nil!43491) lt!1457504))))

(declare-fun e!2526870 () (InoxSet B!2613))

(assert (=> d!1210289 (= (content!6649 lt!1457504) e!2526870)))

(declare-fun b!4071533 () Bool)

(assert (=> b!4071533 (= e!2526870 ((as const (Array B!2613 Bool)) false))))

(declare-fun b!4071534 () Bool)

(assert (=> b!4071534 (= e!2526870 ((_ map or) (store ((as const (Array B!2613 Bool)) false) (h!48911 lt!1457504) true) (content!6649 (t!337062 lt!1457504))))))

(assert (= (and d!1210289 c!702748) b!4071533))

(assert (= (and d!1210289 (not c!702748)) b!4071534))

(declare-fun m!4680833 () Bool)

(assert (=> b!4071534 m!4680833))

(declare-fun m!4680835 () Bool)

(assert (=> b!4071534 m!4680835))

(assert (=> d!1210205 d!1210289))

(declare-fun d!1210293 () Bool)

(declare-fun c!702749 () Bool)

(assert (=> d!1210293 (= c!702749 ((_ is Nil!43491) lt!1457484))))

(declare-fun e!2526871 () (InoxSet B!2613))

(assert (=> d!1210293 (= (content!6649 lt!1457484) e!2526871)))

(declare-fun b!4071535 () Bool)

(assert (=> b!4071535 (= e!2526871 ((as const (Array B!2613 Bool)) false))))

(declare-fun b!4071536 () Bool)

(assert (=> b!4071536 (= e!2526871 ((_ map or) (store ((as const (Array B!2613 Bool)) false) (h!48911 lt!1457484) true) (content!6649 (t!337062 lt!1457484))))))

(assert (= (and d!1210293 c!702749) b!4071535))

(assert (= (and d!1210293 (not c!702749)) b!4071536))

(declare-fun m!4680837 () Bool)

(assert (=> b!4071536 m!4680837))

(assert (=> b!4071536 m!4680775))

(assert (=> d!1210205 d!1210293))

(assert (=> d!1210205 d!1210267))

(assert (=> b!4071465 d!1210249))

(declare-fun d!1210295 () Bool)

(declare-fun lt!1457532 () Int)

(assert (=> d!1210295 (>= lt!1457532 0)))

(declare-fun e!2526872 () Int)

(assert (=> d!1210295 (= lt!1457532 e!2526872)))

(declare-fun c!702750 () Bool)

(assert (=> d!1210295 (= c!702750 ((_ is Nil!43491) (t!337062 p!1991)))))

(assert (=> d!1210295 (= (size!32516 (t!337062 p!1991)) lt!1457532)))

(declare-fun b!4071537 () Bool)

(assert (=> b!4071537 (= e!2526872 0)))

(declare-fun b!4071538 () Bool)

(assert (=> b!4071538 (= e!2526872 (+ 1 (size!32516 (t!337062 (t!337062 p!1991)))))))

(assert (= (and d!1210295 c!702750) b!4071537))

(assert (= (and d!1210295 (not c!702750)) b!4071538))

(declare-fun m!4680839 () Bool)

(assert (=> b!4071538 m!4680839))

(assert (=> b!4071465 d!1210295))

(declare-fun d!1210297 () Bool)

(declare-fun e!2526875 () Bool)

(assert (=> d!1210297 e!2526875))

(declare-fun res!1662592 () Bool)

(assert (=> d!1210297 (=> res!1662592 e!2526875)))

(declare-fun lt!1457533 () Bool)

(assert (=> d!1210297 (= res!1662592 (not lt!1457533))))

(declare-fun e!2526876 () Bool)

(assert (=> d!1210297 (= lt!1457533 e!2526876)))

(declare-fun res!1662593 () Bool)

(assert (=> d!1210297 (=> res!1662593 e!2526876)))

(assert (=> d!1210297 (= res!1662593 ((_ is Nil!43491) (tail!6333 (t!337062 p!1991))))))

(assert (=> d!1210297 (= (isPrefix!4087 (tail!6333 (t!337062 p!1991)) (tail!6333 (++!11392 lt!1457484 suffix!260))) lt!1457533)))

(declare-fun b!4071544 () Bool)

(declare-fun res!1662591 () Bool)

(declare-fun e!2526877 () Bool)

(assert (=> b!4071544 (=> (not res!1662591) (not e!2526877))))

(assert (=> b!4071544 (= res!1662591 (= (head!8599 (tail!6333 (t!337062 p!1991))) (head!8599 (tail!6333 (++!11392 lt!1457484 suffix!260)))))))

(declare-fun b!4071546 () Bool)

(assert (=> b!4071546 (= e!2526875 (>= (size!32516 (tail!6333 (++!11392 lt!1457484 suffix!260))) (size!32516 (tail!6333 (t!337062 p!1991)))))))

(declare-fun b!4071545 () Bool)

(assert (=> b!4071545 (= e!2526877 (isPrefix!4087 (tail!6333 (tail!6333 (t!337062 p!1991))) (tail!6333 (tail!6333 (++!11392 lt!1457484 suffix!260)))))))

(declare-fun b!4071543 () Bool)

(assert (=> b!4071543 (= e!2526876 e!2526877)))

(declare-fun res!1662594 () Bool)

(assert (=> b!4071543 (=> (not res!1662594) (not e!2526877))))

(assert (=> b!4071543 (= res!1662594 (not ((_ is Nil!43491) (tail!6333 (++!11392 lt!1457484 suffix!260)))))))

(assert (= (and d!1210297 (not res!1662593)) b!4071543))

(assert (= (and b!4071543 res!1662594) b!4071544))

(assert (= (and b!4071544 res!1662591) b!4071545))

(assert (= (and d!1210297 (not res!1662592)) b!4071546))

(assert (=> b!4071544 m!4680745))

(assert (=> b!4071544 m!4680817))

(assert (=> b!4071544 m!4680747))

(declare-fun m!4680841 () Bool)

(assert (=> b!4071544 m!4680841))

(assert (=> b!4071546 m!4680747))

(declare-fun m!4680843 () Bool)

(assert (=> b!4071546 m!4680843))

(assert (=> b!4071546 m!4680745))

(assert (=> b!4071546 m!4680823))

(assert (=> b!4071545 m!4680745))

(assert (=> b!4071545 m!4680825))

(assert (=> b!4071545 m!4680747))

(declare-fun m!4680845 () Bool)

(assert (=> b!4071545 m!4680845))

(assert (=> b!4071545 m!4680825))

(assert (=> b!4071545 m!4680845))

(declare-fun m!4680847 () Bool)

(assert (=> b!4071545 m!4680847))

(assert (=> b!4071460 d!1210297))

(assert (=> b!4071460 d!1210283))

(declare-fun d!1210299 () Bool)

(assert (=> d!1210299 (= (tail!6333 (++!11392 lt!1457484 suffix!260)) (t!337062 (++!11392 lt!1457484 suffix!260)))))

(assert (=> b!4071460 d!1210299))

(declare-fun d!1210301 () Bool)

(declare-fun lt!1457534 () Int)

(assert (=> d!1210301 (>= lt!1457534 0)))

(declare-fun e!2526878 () Int)

(assert (=> d!1210301 (= lt!1457534 e!2526878)))

(declare-fun c!702753 () Bool)

(assert (=> d!1210301 (= c!702753 ((_ is Nil!43491) (++!11392 l!3332 suffix!260)))))

(assert (=> d!1210301 (= (size!32516 (++!11392 l!3332 suffix!260)) lt!1457534)))

(declare-fun b!4071547 () Bool)

(assert (=> b!4071547 (= e!2526878 0)))

(declare-fun b!4071548 () Bool)

(assert (=> b!4071548 (= e!2526878 (+ 1 (size!32516 (t!337062 (++!11392 l!3332 suffix!260)))))))

(assert (= (and d!1210301 c!702753) b!4071547))

(assert (= (and d!1210301 (not c!702753)) b!4071548))

(declare-fun m!4680849 () Bool)

(assert (=> b!4071548 m!4680849))

(assert (=> b!4071457 d!1210301))

(assert (=> b!4071457 d!1210239))

(declare-fun d!1210303 () Bool)

(declare-fun lt!1457535 () Int)

(assert (=> d!1210303 (>= lt!1457535 0)))

(declare-fun e!2526880 () Int)

(assert (=> d!1210303 (= lt!1457535 e!2526880)))

(declare-fun c!702755 () Bool)

(assert (=> d!1210303 (= c!702755 ((_ is Nil!43491) (++!11392 lt!1457484 suffix!260)))))

(assert (=> d!1210303 (= (size!32516 (++!11392 lt!1457484 suffix!260)) lt!1457535)))

(declare-fun b!4071551 () Bool)

(assert (=> b!4071551 (= e!2526880 0)))

(declare-fun b!4071552 () Bool)

(assert (=> b!4071552 (= e!2526880 (+ 1 (size!32516 (t!337062 (++!11392 lt!1457484 suffix!260)))))))

(assert (= (and d!1210303 c!702755) b!4071551))

(assert (= (and d!1210303 (not c!702755)) b!4071552))

(declare-fun m!4680855 () Bool)

(assert (=> b!4071552 m!4680855))

(assert (=> b!4071461 d!1210303))

(assert (=> b!4071461 d!1210295))

(assert (=> b!4071459 d!1210229))

(declare-fun d!1210307 () Bool)

(assert (=> d!1210307 (= (head!8599 (++!11392 lt!1457484 suffix!260)) (h!48911 (++!11392 lt!1457484 suffix!260)))))

(assert (=> b!4071459 d!1210307))

(declare-fun d!1210311 () Bool)

(declare-fun e!2526883 () Bool)

(assert (=> d!1210311 e!2526883))

(declare-fun res!1662596 () Bool)

(assert (=> d!1210311 (=> res!1662596 e!2526883)))

(declare-fun lt!1457536 () Bool)

(assert (=> d!1210311 (= res!1662596 (not lt!1457536))))

(declare-fun e!2526884 () Bool)

(assert (=> d!1210311 (= lt!1457536 e!2526884)))

(declare-fun res!1662597 () Bool)

(assert (=> d!1210311 (=> res!1662597 e!2526884)))

(assert (=> d!1210311 (= res!1662597 ((_ is Nil!43491) (tail!6333 p!1991)))))

(assert (=> d!1210311 (= (isPrefix!4087 (tail!6333 p!1991) (tail!6333 (++!11392 l!3332 suffix!260))) lt!1457536)))

(declare-fun b!4071558 () Bool)

(declare-fun res!1662595 () Bool)

(declare-fun e!2526885 () Bool)

(assert (=> b!4071558 (=> (not res!1662595) (not e!2526885))))

(assert (=> b!4071558 (= res!1662595 (= (head!8599 (tail!6333 p!1991)) (head!8599 (tail!6333 (++!11392 l!3332 suffix!260)))))))

(declare-fun b!4071560 () Bool)

(assert (=> b!4071560 (= e!2526883 (>= (size!32516 (tail!6333 (++!11392 l!3332 suffix!260))) (size!32516 (tail!6333 p!1991))))))

(declare-fun b!4071559 () Bool)

(assert (=> b!4071559 (= e!2526885 (isPrefix!4087 (tail!6333 (tail!6333 p!1991)) (tail!6333 (tail!6333 (++!11392 l!3332 suffix!260)))))))

(declare-fun b!4071557 () Bool)

(assert (=> b!4071557 (= e!2526884 e!2526885)))

(declare-fun res!1662598 () Bool)

(assert (=> b!4071557 (=> (not res!1662598) (not e!2526885))))

(assert (=> b!4071557 (= res!1662598 (not ((_ is Nil!43491) (tail!6333 (++!11392 l!3332 suffix!260)))))))

(assert (= (and d!1210311 (not res!1662597)) b!4071557))

(assert (= (and b!4071557 res!1662598) b!4071558))

(assert (= (and b!4071558 res!1662595) b!4071559))

(assert (= (and d!1210311 (not res!1662596)) b!4071560))

(assert (=> b!4071558 m!4680663))

(declare-fun m!4680865 () Bool)

(assert (=> b!4071558 m!4680865))

(assert (=> b!4071558 m!4680733))

(declare-fun m!4680869 () Bool)

(assert (=> b!4071558 m!4680869))

(assert (=> b!4071560 m!4680733))

(declare-fun m!4680871 () Bool)

(assert (=> b!4071560 m!4680871))

(assert (=> b!4071560 m!4680663))

(declare-fun m!4680873 () Bool)

(assert (=> b!4071560 m!4680873))

(assert (=> b!4071559 m!4680663))

(declare-fun m!4680875 () Bool)

(assert (=> b!4071559 m!4680875))

(assert (=> b!4071559 m!4680733))

(declare-fun m!4680877 () Bool)

(assert (=> b!4071559 m!4680877))

(assert (=> b!4071559 m!4680875))

(assert (=> b!4071559 m!4680877))

(declare-fun m!4680879 () Bool)

(assert (=> b!4071559 m!4680879))

(assert (=> b!4071456 d!1210311))

(declare-fun d!1210321 () Bool)

(assert (=> d!1210321 (= (tail!6333 p!1991) (t!337062 p!1991))))

(assert (=> b!4071456 d!1210321))

(declare-fun d!1210323 () Bool)

(assert (=> d!1210323 (= (tail!6333 (++!11392 l!3332 suffix!260)) (t!337062 (++!11392 l!3332 suffix!260)))))

(assert (=> b!4071456 d!1210323))

(declare-fun d!1210325 () Bool)

(declare-fun e!2526891 () Bool)

(assert (=> d!1210325 e!2526891))

(declare-fun res!1662600 () Bool)

(assert (=> d!1210325 (=> res!1662600 e!2526891)))

(declare-fun lt!1457540 () Bool)

(assert (=> d!1210325 (= res!1662600 (not lt!1457540))))

(declare-fun e!2526892 () Bool)

(assert (=> d!1210325 (= lt!1457540 e!2526892)))

(declare-fun res!1662601 () Bool)

(assert (=> d!1210325 (=> res!1662601 e!2526892)))

(assert (=> d!1210325 (= res!1662601 ((_ is Nil!43491) (tail!6333 p!1991)))))

(assert (=> d!1210325 (= (isPrefix!4087 (tail!6333 p!1991) (tail!6333 l!3332)) lt!1457540)))

(declare-fun b!4071572 () Bool)

(declare-fun res!1662599 () Bool)

(declare-fun e!2526893 () Bool)

(assert (=> b!4071572 (=> (not res!1662599) (not e!2526893))))

(assert (=> b!4071572 (= res!1662599 (= (head!8599 (tail!6333 p!1991)) (head!8599 (tail!6333 l!3332))))))

(declare-fun b!4071574 () Bool)

(assert (=> b!4071574 (= e!2526891 (>= (size!32516 (tail!6333 l!3332)) (size!32516 (tail!6333 p!1991))))))

(declare-fun b!4071573 () Bool)

(assert (=> b!4071573 (= e!2526893 (isPrefix!4087 (tail!6333 (tail!6333 p!1991)) (tail!6333 (tail!6333 l!3332))))))

(declare-fun b!4071571 () Bool)

(assert (=> b!4071571 (= e!2526892 e!2526893)))

(declare-fun res!1662602 () Bool)

(assert (=> b!4071571 (=> (not res!1662602) (not e!2526893))))

(assert (=> b!4071571 (= res!1662602 (not ((_ is Nil!43491) (tail!6333 l!3332))))))

(assert (= (and d!1210325 (not res!1662601)) b!4071571))

(assert (= (and b!4071571 res!1662602) b!4071572))

(assert (= (and b!4071572 res!1662599) b!4071573))

(assert (= (and d!1210325 (not res!1662600)) b!4071574))

(assert (=> b!4071572 m!4680663))

(assert (=> b!4071572 m!4680865))

(assert (=> b!4071572 m!4680617))

(declare-fun m!4680889 () Bool)

(assert (=> b!4071572 m!4680889))

(assert (=> b!4071574 m!4680617))

(declare-fun m!4680891 () Bool)

(assert (=> b!4071574 m!4680891))

(assert (=> b!4071574 m!4680663))

(assert (=> b!4071574 m!4680873))

(assert (=> b!4071573 m!4680663))

(assert (=> b!4071573 m!4680875))

(assert (=> b!4071573 m!4680617))

(declare-fun m!4680893 () Bool)

(assert (=> b!4071573 m!4680893))

(assert (=> b!4071573 m!4680875))

(assert (=> b!4071573 m!4680893))

(declare-fun m!4680895 () Bool)

(assert (=> b!4071573 m!4680895))

(assert (=> b!4071413 d!1210325))

(assert (=> b!4071413 d!1210321))

(assert (=> b!4071413 d!1210225))

(assert (=> b!4071412 d!1210251))

(declare-fun d!1210333 () Bool)

(assert (=> d!1210333 (= (head!8599 l!3332) (h!48911 l!3332))))

(assert (=> b!4071412 d!1210333))

(declare-fun b!4071581 () Bool)

(declare-fun e!2526898 () Bool)

(declare-fun tp!1231995 () Bool)

(assert (=> b!4071581 (= e!2526898 (and tp_is_empty!20781 tp!1231995))))

(assert (=> b!4071471 (= tp!1231993 e!2526898)))

(assert (= (and b!4071471 ((_ is Cons!43491) (t!337062 (t!337062 suffix!260)))) b!4071581))

(declare-fun b!4071582 () Bool)

(declare-fun e!2526899 () Bool)

(declare-fun tp!1231996 () Bool)

(assert (=> b!4071582 (= e!2526899 (and tp_is_empty!20781 tp!1231996))))

(assert (=> b!4071470 (= tp!1231992 e!2526899)))

(assert (= (and b!4071470 ((_ is Cons!43491) (t!337062 (t!337062 p!1991)))) b!4071582))

(declare-fun b!4071583 () Bool)

(declare-fun e!2526900 () Bool)

(declare-fun tp!1231997 () Bool)

(assert (=> b!4071583 (= e!2526900 (and tp_is_empty!20781 tp!1231997))))

(assert (=> b!4071472 (= tp!1231994 e!2526900)))

(assert (= (and b!4071472 ((_ is Cons!43491) (t!337062 (t!337062 l!3332)))) b!4071583))

(check-sat (not b!4071520) (not b!4071527) (not b!4071516) (not d!1210235) (not b!4071518) (not b!4071475) (not b!4071479) (not b!4071548) (not b!4071572) (not b!4071582) (not b!4071558) (not b!4071496) (not b!4071538) (not b!4071528) (not b!4071526) (not b!4071536) (not b!4071534) (not b!4071546) (not b!4071492) tp_is_empty!20781 (not b!4071574) (not b!4071545) (not b!4071494) (not d!1210233) (not b!4071552) (not b!4071581) (not b!4071583) (not d!1210227) (not b!4071478) (not b!4071488) (not b!4071486) (not b!4071559) (not b!4071474) (not b!4071490) (not b!4071573) (not b!4071544) (not b!4071560))
(check-sat)
