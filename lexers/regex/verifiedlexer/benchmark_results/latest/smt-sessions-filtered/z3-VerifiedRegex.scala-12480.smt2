; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694840 () Bool)

(assert start!694840)

(declare-fun b!7132580 () Bool)

(declare-fun e!4286523 () Bool)

(declare-fun tp_is_empty!45787 () Bool)

(declare-fun tp!1965917 () Bool)

(assert (=> b!7132580 (= e!4286523 (and tp_is_empty!45787 tp!1965917))))

(declare-fun setIsEmpty!52210 () Bool)

(declare-fun setRes!52210 () Bool)

(assert (=> setIsEmpty!52210 setRes!52210))

(declare-fun b!7132581 () Bool)

(declare-fun e!4286519 () Bool)

(declare-fun tp!1965923 () Bool)

(assert (=> b!7132581 (= e!4286519 (and tp_is_empty!45787 tp!1965923))))

(declare-datatypes ((C!36456 0))(
  ( (C!36457 (val!28154 Int)) )
))
(declare-datatypes ((Regex!18091 0))(
  ( (ElementMatch!18091 (c!1330305 C!36456)) (Concat!26936 (regOne!36694 Regex!18091) (regTwo!36694 Regex!18091)) (EmptyExpr!18091) (Star!18091 (reg!18420 Regex!18091)) (EmptyLang!18091) (Union!18091 (regOne!36695 Regex!18091) (regTwo!36695 Regex!18091)) )
))
(declare-datatypes ((List!69238 0))(
  ( (Nil!69114) (Cons!69114 (h!75562 Regex!18091) (t!383215 List!69238)) )
))
(declare-datatypes ((Context!14170 0))(
  ( (Context!14171 (exprs!7585 List!69238)) )
))
(declare-fun setElem!52210 () Context!14170)

(declare-fun e!4286518 () Bool)

(declare-fun setNonEmpty!52210 () Bool)

(declare-fun tp!1965919 () Bool)

(declare-fun inv!88258 (Context!14170) Bool)

(assert (=> setNonEmpty!52210 (= setRes!52210 (and tp!1965919 (inv!88258 setElem!52210) e!4286518))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z2!457 () (InoxSet Context!14170))

(declare-fun setRest!52211 () (InoxSet Context!14170))

(assert (=> setNonEmpty!52210 (= z2!457 ((_ map or) (store ((as const (Array Context!14170 Bool)) false) setElem!52210 true) setRest!52211))))

(declare-fun b!7132582 () Bool)

(declare-fun e!4286520 () Bool)

(declare-fun tp!1965921 () Bool)

(assert (=> b!7132582 (= e!4286520 (and tp_is_empty!45787 tp!1965921))))

(declare-fun res!2910320 () Bool)

(declare-fun e!4286522 () Bool)

(assert (=> start!694840 (=> (not res!2910320) (not e!4286522))))

(declare-datatypes ((List!69239 0))(
  ( (Nil!69115) (Cons!69115 (h!75563 C!36456) (t!383216 List!69239)) )
))
(declare-fun s2!1615 () List!69239)

(declare-fun s1!1678 () List!69239)

(declare-fun s!7358 () List!69239)

(declare-fun ++!16231 (List!69239 List!69239) List!69239)

(assert (=> start!694840 (= res!2910320 (= (++!16231 s1!1678 s2!1615) s!7358))))

(assert (=> start!694840 e!4286522))

(declare-fun condSetEmpty!52211 () Bool)

(assert (=> start!694840 (= condSetEmpty!52211 (= z2!457 ((as const (Array Context!14170 Bool)) false)))))

(assert (=> start!694840 setRes!52210))

(assert (=> start!694840 e!4286520))

(declare-fun condSetEmpty!52210 () Bool)

(declare-fun z1!538 () (InoxSet Context!14170))

(assert (=> start!694840 (= condSetEmpty!52210 (= z1!538 ((as const (Array Context!14170 Bool)) false)))))

(declare-fun setRes!52211 () Bool)

(assert (=> start!694840 setRes!52211))

(assert (=> start!694840 e!4286523))

(assert (=> start!694840 e!4286519))

(declare-fun b!7132583 () Bool)

(declare-fun res!2910319 () Bool)

(assert (=> b!7132583 (=> (not res!2910319) (not e!4286522))))

(declare-fun matchZipper!3347 ((InoxSet Context!14170) List!69239) Bool)

(assert (=> b!7132583 (= res!2910319 (matchZipper!3347 z1!538 s1!1678))))

(declare-fun b!7132584 () Bool)

(declare-fun res!2910316 () Bool)

(assert (=> b!7132584 (=> (not res!2910316) (not e!4286522))))

(assert (=> b!7132584 (= res!2910316 (matchZipper!3347 z2!457 s2!1615))))

(declare-fun b!7132585 () Bool)

(declare-fun e!4286525 () Bool)

(declare-fun tp!1965922 () Bool)

(assert (=> b!7132585 (= e!4286525 tp!1965922)))

(declare-fun b!7132586 () Bool)

(declare-fun e!4286517 () Bool)

(assert (=> b!7132586 (= e!4286522 e!4286517)))

(declare-fun res!2910318 () Bool)

(assert (=> b!7132586 (=> (not res!2910318) (not e!4286517))))

(declare-fun e!4286524 () Bool)

(assert (=> b!7132586 (= res!2910318 e!4286524)))

(declare-fun res!2910315 () Bool)

(assert (=> b!7132586 (=> res!2910315 e!4286524)))

(declare-fun lt!2565055 () Bool)

(assert (=> b!7132586 (= res!2910315 lt!2565055)))

(declare-datatypes ((tuple2!68404 0))(
  ( (tuple2!68405 (_1!37505 List!69239) (_2!37505 List!69239)) )
))
(declare-datatypes ((Option!17034 0))(
  ( (None!17033) (Some!17033 (v!53527 tuple2!68404)) )
))
(declare-fun lt!2565056 () Option!17034)

(declare-fun isDefined!13725 (Option!17034) Bool)

(assert (=> b!7132586 (= lt!2565055 (not (isDefined!13725 lt!2565056)))))

(assert (=> b!7132586 (= lt!2565056 (Some!17033 (tuple2!68405 s1!1678 s2!1615)))))

(declare-fun b!7132587 () Bool)

(declare-fun e!4286521 () Bool)

(declare-fun lt!2565054 () tuple2!68404)

(assert (=> b!7132587 (= e!4286521 (not (= (++!16231 (_1!37505 lt!2565054) (_2!37505 lt!2565054)) s!7358)))))

(declare-fun b!7132588 () Bool)

(declare-fun tp!1965920 () Bool)

(assert (=> b!7132588 (= e!4286518 tp!1965920)))

(declare-fun tp!1965918 () Bool)

(declare-fun setNonEmpty!52211 () Bool)

(declare-fun setElem!52211 () Context!14170)

(assert (=> setNonEmpty!52211 (= setRes!52211 (and tp!1965918 (inv!88258 setElem!52211) e!4286525))))

(declare-fun setRest!52210 () (InoxSet Context!14170))

(assert (=> setNonEmpty!52211 (= z1!538 ((_ map or) (store ((as const (Array Context!14170 Bool)) false) setElem!52211 true) setRest!52210))))

(declare-fun b!7132589 () Bool)

(assert (=> b!7132589 (= e!4286524 e!4286521)))

(declare-fun res!2910317 () Bool)

(assert (=> b!7132589 (=> res!2910317 e!4286521)))

(assert (=> b!7132589 (= res!2910317 (not (matchZipper!3347 z1!538 (_1!37505 lt!2565054))))))

(declare-fun get!24274 (Option!17034) tuple2!68404)

(assert (=> b!7132589 (= lt!2565054 (get!24274 lt!2565056))))

(declare-fun b!7132590 () Bool)

(assert (=> b!7132590 (= e!4286517 (not lt!2565055))))

(declare-fun b!7132591 () Bool)

(declare-fun res!2910321 () Bool)

(assert (=> b!7132591 (=> res!2910321 e!4286521)))

(assert (=> b!7132591 (= res!2910321 (not (matchZipper!3347 z2!457 (_2!37505 lt!2565054))))))

(declare-fun setIsEmpty!52211 () Bool)

(assert (=> setIsEmpty!52211 setRes!52211))

(assert (= (and start!694840 res!2910320) b!7132583))

(assert (= (and b!7132583 res!2910319) b!7132584))

(assert (= (and b!7132584 res!2910316) b!7132586))

(assert (= (and b!7132586 (not res!2910315)) b!7132589))

(assert (= (and b!7132589 (not res!2910317)) b!7132591))

(assert (= (and b!7132591 (not res!2910321)) b!7132587))

(assert (= (and b!7132586 res!2910318) b!7132590))

(assert (= (and start!694840 condSetEmpty!52211) setIsEmpty!52210))

(assert (= (and start!694840 (not condSetEmpty!52211)) setNonEmpty!52210))

(assert (= setNonEmpty!52210 b!7132588))

(get-info :version)

(assert (= (and start!694840 ((_ is Cons!69115) s2!1615)) b!7132582))

(assert (= (and start!694840 condSetEmpty!52210) setIsEmpty!52211))

(assert (= (and start!694840 (not condSetEmpty!52210)) setNonEmpty!52211))

(assert (= setNonEmpty!52211 b!7132585))

(assert (= (and start!694840 ((_ is Cons!69115) s1!1678)) b!7132580))

(assert (= (and start!694840 ((_ is Cons!69115) s!7358)) b!7132581))

(declare-fun m!7849708 () Bool)

(assert (=> b!7132587 m!7849708))

(declare-fun m!7849710 () Bool)

(assert (=> setNonEmpty!52210 m!7849710))

(declare-fun m!7849712 () Bool)

(assert (=> b!7132586 m!7849712))

(declare-fun m!7849714 () Bool)

(assert (=> b!7132591 m!7849714))

(declare-fun m!7849716 () Bool)

(assert (=> b!7132589 m!7849716))

(declare-fun m!7849718 () Bool)

(assert (=> b!7132589 m!7849718))

(declare-fun m!7849720 () Bool)

(assert (=> b!7132584 m!7849720))

(declare-fun m!7849722 () Bool)

(assert (=> setNonEmpty!52211 m!7849722))

(declare-fun m!7849724 () Bool)

(assert (=> start!694840 m!7849724))

(declare-fun m!7849726 () Bool)

(assert (=> b!7132583 m!7849726))

(check-sat (not setNonEmpty!52210) (not b!7132588) (not b!7132586) (not start!694840) (not b!7132589) (not b!7132585) (not setNonEmpty!52211) (not b!7132582) (not b!7132587) (not b!7132580) (not b!7132583) (not b!7132581) (not b!7132584) tp_is_empty!45787 (not b!7132591))
(check-sat)
(get-model)

(declare-fun d!2225777 () Bool)

(declare-fun lambda!433234 () Int)

(declare-fun forall!16928 (List!69238 Int) Bool)

(assert (=> d!2225777 (= (inv!88258 setElem!52210) (forall!16928 (exprs!7585 setElem!52210) lambda!433234))))

(declare-fun bs!1887006 () Bool)

(assert (= bs!1887006 d!2225777))

(declare-fun m!7849740 () Bool)

(assert (=> bs!1887006 m!7849740))

(assert (=> setNonEmpty!52210 d!2225777))

(declare-fun d!2225783 () Bool)

(declare-fun isEmpty!40035 (Option!17034) Bool)

(assert (=> d!2225783 (= (isDefined!13725 lt!2565056) (not (isEmpty!40035 lt!2565056)))))

(declare-fun bs!1887007 () Bool)

(assert (= bs!1887007 d!2225783))

(declare-fun m!7849742 () Bool)

(assert (=> bs!1887007 m!7849742))

(assert (=> b!7132586 d!2225783))

(declare-fun b!7132609 () Bool)

(declare-fun e!4286534 () Bool)

(declare-fun lt!2565059 () List!69239)

(assert (=> b!7132609 (= e!4286534 (or (not (= (_2!37505 lt!2565054) Nil!69115)) (= lt!2565059 (_1!37505 lt!2565054))))))

(declare-fun b!7132607 () Bool)

(declare-fun e!4286533 () List!69239)

(assert (=> b!7132607 (= e!4286533 (Cons!69115 (h!75563 (_1!37505 lt!2565054)) (++!16231 (t!383216 (_1!37505 lt!2565054)) (_2!37505 lt!2565054))))))

(declare-fun d!2225785 () Bool)

(assert (=> d!2225785 e!4286534))

(declare-fun res!2910327 () Bool)

(assert (=> d!2225785 (=> (not res!2910327) (not e!4286534))))

(declare-fun content!14130 (List!69239) (InoxSet C!36456))

(assert (=> d!2225785 (= res!2910327 (= (content!14130 lt!2565059) ((_ map or) (content!14130 (_1!37505 lt!2565054)) (content!14130 (_2!37505 lt!2565054)))))))

(assert (=> d!2225785 (= lt!2565059 e!4286533)))

(declare-fun c!1330311 () Bool)

(assert (=> d!2225785 (= c!1330311 ((_ is Nil!69115) (_1!37505 lt!2565054)))))

(assert (=> d!2225785 (= (++!16231 (_1!37505 lt!2565054) (_2!37505 lt!2565054)) lt!2565059)))

(declare-fun b!7132606 () Bool)

(assert (=> b!7132606 (= e!4286533 (_2!37505 lt!2565054))))

(declare-fun b!7132608 () Bool)

(declare-fun res!2910326 () Bool)

(assert (=> b!7132608 (=> (not res!2910326) (not e!4286534))))

(declare-fun size!41495 (List!69239) Int)

(assert (=> b!7132608 (= res!2910326 (= (size!41495 lt!2565059) (+ (size!41495 (_1!37505 lt!2565054)) (size!41495 (_2!37505 lt!2565054)))))))

(assert (= (and d!2225785 c!1330311) b!7132606))

(assert (= (and d!2225785 (not c!1330311)) b!7132607))

(assert (= (and d!2225785 res!2910327) b!7132608))

(assert (= (and b!7132608 res!2910326) b!7132609))

(declare-fun m!7849744 () Bool)

(assert (=> b!7132607 m!7849744))

(declare-fun m!7849746 () Bool)

(assert (=> d!2225785 m!7849746))

(declare-fun m!7849748 () Bool)

(assert (=> d!2225785 m!7849748))

(declare-fun m!7849750 () Bool)

(assert (=> d!2225785 m!7849750))

(declare-fun m!7849752 () Bool)

(assert (=> b!7132608 m!7849752))

(declare-fun m!7849754 () Bool)

(assert (=> b!7132608 m!7849754))

(declare-fun m!7849756 () Bool)

(assert (=> b!7132608 m!7849756))

(assert (=> b!7132587 d!2225785))

(declare-fun d!2225787 () Bool)

(declare-fun c!1330314 () Bool)

(declare-fun isEmpty!40036 (List!69239) Bool)

(assert (=> d!2225787 (= c!1330314 (isEmpty!40036 (_2!37505 lt!2565054)))))

(declare-fun e!4286537 () Bool)

(assert (=> d!2225787 (= (matchZipper!3347 z2!457 (_2!37505 lt!2565054)) e!4286537)))

(declare-fun b!7132614 () Bool)

(declare-fun nullableZipper!2767 ((InoxSet Context!14170)) Bool)

(assert (=> b!7132614 (= e!4286537 (nullableZipper!2767 z2!457))))

(declare-fun b!7132615 () Bool)

(declare-fun derivationStepZipper!3179 ((InoxSet Context!14170) C!36456) (InoxSet Context!14170))

(declare-fun head!14477 (List!69239) C!36456)

(declare-fun tail!13949 (List!69239) List!69239)

(assert (=> b!7132615 (= e!4286537 (matchZipper!3347 (derivationStepZipper!3179 z2!457 (head!14477 (_2!37505 lt!2565054))) (tail!13949 (_2!37505 lt!2565054))))))

(assert (= (and d!2225787 c!1330314) b!7132614))

(assert (= (and d!2225787 (not c!1330314)) b!7132615))

(declare-fun m!7849758 () Bool)

(assert (=> d!2225787 m!7849758))

(declare-fun m!7849760 () Bool)

(assert (=> b!7132614 m!7849760))

(declare-fun m!7849762 () Bool)

(assert (=> b!7132615 m!7849762))

(assert (=> b!7132615 m!7849762))

(declare-fun m!7849764 () Bool)

(assert (=> b!7132615 m!7849764))

(declare-fun m!7849766 () Bool)

(assert (=> b!7132615 m!7849766))

(assert (=> b!7132615 m!7849764))

(assert (=> b!7132615 m!7849766))

(declare-fun m!7849768 () Bool)

(assert (=> b!7132615 m!7849768))

(assert (=> b!7132591 d!2225787))

(declare-fun e!4286539 () Bool)

(declare-fun b!7132619 () Bool)

(declare-fun lt!2565060 () List!69239)

(assert (=> b!7132619 (= e!4286539 (or (not (= s2!1615 Nil!69115)) (= lt!2565060 s1!1678)))))

(declare-fun b!7132617 () Bool)

(declare-fun e!4286538 () List!69239)

(assert (=> b!7132617 (= e!4286538 (Cons!69115 (h!75563 s1!1678) (++!16231 (t!383216 s1!1678) s2!1615)))))

(declare-fun d!2225789 () Bool)

(assert (=> d!2225789 e!4286539))

(declare-fun res!2910329 () Bool)

(assert (=> d!2225789 (=> (not res!2910329) (not e!4286539))))

(assert (=> d!2225789 (= res!2910329 (= (content!14130 lt!2565060) ((_ map or) (content!14130 s1!1678) (content!14130 s2!1615))))))

(assert (=> d!2225789 (= lt!2565060 e!4286538)))

(declare-fun c!1330315 () Bool)

(assert (=> d!2225789 (= c!1330315 ((_ is Nil!69115) s1!1678))))

(assert (=> d!2225789 (= (++!16231 s1!1678 s2!1615) lt!2565060)))

(declare-fun b!7132616 () Bool)

(assert (=> b!7132616 (= e!4286538 s2!1615)))

(declare-fun b!7132618 () Bool)

(declare-fun res!2910328 () Bool)

(assert (=> b!7132618 (=> (not res!2910328) (not e!4286539))))

(assert (=> b!7132618 (= res!2910328 (= (size!41495 lt!2565060) (+ (size!41495 s1!1678) (size!41495 s2!1615))))))

(assert (= (and d!2225789 c!1330315) b!7132616))

(assert (= (and d!2225789 (not c!1330315)) b!7132617))

(assert (= (and d!2225789 res!2910329) b!7132618))

(assert (= (and b!7132618 res!2910328) b!7132619))

(declare-fun m!7849770 () Bool)

(assert (=> b!7132617 m!7849770))

(declare-fun m!7849772 () Bool)

(assert (=> d!2225789 m!7849772))

(declare-fun m!7849774 () Bool)

(assert (=> d!2225789 m!7849774))

(declare-fun m!7849776 () Bool)

(assert (=> d!2225789 m!7849776))

(declare-fun m!7849778 () Bool)

(assert (=> b!7132618 m!7849778))

(declare-fun m!7849780 () Bool)

(assert (=> b!7132618 m!7849780))

(declare-fun m!7849782 () Bool)

(assert (=> b!7132618 m!7849782))

(assert (=> start!694840 d!2225789))

(declare-fun d!2225791 () Bool)

(declare-fun c!1330316 () Bool)

(assert (=> d!2225791 (= c!1330316 (isEmpty!40036 (_1!37505 lt!2565054)))))

(declare-fun e!4286540 () Bool)

(assert (=> d!2225791 (= (matchZipper!3347 z1!538 (_1!37505 lt!2565054)) e!4286540)))

(declare-fun b!7132620 () Bool)

(assert (=> b!7132620 (= e!4286540 (nullableZipper!2767 z1!538))))

(declare-fun b!7132621 () Bool)

(assert (=> b!7132621 (= e!4286540 (matchZipper!3347 (derivationStepZipper!3179 z1!538 (head!14477 (_1!37505 lt!2565054))) (tail!13949 (_1!37505 lt!2565054))))))

(assert (= (and d!2225791 c!1330316) b!7132620))

(assert (= (and d!2225791 (not c!1330316)) b!7132621))

(declare-fun m!7849784 () Bool)

(assert (=> d!2225791 m!7849784))

(declare-fun m!7849786 () Bool)

(assert (=> b!7132620 m!7849786))

(declare-fun m!7849788 () Bool)

(assert (=> b!7132621 m!7849788))

(assert (=> b!7132621 m!7849788))

(declare-fun m!7849790 () Bool)

(assert (=> b!7132621 m!7849790))

(declare-fun m!7849792 () Bool)

(assert (=> b!7132621 m!7849792))

(assert (=> b!7132621 m!7849790))

(assert (=> b!7132621 m!7849792))

(declare-fun m!7849794 () Bool)

(assert (=> b!7132621 m!7849794))

(assert (=> b!7132589 d!2225791))

(declare-fun d!2225793 () Bool)

(assert (=> d!2225793 (= (get!24274 lt!2565056) (v!53527 lt!2565056))))

(assert (=> b!7132589 d!2225793))

(declare-fun bs!1887008 () Bool)

(declare-fun d!2225795 () Bool)

(assert (= bs!1887008 (and d!2225795 d!2225777)))

(declare-fun lambda!433235 () Int)

(assert (=> bs!1887008 (= lambda!433235 lambda!433234)))

(assert (=> d!2225795 (= (inv!88258 setElem!52211) (forall!16928 (exprs!7585 setElem!52211) lambda!433235))))

(declare-fun bs!1887009 () Bool)

(assert (= bs!1887009 d!2225795))

(declare-fun m!7849796 () Bool)

(assert (=> bs!1887009 m!7849796))

(assert (=> setNonEmpty!52211 d!2225795))

(declare-fun d!2225797 () Bool)

(declare-fun c!1330317 () Bool)

(assert (=> d!2225797 (= c!1330317 (isEmpty!40036 s2!1615))))

(declare-fun e!4286541 () Bool)

(assert (=> d!2225797 (= (matchZipper!3347 z2!457 s2!1615) e!4286541)))

(declare-fun b!7132622 () Bool)

(assert (=> b!7132622 (= e!4286541 (nullableZipper!2767 z2!457))))

(declare-fun b!7132623 () Bool)

(assert (=> b!7132623 (= e!4286541 (matchZipper!3347 (derivationStepZipper!3179 z2!457 (head!14477 s2!1615)) (tail!13949 s2!1615)))))

(assert (= (and d!2225797 c!1330317) b!7132622))

(assert (= (and d!2225797 (not c!1330317)) b!7132623))

(declare-fun m!7849798 () Bool)

(assert (=> d!2225797 m!7849798))

(assert (=> b!7132622 m!7849760))

(declare-fun m!7849800 () Bool)

(assert (=> b!7132623 m!7849800))

(assert (=> b!7132623 m!7849800))

(declare-fun m!7849802 () Bool)

(assert (=> b!7132623 m!7849802))

(declare-fun m!7849804 () Bool)

(assert (=> b!7132623 m!7849804))

(assert (=> b!7132623 m!7849802))

(assert (=> b!7132623 m!7849804))

(declare-fun m!7849806 () Bool)

(assert (=> b!7132623 m!7849806))

(assert (=> b!7132584 d!2225797))

(declare-fun d!2225799 () Bool)

(declare-fun c!1330318 () Bool)

(assert (=> d!2225799 (= c!1330318 (isEmpty!40036 s1!1678))))

(declare-fun e!4286542 () Bool)

(assert (=> d!2225799 (= (matchZipper!3347 z1!538 s1!1678) e!4286542)))

(declare-fun b!7132624 () Bool)

(assert (=> b!7132624 (= e!4286542 (nullableZipper!2767 z1!538))))

(declare-fun b!7132625 () Bool)

(assert (=> b!7132625 (= e!4286542 (matchZipper!3347 (derivationStepZipper!3179 z1!538 (head!14477 s1!1678)) (tail!13949 s1!1678)))))

(assert (= (and d!2225799 c!1330318) b!7132624))

(assert (= (and d!2225799 (not c!1330318)) b!7132625))

(declare-fun m!7849808 () Bool)

(assert (=> d!2225799 m!7849808))

(assert (=> b!7132624 m!7849786))

(declare-fun m!7849810 () Bool)

(assert (=> b!7132625 m!7849810))

(assert (=> b!7132625 m!7849810))

(declare-fun m!7849812 () Bool)

(assert (=> b!7132625 m!7849812))

(declare-fun m!7849814 () Bool)

(assert (=> b!7132625 m!7849814))

(assert (=> b!7132625 m!7849812))

(assert (=> b!7132625 m!7849814))

(declare-fun m!7849816 () Bool)

(assert (=> b!7132625 m!7849816))

(assert (=> b!7132583 d!2225799))

(declare-fun condSetEmpty!52214 () Bool)

(assert (=> setNonEmpty!52210 (= condSetEmpty!52214 (= setRest!52211 ((as const (Array Context!14170 Bool)) false)))))

(declare-fun setRes!52214 () Bool)

(assert (=> setNonEmpty!52210 (= tp!1965919 setRes!52214)))

(declare-fun setIsEmpty!52214 () Bool)

(assert (=> setIsEmpty!52214 setRes!52214))

(declare-fun setNonEmpty!52214 () Bool)

(declare-fun tp!1965929 () Bool)

(declare-fun setElem!52214 () Context!14170)

(declare-fun e!4286545 () Bool)

(assert (=> setNonEmpty!52214 (= setRes!52214 (and tp!1965929 (inv!88258 setElem!52214) e!4286545))))

(declare-fun setRest!52214 () (InoxSet Context!14170))

(assert (=> setNonEmpty!52214 (= setRest!52211 ((_ map or) (store ((as const (Array Context!14170 Bool)) false) setElem!52214 true) setRest!52214))))

(declare-fun b!7132630 () Bool)

(declare-fun tp!1965928 () Bool)

(assert (=> b!7132630 (= e!4286545 tp!1965928)))

(assert (= (and setNonEmpty!52210 condSetEmpty!52214) setIsEmpty!52214))

(assert (= (and setNonEmpty!52210 (not condSetEmpty!52214)) setNonEmpty!52214))

(assert (= setNonEmpty!52214 b!7132630))

(declare-fun m!7849818 () Bool)

(assert (=> setNonEmpty!52214 m!7849818))

(declare-fun b!7132635 () Bool)

(declare-fun e!4286548 () Bool)

(declare-fun tp!1965934 () Bool)

(declare-fun tp!1965935 () Bool)

(assert (=> b!7132635 (= e!4286548 (and tp!1965934 tp!1965935))))

(assert (=> b!7132585 (= tp!1965922 e!4286548)))

(assert (= (and b!7132585 ((_ is Cons!69114) (exprs!7585 setElem!52211))) b!7132635))

(declare-fun b!7132640 () Bool)

(declare-fun e!4286551 () Bool)

(declare-fun tp!1965938 () Bool)

(assert (=> b!7132640 (= e!4286551 (and tp_is_empty!45787 tp!1965938))))

(assert (=> b!7132581 (= tp!1965923 e!4286551)))

(assert (= (and b!7132581 ((_ is Cons!69115) (t!383216 s!7358))) b!7132640))

(declare-fun condSetEmpty!52215 () Bool)

(assert (=> setNonEmpty!52211 (= condSetEmpty!52215 (= setRest!52210 ((as const (Array Context!14170 Bool)) false)))))

(declare-fun setRes!52215 () Bool)

(assert (=> setNonEmpty!52211 (= tp!1965918 setRes!52215)))

(declare-fun setIsEmpty!52215 () Bool)

(assert (=> setIsEmpty!52215 setRes!52215))

(declare-fun e!4286552 () Bool)

(declare-fun tp!1965940 () Bool)

(declare-fun setElem!52215 () Context!14170)

(declare-fun setNonEmpty!52215 () Bool)

(assert (=> setNonEmpty!52215 (= setRes!52215 (and tp!1965940 (inv!88258 setElem!52215) e!4286552))))

(declare-fun setRest!52215 () (InoxSet Context!14170))

(assert (=> setNonEmpty!52215 (= setRest!52210 ((_ map or) (store ((as const (Array Context!14170 Bool)) false) setElem!52215 true) setRest!52215))))

(declare-fun b!7132641 () Bool)

(declare-fun tp!1965939 () Bool)

(assert (=> b!7132641 (= e!4286552 tp!1965939)))

(assert (= (and setNonEmpty!52211 condSetEmpty!52215) setIsEmpty!52215))

(assert (= (and setNonEmpty!52211 (not condSetEmpty!52215)) setNonEmpty!52215))

(assert (= setNonEmpty!52215 b!7132641))

(declare-fun m!7849820 () Bool)

(assert (=> setNonEmpty!52215 m!7849820))

(declare-fun b!7132642 () Bool)

(declare-fun e!4286553 () Bool)

(declare-fun tp!1965941 () Bool)

(assert (=> b!7132642 (= e!4286553 (and tp_is_empty!45787 tp!1965941))))

(assert (=> b!7132580 (= tp!1965917 e!4286553)))

(assert (= (and b!7132580 ((_ is Cons!69115) (t!383216 s1!1678))) b!7132642))

(declare-fun b!7132643 () Bool)

(declare-fun e!4286554 () Bool)

(declare-fun tp!1965942 () Bool)

(assert (=> b!7132643 (= e!4286554 (and tp_is_empty!45787 tp!1965942))))

(assert (=> b!7132582 (= tp!1965921 e!4286554)))

(assert (= (and b!7132582 ((_ is Cons!69115) (t!383216 s2!1615))) b!7132643))

(declare-fun b!7132644 () Bool)

(declare-fun e!4286555 () Bool)

(declare-fun tp!1965943 () Bool)

(declare-fun tp!1965944 () Bool)

(assert (=> b!7132644 (= e!4286555 (and tp!1965943 tp!1965944))))

(assert (=> b!7132588 (= tp!1965920 e!4286555)))

(assert (= (and b!7132588 ((_ is Cons!69114) (exprs!7585 setElem!52210))) b!7132644))

(check-sat (not b!7132621) (not b!7132620) (not b!7132617) (not b!7132642) (not b!7132641) (not setNonEmpty!52215) tp_is_empty!45787 (not b!7132618) (not b!7132608) (not b!7132625) (not d!2225787) (not b!7132623) (not b!7132615) (not b!7132614) (not d!2225785) (not b!7132624) (not d!2225783) (not d!2225777) (not b!7132635) (not b!7132630) (not setNonEmpty!52214) (not b!7132644) (not d!2225789) (not d!2225791) (not d!2225799) (not b!7132640) (not d!2225795) (not b!7132643) (not b!7132607) (not b!7132622) (not d!2225797))
(check-sat)
