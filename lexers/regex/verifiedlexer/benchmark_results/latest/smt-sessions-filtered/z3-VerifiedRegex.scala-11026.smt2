; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!571990 () Bool)

(assert start!571990)

(declare-fun b!5462916 () Bool)

(assert (=> b!5462916 true))

(assert (=> b!5462916 true))

(declare-fun lambda!290018 () Int)

(declare-fun lambda!290017 () Int)

(assert (=> b!5462916 (not (= lambda!290018 lambda!290017))))

(assert (=> b!5462916 true))

(assert (=> b!5462916 true))

(declare-fun lambda!290019 () Int)

(assert (=> b!5462916 (not (= lambda!290019 lambda!290017))))

(assert (=> b!5462916 (not (= lambda!290019 lambda!290018))))

(assert (=> b!5462916 true))

(assert (=> b!5462916 true))

(declare-fun b!5462910 () Bool)

(declare-fun e!3382626 () Bool)

(declare-fun tp!1502593 () Bool)

(assert (=> b!5462910 (= e!3382626 tp!1502593)))

(declare-fun b!5462911 () Bool)

(declare-fun res!2327166 () Bool)

(declare-fun e!3382621 () Bool)

(assert (=> b!5462911 (=> (not res!2327166) (not e!3382621))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30868 0))(
  ( (C!30869 (val!25136 Int)) )
))
(declare-datatypes ((Regex!15299 0))(
  ( (ElementMatch!15299 (c!954585 C!30868)) (Concat!24144 (regOne!31110 Regex!15299) (regTwo!31110 Regex!15299)) (EmptyExpr!15299) (Star!15299 (reg!15628 Regex!15299)) (EmptyLang!15299) (Union!15299 (regOne!31111 Regex!15299) (regTwo!31111 Regex!15299)) )
))
(declare-datatypes ((List!62196 0))(
  ( (Nil!62072) (Cons!62072 (h!68520 Regex!15299) (t!375425 List!62196)) )
))
(declare-datatypes ((Context!9366 0))(
  ( (Context!9367 (exprs!5183 List!62196)) )
))
(declare-fun z!1189 () (InoxSet Context!9366))

(declare-datatypes ((List!62197 0))(
  ( (Nil!62073) (Cons!62073 (h!68521 Context!9366) (t!375426 List!62197)) )
))
(declare-fun zl!343 () List!62197)

(declare-fun toList!9083 ((InoxSet Context!9366)) List!62197)

(assert (=> b!5462911 (= res!2327166 (= (toList!9083 z!1189) zl!343))))

(declare-fun b!5462912 () Bool)

(declare-fun e!3382620 () Bool)

(declare-fun tp_is_empty!39851 () Bool)

(declare-fun tp!1502589 () Bool)

(assert (=> b!5462912 (= e!3382620 (and tp_is_empty!39851 tp!1502589))))

(declare-fun b!5462913 () Bool)

(declare-fun e!3382623 () Bool)

(declare-fun tp!1502586 () Bool)

(assert (=> b!5462913 (= e!3382623 tp!1502586)))

(declare-fun b!5462914 () Bool)

(declare-fun e!3382624 () Bool)

(assert (=> b!5462914 (= e!3382621 (not e!3382624))))

(declare-fun res!2327158 () Bool)

(assert (=> b!5462914 (=> res!2327158 e!3382624)))

(get-info :version)

(assert (=> b!5462914 (= res!2327158 (not ((_ is Cons!62073) zl!343)))))

(declare-fun r!7292 () Regex!15299)

(declare-datatypes ((List!62198 0))(
  ( (Nil!62074) (Cons!62074 (h!68522 C!30868) (t!375427 List!62198)) )
))
(declare-fun s!2326 () List!62198)

(declare-fun matchR!7484 (Regex!15299 List!62198) Bool)

(declare-fun matchRSpec!2402 (Regex!15299 List!62198) Bool)

(assert (=> b!5462914 (= (matchR!7484 r!7292 s!2326) (matchRSpec!2402 r!7292 s!2326))))

(declare-datatypes ((Unit!155048 0))(
  ( (Unit!155049) )
))
(declare-fun lt!2232784 () Unit!155048)

(declare-fun mainMatchTheorem!2402 (Regex!15299 List!62198) Unit!155048)

(assert (=> b!5462914 (= lt!2232784 (mainMatchTheorem!2402 r!7292 s!2326))))

(declare-fun b!5462915 () Bool)

(declare-fun res!2327163 () Bool)

(assert (=> b!5462915 (=> res!2327163 e!3382624)))

(declare-fun isEmpty!34047 (List!62197) Bool)

(assert (=> b!5462915 (= res!2327163 (not (isEmpty!34047 (t!375426 zl!343))))))

(assert (=> b!5462916 (= e!3382624 true)))

(declare-fun Exists!2478 (Int) Bool)

(assert (=> b!5462916 (= (Exists!2478 lambda!290017) (Exists!2478 lambda!290019))))

(declare-fun lt!2232783 () Unit!155048)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1128 (Regex!15299 Regex!15299 List!62198) Unit!155048)

(assert (=> b!5462916 (= lt!2232783 (lemmaExistCutMatchRandMatchRSpecEquivalent!1128 (reg!15628 r!7292) r!7292 s!2326))))

(assert (=> b!5462916 (= (Exists!2478 lambda!290017) (Exists!2478 lambda!290018))))

(declare-fun lt!2232782 () Unit!155048)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!452 (Regex!15299 List!62198) Unit!155048)

(assert (=> b!5462916 (= lt!2232782 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!452 (reg!15628 r!7292) s!2326))))

(declare-datatypes ((tuple2!64992 0))(
  ( (tuple2!64993 (_1!35799 List!62198) (_2!35799 List!62198)) )
))
(declare-datatypes ((Option!15408 0))(
  ( (None!15407) (Some!15407 (v!51436 tuple2!64992)) )
))
(declare-fun isDefined!12111 (Option!15408) Bool)

(declare-fun findConcatSeparation!1822 (Regex!15299 Regex!15299 List!62198 List!62198 List!62198) Option!15408)

(assert (=> b!5462916 (= (isDefined!12111 (findConcatSeparation!1822 (reg!15628 r!7292) r!7292 Nil!62074 s!2326 s!2326)) (Exists!2478 lambda!290017))))

(declare-fun lt!2232785 () Unit!155048)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1586 (Regex!15299 Regex!15299 List!62198) Unit!155048)

(assert (=> b!5462916 (= lt!2232785 (lemmaFindConcatSeparationEquivalentToExists!1586 (reg!15628 r!7292) r!7292 s!2326))))

(declare-fun b!5462917 () Bool)

(declare-fun res!2327161 () Bool)

(assert (=> b!5462917 (=> res!2327161 e!3382624)))

(assert (=> b!5462917 (= res!2327161 (or ((_ is EmptyExpr!15299) r!7292) ((_ is EmptyLang!15299) r!7292) ((_ is ElementMatch!15299) r!7292) ((_ is Union!15299) r!7292) ((_ is Concat!24144) r!7292)))))

(declare-fun setIsEmpty!35761 () Bool)

(declare-fun setRes!35761 () Bool)

(assert (=> setIsEmpty!35761 setRes!35761))

(declare-fun res!2327165 () Bool)

(assert (=> start!571990 (=> (not res!2327165) (not e!3382621))))

(declare-fun validRegex!7035 (Regex!15299) Bool)

(assert (=> start!571990 (= res!2327165 (validRegex!7035 r!7292))))

(assert (=> start!571990 e!3382621))

(assert (=> start!571990 e!3382623))

(declare-fun condSetEmpty!35761 () Bool)

(assert (=> start!571990 (= condSetEmpty!35761 (= z!1189 ((as const (Array Context!9366 Bool)) false)))))

(assert (=> start!571990 setRes!35761))

(declare-fun e!3382622 () Bool)

(assert (=> start!571990 e!3382622))

(assert (=> start!571990 e!3382620))

(declare-fun tp!1502590 () Bool)

(declare-fun b!5462918 () Bool)

(declare-fun inv!81494 (Context!9366) Bool)

(assert (=> b!5462918 (= e!3382622 (and (inv!81494 (h!68521 zl!343)) e!3382626 tp!1502590))))

(declare-fun b!5462919 () Bool)

(declare-fun e!3382625 () Bool)

(declare-fun tp!1502588 () Bool)

(assert (=> b!5462919 (= e!3382625 tp!1502588)))

(declare-fun b!5462920 () Bool)

(declare-fun res!2327162 () Bool)

(assert (=> b!5462920 (=> res!2327162 e!3382624)))

(declare-fun generalisedUnion!1228 (List!62196) Regex!15299)

(declare-fun unfocusZipperList!741 (List!62197) List!62196)

(assert (=> b!5462920 (= res!2327162 (not (= r!7292 (generalisedUnion!1228 (unfocusZipperList!741 zl!343)))))))

(declare-fun b!5462921 () Bool)

(declare-fun res!2327159 () Bool)

(assert (=> b!5462921 (=> res!2327159 e!3382624)))

(assert (=> b!5462921 (= res!2327159 (not ((_ is Cons!62072) (exprs!5183 (h!68521 zl!343)))))))

(declare-fun b!5462922 () Bool)

(assert (=> b!5462922 (= e!3382623 tp_is_empty!39851)))

(declare-fun b!5462923 () Bool)

(declare-fun res!2327160 () Bool)

(assert (=> b!5462923 (=> res!2327160 e!3382624)))

(declare-fun generalisedConcat!968 (List!62196) Regex!15299)

(assert (=> b!5462923 (= res!2327160 (not (= r!7292 (generalisedConcat!968 (exprs!5183 (h!68521 zl!343))))))))

(declare-fun setElem!35761 () Context!9366)

(declare-fun tp!1502592 () Bool)

(declare-fun setNonEmpty!35761 () Bool)

(assert (=> setNonEmpty!35761 (= setRes!35761 (and tp!1502592 (inv!81494 setElem!35761) e!3382625))))

(declare-fun setRest!35761 () (InoxSet Context!9366))

(assert (=> setNonEmpty!35761 (= z!1189 ((_ map or) (store ((as const (Array Context!9366 Bool)) false) setElem!35761 true) setRest!35761))))

(declare-fun b!5462924 () Bool)

(declare-fun res!2327164 () Bool)

(assert (=> b!5462924 (=> (not res!2327164) (not e!3382621))))

(declare-fun unfocusZipper!1041 (List!62197) Regex!15299)

(assert (=> b!5462924 (= res!2327164 (= r!7292 (unfocusZipper!1041 zl!343)))))

(declare-fun b!5462925 () Bool)

(declare-fun tp!1502585 () Bool)

(declare-fun tp!1502587 () Bool)

(assert (=> b!5462925 (= e!3382623 (and tp!1502585 tp!1502587))))

(declare-fun b!5462926 () Bool)

(declare-fun tp!1502591 () Bool)

(declare-fun tp!1502584 () Bool)

(assert (=> b!5462926 (= e!3382623 (and tp!1502591 tp!1502584))))

(assert (= (and start!571990 res!2327165) b!5462911))

(assert (= (and b!5462911 res!2327166) b!5462924))

(assert (= (and b!5462924 res!2327164) b!5462914))

(assert (= (and b!5462914 (not res!2327158)) b!5462915))

(assert (= (and b!5462915 (not res!2327163)) b!5462923))

(assert (= (and b!5462923 (not res!2327160)) b!5462921))

(assert (= (and b!5462921 (not res!2327159)) b!5462920))

(assert (= (and b!5462920 (not res!2327162)) b!5462917))

(assert (= (and b!5462917 (not res!2327161)) b!5462916))

(assert (= (and start!571990 ((_ is ElementMatch!15299) r!7292)) b!5462922))

(assert (= (and start!571990 ((_ is Concat!24144) r!7292)) b!5462926))

(assert (= (and start!571990 ((_ is Star!15299) r!7292)) b!5462913))

(assert (= (and start!571990 ((_ is Union!15299) r!7292)) b!5462925))

(assert (= (and start!571990 condSetEmpty!35761) setIsEmpty!35761))

(assert (= (and start!571990 (not condSetEmpty!35761)) setNonEmpty!35761))

(assert (= setNonEmpty!35761 b!5462919))

(assert (= b!5462918 b!5462910))

(assert (= (and start!571990 ((_ is Cons!62073) zl!343)) b!5462918))

(assert (= (and start!571990 ((_ is Cons!62074) s!2326)) b!5462912))

(declare-fun m!6484000 () Bool)

(assert (=> b!5462914 m!6484000))

(declare-fun m!6484002 () Bool)

(assert (=> b!5462914 m!6484002))

(declare-fun m!6484004 () Bool)

(assert (=> b!5462914 m!6484004))

(declare-fun m!6484006 () Bool)

(assert (=> b!5462916 m!6484006))

(declare-fun m!6484008 () Bool)

(assert (=> b!5462916 m!6484008))

(declare-fun m!6484010 () Bool)

(assert (=> b!5462916 m!6484010))

(declare-fun m!6484012 () Bool)

(assert (=> b!5462916 m!6484012))

(assert (=> b!5462916 m!6484006))

(assert (=> b!5462916 m!6484006))

(assert (=> b!5462916 m!6484010))

(declare-fun m!6484014 () Bool)

(assert (=> b!5462916 m!6484014))

(declare-fun m!6484016 () Bool)

(assert (=> b!5462916 m!6484016))

(declare-fun m!6484018 () Bool)

(assert (=> b!5462916 m!6484018))

(declare-fun m!6484020 () Bool)

(assert (=> b!5462916 m!6484020))

(declare-fun m!6484022 () Bool)

(assert (=> b!5462920 m!6484022))

(assert (=> b!5462920 m!6484022))

(declare-fun m!6484024 () Bool)

(assert (=> b!5462920 m!6484024))

(declare-fun m!6484026 () Bool)

(assert (=> start!571990 m!6484026))

(declare-fun m!6484028 () Bool)

(assert (=> b!5462923 m!6484028))

(declare-fun m!6484030 () Bool)

(assert (=> setNonEmpty!35761 m!6484030))

(declare-fun m!6484032 () Bool)

(assert (=> b!5462924 m!6484032))

(declare-fun m!6484034 () Bool)

(assert (=> b!5462911 m!6484034))

(declare-fun m!6484036 () Bool)

(assert (=> b!5462915 m!6484036))

(declare-fun m!6484038 () Bool)

(assert (=> b!5462918 m!6484038))

(check-sat (not start!571990) (not b!5462920) (not b!5462912) (not b!5462918) (not b!5462924) tp_is_empty!39851 (not b!5462919) (not b!5462914) (not b!5462915) (not b!5462925) (not b!5462911) (not b!5462910) (not b!5462923) (not b!5462916) (not setNonEmpty!35761) (not b!5462913) (not b!5462926))
(check-sat)
