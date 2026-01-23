; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!551282 () Bool)

(assert start!551282)

(declare-fun b!5211390 () Bool)

(assert (=> b!5211390 true))

(assert (=> b!5211390 true))

(declare-fun lambda!261318 () Int)

(declare-fun lambda!261317 () Int)

(assert (=> b!5211390 (not (= lambda!261318 lambda!261317))))

(assert (=> b!5211390 true))

(assert (=> b!5211390 true))

(declare-fun b!5211393 () Bool)

(assert (=> b!5211393 true))

(declare-fun b!5211367 () Bool)

(declare-fun e!3244327 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29868 0))(
  ( (C!29869 (val!24636 Int)) )
))
(declare-datatypes ((Regex!14799 0))(
  ( (ElementMatch!14799 (c!898682 C!29868)) (Concat!23644 (regOne!30110 Regex!14799) (regTwo!30110 Regex!14799)) (EmptyExpr!14799) (Star!14799 (reg!15128 Regex!14799)) (EmptyLang!14799) (Union!14799 (regOne!30111 Regex!14799) (regTwo!30111 Regex!14799)) )
))
(declare-datatypes ((List!60696 0))(
  ( (Nil!60572) (Cons!60572 (h!67020 Regex!14799) (t!373859 List!60696)) )
))
(declare-datatypes ((Context!8366 0))(
  ( (Context!8367 (exprs!4683 List!60696)) )
))
(declare-fun lt!2142169 () (InoxSet Context!8366))

(declare-datatypes ((List!60697 0))(
  ( (Nil!60573) (Cons!60573 (h!67021 C!29868) (t!373860 List!60697)) )
))
(declare-fun s!2326 () List!60697)

(declare-fun matchZipper!1043 ((InoxSet Context!8366) List!60697) Bool)

(assert (=> b!5211367 (= e!3244327 (not (matchZipper!1043 lt!2142169 (t!373860 s!2326))))))

(declare-fun b!5211368 () Bool)

(declare-fun e!3244320 () Bool)

(declare-fun e!3244319 () Bool)

(assert (=> b!5211368 (= e!3244320 (not e!3244319))))

(declare-fun res!2213463 () Bool)

(assert (=> b!5211368 (=> res!2213463 e!3244319)))

(declare-datatypes ((List!60698 0))(
  ( (Nil!60574) (Cons!60574 (h!67022 Context!8366) (t!373861 List!60698)) )
))
(declare-fun zl!343 () List!60698)

(get-info :version)

(assert (=> b!5211368 (= res!2213463 (not ((_ is Cons!60574) zl!343)))))

(declare-fun lt!2142163 () Bool)

(declare-fun r!7292 () Regex!14799)

(declare-fun matchRSpec!1902 (Regex!14799 List!60697) Bool)

(assert (=> b!5211368 (= lt!2142163 (matchRSpec!1902 r!7292 s!2326))))

(declare-fun matchR!6984 (Regex!14799 List!60697) Bool)

(assert (=> b!5211368 (= lt!2142163 (matchR!6984 r!7292 s!2326))))

(declare-datatypes ((Unit!152462 0))(
  ( (Unit!152463) )
))
(declare-fun lt!2142179 () Unit!152462)

(declare-fun mainMatchTheorem!1902 (Regex!14799 List!60697) Unit!152462)

(assert (=> b!5211368 (= lt!2142179 (mainMatchTheorem!1902 r!7292 s!2326))))

(declare-fun b!5211369 () Bool)

(declare-fun e!3244329 () Bool)

(declare-fun e!3244332 () Bool)

(assert (=> b!5211369 (= e!3244329 e!3244332)))

(declare-fun res!2213451 () Bool)

(assert (=> b!5211369 (=> res!2213451 e!3244332)))

(assert (=> b!5211369 (= res!2213451 e!3244327)))

(declare-fun res!2213460 () Bool)

(assert (=> b!5211369 (=> (not res!2213460) (not e!3244327))))

(declare-fun lt!2142171 () (InoxSet Context!8366))

(declare-fun lt!2142168 () Bool)

(assert (=> b!5211369 (= res!2213460 (not (= (matchZipper!1043 lt!2142171 (t!373860 s!2326)) lt!2142168)))))

(declare-fun lt!2142176 () (InoxSet Context!8366))

(declare-fun e!3244324 () Bool)

(assert (=> b!5211369 (= (matchZipper!1043 lt!2142176 (t!373860 s!2326)) e!3244324)))

(declare-fun res!2213466 () Bool)

(assert (=> b!5211369 (=> res!2213466 e!3244324)))

(assert (=> b!5211369 (= res!2213466 lt!2142168)))

(declare-fun lt!2142165 () (InoxSet Context!8366))

(assert (=> b!5211369 (= lt!2142168 (matchZipper!1043 lt!2142165 (t!373860 s!2326)))))

(declare-fun lt!2142167 () Unit!152462)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!36 ((InoxSet Context!8366) (InoxSet Context!8366) List!60697) Unit!152462)

(assert (=> b!5211369 (= lt!2142167 (lemmaZipperConcatMatchesSameAsBothZippers!36 lt!2142165 lt!2142169 (t!373860 s!2326)))))

(declare-fun b!5211370 () Bool)

(declare-fun res!2213450 () Bool)

(assert (=> b!5211370 (=> res!2213450 e!3244319)))

(assert (=> b!5211370 (= res!2213450 (not ((_ is Cons!60572) (exprs!4683 (h!67022 zl!343)))))))

(declare-fun b!5211371 () Bool)

(declare-fun res!2213456 () Bool)

(assert (=> b!5211371 (=> res!2213456 e!3244319)))

(declare-fun generalisedUnion!728 (List!60696) Regex!14799)

(declare-fun unfocusZipperList!241 (List!60698) List!60696)

(assert (=> b!5211371 (= res!2213456 (not (= r!7292 (generalisedUnion!728 (unfocusZipperList!241 zl!343)))))))

(declare-fun b!5211372 () Bool)

(declare-fun e!3244321 () Bool)

(declare-fun lt!2142177 () (InoxSet Context!8366))

(assert (=> b!5211372 (= e!3244321 (matchZipper!1043 lt!2142177 (t!373860 s!2326)))))

(declare-fun b!5211373 () Bool)

(declare-fun e!3244331 () Bool)

(declare-fun tp!1461504 () Bool)

(declare-fun tp!1461497 () Bool)

(assert (=> b!5211373 (= e!3244331 (and tp!1461504 tp!1461497))))

(declare-fun b!5211374 () Bool)

(declare-fun e!3244325 () Bool)

(declare-fun tp!1461500 () Bool)

(assert (=> b!5211374 (= e!3244325 tp!1461500)))

(declare-fun b!5211375 () Bool)

(declare-fun e!3244328 () Bool)

(declare-fun tp!1461498 () Bool)

(declare-fun inv!80244 (Context!8366) Bool)

(assert (=> b!5211375 (= e!3244328 (and (inv!80244 (h!67022 zl!343)) e!3244325 tp!1461498))))

(declare-fun b!5211376 () Bool)

(declare-fun tp!1461505 () Bool)

(declare-fun tp!1461503 () Bool)

(assert (=> b!5211376 (= e!3244331 (and tp!1461505 tp!1461503))))

(declare-fun b!5211378 () Bool)

(declare-fun e!3244330 () Unit!152462)

(declare-fun Unit!152464 () Unit!152462)

(assert (=> b!5211378 (= e!3244330 Unit!152464)))

(declare-fun lt!2142175 () Unit!152462)

(assert (=> b!5211378 (= lt!2142175 (lemmaZipperConcatMatchesSameAsBothZippers!36 lt!2142171 lt!2142177 (t!373860 s!2326)))))

(declare-fun res!2213464 () Bool)

(assert (=> b!5211378 (= res!2213464 (matchZipper!1043 lt!2142171 (t!373860 s!2326)))))

(assert (=> b!5211378 (=> res!2213464 e!3244321)))

(assert (=> b!5211378 (= (matchZipper!1043 ((_ map or) lt!2142171 lt!2142177) (t!373860 s!2326)) e!3244321)))

(declare-fun b!5211379 () Bool)

(declare-fun e!3244323 () Bool)

(declare-fun tp_is_empty!38851 () Bool)

(declare-fun tp!1461499 () Bool)

(assert (=> b!5211379 (= e!3244323 (and tp_is_empty!38851 tp!1461499))))

(declare-fun b!5211380 () Bool)

(declare-fun e!3244326 () Bool)

(declare-fun tp!1461496 () Bool)

(assert (=> b!5211380 (= e!3244326 tp!1461496)))

(declare-fun setIsEmpty!33104 () Bool)

(declare-fun setRes!33104 () Bool)

(assert (=> setIsEmpty!33104 setRes!33104))

(declare-fun b!5211381 () Bool)

(assert (=> b!5211381 (= e!3244324 (matchZipper!1043 lt!2142169 (t!373860 s!2326)))))

(declare-fun b!5211382 () Bool)

(declare-fun e!3244333 () Bool)

(assert (=> b!5211382 (= e!3244333 e!3244329)))

(declare-fun res!2213454 () Bool)

(assert (=> b!5211382 (=> res!2213454 e!3244329)))

(assert (=> b!5211382 (= res!2213454 (not (= lt!2142171 lt!2142176)))))

(assert (=> b!5211382 (= lt!2142176 ((_ map or) lt!2142165 lt!2142169))))

(declare-fun lt!2142162 () Context!8366)

(declare-fun derivationStepZipperDown!247 (Regex!14799 Context!8366 C!29868) (InoxSet Context!8366))

(assert (=> b!5211382 (= lt!2142169 (derivationStepZipperDown!247 (regTwo!30111 (regOne!30110 r!7292)) lt!2142162 (h!67021 s!2326)))))

(assert (=> b!5211382 (= lt!2142165 (derivationStepZipperDown!247 (regOne!30111 (regOne!30110 r!7292)) lt!2142162 (h!67021 s!2326)))))

(declare-fun b!5211383 () Bool)

(declare-fun res!2213461 () Bool)

(assert (=> b!5211383 (=> res!2213461 e!3244319)))

(declare-fun isEmpty!32485 (List!60698) Bool)

(assert (=> b!5211383 (= res!2213461 (not (isEmpty!32485 (t!373861 zl!343))))))

(declare-fun b!5211384 () Bool)

(declare-fun Unit!152465 () Unit!152462)

(assert (=> b!5211384 (= e!3244330 Unit!152465)))

(declare-fun b!5211385 () Bool)

(assert (=> b!5211385 (= e!3244332 true)))

(declare-fun lt!2142164 () (InoxSet Context!8366))

(declare-fun derivationStepZipperUp!171 (Context!8366 C!29868) (InoxSet Context!8366))

(assert (=> b!5211385 (= lt!2142164 (derivationStepZipperUp!171 (Context!8367 (Cons!60572 (regOne!30111 (regOne!30110 r!7292)) (t!373859 (exprs!4683 (h!67022 zl!343))))) (h!67021 s!2326)))))

(declare-fun b!5211386 () Bool)

(declare-fun res!2213453 () Bool)

(assert (=> b!5211386 (=> (not res!2213453) (not e!3244320))))

(declare-fun unfocusZipper!541 (List!60698) Regex!14799)

(assert (=> b!5211386 (= res!2213453 (= r!7292 (unfocusZipper!541 zl!343)))))

(declare-fun b!5211387 () Bool)

(declare-fun res!2213457 () Bool)

(assert (=> b!5211387 (=> res!2213457 e!3244319)))

(assert (=> b!5211387 (= res!2213457 (or ((_ is EmptyExpr!14799) r!7292) ((_ is EmptyLang!14799) r!7292) ((_ is ElementMatch!14799) r!7292) ((_ is Union!14799) r!7292) (not ((_ is Concat!23644) r!7292))))))

(declare-fun b!5211388 () Bool)

(assert (=> b!5211388 (= e!3244331 tp_is_empty!38851)))

(declare-fun b!5211389 () Bool)

(declare-fun res!2213458 () Bool)

(declare-fun e!3244322 () Bool)

(assert (=> b!5211389 (=> res!2213458 e!3244322)))

(declare-fun isEmpty!32486 (List!60696) Bool)

(assert (=> b!5211389 (= res!2213458 (isEmpty!32486 (t!373859 (exprs!4683 (h!67022 zl!343)))))))

(assert (=> b!5211390 (= e!3244319 e!3244322)))

(declare-fun res!2213465 () Bool)

(assert (=> b!5211390 (=> res!2213465 e!3244322)))

(declare-fun lt!2142166 () Bool)

(assert (=> b!5211390 (= res!2213465 (or (not (= lt!2142163 lt!2142166)) ((_ is Nil!60573) s!2326)))))

(declare-fun Exists!1980 (Int) Bool)

(assert (=> b!5211390 (= (Exists!1980 lambda!261317) (Exists!1980 lambda!261318))))

(declare-fun lt!2142170 () Unit!152462)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!634 (Regex!14799 Regex!14799 List!60697) Unit!152462)

(assert (=> b!5211390 (= lt!2142170 (lemmaExistCutMatchRandMatchRSpecEquivalent!634 (regOne!30110 r!7292) (regTwo!30110 r!7292) s!2326))))

(assert (=> b!5211390 (= lt!2142166 (Exists!1980 lambda!261317))))

(declare-datatypes ((tuple2!63996 0))(
  ( (tuple2!63997 (_1!35301 List!60697) (_2!35301 List!60697)) )
))
(declare-datatypes ((Option!14910 0))(
  ( (None!14909) (Some!14909 (v!50938 tuple2!63996)) )
))
(declare-fun isDefined!11613 (Option!14910) Bool)

(declare-fun findConcatSeparation!1324 (Regex!14799 Regex!14799 List!60697 List!60697 List!60697) Option!14910)

(assert (=> b!5211390 (= lt!2142166 (isDefined!11613 (findConcatSeparation!1324 (regOne!30110 r!7292) (regTwo!30110 r!7292) Nil!60573 s!2326 s!2326)))))

(declare-fun lt!2142172 () Unit!152462)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1088 (Regex!14799 Regex!14799 List!60697) Unit!152462)

(assert (=> b!5211390 (= lt!2142172 (lemmaFindConcatSeparationEquivalentToExists!1088 (regOne!30110 r!7292) (regTwo!30110 r!7292) s!2326))))

(declare-fun b!5211391 () Bool)

(declare-fun tp!1461501 () Bool)

(assert (=> b!5211391 (= e!3244331 tp!1461501)))

(declare-fun b!5211392 () Bool)

(declare-fun res!2213462 () Bool)

(assert (=> b!5211392 (=> res!2213462 e!3244319)))

(declare-fun generalisedConcat!468 (List!60696) Regex!14799)

(assert (=> b!5211392 (= res!2213462 (not (= r!7292 (generalisedConcat!468 (exprs!4683 (h!67022 zl!343))))))))

(declare-fun res!2213452 () Bool)

(assert (=> start!551282 (=> (not res!2213452) (not e!3244320))))

(declare-fun validRegex!6535 (Regex!14799) Bool)

(assert (=> start!551282 (= res!2213452 (validRegex!6535 r!7292))))

(assert (=> start!551282 e!3244320))

(assert (=> start!551282 e!3244331))

(declare-fun condSetEmpty!33104 () Bool)

(declare-fun z!1189 () (InoxSet Context!8366))

(assert (=> start!551282 (= condSetEmpty!33104 (= z!1189 ((as const (Array Context!8366 Bool)) false)))))

(assert (=> start!551282 setRes!33104))

(assert (=> start!551282 e!3244328))

(assert (=> start!551282 e!3244323))

(declare-fun b!5211377 () Bool)

(declare-fun res!2213459 () Bool)

(assert (=> b!5211377 (=> (not res!2213459) (not e!3244320))))

(declare-fun toList!8583 ((InoxSet Context!8366)) List!60698)

(assert (=> b!5211377 (= res!2213459 (= (toList!8583 z!1189) zl!343))))

(declare-fun setElem!33104 () Context!8366)

(declare-fun tp!1461502 () Bool)

(declare-fun setNonEmpty!33104 () Bool)

(assert (=> setNonEmpty!33104 (= setRes!33104 (and tp!1461502 (inv!80244 setElem!33104) e!3244326))))

(declare-fun setRest!33104 () (InoxSet Context!8366))

(assert (=> setNonEmpty!33104 (= z!1189 ((_ map or) (store ((as const (Array Context!8366 Bool)) false) setElem!33104 true) setRest!33104))))

(assert (=> b!5211393 (= e!3244322 e!3244333)))

(declare-fun res!2213455 () Bool)

(assert (=> b!5211393 (=> res!2213455 e!3244333)))

(assert (=> b!5211393 (= res!2213455 (or (and ((_ is ElementMatch!14799) (regOne!30110 r!7292)) (= (c!898682 (regOne!30110 r!7292)) (h!67021 s!2326))) (not ((_ is Union!14799) (regOne!30110 r!7292)))))))

(declare-fun lt!2142178 () Unit!152462)

(assert (=> b!5211393 (= lt!2142178 e!3244330)))

(declare-fun c!898681 () Bool)

(declare-fun nullable!4968 (Regex!14799) Bool)

(assert (=> b!5211393 (= c!898681 (nullable!4968 (h!67020 (exprs!4683 (h!67022 zl!343)))))))

(declare-fun lambda!261319 () Int)

(declare-fun flatMap!526 ((InoxSet Context!8366) Int) (InoxSet Context!8366))

(assert (=> b!5211393 (= (flatMap!526 z!1189 lambda!261319) (derivationStepZipperUp!171 (h!67022 zl!343) (h!67021 s!2326)))))

(declare-fun lt!2142173 () Unit!152462)

(declare-fun lemmaFlatMapOnSingletonSet!58 ((InoxSet Context!8366) Context!8366 Int) Unit!152462)

(assert (=> b!5211393 (= lt!2142173 (lemmaFlatMapOnSingletonSet!58 z!1189 (h!67022 zl!343) lambda!261319))))

(assert (=> b!5211393 (= lt!2142177 (derivationStepZipperUp!171 lt!2142162 (h!67021 s!2326)))))

(assert (=> b!5211393 (= lt!2142171 (derivationStepZipperDown!247 (h!67020 (exprs!4683 (h!67022 zl!343))) lt!2142162 (h!67021 s!2326)))))

(assert (=> b!5211393 (= lt!2142162 (Context!8367 (t!373859 (exprs!4683 (h!67022 zl!343)))))))

(declare-fun lt!2142174 () (InoxSet Context!8366))

(assert (=> b!5211393 (= lt!2142174 (derivationStepZipperUp!171 (Context!8367 (Cons!60572 (h!67020 (exprs!4683 (h!67022 zl!343))) (t!373859 (exprs!4683 (h!67022 zl!343))))) (h!67021 s!2326)))))

(assert (= (and start!551282 res!2213452) b!5211377))

(assert (= (and b!5211377 res!2213459) b!5211386))

(assert (= (and b!5211386 res!2213453) b!5211368))

(assert (= (and b!5211368 (not res!2213463)) b!5211383))

(assert (= (and b!5211383 (not res!2213461)) b!5211392))

(assert (= (and b!5211392 (not res!2213462)) b!5211370))

(assert (= (and b!5211370 (not res!2213450)) b!5211371))

(assert (= (and b!5211371 (not res!2213456)) b!5211387))

(assert (= (and b!5211387 (not res!2213457)) b!5211390))

(assert (= (and b!5211390 (not res!2213465)) b!5211389))

(assert (= (and b!5211389 (not res!2213458)) b!5211393))

(assert (= (and b!5211393 c!898681) b!5211378))

(assert (= (and b!5211393 (not c!898681)) b!5211384))

(assert (= (and b!5211378 (not res!2213464)) b!5211372))

(assert (= (and b!5211393 (not res!2213455)) b!5211382))

(assert (= (and b!5211382 (not res!2213454)) b!5211369))

(assert (= (and b!5211369 (not res!2213466)) b!5211381))

(assert (= (and b!5211369 res!2213460) b!5211367))

(assert (= (and b!5211369 (not res!2213451)) b!5211385))

(assert (= (and start!551282 ((_ is ElementMatch!14799) r!7292)) b!5211388))

(assert (= (and start!551282 ((_ is Concat!23644) r!7292)) b!5211373))

(assert (= (and start!551282 ((_ is Star!14799) r!7292)) b!5211391))

(assert (= (and start!551282 ((_ is Union!14799) r!7292)) b!5211376))

(assert (= (and start!551282 condSetEmpty!33104) setIsEmpty!33104))

(assert (= (and start!551282 (not condSetEmpty!33104)) setNonEmpty!33104))

(assert (= setNonEmpty!33104 b!5211380))

(assert (= b!5211375 b!5211374))

(assert (= (and start!551282 ((_ is Cons!60574) zl!343)) b!5211375))

(assert (= (and start!551282 ((_ is Cons!60573) s!2326)) b!5211379))

(declare-fun m!6260940 () Bool)

(assert (=> b!5211367 m!6260940))

(declare-fun m!6260942 () Bool)

(assert (=> b!5211378 m!6260942))

(declare-fun m!6260944 () Bool)

(assert (=> b!5211378 m!6260944))

(declare-fun m!6260946 () Bool)

(assert (=> b!5211378 m!6260946))

(declare-fun m!6260948 () Bool)

(assert (=> b!5211372 m!6260948))

(declare-fun m!6260950 () Bool)

(assert (=> b!5211393 m!6260950))

(declare-fun m!6260952 () Bool)

(assert (=> b!5211393 m!6260952))

(declare-fun m!6260954 () Bool)

(assert (=> b!5211393 m!6260954))

(declare-fun m!6260956 () Bool)

(assert (=> b!5211393 m!6260956))

(declare-fun m!6260958 () Bool)

(assert (=> b!5211393 m!6260958))

(declare-fun m!6260960 () Bool)

(assert (=> b!5211393 m!6260960))

(declare-fun m!6260962 () Bool)

(assert (=> b!5211393 m!6260962))

(declare-fun m!6260964 () Bool)

(assert (=> b!5211377 m!6260964))

(declare-fun m!6260966 () Bool)

(assert (=> b!5211386 m!6260966))

(assert (=> b!5211381 m!6260940))

(declare-fun m!6260968 () Bool)

(assert (=> b!5211382 m!6260968))

(declare-fun m!6260970 () Bool)

(assert (=> b!5211382 m!6260970))

(declare-fun m!6260972 () Bool)

(assert (=> b!5211375 m!6260972))

(assert (=> b!5211369 m!6260944))

(declare-fun m!6260974 () Bool)

(assert (=> b!5211369 m!6260974))

(declare-fun m!6260976 () Bool)

(assert (=> b!5211369 m!6260976))

(declare-fun m!6260978 () Bool)

(assert (=> b!5211369 m!6260978))

(declare-fun m!6260980 () Bool)

(assert (=> b!5211390 m!6260980))

(declare-fun m!6260982 () Bool)

(assert (=> b!5211390 m!6260982))

(declare-fun m!6260984 () Bool)

(assert (=> b!5211390 m!6260984))

(assert (=> b!5211390 m!6260984))

(assert (=> b!5211390 m!6260980))

(declare-fun m!6260986 () Bool)

(assert (=> b!5211390 m!6260986))

(declare-fun m!6260988 () Bool)

(assert (=> b!5211390 m!6260988))

(declare-fun m!6260990 () Bool)

(assert (=> b!5211390 m!6260990))

(declare-fun m!6260992 () Bool)

(assert (=> b!5211385 m!6260992))

(declare-fun m!6260994 () Bool)

(assert (=> b!5211389 m!6260994))

(declare-fun m!6260996 () Bool)

(assert (=> setNonEmpty!33104 m!6260996))

(declare-fun m!6260998 () Bool)

(assert (=> b!5211392 m!6260998))

(declare-fun m!6261000 () Bool)

(assert (=> b!5211383 m!6261000))

(declare-fun m!6261002 () Bool)

(assert (=> start!551282 m!6261002))

(declare-fun m!6261004 () Bool)

(assert (=> b!5211368 m!6261004))

(declare-fun m!6261006 () Bool)

(assert (=> b!5211368 m!6261006))

(declare-fun m!6261008 () Bool)

(assert (=> b!5211368 m!6261008))

(declare-fun m!6261010 () Bool)

(assert (=> b!5211371 m!6261010))

(assert (=> b!5211371 m!6261010))

(declare-fun m!6261012 () Bool)

(assert (=> b!5211371 m!6261012))

(check-sat (not b!5211386) (not b!5211369) (not b!5211382) (not b!5211380) (not b!5211373) (not setNonEmpty!33104) (not b!5211374) (not b!5211390) (not b!5211383) (not b!5211367) (not b!5211389) (not b!5211385) (not b!5211368) (not b!5211372) tp_is_empty!38851 (not b!5211379) (not b!5211371) (not b!5211381) (not b!5211377) (not start!551282) (not b!5211393) (not b!5211378) (not b!5211375) (not b!5211376) (not b!5211392) (not b!5211391))
(check-sat)
