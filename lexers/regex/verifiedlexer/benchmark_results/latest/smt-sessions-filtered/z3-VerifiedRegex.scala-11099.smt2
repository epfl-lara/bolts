; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573814 () Bool)

(assert start!573814)

(declare-fun b!5489748 () Bool)

(assert (=> b!5489748 true))

(declare-fun b!5489733 () Bool)

(assert (=> b!5489733 true))

(declare-fun bs!1267174 () Bool)

(declare-fun b!5489747 () Bool)

(assert (= bs!1267174 (and b!5489747 b!5489748)))

(declare-fun lambda!293915 () Int)

(declare-fun lambda!293913 () Int)

(assert (=> bs!1267174 (not (= lambda!293915 lambda!293913))))

(declare-fun b!5489728 () Bool)

(declare-fun res!2341467 () Bool)

(declare-fun e!3396837 () Bool)

(assert (=> b!5489728 (=> (not res!2341467) (not e!3396837))))

(declare-datatypes ((C!31160 0))(
  ( (C!31161 (val!25282 Int)) )
))
(declare-datatypes ((Regex!15445 0))(
  ( (ElementMatch!15445 (c!958641 C!31160)) (Concat!24290 (regOne!31402 Regex!15445) (regTwo!31402 Regex!15445)) (EmptyExpr!15445) (Star!15445 (reg!15774 Regex!15445)) (EmptyLang!15445) (Union!15445 (regOne!31403 Regex!15445) (regTwo!31403 Regex!15445)) )
))
(declare-fun r!7292 () Regex!15445)

(declare-datatypes ((List!62634 0))(
  ( (Nil!62510) (Cons!62510 (h!68958 Regex!15445) (t!375865 List!62634)) )
))
(declare-datatypes ((Context!9658 0))(
  ( (Context!9659 (exprs!5329 List!62634)) )
))
(declare-datatypes ((List!62635 0))(
  ( (Nil!62511) (Cons!62511 (h!68959 Context!9658) (t!375866 List!62635)) )
))
(declare-fun zl!343 () List!62635)

(declare-fun unfocusZipper!1187 (List!62635) Regex!15445)

(assert (=> b!5489728 (= res!2341467 (= r!7292 (unfocusZipper!1187 zl!343)))))

(declare-fun b!5489729 () Bool)

(declare-fun res!2341464 () Bool)

(declare-fun e!3396844 () Bool)

(assert (=> b!5489729 (=> res!2341464 e!3396844)))

(declare-datatypes ((List!62636 0))(
  ( (Nil!62512) (Cons!62512 (h!68960 C!31160) (t!375867 List!62636)) )
))
(declare-fun s!2326 () List!62636)

(get-info :version)

(assert (=> b!5489729 (= res!2341464 (or (not ((_ is Cons!62511) zl!343)) ((_ is Nil!62512) s!2326) (not (= zl!343 (Cons!62511 (h!68959 zl!343) (t!375866 zl!343))))))))

(declare-fun b!5489730 () Bool)

(assert (=> b!5489730 (= e!3396837 (not e!3396844))))

(declare-fun res!2341465 () Bool)

(assert (=> b!5489730 (=> res!2341465 e!3396844)))

(declare-fun e!3396840 () Bool)

(assert (=> b!5489730 (= res!2341465 e!3396840)))

(declare-fun res!2341463 () Bool)

(assert (=> b!5489730 (=> (not res!2341463) (not e!3396840))))

(assert (=> b!5489730 (= res!2341463 ((_ is Cons!62511) zl!343))))

(declare-fun lt!2242111 () Bool)

(declare-fun matchRSpec!2548 (Regex!15445 List!62636) Bool)

(assert (=> b!5489730 (= lt!2242111 (matchRSpec!2548 r!7292 s!2326))))

(declare-fun matchR!7630 (Regex!15445 List!62636) Bool)

(assert (=> b!5489730 (= lt!2242111 (matchR!7630 r!7292 s!2326))))

(declare-datatypes ((Unit!155346 0))(
  ( (Unit!155347) )
))
(declare-fun lt!2242121 () Unit!155346)

(declare-fun mainMatchTheorem!2548 (Regex!15445 List!62636) Unit!155346)

(assert (=> b!5489730 (= lt!2242121 (mainMatchTheorem!2548 r!7292 s!2326))))

(declare-fun b!5489731 () Bool)

(declare-fun e!3396842 () Bool)

(declare-fun lt!2242116 () Context!9658)

(declare-fun forall!14642 (List!62634 Int) Bool)

(assert (=> b!5489731 (= e!3396842 (forall!14642 (exprs!5329 lt!2242116) lambda!293915))))

(declare-fun lt!2242125 () List!62634)

(declare-fun lt!2242113 () Regex!15445)

(declare-fun contains!19757 (List!62634 Regex!15445) Bool)

(assert (=> b!5489731 (contains!19757 lt!2242125 lt!2242113)))

(declare-fun lt!2242119 () Unit!155346)

(declare-fun lemmaZipperContainsContextUnfocusListContainsConcat!2 (List!62635 Context!9658) Unit!155346)

(assert (=> b!5489731 (= lt!2242119 (lemmaZipperContainsContextUnfocusListContainsConcat!2 zl!343 lt!2242116))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2242112 () (InoxSet Context!9658))

(declare-fun matchZipper!1629 ((InoxSet Context!9658) List!62636) Bool)

(assert (=> b!5489731 (= (matchR!7630 lt!2242113 s!2326) (matchZipper!1629 lt!2242112 s!2326))))

(declare-fun lt!2242122 () Unit!155346)

(declare-fun lt!2242114 () List!62635)

(declare-fun theoremZipperRegexEquiv!603 ((InoxSet Context!9658) List!62635 Regex!15445 List!62636) Unit!155346)

(assert (=> b!5489731 (= lt!2242122 (theoremZipperRegexEquiv!603 lt!2242112 lt!2242114 lt!2242113 s!2326))))

(declare-fun generalisedConcat!1064 (List!62634) Regex!15445)

(assert (=> b!5489731 (= lt!2242113 (generalisedConcat!1064 (exprs!5329 lt!2242116)))))

(assert (=> b!5489731 (= lt!2242112 (store ((as const (Array Context!9658 Bool)) false) lt!2242116 true))))

(declare-fun b!5489732 () Bool)

(declare-fun res!2341459 () Bool)

(assert (=> b!5489732 (=> (not res!2341459) (not e!3396837))))

(declare-fun z!1189 () (InoxSet Context!9658))

(declare-fun toList!9229 ((InoxSet Context!9658)) List!62635)

(assert (=> b!5489732 (= res!2341459 (= (toList!9229 z!1189) zl!343))))

(declare-fun e!3396839 () Bool)

(declare-fun e!3396838 () Bool)

(assert (=> b!5489733 (= e!3396839 e!3396838)))

(declare-fun res!2341469 () Bool)

(assert (=> b!5489733 (=> res!2341469 e!3396838)))

(declare-fun lambda!293914 () Int)

(declare-fun exists!2114 (List!62635 Int) Bool)

(assert (=> b!5489733 (= res!2341469 (not (exists!2114 zl!343 lambda!293914)))))

(assert (=> b!5489733 (exists!2114 zl!343 lambda!293914)))

(declare-fun lt!2242118 () Unit!155346)

(declare-fun lemmaZipperMatchesExistsMatchingContext!72 (List!62635 List!62636) Unit!155346)

(assert (=> b!5489733 (= lt!2242118 (lemmaZipperMatchesExistsMatchingContext!72 zl!343 s!2326))))

(declare-fun b!5489734 () Bool)

(declare-fun res!2341466 () Bool)

(assert (=> b!5489734 (=> res!2341466 e!3396839)))

(declare-fun exists!2115 (List!62634 Int) Bool)

(assert (=> b!5489734 (= res!2341466 (exists!2115 lt!2242125 lambda!293913))))

(declare-fun setNonEmpty!36303 () Bool)

(declare-fun setElem!36303 () Context!9658)

(declare-fun e!3396846 () Bool)

(declare-fun setRes!36303 () Bool)

(declare-fun tp!1509181 () Bool)

(declare-fun inv!81859 (Context!9658) Bool)

(assert (=> setNonEmpty!36303 (= setRes!36303 (and tp!1509181 (inv!81859 setElem!36303) e!3396846))))

(declare-fun setRest!36303 () (InoxSet Context!9658))

(assert (=> setNonEmpty!36303 (= z!1189 ((_ map or) (store ((as const (Array Context!9658 Bool)) false) setElem!36303 true) setRest!36303))))

(declare-fun b!5489735 () Bool)

(declare-fun e!3396845 () Bool)

(declare-fun tp_is_empty!40143 () Bool)

(assert (=> b!5489735 (= e!3396845 tp_is_empty!40143)))

(declare-fun setIsEmpty!36303 () Bool)

(assert (=> setIsEmpty!36303 setRes!36303))

(declare-fun b!5489736 () Bool)

(declare-fun tp!1509187 () Bool)

(declare-fun tp!1509189 () Bool)

(assert (=> b!5489736 (= e!3396845 (and tp!1509187 tp!1509189))))

(declare-fun b!5489737 () Bool)

(declare-fun isEmpty!34335 (List!62635) Bool)

(assert (=> b!5489737 (= e!3396840 (isEmpty!34335 (t!375866 zl!343)))))

(declare-fun b!5489738 () Bool)

(declare-fun e!3396841 () Bool)

(assert (=> b!5489738 (= e!3396841 e!3396842)))

(declare-fun res!2341458 () Bool)

(assert (=> b!5489738 (=> res!2341458 e!3396842)))

(declare-fun lt!2242115 () Int)

(declare-fun zipperDepthTotal!210 (List!62635) Int)

(assert (=> b!5489738 (= res!2341458 (<= lt!2242115 (zipperDepthTotal!210 lt!2242114)))))

(assert (=> b!5489738 (= lt!2242114 (Cons!62511 lt!2242116 Nil!62511))))

(declare-fun lt!2242123 () Int)

(assert (=> b!5489738 (< lt!2242123 lt!2242115)))

(assert (=> b!5489738 (= lt!2242115 (zipperDepthTotal!210 zl!343))))

(declare-fun contextDepthTotal!190 (Context!9658) Int)

(assert (=> b!5489738 (= lt!2242123 (contextDepthTotal!190 lt!2242116))))

(declare-fun lt!2242124 () Unit!155346)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!18 (List!62635 Context!9658) Unit!155346)

(assert (=> b!5489738 (= lt!2242124 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!18 zl!343 lt!2242116))))

(declare-fun b!5489740 () Bool)

(declare-fun res!2341461 () Bool)

(assert (=> b!5489740 (=> res!2341461 e!3396844)))

(assert (=> b!5489740 (= res!2341461 (isEmpty!34335 (t!375866 zl!343)))))

(declare-fun b!5489741 () Bool)

(declare-fun e!3396836 () Bool)

(declare-fun tp!1509182 () Bool)

(assert (=> b!5489741 (= e!3396836 tp!1509182)))

(declare-fun b!5489742 () Bool)

(declare-fun tp!1509185 () Bool)

(assert (=> b!5489742 (= e!3396846 tp!1509185)))

(declare-fun b!5489743 () Bool)

(declare-fun tp!1509184 () Bool)

(assert (=> b!5489743 (= e!3396845 tp!1509184)))

(declare-fun b!5489744 () Bool)

(declare-fun e!3396843 () Bool)

(declare-fun tp!1509180 () Bool)

(assert (=> b!5489744 (= e!3396843 (and tp_is_empty!40143 tp!1509180))))

(declare-fun b!5489745 () Bool)

(declare-fun res!2341462 () Bool)

(assert (=> b!5489745 (=> res!2341462 e!3396839)))

(assert (=> b!5489745 (= res!2341462 (not (matchZipper!1629 z!1189 s!2326)))))

(declare-fun b!5489746 () Bool)

(declare-fun tp!1509186 () Bool)

(declare-fun tp!1509183 () Bool)

(assert (=> b!5489746 (= e!3396845 (and tp!1509186 tp!1509183))))

(assert (=> b!5489747 (= e!3396838 e!3396841)))

(declare-fun res!2341468 () Bool)

(assert (=> b!5489747 (=> res!2341468 e!3396841)))

(assert (=> b!5489747 (= res!2341468 (not (forall!14642 (exprs!5329 lt!2242116) lambda!293915)))))

(assert (=> b!5489747 (forall!14642 (exprs!5329 lt!2242116) lambda!293915)))

(declare-fun lt!2242117 () Unit!155346)

(declare-fun lemmaContextForallValidExprs!50 (Context!9658 List!62634) Unit!155346)

(assert (=> b!5489747 (= lt!2242117 (lemmaContextForallValidExprs!50 lt!2242116 (exprs!5329 lt!2242116)))))

(declare-fun getWitness!906 (List!62635 Int) Context!9658)

(assert (=> b!5489747 (= lt!2242116 (getWitness!906 zl!343 lambda!293914))))

(assert (=> b!5489748 (= e!3396844 e!3396839)))

(declare-fun res!2341460 () Bool)

(assert (=> b!5489748 (=> res!2341460 e!3396839)))

(assert (=> b!5489748 (= res!2341460 lt!2242111)))

(assert (=> b!5489748 (= lt!2242111 (exists!2115 lt!2242125 lambda!293913))))

(declare-fun lt!2242120 () Unit!155346)

(declare-fun matchRGenUnionSpec!278 (Regex!15445 List!62634 List!62636) Unit!155346)

(assert (=> b!5489748 (= lt!2242120 (matchRGenUnionSpec!278 r!7292 lt!2242125 s!2326))))

(declare-fun unfocusZipperList!877 (List!62635) List!62634)

(assert (=> b!5489748 (= lt!2242125 (unfocusZipperList!877 zl!343))))

(declare-fun res!2341470 () Bool)

(assert (=> start!573814 (=> (not res!2341470) (not e!3396837))))

(declare-fun validRegex!7181 (Regex!15445) Bool)

(assert (=> start!573814 (= res!2341470 (validRegex!7181 r!7292))))

(assert (=> start!573814 e!3396837))

(assert (=> start!573814 e!3396845))

(declare-fun condSetEmpty!36303 () Bool)

(assert (=> start!573814 (= condSetEmpty!36303 (= z!1189 ((as const (Array Context!9658 Bool)) false)))))

(assert (=> start!573814 setRes!36303))

(declare-fun e!3396835 () Bool)

(assert (=> start!573814 e!3396835))

(assert (=> start!573814 e!3396843))

(declare-fun b!5489739 () Bool)

(declare-fun tp!1509188 () Bool)

(assert (=> b!5489739 (= e!3396835 (and (inv!81859 (h!68959 zl!343)) e!3396836 tp!1509188))))

(assert (= (and start!573814 res!2341470) b!5489732))

(assert (= (and b!5489732 res!2341459) b!5489728))

(assert (= (and b!5489728 res!2341467) b!5489730))

(assert (= (and b!5489730 res!2341463) b!5489737))

(assert (= (and b!5489730 (not res!2341465)) b!5489729))

(assert (= (and b!5489729 (not res!2341464)) b!5489740))

(assert (= (and b!5489740 (not res!2341461)) b!5489748))

(assert (= (and b!5489748 (not res!2341460)) b!5489734))

(assert (= (and b!5489734 (not res!2341466)) b!5489745))

(assert (= (and b!5489745 (not res!2341462)) b!5489733))

(assert (= (and b!5489733 (not res!2341469)) b!5489747))

(assert (= (and b!5489747 (not res!2341468)) b!5489738))

(assert (= (and b!5489738 (not res!2341458)) b!5489731))

(assert (= (and start!573814 ((_ is ElementMatch!15445) r!7292)) b!5489735))

(assert (= (and start!573814 ((_ is Concat!24290) r!7292)) b!5489746))

(assert (= (and start!573814 ((_ is Star!15445) r!7292)) b!5489743))

(assert (= (and start!573814 ((_ is Union!15445) r!7292)) b!5489736))

(assert (= (and start!573814 condSetEmpty!36303) setIsEmpty!36303))

(assert (= (and start!573814 (not condSetEmpty!36303)) setNonEmpty!36303))

(assert (= setNonEmpty!36303 b!5489742))

(assert (= b!5489739 b!5489741))

(assert (= (and start!573814 ((_ is Cons!62511) zl!343)) b!5489739))

(assert (= (and start!573814 ((_ is Cons!62512) s!2326)) b!5489744))

(declare-fun m!6503106 () Bool)

(assert (=> b!5489731 m!6503106))

(declare-fun m!6503108 () Bool)

(assert (=> b!5489731 m!6503108))

(declare-fun m!6503110 () Bool)

(assert (=> b!5489731 m!6503110))

(declare-fun m!6503112 () Bool)

(assert (=> b!5489731 m!6503112))

(declare-fun m!6503114 () Bool)

(assert (=> b!5489731 m!6503114))

(declare-fun m!6503116 () Bool)

(assert (=> b!5489731 m!6503116))

(declare-fun m!6503118 () Bool)

(assert (=> b!5489731 m!6503118))

(declare-fun m!6503120 () Bool)

(assert (=> b!5489731 m!6503120))

(assert (=> b!5489747 m!6503106))

(assert (=> b!5489747 m!6503106))

(declare-fun m!6503122 () Bool)

(assert (=> b!5489747 m!6503122))

(declare-fun m!6503124 () Bool)

(assert (=> b!5489747 m!6503124))

(declare-fun m!6503126 () Bool)

(assert (=> b!5489733 m!6503126))

(assert (=> b!5489733 m!6503126))

(declare-fun m!6503128 () Bool)

(assert (=> b!5489733 m!6503128))

(declare-fun m!6503130 () Bool)

(assert (=> b!5489730 m!6503130))

(declare-fun m!6503132 () Bool)

(assert (=> b!5489730 m!6503132))

(declare-fun m!6503134 () Bool)

(assert (=> b!5489730 m!6503134))

(declare-fun m!6503136 () Bool)

(assert (=> b!5489737 m!6503136))

(assert (=> b!5489740 m!6503136))

(declare-fun m!6503138 () Bool)

(assert (=> b!5489732 m!6503138))

(declare-fun m!6503140 () Bool)

(assert (=> setNonEmpty!36303 m!6503140))

(declare-fun m!6503142 () Bool)

(assert (=> b!5489734 m!6503142))

(declare-fun m!6503144 () Bool)

(assert (=> start!573814 m!6503144))

(declare-fun m!6503146 () Bool)

(assert (=> b!5489745 m!6503146))

(declare-fun m!6503148 () Bool)

(assert (=> b!5489728 m!6503148))

(declare-fun m!6503150 () Bool)

(assert (=> b!5489739 m!6503150))

(declare-fun m!6503152 () Bool)

(assert (=> b!5489738 m!6503152))

(declare-fun m!6503154 () Bool)

(assert (=> b!5489738 m!6503154))

(declare-fun m!6503156 () Bool)

(assert (=> b!5489738 m!6503156))

(declare-fun m!6503158 () Bool)

(assert (=> b!5489738 m!6503158))

(assert (=> b!5489748 m!6503142))

(declare-fun m!6503160 () Bool)

(assert (=> b!5489748 m!6503160))

(declare-fun m!6503162 () Bool)

(assert (=> b!5489748 m!6503162))

(check-sat (not b!5489744) (not b!5489739) (not b!5489747) (not b!5489748) tp_is_empty!40143 (not b!5489742) (not b!5489746) (not b!5489743) (not b!5489733) (not b!5489731) (not start!573814) (not b!5489745) (not b!5489728) (not b!5489730) (not setNonEmpty!36303) (not b!5489736) (not b!5489738) (not b!5489740) (not b!5489737) (not b!5489732) (not b!5489734) (not b!5489741))
(check-sat)
