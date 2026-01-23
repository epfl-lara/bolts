; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187586 () Bool)

(assert start!187586)

(declare-fun b!1872556 () Bool)

(declare-fun res!838059 () Bool)

(declare-fun e!1194598 () Bool)

(assert (=> b!1872556 (=> (not res!838059) (not e!1194598))))

(declare-datatypes ((B!1649 0))(
  ( (B!1650 (val!6014 Int)) )
))
(declare-datatypes ((List!20831 0))(
  ( (Nil!20749) (Cons!20749 (h!26150 B!1649) (t!173048 List!20831)) )
))
(declare-fun l1!1293 () List!20831)

(declare-fun isEmpty!12955 (List!20831) Bool)

(assert (=> b!1872556 (= res!838059 (not (isEmpty!12955 (t!173048 l1!1293))))))

(declare-fun b!1872557 () Bool)

(declare-fun e!1194597 () Bool)

(declare-fun tp_is_empty!8807 () Bool)

(declare-fun tp!532529 () Bool)

(assert (=> b!1872557 (= e!1194597 (and tp_is_empty!8807 tp!532529))))

(declare-fun res!838058 () Bool)

(assert (=> start!187586 (=> (not res!838058) (not e!1194598))))

(assert (=> start!187586 (= res!838058 (not (isEmpty!12955 l1!1293)))))

(assert (=> start!187586 e!1194598))

(assert (=> start!187586 e!1194597))

(declare-fun e!1194599 () Bool)

(assert (=> start!187586 e!1194599))

(declare-fun b!1872558 () Bool)

(declare-fun l2!1262 () List!20831)

(declare-fun tail!2877 (List!20831) List!20831)

(declare-fun ++!5632 (List!20831 List!20831) List!20831)

(assert (=> b!1872558 (= e!1194598 (not (= (tail!2877 (++!5632 l1!1293 l2!1262)) (++!5632 (tail!2877 l1!1293) l2!1262))))))

(assert (=> b!1872558 (= (tail!2877 (++!5632 (t!173048 l1!1293) l2!1262)) (++!5632 (tail!2877 (t!173048 l1!1293)) l2!1262))))

(declare-datatypes ((Unit!35339 0))(
  ( (Unit!35340) )
))
(declare-fun lt!719691 () Unit!35339)

(declare-fun lemmaTailOfConcatIsTailConcat!50 (List!20831 List!20831) Unit!35339)

(assert (=> b!1872558 (= lt!719691 (lemmaTailOfConcatIsTailConcat!50 (t!173048 l1!1293) l2!1262))))

(declare-fun b!1872559 () Bool)

(declare-fun res!838057 () Bool)

(assert (=> b!1872559 (=> (not res!838057) (not e!1194598))))

(get-info :version)

(assert (=> b!1872559 (= res!838057 ((_ is Cons!20749) l1!1293))))

(declare-fun b!1872560 () Bool)

(declare-fun tp!532528 () Bool)

(assert (=> b!1872560 (= e!1194599 (and tp_is_empty!8807 tp!532528))))

(assert (= (and start!187586 res!838058) b!1872559))

(assert (= (and b!1872559 res!838057) b!1872556))

(assert (= (and b!1872556 res!838059) b!1872558))

(assert (= (and start!187586 ((_ is Cons!20749) l1!1293)) b!1872557))

(assert (= (and start!187586 ((_ is Cons!20749) l2!1262)) b!1872560))

(declare-fun m!2298267 () Bool)

(assert (=> b!1872556 m!2298267))

(declare-fun m!2298269 () Bool)

(assert (=> start!187586 m!2298269))

(declare-fun m!2298271 () Bool)

(assert (=> b!1872558 m!2298271))

(declare-fun m!2298273 () Bool)

(assert (=> b!1872558 m!2298273))

(assert (=> b!1872558 m!2298271))

(declare-fun m!2298275 () Bool)

(assert (=> b!1872558 m!2298275))

(declare-fun m!2298277 () Bool)

(assert (=> b!1872558 m!2298277))

(declare-fun m!2298279 () Bool)

(assert (=> b!1872558 m!2298279))

(declare-fun m!2298281 () Bool)

(assert (=> b!1872558 m!2298281))

(declare-fun m!2298283 () Bool)

(assert (=> b!1872558 m!2298283))

(assert (=> b!1872558 m!2298273))

(declare-fun m!2298285 () Bool)

(assert (=> b!1872558 m!2298285))

(assert (=> b!1872558 m!2298281))

(declare-fun m!2298287 () Bool)

(assert (=> b!1872558 m!2298287))

(assert (=> b!1872558 m!2298277))

(check-sat (not start!187586) (not b!1872558) tp_is_empty!8807 (not b!1872557) (not b!1872556) (not b!1872560))
(check-sat)
(get-model)

(declare-fun b!1872583 () Bool)

(declare-fun res!838071 () Bool)

(declare-fun e!1194610 () Bool)

(assert (=> b!1872583 (=> (not res!838071) (not e!1194610))))

(declare-fun lt!719697 () List!20831)

(declare-fun size!16473 (List!20831) Int)

(assert (=> b!1872583 (= res!838071 (= (size!16473 lt!719697) (+ (size!16473 l1!1293) (size!16473 l2!1262))))))

(declare-fun d!572472 () Bool)

(assert (=> d!572472 e!1194610))

(declare-fun res!838070 () Bool)

(assert (=> d!572472 (=> (not res!838070) (not e!1194610))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3099 (List!20831) (InoxSet B!1649))

(assert (=> d!572472 (= res!838070 (= (content!3099 lt!719697) ((_ map or) (content!3099 l1!1293) (content!3099 l2!1262))))))

(declare-fun e!1194611 () List!20831)

(assert (=> d!572472 (= lt!719697 e!1194611)))

(declare-fun c!305279 () Bool)

(assert (=> d!572472 (= c!305279 ((_ is Nil!20749) l1!1293))))

(assert (=> d!572472 (= (++!5632 l1!1293 l2!1262) lt!719697)))

(declare-fun b!1872581 () Bool)

(assert (=> b!1872581 (= e!1194611 l2!1262)))

(declare-fun b!1872582 () Bool)

(assert (=> b!1872582 (= e!1194611 (Cons!20749 (h!26150 l1!1293) (++!5632 (t!173048 l1!1293) l2!1262)))))

(declare-fun b!1872584 () Bool)

(assert (=> b!1872584 (= e!1194610 (or (not (= l2!1262 Nil!20749)) (= lt!719697 l1!1293)))))

(assert (= (and d!572472 c!305279) b!1872581))

(assert (= (and d!572472 (not c!305279)) b!1872582))

(assert (= (and d!572472 res!838070) b!1872583))

(assert (= (and b!1872583 res!838071) b!1872584))

(declare-fun m!2298301 () Bool)

(assert (=> b!1872583 m!2298301))

(declare-fun m!2298303 () Bool)

(assert (=> b!1872583 m!2298303))

(declare-fun m!2298305 () Bool)

(assert (=> b!1872583 m!2298305))

(declare-fun m!2298307 () Bool)

(assert (=> d!572472 m!2298307))

(declare-fun m!2298309 () Bool)

(assert (=> d!572472 m!2298309))

(declare-fun m!2298311 () Bool)

(assert (=> d!572472 m!2298311))

(assert (=> b!1872582 m!2298273))

(assert (=> b!1872558 d!572472))

(declare-fun d!572478 () Bool)

(assert (=> d!572478 (= (tail!2877 l1!1293) (t!173048 l1!1293))))

(assert (=> b!1872558 d!572478))

(declare-fun b!1872591 () Bool)

(declare-fun res!838075 () Bool)

(declare-fun e!1194614 () Bool)

(assert (=> b!1872591 (=> (not res!838075) (not e!1194614))))

(declare-fun lt!719699 () List!20831)

(assert (=> b!1872591 (= res!838075 (= (size!16473 lt!719699) (+ (size!16473 (tail!2877 (t!173048 l1!1293))) (size!16473 l2!1262))))))

(declare-fun d!572484 () Bool)

(assert (=> d!572484 e!1194614))

(declare-fun res!838074 () Bool)

(assert (=> d!572484 (=> (not res!838074) (not e!1194614))))

(assert (=> d!572484 (= res!838074 (= (content!3099 lt!719699) ((_ map or) (content!3099 (tail!2877 (t!173048 l1!1293))) (content!3099 l2!1262))))))

(declare-fun e!1194615 () List!20831)

(assert (=> d!572484 (= lt!719699 e!1194615)))

(declare-fun c!305281 () Bool)

(assert (=> d!572484 (= c!305281 ((_ is Nil!20749) (tail!2877 (t!173048 l1!1293))))))

(assert (=> d!572484 (= (++!5632 (tail!2877 (t!173048 l1!1293)) l2!1262) lt!719699)))

(declare-fun b!1872589 () Bool)

(assert (=> b!1872589 (= e!1194615 l2!1262)))

(declare-fun b!1872590 () Bool)

(assert (=> b!1872590 (= e!1194615 (Cons!20749 (h!26150 (tail!2877 (t!173048 l1!1293))) (++!5632 (t!173048 (tail!2877 (t!173048 l1!1293))) l2!1262)))))

(declare-fun b!1872592 () Bool)

(assert (=> b!1872592 (= e!1194614 (or (not (= l2!1262 Nil!20749)) (= lt!719699 (tail!2877 (t!173048 l1!1293)))))))

(assert (= (and d!572484 c!305281) b!1872589))

(assert (= (and d!572484 (not c!305281)) b!1872590))

(assert (= (and d!572484 res!838074) b!1872591))

(assert (= (and b!1872591 res!838075) b!1872592))

(declare-fun m!2298323 () Bool)

(assert (=> b!1872591 m!2298323))

(assert (=> b!1872591 m!2298271))

(declare-fun m!2298325 () Bool)

(assert (=> b!1872591 m!2298325))

(assert (=> b!1872591 m!2298305))

(declare-fun m!2298327 () Bool)

(assert (=> d!572484 m!2298327))

(assert (=> d!572484 m!2298271))

(declare-fun m!2298329 () Bool)

(assert (=> d!572484 m!2298329))

(assert (=> d!572484 m!2298311))

(declare-fun m!2298331 () Bool)

(assert (=> b!1872590 m!2298331))

(assert (=> b!1872558 d!572484))

(declare-fun d!572486 () Bool)

(assert (=> d!572486 (= (tail!2877 (++!5632 (t!173048 l1!1293) l2!1262)) (t!173048 (++!5632 (t!173048 l1!1293) l2!1262)))))

(assert (=> b!1872558 d!572486))

(declare-fun d!572488 () Bool)

(assert (=> d!572488 (= (tail!2877 (++!5632 (t!173048 l1!1293) l2!1262)) (++!5632 (tail!2877 (t!173048 l1!1293)) l2!1262))))

(declare-fun lt!719706 () Unit!35339)

(declare-fun choose!11756 (List!20831 List!20831) Unit!35339)

(assert (=> d!572488 (= lt!719706 (choose!11756 (t!173048 l1!1293) l2!1262))))

(assert (=> d!572488 (not (isEmpty!12955 (t!173048 l1!1293)))))

(assert (=> d!572488 (= (lemmaTailOfConcatIsTailConcat!50 (t!173048 l1!1293) l2!1262) lt!719706)))

(declare-fun bs!412059 () Bool)

(assert (= bs!412059 d!572488))

(assert (=> bs!412059 m!2298273))

(declare-fun m!2298343 () Bool)

(assert (=> bs!412059 m!2298343))

(assert (=> bs!412059 m!2298267))

(assert (=> bs!412059 m!2298271))

(assert (=> bs!412059 m!2298273))

(assert (=> bs!412059 m!2298285))

(assert (=> bs!412059 m!2298271))

(assert (=> bs!412059 m!2298275))

(assert (=> b!1872558 d!572488))

(declare-fun d!572498 () Bool)

(assert (=> d!572498 (= (tail!2877 (++!5632 l1!1293 l2!1262)) (t!173048 (++!5632 l1!1293 l2!1262)))))

(assert (=> b!1872558 d!572498))

(declare-fun b!1872603 () Bool)

(declare-fun res!838081 () Bool)

(declare-fun e!1194620 () Bool)

(assert (=> b!1872603 (=> (not res!838081) (not e!1194620))))

(declare-fun lt!719708 () List!20831)

(assert (=> b!1872603 (= res!838081 (= (size!16473 lt!719708) (+ (size!16473 (tail!2877 l1!1293)) (size!16473 l2!1262))))))

(declare-fun d!572500 () Bool)

(assert (=> d!572500 e!1194620))

(declare-fun res!838080 () Bool)

(assert (=> d!572500 (=> (not res!838080) (not e!1194620))))

(assert (=> d!572500 (= res!838080 (= (content!3099 lt!719708) ((_ map or) (content!3099 (tail!2877 l1!1293)) (content!3099 l2!1262))))))

(declare-fun e!1194621 () List!20831)

(assert (=> d!572500 (= lt!719708 e!1194621)))

(declare-fun c!305284 () Bool)

(assert (=> d!572500 (= c!305284 ((_ is Nil!20749) (tail!2877 l1!1293)))))

(assert (=> d!572500 (= (++!5632 (tail!2877 l1!1293) l2!1262) lt!719708)))

(declare-fun b!1872601 () Bool)

(assert (=> b!1872601 (= e!1194621 l2!1262)))

(declare-fun b!1872602 () Bool)

(assert (=> b!1872602 (= e!1194621 (Cons!20749 (h!26150 (tail!2877 l1!1293)) (++!5632 (t!173048 (tail!2877 l1!1293)) l2!1262)))))

(declare-fun b!1872604 () Bool)

(assert (=> b!1872604 (= e!1194620 (or (not (= l2!1262 Nil!20749)) (= lt!719708 (tail!2877 l1!1293))))))

(assert (= (and d!572500 c!305284) b!1872601))

(assert (= (and d!572500 (not c!305284)) b!1872602))

(assert (= (and d!572500 res!838080) b!1872603))

(assert (= (and b!1872603 res!838081) b!1872604))

(declare-fun m!2298357 () Bool)

(assert (=> b!1872603 m!2298357))

(assert (=> b!1872603 m!2298277))

(declare-fun m!2298359 () Bool)

(assert (=> b!1872603 m!2298359))

(assert (=> b!1872603 m!2298305))

(declare-fun m!2298361 () Bool)

(assert (=> d!572500 m!2298361))

(assert (=> d!572500 m!2298277))

(declare-fun m!2298363 () Bool)

(assert (=> d!572500 m!2298363))

(assert (=> d!572500 m!2298311))

(declare-fun m!2298365 () Bool)

(assert (=> b!1872602 m!2298365))

(assert (=> b!1872558 d!572500))

(declare-fun d!572504 () Bool)

(assert (=> d!572504 (= (tail!2877 (t!173048 l1!1293)) (t!173048 (t!173048 l1!1293)))))

(assert (=> b!1872558 d!572504))

(declare-fun b!1872607 () Bool)

(declare-fun res!838083 () Bool)

(declare-fun e!1194622 () Bool)

(assert (=> b!1872607 (=> (not res!838083) (not e!1194622))))

(declare-fun lt!719709 () List!20831)

(assert (=> b!1872607 (= res!838083 (= (size!16473 lt!719709) (+ (size!16473 (t!173048 l1!1293)) (size!16473 l2!1262))))))

(declare-fun d!572506 () Bool)

(assert (=> d!572506 e!1194622))

(declare-fun res!838082 () Bool)

(assert (=> d!572506 (=> (not res!838082) (not e!1194622))))

(assert (=> d!572506 (= res!838082 (= (content!3099 lt!719709) ((_ map or) (content!3099 (t!173048 l1!1293)) (content!3099 l2!1262))))))

(declare-fun e!1194623 () List!20831)

(assert (=> d!572506 (= lt!719709 e!1194623)))

(declare-fun c!305285 () Bool)

(assert (=> d!572506 (= c!305285 ((_ is Nil!20749) (t!173048 l1!1293)))))

(assert (=> d!572506 (= (++!5632 (t!173048 l1!1293) l2!1262) lt!719709)))

(declare-fun b!1872605 () Bool)

(assert (=> b!1872605 (= e!1194623 l2!1262)))

(declare-fun b!1872606 () Bool)

(assert (=> b!1872606 (= e!1194623 (Cons!20749 (h!26150 (t!173048 l1!1293)) (++!5632 (t!173048 (t!173048 l1!1293)) l2!1262)))))

(declare-fun b!1872608 () Bool)

(assert (=> b!1872608 (= e!1194622 (or (not (= l2!1262 Nil!20749)) (= lt!719709 (t!173048 l1!1293))))))

(assert (= (and d!572506 c!305285) b!1872605))

(assert (= (and d!572506 (not c!305285)) b!1872606))

(assert (= (and d!572506 res!838082) b!1872607))

(assert (= (and b!1872607 res!838083) b!1872608))

(declare-fun m!2298367 () Bool)

(assert (=> b!1872607 m!2298367))

(declare-fun m!2298369 () Bool)

(assert (=> b!1872607 m!2298369))

(assert (=> b!1872607 m!2298305))

(declare-fun m!2298371 () Bool)

(assert (=> d!572506 m!2298371))

(declare-fun m!2298373 () Bool)

(assert (=> d!572506 m!2298373))

(assert (=> d!572506 m!2298311))

(declare-fun m!2298375 () Bool)

(assert (=> b!1872606 m!2298375))

(assert (=> b!1872558 d!572506))

(declare-fun d!572510 () Bool)

(assert (=> d!572510 (= (isEmpty!12955 l1!1293) ((_ is Nil!20749) l1!1293))))

(assert (=> start!187586 d!572510))

(declare-fun d!572512 () Bool)

(assert (=> d!572512 (= (isEmpty!12955 (t!173048 l1!1293)) ((_ is Nil!20749) (t!173048 l1!1293)))))

(assert (=> b!1872556 d!572512))

(declare-fun b!1872619 () Bool)

(declare-fun e!1194630 () Bool)

(declare-fun tp!532536 () Bool)

(assert (=> b!1872619 (= e!1194630 (and tp_is_empty!8807 tp!532536))))

(assert (=> b!1872560 (= tp!532528 e!1194630)))

(assert (= (and b!1872560 ((_ is Cons!20749) (t!173048 l2!1262))) b!1872619))

(declare-fun b!1872620 () Bool)

(declare-fun e!1194631 () Bool)

(declare-fun tp!532537 () Bool)

(assert (=> b!1872620 (= e!1194631 (and tp_is_empty!8807 tp!532537))))

(assert (=> b!1872557 (= tp!532529 e!1194631)))

(assert (= (and b!1872557 ((_ is Cons!20749) (t!173048 l1!1293))) b!1872620))

(check-sat (not b!1872606) (not b!1872591) (not b!1872607) (not b!1872619) (not b!1872603) (not b!1872620) (not d!572488) (not b!1872583) (not d!572500) (not d!572484) (not d!572472) (not b!1872602) tp_is_empty!8807 (not b!1872590) (not b!1872582) (not d!572506))
(check-sat)
