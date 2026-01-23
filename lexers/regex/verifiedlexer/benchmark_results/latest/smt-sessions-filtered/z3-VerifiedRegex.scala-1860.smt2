; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92214 () Bool)

(assert start!92214)

(declare-fun b!1084630 () Bool)

(assert (=> b!1084630 true))

(declare-fun bs!256447 () Bool)

(declare-fun b!1084631 () Bool)

(assert (= bs!256447 (and b!1084631 b!1084630)))

(declare-fun lambda!39505 () Int)

(declare-fun lambda!39504 () Int)

(assert (=> bs!256447 (not (= lambda!39505 lambda!39504))))

(declare-fun b!1084621 () Bool)

(declare-datatypes ((Unit!15635 0))(
  ( (Unit!15636) )
))
(declare-fun e!685884 () Unit!15635)

(declare-fun Unit!15637 () Unit!15635)

(assert (=> b!1084621 (= e!685884 Unit!15637)))

(declare-fun lt!362782 () Unit!15635)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!6528 0))(
  ( (C!6529 (val!3512 Int)) )
))
(declare-datatypes ((Regex!2979 0))(
  ( (ElementMatch!2979 (c!183134 C!6528)) (Concat!4812 (regOne!6470 Regex!2979) (regTwo!6470 Regex!2979)) (EmptyExpr!2979) (Star!2979 (reg!3308 Regex!2979)) (EmptyLang!2979) (Union!2979 (regOne!6471 Regex!2979) (regTwo!6471 Regex!2979)) )
))
(declare-datatypes ((List!10240 0))(
  ( (Nil!10224) (Cons!10224 (h!15625 Regex!2979) (t!101286 List!10240)) )
))
(declare-datatypes ((Context!918 0))(
  ( (Context!919 (exprs!959 List!10240)) )
))
(declare-fun lt!362786 () (InoxSet Context!918))

(declare-datatypes ((List!10241 0))(
  ( (Nil!10225) (Cons!10225 (h!15626 C!6528) (t!101287 List!10241)) )
))
(declare-fun s!2287 () List!10241)

(declare-fun lemmaLostCauseCannotMatch!5 ((InoxSet Context!918) List!10241) Unit!15635)

(assert (=> b!1084621 (= lt!362782 (lemmaLostCauseCannotMatch!5 lt!362786 s!2287))))

(assert (=> b!1084621 false))

(declare-fun setIsEmpty!7452 () Bool)

(declare-fun setRes!7452 () Bool)

(assert (=> setIsEmpty!7452 setRes!7452))

(declare-fun b!1084622 () Bool)

(declare-fun e!685877 () Bool)

(declare-fun tp!324469 () Bool)

(assert (=> b!1084622 (= e!685877 tp!324469)))

(declare-fun setNonEmpty!7452 () Bool)

(declare-fun e!685882 () Bool)

(declare-fun setElem!7452 () Context!918)

(declare-fun tp!324466 () Bool)

(declare-fun inv!13160 (Context!918) Bool)

(assert (=> setNonEmpty!7452 (= setRes!7452 (and tp!324466 (inv!13160 setElem!7452) e!685882))))

(declare-fun z!1122 () (InoxSet Context!918))

(declare-fun setRest!7452 () (InoxSet Context!918))

(assert (=> setNonEmpty!7452 (= z!1122 ((_ map or) (store ((as const (Array Context!918 Bool)) false) setElem!7452 true) setRest!7452))))

(declare-fun b!1084623 () Bool)

(declare-fun e!685887 () Bool)

(declare-fun e!685886 () Bool)

(assert (=> b!1084623 (= e!685887 e!685886)))

(declare-fun res!482506 () Bool)

(assert (=> b!1084623 (=> res!482506 e!685886)))

(declare-fun lt!362784 () Context!918)

(assert (=> b!1084623 (= res!482506 (not (select z!1122 lt!362784)))))

(declare-fun getWitness!48 ((InoxSet Context!918) Int) Context!918)

(assert (=> b!1084623 (= lt!362784 (getWitness!48 z!1122 lambda!39504))))

(declare-fun b!1084624 () Bool)

(declare-fun e!685881 () Bool)

(declare-datatypes ((List!10242 0))(
  ( (Nil!10226) (Cons!10226 (h!15627 Context!918) (t!101288 List!10242)) )
))
(declare-fun lt!362787 () List!10242)

(declare-fun exists!103 (List!10242 Int) Bool)

(assert (=> b!1084624 (= e!685881 (exists!103 lt!362787 lambda!39504))))

(declare-fun b!1084625 () Bool)

(declare-fun e!685885 () Bool)

(declare-fun tp_is_empty!5589 () Bool)

(declare-fun tp!324468 () Bool)

(assert (=> b!1084625 (= e!685885 (and tp_is_empty!5589 tp!324468))))

(declare-fun res!482505 () Bool)

(declare-fun e!685876 () Bool)

(assert (=> start!92214 (=> (not res!482505) (not e!685876))))

(declare-fun zl!316 () List!10242)

(declare-fun toList!597 ((InoxSet Context!918)) List!10242)

(assert (=> start!92214 (= res!482505 (= (toList!597 z!1122) zl!316))))

(assert (=> start!92214 e!685876))

(declare-fun condSetEmpty!7452 () Bool)

(assert (=> start!92214 (= condSetEmpty!7452 (= z!1122 ((as const (Array Context!918 Bool)) false)))))

(assert (=> start!92214 setRes!7452))

(declare-fun e!685875 () Bool)

(assert (=> start!92214 e!685875))

(assert (=> start!92214 e!685885))

(declare-fun b!1084626 () Bool)

(declare-fun e!685883 () Bool)

(declare-fun e!685878 () Bool)

(assert (=> b!1084626 (= e!685883 e!685878)))

(declare-fun res!482507 () Bool)

(assert (=> b!1084626 (=> res!482507 e!685878)))

(declare-fun lt!362781 () Bool)

(assert (=> b!1084626 (= res!482507 lt!362781)))

(declare-fun lt!362783 () Unit!15635)

(assert (=> b!1084626 (= lt!362783 e!685884)))

(declare-fun c!183133 () Bool)

(assert (=> b!1084626 (= c!183133 lt!362781)))

(declare-fun lostCause!216 (Context!918) Bool)

(assert (=> b!1084626 (= lt!362781 (lostCause!216 lt!362784))))

(declare-fun b!1084627 () Bool)

(declare-fun e!685880 () Bool)

(assert (=> b!1084627 (= e!685880 e!685881)))

(declare-fun res!482500 () Bool)

(assert (=> b!1084627 (=> res!482500 e!685881)))

(assert (=> b!1084627 (= res!482500 (not (exists!103 lt!362787 lambda!39504)))))

(declare-fun filter!149 ((InoxSet Context!918) Int) (InoxSet Context!918))

(assert (=> b!1084627 (= lt!362787 (toList!597 (filter!149 z!1122 lambda!39505)))))

(declare-fun b!1084628 () Bool)

(declare-fun e!685879 () Bool)

(assert (=> b!1084628 (= e!685879 e!685880)))

(declare-fun res!482502 () Bool)

(assert (=> b!1084628 (=> res!482502 e!685880)))

(declare-fun exists!104 ((InoxSet Context!918) Int) Bool)

(assert (=> b!1084628 (= res!482502 (not (exists!104 (filter!149 z!1122 lambda!39505) lambda!39504)))))

(declare-fun lt!362785 () (InoxSet Context!918))

(assert (=> b!1084628 (exists!104 lt!362785 lambda!39504)))

(declare-fun lt!362780 () Unit!15635)

(declare-fun lemmaContainsThenExists!17 ((InoxSet Context!918) Context!918 Int) Unit!15635)

(assert (=> b!1084628 (= lt!362780 (lemmaContainsThenExists!17 lt!362785 lt!362784 lambda!39504))))

(assert (=> b!1084628 (= lt!362785 (filter!149 z!1122 lambda!39505))))

(declare-fun b!1084629 () Bool)

(declare-fun tp!324470 () Bool)

(assert (=> b!1084629 (= e!685875 (and (inv!13160 (h!15627 zl!316)) e!685877 tp!324470))))

(assert (=> b!1084630 (= e!685876 (not e!685887))))

(declare-fun res!482501 () Bool)

(assert (=> b!1084630 (=> res!482501 e!685887)))

(assert (=> b!1084630 (= res!482501 (not (exists!104 z!1122 lambda!39504)))))

(assert (=> b!1084630 (exists!103 zl!316 lambda!39504)))

(declare-fun lt!362789 () Unit!15635)

(declare-fun lemmaZipperMatchesExistsMatchingContext!8 (List!10242 List!10241) Unit!15635)

(assert (=> b!1084630 (= lt!362789 (lemmaZipperMatchesExistsMatchingContext!8 zl!316 s!2287))))

(assert (=> b!1084631 (= e!685878 e!685879)))

(declare-fun res!482504 () Bool)

(assert (=> b!1084631 (=> res!482504 e!685879)))

(assert (=> b!1084631 (= res!482504 (not (select (filter!149 z!1122 lambda!39505) lt!362784)))))

(declare-fun lt!362788 () Unit!15635)

(declare-fun filterPost!4 ((InoxSet Context!918) Int Context!918) Unit!15635)

(assert (=> b!1084631 (= lt!362788 (filterPost!4 z!1122 lambda!39505 lt!362784))))

(declare-fun b!1084632 () Bool)

(declare-fun tp!324467 () Bool)

(assert (=> b!1084632 (= e!685882 tp!324467)))

(declare-fun b!1084633 () Bool)

(declare-fun res!482499 () Bool)

(assert (=> b!1084633 (=> (not res!482499) (not e!685876))))

(declare-fun matchZipper!27 ((InoxSet Context!918) List!10241) Bool)

(assert (=> b!1084633 (= res!482499 (matchZipper!27 z!1122 s!2287))))

(declare-fun b!1084634 () Bool)

(assert (=> b!1084634 (= e!685886 e!685883)))

(declare-fun res!482503 () Bool)

(assert (=> b!1084634 (=> res!482503 e!685883)))

(assert (=> b!1084634 (= res!482503 (not (matchZipper!27 lt!362786 s!2287)))))

(assert (=> b!1084634 (= lt!362786 (store ((as const (Array Context!918 Bool)) false) lt!362784 true))))

(declare-fun b!1084635 () Bool)

(declare-fun Unit!15638 () Unit!15635)

(assert (=> b!1084635 (= e!685884 Unit!15638)))

(assert (= (and start!92214 res!482505) b!1084633))

(assert (= (and b!1084633 res!482499) b!1084630))

(assert (= (and b!1084630 (not res!482501)) b!1084623))

(assert (= (and b!1084623 (not res!482506)) b!1084634))

(assert (= (and b!1084634 (not res!482503)) b!1084626))

(assert (= (and b!1084626 c!183133) b!1084621))

(assert (= (and b!1084626 (not c!183133)) b!1084635))

(assert (= (and b!1084626 (not res!482507)) b!1084631))

(assert (= (and b!1084631 (not res!482504)) b!1084628))

(assert (= (and b!1084628 (not res!482502)) b!1084627))

(assert (= (and b!1084627 (not res!482500)) b!1084624))

(assert (= (and start!92214 condSetEmpty!7452) setIsEmpty!7452))

(assert (= (and start!92214 (not condSetEmpty!7452)) setNonEmpty!7452))

(assert (= setNonEmpty!7452 b!1084632))

(assert (= b!1084629 b!1084622))

(get-info :version)

(assert (= (and start!92214 ((_ is Cons!10226) zl!316)) b!1084629))

(assert (= (and start!92214 ((_ is Cons!10225) s!2287)) b!1084625))

(declare-fun m!1234255 () Bool)

(assert (=> b!1084623 m!1234255))

(declare-fun m!1234257 () Bool)

(assert (=> b!1084623 m!1234257))

(declare-fun m!1234259 () Bool)

(assert (=> b!1084621 m!1234259))

(declare-fun m!1234261 () Bool)

(assert (=> b!1084626 m!1234261))

(declare-fun m!1234263 () Bool)

(assert (=> b!1084633 m!1234263))

(declare-fun m!1234265 () Bool)

(assert (=> b!1084630 m!1234265))

(declare-fun m!1234267 () Bool)

(assert (=> b!1084630 m!1234267))

(declare-fun m!1234269 () Bool)

(assert (=> b!1084630 m!1234269))

(declare-fun m!1234271 () Bool)

(assert (=> b!1084624 m!1234271))

(assert (=> b!1084627 m!1234271))

(declare-fun m!1234273 () Bool)

(assert (=> b!1084627 m!1234273))

(assert (=> b!1084627 m!1234273))

(declare-fun m!1234275 () Bool)

(assert (=> b!1084627 m!1234275))

(declare-fun m!1234277 () Bool)

(assert (=> setNonEmpty!7452 m!1234277))

(declare-fun m!1234279 () Bool)

(assert (=> b!1084629 m!1234279))

(declare-fun m!1234281 () Bool)

(assert (=> b!1084634 m!1234281))

(declare-fun m!1234283 () Bool)

(assert (=> b!1084634 m!1234283))

(assert (=> b!1084628 m!1234273))

(declare-fun m!1234285 () Bool)

(assert (=> b!1084628 m!1234285))

(assert (=> b!1084628 m!1234273))

(declare-fun m!1234287 () Bool)

(assert (=> b!1084628 m!1234287))

(assert (=> b!1084628 m!1234273))

(declare-fun m!1234289 () Bool)

(assert (=> b!1084628 m!1234289))

(assert (=> b!1084631 m!1234273))

(declare-fun m!1234291 () Bool)

(assert (=> b!1084631 m!1234291))

(declare-fun m!1234293 () Bool)

(assert (=> b!1084631 m!1234293))

(declare-fun m!1234295 () Bool)

(assert (=> start!92214 m!1234295))

(check-sat (not b!1084623) (not b!1084634) (not b!1084621) (not start!92214) (not b!1084624) (not b!1084628) (not b!1084625) (not b!1084631) (not b!1084633) (not b!1084626) (not b!1084632) (not b!1084630) (not b!1084622) (not b!1084629) (not setNonEmpty!7452) tp_is_empty!5589 (not b!1084627))
(check-sat)
