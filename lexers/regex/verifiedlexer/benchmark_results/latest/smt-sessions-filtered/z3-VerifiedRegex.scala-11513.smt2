; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!630502 () Bool)

(assert start!630502)

(declare-fun b!6364724 () Bool)

(assert (=> b!6364724 true))

(assert (=> b!6364724 true))

(declare-fun lambda!350626 () Int)

(declare-fun lambda!350625 () Int)

(assert (=> b!6364724 (not (= lambda!350626 lambda!350625))))

(assert (=> b!6364724 true))

(assert (=> b!6364724 true))

(declare-fun b!6364743 () Bool)

(assert (=> b!6364743 true))

(declare-fun b!6364719 () Bool)

(declare-fun e!3864580 () Bool)

(declare-fun tp_is_empty!41799 () Bool)

(declare-fun tp!1772370 () Bool)

(assert (=> b!6364719 (= e!3864580 (and tp_is_empty!41799 tp!1772370))))

(declare-fun b!6364720 () Bool)

(declare-datatypes ((Unit!158423 0))(
  ( (Unit!158424) )
))
(declare-fun e!3864571 () Unit!158423)

(declare-fun Unit!158425 () Unit!158423)

(assert (=> b!6364720 (= e!3864571 Unit!158425)))

(declare-datatypes ((C!32816 0))(
  ( (C!32817 (val!26110 Int)) )
))
(declare-datatypes ((List!65118 0))(
  ( (Nil!64994) (Cons!64994 (h!71442 C!32816) (t!378714 List!65118)) )
))
(declare-fun s!2326 () List!65118)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!16273 0))(
  ( (ElementMatch!16273 (c!1158752 C!32816)) (Concat!25118 (regOne!33058 Regex!16273) (regTwo!33058 Regex!16273)) (EmptyExpr!16273) (Star!16273 (reg!16602 Regex!16273)) (EmptyLang!16273) (Union!16273 (regOne!33059 Regex!16273) (regTwo!33059 Regex!16273)) )
))
(declare-datatypes ((List!65119 0))(
  ( (Nil!64995) (Cons!64995 (h!71443 Regex!16273) (t!378715 List!65119)) )
))
(declare-datatypes ((Context!11314 0))(
  ( (Context!11315 (exprs!6157 List!65119)) )
))
(declare-fun lt!2367236 () (InoxSet Context!11314))

(declare-fun lt!2367240 () (InoxSet Context!11314))

(declare-fun lt!2367234 () Unit!158423)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1104 ((InoxSet Context!11314) (InoxSet Context!11314) List!65118) Unit!158423)

(assert (=> b!6364720 (= lt!2367234 (lemmaZipperConcatMatchesSameAsBothZippers!1104 lt!2367240 lt!2367236 (t!378714 s!2326)))))

(declare-fun res!2618638 () Bool)

(declare-fun matchZipper!2285 ((InoxSet Context!11314) List!65118) Bool)

(assert (=> b!6364720 (= res!2618638 (matchZipper!2285 lt!2367240 (t!378714 s!2326)))))

(declare-fun e!3864575 () Bool)

(assert (=> b!6364720 (=> res!2618638 e!3864575)))

(assert (=> b!6364720 (= (matchZipper!2285 ((_ map or) lt!2367240 lt!2367236) (t!378714 s!2326)) e!3864575)))

(declare-fun b!6364721 () Bool)

(declare-fun e!3864574 () Bool)

(declare-fun tp!1772366 () Bool)

(assert (=> b!6364721 (= e!3864574 tp!1772366)))

(declare-fun b!6364722 () Bool)

(declare-fun res!2618645 () Bool)

(declare-fun e!3864576 () Bool)

(assert (=> b!6364722 (=> res!2618645 e!3864576)))

(declare-fun r!7292 () Regex!16273)

(get-info :version)

(assert (=> b!6364722 (= res!2618645 (or ((_ is EmptyExpr!16273) r!7292) ((_ is EmptyLang!16273) r!7292) ((_ is ElementMatch!16273) r!7292) ((_ is Union!16273) r!7292) (not ((_ is Concat!25118) r!7292))))))

(declare-fun b!6364723 () Bool)

(declare-fun res!2618644 () Bool)

(assert (=> b!6364723 (=> res!2618644 e!3864576)))

(declare-datatypes ((List!65120 0))(
  ( (Nil!64996) (Cons!64996 (h!71444 Context!11314) (t!378716 List!65120)) )
))
(declare-fun zl!343 () List!65120)

(declare-fun generalisedUnion!2117 (List!65119) Regex!16273)

(declare-fun unfocusZipperList!1694 (List!65120) List!65119)

(assert (=> b!6364723 (= res!2618644 (not (= r!7292 (generalisedUnion!2117 (unfocusZipperList!1694 zl!343)))))))

(declare-fun e!3864570 () Bool)

(declare-fun setRes!43368 () Bool)

(declare-fun tp!1772368 () Bool)

(declare-fun setNonEmpty!43368 () Bool)

(declare-fun setElem!43368 () Context!11314)

(declare-fun inv!83929 (Context!11314) Bool)

(assert (=> setNonEmpty!43368 (= setRes!43368 (and tp!1772368 (inv!83929 setElem!43368) e!3864570))))

(declare-fun z!1189 () (InoxSet Context!11314))

(declare-fun setRest!43368 () (InoxSet Context!11314))

(assert (=> setNonEmpty!43368 (= z!1189 ((_ map or) (store ((as const (Array Context!11314 Bool)) false) setElem!43368 true) setRest!43368))))

(declare-fun e!3864568 () Bool)

(assert (=> b!6364724 (= e!3864576 e!3864568)))

(declare-fun res!2618642 () Bool)

(assert (=> b!6364724 (=> res!2618642 e!3864568)))

(declare-fun lt!2367235 () Bool)

(declare-fun lt!2367247 () Bool)

(assert (=> b!6364724 (= res!2618642 (or (not (= lt!2367247 lt!2367235)) ((_ is Nil!64994) s!2326)))))

(declare-fun Exists!3343 (Int) Bool)

(assert (=> b!6364724 (= (Exists!3343 lambda!350625) (Exists!3343 lambda!350626))))

(declare-fun lt!2367246 () Unit!158423)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1880 (Regex!16273 Regex!16273 List!65118) Unit!158423)

(assert (=> b!6364724 (= lt!2367246 (lemmaExistCutMatchRandMatchRSpecEquivalent!1880 (regOne!33058 r!7292) (regTwo!33058 r!7292) s!2326))))

(assert (=> b!6364724 (= lt!2367235 (Exists!3343 lambda!350625))))

(declare-datatypes ((tuple2!66504 0))(
  ( (tuple2!66505 (_1!36555 List!65118) (_2!36555 List!65118)) )
))
(declare-datatypes ((Option!16164 0))(
  ( (None!16163) (Some!16163 (v!52332 tuple2!66504)) )
))
(declare-fun isDefined!12867 (Option!16164) Bool)

(declare-fun findConcatSeparation!2578 (Regex!16273 Regex!16273 List!65118 List!65118 List!65118) Option!16164)

(assert (=> b!6364724 (= lt!2367235 (isDefined!12867 (findConcatSeparation!2578 (regOne!33058 r!7292) (regTwo!33058 r!7292) Nil!64994 s!2326 s!2326)))))

(declare-fun lt!2367249 () Unit!158423)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2342 (Regex!16273 Regex!16273 List!65118) Unit!158423)

(assert (=> b!6364724 (= lt!2367249 (lemmaFindConcatSeparationEquivalentToExists!2342 (regOne!33058 r!7292) (regTwo!33058 r!7292) s!2326))))

(declare-fun b!6364725 () Bool)

(declare-fun e!3864572 () Bool)

(declare-fun lt!2367244 () Context!11314)

(assert (=> b!6364725 (= e!3864572 (inv!83929 lt!2367244))))

(declare-fun lambda!350627 () Int)

(declare-fun lt!2367248 () (InoxSet Context!11314))

(declare-fun lt!2367239 () Context!11314)

(declare-fun flatMap!1778 ((InoxSet Context!11314) Int) (InoxSet Context!11314))

(declare-fun derivationStepZipperUp!1447 (Context!11314 C!32816) (InoxSet Context!11314))

(assert (=> b!6364725 (= (flatMap!1778 lt!2367248 lambda!350627) (derivationStepZipperUp!1447 lt!2367239 (h!71442 s!2326)))))

(declare-fun lt!2367243 () Unit!158423)

(declare-fun lemmaFlatMapOnSingletonSet!1304 ((InoxSet Context!11314) Context!11314 Int) Unit!158423)

(assert (=> b!6364725 (= lt!2367243 (lemmaFlatMapOnSingletonSet!1304 lt!2367248 lt!2367239 lambda!350627))))

(declare-fun lt!2367237 () (InoxSet Context!11314))

(assert (=> b!6364725 (= lt!2367237 (derivationStepZipperUp!1447 lt!2367239 (h!71442 s!2326)))))

(assert (=> b!6364725 (= lt!2367248 (store ((as const (Array Context!11314 Bool)) false) lt!2367239 true))))

(declare-fun lt!2367241 () List!65119)

(assert (=> b!6364725 (= lt!2367239 (Context!11315 (Cons!64995 (reg!16602 (regOne!33058 r!7292)) lt!2367241)))))

(declare-fun b!6364726 () Bool)

(declare-fun e!3864573 () Bool)

(declare-fun tp!1772367 () Bool)

(declare-fun tp!1772372 () Bool)

(assert (=> b!6364726 (= e!3864573 (and tp!1772367 tp!1772372))))

(declare-fun b!6364727 () Bool)

(assert (=> b!6364727 (= e!3864575 (matchZipper!2285 lt!2367236 (t!378714 s!2326)))))

(declare-fun b!6364729 () Bool)

(declare-fun tp!1772369 () Bool)

(assert (=> b!6364729 (= e!3864570 tp!1772369)))

(declare-fun b!6364730 () Bool)

(declare-fun res!2618637 () Bool)

(declare-fun e!3864577 () Bool)

(assert (=> b!6364730 (=> res!2618637 e!3864577)))

(assert (=> b!6364730 (= res!2618637 (or ((_ is Concat!25118) (regOne!33058 r!7292)) (not ((_ is Star!16273) (regOne!33058 r!7292)))))))

(declare-fun b!6364731 () Bool)

(assert (=> b!6364731 (= e!3864573 tp_is_empty!41799)))

(declare-fun b!6364732 () Bool)

(declare-fun tp!1772374 () Bool)

(declare-fun tp!1772371 () Bool)

(assert (=> b!6364732 (= e!3864573 (and tp!1772374 tp!1772371))))

(declare-fun setIsEmpty!43368 () Bool)

(assert (=> setIsEmpty!43368 setRes!43368))

(declare-fun b!6364733 () Bool)

(declare-fun Unit!158426 () Unit!158423)

(assert (=> b!6364733 (= e!3864571 Unit!158426)))

(declare-fun b!6364734 () Bool)

(declare-fun res!2618635 () Bool)

(assert (=> b!6364734 (=> res!2618635 e!3864576)))

(declare-fun isEmpty!37101 (List!65120) Bool)

(assert (=> b!6364734 (= res!2618635 (not (isEmpty!37101 (t!378716 zl!343))))))

(declare-fun b!6364735 () Bool)

(declare-fun res!2618648 () Bool)

(assert (=> b!6364735 (=> res!2618648 e!3864576)))

(assert (=> b!6364735 (= res!2618648 (not ((_ is Cons!64995) (exprs!6157 (h!71444 zl!343)))))))

(declare-fun b!6364736 () Bool)

(assert (=> b!6364736 (= e!3864577 e!3864572)))

(declare-fun res!2618649 () Bool)

(assert (=> b!6364736 (=> res!2618649 e!3864572)))

(declare-fun derivationStepZipperDown!1521 (Regex!16273 Context!11314 C!32816) (InoxSet Context!11314))

(assert (=> b!6364736 (= res!2618649 (not (= lt!2367240 (derivationStepZipperDown!1521 (reg!16602 (regOne!33058 r!7292)) lt!2367244 (h!71442 s!2326)))))))

(assert (=> b!6364736 (= lt!2367244 (Context!11315 lt!2367241))))

(assert (=> b!6364736 (= lt!2367241 (Cons!64995 (Star!16273 (reg!16602 (regOne!33058 r!7292))) (t!378715 (exprs!6157 (h!71444 zl!343)))))))

(declare-fun b!6364737 () Bool)

(declare-fun res!2618634 () Bool)

(assert (=> b!6364737 (=> res!2618634 e!3864577)))

(declare-fun e!3864569 () Bool)

(assert (=> b!6364737 (= res!2618634 e!3864569)))

(declare-fun res!2618640 () Bool)

(assert (=> b!6364737 (=> (not res!2618640) (not e!3864569))))

(assert (=> b!6364737 (= res!2618640 ((_ is Concat!25118) (regOne!33058 r!7292)))))

(declare-fun tp!1772373 () Bool)

(declare-fun e!3864578 () Bool)

(declare-fun b!6364738 () Bool)

(assert (=> b!6364738 (= e!3864578 (and (inv!83929 (h!71444 zl!343)) e!3864574 tp!1772373))))

(declare-fun b!6364739 () Bool)

(declare-fun nullable!6266 (Regex!16273) Bool)

(assert (=> b!6364739 (= e!3864569 (nullable!6266 (regOne!33058 (regOne!33058 r!7292))))))

(declare-fun b!6364740 () Bool)

(declare-fun res!2618647 () Bool)

(assert (=> b!6364740 (=> res!2618647 e!3864568)))

(declare-fun isEmpty!37102 (List!65119) Bool)

(assert (=> b!6364740 (= res!2618647 (isEmpty!37102 (t!378715 (exprs!6157 (h!71444 zl!343)))))))

(declare-fun b!6364741 () Bool)

(declare-fun res!2618646 () Bool)

(assert (=> b!6364741 (=> res!2618646 e!3864576)))

(declare-fun generalisedConcat!1870 (List!65119) Regex!16273)

(assert (=> b!6364741 (= res!2618646 (not (= r!7292 (generalisedConcat!1870 (exprs!6157 (h!71444 zl!343))))))))

(declare-fun b!6364742 () Bool)

(declare-fun e!3864579 () Bool)

(assert (=> b!6364742 (= e!3864579 (not e!3864576))))

(declare-fun res!2618641 () Bool)

(assert (=> b!6364742 (=> res!2618641 e!3864576)))

(assert (=> b!6364742 (= res!2618641 (not ((_ is Cons!64996) zl!343)))))

(declare-fun matchRSpec!3374 (Regex!16273 List!65118) Bool)

(assert (=> b!6364742 (= lt!2367247 (matchRSpec!3374 r!7292 s!2326))))

(declare-fun matchR!8456 (Regex!16273 List!65118) Bool)

(assert (=> b!6364742 (= lt!2367247 (matchR!8456 r!7292 s!2326))))

(declare-fun lt!2367238 () Unit!158423)

(declare-fun mainMatchTheorem!3374 (Regex!16273 List!65118) Unit!158423)

(assert (=> b!6364742 (= lt!2367238 (mainMatchTheorem!3374 r!7292 s!2326))))

(assert (=> b!6364743 (= e!3864568 e!3864577)))

(declare-fun res!2618650 () Bool)

(assert (=> b!6364743 (=> res!2618650 e!3864577)))

(assert (=> b!6364743 (= res!2618650 (or (and ((_ is ElementMatch!16273) (regOne!33058 r!7292)) (= (c!1158752 (regOne!33058 r!7292)) (h!71442 s!2326))) ((_ is Union!16273) (regOne!33058 r!7292))))))

(declare-fun lt!2367250 () Unit!158423)

(assert (=> b!6364743 (= lt!2367250 e!3864571)))

(declare-fun c!1158751 () Bool)

(assert (=> b!6364743 (= c!1158751 (nullable!6266 (h!71443 (exprs!6157 (h!71444 zl!343)))))))

(assert (=> b!6364743 (= (flatMap!1778 z!1189 lambda!350627) (derivationStepZipperUp!1447 (h!71444 zl!343) (h!71442 s!2326)))))

(declare-fun lt!2367245 () Unit!158423)

(assert (=> b!6364743 (= lt!2367245 (lemmaFlatMapOnSingletonSet!1304 z!1189 (h!71444 zl!343) lambda!350627))))

(declare-fun lt!2367233 () Context!11314)

(assert (=> b!6364743 (= lt!2367236 (derivationStepZipperUp!1447 lt!2367233 (h!71442 s!2326)))))

(assert (=> b!6364743 (= lt!2367240 (derivationStepZipperDown!1521 (h!71443 (exprs!6157 (h!71444 zl!343))) lt!2367233 (h!71442 s!2326)))))

(assert (=> b!6364743 (= lt!2367233 (Context!11315 (t!378715 (exprs!6157 (h!71444 zl!343)))))))

(declare-fun lt!2367242 () (InoxSet Context!11314))

(assert (=> b!6364743 (= lt!2367242 (derivationStepZipperUp!1447 (Context!11315 (Cons!64995 (h!71443 (exprs!6157 (h!71444 zl!343))) (t!378715 (exprs!6157 (h!71444 zl!343))))) (h!71442 s!2326)))))

(declare-fun b!6364744 () Bool)

(declare-fun res!2618643 () Bool)

(assert (=> b!6364744 (=> (not res!2618643) (not e!3864579))))

(declare-fun toList!10057 ((InoxSet Context!11314)) List!65120)

(assert (=> b!6364744 (= res!2618643 (= (toList!10057 z!1189) zl!343))))

(declare-fun b!6364745 () Bool)

(declare-fun tp!1772365 () Bool)

(assert (=> b!6364745 (= e!3864573 tp!1772365)))

(declare-fun res!2618636 () Bool)

(assert (=> start!630502 (=> (not res!2618636) (not e!3864579))))

(declare-fun validRegex!8009 (Regex!16273) Bool)

(assert (=> start!630502 (= res!2618636 (validRegex!8009 r!7292))))

(assert (=> start!630502 e!3864579))

(assert (=> start!630502 e!3864573))

(declare-fun condSetEmpty!43368 () Bool)

(assert (=> start!630502 (= condSetEmpty!43368 (= z!1189 ((as const (Array Context!11314 Bool)) false)))))

(assert (=> start!630502 setRes!43368))

(assert (=> start!630502 e!3864578))

(assert (=> start!630502 e!3864580))

(declare-fun b!6364728 () Bool)

(declare-fun res!2618639 () Bool)

(assert (=> b!6364728 (=> (not res!2618639) (not e!3864579))))

(declare-fun unfocusZipper!2015 (List!65120) Regex!16273)

(assert (=> b!6364728 (= res!2618639 (= r!7292 (unfocusZipper!2015 zl!343)))))

(assert (= (and start!630502 res!2618636) b!6364744))

(assert (= (and b!6364744 res!2618643) b!6364728))

(assert (= (and b!6364728 res!2618639) b!6364742))

(assert (= (and b!6364742 (not res!2618641)) b!6364734))

(assert (= (and b!6364734 (not res!2618635)) b!6364741))

(assert (= (and b!6364741 (not res!2618646)) b!6364735))

(assert (= (and b!6364735 (not res!2618648)) b!6364723))

(assert (= (and b!6364723 (not res!2618644)) b!6364722))

(assert (= (and b!6364722 (not res!2618645)) b!6364724))

(assert (= (and b!6364724 (not res!2618642)) b!6364740))

(assert (= (and b!6364740 (not res!2618647)) b!6364743))

(assert (= (and b!6364743 c!1158751) b!6364720))

(assert (= (and b!6364743 (not c!1158751)) b!6364733))

(assert (= (and b!6364720 (not res!2618638)) b!6364727))

(assert (= (and b!6364743 (not res!2618650)) b!6364737))

(assert (= (and b!6364737 res!2618640) b!6364739))

(assert (= (and b!6364737 (not res!2618634)) b!6364730))

(assert (= (and b!6364730 (not res!2618637)) b!6364736))

(assert (= (and b!6364736 (not res!2618649)) b!6364725))

(assert (= (and start!630502 ((_ is ElementMatch!16273) r!7292)) b!6364731))

(assert (= (and start!630502 ((_ is Concat!25118) r!7292)) b!6364732))

(assert (= (and start!630502 ((_ is Star!16273) r!7292)) b!6364745))

(assert (= (and start!630502 ((_ is Union!16273) r!7292)) b!6364726))

(assert (= (and start!630502 condSetEmpty!43368) setIsEmpty!43368))

(assert (= (and start!630502 (not condSetEmpty!43368)) setNonEmpty!43368))

(assert (= setNonEmpty!43368 b!6364729))

(assert (= b!6364738 b!6364721))

(assert (= (and start!630502 ((_ is Cons!64996) zl!343)) b!6364738))

(assert (= (and start!630502 ((_ is Cons!64994) s!2326)) b!6364719))

(declare-fun m!7169114 () Bool)

(assert (=> setNonEmpty!43368 m!7169114))

(declare-fun m!7169116 () Bool)

(assert (=> b!6364734 m!7169116))

(declare-fun m!7169118 () Bool)

(assert (=> b!6364744 m!7169118))

(declare-fun m!7169120 () Bool)

(assert (=> b!6364736 m!7169120))

(declare-fun m!7169122 () Bool)

(assert (=> b!6364720 m!7169122))

(declare-fun m!7169124 () Bool)

(assert (=> b!6364720 m!7169124))

(declare-fun m!7169126 () Bool)

(assert (=> b!6364720 m!7169126))

(declare-fun m!7169128 () Bool)

(assert (=> b!6364724 m!7169128))

(declare-fun m!7169130 () Bool)

(assert (=> b!6364724 m!7169130))

(declare-fun m!7169132 () Bool)

(assert (=> b!6364724 m!7169132))

(declare-fun m!7169134 () Bool)

(assert (=> b!6364724 m!7169134))

(assert (=> b!6364724 m!7169128))

(declare-fun m!7169136 () Bool)

(assert (=> b!6364724 m!7169136))

(declare-fun m!7169138 () Bool)

(assert (=> b!6364724 m!7169138))

(assert (=> b!6364724 m!7169138))

(declare-fun m!7169140 () Bool)

(assert (=> b!6364739 m!7169140))

(declare-fun m!7169142 () Bool)

(assert (=> start!630502 m!7169142))

(declare-fun m!7169144 () Bool)

(assert (=> b!6364742 m!7169144))

(declare-fun m!7169146 () Bool)

(assert (=> b!6364742 m!7169146))

(declare-fun m!7169148 () Bool)

(assert (=> b!6364742 m!7169148))

(declare-fun m!7169150 () Bool)

(assert (=> b!6364738 m!7169150))

(declare-fun m!7169152 () Bool)

(assert (=> b!6364728 m!7169152))

(declare-fun m!7169154 () Bool)

(assert (=> b!6364723 m!7169154))

(assert (=> b!6364723 m!7169154))

(declare-fun m!7169156 () Bool)

(assert (=> b!6364723 m!7169156))

(declare-fun m!7169158 () Bool)

(assert (=> b!6364727 m!7169158))

(declare-fun m!7169160 () Bool)

(assert (=> b!6364725 m!7169160))

(declare-fun m!7169162 () Bool)

(assert (=> b!6364725 m!7169162))

(declare-fun m!7169164 () Bool)

(assert (=> b!6364725 m!7169164))

(declare-fun m!7169166 () Bool)

(assert (=> b!6364725 m!7169166))

(declare-fun m!7169168 () Bool)

(assert (=> b!6364725 m!7169168))

(declare-fun m!7169170 () Bool)

(assert (=> b!6364743 m!7169170))

(declare-fun m!7169172 () Bool)

(assert (=> b!6364743 m!7169172))

(declare-fun m!7169174 () Bool)

(assert (=> b!6364743 m!7169174))

(declare-fun m!7169176 () Bool)

(assert (=> b!6364743 m!7169176))

(declare-fun m!7169178 () Bool)

(assert (=> b!6364743 m!7169178))

(declare-fun m!7169180 () Bool)

(assert (=> b!6364743 m!7169180))

(declare-fun m!7169182 () Bool)

(assert (=> b!6364743 m!7169182))

(declare-fun m!7169184 () Bool)

(assert (=> b!6364740 m!7169184))

(declare-fun m!7169186 () Bool)

(assert (=> b!6364741 m!7169186))

(check-sat (not b!6364723) (not b!6364741) (not b!6364724) (not b!6364743) (not b!6364736) (not b!6364738) (not b!6364728) (not b!6364729) (not b!6364726) (not b!6364719) (not b!6364720) (not b!6364745) (not b!6364739) (not setNonEmpty!43368) tp_is_empty!41799 (not b!6364742) (not b!6364727) (not start!630502) (not b!6364721) (not b!6364744) (not b!6364734) (not b!6364725) (not b!6364732) (not b!6364740))
(check-sat)
(get-model)

(declare-fun b!6364790 () Bool)

(declare-fun e!3864606 () Option!16164)

(assert (=> b!6364790 (= e!3864606 (Some!16163 (tuple2!66505 Nil!64994 s!2326)))))

(declare-fun d!1996538 () Bool)

(declare-fun e!3864603 () Bool)

(assert (=> d!1996538 e!3864603))

(declare-fun res!2618667 () Bool)

(assert (=> d!1996538 (=> res!2618667 e!3864603)))

(declare-fun e!3864607 () Bool)

(assert (=> d!1996538 (= res!2618667 e!3864607)))

(declare-fun res!2618665 () Bool)

(assert (=> d!1996538 (=> (not res!2618665) (not e!3864607))))

(declare-fun lt!2367263 () Option!16164)

(assert (=> d!1996538 (= res!2618665 (isDefined!12867 lt!2367263))))

(assert (=> d!1996538 (= lt!2367263 e!3864606)))

(declare-fun c!1158765 () Bool)

(declare-fun e!3864604 () Bool)

(assert (=> d!1996538 (= c!1158765 e!3864604)))

(declare-fun res!2618666 () Bool)

(assert (=> d!1996538 (=> (not res!2618666) (not e!3864604))))

(assert (=> d!1996538 (= res!2618666 (matchR!8456 (regOne!33058 r!7292) Nil!64994))))

(assert (=> d!1996538 (validRegex!8009 (regOne!33058 r!7292))))

(assert (=> d!1996538 (= (findConcatSeparation!2578 (regOne!33058 r!7292) (regTwo!33058 r!7292) Nil!64994 s!2326 s!2326) lt!2367263)))

(declare-fun b!6364791 () Bool)

(declare-fun res!2618668 () Bool)

(assert (=> b!6364791 (=> (not res!2618668) (not e!3864607))))

(declare-fun get!22493 (Option!16164) tuple2!66504)

(assert (=> b!6364791 (= res!2618668 (matchR!8456 (regTwo!33058 r!7292) (_2!36555 (get!22493 lt!2367263))))))

(declare-fun b!6364792 () Bool)

(declare-fun res!2618669 () Bool)

(assert (=> b!6364792 (=> (not res!2618669) (not e!3864607))))

(assert (=> b!6364792 (= res!2618669 (matchR!8456 (regOne!33058 r!7292) (_1!36555 (get!22493 lt!2367263))))))

(declare-fun b!6364793 () Bool)

(declare-fun lt!2367262 () Unit!158423)

(declare-fun lt!2367264 () Unit!158423)

(assert (=> b!6364793 (= lt!2367262 lt!2367264)))

(declare-fun ++!14341 (List!65118 List!65118) List!65118)

(assert (=> b!6364793 (= (++!14341 (++!14341 Nil!64994 (Cons!64994 (h!71442 s!2326) Nil!64994)) (t!378714 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2436 (List!65118 C!32816 List!65118 List!65118) Unit!158423)

(assert (=> b!6364793 (= lt!2367264 (lemmaMoveElementToOtherListKeepsConcatEq!2436 Nil!64994 (h!71442 s!2326) (t!378714 s!2326) s!2326))))

(declare-fun e!3864605 () Option!16164)

(assert (=> b!6364793 (= e!3864605 (findConcatSeparation!2578 (regOne!33058 r!7292) (regTwo!33058 r!7292) (++!14341 Nil!64994 (Cons!64994 (h!71442 s!2326) Nil!64994)) (t!378714 s!2326) s!2326))))

(declare-fun b!6364794 () Bool)

(assert (=> b!6364794 (= e!3864605 None!16163)))

(declare-fun b!6364795 () Bool)

(assert (=> b!6364795 (= e!3864603 (not (isDefined!12867 lt!2367263)))))

(declare-fun b!6364796 () Bool)

(assert (=> b!6364796 (= e!3864606 e!3864605)))

(declare-fun c!1158766 () Bool)

(assert (=> b!6364796 (= c!1158766 ((_ is Nil!64994) s!2326))))

(declare-fun b!6364797 () Bool)

(assert (=> b!6364797 (= e!3864604 (matchR!8456 (regTwo!33058 r!7292) s!2326))))

(declare-fun b!6364798 () Bool)

(assert (=> b!6364798 (= e!3864607 (= (++!14341 (_1!36555 (get!22493 lt!2367263)) (_2!36555 (get!22493 lt!2367263))) s!2326))))

(assert (= (and d!1996538 res!2618666) b!6364797))

(assert (= (and d!1996538 c!1158765) b!6364790))

(assert (= (and d!1996538 (not c!1158765)) b!6364796))

(assert (= (and b!6364796 c!1158766) b!6364794))

(assert (= (and b!6364796 (not c!1158766)) b!6364793))

(assert (= (and d!1996538 res!2618665) b!6364792))

(assert (= (and b!6364792 res!2618669) b!6364791))

(assert (= (and b!6364791 res!2618668) b!6364798))

(assert (= (and d!1996538 (not res!2618667)) b!6364795))

(declare-fun m!7169194 () Bool)

(assert (=> b!6364798 m!7169194))

(declare-fun m!7169196 () Bool)

(assert (=> b!6364798 m!7169196))

(declare-fun m!7169198 () Bool)

(assert (=> b!6364797 m!7169198))

(declare-fun m!7169200 () Bool)

(assert (=> b!6364793 m!7169200))

(assert (=> b!6364793 m!7169200))

(declare-fun m!7169202 () Bool)

(assert (=> b!6364793 m!7169202))

(declare-fun m!7169204 () Bool)

(assert (=> b!6364793 m!7169204))

(assert (=> b!6364793 m!7169200))

(declare-fun m!7169206 () Bool)

(assert (=> b!6364793 m!7169206))

(assert (=> b!6364791 m!7169194))

(declare-fun m!7169208 () Bool)

(assert (=> b!6364791 m!7169208))

(declare-fun m!7169210 () Bool)

(assert (=> b!6364795 m!7169210))

(assert (=> d!1996538 m!7169210))

(declare-fun m!7169212 () Bool)

(assert (=> d!1996538 m!7169212))

(declare-fun m!7169214 () Bool)

(assert (=> d!1996538 m!7169214))

(assert (=> b!6364792 m!7169194))

(declare-fun m!7169216 () Bool)

(assert (=> b!6364792 m!7169216))

(assert (=> b!6364724 d!1996538))

(declare-fun d!1996548 () Bool)

(declare-fun choose!47271 (Int) Bool)

(assert (=> d!1996548 (= (Exists!3343 lambda!350626) (choose!47271 lambda!350626))))

(declare-fun bs!1594601 () Bool)

(assert (= bs!1594601 d!1996548))

(declare-fun m!7169218 () Bool)

(assert (=> bs!1594601 m!7169218))

(assert (=> b!6364724 d!1996548))

(declare-fun d!1996550 () Bool)

(assert (=> d!1996550 (= (Exists!3343 lambda!350625) (choose!47271 lambda!350625))))

(declare-fun bs!1594602 () Bool)

(assert (= bs!1594602 d!1996550))

(declare-fun m!7169220 () Bool)

(assert (=> bs!1594602 m!7169220))

(assert (=> b!6364724 d!1996550))

(declare-fun bs!1594604 () Bool)

(declare-fun d!1996552 () Bool)

(assert (= bs!1594604 (and d!1996552 b!6364724)))

(declare-fun lambda!350638 () Int)

(assert (=> bs!1594604 (= lambda!350638 lambda!350625)))

(assert (=> bs!1594604 (not (= lambda!350638 lambda!350626))))

(assert (=> d!1996552 true))

(assert (=> d!1996552 true))

(assert (=> d!1996552 true))

(assert (=> d!1996552 (= (isDefined!12867 (findConcatSeparation!2578 (regOne!33058 r!7292) (regTwo!33058 r!7292) Nil!64994 s!2326 s!2326)) (Exists!3343 lambda!350638))))

(declare-fun lt!2367268 () Unit!158423)

(declare-fun choose!47272 (Regex!16273 Regex!16273 List!65118) Unit!158423)

(assert (=> d!1996552 (= lt!2367268 (choose!47272 (regOne!33058 r!7292) (regTwo!33058 r!7292) s!2326))))

(assert (=> d!1996552 (validRegex!8009 (regOne!33058 r!7292))))

(assert (=> d!1996552 (= (lemmaFindConcatSeparationEquivalentToExists!2342 (regOne!33058 r!7292) (regTwo!33058 r!7292) s!2326) lt!2367268)))

(declare-fun bs!1594605 () Bool)

(assert (= bs!1594605 d!1996552))

(declare-fun m!7169240 () Bool)

(assert (=> bs!1594605 m!7169240))

(assert (=> bs!1594605 m!7169214))

(declare-fun m!7169242 () Bool)

(assert (=> bs!1594605 m!7169242))

(assert (=> bs!1594605 m!7169128))

(assert (=> bs!1594605 m!7169130))

(assert (=> bs!1594605 m!7169128))

(assert (=> b!6364724 d!1996552))

(declare-fun bs!1594609 () Bool)

(declare-fun d!1996556 () Bool)

(assert (= bs!1594609 (and d!1996556 b!6364724)))

(declare-fun lambda!350647 () Int)

(assert (=> bs!1594609 (= lambda!350647 lambda!350625)))

(assert (=> bs!1594609 (not (= lambda!350647 lambda!350626))))

(declare-fun bs!1594610 () Bool)

(assert (= bs!1594610 (and d!1996556 d!1996552)))

(assert (=> bs!1594610 (= lambda!350647 lambda!350638)))

(assert (=> d!1996556 true))

(assert (=> d!1996556 true))

(assert (=> d!1996556 true))

(declare-fun lambda!350648 () Int)

(assert (=> bs!1594609 (not (= lambda!350648 lambda!350625))))

(assert (=> bs!1594609 (= lambda!350648 lambda!350626)))

(assert (=> bs!1594610 (not (= lambda!350648 lambda!350638))))

(declare-fun bs!1594611 () Bool)

(assert (= bs!1594611 d!1996556))

(assert (=> bs!1594611 (not (= lambda!350648 lambda!350647))))

(assert (=> d!1996556 true))

(assert (=> d!1996556 true))

(assert (=> d!1996556 true))

(assert (=> d!1996556 (= (Exists!3343 lambda!350647) (Exists!3343 lambda!350648))))

(declare-fun lt!2367271 () Unit!158423)

(declare-fun choose!47273 (Regex!16273 Regex!16273 List!65118) Unit!158423)

(assert (=> d!1996556 (= lt!2367271 (choose!47273 (regOne!33058 r!7292) (regTwo!33058 r!7292) s!2326))))

(assert (=> d!1996556 (validRegex!8009 (regOne!33058 r!7292))))

(assert (=> d!1996556 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1880 (regOne!33058 r!7292) (regTwo!33058 r!7292) s!2326) lt!2367271)))

(declare-fun m!7169252 () Bool)

(assert (=> bs!1594611 m!7169252))

(declare-fun m!7169254 () Bool)

(assert (=> bs!1594611 m!7169254))

(declare-fun m!7169256 () Bool)

(assert (=> bs!1594611 m!7169256))

(assert (=> bs!1594611 m!7169214))

(assert (=> b!6364724 d!1996556))

(declare-fun d!1996560 () Bool)

(declare-fun isEmpty!37103 (Option!16164) Bool)

(assert (=> d!1996560 (= (isDefined!12867 (findConcatSeparation!2578 (regOne!33058 r!7292) (regTwo!33058 r!7292) Nil!64994 s!2326 s!2326)) (not (isEmpty!37103 (findConcatSeparation!2578 (regOne!33058 r!7292) (regTwo!33058 r!7292) Nil!64994 s!2326 s!2326))))))

(declare-fun bs!1594612 () Bool)

(assert (= bs!1594612 d!1996560))

(assert (=> bs!1594612 m!7169128))

(declare-fun m!7169258 () Bool)

(assert (=> bs!1594612 m!7169258))

(assert (=> b!6364724 d!1996560))

(declare-fun d!1996562 () Bool)

(assert (=> d!1996562 (= (isEmpty!37101 (t!378716 zl!343)) ((_ is Nil!64996) (t!378716 zl!343)))))

(assert (=> b!6364734 d!1996562))

(declare-fun d!1996564 () Bool)

(declare-fun e!3864653 () Bool)

(assert (=> d!1996564 e!3864653))

(declare-fun res!2618705 () Bool)

(assert (=> d!1996564 (=> (not res!2618705) (not e!3864653))))

(declare-fun lt!2367276 () List!65120)

(declare-fun noDuplicate!2102 (List!65120) Bool)

(assert (=> d!1996564 (= res!2618705 (noDuplicate!2102 lt!2367276))))

(declare-fun choose!47274 ((InoxSet Context!11314)) List!65120)

(assert (=> d!1996564 (= lt!2367276 (choose!47274 z!1189))))

(assert (=> d!1996564 (= (toList!10057 z!1189) lt!2367276)))

(declare-fun b!6364878 () Bool)

(declare-fun content!12279 (List!65120) (InoxSet Context!11314))

(assert (=> b!6364878 (= e!3864653 (= (content!12279 lt!2367276) z!1189))))

(assert (= (and d!1996564 res!2618705) b!6364878))

(declare-fun m!7169260 () Bool)

(assert (=> d!1996564 m!7169260))

(declare-fun m!7169262 () Bool)

(assert (=> d!1996564 m!7169262))

(declare-fun m!7169264 () Bool)

(assert (=> b!6364878 m!7169264))

(assert (=> b!6364744 d!1996564))

(declare-fun d!1996566 () Bool)

(declare-fun lambda!350651 () Int)

(declare-fun forall!15451 (List!65119 Int) Bool)

(assert (=> d!1996566 (= (inv!83929 lt!2367244) (forall!15451 (exprs!6157 lt!2367244) lambda!350651))))

(declare-fun bs!1594613 () Bool)

(assert (= bs!1594613 d!1996566))

(declare-fun m!7169266 () Bool)

(assert (=> bs!1594613 m!7169266))

(assert (=> b!6364725 d!1996566))

(declare-fun d!1996568 () Bool)

(declare-fun choose!47275 ((InoxSet Context!11314) Int) (InoxSet Context!11314))

(assert (=> d!1996568 (= (flatMap!1778 lt!2367248 lambda!350627) (choose!47275 lt!2367248 lambda!350627))))

(declare-fun bs!1594614 () Bool)

(assert (= bs!1594614 d!1996568))

(declare-fun m!7169268 () Bool)

(assert (=> bs!1594614 m!7169268))

(assert (=> b!6364725 d!1996568))

(declare-fun d!1996570 () Bool)

(declare-fun c!1158796 () Bool)

(declare-fun e!3864675 () Bool)

(assert (=> d!1996570 (= c!1158796 e!3864675)))

(declare-fun res!2618732 () Bool)

(assert (=> d!1996570 (=> (not res!2618732) (not e!3864675))))

(assert (=> d!1996570 (= res!2618732 ((_ is Cons!64995) (exprs!6157 lt!2367239)))))

(declare-fun e!3864676 () (InoxSet Context!11314))

(assert (=> d!1996570 (= (derivationStepZipperUp!1447 lt!2367239 (h!71442 s!2326)) e!3864676)))

(declare-fun b!6364919 () Bool)

(declare-fun e!3864677 () (InoxSet Context!11314))

(assert (=> b!6364919 (= e!3864676 e!3864677)))

(declare-fun c!1158797 () Bool)

(assert (=> b!6364919 (= c!1158797 ((_ is Cons!64995) (exprs!6157 lt!2367239)))))

(declare-fun bm!543211 () Bool)

(declare-fun call!543216 () (InoxSet Context!11314))

(assert (=> bm!543211 (= call!543216 (derivationStepZipperDown!1521 (h!71443 (exprs!6157 lt!2367239)) (Context!11315 (t!378715 (exprs!6157 lt!2367239))) (h!71442 s!2326)))))

(declare-fun b!6364920 () Bool)

(assert (=> b!6364920 (= e!3864677 ((as const (Array Context!11314 Bool)) false))))

(declare-fun b!6364921 () Bool)

(assert (=> b!6364921 (= e!3864675 (nullable!6266 (h!71443 (exprs!6157 lt!2367239))))))

(declare-fun b!6364922 () Bool)

(assert (=> b!6364922 (= e!3864677 call!543216)))

(declare-fun b!6364923 () Bool)

(assert (=> b!6364923 (= e!3864676 ((_ map or) call!543216 (derivationStepZipperUp!1447 (Context!11315 (t!378715 (exprs!6157 lt!2367239))) (h!71442 s!2326))))))

(assert (= (and d!1996570 res!2618732) b!6364921))

(assert (= (and d!1996570 c!1158796) b!6364923))

(assert (= (and d!1996570 (not c!1158796)) b!6364919))

(assert (= (and b!6364919 c!1158797) b!6364922))

(assert (= (and b!6364919 (not c!1158797)) b!6364920))

(assert (= (or b!6364923 b!6364922) bm!543211))

(declare-fun m!7169282 () Bool)

(assert (=> bm!543211 m!7169282))

(declare-fun m!7169284 () Bool)

(assert (=> b!6364921 m!7169284))

(declare-fun m!7169286 () Bool)

(assert (=> b!6364923 m!7169286))

(assert (=> b!6364725 d!1996570))

(declare-fun d!1996574 () Bool)

(declare-fun dynLambda!25782 (Int Context!11314) (InoxSet Context!11314))

(assert (=> d!1996574 (= (flatMap!1778 lt!2367248 lambda!350627) (dynLambda!25782 lambda!350627 lt!2367239))))

(declare-fun lt!2367283 () Unit!158423)

(declare-fun choose!47276 ((InoxSet Context!11314) Context!11314 Int) Unit!158423)

(assert (=> d!1996574 (= lt!2367283 (choose!47276 lt!2367248 lt!2367239 lambda!350627))))

(assert (=> d!1996574 (= lt!2367248 (store ((as const (Array Context!11314 Bool)) false) lt!2367239 true))))

(assert (=> d!1996574 (= (lemmaFlatMapOnSingletonSet!1304 lt!2367248 lt!2367239 lambda!350627) lt!2367283)))

(declare-fun b_lambda!241933 () Bool)

(assert (=> (not b_lambda!241933) (not d!1996574)))

(declare-fun bs!1594616 () Bool)

(assert (= bs!1594616 d!1996574))

(assert (=> bs!1594616 m!7169162))

(declare-fun m!7169290 () Bool)

(assert (=> bs!1594616 m!7169290))

(declare-fun m!7169292 () Bool)

(assert (=> bs!1594616 m!7169292))

(assert (=> bs!1594616 m!7169168))

(assert (=> b!6364725 d!1996574))

(declare-fun d!1996578 () Bool)

(declare-fun c!1158803 () Bool)

(declare-fun isEmpty!37105 (List!65118) Bool)

(assert (=> d!1996578 (= c!1158803 (isEmpty!37105 (t!378714 s!2326)))))

(declare-fun e!3864683 () Bool)

(assert (=> d!1996578 (= (matchZipper!2285 lt!2367236 (t!378714 s!2326)) e!3864683)))

(declare-fun b!6364934 () Bool)

(declare-fun nullableZipper!2038 ((InoxSet Context!11314)) Bool)

(assert (=> b!6364934 (= e!3864683 (nullableZipper!2038 lt!2367236))))

(declare-fun b!6364935 () Bool)

(declare-fun derivationStepZipper!2238 ((InoxSet Context!11314) C!32816) (InoxSet Context!11314))

(declare-fun head!13038 (List!65118) C!32816)

(declare-fun tail!12123 (List!65118) List!65118)

(assert (=> b!6364935 (= e!3864683 (matchZipper!2285 (derivationStepZipper!2238 lt!2367236 (head!13038 (t!378714 s!2326))) (tail!12123 (t!378714 s!2326))))))

(assert (= (and d!1996578 c!1158803) b!6364934))

(assert (= (and d!1996578 (not c!1158803)) b!6364935))

(declare-fun m!7169306 () Bool)

(assert (=> d!1996578 m!7169306))

(declare-fun m!7169308 () Bool)

(assert (=> b!6364934 m!7169308))

(declare-fun m!7169310 () Bool)

(assert (=> b!6364935 m!7169310))

(assert (=> b!6364935 m!7169310))

(declare-fun m!7169312 () Bool)

(assert (=> b!6364935 m!7169312))

(declare-fun m!7169314 () Bool)

(assert (=> b!6364935 m!7169314))

(assert (=> b!6364935 m!7169312))

(assert (=> b!6364935 m!7169314))

(declare-fun m!7169316 () Bool)

(assert (=> b!6364935 m!7169316))

(assert (=> b!6364727 d!1996578))

(declare-fun call!543234 () List!65119)

(declare-fun bm!543224 () Bool)

(declare-fun call!543229 () (InoxSet Context!11314))

(declare-fun c!1158822 () Bool)

(declare-fun c!1158818 () Bool)

(declare-fun c!1158819 () Bool)

(assert (=> bm!543224 (= call!543229 (derivationStepZipperDown!1521 (ite c!1158822 (regTwo!33059 (reg!16602 (regOne!33058 r!7292))) (ite c!1158819 (regTwo!33058 (reg!16602 (regOne!33058 r!7292))) (ite c!1158818 (regOne!33058 (reg!16602 (regOne!33058 r!7292))) (reg!16602 (reg!16602 (regOne!33058 r!7292)))))) (ite (or c!1158822 c!1158819) lt!2367244 (Context!11315 call!543234)) (h!71442 s!2326)))))

(declare-fun b!6364976 () Bool)

(declare-fun e!3864710 () (InoxSet Context!11314))

(declare-fun call!543232 () (InoxSet Context!11314))

(assert (=> b!6364976 (= e!3864710 call!543232)))

(declare-fun b!6364977 () Bool)

(declare-fun e!3864706 () (InoxSet Context!11314))

(declare-fun e!3864707 () (InoxSet Context!11314))

(assert (=> b!6364977 (= e!3864706 e!3864707)))

(assert (=> b!6364977 (= c!1158822 ((_ is Union!16273) (reg!16602 (regOne!33058 r!7292))))))

(declare-fun b!6364978 () Bool)

(assert (=> b!6364978 (= e!3864706 (store ((as const (Array Context!11314 Bool)) false) lt!2367244 true))))

(declare-fun b!6364979 () Bool)

(declare-fun e!3864708 () (InoxSet Context!11314))

(assert (=> b!6364979 (= e!3864708 e!3864710)))

(assert (=> b!6364979 (= c!1158818 ((_ is Concat!25118) (reg!16602 (regOne!33058 r!7292))))))

(declare-fun call!543233 () List!65119)

(declare-fun bm!543225 () Bool)

(declare-fun $colon$colon!2133 (List!65119 Regex!16273) List!65119)

(assert (=> bm!543225 (= call!543233 ($colon$colon!2133 (exprs!6157 lt!2367244) (ite (or c!1158819 c!1158818) (regTwo!33058 (reg!16602 (regOne!33058 r!7292))) (reg!16602 (regOne!33058 r!7292)))))))

(declare-fun b!6364980 () Bool)

(declare-fun e!3864709 () Bool)

(assert (=> b!6364980 (= c!1158819 e!3864709)))

(declare-fun res!2618745 () Bool)

(assert (=> b!6364980 (=> (not res!2618745) (not e!3864709))))

(assert (=> b!6364980 (= res!2618745 ((_ is Concat!25118) (reg!16602 (regOne!33058 r!7292))))))

(assert (=> b!6364980 (= e!3864707 e!3864708)))

(declare-fun b!6364981 () Bool)

(assert (=> b!6364981 (= e!3864709 (nullable!6266 (regOne!33058 (reg!16602 (regOne!33058 r!7292)))))))

(declare-fun bm!543227 () Bool)

(assert (=> bm!543227 (= call!543234 call!543233)))

(declare-fun call!543231 () (InoxSet Context!11314))

(declare-fun bm!543228 () Bool)

(assert (=> bm!543228 (= call!543231 (derivationStepZipperDown!1521 (ite c!1158822 (regOne!33059 (reg!16602 (regOne!33058 r!7292))) (regOne!33058 (reg!16602 (regOne!33058 r!7292)))) (ite c!1158822 lt!2367244 (Context!11315 call!543233)) (h!71442 s!2326)))))

(declare-fun bm!543229 () Bool)

(declare-fun call!543230 () (InoxSet Context!11314))

(assert (=> bm!543229 (= call!543230 call!543229)))

(declare-fun b!6364982 () Bool)

(declare-fun c!1158820 () Bool)

(assert (=> b!6364982 (= c!1158820 ((_ is Star!16273) (reg!16602 (regOne!33058 r!7292))))))

(declare-fun e!3864711 () (InoxSet Context!11314))

(assert (=> b!6364982 (= e!3864710 e!3864711)))

(declare-fun b!6364983 () Bool)

(assert (=> b!6364983 (= e!3864708 ((_ map or) call!543231 call!543230))))

(declare-fun b!6364984 () Bool)

(assert (=> b!6364984 (= e!3864707 ((_ map or) call!543231 call!543229))))

(declare-fun d!1996584 () Bool)

(declare-fun c!1158821 () Bool)

(assert (=> d!1996584 (= c!1158821 (and ((_ is ElementMatch!16273) (reg!16602 (regOne!33058 r!7292))) (= (c!1158752 (reg!16602 (regOne!33058 r!7292))) (h!71442 s!2326))))))

(assert (=> d!1996584 (= (derivationStepZipperDown!1521 (reg!16602 (regOne!33058 r!7292)) lt!2367244 (h!71442 s!2326)) e!3864706)))

(declare-fun bm!543226 () Bool)

(assert (=> bm!543226 (= call!543232 call!543230)))

(declare-fun b!6364985 () Bool)

(assert (=> b!6364985 (= e!3864711 call!543232)))

(declare-fun b!6364986 () Bool)

(assert (=> b!6364986 (= e!3864711 ((as const (Array Context!11314 Bool)) false))))

(assert (= (and d!1996584 c!1158821) b!6364978))

(assert (= (and d!1996584 (not c!1158821)) b!6364977))

(assert (= (and b!6364977 c!1158822) b!6364984))

(assert (= (and b!6364977 (not c!1158822)) b!6364980))

(assert (= (and b!6364980 res!2618745) b!6364981))

(assert (= (and b!6364980 c!1158819) b!6364983))

(assert (= (and b!6364980 (not c!1158819)) b!6364979))

(assert (= (and b!6364979 c!1158818) b!6364976))

(assert (= (and b!6364979 (not c!1158818)) b!6364982))

(assert (= (and b!6364982 c!1158820) b!6364985))

(assert (= (and b!6364982 (not c!1158820)) b!6364986))

(assert (= (or b!6364976 b!6364985) bm!543227))

(assert (= (or b!6364976 b!6364985) bm!543226))

(assert (= (or b!6364983 bm!543227) bm!543225))

(assert (= (or b!6364983 bm!543226) bm!543229))

(assert (= (or b!6364984 bm!543229) bm!543224))

(assert (= (or b!6364984 b!6364983) bm!543228))

(declare-fun m!7169318 () Bool)

(assert (=> bm!543224 m!7169318))

(declare-fun m!7169320 () Bool)

(assert (=> b!6364981 m!7169320))

(declare-fun m!7169322 () Bool)

(assert (=> b!6364978 m!7169322))

(declare-fun m!7169324 () Bool)

(assert (=> bm!543225 m!7169324))

(declare-fun m!7169326 () Bool)

(assert (=> bm!543228 m!7169326))

(assert (=> b!6364736 d!1996584))

(declare-fun d!1996586 () Bool)

(declare-fun lt!2367295 () Regex!16273)

(assert (=> d!1996586 (validRegex!8009 lt!2367295)))

(assert (=> d!1996586 (= lt!2367295 (generalisedUnion!2117 (unfocusZipperList!1694 zl!343)))))

(assert (=> d!1996586 (= (unfocusZipper!2015 zl!343) lt!2367295)))

(declare-fun bs!1594617 () Bool)

(assert (= bs!1594617 d!1996586))

(declare-fun m!7169328 () Bool)

(assert (=> bs!1594617 m!7169328))

(assert (=> bs!1594617 m!7169154))

(assert (=> bs!1594617 m!7169154))

(assert (=> bs!1594617 m!7169156))

(assert (=> b!6364728 d!1996586))

(declare-fun bs!1594618 () Bool)

(declare-fun d!1996588 () Bool)

(assert (= bs!1594618 (and d!1996588 d!1996566)))

(declare-fun lambda!350652 () Int)

(assert (=> bs!1594618 (= lambda!350652 lambda!350651)))

(assert (=> d!1996588 (= (inv!83929 (h!71444 zl!343)) (forall!15451 (exprs!6157 (h!71444 zl!343)) lambda!350652))))

(declare-fun bs!1594619 () Bool)

(assert (= bs!1594619 d!1996588))

(declare-fun m!7169330 () Bool)

(assert (=> bs!1594619 m!7169330))

(assert (=> b!6364738 d!1996588))

(declare-fun d!1996590 () Bool)

(declare-fun nullableFct!2213 (Regex!16273) Bool)

(assert (=> d!1996590 (= (nullable!6266 (regOne!33058 (regOne!33058 r!7292))) (nullableFct!2213 (regOne!33058 (regOne!33058 r!7292))))))

(declare-fun bs!1594620 () Bool)

(assert (= bs!1594620 d!1996590))

(declare-fun m!7169354 () Bool)

(assert (=> bs!1594620 m!7169354))

(assert (=> b!6364739 d!1996590))

(declare-fun e!3864719 () Bool)

(declare-fun d!1996592 () Bool)

(assert (=> d!1996592 (= (matchZipper!2285 ((_ map or) lt!2367240 lt!2367236) (t!378714 s!2326)) e!3864719)))

(declare-fun res!2618753 () Bool)

(assert (=> d!1996592 (=> res!2618753 e!3864719)))

(assert (=> d!1996592 (= res!2618753 (matchZipper!2285 lt!2367240 (t!378714 s!2326)))))

(declare-fun lt!2367298 () Unit!158423)

(declare-fun choose!47278 ((InoxSet Context!11314) (InoxSet Context!11314) List!65118) Unit!158423)

(assert (=> d!1996592 (= lt!2367298 (choose!47278 lt!2367240 lt!2367236 (t!378714 s!2326)))))

(assert (=> d!1996592 (= (lemmaZipperConcatMatchesSameAsBothZippers!1104 lt!2367240 lt!2367236 (t!378714 s!2326)) lt!2367298)))

(declare-fun b!6364998 () Bool)

(assert (=> b!6364998 (= e!3864719 (matchZipper!2285 lt!2367236 (t!378714 s!2326)))))

(assert (= (and d!1996592 (not res!2618753)) b!6364998))

(assert (=> d!1996592 m!7169126))

(assert (=> d!1996592 m!7169124))

(declare-fun m!7169362 () Bool)

(assert (=> d!1996592 m!7169362))

(assert (=> b!6364998 m!7169158))

(assert (=> b!6364720 d!1996592))

(declare-fun d!1996600 () Bool)

(declare-fun c!1158825 () Bool)

(assert (=> d!1996600 (= c!1158825 (isEmpty!37105 (t!378714 s!2326)))))

(declare-fun e!3864720 () Bool)

(assert (=> d!1996600 (= (matchZipper!2285 lt!2367240 (t!378714 s!2326)) e!3864720)))

(declare-fun b!6364999 () Bool)

(assert (=> b!6364999 (= e!3864720 (nullableZipper!2038 lt!2367240))))

(declare-fun b!6365000 () Bool)

(assert (=> b!6365000 (= e!3864720 (matchZipper!2285 (derivationStepZipper!2238 lt!2367240 (head!13038 (t!378714 s!2326))) (tail!12123 (t!378714 s!2326))))))

(assert (= (and d!1996600 c!1158825) b!6364999))

(assert (= (and d!1996600 (not c!1158825)) b!6365000))

(assert (=> d!1996600 m!7169306))

(declare-fun m!7169364 () Bool)

(assert (=> b!6364999 m!7169364))

(assert (=> b!6365000 m!7169310))

(assert (=> b!6365000 m!7169310))

(declare-fun m!7169366 () Bool)

(assert (=> b!6365000 m!7169366))

(assert (=> b!6365000 m!7169314))

(assert (=> b!6365000 m!7169366))

(assert (=> b!6365000 m!7169314))

(declare-fun m!7169368 () Bool)

(assert (=> b!6365000 m!7169368))

(assert (=> b!6364720 d!1996600))

(declare-fun d!1996602 () Bool)

(declare-fun c!1158826 () Bool)

(assert (=> d!1996602 (= c!1158826 (isEmpty!37105 (t!378714 s!2326)))))

(declare-fun e!3864721 () Bool)

(assert (=> d!1996602 (= (matchZipper!2285 ((_ map or) lt!2367240 lt!2367236) (t!378714 s!2326)) e!3864721)))

(declare-fun b!6365001 () Bool)

(assert (=> b!6365001 (= e!3864721 (nullableZipper!2038 ((_ map or) lt!2367240 lt!2367236)))))

(declare-fun b!6365002 () Bool)

(assert (=> b!6365002 (= e!3864721 (matchZipper!2285 (derivationStepZipper!2238 ((_ map or) lt!2367240 lt!2367236) (head!13038 (t!378714 s!2326))) (tail!12123 (t!378714 s!2326))))))

(assert (= (and d!1996602 c!1158826) b!6365001))

(assert (= (and d!1996602 (not c!1158826)) b!6365002))

(assert (=> d!1996602 m!7169306))

(declare-fun m!7169370 () Bool)

(assert (=> b!6365001 m!7169370))

(assert (=> b!6365002 m!7169310))

(assert (=> b!6365002 m!7169310))

(declare-fun m!7169372 () Bool)

(assert (=> b!6365002 m!7169372))

(assert (=> b!6365002 m!7169314))

(assert (=> b!6365002 m!7169372))

(assert (=> b!6365002 m!7169314))

(declare-fun m!7169374 () Bool)

(assert (=> b!6365002 m!7169374))

(assert (=> b!6364720 d!1996602))

(declare-fun b!6365025 () Bool)

(declare-fun e!3864743 () Bool)

(declare-fun call!543241 () Bool)

(assert (=> b!6365025 (= e!3864743 call!543241)))

(declare-fun b!6365026 () Bool)

(declare-fun e!3864741 () Bool)

(declare-fun e!3864742 () Bool)

(assert (=> b!6365026 (= e!3864741 e!3864742)))

(declare-fun res!2618771 () Bool)

(assert (=> b!6365026 (=> (not res!2618771) (not e!3864742))))

(declare-fun call!543243 () Bool)

(assert (=> b!6365026 (= res!2618771 call!543243)))

(declare-fun b!6365027 () Bool)

(assert (=> b!6365027 (= e!3864742 call!543241)))

(declare-fun d!1996604 () Bool)

(declare-fun res!2618768 () Bool)

(declare-fun e!3864738 () Bool)

(assert (=> d!1996604 (=> res!2618768 e!3864738)))

(assert (=> d!1996604 (= res!2618768 ((_ is ElementMatch!16273) r!7292))))

(assert (=> d!1996604 (= (validRegex!8009 r!7292) e!3864738)))

(declare-fun bm!543236 () Bool)

(declare-fun call!543242 () Bool)

(declare-fun c!1158832 () Bool)

(declare-fun c!1158831 () Bool)

(assert (=> bm!543236 (= call!543242 (validRegex!8009 (ite c!1158832 (reg!16602 r!7292) (ite c!1158831 (regOne!33059 r!7292) (regOne!33058 r!7292)))))))

(declare-fun bm!543237 () Bool)

(assert (=> bm!543237 (= call!543241 (validRegex!8009 (ite c!1158831 (regTwo!33059 r!7292) (regTwo!33058 r!7292))))))

(declare-fun b!6365028 () Bool)

(declare-fun e!3864744 () Bool)

(declare-fun e!3864740 () Bool)

(assert (=> b!6365028 (= e!3864744 e!3864740)))

(assert (=> b!6365028 (= c!1158831 ((_ is Union!16273) r!7292))))

(declare-fun bm!543238 () Bool)

(assert (=> bm!543238 (= call!543243 call!543242)))

(declare-fun b!6365029 () Bool)

(assert (=> b!6365029 (= e!3864738 e!3864744)))

(assert (=> b!6365029 (= c!1158832 ((_ is Star!16273) r!7292))))

(declare-fun b!6365030 () Bool)

(declare-fun e!3864739 () Bool)

(assert (=> b!6365030 (= e!3864739 call!543242)))

(declare-fun b!6365031 () Bool)

(declare-fun res!2618770 () Bool)

(assert (=> b!6365031 (=> res!2618770 e!3864741)))

(assert (=> b!6365031 (= res!2618770 (not ((_ is Concat!25118) r!7292)))))

(assert (=> b!6365031 (= e!3864740 e!3864741)))

(declare-fun b!6365032 () Bool)

(assert (=> b!6365032 (= e!3864744 e!3864739)))

(declare-fun res!2618769 () Bool)

(assert (=> b!6365032 (= res!2618769 (not (nullable!6266 (reg!16602 r!7292))))))

(assert (=> b!6365032 (=> (not res!2618769) (not e!3864739))))

(declare-fun b!6365033 () Bool)

(declare-fun res!2618772 () Bool)

(assert (=> b!6365033 (=> (not res!2618772) (not e!3864743))))

(assert (=> b!6365033 (= res!2618772 call!543243)))

(assert (=> b!6365033 (= e!3864740 e!3864743)))

(assert (= (and d!1996604 (not res!2618768)) b!6365029))

(assert (= (and b!6365029 c!1158832) b!6365032))

(assert (= (and b!6365029 (not c!1158832)) b!6365028))

(assert (= (and b!6365032 res!2618769) b!6365030))

(assert (= (and b!6365028 c!1158831) b!6365033))

(assert (= (and b!6365028 (not c!1158831)) b!6365031))

(assert (= (and b!6365033 res!2618772) b!6365025))

(assert (= (and b!6365031 (not res!2618770)) b!6365026))

(assert (= (and b!6365026 res!2618771) b!6365027))

(assert (= (or b!6365025 b!6365027) bm!543237))

(assert (= (or b!6365033 b!6365026) bm!543238))

(assert (= (or b!6365030 bm!543238) bm!543236))

(declare-fun m!7169380 () Bool)

(assert (=> bm!543236 m!7169380))

(declare-fun m!7169382 () Bool)

(assert (=> bm!543237 m!7169382))

(declare-fun m!7169384 () Bool)

(assert (=> b!6365032 m!7169384))

(assert (=> start!630502 d!1996604))

(declare-fun d!1996608 () Bool)

(assert (=> d!1996608 (= (isEmpty!37102 (t!378715 (exprs!6157 (h!71444 zl!343)))) ((_ is Nil!64995) (t!378715 (exprs!6157 (h!71444 zl!343)))))))

(assert (=> b!6364740 d!1996608))

(declare-fun bs!1594633 () Bool)

(declare-fun b!6365083 () Bool)

(assert (= bs!1594633 (and b!6365083 b!6364724)))

(declare-fun lambda!350666 () Int)

(assert (=> bs!1594633 (not (= lambda!350666 lambda!350626))))

(declare-fun bs!1594634 () Bool)

(assert (= bs!1594634 (and b!6365083 d!1996552)))

(assert (=> bs!1594634 (not (= lambda!350666 lambda!350638))))

(declare-fun bs!1594635 () Bool)

(assert (= bs!1594635 (and b!6365083 d!1996556)))

(assert (=> bs!1594635 (not (= lambda!350666 lambda!350648))))

(assert (=> bs!1594633 (not (= lambda!350666 lambda!350625))))

(assert (=> bs!1594635 (not (= lambda!350666 lambda!350647))))

(assert (=> b!6365083 true))

(assert (=> b!6365083 true))

(declare-fun bs!1594636 () Bool)

(declare-fun b!6365076 () Bool)

(assert (= bs!1594636 (and b!6365076 b!6364724)))

(declare-fun lambda!350667 () Int)

(assert (=> bs!1594636 (= lambda!350667 lambda!350626)))

(declare-fun bs!1594637 () Bool)

(assert (= bs!1594637 (and b!6365076 d!1996552)))

(assert (=> bs!1594637 (not (= lambda!350667 lambda!350638))))

(declare-fun bs!1594638 () Bool)

(assert (= bs!1594638 (and b!6365076 b!6365083)))

(assert (=> bs!1594638 (not (= lambda!350667 lambda!350666))))

(declare-fun bs!1594639 () Bool)

(assert (= bs!1594639 (and b!6365076 d!1996556)))

(assert (=> bs!1594639 (= lambda!350667 lambda!350648)))

(assert (=> bs!1594636 (not (= lambda!350667 lambda!350625))))

(assert (=> bs!1594639 (not (= lambda!350667 lambda!350647))))

(assert (=> b!6365076 true))

(assert (=> b!6365076 true))

(declare-fun bm!543243 () Bool)

(declare-fun call!543249 () Bool)

(assert (=> bm!543243 (= call!543249 (isEmpty!37105 s!2326))))

(declare-fun b!6365074 () Bool)

(declare-fun c!1158842 () Bool)

(assert (=> b!6365074 (= c!1158842 ((_ is ElementMatch!16273) r!7292))))

(declare-fun e!3864771 () Bool)

(declare-fun e!3864773 () Bool)

(assert (=> b!6365074 (= e!3864771 e!3864773)))

(declare-fun b!6365075 () Bool)

(declare-fun e!3864768 () Bool)

(declare-fun e!3864770 () Bool)

(assert (=> b!6365075 (= e!3864768 e!3864770)))

(declare-fun c!1158841 () Bool)

(assert (=> b!6365075 (= c!1158841 ((_ is Star!16273) r!7292))))

(declare-fun call!543248 () Bool)

(assert (=> b!6365076 (= e!3864770 call!543248)))

(declare-fun b!6365078 () Bool)

(declare-fun c!1158844 () Bool)

(assert (=> b!6365078 (= c!1158844 ((_ is Union!16273) r!7292))))

(assert (=> b!6365078 (= e!3864773 e!3864768)))

(declare-fun b!6365079 () Bool)

(declare-fun res!2618797 () Bool)

(declare-fun e!3864772 () Bool)

(assert (=> b!6365079 (=> res!2618797 e!3864772)))

(assert (=> b!6365079 (= res!2618797 call!543249)))

(assert (=> b!6365079 (= e!3864770 e!3864772)))

(declare-fun b!6365080 () Bool)

(declare-fun e!3864767 () Bool)

(assert (=> b!6365080 (= e!3864767 call!543249)))

(declare-fun b!6365081 () Bool)

(assert (=> b!6365081 (= e!3864773 (= s!2326 (Cons!64994 (c!1158752 r!7292) Nil!64994)))))

(declare-fun b!6365082 () Bool)

(declare-fun e!3864769 () Bool)

(assert (=> b!6365082 (= e!3864769 (matchRSpec!3374 (regTwo!33059 r!7292) s!2326))))

(assert (=> b!6365083 (= e!3864772 call!543248)))

(declare-fun d!1996610 () Bool)

(declare-fun c!1158843 () Bool)

(assert (=> d!1996610 (= c!1158843 ((_ is EmptyExpr!16273) r!7292))))

(assert (=> d!1996610 (= (matchRSpec!3374 r!7292 s!2326) e!3864767)))

(declare-fun b!6365077 () Bool)

(assert (=> b!6365077 (= e!3864768 e!3864769)))

(declare-fun res!2618798 () Bool)

(assert (=> b!6365077 (= res!2618798 (matchRSpec!3374 (regOne!33059 r!7292) s!2326))))

(assert (=> b!6365077 (=> res!2618798 e!3864769)))

(declare-fun b!6365084 () Bool)

(assert (=> b!6365084 (= e!3864767 e!3864771)))

(declare-fun res!2618799 () Bool)

(assert (=> b!6365084 (= res!2618799 (not ((_ is EmptyLang!16273) r!7292)))))

(assert (=> b!6365084 (=> (not res!2618799) (not e!3864771))))

(declare-fun bm!543244 () Bool)

(assert (=> bm!543244 (= call!543248 (Exists!3343 (ite c!1158841 lambda!350666 lambda!350667)))))

(assert (= (and d!1996610 c!1158843) b!6365080))

(assert (= (and d!1996610 (not c!1158843)) b!6365084))

(assert (= (and b!6365084 res!2618799) b!6365074))

(assert (= (and b!6365074 c!1158842) b!6365081))

(assert (= (and b!6365074 (not c!1158842)) b!6365078))

(assert (= (and b!6365078 c!1158844) b!6365077))

(assert (= (and b!6365078 (not c!1158844)) b!6365075))

(assert (= (and b!6365077 (not res!2618798)) b!6365082))

(assert (= (and b!6365075 c!1158841) b!6365079))

(assert (= (and b!6365075 (not c!1158841)) b!6365076))

(assert (= (and b!6365079 (not res!2618797)) b!6365083))

(assert (= (or b!6365083 b!6365076) bm!543244))

(assert (= (or b!6365080 b!6365079) bm!543243))

(declare-fun m!7169394 () Bool)

(assert (=> bm!543243 m!7169394))

(declare-fun m!7169396 () Bool)

(assert (=> b!6365082 m!7169396))

(declare-fun m!7169398 () Bool)

(assert (=> b!6365077 m!7169398))

(declare-fun m!7169400 () Bool)

(assert (=> bm!543244 m!7169400))

(assert (=> b!6364742 d!1996610))

(declare-fun b!6365159 () Bool)

(declare-fun e!3864820 () Bool)

(declare-fun e!3864816 () Bool)

(assert (=> b!6365159 (= e!3864820 e!3864816)))

(declare-fun res!2618824 () Bool)

(assert (=> b!6365159 (=> (not res!2618824) (not e!3864816))))

(declare-fun lt!2367310 () Bool)

(assert (=> b!6365159 (= res!2618824 (not lt!2367310))))

(declare-fun b!6365160 () Bool)

(declare-fun res!2618831 () Bool)

(assert (=> b!6365160 (=> res!2618831 e!3864820)))

(declare-fun e!3864815 () Bool)

(assert (=> b!6365160 (= res!2618831 e!3864815)))

(declare-fun res!2618828 () Bool)

(assert (=> b!6365160 (=> (not res!2618828) (not e!3864815))))

(assert (=> b!6365160 (= res!2618828 lt!2367310)))

(declare-fun b!6365161 () Bool)

(declare-fun e!3864819 () Bool)

(declare-fun derivativeStep!4978 (Regex!16273 C!32816) Regex!16273)

(assert (=> b!6365161 (= e!3864819 (matchR!8456 (derivativeStep!4978 r!7292 (head!13038 s!2326)) (tail!12123 s!2326)))))

(declare-fun b!6365162 () Bool)

(assert (=> b!6365162 (= e!3864819 (nullable!6266 r!7292))))

(declare-fun b!6365163 () Bool)

(declare-fun e!3864817 () Bool)

(declare-fun e!3864818 () Bool)

(assert (=> b!6365163 (= e!3864817 e!3864818)))

(declare-fun c!1158870 () Bool)

(assert (=> b!6365163 (= c!1158870 ((_ is EmptyLang!16273) r!7292))))

(declare-fun b!6365164 () Bool)

(assert (=> b!6365164 (= e!3864818 (not lt!2367310))))

(declare-fun b!6365165 () Bool)

(assert (=> b!6365165 (= e!3864815 (= (head!13038 s!2326) (c!1158752 r!7292)))))

(declare-fun b!6365166 () Bool)

(declare-fun res!2618826 () Bool)

(assert (=> b!6365166 (=> (not res!2618826) (not e!3864815))))

(assert (=> b!6365166 (= res!2618826 (isEmpty!37105 (tail!12123 s!2326)))))

(declare-fun bm!543265 () Bool)

(declare-fun call!543270 () Bool)

(assert (=> bm!543265 (= call!543270 (isEmpty!37105 s!2326))))

(declare-fun b!6365167 () Bool)

(declare-fun e!3864821 () Bool)

(assert (=> b!6365167 (= e!3864821 (not (= (head!13038 s!2326) (c!1158752 r!7292))))))

(declare-fun b!6365168 () Bool)

(assert (=> b!6365168 (= e!3864816 e!3864821)))

(declare-fun res!2618830 () Bool)

(assert (=> b!6365168 (=> res!2618830 e!3864821)))

(assert (=> b!6365168 (= res!2618830 call!543270)))

(declare-fun b!6365169 () Bool)

(declare-fun res!2618829 () Bool)

(assert (=> b!6365169 (=> res!2618829 e!3864820)))

(assert (=> b!6365169 (= res!2618829 (not ((_ is ElementMatch!16273) r!7292)))))

(assert (=> b!6365169 (= e!3864818 e!3864820)))

(declare-fun d!1996616 () Bool)

(assert (=> d!1996616 e!3864817))

(declare-fun c!1158872 () Bool)

(assert (=> d!1996616 (= c!1158872 ((_ is EmptyExpr!16273) r!7292))))

(assert (=> d!1996616 (= lt!2367310 e!3864819)))

(declare-fun c!1158871 () Bool)

(assert (=> d!1996616 (= c!1158871 (isEmpty!37105 s!2326))))

(assert (=> d!1996616 (validRegex!8009 r!7292)))

(assert (=> d!1996616 (= (matchR!8456 r!7292 s!2326) lt!2367310)))

(declare-fun b!6365170 () Bool)

(assert (=> b!6365170 (= e!3864817 (= lt!2367310 call!543270))))

(declare-fun b!6365171 () Bool)

(declare-fun res!2618825 () Bool)

(assert (=> b!6365171 (=> res!2618825 e!3864821)))

(assert (=> b!6365171 (= res!2618825 (not (isEmpty!37105 (tail!12123 s!2326))))))

(declare-fun b!6365172 () Bool)

(declare-fun res!2618827 () Bool)

(assert (=> b!6365172 (=> (not res!2618827) (not e!3864815))))

(assert (=> b!6365172 (= res!2618827 (not call!543270))))

(assert (= (and d!1996616 c!1158871) b!6365162))

(assert (= (and d!1996616 (not c!1158871)) b!6365161))

(assert (= (and d!1996616 c!1158872) b!6365170))

(assert (= (and d!1996616 (not c!1158872)) b!6365163))

(assert (= (and b!6365163 c!1158870) b!6365164))

(assert (= (and b!6365163 (not c!1158870)) b!6365169))

(assert (= (and b!6365169 (not res!2618829)) b!6365160))

(assert (= (and b!6365160 res!2618828) b!6365172))

(assert (= (and b!6365172 res!2618827) b!6365166))

(assert (= (and b!6365166 res!2618826) b!6365165))

(assert (= (and b!6365160 (not res!2618831)) b!6365159))

(assert (= (and b!6365159 res!2618824) b!6365168))

(assert (= (and b!6365168 (not res!2618830)) b!6365171))

(assert (= (and b!6365171 (not res!2618825)) b!6365167))

(assert (= (or b!6365170 b!6365168 b!6365172) bm!543265))

(declare-fun m!7169424 () Bool)

(assert (=> b!6365166 m!7169424))

(assert (=> b!6365166 m!7169424))

(declare-fun m!7169426 () Bool)

(assert (=> b!6365166 m!7169426))

(assert (=> b!6365171 m!7169424))

(assert (=> b!6365171 m!7169424))

(assert (=> b!6365171 m!7169426))

(declare-fun m!7169428 () Bool)

(assert (=> b!6365162 m!7169428))

(assert (=> d!1996616 m!7169394))

(assert (=> d!1996616 m!7169142))

(declare-fun m!7169430 () Bool)

(assert (=> b!6365161 m!7169430))

(assert (=> b!6365161 m!7169430))

(declare-fun m!7169432 () Bool)

(assert (=> b!6365161 m!7169432))

(assert (=> b!6365161 m!7169424))

(assert (=> b!6365161 m!7169432))

(assert (=> b!6365161 m!7169424))

(declare-fun m!7169434 () Bool)

(assert (=> b!6365161 m!7169434))

(assert (=> b!6365167 m!7169430))

(assert (=> b!6365165 m!7169430))

(assert (=> bm!543265 m!7169394))

(assert (=> b!6364742 d!1996616))

(declare-fun d!1996628 () Bool)

(assert (=> d!1996628 (= (matchR!8456 r!7292 s!2326) (matchRSpec!3374 r!7292 s!2326))))

(declare-fun lt!2367313 () Unit!158423)

(declare-fun choose!47284 (Regex!16273 List!65118) Unit!158423)

(assert (=> d!1996628 (= lt!2367313 (choose!47284 r!7292 s!2326))))

(assert (=> d!1996628 (validRegex!8009 r!7292)))

(assert (=> d!1996628 (= (mainMatchTheorem!3374 r!7292 s!2326) lt!2367313)))

(declare-fun bs!1594645 () Bool)

(assert (= bs!1594645 d!1996628))

(assert (=> bs!1594645 m!7169146))

(assert (=> bs!1594645 m!7169144))

(declare-fun m!7169452 () Bool)

(assert (=> bs!1594645 m!7169452))

(assert (=> bs!1594645 m!7169142))

(assert (=> b!6364742 d!1996628))

(declare-fun bs!1594647 () Bool)

(declare-fun d!1996634 () Bool)

(assert (= bs!1594647 (and d!1996634 d!1996566)))

(declare-fun lambda!350671 () Int)

(assert (=> bs!1594647 (= lambda!350671 lambda!350651)))

(declare-fun bs!1594648 () Bool)

(assert (= bs!1594648 (and d!1996634 d!1996588)))

(assert (=> bs!1594648 (= lambda!350671 lambda!350652)))

(declare-fun b!6365237 () Bool)

(declare-fun e!3864863 () Bool)

(declare-fun lt!2367319 () Regex!16273)

(declare-fun isConcat!1198 (Regex!16273) Bool)

(assert (=> b!6365237 (= e!3864863 (isConcat!1198 lt!2367319))))

(declare-fun e!3864866 () Bool)

(assert (=> d!1996634 e!3864866))

(declare-fun res!2618851 () Bool)

(assert (=> d!1996634 (=> (not res!2618851) (not e!3864866))))

(assert (=> d!1996634 (= res!2618851 (validRegex!8009 lt!2367319))))

(declare-fun e!3864868 () Regex!16273)

(assert (=> d!1996634 (= lt!2367319 e!3864868)))

(declare-fun c!1158898 () Bool)

(declare-fun e!3864867 () Bool)

(assert (=> d!1996634 (= c!1158898 e!3864867)))

(declare-fun res!2618850 () Bool)

(assert (=> d!1996634 (=> (not res!2618850) (not e!3864867))))

(assert (=> d!1996634 (= res!2618850 ((_ is Cons!64995) (exprs!6157 (h!71444 zl!343))))))

(assert (=> d!1996634 (forall!15451 (exprs!6157 (h!71444 zl!343)) lambda!350671)))

(assert (=> d!1996634 (= (generalisedConcat!1870 (exprs!6157 (h!71444 zl!343))) lt!2367319)))

(declare-fun b!6365238 () Bool)

(declare-fun e!3864865 () Bool)

(assert (=> b!6365238 (= e!3864865 e!3864863)))

(declare-fun c!1158899 () Bool)

(declare-fun tail!12124 (List!65119) List!65119)

(assert (=> b!6365238 (= c!1158899 (isEmpty!37102 (tail!12124 (exprs!6157 (h!71444 zl!343)))))))

(declare-fun b!6365239 () Bool)

(declare-fun e!3864864 () Regex!16273)

(assert (=> b!6365239 (= e!3864864 EmptyExpr!16273)))

(declare-fun b!6365240 () Bool)

(assert (=> b!6365240 (= e!3864867 (isEmpty!37102 (t!378715 (exprs!6157 (h!71444 zl!343)))))))

(declare-fun b!6365241 () Bool)

(assert (=> b!6365241 (= e!3864866 e!3864865)))

(declare-fun c!1158897 () Bool)

(assert (=> b!6365241 (= c!1158897 (isEmpty!37102 (exprs!6157 (h!71444 zl!343))))))

(declare-fun b!6365242 () Bool)

(declare-fun isEmptyExpr!1675 (Regex!16273) Bool)

(assert (=> b!6365242 (= e!3864865 (isEmptyExpr!1675 lt!2367319))))

(declare-fun b!6365243 () Bool)

(assert (=> b!6365243 (= e!3864868 e!3864864)))

(declare-fun c!1158896 () Bool)

(assert (=> b!6365243 (= c!1158896 ((_ is Cons!64995) (exprs!6157 (h!71444 zl!343))))))

(declare-fun b!6365244 () Bool)

(assert (=> b!6365244 (= e!3864868 (h!71443 (exprs!6157 (h!71444 zl!343))))))

(declare-fun b!6365245 () Bool)

(assert (=> b!6365245 (= e!3864864 (Concat!25118 (h!71443 (exprs!6157 (h!71444 zl!343))) (generalisedConcat!1870 (t!378715 (exprs!6157 (h!71444 zl!343))))))))

(declare-fun b!6365246 () Bool)

(declare-fun head!13039 (List!65119) Regex!16273)

(assert (=> b!6365246 (= e!3864863 (= lt!2367319 (head!13039 (exprs!6157 (h!71444 zl!343)))))))

(assert (= (and d!1996634 res!2618850) b!6365240))

(assert (= (and d!1996634 c!1158898) b!6365244))

(assert (= (and d!1996634 (not c!1158898)) b!6365243))

(assert (= (and b!6365243 c!1158896) b!6365245))

(assert (= (and b!6365243 (not c!1158896)) b!6365239))

(assert (= (and d!1996634 res!2618851) b!6365241))

(assert (= (and b!6365241 c!1158897) b!6365242))

(assert (= (and b!6365241 (not c!1158897)) b!6365238))

(assert (= (and b!6365238 c!1158899) b!6365246))

(assert (= (and b!6365238 (not c!1158899)) b!6365237))

(assert (=> b!6365240 m!7169184))

(declare-fun m!7169470 () Bool)

(assert (=> b!6365241 m!7169470))

(declare-fun m!7169472 () Bool)

(assert (=> b!6365237 m!7169472))

(declare-fun m!7169474 () Bool)

(assert (=> d!1996634 m!7169474))

(declare-fun m!7169476 () Bool)

(assert (=> d!1996634 m!7169476))

(declare-fun m!7169478 () Bool)

(assert (=> b!6365245 m!7169478))

(declare-fun m!7169480 () Bool)

(assert (=> b!6365238 m!7169480))

(assert (=> b!6365238 m!7169480))

(declare-fun m!7169482 () Bool)

(assert (=> b!6365238 m!7169482))

(declare-fun m!7169484 () Bool)

(assert (=> b!6365246 m!7169484))

(declare-fun m!7169486 () Bool)

(assert (=> b!6365242 m!7169486))

(assert (=> b!6364741 d!1996634))

(declare-fun d!1996644 () Bool)

(assert (=> d!1996644 (= (flatMap!1778 z!1189 lambda!350627) (choose!47275 z!1189 lambda!350627))))

(declare-fun bs!1594649 () Bool)

(assert (= bs!1594649 d!1996644))

(declare-fun m!7169488 () Bool)

(assert (=> bs!1594649 m!7169488))

(assert (=> b!6364743 d!1996644))

(declare-fun c!1158903 () Bool)

(declare-fun c!1158902 () Bool)

(declare-fun call!543296 () List!65119)

(declare-fun bm!543286 () Bool)

(declare-fun c!1158906 () Bool)

(declare-fun call!543291 () (InoxSet Context!11314))

(assert (=> bm!543286 (= call!543291 (derivationStepZipperDown!1521 (ite c!1158906 (regTwo!33059 (h!71443 (exprs!6157 (h!71444 zl!343)))) (ite c!1158903 (regTwo!33058 (h!71443 (exprs!6157 (h!71444 zl!343)))) (ite c!1158902 (regOne!33058 (h!71443 (exprs!6157 (h!71444 zl!343)))) (reg!16602 (h!71443 (exprs!6157 (h!71444 zl!343))))))) (ite (or c!1158906 c!1158903) lt!2367233 (Context!11315 call!543296)) (h!71442 s!2326)))))

(declare-fun b!6365256 () Bool)

(declare-fun e!3864880 () (InoxSet Context!11314))

(declare-fun call!543294 () (InoxSet Context!11314))

(assert (=> b!6365256 (= e!3864880 call!543294)))

(declare-fun b!6365257 () Bool)

(declare-fun e!3864876 () (InoxSet Context!11314))

(declare-fun e!3864877 () (InoxSet Context!11314))

(assert (=> b!6365257 (= e!3864876 e!3864877)))

(assert (=> b!6365257 (= c!1158906 ((_ is Union!16273) (h!71443 (exprs!6157 (h!71444 zl!343)))))))

(declare-fun b!6365258 () Bool)

(assert (=> b!6365258 (= e!3864876 (store ((as const (Array Context!11314 Bool)) false) lt!2367233 true))))

(declare-fun b!6365259 () Bool)

(declare-fun e!3864878 () (InoxSet Context!11314))

(assert (=> b!6365259 (= e!3864878 e!3864880)))

(assert (=> b!6365259 (= c!1158902 ((_ is Concat!25118) (h!71443 (exprs!6157 (h!71444 zl!343)))))))

(declare-fun call!543295 () List!65119)

(declare-fun bm!543287 () Bool)

(assert (=> bm!543287 (= call!543295 ($colon$colon!2133 (exprs!6157 lt!2367233) (ite (or c!1158903 c!1158902) (regTwo!33058 (h!71443 (exprs!6157 (h!71444 zl!343)))) (h!71443 (exprs!6157 (h!71444 zl!343))))))))

(declare-fun b!6365260 () Bool)

(declare-fun e!3864879 () Bool)

(assert (=> b!6365260 (= c!1158903 e!3864879)))

(declare-fun res!2618857 () Bool)

(assert (=> b!6365260 (=> (not res!2618857) (not e!3864879))))

(assert (=> b!6365260 (= res!2618857 ((_ is Concat!25118) (h!71443 (exprs!6157 (h!71444 zl!343)))))))

(assert (=> b!6365260 (= e!3864877 e!3864878)))

(declare-fun b!6365261 () Bool)

(assert (=> b!6365261 (= e!3864879 (nullable!6266 (regOne!33058 (h!71443 (exprs!6157 (h!71444 zl!343))))))))

(declare-fun bm!543289 () Bool)

(assert (=> bm!543289 (= call!543296 call!543295)))

(declare-fun call!543293 () (InoxSet Context!11314))

(declare-fun bm!543290 () Bool)

(assert (=> bm!543290 (= call!543293 (derivationStepZipperDown!1521 (ite c!1158906 (regOne!33059 (h!71443 (exprs!6157 (h!71444 zl!343)))) (regOne!33058 (h!71443 (exprs!6157 (h!71444 zl!343))))) (ite c!1158906 lt!2367233 (Context!11315 call!543295)) (h!71442 s!2326)))))

(declare-fun bm!543291 () Bool)

(declare-fun call!543292 () (InoxSet Context!11314))

(assert (=> bm!543291 (= call!543292 call!543291)))

(declare-fun b!6365262 () Bool)

(declare-fun c!1158904 () Bool)

(assert (=> b!6365262 (= c!1158904 ((_ is Star!16273) (h!71443 (exprs!6157 (h!71444 zl!343)))))))

(declare-fun e!3864881 () (InoxSet Context!11314))

(assert (=> b!6365262 (= e!3864880 e!3864881)))

(declare-fun b!6365263 () Bool)

(assert (=> b!6365263 (= e!3864878 ((_ map or) call!543293 call!543292))))

(declare-fun b!6365264 () Bool)

(assert (=> b!6365264 (= e!3864877 ((_ map or) call!543293 call!543291))))

(declare-fun d!1996646 () Bool)

(declare-fun c!1158905 () Bool)

(assert (=> d!1996646 (= c!1158905 (and ((_ is ElementMatch!16273) (h!71443 (exprs!6157 (h!71444 zl!343)))) (= (c!1158752 (h!71443 (exprs!6157 (h!71444 zl!343)))) (h!71442 s!2326))))))

(assert (=> d!1996646 (= (derivationStepZipperDown!1521 (h!71443 (exprs!6157 (h!71444 zl!343))) lt!2367233 (h!71442 s!2326)) e!3864876)))

(declare-fun bm!543288 () Bool)

(assert (=> bm!543288 (= call!543294 call!543292)))

(declare-fun b!6365265 () Bool)

(assert (=> b!6365265 (= e!3864881 call!543294)))

(declare-fun b!6365266 () Bool)

(assert (=> b!6365266 (= e!3864881 ((as const (Array Context!11314 Bool)) false))))

(assert (= (and d!1996646 c!1158905) b!6365258))

(assert (= (and d!1996646 (not c!1158905)) b!6365257))

(assert (= (and b!6365257 c!1158906) b!6365264))

(assert (= (and b!6365257 (not c!1158906)) b!6365260))

(assert (= (and b!6365260 res!2618857) b!6365261))

(assert (= (and b!6365260 c!1158903) b!6365263))

(assert (= (and b!6365260 (not c!1158903)) b!6365259))

(assert (= (and b!6365259 c!1158902) b!6365256))

(assert (= (and b!6365259 (not c!1158902)) b!6365262))

(assert (= (and b!6365262 c!1158904) b!6365265))

(assert (= (and b!6365262 (not c!1158904)) b!6365266))

(assert (= (or b!6365256 b!6365265) bm!543289))

(assert (= (or b!6365256 b!6365265) bm!543288))

(assert (= (or b!6365263 bm!543289) bm!543287))

(assert (= (or b!6365263 bm!543288) bm!543291))

(assert (= (or b!6365264 bm!543291) bm!543286))

(assert (= (or b!6365264 b!6365263) bm!543290))

(declare-fun m!7169496 () Bool)

(assert (=> bm!543286 m!7169496))

(declare-fun m!7169498 () Bool)

(assert (=> b!6365261 m!7169498))

(declare-fun m!7169500 () Bool)

(assert (=> b!6365258 m!7169500))

(declare-fun m!7169502 () Bool)

(assert (=> bm!543287 m!7169502))

(declare-fun m!7169504 () Bool)

(assert (=> bm!543290 m!7169504))

(assert (=> b!6364743 d!1996646))

(declare-fun d!1996650 () Bool)

(assert (=> d!1996650 (= (nullable!6266 (h!71443 (exprs!6157 (h!71444 zl!343)))) (nullableFct!2213 (h!71443 (exprs!6157 (h!71444 zl!343)))))))

(declare-fun bs!1594650 () Bool)

(assert (= bs!1594650 d!1996650))

(declare-fun m!7169506 () Bool)

(assert (=> bs!1594650 m!7169506))

(assert (=> b!6364743 d!1996650))

(declare-fun d!1996652 () Bool)

(declare-fun c!1158907 () Bool)

(declare-fun e!3864882 () Bool)

(assert (=> d!1996652 (= c!1158907 e!3864882)))

(declare-fun res!2618858 () Bool)

(assert (=> d!1996652 (=> (not res!2618858) (not e!3864882))))

(assert (=> d!1996652 (= res!2618858 ((_ is Cons!64995) (exprs!6157 (Context!11315 (Cons!64995 (h!71443 (exprs!6157 (h!71444 zl!343))) (t!378715 (exprs!6157 (h!71444 zl!343))))))))))

(declare-fun e!3864883 () (InoxSet Context!11314))

(assert (=> d!1996652 (= (derivationStepZipperUp!1447 (Context!11315 (Cons!64995 (h!71443 (exprs!6157 (h!71444 zl!343))) (t!378715 (exprs!6157 (h!71444 zl!343))))) (h!71442 s!2326)) e!3864883)))

(declare-fun b!6365267 () Bool)

(declare-fun e!3864884 () (InoxSet Context!11314))

(assert (=> b!6365267 (= e!3864883 e!3864884)))

(declare-fun c!1158908 () Bool)

(assert (=> b!6365267 (= c!1158908 ((_ is Cons!64995) (exprs!6157 (Context!11315 (Cons!64995 (h!71443 (exprs!6157 (h!71444 zl!343))) (t!378715 (exprs!6157 (h!71444 zl!343))))))))))

(declare-fun bm!543292 () Bool)

(declare-fun call!543297 () (InoxSet Context!11314))

(assert (=> bm!543292 (= call!543297 (derivationStepZipperDown!1521 (h!71443 (exprs!6157 (Context!11315 (Cons!64995 (h!71443 (exprs!6157 (h!71444 zl!343))) (t!378715 (exprs!6157 (h!71444 zl!343))))))) (Context!11315 (t!378715 (exprs!6157 (Context!11315 (Cons!64995 (h!71443 (exprs!6157 (h!71444 zl!343))) (t!378715 (exprs!6157 (h!71444 zl!343)))))))) (h!71442 s!2326)))))

(declare-fun b!6365268 () Bool)

(assert (=> b!6365268 (= e!3864884 ((as const (Array Context!11314 Bool)) false))))

(declare-fun b!6365269 () Bool)

(assert (=> b!6365269 (= e!3864882 (nullable!6266 (h!71443 (exprs!6157 (Context!11315 (Cons!64995 (h!71443 (exprs!6157 (h!71444 zl!343))) (t!378715 (exprs!6157 (h!71444 zl!343)))))))))))

(declare-fun b!6365270 () Bool)

(assert (=> b!6365270 (= e!3864884 call!543297)))

(declare-fun b!6365271 () Bool)

(assert (=> b!6365271 (= e!3864883 ((_ map or) call!543297 (derivationStepZipperUp!1447 (Context!11315 (t!378715 (exprs!6157 (Context!11315 (Cons!64995 (h!71443 (exprs!6157 (h!71444 zl!343))) (t!378715 (exprs!6157 (h!71444 zl!343)))))))) (h!71442 s!2326))))))

(assert (= (and d!1996652 res!2618858) b!6365269))

(assert (= (and d!1996652 c!1158907) b!6365271))

(assert (= (and d!1996652 (not c!1158907)) b!6365267))

(assert (= (and b!6365267 c!1158908) b!6365270))

(assert (= (and b!6365267 (not c!1158908)) b!6365268))

(assert (= (or b!6365271 b!6365270) bm!543292))

(declare-fun m!7169508 () Bool)

(assert (=> bm!543292 m!7169508))

(declare-fun m!7169510 () Bool)

(assert (=> b!6365269 m!7169510))

(declare-fun m!7169512 () Bool)

(assert (=> b!6365271 m!7169512))

(assert (=> b!6364743 d!1996652))

(declare-fun d!1996654 () Bool)

(declare-fun c!1158909 () Bool)

(declare-fun e!3864885 () Bool)

(assert (=> d!1996654 (= c!1158909 e!3864885)))

(declare-fun res!2618859 () Bool)

(assert (=> d!1996654 (=> (not res!2618859) (not e!3864885))))

(assert (=> d!1996654 (= res!2618859 ((_ is Cons!64995) (exprs!6157 lt!2367233)))))

(declare-fun e!3864886 () (InoxSet Context!11314))

(assert (=> d!1996654 (= (derivationStepZipperUp!1447 lt!2367233 (h!71442 s!2326)) e!3864886)))

(declare-fun b!6365272 () Bool)

(declare-fun e!3864887 () (InoxSet Context!11314))

(assert (=> b!6365272 (= e!3864886 e!3864887)))

(declare-fun c!1158910 () Bool)

(assert (=> b!6365272 (= c!1158910 ((_ is Cons!64995) (exprs!6157 lt!2367233)))))

(declare-fun bm!543293 () Bool)

(declare-fun call!543298 () (InoxSet Context!11314))

(assert (=> bm!543293 (= call!543298 (derivationStepZipperDown!1521 (h!71443 (exprs!6157 lt!2367233)) (Context!11315 (t!378715 (exprs!6157 lt!2367233))) (h!71442 s!2326)))))

(declare-fun b!6365273 () Bool)

(assert (=> b!6365273 (= e!3864887 ((as const (Array Context!11314 Bool)) false))))

(declare-fun b!6365274 () Bool)

(assert (=> b!6365274 (= e!3864885 (nullable!6266 (h!71443 (exprs!6157 lt!2367233))))))

(declare-fun b!6365275 () Bool)

(assert (=> b!6365275 (= e!3864887 call!543298)))

(declare-fun b!6365276 () Bool)

(assert (=> b!6365276 (= e!3864886 ((_ map or) call!543298 (derivationStepZipperUp!1447 (Context!11315 (t!378715 (exprs!6157 lt!2367233))) (h!71442 s!2326))))))

(assert (= (and d!1996654 res!2618859) b!6365274))

(assert (= (and d!1996654 c!1158909) b!6365276))

(assert (= (and d!1996654 (not c!1158909)) b!6365272))

(assert (= (and b!6365272 c!1158910) b!6365275))

(assert (= (and b!6365272 (not c!1158910)) b!6365273))

(assert (= (or b!6365276 b!6365275) bm!543293))

(declare-fun m!7169514 () Bool)

(assert (=> bm!543293 m!7169514))

(declare-fun m!7169516 () Bool)

(assert (=> b!6365274 m!7169516))

(declare-fun m!7169518 () Bool)

(assert (=> b!6365276 m!7169518))

(assert (=> b!6364743 d!1996654))

(declare-fun d!1996656 () Bool)

(assert (=> d!1996656 (= (flatMap!1778 z!1189 lambda!350627) (dynLambda!25782 lambda!350627 (h!71444 zl!343)))))

(declare-fun lt!2367320 () Unit!158423)

(assert (=> d!1996656 (= lt!2367320 (choose!47276 z!1189 (h!71444 zl!343) lambda!350627))))

(assert (=> d!1996656 (= z!1189 (store ((as const (Array Context!11314 Bool)) false) (h!71444 zl!343) true))))

(assert (=> d!1996656 (= (lemmaFlatMapOnSingletonSet!1304 z!1189 (h!71444 zl!343) lambda!350627) lt!2367320)))

(declare-fun b_lambda!241937 () Bool)

(assert (=> (not b_lambda!241937) (not d!1996656)))

(declare-fun bs!1594651 () Bool)

(assert (= bs!1594651 d!1996656))

(assert (=> bs!1594651 m!7169180))

(declare-fun m!7169520 () Bool)

(assert (=> bs!1594651 m!7169520))

(declare-fun m!7169522 () Bool)

(assert (=> bs!1594651 m!7169522))

(declare-fun m!7169524 () Bool)

(assert (=> bs!1594651 m!7169524))

(assert (=> b!6364743 d!1996656))

(declare-fun d!1996658 () Bool)

(declare-fun c!1158911 () Bool)

(declare-fun e!3864888 () Bool)

(assert (=> d!1996658 (= c!1158911 e!3864888)))

(declare-fun res!2618860 () Bool)

(assert (=> d!1996658 (=> (not res!2618860) (not e!3864888))))

(assert (=> d!1996658 (= res!2618860 ((_ is Cons!64995) (exprs!6157 (h!71444 zl!343))))))

(declare-fun e!3864889 () (InoxSet Context!11314))

(assert (=> d!1996658 (= (derivationStepZipperUp!1447 (h!71444 zl!343) (h!71442 s!2326)) e!3864889)))

(declare-fun b!6365277 () Bool)

(declare-fun e!3864890 () (InoxSet Context!11314))

(assert (=> b!6365277 (= e!3864889 e!3864890)))

(declare-fun c!1158912 () Bool)

(assert (=> b!6365277 (= c!1158912 ((_ is Cons!64995) (exprs!6157 (h!71444 zl!343))))))

(declare-fun bm!543294 () Bool)

(declare-fun call!543299 () (InoxSet Context!11314))

(assert (=> bm!543294 (= call!543299 (derivationStepZipperDown!1521 (h!71443 (exprs!6157 (h!71444 zl!343))) (Context!11315 (t!378715 (exprs!6157 (h!71444 zl!343)))) (h!71442 s!2326)))))

(declare-fun b!6365278 () Bool)

(assert (=> b!6365278 (= e!3864890 ((as const (Array Context!11314 Bool)) false))))

(declare-fun b!6365279 () Bool)

(assert (=> b!6365279 (= e!3864888 (nullable!6266 (h!71443 (exprs!6157 (h!71444 zl!343)))))))

(declare-fun b!6365280 () Bool)

(assert (=> b!6365280 (= e!3864890 call!543299)))

(declare-fun b!6365281 () Bool)

(assert (=> b!6365281 (= e!3864889 ((_ map or) call!543299 (derivationStepZipperUp!1447 (Context!11315 (t!378715 (exprs!6157 (h!71444 zl!343)))) (h!71442 s!2326))))))

(assert (= (and d!1996658 res!2618860) b!6365279))

(assert (= (and d!1996658 c!1158911) b!6365281))

(assert (= (and d!1996658 (not c!1158911)) b!6365277))

(assert (= (and b!6365277 c!1158912) b!6365280))

(assert (= (and b!6365277 (not c!1158912)) b!6365278))

(assert (= (or b!6365281 b!6365280) bm!543294))

(declare-fun m!7169526 () Bool)

(assert (=> bm!543294 m!7169526))

(assert (=> b!6365279 m!7169178))

(declare-fun m!7169528 () Bool)

(assert (=> b!6365281 m!7169528))

(assert (=> b!6364743 d!1996658))

(declare-fun bs!1594652 () Bool)

(declare-fun d!1996660 () Bool)

(assert (= bs!1594652 (and d!1996660 d!1996566)))

(declare-fun lambda!350672 () Int)

(assert (=> bs!1594652 (= lambda!350672 lambda!350651)))

(declare-fun bs!1594653 () Bool)

(assert (= bs!1594653 (and d!1996660 d!1996588)))

(assert (=> bs!1594653 (= lambda!350672 lambda!350652)))

(declare-fun bs!1594654 () Bool)

(assert (= bs!1594654 (and d!1996660 d!1996634)))

(assert (=> bs!1594654 (= lambda!350672 lambda!350671)))

(assert (=> d!1996660 (= (inv!83929 setElem!43368) (forall!15451 (exprs!6157 setElem!43368) lambda!350672))))

(declare-fun bs!1594655 () Bool)

(assert (= bs!1594655 d!1996660))

(declare-fun m!7169530 () Bool)

(assert (=> bs!1594655 m!7169530))

(assert (=> setNonEmpty!43368 d!1996660))

(declare-fun bs!1594662 () Bool)

(declare-fun d!1996662 () Bool)

(assert (= bs!1594662 (and d!1996662 d!1996566)))

(declare-fun lambda!350678 () Int)

(assert (=> bs!1594662 (= lambda!350678 lambda!350651)))

(declare-fun bs!1594663 () Bool)

(assert (= bs!1594663 (and d!1996662 d!1996588)))

(assert (=> bs!1594663 (= lambda!350678 lambda!350652)))

(declare-fun bs!1594664 () Bool)

(assert (= bs!1594664 (and d!1996662 d!1996634)))

(assert (=> bs!1594664 (= lambda!350678 lambda!350671)))

(declare-fun bs!1594665 () Bool)

(assert (= bs!1594665 (and d!1996662 d!1996660)))

(assert (=> bs!1594665 (= lambda!350678 lambda!350672)))

(declare-fun b!6365334 () Bool)

(declare-fun e!3864923 () Regex!16273)

(declare-fun e!3864926 () Regex!16273)

(assert (=> b!6365334 (= e!3864923 e!3864926)))

(declare-fun c!1158935 () Bool)

(assert (=> b!6365334 (= c!1158935 ((_ is Cons!64995) (unfocusZipperList!1694 zl!343)))))

(declare-fun b!6365336 () Bool)

(assert (=> b!6365336 (= e!3864926 (Union!16273 (h!71443 (unfocusZipperList!1694 zl!343)) (generalisedUnion!2117 (t!378715 (unfocusZipperList!1694 zl!343)))))))

(declare-fun b!6365337 () Bool)

(declare-fun e!3864925 () Bool)

(declare-fun lt!2367329 () Regex!16273)

(assert (=> b!6365337 (= e!3864925 (= lt!2367329 (head!13039 (unfocusZipperList!1694 zl!343))))))

(declare-fun b!6365338 () Bool)

(declare-fun e!3864928 () Bool)

(assert (=> b!6365338 (= e!3864928 (isEmpty!37102 (t!378715 (unfocusZipperList!1694 zl!343))))))

(declare-fun b!6365339 () Bool)

(declare-fun e!3864927 () Bool)

(assert (=> b!6365339 (= e!3864927 e!3864925)))

(declare-fun c!1158933 () Bool)

(assert (=> b!6365339 (= c!1158933 (isEmpty!37102 (tail!12124 (unfocusZipperList!1694 zl!343))))))

(declare-fun b!6365340 () Bool)

(declare-fun isEmptyLang!1681 (Regex!16273) Bool)

(assert (=> b!6365340 (= e!3864927 (isEmptyLang!1681 lt!2367329))))

(declare-fun b!6365341 () Bool)

(assert (=> b!6365341 (= e!3864926 EmptyLang!16273)))

(declare-fun b!6365335 () Bool)

(declare-fun e!3864924 () Bool)

(assert (=> b!6365335 (= e!3864924 e!3864927)))

(declare-fun c!1158934 () Bool)

(assert (=> b!6365335 (= c!1158934 (isEmpty!37102 (unfocusZipperList!1694 zl!343)))))

(assert (=> d!1996662 e!3864924))

(declare-fun res!2618874 () Bool)

(assert (=> d!1996662 (=> (not res!2618874) (not e!3864924))))

(assert (=> d!1996662 (= res!2618874 (validRegex!8009 lt!2367329))))

(assert (=> d!1996662 (= lt!2367329 e!3864923)))

(declare-fun c!1158936 () Bool)

(assert (=> d!1996662 (= c!1158936 e!3864928)))

(declare-fun res!2618873 () Bool)

(assert (=> d!1996662 (=> (not res!2618873) (not e!3864928))))

(assert (=> d!1996662 (= res!2618873 ((_ is Cons!64995) (unfocusZipperList!1694 zl!343)))))

(assert (=> d!1996662 (forall!15451 (unfocusZipperList!1694 zl!343) lambda!350678)))

(assert (=> d!1996662 (= (generalisedUnion!2117 (unfocusZipperList!1694 zl!343)) lt!2367329)))

(declare-fun b!6365342 () Bool)

(declare-fun isUnion!1111 (Regex!16273) Bool)

(assert (=> b!6365342 (= e!3864925 (isUnion!1111 lt!2367329))))

(declare-fun b!6365343 () Bool)

(assert (=> b!6365343 (= e!3864923 (h!71443 (unfocusZipperList!1694 zl!343)))))

(assert (= (and d!1996662 res!2618873) b!6365338))

(assert (= (and d!1996662 c!1158936) b!6365343))

(assert (= (and d!1996662 (not c!1158936)) b!6365334))

(assert (= (and b!6365334 c!1158935) b!6365336))

(assert (= (and b!6365334 (not c!1158935)) b!6365341))

(assert (= (and d!1996662 res!2618874) b!6365335))

(assert (= (and b!6365335 c!1158934) b!6365340))

(assert (= (and b!6365335 (not c!1158934)) b!6365339))

(assert (= (and b!6365339 c!1158933) b!6365337))

(assert (= (and b!6365339 (not c!1158933)) b!6365342))

(assert (=> b!6365335 m!7169154))

(declare-fun m!7169560 () Bool)

(assert (=> b!6365335 m!7169560))

(declare-fun m!7169562 () Bool)

(assert (=> b!6365342 m!7169562))

(declare-fun m!7169564 () Bool)

(assert (=> d!1996662 m!7169564))

(assert (=> d!1996662 m!7169154))

(declare-fun m!7169566 () Bool)

(assert (=> d!1996662 m!7169566))

(declare-fun m!7169568 () Bool)

(assert (=> b!6365338 m!7169568))

(assert (=> b!6365337 m!7169154))

(declare-fun m!7169570 () Bool)

(assert (=> b!6365337 m!7169570))

(declare-fun m!7169572 () Bool)

(assert (=> b!6365336 m!7169572))

(declare-fun m!7169574 () Bool)

(assert (=> b!6365340 m!7169574))

(assert (=> b!6365339 m!7169154))

(declare-fun m!7169576 () Bool)

(assert (=> b!6365339 m!7169576))

(assert (=> b!6365339 m!7169576))

(declare-fun m!7169578 () Bool)

(assert (=> b!6365339 m!7169578))

(assert (=> b!6364723 d!1996662))

(declare-fun bs!1594670 () Bool)

(declare-fun d!1996678 () Bool)

(assert (= bs!1594670 (and d!1996678 d!1996660)))

(declare-fun lambda!350682 () Int)

(assert (=> bs!1594670 (= lambda!350682 lambda!350672)))

(declare-fun bs!1594671 () Bool)

(assert (= bs!1594671 (and d!1996678 d!1996588)))

(assert (=> bs!1594671 (= lambda!350682 lambda!350652)))

(declare-fun bs!1594672 () Bool)

(assert (= bs!1594672 (and d!1996678 d!1996566)))

(assert (=> bs!1594672 (= lambda!350682 lambda!350651)))

(declare-fun bs!1594673 () Bool)

(assert (= bs!1594673 (and d!1996678 d!1996662)))

(assert (=> bs!1594673 (= lambda!350682 lambda!350678)))

(declare-fun bs!1594674 () Bool)

(assert (= bs!1594674 (and d!1996678 d!1996634)))

(assert (=> bs!1594674 (= lambda!350682 lambda!350671)))

(declare-fun lt!2367333 () List!65119)

(assert (=> d!1996678 (forall!15451 lt!2367333 lambda!350682)))

(declare-fun e!3864937 () List!65119)

(assert (=> d!1996678 (= lt!2367333 e!3864937)))

(declare-fun c!1158943 () Bool)

(assert (=> d!1996678 (= c!1158943 ((_ is Cons!64996) zl!343))))

(assert (=> d!1996678 (= (unfocusZipperList!1694 zl!343) lt!2367333)))

(declare-fun b!6365358 () Bool)

(assert (=> b!6365358 (= e!3864937 (Cons!64995 (generalisedConcat!1870 (exprs!6157 (h!71444 zl!343))) (unfocusZipperList!1694 (t!378716 zl!343))))))

(declare-fun b!6365359 () Bool)

(assert (=> b!6365359 (= e!3864937 Nil!64995)))

(assert (= (and d!1996678 c!1158943) b!6365358))

(assert (= (and d!1996678 (not c!1158943)) b!6365359))

(declare-fun m!7169600 () Bool)

(assert (=> d!1996678 m!7169600))

(assert (=> b!6365358 m!7169186))

(declare-fun m!7169602 () Bool)

(assert (=> b!6365358 m!7169602))

(assert (=> b!6364723 d!1996678))

(declare-fun b!6365368 () Bool)

(declare-fun e!3864942 () Bool)

(declare-fun tp!1772377 () Bool)

(assert (=> b!6365368 (= e!3864942 (and tp_is_empty!41799 tp!1772377))))

(assert (=> b!6364719 (= tp!1772370 e!3864942)))

(assert (= (and b!6364719 ((_ is Cons!64994) (t!378714 s!2326))) b!6365368))

(declare-fun b!6365373 () Bool)

(declare-fun e!3864945 () Bool)

(declare-fun tp!1772382 () Bool)

(declare-fun tp!1772383 () Bool)

(assert (=> b!6365373 (= e!3864945 (and tp!1772382 tp!1772383))))

(assert (=> b!6364729 (= tp!1772369 e!3864945)))

(assert (= (and b!6364729 ((_ is Cons!64995) (exprs!6157 setElem!43368))) b!6365373))

(declare-fun b!6365374 () Bool)

(declare-fun e!3864946 () Bool)

(declare-fun tp!1772384 () Bool)

(declare-fun tp!1772385 () Bool)

(assert (=> b!6365374 (= e!3864946 (and tp!1772384 tp!1772385))))

(assert (=> b!6364721 (= tp!1772366 e!3864946)))

(assert (= (and b!6364721 ((_ is Cons!64995) (exprs!6157 (h!71444 zl!343)))) b!6365374))

(declare-fun e!3864950 () Bool)

(assert (=> b!6364745 (= tp!1772365 e!3864950)))

(declare-fun b!6365388 () Bool)

(declare-fun tp!1772400 () Bool)

(declare-fun tp!1772398 () Bool)

(assert (=> b!6365388 (= e!3864950 (and tp!1772400 tp!1772398))))

(declare-fun b!6365390 () Bool)

(declare-fun tp!1772396 () Bool)

(declare-fun tp!1772397 () Bool)

(assert (=> b!6365390 (= e!3864950 (and tp!1772396 tp!1772397))))

(declare-fun b!6365389 () Bool)

(declare-fun tp!1772399 () Bool)

(assert (=> b!6365389 (= e!3864950 tp!1772399)))

(declare-fun b!6365387 () Bool)

(assert (=> b!6365387 (= e!3864950 tp_is_empty!41799)))

(assert (= (and b!6364745 ((_ is ElementMatch!16273) (reg!16602 r!7292))) b!6365387))

(assert (= (and b!6364745 ((_ is Concat!25118) (reg!16602 r!7292))) b!6365388))

(assert (= (and b!6364745 ((_ is Star!16273) (reg!16602 r!7292))) b!6365389))

(assert (= (and b!6364745 ((_ is Union!16273) (reg!16602 r!7292))) b!6365390))

(declare-fun e!3864951 () Bool)

(assert (=> b!6364732 (= tp!1772374 e!3864951)))

(declare-fun b!6365392 () Bool)

(declare-fun tp!1772405 () Bool)

(declare-fun tp!1772403 () Bool)

(assert (=> b!6365392 (= e!3864951 (and tp!1772405 tp!1772403))))

(declare-fun b!6365394 () Bool)

(declare-fun tp!1772401 () Bool)

(declare-fun tp!1772402 () Bool)

(assert (=> b!6365394 (= e!3864951 (and tp!1772401 tp!1772402))))

(declare-fun b!6365393 () Bool)

(declare-fun tp!1772404 () Bool)

(assert (=> b!6365393 (= e!3864951 tp!1772404)))

(declare-fun b!6365391 () Bool)

(assert (=> b!6365391 (= e!3864951 tp_is_empty!41799)))

(assert (= (and b!6364732 ((_ is ElementMatch!16273) (regOne!33058 r!7292))) b!6365391))

(assert (= (and b!6364732 ((_ is Concat!25118) (regOne!33058 r!7292))) b!6365392))

(assert (= (and b!6364732 ((_ is Star!16273) (regOne!33058 r!7292))) b!6365393))

(assert (= (and b!6364732 ((_ is Union!16273) (regOne!33058 r!7292))) b!6365394))

(declare-fun e!3864952 () Bool)

(assert (=> b!6364732 (= tp!1772371 e!3864952)))

(declare-fun b!6365396 () Bool)

(declare-fun tp!1772410 () Bool)

(declare-fun tp!1772408 () Bool)

(assert (=> b!6365396 (= e!3864952 (and tp!1772410 tp!1772408))))

(declare-fun b!6365398 () Bool)

(declare-fun tp!1772406 () Bool)

(declare-fun tp!1772407 () Bool)

(assert (=> b!6365398 (= e!3864952 (and tp!1772406 tp!1772407))))

(declare-fun b!6365397 () Bool)

(declare-fun tp!1772409 () Bool)

(assert (=> b!6365397 (= e!3864952 tp!1772409)))

(declare-fun b!6365395 () Bool)

(assert (=> b!6365395 (= e!3864952 tp_is_empty!41799)))

(assert (= (and b!6364732 ((_ is ElementMatch!16273) (regTwo!33058 r!7292))) b!6365395))

(assert (= (and b!6364732 ((_ is Concat!25118) (regTwo!33058 r!7292))) b!6365396))

(assert (= (and b!6364732 ((_ is Star!16273) (regTwo!33058 r!7292))) b!6365397))

(assert (= (and b!6364732 ((_ is Union!16273) (regTwo!33058 r!7292))) b!6365398))

(declare-fun e!3864953 () Bool)

(assert (=> b!6364726 (= tp!1772367 e!3864953)))

(declare-fun b!6365400 () Bool)

(declare-fun tp!1772415 () Bool)

(declare-fun tp!1772413 () Bool)

(assert (=> b!6365400 (= e!3864953 (and tp!1772415 tp!1772413))))

(declare-fun b!6365402 () Bool)

(declare-fun tp!1772411 () Bool)

(declare-fun tp!1772412 () Bool)

(assert (=> b!6365402 (= e!3864953 (and tp!1772411 tp!1772412))))

(declare-fun b!6365401 () Bool)

(declare-fun tp!1772414 () Bool)

(assert (=> b!6365401 (= e!3864953 tp!1772414)))

(declare-fun b!6365399 () Bool)

(assert (=> b!6365399 (= e!3864953 tp_is_empty!41799)))

(assert (= (and b!6364726 ((_ is ElementMatch!16273) (regOne!33059 r!7292))) b!6365399))

(assert (= (and b!6364726 ((_ is Concat!25118) (regOne!33059 r!7292))) b!6365400))

(assert (= (and b!6364726 ((_ is Star!16273) (regOne!33059 r!7292))) b!6365401))

(assert (= (and b!6364726 ((_ is Union!16273) (regOne!33059 r!7292))) b!6365402))

(declare-fun e!3864954 () Bool)

(assert (=> b!6364726 (= tp!1772372 e!3864954)))

(declare-fun b!6365404 () Bool)

(declare-fun tp!1772420 () Bool)

(declare-fun tp!1772418 () Bool)

(assert (=> b!6365404 (= e!3864954 (and tp!1772420 tp!1772418))))

(declare-fun b!6365406 () Bool)

(declare-fun tp!1772416 () Bool)

(declare-fun tp!1772417 () Bool)

(assert (=> b!6365406 (= e!3864954 (and tp!1772416 tp!1772417))))

(declare-fun b!6365405 () Bool)

(declare-fun tp!1772419 () Bool)

(assert (=> b!6365405 (= e!3864954 tp!1772419)))

(declare-fun b!6365403 () Bool)

(assert (=> b!6365403 (= e!3864954 tp_is_empty!41799)))

(assert (= (and b!6364726 ((_ is ElementMatch!16273) (regTwo!33059 r!7292))) b!6365403))

(assert (= (and b!6364726 ((_ is Concat!25118) (regTwo!33059 r!7292))) b!6365404))

(assert (= (and b!6364726 ((_ is Star!16273) (regTwo!33059 r!7292))) b!6365405))

(assert (= (and b!6364726 ((_ is Union!16273) (regTwo!33059 r!7292))) b!6365406))

(declare-fun b!6365424 () Bool)

(declare-fun e!3864962 () Bool)

(declare-fun tp!1772435 () Bool)

(assert (=> b!6365424 (= e!3864962 tp!1772435)))

(declare-fun b!6365423 () Bool)

(declare-fun e!3864961 () Bool)

(declare-fun tp!1772436 () Bool)

(assert (=> b!6365423 (= e!3864961 (and (inv!83929 (h!71444 (t!378716 zl!343))) e!3864962 tp!1772436))))

(assert (=> b!6364738 (= tp!1772373 e!3864961)))

(assert (= b!6365423 b!6365424))

(assert (= (and b!6364738 ((_ is Cons!64996) (t!378716 zl!343))) b!6365423))

(declare-fun m!7169608 () Bool)

(assert (=> b!6365423 m!7169608))

(declare-fun condSetEmpty!43371 () Bool)

(assert (=> setNonEmpty!43368 (= condSetEmpty!43371 (= setRest!43368 ((as const (Array Context!11314 Bool)) false)))))

(declare-fun setRes!43371 () Bool)

(assert (=> setNonEmpty!43368 (= tp!1772368 setRes!43371)))

(declare-fun setIsEmpty!43371 () Bool)

(assert (=> setIsEmpty!43371 setRes!43371))

(declare-fun setNonEmpty!43371 () Bool)

(declare-fun e!3864971 () Bool)

(declare-fun setElem!43371 () Context!11314)

(declare-fun tp!1772456 () Bool)

(assert (=> setNonEmpty!43371 (= setRes!43371 (and tp!1772456 (inv!83929 setElem!43371) e!3864971))))

(declare-fun setRest!43371 () (InoxSet Context!11314))

(assert (=> setNonEmpty!43371 (= setRest!43368 ((_ map or) (store ((as const (Array Context!11314 Bool)) false) setElem!43371 true) setRest!43371))))

(declare-fun b!6365443 () Bool)

(declare-fun tp!1772455 () Bool)

(assert (=> b!6365443 (= e!3864971 tp!1772455)))

(assert (= (and setNonEmpty!43368 condSetEmpty!43371) setIsEmpty!43371))

(assert (= (and setNonEmpty!43368 (not condSetEmpty!43371)) setNonEmpty!43371))

(assert (= setNonEmpty!43371 b!6365443))

(declare-fun m!7169610 () Bool)

(assert (=> setNonEmpty!43371 m!7169610))

(declare-fun b_lambda!241941 () Bool)

(assert (= b_lambda!241933 (or b!6364743 b_lambda!241941)))

(declare-fun bs!1594680 () Bool)

(declare-fun d!1996682 () Bool)

(assert (= bs!1594680 (and d!1996682 b!6364743)))

(assert (=> bs!1594680 (= (dynLambda!25782 lambda!350627 lt!2367239) (derivationStepZipperUp!1447 lt!2367239 (h!71442 s!2326)))))

(assert (=> bs!1594680 m!7169164))

(assert (=> d!1996574 d!1996682))

(declare-fun b_lambda!241943 () Bool)

(assert (= b_lambda!241937 (or b!6364743 b_lambda!241943)))

(declare-fun bs!1594681 () Bool)

(declare-fun d!1996684 () Bool)

(assert (= bs!1594681 (and d!1996684 b!6364743)))

(assert (=> bs!1594681 (= (dynLambda!25782 lambda!350627 (h!71444 zl!343)) (derivationStepZipperUp!1447 (h!71444 zl!343) (h!71442 s!2326)))))

(assert (=> bs!1594681 m!7169174))

(assert (=> d!1996656 d!1996684))

(check-sat (not b!6364981) (not b!6365406) (not bm!543237) (not b!6365161) (not d!1996602) (not d!1996592) (not d!1996662) tp_is_empty!41799 (not b!6364921) (not b!6365337) (not b!6365388) (not bm!543244) (not b!6365032) (not b!6365271) (not setNonEmpty!43371) (not b!6365245) (not bm!543290) (not d!1996634) (not b!6365396) (not bs!1594680) (not b!6365392) (not d!1996616) (not b!6365397) (not bm!543236) (not b!6365373) (not d!1996628) (not b!6365240) (not b!6365002) (not d!1996590) (not b!6365077) (not d!1996548) (not b!6365390) (not bm!543286) (not d!1996556) (not b!6365336) (not b!6365339) (not bm!543265) (not b!6365374) (not b_lambda!241943) (not b!6365368) (not d!1996560) (not d!1996660) (not b!6364999) (not b!6365393) (not b!6365402) (not b!6365165) (not b!6365162) (not b!6365400) (not b!6364923) (not d!1996656) (not bm!543293) (not b!6365398) (not b!6365166) (not b!6364791) (not b!6365246) (not b!6365394) (not b!6364795) (not b!6365276) (not b!6365082) (not d!1996564) (not b!6365443) (not b!6365279) (not b!6365000) (not b!6364797) (not bm!543211) (not b!6364934) (not bm!543243) (not b!6365389) (not d!1996588) (not b!6365274) (not b!6365242) (not b!6364878) (not b!6365269) (not b!6364792) (not bm!543228) (not b!6364935) (not b!6364998) (not bm!543294) (not bm!543224) (not b!6365424) (not b!6365261) (not b!6365335) (not b!6365171) (not d!1996574) (not d!1996578) (not bm!543225) (not b!6365281) (not bm!543292) (not bs!1594681) (not bm!543287) (not b!6365423) (not b!6365342) (not d!1996586) (not d!1996568) (not b!6365338) (not b!6365340) (not d!1996600) (not b!6365401) (not d!1996678) (not b!6365001) (not b!6365241) (not b!6365405) (not b!6365404) (not d!1996644) (not b!6364798) (not d!1996650) (not d!1996552) (not b!6365238) (not b!6364793) (not b!6365237) (not d!1996550) (not d!1996538) (not d!1996566) (not b!6365167) (not b!6365358) (not b_lambda!241941))
(check-sat)
