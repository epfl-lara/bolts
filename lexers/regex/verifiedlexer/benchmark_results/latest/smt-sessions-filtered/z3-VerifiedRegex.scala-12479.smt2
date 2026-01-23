; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694828 () Bool)

(assert start!694828)

(declare-fun b!7132467 () Bool)

(declare-fun e!4286442 () Bool)

(declare-fun tp_is_empty!45783 () Bool)

(declare-fun tp!1965871 () Bool)

(assert (=> b!7132467 (= e!4286442 (and tp_is_empty!45783 tp!1965871))))

(declare-fun b!7132466 () Bool)

(declare-fun e!4286441 () Bool)

(declare-datatypes ((C!36452 0))(
  ( (C!36453 (val!28152 Int)) )
))
(declare-datatypes ((List!69235 0))(
  ( (Nil!69111) (Cons!69111 (h!75559 C!36452) (t!383212 List!69235)) )
))
(declare-fun s2!1615 () List!69235)

(declare-fun size!41494 (List!69235) Int)

(assert (=> b!7132466 (= e!4286441 (< (size!41494 s2!1615) 0))))

(declare-fun b!7132469 () Bool)

(declare-fun e!4286440 () Bool)

(declare-fun tp!1965869 () Bool)

(assert (=> b!7132469 (= e!4286440 (and tp_is_empty!45783 tp!1965869))))

(declare-fun b!7132468 () Bool)

(declare-fun e!4286443 () Bool)

(declare-fun tp!1965870 () Bool)

(assert (=> b!7132468 (= e!4286443 (and tp_is_empty!45783 tp!1965870))))

(declare-fun res!2910267 () Bool)

(assert (=> start!694828 (=> (not res!2910267) (not e!4286441))))

(declare-fun s1!1678 () List!69235)

(declare-fun s!7358 () List!69235)

(declare-fun ++!16229 (List!69235 List!69235) List!69235)

(assert (=> start!694828 (= res!2910267 (= (++!16229 s1!1678 s2!1615) s!7358))))

(assert (=> start!694828 e!4286441))

(assert (=> start!694828 e!4286442))

(assert (=> start!694828 e!4286443))

(assert (=> start!694828 e!4286440))

(assert (= (and start!694828 res!2910267) b!7132466))

(get-info :version)

(assert (= (and start!694828 ((_ is Cons!69111) s1!1678)) b!7132467))

(assert (= (and start!694828 ((_ is Cons!69111) s2!1615)) b!7132468))

(assert (= (and start!694828 ((_ is Cons!69111) s!7358)) b!7132469))

(declare-fun m!7849656 () Bool)

(assert (=> b!7132466 m!7849656))

(declare-fun m!7849658 () Bool)

(assert (=> start!694828 m!7849658))

(check-sat (not b!7132466) (not start!694828) (not b!7132468) tp_is_empty!45783 (not b!7132467) (not b!7132469))
(check-sat)
(get-model)

(declare-fun d!2225770 () Bool)

(declare-fun lt!2565034 () Int)

(assert (=> d!2225770 (>= lt!2565034 0)))

(declare-fun e!4286453 () Int)

(assert (=> d!2225770 (= lt!2565034 e!4286453)))

(declare-fun c!1330299 () Bool)

(assert (=> d!2225770 (= c!1330299 ((_ is Nil!69111) s2!1615))))

(assert (=> d!2225770 (= (size!41494 s2!1615) lt!2565034)))

(declare-fun b!7132488 () Bool)

(assert (=> b!7132488 (= e!4286453 0)))

(declare-fun b!7132489 () Bool)

(assert (=> b!7132489 (= e!4286453 (+ 1 (size!41494 (t!383212 s2!1615))))))

(assert (= (and d!2225770 c!1330299) b!7132488))

(assert (= (and d!2225770 (not c!1330299)) b!7132489))

(declare-fun m!7849662 () Bool)

(assert (=> b!7132489 m!7849662))

(assert (=> b!7132466 d!2225770))

(declare-fun d!2225774 () Bool)

(declare-fun e!4286465 () Bool)

(assert (=> d!2225774 e!4286465))

(declare-fun res!2910278 () Bool)

(assert (=> d!2225774 (=> (not res!2910278) (not e!4286465))))

(declare-fun lt!2565038 () List!69235)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!14129 (List!69235) (InoxSet C!36452))

(assert (=> d!2225774 (= res!2910278 (= (content!14129 lt!2565038) ((_ map or) (content!14129 s1!1678) (content!14129 s2!1615))))))

(declare-fun e!4286466 () List!69235)

(assert (=> d!2225774 (= lt!2565038 e!4286466)))

(declare-fun c!1330303 () Bool)

(assert (=> d!2225774 (= c!1330303 ((_ is Nil!69111) s1!1678))))

(assert (=> d!2225774 (= (++!16229 s1!1678 s2!1615) lt!2565038)))

(declare-fun b!7132512 () Bool)

(assert (=> b!7132512 (= e!4286465 (or (not (= s2!1615 Nil!69111)) (= lt!2565038 s1!1678)))))

(declare-fun b!7132509 () Bool)

(assert (=> b!7132509 (= e!4286466 s2!1615)))

(declare-fun b!7132511 () Bool)

(declare-fun res!2910279 () Bool)

(assert (=> b!7132511 (=> (not res!2910279) (not e!4286465))))

(assert (=> b!7132511 (= res!2910279 (= (size!41494 lt!2565038) (+ (size!41494 s1!1678) (size!41494 s2!1615))))))

(declare-fun b!7132510 () Bool)

(assert (=> b!7132510 (= e!4286466 (Cons!69111 (h!75559 s1!1678) (++!16229 (t!383212 s1!1678) s2!1615)))))

(assert (= (and d!2225774 c!1330303) b!7132509))

(assert (= (and d!2225774 (not c!1330303)) b!7132510))

(assert (= (and d!2225774 res!2910278) b!7132511))

(assert (= (and b!7132511 res!2910279) b!7132512))

(declare-fun m!7849676 () Bool)

(assert (=> d!2225774 m!7849676))

(declare-fun m!7849678 () Bool)

(assert (=> d!2225774 m!7849678))

(declare-fun m!7849680 () Bool)

(assert (=> d!2225774 m!7849680))

(declare-fun m!7849682 () Bool)

(assert (=> b!7132511 m!7849682))

(declare-fun m!7849684 () Bool)

(assert (=> b!7132511 m!7849684))

(assert (=> b!7132511 m!7849656))

(declare-fun m!7849686 () Bool)

(assert (=> b!7132510 m!7849686))

(assert (=> start!694828 d!2225774))

(declare-fun b!7132517 () Bool)

(declare-fun e!4286469 () Bool)

(declare-fun tp!1965879 () Bool)

(assert (=> b!7132517 (= e!4286469 (and tp_is_empty!45783 tp!1965879))))

(assert (=> b!7132469 (= tp!1965869 e!4286469)))

(assert (= (and b!7132469 ((_ is Cons!69111) (t!383212 s!7358))) b!7132517))

(declare-fun b!7132518 () Bool)

(declare-fun e!4286470 () Bool)

(declare-fun tp!1965880 () Bool)

(assert (=> b!7132518 (= e!4286470 (and tp_is_empty!45783 tp!1965880))))

(assert (=> b!7132468 (= tp!1965870 e!4286470)))

(assert (= (and b!7132468 ((_ is Cons!69111) (t!383212 s2!1615))) b!7132518))

(declare-fun b!7132519 () Bool)

(declare-fun e!4286471 () Bool)

(declare-fun tp!1965881 () Bool)

(assert (=> b!7132519 (= e!4286471 (and tp_is_empty!45783 tp!1965881))))

(assert (=> b!7132467 (= tp!1965871 e!4286471)))

(assert (= (and b!7132467 ((_ is Cons!69111) (t!383212 s1!1678))) b!7132519))

(check-sat (not b!7132510) (not b!7132511) (not b!7132519) (not b!7132518) tp_is_empty!45783 (not d!2225774) (not b!7132489) (not b!7132517))
(check-sat)
