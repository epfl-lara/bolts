; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73240 () Bool)

(assert start!73240)

(declare-fun b!820484 () Bool)

(declare-fun e!542075 () Bool)

(declare-fun tp_is_empty!3777 () Bool)

(declare-fun tp!256572 () Bool)

(assert (=> b!820484 (= e!542075 (and tp_is_empty!3777 tp!256572))))

(declare-fun b!820485 () Bool)

(declare-fun e!542074 () Bool)

(declare-fun tp!256571 () Bool)

(assert (=> b!820485 (= e!542074 (and tp_is_empty!3777 tp!256571))))

(declare-fun res!378720 () Bool)

(declare-fun e!542073 () Bool)

(assert (=> start!73240 (=> (not res!378720) (not e!542073))))

(declare-datatypes ((B!1205 0))(
  ( (B!1206 (val!2560 Int)) )
))
(declare-datatypes ((List!8831 0))(
  ( (Nil!8815) (Cons!8815 (h!14216 B!1205) (t!92943 List!8831)) )
))
(declare-fun l1!1535 () List!8831)

(declare-fun b!25421 () B!1205)

(get-info :version)

(assert (=> start!73240 (= res!378720 (and (or (not ((_ is Cons!8815) l1!1535)) (not (= (h!14216 l1!1535) b!25421))) ((_ is Cons!8815) l1!1535)))))

(assert (=> start!73240 e!542073))

(assert (=> start!73240 e!542074))

(assert (=> start!73240 tp_is_empty!3777))

(assert (=> start!73240 e!542075))

(declare-fun b!820486 () Bool)

(declare-fun e!542072 () Bool)

(declare-fun l2!1504 () List!8831)

(declare-fun contains!1618 (List!8831 B!1205) Bool)

(assert (=> b!820486 (= e!542072 (contains!1618 l2!1504 b!25421))))

(declare-fun b!820487 () Bool)

(declare-fun e!542076 () Bool)

(declare-fun ++!2257 (List!8831 List!8831) List!8831)

(assert (=> b!820487 (= e!542073 (not (= (contains!1618 (++!2257 l1!1535 l2!1504) b!25421) e!542076)))))

(declare-fun res!378721 () Bool)

(assert (=> b!820487 (=> res!378721 e!542076)))

(assert (=> b!820487 (= res!378721 (contains!1618 l1!1535 b!25421))))

(assert (=> b!820487 (= (contains!1618 (++!2257 (t!92943 l1!1535) l2!1504) b!25421) e!542072)))

(declare-fun res!378722 () Bool)

(assert (=> b!820487 (=> res!378722 e!542072)))

(assert (=> b!820487 (= res!378722 (contains!1618 (t!92943 l1!1535) b!25421))))

(declare-datatypes ((Unit!13331 0))(
  ( (Unit!13332) )
))
(declare-fun lt!317067 () Unit!13331)

(declare-fun lemmaConcatContainsDisjunctionOfEach!2 (List!8831 List!8831 B!1205) Unit!13331)

(assert (=> b!820487 (= lt!317067 (lemmaConcatContainsDisjunctionOfEach!2 (t!92943 l1!1535) l2!1504 b!25421))))

(declare-fun b!820488 () Bool)

(assert (=> b!820488 (= e!542076 (contains!1618 l2!1504 b!25421))))

(assert (= (and start!73240 res!378720) b!820487))

(assert (= (and b!820487 (not res!378722)) b!820486))

(assert (= (and b!820487 (not res!378721)) b!820488))

(assert (= (and start!73240 ((_ is Cons!8815) l1!1535)) b!820485))

(assert (= (and start!73240 ((_ is Cons!8815) l2!1504)) b!820484))

(declare-fun m!1061455 () Bool)

(assert (=> b!820486 m!1061455))

(declare-fun m!1061457 () Bool)

(assert (=> b!820487 m!1061457))

(declare-fun m!1061459 () Bool)

(assert (=> b!820487 m!1061459))

(declare-fun m!1061461 () Bool)

(assert (=> b!820487 m!1061461))

(assert (=> b!820487 m!1061457))

(declare-fun m!1061463 () Bool)

(assert (=> b!820487 m!1061463))

(assert (=> b!820487 m!1061459))

(declare-fun m!1061465 () Bool)

(assert (=> b!820487 m!1061465))

(declare-fun m!1061467 () Bool)

(assert (=> b!820487 m!1061467))

(declare-fun m!1061469 () Bool)

(assert (=> b!820487 m!1061469))

(assert (=> b!820488 m!1061455))

(check-sat (not b!820486) (not b!820484) (not b!820488) (not b!820487) (not b!820485) tp_is_empty!3777)
(check-sat)
(get-model)

(declare-fun d!258380 () Bool)

(declare-fun lt!317070 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1275 (List!8831) (InoxSet B!1205))

(assert (=> d!258380 (= lt!317070 (select (content!1275 l2!1504) b!25421))))

(declare-fun e!542082 () Bool)

(assert (=> d!258380 (= lt!317070 e!542082)))

(declare-fun res!378727 () Bool)

(assert (=> d!258380 (=> (not res!378727) (not e!542082))))

(assert (=> d!258380 (= res!378727 ((_ is Cons!8815) l2!1504))))

(assert (=> d!258380 (= (contains!1618 l2!1504 b!25421) lt!317070)))

(declare-fun b!820493 () Bool)

(declare-fun e!542081 () Bool)

(assert (=> b!820493 (= e!542082 e!542081)))

(declare-fun res!378728 () Bool)

(assert (=> b!820493 (=> res!378728 e!542081)))

(assert (=> b!820493 (= res!378728 (= (h!14216 l2!1504) b!25421))))

(declare-fun b!820494 () Bool)

(assert (=> b!820494 (= e!542081 (contains!1618 (t!92943 l2!1504) b!25421))))

(assert (= (and d!258380 res!378727) b!820493))

(assert (= (and b!820493 (not res!378728)) b!820494))

(declare-fun m!1061471 () Bool)

(assert (=> d!258380 m!1061471))

(declare-fun m!1061473 () Bool)

(assert (=> d!258380 m!1061473))

(declare-fun m!1061475 () Bool)

(assert (=> b!820494 m!1061475))

(assert (=> b!820486 d!258380))

(declare-fun d!258384 () Bool)

(declare-fun e!542089 () Bool)

(assert (=> d!258384 (= (contains!1618 (++!2257 (t!92943 l1!1535) l2!1504) b!25421) e!542089)))

(declare-fun res!378736 () Bool)

(assert (=> d!258384 (=> res!378736 e!542089)))

(assert (=> d!258384 (= res!378736 (contains!1618 (t!92943 l1!1535) b!25421))))

(declare-fun lt!317075 () Unit!13331)

(declare-fun choose!4912 (List!8831 List!8831 B!1205) Unit!13331)

(assert (=> d!258384 (= lt!317075 (choose!4912 (t!92943 l1!1535) l2!1504 b!25421))))

(assert (=> d!258384 (= (lemmaConcatContainsDisjunctionOfEach!2 (t!92943 l1!1535) l2!1504 b!25421) lt!317075)))

(declare-fun b!820502 () Bool)

(assert (=> b!820502 (= e!542089 (contains!1618 l2!1504 b!25421))))

(assert (= (and d!258384 (not res!378736)) b!820502))

(assert (=> d!258384 m!1061459))

(assert (=> d!258384 m!1061459))

(assert (=> d!258384 m!1061461))

(assert (=> d!258384 m!1061467))

(declare-fun m!1061483 () Bool)

(assert (=> d!258384 m!1061483))

(assert (=> b!820502 m!1061455))

(assert (=> b!820487 d!258384))

(declare-fun b!820517 () Bool)

(declare-fun e!542099 () List!8831)

(assert (=> b!820517 (= e!542099 l2!1504)))

(declare-fun d!258388 () Bool)

(declare-fun e!542100 () Bool)

(assert (=> d!258388 e!542100))

(declare-fun res!378745 () Bool)

(assert (=> d!258388 (=> (not res!378745) (not e!542100))))

(declare-fun lt!317082 () List!8831)

(assert (=> d!258388 (= res!378745 (= (content!1275 lt!317082) ((_ map or) (content!1275 l1!1535) (content!1275 l2!1504))))))

(assert (=> d!258388 (= lt!317082 e!542099)))

(declare-fun c!132947 () Bool)

(assert (=> d!258388 (= c!132947 ((_ is Nil!8815) l1!1535))))

(assert (=> d!258388 (= (++!2257 l1!1535 l2!1504) lt!317082)))

(declare-fun b!820518 () Bool)

(assert (=> b!820518 (= e!542099 (Cons!8815 (h!14216 l1!1535) (++!2257 (t!92943 l1!1535) l2!1504)))))

(declare-fun b!820520 () Bool)

(assert (=> b!820520 (= e!542100 (or (not (= l2!1504 Nil!8815)) (= lt!317082 l1!1535)))))

(declare-fun b!820519 () Bool)

(declare-fun res!378746 () Bool)

(assert (=> b!820519 (=> (not res!378746) (not e!542100))))

(declare-fun size!7464 (List!8831) Int)

(assert (=> b!820519 (= res!378746 (= (size!7464 lt!317082) (+ (size!7464 l1!1535) (size!7464 l2!1504))))))

(assert (= (and d!258388 c!132947) b!820517))

(assert (= (and d!258388 (not c!132947)) b!820518))

(assert (= (and d!258388 res!378745) b!820519))

(assert (= (and b!820519 res!378746) b!820520))

(declare-fun m!1061487 () Bool)

(assert (=> d!258388 m!1061487))

(declare-fun m!1061489 () Bool)

(assert (=> d!258388 m!1061489))

(assert (=> d!258388 m!1061471))

(assert (=> b!820518 m!1061459))

(declare-fun m!1061491 () Bool)

(assert (=> b!820519 m!1061491))

(declare-fun m!1061493 () Bool)

(assert (=> b!820519 m!1061493))

(declare-fun m!1061495 () Bool)

(assert (=> b!820519 m!1061495))

(assert (=> b!820487 d!258388))

(declare-fun b!820521 () Bool)

(declare-fun e!542101 () List!8831)

(assert (=> b!820521 (= e!542101 l2!1504)))

(declare-fun d!258392 () Bool)

(declare-fun e!542102 () Bool)

(assert (=> d!258392 e!542102))

(declare-fun res!378747 () Bool)

(assert (=> d!258392 (=> (not res!378747) (not e!542102))))

(declare-fun lt!317083 () List!8831)

(assert (=> d!258392 (= res!378747 (= (content!1275 lt!317083) ((_ map or) (content!1275 (t!92943 l1!1535)) (content!1275 l2!1504))))))

(assert (=> d!258392 (= lt!317083 e!542101)))

(declare-fun c!132948 () Bool)

(assert (=> d!258392 (= c!132948 ((_ is Nil!8815) (t!92943 l1!1535)))))

(assert (=> d!258392 (= (++!2257 (t!92943 l1!1535) l2!1504) lt!317083)))

(declare-fun b!820522 () Bool)

(assert (=> b!820522 (= e!542101 (Cons!8815 (h!14216 (t!92943 l1!1535)) (++!2257 (t!92943 (t!92943 l1!1535)) l2!1504)))))

(declare-fun b!820524 () Bool)

(assert (=> b!820524 (= e!542102 (or (not (= l2!1504 Nil!8815)) (= lt!317083 (t!92943 l1!1535))))))

(declare-fun b!820523 () Bool)

(declare-fun res!378748 () Bool)

(assert (=> b!820523 (=> (not res!378748) (not e!542102))))

(assert (=> b!820523 (= res!378748 (= (size!7464 lt!317083) (+ (size!7464 (t!92943 l1!1535)) (size!7464 l2!1504))))))

(assert (= (and d!258392 c!132948) b!820521))

(assert (= (and d!258392 (not c!132948)) b!820522))

(assert (= (and d!258392 res!378747) b!820523))

(assert (= (and b!820523 res!378748) b!820524))

(declare-fun m!1061497 () Bool)

(assert (=> d!258392 m!1061497))

(declare-fun m!1061499 () Bool)

(assert (=> d!258392 m!1061499))

(assert (=> d!258392 m!1061471))

(declare-fun m!1061501 () Bool)

(assert (=> b!820522 m!1061501))

(declare-fun m!1061503 () Bool)

(assert (=> b!820523 m!1061503))

(declare-fun m!1061505 () Bool)

(assert (=> b!820523 m!1061505))

(assert (=> b!820523 m!1061495))

(assert (=> b!820487 d!258392))

(declare-fun d!258394 () Bool)

(declare-fun lt!317086 () Bool)

(assert (=> d!258394 (= lt!317086 (select (content!1275 (++!2257 l1!1535 l2!1504)) b!25421))))

(declare-fun e!542108 () Bool)

(assert (=> d!258394 (= lt!317086 e!542108)))

(declare-fun res!378751 () Bool)

(assert (=> d!258394 (=> (not res!378751) (not e!542108))))

(assert (=> d!258394 (= res!378751 ((_ is Cons!8815) (++!2257 l1!1535 l2!1504)))))

(assert (=> d!258394 (= (contains!1618 (++!2257 l1!1535 l2!1504) b!25421) lt!317086)))

(declare-fun b!820529 () Bool)

(declare-fun e!542107 () Bool)

(assert (=> b!820529 (= e!542108 e!542107)))

(declare-fun res!378752 () Bool)

(assert (=> b!820529 (=> res!378752 e!542107)))

(assert (=> b!820529 (= res!378752 (= (h!14216 (++!2257 l1!1535 l2!1504)) b!25421))))

(declare-fun b!820530 () Bool)

(assert (=> b!820530 (= e!542107 (contains!1618 (t!92943 (++!2257 l1!1535 l2!1504)) b!25421))))

(assert (= (and d!258394 res!378751) b!820529))

(assert (= (and b!820529 (not res!378752)) b!820530))

(assert (=> d!258394 m!1061457))

(declare-fun m!1061507 () Bool)

(assert (=> d!258394 m!1061507))

(declare-fun m!1061509 () Bool)

(assert (=> d!258394 m!1061509))

(declare-fun m!1061511 () Bool)

(assert (=> b!820530 m!1061511))

(assert (=> b!820487 d!258394))

(declare-fun d!258396 () Bool)

(declare-fun lt!317087 () Bool)

(assert (=> d!258396 (= lt!317087 (select (content!1275 (++!2257 (t!92943 l1!1535) l2!1504)) b!25421))))

(declare-fun e!542110 () Bool)

(assert (=> d!258396 (= lt!317087 e!542110)))

(declare-fun res!378755 () Bool)

(assert (=> d!258396 (=> (not res!378755) (not e!542110))))

(assert (=> d!258396 (= res!378755 ((_ is Cons!8815) (++!2257 (t!92943 l1!1535) l2!1504)))))

(assert (=> d!258396 (= (contains!1618 (++!2257 (t!92943 l1!1535) l2!1504) b!25421) lt!317087)))

(declare-fun b!820535 () Bool)

(declare-fun e!542109 () Bool)

(assert (=> b!820535 (= e!542110 e!542109)))

(declare-fun res!378756 () Bool)

(assert (=> b!820535 (=> res!378756 e!542109)))

(assert (=> b!820535 (= res!378756 (= (h!14216 (++!2257 (t!92943 l1!1535) l2!1504)) b!25421))))

(declare-fun b!820536 () Bool)

(assert (=> b!820536 (= e!542109 (contains!1618 (t!92943 (++!2257 (t!92943 l1!1535) l2!1504)) b!25421))))

(assert (= (and d!258396 res!378755) b!820535))

(assert (= (and b!820535 (not res!378756)) b!820536))

(assert (=> d!258396 m!1061459))

(declare-fun m!1061513 () Bool)

(assert (=> d!258396 m!1061513))

(declare-fun m!1061515 () Bool)

(assert (=> d!258396 m!1061515))

(declare-fun m!1061517 () Bool)

(assert (=> b!820536 m!1061517))

(assert (=> b!820487 d!258396))

(declare-fun d!258398 () Bool)

(declare-fun lt!317088 () Bool)

(assert (=> d!258398 (= lt!317088 (select (content!1275 (t!92943 l1!1535)) b!25421))))

(declare-fun e!542112 () Bool)

(assert (=> d!258398 (= lt!317088 e!542112)))

(declare-fun res!378757 () Bool)

(assert (=> d!258398 (=> (not res!378757) (not e!542112))))

(assert (=> d!258398 (= res!378757 ((_ is Cons!8815) (t!92943 l1!1535)))))

(assert (=> d!258398 (= (contains!1618 (t!92943 l1!1535) b!25421) lt!317088)))

(declare-fun b!820537 () Bool)

(declare-fun e!542111 () Bool)

(assert (=> b!820537 (= e!542112 e!542111)))

(declare-fun res!378758 () Bool)

(assert (=> b!820537 (=> res!378758 e!542111)))

(assert (=> b!820537 (= res!378758 (= (h!14216 (t!92943 l1!1535)) b!25421))))

(declare-fun b!820538 () Bool)

(assert (=> b!820538 (= e!542111 (contains!1618 (t!92943 (t!92943 l1!1535)) b!25421))))

(assert (= (and d!258398 res!378757) b!820537))

(assert (= (and b!820537 (not res!378758)) b!820538))

(assert (=> d!258398 m!1061499))

(declare-fun m!1061519 () Bool)

(assert (=> d!258398 m!1061519))

(declare-fun m!1061521 () Bool)

(assert (=> b!820538 m!1061521))

(assert (=> b!820487 d!258398))

(declare-fun d!258400 () Bool)

(declare-fun lt!317089 () Bool)

(assert (=> d!258400 (= lt!317089 (select (content!1275 l1!1535) b!25421))))

(declare-fun e!542114 () Bool)

(assert (=> d!258400 (= lt!317089 e!542114)))

(declare-fun res!378759 () Bool)

(assert (=> d!258400 (=> (not res!378759) (not e!542114))))

(assert (=> d!258400 (= res!378759 ((_ is Cons!8815) l1!1535))))

(assert (=> d!258400 (= (contains!1618 l1!1535 b!25421) lt!317089)))

(declare-fun b!820539 () Bool)

(declare-fun e!542113 () Bool)

(assert (=> b!820539 (= e!542114 e!542113)))

(declare-fun res!378760 () Bool)

(assert (=> b!820539 (=> res!378760 e!542113)))

(assert (=> b!820539 (= res!378760 (= (h!14216 l1!1535) b!25421))))

(declare-fun b!820540 () Bool)

(assert (=> b!820540 (= e!542113 (contains!1618 (t!92943 l1!1535) b!25421))))

(assert (= (and d!258400 res!378759) b!820539))

(assert (= (and b!820539 (not res!378760)) b!820540))

(assert (=> d!258400 m!1061489))

(declare-fun m!1061523 () Bool)

(assert (=> d!258400 m!1061523))

(assert (=> b!820540 m!1061467))

(assert (=> b!820487 d!258400))

(assert (=> b!820488 d!258380))

(declare-fun b!820545 () Bool)

(declare-fun e!542117 () Bool)

(declare-fun tp!256575 () Bool)

(assert (=> b!820545 (= e!542117 (and tp_is_empty!3777 tp!256575))))

(assert (=> b!820485 (= tp!256571 e!542117)))

(assert (= (and b!820485 ((_ is Cons!8815) (t!92943 l1!1535))) b!820545))

(declare-fun b!820550 () Bool)

(declare-fun e!542120 () Bool)

(declare-fun tp!256576 () Bool)

(assert (=> b!820550 (= e!542120 (and tp_is_empty!3777 tp!256576))))

(assert (=> b!820484 (= tp!256572 e!542120)))

(assert (= (and b!820484 ((_ is Cons!8815) (t!92943 l2!1504))) b!820550))

(check-sat (not b!820518) (not b!820523) (not d!258398) (not b!820494) (not d!258394) (not d!258392) (not b!820550) tp_is_empty!3777 (not b!820502) (not d!258388) (not d!258380) (not b!820545) (not b!820519) (not b!820530) (not b!820540) (not b!820522) (not d!258396) (not d!258384) (not b!820538) (not d!258400) (not b!820536))
(check-sat)
