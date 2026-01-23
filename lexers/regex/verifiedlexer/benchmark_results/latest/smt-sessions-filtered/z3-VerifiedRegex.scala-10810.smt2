; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!554942 () Bool)

(assert start!554942)

(declare-fun b!5253000 () Bool)

(assert (=> b!5253000 true))

(assert (=> b!5253000 true))

(declare-fun lambda!264611 () Int)

(declare-fun lambda!264610 () Int)

(assert (=> b!5253000 (not (= lambda!264611 lambda!264610))))

(assert (=> b!5253000 true))

(assert (=> b!5253000 true))

(declare-fun b!5252993 () Bool)

(assert (=> b!5252993 true))

(declare-fun b!5252989 () Bool)

(declare-fun res!2229361 () Bool)

(declare-fun e!3268023 () Bool)

(assert (=> b!5252989 (=> res!2229361 e!3268023)))

(declare-datatypes ((C!30004 0))(
  ( (C!30005 (val!24704 Int)) )
))
(declare-datatypes ((Regex!14867 0))(
  ( (ElementMatch!14867 (c!908723 C!30004)) (Concat!23712 (regOne!30246 Regex!14867) (regTwo!30246 Regex!14867)) (EmptyExpr!14867) (Star!14867 (reg!15196 Regex!14867)) (EmptyLang!14867) (Union!14867 (regOne!30247 Regex!14867) (regTwo!30247 Regex!14867)) )
))
(declare-datatypes ((List!60900 0))(
  ( (Nil!60776) (Cons!60776 (h!67224 Regex!14867) (t!374083 List!60900)) )
))
(declare-datatypes ((Context!8502 0))(
  ( (Context!8503 (exprs!4751 List!60900)) )
))
(declare-datatypes ((List!60901 0))(
  ( (Nil!60777) (Cons!60777 (h!67225 Context!8502) (t!374084 List!60901)) )
))
(declare-fun zl!343 () List!60901)

(get-info :version)

(assert (=> b!5252989 (= res!2229361 (not ((_ is Cons!60776) (exprs!4751 (h!67225 zl!343)))))))

(declare-fun b!5252990 () Bool)

(declare-fun e!3268031 () Bool)

(declare-fun e!3268041 () Bool)

(assert (=> b!5252990 (= e!3268031 e!3268041)))

(declare-fun res!2229359 () Bool)

(assert (=> b!5252990 (=> res!2229359 e!3268041)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2153159 () (InoxSet Context!8502))

(declare-fun lt!2153198 () (InoxSet Context!8502))

(assert (=> b!5252990 (= res!2229359 (not (= lt!2153159 lt!2153198)))))

(declare-fun lt!2153163 () (InoxSet Context!8502))

(declare-fun lt!2153175 () (InoxSet Context!8502))

(assert (=> b!5252990 (= lt!2153198 ((_ map or) lt!2153163 lt!2153175))))

(declare-fun r!7292 () Regex!14867)

(declare-fun lt!2153183 () Context!8502)

(declare-datatypes ((List!60902 0))(
  ( (Nil!60778) (Cons!60778 (h!67226 C!30004) (t!374085 List!60902)) )
))
(declare-fun s!2326 () List!60902)

(declare-fun derivationStepZipperDown!315 (Regex!14867 Context!8502 C!30004) (InoxSet Context!8502))

(assert (=> b!5252990 (= lt!2153175 (derivationStepZipperDown!315 (regTwo!30247 (regOne!30246 r!7292)) lt!2153183 (h!67226 s!2326)))))

(assert (=> b!5252990 (= lt!2153163 (derivationStepZipperDown!315 (regOne!30247 (regOne!30246 r!7292)) lt!2153183 (h!67226 s!2326)))))

(declare-fun b!5252991 () Bool)

(declare-fun e!3268037 () Bool)

(declare-fun matchZipper!1111 ((InoxSet Context!8502) List!60902) Bool)

(assert (=> b!5252991 (= e!3268037 (matchZipper!1111 lt!2153175 (t!374085 s!2326)))))

(declare-fun b!5252992 () Bool)

(declare-datatypes ((Unit!152950 0))(
  ( (Unit!152951) )
))
(declare-fun e!3268039 () Unit!152950)

(declare-fun Unit!152952 () Unit!152950)

(assert (=> b!5252992 (= e!3268039 Unit!152952)))

(declare-fun e!3268029 () Bool)

(assert (=> b!5252993 (= e!3268029 e!3268031)))

(declare-fun res!2229378 () Bool)

(assert (=> b!5252993 (=> res!2229378 e!3268031)))

(assert (=> b!5252993 (= res!2229378 (or (and ((_ is ElementMatch!14867) (regOne!30246 r!7292)) (= (c!908723 (regOne!30246 r!7292)) (h!67226 s!2326))) (not ((_ is Union!14867) (regOne!30246 r!7292)))))))

(declare-fun lt!2153188 () Unit!152950)

(assert (=> b!5252993 (= lt!2153188 e!3268039)))

(declare-fun c!908720 () Bool)

(declare-fun nullable!5036 (Regex!14867) Bool)

(assert (=> b!5252993 (= c!908720 (nullable!5036 (h!67224 (exprs!4751 (h!67225 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!8502))

(declare-fun lambda!264612 () Int)

(declare-fun flatMap!594 ((InoxSet Context!8502) Int) (InoxSet Context!8502))

(declare-fun derivationStepZipperUp!239 (Context!8502 C!30004) (InoxSet Context!8502))

(assert (=> b!5252993 (= (flatMap!594 z!1189 lambda!264612) (derivationStepZipperUp!239 (h!67225 zl!343) (h!67226 s!2326)))))

(declare-fun lt!2153195 () Unit!152950)

(declare-fun lemmaFlatMapOnSingletonSet!126 ((InoxSet Context!8502) Context!8502 Int) Unit!152950)

(assert (=> b!5252993 (= lt!2153195 (lemmaFlatMapOnSingletonSet!126 z!1189 (h!67225 zl!343) lambda!264612))))

(declare-fun lt!2153178 () (InoxSet Context!8502))

(assert (=> b!5252993 (= lt!2153178 (derivationStepZipperUp!239 lt!2153183 (h!67226 s!2326)))))

(assert (=> b!5252993 (= lt!2153159 (derivationStepZipperDown!315 (h!67224 (exprs!4751 (h!67225 zl!343))) lt!2153183 (h!67226 s!2326)))))

(assert (=> b!5252993 (= lt!2153183 (Context!8503 (t!374083 (exprs!4751 (h!67225 zl!343)))))))

(declare-fun lt!2153179 () (InoxSet Context!8502))

(assert (=> b!5252993 (= lt!2153179 (derivationStepZipperUp!239 (Context!8503 (Cons!60776 (h!67224 (exprs!4751 (h!67225 zl!343))) (t!374083 (exprs!4751 (h!67225 zl!343))))) (h!67226 s!2326)))))

(declare-fun b!5252994 () Bool)

(declare-fun e!3268036 () Bool)

(declare-fun lt!2153167 () List!60900)

(declare-fun lambda!264613 () Int)

(declare-fun forall!14281 (List!60900 Int) Bool)

(assert (=> b!5252994 (= e!3268036 (forall!14281 lt!2153167 lambda!264613))))

(declare-fun lt!2153169 () Bool)

(declare-fun lt!2153182 () Regex!14867)

(declare-fun matchRSpec!1970 (Regex!14867 List!60902) Bool)

(assert (=> b!5252994 (= lt!2153169 (matchRSpec!1970 lt!2153182 s!2326))))

(declare-fun lt!2153157 () Unit!152950)

(declare-fun mainMatchTheorem!1970 (Regex!14867 List!60902) Unit!152950)

(assert (=> b!5252994 (= lt!2153157 (mainMatchTheorem!1970 lt!2153182 s!2326))))

(declare-fun lt!2153170 () Bool)

(declare-fun lt!2153181 () Regex!14867)

(assert (=> b!5252994 (= lt!2153170 (matchRSpec!1970 lt!2153181 s!2326))))

(declare-fun lt!2153168 () Unit!152950)

(assert (=> b!5252994 (= lt!2153168 (mainMatchTheorem!1970 lt!2153181 s!2326))))

(assert (=> b!5252994 (= lt!2153169 lt!2153170)))

(declare-fun matchR!7052 (Regex!14867 List!60902) Bool)

(assert (=> b!5252994 (= lt!2153170 (matchR!7052 lt!2153181 s!2326))))

(assert (=> b!5252994 (= lt!2153169 (matchR!7052 lt!2153182 s!2326))))

(assert (=> b!5252994 (= lt!2153181 (Union!14867 (Concat!23712 (regOne!30247 (regOne!30246 r!7292)) (regTwo!30246 r!7292)) (Concat!23712 (regTwo!30247 (regOne!30246 r!7292)) (regTwo!30246 r!7292))))))

(declare-fun lt!2153173 () Unit!152950)

(declare-fun lemmaConcatDistributesInUnion!12 (Regex!14867 Regex!14867 Regex!14867 List!60902) Unit!152950)

(assert (=> b!5252994 (= lt!2153173 (lemmaConcatDistributesInUnion!12 (regOne!30247 (regOne!30246 r!7292)) (regTwo!30247 (regOne!30246 r!7292)) (regTwo!30246 r!7292) s!2326))))

(declare-fun b!5252995 () Bool)

(declare-fun e!3268026 () Bool)

(assert (=> b!5252995 (= e!3268026 (matchZipper!1111 lt!2153178 (t!374085 s!2326)))))

(declare-fun b!5252996 () Bool)

(declare-fun e!3268044 () Bool)

(declare-fun e!3268034 () Bool)

(assert (=> b!5252996 (= e!3268044 e!3268034)))

(declare-fun res!2229380 () Bool)

(assert (=> b!5252996 (=> res!2229380 e!3268034)))

(assert (=> b!5252996 (= res!2229380 (not (= r!7292 lt!2153182)))))

(assert (=> b!5252996 (= lt!2153182 (Concat!23712 (Union!14867 (regOne!30247 (regOne!30246 r!7292)) (regTwo!30247 (regOne!30246 r!7292))) (regTwo!30246 r!7292)))))

(declare-fun e!3268020 () Bool)

(declare-fun b!5252997 () Bool)

(declare-fun e!3268024 () Bool)

(declare-fun tp!1469466 () Bool)

(declare-fun inv!80414 (Context!8502) Bool)

(assert (=> b!5252997 (= e!3268024 (and (inv!80414 (h!67225 zl!343)) e!3268020 tp!1469466))))

(declare-fun b!5252998 () Bool)

(declare-fun e!3268043 () Bool)

(declare-fun lt!2153209 () (InoxSet Context!8502))

(assert (=> b!5252998 (= e!3268043 (matchZipper!1111 lt!2153209 s!2326))))

(declare-fun b!5252999 () Bool)

(declare-fun e!3268019 () Bool)

(declare-fun tp!1469469 () Bool)

(declare-fun tp!1469467 () Bool)

(assert (=> b!5252999 (= e!3268019 (and tp!1469469 tp!1469467))))

(declare-fun b!5253001 () Bool)

(declare-fun res!2229365 () Bool)

(declare-fun e!3268038 () Bool)

(assert (=> b!5253001 (=> res!2229365 e!3268038)))

(declare-fun lt!2153210 () Regex!14867)

(assert (=> b!5253001 (= res!2229365 (or (not (= lt!2153210 r!7292)) (not (= (exprs!4751 (h!67225 zl!343)) (Cons!60776 (regOne!30246 r!7292) (t!374083 (exprs!4751 (h!67225 zl!343))))))))))

(declare-fun b!5253002 () Bool)

(declare-fun e!3268025 () Bool)

(declare-fun e!3268022 () Bool)

(assert (=> b!5253002 (= e!3268025 e!3268022)))

(declare-fun res!2229379 () Bool)

(assert (=> b!5253002 (=> res!2229379 e!3268022)))

(declare-fun lt!2153187 () List!60901)

(declare-fun lt!2153186 () Int)

(declare-fun zipperDepthTotal!48 (List!60901) Int)

(assert (=> b!5253002 (= res!2229379 (>= (zipperDepthTotal!48 lt!2153187) lt!2153186))))

(declare-fun lt!2153176 () Context!8502)

(assert (=> b!5253002 (= lt!2153187 (Cons!60777 lt!2153176 Nil!60777))))

(declare-fun b!5253003 () Bool)

(declare-fun tp!1469460 () Bool)

(assert (=> b!5253003 (= e!3268020 tp!1469460)))

(declare-fun b!5253004 () Bool)

(declare-fun e!3268040 () Bool)

(declare-fun tp!1469465 () Bool)

(assert (=> b!5253004 (= e!3268040 tp!1469465)))

(declare-fun b!5253005 () Bool)

(assert (=> b!5253005 (= e!3268034 e!3268036)))

(declare-fun res!2229370 () Bool)

(assert (=> b!5253005 (=> res!2229370 e!3268036)))

(declare-fun lt!2153199 () Regex!14867)

(declare-fun lt!2153200 () Regex!14867)

(declare-fun lt!2153172 () Regex!14867)

(assert (=> b!5253005 (= res!2229370 (or (not (= lt!2153199 (Concat!23712 (regOne!30247 (regOne!30246 r!7292)) lt!2153200))) (not (= lt!2153172 (Concat!23712 (regTwo!30247 (regOne!30246 r!7292)) lt!2153200))) (not (= (regTwo!30246 r!7292) lt!2153200))))))

(declare-fun generalisedConcat!536 (List!60900) Regex!14867)

(assert (=> b!5253005 (= lt!2153200 (generalisedConcat!536 (t!374083 (exprs!4751 (h!67225 zl!343)))))))

(declare-fun b!5253006 () Bool)

(declare-fun res!2229372 () Bool)

(assert (=> b!5253006 (=> res!2229372 e!3268023)))

(declare-fun isEmpty!32711 (List!60901) Bool)

(assert (=> b!5253006 (= res!2229372 (not (isEmpty!32711 (t!374084 zl!343))))))

(declare-fun b!5253007 () Bool)

(declare-fun e!3268035 () Bool)

(assert (=> b!5253007 (= e!3268041 e!3268035)))

(declare-fun res!2229362 () Bool)

(assert (=> b!5253007 (=> res!2229362 e!3268035)))

(declare-fun e!3268021 () Bool)

(assert (=> b!5253007 (= res!2229362 e!3268021)))

(declare-fun res!2229364 () Bool)

(assert (=> b!5253007 (=> (not res!2229364) (not e!3268021))))

(declare-fun lt!2153184 () Bool)

(assert (=> b!5253007 (= res!2229364 (not (= (matchZipper!1111 lt!2153159 (t!374085 s!2326)) lt!2153184)))))

(assert (=> b!5253007 (= (matchZipper!1111 lt!2153198 (t!374085 s!2326)) e!3268037)))

(declare-fun res!2229356 () Bool)

(assert (=> b!5253007 (=> res!2229356 e!3268037)))

(assert (=> b!5253007 (= res!2229356 lt!2153184)))

(assert (=> b!5253007 (= lt!2153184 (matchZipper!1111 lt!2153163 (t!374085 s!2326)))))

(declare-fun lt!2153196 () Unit!152950)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!104 ((InoxSet Context!8502) (InoxSet Context!8502) List!60902) Unit!152950)

(assert (=> b!5253007 (= lt!2153196 (lemmaZipperConcatMatchesSameAsBothZippers!104 lt!2153163 lt!2153175 (t!374085 s!2326)))))

(declare-fun b!5253008 () Bool)

(declare-fun tp_is_empty!38987 () Bool)

(assert (=> b!5253008 (= e!3268019 tp_is_empty!38987)))

(declare-fun b!5253009 () Bool)

(declare-fun res!2229374 () Bool)

(assert (=> b!5253009 (=> res!2229374 e!3268023)))

(assert (=> b!5253009 (= res!2229374 (not (= r!7292 (generalisedConcat!536 (exprs!4751 (h!67225 zl!343))))))))

(declare-fun b!5253010 () Bool)

(declare-fun tp!1469462 () Bool)

(assert (=> b!5253010 (= e!3268019 tp!1469462)))

(declare-fun b!5253011 () Bool)

(declare-fun Unit!152953 () Unit!152950)

(assert (=> b!5253011 (= e!3268039 Unit!152953)))

(declare-fun lt!2153202 () Unit!152950)

(assert (=> b!5253011 (= lt!2153202 (lemmaZipperConcatMatchesSameAsBothZippers!104 lt!2153159 lt!2153178 (t!374085 s!2326)))))

(declare-fun res!2229368 () Bool)

(assert (=> b!5253011 (= res!2229368 (matchZipper!1111 lt!2153159 (t!374085 s!2326)))))

(assert (=> b!5253011 (=> res!2229368 e!3268026)))

(assert (=> b!5253011 (= (matchZipper!1111 ((_ map or) lt!2153159 lt!2153178) (t!374085 s!2326)) e!3268026)))

(declare-fun b!5253012 () Bool)

(declare-fun e!3268018 () Bool)

(declare-fun e!3268032 () Bool)

(assert (=> b!5253012 (= e!3268018 e!3268032)))

(declare-fun res!2229375 () Bool)

(assert (=> b!5253012 (=> (not res!2229375) (not e!3268032))))

(assert (=> b!5253012 (= res!2229375 (= r!7292 lt!2153210))))

(declare-fun unfocusZipper!609 (List!60901) Regex!14867)

(assert (=> b!5253012 (= lt!2153210 (unfocusZipper!609 zl!343))))

(declare-fun b!5253013 () Bool)

(assert (=> b!5253013 (= e!3268021 (not (matchZipper!1111 lt!2153175 (t!374085 s!2326))))))

(declare-fun b!5253014 () Bool)

(declare-fun res!2229357 () Bool)

(assert (=> b!5253014 (=> res!2229357 e!3268029)))

(declare-fun isEmpty!32712 (List!60900) Bool)

(assert (=> b!5253014 (= res!2229357 (isEmpty!32712 (t!374083 (exprs!4751 (h!67225 zl!343)))))))

(declare-fun b!5253015 () Bool)

(declare-fun e!3268033 () Unit!152950)

(declare-fun Unit!152954 () Unit!152950)

(assert (=> b!5253015 (= e!3268033 Unit!152954)))

(declare-fun lt!2153174 () Unit!152950)

(assert (=> b!5253015 (= lt!2153174 (lemmaZipperConcatMatchesSameAsBothZippers!104 lt!2153163 lt!2153178 (t!374085 s!2326)))))

(declare-fun res!2229366 () Bool)

(assert (=> b!5253015 (= res!2229366 lt!2153184)))

(declare-fun e!3268042 () Bool)

(assert (=> b!5253015 (=> res!2229366 e!3268042)))

(assert (=> b!5253015 (= (matchZipper!1111 ((_ map or) lt!2153163 lt!2153178) (t!374085 s!2326)) e!3268042)))

(declare-fun b!5253016 () Bool)

(assert (=> b!5253016 (= e!3268038 e!3268025)))

(declare-fun res!2229363 () Bool)

(assert (=> b!5253016 (=> res!2229363 e!3268025)))

(declare-fun lt!2153160 () Int)

(assert (=> b!5253016 (= res!2229363 (>= lt!2153160 lt!2153186))))

(assert (=> b!5253016 (= lt!2153186 (zipperDepthTotal!48 zl!343))))

(declare-fun lt!2153203 () List!60901)

(assert (=> b!5253016 (= lt!2153160 (zipperDepthTotal!48 lt!2153203))))

(declare-fun lt!2153165 () Context!8502)

(assert (=> b!5253016 (= lt!2153203 (Cons!60777 lt!2153165 Nil!60777))))

(declare-fun b!5253017 () Bool)

(declare-fun tp!1469463 () Bool)

(declare-fun tp!1469468 () Bool)

(assert (=> b!5253017 (= e!3268019 (and tp!1469463 tp!1469468))))

(declare-fun b!5253018 () Bool)

(declare-fun res!2229355 () Bool)

(assert (=> b!5253018 (=> res!2229355 e!3268023)))

(declare-fun generalisedUnion!796 (List!60900) Regex!14867)

(declare-fun unfocusZipperList!309 (List!60901) List!60900)

(assert (=> b!5253018 (= res!2229355 (not (= r!7292 (generalisedUnion!796 (unfocusZipperList!309 zl!343)))))))

(declare-fun b!5253019 () Bool)

(declare-fun e!3268028 () Bool)

(declare-fun tp!1469464 () Bool)

(assert (=> b!5253019 (= e!3268028 (and tp_is_empty!38987 tp!1469464))))

(declare-fun setIsEmpty!33557 () Bool)

(declare-fun setRes!33557 () Bool)

(assert (=> setIsEmpty!33557 setRes!33557))

(declare-fun b!5253020 () Bool)

(declare-fun e!3268027 () Unit!152950)

(declare-fun Unit!152955 () Unit!152950)

(assert (=> b!5253020 (= e!3268027 Unit!152955)))

(declare-fun b!5253021 () Bool)

(declare-fun e!3268030 () Bool)

(assert (=> b!5253021 (= e!3268030 (matchZipper!1111 lt!2153178 (t!374085 s!2326)))))

(declare-fun b!5253022 () Bool)

(assert (=> b!5253022 (= e!3268022 e!3268044)))

(declare-fun res!2229360 () Bool)

(assert (=> b!5253022 (=> res!2229360 e!3268044)))

(declare-fun lt!2153177 () Bool)

(declare-fun lt!2153193 () Bool)

(declare-fun lt!2153206 () Bool)

(assert (=> b!5253022 (= res!2229360 (and (not (= lt!2153206 lt!2153193)) (not lt!2153177)))))

(assert (=> b!5253022 (= lt!2153177 (matchRSpec!1970 lt!2153172 s!2326))))

(declare-fun lt!2153208 () Unit!152950)

(assert (=> b!5253022 (= lt!2153208 (mainMatchTheorem!1970 lt!2153172 s!2326))))

(assert (=> b!5253022 (= lt!2153193 (matchRSpec!1970 lt!2153199 s!2326))))

(declare-fun lt!2153194 () Unit!152950)

(assert (=> b!5253022 (= lt!2153194 (mainMatchTheorem!1970 lt!2153199 s!2326))))

(assert (=> b!5253022 (= lt!2153177 (matchZipper!1111 lt!2153209 s!2326))))

(assert (=> b!5253022 (= lt!2153177 (matchR!7052 lt!2153172 s!2326))))

(declare-fun lt!2153192 () Unit!152950)

(declare-fun theoremZipperRegexEquiv!301 ((InoxSet Context!8502) List!60901 Regex!14867 List!60902) Unit!152950)

(assert (=> b!5253022 (= lt!2153192 (theoremZipperRegexEquiv!301 lt!2153209 lt!2153187 lt!2153172 s!2326))))

(declare-fun lt!2153162 () List!60900)

(assert (=> b!5253022 (= lt!2153172 (generalisedConcat!536 lt!2153162))))

(declare-fun lt!2153180 () Bool)

(assert (=> b!5253022 (= lt!2153193 lt!2153180)))

(assert (=> b!5253022 (= lt!2153193 (matchR!7052 lt!2153199 s!2326))))

(declare-fun lt!2153161 () Unit!152950)

(declare-fun lt!2153207 () (InoxSet Context!8502))

(assert (=> b!5253022 (= lt!2153161 (theoremZipperRegexEquiv!301 lt!2153207 lt!2153203 lt!2153199 s!2326))))

(assert (=> b!5253022 (= lt!2153199 (generalisedConcat!536 lt!2153167))))

(declare-fun b!5253023 () Bool)

(assert (=> b!5253023 (= e!3268042 (matchZipper!1111 lt!2153178 (t!374085 s!2326)))))

(declare-fun b!5253024 () Bool)

(declare-fun res!2229376 () Bool)

(assert (=> b!5253024 (=> (not res!2229376) (not e!3268018))))

(declare-fun toList!8651 ((InoxSet Context!8502)) List!60901)

(assert (=> b!5253024 (= res!2229376 (= (toList!8651 z!1189) zl!343))))

(assert (=> b!5253000 (= e!3268023 e!3268029)))

(declare-fun res!2229381 () Bool)

(assert (=> b!5253000 (=> res!2229381 e!3268029)))

(declare-fun lt!2153164 () Bool)

(declare-fun lt!2153201 () Bool)

(assert (=> b!5253000 (= res!2229381 (or (not (= lt!2153201 lt!2153164)) ((_ is Nil!60778) s!2326)))))

(declare-fun Exists!2048 (Int) Bool)

(assert (=> b!5253000 (= (Exists!2048 lambda!264610) (Exists!2048 lambda!264611))))

(declare-fun lt!2153171 () Unit!152950)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!702 (Regex!14867 Regex!14867 List!60902) Unit!152950)

(assert (=> b!5253000 (= lt!2153171 (lemmaExistCutMatchRandMatchRSpecEquivalent!702 (regOne!30246 r!7292) (regTwo!30246 r!7292) s!2326))))

(assert (=> b!5253000 (= lt!2153164 (Exists!2048 lambda!264610))))

(declare-datatypes ((tuple2!64132 0))(
  ( (tuple2!64133 (_1!35369 List!60902) (_2!35369 List!60902)) )
))
(declare-datatypes ((Option!14978 0))(
  ( (None!14977) (Some!14977 (v!51006 tuple2!64132)) )
))
(declare-fun isDefined!11681 (Option!14978) Bool)

(declare-fun findConcatSeparation!1392 (Regex!14867 Regex!14867 List!60902 List!60902 List!60902) Option!14978)

(assert (=> b!5253000 (= lt!2153164 (isDefined!11681 (findConcatSeparation!1392 (regOne!30246 r!7292) (regTwo!30246 r!7292) Nil!60778 s!2326 s!2326)))))

(declare-fun lt!2153190 () Unit!152950)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1156 (Regex!14867 Regex!14867 List!60902) Unit!152950)

(assert (=> b!5253000 (= lt!2153190 (lemmaFindConcatSeparationEquivalentToExists!1156 (regOne!30246 r!7292) (regTwo!30246 r!7292) s!2326))))

(declare-fun res!2229371 () Bool)

(assert (=> start!554942 (=> (not res!2229371) (not e!3268018))))

(declare-fun validRegex!6603 (Regex!14867) Bool)

(assert (=> start!554942 (= res!2229371 (validRegex!6603 r!7292))))

(assert (=> start!554942 e!3268018))

(assert (=> start!554942 e!3268019))

(declare-fun condSetEmpty!33557 () Bool)

(assert (=> start!554942 (= condSetEmpty!33557 (= z!1189 ((as const (Array Context!8502 Bool)) false)))))

(assert (=> start!554942 setRes!33557))

(assert (=> start!554942 e!3268024))

(assert (=> start!554942 e!3268028))

(declare-fun b!5253025 () Bool)

(assert (=> b!5253025 (= e!3268032 (not e!3268023))))

(declare-fun res!2229367 () Bool)

(assert (=> b!5253025 (=> res!2229367 e!3268023)))

(assert (=> b!5253025 (= res!2229367 (not ((_ is Cons!60777) zl!343)))))

(assert (=> b!5253025 (= lt!2153201 (matchRSpec!1970 r!7292 s!2326))))

(assert (=> b!5253025 (= lt!2153201 (matchR!7052 r!7292 s!2326))))

(declare-fun lt!2153205 () Unit!152950)

(assert (=> b!5253025 (= lt!2153205 (mainMatchTheorem!1970 r!7292 s!2326))))

(declare-fun tp!1469461 () Bool)

(declare-fun setNonEmpty!33557 () Bool)

(declare-fun setElem!33557 () Context!8502)

(assert (=> setNonEmpty!33557 (= setRes!33557 (and tp!1469461 (inv!80414 setElem!33557) e!3268040))))

(declare-fun setRest!33557 () (InoxSet Context!8502))

(assert (=> setNonEmpty!33557 (= z!1189 ((_ map or) (store ((as const (Array Context!8502 Bool)) false) setElem!33557 true) setRest!33557))))

(declare-fun b!5253026 () Bool)

(declare-fun res!2229377 () Bool)

(assert (=> b!5253026 (=> res!2229377 e!3268023)))

(assert (=> b!5253026 (= res!2229377 (or ((_ is EmptyExpr!14867) r!7292) ((_ is EmptyLang!14867) r!7292) ((_ is ElementMatch!14867) r!7292) ((_ is Union!14867) r!7292) (not ((_ is Concat!23712) r!7292))))))

(declare-fun b!5253027 () Bool)

(assert (=> b!5253027 (= e!3268035 e!3268038)))

(declare-fun res!2229373 () Bool)

(assert (=> b!5253027 (=> res!2229373 e!3268038)))

(assert (=> b!5253027 (= res!2229373 (not (= lt!2153206 e!3268043)))))

(declare-fun res!2229369 () Bool)

(assert (=> b!5253027 (=> res!2229369 e!3268043)))

(assert (=> b!5253027 (= res!2229369 lt!2153180)))

(assert (=> b!5253027 (= lt!2153206 (matchZipper!1111 z!1189 s!2326))))

(assert (=> b!5253027 (= lt!2153180 (matchZipper!1111 lt!2153207 s!2326))))

(declare-fun lt!2153185 () Unit!152950)

(assert (=> b!5253027 (= lt!2153185 e!3268027)))

(declare-fun c!908721 () Bool)

(assert (=> b!5253027 (= c!908721 (nullable!5036 (regTwo!30247 (regOne!30246 r!7292))))))

(assert (=> b!5253027 (= (flatMap!594 lt!2153209 lambda!264612) (derivationStepZipperUp!239 lt!2153176 (h!67226 s!2326)))))

(declare-fun lt!2153189 () Unit!152950)

(assert (=> b!5253027 (= lt!2153189 (lemmaFlatMapOnSingletonSet!126 lt!2153209 lt!2153176 lambda!264612))))

(declare-fun lt!2153204 () (InoxSet Context!8502))

(assert (=> b!5253027 (= lt!2153204 (derivationStepZipperUp!239 lt!2153176 (h!67226 s!2326)))))

(declare-fun lt!2153158 () Unit!152950)

(assert (=> b!5253027 (= lt!2153158 e!3268033)))

(declare-fun c!908722 () Bool)

(assert (=> b!5253027 (= c!908722 (nullable!5036 (regOne!30247 (regOne!30246 r!7292))))))

(assert (=> b!5253027 (= (flatMap!594 lt!2153207 lambda!264612) (derivationStepZipperUp!239 lt!2153165 (h!67226 s!2326)))))

(declare-fun lt!2153191 () Unit!152950)

(assert (=> b!5253027 (= lt!2153191 (lemmaFlatMapOnSingletonSet!126 lt!2153207 lt!2153165 lambda!264612))))

(declare-fun lt!2153166 () (InoxSet Context!8502))

(assert (=> b!5253027 (= lt!2153166 (derivationStepZipperUp!239 lt!2153165 (h!67226 s!2326)))))

(assert (=> b!5253027 (= lt!2153209 (store ((as const (Array Context!8502 Bool)) false) lt!2153176 true))))

(assert (=> b!5253027 (= lt!2153176 (Context!8503 lt!2153162))))

(assert (=> b!5253027 (= lt!2153162 (Cons!60776 (regTwo!30247 (regOne!30246 r!7292)) (t!374083 (exprs!4751 (h!67225 zl!343)))))))

(assert (=> b!5253027 (= lt!2153207 (store ((as const (Array Context!8502 Bool)) false) lt!2153165 true))))

(assert (=> b!5253027 (= lt!2153165 (Context!8503 lt!2153167))))

(assert (=> b!5253027 (= lt!2153167 (Cons!60776 (regOne!30247 (regOne!30246 r!7292)) (t!374083 (exprs!4751 (h!67225 zl!343)))))))

(declare-fun b!5253028 () Bool)

(declare-fun Unit!152956 () Unit!152950)

(assert (=> b!5253028 (= e!3268033 Unit!152956)))

(declare-fun b!5253029 () Bool)

(declare-fun Unit!152957 () Unit!152950)

(assert (=> b!5253029 (= e!3268027 Unit!152957)))

(declare-fun lt!2153197 () Unit!152950)

(assert (=> b!5253029 (= lt!2153197 (lemmaZipperConcatMatchesSameAsBothZippers!104 lt!2153175 lt!2153178 (t!374085 s!2326)))))

(declare-fun res!2229358 () Bool)

(assert (=> b!5253029 (= res!2229358 (matchZipper!1111 lt!2153175 (t!374085 s!2326)))))

(assert (=> b!5253029 (=> res!2229358 e!3268030)))

(assert (=> b!5253029 (= (matchZipper!1111 ((_ map or) lt!2153175 lt!2153178) (t!374085 s!2326)) e!3268030)))

(assert (= (and start!554942 res!2229371) b!5253024))

(assert (= (and b!5253024 res!2229376) b!5253012))

(assert (= (and b!5253012 res!2229375) b!5253025))

(assert (= (and b!5253025 (not res!2229367)) b!5253006))

(assert (= (and b!5253006 (not res!2229372)) b!5253009))

(assert (= (and b!5253009 (not res!2229374)) b!5252989))

(assert (= (and b!5252989 (not res!2229361)) b!5253018))

(assert (= (and b!5253018 (not res!2229355)) b!5253026))

(assert (= (and b!5253026 (not res!2229377)) b!5253000))

(assert (= (and b!5253000 (not res!2229381)) b!5253014))

(assert (= (and b!5253014 (not res!2229357)) b!5252993))

(assert (= (and b!5252993 c!908720) b!5253011))

(assert (= (and b!5252993 (not c!908720)) b!5252992))

(assert (= (and b!5253011 (not res!2229368)) b!5252995))

(assert (= (and b!5252993 (not res!2229378)) b!5252990))

(assert (= (and b!5252990 (not res!2229359)) b!5253007))

(assert (= (and b!5253007 (not res!2229356)) b!5252991))

(assert (= (and b!5253007 res!2229364) b!5253013))

(assert (= (and b!5253007 (not res!2229362)) b!5253027))

(assert (= (and b!5253027 c!908722) b!5253015))

(assert (= (and b!5253027 (not c!908722)) b!5253028))

(assert (= (and b!5253015 (not res!2229366)) b!5253023))

(assert (= (and b!5253027 c!908721) b!5253029))

(assert (= (and b!5253027 (not c!908721)) b!5253020))

(assert (= (and b!5253029 (not res!2229358)) b!5253021))

(assert (= (and b!5253027 (not res!2229369)) b!5252998))

(assert (= (and b!5253027 (not res!2229373)) b!5253001))

(assert (= (and b!5253001 (not res!2229365)) b!5253016))

(assert (= (and b!5253016 (not res!2229363)) b!5253002))

(assert (= (and b!5253002 (not res!2229379)) b!5253022))

(assert (= (and b!5253022 (not res!2229360)) b!5252996))

(assert (= (and b!5252996 (not res!2229380)) b!5253005))

(assert (= (and b!5253005 (not res!2229370)) b!5252994))

(assert (= (and start!554942 ((_ is ElementMatch!14867) r!7292)) b!5253008))

(assert (= (and start!554942 ((_ is Concat!23712) r!7292)) b!5252999))

(assert (= (and start!554942 ((_ is Star!14867) r!7292)) b!5253010))

(assert (= (and start!554942 ((_ is Union!14867) r!7292)) b!5253017))

(assert (= (and start!554942 condSetEmpty!33557) setIsEmpty!33557))

(assert (= (and start!554942 (not condSetEmpty!33557)) setNonEmpty!33557))

(assert (= setNonEmpty!33557 b!5253004))

(assert (= b!5252997 b!5253003))

(assert (= (and start!554942 ((_ is Cons!60777) zl!343)) b!5252997))

(assert (= (and start!554942 ((_ is Cons!60778) s!2326)) b!5253019))

(declare-fun m!6296014 () Bool)

(assert (=> b!5252997 m!6296014))

(declare-fun m!6296016 () Bool)

(assert (=> b!5253005 m!6296016))

(declare-fun m!6296018 () Bool)

(assert (=> b!5253000 m!6296018))

(declare-fun m!6296020 () Bool)

(assert (=> b!5253000 m!6296020))

(declare-fun m!6296022 () Bool)

(assert (=> b!5253000 m!6296022))

(declare-fun m!6296024 () Bool)

(assert (=> b!5253000 m!6296024))

(declare-fun m!6296026 () Bool)

(assert (=> b!5253000 m!6296026))

(assert (=> b!5253000 m!6296026))

(assert (=> b!5253000 m!6296018))

(declare-fun m!6296028 () Bool)

(assert (=> b!5253000 m!6296028))

(declare-fun m!6296030 () Bool)

(assert (=> b!5253014 m!6296030))

(declare-fun m!6296032 () Bool)

(assert (=> b!5253002 m!6296032))

(declare-fun m!6296034 () Bool)

(assert (=> b!5253029 m!6296034))

(declare-fun m!6296036 () Bool)

(assert (=> b!5253029 m!6296036))

(declare-fun m!6296038 () Bool)

(assert (=> b!5253029 m!6296038))

(declare-fun m!6296040 () Bool)

(assert (=> start!554942 m!6296040))

(declare-fun m!6296042 () Bool)

(assert (=> b!5252995 m!6296042))

(declare-fun m!6296044 () Bool)

(assert (=> b!5252994 m!6296044))

(declare-fun m!6296046 () Bool)

(assert (=> b!5252994 m!6296046))

(declare-fun m!6296048 () Bool)

(assert (=> b!5252994 m!6296048))

(declare-fun m!6296050 () Bool)

(assert (=> b!5252994 m!6296050))

(declare-fun m!6296052 () Bool)

(assert (=> b!5252994 m!6296052))

(declare-fun m!6296054 () Bool)

(assert (=> b!5252994 m!6296054))

(declare-fun m!6296056 () Bool)

(assert (=> b!5252994 m!6296056))

(declare-fun m!6296058 () Bool)

(assert (=> b!5252994 m!6296058))

(declare-fun m!6296060 () Bool)

(assert (=> b!5253011 m!6296060))

(declare-fun m!6296062 () Bool)

(assert (=> b!5253011 m!6296062))

(declare-fun m!6296064 () Bool)

(assert (=> b!5253011 m!6296064))

(assert (=> b!5252991 m!6296036))

(assert (=> b!5253021 m!6296042))

(declare-fun m!6296066 () Bool)

(assert (=> b!5253027 m!6296066))

(declare-fun m!6296068 () Bool)

(assert (=> b!5253027 m!6296068))

(declare-fun m!6296070 () Bool)

(assert (=> b!5253027 m!6296070))

(declare-fun m!6296072 () Bool)

(assert (=> b!5253027 m!6296072))

(declare-fun m!6296074 () Bool)

(assert (=> b!5253027 m!6296074))

(declare-fun m!6296076 () Bool)

(assert (=> b!5253027 m!6296076))

(declare-fun m!6296078 () Bool)

(assert (=> b!5253027 m!6296078))

(declare-fun m!6296080 () Bool)

(assert (=> b!5253027 m!6296080))

(declare-fun m!6296082 () Bool)

(assert (=> b!5253027 m!6296082))

(declare-fun m!6296084 () Bool)

(assert (=> b!5253027 m!6296084))

(declare-fun m!6296086 () Bool)

(assert (=> b!5253027 m!6296086))

(declare-fun m!6296088 () Bool)

(assert (=> b!5253027 m!6296088))

(declare-fun m!6296090 () Bool)

(assert (=> b!5253022 m!6296090))

(declare-fun m!6296092 () Bool)

(assert (=> b!5253022 m!6296092))

(declare-fun m!6296094 () Bool)

(assert (=> b!5253022 m!6296094))

(declare-fun m!6296096 () Bool)

(assert (=> b!5253022 m!6296096))

(declare-fun m!6296098 () Bool)

(assert (=> b!5253022 m!6296098))

(declare-fun m!6296100 () Bool)

(assert (=> b!5253022 m!6296100))

(declare-fun m!6296102 () Bool)

(assert (=> b!5253022 m!6296102))

(declare-fun m!6296104 () Bool)

(assert (=> b!5253022 m!6296104))

(declare-fun m!6296106 () Bool)

(assert (=> b!5253022 m!6296106))

(declare-fun m!6296108 () Bool)

(assert (=> b!5253022 m!6296108))

(declare-fun m!6296110 () Bool)

(assert (=> b!5253022 m!6296110))

(assert (=> b!5252998 m!6296094))

(declare-fun m!6296112 () Bool)

(assert (=> b!5252993 m!6296112))

(declare-fun m!6296114 () Bool)

(assert (=> b!5252993 m!6296114))

(declare-fun m!6296116 () Bool)

(assert (=> b!5252993 m!6296116))

(declare-fun m!6296118 () Bool)

(assert (=> b!5252993 m!6296118))

(declare-fun m!6296120 () Bool)

(assert (=> b!5252993 m!6296120))

(declare-fun m!6296122 () Bool)

(assert (=> b!5252993 m!6296122))

(declare-fun m!6296124 () Bool)

(assert (=> b!5252993 m!6296124))

(declare-fun m!6296126 () Bool)

(assert (=> b!5253018 m!6296126))

(assert (=> b!5253018 m!6296126))

(declare-fun m!6296128 () Bool)

(assert (=> b!5253018 m!6296128))

(declare-fun m!6296130 () Bool)

(assert (=> b!5253015 m!6296130))

(declare-fun m!6296132 () Bool)

(assert (=> b!5253015 m!6296132))

(declare-fun m!6296134 () Bool)

(assert (=> b!5253009 m!6296134))

(declare-fun m!6296136 () Bool)

(assert (=> b!5252990 m!6296136))

(declare-fun m!6296138 () Bool)

(assert (=> b!5252990 m!6296138))

(assert (=> b!5253023 m!6296042))

(declare-fun m!6296140 () Bool)

(assert (=> b!5253016 m!6296140))

(declare-fun m!6296142 () Bool)

(assert (=> b!5253016 m!6296142))

(declare-fun m!6296144 () Bool)

(assert (=> b!5253006 m!6296144))

(declare-fun m!6296146 () Bool)

(assert (=> b!5253024 m!6296146))

(assert (=> b!5253007 m!6296062))

(declare-fun m!6296148 () Bool)

(assert (=> b!5253007 m!6296148))

(declare-fun m!6296150 () Bool)

(assert (=> b!5253007 m!6296150))

(declare-fun m!6296152 () Bool)

(assert (=> b!5253007 m!6296152))

(declare-fun m!6296154 () Bool)

(assert (=> b!5253025 m!6296154))

(declare-fun m!6296156 () Bool)

(assert (=> b!5253025 m!6296156))

(declare-fun m!6296158 () Bool)

(assert (=> b!5253025 m!6296158))

(declare-fun m!6296160 () Bool)

(assert (=> b!5253012 m!6296160))

(assert (=> b!5253013 m!6296036))

(declare-fun m!6296162 () Bool)

(assert (=> setNonEmpty!33557 m!6296162))

(check-sat (not b!5252991) (not b!5253015) (not b!5253016) (not b!5252997) (not start!554942) (not b!5253029) (not b!5252990) (not b!5253025) (not b!5253012) (not setNonEmpty!33557) (not b!5252994) (not b!5253019) (not b!5253024) (not b!5253018) (not b!5253009) (not b!5253011) (not b!5252998) (not b!5253000) (not b!5253006) (not b!5252995) (not b!5252999) (not b!5253004) (not b!5253022) (not b!5253007) (not b!5253023) (not b!5253010) (not b!5253027) (not b!5253002) (not b!5253003) (not b!5253017) (not b!5253005) (not b!5252993) (not b!5253014) (not b!5253013) (not b!5253021) tp_is_empty!38987)
(check-sat)
(get-model)

(declare-fun bs!1218267 () Bool)

(declare-fun d!1691581 () Bool)

(assert (= bs!1218267 (and d!1691581 b!5252994)))

(declare-fun lambda!264616 () Int)

(assert (=> bs!1218267 (= lambda!264616 lambda!264613)))

(declare-fun b!5253056 () Bool)

(declare-fun e!3268062 () Regex!14867)

(assert (=> b!5253056 (= e!3268062 EmptyLang!14867)))

(declare-fun e!3268059 () Bool)

(assert (=> d!1691581 e!3268059))

(declare-fun res!2229387 () Bool)

(assert (=> d!1691581 (=> (not res!2229387) (not e!3268059))))

(declare-fun lt!2153213 () Regex!14867)

(assert (=> d!1691581 (= res!2229387 (validRegex!6603 lt!2153213))))

(declare-fun e!3268060 () Regex!14867)

(assert (=> d!1691581 (= lt!2153213 e!3268060)))

(declare-fun c!908732 () Bool)

(declare-fun e!3268061 () Bool)

(assert (=> d!1691581 (= c!908732 e!3268061)))

(declare-fun res!2229386 () Bool)

(assert (=> d!1691581 (=> (not res!2229386) (not e!3268061))))

(assert (=> d!1691581 (= res!2229386 ((_ is Cons!60776) (unfocusZipperList!309 zl!343)))))

(assert (=> d!1691581 (forall!14281 (unfocusZipperList!309 zl!343) lambda!264616)))

(assert (=> d!1691581 (= (generalisedUnion!796 (unfocusZipperList!309 zl!343)) lt!2153213)))

(declare-fun b!5253057 () Bool)

(assert (=> b!5253057 (= e!3268060 (h!67224 (unfocusZipperList!309 zl!343)))))

(declare-fun b!5253058 () Bool)

(declare-fun e!3268058 () Bool)

(assert (=> b!5253058 (= e!3268059 e!3268058)))

(declare-fun c!908734 () Bool)

(assert (=> b!5253058 (= c!908734 (isEmpty!32712 (unfocusZipperList!309 zl!343)))))

(declare-fun b!5253059 () Bool)

(declare-fun e!3268057 () Bool)

(assert (=> b!5253059 (= e!3268058 e!3268057)))

(declare-fun c!908735 () Bool)

(declare-fun tail!10357 (List!60900) List!60900)

(assert (=> b!5253059 (= c!908735 (isEmpty!32712 (tail!10357 (unfocusZipperList!309 zl!343))))))

(declare-fun b!5253060 () Bool)

(assert (=> b!5253060 (= e!3268061 (isEmpty!32712 (t!374083 (unfocusZipperList!309 zl!343))))))

(declare-fun b!5253061 () Bool)

(declare-fun head!11260 (List!60900) Regex!14867)

(assert (=> b!5253061 (= e!3268057 (= lt!2153213 (head!11260 (unfocusZipperList!309 zl!343))))))

(declare-fun b!5253062 () Bool)

(declare-fun isUnion!246 (Regex!14867) Bool)

(assert (=> b!5253062 (= e!3268057 (isUnion!246 lt!2153213))))

(declare-fun b!5253063 () Bool)

(declare-fun isEmptyLang!814 (Regex!14867) Bool)

(assert (=> b!5253063 (= e!3268058 (isEmptyLang!814 lt!2153213))))

(declare-fun b!5253064 () Bool)

(assert (=> b!5253064 (= e!3268062 (Union!14867 (h!67224 (unfocusZipperList!309 zl!343)) (generalisedUnion!796 (t!374083 (unfocusZipperList!309 zl!343)))))))

(declare-fun b!5253065 () Bool)

(assert (=> b!5253065 (= e!3268060 e!3268062)))

(declare-fun c!908733 () Bool)

(assert (=> b!5253065 (= c!908733 ((_ is Cons!60776) (unfocusZipperList!309 zl!343)))))

(assert (= (and d!1691581 res!2229386) b!5253060))

(assert (= (and d!1691581 c!908732) b!5253057))

(assert (= (and d!1691581 (not c!908732)) b!5253065))

(assert (= (and b!5253065 c!908733) b!5253064))

(assert (= (and b!5253065 (not c!908733)) b!5253056))

(assert (= (and d!1691581 res!2229387) b!5253058))

(assert (= (and b!5253058 c!908734) b!5253063))

(assert (= (and b!5253058 (not c!908734)) b!5253059))

(assert (= (and b!5253059 c!908735) b!5253061))

(assert (= (and b!5253059 (not c!908735)) b!5253062))

(assert (=> b!5253058 m!6296126))

(declare-fun m!6296164 () Bool)

(assert (=> b!5253058 m!6296164))

(assert (=> b!5253061 m!6296126))

(declare-fun m!6296166 () Bool)

(assert (=> b!5253061 m!6296166))

(declare-fun m!6296168 () Bool)

(assert (=> b!5253063 m!6296168))

(declare-fun m!6296170 () Bool)

(assert (=> b!5253064 m!6296170))

(assert (=> b!5253059 m!6296126))

(declare-fun m!6296172 () Bool)

(assert (=> b!5253059 m!6296172))

(assert (=> b!5253059 m!6296172))

(declare-fun m!6296174 () Bool)

(assert (=> b!5253059 m!6296174))

(declare-fun m!6296176 () Bool)

(assert (=> b!5253060 m!6296176))

(declare-fun m!6296178 () Bool)

(assert (=> d!1691581 m!6296178))

(assert (=> d!1691581 m!6296126))

(declare-fun m!6296180 () Bool)

(assert (=> d!1691581 m!6296180))

(declare-fun m!6296182 () Bool)

(assert (=> b!5253062 m!6296182))

(assert (=> b!5253018 d!1691581))

(declare-fun bs!1218268 () Bool)

(declare-fun d!1691583 () Bool)

(assert (= bs!1218268 (and d!1691583 b!5252994)))

(declare-fun lambda!264619 () Int)

(assert (=> bs!1218268 (= lambda!264619 lambda!264613)))

(declare-fun bs!1218269 () Bool)

(assert (= bs!1218269 (and d!1691583 d!1691581)))

(assert (=> bs!1218269 (= lambda!264619 lambda!264616)))

(declare-fun lt!2153216 () List!60900)

(assert (=> d!1691583 (forall!14281 lt!2153216 lambda!264619)))

(declare-fun e!3268065 () List!60900)

(assert (=> d!1691583 (= lt!2153216 e!3268065)))

(declare-fun c!908738 () Bool)

(assert (=> d!1691583 (= c!908738 ((_ is Cons!60777) zl!343))))

(assert (=> d!1691583 (= (unfocusZipperList!309 zl!343) lt!2153216)))

(declare-fun b!5253070 () Bool)

(assert (=> b!5253070 (= e!3268065 (Cons!60776 (generalisedConcat!536 (exprs!4751 (h!67225 zl!343))) (unfocusZipperList!309 (t!374084 zl!343))))))

(declare-fun b!5253071 () Bool)

(assert (=> b!5253071 (= e!3268065 Nil!60776)))

(assert (= (and d!1691583 c!908738) b!5253070))

(assert (= (and d!1691583 (not c!908738)) b!5253071))

(declare-fun m!6296184 () Bool)

(assert (=> d!1691583 m!6296184))

(assert (=> b!5253070 m!6296134))

(declare-fun m!6296186 () Bool)

(assert (=> b!5253070 m!6296186))

(assert (=> b!5253018 d!1691583))

(declare-fun b!5253090 () Bool)

(declare-fun e!3268083 () Bool)

(declare-fun call!372185 () Bool)

(assert (=> b!5253090 (= e!3268083 call!372185)))

(declare-fun b!5253091 () Bool)

(declare-fun e!3268085 () Bool)

(declare-fun e!3268081 () Bool)

(assert (=> b!5253091 (= e!3268085 e!3268081)))

(declare-fun c!908743 () Bool)

(assert (=> b!5253091 (= c!908743 ((_ is Star!14867) r!7292))))

(declare-fun b!5253092 () Bool)

(declare-fun res!2229399 () Bool)

(declare-fun e!3268086 () Bool)

(assert (=> b!5253092 (=> res!2229399 e!3268086)))

(assert (=> b!5253092 (= res!2229399 (not ((_ is Concat!23712) r!7292)))))

(declare-fun e!3268082 () Bool)

(assert (=> b!5253092 (= e!3268082 e!3268086)))

(declare-fun b!5253093 () Bool)

(declare-fun e!3268080 () Bool)

(assert (=> b!5253093 (= e!3268086 e!3268080)))

(declare-fun res!2229400 () Bool)

(assert (=> b!5253093 (=> (not res!2229400) (not e!3268080))))

(declare-fun call!372187 () Bool)

(assert (=> b!5253093 (= res!2229400 call!372187)))

(declare-fun b!5253094 () Bool)

(declare-fun res!2229398 () Bool)

(declare-fun e!3268084 () Bool)

(assert (=> b!5253094 (=> (not res!2229398) (not e!3268084))))

(assert (=> b!5253094 (= res!2229398 call!372187)))

(assert (=> b!5253094 (= e!3268082 e!3268084)))

(declare-fun b!5253095 () Bool)

(declare-fun call!372186 () Bool)

(assert (=> b!5253095 (= e!3268080 call!372186)))

(declare-fun bm!372180 () Bool)

(assert (=> bm!372180 (= call!372186 call!372185)))

(declare-fun b!5253096 () Bool)

(assert (=> b!5253096 (= e!3268081 e!3268083)))

(declare-fun res!2229401 () Bool)

(assert (=> b!5253096 (= res!2229401 (not (nullable!5036 (reg!15196 r!7292))))))

(assert (=> b!5253096 (=> (not res!2229401) (not e!3268083))))

(declare-fun b!5253097 () Bool)

(assert (=> b!5253097 (= e!3268081 e!3268082)))

(declare-fun c!908744 () Bool)

(assert (=> b!5253097 (= c!908744 ((_ is Union!14867) r!7292))))

(declare-fun bm!372182 () Bool)

(assert (=> bm!372182 (= call!372185 (validRegex!6603 (ite c!908743 (reg!15196 r!7292) (ite c!908744 (regTwo!30247 r!7292) (regTwo!30246 r!7292)))))))

(declare-fun b!5253098 () Bool)

(assert (=> b!5253098 (= e!3268084 call!372186)))

(declare-fun d!1691585 () Bool)

(declare-fun res!2229402 () Bool)

(assert (=> d!1691585 (=> res!2229402 e!3268085)))

(assert (=> d!1691585 (= res!2229402 ((_ is ElementMatch!14867) r!7292))))

(assert (=> d!1691585 (= (validRegex!6603 r!7292) e!3268085)))

(declare-fun bm!372181 () Bool)

(assert (=> bm!372181 (= call!372187 (validRegex!6603 (ite c!908744 (regOne!30247 r!7292) (regOne!30246 r!7292))))))

(assert (= (and d!1691585 (not res!2229402)) b!5253091))

(assert (= (and b!5253091 c!908743) b!5253096))

(assert (= (and b!5253091 (not c!908743)) b!5253097))

(assert (= (and b!5253096 res!2229401) b!5253090))

(assert (= (and b!5253097 c!908744) b!5253094))

(assert (= (and b!5253097 (not c!908744)) b!5253092))

(assert (= (and b!5253094 res!2229398) b!5253098))

(assert (= (and b!5253092 (not res!2229399)) b!5253093))

(assert (= (and b!5253093 res!2229400) b!5253095))

(assert (= (or b!5253098 b!5253095) bm!372180))

(assert (= (or b!5253094 b!5253093) bm!372181))

(assert (= (or b!5253090 bm!372180) bm!372182))

(declare-fun m!6296188 () Bool)

(assert (=> b!5253096 m!6296188))

(declare-fun m!6296190 () Bool)

(assert (=> bm!372182 m!6296190))

(declare-fun m!6296192 () Bool)

(assert (=> bm!372181 m!6296192))

(assert (=> start!554942 d!1691585))

(declare-fun bs!1218270 () Bool)

(declare-fun d!1691587 () Bool)

(assert (= bs!1218270 (and d!1691587 b!5252994)))

(declare-fun lambda!264622 () Int)

(assert (=> bs!1218270 (= lambda!264622 lambda!264613)))

(declare-fun bs!1218271 () Bool)

(assert (= bs!1218271 (and d!1691587 d!1691581)))

(assert (=> bs!1218271 (= lambda!264622 lambda!264616)))

(declare-fun bs!1218272 () Bool)

(assert (= bs!1218272 (and d!1691587 d!1691583)))

(assert (=> bs!1218272 (= lambda!264622 lambda!264619)))

(assert (=> d!1691587 (= (inv!80414 (h!67225 zl!343)) (forall!14281 (exprs!4751 (h!67225 zl!343)) lambda!264622))))

(declare-fun bs!1218273 () Bool)

(assert (= bs!1218273 d!1691587))

(declare-fun m!6296194 () Bool)

(assert (=> bs!1218273 m!6296194))

(assert (=> b!5252997 d!1691587))

(declare-fun d!1691589 () Bool)

(declare-fun lt!2153219 () Int)

(assert (=> d!1691589 (>= lt!2153219 0)))

(declare-fun e!3268089 () Int)

(assert (=> d!1691589 (= lt!2153219 e!3268089)))

(declare-fun c!908747 () Bool)

(assert (=> d!1691589 (= c!908747 ((_ is Cons!60777) zl!343))))

(assert (=> d!1691589 (= (zipperDepthTotal!48 zl!343) lt!2153219)))

(declare-fun b!5253103 () Bool)

(declare-fun contextDepthTotal!29 (Context!8502) Int)

(assert (=> b!5253103 (= e!3268089 (+ (contextDepthTotal!29 (h!67225 zl!343)) (zipperDepthTotal!48 (t!374084 zl!343))))))

(declare-fun b!5253104 () Bool)

(assert (=> b!5253104 (= e!3268089 0)))

(assert (= (and d!1691589 c!908747) b!5253103))

(assert (= (and d!1691589 (not c!908747)) b!5253104))

(declare-fun m!6296196 () Bool)

(assert (=> b!5253103 m!6296196))

(declare-fun m!6296198 () Bool)

(assert (=> b!5253103 m!6296198))

(assert (=> b!5253016 d!1691589))

(declare-fun d!1691591 () Bool)

(declare-fun lt!2153220 () Int)

(assert (=> d!1691591 (>= lt!2153220 0)))

(declare-fun e!3268090 () Int)

(assert (=> d!1691591 (= lt!2153220 e!3268090)))

(declare-fun c!908748 () Bool)

(assert (=> d!1691591 (= c!908748 ((_ is Cons!60777) lt!2153203))))

(assert (=> d!1691591 (= (zipperDepthTotal!48 lt!2153203) lt!2153220)))

(declare-fun b!5253105 () Bool)

(assert (=> b!5253105 (= e!3268090 (+ (contextDepthTotal!29 (h!67225 lt!2153203)) (zipperDepthTotal!48 (t!374084 lt!2153203))))))

(declare-fun b!5253106 () Bool)

(assert (=> b!5253106 (= e!3268090 0)))

(assert (= (and d!1691591 c!908748) b!5253105))

(assert (= (and d!1691591 (not c!908748)) b!5253106))

(declare-fun m!6296200 () Bool)

(assert (=> b!5253105 m!6296200))

(declare-fun m!6296202 () Bool)

(assert (=> b!5253105 m!6296202))

(assert (=> b!5253016 d!1691591))

(declare-fun d!1691593 () Bool)

(declare-fun c!908751 () Bool)

(declare-fun isEmpty!32713 (List!60902) Bool)

(assert (=> d!1691593 (= c!908751 (isEmpty!32713 (t!374085 s!2326)))))

(declare-fun e!3268093 () Bool)

(assert (=> d!1691593 (= (matchZipper!1111 lt!2153178 (t!374085 s!2326)) e!3268093)))

(declare-fun b!5253111 () Bool)

(declare-fun nullableZipper!1271 ((InoxSet Context!8502)) Bool)

(assert (=> b!5253111 (= e!3268093 (nullableZipper!1271 lt!2153178))))

(declare-fun b!5253112 () Bool)

(declare-fun derivationStepZipper!1115 ((InoxSet Context!8502) C!30004) (InoxSet Context!8502))

(declare-fun head!11261 (List!60902) C!30004)

(declare-fun tail!10358 (List!60902) List!60902)

(assert (=> b!5253112 (= e!3268093 (matchZipper!1111 (derivationStepZipper!1115 lt!2153178 (head!11261 (t!374085 s!2326))) (tail!10358 (t!374085 s!2326))))))

(assert (= (and d!1691593 c!908751) b!5253111))

(assert (= (and d!1691593 (not c!908751)) b!5253112))

(declare-fun m!6296204 () Bool)

(assert (=> d!1691593 m!6296204))

(declare-fun m!6296206 () Bool)

(assert (=> b!5253111 m!6296206))

(declare-fun m!6296208 () Bool)

(assert (=> b!5253112 m!6296208))

(assert (=> b!5253112 m!6296208))

(declare-fun m!6296210 () Bool)

(assert (=> b!5253112 m!6296210))

(declare-fun m!6296212 () Bool)

(assert (=> b!5253112 m!6296212))

(assert (=> b!5253112 m!6296210))

(assert (=> b!5253112 m!6296212))

(declare-fun m!6296214 () Bool)

(assert (=> b!5253112 m!6296214))

(assert (=> b!5252995 d!1691593))

(declare-fun d!1691595 () Bool)

(assert (=> d!1691595 (= (matchR!7052 (Concat!23712 (Union!14867 (regOne!30247 (regOne!30246 r!7292)) (regTwo!30247 (regOne!30246 r!7292))) (regTwo!30246 r!7292)) s!2326) (matchR!7052 (Union!14867 (Concat!23712 (regOne!30247 (regOne!30246 r!7292)) (regTwo!30246 r!7292)) (Concat!23712 (regTwo!30247 (regOne!30246 r!7292)) (regTwo!30246 r!7292))) s!2326))))

(declare-fun lt!2153223 () Unit!152950)

(declare-fun choose!39143 (Regex!14867 Regex!14867 Regex!14867 List!60902) Unit!152950)

(assert (=> d!1691595 (= lt!2153223 (choose!39143 (regOne!30247 (regOne!30246 r!7292)) (regTwo!30247 (regOne!30246 r!7292)) (regTwo!30246 r!7292) s!2326))))

(assert (=> d!1691595 (validRegex!6603 (regOne!30247 (regOne!30246 r!7292)))))

(assert (=> d!1691595 (= (lemmaConcatDistributesInUnion!12 (regOne!30247 (regOne!30246 r!7292)) (regTwo!30247 (regOne!30246 r!7292)) (regTwo!30246 r!7292) s!2326) lt!2153223)))

(declare-fun bs!1218274 () Bool)

(assert (= bs!1218274 d!1691595))

(declare-fun m!6296216 () Bool)

(assert (=> bs!1218274 m!6296216))

(declare-fun m!6296218 () Bool)

(assert (=> bs!1218274 m!6296218))

(declare-fun m!6296220 () Bool)

(assert (=> bs!1218274 m!6296220))

(declare-fun m!6296222 () Bool)

(assert (=> bs!1218274 m!6296222))

(assert (=> b!5252994 d!1691595))

(declare-fun d!1691599 () Bool)

(declare-fun res!2229407 () Bool)

(declare-fun e!3268098 () Bool)

(assert (=> d!1691599 (=> res!2229407 e!3268098)))

(assert (=> d!1691599 (= res!2229407 ((_ is Nil!60776) lt!2153167))))

(assert (=> d!1691599 (= (forall!14281 lt!2153167 lambda!264613) e!3268098)))

(declare-fun b!5253117 () Bool)

(declare-fun e!3268099 () Bool)

(assert (=> b!5253117 (= e!3268098 e!3268099)))

(declare-fun res!2229408 () Bool)

(assert (=> b!5253117 (=> (not res!2229408) (not e!3268099))))

(declare-fun dynLambda!24010 (Int Regex!14867) Bool)

(assert (=> b!5253117 (= res!2229408 (dynLambda!24010 lambda!264613 (h!67224 lt!2153167)))))

(declare-fun b!5253118 () Bool)

(assert (=> b!5253118 (= e!3268099 (forall!14281 (t!374083 lt!2153167) lambda!264613))))

(assert (= (and d!1691599 (not res!2229407)) b!5253117))

(assert (= (and b!5253117 res!2229408) b!5253118))

(declare-fun b_lambda!202837 () Bool)

(assert (=> (not b_lambda!202837) (not b!5253117)))

(declare-fun m!6296224 () Bool)

(assert (=> b!5253117 m!6296224))

(declare-fun m!6296226 () Bool)

(assert (=> b!5253118 m!6296226))

(assert (=> b!5252994 d!1691599))

(declare-fun bs!1218278 () Bool)

(declare-fun b!5253203 () Bool)

(assert (= bs!1218278 (and b!5253203 b!5253000)))

(declare-fun lambda!264633 () Int)

(assert (=> bs!1218278 (not (= lambda!264633 lambda!264610))))

(assert (=> bs!1218278 (not (= lambda!264633 lambda!264611))))

(assert (=> b!5253203 true))

(assert (=> b!5253203 true))

(declare-fun bs!1218279 () Bool)

(declare-fun b!5253204 () Bool)

(assert (= bs!1218279 (and b!5253204 b!5253000)))

(declare-fun lambda!264634 () Int)

(assert (=> bs!1218279 (not (= lambda!264634 lambda!264610))))

(assert (=> bs!1218279 (= (and (= (regOne!30246 lt!2153182) (regOne!30246 r!7292)) (= (regTwo!30246 lt!2153182) (regTwo!30246 r!7292))) (= lambda!264634 lambda!264611))))

(declare-fun bs!1218280 () Bool)

(assert (= bs!1218280 (and b!5253204 b!5253203)))

(assert (=> bs!1218280 (not (= lambda!264634 lambda!264633))))

(assert (=> b!5253204 true))

(assert (=> b!5253204 true))

(declare-fun b!5253194 () Bool)

(declare-fun e!3268149 () Bool)

(declare-fun e!3268146 () Bool)

(assert (=> b!5253194 (= e!3268149 e!3268146)))

(declare-fun c!908772 () Bool)

(assert (=> b!5253194 (= c!908772 ((_ is Star!14867) lt!2153182))))

(declare-fun b!5253195 () Bool)

(declare-fun e!3268148 () Bool)

(assert (=> b!5253195 (= e!3268148 (= s!2326 (Cons!60778 (c!908723 lt!2153182) Nil!60778)))))

(declare-fun b!5253196 () Bool)

(declare-fun e!3268144 () Bool)

(assert (=> b!5253196 (= e!3268149 e!3268144)))

(declare-fun res!2229446 () Bool)

(assert (=> b!5253196 (= res!2229446 (matchRSpec!1970 (regOne!30247 lt!2153182) s!2326))))

(assert (=> b!5253196 (=> res!2229446 e!3268144)))

(declare-fun b!5253197 () Bool)

(declare-fun c!908775 () Bool)

(assert (=> b!5253197 (= c!908775 ((_ is ElementMatch!14867) lt!2153182))))

(declare-fun e!3268147 () Bool)

(assert (=> b!5253197 (= e!3268147 e!3268148)))

(declare-fun bm!372193 () Bool)

(declare-fun call!372199 () Bool)

(assert (=> bm!372193 (= call!372199 (isEmpty!32713 s!2326))))

(declare-fun bm!372194 () Bool)

(declare-fun call!372198 () Bool)

(assert (=> bm!372194 (= call!372198 (Exists!2048 (ite c!908772 lambda!264633 lambda!264634)))))

(declare-fun b!5253198 () Bool)

(declare-fun res!2229444 () Bool)

(declare-fun e!3268145 () Bool)

(assert (=> b!5253198 (=> res!2229444 e!3268145)))

(assert (=> b!5253198 (= res!2229444 call!372199)))

(assert (=> b!5253198 (= e!3268146 e!3268145)))

(declare-fun b!5253199 () Bool)

(assert (=> b!5253199 (= e!3268144 (matchRSpec!1970 (regTwo!30247 lt!2153182) s!2326))))

(declare-fun b!5253200 () Bool)

(declare-fun e!3268143 () Bool)

(assert (=> b!5253200 (= e!3268143 call!372199)))

(declare-fun d!1691601 () Bool)

(declare-fun c!908773 () Bool)

(assert (=> d!1691601 (= c!908773 ((_ is EmptyExpr!14867) lt!2153182))))

(assert (=> d!1691601 (= (matchRSpec!1970 lt!2153182 s!2326) e!3268143)))

(declare-fun b!5253201 () Bool)

(declare-fun c!908774 () Bool)

(assert (=> b!5253201 (= c!908774 ((_ is Union!14867) lt!2153182))))

(assert (=> b!5253201 (= e!3268148 e!3268149)))

(declare-fun b!5253202 () Bool)

(assert (=> b!5253202 (= e!3268143 e!3268147)))

(declare-fun res!2229445 () Bool)

(assert (=> b!5253202 (= res!2229445 (not ((_ is EmptyLang!14867) lt!2153182)))))

(assert (=> b!5253202 (=> (not res!2229445) (not e!3268147))))

(assert (=> b!5253203 (= e!3268145 call!372198)))

(assert (=> b!5253204 (= e!3268146 call!372198)))

(assert (= (and d!1691601 c!908773) b!5253200))

(assert (= (and d!1691601 (not c!908773)) b!5253202))

(assert (= (and b!5253202 res!2229445) b!5253197))

(assert (= (and b!5253197 c!908775) b!5253195))

(assert (= (and b!5253197 (not c!908775)) b!5253201))

(assert (= (and b!5253201 c!908774) b!5253196))

(assert (= (and b!5253201 (not c!908774)) b!5253194))

(assert (= (and b!5253196 (not res!2229446)) b!5253199))

(assert (= (and b!5253194 c!908772) b!5253198))

(assert (= (and b!5253194 (not c!908772)) b!5253204))

(assert (= (and b!5253198 (not res!2229444)) b!5253203))

(assert (= (or b!5253203 b!5253204) bm!372194))

(assert (= (or b!5253200 b!5253198) bm!372193))

(declare-fun m!6296236 () Bool)

(assert (=> b!5253196 m!6296236))

(declare-fun m!6296238 () Bool)

(assert (=> bm!372193 m!6296238))

(declare-fun m!6296240 () Bool)

(assert (=> bm!372194 m!6296240))

(declare-fun m!6296242 () Bool)

(assert (=> b!5253199 m!6296242))

(assert (=> b!5252994 d!1691601))

(declare-fun d!1691605 () Bool)

(assert (=> d!1691605 (= (matchR!7052 lt!2153182 s!2326) (matchRSpec!1970 lt!2153182 s!2326))))

(declare-fun lt!2153229 () Unit!152950)

(declare-fun choose!39145 (Regex!14867 List!60902) Unit!152950)

(assert (=> d!1691605 (= lt!2153229 (choose!39145 lt!2153182 s!2326))))

(assert (=> d!1691605 (validRegex!6603 lt!2153182)))

(assert (=> d!1691605 (= (mainMatchTheorem!1970 lt!2153182 s!2326) lt!2153229)))

(declare-fun bs!1218282 () Bool)

(assert (= bs!1218282 d!1691605))

(assert (=> bs!1218282 m!6296054))

(assert (=> bs!1218282 m!6296050))

(declare-fun m!6296252 () Bool)

(assert (=> bs!1218282 m!6296252))

(declare-fun m!6296254 () Bool)

(assert (=> bs!1218282 m!6296254))

(assert (=> b!5252994 d!1691605))

(declare-fun bm!372201 () Bool)

(declare-fun call!372206 () Bool)

(assert (=> bm!372201 (= call!372206 (isEmpty!32713 s!2326))))

(declare-fun b!5253289 () Bool)

(declare-fun res!2229495 () Bool)

(declare-fun e!3268194 () Bool)

(assert (=> b!5253289 (=> res!2229495 e!3268194)))

(declare-fun e!3268198 () Bool)

(assert (=> b!5253289 (= res!2229495 e!3268198)))

(declare-fun res!2229500 () Bool)

(assert (=> b!5253289 (=> (not res!2229500) (not e!3268198))))

(declare-fun lt!2153236 () Bool)

(assert (=> b!5253289 (= res!2229500 lt!2153236)))

(declare-fun b!5253290 () Bool)

(declare-fun e!3268193 () Bool)

(assert (=> b!5253290 (= e!3268193 (not lt!2153236))))

(declare-fun b!5253291 () Bool)

(declare-fun res!2229499 () Bool)

(declare-fun e!3268197 () Bool)

(assert (=> b!5253291 (=> res!2229499 e!3268197)))

(assert (=> b!5253291 (= res!2229499 (not (isEmpty!32713 (tail!10358 s!2326))))))

(declare-fun b!5253292 () Bool)

(declare-fun res!2229497 () Bool)

(assert (=> b!5253292 (=> (not res!2229497) (not e!3268198))))

(assert (=> b!5253292 (= res!2229497 (isEmpty!32713 (tail!10358 s!2326)))))

(declare-fun b!5253293 () Bool)

(declare-fun e!3268195 () Bool)

(declare-fun derivativeStep!4093 (Regex!14867 C!30004) Regex!14867)

(assert (=> b!5253293 (= e!3268195 (matchR!7052 (derivativeStep!4093 lt!2153182 (head!11261 s!2326)) (tail!10358 s!2326)))))

(declare-fun b!5253295 () Bool)

(declare-fun e!3268196 () Bool)

(assert (=> b!5253295 (= e!3268196 e!3268197)))

(declare-fun res!2229502 () Bool)

(assert (=> b!5253295 (=> res!2229502 e!3268197)))

(assert (=> b!5253295 (= res!2229502 call!372206)))

(declare-fun b!5253296 () Bool)

(assert (=> b!5253296 (= e!3268194 e!3268196)))

(declare-fun res!2229498 () Bool)

(assert (=> b!5253296 (=> (not res!2229498) (not e!3268196))))

(assert (=> b!5253296 (= res!2229498 (not lt!2153236))))

(declare-fun b!5253297 () Bool)

(declare-fun e!3268192 () Bool)

(assert (=> b!5253297 (= e!3268192 (= lt!2153236 call!372206))))

(declare-fun b!5253298 () Bool)

(assert (=> b!5253298 (= e!3268198 (= (head!11261 s!2326) (c!908723 lt!2153182)))))

(declare-fun b!5253299 () Bool)

(assert (=> b!5253299 (= e!3268195 (nullable!5036 lt!2153182))))

(declare-fun b!5253300 () Bool)

(assert (=> b!5253300 (= e!3268192 e!3268193)))

(declare-fun c!908795 () Bool)

(assert (=> b!5253300 (= c!908795 ((_ is EmptyLang!14867) lt!2153182))))

(declare-fun b!5253301 () Bool)

(declare-fun res!2229501 () Bool)

(assert (=> b!5253301 (=> (not res!2229501) (not e!3268198))))

(assert (=> b!5253301 (= res!2229501 (not call!372206))))

(declare-fun b!5253302 () Bool)

(assert (=> b!5253302 (= e!3268197 (not (= (head!11261 s!2326) (c!908723 lt!2153182))))))

(declare-fun d!1691609 () Bool)

(assert (=> d!1691609 e!3268192))

(declare-fun c!908794 () Bool)

(assert (=> d!1691609 (= c!908794 ((_ is EmptyExpr!14867) lt!2153182))))

(assert (=> d!1691609 (= lt!2153236 e!3268195)))

(declare-fun c!908796 () Bool)

(assert (=> d!1691609 (= c!908796 (isEmpty!32713 s!2326))))

(assert (=> d!1691609 (validRegex!6603 lt!2153182)))

(assert (=> d!1691609 (= (matchR!7052 lt!2153182 s!2326) lt!2153236)))

(declare-fun b!5253294 () Bool)

(declare-fun res!2229496 () Bool)

(assert (=> b!5253294 (=> res!2229496 e!3268194)))

(assert (=> b!5253294 (= res!2229496 (not ((_ is ElementMatch!14867) lt!2153182)))))

(assert (=> b!5253294 (= e!3268193 e!3268194)))

(assert (= (and d!1691609 c!908796) b!5253299))

(assert (= (and d!1691609 (not c!908796)) b!5253293))

(assert (= (and d!1691609 c!908794) b!5253297))

(assert (= (and d!1691609 (not c!908794)) b!5253300))

(assert (= (and b!5253300 c!908795) b!5253290))

(assert (= (and b!5253300 (not c!908795)) b!5253294))

(assert (= (and b!5253294 (not res!2229496)) b!5253289))

(assert (= (and b!5253289 res!2229500) b!5253301))

(assert (= (and b!5253301 res!2229501) b!5253292))

(assert (= (and b!5253292 res!2229497) b!5253298))

(assert (= (and b!5253289 (not res!2229495)) b!5253296))

(assert (= (and b!5253296 res!2229498) b!5253295))

(assert (= (and b!5253295 (not res!2229502)) b!5253291))

(assert (= (and b!5253291 (not res!2229499)) b!5253302))

(assert (= (or b!5253297 b!5253295 b!5253301) bm!372201))

(declare-fun m!6296278 () Bool)

(assert (=> b!5253291 m!6296278))

(assert (=> b!5253291 m!6296278))

(declare-fun m!6296280 () Bool)

(assert (=> b!5253291 m!6296280))

(declare-fun m!6296282 () Bool)

(assert (=> b!5253302 m!6296282))

(assert (=> b!5253298 m!6296282))

(assert (=> bm!372201 m!6296238))

(assert (=> b!5253293 m!6296282))

(assert (=> b!5253293 m!6296282))

(declare-fun m!6296284 () Bool)

(assert (=> b!5253293 m!6296284))

(assert (=> b!5253293 m!6296278))

(assert (=> b!5253293 m!6296284))

(assert (=> b!5253293 m!6296278))

(declare-fun m!6296286 () Bool)

(assert (=> b!5253293 m!6296286))

(assert (=> b!5253292 m!6296278))

(assert (=> b!5253292 m!6296278))

(assert (=> b!5253292 m!6296280))

(declare-fun m!6296288 () Bool)

(assert (=> b!5253299 m!6296288))

(assert (=> d!1691609 m!6296238))

(assert (=> d!1691609 m!6296254))

(assert (=> b!5252994 d!1691609))

(declare-fun bm!372202 () Bool)

(declare-fun call!372207 () Bool)

(assert (=> bm!372202 (= call!372207 (isEmpty!32713 s!2326))))

(declare-fun b!5253303 () Bool)

(declare-fun res!2229503 () Bool)

(declare-fun e!3268201 () Bool)

(assert (=> b!5253303 (=> res!2229503 e!3268201)))

(declare-fun e!3268205 () Bool)

(assert (=> b!5253303 (= res!2229503 e!3268205)))

(declare-fun res!2229508 () Bool)

(assert (=> b!5253303 (=> (not res!2229508) (not e!3268205))))

(declare-fun lt!2153237 () Bool)

(assert (=> b!5253303 (= res!2229508 lt!2153237)))

(declare-fun b!5253304 () Bool)

(declare-fun e!3268200 () Bool)

(assert (=> b!5253304 (= e!3268200 (not lt!2153237))))

(declare-fun b!5253305 () Bool)

(declare-fun res!2229507 () Bool)

(declare-fun e!3268204 () Bool)

(assert (=> b!5253305 (=> res!2229507 e!3268204)))

(assert (=> b!5253305 (= res!2229507 (not (isEmpty!32713 (tail!10358 s!2326))))))

(declare-fun b!5253306 () Bool)

(declare-fun res!2229505 () Bool)

(assert (=> b!5253306 (=> (not res!2229505) (not e!3268205))))

(assert (=> b!5253306 (= res!2229505 (isEmpty!32713 (tail!10358 s!2326)))))

(declare-fun b!5253307 () Bool)

(declare-fun e!3268202 () Bool)

(assert (=> b!5253307 (= e!3268202 (matchR!7052 (derivativeStep!4093 lt!2153181 (head!11261 s!2326)) (tail!10358 s!2326)))))

(declare-fun b!5253309 () Bool)

(declare-fun e!3268203 () Bool)

(assert (=> b!5253309 (= e!3268203 e!3268204)))

(declare-fun res!2229510 () Bool)

(assert (=> b!5253309 (=> res!2229510 e!3268204)))

(assert (=> b!5253309 (= res!2229510 call!372207)))

(declare-fun b!5253310 () Bool)

(assert (=> b!5253310 (= e!3268201 e!3268203)))

(declare-fun res!2229506 () Bool)

(assert (=> b!5253310 (=> (not res!2229506) (not e!3268203))))

(assert (=> b!5253310 (= res!2229506 (not lt!2153237))))

(declare-fun b!5253311 () Bool)

(declare-fun e!3268199 () Bool)

(assert (=> b!5253311 (= e!3268199 (= lt!2153237 call!372207))))

(declare-fun b!5253312 () Bool)

(assert (=> b!5253312 (= e!3268205 (= (head!11261 s!2326) (c!908723 lt!2153181)))))

(declare-fun b!5253313 () Bool)

(assert (=> b!5253313 (= e!3268202 (nullable!5036 lt!2153181))))

(declare-fun b!5253314 () Bool)

(assert (=> b!5253314 (= e!3268199 e!3268200)))

(declare-fun c!908798 () Bool)

(assert (=> b!5253314 (= c!908798 ((_ is EmptyLang!14867) lt!2153181))))

(declare-fun b!5253315 () Bool)

(declare-fun res!2229509 () Bool)

(assert (=> b!5253315 (=> (not res!2229509) (not e!3268205))))

(assert (=> b!5253315 (= res!2229509 (not call!372207))))

(declare-fun b!5253316 () Bool)

(assert (=> b!5253316 (= e!3268204 (not (= (head!11261 s!2326) (c!908723 lt!2153181))))))

(declare-fun d!1691615 () Bool)

(assert (=> d!1691615 e!3268199))

(declare-fun c!908797 () Bool)

(assert (=> d!1691615 (= c!908797 ((_ is EmptyExpr!14867) lt!2153181))))

(assert (=> d!1691615 (= lt!2153237 e!3268202)))

(declare-fun c!908799 () Bool)

(assert (=> d!1691615 (= c!908799 (isEmpty!32713 s!2326))))

(assert (=> d!1691615 (validRegex!6603 lt!2153181)))

(assert (=> d!1691615 (= (matchR!7052 lt!2153181 s!2326) lt!2153237)))

(declare-fun b!5253308 () Bool)

(declare-fun res!2229504 () Bool)

(assert (=> b!5253308 (=> res!2229504 e!3268201)))

(assert (=> b!5253308 (= res!2229504 (not ((_ is ElementMatch!14867) lt!2153181)))))

(assert (=> b!5253308 (= e!3268200 e!3268201)))

(assert (= (and d!1691615 c!908799) b!5253313))

(assert (= (and d!1691615 (not c!908799)) b!5253307))

(assert (= (and d!1691615 c!908797) b!5253311))

(assert (= (and d!1691615 (not c!908797)) b!5253314))

(assert (= (and b!5253314 c!908798) b!5253304))

(assert (= (and b!5253314 (not c!908798)) b!5253308))

(assert (= (and b!5253308 (not res!2229504)) b!5253303))

(assert (= (and b!5253303 res!2229508) b!5253315))

(assert (= (and b!5253315 res!2229509) b!5253306))

(assert (= (and b!5253306 res!2229505) b!5253312))

(assert (= (and b!5253303 (not res!2229503)) b!5253310))

(assert (= (and b!5253310 res!2229506) b!5253309))

(assert (= (and b!5253309 (not res!2229510)) b!5253305))

(assert (= (and b!5253305 (not res!2229507)) b!5253316))

(assert (= (or b!5253311 b!5253309 b!5253315) bm!372202))

(assert (=> b!5253305 m!6296278))

(assert (=> b!5253305 m!6296278))

(assert (=> b!5253305 m!6296280))

(assert (=> b!5253316 m!6296282))

(assert (=> b!5253312 m!6296282))

(assert (=> bm!372202 m!6296238))

(assert (=> b!5253307 m!6296282))

(assert (=> b!5253307 m!6296282))

(declare-fun m!6296290 () Bool)

(assert (=> b!5253307 m!6296290))

(assert (=> b!5253307 m!6296278))

(assert (=> b!5253307 m!6296290))

(assert (=> b!5253307 m!6296278))

(declare-fun m!6296292 () Bool)

(assert (=> b!5253307 m!6296292))

(assert (=> b!5253306 m!6296278))

(assert (=> b!5253306 m!6296278))

(assert (=> b!5253306 m!6296280))

(declare-fun m!6296294 () Bool)

(assert (=> b!5253313 m!6296294))

(assert (=> d!1691615 m!6296238))

(declare-fun m!6296296 () Bool)

(assert (=> d!1691615 m!6296296))

(assert (=> b!5252994 d!1691615))

(declare-fun d!1691617 () Bool)

(assert (=> d!1691617 (= (matchR!7052 lt!2153181 s!2326) (matchRSpec!1970 lt!2153181 s!2326))))

(declare-fun lt!2153238 () Unit!152950)

(assert (=> d!1691617 (= lt!2153238 (choose!39145 lt!2153181 s!2326))))

(assert (=> d!1691617 (validRegex!6603 lt!2153181)))

(assert (=> d!1691617 (= (mainMatchTheorem!1970 lt!2153181 s!2326) lt!2153238)))

(declare-fun bs!1218283 () Bool)

(assert (= bs!1218283 d!1691617))

(assert (=> bs!1218283 m!6296048))

(assert (=> bs!1218283 m!6296056))

(declare-fun m!6296298 () Bool)

(assert (=> bs!1218283 m!6296298))

(assert (=> bs!1218283 m!6296296))

(assert (=> b!5252994 d!1691617))

(declare-fun bs!1218284 () Bool)

(declare-fun b!5253326 () Bool)

(assert (= bs!1218284 (and b!5253326 b!5253000)))

(declare-fun lambda!264635 () Int)

(assert (=> bs!1218284 (not (= lambda!264635 lambda!264610))))

(assert (=> bs!1218284 (not (= lambda!264635 lambda!264611))))

(declare-fun bs!1218285 () Bool)

(assert (= bs!1218285 (and b!5253326 b!5253203)))

(assert (=> bs!1218285 (= (and (= (reg!15196 lt!2153181) (reg!15196 lt!2153182)) (= lt!2153181 lt!2153182)) (= lambda!264635 lambda!264633))))

(declare-fun bs!1218287 () Bool)

(assert (= bs!1218287 (and b!5253326 b!5253204)))

(assert (=> bs!1218287 (not (= lambda!264635 lambda!264634))))

(assert (=> b!5253326 true))

(assert (=> b!5253326 true))

(declare-fun bs!1218288 () Bool)

(declare-fun b!5253327 () Bool)

(assert (= bs!1218288 (and b!5253327 b!5253000)))

(declare-fun lambda!264636 () Int)

(assert (=> bs!1218288 (= (and (= (regOne!30246 lt!2153181) (regOne!30246 r!7292)) (= (regTwo!30246 lt!2153181) (regTwo!30246 r!7292))) (= lambda!264636 lambda!264611))))

(declare-fun bs!1218290 () Bool)

(assert (= bs!1218290 (and b!5253327 b!5253326)))

(assert (=> bs!1218290 (not (= lambda!264636 lambda!264635))))

(declare-fun bs!1218292 () Bool)

(assert (= bs!1218292 (and b!5253327 b!5253203)))

(assert (=> bs!1218292 (not (= lambda!264636 lambda!264633))))

(assert (=> bs!1218288 (not (= lambda!264636 lambda!264610))))

(declare-fun bs!1218294 () Bool)

(assert (= bs!1218294 (and b!5253327 b!5253204)))

(assert (=> bs!1218294 (= (and (= (regOne!30246 lt!2153181) (regOne!30246 lt!2153182)) (= (regTwo!30246 lt!2153181) (regTwo!30246 lt!2153182))) (= lambda!264636 lambda!264634))))

(assert (=> b!5253327 true))

(assert (=> b!5253327 true))

(declare-fun b!5253317 () Bool)

(declare-fun e!3268212 () Bool)

(declare-fun e!3268209 () Bool)

(assert (=> b!5253317 (= e!3268212 e!3268209)))

(declare-fun c!908800 () Bool)

(assert (=> b!5253317 (= c!908800 ((_ is Star!14867) lt!2153181))))

(declare-fun b!5253318 () Bool)

(declare-fun e!3268211 () Bool)

(assert (=> b!5253318 (= e!3268211 (= s!2326 (Cons!60778 (c!908723 lt!2153181) Nil!60778)))))

(declare-fun b!5253319 () Bool)

(declare-fun e!3268207 () Bool)

(assert (=> b!5253319 (= e!3268212 e!3268207)))

(declare-fun res!2229513 () Bool)

(assert (=> b!5253319 (= res!2229513 (matchRSpec!1970 (regOne!30247 lt!2153181) s!2326))))

(assert (=> b!5253319 (=> res!2229513 e!3268207)))

(declare-fun b!5253320 () Bool)

(declare-fun c!908803 () Bool)

(assert (=> b!5253320 (= c!908803 ((_ is ElementMatch!14867) lt!2153181))))

(declare-fun e!3268210 () Bool)

(assert (=> b!5253320 (= e!3268210 e!3268211)))

(declare-fun bm!372203 () Bool)

(declare-fun call!372209 () Bool)

(assert (=> bm!372203 (= call!372209 (isEmpty!32713 s!2326))))

(declare-fun bm!372204 () Bool)

(declare-fun call!372208 () Bool)

(assert (=> bm!372204 (= call!372208 (Exists!2048 (ite c!908800 lambda!264635 lambda!264636)))))

(declare-fun b!5253321 () Bool)

(declare-fun res!2229511 () Bool)

(declare-fun e!3268208 () Bool)

(assert (=> b!5253321 (=> res!2229511 e!3268208)))

(assert (=> b!5253321 (= res!2229511 call!372209)))

(assert (=> b!5253321 (= e!3268209 e!3268208)))

(declare-fun b!5253322 () Bool)

(assert (=> b!5253322 (= e!3268207 (matchRSpec!1970 (regTwo!30247 lt!2153181) s!2326))))

(declare-fun b!5253323 () Bool)

(declare-fun e!3268206 () Bool)

(assert (=> b!5253323 (= e!3268206 call!372209)))

(declare-fun d!1691619 () Bool)

(declare-fun c!908801 () Bool)

(assert (=> d!1691619 (= c!908801 ((_ is EmptyExpr!14867) lt!2153181))))

(assert (=> d!1691619 (= (matchRSpec!1970 lt!2153181 s!2326) e!3268206)))

(declare-fun b!5253324 () Bool)

(declare-fun c!908802 () Bool)

(assert (=> b!5253324 (= c!908802 ((_ is Union!14867) lt!2153181))))

(assert (=> b!5253324 (= e!3268211 e!3268212)))

(declare-fun b!5253325 () Bool)

(assert (=> b!5253325 (= e!3268206 e!3268210)))

(declare-fun res!2229512 () Bool)

(assert (=> b!5253325 (= res!2229512 (not ((_ is EmptyLang!14867) lt!2153181)))))

(assert (=> b!5253325 (=> (not res!2229512) (not e!3268210))))

(assert (=> b!5253326 (= e!3268208 call!372208)))

(assert (=> b!5253327 (= e!3268209 call!372208)))

(assert (= (and d!1691619 c!908801) b!5253323))

(assert (= (and d!1691619 (not c!908801)) b!5253325))

(assert (= (and b!5253325 res!2229512) b!5253320))

(assert (= (and b!5253320 c!908803) b!5253318))

(assert (= (and b!5253320 (not c!908803)) b!5253324))

(assert (= (and b!5253324 c!908802) b!5253319))

(assert (= (and b!5253324 (not c!908802)) b!5253317))

(assert (= (and b!5253319 (not res!2229513)) b!5253322))

(assert (= (and b!5253317 c!908800) b!5253321))

(assert (= (and b!5253317 (not c!908800)) b!5253327))

(assert (= (and b!5253321 (not res!2229511)) b!5253326))

(assert (= (or b!5253326 b!5253327) bm!372204))

(assert (= (or b!5253323 b!5253321) bm!372203))

(declare-fun m!6296302 () Bool)

(assert (=> b!5253319 m!6296302))

(assert (=> bm!372203 m!6296238))

(declare-fun m!6296304 () Bool)

(assert (=> bm!372204 m!6296304))

(declare-fun m!6296306 () Bool)

(assert (=> b!5253322 m!6296306))

(assert (=> b!5252994 d!1691619))

(declare-fun e!3268228 () Bool)

(declare-fun d!1691623 () Bool)

(assert (=> d!1691623 (= (matchZipper!1111 ((_ map or) lt!2153163 lt!2153178) (t!374085 s!2326)) e!3268228)))

(declare-fun res!2229525 () Bool)

(assert (=> d!1691623 (=> res!2229525 e!3268228)))

(assert (=> d!1691623 (= res!2229525 (matchZipper!1111 lt!2153163 (t!374085 s!2326)))))

(declare-fun lt!2153245 () Unit!152950)

(declare-fun choose!39147 ((InoxSet Context!8502) (InoxSet Context!8502) List!60902) Unit!152950)

(assert (=> d!1691623 (= lt!2153245 (choose!39147 lt!2153163 lt!2153178 (t!374085 s!2326)))))

(assert (=> d!1691623 (= (lemmaZipperConcatMatchesSameAsBothZippers!104 lt!2153163 lt!2153178 (t!374085 s!2326)) lt!2153245)))

(declare-fun b!5253347 () Bool)

(assert (=> b!5253347 (= e!3268228 (matchZipper!1111 lt!2153178 (t!374085 s!2326)))))

(assert (= (and d!1691623 (not res!2229525)) b!5253347))

(assert (=> d!1691623 m!6296132))

(assert (=> d!1691623 m!6296150))

(declare-fun m!6296320 () Bool)

(assert (=> d!1691623 m!6296320))

(assert (=> b!5253347 m!6296042))

(assert (=> b!5253015 d!1691623))

(declare-fun d!1691631 () Bool)

(declare-fun c!908808 () Bool)

(assert (=> d!1691631 (= c!908808 (isEmpty!32713 (t!374085 s!2326)))))

(declare-fun e!3268229 () Bool)

(assert (=> d!1691631 (= (matchZipper!1111 ((_ map or) lt!2153163 lt!2153178) (t!374085 s!2326)) e!3268229)))

(declare-fun b!5253348 () Bool)

(assert (=> b!5253348 (= e!3268229 (nullableZipper!1271 ((_ map or) lt!2153163 lt!2153178)))))

(declare-fun b!5253349 () Bool)

(assert (=> b!5253349 (= e!3268229 (matchZipper!1111 (derivationStepZipper!1115 ((_ map or) lt!2153163 lt!2153178) (head!11261 (t!374085 s!2326))) (tail!10358 (t!374085 s!2326))))))

(assert (= (and d!1691631 c!908808) b!5253348))

(assert (= (and d!1691631 (not c!908808)) b!5253349))

(assert (=> d!1691631 m!6296204))

(declare-fun m!6296322 () Bool)

(assert (=> b!5253348 m!6296322))

(assert (=> b!5253349 m!6296208))

(assert (=> b!5253349 m!6296208))

(declare-fun m!6296324 () Bool)

(assert (=> b!5253349 m!6296324))

(assert (=> b!5253349 m!6296212))

(assert (=> b!5253349 m!6296324))

(assert (=> b!5253349 m!6296212))

(declare-fun m!6296326 () Bool)

(assert (=> b!5253349 m!6296326))

(assert (=> b!5253015 d!1691631))

(declare-fun d!1691633 () Bool)

(assert (=> d!1691633 (= (isEmpty!32712 (t!374083 (exprs!4751 (h!67225 zl!343)))) ((_ is Nil!60776) (t!374083 (exprs!4751 (h!67225 zl!343)))))))

(assert (=> b!5253014 d!1691633))

(declare-fun bm!372223 () Bool)

(declare-fun call!372228 () (InoxSet Context!8502))

(declare-fun call!372231 () (InoxSet Context!8502))

(assert (=> bm!372223 (= call!372228 call!372231)))

(declare-fun b!5253400 () Bool)

(declare-fun e!3268260 () (InoxSet Context!8502))

(declare-fun call!372229 () (InoxSet Context!8502))

(assert (=> b!5253400 (= e!3268260 call!372229)))

(declare-fun b!5253401 () Bool)

(declare-fun e!3268261 () Bool)

(assert (=> b!5253401 (= e!3268261 (nullable!5036 (regOne!30246 (h!67224 (exprs!4751 (h!67225 zl!343))))))))

(declare-fun b!5253402 () Bool)

(declare-fun e!3268259 () (InoxSet Context!8502))

(assert (=> b!5253402 (= e!3268259 (store ((as const (Array Context!8502 Bool)) false) lt!2153183 true))))

(declare-fun bm!372225 () Bool)

(declare-fun call!372233 () List!60900)

(declare-fun call!372232 () List!60900)

(assert (=> bm!372225 (= call!372233 call!372232)))

(declare-fun b!5253403 () Bool)

(declare-fun e!3268258 () (InoxSet Context!8502))

(declare-fun call!372230 () (InoxSet Context!8502))

(assert (=> b!5253403 (= e!3268258 ((_ map or) call!372230 call!372228))))

(declare-fun c!908834 () Bool)

(declare-fun c!908835 () Bool)

(declare-fun bm!372226 () Bool)

(declare-fun c!908833 () Bool)

(assert (=> bm!372226 (= call!372231 (derivationStepZipperDown!315 (ite c!908835 (regOne!30247 (h!67224 (exprs!4751 (h!67225 zl!343)))) (ite c!908834 (regTwo!30246 (h!67224 (exprs!4751 (h!67225 zl!343)))) (ite c!908833 (regOne!30246 (h!67224 (exprs!4751 (h!67225 zl!343)))) (reg!15196 (h!67224 (exprs!4751 (h!67225 zl!343))))))) (ite (or c!908835 c!908834) lt!2153183 (Context!8503 call!372233)) (h!67226 s!2326)))))

(declare-fun b!5253404 () Bool)

(assert (=> b!5253404 (= e!3268260 ((as const (Array Context!8502 Bool)) false))))

(declare-fun b!5253405 () Bool)

(declare-fun e!3268263 () (InoxSet Context!8502))

(assert (=> b!5253405 (= e!3268258 e!3268263)))

(assert (=> b!5253405 (= c!908833 ((_ is Concat!23712) (h!67224 (exprs!4751 (h!67225 zl!343)))))))

(declare-fun b!5253406 () Bool)

(assert (=> b!5253406 (= e!3268263 call!372229)))

(declare-fun bm!372227 () Bool)

(assert (=> bm!372227 (= call!372229 call!372228)))

(declare-fun b!5253407 () Bool)

(declare-fun e!3268262 () (InoxSet Context!8502))

(assert (=> b!5253407 (= e!3268259 e!3268262)))

(assert (=> b!5253407 (= c!908835 ((_ is Union!14867) (h!67224 (exprs!4751 (h!67225 zl!343)))))))

(declare-fun b!5253408 () Bool)

(declare-fun c!908831 () Bool)

(assert (=> b!5253408 (= c!908831 ((_ is Star!14867) (h!67224 (exprs!4751 (h!67225 zl!343)))))))

(assert (=> b!5253408 (= e!3268263 e!3268260)))

(declare-fun b!5253409 () Bool)

(assert (=> b!5253409 (= c!908834 e!3268261)))

(declare-fun res!2229532 () Bool)

(assert (=> b!5253409 (=> (not res!2229532) (not e!3268261))))

(assert (=> b!5253409 (= res!2229532 ((_ is Concat!23712) (h!67224 (exprs!4751 (h!67225 zl!343)))))))

(assert (=> b!5253409 (= e!3268262 e!3268258)))

(declare-fun b!5253410 () Bool)

(assert (=> b!5253410 (= e!3268262 ((_ map or) call!372231 call!372230))))

(declare-fun bm!372228 () Bool)

(assert (=> bm!372228 (= call!372230 (derivationStepZipperDown!315 (ite c!908835 (regTwo!30247 (h!67224 (exprs!4751 (h!67225 zl!343)))) (regOne!30246 (h!67224 (exprs!4751 (h!67225 zl!343))))) (ite c!908835 lt!2153183 (Context!8503 call!372232)) (h!67226 s!2326)))))

(declare-fun d!1691635 () Bool)

(declare-fun c!908832 () Bool)

(assert (=> d!1691635 (= c!908832 (and ((_ is ElementMatch!14867) (h!67224 (exprs!4751 (h!67225 zl!343)))) (= (c!908723 (h!67224 (exprs!4751 (h!67225 zl!343)))) (h!67226 s!2326))))))

(assert (=> d!1691635 (= (derivationStepZipperDown!315 (h!67224 (exprs!4751 (h!67225 zl!343))) lt!2153183 (h!67226 s!2326)) e!3268259)))

(declare-fun bm!372224 () Bool)

(declare-fun $colon$colon!1321 (List!60900 Regex!14867) List!60900)

(assert (=> bm!372224 (= call!372232 ($colon$colon!1321 (exprs!4751 lt!2153183) (ite (or c!908834 c!908833) (regTwo!30246 (h!67224 (exprs!4751 (h!67225 zl!343)))) (h!67224 (exprs!4751 (h!67225 zl!343))))))))

(assert (= (and d!1691635 c!908832) b!5253402))

(assert (= (and d!1691635 (not c!908832)) b!5253407))

(assert (= (and b!5253407 c!908835) b!5253410))

(assert (= (and b!5253407 (not c!908835)) b!5253409))

(assert (= (and b!5253409 res!2229532) b!5253401))

(assert (= (and b!5253409 c!908834) b!5253403))

(assert (= (and b!5253409 (not c!908834)) b!5253405))

(assert (= (and b!5253405 c!908833) b!5253406))

(assert (= (and b!5253405 (not c!908833)) b!5253408))

(assert (= (and b!5253408 c!908831) b!5253400))

(assert (= (and b!5253408 (not c!908831)) b!5253404))

(assert (= (or b!5253406 b!5253400) bm!372225))

(assert (= (or b!5253406 b!5253400) bm!372227))

(assert (= (or b!5253403 bm!372225) bm!372224))

(assert (= (or b!5253403 bm!372227) bm!372223))

(assert (= (or b!5253410 b!5253403) bm!372228))

(assert (= (or b!5253410 bm!372223) bm!372226))

(declare-fun m!6296356 () Bool)

(assert (=> bm!372224 m!6296356))

(declare-fun m!6296358 () Bool)

(assert (=> bm!372228 m!6296358))

(declare-fun m!6296360 () Bool)

(assert (=> bm!372226 m!6296360))

(declare-fun m!6296362 () Bool)

(assert (=> b!5253401 m!6296362))

(declare-fun m!6296364 () Bool)

(assert (=> b!5253402 m!6296364))

(assert (=> b!5252993 d!1691635))

(declare-fun d!1691651 () Bool)

(declare-fun nullableFct!1424 (Regex!14867) Bool)

(assert (=> d!1691651 (= (nullable!5036 (h!67224 (exprs!4751 (h!67225 zl!343)))) (nullableFct!1424 (h!67224 (exprs!4751 (h!67225 zl!343)))))))

(declare-fun bs!1218303 () Bool)

(assert (= bs!1218303 d!1691651))

(declare-fun m!6296366 () Bool)

(assert (=> bs!1218303 m!6296366))

(assert (=> b!5252993 d!1691651))

(declare-fun b!5253459 () Bool)

(declare-fun e!3268291 () (InoxSet Context!8502))

(declare-fun e!3268292 () (InoxSet Context!8502))

(assert (=> b!5253459 (= e!3268291 e!3268292)))

(declare-fun c!908858 () Bool)

(assert (=> b!5253459 (= c!908858 ((_ is Cons!60776) (exprs!4751 (Context!8503 (Cons!60776 (h!67224 (exprs!4751 (h!67225 zl!343))) (t!374083 (exprs!4751 (h!67225 zl!343))))))))))

(declare-fun b!5253460 () Bool)

(assert (=> b!5253460 (= e!3268292 ((as const (Array Context!8502 Bool)) false))))

(declare-fun b!5253461 () Bool)

(declare-fun call!372255 () (InoxSet Context!8502))

(assert (=> b!5253461 (= e!3268291 ((_ map or) call!372255 (derivationStepZipperUp!239 (Context!8503 (t!374083 (exprs!4751 (Context!8503 (Cons!60776 (h!67224 (exprs!4751 (h!67225 zl!343))) (t!374083 (exprs!4751 (h!67225 zl!343)))))))) (h!67226 s!2326))))))

(declare-fun bm!372250 () Bool)

(assert (=> bm!372250 (= call!372255 (derivationStepZipperDown!315 (h!67224 (exprs!4751 (Context!8503 (Cons!60776 (h!67224 (exprs!4751 (h!67225 zl!343))) (t!374083 (exprs!4751 (h!67225 zl!343))))))) (Context!8503 (t!374083 (exprs!4751 (Context!8503 (Cons!60776 (h!67224 (exprs!4751 (h!67225 zl!343))) (t!374083 (exprs!4751 (h!67225 zl!343)))))))) (h!67226 s!2326)))))

(declare-fun b!5253462 () Bool)

(assert (=> b!5253462 (= e!3268292 call!372255)))

(declare-fun b!5253463 () Bool)

(declare-fun e!3268293 () Bool)

(assert (=> b!5253463 (= e!3268293 (nullable!5036 (h!67224 (exprs!4751 (Context!8503 (Cons!60776 (h!67224 (exprs!4751 (h!67225 zl!343))) (t!374083 (exprs!4751 (h!67225 zl!343)))))))))))

(declare-fun d!1691653 () Bool)

(declare-fun c!908857 () Bool)

(assert (=> d!1691653 (= c!908857 e!3268293)))

(declare-fun res!2229539 () Bool)

(assert (=> d!1691653 (=> (not res!2229539) (not e!3268293))))

(assert (=> d!1691653 (= res!2229539 ((_ is Cons!60776) (exprs!4751 (Context!8503 (Cons!60776 (h!67224 (exprs!4751 (h!67225 zl!343))) (t!374083 (exprs!4751 (h!67225 zl!343))))))))))

(assert (=> d!1691653 (= (derivationStepZipperUp!239 (Context!8503 (Cons!60776 (h!67224 (exprs!4751 (h!67225 zl!343))) (t!374083 (exprs!4751 (h!67225 zl!343))))) (h!67226 s!2326)) e!3268291)))

(assert (= (and d!1691653 res!2229539) b!5253463))

(assert (= (and d!1691653 c!908857) b!5253461))

(assert (= (and d!1691653 (not c!908857)) b!5253459))

(assert (= (and b!5253459 c!908858) b!5253462))

(assert (= (and b!5253459 (not c!908858)) b!5253460))

(assert (= (or b!5253461 b!5253462) bm!372250))

(declare-fun m!6296384 () Bool)

(assert (=> b!5253461 m!6296384))

(declare-fun m!6296386 () Bool)

(assert (=> bm!372250 m!6296386))

(declare-fun m!6296388 () Bool)

(assert (=> b!5253463 m!6296388))

(assert (=> b!5252993 d!1691653))

(declare-fun b!5253464 () Bool)

(declare-fun e!3268294 () (InoxSet Context!8502))

(declare-fun e!3268295 () (InoxSet Context!8502))

(assert (=> b!5253464 (= e!3268294 e!3268295)))

(declare-fun c!908860 () Bool)

(assert (=> b!5253464 (= c!908860 ((_ is Cons!60776) (exprs!4751 lt!2153183)))))

(declare-fun b!5253465 () Bool)

(assert (=> b!5253465 (= e!3268295 ((as const (Array Context!8502 Bool)) false))))

(declare-fun call!372256 () (InoxSet Context!8502))

(declare-fun b!5253466 () Bool)

(assert (=> b!5253466 (= e!3268294 ((_ map or) call!372256 (derivationStepZipperUp!239 (Context!8503 (t!374083 (exprs!4751 lt!2153183))) (h!67226 s!2326))))))

(declare-fun bm!372251 () Bool)

(assert (=> bm!372251 (= call!372256 (derivationStepZipperDown!315 (h!67224 (exprs!4751 lt!2153183)) (Context!8503 (t!374083 (exprs!4751 lt!2153183))) (h!67226 s!2326)))))

(declare-fun b!5253467 () Bool)

(assert (=> b!5253467 (= e!3268295 call!372256)))

(declare-fun b!5253468 () Bool)

(declare-fun e!3268296 () Bool)

(assert (=> b!5253468 (= e!3268296 (nullable!5036 (h!67224 (exprs!4751 lt!2153183))))))

(declare-fun d!1691661 () Bool)

(declare-fun c!908859 () Bool)

(assert (=> d!1691661 (= c!908859 e!3268296)))

(declare-fun res!2229540 () Bool)

(assert (=> d!1691661 (=> (not res!2229540) (not e!3268296))))

(assert (=> d!1691661 (= res!2229540 ((_ is Cons!60776) (exprs!4751 lt!2153183)))))

(assert (=> d!1691661 (= (derivationStepZipperUp!239 lt!2153183 (h!67226 s!2326)) e!3268294)))

(assert (= (and d!1691661 res!2229540) b!5253468))

(assert (= (and d!1691661 c!908859) b!5253466))

(assert (= (and d!1691661 (not c!908859)) b!5253464))

(assert (= (and b!5253464 c!908860) b!5253467))

(assert (= (and b!5253464 (not c!908860)) b!5253465))

(assert (= (or b!5253466 b!5253467) bm!372251))

(declare-fun m!6296390 () Bool)

(assert (=> b!5253466 m!6296390))

(declare-fun m!6296392 () Bool)

(assert (=> bm!372251 m!6296392))

(declare-fun m!6296394 () Bool)

(assert (=> b!5253468 m!6296394))

(assert (=> b!5252993 d!1691661))

(declare-fun d!1691663 () Bool)

(declare-fun choose!39150 ((InoxSet Context!8502) Int) (InoxSet Context!8502))

(assert (=> d!1691663 (= (flatMap!594 z!1189 lambda!264612) (choose!39150 z!1189 lambda!264612))))

(declare-fun bs!1218304 () Bool)

(assert (= bs!1218304 d!1691663))

(declare-fun m!6296402 () Bool)

(assert (=> bs!1218304 m!6296402))

(assert (=> b!5252993 d!1691663))

(declare-fun d!1691667 () Bool)

(declare-fun dynLambda!24013 (Int Context!8502) (InoxSet Context!8502))

(assert (=> d!1691667 (= (flatMap!594 z!1189 lambda!264612) (dynLambda!24013 lambda!264612 (h!67225 zl!343)))))

(declare-fun lt!2153258 () Unit!152950)

(declare-fun choose!39151 ((InoxSet Context!8502) Context!8502 Int) Unit!152950)

(assert (=> d!1691667 (= lt!2153258 (choose!39151 z!1189 (h!67225 zl!343) lambda!264612))))

(assert (=> d!1691667 (= z!1189 (store ((as const (Array Context!8502 Bool)) false) (h!67225 zl!343) true))))

(assert (=> d!1691667 (= (lemmaFlatMapOnSingletonSet!126 z!1189 (h!67225 zl!343) lambda!264612) lt!2153258)))

(declare-fun b_lambda!202843 () Bool)

(assert (=> (not b_lambda!202843) (not d!1691667)))

(declare-fun bs!1218310 () Bool)

(assert (= bs!1218310 d!1691667))

(assert (=> bs!1218310 m!6296114))

(declare-fun m!6296408 () Bool)

(assert (=> bs!1218310 m!6296408))

(declare-fun m!6296410 () Bool)

(assert (=> bs!1218310 m!6296410))

(declare-fun m!6296412 () Bool)

(assert (=> bs!1218310 m!6296412))

(assert (=> b!5252993 d!1691667))

(declare-fun b!5253472 () Bool)

(declare-fun e!3268300 () (InoxSet Context!8502))

(declare-fun e!3268301 () (InoxSet Context!8502))

(assert (=> b!5253472 (= e!3268300 e!3268301)))

(declare-fun c!908862 () Bool)

(assert (=> b!5253472 (= c!908862 ((_ is Cons!60776) (exprs!4751 (h!67225 zl!343))))))

(declare-fun b!5253473 () Bool)

(assert (=> b!5253473 (= e!3268301 ((as const (Array Context!8502 Bool)) false))))

(declare-fun call!372257 () (InoxSet Context!8502))

(declare-fun b!5253474 () Bool)

(assert (=> b!5253474 (= e!3268300 ((_ map or) call!372257 (derivationStepZipperUp!239 (Context!8503 (t!374083 (exprs!4751 (h!67225 zl!343)))) (h!67226 s!2326))))))

(declare-fun bm!372252 () Bool)

(assert (=> bm!372252 (= call!372257 (derivationStepZipperDown!315 (h!67224 (exprs!4751 (h!67225 zl!343))) (Context!8503 (t!374083 (exprs!4751 (h!67225 zl!343)))) (h!67226 s!2326)))))

(declare-fun b!5253475 () Bool)

(assert (=> b!5253475 (= e!3268301 call!372257)))

(declare-fun b!5253476 () Bool)

(declare-fun e!3268302 () Bool)

(assert (=> b!5253476 (= e!3268302 (nullable!5036 (h!67224 (exprs!4751 (h!67225 zl!343)))))))

(declare-fun d!1691673 () Bool)

(declare-fun c!908861 () Bool)

(assert (=> d!1691673 (= c!908861 e!3268302)))

(declare-fun res!2229544 () Bool)

(assert (=> d!1691673 (=> (not res!2229544) (not e!3268302))))

(assert (=> d!1691673 (= res!2229544 ((_ is Cons!60776) (exprs!4751 (h!67225 zl!343))))))

(assert (=> d!1691673 (= (derivationStepZipperUp!239 (h!67225 zl!343) (h!67226 s!2326)) e!3268300)))

(assert (= (and d!1691673 res!2229544) b!5253476))

(assert (= (and d!1691673 c!908861) b!5253474))

(assert (= (and d!1691673 (not c!908861)) b!5253472))

(assert (= (and b!5253472 c!908862) b!5253475))

(assert (= (and b!5253472 (not c!908862)) b!5253473))

(assert (= (or b!5253474 b!5253475) bm!372252))

(declare-fun m!6296414 () Bool)

(assert (=> b!5253474 m!6296414))

(declare-fun m!6296416 () Bool)

(assert (=> bm!372252 m!6296416))

(assert (=> b!5253476 m!6296120))

(assert (=> b!5252993 d!1691673))

(declare-fun d!1691675 () Bool)

(declare-fun c!908863 () Bool)

(assert (=> d!1691675 (= c!908863 (isEmpty!32713 (t!374085 s!2326)))))

(declare-fun e!3268303 () Bool)

(assert (=> d!1691675 (= (matchZipper!1111 lt!2153175 (t!374085 s!2326)) e!3268303)))

(declare-fun b!5253477 () Bool)

(assert (=> b!5253477 (= e!3268303 (nullableZipper!1271 lt!2153175))))

(declare-fun b!5253478 () Bool)

(assert (=> b!5253478 (= e!3268303 (matchZipper!1111 (derivationStepZipper!1115 lt!2153175 (head!11261 (t!374085 s!2326))) (tail!10358 (t!374085 s!2326))))))

(assert (= (and d!1691675 c!908863) b!5253477))

(assert (= (and d!1691675 (not c!908863)) b!5253478))

(assert (=> d!1691675 m!6296204))

(declare-fun m!6296418 () Bool)

(assert (=> b!5253477 m!6296418))

(assert (=> b!5253478 m!6296208))

(assert (=> b!5253478 m!6296208))

(declare-fun m!6296420 () Bool)

(assert (=> b!5253478 m!6296420))

(assert (=> b!5253478 m!6296212))

(assert (=> b!5253478 m!6296420))

(assert (=> b!5253478 m!6296212))

(declare-fun m!6296422 () Bool)

(assert (=> b!5253478 m!6296422))

(assert (=> b!5253013 d!1691675))

(declare-fun d!1691677 () Bool)

(declare-fun lt!2153261 () Regex!14867)

(assert (=> d!1691677 (validRegex!6603 lt!2153261)))

(assert (=> d!1691677 (= lt!2153261 (generalisedUnion!796 (unfocusZipperList!309 zl!343)))))

(assert (=> d!1691677 (= (unfocusZipper!609 zl!343) lt!2153261)))

(declare-fun bs!1218311 () Bool)

(assert (= bs!1218311 d!1691677))

(declare-fun m!6296428 () Bool)

(assert (=> bs!1218311 m!6296428))

(assert (=> bs!1218311 m!6296126))

(assert (=> bs!1218311 m!6296126))

(assert (=> bs!1218311 m!6296128))

(assert (=> b!5253012 d!1691677))

(assert (=> b!5252991 d!1691675))

(declare-fun bm!372253 () Bool)

(declare-fun call!372258 () (InoxSet Context!8502))

(declare-fun call!372261 () (InoxSet Context!8502))

(assert (=> bm!372253 (= call!372258 call!372261)))

(declare-fun b!5253485 () Bool)

(declare-fun e!3268309 () (InoxSet Context!8502))

(declare-fun call!372259 () (InoxSet Context!8502))

(assert (=> b!5253485 (= e!3268309 call!372259)))

(declare-fun b!5253486 () Bool)

(declare-fun e!3268310 () Bool)

(assert (=> b!5253486 (= e!3268310 (nullable!5036 (regOne!30246 (regTwo!30247 (regOne!30246 r!7292)))))))

(declare-fun b!5253487 () Bool)

(declare-fun e!3268308 () (InoxSet Context!8502))

(assert (=> b!5253487 (= e!3268308 (store ((as const (Array Context!8502 Bool)) false) lt!2153183 true))))

(declare-fun bm!372255 () Bool)

(declare-fun call!372263 () List!60900)

(declare-fun call!372262 () List!60900)

(assert (=> bm!372255 (= call!372263 call!372262)))

(declare-fun b!5253488 () Bool)

(declare-fun e!3268307 () (InoxSet Context!8502))

(declare-fun call!372260 () (InoxSet Context!8502))

(assert (=> b!5253488 (= e!3268307 ((_ map or) call!372260 call!372258))))

(declare-fun c!908871 () Bool)

(declare-fun bm!372256 () Bool)

(declare-fun c!908870 () Bool)

(declare-fun c!908869 () Bool)

(assert (=> bm!372256 (= call!372261 (derivationStepZipperDown!315 (ite c!908871 (regOne!30247 (regTwo!30247 (regOne!30246 r!7292))) (ite c!908870 (regTwo!30246 (regTwo!30247 (regOne!30246 r!7292))) (ite c!908869 (regOne!30246 (regTwo!30247 (regOne!30246 r!7292))) (reg!15196 (regTwo!30247 (regOne!30246 r!7292)))))) (ite (or c!908871 c!908870) lt!2153183 (Context!8503 call!372263)) (h!67226 s!2326)))))

(declare-fun b!5253489 () Bool)

(assert (=> b!5253489 (= e!3268309 ((as const (Array Context!8502 Bool)) false))))

(declare-fun b!5253490 () Bool)

(declare-fun e!3268312 () (InoxSet Context!8502))

(assert (=> b!5253490 (= e!3268307 e!3268312)))

(assert (=> b!5253490 (= c!908869 ((_ is Concat!23712) (regTwo!30247 (regOne!30246 r!7292))))))

(declare-fun b!5253491 () Bool)

(assert (=> b!5253491 (= e!3268312 call!372259)))

(declare-fun bm!372257 () Bool)

(assert (=> bm!372257 (= call!372259 call!372258)))

(declare-fun b!5253492 () Bool)

(declare-fun e!3268311 () (InoxSet Context!8502))

(assert (=> b!5253492 (= e!3268308 e!3268311)))

(assert (=> b!5253492 (= c!908871 ((_ is Union!14867) (regTwo!30247 (regOne!30246 r!7292))))))

(declare-fun b!5253493 () Bool)

(declare-fun c!908867 () Bool)

(assert (=> b!5253493 (= c!908867 ((_ is Star!14867) (regTwo!30247 (regOne!30246 r!7292))))))

(assert (=> b!5253493 (= e!3268312 e!3268309)))

(declare-fun b!5253494 () Bool)

(assert (=> b!5253494 (= c!908870 e!3268310)))

(declare-fun res!2229545 () Bool)

(assert (=> b!5253494 (=> (not res!2229545) (not e!3268310))))

(assert (=> b!5253494 (= res!2229545 ((_ is Concat!23712) (regTwo!30247 (regOne!30246 r!7292))))))

(assert (=> b!5253494 (= e!3268311 e!3268307)))

(declare-fun b!5253495 () Bool)

(assert (=> b!5253495 (= e!3268311 ((_ map or) call!372261 call!372260))))

(declare-fun bm!372258 () Bool)

(assert (=> bm!372258 (= call!372260 (derivationStepZipperDown!315 (ite c!908871 (regTwo!30247 (regTwo!30247 (regOne!30246 r!7292))) (regOne!30246 (regTwo!30247 (regOne!30246 r!7292)))) (ite c!908871 lt!2153183 (Context!8503 call!372262)) (h!67226 s!2326)))))

(declare-fun d!1691679 () Bool)

(declare-fun c!908868 () Bool)

(assert (=> d!1691679 (= c!908868 (and ((_ is ElementMatch!14867) (regTwo!30247 (regOne!30246 r!7292))) (= (c!908723 (regTwo!30247 (regOne!30246 r!7292))) (h!67226 s!2326))))))

(assert (=> d!1691679 (= (derivationStepZipperDown!315 (regTwo!30247 (regOne!30246 r!7292)) lt!2153183 (h!67226 s!2326)) e!3268308)))

(declare-fun bm!372254 () Bool)

(assert (=> bm!372254 (= call!372262 ($colon$colon!1321 (exprs!4751 lt!2153183) (ite (or c!908870 c!908869) (regTwo!30246 (regTwo!30247 (regOne!30246 r!7292))) (regTwo!30247 (regOne!30246 r!7292)))))))

(assert (= (and d!1691679 c!908868) b!5253487))

(assert (= (and d!1691679 (not c!908868)) b!5253492))

(assert (= (and b!5253492 c!908871) b!5253495))

(assert (= (and b!5253492 (not c!908871)) b!5253494))

(assert (= (and b!5253494 res!2229545) b!5253486))

(assert (= (and b!5253494 c!908870) b!5253488))

(assert (= (and b!5253494 (not c!908870)) b!5253490))

(assert (= (and b!5253490 c!908869) b!5253491))

(assert (= (and b!5253490 (not c!908869)) b!5253493))

(assert (= (and b!5253493 c!908867) b!5253485))

(assert (= (and b!5253493 (not c!908867)) b!5253489))

(assert (= (or b!5253491 b!5253485) bm!372255))

(assert (= (or b!5253491 b!5253485) bm!372257))

(assert (= (or b!5253488 bm!372255) bm!372254))

(assert (= (or b!5253488 bm!372257) bm!372253))

(assert (= (or b!5253495 b!5253488) bm!372258))

(assert (= (or b!5253495 bm!372253) bm!372256))

(declare-fun m!6296438 () Bool)

(assert (=> bm!372254 m!6296438))

(declare-fun m!6296440 () Bool)

(assert (=> bm!372258 m!6296440))

(declare-fun m!6296442 () Bool)

(assert (=> bm!372256 m!6296442))

(declare-fun m!6296444 () Bool)

(assert (=> b!5253486 m!6296444))

(assert (=> b!5253487 m!6296364))

(assert (=> b!5252990 d!1691679))

(declare-fun bm!372259 () Bool)

(declare-fun call!372264 () (InoxSet Context!8502))

(declare-fun call!372267 () (InoxSet Context!8502))

(assert (=> bm!372259 (= call!372264 call!372267)))

(declare-fun b!5253496 () Bool)

(declare-fun e!3268315 () (InoxSet Context!8502))

(declare-fun call!372265 () (InoxSet Context!8502))

(assert (=> b!5253496 (= e!3268315 call!372265)))

(declare-fun b!5253497 () Bool)

(declare-fun e!3268316 () Bool)

(assert (=> b!5253497 (= e!3268316 (nullable!5036 (regOne!30246 (regOne!30247 (regOne!30246 r!7292)))))))

(declare-fun b!5253498 () Bool)

(declare-fun e!3268314 () (InoxSet Context!8502))

(assert (=> b!5253498 (= e!3268314 (store ((as const (Array Context!8502 Bool)) false) lt!2153183 true))))

(declare-fun bm!372261 () Bool)

(declare-fun call!372269 () List!60900)

(declare-fun call!372268 () List!60900)

(assert (=> bm!372261 (= call!372269 call!372268)))

(declare-fun b!5253499 () Bool)

(declare-fun e!3268313 () (InoxSet Context!8502))

(declare-fun call!372266 () (InoxSet Context!8502))

(assert (=> b!5253499 (= e!3268313 ((_ map or) call!372266 call!372264))))

(declare-fun c!908874 () Bool)

(declare-fun bm!372262 () Bool)

(declare-fun c!908876 () Bool)

(declare-fun c!908875 () Bool)

(assert (=> bm!372262 (= call!372267 (derivationStepZipperDown!315 (ite c!908876 (regOne!30247 (regOne!30247 (regOne!30246 r!7292))) (ite c!908875 (regTwo!30246 (regOne!30247 (regOne!30246 r!7292))) (ite c!908874 (regOne!30246 (regOne!30247 (regOne!30246 r!7292))) (reg!15196 (regOne!30247 (regOne!30246 r!7292)))))) (ite (or c!908876 c!908875) lt!2153183 (Context!8503 call!372269)) (h!67226 s!2326)))))

(declare-fun b!5253500 () Bool)

(assert (=> b!5253500 (= e!3268315 ((as const (Array Context!8502 Bool)) false))))

(declare-fun b!5253501 () Bool)

(declare-fun e!3268318 () (InoxSet Context!8502))

(assert (=> b!5253501 (= e!3268313 e!3268318)))

(assert (=> b!5253501 (= c!908874 ((_ is Concat!23712) (regOne!30247 (regOne!30246 r!7292))))))

(declare-fun b!5253502 () Bool)

(assert (=> b!5253502 (= e!3268318 call!372265)))

(declare-fun bm!372263 () Bool)

(assert (=> bm!372263 (= call!372265 call!372264)))

(declare-fun b!5253503 () Bool)

(declare-fun e!3268317 () (InoxSet Context!8502))

(assert (=> b!5253503 (= e!3268314 e!3268317)))

(assert (=> b!5253503 (= c!908876 ((_ is Union!14867) (regOne!30247 (regOne!30246 r!7292))))))

(declare-fun b!5253504 () Bool)

(declare-fun c!908872 () Bool)

(assert (=> b!5253504 (= c!908872 ((_ is Star!14867) (regOne!30247 (regOne!30246 r!7292))))))

(assert (=> b!5253504 (= e!3268318 e!3268315)))

(declare-fun b!5253505 () Bool)

(assert (=> b!5253505 (= c!908875 e!3268316)))

(declare-fun res!2229546 () Bool)

(assert (=> b!5253505 (=> (not res!2229546) (not e!3268316))))

(assert (=> b!5253505 (= res!2229546 ((_ is Concat!23712) (regOne!30247 (regOne!30246 r!7292))))))

(assert (=> b!5253505 (= e!3268317 e!3268313)))

(declare-fun b!5253506 () Bool)

(assert (=> b!5253506 (= e!3268317 ((_ map or) call!372267 call!372266))))

(declare-fun bm!372264 () Bool)

(assert (=> bm!372264 (= call!372266 (derivationStepZipperDown!315 (ite c!908876 (regTwo!30247 (regOne!30247 (regOne!30246 r!7292))) (regOne!30246 (regOne!30247 (regOne!30246 r!7292)))) (ite c!908876 lt!2153183 (Context!8503 call!372268)) (h!67226 s!2326)))))

(declare-fun d!1691683 () Bool)

(declare-fun c!908873 () Bool)

(assert (=> d!1691683 (= c!908873 (and ((_ is ElementMatch!14867) (regOne!30247 (regOne!30246 r!7292))) (= (c!908723 (regOne!30247 (regOne!30246 r!7292))) (h!67226 s!2326))))))

(assert (=> d!1691683 (= (derivationStepZipperDown!315 (regOne!30247 (regOne!30246 r!7292)) lt!2153183 (h!67226 s!2326)) e!3268314)))

(declare-fun bm!372260 () Bool)

(assert (=> bm!372260 (= call!372268 ($colon$colon!1321 (exprs!4751 lt!2153183) (ite (or c!908875 c!908874) (regTwo!30246 (regOne!30247 (regOne!30246 r!7292))) (regOne!30247 (regOne!30246 r!7292)))))))

(assert (= (and d!1691683 c!908873) b!5253498))

(assert (= (and d!1691683 (not c!908873)) b!5253503))

(assert (= (and b!5253503 c!908876) b!5253506))

(assert (= (and b!5253503 (not c!908876)) b!5253505))

(assert (= (and b!5253505 res!2229546) b!5253497))

(assert (= (and b!5253505 c!908875) b!5253499))

(assert (= (and b!5253505 (not c!908875)) b!5253501))

(assert (= (and b!5253501 c!908874) b!5253502))

(assert (= (and b!5253501 (not c!908874)) b!5253504))

(assert (= (and b!5253504 c!908872) b!5253496))

(assert (= (and b!5253504 (not c!908872)) b!5253500))

(assert (= (or b!5253502 b!5253496) bm!372261))

(assert (= (or b!5253502 b!5253496) bm!372263))

(assert (= (or b!5253499 bm!372261) bm!372260))

(assert (= (or b!5253499 bm!372263) bm!372259))

(assert (= (or b!5253506 b!5253499) bm!372264))

(assert (= (or b!5253506 bm!372259) bm!372262))

(declare-fun m!6296446 () Bool)

(assert (=> bm!372260 m!6296446))

(declare-fun m!6296448 () Bool)

(assert (=> bm!372264 m!6296448))

(declare-fun m!6296450 () Bool)

(assert (=> bm!372262 m!6296450))

(declare-fun m!6296452 () Bool)

(assert (=> b!5253497 m!6296452))

(assert (=> b!5253498 m!6296364))

(assert (=> b!5252990 d!1691683))

(declare-fun d!1691685 () Bool)

(declare-fun e!3268333 () Bool)

(assert (=> d!1691685 (= (matchZipper!1111 ((_ map or) lt!2153159 lt!2153178) (t!374085 s!2326)) e!3268333)))

(declare-fun res!2229557 () Bool)

(assert (=> d!1691685 (=> res!2229557 e!3268333)))

(assert (=> d!1691685 (= res!2229557 (matchZipper!1111 lt!2153159 (t!374085 s!2326)))))

(declare-fun lt!2153262 () Unit!152950)

(assert (=> d!1691685 (= lt!2153262 (choose!39147 lt!2153159 lt!2153178 (t!374085 s!2326)))))

(assert (=> d!1691685 (= (lemmaZipperConcatMatchesSameAsBothZippers!104 lt!2153159 lt!2153178 (t!374085 s!2326)) lt!2153262)))

(declare-fun b!5253525 () Bool)

(assert (=> b!5253525 (= e!3268333 (matchZipper!1111 lt!2153178 (t!374085 s!2326)))))

(assert (= (and d!1691685 (not res!2229557)) b!5253525))

(assert (=> d!1691685 m!6296064))

(assert (=> d!1691685 m!6296062))

(declare-fun m!6296454 () Bool)

(assert (=> d!1691685 m!6296454))

(assert (=> b!5253525 m!6296042))

(assert (=> b!5253011 d!1691685))

(declare-fun d!1691687 () Bool)

(declare-fun c!908881 () Bool)

(assert (=> d!1691687 (= c!908881 (isEmpty!32713 (t!374085 s!2326)))))

(declare-fun e!3268334 () Bool)

(assert (=> d!1691687 (= (matchZipper!1111 lt!2153159 (t!374085 s!2326)) e!3268334)))

(declare-fun b!5253526 () Bool)

(assert (=> b!5253526 (= e!3268334 (nullableZipper!1271 lt!2153159))))

(declare-fun b!5253527 () Bool)

(assert (=> b!5253527 (= e!3268334 (matchZipper!1111 (derivationStepZipper!1115 lt!2153159 (head!11261 (t!374085 s!2326))) (tail!10358 (t!374085 s!2326))))))

(assert (= (and d!1691687 c!908881) b!5253526))

(assert (= (and d!1691687 (not c!908881)) b!5253527))

(assert (=> d!1691687 m!6296204))

(declare-fun m!6296456 () Bool)

(assert (=> b!5253526 m!6296456))

(assert (=> b!5253527 m!6296208))

(assert (=> b!5253527 m!6296208))

(declare-fun m!6296458 () Bool)

(assert (=> b!5253527 m!6296458))

(assert (=> b!5253527 m!6296212))

(assert (=> b!5253527 m!6296458))

(assert (=> b!5253527 m!6296212))

(declare-fun m!6296460 () Bool)

(assert (=> b!5253527 m!6296460))

(assert (=> b!5253011 d!1691687))

(declare-fun d!1691689 () Bool)

(declare-fun c!908882 () Bool)

(assert (=> d!1691689 (= c!908882 (isEmpty!32713 (t!374085 s!2326)))))

(declare-fun e!3268335 () Bool)

(assert (=> d!1691689 (= (matchZipper!1111 ((_ map or) lt!2153159 lt!2153178) (t!374085 s!2326)) e!3268335)))

(declare-fun b!5253528 () Bool)

(assert (=> b!5253528 (= e!3268335 (nullableZipper!1271 ((_ map or) lt!2153159 lt!2153178)))))

(declare-fun b!5253529 () Bool)

(assert (=> b!5253529 (= e!3268335 (matchZipper!1111 (derivationStepZipper!1115 ((_ map or) lt!2153159 lt!2153178) (head!11261 (t!374085 s!2326))) (tail!10358 (t!374085 s!2326))))))

(assert (= (and d!1691689 c!908882) b!5253528))

(assert (= (and d!1691689 (not c!908882)) b!5253529))

(assert (=> d!1691689 m!6296204))

(declare-fun m!6296462 () Bool)

(assert (=> b!5253528 m!6296462))

(assert (=> b!5253529 m!6296208))

(assert (=> b!5253529 m!6296208))

(declare-fun m!6296464 () Bool)

(assert (=> b!5253529 m!6296464))

(assert (=> b!5253529 m!6296212))

(assert (=> b!5253529 m!6296464))

(assert (=> b!5253529 m!6296212))

(declare-fun m!6296466 () Bool)

(assert (=> b!5253529 m!6296466))

(assert (=> b!5253011 d!1691689))

(declare-fun d!1691691 () Bool)

(declare-fun e!3268336 () Bool)

(assert (=> d!1691691 (= (matchZipper!1111 ((_ map or) lt!2153175 lt!2153178) (t!374085 s!2326)) e!3268336)))

(declare-fun res!2229558 () Bool)

(assert (=> d!1691691 (=> res!2229558 e!3268336)))

(assert (=> d!1691691 (= res!2229558 (matchZipper!1111 lt!2153175 (t!374085 s!2326)))))

(declare-fun lt!2153263 () Unit!152950)

(assert (=> d!1691691 (= lt!2153263 (choose!39147 lt!2153175 lt!2153178 (t!374085 s!2326)))))

(assert (=> d!1691691 (= (lemmaZipperConcatMatchesSameAsBothZippers!104 lt!2153175 lt!2153178 (t!374085 s!2326)) lt!2153263)))

(declare-fun b!5253530 () Bool)

(assert (=> b!5253530 (= e!3268336 (matchZipper!1111 lt!2153178 (t!374085 s!2326)))))

(assert (= (and d!1691691 (not res!2229558)) b!5253530))

(assert (=> d!1691691 m!6296038))

(assert (=> d!1691691 m!6296036))

(declare-fun m!6296468 () Bool)

(assert (=> d!1691691 m!6296468))

(assert (=> b!5253530 m!6296042))

(assert (=> b!5253029 d!1691691))

(assert (=> b!5253029 d!1691675))

(declare-fun d!1691693 () Bool)

(declare-fun c!908883 () Bool)

(assert (=> d!1691693 (= c!908883 (isEmpty!32713 (t!374085 s!2326)))))

(declare-fun e!3268337 () Bool)

(assert (=> d!1691693 (= (matchZipper!1111 ((_ map or) lt!2153175 lt!2153178) (t!374085 s!2326)) e!3268337)))

(declare-fun b!5253531 () Bool)

(assert (=> b!5253531 (= e!3268337 (nullableZipper!1271 ((_ map or) lt!2153175 lt!2153178)))))

(declare-fun b!5253532 () Bool)

(assert (=> b!5253532 (= e!3268337 (matchZipper!1111 (derivationStepZipper!1115 ((_ map or) lt!2153175 lt!2153178) (head!11261 (t!374085 s!2326))) (tail!10358 (t!374085 s!2326))))))

(assert (= (and d!1691693 c!908883) b!5253531))

(assert (= (and d!1691693 (not c!908883)) b!5253532))

(assert (=> d!1691693 m!6296204))

(declare-fun m!6296470 () Bool)

(assert (=> b!5253531 m!6296470))

(assert (=> b!5253532 m!6296208))

(assert (=> b!5253532 m!6296208))

(declare-fun m!6296472 () Bool)

(assert (=> b!5253532 m!6296472))

(assert (=> b!5253532 m!6296212))

(assert (=> b!5253532 m!6296472))

(assert (=> b!5253532 m!6296212))

(declare-fun m!6296474 () Bool)

(assert (=> b!5253532 m!6296474))

(assert (=> b!5253029 d!1691693))

(declare-fun bs!1218312 () Bool)

(declare-fun d!1691695 () Bool)

(assert (= bs!1218312 (and d!1691695 b!5252994)))

(declare-fun lambda!264645 () Int)

(assert (=> bs!1218312 (= lambda!264645 lambda!264613)))

(declare-fun bs!1218313 () Bool)

(assert (= bs!1218313 (and d!1691695 d!1691581)))

(assert (=> bs!1218313 (= lambda!264645 lambda!264616)))

(declare-fun bs!1218314 () Bool)

(assert (= bs!1218314 (and d!1691695 d!1691583)))

(assert (=> bs!1218314 (= lambda!264645 lambda!264619)))

(declare-fun bs!1218315 () Bool)

(assert (= bs!1218315 (and d!1691695 d!1691587)))

(assert (=> bs!1218315 (= lambda!264645 lambda!264622)))

(declare-fun b!5253571 () Bool)

(declare-fun e!3268365 () Bool)

(declare-fun e!3268366 () Bool)

(assert (=> b!5253571 (= e!3268365 e!3268366)))

(declare-fun c!908898 () Bool)

(assert (=> b!5253571 (= c!908898 (isEmpty!32712 (exprs!4751 (h!67225 zl!343))))))

(assert (=> d!1691695 e!3268365))

(declare-fun res!2229572 () Bool)

(assert (=> d!1691695 (=> (not res!2229572) (not e!3268365))))

(declare-fun lt!2153269 () Regex!14867)

(assert (=> d!1691695 (= res!2229572 (validRegex!6603 lt!2153269))))

(declare-fun e!3268367 () Regex!14867)

(assert (=> d!1691695 (= lt!2153269 e!3268367)))

(declare-fun c!908900 () Bool)

(declare-fun e!3268363 () Bool)

(assert (=> d!1691695 (= c!908900 e!3268363)))

(declare-fun res!2229571 () Bool)

(assert (=> d!1691695 (=> (not res!2229571) (not e!3268363))))

(assert (=> d!1691695 (= res!2229571 ((_ is Cons!60776) (exprs!4751 (h!67225 zl!343))))))

(assert (=> d!1691695 (forall!14281 (exprs!4751 (h!67225 zl!343)) lambda!264645)))

(assert (=> d!1691695 (= (generalisedConcat!536 (exprs!4751 (h!67225 zl!343))) lt!2153269)))

(declare-fun b!5253572 () Bool)

(declare-fun e!3268364 () Bool)

(declare-fun isConcat!329 (Regex!14867) Bool)

(assert (=> b!5253572 (= e!3268364 (isConcat!329 lt!2153269))))

(declare-fun b!5253573 () Bool)

(assert (=> b!5253573 (= e!3268367 (h!67224 (exprs!4751 (h!67225 zl!343))))))

(declare-fun b!5253574 () Bool)

(declare-fun e!3268368 () Regex!14867)

(assert (=> b!5253574 (= e!3268368 (Concat!23712 (h!67224 (exprs!4751 (h!67225 zl!343))) (generalisedConcat!536 (t!374083 (exprs!4751 (h!67225 zl!343))))))))

(declare-fun b!5253575 () Bool)

(assert (=> b!5253575 (= e!3268368 EmptyExpr!14867)))

(declare-fun b!5253576 () Bool)

(assert (=> b!5253576 (= e!3268366 e!3268364)))

(declare-fun c!908897 () Bool)

(assert (=> b!5253576 (= c!908897 (isEmpty!32712 (tail!10357 (exprs!4751 (h!67225 zl!343)))))))

(declare-fun b!5253577 () Bool)

(assert (=> b!5253577 (= e!3268367 e!3268368)))

(declare-fun c!908899 () Bool)

(assert (=> b!5253577 (= c!908899 ((_ is Cons!60776) (exprs!4751 (h!67225 zl!343))))))

(declare-fun b!5253578 () Bool)

(declare-fun isEmptyExpr!806 (Regex!14867) Bool)

(assert (=> b!5253578 (= e!3268366 (isEmptyExpr!806 lt!2153269))))

(declare-fun b!5253579 () Bool)

(assert (=> b!5253579 (= e!3268363 (isEmpty!32712 (t!374083 (exprs!4751 (h!67225 zl!343)))))))

(declare-fun b!5253580 () Bool)

(assert (=> b!5253580 (= e!3268364 (= lt!2153269 (head!11260 (exprs!4751 (h!67225 zl!343)))))))

(assert (= (and d!1691695 res!2229571) b!5253579))

(assert (= (and d!1691695 c!908900) b!5253573))

(assert (= (and d!1691695 (not c!908900)) b!5253577))

(assert (= (and b!5253577 c!908899) b!5253574))

(assert (= (and b!5253577 (not c!908899)) b!5253575))

(assert (= (and d!1691695 res!2229572) b!5253571))

(assert (= (and b!5253571 c!908898) b!5253578))

(assert (= (and b!5253571 (not c!908898)) b!5253576))

(assert (= (and b!5253576 c!908897) b!5253580))

(assert (= (and b!5253576 (not c!908897)) b!5253572))

(declare-fun m!6296504 () Bool)

(assert (=> b!5253578 m!6296504))

(declare-fun m!6296506 () Bool)

(assert (=> b!5253572 m!6296506))

(assert (=> b!5253579 m!6296030))

(declare-fun m!6296508 () Bool)

(assert (=> b!5253580 m!6296508))

(declare-fun m!6296510 () Bool)

(assert (=> d!1691695 m!6296510))

(declare-fun m!6296512 () Bool)

(assert (=> d!1691695 m!6296512))

(assert (=> b!5253574 m!6296016))

(declare-fun m!6296514 () Bool)

(assert (=> b!5253571 m!6296514))

(declare-fun m!6296516 () Bool)

(assert (=> b!5253576 m!6296516))

(assert (=> b!5253576 m!6296516))

(declare-fun m!6296518 () Bool)

(assert (=> b!5253576 m!6296518))

(assert (=> b!5253009 d!1691695))

(declare-fun b!5253581 () Bool)

(declare-fun e!3268369 () (InoxSet Context!8502))

(declare-fun e!3268370 () (InoxSet Context!8502))

(assert (=> b!5253581 (= e!3268369 e!3268370)))

(declare-fun c!908902 () Bool)

(assert (=> b!5253581 (= c!908902 ((_ is Cons!60776) (exprs!4751 lt!2153176)))))

(declare-fun b!5253582 () Bool)

(assert (=> b!5253582 (= e!3268370 ((as const (Array Context!8502 Bool)) false))))

(declare-fun b!5253583 () Bool)

(declare-fun call!372279 () (InoxSet Context!8502))

(assert (=> b!5253583 (= e!3268369 ((_ map or) call!372279 (derivationStepZipperUp!239 (Context!8503 (t!374083 (exprs!4751 lt!2153176))) (h!67226 s!2326))))))

(declare-fun bm!372274 () Bool)

(assert (=> bm!372274 (= call!372279 (derivationStepZipperDown!315 (h!67224 (exprs!4751 lt!2153176)) (Context!8503 (t!374083 (exprs!4751 lt!2153176))) (h!67226 s!2326)))))

(declare-fun b!5253584 () Bool)

(assert (=> b!5253584 (= e!3268370 call!372279)))

(declare-fun b!5253585 () Bool)

(declare-fun e!3268371 () Bool)

(assert (=> b!5253585 (= e!3268371 (nullable!5036 (h!67224 (exprs!4751 lt!2153176))))))

(declare-fun d!1691707 () Bool)

(declare-fun c!908901 () Bool)

(assert (=> d!1691707 (= c!908901 e!3268371)))

(declare-fun res!2229573 () Bool)

(assert (=> d!1691707 (=> (not res!2229573) (not e!3268371))))

(assert (=> d!1691707 (= res!2229573 ((_ is Cons!60776) (exprs!4751 lt!2153176)))))

(assert (=> d!1691707 (= (derivationStepZipperUp!239 lt!2153176 (h!67226 s!2326)) e!3268369)))

(assert (= (and d!1691707 res!2229573) b!5253585))

(assert (= (and d!1691707 c!908901) b!5253583))

(assert (= (and d!1691707 (not c!908901)) b!5253581))

(assert (= (and b!5253581 c!908902) b!5253584))

(assert (= (and b!5253581 (not c!908902)) b!5253582))

(assert (= (or b!5253583 b!5253584) bm!372274))

(declare-fun m!6296520 () Bool)

(assert (=> b!5253583 m!6296520))

(declare-fun m!6296522 () Bool)

(assert (=> bm!372274 m!6296522))

(declare-fun m!6296524 () Bool)

(assert (=> b!5253585 m!6296524))

(assert (=> b!5253027 d!1691707))

(declare-fun d!1691709 () Bool)

(assert (=> d!1691709 (= (nullable!5036 (regTwo!30247 (regOne!30246 r!7292))) (nullableFct!1424 (regTwo!30247 (regOne!30246 r!7292))))))

(declare-fun bs!1218316 () Bool)

(assert (= bs!1218316 d!1691709))

(declare-fun m!6296526 () Bool)

(assert (=> bs!1218316 m!6296526))

(assert (=> b!5253027 d!1691709))

(declare-fun d!1691711 () Bool)

(declare-fun c!908903 () Bool)

(assert (=> d!1691711 (= c!908903 (isEmpty!32713 s!2326))))

(declare-fun e!3268372 () Bool)

(assert (=> d!1691711 (= (matchZipper!1111 z!1189 s!2326) e!3268372)))

(declare-fun b!5253586 () Bool)

(assert (=> b!5253586 (= e!3268372 (nullableZipper!1271 z!1189))))

(declare-fun b!5253587 () Bool)

(assert (=> b!5253587 (= e!3268372 (matchZipper!1111 (derivationStepZipper!1115 z!1189 (head!11261 s!2326)) (tail!10358 s!2326)))))

(assert (= (and d!1691711 c!908903) b!5253586))

(assert (= (and d!1691711 (not c!908903)) b!5253587))

(assert (=> d!1691711 m!6296238))

(declare-fun m!6296528 () Bool)

(assert (=> b!5253586 m!6296528))

(assert (=> b!5253587 m!6296282))

(assert (=> b!5253587 m!6296282))

(declare-fun m!6296530 () Bool)

(assert (=> b!5253587 m!6296530))

(assert (=> b!5253587 m!6296278))

(assert (=> b!5253587 m!6296530))

(assert (=> b!5253587 m!6296278))

(declare-fun m!6296532 () Bool)

(assert (=> b!5253587 m!6296532))

(assert (=> b!5253027 d!1691711))

(declare-fun d!1691713 () Bool)

(assert (=> d!1691713 (= (flatMap!594 lt!2153207 lambda!264612) (choose!39150 lt!2153207 lambda!264612))))

(declare-fun bs!1218317 () Bool)

(assert (= bs!1218317 d!1691713))

(declare-fun m!6296534 () Bool)

(assert (=> bs!1218317 m!6296534))

(assert (=> b!5253027 d!1691713))

(declare-fun d!1691715 () Bool)

(assert (=> d!1691715 (= (flatMap!594 lt!2153209 lambda!264612) (choose!39150 lt!2153209 lambda!264612))))

(declare-fun bs!1218318 () Bool)

(assert (= bs!1218318 d!1691715))

(declare-fun m!6296536 () Bool)

(assert (=> bs!1218318 m!6296536))

(assert (=> b!5253027 d!1691715))

(declare-fun b!5253588 () Bool)

(declare-fun e!3268373 () (InoxSet Context!8502))

(declare-fun e!3268374 () (InoxSet Context!8502))

(assert (=> b!5253588 (= e!3268373 e!3268374)))

(declare-fun c!908905 () Bool)

(assert (=> b!5253588 (= c!908905 ((_ is Cons!60776) (exprs!4751 lt!2153165)))))

(declare-fun b!5253589 () Bool)

(assert (=> b!5253589 (= e!3268374 ((as const (Array Context!8502 Bool)) false))))

(declare-fun call!372280 () (InoxSet Context!8502))

(declare-fun b!5253590 () Bool)

(assert (=> b!5253590 (= e!3268373 ((_ map or) call!372280 (derivationStepZipperUp!239 (Context!8503 (t!374083 (exprs!4751 lt!2153165))) (h!67226 s!2326))))))

(declare-fun bm!372275 () Bool)

(assert (=> bm!372275 (= call!372280 (derivationStepZipperDown!315 (h!67224 (exprs!4751 lt!2153165)) (Context!8503 (t!374083 (exprs!4751 lt!2153165))) (h!67226 s!2326)))))

(declare-fun b!5253591 () Bool)

(assert (=> b!5253591 (= e!3268374 call!372280)))

(declare-fun b!5253592 () Bool)

(declare-fun e!3268375 () Bool)

(assert (=> b!5253592 (= e!3268375 (nullable!5036 (h!67224 (exprs!4751 lt!2153165))))))

(declare-fun d!1691717 () Bool)

(declare-fun c!908904 () Bool)

(assert (=> d!1691717 (= c!908904 e!3268375)))

(declare-fun res!2229574 () Bool)

(assert (=> d!1691717 (=> (not res!2229574) (not e!3268375))))

(assert (=> d!1691717 (= res!2229574 ((_ is Cons!60776) (exprs!4751 lt!2153165)))))

(assert (=> d!1691717 (= (derivationStepZipperUp!239 lt!2153165 (h!67226 s!2326)) e!3268373)))

(assert (= (and d!1691717 res!2229574) b!5253592))

(assert (= (and d!1691717 c!908904) b!5253590))

(assert (= (and d!1691717 (not c!908904)) b!5253588))

(assert (= (and b!5253588 c!908905) b!5253591))

(assert (= (and b!5253588 (not c!908905)) b!5253589))

(assert (= (or b!5253590 b!5253591) bm!372275))

(declare-fun m!6296538 () Bool)

(assert (=> b!5253590 m!6296538))

(declare-fun m!6296540 () Bool)

(assert (=> bm!372275 m!6296540))

(declare-fun m!6296542 () Bool)

(assert (=> b!5253592 m!6296542))

(assert (=> b!5253027 d!1691717))

(declare-fun d!1691719 () Bool)

(assert (=> d!1691719 (= (nullable!5036 (regOne!30247 (regOne!30246 r!7292))) (nullableFct!1424 (regOne!30247 (regOne!30246 r!7292))))))

(declare-fun bs!1218319 () Bool)

(assert (= bs!1218319 d!1691719))

(declare-fun m!6296544 () Bool)

(assert (=> bs!1218319 m!6296544))

(assert (=> b!5253027 d!1691719))

(declare-fun d!1691721 () Bool)

(assert (=> d!1691721 (= (flatMap!594 lt!2153207 lambda!264612) (dynLambda!24013 lambda!264612 lt!2153165))))

(declare-fun lt!2153270 () Unit!152950)

(assert (=> d!1691721 (= lt!2153270 (choose!39151 lt!2153207 lt!2153165 lambda!264612))))

(assert (=> d!1691721 (= lt!2153207 (store ((as const (Array Context!8502 Bool)) false) lt!2153165 true))))

(assert (=> d!1691721 (= (lemmaFlatMapOnSingletonSet!126 lt!2153207 lt!2153165 lambda!264612) lt!2153270)))

(declare-fun b_lambda!202845 () Bool)

(assert (=> (not b_lambda!202845) (not d!1691721)))

(declare-fun bs!1218320 () Bool)

(assert (= bs!1218320 d!1691721))

(assert (=> bs!1218320 m!6296078))

(declare-fun m!6296546 () Bool)

(assert (=> bs!1218320 m!6296546))

(declare-fun m!6296548 () Bool)

(assert (=> bs!1218320 m!6296548))

(assert (=> bs!1218320 m!6296088))

(assert (=> b!5253027 d!1691721))

(declare-fun d!1691723 () Bool)

(declare-fun c!908906 () Bool)

(assert (=> d!1691723 (= c!908906 (isEmpty!32713 s!2326))))

(declare-fun e!3268376 () Bool)

(assert (=> d!1691723 (= (matchZipper!1111 lt!2153207 s!2326) e!3268376)))

(declare-fun b!5253593 () Bool)

(assert (=> b!5253593 (= e!3268376 (nullableZipper!1271 lt!2153207))))

(declare-fun b!5253594 () Bool)

(assert (=> b!5253594 (= e!3268376 (matchZipper!1111 (derivationStepZipper!1115 lt!2153207 (head!11261 s!2326)) (tail!10358 s!2326)))))

(assert (= (and d!1691723 c!908906) b!5253593))

(assert (= (and d!1691723 (not c!908906)) b!5253594))

(assert (=> d!1691723 m!6296238))

(declare-fun m!6296550 () Bool)

(assert (=> b!5253593 m!6296550))

(assert (=> b!5253594 m!6296282))

(assert (=> b!5253594 m!6296282))

(declare-fun m!6296552 () Bool)

(assert (=> b!5253594 m!6296552))

(assert (=> b!5253594 m!6296278))

(assert (=> b!5253594 m!6296552))

(assert (=> b!5253594 m!6296278))

(declare-fun m!6296554 () Bool)

(assert (=> b!5253594 m!6296554))

(assert (=> b!5253027 d!1691723))

(declare-fun d!1691725 () Bool)

(assert (=> d!1691725 (= (flatMap!594 lt!2153209 lambda!264612) (dynLambda!24013 lambda!264612 lt!2153176))))

(declare-fun lt!2153271 () Unit!152950)

(assert (=> d!1691725 (= lt!2153271 (choose!39151 lt!2153209 lt!2153176 lambda!264612))))

(assert (=> d!1691725 (= lt!2153209 (store ((as const (Array Context!8502 Bool)) false) lt!2153176 true))))

(assert (=> d!1691725 (= (lemmaFlatMapOnSingletonSet!126 lt!2153209 lt!2153176 lambda!264612) lt!2153271)))

(declare-fun b_lambda!202847 () Bool)

(assert (=> (not b_lambda!202847) (not d!1691725)))

(declare-fun bs!1218321 () Bool)

(assert (= bs!1218321 d!1691725))

(assert (=> bs!1218321 m!6296084))

(declare-fun m!6296556 () Bool)

(assert (=> bs!1218321 m!6296556))

(declare-fun m!6296558 () Bool)

(assert (=> bs!1218321 m!6296558))

(assert (=> bs!1218321 m!6296068))

(assert (=> b!5253027 d!1691725))

(assert (=> b!5253007 d!1691687))

(declare-fun d!1691727 () Bool)

(declare-fun c!908909 () Bool)

(assert (=> d!1691727 (= c!908909 (isEmpty!32713 (t!374085 s!2326)))))

(declare-fun e!3268381 () Bool)

(assert (=> d!1691727 (= (matchZipper!1111 lt!2153198 (t!374085 s!2326)) e!3268381)))

(declare-fun b!5253601 () Bool)

(assert (=> b!5253601 (= e!3268381 (nullableZipper!1271 lt!2153198))))

(declare-fun b!5253602 () Bool)

(assert (=> b!5253602 (= e!3268381 (matchZipper!1111 (derivationStepZipper!1115 lt!2153198 (head!11261 (t!374085 s!2326))) (tail!10358 (t!374085 s!2326))))))

(assert (= (and d!1691727 c!908909) b!5253601))

(assert (= (and d!1691727 (not c!908909)) b!5253602))

(assert (=> d!1691727 m!6296204))

(declare-fun m!6296560 () Bool)

(assert (=> b!5253601 m!6296560))

(assert (=> b!5253602 m!6296208))

(assert (=> b!5253602 m!6296208))

(declare-fun m!6296562 () Bool)

(assert (=> b!5253602 m!6296562))

(assert (=> b!5253602 m!6296212))

(assert (=> b!5253602 m!6296562))

(assert (=> b!5253602 m!6296212))

(declare-fun m!6296564 () Bool)

(assert (=> b!5253602 m!6296564))

(assert (=> b!5253007 d!1691727))

(declare-fun d!1691729 () Bool)

(declare-fun c!908912 () Bool)

(assert (=> d!1691729 (= c!908912 (isEmpty!32713 (t!374085 s!2326)))))

(declare-fun e!3268384 () Bool)

(assert (=> d!1691729 (= (matchZipper!1111 lt!2153163 (t!374085 s!2326)) e!3268384)))

(declare-fun b!5253607 () Bool)

(assert (=> b!5253607 (= e!3268384 (nullableZipper!1271 lt!2153163))))

(declare-fun b!5253608 () Bool)

(assert (=> b!5253608 (= e!3268384 (matchZipper!1111 (derivationStepZipper!1115 lt!2153163 (head!11261 (t!374085 s!2326))) (tail!10358 (t!374085 s!2326))))))

(assert (= (and d!1691729 c!908912) b!5253607))

(assert (= (and d!1691729 (not c!908912)) b!5253608))

(assert (=> d!1691729 m!6296204))

(declare-fun m!6296566 () Bool)

(assert (=> b!5253607 m!6296566))

(assert (=> b!5253608 m!6296208))

(assert (=> b!5253608 m!6296208))

(declare-fun m!6296568 () Bool)

(assert (=> b!5253608 m!6296568))

(assert (=> b!5253608 m!6296212))

(assert (=> b!5253608 m!6296568))

(assert (=> b!5253608 m!6296212))

(declare-fun m!6296570 () Bool)

(assert (=> b!5253608 m!6296570))

(assert (=> b!5253007 d!1691729))

(declare-fun e!3268391 () Bool)

(declare-fun d!1691731 () Bool)

(assert (=> d!1691731 (= (matchZipper!1111 ((_ map or) lt!2153163 lt!2153175) (t!374085 s!2326)) e!3268391)))

(declare-fun res!2229579 () Bool)

(assert (=> d!1691731 (=> res!2229579 e!3268391)))

(assert (=> d!1691731 (= res!2229579 (matchZipper!1111 lt!2153163 (t!374085 s!2326)))))

(declare-fun lt!2153274 () Unit!152950)

(assert (=> d!1691731 (= lt!2153274 (choose!39147 lt!2153163 lt!2153175 (t!374085 s!2326)))))

(assert (=> d!1691731 (= (lemmaZipperConcatMatchesSameAsBothZippers!104 lt!2153163 lt!2153175 (t!374085 s!2326)) lt!2153274)))

(declare-fun b!5253619 () Bool)

(assert (=> b!5253619 (= e!3268391 (matchZipper!1111 lt!2153175 (t!374085 s!2326)))))

(assert (= (and d!1691731 (not res!2229579)) b!5253619))

(declare-fun m!6296572 () Bool)

(assert (=> d!1691731 m!6296572))

(assert (=> d!1691731 m!6296150))

(declare-fun m!6296574 () Bool)

(assert (=> d!1691731 m!6296574))

(assert (=> b!5253619 m!6296036))

(assert (=> b!5253007 d!1691731))

(declare-fun d!1691733 () Bool)

(assert (=> d!1691733 (= (isEmpty!32711 (t!374084 zl!343)) ((_ is Nil!60777) (t!374084 zl!343)))))

(assert (=> b!5253006 d!1691733))

(declare-fun bs!1218322 () Bool)

(declare-fun d!1691735 () Bool)

(assert (= bs!1218322 (and d!1691735 d!1691581)))

(declare-fun lambda!264648 () Int)

(assert (=> bs!1218322 (= lambda!264648 lambda!264616)))

(declare-fun bs!1218323 () Bool)

(assert (= bs!1218323 (and d!1691735 d!1691583)))

(assert (=> bs!1218323 (= lambda!264648 lambda!264619)))

(declare-fun bs!1218324 () Bool)

(assert (= bs!1218324 (and d!1691735 d!1691695)))

(assert (=> bs!1218324 (= lambda!264648 lambda!264645)))

(declare-fun bs!1218325 () Bool)

(assert (= bs!1218325 (and d!1691735 d!1691587)))

(assert (=> bs!1218325 (= lambda!264648 lambda!264622)))

(declare-fun bs!1218326 () Bool)

(assert (= bs!1218326 (and d!1691735 b!5252994)))

(assert (=> bs!1218326 (= lambda!264648 lambda!264613)))

(assert (=> d!1691735 (= (inv!80414 setElem!33557) (forall!14281 (exprs!4751 setElem!33557) lambda!264648))))

(declare-fun bs!1218327 () Bool)

(assert (= bs!1218327 d!1691735))

(declare-fun m!6296576 () Bool)

(assert (=> bs!1218327 m!6296576))

(assert (=> setNonEmpty!33557 d!1691735))

(declare-fun bs!1218328 () Bool)

(declare-fun b!5253629 () Bool)

(assert (= bs!1218328 (and b!5253629 b!5253000)))

(declare-fun lambda!264649 () Int)

(assert (=> bs!1218328 (not (= lambda!264649 lambda!264611))))

(declare-fun bs!1218329 () Bool)

(assert (= bs!1218329 (and b!5253629 b!5253326)))

(assert (=> bs!1218329 (= (and (= (reg!15196 r!7292) (reg!15196 lt!2153181)) (= r!7292 lt!2153181)) (= lambda!264649 lambda!264635))))

(declare-fun bs!1218330 () Bool)

(assert (= bs!1218330 (and b!5253629 b!5253203)))

(assert (=> bs!1218330 (= (and (= (reg!15196 r!7292) (reg!15196 lt!2153182)) (= r!7292 lt!2153182)) (= lambda!264649 lambda!264633))))

(declare-fun bs!1218331 () Bool)

(assert (= bs!1218331 (and b!5253629 b!5253327)))

(assert (=> bs!1218331 (not (= lambda!264649 lambda!264636))))

(assert (=> bs!1218328 (not (= lambda!264649 lambda!264610))))

(declare-fun bs!1218333 () Bool)

(assert (= bs!1218333 (and b!5253629 b!5253204)))

(assert (=> bs!1218333 (not (= lambda!264649 lambda!264634))))

(assert (=> b!5253629 true))

(assert (=> b!5253629 true))

(declare-fun bs!1218336 () Bool)

(declare-fun b!5253630 () Bool)

(assert (= bs!1218336 (and b!5253630 b!5253000)))

(declare-fun lambda!264651 () Int)

(assert (=> bs!1218336 (= lambda!264651 lambda!264611)))

(declare-fun bs!1218337 () Bool)

(assert (= bs!1218337 (and b!5253630 b!5253326)))

(assert (=> bs!1218337 (not (= lambda!264651 lambda!264635))))

(declare-fun bs!1218338 () Bool)

(assert (= bs!1218338 (and b!5253630 b!5253203)))

(assert (=> bs!1218338 (not (= lambda!264651 lambda!264633))))

(declare-fun bs!1218339 () Bool)

(assert (= bs!1218339 (and b!5253630 b!5253327)))

(assert (=> bs!1218339 (= (and (= (regOne!30246 r!7292) (regOne!30246 lt!2153181)) (= (regTwo!30246 r!7292) (regTwo!30246 lt!2153181))) (= lambda!264651 lambda!264636))))

(declare-fun bs!1218340 () Bool)

(assert (= bs!1218340 (and b!5253630 b!5253629)))

(assert (=> bs!1218340 (not (= lambda!264651 lambda!264649))))

(assert (=> bs!1218336 (not (= lambda!264651 lambda!264610))))

(declare-fun bs!1218341 () Bool)

(assert (= bs!1218341 (and b!5253630 b!5253204)))

(assert (=> bs!1218341 (= (and (= (regOne!30246 r!7292) (regOne!30246 lt!2153182)) (= (regTwo!30246 r!7292) (regTwo!30246 lt!2153182))) (= lambda!264651 lambda!264634))))

(assert (=> b!5253630 true))

(assert (=> b!5253630 true))

(declare-fun b!5253620 () Bool)

(declare-fun e!3268398 () Bool)

(declare-fun e!3268395 () Bool)

(assert (=> b!5253620 (= e!3268398 e!3268395)))

(declare-fun c!908917 () Bool)

(assert (=> b!5253620 (= c!908917 ((_ is Star!14867) r!7292))))

(declare-fun b!5253621 () Bool)

(declare-fun e!3268397 () Bool)

(assert (=> b!5253621 (= e!3268397 (= s!2326 (Cons!60778 (c!908723 r!7292) Nil!60778)))))

(declare-fun b!5253622 () Bool)

(declare-fun e!3268393 () Bool)

(assert (=> b!5253622 (= e!3268398 e!3268393)))

(declare-fun res!2229582 () Bool)

(assert (=> b!5253622 (= res!2229582 (matchRSpec!1970 (regOne!30247 r!7292) s!2326))))

(assert (=> b!5253622 (=> res!2229582 e!3268393)))

(declare-fun b!5253623 () Bool)

(declare-fun c!908920 () Bool)

(assert (=> b!5253623 (= c!908920 ((_ is ElementMatch!14867) r!7292))))

(declare-fun e!3268396 () Bool)

(assert (=> b!5253623 (= e!3268396 e!3268397)))

(declare-fun bm!372276 () Bool)

(declare-fun call!372282 () Bool)

(assert (=> bm!372276 (= call!372282 (isEmpty!32713 s!2326))))

(declare-fun bm!372277 () Bool)

(declare-fun call!372281 () Bool)

(assert (=> bm!372277 (= call!372281 (Exists!2048 (ite c!908917 lambda!264649 lambda!264651)))))

(declare-fun b!5253624 () Bool)

(declare-fun res!2229580 () Bool)

(declare-fun e!3268394 () Bool)

(assert (=> b!5253624 (=> res!2229580 e!3268394)))

(assert (=> b!5253624 (= res!2229580 call!372282)))

(assert (=> b!5253624 (= e!3268395 e!3268394)))

(declare-fun b!5253625 () Bool)

(assert (=> b!5253625 (= e!3268393 (matchRSpec!1970 (regTwo!30247 r!7292) s!2326))))

(declare-fun b!5253626 () Bool)

(declare-fun e!3268392 () Bool)

(assert (=> b!5253626 (= e!3268392 call!372282)))

(declare-fun d!1691737 () Bool)

(declare-fun c!908918 () Bool)

(assert (=> d!1691737 (= c!908918 ((_ is EmptyExpr!14867) r!7292))))

(assert (=> d!1691737 (= (matchRSpec!1970 r!7292 s!2326) e!3268392)))

(declare-fun b!5253627 () Bool)

(declare-fun c!908919 () Bool)

(assert (=> b!5253627 (= c!908919 ((_ is Union!14867) r!7292))))

(assert (=> b!5253627 (= e!3268397 e!3268398)))

(declare-fun b!5253628 () Bool)

(assert (=> b!5253628 (= e!3268392 e!3268396)))

(declare-fun res!2229581 () Bool)

(assert (=> b!5253628 (= res!2229581 (not ((_ is EmptyLang!14867) r!7292)))))

(assert (=> b!5253628 (=> (not res!2229581) (not e!3268396))))

(assert (=> b!5253629 (= e!3268394 call!372281)))

(assert (=> b!5253630 (= e!3268395 call!372281)))

(assert (= (and d!1691737 c!908918) b!5253626))

(assert (= (and d!1691737 (not c!908918)) b!5253628))

(assert (= (and b!5253628 res!2229581) b!5253623))

(assert (= (and b!5253623 c!908920) b!5253621))

(assert (= (and b!5253623 (not c!908920)) b!5253627))

(assert (= (and b!5253627 c!908919) b!5253622))

(assert (= (and b!5253627 (not c!908919)) b!5253620))

(assert (= (and b!5253622 (not res!2229582)) b!5253625))

(assert (= (and b!5253620 c!908917) b!5253624))

(assert (= (and b!5253620 (not c!908917)) b!5253630))

(assert (= (and b!5253624 (not res!2229580)) b!5253629))

(assert (= (or b!5253629 b!5253630) bm!372277))

(assert (= (or b!5253626 b!5253624) bm!372276))

(declare-fun m!6296598 () Bool)

(assert (=> b!5253622 m!6296598))

(assert (=> bm!372276 m!6296238))

(declare-fun m!6296600 () Bool)

(assert (=> bm!372277 m!6296600))

(declare-fun m!6296602 () Bool)

(assert (=> b!5253625 m!6296602))

(assert (=> b!5253025 d!1691737))

(declare-fun bm!372278 () Bool)

(declare-fun call!372283 () Bool)

(assert (=> bm!372278 (= call!372283 (isEmpty!32713 s!2326))))

(declare-fun b!5253641 () Bool)

(declare-fun res!2229585 () Bool)

(declare-fun e!3268407 () Bool)

(assert (=> b!5253641 (=> res!2229585 e!3268407)))

(declare-fun e!3268411 () Bool)

(assert (=> b!5253641 (= res!2229585 e!3268411)))

(declare-fun res!2229590 () Bool)

(assert (=> b!5253641 (=> (not res!2229590) (not e!3268411))))

(declare-fun lt!2153276 () Bool)

(assert (=> b!5253641 (= res!2229590 lt!2153276)))

(declare-fun b!5253642 () Bool)

(declare-fun e!3268406 () Bool)

(assert (=> b!5253642 (= e!3268406 (not lt!2153276))))

(declare-fun b!5253643 () Bool)

(declare-fun res!2229589 () Bool)

(declare-fun e!3268410 () Bool)

(assert (=> b!5253643 (=> res!2229589 e!3268410)))

(assert (=> b!5253643 (= res!2229589 (not (isEmpty!32713 (tail!10358 s!2326))))))

(declare-fun b!5253644 () Bool)

(declare-fun res!2229587 () Bool)

(assert (=> b!5253644 (=> (not res!2229587) (not e!3268411))))

(assert (=> b!5253644 (= res!2229587 (isEmpty!32713 (tail!10358 s!2326)))))

(declare-fun b!5253645 () Bool)

(declare-fun e!3268408 () Bool)

(assert (=> b!5253645 (= e!3268408 (matchR!7052 (derivativeStep!4093 r!7292 (head!11261 s!2326)) (tail!10358 s!2326)))))

(declare-fun b!5253647 () Bool)

(declare-fun e!3268409 () Bool)

(assert (=> b!5253647 (= e!3268409 e!3268410)))

(declare-fun res!2229592 () Bool)

(assert (=> b!5253647 (=> res!2229592 e!3268410)))

(assert (=> b!5253647 (= res!2229592 call!372283)))

(declare-fun b!5253648 () Bool)

(assert (=> b!5253648 (= e!3268407 e!3268409)))

(declare-fun res!2229588 () Bool)

(assert (=> b!5253648 (=> (not res!2229588) (not e!3268409))))

(assert (=> b!5253648 (= res!2229588 (not lt!2153276))))

(declare-fun b!5253649 () Bool)

(declare-fun e!3268405 () Bool)

(assert (=> b!5253649 (= e!3268405 (= lt!2153276 call!372283))))

(declare-fun b!5253650 () Bool)

(assert (=> b!5253650 (= e!3268411 (= (head!11261 s!2326) (c!908723 r!7292)))))

(declare-fun b!5253651 () Bool)

(assert (=> b!5253651 (= e!3268408 (nullable!5036 r!7292))))

(declare-fun b!5253652 () Bool)

(assert (=> b!5253652 (= e!3268405 e!3268406)))

(declare-fun c!908926 () Bool)

(assert (=> b!5253652 (= c!908926 ((_ is EmptyLang!14867) r!7292))))

(declare-fun b!5253653 () Bool)

(declare-fun res!2229591 () Bool)

(assert (=> b!5253653 (=> (not res!2229591) (not e!3268411))))

(assert (=> b!5253653 (= res!2229591 (not call!372283))))

(declare-fun b!5253654 () Bool)

(assert (=> b!5253654 (= e!3268410 (not (= (head!11261 s!2326) (c!908723 r!7292))))))

(declare-fun d!1691741 () Bool)

(assert (=> d!1691741 e!3268405))

(declare-fun c!908925 () Bool)

(assert (=> d!1691741 (= c!908925 ((_ is EmptyExpr!14867) r!7292))))

(assert (=> d!1691741 (= lt!2153276 e!3268408)))

(declare-fun c!908927 () Bool)

(assert (=> d!1691741 (= c!908927 (isEmpty!32713 s!2326))))

(assert (=> d!1691741 (validRegex!6603 r!7292)))

(assert (=> d!1691741 (= (matchR!7052 r!7292 s!2326) lt!2153276)))

(declare-fun b!5253646 () Bool)

(declare-fun res!2229586 () Bool)

(assert (=> b!5253646 (=> res!2229586 e!3268407)))

(assert (=> b!5253646 (= res!2229586 (not ((_ is ElementMatch!14867) r!7292)))))

(assert (=> b!5253646 (= e!3268406 e!3268407)))

(assert (= (and d!1691741 c!908927) b!5253651))

(assert (= (and d!1691741 (not c!908927)) b!5253645))

(assert (= (and d!1691741 c!908925) b!5253649))

(assert (= (and d!1691741 (not c!908925)) b!5253652))

(assert (= (and b!5253652 c!908926) b!5253642))

(assert (= (and b!5253652 (not c!908926)) b!5253646))

(assert (= (and b!5253646 (not res!2229586)) b!5253641))

(assert (= (and b!5253641 res!2229590) b!5253653))

(assert (= (and b!5253653 res!2229591) b!5253644))

(assert (= (and b!5253644 res!2229587) b!5253650))

(assert (= (and b!5253641 (not res!2229585)) b!5253648))

(assert (= (and b!5253648 res!2229588) b!5253647))

(assert (= (and b!5253647 (not res!2229592)) b!5253643))

(assert (= (and b!5253643 (not res!2229589)) b!5253654))

(assert (= (or b!5253649 b!5253647 b!5253653) bm!372278))

(assert (=> b!5253643 m!6296278))

(assert (=> b!5253643 m!6296278))

(assert (=> b!5253643 m!6296280))

(assert (=> b!5253654 m!6296282))

(assert (=> b!5253650 m!6296282))

(assert (=> bm!372278 m!6296238))

(assert (=> b!5253645 m!6296282))

(assert (=> b!5253645 m!6296282))

(declare-fun m!6296604 () Bool)

(assert (=> b!5253645 m!6296604))

(assert (=> b!5253645 m!6296278))

(assert (=> b!5253645 m!6296604))

(assert (=> b!5253645 m!6296278))

(declare-fun m!6296606 () Bool)

(assert (=> b!5253645 m!6296606))

(assert (=> b!5253644 m!6296278))

(assert (=> b!5253644 m!6296278))

(assert (=> b!5253644 m!6296280))

(declare-fun m!6296608 () Bool)

(assert (=> b!5253651 m!6296608))

(assert (=> d!1691741 m!6296238))

(assert (=> d!1691741 m!6296040))

(assert (=> b!5253025 d!1691741))

(declare-fun d!1691743 () Bool)

(assert (=> d!1691743 (= (matchR!7052 r!7292 s!2326) (matchRSpec!1970 r!7292 s!2326))))

(declare-fun lt!2153279 () Unit!152950)

(assert (=> d!1691743 (= lt!2153279 (choose!39145 r!7292 s!2326))))

(assert (=> d!1691743 (validRegex!6603 r!7292)))

(assert (=> d!1691743 (= (mainMatchTheorem!1970 r!7292 s!2326) lt!2153279)))

(declare-fun bs!1218342 () Bool)

(assert (= bs!1218342 d!1691743))

(assert (=> bs!1218342 m!6296156))

(assert (=> bs!1218342 m!6296154))

(declare-fun m!6296610 () Bool)

(assert (=> bs!1218342 m!6296610))

(assert (=> bs!1218342 m!6296040))

(assert (=> b!5253025 d!1691743))

(declare-fun bs!1218343 () Bool)

(declare-fun d!1691745 () Bool)

(assert (= bs!1218343 (and d!1691745 d!1691581)))

(declare-fun lambda!264654 () Int)

(assert (=> bs!1218343 (= lambda!264654 lambda!264616)))

(declare-fun bs!1218344 () Bool)

(assert (= bs!1218344 (and d!1691745 d!1691735)))

(assert (=> bs!1218344 (= lambda!264654 lambda!264648)))

(declare-fun bs!1218345 () Bool)

(assert (= bs!1218345 (and d!1691745 d!1691583)))

(assert (=> bs!1218345 (= lambda!264654 lambda!264619)))

(declare-fun bs!1218346 () Bool)

(assert (= bs!1218346 (and d!1691745 d!1691695)))

(assert (=> bs!1218346 (= lambda!264654 lambda!264645)))

(declare-fun bs!1218347 () Bool)

(assert (= bs!1218347 (and d!1691745 d!1691587)))

(assert (=> bs!1218347 (= lambda!264654 lambda!264622)))

(declare-fun bs!1218348 () Bool)

(assert (= bs!1218348 (and d!1691745 b!5252994)))

(assert (=> bs!1218348 (= lambda!264654 lambda!264613)))

(declare-fun b!5253659 () Bool)

(declare-fun e!3268416 () Bool)

(declare-fun e!3268417 () Bool)

(assert (=> b!5253659 (= e!3268416 e!3268417)))

(declare-fun c!908931 () Bool)

(assert (=> b!5253659 (= c!908931 (isEmpty!32712 (t!374083 (exprs!4751 (h!67225 zl!343)))))))

(assert (=> d!1691745 e!3268416))

(declare-fun res!2229594 () Bool)

(assert (=> d!1691745 (=> (not res!2229594) (not e!3268416))))

(declare-fun lt!2153280 () Regex!14867)

(assert (=> d!1691745 (= res!2229594 (validRegex!6603 lt!2153280))))

(declare-fun e!3268418 () Regex!14867)

(assert (=> d!1691745 (= lt!2153280 e!3268418)))

(declare-fun c!908933 () Bool)

(declare-fun e!3268414 () Bool)

(assert (=> d!1691745 (= c!908933 e!3268414)))

(declare-fun res!2229593 () Bool)

(assert (=> d!1691745 (=> (not res!2229593) (not e!3268414))))

(assert (=> d!1691745 (= res!2229593 ((_ is Cons!60776) (t!374083 (exprs!4751 (h!67225 zl!343)))))))

(assert (=> d!1691745 (forall!14281 (t!374083 (exprs!4751 (h!67225 zl!343))) lambda!264654)))

(assert (=> d!1691745 (= (generalisedConcat!536 (t!374083 (exprs!4751 (h!67225 zl!343)))) lt!2153280)))

(declare-fun b!5253660 () Bool)

(declare-fun e!3268415 () Bool)

(assert (=> b!5253660 (= e!3268415 (isConcat!329 lt!2153280))))

(declare-fun b!5253661 () Bool)

(assert (=> b!5253661 (= e!3268418 (h!67224 (t!374083 (exprs!4751 (h!67225 zl!343)))))))

(declare-fun b!5253662 () Bool)

(declare-fun e!3268419 () Regex!14867)

(assert (=> b!5253662 (= e!3268419 (Concat!23712 (h!67224 (t!374083 (exprs!4751 (h!67225 zl!343)))) (generalisedConcat!536 (t!374083 (t!374083 (exprs!4751 (h!67225 zl!343)))))))))

(declare-fun b!5253663 () Bool)

(assert (=> b!5253663 (= e!3268419 EmptyExpr!14867)))

(declare-fun b!5253664 () Bool)

(assert (=> b!5253664 (= e!3268417 e!3268415)))

(declare-fun c!908930 () Bool)

(assert (=> b!5253664 (= c!908930 (isEmpty!32712 (tail!10357 (t!374083 (exprs!4751 (h!67225 zl!343))))))))

(declare-fun b!5253665 () Bool)

(assert (=> b!5253665 (= e!3268418 e!3268419)))

(declare-fun c!908932 () Bool)

(assert (=> b!5253665 (= c!908932 ((_ is Cons!60776) (t!374083 (exprs!4751 (h!67225 zl!343)))))))

(declare-fun b!5253666 () Bool)

(assert (=> b!5253666 (= e!3268417 (isEmptyExpr!806 lt!2153280))))

(declare-fun b!5253667 () Bool)

(assert (=> b!5253667 (= e!3268414 (isEmpty!32712 (t!374083 (t!374083 (exprs!4751 (h!67225 zl!343))))))))

(declare-fun b!5253668 () Bool)

(assert (=> b!5253668 (= e!3268415 (= lt!2153280 (head!11260 (t!374083 (exprs!4751 (h!67225 zl!343))))))))

(assert (= (and d!1691745 res!2229593) b!5253667))

(assert (= (and d!1691745 c!908933) b!5253661))

(assert (= (and d!1691745 (not c!908933)) b!5253665))

(assert (= (and b!5253665 c!908932) b!5253662))

(assert (= (and b!5253665 (not c!908932)) b!5253663))

(assert (= (and d!1691745 res!2229594) b!5253659))

(assert (= (and b!5253659 c!908931) b!5253666))

(assert (= (and b!5253659 (not c!908931)) b!5253664))

(assert (= (and b!5253664 c!908930) b!5253668))

(assert (= (and b!5253664 (not c!908930)) b!5253660))

(declare-fun m!6296612 () Bool)

(assert (=> b!5253666 m!6296612))

(declare-fun m!6296614 () Bool)

(assert (=> b!5253660 m!6296614))

(declare-fun m!6296616 () Bool)

(assert (=> b!5253667 m!6296616))

(declare-fun m!6296618 () Bool)

(assert (=> b!5253668 m!6296618))

(declare-fun m!6296620 () Bool)

(assert (=> d!1691745 m!6296620))

(declare-fun m!6296622 () Bool)

(assert (=> d!1691745 m!6296622))

(declare-fun m!6296624 () Bool)

(assert (=> b!5253662 m!6296624))

(assert (=> b!5253659 m!6296030))

(declare-fun m!6296626 () Bool)

(assert (=> b!5253664 m!6296626))

(assert (=> b!5253664 m!6296626))

(declare-fun m!6296628 () Bool)

(assert (=> b!5253664 m!6296628))

(assert (=> b!5253005 d!1691745))

(declare-fun d!1691747 () Bool)

(declare-fun e!3268426 () Bool)

(assert (=> d!1691747 e!3268426))

(declare-fun res!2229597 () Bool)

(assert (=> d!1691747 (=> (not res!2229597) (not e!3268426))))

(declare-fun lt!2153285 () List!60901)

(declare-fun noDuplicate!1228 (List!60901) Bool)

(assert (=> d!1691747 (= res!2229597 (noDuplicate!1228 lt!2153285))))

(declare-fun choose!39154 ((InoxSet Context!8502)) List!60901)

(assert (=> d!1691747 (= lt!2153285 (choose!39154 z!1189))))

(assert (=> d!1691747 (= (toList!8651 z!1189) lt!2153285)))

(declare-fun b!5253679 () Bool)

(declare-fun content!10795 (List!60901) (InoxSet Context!8502))

(assert (=> b!5253679 (= e!3268426 (= (content!10795 lt!2153285) z!1189))))

(assert (= (and d!1691747 res!2229597) b!5253679))

(declare-fun m!6296658 () Bool)

(assert (=> d!1691747 m!6296658))

(declare-fun m!6296660 () Bool)

(assert (=> d!1691747 m!6296660))

(declare-fun m!6296662 () Bool)

(assert (=> b!5253679 m!6296662))

(assert (=> b!5253024 d!1691747))

(assert (=> b!5253023 d!1691593))

(declare-fun d!1691761 () Bool)

(declare-fun lt!2153287 () Int)

(assert (=> d!1691761 (>= lt!2153287 0)))

(declare-fun e!3268427 () Int)

(assert (=> d!1691761 (= lt!2153287 e!3268427)))

(declare-fun c!908938 () Bool)

(assert (=> d!1691761 (= c!908938 ((_ is Cons!60777) lt!2153187))))

(assert (=> d!1691761 (= (zipperDepthTotal!48 lt!2153187) lt!2153287)))

(declare-fun b!5253680 () Bool)

(assert (=> b!5253680 (= e!3268427 (+ (contextDepthTotal!29 (h!67225 lt!2153187)) (zipperDepthTotal!48 (t!374084 lt!2153187))))))

(declare-fun b!5253681 () Bool)

(assert (=> b!5253681 (= e!3268427 0)))

(assert (= (and d!1691761 c!908938) b!5253680))

(assert (= (and d!1691761 (not c!908938)) b!5253681))

(declare-fun m!6296668 () Bool)

(assert (=> b!5253680 m!6296668))

(declare-fun m!6296670 () Bool)

(assert (=> b!5253680 m!6296670))

(assert (=> b!5253002 d!1691761))

(declare-fun d!1691765 () Bool)

(assert (=> d!1691765 (= (matchR!7052 lt!2153172 s!2326) (matchRSpec!1970 lt!2153172 s!2326))))

(declare-fun lt!2153288 () Unit!152950)

(assert (=> d!1691765 (= lt!2153288 (choose!39145 lt!2153172 s!2326))))

(assert (=> d!1691765 (validRegex!6603 lt!2153172)))

(assert (=> d!1691765 (= (mainMatchTheorem!1970 lt!2153172 s!2326) lt!2153288)))

(declare-fun bs!1218356 () Bool)

(assert (= bs!1218356 d!1691765))

(assert (=> bs!1218356 m!6296110))

(assert (=> bs!1218356 m!6296100))

(declare-fun m!6296672 () Bool)

(assert (=> bs!1218356 m!6296672))

(declare-fun m!6296674 () Bool)

(assert (=> bs!1218356 m!6296674))

(assert (=> b!5253022 d!1691765))

(declare-fun bs!1218357 () Bool)

(declare-fun d!1691767 () Bool)

(assert (= bs!1218357 (and d!1691767 d!1691735)))

(declare-fun lambda!264656 () Int)

(assert (=> bs!1218357 (= lambda!264656 lambda!264648)))

(declare-fun bs!1218358 () Bool)

(assert (= bs!1218358 (and d!1691767 d!1691583)))

(assert (=> bs!1218358 (= lambda!264656 lambda!264619)))

(declare-fun bs!1218359 () Bool)

(assert (= bs!1218359 (and d!1691767 d!1691695)))

(assert (=> bs!1218359 (= lambda!264656 lambda!264645)))

(declare-fun bs!1218360 () Bool)

(assert (= bs!1218360 (and d!1691767 d!1691587)))

(assert (=> bs!1218360 (= lambda!264656 lambda!264622)))

(declare-fun bs!1218361 () Bool)

(assert (= bs!1218361 (and d!1691767 b!5252994)))

(assert (=> bs!1218361 (= lambda!264656 lambda!264613)))

(declare-fun bs!1218362 () Bool)

(assert (= bs!1218362 (and d!1691767 d!1691745)))

(assert (=> bs!1218362 (= lambda!264656 lambda!264654)))

(declare-fun bs!1218363 () Bool)

(assert (= bs!1218363 (and d!1691767 d!1691581)))

(assert (=> bs!1218363 (= lambda!264656 lambda!264616)))

(declare-fun b!5253687 () Bool)

(declare-fun e!3268433 () Bool)

(declare-fun e!3268434 () Bool)

(assert (=> b!5253687 (= e!3268433 e!3268434)))

(declare-fun c!908942 () Bool)

(assert (=> b!5253687 (= c!908942 (isEmpty!32712 lt!2153167))))

(assert (=> d!1691767 e!3268433))

(declare-fun res!2229600 () Bool)

(assert (=> d!1691767 (=> (not res!2229600) (not e!3268433))))

(declare-fun lt!2153289 () Regex!14867)

(assert (=> d!1691767 (= res!2229600 (validRegex!6603 lt!2153289))))

(declare-fun e!3268435 () Regex!14867)

(assert (=> d!1691767 (= lt!2153289 e!3268435)))

(declare-fun c!908944 () Bool)

(declare-fun e!3268431 () Bool)

(assert (=> d!1691767 (= c!908944 e!3268431)))

(declare-fun res!2229599 () Bool)

(assert (=> d!1691767 (=> (not res!2229599) (not e!3268431))))

(assert (=> d!1691767 (= res!2229599 ((_ is Cons!60776) lt!2153167))))

(assert (=> d!1691767 (forall!14281 lt!2153167 lambda!264656)))

(assert (=> d!1691767 (= (generalisedConcat!536 lt!2153167) lt!2153289)))

(declare-fun b!5253688 () Bool)

(declare-fun e!3268432 () Bool)

(assert (=> b!5253688 (= e!3268432 (isConcat!329 lt!2153289))))

(declare-fun b!5253689 () Bool)

(assert (=> b!5253689 (= e!3268435 (h!67224 lt!2153167))))

(declare-fun b!5253690 () Bool)

(declare-fun e!3268436 () Regex!14867)

(assert (=> b!5253690 (= e!3268436 (Concat!23712 (h!67224 lt!2153167) (generalisedConcat!536 (t!374083 lt!2153167))))))

(declare-fun b!5253691 () Bool)

(assert (=> b!5253691 (= e!3268436 EmptyExpr!14867)))

(declare-fun b!5253692 () Bool)

(assert (=> b!5253692 (= e!3268434 e!3268432)))

(declare-fun c!908941 () Bool)

(assert (=> b!5253692 (= c!908941 (isEmpty!32712 (tail!10357 lt!2153167)))))

(declare-fun b!5253693 () Bool)

(assert (=> b!5253693 (= e!3268435 e!3268436)))

(declare-fun c!908943 () Bool)

(assert (=> b!5253693 (= c!908943 ((_ is Cons!60776) lt!2153167))))

(declare-fun b!5253694 () Bool)

(assert (=> b!5253694 (= e!3268434 (isEmptyExpr!806 lt!2153289))))

(declare-fun b!5253695 () Bool)

(assert (=> b!5253695 (= e!3268431 (isEmpty!32712 (t!374083 lt!2153167)))))

(declare-fun b!5253696 () Bool)

(assert (=> b!5253696 (= e!3268432 (= lt!2153289 (head!11260 lt!2153167)))))

(assert (= (and d!1691767 res!2229599) b!5253695))

(assert (= (and d!1691767 c!908944) b!5253689))

(assert (= (and d!1691767 (not c!908944)) b!5253693))

(assert (= (and b!5253693 c!908943) b!5253690))

(assert (= (and b!5253693 (not c!908943)) b!5253691))

(assert (= (and d!1691767 res!2229600) b!5253687))

(assert (= (and b!5253687 c!908942) b!5253694))

(assert (= (and b!5253687 (not c!908942)) b!5253692))

(assert (= (and b!5253692 c!908941) b!5253696))

(assert (= (and b!5253692 (not c!908941)) b!5253688))

(declare-fun m!6296694 () Bool)

(assert (=> b!5253694 m!6296694))

(declare-fun m!6296696 () Bool)

(assert (=> b!5253688 m!6296696))

(declare-fun m!6296698 () Bool)

(assert (=> b!5253695 m!6296698))

(declare-fun m!6296700 () Bool)

(assert (=> b!5253696 m!6296700))

(declare-fun m!6296702 () Bool)

(assert (=> d!1691767 m!6296702))

(declare-fun m!6296704 () Bool)

(assert (=> d!1691767 m!6296704))

(declare-fun m!6296706 () Bool)

(assert (=> b!5253690 m!6296706))

(declare-fun m!6296708 () Bool)

(assert (=> b!5253687 m!6296708))

(declare-fun m!6296710 () Bool)

(assert (=> b!5253692 m!6296710))

(assert (=> b!5253692 m!6296710))

(declare-fun m!6296712 () Bool)

(assert (=> b!5253692 m!6296712))

(assert (=> b!5253022 d!1691767))

(declare-fun d!1691779 () Bool)

(assert (=> d!1691779 (= (matchR!7052 lt!2153172 s!2326) (matchZipper!1111 lt!2153209 s!2326))))

(declare-fun lt!2153293 () Unit!152950)

(declare-fun choose!39155 ((InoxSet Context!8502) List!60901 Regex!14867 List!60902) Unit!152950)

(assert (=> d!1691779 (= lt!2153293 (choose!39155 lt!2153209 lt!2153187 lt!2153172 s!2326))))

(assert (=> d!1691779 (validRegex!6603 lt!2153172)))

(assert (=> d!1691779 (= (theoremZipperRegexEquiv!301 lt!2153209 lt!2153187 lt!2153172 s!2326) lt!2153293)))

(declare-fun bs!1218378 () Bool)

(assert (= bs!1218378 d!1691779))

(assert (=> bs!1218378 m!6296110))

(assert (=> bs!1218378 m!6296094))

(declare-fun m!6296732 () Bool)

(assert (=> bs!1218378 m!6296732))

(assert (=> bs!1218378 m!6296674))

(assert (=> b!5253022 d!1691779))

(declare-fun bs!1218380 () Bool)

(declare-fun d!1691787 () Bool)

(assert (= bs!1218380 (and d!1691787 d!1691735)))

(declare-fun lambda!264659 () Int)

(assert (=> bs!1218380 (= lambda!264659 lambda!264648)))

(declare-fun bs!1218381 () Bool)

(assert (= bs!1218381 (and d!1691787 d!1691583)))

(assert (=> bs!1218381 (= lambda!264659 lambda!264619)))

(declare-fun bs!1218382 () Bool)

(assert (= bs!1218382 (and d!1691787 d!1691695)))

(assert (=> bs!1218382 (= lambda!264659 lambda!264645)))

(declare-fun bs!1218383 () Bool)

(assert (= bs!1218383 (and d!1691787 d!1691587)))

(assert (=> bs!1218383 (= lambda!264659 lambda!264622)))

(declare-fun bs!1218384 () Bool)

(assert (= bs!1218384 (and d!1691787 d!1691767)))

(assert (=> bs!1218384 (= lambda!264659 lambda!264656)))

(declare-fun bs!1218385 () Bool)

(assert (= bs!1218385 (and d!1691787 b!5252994)))

(assert (=> bs!1218385 (= lambda!264659 lambda!264613)))

(declare-fun bs!1218386 () Bool)

(assert (= bs!1218386 (and d!1691787 d!1691745)))

(assert (=> bs!1218386 (= lambda!264659 lambda!264654)))

(declare-fun bs!1218387 () Bool)

(assert (= bs!1218387 (and d!1691787 d!1691581)))

(assert (=> bs!1218387 (= lambda!264659 lambda!264616)))

(declare-fun b!5253729 () Bool)

(declare-fun e!3268457 () Bool)

(declare-fun e!3268458 () Bool)

(assert (=> b!5253729 (= e!3268457 e!3268458)))

(declare-fun c!908956 () Bool)

(assert (=> b!5253729 (= c!908956 (isEmpty!32712 lt!2153162))))

(assert (=> d!1691787 e!3268457))

(declare-fun res!2229614 () Bool)

(assert (=> d!1691787 (=> (not res!2229614) (not e!3268457))))

(declare-fun lt!2153294 () Regex!14867)

(assert (=> d!1691787 (= res!2229614 (validRegex!6603 lt!2153294))))

(declare-fun e!3268459 () Regex!14867)

(assert (=> d!1691787 (= lt!2153294 e!3268459)))

(declare-fun c!908958 () Bool)

(declare-fun e!3268455 () Bool)

(assert (=> d!1691787 (= c!908958 e!3268455)))

(declare-fun res!2229613 () Bool)

(assert (=> d!1691787 (=> (not res!2229613) (not e!3268455))))

(assert (=> d!1691787 (= res!2229613 ((_ is Cons!60776) lt!2153162))))

(assert (=> d!1691787 (forall!14281 lt!2153162 lambda!264659)))

(assert (=> d!1691787 (= (generalisedConcat!536 lt!2153162) lt!2153294)))

(declare-fun b!5253730 () Bool)

(declare-fun e!3268456 () Bool)

(assert (=> b!5253730 (= e!3268456 (isConcat!329 lt!2153294))))

(declare-fun b!5253731 () Bool)

(assert (=> b!5253731 (= e!3268459 (h!67224 lt!2153162))))

(declare-fun b!5253732 () Bool)

(declare-fun e!3268460 () Regex!14867)

(assert (=> b!5253732 (= e!3268460 (Concat!23712 (h!67224 lt!2153162) (generalisedConcat!536 (t!374083 lt!2153162))))))

(declare-fun b!5253733 () Bool)

(assert (=> b!5253733 (= e!3268460 EmptyExpr!14867)))

(declare-fun b!5253734 () Bool)

(assert (=> b!5253734 (= e!3268458 e!3268456)))

(declare-fun c!908955 () Bool)

(assert (=> b!5253734 (= c!908955 (isEmpty!32712 (tail!10357 lt!2153162)))))

(declare-fun b!5253735 () Bool)

(assert (=> b!5253735 (= e!3268459 e!3268460)))

(declare-fun c!908957 () Bool)

(assert (=> b!5253735 (= c!908957 ((_ is Cons!60776) lt!2153162))))

(declare-fun b!5253736 () Bool)

(assert (=> b!5253736 (= e!3268458 (isEmptyExpr!806 lt!2153294))))

(declare-fun b!5253737 () Bool)

(assert (=> b!5253737 (= e!3268455 (isEmpty!32712 (t!374083 lt!2153162)))))

(declare-fun b!5253738 () Bool)

(assert (=> b!5253738 (= e!3268456 (= lt!2153294 (head!11260 lt!2153162)))))

(assert (= (and d!1691787 res!2229613) b!5253737))

(assert (= (and d!1691787 c!908958) b!5253731))

(assert (= (and d!1691787 (not c!908958)) b!5253735))

(assert (= (and b!5253735 c!908957) b!5253732))

(assert (= (and b!5253735 (not c!908957)) b!5253733))

(assert (= (and d!1691787 res!2229614) b!5253729))

(assert (= (and b!5253729 c!908956) b!5253736))

(assert (= (and b!5253729 (not c!908956)) b!5253734))

(assert (= (and b!5253734 c!908955) b!5253738))

(assert (= (and b!5253734 (not c!908955)) b!5253730))

(declare-fun m!6296740 () Bool)

(assert (=> b!5253736 m!6296740))

(declare-fun m!6296742 () Bool)

(assert (=> b!5253730 m!6296742))

(declare-fun m!6296744 () Bool)

(assert (=> b!5253737 m!6296744))

(declare-fun m!6296746 () Bool)

(assert (=> b!5253738 m!6296746))

(declare-fun m!6296748 () Bool)

(assert (=> d!1691787 m!6296748))

(declare-fun m!6296751 () Bool)

(assert (=> d!1691787 m!6296751))

(declare-fun m!6296754 () Bool)

(assert (=> b!5253732 m!6296754))

(declare-fun m!6296756 () Bool)

(assert (=> b!5253729 m!6296756))

(declare-fun m!6296760 () Bool)

(assert (=> b!5253734 m!6296760))

(assert (=> b!5253734 m!6296760))

(declare-fun m!6296762 () Bool)

(assert (=> b!5253734 m!6296762))

(assert (=> b!5253022 d!1691787))

(declare-fun bm!372290 () Bool)

(declare-fun call!372295 () Bool)

(assert (=> bm!372290 (= call!372295 (isEmpty!32713 s!2326))))

(declare-fun b!5253752 () Bool)

(declare-fun res!2229616 () Bool)

(declare-fun e!3268470 () Bool)

(assert (=> b!5253752 (=> res!2229616 e!3268470)))

(declare-fun e!3268474 () Bool)

(assert (=> b!5253752 (= res!2229616 e!3268474)))

(declare-fun res!2229621 () Bool)

(assert (=> b!5253752 (=> (not res!2229621) (not e!3268474))))

(declare-fun lt!2153297 () Bool)

(assert (=> b!5253752 (= res!2229621 lt!2153297)))

(declare-fun b!5253753 () Bool)

(declare-fun e!3268469 () Bool)

(assert (=> b!5253753 (= e!3268469 (not lt!2153297))))

(declare-fun b!5253754 () Bool)

(declare-fun res!2229620 () Bool)

(declare-fun e!3268473 () Bool)

(assert (=> b!5253754 (=> res!2229620 e!3268473)))

(assert (=> b!5253754 (= res!2229620 (not (isEmpty!32713 (tail!10358 s!2326))))))

(declare-fun b!5253755 () Bool)

(declare-fun res!2229618 () Bool)

(assert (=> b!5253755 (=> (not res!2229618) (not e!3268474))))

(assert (=> b!5253755 (= res!2229618 (isEmpty!32713 (tail!10358 s!2326)))))

(declare-fun b!5253756 () Bool)

(declare-fun e!3268471 () Bool)

(assert (=> b!5253756 (= e!3268471 (matchR!7052 (derivativeStep!4093 lt!2153199 (head!11261 s!2326)) (tail!10358 s!2326)))))

(declare-fun b!5253758 () Bool)

(declare-fun e!3268472 () Bool)

(assert (=> b!5253758 (= e!3268472 e!3268473)))

(declare-fun res!2229623 () Bool)

(assert (=> b!5253758 (=> res!2229623 e!3268473)))

(assert (=> b!5253758 (= res!2229623 call!372295)))

(declare-fun b!5253759 () Bool)

(assert (=> b!5253759 (= e!3268470 e!3268472)))

(declare-fun res!2229619 () Bool)

(assert (=> b!5253759 (=> (not res!2229619) (not e!3268472))))

(assert (=> b!5253759 (= res!2229619 (not lt!2153297))))

(declare-fun b!5253760 () Bool)

(declare-fun e!3268468 () Bool)

(assert (=> b!5253760 (= e!3268468 (= lt!2153297 call!372295))))

(declare-fun b!5253761 () Bool)

(assert (=> b!5253761 (= e!3268474 (= (head!11261 s!2326) (c!908723 lt!2153199)))))

(declare-fun b!5253762 () Bool)

(assert (=> b!5253762 (= e!3268471 (nullable!5036 lt!2153199))))

(declare-fun b!5253763 () Bool)

(assert (=> b!5253763 (= e!3268468 e!3268469)))

(declare-fun c!908966 () Bool)

(assert (=> b!5253763 (= c!908966 ((_ is EmptyLang!14867) lt!2153199))))

(declare-fun b!5253764 () Bool)

(declare-fun res!2229622 () Bool)

(assert (=> b!5253764 (=> (not res!2229622) (not e!3268474))))

(assert (=> b!5253764 (= res!2229622 (not call!372295))))

(declare-fun b!5253765 () Bool)

(assert (=> b!5253765 (= e!3268473 (not (= (head!11261 s!2326) (c!908723 lt!2153199))))))

(declare-fun d!1691795 () Bool)

(assert (=> d!1691795 e!3268468))

(declare-fun c!908965 () Bool)

(assert (=> d!1691795 (= c!908965 ((_ is EmptyExpr!14867) lt!2153199))))

(assert (=> d!1691795 (= lt!2153297 e!3268471)))

(declare-fun c!908967 () Bool)

(assert (=> d!1691795 (= c!908967 (isEmpty!32713 s!2326))))

(assert (=> d!1691795 (validRegex!6603 lt!2153199)))

(assert (=> d!1691795 (= (matchR!7052 lt!2153199 s!2326) lt!2153297)))

(declare-fun b!5253757 () Bool)

(declare-fun res!2229617 () Bool)

(assert (=> b!5253757 (=> res!2229617 e!3268470)))

(assert (=> b!5253757 (= res!2229617 (not ((_ is ElementMatch!14867) lt!2153199)))))

(assert (=> b!5253757 (= e!3268469 e!3268470)))

(assert (= (and d!1691795 c!908967) b!5253762))

(assert (= (and d!1691795 (not c!908967)) b!5253756))

(assert (= (and d!1691795 c!908965) b!5253760))

(assert (= (and d!1691795 (not c!908965)) b!5253763))

(assert (= (and b!5253763 c!908966) b!5253753))

(assert (= (and b!5253763 (not c!908966)) b!5253757))

(assert (= (and b!5253757 (not res!2229617)) b!5253752))

(assert (= (and b!5253752 res!2229621) b!5253764))

(assert (= (and b!5253764 res!2229622) b!5253755))

(assert (= (and b!5253755 res!2229618) b!5253761))

(assert (= (and b!5253752 (not res!2229616)) b!5253759))

(assert (= (and b!5253759 res!2229619) b!5253758))

(assert (= (and b!5253758 (not res!2229623)) b!5253754))

(assert (= (and b!5253754 (not res!2229620)) b!5253765))

(assert (= (or b!5253760 b!5253758 b!5253764) bm!372290))

(assert (=> b!5253754 m!6296278))

(assert (=> b!5253754 m!6296278))

(assert (=> b!5253754 m!6296280))

(assert (=> b!5253765 m!6296282))

(assert (=> b!5253761 m!6296282))

(assert (=> bm!372290 m!6296238))

(assert (=> b!5253756 m!6296282))

(assert (=> b!5253756 m!6296282))

(declare-fun m!6296768 () Bool)

(assert (=> b!5253756 m!6296768))

(assert (=> b!5253756 m!6296278))

(assert (=> b!5253756 m!6296768))

(assert (=> b!5253756 m!6296278))

(declare-fun m!6296774 () Bool)

(assert (=> b!5253756 m!6296774))

(assert (=> b!5253755 m!6296278))

(assert (=> b!5253755 m!6296278))

(assert (=> b!5253755 m!6296280))

(declare-fun m!6296776 () Bool)

(assert (=> b!5253762 m!6296776))

(assert (=> d!1691795 m!6296238))

(declare-fun m!6296778 () Bool)

(assert (=> d!1691795 m!6296778))

(assert (=> b!5253022 d!1691795))

(declare-fun bs!1218388 () Bool)

(declare-fun b!5253786 () Bool)

(assert (= bs!1218388 (and b!5253786 b!5253000)))

(declare-fun lambda!264660 () Int)

(assert (=> bs!1218388 (not (= lambda!264660 lambda!264611))))

(declare-fun bs!1218389 () Bool)

(assert (= bs!1218389 (and b!5253786 b!5253326)))

(assert (=> bs!1218389 (= (and (= (reg!15196 lt!2153199) (reg!15196 lt!2153181)) (= lt!2153199 lt!2153181)) (= lambda!264660 lambda!264635))))

(declare-fun bs!1218390 () Bool)

(assert (= bs!1218390 (and b!5253786 b!5253630)))

(assert (=> bs!1218390 (not (= lambda!264660 lambda!264651))))

(declare-fun bs!1218391 () Bool)

(assert (= bs!1218391 (and b!5253786 b!5253203)))

(assert (=> bs!1218391 (= (and (= (reg!15196 lt!2153199) (reg!15196 lt!2153182)) (= lt!2153199 lt!2153182)) (= lambda!264660 lambda!264633))))

(declare-fun bs!1218392 () Bool)

(assert (= bs!1218392 (and b!5253786 b!5253327)))

(assert (=> bs!1218392 (not (= lambda!264660 lambda!264636))))

(declare-fun bs!1218393 () Bool)

(assert (= bs!1218393 (and b!5253786 b!5253629)))

(assert (=> bs!1218393 (= (and (= (reg!15196 lt!2153199) (reg!15196 r!7292)) (= lt!2153199 r!7292)) (= lambda!264660 lambda!264649))))

(assert (=> bs!1218388 (not (= lambda!264660 lambda!264610))))

(declare-fun bs!1218394 () Bool)

(assert (= bs!1218394 (and b!5253786 b!5253204)))

(assert (=> bs!1218394 (not (= lambda!264660 lambda!264634))))

(assert (=> b!5253786 true))

(assert (=> b!5253786 true))

(declare-fun bs!1218395 () Bool)

(declare-fun b!5253787 () Bool)

(assert (= bs!1218395 (and b!5253787 b!5253000)))

(declare-fun lambda!264661 () Int)

(assert (=> bs!1218395 (= (and (= (regOne!30246 lt!2153199) (regOne!30246 r!7292)) (= (regTwo!30246 lt!2153199) (regTwo!30246 r!7292))) (= lambda!264661 lambda!264611))))

(declare-fun bs!1218396 () Bool)

(assert (= bs!1218396 (and b!5253787 b!5253630)))

(assert (=> bs!1218396 (= (and (= (regOne!30246 lt!2153199) (regOne!30246 r!7292)) (= (regTwo!30246 lt!2153199) (regTwo!30246 r!7292))) (= lambda!264661 lambda!264651))))

(declare-fun bs!1218397 () Bool)

(assert (= bs!1218397 (and b!5253787 b!5253203)))

(assert (=> bs!1218397 (not (= lambda!264661 lambda!264633))))

(declare-fun bs!1218398 () Bool)

(assert (= bs!1218398 (and b!5253787 b!5253327)))

(assert (=> bs!1218398 (= (and (= (regOne!30246 lt!2153199) (regOne!30246 lt!2153181)) (= (regTwo!30246 lt!2153199) (regTwo!30246 lt!2153181))) (= lambda!264661 lambda!264636))))

(declare-fun bs!1218399 () Bool)

(assert (= bs!1218399 (and b!5253787 b!5253629)))

(assert (=> bs!1218399 (not (= lambda!264661 lambda!264649))))

(declare-fun bs!1218400 () Bool)

(assert (= bs!1218400 (and b!5253787 b!5253786)))

(assert (=> bs!1218400 (not (= lambda!264661 lambda!264660))))

(declare-fun bs!1218401 () Bool)

(assert (= bs!1218401 (and b!5253787 b!5253326)))

(assert (=> bs!1218401 (not (= lambda!264661 lambda!264635))))

(assert (=> bs!1218395 (not (= lambda!264661 lambda!264610))))

(declare-fun bs!1218402 () Bool)

(assert (= bs!1218402 (and b!5253787 b!5253204)))

(assert (=> bs!1218402 (= (and (= (regOne!30246 lt!2153199) (regOne!30246 lt!2153182)) (= (regTwo!30246 lt!2153199) (regTwo!30246 lt!2153182))) (= lambda!264661 lambda!264634))))

(assert (=> b!5253787 true))

(assert (=> b!5253787 true))

(declare-fun b!5253777 () Bool)

(declare-fun e!3268487 () Bool)

(declare-fun e!3268484 () Bool)

(assert (=> b!5253777 (= e!3268487 e!3268484)))

(declare-fun c!908973 () Bool)

(assert (=> b!5253777 (= c!908973 ((_ is Star!14867) lt!2153199))))

(declare-fun b!5253778 () Bool)

(declare-fun e!3268486 () Bool)

(assert (=> b!5253778 (= e!3268486 (= s!2326 (Cons!60778 (c!908723 lt!2153199) Nil!60778)))))

(declare-fun b!5253779 () Bool)

(declare-fun e!3268482 () Bool)

(assert (=> b!5253779 (= e!3268487 e!3268482)))

(declare-fun res!2229627 () Bool)

(assert (=> b!5253779 (= res!2229627 (matchRSpec!1970 (regOne!30247 lt!2153199) s!2326))))

(assert (=> b!5253779 (=> res!2229627 e!3268482)))

(declare-fun b!5253780 () Bool)

(declare-fun c!908976 () Bool)

(assert (=> b!5253780 (= c!908976 ((_ is ElementMatch!14867) lt!2153199))))

(declare-fun e!3268485 () Bool)

(assert (=> b!5253780 (= e!3268485 e!3268486)))

(declare-fun bm!372297 () Bool)

(declare-fun call!372303 () Bool)

(assert (=> bm!372297 (= call!372303 (isEmpty!32713 s!2326))))

(declare-fun bm!372298 () Bool)

(declare-fun call!372302 () Bool)

(assert (=> bm!372298 (= call!372302 (Exists!2048 (ite c!908973 lambda!264660 lambda!264661)))))

(declare-fun b!5253781 () Bool)

(declare-fun res!2229625 () Bool)

(declare-fun e!3268483 () Bool)

(assert (=> b!5253781 (=> res!2229625 e!3268483)))

(assert (=> b!5253781 (= res!2229625 call!372303)))

(assert (=> b!5253781 (= e!3268484 e!3268483)))

(declare-fun b!5253782 () Bool)

(assert (=> b!5253782 (= e!3268482 (matchRSpec!1970 (regTwo!30247 lt!2153199) s!2326))))

(declare-fun b!5253783 () Bool)

(declare-fun e!3268481 () Bool)

(assert (=> b!5253783 (= e!3268481 call!372303)))

(declare-fun d!1691799 () Bool)

(declare-fun c!908974 () Bool)

(assert (=> d!1691799 (= c!908974 ((_ is EmptyExpr!14867) lt!2153199))))

(assert (=> d!1691799 (= (matchRSpec!1970 lt!2153199 s!2326) e!3268481)))

(declare-fun b!5253784 () Bool)

(declare-fun c!908975 () Bool)

(assert (=> b!5253784 (= c!908975 ((_ is Union!14867) lt!2153199))))

(assert (=> b!5253784 (= e!3268486 e!3268487)))

(declare-fun b!5253785 () Bool)

(assert (=> b!5253785 (= e!3268481 e!3268485)))

(declare-fun res!2229626 () Bool)

(assert (=> b!5253785 (= res!2229626 (not ((_ is EmptyLang!14867) lt!2153199)))))

(assert (=> b!5253785 (=> (not res!2229626) (not e!3268485))))

(assert (=> b!5253786 (= e!3268483 call!372302)))

(assert (=> b!5253787 (= e!3268484 call!372302)))

(assert (= (and d!1691799 c!908974) b!5253783))

(assert (= (and d!1691799 (not c!908974)) b!5253785))

(assert (= (and b!5253785 res!2229626) b!5253780))

(assert (= (and b!5253780 c!908976) b!5253778))

(assert (= (and b!5253780 (not c!908976)) b!5253784))

(assert (= (and b!5253784 c!908975) b!5253779))

(assert (= (and b!5253784 (not c!908975)) b!5253777))

(assert (= (and b!5253779 (not res!2229627)) b!5253782))

(assert (= (and b!5253777 c!908973) b!5253781))

(assert (= (and b!5253777 (not c!908973)) b!5253787))

(assert (= (and b!5253781 (not res!2229625)) b!5253786))

(assert (= (or b!5253786 b!5253787) bm!372298))

(assert (= (or b!5253783 b!5253781) bm!372297))

(declare-fun m!6296784 () Bool)

(assert (=> b!5253779 m!6296784))

(assert (=> bm!372297 m!6296238))

(declare-fun m!6296786 () Bool)

(assert (=> bm!372298 m!6296786))

(declare-fun m!6296788 () Bool)

(assert (=> b!5253782 m!6296788))

(assert (=> b!5253022 d!1691799))

(declare-fun bm!372299 () Bool)

(declare-fun call!372304 () Bool)

(assert (=> bm!372299 (= call!372304 (isEmpty!32713 s!2326))))

(declare-fun b!5253788 () Bool)

(declare-fun res!2229628 () Bool)

(declare-fun e!3268490 () Bool)

(assert (=> b!5253788 (=> res!2229628 e!3268490)))

(declare-fun e!3268494 () Bool)

(assert (=> b!5253788 (= res!2229628 e!3268494)))

(declare-fun res!2229633 () Bool)

(assert (=> b!5253788 (=> (not res!2229633) (not e!3268494))))

(declare-fun lt!2153298 () Bool)

(assert (=> b!5253788 (= res!2229633 lt!2153298)))

(declare-fun b!5253789 () Bool)

(declare-fun e!3268489 () Bool)

(assert (=> b!5253789 (= e!3268489 (not lt!2153298))))

(declare-fun b!5253790 () Bool)

(declare-fun res!2229632 () Bool)

(declare-fun e!3268493 () Bool)

(assert (=> b!5253790 (=> res!2229632 e!3268493)))

(assert (=> b!5253790 (= res!2229632 (not (isEmpty!32713 (tail!10358 s!2326))))))

(declare-fun b!5253791 () Bool)

(declare-fun res!2229630 () Bool)

(assert (=> b!5253791 (=> (not res!2229630) (not e!3268494))))

(assert (=> b!5253791 (= res!2229630 (isEmpty!32713 (tail!10358 s!2326)))))

(declare-fun b!5253792 () Bool)

(declare-fun e!3268491 () Bool)

(assert (=> b!5253792 (= e!3268491 (matchR!7052 (derivativeStep!4093 lt!2153172 (head!11261 s!2326)) (tail!10358 s!2326)))))

(declare-fun b!5253794 () Bool)

(declare-fun e!3268492 () Bool)

(assert (=> b!5253794 (= e!3268492 e!3268493)))

(declare-fun res!2229635 () Bool)

(assert (=> b!5253794 (=> res!2229635 e!3268493)))

(assert (=> b!5253794 (= res!2229635 call!372304)))

(declare-fun b!5253795 () Bool)

(assert (=> b!5253795 (= e!3268490 e!3268492)))

(declare-fun res!2229631 () Bool)

(assert (=> b!5253795 (=> (not res!2229631) (not e!3268492))))

(assert (=> b!5253795 (= res!2229631 (not lt!2153298))))

(declare-fun b!5253796 () Bool)

(declare-fun e!3268488 () Bool)

(assert (=> b!5253796 (= e!3268488 (= lt!2153298 call!372304))))

(declare-fun b!5253797 () Bool)

(assert (=> b!5253797 (= e!3268494 (= (head!11261 s!2326) (c!908723 lt!2153172)))))

(declare-fun b!5253798 () Bool)

(assert (=> b!5253798 (= e!3268491 (nullable!5036 lt!2153172))))

(declare-fun b!5253799 () Bool)

(assert (=> b!5253799 (= e!3268488 e!3268489)))

(declare-fun c!908978 () Bool)

(assert (=> b!5253799 (= c!908978 ((_ is EmptyLang!14867) lt!2153172))))

(declare-fun b!5253800 () Bool)

(declare-fun res!2229634 () Bool)

(assert (=> b!5253800 (=> (not res!2229634) (not e!3268494))))

(assert (=> b!5253800 (= res!2229634 (not call!372304))))

(declare-fun b!5253801 () Bool)

(assert (=> b!5253801 (= e!3268493 (not (= (head!11261 s!2326) (c!908723 lt!2153172))))))

(declare-fun d!1691803 () Bool)

(assert (=> d!1691803 e!3268488))

(declare-fun c!908977 () Bool)

(assert (=> d!1691803 (= c!908977 ((_ is EmptyExpr!14867) lt!2153172))))

(assert (=> d!1691803 (= lt!2153298 e!3268491)))

(declare-fun c!908979 () Bool)

(assert (=> d!1691803 (= c!908979 (isEmpty!32713 s!2326))))

(assert (=> d!1691803 (validRegex!6603 lt!2153172)))

(assert (=> d!1691803 (= (matchR!7052 lt!2153172 s!2326) lt!2153298)))

(declare-fun b!5253793 () Bool)

(declare-fun res!2229629 () Bool)

(assert (=> b!5253793 (=> res!2229629 e!3268490)))

(assert (=> b!5253793 (= res!2229629 (not ((_ is ElementMatch!14867) lt!2153172)))))

(assert (=> b!5253793 (= e!3268489 e!3268490)))

(assert (= (and d!1691803 c!908979) b!5253798))

(assert (= (and d!1691803 (not c!908979)) b!5253792))

(assert (= (and d!1691803 c!908977) b!5253796))

(assert (= (and d!1691803 (not c!908977)) b!5253799))

(assert (= (and b!5253799 c!908978) b!5253789))

(assert (= (and b!5253799 (not c!908978)) b!5253793))

(assert (= (and b!5253793 (not res!2229629)) b!5253788))

(assert (= (and b!5253788 res!2229633) b!5253800))

(assert (= (and b!5253800 res!2229634) b!5253791))

(assert (= (and b!5253791 res!2229630) b!5253797))

(assert (= (and b!5253788 (not res!2229628)) b!5253795))

(assert (= (and b!5253795 res!2229631) b!5253794))

(assert (= (and b!5253794 (not res!2229635)) b!5253790))

(assert (= (and b!5253790 (not res!2229632)) b!5253801))

(assert (= (or b!5253796 b!5253794 b!5253800) bm!372299))

(assert (=> b!5253790 m!6296278))

(assert (=> b!5253790 m!6296278))

(assert (=> b!5253790 m!6296280))

(assert (=> b!5253801 m!6296282))

(assert (=> b!5253797 m!6296282))

(assert (=> bm!372299 m!6296238))

(assert (=> b!5253792 m!6296282))

(assert (=> b!5253792 m!6296282))

(declare-fun m!6296790 () Bool)

(assert (=> b!5253792 m!6296790))

(assert (=> b!5253792 m!6296278))

(assert (=> b!5253792 m!6296790))

(assert (=> b!5253792 m!6296278))

(declare-fun m!6296792 () Bool)

(assert (=> b!5253792 m!6296792))

(assert (=> b!5253791 m!6296278))

(assert (=> b!5253791 m!6296278))

(assert (=> b!5253791 m!6296280))

(declare-fun m!6296794 () Bool)

(assert (=> b!5253798 m!6296794))

(assert (=> d!1691803 m!6296238))

(assert (=> d!1691803 m!6296674))

(assert (=> b!5253022 d!1691803))

(declare-fun d!1691805 () Bool)

(assert (=> d!1691805 (= (matchR!7052 lt!2153199 s!2326) (matchZipper!1111 lt!2153207 s!2326))))

(declare-fun lt!2153301 () Unit!152950)

(assert (=> d!1691805 (= lt!2153301 (choose!39155 lt!2153207 lt!2153203 lt!2153199 s!2326))))

(assert (=> d!1691805 (validRegex!6603 lt!2153199)))

(assert (=> d!1691805 (= (theoremZipperRegexEquiv!301 lt!2153207 lt!2153203 lt!2153199 s!2326) lt!2153301)))

(declare-fun bs!1218403 () Bool)

(assert (= bs!1218403 d!1691805))

(assert (=> bs!1218403 m!6296104))

(assert (=> bs!1218403 m!6296080))

(declare-fun m!6296796 () Bool)

(assert (=> bs!1218403 m!6296796))

(assert (=> bs!1218403 m!6296778))

(assert (=> b!5253022 d!1691805))

(declare-fun d!1691807 () Bool)

(declare-fun c!908988 () Bool)

(assert (=> d!1691807 (= c!908988 (isEmpty!32713 s!2326))))

(declare-fun e!3268507 () Bool)

(assert (=> d!1691807 (= (matchZipper!1111 lt!2153209 s!2326) e!3268507)))

(declare-fun b!5253822 () Bool)

(assert (=> b!5253822 (= e!3268507 (nullableZipper!1271 lt!2153209))))

(declare-fun b!5253823 () Bool)

(assert (=> b!5253823 (= e!3268507 (matchZipper!1111 (derivationStepZipper!1115 lt!2153209 (head!11261 s!2326)) (tail!10358 s!2326)))))

(assert (= (and d!1691807 c!908988) b!5253822))

(assert (= (and d!1691807 (not c!908988)) b!5253823))

(assert (=> d!1691807 m!6296238))

(declare-fun m!6296798 () Bool)

(assert (=> b!5253822 m!6296798))

(assert (=> b!5253823 m!6296282))

(assert (=> b!5253823 m!6296282))

(declare-fun m!6296800 () Bool)

(assert (=> b!5253823 m!6296800))

(assert (=> b!5253823 m!6296278))

(assert (=> b!5253823 m!6296800))

(assert (=> b!5253823 m!6296278))

(declare-fun m!6296802 () Bool)

(assert (=> b!5253823 m!6296802))

(assert (=> b!5253022 d!1691807))

(declare-fun bs!1218404 () Bool)

(declare-fun b!5253833 () Bool)

(assert (= bs!1218404 (and b!5253833 b!5253787)))

(declare-fun lambda!264664 () Int)

(assert (=> bs!1218404 (not (= lambda!264664 lambda!264661))))

(declare-fun bs!1218405 () Bool)

(assert (= bs!1218405 (and b!5253833 b!5253000)))

(assert (=> bs!1218405 (not (= lambda!264664 lambda!264611))))

(declare-fun bs!1218406 () Bool)

(assert (= bs!1218406 (and b!5253833 b!5253630)))

(assert (=> bs!1218406 (not (= lambda!264664 lambda!264651))))

(declare-fun bs!1218407 () Bool)

(assert (= bs!1218407 (and b!5253833 b!5253203)))

(assert (=> bs!1218407 (= (and (= (reg!15196 lt!2153172) (reg!15196 lt!2153182)) (= lt!2153172 lt!2153182)) (= lambda!264664 lambda!264633))))

(declare-fun bs!1218408 () Bool)

(assert (= bs!1218408 (and b!5253833 b!5253327)))

(assert (=> bs!1218408 (not (= lambda!264664 lambda!264636))))

(declare-fun bs!1218409 () Bool)

(assert (= bs!1218409 (and b!5253833 b!5253629)))

(assert (=> bs!1218409 (= (and (= (reg!15196 lt!2153172) (reg!15196 r!7292)) (= lt!2153172 r!7292)) (= lambda!264664 lambda!264649))))

(declare-fun bs!1218410 () Bool)

(assert (= bs!1218410 (and b!5253833 b!5253786)))

(assert (=> bs!1218410 (= (and (= (reg!15196 lt!2153172) (reg!15196 lt!2153199)) (= lt!2153172 lt!2153199)) (= lambda!264664 lambda!264660))))

(declare-fun bs!1218411 () Bool)

(assert (= bs!1218411 (and b!5253833 b!5253326)))

(assert (=> bs!1218411 (= (and (= (reg!15196 lt!2153172) (reg!15196 lt!2153181)) (= lt!2153172 lt!2153181)) (= lambda!264664 lambda!264635))))

(assert (=> bs!1218405 (not (= lambda!264664 lambda!264610))))

(declare-fun bs!1218412 () Bool)

(assert (= bs!1218412 (and b!5253833 b!5253204)))

(assert (=> bs!1218412 (not (= lambda!264664 lambda!264634))))

(assert (=> b!5253833 true))

(assert (=> b!5253833 true))

(declare-fun bs!1218415 () Bool)

(declare-fun b!5253834 () Bool)

(assert (= bs!1218415 (and b!5253834 b!5253787)))

(declare-fun lambda!264666 () Int)

(assert (=> bs!1218415 (= (and (= (regOne!30246 lt!2153172) (regOne!30246 lt!2153199)) (= (regTwo!30246 lt!2153172) (regTwo!30246 lt!2153199))) (= lambda!264666 lambda!264661))))

(declare-fun bs!1218418 () Bool)

(assert (= bs!1218418 (and b!5253834 b!5253630)))

(assert (=> bs!1218418 (= (and (= (regOne!30246 lt!2153172) (regOne!30246 r!7292)) (= (regTwo!30246 lt!2153172) (regTwo!30246 r!7292))) (= lambda!264666 lambda!264651))))

(declare-fun bs!1218420 () Bool)

(assert (= bs!1218420 (and b!5253834 b!5253203)))

(assert (=> bs!1218420 (not (= lambda!264666 lambda!264633))))

(declare-fun bs!1218421 () Bool)

(assert (= bs!1218421 (and b!5253834 b!5253327)))

(assert (=> bs!1218421 (= (and (= (regOne!30246 lt!2153172) (regOne!30246 lt!2153181)) (= (regTwo!30246 lt!2153172) (regTwo!30246 lt!2153181))) (= lambda!264666 lambda!264636))))

(declare-fun bs!1218422 () Bool)

(assert (= bs!1218422 (and b!5253834 b!5253629)))

(assert (=> bs!1218422 (not (= lambda!264666 lambda!264649))))

(declare-fun bs!1218423 () Bool)

(assert (= bs!1218423 (and b!5253834 b!5253000)))

(assert (=> bs!1218423 (= (and (= (regOne!30246 lt!2153172) (regOne!30246 r!7292)) (= (regTwo!30246 lt!2153172) (regTwo!30246 r!7292))) (= lambda!264666 lambda!264611))))

(declare-fun bs!1218424 () Bool)

(assert (= bs!1218424 (and b!5253834 b!5253833)))

(assert (=> bs!1218424 (not (= lambda!264666 lambda!264664))))

(declare-fun bs!1218425 () Bool)

(assert (= bs!1218425 (and b!5253834 b!5253786)))

(assert (=> bs!1218425 (not (= lambda!264666 lambda!264660))))

(declare-fun bs!1218426 () Bool)

(assert (= bs!1218426 (and b!5253834 b!5253326)))

(assert (=> bs!1218426 (not (= lambda!264666 lambda!264635))))

(assert (=> bs!1218423 (not (= lambda!264666 lambda!264610))))

(declare-fun bs!1218427 () Bool)

(assert (= bs!1218427 (and b!5253834 b!5253204)))

(assert (=> bs!1218427 (= (and (= (regOne!30246 lt!2153172) (regOne!30246 lt!2153182)) (= (regTwo!30246 lt!2153172) (regTwo!30246 lt!2153182))) (= lambda!264666 lambda!264634))))

(assert (=> b!5253834 true))

(assert (=> b!5253834 true))

(declare-fun b!5253824 () Bool)

(declare-fun e!3268514 () Bool)

(declare-fun e!3268511 () Bool)

(assert (=> b!5253824 (= e!3268514 e!3268511)))

(declare-fun c!908989 () Bool)

(assert (=> b!5253824 (= c!908989 ((_ is Star!14867) lt!2153172))))

(declare-fun b!5253825 () Bool)

(declare-fun e!3268513 () Bool)

(assert (=> b!5253825 (= e!3268513 (= s!2326 (Cons!60778 (c!908723 lt!2153172) Nil!60778)))))

(declare-fun b!5253826 () Bool)

(declare-fun e!3268509 () Bool)

(assert (=> b!5253826 (= e!3268514 e!3268509)))

(declare-fun res!2229642 () Bool)

(assert (=> b!5253826 (= res!2229642 (matchRSpec!1970 (regOne!30247 lt!2153172) s!2326))))

(assert (=> b!5253826 (=> res!2229642 e!3268509)))

(declare-fun b!5253827 () Bool)

(declare-fun c!908992 () Bool)

(assert (=> b!5253827 (= c!908992 ((_ is ElementMatch!14867) lt!2153172))))

(declare-fun e!3268512 () Bool)

(assert (=> b!5253827 (= e!3268512 e!3268513)))

(declare-fun bm!372300 () Bool)

(declare-fun call!372306 () Bool)

(assert (=> bm!372300 (= call!372306 (isEmpty!32713 s!2326))))

(declare-fun bm!372301 () Bool)

(declare-fun call!372305 () Bool)

(assert (=> bm!372301 (= call!372305 (Exists!2048 (ite c!908989 lambda!264664 lambda!264666)))))

(declare-fun b!5253828 () Bool)

(declare-fun res!2229640 () Bool)

(declare-fun e!3268510 () Bool)

(assert (=> b!5253828 (=> res!2229640 e!3268510)))

(assert (=> b!5253828 (= res!2229640 call!372306)))

(assert (=> b!5253828 (= e!3268511 e!3268510)))

(declare-fun b!5253829 () Bool)

(assert (=> b!5253829 (= e!3268509 (matchRSpec!1970 (regTwo!30247 lt!2153172) s!2326))))

(declare-fun b!5253830 () Bool)

(declare-fun e!3268508 () Bool)

(assert (=> b!5253830 (= e!3268508 call!372306)))

(declare-fun d!1691809 () Bool)

(declare-fun c!908990 () Bool)

(assert (=> d!1691809 (= c!908990 ((_ is EmptyExpr!14867) lt!2153172))))

(assert (=> d!1691809 (= (matchRSpec!1970 lt!2153172 s!2326) e!3268508)))

(declare-fun b!5253831 () Bool)

(declare-fun c!908991 () Bool)

(assert (=> b!5253831 (= c!908991 ((_ is Union!14867) lt!2153172))))

(assert (=> b!5253831 (= e!3268513 e!3268514)))

(declare-fun b!5253832 () Bool)

(assert (=> b!5253832 (= e!3268508 e!3268512)))

(declare-fun res!2229641 () Bool)

(assert (=> b!5253832 (= res!2229641 (not ((_ is EmptyLang!14867) lt!2153172)))))

(assert (=> b!5253832 (=> (not res!2229641) (not e!3268512))))

(assert (=> b!5253833 (= e!3268510 call!372305)))

(assert (=> b!5253834 (= e!3268511 call!372305)))

(assert (= (and d!1691809 c!908990) b!5253830))

(assert (= (and d!1691809 (not c!908990)) b!5253832))

(assert (= (and b!5253832 res!2229641) b!5253827))

(assert (= (and b!5253827 c!908992) b!5253825))

(assert (= (and b!5253827 (not c!908992)) b!5253831))

(assert (= (and b!5253831 c!908991) b!5253826))

(assert (= (and b!5253831 (not c!908991)) b!5253824))

(assert (= (and b!5253826 (not res!2229642)) b!5253829))

(assert (= (and b!5253824 c!908989) b!5253828))

(assert (= (and b!5253824 (not c!908989)) b!5253834))

(assert (= (and b!5253828 (not res!2229640)) b!5253833))

(assert (= (or b!5253833 b!5253834) bm!372301))

(assert (= (or b!5253830 b!5253828) bm!372300))

(declare-fun m!6296822 () Bool)

(assert (=> b!5253826 m!6296822))

(assert (=> bm!372300 m!6296238))

(declare-fun m!6296824 () Bool)

(assert (=> bm!372301 m!6296824))

(declare-fun m!6296828 () Bool)

(assert (=> b!5253829 m!6296828))

(assert (=> b!5253022 d!1691809))

(declare-fun d!1691815 () Bool)

(assert (=> d!1691815 (= (matchR!7052 lt!2153199 s!2326) (matchRSpec!1970 lt!2153199 s!2326))))

(declare-fun lt!2153304 () Unit!152950)

(assert (=> d!1691815 (= lt!2153304 (choose!39145 lt!2153199 s!2326))))

(assert (=> d!1691815 (validRegex!6603 lt!2153199)))

(assert (=> d!1691815 (= (mainMatchTheorem!1970 lt!2153199 s!2326) lt!2153304)))

(declare-fun bs!1218428 () Bool)

(assert (= bs!1218428 d!1691815))

(assert (=> bs!1218428 m!6296104))

(assert (=> bs!1218428 m!6296096))

(declare-fun m!6296834 () Bool)

(assert (=> bs!1218428 m!6296834))

(assert (=> bs!1218428 m!6296778))

(assert (=> b!5253022 d!1691815))

(assert (=> b!5253021 d!1691593))

(declare-fun b!5253928 () Bool)

(declare-fun e!3268572 () Bool)

(assert (=> b!5253928 (= e!3268572 (matchR!7052 (regTwo!30246 r!7292) s!2326))))

(declare-fun b!5253929 () Bool)

(declare-fun e!3268569 () Option!14978)

(declare-fun e!3268571 () Option!14978)

(assert (=> b!5253929 (= e!3268569 e!3268571)))

(declare-fun c!909021 () Bool)

(assert (=> b!5253929 (= c!909021 ((_ is Nil!60778) s!2326))))

(declare-fun d!1691819 () Bool)

(declare-fun e!3268570 () Bool)

(assert (=> d!1691819 e!3268570))

(declare-fun res!2229684 () Bool)

(assert (=> d!1691819 (=> res!2229684 e!3268570)))

(declare-fun e!3268568 () Bool)

(assert (=> d!1691819 (= res!2229684 e!3268568)))

(declare-fun res!2229681 () Bool)

(assert (=> d!1691819 (=> (not res!2229681) (not e!3268568))))

(declare-fun lt!2153322 () Option!14978)

(assert (=> d!1691819 (= res!2229681 (isDefined!11681 lt!2153322))))

(assert (=> d!1691819 (= lt!2153322 e!3268569)))

(declare-fun c!909022 () Bool)

(assert (=> d!1691819 (= c!909022 e!3268572)))

(declare-fun res!2229680 () Bool)

(assert (=> d!1691819 (=> (not res!2229680) (not e!3268572))))

(assert (=> d!1691819 (= res!2229680 (matchR!7052 (regOne!30246 r!7292) Nil!60778))))

(assert (=> d!1691819 (validRegex!6603 (regOne!30246 r!7292))))

(assert (=> d!1691819 (= (findConcatSeparation!1392 (regOne!30246 r!7292) (regTwo!30246 r!7292) Nil!60778 s!2326 s!2326) lt!2153322)))

(declare-fun b!5253930 () Bool)

(assert (=> b!5253930 (= e!3268569 (Some!14977 (tuple2!64133 Nil!60778 s!2326)))))

(declare-fun b!5253931 () Bool)

(declare-fun ++!13251 (List!60902 List!60902) List!60902)

(declare-fun get!20890 (Option!14978) tuple2!64132)

(assert (=> b!5253931 (= e!3268568 (= (++!13251 (_1!35369 (get!20890 lt!2153322)) (_2!35369 (get!20890 lt!2153322))) s!2326))))

(declare-fun b!5253932 () Bool)

(declare-fun res!2229683 () Bool)

(assert (=> b!5253932 (=> (not res!2229683) (not e!3268568))))

(assert (=> b!5253932 (= res!2229683 (matchR!7052 (regOne!30246 r!7292) (_1!35369 (get!20890 lt!2153322))))))

(declare-fun b!5253933 () Bool)

(assert (=> b!5253933 (= e!3268570 (not (isDefined!11681 lt!2153322)))))

(declare-fun b!5253934 () Bool)

(declare-fun res!2229682 () Bool)

(assert (=> b!5253934 (=> (not res!2229682) (not e!3268568))))

(assert (=> b!5253934 (= res!2229682 (matchR!7052 (regTwo!30246 r!7292) (_2!35369 (get!20890 lt!2153322))))))

(declare-fun b!5253935 () Bool)

(assert (=> b!5253935 (= e!3268571 None!14977)))

(declare-fun b!5253936 () Bool)

(declare-fun lt!2153321 () Unit!152950)

(declare-fun lt!2153320 () Unit!152950)

(assert (=> b!5253936 (= lt!2153321 lt!2153320)))

(assert (=> b!5253936 (= (++!13251 (++!13251 Nil!60778 (Cons!60778 (h!67226 s!2326) Nil!60778)) (t!374085 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1666 (List!60902 C!30004 List!60902 List!60902) Unit!152950)

(assert (=> b!5253936 (= lt!2153320 (lemmaMoveElementToOtherListKeepsConcatEq!1666 Nil!60778 (h!67226 s!2326) (t!374085 s!2326) s!2326))))

(assert (=> b!5253936 (= e!3268571 (findConcatSeparation!1392 (regOne!30246 r!7292) (regTwo!30246 r!7292) (++!13251 Nil!60778 (Cons!60778 (h!67226 s!2326) Nil!60778)) (t!374085 s!2326) s!2326))))

(assert (= (and d!1691819 res!2229680) b!5253928))

(assert (= (and d!1691819 c!909022) b!5253930))

(assert (= (and d!1691819 (not c!909022)) b!5253929))

(assert (= (and b!5253929 c!909021) b!5253935))

(assert (= (and b!5253929 (not c!909021)) b!5253936))

(assert (= (and d!1691819 res!2229681) b!5253932))

(assert (= (and b!5253932 res!2229683) b!5253934))

(assert (= (and b!5253934 res!2229682) b!5253931))

(assert (= (and d!1691819 (not res!2229684)) b!5253933))

(declare-fun m!6296914 () Bool)

(assert (=> b!5253933 m!6296914))

(declare-fun m!6296916 () Bool)

(assert (=> b!5253934 m!6296916))

(declare-fun m!6296918 () Bool)

(assert (=> b!5253934 m!6296918))

(declare-fun m!6296920 () Bool)

(assert (=> b!5253928 m!6296920))

(assert (=> d!1691819 m!6296914))

(declare-fun m!6296922 () Bool)

(assert (=> d!1691819 m!6296922))

(declare-fun m!6296924 () Bool)

(assert (=> d!1691819 m!6296924))

(assert (=> b!5253931 m!6296916))

(declare-fun m!6296926 () Bool)

(assert (=> b!5253931 m!6296926))

(assert (=> b!5253932 m!6296916))

(declare-fun m!6296928 () Bool)

(assert (=> b!5253932 m!6296928))

(declare-fun m!6296930 () Bool)

(assert (=> b!5253936 m!6296930))

(assert (=> b!5253936 m!6296930))

(declare-fun m!6296932 () Bool)

(assert (=> b!5253936 m!6296932))

(declare-fun m!6296934 () Bool)

(assert (=> b!5253936 m!6296934))

(assert (=> b!5253936 m!6296930))

(declare-fun m!6296936 () Bool)

(assert (=> b!5253936 m!6296936))

(assert (=> b!5253000 d!1691819))

(declare-fun d!1691843 () Bool)

(declare-fun choose!39157 (Int) Bool)

(assert (=> d!1691843 (= (Exists!2048 lambda!264611) (choose!39157 lambda!264611))))

(declare-fun bs!1218470 () Bool)

(assert (= bs!1218470 d!1691843))

(declare-fun m!6296938 () Bool)

(assert (=> bs!1218470 m!6296938))

(assert (=> b!5253000 d!1691843))

(declare-fun d!1691845 () Bool)

(assert (=> d!1691845 (= (Exists!2048 lambda!264610) (choose!39157 lambda!264610))))

(declare-fun bs!1218471 () Bool)

(assert (= bs!1218471 d!1691845))

(declare-fun m!6296940 () Bool)

(assert (=> bs!1218471 m!6296940))

(assert (=> b!5253000 d!1691845))

(declare-fun bs!1218490 () Bool)

(declare-fun d!1691847 () Bool)

(assert (= bs!1218490 (and d!1691847 b!5253787)))

(declare-fun lambda!264676 () Int)

(assert (=> bs!1218490 (not (= lambda!264676 lambda!264661))))

(declare-fun bs!1218491 () Bool)

(assert (= bs!1218491 (and d!1691847 b!5253630)))

(assert (=> bs!1218491 (not (= lambda!264676 lambda!264651))))

(declare-fun bs!1218492 () Bool)

(assert (= bs!1218492 (and d!1691847 b!5253203)))

(assert (=> bs!1218492 (not (= lambda!264676 lambda!264633))))

(declare-fun bs!1218493 () Bool)

(assert (= bs!1218493 (and d!1691847 b!5253834)))

(assert (=> bs!1218493 (not (= lambda!264676 lambda!264666))))

(declare-fun bs!1218494 () Bool)

(assert (= bs!1218494 (and d!1691847 b!5253327)))

(assert (=> bs!1218494 (not (= lambda!264676 lambda!264636))))

(declare-fun bs!1218495 () Bool)

(assert (= bs!1218495 (and d!1691847 b!5253629)))

(assert (=> bs!1218495 (not (= lambda!264676 lambda!264649))))

(declare-fun bs!1218496 () Bool)

(assert (= bs!1218496 (and d!1691847 b!5253000)))

(assert (=> bs!1218496 (not (= lambda!264676 lambda!264611))))

(declare-fun bs!1218497 () Bool)

(assert (= bs!1218497 (and d!1691847 b!5253833)))

(assert (=> bs!1218497 (not (= lambda!264676 lambda!264664))))

(declare-fun bs!1218498 () Bool)

(assert (= bs!1218498 (and d!1691847 b!5253786)))

(assert (=> bs!1218498 (not (= lambda!264676 lambda!264660))))

(declare-fun bs!1218499 () Bool)

(assert (= bs!1218499 (and d!1691847 b!5253326)))

(assert (=> bs!1218499 (not (= lambda!264676 lambda!264635))))

(assert (=> bs!1218496 (= lambda!264676 lambda!264610)))

(declare-fun bs!1218500 () Bool)

(assert (= bs!1218500 (and d!1691847 b!5253204)))

(assert (=> bs!1218500 (not (= lambda!264676 lambda!264634))))

(assert (=> d!1691847 true))

(assert (=> d!1691847 true))

(assert (=> d!1691847 true))

(assert (=> d!1691847 (= (isDefined!11681 (findConcatSeparation!1392 (regOne!30246 r!7292) (regTwo!30246 r!7292) Nil!60778 s!2326 s!2326)) (Exists!2048 lambda!264676))))

(declare-fun lt!2153328 () Unit!152950)

(declare-fun choose!39158 (Regex!14867 Regex!14867 List!60902) Unit!152950)

(assert (=> d!1691847 (= lt!2153328 (choose!39158 (regOne!30246 r!7292) (regTwo!30246 r!7292) s!2326))))

(assert (=> d!1691847 (validRegex!6603 (regOne!30246 r!7292))))

(assert (=> d!1691847 (= (lemmaFindConcatSeparationEquivalentToExists!1156 (regOne!30246 r!7292) (regTwo!30246 r!7292) s!2326) lt!2153328)))

(declare-fun bs!1218501 () Bool)

(assert (= bs!1218501 d!1691847))

(declare-fun m!6296966 () Bool)

(assert (=> bs!1218501 m!6296966))

(assert (=> bs!1218501 m!6296018))

(assert (=> bs!1218501 m!6296020))

(assert (=> bs!1218501 m!6296018))

(declare-fun m!6296968 () Bool)

(assert (=> bs!1218501 m!6296968))

(assert (=> bs!1218501 m!6296924))

(assert (=> b!5253000 d!1691847))

(declare-fun bs!1218502 () Bool)

(declare-fun d!1691853 () Bool)

(assert (= bs!1218502 (and d!1691853 b!5253787)))

(declare-fun lambda!264681 () Int)

(assert (=> bs!1218502 (not (= lambda!264681 lambda!264661))))

(declare-fun bs!1218503 () Bool)

(assert (= bs!1218503 (and d!1691853 b!5253630)))

(assert (=> bs!1218503 (not (= lambda!264681 lambda!264651))))

(declare-fun bs!1218504 () Bool)

(assert (= bs!1218504 (and d!1691853 b!5253203)))

(assert (=> bs!1218504 (not (= lambda!264681 lambda!264633))))

(declare-fun bs!1218505 () Bool)

(assert (= bs!1218505 (and d!1691853 b!5253834)))

(assert (=> bs!1218505 (not (= lambda!264681 lambda!264666))))

(declare-fun bs!1218506 () Bool)

(assert (= bs!1218506 (and d!1691853 b!5253327)))

(assert (=> bs!1218506 (not (= lambda!264681 lambda!264636))))

(declare-fun bs!1218507 () Bool)

(assert (= bs!1218507 (and d!1691853 b!5253629)))

(assert (=> bs!1218507 (not (= lambda!264681 lambda!264649))))

(declare-fun bs!1218508 () Bool)

(assert (= bs!1218508 (and d!1691853 d!1691847)))

(assert (=> bs!1218508 (= lambda!264681 lambda!264676)))

(declare-fun bs!1218509 () Bool)

(assert (= bs!1218509 (and d!1691853 b!5253000)))

(assert (=> bs!1218509 (not (= lambda!264681 lambda!264611))))

(declare-fun bs!1218510 () Bool)

(assert (= bs!1218510 (and d!1691853 b!5253833)))

(assert (=> bs!1218510 (not (= lambda!264681 lambda!264664))))

(declare-fun bs!1218511 () Bool)

(assert (= bs!1218511 (and d!1691853 b!5253786)))

(assert (=> bs!1218511 (not (= lambda!264681 lambda!264660))))

(declare-fun bs!1218513 () Bool)

(assert (= bs!1218513 (and d!1691853 b!5253326)))

(assert (=> bs!1218513 (not (= lambda!264681 lambda!264635))))

(assert (=> bs!1218509 (= lambda!264681 lambda!264610)))

(declare-fun bs!1218515 () Bool)

(assert (= bs!1218515 (and d!1691853 b!5253204)))

(assert (=> bs!1218515 (not (= lambda!264681 lambda!264634))))

(assert (=> d!1691853 true))

(assert (=> d!1691853 true))

(assert (=> d!1691853 true))

(declare-fun lambda!264682 () Int)

(assert (=> bs!1218502 (= (and (= (regOne!30246 r!7292) (regOne!30246 lt!2153199)) (= (regTwo!30246 r!7292) (regTwo!30246 lt!2153199))) (= lambda!264682 lambda!264661))))

(assert (=> bs!1218503 (= lambda!264682 lambda!264651)))

(assert (=> bs!1218504 (not (= lambda!264682 lambda!264633))))

(assert (=> bs!1218505 (= (and (= (regOne!30246 r!7292) (regOne!30246 lt!2153172)) (= (regTwo!30246 r!7292) (regTwo!30246 lt!2153172))) (= lambda!264682 lambda!264666))))

(assert (=> bs!1218506 (= (and (= (regOne!30246 r!7292) (regOne!30246 lt!2153181)) (= (regTwo!30246 r!7292) (regTwo!30246 lt!2153181))) (= lambda!264682 lambda!264636))))

(assert (=> bs!1218507 (not (= lambda!264682 lambda!264649))))

(assert (=> bs!1218508 (not (= lambda!264682 lambda!264676))))

(declare-fun bs!1218516 () Bool)

(assert (= bs!1218516 d!1691853))

(assert (=> bs!1218516 (not (= lambda!264682 lambda!264681))))

(assert (=> bs!1218509 (= lambda!264682 lambda!264611)))

(assert (=> bs!1218510 (not (= lambda!264682 lambda!264664))))

(assert (=> bs!1218511 (not (= lambda!264682 lambda!264660))))

(assert (=> bs!1218513 (not (= lambda!264682 lambda!264635))))

(assert (=> bs!1218509 (not (= lambda!264682 lambda!264610))))

(assert (=> bs!1218515 (= (and (= (regOne!30246 r!7292) (regOne!30246 lt!2153182)) (= (regTwo!30246 r!7292) (regTwo!30246 lt!2153182))) (= lambda!264682 lambda!264634))))

(assert (=> d!1691853 true))

(assert (=> d!1691853 true))

(assert (=> d!1691853 true))

(assert (=> d!1691853 (= (Exists!2048 lambda!264681) (Exists!2048 lambda!264682))))

(declare-fun lt!2153340 () Unit!152950)

(declare-fun choose!39159 (Regex!14867 Regex!14867 List!60902) Unit!152950)

(assert (=> d!1691853 (= lt!2153340 (choose!39159 (regOne!30246 r!7292) (regTwo!30246 r!7292) s!2326))))

(assert (=> d!1691853 (validRegex!6603 (regOne!30246 r!7292))))

(assert (=> d!1691853 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!702 (regOne!30246 r!7292) (regTwo!30246 r!7292) s!2326) lt!2153340)))

(declare-fun m!6296998 () Bool)

(assert (=> bs!1218516 m!6296998))

(declare-fun m!6297000 () Bool)

(assert (=> bs!1218516 m!6297000))

(declare-fun m!6297002 () Bool)

(assert (=> bs!1218516 m!6297002))

(assert (=> bs!1218516 m!6296924))

(assert (=> b!5253000 d!1691853))

(declare-fun d!1691861 () Bool)

(declare-fun isEmpty!32715 (Option!14978) Bool)

(assert (=> d!1691861 (= (isDefined!11681 (findConcatSeparation!1392 (regOne!30246 r!7292) (regTwo!30246 r!7292) Nil!60778 s!2326 s!2326)) (not (isEmpty!32715 (findConcatSeparation!1392 (regOne!30246 r!7292) (regTwo!30246 r!7292) Nil!60778 s!2326 s!2326))))))

(declare-fun bs!1218517 () Bool)

(assert (= bs!1218517 d!1691861))

(assert (=> bs!1218517 m!6296018))

(declare-fun m!6297004 () Bool)

(assert (=> bs!1218517 m!6297004))

(assert (=> b!5253000 d!1691861))

(assert (=> b!5252998 d!1691807))

(declare-fun b!5254001 () Bool)

(declare-fun e!3268609 () Bool)

(declare-fun tp!1469472 () Bool)

(assert (=> b!5254001 (= e!3268609 (and tp_is_empty!38987 tp!1469472))))

(assert (=> b!5253019 (= tp!1469464 e!3268609)))

(assert (= (and b!5253019 ((_ is Cons!60778) (t!374085 s!2326))) b!5254001))

(declare-fun b!5254006 () Bool)

(declare-fun e!3268612 () Bool)

(declare-fun tp!1469477 () Bool)

(declare-fun tp!1469478 () Bool)

(assert (=> b!5254006 (= e!3268612 (and tp!1469477 tp!1469478))))

(assert (=> b!5253003 (= tp!1469460 e!3268612)))

(assert (= (and b!5253003 ((_ is Cons!60776) (exprs!4751 (h!67225 zl!343)))) b!5254006))

(declare-fun b!5254014 () Bool)

(declare-fun e!3268618 () Bool)

(declare-fun tp!1469483 () Bool)

(assert (=> b!5254014 (= e!3268618 tp!1469483)))

(declare-fun b!5254013 () Bool)

(declare-fun tp!1469484 () Bool)

(declare-fun e!3268617 () Bool)

(assert (=> b!5254013 (= e!3268617 (and (inv!80414 (h!67225 (t!374084 zl!343))) e!3268618 tp!1469484))))

(assert (=> b!5252997 (= tp!1469466 e!3268617)))

(assert (= b!5254013 b!5254014))

(assert (= (and b!5252997 ((_ is Cons!60777) (t!374084 zl!343))) b!5254013))

(declare-fun m!6297006 () Bool)

(assert (=> b!5254013 m!6297006))

(declare-fun b!5254031 () Bool)

(declare-fun e!3268623 () Bool)

(declare-fun tp!1469498 () Bool)

(assert (=> b!5254031 (= e!3268623 tp!1469498)))

(declare-fun b!5254032 () Bool)

(declare-fun tp!1469499 () Bool)

(declare-fun tp!1469495 () Bool)

(assert (=> b!5254032 (= e!3268623 (and tp!1469499 tp!1469495))))

(declare-fun b!5254030 () Bool)

(declare-fun tp!1469497 () Bool)

(declare-fun tp!1469496 () Bool)

(assert (=> b!5254030 (= e!3268623 (and tp!1469497 tp!1469496))))

(assert (=> b!5253017 (= tp!1469463 e!3268623)))

(declare-fun b!5254029 () Bool)

(assert (=> b!5254029 (= e!3268623 tp_is_empty!38987)))

(assert (= (and b!5253017 ((_ is ElementMatch!14867) (regOne!30247 r!7292))) b!5254029))

(assert (= (and b!5253017 ((_ is Concat!23712) (regOne!30247 r!7292))) b!5254030))

(assert (= (and b!5253017 ((_ is Star!14867) (regOne!30247 r!7292))) b!5254031))

(assert (= (and b!5253017 ((_ is Union!14867) (regOne!30247 r!7292))) b!5254032))

(declare-fun b!5254035 () Bool)

(declare-fun e!3268624 () Bool)

(declare-fun tp!1469503 () Bool)

(assert (=> b!5254035 (= e!3268624 tp!1469503)))

(declare-fun b!5254036 () Bool)

(declare-fun tp!1469504 () Bool)

(declare-fun tp!1469500 () Bool)

(assert (=> b!5254036 (= e!3268624 (and tp!1469504 tp!1469500))))

(declare-fun b!5254034 () Bool)

(declare-fun tp!1469502 () Bool)

(declare-fun tp!1469501 () Bool)

(assert (=> b!5254034 (= e!3268624 (and tp!1469502 tp!1469501))))

(assert (=> b!5253017 (= tp!1469468 e!3268624)))

(declare-fun b!5254033 () Bool)

(assert (=> b!5254033 (= e!3268624 tp_is_empty!38987)))

(assert (= (and b!5253017 ((_ is ElementMatch!14867) (regTwo!30247 r!7292))) b!5254033))

(assert (= (and b!5253017 ((_ is Concat!23712) (regTwo!30247 r!7292))) b!5254034))

(assert (= (and b!5253017 ((_ is Star!14867) (regTwo!30247 r!7292))) b!5254035))

(assert (= (and b!5253017 ((_ is Union!14867) (regTwo!30247 r!7292))) b!5254036))

(declare-fun condSetEmpty!33560 () Bool)

(assert (=> setNonEmpty!33557 (= condSetEmpty!33560 (= setRest!33557 ((as const (Array Context!8502 Bool)) false)))))

(declare-fun setRes!33560 () Bool)

(assert (=> setNonEmpty!33557 (= tp!1469461 setRes!33560)))

(declare-fun setIsEmpty!33560 () Bool)

(assert (=> setIsEmpty!33560 setRes!33560))

(declare-fun e!3268627 () Bool)

(declare-fun tp!1469509 () Bool)

(declare-fun setNonEmpty!33560 () Bool)

(declare-fun setElem!33560 () Context!8502)

(assert (=> setNonEmpty!33560 (= setRes!33560 (and tp!1469509 (inv!80414 setElem!33560) e!3268627))))

(declare-fun setRest!33560 () (InoxSet Context!8502))

(assert (=> setNonEmpty!33560 (= setRest!33557 ((_ map or) (store ((as const (Array Context!8502 Bool)) false) setElem!33560 true) setRest!33560))))

(declare-fun b!5254041 () Bool)

(declare-fun tp!1469510 () Bool)

(assert (=> b!5254041 (= e!3268627 tp!1469510)))

(assert (= (and setNonEmpty!33557 condSetEmpty!33560) setIsEmpty!33560))

(assert (= (and setNonEmpty!33557 (not condSetEmpty!33560)) setNonEmpty!33560))

(assert (= setNonEmpty!33560 b!5254041))

(declare-fun m!6297008 () Bool)

(assert (=> setNonEmpty!33560 m!6297008))

(declare-fun b!5254044 () Bool)

(declare-fun e!3268628 () Bool)

(declare-fun tp!1469514 () Bool)

(assert (=> b!5254044 (= e!3268628 tp!1469514)))

(declare-fun b!5254045 () Bool)

(declare-fun tp!1469515 () Bool)

(declare-fun tp!1469511 () Bool)

(assert (=> b!5254045 (= e!3268628 (and tp!1469515 tp!1469511))))

(declare-fun b!5254043 () Bool)

(declare-fun tp!1469513 () Bool)

(declare-fun tp!1469512 () Bool)

(assert (=> b!5254043 (= e!3268628 (and tp!1469513 tp!1469512))))

(assert (=> b!5253010 (= tp!1469462 e!3268628)))

(declare-fun b!5254042 () Bool)

(assert (=> b!5254042 (= e!3268628 tp_is_empty!38987)))

(assert (= (and b!5253010 ((_ is ElementMatch!14867) (reg!15196 r!7292))) b!5254042))

(assert (= (and b!5253010 ((_ is Concat!23712) (reg!15196 r!7292))) b!5254043))

(assert (= (and b!5253010 ((_ is Star!14867) (reg!15196 r!7292))) b!5254044))

(assert (= (and b!5253010 ((_ is Union!14867) (reg!15196 r!7292))) b!5254045))

(declare-fun b!5254046 () Bool)

(declare-fun e!3268629 () Bool)

(declare-fun tp!1469516 () Bool)

(declare-fun tp!1469517 () Bool)

(assert (=> b!5254046 (= e!3268629 (and tp!1469516 tp!1469517))))

(assert (=> b!5253004 (= tp!1469465 e!3268629)))

(assert (= (and b!5253004 ((_ is Cons!60776) (exprs!4751 setElem!33557))) b!5254046))

(declare-fun b!5254049 () Bool)

(declare-fun e!3268630 () Bool)

(declare-fun tp!1469521 () Bool)

(assert (=> b!5254049 (= e!3268630 tp!1469521)))

(declare-fun b!5254050 () Bool)

(declare-fun tp!1469522 () Bool)

(declare-fun tp!1469518 () Bool)

(assert (=> b!5254050 (= e!3268630 (and tp!1469522 tp!1469518))))

(declare-fun b!5254048 () Bool)

(declare-fun tp!1469520 () Bool)

(declare-fun tp!1469519 () Bool)

(assert (=> b!5254048 (= e!3268630 (and tp!1469520 tp!1469519))))

(assert (=> b!5252999 (= tp!1469469 e!3268630)))

(declare-fun b!5254047 () Bool)

(assert (=> b!5254047 (= e!3268630 tp_is_empty!38987)))

(assert (= (and b!5252999 ((_ is ElementMatch!14867) (regOne!30246 r!7292))) b!5254047))

(assert (= (and b!5252999 ((_ is Concat!23712) (regOne!30246 r!7292))) b!5254048))

(assert (= (and b!5252999 ((_ is Star!14867) (regOne!30246 r!7292))) b!5254049))

(assert (= (and b!5252999 ((_ is Union!14867) (regOne!30246 r!7292))) b!5254050))

(declare-fun b!5254053 () Bool)

(declare-fun e!3268631 () Bool)

(declare-fun tp!1469526 () Bool)

(assert (=> b!5254053 (= e!3268631 tp!1469526)))

(declare-fun b!5254054 () Bool)

(declare-fun tp!1469527 () Bool)

(declare-fun tp!1469523 () Bool)

(assert (=> b!5254054 (= e!3268631 (and tp!1469527 tp!1469523))))

(declare-fun b!5254052 () Bool)

(declare-fun tp!1469525 () Bool)

(declare-fun tp!1469524 () Bool)

(assert (=> b!5254052 (= e!3268631 (and tp!1469525 tp!1469524))))

(assert (=> b!5252999 (= tp!1469467 e!3268631)))

(declare-fun b!5254051 () Bool)

(assert (=> b!5254051 (= e!3268631 tp_is_empty!38987)))

(assert (= (and b!5252999 ((_ is ElementMatch!14867) (regTwo!30246 r!7292))) b!5254051))

(assert (= (and b!5252999 ((_ is Concat!23712) (regTwo!30246 r!7292))) b!5254052))

(assert (= (and b!5252999 ((_ is Star!14867) (regTwo!30246 r!7292))) b!5254053))

(assert (= (and b!5252999 ((_ is Union!14867) (regTwo!30246 r!7292))) b!5254054))

(declare-fun b_lambda!202853 () Bool)

(assert (= b_lambda!202845 (or b!5252993 b_lambda!202853)))

(declare-fun bs!1218528 () Bool)

(declare-fun d!1691863 () Bool)

(assert (= bs!1218528 (and d!1691863 b!5252993)))

(assert (=> bs!1218528 (= (dynLambda!24013 lambda!264612 lt!2153165) (derivationStepZipperUp!239 lt!2153165 (h!67226 s!2326)))))

(assert (=> bs!1218528 m!6296070))

(assert (=> d!1691721 d!1691863))

(declare-fun b_lambda!202855 () Bool)

(assert (= b_lambda!202837 (or b!5252994 b_lambda!202855)))

(declare-fun bs!1218530 () Bool)

(declare-fun d!1691865 () Bool)

(assert (= bs!1218530 (and d!1691865 b!5252994)))

(assert (=> bs!1218530 (= (dynLambda!24010 lambda!264613 (h!67224 lt!2153167)) (validRegex!6603 (h!67224 lt!2153167)))))

(declare-fun m!6297010 () Bool)

(assert (=> bs!1218530 m!6297010))

(assert (=> b!5253117 d!1691865))

(declare-fun b_lambda!202857 () Bool)

(assert (= b_lambda!202847 (or b!5252993 b_lambda!202857)))

(declare-fun bs!1218531 () Bool)

(declare-fun d!1691867 () Bool)

(assert (= bs!1218531 (and d!1691867 b!5252993)))

(assert (=> bs!1218531 (= (dynLambda!24013 lambda!264612 lt!2153176) (derivationStepZipperUp!239 lt!2153176 (h!67226 s!2326)))))

(assert (=> bs!1218531 m!6296082))

(assert (=> d!1691725 d!1691867))

(declare-fun b_lambda!202859 () Bool)

(assert (= b_lambda!202843 (or b!5252993 b_lambda!202859)))

(declare-fun bs!1218532 () Bool)

(declare-fun d!1691869 () Bool)

(assert (= bs!1218532 (and d!1691869 b!5252993)))

(assert (=> bs!1218532 (= (dynLambda!24013 lambda!264612 (h!67225 zl!343)) (derivationStepZipperUp!239 (h!67225 zl!343) (h!67226 s!2326)))))

(assert (=> bs!1218532 m!6296116))

(assert (=> d!1691667 d!1691869))

(check-sat (not bm!372274) (not d!1691581) (not d!1691593) (not d!1691803) (not d!1691729) (not b!5254053) (not b!5253619) (not b!5254050) (not b!5253679) (not b!5253792) (not b!5253347) (not b!5253651) (not b!5253928) (not d!1691745) (not b!5253644) (not d!1691747) (not b!5253571) (not bm!372251) (not b!5253592) (not b!5253607) (not b!5253312) (not d!1691583) (not b!5253762) (not d!1691715) (not d!1691861) (not d!1691663) (not d!1691689) (not bm!372254) (not b!5253298) (not b!5254001) (not b!5254041) (not b!5253579) (not b!5253486) (not bm!372262) (not b!5254043) (not b_lambda!202859) (not b!5253477) (not b!5253586) (not b!5253293) (not bm!372226) (not b!5253059) (not d!1691815) (not b!5253528) (not bm!372297) (not d!1691787) (not d!1691605) (not d!1691847) (not bm!372264) (not d!1691795) (not b!5253936) (not d!1691819) (not b!5253738) (not b!5253196) (not b!5253531) (not b!5253530) (not d!1691631) (not b!5253063) (not b!5253932) (not b!5253622) (not d!1691843) (not b!5253199) (not d!1691709) (not b!5253736) (not bm!372203) (not b!5253096) (not b!5253594) (not d!1691731) (not b!5253313) (not b!5253643) (not b!5254044) (not b!5253476) (not d!1691713) (not d!1691609) (not b!5253660) (not b!5254031) (not bs!1218532) (not d!1691767) (not bs!1218528) (not b!5253737) (not b!5253474) (not bm!372181) (not b!5253790) (not d!1691743) (not b!5253526) (not d!1691677) (not b!5253302) (not b!5253761) (not b!5253696) (not b!5253801) (not bm!372299) (not b!5253349) (not b!5254032) (not bm!372275) (not bm!372204) (not b!5254052) (not b!5253791) (not b!5253645) (not b!5253797) (not d!1691685) (not d!1691845) (not b!5253668) (not d!1691691) (not d!1691675) (not b!5253650) (not b!5253070) (not bm!372300) (not b!5253730) (not b!5253532) (not b!5253292) (not b!5254034) (not b!5253305) (not bs!1218531) (not b!5253118) (not bm!372256) (not b_lambda!202857) (not b!5253765) (not b!5253319) (not bm!372252) (not b!5253061) (not b!5253585) (not b!5253525) (not b!5253583) (not d!1691725) (not d!1691623) (not bm!372194) (not d!1691693) (not b!5253666) (not b!5253694) (not b!5253060) (not d!1691805) (not d!1691587) (not b!5253478) (not b!5253401) (not b!5253463) (not b!5254014) (not bm!372202) (not bm!372301) (not b!5253105) (not b!5253587) (not b!5253779) (not bm!372258) (not b!5253729) (not b!5254036) (not bm!372250) (not b!5253576) (not b!5254045) (not b!5253316) (not b!5253664) (not d!1691741) (not b!5253933) (not b!5253608) (not bm!372224) (not bs!1218530) (not b!5253306) (not b!5253322) (not bm!372201) (not b!5253756) (not b!5253590) (not b!5253822) (not b!5253497) (not b!5253654) (not d!1691595) (not b!5253058) (not b!5253732) (not b!5253680) (not b!5253062) (not bm!372182) (not b!5253755) (not b!5254006) (not d!1691651) (not d!1691687) (not bm!372193) (not d!1691779) (not b!5253782) (not d!1691735) (not b!5253823) (not b!5253798) (not b!5253348) (not d!1691719) (not b!5253692) (not b!5253602) (not d!1691727) (not b!5253461) (not b!5253659) (not b!5254049) (not d!1691765) (not b!5253625) (not bm!372278) (not b!5254054) (not b!5253687) (not b!5253299) (not bm!372260) (not d!1691721) (not b!5253662) (not d!1691711) (not b!5253690) (not b!5253468) (not b!5253466) (not b!5254035) (not bm!372228) (not b!5253527) (not b_lambda!202853) (not b!5254046) (not b!5254048) (not bm!372298) tp_is_empty!38987 (not b!5253601) (not b!5254030) (not b!5253734) (not b!5253574) (not b!5253112) (not b!5253826) (not b!5253064) (not setNonEmpty!33560) (not b!5253667) (not d!1691667) (not d!1691617) (not b!5253695) (not b!5253103) (not bm!372290) (not b!5253578) (not b!5253829) (not b!5253934) (not b!5253529) (not b!5253111) (not b!5253291) (not d!1691723) (not bm!372276) (not b!5253593) (not d!1691853) (not bm!372277) (not d!1691807) (not b!5254013) (not b!5253307) (not b!5253580) (not b!5253931) (not d!1691695) (not b!5253754) (not d!1691615) (not b!5253688) (not b_lambda!202855) (not b!5253572))
(check-sat)
