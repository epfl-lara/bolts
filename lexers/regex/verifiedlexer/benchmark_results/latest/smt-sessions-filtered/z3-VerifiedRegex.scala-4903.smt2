; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251108 () Bool)

(assert start!251108)

(declare-fun b!2591589 () Bool)

(assert (=> b!2591589 true))

(declare-fun bs!472198 () Bool)

(declare-fun b!2591594 () Bool)

(assert (= bs!472198 (and b!2591594 b!2591589)))

(declare-datatypes ((B!2033 0))(
  ( (B!2034 (val!9484 Int)) )
))
(declare-datatypes ((List!29917 0))(
  ( (Nil!29817) (Cons!29817 (h!35237 B!2033) (t!212930 List!29917)) )
))
(declare-fun lt!911600 () List!29917)

(declare-fun l!3230 () List!29917)

(declare-fun lambda!96078 () Int)

(declare-fun lambda!96077 () Int)

(assert (=> bs!472198 (= (= l!3230 lt!911600) (= lambda!96078 lambda!96077))))

(assert (=> b!2591594 true))

(declare-fun b!2591586 () Bool)

(declare-fun e!1634885 () Bool)

(declare-fun e!1634887 () Bool)

(assert (=> b!2591586 (= e!1634885 e!1634887)))

(declare-fun res!1089837 () Bool)

(assert (=> b!2591586 (=> res!1089837 e!1634887)))

(declare-fun lt!911594 () Int)

(declare-fun size!23130 (List!29917) Int)

(assert (=> b!2591586 (= res!1089837 (not (= (size!23130 l!3230) lt!911594)))))

(declare-fun lt!911596 () Int)

(assert (=> b!2591586 (= lt!911594 (+ 1 lt!911596))))

(declare-fun b!2591587 () Bool)

(declare-fun e!1634890 () Bool)

(assert (=> b!2591587 (= e!1634890 (not e!1634885))))

(declare-fun res!1089833 () Bool)

(assert (=> b!2591587 (=> res!1089833 e!1634885)))

(declare-fun lt!911599 () Int)

(assert (=> b!2591587 (= res!1089833 (>= lt!911599 (size!23130 l!3230)))))

(assert (=> b!2591587 (= lt!911599 lt!911596)))

(assert (=> b!2591587 (= lt!911596 (size!23130 (t!212930 l!3230)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!911598 () (InoxSet B!2033))

(declare-fun toList!1768 ((InoxSet B!2033)) List!29917)

(assert (=> b!2591587 (= lt!911599 (size!23130 (toList!1768 lt!911598)))))

(declare-fun content!4158 (List!29917) (InoxSet B!2033))

(assert (=> b!2591587 (= lt!911598 (content!4158 (t!212930 l!3230)))))

(declare-datatypes ((Unit!43749 0))(
  ( (Unit!43750) )
))
(declare-fun lt!911592 () Unit!43749)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!58 (List!29917) Unit!43749)

(assert (=> b!2591587 (= lt!911592 (lemmaNoDuplicateThenContentToListSameSize!58 (t!212930 l!3230)))))

(declare-fun b!2591588 () Bool)

(declare-fun res!1089834 () Bool)

(assert (=> b!2591588 (=> res!1089834 e!1634885)))

(assert (=> b!2591588 (= res!1089834 (select lt!911598 (h!35237 l!3230)))))

(declare-fun e!1634888 () Unit!43749)

(declare-fun Unit!43751 () Unit!43749)

(assert (=> b!2591589 (= e!1634888 Unit!43751)))

(declare-fun lt!911603 () Unit!43749)

(declare-fun subsetContains!46 (List!29917 List!29917) Unit!43749)

(assert (=> b!2591589 (= lt!911603 (subsetContains!46 lt!911600 l!3230))))

(declare-fun lt!911602 () Unit!43749)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!20 (List!29917 List!29917) Unit!43749)

(assert (=> b!2591589 (= lt!911602 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!20 l!3230 lt!911600))))

(declare-fun exists!904 (List!29917 Int) Bool)

(assert (=> b!2591589 (exists!904 l!3230 lambda!96077)))

(declare-fun lt!911595 () B!2033)

(declare-fun getWitness!530 (List!29917 Int) B!2033)

(assert (=> b!2591589 (= lt!911595 (getWitness!530 l!3230 lambda!96077))))

(assert (=> b!2591589 false))

(declare-fun b!2591590 () Bool)

(declare-fun Unit!43752 () Unit!43749)

(assert (=> b!2591590 (= e!1634888 Unit!43752)))

(declare-fun b!2591591 () Bool)

(declare-fun res!1089839 () Bool)

(declare-fun e!1634886 () Bool)

(assert (=> b!2591591 (=> res!1089839 e!1634886)))

(declare-fun lt!911593 () (InoxSet B!2033))

(assert (=> b!2591591 (= res!1089839 (not (= lt!911593 (content!4158 l!3230))))))

(declare-fun res!1089840 () Bool)

(assert (=> start!251108 (=> (not res!1089840) (not e!1634890))))

(declare-fun noDuplicate!365 (List!29917) Bool)

(assert (=> start!251108 (= res!1089840 (noDuplicate!365 l!3230))))

(assert (=> start!251108 e!1634890))

(declare-fun e!1634891 () Bool)

(assert (=> start!251108 e!1634891))

(declare-fun b!2591592 () Bool)

(declare-fun tp_is_empty!13313 () Bool)

(declare-fun tp!822710 () Bool)

(assert (=> b!2591592 (= e!1634891 (and tp_is_empty!13313 tp!822710))))

(declare-fun b!2591593 () Bool)

(declare-fun e!1634889 () Bool)

(assert (=> b!2591593 (= e!1634887 e!1634889)))

(declare-fun res!1089841 () Bool)

(assert (=> b!2591593 (=> res!1089841 e!1634889)))

(assert (=> b!2591593 (= res!1089841 (not (= (content!4158 l!3230) lt!911593)))))

(assert (=> b!2591593 (= lt!911593 ((_ map or) lt!911598 (store ((as const (Array B!2033 Bool)) false) (h!35237 l!3230) true)))))

(assert (=> b!2591594 (= e!1634886 (exists!904 lt!911600 lambda!96078))))

(assert (=> b!2591594 (exists!904 lt!911600 lambda!96078)))

(declare-fun lt!911591 () Unit!43749)

(assert (=> b!2591594 (= lt!911591 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!20 lt!911600 l!3230))))

(declare-fun lt!911590 () Unit!43749)

(assert (=> b!2591594 (= lt!911590 (subsetContains!46 l!3230 lt!911600))))

(declare-fun b!2591595 () Bool)

(declare-fun res!1089836 () Bool)

(assert (=> b!2591595 (=> (not res!1089836) (not e!1634890))))

(get-info :version)

(assert (=> b!2591595 (= res!1089836 ((_ is Cons!29817) l!3230))))

(declare-fun b!2591596 () Bool)

(assert (=> b!2591596 (= e!1634889 e!1634886)))

(declare-fun res!1089835 () Bool)

(assert (=> b!2591596 (=> res!1089835 e!1634886)))

(declare-fun lt!911597 () Int)

(assert (=> b!2591596 (= res!1089835 (<= lt!911597 lt!911594))))

(declare-fun lt!911601 () Unit!43749)

(assert (=> b!2591596 (= lt!911601 e!1634888)))

(declare-fun c!417778 () Bool)

(assert (=> b!2591596 (= c!417778 (< lt!911597 lt!911594))))

(assert (=> b!2591596 (= lt!911597 (size!23130 lt!911600))))

(assert (=> b!2591596 (= lt!911600 (toList!1768 lt!911593))))

(declare-fun b!2591597 () Bool)

(declare-fun res!1089838 () Bool)

(assert (=> b!2591597 (=> res!1089838 e!1634885)))

(declare-fun contains!5367 (List!29917 B!2033) Bool)

(assert (=> b!2591597 (= res!1089838 (contains!5367 (t!212930 l!3230) (h!35237 l!3230)))))

(assert (= (and start!251108 res!1089840) b!2591595))

(assert (= (and b!2591595 res!1089836) b!2591587))

(assert (= (and b!2591587 (not res!1089833)) b!2591588))

(assert (= (and b!2591588 (not res!1089834)) b!2591597))

(assert (= (and b!2591597 (not res!1089838)) b!2591586))

(assert (= (and b!2591586 (not res!1089837)) b!2591593))

(assert (= (and b!2591593 (not res!1089841)) b!2591596))

(assert (= (and b!2591596 c!417778) b!2591589))

(assert (= (and b!2591596 (not c!417778)) b!2591590))

(assert (= (and b!2591596 (not res!1089835)) b!2591591))

(assert (= (and b!2591591 (not res!1089839)) b!2591594))

(assert (= (and start!251108 ((_ is Cons!29817) l!3230)) b!2591592))

(declare-fun m!2927613 () Bool)

(assert (=> b!2591597 m!2927613))

(declare-fun m!2927615 () Bool)

(assert (=> start!251108 m!2927615))

(declare-fun m!2927617 () Bool)

(assert (=> b!2591586 m!2927617))

(assert (=> b!2591587 m!2927617))

(declare-fun m!2927619 () Bool)

(assert (=> b!2591587 m!2927619))

(declare-fun m!2927621 () Bool)

(assert (=> b!2591587 m!2927621))

(declare-fun m!2927623 () Bool)

(assert (=> b!2591587 m!2927623))

(declare-fun m!2927625 () Bool)

(assert (=> b!2591587 m!2927625))

(assert (=> b!2591587 m!2927619))

(declare-fun m!2927627 () Bool)

(assert (=> b!2591587 m!2927627))

(declare-fun m!2927629 () Bool)

(assert (=> b!2591593 m!2927629))

(declare-fun m!2927631 () Bool)

(assert (=> b!2591593 m!2927631))

(declare-fun m!2927633 () Bool)

(assert (=> b!2591596 m!2927633))

(declare-fun m!2927635 () Bool)

(assert (=> b!2591596 m!2927635))

(assert (=> b!2591591 m!2927629))

(declare-fun m!2927637 () Bool)

(assert (=> b!2591588 m!2927637))

(declare-fun m!2927639 () Bool)

(assert (=> b!2591594 m!2927639))

(assert (=> b!2591594 m!2927639))

(declare-fun m!2927641 () Bool)

(assert (=> b!2591594 m!2927641))

(declare-fun m!2927643 () Bool)

(assert (=> b!2591594 m!2927643))

(declare-fun m!2927645 () Bool)

(assert (=> b!2591589 m!2927645))

(declare-fun m!2927647 () Bool)

(assert (=> b!2591589 m!2927647))

(declare-fun m!2927649 () Bool)

(assert (=> b!2591589 m!2927649))

(declare-fun m!2927651 () Bool)

(assert (=> b!2591589 m!2927651))

(check-sat (not b!2591593) (not b!2591597) (not b!2591587) (not b!2591594) (not b!2591586) (not b!2591592) tp_is_empty!13313 (not b!2591589) (not b!2591596) (not start!251108) (not b!2591591))
(check-sat)
