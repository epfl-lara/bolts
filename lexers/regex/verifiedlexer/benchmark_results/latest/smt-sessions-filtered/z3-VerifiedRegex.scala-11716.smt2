; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!661836 () Bool)

(assert start!661836)

(declare-fun b!6855880 () Bool)

(assert (=> b!6855880 true))

(declare-fun b!6855873 () Bool)

(assert (=> b!6855873 true))

(declare-fun setRes!47113 () Bool)

(declare-datatypes ((C!33628 0))(
  ( (C!33629 (val!26516 Int)) )
))
(declare-datatypes ((Regex!16679 0))(
  ( (ElementMatch!16679 (c!1276121 C!33628)) (Concat!25524 (regOne!33870 Regex!16679) (regTwo!33870 Regex!16679)) (EmptyExpr!16679) (Star!16679 (reg!17008 Regex!16679)) (EmptyLang!16679) (Union!16679 (regOne!33871 Regex!16679) (regTwo!33871 Regex!16679)) )
))
(declare-datatypes ((List!66336 0))(
  ( (Nil!66212) (Cons!66212 (h!72660 Regex!16679) (t!380079 List!66336)) )
))
(declare-datatypes ((Context!12126 0))(
  ( (Context!12127 (exprs!6563 List!66336)) )
))
(declare-fun setElem!47113 () Context!12126)

(declare-fun tp!1880033 () Bool)

(declare-fun e!4133660 () Bool)

(declare-fun setNonEmpty!47113 () Bool)

(declare-fun inv!84944 (Context!12126) Bool)

(assert (=> setNonEmpty!47113 (= setRes!47113 (and tp!1880033 (inv!84944 setElem!47113) e!4133660))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!12126))

(declare-fun setRest!47113 () (InoxSet Context!12126))

(assert (=> setNonEmpty!47113 (= z!1189 ((_ map or) (store ((as const (Array Context!12126 Bool)) false) setElem!47113 true) setRest!47113))))

(declare-fun b!6855865 () Bool)

(declare-fun res!2797634 () Bool)

(declare-fun e!4133656 () Bool)

(assert (=> b!6855865 (=> res!2797634 e!4133656)))

(declare-datatypes ((List!66337 0))(
  ( (Nil!66213) (Cons!66213 (h!72661 Context!12126) (t!380080 List!66337)) )
))
(declare-fun zl!343 () List!66337)

(declare-fun isEmpty!38583 (List!66337) Bool)

(assert (=> b!6855865 (= res!2797634 (isEmpty!38583 (t!380080 zl!343)))))

(declare-fun b!6855866 () Bool)

(declare-fun res!2797623 () Bool)

(declare-fun e!4133654 () Bool)

(assert (=> b!6855866 (=> (not res!2797623) (not e!4133654))))

(declare-fun toList!10463 ((InoxSet Context!12126)) List!66337)

(assert (=> b!6855866 (= res!2797623 (= (toList!10463 z!1189) zl!343))))

(declare-fun b!6855867 () Bool)

(declare-fun e!4133651 () Bool)

(declare-fun lt!2456556 () Int)

(declare-fun lt!2456554 () Int)

(assert (=> b!6855867 (= e!4133651 (< lt!2456556 lt!2456554))))

(declare-fun lt!2456545 () Int)

(declare-datatypes ((List!66338 0))(
  ( (Nil!66214) (Cons!66214 (h!72662 C!33628) (t!380081 List!66338)) )
))
(declare-fun s!2326 () List!66338)

(declare-fun size!40711 (List!66338) Int)

(assert (=> b!6855867 (= lt!2456545 (size!40711 s!2326))))

(declare-fun b!6855868 () Bool)

(declare-fun e!4133657 () Bool)

(declare-fun tp!1880032 () Bool)

(declare-fun tp!1880028 () Bool)

(assert (=> b!6855868 (= e!4133657 (and tp!1880032 tp!1880028))))

(declare-fun b!6855869 () Bool)

(declare-fun tp!1880034 () Bool)

(assert (=> b!6855869 (= e!4133660 tp!1880034)))

(declare-fun b!6855870 () Bool)

(declare-fun tp_is_empty!42611 () Bool)

(assert (=> b!6855870 (= e!4133657 tp_is_empty!42611)))

(declare-fun setIsEmpty!47113 () Bool)

(assert (=> setIsEmpty!47113 setRes!47113))

(declare-fun b!6855871 () Bool)

(declare-fun res!2797630 () Bool)

(assert (=> b!6855871 (=> res!2797630 e!4133651)))

(declare-fun lt!2456547 () Context!12126)

(declare-fun lt!2456555 () List!66337)

(assert (=> b!6855871 (= res!2797630 (not (= (toList!10463 (store ((as const (Array Context!12126 Bool)) false) lt!2456547 true)) lt!2456555)))))

(declare-fun b!6855872 () Bool)

(declare-fun res!2797633 () Bool)

(assert (=> b!6855872 (=> res!2797633 e!4133651)))

(declare-fun lt!2456550 () Regex!16679)

(declare-fun unfocusZipper!2421 (List!66337) Regex!16679)

(assert (=> b!6855872 (= res!2797633 (not (= lt!2456550 (unfocusZipper!2421 lt!2456555))))))

(declare-fun e!4133659 () Bool)

(declare-fun e!4133655 () Bool)

(assert (=> b!6855873 (= e!4133659 e!4133655)))

(declare-fun res!2797625 () Bool)

(assert (=> b!6855873 (=> res!2797625 e!4133655)))

(declare-fun lambda!387531 () Int)

(declare-fun exists!2784 (List!66337 Int) Bool)

(assert (=> b!6855873 (= res!2797625 (not (exists!2784 zl!343 lambda!387531)))))

(assert (=> b!6855873 (exists!2784 zl!343 lambda!387531)))

(declare-datatypes ((Unit!160097 0))(
  ( (Unit!160098) )
))
(declare-fun lt!2456551 () Unit!160097)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!34 (List!66337 Regex!16679) Unit!160097)

(assert (=> b!6855873 (= lt!2456551 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!34 zl!343 lt!2456550))))

(declare-fun b!6855874 () Bool)

(declare-fun res!2797627 () Bool)

(assert (=> b!6855874 (=> res!2797627 e!4133659)))

(declare-fun matchR!8862 (Regex!16679 List!66338) Bool)

(assert (=> b!6855874 (= res!2797627 (not (matchR!8862 lt!2456550 s!2326)))))

(declare-fun b!6855875 () Bool)

(declare-fun tp!1880030 () Bool)

(assert (=> b!6855875 (= e!4133657 tp!1880030)))

(declare-fun b!6855876 () Bool)

(declare-fun e!4133658 () Bool)

(declare-fun tp!1880029 () Bool)

(assert (=> b!6855876 (= e!4133658 tp!1880029)))

(declare-fun b!6855877 () Bool)

(assert (=> b!6855877 (= e!4133654 (not e!4133656))))

(declare-fun res!2797632 () Bool)

(assert (=> b!6855877 (=> res!2797632 e!4133656)))

(declare-fun e!4133652 () Bool)

(assert (=> b!6855877 (= res!2797632 e!4133652)))

(declare-fun res!2797626 () Bool)

(assert (=> b!6855877 (=> (not res!2797626) (not e!4133652))))

(get-info :version)

(assert (=> b!6855877 (= res!2797626 ((_ is Cons!66213) zl!343))))

(declare-fun lt!2456553 () Bool)

(declare-fun r!7292 () Regex!16679)

(declare-fun matchRSpec!3780 (Regex!16679 List!66338) Bool)

(assert (=> b!6855877 (= lt!2456553 (matchRSpec!3780 r!7292 s!2326))))

(assert (=> b!6855877 (= lt!2456553 (matchR!8862 r!7292 s!2326))))

(declare-fun lt!2456548 () Unit!160097)

(declare-fun mainMatchTheorem!3780 (Regex!16679 List!66338) Unit!160097)

(assert (=> b!6855877 (= lt!2456548 (mainMatchTheorem!3780 r!7292 s!2326))))

(declare-fun b!6855878 () Bool)

(assert (=> b!6855878 (= e!4133655 e!4133651)))

(declare-fun res!2797631 () Bool)

(assert (=> b!6855878 (=> res!2797631 e!4133651)))

(assert (=> b!6855878 (= res!2797631 (<= lt!2456554 lt!2456556))))

(declare-fun zipperDepthTotal!434 (List!66337) Int)

(assert (=> b!6855878 (= lt!2456556 (zipperDepthTotal!434 lt!2456555))))

(assert (=> b!6855878 (= lt!2456555 (Cons!66213 lt!2456547 Nil!66213))))

(declare-fun lt!2456549 () Int)

(assert (=> b!6855878 (< lt!2456549 lt!2456554)))

(assert (=> b!6855878 (= lt!2456554 (zipperDepthTotal!434 zl!343))))

(declare-fun contextDepthTotal!406 (Context!12126) Int)

(assert (=> b!6855878 (= lt!2456549 (contextDepthTotal!406 lt!2456547))))

(declare-fun lt!2456544 () Unit!160097)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!38 (List!66337 Context!12126) Unit!160097)

(assert (=> b!6855878 (= lt!2456544 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!38 zl!343 lt!2456547))))

(declare-fun getWitness!953 (List!66337 Int) Context!12126)

(assert (=> b!6855878 (= lt!2456547 (getWitness!953 zl!343 lambda!387531))))

(declare-fun res!2797637 () Bool)

(assert (=> start!661836 (=> (not res!2797637) (not e!4133654))))

(declare-fun validRegex!8415 (Regex!16679) Bool)

(assert (=> start!661836 (= res!2797637 (validRegex!8415 r!7292))))

(assert (=> start!661836 e!4133654))

(assert (=> start!661836 e!4133657))

(declare-fun condSetEmpty!47113 () Bool)

(assert (=> start!661836 (= condSetEmpty!47113 (= z!1189 ((as const (Array Context!12126 Bool)) false)))))

(assert (=> start!661836 setRes!47113))

(declare-fun e!4133661 () Bool)

(assert (=> start!661836 e!4133661))

(declare-fun e!4133653 () Bool)

(assert (=> start!661836 e!4133653))

(declare-fun b!6855864 () Bool)

(declare-fun tp!1880035 () Bool)

(assert (=> b!6855864 (= e!4133661 (and (inv!84944 (h!72661 zl!343)) e!4133658 tp!1880035))))

(declare-fun b!6855879 () Bool)

(declare-fun tp!1880026 () Bool)

(declare-fun tp!1880027 () Bool)

(assert (=> b!6855879 (= e!4133657 (and tp!1880026 tp!1880027))))

(declare-fun e!4133662 () Bool)

(assert (=> b!6855880 (= e!4133656 e!4133662)))

(declare-fun res!2797628 () Bool)

(assert (=> b!6855880 (=> res!2797628 e!4133662)))

(assert (=> b!6855880 (= res!2797628 (not lt!2456553))))

(declare-fun lt!2456546 () List!66336)

(declare-fun lambda!387530 () Int)

(declare-fun exists!2785 (List!66336 Int) Bool)

(assert (=> b!6855880 (= lt!2456553 (exists!2785 lt!2456546 lambda!387530))))

(declare-fun lt!2456552 () Unit!160097)

(declare-fun matchRGenUnionSpec!318 (Regex!16679 List!66336 List!66338) Unit!160097)

(assert (=> b!6855880 (= lt!2456552 (matchRGenUnionSpec!318 r!7292 lt!2456546 s!2326))))

(declare-fun unfocusZipperList!2096 (List!66337) List!66336)

(assert (=> b!6855880 (= lt!2456546 (unfocusZipperList!2096 zl!343))))

(declare-fun b!6855881 () Bool)

(declare-fun res!2797635 () Bool)

(assert (=> b!6855881 (=> res!2797635 e!4133662)))

(assert (=> b!6855881 (= res!2797635 (not (exists!2785 lt!2456546 lambda!387530)))))

(declare-fun b!6855882 () Bool)

(assert (=> b!6855882 (= e!4133652 (isEmpty!38583 (t!380080 zl!343)))))

(declare-fun b!6855883 () Bool)

(declare-fun res!2797624 () Bool)

(assert (=> b!6855883 (=> res!2797624 e!4133656)))

(assert (=> b!6855883 (= res!2797624 (or (not ((_ is Cons!66213) zl!343)) ((_ is Nil!66214) s!2326) (not (= zl!343 (Cons!66213 (h!72661 zl!343) (t!380080 zl!343))))))))

(declare-fun b!6855884 () Bool)

(declare-fun res!2797638 () Bool)

(assert (=> b!6855884 (=> (not res!2797638) (not e!4133654))))

(assert (=> b!6855884 (= res!2797638 (= r!7292 (unfocusZipper!2421 zl!343)))))

(declare-fun b!6855885 () Bool)

(declare-fun tp!1880031 () Bool)

(assert (=> b!6855885 (= e!4133653 (and tp_is_empty!42611 tp!1880031))))

(declare-fun b!6855886 () Bool)

(assert (=> b!6855886 (= e!4133662 e!4133659)))

(declare-fun res!2797629 () Bool)

(assert (=> b!6855886 (=> res!2797629 e!4133659)))

(declare-fun contains!20333 (List!66336 Regex!16679) Bool)

(assert (=> b!6855886 (= res!2797629 (not (contains!20333 lt!2456546 lt!2456550)))))

(declare-fun getWitness!954 (List!66336 Int) Regex!16679)

(assert (=> b!6855886 (= lt!2456550 (getWitness!954 lt!2456546 lambda!387530))))

(declare-fun b!6855887 () Bool)

(declare-fun res!2797636 () Bool)

(assert (=> b!6855887 (=> res!2797636 e!4133659)))

(assert (=> b!6855887 (= res!2797636 (not (validRegex!8415 lt!2456550)))))

(assert (= (and start!661836 res!2797637) b!6855866))

(assert (= (and b!6855866 res!2797623) b!6855884))

(assert (= (and b!6855884 res!2797638) b!6855877))

(assert (= (and b!6855877 res!2797626) b!6855882))

(assert (= (and b!6855877 (not res!2797632)) b!6855883))

(assert (= (and b!6855883 (not res!2797624)) b!6855865))

(assert (= (and b!6855865 (not res!2797634)) b!6855880))

(assert (= (and b!6855880 (not res!2797628)) b!6855881))

(assert (= (and b!6855881 (not res!2797635)) b!6855886))

(assert (= (and b!6855886 (not res!2797629)) b!6855887))

(assert (= (and b!6855887 (not res!2797636)) b!6855874))

(assert (= (and b!6855874 (not res!2797627)) b!6855873))

(assert (= (and b!6855873 (not res!2797625)) b!6855878))

(assert (= (and b!6855878 (not res!2797631)) b!6855871))

(assert (= (and b!6855871 (not res!2797630)) b!6855872))

(assert (= (and b!6855872 (not res!2797633)) b!6855867))

(assert (= (and start!661836 ((_ is ElementMatch!16679) r!7292)) b!6855870))

(assert (= (and start!661836 ((_ is Concat!25524) r!7292)) b!6855868))

(assert (= (and start!661836 ((_ is Star!16679) r!7292)) b!6855875))

(assert (= (and start!661836 ((_ is Union!16679) r!7292)) b!6855879))

(assert (= (and start!661836 condSetEmpty!47113) setIsEmpty!47113))

(assert (= (and start!661836 (not condSetEmpty!47113)) setNonEmpty!47113))

(assert (= setNonEmpty!47113 b!6855869))

(assert (= b!6855864 b!6855876))

(assert (= (and start!661836 ((_ is Cons!66213) zl!343)) b!6855864))

(assert (= (and start!661836 ((_ is Cons!66214) s!2326)) b!6855885))

(declare-fun m!7592390 () Bool)

(assert (=> b!6855882 m!7592390))

(declare-fun m!7592392 () Bool)

(assert (=> b!6855877 m!7592392))

(declare-fun m!7592394 () Bool)

(assert (=> b!6855877 m!7592394))

(declare-fun m!7592396 () Bool)

(assert (=> b!6855877 m!7592396))

(assert (=> b!6855865 m!7592390))

(declare-fun m!7592398 () Bool)

(assert (=> b!6855884 m!7592398))

(declare-fun m!7592400 () Bool)

(assert (=> b!6855887 m!7592400))

(declare-fun m!7592402 () Bool)

(assert (=> b!6855886 m!7592402))

(declare-fun m!7592404 () Bool)

(assert (=> b!6855886 m!7592404))

(declare-fun m!7592406 () Bool)

(assert (=> b!6855871 m!7592406))

(assert (=> b!6855871 m!7592406))

(declare-fun m!7592408 () Bool)

(assert (=> b!6855871 m!7592408))

(declare-fun m!7592410 () Bool)

(assert (=> b!6855873 m!7592410))

(assert (=> b!6855873 m!7592410))

(declare-fun m!7592412 () Bool)

(assert (=> b!6855873 m!7592412))

(declare-fun m!7592414 () Bool)

(assert (=> setNonEmpty!47113 m!7592414))

(declare-fun m!7592416 () Bool)

(assert (=> b!6855867 m!7592416))

(declare-fun m!7592418 () Bool)

(assert (=> b!6855872 m!7592418))

(declare-fun m!7592420 () Bool)

(assert (=> b!6855878 m!7592420))

(declare-fun m!7592422 () Bool)

(assert (=> b!6855878 m!7592422))

(declare-fun m!7592424 () Bool)

(assert (=> b!6855878 m!7592424))

(declare-fun m!7592426 () Bool)

(assert (=> b!6855878 m!7592426))

(declare-fun m!7592428 () Bool)

(assert (=> b!6855878 m!7592428))

(declare-fun m!7592430 () Bool)

(assert (=> b!6855874 m!7592430))

(declare-fun m!7592432 () Bool)

(assert (=> start!661836 m!7592432))

(declare-fun m!7592434 () Bool)

(assert (=> b!6855880 m!7592434))

(declare-fun m!7592436 () Bool)

(assert (=> b!6855880 m!7592436))

(declare-fun m!7592438 () Bool)

(assert (=> b!6855880 m!7592438))

(assert (=> b!6855881 m!7592434))

(declare-fun m!7592440 () Bool)

(assert (=> b!6855866 m!7592440))

(declare-fun m!7592442 () Bool)

(assert (=> b!6855864 m!7592442))

(check-sat (not b!6855882) (not b!6855886) (not b!6855865) (not b!6855867) (not b!6855879) (not b!6855885) (not b!6855874) (not b!6855868) (not b!6855864) (not b!6855875) (not setNonEmpty!47113) (not b!6855869) (not b!6855871) (not b!6855866) (not b!6855873) (not b!6855881) tp_is_empty!42611 (not b!6855878) (not b!6855876) (not b!6855877) (not b!6855872) (not b!6855887) (not start!661836) (not b!6855880) (not b!6855884))
(check-sat)
