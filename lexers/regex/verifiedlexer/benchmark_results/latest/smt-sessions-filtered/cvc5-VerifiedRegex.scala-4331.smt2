; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!231038 () Bool)

(assert start!231038)

(declare-fun b!2357437 () Bool)

(declare-fun e!1505488 () Bool)

(declare-fun tp_is_empty!11111 () Bool)

(declare-fun tp!753596 () Bool)

(assert (=> b!2357437 (= e!1505488 (and tp_is_empty!11111 tp!753596))))

(declare-fun res!1000676 () Bool)

(declare-fun e!1505485 () Bool)

(assert (=> start!231038 (=> (not res!1000676) (not e!1505485))))

(declare-datatypes ((B!1855 0))(
  ( (B!1856 (val!8139 Int)) )
))
(declare-datatypes ((List!27951 0))(
  ( (Nil!27853) (Cons!27853 (h!33254 B!1855) (t!207810 List!27951)) )
))
(declare-fun l1!1275 () List!27951)

(declare-fun l3!250 () List!27951)

(declare-fun subseq!438 (List!27951 List!27951) Bool)

(assert (=> start!231038 (= res!1000676 (subseq!438 l1!1275 l3!250))))

(assert (=> start!231038 e!1505485))

(declare-fun e!1505487 () Bool)

(assert (=> start!231038 e!1505487))

(assert (=> start!231038 e!1505488))

(declare-fun e!1505486 () Bool)

(assert (=> start!231038 e!1505486))

(declare-fun b!2357438 () Bool)

(declare-fun res!1000677 () Bool)

(assert (=> b!2357438 (=> (not res!1000677) (not e!1505485))))

(declare-fun l2!1244 () List!27951)

(assert (=> b!2357438 (= res!1000677 (is-Cons!27853 l2!1244))))

(declare-fun b!2357439 () Bool)

(declare-fun ++!6871 (List!27951 List!27951) List!27951)

(assert (=> b!2357439 (= e!1505485 (not (subseq!438 l1!1275 (++!6871 l2!1244 l3!250))))))

(assert (=> b!2357439 (subseq!438 l1!1275 (++!6871 (t!207810 l2!1244) l3!250))))

(declare-datatypes ((Unit!40772 0))(
  ( (Unit!40773) )
))
(declare-fun lt!863102 () Unit!40772)

(declare-fun lemmaConcatNewListPreservesSubSeq!3 (List!27951 List!27951 List!27951) Unit!40772)

(assert (=> b!2357439 (= lt!863102 (lemmaConcatNewListPreservesSubSeq!3 l1!1275 (t!207810 l2!1244) l3!250))))

(declare-fun b!2357440 () Bool)

(declare-fun tp!753598 () Bool)

(assert (=> b!2357440 (= e!1505487 (and tp_is_empty!11111 tp!753598))))

(declare-fun b!2357441 () Bool)

(declare-fun tp!753597 () Bool)

(assert (=> b!2357441 (= e!1505486 (and tp_is_empty!11111 tp!753597))))

(assert (= (and start!231038 res!1000676) b!2357438))

(assert (= (and b!2357438 res!1000677) b!2357439))

(assert (= (and start!231038 (is-Cons!27853 l1!1275)) b!2357440))

(assert (= (and start!231038 (is-Cons!27853 l3!250)) b!2357437))

(assert (= (and start!231038 (is-Cons!27853 l2!1244)) b!2357441))

(declare-fun m!2770463 () Bool)

(assert (=> start!231038 m!2770463))

(declare-fun m!2770465 () Bool)

(assert (=> b!2357439 m!2770465))

(declare-fun m!2770467 () Bool)

(assert (=> b!2357439 m!2770467))

(assert (=> b!2357439 m!2770465))

(declare-fun m!2770469 () Bool)

(assert (=> b!2357439 m!2770469))

(declare-fun m!2770471 () Bool)

(assert (=> b!2357439 m!2770471))

(declare-fun m!2770473 () Bool)

(assert (=> b!2357439 m!2770473))

(assert (=> b!2357439 m!2770471))

(push 1)

(assert tp_is_empty!11111)

(assert (not b!2357439))

(assert (not b!2357441))

(assert (not b!2357440))

(assert (not b!2357437))

(assert (not start!231038))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2357467 () Bool)

(declare-fun e!1505510 () Bool)

(assert (=> b!2357467 (= e!1505510 (subseq!438 (t!207810 l1!1275) (t!207810 l3!250)))))

(declare-fun b!2357468 () Bool)

(declare-fun e!1505512 () Bool)

(assert (=> b!2357468 (= e!1505512 (subseq!438 l1!1275 (t!207810 l3!250)))))

(declare-fun b!2357465 () Bool)

(declare-fun e!1505509 () Bool)

(declare-fun e!1505511 () Bool)

(assert (=> b!2357465 (= e!1505509 e!1505511)))

(declare-fun res!1000694 () Bool)

(assert (=> b!2357465 (=> (not res!1000694) (not e!1505511))))

(assert (=> b!2357465 (= res!1000694 (is-Cons!27853 l3!250))))

(declare-fun d!693222 () Bool)

(declare-fun res!1000695 () Bool)

(assert (=> d!693222 (=> res!1000695 e!1505509)))

(assert (=> d!693222 (= res!1000695 (is-Nil!27853 l1!1275))))

(assert (=> d!693222 (= (subseq!438 l1!1275 l3!250) e!1505509)))

(declare-fun b!2357466 () Bool)

(assert (=> b!2357466 (= e!1505511 e!1505512)))

(declare-fun res!1000692 () Bool)

(assert (=> b!2357466 (=> res!1000692 e!1505512)))

(assert (=> b!2357466 (= res!1000692 e!1505510)))

(declare-fun res!1000693 () Bool)

(assert (=> b!2357466 (=> (not res!1000693) (not e!1505510))))

(assert (=> b!2357466 (= res!1000693 (= (h!33254 l1!1275) (h!33254 l3!250)))))

(assert (= (and d!693222 (not res!1000695)) b!2357465))

(assert (= (and b!2357465 res!1000694) b!2357466))

(assert (= (and b!2357466 res!1000693) b!2357467))

(assert (= (and b!2357466 (not res!1000692)) b!2357468))

(declare-fun m!2770487 () Bool)

(assert (=> b!2357467 m!2770487))

(declare-fun m!2770489 () Bool)

(assert (=> b!2357468 m!2770489))

(assert (=> start!231038 d!693222))

(declare-fun d!693224 () Bool)

(assert (=> d!693224 (subseq!438 l1!1275 (++!6871 (t!207810 l2!1244) l3!250))))

(declare-fun lt!863108 () Unit!40772)

(declare-fun choose!13643 (List!27951 List!27951 List!27951) Unit!40772)

(assert (=> d!693224 (= lt!863108 (choose!13643 l1!1275 (t!207810 l2!1244) l3!250))))

(assert (=> d!693224 (subseq!438 l1!1275 l3!250)))

(assert (=> d!693224 (= (lemmaConcatNewListPreservesSubSeq!3 l1!1275 (t!207810 l2!1244) l3!250) lt!863108)))

(declare-fun bs!460343 () Bool)

(assert (= bs!460343 d!693224))

(assert (=> bs!460343 m!2770465))

(assert (=> bs!460343 m!2770465))

(assert (=> bs!460343 m!2770467))

(declare-fun m!2770491 () Bool)

(assert (=> bs!460343 m!2770491))

(assert (=> bs!460343 m!2770463))

(assert (=> b!2357439 d!693224))

(declare-fun e!1505526 () Bool)

(declare-fun lt!863111 () List!27951)

(declare-fun b!2357488 () Bool)

(assert (=> b!2357488 (= e!1505526 (or (not (= l3!250 Nil!27853)) (= lt!863111 (t!207810 l2!1244))))))

(declare-fun b!2357487 () Bool)

(declare-fun res!1000709 () Bool)

(assert (=> b!2357487 (=> (not res!1000709) (not e!1505526))))

(declare-fun size!22032 (List!27951) Int)

(assert (=> b!2357487 (= res!1000709 (= (size!22032 lt!863111) (+ (size!22032 (t!207810 l2!1244)) (size!22032 l3!250))))))

(declare-fun b!2357486 () Bool)

(declare-fun e!1505525 () List!27951)

(assert (=> b!2357486 (= e!1505525 (Cons!27853 (h!33254 (t!207810 l2!1244)) (++!6871 (t!207810 (t!207810 l2!1244)) l3!250)))))

(declare-fun d!693228 () Bool)

(assert (=> d!693228 e!1505526))

(declare-fun res!1000708 () Bool)

(assert (=> d!693228 (=> (not res!1000708) (not e!1505526))))

(declare-fun content!3780 (List!27951) (Set B!1855))

(assert (=> d!693228 (= res!1000708 (= (content!3780 lt!863111) (set.union (content!3780 (t!207810 l2!1244)) (content!3780 l3!250))))))

(assert (=> d!693228 (= lt!863111 e!1505525)))

(declare-fun c!374794 () Bool)

(assert (=> d!693228 (= c!374794 (is-Nil!27853 (t!207810 l2!1244)))))

(assert (=> d!693228 (= (++!6871 (t!207810 l2!1244) l3!250) lt!863111)))

(declare-fun b!2357485 () Bool)

(assert (=> b!2357485 (= e!1505525 l3!250)))

(assert (= (and d!693228 c!374794) b!2357485))

(assert (= (and d!693228 (not c!374794)) b!2357486))

(assert (= (and d!693228 res!1000708) b!2357487))

(assert (= (and b!2357487 res!1000709) b!2357488))

(declare-fun m!2770493 () Bool)

(assert (=> b!2357487 m!2770493))

(declare-fun m!2770495 () Bool)

(assert (=> b!2357487 m!2770495))

(declare-fun m!2770497 () Bool)

(assert (=> b!2357487 m!2770497))

(declare-fun m!2770499 () Bool)

(assert (=> b!2357486 m!2770499))

(declare-fun m!2770501 () Bool)

(assert (=> d!693228 m!2770501))

(declare-fun m!2770503 () Bool)

(assert (=> d!693228 m!2770503))

(declare-fun m!2770505 () Bool)

(assert (=> d!693228 m!2770505))

(assert (=> b!2357439 d!693228))

(declare-fun e!1505528 () Bool)

(declare-fun b!2357491 () Bool)

(assert (=> b!2357491 (= e!1505528 (subseq!438 (t!207810 l1!1275) (t!207810 (++!6871 (t!207810 l2!1244) l3!250))))))

(declare-fun b!2357492 () Bool)

(declare-fun e!1505530 () Bool)

(assert (=> b!2357492 (= e!1505530 (subseq!438 l1!1275 (t!207810 (++!6871 (t!207810 l2!1244) l3!250))))))

(declare-fun b!2357489 () Bool)

(declare-fun e!1505527 () Bool)

(declare-fun e!1505529 () Bool)

(assert (=> b!2357489 (= e!1505527 e!1505529)))

(declare-fun res!1000712 () Bool)

(assert (=> b!2357489 (=> (not res!1000712) (not e!1505529))))

(assert (=> b!2357489 (= res!1000712 (is-Cons!27853 (++!6871 (t!207810 l2!1244) l3!250)))))

(declare-fun d!693230 () Bool)

(declare-fun res!1000713 () Bool)

(assert (=> d!693230 (=> res!1000713 e!1505527)))

(assert (=> d!693230 (= res!1000713 (is-Nil!27853 l1!1275))))

(assert (=> d!693230 (= (subseq!438 l1!1275 (++!6871 (t!207810 l2!1244) l3!250)) e!1505527)))

(declare-fun b!2357490 () Bool)

(assert (=> b!2357490 (= e!1505529 e!1505530)))

(declare-fun res!1000710 () Bool)

(assert (=> b!2357490 (=> res!1000710 e!1505530)))

(assert (=> b!2357490 (= res!1000710 e!1505528)))

(declare-fun res!1000711 () Bool)

(assert (=> b!2357490 (=> (not res!1000711) (not e!1505528))))

(assert (=> b!2357490 (= res!1000711 (= (h!33254 l1!1275) (h!33254 (++!6871 (t!207810 l2!1244) l3!250))))))

(assert (= (and d!693230 (not res!1000713)) b!2357489))

(assert (= (and b!2357489 res!1000712) b!2357490))

(assert (= (and b!2357490 res!1000711) b!2357491))

(assert (= (and b!2357490 (not res!1000710)) b!2357492))

(declare-fun m!2770507 () Bool)

(assert (=> b!2357491 m!2770507))

(declare-fun m!2770509 () Bool)

(assert (=> b!2357492 m!2770509))

(assert (=> b!2357439 d!693230))

(declare-fun lt!863112 () List!27951)

(declare-fun b!2357496 () Bool)

(declare-fun e!1505532 () Bool)

(assert (=> b!2357496 (= e!1505532 (or (not (= l3!250 Nil!27853)) (= lt!863112 l2!1244)))))

(declare-fun b!2357495 () Bool)

(declare-fun res!1000715 () Bool)

(assert (=> b!2357495 (=> (not res!1000715) (not e!1505532))))

(assert (=> b!2357495 (= res!1000715 (= (size!22032 lt!863112) (+ (size!22032 l2!1244) (size!22032 l3!250))))))

(declare-fun b!2357494 () Bool)

(declare-fun e!1505531 () List!27951)

(assert (=> b!2357494 (= e!1505531 (Cons!27853 (h!33254 l2!1244) (++!6871 (t!207810 l2!1244) l3!250)))))

(declare-fun d!693232 () Bool)

(assert (=> d!693232 e!1505532))

(declare-fun res!1000714 () Bool)

(assert (=> d!693232 (=> (not res!1000714) (not e!1505532))))

(assert (=> d!693232 (= res!1000714 (= (content!3780 lt!863112) (set.union (content!3780 l2!1244) (content!3780 l3!250))))))

(assert (=> d!693232 (= lt!863112 e!1505531)))

(declare-fun c!374795 () Bool)

(assert (=> d!693232 (= c!374795 (is-Nil!27853 l2!1244))))

(assert (=> d!693232 (= (++!6871 l2!1244 l3!250) lt!863112)))

(declare-fun b!2357493 () Bool)

(assert (=> b!2357493 (= e!1505531 l3!250)))

(assert (= (and d!693232 c!374795) b!2357493))

(assert (= (and d!693232 (not c!374795)) b!2357494))

(assert (= (and d!693232 res!1000714) b!2357495))

(assert (= (and b!2357495 res!1000715) b!2357496))

(declare-fun m!2770511 () Bool)

(assert (=> b!2357495 m!2770511))

(declare-fun m!2770513 () Bool)

(assert (=> b!2357495 m!2770513))

(assert (=> b!2357495 m!2770497))

(assert (=> b!2357494 m!2770465))

(declare-fun m!2770515 () Bool)

(assert (=> d!693232 m!2770515))

(declare-fun m!2770517 () Bool)

(assert (=> d!693232 m!2770517))

(assert (=> d!693232 m!2770505))

(assert (=> b!2357439 d!693232))

(declare-fun b!2357499 () Bool)

(declare-fun e!1505534 () Bool)

(assert (=> b!2357499 (= e!1505534 (subseq!438 (t!207810 l1!1275) (t!207810 (++!6871 l2!1244 l3!250))))))

(declare-fun b!2357500 () Bool)

(declare-fun e!1505536 () Bool)

(assert (=> b!2357500 (= e!1505536 (subseq!438 l1!1275 (t!207810 (++!6871 l2!1244 l3!250))))))

(declare-fun b!2357497 () Bool)

(declare-fun e!1505533 () Bool)

(declare-fun e!1505535 () Bool)

(assert (=> b!2357497 (= e!1505533 e!1505535)))

(declare-fun res!1000718 () Bool)

(assert (=> b!2357497 (=> (not res!1000718) (not e!1505535))))

(assert (=> b!2357497 (= res!1000718 (is-Cons!27853 (++!6871 l2!1244 l3!250)))))

(declare-fun d!693234 () Bool)

(declare-fun res!1000719 () Bool)

(assert (=> d!693234 (=> res!1000719 e!1505533)))

(assert (=> d!693234 (= res!1000719 (is-Nil!27853 l1!1275))))

(assert (=> d!693234 (= (subseq!438 l1!1275 (++!6871 l2!1244 l3!250)) e!1505533)))

(declare-fun b!2357498 () Bool)

(assert (=> b!2357498 (= e!1505535 e!1505536)))

(declare-fun res!1000716 () Bool)

(assert (=> b!2357498 (=> res!1000716 e!1505536)))

(assert (=> b!2357498 (= res!1000716 e!1505534)))

(declare-fun res!1000717 () Bool)

(assert (=> b!2357498 (=> (not res!1000717) (not e!1505534))))

(assert (=> b!2357498 (= res!1000717 (= (h!33254 l1!1275) (h!33254 (++!6871 l2!1244 l3!250))))))

(assert (= (and d!693234 (not res!1000719)) b!2357497))

(assert (= (and b!2357497 res!1000718) b!2357498))

(assert (= (and b!2357498 res!1000717) b!2357499))

(assert (= (and b!2357498 (not res!1000716)) b!2357500))

(declare-fun m!2770519 () Bool)

(assert (=> b!2357499 m!2770519))

(declare-fun m!2770521 () Bool)

(assert (=> b!2357500 m!2770521))

(assert (=> b!2357439 d!693234))

(declare-fun b!2357505 () Bool)

(declare-fun e!1505539 () Bool)

(declare-fun tp!753610 () Bool)

(assert (=> b!2357505 (= e!1505539 (and tp_is_empty!11111 tp!753610))))

(assert (=> b!2357440 (= tp!753598 e!1505539)))

(assert (= (and b!2357440 (is-Cons!27853 (t!207810 l1!1275))) b!2357505))

(declare-fun b!2357506 () Bool)

(declare-fun e!1505540 () Bool)

(declare-fun tp!753611 () Bool)

(assert (=> b!2357506 (= e!1505540 (and tp_is_empty!11111 tp!753611))))

(assert (=> b!2357441 (= tp!753597 e!1505540)))

(assert (= (and b!2357441 (is-Cons!27853 (t!207810 l2!1244))) b!2357506))

(declare-fun b!2357507 () Bool)

(declare-fun e!1505541 () Bool)

(declare-fun tp!753612 () Bool)

(assert (=> b!2357507 (= e!1505541 (and tp_is_empty!11111 tp!753612))))

(assert (=> b!2357437 (= tp!753596 e!1505541)))

(assert (= (and b!2357437 (is-Cons!27853 (t!207810 l3!250))) b!2357507))

(push 1)

(assert (not b!2357506))

(assert tp_is_empty!11111)

(assert (not b!2357495))

(assert (not b!2357507))

(assert (not b!2357500))

(assert (not b!2357468))

(assert (not d!693232))

(assert (not d!693228))

(assert (not d!693224))

(assert (not b!2357499))

(assert (not b!2357487))

(assert (not b!2357494))

(assert (not b!2357486))

(assert (not b!2357467))

(assert (not b!2357492))

(assert (not b!2357491))

(assert (not b!2357505))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

