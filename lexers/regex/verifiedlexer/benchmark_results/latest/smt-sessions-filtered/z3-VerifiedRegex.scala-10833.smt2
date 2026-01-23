; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!557906 () Bool)

(assert start!557906)

(declare-fun b!5284603 () Bool)

(assert (=> b!5284603 true))

(assert (=> b!5284603 true))

(declare-fun lambda!267160 () Int)

(declare-fun lambda!267159 () Int)

(assert (=> b!5284603 (not (= lambda!267160 lambda!267159))))

(assert (=> b!5284603 true))

(assert (=> b!5284603 true))

(declare-fun b!5284590 () Bool)

(assert (=> b!5284590 true))

(declare-fun bs!1224754 () Bool)

(declare-fun b!5284609 () Bool)

(assert (= bs!1224754 (and b!5284609 b!5284603)))

(declare-datatypes ((C!30096 0))(
  ( (C!30097 (val!24750 Int)) )
))
(declare-datatypes ((Regex!14913 0))(
  ( (ElementMatch!14913 (c!916265 C!30096)) (Concat!23758 (regOne!30338 Regex!14913) (regTwo!30338 Regex!14913)) (EmptyExpr!14913) (Star!14913 (reg!15242 Regex!14913)) (EmptyLang!14913) (Union!14913 (regOne!30339 Regex!14913) (regTwo!30339 Regex!14913)) )
))
(declare-fun r!7292 () Regex!14913)

(declare-fun lambda!267162 () Int)

(declare-fun lt!2160015 () Regex!14913)

(assert (=> bs!1224754 (= (and (= (regOne!30338 (regOne!30338 r!7292)) (regOne!30338 r!7292)) (= lt!2160015 (regTwo!30338 r!7292))) (= lambda!267162 lambda!267159))))

(assert (=> bs!1224754 (not (= lambda!267162 lambda!267160))))

(assert (=> b!5284609 true))

(assert (=> b!5284609 true))

(assert (=> b!5284609 true))

(declare-fun b!5284582 () Bool)

(declare-fun res!2241327 () Bool)

(declare-fun e!3285687 () Bool)

(assert (=> b!5284582 (=> res!2241327 e!3285687)))

(declare-datatypes ((List!61038 0))(
  ( (Nil!60914) (Cons!60914 (h!67362 Regex!14913) (t!374241 List!61038)) )
))
(declare-datatypes ((Context!8594 0))(
  ( (Context!8595 (exprs!4797 List!61038)) )
))
(declare-datatypes ((List!61039 0))(
  ( (Nil!60915) (Cons!60915 (h!67363 Context!8594) (t!374242 List!61039)) )
))
(declare-fun zl!343 () List!61039)

(assert (=> b!5284582 (= res!2241327 (not (= (exprs!4797 (h!67363 zl!343)) (Cons!60914 (Concat!23758 (regOne!30338 (regOne!30338 r!7292)) (regTwo!30338 (regOne!30338 r!7292))) (t!374241 (exprs!4797 (h!67363 zl!343)))))))))

(declare-fun b!5284583 () Bool)

(declare-fun e!3285674 () Bool)

(declare-fun tp!1475944 () Bool)

(assert (=> b!5284583 (= e!3285674 tp!1475944)))

(declare-fun b!5284584 () Bool)

(declare-fun res!2241324 () Bool)

(declare-fun e!3285673 () Bool)

(assert (=> b!5284584 (=> res!2241324 e!3285673)))

(declare-fun generalisedUnion!842 (List!61038) Regex!14913)

(declare-fun unfocusZipperList!355 (List!61039) List!61038)

(assert (=> b!5284584 (= res!2241324 (not (= r!7292 (generalisedUnion!842 (unfocusZipperList!355 zl!343)))))))

(declare-fun b!5284585 () Bool)

(declare-fun e!3285685 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2159995 () (InoxSet Context!8594))

(declare-datatypes ((List!61040 0))(
  ( (Nil!60916) (Cons!60916 (h!67364 C!30096) (t!374243 List!61040)) )
))
(declare-fun s!2326 () List!61040)

(declare-fun matchZipper!1157 ((InoxSet Context!8594) List!61040) Bool)

(assert (=> b!5284585 (= e!3285685 (matchZipper!1157 lt!2159995 (t!374243 s!2326)))))

(declare-fun b!5284586 () Bool)

(declare-fun e!3285689 () Bool)

(declare-fun e!3285671 () Bool)

(assert (=> b!5284586 (= e!3285689 e!3285671)))

(declare-fun res!2241322 () Bool)

(assert (=> b!5284586 (=> res!2241322 e!3285671)))

(declare-fun e!3285676 () Bool)

(assert (=> b!5284586 (= res!2241322 e!3285676)))

(declare-fun res!2241328 () Bool)

(assert (=> b!5284586 (=> (not res!2241328) (not e!3285676))))

(declare-fun lt!2159990 () Bool)

(declare-fun lt!2159997 () Bool)

(assert (=> b!5284586 (= res!2241328 (not (= lt!2159990 lt!2159997)))))

(declare-fun lt!2160017 () (InoxSet Context!8594))

(assert (=> b!5284586 (= lt!2159990 (matchZipper!1157 lt!2160017 (t!374243 s!2326)))))

(declare-fun lt!2159984 () (InoxSet Context!8594))

(assert (=> b!5284586 (= (matchZipper!1157 lt!2159984 (t!374243 s!2326)) e!3285685)))

(declare-fun res!2241332 () Bool)

(assert (=> b!5284586 (=> res!2241332 e!3285685)))

(assert (=> b!5284586 (= res!2241332 lt!2159997)))

(declare-fun lt!2159992 () (InoxSet Context!8594))

(assert (=> b!5284586 (= lt!2159997 (matchZipper!1157 lt!2159992 (t!374243 s!2326)))))

(declare-datatypes ((Unit!153170 0))(
  ( (Unit!153171) )
))
(declare-fun lt!2159985 () Unit!153170)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!150 ((InoxSet Context!8594) (InoxSet Context!8594) List!61040) Unit!153170)

(assert (=> b!5284586 (= lt!2159985 (lemmaZipperConcatMatchesSameAsBothZippers!150 lt!2159992 lt!2159995 (t!374243 s!2326)))))

(declare-fun b!5284587 () Bool)

(declare-fun res!2241337 () Bool)

(assert (=> b!5284587 (=> res!2241337 e!3285673)))

(declare-fun generalisedConcat!582 (List!61038) Regex!14913)

(assert (=> b!5284587 (= res!2241337 (not (= r!7292 (generalisedConcat!582 (exprs!4797 (h!67363 zl!343))))))))

(declare-fun tp!1475940 () Bool)

(declare-fun setRes!33893 () Bool)

(declare-fun setElem!33893 () Context!8594)

(declare-fun setNonEmpty!33893 () Bool)

(declare-fun inv!80529 (Context!8594) Bool)

(assert (=> setNonEmpty!33893 (= setRes!33893 (and tp!1475940 (inv!80529 setElem!33893) e!3285674))))

(declare-fun z!1189 () (InoxSet Context!8594))

(declare-fun setRest!33893 () (InoxSet Context!8594))

(assert (=> setNonEmpty!33893 (= z!1189 ((_ map or) (store ((as const (Array Context!8594 Bool)) false) setElem!33893 true) setRest!33893))))

(declare-fun b!5284588 () Bool)

(declare-fun e!3285690 () Bool)

(assert (=> b!5284588 (= e!3285690 e!3285689)))

(declare-fun res!2241321 () Bool)

(assert (=> b!5284588 (=> res!2241321 e!3285689)))

(assert (=> b!5284588 (= res!2241321 (not (= lt!2160017 lt!2159984)))))

(assert (=> b!5284588 (= lt!2159984 ((_ map or) lt!2159992 lt!2159995))))

(declare-fun lt!2160012 () Context!8594)

(declare-fun derivationStepZipperDown!361 (Regex!14913 Context!8594 C!30096) (InoxSet Context!8594))

(assert (=> b!5284588 (= lt!2159995 (derivationStepZipperDown!361 (regTwo!30338 (regOne!30338 r!7292)) lt!2160012 (h!67364 s!2326)))))

(declare-fun lt!2159998 () Context!8594)

(assert (=> b!5284588 (= lt!2159992 (derivationStepZipperDown!361 (regOne!30338 (regOne!30338 r!7292)) lt!2159998 (h!67364 s!2326)))))

(declare-fun lt!2160009 () List!61038)

(assert (=> b!5284588 (= lt!2159998 (Context!8595 lt!2160009))))

(assert (=> b!5284588 (= lt!2160009 (Cons!60914 (regTwo!30338 (regOne!30338 r!7292)) (t!374241 (exprs!4797 (h!67363 zl!343)))))))

(declare-fun b!5284589 () Bool)

(declare-fun res!2241333 () Bool)

(assert (=> b!5284589 (=> res!2241333 e!3285673)))

(get-info :version)

(assert (=> b!5284589 (= res!2241333 (not ((_ is Cons!60914) (exprs!4797 (h!67363 zl!343)))))))

(declare-fun e!3285672 () Bool)

(assert (=> b!5284590 (= e!3285672 e!3285690)))

(declare-fun res!2241319 () Bool)

(assert (=> b!5284590 (=> res!2241319 e!3285690)))

(assert (=> b!5284590 (= res!2241319 (or (and ((_ is ElementMatch!14913) (regOne!30338 r!7292)) (= (c!916265 (regOne!30338 r!7292)) (h!67364 s!2326))) ((_ is Union!14913) (regOne!30338 r!7292)) (not ((_ is Concat!23758) (regOne!30338 r!7292)))))))

(declare-fun lt!2159987 () Unit!153170)

(declare-fun e!3285683 () Unit!153170)

(assert (=> b!5284590 (= lt!2159987 e!3285683)))

(declare-fun c!916264 () Bool)

(declare-fun nullable!5082 (Regex!14913) Bool)

(assert (=> b!5284590 (= c!916264 (nullable!5082 (h!67362 (exprs!4797 (h!67363 zl!343)))))))

(declare-fun lambda!267161 () Int)

(declare-fun flatMap!640 ((InoxSet Context!8594) Int) (InoxSet Context!8594))

(declare-fun derivationStepZipperUp!285 (Context!8594 C!30096) (InoxSet Context!8594))

(assert (=> b!5284590 (= (flatMap!640 z!1189 lambda!267161) (derivationStepZipperUp!285 (h!67363 zl!343) (h!67364 s!2326)))))

(declare-fun lt!2160010 () Unit!153170)

(declare-fun lemmaFlatMapOnSingletonSet!172 ((InoxSet Context!8594) Context!8594 Int) Unit!153170)

(assert (=> b!5284590 (= lt!2160010 (lemmaFlatMapOnSingletonSet!172 z!1189 (h!67363 zl!343) lambda!267161))))

(declare-fun lt!2159991 () (InoxSet Context!8594))

(assert (=> b!5284590 (= lt!2159991 (derivationStepZipperUp!285 lt!2160012 (h!67364 s!2326)))))

(assert (=> b!5284590 (= lt!2160017 (derivationStepZipperDown!361 (h!67362 (exprs!4797 (h!67363 zl!343))) lt!2160012 (h!67364 s!2326)))))

(assert (=> b!5284590 (= lt!2160012 (Context!8595 (t!374241 (exprs!4797 (h!67363 zl!343)))))))

(declare-fun lt!2160013 () (InoxSet Context!8594))

(assert (=> b!5284590 (= lt!2160013 (derivationStepZipperUp!285 (Context!8595 (Cons!60914 (h!67362 (exprs!4797 (h!67363 zl!343))) (t!374241 (exprs!4797 (h!67363 zl!343))))) (h!67364 s!2326)))))

(declare-fun b!5284591 () Bool)

(declare-fun res!2241338 () Bool)

(declare-fun e!3285680 () Bool)

(assert (=> b!5284591 (=> res!2241338 e!3285680)))

(declare-fun lt!2160011 () List!61039)

(declare-fun zipperDepth!30 (List!61039) Int)

(assert (=> b!5284591 (= res!2241338 (> (zipperDepth!30 lt!2160011) (zipperDepth!30 zl!343)))))

(declare-fun b!5284592 () Bool)

(declare-fun e!3285684 () Bool)

(assert (=> b!5284592 (= e!3285671 e!3285684)))

(declare-fun res!2241318 () Bool)

(assert (=> b!5284592 (=> res!2241318 e!3285684)))

(declare-fun lt!2159996 () (InoxSet Context!8594))

(declare-fun lt!2160016 () (InoxSet Context!8594))

(assert (=> b!5284592 (= res!2241318 (not (= lt!2159996 lt!2160016)))))

(declare-fun lt!2159988 () (InoxSet Context!8594))

(assert (=> b!5284592 (= lt!2160016 ((_ map or) lt!2159992 lt!2159988))))

(assert (=> b!5284592 (= lt!2159988 (derivationStepZipperUp!285 lt!2159998 (h!67364 s!2326)))))

(declare-fun lt!2159982 () Context!8594)

(declare-fun lt!2160004 () (InoxSet Context!8594))

(assert (=> b!5284592 (= (flatMap!640 lt!2160004 lambda!267161) (derivationStepZipperUp!285 lt!2159982 (h!67364 s!2326)))))

(declare-fun lt!2160008 () Unit!153170)

(assert (=> b!5284592 (= lt!2160008 (lemmaFlatMapOnSingletonSet!172 lt!2160004 lt!2159982 lambda!267161))))

(declare-fun lt!2159983 () (InoxSet Context!8594))

(assert (=> b!5284592 (= lt!2159983 (derivationStepZipperUp!285 lt!2159982 (h!67364 s!2326)))))

(declare-fun derivationStepZipper!1156 ((InoxSet Context!8594) C!30096) (InoxSet Context!8594))

(assert (=> b!5284592 (= lt!2159996 (derivationStepZipper!1156 lt!2160004 (h!67364 s!2326)))))

(declare-fun lt!2160018 () (InoxSet Context!8594))

(assert (=> b!5284592 (= lt!2160018 (store ((as const (Array Context!8594 Bool)) false) lt!2159998 true))))

(assert (=> b!5284592 (= lt!2160004 (store ((as const (Array Context!8594 Bool)) false) lt!2159982 true))))

(declare-fun lt!2159986 () List!61038)

(assert (=> b!5284592 (= lt!2159982 (Context!8595 lt!2159986))))

(assert (=> b!5284592 (= lt!2159986 (Cons!60914 (regOne!30338 (regOne!30338 r!7292)) lt!2160009))))

(declare-fun b!5284593 () Bool)

(assert (=> b!5284593 (= e!3285687 e!3285680)))

(declare-fun res!2241329 () Bool)

(assert (=> b!5284593 (=> res!2241329 e!3285680)))

(declare-fun zipperDepthTotal!74 (List!61039) Int)

(assert (=> b!5284593 (= res!2241329 (>= (zipperDepthTotal!74 lt!2160011) (zipperDepthTotal!74 zl!343)))))

(assert (=> b!5284593 (= lt!2160011 (Cons!60915 lt!2159982 Nil!60915))))

(declare-fun res!2241335 () Bool)

(declare-fun e!3285686 () Bool)

(assert (=> start!557906 (=> (not res!2241335) (not e!3285686))))

(declare-fun validRegex!6649 (Regex!14913) Bool)

(assert (=> start!557906 (= res!2241335 (validRegex!6649 r!7292))))

(assert (=> start!557906 e!3285686))

(declare-fun e!3285675 () Bool)

(assert (=> start!557906 e!3285675))

(declare-fun condSetEmpty!33893 () Bool)

(assert (=> start!557906 (= condSetEmpty!33893 (= z!1189 ((as const (Array Context!8594 Bool)) false)))))

(assert (=> start!557906 setRes!33893))

(declare-fun e!3285682 () Bool)

(assert (=> start!557906 e!3285682))

(declare-fun e!3285677 () Bool)

(assert (=> start!557906 e!3285677))

(declare-fun b!5284594 () Bool)

(declare-fun res!2241325 () Bool)

(assert (=> b!5284594 (=> res!2241325 e!3285672)))

(declare-fun isEmpty!32867 (List!61038) Bool)

(assert (=> b!5284594 (= res!2241325 (isEmpty!32867 (t!374241 (exprs!4797 (h!67363 zl!343)))))))

(declare-fun setIsEmpty!33893 () Bool)

(assert (=> setIsEmpty!33893 setRes!33893))

(declare-fun b!5284595 () Bool)

(declare-fun res!2241336 () Bool)

(assert (=> b!5284595 (=> res!2241336 e!3285673)))

(assert (=> b!5284595 (= res!2241336 (or ((_ is EmptyExpr!14913) r!7292) ((_ is EmptyLang!14913) r!7292) ((_ is ElementMatch!14913) r!7292) ((_ is Union!14913) r!7292) (not ((_ is Concat!23758) r!7292))))))

(declare-fun b!5284596 () Bool)

(declare-fun e!3285678 () Bool)

(assert (=> b!5284596 (= e!3285678 (matchZipper!1157 lt!2159991 (t!374243 s!2326)))))

(declare-fun b!5284597 () Bool)

(declare-fun tp_is_empty!39079 () Bool)

(declare-fun tp!1475943 () Bool)

(assert (=> b!5284597 (= e!3285677 (and tp_is_empty!39079 tp!1475943))))

(declare-fun b!5284598 () Bool)

(declare-fun e!3285681 () Bool)

(declare-fun tp!1475942 () Bool)

(assert (=> b!5284598 (= e!3285681 tp!1475942)))

(declare-fun b!5284599 () Bool)

(declare-fun tp!1475949 () Bool)

(assert (=> b!5284599 (= e!3285675 tp!1475949)))

(declare-fun b!5284600 () Bool)

(declare-fun tp!1475941 () Bool)

(declare-fun tp!1475945 () Bool)

(assert (=> b!5284600 (= e!3285675 (and tp!1475941 tp!1475945))))

(declare-fun b!5284601 () Bool)

(assert (=> b!5284601 (= e!3285684 e!3285687)))

(declare-fun res!2241341 () Bool)

(assert (=> b!5284601 (=> res!2241341 e!3285687)))

(declare-fun e!3285679 () Bool)

(assert (=> b!5284601 (= res!2241341 e!3285679)))

(declare-fun res!2241339 () Bool)

(assert (=> b!5284601 (=> (not res!2241339) (not e!3285679))))

(assert (=> b!5284601 (= res!2241339 (not (= lt!2159990 (matchZipper!1157 lt!2159996 (t!374243 s!2326)))))))

(declare-fun e!3285688 () Bool)

(assert (=> b!5284601 (= (matchZipper!1157 lt!2160016 (t!374243 s!2326)) e!3285688)))

(declare-fun res!2241334 () Bool)

(assert (=> b!5284601 (=> res!2241334 e!3285688)))

(assert (=> b!5284601 (= res!2241334 lt!2159997)))

(declare-fun lt!2160007 () Unit!153170)

(assert (=> b!5284601 (= lt!2160007 (lemmaZipperConcatMatchesSameAsBothZippers!150 lt!2159992 lt!2159988 (t!374243 s!2326)))))

(assert (=> b!5284601 (= (flatMap!640 lt!2160018 lambda!267161) (derivationStepZipperUp!285 lt!2159998 (h!67364 s!2326)))))

(declare-fun lt!2160003 () Unit!153170)

(assert (=> b!5284601 (= lt!2160003 (lemmaFlatMapOnSingletonSet!172 lt!2160018 lt!2159998 lambda!267161))))

(declare-fun b!5284602 () Bool)

(assert (=> b!5284602 (= e!3285679 (not (matchZipper!1157 (derivationStepZipper!1156 lt!2160018 (h!67364 s!2326)) (t!374243 s!2326))))))

(assert (=> b!5284603 (= e!3285673 e!3285672)))

(declare-fun res!2241331 () Bool)

(assert (=> b!5284603 (=> res!2241331 e!3285672)))

(declare-fun lt!2160014 () Bool)

(declare-fun lt!2160006 () Bool)

(assert (=> b!5284603 (= res!2241331 (or (not (= lt!2160014 lt!2160006)) ((_ is Nil!60916) s!2326)))))

(declare-fun Exists!2094 (Int) Bool)

(assert (=> b!5284603 (= (Exists!2094 lambda!267159) (Exists!2094 lambda!267160))))

(declare-fun lt!2159989 () Unit!153170)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!748 (Regex!14913 Regex!14913 List!61040) Unit!153170)

(assert (=> b!5284603 (= lt!2159989 (lemmaExistCutMatchRandMatchRSpecEquivalent!748 (regOne!30338 r!7292) (regTwo!30338 r!7292) s!2326))))

(assert (=> b!5284603 (= lt!2160006 (Exists!2094 lambda!267159))))

(declare-datatypes ((tuple2!64224 0))(
  ( (tuple2!64225 (_1!35415 List!61040) (_2!35415 List!61040)) )
))
(declare-datatypes ((Option!15024 0))(
  ( (None!15023) (Some!15023 (v!51052 tuple2!64224)) )
))
(declare-fun isDefined!11727 (Option!15024) Bool)

(declare-fun findConcatSeparation!1438 (Regex!14913 Regex!14913 List!61040 List!61040 List!61040) Option!15024)

(assert (=> b!5284603 (= lt!2160006 (isDefined!11727 (findConcatSeparation!1438 (regOne!30338 r!7292) (regTwo!30338 r!7292) Nil!60916 s!2326 s!2326)))))

(declare-fun lt!2159994 () Unit!153170)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1202 (Regex!14913 Regex!14913 List!61040) Unit!153170)

(assert (=> b!5284603 (= lt!2159994 (lemmaFindConcatSeparationEquivalentToExists!1202 (regOne!30338 r!7292) (regTwo!30338 r!7292) s!2326))))

(declare-fun b!5284604 () Bool)

(assert (=> b!5284604 (= e!3285686 (not e!3285673))))

(declare-fun res!2241316 () Bool)

(assert (=> b!5284604 (=> res!2241316 e!3285673)))

(assert (=> b!5284604 (= res!2241316 (not ((_ is Cons!60915) zl!343)))))

(declare-fun matchRSpec!2016 (Regex!14913 List!61040) Bool)

(assert (=> b!5284604 (= lt!2160014 (matchRSpec!2016 r!7292 s!2326))))

(declare-fun matchR!7098 (Regex!14913 List!61040) Bool)

(assert (=> b!5284604 (= lt!2160014 (matchR!7098 r!7292 s!2326))))

(declare-fun lt!2159980 () Unit!153170)

(declare-fun mainMatchTheorem!2016 (Regex!14913 List!61040) Unit!153170)

(assert (=> b!5284604 (= lt!2159980 (mainMatchTheorem!2016 r!7292 s!2326))))

(declare-fun b!5284605 () Bool)

(assert (=> b!5284605 (= e!3285676 (not (matchZipper!1157 lt!2159995 (t!374243 s!2326))))))

(declare-fun b!5284606 () Bool)

(declare-fun res!2241317 () Bool)

(assert (=> b!5284606 (=> (not res!2241317) (not e!3285686))))

(declare-fun toList!8697 ((InoxSet Context!8594)) List!61039)

(assert (=> b!5284606 (= res!2241317 (= (toList!8697 z!1189) zl!343))))

(declare-fun b!5284607 () Bool)

(declare-fun Unit!153172 () Unit!153170)

(assert (=> b!5284607 (= e!3285683 Unit!153172)))

(declare-fun lt!2159999 () Unit!153170)

(assert (=> b!5284607 (= lt!2159999 (lemmaZipperConcatMatchesSameAsBothZippers!150 lt!2160017 lt!2159991 (t!374243 s!2326)))))

(declare-fun res!2241323 () Bool)

(assert (=> b!5284607 (= res!2241323 (matchZipper!1157 lt!2160017 (t!374243 s!2326)))))

(assert (=> b!5284607 (=> res!2241323 e!3285678)))

(assert (=> b!5284607 (= (matchZipper!1157 ((_ map or) lt!2160017 lt!2159991) (t!374243 s!2326)) e!3285678)))

(declare-fun b!5284608 () Bool)

(declare-fun tp!1475948 () Bool)

(assert (=> b!5284608 (= e!3285682 (and (inv!80529 (h!67363 zl!343)) e!3285681 tp!1475948))))

(declare-fun lambda!267163 () Int)

(declare-fun forall!14321 (List!61038 Int) Bool)

(assert (=> b!5284609 (= e!3285680 (forall!14321 lt!2160009 lambda!267163))))

(assert (=> b!5284609 (= (isDefined!11727 (findConcatSeparation!1438 (regOne!30338 (regOne!30338 r!7292)) lt!2160015 Nil!60916 s!2326 s!2326)) (Exists!2094 lambda!267162))))

(declare-fun lt!2160001 () Unit!153170)

(assert (=> b!5284609 (= lt!2160001 (lemmaFindConcatSeparationEquivalentToExists!1202 (regOne!30338 (regOne!30338 r!7292)) lt!2160015 s!2326))))

(declare-fun lt!2159993 () Bool)

(declare-fun lt!2160005 () Regex!14913)

(assert (=> b!5284609 (= lt!2159993 (matchRSpec!2016 lt!2160005 s!2326))))

(declare-fun lt!2159981 () Unit!153170)

(assert (=> b!5284609 (= lt!2159981 (mainMatchTheorem!2016 lt!2160005 s!2326))))

(assert (=> b!5284609 (= (matchR!7098 lt!2160015 s!2326) (matchZipper!1157 lt!2160018 s!2326))))

(declare-fun lt!2160002 () Unit!153170)

(declare-fun theoremZipperRegexEquiv!323 ((InoxSet Context!8594) List!61039 Regex!14913 List!61040) Unit!153170)

(assert (=> b!5284609 (= lt!2160002 (theoremZipperRegexEquiv!323 lt!2160018 (Cons!60915 lt!2159998 Nil!60915) lt!2160015 s!2326))))

(assert (=> b!5284609 (= lt!2160015 (generalisedConcat!582 lt!2160009))))

(assert (=> b!5284609 (= lt!2159993 (matchZipper!1157 lt!2160004 s!2326))))

(assert (=> b!5284609 (= lt!2159993 (matchR!7098 lt!2160005 s!2326))))

(declare-fun lt!2160000 () Unit!153170)

(assert (=> b!5284609 (= lt!2160000 (theoremZipperRegexEquiv!323 lt!2160004 lt!2160011 lt!2160005 s!2326))))

(assert (=> b!5284609 (= lt!2160005 (generalisedConcat!582 lt!2159986))))

(declare-fun b!5284610 () Bool)

(declare-fun res!2241326 () Bool)

(assert (=> b!5284610 (=> res!2241326 e!3285690)))

(assert (=> b!5284610 (= res!2241326 (not (nullable!5082 (regOne!30338 (regOne!30338 r!7292)))))))

(declare-fun b!5284611 () Bool)

(declare-fun Unit!153173 () Unit!153170)

(assert (=> b!5284611 (= e!3285683 Unit!153173)))

(declare-fun b!5284612 () Bool)

(declare-fun res!2241340 () Bool)

(assert (=> b!5284612 (=> (not res!2241340) (not e!3285686))))

(declare-fun unfocusZipper!655 (List!61039) Regex!14913)

(assert (=> b!5284612 (= res!2241340 (= r!7292 (unfocusZipper!655 zl!343)))))

(declare-fun b!5284613 () Bool)

(assert (=> b!5284613 (= e!3285688 (matchZipper!1157 lt!2159988 (t!374243 s!2326)))))

(declare-fun b!5284614 () Bool)

(declare-fun res!2241330 () Bool)

(assert (=> b!5284614 (=> res!2241330 e!3285673)))

(declare-fun isEmpty!32868 (List!61039) Bool)

(assert (=> b!5284614 (= res!2241330 (not (isEmpty!32868 (t!374242 zl!343))))))

(declare-fun b!5284615 () Bool)

(declare-fun tp!1475947 () Bool)

(declare-fun tp!1475946 () Bool)

(assert (=> b!5284615 (= e!3285675 (and tp!1475947 tp!1475946))))

(declare-fun b!5284616 () Bool)

(assert (=> b!5284616 (= e!3285675 tp_is_empty!39079)))

(declare-fun b!5284617 () Bool)

(declare-fun res!2241320 () Bool)

(assert (=> b!5284617 (=> res!2241320 e!3285687)))

(declare-fun contextDepthTotal!54 (Context!8594) Int)

(assert (=> b!5284617 (= res!2241320 (>= (contextDepthTotal!54 lt!2159982) (contextDepthTotal!54 (h!67363 zl!343))))))

(assert (= (and start!557906 res!2241335) b!5284606))

(assert (= (and b!5284606 res!2241317) b!5284612))

(assert (= (and b!5284612 res!2241340) b!5284604))

(assert (= (and b!5284604 (not res!2241316)) b!5284614))

(assert (= (and b!5284614 (not res!2241330)) b!5284587))

(assert (= (and b!5284587 (not res!2241337)) b!5284589))

(assert (= (and b!5284589 (not res!2241333)) b!5284584))

(assert (= (and b!5284584 (not res!2241324)) b!5284595))

(assert (= (and b!5284595 (not res!2241336)) b!5284603))

(assert (= (and b!5284603 (not res!2241331)) b!5284594))

(assert (= (and b!5284594 (not res!2241325)) b!5284590))

(assert (= (and b!5284590 c!916264) b!5284607))

(assert (= (and b!5284590 (not c!916264)) b!5284611))

(assert (= (and b!5284607 (not res!2241323)) b!5284596))

(assert (= (and b!5284590 (not res!2241319)) b!5284610))

(assert (= (and b!5284610 (not res!2241326)) b!5284588))

(assert (= (and b!5284588 (not res!2241321)) b!5284586))

(assert (= (and b!5284586 (not res!2241332)) b!5284585))

(assert (= (and b!5284586 res!2241328) b!5284605))

(assert (= (and b!5284586 (not res!2241322)) b!5284592))

(assert (= (and b!5284592 (not res!2241318)) b!5284601))

(assert (= (and b!5284601 (not res!2241334)) b!5284613))

(assert (= (and b!5284601 res!2241339) b!5284602))

(assert (= (and b!5284601 (not res!2241341)) b!5284582))

(assert (= (and b!5284582 (not res!2241327)) b!5284617))

(assert (= (and b!5284617 (not res!2241320)) b!5284593))

(assert (= (and b!5284593 (not res!2241329)) b!5284591))

(assert (= (and b!5284591 (not res!2241338)) b!5284609))

(assert (= (and start!557906 ((_ is ElementMatch!14913) r!7292)) b!5284616))

(assert (= (and start!557906 ((_ is Concat!23758) r!7292)) b!5284615))

(assert (= (and start!557906 ((_ is Star!14913) r!7292)) b!5284599))

(assert (= (and start!557906 ((_ is Union!14913) r!7292)) b!5284600))

(assert (= (and start!557906 condSetEmpty!33893) setIsEmpty!33893))

(assert (= (and start!557906 (not condSetEmpty!33893)) setNonEmpty!33893))

(assert (= setNonEmpty!33893 b!5284583))

(assert (= b!5284608 b!5284598))

(assert (= (and start!557906 ((_ is Cons!60915) zl!343)) b!5284608))

(assert (= (and start!557906 ((_ is Cons!60916) s!2326)) b!5284597))

(declare-fun m!6322218 () Bool)

(assert (=> b!5284607 m!6322218))

(declare-fun m!6322220 () Bool)

(assert (=> b!5284607 m!6322220))

(declare-fun m!6322222 () Bool)

(assert (=> b!5284607 m!6322222))

(declare-fun m!6322224 () Bool)

(assert (=> b!5284612 m!6322224))

(declare-fun m!6322226 () Bool)

(assert (=> b!5284605 m!6322226))

(declare-fun m!6322228 () Bool)

(assert (=> b!5284603 m!6322228))

(declare-fun m!6322230 () Bool)

(assert (=> b!5284603 m!6322230))

(declare-fun m!6322232 () Bool)

(assert (=> b!5284603 m!6322232))

(declare-fun m!6322234 () Bool)

(assert (=> b!5284603 m!6322234))

(declare-fun m!6322236 () Bool)

(assert (=> b!5284603 m!6322236))

(assert (=> b!5284603 m!6322234))

(assert (=> b!5284603 m!6322228))

(declare-fun m!6322238 () Bool)

(assert (=> b!5284603 m!6322238))

(declare-fun m!6322240 () Bool)

(assert (=> b!5284584 m!6322240))

(assert (=> b!5284584 m!6322240))

(declare-fun m!6322242 () Bool)

(assert (=> b!5284584 m!6322242))

(assert (=> b!5284585 m!6322226))

(declare-fun m!6322244 () Bool)

(assert (=> start!557906 m!6322244))

(declare-fun m!6322246 () Bool)

(assert (=> b!5284609 m!6322246))

(declare-fun m!6322248 () Bool)

(assert (=> b!5284609 m!6322248))

(declare-fun m!6322250 () Bool)

(assert (=> b!5284609 m!6322250))

(declare-fun m!6322252 () Bool)

(assert (=> b!5284609 m!6322252))

(declare-fun m!6322254 () Bool)

(assert (=> b!5284609 m!6322254))

(declare-fun m!6322256 () Bool)

(assert (=> b!5284609 m!6322256))

(declare-fun m!6322258 () Bool)

(assert (=> b!5284609 m!6322258))

(declare-fun m!6322260 () Bool)

(assert (=> b!5284609 m!6322260))

(declare-fun m!6322262 () Bool)

(assert (=> b!5284609 m!6322262))

(declare-fun m!6322264 () Bool)

(assert (=> b!5284609 m!6322264))

(declare-fun m!6322266 () Bool)

(assert (=> b!5284609 m!6322266))

(declare-fun m!6322268 () Bool)

(assert (=> b!5284609 m!6322268))

(declare-fun m!6322270 () Bool)

(assert (=> b!5284609 m!6322270))

(assert (=> b!5284609 m!6322260))

(declare-fun m!6322272 () Bool)

(assert (=> b!5284609 m!6322272))

(declare-fun m!6322274 () Bool)

(assert (=> b!5284609 m!6322274))

(declare-fun m!6322276 () Bool)

(assert (=> setNonEmpty!33893 m!6322276))

(declare-fun m!6322278 () Bool)

(assert (=> b!5284613 m!6322278))

(declare-fun m!6322280 () Bool)

(assert (=> b!5284601 m!6322280))

(declare-fun m!6322282 () Bool)

(assert (=> b!5284601 m!6322282))

(declare-fun m!6322284 () Bool)

(assert (=> b!5284601 m!6322284))

(declare-fun m!6322286 () Bool)

(assert (=> b!5284601 m!6322286))

(declare-fun m!6322288 () Bool)

(assert (=> b!5284601 m!6322288))

(declare-fun m!6322290 () Bool)

(assert (=> b!5284601 m!6322290))

(declare-fun m!6322292 () Bool)

(assert (=> b!5284604 m!6322292))

(declare-fun m!6322294 () Bool)

(assert (=> b!5284604 m!6322294))

(declare-fun m!6322296 () Bool)

(assert (=> b!5284604 m!6322296))

(declare-fun m!6322298 () Bool)

(assert (=> b!5284591 m!6322298))

(declare-fun m!6322300 () Bool)

(assert (=> b!5284591 m!6322300))

(declare-fun m!6322302 () Bool)

(assert (=> b!5284592 m!6322302))

(declare-fun m!6322304 () Bool)

(assert (=> b!5284592 m!6322304))

(declare-fun m!6322306 () Bool)

(assert (=> b!5284592 m!6322306))

(declare-fun m!6322308 () Bool)

(assert (=> b!5284592 m!6322308))

(declare-fun m!6322310 () Bool)

(assert (=> b!5284592 m!6322310))

(declare-fun m!6322312 () Bool)

(assert (=> b!5284592 m!6322312))

(assert (=> b!5284592 m!6322288))

(declare-fun m!6322314 () Bool)

(assert (=> b!5284594 m!6322314))

(declare-fun m!6322316 () Bool)

(assert (=> b!5284593 m!6322316))

(declare-fun m!6322318 () Bool)

(assert (=> b!5284593 m!6322318))

(declare-fun m!6322320 () Bool)

(assert (=> b!5284587 m!6322320))

(declare-fun m!6322322 () Bool)

(assert (=> b!5284588 m!6322322))

(declare-fun m!6322324 () Bool)

(assert (=> b!5284588 m!6322324))

(declare-fun m!6322326 () Bool)

(assert (=> b!5284617 m!6322326))

(declare-fun m!6322328 () Bool)

(assert (=> b!5284617 m!6322328))

(assert (=> b!5284586 m!6322220))

(declare-fun m!6322330 () Bool)

(assert (=> b!5284586 m!6322330))

(declare-fun m!6322332 () Bool)

(assert (=> b!5284586 m!6322332))

(declare-fun m!6322334 () Bool)

(assert (=> b!5284586 m!6322334))

(declare-fun m!6322336 () Bool)

(assert (=> b!5284590 m!6322336))

(declare-fun m!6322338 () Bool)

(assert (=> b!5284590 m!6322338))

(declare-fun m!6322340 () Bool)

(assert (=> b!5284590 m!6322340))

(declare-fun m!6322342 () Bool)

(assert (=> b!5284590 m!6322342))

(declare-fun m!6322344 () Bool)

(assert (=> b!5284590 m!6322344))

(declare-fun m!6322346 () Bool)

(assert (=> b!5284590 m!6322346))

(declare-fun m!6322348 () Bool)

(assert (=> b!5284590 m!6322348))

(declare-fun m!6322350 () Bool)

(assert (=> b!5284596 m!6322350))

(declare-fun m!6322352 () Bool)

(assert (=> b!5284606 m!6322352))

(declare-fun m!6322354 () Bool)

(assert (=> b!5284602 m!6322354))

(assert (=> b!5284602 m!6322354))

(declare-fun m!6322356 () Bool)

(assert (=> b!5284602 m!6322356))

(declare-fun m!6322358 () Bool)

(assert (=> b!5284614 m!6322358))

(declare-fun m!6322360 () Bool)

(assert (=> b!5284610 m!6322360))

(declare-fun m!6322362 () Bool)

(assert (=> b!5284608 m!6322362))

(check-sat (not setNonEmpty!33893) tp_is_empty!39079 (not b!5284587) (not b!5284593) (not b!5284596) (not b!5284590) (not b!5284601) (not b!5284594) (not b!5284617) (not b!5284615) (not b!5284610) (not start!557906) (not b!5284583) (not b!5284599) (not b!5284598) (not b!5284607) (not b!5284586) (not b!5284612) (not b!5284588) (not b!5284603) (not b!5284608) (not b!5284600) (not b!5284585) (not b!5284602) (not b!5284614) (not b!5284592) (not b!5284613) (not b!5284606) (not b!5284597) (not b!5284605) (not b!5284584) (not b!5284591) (not b!5284609) (not b!5284604))
(check-sat)
(get-model)

(declare-fun bs!1224757 () Bool)

(declare-fun d!1700344 () Bool)

(assert (= bs!1224757 (and d!1700344 b!5284609)))

(declare-fun lambda!267176 () Int)

(assert (=> bs!1224757 (= lambda!267176 lambda!267163)))

(assert (=> d!1700344 (= (inv!80529 setElem!33893) (forall!14321 (exprs!4797 setElem!33893) lambda!267176))))

(declare-fun bs!1224762 () Bool)

(assert (= bs!1224762 d!1700344))

(declare-fun m!6322388 () Bool)

(assert (=> bs!1224762 m!6322388))

(assert (=> setNonEmpty!33893 d!1700344))

(declare-fun b!5284697 () Bool)

(declare-fun e!3285733 () Bool)

(assert (=> b!5284697 (= e!3285733 (nullable!5082 (regOne!30338 (regTwo!30338 (regOne!30338 r!7292)))))))

(declare-fun bm!376374 () Bool)

(declare-fun call!376380 () List!61038)

(declare-fun call!376383 () List!61038)

(assert (=> bm!376374 (= call!376380 call!376383)))

(declare-fun b!5284698 () Bool)

(declare-fun c!916298 () Bool)

(assert (=> b!5284698 (= c!916298 ((_ is Star!14913) (regTwo!30338 (regOne!30338 r!7292))))))

(declare-fun e!3285735 () (InoxSet Context!8594))

(declare-fun e!3285734 () (InoxSet Context!8594))

(assert (=> b!5284698 (= e!3285735 e!3285734)))

(declare-fun b!5284699 () Bool)

(declare-fun call!376382 () (InoxSet Context!8594))

(assert (=> b!5284699 (= e!3285734 call!376382)))

(declare-fun d!1700348 () Bool)

(declare-fun c!916296 () Bool)

(assert (=> d!1700348 (= c!916296 (and ((_ is ElementMatch!14913) (regTwo!30338 (regOne!30338 r!7292))) (= (c!916265 (regTwo!30338 (regOne!30338 r!7292))) (h!67364 s!2326))))))

(declare-fun e!3285736 () (InoxSet Context!8594))

(assert (=> d!1700348 (= (derivationStepZipperDown!361 (regTwo!30338 (regOne!30338 r!7292)) lt!2160012 (h!67364 s!2326)) e!3285736)))

(declare-fun b!5284700 () Bool)

(assert (=> b!5284700 (= e!3285736 (store ((as const (Array Context!8594 Bool)) false) lt!2160012 true))))

(declare-fun bm!376375 () Bool)

(declare-fun call!376379 () (InoxSet Context!8594))

(declare-fun call!376384 () (InoxSet Context!8594))

(assert (=> bm!376375 (= call!376379 call!376384)))

(declare-fun b!5284701 () Bool)

(assert (=> b!5284701 (= e!3285735 call!376382)))

(declare-fun bm!376376 () Bool)

(declare-fun call!376381 () (InoxSet Context!8594))

(declare-fun c!916297 () Bool)

(assert (=> bm!376376 (= call!376381 (derivationStepZipperDown!361 (ite c!916297 (regOne!30339 (regTwo!30338 (regOne!30338 r!7292))) (regOne!30338 (regTwo!30338 (regOne!30338 r!7292)))) (ite c!916297 lt!2160012 (Context!8595 call!376383)) (h!67364 s!2326)))))

(declare-fun b!5284702 () Bool)

(declare-fun e!3285731 () (InoxSet Context!8594))

(assert (=> b!5284702 (= e!3285731 ((_ map or) call!376381 call!376379))))

(declare-fun b!5284703 () Bool)

(declare-fun c!916295 () Bool)

(assert (=> b!5284703 (= c!916295 e!3285733)))

(declare-fun res!2241367 () Bool)

(assert (=> b!5284703 (=> (not res!2241367) (not e!3285733))))

(assert (=> b!5284703 (= res!2241367 ((_ is Concat!23758) (regTwo!30338 (regOne!30338 r!7292))))))

(declare-fun e!3285732 () (InoxSet Context!8594))

(assert (=> b!5284703 (= e!3285732 e!3285731)))

(declare-fun b!5284704 () Bool)

(assert (=> b!5284704 (= e!3285732 ((_ map or) call!376381 call!376384))))

(declare-fun c!916299 () Bool)

(declare-fun bm!376377 () Bool)

(declare-fun $colon$colon!1353 (List!61038 Regex!14913) List!61038)

(assert (=> bm!376377 (= call!376383 ($colon$colon!1353 (exprs!4797 lt!2160012) (ite (or c!916295 c!916299) (regTwo!30338 (regTwo!30338 (regOne!30338 r!7292))) (regTwo!30338 (regOne!30338 r!7292)))))))

(declare-fun bm!376378 () Bool)

(assert (=> bm!376378 (= call!376384 (derivationStepZipperDown!361 (ite c!916297 (regTwo!30339 (regTwo!30338 (regOne!30338 r!7292))) (ite c!916295 (regTwo!30338 (regTwo!30338 (regOne!30338 r!7292))) (ite c!916299 (regOne!30338 (regTwo!30338 (regOne!30338 r!7292))) (reg!15242 (regTwo!30338 (regOne!30338 r!7292)))))) (ite (or c!916297 c!916295) lt!2160012 (Context!8595 call!376380)) (h!67364 s!2326)))))

(declare-fun b!5284705 () Bool)

(assert (=> b!5284705 (= e!3285736 e!3285732)))

(assert (=> b!5284705 (= c!916297 ((_ is Union!14913) (regTwo!30338 (regOne!30338 r!7292))))))

(declare-fun bm!376379 () Bool)

(assert (=> bm!376379 (= call!376382 call!376379)))

(declare-fun b!5284706 () Bool)

(assert (=> b!5284706 (= e!3285731 e!3285735)))

(assert (=> b!5284706 (= c!916299 ((_ is Concat!23758) (regTwo!30338 (regOne!30338 r!7292))))))

(declare-fun b!5284707 () Bool)

(assert (=> b!5284707 (= e!3285734 ((as const (Array Context!8594 Bool)) false))))

(assert (= (and d!1700348 c!916296) b!5284700))

(assert (= (and d!1700348 (not c!916296)) b!5284705))

(assert (= (and b!5284705 c!916297) b!5284704))

(assert (= (and b!5284705 (not c!916297)) b!5284703))

(assert (= (and b!5284703 res!2241367) b!5284697))

(assert (= (and b!5284703 c!916295) b!5284702))

(assert (= (and b!5284703 (not c!916295)) b!5284706))

(assert (= (and b!5284706 c!916299) b!5284701))

(assert (= (and b!5284706 (not c!916299)) b!5284698))

(assert (= (and b!5284698 c!916298) b!5284699))

(assert (= (and b!5284698 (not c!916298)) b!5284707))

(assert (= (or b!5284701 b!5284699) bm!376374))

(assert (= (or b!5284701 b!5284699) bm!376379))

(assert (= (or b!5284702 bm!376374) bm!376377))

(assert (= (or b!5284702 bm!376379) bm!376375))

(assert (= (or b!5284704 bm!376375) bm!376378))

(assert (= (or b!5284704 b!5284702) bm!376376))

(declare-fun m!6322434 () Bool)

(assert (=> b!5284700 m!6322434))

(declare-fun m!6322436 () Bool)

(assert (=> b!5284697 m!6322436))

(declare-fun m!6322438 () Bool)

(assert (=> bm!376377 m!6322438))

(declare-fun m!6322440 () Bool)

(assert (=> bm!376378 m!6322440))

(declare-fun m!6322442 () Bool)

(assert (=> bm!376376 m!6322442))

(assert (=> b!5284588 d!1700348))

(declare-fun b!5284708 () Bool)

(declare-fun e!3285739 () Bool)

(assert (=> b!5284708 (= e!3285739 (nullable!5082 (regOne!30338 (regOne!30338 (regOne!30338 r!7292)))))))

(declare-fun bm!376380 () Bool)

(declare-fun call!376386 () List!61038)

(declare-fun call!376389 () List!61038)

(assert (=> bm!376380 (= call!376386 call!376389)))

(declare-fun b!5284709 () Bool)

(declare-fun c!916303 () Bool)

(assert (=> b!5284709 (= c!916303 ((_ is Star!14913) (regOne!30338 (regOne!30338 r!7292))))))

(declare-fun e!3285741 () (InoxSet Context!8594))

(declare-fun e!3285740 () (InoxSet Context!8594))

(assert (=> b!5284709 (= e!3285741 e!3285740)))

(declare-fun b!5284710 () Bool)

(declare-fun call!376388 () (InoxSet Context!8594))

(assert (=> b!5284710 (= e!3285740 call!376388)))

(declare-fun d!1700362 () Bool)

(declare-fun c!916301 () Bool)

(assert (=> d!1700362 (= c!916301 (and ((_ is ElementMatch!14913) (regOne!30338 (regOne!30338 r!7292))) (= (c!916265 (regOne!30338 (regOne!30338 r!7292))) (h!67364 s!2326))))))

(declare-fun e!3285742 () (InoxSet Context!8594))

(assert (=> d!1700362 (= (derivationStepZipperDown!361 (regOne!30338 (regOne!30338 r!7292)) lt!2159998 (h!67364 s!2326)) e!3285742)))

(declare-fun b!5284711 () Bool)

(assert (=> b!5284711 (= e!3285742 (store ((as const (Array Context!8594 Bool)) false) lt!2159998 true))))

(declare-fun bm!376381 () Bool)

(declare-fun call!376385 () (InoxSet Context!8594))

(declare-fun call!376390 () (InoxSet Context!8594))

(assert (=> bm!376381 (= call!376385 call!376390)))

(declare-fun b!5284712 () Bool)

(assert (=> b!5284712 (= e!3285741 call!376388)))

(declare-fun c!916302 () Bool)

(declare-fun bm!376382 () Bool)

(declare-fun call!376387 () (InoxSet Context!8594))

(assert (=> bm!376382 (= call!376387 (derivationStepZipperDown!361 (ite c!916302 (regOne!30339 (regOne!30338 (regOne!30338 r!7292))) (regOne!30338 (regOne!30338 (regOne!30338 r!7292)))) (ite c!916302 lt!2159998 (Context!8595 call!376389)) (h!67364 s!2326)))))

(declare-fun b!5284713 () Bool)

(declare-fun e!3285737 () (InoxSet Context!8594))

(assert (=> b!5284713 (= e!3285737 ((_ map or) call!376387 call!376385))))

(declare-fun b!5284714 () Bool)

(declare-fun c!916300 () Bool)

(assert (=> b!5284714 (= c!916300 e!3285739)))

(declare-fun res!2241368 () Bool)

(assert (=> b!5284714 (=> (not res!2241368) (not e!3285739))))

(assert (=> b!5284714 (= res!2241368 ((_ is Concat!23758) (regOne!30338 (regOne!30338 r!7292))))))

(declare-fun e!3285738 () (InoxSet Context!8594))

(assert (=> b!5284714 (= e!3285738 e!3285737)))

(declare-fun b!5284715 () Bool)

(assert (=> b!5284715 (= e!3285738 ((_ map or) call!376387 call!376390))))

(declare-fun bm!376383 () Bool)

(declare-fun c!916304 () Bool)

(assert (=> bm!376383 (= call!376389 ($colon$colon!1353 (exprs!4797 lt!2159998) (ite (or c!916300 c!916304) (regTwo!30338 (regOne!30338 (regOne!30338 r!7292))) (regOne!30338 (regOne!30338 r!7292)))))))

(declare-fun bm!376384 () Bool)

(assert (=> bm!376384 (= call!376390 (derivationStepZipperDown!361 (ite c!916302 (regTwo!30339 (regOne!30338 (regOne!30338 r!7292))) (ite c!916300 (regTwo!30338 (regOne!30338 (regOne!30338 r!7292))) (ite c!916304 (regOne!30338 (regOne!30338 (regOne!30338 r!7292))) (reg!15242 (regOne!30338 (regOne!30338 r!7292)))))) (ite (or c!916302 c!916300) lt!2159998 (Context!8595 call!376386)) (h!67364 s!2326)))))

(declare-fun b!5284716 () Bool)

(assert (=> b!5284716 (= e!3285742 e!3285738)))

(assert (=> b!5284716 (= c!916302 ((_ is Union!14913) (regOne!30338 (regOne!30338 r!7292))))))

(declare-fun bm!376385 () Bool)

(assert (=> bm!376385 (= call!376388 call!376385)))

(declare-fun b!5284717 () Bool)

(assert (=> b!5284717 (= e!3285737 e!3285741)))

(assert (=> b!5284717 (= c!916304 ((_ is Concat!23758) (regOne!30338 (regOne!30338 r!7292))))))

(declare-fun b!5284718 () Bool)

(assert (=> b!5284718 (= e!3285740 ((as const (Array Context!8594 Bool)) false))))

(assert (= (and d!1700362 c!916301) b!5284711))

(assert (= (and d!1700362 (not c!916301)) b!5284716))

(assert (= (and b!5284716 c!916302) b!5284715))

(assert (= (and b!5284716 (not c!916302)) b!5284714))

(assert (= (and b!5284714 res!2241368) b!5284708))

(assert (= (and b!5284714 c!916300) b!5284713))

(assert (= (and b!5284714 (not c!916300)) b!5284717))

(assert (= (and b!5284717 c!916304) b!5284712))

(assert (= (and b!5284717 (not c!916304)) b!5284709))

(assert (= (and b!5284709 c!916303) b!5284710))

(assert (= (and b!5284709 (not c!916303)) b!5284718))

(assert (= (or b!5284712 b!5284710) bm!376380))

(assert (= (or b!5284712 b!5284710) bm!376385))

(assert (= (or b!5284713 bm!376380) bm!376383))

(assert (= (or b!5284713 bm!376385) bm!376381))

(assert (= (or b!5284715 bm!376381) bm!376384))

(assert (= (or b!5284715 b!5284713) bm!376382))

(assert (=> b!5284711 m!6322306))

(declare-fun m!6322444 () Bool)

(assert (=> b!5284708 m!6322444))

(declare-fun m!6322446 () Bool)

(assert (=> bm!376383 m!6322446))

(declare-fun m!6322448 () Bool)

(assert (=> bm!376384 m!6322448))

(declare-fun m!6322450 () Bool)

(assert (=> bm!376382 m!6322450))

(assert (=> b!5284588 d!1700362))

(declare-fun bs!1224768 () Bool)

(declare-fun d!1700364 () Bool)

(assert (= bs!1224768 (and d!1700364 b!5284609)))

(declare-fun lambda!267182 () Int)

(assert (=> bs!1224768 (= lambda!267182 lambda!267163)))

(declare-fun bs!1224769 () Bool)

(assert (= bs!1224769 (and d!1700364 d!1700344)))

(assert (=> bs!1224769 (= lambda!267182 lambda!267176)))

(assert (=> d!1700364 (= (inv!80529 (h!67363 zl!343)) (forall!14321 (exprs!4797 (h!67363 zl!343)) lambda!267182))))

(declare-fun bs!1224770 () Bool)

(assert (= bs!1224770 d!1700364))

(declare-fun m!6322452 () Bool)

(assert (=> bs!1224770 m!6322452))

(assert (=> b!5284608 d!1700364))

(declare-fun bs!1224779 () Bool)

(declare-fun d!1700366 () Bool)

(assert (= bs!1224779 (and d!1700366 b!5284609)))

(declare-fun lambda!267191 () Int)

(assert (=> bs!1224779 (= lambda!267191 lambda!267163)))

(declare-fun bs!1224780 () Bool)

(assert (= bs!1224780 (and d!1700366 d!1700344)))

(assert (=> bs!1224780 (= lambda!267191 lambda!267176)))

(declare-fun bs!1224781 () Bool)

(assert (= bs!1224781 (and d!1700366 d!1700364)))

(assert (=> bs!1224781 (= lambda!267191 lambda!267182)))

(declare-fun b!5284759 () Bool)

(declare-fun e!3285767 () Bool)

(declare-fun lt!2160062 () Regex!14913)

(declare-fun head!11325 (List!61038) Regex!14913)

(assert (=> b!5284759 (= e!3285767 (= lt!2160062 (head!11325 (exprs!4797 (h!67363 zl!343)))))))

(declare-fun b!5284760 () Bool)

(declare-fun e!3285772 () Regex!14913)

(declare-fun e!3285770 () Regex!14913)

(assert (=> b!5284760 (= e!3285772 e!3285770)))

(declare-fun c!916320 () Bool)

(assert (=> b!5284760 (= c!916320 ((_ is Cons!60914) (exprs!4797 (h!67363 zl!343))))))

(declare-fun b!5284761 () Bool)

(assert (=> b!5284761 (= e!3285772 (h!67362 (exprs!4797 (h!67363 zl!343))))))

(declare-fun b!5284762 () Bool)

(declare-fun e!3285769 () Bool)

(assert (=> b!5284762 (= e!3285769 (isEmpty!32867 (t!374241 (exprs!4797 (h!67363 zl!343)))))))

(declare-fun b!5284763 () Bool)

(declare-fun isConcat!361 (Regex!14913) Bool)

(assert (=> b!5284763 (= e!3285767 (isConcat!361 lt!2160062))))

(declare-fun b!5284764 () Bool)

(declare-fun e!3285771 () Bool)

(assert (=> b!5284764 (= e!3285771 e!3285767)))

(declare-fun c!916318 () Bool)

(declare-fun tail!10422 (List!61038) List!61038)

(assert (=> b!5284764 (= c!916318 (isEmpty!32867 (tail!10422 (exprs!4797 (h!67363 zl!343)))))))

(declare-fun e!3285768 () Bool)

(assert (=> d!1700366 e!3285768))

(declare-fun res!2241385 () Bool)

(assert (=> d!1700366 (=> (not res!2241385) (not e!3285768))))

(assert (=> d!1700366 (= res!2241385 (validRegex!6649 lt!2160062))))

(assert (=> d!1700366 (= lt!2160062 e!3285772)))

(declare-fun c!916319 () Bool)

(assert (=> d!1700366 (= c!916319 e!3285769)))

(declare-fun res!2241386 () Bool)

(assert (=> d!1700366 (=> (not res!2241386) (not e!3285769))))

(assert (=> d!1700366 (= res!2241386 ((_ is Cons!60914) (exprs!4797 (h!67363 zl!343))))))

(assert (=> d!1700366 (forall!14321 (exprs!4797 (h!67363 zl!343)) lambda!267191)))

(assert (=> d!1700366 (= (generalisedConcat!582 (exprs!4797 (h!67363 zl!343))) lt!2160062)))

(declare-fun b!5284765 () Bool)

(assert (=> b!5284765 (= e!3285770 EmptyExpr!14913)))

(declare-fun b!5284766 () Bool)

(assert (=> b!5284766 (= e!3285768 e!3285771)))

(declare-fun c!916317 () Bool)

(assert (=> b!5284766 (= c!916317 (isEmpty!32867 (exprs!4797 (h!67363 zl!343))))))

(declare-fun b!5284767 () Bool)

(assert (=> b!5284767 (= e!3285770 (Concat!23758 (h!67362 (exprs!4797 (h!67363 zl!343))) (generalisedConcat!582 (t!374241 (exprs!4797 (h!67363 zl!343))))))))

(declare-fun b!5284768 () Bool)

(declare-fun isEmptyExpr!838 (Regex!14913) Bool)

(assert (=> b!5284768 (= e!3285771 (isEmptyExpr!838 lt!2160062))))

(assert (= (and d!1700366 res!2241386) b!5284762))

(assert (= (and d!1700366 c!916319) b!5284761))

(assert (= (and d!1700366 (not c!916319)) b!5284760))

(assert (= (and b!5284760 c!916320) b!5284767))

(assert (= (and b!5284760 (not c!916320)) b!5284765))

(assert (= (and d!1700366 res!2241385) b!5284766))

(assert (= (and b!5284766 c!916317) b!5284768))

(assert (= (and b!5284766 (not c!916317)) b!5284764))

(assert (= (and b!5284764 c!916318) b!5284759))

(assert (= (and b!5284764 (not c!916318)) b!5284763))

(declare-fun m!6322502 () Bool)

(assert (=> b!5284768 m!6322502))

(declare-fun m!6322504 () Bool)

(assert (=> b!5284766 m!6322504))

(declare-fun m!6322506 () Bool)

(assert (=> b!5284764 m!6322506))

(assert (=> b!5284764 m!6322506))

(declare-fun m!6322508 () Bool)

(assert (=> b!5284764 m!6322508))

(assert (=> b!5284762 m!6322314))

(declare-fun m!6322510 () Bool)

(assert (=> b!5284759 m!6322510))

(declare-fun m!6322512 () Bool)

(assert (=> b!5284767 m!6322512))

(declare-fun m!6322514 () Bool)

(assert (=> b!5284763 m!6322514))

(declare-fun m!6322516 () Bool)

(assert (=> d!1700366 m!6322516))

(declare-fun m!6322518 () Bool)

(assert (=> d!1700366 m!6322518))

(assert (=> b!5284587 d!1700366))

(declare-fun d!1700390 () Bool)

(declare-fun e!3285800 () Bool)

(assert (=> d!1700390 e!3285800))

(declare-fun res!2241402 () Bool)

(assert (=> d!1700390 (=> (not res!2241402) (not e!3285800))))

(declare-fun lt!2160065 () List!61039)

(declare-fun noDuplicate!1258 (List!61039) Bool)

(assert (=> d!1700390 (= res!2241402 (noDuplicate!1258 lt!2160065))))

(declare-fun choose!39449 ((InoxSet Context!8594)) List!61039)

(assert (=> d!1700390 (= lt!2160065 (choose!39449 z!1189))))

(assert (=> d!1700390 (= (toList!8697 z!1189) lt!2160065)))

(declare-fun b!5284808 () Bool)

(declare-fun content!10844 (List!61039) (InoxSet Context!8594))

(assert (=> b!5284808 (= e!3285800 (= (content!10844 lt!2160065) z!1189))))

(assert (= (and d!1700390 res!2241402) b!5284808))

(declare-fun m!6322540 () Bool)

(assert (=> d!1700390 m!6322540))

(declare-fun m!6322542 () Bool)

(assert (=> d!1700390 m!6322542))

(declare-fun m!6322544 () Bool)

(assert (=> b!5284808 m!6322544))

(assert (=> b!5284606 d!1700390))

(declare-fun e!3285817 () Bool)

(declare-fun d!1700400 () Bool)

(assert (=> d!1700400 (= (matchZipper!1157 ((_ map or) lt!2160017 lt!2159991) (t!374243 s!2326)) e!3285817)))

(declare-fun res!2241412 () Bool)

(assert (=> d!1700400 (=> res!2241412 e!3285817)))

(assert (=> d!1700400 (= res!2241412 (matchZipper!1157 lt!2160017 (t!374243 s!2326)))))

(declare-fun lt!2160069 () Unit!153170)

(declare-fun choose!39450 ((InoxSet Context!8594) (InoxSet Context!8594) List!61040) Unit!153170)

(assert (=> d!1700400 (= lt!2160069 (choose!39450 lt!2160017 lt!2159991 (t!374243 s!2326)))))

(assert (=> d!1700400 (= (lemmaZipperConcatMatchesSameAsBothZippers!150 lt!2160017 lt!2159991 (t!374243 s!2326)) lt!2160069)))

(declare-fun b!5284834 () Bool)

(assert (=> b!5284834 (= e!3285817 (matchZipper!1157 lt!2159991 (t!374243 s!2326)))))

(assert (= (and d!1700400 (not res!2241412)) b!5284834))

(assert (=> d!1700400 m!6322222))

(assert (=> d!1700400 m!6322220))

(declare-fun m!6322582 () Bool)

(assert (=> d!1700400 m!6322582))

(assert (=> b!5284834 m!6322350))

(assert (=> b!5284607 d!1700400))

(declare-fun d!1700420 () Bool)

(declare-fun c!916354 () Bool)

(declare-fun isEmpty!32871 (List!61040) Bool)

(assert (=> d!1700420 (= c!916354 (isEmpty!32871 (t!374243 s!2326)))))

(declare-fun e!3285832 () Bool)

(assert (=> d!1700420 (= (matchZipper!1157 lt!2160017 (t!374243 s!2326)) e!3285832)))

(declare-fun b!5284861 () Bool)

(declare-fun nullableZipper!1304 ((InoxSet Context!8594)) Bool)

(assert (=> b!5284861 (= e!3285832 (nullableZipper!1304 lt!2160017))))

(declare-fun b!5284862 () Bool)

(declare-fun head!11326 (List!61040) C!30096)

(declare-fun tail!10423 (List!61040) List!61040)

(assert (=> b!5284862 (= e!3285832 (matchZipper!1157 (derivationStepZipper!1156 lt!2160017 (head!11326 (t!374243 s!2326))) (tail!10423 (t!374243 s!2326))))))

(assert (= (and d!1700420 c!916354) b!5284861))

(assert (= (and d!1700420 (not c!916354)) b!5284862))

(declare-fun m!6322584 () Bool)

(assert (=> d!1700420 m!6322584))

(declare-fun m!6322586 () Bool)

(assert (=> b!5284861 m!6322586))

(declare-fun m!6322588 () Bool)

(assert (=> b!5284862 m!6322588))

(assert (=> b!5284862 m!6322588))

(declare-fun m!6322590 () Bool)

(assert (=> b!5284862 m!6322590))

(declare-fun m!6322592 () Bool)

(assert (=> b!5284862 m!6322592))

(assert (=> b!5284862 m!6322590))

(assert (=> b!5284862 m!6322592))

(declare-fun m!6322594 () Bool)

(assert (=> b!5284862 m!6322594))

(assert (=> b!5284607 d!1700420))

(declare-fun d!1700422 () Bool)

(declare-fun c!916355 () Bool)

(assert (=> d!1700422 (= c!916355 (isEmpty!32871 (t!374243 s!2326)))))

(declare-fun e!3285833 () Bool)

(assert (=> d!1700422 (= (matchZipper!1157 ((_ map or) lt!2160017 lt!2159991) (t!374243 s!2326)) e!3285833)))

(declare-fun b!5284863 () Bool)

(assert (=> b!5284863 (= e!3285833 (nullableZipper!1304 ((_ map or) lt!2160017 lt!2159991)))))

(declare-fun b!5284864 () Bool)

(assert (=> b!5284864 (= e!3285833 (matchZipper!1157 (derivationStepZipper!1156 ((_ map or) lt!2160017 lt!2159991) (head!11326 (t!374243 s!2326))) (tail!10423 (t!374243 s!2326))))))

(assert (= (and d!1700422 c!916355) b!5284863))

(assert (= (and d!1700422 (not c!916355)) b!5284864))

(assert (=> d!1700422 m!6322584))

(declare-fun m!6322596 () Bool)

(assert (=> b!5284863 m!6322596))

(assert (=> b!5284864 m!6322588))

(assert (=> b!5284864 m!6322588))

(declare-fun m!6322598 () Bool)

(assert (=> b!5284864 m!6322598))

(assert (=> b!5284864 m!6322592))

(assert (=> b!5284864 m!6322598))

(assert (=> b!5284864 m!6322592))

(declare-fun m!6322600 () Bool)

(assert (=> b!5284864 m!6322600))

(assert (=> b!5284607 d!1700422))

(declare-fun d!1700424 () Bool)

(declare-fun c!916356 () Bool)

(assert (=> d!1700424 (= c!916356 (isEmpty!32871 (t!374243 s!2326)))))

(declare-fun e!3285834 () Bool)

(assert (=> d!1700424 (= (matchZipper!1157 lt!2159995 (t!374243 s!2326)) e!3285834)))

(declare-fun b!5284865 () Bool)

(assert (=> b!5284865 (= e!3285834 (nullableZipper!1304 lt!2159995))))

(declare-fun b!5284866 () Bool)

(assert (=> b!5284866 (= e!3285834 (matchZipper!1157 (derivationStepZipper!1156 lt!2159995 (head!11326 (t!374243 s!2326))) (tail!10423 (t!374243 s!2326))))))

(assert (= (and d!1700424 c!916356) b!5284865))

(assert (= (and d!1700424 (not c!916356)) b!5284866))

(assert (=> d!1700424 m!6322584))

(declare-fun m!6322602 () Bool)

(assert (=> b!5284865 m!6322602))

(assert (=> b!5284866 m!6322588))

(assert (=> b!5284866 m!6322588))

(declare-fun m!6322604 () Bool)

(assert (=> b!5284866 m!6322604))

(assert (=> b!5284866 m!6322592))

(assert (=> b!5284866 m!6322604))

(assert (=> b!5284866 m!6322592))

(declare-fun m!6322606 () Bool)

(assert (=> b!5284866 m!6322606))

(assert (=> b!5284605 d!1700424))

(assert (=> b!5284586 d!1700420))

(declare-fun d!1700426 () Bool)

(declare-fun c!916362 () Bool)

(assert (=> d!1700426 (= c!916362 (isEmpty!32871 (t!374243 s!2326)))))

(declare-fun e!3285841 () Bool)

(assert (=> d!1700426 (= (matchZipper!1157 lt!2159984 (t!374243 s!2326)) e!3285841)))

(declare-fun b!5284878 () Bool)

(assert (=> b!5284878 (= e!3285841 (nullableZipper!1304 lt!2159984))))

(declare-fun b!5284879 () Bool)

(assert (=> b!5284879 (= e!3285841 (matchZipper!1157 (derivationStepZipper!1156 lt!2159984 (head!11326 (t!374243 s!2326))) (tail!10423 (t!374243 s!2326))))))

(assert (= (and d!1700426 c!916362) b!5284878))

(assert (= (and d!1700426 (not c!916362)) b!5284879))

(assert (=> d!1700426 m!6322584))

(declare-fun m!6322608 () Bool)

(assert (=> b!5284878 m!6322608))

(assert (=> b!5284879 m!6322588))

(assert (=> b!5284879 m!6322588))

(declare-fun m!6322610 () Bool)

(assert (=> b!5284879 m!6322610))

(assert (=> b!5284879 m!6322592))

(assert (=> b!5284879 m!6322610))

(assert (=> b!5284879 m!6322592))

(declare-fun m!6322612 () Bool)

(assert (=> b!5284879 m!6322612))

(assert (=> b!5284586 d!1700426))

(declare-fun d!1700428 () Bool)

(declare-fun c!916363 () Bool)

(assert (=> d!1700428 (= c!916363 (isEmpty!32871 (t!374243 s!2326)))))

(declare-fun e!3285842 () Bool)

(assert (=> d!1700428 (= (matchZipper!1157 lt!2159992 (t!374243 s!2326)) e!3285842)))

(declare-fun b!5284880 () Bool)

(assert (=> b!5284880 (= e!3285842 (nullableZipper!1304 lt!2159992))))

(declare-fun b!5284881 () Bool)

(assert (=> b!5284881 (= e!3285842 (matchZipper!1157 (derivationStepZipper!1156 lt!2159992 (head!11326 (t!374243 s!2326))) (tail!10423 (t!374243 s!2326))))))

(assert (= (and d!1700428 c!916363) b!5284880))

(assert (= (and d!1700428 (not c!916363)) b!5284881))

(assert (=> d!1700428 m!6322584))

(declare-fun m!6322624 () Bool)

(assert (=> b!5284880 m!6322624))

(assert (=> b!5284881 m!6322588))

(assert (=> b!5284881 m!6322588))

(declare-fun m!6322626 () Bool)

(assert (=> b!5284881 m!6322626))

(assert (=> b!5284881 m!6322592))

(assert (=> b!5284881 m!6322626))

(assert (=> b!5284881 m!6322592))

(declare-fun m!6322628 () Bool)

(assert (=> b!5284881 m!6322628))

(assert (=> b!5284586 d!1700428))

(declare-fun e!3285846 () Bool)

(declare-fun d!1700432 () Bool)

(assert (=> d!1700432 (= (matchZipper!1157 ((_ map or) lt!2159992 lt!2159995) (t!374243 s!2326)) e!3285846)))

(declare-fun res!2241417 () Bool)

(assert (=> d!1700432 (=> res!2241417 e!3285846)))

(assert (=> d!1700432 (= res!2241417 (matchZipper!1157 lt!2159992 (t!374243 s!2326)))))

(declare-fun lt!2160070 () Unit!153170)

(assert (=> d!1700432 (= lt!2160070 (choose!39450 lt!2159992 lt!2159995 (t!374243 s!2326)))))

(assert (=> d!1700432 (= (lemmaZipperConcatMatchesSameAsBothZippers!150 lt!2159992 lt!2159995 (t!374243 s!2326)) lt!2160070)))

(declare-fun b!5284887 () Bool)

(assert (=> b!5284887 (= e!3285846 (matchZipper!1157 lt!2159995 (t!374243 s!2326)))))

(assert (= (and d!1700432 (not res!2241417)) b!5284887))

(declare-fun m!6322638 () Bool)

(assert (=> d!1700432 m!6322638))

(assert (=> d!1700432 m!6322332))

(declare-fun m!6322640 () Bool)

(assert (=> d!1700432 m!6322640))

(assert (=> b!5284887 m!6322226))

(assert (=> b!5284586 d!1700432))

(declare-fun bs!1224799 () Bool)

(declare-fun d!1700438 () Bool)

(assert (= bs!1224799 (and d!1700438 b!5284609)))

(declare-fun lambda!267204 () Int)

(assert (=> bs!1224799 (= lambda!267204 lambda!267163)))

(declare-fun bs!1224800 () Bool)

(assert (= bs!1224800 (and d!1700438 d!1700344)))

(assert (=> bs!1224800 (= lambda!267204 lambda!267176)))

(declare-fun bs!1224801 () Bool)

(assert (= bs!1224801 (and d!1700438 d!1700364)))

(assert (=> bs!1224801 (= lambda!267204 lambda!267182)))

(declare-fun bs!1224802 () Bool)

(assert (= bs!1224802 (and d!1700438 d!1700366)))

(assert (=> bs!1224802 (= lambda!267204 lambda!267191)))

(declare-fun b!5284951 () Bool)

(declare-fun e!3285888 () Regex!14913)

(assert (=> b!5284951 (= e!3285888 (Union!14913 (h!67362 (unfocusZipperList!355 zl!343)) (generalisedUnion!842 (t!374241 (unfocusZipperList!355 zl!343)))))))

(declare-fun b!5284952 () Bool)

(declare-fun e!3285885 () Bool)

(declare-fun lt!2160081 () Regex!14913)

(declare-fun isUnion!278 (Regex!14913) Bool)

(assert (=> b!5284952 (= e!3285885 (isUnion!278 lt!2160081))))

(declare-fun b!5284953 () Bool)

(assert (=> b!5284953 (= e!3285885 (= lt!2160081 (head!11325 (unfocusZipperList!355 zl!343))))))

(declare-fun b!5284954 () Bool)

(declare-fun e!3285886 () Regex!14913)

(assert (=> b!5284954 (= e!3285886 e!3285888)))

(declare-fun c!916389 () Bool)

(assert (=> b!5284954 (= c!916389 ((_ is Cons!60914) (unfocusZipperList!355 zl!343)))))

(declare-fun b!5284955 () Bool)

(declare-fun e!3285884 () Bool)

(declare-fun isEmptyLang!846 (Regex!14913) Bool)

(assert (=> b!5284955 (= e!3285884 (isEmptyLang!846 lt!2160081))))

(declare-fun b!5284956 () Bool)

(declare-fun e!3285883 () Bool)

(assert (=> b!5284956 (= e!3285883 (isEmpty!32867 (t!374241 (unfocusZipperList!355 zl!343))))))

(declare-fun b!5284957 () Bool)

(assert (=> b!5284957 (= e!3285886 (h!67362 (unfocusZipperList!355 zl!343)))))

(declare-fun b!5284958 () Bool)

(assert (=> b!5284958 (= e!3285888 EmptyLang!14913)))

(declare-fun e!3285887 () Bool)

(assert (=> d!1700438 e!3285887))

(declare-fun res!2241435 () Bool)

(assert (=> d!1700438 (=> (not res!2241435) (not e!3285887))))

(assert (=> d!1700438 (= res!2241435 (validRegex!6649 lt!2160081))))

(assert (=> d!1700438 (= lt!2160081 e!3285886)))

(declare-fun c!916390 () Bool)

(assert (=> d!1700438 (= c!916390 e!3285883)))

(declare-fun res!2241436 () Bool)

(assert (=> d!1700438 (=> (not res!2241436) (not e!3285883))))

(assert (=> d!1700438 (= res!2241436 ((_ is Cons!60914) (unfocusZipperList!355 zl!343)))))

(assert (=> d!1700438 (forall!14321 (unfocusZipperList!355 zl!343) lambda!267204)))

(assert (=> d!1700438 (= (generalisedUnion!842 (unfocusZipperList!355 zl!343)) lt!2160081)))

(declare-fun b!5284959 () Bool)

(assert (=> b!5284959 (= e!3285884 e!3285885)))

(declare-fun c!916391 () Bool)

(assert (=> b!5284959 (= c!916391 (isEmpty!32867 (tail!10422 (unfocusZipperList!355 zl!343))))))

(declare-fun b!5284960 () Bool)

(assert (=> b!5284960 (= e!3285887 e!3285884)))

(declare-fun c!916392 () Bool)

(assert (=> b!5284960 (= c!916392 (isEmpty!32867 (unfocusZipperList!355 zl!343)))))

(assert (= (and d!1700438 res!2241436) b!5284956))

(assert (= (and d!1700438 c!916390) b!5284957))

(assert (= (and d!1700438 (not c!916390)) b!5284954))

(assert (= (and b!5284954 c!916389) b!5284951))

(assert (= (and b!5284954 (not c!916389)) b!5284958))

(assert (= (and d!1700438 res!2241435) b!5284960))

(assert (= (and b!5284960 c!916392) b!5284955))

(assert (= (and b!5284960 (not c!916392)) b!5284959))

(assert (= (and b!5284959 c!916391) b!5284953))

(assert (= (and b!5284959 (not c!916391)) b!5284952))

(declare-fun m!6322672 () Bool)

(assert (=> d!1700438 m!6322672))

(assert (=> d!1700438 m!6322240))

(declare-fun m!6322674 () Bool)

(assert (=> d!1700438 m!6322674))

(declare-fun m!6322676 () Bool)

(assert (=> b!5284951 m!6322676))

(assert (=> b!5284959 m!6322240))

(declare-fun m!6322678 () Bool)

(assert (=> b!5284959 m!6322678))

(assert (=> b!5284959 m!6322678))

(declare-fun m!6322680 () Bool)

(assert (=> b!5284959 m!6322680))

(declare-fun m!6322682 () Bool)

(assert (=> b!5284955 m!6322682))

(assert (=> b!5284953 m!6322240))

(declare-fun m!6322684 () Bool)

(assert (=> b!5284953 m!6322684))

(assert (=> b!5284960 m!6322240))

(declare-fun m!6322686 () Bool)

(assert (=> b!5284960 m!6322686))

(declare-fun m!6322688 () Bool)

(assert (=> b!5284952 m!6322688))

(declare-fun m!6322690 () Bool)

(assert (=> b!5284956 m!6322690))

(assert (=> b!5284584 d!1700438))

(declare-fun bs!1224810 () Bool)

(declare-fun d!1700456 () Bool)

(assert (= bs!1224810 (and d!1700456 d!1700364)))

(declare-fun lambda!267211 () Int)

(assert (=> bs!1224810 (= lambda!267211 lambda!267182)))

(declare-fun bs!1224812 () Bool)

(assert (= bs!1224812 (and d!1700456 d!1700438)))

(assert (=> bs!1224812 (= lambda!267211 lambda!267204)))

(declare-fun bs!1224814 () Bool)

(assert (= bs!1224814 (and d!1700456 d!1700344)))

(assert (=> bs!1224814 (= lambda!267211 lambda!267176)))

(declare-fun bs!1224815 () Bool)

(assert (= bs!1224815 (and d!1700456 b!5284609)))

(assert (=> bs!1224815 (= lambda!267211 lambda!267163)))

(declare-fun bs!1224816 () Bool)

(assert (= bs!1224816 (and d!1700456 d!1700366)))

(assert (=> bs!1224816 (= lambda!267211 lambda!267191)))

(declare-fun lt!2160084 () List!61038)

(assert (=> d!1700456 (forall!14321 lt!2160084 lambda!267211)))

(declare-fun e!3285900 () List!61038)

(assert (=> d!1700456 (= lt!2160084 e!3285900)))

(declare-fun c!916399 () Bool)

(assert (=> d!1700456 (= c!916399 ((_ is Cons!60915) zl!343))))

(assert (=> d!1700456 (= (unfocusZipperList!355 zl!343) lt!2160084)))

(declare-fun b!5284980 () Bool)

(assert (=> b!5284980 (= e!3285900 (Cons!60914 (generalisedConcat!582 (exprs!4797 (h!67363 zl!343))) (unfocusZipperList!355 (t!374242 zl!343))))))

(declare-fun b!5284981 () Bool)

(assert (=> b!5284981 (= e!3285900 Nil!60914)))

(assert (= (and d!1700456 c!916399) b!5284980))

(assert (= (and d!1700456 (not c!916399)) b!5284981))

(declare-fun m!6322700 () Bool)

(assert (=> d!1700456 m!6322700))

(assert (=> b!5284980 m!6322320))

(declare-fun m!6322703 () Bool)

(assert (=> b!5284980 m!6322703))

(assert (=> b!5284584 d!1700456))

(assert (=> b!5284585 d!1700424))

(declare-fun bs!1224833 () Bool)

(declare-fun b!5285121 () Bool)

(assert (= bs!1224833 (and b!5285121 b!5284603)))

(declare-fun lambda!267221 () Int)

(assert (=> bs!1224833 (not (= lambda!267221 lambda!267159))))

(assert (=> bs!1224833 (not (= lambda!267221 lambda!267160))))

(declare-fun bs!1224834 () Bool)

(assert (= bs!1224834 (and b!5285121 b!5284609)))

(assert (=> bs!1224834 (not (= lambda!267221 lambda!267162))))

(assert (=> b!5285121 true))

(assert (=> b!5285121 true))

(declare-fun bs!1224835 () Bool)

(declare-fun b!5285119 () Bool)

(assert (= bs!1224835 (and b!5285119 b!5284603)))

(declare-fun lambda!267222 () Int)

(assert (=> bs!1224835 (not (= lambda!267222 lambda!267159))))

(assert (=> bs!1224835 (= lambda!267222 lambda!267160)))

(declare-fun bs!1224837 () Bool)

(assert (= bs!1224837 (and b!5285119 b!5284609)))

(assert (=> bs!1224837 (not (= lambda!267222 lambda!267162))))

(declare-fun bs!1224839 () Bool)

(assert (= bs!1224839 (and b!5285119 b!5285121)))

(assert (=> bs!1224839 (not (= lambda!267222 lambda!267221))))

(assert (=> b!5285119 true))

(assert (=> b!5285119 true))

(declare-fun b!5285114 () Bool)

(declare-fun e!3285977 () Bool)

(declare-fun e!3285974 () Bool)

(assert (=> b!5285114 (= e!3285977 e!3285974)))

(declare-fun c!916440 () Bool)

(assert (=> b!5285114 (= c!916440 ((_ is Star!14913) r!7292))))

(declare-fun b!5285115 () Bool)

(declare-fun res!2241502 () Bool)

(declare-fun e!3285978 () Bool)

(assert (=> b!5285115 (=> res!2241502 e!3285978)))

(declare-fun call!376439 () Bool)

(assert (=> b!5285115 (= res!2241502 call!376439)))

(assert (=> b!5285115 (= e!3285974 e!3285978)))

(declare-fun b!5285116 () Bool)

(declare-fun e!3285979 () Bool)

(assert (=> b!5285116 (= e!3285979 (= s!2326 (Cons!60916 (c!916265 r!7292) Nil!60916)))))

(declare-fun bm!376434 () Bool)

(assert (=> bm!376434 (= call!376439 (isEmpty!32871 s!2326))))

(declare-fun b!5285117 () Bool)

(declare-fun e!3285975 () Bool)

(declare-fun e!3285976 () Bool)

(assert (=> b!5285117 (= e!3285975 e!3285976)))

(declare-fun res!2241500 () Bool)

(assert (=> b!5285117 (= res!2241500 (not ((_ is EmptyLang!14913) r!7292)))))

(assert (=> b!5285117 (=> (not res!2241500) (not e!3285976))))

(declare-fun b!5285118 () Bool)

(declare-fun e!3285973 () Bool)

(assert (=> b!5285118 (= e!3285973 (matchRSpec!2016 (regTwo!30339 r!7292) s!2326))))

(declare-fun d!1700462 () Bool)

(declare-fun c!916439 () Bool)

(assert (=> d!1700462 (= c!916439 ((_ is EmptyExpr!14913) r!7292))))

(assert (=> d!1700462 (= (matchRSpec!2016 r!7292 s!2326) e!3285975)))

(declare-fun call!376440 () Bool)

(assert (=> b!5285119 (= e!3285974 call!376440)))

(declare-fun b!5285120 () Bool)

(declare-fun c!916438 () Bool)

(assert (=> b!5285120 (= c!916438 ((_ is ElementMatch!14913) r!7292))))

(assert (=> b!5285120 (= e!3285976 e!3285979)))

(assert (=> b!5285121 (= e!3285978 call!376440)))

(declare-fun bm!376435 () Bool)

(assert (=> bm!376435 (= call!376440 (Exists!2094 (ite c!916440 lambda!267221 lambda!267222)))))

(declare-fun b!5285122 () Bool)

(assert (=> b!5285122 (= e!3285975 call!376439)))

(declare-fun b!5285123 () Bool)

(assert (=> b!5285123 (= e!3285977 e!3285973)))

(declare-fun res!2241501 () Bool)

(assert (=> b!5285123 (= res!2241501 (matchRSpec!2016 (regOne!30339 r!7292) s!2326))))

(assert (=> b!5285123 (=> res!2241501 e!3285973)))

(declare-fun b!5285124 () Bool)

(declare-fun c!916441 () Bool)

(assert (=> b!5285124 (= c!916441 ((_ is Union!14913) r!7292))))

(assert (=> b!5285124 (= e!3285979 e!3285977)))

(assert (= (and d!1700462 c!916439) b!5285122))

(assert (= (and d!1700462 (not c!916439)) b!5285117))

(assert (= (and b!5285117 res!2241500) b!5285120))

(assert (= (and b!5285120 c!916438) b!5285116))

(assert (= (and b!5285120 (not c!916438)) b!5285124))

(assert (= (and b!5285124 c!916441) b!5285123))

(assert (= (and b!5285124 (not c!916441)) b!5285114))

(assert (= (and b!5285123 (not res!2241501)) b!5285118))

(assert (= (and b!5285114 c!916440) b!5285115))

(assert (= (and b!5285114 (not c!916440)) b!5285119))

(assert (= (and b!5285115 (not res!2241502)) b!5285121))

(assert (= (or b!5285121 b!5285119) bm!376435))

(assert (= (or b!5285122 b!5285115) bm!376434))

(declare-fun m!6322790 () Bool)

(assert (=> bm!376434 m!6322790))

(declare-fun m!6322792 () Bool)

(assert (=> b!5285118 m!6322792))

(declare-fun m!6322794 () Bool)

(assert (=> bm!376435 m!6322794))

(declare-fun m!6322796 () Bool)

(assert (=> b!5285123 m!6322796))

(assert (=> b!5284604 d!1700462))

(declare-fun b!5285221 () Bool)

(declare-fun res!2241540 () Bool)

(declare-fun e!3286040 () Bool)

(assert (=> b!5285221 (=> res!2241540 e!3286040)))

(assert (=> b!5285221 (= res!2241540 (not (isEmpty!32871 (tail!10423 s!2326))))))

(declare-fun b!5285222 () Bool)

(declare-fun res!2241538 () Bool)

(declare-fun e!3286035 () Bool)

(assert (=> b!5285222 (=> (not res!2241538) (not e!3286035))))

(assert (=> b!5285222 (= res!2241538 (isEmpty!32871 (tail!10423 s!2326)))))

(declare-fun b!5285223 () Bool)

(assert (=> b!5285223 (= e!3286035 (= (head!11326 s!2326) (c!916265 r!7292)))))

(declare-fun b!5285224 () Bool)

(assert (=> b!5285224 (= e!3286040 (not (= (head!11326 s!2326) (c!916265 r!7292))))))

(declare-fun b!5285225 () Bool)

(declare-fun e!3286036 () Bool)

(declare-fun derivativeStep!4124 (Regex!14913 C!30096) Regex!14913)

(assert (=> b!5285225 (= e!3286036 (matchR!7098 (derivativeStep!4124 r!7292 (head!11326 s!2326)) (tail!10423 s!2326)))))

(declare-fun b!5285226 () Bool)

(assert (=> b!5285226 (= e!3286036 (nullable!5082 r!7292))))

(declare-fun b!5285227 () Bool)

(declare-fun e!3286038 () Bool)

(assert (=> b!5285227 (= e!3286038 e!3286040)))

(declare-fun res!2241539 () Bool)

(assert (=> b!5285227 (=> res!2241539 e!3286040)))

(declare-fun call!376455 () Bool)

(assert (=> b!5285227 (= res!2241539 call!376455)))

(declare-fun d!1700484 () Bool)

(declare-fun e!3286041 () Bool)

(assert (=> d!1700484 e!3286041))

(declare-fun c!916475 () Bool)

(assert (=> d!1700484 (= c!916475 ((_ is EmptyExpr!14913) r!7292))))

(declare-fun lt!2160111 () Bool)

(assert (=> d!1700484 (= lt!2160111 e!3286036)))

(declare-fun c!916476 () Bool)

(assert (=> d!1700484 (= c!916476 (isEmpty!32871 s!2326))))

(assert (=> d!1700484 (validRegex!6649 r!7292)))

(assert (=> d!1700484 (= (matchR!7098 r!7292 s!2326) lt!2160111)))

(declare-fun b!5285228 () Bool)

(assert (=> b!5285228 (= e!3286041 (= lt!2160111 call!376455))))

(declare-fun b!5285229 () Bool)

(declare-fun e!3286039 () Bool)

(assert (=> b!5285229 (= e!3286039 (not lt!2160111))))

(declare-fun b!5285230 () Bool)

(assert (=> b!5285230 (= e!3286041 e!3286039)))

(declare-fun c!916474 () Bool)

(assert (=> b!5285230 (= c!916474 ((_ is EmptyLang!14913) r!7292))))

(declare-fun b!5285231 () Bool)

(declare-fun res!2241541 () Bool)

(assert (=> b!5285231 (=> (not res!2241541) (not e!3286035))))

(assert (=> b!5285231 (= res!2241541 (not call!376455))))

(declare-fun b!5285232 () Bool)

(declare-fun e!3286037 () Bool)

(assert (=> b!5285232 (= e!3286037 e!3286038)))

(declare-fun res!2241537 () Bool)

(assert (=> b!5285232 (=> (not res!2241537) (not e!3286038))))

(assert (=> b!5285232 (= res!2241537 (not lt!2160111))))

(declare-fun b!5285233 () Bool)

(declare-fun res!2241542 () Bool)

(assert (=> b!5285233 (=> res!2241542 e!3286037)))

(assert (=> b!5285233 (= res!2241542 (not ((_ is ElementMatch!14913) r!7292)))))

(assert (=> b!5285233 (= e!3286039 e!3286037)))

(declare-fun bm!376450 () Bool)

(assert (=> bm!376450 (= call!376455 (isEmpty!32871 s!2326))))

(declare-fun b!5285234 () Bool)

(declare-fun res!2241544 () Bool)

(assert (=> b!5285234 (=> res!2241544 e!3286037)))

(assert (=> b!5285234 (= res!2241544 e!3286035)))

(declare-fun res!2241543 () Bool)

(assert (=> b!5285234 (=> (not res!2241543) (not e!3286035))))

(assert (=> b!5285234 (= res!2241543 lt!2160111)))

(assert (= (and d!1700484 c!916476) b!5285226))

(assert (= (and d!1700484 (not c!916476)) b!5285225))

(assert (= (and d!1700484 c!916475) b!5285228))

(assert (= (and d!1700484 (not c!916475)) b!5285230))

(assert (= (and b!5285230 c!916474) b!5285229))

(assert (= (and b!5285230 (not c!916474)) b!5285233))

(assert (= (and b!5285233 (not res!2241542)) b!5285234))

(assert (= (and b!5285234 res!2241543) b!5285231))

(assert (= (and b!5285231 res!2241541) b!5285222))

(assert (= (and b!5285222 res!2241538) b!5285223))

(assert (= (and b!5285234 (not res!2241544)) b!5285232))

(assert (= (and b!5285232 res!2241537) b!5285227))

(assert (= (and b!5285227 (not res!2241539)) b!5285221))

(assert (= (and b!5285221 (not res!2241540)) b!5285224))

(assert (= (or b!5285228 b!5285227 b!5285231) bm!376450))

(declare-fun m!6322866 () Bool)

(assert (=> b!5285222 m!6322866))

(assert (=> b!5285222 m!6322866))

(declare-fun m!6322868 () Bool)

(assert (=> b!5285222 m!6322868))

(declare-fun m!6322870 () Bool)

(assert (=> b!5285223 m!6322870))

(assert (=> b!5285224 m!6322870))

(assert (=> b!5285225 m!6322870))

(assert (=> b!5285225 m!6322870))

(declare-fun m!6322872 () Bool)

(assert (=> b!5285225 m!6322872))

(assert (=> b!5285225 m!6322866))

(assert (=> b!5285225 m!6322872))

(assert (=> b!5285225 m!6322866))

(declare-fun m!6322874 () Bool)

(assert (=> b!5285225 m!6322874))

(assert (=> bm!376450 m!6322790))

(assert (=> d!1700484 m!6322790))

(assert (=> d!1700484 m!6322244))

(assert (=> b!5285221 m!6322866))

(assert (=> b!5285221 m!6322866))

(assert (=> b!5285221 m!6322868))

(declare-fun m!6322876 () Bool)

(assert (=> b!5285226 m!6322876))

(assert (=> b!5284604 d!1700484))

(declare-fun d!1700506 () Bool)

(assert (=> d!1700506 (= (matchR!7098 r!7292 s!2326) (matchRSpec!2016 r!7292 s!2326))))

(declare-fun lt!2160115 () Unit!153170)

(declare-fun choose!39452 (Regex!14913 List!61040) Unit!153170)

(assert (=> d!1700506 (= lt!2160115 (choose!39452 r!7292 s!2326))))

(assert (=> d!1700506 (validRegex!6649 r!7292)))

(assert (=> d!1700506 (= (mainMatchTheorem!2016 r!7292 s!2326) lt!2160115)))

(declare-fun bs!1224851 () Bool)

(assert (= bs!1224851 d!1700506))

(assert (=> bs!1224851 m!6322294))

(assert (=> bs!1224851 m!6322292))

(declare-fun m!6322878 () Bool)

(assert (=> bs!1224851 m!6322878))

(assert (=> bs!1224851 m!6322244))

(assert (=> b!5284604 d!1700506))

(declare-fun b!5285279 () Bool)

(declare-fun res!2241563 () Bool)

(declare-fun e!3286076 () Bool)

(assert (=> b!5285279 (=> res!2241563 e!3286076)))

(assert (=> b!5285279 (= res!2241563 (not ((_ is Concat!23758) r!7292)))))

(declare-fun e!3286073 () Bool)

(assert (=> b!5285279 (= e!3286073 e!3286076)))

(declare-fun b!5285280 () Bool)

(declare-fun e!3286077 () Bool)

(assert (=> b!5285280 (= e!3286077 e!3286073)))

(declare-fun c!916492 () Bool)

(assert (=> b!5285280 (= c!916492 ((_ is Union!14913) r!7292))))

(declare-fun d!1700508 () Bool)

(declare-fun res!2241561 () Bool)

(declare-fun e!3286074 () Bool)

(assert (=> d!1700508 (=> res!2241561 e!3286074)))

(assert (=> d!1700508 (= res!2241561 ((_ is ElementMatch!14913) r!7292))))

(assert (=> d!1700508 (= (validRegex!6649 r!7292) e!3286074)))

(declare-fun b!5285281 () Bool)

(declare-fun e!3286072 () Bool)

(assert (=> b!5285281 (= e!3286077 e!3286072)))

(declare-fun res!2241562 () Bool)

(assert (=> b!5285281 (= res!2241562 (not (nullable!5082 (reg!15242 r!7292))))))

(assert (=> b!5285281 (=> (not res!2241562) (not e!3286072))))

(declare-fun b!5285282 () Bool)

(declare-fun e!3286071 () Bool)

(assert (=> b!5285282 (= e!3286076 e!3286071)))

(declare-fun res!2241559 () Bool)

(assert (=> b!5285282 (=> (not res!2241559) (not e!3286071))))

(declare-fun call!376464 () Bool)

(assert (=> b!5285282 (= res!2241559 call!376464)))

(declare-fun call!376463 () Bool)

(declare-fun bm!376457 () Bool)

(declare-fun c!916493 () Bool)

(assert (=> bm!376457 (= call!376463 (validRegex!6649 (ite c!916493 (reg!15242 r!7292) (ite c!916492 (regTwo!30339 r!7292) (regTwo!30338 r!7292)))))))

(declare-fun b!5285283 () Bool)

(declare-fun call!376462 () Bool)

(assert (=> b!5285283 (= e!3286071 call!376462)))

(declare-fun b!5285284 () Bool)

(assert (=> b!5285284 (= e!3286072 call!376463)))

(declare-fun b!5285285 () Bool)

(assert (=> b!5285285 (= e!3286074 e!3286077)))

(assert (=> b!5285285 (= c!916493 ((_ is Star!14913) r!7292))))

(declare-fun bm!376458 () Bool)

(assert (=> bm!376458 (= call!376462 call!376463)))

(declare-fun b!5285286 () Bool)

(declare-fun e!3286075 () Bool)

(assert (=> b!5285286 (= e!3286075 call!376462)))

(declare-fun bm!376459 () Bool)

(assert (=> bm!376459 (= call!376464 (validRegex!6649 (ite c!916492 (regOne!30339 r!7292) (regOne!30338 r!7292))))))

(declare-fun b!5285287 () Bool)

(declare-fun res!2241560 () Bool)

(assert (=> b!5285287 (=> (not res!2241560) (not e!3286075))))

(assert (=> b!5285287 (= res!2241560 call!376464)))

(assert (=> b!5285287 (= e!3286073 e!3286075)))

(assert (= (and d!1700508 (not res!2241561)) b!5285285))

(assert (= (and b!5285285 c!916493) b!5285281))

(assert (= (and b!5285285 (not c!916493)) b!5285280))

(assert (= (and b!5285281 res!2241562) b!5285284))

(assert (= (and b!5285280 c!916492) b!5285287))

(assert (= (and b!5285280 (not c!916492)) b!5285279))

(assert (= (and b!5285287 res!2241560) b!5285286))

(assert (= (and b!5285279 (not res!2241563)) b!5285282))

(assert (= (and b!5285282 res!2241559) b!5285283))

(assert (= (or b!5285286 b!5285283) bm!376458))

(assert (= (or b!5285287 b!5285282) bm!376459))

(assert (= (or b!5285284 bm!376458) bm!376457))

(declare-fun m!6322904 () Bool)

(assert (=> b!5285281 m!6322904))

(declare-fun m!6322906 () Bool)

(assert (=> bm!376457 m!6322906))

(declare-fun m!6322908 () Bool)

(assert (=> bm!376459 m!6322908))

(assert (=> start!557906 d!1700508))

(declare-fun d!1700514 () Bool)

(declare-fun c!916494 () Bool)

(assert (=> d!1700514 (= c!916494 (isEmpty!32871 (t!374243 s!2326)))))

(declare-fun e!3286080 () Bool)

(assert (=> d!1700514 (= (matchZipper!1157 lt!2159988 (t!374243 s!2326)) e!3286080)))

(declare-fun b!5285290 () Bool)

(assert (=> b!5285290 (= e!3286080 (nullableZipper!1304 lt!2159988))))

(declare-fun b!5285291 () Bool)

(assert (=> b!5285291 (= e!3286080 (matchZipper!1157 (derivationStepZipper!1156 lt!2159988 (head!11326 (t!374243 s!2326))) (tail!10423 (t!374243 s!2326))))))

(assert (= (and d!1700514 c!916494) b!5285290))

(assert (= (and d!1700514 (not c!916494)) b!5285291))

(assert (=> d!1700514 m!6322584))

(declare-fun m!6322910 () Bool)

(assert (=> b!5285290 m!6322910))

(assert (=> b!5285291 m!6322588))

(assert (=> b!5285291 m!6322588))

(declare-fun m!6322918 () Bool)

(assert (=> b!5285291 m!6322918))

(assert (=> b!5285291 m!6322592))

(assert (=> b!5285291 m!6322918))

(assert (=> b!5285291 m!6322592))

(declare-fun m!6322920 () Bool)

(assert (=> b!5285291 m!6322920))

(assert (=> b!5284613 d!1700514))

(declare-fun d!1700518 () Bool)

(declare-fun lt!2160124 () Int)

(assert (=> d!1700518 (>= lt!2160124 0)))

(declare-fun e!3286091 () Int)

(assert (=> d!1700518 (= lt!2160124 e!3286091)))

(declare-fun c!916501 () Bool)

(assert (=> d!1700518 (= c!916501 ((_ is Cons!60915) lt!2160011))))

(assert (=> d!1700518 (= (zipperDepthTotal!74 lt!2160011) lt!2160124)))

(declare-fun b!5285308 () Bool)

(assert (=> b!5285308 (= e!3286091 (+ (contextDepthTotal!54 (h!67363 lt!2160011)) (zipperDepthTotal!74 (t!374242 lt!2160011))))))

(declare-fun b!5285309 () Bool)

(assert (=> b!5285309 (= e!3286091 0)))

(assert (= (and d!1700518 c!916501) b!5285308))

(assert (= (and d!1700518 (not c!916501)) b!5285309))

(declare-fun m!6322922 () Bool)

(assert (=> b!5285308 m!6322922))

(declare-fun m!6322924 () Bool)

(assert (=> b!5285308 m!6322924))

(assert (=> b!5284593 d!1700518))

(declare-fun d!1700520 () Bool)

(declare-fun lt!2160125 () Int)

(assert (=> d!1700520 (>= lt!2160125 0)))

(declare-fun e!3286092 () Int)

(assert (=> d!1700520 (= lt!2160125 e!3286092)))

(declare-fun c!916502 () Bool)

(assert (=> d!1700520 (= c!916502 ((_ is Cons!60915) zl!343))))

(assert (=> d!1700520 (= (zipperDepthTotal!74 zl!343) lt!2160125)))

(declare-fun b!5285310 () Bool)

(assert (=> b!5285310 (= e!3286092 (+ (contextDepthTotal!54 (h!67363 zl!343)) (zipperDepthTotal!74 (t!374242 zl!343))))))

(declare-fun b!5285311 () Bool)

(assert (=> b!5285311 (= e!3286092 0)))

(assert (= (and d!1700520 c!916502) b!5285310))

(assert (= (and d!1700520 (not c!916502)) b!5285311))

(assert (=> b!5285310 m!6322328))

(declare-fun m!6322926 () Bool)

(assert (=> b!5285310 m!6322926))

(assert (=> b!5284593 d!1700520))

(declare-fun b!5285386 () Bool)

(assert (=> b!5285386 true))

(declare-fun bs!1224879 () Bool)

(declare-fun b!5285388 () Bool)

(assert (= bs!1224879 (and b!5285388 b!5285386)))

(declare-fun lambda!267239 () Int)

(declare-fun lambda!267240 () Int)

(declare-fun lt!2160139 () Int)

(declare-fun lt!2160136 () Int)

(assert (=> bs!1224879 (= (= lt!2160139 lt!2160136) (= lambda!267240 lambda!267239))))

(assert (=> b!5285388 true))

(declare-fun d!1700522 () Bool)

(declare-fun e!3286127 () Bool)

(assert (=> d!1700522 e!3286127))

(declare-fun res!2241580 () Bool)

(assert (=> d!1700522 (=> (not res!2241580) (not e!3286127))))

(assert (=> d!1700522 (= res!2241580 (>= lt!2160139 0))))

(declare-fun e!3286128 () Int)

(assert (=> d!1700522 (= lt!2160139 e!3286128)))

(declare-fun c!916514 () Bool)

(assert (=> d!1700522 (= c!916514 ((_ is Cons!60915) lt!2160011))))

(assert (=> d!1700522 (= (zipperDepth!30 lt!2160011) lt!2160139)))

(assert (=> b!5285386 (= e!3286128 lt!2160136)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!16 (Context!8594) Int)

(assert (=> b!5285386 (= lt!2160136 (maxBigInt!0 (contextDepth!16 (h!67363 lt!2160011)) (zipperDepth!30 (t!374242 lt!2160011))))))

(declare-fun lt!2160137 () Unit!153170)

(declare-fun lambda!267238 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!10 (List!61039 Int Int Int) Unit!153170)

(assert (=> b!5285386 (= lt!2160137 (lemmaForallContextDepthBiggerThanTransitive!10 (t!374242 lt!2160011) lt!2160136 (zipperDepth!30 (t!374242 lt!2160011)) lambda!267238))))

(declare-fun forall!14323 (List!61039 Int) Bool)

(assert (=> b!5285386 (forall!14323 (t!374242 lt!2160011) lambda!267239)))

(declare-fun lt!2160138 () Unit!153170)

(assert (=> b!5285386 (= lt!2160138 lt!2160137)))

(declare-fun b!5285387 () Bool)

(assert (=> b!5285387 (= e!3286128 0)))

(assert (=> b!5285388 (= e!3286127 (forall!14323 lt!2160011 lambda!267240))))

(assert (= (and d!1700522 c!916514) b!5285386))

(assert (= (and d!1700522 (not c!916514)) b!5285387))

(assert (= (and d!1700522 res!2241580) b!5285388))

(declare-fun m!6322948 () Bool)

(assert (=> b!5285386 m!6322948))

(declare-fun m!6322950 () Bool)

(assert (=> b!5285386 m!6322950))

(declare-fun m!6322952 () Bool)

(assert (=> b!5285386 m!6322952))

(assert (=> b!5285386 m!6322948))

(declare-fun m!6322954 () Bool)

(assert (=> b!5285386 m!6322954))

(assert (=> b!5285386 m!6322950))

(assert (=> b!5285386 m!6322950))

(declare-fun m!6322956 () Bool)

(assert (=> b!5285386 m!6322956))

(declare-fun m!6322958 () Bool)

(assert (=> b!5285388 m!6322958))

(assert (=> b!5284591 d!1700522))

(declare-fun bs!1224880 () Bool)

(declare-fun b!5285391 () Bool)

(assert (= bs!1224880 (and b!5285391 b!5285386)))

(declare-fun lambda!267241 () Int)

(assert (=> bs!1224880 (= lambda!267241 lambda!267238)))

(declare-fun lambda!267242 () Int)

(declare-fun lt!2160140 () Int)

(assert (=> bs!1224880 (= (= lt!2160140 lt!2160136) (= lambda!267242 lambda!267239))))

(declare-fun bs!1224881 () Bool)

(assert (= bs!1224881 (and b!5285391 b!5285388)))

(assert (=> bs!1224881 (= (= lt!2160140 lt!2160139) (= lambda!267242 lambda!267240))))

(assert (=> b!5285391 true))

(declare-fun bs!1224882 () Bool)

(declare-fun b!5285393 () Bool)

(assert (= bs!1224882 (and b!5285393 b!5285386)))

(declare-fun lt!2160143 () Int)

(declare-fun lambda!267243 () Int)

(assert (=> bs!1224882 (= (= lt!2160143 lt!2160136) (= lambda!267243 lambda!267239))))

(declare-fun bs!1224883 () Bool)

(assert (= bs!1224883 (and b!5285393 b!5285388)))

(assert (=> bs!1224883 (= (= lt!2160143 lt!2160139) (= lambda!267243 lambda!267240))))

(declare-fun bs!1224884 () Bool)

(assert (= bs!1224884 (and b!5285393 b!5285391)))

(assert (=> bs!1224884 (= (= lt!2160143 lt!2160140) (= lambda!267243 lambda!267242))))

(assert (=> b!5285393 true))

(declare-fun d!1700536 () Bool)

(declare-fun e!3286129 () Bool)

(assert (=> d!1700536 e!3286129))

(declare-fun res!2241581 () Bool)

(assert (=> d!1700536 (=> (not res!2241581) (not e!3286129))))

(assert (=> d!1700536 (= res!2241581 (>= lt!2160143 0))))

(declare-fun e!3286130 () Int)

(assert (=> d!1700536 (= lt!2160143 e!3286130)))

(declare-fun c!916515 () Bool)

(assert (=> d!1700536 (= c!916515 ((_ is Cons!60915) zl!343))))

(assert (=> d!1700536 (= (zipperDepth!30 zl!343) lt!2160143)))

(assert (=> b!5285391 (= e!3286130 lt!2160140)))

(assert (=> b!5285391 (= lt!2160140 (maxBigInt!0 (contextDepth!16 (h!67363 zl!343)) (zipperDepth!30 (t!374242 zl!343))))))

(declare-fun lt!2160141 () Unit!153170)

(assert (=> b!5285391 (= lt!2160141 (lemmaForallContextDepthBiggerThanTransitive!10 (t!374242 zl!343) lt!2160140 (zipperDepth!30 (t!374242 zl!343)) lambda!267241))))

(assert (=> b!5285391 (forall!14323 (t!374242 zl!343) lambda!267242)))

(declare-fun lt!2160142 () Unit!153170)

(assert (=> b!5285391 (= lt!2160142 lt!2160141)))

(declare-fun b!5285392 () Bool)

(assert (=> b!5285392 (= e!3286130 0)))

(assert (=> b!5285393 (= e!3286129 (forall!14323 zl!343 lambda!267243))))

(assert (= (and d!1700536 c!916515) b!5285391))

(assert (= (and d!1700536 (not c!916515)) b!5285392))

(assert (= (and d!1700536 res!2241581) b!5285393))

(declare-fun m!6322960 () Bool)

(assert (=> b!5285391 m!6322960))

(declare-fun m!6322962 () Bool)

(assert (=> b!5285391 m!6322962))

(declare-fun m!6322964 () Bool)

(assert (=> b!5285391 m!6322964))

(assert (=> b!5285391 m!6322960))

(declare-fun m!6322966 () Bool)

(assert (=> b!5285391 m!6322966))

(assert (=> b!5285391 m!6322962))

(assert (=> b!5285391 m!6322962))

(declare-fun m!6322968 () Bool)

(assert (=> b!5285391 m!6322968))

(declare-fun m!6322970 () Bool)

(assert (=> b!5285393 m!6322970))

(assert (=> b!5284591 d!1700536))

(declare-fun d!1700538 () Bool)

(declare-fun choose!39453 ((InoxSet Context!8594) Int) (InoxSet Context!8594))

(assert (=> d!1700538 (= (flatMap!640 lt!2160004 lambda!267161) (choose!39453 lt!2160004 lambda!267161))))

(declare-fun bs!1224885 () Bool)

(assert (= bs!1224885 d!1700538))

(declare-fun m!6322972 () Bool)

(assert (=> bs!1224885 m!6322972))

(assert (=> b!5284592 d!1700538))

(declare-fun b!5285404 () Bool)

(declare-fun e!3286139 () Bool)

(assert (=> b!5285404 (= e!3286139 (nullable!5082 (h!67362 (exprs!4797 lt!2159998))))))

(declare-fun b!5285405 () Bool)

(declare-fun e!3286137 () (InoxSet Context!8594))

(declare-fun call!376470 () (InoxSet Context!8594))

(assert (=> b!5285405 (= e!3286137 call!376470)))

(declare-fun b!5285406 () Bool)

(declare-fun e!3286138 () (InoxSet Context!8594))

(assert (=> b!5285406 (= e!3286138 ((_ map or) call!376470 (derivationStepZipperUp!285 (Context!8595 (t!374241 (exprs!4797 lt!2159998))) (h!67364 s!2326))))))

(declare-fun b!5285407 () Bool)

(assert (=> b!5285407 (= e!3286138 e!3286137)))

(declare-fun c!916521 () Bool)

(assert (=> b!5285407 (= c!916521 ((_ is Cons!60914) (exprs!4797 lt!2159998)))))

(declare-fun bm!376465 () Bool)

(assert (=> bm!376465 (= call!376470 (derivationStepZipperDown!361 (h!67362 (exprs!4797 lt!2159998)) (Context!8595 (t!374241 (exprs!4797 lt!2159998))) (h!67364 s!2326)))))

(declare-fun b!5285408 () Bool)

(assert (=> b!5285408 (= e!3286137 ((as const (Array Context!8594 Bool)) false))))

(declare-fun d!1700540 () Bool)

(declare-fun c!916520 () Bool)

(assert (=> d!1700540 (= c!916520 e!3286139)))

(declare-fun res!2241584 () Bool)

(assert (=> d!1700540 (=> (not res!2241584) (not e!3286139))))

(assert (=> d!1700540 (= res!2241584 ((_ is Cons!60914) (exprs!4797 lt!2159998)))))

(assert (=> d!1700540 (= (derivationStepZipperUp!285 lt!2159998 (h!67364 s!2326)) e!3286138)))

(assert (= (and d!1700540 res!2241584) b!5285404))

(assert (= (and d!1700540 c!916520) b!5285406))

(assert (= (and d!1700540 (not c!916520)) b!5285407))

(assert (= (and b!5285407 c!916521) b!5285405))

(assert (= (and b!5285407 (not c!916521)) b!5285408))

(assert (= (or b!5285406 b!5285405) bm!376465))

(declare-fun m!6322974 () Bool)

(assert (=> b!5285404 m!6322974))

(declare-fun m!6322976 () Bool)

(assert (=> b!5285406 m!6322976))

(declare-fun m!6322978 () Bool)

(assert (=> bm!376465 m!6322978))

(assert (=> b!5284592 d!1700540))

(declare-fun bs!1224886 () Bool)

(declare-fun d!1700542 () Bool)

(assert (= bs!1224886 (and d!1700542 b!5284590)))

(declare-fun lambda!267246 () Int)

(assert (=> bs!1224886 (= lambda!267246 lambda!267161)))

(assert (=> d!1700542 true))

(assert (=> d!1700542 (= (derivationStepZipper!1156 lt!2160004 (h!67364 s!2326)) (flatMap!640 lt!2160004 lambda!267246))))

(declare-fun bs!1224887 () Bool)

(assert (= bs!1224887 d!1700542))

(declare-fun m!6322980 () Bool)

(assert (=> bs!1224887 m!6322980))

(assert (=> b!5284592 d!1700542))

(declare-fun b!5285411 () Bool)

(declare-fun e!3286142 () Bool)

(assert (=> b!5285411 (= e!3286142 (nullable!5082 (h!67362 (exprs!4797 lt!2159982))))))

(declare-fun b!5285412 () Bool)

(declare-fun e!3286140 () (InoxSet Context!8594))

(declare-fun call!376471 () (InoxSet Context!8594))

(assert (=> b!5285412 (= e!3286140 call!376471)))

(declare-fun e!3286141 () (InoxSet Context!8594))

(declare-fun b!5285413 () Bool)

(assert (=> b!5285413 (= e!3286141 ((_ map or) call!376471 (derivationStepZipperUp!285 (Context!8595 (t!374241 (exprs!4797 lt!2159982))) (h!67364 s!2326))))))

(declare-fun b!5285414 () Bool)

(assert (=> b!5285414 (= e!3286141 e!3286140)))

(declare-fun c!916525 () Bool)

(assert (=> b!5285414 (= c!916525 ((_ is Cons!60914) (exprs!4797 lt!2159982)))))

(declare-fun bm!376466 () Bool)

(assert (=> bm!376466 (= call!376471 (derivationStepZipperDown!361 (h!67362 (exprs!4797 lt!2159982)) (Context!8595 (t!374241 (exprs!4797 lt!2159982))) (h!67364 s!2326)))))

(declare-fun b!5285415 () Bool)

(assert (=> b!5285415 (= e!3286140 ((as const (Array Context!8594 Bool)) false))))

(declare-fun d!1700544 () Bool)

(declare-fun c!916524 () Bool)

(assert (=> d!1700544 (= c!916524 e!3286142)))

(declare-fun res!2241585 () Bool)

(assert (=> d!1700544 (=> (not res!2241585) (not e!3286142))))

(assert (=> d!1700544 (= res!2241585 ((_ is Cons!60914) (exprs!4797 lt!2159982)))))

(assert (=> d!1700544 (= (derivationStepZipperUp!285 lt!2159982 (h!67364 s!2326)) e!3286141)))

(assert (= (and d!1700544 res!2241585) b!5285411))

(assert (= (and d!1700544 c!916524) b!5285413))

(assert (= (and d!1700544 (not c!916524)) b!5285414))

(assert (= (and b!5285414 c!916525) b!5285412))

(assert (= (and b!5285414 (not c!916525)) b!5285415))

(assert (= (or b!5285413 b!5285412) bm!376466))

(declare-fun m!6322982 () Bool)

(assert (=> b!5285411 m!6322982))

(declare-fun m!6322984 () Bool)

(assert (=> b!5285413 m!6322984))

(declare-fun m!6322986 () Bool)

(assert (=> bm!376466 m!6322986))

(assert (=> b!5284592 d!1700544))

(declare-fun d!1700546 () Bool)

(declare-fun dynLambda!24083 (Int Context!8594) (InoxSet Context!8594))

(assert (=> d!1700546 (= (flatMap!640 lt!2160004 lambda!267161) (dynLambda!24083 lambda!267161 lt!2159982))))

(declare-fun lt!2160146 () Unit!153170)

(declare-fun choose!39455 ((InoxSet Context!8594) Context!8594 Int) Unit!153170)

(assert (=> d!1700546 (= lt!2160146 (choose!39455 lt!2160004 lt!2159982 lambda!267161))))

(assert (=> d!1700546 (= lt!2160004 (store ((as const (Array Context!8594 Bool)) false) lt!2159982 true))))

(assert (=> d!1700546 (= (lemmaFlatMapOnSingletonSet!172 lt!2160004 lt!2159982 lambda!267161) lt!2160146)))

(declare-fun b_lambda!203869 () Bool)

(assert (=> (not b_lambda!203869) (not d!1700546)))

(declare-fun bs!1224888 () Bool)

(assert (= bs!1224888 d!1700546))

(assert (=> bs!1224888 m!6322308))

(declare-fun m!6322988 () Bool)

(assert (=> bs!1224888 m!6322988))

(declare-fun m!6322990 () Bool)

(assert (=> bs!1224888 m!6322990))

(assert (=> bs!1224888 m!6322302))

(assert (=> b!5284592 d!1700546))

(declare-fun d!1700548 () Bool)

(declare-fun lt!2160149 () Regex!14913)

(assert (=> d!1700548 (validRegex!6649 lt!2160149)))

(assert (=> d!1700548 (= lt!2160149 (generalisedUnion!842 (unfocusZipperList!355 zl!343)))))

(assert (=> d!1700548 (= (unfocusZipper!655 zl!343) lt!2160149)))

(declare-fun bs!1224889 () Bool)

(assert (= bs!1224889 d!1700548))

(declare-fun m!6322992 () Bool)

(assert (=> bs!1224889 m!6322992))

(assert (=> bs!1224889 m!6322240))

(assert (=> bs!1224889 m!6322240))

(assert (=> bs!1224889 m!6322242))

(assert (=> b!5284612 d!1700548))

(declare-fun d!1700550 () Bool)

(assert (=> d!1700550 (= (flatMap!640 z!1189 lambda!267161) (choose!39453 z!1189 lambda!267161))))

(declare-fun bs!1224890 () Bool)

(assert (= bs!1224890 d!1700550))

(declare-fun m!6322994 () Bool)

(assert (=> bs!1224890 m!6322994))

(assert (=> b!5284590 d!1700550))

(declare-fun b!5285416 () Bool)

(declare-fun e!3286145 () Bool)

(assert (=> b!5285416 (= e!3286145 (nullable!5082 (h!67362 (exprs!4797 (Context!8595 (Cons!60914 (h!67362 (exprs!4797 (h!67363 zl!343))) (t!374241 (exprs!4797 (h!67363 zl!343)))))))))))

(declare-fun b!5285417 () Bool)

(declare-fun e!3286143 () (InoxSet Context!8594))

(declare-fun call!376472 () (InoxSet Context!8594))

(assert (=> b!5285417 (= e!3286143 call!376472)))

(declare-fun b!5285418 () Bool)

(declare-fun e!3286144 () (InoxSet Context!8594))

(assert (=> b!5285418 (= e!3286144 ((_ map or) call!376472 (derivationStepZipperUp!285 (Context!8595 (t!374241 (exprs!4797 (Context!8595 (Cons!60914 (h!67362 (exprs!4797 (h!67363 zl!343))) (t!374241 (exprs!4797 (h!67363 zl!343)))))))) (h!67364 s!2326))))))

(declare-fun b!5285419 () Bool)

(assert (=> b!5285419 (= e!3286144 e!3286143)))

(declare-fun c!916527 () Bool)

(assert (=> b!5285419 (= c!916527 ((_ is Cons!60914) (exprs!4797 (Context!8595 (Cons!60914 (h!67362 (exprs!4797 (h!67363 zl!343))) (t!374241 (exprs!4797 (h!67363 zl!343))))))))))

(declare-fun bm!376467 () Bool)

(assert (=> bm!376467 (= call!376472 (derivationStepZipperDown!361 (h!67362 (exprs!4797 (Context!8595 (Cons!60914 (h!67362 (exprs!4797 (h!67363 zl!343))) (t!374241 (exprs!4797 (h!67363 zl!343))))))) (Context!8595 (t!374241 (exprs!4797 (Context!8595 (Cons!60914 (h!67362 (exprs!4797 (h!67363 zl!343))) (t!374241 (exprs!4797 (h!67363 zl!343)))))))) (h!67364 s!2326)))))

(declare-fun b!5285420 () Bool)

(assert (=> b!5285420 (= e!3286143 ((as const (Array Context!8594 Bool)) false))))

(declare-fun d!1700552 () Bool)

(declare-fun c!916526 () Bool)

(assert (=> d!1700552 (= c!916526 e!3286145)))

(declare-fun res!2241586 () Bool)

(assert (=> d!1700552 (=> (not res!2241586) (not e!3286145))))

(assert (=> d!1700552 (= res!2241586 ((_ is Cons!60914) (exprs!4797 (Context!8595 (Cons!60914 (h!67362 (exprs!4797 (h!67363 zl!343))) (t!374241 (exprs!4797 (h!67363 zl!343))))))))))

(assert (=> d!1700552 (= (derivationStepZipperUp!285 (Context!8595 (Cons!60914 (h!67362 (exprs!4797 (h!67363 zl!343))) (t!374241 (exprs!4797 (h!67363 zl!343))))) (h!67364 s!2326)) e!3286144)))

(assert (= (and d!1700552 res!2241586) b!5285416))

(assert (= (and d!1700552 c!916526) b!5285418))

(assert (= (and d!1700552 (not c!916526)) b!5285419))

(assert (= (and b!5285419 c!916527) b!5285417))

(assert (= (and b!5285419 (not c!916527)) b!5285420))

(assert (= (or b!5285418 b!5285417) bm!376467))

(declare-fun m!6322996 () Bool)

(assert (=> b!5285416 m!6322996))

(declare-fun m!6322998 () Bool)

(assert (=> b!5285418 m!6322998))

(declare-fun m!6323000 () Bool)

(assert (=> bm!376467 m!6323000))

(assert (=> b!5284590 d!1700552))

(declare-fun b!5285421 () Bool)

(declare-fun e!3286148 () Bool)

(assert (=> b!5285421 (= e!3286148 (nullable!5082 (regOne!30338 (h!67362 (exprs!4797 (h!67363 zl!343))))))))

(declare-fun bm!376468 () Bool)

(declare-fun call!376474 () List!61038)

(declare-fun call!376477 () List!61038)

(assert (=> bm!376468 (= call!376474 call!376477)))

(declare-fun b!5285422 () Bool)

(declare-fun c!916531 () Bool)

(assert (=> b!5285422 (= c!916531 ((_ is Star!14913) (h!67362 (exprs!4797 (h!67363 zl!343)))))))

(declare-fun e!3286150 () (InoxSet Context!8594))

(declare-fun e!3286149 () (InoxSet Context!8594))

(assert (=> b!5285422 (= e!3286150 e!3286149)))

(declare-fun b!5285423 () Bool)

(declare-fun call!376476 () (InoxSet Context!8594))

(assert (=> b!5285423 (= e!3286149 call!376476)))

(declare-fun d!1700554 () Bool)

(declare-fun c!916529 () Bool)

(assert (=> d!1700554 (= c!916529 (and ((_ is ElementMatch!14913) (h!67362 (exprs!4797 (h!67363 zl!343)))) (= (c!916265 (h!67362 (exprs!4797 (h!67363 zl!343)))) (h!67364 s!2326))))))

(declare-fun e!3286151 () (InoxSet Context!8594))

(assert (=> d!1700554 (= (derivationStepZipperDown!361 (h!67362 (exprs!4797 (h!67363 zl!343))) lt!2160012 (h!67364 s!2326)) e!3286151)))

(declare-fun b!5285424 () Bool)

(assert (=> b!5285424 (= e!3286151 (store ((as const (Array Context!8594 Bool)) false) lt!2160012 true))))

(declare-fun bm!376469 () Bool)

(declare-fun call!376473 () (InoxSet Context!8594))

(declare-fun call!376478 () (InoxSet Context!8594))

(assert (=> bm!376469 (= call!376473 call!376478)))

(declare-fun b!5285425 () Bool)

(assert (=> b!5285425 (= e!3286150 call!376476)))

(declare-fun c!916530 () Bool)

(declare-fun bm!376470 () Bool)

(declare-fun call!376475 () (InoxSet Context!8594))

(assert (=> bm!376470 (= call!376475 (derivationStepZipperDown!361 (ite c!916530 (regOne!30339 (h!67362 (exprs!4797 (h!67363 zl!343)))) (regOne!30338 (h!67362 (exprs!4797 (h!67363 zl!343))))) (ite c!916530 lt!2160012 (Context!8595 call!376477)) (h!67364 s!2326)))))

(declare-fun b!5285426 () Bool)

(declare-fun e!3286146 () (InoxSet Context!8594))

(assert (=> b!5285426 (= e!3286146 ((_ map or) call!376475 call!376473))))

(declare-fun b!5285427 () Bool)

(declare-fun c!916528 () Bool)

(assert (=> b!5285427 (= c!916528 e!3286148)))

(declare-fun res!2241587 () Bool)

(assert (=> b!5285427 (=> (not res!2241587) (not e!3286148))))

(assert (=> b!5285427 (= res!2241587 ((_ is Concat!23758) (h!67362 (exprs!4797 (h!67363 zl!343)))))))

(declare-fun e!3286147 () (InoxSet Context!8594))

(assert (=> b!5285427 (= e!3286147 e!3286146)))

(declare-fun b!5285428 () Bool)

(assert (=> b!5285428 (= e!3286147 ((_ map or) call!376475 call!376478))))

(declare-fun c!916532 () Bool)

(declare-fun bm!376471 () Bool)

(assert (=> bm!376471 (= call!376477 ($colon$colon!1353 (exprs!4797 lt!2160012) (ite (or c!916528 c!916532) (regTwo!30338 (h!67362 (exprs!4797 (h!67363 zl!343)))) (h!67362 (exprs!4797 (h!67363 zl!343))))))))

(declare-fun bm!376472 () Bool)

(assert (=> bm!376472 (= call!376478 (derivationStepZipperDown!361 (ite c!916530 (regTwo!30339 (h!67362 (exprs!4797 (h!67363 zl!343)))) (ite c!916528 (regTwo!30338 (h!67362 (exprs!4797 (h!67363 zl!343)))) (ite c!916532 (regOne!30338 (h!67362 (exprs!4797 (h!67363 zl!343)))) (reg!15242 (h!67362 (exprs!4797 (h!67363 zl!343))))))) (ite (or c!916530 c!916528) lt!2160012 (Context!8595 call!376474)) (h!67364 s!2326)))))

(declare-fun b!5285429 () Bool)

(assert (=> b!5285429 (= e!3286151 e!3286147)))

(assert (=> b!5285429 (= c!916530 ((_ is Union!14913) (h!67362 (exprs!4797 (h!67363 zl!343)))))))

(declare-fun bm!376473 () Bool)

(assert (=> bm!376473 (= call!376476 call!376473)))

(declare-fun b!5285430 () Bool)

(assert (=> b!5285430 (= e!3286146 e!3286150)))

(assert (=> b!5285430 (= c!916532 ((_ is Concat!23758) (h!67362 (exprs!4797 (h!67363 zl!343)))))))

(declare-fun b!5285431 () Bool)

(assert (=> b!5285431 (= e!3286149 ((as const (Array Context!8594 Bool)) false))))

(assert (= (and d!1700554 c!916529) b!5285424))

(assert (= (and d!1700554 (not c!916529)) b!5285429))

(assert (= (and b!5285429 c!916530) b!5285428))

(assert (= (and b!5285429 (not c!916530)) b!5285427))

(assert (= (and b!5285427 res!2241587) b!5285421))

(assert (= (and b!5285427 c!916528) b!5285426))

(assert (= (and b!5285427 (not c!916528)) b!5285430))

(assert (= (and b!5285430 c!916532) b!5285425))

(assert (= (and b!5285430 (not c!916532)) b!5285422))

(assert (= (and b!5285422 c!916531) b!5285423))

(assert (= (and b!5285422 (not c!916531)) b!5285431))

(assert (= (or b!5285425 b!5285423) bm!376468))

(assert (= (or b!5285425 b!5285423) bm!376473))

(assert (= (or b!5285426 bm!376468) bm!376471))

(assert (= (or b!5285426 bm!376473) bm!376469))

(assert (= (or b!5285428 bm!376469) bm!376472))

(assert (= (or b!5285428 b!5285426) bm!376470))

(assert (=> b!5285424 m!6322434))

(declare-fun m!6323002 () Bool)

(assert (=> b!5285421 m!6323002))

(declare-fun m!6323004 () Bool)

(assert (=> bm!376471 m!6323004))

(declare-fun m!6323006 () Bool)

(assert (=> bm!376472 m!6323006))

(declare-fun m!6323008 () Bool)

(assert (=> bm!376470 m!6323008))

(assert (=> b!5284590 d!1700554))

(declare-fun d!1700556 () Bool)

(assert (=> d!1700556 (= (flatMap!640 z!1189 lambda!267161) (dynLambda!24083 lambda!267161 (h!67363 zl!343)))))

(declare-fun lt!2160150 () Unit!153170)

(assert (=> d!1700556 (= lt!2160150 (choose!39455 z!1189 (h!67363 zl!343) lambda!267161))))

(assert (=> d!1700556 (= z!1189 (store ((as const (Array Context!8594 Bool)) false) (h!67363 zl!343) true))))

(assert (=> d!1700556 (= (lemmaFlatMapOnSingletonSet!172 z!1189 (h!67363 zl!343) lambda!267161) lt!2160150)))

(declare-fun b_lambda!203871 () Bool)

(assert (=> (not b_lambda!203871) (not d!1700556)))

(declare-fun bs!1224891 () Bool)

(assert (= bs!1224891 d!1700556))

(assert (=> bs!1224891 m!6322346))

(declare-fun m!6323010 () Bool)

(assert (=> bs!1224891 m!6323010))

(declare-fun m!6323012 () Bool)

(assert (=> bs!1224891 m!6323012))

(declare-fun m!6323014 () Bool)

(assert (=> bs!1224891 m!6323014))

(assert (=> b!5284590 d!1700556))

(declare-fun d!1700558 () Bool)

(declare-fun nullableFct!1456 (Regex!14913) Bool)

(assert (=> d!1700558 (= (nullable!5082 (h!67362 (exprs!4797 (h!67363 zl!343)))) (nullableFct!1456 (h!67362 (exprs!4797 (h!67363 zl!343)))))))

(declare-fun bs!1224892 () Bool)

(assert (= bs!1224892 d!1700558))

(declare-fun m!6323016 () Bool)

(assert (=> bs!1224892 m!6323016))

(assert (=> b!5284590 d!1700558))

(declare-fun b!5285432 () Bool)

(declare-fun e!3286154 () Bool)

(assert (=> b!5285432 (= e!3286154 (nullable!5082 (h!67362 (exprs!4797 (h!67363 zl!343)))))))

(declare-fun b!5285433 () Bool)

(declare-fun e!3286152 () (InoxSet Context!8594))

(declare-fun call!376479 () (InoxSet Context!8594))

(assert (=> b!5285433 (= e!3286152 call!376479)))

(declare-fun e!3286153 () (InoxSet Context!8594))

(declare-fun b!5285434 () Bool)

(assert (=> b!5285434 (= e!3286153 ((_ map or) call!376479 (derivationStepZipperUp!285 (Context!8595 (t!374241 (exprs!4797 (h!67363 zl!343)))) (h!67364 s!2326))))))

(declare-fun b!5285435 () Bool)

(assert (=> b!5285435 (= e!3286153 e!3286152)))

(declare-fun c!916534 () Bool)

(assert (=> b!5285435 (= c!916534 ((_ is Cons!60914) (exprs!4797 (h!67363 zl!343))))))

(declare-fun bm!376474 () Bool)

(assert (=> bm!376474 (= call!376479 (derivationStepZipperDown!361 (h!67362 (exprs!4797 (h!67363 zl!343))) (Context!8595 (t!374241 (exprs!4797 (h!67363 zl!343)))) (h!67364 s!2326)))))

(declare-fun b!5285436 () Bool)

(assert (=> b!5285436 (= e!3286152 ((as const (Array Context!8594 Bool)) false))))

(declare-fun d!1700560 () Bool)

(declare-fun c!916533 () Bool)

(assert (=> d!1700560 (= c!916533 e!3286154)))

(declare-fun res!2241588 () Bool)

(assert (=> d!1700560 (=> (not res!2241588) (not e!3286154))))

(assert (=> d!1700560 (= res!2241588 ((_ is Cons!60914) (exprs!4797 (h!67363 zl!343))))))

(assert (=> d!1700560 (= (derivationStepZipperUp!285 (h!67363 zl!343) (h!67364 s!2326)) e!3286153)))

(assert (= (and d!1700560 res!2241588) b!5285432))

(assert (= (and d!1700560 c!916533) b!5285434))

(assert (= (and d!1700560 (not c!916533)) b!5285435))

(assert (= (and b!5285435 c!916534) b!5285433))

(assert (= (and b!5285435 (not c!916534)) b!5285436))

(assert (= (or b!5285434 b!5285433) bm!376474))

(assert (=> b!5285432 m!6322344))

(declare-fun m!6323018 () Bool)

(assert (=> b!5285434 m!6323018))

(declare-fun m!6323020 () Bool)

(assert (=> bm!376474 m!6323020))

(assert (=> b!5284590 d!1700560))

(declare-fun b!5285437 () Bool)

(declare-fun e!3286157 () Bool)

(assert (=> b!5285437 (= e!3286157 (nullable!5082 (h!67362 (exprs!4797 lt!2160012))))))

(declare-fun b!5285438 () Bool)

(declare-fun e!3286155 () (InoxSet Context!8594))

(declare-fun call!376480 () (InoxSet Context!8594))

(assert (=> b!5285438 (= e!3286155 call!376480)))

(declare-fun b!5285439 () Bool)

(declare-fun e!3286156 () (InoxSet Context!8594))

(assert (=> b!5285439 (= e!3286156 ((_ map or) call!376480 (derivationStepZipperUp!285 (Context!8595 (t!374241 (exprs!4797 lt!2160012))) (h!67364 s!2326))))))

(declare-fun b!5285440 () Bool)

(assert (=> b!5285440 (= e!3286156 e!3286155)))

(declare-fun c!916536 () Bool)

(assert (=> b!5285440 (= c!916536 ((_ is Cons!60914) (exprs!4797 lt!2160012)))))

(declare-fun bm!376475 () Bool)

(assert (=> bm!376475 (= call!376480 (derivationStepZipperDown!361 (h!67362 (exprs!4797 lt!2160012)) (Context!8595 (t!374241 (exprs!4797 lt!2160012))) (h!67364 s!2326)))))

(declare-fun b!5285441 () Bool)

(assert (=> b!5285441 (= e!3286155 ((as const (Array Context!8594 Bool)) false))))

(declare-fun d!1700562 () Bool)

(declare-fun c!916535 () Bool)

(assert (=> d!1700562 (= c!916535 e!3286157)))

(declare-fun res!2241589 () Bool)

(assert (=> d!1700562 (=> (not res!2241589) (not e!3286157))))

(assert (=> d!1700562 (= res!2241589 ((_ is Cons!60914) (exprs!4797 lt!2160012)))))

(assert (=> d!1700562 (= (derivationStepZipperUp!285 lt!2160012 (h!67364 s!2326)) e!3286156)))

(assert (= (and d!1700562 res!2241589) b!5285437))

(assert (= (and d!1700562 c!916535) b!5285439))

(assert (= (and d!1700562 (not c!916535)) b!5285440))

(assert (= (and b!5285440 c!916536) b!5285438))

(assert (= (and b!5285440 (not c!916536)) b!5285441))

(assert (= (or b!5285439 b!5285438) bm!376475))

(declare-fun m!6323022 () Bool)

(assert (=> b!5285437 m!6323022))

(declare-fun m!6323024 () Bool)

(assert (=> b!5285439 m!6323024))

(declare-fun m!6323026 () Bool)

(assert (=> bm!376475 m!6323026))

(assert (=> b!5284590 d!1700562))

(declare-fun d!1700564 () Bool)

(assert (=> d!1700564 (= (nullable!5082 (regOne!30338 (regOne!30338 r!7292))) (nullableFct!1456 (regOne!30338 (regOne!30338 r!7292))))))

(declare-fun bs!1224893 () Bool)

(assert (= bs!1224893 d!1700564))

(declare-fun m!6323028 () Bool)

(assert (=> bs!1224893 m!6323028))

(assert (=> b!5284610 d!1700564))

(declare-fun bs!1224894 () Bool)

(declare-fun b!5285449 () Bool)

(assert (= bs!1224894 (and b!5285449 b!5284609)))

(declare-fun lambda!267247 () Int)

(assert (=> bs!1224894 (not (= lambda!267247 lambda!267162))))

(declare-fun bs!1224895 () Bool)

(assert (= bs!1224895 (and b!5285449 b!5285119)))

(assert (=> bs!1224895 (not (= lambda!267247 lambda!267222))))

(declare-fun bs!1224896 () Bool)

(assert (= bs!1224896 (and b!5285449 b!5284603)))

(assert (=> bs!1224896 (not (= lambda!267247 lambda!267159))))

(assert (=> bs!1224896 (not (= lambda!267247 lambda!267160))))

(declare-fun bs!1224897 () Bool)

(assert (= bs!1224897 (and b!5285449 b!5285121)))

(assert (=> bs!1224897 (= (and (= (reg!15242 lt!2160005) (reg!15242 r!7292)) (= lt!2160005 r!7292)) (= lambda!267247 lambda!267221))))

(assert (=> b!5285449 true))

(assert (=> b!5285449 true))

(declare-fun bs!1224898 () Bool)

(declare-fun b!5285447 () Bool)

(assert (= bs!1224898 (and b!5285447 b!5284609)))

(declare-fun lambda!267248 () Int)

(assert (=> bs!1224898 (not (= lambda!267248 lambda!267162))))

(declare-fun bs!1224899 () Bool)

(assert (= bs!1224899 (and b!5285447 b!5285449)))

(assert (=> bs!1224899 (not (= lambda!267248 lambda!267247))))

(declare-fun bs!1224900 () Bool)

(assert (= bs!1224900 (and b!5285447 b!5285119)))

(assert (=> bs!1224900 (= (and (= (regOne!30338 lt!2160005) (regOne!30338 r!7292)) (= (regTwo!30338 lt!2160005) (regTwo!30338 r!7292))) (= lambda!267248 lambda!267222))))

(declare-fun bs!1224901 () Bool)

(assert (= bs!1224901 (and b!5285447 b!5284603)))

(assert (=> bs!1224901 (not (= lambda!267248 lambda!267159))))

(assert (=> bs!1224901 (= (and (= (regOne!30338 lt!2160005) (regOne!30338 r!7292)) (= (regTwo!30338 lt!2160005) (regTwo!30338 r!7292))) (= lambda!267248 lambda!267160))))

(declare-fun bs!1224902 () Bool)

(assert (= bs!1224902 (and b!5285447 b!5285121)))

(assert (=> bs!1224902 (not (= lambda!267248 lambda!267221))))

(assert (=> b!5285447 true))

(assert (=> b!5285447 true))

(declare-fun b!5285442 () Bool)

(declare-fun e!3286162 () Bool)

(declare-fun e!3286159 () Bool)

(assert (=> b!5285442 (= e!3286162 e!3286159)))

(declare-fun c!916539 () Bool)

(assert (=> b!5285442 (= c!916539 ((_ is Star!14913) lt!2160005))))

(declare-fun b!5285443 () Bool)

(declare-fun res!2241592 () Bool)

(declare-fun e!3286163 () Bool)

(assert (=> b!5285443 (=> res!2241592 e!3286163)))

(declare-fun call!376481 () Bool)

(assert (=> b!5285443 (= res!2241592 call!376481)))

(assert (=> b!5285443 (= e!3286159 e!3286163)))

(declare-fun b!5285444 () Bool)

(declare-fun e!3286164 () Bool)

(assert (=> b!5285444 (= e!3286164 (= s!2326 (Cons!60916 (c!916265 lt!2160005) Nil!60916)))))

(declare-fun bm!376476 () Bool)

(assert (=> bm!376476 (= call!376481 (isEmpty!32871 s!2326))))

(declare-fun b!5285445 () Bool)

(declare-fun e!3286160 () Bool)

(declare-fun e!3286161 () Bool)

(assert (=> b!5285445 (= e!3286160 e!3286161)))

(declare-fun res!2241590 () Bool)

(assert (=> b!5285445 (= res!2241590 (not ((_ is EmptyLang!14913) lt!2160005)))))

(assert (=> b!5285445 (=> (not res!2241590) (not e!3286161))))

(declare-fun b!5285446 () Bool)

(declare-fun e!3286158 () Bool)

(assert (=> b!5285446 (= e!3286158 (matchRSpec!2016 (regTwo!30339 lt!2160005) s!2326))))

(declare-fun d!1700566 () Bool)

(declare-fun c!916538 () Bool)

(assert (=> d!1700566 (= c!916538 ((_ is EmptyExpr!14913) lt!2160005))))

(assert (=> d!1700566 (= (matchRSpec!2016 lt!2160005 s!2326) e!3286160)))

(declare-fun call!376482 () Bool)

(assert (=> b!5285447 (= e!3286159 call!376482)))

(declare-fun b!5285448 () Bool)

(declare-fun c!916537 () Bool)

(assert (=> b!5285448 (= c!916537 ((_ is ElementMatch!14913) lt!2160005))))

(assert (=> b!5285448 (= e!3286161 e!3286164)))

(assert (=> b!5285449 (= e!3286163 call!376482)))

(declare-fun bm!376477 () Bool)

(assert (=> bm!376477 (= call!376482 (Exists!2094 (ite c!916539 lambda!267247 lambda!267248)))))

(declare-fun b!5285450 () Bool)

(assert (=> b!5285450 (= e!3286160 call!376481)))

(declare-fun b!5285451 () Bool)

(assert (=> b!5285451 (= e!3286162 e!3286158)))

(declare-fun res!2241591 () Bool)

(assert (=> b!5285451 (= res!2241591 (matchRSpec!2016 (regOne!30339 lt!2160005) s!2326))))

(assert (=> b!5285451 (=> res!2241591 e!3286158)))

(declare-fun b!5285452 () Bool)

(declare-fun c!916540 () Bool)

(assert (=> b!5285452 (= c!916540 ((_ is Union!14913) lt!2160005))))

(assert (=> b!5285452 (= e!3286164 e!3286162)))

(assert (= (and d!1700566 c!916538) b!5285450))

(assert (= (and d!1700566 (not c!916538)) b!5285445))

(assert (= (and b!5285445 res!2241590) b!5285448))

(assert (= (and b!5285448 c!916537) b!5285444))

(assert (= (and b!5285448 (not c!916537)) b!5285452))

(assert (= (and b!5285452 c!916540) b!5285451))

(assert (= (and b!5285452 (not c!916540)) b!5285442))

(assert (= (and b!5285451 (not res!2241591)) b!5285446))

(assert (= (and b!5285442 c!916539) b!5285443))

(assert (= (and b!5285442 (not c!916539)) b!5285447))

(assert (= (and b!5285443 (not res!2241592)) b!5285449))

(assert (= (or b!5285449 b!5285447) bm!376477))

(assert (= (or b!5285450 b!5285443) bm!376476))

(assert (=> bm!376476 m!6322790))

(declare-fun m!6323030 () Bool)

(assert (=> b!5285446 m!6323030))

(declare-fun m!6323032 () Bool)

(assert (=> bm!376477 m!6323032))

(declare-fun m!6323034 () Bool)

(assert (=> b!5285451 m!6323034))

(assert (=> b!5284609 d!1700566))

(declare-fun d!1700568 () Bool)

(declare-fun c!916541 () Bool)

(assert (=> d!1700568 (= c!916541 (isEmpty!32871 s!2326))))

(declare-fun e!3286165 () Bool)

(assert (=> d!1700568 (= (matchZipper!1157 lt!2160004 s!2326) e!3286165)))

(declare-fun b!5285453 () Bool)

(assert (=> b!5285453 (= e!3286165 (nullableZipper!1304 lt!2160004))))

(declare-fun b!5285454 () Bool)

(assert (=> b!5285454 (= e!3286165 (matchZipper!1157 (derivationStepZipper!1156 lt!2160004 (head!11326 s!2326)) (tail!10423 s!2326)))))

(assert (= (and d!1700568 c!916541) b!5285453))

(assert (= (and d!1700568 (not c!916541)) b!5285454))

(assert (=> d!1700568 m!6322790))

(declare-fun m!6323036 () Bool)

(assert (=> b!5285453 m!6323036))

(assert (=> b!5285454 m!6322870))

(assert (=> b!5285454 m!6322870))

(declare-fun m!6323038 () Bool)

(assert (=> b!5285454 m!6323038))

(assert (=> b!5285454 m!6322866))

(assert (=> b!5285454 m!6323038))

(assert (=> b!5285454 m!6322866))

(declare-fun m!6323040 () Bool)

(assert (=> b!5285454 m!6323040))

(assert (=> b!5284609 d!1700568))

(declare-fun bs!1224903 () Bool)

(declare-fun d!1700570 () Bool)

(assert (= bs!1224903 (and d!1700570 d!1700438)))

(declare-fun lambda!267249 () Int)

(assert (=> bs!1224903 (= lambda!267249 lambda!267204)))

(declare-fun bs!1224904 () Bool)

(assert (= bs!1224904 (and d!1700570 d!1700344)))

(assert (=> bs!1224904 (= lambda!267249 lambda!267176)))

(declare-fun bs!1224905 () Bool)

(assert (= bs!1224905 (and d!1700570 b!5284609)))

(assert (=> bs!1224905 (= lambda!267249 lambda!267163)))

(declare-fun bs!1224906 () Bool)

(assert (= bs!1224906 (and d!1700570 d!1700366)))

(assert (=> bs!1224906 (= lambda!267249 lambda!267191)))

(declare-fun bs!1224907 () Bool)

(assert (= bs!1224907 (and d!1700570 d!1700456)))

(assert (=> bs!1224907 (= lambda!267249 lambda!267211)))

(declare-fun bs!1224908 () Bool)

(assert (= bs!1224908 (and d!1700570 d!1700364)))

(assert (=> bs!1224908 (= lambda!267249 lambda!267182)))

(declare-fun b!5285455 () Bool)

(declare-fun e!3286166 () Bool)

(declare-fun lt!2160151 () Regex!14913)

(assert (=> b!5285455 (= e!3286166 (= lt!2160151 (head!11325 lt!2160009)))))

(declare-fun b!5285456 () Bool)

(declare-fun e!3286171 () Regex!14913)

(declare-fun e!3286169 () Regex!14913)

(assert (=> b!5285456 (= e!3286171 e!3286169)))

(declare-fun c!916545 () Bool)

(assert (=> b!5285456 (= c!916545 ((_ is Cons!60914) lt!2160009))))

(declare-fun b!5285457 () Bool)

(assert (=> b!5285457 (= e!3286171 (h!67362 lt!2160009))))

(declare-fun b!5285458 () Bool)

(declare-fun e!3286168 () Bool)

(assert (=> b!5285458 (= e!3286168 (isEmpty!32867 (t!374241 lt!2160009)))))

(declare-fun b!5285459 () Bool)

(assert (=> b!5285459 (= e!3286166 (isConcat!361 lt!2160151))))

(declare-fun b!5285460 () Bool)

(declare-fun e!3286170 () Bool)

(assert (=> b!5285460 (= e!3286170 e!3286166)))

(declare-fun c!916543 () Bool)

(assert (=> b!5285460 (= c!916543 (isEmpty!32867 (tail!10422 lt!2160009)))))

(declare-fun e!3286167 () Bool)

(assert (=> d!1700570 e!3286167))

(declare-fun res!2241593 () Bool)

(assert (=> d!1700570 (=> (not res!2241593) (not e!3286167))))

(assert (=> d!1700570 (= res!2241593 (validRegex!6649 lt!2160151))))

(assert (=> d!1700570 (= lt!2160151 e!3286171)))

(declare-fun c!916544 () Bool)

(assert (=> d!1700570 (= c!916544 e!3286168)))

(declare-fun res!2241594 () Bool)

(assert (=> d!1700570 (=> (not res!2241594) (not e!3286168))))

(assert (=> d!1700570 (= res!2241594 ((_ is Cons!60914) lt!2160009))))

(assert (=> d!1700570 (forall!14321 lt!2160009 lambda!267249)))

(assert (=> d!1700570 (= (generalisedConcat!582 lt!2160009) lt!2160151)))

(declare-fun b!5285461 () Bool)

(assert (=> b!5285461 (= e!3286169 EmptyExpr!14913)))

(declare-fun b!5285462 () Bool)

(assert (=> b!5285462 (= e!3286167 e!3286170)))

(declare-fun c!916542 () Bool)

(assert (=> b!5285462 (= c!916542 (isEmpty!32867 lt!2160009))))

(declare-fun b!5285463 () Bool)

(assert (=> b!5285463 (= e!3286169 (Concat!23758 (h!67362 lt!2160009) (generalisedConcat!582 (t!374241 lt!2160009))))))

(declare-fun b!5285464 () Bool)

(assert (=> b!5285464 (= e!3286170 (isEmptyExpr!838 lt!2160151))))

(assert (= (and d!1700570 res!2241594) b!5285458))

(assert (= (and d!1700570 c!916544) b!5285457))

(assert (= (and d!1700570 (not c!916544)) b!5285456))

(assert (= (and b!5285456 c!916545) b!5285463))

(assert (= (and b!5285456 (not c!916545)) b!5285461))

(assert (= (and d!1700570 res!2241593) b!5285462))

(assert (= (and b!5285462 c!916542) b!5285464))

(assert (= (and b!5285462 (not c!916542)) b!5285460))

(assert (= (and b!5285460 c!916543) b!5285455))

(assert (= (and b!5285460 (not c!916543)) b!5285459))

(declare-fun m!6323042 () Bool)

(assert (=> b!5285464 m!6323042))

(declare-fun m!6323044 () Bool)

(assert (=> b!5285462 m!6323044))

(declare-fun m!6323046 () Bool)

(assert (=> b!5285460 m!6323046))

(assert (=> b!5285460 m!6323046))

(declare-fun m!6323048 () Bool)

(assert (=> b!5285460 m!6323048))

(declare-fun m!6323050 () Bool)

(assert (=> b!5285458 m!6323050))

(declare-fun m!6323052 () Bool)

(assert (=> b!5285455 m!6323052))

(declare-fun m!6323054 () Bool)

(assert (=> b!5285463 m!6323054))

(declare-fun m!6323056 () Bool)

(assert (=> b!5285459 m!6323056))

(declare-fun m!6323058 () Bool)

(assert (=> d!1700570 m!6323058))

(declare-fun m!6323060 () Bool)

(assert (=> d!1700570 m!6323060))

(assert (=> b!5284609 d!1700570))

(declare-fun d!1700572 () Bool)

(assert (=> d!1700572 (= (matchR!7098 lt!2160005 s!2326) (matchRSpec!2016 lt!2160005 s!2326))))

(declare-fun lt!2160152 () Unit!153170)

(assert (=> d!1700572 (= lt!2160152 (choose!39452 lt!2160005 s!2326))))

(assert (=> d!1700572 (validRegex!6649 lt!2160005)))

(assert (=> d!1700572 (= (mainMatchTheorem!2016 lt!2160005 s!2326) lt!2160152)))

(declare-fun bs!1224909 () Bool)

(assert (= bs!1224909 d!1700572))

(assert (=> bs!1224909 m!6322270))

(assert (=> bs!1224909 m!6322268))

(declare-fun m!6323062 () Bool)

(assert (=> bs!1224909 m!6323062))

(declare-fun m!6323064 () Bool)

(assert (=> bs!1224909 m!6323064))

(assert (=> b!5284609 d!1700572))

(declare-fun b!5285465 () Bool)

(declare-fun res!2241598 () Bool)

(declare-fun e!3286177 () Bool)

(assert (=> b!5285465 (=> res!2241598 e!3286177)))

(assert (=> b!5285465 (= res!2241598 (not (isEmpty!32871 (tail!10423 s!2326))))))

(declare-fun b!5285466 () Bool)

(declare-fun res!2241596 () Bool)

(declare-fun e!3286172 () Bool)

(assert (=> b!5285466 (=> (not res!2241596) (not e!3286172))))

(assert (=> b!5285466 (= res!2241596 (isEmpty!32871 (tail!10423 s!2326)))))

(declare-fun b!5285467 () Bool)

(assert (=> b!5285467 (= e!3286172 (= (head!11326 s!2326) (c!916265 lt!2160015)))))

(declare-fun b!5285468 () Bool)

(assert (=> b!5285468 (= e!3286177 (not (= (head!11326 s!2326) (c!916265 lt!2160015))))))

(declare-fun b!5285469 () Bool)

(declare-fun e!3286173 () Bool)

(assert (=> b!5285469 (= e!3286173 (matchR!7098 (derivativeStep!4124 lt!2160015 (head!11326 s!2326)) (tail!10423 s!2326)))))

(declare-fun b!5285470 () Bool)

(assert (=> b!5285470 (= e!3286173 (nullable!5082 lt!2160015))))

(declare-fun b!5285471 () Bool)

(declare-fun e!3286175 () Bool)

(assert (=> b!5285471 (= e!3286175 e!3286177)))

(declare-fun res!2241597 () Bool)

(assert (=> b!5285471 (=> res!2241597 e!3286177)))

(declare-fun call!376483 () Bool)

(assert (=> b!5285471 (= res!2241597 call!376483)))

(declare-fun d!1700574 () Bool)

(declare-fun e!3286178 () Bool)

(assert (=> d!1700574 e!3286178))

(declare-fun c!916547 () Bool)

(assert (=> d!1700574 (= c!916547 ((_ is EmptyExpr!14913) lt!2160015))))

(declare-fun lt!2160153 () Bool)

(assert (=> d!1700574 (= lt!2160153 e!3286173)))

(declare-fun c!916548 () Bool)

(assert (=> d!1700574 (= c!916548 (isEmpty!32871 s!2326))))

(assert (=> d!1700574 (validRegex!6649 lt!2160015)))

(assert (=> d!1700574 (= (matchR!7098 lt!2160015 s!2326) lt!2160153)))

(declare-fun b!5285472 () Bool)

(assert (=> b!5285472 (= e!3286178 (= lt!2160153 call!376483))))

(declare-fun b!5285473 () Bool)

(declare-fun e!3286176 () Bool)

(assert (=> b!5285473 (= e!3286176 (not lt!2160153))))

(declare-fun b!5285474 () Bool)

(assert (=> b!5285474 (= e!3286178 e!3286176)))

(declare-fun c!916546 () Bool)

(assert (=> b!5285474 (= c!916546 ((_ is EmptyLang!14913) lt!2160015))))

(declare-fun b!5285475 () Bool)

(declare-fun res!2241599 () Bool)

(assert (=> b!5285475 (=> (not res!2241599) (not e!3286172))))

(assert (=> b!5285475 (= res!2241599 (not call!376483))))

(declare-fun b!5285476 () Bool)

(declare-fun e!3286174 () Bool)

(assert (=> b!5285476 (= e!3286174 e!3286175)))

(declare-fun res!2241595 () Bool)

(assert (=> b!5285476 (=> (not res!2241595) (not e!3286175))))

(assert (=> b!5285476 (= res!2241595 (not lt!2160153))))

(declare-fun b!5285477 () Bool)

(declare-fun res!2241600 () Bool)

(assert (=> b!5285477 (=> res!2241600 e!3286174)))

(assert (=> b!5285477 (= res!2241600 (not ((_ is ElementMatch!14913) lt!2160015)))))

(assert (=> b!5285477 (= e!3286176 e!3286174)))

(declare-fun bm!376478 () Bool)

(assert (=> bm!376478 (= call!376483 (isEmpty!32871 s!2326))))

(declare-fun b!5285478 () Bool)

(declare-fun res!2241602 () Bool)

(assert (=> b!5285478 (=> res!2241602 e!3286174)))

(assert (=> b!5285478 (= res!2241602 e!3286172)))

(declare-fun res!2241601 () Bool)

(assert (=> b!5285478 (=> (not res!2241601) (not e!3286172))))

(assert (=> b!5285478 (= res!2241601 lt!2160153)))

(assert (= (and d!1700574 c!916548) b!5285470))

(assert (= (and d!1700574 (not c!916548)) b!5285469))

(assert (= (and d!1700574 c!916547) b!5285472))

(assert (= (and d!1700574 (not c!916547)) b!5285474))

(assert (= (and b!5285474 c!916546) b!5285473))

(assert (= (and b!5285474 (not c!916546)) b!5285477))

(assert (= (and b!5285477 (not res!2241600)) b!5285478))

(assert (= (and b!5285478 res!2241601) b!5285475))

(assert (= (and b!5285475 res!2241599) b!5285466))

(assert (= (and b!5285466 res!2241596) b!5285467))

(assert (= (and b!5285478 (not res!2241602)) b!5285476))

(assert (= (and b!5285476 res!2241595) b!5285471))

(assert (= (and b!5285471 (not res!2241597)) b!5285465))

(assert (= (and b!5285465 (not res!2241598)) b!5285468))

(assert (= (or b!5285472 b!5285471 b!5285475) bm!376478))

(assert (=> b!5285466 m!6322866))

(assert (=> b!5285466 m!6322866))

(assert (=> b!5285466 m!6322868))

(assert (=> b!5285467 m!6322870))

(assert (=> b!5285468 m!6322870))

(assert (=> b!5285469 m!6322870))

(assert (=> b!5285469 m!6322870))

(declare-fun m!6323066 () Bool)

(assert (=> b!5285469 m!6323066))

(assert (=> b!5285469 m!6322866))

(assert (=> b!5285469 m!6323066))

(assert (=> b!5285469 m!6322866))

(declare-fun m!6323068 () Bool)

(assert (=> b!5285469 m!6323068))

(assert (=> bm!376478 m!6322790))

(assert (=> d!1700574 m!6322790))

(declare-fun m!6323070 () Bool)

(assert (=> d!1700574 m!6323070))

(assert (=> b!5285465 m!6322866))

(assert (=> b!5285465 m!6322866))

(assert (=> b!5285465 m!6322868))

(declare-fun m!6323072 () Bool)

(assert (=> b!5285470 m!6323072))

(assert (=> b!5284609 d!1700574))

(declare-fun d!1700576 () Bool)

(assert (=> d!1700576 (= (matchR!7098 lt!2160015 s!2326) (matchZipper!1157 lt!2160018 s!2326))))

(declare-fun lt!2160156 () Unit!153170)

(declare-fun choose!39456 ((InoxSet Context!8594) List!61039 Regex!14913 List!61040) Unit!153170)

(assert (=> d!1700576 (= lt!2160156 (choose!39456 lt!2160018 (Cons!60915 lt!2159998 Nil!60915) lt!2160015 s!2326))))

(assert (=> d!1700576 (validRegex!6649 lt!2160015)))

(assert (=> d!1700576 (= (theoremZipperRegexEquiv!323 lt!2160018 (Cons!60915 lt!2159998 Nil!60915) lt!2160015 s!2326) lt!2160156)))

(declare-fun bs!1224910 () Bool)

(assert (= bs!1224910 d!1700576))

(assert (=> bs!1224910 m!6322256))

(assert (=> bs!1224910 m!6322258))

(declare-fun m!6323074 () Bool)

(assert (=> bs!1224910 m!6323074))

(assert (=> bs!1224910 m!6323070))

(assert (=> b!5284609 d!1700576))

(declare-fun d!1700578 () Bool)

(assert (=> d!1700578 (= (matchR!7098 lt!2160005 s!2326) (matchZipper!1157 lt!2160004 s!2326))))

(declare-fun lt!2160157 () Unit!153170)

(assert (=> d!1700578 (= lt!2160157 (choose!39456 lt!2160004 lt!2160011 lt!2160005 s!2326))))

(assert (=> d!1700578 (validRegex!6649 lt!2160005)))

(assert (=> d!1700578 (= (theoremZipperRegexEquiv!323 lt!2160004 lt!2160011 lt!2160005 s!2326) lt!2160157)))

(declare-fun bs!1224911 () Bool)

(assert (= bs!1224911 d!1700578))

(assert (=> bs!1224911 m!6322270))

(assert (=> bs!1224911 m!6322266))

(declare-fun m!6323076 () Bool)

(assert (=> bs!1224911 m!6323076))

(assert (=> bs!1224911 m!6323064))

(assert (=> b!5284609 d!1700578))

(declare-fun d!1700580 () Bool)

(declare-fun isEmpty!32872 (Option!15024) Bool)

(assert (=> d!1700580 (= (isDefined!11727 (findConcatSeparation!1438 (regOne!30338 (regOne!30338 r!7292)) lt!2160015 Nil!60916 s!2326 s!2326)) (not (isEmpty!32872 (findConcatSeparation!1438 (regOne!30338 (regOne!30338 r!7292)) lt!2160015 Nil!60916 s!2326 s!2326))))))

(declare-fun bs!1224912 () Bool)

(assert (= bs!1224912 d!1700580))

(assert (=> bs!1224912 m!6322260))

(declare-fun m!6323078 () Bool)

(assert (=> bs!1224912 m!6323078))

(assert (=> b!5284609 d!1700580))

(declare-fun bs!1224913 () Bool)

(declare-fun d!1700582 () Bool)

(assert (= bs!1224913 (and d!1700582 d!1700438)))

(declare-fun lambda!267250 () Int)

(assert (=> bs!1224913 (= lambda!267250 lambda!267204)))

(declare-fun bs!1224914 () Bool)

(assert (= bs!1224914 (and d!1700582 d!1700344)))

(assert (=> bs!1224914 (= lambda!267250 lambda!267176)))

(declare-fun bs!1224915 () Bool)

(assert (= bs!1224915 (and d!1700582 b!5284609)))

(assert (=> bs!1224915 (= lambda!267250 lambda!267163)))

(declare-fun bs!1224916 () Bool)

(assert (= bs!1224916 (and d!1700582 d!1700570)))

(assert (=> bs!1224916 (= lambda!267250 lambda!267249)))

(declare-fun bs!1224917 () Bool)

(assert (= bs!1224917 (and d!1700582 d!1700366)))

(assert (=> bs!1224917 (= lambda!267250 lambda!267191)))

(declare-fun bs!1224918 () Bool)

(assert (= bs!1224918 (and d!1700582 d!1700456)))

(assert (=> bs!1224918 (= lambda!267250 lambda!267211)))

(declare-fun bs!1224919 () Bool)

(assert (= bs!1224919 (and d!1700582 d!1700364)))

(assert (=> bs!1224919 (= lambda!267250 lambda!267182)))

(declare-fun b!5285479 () Bool)

(declare-fun e!3286179 () Bool)

(declare-fun lt!2160158 () Regex!14913)

(assert (=> b!5285479 (= e!3286179 (= lt!2160158 (head!11325 lt!2159986)))))

(declare-fun b!5285480 () Bool)

(declare-fun e!3286184 () Regex!14913)

(declare-fun e!3286182 () Regex!14913)

(assert (=> b!5285480 (= e!3286184 e!3286182)))

(declare-fun c!916552 () Bool)

(assert (=> b!5285480 (= c!916552 ((_ is Cons!60914) lt!2159986))))

(declare-fun b!5285481 () Bool)

(assert (=> b!5285481 (= e!3286184 (h!67362 lt!2159986))))

(declare-fun b!5285482 () Bool)

(declare-fun e!3286181 () Bool)

(assert (=> b!5285482 (= e!3286181 (isEmpty!32867 (t!374241 lt!2159986)))))

(declare-fun b!5285483 () Bool)

(assert (=> b!5285483 (= e!3286179 (isConcat!361 lt!2160158))))

(declare-fun b!5285484 () Bool)

(declare-fun e!3286183 () Bool)

(assert (=> b!5285484 (= e!3286183 e!3286179)))

(declare-fun c!916550 () Bool)

(assert (=> b!5285484 (= c!916550 (isEmpty!32867 (tail!10422 lt!2159986)))))

(declare-fun e!3286180 () Bool)

(assert (=> d!1700582 e!3286180))

(declare-fun res!2241603 () Bool)

(assert (=> d!1700582 (=> (not res!2241603) (not e!3286180))))

(assert (=> d!1700582 (= res!2241603 (validRegex!6649 lt!2160158))))

(assert (=> d!1700582 (= lt!2160158 e!3286184)))

(declare-fun c!916551 () Bool)

(assert (=> d!1700582 (= c!916551 e!3286181)))

(declare-fun res!2241604 () Bool)

(assert (=> d!1700582 (=> (not res!2241604) (not e!3286181))))

(assert (=> d!1700582 (= res!2241604 ((_ is Cons!60914) lt!2159986))))

(assert (=> d!1700582 (forall!14321 lt!2159986 lambda!267250)))

(assert (=> d!1700582 (= (generalisedConcat!582 lt!2159986) lt!2160158)))

(declare-fun b!5285485 () Bool)

(assert (=> b!5285485 (= e!3286182 EmptyExpr!14913)))

(declare-fun b!5285486 () Bool)

(assert (=> b!5285486 (= e!3286180 e!3286183)))

(declare-fun c!916549 () Bool)

(assert (=> b!5285486 (= c!916549 (isEmpty!32867 lt!2159986))))

(declare-fun b!5285487 () Bool)

(assert (=> b!5285487 (= e!3286182 (Concat!23758 (h!67362 lt!2159986) (generalisedConcat!582 (t!374241 lt!2159986))))))

(declare-fun b!5285488 () Bool)

(assert (=> b!5285488 (= e!3286183 (isEmptyExpr!838 lt!2160158))))

(assert (= (and d!1700582 res!2241604) b!5285482))

(assert (= (and d!1700582 c!916551) b!5285481))

(assert (= (and d!1700582 (not c!916551)) b!5285480))

(assert (= (and b!5285480 c!916552) b!5285487))

(assert (= (and b!5285480 (not c!916552)) b!5285485))

(assert (= (and d!1700582 res!2241603) b!5285486))

(assert (= (and b!5285486 c!916549) b!5285488))

(assert (= (and b!5285486 (not c!916549)) b!5285484))

(assert (= (and b!5285484 c!916550) b!5285479))

(assert (= (and b!5285484 (not c!916550)) b!5285483))

(declare-fun m!6323080 () Bool)

(assert (=> b!5285488 m!6323080))

(declare-fun m!6323082 () Bool)

(assert (=> b!5285486 m!6323082))

(declare-fun m!6323084 () Bool)

(assert (=> b!5285484 m!6323084))

(assert (=> b!5285484 m!6323084))

(declare-fun m!6323086 () Bool)

(assert (=> b!5285484 m!6323086))

(declare-fun m!6323088 () Bool)

(assert (=> b!5285482 m!6323088))

(declare-fun m!6323090 () Bool)

(assert (=> b!5285479 m!6323090))

(declare-fun m!6323092 () Bool)

(assert (=> b!5285487 m!6323092))

(declare-fun m!6323094 () Bool)

(assert (=> b!5285483 m!6323094))

(declare-fun m!6323096 () Bool)

(assert (=> d!1700582 m!6323096))

(declare-fun m!6323098 () Bool)

(assert (=> d!1700582 m!6323098))

(assert (=> b!5284609 d!1700582))

(declare-fun d!1700584 () Bool)

(declare-fun c!916553 () Bool)

(assert (=> d!1700584 (= c!916553 (isEmpty!32871 s!2326))))

(declare-fun e!3286185 () Bool)

(assert (=> d!1700584 (= (matchZipper!1157 lt!2160018 s!2326) e!3286185)))

(declare-fun b!5285489 () Bool)

(assert (=> b!5285489 (= e!3286185 (nullableZipper!1304 lt!2160018))))

(declare-fun b!5285490 () Bool)

(assert (=> b!5285490 (= e!3286185 (matchZipper!1157 (derivationStepZipper!1156 lt!2160018 (head!11326 s!2326)) (tail!10423 s!2326)))))

(assert (= (and d!1700584 c!916553) b!5285489))

(assert (= (and d!1700584 (not c!916553)) b!5285490))

(assert (=> d!1700584 m!6322790))

(declare-fun m!6323100 () Bool)

(assert (=> b!5285489 m!6323100))

(assert (=> b!5285490 m!6322870))

(assert (=> b!5285490 m!6322870))

(declare-fun m!6323102 () Bool)

(assert (=> b!5285490 m!6323102))

(assert (=> b!5285490 m!6322866))

(assert (=> b!5285490 m!6323102))

(assert (=> b!5285490 m!6322866))

(declare-fun m!6323104 () Bool)

(assert (=> b!5285490 m!6323104))

(assert (=> b!5284609 d!1700584))

(declare-fun d!1700586 () Bool)

(declare-fun res!2241609 () Bool)

(declare-fun e!3286190 () Bool)

(assert (=> d!1700586 (=> res!2241609 e!3286190)))

(assert (=> d!1700586 (= res!2241609 ((_ is Nil!60914) lt!2160009))))

(assert (=> d!1700586 (= (forall!14321 lt!2160009 lambda!267163) e!3286190)))

(declare-fun b!5285495 () Bool)

(declare-fun e!3286191 () Bool)

(assert (=> b!5285495 (= e!3286190 e!3286191)))

(declare-fun res!2241610 () Bool)

(assert (=> b!5285495 (=> (not res!2241610) (not e!3286191))))

(declare-fun dynLambda!24085 (Int Regex!14913) Bool)

(assert (=> b!5285495 (= res!2241610 (dynLambda!24085 lambda!267163 (h!67362 lt!2160009)))))

(declare-fun b!5285496 () Bool)

(assert (=> b!5285496 (= e!3286191 (forall!14321 (t!374241 lt!2160009) lambda!267163))))

(assert (= (and d!1700586 (not res!2241609)) b!5285495))

(assert (= (and b!5285495 res!2241610) b!5285496))

(declare-fun b_lambda!203873 () Bool)

(assert (=> (not b_lambda!203873) (not b!5285495)))

(declare-fun m!6323106 () Bool)

(assert (=> b!5285495 m!6323106))

(declare-fun m!6323108 () Bool)

(assert (=> b!5285496 m!6323108))

(assert (=> b!5284609 d!1700586))

(declare-fun d!1700588 () Bool)

(declare-fun choose!39458 (Int) Bool)

(assert (=> d!1700588 (= (Exists!2094 lambda!267162) (choose!39458 lambda!267162))))

(declare-fun bs!1224920 () Bool)

(assert (= bs!1224920 d!1700588))

(declare-fun m!6323110 () Bool)

(assert (=> bs!1224920 m!6323110))

(assert (=> b!5284609 d!1700588))

(declare-fun bs!1224921 () Bool)

(declare-fun d!1700590 () Bool)

(assert (= bs!1224921 (and d!1700590 b!5284609)))

(declare-fun lambda!267253 () Int)

(assert (=> bs!1224921 (= lambda!267253 lambda!267162)))

(declare-fun bs!1224922 () Bool)

(assert (= bs!1224922 (and d!1700590 b!5285449)))

(assert (=> bs!1224922 (not (= lambda!267253 lambda!267247))))

(declare-fun bs!1224923 () Bool)

(assert (= bs!1224923 (and d!1700590 b!5285119)))

(assert (=> bs!1224923 (not (= lambda!267253 lambda!267222))))

(declare-fun bs!1224924 () Bool)

(assert (= bs!1224924 (and d!1700590 b!5284603)))

(assert (=> bs!1224924 (= (and (= (regOne!30338 (regOne!30338 r!7292)) (regOne!30338 r!7292)) (= lt!2160015 (regTwo!30338 r!7292))) (= lambda!267253 lambda!267159))))

(declare-fun bs!1224925 () Bool)

(assert (= bs!1224925 (and d!1700590 b!5285447)))

(assert (=> bs!1224925 (not (= lambda!267253 lambda!267248))))

(assert (=> bs!1224924 (not (= lambda!267253 lambda!267160))))

(declare-fun bs!1224926 () Bool)

(assert (= bs!1224926 (and d!1700590 b!5285121)))

(assert (=> bs!1224926 (not (= lambda!267253 lambda!267221))))

(assert (=> d!1700590 true))

(assert (=> d!1700590 true))

(assert (=> d!1700590 true))

(assert (=> d!1700590 (= (isDefined!11727 (findConcatSeparation!1438 (regOne!30338 (regOne!30338 r!7292)) lt!2160015 Nil!60916 s!2326 s!2326)) (Exists!2094 lambda!267253))))

(declare-fun lt!2160161 () Unit!153170)

(declare-fun choose!39459 (Regex!14913 Regex!14913 List!61040) Unit!153170)

(assert (=> d!1700590 (= lt!2160161 (choose!39459 (regOne!30338 (regOne!30338 r!7292)) lt!2160015 s!2326))))

(assert (=> d!1700590 (validRegex!6649 (regOne!30338 (regOne!30338 r!7292)))))

(assert (=> d!1700590 (= (lemmaFindConcatSeparationEquivalentToExists!1202 (regOne!30338 (regOne!30338 r!7292)) lt!2160015 s!2326) lt!2160161)))

(declare-fun bs!1224927 () Bool)

(assert (= bs!1224927 d!1700590))

(declare-fun m!6323112 () Bool)

(assert (=> bs!1224927 m!6323112))

(assert (=> bs!1224927 m!6322260))

(assert (=> bs!1224927 m!6322262))

(declare-fun m!6323114 () Bool)

(assert (=> bs!1224927 m!6323114))

(declare-fun m!6323116 () Bool)

(assert (=> bs!1224927 m!6323116))

(assert (=> bs!1224927 m!6322260))

(assert (=> b!5284609 d!1700590))

(declare-fun b!5285501 () Bool)

(declare-fun res!2241618 () Bool)

(declare-fun e!3286199 () Bool)

(assert (=> b!5285501 (=> res!2241618 e!3286199)))

(assert (=> b!5285501 (= res!2241618 (not (isEmpty!32871 (tail!10423 s!2326))))))

(declare-fun b!5285502 () Bool)

(declare-fun res!2241616 () Bool)

(declare-fun e!3286194 () Bool)

(assert (=> b!5285502 (=> (not res!2241616) (not e!3286194))))

(assert (=> b!5285502 (= res!2241616 (isEmpty!32871 (tail!10423 s!2326)))))

(declare-fun b!5285503 () Bool)

(assert (=> b!5285503 (= e!3286194 (= (head!11326 s!2326) (c!916265 lt!2160005)))))

(declare-fun b!5285504 () Bool)

(assert (=> b!5285504 (= e!3286199 (not (= (head!11326 s!2326) (c!916265 lt!2160005))))))

(declare-fun b!5285505 () Bool)

(declare-fun e!3286195 () Bool)

(assert (=> b!5285505 (= e!3286195 (matchR!7098 (derivativeStep!4124 lt!2160005 (head!11326 s!2326)) (tail!10423 s!2326)))))

(declare-fun b!5285506 () Bool)

(assert (=> b!5285506 (= e!3286195 (nullable!5082 lt!2160005))))

(declare-fun b!5285507 () Bool)

(declare-fun e!3286197 () Bool)

(assert (=> b!5285507 (= e!3286197 e!3286199)))

(declare-fun res!2241617 () Bool)

(assert (=> b!5285507 (=> res!2241617 e!3286199)))

(declare-fun call!376484 () Bool)

(assert (=> b!5285507 (= res!2241617 call!376484)))

(declare-fun d!1700592 () Bool)

(declare-fun e!3286200 () Bool)

(assert (=> d!1700592 e!3286200))

(declare-fun c!916555 () Bool)

(assert (=> d!1700592 (= c!916555 ((_ is EmptyExpr!14913) lt!2160005))))

(declare-fun lt!2160162 () Bool)

(assert (=> d!1700592 (= lt!2160162 e!3286195)))

(declare-fun c!916556 () Bool)

(assert (=> d!1700592 (= c!916556 (isEmpty!32871 s!2326))))

(assert (=> d!1700592 (validRegex!6649 lt!2160005)))

(assert (=> d!1700592 (= (matchR!7098 lt!2160005 s!2326) lt!2160162)))

(declare-fun b!5285508 () Bool)

(assert (=> b!5285508 (= e!3286200 (= lt!2160162 call!376484))))

(declare-fun b!5285509 () Bool)

(declare-fun e!3286198 () Bool)

(assert (=> b!5285509 (= e!3286198 (not lt!2160162))))

(declare-fun b!5285510 () Bool)

(assert (=> b!5285510 (= e!3286200 e!3286198)))

(declare-fun c!916554 () Bool)

(assert (=> b!5285510 (= c!916554 ((_ is EmptyLang!14913) lt!2160005))))

(declare-fun b!5285511 () Bool)

(declare-fun res!2241619 () Bool)

(assert (=> b!5285511 (=> (not res!2241619) (not e!3286194))))

(assert (=> b!5285511 (= res!2241619 (not call!376484))))

(declare-fun b!5285512 () Bool)

(declare-fun e!3286196 () Bool)

(assert (=> b!5285512 (= e!3286196 e!3286197)))

(declare-fun res!2241615 () Bool)

(assert (=> b!5285512 (=> (not res!2241615) (not e!3286197))))

(assert (=> b!5285512 (= res!2241615 (not lt!2160162))))

(declare-fun b!5285513 () Bool)

(declare-fun res!2241620 () Bool)

(assert (=> b!5285513 (=> res!2241620 e!3286196)))

(assert (=> b!5285513 (= res!2241620 (not ((_ is ElementMatch!14913) lt!2160005)))))

(assert (=> b!5285513 (= e!3286198 e!3286196)))

(declare-fun bm!376479 () Bool)

(assert (=> bm!376479 (= call!376484 (isEmpty!32871 s!2326))))

(declare-fun b!5285514 () Bool)

(declare-fun res!2241622 () Bool)

(assert (=> b!5285514 (=> res!2241622 e!3286196)))

(assert (=> b!5285514 (= res!2241622 e!3286194)))

(declare-fun res!2241621 () Bool)

(assert (=> b!5285514 (=> (not res!2241621) (not e!3286194))))

(assert (=> b!5285514 (= res!2241621 lt!2160162)))

(assert (= (and d!1700592 c!916556) b!5285506))

(assert (= (and d!1700592 (not c!916556)) b!5285505))

(assert (= (and d!1700592 c!916555) b!5285508))

(assert (= (and d!1700592 (not c!916555)) b!5285510))

(assert (= (and b!5285510 c!916554) b!5285509))

(assert (= (and b!5285510 (not c!916554)) b!5285513))

(assert (= (and b!5285513 (not res!2241620)) b!5285514))

(assert (= (and b!5285514 res!2241621) b!5285511))

(assert (= (and b!5285511 res!2241619) b!5285502))

(assert (= (and b!5285502 res!2241616) b!5285503))

(assert (= (and b!5285514 (not res!2241622)) b!5285512))

(assert (= (and b!5285512 res!2241615) b!5285507))

(assert (= (and b!5285507 (not res!2241617)) b!5285501))

(assert (= (and b!5285501 (not res!2241618)) b!5285504))

(assert (= (or b!5285508 b!5285507 b!5285511) bm!376479))

(assert (=> b!5285502 m!6322866))

(assert (=> b!5285502 m!6322866))

(assert (=> b!5285502 m!6322868))

(assert (=> b!5285503 m!6322870))

(assert (=> b!5285504 m!6322870))

(assert (=> b!5285505 m!6322870))

(assert (=> b!5285505 m!6322870))

(declare-fun m!6323118 () Bool)

(assert (=> b!5285505 m!6323118))

(assert (=> b!5285505 m!6322866))

(assert (=> b!5285505 m!6323118))

(assert (=> b!5285505 m!6322866))

(declare-fun m!6323120 () Bool)

(assert (=> b!5285505 m!6323120))

(assert (=> bm!376479 m!6322790))

(assert (=> d!1700592 m!6322790))

(assert (=> d!1700592 m!6323064))

(assert (=> b!5285501 m!6322866))

(assert (=> b!5285501 m!6322866))

(assert (=> b!5285501 m!6322868))

(declare-fun m!6323122 () Bool)

(assert (=> b!5285506 m!6323122))

(assert (=> b!5284609 d!1700592))

(declare-fun d!1700594 () Bool)

(declare-fun e!3286213 () Bool)

(assert (=> d!1700594 e!3286213))

(declare-fun res!2241635 () Bool)

(assert (=> d!1700594 (=> res!2241635 e!3286213)))

(declare-fun e!3286214 () Bool)

(assert (=> d!1700594 (= res!2241635 e!3286214)))

(declare-fun res!2241634 () Bool)

(assert (=> d!1700594 (=> (not res!2241634) (not e!3286214))))

(declare-fun lt!2160170 () Option!15024)

(assert (=> d!1700594 (= res!2241634 (isDefined!11727 lt!2160170))))

(declare-fun e!3286211 () Option!15024)

(assert (=> d!1700594 (= lt!2160170 e!3286211)))

(declare-fun c!916561 () Bool)

(declare-fun e!3286215 () Bool)

(assert (=> d!1700594 (= c!916561 e!3286215)))

(declare-fun res!2241636 () Bool)

(assert (=> d!1700594 (=> (not res!2241636) (not e!3286215))))

(assert (=> d!1700594 (= res!2241636 (matchR!7098 (regOne!30338 (regOne!30338 r!7292)) Nil!60916))))

(assert (=> d!1700594 (validRegex!6649 (regOne!30338 (regOne!30338 r!7292)))))

(assert (=> d!1700594 (= (findConcatSeparation!1438 (regOne!30338 (regOne!30338 r!7292)) lt!2160015 Nil!60916 s!2326 s!2326) lt!2160170)))

(declare-fun b!5285533 () Bool)

(declare-fun e!3286212 () Option!15024)

(assert (=> b!5285533 (= e!3286211 e!3286212)))

(declare-fun c!916562 () Bool)

(assert (=> b!5285533 (= c!916562 ((_ is Nil!60916) s!2326))))

(declare-fun b!5285534 () Bool)

(assert (=> b!5285534 (= e!3286215 (matchR!7098 lt!2160015 s!2326))))

(declare-fun b!5285535 () Bool)

(declare-fun ++!13284 (List!61040 List!61040) List!61040)

(declare-fun get!20946 (Option!15024) tuple2!64224)

(assert (=> b!5285535 (= e!3286214 (= (++!13284 (_1!35415 (get!20946 lt!2160170)) (_2!35415 (get!20946 lt!2160170))) s!2326))))

(declare-fun b!5285536 () Bool)

(declare-fun res!2241633 () Bool)

(assert (=> b!5285536 (=> (not res!2241633) (not e!3286214))))

(assert (=> b!5285536 (= res!2241633 (matchR!7098 (regOne!30338 (regOne!30338 r!7292)) (_1!35415 (get!20946 lt!2160170))))))

(declare-fun b!5285537 () Bool)

(declare-fun lt!2160171 () Unit!153170)

(declare-fun lt!2160169 () Unit!153170)

(assert (=> b!5285537 (= lt!2160171 lt!2160169)))

(assert (=> b!5285537 (= (++!13284 (++!13284 Nil!60916 (Cons!60916 (h!67364 s!2326) Nil!60916)) (t!374243 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1699 (List!61040 C!30096 List!61040 List!61040) Unit!153170)

(assert (=> b!5285537 (= lt!2160169 (lemmaMoveElementToOtherListKeepsConcatEq!1699 Nil!60916 (h!67364 s!2326) (t!374243 s!2326) s!2326))))

(assert (=> b!5285537 (= e!3286212 (findConcatSeparation!1438 (regOne!30338 (regOne!30338 r!7292)) lt!2160015 (++!13284 Nil!60916 (Cons!60916 (h!67364 s!2326) Nil!60916)) (t!374243 s!2326) s!2326))))

(declare-fun b!5285538 () Bool)

(declare-fun res!2241637 () Bool)

(assert (=> b!5285538 (=> (not res!2241637) (not e!3286214))))

(assert (=> b!5285538 (= res!2241637 (matchR!7098 lt!2160015 (_2!35415 (get!20946 lt!2160170))))))

(declare-fun b!5285539 () Bool)

(assert (=> b!5285539 (= e!3286211 (Some!15023 (tuple2!64225 Nil!60916 s!2326)))))

(declare-fun b!5285540 () Bool)

(assert (=> b!5285540 (= e!3286212 None!15023)))

(declare-fun b!5285541 () Bool)

(assert (=> b!5285541 (= e!3286213 (not (isDefined!11727 lt!2160170)))))

(assert (= (and d!1700594 res!2241636) b!5285534))

(assert (= (and d!1700594 c!916561) b!5285539))

(assert (= (and d!1700594 (not c!916561)) b!5285533))

(assert (= (and b!5285533 c!916562) b!5285540))

(assert (= (and b!5285533 (not c!916562)) b!5285537))

(assert (= (and d!1700594 res!2241634) b!5285536))

(assert (= (and b!5285536 res!2241633) b!5285538))

(assert (= (and b!5285538 res!2241637) b!5285535))

(assert (= (and d!1700594 (not res!2241635)) b!5285541))

(declare-fun m!6323124 () Bool)

(assert (=> b!5285535 m!6323124))

(declare-fun m!6323126 () Bool)

(assert (=> b!5285535 m!6323126))

(declare-fun m!6323128 () Bool)

(assert (=> b!5285537 m!6323128))

(assert (=> b!5285537 m!6323128))

(declare-fun m!6323130 () Bool)

(assert (=> b!5285537 m!6323130))

(declare-fun m!6323132 () Bool)

(assert (=> b!5285537 m!6323132))

(assert (=> b!5285537 m!6323128))

(declare-fun m!6323134 () Bool)

(assert (=> b!5285537 m!6323134))

(assert (=> b!5285534 m!6322256))

(assert (=> b!5285536 m!6323124))

(declare-fun m!6323136 () Bool)

(assert (=> b!5285536 m!6323136))

(assert (=> b!5285538 m!6323124))

(declare-fun m!6323138 () Bool)

(assert (=> b!5285538 m!6323138))

(declare-fun m!6323140 () Bool)

(assert (=> b!5285541 m!6323140))

(assert (=> d!1700594 m!6323140))

(declare-fun m!6323142 () Bool)

(assert (=> d!1700594 m!6323142))

(assert (=> d!1700594 m!6323116))

(assert (=> b!5284609 d!1700594))

(declare-fun d!1700596 () Bool)

(declare-fun lt!2160174 () Int)

(assert (=> d!1700596 (>= lt!2160174 0)))

(declare-fun e!3286218 () Int)

(assert (=> d!1700596 (= lt!2160174 e!3286218)))

(declare-fun c!916566 () Bool)

(assert (=> d!1700596 (= c!916566 ((_ is Cons!60914) (exprs!4797 lt!2159982)))))

(assert (=> d!1700596 (= (contextDepthTotal!54 lt!2159982) lt!2160174)))

(declare-fun b!5285546 () Bool)

(declare-fun regexDepthTotal!16 (Regex!14913) Int)

(assert (=> b!5285546 (= e!3286218 (+ (regexDepthTotal!16 (h!67362 (exprs!4797 lt!2159982))) (contextDepthTotal!54 (Context!8595 (t!374241 (exprs!4797 lt!2159982))))))))

(declare-fun b!5285547 () Bool)

(assert (=> b!5285547 (= e!3286218 1)))

(assert (= (and d!1700596 c!916566) b!5285546))

(assert (= (and d!1700596 (not c!916566)) b!5285547))

(declare-fun m!6323144 () Bool)

(assert (=> b!5285546 m!6323144))

(declare-fun m!6323146 () Bool)

(assert (=> b!5285546 m!6323146))

(assert (=> b!5284617 d!1700596))

(declare-fun d!1700598 () Bool)

(declare-fun lt!2160175 () Int)

(assert (=> d!1700598 (>= lt!2160175 0)))

(declare-fun e!3286219 () Int)

(assert (=> d!1700598 (= lt!2160175 e!3286219)))

(declare-fun c!916567 () Bool)

(assert (=> d!1700598 (= c!916567 ((_ is Cons!60914) (exprs!4797 (h!67363 zl!343))))))

(assert (=> d!1700598 (= (contextDepthTotal!54 (h!67363 zl!343)) lt!2160175)))

(declare-fun b!5285548 () Bool)

(assert (=> b!5285548 (= e!3286219 (+ (regexDepthTotal!16 (h!67362 (exprs!4797 (h!67363 zl!343)))) (contextDepthTotal!54 (Context!8595 (t!374241 (exprs!4797 (h!67363 zl!343)))))))))

(declare-fun b!5285549 () Bool)

(assert (=> b!5285549 (= e!3286219 1)))

(assert (= (and d!1700598 c!916567) b!5285548))

(assert (= (and d!1700598 (not c!916567)) b!5285549))

(declare-fun m!6323148 () Bool)

(assert (=> b!5285548 m!6323148))

(declare-fun m!6323150 () Bool)

(assert (=> b!5285548 m!6323150))

(assert (=> b!5284617 d!1700598))

(declare-fun d!1700600 () Bool)

(declare-fun c!916568 () Bool)

(assert (=> d!1700600 (= c!916568 (isEmpty!32871 (t!374243 s!2326)))))

(declare-fun e!3286220 () Bool)

(assert (=> d!1700600 (= (matchZipper!1157 lt!2159991 (t!374243 s!2326)) e!3286220)))

(declare-fun b!5285550 () Bool)

(assert (=> b!5285550 (= e!3286220 (nullableZipper!1304 lt!2159991))))

(declare-fun b!5285551 () Bool)

(assert (=> b!5285551 (= e!3286220 (matchZipper!1157 (derivationStepZipper!1156 lt!2159991 (head!11326 (t!374243 s!2326))) (tail!10423 (t!374243 s!2326))))))

(assert (= (and d!1700600 c!916568) b!5285550))

(assert (= (and d!1700600 (not c!916568)) b!5285551))

(assert (=> d!1700600 m!6322584))

(declare-fun m!6323152 () Bool)

(assert (=> b!5285550 m!6323152))

(assert (=> b!5285551 m!6322588))

(assert (=> b!5285551 m!6322588))

(declare-fun m!6323154 () Bool)

(assert (=> b!5285551 m!6323154))

(assert (=> b!5285551 m!6322592))

(assert (=> b!5285551 m!6323154))

(assert (=> b!5285551 m!6322592))

(declare-fun m!6323156 () Bool)

(assert (=> b!5285551 m!6323156))

(assert (=> b!5284596 d!1700600))

(declare-fun d!1700602 () Bool)

(assert (=> d!1700602 (= (isEmpty!32867 (t!374241 (exprs!4797 (h!67363 zl!343)))) ((_ is Nil!60914) (t!374241 (exprs!4797 (h!67363 zl!343)))))))

(assert (=> b!5284594 d!1700602))

(declare-fun d!1700604 () Bool)

(assert (=> d!1700604 (= (isEmpty!32868 (t!374242 zl!343)) ((_ is Nil!60915) (t!374242 zl!343)))))

(assert (=> b!5284614 d!1700604))

(declare-fun d!1700606 () Bool)

(declare-fun c!916569 () Bool)

(assert (=> d!1700606 (= c!916569 (isEmpty!32871 (t!374243 s!2326)))))

(declare-fun e!3286221 () Bool)

(assert (=> d!1700606 (= (matchZipper!1157 (derivationStepZipper!1156 lt!2160018 (h!67364 s!2326)) (t!374243 s!2326)) e!3286221)))

(declare-fun b!5285552 () Bool)

(assert (=> b!5285552 (= e!3286221 (nullableZipper!1304 (derivationStepZipper!1156 lt!2160018 (h!67364 s!2326))))))

(declare-fun b!5285553 () Bool)

(assert (=> b!5285553 (= e!3286221 (matchZipper!1157 (derivationStepZipper!1156 (derivationStepZipper!1156 lt!2160018 (h!67364 s!2326)) (head!11326 (t!374243 s!2326))) (tail!10423 (t!374243 s!2326))))))

(assert (= (and d!1700606 c!916569) b!5285552))

(assert (= (and d!1700606 (not c!916569)) b!5285553))

(assert (=> d!1700606 m!6322584))

(assert (=> b!5285552 m!6322354))

(declare-fun m!6323158 () Bool)

(assert (=> b!5285552 m!6323158))

(assert (=> b!5285553 m!6322588))

(assert (=> b!5285553 m!6322354))

(assert (=> b!5285553 m!6322588))

(declare-fun m!6323160 () Bool)

(assert (=> b!5285553 m!6323160))

(assert (=> b!5285553 m!6322592))

(assert (=> b!5285553 m!6323160))

(assert (=> b!5285553 m!6322592))

(declare-fun m!6323162 () Bool)

(assert (=> b!5285553 m!6323162))

(assert (=> b!5284602 d!1700606))

(declare-fun bs!1224928 () Bool)

(declare-fun d!1700608 () Bool)

(assert (= bs!1224928 (and d!1700608 b!5284590)))

(declare-fun lambda!267254 () Int)

(assert (=> bs!1224928 (= lambda!267254 lambda!267161)))

(declare-fun bs!1224929 () Bool)

(assert (= bs!1224929 (and d!1700608 d!1700542)))

(assert (=> bs!1224929 (= lambda!267254 lambda!267246)))

(assert (=> d!1700608 true))

(assert (=> d!1700608 (= (derivationStepZipper!1156 lt!2160018 (h!67364 s!2326)) (flatMap!640 lt!2160018 lambda!267254))))

(declare-fun bs!1224930 () Bool)

(assert (= bs!1224930 d!1700608))

(declare-fun m!6323164 () Bool)

(assert (=> bs!1224930 m!6323164))

(assert (=> b!5284602 d!1700608))

(declare-fun d!1700610 () Bool)

(declare-fun e!3286224 () Bool)

(assert (=> d!1700610 e!3286224))

(declare-fun res!2241640 () Bool)

(assert (=> d!1700610 (=> res!2241640 e!3286224)))

(declare-fun e!3286225 () Bool)

(assert (=> d!1700610 (= res!2241640 e!3286225)))

(declare-fun res!2241639 () Bool)

(assert (=> d!1700610 (=> (not res!2241639) (not e!3286225))))

(declare-fun lt!2160177 () Option!15024)

(assert (=> d!1700610 (= res!2241639 (isDefined!11727 lt!2160177))))

(declare-fun e!3286222 () Option!15024)

(assert (=> d!1700610 (= lt!2160177 e!3286222)))

(declare-fun c!916570 () Bool)

(declare-fun e!3286226 () Bool)

(assert (=> d!1700610 (= c!916570 e!3286226)))

(declare-fun res!2241641 () Bool)

(assert (=> d!1700610 (=> (not res!2241641) (not e!3286226))))

(assert (=> d!1700610 (= res!2241641 (matchR!7098 (regOne!30338 r!7292) Nil!60916))))

(assert (=> d!1700610 (validRegex!6649 (regOne!30338 r!7292))))

(assert (=> d!1700610 (= (findConcatSeparation!1438 (regOne!30338 r!7292) (regTwo!30338 r!7292) Nil!60916 s!2326 s!2326) lt!2160177)))

(declare-fun b!5285554 () Bool)

(declare-fun e!3286223 () Option!15024)

(assert (=> b!5285554 (= e!3286222 e!3286223)))

(declare-fun c!916571 () Bool)

(assert (=> b!5285554 (= c!916571 ((_ is Nil!60916) s!2326))))

(declare-fun b!5285555 () Bool)

(assert (=> b!5285555 (= e!3286226 (matchR!7098 (regTwo!30338 r!7292) s!2326))))

(declare-fun b!5285556 () Bool)

(assert (=> b!5285556 (= e!3286225 (= (++!13284 (_1!35415 (get!20946 lt!2160177)) (_2!35415 (get!20946 lt!2160177))) s!2326))))

(declare-fun b!5285557 () Bool)

(declare-fun res!2241638 () Bool)

(assert (=> b!5285557 (=> (not res!2241638) (not e!3286225))))

(assert (=> b!5285557 (= res!2241638 (matchR!7098 (regOne!30338 r!7292) (_1!35415 (get!20946 lt!2160177))))))

(declare-fun b!5285558 () Bool)

(declare-fun lt!2160178 () Unit!153170)

(declare-fun lt!2160176 () Unit!153170)

(assert (=> b!5285558 (= lt!2160178 lt!2160176)))

(assert (=> b!5285558 (= (++!13284 (++!13284 Nil!60916 (Cons!60916 (h!67364 s!2326) Nil!60916)) (t!374243 s!2326)) s!2326)))

(assert (=> b!5285558 (= lt!2160176 (lemmaMoveElementToOtherListKeepsConcatEq!1699 Nil!60916 (h!67364 s!2326) (t!374243 s!2326) s!2326))))

(assert (=> b!5285558 (= e!3286223 (findConcatSeparation!1438 (regOne!30338 r!7292) (regTwo!30338 r!7292) (++!13284 Nil!60916 (Cons!60916 (h!67364 s!2326) Nil!60916)) (t!374243 s!2326) s!2326))))

(declare-fun b!5285559 () Bool)

(declare-fun res!2241642 () Bool)

(assert (=> b!5285559 (=> (not res!2241642) (not e!3286225))))

(assert (=> b!5285559 (= res!2241642 (matchR!7098 (regTwo!30338 r!7292) (_2!35415 (get!20946 lt!2160177))))))

(declare-fun b!5285560 () Bool)

(assert (=> b!5285560 (= e!3286222 (Some!15023 (tuple2!64225 Nil!60916 s!2326)))))

(declare-fun b!5285561 () Bool)

(assert (=> b!5285561 (= e!3286223 None!15023)))

(declare-fun b!5285562 () Bool)

(assert (=> b!5285562 (= e!3286224 (not (isDefined!11727 lt!2160177)))))

(assert (= (and d!1700610 res!2241641) b!5285555))

(assert (= (and d!1700610 c!916570) b!5285560))

(assert (= (and d!1700610 (not c!916570)) b!5285554))

(assert (= (and b!5285554 c!916571) b!5285561))

(assert (= (and b!5285554 (not c!916571)) b!5285558))

(assert (= (and d!1700610 res!2241639) b!5285557))

(assert (= (and b!5285557 res!2241638) b!5285559))

(assert (= (and b!5285559 res!2241642) b!5285556))

(assert (= (and d!1700610 (not res!2241640)) b!5285562))

(declare-fun m!6323166 () Bool)

(assert (=> b!5285556 m!6323166))

(declare-fun m!6323168 () Bool)

(assert (=> b!5285556 m!6323168))

(assert (=> b!5285558 m!6323128))

(assert (=> b!5285558 m!6323128))

(assert (=> b!5285558 m!6323130))

(assert (=> b!5285558 m!6323132))

(assert (=> b!5285558 m!6323128))

(declare-fun m!6323170 () Bool)

(assert (=> b!5285558 m!6323170))

(declare-fun m!6323172 () Bool)

(assert (=> b!5285555 m!6323172))

(assert (=> b!5285557 m!6323166))

(declare-fun m!6323174 () Bool)

(assert (=> b!5285557 m!6323174))

(assert (=> b!5285559 m!6323166))

(declare-fun m!6323176 () Bool)

(assert (=> b!5285559 m!6323176))

(declare-fun m!6323178 () Bool)

(assert (=> b!5285562 m!6323178))

(assert (=> d!1700610 m!6323178))

(declare-fun m!6323180 () Bool)

(assert (=> d!1700610 m!6323180))

(declare-fun m!6323182 () Bool)

(assert (=> d!1700610 m!6323182))

(assert (=> b!5284603 d!1700610))

(declare-fun d!1700612 () Bool)

(assert (=> d!1700612 (= (Exists!2094 lambda!267159) (choose!39458 lambda!267159))))

(declare-fun bs!1224931 () Bool)

(assert (= bs!1224931 d!1700612))

(declare-fun m!6323184 () Bool)

(assert (=> bs!1224931 m!6323184))

(assert (=> b!5284603 d!1700612))

(declare-fun d!1700614 () Bool)

(assert (=> d!1700614 (= (Exists!2094 lambda!267160) (choose!39458 lambda!267160))))

(declare-fun bs!1224932 () Bool)

(assert (= bs!1224932 d!1700614))

(declare-fun m!6323186 () Bool)

(assert (=> bs!1224932 m!6323186))

(assert (=> b!5284603 d!1700614))

(declare-fun bs!1224933 () Bool)

(declare-fun d!1700616 () Bool)

(assert (= bs!1224933 (and d!1700616 d!1700590)))

(declare-fun lambda!267255 () Int)

(assert (=> bs!1224933 (= (and (= (regOne!30338 r!7292) (regOne!30338 (regOne!30338 r!7292))) (= (regTwo!30338 r!7292) lt!2160015)) (= lambda!267255 lambda!267253))))

(declare-fun bs!1224934 () Bool)

(assert (= bs!1224934 (and d!1700616 b!5284609)))

(assert (=> bs!1224934 (= (and (= (regOne!30338 r!7292) (regOne!30338 (regOne!30338 r!7292))) (= (regTwo!30338 r!7292) lt!2160015)) (= lambda!267255 lambda!267162))))

(declare-fun bs!1224935 () Bool)

(assert (= bs!1224935 (and d!1700616 b!5285449)))

(assert (=> bs!1224935 (not (= lambda!267255 lambda!267247))))

(declare-fun bs!1224936 () Bool)

(assert (= bs!1224936 (and d!1700616 b!5285119)))

(assert (=> bs!1224936 (not (= lambda!267255 lambda!267222))))

(declare-fun bs!1224937 () Bool)

(assert (= bs!1224937 (and d!1700616 b!5284603)))

(assert (=> bs!1224937 (= lambda!267255 lambda!267159)))

(declare-fun bs!1224938 () Bool)

(assert (= bs!1224938 (and d!1700616 b!5285447)))

(assert (=> bs!1224938 (not (= lambda!267255 lambda!267248))))

(assert (=> bs!1224937 (not (= lambda!267255 lambda!267160))))

(declare-fun bs!1224939 () Bool)

(assert (= bs!1224939 (and d!1700616 b!5285121)))

(assert (=> bs!1224939 (not (= lambda!267255 lambda!267221))))

(assert (=> d!1700616 true))

(assert (=> d!1700616 true))

(assert (=> d!1700616 true))

(assert (=> d!1700616 (= (isDefined!11727 (findConcatSeparation!1438 (regOne!30338 r!7292) (regTwo!30338 r!7292) Nil!60916 s!2326 s!2326)) (Exists!2094 lambda!267255))))

(declare-fun lt!2160179 () Unit!153170)

(assert (=> d!1700616 (= lt!2160179 (choose!39459 (regOne!30338 r!7292) (regTwo!30338 r!7292) s!2326))))

(assert (=> d!1700616 (validRegex!6649 (regOne!30338 r!7292))))

(assert (=> d!1700616 (= (lemmaFindConcatSeparationEquivalentToExists!1202 (regOne!30338 r!7292) (regTwo!30338 r!7292) s!2326) lt!2160179)))

(declare-fun bs!1224940 () Bool)

(assert (= bs!1224940 d!1700616))

(declare-fun m!6323188 () Bool)

(assert (=> bs!1224940 m!6323188))

(assert (=> bs!1224940 m!6322228))

(assert (=> bs!1224940 m!6322230))

(declare-fun m!6323190 () Bool)

(assert (=> bs!1224940 m!6323190))

(assert (=> bs!1224940 m!6323182))

(assert (=> bs!1224940 m!6322228))

(assert (=> b!5284603 d!1700616))

(declare-fun bs!1224941 () Bool)

(declare-fun d!1700618 () Bool)

(assert (= bs!1224941 (and d!1700618 d!1700590)))

(declare-fun lambda!267260 () Int)

(assert (=> bs!1224941 (= (and (= (regOne!30338 r!7292) (regOne!30338 (regOne!30338 r!7292))) (= (regTwo!30338 r!7292) lt!2160015)) (= lambda!267260 lambda!267253))))

(declare-fun bs!1224942 () Bool)

(assert (= bs!1224942 (and d!1700618 b!5284609)))

(assert (=> bs!1224942 (= (and (= (regOne!30338 r!7292) (regOne!30338 (regOne!30338 r!7292))) (= (regTwo!30338 r!7292) lt!2160015)) (= lambda!267260 lambda!267162))))

(declare-fun bs!1224943 () Bool)

(assert (= bs!1224943 (and d!1700618 d!1700616)))

(assert (=> bs!1224943 (= lambda!267260 lambda!267255)))

(declare-fun bs!1224944 () Bool)

(assert (= bs!1224944 (and d!1700618 b!5285449)))

(assert (=> bs!1224944 (not (= lambda!267260 lambda!267247))))

(declare-fun bs!1224945 () Bool)

(assert (= bs!1224945 (and d!1700618 b!5285119)))

(assert (=> bs!1224945 (not (= lambda!267260 lambda!267222))))

(declare-fun bs!1224946 () Bool)

(assert (= bs!1224946 (and d!1700618 b!5284603)))

(assert (=> bs!1224946 (= lambda!267260 lambda!267159)))

(declare-fun bs!1224947 () Bool)

(assert (= bs!1224947 (and d!1700618 b!5285447)))

(assert (=> bs!1224947 (not (= lambda!267260 lambda!267248))))

(assert (=> bs!1224946 (not (= lambda!267260 lambda!267160))))

(declare-fun bs!1224948 () Bool)

(assert (= bs!1224948 (and d!1700618 b!5285121)))

(assert (=> bs!1224948 (not (= lambda!267260 lambda!267221))))

(assert (=> d!1700618 true))

(assert (=> d!1700618 true))

(assert (=> d!1700618 true))

(declare-fun lambda!267261 () Int)

(assert (=> bs!1224941 (not (= lambda!267261 lambda!267253))))

(assert (=> bs!1224942 (not (= lambda!267261 lambda!267162))))

(declare-fun bs!1224949 () Bool)

(assert (= bs!1224949 d!1700618))

(assert (=> bs!1224949 (not (= lambda!267261 lambda!267260))))

(assert (=> bs!1224943 (not (= lambda!267261 lambda!267255))))

(assert (=> bs!1224944 (not (= lambda!267261 lambda!267247))))

(assert (=> bs!1224945 (= lambda!267261 lambda!267222)))

(assert (=> bs!1224946 (not (= lambda!267261 lambda!267159))))

(assert (=> bs!1224947 (= (and (= (regOne!30338 r!7292) (regOne!30338 lt!2160005)) (= (regTwo!30338 r!7292) (regTwo!30338 lt!2160005))) (= lambda!267261 lambda!267248))))

(assert (=> bs!1224946 (= lambda!267261 lambda!267160)))

(assert (=> bs!1224948 (not (= lambda!267261 lambda!267221))))

(assert (=> d!1700618 true))

(assert (=> d!1700618 true))

(assert (=> d!1700618 true))

(assert (=> d!1700618 (= (Exists!2094 lambda!267260) (Exists!2094 lambda!267261))))

(declare-fun lt!2160182 () Unit!153170)

(declare-fun choose!39460 (Regex!14913 Regex!14913 List!61040) Unit!153170)

(assert (=> d!1700618 (= lt!2160182 (choose!39460 (regOne!30338 r!7292) (regTwo!30338 r!7292) s!2326))))

(assert (=> d!1700618 (validRegex!6649 (regOne!30338 r!7292))))

(assert (=> d!1700618 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!748 (regOne!30338 r!7292) (regTwo!30338 r!7292) s!2326) lt!2160182)))

(declare-fun m!6323192 () Bool)

(assert (=> bs!1224949 m!6323192))

(declare-fun m!6323194 () Bool)

(assert (=> bs!1224949 m!6323194))

(declare-fun m!6323196 () Bool)

(assert (=> bs!1224949 m!6323196))

(assert (=> bs!1224949 m!6323182))

(assert (=> b!5284603 d!1700618))

(declare-fun d!1700620 () Bool)

(assert (=> d!1700620 (= (isDefined!11727 (findConcatSeparation!1438 (regOne!30338 r!7292) (regTwo!30338 r!7292) Nil!60916 s!2326 s!2326)) (not (isEmpty!32872 (findConcatSeparation!1438 (regOne!30338 r!7292) (regTwo!30338 r!7292) Nil!60916 s!2326 s!2326))))))

(declare-fun bs!1224950 () Bool)

(assert (= bs!1224950 d!1700620))

(assert (=> bs!1224950 m!6322228))

(declare-fun m!6323198 () Bool)

(assert (=> bs!1224950 m!6323198))

(assert (=> b!5284603 d!1700620))

(declare-fun d!1700622 () Bool)

(declare-fun c!916572 () Bool)

(assert (=> d!1700622 (= c!916572 (isEmpty!32871 (t!374243 s!2326)))))

(declare-fun e!3286231 () Bool)

(assert (=> d!1700622 (= (matchZipper!1157 lt!2159996 (t!374243 s!2326)) e!3286231)))

(declare-fun b!5285571 () Bool)

(assert (=> b!5285571 (= e!3286231 (nullableZipper!1304 lt!2159996))))

(declare-fun b!5285572 () Bool)

(assert (=> b!5285572 (= e!3286231 (matchZipper!1157 (derivationStepZipper!1156 lt!2159996 (head!11326 (t!374243 s!2326))) (tail!10423 (t!374243 s!2326))))))

(assert (= (and d!1700622 c!916572) b!5285571))

(assert (= (and d!1700622 (not c!916572)) b!5285572))

(assert (=> d!1700622 m!6322584))

(declare-fun m!6323200 () Bool)

(assert (=> b!5285571 m!6323200))

(assert (=> b!5285572 m!6322588))

(assert (=> b!5285572 m!6322588))

(declare-fun m!6323202 () Bool)

(assert (=> b!5285572 m!6323202))

(assert (=> b!5285572 m!6322592))

(assert (=> b!5285572 m!6323202))

(assert (=> b!5285572 m!6322592))

(declare-fun m!6323204 () Bool)

(assert (=> b!5285572 m!6323204))

(assert (=> b!5284601 d!1700622))

(declare-fun d!1700624 () Bool)

(declare-fun c!916573 () Bool)

(assert (=> d!1700624 (= c!916573 (isEmpty!32871 (t!374243 s!2326)))))

(declare-fun e!3286232 () Bool)

(assert (=> d!1700624 (= (matchZipper!1157 lt!2160016 (t!374243 s!2326)) e!3286232)))

(declare-fun b!5285573 () Bool)

(assert (=> b!5285573 (= e!3286232 (nullableZipper!1304 lt!2160016))))

(declare-fun b!5285574 () Bool)

(assert (=> b!5285574 (= e!3286232 (matchZipper!1157 (derivationStepZipper!1156 lt!2160016 (head!11326 (t!374243 s!2326))) (tail!10423 (t!374243 s!2326))))))

(assert (= (and d!1700624 c!916573) b!5285573))

(assert (= (and d!1700624 (not c!916573)) b!5285574))

(assert (=> d!1700624 m!6322584))

(declare-fun m!6323206 () Bool)

(assert (=> b!5285573 m!6323206))

(assert (=> b!5285574 m!6322588))

(assert (=> b!5285574 m!6322588))

(declare-fun m!6323208 () Bool)

(assert (=> b!5285574 m!6323208))

(assert (=> b!5285574 m!6322592))

(assert (=> b!5285574 m!6323208))

(assert (=> b!5285574 m!6322592))

(declare-fun m!6323210 () Bool)

(assert (=> b!5285574 m!6323210))

(assert (=> b!5284601 d!1700624))

(declare-fun d!1700626 () Bool)

(assert (=> d!1700626 (= (flatMap!640 lt!2160018 lambda!267161) (choose!39453 lt!2160018 lambda!267161))))

(declare-fun bs!1224951 () Bool)

(assert (= bs!1224951 d!1700626))

(declare-fun m!6323212 () Bool)

(assert (=> bs!1224951 m!6323212))

(assert (=> b!5284601 d!1700626))

(declare-fun d!1700628 () Bool)

(assert (=> d!1700628 (= (flatMap!640 lt!2160018 lambda!267161) (dynLambda!24083 lambda!267161 lt!2159998))))

(declare-fun lt!2160183 () Unit!153170)

(assert (=> d!1700628 (= lt!2160183 (choose!39455 lt!2160018 lt!2159998 lambda!267161))))

(assert (=> d!1700628 (= lt!2160018 (store ((as const (Array Context!8594 Bool)) false) lt!2159998 true))))

(assert (=> d!1700628 (= (lemmaFlatMapOnSingletonSet!172 lt!2160018 lt!2159998 lambda!267161) lt!2160183)))

(declare-fun b_lambda!203875 () Bool)

(assert (=> (not b_lambda!203875) (not d!1700628)))

(declare-fun bs!1224952 () Bool)

(assert (= bs!1224952 d!1700628))

(assert (=> bs!1224952 m!6322280))

(declare-fun m!6323214 () Bool)

(assert (=> bs!1224952 m!6323214))

(declare-fun m!6323216 () Bool)

(assert (=> bs!1224952 m!6323216))

(assert (=> bs!1224952 m!6322306))

(assert (=> b!5284601 d!1700628))

(assert (=> b!5284601 d!1700540))

(declare-fun d!1700630 () Bool)

(declare-fun e!3286233 () Bool)

(assert (=> d!1700630 (= (matchZipper!1157 ((_ map or) lt!2159992 lt!2159988) (t!374243 s!2326)) e!3286233)))

(declare-fun res!2241651 () Bool)

(assert (=> d!1700630 (=> res!2241651 e!3286233)))

(assert (=> d!1700630 (= res!2241651 (matchZipper!1157 lt!2159992 (t!374243 s!2326)))))

(declare-fun lt!2160184 () Unit!153170)

(assert (=> d!1700630 (= lt!2160184 (choose!39450 lt!2159992 lt!2159988 (t!374243 s!2326)))))

(assert (=> d!1700630 (= (lemmaZipperConcatMatchesSameAsBothZippers!150 lt!2159992 lt!2159988 (t!374243 s!2326)) lt!2160184)))

(declare-fun b!5285575 () Bool)

(assert (=> b!5285575 (= e!3286233 (matchZipper!1157 lt!2159988 (t!374243 s!2326)))))

(assert (= (and d!1700630 (not res!2241651)) b!5285575))

(declare-fun m!6323218 () Bool)

(assert (=> d!1700630 m!6323218))

(assert (=> d!1700630 m!6322332))

(declare-fun m!6323220 () Bool)

(assert (=> d!1700630 m!6323220))

(assert (=> b!5285575 m!6322278))

(assert (=> b!5284601 d!1700630))

(declare-fun b!5285580 () Bool)

(declare-fun e!3286236 () Bool)

(declare-fun tp!1476012 () Bool)

(declare-fun tp!1476013 () Bool)

(assert (=> b!5285580 (= e!3286236 (and tp!1476012 tp!1476013))))

(assert (=> b!5284583 (= tp!1475944 e!3286236)))

(assert (= (and b!5284583 ((_ is Cons!60914) (exprs!4797 setElem!33893))) b!5285580))

(declare-fun b!5285585 () Bool)

(declare-fun e!3286239 () Bool)

(declare-fun tp!1476016 () Bool)

(assert (=> b!5285585 (= e!3286239 (and tp_is_empty!39079 tp!1476016))))

(assert (=> b!5284597 (= tp!1475943 e!3286239)))

(assert (= (and b!5284597 ((_ is Cons!60916) (t!374243 s!2326))) b!5285585))

(declare-fun condSetEmpty!33899 () Bool)

(assert (=> setNonEmpty!33893 (= condSetEmpty!33899 (= setRest!33893 ((as const (Array Context!8594 Bool)) false)))))

(declare-fun setRes!33899 () Bool)

(assert (=> setNonEmpty!33893 (= tp!1475940 setRes!33899)))

(declare-fun setIsEmpty!33899 () Bool)

(assert (=> setIsEmpty!33899 setRes!33899))

(declare-fun setElem!33899 () Context!8594)

(declare-fun setNonEmpty!33899 () Bool)

(declare-fun e!3286242 () Bool)

(declare-fun tp!1476021 () Bool)

(assert (=> setNonEmpty!33899 (= setRes!33899 (and tp!1476021 (inv!80529 setElem!33899) e!3286242))))

(declare-fun setRest!33899 () (InoxSet Context!8594))

(assert (=> setNonEmpty!33899 (= setRest!33893 ((_ map or) (store ((as const (Array Context!8594 Bool)) false) setElem!33899 true) setRest!33899))))

(declare-fun b!5285590 () Bool)

(declare-fun tp!1476022 () Bool)

(assert (=> b!5285590 (= e!3286242 tp!1476022)))

(assert (= (and setNonEmpty!33893 condSetEmpty!33899) setIsEmpty!33899))

(assert (= (and setNonEmpty!33893 (not condSetEmpty!33899)) setNonEmpty!33899))

(assert (= setNonEmpty!33899 b!5285590))

(declare-fun m!6323222 () Bool)

(assert (=> setNonEmpty!33899 m!6323222))

(declare-fun b!5285598 () Bool)

(declare-fun e!3286248 () Bool)

(declare-fun tp!1476027 () Bool)

(assert (=> b!5285598 (= e!3286248 tp!1476027)))

(declare-fun b!5285597 () Bool)

(declare-fun e!3286247 () Bool)

(declare-fun tp!1476028 () Bool)

(assert (=> b!5285597 (= e!3286247 (and (inv!80529 (h!67363 (t!374242 zl!343))) e!3286248 tp!1476028))))

(assert (=> b!5284608 (= tp!1475948 e!3286247)))

(assert (= b!5285597 b!5285598))

(assert (= (and b!5284608 ((_ is Cons!60915) (t!374242 zl!343))) b!5285597))

(declare-fun m!6323224 () Bool)

(assert (=> b!5285597 m!6323224))

(declare-fun b!5285610 () Bool)

(declare-fun e!3286251 () Bool)

(declare-fun tp!1476040 () Bool)

(declare-fun tp!1476041 () Bool)

(assert (=> b!5285610 (= e!3286251 (and tp!1476040 tp!1476041))))

(assert (=> b!5284600 (= tp!1475941 e!3286251)))

(declare-fun b!5285612 () Bool)

(declare-fun tp!1476043 () Bool)

(declare-fun tp!1476042 () Bool)

(assert (=> b!5285612 (= e!3286251 (and tp!1476043 tp!1476042))))

(declare-fun b!5285609 () Bool)

(assert (=> b!5285609 (= e!3286251 tp_is_empty!39079)))

(declare-fun b!5285611 () Bool)

(declare-fun tp!1476039 () Bool)

(assert (=> b!5285611 (= e!3286251 tp!1476039)))

(assert (= (and b!5284600 ((_ is ElementMatch!14913) (regOne!30339 r!7292))) b!5285609))

(assert (= (and b!5284600 ((_ is Concat!23758) (regOne!30339 r!7292))) b!5285610))

(assert (= (and b!5284600 ((_ is Star!14913) (regOne!30339 r!7292))) b!5285611))

(assert (= (and b!5284600 ((_ is Union!14913) (regOne!30339 r!7292))) b!5285612))

(declare-fun b!5285614 () Bool)

(declare-fun e!3286252 () Bool)

(declare-fun tp!1476045 () Bool)

(declare-fun tp!1476046 () Bool)

(assert (=> b!5285614 (= e!3286252 (and tp!1476045 tp!1476046))))

(assert (=> b!5284600 (= tp!1475945 e!3286252)))

(declare-fun b!5285616 () Bool)

(declare-fun tp!1476048 () Bool)

(declare-fun tp!1476047 () Bool)

(assert (=> b!5285616 (= e!3286252 (and tp!1476048 tp!1476047))))

(declare-fun b!5285613 () Bool)

(assert (=> b!5285613 (= e!3286252 tp_is_empty!39079)))

(declare-fun b!5285615 () Bool)

(declare-fun tp!1476044 () Bool)

(assert (=> b!5285615 (= e!3286252 tp!1476044)))

(assert (= (and b!5284600 ((_ is ElementMatch!14913) (regTwo!30339 r!7292))) b!5285613))

(assert (= (and b!5284600 ((_ is Concat!23758) (regTwo!30339 r!7292))) b!5285614))

(assert (= (and b!5284600 ((_ is Star!14913) (regTwo!30339 r!7292))) b!5285615))

(assert (= (and b!5284600 ((_ is Union!14913) (regTwo!30339 r!7292))) b!5285616))

(declare-fun b!5285617 () Bool)

(declare-fun e!3286253 () Bool)

(declare-fun tp!1476049 () Bool)

(declare-fun tp!1476050 () Bool)

(assert (=> b!5285617 (= e!3286253 (and tp!1476049 tp!1476050))))

(assert (=> b!5284598 (= tp!1475942 e!3286253)))

(assert (= (and b!5284598 ((_ is Cons!60914) (exprs!4797 (h!67363 zl!343)))) b!5285617))

(declare-fun b!5285619 () Bool)

(declare-fun e!3286254 () Bool)

(declare-fun tp!1476052 () Bool)

(declare-fun tp!1476053 () Bool)

(assert (=> b!5285619 (= e!3286254 (and tp!1476052 tp!1476053))))

(assert (=> b!5284615 (= tp!1475947 e!3286254)))

(declare-fun b!5285621 () Bool)

(declare-fun tp!1476055 () Bool)

(declare-fun tp!1476054 () Bool)

(assert (=> b!5285621 (= e!3286254 (and tp!1476055 tp!1476054))))

(declare-fun b!5285618 () Bool)

(assert (=> b!5285618 (= e!3286254 tp_is_empty!39079)))

(declare-fun b!5285620 () Bool)

(declare-fun tp!1476051 () Bool)

(assert (=> b!5285620 (= e!3286254 tp!1476051)))

(assert (= (and b!5284615 ((_ is ElementMatch!14913) (regOne!30338 r!7292))) b!5285618))

(assert (= (and b!5284615 ((_ is Concat!23758) (regOne!30338 r!7292))) b!5285619))

(assert (= (and b!5284615 ((_ is Star!14913) (regOne!30338 r!7292))) b!5285620))

(assert (= (and b!5284615 ((_ is Union!14913) (regOne!30338 r!7292))) b!5285621))

(declare-fun b!5285623 () Bool)

(declare-fun e!3286255 () Bool)

(declare-fun tp!1476057 () Bool)

(declare-fun tp!1476058 () Bool)

(assert (=> b!5285623 (= e!3286255 (and tp!1476057 tp!1476058))))

(assert (=> b!5284615 (= tp!1475946 e!3286255)))

(declare-fun b!5285625 () Bool)

(declare-fun tp!1476060 () Bool)

(declare-fun tp!1476059 () Bool)

(assert (=> b!5285625 (= e!3286255 (and tp!1476060 tp!1476059))))

(declare-fun b!5285622 () Bool)

(assert (=> b!5285622 (= e!3286255 tp_is_empty!39079)))

(declare-fun b!5285624 () Bool)

(declare-fun tp!1476056 () Bool)

(assert (=> b!5285624 (= e!3286255 tp!1476056)))

(assert (= (and b!5284615 ((_ is ElementMatch!14913) (regTwo!30338 r!7292))) b!5285622))

(assert (= (and b!5284615 ((_ is Concat!23758) (regTwo!30338 r!7292))) b!5285623))

(assert (= (and b!5284615 ((_ is Star!14913) (regTwo!30338 r!7292))) b!5285624))

(assert (= (and b!5284615 ((_ is Union!14913) (regTwo!30338 r!7292))) b!5285625))

(declare-fun b!5285627 () Bool)

(declare-fun e!3286256 () Bool)

(declare-fun tp!1476062 () Bool)

(declare-fun tp!1476063 () Bool)

(assert (=> b!5285627 (= e!3286256 (and tp!1476062 tp!1476063))))

(assert (=> b!5284599 (= tp!1475949 e!3286256)))

(declare-fun b!5285629 () Bool)

(declare-fun tp!1476065 () Bool)

(declare-fun tp!1476064 () Bool)

(assert (=> b!5285629 (= e!3286256 (and tp!1476065 tp!1476064))))

(declare-fun b!5285626 () Bool)

(assert (=> b!5285626 (= e!3286256 tp_is_empty!39079)))

(declare-fun b!5285628 () Bool)

(declare-fun tp!1476061 () Bool)

(assert (=> b!5285628 (= e!3286256 tp!1476061)))

(assert (= (and b!5284599 ((_ is ElementMatch!14913) (reg!15242 r!7292))) b!5285626))

(assert (= (and b!5284599 ((_ is Concat!23758) (reg!15242 r!7292))) b!5285627))

(assert (= (and b!5284599 ((_ is Star!14913) (reg!15242 r!7292))) b!5285628))

(assert (= (and b!5284599 ((_ is Union!14913) (reg!15242 r!7292))) b!5285629))

(declare-fun b_lambda!203877 () Bool)

(assert (= b_lambda!203869 (or b!5284590 b_lambda!203877)))

(declare-fun bs!1224953 () Bool)

(declare-fun d!1700632 () Bool)

(assert (= bs!1224953 (and d!1700632 b!5284590)))

(assert (=> bs!1224953 (= (dynLambda!24083 lambda!267161 lt!2159982) (derivationStepZipperUp!285 lt!2159982 (h!67364 s!2326)))))

(assert (=> bs!1224953 m!6322310))

(assert (=> d!1700546 d!1700632))

(declare-fun b_lambda!203879 () Bool)

(assert (= b_lambda!203871 (or b!5284590 b_lambda!203879)))

(declare-fun bs!1224954 () Bool)

(declare-fun d!1700634 () Bool)

(assert (= bs!1224954 (and d!1700634 b!5284590)))

(assert (=> bs!1224954 (= (dynLambda!24083 lambda!267161 (h!67363 zl!343)) (derivationStepZipperUp!285 (h!67363 zl!343) (h!67364 s!2326)))))

(assert (=> bs!1224954 m!6322340))

(assert (=> d!1700556 d!1700634))

(declare-fun b_lambda!203881 () Bool)

(assert (= b_lambda!203873 (or b!5284609 b_lambda!203881)))

(declare-fun bs!1224955 () Bool)

(declare-fun d!1700636 () Bool)

(assert (= bs!1224955 (and d!1700636 b!5284609)))

(assert (=> bs!1224955 (= (dynLambda!24085 lambda!267163 (h!67362 lt!2160009)) (validRegex!6649 (h!67362 lt!2160009)))))

(declare-fun m!6323226 () Bool)

(assert (=> bs!1224955 m!6323226))

(assert (=> b!5285495 d!1700636))

(declare-fun b_lambda!203883 () Bool)

(assert (= b_lambda!203875 (or b!5284590 b_lambda!203883)))

(declare-fun bs!1224956 () Bool)

(declare-fun d!1700638 () Bool)

(assert (= bs!1224956 (and d!1700638 b!5284590)))

(assert (=> bs!1224956 (= (dynLambda!24083 lambda!267161 lt!2159998) (derivationStepZipperUp!285 lt!2159998 (h!67364 s!2326)))))

(assert (=> bs!1224956 m!6322288))

(assert (=> d!1700628 d!1700638))

(check-sat (not b!5284953) (not b!5284834) (not b!5285537) (not b!5284764) (not b_lambda!203883) (not bm!376457) (not d!1700592) (not b!5284880) (not b!5284865) (not b!5285559) (not b!5285391) (not b!5285487) (not b!5285548) (not b!5285534) (not d!1700426) (not d!1700506) (not b!5284879) (not b_lambda!203879) (not b!5285123) (not b!5285482) (not b!5285617) (not b!5285451) (not bm!376435) (not b!5285308) (not b!5285558) (not b!5285411) (not b!5284863) (not bm!376466) (not bm!376450) (not b!5285623) (not b!5285628) (not d!1700484) (not b!5285466) tp_is_empty!39079 (not d!1700630) (not b!5284881) (not bm!376382) (not d!1700432) (not bm!376383) (not bm!376465) (not b!5284952) (not b!5285619) (not b!5285611) (not d!1700344) (not b!5284768) (not b!5284866) (not b!5285556) (not d!1700568) (not b!5285489) (not d!1700438) (not b!5285502) (not d!1700600) (not b!5285479) (not b!5285281) (not bm!376434) (not bm!376459) (not b!5285118) (not d!1700594) (not bm!376470) (not b!5285413) (not bm!376478) (not d!1700548) (not d!1700558) (not b!5284887) (not b!5285504) (not d!1700584) (not b!5285388) (not d!1700564) (not d!1700514) (not b!5284808) (not b!5285221) (not b!5285416) (not b!5285484) (not b!5285597) (not b!5284980) (not d!1700578) (not b!5285463) (not b!5285501) (not b!5285488) (not b!5285574) (not d!1700606) (not bm!376479) (not d!1700574) (not bs!1224953) (not b!5285541) (not b!5285562) (not d!1700538) (not bm!376472) (not bm!376467) (not b!5285434) (not d!1700422) (not d!1700366) (not b!5285610) (not b!5285590) (not b!5285439) (not b!5285454) (not b!5285573) (not b!5284697) (not b!5285625) (not b!5285223) (not bm!376378) (not b!5284861) (not b!5284959) (not b!5284951) (not d!1700550) (not b!5285490) (not b!5285483) (not d!1700400) (not b!5285553) (not b!5285406) (not b!5285535) (not b!5285437) (not b!5285453) (not b!5285455) (not bs!1224956) (not d!1700614) (not b!5285621) (not b!5285551) (not b!5285418) (not d!1700622) (not d!1700628) (not d!1700542) (not b!5285572) (not b!5285546) (not b!5285432) (not bm!376376) (not b!5285620) (not b!5285226) (not b!5285624) (not bm!376377) (not b!5284956) (not b!5284708) (not d!1700616) (not b_lambda!203877) (not b!5285459) (not d!1700390) (not b!5284762) (not b!5285598) (not b!5285503) (not d!1700572) (not b!5285506) (not d!1700590) (not bm!376471) (not b!5285290) (not setNonEmpty!33899) (not d!1700556) (not d!1700420) (not b!5284960) (not d!1700428) (not b!5285446) (not b!5285486) (not b!5285585) (not b!5285557) (not d!1700612) (not d!1700546) (not b!5285550) (not b!5285291) (not b!5285225) (not b!5285469) (not b!5285536) (not b!5284759) (not d!1700624) (not bs!1224954) (not b!5285496) (not b!5285222) (not bm!376477) (not b!5285616) (not b!5285552) (not b!5285580) (not bm!376384) (not b!5285404) (not d!1700620) (not d!1700588) (not bm!376475) (not d!1700618) (not d!1700610) (not b!5285465) (not b!5285615) (not b!5285614) (not b!5285627) (not d!1700576) (not d!1700580) (not b!5284763) (not b!5285462) (not b!5285460) (not d!1700456) (not d!1700570) (not b!5285224) (not d!1700582) (not b!5285571) (not b!5284878) (not b!5285470) (not b!5285555) (not b!5285421) (not b!5284767) (not b!5285393) (not d!1700608) (not d!1700364) (not b!5285629) (not d!1700424) (not b!5285386) (not b!5285467) (not b!5285468) (not bm!376474) (not b!5285505) (not b!5285464) (not b!5285575) (not b_lambda!203881) (not b!5284864) (not d!1700626) (not b!5284955) (not b!5285310) (not b!5284766) (not b!5285538) (not bs!1224955) (not b!5285612) (not b!5284862) (not b!5285458) (not bm!376476))
(check-sat)
