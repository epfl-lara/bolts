; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!559162 () Bool)

(assert start!559162)

(declare-fun b!5299946 () Bool)

(assert (=> b!5299946 true))

(assert (=> b!5299946 true))

(declare-fun lambda!269082 () Int)

(declare-fun lambda!269081 () Int)

(assert (=> b!5299946 (not (= lambda!269082 lambda!269081))))

(assert (=> b!5299946 true))

(assert (=> b!5299946 true))

(declare-fun b!5299959 () Bool)

(assert (=> b!5299959 true))

(declare-fun bs!1229202 () Bool)

(declare-fun b!5299953 () Bool)

(assert (= bs!1229202 (and b!5299953 b!5299946)))

(declare-datatypes ((C!30152 0))(
  ( (C!30153 (val!24778 Int)) )
))
(declare-datatypes ((Regex!14941 0))(
  ( (ElementMatch!14941 (c!919991 C!30152)) (Concat!23786 (regOne!30394 Regex!14941) (regTwo!30394 Regex!14941)) (EmptyExpr!14941) (Star!14941 (reg!15270 Regex!14941)) (EmptyLang!14941) (Union!14941 (regOne!30395 Regex!14941) (regTwo!30395 Regex!14941)) )
))
(declare-fun r!7292 () Regex!14941)

(declare-fun lt!2165459 () Regex!14941)

(declare-fun lambda!269084 () Int)

(assert (=> bs!1229202 (= (and (= (regOne!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165459 (regTwo!30394 r!7292))) (= lambda!269084 lambda!269081))))

(assert (=> bs!1229202 (not (= lambda!269084 lambda!269082))))

(assert (=> b!5299953 true))

(assert (=> b!5299953 true))

(assert (=> b!5299953 true))

(declare-fun lambda!269085 () Int)

(assert (=> bs!1229202 (not (= lambda!269085 lambda!269081))))

(assert (=> bs!1229202 (= (and (= (regOne!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165459 (regTwo!30394 r!7292))) (= lambda!269085 lambda!269082))))

(assert (=> b!5299953 (not (= lambda!269085 lambda!269084))))

(assert (=> b!5299953 true))

(assert (=> b!5299953 true))

(assert (=> b!5299953 true))

(declare-fun lambda!269086 () Int)

(declare-fun lt!2165446 () Regex!14941)

(assert (=> bs!1229202 (= (and (= (regTwo!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165446 (regTwo!30394 r!7292))) (= lambda!269086 lambda!269081))))

(assert (=> bs!1229202 (not (= lambda!269086 lambda!269082))))

(assert (=> b!5299953 (= (and (= (regTwo!30394 (regOne!30394 r!7292)) (regOne!30394 (regOne!30394 r!7292))) (= lt!2165446 lt!2165459)) (= lambda!269086 lambda!269084))))

(assert (=> b!5299953 (not (= lambda!269086 lambda!269085))))

(assert (=> b!5299953 true))

(assert (=> b!5299953 true))

(assert (=> b!5299953 true))

(declare-fun lambda!269087 () Int)

(assert (=> bs!1229202 (not (= lambda!269087 lambda!269081))))

(assert (=> b!5299953 (not (= lambda!269087 lambda!269084))))

(assert (=> b!5299953 (not (= lambda!269087 lambda!269086))))

(assert (=> b!5299953 (= (and (= (regTwo!30394 (regOne!30394 r!7292)) (regOne!30394 (regOne!30394 r!7292))) (= lt!2165446 lt!2165459)) (= lambda!269087 lambda!269085))))

(assert (=> bs!1229202 (= (and (= (regTwo!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165446 (regTwo!30394 r!7292))) (= lambda!269087 lambda!269082))))

(assert (=> b!5299953 true))

(assert (=> b!5299953 true))

(assert (=> b!5299953 true))

(declare-fun e!3294199 () Bool)

(declare-fun e!3294194 () Bool)

(assert (=> b!5299946 (= e!3294199 e!3294194)))

(declare-fun res!2247918 () Bool)

(assert (=> b!5299946 (=> res!2247918 e!3294194)))

(declare-datatypes ((List!61122 0))(
  ( (Nil!60998) (Cons!60998 (h!67446 C!30152) (t!374327 List!61122)) )
))
(declare-fun s!2326 () List!61122)

(declare-fun lt!2165441 () Bool)

(declare-fun lt!2165479 () Bool)

(get-info :version)

(assert (=> b!5299946 (= res!2247918 (or (not (= lt!2165441 lt!2165479)) ((_ is Nil!60998) s!2326)))))

(declare-fun Exists!2122 (Int) Bool)

(assert (=> b!5299946 (= (Exists!2122 lambda!269081) (Exists!2122 lambda!269082))))

(declare-datatypes ((Unit!153282 0))(
  ( (Unit!153283) )
))
(declare-fun lt!2165461 () Unit!153282)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!776 (Regex!14941 Regex!14941 List!61122) Unit!153282)

(assert (=> b!5299946 (= lt!2165461 (lemmaExistCutMatchRandMatchRSpecEquivalent!776 (regOne!30394 r!7292) (regTwo!30394 r!7292) s!2326))))

(assert (=> b!5299946 (= lt!2165479 (Exists!2122 lambda!269081))))

(declare-datatypes ((tuple2!64280 0))(
  ( (tuple2!64281 (_1!35443 List!61122) (_2!35443 List!61122)) )
))
(declare-datatypes ((Option!15052 0))(
  ( (None!15051) (Some!15051 (v!51080 tuple2!64280)) )
))
(declare-fun isDefined!11755 (Option!15052) Bool)

(declare-fun findConcatSeparation!1466 (Regex!14941 Regex!14941 List!61122 List!61122 List!61122) Option!15052)

(assert (=> b!5299946 (= lt!2165479 (isDefined!11755 (findConcatSeparation!1466 (regOne!30394 r!7292) (regTwo!30394 r!7292) Nil!60998 s!2326 s!2326)))))

(declare-fun lt!2165465 () Unit!153282)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1230 (Regex!14941 Regex!14941 List!61122) Unit!153282)

(assert (=> b!5299946 (= lt!2165465 (lemmaFindConcatSeparationEquivalentToExists!1230 (regOne!30394 r!7292) (regTwo!30394 r!7292) s!2326))))

(declare-fun b!5299947 () Bool)

(declare-fun e!3294189 () Bool)

(declare-fun validRegex!6677 (Regex!14941) Bool)

(assert (=> b!5299947 (= e!3294189 (validRegex!6677 (regTwo!30394 r!7292)))))

(declare-fun b!5299948 () Bool)

(declare-fun e!3294186 () Bool)

(declare-fun tp!1478152 () Bool)

(declare-fun tp!1478157 () Bool)

(assert (=> b!5299948 (= e!3294186 (and tp!1478152 tp!1478157))))

(declare-fun b!5299949 () Bool)

(declare-fun res!2247899 () Bool)

(assert (=> b!5299949 (=> res!2247899 e!3294199)))

(assert (=> b!5299949 (= res!2247899 (or ((_ is EmptyExpr!14941) r!7292) ((_ is EmptyLang!14941) r!7292) ((_ is ElementMatch!14941) r!7292) ((_ is Union!14941) r!7292) (not ((_ is Concat!23786) r!7292))))))

(declare-fun b!5299950 () Bool)

(declare-fun e!3294185 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61123 0))(
  ( (Nil!60999) (Cons!60999 (h!67447 Regex!14941) (t!374328 List!61123)) )
))
(declare-datatypes ((Context!8650 0))(
  ( (Context!8651 (exprs!4825 List!61123)) )
))
(declare-fun lt!2165456 () (InoxSet Context!8650))

(declare-fun matchZipper!1185 ((InoxSet Context!8650) List!61122) Bool)

(assert (=> b!5299950 (= e!3294185 (matchZipper!1185 lt!2165456 (t!374327 s!2326)))))

(declare-fun b!5299951 () Bool)

(declare-fun res!2247920 () Bool)

(declare-fun e!3294195 () Bool)

(assert (=> b!5299951 (=> res!2247920 e!3294195)))

(declare-datatypes ((List!61124 0))(
  ( (Nil!61000) (Cons!61000 (h!67448 Context!8650) (t!374329 List!61124)) )
))
(declare-fun lt!2165486 () List!61124)

(declare-fun zl!343 () List!61124)

(declare-fun zipperDepth!58 (List!61124) Int)

(assert (=> b!5299951 (= res!2247920 (> (zipperDepth!58 lt!2165486) (zipperDepth!58 zl!343)))))

(declare-fun b!5299952 () Bool)

(declare-fun res!2247906 () Bool)

(assert (=> b!5299952 (=> res!2247906 e!3294199)))

(declare-fun generalisedConcat!610 (List!61123) Regex!14941)

(assert (=> b!5299952 (= res!2247906 (not (= r!7292 (generalisedConcat!610 (exprs!4825 (h!67448 zl!343))))))))

(assert (=> b!5299953 (= e!3294195 e!3294189)))

(declare-fun res!2247910 () Bool)

(assert (=> b!5299953 (=> res!2247910 e!3294189)))

(declare-fun lt!2165447 () Bool)

(declare-fun lt!2165474 () Bool)

(declare-fun lt!2165476 () Bool)

(declare-fun lt!2165487 () Bool)

(declare-fun lt!2165471 () Bool)

(assert (=> b!5299953 (= res!2247910 (or (not (= lt!2165447 (or lt!2165474 lt!2165476))) (not (= lt!2165447 (or lt!2165487 lt!2165471)))))))

(declare-fun z!1189 () (InoxSet Context!8650))

(assert (=> b!5299953 (= lt!2165447 (matchZipper!1185 z!1189 s!2326))))

(assert (=> b!5299953 (= (Exists!2122 lambda!269086) (Exists!2122 lambda!269087))))

(declare-fun lt!2165450 () Unit!153282)

(assert (=> b!5299953 (= lt!2165450 (lemmaExistCutMatchRandMatchRSpecEquivalent!776 (regTwo!30394 (regOne!30394 r!7292)) lt!2165446 s!2326))))

(assert (=> b!5299953 (= (isDefined!11755 (findConcatSeparation!1466 (regTwo!30394 (regOne!30394 r!7292)) lt!2165446 Nil!60998 s!2326 s!2326)) (Exists!2122 lambda!269086))))

(declare-fun lt!2165477 () Unit!153282)

(assert (=> b!5299953 (= lt!2165477 (lemmaFindConcatSeparationEquivalentToExists!1230 (regTwo!30394 (regOne!30394 r!7292)) lt!2165446 s!2326))))

(assert (=> b!5299953 (= lt!2165446 (generalisedConcat!610 (t!374328 (exprs!4825 (h!67448 zl!343)))))))

(declare-fun matchRSpec!2044 (Regex!14941 List!61122) Bool)

(assert (=> b!5299953 (= lt!2165471 (matchRSpec!2044 lt!2165459 s!2326))))

(declare-fun lt!2165469 () Unit!153282)

(declare-fun mainMatchTheorem!2044 (Regex!14941 List!61122) Unit!153282)

(assert (=> b!5299953 (= lt!2165469 (mainMatchTheorem!2044 lt!2165459 s!2326))))

(assert (=> b!5299953 (= (Exists!2122 lambda!269084) (Exists!2122 lambda!269085))))

(declare-fun lt!2165464 () Unit!153282)

(assert (=> b!5299953 (= lt!2165464 (lemmaExistCutMatchRandMatchRSpecEquivalent!776 (regOne!30394 (regOne!30394 r!7292)) lt!2165459 s!2326))))

(assert (=> b!5299953 (= (isDefined!11755 (findConcatSeparation!1466 (regOne!30394 (regOne!30394 r!7292)) lt!2165459 Nil!60998 s!2326 s!2326)) (Exists!2122 lambda!269084))))

(declare-fun lt!2165448 () Unit!153282)

(assert (=> b!5299953 (= lt!2165448 (lemmaFindConcatSeparationEquivalentToExists!1230 (regOne!30394 (regOne!30394 r!7292)) lt!2165459 s!2326))))

(declare-fun lt!2165480 () Regex!14941)

(assert (=> b!5299953 (= lt!2165487 (matchRSpec!2044 lt!2165480 s!2326))))

(declare-fun lt!2165463 () Unit!153282)

(assert (=> b!5299953 (= lt!2165463 (mainMatchTheorem!2044 lt!2165480 s!2326))))

(assert (=> b!5299953 (= lt!2165471 lt!2165476)))

(declare-fun lt!2165443 () (InoxSet Context!8650))

(assert (=> b!5299953 (= lt!2165476 (matchZipper!1185 lt!2165443 s!2326))))

(declare-fun matchR!7126 (Regex!14941 List!61122) Bool)

(assert (=> b!5299953 (= lt!2165471 (matchR!7126 lt!2165459 s!2326))))

(declare-fun lt!2165484 () Unit!153282)

(declare-fun lt!2165467 () Context!8650)

(declare-fun theoremZipperRegexEquiv!351 ((InoxSet Context!8650) List!61124 Regex!14941 List!61122) Unit!153282)

(assert (=> b!5299953 (= lt!2165484 (theoremZipperRegexEquiv!351 lt!2165443 (Cons!61000 lt!2165467 Nil!61000) lt!2165459 s!2326))))

(declare-fun lt!2165466 () List!61123)

(assert (=> b!5299953 (= lt!2165459 (generalisedConcat!610 lt!2165466))))

(assert (=> b!5299953 (= lt!2165487 lt!2165474)))

(declare-fun lt!2165452 () (InoxSet Context!8650))

(assert (=> b!5299953 (= lt!2165474 (matchZipper!1185 lt!2165452 s!2326))))

(assert (=> b!5299953 (= lt!2165487 (matchR!7126 lt!2165480 s!2326))))

(declare-fun lt!2165488 () Unit!153282)

(assert (=> b!5299953 (= lt!2165488 (theoremZipperRegexEquiv!351 lt!2165452 lt!2165486 lt!2165480 s!2326))))

(declare-fun lt!2165481 () List!61123)

(assert (=> b!5299953 (= lt!2165480 (generalisedConcat!610 lt!2165481))))

(declare-fun b!5299954 () Bool)

(declare-fun res!2247922 () Bool)

(declare-fun e!3294188 () Bool)

(assert (=> b!5299954 (=> res!2247922 e!3294188)))

(declare-fun lt!2165445 () Context!8650)

(declare-fun contextDepthTotal!82 (Context!8650) Int)

(assert (=> b!5299954 (= res!2247922 (>= (contextDepthTotal!82 lt!2165445) (contextDepthTotal!82 (h!67448 zl!343))))))

(declare-fun b!5299955 () Bool)

(declare-fun e!3294196 () Bool)

(declare-fun lt!2165470 () (InoxSet Context!8650))

(assert (=> b!5299955 (= e!3294196 (matchZipper!1185 lt!2165470 (t!374327 s!2326)))))

(declare-fun b!5299956 () Bool)

(declare-fun e!3294190 () Bool)

(declare-fun lt!2165460 () (InoxSet Context!8650))

(assert (=> b!5299956 (= e!3294190 (matchZipper!1185 lt!2165460 (t!374327 s!2326)))))

(declare-fun b!5299957 () Bool)

(declare-fun res!2247902 () Bool)

(assert (=> b!5299957 (=> res!2247902 e!3294188)))

(assert (=> b!5299957 (= res!2247902 (not (= (exprs!4825 (h!67448 zl!343)) (Cons!60999 (Concat!23786 (regOne!30394 (regOne!30394 r!7292)) (regTwo!30394 (regOne!30394 r!7292))) (t!374328 (exprs!4825 (h!67448 zl!343)))))))))

(declare-fun b!5299958 () Bool)

(declare-fun res!2247914 () Bool)

(declare-fun e!3294187 () Bool)

(assert (=> b!5299958 (=> (not res!2247914) (not e!3294187))))

(declare-fun toList!8725 ((InoxSet Context!8650)) List!61124)

(assert (=> b!5299958 (= res!2247914 (= (toList!8725 z!1189) zl!343))))

(declare-fun e!3294200 () Bool)

(assert (=> b!5299959 (= e!3294194 e!3294200)))

(declare-fun res!2247923 () Bool)

(assert (=> b!5299959 (=> res!2247923 e!3294200)))

(assert (=> b!5299959 (= res!2247923 (or (and ((_ is ElementMatch!14941) (regOne!30394 r!7292)) (= (c!919991 (regOne!30394 r!7292)) (h!67446 s!2326))) ((_ is Union!14941) (regOne!30394 r!7292)) (not ((_ is Concat!23786) (regOne!30394 r!7292)))))))

(declare-fun lt!2165462 () Unit!153282)

(declare-fun e!3294198 () Unit!153282)

(assert (=> b!5299959 (= lt!2165462 e!3294198)))

(declare-fun c!919990 () Bool)

(declare-fun nullable!5110 (Regex!14941) Bool)

(assert (=> b!5299959 (= c!919990 (nullable!5110 (h!67447 (exprs!4825 (h!67448 zl!343)))))))

(declare-fun lambda!269083 () Int)

(declare-fun flatMap!668 ((InoxSet Context!8650) Int) (InoxSet Context!8650))

(declare-fun derivationStepZipperUp!313 (Context!8650 C!30152) (InoxSet Context!8650))

(assert (=> b!5299959 (= (flatMap!668 z!1189 lambda!269083) (derivationStepZipperUp!313 (h!67448 zl!343) (h!67446 s!2326)))))

(declare-fun lt!2165449 () Unit!153282)

(declare-fun lemmaFlatMapOnSingletonSet!200 ((InoxSet Context!8650) Context!8650 Int) Unit!153282)

(assert (=> b!5299959 (= lt!2165449 (lemmaFlatMapOnSingletonSet!200 z!1189 (h!67448 zl!343) lambda!269083))))

(declare-fun lt!2165473 () Context!8650)

(assert (=> b!5299959 (= lt!2165470 (derivationStepZipperUp!313 lt!2165473 (h!67446 s!2326)))))

(declare-fun lt!2165454 () (InoxSet Context!8650))

(declare-fun derivationStepZipperDown!389 (Regex!14941 Context!8650 C!30152) (InoxSet Context!8650))

(assert (=> b!5299959 (= lt!2165454 (derivationStepZipperDown!389 (h!67447 (exprs!4825 (h!67448 zl!343))) lt!2165473 (h!67446 s!2326)))))

(assert (=> b!5299959 (= lt!2165473 (Context!8651 (t!374328 (exprs!4825 (h!67448 zl!343)))))))

(declare-fun lt!2165458 () (InoxSet Context!8650))

(assert (=> b!5299959 (= lt!2165458 (derivationStepZipperUp!313 (Context!8651 (Cons!60999 (h!67447 (exprs!4825 (h!67448 zl!343))) (t!374328 (exprs!4825 (h!67448 zl!343))))) (h!67446 s!2326)))))

(declare-fun b!5299960 () Bool)

(declare-fun res!2247900 () Bool)

(assert (=> b!5299960 (=> res!2247900 e!3294199)))

(declare-fun generalisedUnion!870 (List!61123) Regex!14941)

(declare-fun unfocusZipperList!383 (List!61124) List!61123)

(assert (=> b!5299960 (= res!2247900 (not (= r!7292 (generalisedUnion!870 (unfocusZipperList!383 zl!343)))))))

(declare-fun e!3294181 () Bool)

(declare-fun b!5299961 () Bool)

(declare-fun e!3294193 () Bool)

(declare-fun tp!1478161 () Bool)

(declare-fun inv!80599 (Context!8650) Bool)

(assert (=> b!5299961 (= e!3294181 (and (inv!80599 (h!67448 zl!343)) e!3294193 tp!1478161))))

(declare-fun b!5299962 () Bool)

(declare-fun tp!1478160 () Bool)

(declare-fun tp!1478159 () Bool)

(assert (=> b!5299962 (= e!3294186 (and tp!1478160 tp!1478159))))

(declare-fun b!5299963 () Bool)

(declare-fun e!3294180 () Bool)

(declare-fun derivationStepZipper!1184 ((InoxSet Context!8650) C!30152) (InoxSet Context!8650))

(assert (=> b!5299963 (= e!3294180 (not (matchZipper!1185 (derivationStepZipper!1184 lt!2165443 (h!67446 s!2326)) (t!374327 s!2326))))))

(declare-fun b!5299964 () Bool)

(declare-fun tp!1478154 () Bool)

(assert (=> b!5299964 (= e!3294186 tp!1478154)))

(declare-fun b!5299965 () Bool)

(declare-fun e!3294192 () Bool)

(assert (=> b!5299965 (= e!3294200 e!3294192)))

(declare-fun res!2247908 () Bool)

(assert (=> b!5299965 (=> res!2247908 e!3294192)))

(declare-fun lt!2165468 () (InoxSet Context!8650))

(assert (=> b!5299965 (= res!2247908 (not (= lt!2165454 lt!2165468)))))

(declare-fun lt!2165451 () (InoxSet Context!8650))

(assert (=> b!5299965 (= lt!2165468 ((_ map or) lt!2165451 lt!2165460))))

(assert (=> b!5299965 (= lt!2165460 (derivationStepZipperDown!389 (regTwo!30394 (regOne!30394 r!7292)) lt!2165473 (h!67446 s!2326)))))

(assert (=> b!5299965 (= lt!2165451 (derivationStepZipperDown!389 (regOne!30394 (regOne!30394 r!7292)) lt!2165467 (h!67446 s!2326)))))

(assert (=> b!5299965 (= lt!2165467 (Context!8651 lt!2165466))))

(assert (=> b!5299965 (= lt!2165466 (Cons!60999 (regTwo!30394 (regOne!30394 r!7292)) (t!374328 (exprs!4825 (h!67448 zl!343)))))))

(declare-fun b!5299966 () Bool)

(declare-fun tp!1478155 () Bool)

(assert (=> b!5299966 (= e!3294193 tp!1478155)))

(declare-fun res!2247913 () Bool)

(assert (=> start!559162 (=> (not res!2247913) (not e!3294187))))

(assert (=> start!559162 (= res!2247913 (validRegex!6677 r!7292))))

(assert (=> start!559162 e!3294187))

(assert (=> start!559162 e!3294186))

(declare-fun condSetEmpty!34043 () Bool)

(assert (=> start!559162 (= condSetEmpty!34043 (= z!1189 ((as const (Array Context!8650 Bool)) false)))))

(declare-fun setRes!34043 () Bool)

(assert (=> start!559162 setRes!34043))

(assert (=> start!559162 e!3294181))

(declare-fun e!3294191 () Bool)

(assert (=> start!559162 e!3294191))

(declare-fun b!5299967 () Bool)

(declare-fun res!2247904 () Bool)

(assert (=> b!5299967 (=> res!2247904 e!3294199)))

(declare-fun isEmpty!32959 (List!61124) Bool)

(assert (=> b!5299967 (= res!2247904 (not (isEmpty!32959 (t!374329 zl!343))))))

(declare-fun b!5299968 () Bool)

(assert (=> b!5299968 (= e!3294187 (not e!3294199))))

(declare-fun res!2247901 () Bool)

(assert (=> b!5299968 (=> res!2247901 e!3294199)))

(assert (=> b!5299968 (= res!2247901 (not ((_ is Cons!61000) zl!343)))))

(assert (=> b!5299968 (= lt!2165441 (matchRSpec!2044 r!7292 s!2326))))

(assert (=> b!5299968 (= lt!2165441 (matchR!7126 r!7292 s!2326))))

(declare-fun lt!2165485 () Unit!153282)

(assert (=> b!5299968 (= lt!2165485 (mainMatchTheorem!2044 r!7292 s!2326))))

(declare-fun b!5299969 () Bool)

(declare-fun e!3294184 () Bool)

(assert (=> b!5299969 (= e!3294192 e!3294184)))

(declare-fun res!2247916 () Bool)

(assert (=> b!5299969 (=> res!2247916 e!3294184)))

(declare-fun e!3294197 () Bool)

(assert (=> b!5299969 (= res!2247916 e!3294197)))

(declare-fun res!2247903 () Bool)

(assert (=> b!5299969 (=> (not res!2247903) (not e!3294197))))

(declare-fun lt!2165478 () Bool)

(declare-fun lt!2165483 () Bool)

(assert (=> b!5299969 (= res!2247903 (not (= lt!2165478 lt!2165483)))))

(assert (=> b!5299969 (= lt!2165478 (matchZipper!1185 lt!2165454 (t!374327 s!2326)))))

(assert (=> b!5299969 (= (matchZipper!1185 lt!2165468 (t!374327 s!2326)) e!3294190)))

(declare-fun res!2247905 () Bool)

(assert (=> b!5299969 (=> res!2247905 e!3294190)))

(assert (=> b!5299969 (= res!2247905 lt!2165483)))

(assert (=> b!5299969 (= lt!2165483 (matchZipper!1185 lt!2165451 (t!374327 s!2326)))))

(declare-fun lt!2165457 () Unit!153282)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!178 ((InoxSet Context!8650) (InoxSet Context!8650) List!61122) Unit!153282)

(assert (=> b!5299969 (= lt!2165457 (lemmaZipperConcatMatchesSameAsBothZippers!178 lt!2165451 lt!2165460 (t!374327 s!2326)))))

(declare-fun b!5299970 () Bool)

(declare-fun tp_is_empty!39135 () Bool)

(assert (=> b!5299970 (= e!3294186 tp_is_empty!39135)))

(declare-fun e!3294183 () Bool)

(declare-fun tp!1478156 () Bool)

(declare-fun setElem!34043 () Context!8650)

(declare-fun setNonEmpty!34043 () Bool)

(assert (=> setNonEmpty!34043 (= setRes!34043 (and tp!1478156 (inv!80599 setElem!34043) e!3294183))))

(declare-fun setRest!34043 () (InoxSet Context!8650))

(assert (=> setNonEmpty!34043 (= z!1189 ((_ map or) (store ((as const (Array Context!8650 Bool)) false) setElem!34043 true) setRest!34043))))

(declare-fun setIsEmpty!34043 () Bool)

(assert (=> setIsEmpty!34043 setRes!34043))

(declare-fun b!5299971 () Bool)

(declare-fun Unit!153284 () Unit!153282)

(assert (=> b!5299971 (= e!3294198 Unit!153284)))

(declare-fun lt!2165444 () Unit!153282)

(assert (=> b!5299971 (= lt!2165444 (lemmaZipperConcatMatchesSameAsBothZippers!178 lt!2165454 lt!2165470 (t!374327 s!2326)))))

(declare-fun res!2247924 () Bool)

(assert (=> b!5299971 (= res!2247924 (matchZipper!1185 lt!2165454 (t!374327 s!2326)))))

(assert (=> b!5299971 (=> res!2247924 e!3294196)))

(assert (=> b!5299971 (= (matchZipper!1185 ((_ map or) lt!2165454 lt!2165470) (t!374327 s!2326)) e!3294196)))

(declare-fun b!5299972 () Bool)

(declare-fun tp!1478153 () Bool)

(assert (=> b!5299972 (= e!3294183 tp!1478153)))

(declare-fun b!5299973 () Bool)

(assert (=> b!5299973 (= e!3294188 e!3294195)))

(declare-fun res!2247907 () Bool)

(assert (=> b!5299973 (=> res!2247907 e!3294195)))

(declare-fun zipperDepthTotal!102 (List!61124) Int)

(assert (=> b!5299973 (= res!2247907 (>= (zipperDepthTotal!102 lt!2165486) (zipperDepthTotal!102 zl!343)))))

(assert (=> b!5299973 (= lt!2165486 (Cons!61000 lt!2165445 Nil!61000))))

(declare-fun b!5299974 () Bool)

(declare-fun Unit!153285 () Unit!153282)

(assert (=> b!5299974 (= e!3294198 Unit!153285)))

(declare-fun b!5299975 () Bool)

(assert (=> b!5299975 (= e!3294197 (not (matchZipper!1185 lt!2165460 (t!374327 s!2326))))))

(declare-fun b!5299976 () Bool)

(declare-fun res!2247919 () Bool)

(assert (=> b!5299976 (=> (not res!2247919) (not e!3294187))))

(declare-fun unfocusZipper!683 (List!61124) Regex!14941)

(assert (=> b!5299976 (= res!2247919 (= r!7292 (unfocusZipper!683 zl!343)))))

(declare-fun b!5299977 () Bool)

(declare-fun e!3294182 () Bool)

(assert (=> b!5299977 (= e!3294184 e!3294182)))

(declare-fun res!2247909 () Bool)

(assert (=> b!5299977 (=> res!2247909 e!3294182)))

(declare-fun lt!2165472 () (InoxSet Context!8650))

(declare-fun lt!2165475 () (InoxSet Context!8650))

(assert (=> b!5299977 (= res!2247909 (not (= lt!2165472 lt!2165475)))))

(assert (=> b!5299977 (= lt!2165475 ((_ map or) lt!2165451 lt!2165456))))

(assert (=> b!5299977 (= lt!2165456 (derivationStepZipperUp!313 lt!2165467 (h!67446 s!2326)))))

(assert (=> b!5299977 (= (flatMap!668 lt!2165452 lambda!269083) (derivationStepZipperUp!313 lt!2165445 (h!67446 s!2326)))))

(declare-fun lt!2165482 () Unit!153282)

(assert (=> b!5299977 (= lt!2165482 (lemmaFlatMapOnSingletonSet!200 lt!2165452 lt!2165445 lambda!269083))))

(declare-fun lt!2165442 () (InoxSet Context!8650))

(assert (=> b!5299977 (= lt!2165442 (derivationStepZipperUp!313 lt!2165445 (h!67446 s!2326)))))

(assert (=> b!5299977 (= lt!2165472 (derivationStepZipper!1184 lt!2165452 (h!67446 s!2326)))))

(assert (=> b!5299977 (= lt!2165443 (store ((as const (Array Context!8650 Bool)) false) lt!2165467 true))))

(assert (=> b!5299977 (= lt!2165452 (store ((as const (Array Context!8650 Bool)) false) lt!2165445 true))))

(assert (=> b!5299977 (= lt!2165445 (Context!8651 lt!2165481))))

(assert (=> b!5299977 (= lt!2165481 (Cons!60999 (regOne!30394 (regOne!30394 r!7292)) lt!2165466))))

(declare-fun b!5299978 () Bool)

(declare-fun res!2247915 () Bool)

(assert (=> b!5299978 (=> res!2247915 e!3294194)))

(declare-fun isEmpty!32960 (List!61123) Bool)

(assert (=> b!5299978 (= res!2247915 (isEmpty!32960 (t!374328 (exprs!4825 (h!67448 zl!343)))))))

(declare-fun b!5299979 () Bool)

(declare-fun tp!1478158 () Bool)

(assert (=> b!5299979 (= e!3294191 (and tp_is_empty!39135 tp!1478158))))

(declare-fun b!5299980 () Bool)

(declare-fun res!2247911 () Bool)

(assert (=> b!5299980 (=> res!2247911 e!3294189)))

(assert (=> b!5299980 (= res!2247911 (not (validRegex!6677 (regOne!30394 r!7292))))))

(declare-fun b!5299981 () Bool)

(declare-fun res!2247925 () Bool)

(assert (=> b!5299981 (=> res!2247925 e!3294200)))

(assert (=> b!5299981 (= res!2247925 (not (nullable!5110 (regOne!30394 (regOne!30394 r!7292)))))))

(declare-fun b!5299982 () Bool)

(declare-fun res!2247912 () Bool)

(assert (=> b!5299982 (=> res!2247912 e!3294199)))

(assert (=> b!5299982 (= res!2247912 (not ((_ is Cons!60999) (exprs!4825 (h!67448 zl!343)))))))

(declare-fun b!5299983 () Bool)

(assert (=> b!5299983 (= e!3294182 e!3294188)))

(declare-fun res!2247917 () Bool)

(assert (=> b!5299983 (=> res!2247917 e!3294188)))

(assert (=> b!5299983 (= res!2247917 e!3294180)))

(declare-fun res!2247921 () Bool)

(assert (=> b!5299983 (=> (not res!2247921) (not e!3294180))))

(assert (=> b!5299983 (= res!2247921 (not (= lt!2165478 (matchZipper!1185 lt!2165472 (t!374327 s!2326)))))))

(assert (=> b!5299983 (= (matchZipper!1185 lt!2165475 (t!374327 s!2326)) e!3294185)))

(declare-fun res!2247898 () Bool)

(assert (=> b!5299983 (=> res!2247898 e!3294185)))

(assert (=> b!5299983 (= res!2247898 lt!2165483)))

(declare-fun lt!2165455 () Unit!153282)

(assert (=> b!5299983 (= lt!2165455 (lemmaZipperConcatMatchesSameAsBothZippers!178 lt!2165451 lt!2165456 (t!374327 s!2326)))))

(assert (=> b!5299983 (= (flatMap!668 lt!2165443 lambda!269083) (derivationStepZipperUp!313 lt!2165467 (h!67446 s!2326)))))

(declare-fun lt!2165453 () Unit!153282)

(assert (=> b!5299983 (= lt!2165453 (lemmaFlatMapOnSingletonSet!200 lt!2165443 lt!2165467 lambda!269083))))

(assert (= (and start!559162 res!2247913) b!5299958))

(assert (= (and b!5299958 res!2247914) b!5299976))

(assert (= (and b!5299976 res!2247919) b!5299968))

(assert (= (and b!5299968 (not res!2247901)) b!5299967))

(assert (= (and b!5299967 (not res!2247904)) b!5299952))

(assert (= (and b!5299952 (not res!2247906)) b!5299982))

(assert (= (and b!5299982 (not res!2247912)) b!5299960))

(assert (= (and b!5299960 (not res!2247900)) b!5299949))

(assert (= (and b!5299949 (not res!2247899)) b!5299946))

(assert (= (and b!5299946 (not res!2247918)) b!5299978))

(assert (= (and b!5299978 (not res!2247915)) b!5299959))

(assert (= (and b!5299959 c!919990) b!5299971))

(assert (= (and b!5299959 (not c!919990)) b!5299974))

(assert (= (and b!5299971 (not res!2247924)) b!5299955))

(assert (= (and b!5299959 (not res!2247923)) b!5299981))

(assert (= (and b!5299981 (not res!2247925)) b!5299965))

(assert (= (and b!5299965 (not res!2247908)) b!5299969))

(assert (= (and b!5299969 (not res!2247905)) b!5299956))

(assert (= (and b!5299969 res!2247903) b!5299975))

(assert (= (and b!5299969 (not res!2247916)) b!5299977))

(assert (= (and b!5299977 (not res!2247909)) b!5299983))

(assert (= (and b!5299983 (not res!2247898)) b!5299950))

(assert (= (and b!5299983 res!2247921) b!5299963))

(assert (= (and b!5299983 (not res!2247917)) b!5299957))

(assert (= (and b!5299957 (not res!2247902)) b!5299954))

(assert (= (and b!5299954 (not res!2247922)) b!5299973))

(assert (= (and b!5299973 (not res!2247907)) b!5299951))

(assert (= (and b!5299951 (not res!2247920)) b!5299953))

(assert (= (and b!5299953 (not res!2247910)) b!5299980))

(assert (= (and b!5299980 (not res!2247911)) b!5299947))

(assert (= (and start!559162 ((_ is ElementMatch!14941) r!7292)) b!5299970))

(assert (= (and start!559162 ((_ is Concat!23786) r!7292)) b!5299948))

(assert (= (and start!559162 ((_ is Star!14941) r!7292)) b!5299964))

(assert (= (and start!559162 ((_ is Union!14941) r!7292)) b!5299962))

(assert (= (and start!559162 condSetEmpty!34043) setIsEmpty!34043))

(assert (= (and start!559162 (not condSetEmpty!34043)) setNonEmpty!34043))

(assert (= setNonEmpty!34043 b!5299972))

(assert (= b!5299961 b!5299966))

(assert (= (and start!559162 ((_ is Cons!61000) zl!343)) b!5299961))

(assert (= (and start!559162 ((_ is Cons!60998) s!2326)) b!5299979))

(declare-fun m!6337228 () Bool)

(assert (=> b!5299976 m!6337228))

(declare-fun m!6337230 () Bool)

(assert (=> b!5299960 m!6337230))

(assert (=> b!5299960 m!6337230))

(declare-fun m!6337232 () Bool)

(assert (=> b!5299960 m!6337232))

(declare-fun m!6337234 () Bool)

(assert (=> b!5299952 m!6337234))

(declare-fun m!6337236 () Bool)

(assert (=> b!5299951 m!6337236))

(declare-fun m!6337238 () Bool)

(assert (=> b!5299951 m!6337238))

(declare-fun m!6337240 () Bool)

(assert (=> b!5299980 m!6337240))

(declare-fun m!6337242 () Bool)

(assert (=> b!5299958 m!6337242))

(declare-fun m!6337244 () Bool)

(assert (=> setNonEmpty!34043 m!6337244))

(declare-fun m!6337246 () Bool)

(assert (=> b!5299968 m!6337246))

(declare-fun m!6337248 () Bool)

(assert (=> b!5299968 m!6337248))

(declare-fun m!6337250 () Bool)

(assert (=> b!5299968 m!6337250))

(declare-fun m!6337252 () Bool)

(assert (=> b!5299971 m!6337252))

(declare-fun m!6337254 () Bool)

(assert (=> b!5299971 m!6337254))

(declare-fun m!6337256 () Bool)

(assert (=> b!5299971 m!6337256))

(declare-fun m!6337258 () Bool)

(assert (=> b!5299983 m!6337258))

(declare-fun m!6337260 () Bool)

(assert (=> b!5299983 m!6337260))

(declare-fun m!6337262 () Bool)

(assert (=> b!5299983 m!6337262))

(declare-fun m!6337264 () Bool)

(assert (=> b!5299983 m!6337264))

(declare-fun m!6337266 () Bool)

(assert (=> b!5299983 m!6337266))

(declare-fun m!6337268 () Bool)

(assert (=> b!5299983 m!6337268))

(declare-fun m!6337270 () Bool)

(assert (=> b!5299967 m!6337270))

(declare-fun m!6337272 () Bool)

(assert (=> b!5299956 m!6337272))

(declare-fun m!6337274 () Bool)

(assert (=> b!5299955 m!6337274))

(declare-fun m!6337276 () Bool)

(assert (=> start!559162 m!6337276))

(declare-fun m!6337278 () Bool)

(assert (=> b!5299950 m!6337278))

(declare-fun m!6337280 () Bool)

(assert (=> b!5299946 m!6337280))

(declare-fun m!6337282 () Bool)

(assert (=> b!5299946 m!6337282))

(declare-fun m!6337284 () Bool)

(assert (=> b!5299946 m!6337284))

(declare-fun m!6337286 () Bool)

(assert (=> b!5299946 m!6337286))

(assert (=> b!5299946 m!6337286))

(declare-fun m!6337288 () Bool)

(assert (=> b!5299946 m!6337288))

(assert (=> b!5299946 m!6337280))

(declare-fun m!6337290 () Bool)

(assert (=> b!5299946 m!6337290))

(assert (=> b!5299975 m!6337272))

(declare-fun m!6337292 () Bool)

(assert (=> b!5299981 m!6337292))

(declare-fun m!6337294 () Bool)

(assert (=> b!5299973 m!6337294))

(declare-fun m!6337296 () Bool)

(assert (=> b!5299973 m!6337296))

(declare-fun m!6337298 () Bool)

(assert (=> b!5299953 m!6337298))

(declare-fun m!6337300 () Bool)

(assert (=> b!5299953 m!6337300))

(declare-fun m!6337302 () Bool)

(assert (=> b!5299953 m!6337302))

(declare-fun m!6337304 () Bool)

(assert (=> b!5299953 m!6337304))

(declare-fun m!6337306 () Bool)

(assert (=> b!5299953 m!6337306))

(declare-fun m!6337308 () Bool)

(assert (=> b!5299953 m!6337308))

(declare-fun m!6337310 () Bool)

(assert (=> b!5299953 m!6337310))

(declare-fun m!6337312 () Bool)

(assert (=> b!5299953 m!6337312))

(declare-fun m!6337314 () Bool)

(assert (=> b!5299953 m!6337314))

(declare-fun m!6337316 () Bool)

(assert (=> b!5299953 m!6337316))

(declare-fun m!6337318 () Bool)

(assert (=> b!5299953 m!6337318))

(declare-fun m!6337320 () Bool)

(assert (=> b!5299953 m!6337320))

(assert (=> b!5299953 m!6337304))

(declare-fun m!6337322 () Bool)

(assert (=> b!5299953 m!6337322))

(declare-fun m!6337324 () Bool)

(assert (=> b!5299953 m!6337324))

(declare-fun m!6337326 () Bool)

(assert (=> b!5299953 m!6337326))

(declare-fun m!6337328 () Bool)

(assert (=> b!5299953 m!6337328))

(declare-fun m!6337330 () Bool)

(assert (=> b!5299953 m!6337330))

(assert (=> b!5299953 m!6337302))

(declare-fun m!6337332 () Bool)

(assert (=> b!5299953 m!6337332))

(declare-fun m!6337334 () Bool)

(assert (=> b!5299953 m!6337334))

(declare-fun m!6337336 () Bool)

(assert (=> b!5299953 m!6337336))

(declare-fun m!6337338 () Bool)

(assert (=> b!5299953 m!6337338))

(assert (=> b!5299953 m!6337318))

(declare-fun m!6337340 () Bool)

(assert (=> b!5299953 m!6337340))

(assert (=> b!5299953 m!6337340))

(declare-fun m!6337342 () Bool)

(assert (=> b!5299953 m!6337342))

(declare-fun m!6337344 () Bool)

(assert (=> b!5299953 m!6337344))

(declare-fun m!6337346 () Bool)

(assert (=> b!5299953 m!6337346))

(declare-fun m!6337348 () Bool)

(assert (=> b!5299953 m!6337348))

(declare-fun m!6337350 () Bool)

(assert (=> b!5299965 m!6337350))

(declare-fun m!6337352 () Bool)

(assert (=> b!5299965 m!6337352))

(assert (=> b!5299969 m!6337254))

(declare-fun m!6337354 () Bool)

(assert (=> b!5299969 m!6337354))

(declare-fun m!6337356 () Bool)

(assert (=> b!5299969 m!6337356))

(declare-fun m!6337358 () Bool)

(assert (=> b!5299969 m!6337358))

(assert (=> b!5299977 m!6337258))

(declare-fun m!6337360 () Bool)

(assert (=> b!5299977 m!6337360))

(declare-fun m!6337362 () Bool)

(assert (=> b!5299977 m!6337362))

(declare-fun m!6337364 () Bool)

(assert (=> b!5299977 m!6337364))

(declare-fun m!6337366 () Bool)

(assert (=> b!5299977 m!6337366))

(declare-fun m!6337368 () Bool)

(assert (=> b!5299977 m!6337368))

(declare-fun m!6337370 () Bool)

(assert (=> b!5299977 m!6337370))

(declare-fun m!6337372 () Bool)

(assert (=> b!5299954 m!6337372))

(declare-fun m!6337374 () Bool)

(assert (=> b!5299954 m!6337374))

(declare-fun m!6337376 () Bool)

(assert (=> b!5299961 m!6337376))

(declare-fun m!6337378 () Bool)

(assert (=> b!5299959 m!6337378))

(declare-fun m!6337380 () Bool)

(assert (=> b!5299959 m!6337380))

(declare-fun m!6337382 () Bool)

(assert (=> b!5299959 m!6337382))

(declare-fun m!6337384 () Bool)

(assert (=> b!5299959 m!6337384))

(declare-fun m!6337386 () Bool)

(assert (=> b!5299959 m!6337386))

(declare-fun m!6337388 () Bool)

(assert (=> b!5299959 m!6337388))

(declare-fun m!6337390 () Bool)

(assert (=> b!5299959 m!6337390))

(declare-fun m!6337392 () Bool)

(assert (=> b!5299947 m!6337392))

(declare-fun m!6337394 () Bool)

(assert (=> b!5299978 m!6337394))

(declare-fun m!6337396 () Bool)

(assert (=> b!5299963 m!6337396))

(assert (=> b!5299963 m!6337396))

(declare-fun m!6337398 () Bool)

(assert (=> b!5299963 m!6337398))

(check-sat (not b!5299956) (not b!5299983) (not b!5299961) (not setNonEmpty!34043) (not b!5299947) (not start!559162) (not b!5299975) (not b!5299946) (not b!5299972) (not b!5299952) (not b!5299978) (not b!5299959) (not b!5299954) (not b!5299979) (not b!5299958) (not b!5299960) (not b!5299973) (not b!5299950) (not b!5299969) (not b!5299971) (not b!5299980) (not b!5299962) (not b!5299964) tp_is_empty!39135 (not b!5299955) (not b!5299951) (not b!5299948) (not b!5299981) (not b!5299953) (not b!5299967) (not b!5299966) (not b!5299965) (not b!5299977) (not b!5299963) (not b!5299968) (not b!5299976))
(check-sat)
(get-model)

(declare-fun b!5300110 () Bool)

(declare-fun e!3294276 () Regex!14941)

(assert (=> b!5300110 (= e!3294276 (Union!14941 (h!67447 (unfocusZipperList!383 zl!343)) (generalisedUnion!870 (t!374328 (unfocusZipperList!383 zl!343)))))))

(declare-fun b!5300111 () Bool)

(declare-fun e!3294275 () Bool)

(declare-fun lt!2165518 () Regex!14941)

(declare-fun head!11362 (List!61123) Regex!14941)

(assert (=> b!5300111 (= e!3294275 (= lt!2165518 (head!11362 (unfocusZipperList!383 zl!343))))))

(declare-fun b!5300112 () Bool)

(declare-fun e!3294279 () Bool)

(declare-fun e!3294278 () Bool)

(assert (=> b!5300112 (= e!3294279 e!3294278)))

(declare-fun c!920031 () Bool)

(assert (=> b!5300112 (= c!920031 (isEmpty!32960 (unfocusZipperList!383 zl!343)))))

(declare-fun b!5300113 () Bool)

(declare-fun isEmptyLang!864 (Regex!14941) Bool)

(assert (=> b!5300113 (= e!3294278 (isEmptyLang!864 lt!2165518))))

(declare-fun b!5300114 () Bool)

(declare-fun e!3294277 () Bool)

(assert (=> b!5300114 (= e!3294277 (isEmpty!32960 (t!374328 (unfocusZipperList!383 zl!343))))))

(declare-fun b!5300115 () Bool)

(declare-fun e!3294274 () Regex!14941)

(assert (=> b!5300115 (= e!3294274 (h!67447 (unfocusZipperList!383 zl!343)))))

(declare-fun b!5300117 () Bool)

(assert (=> b!5300117 (= e!3294276 EmptyLang!14941)))

(declare-fun b!5300118 () Bool)

(assert (=> b!5300118 (= e!3294274 e!3294276)))

(declare-fun c!920029 () Bool)

(assert (=> b!5300118 (= c!920029 ((_ is Cons!60999) (unfocusZipperList!383 zl!343)))))

(declare-fun b!5300119 () Bool)

(assert (=> b!5300119 (= e!3294278 e!3294275)))

(declare-fun c!920028 () Bool)

(declare-fun tail!10459 (List!61123) List!61123)

(assert (=> b!5300119 (= c!920028 (isEmpty!32960 (tail!10459 (unfocusZipperList!383 zl!343))))))

(declare-fun b!5300116 () Bool)

(declare-fun isUnion!296 (Regex!14941) Bool)

(assert (=> b!5300116 (= e!3294275 (isUnion!296 lt!2165518))))

(declare-fun d!1704294 () Bool)

(assert (=> d!1704294 e!3294279))

(declare-fun res!2247976 () Bool)

(assert (=> d!1704294 (=> (not res!2247976) (not e!3294279))))

(assert (=> d!1704294 (= res!2247976 (validRegex!6677 lt!2165518))))

(assert (=> d!1704294 (= lt!2165518 e!3294274)))

(declare-fun c!920030 () Bool)

(assert (=> d!1704294 (= c!920030 e!3294277)))

(declare-fun res!2247977 () Bool)

(assert (=> d!1704294 (=> (not res!2247977) (not e!3294277))))

(assert (=> d!1704294 (= res!2247977 ((_ is Cons!60999) (unfocusZipperList!383 zl!343)))))

(declare-fun lambda!269099 () Int)

(declare-fun forall!14357 (List!61123 Int) Bool)

(assert (=> d!1704294 (forall!14357 (unfocusZipperList!383 zl!343) lambda!269099)))

(assert (=> d!1704294 (= (generalisedUnion!870 (unfocusZipperList!383 zl!343)) lt!2165518)))

(assert (= (and d!1704294 res!2247977) b!5300114))

(assert (= (and d!1704294 c!920030) b!5300115))

(assert (= (and d!1704294 (not c!920030)) b!5300118))

(assert (= (and b!5300118 c!920029) b!5300110))

(assert (= (and b!5300118 (not c!920029)) b!5300117))

(assert (= (and d!1704294 res!2247976) b!5300112))

(assert (= (and b!5300112 c!920031) b!5300113))

(assert (= (and b!5300112 (not c!920031)) b!5300119))

(assert (= (and b!5300119 c!920028) b!5300111))

(assert (= (and b!5300119 (not c!920028)) b!5300116))

(assert (=> b!5300111 m!6337230))

(declare-fun m!6337500 () Bool)

(assert (=> b!5300111 m!6337500))

(declare-fun m!6337504 () Bool)

(assert (=> b!5300114 m!6337504))

(declare-fun m!6337508 () Bool)

(assert (=> d!1704294 m!6337508))

(assert (=> d!1704294 m!6337230))

(declare-fun m!6337512 () Bool)

(assert (=> d!1704294 m!6337512))

(declare-fun m!6337514 () Bool)

(assert (=> b!5300113 m!6337514))

(assert (=> b!5300112 m!6337230))

(declare-fun m!6337516 () Bool)

(assert (=> b!5300112 m!6337516))

(declare-fun m!6337518 () Bool)

(assert (=> b!5300116 m!6337518))

(declare-fun m!6337520 () Bool)

(assert (=> b!5300110 m!6337520))

(assert (=> b!5300119 m!6337230))

(declare-fun m!6337522 () Bool)

(assert (=> b!5300119 m!6337522))

(assert (=> b!5300119 m!6337522))

(declare-fun m!6337524 () Bool)

(assert (=> b!5300119 m!6337524))

(assert (=> b!5299960 d!1704294))

(declare-fun bs!1229216 () Bool)

(declare-fun d!1704304 () Bool)

(assert (= bs!1229216 (and d!1704304 d!1704294)))

(declare-fun lambda!269108 () Int)

(assert (=> bs!1229216 (= lambda!269108 lambda!269099)))

(declare-fun lt!2165526 () List!61123)

(assert (=> d!1704304 (forall!14357 lt!2165526 lambda!269108)))

(declare-fun e!3294286 () List!61123)

(assert (=> d!1704304 (= lt!2165526 e!3294286)))

(declare-fun c!920035 () Bool)

(assert (=> d!1704304 (= c!920035 ((_ is Cons!61000) zl!343))))

(assert (=> d!1704304 (= (unfocusZipperList!383 zl!343) lt!2165526)))

(declare-fun b!5300131 () Bool)

(assert (=> b!5300131 (= e!3294286 (Cons!60999 (generalisedConcat!610 (exprs!4825 (h!67448 zl!343))) (unfocusZipperList!383 (t!374329 zl!343))))))

(declare-fun b!5300132 () Bool)

(assert (=> b!5300132 (= e!3294286 Nil!60999)))

(assert (= (and d!1704304 c!920035) b!5300131))

(assert (= (and d!1704304 (not c!920035)) b!5300132))

(declare-fun m!6337536 () Bool)

(assert (=> d!1704304 m!6337536))

(assert (=> b!5300131 m!6337234))

(declare-fun m!6337538 () Bool)

(assert (=> b!5300131 m!6337538))

(assert (=> b!5299960 d!1704304))

(declare-fun b!5300230 () Bool)

(declare-fun res!2248016 () Bool)

(declare-fun e!3294350 () Bool)

(assert (=> b!5300230 (=> res!2248016 e!3294350)))

(assert (=> b!5300230 (= res!2248016 (not ((_ is Concat!23786) (regOne!30394 r!7292))))))

(declare-fun e!3294354 () Bool)

(assert (=> b!5300230 (= e!3294354 e!3294350)))

(declare-fun b!5300231 () Bool)

(declare-fun e!3294356 () Bool)

(declare-fun e!3294352 () Bool)

(assert (=> b!5300231 (= e!3294356 e!3294352)))

(declare-fun res!2248014 () Bool)

(assert (=> b!5300231 (= res!2248014 (not (nullable!5110 (reg!15270 (regOne!30394 r!7292)))))))

(assert (=> b!5300231 (=> (not res!2248014) (not e!3294352))))

(declare-fun bm!377823 () Bool)

(declare-fun call!377828 () Bool)

(declare-fun call!377829 () Bool)

(assert (=> bm!377823 (= call!377828 call!377829)))

(declare-fun c!920071 () Bool)

(declare-fun bm!377824 () Bool)

(declare-fun c!920070 () Bool)

(assert (=> bm!377824 (= call!377829 (validRegex!6677 (ite c!920071 (reg!15270 (regOne!30394 r!7292)) (ite c!920070 (regOne!30395 (regOne!30394 r!7292)) (regOne!30394 (regOne!30394 r!7292))))))))

(declare-fun b!5300233 () Bool)

(declare-fun e!3294353 () Bool)

(declare-fun call!377830 () Bool)

(assert (=> b!5300233 (= e!3294353 call!377830)))

(declare-fun b!5300234 () Bool)

(declare-fun res!2248015 () Bool)

(assert (=> b!5300234 (=> (not res!2248015) (not e!3294353))))

(assert (=> b!5300234 (= res!2248015 call!377828)))

(assert (=> b!5300234 (= e!3294354 e!3294353)))

(declare-fun b!5300235 () Bool)

(declare-fun e!3294355 () Bool)

(assert (=> b!5300235 (= e!3294350 e!3294355)))

(declare-fun res!2248012 () Bool)

(assert (=> b!5300235 (=> (not res!2248012) (not e!3294355))))

(assert (=> b!5300235 (= res!2248012 call!377828)))

(declare-fun bm!377825 () Bool)

(assert (=> bm!377825 (= call!377830 (validRegex!6677 (ite c!920070 (regTwo!30395 (regOne!30394 r!7292)) (regTwo!30394 (regOne!30394 r!7292)))))))

(declare-fun b!5300232 () Bool)

(assert (=> b!5300232 (= e!3294355 call!377830)))

(declare-fun d!1704312 () Bool)

(declare-fun res!2248013 () Bool)

(declare-fun e!3294351 () Bool)

(assert (=> d!1704312 (=> res!2248013 e!3294351)))

(assert (=> d!1704312 (= res!2248013 ((_ is ElementMatch!14941) (regOne!30394 r!7292)))))

(assert (=> d!1704312 (= (validRegex!6677 (regOne!30394 r!7292)) e!3294351)))

(declare-fun b!5300236 () Bool)

(assert (=> b!5300236 (= e!3294352 call!377829)))

(declare-fun b!5300237 () Bool)

(assert (=> b!5300237 (= e!3294351 e!3294356)))

(assert (=> b!5300237 (= c!920071 ((_ is Star!14941) (regOne!30394 r!7292)))))

(declare-fun b!5300238 () Bool)

(assert (=> b!5300238 (= e!3294356 e!3294354)))

(assert (=> b!5300238 (= c!920070 ((_ is Union!14941) (regOne!30394 r!7292)))))

(assert (= (and d!1704312 (not res!2248013)) b!5300237))

(assert (= (and b!5300237 c!920071) b!5300231))

(assert (= (and b!5300237 (not c!920071)) b!5300238))

(assert (= (and b!5300231 res!2248014) b!5300236))

(assert (= (and b!5300238 c!920070) b!5300234))

(assert (= (and b!5300238 (not c!920070)) b!5300230))

(assert (= (and b!5300234 res!2248015) b!5300233))

(assert (= (and b!5300230 (not res!2248016)) b!5300235))

(assert (= (and b!5300235 res!2248012) b!5300232))

(assert (= (or b!5300233 b!5300232) bm!377825))

(assert (= (or b!5300234 b!5300235) bm!377823))

(assert (= (or b!5300236 bm!377823) bm!377824))

(declare-fun m!6337612 () Bool)

(assert (=> b!5300231 m!6337612))

(declare-fun m!6337614 () Bool)

(assert (=> bm!377824 m!6337614))

(declare-fun m!6337616 () Bool)

(assert (=> bm!377825 m!6337616))

(assert (=> b!5299980 d!1704312))

(declare-fun bs!1229227 () Bool)

(declare-fun d!1704324 () Bool)

(assert (= bs!1229227 (and d!1704324 d!1704294)))

(declare-fun lambda!269118 () Int)

(assert (=> bs!1229227 (= lambda!269118 lambda!269099)))

(declare-fun bs!1229228 () Bool)

(assert (= bs!1229228 (and d!1704324 d!1704304)))

(assert (=> bs!1229228 (= lambda!269118 lambda!269108)))

(assert (=> d!1704324 (= (inv!80599 (h!67448 zl!343)) (forall!14357 (exprs!4825 (h!67448 zl!343)) lambda!269118))))

(declare-fun bs!1229229 () Bool)

(assert (= bs!1229229 d!1704324))

(declare-fun m!6337618 () Bool)

(assert (=> bs!1229229 m!6337618))

(assert (=> b!5299961 d!1704324))

(declare-fun d!1704326 () Bool)

(declare-fun nullableFct!1473 (Regex!14941) Bool)

(assert (=> d!1704326 (= (nullable!5110 (regOne!30394 (regOne!30394 r!7292))) (nullableFct!1473 (regOne!30394 (regOne!30394 r!7292))))))

(declare-fun bs!1229230 () Bool)

(assert (= bs!1229230 d!1704326))

(declare-fun m!6337620 () Bool)

(assert (=> bs!1229230 m!6337620))

(assert (=> b!5299981 d!1704326))

(declare-fun d!1704328 () Bool)

(declare-fun c!920078 () Bool)

(declare-fun isEmpty!32963 (List!61122) Bool)

(assert (=> d!1704328 (= c!920078 (isEmpty!32963 (t!374327 s!2326)))))

(declare-fun e!3294370 () Bool)

(assert (=> d!1704328 (= (matchZipper!1185 (derivationStepZipper!1184 lt!2165443 (h!67446 s!2326)) (t!374327 s!2326)) e!3294370)))

(declare-fun b!5300264 () Bool)

(declare-fun nullableZipper!1322 ((InoxSet Context!8650)) Bool)

(assert (=> b!5300264 (= e!3294370 (nullableZipper!1322 (derivationStepZipper!1184 lt!2165443 (h!67446 s!2326))))))

(declare-fun b!5300265 () Bool)

(declare-fun head!11363 (List!61122) C!30152)

(declare-fun tail!10460 (List!61122) List!61122)

(assert (=> b!5300265 (= e!3294370 (matchZipper!1185 (derivationStepZipper!1184 (derivationStepZipper!1184 lt!2165443 (h!67446 s!2326)) (head!11363 (t!374327 s!2326))) (tail!10460 (t!374327 s!2326))))))

(assert (= (and d!1704328 c!920078) b!5300264))

(assert (= (and d!1704328 (not c!920078)) b!5300265))

(declare-fun m!6337630 () Bool)

(assert (=> d!1704328 m!6337630))

(assert (=> b!5300264 m!6337396))

(declare-fun m!6337632 () Bool)

(assert (=> b!5300264 m!6337632))

(declare-fun m!6337634 () Bool)

(assert (=> b!5300265 m!6337634))

(assert (=> b!5300265 m!6337396))

(assert (=> b!5300265 m!6337634))

(declare-fun m!6337636 () Bool)

(assert (=> b!5300265 m!6337636))

(declare-fun m!6337638 () Bool)

(assert (=> b!5300265 m!6337638))

(assert (=> b!5300265 m!6337636))

(assert (=> b!5300265 m!6337638))

(declare-fun m!6337640 () Bool)

(assert (=> b!5300265 m!6337640))

(assert (=> b!5299963 d!1704328))

(declare-fun bs!1229240 () Bool)

(declare-fun d!1704332 () Bool)

(assert (= bs!1229240 (and d!1704332 b!5299959)))

(declare-fun lambda!269123 () Int)

(assert (=> bs!1229240 (= lambda!269123 lambda!269083)))

(assert (=> d!1704332 true))

(assert (=> d!1704332 (= (derivationStepZipper!1184 lt!2165443 (h!67446 s!2326)) (flatMap!668 lt!2165443 lambda!269123))))

(declare-fun bs!1229241 () Bool)

(assert (= bs!1229241 d!1704332))

(declare-fun m!6337642 () Bool)

(assert (=> bs!1229241 m!6337642))

(assert (=> b!5299963 d!1704332))

(declare-fun b!5300334 () Bool)

(declare-fun e!3294407 () (InoxSet Context!8650))

(assert (=> b!5300334 (= e!3294407 ((as const (Array Context!8650 Bool)) false))))

(declare-fun b!5300335 () Bool)

(declare-fun call!377843 () (InoxSet Context!8650))

(assert (=> b!5300335 (= e!3294407 call!377843)))

(declare-fun bm!377838 () Bool)

(assert (=> bm!377838 (= call!377843 (derivationStepZipperDown!389 (h!67447 (exprs!4825 lt!2165467)) (Context!8651 (t!374328 (exprs!4825 lt!2165467))) (h!67446 s!2326)))))

(declare-fun d!1704334 () Bool)

(declare-fun c!920098 () Bool)

(declare-fun e!3294406 () Bool)

(assert (=> d!1704334 (= c!920098 e!3294406)))

(declare-fun res!2248064 () Bool)

(assert (=> d!1704334 (=> (not res!2248064) (not e!3294406))))

(assert (=> d!1704334 (= res!2248064 ((_ is Cons!60999) (exprs!4825 lt!2165467)))))

(declare-fun e!3294405 () (InoxSet Context!8650))

(assert (=> d!1704334 (= (derivationStepZipperUp!313 lt!2165467 (h!67446 s!2326)) e!3294405)))

(declare-fun b!5300336 () Bool)

(assert (=> b!5300336 (= e!3294406 (nullable!5110 (h!67447 (exprs!4825 lt!2165467))))))

(declare-fun b!5300337 () Bool)

(assert (=> b!5300337 (= e!3294405 e!3294407)))

(declare-fun c!920097 () Bool)

(assert (=> b!5300337 (= c!920097 ((_ is Cons!60999) (exprs!4825 lt!2165467)))))

(declare-fun b!5300338 () Bool)

(assert (=> b!5300338 (= e!3294405 ((_ map or) call!377843 (derivationStepZipperUp!313 (Context!8651 (t!374328 (exprs!4825 lt!2165467))) (h!67446 s!2326))))))

(assert (= (and d!1704334 res!2248064) b!5300336))

(assert (= (and d!1704334 c!920098) b!5300338))

(assert (= (and d!1704334 (not c!920098)) b!5300337))

(assert (= (and b!5300337 c!920097) b!5300335))

(assert (= (and b!5300337 (not c!920097)) b!5300334))

(assert (= (or b!5300338 b!5300335) bm!377838))

(declare-fun m!6337668 () Bool)

(assert (=> bm!377838 m!6337668))

(declare-fun m!6337670 () Bool)

(assert (=> b!5300336 m!6337670))

(declare-fun m!6337672 () Bool)

(assert (=> b!5300338 m!6337672))

(assert (=> b!5299983 d!1704334))

(declare-fun d!1704342 () Bool)

(declare-fun c!920099 () Bool)

(assert (=> d!1704342 (= c!920099 (isEmpty!32963 (t!374327 s!2326)))))

(declare-fun e!3294408 () Bool)

(assert (=> d!1704342 (= (matchZipper!1185 lt!2165475 (t!374327 s!2326)) e!3294408)))

(declare-fun b!5300339 () Bool)

(assert (=> b!5300339 (= e!3294408 (nullableZipper!1322 lt!2165475))))

(declare-fun b!5300340 () Bool)

(assert (=> b!5300340 (= e!3294408 (matchZipper!1185 (derivationStepZipper!1184 lt!2165475 (head!11363 (t!374327 s!2326))) (tail!10460 (t!374327 s!2326))))))

(assert (= (and d!1704342 c!920099) b!5300339))

(assert (= (and d!1704342 (not c!920099)) b!5300340))

(assert (=> d!1704342 m!6337630))

(declare-fun m!6337680 () Bool)

(assert (=> b!5300339 m!6337680))

(assert (=> b!5300340 m!6337634))

(assert (=> b!5300340 m!6337634))

(declare-fun m!6337682 () Bool)

(assert (=> b!5300340 m!6337682))

(assert (=> b!5300340 m!6337638))

(assert (=> b!5300340 m!6337682))

(assert (=> b!5300340 m!6337638))

(declare-fun m!6337684 () Bool)

(assert (=> b!5300340 m!6337684))

(assert (=> b!5299983 d!1704342))

(declare-fun d!1704346 () Bool)

(declare-fun choose!39614 ((InoxSet Context!8650) Int) (InoxSet Context!8650))

(assert (=> d!1704346 (= (flatMap!668 lt!2165443 lambda!269083) (choose!39614 lt!2165443 lambda!269083))))

(declare-fun bs!1229250 () Bool)

(assert (= bs!1229250 d!1704346))

(declare-fun m!6337698 () Bool)

(assert (=> bs!1229250 m!6337698))

(assert (=> b!5299983 d!1704346))

(declare-fun d!1704348 () Bool)

(declare-fun c!920102 () Bool)

(assert (=> d!1704348 (= c!920102 (isEmpty!32963 (t!374327 s!2326)))))

(declare-fun e!3294414 () Bool)

(assert (=> d!1704348 (= (matchZipper!1185 lt!2165472 (t!374327 s!2326)) e!3294414)))

(declare-fun b!5300350 () Bool)

(assert (=> b!5300350 (= e!3294414 (nullableZipper!1322 lt!2165472))))

(declare-fun b!5300351 () Bool)

(assert (=> b!5300351 (= e!3294414 (matchZipper!1185 (derivationStepZipper!1184 lt!2165472 (head!11363 (t!374327 s!2326))) (tail!10460 (t!374327 s!2326))))))

(assert (= (and d!1704348 c!920102) b!5300350))

(assert (= (and d!1704348 (not c!920102)) b!5300351))

(assert (=> d!1704348 m!6337630))

(declare-fun m!6337706 () Bool)

(assert (=> b!5300350 m!6337706))

(assert (=> b!5300351 m!6337634))

(assert (=> b!5300351 m!6337634))

(declare-fun m!6337708 () Bool)

(assert (=> b!5300351 m!6337708))

(assert (=> b!5300351 m!6337638))

(assert (=> b!5300351 m!6337708))

(assert (=> b!5300351 m!6337638))

(declare-fun m!6337710 () Bool)

(assert (=> b!5300351 m!6337710))

(assert (=> b!5299983 d!1704348))

(declare-fun e!3294417 () Bool)

(declare-fun d!1704352 () Bool)

(assert (=> d!1704352 (= (matchZipper!1185 ((_ map or) lt!2165451 lt!2165456) (t!374327 s!2326)) e!3294417)))

(declare-fun res!2248072 () Bool)

(assert (=> d!1704352 (=> res!2248072 e!3294417)))

(assert (=> d!1704352 (= res!2248072 (matchZipper!1185 lt!2165451 (t!374327 s!2326)))))

(declare-fun lt!2165548 () Unit!153282)

(declare-fun choose!39615 ((InoxSet Context!8650) (InoxSet Context!8650) List!61122) Unit!153282)

(assert (=> d!1704352 (= lt!2165548 (choose!39615 lt!2165451 lt!2165456 (t!374327 s!2326)))))

(assert (=> d!1704352 (= (lemmaZipperConcatMatchesSameAsBothZippers!178 lt!2165451 lt!2165456 (t!374327 s!2326)) lt!2165548)))

(declare-fun b!5300354 () Bool)

(assert (=> b!5300354 (= e!3294417 (matchZipper!1185 lt!2165456 (t!374327 s!2326)))))

(assert (= (and d!1704352 (not res!2248072)) b!5300354))

(declare-fun m!6337714 () Bool)

(assert (=> d!1704352 m!6337714))

(assert (=> d!1704352 m!6337356))

(declare-fun m!6337718 () Bool)

(assert (=> d!1704352 m!6337718))

(assert (=> b!5300354 m!6337278))

(assert (=> b!5299983 d!1704352))

(declare-fun d!1704358 () Bool)

(declare-fun dynLambda!24118 (Int Context!8650) (InoxSet Context!8650))

(assert (=> d!1704358 (= (flatMap!668 lt!2165443 lambda!269083) (dynLambda!24118 lambda!269083 lt!2165467))))

(declare-fun lt!2165554 () Unit!153282)

(declare-fun choose!39616 ((InoxSet Context!8650) Context!8650 Int) Unit!153282)

(assert (=> d!1704358 (= lt!2165554 (choose!39616 lt!2165443 lt!2165467 lambda!269083))))

(assert (=> d!1704358 (= lt!2165443 (store ((as const (Array Context!8650 Bool)) false) lt!2165467 true))))

(assert (=> d!1704358 (= (lemmaFlatMapOnSingletonSet!200 lt!2165443 lt!2165467 lambda!269083) lt!2165554)))

(declare-fun b_lambda!204237 () Bool)

(assert (=> (not b_lambda!204237) (not d!1704358)))

(declare-fun bs!1229268 () Bool)

(assert (= bs!1229268 d!1704358))

(assert (=> bs!1229268 m!6337264))

(declare-fun m!6337752 () Bool)

(assert (=> bs!1229268 m!6337752))

(declare-fun m!6337756 () Bool)

(assert (=> bs!1229268 m!6337756))

(assert (=> bs!1229268 m!6337362))

(assert (=> b!5299983 d!1704358))

(declare-fun bm!377853 () Bool)

(declare-fun call!377862 () (InoxSet Context!8650))

(declare-fun call!377863 () (InoxSet Context!8650))

(assert (=> bm!377853 (= call!377862 call!377863)))

(declare-fun b!5300406 () Bool)

(declare-fun e!3294452 () Bool)

(assert (=> b!5300406 (= e!3294452 (nullable!5110 (regOne!30394 (regTwo!30394 (regOne!30394 r!7292)))))))

(declare-fun b!5300407 () Bool)

(declare-fun e!3294451 () (InoxSet Context!8650))

(assert (=> b!5300407 (= e!3294451 call!377862)))

(declare-fun bm!377854 () Bool)

(declare-fun call!377860 () List!61123)

(declare-fun call!377861 () List!61123)

(assert (=> bm!377854 (= call!377860 call!377861)))

(declare-fun b!5300408 () Bool)

(declare-fun e!3294447 () (InoxSet Context!8650))

(assert (=> b!5300408 (= e!3294447 call!377862)))

(declare-fun bm!377855 () Bool)

(declare-fun call!377859 () (InoxSet Context!8650))

(assert (=> bm!377855 (= call!377863 call!377859)))

(declare-fun b!5300409 () Bool)

(assert (=> b!5300409 (= e!3294447 ((as const (Array Context!8650 Bool)) false))))

(declare-fun call!377858 () (InoxSet Context!8650))

(declare-fun bm!377856 () Bool)

(declare-fun c!920129 () Bool)

(assert (=> bm!377856 (= call!377858 (derivationStepZipperDown!389 (ite c!920129 (regTwo!30395 (regTwo!30394 (regOne!30394 r!7292))) (regOne!30394 (regTwo!30394 (regOne!30394 r!7292)))) (ite c!920129 lt!2165473 (Context!8651 call!377861)) (h!67446 s!2326)))))

(declare-fun c!920125 () Bool)

(declare-fun c!920128 () Bool)

(declare-fun bm!377857 () Bool)

(assert (=> bm!377857 (= call!377859 (derivationStepZipperDown!389 (ite c!920129 (regOne!30395 (regTwo!30394 (regOne!30394 r!7292))) (ite c!920125 (regTwo!30394 (regTwo!30394 (regOne!30394 r!7292))) (ite c!920128 (regOne!30394 (regTwo!30394 (regOne!30394 r!7292))) (reg!15270 (regTwo!30394 (regOne!30394 r!7292)))))) (ite (or c!920129 c!920125) lt!2165473 (Context!8651 call!377860)) (h!67446 s!2326)))))

(declare-fun b!5300410 () Bool)

(declare-fun e!3294448 () (InoxSet Context!8650))

(declare-fun e!3294450 () (InoxSet Context!8650))

(assert (=> b!5300410 (= e!3294448 e!3294450)))

(assert (=> b!5300410 (= c!920129 ((_ is Union!14941) (regTwo!30394 (regOne!30394 r!7292))))))

(declare-fun b!5300411 () Bool)

(assert (=> b!5300411 (= c!920125 e!3294452)))

(declare-fun res!2248080 () Bool)

(assert (=> b!5300411 (=> (not res!2248080) (not e!3294452))))

(assert (=> b!5300411 (= res!2248080 ((_ is Concat!23786) (regTwo!30394 (regOne!30394 r!7292))))))

(declare-fun e!3294449 () (InoxSet Context!8650))

(assert (=> b!5300411 (= e!3294450 e!3294449)))

(declare-fun b!5300412 () Bool)

(assert (=> b!5300412 (= e!3294450 ((_ map or) call!377859 call!377858))))

(declare-fun b!5300413 () Bool)

(assert (=> b!5300413 (= e!3294449 e!3294451)))

(assert (=> b!5300413 (= c!920128 ((_ is Concat!23786) (regTwo!30394 (regOne!30394 r!7292))))))

(declare-fun b!5300414 () Bool)

(assert (=> b!5300414 (= e!3294448 (store ((as const (Array Context!8650 Bool)) false) lt!2165473 true))))

(declare-fun d!1704372 () Bool)

(declare-fun c!920127 () Bool)

(assert (=> d!1704372 (= c!920127 (and ((_ is ElementMatch!14941) (regTwo!30394 (regOne!30394 r!7292))) (= (c!919991 (regTwo!30394 (regOne!30394 r!7292))) (h!67446 s!2326))))))

(assert (=> d!1704372 (= (derivationStepZipperDown!389 (regTwo!30394 (regOne!30394 r!7292)) lt!2165473 (h!67446 s!2326)) e!3294448)))

(declare-fun bm!377858 () Bool)

(declare-fun $colon$colon!1371 (List!61123 Regex!14941) List!61123)

(assert (=> bm!377858 (= call!377861 ($colon$colon!1371 (exprs!4825 lt!2165473) (ite (or c!920125 c!920128) (regTwo!30394 (regTwo!30394 (regOne!30394 r!7292))) (regTwo!30394 (regOne!30394 r!7292)))))))

(declare-fun b!5300415 () Bool)

(assert (=> b!5300415 (= e!3294449 ((_ map or) call!377858 call!377863))))

(declare-fun b!5300416 () Bool)

(declare-fun c!920126 () Bool)

(assert (=> b!5300416 (= c!920126 ((_ is Star!14941) (regTwo!30394 (regOne!30394 r!7292))))))

(assert (=> b!5300416 (= e!3294451 e!3294447)))

(assert (= (and d!1704372 c!920127) b!5300414))

(assert (= (and d!1704372 (not c!920127)) b!5300410))

(assert (= (and b!5300410 c!920129) b!5300412))

(assert (= (and b!5300410 (not c!920129)) b!5300411))

(assert (= (and b!5300411 res!2248080) b!5300406))

(assert (= (and b!5300411 c!920125) b!5300415))

(assert (= (and b!5300411 (not c!920125)) b!5300413))

(assert (= (and b!5300413 c!920128) b!5300407))

(assert (= (and b!5300413 (not c!920128)) b!5300416))

(assert (= (and b!5300416 c!920126) b!5300408))

(assert (= (and b!5300416 (not c!920126)) b!5300409))

(assert (= (or b!5300407 b!5300408) bm!377854))

(assert (= (or b!5300407 b!5300408) bm!377853))

(assert (= (or b!5300415 bm!377854) bm!377858))

(assert (= (or b!5300415 bm!377853) bm!377855))

(assert (= (or b!5300412 b!5300415) bm!377856))

(assert (= (or b!5300412 bm!377855) bm!377857))

(declare-fun m!6337800 () Bool)

(assert (=> bm!377858 m!6337800))

(declare-fun m!6337802 () Bool)

(assert (=> b!5300414 m!6337802))

(declare-fun m!6337804 () Bool)

(assert (=> bm!377857 m!6337804))

(declare-fun m!6337806 () Bool)

(assert (=> b!5300406 m!6337806))

(declare-fun m!6337808 () Bool)

(assert (=> bm!377856 m!6337808))

(assert (=> b!5299965 d!1704372))

(declare-fun bm!377859 () Bool)

(declare-fun call!377868 () (InoxSet Context!8650))

(declare-fun call!377869 () (InoxSet Context!8650))

(assert (=> bm!377859 (= call!377868 call!377869)))

(declare-fun b!5300421 () Bool)

(declare-fun e!3294460 () Bool)

(assert (=> b!5300421 (= e!3294460 (nullable!5110 (regOne!30394 (regOne!30394 (regOne!30394 r!7292)))))))

(declare-fun b!5300422 () Bool)

(declare-fun e!3294459 () (InoxSet Context!8650))

(assert (=> b!5300422 (= e!3294459 call!377868)))

(declare-fun bm!377860 () Bool)

(declare-fun call!377866 () List!61123)

(declare-fun call!377867 () List!61123)

(assert (=> bm!377860 (= call!377866 call!377867)))

(declare-fun b!5300423 () Bool)

(declare-fun e!3294455 () (InoxSet Context!8650))

(assert (=> b!5300423 (= e!3294455 call!377868)))

(declare-fun bm!377861 () Bool)

(declare-fun call!377865 () (InoxSet Context!8650))

(assert (=> bm!377861 (= call!377869 call!377865)))

(declare-fun b!5300424 () Bool)

(assert (=> b!5300424 (= e!3294455 ((as const (Array Context!8650 Bool)) false))))

(declare-fun c!920140 () Bool)

(declare-fun call!377864 () (InoxSet Context!8650))

(declare-fun bm!377862 () Bool)

(assert (=> bm!377862 (= call!377864 (derivationStepZipperDown!389 (ite c!920140 (regTwo!30395 (regOne!30394 (regOne!30394 r!7292))) (regOne!30394 (regOne!30394 (regOne!30394 r!7292)))) (ite c!920140 lt!2165467 (Context!8651 call!377867)) (h!67446 s!2326)))))

(declare-fun c!920139 () Bool)

(declare-fun c!920136 () Bool)

(declare-fun bm!377863 () Bool)

(assert (=> bm!377863 (= call!377865 (derivationStepZipperDown!389 (ite c!920140 (regOne!30395 (regOne!30394 (regOne!30394 r!7292))) (ite c!920136 (regTwo!30394 (regOne!30394 (regOne!30394 r!7292))) (ite c!920139 (regOne!30394 (regOne!30394 (regOne!30394 r!7292))) (reg!15270 (regOne!30394 (regOne!30394 r!7292)))))) (ite (or c!920140 c!920136) lt!2165467 (Context!8651 call!377866)) (h!67446 s!2326)))))

(declare-fun b!5300425 () Bool)

(declare-fun e!3294456 () (InoxSet Context!8650))

(declare-fun e!3294458 () (InoxSet Context!8650))

(assert (=> b!5300425 (= e!3294456 e!3294458)))

(assert (=> b!5300425 (= c!920140 ((_ is Union!14941) (regOne!30394 (regOne!30394 r!7292))))))

(declare-fun b!5300426 () Bool)

(assert (=> b!5300426 (= c!920136 e!3294460)))

(declare-fun res!2248081 () Bool)

(assert (=> b!5300426 (=> (not res!2248081) (not e!3294460))))

(assert (=> b!5300426 (= res!2248081 ((_ is Concat!23786) (regOne!30394 (regOne!30394 r!7292))))))

(declare-fun e!3294457 () (InoxSet Context!8650))

(assert (=> b!5300426 (= e!3294458 e!3294457)))

(declare-fun b!5300427 () Bool)

(assert (=> b!5300427 (= e!3294458 ((_ map or) call!377865 call!377864))))

(declare-fun b!5300428 () Bool)

(assert (=> b!5300428 (= e!3294457 e!3294459)))

(assert (=> b!5300428 (= c!920139 ((_ is Concat!23786) (regOne!30394 (regOne!30394 r!7292))))))

(declare-fun b!5300429 () Bool)

(assert (=> b!5300429 (= e!3294456 (store ((as const (Array Context!8650 Bool)) false) lt!2165467 true))))

(declare-fun d!1704392 () Bool)

(declare-fun c!920138 () Bool)

(assert (=> d!1704392 (= c!920138 (and ((_ is ElementMatch!14941) (regOne!30394 (regOne!30394 r!7292))) (= (c!919991 (regOne!30394 (regOne!30394 r!7292))) (h!67446 s!2326))))))

(assert (=> d!1704392 (= (derivationStepZipperDown!389 (regOne!30394 (regOne!30394 r!7292)) lt!2165467 (h!67446 s!2326)) e!3294456)))

(declare-fun bm!377864 () Bool)

(assert (=> bm!377864 (= call!377867 ($colon$colon!1371 (exprs!4825 lt!2165467) (ite (or c!920136 c!920139) (regTwo!30394 (regOne!30394 (regOne!30394 r!7292))) (regOne!30394 (regOne!30394 r!7292)))))))

(declare-fun b!5300430 () Bool)

(assert (=> b!5300430 (= e!3294457 ((_ map or) call!377864 call!377869))))

(declare-fun b!5300431 () Bool)

(declare-fun c!920137 () Bool)

(assert (=> b!5300431 (= c!920137 ((_ is Star!14941) (regOne!30394 (regOne!30394 r!7292))))))

(assert (=> b!5300431 (= e!3294459 e!3294455)))

(assert (= (and d!1704392 c!920138) b!5300429))

(assert (= (and d!1704392 (not c!920138)) b!5300425))

(assert (= (and b!5300425 c!920140) b!5300427))

(assert (= (and b!5300425 (not c!920140)) b!5300426))

(assert (= (and b!5300426 res!2248081) b!5300421))

(assert (= (and b!5300426 c!920136) b!5300430))

(assert (= (and b!5300426 (not c!920136)) b!5300428))

(assert (= (and b!5300428 c!920139) b!5300422))

(assert (= (and b!5300428 (not c!920139)) b!5300431))

(assert (= (and b!5300431 c!920137) b!5300423))

(assert (= (and b!5300431 (not c!920137)) b!5300424))

(assert (= (or b!5300422 b!5300423) bm!377860))

(assert (= (or b!5300422 b!5300423) bm!377859))

(assert (= (or b!5300430 bm!377860) bm!377864))

(assert (= (or b!5300430 bm!377859) bm!377861))

(assert (= (or b!5300427 b!5300430) bm!377862))

(assert (= (or b!5300427 bm!377861) bm!377863))

(declare-fun m!6337810 () Bool)

(assert (=> bm!377864 m!6337810))

(assert (=> b!5300429 m!6337362))

(declare-fun m!6337812 () Bool)

(assert (=> bm!377863 m!6337812))

(declare-fun m!6337814 () Bool)

(assert (=> b!5300421 m!6337814))

(declare-fun m!6337816 () Bool)

(assert (=> bm!377862 m!6337816))

(assert (=> b!5299965 d!1704392))

(declare-fun d!1704394 () Bool)

(assert (=> d!1704394 (= (isEmpty!32959 (t!374329 zl!343)) ((_ is Nil!61000) (t!374329 zl!343)))))

(assert (=> b!5299967 d!1704394))

(declare-fun b!5300509 () Bool)

(declare-fun e!3294507 () Bool)

(assert (=> b!5300509 (= e!3294507 (matchR!7126 (regTwo!30394 r!7292) s!2326))))

(declare-fun b!5300510 () Bool)

(declare-fun lt!2165588 () Unit!153282)

(declare-fun lt!2165586 () Unit!153282)

(assert (=> b!5300510 (= lt!2165588 lt!2165586)))

(declare-fun ++!13302 (List!61122 List!61122) List!61122)

(assert (=> b!5300510 (= (++!13302 (++!13302 Nil!60998 (Cons!60998 (h!67446 s!2326) Nil!60998)) (t!374327 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1717 (List!61122 C!30152 List!61122 List!61122) Unit!153282)

(assert (=> b!5300510 (= lt!2165586 (lemmaMoveElementToOtherListKeepsConcatEq!1717 Nil!60998 (h!67446 s!2326) (t!374327 s!2326) s!2326))))

(declare-fun e!3294508 () Option!15052)

(assert (=> b!5300510 (= e!3294508 (findConcatSeparation!1466 (regOne!30394 r!7292) (regTwo!30394 r!7292) (++!13302 Nil!60998 (Cons!60998 (h!67446 s!2326) Nil!60998)) (t!374327 s!2326) s!2326))))

(declare-fun d!1704396 () Bool)

(declare-fun e!3294511 () Bool)

(assert (=> d!1704396 e!3294511))

(declare-fun res!2248118 () Bool)

(assert (=> d!1704396 (=> res!2248118 e!3294511)))

(declare-fun e!3294509 () Bool)

(assert (=> d!1704396 (= res!2248118 e!3294509)))

(declare-fun res!2248115 () Bool)

(assert (=> d!1704396 (=> (not res!2248115) (not e!3294509))))

(declare-fun lt!2165587 () Option!15052)

(assert (=> d!1704396 (= res!2248115 (isDefined!11755 lt!2165587))))

(declare-fun e!3294510 () Option!15052)

(assert (=> d!1704396 (= lt!2165587 e!3294510)))

(declare-fun c!920164 () Bool)

(assert (=> d!1704396 (= c!920164 e!3294507)))

(declare-fun res!2248119 () Bool)

(assert (=> d!1704396 (=> (not res!2248119) (not e!3294507))))

(assert (=> d!1704396 (= res!2248119 (matchR!7126 (regOne!30394 r!7292) Nil!60998))))

(assert (=> d!1704396 (validRegex!6677 (regOne!30394 r!7292))))

(assert (=> d!1704396 (= (findConcatSeparation!1466 (regOne!30394 r!7292) (regTwo!30394 r!7292) Nil!60998 s!2326 s!2326) lt!2165587)))

(declare-fun b!5300511 () Bool)

(assert (=> b!5300511 (= e!3294510 e!3294508)))

(declare-fun c!920165 () Bool)

(assert (=> b!5300511 (= c!920165 ((_ is Nil!60998) s!2326))))

(declare-fun b!5300512 () Bool)

(declare-fun res!2248117 () Bool)

(assert (=> b!5300512 (=> (not res!2248117) (not e!3294509))))

(declare-fun get!20978 (Option!15052) tuple2!64280)

(assert (=> b!5300512 (= res!2248117 (matchR!7126 (regTwo!30394 r!7292) (_2!35443 (get!20978 lt!2165587))))))

(declare-fun b!5300513 () Bool)

(assert (=> b!5300513 (= e!3294511 (not (isDefined!11755 lt!2165587)))))

(declare-fun b!5300514 () Bool)

(declare-fun res!2248116 () Bool)

(assert (=> b!5300514 (=> (not res!2248116) (not e!3294509))))

(assert (=> b!5300514 (= res!2248116 (matchR!7126 (regOne!30394 r!7292) (_1!35443 (get!20978 lt!2165587))))))

(declare-fun b!5300515 () Bool)

(assert (=> b!5300515 (= e!3294509 (= (++!13302 (_1!35443 (get!20978 lt!2165587)) (_2!35443 (get!20978 lt!2165587))) s!2326))))

(declare-fun b!5300516 () Bool)

(assert (=> b!5300516 (= e!3294508 None!15051)))

(declare-fun b!5300517 () Bool)

(assert (=> b!5300517 (= e!3294510 (Some!15051 (tuple2!64281 Nil!60998 s!2326)))))

(assert (= (and d!1704396 res!2248119) b!5300509))

(assert (= (and d!1704396 c!920164) b!5300517))

(assert (= (and d!1704396 (not c!920164)) b!5300511))

(assert (= (and b!5300511 c!920165) b!5300516))

(assert (= (and b!5300511 (not c!920165)) b!5300510))

(assert (= (and d!1704396 res!2248115) b!5300514))

(assert (= (and b!5300514 res!2248116) b!5300512))

(assert (= (and b!5300512 res!2248117) b!5300515))

(assert (= (and d!1704396 (not res!2248118)) b!5300513))

(declare-fun m!6337872 () Bool)

(assert (=> b!5300510 m!6337872))

(assert (=> b!5300510 m!6337872))

(declare-fun m!6337874 () Bool)

(assert (=> b!5300510 m!6337874))

(declare-fun m!6337876 () Bool)

(assert (=> b!5300510 m!6337876))

(assert (=> b!5300510 m!6337872))

(declare-fun m!6337878 () Bool)

(assert (=> b!5300510 m!6337878))

(declare-fun m!6337880 () Bool)

(assert (=> b!5300514 m!6337880))

(declare-fun m!6337882 () Bool)

(assert (=> b!5300514 m!6337882))

(declare-fun m!6337884 () Bool)

(assert (=> d!1704396 m!6337884))

(declare-fun m!6337886 () Bool)

(assert (=> d!1704396 m!6337886))

(assert (=> d!1704396 m!6337240))

(declare-fun m!6337888 () Bool)

(assert (=> b!5300509 m!6337888))

(assert (=> b!5300512 m!6337880))

(declare-fun m!6337890 () Bool)

(assert (=> b!5300512 m!6337890))

(assert (=> b!5300513 m!6337884))

(assert (=> b!5300515 m!6337880))

(declare-fun m!6337892 () Bool)

(assert (=> b!5300515 m!6337892))

(assert (=> b!5299946 d!1704396))

(declare-fun d!1704416 () Bool)

(declare-fun choose!39619 (Int) Bool)

(assert (=> d!1704416 (= (Exists!2122 lambda!269081) (choose!39619 lambda!269081))))

(declare-fun bs!1229347 () Bool)

(assert (= bs!1229347 d!1704416))

(declare-fun m!6337894 () Bool)

(assert (=> bs!1229347 m!6337894))

(assert (=> b!5299946 d!1704416))

(declare-fun d!1704418 () Bool)

(assert (=> d!1704418 (= (Exists!2122 lambda!269082) (choose!39619 lambda!269082))))

(declare-fun bs!1229349 () Bool)

(assert (= bs!1229349 d!1704418))

(declare-fun m!6337900 () Bool)

(assert (=> bs!1229349 m!6337900))

(assert (=> b!5299946 d!1704418))

(declare-fun bs!1229354 () Bool)

(declare-fun d!1704420 () Bool)

(assert (= bs!1229354 (and d!1704420 b!5299946)))

(declare-fun lambda!269152 () Int)

(assert (=> bs!1229354 (= lambda!269152 lambda!269081)))

(declare-fun bs!1229355 () Bool)

(assert (= bs!1229355 (and d!1704420 b!5299953)))

(assert (=> bs!1229355 (= (and (= (regOne!30394 r!7292) (regOne!30394 (regOne!30394 r!7292))) (= (regTwo!30394 r!7292) lt!2165459)) (= lambda!269152 lambda!269084))))

(assert (=> bs!1229355 (not (= lambda!269152 lambda!269087))))

(assert (=> bs!1229355 (= (and (= (regOne!30394 r!7292) (regTwo!30394 (regOne!30394 r!7292))) (= (regTwo!30394 r!7292) lt!2165446)) (= lambda!269152 lambda!269086))))

(assert (=> bs!1229355 (not (= lambda!269152 lambda!269085))))

(assert (=> bs!1229354 (not (= lambda!269152 lambda!269082))))

(assert (=> d!1704420 true))

(assert (=> d!1704420 true))

(assert (=> d!1704420 true))

(assert (=> d!1704420 (= (isDefined!11755 (findConcatSeparation!1466 (regOne!30394 r!7292) (regTwo!30394 r!7292) Nil!60998 s!2326 s!2326)) (Exists!2122 lambda!269152))))

(declare-fun lt!2165596 () Unit!153282)

(declare-fun choose!39620 (Regex!14941 Regex!14941 List!61122) Unit!153282)

(assert (=> d!1704420 (= lt!2165596 (choose!39620 (regOne!30394 r!7292) (regTwo!30394 r!7292) s!2326))))

(assert (=> d!1704420 (validRegex!6677 (regOne!30394 r!7292))))

(assert (=> d!1704420 (= (lemmaFindConcatSeparationEquivalentToExists!1230 (regOne!30394 r!7292) (regTwo!30394 r!7292) s!2326) lt!2165596)))

(declare-fun bs!1229356 () Bool)

(assert (= bs!1229356 d!1704420))

(declare-fun m!6337940 () Bool)

(assert (=> bs!1229356 m!6337940))

(assert (=> bs!1229356 m!6337240))

(assert (=> bs!1229356 m!6337280))

(declare-fun m!6337942 () Bool)

(assert (=> bs!1229356 m!6337942))

(assert (=> bs!1229356 m!6337280))

(assert (=> bs!1229356 m!6337282))

(assert (=> b!5299946 d!1704420))

(declare-fun bs!1229358 () Bool)

(declare-fun d!1704440 () Bool)

(assert (= bs!1229358 (and d!1704440 b!5299946)))

(declare-fun lambda!269157 () Int)

(assert (=> bs!1229358 (= lambda!269157 lambda!269081)))

(declare-fun bs!1229359 () Bool)

(assert (= bs!1229359 (and d!1704440 b!5299953)))

(assert (=> bs!1229359 (= (and (= (regOne!30394 r!7292) (regOne!30394 (regOne!30394 r!7292))) (= (regTwo!30394 r!7292) lt!2165459)) (= lambda!269157 lambda!269084))))

(assert (=> bs!1229359 (not (= lambda!269157 lambda!269087))))

(assert (=> bs!1229359 (= (and (= (regOne!30394 r!7292) (regTwo!30394 (regOne!30394 r!7292))) (= (regTwo!30394 r!7292) lt!2165446)) (= lambda!269157 lambda!269086))))

(assert (=> bs!1229359 (not (= lambda!269157 lambda!269085))))

(assert (=> bs!1229358 (not (= lambda!269157 lambda!269082))))

(declare-fun bs!1229360 () Bool)

(assert (= bs!1229360 (and d!1704440 d!1704420)))

(assert (=> bs!1229360 (= lambda!269157 lambda!269152)))

(assert (=> d!1704440 true))

(assert (=> d!1704440 true))

(assert (=> d!1704440 true))

(declare-fun lambda!269158 () Int)

(assert (=> bs!1229358 (not (= lambda!269158 lambda!269081))))

(assert (=> bs!1229359 (not (= lambda!269158 lambda!269084))))

(declare-fun bs!1229361 () Bool)

(assert (= bs!1229361 d!1704440))

(assert (=> bs!1229361 (not (= lambda!269158 lambda!269157))))

(assert (=> bs!1229359 (= (and (= (regOne!30394 r!7292) (regTwo!30394 (regOne!30394 r!7292))) (= (regTwo!30394 r!7292) lt!2165446)) (= lambda!269158 lambda!269087))))

(assert (=> bs!1229359 (not (= lambda!269158 lambda!269086))))

(assert (=> bs!1229359 (= (and (= (regOne!30394 r!7292) (regOne!30394 (regOne!30394 r!7292))) (= (regTwo!30394 r!7292) lt!2165459)) (= lambda!269158 lambda!269085))))

(assert (=> bs!1229358 (= lambda!269158 lambda!269082)))

(assert (=> bs!1229360 (not (= lambda!269158 lambda!269152))))

(assert (=> d!1704440 true))

(assert (=> d!1704440 true))

(assert (=> d!1704440 true))

(assert (=> d!1704440 (= (Exists!2122 lambda!269157) (Exists!2122 lambda!269158))))

(declare-fun lt!2165599 () Unit!153282)

(declare-fun choose!39621 (Regex!14941 Regex!14941 List!61122) Unit!153282)

(assert (=> d!1704440 (= lt!2165599 (choose!39621 (regOne!30394 r!7292) (regTwo!30394 r!7292) s!2326))))

(assert (=> d!1704440 (validRegex!6677 (regOne!30394 r!7292))))

(assert (=> d!1704440 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!776 (regOne!30394 r!7292) (regTwo!30394 r!7292) s!2326) lt!2165599)))

(declare-fun m!6337974 () Bool)

(assert (=> bs!1229361 m!6337974))

(declare-fun m!6337976 () Bool)

(assert (=> bs!1229361 m!6337976))

(declare-fun m!6337978 () Bool)

(assert (=> bs!1229361 m!6337978))

(assert (=> bs!1229361 m!6337240))

(assert (=> b!5299946 d!1704440))

(declare-fun d!1704456 () Bool)

(declare-fun isEmpty!32964 (Option!15052) Bool)

(assert (=> d!1704456 (= (isDefined!11755 (findConcatSeparation!1466 (regOne!30394 r!7292) (regTwo!30394 r!7292) Nil!60998 s!2326 s!2326)) (not (isEmpty!32964 (findConcatSeparation!1466 (regOne!30394 r!7292) (regTwo!30394 r!7292) Nil!60998 s!2326 s!2326))))))

(declare-fun bs!1229362 () Bool)

(assert (= bs!1229362 d!1704456))

(assert (=> bs!1229362 m!6337280))

(declare-fun m!6337984 () Bool)

(assert (=> bs!1229362 m!6337984))

(assert (=> b!5299946 d!1704456))

(declare-fun bs!1229377 () Bool)

(declare-fun b!5300684 () Bool)

(assert (= bs!1229377 (and b!5300684 d!1704440)))

(declare-fun lambda!269169 () Int)

(assert (=> bs!1229377 (not (= lambda!269169 lambda!269158))))

(declare-fun bs!1229378 () Bool)

(assert (= bs!1229378 (and b!5300684 b!5299946)))

(assert (=> bs!1229378 (not (= lambda!269169 lambda!269081))))

(declare-fun bs!1229379 () Bool)

(assert (= bs!1229379 (and b!5300684 b!5299953)))

(assert (=> bs!1229379 (not (= lambda!269169 lambda!269084))))

(assert (=> bs!1229377 (not (= lambda!269169 lambda!269157))))

(assert (=> bs!1229379 (not (= lambda!269169 lambda!269087))))

(assert (=> bs!1229379 (not (= lambda!269169 lambda!269086))))

(assert (=> bs!1229379 (not (= lambda!269169 lambda!269085))))

(assert (=> bs!1229378 (not (= lambda!269169 lambda!269082))))

(declare-fun bs!1229383 () Bool)

(assert (= bs!1229383 (and b!5300684 d!1704420)))

(assert (=> bs!1229383 (not (= lambda!269169 lambda!269152))))

(assert (=> b!5300684 true))

(assert (=> b!5300684 true))

(declare-fun bs!1229385 () Bool)

(declare-fun b!5300679 () Bool)

(assert (= bs!1229385 (and b!5300679 d!1704440)))

(declare-fun lambda!269171 () Int)

(assert (=> bs!1229385 (= lambda!269171 lambda!269158)))

(declare-fun bs!1229386 () Bool)

(assert (= bs!1229386 (and b!5300679 b!5299946)))

(assert (=> bs!1229386 (not (= lambda!269171 lambda!269081))))

(declare-fun bs!1229388 () Bool)

(assert (= bs!1229388 (and b!5300679 b!5299953)))

(assert (=> bs!1229388 (not (= lambda!269171 lambda!269084))))

(assert (=> bs!1229388 (= (and (= (regOne!30394 r!7292) (regTwo!30394 (regOne!30394 r!7292))) (= (regTwo!30394 r!7292) lt!2165446)) (= lambda!269171 lambda!269087))))

(assert (=> bs!1229388 (not (= lambda!269171 lambda!269086))))

(assert (=> bs!1229388 (= (and (= (regOne!30394 r!7292) (regOne!30394 (regOne!30394 r!7292))) (= (regTwo!30394 r!7292) lt!2165459)) (= lambda!269171 lambda!269085))))

(assert (=> bs!1229385 (not (= lambda!269171 lambda!269157))))

(declare-fun bs!1229389 () Bool)

(assert (= bs!1229389 (and b!5300679 b!5300684)))

(assert (=> bs!1229389 (not (= lambda!269171 lambda!269169))))

(assert (=> bs!1229386 (= lambda!269171 lambda!269082)))

(declare-fun bs!1229390 () Bool)

(assert (= bs!1229390 (and b!5300679 d!1704420)))

(assert (=> bs!1229390 (not (= lambda!269171 lambda!269152))))

(assert (=> b!5300679 true))

(assert (=> b!5300679 true))

(declare-fun d!1704458 () Bool)

(declare-fun c!920226 () Bool)

(assert (=> d!1704458 (= c!920226 ((_ is EmptyExpr!14941) r!7292))))

(declare-fun e!3294605 () Bool)

(assert (=> d!1704458 (= (matchRSpec!2044 r!7292 s!2326) e!3294605)))

(declare-fun b!5300677 () Bool)

(declare-fun res!2248164 () Bool)

(declare-fun e!3294606 () Bool)

(assert (=> b!5300677 (=> res!2248164 e!3294606)))

(declare-fun call!377916 () Bool)

(assert (=> b!5300677 (= res!2248164 call!377916)))

(declare-fun e!3294600 () Bool)

(assert (=> b!5300677 (= e!3294600 e!3294606)))

(declare-fun b!5300678 () Bool)

(declare-fun e!3294601 () Bool)

(assert (=> b!5300678 (= e!3294601 (= s!2326 (Cons!60998 (c!919991 r!7292) Nil!60998)))))

(declare-fun call!377917 () Bool)

(assert (=> b!5300679 (= e!3294600 call!377917)))

(declare-fun b!5300680 () Bool)

(declare-fun c!920227 () Bool)

(assert (=> b!5300680 (= c!920227 ((_ is Union!14941) r!7292))))

(declare-fun e!3294602 () Bool)

(assert (=> b!5300680 (= e!3294601 e!3294602)))

(declare-fun b!5300681 () Bool)

(declare-fun e!3294604 () Bool)

(assert (=> b!5300681 (= e!3294604 (matchRSpec!2044 (regTwo!30395 r!7292) s!2326))))

(declare-fun b!5300682 () Bool)

(assert (=> b!5300682 (= e!3294602 e!3294604)))

(declare-fun res!2248163 () Bool)

(assert (=> b!5300682 (= res!2248163 (matchRSpec!2044 (regOne!30395 r!7292) s!2326))))

(assert (=> b!5300682 (=> res!2248163 e!3294604)))

(declare-fun b!5300683 () Bool)

(declare-fun e!3294603 () Bool)

(assert (=> b!5300683 (= e!3294605 e!3294603)))

(declare-fun res!2248165 () Bool)

(assert (=> b!5300683 (= res!2248165 (not ((_ is EmptyLang!14941) r!7292)))))

(assert (=> b!5300683 (=> (not res!2248165) (not e!3294603))))

(declare-fun bm!377911 () Bool)

(assert (=> bm!377911 (= call!377916 (isEmpty!32963 s!2326))))

(assert (=> b!5300684 (= e!3294606 call!377917)))

(declare-fun c!920228 () Bool)

(declare-fun bm!377912 () Bool)

(assert (=> bm!377912 (= call!377917 (Exists!2122 (ite c!920228 lambda!269169 lambda!269171)))))

(declare-fun b!5300685 () Bool)

(assert (=> b!5300685 (= e!3294602 e!3294600)))

(assert (=> b!5300685 (= c!920228 ((_ is Star!14941) r!7292))))

(declare-fun b!5300686 () Bool)

(declare-fun c!920225 () Bool)

(assert (=> b!5300686 (= c!920225 ((_ is ElementMatch!14941) r!7292))))

(assert (=> b!5300686 (= e!3294603 e!3294601)))

(declare-fun b!5300687 () Bool)

(assert (=> b!5300687 (= e!3294605 call!377916)))

(assert (= (and d!1704458 c!920226) b!5300687))

(assert (= (and d!1704458 (not c!920226)) b!5300683))

(assert (= (and b!5300683 res!2248165) b!5300686))

(assert (= (and b!5300686 c!920225) b!5300678))

(assert (= (and b!5300686 (not c!920225)) b!5300680))

(assert (= (and b!5300680 c!920227) b!5300682))

(assert (= (and b!5300680 (not c!920227)) b!5300685))

(assert (= (and b!5300682 (not res!2248163)) b!5300681))

(assert (= (and b!5300685 c!920228) b!5300677))

(assert (= (and b!5300685 (not c!920228)) b!5300679))

(assert (= (and b!5300677 (not res!2248164)) b!5300684))

(assert (= (or b!5300684 b!5300679) bm!377912))

(assert (= (or b!5300687 b!5300677) bm!377911))

(declare-fun m!6338036 () Bool)

(assert (=> b!5300681 m!6338036))

(declare-fun m!6338038 () Bool)

(assert (=> b!5300682 m!6338038))

(declare-fun m!6338040 () Bool)

(assert (=> bm!377911 m!6338040))

(declare-fun m!6338042 () Bool)

(assert (=> bm!377912 m!6338042))

(assert (=> b!5299968 d!1704458))

(declare-fun bm!377919 () Bool)

(declare-fun call!377924 () Bool)

(assert (=> bm!377919 (= call!377924 (isEmpty!32963 s!2326))))

(declare-fun b!5300784 () Bool)

(declare-fun res!2248188 () Bool)

(declare-fun e!3294654 () Bool)

(assert (=> b!5300784 (=> res!2248188 e!3294654)))

(assert (=> b!5300784 (= res!2248188 (not (isEmpty!32963 (tail!10460 s!2326))))))

(declare-fun b!5300785 () Bool)

(declare-fun e!3294660 () Bool)

(assert (=> b!5300785 (= e!3294660 (nullable!5110 r!7292))))

(declare-fun b!5300786 () Bool)

(declare-fun res!2248195 () Bool)

(declare-fun e!3294655 () Bool)

(assert (=> b!5300786 (=> (not res!2248195) (not e!3294655))))

(assert (=> b!5300786 (= res!2248195 (not call!377924))))

(declare-fun b!5300788 () Bool)

(declare-fun res!2248193 () Bool)

(declare-fun e!3294656 () Bool)

(assert (=> b!5300788 (=> res!2248193 e!3294656)))

(assert (=> b!5300788 (= res!2248193 (not ((_ is ElementMatch!14941) r!7292)))))

(declare-fun e!3294658 () Bool)

(assert (=> b!5300788 (= e!3294658 e!3294656)))

(declare-fun b!5300789 () Bool)

(assert (=> b!5300789 (= e!3294654 (not (= (head!11363 s!2326) (c!919991 r!7292))))))

(declare-fun b!5300790 () Bool)

(declare-fun e!3294659 () Bool)

(assert (=> b!5300790 (= e!3294659 e!3294654)))

(declare-fun res!2248192 () Bool)

(assert (=> b!5300790 (=> res!2248192 e!3294654)))

(assert (=> b!5300790 (= res!2248192 call!377924)))

(declare-fun b!5300791 () Bool)

(declare-fun e!3294657 () Bool)

(declare-fun lt!2165609 () Bool)

(assert (=> b!5300791 (= e!3294657 (= lt!2165609 call!377924))))

(declare-fun b!5300792 () Bool)

(assert (=> b!5300792 (= e!3294657 e!3294658)))

(declare-fun c!920240 () Bool)

(assert (=> b!5300792 (= c!920240 ((_ is EmptyLang!14941) r!7292))))

(declare-fun b!5300793 () Bool)

(declare-fun derivativeStep!4143 (Regex!14941 C!30152) Regex!14941)

(assert (=> b!5300793 (= e!3294660 (matchR!7126 (derivativeStep!4143 r!7292 (head!11363 s!2326)) (tail!10460 s!2326)))))

(declare-fun b!5300787 () Bool)

(declare-fun res!2248191 () Bool)

(assert (=> b!5300787 (=> res!2248191 e!3294656)))

(assert (=> b!5300787 (= res!2248191 e!3294655)))

(declare-fun res!2248190 () Bool)

(assert (=> b!5300787 (=> (not res!2248190) (not e!3294655))))

(assert (=> b!5300787 (= res!2248190 lt!2165609)))

(declare-fun d!1704476 () Bool)

(assert (=> d!1704476 e!3294657))

(declare-fun c!920241 () Bool)

(assert (=> d!1704476 (= c!920241 ((_ is EmptyExpr!14941) r!7292))))

(assert (=> d!1704476 (= lt!2165609 e!3294660)))

(declare-fun c!920239 () Bool)

(assert (=> d!1704476 (= c!920239 (isEmpty!32963 s!2326))))

(assert (=> d!1704476 (validRegex!6677 r!7292)))

(assert (=> d!1704476 (= (matchR!7126 r!7292 s!2326) lt!2165609)))

(declare-fun b!5300794 () Bool)

(assert (=> b!5300794 (= e!3294658 (not lt!2165609))))

(declare-fun b!5300795 () Bool)

(declare-fun res!2248189 () Bool)

(assert (=> b!5300795 (=> (not res!2248189) (not e!3294655))))

(assert (=> b!5300795 (= res!2248189 (isEmpty!32963 (tail!10460 s!2326)))))

(declare-fun b!5300796 () Bool)

(assert (=> b!5300796 (= e!3294655 (= (head!11363 s!2326) (c!919991 r!7292)))))

(declare-fun b!5300797 () Bool)

(assert (=> b!5300797 (= e!3294656 e!3294659)))

(declare-fun res!2248194 () Bool)

(assert (=> b!5300797 (=> (not res!2248194) (not e!3294659))))

(assert (=> b!5300797 (= res!2248194 (not lt!2165609))))

(assert (= (and d!1704476 c!920239) b!5300785))

(assert (= (and d!1704476 (not c!920239)) b!5300793))

(assert (= (and d!1704476 c!920241) b!5300791))

(assert (= (and d!1704476 (not c!920241)) b!5300792))

(assert (= (and b!5300792 c!920240) b!5300794))

(assert (= (and b!5300792 (not c!920240)) b!5300788))

(assert (= (and b!5300788 (not res!2248193)) b!5300787))

(assert (= (and b!5300787 res!2248190) b!5300786))

(assert (= (and b!5300786 res!2248195) b!5300795))

(assert (= (and b!5300795 res!2248189) b!5300796))

(assert (= (and b!5300787 (not res!2248191)) b!5300797))

(assert (= (and b!5300797 res!2248194) b!5300790))

(assert (= (and b!5300790 (not res!2248192)) b!5300784))

(assert (= (and b!5300784 (not res!2248188)) b!5300789))

(assert (= (or b!5300791 b!5300786 b!5300790) bm!377919))

(declare-fun m!6338048 () Bool)

(assert (=> b!5300785 m!6338048))

(assert (=> bm!377919 m!6338040))

(declare-fun m!6338050 () Bool)

(assert (=> b!5300789 m!6338050))

(assert (=> b!5300793 m!6338050))

(assert (=> b!5300793 m!6338050))

(declare-fun m!6338052 () Bool)

(assert (=> b!5300793 m!6338052))

(declare-fun m!6338054 () Bool)

(assert (=> b!5300793 m!6338054))

(assert (=> b!5300793 m!6338052))

(assert (=> b!5300793 m!6338054))

(declare-fun m!6338056 () Bool)

(assert (=> b!5300793 m!6338056))

(assert (=> b!5300796 m!6338050))

(assert (=> d!1704476 m!6338040))

(assert (=> d!1704476 m!6337276))

(assert (=> b!5300795 m!6338054))

(assert (=> b!5300795 m!6338054))

(declare-fun m!6338058 () Bool)

(assert (=> b!5300795 m!6338058))

(assert (=> b!5300784 m!6338054))

(assert (=> b!5300784 m!6338054))

(assert (=> b!5300784 m!6338058))

(assert (=> b!5299968 d!1704476))

(declare-fun d!1704484 () Bool)

(assert (=> d!1704484 (= (matchR!7126 r!7292 s!2326) (matchRSpec!2044 r!7292 s!2326))))

(declare-fun lt!2165612 () Unit!153282)

(declare-fun choose!39622 (Regex!14941 List!61122) Unit!153282)

(assert (=> d!1704484 (= lt!2165612 (choose!39622 r!7292 s!2326))))

(assert (=> d!1704484 (validRegex!6677 r!7292)))

(assert (=> d!1704484 (= (mainMatchTheorem!2044 r!7292 s!2326) lt!2165612)))

(declare-fun bs!1229394 () Bool)

(assert (= bs!1229394 d!1704484))

(assert (=> bs!1229394 m!6337248))

(assert (=> bs!1229394 m!6337246))

(declare-fun m!6338060 () Bool)

(assert (=> bs!1229394 m!6338060))

(assert (=> bs!1229394 m!6337276))

(assert (=> b!5299968 d!1704484))

(declare-fun b!5300798 () Bool)

(declare-fun res!2248200 () Bool)

(declare-fun e!3294661 () Bool)

(assert (=> b!5300798 (=> res!2248200 e!3294661)))

(assert (=> b!5300798 (= res!2248200 (not ((_ is Concat!23786) (regTwo!30394 r!7292))))))

(declare-fun e!3294665 () Bool)

(assert (=> b!5300798 (= e!3294665 e!3294661)))

(declare-fun b!5300799 () Bool)

(declare-fun e!3294667 () Bool)

(declare-fun e!3294663 () Bool)

(assert (=> b!5300799 (= e!3294667 e!3294663)))

(declare-fun res!2248198 () Bool)

(assert (=> b!5300799 (= res!2248198 (not (nullable!5110 (reg!15270 (regTwo!30394 r!7292)))))))

(assert (=> b!5300799 (=> (not res!2248198) (not e!3294663))))

(declare-fun bm!377920 () Bool)

(declare-fun call!377925 () Bool)

(declare-fun call!377926 () Bool)

(assert (=> bm!377920 (= call!377925 call!377926)))

(declare-fun c!920242 () Bool)

(declare-fun bm!377921 () Bool)

(declare-fun c!920243 () Bool)

(assert (=> bm!377921 (= call!377926 (validRegex!6677 (ite c!920243 (reg!15270 (regTwo!30394 r!7292)) (ite c!920242 (regOne!30395 (regTwo!30394 r!7292)) (regOne!30394 (regTwo!30394 r!7292))))))))

(declare-fun b!5300801 () Bool)

(declare-fun e!3294664 () Bool)

(declare-fun call!377927 () Bool)

(assert (=> b!5300801 (= e!3294664 call!377927)))

(declare-fun b!5300802 () Bool)

(declare-fun res!2248199 () Bool)

(assert (=> b!5300802 (=> (not res!2248199) (not e!3294664))))

(assert (=> b!5300802 (= res!2248199 call!377925)))

(assert (=> b!5300802 (= e!3294665 e!3294664)))

(declare-fun b!5300803 () Bool)

(declare-fun e!3294666 () Bool)

(assert (=> b!5300803 (= e!3294661 e!3294666)))

(declare-fun res!2248196 () Bool)

(assert (=> b!5300803 (=> (not res!2248196) (not e!3294666))))

(assert (=> b!5300803 (= res!2248196 call!377925)))

(declare-fun bm!377922 () Bool)

(assert (=> bm!377922 (= call!377927 (validRegex!6677 (ite c!920242 (regTwo!30395 (regTwo!30394 r!7292)) (regTwo!30394 (regTwo!30394 r!7292)))))))

(declare-fun b!5300800 () Bool)

(assert (=> b!5300800 (= e!3294666 call!377927)))

(declare-fun d!1704486 () Bool)

(declare-fun res!2248197 () Bool)

(declare-fun e!3294662 () Bool)

(assert (=> d!1704486 (=> res!2248197 e!3294662)))

(assert (=> d!1704486 (= res!2248197 ((_ is ElementMatch!14941) (regTwo!30394 r!7292)))))

(assert (=> d!1704486 (= (validRegex!6677 (regTwo!30394 r!7292)) e!3294662)))

(declare-fun b!5300804 () Bool)

(assert (=> b!5300804 (= e!3294663 call!377926)))

(declare-fun b!5300805 () Bool)

(assert (=> b!5300805 (= e!3294662 e!3294667)))

(assert (=> b!5300805 (= c!920243 ((_ is Star!14941) (regTwo!30394 r!7292)))))

(declare-fun b!5300806 () Bool)

(assert (=> b!5300806 (= e!3294667 e!3294665)))

(assert (=> b!5300806 (= c!920242 ((_ is Union!14941) (regTwo!30394 r!7292)))))

(assert (= (and d!1704486 (not res!2248197)) b!5300805))

(assert (= (and b!5300805 c!920243) b!5300799))

(assert (= (and b!5300805 (not c!920243)) b!5300806))

(assert (= (and b!5300799 res!2248198) b!5300804))

(assert (= (and b!5300806 c!920242) b!5300802))

(assert (= (and b!5300806 (not c!920242)) b!5300798))

(assert (= (and b!5300802 res!2248199) b!5300801))

(assert (= (and b!5300798 (not res!2248200)) b!5300803))

(assert (= (and b!5300803 res!2248196) b!5300800))

(assert (= (or b!5300801 b!5300800) bm!377922))

(assert (= (or b!5300802 b!5300803) bm!377920))

(assert (= (or b!5300804 bm!377920) bm!377921))

(declare-fun m!6338062 () Bool)

(assert (=> b!5300799 m!6338062))

(declare-fun m!6338064 () Bool)

(assert (=> bm!377921 m!6338064))

(declare-fun m!6338066 () Bool)

(assert (=> bm!377922 m!6338066))

(assert (=> b!5299947 d!1704486))

(declare-fun b!5300807 () Bool)

(declare-fun res!2248205 () Bool)

(declare-fun e!3294668 () Bool)

(assert (=> b!5300807 (=> res!2248205 e!3294668)))

(assert (=> b!5300807 (= res!2248205 (not ((_ is Concat!23786) r!7292)))))

(declare-fun e!3294672 () Bool)

(assert (=> b!5300807 (= e!3294672 e!3294668)))

(declare-fun b!5300808 () Bool)

(declare-fun e!3294674 () Bool)

(declare-fun e!3294670 () Bool)

(assert (=> b!5300808 (= e!3294674 e!3294670)))

(declare-fun res!2248203 () Bool)

(assert (=> b!5300808 (= res!2248203 (not (nullable!5110 (reg!15270 r!7292))))))

(assert (=> b!5300808 (=> (not res!2248203) (not e!3294670))))

(declare-fun bm!377923 () Bool)

(declare-fun call!377928 () Bool)

(declare-fun call!377929 () Bool)

(assert (=> bm!377923 (= call!377928 call!377929)))

(declare-fun bm!377924 () Bool)

(declare-fun c!920245 () Bool)

(declare-fun c!920244 () Bool)

(assert (=> bm!377924 (= call!377929 (validRegex!6677 (ite c!920245 (reg!15270 r!7292) (ite c!920244 (regOne!30395 r!7292) (regOne!30394 r!7292)))))))

(declare-fun b!5300810 () Bool)

(declare-fun e!3294671 () Bool)

(declare-fun call!377930 () Bool)

(assert (=> b!5300810 (= e!3294671 call!377930)))

(declare-fun b!5300811 () Bool)

(declare-fun res!2248204 () Bool)

(assert (=> b!5300811 (=> (not res!2248204) (not e!3294671))))

(assert (=> b!5300811 (= res!2248204 call!377928)))

(assert (=> b!5300811 (= e!3294672 e!3294671)))

(declare-fun b!5300812 () Bool)

(declare-fun e!3294673 () Bool)

(assert (=> b!5300812 (= e!3294668 e!3294673)))

(declare-fun res!2248201 () Bool)

(assert (=> b!5300812 (=> (not res!2248201) (not e!3294673))))

(assert (=> b!5300812 (= res!2248201 call!377928)))

(declare-fun bm!377925 () Bool)

(assert (=> bm!377925 (= call!377930 (validRegex!6677 (ite c!920244 (regTwo!30395 r!7292) (regTwo!30394 r!7292))))))

(declare-fun b!5300809 () Bool)

(assert (=> b!5300809 (= e!3294673 call!377930)))

(declare-fun d!1704488 () Bool)

(declare-fun res!2248202 () Bool)

(declare-fun e!3294669 () Bool)

(assert (=> d!1704488 (=> res!2248202 e!3294669)))

(assert (=> d!1704488 (= res!2248202 ((_ is ElementMatch!14941) r!7292))))

(assert (=> d!1704488 (= (validRegex!6677 r!7292) e!3294669)))

(declare-fun b!5300813 () Bool)

(assert (=> b!5300813 (= e!3294670 call!377929)))

(declare-fun b!5300814 () Bool)

(assert (=> b!5300814 (= e!3294669 e!3294674)))

(assert (=> b!5300814 (= c!920245 ((_ is Star!14941) r!7292))))

(declare-fun b!5300815 () Bool)

(assert (=> b!5300815 (= e!3294674 e!3294672)))

(assert (=> b!5300815 (= c!920244 ((_ is Union!14941) r!7292))))

(assert (= (and d!1704488 (not res!2248202)) b!5300814))

(assert (= (and b!5300814 c!920245) b!5300808))

(assert (= (and b!5300814 (not c!920245)) b!5300815))

(assert (= (and b!5300808 res!2248203) b!5300813))

(assert (= (and b!5300815 c!920244) b!5300811))

(assert (= (and b!5300815 (not c!920244)) b!5300807))

(assert (= (and b!5300811 res!2248204) b!5300810))

(assert (= (and b!5300807 (not res!2248205)) b!5300812))

(assert (= (and b!5300812 res!2248201) b!5300809))

(assert (= (or b!5300810 b!5300809) bm!377925))

(assert (= (or b!5300811 b!5300812) bm!377923))

(assert (= (or b!5300813 bm!377923) bm!377924))

(declare-fun m!6338068 () Bool)

(assert (=> b!5300808 m!6338068))

(declare-fun m!6338070 () Bool)

(assert (=> bm!377924 m!6338070))

(declare-fun m!6338072 () Bool)

(assert (=> bm!377925 m!6338072))

(assert (=> start!559162 d!1704488))

(declare-fun d!1704490 () Bool)

(declare-fun c!920246 () Bool)

(assert (=> d!1704490 (= c!920246 (isEmpty!32963 (t!374327 s!2326)))))

(declare-fun e!3294675 () Bool)

(assert (=> d!1704490 (= (matchZipper!1185 lt!2165454 (t!374327 s!2326)) e!3294675)))

(declare-fun b!5300816 () Bool)

(assert (=> b!5300816 (= e!3294675 (nullableZipper!1322 lt!2165454))))

(declare-fun b!5300817 () Bool)

(assert (=> b!5300817 (= e!3294675 (matchZipper!1185 (derivationStepZipper!1184 lt!2165454 (head!11363 (t!374327 s!2326))) (tail!10460 (t!374327 s!2326))))))

(assert (= (and d!1704490 c!920246) b!5300816))

(assert (= (and d!1704490 (not c!920246)) b!5300817))

(assert (=> d!1704490 m!6337630))

(declare-fun m!6338074 () Bool)

(assert (=> b!5300816 m!6338074))

(assert (=> b!5300817 m!6337634))

(assert (=> b!5300817 m!6337634))

(declare-fun m!6338076 () Bool)

(assert (=> b!5300817 m!6338076))

(assert (=> b!5300817 m!6337638))

(assert (=> b!5300817 m!6338076))

(assert (=> b!5300817 m!6337638))

(declare-fun m!6338078 () Bool)

(assert (=> b!5300817 m!6338078))

(assert (=> b!5299969 d!1704490))

(declare-fun d!1704492 () Bool)

(declare-fun c!920247 () Bool)

(assert (=> d!1704492 (= c!920247 (isEmpty!32963 (t!374327 s!2326)))))

(declare-fun e!3294676 () Bool)

(assert (=> d!1704492 (= (matchZipper!1185 lt!2165468 (t!374327 s!2326)) e!3294676)))

(declare-fun b!5300818 () Bool)

(assert (=> b!5300818 (= e!3294676 (nullableZipper!1322 lt!2165468))))

(declare-fun b!5300819 () Bool)

(assert (=> b!5300819 (= e!3294676 (matchZipper!1185 (derivationStepZipper!1184 lt!2165468 (head!11363 (t!374327 s!2326))) (tail!10460 (t!374327 s!2326))))))

(assert (= (and d!1704492 c!920247) b!5300818))

(assert (= (and d!1704492 (not c!920247)) b!5300819))

(assert (=> d!1704492 m!6337630))

(declare-fun m!6338080 () Bool)

(assert (=> b!5300818 m!6338080))

(assert (=> b!5300819 m!6337634))

(assert (=> b!5300819 m!6337634))

(declare-fun m!6338082 () Bool)

(assert (=> b!5300819 m!6338082))

(assert (=> b!5300819 m!6337638))

(assert (=> b!5300819 m!6338082))

(assert (=> b!5300819 m!6337638))

(declare-fun m!6338084 () Bool)

(assert (=> b!5300819 m!6338084))

(assert (=> b!5299969 d!1704492))

(declare-fun d!1704494 () Bool)

(declare-fun c!920248 () Bool)

(assert (=> d!1704494 (= c!920248 (isEmpty!32963 (t!374327 s!2326)))))

(declare-fun e!3294677 () Bool)

(assert (=> d!1704494 (= (matchZipper!1185 lt!2165451 (t!374327 s!2326)) e!3294677)))

(declare-fun b!5300820 () Bool)

(assert (=> b!5300820 (= e!3294677 (nullableZipper!1322 lt!2165451))))

(declare-fun b!5300821 () Bool)

(assert (=> b!5300821 (= e!3294677 (matchZipper!1185 (derivationStepZipper!1184 lt!2165451 (head!11363 (t!374327 s!2326))) (tail!10460 (t!374327 s!2326))))))

(assert (= (and d!1704494 c!920248) b!5300820))

(assert (= (and d!1704494 (not c!920248)) b!5300821))

(assert (=> d!1704494 m!6337630))

(declare-fun m!6338086 () Bool)

(assert (=> b!5300820 m!6338086))

(assert (=> b!5300821 m!6337634))

(assert (=> b!5300821 m!6337634))

(declare-fun m!6338088 () Bool)

(assert (=> b!5300821 m!6338088))

(assert (=> b!5300821 m!6337638))

(assert (=> b!5300821 m!6338088))

(assert (=> b!5300821 m!6337638))

(declare-fun m!6338090 () Bool)

(assert (=> b!5300821 m!6338090))

(assert (=> b!5299969 d!1704494))

(declare-fun e!3294678 () Bool)

(declare-fun d!1704496 () Bool)

(assert (=> d!1704496 (= (matchZipper!1185 ((_ map or) lt!2165451 lt!2165460) (t!374327 s!2326)) e!3294678)))

(declare-fun res!2248206 () Bool)

(assert (=> d!1704496 (=> res!2248206 e!3294678)))

(assert (=> d!1704496 (= res!2248206 (matchZipper!1185 lt!2165451 (t!374327 s!2326)))))

(declare-fun lt!2165613 () Unit!153282)

(assert (=> d!1704496 (= lt!2165613 (choose!39615 lt!2165451 lt!2165460 (t!374327 s!2326)))))

(assert (=> d!1704496 (= (lemmaZipperConcatMatchesSameAsBothZippers!178 lt!2165451 lt!2165460 (t!374327 s!2326)) lt!2165613)))

(declare-fun b!5300822 () Bool)

(assert (=> b!5300822 (= e!3294678 (matchZipper!1185 lt!2165460 (t!374327 s!2326)))))

(assert (= (and d!1704496 (not res!2248206)) b!5300822))

(declare-fun m!6338092 () Bool)

(assert (=> d!1704496 m!6338092))

(assert (=> d!1704496 m!6337356))

(declare-fun m!6338094 () Bool)

(assert (=> d!1704496 m!6338094))

(assert (=> b!5300822 m!6337272))

(assert (=> b!5299969 d!1704496))

(declare-fun bs!1229395 () Bool)

(declare-fun d!1704498 () Bool)

(assert (= bs!1229395 (and d!1704498 d!1704294)))

(declare-fun lambda!269172 () Int)

(assert (=> bs!1229395 (= lambda!269172 lambda!269099)))

(declare-fun bs!1229396 () Bool)

(assert (= bs!1229396 (and d!1704498 d!1704304)))

(assert (=> bs!1229396 (= lambda!269172 lambda!269108)))

(declare-fun bs!1229397 () Bool)

(assert (= bs!1229397 (and d!1704498 d!1704324)))

(assert (=> bs!1229397 (= lambda!269172 lambda!269118)))

(assert (=> d!1704498 (= (inv!80599 setElem!34043) (forall!14357 (exprs!4825 setElem!34043) lambda!269172))))

(declare-fun bs!1229398 () Bool)

(assert (= bs!1229398 d!1704498))

(declare-fun m!6338096 () Bool)

(assert (=> bs!1229398 m!6338096))

(assert (=> setNonEmpty!34043 d!1704498))

(declare-fun d!1704500 () Bool)

(declare-fun c!920249 () Bool)

(assert (=> d!1704500 (= c!920249 (isEmpty!32963 (t!374327 s!2326)))))

(declare-fun e!3294679 () Bool)

(assert (=> d!1704500 (= (matchZipper!1185 lt!2165456 (t!374327 s!2326)) e!3294679)))

(declare-fun b!5300823 () Bool)

(assert (=> b!5300823 (= e!3294679 (nullableZipper!1322 lt!2165456))))

(declare-fun b!5300824 () Bool)

(assert (=> b!5300824 (= e!3294679 (matchZipper!1185 (derivationStepZipper!1184 lt!2165456 (head!11363 (t!374327 s!2326))) (tail!10460 (t!374327 s!2326))))))

(assert (= (and d!1704500 c!920249) b!5300823))

(assert (= (and d!1704500 (not c!920249)) b!5300824))

(assert (=> d!1704500 m!6337630))

(declare-fun m!6338098 () Bool)

(assert (=> b!5300823 m!6338098))

(assert (=> b!5300824 m!6337634))

(assert (=> b!5300824 m!6337634))

(declare-fun m!6338100 () Bool)

(assert (=> b!5300824 m!6338100))

(assert (=> b!5300824 m!6337638))

(assert (=> b!5300824 m!6338100))

(assert (=> b!5300824 m!6337638))

(declare-fun m!6338102 () Bool)

(assert (=> b!5300824 m!6338102))

(assert (=> b!5299950 d!1704500))

(declare-fun b!5300831 () Bool)

(assert (=> b!5300831 true))

(declare-fun bs!1229399 () Bool)

(declare-fun b!5300833 () Bool)

(assert (= bs!1229399 (and b!5300833 b!5300831)))

(declare-fun lt!2165625 () Int)

(declare-fun lt!2165623 () Int)

(declare-fun lambda!269181 () Int)

(declare-fun lambda!269180 () Int)

(assert (=> bs!1229399 (= (= lt!2165623 lt!2165625) (= lambda!269181 lambda!269180))))

(assert (=> b!5300833 true))

(declare-fun d!1704502 () Bool)

(declare-fun e!3294684 () Bool)

(assert (=> d!1704502 e!3294684))

(declare-fun res!2248209 () Bool)

(assert (=> d!1704502 (=> (not res!2248209) (not e!3294684))))

(assert (=> d!1704502 (= res!2248209 (>= lt!2165623 0))))

(declare-fun e!3294685 () Int)

(assert (=> d!1704502 (= lt!2165623 e!3294685)))

(declare-fun c!920258 () Bool)

(assert (=> d!1704502 (= c!920258 ((_ is Cons!61000) lt!2165486))))

(assert (=> d!1704502 (= (zipperDepth!58 lt!2165486) lt!2165623)))

(assert (=> b!5300831 (= e!3294685 lt!2165625)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!34 (Context!8650) Int)

(assert (=> b!5300831 (= lt!2165625 (maxBigInt!0 (contextDepth!34 (h!67448 lt!2165486)) (zipperDepth!58 (t!374329 lt!2165486))))))

(declare-fun lt!2165624 () Unit!153282)

(declare-fun lambda!269179 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!28 (List!61124 Int Int Int) Unit!153282)

(assert (=> b!5300831 (= lt!2165624 (lemmaForallContextDepthBiggerThanTransitive!28 (t!374329 lt!2165486) lt!2165625 (zipperDepth!58 (t!374329 lt!2165486)) lambda!269179))))

(declare-fun forall!14359 (List!61124 Int) Bool)

(assert (=> b!5300831 (forall!14359 (t!374329 lt!2165486) lambda!269180)))

(declare-fun lt!2165622 () Unit!153282)

(assert (=> b!5300831 (= lt!2165622 lt!2165624)))

(declare-fun b!5300832 () Bool)

(assert (=> b!5300832 (= e!3294685 0)))

(assert (=> b!5300833 (= e!3294684 (forall!14359 lt!2165486 lambda!269181))))

(assert (= (and d!1704502 c!920258) b!5300831))

(assert (= (and d!1704502 (not c!920258)) b!5300832))

(assert (= (and d!1704502 res!2248209) b!5300833))

(declare-fun m!6338104 () Bool)

(assert (=> b!5300831 m!6338104))

(declare-fun m!6338106 () Bool)

(assert (=> b!5300831 m!6338106))

(declare-fun m!6338108 () Bool)

(assert (=> b!5300831 m!6338108))

(assert (=> b!5300831 m!6338108))

(declare-fun m!6338110 () Bool)

(assert (=> b!5300831 m!6338110))

(assert (=> b!5300831 m!6338104))

(assert (=> b!5300831 m!6338108))

(declare-fun m!6338112 () Bool)

(assert (=> b!5300831 m!6338112))

(declare-fun m!6338114 () Bool)

(assert (=> b!5300833 m!6338114))

(assert (=> b!5299951 d!1704502))

(declare-fun bs!1229400 () Bool)

(declare-fun b!5300836 () Bool)

(assert (= bs!1229400 (and b!5300836 b!5300831)))

(declare-fun lambda!269182 () Int)

(assert (=> bs!1229400 (= lambda!269182 lambda!269179)))

(declare-fun lambda!269183 () Int)

(declare-fun lt!2165629 () Int)

(assert (=> bs!1229400 (= (= lt!2165629 lt!2165625) (= lambda!269183 lambda!269180))))

(declare-fun bs!1229401 () Bool)

(assert (= bs!1229401 (and b!5300836 b!5300833)))

(assert (=> bs!1229401 (= (= lt!2165629 lt!2165623) (= lambda!269183 lambda!269181))))

(assert (=> b!5300836 true))

(declare-fun bs!1229402 () Bool)

(declare-fun b!5300838 () Bool)

(assert (= bs!1229402 (and b!5300838 b!5300831)))

(declare-fun lambda!269184 () Int)

(declare-fun lt!2165627 () Int)

(assert (=> bs!1229402 (= (= lt!2165627 lt!2165625) (= lambda!269184 lambda!269180))))

(declare-fun bs!1229403 () Bool)

(assert (= bs!1229403 (and b!5300838 b!5300833)))

(assert (=> bs!1229403 (= (= lt!2165627 lt!2165623) (= lambda!269184 lambda!269181))))

(declare-fun bs!1229404 () Bool)

(assert (= bs!1229404 (and b!5300838 b!5300836)))

(assert (=> bs!1229404 (= (= lt!2165627 lt!2165629) (= lambda!269184 lambda!269183))))

(assert (=> b!5300838 true))

(declare-fun d!1704504 () Bool)

(declare-fun e!3294686 () Bool)

(assert (=> d!1704504 e!3294686))

(declare-fun res!2248210 () Bool)

(assert (=> d!1704504 (=> (not res!2248210) (not e!3294686))))

(assert (=> d!1704504 (= res!2248210 (>= lt!2165627 0))))

(declare-fun e!3294687 () Int)

(assert (=> d!1704504 (= lt!2165627 e!3294687)))

(declare-fun c!920259 () Bool)

(assert (=> d!1704504 (= c!920259 ((_ is Cons!61000) zl!343))))

(assert (=> d!1704504 (= (zipperDepth!58 zl!343) lt!2165627)))

(assert (=> b!5300836 (= e!3294687 lt!2165629)))

(assert (=> b!5300836 (= lt!2165629 (maxBigInt!0 (contextDepth!34 (h!67448 zl!343)) (zipperDepth!58 (t!374329 zl!343))))))

(declare-fun lt!2165628 () Unit!153282)

(assert (=> b!5300836 (= lt!2165628 (lemmaForallContextDepthBiggerThanTransitive!28 (t!374329 zl!343) lt!2165629 (zipperDepth!58 (t!374329 zl!343)) lambda!269182))))

(assert (=> b!5300836 (forall!14359 (t!374329 zl!343) lambda!269183)))

(declare-fun lt!2165626 () Unit!153282)

(assert (=> b!5300836 (= lt!2165626 lt!2165628)))

(declare-fun b!5300837 () Bool)

(assert (=> b!5300837 (= e!3294687 0)))

(assert (=> b!5300838 (= e!3294686 (forall!14359 zl!343 lambda!269184))))

(assert (= (and d!1704504 c!920259) b!5300836))

(assert (= (and d!1704504 (not c!920259)) b!5300837))

(assert (= (and d!1704504 res!2248210) b!5300838))

(declare-fun m!6338116 () Bool)

(assert (=> b!5300836 m!6338116))

(declare-fun m!6338118 () Bool)

(assert (=> b!5300836 m!6338118))

(declare-fun m!6338120 () Bool)

(assert (=> b!5300836 m!6338120))

(assert (=> b!5300836 m!6338120))

(declare-fun m!6338122 () Bool)

(assert (=> b!5300836 m!6338122))

(assert (=> b!5300836 m!6338116))

(assert (=> b!5300836 m!6338120))

(declare-fun m!6338124 () Bool)

(assert (=> b!5300836 m!6338124))

(declare-fun m!6338126 () Bool)

(assert (=> b!5300838 m!6338126))

(assert (=> b!5299951 d!1704504))

(declare-fun d!1704506 () Bool)

(declare-fun e!3294688 () Bool)

(assert (=> d!1704506 (= (matchZipper!1185 ((_ map or) lt!2165454 lt!2165470) (t!374327 s!2326)) e!3294688)))

(declare-fun res!2248211 () Bool)

(assert (=> d!1704506 (=> res!2248211 e!3294688)))

(assert (=> d!1704506 (= res!2248211 (matchZipper!1185 lt!2165454 (t!374327 s!2326)))))

(declare-fun lt!2165630 () Unit!153282)

(assert (=> d!1704506 (= lt!2165630 (choose!39615 lt!2165454 lt!2165470 (t!374327 s!2326)))))

(assert (=> d!1704506 (= (lemmaZipperConcatMatchesSameAsBothZippers!178 lt!2165454 lt!2165470 (t!374327 s!2326)) lt!2165630)))

(declare-fun b!5300839 () Bool)

(assert (=> b!5300839 (= e!3294688 (matchZipper!1185 lt!2165470 (t!374327 s!2326)))))

(assert (= (and d!1704506 (not res!2248211)) b!5300839))

(assert (=> d!1704506 m!6337256))

(assert (=> d!1704506 m!6337254))

(declare-fun m!6338128 () Bool)

(assert (=> d!1704506 m!6338128))

(assert (=> b!5300839 m!6337274))

(assert (=> b!5299971 d!1704506))

(assert (=> b!5299971 d!1704490))

(declare-fun d!1704508 () Bool)

(declare-fun c!920260 () Bool)

(assert (=> d!1704508 (= c!920260 (isEmpty!32963 (t!374327 s!2326)))))

(declare-fun e!3294689 () Bool)

(assert (=> d!1704508 (= (matchZipper!1185 ((_ map or) lt!2165454 lt!2165470) (t!374327 s!2326)) e!3294689)))

(declare-fun b!5300840 () Bool)

(assert (=> b!5300840 (= e!3294689 (nullableZipper!1322 ((_ map or) lt!2165454 lt!2165470)))))

(declare-fun b!5300841 () Bool)

(assert (=> b!5300841 (= e!3294689 (matchZipper!1185 (derivationStepZipper!1184 ((_ map or) lt!2165454 lt!2165470) (head!11363 (t!374327 s!2326))) (tail!10460 (t!374327 s!2326))))))

(assert (= (and d!1704508 c!920260) b!5300840))

(assert (= (and d!1704508 (not c!920260)) b!5300841))

(assert (=> d!1704508 m!6337630))

(declare-fun m!6338130 () Bool)

(assert (=> b!5300840 m!6338130))

(assert (=> b!5300841 m!6337634))

(assert (=> b!5300841 m!6337634))

(declare-fun m!6338132 () Bool)

(assert (=> b!5300841 m!6338132))

(assert (=> b!5300841 m!6337638))

(assert (=> b!5300841 m!6338132))

(assert (=> b!5300841 m!6337638))

(declare-fun m!6338134 () Bool)

(assert (=> b!5300841 m!6338134))

(assert (=> b!5299971 d!1704508))

(declare-fun bs!1229405 () Bool)

(declare-fun d!1704510 () Bool)

(assert (= bs!1229405 (and d!1704510 d!1704294)))

(declare-fun lambda!269187 () Int)

(assert (=> bs!1229405 (= lambda!269187 lambda!269099)))

(declare-fun bs!1229406 () Bool)

(assert (= bs!1229406 (and d!1704510 d!1704304)))

(assert (=> bs!1229406 (= lambda!269187 lambda!269108)))

(declare-fun bs!1229407 () Bool)

(assert (= bs!1229407 (and d!1704510 d!1704324)))

(assert (=> bs!1229407 (= lambda!269187 lambda!269118)))

(declare-fun bs!1229408 () Bool)

(assert (= bs!1229408 (and d!1704510 d!1704498)))

(assert (=> bs!1229408 (= lambda!269187 lambda!269172)))

(declare-fun b!5300862 () Bool)

(declare-fun e!3294707 () Regex!14941)

(assert (=> b!5300862 (= e!3294707 (Concat!23786 (h!67447 (exprs!4825 (h!67448 zl!343))) (generalisedConcat!610 (t!374328 (exprs!4825 (h!67448 zl!343))))))))

(declare-fun b!5300863 () Bool)

(declare-fun e!3294706 () Bool)

(declare-fun lt!2165633 () Regex!14941)

(assert (=> b!5300863 (= e!3294706 (= lt!2165633 (head!11362 (exprs!4825 (h!67448 zl!343)))))))

(declare-fun b!5300864 () Bool)

(declare-fun e!3294705 () Bool)

(declare-fun isEmptyExpr!857 (Regex!14941) Bool)

(assert (=> b!5300864 (= e!3294705 (isEmptyExpr!857 lt!2165633))))

(declare-fun b!5300865 () Bool)

(declare-fun e!3294702 () Regex!14941)

(assert (=> b!5300865 (= e!3294702 e!3294707)))

(declare-fun c!920270 () Bool)

(assert (=> b!5300865 (= c!920270 ((_ is Cons!60999) (exprs!4825 (h!67448 zl!343))))))

(declare-fun b!5300866 () Bool)

(declare-fun e!3294703 () Bool)

(assert (=> b!5300866 (= e!3294703 e!3294705)))

(declare-fun c!920272 () Bool)

(assert (=> b!5300866 (= c!920272 (isEmpty!32960 (exprs!4825 (h!67448 zl!343))))))

(assert (=> d!1704510 e!3294703))

(declare-fun res!2248216 () Bool)

(assert (=> d!1704510 (=> (not res!2248216) (not e!3294703))))

(assert (=> d!1704510 (= res!2248216 (validRegex!6677 lt!2165633))))

(assert (=> d!1704510 (= lt!2165633 e!3294702)))

(declare-fun c!920271 () Bool)

(declare-fun e!3294704 () Bool)

(assert (=> d!1704510 (= c!920271 e!3294704)))

(declare-fun res!2248217 () Bool)

(assert (=> d!1704510 (=> (not res!2248217) (not e!3294704))))

(assert (=> d!1704510 (= res!2248217 ((_ is Cons!60999) (exprs!4825 (h!67448 zl!343))))))

(assert (=> d!1704510 (forall!14357 (exprs!4825 (h!67448 zl!343)) lambda!269187)))

(assert (=> d!1704510 (= (generalisedConcat!610 (exprs!4825 (h!67448 zl!343))) lt!2165633)))

(declare-fun b!5300867 () Bool)

(assert (=> b!5300867 (= e!3294702 (h!67447 (exprs!4825 (h!67448 zl!343))))))

(declare-fun b!5300868 () Bool)

(assert (=> b!5300868 (= e!3294705 e!3294706)))

(declare-fun c!920269 () Bool)

(assert (=> b!5300868 (= c!920269 (isEmpty!32960 (tail!10459 (exprs!4825 (h!67448 zl!343)))))))

(declare-fun b!5300869 () Bool)

(assert (=> b!5300869 (= e!3294704 (isEmpty!32960 (t!374328 (exprs!4825 (h!67448 zl!343)))))))

(declare-fun b!5300870 () Bool)

(declare-fun isConcat!380 (Regex!14941) Bool)

(assert (=> b!5300870 (= e!3294706 (isConcat!380 lt!2165633))))

(declare-fun b!5300871 () Bool)

(assert (=> b!5300871 (= e!3294707 EmptyExpr!14941)))

(assert (= (and d!1704510 res!2248217) b!5300869))

(assert (= (and d!1704510 c!920271) b!5300867))

(assert (= (and d!1704510 (not c!920271)) b!5300865))

(assert (= (and b!5300865 c!920270) b!5300862))

(assert (= (and b!5300865 (not c!920270)) b!5300871))

(assert (= (and d!1704510 res!2248216) b!5300866))

(assert (= (and b!5300866 c!920272) b!5300864))

(assert (= (and b!5300866 (not c!920272)) b!5300868))

(assert (= (and b!5300868 c!920269) b!5300863))

(assert (= (and b!5300868 (not c!920269)) b!5300870))

(assert (=> b!5300869 m!6337394))

(declare-fun m!6338136 () Bool)

(assert (=> d!1704510 m!6338136))

(declare-fun m!6338138 () Bool)

(assert (=> d!1704510 m!6338138))

(declare-fun m!6338140 () Bool)

(assert (=> b!5300868 m!6338140))

(assert (=> b!5300868 m!6338140))

(declare-fun m!6338142 () Bool)

(assert (=> b!5300868 m!6338142))

(assert (=> b!5300862 m!6337348))

(declare-fun m!6338144 () Bool)

(assert (=> b!5300870 m!6338144))

(declare-fun m!6338146 () Bool)

(assert (=> b!5300866 m!6338146))

(declare-fun m!6338148 () Bool)

(assert (=> b!5300864 m!6338148))

(declare-fun m!6338150 () Bool)

(assert (=> b!5300863 m!6338150))

(assert (=> b!5299952 d!1704510))

(declare-fun bs!1229409 () Bool)

(declare-fun d!1704512 () Bool)

(assert (= bs!1229409 (and d!1704512 d!1704294)))

(declare-fun lambda!269188 () Int)

(assert (=> bs!1229409 (= lambda!269188 lambda!269099)))

(declare-fun bs!1229410 () Bool)

(assert (= bs!1229410 (and d!1704512 d!1704324)))

(assert (=> bs!1229410 (= lambda!269188 lambda!269118)))

(declare-fun bs!1229411 () Bool)

(assert (= bs!1229411 (and d!1704512 d!1704304)))

(assert (=> bs!1229411 (= lambda!269188 lambda!269108)))

(declare-fun bs!1229412 () Bool)

(assert (= bs!1229412 (and d!1704512 d!1704510)))

(assert (=> bs!1229412 (= lambda!269188 lambda!269187)))

(declare-fun bs!1229413 () Bool)

(assert (= bs!1229413 (and d!1704512 d!1704498)))

(assert (=> bs!1229413 (= lambda!269188 lambda!269172)))

(declare-fun b!5300872 () Bool)

(declare-fun e!3294713 () Regex!14941)

(assert (=> b!5300872 (= e!3294713 (Concat!23786 (h!67447 lt!2165481) (generalisedConcat!610 (t!374328 lt!2165481))))))

(declare-fun b!5300873 () Bool)

(declare-fun e!3294712 () Bool)

(declare-fun lt!2165634 () Regex!14941)

(assert (=> b!5300873 (= e!3294712 (= lt!2165634 (head!11362 lt!2165481)))))

(declare-fun b!5300874 () Bool)

(declare-fun e!3294711 () Bool)

(assert (=> b!5300874 (= e!3294711 (isEmptyExpr!857 lt!2165634))))

(declare-fun b!5300875 () Bool)

(declare-fun e!3294708 () Regex!14941)

(assert (=> b!5300875 (= e!3294708 e!3294713)))

(declare-fun c!920274 () Bool)

(assert (=> b!5300875 (= c!920274 ((_ is Cons!60999) lt!2165481))))

(declare-fun b!5300876 () Bool)

(declare-fun e!3294709 () Bool)

(assert (=> b!5300876 (= e!3294709 e!3294711)))

(declare-fun c!920276 () Bool)

(assert (=> b!5300876 (= c!920276 (isEmpty!32960 lt!2165481))))

(assert (=> d!1704512 e!3294709))

(declare-fun res!2248218 () Bool)

(assert (=> d!1704512 (=> (not res!2248218) (not e!3294709))))

(assert (=> d!1704512 (= res!2248218 (validRegex!6677 lt!2165634))))

(assert (=> d!1704512 (= lt!2165634 e!3294708)))

(declare-fun c!920275 () Bool)

(declare-fun e!3294710 () Bool)

(assert (=> d!1704512 (= c!920275 e!3294710)))

(declare-fun res!2248219 () Bool)

(assert (=> d!1704512 (=> (not res!2248219) (not e!3294710))))

(assert (=> d!1704512 (= res!2248219 ((_ is Cons!60999) lt!2165481))))

(assert (=> d!1704512 (forall!14357 lt!2165481 lambda!269188)))

(assert (=> d!1704512 (= (generalisedConcat!610 lt!2165481) lt!2165634)))

(declare-fun b!5300877 () Bool)

(assert (=> b!5300877 (= e!3294708 (h!67447 lt!2165481))))

(declare-fun b!5300878 () Bool)

(assert (=> b!5300878 (= e!3294711 e!3294712)))

(declare-fun c!920273 () Bool)

(assert (=> b!5300878 (= c!920273 (isEmpty!32960 (tail!10459 lt!2165481)))))

(declare-fun b!5300879 () Bool)

(assert (=> b!5300879 (= e!3294710 (isEmpty!32960 (t!374328 lt!2165481)))))

(declare-fun b!5300880 () Bool)

(assert (=> b!5300880 (= e!3294712 (isConcat!380 lt!2165634))))

(declare-fun b!5300881 () Bool)

(assert (=> b!5300881 (= e!3294713 EmptyExpr!14941)))

(assert (= (and d!1704512 res!2248219) b!5300879))

(assert (= (and d!1704512 c!920275) b!5300877))

(assert (= (and d!1704512 (not c!920275)) b!5300875))

(assert (= (and b!5300875 c!920274) b!5300872))

(assert (= (and b!5300875 (not c!920274)) b!5300881))

(assert (= (and d!1704512 res!2248218) b!5300876))

(assert (= (and b!5300876 c!920276) b!5300874))

(assert (= (and b!5300876 (not c!920276)) b!5300878))

(assert (= (and b!5300878 c!920273) b!5300873))

(assert (= (and b!5300878 (not c!920273)) b!5300880))

(declare-fun m!6338152 () Bool)

(assert (=> b!5300879 m!6338152))

(declare-fun m!6338154 () Bool)

(assert (=> d!1704512 m!6338154))

(declare-fun m!6338156 () Bool)

(assert (=> d!1704512 m!6338156))

(declare-fun m!6338158 () Bool)

(assert (=> b!5300878 m!6338158))

(assert (=> b!5300878 m!6338158))

(declare-fun m!6338160 () Bool)

(assert (=> b!5300878 m!6338160))

(declare-fun m!6338162 () Bool)

(assert (=> b!5300872 m!6338162))

(declare-fun m!6338164 () Bool)

(assert (=> b!5300880 m!6338164))

(declare-fun m!6338166 () Bool)

(assert (=> b!5300876 m!6338166))

(declare-fun m!6338168 () Bool)

(assert (=> b!5300874 m!6338168))

(declare-fun m!6338170 () Bool)

(assert (=> b!5300873 m!6338170))

(assert (=> b!5299953 d!1704512))

(declare-fun d!1704514 () Bool)

(assert (=> d!1704514 (= (isDefined!11755 (findConcatSeparation!1466 (regTwo!30394 (regOne!30394 r!7292)) lt!2165446 Nil!60998 s!2326 s!2326)) (not (isEmpty!32964 (findConcatSeparation!1466 (regTwo!30394 (regOne!30394 r!7292)) lt!2165446 Nil!60998 s!2326 s!2326))))))

(declare-fun bs!1229414 () Bool)

(assert (= bs!1229414 d!1704514))

(assert (=> bs!1229414 m!6337318))

(declare-fun m!6338172 () Bool)

(assert (=> bs!1229414 m!6338172))

(assert (=> b!5299953 d!1704514))

(declare-fun d!1704516 () Bool)

(declare-fun c!920277 () Bool)

(assert (=> d!1704516 (= c!920277 (isEmpty!32963 s!2326))))

(declare-fun e!3294714 () Bool)

(assert (=> d!1704516 (= (matchZipper!1185 z!1189 s!2326) e!3294714)))

(declare-fun b!5300882 () Bool)

(assert (=> b!5300882 (= e!3294714 (nullableZipper!1322 z!1189))))

(declare-fun b!5300883 () Bool)

(assert (=> b!5300883 (= e!3294714 (matchZipper!1185 (derivationStepZipper!1184 z!1189 (head!11363 s!2326)) (tail!10460 s!2326)))))

(assert (= (and d!1704516 c!920277) b!5300882))

(assert (= (and d!1704516 (not c!920277)) b!5300883))

(assert (=> d!1704516 m!6338040))

(declare-fun m!6338174 () Bool)

(assert (=> b!5300882 m!6338174))

(assert (=> b!5300883 m!6338050))

(assert (=> b!5300883 m!6338050))

(declare-fun m!6338176 () Bool)

(assert (=> b!5300883 m!6338176))

(assert (=> b!5300883 m!6338054))

(assert (=> b!5300883 m!6338176))

(assert (=> b!5300883 m!6338054))

(declare-fun m!6338178 () Bool)

(assert (=> b!5300883 m!6338178))

(assert (=> b!5299953 d!1704516))

(declare-fun bs!1229415 () Bool)

(declare-fun b!5300891 () Bool)

(assert (= bs!1229415 (and b!5300891 d!1704440)))

(declare-fun lambda!269189 () Int)

(assert (=> bs!1229415 (not (= lambda!269189 lambda!269158))))

(declare-fun bs!1229416 () Bool)

(assert (= bs!1229416 (and b!5300891 b!5299946)))

(assert (=> bs!1229416 (not (= lambda!269189 lambda!269081))))

(declare-fun bs!1229417 () Bool)

(assert (= bs!1229417 (and b!5300891 b!5299953)))

(assert (=> bs!1229417 (not (= lambda!269189 lambda!269087))))

(assert (=> bs!1229417 (not (= lambda!269189 lambda!269086))))

(assert (=> bs!1229417 (not (= lambda!269189 lambda!269085))))

(declare-fun bs!1229418 () Bool)

(assert (= bs!1229418 (and b!5300891 b!5300679)))

(assert (=> bs!1229418 (not (= lambda!269189 lambda!269171))))

(assert (=> bs!1229417 (not (= lambda!269189 lambda!269084))))

(assert (=> bs!1229415 (not (= lambda!269189 lambda!269157))))

(declare-fun bs!1229419 () Bool)

(assert (= bs!1229419 (and b!5300891 b!5300684)))

(assert (=> bs!1229419 (= (and (= (reg!15270 lt!2165459) (reg!15270 r!7292)) (= lt!2165459 r!7292)) (= lambda!269189 lambda!269169))))

(assert (=> bs!1229416 (not (= lambda!269189 lambda!269082))))

(declare-fun bs!1229420 () Bool)

(assert (= bs!1229420 (and b!5300891 d!1704420)))

(assert (=> bs!1229420 (not (= lambda!269189 lambda!269152))))

(assert (=> b!5300891 true))

(assert (=> b!5300891 true))

(declare-fun bs!1229421 () Bool)

(declare-fun b!5300886 () Bool)

(assert (= bs!1229421 (and b!5300886 d!1704440)))

(declare-fun lambda!269190 () Int)

(assert (=> bs!1229421 (= (and (= (regOne!30394 lt!2165459) (regOne!30394 r!7292)) (= (regTwo!30394 lt!2165459) (regTwo!30394 r!7292))) (= lambda!269190 lambda!269158))))

(declare-fun bs!1229422 () Bool)

(assert (= bs!1229422 (and b!5300886 b!5299946)))

(assert (=> bs!1229422 (not (= lambda!269190 lambda!269081))))

(declare-fun bs!1229423 () Bool)

(assert (= bs!1229423 (and b!5300886 b!5299953)))

(assert (=> bs!1229423 (= (and (= (regOne!30394 lt!2165459) (regTwo!30394 (regOne!30394 r!7292))) (= (regTwo!30394 lt!2165459) lt!2165446)) (= lambda!269190 lambda!269087))))

(assert (=> bs!1229423 (not (= lambda!269190 lambda!269086))))

(declare-fun bs!1229424 () Bool)

(assert (= bs!1229424 (and b!5300886 b!5300891)))

(assert (=> bs!1229424 (not (= lambda!269190 lambda!269189))))

(assert (=> bs!1229423 (= (and (= (regOne!30394 lt!2165459) (regOne!30394 (regOne!30394 r!7292))) (= (regTwo!30394 lt!2165459) lt!2165459)) (= lambda!269190 lambda!269085))))

(declare-fun bs!1229425 () Bool)

(assert (= bs!1229425 (and b!5300886 b!5300679)))

(assert (=> bs!1229425 (= (and (= (regOne!30394 lt!2165459) (regOne!30394 r!7292)) (= (regTwo!30394 lt!2165459) (regTwo!30394 r!7292))) (= lambda!269190 lambda!269171))))

(assert (=> bs!1229423 (not (= lambda!269190 lambda!269084))))

(assert (=> bs!1229421 (not (= lambda!269190 lambda!269157))))

(declare-fun bs!1229426 () Bool)

(assert (= bs!1229426 (and b!5300886 b!5300684)))

(assert (=> bs!1229426 (not (= lambda!269190 lambda!269169))))

(assert (=> bs!1229422 (= (and (= (regOne!30394 lt!2165459) (regOne!30394 r!7292)) (= (regTwo!30394 lt!2165459) (regTwo!30394 r!7292))) (= lambda!269190 lambda!269082))))

(declare-fun bs!1229427 () Bool)

(assert (= bs!1229427 (and b!5300886 d!1704420)))

(assert (=> bs!1229427 (not (= lambda!269190 lambda!269152))))

(assert (=> b!5300886 true))

(assert (=> b!5300886 true))

(declare-fun d!1704518 () Bool)

(declare-fun c!920279 () Bool)

(assert (=> d!1704518 (= c!920279 ((_ is EmptyExpr!14941) lt!2165459))))

(declare-fun e!3294720 () Bool)

(assert (=> d!1704518 (= (matchRSpec!2044 lt!2165459 s!2326) e!3294720)))

(declare-fun b!5300884 () Bool)

(declare-fun res!2248221 () Bool)

(declare-fun e!3294721 () Bool)

(assert (=> b!5300884 (=> res!2248221 e!3294721)))

(declare-fun call!377931 () Bool)

(assert (=> b!5300884 (= res!2248221 call!377931)))

(declare-fun e!3294715 () Bool)

(assert (=> b!5300884 (= e!3294715 e!3294721)))

(declare-fun b!5300885 () Bool)

(declare-fun e!3294716 () Bool)

(assert (=> b!5300885 (= e!3294716 (= s!2326 (Cons!60998 (c!919991 lt!2165459) Nil!60998)))))

(declare-fun call!377932 () Bool)

(assert (=> b!5300886 (= e!3294715 call!377932)))

(declare-fun b!5300887 () Bool)

(declare-fun c!920280 () Bool)

(assert (=> b!5300887 (= c!920280 ((_ is Union!14941) lt!2165459))))

(declare-fun e!3294717 () Bool)

(assert (=> b!5300887 (= e!3294716 e!3294717)))

(declare-fun b!5300888 () Bool)

(declare-fun e!3294719 () Bool)

(assert (=> b!5300888 (= e!3294719 (matchRSpec!2044 (regTwo!30395 lt!2165459) s!2326))))

(declare-fun b!5300889 () Bool)

(assert (=> b!5300889 (= e!3294717 e!3294719)))

(declare-fun res!2248220 () Bool)

(assert (=> b!5300889 (= res!2248220 (matchRSpec!2044 (regOne!30395 lt!2165459) s!2326))))

(assert (=> b!5300889 (=> res!2248220 e!3294719)))

(declare-fun b!5300890 () Bool)

(declare-fun e!3294718 () Bool)

(assert (=> b!5300890 (= e!3294720 e!3294718)))

(declare-fun res!2248222 () Bool)

(assert (=> b!5300890 (= res!2248222 (not ((_ is EmptyLang!14941) lt!2165459)))))

(assert (=> b!5300890 (=> (not res!2248222) (not e!3294718))))

(declare-fun bm!377926 () Bool)

(assert (=> bm!377926 (= call!377931 (isEmpty!32963 s!2326))))

(assert (=> b!5300891 (= e!3294721 call!377932)))

(declare-fun bm!377927 () Bool)

(declare-fun c!920281 () Bool)

(assert (=> bm!377927 (= call!377932 (Exists!2122 (ite c!920281 lambda!269189 lambda!269190)))))

(declare-fun b!5300892 () Bool)

(assert (=> b!5300892 (= e!3294717 e!3294715)))

(assert (=> b!5300892 (= c!920281 ((_ is Star!14941) lt!2165459))))

(declare-fun b!5300893 () Bool)

(declare-fun c!920278 () Bool)

(assert (=> b!5300893 (= c!920278 ((_ is ElementMatch!14941) lt!2165459))))

(assert (=> b!5300893 (= e!3294718 e!3294716)))

(declare-fun b!5300894 () Bool)

(assert (=> b!5300894 (= e!3294720 call!377931)))

(assert (= (and d!1704518 c!920279) b!5300894))

(assert (= (and d!1704518 (not c!920279)) b!5300890))

(assert (= (and b!5300890 res!2248222) b!5300893))

(assert (= (and b!5300893 c!920278) b!5300885))

(assert (= (and b!5300893 (not c!920278)) b!5300887))

(assert (= (and b!5300887 c!920280) b!5300889))

(assert (= (and b!5300887 (not c!920280)) b!5300892))

(assert (= (and b!5300889 (not res!2248220)) b!5300888))

(assert (= (and b!5300892 c!920281) b!5300884))

(assert (= (and b!5300892 (not c!920281)) b!5300886))

(assert (= (and b!5300884 (not res!2248221)) b!5300891))

(assert (= (or b!5300891 b!5300886) bm!377927))

(assert (= (or b!5300894 b!5300884) bm!377926))

(declare-fun m!6338180 () Bool)

(assert (=> b!5300888 m!6338180))

(declare-fun m!6338182 () Bool)

(assert (=> b!5300889 m!6338182))

(assert (=> bm!377926 m!6338040))

(declare-fun m!6338184 () Bool)

(assert (=> bm!377927 m!6338184))

(assert (=> b!5299953 d!1704518))

(declare-fun d!1704520 () Bool)

(assert (=> d!1704520 (= (matchR!7126 lt!2165459 s!2326) (matchRSpec!2044 lt!2165459 s!2326))))

(declare-fun lt!2165635 () Unit!153282)

(assert (=> d!1704520 (= lt!2165635 (choose!39622 lt!2165459 s!2326))))

(assert (=> d!1704520 (validRegex!6677 lt!2165459)))

(assert (=> d!1704520 (= (mainMatchTheorem!2044 lt!2165459 s!2326) lt!2165635)))

(declare-fun bs!1229428 () Bool)

(assert (= bs!1229428 d!1704520))

(assert (=> bs!1229428 m!6337300))

(assert (=> bs!1229428 m!6337316))

(declare-fun m!6338186 () Bool)

(assert (=> bs!1229428 m!6338186))

(declare-fun m!6338188 () Bool)

(assert (=> bs!1229428 m!6338188))

(assert (=> b!5299953 d!1704520))

(declare-fun bs!1229429 () Bool)

(declare-fun d!1704522 () Bool)

(assert (= bs!1229429 (and d!1704522 d!1704294)))

(declare-fun lambda!269191 () Int)

(assert (=> bs!1229429 (= lambda!269191 lambda!269099)))

(declare-fun bs!1229430 () Bool)

(assert (= bs!1229430 (and d!1704522 d!1704324)))

(assert (=> bs!1229430 (= lambda!269191 lambda!269118)))

(declare-fun bs!1229431 () Bool)

(assert (= bs!1229431 (and d!1704522 d!1704510)))

(assert (=> bs!1229431 (= lambda!269191 lambda!269187)))

(declare-fun bs!1229432 () Bool)

(assert (= bs!1229432 (and d!1704522 d!1704498)))

(assert (=> bs!1229432 (= lambda!269191 lambda!269172)))

(declare-fun bs!1229433 () Bool)

(assert (= bs!1229433 (and d!1704522 d!1704304)))

(assert (=> bs!1229433 (= lambda!269191 lambda!269108)))

(declare-fun bs!1229434 () Bool)

(assert (= bs!1229434 (and d!1704522 d!1704512)))

(assert (=> bs!1229434 (= lambda!269191 lambda!269188)))

(declare-fun b!5300895 () Bool)

(declare-fun e!3294727 () Regex!14941)

(assert (=> b!5300895 (= e!3294727 (Concat!23786 (h!67447 lt!2165466) (generalisedConcat!610 (t!374328 lt!2165466))))))

(declare-fun b!5300896 () Bool)

(declare-fun e!3294726 () Bool)

(declare-fun lt!2165636 () Regex!14941)

(assert (=> b!5300896 (= e!3294726 (= lt!2165636 (head!11362 lt!2165466)))))

(declare-fun b!5300897 () Bool)

(declare-fun e!3294725 () Bool)

(assert (=> b!5300897 (= e!3294725 (isEmptyExpr!857 lt!2165636))))

(declare-fun b!5300898 () Bool)

(declare-fun e!3294722 () Regex!14941)

(assert (=> b!5300898 (= e!3294722 e!3294727)))

(declare-fun c!920283 () Bool)

(assert (=> b!5300898 (= c!920283 ((_ is Cons!60999) lt!2165466))))

(declare-fun b!5300899 () Bool)

(declare-fun e!3294723 () Bool)

(assert (=> b!5300899 (= e!3294723 e!3294725)))

(declare-fun c!920285 () Bool)

(assert (=> b!5300899 (= c!920285 (isEmpty!32960 lt!2165466))))

(assert (=> d!1704522 e!3294723))

(declare-fun res!2248223 () Bool)

(assert (=> d!1704522 (=> (not res!2248223) (not e!3294723))))

(assert (=> d!1704522 (= res!2248223 (validRegex!6677 lt!2165636))))

(assert (=> d!1704522 (= lt!2165636 e!3294722)))

(declare-fun c!920284 () Bool)

(declare-fun e!3294724 () Bool)

(assert (=> d!1704522 (= c!920284 e!3294724)))

(declare-fun res!2248224 () Bool)

(assert (=> d!1704522 (=> (not res!2248224) (not e!3294724))))

(assert (=> d!1704522 (= res!2248224 ((_ is Cons!60999) lt!2165466))))

(assert (=> d!1704522 (forall!14357 lt!2165466 lambda!269191)))

(assert (=> d!1704522 (= (generalisedConcat!610 lt!2165466) lt!2165636)))

(declare-fun b!5300900 () Bool)

(assert (=> b!5300900 (= e!3294722 (h!67447 lt!2165466))))

(declare-fun b!5300901 () Bool)

(assert (=> b!5300901 (= e!3294725 e!3294726)))

(declare-fun c!920282 () Bool)

(assert (=> b!5300901 (= c!920282 (isEmpty!32960 (tail!10459 lt!2165466)))))

(declare-fun b!5300902 () Bool)

(assert (=> b!5300902 (= e!3294724 (isEmpty!32960 (t!374328 lt!2165466)))))

(declare-fun b!5300903 () Bool)

(assert (=> b!5300903 (= e!3294726 (isConcat!380 lt!2165636))))

(declare-fun b!5300904 () Bool)

(assert (=> b!5300904 (= e!3294727 EmptyExpr!14941)))

(assert (= (and d!1704522 res!2248224) b!5300902))

(assert (= (and d!1704522 c!920284) b!5300900))

(assert (= (and d!1704522 (not c!920284)) b!5300898))

(assert (= (and b!5300898 c!920283) b!5300895))

(assert (= (and b!5300898 (not c!920283)) b!5300904))

(assert (= (and d!1704522 res!2248223) b!5300899))

(assert (= (and b!5300899 c!920285) b!5300897))

(assert (= (and b!5300899 (not c!920285)) b!5300901))

(assert (= (and b!5300901 c!920282) b!5300896))

(assert (= (and b!5300901 (not c!920282)) b!5300903))

(declare-fun m!6338190 () Bool)

(assert (=> b!5300902 m!6338190))

(declare-fun m!6338192 () Bool)

(assert (=> d!1704522 m!6338192))

(declare-fun m!6338194 () Bool)

(assert (=> d!1704522 m!6338194))

(declare-fun m!6338196 () Bool)

(assert (=> b!5300901 m!6338196))

(assert (=> b!5300901 m!6338196))

(declare-fun m!6338198 () Bool)

(assert (=> b!5300901 m!6338198))

(declare-fun m!6338200 () Bool)

(assert (=> b!5300895 m!6338200))

(declare-fun m!6338202 () Bool)

(assert (=> b!5300903 m!6338202))

(declare-fun m!6338204 () Bool)

(assert (=> b!5300899 m!6338204))

(declare-fun m!6338206 () Bool)

(assert (=> b!5300897 m!6338206))

(declare-fun m!6338208 () Bool)

(assert (=> b!5300896 m!6338208))

(assert (=> b!5299953 d!1704522))

(declare-fun d!1704524 () Bool)

(assert (=> d!1704524 (= (matchR!7126 lt!2165480 s!2326) (matchRSpec!2044 lt!2165480 s!2326))))

(declare-fun lt!2165637 () Unit!153282)

(assert (=> d!1704524 (= lt!2165637 (choose!39622 lt!2165480 s!2326))))

(assert (=> d!1704524 (validRegex!6677 lt!2165480)))

(assert (=> d!1704524 (= (mainMatchTheorem!2044 lt!2165480 s!2326) lt!2165637)))

(declare-fun bs!1229435 () Bool)

(assert (= bs!1229435 d!1704524))

(assert (=> bs!1229435 m!6337330))

(assert (=> bs!1229435 m!6337324))

(declare-fun m!6338210 () Bool)

(assert (=> bs!1229435 m!6338210))

(declare-fun m!6338212 () Bool)

(assert (=> bs!1229435 m!6338212))

(assert (=> b!5299953 d!1704524))

(declare-fun d!1704526 () Bool)

(assert (=> d!1704526 (= (Exists!2122 lambda!269085) (choose!39619 lambda!269085))))

(declare-fun bs!1229436 () Bool)

(assert (= bs!1229436 d!1704526))

(declare-fun m!6338214 () Bool)

(assert (=> bs!1229436 m!6338214))

(assert (=> b!5299953 d!1704526))

(declare-fun b!5300905 () Bool)

(declare-fun e!3294728 () Bool)

(assert (=> b!5300905 (= e!3294728 (matchR!7126 lt!2165446 s!2326))))

(declare-fun b!5300906 () Bool)

(declare-fun lt!2165640 () Unit!153282)

(declare-fun lt!2165638 () Unit!153282)

(assert (=> b!5300906 (= lt!2165640 lt!2165638)))

(assert (=> b!5300906 (= (++!13302 (++!13302 Nil!60998 (Cons!60998 (h!67446 s!2326) Nil!60998)) (t!374327 s!2326)) s!2326)))

(assert (=> b!5300906 (= lt!2165638 (lemmaMoveElementToOtherListKeepsConcatEq!1717 Nil!60998 (h!67446 s!2326) (t!374327 s!2326) s!2326))))

(declare-fun e!3294729 () Option!15052)

(assert (=> b!5300906 (= e!3294729 (findConcatSeparation!1466 (regTwo!30394 (regOne!30394 r!7292)) lt!2165446 (++!13302 Nil!60998 (Cons!60998 (h!67446 s!2326) Nil!60998)) (t!374327 s!2326) s!2326))))

(declare-fun d!1704528 () Bool)

(declare-fun e!3294732 () Bool)

(assert (=> d!1704528 e!3294732))

(declare-fun res!2248228 () Bool)

(assert (=> d!1704528 (=> res!2248228 e!3294732)))

(declare-fun e!3294730 () Bool)

(assert (=> d!1704528 (= res!2248228 e!3294730)))

(declare-fun res!2248225 () Bool)

(assert (=> d!1704528 (=> (not res!2248225) (not e!3294730))))

(declare-fun lt!2165639 () Option!15052)

(assert (=> d!1704528 (= res!2248225 (isDefined!11755 lt!2165639))))

(declare-fun e!3294731 () Option!15052)

(assert (=> d!1704528 (= lt!2165639 e!3294731)))

(declare-fun c!920286 () Bool)

(assert (=> d!1704528 (= c!920286 e!3294728)))

(declare-fun res!2248229 () Bool)

(assert (=> d!1704528 (=> (not res!2248229) (not e!3294728))))

(assert (=> d!1704528 (= res!2248229 (matchR!7126 (regTwo!30394 (regOne!30394 r!7292)) Nil!60998))))

(assert (=> d!1704528 (validRegex!6677 (regTwo!30394 (regOne!30394 r!7292)))))

(assert (=> d!1704528 (= (findConcatSeparation!1466 (regTwo!30394 (regOne!30394 r!7292)) lt!2165446 Nil!60998 s!2326 s!2326) lt!2165639)))

(declare-fun b!5300907 () Bool)

(assert (=> b!5300907 (= e!3294731 e!3294729)))

(declare-fun c!920287 () Bool)

(assert (=> b!5300907 (= c!920287 ((_ is Nil!60998) s!2326))))

(declare-fun b!5300908 () Bool)

(declare-fun res!2248227 () Bool)

(assert (=> b!5300908 (=> (not res!2248227) (not e!3294730))))

(assert (=> b!5300908 (= res!2248227 (matchR!7126 lt!2165446 (_2!35443 (get!20978 lt!2165639))))))

(declare-fun b!5300909 () Bool)

(assert (=> b!5300909 (= e!3294732 (not (isDefined!11755 lt!2165639)))))

(declare-fun b!5300910 () Bool)

(declare-fun res!2248226 () Bool)

(assert (=> b!5300910 (=> (not res!2248226) (not e!3294730))))

(assert (=> b!5300910 (= res!2248226 (matchR!7126 (regTwo!30394 (regOne!30394 r!7292)) (_1!35443 (get!20978 lt!2165639))))))

(declare-fun b!5300911 () Bool)

(assert (=> b!5300911 (= e!3294730 (= (++!13302 (_1!35443 (get!20978 lt!2165639)) (_2!35443 (get!20978 lt!2165639))) s!2326))))

(declare-fun b!5300912 () Bool)

(assert (=> b!5300912 (= e!3294729 None!15051)))

(declare-fun b!5300913 () Bool)

(assert (=> b!5300913 (= e!3294731 (Some!15051 (tuple2!64281 Nil!60998 s!2326)))))

(assert (= (and d!1704528 res!2248229) b!5300905))

(assert (= (and d!1704528 c!920286) b!5300913))

(assert (= (and d!1704528 (not c!920286)) b!5300907))

(assert (= (and b!5300907 c!920287) b!5300912))

(assert (= (and b!5300907 (not c!920287)) b!5300906))

(assert (= (and d!1704528 res!2248225) b!5300910))

(assert (= (and b!5300910 res!2248226) b!5300908))

(assert (= (and b!5300908 res!2248227) b!5300911))

(assert (= (and d!1704528 (not res!2248228)) b!5300909))

(assert (=> b!5300906 m!6337872))

(assert (=> b!5300906 m!6337872))

(assert (=> b!5300906 m!6337874))

(assert (=> b!5300906 m!6337876))

(assert (=> b!5300906 m!6337872))

(declare-fun m!6338216 () Bool)

(assert (=> b!5300906 m!6338216))

(declare-fun m!6338218 () Bool)

(assert (=> b!5300910 m!6338218))

(declare-fun m!6338220 () Bool)

(assert (=> b!5300910 m!6338220))

(declare-fun m!6338222 () Bool)

(assert (=> d!1704528 m!6338222))

(declare-fun m!6338224 () Bool)

(assert (=> d!1704528 m!6338224))

(declare-fun m!6338226 () Bool)

(assert (=> d!1704528 m!6338226))

(declare-fun m!6338228 () Bool)

(assert (=> b!5300905 m!6338228))

(assert (=> b!5300908 m!6338218))

(declare-fun m!6338230 () Bool)

(assert (=> b!5300908 m!6338230))

(assert (=> b!5300909 m!6338222))

(assert (=> b!5300911 m!6338218))

(declare-fun m!6338232 () Bool)

(assert (=> b!5300911 m!6338232))

(assert (=> b!5299953 d!1704528))

(declare-fun d!1704530 () Bool)

(assert (=> d!1704530 (= (Exists!2122 lambda!269086) (choose!39619 lambda!269086))))

(declare-fun bs!1229437 () Bool)

(assert (= bs!1229437 d!1704530))

(declare-fun m!6338234 () Bool)

(assert (=> bs!1229437 m!6338234))

(assert (=> b!5299953 d!1704530))

(declare-fun bs!1229438 () Bool)

(declare-fun d!1704532 () Bool)

(assert (= bs!1229438 (and d!1704532 d!1704440)))

(declare-fun lambda!269192 () Int)

(assert (=> bs!1229438 (not (= lambda!269192 lambda!269158))))

(declare-fun bs!1229439 () Bool)

(assert (= bs!1229439 (and d!1704532 b!5299946)))

(assert (=> bs!1229439 (= (and (= (regTwo!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165446 (regTwo!30394 r!7292))) (= lambda!269192 lambda!269081))))

(declare-fun bs!1229440 () Bool)

(assert (= bs!1229440 (and d!1704532 b!5299953)))

(assert (=> bs!1229440 (not (= lambda!269192 lambda!269087))))

(declare-fun bs!1229441 () Bool)

(assert (= bs!1229441 (and d!1704532 b!5300886)))

(assert (=> bs!1229441 (not (= lambda!269192 lambda!269190))))

(assert (=> bs!1229440 (= lambda!269192 lambda!269086)))

(declare-fun bs!1229442 () Bool)

(assert (= bs!1229442 (and d!1704532 b!5300891)))

(assert (=> bs!1229442 (not (= lambda!269192 lambda!269189))))

(assert (=> bs!1229440 (not (= lambda!269192 lambda!269085))))

(declare-fun bs!1229443 () Bool)

(assert (= bs!1229443 (and d!1704532 b!5300679)))

(assert (=> bs!1229443 (not (= lambda!269192 lambda!269171))))

(assert (=> bs!1229440 (= (and (= (regTwo!30394 (regOne!30394 r!7292)) (regOne!30394 (regOne!30394 r!7292))) (= lt!2165446 lt!2165459)) (= lambda!269192 lambda!269084))))

(assert (=> bs!1229438 (= (and (= (regTwo!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165446 (regTwo!30394 r!7292))) (= lambda!269192 lambda!269157))))

(declare-fun bs!1229444 () Bool)

(assert (= bs!1229444 (and d!1704532 b!5300684)))

(assert (=> bs!1229444 (not (= lambda!269192 lambda!269169))))

(assert (=> bs!1229439 (not (= lambda!269192 lambda!269082))))

(declare-fun bs!1229445 () Bool)

(assert (= bs!1229445 (and d!1704532 d!1704420)))

(assert (=> bs!1229445 (= (and (= (regTwo!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165446 (regTwo!30394 r!7292))) (= lambda!269192 lambda!269152))))

(assert (=> d!1704532 true))

(assert (=> d!1704532 true))

(assert (=> d!1704532 true))

(declare-fun lambda!269193 () Int)

(assert (=> bs!1229438 (= (and (= (regTwo!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165446 (regTwo!30394 r!7292))) (= lambda!269193 lambda!269158))))

(assert (=> bs!1229439 (not (= lambda!269193 lambda!269081))))

(assert (=> bs!1229440 (= lambda!269193 lambda!269087)))

(assert (=> bs!1229441 (= (and (= (regTwo!30394 (regOne!30394 r!7292)) (regOne!30394 lt!2165459)) (= lt!2165446 (regTwo!30394 lt!2165459))) (= lambda!269193 lambda!269190))))

(assert (=> bs!1229440 (not (= lambda!269193 lambda!269086))))

(assert (=> bs!1229442 (not (= lambda!269193 lambda!269189))))

(assert (=> bs!1229440 (= (and (= (regTwo!30394 (regOne!30394 r!7292)) (regOne!30394 (regOne!30394 r!7292))) (= lt!2165446 lt!2165459)) (= lambda!269193 lambda!269085))))

(declare-fun bs!1229446 () Bool)

(assert (= bs!1229446 d!1704532))

(assert (=> bs!1229446 (not (= lambda!269193 lambda!269192))))

(assert (=> bs!1229443 (= (and (= (regTwo!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165446 (regTwo!30394 r!7292))) (= lambda!269193 lambda!269171))))

(assert (=> bs!1229440 (not (= lambda!269193 lambda!269084))))

(assert (=> bs!1229438 (not (= lambda!269193 lambda!269157))))

(assert (=> bs!1229444 (not (= lambda!269193 lambda!269169))))

(assert (=> bs!1229439 (= (and (= (regTwo!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165446 (regTwo!30394 r!7292))) (= lambda!269193 lambda!269082))))

(assert (=> bs!1229445 (not (= lambda!269193 lambda!269152))))

(assert (=> d!1704532 true))

(assert (=> d!1704532 true))

(assert (=> d!1704532 true))

(assert (=> d!1704532 (= (Exists!2122 lambda!269192) (Exists!2122 lambda!269193))))

(declare-fun lt!2165641 () Unit!153282)

(assert (=> d!1704532 (= lt!2165641 (choose!39621 (regTwo!30394 (regOne!30394 r!7292)) lt!2165446 s!2326))))

(assert (=> d!1704532 (validRegex!6677 (regTwo!30394 (regOne!30394 r!7292)))))

(assert (=> d!1704532 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!776 (regTwo!30394 (regOne!30394 r!7292)) lt!2165446 s!2326) lt!2165641)))

(declare-fun m!6338236 () Bool)

(assert (=> bs!1229446 m!6338236))

(declare-fun m!6338238 () Bool)

(assert (=> bs!1229446 m!6338238))

(declare-fun m!6338240 () Bool)

(assert (=> bs!1229446 m!6338240))

(assert (=> bs!1229446 m!6338226))

(assert (=> b!5299953 d!1704532))

(declare-fun bs!1229447 () Bool)

(declare-fun d!1704534 () Bool)

(assert (= bs!1229447 (and d!1704534 d!1704294)))

(declare-fun lambda!269194 () Int)

(assert (=> bs!1229447 (= lambda!269194 lambda!269099)))

(declare-fun bs!1229448 () Bool)

(assert (= bs!1229448 (and d!1704534 d!1704324)))

(assert (=> bs!1229448 (= lambda!269194 lambda!269118)))

(declare-fun bs!1229449 () Bool)

(assert (= bs!1229449 (and d!1704534 d!1704510)))

(assert (=> bs!1229449 (= lambda!269194 lambda!269187)))

(declare-fun bs!1229450 () Bool)

(assert (= bs!1229450 (and d!1704534 d!1704522)))

(assert (=> bs!1229450 (= lambda!269194 lambda!269191)))

(declare-fun bs!1229451 () Bool)

(assert (= bs!1229451 (and d!1704534 d!1704498)))

(assert (=> bs!1229451 (= lambda!269194 lambda!269172)))

(declare-fun bs!1229452 () Bool)

(assert (= bs!1229452 (and d!1704534 d!1704304)))

(assert (=> bs!1229452 (= lambda!269194 lambda!269108)))

(declare-fun bs!1229453 () Bool)

(assert (= bs!1229453 (and d!1704534 d!1704512)))

(assert (=> bs!1229453 (= lambda!269194 lambda!269188)))

(declare-fun b!5300914 () Bool)

(declare-fun e!3294738 () Regex!14941)

(assert (=> b!5300914 (= e!3294738 (Concat!23786 (h!67447 (t!374328 (exprs!4825 (h!67448 zl!343)))) (generalisedConcat!610 (t!374328 (t!374328 (exprs!4825 (h!67448 zl!343)))))))))

(declare-fun b!5300915 () Bool)

(declare-fun e!3294737 () Bool)

(declare-fun lt!2165642 () Regex!14941)

(assert (=> b!5300915 (= e!3294737 (= lt!2165642 (head!11362 (t!374328 (exprs!4825 (h!67448 zl!343))))))))

(declare-fun b!5300916 () Bool)

(declare-fun e!3294736 () Bool)

(assert (=> b!5300916 (= e!3294736 (isEmptyExpr!857 lt!2165642))))

(declare-fun b!5300917 () Bool)

(declare-fun e!3294733 () Regex!14941)

(assert (=> b!5300917 (= e!3294733 e!3294738)))

(declare-fun c!920289 () Bool)

(assert (=> b!5300917 (= c!920289 ((_ is Cons!60999) (t!374328 (exprs!4825 (h!67448 zl!343)))))))

(declare-fun b!5300918 () Bool)

(declare-fun e!3294734 () Bool)

(assert (=> b!5300918 (= e!3294734 e!3294736)))

(declare-fun c!920291 () Bool)

(assert (=> b!5300918 (= c!920291 (isEmpty!32960 (t!374328 (exprs!4825 (h!67448 zl!343)))))))

(assert (=> d!1704534 e!3294734))

(declare-fun res!2248230 () Bool)

(assert (=> d!1704534 (=> (not res!2248230) (not e!3294734))))

(assert (=> d!1704534 (= res!2248230 (validRegex!6677 lt!2165642))))

(assert (=> d!1704534 (= lt!2165642 e!3294733)))

(declare-fun c!920290 () Bool)

(declare-fun e!3294735 () Bool)

(assert (=> d!1704534 (= c!920290 e!3294735)))

(declare-fun res!2248231 () Bool)

(assert (=> d!1704534 (=> (not res!2248231) (not e!3294735))))

(assert (=> d!1704534 (= res!2248231 ((_ is Cons!60999) (t!374328 (exprs!4825 (h!67448 zl!343)))))))

(assert (=> d!1704534 (forall!14357 (t!374328 (exprs!4825 (h!67448 zl!343))) lambda!269194)))

(assert (=> d!1704534 (= (generalisedConcat!610 (t!374328 (exprs!4825 (h!67448 zl!343)))) lt!2165642)))

(declare-fun b!5300919 () Bool)

(assert (=> b!5300919 (= e!3294733 (h!67447 (t!374328 (exprs!4825 (h!67448 zl!343)))))))

(declare-fun b!5300920 () Bool)

(assert (=> b!5300920 (= e!3294736 e!3294737)))

(declare-fun c!920288 () Bool)

(assert (=> b!5300920 (= c!920288 (isEmpty!32960 (tail!10459 (t!374328 (exprs!4825 (h!67448 zl!343))))))))

(declare-fun b!5300921 () Bool)

(assert (=> b!5300921 (= e!3294735 (isEmpty!32960 (t!374328 (t!374328 (exprs!4825 (h!67448 zl!343))))))))

(declare-fun b!5300922 () Bool)

(assert (=> b!5300922 (= e!3294737 (isConcat!380 lt!2165642))))

(declare-fun b!5300923 () Bool)

(assert (=> b!5300923 (= e!3294738 EmptyExpr!14941)))

(assert (= (and d!1704534 res!2248231) b!5300921))

(assert (= (and d!1704534 c!920290) b!5300919))

(assert (= (and d!1704534 (not c!920290)) b!5300917))

(assert (= (and b!5300917 c!920289) b!5300914))

(assert (= (and b!5300917 (not c!920289)) b!5300923))

(assert (= (and d!1704534 res!2248230) b!5300918))

(assert (= (and b!5300918 c!920291) b!5300916))

(assert (= (and b!5300918 (not c!920291)) b!5300920))

(assert (= (and b!5300920 c!920288) b!5300915))

(assert (= (and b!5300920 (not c!920288)) b!5300922))

(declare-fun m!6338242 () Bool)

(assert (=> b!5300921 m!6338242))

(declare-fun m!6338244 () Bool)

(assert (=> d!1704534 m!6338244))

(declare-fun m!6338246 () Bool)

(assert (=> d!1704534 m!6338246))

(declare-fun m!6338248 () Bool)

(assert (=> b!5300920 m!6338248))

(assert (=> b!5300920 m!6338248))

(declare-fun m!6338250 () Bool)

(assert (=> b!5300920 m!6338250))

(declare-fun m!6338252 () Bool)

(assert (=> b!5300914 m!6338252))

(declare-fun m!6338254 () Bool)

(assert (=> b!5300922 m!6338254))

(assert (=> b!5300918 m!6337394))

(declare-fun m!6338256 () Bool)

(assert (=> b!5300916 m!6338256))

(declare-fun m!6338258 () Bool)

(assert (=> b!5300915 m!6338258))

(assert (=> b!5299953 d!1704534))

(declare-fun d!1704536 () Bool)

(assert (=> d!1704536 (= (matchR!7126 lt!2165480 s!2326) (matchZipper!1185 lt!2165452 s!2326))))

(declare-fun lt!2165645 () Unit!153282)

(declare-fun choose!39625 ((InoxSet Context!8650) List!61124 Regex!14941 List!61122) Unit!153282)

(assert (=> d!1704536 (= lt!2165645 (choose!39625 lt!2165452 lt!2165486 lt!2165480 s!2326))))

(assert (=> d!1704536 (validRegex!6677 lt!2165480)))

(assert (=> d!1704536 (= (theoremZipperRegexEquiv!351 lt!2165452 lt!2165486 lt!2165480 s!2326) lt!2165645)))

(declare-fun bs!1229454 () Bool)

(assert (= bs!1229454 d!1704536))

(assert (=> bs!1229454 m!6337330))

(assert (=> bs!1229454 m!6337326))

(declare-fun m!6338260 () Bool)

(assert (=> bs!1229454 m!6338260))

(assert (=> bs!1229454 m!6338212))

(assert (=> b!5299953 d!1704536))

(declare-fun bm!377928 () Bool)

(declare-fun call!377933 () Bool)

(assert (=> bm!377928 (= call!377933 (isEmpty!32963 s!2326))))

(declare-fun b!5300924 () Bool)

(declare-fun res!2248232 () Bool)

(declare-fun e!3294739 () Bool)

(assert (=> b!5300924 (=> res!2248232 e!3294739)))

(assert (=> b!5300924 (= res!2248232 (not (isEmpty!32963 (tail!10460 s!2326))))))

(declare-fun b!5300925 () Bool)

(declare-fun e!3294745 () Bool)

(assert (=> b!5300925 (= e!3294745 (nullable!5110 lt!2165459))))

(declare-fun b!5300926 () Bool)

(declare-fun res!2248239 () Bool)

(declare-fun e!3294740 () Bool)

(assert (=> b!5300926 (=> (not res!2248239) (not e!3294740))))

(assert (=> b!5300926 (= res!2248239 (not call!377933))))

(declare-fun b!5300928 () Bool)

(declare-fun res!2248237 () Bool)

(declare-fun e!3294741 () Bool)

(assert (=> b!5300928 (=> res!2248237 e!3294741)))

(assert (=> b!5300928 (= res!2248237 (not ((_ is ElementMatch!14941) lt!2165459)))))

(declare-fun e!3294743 () Bool)

(assert (=> b!5300928 (= e!3294743 e!3294741)))

(declare-fun b!5300929 () Bool)

(assert (=> b!5300929 (= e!3294739 (not (= (head!11363 s!2326) (c!919991 lt!2165459))))))

(declare-fun b!5300930 () Bool)

(declare-fun e!3294744 () Bool)

(assert (=> b!5300930 (= e!3294744 e!3294739)))

(declare-fun res!2248236 () Bool)

(assert (=> b!5300930 (=> res!2248236 e!3294739)))

(assert (=> b!5300930 (= res!2248236 call!377933)))

(declare-fun b!5300931 () Bool)

(declare-fun e!3294742 () Bool)

(declare-fun lt!2165646 () Bool)

(assert (=> b!5300931 (= e!3294742 (= lt!2165646 call!377933))))

(declare-fun b!5300932 () Bool)

(assert (=> b!5300932 (= e!3294742 e!3294743)))

(declare-fun c!920293 () Bool)

(assert (=> b!5300932 (= c!920293 ((_ is EmptyLang!14941) lt!2165459))))

(declare-fun b!5300933 () Bool)

(assert (=> b!5300933 (= e!3294745 (matchR!7126 (derivativeStep!4143 lt!2165459 (head!11363 s!2326)) (tail!10460 s!2326)))))

(declare-fun b!5300927 () Bool)

(declare-fun res!2248235 () Bool)

(assert (=> b!5300927 (=> res!2248235 e!3294741)))

(assert (=> b!5300927 (= res!2248235 e!3294740)))

(declare-fun res!2248234 () Bool)

(assert (=> b!5300927 (=> (not res!2248234) (not e!3294740))))

(assert (=> b!5300927 (= res!2248234 lt!2165646)))

(declare-fun d!1704538 () Bool)

(assert (=> d!1704538 e!3294742))

(declare-fun c!920294 () Bool)

(assert (=> d!1704538 (= c!920294 ((_ is EmptyExpr!14941) lt!2165459))))

(assert (=> d!1704538 (= lt!2165646 e!3294745)))

(declare-fun c!920292 () Bool)

(assert (=> d!1704538 (= c!920292 (isEmpty!32963 s!2326))))

(assert (=> d!1704538 (validRegex!6677 lt!2165459)))

(assert (=> d!1704538 (= (matchR!7126 lt!2165459 s!2326) lt!2165646)))

(declare-fun b!5300934 () Bool)

(assert (=> b!5300934 (= e!3294743 (not lt!2165646))))

(declare-fun b!5300935 () Bool)

(declare-fun res!2248233 () Bool)

(assert (=> b!5300935 (=> (not res!2248233) (not e!3294740))))

(assert (=> b!5300935 (= res!2248233 (isEmpty!32963 (tail!10460 s!2326)))))

(declare-fun b!5300936 () Bool)

(assert (=> b!5300936 (= e!3294740 (= (head!11363 s!2326) (c!919991 lt!2165459)))))

(declare-fun b!5300937 () Bool)

(assert (=> b!5300937 (= e!3294741 e!3294744)))

(declare-fun res!2248238 () Bool)

(assert (=> b!5300937 (=> (not res!2248238) (not e!3294744))))

(assert (=> b!5300937 (= res!2248238 (not lt!2165646))))

(assert (= (and d!1704538 c!920292) b!5300925))

(assert (= (and d!1704538 (not c!920292)) b!5300933))

(assert (= (and d!1704538 c!920294) b!5300931))

(assert (= (and d!1704538 (not c!920294)) b!5300932))

(assert (= (and b!5300932 c!920293) b!5300934))

(assert (= (and b!5300932 (not c!920293)) b!5300928))

(assert (= (and b!5300928 (not res!2248237)) b!5300927))

(assert (= (and b!5300927 res!2248234) b!5300926))

(assert (= (and b!5300926 res!2248239) b!5300935))

(assert (= (and b!5300935 res!2248233) b!5300936))

(assert (= (and b!5300927 (not res!2248235)) b!5300937))

(assert (= (and b!5300937 res!2248238) b!5300930))

(assert (= (and b!5300930 (not res!2248236)) b!5300924))

(assert (= (and b!5300924 (not res!2248232)) b!5300929))

(assert (= (or b!5300931 b!5300926 b!5300930) bm!377928))

(declare-fun m!6338262 () Bool)

(assert (=> b!5300925 m!6338262))

(assert (=> bm!377928 m!6338040))

(assert (=> b!5300929 m!6338050))

(assert (=> b!5300933 m!6338050))

(assert (=> b!5300933 m!6338050))

(declare-fun m!6338264 () Bool)

(assert (=> b!5300933 m!6338264))

(assert (=> b!5300933 m!6338054))

(assert (=> b!5300933 m!6338264))

(assert (=> b!5300933 m!6338054))

(declare-fun m!6338266 () Bool)

(assert (=> b!5300933 m!6338266))

(assert (=> b!5300936 m!6338050))

(assert (=> d!1704538 m!6338040))

(assert (=> d!1704538 m!6338188))

(assert (=> b!5300935 m!6338054))

(assert (=> b!5300935 m!6338054))

(assert (=> b!5300935 m!6338058))

(assert (=> b!5300924 m!6338054))

(assert (=> b!5300924 m!6338054))

(assert (=> b!5300924 m!6338058))

(assert (=> b!5299953 d!1704538))

(declare-fun d!1704540 () Bool)

(declare-fun c!920295 () Bool)

(assert (=> d!1704540 (= c!920295 (isEmpty!32963 s!2326))))

(declare-fun e!3294746 () Bool)

(assert (=> d!1704540 (= (matchZipper!1185 lt!2165443 s!2326) e!3294746)))

(declare-fun b!5300938 () Bool)

(assert (=> b!5300938 (= e!3294746 (nullableZipper!1322 lt!2165443))))

(declare-fun b!5300939 () Bool)

(assert (=> b!5300939 (= e!3294746 (matchZipper!1185 (derivationStepZipper!1184 lt!2165443 (head!11363 s!2326)) (tail!10460 s!2326)))))

(assert (= (and d!1704540 c!920295) b!5300938))

(assert (= (and d!1704540 (not c!920295)) b!5300939))

(assert (=> d!1704540 m!6338040))

(declare-fun m!6338268 () Bool)

(assert (=> b!5300938 m!6338268))

(assert (=> b!5300939 m!6338050))

(assert (=> b!5300939 m!6338050))

(declare-fun m!6338270 () Bool)

(assert (=> b!5300939 m!6338270))

(assert (=> b!5300939 m!6338054))

(assert (=> b!5300939 m!6338270))

(assert (=> b!5300939 m!6338054))

(declare-fun m!6338272 () Bool)

(assert (=> b!5300939 m!6338272))

(assert (=> b!5299953 d!1704540))

(declare-fun bs!1229455 () Bool)

(declare-fun d!1704542 () Bool)

(assert (= bs!1229455 (and d!1704542 d!1704440)))

(declare-fun lambda!269195 () Int)

(assert (=> bs!1229455 (not (= lambda!269195 lambda!269158))))

(declare-fun bs!1229456 () Bool)

(assert (= bs!1229456 (and d!1704542 b!5299946)))

(assert (=> bs!1229456 (= (and (= (regOne!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165459 (regTwo!30394 r!7292))) (= lambda!269195 lambda!269081))))

(declare-fun bs!1229457 () Bool)

(assert (= bs!1229457 (and d!1704542 d!1704532)))

(assert (=> bs!1229457 (not (= lambda!269195 lambda!269193))))

(declare-fun bs!1229458 () Bool)

(assert (= bs!1229458 (and d!1704542 b!5299953)))

(assert (=> bs!1229458 (not (= lambda!269195 lambda!269087))))

(declare-fun bs!1229459 () Bool)

(assert (= bs!1229459 (and d!1704542 b!5300886)))

(assert (=> bs!1229459 (not (= lambda!269195 lambda!269190))))

(assert (=> bs!1229458 (= (and (= (regOne!30394 (regOne!30394 r!7292)) (regTwo!30394 (regOne!30394 r!7292))) (= lt!2165459 lt!2165446)) (= lambda!269195 lambda!269086))))

(declare-fun bs!1229460 () Bool)

(assert (= bs!1229460 (and d!1704542 b!5300891)))

(assert (=> bs!1229460 (not (= lambda!269195 lambda!269189))))

(assert (=> bs!1229458 (not (= lambda!269195 lambda!269085))))

(assert (=> bs!1229457 (= (and (= (regOne!30394 (regOne!30394 r!7292)) (regTwo!30394 (regOne!30394 r!7292))) (= lt!2165459 lt!2165446)) (= lambda!269195 lambda!269192))))

(declare-fun bs!1229461 () Bool)

(assert (= bs!1229461 (and d!1704542 b!5300679)))

(assert (=> bs!1229461 (not (= lambda!269195 lambda!269171))))

(assert (=> bs!1229458 (= lambda!269195 lambda!269084)))

(assert (=> bs!1229455 (= (and (= (regOne!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165459 (regTwo!30394 r!7292))) (= lambda!269195 lambda!269157))))

(declare-fun bs!1229462 () Bool)

(assert (= bs!1229462 (and d!1704542 b!5300684)))

(assert (=> bs!1229462 (not (= lambda!269195 lambda!269169))))

(assert (=> bs!1229456 (not (= lambda!269195 lambda!269082))))

(declare-fun bs!1229463 () Bool)

(assert (= bs!1229463 (and d!1704542 d!1704420)))

(assert (=> bs!1229463 (= (and (= (regOne!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165459 (regTwo!30394 r!7292))) (= lambda!269195 lambda!269152))))

(assert (=> d!1704542 true))

(assert (=> d!1704542 true))

(assert (=> d!1704542 true))

(assert (=> d!1704542 (= (isDefined!11755 (findConcatSeparation!1466 (regOne!30394 (regOne!30394 r!7292)) lt!2165459 Nil!60998 s!2326 s!2326)) (Exists!2122 lambda!269195))))

(declare-fun lt!2165647 () Unit!153282)

(assert (=> d!1704542 (= lt!2165647 (choose!39620 (regOne!30394 (regOne!30394 r!7292)) lt!2165459 s!2326))))

(assert (=> d!1704542 (validRegex!6677 (regOne!30394 (regOne!30394 r!7292)))))

(assert (=> d!1704542 (= (lemmaFindConcatSeparationEquivalentToExists!1230 (regOne!30394 (regOne!30394 r!7292)) lt!2165459 s!2326) lt!2165647)))

(declare-fun bs!1229464 () Bool)

(assert (= bs!1229464 d!1704542))

(declare-fun m!6338274 () Bool)

(assert (=> bs!1229464 m!6338274))

(declare-fun m!6338276 () Bool)

(assert (=> bs!1229464 m!6338276))

(assert (=> bs!1229464 m!6337304))

(declare-fun m!6338278 () Bool)

(assert (=> bs!1229464 m!6338278))

(assert (=> bs!1229464 m!6337304))

(assert (=> bs!1229464 m!6337322))

(assert (=> b!5299953 d!1704542))

(declare-fun bs!1229465 () Bool)

(declare-fun d!1704544 () Bool)

(assert (= bs!1229465 (and d!1704544 d!1704542)))

(declare-fun lambda!269196 () Int)

(assert (=> bs!1229465 (= (and (= (regTwo!30394 (regOne!30394 r!7292)) (regOne!30394 (regOne!30394 r!7292))) (= lt!2165446 lt!2165459)) (= lambda!269196 lambda!269195))))

(declare-fun bs!1229466 () Bool)

(assert (= bs!1229466 (and d!1704544 d!1704440)))

(assert (=> bs!1229466 (not (= lambda!269196 lambda!269158))))

(declare-fun bs!1229467 () Bool)

(assert (= bs!1229467 (and d!1704544 b!5299946)))

(assert (=> bs!1229467 (= (and (= (regTwo!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165446 (regTwo!30394 r!7292))) (= lambda!269196 lambda!269081))))

(declare-fun bs!1229468 () Bool)

(assert (= bs!1229468 (and d!1704544 d!1704532)))

(assert (=> bs!1229468 (not (= lambda!269196 lambda!269193))))

(declare-fun bs!1229469 () Bool)

(assert (= bs!1229469 (and d!1704544 b!5299953)))

(assert (=> bs!1229469 (not (= lambda!269196 lambda!269087))))

(declare-fun bs!1229470 () Bool)

(assert (= bs!1229470 (and d!1704544 b!5300886)))

(assert (=> bs!1229470 (not (= lambda!269196 lambda!269190))))

(assert (=> bs!1229469 (= lambda!269196 lambda!269086)))

(declare-fun bs!1229471 () Bool)

(assert (= bs!1229471 (and d!1704544 b!5300891)))

(assert (=> bs!1229471 (not (= lambda!269196 lambda!269189))))

(assert (=> bs!1229469 (not (= lambda!269196 lambda!269085))))

(assert (=> bs!1229468 (= lambda!269196 lambda!269192)))

(declare-fun bs!1229472 () Bool)

(assert (= bs!1229472 (and d!1704544 b!5300679)))

(assert (=> bs!1229472 (not (= lambda!269196 lambda!269171))))

(assert (=> bs!1229469 (= (and (= (regTwo!30394 (regOne!30394 r!7292)) (regOne!30394 (regOne!30394 r!7292))) (= lt!2165446 lt!2165459)) (= lambda!269196 lambda!269084))))

(assert (=> bs!1229466 (= (and (= (regTwo!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165446 (regTwo!30394 r!7292))) (= lambda!269196 lambda!269157))))

(declare-fun bs!1229473 () Bool)

(assert (= bs!1229473 (and d!1704544 b!5300684)))

(assert (=> bs!1229473 (not (= lambda!269196 lambda!269169))))

(assert (=> bs!1229467 (not (= lambda!269196 lambda!269082))))

(declare-fun bs!1229474 () Bool)

(assert (= bs!1229474 (and d!1704544 d!1704420)))

(assert (=> bs!1229474 (= (and (= (regTwo!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165446 (regTwo!30394 r!7292))) (= lambda!269196 lambda!269152))))

(assert (=> d!1704544 true))

(assert (=> d!1704544 true))

(assert (=> d!1704544 true))

(assert (=> d!1704544 (= (isDefined!11755 (findConcatSeparation!1466 (regTwo!30394 (regOne!30394 r!7292)) lt!2165446 Nil!60998 s!2326 s!2326)) (Exists!2122 lambda!269196))))

(declare-fun lt!2165648 () Unit!153282)

(assert (=> d!1704544 (= lt!2165648 (choose!39620 (regTwo!30394 (regOne!30394 r!7292)) lt!2165446 s!2326))))

(assert (=> d!1704544 (validRegex!6677 (regTwo!30394 (regOne!30394 r!7292)))))

(assert (=> d!1704544 (= (lemmaFindConcatSeparationEquivalentToExists!1230 (regTwo!30394 (regOne!30394 r!7292)) lt!2165446 s!2326) lt!2165648)))

(declare-fun bs!1229475 () Bool)

(assert (= bs!1229475 d!1704544))

(declare-fun m!6338280 () Bool)

(assert (=> bs!1229475 m!6338280))

(assert (=> bs!1229475 m!6338226))

(assert (=> bs!1229475 m!6337318))

(declare-fun m!6338282 () Bool)

(assert (=> bs!1229475 m!6338282))

(assert (=> bs!1229475 m!6337318))

(assert (=> bs!1229475 m!6337320))

(assert (=> b!5299953 d!1704544))

(declare-fun d!1704546 () Bool)

(assert (=> d!1704546 (= (Exists!2122 lambda!269087) (choose!39619 lambda!269087))))

(declare-fun bs!1229476 () Bool)

(assert (= bs!1229476 d!1704546))

(declare-fun m!6338284 () Bool)

(assert (=> bs!1229476 m!6338284))

(assert (=> b!5299953 d!1704546))

(declare-fun d!1704548 () Bool)

(assert (=> d!1704548 (= (matchR!7126 lt!2165459 s!2326) (matchZipper!1185 lt!2165443 s!2326))))

(declare-fun lt!2165649 () Unit!153282)

(assert (=> d!1704548 (= lt!2165649 (choose!39625 lt!2165443 (Cons!61000 lt!2165467 Nil!61000) lt!2165459 s!2326))))

(assert (=> d!1704548 (validRegex!6677 lt!2165459)))

(assert (=> d!1704548 (= (theoremZipperRegexEquiv!351 lt!2165443 (Cons!61000 lt!2165467 Nil!61000) lt!2165459 s!2326) lt!2165649)))

(declare-fun bs!1229477 () Bool)

(assert (= bs!1229477 d!1704548))

(assert (=> bs!1229477 m!6337300))

(assert (=> bs!1229477 m!6337314))

(declare-fun m!6338286 () Bool)

(assert (=> bs!1229477 m!6338286))

(assert (=> bs!1229477 m!6338188))

(assert (=> b!5299953 d!1704548))

(declare-fun d!1704550 () Bool)

(assert (=> d!1704550 (= (isDefined!11755 (findConcatSeparation!1466 (regOne!30394 (regOne!30394 r!7292)) lt!2165459 Nil!60998 s!2326 s!2326)) (not (isEmpty!32964 (findConcatSeparation!1466 (regOne!30394 (regOne!30394 r!7292)) lt!2165459 Nil!60998 s!2326 s!2326))))))

(declare-fun bs!1229478 () Bool)

(assert (= bs!1229478 d!1704550))

(assert (=> bs!1229478 m!6337304))

(declare-fun m!6338288 () Bool)

(assert (=> bs!1229478 m!6338288))

(assert (=> b!5299953 d!1704550))

(declare-fun bs!1229479 () Bool)

(declare-fun d!1704552 () Bool)

(assert (= bs!1229479 (and d!1704552 d!1704542)))

(declare-fun lambda!269197 () Int)

(assert (=> bs!1229479 (= lambda!269197 lambda!269195)))

(declare-fun bs!1229480 () Bool)

(assert (= bs!1229480 (and d!1704552 d!1704440)))

(assert (=> bs!1229480 (not (= lambda!269197 lambda!269158))))

(declare-fun bs!1229481 () Bool)

(assert (= bs!1229481 (and d!1704552 b!5299946)))

(assert (=> bs!1229481 (= (and (= (regOne!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165459 (regTwo!30394 r!7292))) (= lambda!269197 lambda!269081))))

(declare-fun bs!1229482 () Bool)

(assert (= bs!1229482 (and d!1704552 d!1704532)))

(assert (=> bs!1229482 (not (= lambda!269197 lambda!269193))))

(declare-fun bs!1229483 () Bool)

(assert (= bs!1229483 (and d!1704552 b!5299953)))

(assert (=> bs!1229483 (not (= lambda!269197 lambda!269087))))

(declare-fun bs!1229484 () Bool)

(assert (= bs!1229484 (and d!1704552 b!5300886)))

(assert (=> bs!1229484 (not (= lambda!269197 lambda!269190))))

(assert (=> bs!1229483 (= (and (= (regOne!30394 (regOne!30394 r!7292)) (regTwo!30394 (regOne!30394 r!7292))) (= lt!2165459 lt!2165446)) (= lambda!269197 lambda!269086))))

(declare-fun bs!1229485 () Bool)

(assert (= bs!1229485 (and d!1704552 b!5300891)))

(assert (=> bs!1229485 (not (= lambda!269197 lambda!269189))))

(assert (=> bs!1229483 (not (= lambda!269197 lambda!269085))))

(assert (=> bs!1229482 (= (and (= (regOne!30394 (regOne!30394 r!7292)) (regTwo!30394 (regOne!30394 r!7292))) (= lt!2165459 lt!2165446)) (= lambda!269197 lambda!269192))))

(declare-fun bs!1229486 () Bool)

(assert (= bs!1229486 (and d!1704552 b!5300679)))

(assert (=> bs!1229486 (not (= lambda!269197 lambda!269171))))

(assert (=> bs!1229483 (= lambda!269197 lambda!269084)))

(assert (=> bs!1229480 (= (and (= (regOne!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165459 (regTwo!30394 r!7292))) (= lambda!269197 lambda!269157))))

(declare-fun bs!1229487 () Bool)

(assert (= bs!1229487 (and d!1704552 b!5300684)))

(assert (=> bs!1229487 (not (= lambda!269197 lambda!269169))))

(assert (=> bs!1229481 (not (= lambda!269197 lambda!269082))))

(declare-fun bs!1229488 () Bool)

(assert (= bs!1229488 (and d!1704552 d!1704544)))

(assert (=> bs!1229488 (= (and (= (regOne!30394 (regOne!30394 r!7292)) (regTwo!30394 (regOne!30394 r!7292))) (= lt!2165459 lt!2165446)) (= lambda!269197 lambda!269196))))

(declare-fun bs!1229489 () Bool)

(assert (= bs!1229489 (and d!1704552 d!1704420)))

(assert (=> bs!1229489 (= (and (= (regOne!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165459 (regTwo!30394 r!7292))) (= lambda!269197 lambda!269152))))

(assert (=> d!1704552 true))

(assert (=> d!1704552 true))

(assert (=> d!1704552 true))

(declare-fun lambda!269198 () Int)

(assert (=> bs!1229479 (not (= lambda!269198 lambda!269195))))

(assert (=> bs!1229481 (not (= lambda!269198 lambda!269081))))

(assert (=> bs!1229482 (= (and (= (regOne!30394 (regOne!30394 r!7292)) (regTwo!30394 (regOne!30394 r!7292))) (= lt!2165459 lt!2165446)) (= lambda!269198 lambda!269193))))

(assert (=> bs!1229483 (= (and (= (regOne!30394 (regOne!30394 r!7292)) (regTwo!30394 (regOne!30394 r!7292))) (= lt!2165459 lt!2165446)) (= lambda!269198 lambda!269087))))

(assert (=> bs!1229484 (= (and (= (regOne!30394 (regOne!30394 r!7292)) (regOne!30394 lt!2165459)) (= lt!2165459 (regTwo!30394 lt!2165459))) (= lambda!269198 lambda!269190))))

(assert (=> bs!1229483 (not (= lambda!269198 lambda!269086))))

(assert (=> bs!1229485 (not (= lambda!269198 lambda!269189))))

(assert (=> bs!1229483 (= lambda!269198 lambda!269085)))

(assert (=> bs!1229482 (not (= lambda!269198 lambda!269192))))

(assert (=> bs!1229480 (= (and (= (regOne!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165459 (regTwo!30394 r!7292))) (= lambda!269198 lambda!269158))))

(declare-fun bs!1229490 () Bool)

(assert (= bs!1229490 d!1704552))

(assert (=> bs!1229490 (not (= lambda!269198 lambda!269197))))

(assert (=> bs!1229486 (= (and (= (regOne!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165459 (regTwo!30394 r!7292))) (= lambda!269198 lambda!269171))))

(assert (=> bs!1229483 (not (= lambda!269198 lambda!269084))))

(assert (=> bs!1229480 (not (= lambda!269198 lambda!269157))))

(assert (=> bs!1229487 (not (= lambda!269198 lambda!269169))))

(assert (=> bs!1229481 (= (and (= (regOne!30394 (regOne!30394 r!7292)) (regOne!30394 r!7292)) (= lt!2165459 (regTwo!30394 r!7292))) (= lambda!269198 lambda!269082))))

(assert (=> bs!1229488 (not (= lambda!269198 lambda!269196))))

(assert (=> bs!1229489 (not (= lambda!269198 lambda!269152))))

(assert (=> d!1704552 true))

(assert (=> d!1704552 true))

(assert (=> d!1704552 true))

(assert (=> d!1704552 (= (Exists!2122 lambda!269197) (Exists!2122 lambda!269198))))

(declare-fun lt!2165650 () Unit!153282)

(assert (=> d!1704552 (= lt!2165650 (choose!39621 (regOne!30394 (regOne!30394 r!7292)) lt!2165459 s!2326))))

(assert (=> d!1704552 (validRegex!6677 (regOne!30394 (regOne!30394 r!7292)))))

(assert (=> d!1704552 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!776 (regOne!30394 (regOne!30394 r!7292)) lt!2165459 s!2326) lt!2165650)))

(declare-fun m!6338290 () Bool)

(assert (=> bs!1229490 m!6338290))

(declare-fun m!6338292 () Bool)

(assert (=> bs!1229490 m!6338292))

(declare-fun m!6338294 () Bool)

(assert (=> bs!1229490 m!6338294))

(assert (=> bs!1229490 m!6338276))

(assert (=> b!5299953 d!1704552))

(declare-fun d!1704554 () Bool)

(declare-fun c!920296 () Bool)

(assert (=> d!1704554 (= c!920296 (isEmpty!32963 s!2326))))

(declare-fun e!3294747 () Bool)

(assert (=> d!1704554 (= (matchZipper!1185 lt!2165452 s!2326) e!3294747)))

(declare-fun b!5300940 () Bool)

(assert (=> b!5300940 (= e!3294747 (nullableZipper!1322 lt!2165452))))

(declare-fun b!5300941 () Bool)

(assert (=> b!5300941 (= e!3294747 (matchZipper!1185 (derivationStepZipper!1184 lt!2165452 (head!11363 s!2326)) (tail!10460 s!2326)))))

(assert (= (and d!1704554 c!920296) b!5300940))

(assert (= (and d!1704554 (not c!920296)) b!5300941))

(assert (=> d!1704554 m!6338040))

(declare-fun m!6338296 () Bool)

(assert (=> b!5300940 m!6338296))

(assert (=> b!5300941 m!6338050))

(assert (=> b!5300941 m!6338050))

(declare-fun m!6338298 () Bool)

(assert (=> b!5300941 m!6338298))

(assert (=> b!5300941 m!6338054))

(assert (=> b!5300941 m!6338298))

(assert (=> b!5300941 m!6338054))

(declare-fun m!6338300 () Bool)

(assert (=> b!5300941 m!6338300))

(assert (=> b!5299953 d!1704554))

(declare-fun d!1704556 () Bool)

(assert (=> d!1704556 (= (Exists!2122 lambda!269084) (choose!39619 lambda!269084))))

(declare-fun bs!1229491 () Bool)

(assert (= bs!1229491 d!1704556))

(declare-fun m!6338302 () Bool)

(assert (=> bs!1229491 m!6338302))

(assert (=> b!5299953 d!1704556))

(declare-fun bm!377929 () Bool)

(declare-fun call!377934 () Bool)

(assert (=> bm!377929 (= call!377934 (isEmpty!32963 s!2326))))

(declare-fun b!5300942 () Bool)

(declare-fun res!2248240 () Bool)

(declare-fun e!3294748 () Bool)

(assert (=> b!5300942 (=> res!2248240 e!3294748)))

(assert (=> b!5300942 (= res!2248240 (not (isEmpty!32963 (tail!10460 s!2326))))))

(declare-fun b!5300943 () Bool)

(declare-fun e!3294754 () Bool)

(assert (=> b!5300943 (= e!3294754 (nullable!5110 lt!2165480))))

(declare-fun b!5300944 () Bool)

(declare-fun res!2248247 () Bool)

(declare-fun e!3294749 () Bool)

(assert (=> b!5300944 (=> (not res!2248247) (not e!3294749))))

(assert (=> b!5300944 (= res!2248247 (not call!377934))))

(declare-fun b!5300946 () Bool)

(declare-fun res!2248245 () Bool)

(declare-fun e!3294750 () Bool)

(assert (=> b!5300946 (=> res!2248245 e!3294750)))

(assert (=> b!5300946 (= res!2248245 (not ((_ is ElementMatch!14941) lt!2165480)))))

(declare-fun e!3294752 () Bool)

(assert (=> b!5300946 (= e!3294752 e!3294750)))

(declare-fun b!5300947 () Bool)

(assert (=> b!5300947 (= e!3294748 (not (= (head!11363 s!2326) (c!919991 lt!2165480))))))

(declare-fun b!5300948 () Bool)

(declare-fun e!3294753 () Bool)

(assert (=> b!5300948 (= e!3294753 e!3294748)))

(declare-fun res!2248244 () Bool)

(assert (=> b!5300948 (=> res!2248244 e!3294748)))

(assert (=> b!5300948 (= res!2248244 call!377934)))

(declare-fun b!5300949 () Bool)

(declare-fun e!3294751 () Bool)

(declare-fun lt!2165651 () Bool)

(assert (=> b!5300949 (= e!3294751 (= lt!2165651 call!377934))))

(declare-fun b!5300950 () Bool)

(assert (=> b!5300950 (= e!3294751 e!3294752)))

(declare-fun c!920298 () Bool)

(assert (=> b!5300950 (= c!920298 ((_ is EmptyLang!14941) lt!2165480))))

(declare-fun b!5300951 () Bool)

(assert (=> b!5300951 (= e!3294754 (matchR!7126 (derivativeStep!4143 lt!2165480 (head!11363 s!2326)) (tail!10460 s!2326)))))

(declare-fun b!5300945 () Bool)

(declare-fun res!2248243 () Bool)

(assert (=> b!5300945 (=> res!2248243 e!3294750)))

(assert (=> b!5300945 (= res!2248243 e!3294749)))

(declare-fun res!2248242 () Bool)

(assert (=> b!5300945 (=> (not res!2248242) (not e!3294749))))

(assert (=> b!5300945 (= res!2248242 lt!2165651)))

(declare-fun d!1704558 () Bool)

(assert (=> d!1704558 e!3294751))

(declare-fun c!920299 () Bool)

(assert (=> d!1704558 (= c!920299 ((_ is EmptyExpr!14941) lt!2165480))))

(assert (=> d!1704558 (= lt!2165651 e!3294754)))

(declare-fun c!920297 () Bool)

(assert (=> d!1704558 (= c!920297 (isEmpty!32963 s!2326))))

(assert (=> d!1704558 (validRegex!6677 lt!2165480)))

(assert (=> d!1704558 (= (matchR!7126 lt!2165480 s!2326) lt!2165651)))

(declare-fun b!5300952 () Bool)

(assert (=> b!5300952 (= e!3294752 (not lt!2165651))))

(declare-fun b!5300953 () Bool)

(declare-fun res!2248241 () Bool)

(assert (=> b!5300953 (=> (not res!2248241) (not e!3294749))))

(assert (=> b!5300953 (= res!2248241 (isEmpty!32963 (tail!10460 s!2326)))))

(declare-fun b!5300954 () Bool)

(assert (=> b!5300954 (= e!3294749 (= (head!11363 s!2326) (c!919991 lt!2165480)))))

(declare-fun b!5300955 () Bool)

(assert (=> b!5300955 (= e!3294750 e!3294753)))

(declare-fun res!2248246 () Bool)

(assert (=> b!5300955 (=> (not res!2248246) (not e!3294753))))

(assert (=> b!5300955 (= res!2248246 (not lt!2165651))))

(assert (= (and d!1704558 c!920297) b!5300943))

(assert (= (and d!1704558 (not c!920297)) b!5300951))

(assert (= (and d!1704558 c!920299) b!5300949))

(assert (= (and d!1704558 (not c!920299)) b!5300950))

(assert (= (and b!5300950 c!920298) b!5300952))

(assert (= (and b!5300950 (not c!920298)) b!5300946))

(assert (= (and b!5300946 (not res!2248245)) b!5300945))

(assert (= (and b!5300945 res!2248242) b!5300944))

(assert (= (and b!5300944 res!2248247) b!5300953))

(assert (= (and b!5300953 res!2248241) b!5300954))

(assert (= (and b!5300945 (not res!2248243)) b!5300955))

(assert (= (and b!5300955 res!2248246) b!5300948))

(assert (= (and b!5300948 (not res!2248244)) b!5300942))

(assert (= (and b!5300942 (not res!2248240)) b!5300947))

(assert (= (or b!5300949 b!5300944 b!5300948) bm!377929))

(declare-fun m!6338304 () Bool)

(assert (=> b!5300943 m!6338304))

(assert (=> bm!377929 m!6338040))

(assert (=> b!5300947 m!6338050))

(assert (=> b!5300951 m!6338050))

(assert (=> b!5300951 m!6338050))

(declare-fun m!6338306 () Bool)

(assert (=> b!5300951 m!6338306))

(assert (=> b!5300951 m!6338054))

(assert (=> b!5300951 m!6338306))

(assert (=> b!5300951 m!6338054))

(declare-fun m!6338308 () Bool)

(assert (=> b!5300951 m!6338308))

(assert (=> b!5300954 m!6338050))

(assert (=> d!1704558 m!6338040))

(assert (=> d!1704558 m!6338212))

(assert (=> b!5300953 m!6338054))

(assert (=> b!5300953 m!6338054))

(assert (=> b!5300953 m!6338058))

(assert (=> b!5300942 m!6338054))

(assert (=> b!5300942 m!6338054))

(assert (=> b!5300942 m!6338058))

(assert (=> b!5299953 d!1704558))

(declare-fun bs!1229492 () Bool)

(declare-fun b!5300963 () Bool)

(assert (= bs!1229492 (and b!5300963 d!1704542)))

(declare-fun lambda!269199 () Int)

(assert (=> bs!1229492 (not (= lambda!269199 lambda!269195))))

(declare-fun bs!1229493 () Bool)

(assert (= bs!1229493 (and b!5300963 b!5299946)))

(assert (=> bs!1229493 (not (= lambda!269199 lambda!269081))))

(declare-fun bs!1229494 () Bool)

(assert (= bs!1229494 (and b!5300963 d!1704532)))

(assert (=> bs!1229494 (not (= lambda!269199 lambda!269193))))

(declare-fun bs!1229495 () Bool)

(assert (= bs!1229495 (and b!5300963 d!1704552)))

(assert (=> bs!1229495 (not (= lambda!269199 lambda!269198))))

(declare-fun bs!1229496 () Bool)

(assert (= bs!1229496 (and b!5300963 b!5299953)))

(assert (=> bs!1229496 (not (= lambda!269199 lambda!269087))))

(declare-fun bs!1229497 () Bool)

(assert (= bs!1229497 (and b!5300963 b!5300886)))

(assert (=> bs!1229497 (not (= lambda!269199 lambda!269190))))

(assert (=> bs!1229496 (not (= lambda!269199 lambda!269086))))

(declare-fun bs!1229498 () Bool)

(assert (= bs!1229498 (and b!5300963 b!5300891)))

(assert (=> bs!1229498 (= (and (= (reg!15270 lt!2165480) (reg!15270 lt!2165459)) (= lt!2165480 lt!2165459)) (= lambda!269199 lambda!269189))))

(assert (=> bs!1229496 (not (= lambda!269199 lambda!269085))))

(assert (=> bs!1229494 (not (= lambda!269199 lambda!269192))))

(declare-fun bs!1229499 () Bool)

(assert (= bs!1229499 (and b!5300963 d!1704440)))

(assert (=> bs!1229499 (not (= lambda!269199 lambda!269158))))

(assert (=> bs!1229495 (not (= lambda!269199 lambda!269197))))

(declare-fun bs!1229500 () Bool)

(assert (= bs!1229500 (and b!5300963 b!5300679)))

(assert (=> bs!1229500 (not (= lambda!269199 lambda!269171))))

(assert (=> bs!1229496 (not (= lambda!269199 lambda!269084))))

(assert (=> bs!1229499 (not (= lambda!269199 lambda!269157))))

(declare-fun bs!1229501 () Bool)

(assert (= bs!1229501 (and b!5300963 b!5300684)))

(assert (=> bs!1229501 (= (and (= (reg!15270 lt!2165480) (reg!15270 r!7292)) (= lt!2165480 r!7292)) (= lambda!269199 lambda!269169))))

(assert (=> bs!1229493 (not (= lambda!269199 lambda!269082))))

(declare-fun bs!1229502 () Bool)

(assert (= bs!1229502 (and b!5300963 d!1704544)))

(assert (=> bs!1229502 (not (= lambda!269199 lambda!269196))))

(declare-fun bs!1229503 () Bool)

(assert (= bs!1229503 (and b!5300963 d!1704420)))

(assert (=> bs!1229503 (not (= lambda!269199 lambda!269152))))

(assert (=> b!5300963 true))

(assert (=> b!5300963 true))

(declare-fun bs!1229504 () Bool)

(declare-fun b!5300958 () Bool)

(assert (= bs!1229504 (and b!5300958 d!1704542)))

(declare-fun lambda!269200 () Int)

(assert (=> bs!1229504 (not (= lambda!269200 lambda!269195))))

(declare-fun bs!1229505 () Bool)

(assert (= bs!1229505 (and b!5300958 b!5300963)))

(assert (=> bs!1229505 (not (= lambda!269200 lambda!269199))))

(declare-fun bs!1229506 () Bool)

(assert (= bs!1229506 (and b!5300958 b!5299946)))

(assert (=> bs!1229506 (not (= lambda!269200 lambda!269081))))

(declare-fun bs!1229507 () Bool)

(assert (= bs!1229507 (and b!5300958 d!1704532)))

(assert (=> bs!1229507 (= (and (= (regOne!30394 lt!2165480) (regTwo!30394 (regOne!30394 r!7292))) (= (regTwo!30394 lt!2165480) lt!2165446)) (= lambda!269200 lambda!269193))))

(declare-fun bs!1229508 () Bool)

(assert (= bs!1229508 (and b!5300958 d!1704552)))

(assert (=> bs!1229508 (= (and (= (regOne!30394 lt!2165480) (regOne!30394 (regOne!30394 r!7292))) (= (regTwo!30394 lt!2165480) lt!2165459)) (= lambda!269200 lambda!269198))))

(declare-fun bs!1229509 () Bool)

(assert (= bs!1229509 (and b!5300958 b!5299953)))

(assert (=> bs!1229509 (= (and (= (regOne!30394 lt!2165480) (regTwo!30394 (regOne!30394 r!7292))) (= (regTwo!30394 lt!2165480) lt!2165446)) (= lambda!269200 lambda!269087))))

(declare-fun bs!1229510 () Bool)

(assert (= bs!1229510 (and b!5300958 b!5300886)))

(assert (=> bs!1229510 (= (and (= (regOne!30394 lt!2165480) (regOne!30394 lt!2165459)) (= (regTwo!30394 lt!2165480) (regTwo!30394 lt!2165459))) (= lambda!269200 lambda!269190))))

(assert (=> bs!1229509 (not (= lambda!269200 lambda!269086))))

(declare-fun bs!1229511 () Bool)

(assert (= bs!1229511 (and b!5300958 b!5300891)))

(assert (=> bs!1229511 (not (= lambda!269200 lambda!269189))))

(assert (=> bs!1229509 (= (and (= (regOne!30394 lt!2165480) (regOne!30394 (regOne!30394 r!7292))) (= (regTwo!30394 lt!2165480) lt!2165459)) (= lambda!269200 lambda!269085))))

(assert (=> bs!1229507 (not (= lambda!269200 lambda!269192))))

(declare-fun bs!1229512 () Bool)

(assert (= bs!1229512 (and b!5300958 d!1704440)))

(assert (=> bs!1229512 (= (and (= (regOne!30394 lt!2165480) (regOne!30394 r!7292)) (= (regTwo!30394 lt!2165480) (regTwo!30394 r!7292))) (= lambda!269200 lambda!269158))))

(assert (=> bs!1229508 (not (= lambda!269200 lambda!269197))))

(declare-fun bs!1229513 () Bool)

(assert (= bs!1229513 (and b!5300958 b!5300679)))

(assert (=> bs!1229513 (= (and (= (regOne!30394 lt!2165480) (regOne!30394 r!7292)) (= (regTwo!30394 lt!2165480) (regTwo!30394 r!7292))) (= lambda!269200 lambda!269171))))

(assert (=> bs!1229509 (not (= lambda!269200 lambda!269084))))

(assert (=> bs!1229512 (not (= lambda!269200 lambda!269157))))

(declare-fun bs!1229514 () Bool)

(assert (= bs!1229514 (and b!5300958 b!5300684)))

(assert (=> bs!1229514 (not (= lambda!269200 lambda!269169))))

(assert (=> bs!1229506 (= (and (= (regOne!30394 lt!2165480) (regOne!30394 r!7292)) (= (regTwo!30394 lt!2165480) (regTwo!30394 r!7292))) (= lambda!269200 lambda!269082))))

(declare-fun bs!1229515 () Bool)

(assert (= bs!1229515 (and b!5300958 d!1704544)))

(assert (=> bs!1229515 (not (= lambda!269200 lambda!269196))))

(declare-fun bs!1229516 () Bool)

(assert (= bs!1229516 (and b!5300958 d!1704420)))

(assert (=> bs!1229516 (not (= lambda!269200 lambda!269152))))

(assert (=> b!5300958 true))

(assert (=> b!5300958 true))

(declare-fun d!1704560 () Bool)

(declare-fun c!920301 () Bool)

(assert (=> d!1704560 (= c!920301 ((_ is EmptyExpr!14941) lt!2165480))))

(declare-fun e!3294760 () Bool)

(assert (=> d!1704560 (= (matchRSpec!2044 lt!2165480 s!2326) e!3294760)))

(declare-fun b!5300956 () Bool)

(declare-fun res!2248249 () Bool)

(declare-fun e!3294761 () Bool)

(assert (=> b!5300956 (=> res!2248249 e!3294761)))

(declare-fun call!377935 () Bool)

(assert (=> b!5300956 (= res!2248249 call!377935)))

(declare-fun e!3294755 () Bool)

(assert (=> b!5300956 (= e!3294755 e!3294761)))

(declare-fun b!5300957 () Bool)

(declare-fun e!3294756 () Bool)

(assert (=> b!5300957 (= e!3294756 (= s!2326 (Cons!60998 (c!919991 lt!2165480) Nil!60998)))))

(declare-fun call!377936 () Bool)

(assert (=> b!5300958 (= e!3294755 call!377936)))

(declare-fun b!5300959 () Bool)

(declare-fun c!920302 () Bool)

(assert (=> b!5300959 (= c!920302 ((_ is Union!14941) lt!2165480))))

(declare-fun e!3294757 () Bool)

(assert (=> b!5300959 (= e!3294756 e!3294757)))

(declare-fun b!5300960 () Bool)

(declare-fun e!3294759 () Bool)

(assert (=> b!5300960 (= e!3294759 (matchRSpec!2044 (regTwo!30395 lt!2165480) s!2326))))

(declare-fun b!5300961 () Bool)

(assert (=> b!5300961 (= e!3294757 e!3294759)))

(declare-fun res!2248248 () Bool)

(assert (=> b!5300961 (= res!2248248 (matchRSpec!2044 (regOne!30395 lt!2165480) s!2326))))

(assert (=> b!5300961 (=> res!2248248 e!3294759)))

(declare-fun b!5300962 () Bool)

(declare-fun e!3294758 () Bool)

(assert (=> b!5300962 (= e!3294760 e!3294758)))

(declare-fun res!2248250 () Bool)

(assert (=> b!5300962 (= res!2248250 (not ((_ is EmptyLang!14941) lt!2165480)))))

(assert (=> b!5300962 (=> (not res!2248250) (not e!3294758))))

(declare-fun bm!377930 () Bool)

(assert (=> bm!377930 (= call!377935 (isEmpty!32963 s!2326))))

(assert (=> b!5300963 (= e!3294761 call!377936)))

(declare-fun c!920303 () Bool)

(declare-fun bm!377931 () Bool)

(assert (=> bm!377931 (= call!377936 (Exists!2122 (ite c!920303 lambda!269199 lambda!269200)))))

(declare-fun b!5300964 () Bool)

(assert (=> b!5300964 (= e!3294757 e!3294755)))

(assert (=> b!5300964 (= c!920303 ((_ is Star!14941) lt!2165480))))

(declare-fun b!5300965 () Bool)

(declare-fun c!920300 () Bool)

(assert (=> b!5300965 (= c!920300 ((_ is ElementMatch!14941) lt!2165480))))

(assert (=> b!5300965 (= e!3294758 e!3294756)))

(declare-fun b!5300966 () Bool)

(assert (=> b!5300966 (= e!3294760 call!377935)))

(assert (= (and d!1704560 c!920301) b!5300966))

(assert (= (and d!1704560 (not c!920301)) b!5300962))

(assert (= (and b!5300962 res!2248250) b!5300965))

(assert (= (and b!5300965 c!920300) b!5300957))

(assert (= (and b!5300965 (not c!920300)) b!5300959))

(assert (= (and b!5300959 c!920302) b!5300961))

(assert (= (and b!5300959 (not c!920302)) b!5300964))

(assert (= (and b!5300961 (not res!2248248)) b!5300960))

(assert (= (and b!5300964 c!920303) b!5300956))

(assert (= (and b!5300964 (not c!920303)) b!5300958))

(assert (= (and b!5300956 (not res!2248249)) b!5300963))

(assert (= (or b!5300963 b!5300958) bm!377931))

(assert (= (or b!5300966 b!5300956) bm!377930))

(declare-fun m!6338310 () Bool)

(assert (=> b!5300960 m!6338310))

(declare-fun m!6338312 () Bool)

(assert (=> b!5300961 m!6338312))

(assert (=> bm!377930 m!6338040))

(declare-fun m!6338314 () Bool)

(assert (=> bm!377931 m!6338314))

(assert (=> b!5299953 d!1704560))

(declare-fun b!5300967 () Bool)

(declare-fun e!3294762 () Bool)

(assert (=> b!5300967 (= e!3294762 (matchR!7126 lt!2165459 s!2326))))

(declare-fun b!5300968 () Bool)

(declare-fun lt!2165654 () Unit!153282)

(declare-fun lt!2165652 () Unit!153282)

(assert (=> b!5300968 (= lt!2165654 lt!2165652)))

(assert (=> b!5300968 (= (++!13302 (++!13302 Nil!60998 (Cons!60998 (h!67446 s!2326) Nil!60998)) (t!374327 s!2326)) s!2326)))

(assert (=> b!5300968 (= lt!2165652 (lemmaMoveElementToOtherListKeepsConcatEq!1717 Nil!60998 (h!67446 s!2326) (t!374327 s!2326) s!2326))))

(declare-fun e!3294763 () Option!15052)

(assert (=> b!5300968 (= e!3294763 (findConcatSeparation!1466 (regOne!30394 (regOne!30394 r!7292)) lt!2165459 (++!13302 Nil!60998 (Cons!60998 (h!67446 s!2326) Nil!60998)) (t!374327 s!2326) s!2326))))

(declare-fun d!1704562 () Bool)

(declare-fun e!3294766 () Bool)

(assert (=> d!1704562 e!3294766))

(declare-fun res!2248254 () Bool)

(assert (=> d!1704562 (=> res!2248254 e!3294766)))

(declare-fun e!3294764 () Bool)

(assert (=> d!1704562 (= res!2248254 e!3294764)))

(declare-fun res!2248251 () Bool)

(assert (=> d!1704562 (=> (not res!2248251) (not e!3294764))))

(declare-fun lt!2165653 () Option!15052)

(assert (=> d!1704562 (= res!2248251 (isDefined!11755 lt!2165653))))

(declare-fun e!3294765 () Option!15052)

(assert (=> d!1704562 (= lt!2165653 e!3294765)))

(declare-fun c!920304 () Bool)

(assert (=> d!1704562 (= c!920304 e!3294762)))

(declare-fun res!2248255 () Bool)

(assert (=> d!1704562 (=> (not res!2248255) (not e!3294762))))

(assert (=> d!1704562 (= res!2248255 (matchR!7126 (regOne!30394 (regOne!30394 r!7292)) Nil!60998))))

(assert (=> d!1704562 (validRegex!6677 (regOne!30394 (regOne!30394 r!7292)))))

(assert (=> d!1704562 (= (findConcatSeparation!1466 (regOne!30394 (regOne!30394 r!7292)) lt!2165459 Nil!60998 s!2326 s!2326) lt!2165653)))

(declare-fun b!5300969 () Bool)

(assert (=> b!5300969 (= e!3294765 e!3294763)))

(declare-fun c!920305 () Bool)

(assert (=> b!5300969 (= c!920305 ((_ is Nil!60998) s!2326))))

(declare-fun b!5300970 () Bool)

(declare-fun res!2248253 () Bool)

(assert (=> b!5300970 (=> (not res!2248253) (not e!3294764))))

(assert (=> b!5300970 (= res!2248253 (matchR!7126 lt!2165459 (_2!35443 (get!20978 lt!2165653))))))

(declare-fun b!5300971 () Bool)

(assert (=> b!5300971 (= e!3294766 (not (isDefined!11755 lt!2165653)))))

(declare-fun b!5300972 () Bool)

(declare-fun res!2248252 () Bool)

(assert (=> b!5300972 (=> (not res!2248252) (not e!3294764))))

(assert (=> b!5300972 (= res!2248252 (matchR!7126 (regOne!30394 (regOne!30394 r!7292)) (_1!35443 (get!20978 lt!2165653))))))

(declare-fun b!5300973 () Bool)

(assert (=> b!5300973 (= e!3294764 (= (++!13302 (_1!35443 (get!20978 lt!2165653)) (_2!35443 (get!20978 lt!2165653))) s!2326))))

(declare-fun b!5300974 () Bool)

(assert (=> b!5300974 (= e!3294763 None!15051)))

(declare-fun b!5300975 () Bool)

(assert (=> b!5300975 (= e!3294765 (Some!15051 (tuple2!64281 Nil!60998 s!2326)))))

(assert (= (and d!1704562 res!2248255) b!5300967))

(assert (= (and d!1704562 c!920304) b!5300975))

(assert (= (and d!1704562 (not c!920304)) b!5300969))

(assert (= (and b!5300969 c!920305) b!5300974))

(assert (= (and b!5300969 (not c!920305)) b!5300968))

(assert (= (and d!1704562 res!2248251) b!5300972))

(assert (= (and b!5300972 res!2248252) b!5300970))

(assert (= (and b!5300970 res!2248253) b!5300973))

(assert (= (and d!1704562 (not res!2248254)) b!5300971))

(assert (=> b!5300968 m!6337872))

(assert (=> b!5300968 m!6337872))

(assert (=> b!5300968 m!6337874))

(assert (=> b!5300968 m!6337876))

(assert (=> b!5300968 m!6337872))

(declare-fun m!6338316 () Bool)

(assert (=> b!5300968 m!6338316))

(declare-fun m!6338318 () Bool)

(assert (=> b!5300972 m!6338318))

(declare-fun m!6338320 () Bool)

(assert (=> b!5300972 m!6338320))

(declare-fun m!6338322 () Bool)

(assert (=> d!1704562 m!6338322))

(declare-fun m!6338324 () Bool)

(assert (=> d!1704562 m!6338324))

(assert (=> d!1704562 m!6338276))

(assert (=> b!5300967 m!6337300))

(assert (=> b!5300970 m!6338318))

(declare-fun m!6338326 () Bool)

(assert (=> b!5300970 m!6338326))

(assert (=> b!5300971 m!6338322))

(assert (=> b!5300973 m!6338318))

(declare-fun m!6338328 () Bool)

(assert (=> b!5300973 m!6338328))

(assert (=> b!5299953 d!1704562))

(declare-fun d!1704564 () Bool)

(declare-fun lt!2165657 () Int)

(assert (=> d!1704564 (>= lt!2165657 0)))

(declare-fun e!3294769 () Int)

(assert (=> d!1704564 (= lt!2165657 e!3294769)))

(declare-fun c!920308 () Bool)

(assert (=> d!1704564 (= c!920308 ((_ is Cons!61000) lt!2165486))))

(assert (=> d!1704564 (= (zipperDepthTotal!102 lt!2165486) lt!2165657)))

(declare-fun b!5300980 () Bool)

(assert (=> b!5300980 (= e!3294769 (+ (contextDepthTotal!82 (h!67448 lt!2165486)) (zipperDepthTotal!102 (t!374329 lt!2165486))))))

(declare-fun b!5300981 () Bool)

(assert (=> b!5300981 (= e!3294769 0)))

(assert (= (and d!1704564 c!920308) b!5300980))

(assert (= (and d!1704564 (not c!920308)) b!5300981))

(declare-fun m!6338330 () Bool)

(assert (=> b!5300980 m!6338330))

(declare-fun m!6338332 () Bool)

(assert (=> b!5300980 m!6338332))

(assert (=> b!5299973 d!1704564))

(declare-fun d!1704566 () Bool)

(declare-fun lt!2165658 () Int)

(assert (=> d!1704566 (>= lt!2165658 0)))

(declare-fun e!3294770 () Int)

(assert (=> d!1704566 (= lt!2165658 e!3294770)))

(declare-fun c!920309 () Bool)

(assert (=> d!1704566 (= c!920309 ((_ is Cons!61000) zl!343))))

(assert (=> d!1704566 (= (zipperDepthTotal!102 zl!343) lt!2165658)))

(declare-fun b!5300982 () Bool)

(assert (=> b!5300982 (= e!3294770 (+ (contextDepthTotal!82 (h!67448 zl!343)) (zipperDepthTotal!102 (t!374329 zl!343))))))

(declare-fun b!5300983 () Bool)

(assert (=> b!5300983 (= e!3294770 0)))

(assert (= (and d!1704566 c!920309) b!5300982))

(assert (= (and d!1704566 (not c!920309)) b!5300983))

(assert (=> b!5300982 m!6337374))

(declare-fun m!6338334 () Bool)

(assert (=> b!5300982 m!6338334))

(assert (=> b!5299973 d!1704566))

(declare-fun d!1704568 () Bool)

(declare-fun lt!2165661 () Int)

(assert (=> d!1704568 (>= lt!2165661 0)))

(declare-fun e!3294773 () Int)

(assert (=> d!1704568 (= lt!2165661 e!3294773)))

(declare-fun c!920313 () Bool)

(assert (=> d!1704568 (= c!920313 ((_ is Cons!60999) (exprs!4825 lt!2165445)))))

(assert (=> d!1704568 (= (contextDepthTotal!82 lt!2165445) lt!2165661)))

(declare-fun b!5300988 () Bool)

(declare-fun regexDepthTotal!33 (Regex!14941) Int)

(assert (=> b!5300988 (= e!3294773 (+ (regexDepthTotal!33 (h!67447 (exprs!4825 lt!2165445))) (contextDepthTotal!82 (Context!8651 (t!374328 (exprs!4825 lt!2165445))))))))

(declare-fun b!5300989 () Bool)

(assert (=> b!5300989 (= e!3294773 1)))

(assert (= (and d!1704568 c!920313) b!5300988))

(assert (= (and d!1704568 (not c!920313)) b!5300989))

(declare-fun m!6338336 () Bool)

(assert (=> b!5300988 m!6338336))

(declare-fun m!6338338 () Bool)

(assert (=> b!5300988 m!6338338))

(assert (=> b!5299954 d!1704568))

(declare-fun d!1704570 () Bool)

(declare-fun lt!2165662 () Int)

(assert (=> d!1704570 (>= lt!2165662 0)))

(declare-fun e!3294774 () Int)

(assert (=> d!1704570 (= lt!2165662 e!3294774)))

(declare-fun c!920314 () Bool)

(assert (=> d!1704570 (= c!920314 ((_ is Cons!60999) (exprs!4825 (h!67448 zl!343))))))

(assert (=> d!1704570 (= (contextDepthTotal!82 (h!67448 zl!343)) lt!2165662)))

(declare-fun b!5300990 () Bool)

(assert (=> b!5300990 (= e!3294774 (+ (regexDepthTotal!33 (h!67447 (exprs!4825 (h!67448 zl!343)))) (contextDepthTotal!82 (Context!8651 (t!374328 (exprs!4825 (h!67448 zl!343)))))))))

(declare-fun b!5300991 () Bool)

(assert (=> b!5300991 (= e!3294774 1)))

(assert (= (and d!1704570 c!920314) b!5300990))

(assert (= (and d!1704570 (not c!920314)) b!5300991))

(declare-fun m!6338340 () Bool)

(assert (=> b!5300990 m!6338340))

(declare-fun m!6338342 () Bool)

(assert (=> b!5300990 m!6338342))

(assert (=> b!5299954 d!1704570))

(declare-fun d!1704572 () Bool)

(declare-fun c!920315 () Bool)

(assert (=> d!1704572 (= c!920315 (isEmpty!32963 (t!374327 s!2326)))))

(declare-fun e!3294775 () Bool)

(assert (=> d!1704572 (= (matchZipper!1185 lt!2165470 (t!374327 s!2326)) e!3294775)))

(declare-fun b!5300992 () Bool)

(assert (=> b!5300992 (= e!3294775 (nullableZipper!1322 lt!2165470))))

(declare-fun b!5300993 () Bool)

(assert (=> b!5300993 (= e!3294775 (matchZipper!1185 (derivationStepZipper!1184 lt!2165470 (head!11363 (t!374327 s!2326))) (tail!10460 (t!374327 s!2326))))))

(assert (= (and d!1704572 c!920315) b!5300992))

(assert (= (and d!1704572 (not c!920315)) b!5300993))

(assert (=> d!1704572 m!6337630))

(declare-fun m!6338344 () Bool)

(assert (=> b!5300992 m!6338344))

(assert (=> b!5300993 m!6337634))

(assert (=> b!5300993 m!6337634))

(declare-fun m!6338346 () Bool)

(assert (=> b!5300993 m!6338346))

(assert (=> b!5300993 m!6337638))

(assert (=> b!5300993 m!6338346))

(assert (=> b!5300993 m!6337638))

(declare-fun m!6338348 () Bool)

(assert (=> b!5300993 m!6338348))

(assert (=> b!5299955 d!1704572))

(declare-fun d!1704574 () Bool)

(declare-fun c!920316 () Bool)

(assert (=> d!1704574 (= c!920316 (isEmpty!32963 (t!374327 s!2326)))))

(declare-fun e!3294776 () Bool)

(assert (=> d!1704574 (= (matchZipper!1185 lt!2165460 (t!374327 s!2326)) e!3294776)))

(declare-fun b!5300994 () Bool)

(assert (=> b!5300994 (= e!3294776 (nullableZipper!1322 lt!2165460))))

(declare-fun b!5300995 () Bool)

(assert (=> b!5300995 (= e!3294776 (matchZipper!1185 (derivationStepZipper!1184 lt!2165460 (head!11363 (t!374327 s!2326))) (tail!10460 (t!374327 s!2326))))))

(assert (= (and d!1704574 c!920316) b!5300994))

(assert (= (and d!1704574 (not c!920316)) b!5300995))

(assert (=> d!1704574 m!6337630))

(declare-fun m!6338350 () Bool)

(assert (=> b!5300994 m!6338350))

(assert (=> b!5300995 m!6337634))

(assert (=> b!5300995 m!6337634))

(declare-fun m!6338352 () Bool)

(assert (=> b!5300995 m!6338352))

(assert (=> b!5300995 m!6337638))

(assert (=> b!5300995 m!6338352))

(assert (=> b!5300995 m!6337638))

(declare-fun m!6338354 () Bool)

(assert (=> b!5300995 m!6338354))

(assert (=> b!5299975 d!1704574))

(assert (=> b!5299956 d!1704574))

(declare-fun d!1704576 () Bool)

(declare-fun lt!2165665 () Regex!14941)

(assert (=> d!1704576 (validRegex!6677 lt!2165665)))

(assert (=> d!1704576 (= lt!2165665 (generalisedUnion!870 (unfocusZipperList!383 zl!343)))))

(assert (=> d!1704576 (= (unfocusZipper!683 zl!343) lt!2165665)))

(declare-fun bs!1229517 () Bool)

(assert (= bs!1229517 d!1704576))

(declare-fun m!6338356 () Bool)

(assert (=> bs!1229517 m!6338356))

(assert (=> bs!1229517 m!6337230))

(assert (=> bs!1229517 m!6337230))

(assert (=> bs!1229517 m!6337232))

(assert (=> b!5299976 d!1704576))

(assert (=> b!5299977 d!1704334))

(declare-fun bs!1229518 () Bool)

(declare-fun d!1704578 () Bool)

(assert (= bs!1229518 (and d!1704578 b!5299959)))

(declare-fun lambda!269201 () Int)

(assert (=> bs!1229518 (= lambda!269201 lambda!269083)))

(declare-fun bs!1229519 () Bool)

(assert (= bs!1229519 (and d!1704578 d!1704332)))

(assert (=> bs!1229519 (= lambda!269201 lambda!269123)))

(assert (=> d!1704578 true))

(assert (=> d!1704578 (= (derivationStepZipper!1184 lt!2165452 (h!67446 s!2326)) (flatMap!668 lt!2165452 lambda!269201))))

(declare-fun bs!1229520 () Bool)

(assert (= bs!1229520 d!1704578))

(declare-fun m!6338358 () Bool)

(assert (=> bs!1229520 m!6338358))

(assert (=> b!5299977 d!1704578))

(declare-fun b!5300996 () Bool)

(declare-fun e!3294779 () (InoxSet Context!8650))

(assert (=> b!5300996 (= e!3294779 ((as const (Array Context!8650 Bool)) false))))

(declare-fun b!5300997 () Bool)

(declare-fun call!377937 () (InoxSet Context!8650))

(assert (=> b!5300997 (= e!3294779 call!377937)))

(declare-fun bm!377932 () Bool)

(assert (=> bm!377932 (= call!377937 (derivationStepZipperDown!389 (h!67447 (exprs!4825 lt!2165445)) (Context!8651 (t!374328 (exprs!4825 lt!2165445))) (h!67446 s!2326)))))

(declare-fun d!1704580 () Bool)

(declare-fun c!920318 () Bool)

(declare-fun e!3294778 () Bool)

(assert (=> d!1704580 (= c!920318 e!3294778)))

(declare-fun res!2248256 () Bool)

(assert (=> d!1704580 (=> (not res!2248256) (not e!3294778))))

(assert (=> d!1704580 (= res!2248256 ((_ is Cons!60999) (exprs!4825 lt!2165445)))))

(declare-fun e!3294777 () (InoxSet Context!8650))

(assert (=> d!1704580 (= (derivationStepZipperUp!313 lt!2165445 (h!67446 s!2326)) e!3294777)))

(declare-fun b!5300998 () Bool)

(assert (=> b!5300998 (= e!3294778 (nullable!5110 (h!67447 (exprs!4825 lt!2165445))))))

(declare-fun b!5300999 () Bool)

(assert (=> b!5300999 (= e!3294777 e!3294779)))

(declare-fun c!920317 () Bool)

(assert (=> b!5300999 (= c!920317 ((_ is Cons!60999) (exprs!4825 lt!2165445)))))

(declare-fun b!5301000 () Bool)

(assert (=> b!5301000 (= e!3294777 ((_ map or) call!377937 (derivationStepZipperUp!313 (Context!8651 (t!374328 (exprs!4825 lt!2165445))) (h!67446 s!2326))))))

(assert (= (and d!1704580 res!2248256) b!5300998))

(assert (= (and d!1704580 c!920318) b!5301000))

(assert (= (and d!1704580 (not c!920318)) b!5300999))

(assert (= (and b!5300999 c!920317) b!5300997))

(assert (= (and b!5300999 (not c!920317)) b!5300996))

(assert (= (or b!5301000 b!5300997) bm!377932))

(declare-fun m!6338360 () Bool)

(assert (=> bm!377932 m!6338360))

(declare-fun m!6338362 () Bool)

(assert (=> b!5300998 m!6338362))

(declare-fun m!6338364 () Bool)

(assert (=> b!5301000 m!6338364))

(assert (=> b!5299977 d!1704580))

(declare-fun d!1704582 () Bool)

(assert (=> d!1704582 (= (flatMap!668 lt!2165452 lambda!269083) (choose!39614 lt!2165452 lambda!269083))))

(declare-fun bs!1229521 () Bool)

(assert (= bs!1229521 d!1704582))

(declare-fun m!6338366 () Bool)

(assert (=> bs!1229521 m!6338366))

(assert (=> b!5299977 d!1704582))

(declare-fun d!1704584 () Bool)

(assert (=> d!1704584 (= (flatMap!668 lt!2165452 lambda!269083) (dynLambda!24118 lambda!269083 lt!2165445))))

(declare-fun lt!2165666 () Unit!153282)

(assert (=> d!1704584 (= lt!2165666 (choose!39616 lt!2165452 lt!2165445 lambda!269083))))

(assert (=> d!1704584 (= lt!2165452 (store ((as const (Array Context!8650 Bool)) false) lt!2165445 true))))

(assert (=> d!1704584 (= (lemmaFlatMapOnSingletonSet!200 lt!2165452 lt!2165445 lambda!269083) lt!2165666)))

(declare-fun b_lambda!204251 () Bool)

(assert (=> (not b_lambda!204251) (not d!1704584)))

(declare-fun bs!1229522 () Bool)

(assert (= bs!1229522 d!1704584))

(assert (=> bs!1229522 m!6337360))

(declare-fun m!6338368 () Bool)

(assert (=> bs!1229522 m!6338368))

(declare-fun m!6338370 () Bool)

(assert (=> bs!1229522 m!6338370))

(assert (=> bs!1229522 m!6337364))

(assert (=> b!5299977 d!1704584))

(declare-fun d!1704586 () Bool)

(declare-fun e!3294782 () Bool)

(assert (=> d!1704586 e!3294782))

(declare-fun res!2248259 () Bool)

(assert (=> d!1704586 (=> (not res!2248259) (not e!3294782))))

(declare-fun lt!2165669 () List!61124)

(declare-fun noDuplicate!1277 (List!61124) Bool)

(assert (=> d!1704586 (= res!2248259 (noDuplicate!1277 lt!2165669))))

(declare-fun choose!39626 ((InoxSet Context!8650)) List!61124)

(assert (=> d!1704586 (= lt!2165669 (choose!39626 z!1189))))

(assert (=> d!1704586 (= (toList!8725 z!1189) lt!2165669)))

(declare-fun b!5301003 () Bool)

(declare-fun content!10865 (List!61124) (InoxSet Context!8650))

(assert (=> b!5301003 (= e!3294782 (= (content!10865 lt!2165669) z!1189))))

(assert (= (and d!1704586 res!2248259) b!5301003))

(declare-fun m!6338372 () Bool)

(assert (=> d!1704586 m!6338372))

(declare-fun m!6338374 () Bool)

(assert (=> d!1704586 m!6338374))

(declare-fun m!6338376 () Bool)

(assert (=> b!5301003 m!6338376))

(assert (=> b!5299958 d!1704586))

(declare-fun d!1704588 () Bool)

(assert (=> d!1704588 (= (isEmpty!32960 (t!374328 (exprs!4825 (h!67448 zl!343)))) ((_ is Nil!60999) (t!374328 (exprs!4825 (h!67448 zl!343)))))))

(assert (=> b!5299978 d!1704588))

(declare-fun b!5301004 () Bool)

(declare-fun e!3294785 () (InoxSet Context!8650))

(assert (=> b!5301004 (= e!3294785 ((as const (Array Context!8650 Bool)) false))))

(declare-fun b!5301005 () Bool)

(declare-fun call!377938 () (InoxSet Context!8650))

(assert (=> b!5301005 (= e!3294785 call!377938)))

(declare-fun bm!377933 () Bool)

(assert (=> bm!377933 (= call!377938 (derivationStepZipperDown!389 (h!67447 (exprs!4825 lt!2165473)) (Context!8651 (t!374328 (exprs!4825 lt!2165473))) (h!67446 s!2326)))))

(declare-fun d!1704590 () Bool)

(declare-fun c!920320 () Bool)

(declare-fun e!3294784 () Bool)

(assert (=> d!1704590 (= c!920320 e!3294784)))

(declare-fun res!2248260 () Bool)

(assert (=> d!1704590 (=> (not res!2248260) (not e!3294784))))

(assert (=> d!1704590 (= res!2248260 ((_ is Cons!60999) (exprs!4825 lt!2165473)))))

(declare-fun e!3294783 () (InoxSet Context!8650))

(assert (=> d!1704590 (= (derivationStepZipperUp!313 lt!2165473 (h!67446 s!2326)) e!3294783)))

(declare-fun b!5301006 () Bool)

(assert (=> b!5301006 (= e!3294784 (nullable!5110 (h!67447 (exprs!4825 lt!2165473))))))

(declare-fun b!5301007 () Bool)

(assert (=> b!5301007 (= e!3294783 e!3294785)))

(declare-fun c!920319 () Bool)

(assert (=> b!5301007 (= c!920319 ((_ is Cons!60999) (exprs!4825 lt!2165473)))))

(declare-fun b!5301008 () Bool)

(assert (=> b!5301008 (= e!3294783 ((_ map or) call!377938 (derivationStepZipperUp!313 (Context!8651 (t!374328 (exprs!4825 lt!2165473))) (h!67446 s!2326))))))

(assert (= (and d!1704590 res!2248260) b!5301006))

(assert (= (and d!1704590 c!920320) b!5301008))

(assert (= (and d!1704590 (not c!920320)) b!5301007))

(assert (= (and b!5301007 c!920319) b!5301005))

(assert (= (and b!5301007 (not c!920319)) b!5301004))

(assert (= (or b!5301008 b!5301005) bm!377933))

(declare-fun m!6338378 () Bool)

(assert (=> bm!377933 m!6338378))

(declare-fun m!6338380 () Bool)

(assert (=> b!5301006 m!6338380))

(declare-fun m!6338382 () Bool)

(assert (=> b!5301008 m!6338382))

(assert (=> b!5299959 d!1704590))

(declare-fun d!1704592 () Bool)

(assert (=> d!1704592 (= (flatMap!668 z!1189 lambda!269083) (choose!39614 z!1189 lambda!269083))))

(declare-fun bs!1229523 () Bool)

(assert (= bs!1229523 d!1704592))

(declare-fun m!6338384 () Bool)

(assert (=> bs!1229523 m!6338384))

(assert (=> b!5299959 d!1704592))

(declare-fun d!1704594 () Bool)

(assert (=> d!1704594 (= (nullable!5110 (h!67447 (exprs!4825 (h!67448 zl!343)))) (nullableFct!1473 (h!67447 (exprs!4825 (h!67448 zl!343)))))))

(declare-fun bs!1229524 () Bool)

(assert (= bs!1229524 d!1704594))

(declare-fun m!6338386 () Bool)

(assert (=> bs!1229524 m!6338386))

(assert (=> b!5299959 d!1704594))

(declare-fun b!5301009 () Bool)

(declare-fun e!3294788 () (InoxSet Context!8650))

(assert (=> b!5301009 (= e!3294788 ((as const (Array Context!8650 Bool)) false))))

(declare-fun b!5301010 () Bool)

(declare-fun call!377939 () (InoxSet Context!8650))

(assert (=> b!5301010 (= e!3294788 call!377939)))

(declare-fun bm!377934 () Bool)

(assert (=> bm!377934 (= call!377939 (derivationStepZipperDown!389 (h!67447 (exprs!4825 (Context!8651 (Cons!60999 (h!67447 (exprs!4825 (h!67448 zl!343))) (t!374328 (exprs!4825 (h!67448 zl!343))))))) (Context!8651 (t!374328 (exprs!4825 (Context!8651 (Cons!60999 (h!67447 (exprs!4825 (h!67448 zl!343))) (t!374328 (exprs!4825 (h!67448 zl!343)))))))) (h!67446 s!2326)))))

(declare-fun d!1704596 () Bool)

(declare-fun c!920322 () Bool)

(declare-fun e!3294787 () Bool)

(assert (=> d!1704596 (= c!920322 e!3294787)))

(declare-fun res!2248261 () Bool)

(assert (=> d!1704596 (=> (not res!2248261) (not e!3294787))))

(assert (=> d!1704596 (= res!2248261 ((_ is Cons!60999) (exprs!4825 (Context!8651 (Cons!60999 (h!67447 (exprs!4825 (h!67448 zl!343))) (t!374328 (exprs!4825 (h!67448 zl!343))))))))))

(declare-fun e!3294786 () (InoxSet Context!8650))

(assert (=> d!1704596 (= (derivationStepZipperUp!313 (Context!8651 (Cons!60999 (h!67447 (exprs!4825 (h!67448 zl!343))) (t!374328 (exprs!4825 (h!67448 zl!343))))) (h!67446 s!2326)) e!3294786)))

(declare-fun b!5301011 () Bool)

(assert (=> b!5301011 (= e!3294787 (nullable!5110 (h!67447 (exprs!4825 (Context!8651 (Cons!60999 (h!67447 (exprs!4825 (h!67448 zl!343))) (t!374328 (exprs!4825 (h!67448 zl!343)))))))))))

(declare-fun b!5301012 () Bool)

(assert (=> b!5301012 (= e!3294786 e!3294788)))

(declare-fun c!920321 () Bool)

(assert (=> b!5301012 (= c!920321 ((_ is Cons!60999) (exprs!4825 (Context!8651 (Cons!60999 (h!67447 (exprs!4825 (h!67448 zl!343))) (t!374328 (exprs!4825 (h!67448 zl!343))))))))))

(declare-fun b!5301013 () Bool)

(assert (=> b!5301013 (= e!3294786 ((_ map or) call!377939 (derivationStepZipperUp!313 (Context!8651 (t!374328 (exprs!4825 (Context!8651 (Cons!60999 (h!67447 (exprs!4825 (h!67448 zl!343))) (t!374328 (exprs!4825 (h!67448 zl!343)))))))) (h!67446 s!2326))))))

(assert (= (and d!1704596 res!2248261) b!5301011))

(assert (= (and d!1704596 c!920322) b!5301013))

(assert (= (and d!1704596 (not c!920322)) b!5301012))

(assert (= (and b!5301012 c!920321) b!5301010))

(assert (= (and b!5301012 (not c!920321)) b!5301009))

(assert (= (or b!5301013 b!5301010) bm!377934))

(declare-fun m!6338388 () Bool)

(assert (=> bm!377934 m!6338388))

(declare-fun m!6338390 () Bool)

(assert (=> b!5301011 m!6338390))

(declare-fun m!6338392 () Bool)

(assert (=> b!5301013 m!6338392))

(assert (=> b!5299959 d!1704596))

(declare-fun d!1704598 () Bool)

(assert (=> d!1704598 (= (flatMap!668 z!1189 lambda!269083) (dynLambda!24118 lambda!269083 (h!67448 zl!343)))))

(declare-fun lt!2165670 () Unit!153282)

(assert (=> d!1704598 (= lt!2165670 (choose!39616 z!1189 (h!67448 zl!343) lambda!269083))))

(assert (=> d!1704598 (= z!1189 (store ((as const (Array Context!8650 Bool)) false) (h!67448 zl!343) true))))

(assert (=> d!1704598 (= (lemmaFlatMapOnSingletonSet!200 z!1189 (h!67448 zl!343) lambda!269083) lt!2165670)))

(declare-fun b_lambda!204253 () Bool)

(assert (=> (not b_lambda!204253) (not d!1704598)))

(declare-fun bs!1229525 () Bool)

(assert (= bs!1229525 d!1704598))

(assert (=> bs!1229525 m!6337380))

(declare-fun m!6338394 () Bool)

(assert (=> bs!1229525 m!6338394))

(declare-fun m!6338396 () Bool)

(assert (=> bs!1229525 m!6338396))

(declare-fun m!6338398 () Bool)

(assert (=> bs!1229525 m!6338398))

(assert (=> b!5299959 d!1704598))

(declare-fun bm!377935 () Bool)

(declare-fun call!377944 () (InoxSet Context!8650))

(declare-fun call!377945 () (InoxSet Context!8650))

(assert (=> bm!377935 (= call!377944 call!377945)))

(declare-fun b!5301014 () Bool)

(declare-fun e!3294794 () Bool)

(assert (=> b!5301014 (= e!3294794 (nullable!5110 (regOne!30394 (h!67447 (exprs!4825 (h!67448 zl!343))))))))

(declare-fun b!5301015 () Bool)

(declare-fun e!3294793 () (InoxSet Context!8650))

(assert (=> b!5301015 (= e!3294793 call!377944)))

(declare-fun bm!377936 () Bool)

(declare-fun call!377942 () List!61123)

(declare-fun call!377943 () List!61123)

(assert (=> bm!377936 (= call!377942 call!377943)))

(declare-fun b!5301016 () Bool)

(declare-fun e!3294789 () (InoxSet Context!8650))

(assert (=> b!5301016 (= e!3294789 call!377944)))

(declare-fun bm!377937 () Bool)

(declare-fun call!377941 () (InoxSet Context!8650))

(assert (=> bm!377937 (= call!377945 call!377941)))

(declare-fun b!5301017 () Bool)

(assert (=> b!5301017 (= e!3294789 ((as const (Array Context!8650 Bool)) false))))

(declare-fun c!920327 () Bool)

(declare-fun bm!377938 () Bool)

(declare-fun call!377940 () (InoxSet Context!8650))

(assert (=> bm!377938 (= call!377940 (derivationStepZipperDown!389 (ite c!920327 (regTwo!30395 (h!67447 (exprs!4825 (h!67448 zl!343)))) (regOne!30394 (h!67447 (exprs!4825 (h!67448 zl!343))))) (ite c!920327 lt!2165473 (Context!8651 call!377943)) (h!67446 s!2326)))))

(declare-fun c!920323 () Bool)

(declare-fun c!920326 () Bool)

(declare-fun bm!377939 () Bool)

(assert (=> bm!377939 (= call!377941 (derivationStepZipperDown!389 (ite c!920327 (regOne!30395 (h!67447 (exprs!4825 (h!67448 zl!343)))) (ite c!920323 (regTwo!30394 (h!67447 (exprs!4825 (h!67448 zl!343)))) (ite c!920326 (regOne!30394 (h!67447 (exprs!4825 (h!67448 zl!343)))) (reg!15270 (h!67447 (exprs!4825 (h!67448 zl!343))))))) (ite (or c!920327 c!920323) lt!2165473 (Context!8651 call!377942)) (h!67446 s!2326)))))

(declare-fun b!5301018 () Bool)

(declare-fun e!3294790 () (InoxSet Context!8650))

(declare-fun e!3294792 () (InoxSet Context!8650))

(assert (=> b!5301018 (= e!3294790 e!3294792)))

(assert (=> b!5301018 (= c!920327 ((_ is Union!14941) (h!67447 (exprs!4825 (h!67448 zl!343)))))))

(declare-fun b!5301019 () Bool)

(assert (=> b!5301019 (= c!920323 e!3294794)))

(declare-fun res!2248262 () Bool)

(assert (=> b!5301019 (=> (not res!2248262) (not e!3294794))))

(assert (=> b!5301019 (= res!2248262 ((_ is Concat!23786) (h!67447 (exprs!4825 (h!67448 zl!343)))))))

(declare-fun e!3294791 () (InoxSet Context!8650))

(assert (=> b!5301019 (= e!3294792 e!3294791)))

(declare-fun b!5301020 () Bool)

(assert (=> b!5301020 (= e!3294792 ((_ map or) call!377941 call!377940))))

(declare-fun b!5301021 () Bool)

(assert (=> b!5301021 (= e!3294791 e!3294793)))

(assert (=> b!5301021 (= c!920326 ((_ is Concat!23786) (h!67447 (exprs!4825 (h!67448 zl!343)))))))

(declare-fun b!5301022 () Bool)

(assert (=> b!5301022 (= e!3294790 (store ((as const (Array Context!8650 Bool)) false) lt!2165473 true))))

(declare-fun d!1704600 () Bool)

(declare-fun c!920325 () Bool)

(assert (=> d!1704600 (= c!920325 (and ((_ is ElementMatch!14941) (h!67447 (exprs!4825 (h!67448 zl!343)))) (= (c!919991 (h!67447 (exprs!4825 (h!67448 zl!343)))) (h!67446 s!2326))))))

(assert (=> d!1704600 (= (derivationStepZipperDown!389 (h!67447 (exprs!4825 (h!67448 zl!343))) lt!2165473 (h!67446 s!2326)) e!3294790)))

(declare-fun bm!377940 () Bool)

(assert (=> bm!377940 (= call!377943 ($colon$colon!1371 (exprs!4825 lt!2165473) (ite (or c!920323 c!920326) (regTwo!30394 (h!67447 (exprs!4825 (h!67448 zl!343)))) (h!67447 (exprs!4825 (h!67448 zl!343))))))))

(declare-fun b!5301023 () Bool)

(assert (=> b!5301023 (= e!3294791 ((_ map or) call!377940 call!377945))))

(declare-fun b!5301024 () Bool)

(declare-fun c!920324 () Bool)

(assert (=> b!5301024 (= c!920324 ((_ is Star!14941) (h!67447 (exprs!4825 (h!67448 zl!343)))))))

(assert (=> b!5301024 (= e!3294793 e!3294789)))

(assert (= (and d!1704600 c!920325) b!5301022))

(assert (= (and d!1704600 (not c!920325)) b!5301018))

(assert (= (and b!5301018 c!920327) b!5301020))

(assert (= (and b!5301018 (not c!920327)) b!5301019))

(assert (= (and b!5301019 res!2248262) b!5301014))

(assert (= (and b!5301019 c!920323) b!5301023))

(assert (= (and b!5301019 (not c!920323)) b!5301021))

(assert (= (and b!5301021 c!920326) b!5301015))

(assert (= (and b!5301021 (not c!920326)) b!5301024))

(assert (= (and b!5301024 c!920324) b!5301016))

(assert (= (and b!5301024 (not c!920324)) b!5301017))

(assert (= (or b!5301015 b!5301016) bm!377936))

(assert (= (or b!5301015 b!5301016) bm!377935))

(assert (= (or b!5301023 bm!377936) bm!377940))

(assert (= (or b!5301023 bm!377935) bm!377937))

(assert (= (or b!5301020 b!5301023) bm!377938))

(assert (= (or b!5301020 bm!377937) bm!377939))

(declare-fun m!6338400 () Bool)

(assert (=> bm!377940 m!6338400))

(assert (=> b!5301022 m!6337802))

(declare-fun m!6338402 () Bool)

(assert (=> bm!377939 m!6338402))

(declare-fun m!6338404 () Bool)

(assert (=> b!5301014 m!6338404))

(declare-fun m!6338406 () Bool)

(assert (=> bm!377938 m!6338406))

(assert (=> b!5299959 d!1704600))

(declare-fun b!5301025 () Bool)

(declare-fun e!3294797 () (InoxSet Context!8650))

(assert (=> b!5301025 (= e!3294797 ((as const (Array Context!8650 Bool)) false))))

(declare-fun b!5301026 () Bool)

(declare-fun call!377946 () (InoxSet Context!8650))

(assert (=> b!5301026 (= e!3294797 call!377946)))

(declare-fun bm!377941 () Bool)

(assert (=> bm!377941 (= call!377946 (derivationStepZipperDown!389 (h!67447 (exprs!4825 (h!67448 zl!343))) (Context!8651 (t!374328 (exprs!4825 (h!67448 zl!343)))) (h!67446 s!2326)))))

(declare-fun d!1704602 () Bool)

(declare-fun c!920329 () Bool)

(declare-fun e!3294796 () Bool)

(assert (=> d!1704602 (= c!920329 e!3294796)))

(declare-fun res!2248263 () Bool)

(assert (=> d!1704602 (=> (not res!2248263) (not e!3294796))))

(assert (=> d!1704602 (= res!2248263 ((_ is Cons!60999) (exprs!4825 (h!67448 zl!343))))))

(declare-fun e!3294795 () (InoxSet Context!8650))

(assert (=> d!1704602 (= (derivationStepZipperUp!313 (h!67448 zl!343) (h!67446 s!2326)) e!3294795)))

(declare-fun b!5301027 () Bool)

(assert (=> b!5301027 (= e!3294796 (nullable!5110 (h!67447 (exprs!4825 (h!67448 zl!343)))))))

(declare-fun b!5301028 () Bool)

(assert (=> b!5301028 (= e!3294795 e!3294797)))

(declare-fun c!920328 () Bool)

(assert (=> b!5301028 (= c!920328 ((_ is Cons!60999) (exprs!4825 (h!67448 zl!343))))))

(declare-fun b!5301029 () Bool)

(assert (=> b!5301029 (= e!3294795 ((_ map or) call!377946 (derivationStepZipperUp!313 (Context!8651 (t!374328 (exprs!4825 (h!67448 zl!343)))) (h!67446 s!2326))))))

(assert (= (and d!1704602 res!2248263) b!5301027))

(assert (= (and d!1704602 c!920329) b!5301029))

(assert (= (and d!1704602 (not c!920329)) b!5301028))

(assert (= (and b!5301028 c!920328) b!5301026))

(assert (= (and b!5301028 (not c!920328)) b!5301025))

(assert (= (or b!5301029 b!5301026) bm!377941))

(declare-fun m!6338408 () Bool)

(assert (=> bm!377941 m!6338408))

(assert (=> b!5301027 m!6337388))

(declare-fun m!6338410 () Bool)

(assert (=> b!5301029 m!6338410))

(assert (=> b!5299959 d!1704602))

(declare-fun b!5301034 () Bool)

(declare-fun e!3294800 () Bool)

(declare-fun tp!1478222 () Bool)

(assert (=> b!5301034 (= e!3294800 (and tp_is_empty!39135 tp!1478222))))

(assert (=> b!5299979 (= tp!1478158 e!3294800)))

(assert (= (and b!5299979 ((_ is Cons!60998) (t!374327 s!2326))) b!5301034))

(declare-fun condSetEmpty!34049 () Bool)

(assert (=> setNonEmpty!34043 (= condSetEmpty!34049 (= setRest!34043 ((as const (Array Context!8650 Bool)) false)))))

(declare-fun setRes!34049 () Bool)

(assert (=> setNonEmpty!34043 (= tp!1478156 setRes!34049)))

(declare-fun setIsEmpty!34049 () Bool)

(assert (=> setIsEmpty!34049 setRes!34049))

(declare-fun e!3294803 () Bool)

(declare-fun tp!1478228 () Bool)

(declare-fun setElem!34049 () Context!8650)

(declare-fun setNonEmpty!34049 () Bool)

(assert (=> setNonEmpty!34049 (= setRes!34049 (and tp!1478228 (inv!80599 setElem!34049) e!3294803))))

(declare-fun setRest!34049 () (InoxSet Context!8650))

(assert (=> setNonEmpty!34049 (= setRest!34043 ((_ map or) (store ((as const (Array Context!8650 Bool)) false) setElem!34049 true) setRest!34049))))

(declare-fun b!5301039 () Bool)

(declare-fun tp!1478227 () Bool)

(assert (=> b!5301039 (= e!3294803 tp!1478227)))

(assert (= (and setNonEmpty!34043 condSetEmpty!34049) setIsEmpty!34049))

(assert (= (and setNonEmpty!34043 (not condSetEmpty!34049)) setNonEmpty!34049))

(assert (= setNonEmpty!34049 b!5301039))

(declare-fun m!6338412 () Bool)

(assert (=> setNonEmpty!34049 m!6338412))

(declare-fun b!5301044 () Bool)

(declare-fun e!3294806 () Bool)

(declare-fun tp!1478233 () Bool)

(declare-fun tp!1478234 () Bool)

(assert (=> b!5301044 (= e!3294806 (and tp!1478233 tp!1478234))))

(assert (=> b!5299966 (= tp!1478155 e!3294806)))

(assert (= (and b!5299966 ((_ is Cons!60999) (exprs!4825 (h!67448 zl!343)))) b!5301044))

(declare-fun b!5301052 () Bool)

(declare-fun e!3294812 () Bool)

(declare-fun tp!1478239 () Bool)

(assert (=> b!5301052 (= e!3294812 tp!1478239)))

(declare-fun tp!1478240 () Bool)

(declare-fun b!5301051 () Bool)

(declare-fun e!3294811 () Bool)

(assert (=> b!5301051 (= e!3294811 (and (inv!80599 (h!67448 (t!374329 zl!343))) e!3294812 tp!1478240))))

(assert (=> b!5299961 (= tp!1478161 e!3294811)))

(assert (= b!5301051 b!5301052))

(assert (= (and b!5299961 ((_ is Cons!61000) (t!374329 zl!343))) b!5301051))

(declare-fun m!6338414 () Bool)

(assert (=> b!5301051 m!6338414))

(declare-fun b!5301066 () Bool)

(declare-fun e!3294815 () Bool)

(declare-fun tp!1478251 () Bool)

(declare-fun tp!1478254 () Bool)

(assert (=> b!5301066 (= e!3294815 (and tp!1478251 tp!1478254))))

(declare-fun b!5301064 () Bool)

(declare-fun tp!1478252 () Bool)

(declare-fun tp!1478253 () Bool)

(assert (=> b!5301064 (= e!3294815 (and tp!1478252 tp!1478253))))

(declare-fun b!5301063 () Bool)

(assert (=> b!5301063 (= e!3294815 tp_is_empty!39135)))

(declare-fun b!5301065 () Bool)

(declare-fun tp!1478255 () Bool)

(assert (=> b!5301065 (= e!3294815 tp!1478255)))

(assert (=> b!5299962 (= tp!1478160 e!3294815)))

(assert (= (and b!5299962 ((_ is ElementMatch!14941) (regOne!30395 r!7292))) b!5301063))

(assert (= (and b!5299962 ((_ is Concat!23786) (regOne!30395 r!7292))) b!5301064))

(assert (= (and b!5299962 ((_ is Star!14941) (regOne!30395 r!7292))) b!5301065))

(assert (= (and b!5299962 ((_ is Union!14941) (regOne!30395 r!7292))) b!5301066))

(declare-fun b!5301070 () Bool)

(declare-fun e!3294816 () Bool)

(declare-fun tp!1478256 () Bool)

(declare-fun tp!1478259 () Bool)

(assert (=> b!5301070 (= e!3294816 (and tp!1478256 tp!1478259))))

(declare-fun b!5301068 () Bool)

(declare-fun tp!1478257 () Bool)

(declare-fun tp!1478258 () Bool)

(assert (=> b!5301068 (= e!3294816 (and tp!1478257 tp!1478258))))

(declare-fun b!5301067 () Bool)

(assert (=> b!5301067 (= e!3294816 tp_is_empty!39135)))

(declare-fun b!5301069 () Bool)

(declare-fun tp!1478260 () Bool)

(assert (=> b!5301069 (= e!3294816 tp!1478260)))

(assert (=> b!5299962 (= tp!1478159 e!3294816)))

(assert (= (and b!5299962 ((_ is ElementMatch!14941) (regTwo!30395 r!7292))) b!5301067))

(assert (= (and b!5299962 ((_ is Concat!23786) (regTwo!30395 r!7292))) b!5301068))

(assert (= (and b!5299962 ((_ is Star!14941) (regTwo!30395 r!7292))) b!5301069))

(assert (= (and b!5299962 ((_ is Union!14941) (regTwo!30395 r!7292))) b!5301070))

(declare-fun b!5301071 () Bool)

(declare-fun e!3294817 () Bool)

(declare-fun tp!1478261 () Bool)

(declare-fun tp!1478262 () Bool)

(assert (=> b!5301071 (= e!3294817 (and tp!1478261 tp!1478262))))

(assert (=> b!5299972 (= tp!1478153 e!3294817)))

(assert (= (and b!5299972 ((_ is Cons!60999) (exprs!4825 setElem!34043))) b!5301071))

(declare-fun b!5301075 () Bool)

(declare-fun e!3294818 () Bool)

(declare-fun tp!1478263 () Bool)

(declare-fun tp!1478266 () Bool)

(assert (=> b!5301075 (= e!3294818 (and tp!1478263 tp!1478266))))

(declare-fun b!5301073 () Bool)

(declare-fun tp!1478264 () Bool)

(declare-fun tp!1478265 () Bool)

(assert (=> b!5301073 (= e!3294818 (and tp!1478264 tp!1478265))))

(declare-fun b!5301072 () Bool)

(assert (=> b!5301072 (= e!3294818 tp_is_empty!39135)))

(declare-fun b!5301074 () Bool)

(declare-fun tp!1478267 () Bool)

(assert (=> b!5301074 (= e!3294818 tp!1478267)))

(assert (=> b!5299948 (= tp!1478152 e!3294818)))

(assert (= (and b!5299948 ((_ is ElementMatch!14941) (regOne!30394 r!7292))) b!5301072))

(assert (= (and b!5299948 ((_ is Concat!23786) (regOne!30394 r!7292))) b!5301073))

(assert (= (and b!5299948 ((_ is Star!14941) (regOne!30394 r!7292))) b!5301074))

(assert (= (and b!5299948 ((_ is Union!14941) (regOne!30394 r!7292))) b!5301075))

(declare-fun b!5301079 () Bool)

(declare-fun e!3294819 () Bool)

(declare-fun tp!1478268 () Bool)

(declare-fun tp!1478271 () Bool)

(assert (=> b!5301079 (= e!3294819 (and tp!1478268 tp!1478271))))

(declare-fun b!5301077 () Bool)

(declare-fun tp!1478269 () Bool)

(declare-fun tp!1478270 () Bool)

(assert (=> b!5301077 (= e!3294819 (and tp!1478269 tp!1478270))))

(declare-fun b!5301076 () Bool)

(assert (=> b!5301076 (= e!3294819 tp_is_empty!39135)))

(declare-fun b!5301078 () Bool)

(declare-fun tp!1478272 () Bool)

(assert (=> b!5301078 (= e!3294819 tp!1478272)))

(assert (=> b!5299948 (= tp!1478157 e!3294819)))

(assert (= (and b!5299948 ((_ is ElementMatch!14941) (regTwo!30394 r!7292))) b!5301076))

(assert (= (and b!5299948 ((_ is Concat!23786) (regTwo!30394 r!7292))) b!5301077))

(assert (= (and b!5299948 ((_ is Star!14941) (regTwo!30394 r!7292))) b!5301078))

(assert (= (and b!5299948 ((_ is Union!14941) (regTwo!30394 r!7292))) b!5301079))

(declare-fun b!5301083 () Bool)

(declare-fun e!3294820 () Bool)

(declare-fun tp!1478273 () Bool)

(declare-fun tp!1478276 () Bool)

(assert (=> b!5301083 (= e!3294820 (and tp!1478273 tp!1478276))))

(declare-fun b!5301081 () Bool)

(declare-fun tp!1478274 () Bool)

(declare-fun tp!1478275 () Bool)

(assert (=> b!5301081 (= e!3294820 (and tp!1478274 tp!1478275))))

(declare-fun b!5301080 () Bool)

(assert (=> b!5301080 (= e!3294820 tp_is_empty!39135)))

(declare-fun b!5301082 () Bool)

(declare-fun tp!1478277 () Bool)

(assert (=> b!5301082 (= e!3294820 tp!1478277)))

(assert (=> b!5299964 (= tp!1478154 e!3294820)))

(assert (= (and b!5299964 ((_ is ElementMatch!14941) (reg!15270 r!7292))) b!5301080))

(assert (= (and b!5299964 ((_ is Concat!23786) (reg!15270 r!7292))) b!5301081))

(assert (= (and b!5299964 ((_ is Star!14941) (reg!15270 r!7292))) b!5301082))

(assert (= (and b!5299964 ((_ is Union!14941) (reg!15270 r!7292))) b!5301083))

(declare-fun b_lambda!204255 () Bool)

(assert (= b_lambda!204237 (or b!5299959 b_lambda!204255)))

(declare-fun bs!1229526 () Bool)

(declare-fun d!1704604 () Bool)

(assert (= bs!1229526 (and d!1704604 b!5299959)))

(assert (=> bs!1229526 (= (dynLambda!24118 lambda!269083 lt!2165467) (derivationStepZipperUp!313 lt!2165467 (h!67446 s!2326)))))

(assert (=> bs!1229526 m!6337258))

(assert (=> d!1704358 d!1704604))

(declare-fun b_lambda!204257 () Bool)

(assert (= b_lambda!204251 (or b!5299959 b_lambda!204257)))

(declare-fun bs!1229527 () Bool)

(declare-fun d!1704606 () Bool)

(assert (= bs!1229527 (and d!1704606 b!5299959)))

(assert (=> bs!1229527 (= (dynLambda!24118 lambda!269083 lt!2165445) (derivationStepZipperUp!313 lt!2165445 (h!67446 s!2326)))))

(assert (=> bs!1229527 m!6337366))

(assert (=> d!1704584 d!1704606))

(declare-fun b_lambda!204259 () Bool)

(assert (= b_lambda!204253 (or b!5299959 b_lambda!204259)))

(declare-fun bs!1229528 () Bool)

(declare-fun d!1704608 () Bool)

(assert (= bs!1229528 (and d!1704608 b!5299959)))

(assert (=> bs!1229528 (= (dynLambda!24118 lambda!269083 (h!67448 zl!343)) (derivationStepZipperUp!313 (h!67448 zl!343) (h!67446 s!2326)))))

(assert (=> bs!1229528 m!6337382))

(assert (=> d!1704598 d!1704608))

(check-sat (not d!1704396) (not b!5300994) (not b!5300350) (not b!5300870) (not b!5300896) (not b!5300873) (not d!1704524) (not b!5300922) (not b!5300953) (not b!5300822) (not b!5301075) (not d!1704358) (not b_lambda!204257) (not b!5300833) (not b!5300938) (not bm!377825) (not b!5301083) (not b!5300914) (not b!5300817) (not b!5300862) (not bm!377912) (not b!5300941) (not d!1704528) (not b!5301064) (not bm!377911) (not b!5300874) (not bm!377930) (not b!5300513) (not b!5300936) (not d!1704506) (not b!5300110) (not d!1704526) (not b!5300114) (not b!5300839) (not b!5301079) (not b!5300906) (not d!1704586) (not b!5301039) (not b!5300509) (not bm!377856) (not bm!377924) (not b!5301034) (not d!1704456) (not bm!377863) (not b!5301070) (not b!5300897) (not d!1704484) (not b!5300973) (not b!5301027) (not d!1704520) (not b!5301066) (not b!5300942) (not d!1704542) (not b!5300338) (not b!5300908) (not d!1704556) (not d!1704352) (not d!1704324) (not b!5300967) (not b!5300933) (not d!1704554) (not d!1704540) (not b!5300995) (not d!1704594) (not b!5300682) (not b!5301081) (not b!5300265) (not bm!377926) (not b!5300864) (not b!5300131) (not d!1704510) (not d!1704578) (not b!5301011) (not b!5300940) (not b!5300909) (not b!5300982) (not b!5300883) (not b!5300879) (not b!5301006) (not b!5300820) (not b!5300920) (not d!1704536) (not b!5300111) (not d!1704546) (not b!5300351) (not b!5300799) (not b!5301071) (not b!5300796) (not b!5300921) (not b!5300789) (not b!5300876) (not bm!377933) (not b!5300929) (not b!5300868) (not b!5300510) (not b!5300961) (not b!5300902) (not b!5300882) (not b!5300863) (not bm!377922) (not b!5300968) (not b!5300793) (not b!5300935) (not d!1704558) (not d!1704500) (not d!1704552) (not d!1704294) (not b!5300992) (not b!5300980) (not b!5300838) (not b!5300831) (not d!1704418) (not b!5300899) (not b!5300905) (not b!5300340) (not b!5300821) (not b!5300421) (not d!1704342) (not bm!377858) (not b!5300888) (not b!5300354) (not d!1704530) (not b!5300998) (not bs!1229527) (not b!5301078) (not b!5300939) (not bm!377927) (not b!5300869) (not d!1704494) (not d!1704496) (not b!5300406) (not bm!377919) (not d!1704572) (not d!1704326) (not d!1704328) (not bs!1229528) (not d!1704584) (not d!1704548) (not b!5301074) (not b!5300924) (not b!5300866) (not b!5300910) (not b!5301073) (not bm!377857) (not d!1704420) (not b!5300925) (not b!5300972) (not b!5300785) tp_is_empty!39135 (not bm!377931) (not d!1704516) (not d!1704416) (not d!1704476) (not bm!377938) (not b!5300264) (not b_lambda!204255) (not bm!377921) (not b!5300112) (not b!5300878) (not b!5300915) (not b!5300901) (not b!5301014) (not b!5300231) (not d!1704492) (not bs!1229526) (not d!1704562) (not b!5300119) (not b!5300911) (not b_lambda!204259) (not b!5300903) (not d!1704440) (not b!5300784) (not b!5300512) (not b!5301052) (not b!5300916) (not d!1704550) (not d!1704598) (not b!5300819) (not bm!377864) (not bm!377929) (not b!5301029) (not d!1704574) (not d!1704576) (not b!5300918) (not bm!377925) (not b!5300895) (not d!1704348) (not d!1704514) (not b!5300970) (not bm!377940) (not b!5300515) (not d!1704544) (not bm!377939) (not d!1704346) (not d!1704534) (not b!5300971) (not b!5300943) (not b!5301051) (not b!5301044) (not b!5300841) (not d!1704532) (not bm!377932) (not b!5300339) (not d!1704304) (not b!5301069) (not b!5300993) (not d!1704582) (not b!5301077) (not bm!377934) (not bm!377838) (not b!5300795) (not b!5300818) (not d!1704490) (not b!5301003) (not b!5300960) (not bm!377824) (not b!5300840) (not b!5300889) (not b!5301082) (not b!5300336) (not b!5300824) (not bm!377862) (not bm!377928) (not b!5300954) (not d!1704512) (not b!5300880) (not b!5300872) (not b!5301068) (not b!5300113) (not b!5300836) (not b!5301000) (not d!1704538) (not d!1704592) (not setNonEmpty!34049) (not b!5300816) (not b!5300823) (not b!5300951) (not b!5301008) (not b!5301065) (not b!5300116) (not d!1704522) (not b!5300988) (not b!5300808) (not d!1704498) (not b!5300947) (not bm!377941) (not d!1704332) (not b!5301013) (not b!5300514) (not b!5300990) (not b!5300681) (not d!1704508))
(check-sat)
