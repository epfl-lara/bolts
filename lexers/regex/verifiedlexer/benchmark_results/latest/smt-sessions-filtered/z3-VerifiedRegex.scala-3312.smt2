; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189000 () Bool)

(assert start!189000)

(declare-fun b!1887479 () Bool)

(declare-fun res!842651 () Bool)

(declare-fun e!1204475 () Bool)

(assert (=> b!1887479 (=> (not res!842651) (not e!1204475))))

(declare-datatypes ((B!1729 0))(
  ( (B!1730 (val!6150 Int)) )
))
(declare-datatypes ((List!21143 0))(
  ( (Nil!21061) (Cons!21061 (h!26462 B!1729) (t!175142 List!21143)) )
))
(declare-fun l2!1298 () List!21143)

(declare-fun l3!256 () List!21143)

(declare-fun subseq!411 (List!21143 List!21143) Bool)

(assert (=> b!1887479 (= res!842651 (subseq!411 (t!175142 l2!1298) (t!175142 l3!256)))))

(declare-fun lt!723697 () Int)

(declare-fun lt!723696 () Int)

(declare-fun b!1887480 () Bool)

(declare-fun lt!723698 () Int)

(declare-fun lt!723694 () Int)

(assert (=> b!1887480 (= e!1204475 (and (>= lt!723696 lt!723694) (or (not (= lt!723696 lt!723694)) (>= lt!723697 lt!723698))))))

(declare-fun size!16717 (List!21143) Int)

(assert (=> b!1887480 (= lt!723698 (size!16717 l3!256))))

(assert (=> b!1887480 (= lt!723694 (size!16717 l2!1298))))

(assert (=> b!1887480 (= lt!723697 (size!16717 (t!175142 l3!256)))))

(assert (=> b!1887480 (= lt!723696 (size!16717 (t!175142 l2!1298)))))

(declare-fun lt!723695 () Int)

(declare-fun l1!1329 () List!21143)

(assert (=> b!1887480 (= lt!723695 (size!16717 l1!1329))))

(declare-fun b!1887481 () Bool)

(declare-fun res!842650 () Bool)

(assert (=> b!1887481 (=> (not res!842650) (not e!1204475))))

(assert (=> b!1887481 (= res!842650 (subseq!411 l1!1329 (t!175142 l2!1298)))))

(declare-fun b!1887482 () Bool)

(declare-fun e!1204474 () Bool)

(declare-fun tp_is_empty!8985 () Bool)

(declare-fun tp!538166 () Bool)

(assert (=> b!1887482 (= e!1204474 (and tp_is_empty!8985 tp!538166))))

(declare-fun b!1887483 () Bool)

(declare-fun res!842654 () Bool)

(assert (=> b!1887483 (=> (not res!842654) (not e!1204475))))

(assert (=> b!1887483 (= res!842654 (subseq!411 l2!1298 l3!256))))

(declare-fun b!1887484 () Bool)

(declare-fun res!842652 () Bool)

(assert (=> b!1887484 (=> (not res!842652) (not e!1204475))))

(get-info :version)

(assert (=> b!1887484 (= res!842652 (and (or (not ((_ is Cons!21061) l1!1329)) (not ((_ is Cons!21061) l2!1298)) (not ((_ is Cons!21061) l3!256)) (= (h!26462 l2!1298) (h!26462 l3!256))) ((_ is Cons!21061) l1!1329) ((_ is Cons!21061) l2!1298) ((_ is Cons!21061) l3!256) (= (h!26462 l2!1298) (h!26462 l3!256))))))

(declare-fun b!1887485 () Bool)

(declare-fun e!1204476 () Bool)

(declare-fun tp!538168 () Bool)

(assert (=> b!1887485 (= e!1204476 (and tp_is_empty!8985 tp!538168))))

(declare-fun b!1887486 () Bool)

(declare-fun res!842649 () Bool)

(assert (=> b!1887486 (=> (not res!842649) (not e!1204475))))

(assert (=> b!1887486 (= res!842649 (not (= (h!26462 l1!1329) (h!26462 l2!1298))))))

(declare-fun res!842653 () Bool)

(assert (=> start!189000 (=> (not res!842653) (not e!1204475))))

(assert (=> start!189000 (= res!842653 (subseq!411 l1!1329 l2!1298))))

(assert (=> start!189000 e!1204475))

(assert (=> start!189000 e!1204474))

(assert (=> start!189000 e!1204476))

(declare-fun e!1204473 () Bool)

(assert (=> start!189000 e!1204473))

(declare-fun b!1887478 () Bool)

(declare-fun tp!538167 () Bool)

(assert (=> b!1887478 (= e!1204473 (and tp_is_empty!8985 tp!538167))))

(assert (= (and start!189000 res!842653) b!1887483))

(assert (= (and b!1887483 res!842654) b!1887484))

(assert (= (and b!1887484 res!842652) b!1887479))

(assert (= (and b!1887479 res!842651) b!1887486))

(assert (= (and b!1887486 res!842649) b!1887481))

(assert (= (and b!1887481 res!842650) b!1887480))

(assert (= (and start!189000 ((_ is Cons!21061) l1!1329)) b!1887482))

(assert (= (and start!189000 ((_ is Cons!21061) l2!1298)) b!1887485))

(assert (= (and start!189000 ((_ is Cons!21061) l3!256)) b!1887478))

(declare-fun m!2319429 () Bool)

(assert (=> b!1887479 m!2319429))

(declare-fun m!2319431 () Bool)

(assert (=> b!1887480 m!2319431))

(declare-fun m!2319433 () Bool)

(assert (=> b!1887480 m!2319433))

(declare-fun m!2319435 () Bool)

(assert (=> b!1887480 m!2319435))

(declare-fun m!2319437 () Bool)

(assert (=> b!1887480 m!2319437))

(declare-fun m!2319439 () Bool)

(assert (=> b!1887480 m!2319439))

(declare-fun m!2319441 () Bool)

(assert (=> start!189000 m!2319441))

(declare-fun m!2319443 () Bool)

(assert (=> b!1887481 m!2319443))

(declare-fun m!2319445 () Bool)

(assert (=> b!1887483 m!2319445))

(check-sat (not b!1887485) (not b!1887483) (not b!1887480) (not b!1887482) (not b!1887478) tp_is_empty!8985 (not b!1887479) (not b!1887481) (not start!189000))
(check-sat)
(get-model)

(declare-fun b!1887501 () Bool)

(declare-fun e!1204489 () Bool)

(assert (=> b!1887501 (= e!1204489 (subseq!411 (t!175142 (t!175142 l2!1298)) (t!175142 (t!175142 l3!256))))))

(declare-fun b!1887500 () Bool)

(declare-fun e!1204488 () Bool)

(declare-fun e!1204490 () Bool)

(assert (=> b!1887500 (= e!1204488 e!1204490)))

(declare-fun res!842666 () Bool)

(assert (=> b!1887500 (=> res!842666 e!1204490)))

(assert (=> b!1887500 (= res!842666 e!1204489)))

(declare-fun res!842663 () Bool)

(assert (=> b!1887500 (=> (not res!842663) (not e!1204489))))

(assert (=> b!1887500 (= res!842663 (= (h!26462 (t!175142 l2!1298)) (h!26462 (t!175142 l3!256))))))

(declare-fun b!1887502 () Bool)

(assert (=> b!1887502 (= e!1204490 (subseq!411 (t!175142 l2!1298) (t!175142 (t!175142 l3!256))))))

(declare-fun b!1887499 () Bool)

(declare-fun e!1204487 () Bool)

(assert (=> b!1887499 (= e!1204487 e!1204488)))

(declare-fun res!842665 () Bool)

(assert (=> b!1887499 (=> (not res!842665) (not e!1204488))))

(assert (=> b!1887499 (= res!842665 ((_ is Cons!21061) (t!175142 l3!256)))))

(declare-fun d!578205 () Bool)

(declare-fun res!842664 () Bool)

(assert (=> d!578205 (=> res!842664 e!1204487)))

(assert (=> d!578205 (= res!842664 ((_ is Nil!21061) (t!175142 l2!1298)))))

(assert (=> d!578205 (= (subseq!411 (t!175142 l2!1298) (t!175142 l3!256)) e!1204487)))

(assert (= (and d!578205 (not res!842664)) b!1887499))

(assert (= (and b!1887499 res!842665) b!1887500))

(assert (= (and b!1887500 res!842663) b!1887501))

(assert (= (and b!1887500 (not res!842666)) b!1887502))

(declare-fun m!2319447 () Bool)

(assert (=> b!1887501 m!2319447))

(declare-fun m!2319449 () Bool)

(assert (=> b!1887502 m!2319449))

(assert (=> b!1887479 d!578205))

(declare-fun d!578209 () Bool)

(declare-fun lt!723708 () Int)

(assert (=> d!578209 (>= lt!723708 0)))

(declare-fun e!1204498 () Int)

(assert (=> d!578209 (= lt!723708 e!1204498)))

(declare-fun c!308152 () Bool)

(assert (=> d!578209 (= c!308152 ((_ is Nil!21061) (t!175142 l2!1298)))))

(assert (=> d!578209 (= (size!16717 (t!175142 l2!1298)) lt!723708)))

(declare-fun b!1887517 () Bool)

(assert (=> b!1887517 (= e!1204498 0)))

(declare-fun b!1887518 () Bool)

(assert (=> b!1887518 (= e!1204498 (+ 1 (size!16717 (t!175142 (t!175142 l2!1298)))))))

(assert (= (and d!578209 c!308152) b!1887517))

(assert (= (and d!578209 (not c!308152)) b!1887518))

(declare-fun m!2319457 () Bool)

(assert (=> b!1887518 m!2319457))

(assert (=> b!1887480 d!578209))

(declare-fun d!578221 () Bool)

(declare-fun lt!723709 () Int)

(assert (=> d!578221 (>= lt!723709 0)))

(declare-fun e!1204499 () Int)

(assert (=> d!578221 (= lt!723709 e!1204499)))

(declare-fun c!308153 () Bool)

(assert (=> d!578221 (= c!308153 ((_ is Nil!21061) l1!1329))))

(assert (=> d!578221 (= (size!16717 l1!1329) lt!723709)))

(declare-fun b!1887519 () Bool)

(assert (=> b!1887519 (= e!1204499 0)))

(declare-fun b!1887520 () Bool)

(assert (=> b!1887520 (= e!1204499 (+ 1 (size!16717 (t!175142 l1!1329))))))

(assert (= (and d!578221 c!308153) b!1887519))

(assert (= (and d!578221 (not c!308153)) b!1887520))

(declare-fun m!2319459 () Bool)

(assert (=> b!1887520 m!2319459))

(assert (=> b!1887480 d!578221))

(declare-fun d!578223 () Bool)

(declare-fun lt!723710 () Int)

(assert (=> d!578223 (>= lt!723710 0)))

(declare-fun e!1204500 () Int)

(assert (=> d!578223 (= lt!723710 e!1204500)))

(declare-fun c!308154 () Bool)

(assert (=> d!578223 (= c!308154 ((_ is Nil!21061) l2!1298))))

(assert (=> d!578223 (= (size!16717 l2!1298) lt!723710)))

(declare-fun b!1887521 () Bool)

(assert (=> b!1887521 (= e!1204500 0)))

(declare-fun b!1887522 () Bool)

(assert (=> b!1887522 (= e!1204500 (+ 1 (size!16717 (t!175142 l2!1298))))))

(assert (= (and d!578223 c!308154) b!1887521))

(assert (= (and d!578223 (not c!308154)) b!1887522))

(assert (=> b!1887522 m!2319433))

(assert (=> b!1887480 d!578223))

(declare-fun d!578225 () Bool)

(declare-fun lt!723711 () Int)

(assert (=> d!578225 (>= lt!723711 0)))

(declare-fun e!1204501 () Int)

(assert (=> d!578225 (= lt!723711 e!1204501)))

(declare-fun c!308155 () Bool)

(assert (=> d!578225 (= c!308155 ((_ is Nil!21061) l3!256))))

(assert (=> d!578225 (= (size!16717 l3!256) lt!723711)))

(declare-fun b!1887523 () Bool)

(assert (=> b!1887523 (= e!1204501 0)))

(declare-fun b!1887524 () Bool)

(assert (=> b!1887524 (= e!1204501 (+ 1 (size!16717 (t!175142 l3!256))))))

(assert (= (and d!578225 c!308155) b!1887523))

(assert (= (and d!578225 (not c!308155)) b!1887524))

(assert (=> b!1887524 m!2319439))

(assert (=> b!1887480 d!578225))

(declare-fun d!578227 () Bool)

(declare-fun lt!723712 () Int)

(assert (=> d!578227 (>= lt!723712 0)))

(declare-fun e!1204502 () Int)

(assert (=> d!578227 (= lt!723712 e!1204502)))

(declare-fun c!308156 () Bool)

(assert (=> d!578227 (= c!308156 ((_ is Nil!21061) (t!175142 l3!256)))))

(assert (=> d!578227 (= (size!16717 (t!175142 l3!256)) lt!723712)))

(declare-fun b!1887525 () Bool)

(assert (=> b!1887525 (= e!1204502 0)))

(declare-fun b!1887526 () Bool)

(assert (=> b!1887526 (= e!1204502 (+ 1 (size!16717 (t!175142 (t!175142 l3!256)))))))

(assert (= (and d!578227 c!308156) b!1887525))

(assert (= (and d!578227 (not c!308156)) b!1887526))

(declare-fun m!2319461 () Bool)

(assert (=> b!1887526 m!2319461))

(assert (=> b!1887480 d!578227))

(declare-fun b!1887529 () Bool)

(declare-fun e!1204505 () Bool)

(assert (=> b!1887529 (= e!1204505 (subseq!411 (t!175142 l1!1329) (t!175142 (t!175142 l2!1298))))))

(declare-fun b!1887528 () Bool)

(declare-fun e!1204504 () Bool)

(declare-fun e!1204506 () Bool)

(assert (=> b!1887528 (= e!1204504 e!1204506)))

(declare-fun res!842670 () Bool)

(assert (=> b!1887528 (=> res!842670 e!1204506)))

(assert (=> b!1887528 (= res!842670 e!1204505)))

(declare-fun res!842667 () Bool)

(assert (=> b!1887528 (=> (not res!842667) (not e!1204505))))

(assert (=> b!1887528 (= res!842667 (= (h!26462 l1!1329) (h!26462 (t!175142 l2!1298))))))

(declare-fun b!1887530 () Bool)

(assert (=> b!1887530 (= e!1204506 (subseq!411 l1!1329 (t!175142 (t!175142 l2!1298))))))

(declare-fun b!1887527 () Bool)

(declare-fun e!1204503 () Bool)

(assert (=> b!1887527 (= e!1204503 e!1204504)))

(declare-fun res!842669 () Bool)

(assert (=> b!1887527 (=> (not res!842669) (not e!1204504))))

(assert (=> b!1887527 (= res!842669 ((_ is Cons!21061) (t!175142 l2!1298)))))

(declare-fun d!578229 () Bool)

(declare-fun res!842668 () Bool)

(assert (=> d!578229 (=> res!842668 e!1204503)))

(assert (=> d!578229 (= res!842668 ((_ is Nil!21061) l1!1329))))

(assert (=> d!578229 (= (subseq!411 l1!1329 (t!175142 l2!1298)) e!1204503)))

(assert (= (and d!578229 (not res!842668)) b!1887527))

(assert (= (and b!1887527 res!842669) b!1887528))

(assert (= (and b!1887528 res!842667) b!1887529))

(assert (= (and b!1887528 (not res!842670)) b!1887530))

(declare-fun m!2319463 () Bool)

(assert (=> b!1887529 m!2319463))

(declare-fun m!2319465 () Bool)

(assert (=> b!1887530 m!2319465))

(assert (=> b!1887481 d!578229))

(declare-fun b!1887533 () Bool)

(declare-fun e!1204509 () Bool)

(assert (=> b!1887533 (= e!1204509 (subseq!411 (t!175142 l2!1298) (t!175142 l3!256)))))

(declare-fun b!1887532 () Bool)

(declare-fun e!1204508 () Bool)

(declare-fun e!1204510 () Bool)

(assert (=> b!1887532 (= e!1204508 e!1204510)))

(declare-fun res!842674 () Bool)

(assert (=> b!1887532 (=> res!842674 e!1204510)))

(assert (=> b!1887532 (= res!842674 e!1204509)))

(declare-fun res!842671 () Bool)

(assert (=> b!1887532 (=> (not res!842671) (not e!1204509))))

(assert (=> b!1887532 (= res!842671 (= (h!26462 l2!1298) (h!26462 l3!256)))))

(declare-fun b!1887534 () Bool)

(assert (=> b!1887534 (= e!1204510 (subseq!411 l2!1298 (t!175142 l3!256)))))

(declare-fun b!1887531 () Bool)

(declare-fun e!1204507 () Bool)

(assert (=> b!1887531 (= e!1204507 e!1204508)))

(declare-fun res!842673 () Bool)

(assert (=> b!1887531 (=> (not res!842673) (not e!1204508))))

(assert (=> b!1887531 (= res!842673 ((_ is Cons!21061) l3!256))))

(declare-fun d!578231 () Bool)

(declare-fun res!842672 () Bool)

(assert (=> d!578231 (=> res!842672 e!1204507)))

(assert (=> d!578231 (= res!842672 ((_ is Nil!21061) l2!1298))))

(assert (=> d!578231 (= (subseq!411 l2!1298 l3!256) e!1204507)))

(assert (= (and d!578231 (not res!842672)) b!1887531))

(assert (= (and b!1887531 res!842673) b!1887532))

(assert (= (and b!1887532 res!842671) b!1887533))

(assert (= (and b!1887532 (not res!842674)) b!1887534))

(assert (=> b!1887533 m!2319429))

(declare-fun m!2319467 () Bool)

(assert (=> b!1887534 m!2319467))

(assert (=> b!1887483 d!578231))

(declare-fun b!1887537 () Bool)

(declare-fun e!1204513 () Bool)

(assert (=> b!1887537 (= e!1204513 (subseq!411 (t!175142 l1!1329) (t!175142 l2!1298)))))

(declare-fun b!1887536 () Bool)

(declare-fun e!1204512 () Bool)

(declare-fun e!1204514 () Bool)

(assert (=> b!1887536 (= e!1204512 e!1204514)))

(declare-fun res!842678 () Bool)

(assert (=> b!1887536 (=> res!842678 e!1204514)))

(assert (=> b!1887536 (= res!842678 e!1204513)))

(declare-fun res!842675 () Bool)

(assert (=> b!1887536 (=> (not res!842675) (not e!1204513))))

(assert (=> b!1887536 (= res!842675 (= (h!26462 l1!1329) (h!26462 l2!1298)))))

(declare-fun b!1887538 () Bool)

(assert (=> b!1887538 (= e!1204514 (subseq!411 l1!1329 (t!175142 l2!1298)))))

(declare-fun b!1887535 () Bool)

(declare-fun e!1204511 () Bool)

(assert (=> b!1887535 (= e!1204511 e!1204512)))

(declare-fun res!842677 () Bool)

(assert (=> b!1887535 (=> (not res!842677) (not e!1204512))))

(assert (=> b!1887535 (= res!842677 ((_ is Cons!21061) l2!1298))))

(declare-fun d!578233 () Bool)

(declare-fun res!842676 () Bool)

(assert (=> d!578233 (=> res!842676 e!1204511)))

(assert (=> d!578233 (= res!842676 ((_ is Nil!21061) l1!1329))))

(assert (=> d!578233 (= (subseq!411 l1!1329 l2!1298) e!1204511)))

(assert (= (and d!578233 (not res!842676)) b!1887535))

(assert (= (and b!1887535 res!842677) b!1887536))

(assert (= (and b!1887536 res!842675) b!1887537))

(assert (= (and b!1887536 (not res!842678)) b!1887538))

(declare-fun m!2319469 () Bool)

(assert (=> b!1887537 m!2319469))

(assert (=> b!1887538 m!2319443))

(assert (=> start!189000 d!578233))

(declare-fun b!1887543 () Bool)

(declare-fun e!1204517 () Bool)

(declare-fun tp!538171 () Bool)

(assert (=> b!1887543 (= e!1204517 (and tp_is_empty!8985 tp!538171))))

(assert (=> b!1887485 (= tp!538168 e!1204517)))

(assert (= (and b!1887485 ((_ is Cons!21061) (t!175142 l2!1298))) b!1887543))

(declare-fun b!1887548 () Bool)

(declare-fun e!1204522 () Bool)

(declare-fun tp!538172 () Bool)

(assert (=> b!1887548 (= e!1204522 (and tp_is_empty!8985 tp!538172))))

(assert (=> b!1887482 (= tp!538166 e!1204522)))

(assert (= (and b!1887482 ((_ is Cons!21061) (t!175142 l1!1329))) b!1887548))

(declare-fun b!1887549 () Bool)

(declare-fun e!1204527 () Bool)

(declare-fun tp!538173 () Bool)

(assert (=> b!1887549 (= e!1204527 (and tp_is_empty!8985 tp!538173))))

(assert (=> b!1887478 (= tp!538167 e!1204527)))

(assert (= (and b!1887478 ((_ is Cons!21061) (t!175142 l3!256))) b!1887549))

(check-sat (not b!1887502) (not b!1887524) (not b!1887522) (not b!1887537) (not b!1887518) (not b!1887529) (not b!1887501) (not b!1887538) (not b!1887526) (not b!1887520) (not b!1887549) (not b!1887530) (not b!1887533) (not b!1887548) (not b!1887543) (not b!1887534) tp_is_empty!8985)
(check-sat)
