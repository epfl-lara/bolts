; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!555168 () Bool)

(assert start!555168)

(declare-fun b!5255588 () Bool)

(assert (=> b!5255588 true))

(assert (=> b!5255588 true))

(declare-fun lambda!264815 () Int)

(declare-fun lambda!264814 () Int)

(assert (=> b!5255588 (not (= lambda!264815 lambda!264814))))

(assert (=> b!5255588 true))

(assert (=> b!5255588 true))

(declare-fun b!5255604 () Bool)

(assert (=> b!5255604 true))

(declare-fun e!3269525 () Bool)

(declare-fun e!3269542 () Bool)

(assert (=> b!5255588 (= e!3269525 e!3269542)))

(declare-fun res!2230340 () Bool)

(assert (=> b!5255588 (=> res!2230340 e!3269542)))

(declare-datatypes ((C!30010 0))(
  ( (C!30011 (val!24707 Int)) )
))
(declare-datatypes ((List!60909 0))(
  ( (Nil!60785) (Cons!60785 (h!67233 C!30010) (t!374092 List!60909)) )
))
(declare-fun s!2326 () List!60909)

(declare-fun lt!2153931 () Bool)

(declare-fun lt!2153962 () Bool)

(assert (=> b!5255588 (= res!2230340 (or (not (= lt!2153962 lt!2153931)) (is-Nil!60785 s!2326)))))

(declare-fun Exists!2051 (Int) Bool)

(assert (=> b!5255588 (= (Exists!2051 lambda!264814) (Exists!2051 lambda!264815))))

(declare-datatypes ((Unit!152974 0))(
  ( (Unit!152975) )
))
(declare-fun lt!2153969 () Unit!152974)

(declare-datatypes ((Regex!14870 0))(
  ( (ElementMatch!14870 (c!909406 C!30010)) (Concat!23715 (regOne!30252 Regex!14870) (regTwo!30252 Regex!14870)) (EmptyExpr!14870) (Star!14870 (reg!15199 Regex!14870)) (EmptyLang!14870) (Union!14870 (regOne!30253 Regex!14870) (regTwo!30253 Regex!14870)) )
))
(declare-fun r!7292 () Regex!14870)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!705 (Regex!14870 Regex!14870 List!60909) Unit!152974)

(assert (=> b!5255588 (= lt!2153969 (lemmaExistCutMatchRandMatchRSpecEquivalent!705 (regOne!30252 r!7292) (regTwo!30252 r!7292) s!2326))))

(assert (=> b!5255588 (= lt!2153931 (Exists!2051 lambda!264814))))

(declare-datatypes ((tuple2!64138 0))(
  ( (tuple2!64139 (_1!35372 List!60909) (_2!35372 List!60909)) )
))
(declare-datatypes ((Option!14981 0))(
  ( (None!14980) (Some!14980 (v!51009 tuple2!64138)) )
))
(declare-fun isDefined!11684 (Option!14981) Bool)

(declare-fun findConcatSeparation!1395 (Regex!14870 Regex!14870 List!60909 List!60909 List!60909) Option!14981)

(assert (=> b!5255588 (= lt!2153931 (isDefined!11684 (findConcatSeparation!1395 (regOne!30252 r!7292) (regTwo!30252 r!7292) Nil!60785 s!2326 s!2326)))))

(declare-fun lt!2153935 () Unit!152974)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1159 (Regex!14870 Regex!14870 List!60909) Unit!152974)

(assert (=> b!5255588 (= lt!2153935 (lemmaFindConcatSeparationEquivalentToExists!1159 (regOne!30252 r!7292) (regTwo!30252 r!7292) s!2326))))

(declare-fun b!5255589 () Bool)

(declare-fun e!3269515 () Bool)

(declare-fun tp!1469783 () Bool)

(assert (=> b!5255589 (= e!3269515 tp!1469783)))

(declare-fun b!5255590 () Bool)

(declare-fun e!3269539 () Bool)

(declare-fun tp!1469790 () Bool)

(assert (=> b!5255590 (= e!3269539 tp!1469790)))

(declare-fun b!5255591 () Bool)

(declare-fun e!3269522 () Bool)

(declare-fun tp!1469788 () Bool)

(assert (=> b!5255591 (= e!3269522 tp!1469788)))

(declare-fun setRes!33578 () Bool)

(declare-fun setNonEmpty!33578 () Bool)

(declare-fun tp!1469791 () Bool)

(declare-datatypes ((List!60910 0))(
  ( (Nil!60786) (Cons!60786 (h!67234 Regex!14870) (t!374093 List!60910)) )
))
(declare-datatypes ((Context!8508 0))(
  ( (Context!8509 (exprs!4754 List!60910)) )
))
(declare-fun setElem!33578 () Context!8508)

(declare-fun inv!80423 (Context!8508) Bool)

(assert (=> setNonEmpty!33578 (= setRes!33578 (and tp!1469791 (inv!80423 setElem!33578) e!3269515))))

(declare-fun z!1189 () (Set Context!8508))

(declare-fun setRest!33578 () (Set Context!8508))

(assert (=> setNonEmpty!33578 (= z!1189 (set.union (set.insert setElem!33578 (as set.empty (Set Context!8508))) setRest!33578))))

(declare-fun b!5255592 () Bool)

(declare-fun res!2230347 () Bool)

(assert (=> b!5255592 (=> res!2230347 e!3269525)))

(declare-datatypes ((List!60911 0))(
  ( (Nil!60787) (Cons!60787 (h!67235 Context!8508) (t!374094 List!60911)) )
))
(declare-fun zl!343 () List!60911)

(declare-fun generalisedConcat!539 (List!60910) Regex!14870)

(assert (=> b!5255592 (= res!2230347 (not (= r!7292 (generalisedConcat!539 (exprs!4754 (h!67235 zl!343))))))))

(declare-fun b!5255593 () Bool)

(declare-fun e!3269540 () Bool)

(declare-fun lt!2153949 () (Set Context!8508))

(declare-fun matchZipper!1114 ((Set Context!8508) List!60909) Bool)

(assert (=> b!5255593 (= e!3269540 (not (matchZipper!1114 lt!2153949 (t!374092 s!2326))))))

(declare-fun b!5255594 () Bool)

(declare-fun e!3269520 () Bool)

(declare-fun e!3269528 () Bool)

(assert (=> b!5255594 (= e!3269520 e!3269528)))

(declare-fun res!2230339 () Bool)

(assert (=> b!5255594 (=> res!2230339 e!3269528)))

(declare-fun lt!2153937 () List!60911)

(declare-fun lt!2153966 () Int)

(declare-fun zipperDepthTotal!51 (List!60911) Int)

(assert (=> b!5255594 (= res!2230339 (>= (zipperDepthTotal!51 lt!2153937) lt!2153966))))

(declare-fun lt!2153961 () Context!8508)

(assert (=> b!5255594 (= lt!2153937 (Cons!60787 lt!2153961 Nil!60787))))

(declare-fun b!5255595 () Bool)

(declare-fun e!3269527 () Bool)

(declare-fun lt!2153923 () (Set Context!8508))

(assert (=> b!5255595 (= e!3269527 (matchZipper!1114 lt!2153923 s!2326))))

(declare-fun b!5255596 () Bool)

(declare-fun res!2230352 () Bool)

(assert (=> b!5255596 (=> res!2230352 e!3269525)))

(declare-fun isEmpty!32725 (List!60911) Bool)

(assert (=> b!5255596 (= res!2230352 (not (isEmpty!32725 (t!374094 zl!343))))))

(declare-fun b!5255597 () Bool)

(declare-fun e!3269519 () Unit!152974)

(declare-fun Unit!152976 () Unit!152974)

(assert (=> b!5255597 (= e!3269519 Unit!152976)))

(declare-fun b!5255598 () Bool)

(declare-fun e!3269537 () Bool)

(assert (=> b!5255598 (= e!3269537 (matchZipper!1114 lt!2153949 (t!374092 s!2326)))))

(declare-fun b!5255599 () Bool)

(declare-fun e!3269532 () Bool)

(declare-fun lt!2153942 () List!60910)

(declare-fun lambda!264817 () Int)

(declare-fun forall!14284 (List!60910 Int) Bool)

(assert (=> b!5255599 (= e!3269532 (forall!14284 lt!2153942 lambda!264817))))

(declare-fun b!5255600 () Bool)

(declare-fun e!3269526 () Bool)

(declare-fun lt!2153964 () (Set Context!8508))

(assert (=> b!5255600 (= e!3269526 (matchZipper!1114 lt!2153964 (t!374092 s!2326)))))

(declare-fun b!5255601 () Bool)

(declare-fun res!2230337 () Bool)

(assert (=> b!5255601 (=> res!2230337 e!3269542)))

(declare-fun isEmpty!32726 (List!60910) Bool)

(assert (=> b!5255601 (= res!2230337 (isEmpty!32726 (t!374093 (exprs!4754 (h!67235 zl!343)))))))

(declare-fun b!5255602 () Bool)

(declare-fun e!3269536 () Bool)

(assert (=> b!5255602 (= e!3269536 e!3269520)))

(declare-fun res!2230336 () Bool)

(assert (=> b!5255602 (=> res!2230336 e!3269520)))

(declare-fun lt!2153963 () Int)

(assert (=> b!5255602 (= res!2230336 (>= lt!2153963 lt!2153966))))

(assert (=> b!5255602 (= lt!2153966 (zipperDepthTotal!51 zl!343))))

(declare-fun lt!2153958 () List!60911)

(assert (=> b!5255602 (= lt!2153963 (zipperDepthTotal!51 lt!2153958))))

(declare-fun lt!2153954 () Context!8508)

(assert (=> b!5255602 (= lt!2153958 (Cons!60787 lt!2153954 Nil!60787))))

(declare-fun b!5255603 () Bool)

(declare-fun tp!1469787 () Bool)

(declare-fun e!3269529 () Bool)

(assert (=> b!5255603 (= e!3269529 (and (inv!80423 (h!67235 zl!343)) e!3269522 tp!1469787))))

(declare-fun e!3269516 () Bool)

(assert (=> b!5255604 (= e!3269542 e!3269516)))

(declare-fun res!2230356 () Bool)

(assert (=> b!5255604 (=> res!2230356 e!3269516)))

(assert (=> b!5255604 (= res!2230356 (or (and (is-ElementMatch!14870 (regOne!30252 r!7292)) (= (c!909406 (regOne!30252 r!7292)) (h!67233 s!2326))) (not (is-Union!14870 (regOne!30252 r!7292)))))))

(declare-fun lt!2153976 () Unit!152974)

(assert (=> b!5255604 (= lt!2153976 e!3269519)))

(declare-fun c!909403 () Bool)

(declare-fun nullable!5039 (Regex!14870) Bool)

(assert (=> b!5255604 (= c!909403 (nullable!5039 (h!67234 (exprs!4754 (h!67235 zl!343)))))))

(declare-fun lambda!264816 () Int)

(declare-fun flatMap!597 ((Set Context!8508) Int) (Set Context!8508))

(declare-fun derivationStepZipperUp!242 (Context!8508 C!30010) (Set Context!8508))

(assert (=> b!5255604 (= (flatMap!597 z!1189 lambda!264816) (derivationStepZipperUp!242 (h!67235 zl!343) (h!67233 s!2326)))))

(declare-fun lt!2153924 () Unit!152974)

(declare-fun lemmaFlatMapOnSingletonSet!129 ((Set Context!8508) Context!8508 Int) Unit!152974)

(assert (=> b!5255604 (= lt!2153924 (lemmaFlatMapOnSingletonSet!129 z!1189 (h!67235 zl!343) lambda!264816))))

(declare-fun lt!2153933 () Context!8508)

(assert (=> b!5255604 (= lt!2153964 (derivationStepZipperUp!242 lt!2153933 (h!67233 s!2326)))))

(declare-fun lt!2153944 () (Set Context!8508))

(declare-fun derivationStepZipperDown!318 (Regex!14870 Context!8508 C!30010) (Set Context!8508))

(assert (=> b!5255604 (= lt!2153944 (derivationStepZipperDown!318 (h!67234 (exprs!4754 (h!67235 zl!343))) lt!2153933 (h!67233 s!2326)))))

(assert (=> b!5255604 (= lt!2153933 (Context!8509 (t!374093 (exprs!4754 (h!67235 zl!343)))))))

(declare-fun lt!2153965 () (Set Context!8508))

(assert (=> b!5255604 (= lt!2153965 (derivationStepZipperUp!242 (Context!8509 (Cons!60786 (h!67234 (exprs!4754 (h!67235 zl!343))) (t!374093 (exprs!4754 (h!67235 zl!343))))) (h!67233 s!2326)))))

(declare-fun b!5255605 () Bool)

(declare-fun e!3269538 () Bool)

(assert (=> b!5255605 (= e!3269538 (not e!3269525))))

(declare-fun res!2230351 () Bool)

(assert (=> b!5255605 (=> res!2230351 e!3269525)))

(assert (=> b!5255605 (= res!2230351 (not (is-Cons!60787 zl!343)))))

(declare-fun matchRSpec!1973 (Regex!14870 List!60909) Bool)

(assert (=> b!5255605 (= lt!2153962 (matchRSpec!1973 r!7292 s!2326))))

(declare-fun matchR!7055 (Regex!14870 List!60909) Bool)

(assert (=> b!5255605 (= lt!2153962 (matchR!7055 r!7292 s!2326))))

(declare-fun lt!2153973 () Unit!152974)

(declare-fun mainMatchTheorem!1973 (Regex!14870 List!60909) Unit!152974)

(assert (=> b!5255605 (= lt!2153973 (mainMatchTheorem!1973 r!7292 s!2326))))

(declare-fun b!5255606 () Bool)

(declare-fun res!2230330 () Bool)

(assert (=> b!5255606 (=> res!2230330 e!3269525)))

(assert (=> b!5255606 (= res!2230330 (or (is-EmptyExpr!14870 r!7292) (is-EmptyLang!14870 r!7292) (is-ElementMatch!14870 r!7292) (is-Union!14870 r!7292) (not (is-Concat!23715 r!7292))))))

(declare-fun b!5255607 () Bool)

(declare-fun e!3269533 () Unit!152974)

(declare-fun Unit!152977 () Unit!152974)

(assert (=> b!5255607 (= e!3269533 Unit!152977)))

(declare-fun b!5255608 () Bool)

(declare-fun tp_is_empty!38993 () Bool)

(assert (=> b!5255608 (= e!3269539 tp_is_empty!38993)))

(declare-fun b!5255609 () Bool)

(declare-fun res!2230345 () Bool)

(declare-fun e!3269535 () Bool)

(assert (=> b!5255609 (=> (not res!2230345) (not e!3269535))))

(declare-fun toList!8654 ((Set Context!8508)) List!60911)

(assert (=> b!5255609 (= res!2230345 (= (toList!8654 z!1189) zl!343))))

(declare-fun b!5255610 () Bool)

(assert (=> b!5255610 (= e!3269535 e!3269538)))

(declare-fun res!2230335 () Bool)

(assert (=> b!5255610 (=> (not res!2230335) (not e!3269538))))

(declare-fun lt!2153926 () Regex!14870)

(assert (=> b!5255610 (= res!2230335 (= r!7292 lt!2153926))))

(declare-fun unfocusZipper!612 (List!60911) Regex!14870)

(assert (=> b!5255610 (= lt!2153926 (unfocusZipper!612 zl!343))))

(declare-fun b!5255611 () Bool)

(declare-fun res!2230342 () Bool)

(assert (=> b!5255611 (=> res!2230342 e!3269525)))

(assert (=> b!5255611 (= res!2230342 (not (is-Cons!60786 (exprs!4754 (h!67235 zl!343)))))))

(declare-fun b!5255612 () Bool)

(declare-fun e!3269518 () Bool)

(assert (=> b!5255612 (= e!3269518 e!3269536)))

(declare-fun res!2230357 () Bool)

(assert (=> b!5255612 (=> res!2230357 e!3269536)))

(declare-fun lt!2153960 () Bool)

(assert (=> b!5255612 (= res!2230357 (not (= lt!2153960 e!3269527)))))

(declare-fun res!2230346 () Bool)

(assert (=> b!5255612 (=> res!2230346 e!3269527)))

(declare-fun lt!2153930 () Bool)

(assert (=> b!5255612 (= res!2230346 lt!2153930)))

(assert (=> b!5255612 (= lt!2153960 (matchZipper!1114 z!1189 s!2326))))

(declare-fun lt!2153939 () (Set Context!8508))

(assert (=> b!5255612 (= lt!2153930 (matchZipper!1114 lt!2153939 s!2326))))

(declare-fun lt!2153970 () Unit!152974)

(assert (=> b!5255612 (= lt!2153970 e!3269533)))

(declare-fun c!909405 () Bool)

(assert (=> b!5255612 (= c!909405 (nullable!5039 (regTwo!30253 (regOne!30252 r!7292))))))

(assert (=> b!5255612 (= (flatMap!597 lt!2153923 lambda!264816) (derivationStepZipperUp!242 lt!2153961 (h!67233 s!2326)))))

(declare-fun lt!2153953 () Unit!152974)

(assert (=> b!5255612 (= lt!2153953 (lemmaFlatMapOnSingletonSet!129 lt!2153923 lt!2153961 lambda!264816))))

(declare-fun lt!2153946 () (Set Context!8508))

(assert (=> b!5255612 (= lt!2153946 (derivationStepZipperUp!242 lt!2153961 (h!67233 s!2326)))))

(declare-fun lt!2153927 () Unit!152974)

(declare-fun e!3269524 () Unit!152974)

(assert (=> b!5255612 (= lt!2153927 e!3269524)))

(declare-fun c!909404 () Bool)

(assert (=> b!5255612 (= c!909404 (nullable!5039 (regOne!30253 (regOne!30252 r!7292))))))

(assert (=> b!5255612 (= (flatMap!597 lt!2153939 lambda!264816) (derivationStepZipperUp!242 lt!2153954 (h!67233 s!2326)))))

(declare-fun lt!2153956 () Unit!152974)

(assert (=> b!5255612 (= lt!2153956 (lemmaFlatMapOnSingletonSet!129 lt!2153939 lt!2153954 lambda!264816))))

(declare-fun lt!2153959 () (Set Context!8508))

(assert (=> b!5255612 (= lt!2153959 (derivationStepZipperUp!242 lt!2153954 (h!67233 s!2326)))))

(assert (=> b!5255612 (= lt!2153923 (set.insert lt!2153961 (as set.empty (Set Context!8508))))))

(assert (=> b!5255612 (= lt!2153961 (Context!8509 lt!2153942))))

(assert (=> b!5255612 (= lt!2153942 (Cons!60786 (regTwo!30253 (regOne!30252 r!7292)) (t!374093 (exprs!4754 (h!67235 zl!343)))))))

(assert (=> b!5255612 (= lt!2153939 (set.insert lt!2153954 (as set.empty (Set Context!8508))))))

(declare-fun lt!2153948 () List!60910)

(assert (=> b!5255612 (= lt!2153954 (Context!8509 lt!2153948))))

(assert (=> b!5255612 (= lt!2153948 (Cons!60786 (regOne!30253 (regOne!30252 r!7292)) (t!374093 (exprs!4754 (h!67235 zl!343)))))))

(declare-fun res!2230341 () Bool)

(assert (=> start!555168 (=> (not res!2230341) (not e!3269535))))

(declare-fun validRegex!6606 (Regex!14870) Bool)

(assert (=> start!555168 (= res!2230341 (validRegex!6606 r!7292))))

(assert (=> start!555168 e!3269535))

(assert (=> start!555168 e!3269539))

(declare-fun condSetEmpty!33578 () Bool)

(assert (=> start!555168 (= condSetEmpty!33578 (= z!1189 (as set.empty (Set Context!8508))))))

(assert (=> start!555168 setRes!33578))

(assert (=> start!555168 e!3269529))

(declare-fun e!3269541 () Bool)

(assert (=> start!555168 e!3269541))

(declare-fun b!5255613 () Bool)

(declare-fun Unit!152978 () Unit!152974)

(assert (=> b!5255613 (= e!3269519 Unit!152978)))

(declare-fun lt!2153951 () Unit!152974)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!107 ((Set Context!8508) (Set Context!8508) List!60909) Unit!152974)

(assert (=> b!5255613 (= lt!2153951 (lemmaZipperConcatMatchesSameAsBothZippers!107 lt!2153944 lt!2153964 (t!374092 s!2326)))))

(declare-fun res!2230344 () Bool)

(assert (=> b!5255613 (= res!2230344 (matchZipper!1114 lt!2153944 (t!374092 s!2326)))))

(declare-fun e!3269521 () Bool)

(assert (=> b!5255613 (=> res!2230344 e!3269521)))

(assert (=> b!5255613 (= (matchZipper!1114 (set.union lt!2153944 lt!2153964) (t!374092 s!2326)) e!3269521)))

(declare-fun b!5255614 () Bool)

(declare-fun tp!1469785 () Bool)

(declare-fun tp!1469782 () Bool)

(assert (=> b!5255614 (= e!3269539 (and tp!1469785 tp!1469782))))

(declare-fun b!5255615 () Bool)

(declare-fun e!3269531 () Bool)

(assert (=> b!5255615 (= e!3269531 e!3269532)))

(declare-fun res!2230353 () Bool)

(assert (=> b!5255615 (=> res!2230353 e!3269532)))

(declare-fun lt!2153938 () Bool)

(declare-fun lt!2153971 () Bool)

(assert (=> b!5255615 (= res!2230353 (= lt!2153938 lt!2153971))))

(declare-fun lt!2153955 () Regex!14870)

(assert (=> b!5255615 (= lt!2153938 (matchRSpec!1973 lt!2153955 s!2326))))

(declare-fun lt!2153947 () Unit!152974)

(assert (=> b!5255615 (= lt!2153947 (mainMatchTheorem!1973 lt!2153955 s!2326))))

(declare-fun lt!2153957 () Bool)

(declare-fun lt!2153975 () Regex!14870)

(assert (=> b!5255615 (= lt!2153957 (matchRSpec!1973 lt!2153975 s!2326))))

(declare-fun lt!2153936 () Unit!152974)

(assert (=> b!5255615 (= lt!2153936 (mainMatchTheorem!1973 lt!2153975 s!2326))))

(assert (=> b!5255615 (= lt!2153938 lt!2153957)))

(assert (=> b!5255615 (= lt!2153957 (matchR!7055 lt!2153975 s!2326))))

(assert (=> b!5255615 (= lt!2153938 (matchR!7055 lt!2153955 s!2326))))

(assert (=> b!5255615 (= lt!2153975 (Union!14870 (Concat!23715 (regOne!30253 (regOne!30252 r!7292)) (regTwo!30252 r!7292)) (Concat!23715 (regTwo!30253 (regOne!30252 r!7292)) (regTwo!30252 r!7292))))))

(declare-fun lt!2153941 () Unit!152974)

(declare-fun lemmaConcatDistributesInUnion!15 (Regex!14870 Regex!14870 Regex!14870 List!60909) Unit!152974)

(assert (=> b!5255615 (= lt!2153941 (lemmaConcatDistributesInUnion!15 (regOne!30253 (regOne!30252 r!7292)) (regTwo!30253 (regOne!30252 r!7292)) (regTwo!30252 r!7292) s!2326))))

(declare-fun b!5255616 () Bool)

(declare-fun tp!1469789 () Bool)

(declare-fun tp!1469784 () Bool)

(assert (=> b!5255616 (= e!3269539 (and tp!1469789 tp!1469784))))

(declare-fun setIsEmpty!33578 () Bool)

(assert (=> setIsEmpty!33578 setRes!33578))

(declare-fun b!5255617 () Bool)

(declare-fun e!3269523 () Bool)

(assert (=> b!5255617 (= e!3269516 e!3269523)))

(declare-fun res!2230343 () Bool)

(assert (=> b!5255617 (=> res!2230343 e!3269523)))

(declare-fun lt!2153940 () (Set Context!8508))

(assert (=> b!5255617 (= res!2230343 (not (= lt!2153944 lt!2153940)))))

(declare-fun lt!2153934 () (Set Context!8508))

(assert (=> b!5255617 (= lt!2153940 (set.union lt!2153934 lt!2153949))))

(assert (=> b!5255617 (= lt!2153949 (derivationStepZipperDown!318 (regTwo!30253 (regOne!30252 r!7292)) lt!2153933 (h!67233 s!2326)))))

(assert (=> b!5255617 (= lt!2153934 (derivationStepZipperDown!318 (regOne!30253 (regOne!30252 r!7292)) lt!2153933 (h!67233 s!2326)))))

(declare-fun b!5255618 () Bool)

(declare-fun res!2230348 () Bool)

(assert (=> b!5255618 (=> res!2230348 e!3269525)))

(declare-fun generalisedUnion!799 (List!60910) Regex!14870)

(declare-fun unfocusZipperList!312 (List!60911) List!60910)

(assert (=> b!5255618 (= res!2230348 (not (= r!7292 (generalisedUnion!799 (unfocusZipperList!312 zl!343)))))))

(declare-fun b!5255619 () Bool)

(declare-fun res!2230355 () Bool)

(assert (=> b!5255619 (=> res!2230355 e!3269536)))

(assert (=> b!5255619 (= res!2230355 (or (not (= lt!2153926 r!7292)) (not (= (exprs!4754 (h!67235 zl!343)) (Cons!60786 (regOne!30252 r!7292) (t!374093 (exprs!4754 (h!67235 zl!343))))))))))

(declare-fun b!5255620 () Bool)

(declare-fun Unit!152979 () Unit!152974)

(assert (=> b!5255620 (= e!3269524 Unit!152979)))

(declare-fun lt!2153972 () Unit!152974)

(assert (=> b!5255620 (= lt!2153972 (lemmaZipperConcatMatchesSameAsBothZippers!107 lt!2153934 lt!2153964 (t!374092 s!2326)))))

(declare-fun res!2230338 () Bool)

(declare-fun lt!2153950 () Bool)

(assert (=> b!5255620 (= res!2230338 lt!2153950)))

(assert (=> b!5255620 (=> res!2230338 e!3269526)))

(assert (=> b!5255620 (= (matchZipper!1114 (set.union lt!2153934 lt!2153964) (t!374092 s!2326)) e!3269526)))

(declare-fun b!5255621 () Bool)

(declare-fun e!3269517 () Bool)

(assert (=> b!5255621 (= e!3269528 e!3269517)))

(declare-fun res!2230331 () Bool)

(assert (=> b!5255621 (=> res!2230331 e!3269517)))

(declare-fun lt!2153928 () Bool)

(assert (=> b!5255621 (= res!2230331 (and (not (= lt!2153960 lt!2153971)) (not lt!2153928)))))

(declare-fun lt!2153943 () Regex!14870)

(assert (=> b!5255621 (= lt!2153928 (matchRSpec!1973 lt!2153943 s!2326))))

(declare-fun lt!2153932 () Unit!152974)

(assert (=> b!5255621 (= lt!2153932 (mainMatchTheorem!1973 lt!2153943 s!2326))))

(declare-fun lt!2153952 () Regex!14870)

(assert (=> b!5255621 (= lt!2153971 (matchRSpec!1973 lt!2153952 s!2326))))

(declare-fun lt!2153945 () Unit!152974)

(assert (=> b!5255621 (= lt!2153945 (mainMatchTheorem!1973 lt!2153952 s!2326))))

(assert (=> b!5255621 (= lt!2153928 (matchZipper!1114 lt!2153923 s!2326))))

(assert (=> b!5255621 (= lt!2153928 (matchR!7055 lt!2153943 s!2326))))

(declare-fun lt!2153925 () Unit!152974)

(declare-fun theoremZipperRegexEquiv!304 ((Set Context!8508) List!60911 Regex!14870 List!60909) Unit!152974)

(assert (=> b!5255621 (= lt!2153925 (theoremZipperRegexEquiv!304 lt!2153923 lt!2153937 lt!2153943 s!2326))))

(assert (=> b!5255621 (= lt!2153943 (generalisedConcat!539 lt!2153942))))

(assert (=> b!5255621 (= lt!2153971 lt!2153930)))

(assert (=> b!5255621 (= lt!2153971 (matchR!7055 lt!2153952 s!2326))))

(declare-fun lt!2153967 () Unit!152974)

(assert (=> b!5255621 (= lt!2153967 (theoremZipperRegexEquiv!304 lt!2153939 lt!2153958 lt!2153952 s!2326))))

(assert (=> b!5255621 (= lt!2153952 (generalisedConcat!539 lt!2153948))))

(declare-fun b!5255622 () Bool)

(declare-fun e!3269534 () Bool)

(assert (=> b!5255622 (= e!3269517 e!3269534)))

(declare-fun res!2230332 () Bool)

(assert (=> b!5255622 (=> res!2230332 e!3269534)))

(assert (=> b!5255622 (= res!2230332 (not (= r!7292 lt!2153955)))))

(assert (=> b!5255622 (= lt!2153955 (Concat!23715 (Union!14870 (regOne!30253 (regOne!30252 r!7292)) (regTwo!30253 (regOne!30252 r!7292))) (regTwo!30252 r!7292)))))

(declare-fun b!5255623 () Bool)

(assert (=> b!5255623 (= e!3269523 e!3269518)))

(declare-fun res!2230354 () Bool)

(assert (=> b!5255623 (=> res!2230354 e!3269518)))

(assert (=> b!5255623 (= res!2230354 e!3269540)))

(declare-fun res!2230350 () Bool)

(assert (=> b!5255623 (=> (not res!2230350) (not e!3269540))))

(assert (=> b!5255623 (= res!2230350 (not (= (matchZipper!1114 lt!2153944 (t!374092 s!2326)) lt!2153950)))))

(assert (=> b!5255623 (= (matchZipper!1114 lt!2153940 (t!374092 s!2326)) e!3269537)))

(declare-fun res!2230333 () Bool)

(assert (=> b!5255623 (=> res!2230333 e!3269537)))

(assert (=> b!5255623 (= res!2230333 lt!2153950)))

(assert (=> b!5255623 (= lt!2153950 (matchZipper!1114 lt!2153934 (t!374092 s!2326)))))

(declare-fun lt!2153974 () Unit!152974)

(assert (=> b!5255623 (= lt!2153974 (lemmaZipperConcatMatchesSameAsBothZippers!107 lt!2153934 lt!2153949 (t!374092 s!2326)))))

(declare-fun b!5255624 () Bool)

(assert (=> b!5255624 (= e!3269534 e!3269531)))

(declare-fun res!2230349 () Bool)

(assert (=> b!5255624 (=> res!2230349 e!3269531)))

(declare-fun lt!2153929 () Regex!14870)

(assert (=> b!5255624 (= res!2230349 (or (not (= lt!2153952 (Concat!23715 (regOne!30253 (regOne!30252 r!7292)) lt!2153929))) (not (= lt!2153943 (Concat!23715 (regTwo!30253 (regOne!30252 r!7292)) lt!2153929))) (not (= (regTwo!30252 r!7292) lt!2153929))))))

(assert (=> b!5255624 (= lt!2153929 (generalisedConcat!539 (t!374093 (exprs!4754 (h!67235 zl!343)))))))

(declare-fun b!5255625 () Bool)

(declare-fun tp!1469786 () Bool)

(assert (=> b!5255625 (= e!3269541 (and tp_is_empty!38993 tp!1469786))))

(declare-fun b!5255626 () Bool)

(declare-fun e!3269530 () Bool)

(assert (=> b!5255626 (= e!3269530 (matchZipper!1114 lt!2153964 (t!374092 s!2326)))))

(declare-fun b!5255627 () Bool)

(declare-fun Unit!152980 () Unit!152974)

(assert (=> b!5255627 (= e!3269533 Unit!152980)))

(declare-fun lt!2153968 () Unit!152974)

(assert (=> b!5255627 (= lt!2153968 (lemmaZipperConcatMatchesSameAsBothZippers!107 lt!2153949 lt!2153964 (t!374092 s!2326)))))

(declare-fun res!2230334 () Bool)

(assert (=> b!5255627 (= res!2230334 (matchZipper!1114 lt!2153949 (t!374092 s!2326)))))

(assert (=> b!5255627 (=> res!2230334 e!3269530)))

(assert (=> b!5255627 (= (matchZipper!1114 (set.union lt!2153949 lt!2153964) (t!374092 s!2326)) e!3269530)))

(declare-fun b!5255628 () Bool)

(declare-fun Unit!152981 () Unit!152974)

(assert (=> b!5255628 (= e!3269524 Unit!152981)))

(declare-fun b!5255629 () Bool)

(assert (=> b!5255629 (= e!3269521 (matchZipper!1114 lt!2153964 (t!374092 s!2326)))))

(assert (= (and start!555168 res!2230341) b!5255609))

(assert (= (and b!5255609 res!2230345) b!5255610))

(assert (= (and b!5255610 res!2230335) b!5255605))

(assert (= (and b!5255605 (not res!2230351)) b!5255596))

(assert (= (and b!5255596 (not res!2230352)) b!5255592))

(assert (= (and b!5255592 (not res!2230347)) b!5255611))

(assert (= (and b!5255611 (not res!2230342)) b!5255618))

(assert (= (and b!5255618 (not res!2230348)) b!5255606))

(assert (= (and b!5255606 (not res!2230330)) b!5255588))

(assert (= (and b!5255588 (not res!2230340)) b!5255601))

(assert (= (and b!5255601 (not res!2230337)) b!5255604))

(assert (= (and b!5255604 c!909403) b!5255613))

(assert (= (and b!5255604 (not c!909403)) b!5255597))

(assert (= (and b!5255613 (not res!2230344)) b!5255629))

(assert (= (and b!5255604 (not res!2230356)) b!5255617))

(assert (= (and b!5255617 (not res!2230343)) b!5255623))

(assert (= (and b!5255623 (not res!2230333)) b!5255598))

(assert (= (and b!5255623 res!2230350) b!5255593))

(assert (= (and b!5255623 (not res!2230354)) b!5255612))

(assert (= (and b!5255612 c!909404) b!5255620))

(assert (= (and b!5255612 (not c!909404)) b!5255628))

(assert (= (and b!5255620 (not res!2230338)) b!5255600))

(assert (= (and b!5255612 c!909405) b!5255627))

(assert (= (and b!5255612 (not c!909405)) b!5255607))

(assert (= (and b!5255627 (not res!2230334)) b!5255626))

(assert (= (and b!5255612 (not res!2230346)) b!5255595))

(assert (= (and b!5255612 (not res!2230357)) b!5255619))

(assert (= (and b!5255619 (not res!2230355)) b!5255602))

(assert (= (and b!5255602 (not res!2230336)) b!5255594))

(assert (= (and b!5255594 (not res!2230339)) b!5255621))

(assert (= (and b!5255621 (not res!2230331)) b!5255622))

(assert (= (and b!5255622 (not res!2230332)) b!5255624))

(assert (= (and b!5255624 (not res!2230349)) b!5255615))

(assert (= (and b!5255615 (not res!2230353)) b!5255599))

(assert (= (and start!555168 (is-ElementMatch!14870 r!7292)) b!5255608))

(assert (= (and start!555168 (is-Concat!23715 r!7292)) b!5255614))

(assert (= (and start!555168 (is-Star!14870 r!7292)) b!5255590))

(assert (= (and start!555168 (is-Union!14870 r!7292)) b!5255616))

(assert (= (and start!555168 condSetEmpty!33578) setIsEmpty!33578))

(assert (= (and start!555168 (not condSetEmpty!33578)) setNonEmpty!33578))

(assert (= setNonEmpty!33578 b!5255589))

(assert (= b!5255603 b!5255591))

(assert (= (and start!555168 (is-Cons!60787 zl!343)) b!5255603))

(assert (= (and start!555168 (is-Cons!60785 s!2326)) b!5255625))

(declare-fun m!6298212 () Bool)

(assert (=> b!5255617 m!6298212))

(declare-fun m!6298214 () Bool)

(assert (=> b!5255617 m!6298214))

(declare-fun m!6298216 () Bool)

(assert (=> b!5255594 m!6298216))

(declare-fun m!6298218 () Bool)

(assert (=> b!5255596 m!6298218))

(declare-fun m!6298220 () Bool)

(assert (=> b!5255595 m!6298220))

(declare-fun m!6298222 () Bool)

(assert (=> b!5255620 m!6298222))

(declare-fun m!6298224 () Bool)

(assert (=> b!5255620 m!6298224))

(declare-fun m!6298226 () Bool)

(assert (=> b!5255600 m!6298226))

(declare-fun m!6298228 () Bool)

(assert (=> b!5255624 m!6298228))

(declare-fun m!6298230 () Bool)

(assert (=> b!5255623 m!6298230))

(declare-fun m!6298232 () Bool)

(assert (=> b!5255623 m!6298232))

(declare-fun m!6298234 () Bool)

(assert (=> b!5255623 m!6298234))

(declare-fun m!6298236 () Bool)

(assert (=> b!5255623 m!6298236))

(assert (=> b!5255626 m!6298226))

(assert (=> b!5255629 m!6298226))

(declare-fun m!6298238 () Bool)

(assert (=> b!5255627 m!6298238))

(declare-fun m!6298240 () Bool)

(assert (=> b!5255627 m!6298240))

(declare-fun m!6298242 () Bool)

(assert (=> b!5255627 m!6298242))

(declare-fun m!6298244 () Bool)

(assert (=> b!5255604 m!6298244))

(declare-fun m!6298246 () Bool)

(assert (=> b!5255604 m!6298246))

(declare-fun m!6298248 () Bool)

(assert (=> b!5255604 m!6298248))

(declare-fun m!6298250 () Bool)

(assert (=> b!5255604 m!6298250))

(declare-fun m!6298252 () Bool)

(assert (=> b!5255604 m!6298252))

(declare-fun m!6298254 () Bool)

(assert (=> b!5255604 m!6298254))

(declare-fun m!6298256 () Bool)

(assert (=> b!5255604 m!6298256))

(declare-fun m!6298258 () Bool)

(assert (=> b!5255605 m!6298258))

(declare-fun m!6298260 () Bool)

(assert (=> b!5255605 m!6298260))

(declare-fun m!6298262 () Bool)

(assert (=> b!5255605 m!6298262))

(declare-fun m!6298264 () Bool)

(assert (=> b!5255603 m!6298264))

(declare-fun m!6298266 () Bool)

(assert (=> b!5255615 m!6298266))

(declare-fun m!6298268 () Bool)

(assert (=> b!5255615 m!6298268))

(declare-fun m!6298270 () Bool)

(assert (=> b!5255615 m!6298270))

(declare-fun m!6298272 () Bool)

(assert (=> b!5255615 m!6298272))

(declare-fun m!6298274 () Bool)

(assert (=> b!5255615 m!6298274))

(declare-fun m!6298276 () Bool)

(assert (=> b!5255615 m!6298276))

(declare-fun m!6298278 () Bool)

(assert (=> b!5255615 m!6298278))

(declare-fun m!6298280 () Bool)

(assert (=> b!5255613 m!6298280))

(assert (=> b!5255613 m!6298230))

(declare-fun m!6298282 () Bool)

(assert (=> b!5255613 m!6298282))

(declare-fun m!6298284 () Bool)

(assert (=> b!5255592 m!6298284))

(declare-fun m!6298286 () Bool)

(assert (=> b!5255602 m!6298286))

(declare-fun m!6298288 () Bool)

(assert (=> b!5255602 m!6298288))

(declare-fun m!6298290 () Bool)

(assert (=> start!555168 m!6298290))

(declare-fun m!6298292 () Bool)

(assert (=> setNonEmpty!33578 m!6298292))

(declare-fun m!6298294 () Bool)

(assert (=> b!5255609 m!6298294))

(declare-fun m!6298296 () Bool)

(assert (=> b!5255588 m!6298296))

(declare-fun m!6298298 () Bool)

(assert (=> b!5255588 m!6298298))

(declare-fun m!6298300 () Bool)

(assert (=> b!5255588 m!6298300))

(assert (=> b!5255588 m!6298300))

(assert (=> b!5255588 m!6298296))

(declare-fun m!6298302 () Bool)

(assert (=> b!5255588 m!6298302))

(declare-fun m!6298304 () Bool)

(assert (=> b!5255588 m!6298304))

(declare-fun m!6298306 () Bool)

(assert (=> b!5255588 m!6298306))

(declare-fun m!6298308 () Bool)

(assert (=> b!5255612 m!6298308))

(declare-fun m!6298310 () Bool)

(assert (=> b!5255612 m!6298310))

(declare-fun m!6298312 () Bool)

(assert (=> b!5255612 m!6298312))

(declare-fun m!6298314 () Bool)

(assert (=> b!5255612 m!6298314))

(declare-fun m!6298316 () Bool)

(assert (=> b!5255612 m!6298316))

(declare-fun m!6298318 () Bool)

(assert (=> b!5255612 m!6298318))

(declare-fun m!6298320 () Bool)

(assert (=> b!5255612 m!6298320))

(declare-fun m!6298322 () Bool)

(assert (=> b!5255612 m!6298322))

(declare-fun m!6298324 () Bool)

(assert (=> b!5255612 m!6298324))

(declare-fun m!6298326 () Bool)

(assert (=> b!5255612 m!6298326))

(declare-fun m!6298328 () Bool)

(assert (=> b!5255612 m!6298328))

(declare-fun m!6298330 () Bool)

(assert (=> b!5255612 m!6298330))

(declare-fun m!6298332 () Bool)

(assert (=> b!5255601 m!6298332))

(declare-fun m!6298334 () Bool)

(assert (=> b!5255599 m!6298334))

(assert (=> b!5255598 m!6298240))

(declare-fun m!6298336 () Bool)

(assert (=> b!5255618 m!6298336))

(assert (=> b!5255618 m!6298336))

(declare-fun m!6298338 () Bool)

(assert (=> b!5255618 m!6298338))

(declare-fun m!6298340 () Bool)

(assert (=> b!5255610 m!6298340))

(assert (=> b!5255593 m!6298240))

(declare-fun m!6298342 () Bool)

(assert (=> b!5255621 m!6298342))

(declare-fun m!6298344 () Bool)

(assert (=> b!5255621 m!6298344))

(declare-fun m!6298346 () Bool)

(assert (=> b!5255621 m!6298346))

(declare-fun m!6298348 () Bool)

(assert (=> b!5255621 m!6298348))

(assert (=> b!5255621 m!6298220))

(declare-fun m!6298350 () Bool)

(assert (=> b!5255621 m!6298350))

(declare-fun m!6298352 () Bool)

(assert (=> b!5255621 m!6298352))

(declare-fun m!6298354 () Bool)

(assert (=> b!5255621 m!6298354))

(declare-fun m!6298356 () Bool)

(assert (=> b!5255621 m!6298356))

(declare-fun m!6298358 () Bool)

(assert (=> b!5255621 m!6298358))

(declare-fun m!6298360 () Bool)

(assert (=> b!5255621 m!6298360))

(push 1)

(assert (not b!5255626))

(assert (not setNonEmpty!33578))

(assert (not b!5255592))

(assert (not b!5255618))

(assert (not b!5255627))

(assert (not b!5255625))

(assert (not b!5255596))

(assert (not b!5255591))

(assert (not b!5255609))

(assert (not b!5255624))

(assert (not b!5255595))

(assert (not start!555168))

(assert (not b!5255602))

(assert (not b!5255599))

(assert (not b!5255623))

(assert (not b!5255620))

(assert (not b!5255601))

(assert (not b!5255629))

(assert (not b!5255589))

(assert (not b!5255588))

(assert (not b!5255598))

(assert (not b!5255613))

(assert (not b!5255593))

(assert (not b!5255603))

(assert (not b!5255614))

(assert (not b!5255604))

(assert (not b!5255617))

(assert (not b!5255600))

(assert (not b!5255594))

(assert tp_is_empty!38993)

(assert (not b!5255605))

(assert (not b!5255621))

(assert (not b!5255590))

(assert (not b!5255615))

(assert (not b!5255612))

(assert (not b!5255610))

(assert (not b!5255616))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1692195 () Bool)

(declare-fun c!909426 () Bool)

(declare-fun isEmpty!32729 (List!60909) Bool)

(assert (=> d!1692195 (= c!909426 (isEmpty!32729 s!2326))))

(declare-fun e!3269635 () Bool)

(assert (=> d!1692195 (= (matchZipper!1114 lt!2153923 s!2326) e!3269635)))

(declare-fun b!5255784 () Bool)

(declare-fun nullableZipper!1275 ((Set Context!8508)) Bool)

(assert (=> b!5255784 (= e!3269635 (nullableZipper!1275 lt!2153923))))

(declare-fun b!5255785 () Bool)

(declare-fun derivationStepZipper!1119 ((Set Context!8508) C!30010) (Set Context!8508))

(declare-fun head!11268 (List!60909) C!30010)

(declare-fun tail!10365 (List!60909) List!60909)

(assert (=> b!5255785 (= e!3269635 (matchZipper!1114 (derivationStepZipper!1119 lt!2153923 (head!11268 s!2326)) (tail!10365 s!2326)))))

(assert (= (and d!1692195 c!909426) b!5255784))

(assert (= (and d!1692195 (not c!909426)) b!5255785))

(declare-fun m!6298512 () Bool)

(assert (=> d!1692195 m!6298512))

(declare-fun m!6298514 () Bool)

(assert (=> b!5255784 m!6298514))

(declare-fun m!6298516 () Bool)

(assert (=> b!5255785 m!6298516))

(assert (=> b!5255785 m!6298516))

(declare-fun m!6298518 () Bool)

(assert (=> b!5255785 m!6298518))

(declare-fun m!6298520 () Bool)

(assert (=> b!5255785 m!6298520))

(assert (=> b!5255785 m!6298518))

(assert (=> b!5255785 m!6298520))

(declare-fun m!6298522 () Bool)

(assert (=> b!5255785 m!6298522))

(assert (=> b!5255595 d!1692195))

(declare-fun b!5255808 () Bool)

(declare-fun e!3269651 () (Set Context!8508))

(declare-fun e!3269648 () (Set Context!8508))

(assert (=> b!5255808 (= e!3269651 e!3269648)))

(declare-fun c!909439 () Bool)

(assert (=> b!5255808 (= c!909439 (is-Union!14870 (regTwo!30253 (regOne!30252 r!7292))))))

(declare-fun d!1692197 () Bool)

(declare-fun c!909438 () Bool)

(assert (=> d!1692197 (= c!909438 (and (is-ElementMatch!14870 (regTwo!30253 (regOne!30252 r!7292))) (= (c!909406 (regTwo!30253 (regOne!30252 r!7292))) (h!67233 s!2326))))))

(assert (=> d!1692197 (= (derivationStepZipperDown!318 (regTwo!30253 (regOne!30252 r!7292)) lt!2153933 (h!67233 s!2326)) e!3269651)))

(declare-fun bm!372460 () Bool)

(declare-fun call!372466 () (Set Context!8508))

(declare-fun call!372467 () (Set Context!8508))

(assert (=> bm!372460 (= call!372466 call!372467)))

(declare-fun b!5255809 () Bool)

(assert (=> b!5255809 (= e!3269651 (set.insert lt!2153933 (as set.empty (Set Context!8508))))))

(declare-fun call!372470 () List!60910)

(declare-fun bm!372461 () Bool)

(declare-fun call!372469 () (Set Context!8508))

(assert (=> bm!372461 (= call!372469 (derivationStepZipperDown!318 (ite c!909439 (regOne!30253 (regTwo!30253 (regOne!30252 r!7292))) (regOne!30252 (regTwo!30253 (regOne!30252 r!7292)))) (ite c!909439 lt!2153933 (Context!8509 call!372470)) (h!67233 s!2326)))))

(declare-fun b!5255810 () Bool)

(declare-fun e!3269653 () (Set Context!8508))

(declare-fun e!3269649 () (Set Context!8508))

(assert (=> b!5255810 (= e!3269653 e!3269649)))

(declare-fun c!909437 () Bool)

(assert (=> b!5255810 (= c!909437 (is-Concat!23715 (regTwo!30253 (regOne!30252 r!7292))))))

(declare-fun b!5255811 () Bool)

(assert (=> b!5255811 (= e!3269653 (set.union call!372469 call!372466))))

(declare-fun bm!372462 () Bool)

(declare-fun call!372465 () List!60910)

(assert (=> bm!372462 (= call!372465 call!372470)))

(declare-fun c!909441 () Bool)

(declare-fun bm!372463 () Bool)

(declare-fun $colon$colon!1325 (List!60910 Regex!14870) List!60910)

(assert (=> bm!372463 (= call!372470 ($colon$colon!1325 (exprs!4754 lt!2153933) (ite (or c!909441 c!909437) (regTwo!30252 (regTwo!30253 (regOne!30252 r!7292))) (regTwo!30253 (regOne!30252 r!7292)))))))

(declare-fun b!5255812 () Bool)

(assert (=> b!5255812 (= e!3269648 (set.union call!372469 call!372467))))

(declare-fun bm!372464 () Bool)

(assert (=> bm!372464 (= call!372467 (derivationStepZipperDown!318 (ite c!909439 (regTwo!30253 (regTwo!30253 (regOne!30252 r!7292))) (ite c!909441 (regTwo!30252 (regTwo!30253 (regOne!30252 r!7292))) (ite c!909437 (regOne!30252 (regTwo!30253 (regOne!30252 r!7292))) (reg!15199 (regTwo!30253 (regOne!30252 r!7292)))))) (ite (or c!909439 c!909441) lt!2153933 (Context!8509 call!372465)) (h!67233 s!2326)))))

(declare-fun b!5255813 () Bool)

(declare-fun call!372468 () (Set Context!8508))

(assert (=> b!5255813 (= e!3269649 call!372468)))

(declare-fun b!5255814 () Bool)

(declare-fun e!3269652 () Bool)

(assert (=> b!5255814 (= c!909441 e!3269652)))

(declare-fun res!2230456 () Bool)

(assert (=> b!5255814 (=> (not res!2230456) (not e!3269652))))

(assert (=> b!5255814 (= res!2230456 (is-Concat!23715 (regTwo!30253 (regOne!30252 r!7292))))))

(assert (=> b!5255814 (= e!3269648 e!3269653)))

(declare-fun b!5255815 () Bool)

(declare-fun e!3269650 () (Set Context!8508))

(assert (=> b!5255815 (= e!3269650 (as set.empty (Set Context!8508)))))

(declare-fun b!5255816 () Bool)

(assert (=> b!5255816 (= e!3269652 (nullable!5039 (regOne!30252 (regTwo!30253 (regOne!30252 r!7292)))))))

(declare-fun b!5255817 () Bool)

(assert (=> b!5255817 (= e!3269650 call!372468)))

(declare-fun bm!372465 () Bool)

(assert (=> bm!372465 (= call!372468 call!372466)))

(declare-fun b!5255818 () Bool)

(declare-fun c!909440 () Bool)

(assert (=> b!5255818 (= c!909440 (is-Star!14870 (regTwo!30253 (regOne!30252 r!7292))))))

(assert (=> b!5255818 (= e!3269649 e!3269650)))

(assert (= (and d!1692197 c!909438) b!5255809))

(assert (= (and d!1692197 (not c!909438)) b!5255808))

(assert (= (and b!5255808 c!909439) b!5255812))

(assert (= (and b!5255808 (not c!909439)) b!5255814))

(assert (= (and b!5255814 res!2230456) b!5255816))

(assert (= (and b!5255814 c!909441) b!5255811))

(assert (= (and b!5255814 (not c!909441)) b!5255810))

(assert (= (and b!5255810 c!909437) b!5255813))

(assert (= (and b!5255810 (not c!909437)) b!5255818))

(assert (= (and b!5255818 c!909440) b!5255817))

(assert (= (and b!5255818 (not c!909440)) b!5255815))

(assert (= (or b!5255813 b!5255817) bm!372462))

(assert (= (or b!5255813 b!5255817) bm!372465))

(assert (= (or b!5255811 bm!372462) bm!372463))

(assert (= (or b!5255811 bm!372465) bm!372460))

(assert (= (or b!5255812 bm!372460) bm!372464))

(assert (= (or b!5255812 b!5255811) bm!372461))

(declare-fun m!6298524 () Bool)

(assert (=> bm!372464 m!6298524))

(declare-fun m!6298526 () Bool)

(assert (=> b!5255809 m!6298526))

(declare-fun m!6298528 () Bool)

(assert (=> b!5255816 m!6298528))

(declare-fun m!6298530 () Bool)

(assert (=> bm!372463 m!6298530))

(declare-fun m!6298532 () Bool)

(assert (=> bm!372461 m!6298532))

(assert (=> b!5255617 d!1692197))

(declare-fun b!5255819 () Bool)

(declare-fun e!3269657 () (Set Context!8508))

(declare-fun e!3269654 () (Set Context!8508))

(assert (=> b!5255819 (= e!3269657 e!3269654)))

(declare-fun c!909444 () Bool)

(assert (=> b!5255819 (= c!909444 (is-Union!14870 (regOne!30253 (regOne!30252 r!7292))))))

(declare-fun d!1692199 () Bool)

(declare-fun c!909443 () Bool)

(assert (=> d!1692199 (= c!909443 (and (is-ElementMatch!14870 (regOne!30253 (regOne!30252 r!7292))) (= (c!909406 (regOne!30253 (regOne!30252 r!7292))) (h!67233 s!2326))))))

(assert (=> d!1692199 (= (derivationStepZipperDown!318 (regOne!30253 (regOne!30252 r!7292)) lt!2153933 (h!67233 s!2326)) e!3269657)))

(declare-fun bm!372466 () Bool)

(declare-fun call!372472 () (Set Context!8508))

(declare-fun call!372473 () (Set Context!8508))

(assert (=> bm!372466 (= call!372472 call!372473)))

(declare-fun b!5255820 () Bool)

(assert (=> b!5255820 (= e!3269657 (set.insert lt!2153933 (as set.empty (Set Context!8508))))))

(declare-fun call!372475 () (Set Context!8508))

(declare-fun call!372476 () List!60910)

(declare-fun bm!372467 () Bool)

(assert (=> bm!372467 (= call!372475 (derivationStepZipperDown!318 (ite c!909444 (regOne!30253 (regOne!30253 (regOne!30252 r!7292))) (regOne!30252 (regOne!30253 (regOne!30252 r!7292)))) (ite c!909444 lt!2153933 (Context!8509 call!372476)) (h!67233 s!2326)))))

(declare-fun b!5255821 () Bool)

(declare-fun e!3269659 () (Set Context!8508))

(declare-fun e!3269655 () (Set Context!8508))

(assert (=> b!5255821 (= e!3269659 e!3269655)))

(declare-fun c!909442 () Bool)

(assert (=> b!5255821 (= c!909442 (is-Concat!23715 (regOne!30253 (regOne!30252 r!7292))))))

(declare-fun b!5255822 () Bool)

(assert (=> b!5255822 (= e!3269659 (set.union call!372475 call!372472))))

(declare-fun bm!372468 () Bool)

(declare-fun call!372471 () List!60910)

(assert (=> bm!372468 (= call!372471 call!372476)))

(declare-fun c!909446 () Bool)

(declare-fun bm!372469 () Bool)

(assert (=> bm!372469 (= call!372476 ($colon$colon!1325 (exprs!4754 lt!2153933) (ite (or c!909446 c!909442) (regTwo!30252 (regOne!30253 (regOne!30252 r!7292))) (regOne!30253 (regOne!30252 r!7292)))))))

(declare-fun b!5255823 () Bool)

(assert (=> b!5255823 (= e!3269654 (set.union call!372475 call!372473))))

(declare-fun bm!372470 () Bool)

(assert (=> bm!372470 (= call!372473 (derivationStepZipperDown!318 (ite c!909444 (regTwo!30253 (regOne!30253 (regOne!30252 r!7292))) (ite c!909446 (regTwo!30252 (regOne!30253 (regOne!30252 r!7292))) (ite c!909442 (regOne!30252 (regOne!30253 (regOne!30252 r!7292))) (reg!15199 (regOne!30253 (regOne!30252 r!7292)))))) (ite (or c!909444 c!909446) lt!2153933 (Context!8509 call!372471)) (h!67233 s!2326)))))

(declare-fun b!5255824 () Bool)

(declare-fun call!372474 () (Set Context!8508))

(assert (=> b!5255824 (= e!3269655 call!372474)))

(declare-fun b!5255825 () Bool)

(declare-fun e!3269658 () Bool)

(assert (=> b!5255825 (= c!909446 e!3269658)))

(declare-fun res!2230457 () Bool)

(assert (=> b!5255825 (=> (not res!2230457) (not e!3269658))))

(assert (=> b!5255825 (= res!2230457 (is-Concat!23715 (regOne!30253 (regOne!30252 r!7292))))))

(assert (=> b!5255825 (= e!3269654 e!3269659)))

(declare-fun b!5255826 () Bool)

(declare-fun e!3269656 () (Set Context!8508))

(assert (=> b!5255826 (= e!3269656 (as set.empty (Set Context!8508)))))

(declare-fun b!5255827 () Bool)

(assert (=> b!5255827 (= e!3269658 (nullable!5039 (regOne!30252 (regOne!30253 (regOne!30252 r!7292)))))))

(declare-fun b!5255828 () Bool)

(assert (=> b!5255828 (= e!3269656 call!372474)))

(declare-fun bm!372471 () Bool)

(assert (=> bm!372471 (= call!372474 call!372472)))

(declare-fun b!5255829 () Bool)

(declare-fun c!909445 () Bool)

(assert (=> b!5255829 (= c!909445 (is-Star!14870 (regOne!30253 (regOne!30252 r!7292))))))

(assert (=> b!5255829 (= e!3269655 e!3269656)))

(assert (= (and d!1692199 c!909443) b!5255820))

(assert (= (and d!1692199 (not c!909443)) b!5255819))

(assert (= (and b!5255819 c!909444) b!5255823))

(assert (= (and b!5255819 (not c!909444)) b!5255825))

(assert (= (and b!5255825 res!2230457) b!5255827))

(assert (= (and b!5255825 c!909446) b!5255822))

(assert (= (and b!5255825 (not c!909446)) b!5255821))

(assert (= (and b!5255821 c!909442) b!5255824))

(assert (= (and b!5255821 (not c!909442)) b!5255829))

(assert (= (and b!5255829 c!909445) b!5255828))

(assert (= (and b!5255829 (not c!909445)) b!5255826))

(assert (= (or b!5255824 b!5255828) bm!372468))

(assert (= (or b!5255824 b!5255828) bm!372471))

(assert (= (or b!5255822 bm!372468) bm!372469))

(assert (= (or b!5255822 bm!372471) bm!372466))

(assert (= (or b!5255823 bm!372466) bm!372470))

(assert (= (or b!5255823 b!5255822) bm!372467))

(declare-fun m!6298534 () Bool)

(assert (=> bm!372470 m!6298534))

(assert (=> b!5255820 m!6298526))

(declare-fun m!6298536 () Bool)

(assert (=> b!5255827 m!6298536))

(declare-fun m!6298538 () Bool)

(assert (=> bm!372469 m!6298538))

(declare-fun m!6298540 () Bool)

(assert (=> bm!372467 m!6298540))

(assert (=> b!5255617 d!1692199))

(declare-fun d!1692201 () Bool)

(assert (=> d!1692201 (= (isEmpty!32725 (t!374094 zl!343)) (is-Nil!60787 (t!374094 zl!343)))))

(assert (=> b!5255596 d!1692201))

(declare-fun d!1692203 () Bool)

(declare-fun c!909447 () Bool)

(assert (=> d!1692203 (= c!909447 (isEmpty!32729 (t!374092 s!2326)))))

(declare-fun e!3269660 () Bool)

(assert (=> d!1692203 (= (matchZipper!1114 lt!2153949 (t!374092 s!2326)) e!3269660)))

(declare-fun b!5255830 () Bool)

(assert (=> b!5255830 (= e!3269660 (nullableZipper!1275 lt!2153949))))

(declare-fun b!5255831 () Bool)

(assert (=> b!5255831 (= e!3269660 (matchZipper!1114 (derivationStepZipper!1119 lt!2153949 (head!11268 (t!374092 s!2326))) (tail!10365 (t!374092 s!2326))))))

(assert (= (and d!1692203 c!909447) b!5255830))

(assert (= (and d!1692203 (not c!909447)) b!5255831))

(declare-fun m!6298542 () Bool)

(assert (=> d!1692203 m!6298542))

(declare-fun m!6298544 () Bool)

(assert (=> b!5255830 m!6298544))

(declare-fun m!6298546 () Bool)

(assert (=> b!5255831 m!6298546))

(assert (=> b!5255831 m!6298546))

(declare-fun m!6298548 () Bool)

(assert (=> b!5255831 m!6298548))

(declare-fun m!6298550 () Bool)

(assert (=> b!5255831 m!6298550))

(assert (=> b!5255831 m!6298548))

(assert (=> b!5255831 m!6298550))

(declare-fun m!6298552 () Bool)

(assert (=> b!5255831 m!6298552))

(assert (=> b!5255598 d!1692203))

(declare-fun bs!1218825 () Bool)

(declare-fun d!1692205 () Bool)

(assert (= bs!1218825 (and d!1692205 b!5255599)))

(declare-fun lambda!264838 () Int)

(assert (=> bs!1218825 (= lambda!264838 lambda!264817)))

(declare-fun b!5255852 () Bool)

(declare-fun e!3269677 () Regex!14870)

(assert (=> b!5255852 (= e!3269677 EmptyLang!14870)))

(declare-fun b!5255853 () Bool)

(declare-fun e!3269675 () Bool)

(declare-fun lt!2154141 () Regex!14870)

(declare-fun head!11269 (List!60910) Regex!14870)

(assert (=> b!5255853 (= e!3269675 (= lt!2154141 (head!11269 (unfocusZipperList!312 zl!343))))))

(declare-fun e!3269678 () Bool)

(assert (=> d!1692205 e!3269678))

(declare-fun res!2230463 () Bool)

(assert (=> d!1692205 (=> (not res!2230463) (not e!3269678))))

(assert (=> d!1692205 (= res!2230463 (validRegex!6606 lt!2154141))))

(declare-fun e!3269674 () Regex!14870)

(assert (=> d!1692205 (= lt!2154141 e!3269674)))

(declare-fun c!909458 () Bool)

(declare-fun e!3269676 () Bool)

(assert (=> d!1692205 (= c!909458 e!3269676)))

(declare-fun res!2230462 () Bool)

(assert (=> d!1692205 (=> (not res!2230462) (not e!3269676))))

(assert (=> d!1692205 (= res!2230462 (is-Cons!60786 (unfocusZipperList!312 zl!343)))))

(assert (=> d!1692205 (forall!14284 (unfocusZipperList!312 zl!343) lambda!264838)))

(assert (=> d!1692205 (= (generalisedUnion!799 (unfocusZipperList!312 zl!343)) lt!2154141)))

(declare-fun b!5255854 () Bool)

(declare-fun e!3269673 () Bool)

(assert (=> b!5255854 (= e!3269678 e!3269673)))

(declare-fun c!909456 () Bool)

(assert (=> b!5255854 (= c!909456 (isEmpty!32726 (unfocusZipperList!312 zl!343)))))

(declare-fun b!5255855 () Bool)

(assert (=> b!5255855 (= e!3269674 (h!67234 (unfocusZipperList!312 zl!343)))))

(declare-fun b!5255856 () Bool)

(assert (=> b!5255856 (= e!3269674 e!3269677)))

(declare-fun c!909457 () Bool)

(assert (=> b!5255856 (= c!909457 (is-Cons!60786 (unfocusZipperList!312 zl!343)))))

(declare-fun b!5255857 () Bool)

(assert (=> b!5255857 (= e!3269673 e!3269675)))

(declare-fun c!909459 () Bool)

(declare-fun tail!10366 (List!60910) List!60910)

(assert (=> b!5255857 (= c!909459 (isEmpty!32726 (tail!10366 (unfocusZipperList!312 zl!343))))))

(declare-fun b!5255858 () Bool)

(declare-fun isEmptyLang!818 (Regex!14870) Bool)

(assert (=> b!5255858 (= e!3269673 (isEmptyLang!818 lt!2154141))))

(declare-fun b!5255859 () Bool)

(declare-fun isUnion!250 (Regex!14870) Bool)

(assert (=> b!5255859 (= e!3269675 (isUnion!250 lt!2154141))))

(declare-fun b!5255860 () Bool)

(assert (=> b!5255860 (= e!3269676 (isEmpty!32726 (t!374093 (unfocusZipperList!312 zl!343))))))

(declare-fun b!5255861 () Bool)

(assert (=> b!5255861 (= e!3269677 (Union!14870 (h!67234 (unfocusZipperList!312 zl!343)) (generalisedUnion!799 (t!374093 (unfocusZipperList!312 zl!343)))))))

(assert (= (and d!1692205 res!2230462) b!5255860))

(assert (= (and d!1692205 c!909458) b!5255855))

(assert (= (and d!1692205 (not c!909458)) b!5255856))

(assert (= (and b!5255856 c!909457) b!5255861))

(assert (= (and b!5255856 (not c!909457)) b!5255852))

(assert (= (and d!1692205 res!2230463) b!5255854))

(assert (= (and b!5255854 c!909456) b!5255858))

(assert (= (and b!5255854 (not c!909456)) b!5255857))

(assert (= (and b!5255857 c!909459) b!5255853))

(assert (= (and b!5255857 (not c!909459)) b!5255859))

(assert (=> b!5255853 m!6298336))

(declare-fun m!6298554 () Bool)

(assert (=> b!5255853 m!6298554))

(assert (=> b!5255857 m!6298336))

(declare-fun m!6298556 () Bool)

(assert (=> b!5255857 m!6298556))

(assert (=> b!5255857 m!6298556))

(declare-fun m!6298558 () Bool)

(assert (=> b!5255857 m!6298558))

(declare-fun m!6298560 () Bool)

(assert (=> b!5255860 m!6298560))

(declare-fun m!6298562 () Bool)

(assert (=> d!1692205 m!6298562))

(assert (=> d!1692205 m!6298336))

(declare-fun m!6298564 () Bool)

(assert (=> d!1692205 m!6298564))

(assert (=> b!5255854 m!6298336))

(declare-fun m!6298566 () Bool)

(assert (=> b!5255854 m!6298566))

(declare-fun m!6298568 () Bool)

(assert (=> b!5255858 m!6298568))

(declare-fun m!6298570 () Bool)

(assert (=> b!5255859 m!6298570))

(declare-fun m!6298572 () Bool)

(assert (=> b!5255861 m!6298572))

(assert (=> b!5255618 d!1692205))

(declare-fun bs!1218826 () Bool)

(declare-fun d!1692207 () Bool)

(assert (= bs!1218826 (and d!1692207 b!5255599)))

(declare-fun lambda!264841 () Int)

(assert (=> bs!1218826 (= lambda!264841 lambda!264817)))

(declare-fun bs!1218827 () Bool)

(assert (= bs!1218827 (and d!1692207 d!1692205)))

(assert (=> bs!1218827 (= lambda!264841 lambda!264838)))

(declare-fun lt!2154144 () List!60910)

(assert (=> d!1692207 (forall!14284 lt!2154144 lambda!264841)))

(declare-fun e!3269681 () List!60910)

(assert (=> d!1692207 (= lt!2154144 e!3269681)))

(declare-fun c!909462 () Bool)

(assert (=> d!1692207 (= c!909462 (is-Cons!60787 zl!343))))

(assert (=> d!1692207 (= (unfocusZipperList!312 zl!343) lt!2154144)))

(declare-fun b!5255866 () Bool)

(assert (=> b!5255866 (= e!3269681 (Cons!60786 (generalisedConcat!539 (exprs!4754 (h!67235 zl!343))) (unfocusZipperList!312 (t!374094 zl!343))))))

(declare-fun b!5255867 () Bool)

(assert (=> b!5255867 (= e!3269681 Nil!60786)))

(assert (= (and d!1692207 c!909462) b!5255866))

(assert (= (and d!1692207 (not c!909462)) b!5255867))

(declare-fun m!6298574 () Bool)

(assert (=> d!1692207 m!6298574))

(assert (=> b!5255866 m!6298284))

(declare-fun m!6298576 () Bool)

(assert (=> b!5255866 m!6298576))

(assert (=> b!5255618 d!1692207))

(declare-fun d!1692209 () Bool)

(declare-fun res!2230468 () Bool)

(declare-fun e!3269686 () Bool)

(assert (=> d!1692209 (=> res!2230468 e!3269686)))

(assert (=> d!1692209 (= res!2230468 (is-Nil!60786 lt!2153942))))

(assert (=> d!1692209 (= (forall!14284 lt!2153942 lambda!264817) e!3269686)))

(declare-fun b!5255872 () Bool)

(declare-fun e!3269687 () Bool)

(assert (=> b!5255872 (= e!3269686 e!3269687)))

(declare-fun res!2230469 () Bool)

(assert (=> b!5255872 (=> (not res!2230469) (not e!3269687))))

(declare-fun dynLambda!24016 (Int Regex!14870) Bool)

(assert (=> b!5255872 (= res!2230469 (dynLambda!24016 lambda!264817 (h!67234 lt!2153942)))))

(declare-fun b!5255873 () Bool)

(assert (=> b!5255873 (= e!3269687 (forall!14284 (t!374093 lt!2153942) lambda!264817))))

(assert (= (and d!1692209 (not res!2230468)) b!5255872))

(assert (= (and b!5255872 res!2230469) b!5255873))

(declare-fun b_lambda!202893 () Bool)

(assert (=> (not b_lambda!202893) (not b!5255872)))

(declare-fun m!6298578 () Bool)

(assert (=> b!5255872 m!6298578))

(declare-fun m!6298580 () Bool)

(assert (=> b!5255873 m!6298580))

(assert (=> b!5255599 d!1692209))

(declare-fun bs!1218828 () Bool)

(declare-fun d!1692211 () Bool)

(assert (= bs!1218828 (and d!1692211 b!5255599)))

(declare-fun lambda!264844 () Int)

(assert (=> bs!1218828 (= lambda!264844 lambda!264817)))

(declare-fun bs!1218829 () Bool)

(assert (= bs!1218829 (and d!1692211 d!1692205)))

(assert (=> bs!1218829 (= lambda!264844 lambda!264838)))

(declare-fun bs!1218830 () Bool)

(assert (= bs!1218830 (and d!1692211 d!1692207)))

(assert (=> bs!1218830 (= lambda!264844 lambda!264841)))

(assert (=> d!1692211 (= (inv!80423 setElem!33578) (forall!14284 (exprs!4754 setElem!33578) lambda!264844))))

(declare-fun bs!1218831 () Bool)

(assert (= bs!1218831 d!1692211))

(declare-fun m!6298582 () Bool)

(assert (=> bs!1218831 m!6298582))

(assert (=> setNonEmpty!33578 d!1692211))

(declare-fun d!1692213 () Bool)

(declare-fun dynLambda!24017 (Int Context!8508) (Set Context!8508))

(assert (=> d!1692213 (= (flatMap!597 lt!2153939 lambda!264816) (dynLambda!24017 lambda!264816 lt!2153954))))

(declare-fun lt!2154147 () Unit!152974)

(declare-fun choose!39183 ((Set Context!8508) Context!8508 Int) Unit!152974)

(assert (=> d!1692213 (= lt!2154147 (choose!39183 lt!2153939 lt!2153954 lambda!264816))))

(assert (=> d!1692213 (= lt!2153939 (set.insert lt!2153954 (as set.empty (Set Context!8508))))))

(assert (=> d!1692213 (= (lemmaFlatMapOnSingletonSet!129 lt!2153939 lt!2153954 lambda!264816) lt!2154147)))

(declare-fun b_lambda!202895 () Bool)

(assert (=> (not b_lambda!202895) (not d!1692213)))

(declare-fun bs!1218832 () Bool)

(assert (= bs!1218832 d!1692213))

(assert (=> bs!1218832 m!6298314))

(declare-fun m!6298584 () Bool)

(assert (=> bs!1218832 m!6298584))

(declare-fun m!6298586 () Bool)

(assert (=> bs!1218832 m!6298586))

(assert (=> bs!1218832 m!6298310))

(assert (=> b!5255612 d!1692213))

(declare-fun d!1692215 () Bool)

(declare-fun c!909467 () Bool)

(declare-fun e!3269696 () Bool)

(assert (=> d!1692215 (= c!909467 e!3269696)))

(declare-fun res!2230472 () Bool)

(assert (=> d!1692215 (=> (not res!2230472) (not e!3269696))))

(assert (=> d!1692215 (= res!2230472 (is-Cons!60786 (exprs!4754 lt!2153954)))))

(declare-fun e!3269694 () (Set Context!8508))

(assert (=> d!1692215 (= (derivationStepZipperUp!242 lt!2153954 (h!67233 s!2326)) e!3269694)))

(declare-fun bm!372474 () Bool)

(declare-fun call!372479 () (Set Context!8508))

(assert (=> bm!372474 (= call!372479 (derivationStepZipperDown!318 (h!67234 (exprs!4754 lt!2153954)) (Context!8509 (t!374093 (exprs!4754 lt!2153954))) (h!67233 s!2326)))))

(declare-fun b!5255884 () Bool)

(declare-fun e!3269695 () (Set Context!8508))

(assert (=> b!5255884 (= e!3269694 e!3269695)))

(declare-fun c!909468 () Bool)

(assert (=> b!5255884 (= c!909468 (is-Cons!60786 (exprs!4754 lt!2153954)))))

(declare-fun b!5255885 () Bool)

(assert (=> b!5255885 (= e!3269695 (as set.empty (Set Context!8508)))))

(declare-fun b!5255886 () Bool)

(assert (=> b!5255886 (= e!3269696 (nullable!5039 (h!67234 (exprs!4754 lt!2153954))))))

(declare-fun b!5255887 () Bool)

(assert (=> b!5255887 (= e!3269695 call!372479)))

(declare-fun b!5255888 () Bool)

(assert (=> b!5255888 (= e!3269694 (set.union call!372479 (derivationStepZipperUp!242 (Context!8509 (t!374093 (exprs!4754 lt!2153954))) (h!67233 s!2326))))))

(assert (= (and d!1692215 res!2230472) b!5255886))

(assert (= (and d!1692215 c!909467) b!5255888))

(assert (= (and d!1692215 (not c!909467)) b!5255884))

(assert (= (and b!5255884 c!909468) b!5255887))

(assert (= (and b!5255884 (not c!909468)) b!5255885))

(assert (= (or b!5255888 b!5255887) bm!372474))

(declare-fun m!6298588 () Bool)

(assert (=> bm!372474 m!6298588))

(declare-fun m!6298590 () Bool)

(assert (=> b!5255886 m!6298590))

(declare-fun m!6298592 () Bool)

(assert (=> b!5255888 m!6298592))

(assert (=> b!5255612 d!1692215))

(declare-fun d!1692217 () Bool)

(declare-fun c!909469 () Bool)

(assert (=> d!1692217 (= c!909469 (isEmpty!32729 s!2326))))

(declare-fun e!3269697 () Bool)

(assert (=> d!1692217 (= (matchZipper!1114 z!1189 s!2326) e!3269697)))

(declare-fun b!5255889 () Bool)

(assert (=> b!5255889 (= e!3269697 (nullableZipper!1275 z!1189))))

(declare-fun b!5255890 () Bool)

(assert (=> b!5255890 (= e!3269697 (matchZipper!1114 (derivationStepZipper!1119 z!1189 (head!11268 s!2326)) (tail!10365 s!2326)))))

(assert (= (and d!1692217 c!909469) b!5255889))

(assert (= (and d!1692217 (not c!909469)) b!5255890))

(assert (=> d!1692217 m!6298512))

(declare-fun m!6298594 () Bool)

(assert (=> b!5255889 m!6298594))

(assert (=> b!5255890 m!6298516))

(assert (=> b!5255890 m!6298516))

(declare-fun m!6298596 () Bool)

(assert (=> b!5255890 m!6298596))

(assert (=> b!5255890 m!6298520))

(assert (=> b!5255890 m!6298596))

(assert (=> b!5255890 m!6298520))

(declare-fun m!6298598 () Bool)

(assert (=> b!5255890 m!6298598))

(assert (=> b!5255612 d!1692217))

(declare-fun d!1692219 () Bool)

(declare-fun c!909470 () Bool)

(declare-fun e!3269700 () Bool)

(assert (=> d!1692219 (= c!909470 e!3269700)))

(declare-fun res!2230473 () Bool)

(assert (=> d!1692219 (=> (not res!2230473) (not e!3269700))))

(assert (=> d!1692219 (= res!2230473 (is-Cons!60786 (exprs!4754 lt!2153961)))))

(declare-fun e!3269698 () (Set Context!8508))

(assert (=> d!1692219 (= (derivationStepZipperUp!242 lt!2153961 (h!67233 s!2326)) e!3269698)))

(declare-fun bm!372475 () Bool)

(declare-fun call!372480 () (Set Context!8508))

(assert (=> bm!372475 (= call!372480 (derivationStepZipperDown!318 (h!67234 (exprs!4754 lt!2153961)) (Context!8509 (t!374093 (exprs!4754 lt!2153961))) (h!67233 s!2326)))))

(declare-fun b!5255891 () Bool)

(declare-fun e!3269699 () (Set Context!8508))

(assert (=> b!5255891 (= e!3269698 e!3269699)))

(declare-fun c!909471 () Bool)

(assert (=> b!5255891 (= c!909471 (is-Cons!60786 (exprs!4754 lt!2153961)))))

(declare-fun b!5255892 () Bool)

(assert (=> b!5255892 (= e!3269699 (as set.empty (Set Context!8508)))))

(declare-fun b!5255893 () Bool)

(assert (=> b!5255893 (= e!3269700 (nullable!5039 (h!67234 (exprs!4754 lt!2153961))))))

(declare-fun b!5255894 () Bool)

(assert (=> b!5255894 (= e!3269699 call!372480)))

(declare-fun b!5255895 () Bool)

(assert (=> b!5255895 (= e!3269698 (set.union call!372480 (derivationStepZipperUp!242 (Context!8509 (t!374093 (exprs!4754 lt!2153961))) (h!67233 s!2326))))))

(assert (= (and d!1692219 res!2230473) b!5255893))

(assert (= (and d!1692219 c!909470) b!5255895))

(assert (= (and d!1692219 (not c!909470)) b!5255891))

(assert (= (and b!5255891 c!909471) b!5255894))

(assert (= (and b!5255891 (not c!909471)) b!5255892))

(assert (= (or b!5255895 b!5255894) bm!372475))

(declare-fun m!6298600 () Bool)

(assert (=> bm!372475 m!6298600))

(declare-fun m!6298602 () Bool)

(assert (=> b!5255893 m!6298602))

(declare-fun m!6298604 () Bool)

(assert (=> b!5255895 m!6298604))

(assert (=> b!5255612 d!1692219))

(declare-fun d!1692221 () Bool)

(assert (=> d!1692221 (= (flatMap!597 lt!2153923 lambda!264816) (dynLambda!24017 lambda!264816 lt!2153961))))

(declare-fun lt!2154148 () Unit!152974)

(assert (=> d!1692221 (= lt!2154148 (choose!39183 lt!2153923 lt!2153961 lambda!264816))))

(assert (=> d!1692221 (= lt!2153923 (set.insert lt!2153961 (as set.empty (Set Context!8508))))))

(assert (=> d!1692221 (= (lemmaFlatMapOnSingletonSet!129 lt!2153923 lt!2153961 lambda!264816) lt!2154148)))

(declare-fun b_lambda!202897 () Bool)

(assert (=> (not b_lambda!202897) (not d!1692221)))

(declare-fun bs!1218833 () Bool)

(assert (= bs!1218833 d!1692221))

(assert (=> bs!1218833 m!6298320))

(declare-fun m!6298606 () Bool)

(assert (=> bs!1218833 m!6298606))

(declare-fun m!6298608 () Bool)

(assert (=> bs!1218833 m!6298608))

(assert (=> bs!1218833 m!6298308))

(assert (=> b!5255612 d!1692221))

(declare-fun d!1692223 () Bool)

(declare-fun nullableFct!1427 (Regex!14870) Bool)

(assert (=> d!1692223 (= (nullable!5039 (regTwo!30253 (regOne!30252 r!7292))) (nullableFct!1427 (regTwo!30253 (regOne!30252 r!7292))))))

(declare-fun bs!1218834 () Bool)

(assert (= bs!1218834 d!1692223))

(declare-fun m!6298610 () Bool)

(assert (=> bs!1218834 m!6298610))

(assert (=> b!5255612 d!1692223))

(declare-fun d!1692225 () Bool)

(declare-fun choose!39184 ((Set Context!8508) Int) (Set Context!8508))

(assert (=> d!1692225 (= (flatMap!597 lt!2153939 lambda!264816) (choose!39184 lt!2153939 lambda!264816))))

(declare-fun bs!1218835 () Bool)

(assert (= bs!1218835 d!1692225))

(declare-fun m!6298612 () Bool)

(assert (=> bs!1218835 m!6298612))

(assert (=> b!5255612 d!1692225))

(declare-fun d!1692227 () Bool)

(assert (=> d!1692227 (= (flatMap!597 lt!2153923 lambda!264816) (choose!39184 lt!2153923 lambda!264816))))

(declare-fun bs!1218836 () Bool)

(assert (= bs!1218836 d!1692227))

(declare-fun m!6298614 () Bool)

(assert (=> bs!1218836 m!6298614))

(assert (=> b!5255612 d!1692227))

(declare-fun d!1692229 () Bool)

(declare-fun c!909472 () Bool)

(assert (=> d!1692229 (= c!909472 (isEmpty!32729 s!2326))))

(declare-fun e!3269701 () Bool)

(assert (=> d!1692229 (= (matchZipper!1114 lt!2153939 s!2326) e!3269701)))

(declare-fun b!5255896 () Bool)

(assert (=> b!5255896 (= e!3269701 (nullableZipper!1275 lt!2153939))))

(declare-fun b!5255897 () Bool)

(assert (=> b!5255897 (= e!3269701 (matchZipper!1114 (derivationStepZipper!1119 lt!2153939 (head!11268 s!2326)) (tail!10365 s!2326)))))

(assert (= (and d!1692229 c!909472) b!5255896))

(assert (= (and d!1692229 (not c!909472)) b!5255897))

(assert (=> d!1692229 m!6298512))

(declare-fun m!6298616 () Bool)

(assert (=> b!5255896 m!6298616))

(assert (=> b!5255897 m!6298516))

(assert (=> b!5255897 m!6298516))

(declare-fun m!6298618 () Bool)

(assert (=> b!5255897 m!6298618))

(assert (=> b!5255897 m!6298520))

(assert (=> b!5255897 m!6298618))

(assert (=> b!5255897 m!6298520))

(declare-fun m!6298620 () Bool)

(assert (=> b!5255897 m!6298620))

(assert (=> b!5255612 d!1692229))

(declare-fun d!1692231 () Bool)

(assert (=> d!1692231 (= (nullable!5039 (regOne!30253 (regOne!30252 r!7292))) (nullableFct!1427 (regOne!30253 (regOne!30252 r!7292))))))

(declare-fun bs!1218837 () Bool)

(assert (= bs!1218837 d!1692231))

(declare-fun m!6298622 () Bool)

(assert (=> bs!1218837 m!6298622))

(assert (=> b!5255612 d!1692231))

(declare-fun bs!1218838 () Bool)

(declare-fun d!1692233 () Bool)

(assert (= bs!1218838 (and d!1692233 b!5255599)))

(declare-fun lambda!264847 () Int)

(assert (=> bs!1218838 (= lambda!264847 lambda!264817)))

(declare-fun bs!1218839 () Bool)

(assert (= bs!1218839 (and d!1692233 d!1692205)))

(assert (=> bs!1218839 (= lambda!264847 lambda!264838)))

(declare-fun bs!1218840 () Bool)

(assert (= bs!1218840 (and d!1692233 d!1692207)))

(assert (=> bs!1218840 (= lambda!264847 lambda!264841)))

(declare-fun bs!1218841 () Bool)

(assert (= bs!1218841 (and d!1692233 d!1692211)))

(assert (=> bs!1218841 (= lambda!264847 lambda!264844)))

(declare-fun b!5255918 () Bool)

(declare-fun e!3269718 () Bool)

(declare-fun lt!2154151 () Regex!14870)

(declare-fun isConcat!333 (Regex!14870) Bool)

(assert (=> b!5255918 (= e!3269718 (isConcat!333 lt!2154151))))

(declare-fun b!5255919 () Bool)

(declare-fun e!3269715 () Bool)

(assert (=> b!5255919 (= e!3269715 (isEmpty!32726 (t!374093 (exprs!4754 (h!67235 zl!343)))))))

(declare-fun b!5255920 () Bool)

(declare-fun e!3269719 () Bool)

(assert (=> b!5255920 (= e!3269719 e!3269718)))

(declare-fun c!909481 () Bool)

(assert (=> b!5255920 (= c!909481 (isEmpty!32726 (tail!10366 (exprs!4754 (h!67235 zl!343)))))))

(declare-fun b!5255921 () Bool)

(declare-fun e!3269716 () Bool)

(assert (=> b!5255921 (= e!3269716 e!3269719)))

(declare-fun c!909483 () Bool)

(assert (=> b!5255921 (= c!909483 (isEmpty!32726 (exprs!4754 (h!67235 zl!343))))))

(declare-fun b!5255922 () Bool)

(declare-fun e!3269714 () Regex!14870)

(assert (=> b!5255922 (= e!3269714 (Concat!23715 (h!67234 (exprs!4754 (h!67235 zl!343))) (generalisedConcat!539 (t!374093 (exprs!4754 (h!67235 zl!343))))))))

(assert (=> d!1692233 e!3269716))

(declare-fun res!2230479 () Bool)

(assert (=> d!1692233 (=> (not res!2230479) (not e!3269716))))

(assert (=> d!1692233 (= res!2230479 (validRegex!6606 lt!2154151))))

(declare-fun e!3269717 () Regex!14870)

(assert (=> d!1692233 (= lt!2154151 e!3269717)))

(declare-fun c!909484 () Bool)

(assert (=> d!1692233 (= c!909484 e!3269715)))

(declare-fun res!2230478 () Bool)

(assert (=> d!1692233 (=> (not res!2230478) (not e!3269715))))

(assert (=> d!1692233 (= res!2230478 (is-Cons!60786 (exprs!4754 (h!67235 zl!343))))))

(assert (=> d!1692233 (forall!14284 (exprs!4754 (h!67235 zl!343)) lambda!264847)))

(assert (=> d!1692233 (= (generalisedConcat!539 (exprs!4754 (h!67235 zl!343))) lt!2154151)))

(declare-fun b!5255923 () Bool)

(assert (=> b!5255923 (= e!3269717 (h!67234 (exprs!4754 (h!67235 zl!343))))))

(declare-fun b!5255924 () Bool)

(assert (=> b!5255924 (= e!3269714 EmptyExpr!14870)))

(declare-fun b!5255925 () Bool)

(assert (=> b!5255925 (= e!3269718 (= lt!2154151 (head!11269 (exprs!4754 (h!67235 zl!343)))))))

(declare-fun b!5255926 () Bool)

(assert (=> b!5255926 (= e!3269717 e!3269714)))

(declare-fun c!909482 () Bool)

(assert (=> b!5255926 (= c!909482 (is-Cons!60786 (exprs!4754 (h!67235 zl!343))))))

(declare-fun b!5255927 () Bool)

(declare-fun isEmptyExpr!810 (Regex!14870) Bool)

(assert (=> b!5255927 (= e!3269719 (isEmptyExpr!810 lt!2154151))))

(assert (= (and d!1692233 res!2230478) b!5255919))

(assert (= (and d!1692233 c!909484) b!5255923))

(assert (= (and d!1692233 (not c!909484)) b!5255926))

(assert (= (and b!5255926 c!909482) b!5255922))

(assert (= (and b!5255926 (not c!909482)) b!5255924))

(assert (= (and d!1692233 res!2230479) b!5255921))

(assert (= (and b!5255921 c!909483) b!5255927))

(assert (= (and b!5255921 (not c!909483)) b!5255920))

(assert (= (and b!5255920 c!909481) b!5255925))

(assert (= (and b!5255920 (not c!909481)) b!5255918))

(declare-fun m!6298624 () Bool)

(assert (=> b!5255927 m!6298624))

(assert (=> b!5255922 m!6298228))

(assert (=> b!5255919 m!6298332))

(declare-fun m!6298626 () Bool)

(assert (=> b!5255920 m!6298626))

(assert (=> b!5255920 m!6298626))

(declare-fun m!6298628 () Bool)

(assert (=> b!5255920 m!6298628))

(declare-fun m!6298630 () Bool)

(assert (=> b!5255921 m!6298630))

(declare-fun m!6298632 () Bool)

(assert (=> d!1692233 m!6298632))

(declare-fun m!6298634 () Bool)

(assert (=> d!1692233 m!6298634))

(declare-fun m!6298636 () Bool)

(assert (=> b!5255925 m!6298636))

(declare-fun m!6298638 () Bool)

(assert (=> b!5255918 m!6298638))

(assert (=> b!5255592 d!1692233))

(declare-fun e!3269722 () Bool)

(declare-fun d!1692235 () Bool)

(assert (=> d!1692235 (= (matchZipper!1114 (set.union lt!2153944 lt!2153964) (t!374092 s!2326)) e!3269722)))

(declare-fun res!2230482 () Bool)

(assert (=> d!1692235 (=> res!2230482 e!3269722)))

(assert (=> d!1692235 (= res!2230482 (matchZipper!1114 lt!2153944 (t!374092 s!2326)))))

(declare-fun lt!2154154 () Unit!152974)

(declare-fun choose!39185 ((Set Context!8508) (Set Context!8508) List!60909) Unit!152974)

(assert (=> d!1692235 (= lt!2154154 (choose!39185 lt!2153944 lt!2153964 (t!374092 s!2326)))))

(assert (=> d!1692235 (= (lemmaZipperConcatMatchesSameAsBothZippers!107 lt!2153944 lt!2153964 (t!374092 s!2326)) lt!2154154)))

(declare-fun b!5255930 () Bool)

(assert (=> b!5255930 (= e!3269722 (matchZipper!1114 lt!2153964 (t!374092 s!2326)))))

(assert (= (and d!1692235 (not res!2230482)) b!5255930))

(assert (=> d!1692235 m!6298282))

(assert (=> d!1692235 m!6298230))

(declare-fun m!6298640 () Bool)

(assert (=> d!1692235 m!6298640))

(assert (=> b!5255930 m!6298226))

(assert (=> b!5255613 d!1692235))

(declare-fun d!1692237 () Bool)

(declare-fun c!909485 () Bool)

(assert (=> d!1692237 (= c!909485 (isEmpty!32729 (t!374092 s!2326)))))

(declare-fun e!3269723 () Bool)

(assert (=> d!1692237 (= (matchZipper!1114 lt!2153944 (t!374092 s!2326)) e!3269723)))

(declare-fun b!5255931 () Bool)

(assert (=> b!5255931 (= e!3269723 (nullableZipper!1275 lt!2153944))))

(declare-fun b!5255932 () Bool)

(assert (=> b!5255932 (= e!3269723 (matchZipper!1114 (derivationStepZipper!1119 lt!2153944 (head!11268 (t!374092 s!2326))) (tail!10365 (t!374092 s!2326))))))

(assert (= (and d!1692237 c!909485) b!5255931))

(assert (= (and d!1692237 (not c!909485)) b!5255932))

(assert (=> d!1692237 m!6298542))

(declare-fun m!6298642 () Bool)

(assert (=> b!5255931 m!6298642))

(assert (=> b!5255932 m!6298546))

(assert (=> b!5255932 m!6298546))

(declare-fun m!6298644 () Bool)

(assert (=> b!5255932 m!6298644))

(assert (=> b!5255932 m!6298550))

(assert (=> b!5255932 m!6298644))

(assert (=> b!5255932 m!6298550))

(declare-fun m!6298646 () Bool)

(assert (=> b!5255932 m!6298646))

(assert (=> b!5255613 d!1692237))

(declare-fun d!1692239 () Bool)

(declare-fun c!909486 () Bool)

(assert (=> d!1692239 (= c!909486 (isEmpty!32729 (t!374092 s!2326)))))

(declare-fun e!3269724 () Bool)

(assert (=> d!1692239 (= (matchZipper!1114 (set.union lt!2153944 lt!2153964) (t!374092 s!2326)) e!3269724)))

(declare-fun b!5255933 () Bool)

(assert (=> b!5255933 (= e!3269724 (nullableZipper!1275 (set.union lt!2153944 lt!2153964)))))

(declare-fun b!5255934 () Bool)

(assert (=> b!5255934 (= e!3269724 (matchZipper!1114 (derivationStepZipper!1119 (set.union lt!2153944 lt!2153964) (head!11268 (t!374092 s!2326))) (tail!10365 (t!374092 s!2326))))))

(assert (= (and d!1692239 c!909486) b!5255933))

(assert (= (and d!1692239 (not c!909486)) b!5255934))

(assert (=> d!1692239 m!6298542))

(declare-fun m!6298648 () Bool)

(assert (=> b!5255933 m!6298648))

(assert (=> b!5255934 m!6298546))

(assert (=> b!5255934 m!6298546))

(declare-fun m!6298650 () Bool)

(assert (=> b!5255934 m!6298650))

(assert (=> b!5255934 m!6298550))

(assert (=> b!5255934 m!6298650))

(assert (=> b!5255934 m!6298550))

(declare-fun m!6298652 () Bool)

(assert (=> b!5255934 m!6298652))

(assert (=> b!5255613 d!1692239))

(declare-fun d!1692241 () Bool)

(declare-fun lt!2154157 () Int)

(assert (=> d!1692241 (>= lt!2154157 0)))

(declare-fun e!3269727 () Int)

(assert (=> d!1692241 (= lt!2154157 e!3269727)))

(declare-fun c!909489 () Bool)

(assert (=> d!1692241 (= c!909489 (is-Cons!60787 lt!2153937))))

(assert (=> d!1692241 (= (zipperDepthTotal!51 lt!2153937) lt!2154157)))

(declare-fun b!5255939 () Bool)

(declare-fun contextDepthTotal!33 (Context!8508) Int)

(assert (=> b!5255939 (= e!3269727 (+ (contextDepthTotal!33 (h!67235 lt!2153937)) (zipperDepthTotal!51 (t!374094 lt!2153937))))))

(declare-fun b!5255940 () Bool)

(assert (=> b!5255940 (= e!3269727 0)))

(assert (= (and d!1692241 c!909489) b!5255939))

(assert (= (and d!1692241 (not c!909489)) b!5255940))

(declare-fun m!6298654 () Bool)

(assert (=> b!5255939 m!6298654))

(declare-fun m!6298656 () Bool)

(assert (=> b!5255939 m!6298656))

(assert (=> b!5255594 d!1692241))

(declare-fun d!1692243 () Bool)

(assert (=> d!1692243 (= (matchR!7055 (Concat!23715 (Union!14870 (regOne!30253 (regOne!30252 r!7292)) (regTwo!30253 (regOne!30252 r!7292))) (regTwo!30252 r!7292)) s!2326) (matchR!7055 (Union!14870 (Concat!23715 (regOne!30253 (regOne!30252 r!7292)) (regTwo!30252 r!7292)) (Concat!23715 (regTwo!30253 (regOne!30252 r!7292)) (regTwo!30252 r!7292))) s!2326))))

(declare-fun lt!2154160 () Unit!152974)

(declare-fun choose!39186 (Regex!14870 Regex!14870 Regex!14870 List!60909) Unit!152974)

(assert (=> d!1692243 (= lt!2154160 (choose!39186 (regOne!30253 (regOne!30252 r!7292)) (regTwo!30253 (regOne!30252 r!7292)) (regTwo!30252 r!7292) s!2326))))

(assert (=> d!1692243 (validRegex!6606 (regOne!30253 (regOne!30252 r!7292)))))

(assert (=> d!1692243 (= (lemmaConcatDistributesInUnion!15 (regOne!30253 (regOne!30252 r!7292)) (regTwo!30253 (regOne!30252 r!7292)) (regTwo!30252 r!7292) s!2326) lt!2154160)))

(declare-fun bs!1218842 () Bool)

(assert (= bs!1218842 d!1692243))

(declare-fun m!6298658 () Bool)

(assert (=> bs!1218842 m!6298658))

(declare-fun m!6298660 () Bool)

(assert (=> bs!1218842 m!6298660))

(declare-fun m!6298662 () Bool)

(assert (=> bs!1218842 m!6298662))

(declare-fun m!6298664 () Bool)

(assert (=> bs!1218842 m!6298664))

(assert (=> b!5255615 d!1692243))

(declare-fun bs!1218843 () Bool)

(declare-fun b!5255981 () Bool)

(assert (= bs!1218843 (and b!5255981 b!5255588)))

(declare-fun lambda!264852 () Int)

(assert (=> bs!1218843 (not (= lambda!264852 lambda!264814))))

(assert (=> bs!1218843 (not (= lambda!264852 lambda!264815))))

(assert (=> b!5255981 true))

(assert (=> b!5255981 true))

(declare-fun bs!1218844 () Bool)

(declare-fun b!5255982 () Bool)

(assert (= bs!1218844 (and b!5255982 b!5255588)))

(declare-fun lambda!264853 () Int)

(assert (=> bs!1218844 (not (= lambda!264853 lambda!264814))))

(assert (=> bs!1218844 (= (and (= (regOne!30252 lt!2153955) (regOne!30252 r!7292)) (= (regTwo!30252 lt!2153955) (regTwo!30252 r!7292))) (= lambda!264853 lambda!264815))))

(declare-fun bs!1218845 () Bool)

(assert (= bs!1218845 (and b!5255982 b!5255981)))

(assert (=> bs!1218845 (not (= lambda!264853 lambda!264852))))

(assert (=> b!5255982 true))

(assert (=> b!5255982 true))

(declare-fun b!5255973 () Bool)

(declare-fun e!3269749 () Bool)

(declare-fun call!372486 () Bool)

(assert (=> b!5255973 (= e!3269749 call!372486)))

(declare-fun b!5255975 () Bool)

(declare-fun e!3269752 () Bool)

(assert (=> b!5255975 (= e!3269752 (= s!2326 (Cons!60785 (c!909406 lt!2153955) Nil!60785)))))

(declare-fun b!5255976 () Bool)

(declare-fun res!2230499 () Bool)

(declare-fun e!3269747 () Bool)

(assert (=> b!5255976 (=> res!2230499 e!3269747)))

(assert (=> b!5255976 (= res!2230499 call!372486)))

(declare-fun e!3269748 () Bool)

(assert (=> b!5255976 (= e!3269748 e!3269747)))

(declare-fun b!5255977 () Bool)

(declare-fun c!909500 () Bool)

(assert (=> b!5255977 (= c!909500 (is-Union!14870 lt!2153955))))

(declare-fun e!3269751 () Bool)

(assert (=> b!5255977 (= e!3269752 e!3269751)))

(declare-fun b!5255978 () Bool)

(assert (=> b!5255978 (= e!3269751 e!3269748)))

(declare-fun c!909499 () Bool)

(assert (=> b!5255978 (= c!909499 (is-Star!14870 lt!2153955))))

(declare-fun call!372485 () Bool)

(declare-fun bm!372480 () Bool)

(assert (=> bm!372480 (= call!372485 (Exists!2051 (ite c!909499 lambda!264852 lambda!264853)))))

(declare-fun b!5255979 () Bool)

(declare-fun e!3269750 () Bool)

(assert (=> b!5255979 (= e!3269751 e!3269750)))

(declare-fun res!2230500 () Bool)

(assert (=> b!5255979 (= res!2230500 (matchRSpec!1973 (regOne!30253 lt!2153955) s!2326))))

(assert (=> b!5255979 (=> res!2230500 e!3269750)))

(declare-fun bm!372481 () Bool)

(assert (=> bm!372481 (= call!372486 (isEmpty!32729 s!2326))))

(declare-fun b!5255980 () Bool)

(declare-fun c!909501 () Bool)

(assert (=> b!5255980 (= c!909501 (is-ElementMatch!14870 lt!2153955))))

(declare-fun e!3269746 () Bool)

(assert (=> b!5255980 (= e!3269746 e!3269752)))

(assert (=> b!5255981 (= e!3269747 call!372485)))

(assert (=> b!5255982 (= e!3269748 call!372485)))

(declare-fun b!5255983 () Bool)

(assert (=> b!5255983 (= e!3269750 (matchRSpec!1973 (regTwo!30253 lt!2153955) s!2326))))

(declare-fun b!5255974 () Bool)

(assert (=> b!5255974 (= e!3269749 e!3269746)))

(declare-fun res!2230501 () Bool)

(assert (=> b!5255974 (= res!2230501 (not (is-EmptyLang!14870 lt!2153955)))))

(assert (=> b!5255974 (=> (not res!2230501) (not e!3269746))))

(declare-fun d!1692245 () Bool)

(declare-fun c!909498 () Bool)

(assert (=> d!1692245 (= c!909498 (is-EmptyExpr!14870 lt!2153955))))

(assert (=> d!1692245 (= (matchRSpec!1973 lt!2153955 s!2326) e!3269749)))

(assert (= (and d!1692245 c!909498) b!5255973))

(assert (= (and d!1692245 (not c!909498)) b!5255974))

(assert (= (and b!5255974 res!2230501) b!5255980))

(assert (= (and b!5255980 c!909501) b!5255975))

(assert (= (and b!5255980 (not c!909501)) b!5255977))

(assert (= (and b!5255977 c!909500) b!5255979))

(assert (= (and b!5255977 (not c!909500)) b!5255978))

(assert (= (and b!5255979 (not res!2230500)) b!5255983))

(assert (= (and b!5255978 c!909499) b!5255976))

(assert (= (and b!5255978 (not c!909499)) b!5255982))

(assert (= (and b!5255976 (not res!2230499)) b!5255981))

(assert (= (or b!5255981 b!5255982) bm!372480))

(assert (= (or b!5255973 b!5255976) bm!372481))

(declare-fun m!6298666 () Bool)

(assert (=> bm!372480 m!6298666))

(declare-fun m!6298668 () Bool)

(assert (=> b!5255979 m!6298668))

(assert (=> bm!372481 m!6298512))

(declare-fun m!6298670 () Bool)

(assert (=> b!5255983 m!6298670))

(assert (=> b!5255615 d!1692245))

(declare-fun b!5256012 () Bool)

(declare-fun res!2230520 () Bool)

(declare-fun e!3269770 () Bool)

(assert (=> b!5256012 (=> res!2230520 e!3269770)))

(declare-fun e!3269773 () Bool)

(assert (=> b!5256012 (= res!2230520 e!3269773)))

(declare-fun res!2230523 () Bool)

(assert (=> b!5256012 (=> (not res!2230523) (not e!3269773))))

(declare-fun lt!2154163 () Bool)

(assert (=> b!5256012 (= res!2230523 lt!2154163)))

(declare-fun b!5256013 () Bool)

(assert (=> b!5256013 (= e!3269773 (= (head!11268 s!2326) (c!909406 lt!2153955)))))

(declare-fun b!5256014 () Bool)

(declare-fun e!3269767 () Bool)

(assert (=> b!5256014 (= e!3269767 (not (= (head!11268 s!2326) (c!909406 lt!2153955))))))

(declare-fun b!5256015 () Bool)

(declare-fun e!3269772 () Bool)

(declare-fun derivativeStep!4096 (Regex!14870 C!30010) Regex!14870)

(assert (=> b!5256015 (= e!3269772 (matchR!7055 (derivativeStep!4096 lt!2153955 (head!11268 s!2326)) (tail!10365 s!2326)))))

(declare-fun b!5256016 () Bool)

(declare-fun res!2230522 () Bool)

(assert (=> b!5256016 (=> (not res!2230522) (not e!3269773))))

(declare-fun call!372489 () Bool)

(assert (=> b!5256016 (= res!2230522 (not call!372489))))

(declare-fun b!5256017 () Bool)

(declare-fun res!2230524 () Bool)

(assert (=> b!5256017 (=> res!2230524 e!3269770)))

(assert (=> b!5256017 (= res!2230524 (not (is-ElementMatch!14870 lt!2153955)))))

(declare-fun e!3269768 () Bool)

(assert (=> b!5256017 (= e!3269768 e!3269770)))

(declare-fun b!5256019 () Bool)

(declare-fun res!2230519 () Bool)

(assert (=> b!5256019 (=> res!2230519 e!3269767)))

(assert (=> b!5256019 (= res!2230519 (not (isEmpty!32729 (tail!10365 s!2326))))))

(declare-fun b!5256020 () Bool)

(assert (=> b!5256020 (= e!3269772 (nullable!5039 lt!2153955))))

(declare-fun b!5256021 () Bool)

(declare-fun e!3269769 () Bool)

(assert (=> b!5256021 (= e!3269769 (= lt!2154163 call!372489))))

(declare-fun bm!372484 () Bool)

(assert (=> bm!372484 (= call!372489 (isEmpty!32729 s!2326))))

(declare-fun b!5256022 () Bool)

(declare-fun res!2230518 () Bool)

(assert (=> b!5256022 (=> (not res!2230518) (not e!3269773))))

(assert (=> b!5256022 (= res!2230518 (isEmpty!32729 (tail!10365 s!2326)))))

(declare-fun b!5256023 () Bool)

(assert (=> b!5256023 (= e!3269768 (not lt!2154163))))

(declare-fun b!5256024 () Bool)

(declare-fun e!3269771 () Bool)

(assert (=> b!5256024 (= e!3269770 e!3269771)))

(declare-fun res!2230521 () Bool)

(assert (=> b!5256024 (=> (not res!2230521) (not e!3269771))))

(assert (=> b!5256024 (= res!2230521 (not lt!2154163))))

(declare-fun b!5256025 () Bool)

(assert (=> b!5256025 (= e!3269769 e!3269768)))

(declare-fun c!909510 () Bool)

(assert (=> b!5256025 (= c!909510 (is-EmptyLang!14870 lt!2153955))))

(declare-fun d!1692247 () Bool)

(assert (=> d!1692247 e!3269769))

(declare-fun c!909508 () Bool)

(assert (=> d!1692247 (= c!909508 (is-EmptyExpr!14870 lt!2153955))))

(assert (=> d!1692247 (= lt!2154163 e!3269772)))

(declare-fun c!909509 () Bool)

(assert (=> d!1692247 (= c!909509 (isEmpty!32729 s!2326))))

(assert (=> d!1692247 (validRegex!6606 lt!2153955)))

(assert (=> d!1692247 (= (matchR!7055 lt!2153955 s!2326) lt!2154163)))

(declare-fun b!5256018 () Bool)

(assert (=> b!5256018 (= e!3269771 e!3269767)))

(declare-fun res!2230525 () Bool)

(assert (=> b!5256018 (=> res!2230525 e!3269767)))

(assert (=> b!5256018 (= res!2230525 call!372489)))

(assert (= (and d!1692247 c!909509) b!5256020))

(assert (= (and d!1692247 (not c!909509)) b!5256015))

(assert (= (and d!1692247 c!909508) b!5256021))

(assert (= (and d!1692247 (not c!909508)) b!5256025))

(assert (= (and b!5256025 c!909510) b!5256023))

(assert (= (and b!5256025 (not c!909510)) b!5256017))

(assert (= (and b!5256017 (not res!2230524)) b!5256012))

(assert (= (and b!5256012 res!2230523) b!5256016))

(assert (= (and b!5256016 res!2230522) b!5256022))

(assert (= (and b!5256022 res!2230518) b!5256013))

(assert (= (and b!5256012 (not res!2230520)) b!5256024))

(assert (= (and b!5256024 res!2230521) b!5256018))

(assert (= (and b!5256018 (not res!2230525)) b!5256019))

(assert (= (and b!5256019 (not res!2230519)) b!5256014))

(assert (= (or b!5256021 b!5256016 b!5256018) bm!372484))

(assert (=> d!1692247 m!6298512))

(declare-fun m!6298672 () Bool)

(assert (=> d!1692247 m!6298672))

(assert (=> b!5256014 m!6298516))

(declare-fun m!6298674 () Bool)

(assert (=> b!5256020 m!6298674))

(assert (=> b!5256019 m!6298520))

(assert (=> b!5256019 m!6298520))

(declare-fun m!6298676 () Bool)

(assert (=> b!5256019 m!6298676))

(assert (=> b!5256013 m!6298516))

(assert (=> b!5256015 m!6298516))

(assert (=> b!5256015 m!6298516))

(declare-fun m!6298678 () Bool)

(assert (=> b!5256015 m!6298678))

(assert (=> b!5256015 m!6298520))

(assert (=> b!5256015 m!6298678))

(assert (=> b!5256015 m!6298520))

(declare-fun m!6298680 () Bool)

(assert (=> b!5256015 m!6298680))

(assert (=> b!5256022 m!6298520))

(assert (=> b!5256022 m!6298520))

(assert (=> b!5256022 m!6298676))

(assert (=> bm!372484 m!6298512))

(assert (=> b!5255615 d!1692247))

(declare-fun d!1692249 () Bool)

(assert (=> d!1692249 (= (matchR!7055 lt!2153955 s!2326) (matchRSpec!1973 lt!2153955 s!2326))))

(declare-fun lt!2154166 () Unit!152974)

(declare-fun choose!39187 (Regex!14870 List!60909) Unit!152974)

(assert (=> d!1692249 (= lt!2154166 (choose!39187 lt!2153955 s!2326))))

(assert (=> d!1692249 (validRegex!6606 lt!2153955)))

(assert (=> d!1692249 (= (mainMatchTheorem!1973 lt!2153955 s!2326) lt!2154166)))

(declare-fun bs!1218846 () Bool)

(assert (= bs!1218846 d!1692249))

(assert (=> bs!1218846 m!6298270))

(assert (=> bs!1218846 m!6298274))

(declare-fun m!6298682 () Bool)

(assert (=> bs!1218846 m!6298682))

(assert (=> bs!1218846 m!6298672))

(assert (=> b!5255615 d!1692249))

(declare-fun d!1692251 () Bool)

(assert (=> d!1692251 (= (matchR!7055 lt!2153975 s!2326) (matchRSpec!1973 lt!2153975 s!2326))))

(declare-fun lt!2154167 () Unit!152974)

(assert (=> d!1692251 (= lt!2154167 (choose!39187 lt!2153975 s!2326))))

(assert (=> d!1692251 (validRegex!6606 lt!2153975)))

(assert (=> d!1692251 (= (mainMatchTheorem!1973 lt!2153975 s!2326) lt!2154167)))

(declare-fun bs!1218847 () Bool)

(assert (= bs!1218847 d!1692251))

(assert (=> bs!1218847 m!6298268))

(assert (=> bs!1218847 m!6298278))

(declare-fun m!6298684 () Bool)

(assert (=> bs!1218847 m!6298684))

(declare-fun m!6298686 () Bool)

(assert (=> bs!1218847 m!6298686))

(assert (=> b!5255615 d!1692251))

(declare-fun b!5256026 () Bool)

(declare-fun res!2230528 () Bool)

(declare-fun e!3269777 () Bool)

(assert (=> b!5256026 (=> res!2230528 e!3269777)))

(declare-fun e!3269780 () Bool)

(assert (=> b!5256026 (= res!2230528 e!3269780)))

(declare-fun res!2230531 () Bool)

(assert (=> b!5256026 (=> (not res!2230531) (not e!3269780))))

(declare-fun lt!2154168 () Bool)

(assert (=> b!5256026 (= res!2230531 lt!2154168)))

(declare-fun b!5256027 () Bool)

(assert (=> b!5256027 (= e!3269780 (= (head!11268 s!2326) (c!909406 lt!2153975)))))

(declare-fun b!5256028 () Bool)

(declare-fun e!3269774 () Bool)

(assert (=> b!5256028 (= e!3269774 (not (= (head!11268 s!2326) (c!909406 lt!2153975))))))

(declare-fun b!5256029 () Bool)

(declare-fun e!3269779 () Bool)

(assert (=> b!5256029 (= e!3269779 (matchR!7055 (derivativeStep!4096 lt!2153975 (head!11268 s!2326)) (tail!10365 s!2326)))))

(declare-fun b!5256030 () Bool)

(declare-fun res!2230530 () Bool)

(assert (=> b!5256030 (=> (not res!2230530) (not e!3269780))))

(declare-fun call!372490 () Bool)

(assert (=> b!5256030 (= res!2230530 (not call!372490))))

(declare-fun b!5256031 () Bool)

(declare-fun res!2230532 () Bool)

(assert (=> b!5256031 (=> res!2230532 e!3269777)))

(assert (=> b!5256031 (= res!2230532 (not (is-ElementMatch!14870 lt!2153975)))))

(declare-fun e!3269775 () Bool)

(assert (=> b!5256031 (= e!3269775 e!3269777)))

(declare-fun b!5256033 () Bool)

(declare-fun res!2230527 () Bool)

(assert (=> b!5256033 (=> res!2230527 e!3269774)))

(assert (=> b!5256033 (= res!2230527 (not (isEmpty!32729 (tail!10365 s!2326))))))

(declare-fun b!5256034 () Bool)

(assert (=> b!5256034 (= e!3269779 (nullable!5039 lt!2153975))))

(declare-fun b!5256035 () Bool)

(declare-fun e!3269776 () Bool)

(assert (=> b!5256035 (= e!3269776 (= lt!2154168 call!372490))))

(declare-fun bm!372485 () Bool)

(assert (=> bm!372485 (= call!372490 (isEmpty!32729 s!2326))))

(declare-fun b!5256036 () Bool)

(declare-fun res!2230526 () Bool)

(assert (=> b!5256036 (=> (not res!2230526) (not e!3269780))))

(assert (=> b!5256036 (= res!2230526 (isEmpty!32729 (tail!10365 s!2326)))))

(declare-fun b!5256037 () Bool)

(assert (=> b!5256037 (= e!3269775 (not lt!2154168))))

(declare-fun b!5256038 () Bool)

(declare-fun e!3269778 () Bool)

(assert (=> b!5256038 (= e!3269777 e!3269778)))

(declare-fun res!2230529 () Bool)

(assert (=> b!5256038 (=> (not res!2230529) (not e!3269778))))

(assert (=> b!5256038 (= res!2230529 (not lt!2154168))))

(declare-fun b!5256039 () Bool)

(assert (=> b!5256039 (= e!3269776 e!3269775)))

(declare-fun c!909513 () Bool)

(assert (=> b!5256039 (= c!909513 (is-EmptyLang!14870 lt!2153975))))

(declare-fun d!1692253 () Bool)

(assert (=> d!1692253 e!3269776))

(declare-fun c!909511 () Bool)

(assert (=> d!1692253 (= c!909511 (is-EmptyExpr!14870 lt!2153975))))

(assert (=> d!1692253 (= lt!2154168 e!3269779)))

(declare-fun c!909512 () Bool)

(assert (=> d!1692253 (= c!909512 (isEmpty!32729 s!2326))))

(assert (=> d!1692253 (validRegex!6606 lt!2153975)))

(assert (=> d!1692253 (= (matchR!7055 lt!2153975 s!2326) lt!2154168)))

(declare-fun b!5256032 () Bool)

(assert (=> b!5256032 (= e!3269778 e!3269774)))

(declare-fun res!2230533 () Bool)

(assert (=> b!5256032 (=> res!2230533 e!3269774)))

(assert (=> b!5256032 (= res!2230533 call!372490)))

(assert (= (and d!1692253 c!909512) b!5256034))

(assert (= (and d!1692253 (not c!909512)) b!5256029))

(assert (= (and d!1692253 c!909511) b!5256035))

(assert (= (and d!1692253 (not c!909511)) b!5256039))

(assert (= (and b!5256039 c!909513) b!5256037))

(assert (= (and b!5256039 (not c!909513)) b!5256031))

(assert (= (and b!5256031 (not res!2230532)) b!5256026))

(assert (= (and b!5256026 res!2230531) b!5256030))

(assert (= (and b!5256030 res!2230530) b!5256036))

(assert (= (and b!5256036 res!2230526) b!5256027))

(assert (= (and b!5256026 (not res!2230528)) b!5256038))

(assert (= (and b!5256038 res!2230529) b!5256032))

(assert (= (and b!5256032 (not res!2230533)) b!5256033))

(assert (= (and b!5256033 (not res!2230527)) b!5256028))

(assert (= (or b!5256035 b!5256030 b!5256032) bm!372485))

(assert (=> d!1692253 m!6298512))

(assert (=> d!1692253 m!6298686))

(assert (=> b!5256028 m!6298516))

(declare-fun m!6298688 () Bool)

(assert (=> b!5256034 m!6298688))

(assert (=> b!5256033 m!6298520))

(assert (=> b!5256033 m!6298520))

(assert (=> b!5256033 m!6298676))

(assert (=> b!5256027 m!6298516))

(assert (=> b!5256029 m!6298516))

(assert (=> b!5256029 m!6298516))

(declare-fun m!6298690 () Bool)

(assert (=> b!5256029 m!6298690))

(assert (=> b!5256029 m!6298520))

(assert (=> b!5256029 m!6298690))

(assert (=> b!5256029 m!6298520))

(declare-fun m!6298692 () Bool)

(assert (=> b!5256029 m!6298692))

(assert (=> b!5256036 m!6298520))

(assert (=> b!5256036 m!6298520))

(assert (=> b!5256036 m!6298676))

(assert (=> bm!372485 m!6298512))

(assert (=> b!5255615 d!1692253))

(declare-fun bs!1218848 () Bool)

(declare-fun b!5256048 () Bool)

(assert (= bs!1218848 (and b!5256048 b!5255588)))

(declare-fun lambda!264854 () Int)

(assert (=> bs!1218848 (not (= lambda!264854 lambda!264814))))

(assert (=> bs!1218848 (not (= lambda!264854 lambda!264815))))

(declare-fun bs!1218849 () Bool)

(assert (= bs!1218849 (and b!5256048 b!5255981)))

(assert (=> bs!1218849 (= (and (= (reg!15199 lt!2153975) (reg!15199 lt!2153955)) (= lt!2153975 lt!2153955)) (= lambda!264854 lambda!264852))))

(declare-fun bs!1218850 () Bool)

(assert (= bs!1218850 (and b!5256048 b!5255982)))

(assert (=> bs!1218850 (not (= lambda!264854 lambda!264853))))

(assert (=> b!5256048 true))

(assert (=> b!5256048 true))

(declare-fun bs!1218851 () Bool)

(declare-fun b!5256049 () Bool)

(assert (= bs!1218851 (and b!5256049 b!5255981)))

(declare-fun lambda!264855 () Int)

(assert (=> bs!1218851 (not (= lambda!264855 lambda!264852))))

(declare-fun bs!1218852 () Bool)

(assert (= bs!1218852 (and b!5256049 b!5255982)))

(assert (=> bs!1218852 (= (and (= (regOne!30252 lt!2153975) (regOne!30252 lt!2153955)) (= (regTwo!30252 lt!2153975) (regTwo!30252 lt!2153955))) (= lambda!264855 lambda!264853))))

(declare-fun bs!1218853 () Bool)

(assert (= bs!1218853 (and b!5256049 b!5255588)))

(assert (=> bs!1218853 (= (and (= (regOne!30252 lt!2153975) (regOne!30252 r!7292)) (= (regTwo!30252 lt!2153975) (regTwo!30252 r!7292))) (= lambda!264855 lambda!264815))))

(declare-fun bs!1218854 () Bool)

(assert (= bs!1218854 (and b!5256049 b!5256048)))

(assert (=> bs!1218854 (not (= lambda!264855 lambda!264854))))

(assert (=> bs!1218853 (not (= lambda!264855 lambda!264814))))

(assert (=> b!5256049 true))

(assert (=> b!5256049 true))

(declare-fun b!5256040 () Bool)

(declare-fun e!3269784 () Bool)

(declare-fun call!372492 () Bool)

(assert (=> b!5256040 (= e!3269784 call!372492)))

(declare-fun b!5256042 () Bool)

(declare-fun e!3269787 () Bool)

(assert (=> b!5256042 (= e!3269787 (= s!2326 (Cons!60785 (c!909406 lt!2153975) Nil!60785)))))

(declare-fun b!5256043 () Bool)

(declare-fun res!2230534 () Bool)

(declare-fun e!3269782 () Bool)

(assert (=> b!5256043 (=> res!2230534 e!3269782)))

(assert (=> b!5256043 (= res!2230534 call!372492)))

(declare-fun e!3269783 () Bool)

(assert (=> b!5256043 (= e!3269783 e!3269782)))

(declare-fun b!5256044 () Bool)

(declare-fun c!909516 () Bool)

(assert (=> b!5256044 (= c!909516 (is-Union!14870 lt!2153975))))

(declare-fun e!3269786 () Bool)

(assert (=> b!5256044 (= e!3269787 e!3269786)))

(declare-fun b!5256045 () Bool)

(assert (=> b!5256045 (= e!3269786 e!3269783)))

(declare-fun c!909515 () Bool)

(assert (=> b!5256045 (= c!909515 (is-Star!14870 lt!2153975))))

(declare-fun bm!372486 () Bool)

(declare-fun call!372491 () Bool)

(assert (=> bm!372486 (= call!372491 (Exists!2051 (ite c!909515 lambda!264854 lambda!264855)))))

(declare-fun b!5256046 () Bool)

(declare-fun e!3269785 () Bool)

(assert (=> b!5256046 (= e!3269786 e!3269785)))

(declare-fun res!2230535 () Bool)

(assert (=> b!5256046 (= res!2230535 (matchRSpec!1973 (regOne!30253 lt!2153975) s!2326))))

(assert (=> b!5256046 (=> res!2230535 e!3269785)))

(declare-fun bm!372487 () Bool)

(assert (=> bm!372487 (= call!372492 (isEmpty!32729 s!2326))))

(declare-fun b!5256047 () Bool)

(declare-fun c!909517 () Bool)

(assert (=> b!5256047 (= c!909517 (is-ElementMatch!14870 lt!2153975))))

(declare-fun e!3269781 () Bool)

(assert (=> b!5256047 (= e!3269781 e!3269787)))

(assert (=> b!5256048 (= e!3269782 call!372491)))

(assert (=> b!5256049 (= e!3269783 call!372491)))

(declare-fun b!5256050 () Bool)

(assert (=> b!5256050 (= e!3269785 (matchRSpec!1973 (regTwo!30253 lt!2153975) s!2326))))

(declare-fun b!5256041 () Bool)

(assert (=> b!5256041 (= e!3269784 e!3269781)))

(declare-fun res!2230536 () Bool)

(assert (=> b!5256041 (= res!2230536 (not (is-EmptyLang!14870 lt!2153975)))))

(assert (=> b!5256041 (=> (not res!2230536) (not e!3269781))))

(declare-fun d!1692255 () Bool)

(declare-fun c!909514 () Bool)

(assert (=> d!1692255 (= c!909514 (is-EmptyExpr!14870 lt!2153975))))

(assert (=> d!1692255 (= (matchRSpec!1973 lt!2153975 s!2326) e!3269784)))

(assert (= (and d!1692255 c!909514) b!5256040))

(assert (= (and d!1692255 (not c!909514)) b!5256041))

(assert (= (and b!5256041 res!2230536) b!5256047))

(assert (= (and b!5256047 c!909517) b!5256042))

(assert (= (and b!5256047 (not c!909517)) b!5256044))

(assert (= (and b!5256044 c!909516) b!5256046))

(assert (= (and b!5256044 (not c!909516)) b!5256045))

(assert (= (and b!5256046 (not res!2230535)) b!5256050))

(assert (= (and b!5256045 c!909515) b!5256043))

(assert (= (and b!5256045 (not c!909515)) b!5256049))

(assert (= (and b!5256043 (not res!2230534)) b!5256048))

(assert (= (or b!5256048 b!5256049) bm!372486))

(assert (= (or b!5256040 b!5256043) bm!372487))

(declare-fun m!6298694 () Bool)

(assert (=> bm!372486 m!6298694))

(declare-fun m!6298696 () Bool)

(assert (=> b!5256046 m!6298696))

(assert (=> bm!372487 m!6298512))

(declare-fun m!6298698 () Bool)

(assert (=> b!5256050 m!6298698))

(assert (=> b!5255615 d!1692255))

(assert (=> b!5255593 d!1692203))

(declare-fun d!1692257 () Bool)

(declare-fun c!909518 () Bool)

(assert (=> d!1692257 (= c!909518 (isEmpty!32729 (t!374092 s!2326)))))

(declare-fun e!3269788 () Bool)

(assert (=> d!1692257 (= (matchZipper!1114 lt!2153964 (t!374092 s!2326)) e!3269788)))

(declare-fun b!5256051 () Bool)

(assert (=> b!5256051 (= e!3269788 (nullableZipper!1275 lt!2153964))))

(declare-fun b!5256052 () Bool)

(assert (=> b!5256052 (= e!3269788 (matchZipper!1114 (derivationStepZipper!1119 lt!2153964 (head!11268 (t!374092 s!2326))) (tail!10365 (t!374092 s!2326))))))

(assert (= (and d!1692257 c!909518) b!5256051))

(assert (= (and d!1692257 (not c!909518)) b!5256052))

(assert (=> d!1692257 m!6298542))

(declare-fun m!6298700 () Bool)

(assert (=> b!5256051 m!6298700))

(assert (=> b!5256052 m!6298546))

(assert (=> b!5256052 m!6298546))

(declare-fun m!6298702 () Bool)

(assert (=> b!5256052 m!6298702))

(assert (=> b!5256052 m!6298550))

(assert (=> b!5256052 m!6298702))

(assert (=> b!5256052 m!6298550))

(declare-fun m!6298704 () Bool)

(assert (=> b!5256052 m!6298704))

(assert (=> b!5255626 d!1692257))

(declare-fun bs!1218855 () Bool)

(declare-fun b!5256061 () Bool)

(assert (= bs!1218855 (and b!5256061 b!5255981)))

(declare-fun lambda!264856 () Int)

(assert (=> bs!1218855 (= (and (= (reg!15199 r!7292) (reg!15199 lt!2153955)) (= r!7292 lt!2153955)) (= lambda!264856 lambda!264852))))

(declare-fun bs!1218856 () Bool)

(assert (= bs!1218856 (and b!5256061 b!5255982)))

(assert (=> bs!1218856 (not (= lambda!264856 lambda!264853))))

(declare-fun bs!1218857 () Bool)

(assert (= bs!1218857 (and b!5256061 b!5256049)))

(assert (=> bs!1218857 (not (= lambda!264856 lambda!264855))))

(declare-fun bs!1218858 () Bool)

(assert (= bs!1218858 (and b!5256061 b!5255588)))

(assert (=> bs!1218858 (not (= lambda!264856 lambda!264815))))

(declare-fun bs!1218859 () Bool)

(assert (= bs!1218859 (and b!5256061 b!5256048)))

(assert (=> bs!1218859 (= (and (= (reg!15199 r!7292) (reg!15199 lt!2153975)) (= r!7292 lt!2153975)) (= lambda!264856 lambda!264854))))

(assert (=> bs!1218858 (not (= lambda!264856 lambda!264814))))

(assert (=> b!5256061 true))

(assert (=> b!5256061 true))

(declare-fun bs!1218860 () Bool)

(declare-fun b!5256062 () Bool)

(assert (= bs!1218860 (and b!5256062 b!5255981)))

(declare-fun lambda!264857 () Int)

(assert (=> bs!1218860 (not (= lambda!264857 lambda!264852))))

(declare-fun bs!1218861 () Bool)

(assert (= bs!1218861 (and b!5256062 b!5255982)))

(assert (=> bs!1218861 (= (and (= (regOne!30252 r!7292) (regOne!30252 lt!2153955)) (= (regTwo!30252 r!7292) (regTwo!30252 lt!2153955))) (= lambda!264857 lambda!264853))))

(declare-fun bs!1218862 () Bool)

(assert (= bs!1218862 (and b!5256062 b!5256061)))

(assert (=> bs!1218862 (not (= lambda!264857 lambda!264856))))

(declare-fun bs!1218863 () Bool)

(assert (= bs!1218863 (and b!5256062 b!5256049)))

(assert (=> bs!1218863 (= (and (= (regOne!30252 r!7292) (regOne!30252 lt!2153975)) (= (regTwo!30252 r!7292) (regTwo!30252 lt!2153975))) (= lambda!264857 lambda!264855))))

(declare-fun bs!1218864 () Bool)

(assert (= bs!1218864 (and b!5256062 b!5255588)))

(assert (=> bs!1218864 (= lambda!264857 lambda!264815)))

(declare-fun bs!1218865 () Bool)

(assert (= bs!1218865 (and b!5256062 b!5256048)))

(assert (=> bs!1218865 (not (= lambda!264857 lambda!264854))))

(assert (=> bs!1218864 (not (= lambda!264857 lambda!264814))))

(assert (=> b!5256062 true))

(assert (=> b!5256062 true))

(declare-fun b!5256053 () Bool)

(declare-fun e!3269792 () Bool)

(declare-fun call!372494 () Bool)

(assert (=> b!5256053 (= e!3269792 call!372494)))

(declare-fun b!5256055 () Bool)

(declare-fun e!3269795 () Bool)

(assert (=> b!5256055 (= e!3269795 (= s!2326 (Cons!60785 (c!909406 r!7292) Nil!60785)))))

(declare-fun b!5256056 () Bool)

(declare-fun res!2230537 () Bool)

(declare-fun e!3269790 () Bool)

(assert (=> b!5256056 (=> res!2230537 e!3269790)))

(assert (=> b!5256056 (= res!2230537 call!372494)))

(declare-fun e!3269791 () Bool)

(assert (=> b!5256056 (= e!3269791 e!3269790)))

(declare-fun b!5256057 () Bool)

(declare-fun c!909521 () Bool)

(assert (=> b!5256057 (= c!909521 (is-Union!14870 r!7292))))

(declare-fun e!3269794 () Bool)

(assert (=> b!5256057 (= e!3269795 e!3269794)))

(declare-fun b!5256058 () Bool)

(assert (=> b!5256058 (= e!3269794 e!3269791)))

(declare-fun c!909520 () Bool)

(assert (=> b!5256058 (= c!909520 (is-Star!14870 r!7292))))

(declare-fun bm!372488 () Bool)

(declare-fun call!372493 () Bool)

(assert (=> bm!372488 (= call!372493 (Exists!2051 (ite c!909520 lambda!264856 lambda!264857)))))

(declare-fun b!5256059 () Bool)

(declare-fun e!3269793 () Bool)

(assert (=> b!5256059 (= e!3269794 e!3269793)))

(declare-fun res!2230538 () Bool)

(assert (=> b!5256059 (= res!2230538 (matchRSpec!1973 (regOne!30253 r!7292) s!2326))))

(assert (=> b!5256059 (=> res!2230538 e!3269793)))

(declare-fun bm!372489 () Bool)

(assert (=> bm!372489 (= call!372494 (isEmpty!32729 s!2326))))

(declare-fun b!5256060 () Bool)

(declare-fun c!909522 () Bool)

(assert (=> b!5256060 (= c!909522 (is-ElementMatch!14870 r!7292))))

(declare-fun e!3269789 () Bool)

(assert (=> b!5256060 (= e!3269789 e!3269795)))

(assert (=> b!5256061 (= e!3269790 call!372493)))

(assert (=> b!5256062 (= e!3269791 call!372493)))

(declare-fun b!5256063 () Bool)

(assert (=> b!5256063 (= e!3269793 (matchRSpec!1973 (regTwo!30253 r!7292) s!2326))))

(declare-fun b!5256054 () Bool)

(assert (=> b!5256054 (= e!3269792 e!3269789)))

(declare-fun res!2230539 () Bool)

(assert (=> b!5256054 (= res!2230539 (not (is-EmptyLang!14870 r!7292)))))

(assert (=> b!5256054 (=> (not res!2230539) (not e!3269789))))

(declare-fun d!1692259 () Bool)

(declare-fun c!909519 () Bool)

(assert (=> d!1692259 (= c!909519 (is-EmptyExpr!14870 r!7292))))

(assert (=> d!1692259 (= (matchRSpec!1973 r!7292 s!2326) e!3269792)))

(assert (= (and d!1692259 c!909519) b!5256053))

(assert (= (and d!1692259 (not c!909519)) b!5256054))

(assert (= (and b!5256054 res!2230539) b!5256060))

(assert (= (and b!5256060 c!909522) b!5256055))

(assert (= (and b!5256060 (not c!909522)) b!5256057))

(assert (= (and b!5256057 c!909521) b!5256059))

(assert (= (and b!5256057 (not c!909521)) b!5256058))

(assert (= (and b!5256059 (not res!2230538)) b!5256063))

(assert (= (and b!5256058 c!909520) b!5256056))

(assert (= (and b!5256058 (not c!909520)) b!5256062))

(assert (= (and b!5256056 (not res!2230537)) b!5256061))

(assert (= (or b!5256061 b!5256062) bm!372488))

(assert (= (or b!5256053 b!5256056) bm!372489))

(declare-fun m!6298706 () Bool)

(assert (=> bm!372488 m!6298706))

(declare-fun m!6298708 () Bool)

(assert (=> b!5256059 m!6298708))

(assert (=> bm!372489 m!6298512))

(declare-fun m!6298710 () Bool)

(assert (=> b!5256063 m!6298710))

(assert (=> b!5255605 d!1692259))

(declare-fun b!5256064 () Bool)

(declare-fun res!2230542 () Bool)

(declare-fun e!3269799 () Bool)

(assert (=> b!5256064 (=> res!2230542 e!3269799)))

(declare-fun e!3269802 () Bool)

(assert (=> b!5256064 (= res!2230542 e!3269802)))

(declare-fun res!2230545 () Bool)

(assert (=> b!5256064 (=> (not res!2230545) (not e!3269802))))

(declare-fun lt!2154169 () Bool)

(assert (=> b!5256064 (= res!2230545 lt!2154169)))

(declare-fun b!5256065 () Bool)

(assert (=> b!5256065 (= e!3269802 (= (head!11268 s!2326) (c!909406 r!7292)))))

(declare-fun b!5256066 () Bool)

(declare-fun e!3269796 () Bool)

(assert (=> b!5256066 (= e!3269796 (not (= (head!11268 s!2326) (c!909406 r!7292))))))

(declare-fun b!5256067 () Bool)

(declare-fun e!3269801 () Bool)

(assert (=> b!5256067 (= e!3269801 (matchR!7055 (derivativeStep!4096 r!7292 (head!11268 s!2326)) (tail!10365 s!2326)))))

(declare-fun b!5256068 () Bool)

(declare-fun res!2230544 () Bool)

(assert (=> b!5256068 (=> (not res!2230544) (not e!3269802))))

(declare-fun call!372495 () Bool)

(assert (=> b!5256068 (= res!2230544 (not call!372495))))

(declare-fun b!5256069 () Bool)

(declare-fun res!2230546 () Bool)

(assert (=> b!5256069 (=> res!2230546 e!3269799)))

(assert (=> b!5256069 (= res!2230546 (not (is-ElementMatch!14870 r!7292)))))

(declare-fun e!3269797 () Bool)

(assert (=> b!5256069 (= e!3269797 e!3269799)))

(declare-fun b!5256071 () Bool)

(declare-fun res!2230541 () Bool)

(assert (=> b!5256071 (=> res!2230541 e!3269796)))

(assert (=> b!5256071 (= res!2230541 (not (isEmpty!32729 (tail!10365 s!2326))))))

(declare-fun b!5256072 () Bool)

(assert (=> b!5256072 (= e!3269801 (nullable!5039 r!7292))))

(declare-fun b!5256073 () Bool)

(declare-fun e!3269798 () Bool)

(assert (=> b!5256073 (= e!3269798 (= lt!2154169 call!372495))))

(declare-fun bm!372490 () Bool)

(assert (=> bm!372490 (= call!372495 (isEmpty!32729 s!2326))))

(declare-fun b!5256074 () Bool)

(declare-fun res!2230540 () Bool)

(assert (=> b!5256074 (=> (not res!2230540) (not e!3269802))))

(assert (=> b!5256074 (= res!2230540 (isEmpty!32729 (tail!10365 s!2326)))))

(declare-fun b!5256075 () Bool)

(assert (=> b!5256075 (= e!3269797 (not lt!2154169))))

(declare-fun b!5256076 () Bool)

(declare-fun e!3269800 () Bool)

(assert (=> b!5256076 (= e!3269799 e!3269800)))

(declare-fun res!2230543 () Bool)

(assert (=> b!5256076 (=> (not res!2230543) (not e!3269800))))

(assert (=> b!5256076 (= res!2230543 (not lt!2154169))))

(declare-fun b!5256077 () Bool)

(assert (=> b!5256077 (= e!3269798 e!3269797)))

(declare-fun c!909525 () Bool)

(assert (=> b!5256077 (= c!909525 (is-EmptyLang!14870 r!7292))))

(declare-fun d!1692261 () Bool)

(assert (=> d!1692261 e!3269798))

(declare-fun c!909523 () Bool)

(assert (=> d!1692261 (= c!909523 (is-EmptyExpr!14870 r!7292))))

(assert (=> d!1692261 (= lt!2154169 e!3269801)))

(declare-fun c!909524 () Bool)

(assert (=> d!1692261 (= c!909524 (isEmpty!32729 s!2326))))

(assert (=> d!1692261 (validRegex!6606 r!7292)))

(assert (=> d!1692261 (= (matchR!7055 r!7292 s!2326) lt!2154169)))

(declare-fun b!5256070 () Bool)

(assert (=> b!5256070 (= e!3269800 e!3269796)))

(declare-fun res!2230547 () Bool)

(assert (=> b!5256070 (=> res!2230547 e!3269796)))

(assert (=> b!5256070 (= res!2230547 call!372495)))

(assert (= (and d!1692261 c!909524) b!5256072))

(assert (= (and d!1692261 (not c!909524)) b!5256067))

(assert (= (and d!1692261 c!909523) b!5256073))

(assert (= (and d!1692261 (not c!909523)) b!5256077))

(assert (= (and b!5256077 c!909525) b!5256075))

(assert (= (and b!5256077 (not c!909525)) b!5256069))

(assert (= (and b!5256069 (not res!2230546)) b!5256064))

(assert (= (and b!5256064 res!2230545) b!5256068))

(assert (= (and b!5256068 res!2230544) b!5256074))

(assert (= (and b!5256074 res!2230540) b!5256065))

(assert (= (and b!5256064 (not res!2230542)) b!5256076))

(assert (= (and b!5256076 res!2230543) b!5256070))

(assert (= (and b!5256070 (not res!2230547)) b!5256071))

(assert (= (and b!5256071 (not res!2230541)) b!5256066))

(assert (= (or b!5256073 b!5256068 b!5256070) bm!372490))

(assert (=> d!1692261 m!6298512))

(assert (=> d!1692261 m!6298290))

(assert (=> b!5256066 m!6298516))

(declare-fun m!6298712 () Bool)

(assert (=> b!5256072 m!6298712))

(assert (=> b!5256071 m!6298520))

(assert (=> b!5256071 m!6298520))

(assert (=> b!5256071 m!6298676))

(assert (=> b!5256065 m!6298516))

(assert (=> b!5256067 m!6298516))

(assert (=> b!5256067 m!6298516))

(declare-fun m!6298714 () Bool)

(assert (=> b!5256067 m!6298714))

(assert (=> b!5256067 m!6298520))

(assert (=> b!5256067 m!6298714))

(assert (=> b!5256067 m!6298520))

(declare-fun m!6298716 () Bool)

(assert (=> b!5256067 m!6298716))

(assert (=> b!5256074 m!6298520))

(assert (=> b!5256074 m!6298520))

(assert (=> b!5256074 m!6298676))

(assert (=> bm!372490 m!6298512))

(assert (=> b!5255605 d!1692261))

(declare-fun d!1692263 () Bool)

(assert (=> d!1692263 (= (matchR!7055 r!7292 s!2326) (matchRSpec!1973 r!7292 s!2326))))

(declare-fun lt!2154170 () Unit!152974)

(assert (=> d!1692263 (= lt!2154170 (choose!39187 r!7292 s!2326))))

(assert (=> d!1692263 (validRegex!6606 r!7292)))

(assert (=> d!1692263 (= (mainMatchTheorem!1973 r!7292 s!2326) lt!2154170)))

(declare-fun bs!1218866 () Bool)

(assert (= bs!1218866 d!1692263))

(assert (=> bs!1218866 m!6298260))

(assert (=> bs!1218866 m!6298258))

(declare-fun m!6298718 () Bool)

(assert (=> bs!1218866 m!6298718))

(assert (=> bs!1218866 m!6298290))

(assert (=> b!5255605 d!1692263))

(declare-fun e!3269803 () Bool)

(declare-fun d!1692265 () Bool)

(assert (=> d!1692265 (= (matchZipper!1114 (set.union lt!2153949 lt!2153964) (t!374092 s!2326)) e!3269803)))

(declare-fun res!2230548 () Bool)

(assert (=> d!1692265 (=> res!2230548 e!3269803)))

(assert (=> d!1692265 (= res!2230548 (matchZipper!1114 lt!2153949 (t!374092 s!2326)))))

(declare-fun lt!2154171 () Unit!152974)

(assert (=> d!1692265 (= lt!2154171 (choose!39185 lt!2153949 lt!2153964 (t!374092 s!2326)))))

(assert (=> d!1692265 (= (lemmaZipperConcatMatchesSameAsBothZippers!107 lt!2153949 lt!2153964 (t!374092 s!2326)) lt!2154171)))

(declare-fun b!5256078 () Bool)

(assert (=> b!5256078 (= e!3269803 (matchZipper!1114 lt!2153964 (t!374092 s!2326)))))

(assert (= (and d!1692265 (not res!2230548)) b!5256078))

(assert (=> d!1692265 m!6298242))

(assert (=> d!1692265 m!6298240))

(declare-fun m!6298720 () Bool)

(assert (=> d!1692265 m!6298720))

(assert (=> b!5256078 m!6298226))

(assert (=> b!5255627 d!1692265))

(assert (=> b!5255627 d!1692203))

(declare-fun d!1692267 () Bool)

(declare-fun c!909526 () Bool)

(assert (=> d!1692267 (= c!909526 (isEmpty!32729 (t!374092 s!2326)))))

(declare-fun e!3269804 () Bool)

(assert (=> d!1692267 (= (matchZipper!1114 (set.union lt!2153949 lt!2153964) (t!374092 s!2326)) e!3269804)))

(declare-fun b!5256079 () Bool)

(assert (=> b!5256079 (= e!3269804 (nullableZipper!1275 (set.union lt!2153949 lt!2153964)))))

(declare-fun b!5256080 () Bool)

(assert (=> b!5256080 (= e!3269804 (matchZipper!1114 (derivationStepZipper!1119 (set.union lt!2153949 lt!2153964) (head!11268 (t!374092 s!2326))) (tail!10365 (t!374092 s!2326))))))

(assert (= (and d!1692267 c!909526) b!5256079))

(assert (= (and d!1692267 (not c!909526)) b!5256080))

(assert (=> d!1692267 m!6298542))

(declare-fun m!6298722 () Bool)

(assert (=> b!5256079 m!6298722))

(assert (=> b!5256080 m!6298546))

(assert (=> b!5256080 m!6298546))

(declare-fun m!6298724 () Bool)

(assert (=> b!5256080 m!6298724))

(assert (=> b!5256080 m!6298550))

(assert (=> b!5256080 m!6298724))

(assert (=> b!5256080 m!6298550))

(declare-fun m!6298726 () Bool)

(assert (=> b!5256080 m!6298726))

(assert (=> b!5255627 d!1692267))

(assert (=> b!5255629 d!1692257))

(declare-fun d!1692269 () Bool)

(declare-fun choose!39188 (Int) Bool)

(assert (=> d!1692269 (= (Exists!2051 lambda!264814) (choose!39188 lambda!264814))))

(declare-fun bs!1218867 () Bool)

(assert (= bs!1218867 d!1692269))

(declare-fun m!6298728 () Bool)

(assert (=> bs!1218867 m!6298728))

(assert (=> b!5255588 d!1692269))

(declare-fun b!5256099 () Bool)

(declare-fun e!3269815 () Bool)

(declare-fun lt!2154178 () Option!14981)

(assert (=> b!5256099 (= e!3269815 (not (isDefined!11684 lt!2154178)))))

(declare-fun b!5256100 () Bool)

(declare-fun e!3269818 () Option!14981)

(declare-fun e!3269816 () Option!14981)

(assert (=> b!5256100 (= e!3269818 e!3269816)))

(declare-fun c!909532 () Bool)

(assert (=> b!5256100 (= c!909532 (is-Nil!60785 s!2326))))

(declare-fun d!1692271 () Bool)

(assert (=> d!1692271 e!3269815))

(declare-fun res!2230559 () Bool)

(assert (=> d!1692271 (=> res!2230559 e!3269815)))

(declare-fun e!3269817 () Bool)

(assert (=> d!1692271 (= res!2230559 e!3269817)))

(declare-fun res!2230562 () Bool)

(assert (=> d!1692271 (=> (not res!2230562) (not e!3269817))))

(assert (=> d!1692271 (= res!2230562 (isDefined!11684 lt!2154178))))

(assert (=> d!1692271 (= lt!2154178 e!3269818)))

(declare-fun c!909531 () Bool)

(declare-fun e!3269819 () Bool)

(assert (=> d!1692271 (= c!909531 e!3269819)))

(declare-fun res!2230560 () Bool)

(assert (=> d!1692271 (=> (not res!2230560) (not e!3269819))))

(assert (=> d!1692271 (= res!2230560 (matchR!7055 (regOne!30252 r!7292) Nil!60785))))

(assert (=> d!1692271 (validRegex!6606 (regOne!30252 r!7292))))

(assert (=> d!1692271 (= (findConcatSeparation!1395 (regOne!30252 r!7292) (regTwo!30252 r!7292) Nil!60785 s!2326 s!2326) lt!2154178)))

(declare-fun b!5256101 () Bool)

(declare-fun ++!13255 (List!60909 List!60909) List!60909)

(declare-fun get!20896 (Option!14981) tuple2!64138)

(assert (=> b!5256101 (= e!3269817 (= (++!13255 (_1!35372 (get!20896 lt!2154178)) (_2!35372 (get!20896 lt!2154178))) s!2326))))

(declare-fun b!5256102 () Bool)

(declare-fun res!2230563 () Bool)

(assert (=> b!5256102 (=> (not res!2230563) (not e!3269817))))

(assert (=> b!5256102 (= res!2230563 (matchR!7055 (regTwo!30252 r!7292) (_2!35372 (get!20896 lt!2154178))))))

(declare-fun b!5256103 () Bool)

(assert (=> b!5256103 (= e!3269816 None!14980)))

(declare-fun b!5256104 () Bool)

(assert (=> b!5256104 (= e!3269818 (Some!14980 (tuple2!64139 Nil!60785 s!2326)))))

(declare-fun b!5256105 () Bool)

(declare-fun res!2230561 () Bool)

(assert (=> b!5256105 (=> (not res!2230561) (not e!3269817))))

(assert (=> b!5256105 (= res!2230561 (matchR!7055 (regOne!30252 r!7292) (_1!35372 (get!20896 lt!2154178))))))

(declare-fun b!5256106 () Bool)

(declare-fun lt!2154180 () Unit!152974)

(declare-fun lt!2154179 () Unit!152974)

(assert (=> b!5256106 (= lt!2154180 lt!2154179)))

(assert (=> b!5256106 (= (++!13255 (++!13255 Nil!60785 (Cons!60785 (h!67233 s!2326) Nil!60785)) (t!374092 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1670 (List!60909 C!30010 List!60909 List!60909) Unit!152974)

(assert (=> b!5256106 (= lt!2154179 (lemmaMoveElementToOtherListKeepsConcatEq!1670 Nil!60785 (h!67233 s!2326) (t!374092 s!2326) s!2326))))

(assert (=> b!5256106 (= e!3269816 (findConcatSeparation!1395 (regOne!30252 r!7292) (regTwo!30252 r!7292) (++!13255 Nil!60785 (Cons!60785 (h!67233 s!2326) Nil!60785)) (t!374092 s!2326) s!2326))))

(declare-fun b!5256107 () Bool)

(assert (=> b!5256107 (= e!3269819 (matchR!7055 (regTwo!30252 r!7292) s!2326))))

(assert (= (and d!1692271 res!2230560) b!5256107))

(assert (= (and d!1692271 c!909531) b!5256104))

(assert (= (and d!1692271 (not c!909531)) b!5256100))

(assert (= (and b!5256100 c!909532) b!5256103))

(assert (= (and b!5256100 (not c!909532)) b!5256106))

(assert (= (and d!1692271 res!2230562) b!5256105))

(assert (= (and b!5256105 res!2230561) b!5256102))

(assert (= (and b!5256102 res!2230563) b!5256101))

(assert (= (and d!1692271 (not res!2230559)) b!5256099))

(declare-fun m!6298730 () Bool)

(assert (=> b!5256105 m!6298730))

(declare-fun m!6298732 () Bool)

(assert (=> b!5256105 m!6298732))

(assert (=> b!5256102 m!6298730))

(declare-fun m!6298734 () Bool)

(assert (=> b!5256102 m!6298734))

(declare-fun m!6298736 () Bool)

(assert (=> d!1692271 m!6298736))

(declare-fun m!6298738 () Bool)

(assert (=> d!1692271 m!6298738))

(declare-fun m!6298740 () Bool)

(assert (=> d!1692271 m!6298740))

(assert (=> b!5256099 m!6298736))

(declare-fun m!6298742 () Bool)

(assert (=> b!5256107 m!6298742))

(declare-fun m!6298744 () Bool)

(assert (=> b!5256106 m!6298744))

(assert (=> b!5256106 m!6298744))

(declare-fun m!6298746 () Bool)

(assert (=> b!5256106 m!6298746))

(declare-fun m!6298748 () Bool)

(assert (=> b!5256106 m!6298748))

(assert (=> b!5256106 m!6298744))

(declare-fun m!6298750 () Bool)

(assert (=> b!5256106 m!6298750))

(assert (=> b!5256101 m!6298730))

(declare-fun m!6298752 () Bool)

(assert (=> b!5256101 m!6298752))

(assert (=> b!5255588 d!1692271))

(declare-fun d!1692273 () Bool)

(assert (=> d!1692273 (= (Exists!2051 lambda!264815) (choose!39188 lambda!264815))))

(declare-fun bs!1218868 () Bool)

(assert (= bs!1218868 d!1692273))

(declare-fun m!6298754 () Bool)

(assert (=> bs!1218868 m!6298754))

(assert (=> b!5255588 d!1692273))

(declare-fun bs!1218869 () Bool)

(declare-fun d!1692275 () Bool)

(assert (= bs!1218869 (and d!1692275 b!5255981)))

(declare-fun lambda!264860 () Int)

(assert (=> bs!1218869 (not (= lambda!264860 lambda!264852))))

(declare-fun bs!1218870 () Bool)

(assert (= bs!1218870 (and d!1692275 b!5255982)))

(assert (=> bs!1218870 (not (= lambda!264860 lambda!264853))))

(declare-fun bs!1218871 () Bool)

(assert (= bs!1218871 (and d!1692275 b!5256061)))

(assert (=> bs!1218871 (not (= lambda!264860 lambda!264856))))

(declare-fun bs!1218872 () Bool)

(assert (= bs!1218872 (and d!1692275 b!5256049)))

(assert (=> bs!1218872 (not (= lambda!264860 lambda!264855))))

(declare-fun bs!1218873 () Bool)

(assert (= bs!1218873 (and d!1692275 b!5255588)))

(assert (=> bs!1218873 (not (= lambda!264860 lambda!264815))))

(declare-fun bs!1218874 () Bool)

(assert (= bs!1218874 (and d!1692275 b!5256062)))

(assert (=> bs!1218874 (not (= lambda!264860 lambda!264857))))

(declare-fun bs!1218875 () Bool)

(assert (= bs!1218875 (and d!1692275 b!5256048)))

(assert (=> bs!1218875 (not (= lambda!264860 lambda!264854))))

(assert (=> bs!1218873 (= lambda!264860 lambda!264814)))

(assert (=> d!1692275 true))

(assert (=> d!1692275 true))

(assert (=> d!1692275 true))

(assert (=> d!1692275 (= (isDefined!11684 (findConcatSeparation!1395 (regOne!30252 r!7292) (regTwo!30252 r!7292) Nil!60785 s!2326 s!2326)) (Exists!2051 lambda!264860))))

(declare-fun lt!2154183 () Unit!152974)

(declare-fun choose!39189 (Regex!14870 Regex!14870 List!60909) Unit!152974)

(assert (=> d!1692275 (= lt!2154183 (choose!39189 (regOne!30252 r!7292) (regTwo!30252 r!7292) s!2326))))

(assert (=> d!1692275 (validRegex!6606 (regOne!30252 r!7292))))

(assert (=> d!1692275 (= (lemmaFindConcatSeparationEquivalentToExists!1159 (regOne!30252 r!7292) (regTwo!30252 r!7292) s!2326) lt!2154183)))

(declare-fun bs!1218876 () Bool)

(assert (= bs!1218876 d!1692275))

(assert (=> bs!1218876 m!6298296))

(assert (=> bs!1218876 m!6298298))

(assert (=> bs!1218876 m!6298740))

(declare-fun m!6298756 () Bool)

(assert (=> bs!1218876 m!6298756))

(assert (=> bs!1218876 m!6298296))

(declare-fun m!6298758 () Bool)

(assert (=> bs!1218876 m!6298758))

(assert (=> b!5255588 d!1692275))

(declare-fun bs!1218877 () Bool)

(declare-fun d!1692277 () Bool)

(assert (= bs!1218877 (and d!1692277 b!5255981)))

(declare-fun lambda!264865 () Int)

(assert (=> bs!1218877 (not (= lambda!264865 lambda!264852))))

(declare-fun bs!1218878 () Bool)

(assert (= bs!1218878 (and d!1692277 b!5255982)))

(assert (=> bs!1218878 (not (= lambda!264865 lambda!264853))))

(declare-fun bs!1218879 () Bool)

(assert (= bs!1218879 (and d!1692277 b!5256061)))

(assert (=> bs!1218879 (not (= lambda!264865 lambda!264856))))

(declare-fun bs!1218880 () Bool)

(assert (= bs!1218880 (and d!1692277 b!5255588)))

(assert (=> bs!1218880 (not (= lambda!264865 lambda!264815))))

(declare-fun bs!1218881 () Bool)

(assert (= bs!1218881 (and d!1692277 b!5256062)))

(assert (=> bs!1218881 (not (= lambda!264865 lambda!264857))))

(declare-fun bs!1218882 () Bool)

(assert (= bs!1218882 (and d!1692277 b!5256048)))

(assert (=> bs!1218882 (not (= lambda!264865 lambda!264854))))

(assert (=> bs!1218880 (= lambda!264865 lambda!264814)))

(declare-fun bs!1218883 () Bool)

(assert (= bs!1218883 (and d!1692277 b!5256049)))

(assert (=> bs!1218883 (not (= lambda!264865 lambda!264855))))

(declare-fun bs!1218884 () Bool)

(assert (= bs!1218884 (and d!1692277 d!1692275)))

(assert (=> bs!1218884 (= lambda!264865 lambda!264860)))

(assert (=> d!1692277 true))

(assert (=> d!1692277 true))

(assert (=> d!1692277 true))

(declare-fun lambda!264866 () Int)

(assert (=> bs!1218877 (not (= lambda!264866 lambda!264852))))

(assert (=> bs!1218878 (= (and (= (regOne!30252 r!7292) (regOne!30252 lt!2153955)) (= (regTwo!30252 r!7292) (regTwo!30252 lt!2153955))) (= lambda!264866 lambda!264853))))

(assert (=> bs!1218879 (not (= lambda!264866 lambda!264856))))

(assert (=> bs!1218881 (= lambda!264866 lambda!264857)))

(assert (=> bs!1218882 (not (= lambda!264866 lambda!264854))))

(assert (=> bs!1218880 (not (= lambda!264866 lambda!264814))))

(assert (=> bs!1218883 (= (and (= (regOne!30252 r!7292) (regOne!30252 lt!2153975)) (= (regTwo!30252 r!7292) (regTwo!30252 lt!2153975))) (= lambda!264866 lambda!264855))))

(assert (=> bs!1218884 (not (= lambda!264866 lambda!264860))))

(declare-fun bs!1218885 () Bool)

(assert (= bs!1218885 d!1692277))

(assert (=> bs!1218885 (not (= lambda!264866 lambda!264865))))

(assert (=> bs!1218880 (= lambda!264866 lambda!264815)))

(assert (=> d!1692277 true))

(assert (=> d!1692277 true))

(assert (=> d!1692277 true))

(assert (=> d!1692277 (= (Exists!2051 lambda!264865) (Exists!2051 lambda!264866))))

(declare-fun lt!2154186 () Unit!152974)

(declare-fun choose!39190 (Regex!14870 Regex!14870 List!60909) Unit!152974)

(assert (=> d!1692277 (= lt!2154186 (choose!39190 (regOne!30252 r!7292) (regTwo!30252 r!7292) s!2326))))

(assert (=> d!1692277 (validRegex!6606 (regOne!30252 r!7292))))

(assert (=> d!1692277 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!705 (regOne!30252 r!7292) (regTwo!30252 r!7292) s!2326) lt!2154186)))

(declare-fun m!6298760 () Bool)

(assert (=> bs!1218885 m!6298760))

(declare-fun m!6298762 () Bool)

(assert (=> bs!1218885 m!6298762))

(declare-fun m!6298764 () Bool)

(assert (=> bs!1218885 m!6298764))

(assert (=> bs!1218885 m!6298740))

(assert (=> b!5255588 d!1692277))

(declare-fun d!1692279 () Bool)

(declare-fun isEmpty!32730 (Option!14981) Bool)

(assert (=> d!1692279 (= (isDefined!11684 (findConcatSeparation!1395 (regOne!30252 r!7292) (regTwo!30252 r!7292) Nil!60785 s!2326 s!2326)) (not (isEmpty!32730 (findConcatSeparation!1395 (regOne!30252 r!7292) (regTwo!30252 r!7292) Nil!60785 s!2326 s!2326))))))

(declare-fun bs!1218886 () Bool)

(assert (= bs!1218886 d!1692279))

(assert (=> bs!1218886 m!6298296))

(declare-fun m!6298766 () Bool)

(assert (=> bs!1218886 m!6298766))

(assert (=> b!5255588 d!1692279))

(declare-fun b!5256138 () Bool)

(declare-fun e!3269843 () Bool)

(declare-fun e!3269841 () Bool)

(assert (=> b!5256138 (= e!3269843 e!3269841)))

(declare-fun res!2230587 () Bool)

(assert (=> b!5256138 (= res!2230587 (not (nullable!5039 (reg!15199 r!7292))))))

(assert (=> b!5256138 (=> (not res!2230587) (not e!3269841))))

(declare-fun b!5256139 () Bool)

(declare-fun e!3269842 () Bool)

(assert (=> b!5256139 (= e!3269843 e!3269842)))

(declare-fun c!909537 () Bool)

(assert (=> b!5256139 (= c!909537 (is-Union!14870 r!7292))))

(declare-fun bm!372497 () Bool)

(declare-fun c!909538 () Bool)

(declare-fun call!372502 () Bool)

(assert (=> bm!372497 (= call!372502 (validRegex!6606 (ite c!909538 (reg!15199 r!7292) (ite c!909537 (regOne!30253 r!7292) (regOne!30252 r!7292)))))))

(declare-fun b!5256140 () Bool)

(declare-fun e!3269844 () Bool)

(declare-fun call!372503 () Bool)

(assert (=> b!5256140 (= e!3269844 call!372503)))

(declare-fun b!5256141 () Bool)

(declare-fun res!2230586 () Bool)

(assert (=> b!5256141 (=> (not res!2230586) (not e!3269844))))

(declare-fun call!372504 () Bool)

(assert (=> b!5256141 (= res!2230586 call!372504)))

(assert (=> b!5256141 (= e!3269842 e!3269844)))

(declare-fun bm!372498 () Bool)

(assert (=> bm!372498 (= call!372503 (validRegex!6606 (ite c!909537 (regTwo!30253 r!7292) (regTwo!30252 r!7292))))))

(declare-fun b!5256142 () Bool)

(declare-fun e!3269840 () Bool)

(assert (=> b!5256142 (= e!3269840 e!3269843)))

(assert (=> b!5256142 (= c!909538 (is-Star!14870 r!7292))))

(declare-fun b!5256143 () Bool)

(declare-fun res!2230588 () Bool)

(declare-fun e!3269846 () Bool)

(assert (=> b!5256143 (=> res!2230588 e!3269846)))

(assert (=> b!5256143 (= res!2230588 (not (is-Concat!23715 r!7292)))))

(assert (=> b!5256143 (= e!3269842 e!3269846)))

(declare-fun d!1692281 () Bool)

(declare-fun res!2230590 () Bool)

(assert (=> d!1692281 (=> res!2230590 e!3269840)))

(assert (=> d!1692281 (= res!2230590 (is-ElementMatch!14870 r!7292))))

(assert (=> d!1692281 (= (validRegex!6606 r!7292) e!3269840)))

(declare-fun bm!372499 () Bool)

(assert (=> bm!372499 (= call!372504 call!372502)))

(declare-fun b!5256144 () Bool)

(assert (=> b!5256144 (= e!3269841 call!372502)))

(declare-fun b!5256145 () Bool)

(declare-fun e!3269845 () Bool)

(assert (=> b!5256145 (= e!3269845 call!372503)))

(declare-fun b!5256146 () Bool)

(assert (=> b!5256146 (= e!3269846 e!3269845)))

(declare-fun res!2230589 () Bool)

(assert (=> b!5256146 (=> (not res!2230589) (not e!3269845))))

(assert (=> b!5256146 (= res!2230589 call!372504)))

(assert (= (and d!1692281 (not res!2230590)) b!5256142))

(assert (= (and b!5256142 c!909538) b!5256138))

(assert (= (and b!5256142 (not c!909538)) b!5256139))

(assert (= (and b!5256138 res!2230587) b!5256144))

(assert (= (and b!5256139 c!909537) b!5256141))

(assert (= (and b!5256139 (not c!909537)) b!5256143))

(assert (= (and b!5256141 res!2230586) b!5256140))

(assert (= (and b!5256143 (not res!2230588)) b!5256146))

(assert (= (and b!5256146 res!2230589) b!5256145))

(assert (= (or b!5256140 b!5256145) bm!372498))

(assert (= (or b!5256141 b!5256146) bm!372499))

(assert (= (or b!5256144 bm!372499) bm!372497))

(declare-fun m!6298768 () Bool)

(assert (=> b!5256138 m!6298768))

(declare-fun m!6298770 () Bool)

(assert (=> bm!372497 m!6298770))

(declare-fun m!6298772 () Bool)

(assert (=> bm!372498 m!6298772))

(assert (=> start!555168 d!1692281))

(declare-fun d!1692283 () Bool)

(declare-fun lt!2154189 () Regex!14870)

(assert (=> d!1692283 (validRegex!6606 lt!2154189)))

(assert (=> d!1692283 (= lt!2154189 (generalisedUnion!799 (unfocusZipperList!312 zl!343)))))

(assert (=> d!1692283 (= (unfocusZipper!612 zl!343) lt!2154189)))

(declare-fun bs!1218887 () Bool)

(assert (= bs!1218887 d!1692283))

(declare-fun m!6298774 () Bool)

(assert (=> bs!1218887 m!6298774))

(assert (=> bs!1218887 m!6298336))

(assert (=> bs!1218887 m!6298336))

(assert (=> bs!1218887 m!6298338))

(assert (=> b!5255610 d!1692283))

(declare-fun d!1692285 () Bool)

(declare-fun e!3269849 () Bool)

(assert (=> d!1692285 e!3269849))

(declare-fun res!2230593 () Bool)

(assert (=> d!1692285 (=> (not res!2230593) (not e!3269849))))

(declare-fun lt!2154192 () List!60911)

(declare-fun noDuplicate!1231 (List!60911) Bool)

(assert (=> d!1692285 (= res!2230593 (noDuplicate!1231 lt!2154192))))

(declare-fun choose!39191 ((Set Context!8508)) List!60911)

(assert (=> d!1692285 (= lt!2154192 (choose!39191 z!1189))))

(assert (=> d!1692285 (= (toList!8654 z!1189) lt!2154192)))

(declare-fun b!5256149 () Bool)

(declare-fun content!10798 (List!60911) (Set Context!8508))

(assert (=> b!5256149 (= e!3269849 (= (content!10798 lt!2154192) z!1189))))

(assert (= (and d!1692285 res!2230593) b!5256149))

(declare-fun m!6298776 () Bool)

(assert (=> d!1692285 m!6298776))

(declare-fun m!6298778 () Bool)

(assert (=> d!1692285 m!6298778))

(declare-fun m!6298780 () Bool)

(assert (=> b!5256149 m!6298780))

(assert (=> b!5255609 d!1692285))

(declare-fun bs!1218888 () Bool)

(declare-fun b!5256158 () Bool)

(assert (= bs!1218888 (and b!5256158 b!5255981)))

(declare-fun lambda!264867 () Int)

(assert (=> bs!1218888 (= (and (= (reg!15199 lt!2153952) (reg!15199 lt!2153955)) (= lt!2153952 lt!2153955)) (= lambda!264867 lambda!264852))))

(declare-fun bs!1218889 () Bool)

(assert (= bs!1218889 (and b!5256158 d!1692277)))

(assert (=> bs!1218889 (not (= lambda!264867 lambda!264866))))

(declare-fun bs!1218890 () Bool)

(assert (= bs!1218890 (and b!5256158 b!5255982)))

(assert (=> bs!1218890 (not (= lambda!264867 lambda!264853))))

(declare-fun bs!1218891 () Bool)

(assert (= bs!1218891 (and b!5256158 b!5256061)))

(assert (=> bs!1218891 (= (and (= (reg!15199 lt!2153952) (reg!15199 r!7292)) (= lt!2153952 r!7292)) (= lambda!264867 lambda!264856))))

(declare-fun bs!1218892 () Bool)

(assert (= bs!1218892 (and b!5256158 b!5256062)))

(assert (=> bs!1218892 (not (= lambda!264867 lambda!264857))))

(declare-fun bs!1218893 () Bool)

(assert (= bs!1218893 (and b!5256158 b!5256048)))

(assert (=> bs!1218893 (= (and (= (reg!15199 lt!2153952) (reg!15199 lt!2153975)) (= lt!2153952 lt!2153975)) (= lambda!264867 lambda!264854))))

(declare-fun bs!1218894 () Bool)

(assert (= bs!1218894 (and b!5256158 b!5255588)))

(assert (=> bs!1218894 (not (= lambda!264867 lambda!264814))))

(declare-fun bs!1218895 () Bool)

(assert (= bs!1218895 (and b!5256158 b!5256049)))

(assert (=> bs!1218895 (not (= lambda!264867 lambda!264855))))

(declare-fun bs!1218896 () Bool)

(assert (= bs!1218896 (and b!5256158 d!1692275)))

(assert (=> bs!1218896 (not (= lambda!264867 lambda!264860))))

(assert (=> bs!1218889 (not (= lambda!264867 lambda!264865))))

(assert (=> bs!1218894 (not (= lambda!264867 lambda!264815))))

(assert (=> b!5256158 true))

(assert (=> b!5256158 true))

(declare-fun bs!1218897 () Bool)

(declare-fun b!5256159 () Bool)

(assert (= bs!1218897 (and b!5256159 b!5255981)))

(declare-fun lambda!264868 () Int)

(assert (=> bs!1218897 (not (= lambda!264868 lambda!264852))))

(declare-fun bs!1218898 () Bool)

(assert (= bs!1218898 (and b!5256159 d!1692277)))

(assert (=> bs!1218898 (= (and (= (regOne!30252 lt!2153952) (regOne!30252 r!7292)) (= (regTwo!30252 lt!2153952) (regTwo!30252 r!7292))) (= lambda!264868 lambda!264866))))

(declare-fun bs!1218899 () Bool)

(assert (= bs!1218899 (and b!5256159 b!5255982)))

(assert (=> bs!1218899 (= (and (= (regOne!30252 lt!2153952) (regOne!30252 lt!2153955)) (= (regTwo!30252 lt!2153952) (regTwo!30252 lt!2153955))) (= lambda!264868 lambda!264853))))

(declare-fun bs!1218900 () Bool)

(assert (= bs!1218900 (and b!5256159 b!5256061)))

(assert (=> bs!1218900 (not (= lambda!264868 lambda!264856))))

(declare-fun bs!1218901 () Bool)

(assert (= bs!1218901 (and b!5256159 b!5256158)))

(assert (=> bs!1218901 (not (= lambda!264868 lambda!264867))))

(declare-fun bs!1218902 () Bool)

(assert (= bs!1218902 (and b!5256159 b!5256062)))

(assert (=> bs!1218902 (= (and (= (regOne!30252 lt!2153952) (regOne!30252 r!7292)) (= (regTwo!30252 lt!2153952) (regTwo!30252 r!7292))) (= lambda!264868 lambda!264857))))

(declare-fun bs!1218903 () Bool)

(assert (= bs!1218903 (and b!5256159 b!5256048)))

(assert (=> bs!1218903 (not (= lambda!264868 lambda!264854))))

(declare-fun bs!1218904 () Bool)

(assert (= bs!1218904 (and b!5256159 b!5255588)))

(assert (=> bs!1218904 (not (= lambda!264868 lambda!264814))))

(declare-fun bs!1218905 () Bool)

(assert (= bs!1218905 (and b!5256159 b!5256049)))

(assert (=> bs!1218905 (= (and (= (regOne!30252 lt!2153952) (regOne!30252 lt!2153975)) (= (regTwo!30252 lt!2153952) (regTwo!30252 lt!2153975))) (= lambda!264868 lambda!264855))))

(declare-fun bs!1218906 () Bool)

(assert (= bs!1218906 (and b!5256159 d!1692275)))

(assert (=> bs!1218906 (not (= lambda!264868 lambda!264860))))

(assert (=> bs!1218898 (not (= lambda!264868 lambda!264865))))

(assert (=> bs!1218904 (= (and (= (regOne!30252 lt!2153952) (regOne!30252 r!7292)) (= (regTwo!30252 lt!2153952) (regTwo!30252 r!7292))) (= lambda!264868 lambda!264815))))

(assert (=> b!5256159 true))

(assert (=> b!5256159 true))

(declare-fun b!5256150 () Bool)

(declare-fun e!3269853 () Bool)

(declare-fun call!372506 () Bool)

(assert (=> b!5256150 (= e!3269853 call!372506)))

(declare-fun b!5256152 () Bool)

(declare-fun e!3269856 () Bool)

(assert (=> b!5256152 (= e!3269856 (= s!2326 (Cons!60785 (c!909406 lt!2153952) Nil!60785)))))

(declare-fun b!5256153 () Bool)

(declare-fun res!2230594 () Bool)

(declare-fun e!3269851 () Bool)

(assert (=> b!5256153 (=> res!2230594 e!3269851)))

(assert (=> b!5256153 (= res!2230594 call!372506)))

(declare-fun e!3269852 () Bool)

(assert (=> b!5256153 (= e!3269852 e!3269851)))

(declare-fun b!5256154 () Bool)

(declare-fun c!909541 () Bool)

(assert (=> b!5256154 (= c!909541 (is-Union!14870 lt!2153952))))

(declare-fun e!3269855 () Bool)

(assert (=> b!5256154 (= e!3269856 e!3269855)))

(declare-fun b!5256155 () Bool)

(assert (=> b!5256155 (= e!3269855 e!3269852)))

(declare-fun c!909540 () Bool)

(assert (=> b!5256155 (= c!909540 (is-Star!14870 lt!2153952))))

(declare-fun call!372505 () Bool)

(declare-fun bm!372500 () Bool)

(assert (=> bm!372500 (= call!372505 (Exists!2051 (ite c!909540 lambda!264867 lambda!264868)))))

(declare-fun b!5256156 () Bool)

(declare-fun e!3269854 () Bool)

(assert (=> b!5256156 (= e!3269855 e!3269854)))

(declare-fun res!2230595 () Bool)

(assert (=> b!5256156 (= res!2230595 (matchRSpec!1973 (regOne!30253 lt!2153952) s!2326))))

(assert (=> b!5256156 (=> res!2230595 e!3269854)))

(declare-fun bm!372501 () Bool)

(assert (=> bm!372501 (= call!372506 (isEmpty!32729 s!2326))))

(declare-fun b!5256157 () Bool)

(declare-fun c!909542 () Bool)

(assert (=> b!5256157 (= c!909542 (is-ElementMatch!14870 lt!2153952))))

(declare-fun e!3269850 () Bool)

(assert (=> b!5256157 (= e!3269850 e!3269856)))

(assert (=> b!5256158 (= e!3269851 call!372505)))

(assert (=> b!5256159 (= e!3269852 call!372505)))

(declare-fun b!5256160 () Bool)

(assert (=> b!5256160 (= e!3269854 (matchRSpec!1973 (regTwo!30253 lt!2153952) s!2326))))

(declare-fun b!5256151 () Bool)

(assert (=> b!5256151 (= e!3269853 e!3269850)))

(declare-fun res!2230596 () Bool)

(assert (=> b!5256151 (= res!2230596 (not (is-EmptyLang!14870 lt!2153952)))))

(assert (=> b!5256151 (=> (not res!2230596) (not e!3269850))))

(declare-fun d!1692287 () Bool)

(declare-fun c!909539 () Bool)

(assert (=> d!1692287 (= c!909539 (is-EmptyExpr!14870 lt!2153952))))

(assert (=> d!1692287 (= (matchRSpec!1973 lt!2153952 s!2326) e!3269853)))

(assert (= (and d!1692287 c!909539) b!5256150))

(assert (= (and d!1692287 (not c!909539)) b!5256151))

(assert (= (and b!5256151 res!2230596) b!5256157))

(assert (= (and b!5256157 c!909542) b!5256152))

(assert (= (and b!5256157 (not c!909542)) b!5256154))

(assert (= (and b!5256154 c!909541) b!5256156))

(assert (= (and b!5256154 (not c!909541)) b!5256155))

(assert (= (and b!5256156 (not res!2230595)) b!5256160))

(assert (= (and b!5256155 c!909540) b!5256153))

(assert (= (and b!5256155 (not c!909540)) b!5256159))

(assert (= (and b!5256153 (not res!2230594)) b!5256158))

(assert (= (or b!5256158 b!5256159) bm!372500))

(assert (= (or b!5256150 b!5256153) bm!372501))

(declare-fun m!6298782 () Bool)

(assert (=> bm!372500 m!6298782))

(declare-fun m!6298784 () Bool)

(assert (=> b!5256156 m!6298784))

(assert (=> bm!372501 m!6298512))

(declare-fun m!6298786 () Bool)

(assert (=> b!5256160 m!6298786))

(assert (=> b!5255621 d!1692287))

(declare-fun b!5256161 () Bool)

(declare-fun res!2230599 () Bool)

(declare-fun e!3269860 () Bool)

(assert (=> b!5256161 (=> res!2230599 e!3269860)))

(declare-fun e!3269863 () Bool)

(assert (=> b!5256161 (= res!2230599 e!3269863)))

(declare-fun res!2230602 () Bool)

(assert (=> b!5256161 (=> (not res!2230602) (not e!3269863))))

(declare-fun lt!2154193 () Bool)

(assert (=> b!5256161 (= res!2230602 lt!2154193)))

(declare-fun b!5256162 () Bool)

(assert (=> b!5256162 (= e!3269863 (= (head!11268 s!2326) (c!909406 lt!2153943)))))

(declare-fun b!5256163 () Bool)

(declare-fun e!3269857 () Bool)

(assert (=> b!5256163 (= e!3269857 (not (= (head!11268 s!2326) (c!909406 lt!2153943))))))

(declare-fun b!5256164 () Bool)

(declare-fun e!3269862 () Bool)

(assert (=> b!5256164 (= e!3269862 (matchR!7055 (derivativeStep!4096 lt!2153943 (head!11268 s!2326)) (tail!10365 s!2326)))))

(declare-fun b!5256165 () Bool)

(declare-fun res!2230601 () Bool)

(assert (=> b!5256165 (=> (not res!2230601) (not e!3269863))))

(declare-fun call!372507 () Bool)

(assert (=> b!5256165 (= res!2230601 (not call!372507))))

(declare-fun b!5256166 () Bool)

(declare-fun res!2230603 () Bool)

(assert (=> b!5256166 (=> res!2230603 e!3269860)))

(assert (=> b!5256166 (= res!2230603 (not (is-ElementMatch!14870 lt!2153943)))))

(declare-fun e!3269858 () Bool)

(assert (=> b!5256166 (= e!3269858 e!3269860)))

(declare-fun b!5256168 () Bool)

(declare-fun res!2230598 () Bool)

(assert (=> b!5256168 (=> res!2230598 e!3269857)))

(assert (=> b!5256168 (= res!2230598 (not (isEmpty!32729 (tail!10365 s!2326))))))

(declare-fun b!5256169 () Bool)

(assert (=> b!5256169 (= e!3269862 (nullable!5039 lt!2153943))))

(declare-fun b!5256170 () Bool)

(declare-fun e!3269859 () Bool)

(assert (=> b!5256170 (= e!3269859 (= lt!2154193 call!372507))))

(declare-fun bm!372502 () Bool)

(assert (=> bm!372502 (= call!372507 (isEmpty!32729 s!2326))))

(declare-fun b!5256171 () Bool)

(declare-fun res!2230597 () Bool)

(assert (=> b!5256171 (=> (not res!2230597) (not e!3269863))))

(assert (=> b!5256171 (= res!2230597 (isEmpty!32729 (tail!10365 s!2326)))))

(declare-fun b!5256172 () Bool)

(assert (=> b!5256172 (= e!3269858 (not lt!2154193))))

(declare-fun b!5256173 () Bool)

(declare-fun e!3269861 () Bool)

(assert (=> b!5256173 (= e!3269860 e!3269861)))

(declare-fun res!2230600 () Bool)

(assert (=> b!5256173 (=> (not res!2230600) (not e!3269861))))

(assert (=> b!5256173 (= res!2230600 (not lt!2154193))))

(declare-fun b!5256174 () Bool)

(assert (=> b!5256174 (= e!3269859 e!3269858)))

(declare-fun c!909545 () Bool)

(assert (=> b!5256174 (= c!909545 (is-EmptyLang!14870 lt!2153943))))

(declare-fun d!1692289 () Bool)

(assert (=> d!1692289 e!3269859))

(declare-fun c!909543 () Bool)

(assert (=> d!1692289 (= c!909543 (is-EmptyExpr!14870 lt!2153943))))

(assert (=> d!1692289 (= lt!2154193 e!3269862)))

(declare-fun c!909544 () Bool)

(assert (=> d!1692289 (= c!909544 (isEmpty!32729 s!2326))))

(assert (=> d!1692289 (validRegex!6606 lt!2153943)))

(assert (=> d!1692289 (= (matchR!7055 lt!2153943 s!2326) lt!2154193)))

(declare-fun b!5256167 () Bool)

(assert (=> b!5256167 (= e!3269861 e!3269857)))

(declare-fun res!2230604 () Bool)

(assert (=> b!5256167 (=> res!2230604 e!3269857)))

(assert (=> b!5256167 (= res!2230604 call!372507)))

(assert (= (and d!1692289 c!909544) b!5256169))

(assert (= (and d!1692289 (not c!909544)) b!5256164))

(assert (= (and d!1692289 c!909543) b!5256170))

(assert (= (and d!1692289 (not c!909543)) b!5256174))

(assert (= (and b!5256174 c!909545) b!5256172))

(assert (= (and b!5256174 (not c!909545)) b!5256166))

(assert (= (and b!5256166 (not res!2230603)) b!5256161))

(assert (= (and b!5256161 res!2230602) b!5256165))

(assert (= (and b!5256165 res!2230601) b!5256171))

(assert (= (and b!5256171 res!2230597) b!5256162))

(assert (= (and b!5256161 (not res!2230599)) b!5256173))

(assert (= (and b!5256173 res!2230600) b!5256167))

(assert (= (and b!5256167 (not res!2230604)) b!5256168))

(assert (= (and b!5256168 (not res!2230598)) b!5256163))

(assert (= (or b!5256170 b!5256165 b!5256167) bm!372502))

(assert (=> d!1692289 m!6298512))

(declare-fun m!6298788 () Bool)

(assert (=> d!1692289 m!6298788))

(assert (=> b!5256163 m!6298516))

(declare-fun m!6298790 () Bool)

(assert (=> b!5256169 m!6298790))

(assert (=> b!5256168 m!6298520))

(assert (=> b!5256168 m!6298520))

(assert (=> b!5256168 m!6298676))

(assert (=> b!5256162 m!6298516))

(assert (=> b!5256164 m!6298516))

(assert (=> b!5256164 m!6298516))

(declare-fun m!6298792 () Bool)

(assert (=> b!5256164 m!6298792))

(assert (=> b!5256164 m!6298520))

(assert (=> b!5256164 m!6298792))

(assert (=> b!5256164 m!6298520))

(declare-fun m!6298794 () Bool)

(assert (=> b!5256164 m!6298794))

(assert (=> b!5256171 m!6298520))

(assert (=> b!5256171 m!6298520))

(assert (=> b!5256171 m!6298676))

(assert (=> bm!372502 m!6298512))

(assert (=> b!5255621 d!1692289))

(declare-fun bs!1218907 () Bool)

(declare-fun b!5256183 () Bool)

(assert (= bs!1218907 (and b!5256183 b!5255981)))

(declare-fun lambda!264869 () Int)

(assert (=> bs!1218907 (= (and (= (reg!15199 lt!2153943) (reg!15199 lt!2153955)) (= lt!2153943 lt!2153955)) (= lambda!264869 lambda!264852))))

(declare-fun bs!1218908 () Bool)

(assert (= bs!1218908 (and b!5256183 d!1692277)))

(assert (=> bs!1218908 (not (= lambda!264869 lambda!264866))))

(declare-fun bs!1218909 () Bool)

(assert (= bs!1218909 (and b!5256183 b!5255982)))

(assert (=> bs!1218909 (not (= lambda!264869 lambda!264853))))

(declare-fun bs!1218910 () Bool)

(assert (= bs!1218910 (and b!5256183 b!5256061)))

(assert (=> bs!1218910 (= (and (= (reg!15199 lt!2153943) (reg!15199 r!7292)) (= lt!2153943 r!7292)) (= lambda!264869 lambda!264856))))

(declare-fun bs!1218911 () Bool)

(assert (= bs!1218911 (and b!5256183 b!5256158)))

(assert (=> bs!1218911 (= (and (= (reg!15199 lt!2153943) (reg!15199 lt!2153952)) (= lt!2153943 lt!2153952)) (= lambda!264869 lambda!264867))))

(declare-fun bs!1218912 () Bool)

(assert (= bs!1218912 (and b!5256183 b!5256062)))

(assert (=> bs!1218912 (not (= lambda!264869 lambda!264857))))

(declare-fun bs!1218913 () Bool)

(assert (= bs!1218913 (and b!5256183 b!5256159)))

(assert (=> bs!1218913 (not (= lambda!264869 lambda!264868))))

(declare-fun bs!1218914 () Bool)

(assert (= bs!1218914 (and b!5256183 b!5256048)))

(assert (=> bs!1218914 (= (and (= (reg!15199 lt!2153943) (reg!15199 lt!2153975)) (= lt!2153943 lt!2153975)) (= lambda!264869 lambda!264854))))

(declare-fun bs!1218915 () Bool)

(assert (= bs!1218915 (and b!5256183 b!5255588)))

(assert (=> bs!1218915 (not (= lambda!264869 lambda!264814))))

(declare-fun bs!1218916 () Bool)

(assert (= bs!1218916 (and b!5256183 b!5256049)))

(assert (=> bs!1218916 (not (= lambda!264869 lambda!264855))))

(declare-fun bs!1218917 () Bool)

(assert (= bs!1218917 (and b!5256183 d!1692275)))

(assert (=> bs!1218917 (not (= lambda!264869 lambda!264860))))

(assert (=> bs!1218908 (not (= lambda!264869 lambda!264865))))

(assert (=> bs!1218915 (not (= lambda!264869 lambda!264815))))

(assert (=> b!5256183 true))

(assert (=> b!5256183 true))

(declare-fun bs!1218918 () Bool)

(declare-fun b!5256184 () Bool)

(assert (= bs!1218918 (and b!5256184 b!5256183)))

(declare-fun lambda!264870 () Int)

(assert (=> bs!1218918 (not (= lambda!264870 lambda!264869))))

(declare-fun bs!1218919 () Bool)

(assert (= bs!1218919 (and b!5256184 b!5255981)))

(assert (=> bs!1218919 (not (= lambda!264870 lambda!264852))))

(declare-fun bs!1218920 () Bool)

(assert (= bs!1218920 (and b!5256184 d!1692277)))

(assert (=> bs!1218920 (= (and (= (regOne!30252 lt!2153943) (regOne!30252 r!7292)) (= (regTwo!30252 lt!2153943) (regTwo!30252 r!7292))) (= lambda!264870 lambda!264866))))

(declare-fun bs!1218921 () Bool)

(assert (= bs!1218921 (and b!5256184 b!5255982)))

(assert (=> bs!1218921 (= (and (= (regOne!30252 lt!2153943) (regOne!30252 lt!2153955)) (= (regTwo!30252 lt!2153943) (regTwo!30252 lt!2153955))) (= lambda!264870 lambda!264853))))

(declare-fun bs!1218922 () Bool)

(assert (= bs!1218922 (and b!5256184 b!5256061)))

(assert (=> bs!1218922 (not (= lambda!264870 lambda!264856))))

(declare-fun bs!1218923 () Bool)

(assert (= bs!1218923 (and b!5256184 b!5256158)))

(assert (=> bs!1218923 (not (= lambda!264870 lambda!264867))))

(declare-fun bs!1218924 () Bool)

(assert (= bs!1218924 (and b!5256184 b!5256062)))

(assert (=> bs!1218924 (= (and (= (regOne!30252 lt!2153943) (regOne!30252 r!7292)) (= (regTwo!30252 lt!2153943) (regTwo!30252 r!7292))) (= lambda!264870 lambda!264857))))

(declare-fun bs!1218925 () Bool)

(assert (= bs!1218925 (and b!5256184 b!5256159)))

(assert (=> bs!1218925 (= (and (= (regOne!30252 lt!2153943) (regOne!30252 lt!2153952)) (= (regTwo!30252 lt!2153943) (regTwo!30252 lt!2153952))) (= lambda!264870 lambda!264868))))

(declare-fun bs!1218926 () Bool)

(assert (= bs!1218926 (and b!5256184 b!5256048)))

(assert (=> bs!1218926 (not (= lambda!264870 lambda!264854))))

(declare-fun bs!1218927 () Bool)

(assert (= bs!1218927 (and b!5256184 b!5255588)))

(assert (=> bs!1218927 (not (= lambda!264870 lambda!264814))))

(declare-fun bs!1218928 () Bool)

(assert (= bs!1218928 (and b!5256184 b!5256049)))

(assert (=> bs!1218928 (= (and (= (regOne!30252 lt!2153943) (regOne!30252 lt!2153975)) (= (regTwo!30252 lt!2153943) (regTwo!30252 lt!2153975))) (= lambda!264870 lambda!264855))))

(declare-fun bs!1218929 () Bool)

(assert (= bs!1218929 (and b!5256184 d!1692275)))

(assert (=> bs!1218929 (not (= lambda!264870 lambda!264860))))

(assert (=> bs!1218920 (not (= lambda!264870 lambda!264865))))

(assert (=> bs!1218927 (= (and (= (regOne!30252 lt!2153943) (regOne!30252 r!7292)) (= (regTwo!30252 lt!2153943) (regTwo!30252 r!7292))) (= lambda!264870 lambda!264815))))

(assert (=> b!5256184 true))

(assert (=> b!5256184 true))

(declare-fun b!5256175 () Bool)

(declare-fun e!3269867 () Bool)

(declare-fun call!372509 () Bool)

(assert (=> b!5256175 (= e!3269867 call!372509)))

(declare-fun b!5256177 () Bool)

(declare-fun e!3269870 () Bool)

(assert (=> b!5256177 (= e!3269870 (= s!2326 (Cons!60785 (c!909406 lt!2153943) Nil!60785)))))

(declare-fun b!5256178 () Bool)

(declare-fun res!2230605 () Bool)

(declare-fun e!3269865 () Bool)

(assert (=> b!5256178 (=> res!2230605 e!3269865)))

(assert (=> b!5256178 (= res!2230605 call!372509)))

(declare-fun e!3269866 () Bool)

(assert (=> b!5256178 (= e!3269866 e!3269865)))

(declare-fun b!5256179 () Bool)

(declare-fun c!909548 () Bool)

(assert (=> b!5256179 (= c!909548 (is-Union!14870 lt!2153943))))

(declare-fun e!3269869 () Bool)

(assert (=> b!5256179 (= e!3269870 e!3269869)))

(declare-fun b!5256180 () Bool)

(assert (=> b!5256180 (= e!3269869 e!3269866)))

(declare-fun c!909547 () Bool)

(assert (=> b!5256180 (= c!909547 (is-Star!14870 lt!2153943))))

(declare-fun bm!372503 () Bool)

(declare-fun call!372508 () Bool)

(assert (=> bm!372503 (= call!372508 (Exists!2051 (ite c!909547 lambda!264869 lambda!264870)))))

(declare-fun b!5256181 () Bool)

(declare-fun e!3269868 () Bool)

(assert (=> b!5256181 (= e!3269869 e!3269868)))

(declare-fun res!2230606 () Bool)

(assert (=> b!5256181 (= res!2230606 (matchRSpec!1973 (regOne!30253 lt!2153943) s!2326))))

(assert (=> b!5256181 (=> res!2230606 e!3269868)))

(declare-fun bm!372504 () Bool)

(assert (=> bm!372504 (= call!372509 (isEmpty!32729 s!2326))))

(declare-fun b!5256182 () Bool)

(declare-fun c!909549 () Bool)

(assert (=> b!5256182 (= c!909549 (is-ElementMatch!14870 lt!2153943))))

(declare-fun e!3269864 () Bool)

(assert (=> b!5256182 (= e!3269864 e!3269870)))

(assert (=> b!5256183 (= e!3269865 call!372508)))

(assert (=> b!5256184 (= e!3269866 call!372508)))

(declare-fun b!5256185 () Bool)

(assert (=> b!5256185 (= e!3269868 (matchRSpec!1973 (regTwo!30253 lt!2153943) s!2326))))

(declare-fun b!5256176 () Bool)

(assert (=> b!5256176 (= e!3269867 e!3269864)))

(declare-fun res!2230607 () Bool)

(assert (=> b!5256176 (= res!2230607 (not (is-EmptyLang!14870 lt!2153943)))))

(assert (=> b!5256176 (=> (not res!2230607) (not e!3269864))))

(declare-fun d!1692291 () Bool)

(declare-fun c!909546 () Bool)

(assert (=> d!1692291 (= c!909546 (is-EmptyExpr!14870 lt!2153943))))

(assert (=> d!1692291 (= (matchRSpec!1973 lt!2153943 s!2326) e!3269867)))

(assert (= (and d!1692291 c!909546) b!5256175))

(assert (= (and d!1692291 (not c!909546)) b!5256176))

(assert (= (and b!5256176 res!2230607) b!5256182))

(assert (= (and b!5256182 c!909549) b!5256177))

(assert (= (and b!5256182 (not c!909549)) b!5256179))

(assert (= (and b!5256179 c!909548) b!5256181))

(assert (= (and b!5256179 (not c!909548)) b!5256180))

(assert (= (and b!5256181 (not res!2230606)) b!5256185))

(assert (= (and b!5256180 c!909547) b!5256178))

(assert (= (and b!5256180 (not c!909547)) b!5256184))

(assert (= (and b!5256178 (not res!2230605)) b!5256183))

(assert (= (or b!5256183 b!5256184) bm!372503))

(assert (= (or b!5256175 b!5256178) bm!372504))

(declare-fun m!6298796 () Bool)

(assert (=> bm!372503 m!6298796))

(declare-fun m!6298798 () Bool)

(assert (=> b!5256181 m!6298798))

(assert (=> bm!372504 m!6298512))

(declare-fun m!6298800 () Bool)

(assert (=> b!5256185 m!6298800))

(assert (=> b!5255621 d!1692291))

(declare-fun d!1692293 () Bool)

(assert (=> d!1692293 (= (matchR!7055 lt!2153952 s!2326) (matchRSpec!1973 lt!2153952 s!2326))))

(declare-fun lt!2154194 () Unit!152974)

(assert (=> d!1692293 (= lt!2154194 (choose!39187 lt!2153952 s!2326))))

(assert (=> d!1692293 (validRegex!6606 lt!2153952)))

(assert (=> d!1692293 (= (mainMatchTheorem!1973 lt!2153952 s!2326) lt!2154194)))

(declare-fun bs!1218930 () Bool)

(assert (= bs!1218930 d!1692293))

(assert (=> bs!1218930 m!6298356))

(assert (=> bs!1218930 m!6298342))

(declare-fun m!6298802 () Bool)

(assert (=> bs!1218930 m!6298802))

(declare-fun m!6298804 () Bool)

(assert (=> bs!1218930 m!6298804))

(assert (=> b!5255621 d!1692293))

(declare-fun bs!1218931 () Bool)

(declare-fun d!1692295 () Bool)

(assert (= bs!1218931 (and d!1692295 d!1692207)))

(declare-fun lambda!264871 () Int)

(assert (=> bs!1218931 (= lambda!264871 lambda!264841)))

(declare-fun bs!1218932 () Bool)

(assert (= bs!1218932 (and d!1692295 b!5255599)))

(assert (=> bs!1218932 (= lambda!264871 lambda!264817)))

(declare-fun bs!1218933 () Bool)

(assert (= bs!1218933 (and d!1692295 d!1692211)))

(assert (=> bs!1218933 (= lambda!264871 lambda!264844)))

(declare-fun bs!1218934 () Bool)

(assert (= bs!1218934 (and d!1692295 d!1692205)))

(assert (=> bs!1218934 (= lambda!264871 lambda!264838)))

(declare-fun bs!1218935 () Bool)

(assert (= bs!1218935 (and d!1692295 d!1692233)))

(assert (=> bs!1218935 (= lambda!264871 lambda!264847)))

(declare-fun b!5256186 () Bool)

(declare-fun e!3269875 () Bool)

(declare-fun lt!2154195 () Regex!14870)

(assert (=> b!5256186 (= e!3269875 (isConcat!333 lt!2154195))))

(declare-fun b!5256187 () Bool)

(declare-fun e!3269872 () Bool)

(assert (=> b!5256187 (= e!3269872 (isEmpty!32726 (t!374093 lt!2153948)))))

(declare-fun b!5256188 () Bool)

(declare-fun e!3269876 () Bool)

(assert (=> b!5256188 (= e!3269876 e!3269875)))

(declare-fun c!909550 () Bool)

(assert (=> b!5256188 (= c!909550 (isEmpty!32726 (tail!10366 lt!2153948)))))

(declare-fun b!5256189 () Bool)

(declare-fun e!3269873 () Bool)

(assert (=> b!5256189 (= e!3269873 e!3269876)))

(declare-fun c!909552 () Bool)

(assert (=> b!5256189 (= c!909552 (isEmpty!32726 lt!2153948))))

(declare-fun b!5256190 () Bool)

(declare-fun e!3269871 () Regex!14870)

(assert (=> b!5256190 (= e!3269871 (Concat!23715 (h!67234 lt!2153948) (generalisedConcat!539 (t!374093 lt!2153948))))))

(assert (=> d!1692295 e!3269873))

(declare-fun res!2230609 () Bool)

(assert (=> d!1692295 (=> (not res!2230609) (not e!3269873))))

(assert (=> d!1692295 (= res!2230609 (validRegex!6606 lt!2154195))))

(declare-fun e!3269874 () Regex!14870)

(assert (=> d!1692295 (= lt!2154195 e!3269874)))

(declare-fun c!909553 () Bool)

(assert (=> d!1692295 (= c!909553 e!3269872)))

(declare-fun res!2230608 () Bool)

(assert (=> d!1692295 (=> (not res!2230608) (not e!3269872))))

(assert (=> d!1692295 (= res!2230608 (is-Cons!60786 lt!2153948))))

(assert (=> d!1692295 (forall!14284 lt!2153948 lambda!264871)))

(assert (=> d!1692295 (= (generalisedConcat!539 lt!2153948) lt!2154195)))

(declare-fun b!5256191 () Bool)

(assert (=> b!5256191 (= e!3269874 (h!67234 lt!2153948))))

(declare-fun b!5256192 () Bool)

(assert (=> b!5256192 (= e!3269871 EmptyExpr!14870)))

(declare-fun b!5256193 () Bool)

(assert (=> b!5256193 (= e!3269875 (= lt!2154195 (head!11269 lt!2153948)))))

(declare-fun b!5256194 () Bool)

(assert (=> b!5256194 (= e!3269874 e!3269871)))

(declare-fun c!909551 () Bool)

(assert (=> b!5256194 (= c!909551 (is-Cons!60786 lt!2153948))))

(declare-fun b!5256195 () Bool)

(assert (=> b!5256195 (= e!3269876 (isEmptyExpr!810 lt!2154195))))

(assert (= (and d!1692295 res!2230608) b!5256187))

(assert (= (and d!1692295 c!909553) b!5256191))

(assert (= (and d!1692295 (not c!909553)) b!5256194))

(assert (= (and b!5256194 c!909551) b!5256190))

(assert (= (and b!5256194 (not c!909551)) b!5256192))

(assert (= (and d!1692295 res!2230609) b!5256189))

(assert (= (and b!5256189 c!909552) b!5256195))

(assert (= (and b!5256189 (not c!909552)) b!5256188))

(assert (= (and b!5256188 c!909550) b!5256193))

(assert (= (and b!5256188 (not c!909550)) b!5256186))

(declare-fun m!6298806 () Bool)

(assert (=> b!5256195 m!6298806))

(declare-fun m!6298808 () Bool)

(assert (=> b!5256190 m!6298808))

(declare-fun m!6298810 () Bool)

(assert (=> b!5256187 m!6298810))

(declare-fun m!6298812 () Bool)

(assert (=> b!5256188 m!6298812))

(assert (=> b!5256188 m!6298812))

(declare-fun m!6298814 () Bool)

(assert (=> b!5256188 m!6298814))

(declare-fun m!6298816 () Bool)

(assert (=> b!5256189 m!6298816))

(declare-fun m!6298818 () Bool)

(assert (=> d!1692295 m!6298818))

(declare-fun m!6298820 () Bool)

(assert (=> d!1692295 m!6298820))

(declare-fun m!6298822 () Bool)

(assert (=> b!5256193 m!6298822))

(declare-fun m!6298824 () Bool)

(assert (=> b!5256186 m!6298824))

(assert (=> b!5255621 d!1692295))

(declare-fun b!5256196 () Bool)

(declare-fun res!2230612 () Bool)

(declare-fun e!3269880 () Bool)

(assert (=> b!5256196 (=> res!2230612 e!3269880)))

(declare-fun e!3269883 () Bool)

(assert (=> b!5256196 (= res!2230612 e!3269883)))

(declare-fun res!2230615 () Bool)

(assert (=> b!5256196 (=> (not res!2230615) (not e!3269883))))

(declare-fun lt!2154196 () Bool)

(assert (=> b!5256196 (= res!2230615 lt!2154196)))

(declare-fun b!5256197 () Bool)

(assert (=> b!5256197 (= e!3269883 (= (head!11268 s!2326) (c!909406 lt!2153952)))))

(declare-fun b!5256198 () Bool)

(declare-fun e!3269877 () Bool)

(assert (=> b!5256198 (= e!3269877 (not (= (head!11268 s!2326) (c!909406 lt!2153952))))))

(declare-fun b!5256199 () Bool)

(declare-fun e!3269882 () Bool)

(assert (=> b!5256199 (= e!3269882 (matchR!7055 (derivativeStep!4096 lt!2153952 (head!11268 s!2326)) (tail!10365 s!2326)))))

(declare-fun b!5256200 () Bool)

(declare-fun res!2230614 () Bool)

(assert (=> b!5256200 (=> (not res!2230614) (not e!3269883))))

(declare-fun call!372510 () Bool)

(assert (=> b!5256200 (= res!2230614 (not call!372510))))

(declare-fun b!5256201 () Bool)

(declare-fun res!2230616 () Bool)

(assert (=> b!5256201 (=> res!2230616 e!3269880)))

(assert (=> b!5256201 (= res!2230616 (not (is-ElementMatch!14870 lt!2153952)))))

(declare-fun e!3269878 () Bool)

(assert (=> b!5256201 (= e!3269878 e!3269880)))

(declare-fun b!5256203 () Bool)

(declare-fun res!2230611 () Bool)

(assert (=> b!5256203 (=> res!2230611 e!3269877)))

(assert (=> b!5256203 (= res!2230611 (not (isEmpty!32729 (tail!10365 s!2326))))))

(declare-fun b!5256204 () Bool)

(assert (=> b!5256204 (= e!3269882 (nullable!5039 lt!2153952))))

(declare-fun b!5256205 () Bool)

(declare-fun e!3269879 () Bool)

(assert (=> b!5256205 (= e!3269879 (= lt!2154196 call!372510))))

(declare-fun bm!372505 () Bool)

(assert (=> bm!372505 (= call!372510 (isEmpty!32729 s!2326))))

(declare-fun b!5256206 () Bool)

(declare-fun res!2230610 () Bool)

(assert (=> b!5256206 (=> (not res!2230610) (not e!3269883))))

(assert (=> b!5256206 (= res!2230610 (isEmpty!32729 (tail!10365 s!2326)))))

(declare-fun b!5256207 () Bool)

(assert (=> b!5256207 (= e!3269878 (not lt!2154196))))

(declare-fun b!5256208 () Bool)

(declare-fun e!3269881 () Bool)

(assert (=> b!5256208 (= e!3269880 e!3269881)))

(declare-fun res!2230613 () Bool)

(assert (=> b!5256208 (=> (not res!2230613) (not e!3269881))))

(assert (=> b!5256208 (= res!2230613 (not lt!2154196))))

(declare-fun b!5256209 () Bool)

(assert (=> b!5256209 (= e!3269879 e!3269878)))

(declare-fun c!909556 () Bool)

(assert (=> b!5256209 (= c!909556 (is-EmptyLang!14870 lt!2153952))))

(declare-fun d!1692297 () Bool)

(assert (=> d!1692297 e!3269879))

(declare-fun c!909554 () Bool)

(assert (=> d!1692297 (= c!909554 (is-EmptyExpr!14870 lt!2153952))))

(assert (=> d!1692297 (= lt!2154196 e!3269882)))

(declare-fun c!909555 () Bool)

(assert (=> d!1692297 (= c!909555 (isEmpty!32729 s!2326))))

(assert (=> d!1692297 (validRegex!6606 lt!2153952)))

(assert (=> d!1692297 (= (matchR!7055 lt!2153952 s!2326) lt!2154196)))

(declare-fun b!5256202 () Bool)

(assert (=> b!5256202 (= e!3269881 e!3269877)))

(declare-fun res!2230617 () Bool)

(assert (=> b!5256202 (=> res!2230617 e!3269877)))

(assert (=> b!5256202 (= res!2230617 call!372510)))

(assert (= (and d!1692297 c!909555) b!5256204))

(assert (= (and d!1692297 (not c!909555)) b!5256199))

(assert (= (and d!1692297 c!909554) b!5256205))

(assert (= (and d!1692297 (not c!909554)) b!5256209))

(assert (= (and b!5256209 c!909556) b!5256207))

(assert (= (and b!5256209 (not c!909556)) b!5256201))

(assert (= (and b!5256201 (not res!2230616)) b!5256196))

(assert (= (and b!5256196 res!2230615) b!5256200))

(assert (= (and b!5256200 res!2230614) b!5256206))

(assert (= (and b!5256206 res!2230610) b!5256197))

(assert (= (and b!5256196 (not res!2230612)) b!5256208))

(assert (= (and b!5256208 res!2230613) b!5256202))

(assert (= (and b!5256202 (not res!2230617)) b!5256203))

(assert (= (and b!5256203 (not res!2230611)) b!5256198))

(assert (= (or b!5256205 b!5256200 b!5256202) bm!372505))

(assert (=> d!1692297 m!6298512))

(assert (=> d!1692297 m!6298804))

(assert (=> b!5256198 m!6298516))

(declare-fun m!6298826 () Bool)

(assert (=> b!5256204 m!6298826))

(assert (=> b!5256203 m!6298520))

(assert (=> b!5256203 m!6298520))

(assert (=> b!5256203 m!6298676))

(assert (=> b!5256197 m!6298516))

(assert (=> b!5256199 m!6298516))

(assert (=> b!5256199 m!6298516))

(declare-fun m!6298828 () Bool)

(assert (=> b!5256199 m!6298828))

(assert (=> b!5256199 m!6298520))

(assert (=> b!5256199 m!6298828))

(assert (=> b!5256199 m!6298520))

(declare-fun m!6298830 () Bool)

(assert (=> b!5256199 m!6298830))

(assert (=> b!5256206 m!6298520))

(assert (=> b!5256206 m!6298520))

(assert (=> b!5256206 m!6298676))

(assert (=> bm!372505 m!6298512))

(assert (=> b!5255621 d!1692297))

(declare-fun d!1692299 () Bool)

(assert (=> d!1692299 (= (matchR!7055 lt!2153952 s!2326) (matchZipper!1114 lt!2153939 s!2326))))

(declare-fun lt!2154199 () Unit!152974)

(declare-fun choose!39192 ((Set Context!8508) List!60911 Regex!14870 List!60909) Unit!152974)

(assert (=> d!1692299 (= lt!2154199 (choose!39192 lt!2153939 lt!2153958 lt!2153952 s!2326))))

(assert (=> d!1692299 (validRegex!6606 lt!2153952)))

(assert (=> d!1692299 (= (theoremZipperRegexEquiv!304 lt!2153939 lt!2153958 lt!2153952 s!2326) lt!2154199)))

(declare-fun bs!1218936 () Bool)

(assert (= bs!1218936 d!1692299))

(assert (=> bs!1218936 m!6298356))

(assert (=> bs!1218936 m!6298330))

(declare-fun m!6298832 () Bool)

(assert (=> bs!1218936 m!6298832))

(assert (=> bs!1218936 m!6298804))

(assert (=> b!5255621 d!1692299))

(declare-fun d!1692301 () Bool)

(assert (=> d!1692301 (= (matchR!7055 lt!2153943 s!2326) (matchRSpec!1973 lt!2153943 s!2326))))

(declare-fun lt!2154200 () Unit!152974)

(assert (=> d!1692301 (= lt!2154200 (choose!39187 lt!2153943 s!2326))))

(assert (=> d!1692301 (validRegex!6606 lt!2153943)))

(assert (=> d!1692301 (= (mainMatchTheorem!1973 lt!2153943 s!2326) lt!2154200)))

(declare-fun bs!1218937 () Bool)

(assert (= bs!1218937 d!1692301))

(assert (=> bs!1218937 m!6298358))

(assert (=> bs!1218937 m!6298352))

(declare-fun m!6298834 () Bool)

(assert (=> bs!1218937 m!6298834))

(assert (=> bs!1218937 m!6298788))

(assert (=> b!5255621 d!1692301))

(assert (=> b!5255621 d!1692195))

(declare-fun d!1692303 () Bool)

(assert (=> d!1692303 (= (matchR!7055 lt!2153943 s!2326) (matchZipper!1114 lt!2153923 s!2326))))

(declare-fun lt!2154201 () Unit!152974)

(assert (=> d!1692303 (= lt!2154201 (choose!39192 lt!2153923 lt!2153937 lt!2153943 s!2326))))

(assert (=> d!1692303 (validRegex!6606 lt!2153943)))

(assert (=> d!1692303 (= (theoremZipperRegexEquiv!304 lt!2153923 lt!2153937 lt!2153943 s!2326) lt!2154201)))

(declare-fun bs!1218938 () Bool)

(assert (= bs!1218938 d!1692303))

(assert (=> bs!1218938 m!6298358))

(assert (=> bs!1218938 m!6298220))

(declare-fun m!6298836 () Bool)

(assert (=> bs!1218938 m!6298836))

(assert (=> bs!1218938 m!6298788))

(assert (=> b!5255621 d!1692303))

(declare-fun bs!1218939 () Bool)

(declare-fun d!1692305 () Bool)

(assert (= bs!1218939 (and d!1692305 d!1692207)))

(declare-fun lambda!264872 () Int)

(assert (=> bs!1218939 (= lambda!264872 lambda!264841)))

(declare-fun bs!1218940 () Bool)

(assert (= bs!1218940 (and d!1692305 b!5255599)))

(assert (=> bs!1218940 (= lambda!264872 lambda!264817)))

(declare-fun bs!1218941 () Bool)

(assert (= bs!1218941 (and d!1692305 d!1692205)))

(assert (=> bs!1218941 (= lambda!264872 lambda!264838)))

(declare-fun bs!1218942 () Bool)

(assert (= bs!1218942 (and d!1692305 d!1692233)))

(assert (=> bs!1218942 (= lambda!264872 lambda!264847)))

(declare-fun bs!1218943 () Bool)

(assert (= bs!1218943 (and d!1692305 d!1692295)))

(assert (=> bs!1218943 (= lambda!264872 lambda!264871)))

(declare-fun bs!1218944 () Bool)

(assert (= bs!1218944 (and d!1692305 d!1692211)))

(assert (=> bs!1218944 (= lambda!264872 lambda!264844)))

(declare-fun b!5256210 () Bool)

(declare-fun e!3269888 () Bool)

(declare-fun lt!2154202 () Regex!14870)

(assert (=> b!5256210 (= e!3269888 (isConcat!333 lt!2154202))))

(declare-fun b!5256211 () Bool)

(declare-fun e!3269885 () Bool)

(assert (=> b!5256211 (= e!3269885 (isEmpty!32726 (t!374093 lt!2153942)))))

(declare-fun b!5256212 () Bool)

(declare-fun e!3269889 () Bool)

(assert (=> b!5256212 (= e!3269889 e!3269888)))

(declare-fun c!909557 () Bool)

(assert (=> b!5256212 (= c!909557 (isEmpty!32726 (tail!10366 lt!2153942)))))

(declare-fun b!5256213 () Bool)

(declare-fun e!3269886 () Bool)

(assert (=> b!5256213 (= e!3269886 e!3269889)))

(declare-fun c!909559 () Bool)

(assert (=> b!5256213 (= c!909559 (isEmpty!32726 lt!2153942))))

(declare-fun b!5256214 () Bool)

(declare-fun e!3269884 () Regex!14870)

(assert (=> b!5256214 (= e!3269884 (Concat!23715 (h!67234 lt!2153942) (generalisedConcat!539 (t!374093 lt!2153942))))))

(assert (=> d!1692305 e!3269886))

(declare-fun res!2230619 () Bool)

(assert (=> d!1692305 (=> (not res!2230619) (not e!3269886))))

(assert (=> d!1692305 (= res!2230619 (validRegex!6606 lt!2154202))))

(declare-fun e!3269887 () Regex!14870)

(assert (=> d!1692305 (= lt!2154202 e!3269887)))

(declare-fun c!909560 () Bool)

(assert (=> d!1692305 (= c!909560 e!3269885)))

(declare-fun res!2230618 () Bool)

(assert (=> d!1692305 (=> (not res!2230618) (not e!3269885))))

(assert (=> d!1692305 (= res!2230618 (is-Cons!60786 lt!2153942))))

(assert (=> d!1692305 (forall!14284 lt!2153942 lambda!264872)))

(assert (=> d!1692305 (= (generalisedConcat!539 lt!2153942) lt!2154202)))

(declare-fun b!5256215 () Bool)

(assert (=> b!5256215 (= e!3269887 (h!67234 lt!2153942))))

(declare-fun b!5256216 () Bool)

(assert (=> b!5256216 (= e!3269884 EmptyExpr!14870)))

(declare-fun b!5256217 () Bool)

(assert (=> b!5256217 (= e!3269888 (= lt!2154202 (head!11269 lt!2153942)))))

(declare-fun b!5256218 () Bool)

(assert (=> b!5256218 (= e!3269887 e!3269884)))

(declare-fun c!909558 () Bool)

(assert (=> b!5256218 (= c!909558 (is-Cons!60786 lt!2153942))))

(declare-fun b!5256219 () Bool)

(assert (=> b!5256219 (= e!3269889 (isEmptyExpr!810 lt!2154202))))

(assert (= (and d!1692305 res!2230618) b!5256211))

(assert (= (and d!1692305 c!909560) b!5256215))

(assert (= (and d!1692305 (not c!909560)) b!5256218))

(assert (= (and b!5256218 c!909558) b!5256214))

(assert (= (and b!5256218 (not c!909558)) b!5256216))

(assert (= (and d!1692305 res!2230619) b!5256213))

(assert (= (and b!5256213 c!909559) b!5256219))

(assert (= (and b!5256213 (not c!909559)) b!5256212))

(assert (= (and b!5256212 c!909557) b!5256217))

(assert (= (and b!5256212 (not c!909557)) b!5256210))

(declare-fun m!6298838 () Bool)

(assert (=> b!5256219 m!6298838))

(declare-fun m!6298840 () Bool)

(assert (=> b!5256214 m!6298840))

(declare-fun m!6298842 () Bool)

(assert (=> b!5256211 m!6298842))

(declare-fun m!6298844 () Bool)

(assert (=> b!5256212 m!6298844))

(assert (=> b!5256212 m!6298844))

(declare-fun m!6298846 () Bool)

(assert (=> b!5256212 m!6298846))

(declare-fun m!6298848 () Bool)

(assert (=> b!5256213 m!6298848))

(declare-fun m!6298850 () Bool)

(assert (=> d!1692305 m!6298850))

(declare-fun m!6298852 () Bool)

(assert (=> d!1692305 m!6298852))

(declare-fun m!6298854 () Bool)

(assert (=> b!5256217 m!6298854))

(declare-fun m!6298856 () Bool)

(assert (=> b!5256210 m!6298856))

(assert (=> b!5255621 d!1692305))

(assert (=> b!5255600 d!1692257))

(declare-fun e!3269890 () Bool)

(declare-fun d!1692307 () Bool)

(assert (=> d!1692307 (= (matchZipper!1114 (set.union lt!2153934 lt!2153964) (t!374092 s!2326)) e!3269890)))

(declare-fun res!2230620 () Bool)

(assert (=> d!1692307 (=> res!2230620 e!3269890)))

(assert (=> d!1692307 (= res!2230620 (matchZipper!1114 lt!2153934 (t!374092 s!2326)))))

(declare-fun lt!2154203 () Unit!152974)

(assert (=> d!1692307 (= lt!2154203 (choose!39185 lt!2153934 lt!2153964 (t!374092 s!2326)))))

(assert (=> d!1692307 (= (lemmaZipperConcatMatchesSameAsBothZippers!107 lt!2153934 lt!2153964 (t!374092 s!2326)) lt!2154203)))

(declare-fun b!5256220 () Bool)

(assert (=> b!5256220 (= e!3269890 (matchZipper!1114 lt!2153964 (t!374092 s!2326)))))

(assert (= (and d!1692307 (not res!2230620)) b!5256220))

(assert (=> d!1692307 m!6298224))

(assert (=> d!1692307 m!6298234))

(declare-fun m!6298858 () Bool)

(assert (=> d!1692307 m!6298858))

(assert (=> b!5256220 m!6298226))

(assert (=> b!5255620 d!1692307))

(declare-fun d!1692309 () Bool)

(declare-fun c!909561 () Bool)

(assert (=> d!1692309 (= c!909561 (isEmpty!32729 (t!374092 s!2326)))))

(declare-fun e!3269891 () Bool)

(assert (=> d!1692309 (= (matchZipper!1114 (set.union lt!2153934 lt!2153964) (t!374092 s!2326)) e!3269891)))

(declare-fun b!5256221 () Bool)

(assert (=> b!5256221 (= e!3269891 (nullableZipper!1275 (set.union lt!2153934 lt!2153964)))))

(declare-fun b!5256222 () Bool)

(assert (=> b!5256222 (= e!3269891 (matchZipper!1114 (derivationStepZipper!1119 (set.union lt!2153934 lt!2153964) (head!11268 (t!374092 s!2326))) (tail!10365 (t!374092 s!2326))))))

(assert (= (and d!1692309 c!909561) b!5256221))

(assert (= (and d!1692309 (not c!909561)) b!5256222))

(assert (=> d!1692309 m!6298542))

(declare-fun m!6298860 () Bool)

(assert (=> b!5256221 m!6298860))

(assert (=> b!5256222 m!6298546))

(assert (=> b!5256222 m!6298546))

(declare-fun m!6298862 () Bool)

(assert (=> b!5256222 m!6298862))

(assert (=> b!5256222 m!6298550))

(assert (=> b!5256222 m!6298862))

(assert (=> b!5256222 m!6298550))

(declare-fun m!6298864 () Bool)

(assert (=> b!5256222 m!6298864))

(assert (=> b!5255620 d!1692309))

(declare-fun d!1692311 () Bool)

(declare-fun lt!2154204 () Int)

(assert (=> d!1692311 (>= lt!2154204 0)))

(declare-fun e!3269892 () Int)

(assert (=> d!1692311 (= lt!2154204 e!3269892)))

(declare-fun c!909562 () Bool)

(assert (=> d!1692311 (= c!909562 (is-Cons!60787 zl!343))))

(assert (=> d!1692311 (= (zipperDepthTotal!51 zl!343) lt!2154204)))

(declare-fun b!5256223 () Bool)

(assert (=> b!5256223 (= e!3269892 (+ (contextDepthTotal!33 (h!67235 zl!343)) (zipperDepthTotal!51 (t!374094 zl!343))))))

(declare-fun b!5256224 () Bool)

(assert (=> b!5256224 (= e!3269892 0)))

(assert (= (and d!1692311 c!909562) b!5256223))

(assert (= (and d!1692311 (not c!909562)) b!5256224))

(declare-fun m!6298866 () Bool)

(assert (=> b!5256223 m!6298866))

(declare-fun m!6298868 () Bool)

(assert (=> b!5256223 m!6298868))

(assert (=> b!5255602 d!1692311))

(declare-fun d!1692313 () Bool)

(declare-fun lt!2154205 () Int)

(assert (=> d!1692313 (>= lt!2154205 0)))

(declare-fun e!3269893 () Int)

(assert (=> d!1692313 (= lt!2154205 e!3269893)))

(declare-fun c!909563 () Bool)

(assert (=> d!1692313 (= c!909563 (is-Cons!60787 lt!2153958))))

(assert (=> d!1692313 (= (zipperDepthTotal!51 lt!2153958) lt!2154205)))

(declare-fun b!5256225 () Bool)

(assert (=> b!5256225 (= e!3269893 (+ (contextDepthTotal!33 (h!67235 lt!2153958)) (zipperDepthTotal!51 (t!374094 lt!2153958))))))

(declare-fun b!5256226 () Bool)

(assert (=> b!5256226 (= e!3269893 0)))

(assert (= (and d!1692313 c!909563) b!5256225))

(assert (= (and d!1692313 (not c!909563)) b!5256226))

(declare-fun m!6298870 () Bool)

(assert (=> b!5256225 m!6298870))

(declare-fun m!6298872 () Bool)

(assert (=> b!5256225 m!6298872))

(assert (=> b!5255602 d!1692313))

(declare-fun d!1692315 () Bool)

(assert (=> d!1692315 (= (isEmpty!32726 (t!374093 (exprs!4754 (h!67235 zl!343)))) (is-Nil!60786 (t!374093 (exprs!4754 (h!67235 zl!343)))))))

(assert (=> b!5255601 d!1692315))

(declare-fun bs!1218945 () Bool)

(declare-fun d!1692317 () Bool)

(assert (= bs!1218945 (and d!1692317 d!1692305)))

(declare-fun lambda!264873 () Int)

(assert (=> bs!1218945 (= lambda!264873 lambda!264872)))

(declare-fun bs!1218946 () Bool)

(assert (= bs!1218946 (and d!1692317 d!1692207)))

(assert (=> bs!1218946 (= lambda!264873 lambda!264841)))

(declare-fun bs!1218947 () Bool)

(assert (= bs!1218947 (and d!1692317 b!5255599)))

(assert (=> bs!1218947 (= lambda!264873 lambda!264817)))

(declare-fun bs!1218948 () Bool)

(assert (= bs!1218948 (and d!1692317 d!1692205)))

(assert (=> bs!1218948 (= lambda!264873 lambda!264838)))

(declare-fun bs!1218949 () Bool)

(assert (= bs!1218949 (and d!1692317 d!1692233)))

(assert (=> bs!1218949 (= lambda!264873 lambda!264847)))

(declare-fun bs!1218950 () Bool)

(assert (= bs!1218950 (and d!1692317 d!1692295)))

(assert (=> bs!1218950 (= lambda!264873 lambda!264871)))

(declare-fun bs!1218951 () Bool)

(assert (= bs!1218951 (and d!1692317 d!1692211)))

(assert (=> bs!1218951 (= lambda!264873 lambda!264844)))

(assert (=> d!1692317 (= (inv!80423 (h!67235 zl!343)) (forall!14284 (exprs!4754 (h!67235 zl!343)) lambda!264873))))

(declare-fun bs!1218952 () Bool)

(assert (= bs!1218952 d!1692317))

(declare-fun m!6298874 () Bool)

(assert (=> bs!1218952 m!6298874))

(assert (=> b!5255603 d!1692317))

(assert (=> b!5255623 d!1692237))

(declare-fun d!1692319 () Bool)

(declare-fun c!909564 () Bool)

(assert (=> d!1692319 (= c!909564 (isEmpty!32729 (t!374092 s!2326)))))

(declare-fun e!3269894 () Bool)

(assert (=> d!1692319 (= (matchZipper!1114 lt!2153940 (t!374092 s!2326)) e!3269894)))

(declare-fun b!5256227 () Bool)

(assert (=> b!5256227 (= e!3269894 (nullableZipper!1275 lt!2153940))))

(declare-fun b!5256228 () Bool)

(assert (=> b!5256228 (= e!3269894 (matchZipper!1114 (derivationStepZipper!1119 lt!2153940 (head!11268 (t!374092 s!2326))) (tail!10365 (t!374092 s!2326))))))

(assert (= (and d!1692319 c!909564) b!5256227))

(assert (= (and d!1692319 (not c!909564)) b!5256228))

(assert (=> d!1692319 m!6298542))

(declare-fun m!6298876 () Bool)

(assert (=> b!5256227 m!6298876))

(assert (=> b!5256228 m!6298546))

(assert (=> b!5256228 m!6298546))

(declare-fun m!6298878 () Bool)

(assert (=> b!5256228 m!6298878))

(assert (=> b!5256228 m!6298550))

(assert (=> b!5256228 m!6298878))

(assert (=> b!5256228 m!6298550))

(declare-fun m!6298880 () Bool)

(assert (=> b!5256228 m!6298880))

(assert (=> b!5255623 d!1692319))

(declare-fun d!1692321 () Bool)

(declare-fun c!909565 () Bool)

(assert (=> d!1692321 (= c!909565 (isEmpty!32729 (t!374092 s!2326)))))

(declare-fun e!3269895 () Bool)

(assert (=> d!1692321 (= (matchZipper!1114 lt!2153934 (t!374092 s!2326)) e!3269895)))

(declare-fun b!5256229 () Bool)

(assert (=> b!5256229 (= e!3269895 (nullableZipper!1275 lt!2153934))))

(declare-fun b!5256230 () Bool)

(assert (=> b!5256230 (= e!3269895 (matchZipper!1114 (derivationStepZipper!1119 lt!2153934 (head!11268 (t!374092 s!2326))) (tail!10365 (t!374092 s!2326))))))

(assert (= (and d!1692321 c!909565) b!5256229))

(assert (= (and d!1692321 (not c!909565)) b!5256230))

(assert (=> d!1692321 m!6298542))

(declare-fun m!6298882 () Bool)

(assert (=> b!5256229 m!6298882))

(assert (=> b!5256230 m!6298546))

(assert (=> b!5256230 m!6298546))

(declare-fun m!6298884 () Bool)

(assert (=> b!5256230 m!6298884))

(assert (=> b!5256230 m!6298550))

(assert (=> b!5256230 m!6298884))

(assert (=> b!5256230 m!6298550))

(declare-fun m!6298886 () Bool)

(assert (=> b!5256230 m!6298886))

(assert (=> b!5255623 d!1692321))

(declare-fun d!1692323 () Bool)

(declare-fun e!3269896 () Bool)

(assert (=> d!1692323 (= (matchZipper!1114 (set.union lt!2153934 lt!2153949) (t!374092 s!2326)) e!3269896)))

(declare-fun res!2230621 () Bool)

(assert (=> d!1692323 (=> res!2230621 e!3269896)))

(assert (=> d!1692323 (= res!2230621 (matchZipper!1114 lt!2153934 (t!374092 s!2326)))))

(declare-fun lt!2154206 () Unit!152974)

(assert (=> d!1692323 (= lt!2154206 (choose!39185 lt!2153934 lt!2153949 (t!374092 s!2326)))))

(assert (=> d!1692323 (= (lemmaZipperConcatMatchesSameAsBothZippers!107 lt!2153934 lt!2153949 (t!374092 s!2326)) lt!2154206)))

(declare-fun b!5256231 () Bool)

(assert (=> b!5256231 (= e!3269896 (matchZipper!1114 lt!2153949 (t!374092 s!2326)))))

(assert (= (and d!1692323 (not res!2230621)) b!5256231))

(declare-fun m!6298888 () Bool)

(assert (=> d!1692323 m!6298888))

(assert (=> d!1692323 m!6298234))

(declare-fun m!6298890 () Bool)

(assert (=> d!1692323 m!6298890))

(assert (=> b!5256231 m!6298240))

(assert (=> b!5255623 d!1692323))

(declare-fun d!1692325 () Bool)

(assert (=> d!1692325 (= (flatMap!597 z!1189 lambda!264816) (dynLambda!24017 lambda!264816 (h!67235 zl!343)))))

(declare-fun lt!2154207 () Unit!152974)

(assert (=> d!1692325 (= lt!2154207 (choose!39183 z!1189 (h!67235 zl!343) lambda!264816))))

(assert (=> d!1692325 (= z!1189 (set.insert (h!67235 zl!343) (as set.empty (Set Context!8508))))))

(assert (=> d!1692325 (= (lemmaFlatMapOnSingletonSet!129 z!1189 (h!67235 zl!343) lambda!264816) lt!2154207)))

(declare-fun b_lambda!202899 () Bool)

(assert (=> (not b_lambda!202899) (not d!1692325)))

(declare-fun bs!1218953 () Bool)

(assert (= bs!1218953 d!1692325))

(assert (=> bs!1218953 m!6298252))

(declare-fun m!6298892 () Bool)

(assert (=> bs!1218953 m!6298892))

(declare-fun m!6298894 () Bool)

(assert (=> bs!1218953 m!6298894))

(declare-fun m!6298896 () Bool)

(assert (=> bs!1218953 m!6298896))

(assert (=> b!5255604 d!1692325))

(declare-fun d!1692327 () Bool)

(declare-fun c!909566 () Bool)

(declare-fun e!3269899 () Bool)

(assert (=> d!1692327 (= c!909566 e!3269899)))

(declare-fun res!2230622 () Bool)

(assert (=> d!1692327 (=> (not res!2230622) (not e!3269899))))

(assert (=> d!1692327 (= res!2230622 (is-Cons!60786 (exprs!4754 lt!2153933)))))

(declare-fun e!3269897 () (Set Context!8508))

(assert (=> d!1692327 (= (derivationStepZipperUp!242 lt!2153933 (h!67233 s!2326)) e!3269897)))

(declare-fun bm!372506 () Bool)

(declare-fun call!372511 () (Set Context!8508))

(assert (=> bm!372506 (= call!372511 (derivationStepZipperDown!318 (h!67234 (exprs!4754 lt!2153933)) (Context!8509 (t!374093 (exprs!4754 lt!2153933))) (h!67233 s!2326)))))

(declare-fun b!5256232 () Bool)

(declare-fun e!3269898 () (Set Context!8508))

(assert (=> b!5256232 (= e!3269897 e!3269898)))

(declare-fun c!909567 () Bool)

(assert (=> b!5256232 (= c!909567 (is-Cons!60786 (exprs!4754 lt!2153933)))))

(declare-fun b!5256233 () Bool)

(assert (=> b!5256233 (= e!3269898 (as set.empty (Set Context!8508)))))

(declare-fun b!5256234 () Bool)

(assert (=> b!5256234 (= e!3269899 (nullable!5039 (h!67234 (exprs!4754 lt!2153933))))))

(declare-fun b!5256235 () Bool)

(assert (=> b!5256235 (= e!3269898 call!372511)))

(declare-fun b!5256236 () Bool)

(assert (=> b!5256236 (= e!3269897 (set.union call!372511 (derivationStepZipperUp!242 (Context!8509 (t!374093 (exprs!4754 lt!2153933))) (h!67233 s!2326))))))

(assert (= (and d!1692327 res!2230622) b!5256234))

(assert (= (and d!1692327 c!909566) b!5256236))

(assert (= (and d!1692327 (not c!909566)) b!5256232))

(assert (= (and b!5256232 c!909567) b!5256235))

(assert (= (and b!5256232 (not c!909567)) b!5256233))

(assert (= (or b!5256236 b!5256235) bm!372506))

(declare-fun m!6298898 () Bool)

(assert (=> bm!372506 m!6298898))

(declare-fun m!6298900 () Bool)

(assert (=> b!5256234 m!6298900))

(declare-fun m!6298902 () Bool)

(assert (=> b!5256236 m!6298902))

(assert (=> b!5255604 d!1692327))

(declare-fun d!1692329 () Bool)

(assert (=> d!1692329 (= (nullable!5039 (h!67234 (exprs!4754 (h!67235 zl!343)))) (nullableFct!1427 (h!67234 (exprs!4754 (h!67235 zl!343)))))))

(declare-fun bs!1218954 () Bool)

(assert (= bs!1218954 d!1692329))

(declare-fun m!6298904 () Bool)

(assert (=> bs!1218954 m!6298904))

(assert (=> b!5255604 d!1692329))

(declare-fun d!1692331 () Bool)

(declare-fun c!909568 () Bool)

(declare-fun e!3269902 () Bool)

(assert (=> d!1692331 (= c!909568 e!3269902)))

(declare-fun res!2230623 () Bool)

(assert (=> d!1692331 (=> (not res!2230623) (not e!3269902))))

(assert (=> d!1692331 (= res!2230623 (is-Cons!60786 (exprs!4754 (Context!8509 (Cons!60786 (h!67234 (exprs!4754 (h!67235 zl!343))) (t!374093 (exprs!4754 (h!67235 zl!343))))))))))

(declare-fun e!3269900 () (Set Context!8508))

(assert (=> d!1692331 (= (derivationStepZipperUp!242 (Context!8509 (Cons!60786 (h!67234 (exprs!4754 (h!67235 zl!343))) (t!374093 (exprs!4754 (h!67235 zl!343))))) (h!67233 s!2326)) e!3269900)))

(declare-fun bm!372507 () Bool)

(declare-fun call!372512 () (Set Context!8508))

(assert (=> bm!372507 (= call!372512 (derivationStepZipperDown!318 (h!67234 (exprs!4754 (Context!8509 (Cons!60786 (h!67234 (exprs!4754 (h!67235 zl!343))) (t!374093 (exprs!4754 (h!67235 zl!343))))))) (Context!8509 (t!374093 (exprs!4754 (Context!8509 (Cons!60786 (h!67234 (exprs!4754 (h!67235 zl!343))) (t!374093 (exprs!4754 (h!67235 zl!343)))))))) (h!67233 s!2326)))))

(declare-fun b!5256237 () Bool)

(declare-fun e!3269901 () (Set Context!8508))

(assert (=> b!5256237 (= e!3269900 e!3269901)))

(declare-fun c!909569 () Bool)

(assert (=> b!5256237 (= c!909569 (is-Cons!60786 (exprs!4754 (Context!8509 (Cons!60786 (h!67234 (exprs!4754 (h!67235 zl!343))) (t!374093 (exprs!4754 (h!67235 zl!343))))))))))

(declare-fun b!5256238 () Bool)

(assert (=> b!5256238 (= e!3269901 (as set.empty (Set Context!8508)))))

(declare-fun b!5256239 () Bool)

(assert (=> b!5256239 (= e!3269902 (nullable!5039 (h!67234 (exprs!4754 (Context!8509 (Cons!60786 (h!67234 (exprs!4754 (h!67235 zl!343))) (t!374093 (exprs!4754 (h!67235 zl!343)))))))))))

(declare-fun b!5256240 () Bool)

(assert (=> b!5256240 (= e!3269901 call!372512)))

(declare-fun b!5256241 () Bool)

(assert (=> b!5256241 (= e!3269900 (set.union call!372512 (derivationStepZipperUp!242 (Context!8509 (t!374093 (exprs!4754 (Context!8509 (Cons!60786 (h!67234 (exprs!4754 (h!67235 zl!343))) (t!374093 (exprs!4754 (h!67235 zl!343)))))))) (h!67233 s!2326))))))

(assert (= (and d!1692331 res!2230623) b!5256239))

(assert (= (and d!1692331 c!909568) b!5256241))

(assert (= (and d!1692331 (not c!909568)) b!5256237))

(assert (= (and b!5256237 c!909569) b!5256240))

(assert (= (and b!5256237 (not c!909569)) b!5256238))

(assert (= (or b!5256241 b!5256240) bm!372507))

(declare-fun m!6298906 () Bool)

(assert (=> bm!372507 m!6298906))

(declare-fun m!6298908 () Bool)

(assert (=> b!5256239 m!6298908))

(declare-fun m!6298910 () Bool)

(assert (=> b!5256241 m!6298910))

(assert (=> b!5255604 d!1692331))

(declare-fun d!1692333 () Bool)

(assert (=> d!1692333 (= (flatMap!597 z!1189 lambda!264816) (choose!39184 z!1189 lambda!264816))))

(declare-fun bs!1218955 () Bool)

(assert (= bs!1218955 d!1692333))

(declare-fun m!6298912 () Bool)

(assert (=> bs!1218955 m!6298912))

(assert (=> b!5255604 d!1692333))

(declare-fun b!5256242 () Bool)

(declare-fun e!3269906 () (Set Context!8508))

(declare-fun e!3269903 () (Set Context!8508))

(assert (=> b!5256242 (= e!3269906 e!3269903)))

(declare-fun c!909572 () Bool)

(assert (=> b!5256242 (= c!909572 (is-Union!14870 (h!67234 (exprs!4754 (h!67235 zl!343)))))))

(declare-fun d!1692335 () Bool)

(declare-fun c!909571 () Bool)

(assert (=> d!1692335 (= c!909571 (and (is-ElementMatch!14870 (h!67234 (exprs!4754 (h!67235 zl!343)))) (= (c!909406 (h!67234 (exprs!4754 (h!67235 zl!343)))) (h!67233 s!2326))))))

(assert (=> d!1692335 (= (derivationStepZipperDown!318 (h!67234 (exprs!4754 (h!67235 zl!343))) lt!2153933 (h!67233 s!2326)) e!3269906)))

(declare-fun bm!372508 () Bool)

(declare-fun call!372514 () (Set Context!8508))

(declare-fun call!372515 () (Set Context!8508))

(assert (=> bm!372508 (= call!372514 call!372515)))

(declare-fun b!5256243 () Bool)

(assert (=> b!5256243 (= e!3269906 (set.insert lt!2153933 (as set.empty (Set Context!8508))))))

(declare-fun call!372518 () List!60910)

(declare-fun call!372517 () (Set Context!8508))

(declare-fun bm!372509 () Bool)

(assert (=> bm!372509 (= call!372517 (derivationStepZipperDown!318 (ite c!909572 (regOne!30253 (h!67234 (exprs!4754 (h!67235 zl!343)))) (regOne!30252 (h!67234 (exprs!4754 (h!67235 zl!343))))) (ite c!909572 lt!2153933 (Context!8509 call!372518)) (h!67233 s!2326)))))

(declare-fun b!5256244 () Bool)

(declare-fun e!3269908 () (Set Context!8508))

(declare-fun e!3269904 () (Set Context!8508))

(assert (=> b!5256244 (= e!3269908 e!3269904)))

(declare-fun c!909570 () Bool)

(assert (=> b!5256244 (= c!909570 (is-Concat!23715 (h!67234 (exprs!4754 (h!67235 zl!343)))))))

(declare-fun b!5256245 () Bool)

(assert (=> b!5256245 (= e!3269908 (set.union call!372517 call!372514))))

(declare-fun bm!372510 () Bool)

(declare-fun call!372513 () List!60910)

(assert (=> bm!372510 (= call!372513 call!372518)))

(declare-fun bm!372511 () Bool)

(declare-fun c!909574 () Bool)

(assert (=> bm!372511 (= call!372518 ($colon$colon!1325 (exprs!4754 lt!2153933) (ite (or c!909574 c!909570) (regTwo!30252 (h!67234 (exprs!4754 (h!67235 zl!343)))) (h!67234 (exprs!4754 (h!67235 zl!343))))))))

(declare-fun b!5256246 () Bool)

(assert (=> b!5256246 (= e!3269903 (set.union call!372517 call!372515))))

(declare-fun bm!372512 () Bool)

(assert (=> bm!372512 (= call!372515 (derivationStepZipperDown!318 (ite c!909572 (regTwo!30253 (h!67234 (exprs!4754 (h!67235 zl!343)))) (ite c!909574 (regTwo!30252 (h!67234 (exprs!4754 (h!67235 zl!343)))) (ite c!909570 (regOne!30252 (h!67234 (exprs!4754 (h!67235 zl!343)))) (reg!15199 (h!67234 (exprs!4754 (h!67235 zl!343))))))) (ite (or c!909572 c!909574) lt!2153933 (Context!8509 call!372513)) (h!67233 s!2326)))))

(declare-fun b!5256247 () Bool)

(declare-fun call!372516 () (Set Context!8508))

(assert (=> b!5256247 (= e!3269904 call!372516)))

(declare-fun b!5256248 () Bool)

(declare-fun e!3269907 () Bool)

(assert (=> b!5256248 (= c!909574 e!3269907)))

(declare-fun res!2230624 () Bool)

(assert (=> b!5256248 (=> (not res!2230624) (not e!3269907))))

(assert (=> b!5256248 (= res!2230624 (is-Concat!23715 (h!67234 (exprs!4754 (h!67235 zl!343)))))))

(assert (=> b!5256248 (= e!3269903 e!3269908)))

(declare-fun b!5256249 () Bool)

(declare-fun e!3269905 () (Set Context!8508))

(assert (=> b!5256249 (= e!3269905 (as set.empty (Set Context!8508)))))

(declare-fun b!5256250 () Bool)

(assert (=> b!5256250 (= e!3269907 (nullable!5039 (regOne!30252 (h!67234 (exprs!4754 (h!67235 zl!343))))))))

(declare-fun b!5256251 () Bool)

(assert (=> b!5256251 (= e!3269905 call!372516)))

(declare-fun bm!372513 () Bool)

(assert (=> bm!372513 (= call!372516 call!372514)))

(declare-fun b!5256252 () Bool)

(declare-fun c!909573 () Bool)

(assert (=> b!5256252 (= c!909573 (is-Star!14870 (h!67234 (exprs!4754 (h!67235 zl!343)))))))

(assert (=> b!5256252 (= e!3269904 e!3269905)))

(assert (= (and d!1692335 c!909571) b!5256243))

(assert (= (and d!1692335 (not c!909571)) b!5256242))

(assert (= (and b!5256242 c!909572) b!5256246))

(assert (= (and b!5256242 (not c!909572)) b!5256248))

(assert (= (and b!5256248 res!2230624) b!5256250))

(assert (= (and b!5256248 c!909574) b!5256245))

(assert (= (and b!5256248 (not c!909574)) b!5256244))

(assert (= (and b!5256244 c!909570) b!5256247))

(assert (= (and b!5256244 (not c!909570)) b!5256252))

(assert (= (and b!5256252 c!909573) b!5256251))

(assert (= (and b!5256252 (not c!909573)) b!5256249))

(assert (= (or b!5256247 b!5256251) bm!372510))

(assert (= (or b!5256247 b!5256251) bm!372513))

(assert (= (or b!5256245 bm!372510) bm!372511))

(assert (= (or b!5256245 bm!372513) bm!372508))

(assert (= (or b!5256246 bm!372508) bm!372512))

(assert (= (or b!5256246 b!5256245) bm!372509))

(declare-fun m!6298914 () Bool)

(assert (=> bm!372512 m!6298914))

(assert (=> b!5256243 m!6298526))

(declare-fun m!6298916 () Bool)

(assert (=> b!5256250 m!6298916))

(declare-fun m!6298918 () Bool)

(assert (=> bm!372511 m!6298918))

(declare-fun m!6298920 () Bool)

(assert (=> bm!372509 m!6298920))

(assert (=> b!5255604 d!1692335))

(declare-fun d!1692337 () Bool)

(declare-fun c!909575 () Bool)

(declare-fun e!3269911 () Bool)

(assert (=> d!1692337 (= c!909575 e!3269911)))

(declare-fun res!2230625 () Bool)

(assert (=> d!1692337 (=> (not res!2230625) (not e!3269911))))

(assert (=> d!1692337 (= res!2230625 (is-Cons!60786 (exprs!4754 (h!67235 zl!343))))))

(declare-fun e!3269909 () (Set Context!8508))

(assert (=> d!1692337 (= (derivationStepZipperUp!242 (h!67235 zl!343) (h!67233 s!2326)) e!3269909)))

(declare-fun bm!372514 () Bool)

(declare-fun call!372519 () (Set Context!8508))

(assert (=> bm!372514 (= call!372519 (derivationStepZipperDown!318 (h!67234 (exprs!4754 (h!67235 zl!343))) (Context!8509 (t!374093 (exprs!4754 (h!67235 zl!343)))) (h!67233 s!2326)))))

(declare-fun b!5256253 () Bool)

(declare-fun e!3269910 () (Set Context!8508))

(assert (=> b!5256253 (= e!3269909 e!3269910)))

(declare-fun c!909576 () Bool)

(assert (=> b!5256253 (= c!909576 (is-Cons!60786 (exprs!4754 (h!67235 zl!343))))))

(declare-fun b!5256254 () Bool)

(assert (=> b!5256254 (= e!3269910 (as set.empty (Set Context!8508)))))

(declare-fun b!5256255 () Bool)

(assert (=> b!5256255 (= e!3269911 (nullable!5039 (h!67234 (exprs!4754 (h!67235 zl!343)))))))

(declare-fun b!5256256 () Bool)

(assert (=> b!5256256 (= e!3269910 call!372519)))

(declare-fun b!5256257 () Bool)

(assert (=> b!5256257 (= e!3269909 (set.union call!372519 (derivationStepZipperUp!242 (Context!8509 (t!374093 (exprs!4754 (h!67235 zl!343)))) (h!67233 s!2326))))))

(assert (= (and d!1692337 res!2230625) b!5256255))

(assert (= (and d!1692337 c!909575) b!5256257))

(assert (= (and d!1692337 (not c!909575)) b!5256253))

(assert (= (and b!5256253 c!909576) b!5256256))

(assert (= (and b!5256253 (not c!909576)) b!5256254))

(assert (= (or b!5256257 b!5256256) bm!372514))

(declare-fun m!6298922 () Bool)

(assert (=> bm!372514 m!6298922))

(assert (=> b!5256255 m!6298254))

(declare-fun m!6298924 () Bool)

(assert (=> b!5256257 m!6298924))

(assert (=> b!5255604 d!1692337))

(declare-fun bs!1218956 () Bool)

(declare-fun d!1692339 () Bool)

(assert (= bs!1218956 (and d!1692339 d!1692305)))

(declare-fun lambda!264874 () Int)

(assert (=> bs!1218956 (= lambda!264874 lambda!264872)))

(declare-fun bs!1218957 () Bool)

(assert (= bs!1218957 (and d!1692339 d!1692317)))

(assert (=> bs!1218957 (= lambda!264874 lambda!264873)))

(declare-fun bs!1218958 () Bool)

(assert (= bs!1218958 (and d!1692339 d!1692207)))

(assert (=> bs!1218958 (= lambda!264874 lambda!264841)))

(declare-fun bs!1218959 () Bool)

(assert (= bs!1218959 (and d!1692339 b!5255599)))

(assert (=> bs!1218959 (= lambda!264874 lambda!264817)))

(declare-fun bs!1218960 () Bool)

(assert (= bs!1218960 (and d!1692339 d!1692205)))

(assert (=> bs!1218960 (= lambda!264874 lambda!264838)))

(declare-fun bs!1218961 () Bool)

(assert (= bs!1218961 (and d!1692339 d!1692233)))

(assert (=> bs!1218961 (= lambda!264874 lambda!264847)))

(declare-fun bs!1218962 () Bool)

(assert (= bs!1218962 (and d!1692339 d!1692295)))

(assert (=> bs!1218962 (= lambda!264874 lambda!264871)))

(declare-fun bs!1218963 () Bool)

(assert (= bs!1218963 (and d!1692339 d!1692211)))

(assert (=> bs!1218963 (= lambda!264874 lambda!264844)))

(declare-fun b!5256258 () Bool)

(declare-fun e!3269916 () Bool)

(declare-fun lt!2154208 () Regex!14870)

(assert (=> b!5256258 (= e!3269916 (isConcat!333 lt!2154208))))

(declare-fun b!5256259 () Bool)

(declare-fun e!3269913 () Bool)

(assert (=> b!5256259 (= e!3269913 (isEmpty!32726 (t!374093 (t!374093 (exprs!4754 (h!67235 zl!343))))))))

(declare-fun b!5256260 () Bool)

(declare-fun e!3269917 () Bool)

(assert (=> b!5256260 (= e!3269917 e!3269916)))

(declare-fun c!909577 () Bool)

(assert (=> b!5256260 (= c!909577 (isEmpty!32726 (tail!10366 (t!374093 (exprs!4754 (h!67235 zl!343))))))))

(declare-fun b!5256261 () Bool)

(declare-fun e!3269914 () Bool)

(assert (=> b!5256261 (= e!3269914 e!3269917)))

(declare-fun c!909579 () Bool)

(assert (=> b!5256261 (= c!909579 (isEmpty!32726 (t!374093 (exprs!4754 (h!67235 zl!343)))))))

(declare-fun b!5256262 () Bool)

(declare-fun e!3269912 () Regex!14870)

(assert (=> b!5256262 (= e!3269912 (Concat!23715 (h!67234 (t!374093 (exprs!4754 (h!67235 zl!343)))) (generalisedConcat!539 (t!374093 (t!374093 (exprs!4754 (h!67235 zl!343)))))))))

(assert (=> d!1692339 e!3269914))

(declare-fun res!2230627 () Bool)

(assert (=> d!1692339 (=> (not res!2230627) (not e!3269914))))

(assert (=> d!1692339 (= res!2230627 (validRegex!6606 lt!2154208))))

(declare-fun e!3269915 () Regex!14870)

(assert (=> d!1692339 (= lt!2154208 e!3269915)))

(declare-fun c!909580 () Bool)

(assert (=> d!1692339 (= c!909580 e!3269913)))

(declare-fun res!2230626 () Bool)

(assert (=> d!1692339 (=> (not res!2230626) (not e!3269913))))

(assert (=> d!1692339 (= res!2230626 (is-Cons!60786 (t!374093 (exprs!4754 (h!67235 zl!343)))))))

(assert (=> d!1692339 (forall!14284 (t!374093 (exprs!4754 (h!67235 zl!343))) lambda!264874)))

(assert (=> d!1692339 (= (generalisedConcat!539 (t!374093 (exprs!4754 (h!67235 zl!343)))) lt!2154208)))

(declare-fun b!5256263 () Bool)

(assert (=> b!5256263 (= e!3269915 (h!67234 (t!374093 (exprs!4754 (h!67235 zl!343)))))))

(declare-fun b!5256264 () Bool)

(assert (=> b!5256264 (= e!3269912 EmptyExpr!14870)))

(declare-fun b!5256265 () Bool)

(assert (=> b!5256265 (= e!3269916 (= lt!2154208 (head!11269 (t!374093 (exprs!4754 (h!67235 zl!343))))))))

(declare-fun b!5256266 () Bool)

(assert (=> b!5256266 (= e!3269915 e!3269912)))

(declare-fun c!909578 () Bool)

(assert (=> b!5256266 (= c!909578 (is-Cons!60786 (t!374093 (exprs!4754 (h!67235 zl!343)))))))

(declare-fun b!5256267 () Bool)

(assert (=> b!5256267 (= e!3269917 (isEmptyExpr!810 lt!2154208))))

(assert (= (and d!1692339 res!2230626) b!5256259))

(assert (= (and d!1692339 c!909580) b!5256263))

(assert (= (and d!1692339 (not c!909580)) b!5256266))

(assert (= (and b!5256266 c!909578) b!5256262))

(assert (= (and b!5256266 (not c!909578)) b!5256264))

(assert (= (and d!1692339 res!2230627) b!5256261))

(assert (= (and b!5256261 c!909579) b!5256267))

(assert (= (and b!5256261 (not c!909579)) b!5256260))

(assert (= (and b!5256260 c!909577) b!5256265))

(assert (= (and b!5256260 (not c!909577)) b!5256258))

(declare-fun m!6298926 () Bool)

(assert (=> b!5256267 m!6298926))

(declare-fun m!6298928 () Bool)

(assert (=> b!5256262 m!6298928))

(declare-fun m!6298930 () Bool)

(assert (=> b!5256259 m!6298930))

(declare-fun m!6298932 () Bool)

(assert (=> b!5256260 m!6298932))

(assert (=> b!5256260 m!6298932))

(declare-fun m!6298934 () Bool)

(assert (=> b!5256260 m!6298934))

(assert (=> b!5256261 m!6298332))

(declare-fun m!6298936 () Bool)

(assert (=> d!1692339 m!6298936))

(declare-fun m!6298938 () Bool)

(assert (=> d!1692339 m!6298938))

(declare-fun m!6298940 () Bool)

(assert (=> b!5256265 m!6298940))

(declare-fun m!6298942 () Bool)

(assert (=> b!5256258 m!6298942))

(assert (=> b!5255624 d!1692339))

(declare-fun b!5256272 () Bool)

(declare-fun e!3269920 () Bool)

(declare-fun tp!1469826 () Bool)

(declare-fun tp!1469827 () Bool)

(assert (=> b!5256272 (= e!3269920 (and tp!1469826 tp!1469827))))

(assert (=> b!5255591 (= tp!1469788 e!3269920)))

(assert (= (and b!5255591 (is-Cons!60786 (exprs!4754 (h!67235 zl!343)))) b!5256272))

(declare-fun b!5256286 () Bool)

(declare-fun e!3269923 () Bool)

(declare-fun tp!1469842 () Bool)

(declare-fun tp!1469841 () Bool)

(assert (=> b!5256286 (= e!3269923 (and tp!1469842 tp!1469841))))

(declare-fun b!5256283 () Bool)

(assert (=> b!5256283 (= e!3269923 tp_is_empty!38993)))

(declare-fun b!5256285 () Bool)

(declare-fun tp!1469840 () Bool)

(assert (=> b!5256285 (= e!3269923 tp!1469840)))

(assert (=> b!5255616 (= tp!1469789 e!3269923)))

(declare-fun b!5256284 () Bool)

(declare-fun tp!1469838 () Bool)

(declare-fun tp!1469839 () Bool)

(assert (=> b!5256284 (= e!3269923 (and tp!1469838 tp!1469839))))

(assert (= (and b!5255616 (is-ElementMatch!14870 (regOne!30253 r!7292))) b!5256283))

(assert (= (and b!5255616 (is-Concat!23715 (regOne!30253 r!7292))) b!5256284))

(assert (= (and b!5255616 (is-Star!14870 (regOne!30253 r!7292))) b!5256285))

(assert (= (and b!5255616 (is-Union!14870 (regOne!30253 r!7292))) b!5256286))

(declare-fun b!5256290 () Bool)

(declare-fun e!3269924 () Bool)

(declare-fun tp!1469847 () Bool)

(declare-fun tp!1469846 () Bool)

(assert (=> b!5256290 (= e!3269924 (and tp!1469847 tp!1469846))))

(declare-fun b!5256287 () Bool)

(assert (=> b!5256287 (= e!3269924 tp_is_empty!38993)))

(declare-fun b!5256289 () Bool)

(declare-fun tp!1469845 () Bool)

(assert (=> b!5256289 (= e!3269924 tp!1469845)))

(assert (=> b!5255616 (= tp!1469784 e!3269924)))

(declare-fun b!5256288 () Bool)

(declare-fun tp!1469843 () Bool)

(declare-fun tp!1469844 () Bool)

(assert (=> b!5256288 (= e!3269924 (and tp!1469843 tp!1469844))))

(assert (= (and b!5255616 (is-ElementMatch!14870 (regTwo!30253 r!7292))) b!5256287))

(assert (= (and b!5255616 (is-Concat!23715 (regTwo!30253 r!7292))) b!5256288))

(assert (= (and b!5255616 (is-Star!14870 (regTwo!30253 r!7292))) b!5256289))

(assert (= (and b!5255616 (is-Union!14870 (regTwo!30253 r!7292))) b!5256290))

(declare-fun b!5256294 () Bool)

(declare-fun e!3269925 () Bool)

(declare-fun tp!1469852 () Bool)

(declare-fun tp!1469851 () Bool)

(assert (=> b!5256294 (= e!3269925 (and tp!1469852 tp!1469851))))

(declare-fun b!5256291 () Bool)

(assert (=> b!5256291 (= e!3269925 tp_is_empty!38993)))

(declare-fun b!5256293 () Bool)

(declare-fun tp!1469850 () Bool)

(assert (=> b!5256293 (= e!3269925 tp!1469850)))

(assert (=> b!5255590 (= tp!1469790 e!3269925)))

(declare-fun b!5256292 () Bool)

(declare-fun tp!1469848 () Bool)

(declare-fun tp!1469849 () Bool)

(assert (=> b!5256292 (= e!3269925 (and tp!1469848 tp!1469849))))

(assert (= (and b!5255590 (is-ElementMatch!14870 (reg!15199 r!7292))) b!5256291))

(assert (= (and b!5255590 (is-Concat!23715 (reg!15199 r!7292))) b!5256292))

(assert (= (and b!5255590 (is-Star!14870 (reg!15199 r!7292))) b!5256293))

(assert (= (and b!5255590 (is-Union!14870 (reg!15199 r!7292))) b!5256294))

(declare-fun condSetEmpty!33584 () Bool)

(assert (=> setNonEmpty!33578 (= condSetEmpty!33584 (= setRest!33578 (as set.empty (Set Context!8508))))))

(declare-fun setRes!33584 () Bool)

(assert (=> setNonEmpty!33578 (= tp!1469791 setRes!33584)))

(declare-fun setIsEmpty!33584 () Bool)

(assert (=> setIsEmpty!33584 setRes!33584))

(declare-fun e!3269928 () Bool)

(declare-fun setElem!33584 () Context!8508)

(declare-fun setNonEmpty!33584 () Bool)

(declare-fun tp!1469857 () Bool)

(assert (=> setNonEmpty!33584 (= setRes!33584 (and tp!1469857 (inv!80423 setElem!33584) e!3269928))))

(declare-fun setRest!33584 () (Set Context!8508))

(assert (=> setNonEmpty!33584 (= setRest!33578 (set.union (set.insert setElem!33584 (as set.empty (Set Context!8508))) setRest!33584))))

(declare-fun b!5256299 () Bool)

(declare-fun tp!1469858 () Bool)

(assert (=> b!5256299 (= e!3269928 tp!1469858)))

(assert (= (and setNonEmpty!33578 condSetEmpty!33584) setIsEmpty!33584))

(assert (= (and setNonEmpty!33578 (not condSetEmpty!33584)) setNonEmpty!33584))

(assert (= setNonEmpty!33584 b!5256299))

(declare-fun m!6298944 () Bool)

(assert (=> setNonEmpty!33584 m!6298944))

(declare-fun b!5256303 () Bool)

(declare-fun e!3269929 () Bool)

(declare-fun tp!1469863 () Bool)

(declare-fun tp!1469862 () Bool)

(assert (=> b!5256303 (= e!3269929 (and tp!1469863 tp!1469862))))

(declare-fun b!5256300 () Bool)

(assert (=> b!5256300 (= e!3269929 tp_is_empty!38993)))

(declare-fun b!5256302 () Bool)

(declare-fun tp!1469861 () Bool)

(assert (=> b!5256302 (= e!3269929 tp!1469861)))

(assert (=> b!5255614 (= tp!1469785 e!3269929)))

(declare-fun b!5256301 () Bool)

(declare-fun tp!1469859 () Bool)

(declare-fun tp!1469860 () Bool)

(assert (=> b!5256301 (= e!3269929 (and tp!1469859 tp!1469860))))

(assert (= (and b!5255614 (is-ElementMatch!14870 (regOne!30252 r!7292))) b!5256300))

(assert (= (and b!5255614 (is-Concat!23715 (regOne!30252 r!7292))) b!5256301))

(assert (= (and b!5255614 (is-Star!14870 (regOne!30252 r!7292))) b!5256302))

(assert (= (and b!5255614 (is-Union!14870 (regOne!30252 r!7292))) b!5256303))

(declare-fun b!5256307 () Bool)

(declare-fun e!3269930 () Bool)

(declare-fun tp!1469868 () Bool)

(declare-fun tp!1469867 () Bool)

(assert (=> b!5256307 (= e!3269930 (and tp!1469868 tp!1469867))))

(declare-fun b!5256304 () Bool)

(assert (=> b!5256304 (= e!3269930 tp_is_empty!38993)))

(declare-fun b!5256306 () Bool)

(declare-fun tp!1469866 () Bool)

(assert (=> b!5256306 (= e!3269930 tp!1469866)))

(assert (=> b!5255614 (= tp!1469782 e!3269930)))

(declare-fun b!5256305 () Bool)

(declare-fun tp!1469864 () Bool)

(declare-fun tp!1469865 () Bool)

(assert (=> b!5256305 (= e!3269930 (and tp!1469864 tp!1469865))))

(assert (= (and b!5255614 (is-ElementMatch!14870 (regTwo!30252 r!7292))) b!5256304))

(assert (= (and b!5255614 (is-Concat!23715 (regTwo!30252 r!7292))) b!5256305))

(assert (= (and b!5255614 (is-Star!14870 (regTwo!30252 r!7292))) b!5256306))

(assert (= (and b!5255614 (is-Union!14870 (regTwo!30252 r!7292))) b!5256307))

(declare-fun b!5256315 () Bool)

(declare-fun e!3269936 () Bool)

(declare-fun tp!1469873 () Bool)

(assert (=> b!5256315 (= e!3269936 tp!1469873)))

(declare-fun e!3269935 () Bool)

(declare-fun tp!1469874 () Bool)

(declare-fun b!5256314 () Bool)

(assert (=> b!5256314 (= e!3269935 (and (inv!80423 (h!67235 (t!374094 zl!343))) e!3269936 tp!1469874))))

(assert (=> b!5255603 (= tp!1469787 e!3269935)))

(assert (= b!5256314 b!5256315))

(assert (= (and b!5255603 (is-Cons!60787 (t!374094 zl!343))) b!5256314))

(declare-fun m!6298946 () Bool)

(assert (=> b!5256314 m!6298946))

(declare-fun b!5256320 () Bool)

(declare-fun e!3269939 () Bool)

(declare-fun tp!1469877 () Bool)

(assert (=> b!5256320 (= e!3269939 (and tp_is_empty!38993 tp!1469877))))

(assert (=> b!5255625 (= tp!1469786 e!3269939)))

(assert (= (and b!5255625 (is-Cons!60785 (t!374092 s!2326))) b!5256320))

(declare-fun b!5256321 () Bool)

(declare-fun e!3269940 () Bool)

(declare-fun tp!1469878 () Bool)

(declare-fun tp!1469879 () Bool)

(assert (=> b!5256321 (= e!3269940 (and tp!1469878 tp!1469879))))

(assert (=> b!5255589 (= tp!1469783 e!3269940)))

(assert (= (and b!5255589 (is-Cons!60786 (exprs!4754 setElem!33578))) b!5256321))

(declare-fun b_lambda!202901 () Bool)

(assert (= b_lambda!202893 (or b!5255599 b_lambda!202901)))

(declare-fun bs!1218964 () Bool)

(declare-fun d!1692341 () Bool)

(assert (= bs!1218964 (and d!1692341 b!5255599)))

(assert (=> bs!1218964 (= (dynLambda!24016 lambda!264817 (h!67234 lt!2153942)) (validRegex!6606 (h!67234 lt!2153942)))))

(declare-fun m!6298948 () Bool)

(assert (=> bs!1218964 m!6298948))

(assert (=> b!5255872 d!1692341))

(declare-fun b_lambda!202903 () Bool)

(assert (= b_lambda!202895 (or b!5255604 b_lambda!202903)))

(declare-fun bs!1218965 () Bool)

(declare-fun d!1692343 () Bool)

(assert (= bs!1218965 (and d!1692343 b!5255604)))

(assert (=> bs!1218965 (= (dynLambda!24017 lambda!264816 lt!2153954) (derivationStepZipperUp!242 lt!2153954 (h!67233 s!2326)))))

(assert (=> bs!1218965 m!6298316))

(assert (=> d!1692213 d!1692343))

(declare-fun b_lambda!202905 () Bool)

(assert (= b_lambda!202899 (or b!5255604 b_lambda!202905)))

(declare-fun bs!1218966 () Bool)

(declare-fun d!1692345 () Bool)

(assert (= bs!1218966 (and d!1692345 b!5255604)))

(assert (=> bs!1218966 (= (dynLambda!24017 lambda!264816 (h!67235 zl!343)) (derivationStepZipperUp!242 (h!67235 zl!343) (h!67233 s!2326)))))

(assert (=> bs!1218966 m!6298248))

(assert (=> d!1692325 d!1692345))

(declare-fun b_lambda!202907 () Bool)

(assert (= b_lambda!202897 (or b!5255604 b_lambda!202907)))

(declare-fun bs!1218967 () Bool)

(declare-fun d!1692347 () Bool)

(assert (= bs!1218967 (and d!1692347 b!5255604)))

(assert (=> bs!1218967 (= (dynLambda!24017 lambda!264816 lt!2153961) (derivationStepZipperUp!242 lt!2153961 (h!67233 s!2326)))))

(assert (=> bs!1218967 m!6298324))

(assert (=> d!1692221 d!1692347))

(push 1)

(assert (not b!5256171))

(assert (not b!5256020))

(assert (not d!1692243))

(assert (not b!5256239))

(assert (not b!5256033))

(assert (not b!5256149))

(assert (not b!5255933))

(assert (not b!5256168))

(assert (not b!5256227))

(assert (not b!5256203))

(assert (not b!5256188))

(assert (not d!1692307))

(assert (not b!5256212))

(assert (not bm!372506))

(assert (not b!5256221))

(assert (not b!5256181))

(assert (not b!5256099))

(assert (not b!5256156))

(assert (not b!5256106))

(assert (not b!5256206))

(assert (not b!5256193))

(assert (not d!1692267))

(assert (not b!5256299))

(assert (not b!5256063))

(assert (not b!5256305))

(assert (not b!5256052))

(assert (not d!1692275))

(assert (not d!1692257))

(assert (not b!5256029))

(assert (not b!5255918))

(assert (not d!1692207))

(assert (not b!5256234))

(assert (not b!5255895))

(assert (not b!5256307))

(assert (not b!5256186))

(assert (not b!5256267))

(assert (not bm!372467))

(assert (not d!1692251))

(assert (not b!5255785))

(assert (not b!5256190))

(assert (not d!1692269))

(assert (not b!5255866))

(assert (not b!5256065))

(assert (not b!5256051))

(assert (not b!5256169))

(assert (not b!5256321))

(assert (not b!5256306))

(assert (not d!1692329))

(assert (not b!5255979))

(assert (not d!1692289))

(assert (not b!5255983))

(assert (not d!1692237))

(assert (not b!5256288))

(assert (not b!5256197))

(assert (not b!5256315))

(assert (not b!5255893))

(assert (not d!1692321))

(assert (not d!1692253))

(assert (not d!1692203))

(assert (not bm!372475))

(assert (not b!5255854))

(assert (not d!1692299))

(assert (not b!5256314))

(assert (not setNonEmpty!33584))

(assert (not d!1692239))

(assert (not d!1692303))

(assert (not b!5256255))

(assert (not b!5256302))

(assert (not b!5256290))

(assert (not bm!372502))

(assert (not b!5256066))

(assert (not bm!372507))

(assert (not b!5255830))

(assert (not b!5256213))

(assert (not b!5255920))

(assert (not b!5256195))

(assert (not b!5255934))

(assert (not bm!372481))

(assert (not bm!372480))

(assert (not b!5256189))

(assert (not b!5255896))

(assert (not bm!372489))

(assert (not b!5255858))

(assert (not d!1692273))

(assert (not d!1692221))

(assert (not b!5256301))

(assert (not bm!372497))

(assert (not b_lambda!202907))

(assert (not b!5256225))

(assert (not b!5256303))

(assert (not b!5255857))

(assert (not d!1692319))

(assert (not b!5256258))

(assert (not b_lambda!202905))

(assert (not d!1692263))

(assert (not bm!372470))

(assert (not b!5256294))

(assert (not b!5256080))

(assert (not b!5256022))

(assert (not d!1692333))

(assert (not d!1692309))

(assert (not b!5256185))

(assert (not d!1692217))

(assert (not d!1692211))

(assert (not bm!372485))

(assert (not d!1692293))

(assert (not b!5255939))

(assert (not b!5255831))

(assert (not b!5255886))

(assert (not d!1692271))

(assert (not b!5256261))

(assert (not b!5256257))

(assert (not b!5256074))

(assert (not b!5256067))

(assert (not d!1692325))

(assert (not b!5256015))

(assert (not b!5256219))

(assert (not d!1692339))

(assert (not b!5256102))

(assert (not b!5255922))

(assert (not b!5255925))

(assert (not b!5256228))

(assert (not bs!1218965))

(assert (not d!1692235))

(assert (not d!1692277))

(assert (not d!1692265))

(assert (not d!1692323))

(assert (not b!5256259))

(assert (not b!5255784))

(assert (not bm!372464))

(assert (not bm!372512))

(assert (not b!5256210))

(assert (not b!5256241))

(assert (not b!5256217))

(assert (not b!5256138))

(assert (not b!5256046))

(assert (not d!1692295))

(assert (not bm!372469))

(assert (not d!1692231))

(assert (not bm!372490))

(assert (not b!5256162))

(assert (not b!5255873))

(assert (not b!5256289))

(assert (not b!5256187))

(assert (not d!1692233))

(assert (not bm!372474))

(assert (not b!5255921))

(assert (not b!5256019))

(assert (not b!5256034))

(assert (not b!5255930))

(assert (not b!5256013))

(assert (not b!5256229))

(assert (not b!5256211))

(assert (not b!5255932))

(assert (not b!5256072))

(assert (not b!5256230))

(assert (not d!1692249))

(assert (not b!5255827))

(assert (not bm!372514))

(assert tp_is_empty!38993)

(assert (not b!5256223))

(assert (not bm!372498))

(assert (not b!5256050))

(assert (not b!5256222))

(assert (not bm!372503))

(assert (not bm!372487))

(assert (not d!1692285))

(assert (not b!5255888))

(assert (not b!5256059))

(assert (not b!5256027))

(assert (not b!5256036))

(assert (not b!5256105))

(assert (not bm!372500))

(assert (not b!5256285))

(assert (not b!5256214))

(assert (not b!5256272))

(assert (not bm!372505))

(assert (not b!5255890))

(assert (not b!5256160))

(assert (not d!1692227))

(assert (not b!5256078))

(assert (not d!1692261))

(assert (not b!5255919))

(assert (not b!5256198))

(assert (not bm!372511))

(assert (not b!5255853))

(assert (not b!5255859))

(assert (not d!1692223))

(assert (not bm!372509))

(assert (not bm!372461))

(assert (not b!5256014))

(assert (not d!1692205))

(assert (not bm!372463))

(assert (not d!1692317))

(assert (not d!1692195))

(assert (not b!5256220))

(assert (not b!5255897))

(assert (not b!5255927))

(assert (not b!5256101))

(assert (not b!5256265))

(assert (not b!5256028))

(assert (not b!5256236))

(assert (not b!5255861))

(assert (not d!1692297))

(assert (not d!1692229))

(assert (not bm!372501))

(assert (not b!5255816))

(assert (not d!1692225))

(assert (not b!5256199))

(assert (not d!1692305))

(assert (not d!1692213))

(assert (not bm!372484))

(assert (not b!5256079))

(assert (not b!5256164))

(assert (not b!5256260))

(assert (not bm!372504))

(assert (not b!5256163))

(assert (not b!5256250))

(assert (not b!5256204))

(assert (not b!5256286))

(assert (not b!5256231))

(assert (not d!1692279))

(assert (not bs!1218964))

(assert (not b!5256292))

(assert (not b!5256293))

(assert (not bm!372488))

(assert (not d!1692247))

(assert (not b!5256071))

(assert (not bm!372486))

(assert (not b_lambda!202901))

(assert (not b!5255889))

(assert (not b!5256284))

(assert (not b!5255931))

(assert (not d!1692301))

(assert (not b!5255860))

(assert (not b!5256320))

(assert (not b!5256107))

(assert (not bs!1218967))

(assert (not b!5256262))

(assert (not bs!1218966))

(assert (not b_lambda!202903))

(assert (not d!1692283))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

