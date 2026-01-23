; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!558422 () Bool)

(assert start!558422)

(declare-fun b!5291098 () Bool)

(assert (=> b!5291098 true))

(assert (=> b!5291098 true))

(declare-fun lambda!267904 () Int)

(declare-fun lambda!267903 () Int)

(assert (=> b!5291098 (not (= lambda!267904 lambda!267903))))

(assert (=> b!5291098 true))

(assert (=> b!5291098 true))

(declare-fun b!5291091 () Bool)

(assert (=> b!5291091 true))

(declare-fun bs!1227190 () Bool)

(declare-fun b!5291083 () Bool)

(assert (= bs!1227190 (and b!5291083 b!5291098)))

(declare-datatypes ((C!30120 0))(
  ( (C!30121 (val!24762 Int)) )
))
(declare-datatypes ((Regex!14925 0))(
  ( (ElementMatch!14925 (c!917825 C!30120)) (Concat!23770 (regOne!30362 Regex!14925) (regTwo!30362 Regex!14925)) (EmptyExpr!14925) (Star!14925 (reg!15254 Regex!14925)) (EmptyLang!14925) (Union!14925 (regOne!30363 Regex!14925) (regTwo!30363 Regex!14925)) )
))
(declare-fun r!7292 () Regex!14925)

(declare-fun lambda!267906 () Int)

(declare-fun lt!2162145 () Regex!14925)

(assert (=> bs!1227190 (= (and (= (regOne!30362 (regOne!30362 r!7292)) (regOne!30362 r!7292)) (= lt!2162145 (regTwo!30362 r!7292))) (= lambda!267906 lambda!267903))))

(assert (=> bs!1227190 (not (= lambda!267906 lambda!267904))))

(assert (=> b!5291083 true))

(assert (=> b!5291083 true))

(assert (=> b!5291083 true))

(declare-fun lambda!267907 () Int)

(assert (=> bs!1227190 (not (= lambda!267907 lambda!267903))))

(assert (=> bs!1227190 (= (and (= (regOne!30362 (regOne!30362 r!7292)) (regOne!30362 r!7292)) (= lt!2162145 (regTwo!30362 r!7292))) (= lambda!267907 lambda!267904))))

(assert (=> b!5291083 (not (= lambda!267907 lambda!267906))))

(assert (=> b!5291083 true))

(assert (=> b!5291083 true))

(assert (=> b!5291083 true))

(declare-fun lt!2162114 () Regex!14925)

(declare-fun lambda!267908 () Int)

(assert (=> bs!1227190 (= (and (= (regTwo!30362 (regOne!30362 r!7292)) (regOne!30362 r!7292)) (= lt!2162114 (regTwo!30362 r!7292))) (= lambda!267908 lambda!267903))))

(assert (=> bs!1227190 (not (= lambda!267908 lambda!267904))))

(assert (=> b!5291083 (= (and (= (regTwo!30362 (regOne!30362 r!7292)) (regOne!30362 (regOne!30362 r!7292))) (= lt!2162114 lt!2162145)) (= lambda!267908 lambda!267906))))

(assert (=> b!5291083 (not (= lambda!267908 lambda!267907))))

(assert (=> b!5291083 true))

(assert (=> b!5291083 true))

(assert (=> b!5291083 true))

(declare-fun b!5291076 () Bool)

(declare-fun e!3289291 () Bool)

(declare-fun e!3289282 () Bool)

(assert (=> b!5291076 (= e!3289291 e!3289282)))

(declare-fun res!2244070 () Bool)

(assert (=> b!5291076 (=> res!2244070 e!3289282)))

(declare-fun e!3289296 () Bool)

(assert (=> b!5291076 (= res!2244070 e!3289296)))

(declare-fun res!2244072 () Bool)

(assert (=> b!5291076 (=> (not res!2244072) (not e!3289296))))

(declare-fun lt!2162135 () Bool)

(declare-datatypes ((List!61074 0))(
  ( (Nil!60950) (Cons!60950 (h!67398 C!30120) (t!374279 List!61074)) )
))
(declare-fun s!2326 () List!61074)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61075 0))(
  ( (Nil!60951) (Cons!60951 (h!67399 Regex!14925) (t!374280 List!61075)) )
))
(declare-datatypes ((Context!8618 0))(
  ( (Context!8619 (exprs!4809 List!61075)) )
))
(declare-fun lt!2162128 () (InoxSet Context!8618))

(declare-fun matchZipper!1169 ((InoxSet Context!8618) List!61074) Bool)

(assert (=> b!5291076 (= res!2244072 (not (= lt!2162135 (matchZipper!1169 lt!2162128 (t!374279 s!2326)))))))

(declare-fun lt!2162115 () (InoxSet Context!8618))

(declare-fun e!3289279 () Bool)

(assert (=> b!5291076 (= (matchZipper!1169 lt!2162115 (t!374279 s!2326)) e!3289279)))

(declare-fun res!2244067 () Bool)

(assert (=> b!5291076 (=> res!2244067 e!3289279)))

(declare-fun lt!2162153 () Bool)

(assert (=> b!5291076 (= res!2244067 lt!2162153)))

(declare-datatypes ((Unit!153218 0))(
  ( (Unit!153219) )
))
(declare-fun lt!2162152 () Unit!153218)

(declare-fun lt!2162150 () (InoxSet Context!8618))

(declare-fun lt!2162139 () (InoxSet Context!8618))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!162 ((InoxSet Context!8618) (InoxSet Context!8618) List!61074) Unit!153218)

(assert (=> b!5291076 (= lt!2162152 (lemmaZipperConcatMatchesSameAsBothZippers!162 lt!2162139 lt!2162150 (t!374279 s!2326)))))

(declare-fun lt!2162119 () Context!8618)

(declare-fun lt!2162117 () (InoxSet Context!8618))

(declare-fun lambda!267905 () Int)

(declare-fun flatMap!652 ((InoxSet Context!8618) Int) (InoxSet Context!8618))

(declare-fun derivationStepZipperUp!297 (Context!8618 C!30120) (InoxSet Context!8618))

(assert (=> b!5291076 (= (flatMap!652 lt!2162117 lambda!267905) (derivationStepZipperUp!297 lt!2162119 (h!67398 s!2326)))))

(declare-fun lt!2162148 () Unit!153218)

(declare-fun lemmaFlatMapOnSingletonSet!184 ((InoxSet Context!8618) Context!8618 Int) Unit!153218)

(assert (=> b!5291076 (= lt!2162148 (lemmaFlatMapOnSingletonSet!184 lt!2162117 lt!2162119 lambda!267905))))

(declare-fun b!5291077 () Bool)

(declare-fun e!3289278 () Bool)

(declare-fun tp_is_empty!39103 () Bool)

(assert (=> b!5291077 (= e!3289278 tp_is_empty!39103)))

(declare-fun b!5291078 () Bool)

(declare-fun derivationStepZipper!1168 ((InoxSet Context!8618) C!30120) (InoxSet Context!8618))

(assert (=> b!5291078 (= e!3289296 (not (matchZipper!1169 (derivationStepZipper!1168 lt!2162117 (h!67398 s!2326)) (t!374279 s!2326))))))

(declare-fun b!5291079 () Bool)

(declare-fun tp!1476985 () Bool)

(declare-fun tp!1476982 () Bool)

(assert (=> b!5291079 (= e!3289278 (and tp!1476985 tp!1476982))))

(declare-fun b!5291080 () Bool)

(declare-fun res!2244078 () Bool)

(declare-fun e!3289280 () Bool)

(assert (=> b!5291080 (=> (not res!2244078) (not e!3289280))))

(declare-datatypes ((List!61076 0))(
  ( (Nil!60952) (Cons!60952 (h!67400 Context!8618) (t!374281 List!61076)) )
))
(declare-fun zl!343 () List!61076)

(declare-fun unfocusZipper!667 (List!61076) Regex!14925)

(assert (=> b!5291080 (= res!2244078 (= r!7292 (unfocusZipper!667 zl!343)))))

(declare-fun setNonEmpty!33959 () Bool)

(declare-fun e!3289281 () Bool)

(declare-fun tp!1476979 () Bool)

(declare-fun setRes!33959 () Bool)

(declare-fun setElem!33959 () Context!8618)

(declare-fun inv!80559 (Context!8618) Bool)

(assert (=> setNonEmpty!33959 (= setRes!33959 (and tp!1476979 (inv!80559 setElem!33959) e!3289281))))

(declare-fun z!1189 () (InoxSet Context!8618))

(declare-fun setRest!33959 () (InoxSet Context!8618))

(assert (=> setNonEmpty!33959 (= z!1189 ((_ map or) (store ((as const (Array Context!8618 Bool)) false) setElem!33959 true) setRest!33959))))

(declare-fun b!5291081 () Bool)

(declare-fun res!2244080 () Bool)

(assert (=> b!5291081 (=> (not res!2244080) (not e!3289280))))

(declare-fun toList!8709 ((InoxSet Context!8618)) List!61076)

(assert (=> b!5291081 (= res!2244080 (= (toList!8709 z!1189) zl!343))))

(declare-fun b!5291082 () Bool)

(declare-fun e!3289286 () Unit!153218)

(declare-fun Unit!153220 () Unit!153218)

(assert (=> b!5291082 (= e!3289286 Unit!153220)))

(declare-fun e!3289284 () Bool)

(declare-fun lambda!267909 () Int)

(declare-fun forall!14333 (List!61075 Int) Bool)

(assert (=> b!5291083 (= e!3289284 (forall!14333 (t!374280 (exprs!4809 (h!67400 zl!343))) lambda!267909))))

(declare-datatypes ((tuple2!64248 0))(
  ( (tuple2!64249 (_1!35427 List!61074) (_2!35427 List!61074)) )
))
(declare-datatypes ((Option!15036 0))(
  ( (None!15035) (Some!15035 (v!51064 tuple2!64248)) )
))
(declare-fun isDefined!11739 (Option!15036) Bool)

(declare-fun findConcatSeparation!1450 (Regex!14925 Regex!14925 List!61074 List!61074 List!61074) Option!15036)

(declare-fun Exists!2106 (Int) Bool)

(assert (=> b!5291083 (= (isDefined!11739 (findConcatSeparation!1450 (regTwo!30362 (regOne!30362 r!7292)) lt!2162114 Nil!60950 s!2326 s!2326)) (Exists!2106 lambda!267908))))

(declare-fun lt!2162154 () Unit!153218)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1214 (Regex!14925 Regex!14925 List!61074) Unit!153218)

(assert (=> b!5291083 (= lt!2162154 (lemmaFindConcatSeparationEquivalentToExists!1214 (regTwo!30362 (regOne!30362 r!7292)) lt!2162114 s!2326))))

(declare-fun generalisedConcat!594 (List!61075) Regex!14925)

(assert (=> b!5291083 (= lt!2162114 (generalisedConcat!594 (t!374280 (exprs!4809 (h!67400 zl!343)))))))

(declare-fun lt!2162140 () Bool)

(declare-fun matchRSpec!2028 (Regex!14925 List!61074) Bool)

(assert (=> b!5291083 (= lt!2162140 (matchRSpec!2028 lt!2162145 s!2326))))

(declare-fun lt!2162129 () Unit!153218)

(declare-fun mainMatchTheorem!2028 (Regex!14925 List!61074) Unit!153218)

(assert (=> b!5291083 (= lt!2162129 (mainMatchTheorem!2028 lt!2162145 s!2326))))

(assert (=> b!5291083 (= (Exists!2106 lambda!267906) (Exists!2106 lambda!267907))))

(declare-fun lt!2162132 () Unit!153218)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!760 (Regex!14925 Regex!14925 List!61074) Unit!153218)

(assert (=> b!5291083 (= lt!2162132 (lemmaExistCutMatchRandMatchRSpecEquivalent!760 (regOne!30362 (regOne!30362 r!7292)) lt!2162145 s!2326))))

(assert (=> b!5291083 (= (isDefined!11739 (findConcatSeparation!1450 (regOne!30362 (regOne!30362 r!7292)) lt!2162145 Nil!60950 s!2326 s!2326)) (Exists!2106 lambda!267906))))

(declare-fun lt!2162147 () Unit!153218)

(assert (=> b!5291083 (= lt!2162147 (lemmaFindConcatSeparationEquivalentToExists!1214 (regOne!30362 (regOne!30362 r!7292)) lt!2162145 s!2326))))

(declare-fun lt!2162136 () Bool)

(declare-fun lt!2162131 () Regex!14925)

(assert (=> b!5291083 (= lt!2162136 (matchRSpec!2028 lt!2162131 s!2326))))

(declare-fun lt!2162122 () Unit!153218)

(assert (=> b!5291083 (= lt!2162122 (mainMatchTheorem!2028 lt!2162131 s!2326))))

(assert (=> b!5291083 (= lt!2162140 (matchZipper!1169 lt!2162117 s!2326))))

(declare-fun matchR!7110 (Regex!14925 List!61074) Bool)

(assert (=> b!5291083 (= lt!2162140 (matchR!7110 lt!2162145 s!2326))))

(declare-fun lt!2162123 () Unit!153218)

(declare-fun theoremZipperRegexEquiv!335 ((InoxSet Context!8618) List!61076 Regex!14925 List!61074) Unit!153218)

(assert (=> b!5291083 (= lt!2162123 (theoremZipperRegexEquiv!335 lt!2162117 (Cons!60952 lt!2162119 Nil!60952) lt!2162145 s!2326))))

(declare-fun lt!2162116 () List!61075)

(assert (=> b!5291083 (= lt!2162145 (generalisedConcat!594 lt!2162116))))

(declare-fun lt!2162142 () (InoxSet Context!8618))

(assert (=> b!5291083 (= lt!2162136 (matchZipper!1169 lt!2162142 s!2326))))

(assert (=> b!5291083 (= lt!2162136 (matchR!7110 lt!2162131 s!2326))))

(declare-fun lt!2162126 () Unit!153218)

(declare-fun lt!2162137 () List!61076)

(assert (=> b!5291083 (= lt!2162126 (theoremZipperRegexEquiv!335 lt!2162142 lt!2162137 lt!2162131 s!2326))))

(declare-fun lt!2162127 () List!61075)

(assert (=> b!5291083 (= lt!2162131 (generalisedConcat!594 lt!2162127))))

(declare-fun b!5291084 () Bool)

(declare-fun res!2244073 () Bool)

(assert (=> b!5291084 (=> res!2244073 e!3289284)))

(declare-fun zipperDepth!42 (List!61076) Int)

(assert (=> b!5291084 (= res!2244073 (> (zipperDepth!42 lt!2162137) (zipperDepth!42 zl!343)))))

(declare-fun b!5291085 () Bool)

(declare-fun tp!1476984 () Bool)

(assert (=> b!5291085 (= e!3289281 tp!1476984)))

(declare-fun b!5291086 () Bool)

(declare-fun tp!1476983 () Bool)

(assert (=> b!5291086 (= e!3289278 tp!1476983)))

(declare-fun b!5291088 () Bool)

(declare-fun res!2244075 () Bool)

(declare-fun e!3289283 () Bool)

(assert (=> b!5291088 (=> res!2244075 e!3289283)))

(get-info :version)

(assert (=> b!5291088 (= res!2244075 (or ((_ is EmptyExpr!14925) r!7292) ((_ is EmptyLang!14925) r!7292) ((_ is ElementMatch!14925) r!7292) ((_ is Union!14925) r!7292) (not ((_ is Concat!23770) r!7292))))))

(declare-fun b!5291089 () Bool)

(declare-fun res!2244065 () Bool)

(assert (=> b!5291089 (=> res!2244065 e!3289283)))

(declare-fun isEmpty!32903 (List!61076) Bool)

(assert (=> b!5291089 (= res!2244065 (not (isEmpty!32903 (t!374281 zl!343))))))

(declare-fun b!5291090 () Bool)

(declare-fun res!2244084 () Bool)

(declare-fun e!3289290 () Bool)

(assert (=> b!5291090 (=> res!2244084 e!3289290)))

(declare-fun nullable!5094 (Regex!14925) Bool)

(assert (=> b!5291090 (= res!2244084 (not (nullable!5094 (regOne!30362 (regOne!30362 r!7292)))))))

(declare-fun e!3289293 () Bool)

(assert (=> b!5291091 (= e!3289293 e!3289290)))

(declare-fun res!2244064 () Bool)

(assert (=> b!5291091 (=> res!2244064 e!3289290)))

(assert (=> b!5291091 (= res!2244064 (or (and ((_ is ElementMatch!14925) (regOne!30362 r!7292)) (= (c!917825 (regOne!30362 r!7292)) (h!67398 s!2326))) ((_ is Union!14925) (regOne!30362 r!7292)) (not ((_ is Concat!23770) (regOne!30362 r!7292)))))))

(declare-fun lt!2162124 () Unit!153218)

(assert (=> b!5291091 (= lt!2162124 e!3289286)))

(declare-fun c!917824 () Bool)

(assert (=> b!5291091 (= c!917824 (nullable!5094 (h!67399 (exprs!4809 (h!67400 zl!343)))))))

(assert (=> b!5291091 (= (flatMap!652 z!1189 lambda!267905) (derivationStepZipperUp!297 (h!67400 zl!343) (h!67398 s!2326)))))

(declare-fun lt!2162118 () Unit!153218)

(assert (=> b!5291091 (= lt!2162118 (lemmaFlatMapOnSingletonSet!184 z!1189 (h!67400 zl!343) lambda!267905))))

(declare-fun lt!2162130 () (InoxSet Context!8618))

(declare-fun lt!2162151 () Context!8618)

(assert (=> b!5291091 (= lt!2162130 (derivationStepZipperUp!297 lt!2162151 (h!67398 s!2326)))))

(declare-fun lt!2162113 () (InoxSet Context!8618))

(declare-fun derivationStepZipperDown!373 (Regex!14925 Context!8618 C!30120) (InoxSet Context!8618))

(assert (=> b!5291091 (= lt!2162113 (derivationStepZipperDown!373 (h!67399 (exprs!4809 (h!67400 zl!343))) lt!2162151 (h!67398 s!2326)))))

(assert (=> b!5291091 (= lt!2162151 (Context!8619 (t!374280 (exprs!4809 (h!67400 zl!343)))))))

(declare-fun lt!2162138 () (InoxSet Context!8618))

(assert (=> b!5291091 (= lt!2162138 (derivationStepZipperUp!297 (Context!8619 (Cons!60951 (h!67399 (exprs!4809 (h!67400 zl!343))) (t!374280 (exprs!4809 (h!67400 zl!343))))) (h!67398 s!2326)))))

(declare-fun b!5291092 () Bool)

(declare-fun res!2244066 () Bool)

(assert (=> b!5291092 (=> res!2244066 e!3289283)))

(declare-fun generalisedUnion!854 (List!61075) Regex!14925)

(declare-fun unfocusZipperList!367 (List!61076) List!61075)

(assert (=> b!5291092 (= res!2244066 (not (= r!7292 (generalisedUnion!854 (unfocusZipperList!367 zl!343)))))))

(declare-fun b!5291093 () Bool)

(assert (=> b!5291093 (= e!3289280 (not e!3289283))))

(declare-fun res!2244081 () Bool)

(assert (=> b!5291093 (=> res!2244081 e!3289283)))

(assert (=> b!5291093 (= res!2244081 (not ((_ is Cons!60952) zl!343)))))

(declare-fun lt!2162143 () Bool)

(assert (=> b!5291093 (= lt!2162143 (matchRSpec!2028 r!7292 s!2326))))

(assert (=> b!5291093 (= lt!2162143 (matchR!7110 r!7292 s!2326))))

(declare-fun lt!2162125 () Unit!153218)

(assert (=> b!5291093 (= lt!2162125 (mainMatchTheorem!2028 r!7292 s!2326))))

(declare-fun b!5291094 () Bool)

(declare-fun e!3289294 () Bool)

(declare-fun tp!1476978 () Bool)

(assert (=> b!5291094 (= e!3289294 (and tp_is_empty!39103 tp!1476978))))

(declare-fun b!5291095 () Bool)

(declare-fun Unit!153221 () Unit!153218)

(assert (=> b!5291095 (= e!3289286 Unit!153221)))

(declare-fun lt!2162144 () Unit!153218)

(assert (=> b!5291095 (= lt!2162144 (lemmaZipperConcatMatchesSameAsBothZippers!162 lt!2162113 lt!2162130 (t!374279 s!2326)))))

(declare-fun res!2244079 () Bool)

(assert (=> b!5291095 (= res!2244079 (matchZipper!1169 lt!2162113 (t!374279 s!2326)))))

(declare-fun e!3289277 () Bool)

(assert (=> b!5291095 (=> res!2244079 e!3289277)))

(assert (=> b!5291095 (= (matchZipper!1169 ((_ map or) lt!2162113 lt!2162130) (t!374279 s!2326)) e!3289277)))

(declare-fun b!5291096 () Bool)

(declare-fun res!2244089 () Bool)

(assert (=> b!5291096 (=> res!2244089 e!3289283)))

(assert (=> b!5291096 (= res!2244089 (not ((_ is Cons!60951) (exprs!4809 (h!67400 zl!343)))))))

(declare-fun b!5291097 () Bool)

(declare-fun e!3289292 () Bool)

(declare-fun lt!2162133 () (InoxSet Context!8618))

(assert (=> b!5291097 (= e!3289292 (not (matchZipper!1169 lt!2162133 (t!374279 s!2326))))))

(assert (=> b!5291098 (= e!3289283 e!3289293)))

(declare-fun res!2244069 () Bool)

(assert (=> b!5291098 (=> res!2244069 e!3289293)))

(declare-fun lt!2162149 () Bool)

(assert (=> b!5291098 (= res!2244069 (or (not (= lt!2162143 lt!2162149)) ((_ is Nil!60950) s!2326)))))

(assert (=> b!5291098 (= (Exists!2106 lambda!267903) (Exists!2106 lambda!267904))))

(declare-fun lt!2162146 () Unit!153218)

(assert (=> b!5291098 (= lt!2162146 (lemmaExistCutMatchRandMatchRSpecEquivalent!760 (regOne!30362 r!7292) (regTwo!30362 r!7292) s!2326))))

(assert (=> b!5291098 (= lt!2162149 (Exists!2106 lambda!267903))))

(assert (=> b!5291098 (= lt!2162149 (isDefined!11739 (findConcatSeparation!1450 (regOne!30362 r!7292) (regTwo!30362 r!7292) Nil!60950 s!2326 s!2326)))))

(declare-fun lt!2162120 () Unit!153218)

(assert (=> b!5291098 (= lt!2162120 (lemmaFindConcatSeparationEquivalentToExists!1214 (regOne!30362 r!7292) (regTwo!30362 r!7292) s!2326))))

(declare-fun b!5291099 () Bool)

(declare-fun e!3289287 () Bool)

(declare-fun tp!1476976 () Bool)

(assert (=> b!5291099 (= e!3289287 tp!1476976)))

(declare-fun b!5291100 () Bool)

(declare-fun res!2244086 () Bool)

(assert (=> b!5291100 (=> res!2244086 e!3289293)))

(declare-fun isEmpty!32904 (List!61075) Bool)

(assert (=> b!5291100 (= res!2244086 (isEmpty!32904 (t!374280 (exprs!4809 (h!67400 zl!343)))))))

(declare-fun b!5291101 () Bool)

(declare-fun res!2244068 () Bool)

(assert (=> b!5291101 (=> res!2244068 e!3289282)))

(declare-fun lt!2162134 () Context!8618)

(declare-fun contextDepthTotal!66 (Context!8618) Int)

(assert (=> b!5291101 (= res!2244068 (>= (contextDepthTotal!66 lt!2162134) (contextDepthTotal!66 (h!67400 zl!343))))))

(declare-fun setIsEmpty!33959 () Bool)

(assert (=> setIsEmpty!33959 setRes!33959))

(declare-fun b!5291102 () Bool)

(declare-fun res!2244076 () Bool)

(assert (=> b!5291102 (=> res!2244076 e!3289283)))

(assert (=> b!5291102 (= res!2244076 (not (= r!7292 (generalisedConcat!594 (exprs!4809 (h!67400 zl!343))))))))

(declare-fun b!5291103 () Bool)

(assert (=> b!5291103 (= e!3289279 (matchZipper!1169 lt!2162150 (t!374279 s!2326)))))

(declare-fun b!5291104 () Bool)

(assert (=> b!5291104 (= e!3289277 (matchZipper!1169 lt!2162130 (t!374279 s!2326)))))

(declare-fun b!5291105 () Bool)

(declare-fun tp!1476981 () Bool)

(declare-fun tp!1476977 () Bool)

(assert (=> b!5291105 (= e!3289278 (and tp!1476981 tp!1476977))))

(declare-fun b!5291106 () Bool)

(assert (=> b!5291106 (= e!3289282 e!3289284)))

(declare-fun res!2244088 () Bool)

(assert (=> b!5291106 (=> res!2244088 e!3289284)))

(declare-fun zipperDepthTotal!86 (List!61076) Int)

(assert (=> b!5291106 (= res!2244088 (>= (zipperDepthTotal!86 lt!2162137) (zipperDepthTotal!86 zl!343)))))

(assert (=> b!5291106 (= lt!2162137 (Cons!60952 lt!2162134 Nil!60952))))

(declare-fun b!5291107 () Bool)

(declare-fun e!3289289 () Bool)

(assert (=> b!5291107 (= e!3289289 e!3289291)))

(declare-fun res!2244077 () Bool)

(assert (=> b!5291107 (=> res!2244077 e!3289291)))

(assert (=> b!5291107 (= res!2244077 (not (= lt!2162128 lt!2162115)))))

(assert (=> b!5291107 (= lt!2162115 ((_ map or) lt!2162139 lt!2162150))))

(assert (=> b!5291107 (= lt!2162150 (derivationStepZipperUp!297 lt!2162119 (h!67398 s!2326)))))

(assert (=> b!5291107 (= (flatMap!652 lt!2162142 lambda!267905) (derivationStepZipperUp!297 lt!2162134 (h!67398 s!2326)))))

(declare-fun lt!2162111 () Unit!153218)

(assert (=> b!5291107 (= lt!2162111 (lemmaFlatMapOnSingletonSet!184 lt!2162142 lt!2162134 lambda!267905))))

(declare-fun lt!2162141 () (InoxSet Context!8618))

(assert (=> b!5291107 (= lt!2162141 (derivationStepZipperUp!297 lt!2162134 (h!67398 s!2326)))))

(assert (=> b!5291107 (= lt!2162128 (derivationStepZipper!1168 lt!2162142 (h!67398 s!2326)))))

(assert (=> b!5291107 (= lt!2162117 (store ((as const (Array Context!8618 Bool)) false) lt!2162119 true))))

(assert (=> b!5291107 (= lt!2162142 (store ((as const (Array Context!8618 Bool)) false) lt!2162134 true))))

(assert (=> b!5291107 (= lt!2162134 (Context!8619 lt!2162127))))

(assert (=> b!5291107 (= lt!2162127 (Cons!60951 (regOne!30362 (regOne!30362 r!7292)) lt!2162116))))

(declare-fun b!5291108 () Bool)

(declare-fun e!3289288 () Bool)

(assert (=> b!5291108 (= e!3289288 e!3289289)))

(declare-fun res!2244083 () Bool)

(assert (=> b!5291108 (=> res!2244083 e!3289289)))

(assert (=> b!5291108 (= res!2244083 e!3289292)))

(declare-fun res!2244074 () Bool)

(assert (=> b!5291108 (=> (not res!2244074) (not e!3289292))))

(assert (=> b!5291108 (= res!2244074 (not (= lt!2162135 lt!2162153)))))

(assert (=> b!5291108 (= lt!2162135 (matchZipper!1169 lt!2162113 (t!374279 s!2326)))))

(declare-fun lt!2162112 () (InoxSet Context!8618))

(declare-fun e!3289285 () Bool)

(assert (=> b!5291108 (= (matchZipper!1169 lt!2162112 (t!374279 s!2326)) e!3289285)))

(declare-fun res!2244087 () Bool)

(assert (=> b!5291108 (=> res!2244087 e!3289285)))

(assert (=> b!5291108 (= res!2244087 lt!2162153)))

(assert (=> b!5291108 (= lt!2162153 (matchZipper!1169 lt!2162139 (t!374279 s!2326)))))

(declare-fun lt!2162121 () Unit!153218)

(assert (=> b!5291108 (= lt!2162121 (lemmaZipperConcatMatchesSameAsBothZippers!162 lt!2162139 lt!2162133 (t!374279 s!2326)))))

(declare-fun b!5291109 () Bool)

(assert (=> b!5291109 (= e!3289285 (matchZipper!1169 lt!2162133 (t!374279 s!2326)))))

(declare-fun b!5291110 () Bool)

(assert (=> b!5291110 (= e!3289290 e!3289288)))

(declare-fun res!2244082 () Bool)

(assert (=> b!5291110 (=> res!2244082 e!3289288)))

(assert (=> b!5291110 (= res!2244082 (not (= lt!2162113 lt!2162112)))))

(assert (=> b!5291110 (= lt!2162112 ((_ map or) lt!2162139 lt!2162133))))

(assert (=> b!5291110 (= lt!2162133 (derivationStepZipperDown!373 (regTwo!30362 (regOne!30362 r!7292)) lt!2162151 (h!67398 s!2326)))))

(assert (=> b!5291110 (= lt!2162139 (derivationStepZipperDown!373 (regOne!30362 (regOne!30362 r!7292)) lt!2162119 (h!67398 s!2326)))))

(assert (=> b!5291110 (= lt!2162119 (Context!8619 lt!2162116))))

(assert (=> b!5291110 (= lt!2162116 (Cons!60951 (regTwo!30362 (regOne!30362 r!7292)) (t!374280 (exprs!4809 (h!67400 zl!343)))))))

(declare-fun b!5291111 () Bool)

(declare-fun res!2244071 () Bool)

(assert (=> b!5291111 (=> res!2244071 e!3289282)))

(assert (=> b!5291111 (= res!2244071 (not (= (exprs!4809 (h!67400 zl!343)) (Cons!60951 (Concat!23770 (regOne!30362 (regOne!30362 r!7292)) (regTwo!30362 (regOne!30362 r!7292))) (t!374280 (exprs!4809 (h!67400 zl!343)))))))))

(declare-fun b!5291087 () Bool)

(declare-fun tp!1476980 () Bool)

(declare-fun e!3289295 () Bool)

(assert (=> b!5291087 (= e!3289295 (and (inv!80559 (h!67400 zl!343)) e!3289287 tp!1476980))))

(declare-fun res!2244085 () Bool)

(assert (=> start!558422 (=> (not res!2244085) (not e!3289280))))

(declare-fun validRegex!6661 (Regex!14925) Bool)

(assert (=> start!558422 (= res!2244085 (validRegex!6661 r!7292))))

(assert (=> start!558422 e!3289280))

(assert (=> start!558422 e!3289278))

(declare-fun condSetEmpty!33959 () Bool)

(assert (=> start!558422 (= condSetEmpty!33959 (= z!1189 ((as const (Array Context!8618 Bool)) false)))))

(assert (=> start!558422 setRes!33959))

(assert (=> start!558422 e!3289295))

(assert (=> start!558422 e!3289294))

(assert (= (and start!558422 res!2244085) b!5291081))

(assert (= (and b!5291081 res!2244080) b!5291080))

(assert (= (and b!5291080 res!2244078) b!5291093))

(assert (= (and b!5291093 (not res!2244081)) b!5291089))

(assert (= (and b!5291089 (not res!2244065)) b!5291102))

(assert (= (and b!5291102 (not res!2244076)) b!5291096))

(assert (= (and b!5291096 (not res!2244089)) b!5291092))

(assert (= (and b!5291092 (not res!2244066)) b!5291088))

(assert (= (and b!5291088 (not res!2244075)) b!5291098))

(assert (= (and b!5291098 (not res!2244069)) b!5291100))

(assert (= (and b!5291100 (not res!2244086)) b!5291091))

(assert (= (and b!5291091 c!917824) b!5291095))

(assert (= (and b!5291091 (not c!917824)) b!5291082))

(assert (= (and b!5291095 (not res!2244079)) b!5291104))

(assert (= (and b!5291091 (not res!2244064)) b!5291090))

(assert (= (and b!5291090 (not res!2244084)) b!5291110))

(assert (= (and b!5291110 (not res!2244082)) b!5291108))

(assert (= (and b!5291108 (not res!2244087)) b!5291109))

(assert (= (and b!5291108 res!2244074) b!5291097))

(assert (= (and b!5291108 (not res!2244083)) b!5291107))

(assert (= (and b!5291107 (not res!2244077)) b!5291076))

(assert (= (and b!5291076 (not res!2244067)) b!5291103))

(assert (= (and b!5291076 res!2244072) b!5291078))

(assert (= (and b!5291076 (not res!2244070)) b!5291111))

(assert (= (and b!5291111 (not res!2244071)) b!5291101))

(assert (= (and b!5291101 (not res!2244068)) b!5291106))

(assert (= (and b!5291106 (not res!2244088)) b!5291084))

(assert (= (and b!5291084 (not res!2244073)) b!5291083))

(assert (= (and start!558422 ((_ is ElementMatch!14925) r!7292)) b!5291077))

(assert (= (and start!558422 ((_ is Concat!23770) r!7292)) b!5291105))

(assert (= (and start!558422 ((_ is Star!14925) r!7292)) b!5291086))

(assert (= (and start!558422 ((_ is Union!14925) r!7292)) b!5291079))

(assert (= (and start!558422 condSetEmpty!33959) setIsEmpty!33959))

(assert (= (and start!558422 (not condSetEmpty!33959)) setNonEmpty!33959))

(assert (= setNonEmpty!33959 b!5291085))

(assert (= b!5291087 b!5291099))

(assert (= (and start!558422 ((_ is Cons!60952) zl!343)) b!5291087))

(assert (= (and start!558422 ((_ is Cons!60950) s!2326)) b!5291094))

(declare-fun m!6328524 () Bool)

(assert (=> b!5291101 m!6328524))

(declare-fun m!6328526 () Bool)

(assert (=> b!5291101 m!6328526))

(declare-fun m!6328528 () Bool)

(assert (=> b!5291080 m!6328528))

(declare-fun m!6328530 () Bool)

(assert (=> b!5291093 m!6328530))

(declare-fun m!6328532 () Bool)

(assert (=> b!5291093 m!6328532))

(declare-fun m!6328534 () Bool)

(assert (=> b!5291093 m!6328534))

(declare-fun m!6328536 () Bool)

(assert (=> b!5291102 m!6328536))

(declare-fun m!6328538 () Bool)

(assert (=> b!5291078 m!6328538))

(assert (=> b!5291078 m!6328538))

(declare-fun m!6328540 () Bool)

(assert (=> b!5291078 m!6328540))

(declare-fun m!6328542 () Bool)

(assert (=> start!558422 m!6328542))

(declare-fun m!6328544 () Bool)

(assert (=> setNonEmpty!33959 m!6328544))

(declare-fun m!6328546 () Bool)

(assert (=> b!5291100 m!6328546))

(declare-fun m!6328548 () Bool)

(assert (=> b!5291109 m!6328548))

(declare-fun m!6328550 () Bool)

(assert (=> b!5291076 m!6328550))

(declare-fun m!6328552 () Bool)

(assert (=> b!5291076 m!6328552))

(declare-fun m!6328554 () Bool)

(assert (=> b!5291076 m!6328554))

(declare-fun m!6328556 () Bool)

(assert (=> b!5291076 m!6328556))

(declare-fun m!6328558 () Bool)

(assert (=> b!5291076 m!6328558))

(declare-fun m!6328560 () Bool)

(assert (=> b!5291076 m!6328560))

(declare-fun m!6328562 () Bool)

(assert (=> b!5291103 m!6328562))

(declare-fun m!6328564 () Bool)

(assert (=> b!5291087 m!6328564))

(declare-fun m!6328566 () Bool)

(assert (=> b!5291092 m!6328566))

(assert (=> b!5291092 m!6328566))

(declare-fun m!6328568 () Bool)

(assert (=> b!5291092 m!6328568))

(declare-fun m!6328570 () Bool)

(assert (=> b!5291110 m!6328570))

(declare-fun m!6328572 () Bool)

(assert (=> b!5291110 m!6328572))

(declare-fun m!6328574 () Bool)

(assert (=> b!5291084 m!6328574))

(declare-fun m!6328576 () Bool)

(assert (=> b!5291084 m!6328576))

(declare-fun m!6328578 () Bool)

(assert (=> b!5291091 m!6328578))

(declare-fun m!6328580 () Bool)

(assert (=> b!5291091 m!6328580))

(declare-fun m!6328582 () Bool)

(assert (=> b!5291091 m!6328582))

(declare-fun m!6328584 () Bool)

(assert (=> b!5291091 m!6328584))

(declare-fun m!6328586 () Bool)

(assert (=> b!5291091 m!6328586))

(declare-fun m!6328588 () Bool)

(assert (=> b!5291091 m!6328588))

(declare-fun m!6328590 () Bool)

(assert (=> b!5291091 m!6328590))

(declare-fun m!6328592 () Bool)

(assert (=> b!5291095 m!6328592))

(declare-fun m!6328594 () Bool)

(assert (=> b!5291095 m!6328594))

(declare-fun m!6328596 () Bool)

(assert (=> b!5291095 m!6328596))

(declare-fun m!6328598 () Bool)

(assert (=> b!5291089 m!6328598))

(declare-fun m!6328600 () Bool)

(assert (=> b!5291104 m!6328600))

(assert (=> b!5291108 m!6328594))

(declare-fun m!6328602 () Bool)

(assert (=> b!5291108 m!6328602))

(declare-fun m!6328604 () Bool)

(assert (=> b!5291108 m!6328604))

(declare-fun m!6328606 () Bool)

(assert (=> b!5291108 m!6328606))

(assert (=> b!5291097 m!6328548))

(declare-fun m!6328608 () Bool)

(assert (=> b!5291106 m!6328608))

(declare-fun m!6328610 () Bool)

(assert (=> b!5291106 m!6328610))

(declare-fun m!6328612 () Bool)

(assert (=> b!5291081 m!6328612))

(declare-fun m!6328614 () Bool)

(assert (=> b!5291098 m!6328614))

(declare-fun m!6328616 () Bool)

(assert (=> b!5291098 m!6328616))

(declare-fun m!6328618 () Bool)

(assert (=> b!5291098 m!6328618))

(declare-fun m!6328620 () Bool)

(assert (=> b!5291098 m!6328620))

(assert (=> b!5291098 m!6328614))

(declare-fun m!6328622 () Bool)

(assert (=> b!5291098 m!6328622))

(assert (=> b!5291098 m!6328616))

(declare-fun m!6328624 () Bool)

(assert (=> b!5291098 m!6328624))

(declare-fun m!6328626 () Bool)

(assert (=> b!5291083 m!6328626))

(declare-fun m!6328628 () Bool)

(assert (=> b!5291083 m!6328628))

(declare-fun m!6328630 () Bool)

(assert (=> b!5291083 m!6328630))

(declare-fun m!6328632 () Bool)

(assert (=> b!5291083 m!6328632))

(declare-fun m!6328634 () Bool)

(assert (=> b!5291083 m!6328634))

(declare-fun m!6328636 () Bool)

(assert (=> b!5291083 m!6328636))

(declare-fun m!6328638 () Bool)

(assert (=> b!5291083 m!6328638))

(declare-fun m!6328640 () Bool)

(assert (=> b!5291083 m!6328640))

(assert (=> b!5291083 m!6328640))

(declare-fun m!6328642 () Bool)

(assert (=> b!5291083 m!6328642))

(declare-fun m!6328644 () Bool)

(assert (=> b!5291083 m!6328644))

(assert (=> b!5291083 m!6328632))

(declare-fun m!6328646 () Bool)

(assert (=> b!5291083 m!6328646))

(declare-fun m!6328648 () Bool)

(assert (=> b!5291083 m!6328648))

(declare-fun m!6328650 () Bool)

(assert (=> b!5291083 m!6328650))

(assert (=> b!5291083 m!6328634))

(declare-fun m!6328652 () Bool)

(assert (=> b!5291083 m!6328652))

(declare-fun m!6328654 () Bool)

(assert (=> b!5291083 m!6328654))

(declare-fun m!6328656 () Bool)

(assert (=> b!5291083 m!6328656))

(declare-fun m!6328658 () Bool)

(assert (=> b!5291083 m!6328658))

(declare-fun m!6328660 () Bool)

(assert (=> b!5291083 m!6328660))

(declare-fun m!6328662 () Bool)

(assert (=> b!5291083 m!6328662))

(declare-fun m!6328664 () Bool)

(assert (=> b!5291083 m!6328664))

(declare-fun m!6328666 () Bool)

(assert (=> b!5291083 m!6328666))

(declare-fun m!6328668 () Bool)

(assert (=> b!5291083 m!6328668))

(declare-fun m!6328670 () Bool)

(assert (=> b!5291083 m!6328670))

(declare-fun m!6328672 () Bool)

(assert (=> b!5291083 m!6328672))

(assert (=> b!5291107 m!6328552))

(declare-fun m!6328674 () Bool)

(assert (=> b!5291107 m!6328674))

(declare-fun m!6328676 () Bool)

(assert (=> b!5291107 m!6328676))

(declare-fun m!6328678 () Bool)

(assert (=> b!5291107 m!6328678))

(declare-fun m!6328680 () Bool)

(assert (=> b!5291107 m!6328680))

(declare-fun m!6328682 () Bool)

(assert (=> b!5291107 m!6328682))

(declare-fun m!6328684 () Bool)

(assert (=> b!5291107 m!6328684))

(declare-fun m!6328686 () Bool)

(assert (=> b!5291090 m!6328686))

(check-sat (not b!5291084) tp_is_empty!39103 (not b!5291101) (not b!5291079) (not b!5291097) (not b!5291078) (not b!5291090) (not b!5291086) (not b!5291080) (not b!5291103) (not b!5291094) (not b!5291089) (not b!5291102) (not b!5291099) (not b!5291100) (not b!5291092) (not b!5291109) (not b!5291085) (not b!5291083) (not start!558422) (not b!5291076) (not b!5291087) (not b!5291095) (not b!5291108) (not b!5291107) (not setNonEmpty!33959) (not b!5291091) (not b!5291093) (not b!5291110) (not b!5291105) (not b!5291104) (not b!5291106) (not b!5291081) (not b!5291098))
(check-sat)
(get-model)

(declare-fun d!1702250 () Bool)

(assert (=> d!1702250 (= (isEmpty!32904 (t!374280 (exprs!4809 (h!67400 zl!343)))) ((_ is Nil!60951) (t!374280 (exprs!4809 (h!67400 zl!343)))))))

(assert (=> b!5291100 d!1702250))

(declare-fun d!1702252 () Bool)

(declare-fun lt!2162199 () Regex!14925)

(assert (=> d!1702252 (validRegex!6661 lt!2162199)))

(assert (=> d!1702252 (= lt!2162199 (generalisedUnion!854 (unfocusZipperList!367 zl!343)))))

(assert (=> d!1702252 (= (unfocusZipper!667 zl!343) lt!2162199)))

(declare-fun bs!1227213 () Bool)

(assert (= bs!1227213 d!1702252))

(declare-fun m!6328848 () Bool)

(assert (=> bs!1227213 m!6328848))

(assert (=> bs!1227213 m!6328566))

(assert (=> bs!1227213 m!6328566))

(assert (=> bs!1227213 m!6328568))

(assert (=> b!5291080 d!1702252))

(declare-fun d!1702254 () Bool)

(declare-fun e!3289453 () Bool)

(assert (=> d!1702254 e!3289453))

(declare-fun res!2244173 () Bool)

(assert (=> d!1702254 (=> res!2244173 e!3289453)))

(declare-fun e!3289455 () Bool)

(assert (=> d!1702254 (= res!2244173 e!3289455)))

(declare-fun res!2244177 () Bool)

(assert (=> d!1702254 (=> (not res!2244177) (not e!3289455))))

(declare-fun lt!2162221 () Option!15036)

(assert (=> d!1702254 (= res!2244177 (isDefined!11739 lt!2162221))))

(declare-fun e!3289454 () Option!15036)

(assert (=> d!1702254 (= lt!2162221 e!3289454)))

(declare-fun c!917922 () Bool)

(declare-fun e!3289451 () Bool)

(assert (=> d!1702254 (= c!917922 e!3289451)))

(declare-fun res!2244174 () Bool)

(assert (=> d!1702254 (=> (not res!2244174) (not e!3289451))))

(assert (=> d!1702254 (= res!2244174 (matchR!7110 (regOne!30362 r!7292) Nil!60950))))

(assert (=> d!1702254 (validRegex!6661 (regOne!30362 r!7292))))

(assert (=> d!1702254 (= (findConcatSeparation!1450 (regOne!30362 r!7292) (regTwo!30362 r!7292) Nil!60950 s!2326 s!2326) lt!2162221)))

(declare-fun b!5291379 () Bool)

(declare-fun e!3289452 () Option!15036)

(assert (=> b!5291379 (= e!3289452 None!15035)))

(declare-fun b!5291380 () Bool)

(declare-fun res!2244176 () Bool)

(assert (=> b!5291380 (=> (not res!2244176) (not e!3289455))))

(declare-fun get!20958 (Option!15036) tuple2!64248)

(assert (=> b!5291380 (= res!2244176 (matchR!7110 (regTwo!30362 r!7292) (_2!35427 (get!20958 lt!2162221))))))

(declare-fun b!5291381 () Bool)

(declare-fun ++!13290 (List!61074 List!61074) List!61074)

(assert (=> b!5291381 (= e!3289455 (= (++!13290 (_1!35427 (get!20958 lt!2162221)) (_2!35427 (get!20958 lt!2162221))) s!2326))))

(declare-fun b!5291382 () Bool)

(assert (=> b!5291382 (= e!3289454 e!3289452)))

(declare-fun c!917923 () Bool)

(assert (=> b!5291382 (= c!917923 ((_ is Nil!60950) s!2326))))

(declare-fun b!5291383 () Bool)

(assert (=> b!5291383 (= e!3289453 (not (isDefined!11739 lt!2162221)))))

(declare-fun b!5291384 () Bool)

(assert (=> b!5291384 (= e!3289451 (matchR!7110 (regTwo!30362 r!7292) s!2326))))

(declare-fun b!5291385 () Bool)

(declare-fun lt!2162223 () Unit!153218)

(declare-fun lt!2162222 () Unit!153218)

(assert (=> b!5291385 (= lt!2162223 lt!2162222)))

(assert (=> b!5291385 (= (++!13290 (++!13290 Nil!60950 (Cons!60950 (h!67398 s!2326) Nil!60950)) (t!374279 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1705 (List!61074 C!30120 List!61074 List!61074) Unit!153218)

(assert (=> b!5291385 (= lt!2162222 (lemmaMoveElementToOtherListKeepsConcatEq!1705 Nil!60950 (h!67398 s!2326) (t!374279 s!2326) s!2326))))

(assert (=> b!5291385 (= e!3289452 (findConcatSeparation!1450 (regOne!30362 r!7292) (regTwo!30362 r!7292) (++!13290 Nil!60950 (Cons!60950 (h!67398 s!2326) Nil!60950)) (t!374279 s!2326) s!2326))))

(declare-fun b!5291386 () Bool)

(declare-fun res!2244175 () Bool)

(assert (=> b!5291386 (=> (not res!2244175) (not e!3289455))))

(assert (=> b!5291386 (= res!2244175 (matchR!7110 (regOne!30362 r!7292) (_1!35427 (get!20958 lt!2162221))))))

(declare-fun b!5291387 () Bool)

(assert (=> b!5291387 (= e!3289454 (Some!15035 (tuple2!64249 Nil!60950 s!2326)))))

(assert (= (and d!1702254 res!2244174) b!5291384))

(assert (= (and d!1702254 c!917922) b!5291387))

(assert (= (and d!1702254 (not c!917922)) b!5291382))

(assert (= (and b!5291382 c!917923) b!5291379))

(assert (= (and b!5291382 (not c!917923)) b!5291385))

(assert (= (and d!1702254 res!2244177) b!5291386))

(assert (= (and b!5291386 res!2244175) b!5291380))

(assert (= (and b!5291380 res!2244176) b!5291381))

(assert (= (and d!1702254 (not res!2244173)) b!5291383))

(declare-fun m!6328910 () Bool)

(assert (=> b!5291386 m!6328910))

(declare-fun m!6328912 () Bool)

(assert (=> b!5291386 m!6328912))

(declare-fun m!6328914 () Bool)

(assert (=> b!5291384 m!6328914))

(assert (=> b!5291380 m!6328910))

(declare-fun m!6328916 () Bool)

(assert (=> b!5291380 m!6328916))

(declare-fun m!6328918 () Bool)

(assert (=> d!1702254 m!6328918))

(declare-fun m!6328920 () Bool)

(assert (=> d!1702254 m!6328920))

(declare-fun m!6328922 () Bool)

(assert (=> d!1702254 m!6328922))

(assert (=> b!5291383 m!6328918))

(declare-fun m!6328928 () Bool)

(assert (=> b!5291385 m!6328928))

(assert (=> b!5291385 m!6328928))

(declare-fun m!6328940 () Bool)

(assert (=> b!5291385 m!6328940))

(declare-fun m!6328942 () Bool)

(assert (=> b!5291385 m!6328942))

(assert (=> b!5291385 m!6328928))

(declare-fun m!6328946 () Bool)

(assert (=> b!5291385 m!6328946))

(assert (=> b!5291381 m!6328910))

(declare-fun m!6328950 () Bool)

(assert (=> b!5291381 m!6328950))

(assert (=> b!5291098 d!1702254))

(declare-fun d!1702274 () Bool)

(declare-fun choose!39509 (Int) Bool)

(assert (=> d!1702274 (= (Exists!2106 lambda!267904) (choose!39509 lambda!267904))))

(declare-fun bs!1227229 () Bool)

(assert (= bs!1227229 d!1702274))

(declare-fun m!6328970 () Bool)

(assert (=> bs!1227229 m!6328970))

(assert (=> b!5291098 d!1702274))

(declare-fun d!1702278 () Bool)

(assert (=> d!1702278 (= (Exists!2106 lambda!267903) (choose!39509 lambda!267903))))

(declare-fun bs!1227230 () Bool)

(assert (= bs!1227230 d!1702278))

(declare-fun m!6328972 () Bool)

(assert (=> bs!1227230 m!6328972))

(assert (=> b!5291098 d!1702278))

(declare-fun bs!1227246 () Bool)

(declare-fun d!1702280 () Bool)

(assert (= bs!1227246 (and d!1702280 b!5291083)))

(declare-fun lambda!267953 () Int)

(assert (=> bs!1227246 (= (and (= (regOne!30362 r!7292) (regOne!30362 (regOne!30362 r!7292))) (= (regTwo!30362 r!7292) lt!2162145)) (= lambda!267953 lambda!267906))))

(assert (=> bs!1227246 (not (= lambda!267953 lambda!267907))))

(declare-fun bs!1227248 () Bool)

(assert (= bs!1227248 (and d!1702280 b!5291098)))

(assert (=> bs!1227248 (not (= lambda!267953 lambda!267904))))

(assert (=> bs!1227246 (= (and (= (regOne!30362 r!7292) (regTwo!30362 (regOne!30362 r!7292))) (= (regTwo!30362 r!7292) lt!2162114)) (= lambda!267953 lambda!267908))))

(assert (=> bs!1227248 (= lambda!267953 lambda!267903)))

(assert (=> d!1702280 true))

(assert (=> d!1702280 true))

(assert (=> d!1702280 true))

(assert (=> d!1702280 (= (isDefined!11739 (findConcatSeparation!1450 (regOne!30362 r!7292) (regTwo!30362 r!7292) Nil!60950 s!2326 s!2326)) (Exists!2106 lambda!267953))))

(declare-fun lt!2162242 () Unit!153218)

(declare-fun choose!39510 (Regex!14925 Regex!14925 List!61074) Unit!153218)

(assert (=> d!1702280 (= lt!2162242 (choose!39510 (regOne!30362 r!7292) (regTwo!30362 r!7292) s!2326))))

(assert (=> d!1702280 (validRegex!6661 (regOne!30362 r!7292))))

(assert (=> d!1702280 (= (lemmaFindConcatSeparationEquivalentToExists!1214 (regOne!30362 r!7292) (regTwo!30362 r!7292) s!2326) lt!2162242)))

(declare-fun bs!1227250 () Bool)

(assert (= bs!1227250 d!1702280))

(declare-fun m!6329032 () Bool)

(assert (=> bs!1227250 m!6329032))

(assert (=> bs!1227250 m!6328616))

(declare-fun m!6329034 () Bool)

(assert (=> bs!1227250 m!6329034))

(assert (=> bs!1227250 m!6328616))

(assert (=> bs!1227250 m!6328618))

(assert (=> bs!1227250 m!6328922))

(assert (=> b!5291098 d!1702280))

(declare-fun bs!1227268 () Bool)

(declare-fun d!1702296 () Bool)

(assert (= bs!1227268 (and d!1702296 b!5291083)))

(declare-fun lambda!267964 () Int)

(assert (=> bs!1227268 (= (and (= (regOne!30362 r!7292) (regOne!30362 (regOne!30362 r!7292))) (= (regTwo!30362 r!7292) lt!2162145)) (= lambda!267964 lambda!267906))))

(assert (=> bs!1227268 (not (= lambda!267964 lambda!267907))))

(declare-fun bs!1227269 () Bool)

(assert (= bs!1227269 (and d!1702296 b!5291098)))

(assert (=> bs!1227269 (not (= lambda!267964 lambda!267904))))

(assert (=> bs!1227269 (= lambda!267964 lambda!267903)))

(declare-fun bs!1227270 () Bool)

(assert (= bs!1227270 (and d!1702296 d!1702280)))

(assert (=> bs!1227270 (= lambda!267964 lambda!267953)))

(assert (=> bs!1227268 (= (and (= (regOne!30362 r!7292) (regTwo!30362 (regOne!30362 r!7292))) (= (regTwo!30362 r!7292) lt!2162114)) (= lambda!267964 lambda!267908))))

(assert (=> d!1702296 true))

(assert (=> d!1702296 true))

(assert (=> d!1702296 true))

(declare-fun lambda!267965 () Int)

(assert (=> bs!1227268 (not (= lambda!267965 lambda!267906))))

(assert (=> bs!1227268 (= (and (= (regOne!30362 r!7292) (regOne!30362 (regOne!30362 r!7292))) (= (regTwo!30362 r!7292) lt!2162145)) (= lambda!267965 lambda!267907))))

(assert (=> bs!1227269 (= lambda!267965 lambda!267904)))

(assert (=> bs!1227269 (not (= lambda!267965 lambda!267903))))

(declare-fun bs!1227277 () Bool)

(assert (= bs!1227277 d!1702296))

(assert (=> bs!1227277 (not (= lambda!267965 lambda!267964))))

(assert (=> bs!1227270 (not (= lambda!267965 lambda!267953))))

(assert (=> bs!1227268 (not (= lambda!267965 lambda!267908))))

(assert (=> d!1702296 true))

(assert (=> d!1702296 true))

(assert (=> d!1702296 true))

(assert (=> d!1702296 (= (Exists!2106 lambda!267964) (Exists!2106 lambda!267965))))

(declare-fun lt!2162249 () Unit!153218)

(declare-fun choose!39511 (Regex!14925 Regex!14925 List!61074) Unit!153218)

(assert (=> d!1702296 (= lt!2162249 (choose!39511 (regOne!30362 r!7292) (regTwo!30362 r!7292) s!2326))))

(assert (=> d!1702296 (validRegex!6661 (regOne!30362 r!7292))))

(assert (=> d!1702296 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!760 (regOne!30362 r!7292) (regTwo!30362 r!7292) s!2326) lt!2162249)))

(declare-fun m!6329082 () Bool)

(assert (=> bs!1227277 m!6329082))

(declare-fun m!6329084 () Bool)

(assert (=> bs!1227277 m!6329084))

(declare-fun m!6329086 () Bool)

(assert (=> bs!1227277 m!6329086))

(assert (=> bs!1227277 m!6328922))

(assert (=> b!5291098 d!1702296))

(declare-fun d!1702316 () Bool)

(declare-fun isEmpty!32907 (Option!15036) Bool)

(assert (=> d!1702316 (= (isDefined!11739 (findConcatSeparation!1450 (regOne!30362 r!7292) (regTwo!30362 r!7292) Nil!60950 s!2326 s!2326)) (not (isEmpty!32907 (findConcatSeparation!1450 (regOne!30362 r!7292) (regTwo!30362 r!7292) Nil!60950 s!2326 s!2326))))))

(declare-fun bs!1227286 () Bool)

(assert (= bs!1227286 d!1702316))

(assert (=> bs!1227286 m!6328616))

(declare-fun m!6329088 () Bool)

(assert (=> bs!1227286 m!6329088))

(assert (=> b!5291098 d!1702316))

(declare-fun d!1702318 () Bool)

(declare-fun c!917972 () Bool)

(declare-fun isEmpty!32908 (List!61074) Bool)

(assert (=> d!1702318 (= c!917972 (isEmpty!32908 (t!374279 s!2326)))))

(declare-fun e!3289560 () Bool)

(assert (=> d!1702318 (= (matchZipper!1169 (derivationStepZipper!1168 lt!2162117 (h!67398 s!2326)) (t!374279 s!2326)) e!3289560)))

(declare-fun b!5291572 () Bool)

(declare-fun nullableZipper!1310 ((InoxSet Context!8618)) Bool)

(assert (=> b!5291572 (= e!3289560 (nullableZipper!1310 (derivationStepZipper!1168 lt!2162117 (h!67398 s!2326))))))

(declare-fun b!5291573 () Bool)

(declare-fun head!11338 (List!61074) C!30120)

(declare-fun tail!10435 (List!61074) List!61074)

(assert (=> b!5291573 (= e!3289560 (matchZipper!1169 (derivationStepZipper!1168 (derivationStepZipper!1168 lt!2162117 (h!67398 s!2326)) (head!11338 (t!374279 s!2326))) (tail!10435 (t!374279 s!2326))))))

(assert (= (and d!1702318 c!917972) b!5291572))

(assert (= (and d!1702318 (not c!917972)) b!5291573))

(declare-fun m!6329110 () Bool)

(assert (=> d!1702318 m!6329110))

(assert (=> b!5291572 m!6328538))

(declare-fun m!6329118 () Bool)

(assert (=> b!5291572 m!6329118))

(declare-fun m!6329122 () Bool)

(assert (=> b!5291573 m!6329122))

(assert (=> b!5291573 m!6328538))

(assert (=> b!5291573 m!6329122))

(declare-fun m!6329128 () Bool)

(assert (=> b!5291573 m!6329128))

(declare-fun m!6329130 () Bool)

(assert (=> b!5291573 m!6329130))

(assert (=> b!5291573 m!6329128))

(assert (=> b!5291573 m!6329130))

(declare-fun m!6329132 () Bool)

(assert (=> b!5291573 m!6329132))

(assert (=> b!5291078 d!1702318))

(declare-fun bs!1227327 () Bool)

(declare-fun d!1702328 () Bool)

(assert (= bs!1227327 (and d!1702328 b!5291091)))

(declare-fun lambda!267974 () Int)

(assert (=> bs!1227327 (= lambda!267974 lambda!267905)))

(assert (=> d!1702328 true))

(assert (=> d!1702328 (= (derivationStepZipper!1168 lt!2162117 (h!67398 s!2326)) (flatMap!652 lt!2162117 lambda!267974))))

(declare-fun bs!1227329 () Bool)

(assert (= bs!1227329 d!1702328))

(declare-fun m!6329156 () Bool)

(assert (=> bs!1227329 m!6329156))

(assert (=> b!5291078 d!1702328))

(declare-fun d!1702340 () Bool)

(declare-fun c!917981 () Bool)

(assert (=> d!1702340 (= c!917981 (isEmpty!32908 (t!374279 s!2326)))))

(declare-fun e!3289571 () Bool)

(assert (=> d!1702340 (= (matchZipper!1169 lt!2162133 (t!374279 s!2326)) e!3289571)))

(declare-fun b!5291592 () Bool)

(assert (=> b!5291592 (= e!3289571 (nullableZipper!1310 lt!2162133))))

(declare-fun b!5291593 () Bool)

(assert (=> b!5291593 (= e!3289571 (matchZipper!1169 (derivationStepZipper!1168 lt!2162133 (head!11338 (t!374279 s!2326))) (tail!10435 (t!374279 s!2326))))))

(assert (= (and d!1702340 c!917981) b!5291592))

(assert (= (and d!1702340 (not c!917981)) b!5291593))

(assert (=> d!1702340 m!6329110))

(declare-fun m!6329158 () Bool)

(assert (=> b!5291592 m!6329158))

(assert (=> b!5291593 m!6329122))

(assert (=> b!5291593 m!6329122))

(declare-fun m!6329160 () Bool)

(assert (=> b!5291593 m!6329160))

(assert (=> b!5291593 m!6329130))

(assert (=> b!5291593 m!6329160))

(assert (=> b!5291593 m!6329130))

(declare-fun m!6329162 () Bool)

(assert (=> b!5291593 m!6329162))

(assert (=> b!5291097 d!1702340))

(declare-fun d!1702342 () Bool)

(declare-fun c!917982 () Bool)

(assert (=> d!1702342 (= c!917982 (isEmpty!32908 (t!374279 s!2326)))))

(declare-fun e!3289572 () Bool)

(assert (=> d!1702342 (= (matchZipper!1169 lt!2162128 (t!374279 s!2326)) e!3289572)))

(declare-fun b!5291594 () Bool)

(assert (=> b!5291594 (= e!3289572 (nullableZipper!1310 lt!2162128))))

(declare-fun b!5291595 () Bool)

(assert (=> b!5291595 (= e!3289572 (matchZipper!1169 (derivationStepZipper!1168 lt!2162128 (head!11338 (t!374279 s!2326))) (tail!10435 (t!374279 s!2326))))))

(assert (= (and d!1702342 c!917982) b!5291594))

(assert (= (and d!1702342 (not c!917982)) b!5291595))

(assert (=> d!1702342 m!6329110))

(declare-fun m!6329164 () Bool)

(assert (=> b!5291594 m!6329164))

(assert (=> b!5291595 m!6329122))

(assert (=> b!5291595 m!6329122))

(declare-fun m!6329166 () Bool)

(assert (=> b!5291595 m!6329166))

(assert (=> b!5291595 m!6329130))

(assert (=> b!5291595 m!6329166))

(assert (=> b!5291595 m!6329130))

(declare-fun m!6329168 () Bool)

(assert (=> b!5291595 m!6329168))

(assert (=> b!5291076 d!1702342))

(declare-fun d!1702344 () Bool)

(declare-fun dynLambda!24101 (Int Context!8618) (InoxSet Context!8618))

(assert (=> d!1702344 (= (flatMap!652 lt!2162117 lambda!267905) (dynLambda!24101 lambda!267905 lt!2162119))))

(declare-fun lt!2162260 () Unit!153218)

(declare-fun choose!39512 ((InoxSet Context!8618) Context!8618 Int) Unit!153218)

(assert (=> d!1702344 (= lt!2162260 (choose!39512 lt!2162117 lt!2162119 lambda!267905))))

(assert (=> d!1702344 (= lt!2162117 (store ((as const (Array Context!8618 Bool)) false) lt!2162119 true))))

(assert (=> d!1702344 (= (lemmaFlatMapOnSingletonSet!184 lt!2162117 lt!2162119 lambda!267905) lt!2162260)))

(declare-fun b_lambda!204075 () Bool)

(assert (=> (not b_lambda!204075) (not d!1702344)))

(declare-fun bs!1227344 () Bool)

(assert (= bs!1227344 d!1702344))

(assert (=> bs!1227344 m!6328550))

(declare-fun m!6329196 () Bool)

(assert (=> bs!1227344 m!6329196))

(declare-fun m!6329198 () Bool)

(assert (=> bs!1227344 m!6329198))

(assert (=> bs!1227344 m!6328684))

(assert (=> b!5291076 d!1702344))

(declare-fun d!1702356 () Bool)

(declare-fun c!917989 () Bool)

(assert (=> d!1702356 (= c!917989 (isEmpty!32908 (t!374279 s!2326)))))

(declare-fun e!3289584 () Bool)

(assert (=> d!1702356 (= (matchZipper!1169 lt!2162115 (t!374279 s!2326)) e!3289584)))

(declare-fun b!5291617 () Bool)

(assert (=> b!5291617 (= e!3289584 (nullableZipper!1310 lt!2162115))))

(declare-fun b!5291618 () Bool)

(assert (=> b!5291618 (= e!3289584 (matchZipper!1169 (derivationStepZipper!1168 lt!2162115 (head!11338 (t!374279 s!2326))) (tail!10435 (t!374279 s!2326))))))

(assert (= (and d!1702356 c!917989) b!5291617))

(assert (= (and d!1702356 (not c!917989)) b!5291618))

(assert (=> d!1702356 m!6329110))

(declare-fun m!6329202 () Bool)

(assert (=> b!5291617 m!6329202))

(assert (=> b!5291618 m!6329122))

(assert (=> b!5291618 m!6329122))

(declare-fun m!6329204 () Bool)

(assert (=> b!5291618 m!6329204))

(assert (=> b!5291618 m!6329130))

(assert (=> b!5291618 m!6329204))

(assert (=> b!5291618 m!6329130))

(declare-fun m!6329210 () Bool)

(assert (=> b!5291618 m!6329210))

(assert (=> b!5291076 d!1702356))

(declare-fun bm!377121 () Bool)

(declare-fun call!377126 () (InoxSet Context!8618))

(assert (=> bm!377121 (= call!377126 (derivationStepZipperDown!373 (h!67399 (exprs!4809 lt!2162119)) (Context!8619 (t!374280 (exprs!4809 lt!2162119))) (h!67398 s!2326)))))

(declare-fun b!5291678 () Bool)

(declare-fun e!3289622 () (InoxSet Context!8618))

(assert (=> b!5291678 (= e!3289622 call!377126)))

(declare-fun b!5291679 () Bool)

(declare-fun e!3289618 () (InoxSet Context!8618))

(assert (=> b!5291679 (= e!3289618 ((_ map or) call!377126 (derivationStepZipperUp!297 (Context!8619 (t!374280 (exprs!4809 lt!2162119))) (h!67398 s!2326))))))

(declare-fun b!5291680 () Bool)

(declare-fun e!3289619 () Bool)

(assert (=> b!5291680 (= e!3289619 (nullable!5094 (h!67399 (exprs!4809 lt!2162119))))))

(declare-fun b!5291681 () Bool)

(assert (=> b!5291681 (= e!3289618 e!3289622)))

(declare-fun c!918008 () Bool)

(assert (=> b!5291681 (= c!918008 ((_ is Cons!60951) (exprs!4809 lt!2162119)))))

(declare-fun d!1702362 () Bool)

(declare-fun c!918009 () Bool)

(assert (=> d!1702362 (= c!918009 e!3289619)))

(declare-fun res!2244284 () Bool)

(assert (=> d!1702362 (=> (not res!2244284) (not e!3289619))))

(assert (=> d!1702362 (= res!2244284 ((_ is Cons!60951) (exprs!4809 lt!2162119)))))

(assert (=> d!1702362 (= (derivationStepZipperUp!297 lt!2162119 (h!67398 s!2326)) e!3289618)))

(declare-fun b!5291682 () Bool)

(assert (=> b!5291682 (= e!3289622 ((as const (Array Context!8618 Bool)) false))))

(assert (= (and d!1702362 res!2244284) b!5291680))

(assert (= (and d!1702362 c!918009) b!5291679))

(assert (= (and d!1702362 (not c!918009)) b!5291681))

(assert (= (and b!5291681 c!918008) b!5291678))

(assert (= (and b!5291681 (not c!918008)) b!5291682))

(assert (= (or b!5291679 b!5291678) bm!377121))

(declare-fun m!6329252 () Bool)

(assert (=> bm!377121 m!6329252))

(declare-fun m!6329254 () Bool)

(assert (=> b!5291679 m!6329254))

(declare-fun m!6329256 () Bool)

(assert (=> b!5291680 m!6329256))

(assert (=> b!5291076 d!1702362))

(declare-fun e!3289636 () Bool)

(declare-fun d!1702380 () Bool)

(assert (=> d!1702380 (= (matchZipper!1169 ((_ map or) lt!2162139 lt!2162150) (t!374279 s!2326)) e!3289636)))

(declare-fun res!2244287 () Bool)

(assert (=> d!1702380 (=> res!2244287 e!3289636)))

(assert (=> d!1702380 (= res!2244287 (matchZipper!1169 lt!2162139 (t!374279 s!2326)))))

(declare-fun lt!2162268 () Unit!153218)

(declare-fun choose!39513 ((InoxSet Context!8618) (InoxSet Context!8618) List!61074) Unit!153218)

(assert (=> d!1702380 (= lt!2162268 (choose!39513 lt!2162139 lt!2162150 (t!374279 s!2326)))))

(assert (=> d!1702380 (= (lemmaZipperConcatMatchesSameAsBothZippers!162 lt!2162139 lt!2162150 (t!374279 s!2326)) lt!2162268)))

(declare-fun b!5291721 () Bool)

(assert (=> b!5291721 (= e!3289636 (matchZipper!1169 lt!2162150 (t!374279 s!2326)))))

(assert (= (and d!1702380 (not res!2244287)) b!5291721))

(declare-fun m!6329262 () Bool)

(assert (=> d!1702380 m!6329262))

(assert (=> d!1702380 m!6328604))

(declare-fun m!6329264 () Bool)

(assert (=> d!1702380 m!6329264))

(assert (=> b!5291721 m!6328562))

(assert (=> b!5291076 d!1702380))

(declare-fun d!1702390 () Bool)

(declare-fun choose!39514 ((InoxSet Context!8618) Int) (InoxSet Context!8618))

(assert (=> d!1702390 (= (flatMap!652 lt!2162117 lambda!267905) (choose!39514 lt!2162117 lambda!267905))))

(declare-fun bs!1227362 () Bool)

(assert (= bs!1227362 d!1702390))

(declare-fun m!6329266 () Bool)

(assert (=> bs!1227362 m!6329266))

(assert (=> b!5291076 d!1702390))

(declare-fun d!1702392 () Bool)

(declare-fun c!918010 () Bool)

(assert (=> d!1702392 (= c!918010 (isEmpty!32908 (t!374279 s!2326)))))

(declare-fun e!3289637 () Bool)

(assert (=> d!1702392 (= (matchZipper!1169 lt!2162130 (t!374279 s!2326)) e!3289637)))

(declare-fun b!5291722 () Bool)

(assert (=> b!5291722 (= e!3289637 (nullableZipper!1310 lt!2162130))))

(declare-fun b!5291723 () Bool)

(assert (=> b!5291723 (= e!3289637 (matchZipper!1169 (derivationStepZipper!1168 lt!2162130 (head!11338 (t!374279 s!2326))) (tail!10435 (t!374279 s!2326))))))

(assert (= (and d!1702392 c!918010) b!5291722))

(assert (= (and d!1702392 (not c!918010)) b!5291723))

(assert (=> d!1702392 m!6329110))

(declare-fun m!6329268 () Bool)

(assert (=> b!5291722 m!6329268))

(assert (=> b!5291723 m!6329122))

(assert (=> b!5291723 m!6329122))

(declare-fun m!6329270 () Bool)

(assert (=> b!5291723 m!6329270))

(assert (=> b!5291723 m!6329130))

(assert (=> b!5291723 m!6329270))

(assert (=> b!5291723 m!6329130))

(declare-fun m!6329272 () Bool)

(assert (=> b!5291723 m!6329272))

(assert (=> b!5291104 d!1702392))

(declare-fun b!5291730 () Bool)

(assert (=> b!5291730 true))

(declare-fun bs!1227363 () Bool)

(declare-fun b!5291732 () Bool)

(assert (= bs!1227363 (and b!5291732 b!5291730)))

(declare-fun lambda!267985 () Int)

(declare-fun lt!2162279 () Int)

(declare-fun lt!2162277 () Int)

(declare-fun lambda!267984 () Int)

(assert (=> bs!1227363 (= (= lt!2162279 lt!2162277) (= lambda!267985 lambda!267984))))

(assert (=> b!5291732 true))

(declare-fun d!1702394 () Bool)

(declare-fun e!3289642 () Bool)

(assert (=> d!1702394 e!3289642))

(declare-fun res!2244290 () Bool)

(assert (=> d!1702394 (=> (not res!2244290) (not e!3289642))))

(assert (=> d!1702394 (= res!2244290 (>= lt!2162279 0))))

(declare-fun e!3289643 () Int)

(assert (=> d!1702394 (= lt!2162279 e!3289643)))

(declare-fun c!918019 () Bool)

(assert (=> d!1702394 (= c!918019 ((_ is Cons!60952) lt!2162137))))

(assert (=> d!1702394 (= (zipperDepth!42 lt!2162137) lt!2162279)))

(assert (=> b!5291730 (= e!3289643 lt!2162277)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!22 (Context!8618) Int)

(assert (=> b!5291730 (= lt!2162277 (maxBigInt!0 (contextDepth!22 (h!67400 lt!2162137)) (zipperDepth!42 (t!374281 lt!2162137))))))

(declare-fun lambda!267983 () Int)

(declare-fun lt!2162280 () Unit!153218)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!16 (List!61076 Int Int Int) Unit!153218)

(assert (=> b!5291730 (= lt!2162280 (lemmaForallContextDepthBiggerThanTransitive!16 (t!374281 lt!2162137) lt!2162277 (zipperDepth!42 (t!374281 lt!2162137)) lambda!267983))))

(declare-fun forall!14335 (List!61076 Int) Bool)

(assert (=> b!5291730 (forall!14335 (t!374281 lt!2162137) lambda!267984)))

(declare-fun lt!2162278 () Unit!153218)

(assert (=> b!5291730 (= lt!2162278 lt!2162280)))

(declare-fun b!5291731 () Bool)

(assert (=> b!5291731 (= e!3289643 0)))

(assert (=> b!5291732 (= e!3289642 (forall!14335 lt!2162137 lambda!267985))))

(assert (= (and d!1702394 c!918019) b!5291730))

(assert (= (and d!1702394 (not c!918019)) b!5291731))

(assert (= (and d!1702394 res!2244290) b!5291732))

(declare-fun m!6329274 () Bool)

(assert (=> b!5291730 m!6329274))

(declare-fun m!6329276 () Bool)

(assert (=> b!5291730 m!6329276))

(declare-fun m!6329278 () Bool)

(assert (=> b!5291730 m!6329278))

(assert (=> b!5291730 m!6329276))

(assert (=> b!5291730 m!6329274))

(declare-fun m!6329280 () Bool)

(assert (=> b!5291730 m!6329280))

(assert (=> b!5291730 m!6329276))

(declare-fun m!6329282 () Bool)

(assert (=> b!5291730 m!6329282))

(declare-fun m!6329284 () Bool)

(assert (=> b!5291732 m!6329284))

(assert (=> b!5291084 d!1702394))

(declare-fun bs!1227364 () Bool)

(declare-fun b!5291735 () Bool)

(assert (= bs!1227364 (and b!5291735 b!5291730)))

(declare-fun lambda!267986 () Int)

(assert (=> bs!1227364 (= lambda!267986 lambda!267983)))

(declare-fun lt!2162281 () Int)

(declare-fun lambda!267987 () Int)

(assert (=> bs!1227364 (= (= lt!2162281 lt!2162277) (= lambda!267987 lambda!267984))))

(declare-fun bs!1227365 () Bool)

(assert (= bs!1227365 (and b!5291735 b!5291732)))

(assert (=> bs!1227365 (= (= lt!2162281 lt!2162279) (= lambda!267987 lambda!267985))))

(assert (=> b!5291735 true))

(declare-fun bs!1227366 () Bool)

(declare-fun b!5291737 () Bool)

(assert (= bs!1227366 (and b!5291737 b!5291730)))

(declare-fun lt!2162283 () Int)

(declare-fun lambda!267988 () Int)

(assert (=> bs!1227366 (= (= lt!2162283 lt!2162277) (= lambda!267988 lambda!267984))))

(declare-fun bs!1227367 () Bool)

(assert (= bs!1227367 (and b!5291737 b!5291732)))

(assert (=> bs!1227367 (= (= lt!2162283 lt!2162279) (= lambda!267988 lambda!267985))))

(declare-fun bs!1227368 () Bool)

(assert (= bs!1227368 (and b!5291737 b!5291735)))

(assert (=> bs!1227368 (= (= lt!2162283 lt!2162281) (= lambda!267988 lambda!267987))))

(assert (=> b!5291737 true))

(declare-fun d!1702396 () Bool)

(declare-fun e!3289644 () Bool)

(assert (=> d!1702396 e!3289644))

(declare-fun res!2244291 () Bool)

(assert (=> d!1702396 (=> (not res!2244291) (not e!3289644))))

(assert (=> d!1702396 (= res!2244291 (>= lt!2162283 0))))

(declare-fun e!3289645 () Int)

(assert (=> d!1702396 (= lt!2162283 e!3289645)))

(declare-fun c!918020 () Bool)

(assert (=> d!1702396 (= c!918020 ((_ is Cons!60952) zl!343))))

(assert (=> d!1702396 (= (zipperDepth!42 zl!343) lt!2162283)))

(assert (=> b!5291735 (= e!3289645 lt!2162281)))

(assert (=> b!5291735 (= lt!2162281 (maxBigInt!0 (contextDepth!22 (h!67400 zl!343)) (zipperDepth!42 (t!374281 zl!343))))))

(declare-fun lt!2162284 () Unit!153218)

(assert (=> b!5291735 (= lt!2162284 (lemmaForallContextDepthBiggerThanTransitive!16 (t!374281 zl!343) lt!2162281 (zipperDepth!42 (t!374281 zl!343)) lambda!267986))))

(assert (=> b!5291735 (forall!14335 (t!374281 zl!343) lambda!267987)))

(declare-fun lt!2162282 () Unit!153218)

(assert (=> b!5291735 (= lt!2162282 lt!2162284)))

(declare-fun b!5291736 () Bool)

(assert (=> b!5291736 (= e!3289645 0)))

(assert (=> b!5291737 (= e!3289644 (forall!14335 zl!343 lambda!267988))))

(assert (= (and d!1702396 c!918020) b!5291735))

(assert (= (and d!1702396 (not c!918020)) b!5291736))

(assert (= (and d!1702396 res!2244291) b!5291737))

(declare-fun m!6329286 () Bool)

(assert (=> b!5291735 m!6329286))

(declare-fun m!6329288 () Bool)

(assert (=> b!5291735 m!6329288))

(declare-fun m!6329290 () Bool)

(assert (=> b!5291735 m!6329290))

(assert (=> b!5291735 m!6329288))

(assert (=> b!5291735 m!6329286))

(declare-fun m!6329292 () Bool)

(assert (=> b!5291735 m!6329292))

(assert (=> b!5291735 m!6329288))

(declare-fun m!6329294 () Bool)

(assert (=> b!5291735 m!6329294))

(declare-fun m!6329296 () Bool)

(assert (=> b!5291737 m!6329296))

(assert (=> b!5291084 d!1702396))

(declare-fun d!1702398 () Bool)

(declare-fun c!918021 () Bool)

(assert (=> d!1702398 (= c!918021 (isEmpty!32908 (t!374279 s!2326)))))

(declare-fun e!3289646 () Bool)

(assert (=> d!1702398 (= (matchZipper!1169 lt!2162150 (t!374279 s!2326)) e!3289646)))

(declare-fun b!5291738 () Bool)

(assert (=> b!5291738 (= e!3289646 (nullableZipper!1310 lt!2162150))))

(declare-fun b!5291739 () Bool)

(assert (=> b!5291739 (= e!3289646 (matchZipper!1169 (derivationStepZipper!1168 lt!2162150 (head!11338 (t!374279 s!2326))) (tail!10435 (t!374279 s!2326))))))

(assert (= (and d!1702398 c!918021) b!5291738))

(assert (= (and d!1702398 (not c!918021)) b!5291739))

(assert (=> d!1702398 m!6329110))

(declare-fun m!6329298 () Bool)

(assert (=> b!5291738 m!6329298))

(assert (=> b!5291739 m!6329122))

(assert (=> b!5291739 m!6329122))

(declare-fun m!6329300 () Bool)

(assert (=> b!5291739 m!6329300))

(assert (=> b!5291739 m!6329130))

(assert (=> b!5291739 m!6329300))

(assert (=> b!5291739 m!6329130))

(declare-fun m!6329302 () Bool)

(assert (=> b!5291739 m!6329302))

(assert (=> b!5291103 d!1702398))

(declare-fun d!1702400 () Bool)

(declare-fun res!2244296 () Bool)

(declare-fun e!3289651 () Bool)

(assert (=> d!1702400 (=> res!2244296 e!3289651)))

(assert (=> d!1702400 (= res!2244296 ((_ is Nil!60951) (t!374280 (exprs!4809 (h!67400 zl!343)))))))

(assert (=> d!1702400 (= (forall!14333 (t!374280 (exprs!4809 (h!67400 zl!343))) lambda!267909) e!3289651)))

(declare-fun b!5291744 () Bool)

(declare-fun e!3289652 () Bool)

(assert (=> b!5291744 (= e!3289651 e!3289652)))

(declare-fun res!2244297 () Bool)

(assert (=> b!5291744 (=> (not res!2244297) (not e!3289652))))

(declare-fun dynLambda!24102 (Int Regex!14925) Bool)

(assert (=> b!5291744 (= res!2244297 (dynLambda!24102 lambda!267909 (h!67399 (t!374280 (exprs!4809 (h!67400 zl!343))))))))

(declare-fun b!5291745 () Bool)

(assert (=> b!5291745 (= e!3289652 (forall!14333 (t!374280 (t!374280 (exprs!4809 (h!67400 zl!343)))) lambda!267909))))

(assert (= (and d!1702400 (not res!2244296)) b!5291744))

(assert (= (and b!5291744 res!2244297) b!5291745))

(declare-fun b_lambda!204087 () Bool)

(assert (=> (not b_lambda!204087) (not b!5291744)))

(declare-fun m!6329304 () Bool)

(assert (=> b!5291744 m!6329304))

(declare-fun m!6329306 () Bool)

(assert (=> b!5291745 m!6329306))

(assert (=> b!5291083 d!1702400))

(declare-fun d!1702402 () Bool)

(assert (=> d!1702402 (= (isDefined!11739 (findConcatSeparation!1450 (regTwo!30362 (regOne!30362 r!7292)) lt!2162114 Nil!60950 s!2326 s!2326)) (not (isEmpty!32907 (findConcatSeparation!1450 (regTwo!30362 (regOne!30362 r!7292)) lt!2162114 Nil!60950 s!2326 s!2326))))))

(declare-fun bs!1227369 () Bool)

(assert (= bs!1227369 d!1702402))

(assert (=> bs!1227369 m!6328632))

(declare-fun m!6329308 () Bool)

(assert (=> bs!1227369 m!6329308))

(assert (=> b!5291083 d!1702402))

(declare-fun bs!1227370 () Bool)

(declare-fun b!5291781 () Bool)

(assert (= bs!1227370 (and b!5291781 b!5291083)))

(declare-fun lambda!267993 () Int)

(assert (=> bs!1227370 (not (= lambda!267993 lambda!267906))))

(assert (=> bs!1227370 (not (= lambda!267993 lambda!267907))))

(declare-fun bs!1227371 () Bool)

(assert (= bs!1227371 (and b!5291781 b!5291098)))

(assert (=> bs!1227371 (not (= lambda!267993 lambda!267904))))

(declare-fun bs!1227372 () Bool)

(assert (= bs!1227372 (and b!5291781 d!1702296)))

(assert (=> bs!1227372 (not (= lambda!267993 lambda!267965))))

(assert (=> bs!1227371 (not (= lambda!267993 lambda!267903))))

(assert (=> bs!1227372 (not (= lambda!267993 lambda!267964))))

(declare-fun bs!1227373 () Bool)

(assert (= bs!1227373 (and b!5291781 d!1702280)))

(assert (=> bs!1227373 (not (= lambda!267993 lambda!267953))))

(assert (=> bs!1227370 (not (= lambda!267993 lambda!267908))))

(assert (=> b!5291781 true))

(assert (=> b!5291781 true))

(declare-fun bs!1227374 () Bool)

(declare-fun b!5291786 () Bool)

(assert (= bs!1227374 (and b!5291786 b!5291083)))

(declare-fun lambda!267994 () Int)

(assert (=> bs!1227374 (not (= lambda!267994 lambda!267906))))

(assert (=> bs!1227374 (= (and (= (regOne!30362 lt!2162131) (regOne!30362 (regOne!30362 r!7292))) (= (regTwo!30362 lt!2162131) lt!2162145)) (= lambda!267994 lambda!267907))))

(declare-fun bs!1227375 () Bool)

(assert (= bs!1227375 (and b!5291786 b!5291098)))

(assert (=> bs!1227375 (= (and (= (regOne!30362 lt!2162131) (regOne!30362 r!7292)) (= (regTwo!30362 lt!2162131) (regTwo!30362 r!7292))) (= lambda!267994 lambda!267904))))

(declare-fun bs!1227376 () Bool)

(assert (= bs!1227376 (and b!5291786 b!5291781)))

(assert (=> bs!1227376 (not (= lambda!267994 lambda!267993))))

(declare-fun bs!1227377 () Bool)

(assert (= bs!1227377 (and b!5291786 d!1702296)))

(assert (=> bs!1227377 (= (and (= (regOne!30362 lt!2162131) (regOne!30362 r!7292)) (= (regTwo!30362 lt!2162131) (regTwo!30362 r!7292))) (= lambda!267994 lambda!267965))))

(assert (=> bs!1227375 (not (= lambda!267994 lambda!267903))))

(assert (=> bs!1227377 (not (= lambda!267994 lambda!267964))))

(declare-fun bs!1227378 () Bool)

(assert (= bs!1227378 (and b!5291786 d!1702280)))

(assert (=> bs!1227378 (not (= lambda!267994 lambda!267953))))

(assert (=> bs!1227374 (not (= lambda!267994 lambda!267908))))

(assert (=> b!5291786 true))

(assert (=> b!5291786 true))

(declare-fun b!5291778 () Bool)

(declare-fun c!918031 () Bool)

(assert (=> b!5291778 (= c!918031 ((_ is Union!14925) lt!2162131))))

(declare-fun e!3289673 () Bool)

(declare-fun e!3289672 () Bool)

(assert (=> b!5291778 (= e!3289673 e!3289672)))

(declare-fun b!5291779 () Bool)

(declare-fun res!2244316 () Bool)

(declare-fun e!3289675 () Bool)

(assert (=> b!5291779 (=> res!2244316 e!3289675)))

(declare-fun call!377132 () Bool)

(assert (=> b!5291779 (= res!2244316 call!377132)))

(declare-fun e!3289671 () Bool)

(assert (=> b!5291779 (= e!3289671 e!3289675)))

(declare-fun d!1702404 () Bool)

(declare-fun c!918032 () Bool)

(assert (=> d!1702404 (= c!918032 ((_ is EmptyExpr!14925) lt!2162131))))

(declare-fun e!3289677 () Bool)

(assert (=> d!1702404 (= (matchRSpec!2028 lt!2162131 s!2326) e!3289677)))

(declare-fun b!5291780 () Bool)

(declare-fun e!3289674 () Bool)

(assert (=> b!5291780 (= e!3289677 e!3289674)))

(declare-fun res!2244314 () Bool)

(assert (=> b!5291780 (= res!2244314 (not ((_ is EmptyLang!14925) lt!2162131)))))

(assert (=> b!5291780 (=> (not res!2244314) (not e!3289674))))

(declare-fun call!377131 () Bool)

(assert (=> b!5291781 (= e!3289675 call!377131)))

(declare-fun b!5291782 () Bool)

(assert (=> b!5291782 (= e!3289672 e!3289671)))

(declare-fun c!918030 () Bool)

(assert (=> b!5291782 (= c!918030 ((_ is Star!14925) lt!2162131))))

(declare-fun b!5291783 () Bool)

(assert (=> b!5291783 (= e!3289673 (= s!2326 (Cons!60950 (c!917825 lt!2162131) Nil!60950)))))

(declare-fun bm!377126 () Bool)

(assert (=> bm!377126 (= call!377131 (Exists!2106 (ite c!918030 lambda!267993 lambda!267994)))))

(declare-fun b!5291784 () Bool)

(assert (=> b!5291784 (= e!3289677 call!377132)))

(declare-fun b!5291785 () Bool)

(declare-fun e!3289676 () Bool)

(assert (=> b!5291785 (= e!3289676 (matchRSpec!2028 (regTwo!30363 lt!2162131) s!2326))))

(assert (=> b!5291786 (= e!3289671 call!377131)))

(declare-fun b!5291787 () Bool)

(declare-fun c!918033 () Bool)

(assert (=> b!5291787 (= c!918033 ((_ is ElementMatch!14925) lt!2162131))))

(assert (=> b!5291787 (= e!3289674 e!3289673)))

(declare-fun bm!377127 () Bool)

(assert (=> bm!377127 (= call!377132 (isEmpty!32908 s!2326))))

(declare-fun b!5291788 () Bool)

(assert (=> b!5291788 (= e!3289672 e!3289676)))

(declare-fun res!2244315 () Bool)

(assert (=> b!5291788 (= res!2244315 (matchRSpec!2028 (regOne!30363 lt!2162131) s!2326))))

(assert (=> b!5291788 (=> res!2244315 e!3289676)))

(assert (= (and d!1702404 c!918032) b!5291784))

(assert (= (and d!1702404 (not c!918032)) b!5291780))

(assert (= (and b!5291780 res!2244314) b!5291787))

(assert (= (and b!5291787 c!918033) b!5291783))

(assert (= (and b!5291787 (not c!918033)) b!5291778))

(assert (= (and b!5291778 c!918031) b!5291788))

(assert (= (and b!5291778 (not c!918031)) b!5291782))

(assert (= (and b!5291788 (not res!2244315)) b!5291785))

(assert (= (and b!5291782 c!918030) b!5291779))

(assert (= (and b!5291782 (not c!918030)) b!5291786))

(assert (= (and b!5291779 (not res!2244316)) b!5291781))

(assert (= (or b!5291781 b!5291786) bm!377126))

(assert (= (or b!5291784 b!5291779) bm!377127))

(declare-fun m!6329310 () Bool)

(assert (=> bm!377126 m!6329310))

(declare-fun m!6329312 () Bool)

(assert (=> b!5291785 m!6329312))

(declare-fun m!6329314 () Bool)

(assert (=> bm!377127 m!6329314))

(declare-fun m!6329316 () Bool)

(assert (=> b!5291788 m!6329316))

(assert (=> b!5291083 d!1702404))

(declare-fun bs!1227379 () Bool)

(declare-fun d!1702406 () Bool)

(assert (= bs!1227379 (and d!1702406 b!5291083)))

(declare-fun lambda!267997 () Int)

(assert (=> bs!1227379 (= lambda!267997 lambda!267909)))

(declare-fun b!5291809 () Bool)

(declare-fun e!3289695 () Regex!14925)

(assert (=> b!5291809 (= e!3289695 (h!67399 (t!374280 (exprs!4809 (h!67400 zl!343)))))))

(declare-fun b!5291810 () Bool)

(declare-fun e!3289693 () Bool)

(declare-fun e!3289691 () Bool)

(assert (=> b!5291810 (= e!3289693 e!3289691)))

(declare-fun c!918043 () Bool)

(declare-fun tail!10436 (List!61075) List!61075)

(assert (=> b!5291810 (= c!918043 (isEmpty!32904 (tail!10436 (t!374280 (exprs!4809 (h!67400 zl!343))))))))

(declare-fun b!5291811 () Bool)

(declare-fun e!3289690 () Bool)

(assert (=> b!5291811 (= e!3289690 e!3289693)))

(declare-fun c!918044 () Bool)

(assert (=> b!5291811 (= c!918044 (isEmpty!32904 (t!374280 (exprs!4809 (h!67400 zl!343)))))))

(assert (=> d!1702406 e!3289690))

(declare-fun res!2244321 () Bool)

(assert (=> d!1702406 (=> (not res!2244321) (not e!3289690))))

(declare-fun lt!2162287 () Regex!14925)

(assert (=> d!1702406 (= res!2244321 (validRegex!6661 lt!2162287))))

(assert (=> d!1702406 (= lt!2162287 e!3289695)))

(declare-fun c!918042 () Bool)

(declare-fun e!3289692 () Bool)

(assert (=> d!1702406 (= c!918042 e!3289692)))

(declare-fun res!2244322 () Bool)

(assert (=> d!1702406 (=> (not res!2244322) (not e!3289692))))

(assert (=> d!1702406 (= res!2244322 ((_ is Cons!60951) (t!374280 (exprs!4809 (h!67400 zl!343)))))))

(assert (=> d!1702406 (forall!14333 (t!374280 (exprs!4809 (h!67400 zl!343))) lambda!267997)))

(assert (=> d!1702406 (= (generalisedConcat!594 (t!374280 (exprs!4809 (h!67400 zl!343)))) lt!2162287)))

(declare-fun b!5291812 () Bool)

(declare-fun e!3289694 () Regex!14925)

(assert (=> b!5291812 (= e!3289694 EmptyExpr!14925)))

(declare-fun b!5291813 () Bool)

(assert (=> b!5291813 (= e!3289695 e!3289694)))

(declare-fun c!918045 () Bool)

(assert (=> b!5291813 (= c!918045 ((_ is Cons!60951) (t!374280 (exprs!4809 (h!67400 zl!343)))))))

(declare-fun b!5291814 () Bool)

(declare-fun head!11339 (List!61075) Regex!14925)

(assert (=> b!5291814 (= e!3289691 (= lt!2162287 (head!11339 (t!374280 (exprs!4809 (h!67400 zl!343))))))))

(declare-fun b!5291815 () Bool)

(assert (=> b!5291815 (= e!3289694 (Concat!23770 (h!67399 (t!374280 (exprs!4809 (h!67400 zl!343)))) (generalisedConcat!594 (t!374280 (t!374280 (exprs!4809 (h!67400 zl!343)))))))))

(declare-fun b!5291816 () Bool)

(declare-fun isEmptyExpr!845 (Regex!14925) Bool)

(assert (=> b!5291816 (= e!3289693 (isEmptyExpr!845 lt!2162287))))

(declare-fun b!5291817 () Bool)

(declare-fun isConcat!368 (Regex!14925) Bool)

(assert (=> b!5291817 (= e!3289691 (isConcat!368 lt!2162287))))

(declare-fun b!5291818 () Bool)

(assert (=> b!5291818 (= e!3289692 (isEmpty!32904 (t!374280 (t!374280 (exprs!4809 (h!67400 zl!343))))))))

(assert (= (and d!1702406 res!2244322) b!5291818))

(assert (= (and d!1702406 c!918042) b!5291809))

(assert (= (and d!1702406 (not c!918042)) b!5291813))

(assert (= (and b!5291813 c!918045) b!5291815))

(assert (= (and b!5291813 (not c!918045)) b!5291812))

(assert (= (and d!1702406 res!2244321) b!5291811))

(assert (= (and b!5291811 c!918044) b!5291816))

(assert (= (and b!5291811 (not c!918044)) b!5291810))

(assert (= (and b!5291810 c!918043) b!5291814))

(assert (= (and b!5291810 (not c!918043)) b!5291817))

(declare-fun m!6329318 () Bool)

(assert (=> b!5291817 m!6329318))

(declare-fun m!6329320 () Bool)

(assert (=> b!5291814 m!6329320))

(declare-fun m!6329322 () Bool)

(assert (=> b!5291815 m!6329322))

(declare-fun m!6329324 () Bool)

(assert (=> b!5291810 m!6329324))

(assert (=> b!5291810 m!6329324))

(declare-fun m!6329326 () Bool)

(assert (=> b!5291810 m!6329326))

(assert (=> b!5291811 m!6328546))

(declare-fun m!6329328 () Bool)

(assert (=> b!5291818 m!6329328))

(declare-fun m!6329330 () Bool)

(assert (=> d!1702406 m!6329330))

(declare-fun m!6329332 () Bool)

(assert (=> d!1702406 m!6329332))

(declare-fun m!6329334 () Bool)

(assert (=> b!5291816 m!6329334))

(assert (=> b!5291083 d!1702406))

(declare-fun bs!1227380 () Bool)

(declare-fun d!1702408 () Bool)

(assert (= bs!1227380 (and d!1702408 b!5291083)))

(declare-fun lambda!267998 () Int)

(assert (=> bs!1227380 (= lambda!267998 lambda!267909)))

(declare-fun bs!1227381 () Bool)

(assert (= bs!1227381 (and d!1702408 d!1702406)))

(assert (=> bs!1227381 (= lambda!267998 lambda!267997)))

(declare-fun b!5291819 () Bool)

(declare-fun e!3289701 () Regex!14925)

(assert (=> b!5291819 (= e!3289701 (h!67399 lt!2162116))))

(declare-fun b!5291820 () Bool)

(declare-fun e!3289699 () Bool)

(declare-fun e!3289697 () Bool)

(assert (=> b!5291820 (= e!3289699 e!3289697)))

(declare-fun c!918047 () Bool)

(assert (=> b!5291820 (= c!918047 (isEmpty!32904 (tail!10436 lt!2162116)))))

(declare-fun b!5291821 () Bool)

(declare-fun e!3289696 () Bool)

(assert (=> b!5291821 (= e!3289696 e!3289699)))

(declare-fun c!918048 () Bool)

(assert (=> b!5291821 (= c!918048 (isEmpty!32904 lt!2162116))))

(assert (=> d!1702408 e!3289696))

(declare-fun res!2244323 () Bool)

(assert (=> d!1702408 (=> (not res!2244323) (not e!3289696))))

(declare-fun lt!2162288 () Regex!14925)

(assert (=> d!1702408 (= res!2244323 (validRegex!6661 lt!2162288))))

(assert (=> d!1702408 (= lt!2162288 e!3289701)))

(declare-fun c!918046 () Bool)

(declare-fun e!3289698 () Bool)

(assert (=> d!1702408 (= c!918046 e!3289698)))

(declare-fun res!2244324 () Bool)

(assert (=> d!1702408 (=> (not res!2244324) (not e!3289698))))

(assert (=> d!1702408 (= res!2244324 ((_ is Cons!60951) lt!2162116))))

(assert (=> d!1702408 (forall!14333 lt!2162116 lambda!267998)))

(assert (=> d!1702408 (= (generalisedConcat!594 lt!2162116) lt!2162288)))

(declare-fun b!5291822 () Bool)

(declare-fun e!3289700 () Regex!14925)

(assert (=> b!5291822 (= e!3289700 EmptyExpr!14925)))

(declare-fun b!5291823 () Bool)

(assert (=> b!5291823 (= e!3289701 e!3289700)))

(declare-fun c!918049 () Bool)

(assert (=> b!5291823 (= c!918049 ((_ is Cons!60951) lt!2162116))))

(declare-fun b!5291824 () Bool)

(assert (=> b!5291824 (= e!3289697 (= lt!2162288 (head!11339 lt!2162116)))))

(declare-fun b!5291825 () Bool)

(assert (=> b!5291825 (= e!3289700 (Concat!23770 (h!67399 lt!2162116) (generalisedConcat!594 (t!374280 lt!2162116))))))

(declare-fun b!5291826 () Bool)

(assert (=> b!5291826 (= e!3289699 (isEmptyExpr!845 lt!2162288))))

(declare-fun b!5291827 () Bool)

(assert (=> b!5291827 (= e!3289697 (isConcat!368 lt!2162288))))

(declare-fun b!5291828 () Bool)

(assert (=> b!5291828 (= e!3289698 (isEmpty!32904 (t!374280 lt!2162116)))))

(assert (= (and d!1702408 res!2244324) b!5291828))

(assert (= (and d!1702408 c!918046) b!5291819))

(assert (= (and d!1702408 (not c!918046)) b!5291823))

(assert (= (and b!5291823 c!918049) b!5291825))

(assert (= (and b!5291823 (not c!918049)) b!5291822))

(assert (= (and d!1702408 res!2244323) b!5291821))

(assert (= (and b!5291821 c!918048) b!5291826))

(assert (= (and b!5291821 (not c!918048)) b!5291820))

(assert (= (and b!5291820 c!918047) b!5291824))

(assert (= (and b!5291820 (not c!918047)) b!5291827))

(declare-fun m!6329336 () Bool)

(assert (=> b!5291827 m!6329336))

(declare-fun m!6329338 () Bool)

(assert (=> b!5291824 m!6329338))

(declare-fun m!6329340 () Bool)

(assert (=> b!5291825 m!6329340))

(declare-fun m!6329342 () Bool)

(assert (=> b!5291820 m!6329342))

(assert (=> b!5291820 m!6329342))

(declare-fun m!6329344 () Bool)

(assert (=> b!5291820 m!6329344))

(declare-fun m!6329346 () Bool)

(assert (=> b!5291821 m!6329346))

(declare-fun m!6329348 () Bool)

(assert (=> b!5291828 m!6329348))

(declare-fun m!6329350 () Bool)

(assert (=> d!1702408 m!6329350))

(declare-fun m!6329352 () Bool)

(assert (=> d!1702408 m!6329352))

(declare-fun m!6329354 () Bool)

(assert (=> b!5291826 m!6329354))

(assert (=> b!5291083 d!1702408))

(declare-fun b!5291857 () Bool)

(declare-fun e!3289720 () Bool)

(assert (=> b!5291857 (= e!3289720 (not (= (head!11338 s!2326) (c!917825 lt!2162131))))))

(declare-fun b!5291858 () Bool)

(declare-fun e!3289719 () Bool)

(declare-fun e!3289718 () Bool)

(assert (=> b!5291858 (= e!3289719 e!3289718)))

(declare-fun res!2244343 () Bool)

(assert (=> b!5291858 (=> (not res!2244343) (not e!3289718))))

(declare-fun lt!2162291 () Bool)

(assert (=> b!5291858 (= res!2244343 (not lt!2162291))))

(declare-fun b!5291859 () Bool)

(declare-fun e!3289716 () Bool)

(assert (=> b!5291859 (= e!3289716 (= (head!11338 s!2326) (c!917825 lt!2162131)))))

(declare-fun b!5291860 () Bool)

(declare-fun e!3289722 () Bool)

(assert (=> b!5291860 (= e!3289722 (not lt!2162291))))

(declare-fun d!1702410 () Bool)

(declare-fun e!3289717 () Bool)

(assert (=> d!1702410 e!3289717))

(declare-fun c!918057 () Bool)

(assert (=> d!1702410 (= c!918057 ((_ is EmptyExpr!14925) lt!2162131))))

(declare-fun e!3289721 () Bool)

(assert (=> d!1702410 (= lt!2162291 e!3289721)))

(declare-fun c!918056 () Bool)

(assert (=> d!1702410 (= c!918056 (isEmpty!32908 s!2326))))

(assert (=> d!1702410 (validRegex!6661 lt!2162131)))

(assert (=> d!1702410 (= (matchR!7110 lt!2162131 s!2326) lt!2162291)))

(declare-fun bm!377130 () Bool)

(declare-fun call!377135 () Bool)

(assert (=> bm!377130 (= call!377135 (isEmpty!32908 s!2326))))

(declare-fun b!5291861 () Bool)

(declare-fun res!2244346 () Bool)

(assert (=> b!5291861 (=> (not res!2244346) (not e!3289716))))

(assert (=> b!5291861 (= res!2244346 (not call!377135))))

(declare-fun b!5291862 () Bool)

(declare-fun derivativeStep!4131 (Regex!14925 C!30120) Regex!14925)

(assert (=> b!5291862 (= e!3289721 (matchR!7110 (derivativeStep!4131 lt!2162131 (head!11338 s!2326)) (tail!10435 s!2326)))))

(declare-fun b!5291863 () Bool)

(declare-fun res!2244341 () Bool)

(assert (=> b!5291863 (=> res!2244341 e!3289719)))

(assert (=> b!5291863 (= res!2244341 (not ((_ is ElementMatch!14925) lt!2162131)))))

(assert (=> b!5291863 (= e!3289722 e!3289719)))

(declare-fun b!5291864 () Bool)

(declare-fun res!2244342 () Bool)

(assert (=> b!5291864 (=> res!2244342 e!3289719)))

(assert (=> b!5291864 (= res!2244342 e!3289716)))

(declare-fun res!2244344 () Bool)

(assert (=> b!5291864 (=> (not res!2244344) (not e!3289716))))

(assert (=> b!5291864 (= res!2244344 lt!2162291)))

(declare-fun b!5291865 () Bool)

(assert (=> b!5291865 (= e!3289717 (= lt!2162291 call!377135))))

(declare-fun b!5291866 () Bool)

(declare-fun res!2244348 () Bool)

(assert (=> b!5291866 (=> (not res!2244348) (not e!3289716))))

(assert (=> b!5291866 (= res!2244348 (isEmpty!32908 (tail!10435 s!2326)))))

(declare-fun b!5291867 () Bool)

(assert (=> b!5291867 (= e!3289721 (nullable!5094 lt!2162131))))

(declare-fun b!5291868 () Bool)

(assert (=> b!5291868 (= e!3289717 e!3289722)))

(declare-fun c!918058 () Bool)

(assert (=> b!5291868 (= c!918058 ((_ is EmptyLang!14925) lt!2162131))))

(declare-fun b!5291869 () Bool)

(assert (=> b!5291869 (= e!3289718 e!3289720)))

(declare-fun res!2244347 () Bool)

(assert (=> b!5291869 (=> res!2244347 e!3289720)))

(assert (=> b!5291869 (= res!2244347 call!377135)))

(declare-fun b!5291870 () Bool)

(declare-fun res!2244345 () Bool)

(assert (=> b!5291870 (=> res!2244345 e!3289720)))

(assert (=> b!5291870 (= res!2244345 (not (isEmpty!32908 (tail!10435 s!2326))))))

(assert (= (and d!1702410 c!918056) b!5291867))

(assert (= (and d!1702410 (not c!918056)) b!5291862))

(assert (= (and d!1702410 c!918057) b!5291865))

(assert (= (and d!1702410 (not c!918057)) b!5291868))

(assert (= (and b!5291868 c!918058) b!5291860))

(assert (= (and b!5291868 (not c!918058)) b!5291863))

(assert (= (and b!5291863 (not res!2244341)) b!5291864))

(assert (= (and b!5291864 res!2244344) b!5291861))

(assert (= (and b!5291861 res!2244346) b!5291866))

(assert (= (and b!5291866 res!2244348) b!5291859))

(assert (= (and b!5291864 (not res!2244342)) b!5291858))

(assert (= (and b!5291858 res!2244343) b!5291869))

(assert (= (and b!5291869 (not res!2244347)) b!5291870))

(assert (= (and b!5291870 (not res!2244345)) b!5291857))

(assert (= (or b!5291865 b!5291861 b!5291869) bm!377130))

(assert (=> bm!377130 m!6329314))

(assert (=> d!1702410 m!6329314))

(declare-fun m!6329356 () Bool)

(assert (=> d!1702410 m!6329356))

(declare-fun m!6329358 () Bool)

(assert (=> b!5291870 m!6329358))

(assert (=> b!5291870 m!6329358))

(declare-fun m!6329360 () Bool)

(assert (=> b!5291870 m!6329360))

(declare-fun m!6329362 () Bool)

(assert (=> b!5291857 m!6329362))

(assert (=> b!5291866 m!6329358))

(assert (=> b!5291866 m!6329358))

(assert (=> b!5291866 m!6329360))

(assert (=> b!5291862 m!6329362))

(assert (=> b!5291862 m!6329362))

(declare-fun m!6329364 () Bool)

(assert (=> b!5291862 m!6329364))

(assert (=> b!5291862 m!6329358))

(assert (=> b!5291862 m!6329364))

(assert (=> b!5291862 m!6329358))

(declare-fun m!6329366 () Bool)

(assert (=> b!5291862 m!6329366))

(assert (=> b!5291859 m!6329362))

(declare-fun m!6329368 () Bool)

(assert (=> b!5291867 m!6329368))

(assert (=> b!5291083 d!1702410))

(declare-fun d!1702412 () Bool)

(assert (=> d!1702412 (= (matchR!7110 lt!2162131 s!2326) (matchZipper!1169 lt!2162142 s!2326))))

(declare-fun lt!2162294 () Unit!153218)

(declare-fun choose!39516 ((InoxSet Context!8618) List!61076 Regex!14925 List!61074) Unit!153218)

(assert (=> d!1702412 (= lt!2162294 (choose!39516 lt!2162142 lt!2162137 lt!2162131 s!2326))))

(assert (=> d!1702412 (validRegex!6661 lt!2162131)))

(assert (=> d!1702412 (= (theoremZipperRegexEquiv!335 lt!2162142 lt!2162137 lt!2162131 s!2326) lt!2162294)))

(declare-fun bs!1227382 () Bool)

(assert (= bs!1227382 d!1702412))

(assert (=> bs!1227382 m!6328654))

(assert (=> bs!1227382 m!6328626))

(declare-fun m!6329370 () Bool)

(assert (=> bs!1227382 m!6329370))

(assert (=> bs!1227382 m!6329356))

(assert (=> b!5291083 d!1702412))

(declare-fun d!1702414 () Bool)

(declare-fun c!918059 () Bool)

(assert (=> d!1702414 (= c!918059 (isEmpty!32908 s!2326))))

(declare-fun e!3289723 () Bool)

(assert (=> d!1702414 (= (matchZipper!1169 lt!2162117 s!2326) e!3289723)))

(declare-fun b!5291871 () Bool)

(assert (=> b!5291871 (= e!3289723 (nullableZipper!1310 lt!2162117))))

(declare-fun b!5291872 () Bool)

(assert (=> b!5291872 (= e!3289723 (matchZipper!1169 (derivationStepZipper!1168 lt!2162117 (head!11338 s!2326)) (tail!10435 s!2326)))))

(assert (= (and d!1702414 c!918059) b!5291871))

(assert (= (and d!1702414 (not c!918059)) b!5291872))

(assert (=> d!1702414 m!6329314))

(declare-fun m!6329372 () Bool)

(assert (=> b!5291871 m!6329372))

(assert (=> b!5291872 m!6329362))

(assert (=> b!5291872 m!6329362))

(declare-fun m!6329374 () Bool)

(assert (=> b!5291872 m!6329374))

(assert (=> b!5291872 m!6329358))

(assert (=> b!5291872 m!6329374))

(assert (=> b!5291872 m!6329358))

(declare-fun m!6329376 () Bool)

(assert (=> b!5291872 m!6329376))

(assert (=> b!5291083 d!1702414))

(declare-fun d!1702416 () Bool)

(assert (=> d!1702416 (= (matchR!7110 lt!2162145 s!2326) (matchRSpec!2028 lt!2162145 s!2326))))

(declare-fun lt!2162297 () Unit!153218)

(declare-fun choose!39517 (Regex!14925 List!61074) Unit!153218)

(assert (=> d!1702416 (= lt!2162297 (choose!39517 lt!2162145 s!2326))))

(assert (=> d!1702416 (validRegex!6661 lt!2162145)))

(assert (=> d!1702416 (= (mainMatchTheorem!2028 lt!2162145 s!2326) lt!2162297)))

(declare-fun bs!1227383 () Bool)

(assert (= bs!1227383 d!1702416))

(assert (=> bs!1227383 m!6328642))

(assert (=> bs!1227383 m!6328672))

(declare-fun m!6329378 () Bool)

(assert (=> bs!1227383 m!6329378))

(declare-fun m!6329380 () Bool)

(assert (=> bs!1227383 m!6329380))

(assert (=> b!5291083 d!1702416))

(declare-fun bs!1227384 () Bool)

(declare-fun b!5291876 () Bool)

(assert (= bs!1227384 (and b!5291876 b!5291083)))

(declare-fun lambda!267999 () Int)

(assert (=> bs!1227384 (not (= lambda!267999 lambda!267906))))

(assert (=> bs!1227384 (not (= lambda!267999 lambda!267907))))

(declare-fun bs!1227385 () Bool)

(assert (= bs!1227385 (and b!5291876 b!5291781)))

(assert (=> bs!1227385 (= (and (= (reg!15254 lt!2162145) (reg!15254 lt!2162131)) (= lt!2162145 lt!2162131)) (= lambda!267999 lambda!267993))))

(declare-fun bs!1227386 () Bool)

(assert (= bs!1227386 (and b!5291876 d!1702296)))

(assert (=> bs!1227386 (not (= lambda!267999 lambda!267965))))

(declare-fun bs!1227387 () Bool)

(assert (= bs!1227387 (and b!5291876 b!5291098)))

(assert (=> bs!1227387 (not (= lambda!267999 lambda!267903))))

(assert (=> bs!1227386 (not (= lambda!267999 lambda!267964))))

(declare-fun bs!1227388 () Bool)

(assert (= bs!1227388 (and b!5291876 b!5291786)))

(assert (=> bs!1227388 (not (= lambda!267999 lambda!267994))))

(assert (=> bs!1227387 (not (= lambda!267999 lambda!267904))))

(declare-fun bs!1227389 () Bool)

(assert (= bs!1227389 (and b!5291876 d!1702280)))

(assert (=> bs!1227389 (not (= lambda!267999 lambda!267953))))

(assert (=> bs!1227384 (not (= lambda!267999 lambda!267908))))

(assert (=> b!5291876 true))

(assert (=> b!5291876 true))

(declare-fun bs!1227390 () Bool)

(declare-fun b!5291881 () Bool)

(assert (= bs!1227390 (and b!5291881 b!5291083)))

(declare-fun lambda!268000 () Int)

(assert (=> bs!1227390 (not (= lambda!268000 lambda!267906))))

(assert (=> bs!1227390 (= (and (= (regOne!30362 lt!2162145) (regOne!30362 (regOne!30362 r!7292))) (= (regTwo!30362 lt!2162145) lt!2162145)) (= lambda!268000 lambda!267907))))

(declare-fun bs!1227391 () Bool)

(assert (= bs!1227391 (and b!5291881 b!5291781)))

(assert (=> bs!1227391 (not (= lambda!268000 lambda!267993))))

(declare-fun bs!1227392 () Bool)

(assert (= bs!1227392 (and b!5291881 d!1702296)))

(assert (=> bs!1227392 (= (and (= (regOne!30362 lt!2162145) (regOne!30362 r!7292)) (= (regTwo!30362 lt!2162145) (regTwo!30362 r!7292))) (= lambda!268000 lambda!267965))))

(declare-fun bs!1227393 () Bool)

(assert (= bs!1227393 (and b!5291881 b!5291876)))

(assert (=> bs!1227393 (not (= lambda!268000 lambda!267999))))

(declare-fun bs!1227394 () Bool)

(assert (= bs!1227394 (and b!5291881 b!5291098)))

(assert (=> bs!1227394 (not (= lambda!268000 lambda!267903))))

(assert (=> bs!1227392 (not (= lambda!268000 lambda!267964))))

(declare-fun bs!1227395 () Bool)

(assert (= bs!1227395 (and b!5291881 b!5291786)))

(assert (=> bs!1227395 (= (and (= (regOne!30362 lt!2162145) (regOne!30362 lt!2162131)) (= (regTwo!30362 lt!2162145) (regTwo!30362 lt!2162131))) (= lambda!268000 lambda!267994))))

(assert (=> bs!1227394 (= (and (= (regOne!30362 lt!2162145) (regOne!30362 r!7292)) (= (regTwo!30362 lt!2162145) (regTwo!30362 r!7292))) (= lambda!268000 lambda!267904))))

(declare-fun bs!1227396 () Bool)

(assert (= bs!1227396 (and b!5291881 d!1702280)))

(assert (=> bs!1227396 (not (= lambda!268000 lambda!267953))))

(assert (=> bs!1227390 (not (= lambda!268000 lambda!267908))))

(assert (=> b!5291881 true))

(assert (=> b!5291881 true))

(declare-fun b!5291873 () Bool)

(declare-fun c!918061 () Bool)

(assert (=> b!5291873 (= c!918061 ((_ is Union!14925) lt!2162145))))

(declare-fun e!3289726 () Bool)

(declare-fun e!3289725 () Bool)

(assert (=> b!5291873 (= e!3289726 e!3289725)))

(declare-fun b!5291874 () Bool)

(declare-fun res!2244351 () Bool)

(declare-fun e!3289728 () Bool)

(assert (=> b!5291874 (=> res!2244351 e!3289728)))

(declare-fun call!377137 () Bool)

(assert (=> b!5291874 (= res!2244351 call!377137)))

(declare-fun e!3289724 () Bool)

(assert (=> b!5291874 (= e!3289724 e!3289728)))

(declare-fun d!1702418 () Bool)

(declare-fun c!918062 () Bool)

(assert (=> d!1702418 (= c!918062 ((_ is EmptyExpr!14925) lt!2162145))))

(declare-fun e!3289730 () Bool)

(assert (=> d!1702418 (= (matchRSpec!2028 lt!2162145 s!2326) e!3289730)))

(declare-fun b!5291875 () Bool)

(declare-fun e!3289727 () Bool)

(assert (=> b!5291875 (= e!3289730 e!3289727)))

(declare-fun res!2244349 () Bool)

(assert (=> b!5291875 (= res!2244349 (not ((_ is EmptyLang!14925) lt!2162145)))))

(assert (=> b!5291875 (=> (not res!2244349) (not e!3289727))))

(declare-fun call!377136 () Bool)

(assert (=> b!5291876 (= e!3289728 call!377136)))

(declare-fun b!5291877 () Bool)

(assert (=> b!5291877 (= e!3289725 e!3289724)))

(declare-fun c!918060 () Bool)

(assert (=> b!5291877 (= c!918060 ((_ is Star!14925) lt!2162145))))

(declare-fun b!5291878 () Bool)

(assert (=> b!5291878 (= e!3289726 (= s!2326 (Cons!60950 (c!917825 lt!2162145) Nil!60950)))))

(declare-fun bm!377131 () Bool)

(assert (=> bm!377131 (= call!377136 (Exists!2106 (ite c!918060 lambda!267999 lambda!268000)))))

(declare-fun b!5291879 () Bool)

(assert (=> b!5291879 (= e!3289730 call!377137)))

(declare-fun b!5291880 () Bool)

(declare-fun e!3289729 () Bool)

(assert (=> b!5291880 (= e!3289729 (matchRSpec!2028 (regTwo!30363 lt!2162145) s!2326))))

(assert (=> b!5291881 (= e!3289724 call!377136)))

(declare-fun b!5291882 () Bool)

(declare-fun c!918063 () Bool)

(assert (=> b!5291882 (= c!918063 ((_ is ElementMatch!14925) lt!2162145))))

(assert (=> b!5291882 (= e!3289727 e!3289726)))

(declare-fun bm!377132 () Bool)

(assert (=> bm!377132 (= call!377137 (isEmpty!32908 s!2326))))

(declare-fun b!5291883 () Bool)

(assert (=> b!5291883 (= e!3289725 e!3289729)))

(declare-fun res!2244350 () Bool)

(assert (=> b!5291883 (= res!2244350 (matchRSpec!2028 (regOne!30363 lt!2162145) s!2326))))

(assert (=> b!5291883 (=> res!2244350 e!3289729)))

(assert (= (and d!1702418 c!918062) b!5291879))

(assert (= (and d!1702418 (not c!918062)) b!5291875))

(assert (= (and b!5291875 res!2244349) b!5291882))

(assert (= (and b!5291882 c!918063) b!5291878))

(assert (= (and b!5291882 (not c!918063)) b!5291873))

(assert (= (and b!5291873 c!918061) b!5291883))

(assert (= (and b!5291873 (not c!918061)) b!5291877))

(assert (= (and b!5291883 (not res!2244350)) b!5291880))

(assert (= (and b!5291877 c!918060) b!5291874))

(assert (= (and b!5291877 (not c!918060)) b!5291881))

(assert (= (and b!5291874 (not res!2244351)) b!5291876))

(assert (= (or b!5291876 b!5291881) bm!377131))

(assert (= (or b!5291879 b!5291874) bm!377132))

(declare-fun m!6329382 () Bool)

(assert (=> bm!377131 m!6329382))

(declare-fun m!6329384 () Bool)

(assert (=> b!5291880 m!6329384))

(assert (=> bm!377132 m!6329314))

(declare-fun m!6329386 () Bool)

(assert (=> b!5291883 m!6329386))

(assert (=> b!5291083 d!1702418))

(declare-fun bs!1227397 () Bool)

(declare-fun d!1702420 () Bool)

(assert (= bs!1227397 (and d!1702420 b!5291083)))

(declare-fun lambda!268001 () Int)

(assert (=> bs!1227397 (= lambda!268001 lambda!267909)))

(declare-fun bs!1227398 () Bool)

(assert (= bs!1227398 (and d!1702420 d!1702406)))

(assert (=> bs!1227398 (= lambda!268001 lambda!267997)))

(declare-fun bs!1227399 () Bool)

(assert (= bs!1227399 (and d!1702420 d!1702408)))

(assert (=> bs!1227399 (= lambda!268001 lambda!267998)))

(declare-fun b!5291884 () Bool)

(declare-fun e!3289736 () Regex!14925)

(assert (=> b!5291884 (= e!3289736 (h!67399 lt!2162127))))

(declare-fun b!5291885 () Bool)

(declare-fun e!3289734 () Bool)

(declare-fun e!3289732 () Bool)

(assert (=> b!5291885 (= e!3289734 e!3289732)))

(declare-fun c!918065 () Bool)

(assert (=> b!5291885 (= c!918065 (isEmpty!32904 (tail!10436 lt!2162127)))))

(declare-fun b!5291886 () Bool)

(declare-fun e!3289731 () Bool)

(assert (=> b!5291886 (= e!3289731 e!3289734)))

(declare-fun c!918066 () Bool)

(assert (=> b!5291886 (= c!918066 (isEmpty!32904 lt!2162127))))

(assert (=> d!1702420 e!3289731))

(declare-fun res!2244352 () Bool)

(assert (=> d!1702420 (=> (not res!2244352) (not e!3289731))))

(declare-fun lt!2162298 () Regex!14925)

(assert (=> d!1702420 (= res!2244352 (validRegex!6661 lt!2162298))))

(assert (=> d!1702420 (= lt!2162298 e!3289736)))

(declare-fun c!918064 () Bool)

(declare-fun e!3289733 () Bool)

(assert (=> d!1702420 (= c!918064 e!3289733)))

(declare-fun res!2244353 () Bool)

(assert (=> d!1702420 (=> (not res!2244353) (not e!3289733))))

(assert (=> d!1702420 (= res!2244353 ((_ is Cons!60951) lt!2162127))))

(assert (=> d!1702420 (forall!14333 lt!2162127 lambda!268001)))

(assert (=> d!1702420 (= (generalisedConcat!594 lt!2162127) lt!2162298)))

(declare-fun b!5291887 () Bool)

(declare-fun e!3289735 () Regex!14925)

(assert (=> b!5291887 (= e!3289735 EmptyExpr!14925)))

(declare-fun b!5291888 () Bool)

(assert (=> b!5291888 (= e!3289736 e!3289735)))

(declare-fun c!918067 () Bool)

(assert (=> b!5291888 (= c!918067 ((_ is Cons!60951) lt!2162127))))

(declare-fun b!5291889 () Bool)

(assert (=> b!5291889 (= e!3289732 (= lt!2162298 (head!11339 lt!2162127)))))

(declare-fun b!5291890 () Bool)

(assert (=> b!5291890 (= e!3289735 (Concat!23770 (h!67399 lt!2162127) (generalisedConcat!594 (t!374280 lt!2162127))))))

(declare-fun b!5291891 () Bool)

(assert (=> b!5291891 (= e!3289734 (isEmptyExpr!845 lt!2162298))))

(declare-fun b!5291892 () Bool)

(assert (=> b!5291892 (= e!3289732 (isConcat!368 lt!2162298))))

(declare-fun b!5291893 () Bool)

(assert (=> b!5291893 (= e!3289733 (isEmpty!32904 (t!374280 lt!2162127)))))

(assert (= (and d!1702420 res!2244353) b!5291893))

(assert (= (and d!1702420 c!918064) b!5291884))

(assert (= (and d!1702420 (not c!918064)) b!5291888))

(assert (= (and b!5291888 c!918067) b!5291890))

(assert (= (and b!5291888 (not c!918067)) b!5291887))

(assert (= (and d!1702420 res!2244352) b!5291886))

(assert (= (and b!5291886 c!918066) b!5291891))

(assert (= (and b!5291886 (not c!918066)) b!5291885))

(assert (= (and b!5291885 c!918065) b!5291889))

(assert (= (and b!5291885 (not c!918065)) b!5291892))

(declare-fun m!6329388 () Bool)

(assert (=> b!5291892 m!6329388))

(declare-fun m!6329390 () Bool)

(assert (=> b!5291889 m!6329390))

(declare-fun m!6329392 () Bool)

(assert (=> b!5291890 m!6329392))

(declare-fun m!6329394 () Bool)

(assert (=> b!5291885 m!6329394))

(assert (=> b!5291885 m!6329394))

(declare-fun m!6329396 () Bool)

(assert (=> b!5291885 m!6329396))

(declare-fun m!6329398 () Bool)

(assert (=> b!5291886 m!6329398))

(declare-fun m!6329400 () Bool)

(assert (=> b!5291893 m!6329400))

(declare-fun m!6329402 () Bool)

(assert (=> d!1702420 m!6329402))

(declare-fun m!6329404 () Bool)

(assert (=> d!1702420 m!6329404))

(declare-fun m!6329406 () Bool)

(assert (=> b!5291891 m!6329406))

(assert (=> b!5291083 d!1702420))

(declare-fun d!1702422 () Bool)

(assert (=> d!1702422 (= (Exists!2106 lambda!267906) (choose!39509 lambda!267906))))

(declare-fun bs!1227400 () Bool)

(assert (= bs!1227400 d!1702422))

(declare-fun m!6329408 () Bool)

(assert (=> bs!1227400 m!6329408))

(assert (=> b!5291083 d!1702422))

(declare-fun d!1702424 () Bool)

(declare-fun c!918068 () Bool)

(assert (=> d!1702424 (= c!918068 (isEmpty!32908 s!2326))))

(declare-fun e!3289737 () Bool)

(assert (=> d!1702424 (= (matchZipper!1169 lt!2162142 s!2326) e!3289737)))

(declare-fun b!5291894 () Bool)

(assert (=> b!5291894 (= e!3289737 (nullableZipper!1310 lt!2162142))))

(declare-fun b!5291895 () Bool)

(assert (=> b!5291895 (= e!3289737 (matchZipper!1169 (derivationStepZipper!1168 lt!2162142 (head!11338 s!2326)) (tail!10435 s!2326)))))

(assert (= (and d!1702424 c!918068) b!5291894))

(assert (= (and d!1702424 (not c!918068)) b!5291895))

(assert (=> d!1702424 m!6329314))

(declare-fun m!6329410 () Bool)

(assert (=> b!5291894 m!6329410))

(assert (=> b!5291895 m!6329362))

(assert (=> b!5291895 m!6329362))

(declare-fun m!6329412 () Bool)

(assert (=> b!5291895 m!6329412))

(assert (=> b!5291895 m!6329358))

(assert (=> b!5291895 m!6329412))

(assert (=> b!5291895 m!6329358))

(declare-fun m!6329414 () Bool)

(assert (=> b!5291895 m!6329414))

(assert (=> b!5291083 d!1702424))

(declare-fun b!5291896 () Bool)

(declare-fun e!3289742 () Bool)

(assert (=> b!5291896 (= e!3289742 (not (= (head!11338 s!2326) (c!917825 lt!2162145))))))

(declare-fun b!5291897 () Bool)

(declare-fun e!3289741 () Bool)

(declare-fun e!3289740 () Bool)

(assert (=> b!5291897 (= e!3289741 e!3289740)))

(declare-fun res!2244356 () Bool)

(assert (=> b!5291897 (=> (not res!2244356) (not e!3289740))))

(declare-fun lt!2162299 () Bool)

(assert (=> b!5291897 (= res!2244356 (not lt!2162299))))

(declare-fun b!5291898 () Bool)

(declare-fun e!3289738 () Bool)

(assert (=> b!5291898 (= e!3289738 (= (head!11338 s!2326) (c!917825 lt!2162145)))))

(declare-fun b!5291899 () Bool)

(declare-fun e!3289744 () Bool)

(assert (=> b!5291899 (= e!3289744 (not lt!2162299))))

(declare-fun d!1702426 () Bool)

(declare-fun e!3289739 () Bool)

(assert (=> d!1702426 e!3289739))

(declare-fun c!918070 () Bool)

(assert (=> d!1702426 (= c!918070 ((_ is EmptyExpr!14925) lt!2162145))))

(declare-fun e!3289743 () Bool)

(assert (=> d!1702426 (= lt!2162299 e!3289743)))

(declare-fun c!918069 () Bool)

(assert (=> d!1702426 (= c!918069 (isEmpty!32908 s!2326))))

(assert (=> d!1702426 (validRegex!6661 lt!2162145)))

(assert (=> d!1702426 (= (matchR!7110 lt!2162145 s!2326) lt!2162299)))

(declare-fun bm!377133 () Bool)

(declare-fun call!377138 () Bool)

(assert (=> bm!377133 (= call!377138 (isEmpty!32908 s!2326))))

(declare-fun b!5291900 () Bool)

(declare-fun res!2244359 () Bool)

(assert (=> b!5291900 (=> (not res!2244359) (not e!3289738))))

(assert (=> b!5291900 (= res!2244359 (not call!377138))))

(declare-fun b!5291901 () Bool)

(assert (=> b!5291901 (= e!3289743 (matchR!7110 (derivativeStep!4131 lt!2162145 (head!11338 s!2326)) (tail!10435 s!2326)))))

(declare-fun b!5291902 () Bool)

(declare-fun res!2244354 () Bool)

(assert (=> b!5291902 (=> res!2244354 e!3289741)))

(assert (=> b!5291902 (= res!2244354 (not ((_ is ElementMatch!14925) lt!2162145)))))

(assert (=> b!5291902 (= e!3289744 e!3289741)))

(declare-fun b!5291903 () Bool)

(declare-fun res!2244355 () Bool)

(assert (=> b!5291903 (=> res!2244355 e!3289741)))

(assert (=> b!5291903 (= res!2244355 e!3289738)))

(declare-fun res!2244357 () Bool)

(assert (=> b!5291903 (=> (not res!2244357) (not e!3289738))))

(assert (=> b!5291903 (= res!2244357 lt!2162299)))

(declare-fun b!5291904 () Bool)

(assert (=> b!5291904 (= e!3289739 (= lt!2162299 call!377138))))

(declare-fun b!5291905 () Bool)

(declare-fun res!2244361 () Bool)

(assert (=> b!5291905 (=> (not res!2244361) (not e!3289738))))

(assert (=> b!5291905 (= res!2244361 (isEmpty!32908 (tail!10435 s!2326)))))

(declare-fun b!5291906 () Bool)

(assert (=> b!5291906 (= e!3289743 (nullable!5094 lt!2162145))))

(declare-fun b!5291907 () Bool)

(assert (=> b!5291907 (= e!3289739 e!3289744)))

(declare-fun c!918071 () Bool)

(assert (=> b!5291907 (= c!918071 ((_ is EmptyLang!14925) lt!2162145))))

(declare-fun b!5291908 () Bool)

(assert (=> b!5291908 (= e!3289740 e!3289742)))

(declare-fun res!2244360 () Bool)

(assert (=> b!5291908 (=> res!2244360 e!3289742)))

(assert (=> b!5291908 (= res!2244360 call!377138)))

(declare-fun b!5291909 () Bool)

(declare-fun res!2244358 () Bool)

(assert (=> b!5291909 (=> res!2244358 e!3289742)))

(assert (=> b!5291909 (= res!2244358 (not (isEmpty!32908 (tail!10435 s!2326))))))

(assert (= (and d!1702426 c!918069) b!5291906))

(assert (= (and d!1702426 (not c!918069)) b!5291901))

(assert (= (and d!1702426 c!918070) b!5291904))

(assert (= (and d!1702426 (not c!918070)) b!5291907))

(assert (= (and b!5291907 c!918071) b!5291899))

(assert (= (and b!5291907 (not c!918071)) b!5291902))

(assert (= (and b!5291902 (not res!2244354)) b!5291903))

(assert (= (and b!5291903 res!2244357) b!5291900))

(assert (= (and b!5291900 res!2244359) b!5291905))

(assert (= (and b!5291905 res!2244361) b!5291898))

(assert (= (and b!5291903 (not res!2244355)) b!5291897))

(assert (= (and b!5291897 res!2244356) b!5291908))

(assert (= (and b!5291908 (not res!2244360)) b!5291909))

(assert (= (and b!5291909 (not res!2244358)) b!5291896))

(assert (= (or b!5291904 b!5291900 b!5291908) bm!377133))

(assert (=> bm!377133 m!6329314))

(assert (=> d!1702426 m!6329314))

(assert (=> d!1702426 m!6329380))

(assert (=> b!5291909 m!6329358))

(assert (=> b!5291909 m!6329358))

(assert (=> b!5291909 m!6329360))

(assert (=> b!5291896 m!6329362))

(assert (=> b!5291905 m!6329358))

(assert (=> b!5291905 m!6329358))

(assert (=> b!5291905 m!6329360))

(assert (=> b!5291901 m!6329362))

(assert (=> b!5291901 m!6329362))

(declare-fun m!6329416 () Bool)

(assert (=> b!5291901 m!6329416))

(assert (=> b!5291901 m!6329358))

(assert (=> b!5291901 m!6329416))

(assert (=> b!5291901 m!6329358))

(declare-fun m!6329418 () Bool)

(assert (=> b!5291901 m!6329418))

(assert (=> b!5291898 m!6329362))

(declare-fun m!6329420 () Bool)

(assert (=> b!5291906 m!6329420))

(assert (=> b!5291083 d!1702426))

(declare-fun d!1702428 () Bool)

(assert (=> d!1702428 (= (matchR!7110 lt!2162145 s!2326) (matchZipper!1169 lt!2162117 s!2326))))

(declare-fun lt!2162300 () Unit!153218)

(assert (=> d!1702428 (= lt!2162300 (choose!39516 lt!2162117 (Cons!60952 lt!2162119 Nil!60952) lt!2162145 s!2326))))

(assert (=> d!1702428 (validRegex!6661 lt!2162145)))

(assert (=> d!1702428 (= (theoremZipperRegexEquiv!335 lt!2162117 (Cons!60952 lt!2162119 Nil!60952) lt!2162145 s!2326) lt!2162300)))

(declare-fun bs!1227401 () Bool)

(assert (= bs!1227401 d!1702428))

(assert (=> bs!1227401 m!6328642))

(assert (=> bs!1227401 m!6328670))

(declare-fun m!6329422 () Bool)

(assert (=> bs!1227401 m!6329422))

(assert (=> bs!1227401 m!6329380))

(assert (=> b!5291083 d!1702428))

(declare-fun d!1702430 () Bool)

(declare-fun e!3289747 () Bool)

(assert (=> d!1702430 e!3289747))

(declare-fun res!2244362 () Bool)

(assert (=> d!1702430 (=> res!2244362 e!3289747)))

(declare-fun e!3289749 () Bool)

(assert (=> d!1702430 (= res!2244362 e!3289749)))

(declare-fun res!2244366 () Bool)

(assert (=> d!1702430 (=> (not res!2244366) (not e!3289749))))

(declare-fun lt!2162301 () Option!15036)

(assert (=> d!1702430 (= res!2244366 (isDefined!11739 lt!2162301))))

(declare-fun e!3289748 () Option!15036)

(assert (=> d!1702430 (= lt!2162301 e!3289748)))

(declare-fun c!918072 () Bool)

(declare-fun e!3289745 () Bool)

(assert (=> d!1702430 (= c!918072 e!3289745)))

(declare-fun res!2244363 () Bool)

(assert (=> d!1702430 (=> (not res!2244363) (not e!3289745))))

(assert (=> d!1702430 (= res!2244363 (matchR!7110 (regOne!30362 (regOne!30362 r!7292)) Nil!60950))))

(assert (=> d!1702430 (validRegex!6661 (regOne!30362 (regOne!30362 r!7292)))))

(assert (=> d!1702430 (= (findConcatSeparation!1450 (regOne!30362 (regOne!30362 r!7292)) lt!2162145 Nil!60950 s!2326 s!2326) lt!2162301)))

(declare-fun b!5291910 () Bool)

(declare-fun e!3289746 () Option!15036)

(assert (=> b!5291910 (= e!3289746 None!15035)))

(declare-fun b!5291911 () Bool)

(declare-fun res!2244365 () Bool)

(assert (=> b!5291911 (=> (not res!2244365) (not e!3289749))))

(assert (=> b!5291911 (= res!2244365 (matchR!7110 lt!2162145 (_2!35427 (get!20958 lt!2162301))))))

(declare-fun b!5291912 () Bool)

(assert (=> b!5291912 (= e!3289749 (= (++!13290 (_1!35427 (get!20958 lt!2162301)) (_2!35427 (get!20958 lt!2162301))) s!2326))))

(declare-fun b!5291913 () Bool)

(assert (=> b!5291913 (= e!3289748 e!3289746)))

(declare-fun c!918073 () Bool)

(assert (=> b!5291913 (= c!918073 ((_ is Nil!60950) s!2326))))

(declare-fun b!5291914 () Bool)

(assert (=> b!5291914 (= e!3289747 (not (isDefined!11739 lt!2162301)))))

(declare-fun b!5291915 () Bool)

(assert (=> b!5291915 (= e!3289745 (matchR!7110 lt!2162145 s!2326))))

(declare-fun b!5291916 () Bool)

(declare-fun lt!2162303 () Unit!153218)

(declare-fun lt!2162302 () Unit!153218)

(assert (=> b!5291916 (= lt!2162303 lt!2162302)))

(assert (=> b!5291916 (= (++!13290 (++!13290 Nil!60950 (Cons!60950 (h!67398 s!2326) Nil!60950)) (t!374279 s!2326)) s!2326)))

(assert (=> b!5291916 (= lt!2162302 (lemmaMoveElementToOtherListKeepsConcatEq!1705 Nil!60950 (h!67398 s!2326) (t!374279 s!2326) s!2326))))

(assert (=> b!5291916 (= e!3289746 (findConcatSeparation!1450 (regOne!30362 (regOne!30362 r!7292)) lt!2162145 (++!13290 Nil!60950 (Cons!60950 (h!67398 s!2326) Nil!60950)) (t!374279 s!2326) s!2326))))

(declare-fun b!5291917 () Bool)

(declare-fun res!2244364 () Bool)

(assert (=> b!5291917 (=> (not res!2244364) (not e!3289749))))

(assert (=> b!5291917 (= res!2244364 (matchR!7110 (regOne!30362 (regOne!30362 r!7292)) (_1!35427 (get!20958 lt!2162301))))))

(declare-fun b!5291918 () Bool)

(assert (=> b!5291918 (= e!3289748 (Some!15035 (tuple2!64249 Nil!60950 s!2326)))))

(assert (= (and d!1702430 res!2244363) b!5291915))

(assert (= (and d!1702430 c!918072) b!5291918))

(assert (= (and d!1702430 (not c!918072)) b!5291913))

(assert (= (and b!5291913 c!918073) b!5291910))

(assert (= (and b!5291913 (not c!918073)) b!5291916))

(assert (= (and d!1702430 res!2244366) b!5291917))

(assert (= (and b!5291917 res!2244364) b!5291911))

(assert (= (and b!5291911 res!2244365) b!5291912))

(assert (= (and d!1702430 (not res!2244362)) b!5291914))

(declare-fun m!6329424 () Bool)

(assert (=> b!5291917 m!6329424))

(declare-fun m!6329426 () Bool)

(assert (=> b!5291917 m!6329426))

(assert (=> b!5291915 m!6328642))

(assert (=> b!5291911 m!6329424))

(declare-fun m!6329428 () Bool)

(assert (=> b!5291911 m!6329428))

(declare-fun m!6329430 () Bool)

(assert (=> d!1702430 m!6329430))

(declare-fun m!6329432 () Bool)

(assert (=> d!1702430 m!6329432))

(declare-fun m!6329434 () Bool)

(assert (=> d!1702430 m!6329434))

(assert (=> b!5291914 m!6329430))

(assert (=> b!5291916 m!6328928))

(assert (=> b!5291916 m!6328928))

(assert (=> b!5291916 m!6328940))

(assert (=> b!5291916 m!6328942))

(assert (=> b!5291916 m!6328928))

(declare-fun m!6329436 () Bool)

(assert (=> b!5291916 m!6329436))

(assert (=> b!5291912 m!6329424))

(declare-fun m!6329438 () Bool)

(assert (=> b!5291912 m!6329438))

(assert (=> b!5291083 d!1702430))

(declare-fun d!1702432 () Bool)

(assert (=> d!1702432 (= (Exists!2106 lambda!267907) (choose!39509 lambda!267907))))

(declare-fun bs!1227402 () Bool)

(assert (= bs!1227402 d!1702432))

(declare-fun m!6329440 () Bool)

(assert (=> bs!1227402 m!6329440))

(assert (=> b!5291083 d!1702432))

(declare-fun d!1702434 () Bool)

(assert (=> d!1702434 (= (matchR!7110 lt!2162131 s!2326) (matchRSpec!2028 lt!2162131 s!2326))))

(declare-fun lt!2162304 () Unit!153218)

(assert (=> d!1702434 (= lt!2162304 (choose!39517 lt!2162131 s!2326))))

(assert (=> d!1702434 (validRegex!6661 lt!2162131)))

(assert (=> d!1702434 (= (mainMatchTheorem!2028 lt!2162131 s!2326) lt!2162304)))

(declare-fun bs!1227403 () Bool)

(assert (= bs!1227403 d!1702434))

(assert (=> bs!1227403 m!6328654))

(assert (=> bs!1227403 m!6328656))

(declare-fun m!6329442 () Bool)

(assert (=> bs!1227403 m!6329442))

(assert (=> bs!1227403 m!6329356))

(assert (=> b!5291083 d!1702434))

(declare-fun d!1702436 () Bool)

(assert (=> d!1702436 (= (Exists!2106 lambda!267908) (choose!39509 lambda!267908))))

(declare-fun bs!1227404 () Bool)

(assert (= bs!1227404 d!1702436))

(declare-fun m!6329444 () Bool)

(assert (=> bs!1227404 m!6329444))

(assert (=> b!5291083 d!1702436))

(declare-fun d!1702438 () Bool)

(assert (=> d!1702438 (= (isDefined!11739 (findConcatSeparation!1450 (regOne!30362 (regOne!30362 r!7292)) lt!2162145 Nil!60950 s!2326 s!2326)) (not (isEmpty!32907 (findConcatSeparation!1450 (regOne!30362 (regOne!30362 r!7292)) lt!2162145 Nil!60950 s!2326 s!2326))))))

(declare-fun bs!1227405 () Bool)

(assert (= bs!1227405 d!1702438))

(assert (=> bs!1227405 m!6328634))

(declare-fun m!6329446 () Bool)

(assert (=> bs!1227405 m!6329446))

(assert (=> b!5291083 d!1702438))

(declare-fun bs!1227406 () Bool)

(declare-fun d!1702440 () Bool)

(assert (= bs!1227406 (and d!1702440 b!5291083)))

(declare-fun lambda!268002 () Int)

(assert (=> bs!1227406 (= lambda!268002 lambda!267906)))

(assert (=> bs!1227406 (not (= lambda!268002 lambda!267907))))

(declare-fun bs!1227407 () Bool)

(assert (= bs!1227407 (and d!1702440 b!5291781)))

(assert (=> bs!1227407 (not (= lambda!268002 lambda!267993))))

(declare-fun bs!1227408 () Bool)

(assert (= bs!1227408 (and d!1702440 d!1702296)))

(assert (=> bs!1227408 (not (= lambda!268002 lambda!267965))))

(declare-fun bs!1227409 () Bool)

(assert (= bs!1227409 (and d!1702440 b!5291881)))

(assert (=> bs!1227409 (not (= lambda!268002 lambda!268000))))

(declare-fun bs!1227410 () Bool)

(assert (= bs!1227410 (and d!1702440 b!5291876)))

(assert (=> bs!1227410 (not (= lambda!268002 lambda!267999))))

(declare-fun bs!1227411 () Bool)

(assert (= bs!1227411 (and d!1702440 b!5291098)))

(assert (=> bs!1227411 (= (and (= (regOne!30362 (regOne!30362 r!7292)) (regOne!30362 r!7292)) (= lt!2162145 (regTwo!30362 r!7292))) (= lambda!268002 lambda!267903))))

(assert (=> bs!1227408 (= (and (= (regOne!30362 (regOne!30362 r!7292)) (regOne!30362 r!7292)) (= lt!2162145 (regTwo!30362 r!7292))) (= lambda!268002 lambda!267964))))

(declare-fun bs!1227412 () Bool)

(assert (= bs!1227412 (and d!1702440 b!5291786)))

(assert (=> bs!1227412 (not (= lambda!268002 lambda!267994))))

(assert (=> bs!1227411 (not (= lambda!268002 lambda!267904))))

(declare-fun bs!1227413 () Bool)

(assert (= bs!1227413 (and d!1702440 d!1702280)))

(assert (=> bs!1227413 (= (and (= (regOne!30362 (regOne!30362 r!7292)) (regOne!30362 r!7292)) (= lt!2162145 (regTwo!30362 r!7292))) (= lambda!268002 lambda!267953))))

(assert (=> bs!1227406 (= (and (= (regOne!30362 (regOne!30362 r!7292)) (regTwo!30362 (regOne!30362 r!7292))) (= lt!2162145 lt!2162114)) (= lambda!268002 lambda!267908))))

(assert (=> d!1702440 true))

(assert (=> d!1702440 true))

(assert (=> d!1702440 true))

(assert (=> d!1702440 (= (isDefined!11739 (findConcatSeparation!1450 (regOne!30362 (regOne!30362 r!7292)) lt!2162145 Nil!60950 s!2326 s!2326)) (Exists!2106 lambda!268002))))

(declare-fun lt!2162305 () Unit!153218)

(assert (=> d!1702440 (= lt!2162305 (choose!39510 (regOne!30362 (regOne!30362 r!7292)) lt!2162145 s!2326))))

(assert (=> d!1702440 (validRegex!6661 (regOne!30362 (regOne!30362 r!7292)))))

(assert (=> d!1702440 (= (lemmaFindConcatSeparationEquivalentToExists!1214 (regOne!30362 (regOne!30362 r!7292)) lt!2162145 s!2326) lt!2162305)))

(declare-fun bs!1227414 () Bool)

(assert (= bs!1227414 d!1702440))

(declare-fun m!6329448 () Bool)

(assert (=> bs!1227414 m!6329448))

(assert (=> bs!1227414 m!6328634))

(declare-fun m!6329450 () Bool)

(assert (=> bs!1227414 m!6329450))

(assert (=> bs!1227414 m!6328634))

(assert (=> bs!1227414 m!6328652))

(assert (=> bs!1227414 m!6329434))

(assert (=> b!5291083 d!1702440))

(declare-fun d!1702442 () Bool)

(declare-fun e!3289752 () Bool)

(assert (=> d!1702442 e!3289752))

(declare-fun res!2244367 () Bool)

(assert (=> d!1702442 (=> res!2244367 e!3289752)))

(declare-fun e!3289754 () Bool)

(assert (=> d!1702442 (= res!2244367 e!3289754)))

(declare-fun res!2244371 () Bool)

(assert (=> d!1702442 (=> (not res!2244371) (not e!3289754))))

(declare-fun lt!2162306 () Option!15036)

(assert (=> d!1702442 (= res!2244371 (isDefined!11739 lt!2162306))))

(declare-fun e!3289753 () Option!15036)

(assert (=> d!1702442 (= lt!2162306 e!3289753)))

(declare-fun c!918074 () Bool)

(declare-fun e!3289750 () Bool)

(assert (=> d!1702442 (= c!918074 e!3289750)))

(declare-fun res!2244368 () Bool)

(assert (=> d!1702442 (=> (not res!2244368) (not e!3289750))))

(assert (=> d!1702442 (= res!2244368 (matchR!7110 (regTwo!30362 (regOne!30362 r!7292)) Nil!60950))))

(assert (=> d!1702442 (validRegex!6661 (regTwo!30362 (regOne!30362 r!7292)))))

(assert (=> d!1702442 (= (findConcatSeparation!1450 (regTwo!30362 (regOne!30362 r!7292)) lt!2162114 Nil!60950 s!2326 s!2326) lt!2162306)))

(declare-fun b!5291919 () Bool)

(declare-fun e!3289751 () Option!15036)

(assert (=> b!5291919 (= e!3289751 None!15035)))

(declare-fun b!5291920 () Bool)

(declare-fun res!2244370 () Bool)

(assert (=> b!5291920 (=> (not res!2244370) (not e!3289754))))

(assert (=> b!5291920 (= res!2244370 (matchR!7110 lt!2162114 (_2!35427 (get!20958 lt!2162306))))))

(declare-fun b!5291921 () Bool)

(assert (=> b!5291921 (= e!3289754 (= (++!13290 (_1!35427 (get!20958 lt!2162306)) (_2!35427 (get!20958 lt!2162306))) s!2326))))

(declare-fun b!5291922 () Bool)

(assert (=> b!5291922 (= e!3289753 e!3289751)))

(declare-fun c!918075 () Bool)

(assert (=> b!5291922 (= c!918075 ((_ is Nil!60950) s!2326))))

(declare-fun b!5291923 () Bool)

(assert (=> b!5291923 (= e!3289752 (not (isDefined!11739 lt!2162306)))))

(declare-fun b!5291924 () Bool)

(assert (=> b!5291924 (= e!3289750 (matchR!7110 lt!2162114 s!2326))))

(declare-fun b!5291925 () Bool)

(declare-fun lt!2162308 () Unit!153218)

(declare-fun lt!2162307 () Unit!153218)

(assert (=> b!5291925 (= lt!2162308 lt!2162307)))

(assert (=> b!5291925 (= (++!13290 (++!13290 Nil!60950 (Cons!60950 (h!67398 s!2326) Nil!60950)) (t!374279 s!2326)) s!2326)))

(assert (=> b!5291925 (= lt!2162307 (lemmaMoveElementToOtherListKeepsConcatEq!1705 Nil!60950 (h!67398 s!2326) (t!374279 s!2326) s!2326))))

(assert (=> b!5291925 (= e!3289751 (findConcatSeparation!1450 (regTwo!30362 (regOne!30362 r!7292)) lt!2162114 (++!13290 Nil!60950 (Cons!60950 (h!67398 s!2326) Nil!60950)) (t!374279 s!2326) s!2326))))

(declare-fun b!5291926 () Bool)

(declare-fun res!2244369 () Bool)

(assert (=> b!5291926 (=> (not res!2244369) (not e!3289754))))

(assert (=> b!5291926 (= res!2244369 (matchR!7110 (regTwo!30362 (regOne!30362 r!7292)) (_1!35427 (get!20958 lt!2162306))))))

(declare-fun b!5291927 () Bool)

(assert (=> b!5291927 (= e!3289753 (Some!15035 (tuple2!64249 Nil!60950 s!2326)))))

(assert (= (and d!1702442 res!2244368) b!5291924))

(assert (= (and d!1702442 c!918074) b!5291927))

(assert (= (and d!1702442 (not c!918074)) b!5291922))

(assert (= (and b!5291922 c!918075) b!5291919))

(assert (= (and b!5291922 (not c!918075)) b!5291925))

(assert (= (and d!1702442 res!2244371) b!5291926))

(assert (= (and b!5291926 res!2244369) b!5291920))

(assert (= (and b!5291920 res!2244370) b!5291921))

(assert (= (and d!1702442 (not res!2244367)) b!5291923))

(declare-fun m!6329452 () Bool)

(assert (=> b!5291926 m!6329452))

(declare-fun m!6329454 () Bool)

(assert (=> b!5291926 m!6329454))

(declare-fun m!6329456 () Bool)

(assert (=> b!5291924 m!6329456))

(assert (=> b!5291920 m!6329452))

(declare-fun m!6329458 () Bool)

(assert (=> b!5291920 m!6329458))

(declare-fun m!6329460 () Bool)

(assert (=> d!1702442 m!6329460))

(declare-fun m!6329462 () Bool)

(assert (=> d!1702442 m!6329462))

(declare-fun m!6329464 () Bool)

(assert (=> d!1702442 m!6329464))

(assert (=> b!5291923 m!6329460))

(assert (=> b!5291925 m!6328928))

(assert (=> b!5291925 m!6328928))

(assert (=> b!5291925 m!6328940))

(assert (=> b!5291925 m!6328942))

(assert (=> b!5291925 m!6328928))

(declare-fun m!6329466 () Bool)

(assert (=> b!5291925 m!6329466))

(assert (=> b!5291921 m!6329452))

(declare-fun m!6329468 () Bool)

(assert (=> b!5291921 m!6329468))

(assert (=> b!5291083 d!1702442))

(declare-fun bs!1227415 () Bool)

(declare-fun d!1702444 () Bool)

(assert (= bs!1227415 (and d!1702444 b!5291083)))

(declare-fun lambda!268003 () Int)

(assert (=> bs!1227415 (not (= lambda!268003 lambda!267907))))

(declare-fun bs!1227416 () Bool)

(assert (= bs!1227416 (and d!1702444 b!5291781)))

(assert (=> bs!1227416 (not (= lambda!268003 lambda!267993))))

(declare-fun bs!1227417 () Bool)

(assert (= bs!1227417 (and d!1702444 d!1702296)))

(assert (=> bs!1227417 (not (= lambda!268003 lambda!267965))))

(declare-fun bs!1227418 () Bool)

(assert (= bs!1227418 (and d!1702444 b!5291881)))

(assert (=> bs!1227418 (not (= lambda!268003 lambda!268000))))

(declare-fun bs!1227419 () Bool)

(assert (= bs!1227419 (and d!1702444 b!5291876)))

(assert (=> bs!1227419 (not (= lambda!268003 lambda!267999))))

(declare-fun bs!1227420 () Bool)

(assert (= bs!1227420 (and d!1702444 b!5291098)))

(assert (=> bs!1227420 (= (and (= (regOne!30362 (regOne!30362 r!7292)) (regOne!30362 r!7292)) (= lt!2162145 (regTwo!30362 r!7292))) (= lambda!268003 lambda!267903))))

(assert (=> bs!1227417 (= (and (= (regOne!30362 (regOne!30362 r!7292)) (regOne!30362 r!7292)) (= lt!2162145 (regTwo!30362 r!7292))) (= lambda!268003 lambda!267964))))

(assert (=> bs!1227415 (= lambda!268003 lambda!267906)))

(declare-fun bs!1227421 () Bool)

(assert (= bs!1227421 (and d!1702444 d!1702440)))

(assert (=> bs!1227421 (= lambda!268003 lambda!268002)))

(declare-fun bs!1227422 () Bool)

(assert (= bs!1227422 (and d!1702444 b!5291786)))

(assert (=> bs!1227422 (not (= lambda!268003 lambda!267994))))

(assert (=> bs!1227420 (not (= lambda!268003 lambda!267904))))

(declare-fun bs!1227423 () Bool)

(assert (= bs!1227423 (and d!1702444 d!1702280)))

(assert (=> bs!1227423 (= (and (= (regOne!30362 (regOne!30362 r!7292)) (regOne!30362 r!7292)) (= lt!2162145 (regTwo!30362 r!7292))) (= lambda!268003 lambda!267953))))

(assert (=> bs!1227415 (= (and (= (regOne!30362 (regOne!30362 r!7292)) (regTwo!30362 (regOne!30362 r!7292))) (= lt!2162145 lt!2162114)) (= lambda!268003 lambda!267908))))

(assert (=> d!1702444 true))

(assert (=> d!1702444 true))

(assert (=> d!1702444 true))

(declare-fun bs!1227424 () Bool)

(assert (= bs!1227424 d!1702444))

(declare-fun lambda!268004 () Int)

(assert (=> bs!1227424 (not (= lambda!268004 lambda!268003))))

(assert (=> bs!1227415 (= lambda!268004 lambda!267907)))

(assert (=> bs!1227416 (not (= lambda!268004 lambda!267993))))

(assert (=> bs!1227417 (= (and (= (regOne!30362 (regOne!30362 r!7292)) (regOne!30362 r!7292)) (= lt!2162145 (regTwo!30362 r!7292))) (= lambda!268004 lambda!267965))))

(assert (=> bs!1227418 (= (and (= (regOne!30362 (regOne!30362 r!7292)) (regOne!30362 lt!2162145)) (= lt!2162145 (regTwo!30362 lt!2162145))) (= lambda!268004 lambda!268000))))

(assert (=> bs!1227419 (not (= lambda!268004 lambda!267999))))

(assert (=> bs!1227420 (not (= lambda!268004 lambda!267903))))

(assert (=> bs!1227417 (not (= lambda!268004 lambda!267964))))

(assert (=> bs!1227415 (not (= lambda!268004 lambda!267906))))

(assert (=> bs!1227421 (not (= lambda!268004 lambda!268002))))

(assert (=> bs!1227422 (= (and (= (regOne!30362 (regOne!30362 r!7292)) (regOne!30362 lt!2162131)) (= lt!2162145 (regTwo!30362 lt!2162131))) (= lambda!268004 lambda!267994))))

(assert (=> bs!1227420 (= (and (= (regOne!30362 (regOne!30362 r!7292)) (regOne!30362 r!7292)) (= lt!2162145 (regTwo!30362 r!7292))) (= lambda!268004 lambda!267904))))

(assert (=> bs!1227423 (not (= lambda!268004 lambda!267953))))

(assert (=> bs!1227415 (not (= lambda!268004 lambda!267908))))

(assert (=> d!1702444 true))

(assert (=> d!1702444 true))

(assert (=> d!1702444 true))

(assert (=> d!1702444 (= (Exists!2106 lambda!268003) (Exists!2106 lambda!268004))))

(declare-fun lt!2162309 () Unit!153218)

(assert (=> d!1702444 (= lt!2162309 (choose!39511 (regOne!30362 (regOne!30362 r!7292)) lt!2162145 s!2326))))

(assert (=> d!1702444 (validRegex!6661 (regOne!30362 (regOne!30362 r!7292)))))

(assert (=> d!1702444 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!760 (regOne!30362 (regOne!30362 r!7292)) lt!2162145 s!2326) lt!2162309)))

(declare-fun m!6329470 () Bool)

(assert (=> bs!1227424 m!6329470))

(declare-fun m!6329472 () Bool)

(assert (=> bs!1227424 m!6329472))

(declare-fun m!6329474 () Bool)

(assert (=> bs!1227424 m!6329474))

(assert (=> bs!1227424 m!6329434))

(assert (=> b!5291083 d!1702444))

(declare-fun bs!1227425 () Bool)

(declare-fun d!1702446 () Bool)

(assert (= bs!1227425 (and d!1702446 d!1702444)))

(declare-fun lambda!268005 () Int)

(assert (=> bs!1227425 (= (and (= (regTwo!30362 (regOne!30362 r!7292)) (regOne!30362 (regOne!30362 r!7292))) (= lt!2162114 lt!2162145)) (= lambda!268005 lambda!268003))))

(declare-fun bs!1227426 () Bool)

(assert (= bs!1227426 (and d!1702446 b!5291083)))

(assert (=> bs!1227426 (not (= lambda!268005 lambda!267907))))

(declare-fun bs!1227427 () Bool)

(assert (= bs!1227427 (and d!1702446 d!1702296)))

(assert (=> bs!1227427 (not (= lambda!268005 lambda!267965))))

(declare-fun bs!1227428 () Bool)

(assert (= bs!1227428 (and d!1702446 b!5291881)))

(assert (=> bs!1227428 (not (= lambda!268005 lambda!268000))))

(declare-fun bs!1227429 () Bool)

(assert (= bs!1227429 (and d!1702446 b!5291876)))

(assert (=> bs!1227429 (not (= lambda!268005 lambda!267999))))

(declare-fun bs!1227430 () Bool)

(assert (= bs!1227430 (and d!1702446 b!5291098)))

(assert (=> bs!1227430 (= (and (= (regTwo!30362 (regOne!30362 r!7292)) (regOne!30362 r!7292)) (= lt!2162114 (regTwo!30362 r!7292))) (= lambda!268005 lambda!267903))))

(assert (=> bs!1227427 (= (and (= (regTwo!30362 (regOne!30362 r!7292)) (regOne!30362 r!7292)) (= lt!2162114 (regTwo!30362 r!7292))) (= lambda!268005 lambda!267964))))

(assert (=> bs!1227426 (= (and (= (regTwo!30362 (regOne!30362 r!7292)) (regOne!30362 (regOne!30362 r!7292))) (= lt!2162114 lt!2162145)) (= lambda!268005 lambda!267906))))

(declare-fun bs!1227431 () Bool)

(assert (= bs!1227431 (and d!1702446 d!1702440)))

(assert (=> bs!1227431 (= (and (= (regTwo!30362 (regOne!30362 r!7292)) (regOne!30362 (regOne!30362 r!7292))) (= lt!2162114 lt!2162145)) (= lambda!268005 lambda!268002))))

(declare-fun bs!1227432 () Bool)

(assert (= bs!1227432 (and d!1702446 b!5291786)))

(assert (=> bs!1227432 (not (= lambda!268005 lambda!267994))))

(assert (=> bs!1227430 (not (= lambda!268005 lambda!267904))))

(declare-fun bs!1227433 () Bool)

(assert (= bs!1227433 (and d!1702446 d!1702280)))

(assert (=> bs!1227433 (= (and (= (regTwo!30362 (regOne!30362 r!7292)) (regOne!30362 r!7292)) (= lt!2162114 (regTwo!30362 r!7292))) (= lambda!268005 lambda!267953))))

(assert (=> bs!1227426 (= lambda!268005 lambda!267908)))

(declare-fun bs!1227434 () Bool)

(assert (= bs!1227434 (and d!1702446 b!5291781)))

(assert (=> bs!1227434 (not (= lambda!268005 lambda!267993))))

(assert (=> bs!1227425 (not (= lambda!268005 lambda!268004))))

(assert (=> d!1702446 true))

(assert (=> d!1702446 true))

(assert (=> d!1702446 true))

(assert (=> d!1702446 (= (isDefined!11739 (findConcatSeparation!1450 (regTwo!30362 (regOne!30362 r!7292)) lt!2162114 Nil!60950 s!2326 s!2326)) (Exists!2106 lambda!268005))))

(declare-fun lt!2162310 () Unit!153218)

(assert (=> d!1702446 (= lt!2162310 (choose!39510 (regTwo!30362 (regOne!30362 r!7292)) lt!2162114 s!2326))))

(assert (=> d!1702446 (validRegex!6661 (regTwo!30362 (regOne!30362 r!7292)))))

(assert (=> d!1702446 (= (lemmaFindConcatSeparationEquivalentToExists!1214 (regTwo!30362 (regOne!30362 r!7292)) lt!2162114 s!2326) lt!2162310)))

(declare-fun bs!1227435 () Bool)

(assert (= bs!1227435 d!1702446))

(declare-fun m!6329476 () Bool)

(assert (=> bs!1227435 m!6329476))

(assert (=> bs!1227435 m!6328632))

(declare-fun m!6329478 () Bool)

(assert (=> bs!1227435 m!6329478))

(assert (=> bs!1227435 m!6328632))

(assert (=> bs!1227435 m!6328646))

(assert (=> bs!1227435 m!6329464))

(assert (=> b!5291083 d!1702446))

(declare-fun d!1702448 () Bool)

(declare-fun e!3289757 () Bool)

(assert (=> d!1702448 e!3289757))

(declare-fun res!2244374 () Bool)

(assert (=> d!1702448 (=> (not res!2244374) (not e!3289757))))

(declare-fun lt!2162313 () List!61076)

(declare-fun noDuplicate!1265 (List!61076) Bool)

(assert (=> d!1702448 (= res!2244374 (noDuplicate!1265 lt!2162313))))

(declare-fun choose!39518 ((InoxSet Context!8618)) List!61076)

(assert (=> d!1702448 (= lt!2162313 (choose!39518 z!1189))))

(assert (=> d!1702448 (= (toList!8709 z!1189) lt!2162313)))

(declare-fun b!5291930 () Bool)

(declare-fun content!10853 (List!61076) (InoxSet Context!8618))

(assert (=> b!5291930 (= e!3289757 (= (content!10853 lt!2162313) z!1189))))

(assert (= (and d!1702448 res!2244374) b!5291930))

(declare-fun m!6329480 () Bool)

(assert (=> d!1702448 m!6329480))

(declare-fun m!6329482 () Bool)

(assert (=> d!1702448 m!6329482))

(declare-fun m!6329484 () Bool)

(assert (=> b!5291930 m!6329484))

(assert (=> b!5291081 d!1702448))

(declare-fun bs!1227436 () Bool)

(declare-fun d!1702450 () Bool)

(assert (= bs!1227436 (and d!1702450 b!5291083)))

(declare-fun lambda!268006 () Int)

(assert (=> bs!1227436 (= lambda!268006 lambda!267909)))

(declare-fun bs!1227437 () Bool)

(assert (= bs!1227437 (and d!1702450 d!1702406)))

(assert (=> bs!1227437 (= lambda!268006 lambda!267997)))

(declare-fun bs!1227438 () Bool)

(assert (= bs!1227438 (and d!1702450 d!1702408)))

(assert (=> bs!1227438 (= lambda!268006 lambda!267998)))

(declare-fun bs!1227439 () Bool)

(assert (= bs!1227439 (and d!1702450 d!1702420)))

(assert (=> bs!1227439 (= lambda!268006 lambda!268001)))

(declare-fun b!5291931 () Bool)

(declare-fun e!3289763 () Regex!14925)

(assert (=> b!5291931 (= e!3289763 (h!67399 (exprs!4809 (h!67400 zl!343))))))

(declare-fun b!5291932 () Bool)

(declare-fun e!3289761 () Bool)

(declare-fun e!3289759 () Bool)

(assert (=> b!5291932 (= e!3289761 e!3289759)))

(declare-fun c!918077 () Bool)

(assert (=> b!5291932 (= c!918077 (isEmpty!32904 (tail!10436 (exprs!4809 (h!67400 zl!343)))))))

(declare-fun b!5291933 () Bool)

(declare-fun e!3289758 () Bool)

(assert (=> b!5291933 (= e!3289758 e!3289761)))

(declare-fun c!918078 () Bool)

(assert (=> b!5291933 (= c!918078 (isEmpty!32904 (exprs!4809 (h!67400 zl!343))))))

(assert (=> d!1702450 e!3289758))

(declare-fun res!2244375 () Bool)

(assert (=> d!1702450 (=> (not res!2244375) (not e!3289758))))

(declare-fun lt!2162314 () Regex!14925)

(assert (=> d!1702450 (= res!2244375 (validRegex!6661 lt!2162314))))

(assert (=> d!1702450 (= lt!2162314 e!3289763)))

(declare-fun c!918076 () Bool)

(declare-fun e!3289760 () Bool)

(assert (=> d!1702450 (= c!918076 e!3289760)))

(declare-fun res!2244376 () Bool)

(assert (=> d!1702450 (=> (not res!2244376) (not e!3289760))))

(assert (=> d!1702450 (= res!2244376 ((_ is Cons!60951) (exprs!4809 (h!67400 zl!343))))))

(assert (=> d!1702450 (forall!14333 (exprs!4809 (h!67400 zl!343)) lambda!268006)))

(assert (=> d!1702450 (= (generalisedConcat!594 (exprs!4809 (h!67400 zl!343))) lt!2162314)))

(declare-fun b!5291934 () Bool)

(declare-fun e!3289762 () Regex!14925)

(assert (=> b!5291934 (= e!3289762 EmptyExpr!14925)))

(declare-fun b!5291935 () Bool)

(assert (=> b!5291935 (= e!3289763 e!3289762)))

(declare-fun c!918079 () Bool)

(assert (=> b!5291935 (= c!918079 ((_ is Cons!60951) (exprs!4809 (h!67400 zl!343))))))

(declare-fun b!5291936 () Bool)

(assert (=> b!5291936 (= e!3289759 (= lt!2162314 (head!11339 (exprs!4809 (h!67400 zl!343)))))))

(declare-fun b!5291937 () Bool)

(assert (=> b!5291937 (= e!3289762 (Concat!23770 (h!67399 (exprs!4809 (h!67400 zl!343))) (generalisedConcat!594 (t!374280 (exprs!4809 (h!67400 zl!343))))))))

(declare-fun b!5291938 () Bool)

(assert (=> b!5291938 (= e!3289761 (isEmptyExpr!845 lt!2162314))))

(declare-fun b!5291939 () Bool)

(assert (=> b!5291939 (= e!3289759 (isConcat!368 lt!2162314))))

(declare-fun b!5291940 () Bool)

(assert (=> b!5291940 (= e!3289760 (isEmpty!32904 (t!374280 (exprs!4809 (h!67400 zl!343)))))))

(assert (= (and d!1702450 res!2244376) b!5291940))

(assert (= (and d!1702450 c!918076) b!5291931))

(assert (= (and d!1702450 (not c!918076)) b!5291935))

(assert (= (and b!5291935 c!918079) b!5291937))

(assert (= (and b!5291935 (not c!918079)) b!5291934))

(assert (= (and d!1702450 res!2244375) b!5291933))

(assert (= (and b!5291933 c!918078) b!5291938))

(assert (= (and b!5291933 (not c!918078)) b!5291932))

(assert (= (and b!5291932 c!918077) b!5291936))

(assert (= (and b!5291932 (not c!918077)) b!5291939))

(declare-fun m!6329486 () Bool)

(assert (=> b!5291939 m!6329486))

(declare-fun m!6329488 () Bool)

(assert (=> b!5291936 m!6329488))

(assert (=> b!5291937 m!6328662))

(declare-fun m!6329490 () Bool)

(assert (=> b!5291932 m!6329490))

(assert (=> b!5291932 m!6329490))

(declare-fun m!6329492 () Bool)

(assert (=> b!5291932 m!6329492))

(declare-fun m!6329494 () Bool)

(assert (=> b!5291933 m!6329494))

(assert (=> b!5291940 m!6328546))

(declare-fun m!6329496 () Bool)

(assert (=> d!1702450 m!6329496))

(declare-fun m!6329498 () Bool)

(assert (=> d!1702450 m!6329498))

(declare-fun m!6329500 () Bool)

(assert (=> b!5291938 m!6329500))

(assert (=> b!5291102 d!1702450))

(declare-fun d!1702452 () Bool)

(declare-fun lt!2162317 () Int)

(assert (=> d!1702452 (>= lt!2162317 0)))

(declare-fun e!3289766 () Int)

(assert (=> d!1702452 (= lt!2162317 e!3289766)))

(declare-fun c!918083 () Bool)

(assert (=> d!1702452 (= c!918083 ((_ is Cons!60951) (exprs!4809 lt!2162134)))))

(assert (=> d!1702452 (= (contextDepthTotal!66 lt!2162134) lt!2162317)))

(declare-fun b!5291945 () Bool)

(declare-fun regexDepthTotal!22 (Regex!14925) Int)

(assert (=> b!5291945 (= e!3289766 (+ (regexDepthTotal!22 (h!67399 (exprs!4809 lt!2162134))) (contextDepthTotal!66 (Context!8619 (t!374280 (exprs!4809 lt!2162134))))))))

(declare-fun b!5291946 () Bool)

(assert (=> b!5291946 (= e!3289766 1)))

(assert (= (and d!1702452 c!918083) b!5291945))

(assert (= (and d!1702452 (not c!918083)) b!5291946))

(declare-fun m!6329502 () Bool)

(assert (=> b!5291945 m!6329502))

(declare-fun m!6329504 () Bool)

(assert (=> b!5291945 m!6329504))

(assert (=> b!5291101 d!1702452))

(declare-fun d!1702454 () Bool)

(declare-fun lt!2162318 () Int)

(assert (=> d!1702454 (>= lt!2162318 0)))

(declare-fun e!3289767 () Int)

(assert (=> d!1702454 (= lt!2162318 e!3289767)))

(declare-fun c!918084 () Bool)

(assert (=> d!1702454 (= c!918084 ((_ is Cons!60951) (exprs!4809 (h!67400 zl!343))))))

(assert (=> d!1702454 (= (contextDepthTotal!66 (h!67400 zl!343)) lt!2162318)))

(declare-fun b!5291947 () Bool)

(assert (=> b!5291947 (= e!3289767 (+ (regexDepthTotal!22 (h!67399 (exprs!4809 (h!67400 zl!343)))) (contextDepthTotal!66 (Context!8619 (t!374280 (exprs!4809 (h!67400 zl!343)))))))))

(declare-fun b!5291948 () Bool)

(assert (=> b!5291948 (= e!3289767 1)))

(assert (= (and d!1702454 c!918084) b!5291947))

(assert (= (and d!1702454 (not c!918084)) b!5291948))

(declare-fun m!6329506 () Bool)

(assert (=> b!5291947 m!6329506))

(declare-fun m!6329508 () Bool)

(assert (=> b!5291947 m!6329508))

(assert (=> b!5291101 d!1702454))

(declare-fun bs!1227440 () Bool)

(declare-fun d!1702456 () Bool)

(assert (= bs!1227440 (and d!1702456 d!1702408)))

(declare-fun lambda!268009 () Int)

(assert (=> bs!1227440 (= lambda!268009 lambda!267998)))

(declare-fun bs!1227441 () Bool)

(assert (= bs!1227441 (and d!1702456 d!1702406)))

(assert (=> bs!1227441 (= lambda!268009 lambda!267997)))

(declare-fun bs!1227442 () Bool)

(assert (= bs!1227442 (and d!1702456 d!1702420)))

(assert (=> bs!1227442 (= lambda!268009 lambda!268001)))

(declare-fun bs!1227443 () Bool)

(assert (= bs!1227443 (and d!1702456 b!5291083)))

(assert (=> bs!1227443 (= lambda!268009 lambda!267909)))

(declare-fun bs!1227444 () Bool)

(assert (= bs!1227444 (and d!1702456 d!1702450)))

(assert (=> bs!1227444 (= lambda!268009 lambda!268006)))

(assert (=> d!1702456 (= (inv!80559 setElem!33959) (forall!14333 (exprs!4809 setElem!33959) lambda!268009))))

(declare-fun bs!1227445 () Bool)

(assert (= bs!1227445 d!1702456))

(declare-fun m!6329510 () Bool)

(assert (=> bs!1227445 m!6329510))

(assert (=> setNonEmpty!33959 d!1702456))

(assert (=> b!5291109 d!1702340))

(declare-fun d!1702458 () Bool)

(assert (=> d!1702458 (= (isEmpty!32903 (t!374281 zl!343)) ((_ is Nil!60952) (t!374281 zl!343)))))

(assert (=> b!5291089 d!1702458))

(declare-fun bm!377146 () Bool)

(declare-fun call!377156 () (InoxSet Context!8618))

(declare-fun call!377154 () (InoxSet Context!8618))

(assert (=> bm!377146 (= call!377156 call!377154)))

(declare-fun b!5291971 () Bool)

(declare-fun c!918096 () Bool)

(assert (=> b!5291971 (= c!918096 ((_ is Star!14925) (regTwo!30362 (regOne!30362 r!7292))))))

(declare-fun e!3289780 () (InoxSet Context!8618))

(declare-fun e!3289784 () (InoxSet Context!8618))

(assert (=> b!5291971 (= e!3289780 e!3289784)))

(declare-fun d!1702460 () Bool)

(declare-fun c!918099 () Bool)

(assert (=> d!1702460 (= c!918099 (and ((_ is ElementMatch!14925) (regTwo!30362 (regOne!30362 r!7292))) (= (c!917825 (regTwo!30362 (regOne!30362 r!7292))) (h!67398 s!2326))))))

(declare-fun e!3289783 () (InoxSet Context!8618))

(assert (=> d!1702460 (= (derivationStepZipperDown!373 (regTwo!30362 (regOne!30362 r!7292)) lt!2162151 (h!67398 s!2326)) e!3289783)))

(declare-fun bm!377147 () Bool)

(declare-fun call!377155 () List!61075)

(declare-fun call!377151 () List!61075)

(assert (=> bm!377147 (= call!377155 call!377151)))

(declare-fun b!5291972 () Bool)

(declare-fun e!3289781 () Bool)

(assert (=> b!5291972 (= e!3289781 (nullable!5094 (regOne!30362 (regTwo!30362 (regOne!30362 r!7292)))))))

(declare-fun b!5291973 () Bool)

(assert (=> b!5291973 (= e!3289783 (store ((as const (Array Context!8618 Bool)) false) lt!2162151 true))))

(declare-fun b!5291974 () Bool)

(declare-fun e!3289785 () (InoxSet Context!8618))

(declare-fun call!377152 () (InoxSet Context!8618))

(assert (=> b!5291974 (= e!3289785 ((_ map or) call!377154 call!377152))))

(declare-fun b!5291975 () Bool)

(declare-fun e!3289782 () (InoxSet Context!8618))

(assert (=> b!5291975 (= e!3289782 e!3289780)))

(declare-fun c!918095 () Bool)

(assert (=> b!5291975 (= c!918095 ((_ is Concat!23770) (regTwo!30362 (regOne!30362 r!7292))))))

(declare-fun b!5291976 () Bool)

(assert (=> b!5291976 (= e!3289782 ((_ map or) call!377152 call!377156))))

(declare-fun b!5291977 () Bool)

(declare-fun call!377153 () (InoxSet Context!8618))

(assert (=> b!5291977 (= e!3289784 call!377153)))

(declare-fun c!918097 () Bool)

(declare-fun bm!377148 () Bool)

(declare-fun $colon$colon!1360 (List!61075 Regex!14925) List!61075)

(assert (=> bm!377148 (= call!377151 ($colon$colon!1360 (exprs!4809 lt!2162151) (ite (or c!918097 c!918095) (regTwo!30362 (regTwo!30362 (regOne!30362 r!7292))) (regTwo!30362 (regOne!30362 r!7292)))))))

(declare-fun bm!377149 () Bool)

(declare-fun c!918098 () Bool)

(assert (=> bm!377149 (= call!377154 (derivationStepZipperDown!373 (ite c!918098 (regOne!30363 (regTwo!30362 (regOne!30362 r!7292))) (ite c!918097 (regTwo!30362 (regTwo!30362 (regOne!30362 r!7292))) (ite c!918095 (regOne!30362 (regTwo!30362 (regOne!30362 r!7292))) (reg!15254 (regTwo!30362 (regOne!30362 r!7292)))))) (ite (or c!918098 c!918097) lt!2162151 (Context!8619 call!377155)) (h!67398 s!2326)))))

(declare-fun b!5291978 () Bool)

(assert (=> b!5291978 (= e!3289784 ((as const (Array Context!8618 Bool)) false))))

(declare-fun b!5291979 () Bool)

(assert (=> b!5291979 (= c!918097 e!3289781)))

(declare-fun res!2244379 () Bool)

(assert (=> b!5291979 (=> (not res!2244379) (not e!3289781))))

(assert (=> b!5291979 (= res!2244379 ((_ is Concat!23770) (regTwo!30362 (regOne!30362 r!7292))))))

(assert (=> b!5291979 (= e!3289785 e!3289782)))

(declare-fun bm!377150 () Bool)

(assert (=> bm!377150 (= call!377153 call!377156)))

(declare-fun b!5291980 () Bool)

(assert (=> b!5291980 (= e!3289780 call!377153)))

(declare-fun b!5291981 () Bool)

(assert (=> b!5291981 (= e!3289783 e!3289785)))

(assert (=> b!5291981 (= c!918098 ((_ is Union!14925) (regTwo!30362 (regOne!30362 r!7292))))))

(declare-fun bm!377151 () Bool)

(assert (=> bm!377151 (= call!377152 (derivationStepZipperDown!373 (ite c!918098 (regTwo!30363 (regTwo!30362 (regOne!30362 r!7292))) (regOne!30362 (regTwo!30362 (regOne!30362 r!7292)))) (ite c!918098 lt!2162151 (Context!8619 call!377151)) (h!67398 s!2326)))))

(assert (= (and d!1702460 c!918099) b!5291973))

(assert (= (and d!1702460 (not c!918099)) b!5291981))

(assert (= (and b!5291981 c!918098) b!5291974))

(assert (= (and b!5291981 (not c!918098)) b!5291979))

(assert (= (and b!5291979 res!2244379) b!5291972))

(assert (= (and b!5291979 c!918097) b!5291976))

(assert (= (and b!5291979 (not c!918097)) b!5291975))

(assert (= (and b!5291975 c!918095) b!5291980))

(assert (= (and b!5291975 (not c!918095)) b!5291971))

(assert (= (and b!5291971 c!918096) b!5291977))

(assert (= (and b!5291971 (not c!918096)) b!5291978))

(assert (= (or b!5291980 b!5291977) bm!377147))

(assert (= (or b!5291980 b!5291977) bm!377150))

(assert (= (or b!5291976 bm!377147) bm!377148))

(assert (= (or b!5291976 bm!377150) bm!377146))

(assert (= (or b!5291974 b!5291976) bm!377151))

(assert (= (or b!5291974 bm!377146) bm!377149))

(declare-fun m!6329512 () Bool)

(assert (=> b!5291973 m!6329512))

(declare-fun m!6329514 () Bool)

(assert (=> bm!377151 m!6329514))

(declare-fun m!6329516 () Bool)

(assert (=> bm!377148 m!6329516))

(declare-fun m!6329518 () Bool)

(assert (=> b!5291972 m!6329518))

(declare-fun m!6329520 () Bool)

(assert (=> bm!377149 m!6329520))

(assert (=> b!5291110 d!1702460))

(declare-fun bm!377152 () Bool)

(declare-fun call!377162 () (InoxSet Context!8618))

(declare-fun call!377160 () (InoxSet Context!8618))

(assert (=> bm!377152 (= call!377162 call!377160)))

(declare-fun b!5291982 () Bool)

(declare-fun c!918101 () Bool)

(assert (=> b!5291982 (= c!918101 ((_ is Star!14925) (regOne!30362 (regOne!30362 r!7292))))))

(declare-fun e!3289786 () (InoxSet Context!8618))

(declare-fun e!3289790 () (InoxSet Context!8618))

(assert (=> b!5291982 (= e!3289786 e!3289790)))

(declare-fun d!1702462 () Bool)

(declare-fun c!918104 () Bool)

(assert (=> d!1702462 (= c!918104 (and ((_ is ElementMatch!14925) (regOne!30362 (regOne!30362 r!7292))) (= (c!917825 (regOne!30362 (regOne!30362 r!7292))) (h!67398 s!2326))))))

(declare-fun e!3289789 () (InoxSet Context!8618))

(assert (=> d!1702462 (= (derivationStepZipperDown!373 (regOne!30362 (regOne!30362 r!7292)) lt!2162119 (h!67398 s!2326)) e!3289789)))

(declare-fun bm!377153 () Bool)

(declare-fun call!377161 () List!61075)

(declare-fun call!377157 () List!61075)

(assert (=> bm!377153 (= call!377161 call!377157)))

(declare-fun b!5291983 () Bool)

(declare-fun e!3289787 () Bool)

(assert (=> b!5291983 (= e!3289787 (nullable!5094 (regOne!30362 (regOne!30362 (regOne!30362 r!7292)))))))

(declare-fun b!5291984 () Bool)

(assert (=> b!5291984 (= e!3289789 (store ((as const (Array Context!8618 Bool)) false) lt!2162119 true))))

(declare-fun b!5291985 () Bool)

(declare-fun e!3289791 () (InoxSet Context!8618))

(declare-fun call!377158 () (InoxSet Context!8618))

(assert (=> b!5291985 (= e!3289791 ((_ map or) call!377160 call!377158))))

(declare-fun b!5291986 () Bool)

(declare-fun e!3289788 () (InoxSet Context!8618))

(assert (=> b!5291986 (= e!3289788 e!3289786)))

(declare-fun c!918100 () Bool)

(assert (=> b!5291986 (= c!918100 ((_ is Concat!23770) (regOne!30362 (regOne!30362 r!7292))))))

(declare-fun b!5291987 () Bool)

(assert (=> b!5291987 (= e!3289788 ((_ map or) call!377158 call!377162))))

(declare-fun b!5291988 () Bool)

(declare-fun call!377159 () (InoxSet Context!8618))

(assert (=> b!5291988 (= e!3289790 call!377159)))

(declare-fun bm!377154 () Bool)

(declare-fun c!918102 () Bool)

(assert (=> bm!377154 (= call!377157 ($colon$colon!1360 (exprs!4809 lt!2162119) (ite (or c!918102 c!918100) (regTwo!30362 (regOne!30362 (regOne!30362 r!7292))) (regOne!30362 (regOne!30362 r!7292)))))))

(declare-fun c!918103 () Bool)

(declare-fun bm!377155 () Bool)

(assert (=> bm!377155 (= call!377160 (derivationStepZipperDown!373 (ite c!918103 (regOne!30363 (regOne!30362 (regOne!30362 r!7292))) (ite c!918102 (regTwo!30362 (regOne!30362 (regOne!30362 r!7292))) (ite c!918100 (regOne!30362 (regOne!30362 (regOne!30362 r!7292))) (reg!15254 (regOne!30362 (regOne!30362 r!7292)))))) (ite (or c!918103 c!918102) lt!2162119 (Context!8619 call!377161)) (h!67398 s!2326)))))

(declare-fun b!5291989 () Bool)

(assert (=> b!5291989 (= e!3289790 ((as const (Array Context!8618 Bool)) false))))

(declare-fun b!5291990 () Bool)

(assert (=> b!5291990 (= c!918102 e!3289787)))

(declare-fun res!2244380 () Bool)

(assert (=> b!5291990 (=> (not res!2244380) (not e!3289787))))

(assert (=> b!5291990 (= res!2244380 ((_ is Concat!23770) (regOne!30362 (regOne!30362 r!7292))))))

(assert (=> b!5291990 (= e!3289791 e!3289788)))

(declare-fun bm!377156 () Bool)

(assert (=> bm!377156 (= call!377159 call!377162)))

(declare-fun b!5291991 () Bool)

(assert (=> b!5291991 (= e!3289786 call!377159)))

(declare-fun b!5291992 () Bool)

(assert (=> b!5291992 (= e!3289789 e!3289791)))

(assert (=> b!5291992 (= c!918103 ((_ is Union!14925) (regOne!30362 (regOne!30362 r!7292))))))

(declare-fun bm!377157 () Bool)

(assert (=> bm!377157 (= call!377158 (derivationStepZipperDown!373 (ite c!918103 (regTwo!30363 (regOne!30362 (regOne!30362 r!7292))) (regOne!30362 (regOne!30362 (regOne!30362 r!7292)))) (ite c!918103 lt!2162119 (Context!8619 call!377157)) (h!67398 s!2326)))))

(assert (= (and d!1702462 c!918104) b!5291984))

(assert (= (and d!1702462 (not c!918104)) b!5291992))

(assert (= (and b!5291992 c!918103) b!5291985))

(assert (= (and b!5291992 (not c!918103)) b!5291990))

(assert (= (and b!5291990 res!2244380) b!5291983))

(assert (= (and b!5291990 c!918102) b!5291987))

(assert (= (and b!5291990 (not c!918102)) b!5291986))

(assert (= (and b!5291986 c!918100) b!5291991))

(assert (= (and b!5291986 (not c!918100)) b!5291982))

(assert (= (and b!5291982 c!918101) b!5291988))

(assert (= (and b!5291982 (not c!918101)) b!5291989))

(assert (= (or b!5291991 b!5291988) bm!377153))

(assert (= (or b!5291991 b!5291988) bm!377156))

(assert (= (or b!5291987 bm!377153) bm!377154))

(assert (= (or b!5291987 bm!377156) bm!377152))

(assert (= (or b!5291985 b!5291987) bm!377157))

(assert (= (or b!5291985 bm!377152) bm!377155))

(assert (=> b!5291984 m!6328684))

(declare-fun m!6329522 () Bool)

(assert (=> bm!377157 m!6329522))

(declare-fun m!6329524 () Bool)

(assert (=> bm!377154 m!6329524))

(declare-fun m!6329526 () Bool)

(assert (=> b!5291983 m!6329526))

(declare-fun m!6329528 () Bool)

(assert (=> bm!377155 m!6329528))

(assert (=> b!5291110 d!1702462))

(declare-fun d!1702464 () Bool)

(declare-fun c!918105 () Bool)

(assert (=> d!1702464 (= c!918105 (isEmpty!32908 (t!374279 s!2326)))))

(declare-fun e!3289792 () Bool)

(assert (=> d!1702464 (= (matchZipper!1169 lt!2162113 (t!374279 s!2326)) e!3289792)))

(declare-fun b!5291993 () Bool)

(assert (=> b!5291993 (= e!3289792 (nullableZipper!1310 lt!2162113))))

(declare-fun b!5291994 () Bool)

(assert (=> b!5291994 (= e!3289792 (matchZipper!1169 (derivationStepZipper!1168 lt!2162113 (head!11338 (t!374279 s!2326))) (tail!10435 (t!374279 s!2326))))))

(assert (= (and d!1702464 c!918105) b!5291993))

(assert (= (and d!1702464 (not c!918105)) b!5291994))

(assert (=> d!1702464 m!6329110))

(declare-fun m!6329530 () Bool)

(assert (=> b!5291993 m!6329530))

(assert (=> b!5291994 m!6329122))

(assert (=> b!5291994 m!6329122))

(declare-fun m!6329532 () Bool)

(assert (=> b!5291994 m!6329532))

(assert (=> b!5291994 m!6329130))

(assert (=> b!5291994 m!6329532))

(assert (=> b!5291994 m!6329130))

(declare-fun m!6329534 () Bool)

(assert (=> b!5291994 m!6329534))

(assert (=> b!5291108 d!1702464))

(declare-fun d!1702466 () Bool)

(declare-fun c!918106 () Bool)

(assert (=> d!1702466 (= c!918106 (isEmpty!32908 (t!374279 s!2326)))))

(declare-fun e!3289793 () Bool)

(assert (=> d!1702466 (= (matchZipper!1169 lt!2162112 (t!374279 s!2326)) e!3289793)))

(declare-fun b!5291995 () Bool)

(assert (=> b!5291995 (= e!3289793 (nullableZipper!1310 lt!2162112))))

(declare-fun b!5291996 () Bool)

(assert (=> b!5291996 (= e!3289793 (matchZipper!1169 (derivationStepZipper!1168 lt!2162112 (head!11338 (t!374279 s!2326))) (tail!10435 (t!374279 s!2326))))))

(assert (= (and d!1702466 c!918106) b!5291995))

(assert (= (and d!1702466 (not c!918106)) b!5291996))

(assert (=> d!1702466 m!6329110))

(declare-fun m!6329536 () Bool)

(assert (=> b!5291995 m!6329536))

(assert (=> b!5291996 m!6329122))

(assert (=> b!5291996 m!6329122))

(declare-fun m!6329538 () Bool)

(assert (=> b!5291996 m!6329538))

(assert (=> b!5291996 m!6329130))

(assert (=> b!5291996 m!6329538))

(assert (=> b!5291996 m!6329130))

(declare-fun m!6329540 () Bool)

(assert (=> b!5291996 m!6329540))

(assert (=> b!5291108 d!1702466))

(declare-fun d!1702468 () Bool)

(declare-fun c!918107 () Bool)

(assert (=> d!1702468 (= c!918107 (isEmpty!32908 (t!374279 s!2326)))))

(declare-fun e!3289794 () Bool)

(assert (=> d!1702468 (= (matchZipper!1169 lt!2162139 (t!374279 s!2326)) e!3289794)))

(declare-fun b!5291997 () Bool)

(assert (=> b!5291997 (= e!3289794 (nullableZipper!1310 lt!2162139))))

(declare-fun b!5291998 () Bool)

(assert (=> b!5291998 (= e!3289794 (matchZipper!1169 (derivationStepZipper!1168 lt!2162139 (head!11338 (t!374279 s!2326))) (tail!10435 (t!374279 s!2326))))))

(assert (= (and d!1702468 c!918107) b!5291997))

(assert (= (and d!1702468 (not c!918107)) b!5291998))

(assert (=> d!1702468 m!6329110))

(declare-fun m!6329542 () Bool)

(assert (=> b!5291997 m!6329542))

(assert (=> b!5291998 m!6329122))

(assert (=> b!5291998 m!6329122))

(declare-fun m!6329544 () Bool)

(assert (=> b!5291998 m!6329544))

(assert (=> b!5291998 m!6329130))

(assert (=> b!5291998 m!6329544))

(assert (=> b!5291998 m!6329130))

(declare-fun m!6329546 () Bool)

(assert (=> b!5291998 m!6329546))

(assert (=> b!5291108 d!1702468))

(declare-fun d!1702470 () Bool)

(declare-fun e!3289795 () Bool)

(assert (=> d!1702470 (= (matchZipper!1169 ((_ map or) lt!2162139 lt!2162133) (t!374279 s!2326)) e!3289795)))

(declare-fun res!2244381 () Bool)

(assert (=> d!1702470 (=> res!2244381 e!3289795)))

(assert (=> d!1702470 (= res!2244381 (matchZipper!1169 lt!2162139 (t!374279 s!2326)))))

(declare-fun lt!2162319 () Unit!153218)

(assert (=> d!1702470 (= lt!2162319 (choose!39513 lt!2162139 lt!2162133 (t!374279 s!2326)))))

(assert (=> d!1702470 (= (lemmaZipperConcatMatchesSameAsBothZippers!162 lt!2162139 lt!2162133 (t!374279 s!2326)) lt!2162319)))

(declare-fun b!5291999 () Bool)

(assert (=> b!5291999 (= e!3289795 (matchZipper!1169 lt!2162133 (t!374279 s!2326)))))

(assert (= (and d!1702470 (not res!2244381)) b!5291999))

(declare-fun m!6329548 () Bool)

(assert (=> d!1702470 m!6329548))

(assert (=> d!1702470 m!6328604))

(declare-fun m!6329550 () Bool)

(assert (=> d!1702470 m!6329550))

(assert (=> b!5291999 m!6328548))

(assert (=> b!5291108 d!1702470))

(assert (=> b!5291107 d!1702362))

(declare-fun bs!1227446 () Bool)

(declare-fun d!1702472 () Bool)

(assert (= bs!1227446 (and d!1702472 b!5291091)))

(declare-fun lambda!268010 () Int)

(assert (=> bs!1227446 (= lambda!268010 lambda!267905)))

(declare-fun bs!1227447 () Bool)

(assert (= bs!1227447 (and d!1702472 d!1702328)))

(assert (=> bs!1227447 (= lambda!268010 lambda!267974)))

(assert (=> d!1702472 true))

(assert (=> d!1702472 (= (derivationStepZipper!1168 lt!2162142 (h!67398 s!2326)) (flatMap!652 lt!2162142 lambda!268010))))

(declare-fun bs!1227448 () Bool)

(assert (= bs!1227448 d!1702472))

(declare-fun m!6329552 () Bool)

(assert (=> bs!1227448 m!6329552))

(assert (=> b!5291107 d!1702472))

(declare-fun d!1702474 () Bool)

(assert (=> d!1702474 (= (flatMap!652 lt!2162142 lambda!267905) (dynLambda!24101 lambda!267905 lt!2162134))))

(declare-fun lt!2162320 () Unit!153218)

(assert (=> d!1702474 (= lt!2162320 (choose!39512 lt!2162142 lt!2162134 lambda!267905))))

(assert (=> d!1702474 (= lt!2162142 (store ((as const (Array Context!8618 Bool)) false) lt!2162134 true))))

(assert (=> d!1702474 (= (lemmaFlatMapOnSingletonSet!184 lt!2162142 lt!2162134 lambda!267905) lt!2162320)))

(declare-fun b_lambda!204089 () Bool)

(assert (=> (not b_lambda!204089) (not d!1702474)))

(declare-fun bs!1227449 () Bool)

(assert (= bs!1227449 d!1702474))

(assert (=> bs!1227449 m!6328674))

(declare-fun m!6329554 () Bool)

(assert (=> bs!1227449 m!6329554))

(declare-fun m!6329556 () Bool)

(assert (=> bs!1227449 m!6329556))

(assert (=> bs!1227449 m!6328680))

(assert (=> b!5291107 d!1702474))

(declare-fun d!1702476 () Bool)

(assert (=> d!1702476 (= (flatMap!652 lt!2162142 lambda!267905) (choose!39514 lt!2162142 lambda!267905))))

(declare-fun bs!1227450 () Bool)

(assert (= bs!1227450 d!1702476))

(declare-fun m!6329558 () Bool)

(assert (=> bs!1227450 m!6329558))

(assert (=> b!5291107 d!1702476))

(declare-fun bm!377158 () Bool)

(declare-fun call!377163 () (InoxSet Context!8618))

(assert (=> bm!377158 (= call!377163 (derivationStepZipperDown!373 (h!67399 (exprs!4809 lt!2162134)) (Context!8619 (t!374280 (exprs!4809 lt!2162134))) (h!67398 s!2326)))))

(declare-fun b!5292000 () Bool)

(declare-fun e!3289798 () (InoxSet Context!8618))

(assert (=> b!5292000 (= e!3289798 call!377163)))

(declare-fun b!5292001 () Bool)

(declare-fun e!3289796 () (InoxSet Context!8618))

(assert (=> b!5292001 (= e!3289796 ((_ map or) call!377163 (derivationStepZipperUp!297 (Context!8619 (t!374280 (exprs!4809 lt!2162134))) (h!67398 s!2326))))))

(declare-fun b!5292002 () Bool)

(declare-fun e!3289797 () Bool)

(assert (=> b!5292002 (= e!3289797 (nullable!5094 (h!67399 (exprs!4809 lt!2162134))))))

(declare-fun b!5292003 () Bool)

(assert (=> b!5292003 (= e!3289796 e!3289798)))

(declare-fun c!918108 () Bool)

(assert (=> b!5292003 (= c!918108 ((_ is Cons!60951) (exprs!4809 lt!2162134)))))

(declare-fun d!1702478 () Bool)

(declare-fun c!918109 () Bool)

(assert (=> d!1702478 (= c!918109 e!3289797)))

(declare-fun res!2244382 () Bool)

(assert (=> d!1702478 (=> (not res!2244382) (not e!3289797))))

(assert (=> d!1702478 (= res!2244382 ((_ is Cons!60951) (exprs!4809 lt!2162134)))))

(assert (=> d!1702478 (= (derivationStepZipperUp!297 lt!2162134 (h!67398 s!2326)) e!3289796)))

(declare-fun b!5292004 () Bool)

(assert (=> b!5292004 (= e!3289798 ((as const (Array Context!8618 Bool)) false))))

(assert (= (and d!1702478 res!2244382) b!5292002))

(assert (= (and d!1702478 c!918109) b!5292001))

(assert (= (and d!1702478 (not c!918109)) b!5292003))

(assert (= (and b!5292003 c!918108) b!5292000))

(assert (= (and b!5292003 (not c!918108)) b!5292004))

(assert (= (or b!5292001 b!5292000) bm!377158))

(declare-fun m!6329560 () Bool)

(assert (=> bm!377158 m!6329560))

(declare-fun m!6329562 () Bool)

(assert (=> b!5292001 m!6329562))

(declare-fun m!6329564 () Bool)

(assert (=> b!5292002 m!6329564))

(assert (=> b!5291107 d!1702478))

(declare-fun bs!1227451 () Bool)

(declare-fun d!1702480 () Bool)

(assert (= bs!1227451 (and d!1702480 d!1702408)))

(declare-fun lambda!268011 () Int)

(assert (=> bs!1227451 (= lambda!268011 lambda!267998)))

(declare-fun bs!1227452 () Bool)

(assert (= bs!1227452 (and d!1702480 d!1702406)))

(assert (=> bs!1227452 (= lambda!268011 lambda!267997)))

(declare-fun bs!1227453 () Bool)

(assert (= bs!1227453 (and d!1702480 d!1702420)))

(assert (=> bs!1227453 (= lambda!268011 lambda!268001)))

(declare-fun bs!1227454 () Bool)

(assert (= bs!1227454 (and d!1702480 b!5291083)))

(assert (=> bs!1227454 (= lambda!268011 lambda!267909)))

(declare-fun bs!1227455 () Bool)

(assert (= bs!1227455 (and d!1702480 d!1702456)))

(assert (=> bs!1227455 (= lambda!268011 lambda!268009)))

(declare-fun bs!1227456 () Bool)

(assert (= bs!1227456 (and d!1702480 d!1702450)))

(assert (=> bs!1227456 (= lambda!268011 lambda!268006)))

(assert (=> d!1702480 (= (inv!80559 (h!67400 zl!343)) (forall!14333 (exprs!4809 (h!67400 zl!343)) lambda!268011))))

(declare-fun bs!1227457 () Bool)

(assert (= bs!1227457 d!1702480))

(declare-fun m!6329566 () Bool)

(assert (=> bs!1227457 m!6329566))

(assert (=> b!5291087 d!1702480))

(declare-fun d!1702482 () Bool)

(declare-fun res!2244395 () Bool)

(declare-fun e!3289817 () Bool)

(assert (=> d!1702482 (=> res!2244395 e!3289817)))

(assert (=> d!1702482 (= res!2244395 ((_ is ElementMatch!14925) r!7292))))

(assert (=> d!1702482 (= (validRegex!6661 r!7292) e!3289817)))

(declare-fun b!5292023 () Bool)

(declare-fun e!3289816 () Bool)

(declare-fun e!3289815 () Bool)

(assert (=> b!5292023 (= e!3289816 e!3289815)))

(declare-fun res!2244397 () Bool)

(assert (=> b!5292023 (=> (not res!2244397) (not e!3289815))))

(declare-fun call!377172 () Bool)

(assert (=> b!5292023 (= res!2244397 call!377172)))

(declare-fun b!5292024 () Bool)

(declare-fun e!3289818 () Bool)

(declare-fun call!377171 () Bool)

(assert (=> b!5292024 (= e!3289818 call!377171)))

(declare-fun b!5292025 () Bool)

(assert (=> b!5292025 (= e!3289815 call!377171)))

(declare-fun bm!377165 () Bool)

(declare-fun c!918114 () Bool)

(assert (=> bm!377165 (= call!377171 (validRegex!6661 (ite c!918114 (regTwo!30363 r!7292) (regTwo!30362 r!7292))))))

(declare-fun bm!377166 () Bool)

(declare-fun call!377170 () Bool)

(assert (=> bm!377166 (= call!377172 call!377170)))

(declare-fun b!5292026 () Bool)

(declare-fun e!3289819 () Bool)

(declare-fun e!3289814 () Bool)

(assert (=> b!5292026 (= e!3289819 e!3289814)))

(declare-fun res!2244396 () Bool)

(assert (=> b!5292026 (= res!2244396 (not (nullable!5094 (reg!15254 r!7292))))))

(assert (=> b!5292026 (=> (not res!2244396) (not e!3289814))))

(declare-fun b!5292027 () Bool)

(declare-fun res!2244394 () Bool)

(assert (=> b!5292027 (=> (not res!2244394) (not e!3289818))))

(assert (=> b!5292027 (= res!2244394 call!377172)))

(declare-fun e!3289813 () Bool)

(assert (=> b!5292027 (= e!3289813 e!3289818)))

(declare-fun b!5292028 () Bool)

(assert (=> b!5292028 (= e!3289817 e!3289819)))

(declare-fun c!918115 () Bool)

(assert (=> b!5292028 (= c!918115 ((_ is Star!14925) r!7292))))

(declare-fun bm!377167 () Bool)

(assert (=> bm!377167 (= call!377170 (validRegex!6661 (ite c!918115 (reg!15254 r!7292) (ite c!918114 (regOne!30363 r!7292) (regOne!30362 r!7292)))))))

(declare-fun b!5292029 () Bool)

(declare-fun res!2244393 () Bool)

(assert (=> b!5292029 (=> res!2244393 e!3289816)))

(assert (=> b!5292029 (= res!2244393 (not ((_ is Concat!23770) r!7292)))))

(assert (=> b!5292029 (= e!3289813 e!3289816)))

(declare-fun b!5292030 () Bool)

(assert (=> b!5292030 (= e!3289819 e!3289813)))

(assert (=> b!5292030 (= c!918114 ((_ is Union!14925) r!7292))))

(declare-fun b!5292031 () Bool)

(assert (=> b!5292031 (= e!3289814 call!377170)))

(assert (= (and d!1702482 (not res!2244395)) b!5292028))

(assert (= (and b!5292028 c!918115) b!5292026))

(assert (= (and b!5292028 (not c!918115)) b!5292030))

(assert (= (and b!5292026 res!2244396) b!5292031))

(assert (= (and b!5292030 c!918114) b!5292027))

(assert (= (and b!5292030 (not c!918114)) b!5292029))

(assert (= (and b!5292027 res!2244394) b!5292024))

(assert (= (and b!5292029 (not res!2244393)) b!5292023))

(assert (= (and b!5292023 res!2244397) b!5292025))

(assert (= (or b!5292024 b!5292025) bm!377165))

(assert (= (or b!5292027 b!5292023) bm!377166))

(assert (= (or b!5292031 bm!377166) bm!377167))

(declare-fun m!6329568 () Bool)

(assert (=> bm!377165 m!6329568))

(declare-fun m!6329570 () Bool)

(assert (=> b!5292026 m!6329570))

(declare-fun m!6329572 () Bool)

(assert (=> bm!377167 m!6329572))

(assert (=> start!558422 d!1702482))

(declare-fun d!1702484 () Bool)

(declare-fun lt!2162323 () Int)

(assert (=> d!1702484 (>= lt!2162323 0)))

(declare-fun e!3289822 () Int)

(assert (=> d!1702484 (= lt!2162323 e!3289822)))

(declare-fun c!918118 () Bool)

(assert (=> d!1702484 (= c!918118 ((_ is Cons!60952) lt!2162137))))

(assert (=> d!1702484 (= (zipperDepthTotal!86 lt!2162137) lt!2162323)))

(declare-fun b!5292036 () Bool)

(assert (=> b!5292036 (= e!3289822 (+ (contextDepthTotal!66 (h!67400 lt!2162137)) (zipperDepthTotal!86 (t!374281 lt!2162137))))))

(declare-fun b!5292037 () Bool)

(assert (=> b!5292037 (= e!3289822 0)))

(assert (= (and d!1702484 c!918118) b!5292036))

(assert (= (and d!1702484 (not c!918118)) b!5292037))

(declare-fun m!6329574 () Bool)

(assert (=> b!5292036 m!6329574))

(declare-fun m!6329576 () Bool)

(assert (=> b!5292036 m!6329576))

(assert (=> b!5291106 d!1702484))

(declare-fun d!1702486 () Bool)

(declare-fun lt!2162324 () Int)

(assert (=> d!1702486 (>= lt!2162324 0)))

(declare-fun e!3289823 () Int)

(assert (=> d!1702486 (= lt!2162324 e!3289823)))

(declare-fun c!918119 () Bool)

(assert (=> d!1702486 (= c!918119 ((_ is Cons!60952) zl!343))))

(assert (=> d!1702486 (= (zipperDepthTotal!86 zl!343) lt!2162324)))

(declare-fun b!5292038 () Bool)

(assert (=> b!5292038 (= e!3289823 (+ (contextDepthTotal!66 (h!67400 zl!343)) (zipperDepthTotal!86 (t!374281 zl!343))))))

(declare-fun b!5292039 () Bool)

(assert (=> b!5292039 (= e!3289823 0)))

(assert (= (and d!1702486 c!918119) b!5292038))

(assert (= (and d!1702486 (not c!918119)) b!5292039))

(assert (=> b!5292038 m!6328526))

(declare-fun m!6329578 () Bool)

(assert (=> b!5292038 m!6329578))

(assert (=> b!5291106 d!1702486))

(declare-fun e!3289824 () Bool)

(declare-fun d!1702488 () Bool)

(assert (=> d!1702488 (= (matchZipper!1169 ((_ map or) lt!2162113 lt!2162130) (t!374279 s!2326)) e!3289824)))

(declare-fun res!2244398 () Bool)

(assert (=> d!1702488 (=> res!2244398 e!3289824)))

(assert (=> d!1702488 (= res!2244398 (matchZipper!1169 lt!2162113 (t!374279 s!2326)))))

(declare-fun lt!2162325 () Unit!153218)

(assert (=> d!1702488 (= lt!2162325 (choose!39513 lt!2162113 lt!2162130 (t!374279 s!2326)))))

(assert (=> d!1702488 (= (lemmaZipperConcatMatchesSameAsBothZippers!162 lt!2162113 lt!2162130 (t!374279 s!2326)) lt!2162325)))

(declare-fun b!5292040 () Bool)

(assert (=> b!5292040 (= e!3289824 (matchZipper!1169 lt!2162130 (t!374279 s!2326)))))

(assert (= (and d!1702488 (not res!2244398)) b!5292040))

(assert (=> d!1702488 m!6328596))

(assert (=> d!1702488 m!6328594))

(declare-fun m!6329580 () Bool)

(assert (=> d!1702488 m!6329580))

(assert (=> b!5292040 m!6328600))

(assert (=> b!5291095 d!1702488))

(assert (=> b!5291095 d!1702464))

(declare-fun d!1702490 () Bool)

(declare-fun c!918120 () Bool)

(assert (=> d!1702490 (= c!918120 (isEmpty!32908 (t!374279 s!2326)))))

(declare-fun e!3289825 () Bool)

(assert (=> d!1702490 (= (matchZipper!1169 ((_ map or) lt!2162113 lt!2162130) (t!374279 s!2326)) e!3289825)))

(declare-fun b!5292041 () Bool)

(assert (=> b!5292041 (= e!3289825 (nullableZipper!1310 ((_ map or) lt!2162113 lt!2162130)))))

(declare-fun b!5292042 () Bool)

(assert (=> b!5292042 (= e!3289825 (matchZipper!1169 (derivationStepZipper!1168 ((_ map or) lt!2162113 lt!2162130) (head!11338 (t!374279 s!2326))) (tail!10435 (t!374279 s!2326))))))

(assert (= (and d!1702490 c!918120) b!5292041))

(assert (= (and d!1702490 (not c!918120)) b!5292042))

(assert (=> d!1702490 m!6329110))

(declare-fun m!6329582 () Bool)

(assert (=> b!5292041 m!6329582))

(assert (=> b!5292042 m!6329122))

(assert (=> b!5292042 m!6329122))

(declare-fun m!6329584 () Bool)

(assert (=> b!5292042 m!6329584))

(assert (=> b!5292042 m!6329130))

(assert (=> b!5292042 m!6329584))

(assert (=> b!5292042 m!6329130))

(declare-fun m!6329586 () Bool)

(assert (=> b!5292042 m!6329586))

(assert (=> b!5291095 d!1702490))

(declare-fun bs!1227458 () Bool)

(declare-fun b!5292046 () Bool)

(assert (= bs!1227458 (and b!5292046 d!1702444)))

(declare-fun lambda!268012 () Int)

(assert (=> bs!1227458 (not (= lambda!268012 lambda!268003))))

(declare-fun bs!1227459 () Bool)

(assert (= bs!1227459 (and b!5292046 b!5291083)))

(assert (=> bs!1227459 (not (= lambda!268012 lambda!267907))))

(declare-fun bs!1227460 () Bool)

(assert (= bs!1227460 (and b!5292046 d!1702446)))

(assert (=> bs!1227460 (not (= lambda!268012 lambda!268005))))

(declare-fun bs!1227461 () Bool)

(assert (= bs!1227461 (and b!5292046 d!1702296)))

(assert (=> bs!1227461 (not (= lambda!268012 lambda!267965))))

(declare-fun bs!1227462 () Bool)

(assert (= bs!1227462 (and b!5292046 b!5291881)))

(assert (=> bs!1227462 (not (= lambda!268012 lambda!268000))))

(declare-fun bs!1227463 () Bool)

(assert (= bs!1227463 (and b!5292046 b!5291876)))

(assert (=> bs!1227463 (= (and (= (reg!15254 r!7292) (reg!15254 lt!2162145)) (= r!7292 lt!2162145)) (= lambda!268012 lambda!267999))))

(declare-fun bs!1227464 () Bool)

(assert (= bs!1227464 (and b!5292046 b!5291098)))

(assert (=> bs!1227464 (not (= lambda!268012 lambda!267903))))

(assert (=> bs!1227461 (not (= lambda!268012 lambda!267964))))

(assert (=> bs!1227459 (not (= lambda!268012 lambda!267906))))

(declare-fun bs!1227465 () Bool)

(assert (= bs!1227465 (and b!5292046 d!1702440)))

(assert (=> bs!1227465 (not (= lambda!268012 lambda!268002))))

(declare-fun bs!1227466 () Bool)

(assert (= bs!1227466 (and b!5292046 b!5291786)))

(assert (=> bs!1227466 (not (= lambda!268012 lambda!267994))))

(assert (=> bs!1227464 (not (= lambda!268012 lambda!267904))))

(declare-fun bs!1227467 () Bool)

(assert (= bs!1227467 (and b!5292046 d!1702280)))

(assert (=> bs!1227467 (not (= lambda!268012 lambda!267953))))

(assert (=> bs!1227459 (not (= lambda!268012 lambda!267908))))

(declare-fun bs!1227468 () Bool)

(assert (= bs!1227468 (and b!5292046 b!5291781)))

(assert (=> bs!1227468 (= (and (= (reg!15254 r!7292) (reg!15254 lt!2162131)) (= r!7292 lt!2162131)) (= lambda!268012 lambda!267993))))

(assert (=> bs!1227458 (not (= lambda!268012 lambda!268004))))

(assert (=> b!5292046 true))

(assert (=> b!5292046 true))

(declare-fun bs!1227469 () Bool)

(declare-fun b!5292051 () Bool)

(assert (= bs!1227469 (and b!5292051 d!1702444)))

(declare-fun lambda!268013 () Int)

(assert (=> bs!1227469 (not (= lambda!268013 lambda!268003))))

(declare-fun bs!1227470 () Bool)

(assert (= bs!1227470 (and b!5292051 b!5291083)))

(assert (=> bs!1227470 (= (and (= (regOne!30362 r!7292) (regOne!30362 (regOne!30362 r!7292))) (= (regTwo!30362 r!7292) lt!2162145)) (= lambda!268013 lambda!267907))))

(declare-fun bs!1227471 () Bool)

(assert (= bs!1227471 (and b!5292051 d!1702446)))

(assert (=> bs!1227471 (not (= lambda!268013 lambda!268005))))

(declare-fun bs!1227472 () Bool)

(assert (= bs!1227472 (and b!5292051 d!1702296)))

(assert (=> bs!1227472 (= lambda!268013 lambda!267965)))

(declare-fun bs!1227473 () Bool)

(assert (= bs!1227473 (and b!5292051 b!5291881)))

(assert (=> bs!1227473 (= (and (= (regOne!30362 r!7292) (regOne!30362 lt!2162145)) (= (regTwo!30362 r!7292) (regTwo!30362 lt!2162145))) (= lambda!268013 lambda!268000))))

(declare-fun bs!1227474 () Bool)

(assert (= bs!1227474 (and b!5292051 b!5291876)))

(assert (=> bs!1227474 (not (= lambda!268013 lambda!267999))))

(declare-fun bs!1227475 () Bool)

(assert (= bs!1227475 (and b!5292051 b!5291098)))

(assert (=> bs!1227475 (not (= lambda!268013 lambda!267903))))

(assert (=> bs!1227472 (not (= lambda!268013 lambda!267964))))

(assert (=> bs!1227470 (not (= lambda!268013 lambda!267906))))

(declare-fun bs!1227476 () Bool)

(assert (= bs!1227476 (and b!5292051 d!1702440)))

(assert (=> bs!1227476 (not (= lambda!268013 lambda!268002))))

(declare-fun bs!1227477 () Bool)

(assert (= bs!1227477 (and b!5292051 b!5291786)))

(assert (=> bs!1227477 (= (and (= (regOne!30362 r!7292) (regOne!30362 lt!2162131)) (= (regTwo!30362 r!7292) (regTwo!30362 lt!2162131))) (= lambda!268013 lambda!267994))))

(assert (=> bs!1227475 (= lambda!268013 lambda!267904)))

(declare-fun bs!1227478 () Bool)

(assert (= bs!1227478 (and b!5292051 b!5292046)))

(assert (=> bs!1227478 (not (= lambda!268013 lambda!268012))))

(declare-fun bs!1227479 () Bool)

(assert (= bs!1227479 (and b!5292051 d!1702280)))

(assert (=> bs!1227479 (not (= lambda!268013 lambda!267953))))

(assert (=> bs!1227470 (not (= lambda!268013 lambda!267908))))

(declare-fun bs!1227480 () Bool)

(assert (= bs!1227480 (and b!5292051 b!5291781)))

(assert (=> bs!1227480 (not (= lambda!268013 lambda!267993))))

(assert (=> bs!1227469 (= (and (= (regOne!30362 r!7292) (regOne!30362 (regOne!30362 r!7292))) (= (regTwo!30362 r!7292) lt!2162145)) (= lambda!268013 lambda!268004))))

(assert (=> b!5292051 true))

(assert (=> b!5292051 true))

(declare-fun b!5292043 () Bool)

(declare-fun c!918122 () Bool)

(assert (=> b!5292043 (= c!918122 ((_ is Union!14925) r!7292))))

(declare-fun e!3289828 () Bool)

(declare-fun e!3289827 () Bool)

(assert (=> b!5292043 (= e!3289828 e!3289827)))

(declare-fun b!5292044 () Bool)

(declare-fun res!2244401 () Bool)

(declare-fun e!3289830 () Bool)

(assert (=> b!5292044 (=> res!2244401 e!3289830)))

(declare-fun call!377174 () Bool)

(assert (=> b!5292044 (= res!2244401 call!377174)))

(declare-fun e!3289826 () Bool)

(assert (=> b!5292044 (= e!3289826 e!3289830)))

(declare-fun d!1702492 () Bool)

(declare-fun c!918123 () Bool)

(assert (=> d!1702492 (= c!918123 ((_ is EmptyExpr!14925) r!7292))))

(declare-fun e!3289832 () Bool)

(assert (=> d!1702492 (= (matchRSpec!2028 r!7292 s!2326) e!3289832)))

(declare-fun b!5292045 () Bool)

(declare-fun e!3289829 () Bool)

(assert (=> b!5292045 (= e!3289832 e!3289829)))

(declare-fun res!2244399 () Bool)

(assert (=> b!5292045 (= res!2244399 (not ((_ is EmptyLang!14925) r!7292)))))

(assert (=> b!5292045 (=> (not res!2244399) (not e!3289829))))

(declare-fun call!377173 () Bool)

(assert (=> b!5292046 (= e!3289830 call!377173)))

(declare-fun b!5292047 () Bool)

(assert (=> b!5292047 (= e!3289827 e!3289826)))

(declare-fun c!918121 () Bool)

(assert (=> b!5292047 (= c!918121 ((_ is Star!14925) r!7292))))

(declare-fun b!5292048 () Bool)

(assert (=> b!5292048 (= e!3289828 (= s!2326 (Cons!60950 (c!917825 r!7292) Nil!60950)))))

(declare-fun bm!377168 () Bool)

(assert (=> bm!377168 (= call!377173 (Exists!2106 (ite c!918121 lambda!268012 lambda!268013)))))

(declare-fun b!5292049 () Bool)

(assert (=> b!5292049 (= e!3289832 call!377174)))

(declare-fun b!5292050 () Bool)

(declare-fun e!3289831 () Bool)

(assert (=> b!5292050 (= e!3289831 (matchRSpec!2028 (regTwo!30363 r!7292) s!2326))))

(assert (=> b!5292051 (= e!3289826 call!377173)))

(declare-fun b!5292052 () Bool)

(declare-fun c!918124 () Bool)

(assert (=> b!5292052 (= c!918124 ((_ is ElementMatch!14925) r!7292))))

(assert (=> b!5292052 (= e!3289829 e!3289828)))

(declare-fun bm!377169 () Bool)

(assert (=> bm!377169 (= call!377174 (isEmpty!32908 s!2326))))

(declare-fun b!5292053 () Bool)

(assert (=> b!5292053 (= e!3289827 e!3289831)))

(declare-fun res!2244400 () Bool)

(assert (=> b!5292053 (= res!2244400 (matchRSpec!2028 (regOne!30363 r!7292) s!2326))))

(assert (=> b!5292053 (=> res!2244400 e!3289831)))

(assert (= (and d!1702492 c!918123) b!5292049))

(assert (= (and d!1702492 (not c!918123)) b!5292045))

(assert (= (and b!5292045 res!2244399) b!5292052))

(assert (= (and b!5292052 c!918124) b!5292048))

(assert (= (and b!5292052 (not c!918124)) b!5292043))

(assert (= (and b!5292043 c!918122) b!5292053))

(assert (= (and b!5292043 (not c!918122)) b!5292047))

(assert (= (and b!5292053 (not res!2244400)) b!5292050))

(assert (= (and b!5292047 c!918121) b!5292044))

(assert (= (and b!5292047 (not c!918121)) b!5292051))

(assert (= (and b!5292044 (not res!2244401)) b!5292046))

(assert (= (or b!5292046 b!5292051) bm!377168))

(assert (= (or b!5292049 b!5292044) bm!377169))

(declare-fun m!6329588 () Bool)

(assert (=> bm!377168 m!6329588))

(declare-fun m!6329590 () Bool)

(assert (=> b!5292050 m!6329590))

(assert (=> bm!377169 m!6329314))

(declare-fun m!6329592 () Bool)

(assert (=> b!5292053 m!6329592))

(assert (=> b!5291093 d!1702492))

(declare-fun b!5292054 () Bool)

(declare-fun e!3289837 () Bool)

(assert (=> b!5292054 (= e!3289837 (not (= (head!11338 s!2326) (c!917825 r!7292))))))

(declare-fun b!5292055 () Bool)

(declare-fun e!3289836 () Bool)

(declare-fun e!3289835 () Bool)

(assert (=> b!5292055 (= e!3289836 e!3289835)))

(declare-fun res!2244404 () Bool)

(assert (=> b!5292055 (=> (not res!2244404) (not e!3289835))))

(declare-fun lt!2162326 () Bool)

(assert (=> b!5292055 (= res!2244404 (not lt!2162326))))

(declare-fun b!5292056 () Bool)

(declare-fun e!3289833 () Bool)

(assert (=> b!5292056 (= e!3289833 (= (head!11338 s!2326) (c!917825 r!7292)))))

(declare-fun b!5292057 () Bool)

(declare-fun e!3289839 () Bool)

(assert (=> b!5292057 (= e!3289839 (not lt!2162326))))

(declare-fun d!1702494 () Bool)

(declare-fun e!3289834 () Bool)

(assert (=> d!1702494 e!3289834))

(declare-fun c!918126 () Bool)

(assert (=> d!1702494 (= c!918126 ((_ is EmptyExpr!14925) r!7292))))

(declare-fun e!3289838 () Bool)

(assert (=> d!1702494 (= lt!2162326 e!3289838)))

(declare-fun c!918125 () Bool)

(assert (=> d!1702494 (= c!918125 (isEmpty!32908 s!2326))))

(assert (=> d!1702494 (validRegex!6661 r!7292)))

(assert (=> d!1702494 (= (matchR!7110 r!7292 s!2326) lt!2162326)))

(declare-fun bm!377170 () Bool)

(declare-fun call!377175 () Bool)

(assert (=> bm!377170 (= call!377175 (isEmpty!32908 s!2326))))

(declare-fun b!5292058 () Bool)

(declare-fun res!2244407 () Bool)

(assert (=> b!5292058 (=> (not res!2244407) (not e!3289833))))

(assert (=> b!5292058 (= res!2244407 (not call!377175))))

(declare-fun b!5292059 () Bool)

(assert (=> b!5292059 (= e!3289838 (matchR!7110 (derivativeStep!4131 r!7292 (head!11338 s!2326)) (tail!10435 s!2326)))))

(declare-fun b!5292060 () Bool)

(declare-fun res!2244402 () Bool)

(assert (=> b!5292060 (=> res!2244402 e!3289836)))

(assert (=> b!5292060 (= res!2244402 (not ((_ is ElementMatch!14925) r!7292)))))

(assert (=> b!5292060 (= e!3289839 e!3289836)))

(declare-fun b!5292061 () Bool)

(declare-fun res!2244403 () Bool)

(assert (=> b!5292061 (=> res!2244403 e!3289836)))

(assert (=> b!5292061 (= res!2244403 e!3289833)))

(declare-fun res!2244405 () Bool)

(assert (=> b!5292061 (=> (not res!2244405) (not e!3289833))))

(assert (=> b!5292061 (= res!2244405 lt!2162326)))

(declare-fun b!5292062 () Bool)

(assert (=> b!5292062 (= e!3289834 (= lt!2162326 call!377175))))

(declare-fun b!5292063 () Bool)

(declare-fun res!2244409 () Bool)

(assert (=> b!5292063 (=> (not res!2244409) (not e!3289833))))

(assert (=> b!5292063 (= res!2244409 (isEmpty!32908 (tail!10435 s!2326)))))

(declare-fun b!5292064 () Bool)

(assert (=> b!5292064 (= e!3289838 (nullable!5094 r!7292))))

(declare-fun b!5292065 () Bool)

(assert (=> b!5292065 (= e!3289834 e!3289839)))

(declare-fun c!918127 () Bool)

(assert (=> b!5292065 (= c!918127 ((_ is EmptyLang!14925) r!7292))))

(declare-fun b!5292066 () Bool)

(assert (=> b!5292066 (= e!3289835 e!3289837)))

(declare-fun res!2244408 () Bool)

(assert (=> b!5292066 (=> res!2244408 e!3289837)))

(assert (=> b!5292066 (= res!2244408 call!377175)))

(declare-fun b!5292067 () Bool)

(declare-fun res!2244406 () Bool)

(assert (=> b!5292067 (=> res!2244406 e!3289837)))

(assert (=> b!5292067 (= res!2244406 (not (isEmpty!32908 (tail!10435 s!2326))))))

(assert (= (and d!1702494 c!918125) b!5292064))

(assert (= (and d!1702494 (not c!918125)) b!5292059))

(assert (= (and d!1702494 c!918126) b!5292062))

(assert (= (and d!1702494 (not c!918126)) b!5292065))

(assert (= (and b!5292065 c!918127) b!5292057))

(assert (= (and b!5292065 (not c!918127)) b!5292060))

(assert (= (and b!5292060 (not res!2244402)) b!5292061))

(assert (= (and b!5292061 res!2244405) b!5292058))

(assert (= (and b!5292058 res!2244407) b!5292063))

(assert (= (and b!5292063 res!2244409) b!5292056))

(assert (= (and b!5292061 (not res!2244403)) b!5292055))

(assert (= (and b!5292055 res!2244404) b!5292066))

(assert (= (and b!5292066 (not res!2244408)) b!5292067))

(assert (= (and b!5292067 (not res!2244406)) b!5292054))

(assert (= (or b!5292062 b!5292058 b!5292066) bm!377170))

(assert (=> bm!377170 m!6329314))

(assert (=> d!1702494 m!6329314))

(assert (=> d!1702494 m!6328542))

(assert (=> b!5292067 m!6329358))

(assert (=> b!5292067 m!6329358))

(assert (=> b!5292067 m!6329360))

(assert (=> b!5292054 m!6329362))

(assert (=> b!5292063 m!6329358))

(assert (=> b!5292063 m!6329358))

(assert (=> b!5292063 m!6329360))

(assert (=> b!5292059 m!6329362))

(assert (=> b!5292059 m!6329362))

(declare-fun m!6329594 () Bool)

(assert (=> b!5292059 m!6329594))

(assert (=> b!5292059 m!6329358))

(assert (=> b!5292059 m!6329594))

(assert (=> b!5292059 m!6329358))

(declare-fun m!6329596 () Bool)

(assert (=> b!5292059 m!6329596))

(assert (=> b!5292056 m!6329362))

(declare-fun m!6329598 () Bool)

(assert (=> b!5292064 m!6329598))

(assert (=> b!5291093 d!1702494))

(declare-fun d!1702496 () Bool)

(assert (=> d!1702496 (= (matchR!7110 r!7292 s!2326) (matchRSpec!2028 r!7292 s!2326))))

(declare-fun lt!2162327 () Unit!153218)

(assert (=> d!1702496 (= lt!2162327 (choose!39517 r!7292 s!2326))))

(assert (=> d!1702496 (validRegex!6661 r!7292)))

(assert (=> d!1702496 (= (mainMatchTheorem!2028 r!7292 s!2326) lt!2162327)))

(declare-fun bs!1227481 () Bool)

(assert (= bs!1227481 d!1702496))

(assert (=> bs!1227481 m!6328532))

(assert (=> bs!1227481 m!6328530))

(declare-fun m!6329600 () Bool)

(assert (=> bs!1227481 m!6329600))

(assert (=> bs!1227481 m!6328542))

(assert (=> b!5291093 d!1702496))

(declare-fun bs!1227482 () Bool)

(declare-fun d!1702498 () Bool)

(assert (= bs!1227482 (and d!1702498 d!1702408)))

(declare-fun lambda!268016 () Int)

(assert (=> bs!1227482 (= lambda!268016 lambda!267998)))

(declare-fun bs!1227483 () Bool)

(assert (= bs!1227483 (and d!1702498 d!1702480)))

(assert (=> bs!1227483 (= lambda!268016 lambda!268011)))

(declare-fun bs!1227484 () Bool)

(assert (= bs!1227484 (and d!1702498 d!1702406)))

(assert (=> bs!1227484 (= lambda!268016 lambda!267997)))

(declare-fun bs!1227485 () Bool)

(assert (= bs!1227485 (and d!1702498 d!1702420)))

(assert (=> bs!1227485 (= lambda!268016 lambda!268001)))

(declare-fun bs!1227486 () Bool)

(assert (= bs!1227486 (and d!1702498 b!5291083)))

(assert (=> bs!1227486 (= lambda!268016 lambda!267909)))

(declare-fun bs!1227487 () Bool)

(assert (= bs!1227487 (and d!1702498 d!1702456)))

(assert (=> bs!1227487 (= lambda!268016 lambda!268009)))

(declare-fun bs!1227488 () Bool)

(assert (= bs!1227488 (and d!1702498 d!1702450)))

(assert (=> bs!1227488 (= lambda!268016 lambda!268006)))

(declare-fun b!5292088 () Bool)

(declare-fun e!3289857 () Bool)

(declare-fun lt!2162330 () Regex!14925)

(declare-fun isEmptyLang!853 (Regex!14925) Bool)

(assert (=> b!5292088 (= e!3289857 (isEmptyLang!853 lt!2162330))))

(declare-fun b!5292089 () Bool)

(declare-fun e!3289854 () Bool)

(declare-fun isUnion!285 (Regex!14925) Bool)

(assert (=> b!5292089 (= e!3289854 (isUnion!285 lt!2162330))))

(declare-fun e!3289856 () Bool)

(assert (=> d!1702498 e!3289856))

(declare-fun res!2244414 () Bool)

(assert (=> d!1702498 (=> (not res!2244414) (not e!3289856))))

(assert (=> d!1702498 (= res!2244414 (validRegex!6661 lt!2162330))))

(declare-fun e!3289852 () Regex!14925)

(assert (=> d!1702498 (= lt!2162330 e!3289852)))

(declare-fun c!918139 () Bool)

(declare-fun e!3289855 () Bool)

(assert (=> d!1702498 (= c!918139 e!3289855)))

(declare-fun res!2244415 () Bool)

(assert (=> d!1702498 (=> (not res!2244415) (not e!3289855))))

(assert (=> d!1702498 (= res!2244415 ((_ is Cons!60951) (unfocusZipperList!367 zl!343)))))

(assert (=> d!1702498 (forall!14333 (unfocusZipperList!367 zl!343) lambda!268016)))

(assert (=> d!1702498 (= (generalisedUnion!854 (unfocusZipperList!367 zl!343)) lt!2162330)))

(declare-fun b!5292090 () Bool)

(declare-fun e!3289853 () Regex!14925)

(assert (=> b!5292090 (= e!3289852 e!3289853)))

(declare-fun c!918137 () Bool)

(assert (=> b!5292090 (= c!918137 ((_ is Cons!60951) (unfocusZipperList!367 zl!343)))))

(declare-fun b!5292091 () Bool)

(assert (=> b!5292091 (= e!3289852 (h!67399 (unfocusZipperList!367 zl!343)))))

(declare-fun b!5292092 () Bool)

(assert (=> b!5292092 (= e!3289854 (= lt!2162330 (head!11339 (unfocusZipperList!367 zl!343))))))

(declare-fun b!5292093 () Bool)

(assert (=> b!5292093 (= e!3289857 e!3289854)))

(declare-fun c!918138 () Bool)

(assert (=> b!5292093 (= c!918138 (isEmpty!32904 (tail!10436 (unfocusZipperList!367 zl!343))))))

(declare-fun b!5292094 () Bool)

(assert (=> b!5292094 (= e!3289855 (isEmpty!32904 (t!374280 (unfocusZipperList!367 zl!343))))))

(declare-fun b!5292095 () Bool)

(assert (=> b!5292095 (= e!3289853 EmptyLang!14925)))

(declare-fun b!5292096 () Bool)

(assert (=> b!5292096 (= e!3289856 e!3289857)))

(declare-fun c!918136 () Bool)

(assert (=> b!5292096 (= c!918136 (isEmpty!32904 (unfocusZipperList!367 zl!343)))))

(declare-fun b!5292097 () Bool)

(assert (=> b!5292097 (= e!3289853 (Union!14925 (h!67399 (unfocusZipperList!367 zl!343)) (generalisedUnion!854 (t!374280 (unfocusZipperList!367 zl!343)))))))

(assert (= (and d!1702498 res!2244415) b!5292094))

(assert (= (and d!1702498 c!918139) b!5292091))

(assert (= (and d!1702498 (not c!918139)) b!5292090))

(assert (= (and b!5292090 c!918137) b!5292097))

(assert (= (and b!5292090 (not c!918137)) b!5292095))

(assert (= (and d!1702498 res!2244414) b!5292096))

(assert (= (and b!5292096 c!918136) b!5292088))

(assert (= (and b!5292096 (not c!918136)) b!5292093))

(assert (= (and b!5292093 c!918138) b!5292092))

(assert (= (and b!5292093 (not c!918138)) b!5292089))

(assert (=> b!5292093 m!6328566))

(declare-fun m!6329602 () Bool)

(assert (=> b!5292093 m!6329602))

(assert (=> b!5292093 m!6329602))

(declare-fun m!6329604 () Bool)

(assert (=> b!5292093 m!6329604))

(declare-fun m!6329606 () Bool)

(assert (=> b!5292094 m!6329606))

(declare-fun m!6329608 () Bool)

(assert (=> b!5292089 m!6329608))

(declare-fun m!6329610 () Bool)

(assert (=> b!5292097 m!6329610))

(assert (=> b!5292092 m!6328566))

(declare-fun m!6329612 () Bool)

(assert (=> b!5292092 m!6329612))

(assert (=> b!5292096 m!6328566))

(declare-fun m!6329614 () Bool)

(assert (=> b!5292096 m!6329614))

(declare-fun m!6329616 () Bool)

(assert (=> b!5292088 m!6329616))

(declare-fun m!6329618 () Bool)

(assert (=> d!1702498 m!6329618))

(assert (=> d!1702498 m!6328566))

(declare-fun m!6329620 () Bool)

(assert (=> d!1702498 m!6329620))

(assert (=> b!5291092 d!1702498))

(declare-fun bs!1227489 () Bool)

(declare-fun d!1702500 () Bool)

(assert (= bs!1227489 (and d!1702500 d!1702408)))

(declare-fun lambda!268019 () Int)

(assert (=> bs!1227489 (= lambda!268019 lambda!267998)))

(declare-fun bs!1227490 () Bool)

(assert (= bs!1227490 (and d!1702500 d!1702480)))

(assert (=> bs!1227490 (= lambda!268019 lambda!268011)))

(declare-fun bs!1227491 () Bool)

(assert (= bs!1227491 (and d!1702500 d!1702406)))

(assert (=> bs!1227491 (= lambda!268019 lambda!267997)))

(declare-fun bs!1227492 () Bool)

(assert (= bs!1227492 (and d!1702500 d!1702420)))

(assert (=> bs!1227492 (= lambda!268019 lambda!268001)))

(declare-fun bs!1227493 () Bool)

(assert (= bs!1227493 (and d!1702500 b!5291083)))

(assert (=> bs!1227493 (= lambda!268019 lambda!267909)))

(declare-fun bs!1227494 () Bool)

(assert (= bs!1227494 (and d!1702500 d!1702456)))

(assert (=> bs!1227494 (= lambda!268019 lambda!268009)))

(declare-fun bs!1227495 () Bool)

(assert (= bs!1227495 (and d!1702500 d!1702498)))

(assert (=> bs!1227495 (= lambda!268019 lambda!268016)))

(declare-fun bs!1227496 () Bool)

(assert (= bs!1227496 (and d!1702500 d!1702450)))

(assert (=> bs!1227496 (= lambda!268019 lambda!268006)))

(declare-fun lt!2162333 () List!61075)

(assert (=> d!1702500 (forall!14333 lt!2162333 lambda!268019)))

(declare-fun e!3289860 () List!61075)

(assert (=> d!1702500 (= lt!2162333 e!3289860)))

(declare-fun c!918142 () Bool)

(assert (=> d!1702500 (= c!918142 ((_ is Cons!60952) zl!343))))

(assert (=> d!1702500 (= (unfocusZipperList!367 zl!343) lt!2162333)))

(declare-fun b!5292102 () Bool)

(assert (=> b!5292102 (= e!3289860 (Cons!60951 (generalisedConcat!594 (exprs!4809 (h!67400 zl!343))) (unfocusZipperList!367 (t!374281 zl!343))))))

(declare-fun b!5292103 () Bool)

(assert (=> b!5292103 (= e!3289860 Nil!60951)))

(assert (= (and d!1702500 c!918142) b!5292102))

(assert (= (and d!1702500 (not c!918142)) b!5292103))

(declare-fun m!6329622 () Bool)

(assert (=> d!1702500 m!6329622))

(assert (=> b!5292102 m!6328536))

(declare-fun m!6329624 () Bool)

(assert (=> b!5292102 m!6329624))

(assert (=> b!5291092 d!1702500))

(declare-fun d!1702502 () Bool)

(declare-fun nullableFct!1462 (Regex!14925) Bool)

(assert (=> d!1702502 (= (nullable!5094 (regOne!30362 (regOne!30362 r!7292))) (nullableFct!1462 (regOne!30362 (regOne!30362 r!7292))))))

(declare-fun bs!1227497 () Bool)

(assert (= bs!1227497 d!1702502))

(declare-fun m!6329626 () Bool)

(assert (=> bs!1227497 m!6329626))

(assert (=> b!5291090 d!1702502))

(declare-fun d!1702504 () Bool)

(assert (=> d!1702504 (= (flatMap!652 z!1189 lambda!267905) (dynLambda!24101 lambda!267905 (h!67400 zl!343)))))

(declare-fun lt!2162334 () Unit!153218)

(assert (=> d!1702504 (= lt!2162334 (choose!39512 z!1189 (h!67400 zl!343) lambda!267905))))

(assert (=> d!1702504 (= z!1189 (store ((as const (Array Context!8618 Bool)) false) (h!67400 zl!343) true))))

(assert (=> d!1702504 (= (lemmaFlatMapOnSingletonSet!184 z!1189 (h!67400 zl!343) lambda!267905) lt!2162334)))

(declare-fun b_lambda!204091 () Bool)

(assert (=> (not b_lambda!204091) (not d!1702504)))

(declare-fun bs!1227498 () Bool)

(assert (= bs!1227498 d!1702504))

(assert (=> bs!1227498 m!6328590))

(declare-fun m!6329628 () Bool)

(assert (=> bs!1227498 m!6329628))

(declare-fun m!6329630 () Bool)

(assert (=> bs!1227498 m!6329630))

(declare-fun m!6329632 () Bool)

(assert (=> bs!1227498 m!6329632))

(assert (=> b!5291091 d!1702504))

(declare-fun d!1702506 () Bool)

(assert (=> d!1702506 (= (flatMap!652 z!1189 lambda!267905) (choose!39514 z!1189 lambda!267905))))

(declare-fun bs!1227499 () Bool)

(assert (= bs!1227499 d!1702506))

(declare-fun m!6329634 () Bool)

(assert (=> bs!1227499 m!6329634))

(assert (=> b!5291091 d!1702506))

(declare-fun d!1702508 () Bool)

(assert (=> d!1702508 (= (nullable!5094 (h!67399 (exprs!4809 (h!67400 zl!343)))) (nullableFct!1462 (h!67399 (exprs!4809 (h!67400 zl!343)))))))

(declare-fun bs!1227500 () Bool)

(assert (= bs!1227500 d!1702508))

(declare-fun m!6329636 () Bool)

(assert (=> bs!1227500 m!6329636))

(assert (=> b!5291091 d!1702508))

(declare-fun bm!377171 () Bool)

(declare-fun call!377176 () (InoxSet Context!8618))

(assert (=> bm!377171 (= call!377176 (derivationStepZipperDown!373 (h!67399 (exprs!4809 (Context!8619 (Cons!60951 (h!67399 (exprs!4809 (h!67400 zl!343))) (t!374280 (exprs!4809 (h!67400 zl!343))))))) (Context!8619 (t!374280 (exprs!4809 (Context!8619 (Cons!60951 (h!67399 (exprs!4809 (h!67400 zl!343))) (t!374280 (exprs!4809 (h!67400 zl!343)))))))) (h!67398 s!2326)))))

(declare-fun b!5292104 () Bool)

(declare-fun e!3289863 () (InoxSet Context!8618))

(assert (=> b!5292104 (= e!3289863 call!377176)))

(declare-fun b!5292105 () Bool)

(declare-fun e!3289861 () (InoxSet Context!8618))

(assert (=> b!5292105 (= e!3289861 ((_ map or) call!377176 (derivationStepZipperUp!297 (Context!8619 (t!374280 (exprs!4809 (Context!8619 (Cons!60951 (h!67399 (exprs!4809 (h!67400 zl!343))) (t!374280 (exprs!4809 (h!67400 zl!343)))))))) (h!67398 s!2326))))))

(declare-fun b!5292106 () Bool)

(declare-fun e!3289862 () Bool)

(assert (=> b!5292106 (= e!3289862 (nullable!5094 (h!67399 (exprs!4809 (Context!8619 (Cons!60951 (h!67399 (exprs!4809 (h!67400 zl!343))) (t!374280 (exprs!4809 (h!67400 zl!343)))))))))))

(declare-fun b!5292107 () Bool)

(assert (=> b!5292107 (= e!3289861 e!3289863)))

(declare-fun c!918143 () Bool)

(assert (=> b!5292107 (= c!918143 ((_ is Cons!60951) (exprs!4809 (Context!8619 (Cons!60951 (h!67399 (exprs!4809 (h!67400 zl!343))) (t!374280 (exprs!4809 (h!67400 zl!343))))))))))

(declare-fun d!1702510 () Bool)

(declare-fun c!918144 () Bool)

(assert (=> d!1702510 (= c!918144 e!3289862)))

(declare-fun res!2244416 () Bool)

(assert (=> d!1702510 (=> (not res!2244416) (not e!3289862))))

(assert (=> d!1702510 (= res!2244416 ((_ is Cons!60951) (exprs!4809 (Context!8619 (Cons!60951 (h!67399 (exprs!4809 (h!67400 zl!343))) (t!374280 (exprs!4809 (h!67400 zl!343))))))))))

(assert (=> d!1702510 (= (derivationStepZipperUp!297 (Context!8619 (Cons!60951 (h!67399 (exprs!4809 (h!67400 zl!343))) (t!374280 (exprs!4809 (h!67400 zl!343))))) (h!67398 s!2326)) e!3289861)))

(declare-fun b!5292108 () Bool)

(assert (=> b!5292108 (= e!3289863 ((as const (Array Context!8618 Bool)) false))))

(assert (= (and d!1702510 res!2244416) b!5292106))

(assert (= (and d!1702510 c!918144) b!5292105))

(assert (= (and d!1702510 (not c!918144)) b!5292107))

(assert (= (and b!5292107 c!918143) b!5292104))

(assert (= (and b!5292107 (not c!918143)) b!5292108))

(assert (= (or b!5292105 b!5292104) bm!377171))

(declare-fun m!6329638 () Bool)

(assert (=> bm!377171 m!6329638))

(declare-fun m!6329640 () Bool)

(assert (=> b!5292105 m!6329640))

(declare-fun m!6329642 () Bool)

(assert (=> b!5292106 m!6329642))

(assert (=> b!5291091 d!1702510))

(declare-fun bm!377172 () Bool)

(declare-fun call!377177 () (InoxSet Context!8618))

(assert (=> bm!377172 (= call!377177 (derivationStepZipperDown!373 (h!67399 (exprs!4809 lt!2162151)) (Context!8619 (t!374280 (exprs!4809 lt!2162151))) (h!67398 s!2326)))))

(declare-fun b!5292109 () Bool)

(declare-fun e!3289866 () (InoxSet Context!8618))

(assert (=> b!5292109 (= e!3289866 call!377177)))

(declare-fun e!3289864 () (InoxSet Context!8618))

(declare-fun b!5292110 () Bool)

(assert (=> b!5292110 (= e!3289864 ((_ map or) call!377177 (derivationStepZipperUp!297 (Context!8619 (t!374280 (exprs!4809 lt!2162151))) (h!67398 s!2326))))))

(declare-fun b!5292111 () Bool)

(declare-fun e!3289865 () Bool)

(assert (=> b!5292111 (= e!3289865 (nullable!5094 (h!67399 (exprs!4809 lt!2162151))))))

(declare-fun b!5292112 () Bool)

(assert (=> b!5292112 (= e!3289864 e!3289866)))

(declare-fun c!918145 () Bool)

(assert (=> b!5292112 (= c!918145 ((_ is Cons!60951) (exprs!4809 lt!2162151)))))

(declare-fun d!1702512 () Bool)

(declare-fun c!918146 () Bool)

(assert (=> d!1702512 (= c!918146 e!3289865)))

(declare-fun res!2244417 () Bool)

(assert (=> d!1702512 (=> (not res!2244417) (not e!3289865))))

(assert (=> d!1702512 (= res!2244417 ((_ is Cons!60951) (exprs!4809 lt!2162151)))))

(assert (=> d!1702512 (= (derivationStepZipperUp!297 lt!2162151 (h!67398 s!2326)) e!3289864)))

(declare-fun b!5292113 () Bool)

(assert (=> b!5292113 (= e!3289866 ((as const (Array Context!8618 Bool)) false))))

(assert (= (and d!1702512 res!2244417) b!5292111))

(assert (= (and d!1702512 c!918146) b!5292110))

(assert (= (and d!1702512 (not c!918146)) b!5292112))

(assert (= (and b!5292112 c!918145) b!5292109))

(assert (= (and b!5292112 (not c!918145)) b!5292113))

(assert (= (or b!5292110 b!5292109) bm!377172))

(declare-fun m!6329644 () Bool)

(assert (=> bm!377172 m!6329644))

(declare-fun m!6329646 () Bool)

(assert (=> b!5292110 m!6329646))

(declare-fun m!6329648 () Bool)

(assert (=> b!5292111 m!6329648))

(assert (=> b!5291091 d!1702512))

(declare-fun bm!377173 () Bool)

(declare-fun call!377183 () (InoxSet Context!8618))

(declare-fun call!377181 () (InoxSet Context!8618))

(assert (=> bm!377173 (= call!377183 call!377181)))

(declare-fun b!5292114 () Bool)

(declare-fun c!918148 () Bool)

(assert (=> b!5292114 (= c!918148 ((_ is Star!14925) (h!67399 (exprs!4809 (h!67400 zl!343)))))))

(declare-fun e!3289867 () (InoxSet Context!8618))

(declare-fun e!3289871 () (InoxSet Context!8618))

(assert (=> b!5292114 (= e!3289867 e!3289871)))

(declare-fun d!1702514 () Bool)

(declare-fun c!918151 () Bool)

(assert (=> d!1702514 (= c!918151 (and ((_ is ElementMatch!14925) (h!67399 (exprs!4809 (h!67400 zl!343)))) (= (c!917825 (h!67399 (exprs!4809 (h!67400 zl!343)))) (h!67398 s!2326))))))

(declare-fun e!3289870 () (InoxSet Context!8618))

(assert (=> d!1702514 (= (derivationStepZipperDown!373 (h!67399 (exprs!4809 (h!67400 zl!343))) lt!2162151 (h!67398 s!2326)) e!3289870)))

(declare-fun bm!377174 () Bool)

(declare-fun call!377182 () List!61075)

(declare-fun call!377178 () List!61075)

(assert (=> bm!377174 (= call!377182 call!377178)))

(declare-fun b!5292115 () Bool)

(declare-fun e!3289868 () Bool)

(assert (=> b!5292115 (= e!3289868 (nullable!5094 (regOne!30362 (h!67399 (exprs!4809 (h!67400 zl!343))))))))

(declare-fun b!5292116 () Bool)

(assert (=> b!5292116 (= e!3289870 (store ((as const (Array Context!8618 Bool)) false) lt!2162151 true))))

(declare-fun b!5292117 () Bool)

(declare-fun e!3289872 () (InoxSet Context!8618))

(declare-fun call!377179 () (InoxSet Context!8618))

(assert (=> b!5292117 (= e!3289872 ((_ map or) call!377181 call!377179))))

(declare-fun b!5292118 () Bool)

(declare-fun e!3289869 () (InoxSet Context!8618))

(assert (=> b!5292118 (= e!3289869 e!3289867)))

(declare-fun c!918147 () Bool)

(assert (=> b!5292118 (= c!918147 ((_ is Concat!23770) (h!67399 (exprs!4809 (h!67400 zl!343)))))))

(declare-fun b!5292119 () Bool)

(assert (=> b!5292119 (= e!3289869 ((_ map or) call!377179 call!377183))))

(declare-fun b!5292120 () Bool)

(declare-fun call!377180 () (InoxSet Context!8618))

(assert (=> b!5292120 (= e!3289871 call!377180)))

(declare-fun bm!377175 () Bool)

(declare-fun c!918149 () Bool)

(assert (=> bm!377175 (= call!377178 ($colon$colon!1360 (exprs!4809 lt!2162151) (ite (or c!918149 c!918147) (regTwo!30362 (h!67399 (exprs!4809 (h!67400 zl!343)))) (h!67399 (exprs!4809 (h!67400 zl!343))))))))

(declare-fun bm!377176 () Bool)

(declare-fun c!918150 () Bool)

(assert (=> bm!377176 (= call!377181 (derivationStepZipperDown!373 (ite c!918150 (regOne!30363 (h!67399 (exprs!4809 (h!67400 zl!343)))) (ite c!918149 (regTwo!30362 (h!67399 (exprs!4809 (h!67400 zl!343)))) (ite c!918147 (regOne!30362 (h!67399 (exprs!4809 (h!67400 zl!343)))) (reg!15254 (h!67399 (exprs!4809 (h!67400 zl!343))))))) (ite (or c!918150 c!918149) lt!2162151 (Context!8619 call!377182)) (h!67398 s!2326)))))

(declare-fun b!5292121 () Bool)

(assert (=> b!5292121 (= e!3289871 ((as const (Array Context!8618 Bool)) false))))

(declare-fun b!5292122 () Bool)

(assert (=> b!5292122 (= c!918149 e!3289868)))

(declare-fun res!2244418 () Bool)

(assert (=> b!5292122 (=> (not res!2244418) (not e!3289868))))

(assert (=> b!5292122 (= res!2244418 ((_ is Concat!23770) (h!67399 (exprs!4809 (h!67400 zl!343)))))))

(assert (=> b!5292122 (= e!3289872 e!3289869)))

(declare-fun bm!377177 () Bool)

(assert (=> bm!377177 (= call!377180 call!377183)))

(declare-fun b!5292123 () Bool)

(assert (=> b!5292123 (= e!3289867 call!377180)))

(declare-fun b!5292124 () Bool)

(assert (=> b!5292124 (= e!3289870 e!3289872)))

(assert (=> b!5292124 (= c!918150 ((_ is Union!14925) (h!67399 (exprs!4809 (h!67400 zl!343)))))))

(declare-fun bm!377178 () Bool)

(assert (=> bm!377178 (= call!377179 (derivationStepZipperDown!373 (ite c!918150 (regTwo!30363 (h!67399 (exprs!4809 (h!67400 zl!343)))) (regOne!30362 (h!67399 (exprs!4809 (h!67400 zl!343))))) (ite c!918150 lt!2162151 (Context!8619 call!377178)) (h!67398 s!2326)))))

(assert (= (and d!1702514 c!918151) b!5292116))

(assert (= (and d!1702514 (not c!918151)) b!5292124))

(assert (= (and b!5292124 c!918150) b!5292117))

(assert (= (and b!5292124 (not c!918150)) b!5292122))

(assert (= (and b!5292122 res!2244418) b!5292115))

(assert (= (and b!5292122 c!918149) b!5292119))

(assert (= (and b!5292122 (not c!918149)) b!5292118))

(assert (= (and b!5292118 c!918147) b!5292123))

(assert (= (and b!5292118 (not c!918147)) b!5292114))

(assert (= (and b!5292114 c!918148) b!5292120))

(assert (= (and b!5292114 (not c!918148)) b!5292121))

(assert (= (or b!5292123 b!5292120) bm!377174))

(assert (= (or b!5292123 b!5292120) bm!377177))

(assert (= (or b!5292119 bm!377174) bm!377175))

(assert (= (or b!5292119 bm!377177) bm!377173))

(assert (= (or b!5292117 b!5292119) bm!377178))

(assert (= (or b!5292117 bm!377173) bm!377176))

(assert (=> b!5292116 m!6329512))

(declare-fun m!6329650 () Bool)

(assert (=> bm!377178 m!6329650))

(declare-fun m!6329652 () Bool)

(assert (=> bm!377175 m!6329652))

(declare-fun m!6329654 () Bool)

(assert (=> b!5292115 m!6329654))

(declare-fun m!6329656 () Bool)

(assert (=> bm!377176 m!6329656))

(assert (=> b!5291091 d!1702514))

(declare-fun bm!377179 () Bool)

(declare-fun call!377184 () (InoxSet Context!8618))

(assert (=> bm!377179 (= call!377184 (derivationStepZipperDown!373 (h!67399 (exprs!4809 (h!67400 zl!343))) (Context!8619 (t!374280 (exprs!4809 (h!67400 zl!343)))) (h!67398 s!2326)))))

(declare-fun b!5292125 () Bool)

(declare-fun e!3289875 () (InoxSet Context!8618))

(assert (=> b!5292125 (= e!3289875 call!377184)))

(declare-fun e!3289873 () (InoxSet Context!8618))

(declare-fun b!5292126 () Bool)

(assert (=> b!5292126 (= e!3289873 ((_ map or) call!377184 (derivationStepZipperUp!297 (Context!8619 (t!374280 (exprs!4809 (h!67400 zl!343)))) (h!67398 s!2326))))))

(declare-fun b!5292127 () Bool)

(declare-fun e!3289874 () Bool)

(assert (=> b!5292127 (= e!3289874 (nullable!5094 (h!67399 (exprs!4809 (h!67400 zl!343)))))))

(declare-fun b!5292128 () Bool)

(assert (=> b!5292128 (= e!3289873 e!3289875)))

(declare-fun c!918152 () Bool)

(assert (=> b!5292128 (= c!918152 ((_ is Cons!60951) (exprs!4809 (h!67400 zl!343))))))

(declare-fun d!1702516 () Bool)

(declare-fun c!918153 () Bool)

(assert (=> d!1702516 (= c!918153 e!3289874)))

(declare-fun res!2244419 () Bool)

(assert (=> d!1702516 (=> (not res!2244419) (not e!3289874))))

(assert (=> d!1702516 (= res!2244419 ((_ is Cons!60951) (exprs!4809 (h!67400 zl!343))))))

(assert (=> d!1702516 (= (derivationStepZipperUp!297 (h!67400 zl!343) (h!67398 s!2326)) e!3289873)))

(declare-fun b!5292129 () Bool)

(assert (=> b!5292129 (= e!3289875 ((as const (Array Context!8618 Bool)) false))))

(assert (= (and d!1702516 res!2244419) b!5292127))

(assert (= (and d!1702516 c!918153) b!5292126))

(assert (= (and d!1702516 (not c!918153)) b!5292128))

(assert (= (and b!5292128 c!918152) b!5292125))

(assert (= (and b!5292128 (not c!918152)) b!5292129))

(assert (= (or b!5292126 b!5292125) bm!377179))

(declare-fun m!6329658 () Bool)

(assert (=> bm!377179 m!6329658))

(declare-fun m!6329660 () Bool)

(assert (=> b!5292126 m!6329660))

(assert (=> b!5292127 m!6328586))

(assert (=> b!5291091 d!1702516))

(declare-fun b!5292143 () Bool)

(declare-fun e!3289878 () Bool)

(declare-fun tp!1477054 () Bool)

(declare-fun tp!1477056 () Bool)

(assert (=> b!5292143 (= e!3289878 (and tp!1477054 tp!1477056))))

(declare-fun b!5292141 () Bool)

(declare-fun tp!1477055 () Bool)

(declare-fun tp!1477057 () Bool)

(assert (=> b!5292141 (= e!3289878 (and tp!1477055 tp!1477057))))

(assert (=> b!5291079 (= tp!1476985 e!3289878)))

(declare-fun b!5292140 () Bool)

(assert (=> b!5292140 (= e!3289878 tp_is_empty!39103)))

(declare-fun b!5292142 () Bool)

(declare-fun tp!1477058 () Bool)

(assert (=> b!5292142 (= e!3289878 tp!1477058)))

(assert (= (and b!5291079 ((_ is ElementMatch!14925) (regOne!30363 r!7292))) b!5292140))

(assert (= (and b!5291079 ((_ is Concat!23770) (regOne!30363 r!7292))) b!5292141))

(assert (= (and b!5291079 ((_ is Star!14925) (regOne!30363 r!7292))) b!5292142))

(assert (= (and b!5291079 ((_ is Union!14925) (regOne!30363 r!7292))) b!5292143))

(declare-fun b!5292147 () Bool)

(declare-fun e!3289879 () Bool)

(declare-fun tp!1477059 () Bool)

(declare-fun tp!1477061 () Bool)

(assert (=> b!5292147 (= e!3289879 (and tp!1477059 tp!1477061))))

(declare-fun b!5292145 () Bool)

(declare-fun tp!1477060 () Bool)

(declare-fun tp!1477062 () Bool)

(assert (=> b!5292145 (= e!3289879 (and tp!1477060 tp!1477062))))

(assert (=> b!5291079 (= tp!1476982 e!3289879)))

(declare-fun b!5292144 () Bool)

(assert (=> b!5292144 (= e!3289879 tp_is_empty!39103)))

(declare-fun b!5292146 () Bool)

(declare-fun tp!1477063 () Bool)

(assert (=> b!5292146 (= e!3289879 tp!1477063)))

(assert (= (and b!5291079 ((_ is ElementMatch!14925) (regTwo!30363 r!7292))) b!5292144))

(assert (= (and b!5291079 ((_ is Concat!23770) (regTwo!30363 r!7292))) b!5292145))

(assert (= (and b!5291079 ((_ is Star!14925) (regTwo!30363 r!7292))) b!5292146))

(assert (= (and b!5291079 ((_ is Union!14925) (regTwo!30363 r!7292))) b!5292147))

(declare-fun b!5292152 () Bool)

(declare-fun e!3289882 () Bool)

(declare-fun tp!1477066 () Bool)

(assert (=> b!5292152 (= e!3289882 (and tp_is_empty!39103 tp!1477066))))

(assert (=> b!5291094 (= tp!1476978 e!3289882)))

(assert (= (and b!5291094 ((_ is Cons!60950) (t!374279 s!2326))) b!5292152))

(declare-fun b!5292157 () Bool)

(declare-fun e!3289885 () Bool)

(declare-fun tp!1477071 () Bool)

(declare-fun tp!1477072 () Bool)

(assert (=> b!5292157 (= e!3289885 (and tp!1477071 tp!1477072))))

(assert (=> b!5291099 (= tp!1476976 e!3289885)))

(assert (= (and b!5291099 ((_ is Cons!60951) (exprs!4809 (h!67400 zl!343)))) b!5292157))

(declare-fun b!5292161 () Bool)

(declare-fun e!3289886 () Bool)

(declare-fun tp!1477073 () Bool)

(declare-fun tp!1477075 () Bool)

(assert (=> b!5292161 (= e!3289886 (and tp!1477073 tp!1477075))))

(declare-fun b!5292159 () Bool)

(declare-fun tp!1477074 () Bool)

(declare-fun tp!1477076 () Bool)

(assert (=> b!5292159 (= e!3289886 (and tp!1477074 tp!1477076))))

(assert (=> b!5291086 (= tp!1476983 e!3289886)))

(declare-fun b!5292158 () Bool)

(assert (=> b!5292158 (= e!3289886 tp_is_empty!39103)))

(declare-fun b!5292160 () Bool)

(declare-fun tp!1477077 () Bool)

(assert (=> b!5292160 (= e!3289886 tp!1477077)))

(assert (= (and b!5291086 ((_ is ElementMatch!14925) (reg!15254 r!7292))) b!5292158))

(assert (= (and b!5291086 ((_ is Concat!23770) (reg!15254 r!7292))) b!5292159))

(assert (= (and b!5291086 ((_ is Star!14925) (reg!15254 r!7292))) b!5292160))

(assert (= (and b!5291086 ((_ is Union!14925) (reg!15254 r!7292))) b!5292161))

(declare-fun b!5292169 () Bool)

(declare-fun e!3289892 () Bool)

(declare-fun tp!1477082 () Bool)

(assert (=> b!5292169 (= e!3289892 tp!1477082)))

(declare-fun e!3289891 () Bool)

(declare-fun tp!1477083 () Bool)

(declare-fun b!5292168 () Bool)

(assert (=> b!5292168 (= e!3289891 (and (inv!80559 (h!67400 (t!374281 zl!343))) e!3289892 tp!1477083))))

(assert (=> b!5291087 (= tp!1476980 e!3289891)))

(assert (= b!5292168 b!5292169))

(assert (= (and b!5291087 ((_ is Cons!60952) (t!374281 zl!343))) b!5292168))

(declare-fun m!6329662 () Bool)

(assert (=> b!5292168 m!6329662))

(declare-fun b!5292173 () Bool)

(declare-fun e!3289893 () Bool)

(declare-fun tp!1477084 () Bool)

(declare-fun tp!1477086 () Bool)

(assert (=> b!5292173 (= e!3289893 (and tp!1477084 tp!1477086))))

(declare-fun b!5292171 () Bool)

(declare-fun tp!1477085 () Bool)

(declare-fun tp!1477087 () Bool)

(assert (=> b!5292171 (= e!3289893 (and tp!1477085 tp!1477087))))

(assert (=> b!5291105 (= tp!1476981 e!3289893)))

(declare-fun b!5292170 () Bool)

(assert (=> b!5292170 (= e!3289893 tp_is_empty!39103)))

(declare-fun b!5292172 () Bool)

(declare-fun tp!1477088 () Bool)

(assert (=> b!5292172 (= e!3289893 tp!1477088)))

(assert (= (and b!5291105 ((_ is ElementMatch!14925) (regOne!30362 r!7292))) b!5292170))

(assert (= (and b!5291105 ((_ is Concat!23770) (regOne!30362 r!7292))) b!5292171))

(assert (= (and b!5291105 ((_ is Star!14925) (regOne!30362 r!7292))) b!5292172))

(assert (= (and b!5291105 ((_ is Union!14925) (regOne!30362 r!7292))) b!5292173))

(declare-fun b!5292177 () Bool)

(declare-fun e!3289894 () Bool)

(declare-fun tp!1477089 () Bool)

(declare-fun tp!1477091 () Bool)

(assert (=> b!5292177 (= e!3289894 (and tp!1477089 tp!1477091))))

(declare-fun b!5292175 () Bool)

(declare-fun tp!1477090 () Bool)

(declare-fun tp!1477092 () Bool)

(assert (=> b!5292175 (= e!3289894 (and tp!1477090 tp!1477092))))

(assert (=> b!5291105 (= tp!1476977 e!3289894)))

(declare-fun b!5292174 () Bool)

(assert (=> b!5292174 (= e!3289894 tp_is_empty!39103)))

(declare-fun b!5292176 () Bool)

(declare-fun tp!1477093 () Bool)

(assert (=> b!5292176 (= e!3289894 tp!1477093)))

(assert (= (and b!5291105 ((_ is ElementMatch!14925) (regTwo!30362 r!7292))) b!5292174))

(assert (= (and b!5291105 ((_ is Concat!23770) (regTwo!30362 r!7292))) b!5292175))

(assert (= (and b!5291105 ((_ is Star!14925) (regTwo!30362 r!7292))) b!5292176))

(assert (= (and b!5291105 ((_ is Union!14925) (regTwo!30362 r!7292))) b!5292177))

(declare-fun b!5292178 () Bool)

(declare-fun e!3289895 () Bool)

(declare-fun tp!1477094 () Bool)

(declare-fun tp!1477095 () Bool)

(assert (=> b!5292178 (= e!3289895 (and tp!1477094 tp!1477095))))

(assert (=> b!5291085 (= tp!1476984 e!3289895)))

(assert (= (and b!5291085 ((_ is Cons!60951) (exprs!4809 setElem!33959))) b!5292178))

(declare-fun condSetEmpty!33965 () Bool)

(assert (=> setNonEmpty!33959 (= condSetEmpty!33965 (= setRest!33959 ((as const (Array Context!8618 Bool)) false)))))

(declare-fun setRes!33965 () Bool)

(assert (=> setNonEmpty!33959 (= tp!1476979 setRes!33965)))

(declare-fun setIsEmpty!33965 () Bool)

(assert (=> setIsEmpty!33965 setRes!33965))

(declare-fun tp!1477101 () Bool)

(declare-fun setElem!33965 () Context!8618)

(declare-fun setNonEmpty!33965 () Bool)

(declare-fun e!3289898 () Bool)

(assert (=> setNonEmpty!33965 (= setRes!33965 (and tp!1477101 (inv!80559 setElem!33965) e!3289898))))

(declare-fun setRest!33965 () (InoxSet Context!8618))

(assert (=> setNonEmpty!33965 (= setRest!33959 ((_ map or) (store ((as const (Array Context!8618 Bool)) false) setElem!33965 true) setRest!33965))))

(declare-fun b!5292183 () Bool)

(declare-fun tp!1477100 () Bool)

(assert (=> b!5292183 (= e!3289898 tp!1477100)))

(assert (= (and setNonEmpty!33959 condSetEmpty!33965) setIsEmpty!33965))

(assert (= (and setNonEmpty!33959 (not condSetEmpty!33965)) setNonEmpty!33965))

(assert (= setNonEmpty!33965 b!5292183))

(declare-fun m!6329664 () Bool)

(assert (=> setNonEmpty!33965 m!6329664))

(declare-fun b_lambda!204093 () Bool)

(assert (= b_lambda!204087 (or b!5291083 b_lambda!204093)))

(declare-fun bs!1227501 () Bool)

(declare-fun d!1702518 () Bool)

(assert (= bs!1227501 (and d!1702518 b!5291083)))

(assert (=> bs!1227501 (= (dynLambda!24102 lambda!267909 (h!67399 (t!374280 (exprs!4809 (h!67400 zl!343))))) (validRegex!6661 (h!67399 (t!374280 (exprs!4809 (h!67400 zl!343))))))))

(declare-fun m!6329666 () Bool)

(assert (=> bs!1227501 m!6329666))

(assert (=> b!5291744 d!1702518))

(declare-fun b_lambda!204095 () Bool)

(assert (= b_lambda!204089 (or b!5291091 b_lambda!204095)))

(declare-fun bs!1227502 () Bool)

(declare-fun d!1702520 () Bool)

(assert (= bs!1227502 (and d!1702520 b!5291091)))

(assert (=> bs!1227502 (= (dynLambda!24101 lambda!267905 lt!2162134) (derivationStepZipperUp!297 lt!2162134 (h!67398 s!2326)))))

(assert (=> bs!1227502 m!6328678))

(assert (=> d!1702474 d!1702520))

(declare-fun b_lambda!204097 () Bool)

(assert (= b_lambda!204091 (or b!5291091 b_lambda!204097)))

(declare-fun bs!1227503 () Bool)

(declare-fun d!1702522 () Bool)

(assert (= bs!1227503 (and d!1702522 b!5291091)))

(assert (=> bs!1227503 (= (dynLambda!24101 lambda!267905 (h!67400 zl!343)) (derivationStepZipperUp!297 (h!67400 zl!343) (h!67398 s!2326)))))

(assert (=> bs!1227503 m!6328580))

(assert (=> d!1702504 d!1702522))

(declare-fun b_lambda!204099 () Bool)

(assert (= b_lambda!204075 (or b!5291091 b_lambda!204099)))

(declare-fun bs!1227504 () Bool)

(declare-fun d!1702524 () Bool)

(assert (= bs!1227504 (and d!1702524 b!5291091)))

(assert (=> bs!1227504 (= (dynLambda!24101 lambda!267905 lt!2162119) (derivationStepZipperUp!297 lt!2162119 (h!67398 s!2326)))))

(assert (=> bs!1227504 m!6328552))

(assert (=> d!1702344 d!1702524))

(check-sat (not b!5292173) (not b!5292142) (not bm!377126) (not b!5291871) (not b!5291911) (not b!5292096) (not b!5292178) (not b!5291872) (not bm!377154) (not b!5292106) (not d!1702488) (not b!5291894) (not d!1702414) (not b!5292111) (not b!5291380) (not bm!377155) (not b!5291618) (not b!5292177) (not b!5292168) (not b!5291880) (not b!5291915) (not b!5292152) (not b!5291745) (not b!5292159) (not bm!377130) (not d!1702472) (not b!5292094) (not d!1702406) (not d!1702466) (not d!1702328) (not bm!377167) (not d!1702438) (not d!1702344) (not bm!377133) (not d!1702480) (not bm!377132) (not b!5292171) (not d!1702442) (not bm!377158) (not b!5292036) (not b!5291998) (not b!5292157) (not d!1702408) (not b!5291730) (not b!5291917) (not b!5291817) (not bm!377175) (not b!5292054) tp_is_empty!39103 (not b!5291828) (not b!5291818) (not bm!377178) (not d!1702318) (not bm!377169) (not b!5292059) (not b!5291933) (not d!1702496) (not b!5292176) (not b!5291994) (not d!1702432) (not b_lambda!204095) (not d!1702410) (not b!5291932) (not b!5291924) (not d!1702430) (not b!5292102) (not b!5291909) (not bm!377127) (not d!1702398) (not b!5291898) (not b!5291912) (not b!5292053) (not b!5292093) (not d!1702316) (not b!5292002) (not d!1702392) (not b!5291901) (not b!5292146) (not bm!377172) (not b!5292063) (not b!5292042) (not d!1702416) (not bm!377121) (not d!1702342) (not b!5291892) (not b!5291593) (not b!5291937) (not bs!1227501) (not b!5291826) (not b!5291930) (not b!5291983) (not b!5291893) (not d!1702436) (not bm!377165) (not b!5291827) (not b!5292092) (not d!1702424) (not b!5291905) (not b!5292001) (not d!1702356) (not d!1702450) (not d!1702434) (not b!5291595) (not b!5292141) (not b!5291737) (not b!5291381) (not bm!377170) (not setNonEmpty!33965) (not d!1702426) (not b!5291815) (not b!5292110) (not d!1702506) (not b!5291385) (not b_lambda!204097) (not b!5292175) (not d!1702494) (not b!5291739) (not b!5291594) (not d!1702412) (not bs!1227503) (not b!5291735) (not d!1702456) (not b!5292145) (not b!5291996) (not b!5291885) (not b!5292038) (not b!5291999) (not b!5291936) (not b!5291939) (not b!5291997) (not b!5291889) (not b!5292050) (not d!1702502) (not bm!377179) (not b!5291820) (not b!5291572) (not d!1702390) (not b!5292183) (not b!5291679) (not b!5292126) (not d!1702278) (not b!5291925) (not b!5291995) (not d!1702500) (not b!5291883) (not b!5291824) (not b!5291857) (not b!5291825) (not b!5291816) (not b!5291573) (not b!5291814) (not b!5291938) (not b!5291386) (not d!1702402) (not b!5291738) (not b!5292026) (not d!1702440) (not d!1702420) (not b!5291723) (not b!5291788) (not d!1702274) (not d!1702444) (not b!5292127) (not b!5291945) (not b!5291993) (not b!5291921) (not b_lambda!204093) (not b!5292169) (not b!5291891) (not bm!377131) (not b!5292172) (not b!5291947) (not bm!377171) (not b!5292088) (not bm!377157) (not d!1702490) (not d!1702468) (not b!5291866) (not d!1702474) (not d!1702470) (not b!5292067) (not b!5292097) (not b!5291926) (not b!5291896) (not b!5291617) (not bm!377149) (not b!5291862) (not b!5292040) (not b!5291886) (not d!1702508) (not d!1702254) (not d!1702252) (not b!5291972) (not d!1702422) (not d!1702340) (not b!5291940) (not d!1702428) (not d!1702498) (not b!5291722) (not b!5291721) (not d!1702280) (not b!5292143) (not b!5291592) (not b!5291870) (not bs!1227502) (not b!5291920) (not bm!377176) (not bm!377168) (not b!5291859) (not d!1702296) (not d!1702446) (not b!5292056) (not b!5291384) (not b!5291383) (not b!5291890) (not b!5292064) (not b!5291895) (not b!5292115) (not b!5292105) (not bm!377148) (not d!1702476) (not b!5291914) (not b!5291811) (not b!5291785) (not bm!377151) (not b!5291680) (not d!1702380) (not b!5292161) (not b!5291810) (not b!5292089) (not d!1702464) (not b!5292160) (not b_lambda!204099) (not bs!1227504) (not b!5291867) (not b!5291916) (not d!1702504) (not b!5291906) (not b!5292147) (not d!1702448) (not b!5291821) (not b!5292041) (not b!5291732) (not b!5291923))
(check-sat)
