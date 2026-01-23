; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!562738 () Bool)

(assert start!562738)

(declare-fun b!5342191 () Bool)

(assert (=> b!5342191 true))

(assert (=> b!5342191 true))

(declare-fun lambda!273991 () Int)

(declare-fun lambda!273990 () Int)

(assert (=> b!5342191 (not (= lambda!273991 lambda!273990))))

(assert (=> b!5342191 true))

(assert (=> b!5342191 true))

(declare-fun b!5342203 () Bool)

(assert (=> b!5342203 true))

(declare-fun bs!1238592 () Bool)

(declare-fun b!5342221 () Bool)

(assert (= bs!1238592 (and b!5342221 b!5342191)))

(declare-datatypes ((C!30320 0))(
  ( (C!30321 (val!24862 Int)) )
))
(declare-datatypes ((Regex!15025 0))(
  ( (ElementMatch!15025 (c!929489 C!30320)) (Concat!23870 (regOne!30562 Regex!15025) (regTwo!30562 Regex!15025)) (EmptyExpr!15025) (Star!15025 (reg!15354 Regex!15025)) (EmptyLang!15025) (Union!15025 (regOne!30563 Regex!15025) (regTwo!30563 Regex!15025)) )
))
(declare-fun r!7292 () Regex!15025)

(declare-fun lt!2178542 () Regex!15025)

(declare-fun lambda!273993 () Int)

(assert (=> bs!1238592 (= (and (= (regOne!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178542 (regTwo!30562 r!7292))) (= lambda!273993 lambda!273990))))

(assert (=> bs!1238592 (not (= lambda!273993 lambda!273991))))

(assert (=> b!5342221 true))

(assert (=> b!5342221 true))

(assert (=> b!5342221 true))

(declare-fun lambda!273994 () Int)

(assert (=> bs!1238592 (not (= lambda!273994 lambda!273990))))

(assert (=> bs!1238592 (= (and (= (regOne!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178542 (regTwo!30562 r!7292))) (= lambda!273994 lambda!273991))))

(assert (=> b!5342221 (not (= lambda!273994 lambda!273993))))

(assert (=> b!5342221 true))

(assert (=> b!5342221 true))

(assert (=> b!5342221 true))

(declare-fun lt!2178574 () Regex!15025)

(declare-fun lambda!273995 () Int)

(assert (=> bs!1238592 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178574 (regTwo!30562 r!7292))) (= lambda!273995 lambda!273990))))

(assert (=> bs!1238592 (not (= lambda!273995 lambda!273991))))

(assert (=> b!5342221 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 (regOne!30562 r!7292))) (= lt!2178574 lt!2178542)) (= lambda!273995 lambda!273993))))

(assert (=> b!5342221 (not (= lambda!273995 lambda!273994))))

(assert (=> b!5342221 true))

(assert (=> b!5342221 true))

(assert (=> b!5342221 true))

(declare-fun lambda!273996 () Int)

(assert (=> b!5342221 (not (= lambda!273996 lambda!273993))))

(assert (=> bs!1238592 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178574 (regTwo!30562 r!7292))) (= lambda!273996 lambda!273991))))

(assert (=> b!5342221 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 (regOne!30562 r!7292))) (= lt!2178574 lt!2178542)) (= lambda!273996 lambda!273994))))

(assert (=> b!5342221 (not (= lambda!273996 lambda!273995))))

(assert (=> bs!1238592 (not (= lambda!273996 lambda!273990))))

(assert (=> b!5342221 true))

(assert (=> b!5342221 true))

(assert (=> b!5342221 true))

(declare-fun e!3317054 () Bool)

(declare-fun e!3317053 () Bool)

(assert (=> b!5342191 (= e!3317054 e!3317053)))

(declare-fun res!2266487 () Bool)

(assert (=> b!5342191 (=> res!2266487 e!3317053)))

(declare-datatypes ((List!61374 0))(
  ( (Nil!61250) (Cons!61250 (h!67698 C!30320) (t!374591 List!61374)) )
))
(declare-fun s!2326 () List!61374)

(declare-fun lt!2178549 () Bool)

(declare-fun lt!2178565 () Bool)

(get-info :version)

(assert (=> b!5342191 (= res!2266487 (or (not (= lt!2178565 lt!2178549)) ((_ is Nil!61250) s!2326)))))

(declare-fun Exists!2206 (Int) Bool)

(assert (=> b!5342191 (= (Exists!2206 lambda!273990) (Exists!2206 lambda!273991))))

(declare-datatypes ((Unit!153618 0))(
  ( (Unit!153619) )
))
(declare-fun lt!2178576 () Unit!153618)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!860 (Regex!15025 Regex!15025 List!61374) Unit!153618)

(assert (=> b!5342191 (= lt!2178576 (lemmaExistCutMatchRandMatchRSpecEquivalent!860 (regOne!30562 r!7292) (regTwo!30562 r!7292) s!2326))))

(assert (=> b!5342191 (= lt!2178549 (Exists!2206 lambda!273990))))

(declare-datatypes ((tuple2!64448 0))(
  ( (tuple2!64449 (_1!35527 List!61374) (_2!35527 List!61374)) )
))
(declare-datatypes ((Option!15136 0))(
  ( (None!15135) (Some!15135 (v!51164 tuple2!64448)) )
))
(declare-fun isDefined!11839 (Option!15136) Bool)

(declare-fun findConcatSeparation!1550 (Regex!15025 Regex!15025 List!61374 List!61374 List!61374) Option!15136)

(assert (=> b!5342191 (= lt!2178549 (isDefined!11839 (findConcatSeparation!1550 (regOne!30562 r!7292) (regTwo!30562 r!7292) Nil!61250 s!2326 s!2326)))))

(declare-fun lt!2178567 () Unit!153618)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1314 (Regex!15025 Regex!15025 List!61374) Unit!153618)

(assert (=> b!5342191 (= lt!2178567 (lemmaFindConcatSeparationEquivalentToExists!1314 (regOne!30562 r!7292) (regTwo!30562 r!7292) s!2326))))

(declare-fun setIsEmpty!34489 () Bool)

(declare-fun setRes!34489 () Bool)

(assert (=> setIsEmpty!34489 setRes!34489))

(declare-fun b!5342192 () Bool)

(declare-fun e!3317046 () Bool)

(assert (=> b!5342192 (= e!3317046 (not e!3317054))))

(declare-fun res!2266479 () Bool)

(assert (=> b!5342192 (=> res!2266479 e!3317054)))

(declare-datatypes ((List!61375 0))(
  ( (Nil!61251) (Cons!61251 (h!67699 Regex!15025) (t!374592 List!61375)) )
))
(declare-datatypes ((Context!8818 0))(
  ( (Context!8819 (exprs!4909 List!61375)) )
))
(declare-datatypes ((List!61376 0))(
  ( (Nil!61252) (Cons!61252 (h!67700 Context!8818) (t!374593 List!61376)) )
))
(declare-fun zl!343 () List!61376)

(assert (=> b!5342192 (= res!2266479 (not ((_ is Cons!61252) zl!343)))))

(declare-fun matchRSpec!2128 (Regex!15025 List!61374) Bool)

(assert (=> b!5342192 (= lt!2178565 (matchRSpec!2128 r!7292 s!2326))))

(declare-fun matchR!7210 (Regex!15025 List!61374) Bool)

(assert (=> b!5342192 (= lt!2178565 (matchR!7210 r!7292 s!2326))))

(declare-fun lt!2178552 () Unit!153618)

(declare-fun mainMatchTheorem!2128 (Regex!15025 List!61374) Unit!153618)

(assert (=> b!5342192 (= lt!2178552 (mainMatchTheorem!2128 r!7292 s!2326))))

(declare-fun e!3317049 () Bool)

(declare-fun tp!1485278 () Bool)

(declare-fun e!3317052 () Bool)

(declare-fun b!5342193 () Bool)

(declare-fun inv!80809 (Context!8818) Bool)

(assert (=> b!5342193 (= e!3317052 (and (inv!80809 (h!67700 zl!343)) e!3317049 tp!1485278))))

(declare-fun b!5342194 () Bool)

(declare-fun tp!1485284 () Bool)

(assert (=> b!5342194 (= e!3317049 tp!1485284)))

(declare-fun res!2266489 () Bool)

(assert (=> start!562738 (=> (not res!2266489) (not e!3317046))))

(declare-fun validRegex!6761 (Regex!15025) Bool)

(assert (=> start!562738 (= res!2266489 (validRegex!6761 r!7292))))

(assert (=> start!562738 e!3317046))

(declare-fun e!3317055 () Bool)

(assert (=> start!562738 e!3317055))

(declare-fun condSetEmpty!34489 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8818))

(assert (=> start!562738 (= condSetEmpty!34489 (= z!1189 ((as const (Array Context!8818 Bool)) false)))))

(assert (=> start!562738 setRes!34489))

(assert (=> start!562738 e!3317052))

(declare-fun e!3317057 () Bool)

(assert (=> start!562738 e!3317057))

(declare-fun b!5342195 () Bool)

(declare-fun res!2266491 () Bool)

(declare-fun e!3317043 () Bool)

(assert (=> b!5342195 (=> res!2266491 e!3317043)))

(assert (=> b!5342195 (= res!2266491 (not ((_ is Concat!23870) (regOne!30562 r!7292))))))

(declare-fun b!5342196 () Bool)

(declare-fun res!2266480 () Bool)

(declare-fun e!3317059 () Bool)

(assert (=> b!5342196 (=> res!2266480 e!3317059)))

(declare-fun lt!2178543 () Context!8818)

(declare-fun contextDepthTotal!158 (Context!8818) Int)

(assert (=> b!5342196 (= res!2266480 (>= (contextDepthTotal!158 lt!2178543) (contextDepthTotal!158 (h!67700 zl!343))))))

(declare-fun b!5342197 () Bool)

(declare-fun res!2266493 () Bool)

(assert (=> b!5342197 (=> res!2266493 e!3317043)))

(declare-fun e!3317044 () Bool)

(assert (=> b!5342197 (= res!2266493 e!3317044)))

(declare-fun res!2266475 () Bool)

(assert (=> b!5342197 (=> (not res!2266475) (not e!3317044))))

(assert (=> b!5342197 (= res!2266475 ((_ is Concat!23870) (regOne!30562 r!7292)))))

(declare-fun b!5342198 () Bool)

(declare-fun res!2266484 () Bool)

(assert (=> b!5342198 (=> res!2266484 e!3317054)))

(assert (=> b!5342198 (= res!2266484 (or ((_ is EmptyExpr!15025) r!7292) ((_ is EmptyLang!15025) r!7292) ((_ is ElementMatch!15025) r!7292) ((_ is Union!15025) r!7292) (not ((_ is Concat!23870) r!7292))))))

(declare-fun b!5342199 () Bool)

(declare-fun e!3317051 () Bool)

(declare-fun lt!2178564 () (InoxSet Context!8818))

(declare-fun matchZipper!1269 ((InoxSet Context!8818) List!61374) Bool)

(assert (=> b!5342199 (= e!3317051 (matchZipper!1269 lt!2178564 (t!374591 s!2326)))))

(declare-fun b!5342200 () Bool)

(declare-fun e!3317048 () Bool)

(declare-fun e!3317045 () Bool)

(assert (=> b!5342200 (= e!3317048 e!3317045)))

(declare-fun res!2266492 () Bool)

(assert (=> b!5342200 (=> res!2266492 e!3317045)))

(declare-fun lt!2178568 () Bool)

(declare-fun lt!2178575 () (InoxSet Context!8818))

(assert (=> b!5342200 (= res!2266492 (not (= lt!2178568 (matchZipper!1269 lt!2178575 (t!374591 s!2326)))))))

(declare-fun lt!2178546 () (InoxSet Context!8818))

(assert (=> b!5342200 (= lt!2178568 (matchZipper!1269 lt!2178546 (t!374591 s!2326)))))

(declare-fun b!5342201 () Bool)

(declare-fun tp_is_empty!39303 () Bool)

(assert (=> b!5342201 (= e!3317055 tp_is_empty!39303)))

(declare-fun b!5342202 () Bool)

(declare-fun res!2266498 () Bool)

(declare-fun e!3317047 () Bool)

(assert (=> b!5342202 (=> res!2266498 e!3317047)))

(declare-fun lt!2178556 () List!61376)

(declare-fun zipperDepth!134 (List!61376) Int)

(assert (=> b!5342202 (= res!2266498 (> (zipperDepth!134 lt!2178556) (zipperDepth!134 zl!343)))))

(assert (=> b!5342203 (= e!3317053 e!3317043)))

(declare-fun res!2266482 () Bool)

(assert (=> b!5342203 (=> res!2266482 e!3317043)))

(assert (=> b!5342203 (= res!2266482 (or (and ((_ is ElementMatch!15025) (regOne!30562 r!7292)) (= (c!929489 (regOne!30562 r!7292)) (h!67698 s!2326))) ((_ is Union!15025) (regOne!30562 r!7292))))))

(declare-fun lt!2178555 () Unit!153618)

(declare-fun e!3317058 () Unit!153618)

(assert (=> b!5342203 (= lt!2178555 e!3317058)))

(declare-fun c!929488 () Bool)

(declare-fun nullable!5194 (Regex!15025) Bool)

(assert (=> b!5342203 (= c!929488 (nullable!5194 (h!67699 (exprs!4909 (h!67700 zl!343)))))))

(declare-fun lambda!273992 () Int)

(declare-fun flatMap!752 ((InoxSet Context!8818) Int) (InoxSet Context!8818))

(declare-fun derivationStepZipperUp!397 (Context!8818 C!30320) (InoxSet Context!8818))

(assert (=> b!5342203 (= (flatMap!752 z!1189 lambda!273992) (derivationStepZipperUp!397 (h!67700 zl!343) (h!67698 s!2326)))))

(declare-fun lt!2178566 () Unit!153618)

(declare-fun lemmaFlatMapOnSingletonSet!284 ((InoxSet Context!8818) Context!8818 Int) Unit!153618)

(assert (=> b!5342203 (= lt!2178566 (lemmaFlatMapOnSingletonSet!284 z!1189 (h!67700 zl!343) lambda!273992))))

(declare-fun lt!2178558 () Context!8818)

(assert (=> b!5342203 (= lt!2178564 (derivationStepZipperUp!397 lt!2178558 (h!67698 s!2326)))))

(declare-fun derivationStepZipperDown!473 (Regex!15025 Context!8818 C!30320) (InoxSet Context!8818))

(assert (=> b!5342203 (= lt!2178546 (derivationStepZipperDown!473 (h!67699 (exprs!4909 (h!67700 zl!343))) lt!2178558 (h!67698 s!2326)))))

(assert (=> b!5342203 (= lt!2178558 (Context!8819 (t!374592 (exprs!4909 (h!67700 zl!343)))))))

(declare-fun lt!2178545 () (InoxSet Context!8818))

(assert (=> b!5342203 (= lt!2178545 (derivationStepZipperUp!397 (Context!8819 (Cons!61251 (h!67699 (exprs!4909 (h!67700 zl!343))) (t!374592 (exprs!4909 (h!67700 zl!343))))) (h!67698 s!2326)))))

(declare-fun b!5342204 () Bool)

(declare-fun e!3317056 () Bool)

(assert (=> b!5342204 (= e!3317056 e!3317059)))

(declare-fun res!2266496 () Bool)

(assert (=> b!5342204 (=> res!2266496 e!3317059)))

(declare-fun lt!2178557 () Regex!15025)

(assert (=> b!5342204 (= res!2266496 (not (= (exprs!4909 (h!67700 zl!343)) (Cons!61251 lt!2178557 (t!374592 (exprs!4909 (h!67700 zl!343)))))))))

(assert (=> b!5342204 (= lt!2178557 (Concat!23870 (regOne!30562 (regOne!30562 r!7292)) (regTwo!30562 (regOne!30562 r!7292))))))

(declare-fun b!5342205 () Bool)

(declare-fun res!2266500 () Bool)

(declare-fun e!3317050 () Bool)

(assert (=> b!5342205 (=> res!2266500 e!3317050)))

(assert (=> b!5342205 (= res!2266500 (not (= lt!2178565 (matchR!7210 (Concat!23870 (regOne!30562 r!7292) (regTwo!30562 r!7292)) s!2326))))))

(declare-fun b!5342206 () Bool)

(declare-fun res!2266478 () Bool)

(assert (=> b!5342206 (=> res!2266478 e!3317056)))

(declare-fun lt!2178547 () (InoxSet Context!8818))

(assert (=> b!5342206 (= res!2266478 (not (= lt!2178568 (matchZipper!1269 lt!2178547 (t!374591 s!2326)))))))

(declare-fun b!5342207 () Bool)

(assert (=> b!5342207 (= e!3317044 (nullable!5194 (regOne!30562 (regOne!30562 r!7292))))))

(declare-fun b!5342208 () Bool)

(declare-fun res!2266485 () Bool)

(assert (=> b!5342208 (=> res!2266485 e!3317050)))

(assert (=> b!5342208 (= res!2266485 (not (= lt!2178565 (matchR!7210 (Concat!23870 lt!2178557 (regTwo!30562 r!7292)) s!2326))))))

(declare-fun tp!1485281 () Bool)

(declare-fun e!3317060 () Bool)

(declare-fun setElem!34489 () Context!8818)

(declare-fun setNonEmpty!34489 () Bool)

(assert (=> setNonEmpty!34489 (= setRes!34489 (and tp!1485281 (inv!80809 setElem!34489) e!3317060))))

(declare-fun setRest!34489 () (InoxSet Context!8818))

(assert (=> setNonEmpty!34489 (= z!1189 ((_ map or) (store ((as const (Array Context!8818 Bool)) false) setElem!34489 true) setRest!34489))))

(declare-fun b!5342209 () Bool)

(declare-fun res!2266483 () Bool)

(assert (=> b!5342209 (=> (not res!2266483) (not e!3317046))))

(declare-fun toList!8809 ((InoxSet Context!8818)) List!61376)

(assert (=> b!5342209 (= res!2266483 (= (toList!8809 z!1189) zl!343))))

(declare-fun b!5342210 () Bool)

(assert (=> b!5342210 (= e!3317059 e!3317047)))

(declare-fun res!2266499 () Bool)

(assert (=> b!5342210 (=> res!2266499 e!3317047)))

(declare-fun zipperDepthTotal!178 (List!61376) Int)

(assert (=> b!5342210 (= res!2266499 (>= (zipperDepthTotal!178 lt!2178556) (zipperDepthTotal!178 zl!343)))))

(assert (=> b!5342210 (= lt!2178556 (Cons!61252 lt!2178543 Nil!61252))))

(declare-fun b!5342211 () Bool)

(declare-fun res!2266486 () Bool)

(assert (=> b!5342211 (=> res!2266486 e!3317054)))

(assert (=> b!5342211 (= res!2266486 (not ((_ is Cons!61251) (exprs!4909 (h!67700 zl!343)))))))

(declare-fun b!5342212 () Bool)

(declare-fun tp!1485283 () Bool)

(declare-fun tp!1485276 () Bool)

(assert (=> b!5342212 (= e!3317055 (and tp!1485283 tp!1485276))))

(declare-fun b!5342213 () Bool)

(declare-fun res!2266476 () Bool)

(assert (=> b!5342213 (=> res!2266476 e!3317054)))

(declare-fun generalisedConcat!694 (List!61375) Regex!15025)

(assert (=> b!5342213 (= res!2266476 (not (= r!7292 (generalisedConcat!694 (exprs!4909 (h!67700 zl!343))))))))

(declare-fun b!5342214 () Bool)

(declare-fun res!2266495 () Bool)

(assert (=> b!5342214 (=> (not res!2266495) (not e!3317046))))

(declare-fun unfocusZipper!767 (List!61376) Regex!15025)

(assert (=> b!5342214 (= res!2266495 (= r!7292 (unfocusZipper!767 zl!343)))))

(declare-fun b!5342215 () Bool)

(declare-fun res!2266501 () Bool)

(assert (=> b!5342215 (=> res!2266501 e!3317054)))

(declare-fun generalisedUnion!954 (List!61375) Regex!15025)

(declare-fun unfocusZipperList!467 (List!61376) List!61375)

(assert (=> b!5342215 (= res!2266501 (not (= r!7292 (generalisedUnion!954 (unfocusZipperList!467 zl!343)))))))

(declare-fun b!5342216 () Bool)

(assert (=> b!5342216 (= e!3317043 e!3317048)))

(declare-fun res!2266488 () Bool)

(assert (=> b!5342216 (=> res!2266488 e!3317048)))

(assert (=> b!5342216 (= res!2266488 (not (= lt!2178546 lt!2178575)))))

(declare-fun lt!2178570 () List!61375)

(assert (=> b!5342216 (= lt!2178575 (derivationStepZipperDown!473 (regOne!30562 (regOne!30562 r!7292)) (Context!8819 lt!2178570) (h!67698 s!2326)))))

(assert (=> b!5342216 (= lt!2178570 (Cons!61251 (regTwo!30562 (regOne!30562 r!7292)) (t!374592 (exprs!4909 (h!67700 zl!343)))))))

(declare-fun b!5342217 () Bool)

(declare-fun tp!1485282 () Bool)

(assert (=> b!5342217 (= e!3317060 tp!1485282)))

(declare-fun b!5342218 () Bool)

(declare-fun tp!1485279 () Bool)

(assert (=> b!5342218 (= e!3317057 (and tp_is_empty!39303 tp!1485279))))

(declare-fun b!5342219 () Bool)

(declare-fun tp!1485280 () Bool)

(declare-fun tp!1485277 () Bool)

(assert (=> b!5342219 (= e!3317055 (and tp!1485280 tp!1485277))))

(declare-fun b!5342220 () Bool)

(declare-fun Unit!153620 () Unit!153618)

(assert (=> b!5342220 (= e!3317058 Unit!153620)))

(assert (=> b!5342221 (= e!3317047 e!3317050)))

(declare-fun res!2266497 () Bool)

(assert (=> b!5342221 (=> res!2266497 e!3317050)))

(declare-fun lt!2178553 () Bool)

(declare-fun lt!2178562 () Bool)

(declare-fun lt!2178569 () Bool)

(assert (=> b!5342221 (= res!2266497 (or (not (= lt!2178562 lt!2178569)) (not (= lt!2178562 lt!2178553))))))

(assert (=> b!5342221 (= lt!2178562 (matchZipper!1269 z!1189 s!2326))))

(assert (=> b!5342221 (= (Exists!2206 lambda!273995) (Exists!2206 lambda!273996))))

(declare-fun lt!2178563 () Unit!153618)

(assert (=> b!5342221 (= lt!2178563 (lemmaExistCutMatchRandMatchRSpecEquivalent!860 (regTwo!30562 (regOne!30562 r!7292)) lt!2178574 s!2326))))

(assert (=> b!5342221 (= (isDefined!11839 (findConcatSeparation!1550 (regTwo!30562 (regOne!30562 r!7292)) lt!2178574 Nil!61250 s!2326 s!2326)) (Exists!2206 lambda!273995))))

(declare-fun lt!2178551 () Unit!153618)

(assert (=> b!5342221 (= lt!2178551 (lemmaFindConcatSeparationEquivalentToExists!1314 (regTwo!30562 (regOne!30562 r!7292)) lt!2178574 s!2326))))

(assert (=> b!5342221 (= lt!2178574 (generalisedConcat!694 (t!374592 (exprs!4909 (h!67700 zl!343)))))))

(assert (=> b!5342221 (= (matchR!7210 lt!2178542 s!2326) (matchRSpec!2128 lt!2178542 s!2326))))

(declare-fun lt!2178571 () Unit!153618)

(assert (=> b!5342221 (= lt!2178571 (mainMatchTheorem!2128 lt!2178542 s!2326))))

(assert (=> b!5342221 (= (Exists!2206 lambda!273993) (Exists!2206 lambda!273994))))

(declare-fun lt!2178560 () Unit!153618)

(assert (=> b!5342221 (= lt!2178560 (lemmaExistCutMatchRandMatchRSpecEquivalent!860 (regOne!30562 (regOne!30562 r!7292)) lt!2178542 s!2326))))

(assert (=> b!5342221 (= (isDefined!11839 (findConcatSeparation!1550 (regOne!30562 (regOne!30562 r!7292)) lt!2178542 Nil!61250 s!2326 s!2326)) (Exists!2206 lambda!273993))))

(declare-fun lt!2178573 () Unit!153618)

(assert (=> b!5342221 (= lt!2178573 (lemmaFindConcatSeparationEquivalentToExists!1314 (regOne!30562 (regOne!30562 r!7292)) lt!2178542 s!2326))))

(assert (=> b!5342221 (= lt!2178542 (generalisedConcat!694 lt!2178570))))

(declare-fun lt!2178554 () Regex!15025)

(assert (=> b!5342221 (= lt!2178553 (matchRSpec!2128 lt!2178554 s!2326))))

(declare-fun lt!2178550 () Unit!153618)

(assert (=> b!5342221 (= lt!2178550 (mainMatchTheorem!2128 lt!2178554 s!2326))))

(assert (=> b!5342221 (= lt!2178553 lt!2178569)))

(declare-fun lt!2178561 () (InoxSet Context!8818))

(assert (=> b!5342221 (= lt!2178569 (matchZipper!1269 lt!2178561 s!2326))))

(assert (=> b!5342221 (= lt!2178553 (matchR!7210 lt!2178554 s!2326))))

(declare-fun lt!2178572 () Unit!153618)

(declare-fun theoremZipperRegexEquiv!423 ((InoxSet Context!8818) List!61376 Regex!15025 List!61374) Unit!153618)

(assert (=> b!5342221 (= lt!2178572 (theoremZipperRegexEquiv!423 lt!2178561 lt!2178556 lt!2178554 s!2326))))

(declare-fun lt!2178548 () List!61375)

(assert (=> b!5342221 (= lt!2178554 (generalisedConcat!694 lt!2178548))))

(declare-fun b!5342222 () Bool)

(declare-fun res!2266477 () Bool)

(assert (=> b!5342222 (=> res!2266477 e!3317053)))

(declare-fun isEmpty!33219 (List!61375) Bool)

(assert (=> b!5342222 (= res!2266477 (isEmpty!33219 (t!374592 (exprs!4909 (h!67700 zl!343)))))))

(declare-fun b!5342223 () Bool)

(declare-fun tp!1485285 () Bool)

(assert (=> b!5342223 (= e!3317055 tp!1485285)))

(declare-fun b!5342224 () Bool)

(declare-fun res!2266481 () Bool)

(assert (=> b!5342224 (=> res!2266481 e!3317054)))

(declare-fun isEmpty!33220 (List!61376) Bool)

(assert (=> b!5342224 (= res!2266481 (not (isEmpty!33220 (t!374593 zl!343))))))

(declare-fun b!5342225 () Bool)

(declare-fun Unit!153621 () Unit!153618)

(assert (=> b!5342225 (= e!3317058 Unit!153621)))

(declare-fun lt!2178541 () Unit!153618)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!262 ((InoxSet Context!8818) (InoxSet Context!8818) List!61374) Unit!153618)

(assert (=> b!5342225 (= lt!2178541 (lemmaZipperConcatMatchesSameAsBothZippers!262 lt!2178546 lt!2178564 (t!374591 s!2326)))))

(declare-fun res!2266494 () Bool)

(assert (=> b!5342225 (= res!2266494 (matchZipper!1269 lt!2178546 (t!374591 s!2326)))))

(assert (=> b!5342225 (=> res!2266494 e!3317051)))

(assert (=> b!5342225 (= (matchZipper!1269 ((_ map or) lt!2178546 lt!2178564) (t!374591 s!2326)) e!3317051)))

(declare-fun b!5342226 () Bool)

(assert (=> b!5342226 (= e!3317045 e!3317056)))

(declare-fun res!2266490 () Bool)

(assert (=> b!5342226 (=> res!2266490 e!3317056)))

(assert (=> b!5342226 (= res!2266490 (not (= lt!2178547 lt!2178575)))))

(assert (=> b!5342226 (= (flatMap!752 lt!2178561 lambda!273992) (derivationStepZipperUp!397 lt!2178543 (h!67698 s!2326)))))

(declare-fun lt!2178544 () Unit!153618)

(assert (=> b!5342226 (= lt!2178544 (lemmaFlatMapOnSingletonSet!284 lt!2178561 lt!2178543 lambda!273992))))

(declare-fun lt!2178559 () (InoxSet Context!8818))

(assert (=> b!5342226 (= lt!2178559 (derivationStepZipperUp!397 lt!2178543 (h!67698 s!2326)))))

(declare-fun derivationStepZipper!1266 ((InoxSet Context!8818) C!30320) (InoxSet Context!8818))

(assert (=> b!5342226 (= lt!2178547 (derivationStepZipper!1266 lt!2178561 (h!67698 s!2326)))))

(assert (=> b!5342226 (= lt!2178561 (store ((as const (Array Context!8818 Bool)) false) lt!2178543 true))))

(assert (=> b!5342226 (= lt!2178543 (Context!8819 lt!2178548))))

(assert (=> b!5342226 (= lt!2178548 (Cons!61251 (regOne!30562 (regOne!30562 r!7292)) lt!2178570))))

(declare-fun b!5342227 () Bool)

(declare-fun lambda!273997 () Int)

(declare-fun forall!14443 (List!61375 Int) Bool)

(assert (=> b!5342227 (= e!3317050 (forall!14443 (t!374592 (exprs!4909 (h!67700 zl!343))) lambda!273997))))

(assert (= (and start!562738 res!2266489) b!5342209))

(assert (= (and b!5342209 res!2266483) b!5342214))

(assert (= (and b!5342214 res!2266495) b!5342192))

(assert (= (and b!5342192 (not res!2266479)) b!5342224))

(assert (= (and b!5342224 (not res!2266481)) b!5342213))

(assert (= (and b!5342213 (not res!2266476)) b!5342211))

(assert (= (and b!5342211 (not res!2266486)) b!5342215))

(assert (= (and b!5342215 (not res!2266501)) b!5342198))

(assert (= (and b!5342198 (not res!2266484)) b!5342191))

(assert (= (and b!5342191 (not res!2266487)) b!5342222))

(assert (= (and b!5342222 (not res!2266477)) b!5342203))

(assert (= (and b!5342203 c!929488) b!5342225))

(assert (= (and b!5342203 (not c!929488)) b!5342220))

(assert (= (and b!5342225 (not res!2266494)) b!5342199))

(assert (= (and b!5342203 (not res!2266482)) b!5342197))

(assert (= (and b!5342197 res!2266475) b!5342207))

(assert (= (and b!5342197 (not res!2266493)) b!5342195))

(assert (= (and b!5342195 (not res!2266491)) b!5342216))

(assert (= (and b!5342216 (not res!2266488)) b!5342200))

(assert (= (and b!5342200 (not res!2266492)) b!5342226))

(assert (= (and b!5342226 (not res!2266490)) b!5342206))

(assert (= (and b!5342206 (not res!2266478)) b!5342204))

(assert (= (and b!5342204 (not res!2266496)) b!5342196))

(assert (= (and b!5342196 (not res!2266480)) b!5342210))

(assert (= (and b!5342210 (not res!2266499)) b!5342202))

(assert (= (and b!5342202 (not res!2266498)) b!5342221))

(assert (= (and b!5342221 (not res!2266497)) b!5342205))

(assert (= (and b!5342205 (not res!2266500)) b!5342208))

(assert (= (and b!5342208 (not res!2266485)) b!5342227))

(assert (= (and start!562738 ((_ is ElementMatch!15025) r!7292)) b!5342201))

(assert (= (and start!562738 ((_ is Concat!23870) r!7292)) b!5342219))

(assert (= (and start!562738 ((_ is Star!15025) r!7292)) b!5342223))

(assert (= (and start!562738 ((_ is Union!15025) r!7292)) b!5342212))

(assert (= (and start!562738 condSetEmpty!34489) setIsEmpty!34489))

(assert (= (and start!562738 (not condSetEmpty!34489)) setNonEmpty!34489))

(assert (= setNonEmpty!34489 b!5342217))

(assert (= b!5342193 b!5342194))

(assert (= (and start!562738 ((_ is Cons!61252) zl!343)) b!5342193))

(assert (= (and start!562738 ((_ is Cons!61250) s!2326)) b!5342218))

(declare-fun m!6374392 () Bool)

(assert (=> b!5342227 m!6374392))

(declare-fun m!6374394 () Bool)

(assert (=> b!5342222 m!6374394))

(declare-fun m!6374396 () Bool)

(assert (=> b!5342193 m!6374396))

(declare-fun m!6374398 () Bool)

(assert (=> b!5342205 m!6374398))

(declare-fun m!6374400 () Bool)

(assert (=> b!5342224 m!6374400))

(declare-fun m!6374402 () Bool)

(assert (=> b!5342213 m!6374402))

(declare-fun m!6374404 () Bool)

(assert (=> b!5342200 m!6374404))

(declare-fun m!6374406 () Bool)

(assert (=> b!5342200 m!6374406))

(declare-fun m!6374408 () Bool)

(assert (=> setNonEmpty!34489 m!6374408))

(declare-fun m!6374410 () Bool)

(assert (=> b!5342192 m!6374410))

(declare-fun m!6374412 () Bool)

(assert (=> b!5342192 m!6374412))

(declare-fun m!6374414 () Bool)

(assert (=> b!5342192 m!6374414))

(declare-fun m!6374416 () Bool)

(assert (=> b!5342209 m!6374416))

(declare-fun m!6374418 () Bool)

(assert (=> b!5342203 m!6374418))

(declare-fun m!6374420 () Bool)

(assert (=> b!5342203 m!6374420))

(declare-fun m!6374422 () Bool)

(assert (=> b!5342203 m!6374422))

(declare-fun m!6374424 () Bool)

(assert (=> b!5342203 m!6374424))

(declare-fun m!6374426 () Bool)

(assert (=> b!5342203 m!6374426))

(declare-fun m!6374428 () Bool)

(assert (=> b!5342203 m!6374428))

(declare-fun m!6374430 () Bool)

(assert (=> b!5342203 m!6374430))

(declare-fun m!6374432 () Bool)

(assert (=> b!5342225 m!6374432))

(assert (=> b!5342225 m!6374406))

(declare-fun m!6374434 () Bool)

(assert (=> b!5342225 m!6374434))

(declare-fun m!6374436 () Bool)

(assert (=> b!5342191 m!6374436))

(declare-fun m!6374438 () Bool)

(assert (=> b!5342191 m!6374438))

(declare-fun m!6374440 () Bool)

(assert (=> b!5342191 m!6374440))

(declare-fun m!6374442 () Bool)

(assert (=> b!5342191 m!6374442))

(declare-fun m!6374444 () Bool)

(assert (=> b!5342191 m!6374444))

(assert (=> b!5342191 m!6374436))

(assert (=> b!5342191 m!6374438))

(declare-fun m!6374446 () Bool)

(assert (=> b!5342191 m!6374446))

(declare-fun m!6374448 () Bool)

(assert (=> b!5342196 m!6374448))

(declare-fun m!6374450 () Bool)

(assert (=> b!5342196 m!6374450))

(declare-fun m!6374452 () Bool)

(assert (=> b!5342226 m!6374452))

(declare-fun m!6374454 () Bool)

(assert (=> b!5342226 m!6374454))

(declare-fun m!6374456 () Bool)

(assert (=> b!5342226 m!6374456))

(declare-fun m!6374458 () Bool)

(assert (=> b!5342226 m!6374458))

(declare-fun m!6374460 () Bool)

(assert (=> b!5342226 m!6374460))

(declare-fun m!6374462 () Bool)

(assert (=> b!5342206 m!6374462))

(declare-fun m!6374464 () Bool)

(assert (=> b!5342210 m!6374464))

(declare-fun m!6374466 () Bool)

(assert (=> b!5342210 m!6374466))

(declare-fun m!6374468 () Bool)

(assert (=> b!5342208 m!6374468))

(declare-fun m!6374470 () Bool)

(assert (=> b!5342214 m!6374470))

(declare-fun m!6374472 () Bool)

(assert (=> b!5342216 m!6374472))

(declare-fun m!6374474 () Bool)

(assert (=> b!5342215 m!6374474))

(assert (=> b!5342215 m!6374474))

(declare-fun m!6374476 () Bool)

(assert (=> b!5342215 m!6374476))

(declare-fun m!6374478 () Bool)

(assert (=> b!5342221 m!6374478))

(declare-fun m!6374480 () Bool)

(assert (=> b!5342221 m!6374480))

(declare-fun m!6374482 () Bool)

(assert (=> b!5342221 m!6374482))

(declare-fun m!6374484 () Bool)

(assert (=> b!5342221 m!6374484))

(declare-fun m!6374486 () Bool)

(assert (=> b!5342221 m!6374486))

(declare-fun m!6374488 () Bool)

(assert (=> b!5342221 m!6374488))

(declare-fun m!6374490 () Bool)

(assert (=> b!5342221 m!6374490))

(declare-fun m!6374492 () Bool)

(assert (=> b!5342221 m!6374492))

(declare-fun m!6374494 () Bool)

(assert (=> b!5342221 m!6374494))

(declare-fun m!6374496 () Bool)

(assert (=> b!5342221 m!6374496))

(declare-fun m!6374498 () Bool)

(assert (=> b!5342221 m!6374498))

(declare-fun m!6374500 () Bool)

(assert (=> b!5342221 m!6374500))

(assert (=> b!5342221 m!6374484))

(declare-fun m!6374502 () Bool)

(assert (=> b!5342221 m!6374502))

(declare-fun m!6374504 () Bool)

(assert (=> b!5342221 m!6374504))

(declare-fun m!6374506 () Bool)

(assert (=> b!5342221 m!6374506))

(declare-fun m!6374508 () Bool)

(assert (=> b!5342221 m!6374508))

(assert (=> b!5342221 m!6374494))

(declare-fun m!6374510 () Bool)

(assert (=> b!5342221 m!6374510))

(assert (=> b!5342221 m!6374506))

(declare-fun m!6374512 () Bool)

(assert (=> b!5342221 m!6374512))

(declare-fun m!6374514 () Bool)

(assert (=> b!5342221 m!6374514))

(declare-fun m!6374516 () Bool)

(assert (=> b!5342221 m!6374516))

(declare-fun m!6374518 () Bool)

(assert (=> b!5342221 m!6374518))

(declare-fun m!6374520 () Bool)

(assert (=> b!5342221 m!6374520))

(declare-fun m!6374522 () Bool)

(assert (=> b!5342221 m!6374522))

(declare-fun m!6374524 () Bool)

(assert (=> b!5342221 m!6374524))

(assert (=> b!5342221 m!6374480))

(declare-fun m!6374526 () Bool)

(assert (=> start!562738 m!6374526))

(declare-fun m!6374528 () Bool)

(assert (=> b!5342207 m!6374528))

(declare-fun m!6374530 () Bool)

(assert (=> b!5342199 m!6374530))

(declare-fun m!6374532 () Bool)

(assert (=> b!5342202 m!6374532))

(declare-fun m!6374534 () Bool)

(assert (=> b!5342202 m!6374534))

(check-sat (not b!5342214) (not b!5342194) (not b!5342207) (not b!5342212) tp_is_empty!39303 (not b!5342213) (not b!5342226) (not b!5342205) (not b!5342223) (not b!5342193) (not b!5342206) (not b!5342218) (not b!5342196) (not setNonEmpty!34489) (not b!5342199) (not b!5342216) (not b!5342203) (not b!5342215) (not b!5342208) (not b!5342200) (not b!5342227) (not b!5342217) (not b!5342191) (not b!5342209) (not start!562738) (not b!5342224) (not b!5342222) (not b!5342221) (not b!5342225) (not b!5342202) (not b!5342192) (not b!5342219) (not b!5342210))
(check-sat)
(get-model)

(declare-fun bs!1238593 () Bool)

(declare-fun d!1713912 () Bool)

(assert (= bs!1238593 (and d!1713912 b!5342227)))

(declare-fun lambda!274000 () Int)

(assert (=> bs!1238593 (= lambda!274000 lambda!273997)))

(declare-fun b!5342254 () Bool)

(declare-fun e!3317078 () Regex!15025)

(declare-fun e!3317077 () Regex!15025)

(assert (=> b!5342254 (= e!3317078 e!3317077)))

(declare-fun c!929500 () Bool)

(assert (=> b!5342254 (= c!929500 ((_ is Cons!61251) (exprs!4909 (h!67700 zl!343))))))

(declare-fun b!5342255 () Bool)

(declare-fun e!3317075 () Bool)

(declare-fun lt!2178579 () Regex!15025)

(declare-fun isConcat!425 (Regex!15025) Bool)

(assert (=> b!5342255 (= e!3317075 (isConcat!425 lt!2178579))))

(declare-fun b!5342256 () Bool)

(assert (=> b!5342256 (= e!3317077 (Concat!23870 (h!67699 (exprs!4909 (h!67700 zl!343))) (generalisedConcat!694 (t!374592 (exprs!4909 (h!67700 zl!343))))))))

(declare-fun e!3317074 () Bool)

(assert (=> d!1713912 e!3317074))

(declare-fun res!2266507 () Bool)

(assert (=> d!1713912 (=> (not res!2266507) (not e!3317074))))

(assert (=> d!1713912 (= res!2266507 (validRegex!6761 lt!2178579))))

(assert (=> d!1713912 (= lt!2178579 e!3317078)))

(declare-fun c!929499 () Bool)

(declare-fun e!3317076 () Bool)

(assert (=> d!1713912 (= c!929499 e!3317076)))

(declare-fun res!2266506 () Bool)

(assert (=> d!1713912 (=> (not res!2266506) (not e!3317076))))

(assert (=> d!1713912 (= res!2266506 ((_ is Cons!61251) (exprs!4909 (h!67700 zl!343))))))

(assert (=> d!1713912 (forall!14443 (exprs!4909 (h!67700 zl!343)) lambda!274000)))

(assert (=> d!1713912 (= (generalisedConcat!694 (exprs!4909 (h!67700 zl!343))) lt!2178579)))

(declare-fun b!5342257 () Bool)

(declare-fun e!3317073 () Bool)

(assert (=> b!5342257 (= e!3317073 e!3317075)))

(declare-fun c!929501 () Bool)

(declare-fun tail!10549 (List!61375) List!61375)

(assert (=> b!5342257 (= c!929501 (isEmpty!33219 (tail!10549 (exprs!4909 (h!67700 zl!343)))))))

(declare-fun b!5342258 () Bool)

(assert (=> b!5342258 (= e!3317077 EmptyExpr!15025)))

(declare-fun b!5342259 () Bool)

(declare-fun head!11452 (List!61375) Regex!15025)

(assert (=> b!5342259 (= e!3317075 (= lt!2178579 (head!11452 (exprs!4909 (h!67700 zl!343)))))))

(declare-fun b!5342260 () Bool)

(assert (=> b!5342260 (= e!3317078 (h!67699 (exprs!4909 (h!67700 zl!343))))))

(declare-fun b!5342261 () Bool)

(assert (=> b!5342261 (= e!3317074 e!3317073)))

(declare-fun c!929498 () Bool)

(assert (=> b!5342261 (= c!929498 (isEmpty!33219 (exprs!4909 (h!67700 zl!343))))))

(declare-fun b!5342262 () Bool)

(assert (=> b!5342262 (= e!3317076 (isEmpty!33219 (t!374592 (exprs!4909 (h!67700 zl!343)))))))

(declare-fun b!5342263 () Bool)

(declare-fun isEmptyExpr!902 (Regex!15025) Bool)

(assert (=> b!5342263 (= e!3317073 (isEmptyExpr!902 lt!2178579))))

(assert (= (and d!1713912 res!2266506) b!5342262))

(assert (= (and d!1713912 c!929499) b!5342260))

(assert (= (and d!1713912 (not c!929499)) b!5342254))

(assert (= (and b!5342254 c!929500) b!5342256))

(assert (= (and b!5342254 (not c!929500)) b!5342258))

(assert (= (and d!1713912 res!2266507) b!5342261))

(assert (= (and b!5342261 c!929498) b!5342263))

(assert (= (and b!5342261 (not c!929498)) b!5342257))

(assert (= (and b!5342257 c!929501) b!5342259))

(assert (= (and b!5342257 (not c!929501)) b!5342255))

(declare-fun m!6374536 () Bool)

(assert (=> b!5342255 m!6374536))

(declare-fun m!6374538 () Bool)

(assert (=> b!5342263 m!6374538))

(declare-fun m!6374540 () Bool)

(assert (=> b!5342261 m!6374540))

(declare-fun m!6374542 () Bool)

(assert (=> d!1713912 m!6374542))

(declare-fun m!6374544 () Bool)

(assert (=> d!1713912 m!6374544))

(assert (=> b!5342262 m!6374394))

(declare-fun m!6374546 () Bool)

(assert (=> b!5342257 m!6374546))

(assert (=> b!5342257 m!6374546))

(declare-fun m!6374548 () Bool)

(assert (=> b!5342257 m!6374548))

(declare-fun m!6374550 () Bool)

(assert (=> b!5342259 m!6374550))

(assert (=> b!5342256 m!6374514))

(assert (=> b!5342213 d!1713912))

(declare-fun bs!1238594 () Bool)

(declare-fun d!1713914 () Bool)

(assert (= bs!1238594 (and d!1713914 b!5342227)))

(declare-fun lambda!274003 () Int)

(assert (=> bs!1238594 (= lambda!274003 lambda!273997)))

(declare-fun bs!1238595 () Bool)

(assert (= bs!1238595 (and d!1713914 d!1713912)))

(assert (=> bs!1238595 (= lambda!274003 lambda!274000)))

(assert (=> d!1713914 (= (inv!80809 (h!67700 zl!343)) (forall!14443 (exprs!4909 (h!67700 zl!343)) lambda!274003))))

(declare-fun bs!1238596 () Bool)

(assert (= bs!1238596 d!1713914))

(declare-fun m!6374552 () Bool)

(assert (=> bs!1238596 m!6374552))

(assert (=> b!5342193 d!1713914))

(declare-fun bs!1238603 () Bool)

(declare-fun b!5342350 () Bool)

(assert (= bs!1238603 (and b!5342350 b!5342221)))

(declare-fun lambda!274011 () Int)

(assert (=> bs!1238603 (not (= lambda!274011 lambda!273993))))

(declare-fun bs!1238604 () Bool)

(assert (= bs!1238604 (and b!5342350 b!5342191)))

(assert (=> bs!1238604 (not (= lambda!274011 lambda!273991))))

(assert (=> bs!1238603 (not (= lambda!274011 lambda!273994))))

(assert (=> bs!1238603 (not (= lambda!274011 lambda!273996))))

(assert (=> bs!1238603 (not (= lambda!274011 lambda!273995))))

(assert (=> bs!1238604 (not (= lambda!274011 lambda!273990))))

(assert (=> b!5342350 true))

(assert (=> b!5342350 true))

(declare-fun bs!1238605 () Bool)

(declare-fun b!5342348 () Bool)

(assert (= bs!1238605 (and b!5342348 b!5342221)))

(declare-fun lambda!274012 () Int)

(assert (=> bs!1238605 (not (= lambda!274012 lambda!273993))))

(declare-fun bs!1238606 () Bool)

(assert (= bs!1238606 (and b!5342348 b!5342191)))

(assert (=> bs!1238606 (= lambda!274012 lambda!273991)))

(declare-fun bs!1238607 () Bool)

(assert (= bs!1238607 (and b!5342348 b!5342350)))

(assert (=> bs!1238607 (not (= lambda!274012 lambda!274011))))

(assert (=> bs!1238605 (= (and (= (regOne!30562 r!7292) (regOne!30562 (regOne!30562 r!7292))) (= (regTwo!30562 r!7292) lt!2178542)) (= lambda!274012 lambda!273994))))

(assert (=> bs!1238605 (= (and (= (regOne!30562 r!7292) (regTwo!30562 (regOne!30562 r!7292))) (= (regTwo!30562 r!7292) lt!2178574)) (= lambda!274012 lambda!273996))))

(assert (=> bs!1238605 (not (= lambda!274012 lambda!273995))))

(assert (=> bs!1238606 (not (= lambda!274012 lambda!273990))))

(assert (=> b!5342348 true))

(assert (=> b!5342348 true))

(declare-fun b!5342346 () Bool)

(declare-fun e!3317128 () Bool)

(assert (=> b!5342346 (= e!3317128 (matchRSpec!2128 (regTwo!30563 r!7292) s!2326))))

(declare-fun bm!381831 () Bool)

(declare-fun call!381837 () Bool)

(declare-fun isEmpty!33222 (List!61374) Bool)

(assert (=> bm!381831 (= call!381837 (isEmpty!33222 s!2326))))

(declare-fun b!5342347 () Bool)

(declare-fun e!3317127 () Bool)

(assert (=> b!5342347 (= e!3317127 e!3317128)))

(declare-fun res!2266536 () Bool)

(assert (=> b!5342347 (= res!2266536 (matchRSpec!2128 (regOne!30563 r!7292) s!2326))))

(assert (=> b!5342347 (=> res!2266536 e!3317128)))

(declare-fun e!3317130 () Bool)

(declare-fun call!381836 () Bool)

(assert (=> b!5342348 (= e!3317130 call!381836)))

(declare-fun c!929532 () Bool)

(declare-fun bm!381832 () Bool)

(assert (=> bm!381832 (= call!381836 (Exists!2206 (ite c!929532 lambda!274011 lambda!274012)))))

(declare-fun d!1713916 () Bool)

(declare-fun c!929530 () Bool)

(assert (=> d!1713916 (= c!929530 ((_ is EmptyExpr!15025) r!7292))))

(declare-fun e!3317133 () Bool)

(assert (=> d!1713916 (= (matchRSpec!2128 r!7292 s!2326) e!3317133)))

(declare-fun b!5342349 () Bool)

(declare-fun e!3317131 () Bool)

(assert (=> b!5342349 (= e!3317131 (= s!2326 (Cons!61250 (c!929489 r!7292) Nil!61250)))))

(declare-fun e!3317132 () Bool)

(assert (=> b!5342350 (= e!3317132 call!381836)))

(declare-fun b!5342351 () Bool)

(declare-fun res!2266535 () Bool)

(assert (=> b!5342351 (=> res!2266535 e!3317132)))

(assert (=> b!5342351 (= res!2266535 call!381837)))

(assert (=> b!5342351 (= e!3317130 e!3317132)))

(declare-fun b!5342352 () Bool)

(declare-fun e!3317129 () Bool)

(assert (=> b!5342352 (= e!3317133 e!3317129)))

(declare-fun res!2266534 () Bool)

(assert (=> b!5342352 (= res!2266534 (not ((_ is EmptyLang!15025) r!7292)))))

(assert (=> b!5342352 (=> (not res!2266534) (not e!3317129))))

(declare-fun b!5342353 () Bool)

(assert (=> b!5342353 (= e!3317133 call!381837)))

(declare-fun b!5342354 () Bool)

(assert (=> b!5342354 (= e!3317127 e!3317130)))

(assert (=> b!5342354 (= c!929532 ((_ is Star!15025) r!7292))))

(declare-fun b!5342355 () Bool)

(declare-fun c!929533 () Bool)

(assert (=> b!5342355 (= c!929533 ((_ is Union!15025) r!7292))))

(assert (=> b!5342355 (= e!3317131 e!3317127)))

(declare-fun b!5342356 () Bool)

(declare-fun c!929531 () Bool)

(assert (=> b!5342356 (= c!929531 ((_ is ElementMatch!15025) r!7292))))

(assert (=> b!5342356 (= e!3317129 e!3317131)))

(assert (= (and d!1713916 c!929530) b!5342353))

(assert (= (and d!1713916 (not c!929530)) b!5342352))

(assert (= (and b!5342352 res!2266534) b!5342356))

(assert (= (and b!5342356 c!929531) b!5342349))

(assert (= (and b!5342356 (not c!929531)) b!5342355))

(assert (= (and b!5342355 c!929533) b!5342347))

(assert (= (and b!5342355 (not c!929533)) b!5342354))

(assert (= (and b!5342347 (not res!2266536)) b!5342346))

(assert (= (and b!5342354 c!929532) b!5342351))

(assert (= (and b!5342354 (not c!929532)) b!5342348))

(assert (= (and b!5342351 (not res!2266535)) b!5342350))

(assert (= (or b!5342350 b!5342348) bm!381832))

(assert (= (or b!5342353 b!5342351) bm!381831))

(declare-fun m!6374600 () Bool)

(assert (=> b!5342346 m!6374600))

(declare-fun m!6374602 () Bool)

(assert (=> bm!381831 m!6374602))

(declare-fun m!6374604 () Bool)

(assert (=> b!5342347 m!6374604))

(declare-fun m!6374606 () Bool)

(assert (=> bm!381832 m!6374606))

(assert (=> b!5342192 d!1713916))

(declare-fun b!5342480 () Bool)

(declare-fun e!3317204 () Bool)

(declare-fun head!11454 (List!61374) C!30320)

(assert (=> b!5342480 (= e!3317204 (= (head!11454 s!2326) (c!929489 r!7292)))))

(declare-fun b!5342481 () Bool)

(declare-fun e!3317209 () Bool)

(declare-fun derivativeStep!4189 (Regex!15025 C!30320) Regex!15025)

(declare-fun tail!10551 (List!61374) List!61374)

(assert (=> b!5342481 (= e!3317209 (matchR!7210 (derivativeStep!4189 r!7292 (head!11454 s!2326)) (tail!10551 s!2326)))))

(declare-fun b!5342482 () Bool)

(declare-fun res!2266600 () Bool)

(declare-fun e!3317207 () Bool)

(assert (=> b!5342482 (=> res!2266600 e!3317207)))

(assert (=> b!5342482 (= res!2266600 e!3317204)))

(declare-fun res!2266595 () Bool)

(assert (=> b!5342482 (=> (not res!2266595) (not e!3317204))))

(declare-fun lt!2178592 () Bool)

(assert (=> b!5342482 (= res!2266595 lt!2178592)))

(declare-fun b!5342483 () Bool)

(declare-fun e!3317203 () Bool)

(declare-fun e!3317208 () Bool)

(assert (=> b!5342483 (= e!3317203 e!3317208)))

(declare-fun res!2266596 () Bool)

(assert (=> b!5342483 (=> res!2266596 e!3317208)))

(declare-fun call!381859 () Bool)

(assert (=> b!5342483 (= res!2266596 call!381859)))

(declare-fun b!5342484 () Bool)

(declare-fun res!2266601 () Bool)

(assert (=> b!5342484 (=> (not res!2266601) (not e!3317204))))

(assert (=> b!5342484 (= res!2266601 (not call!381859))))

(declare-fun b!5342485 () Bool)

(declare-fun e!3317205 () Bool)

(assert (=> b!5342485 (= e!3317205 (not lt!2178592))))

(declare-fun b!5342486 () Bool)

(assert (=> b!5342486 (= e!3317209 (nullable!5194 r!7292))))

(declare-fun d!1713944 () Bool)

(declare-fun e!3317206 () Bool)

(assert (=> d!1713944 e!3317206))

(declare-fun c!929570 () Bool)

(assert (=> d!1713944 (= c!929570 ((_ is EmptyExpr!15025) r!7292))))

(assert (=> d!1713944 (= lt!2178592 e!3317209)))

(declare-fun c!929569 () Bool)

(assert (=> d!1713944 (= c!929569 (isEmpty!33222 s!2326))))

(assert (=> d!1713944 (validRegex!6761 r!7292)))

(assert (=> d!1713944 (= (matchR!7210 r!7292 s!2326) lt!2178592)))

(declare-fun bm!381854 () Bool)

(assert (=> bm!381854 (= call!381859 (isEmpty!33222 s!2326))))

(declare-fun b!5342487 () Bool)

(declare-fun res!2266594 () Bool)

(assert (=> b!5342487 (=> res!2266594 e!3317208)))

(assert (=> b!5342487 (= res!2266594 (not (isEmpty!33222 (tail!10551 s!2326))))))

(declare-fun b!5342488 () Bool)

(declare-fun res!2266599 () Bool)

(assert (=> b!5342488 (=> res!2266599 e!3317207)))

(assert (=> b!5342488 (= res!2266599 (not ((_ is ElementMatch!15025) r!7292)))))

(assert (=> b!5342488 (= e!3317205 e!3317207)))

(declare-fun b!5342489 () Bool)

(declare-fun res!2266597 () Bool)

(assert (=> b!5342489 (=> (not res!2266597) (not e!3317204))))

(assert (=> b!5342489 (= res!2266597 (isEmpty!33222 (tail!10551 s!2326)))))

(declare-fun b!5342490 () Bool)

(assert (=> b!5342490 (= e!3317206 e!3317205)))

(declare-fun c!929568 () Bool)

(assert (=> b!5342490 (= c!929568 ((_ is EmptyLang!15025) r!7292))))

(declare-fun b!5342491 () Bool)

(assert (=> b!5342491 (= e!3317208 (not (= (head!11454 s!2326) (c!929489 r!7292))))))

(declare-fun b!5342492 () Bool)

(assert (=> b!5342492 (= e!3317206 (= lt!2178592 call!381859))))

(declare-fun b!5342493 () Bool)

(assert (=> b!5342493 (= e!3317207 e!3317203)))

(declare-fun res!2266598 () Bool)

(assert (=> b!5342493 (=> (not res!2266598) (not e!3317203))))

(assert (=> b!5342493 (= res!2266598 (not lt!2178592))))

(assert (= (and d!1713944 c!929569) b!5342486))

(assert (= (and d!1713944 (not c!929569)) b!5342481))

(assert (= (and d!1713944 c!929570) b!5342492))

(assert (= (and d!1713944 (not c!929570)) b!5342490))

(assert (= (and b!5342490 c!929568) b!5342485))

(assert (= (and b!5342490 (not c!929568)) b!5342488))

(assert (= (and b!5342488 (not res!2266599)) b!5342482))

(assert (= (and b!5342482 res!2266595) b!5342484))

(assert (= (and b!5342484 res!2266601) b!5342489))

(assert (= (and b!5342489 res!2266597) b!5342480))

(assert (= (and b!5342482 (not res!2266600)) b!5342493))

(assert (= (and b!5342493 res!2266598) b!5342483))

(assert (= (and b!5342483 (not res!2266596)) b!5342487))

(assert (= (and b!5342487 (not res!2266594)) b!5342491))

(assert (= (or b!5342492 b!5342483 b!5342484) bm!381854))

(declare-fun m!6374662 () Bool)

(assert (=> b!5342481 m!6374662))

(assert (=> b!5342481 m!6374662))

(declare-fun m!6374664 () Bool)

(assert (=> b!5342481 m!6374664))

(declare-fun m!6374666 () Bool)

(assert (=> b!5342481 m!6374666))

(assert (=> b!5342481 m!6374664))

(assert (=> b!5342481 m!6374666))

(declare-fun m!6374668 () Bool)

(assert (=> b!5342481 m!6374668))

(assert (=> bm!381854 m!6374602))

(assert (=> d!1713944 m!6374602))

(assert (=> d!1713944 m!6374526))

(assert (=> b!5342480 m!6374662))

(declare-fun m!6374670 () Bool)

(assert (=> b!5342486 m!6374670))

(assert (=> b!5342489 m!6374666))

(assert (=> b!5342489 m!6374666))

(declare-fun m!6374672 () Bool)

(assert (=> b!5342489 m!6374672))

(assert (=> b!5342487 m!6374666))

(assert (=> b!5342487 m!6374666))

(assert (=> b!5342487 m!6374672))

(assert (=> b!5342491 m!6374662))

(assert (=> b!5342192 d!1713944))

(declare-fun d!1713964 () Bool)

(assert (=> d!1713964 (= (matchR!7210 r!7292 s!2326) (matchRSpec!2128 r!7292 s!2326))))

(declare-fun lt!2178602 () Unit!153618)

(declare-fun choose!40041 (Regex!15025 List!61374) Unit!153618)

(assert (=> d!1713964 (= lt!2178602 (choose!40041 r!7292 s!2326))))

(assert (=> d!1713964 (validRegex!6761 r!7292)))

(assert (=> d!1713964 (= (mainMatchTheorem!2128 r!7292 s!2326) lt!2178602)))

(declare-fun bs!1238613 () Bool)

(assert (= bs!1238613 d!1713964))

(assert (=> bs!1238613 m!6374412))

(assert (=> bs!1238613 m!6374410))

(declare-fun m!6374690 () Bool)

(assert (=> bs!1238613 m!6374690))

(assert (=> bs!1238613 m!6374526))

(assert (=> b!5342192 d!1713964))

(declare-fun bm!381865 () Bool)

(declare-fun call!381870 () Bool)

(declare-fun c!929590 () Bool)

(assert (=> bm!381865 (= call!381870 (validRegex!6761 (ite c!929590 (regOne!30563 r!7292) (regOne!30562 r!7292))))))

(declare-fun b!5342554 () Bool)

(declare-fun e!3317247 () Bool)

(declare-fun e!3317252 () Bool)

(assert (=> b!5342554 (= e!3317247 e!3317252)))

(declare-fun res!2266630 () Bool)

(assert (=> b!5342554 (= res!2266630 (not (nullable!5194 (reg!15354 r!7292))))))

(assert (=> b!5342554 (=> (not res!2266630) (not e!3317252))))

(declare-fun b!5342555 () Bool)

(declare-fun e!3317253 () Bool)

(assert (=> b!5342555 (= e!3317247 e!3317253)))

(assert (=> b!5342555 (= c!929590 ((_ is Union!15025) r!7292))))

(declare-fun d!1713972 () Bool)

(declare-fun res!2266631 () Bool)

(declare-fun e!3317248 () Bool)

(assert (=> d!1713972 (=> res!2266631 e!3317248)))

(assert (=> d!1713972 (= res!2266631 ((_ is ElementMatch!15025) r!7292))))

(assert (=> d!1713972 (= (validRegex!6761 r!7292) e!3317248)))

(declare-fun call!381872 () Bool)

(declare-fun bm!381866 () Bool)

(declare-fun c!929589 () Bool)

(assert (=> bm!381866 (= call!381872 (validRegex!6761 (ite c!929589 (reg!15354 r!7292) (ite c!929590 (regTwo!30563 r!7292) (regTwo!30562 r!7292)))))))

(declare-fun bm!381867 () Bool)

(declare-fun call!381871 () Bool)

(assert (=> bm!381867 (= call!381871 call!381872)))

(declare-fun b!5342556 () Bool)

(declare-fun e!3317250 () Bool)

(declare-fun e!3317251 () Bool)

(assert (=> b!5342556 (= e!3317250 e!3317251)))

(declare-fun res!2266628 () Bool)

(assert (=> b!5342556 (=> (not res!2266628) (not e!3317251))))

(assert (=> b!5342556 (= res!2266628 call!381870)))

(declare-fun b!5342557 () Bool)

(assert (=> b!5342557 (= e!3317252 call!381872)))

(declare-fun b!5342558 () Bool)

(declare-fun res!2266629 () Bool)

(assert (=> b!5342558 (=> res!2266629 e!3317250)))

(assert (=> b!5342558 (= res!2266629 (not ((_ is Concat!23870) r!7292)))))

(assert (=> b!5342558 (= e!3317253 e!3317250)))

(declare-fun b!5342559 () Bool)

(declare-fun res!2266632 () Bool)

(declare-fun e!3317249 () Bool)

(assert (=> b!5342559 (=> (not res!2266632) (not e!3317249))))

(assert (=> b!5342559 (= res!2266632 call!381870)))

(assert (=> b!5342559 (= e!3317253 e!3317249)))

(declare-fun b!5342560 () Bool)

(assert (=> b!5342560 (= e!3317251 call!381871)))

(declare-fun b!5342561 () Bool)

(assert (=> b!5342561 (= e!3317248 e!3317247)))

(assert (=> b!5342561 (= c!929589 ((_ is Star!15025) r!7292))))

(declare-fun b!5342562 () Bool)

(assert (=> b!5342562 (= e!3317249 call!381871)))

(assert (= (and d!1713972 (not res!2266631)) b!5342561))

(assert (= (and b!5342561 c!929589) b!5342554))

(assert (= (and b!5342561 (not c!929589)) b!5342555))

(assert (= (and b!5342554 res!2266630) b!5342557))

(assert (= (and b!5342555 c!929590) b!5342559))

(assert (= (and b!5342555 (not c!929590)) b!5342558))

(assert (= (and b!5342559 res!2266632) b!5342562))

(assert (= (and b!5342558 (not res!2266629)) b!5342556))

(assert (= (and b!5342556 res!2266628) b!5342560))

(assert (= (or b!5342562 b!5342560) bm!381867))

(assert (= (or b!5342559 b!5342556) bm!381865))

(assert (= (or b!5342557 bm!381867) bm!381866))

(declare-fun m!6374692 () Bool)

(assert (=> bm!381865 m!6374692))

(declare-fun m!6374694 () Bool)

(assert (=> b!5342554 m!6374694))

(declare-fun m!6374696 () Bool)

(assert (=> bm!381866 m!6374696))

(assert (=> start!562738 d!1713972))

(declare-fun b!5342626 () Bool)

(declare-fun e!3317290 () (InoxSet Context!8818))

(assert (=> b!5342626 (= e!3317290 ((as const (Array Context!8818 Bool)) false))))

(declare-fun bm!381889 () Bool)

(declare-fun call!381896 () (InoxSet Context!8818))

(declare-fun call!381899 () (InoxSet Context!8818))

(assert (=> bm!381889 (= call!381896 call!381899)))

(declare-fun bm!381890 () Bool)

(declare-fun call!381897 () List!61375)

(declare-fun call!381895 () List!61375)

(assert (=> bm!381890 (= call!381897 call!381895)))

(declare-fun b!5342627 () Bool)

(declare-fun e!3317292 () (InoxSet Context!8818))

(declare-fun call!381894 () (InoxSet Context!8818))

(assert (=> b!5342627 (= e!3317292 ((_ map or) call!381894 call!381896))))

(declare-fun b!5342628 () Bool)

(declare-fun e!3317291 () (InoxSet Context!8818))

(assert (=> b!5342628 (= e!3317291 (store ((as const (Array Context!8818 Bool)) false) (Context!8819 lt!2178570) true))))

(declare-fun b!5342630 () Bool)

(declare-fun e!3317293 () (InoxSet Context!8818))

(declare-fun call!381898 () (InoxSet Context!8818))

(assert (=> b!5342630 (= e!3317293 call!381898)))

(declare-fun b!5342631 () Bool)

(declare-fun c!929617 () Bool)

(assert (=> b!5342631 (= c!929617 ((_ is Star!15025) (regOne!30562 (regOne!30562 r!7292))))))

(assert (=> b!5342631 (= e!3317293 e!3317290)))

(declare-fun b!5342632 () Bool)

(declare-fun e!3317294 () (InoxSet Context!8818))

(assert (=> b!5342632 (= e!3317291 e!3317294)))

(declare-fun c!929616 () Bool)

(assert (=> b!5342632 (= c!929616 ((_ is Union!15025) (regOne!30562 (regOne!30562 r!7292))))))

(declare-fun bm!381891 () Bool)

(assert (=> bm!381891 (= call!381898 call!381896)))

(declare-fun b!5342633 () Bool)

(assert (=> b!5342633 (= e!3317294 ((_ map or) call!381894 call!381899))))

(declare-fun bm!381892 () Bool)

(assert (=> bm!381892 (= call!381894 (derivationStepZipperDown!473 (ite c!929616 (regOne!30563 (regOne!30562 (regOne!30562 r!7292))) (regOne!30562 (regOne!30562 (regOne!30562 r!7292)))) (ite c!929616 (Context!8819 lt!2178570) (Context!8819 call!381895)) (h!67698 s!2326)))))

(declare-fun b!5342634 () Bool)

(assert (=> b!5342634 (= e!3317292 e!3317293)))

(declare-fun c!929615 () Bool)

(assert (=> b!5342634 (= c!929615 ((_ is Concat!23870) (regOne!30562 (regOne!30562 r!7292))))))

(declare-fun b!5342635 () Bool)

(declare-fun c!929618 () Bool)

(declare-fun e!3317295 () Bool)

(assert (=> b!5342635 (= c!929618 e!3317295)))

(declare-fun res!2266650 () Bool)

(assert (=> b!5342635 (=> (not res!2266650) (not e!3317295))))

(assert (=> b!5342635 (= res!2266650 ((_ is Concat!23870) (regOne!30562 (regOne!30562 r!7292))))))

(assert (=> b!5342635 (= e!3317294 e!3317292)))

(declare-fun b!5342636 () Bool)

(assert (=> b!5342636 (= e!3317295 (nullable!5194 (regOne!30562 (regOne!30562 (regOne!30562 r!7292)))))))

(declare-fun d!1713974 () Bool)

(declare-fun c!929614 () Bool)

(assert (=> d!1713974 (= c!929614 (and ((_ is ElementMatch!15025) (regOne!30562 (regOne!30562 r!7292))) (= (c!929489 (regOne!30562 (regOne!30562 r!7292))) (h!67698 s!2326))))))

(assert (=> d!1713974 (= (derivationStepZipperDown!473 (regOne!30562 (regOne!30562 r!7292)) (Context!8819 lt!2178570) (h!67698 s!2326)) e!3317291)))

(declare-fun b!5342629 () Bool)

(assert (=> b!5342629 (= e!3317290 call!381898)))

(declare-fun bm!381893 () Bool)

(declare-fun $colon$colon!1418 (List!61375 Regex!15025) List!61375)

(assert (=> bm!381893 (= call!381895 ($colon$colon!1418 (exprs!4909 (Context!8819 lt!2178570)) (ite (or c!929618 c!929615) (regTwo!30562 (regOne!30562 (regOne!30562 r!7292))) (regOne!30562 (regOne!30562 r!7292)))))))

(declare-fun bm!381894 () Bool)

(assert (=> bm!381894 (= call!381899 (derivationStepZipperDown!473 (ite c!929616 (regTwo!30563 (regOne!30562 (regOne!30562 r!7292))) (ite c!929618 (regTwo!30562 (regOne!30562 (regOne!30562 r!7292))) (ite c!929615 (regOne!30562 (regOne!30562 (regOne!30562 r!7292))) (reg!15354 (regOne!30562 (regOne!30562 r!7292)))))) (ite (or c!929616 c!929618) (Context!8819 lt!2178570) (Context!8819 call!381897)) (h!67698 s!2326)))))

(assert (= (and d!1713974 c!929614) b!5342628))

(assert (= (and d!1713974 (not c!929614)) b!5342632))

(assert (= (and b!5342632 c!929616) b!5342633))

(assert (= (and b!5342632 (not c!929616)) b!5342635))

(assert (= (and b!5342635 res!2266650) b!5342636))

(assert (= (and b!5342635 c!929618) b!5342627))

(assert (= (and b!5342635 (not c!929618)) b!5342634))

(assert (= (and b!5342634 c!929615) b!5342630))

(assert (= (and b!5342634 (not c!929615)) b!5342631))

(assert (= (and b!5342631 c!929617) b!5342629))

(assert (= (and b!5342631 (not c!929617)) b!5342626))

(assert (= (or b!5342630 b!5342629) bm!381890))

(assert (= (or b!5342630 b!5342629) bm!381891))

(assert (= (or b!5342627 bm!381890) bm!381893))

(assert (= (or b!5342627 bm!381891) bm!381889))

(assert (= (or b!5342633 bm!381889) bm!381894))

(assert (= (or b!5342633 b!5342627) bm!381892))

(declare-fun m!6374732 () Bool)

(assert (=> bm!381892 m!6374732))

(declare-fun m!6374734 () Bool)

(assert (=> bm!381893 m!6374734))

(declare-fun m!6374736 () Bool)

(assert (=> b!5342636 m!6374736))

(declare-fun m!6374738 () Bool)

(assert (=> bm!381894 m!6374738))

(declare-fun m!6374740 () Bool)

(assert (=> b!5342628 m!6374740))

(assert (=> b!5342216 d!1713974))

(declare-fun bs!1238625 () Bool)

(declare-fun d!1713990 () Bool)

(assert (= bs!1238625 (and d!1713990 b!5342227)))

(declare-fun lambda!274027 () Int)

(assert (=> bs!1238625 (= lambda!274027 lambda!273997)))

(declare-fun bs!1238626 () Bool)

(assert (= bs!1238626 (and d!1713990 d!1713912)))

(assert (=> bs!1238626 (= lambda!274027 lambda!274000)))

(declare-fun bs!1238627 () Bool)

(assert (= bs!1238627 (and d!1713990 d!1713914)))

(assert (=> bs!1238627 (= lambda!274027 lambda!274003)))

(declare-fun b!5342688 () Bool)

(declare-fun e!3317329 () Regex!15025)

(assert (=> b!5342688 (= e!3317329 EmptyLang!15025)))

(declare-fun b!5342689 () Bool)

(declare-fun e!3317326 () Regex!15025)

(assert (=> b!5342689 (= e!3317326 e!3317329)))

(declare-fun c!929633 () Bool)

(assert (=> b!5342689 (= c!929633 ((_ is Cons!61251) (unfocusZipperList!467 zl!343)))))

(declare-fun e!3317325 () Bool)

(assert (=> d!1713990 e!3317325))

(declare-fun res!2266675 () Bool)

(assert (=> d!1713990 (=> (not res!2266675) (not e!3317325))))

(declare-fun lt!2178623 () Regex!15025)

(assert (=> d!1713990 (= res!2266675 (validRegex!6761 lt!2178623))))

(assert (=> d!1713990 (= lt!2178623 e!3317326)))

(declare-fun c!929636 () Bool)

(declare-fun e!3317330 () Bool)

(assert (=> d!1713990 (= c!929636 e!3317330)))

(declare-fun res!2266674 () Bool)

(assert (=> d!1713990 (=> (not res!2266674) (not e!3317330))))

(assert (=> d!1713990 (= res!2266674 ((_ is Cons!61251) (unfocusZipperList!467 zl!343)))))

(assert (=> d!1713990 (forall!14443 (unfocusZipperList!467 zl!343) lambda!274027)))

(assert (=> d!1713990 (= (generalisedUnion!954 (unfocusZipperList!467 zl!343)) lt!2178623)))

(declare-fun b!5342690 () Bool)

(declare-fun e!3317328 () Bool)

(assert (=> b!5342690 (= e!3317328 (= lt!2178623 (head!11452 (unfocusZipperList!467 zl!343))))))

(declare-fun b!5342691 () Bool)

(declare-fun e!3317327 () Bool)

(assert (=> b!5342691 (= e!3317325 e!3317327)))

(declare-fun c!929634 () Bool)

(assert (=> b!5342691 (= c!929634 (isEmpty!33219 (unfocusZipperList!467 zl!343)))))

(declare-fun b!5342692 () Bool)

(declare-fun isEmptyLang!910 (Regex!15025) Bool)

(assert (=> b!5342692 (= e!3317327 (isEmptyLang!910 lt!2178623))))

(declare-fun b!5342693 () Bool)

(assert (=> b!5342693 (= e!3317329 (Union!15025 (h!67699 (unfocusZipperList!467 zl!343)) (generalisedUnion!954 (t!374592 (unfocusZipperList!467 zl!343)))))))

(declare-fun b!5342694 () Bool)

(assert (=> b!5342694 (= e!3317326 (h!67699 (unfocusZipperList!467 zl!343)))))

(declare-fun b!5342695 () Bool)

(assert (=> b!5342695 (= e!3317327 e!3317328)))

(declare-fun c!929635 () Bool)

(assert (=> b!5342695 (= c!929635 (isEmpty!33219 (tail!10549 (unfocusZipperList!467 zl!343))))))

(declare-fun b!5342696 () Bool)

(assert (=> b!5342696 (= e!3317330 (isEmpty!33219 (t!374592 (unfocusZipperList!467 zl!343))))))

(declare-fun b!5342697 () Bool)

(declare-fun isUnion!342 (Regex!15025) Bool)

(assert (=> b!5342697 (= e!3317328 (isUnion!342 lt!2178623))))

(assert (= (and d!1713990 res!2266674) b!5342696))

(assert (= (and d!1713990 c!929636) b!5342694))

(assert (= (and d!1713990 (not c!929636)) b!5342689))

(assert (= (and b!5342689 c!929633) b!5342693))

(assert (= (and b!5342689 (not c!929633)) b!5342688))

(assert (= (and d!1713990 res!2266675) b!5342691))

(assert (= (and b!5342691 c!929634) b!5342692))

(assert (= (and b!5342691 (not c!929634)) b!5342695))

(assert (= (and b!5342695 c!929635) b!5342690))

(assert (= (and b!5342695 (not c!929635)) b!5342697))

(assert (=> b!5342695 m!6374474))

(declare-fun m!6374770 () Bool)

(assert (=> b!5342695 m!6374770))

(assert (=> b!5342695 m!6374770))

(declare-fun m!6374772 () Bool)

(assert (=> b!5342695 m!6374772))

(declare-fun m!6374774 () Bool)

(assert (=> b!5342696 m!6374774))

(declare-fun m!6374776 () Bool)

(assert (=> b!5342697 m!6374776))

(declare-fun m!6374778 () Bool)

(assert (=> b!5342693 m!6374778))

(assert (=> b!5342690 m!6374474))

(declare-fun m!6374780 () Bool)

(assert (=> b!5342690 m!6374780))

(assert (=> b!5342691 m!6374474))

(declare-fun m!6374782 () Bool)

(assert (=> b!5342691 m!6374782))

(declare-fun m!6374784 () Bool)

(assert (=> d!1713990 m!6374784))

(assert (=> d!1713990 m!6374474))

(declare-fun m!6374786 () Bool)

(assert (=> d!1713990 m!6374786))

(declare-fun m!6374788 () Bool)

(assert (=> b!5342692 m!6374788))

(assert (=> b!5342215 d!1713990))

(declare-fun bs!1238633 () Bool)

(declare-fun d!1713998 () Bool)

(assert (= bs!1238633 (and d!1713998 b!5342227)))

(declare-fun lambda!274031 () Int)

(assert (=> bs!1238633 (= lambda!274031 lambda!273997)))

(declare-fun bs!1238634 () Bool)

(assert (= bs!1238634 (and d!1713998 d!1713912)))

(assert (=> bs!1238634 (= lambda!274031 lambda!274000)))

(declare-fun bs!1238635 () Bool)

(assert (= bs!1238635 (and d!1713998 d!1713914)))

(assert (=> bs!1238635 (= lambda!274031 lambda!274003)))

(declare-fun bs!1238636 () Bool)

(assert (= bs!1238636 (and d!1713998 d!1713990)))

(assert (=> bs!1238636 (= lambda!274031 lambda!274027)))

(declare-fun lt!2178627 () List!61375)

(assert (=> d!1713998 (forall!14443 lt!2178627 lambda!274031)))

(declare-fun e!3317333 () List!61375)

(assert (=> d!1713998 (= lt!2178627 e!3317333)))

(declare-fun c!929639 () Bool)

(assert (=> d!1713998 (= c!929639 ((_ is Cons!61252) zl!343))))

(assert (=> d!1713998 (= (unfocusZipperList!467 zl!343) lt!2178627)))

(declare-fun b!5342702 () Bool)

(assert (=> b!5342702 (= e!3317333 (Cons!61251 (generalisedConcat!694 (exprs!4909 (h!67700 zl!343))) (unfocusZipperList!467 (t!374593 zl!343))))))

(declare-fun b!5342703 () Bool)

(assert (=> b!5342703 (= e!3317333 Nil!61251)))

(assert (= (and d!1713998 c!929639) b!5342702))

(assert (= (and d!1713998 (not c!929639)) b!5342703))

(declare-fun m!6374794 () Bool)

(assert (=> d!1713998 m!6374794))

(assert (=> b!5342702 m!6374402))

(declare-fun m!6374796 () Bool)

(assert (=> b!5342702 m!6374796))

(assert (=> b!5342215 d!1713998))

(declare-fun d!1714002 () Bool)

(declare-fun lt!2178632 () Regex!15025)

(assert (=> d!1714002 (validRegex!6761 lt!2178632)))

(assert (=> d!1714002 (= lt!2178632 (generalisedUnion!954 (unfocusZipperList!467 zl!343)))))

(assert (=> d!1714002 (= (unfocusZipper!767 zl!343) lt!2178632)))

(declare-fun bs!1238637 () Bool)

(assert (= bs!1238637 d!1714002))

(declare-fun m!6374798 () Bool)

(assert (=> bs!1238637 m!6374798))

(assert (=> bs!1238637 m!6374474))

(assert (=> bs!1238637 m!6374474))

(assert (=> bs!1238637 m!6374476))

(assert (=> b!5342214 d!1714002))

(declare-fun bs!1238638 () Bool)

(declare-fun d!1714004 () Bool)

(assert (= bs!1238638 (and d!1714004 d!1713912)))

(declare-fun lambda!274034 () Int)

(assert (=> bs!1238638 (= lambda!274034 lambda!274000)))

(declare-fun bs!1238639 () Bool)

(assert (= bs!1238639 (and d!1714004 d!1713914)))

(assert (=> bs!1238639 (= lambda!274034 lambda!274003)))

(declare-fun bs!1238640 () Bool)

(assert (= bs!1238640 (and d!1714004 d!1713990)))

(assert (=> bs!1238640 (= lambda!274034 lambda!274027)))

(declare-fun bs!1238641 () Bool)

(assert (= bs!1238641 (and d!1714004 d!1713998)))

(assert (=> bs!1238641 (= lambda!274034 lambda!274031)))

(declare-fun bs!1238642 () Bool)

(assert (= bs!1238642 (and d!1714004 b!5342227)))

(assert (=> bs!1238642 (= lambda!274034 lambda!273997)))

(assert (=> d!1714004 (= (inv!80809 setElem!34489) (forall!14443 (exprs!4909 setElem!34489) lambda!274034))))

(declare-fun bs!1238643 () Bool)

(assert (= bs!1238643 d!1714004))

(declare-fun m!6374800 () Bool)

(assert (=> bs!1238643 m!6374800))

(assert (=> setNonEmpty!34489 d!1714004))

(declare-fun b!5342708 () Bool)

(declare-fun e!3317337 () Bool)

(assert (=> b!5342708 (= e!3317337 (= (head!11454 s!2326) (c!929489 (Concat!23870 lt!2178557 (regTwo!30562 r!7292)))))))

(declare-fun b!5342709 () Bool)

(declare-fun e!3317342 () Bool)

(assert (=> b!5342709 (= e!3317342 (matchR!7210 (derivativeStep!4189 (Concat!23870 lt!2178557 (regTwo!30562 r!7292)) (head!11454 s!2326)) (tail!10551 s!2326)))))

(declare-fun b!5342710 () Bool)

(declare-fun res!2266686 () Bool)

(declare-fun e!3317340 () Bool)

(assert (=> b!5342710 (=> res!2266686 e!3317340)))

(assert (=> b!5342710 (= res!2266686 e!3317337)))

(declare-fun res!2266681 () Bool)

(assert (=> b!5342710 (=> (not res!2266681) (not e!3317337))))

(declare-fun lt!2178633 () Bool)

(assert (=> b!5342710 (= res!2266681 lt!2178633)))

(declare-fun b!5342711 () Bool)

(declare-fun e!3317336 () Bool)

(declare-fun e!3317341 () Bool)

(assert (=> b!5342711 (= e!3317336 e!3317341)))

(declare-fun res!2266682 () Bool)

(assert (=> b!5342711 (=> res!2266682 e!3317341)))

(declare-fun call!381900 () Bool)

(assert (=> b!5342711 (= res!2266682 call!381900)))

(declare-fun b!5342712 () Bool)

(declare-fun res!2266687 () Bool)

(assert (=> b!5342712 (=> (not res!2266687) (not e!3317337))))

(assert (=> b!5342712 (= res!2266687 (not call!381900))))

(declare-fun b!5342713 () Bool)

(declare-fun e!3317338 () Bool)

(assert (=> b!5342713 (= e!3317338 (not lt!2178633))))

(declare-fun b!5342714 () Bool)

(assert (=> b!5342714 (= e!3317342 (nullable!5194 (Concat!23870 lt!2178557 (regTwo!30562 r!7292))))))

(declare-fun d!1714006 () Bool)

(declare-fun e!3317339 () Bool)

(assert (=> d!1714006 e!3317339))

(declare-fun c!929642 () Bool)

(assert (=> d!1714006 (= c!929642 ((_ is EmptyExpr!15025) (Concat!23870 lt!2178557 (regTwo!30562 r!7292))))))

(assert (=> d!1714006 (= lt!2178633 e!3317342)))

(declare-fun c!929641 () Bool)

(assert (=> d!1714006 (= c!929641 (isEmpty!33222 s!2326))))

(assert (=> d!1714006 (validRegex!6761 (Concat!23870 lt!2178557 (regTwo!30562 r!7292)))))

(assert (=> d!1714006 (= (matchR!7210 (Concat!23870 lt!2178557 (regTwo!30562 r!7292)) s!2326) lt!2178633)))

(declare-fun bm!381895 () Bool)

(assert (=> bm!381895 (= call!381900 (isEmpty!33222 s!2326))))

(declare-fun b!5342715 () Bool)

(declare-fun res!2266680 () Bool)

(assert (=> b!5342715 (=> res!2266680 e!3317341)))

(assert (=> b!5342715 (= res!2266680 (not (isEmpty!33222 (tail!10551 s!2326))))))

(declare-fun b!5342716 () Bool)

(declare-fun res!2266685 () Bool)

(assert (=> b!5342716 (=> res!2266685 e!3317340)))

(assert (=> b!5342716 (= res!2266685 (not ((_ is ElementMatch!15025) (Concat!23870 lt!2178557 (regTwo!30562 r!7292)))))))

(assert (=> b!5342716 (= e!3317338 e!3317340)))

(declare-fun b!5342717 () Bool)

(declare-fun res!2266683 () Bool)

(assert (=> b!5342717 (=> (not res!2266683) (not e!3317337))))

(assert (=> b!5342717 (= res!2266683 (isEmpty!33222 (tail!10551 s!2326)))))

(declare-fun b!5342718 () Bool)

(assert (=> b!5342718 (= e!3317339 e!3317338)))

(declare-fun c!929640 () Bool)

(assert (=> b!5342718 (= c!929640 ((_ is EmptyLang!15025) (Concat!23870 lt!2178557 (regTwo!30562 r!7292))))))

(declare-fun b!5342719 () Bool)

(assert (=> b!5342719 (= e!3317341 (not (= (head!11454 s!2326) (c!929489 (Concat!23870 lt!2178557 (regTwo!30562 r!7292))))))))

(declare-fun b!5342720 () Bool)

(assert (=> b!5342720 (= e!3317339 (= lt!2178633 call!381900))))

(declare-fun b!5342721 () Bool)

(assert (=> b!5342721 (= e!3317340 e!3317336)))

(declare-fun res!2266684 () Bool)

(assert (=> b!5342721 (=> (not res!2266684) (not e!3317336))))

(assert (=> b!5342721 (= res!2266684 (not lt!2178633))))

(assert (= (and d!1714006 c!929641) b!5342714))

(assert (= (and d!1714006 (not c!929641)) b!5342709))

(assert (= (and d!1714006 c!929642) b!5342720))

(assert (= (and d!1714006 (not c!929642)) b!5342718))

(assert (= (and b!5342718 c!929640) b!5342713))

(assert (= (and b!5342718 (not c!929640)) b!5342716))

(assert (= (and b!5342716 (not res!2266685)) b!5342710))

(assert (= (and b!5342710 res!2266681) b!5342712))

(assert (= (and b!5342712 res!2266687) b!5342717))

(assert (= (and b!5342717 res!2266683) b!5342708))

(assert (= (and b!5342710 (not res!2266686)) b!5342721))

(assert (= (and b!5342721 res!2266684) b!5342711))

(assert (= (and b!5342711 (not res!2266682)) b!5342715))

(assert (= (and b!5342715 (not res!2266680)) b!5342719))

(assert (= (or b!5342720 b!5342711 b!5342712) bm!381895))

(assert (=> b!5342709 m!6374662))

(assert (=> b!5342709 m!6374662))

(declare-fun m!6374802 () Bool)

(assert (=> b!5342709 m!6374802))

(assert (=> b!5342709 m!6374666))

(assert (=> b!5342709 m!6374802))

(assert (=> b!5342709 m!6374666))

(declare-fun m!6374804 () Bool)

(assert (=> b!5342709 m!6374804))

(assert (=> bm!381895 m!6374602))

(assert (=> d!1714006 m!6374602))

(declare-fun m!6374806 () Bool)

(assert (=> d!1714006 m!6374806))

(assert (=> b!5342708 m!6374662))

(declare-fun m!6374808 () Bool)

(assert (=> b!5342714 m!6374808))

(assert (=> b!5342717 m!6374666))

(assert (=> b!5342717 m!6374666))

(assert (=> b!5342717 m!6374672))

(assert (=> b!5342715 m!6374666))

(assert (=> b!5342715 m!6374666))

(assert (=> b!5342715 m!6374672))

(assert (=> b!5342719 m!6374662))

(assert (=> b!5342208 d!1714006))

(declare-fun d!1714008 () Bool)

(declare-fun res!2266696 () Bool)

(declare-fun e!3317349 () Bool)

(assert (=> d!1714008 (=> res!2266696 e!3317349)))

(assert (=> d!1714008 (= res!2266696 ((_ is Nil!61251) (t!374592 (exprs!4909 (h!67700 zl!343)))))))

(assert (=> d!1714008 (= (forall!14443 (t!374592 (exprs!4909 (h!67700 zl!343))) lambda!273997) e!3317349)))

(declare-fun b!5342730 () Bool)

(declare-fun e!3317350 () Bool)

(assert (=> b!5342730 (= e!3317349 e!3317350)))

(declare-fun res!2266697 () Bool)

(assert (=> b!5342730 (=> (not res!2266697) (not e!3317350))))

(declare-fun dynLambda!24211 (Int Regex!15025) Bool)

(assert (=> b!5342730 (= res!2266697 (dynLambda!24211 lambda!273997 (h!67699 (t!374592 (exprs!4909 (h!67700 zl!343))))))))

(declare-fun b!5342731 () Bool)

(assert (=> b!5342731 (= e!3317350 (forall!14443 (t!374592 (t!374592 (exprs!4909 (h!67700 zl!343)))) lambda!273997))))

(assert (= (and d!1714008 (not res!2266696)) b!5342730))

(assert (= (and b!5342730 res!2266697) b!5342731))

(declare-fun b_lambda!205209 () Bool)

(assert (=> (not b_lambda!205209) (not b!5342730)))

(declare-fun m!6374810 () Bool)

(assert (=> b!5342730 m!6374810))

(declare-fun m!6374812 () Bool)

(assert (=> b!5342731 m!6374812))

(assert (=> b!5342227 d!1714008))

(declare-fun d!1714010 () Bool)

(declare-fun nullableFct!1520 (Regex!15025) Bool)

(assert (=> d!1714010 (= (nullable!5194 (regOne!30562 (regOne!30562 r!7292))) (nullableFct!1520 (regOne!30562 (regOne!30562 r!7292))))))

(declare-fun bs!1238649 () Bool)

(assert (= bs!1238649 d!1714010))

(declare-fun m!6374814 () Bool)

(assert (=> bs!1238649 m!6374814))

(assert (=> b!5342207 d!1714010))

(declare-fun b!5342764 () Bool)

(declare-fun e!3317370 () Option!15136)

(assert (=> b!5342764 (= e!3317370 (Some!15135 (tuple2!64449 Nil!61250 s!2326)))))

(declare-fun b!5342766 () Bool)

(declare-fun e!3317371 () Bool)

(declare-fun lt!2178659 () Option!15136)

(declare-fun ++!13347 (List!61374 List!61374) List!61374)

(declare-fun get!21065 (Option!15136) tuple2!64448)

(assert (=> b!5342766 (= e!3317371 (= (++!13347 (_1!35527 (get!21065 lt!2178659)) (_2!35527 (get!21065 lt!2178659))) s!2326))))

(declare-fun b!5342767 () Bool)

(declare-fun e!3317373 () Bool)

(assert (=> b!5342767 (= e!3317373 (not (isDefined!11839 lt!2178659)))))

(declare-fun b!5342768 () Bool)

(declare-fun res!2266712 () Bool)

(assert (=> b!5342768 (=> (not res!2266712) (not e!3317371))))

(assert (=> b!5342768 (= res!2266712 (matchR!7210 (regOne!30562 r!7292) (_1!35527 (get!21065 lt!2178659))))))

(declare-fun b!5342769 () Bool)

(declare-fun e!3317372 () Bool)

(assert (=> b!5342769 (= e!3317372 (matchR!7210 (regTwo!30562 r!7292) s!2326))))

(declare-fun b!5342770 () Bool)

(declare-fun e!3317369 () Option!15136)

(assert (=> b!5342770 (= e!3317370 e!3317369)))

(declare-fun c!929657 () Bool)

(assert (=> b!5342770 (= c!929657 ((_ is Nil!61250) s!2326))))

(declare-fun d!1714012 () Bool)

(assert (=> d!1714012 e!3317373))

(declare-fun res!2266715 () Bool)

(assert (=> d!1714012 (=> res!2266715 e!3317373)))

(assert (=> d!1714012 (= res!2266715 e!3317371)))

(declare-fun res!2266716 () Bool)

(assert (=> d!1714012 (=> (not res!2266716) (not e!3317371))))

(assert (=> d!1714012 (= res!2266716 (isDefined!11839 lt!2178659))))

(assert (=> d!1714012 (= lt!2178659 e!3317370)))

(declare-fun c!929658 () Bool)

(assert (=> d!1714012 (= c!929658 e!3317372)))

(declare-fun res!2266713 () Bool)

(assert (=> d!1714012 (=> (not res!2266713) (not e!3317372))))

(assert (=> d!1714012 (= res!2266713 (matchR!7210 (regOne!30562 r!7292) Nil!61250))))

(assert (=> d!1714012 (validRegex!6761 (regOne!30562 r!7292))))

(assert (=> d!1714012 (= (findConcatSeparation!1550 (regOne!30562 r!7292) (regTwo!30562 r!7292) Nil!61250 s!2326 s!2326) lt!2178659)))

(declare-fun b!5342765 () Bool)

(declare-fun lt!2178658 () Unit!153618)

(declare-fun lt!2178657 () Unit!153618)

(assert (=> b!5342765 (= lt!2178658 lt!2178657)))

(assert (=> b!5342765 (= (++!13347 (++!13347 Nil!61250 (Cons!61250 (h!67698 s!2326) Nil!61250)) (t!374591 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1762 (List!61374 C!30320 List!61374 List!61374) Unit!153618)

(assert (=> b!5342765 (= lt!2178657 (lemmaMoveElementToOtherListKeepsConcatEq!1762 Nil!61250 (h!67698 s!2326) (t!374591 s!2326) s!2326))))

(assert (=> b!5342765 (= e!3317369 (findConcatSeparation!1550 (regOne!30562 r!7292) (regTwo!30562 r!7292) (++!13347 Nil!61250 (Cons!61250 (h!67698 s!2326) Nil!61250)) (t!374591 s!2326) s!2326))))

(declare-fun b!5342771 () Bool)

(assert (=> b!5342771 (= e!3317369 None!15135)))

(declare-fun b!5342772 () Bool)

(declare-fun res!2266714 () Bool)

(assert (=> b!5342772 (=> (not res!2266714) (not e!3317371))))

(assert (=> b!5342772 (= res!2266714 (matchR!7210 (regTwo!30562 r!7292) (_2!35527 (get!21065 lt!2178659))))))

(assert (= (and d!1714012 res!2266713) b!5342769))

(assert (= (and d!1714012 c!929658) b!5342764))

(assert (= (and d!1714012 (not c!929658)) b!5342770))

(assert (= (and b!5342770 c!929657) b!5342771))

(assert (= (and b!5342770 (not c!929657)) b!5342765))

(assert (= (and d!1714012 res!2266716) b!5342768))

(assert (= (and b!5342768 res!2266712) b!5342772))

(assert (= (and b!5342772 res!2266714) b!5342766))

(assert (= (and d!1714012 (not res!2266715)) b!5342767))

(declare-fun m!6374836 () Bool)

(assert (=> b!5342766 m!6374836))

(declare-fun m!6374844 () Bool)

(assert (=> b!5342766 m!6374844))

(declare-fun m!6374846 () Bool)

(assert (=> b!5342769 m!6374846))

(declare-fun m!6374850 () Bool)

(assert (=> d!1714012 m!6374850))

(declare-fun m!6374852 () Bool)

(assert (=> d!1714012 m!6374852))

(declare-fun m!6374854 () Bool)

(assert (=> d!1714012 m!6374854))

(assert (=> b!5342768 m!6374836))

(declare-fun m!6374860 () Bool)

(assert (=> b!5342768 m!6374860))

(assert (=> b!5342772 m!6374836))

(declare-fun m!6374862 () Bool)

(assert (=> b!5342772 m!6374862))

(declare-fun m!6374864 () Bool)

(assert (=> b!5342765 m!6374864))

(assert (=> b!5342765 m!6374864))

(declare-fun m!6374866 () Bool)

(assert (=> b!5342765 m!6374866))

(declare-fun m!6374868 () Bool)

(assert (=> b!5342765 m!6374868))

(assert (=> b!5342765 m!6374864))

(declare-fun m!6374870 () Bool)

(assert (=> b!5342765 m!6374870))

(assert (=> b!5342767 m!6374850))

(assert (=> b!5342191 d!1714012))

(declare-fun d!1714022 () Bool)

(declare-fun choose!40044 (Int) Bool)

(assert (=> d!1714022 (= (Exists!2206 lambda!273991) (choose!40044 lambda!273991))))

(declare-fun bs!1238658 () Bool)

(assert (= bs!1238658 d!1714022))

(declare-fun m!6374872 () Bool)

(assert (=> bs!1238658 m!6374872))

(assert (=> b!5342191 d!1714022))

(declare-fun bs!1238662 () Bool)

(declare-fun d!1714024 () Bool)

(assert (= bs!1238662 (and d!1714024 b!5342221)))

(declare-fun lambda!274056 () Int)

(assert (=> bs!1238662 (= (and (= (regOne!30562 r!7292) (regOne!30562 (regOne!30562 r!7292))) (= (regTwo!30562 r!7292) lt!2178542)) (= lambda!274056 lambda!273993))))

(declare-fun bs!1238663 () Bool)

(assert (= bs!1238663 (and d!1714024 b!5342191)))

(assert (=> bs!1238663 (not (= lambda!274056 lambda!273991))))

(declare-fun bs!1238664 () Bool)

(assert (= bs!1238664 (and d!1714024 b!5342348)))

(assert (=> bs!1238664 (not (= lambda!274056 lambda!274012))))

(declare-fun bs!1238665 () Bool)

(assert (= bs!1238665 (and d!1714024 b!5342350)))

(assert (=> bs!1238665 (not (= lambda!274056 lambda!274011))))

(assert (=> bs!1238662 (not (= lambda!274056 lambda!273994))))

(assert (=> bs!1238662 (not (= lambda!274056 lambda!273996))))

(assert (=> bs!1238662 (= (and (= (regOne!30562 r!7292) (regTwo!30562 (regOne!30562 r!7292))) (= (regTwo!30562 r!7292) lt!2178574)) (= lambda!274056 lambda!273995))))

(assert (=> bs!1238663 (= lambda!274056 lambda!273990)))

(assert (=> d!1714024 true))

(assert (=> d!1714024 true))

(assert (=> d!1714024 true))

(assert (=> d!1714024 (= (isDefined!11839 (findConcatSeparation!1550 (regOne!30562 r!7292) (regTwo!30562 r!7292) Nil!61250 s!2326 s!2326)) (Exists!2206 lambda!274056))))

(declare-fun lt!2178665 () Unit!153618)

(declare-fun choose!40045 (Regex!15025 Regex!15025 List!61374) Unit!153618)

(assert (=> d!1714024 (= lt!2178665 (choose!40045 (regOne!30562 r!7292) (regTwo!30562 r!7292) s!2326))))

(assert (=> d!1714024 (validRegex!6761 (regOne!30562 r!7292))))

(assert (=> d!1714024 (= (lemmaFindConcatSeparationEquivalentToExists!1314 (regOne!30562 r!7292) (regTwo!30562 r!7292) s!2326) lt!2178665)))

(declare-fun bs!1238666 () Bool)

(assert (= bs!1238666 d!1714024))

(declare-fun m!6374894 () Bool)

(assert (=> bs!1238666 m!6374894))

(declare-fun m!6374896 () Bool)

(assert (=> bs!1238666 m!6374896))

(assert (=> bs!1238666 m!6374438))

(assert (=> bs!1238666 m!6374854))

(assert (=> bs!1238666 m!6374438))

(assert (=> bs!1238666 m!6374440))

(assert (=> b!5342191 d!1714024))

(declare-fun d!1714028 () Bool)

(assert (=> d!1714028 (= (Exists!2206 lambda!273990) (choose!40044 lambda!273990))))

(declare-fun bs!1238667 () Bool)

(assert (= bs!1238667 d!1714028))

(declare-fun m!6374898 () Bool)

(assert (=> bs!1238667 m!6374898))

(assert (=> b!5342191 d!1714028))

(declare-fun bs!1238672 () Bool)

(declare-fun d!1714030 () Bool)

(assert (= bs!1238672 (and d!1714030 b!5342221)))

(declare-fun lambda!274064 () Int)

(assert (=> bs!1238672 (= (and (= (regOne!30562 r!7292) (regOne!30562 (regOne!30562 r!7292))) (= (regTwo!30562 r!7292) lt!2178542)) (= lambda!274064 lambda!273993))))

(declare-fun bs!1238673 () Bool)

(assert (= bs!1238673 (and d!1714030 b!5342191)))

(assert (=> bs!1238673 (not (= lambda!274064 lambda!273991))))

(declare-fun bs!1238674 () Bool)

(assert (= bs!1238674 (and d!1714030 b!5342348)))

(assert (=> bs!1238674 (not (= lambda!274064 lambda!274012))))

(declare-fun bs!1238675 () Bool)

(assert (= bs!1238675 (and d!1714030 b!5342350)))

(assert (=> bs!1238675 (not (= lambda!274064 lambda!274011))))

(assert (=> bs!1238672 (not (= lambda!274064 lambda!273996))))

(assert (=> bs!1238672 (= (and (= (regOne!30562 r!7292) (regTwo!30562 (regOne!30562 r!7292))) (= (regTwo!30562 r!7292) lt!2178574)) (= lambda!274064 lambda!273995))))

(assert (=> bs!1238673 (= lambda!274064 lambda!273990)))

(assert (=> bs!1238672 (not (= lambda!274064 lambda!273994))))

(declare-fun bs!1238676 () Bool)

(assert (= bs!1238676 (and d!1714030 d!1714024)))

(assert (=> bs!1238676 (= lambda!274064 lambda!274056)))

(assert (=> d!1714030 true))

(assert (=> d!1714030 true))

(assert (=> d!1714030 true))

(declare-fun lambda!274067 () Int)

(assert (=> bs!1238672 (not (= lambda!274067 lambda!273993))))

(assert (=> bs!1238673 (= lambda!274067 lambda!273991)))

(assert (=> bs!1238674 (= lambda!274067 lambda!274012)))

(assert (=> bs!1238675 (not (= lambda!274067 lambda!274011))))

(assert (=> bs!1238672 (= (and (= (regOne!30562 r!7292) (regTwo!30562 (regOne!30562 r!7292))) (= (regTwo!30562 r!7292) lt!2178574)) (= lambda!274067 lambda!273996))))

(assert (=> bs!1238672 (not (= lambda!274067 lambda!273995))))

(assert (=> bs!1238673 (not (= lambda!274067 lambda!273990))))

(declare-fun bs!1238677 () Bool)

(assert (= bs!1238677 d!1714030))

(assert (=> bs!1238677 (not (= lambda!274067 lambda!274064))))

(assert (=> bs!1238672 (= (and (= (regOne!30562 r!7292) (regOne!30562 (regOne!30562 r!7292))) (= (regTwo!30562 r!7292) lt!2178542)) (= lambda!274067 lambda!273994))))

(assert (=> bs!1238676 (not (= lambda!274067 lambda!274056))))

(assert (=> d!1714030 true))

(assert (=> d!1714030 true))

(assert (=> d!1714030 true))

(assert (=> d!1714030 (= (Exists!2206 lambda!274064) (Exists!2206 lambda!274067))))

(declare-fun lt!2178671 () Unit!153618)

(declare-fun choose!40047 (Regex!15025 Regex!15025 List!61374) Unit!153618)

(assert (=> d!1714030 (= lt!2178671 (choose!40047 (regOne!30562 r!7292) (regTwo!30562 r!7292) s!2326))))

(assert (=> d!1714030 (validRegex!6761 (regOne!30562 r!7292))))

(assert (=> d!1714030 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!860 (regOne!30562 r!7292) (regTwo!30562 r!7292) s!2326) lt!2178671)))

(declare-fun m!6374914 () Bool)

(assert (=> bs!1238677 m!6374914))

(declare-fun m!6374916 () Bool)

(assert (=> bs!1238677 m!6374916))

(declare-fun m!6374918 () Bool)

(assert (=> bs!1238677 m!6374918))

(assert (=> bs!1238677 m!6374854))

(assert (=> b!5342191 d!1714030))

(declare-fun d!1714038 () Bool)

(declare-fun isEmpty!33223 (Option!15136) Bool)

(assert (=> d!1714038 (= (isDefined!11839 (findConcatSeparation!1550 (regOne!30562 r!7292) (regTwo!30562 r!7292) Nil!61250 s!2326 s!2326)) (not (isEmpty!33223 (findConcatSeparation!1550 (regOne!30562 r!7292) (regTwo!30562 r!7292) Nil!61250 s!2326 s!2326))))))

(declare-fun bs!1238678 () Bool)

(assert (= bs!1238678 d!1714038))

(assert (=> bs!1238678 m!6374438))

(declare-fun m!6374920 () Bool)

(assert (=> bs!1238678 m!6374920))

(assert (=> b!5342191 d!1714038))

(declare-fun d!1714040 () Bool)

(declare-fun lt!2178677 () Int)

(assert (=> d!1714040 (>= lt!2178677 0)))

(declare-fun e!3317428 () Int)

(assert (=> d!1714040 (= lt!2178677 e!3317428)))

(declare-fun c!929689 () Bool)

(assert (=> d!1714040 (= c!929689 ((_ is Cons!61252) lt!2178556))))

(assert (=> d!1714040 (= (zipperDepthTotal!178 lt!2178556) lt!2178677)))

(declare-fun b!5342863 () Bool)

(assert (=> b!5342863 (= e!3317428 (+ (contextDepthTotal!158 (h!67700 lt!2178556)) (zipperDepthTotal!178 (t!374593 lt!2178556))))))

(declare-fun b!5342864 () Bool)

(assert (=> b!5342864 (= e!3317428 0)))

(assert (= (and d!1714040 c!929689) b!5342863))

(assert (= (and d!1714040 (not c!929689)) b!5342864))

(declare-fun m!6374938 () Bool)

(assert (=> b!5342863 m!6374938))

(declare-fun m!6374940 () Bool)

(assert (=> b!5342863 m!6374940))

(assert (=> b!5342210 d!1714040))

(declare-fun d!1714044 () Bool)

(declare-fun lt!2178678 () Int)

(assert (=> d!1714044 (>= lt!2178678 0)))

(declare-fun e!3317429 () Int)

(assert (=> d!1714044 (= lt!2178678 e!3317429)))

(declare-fun c!929690 () Bool)

(assert (=> d!1714044 (= c!929690 ((_ is Cons!61252) zl!343))))

(assert (=> d!1714044 (= (zipperDepthTotal!178 zl!343) lt!2178678)))

(declare-fun b!5342865 () Bool)

(assert (=> b!5342865 (= e!3317429 (+ (contextDepthTotal!158 (h!67700 zl!343)) (zipperDepthTotal!178 (t!374593 zl!343))))))

(declare-fun b!5342866 () Bool)

(assert (=> b!5342866 (= e!3317429 0)))

(assert (= (and d!1714044 c!929690) b!5342865))

(assert (= (and d!1714044 (not c!929690)) b!5342866))

(assert (=> b!5342865 m!6374450))

(declare-fun m!6374942 () Bool)

(assert (=> b!5342865 m!6374942))

(assert (=> b!5342210 d!1714044))

(declare-fun d!1714046 () Bool)

(declare-fun e!3317436 () Bool)

(assert (=> d!1714046 e!3317436))

(declare-fun res!2266749 () Bool)

(assert (=> d!1714046 (=> (not res!2266749) (not e!3317436))))

(declare-fun lt!2178685 () List!61376)

(declare-fun noDuplicate!1323 (List!61376) Bool)

(assert (=> d!1714046 (= res!2266749 (noDuplicate!1323 lt!2178685))))

(declare-fun choose!40049 ((InoxSet Context!8818)) List!61376)

(assert (=> d!1714046 (= lt!2178685 (choose!40049 z!1189))))

(assert (=> d!1714046 (= (toList!8809 z!1189) lt!2178685)))

(declare-fun b!5342877 () Bool)

(declare-fun content!10927 (List!61376) (InoxSet Context!8818))

(assert (=> b!5342877 (= e!3317436 (= (content!10927 lt!2178685) z!1189))))

(assert (= (and d!1714046 res!2266749) b!5342877))

(declare-fun m!6374952 () Bool)

(assert (=> d!1714046 m!6374952))

(declare-fun m!6374954 () Bool)

(assert (=> d!1714046 m!6374954))

(declare-fun m!6374956 () Bool)

(assert (=> b!5342877 m!6374956))

(assert (=> b!5342209 d!1714046))

(declare-fun d!1714054 () Bool)

(assert (=> d!1714054 (= (isEmpty!33220 (t!374593 zl!343)) ((_ is Nil!61252) (t!374593 zl!343)))))

(assert (=> b!5342224 d!1714054))

(declare-fun d!1714056 () Bool)

(declare-fun c!929712 () Bool)

(declare-fun e!3317467 () Bool)

(assert (=> d!1714056 (= c!929712 e!3317467)))

(declare-fun res!2266769 () Bool)

(assert (=> d!1714056 (=> (not res!2266769) (not e!3317467))))

(assert (=> d!1714056 (= res!2266769 ((_ is Cons!61251) (exprs!4909 lt!2178558)))))

(declare-fun e!3317468 () (InoxSet Context!8818))

(assert (=> d!1714056 (= (derivationStepZipperUp!397 lt!2178558 (h!67698 s!2326)) e!3317468)))

(declare-fun b!5342931 () Bool)

(declare-fun call!381904 () (InoxSet Context!8818))

(assert (=> b!5342931 (= e!3317468 ((_ map or) call!381904 (derivationStepZipperUp!397 (Context!8819 (t!374592 (exprs!4909 lt!2178558))) (h!67698 s!2326))))))

(declare-fun b!5342932 () Bool)

(declare-fun e!3317469 () (InoxSet Context!8818))

(assert (=> b!5342932 (= e!3317469 ((as const (Array Context!8818 Bool)) false))))

(declare-fun b!5342933 () Bool)

(assert (=> b!5342933 (= e!3317468 e!3317469)))

(declare-fun c!929713 () Bool)

(assert (=> b!5342933 (= c!929713 ((_ is Cons!61251) (exprs!4909 lt!2178558)))))

(declare-fun b!5342934 () Bool)

(assert (=> b!5342934 (= e!3317469 call!381904)))

(declare-fun b!5342935 () Bool)

(assert (=> b!5342935 (= e!3317467 (nullable!5194 (h!67699 (exprs!4909 lt!2178558))))))

(declare-fun bm!381899 () Bool)

(assert (=> bm!381899 (= call!381904 (derivationStepZipperDown!473 (h!67699 (exprs!4909 lt!2178558)) (Context!8819 (t!374592 (exprs!4909 lt!2178558))) (h!67698 s!2326)))))

(assert (= (and d!1714056 res!2266769) b!5342935))

(assert (= (and d!1714056 c!929712) b!5342931))

(assert (= (and d!1714056 (not c!929712)) b!5342933))

(assert (= (and b!5342933 c!929713) b!5342934))

(assert (= (and b!5342933 (not c!929713)) b!5342932))

(assert (= (or b!5342931 b!5342934) bm!381899))

(declare-fun m!6375016 () Bool)

(assert (=> b!5342931 m!6375016))

(declare-fun m!6375018 () Bool)

(assert (=> b!5342935 m!6375018))

(declare-fun m!6375020 () Bool)

(assert (=> bm!381899 m!6375020))

(assert (=> b!5342203 d!1714056))

(declare-fun d!1714068 () Bool)

(declare-fun choose!40051 ((InoxSet Context!8818) Int) (InoxSet Context!8818))

(assert (=> d!1714068 (= (flatMap!752 z!1189 lambda!273992) (choose!40051 z!1189 lambda!273992))))

(declare-fun bs!1238701 () Bool)

(assert (= bs!1238701 d!1714068))

(declare-fun m!6375030 () Bool)

(assert (=> bs!1238701 m!6375030))

(assert (=> b!5342203 d!1714068))

(declare-fun d!1714074 () Bool)

(assert (=> d!1714074 (= (nullable!5194 (h!67699 (exprs!4909 (h!67700 zl!343)))) (nullableFct!1520 (h!67699 (exprs!4909 (h!67700 zl!343)))))))

(declare-fun bs!1238702 () Bool)

(assert (= bs!1238702 d!1714074))

(declare-fun m!6375034 () Bool)

(assert (=> bs!1238702 m!6375034))

(assert (=> b!5342203 d!1714074))

(declare-fun d!1714076 () Bool)

(declare-fun c!929718 () Bool)

(declare-fun e!3317476 () Bool)

(assert (=> d!1714076 (= c!929718 e!3317476)))

(declare-fun res!2266772 () Bool)

(assert (=> d!1714076 (=> (not res!2266772) (not e!3317476))))

(assert (=> d!1714076 (= res!2266772 ((_ is Cons!61251) (exprs!4909 (Context!8819 (Cons!61251 (h!67699 (exprs!4909 (h!67700 zl!343))) (t!374592 (exprs!4909 (h!67700 zl!343))))))))))

(declare-fun e!3317477 () (InoxSet Context!8818))

(assert (=> d!1714076 (= (derivationStepZipperUp!397 (Context!8819 (Cons!61251 (h!67699 (exprs!4909 (h!67700 zl!343))) (t!374592 (exprs!4909 (h!67700 zl!343))))) (h!67698 s!2326)) e!3317477)))

(declare-fun call!381905 () (InoxSet Context!8818))

(declare-fun b!5342946 () Bool)

(assert (=> b!5342946 (= e!3317477 ((_ map or) call!381905 (derivationStepZipperUp!397 (Context!8819 (t!374592 (exprs!4909 (Context!8819 (Cons!61251 (h!67699 (exprs!4909 (h!67700 zl!343))) (t!374592 (exprs!4909 (h!67700 zl!343)))))))) (h!67698 s!2326))))))

(declare-fun b!5342947 () Bool)

(declare-fun e!3317478 () (InoxSet Context!8818))

(assert (=> b!5342947 (= e!3317478 ((as const (Array Context!8818 Bool)) false))))

(declare-fun b!5342948 () Bool)

(assert (=> b!5342948 (= e!3317477 e!3317478)))

(declare-fun c!929719 () Bool)

(assert (=> b!5342948 (= c!929719 ((_ is Cons!61251) (exprs!4909 (Context!8819 (Cons!61251 (h!67699 (exprs!4909 (h!67700 zl!343))) (t!374592 (exprs!4909 (h!67700 zl!343))))))))))

(declare-fun b!5342949 () Bool)

(assert (=> b!5342949 (= e!3317478 call!381905)))

(declare-fun b!5342950 () Bool)

(assert (=> b!5342950 (= e!3317476 (nullable!5194 (h!67699 (exprs!4909 (Context!8819 (Cons!61251 (h!67699 (exprs!4909 (h!67700 zl!343))) (t!374592 (exprs!4909 (h!67700 zl!343)))))))))))

(declare-fun bm!381900 () Bool)

(assert (=> bm!381900 (= call!381905 (derivationStepZipperDown!473 (h!67699 (exprs!4909 (Context!8819 (Cons!61251 (h!67699 (exprs!4909 (h!67700 zl!343))) (t!374592 (exprs!4909 (h!67700 zl!343))))))) (Context!8819 (t!374592 (exprs!4909 (Context!8819 (Cons!61251 (h!67699 (exprs!4909 (h!67700 zl!343))) (t!374592 (exprs!4909 (h!67700 zl!343)))))))) (h!67698 s!2326)))))

(assert (= (and d!1714076 res!2266772) b!5342950))

(assert (= (and d!1714076 c!929718) b!5342946))

(assert (= (and d!1714076 (not c!929718)) b!5342948))

(assert (= (and b!5342948 c!929719) b!5342949))

(assert (= (and b!5342948 (not c!929719)) b!5342947))

(assert (= (or b!5342946 b!5342949) bm!381900))

(declare-fun m!6375036 () Bool)

(assert (=> b!5342946 m!6375036))

(declare-fun m!6375038 () Bool)

(assert (=> b!5342950 m!6375038))

(declare-fun m!6375040 () Bool)

(assert (=> bm!381900 m!6375040))

(assert (=> b!5342203 d!1714076))

(declare-fun d!1714078 () Bool)

(declare-fun c!929720 () Bool)

(declare-fun e!3317479 () Bool)

(assert (=> d!1714078 (= c!929720 e!3317479)))

(declare-fun res!2266773 () Bool)

(assert (=> d!1714078 (=> (not res!2266773) (not e!3317479))))

(assert (=> d!1714078 (= res!2266773 ((_ is Cons!61251) (exprs!4909 (h!67700 zl!343))))))

(declare-fun e!3317480 () (InoxSet Context!8818))

(assert (=> d!1714078 (= (derivationStepZipperUp!397 (h!67700 zl!343) (h!67698 s!2326)) e!3317480)))

(declare-fun b!5342951 () Bool)

(declare-fun call!381906 () (InoxSet Context!8818))

(assert (=> b!5342951 (= e!3317480 ((_ map or) call!381906 (derivationStepZipperUp!397 (Context!8819 (t!374592 (exprs!4909 (h!67700 zl!343)))) (h!67698 s!2326))))))

(declare-fun b!5342952 () Bool)

(declare-fun e!3317481 () (InoxSet Context!8818))

(assert (=> b!5342952 (= e!3317481 ((as const (Array Context!8818 Bool)) false))))

(declare-fun b!5342953 () Bool)

(assert (=> b!5342953 (= e!3317480 e!3317481)))

(declare-fun c!929721 () Bool)

(assert (=> b!5342953 (= c!929721 ((_ is Cons!61251) (exprs!4909 (h!67700 zl!343))))))

(declare-fun b!5342954 () Bool)

(assert (=> b!5342954 (= e!3317481 call!381906)))

(declare-fun b!5342955 () Bool)

(assert (=> b!5342955 (= e!3317479 (nullable!5194 (h!67699 (exprs!4909 (h!67700 zl!343)))))))

(declare-fun bm!381901 () Bool)

(assert (=> bm!381901 (= call!381906 (derivationStepZipperDown!473 (h!67699 (exprs!4909 (h!67700 zl!343))) (Context!8819 (t!374592 (exprs!4909 (h!67700 zl!343)))) (h!67698 s!2326)))))

(assert (= (and d!1714078 res!2266773) b!5342955))

(assert (= (and d!1714078 c!929720) b!5342951))

(assert (= (and d!1714078 (not c!929720)) b!5342953))

(assert (= (and b!5342953 c!929721) b!5342954))

(assert (= (and b!5342953 (not c!929721)) b!5342952))

(assert (= (or b!5342951 b!5342954) bm!381901))

(declare-fun m!6375042 () Bool)

(assert (=> b!5342951 m!6375042))

(assert (=> b!5342955 m!6374430))

(declare-fun m!6375046 () Bool)

(assert (=> bm!381901 m!6375046))

(assert (=> b!5342203 d!1714078))

(declare-fun b!5342956 () Bool)

(declare-fun e!3317482 () (InoxSet Context!8818))

(assert (=> b!5342956 (= e!3317482 ((as const (Array Context!8818 Bool)) false))))

(declare-fun bm!381902 () Bool)

(declare-fun call!381909 () (InoxSet Context!8818))

(declare-fun call!381912 () (InoxSet Context!8818))

(assert (=> bm!381902 (= call!381909 call!381912)))

(declare-fun bm!381903 () Bool)

(declare-fun call!381910 () List!61375)

(declare-fun call!381908 () List!61375)

(assert (=> bm!381903 (= call!381910 call!381908)))

(declare-fun b!5342957 () Bool)

(declare-fun e!3317484 () (InoxSet Context!8818))

(declare-fun call!381907 () (InoxSet Context!8818))

(assert (=> b!5342957 (= e!3317484 ((_ map or) call!381907 call!381909))))

(declare-fun b!5342958 () Bool)

(declare-fun e!3317483 () (InoxSet Context!8818))

(assert (=> b!5342958 (= e!3317483 (store ((as const (Array Context!8818 Bool)) false) lt!2178558 true))))

(declare-fun b!5342960 () Bool)

(declare-fun e!3317485 () (InoxSet Context!8818))

(declare-fun call!381911 () (InoxSet Context!8818))

(assert (=> b!5342960 (= e!3317485 call!381911)))

(declare-fun b!5342961 () Bool)

(declare-fun c!929725 () Bool)

(assert (=> b!5342961 (= c!929725 ((_ is Star!15025) (h!67699 (exprs!4909 (h!67700 zl!343)))))))

(assert (=> b!5342961 (= e!3317485 e!3317482)))

(declare-fun b!5342962 () Bool)

(declare-fun e!3317486 () (InoxSet Context!8818))

(assert (=> b!5342962 (= e!3317483 e!3317486)))

(declare-fun c!929724 () Bool)

(assert (=> b!5342962 (= c!929724 ((_ is Union!15025) (h!67699 (exprs!4909 (h!67700 zl!343)))))))

(declare-fun bm!381904 () Bool)

(assert (=> bm!381904 (= call!381911 call!381909)))

(declare-fun b!5342963 () Bool)

(assert (=> b!5342963 (= e!3317486 ((_ map or) call!381907 call!381912))))

(declare-fun bm!381905 () Bool)

(assert (=> bm!381905 (= call!381907 (derivationStepZipperDown!473 (ite c!929724 (regOne!30563 (h!67699 (exprs!4909 (h!67700 zl!343)))) (regOne!30562 (h!67699 (exprs!4909 (h!67700 zl!343))))) (ite c!929724 lt!2178558 (Context!8819 call!381908)) (h!67698 s!2326)))))

(declare-fun b!5342964 () Bool)

(assert (=> b!5342964 (= e!3317484 e!3317485)))

(declare-fun c!929723 () Bool)

(assert (=> b!5342964 (= c!929723 ((_ is Concat!23870) (h!67699 (exprs!4909 (h!67700 zl!343)))))))

(declare-fun b!5342965 () Bool)

(declare-fun c!929726 () Bool)

(declare-fun e!3317487 () Bool)

(assert (=> b!5342965 (= c!929726 e!3317487)))

(declare-fun res!2266774 () Bool)

(assert (=> b!5342965 (=> (not res!2266774) (not e!3317487))))

(assert (=> b!5342965 (= res!2266774 ((_ is Concat!23870) (h!67699 (exprs!4909 (h!67700 zl!343)))))))

(assert (=> b!5342965 (= e!3317486 e!3317484)))

(declare-fun b!5342966 () Bool)

(assert (=> b!5342966 (= e!3317487 (nullable!5194 (regOne!30562 (h!67699 (exprs!4909 (h!67700 zl!343))))))))

(declare-fun d!1714080 () Bool)

(declare-fun c!929722 () Bool)

(assert (=> d!1714080 (= c!929722 (and ((_ is ElementMatch!15025) (h!67699 (exprs!4909 (h!67700 zl!343)))) (= (c!929489 (h!67699 (exprs!4909 (h!67700 zl!343)))) (h!67698 s!2326))))))

(assert (=> d!1714080 (= (derivationStepZipperDown!473 (h!67699 (exprs!4909 (h!67700 zl!343))) lt!2178558 (h!67698 s!2326)) e!3317483)))

(declare-fun b!5342959 () Bool)

(assert (=> b!5342959 (= e!3317482 call!381911)))

(declare-fun bm!381906 () Bool)

(assert (=> bm!381906 (= call!381908 ($colon$colon!1418 (exprs!4909 lt!2178558) (ite (or c!929726 c!929723) (regTwo!30562 (h!67699 (exprs!4909 (h!67700 zl!343)))) (h!67699 (exprs!4909 (h!67700 zl!343))))))))

(declare-fun bm!381907 () Bool)

(assert (=> bm!381907 (= call!381912 (derivationStepZipperDown!473 (ite c!929724 (regTwo!30563 (h!67699 (exprs!4909 (h!67700 zl!343)))) (ite c!929726 (regTwo!30562 (h!67699 (exprs!4909 (h!67700 zl!343)))) (ite c!929723 (regOne!30562 (h!67699 (exprs!4909 (h!67700 zl!343)))) (reg!15354 (h!67699 (exprs!4909 (h!67700 zl!343))))))) (ite (or c!929724 c!929726) lt!2178558 (Context!8819 call!381910)) (h!67698 s!2326)))))

(assert (= (and d!1714080 c!929722) b!5342958))

(assert (= (and d!1714080 (not c!929722)) b!5342962))

(assert (= (and b!5342962 c!929724) b!5342963))

(assert (= (and b!5342962 (not c!929724)) b!5342965))

(assert (= (and b!5342965 res!2266774) b!5342966))

(assert (= (and b!5342965 c!929726) b!5342957))

(assert (= (and b!5342965 (not c!929726)) b!5342964))

(assert (= (and b!5342964 c!929723) b!5342960))

(assert (= (and b!5342964 (not c!929723)) b!5342961))

(assert (= (and b!5342961 c!929725) b!5342959))

(assert (= (and b!5342961 (not c!929725)) b!5342956))

(assert (= (or b!5342960 b!5342959) bm!381903))

(assert (= (or b!5342960 b!5342959) bm!381904))

(assert (= (or b!5342957 bm!381903) bm!381906))

(assert (= (or b!5342957 bm!381904) bm!381902))

(assert (= (or b!5342963 bm!381902) bm!381907))

(assert (= (or b!5342963 b!5342957) bm!381905))

(declare-fun m!6375070 () Bool)

(assert (=> bm!381905 m!6375070))

(declare-fun m!6375072 () Bool)

(assert (=> bm!381906 m!6375072))

(declare-fun m!6375074 () Bool)

(assert (=> b!5342966 m!6375074))

(declare-fun m!6375076 () Bool)

(assert (=> bm!381907 m!6375076))

(declare-fun m!6375078 () Bool)

(assert (=> b!5342958 m!6375078))

(assert (=> b!5342203 d!1714080))

(declare-fun d!1714088 () Bool)

(declare-fun dynLambda!24212 (Int Context!8818) (InoxSet Context!8818))

(assert (=> d!1714088 (= (flatMap!752 z!1189 lambda!273992) (dynLambda!24212 lambda!273992 (h!67700 zl!343)))))

(declare-fun lt!2178695 () Unit!153618)

(declare-fun choose!40052 ((InoxSet Context!8818) Context!8818 Int) Unit!153618)

(assert (=> d!1714088 (= lt!2178695 (choose!40052 z!1189 (h!67700 zl!343) lambda!273992))))

(assert (=> d!1714088 (= z!1189 (store ((as const (Array Context!8818 Bool)) false) (h!67700 zl!343) true))))

(assert (=> d!1714088 (= (lemmaFlatMapOnSingletonSet!284 z!1189 (h!67700 zl!343) lambda!273992) lt!2178695)))

(declare-fun b_lambda!205213 () Bool)

(assert (=> (not b_lambda!205213) (not d!1714088)))

(declare-fun bs!1238724 () Bool)

(assert (= bs!1238724 d!1714088))

(assert (=> bs!1238724 m!6374422))

(declare-fun m!6375080 () Bool)

(assert (=> bs!1238724 m!6375080))

(declare-fun m!6375082 () Bool)

(assert (=> bs!1238724 m!6375082))

(declare-fun m!6375084 () Bool)

(assert (=> bs!1238724 m!6375084))

(assert (=> b!5342203 d!1714088))

(declare-fun b!5342986 () Bool)

(assert (=> b!5342986 true))

(declare-fun bs!1238747 () Bool)

(declare-fun b!5342988 () Bool)

(assert (= bs!1238747 (and b!5342988 b!5342986)))

(declare-fun lt!2178707 () Int)

(declare-fun lt!2178710 () Int)

(declare-fun lambda!274085 () Int)

(declare-fun lambda!274084 () Int)

(assert (=> bs!1238747 (= (= lt!2178710 lt!2178707) (= lambda!274085 lambda!274084))))

(assert (=> b!5342988 true))

(declare-fun d!1714090 () Bool)

(declare-fun e!3317501 () Bool)

(assert (=> d!1714090 e!3317501))

(declare-fun res!2266780 () Bool)

(assert (=> d!1714090 (=> (not res!2266780) (not e!3317501))))

(assert (=> d!1714090 (= res!2266780 (>= lt!2178710 0))))

(declare-fun e!3317500 () Int)

(assert (=> d!1714090 (= lt!2178710 e!3317500)))

(declare-fun c!929740 () Bool)

(assert (=> d!1714090 (= c!929740 ((_ is Cons!61252) lt!2178556))))

(assert (=> d!1714090 (= (zipperDepth!134 lt!2178556) lt!2178710)))

(assert (=> b!5342986 (= e!3317500 lt!2178707)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!74 (Context!8818) Int)

(assert (=> b!5342986 (= lt!2178707 (maxBigInt!0 (contextDepth!74 (h!67700 lt!2178556)) (zipperDepth!134 (t!374593 lt!2178556))))))

(declare-fun lt!2178709 () Unit!153618)

(declare-fun lambda!274083 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!68 (List!61376 Int Int Int) Unit!153618)

(assert (=> b!5342986 (= lt!2178709 (lemmaForallContextDepthBiggerThanTransitive!68 (t!374593 lt!2178556) lt!2178707 (zipperDepth!134 (t!374593 lt!2178556)) lambda!274083))))

(declare-fun forall!14445 (List!61376 Int) Bool)

(assert (=> b!5342986 (forall!14445 (t!374593 lt!2178556) lambda!274084)))

(declare-fun lt!2178708 () Unit!153618)

(assert (=> b!5342986 (= lt!2178708 lt!2178709)))

(declare-fun b!5342987 () Bool)

(assert (=> b!5342987 (= e!3317500 0)))

(assert (=> b!5342988 (= e!3317501 (forall!14445 lt!2178556 lambda!274085))))

(assert (= (and d!1714090 c!929740) b!5342986))

(assert (= (and d!1714090 (not c!929740)) b!5342987))

(assert (= (and d!1714090 res!2266780) b!5342988))

(declare-fun m!6375114 () Bool)

(assert (=> b!5342986 m!6375114))

(declare-fun m!6375116 () Bool)

(assert (=> b!5342986 m!6375116))

(declare-fun m!6375118 () Bool)

(assert (=> b!5342986 m!6375118))

(assert (=> b!5342986 m!6375114))

(assert (=> b!5342986 m!6375116))

(assert (=> b!5342986 m!6375116))

(declare-fun m!6375120 () Bool)

(assert (=> b!5342986 m!6375120))

(declare-fun m!6375122 () Bool)

(assert (=> b!5342986 m!6375122))

(declare-fun m!6375124 () Bool)

(assert (=> b!5342988 m!6375124))

(assert (=> b!5342202 d!1714090))

(declare-fun bs!1238748 () Bool)

(declare-fun b!5342991 () Bool)

(assert (= bs!1238748 (and b!5342991 b!5342986)))

(declare-fun lambda!274086 () Int)

(assert (=> bs!1238748 (= lambda!274086 lambda!274083)))

(declare-fun lambda!274087 () Int)

(declare-fun lt!2178711 () Int)

(assert (=> bs!1238748 (= (= lt!2178711 lt!2178707) (= lambda!274087 lambda!274084))))

(declare-fun bs!1238749 () Bool)

(assert (= bs!1238749 (and b!5342991 b!5342988)))

(assert (=> bs!1238749 (= (= lt!2178711 lt!2178710) (= lambda!274087 lambda!274085))))

(assert (=> b!5342991 true))

(declare-fun bs!1238750 () Bool)

(declare-fun b!5342993 () Bool)

(assert (= bs!1238750 (and b!5342993 b!5342986)))

(declare-fun lambda!274088 () Int)

(declare-fun lt!2178714 () Int)

(assert (=> bs!1238750 (= (= lt!2178714 lt!2178707) (= lambda!274088 lambda!274084))))

(declare-fun bs!1238751 () Bool)

(assert (= bs!1238751 (and b!5342993 b!5342988)))

(assert (=> bs!1238751 (= (= lt!2178714 lt!2178710) (= lambda!274088 lambda!274085))))

(declare-fun bs!1238752 () Bool)

(assert (= bs!1238752 (and b!5342993 b!5342991)))

(assert (=> bs!1238752 (= (= lt!2178714 lt!2178711) (= lambda!274088 lambda!274087))))

(assert (=> b!5342993 true))

(declare-fun d!1714102 () Bool)

(declare-fun e!3317503 () Bool)

(assert (=> d!1714102 e!3317503))

(declare-fun res!2266781 () Bool)

(assert (=> d!1714102 (=> (not res!2266781) (not e!3317503))))

(assert (=> d!1714102 (= res!2266781 (>= lt!2178714 0))))

(declare-fun e!3317502 () Int)

(assert (=> d!1714102 (= lt!2178714 e!3317502)))

(declare-fun c!929741 () Bool)

(assert (=> d!1714102 (= c!929741 ((_ is Cons!61252) zl!343))))

(assert (=> d!1714102 (= (zipperDepth!134 zl!343) lt!2178714)))

(assert (=> b!5342991 (= e!3317502 lt!2178711)))

(assert (=> b!5342991 (= lt!2178711 (maxBigInt!0 (contextDepth!74 (h!67700 zl!343)) (zipperDepth!134 (t!374593 zl!343))))))

(declare-fun lt!2178713 () Unit!153618)

(assert (=> b!5342991 (= lt!2178713 (lemmaForallContextDepthBiggerThanTransitive!68 (t!374593 zl!343) lt!2178711 (zipperDepth!134 (t!374593 zl!343)) lambda!274086))))

(assert (=> b!5342991 (forall!14445 (t!374593 zl!343) lambda!274087)))

(declare-fun lt!2178712 () Unit!153618)

(assert (=> b!5342991 (= lt!2178712 lt!2178713)))

(declare-fun b!5342992 () Bool)

(assert (=> b!5342992 (= e!3317502 0)))

(assert (=> b!5342993 (= e!3317503 (forall!14445 zl!343 lambda!274088))))

(assert (= (and d!1714102 c!929741) b!5342991))

(assert (= (and d!1714102 (not c!929741)) b!5342992))

(assert (= (and d!1714102 res!2266781) b!5342993))

(declare-fun m!6375126 () Bool)

(assert (=> b!5342991 m!6375126))

(declare-fun m!6375128 () Bool)

(assert (=> b!5342991 m!6375128))

(declare-fun m!6375130 () Bool)

(assert (=> b!5342991 m!6375130))

(assert (=> b!5342991 m!6375126))

(assert (=> b!5342991 m!6375128))

(assert (=> b!5342991 m!6375128))

(declare-fun m!6375132 () Bool)

(assert (=> b!5342991 m!6375132))

(declare-fun m!6375134 () Bool)

(assert (=> b!5342991 m!6375134))

(declare-fun m!6375136 () Bool)

(assert (=> b!5342993 m!6375136))

(assert (=> b!5342202 d!1714102))

(declare-fun d!1714104 () Bool)

(assert (=> d!1714104 (= (isEmpty!33219 (t!374592 (exprs!4909 (h!67700 zl!343)))) ((_ is Nil!61251) (t!374592 (exprs!4909 (h!67700 zl!343)))))))

(assert (=> b!5342222 d!1714104))

(declare-fun d!1714106 () Bool)

(declare-fun c!929745 () Bool)

(assert (=> d!1714106 (= c!929745 (isEmpty!33222 (t!374591 s!2326)))))

(declare-fun e!3317507 () Bool)

(assert (=> d!1714106 (= (matchZipper!1269 lt!2178547 (t!374591 s!2326)) e!3317507)))

(declare-fun b!5343000 () Bool)

(declare-fun nullableZipper!1368 ((InoxSet Context!8818)) Bool)

(assert (=> b!5343000 (= e!3317507 (nullableZipper!1368 lt!2178547))))

(declare-fun b!5343001 () Bool)

(assert (=> b!5343001 (= e!3317507 (matchZipper!1269 (derivationStepZipper!1266 lt!2178547 (head!11454 (t!374591 s!2326))) (tail!10551 (t!374591 s!2326))))))

(assert (= (and d!1714106 c!929745) b!5343000))

(assert (= (and d!1714106 (not c!929745)) b!5343001))

(declare-fun m!6375146 () Bool)

(assert (=> d!1714106 m!6375146))

(declare-fun m!6375148 () Bool)

(assert (=> b!5343000 m!6375148))

(declare-fun m!6375150 () Bool)

(assert (=> b!5343001 m!6375150))

(assert (=> b!5343001 m!6375150))

(declare-fun m!6375152 () Bool)

(assert (=> b!5343001 m!6375152))

(declare-fun m!6375154 () Bool)

(assert (=> b!5343001 m!6375154))

(assert (=> b!5343001 m!6375152))

(assert (=> b!5343001 m!6375154))

(declare-fun m!6375156 () Bool)

(assert (=> b!5343001 m!6375156))

(assert (=> b!5342206 d!1714106))

(declare-fun d!1714112 () Bool)

(assert (=> d!1714112 (= (flatMap!752 lt!2178561 lambda!273992) (choose!40051 lt!2178561 lambda!273992))))

(declare-fun bs!1238764 () Bool)

(assert (= bs!1238764 d!1714112))

(declare-fun m!6375158 () Bool)

(assert (=> bs!1238764 m!6375158))

(assert (=> b!5342226 d!1714112))

(declare-fun d!1714114 () Bool)

(declare-fun c!929746 () Bool)

(declare-fun e!3317508 () Bool)

(assert (=> d!1714114 (= c!929746 e!3317508)))

(declare-fun res!2266782 () Bool)

(assert (=> d!1714114 (=> (not res!2266782) (not e!3317508))))

(assert (=> d!1714114 (= res!2266782 ((_ is Cons!61251) (exprs!4909 lt!2178543)))))

(declare-fun e!3317509 () (InoxSet Context!8818))

(assert (=> d!1714114 (= (derivationStepZipperUp!397 lt!2178543 (h!67698 s!2326)) e!3317509)))

(declare-fun call!381915 () (InoxSet Context!8818))

(declare-fun b!5343002 () Bool)

(assert (=> b!5343002 (= e!3317509 ((_ map or) call!381915 (derivationStepZipperUp!397 (Context!8819 (t!374592 (exprs!4909 lt!2178543))) (h!67698 s!2326))))))

(declare-fun b!5343003 () Bool)

(declare-fun e!3317510 () (InoxSet Context!8818))

(assert (=> b!5343003 (= e!3317510 ((as const (Array Context!8818 Bool)) false))))

(declare-fun b!5343004 () Bool)

(assert (=> b!5343004 (= e!3317509 e!3317510)))

(declare-fun c!929747 () Bool)

(assert (=> b!5343004 (= c!929747 ((_ is Cons!61251) (exprs!4909 lt!2178543)))))

(declare-fun b!5343005 () Bool)

(assert (=> b!5343005 (= e!3317510 call!381915)))

(declare-fun b!5343006 () Bool)

(assert (=> b!5343006 (= e!3317508 (nullable!5194 (h!67699 (exprs!4909 lt!2178543))))))

(declare-fun bm!381910 () Bool)

(assert (=> bm!381910 (= call!381915 (derivationStepZipperDown!473 (h!67699 (exprs!4909 lt!2178543)) (Context!8819 (t!374592 (exprs!4909 lt!2178543))) (h!67698 s!2326)))))

(assert (= (and d!1714114 res!2266782) b!5343006))

(assert (= (and d!1714114 c!929746) b!5343002))

(assert (= (and d!1714114 (not c!929746)) b!5343004))

(assert (= (and b!5343004 c!929747) b!5343005))

(assert (= (and b!5343004 (not c!929747)) b!5343003))

(assert (= (or b!5343002 b!5343005) bm!381910))

(declare-fun m!6375160 () Bool)

(assert (=> b!5343002 m!6375160))

(declare-fun m!6375162 () Bool)

(assert (=> b!5343006 m!6375162))

(declare-fun m!6375164 () Bool)

(assert (=> bm!381910 m!6375164))

(assert (=> b!5342226 d!1714114))

(declare-fun d!1714116 () Bool)

(assert (=> d!1714116 (= (flatMap!752 lt!2178561 lambda!273992) (dynLambda!24212 lambda!273992 lt!2178543))))

(declare-fun lt!2178719 () Unit!153618)

(assert (=> d!1714116 (= lt!2178719 (choose!40052 lt!2178561 lt!2178543 lambda!273992))))

(assert (=> d!1714116 (= lt!2178561 (store ((as const (Array Context!8818 Bool)) false) lt!2178543 true))))

(assert (=> d!1714116 (= (lemmaFlatMapOnSingletonSet!284 lt!2178561 lt!2178543 lambda!273992) lt!2178719)))

(declare-fun b_lambda!205215 () Bool)

(assert (=> (not b_lambda!205215) (not d!1714116)))

(declare-fun bs!1238765 () Bool)

(assert (= bs!1238765 d!1714116))

(assert (=> bs!1238765 m!6374458))

(declare-fun m!6375166 () Bool)

(assert (=> bs!1238765 m!6375166))

(declare-fun m!6375168 () Bool)

(assert (=> bs!1238765 m!6375168))

(assert (=> bs!1238765 m!6374454))

(assert (=> b!5342226 d!1714116))

(declare-fun bs!1238767 () Bool)

(declare-fun d!1714118 () Bool)

(assert (= bs!1238767 (and d!1714118 b!5342203)))

(declare-fun lambda!274093 () Int)

(assert (=> bs!1238767 (= lambda!274093 lambda!273992)))

(assert (=> d!1714118 true))

(assert (=> d!1714118 (= (derivationStepZipper!1266 lt!2178561 (h!67698 s!2326)) (flatMap!752 lt!2178561 lambda!274093))))

(declare-fun bs!1238768 () Bool)

(assert (= bs!1238768 d!1714118))

(declare-fun m!6375176 () Bool)

(assert (=> bs!1238768 m!6375176))

(assert (=> b!5342226 d!1714118))

(declare-fun e!3317520 () Bool)

(declare-fun d!1714122 () Bool)

(assert (=> d!1714122 (= (matchZipper!1269 ((_ map or) lt!2178546 lt!2178564) (t!374591 s!2326)) e!3317520)))

(declare-fun res!2266788 () Bool)

(assert (=> d!1714122 (=> res!2266788 e!3317520)))

(assert (=> d!1714122 (= res!2266788 (matchZipper!1269 lt!2178546 (t!374591 s!2326)))))

(declare-fun lt!2178722 () Unit!153618)

(declare-fun choose!40053 ((InoxSet Context!8818) (InoxSet Context!8818) List!61374) Unit!153618)

(assert (=> d!1714122 (= lt!2178722 (choose!40053 lt!2178546 lt!2178564 (t!374591 s!2326)))))

(assert (=> d!1714122 (= (lemmaZipperConcatMatchesSameAsBothZippers!262 lt!2178546 lt!2178564 (t!374591 s!2326)) lt!2178722)))

(declare-fun b!5343022 () Bool)

(assert (=> b!5343022 (= e!3317520 (matchZipper!1269 lt!2178564 (t!374591 s!2326)))))

(assert (= (and d!1714122 (not res!2266788)) b!5343022))

(assert (=> d!1714122 m!6374434))

(assert (=> d!1714122 m!6374406))

(declare-fun m!6375178 () Bool)

(assert (=> d!1714122 m!6375178))

(assert (=> b!5343022 m!6374530))

(assert (=> b!5342225 d!1714122))

(declare-fun d!1714124 () Bool)

(declare-fun c!929754 () Bool)

(assert (=> d!1714124 (= c!929754 (isEmpty!33222 (t!374591 s!2326)))))

(declare-fun e!3317521 () Bool)

(assert (=> d!1714124 (= (matchZipper!1269 lt!2178546 (t!374591 s!2326)) e!3317521)))

(declare-fun b!5343023 () Bool)

(assert (=> b!5343023 (= e!3317521 (nullableZipper!1368 lt!2178546))))

(declare-fun b!5343024 () Bool)

(assert (=> b!5343024 (= e!3317521 (matchZipper!1269 (derivationStepZipper!1266 lt!2178546 (head!11454 (t!374591 s!2326))) (tail!10551 (t!374591 s!2326))))))

(assert (= (and d!1714124 c!929754) b!5343023))

(assert (= (and d!1714124 (not c!929754)) b!5343024))

(assert (=> d!1714124 m!6375146))

(declare-fun m!6375180 () Bool)

(assert (=> b!5343023 m!6375180))

(assert (=> b!5343024 m!6375150))

(assert (=> b!5343024 m!6375150))

(declare-fun m!6375182 () Bool)

(assert (=> b!5343024 m!6375182))

(assert (=> b!5343024 m!6375154))

(assert (=> b!5343024 m!6375182))

(assert (=> b!5343024 m!6375154))

(declare-fun m!6375184 () Bool)

(assert (=> b!5343024 m!6375184))

(assert (=> b!5342225 d!1714124))

(declare-fun d!1714126 () Bool)

(declare-fun c!929755 () Bool)

(assert (=> d!1714126 (= c!929755 (isEmpty!33222 (t!374591 s!2326)))))

(declare-fun e!3317522 () Bool)

(assert (=> d!1714126 (= (matchZipper!1269 ((_ map or) lt!2178546 lt!2178564) (t!374591 s!2326)) e!3317522)))

(declare-fun b!5343025 () Bool)

(assert (=> b!5343025 (= e!3317522 (nullableZipper!1368 ((_ map or) lt!2178546 lt!2178564)))))

(declare-fun b!5343026 () Bool)

(assert (=> b!5343026 (= e!3317522 (matchZipper!1269 (derivationStepZipper!1266 ((_ map or) lt!2178546 lt!2178564) (head!11454 (t!374591 s!2326))) (tail!10551 (t!374591 s!2326))))))

(assert (= (and d!1714126 c!929755) b!5343025))

(assert (= (and d!1714126 (not c!929755)) b!5343026))

(assert (=> d!1714126 m!6375146))

(declare-fun m!6375186 () Bool)

(assert (=> b!5343025 m!6375186))

(assert (=> b!5343026 m!6375150))

(assert (=> b!5343026 m!6375150))

(declare-fun m!6375188 () Bool)

(assert (=> b!5343026 m!6375188))

(assert (=> b!5343026 m!6375154))

(assert (=> b!5343026 m!6375188))

(assert (=> b!5343026 m!6375154))

(declare-fun m!6375190 () Bool)

(assert (=> b!5343026 m!6375190))

(assert (=> b!5342225 d!1714126))

(declare-fun b!5343027 () Bool)

(declare-fun e!3317524 () Bool)

(assert (=> b!5343027 (= e!3317524 (= (head!11454 s!2326) (c!929489 (Concat!23870 (regOne!30562 r!7292) (regTwo!30562 r!7292)))))))

(declare-fun b!5343028 () Bool)

(declare-fun e!3317529 () Bool)

(assert (=> b!5343028 (= e!3317529 (matchR!7210 (derivativeStep!4189 (Concat!23870 (regOne!30562 r!7292) (regTwo!30562 r!7292)) (head!11454 s!2326)) (tail!10551 s!2326)))))

(declare-fun b!5343029 () Bool)

(declare-fun res!2266795 () Bool)

(declare-fun e!3317527 () Bool)

(assert (=> b!5343029 (=> res!2266795 e!3317527)))

(assert (=> b!5343029 (= res!2266795 e!3317524)))

(declare-fun res!2266790 () Bool)

(assert (=> b!5343029 (=> (not res!2266790) (not e!3317524))))

(declare-fun lt!2178723 () Bool)

(assert (=> b!5343029 (= res!2266790 lt!2178723)))

(declare-fun b!5343030 () Bool)

(declare-fun e!3317523 () Bool)

(declare-fun e!3317528 () Bool)

(assert (=> b!5343030 (= e!3317523 e!3317528)))

(declare-fun res!2266791 () Bool)

(assert (=> b!5343030 (=> res!2266791 e!3317528)))

(declare-fun call!381918 () Bool)

(assert (=> b!5343030 (= res!2266791 call!381918)))

(declare-fun b!5343031 () Bool)

(declare-fun res!2266796 () Bool)

(assert (=> b!5343031 (=> (not res!2266796) (not e!3317524))))

(assert (=> b!5343031 (= res!2266796 (not call!381918))))

(declare-fun b!5343032 () Bool)

(declare-fun e!3317525 () Bool)

(assert (=> b!5343032 (= e!3317525 (not lt!2178723))))

(declare-fun b!5343033 () Bool)

(assert (=> b!5343033 (= e!3317529 (nullable!5194 (Concat!23870 (regOne!30562 r!7292) (regTwo!30562 r!7292))))))

(declare-fun d!1714128 () Bool)

(declare-fun e!3317526 () Bool)

(assert (=> d!1714128 e!3317526))

(declare-fun c!929758 () Bool)

(assert (=> d!1714128 (= c!929758 ((_ is EmptyExpr!15025) (Concat!23870 (regOne!30562 r!7292) (regTwo!30562 r!7292))))))

(assert (=> d!1714128 (= lt!2178723 e!3317529)))

(declare-fun c!929757 () Bool)

(assert (=> d!1714128 (= c!929757 (isEmpty!33222 s!2326))))

(assert (=> d!1714128 (validRegex!6761 (Concat!23870 (regOne!30562 r!7292) (regTwo!30562 r!7292)))))

(assert (=> d!1714128 (= (matchR!7210 (Concat!23870 (regOne!30562 r!7292) (regTwo!30562 r!7292)) s!2326) lt!2178723)))

(declare-fun bm!381913 () Bool)

(assert (=> bm!381913 (= call!381918 (isEmpty!33222 s!2326))))

(declare-fun b!5343034 () Bool)

(declare-fun res!2266789 () Bool)

(assert (=> b!5343034 (=> res!2266789 e!3317528)))

(assert (=> b!5343034 (= res!2266789 (not (isEmpty!33222 (tail!10551 s!2326))))))

(declare-fun b!5343035 () Bool)

(declare-fun res!2266794 () Bool)

(assert (=> b!5343035 (=> res!2266794 e!3317527)))

(assert (=> b!5343035 (= res!2266794 (not ((_ is ElementMatch!15025) (Concat!23870 (regOne!30562 r!7292) (regTwo!30562 r!7292)))))))

(assert (=> b!5343035 (= e!3317525 e!3317527)))

(declare-fun b!5343036 () Bool)

(declare-fun res!2266792 () Bool)

(assert (=> b!5343036 (=> (not res!2266792) (not e!3317524))))

(assert (=> b!5343036 (= res!2266792 (isEmpty!33222 (tail!10551 s!2326)))))

(declare-fun b!5343037 () Bool)

(assert (=> b!5343037 (= e!3317526 e!3317525)))

(declare-fun c!929756 () Bool)

(assert (=> b!5343037 (= c!929756 ((_ is EmptyLang!15025) (Concat!23870 (regOne!30562 r!7292) (regTwo!30562 r!7292))))))

(declare-fun b!5343038 () Bool)

(assert (=> b!5343038 (= e!3317528 (not (= (head!11454 s!2326) (c!929489 (Concat!23870 (regOne!30562 r!7292) (regTwo!30562 r!7292))))))))

(declare-fun b!5343039 () Bool)

(assert (=> b!5343039 (= e!3317526 (= lt!2178723 call!381918))))

(declare-fun b!5343040 () Bool)

(assert (=> b!5343040 (= e!3317527 e!3317523)))

(declare-fun res!2266793 () Bool)

(assert (=> b!5343040 (=> (not res!2266793) (not e!3317523))))

(assert (=> b!5343040 (= res!2266793 (not lt!2178723))))

(assert (= (and d!1714128 c!929757) b!5343033))

(assert (= (and d!1714128 (not c!929757)) b!5343028))

(assert (= (and d!1714128 c!929758) b!5343039))

(assert (= (and d!1714128 (not c!929758)) b!5343037))

(assert (= (and b!5343037 c!929756) b!5343032))

(assert (= (and b!5343037 (not c!929756)) b!5343035))

(assert (= (and b!5343035 (not res!2266794)) b!5343029))

(assert (= (and b!5343029 res!2266790) b!5343031))

(assert (= (and b!5343031 res!2266796) b!5343036))

(assert (= (and b!5343036 res!2266792) b!5343027))

(assert (= (and b!5343029 (not res!2266795)) b!5343040))

(assert (= (and b!5343040 res!2266793) b!5343030))

(assert (= (and b!5343030 (not res!2266791)) b!5343034))

(assert (= (and b!5343034 (not res!2266789)) b!5343038))

(assert (= (or b!5343039 b!5343030 b!5343031) bm!381913))

(assert (=> b!5343028 m!6374662))

(assert (=> b!5343028 m!6374662))

(declare-fun m!6375198 () Bool)

(assert (=> b!5343028 m!6375198))

(assert (=> b!5343028 m!6374666))

(assert (=> b!5343028 m!6375198))

(assert (=> b!5343028 m!6374666))

(declare-fun m!6375200 () Bool)

(assert (=> b!5343028 m!6375200))

(assert (=> bm!381913 m!6374602))

(assert (=> d!1714128 m!6374602))

(declare-fun m!6375202 () Bool)

(assert (=> d!1714128 m!6375202))

(assert (=> b!5343027 m!6374662))

(declare-fun m!6375204 () Bool)

(assert (=> b!5343033 m!6375204))

(assert (=> b!5343036 m!6374666))

(assert (=> b!5343036 m!6374666))

(assert (=> b!5343036 m!6374672))

(assert (=> b!5343034 m!6374666))

(assert (=> b!5343034 m!6374666))

(assert (=> b!5343034 m!6374672))

(assert (=> b!5343038 m!6374662))

(assert (=> b!5342205 d!1714128))

(declare-fun d!1714132 () Bool)

(declare-fun lt!2178730 () Int)

(assert (=> d!1714132 (>= lt!2178730 0)))

(declare-fun e!3317537 () Int)

(assert (=> d!1714132 (= lt!2178730 e!3317537)))

(declare-fun c!929764 () Bool)

(assert (=> d!1714132 (= c!929764 ((_ is Cons!61251) (exprs!4909 lt!2178543)))))

(assert (=> d!1714132 (= (contextDepthTotal!158 lt!2178543) lt!2178730)))

(declare-fun b!5343054 () Bool)

(declare-fun regexDepthTotal!73 (Regex!15025) Int)

(assert (=> b!5343054 (= e!3317537 (+ (regexDepthTotal!73 (h!67699 (exprs!4909 lt!2178543))) (contextDepthTotal!158 (Context!8819 (t!374592 (exprs!4909 lt!2178543))))))))

(declare-fun b!5343055 () Bool)

(assert (=> b!5343055 (= e!3317537 1)))

(assert (= (and d!1714132 c!929764) b!5343054))

(assert (= (and d!1714132 (not c!929764)) b!5343055))

(declare-fun m!6375210 () Bool)

(assert (=> b!5343054 m!6375210))

(declare-fun m!6375212 () Bool)

(assert (=> b!5343054 m!6375212))

(assert (=> b!5342196 d!1714132))

(declare-fun d!1714136 () Bool)

(declare-fun lt!2178731 () Int)

(assert (=> d!1714136 (>= lt!2178731 0)))

(declare-fun e!3317538 () Int)

(assert (=> d!1714136 (= lt!2178731 e!3317538)))

(declare-fun c!929765 () Bool)

(assert (=> d!1714136 (= c!929765 ((_ is Cons!61251) (exprs!4909 (h!67700 zl!343))))))

(assert (=> d!1714136 (= (contextDepthTotal!158 (h!67700 zl!343)) lt!2178731)))

(declare-fun b!5343056 () Bool)

(assert (=> b!5343056 (= e!3317538 (+ (regexDepthTotal!73 (h!67699 (exprs!4909 (h!67700 zl!343)))) (contextDepthTotal!158 (Context!8819 (t!374592 (exprs!4909 (h!67700 zl!343)))))))))

(declare-fun b!5343057 () Bool)

(assert (=> b!5343057 (= e!3317538 1)))

(assert (= (and d!1714136 c!929765) b!5343056))

(assert (= (and d!1714136 (not c!929765)) b!5343057))

(declare-fun m!6375214 () Bool)

(assert (=> b!5343056 m!6375214))

(declare-fun m!6375218 () Bool)

(assert (=> b!5343056 m!6375218))

(assert (=> b!5342196 d!1714136))

(declare-fun d!1714138 () Bool)

(assert (=> d!1714138 (= (isDefined!11839 (findConcatSeparation!1550 (regOne!30562 (regOne!30562 r!7292)) lt!2178542 Nil!61250 s!2326 s!2326)) (not (isEmpty!33223 (findConcatSeparation!1550 (regOne!30562 (regOne!30562 r!7292)) lt!2178542 Nil!61250 s!2326 s!2326))))))

(declare-fun bs!1238806 () Bool)

(assert (= bs!1238806 d!1714138))

(assert (=> bs!1238806 m!6374484))

(declare-fun m!6375224 () Bool)

(assert (=> bs!1238806 m!6375224))

(assert (=> b!5342221 d!1714138))

(declare-fun bs!1238807 () Bool)

(declare-fun d!1714140 () Bool)

(assert (= bs!1238807 (and d!1714140 d!1713912)))

(declare-fun lambda!274097 () Int)

(assert (=> bs!1238807 (= lambda!274097 lambda!274000)))

(declare-fun bs!1238808 () Bool)

(assert (= bs!1238808 (and d!1714140 d!1714004)))

(assert (=> bs!1238808 (= lambda!274097 lambda!274034)))

(declare-fun bs!1238809 () Bool)

(assert (= bs!1238809 (and d!1714140 d!1713914)))

(assert (=> bs!1238809 (= lambda!274097 lambda!274003)))

(declare-fun bs!1238810 () Bool)

(assert (= bs!1238810 (and d!1714140 d!1713990)))

(assert (=> bs!1238810 (= lambda!274097 lambda!274027)))

(declare-fun bs!1238811 () Bool)

(assert (= bs!1238811 (and d!1714140 d!1713998)))

(assert (=> bs!1238811 (= lambda!274097 lambda!274031)))

(declare-fun bs!1238812 () Bool)

(assert (= bs!1238812 (and d!1714140 b!5342227)))

(assert (=> bs!1238812 (= lambda!274097 lambda!273997)))

(declare-fun b!5343058 () Bool)

(declare-fun e!3317544 () Regex!15025)

(declare-fun e!3317543 () Regex!15025)

(assert (=> b!5343058 (= e!3317544 e!3317543)))

(declare-fun c!929768 () Bool)

(assert (=> b!5343058 (= c!929768 ((_ is Cons!61251) lt!2178548))))

(declare-fun b!5343059 () Bool)

(declare-fun e!3317541 () Bool)

(declare-fun lt!2178732 () Regex!15025)

(assert (=> b!5343059 (= e!3317541 (isConcat!425 lt!2178732))))

(declare-fun b!5343060 () Bool)

(assert (=> b!5343060 (= e!3317543 (Concat!23870 (h!67699 lt!2178548) (generalisedConcat!694 (t!374592 lt!2178548))))))

(declare-fun e!3317540 () Bool)

(assert (=> d!1714140 e!3317540))

(declare-fun res!2266803 () Bool)

(assert (=> d!1714140 (=> (not res!2266803) (not e!3317540))))

(assert (=> d!1714140 (= res!2266803 (validRegex!6761 lt!2178732))))

(assert (=> d!1714140 (= lt!2178732 e!3317544)))

(declare-fun c!929767 () Bool)

(declare-fun e!3317542 () Bool)

(assert (=> d!1714140 (= c!929767 e!3317542)))

(declare-fun res!2266802 () Bool)

(assert (=> d!1714140 (=> (not res!2266802) (not e!3317542))))

(assert (=> d!1714140 (= res!2266802 ((_ is Cons!61251) lt!2178548))))

(assert (=> d!1714140 (forall!14443 lt!2178548 lambda!274097)))

(assert (=> d!1714140 (= (generalisedConcat!694 lt!2178548) lt!2178732)))

(declare-fun b!5343061 () Bool)

(declare-fun e!3317539 () Bool)

(assert (=> b!5343061 (= e!3317539 e!3317541)))

(declare-fun c!929769 () Bool)

(assert (=> b!5343061 (= c!929769 (isEmpty!33219 (tail!10549 lt!2178548)))))

(declare-fun b!5343062 () Bool)

(assert (=> b!5343062 (= e!3317543 EmptyExpr!15025)))

(declare-fun b!5343063 () Bool)

(assert (=> b!5343063 (= e!3317541 (= lt!2178732 (head!11452 lt!2178548)))))

(declare-fun b!5343064 () Bool)

(assert (=> b!5343064 (= e!3317544 (h!67699 lt!2178548))))

(declare-fun b!5343065 () Bool)

(assert (=> b!5343065 (= e!3317540 e!3317539)))

(declare-fun c!929766 () Bool)

(assert (=> b!5343065 (= c!929766 (isEmpty!33219 lt!2178548))))

(declare-fun b!5343066 () Bool)

(assert (=> b!5343066 (= e!3317542 (isEmpty!33219 (t!374592 lt!2178548)))))

(declare-fun b!5343067 () Bool)

(assert (=> b!5343067 (= e!3317539 (isEmptyExpr!902 lt!2178732))))

(assert (= (and d!1714140 res!2266802) b!5343066))

(assert (= (and d!1714140 c!929767) b!5343064))

(assert (= (and d!1714140 (not c!929767)) b!5343058))

(assert (= (and b!5343058 c!929768) b!5343060))

(assert (= (and b!5343058 (not c!929768)) b!5343062))

(assert (= (and d!1714140 res!2266803) b!5343065))

(assert (= (and b!5343065 c!929766) b!5343067))

(assert (= (and b!5343065 (not c!929766)) b!5343061))

(assert (= (and b!5343061 c!929769) b!5343063))

(assert (= (and b!5343061 (not c!929769)) b!5343059))

(declare-fun m!6375242 () Bool)

(assert (=> b!5343059 m!6375242))

(declare-fun m!6375244 () Bool)

(assert (=> b!5343067 m!6375244))

(declare-fun m!6375246 () Bool)

(assert (=> b!5343065 m!6375246))

(declare-fun m!6375248 () Bool)

(assert (=> d!1714140 m!6375248))

(declare-fun m!6375250 () Bool)

(assert (=> d!1714140 m!6375250))

(declare-fun m!6375252 () Bool)

(assert (=> b!5343066 m!6375252))

(declare-fun m!6375254 () Bool)

(assert (=> b!5343061 m!6375254))

(assert (=> b!5343061 m!6375254))

(declare-fun m!6375256 () Bool)

(assert (=> b!5343061 m!6375256))

(declare-fun m!6375258 () Bool)

(assert (=> b!5343063 m!6375258))

(declare-fun m!6375260 () Bool)

(assert (=> b!5343060 m!6375260))

(assert (=> b!5342221 d!1714140))

(declare-fun bs!1238814 () Bool)

(declare-fun d!1714146 () Bool)

(assert (= bs!1238814 (and d!1714146 d!1713912)))

(declare-fun lambda!274098 () Int)

(assert (=> bs!1238814 (= lambda!274098 lambda!274000)))

(declare-fun bs!1238815 () Bool)

(assert (= bs!1238815 (and d!1714146 d!1714140)))

(assert (=> bs!1238815 (= lambda!274098 lambda!274097)))

(declare-fun bs!1238816 () Bool)

(assert (= bs!1238816 (and d!1714146 d!1714004)))

(assert (=> bs!1238816 (= lambda!274098 lambda!274034)))

(declare-fun bs!1238817 () Bool)

(assert (= bs!1238817 (and d!1714146 d!1713914)))

(assert (=> bs!1238817 (= lambda!274098 lambda!274003)))

(declare-fun bs!1238818 () Bool)

(assert (= bs!1238818 (and d!1714146 d!1713990)))

(assert (=> bs!1238818 (= lambda!274098 lambda!274027)))

(declare-fun bs!1238819 () Bool)

(assert (= bs!1238819 (and d!1714146 d!1713998)))

(assert (=> bs!1238819 (= lambda!274098 lambda!274031)))

(declare-fun bs!1238820 () Bool)

(assert (= bs!1238820 (and d!1714146 b!5342227)))

(assert (=> bs!1238820 (= lambda!274098 lambda!273997)))

(declare-fun b!5343082 () Bool)

(declare-fun e!3317557 () Regex!15025)

(declare-fun e!3317556 () Regex!15025)

(assert (=> b!5343082 (= e!3317557 e!3317556)))

(declare-fun c!929775 () Bool)

(assert (=> b!5343082 (= c!929775 ((_ is Cons!61251) (t!374592 (exprs!4909 (h!67700 zl!343)))))))

(declare-fun b!5343083 () Bool)

(declare-fun e!3317554 () Bool)

(declare-fun lt!2178735 () Regex!15025)

(assert (=> b!5343083 (= e!3317554 (isConcat!425 lt!2178735))))

(declare-fun b!5343084 () Bool)

(assert (=> b!5343084 (= e!3317556 (Concat!23870 (h!67699 (t!374592 (exprs!4909 (h!67700 zl!343)))) (generalisedConcat!694 (t!374592 (t!374592 (exprs!4909 (h!67700 zl!343)))))))))

(declare-fun e!3317553 () Bool)

(assert (=> d!1714146 e!3317553))

(declare-fun res!2266813 () Bool)

(assert (=> d!1714146 (=> (not res!2266813) (not e!3317553))))

(assert (=> d!1714146 (= res!2266813 (validRegex!6761 lt!2178735))))

(assert (=> d!1714146 (= lt!2178735 e!3317557)))

(declare-fun c!929774 () Bool)

(declare-fun e!3317555 () Bool)

(assert (=> d!1714146 (= c!929774 e!3317555)))

(declare-fun res!2266812 () Bool)

(assert (=> d!1714146 (=> (not res!2266812) (not e!3317555))))

(assert (=> d!1714146 (= res!2266812 ((_ is Cons!61251) (t!374592 (exprs!4909 (h!67700 zl!343)))))))

(assert (=> d!1714146 (forall!14443 (t!374592 (exprs!4909 (h!67700 zl!343))) lambda!274098)))

(assert (=> d!1714146 (= (generalisedConcat!694 (t!374592 (exprs!4909 (h!67700 zl!343)))) lt!2178735)))

(declare-fun b!5343085 () Bool)

(declare-fun e!3317552 () Bool)

(assert (=> b!5343085 (= e!3317552 e!3317554)))

(declare-fun c!929776 () Bool)

(assert (=> b!5343085 (= c!929776 (isEmpty!33219 (tail!10549 (t!374592 (exprs!4909 (h!67700 zl!343))))))))

(declare-fun b!5343086 () Bool)

(assert (=> b!5343086 (= e!3317556 EmptyExpr!15025)))

(declare-fun b!5343087 () Bool)

(assert (=> b!5343087 (= e!3317554 (= lt!2178735 (head!11452 (t!374592 (exprs!4909 (h!67700 zl!343))))))))

(declare-fun b!5343088 () Bool)

(assert (=> b!5343088 (= e!3317557 (h!67699 (t!374592 (exprs!4909 (h!67700 zl!343)))))))

(declare-fun b!5343089 () Bool)

(assert (=> b!5343089 (= e!3317553 e!3317552)))

(declare-fun c!929773 () Bool)

(assert (=> b!5343089 (= c!929773 (isEmpty!33219 (t!374592 (exprs!4909 (h!67700 zl!343)))))))

(declare-fun b!5343090 () Bool)

(assert (=> b!5343090 (= e!3317555 (isEmpty!33219 (t!374592 (t!374592 (exprs!4909 (h!67700 zl!343))))))))

(declare-fun b!5343091 () Bool)

(assert (=> b!5343091 (= e!3317552 (isEmptyExpr!902 lt!2178735))))

(assert (= (and d!1714146 res!2266812) b!5343090))

(assert (= (and d!1714146 c!929774) b!5343088))

(assert (= (and d!1714146 (not c!929774)) b!5343082))

(assert (= (and b!5343082 c!929775) b!5343084))

(assert (= (and b!5343082 (not c!929775)) b!5343086))

(assert (= (and d!1714146 res!2266813) b!5343089))

(assert (= (and b!5343089 c!929773) b!5343091))

(assert (= (and b!5343089 (not c!929773)) b!5343085))

(assert (= (and b!5343085 c!929776) b!5343087))

(assert (= (and b!5343085 (not c!929776)) b!5343083))

(declare-fun m!6375272 () Bool)

(assert (=> b!5343083 m!6375272))

(declare-fun m!6375274 () Bool)

(assert (=> b!5343091 m!6375274))

(assert (=> b!5343089 m!6374394))

(declare-fun m!6375276 () Bool)

(assert (=> d!1714146 m!6375276))

(declare-fun m!6375278 () Bool)

(assert (=> d!1714146 m!6375278))

(declare-fun m!6375280 () Bool)

(assert (=> b!5343090 m!6375280))

(declare-fun m!6375282 () Bool)

(assert (=> b!5343085 m!6375282))

(assert (=> b!5343085 m!6375282))

(declare-fun m!6375284 () Bool)

(assert (=> b!5343085 m!6375284))

(declare-fun m!6375286 () Bool)

(assert (=> b!5343087 m!6375286))

(declare-fun m!6375288 () Bool)

(assert (=> b!5343084 m!6375288))

(assert (=> b!5342221 d!1714146))

(declare-fun d!1714150 () Bool)

(declare-fun c!929780 () Bool)

(assert (=> d!1714150 (= c!929780 (isEmpty!33222 s!2326))))

(declare-fun e!3317567 () Bool)

(assert (=> d!1714150 (= (matchZipper!1269 z!1189 s!2326) e!3317567)))

(declare-fun b!5343110 () Bool)

(assert (=> b!5343110 (= e!3317567 (nullableZipper!1368 z!1189))))

(declare-fun b!5343111 () Bool)

(assert (=> b!5343111 (= e!3317567 (matchZipper!1269 (derivationStepZipper!1266 z!1189 (head!11454 s!2326)) (tail!10551 s!2326)))))

(assert (= (and d!1714150 c!929780) b!5343110))

(assert (= (and d!1714150 (not c!929780)) b!5343111))

(assert (=> d!1714150 m!6374602))

(declare-fun m!6375290 () Bool)

(assert (=> b!5343110 m!6375290))

(assert (=> b!5343111 m!6374662))

(assert (=> b!5343111 m!6374662))

(declare-fun m!6375292 () Bool)

(assert (=> b!5343111 m!6375292))

(assert (=> b!5343111 m!6374666))

(assert (=> b!5343111 m!6375292))

(assert (=> b!5343111 m!6374666))

(declare-fun m!6375294 () Bool)

(assert (=> b!5343111 m!6375294))

(assert (=> b!5342221 d!1714150))

(declare-fun bs!1238821 () Bool)

(declare-fun b!5343119 () Bool)

(assert (= bs!1238821 (and b!5343119 b!5342221)))

(declare-fun lambda!274099 () Int)

(assert (=> bs!1238821 (not (= lambda!274099 lambda!273993))))

(declare-fun bs!1238822 () Bool)

(assert (= bs!1238822 (and b!5343119 b!5342191)))

(assert (=> bs!1238822 (not (= lambda!274099 lambda!273991))))

(declare-fun bs!1238823 () Bool)

(assert (= bs!1238823 (and b!5343119 b!5342350)))

(assert (=> bs!1238823 (= (and (= (reg!15354 lt!2178542) (reg!15354 r!7292)) (= lt!2178542 r!7292)) (= lambda!274099 lambda!274011))))

(assert (=> bs!1238821 (not (= lambda!274099 lambda!273996))))

(assert (=> bs!1238821 (not (= lambda!274099 lambda!273995))))

(assert (=> bs!1238822 (not (= lambda!274099 lambda!273990))))

(declare-fun bs!1238824 () Bool)

(assert (= bs!1238824 (and b!5343119 d!1714030)))

(assert (=> bs!1238824 (not (= lambda!274099 lambda!274064))))

(assert (=> bs!1238824 (not (= lambda!274099 lambda!274067))))

(declare-fun bs!1238825 () Bool)

(assert (= bs!1238825 (and b!5343119 b!5342348)))

(assert (=> bs!1238825 (not (= lambda!274099 lambda!274012))))

(assert (=> bs!1238821 (not (= lambda!274099 lambda!273994))))

(declare-fun bs!1238826 () Bool)

(assert (= bs!1238826 (and b!5343119 d!1714024)))

(assert (=> bs!1238826 (not (= lambda!274099 lambda!274056))))

(assert (=> b!5343119 true))

(assert (=> b!5343119 true))

(declare-fun bs!1238827 () Bool)

(declare-fun b!5343117 () Bool)

(assert (= bs!1238827 (and b!5343117 b!5342221)))

(declare-fun lambda!274100 () Int)

(assert (=> bs!1238827 (not (= lambda!274100 lambda!273993))))

(declare-fun bs!1238828 () Bool)

(assert (= bs!1238828 (and b!5343117 b!5342191)))

(assert (=> bs!1238828 (= (and (= (regOne!30562 lt!2178542) (regOne!30562 r!7292)) (= (regTwo!30562 lt!2178542) (regTwo!30562 r!7292))) (= lambda!274100 lambda!273991))))

(declare-fun bs!1238829 () Bool)

(assert (= bs!1238829 (and b!5343117 b!5342350)))

(assert (=> bs!1238829 (not (= lambda!274100 lambda!274011))))

(assert (=> bs!1238827 (not (= lambda!274100 lambda!273995))))

(assert (=> bs!1238828 (not (= lambda!274100 lambda!273990))))

(declare-fun bs!1238830 () Bool)

(assert (= bs!1238830 (and b!5343117 d!1714030)))

(assert (=> bs!1238830 (not (= lambda!274100 lambda!274064))))

(assert (=> bs!1238830 (= (and (= (regOne!30562 lt!2178542) (regOne!30562 r!7292)) (= (regTwo!30562 lt!2178542) (regTwo!30562 r!7292))) (= lambda!274100 lambda!274067))))

(declare-fun bs!1238831 () Bool)

(assert (= bs!1238831 (and b!5343117 b!5342348)))

(assert (=> bs!1238831 (= (and (= (regOne!30562 lt!2178542) (regOne!30562 r!7292)) (= (regTwo!30562 lt!2178542) (regTwo!30562 r!7292))) (= lambda!274100 lambda!274012))))

(assert (=> bs!1238827 (= (and (= (regOne!30562 lt!2178542) (regOne!30562 (regOne!30562 r!7292))) (= (regTwo!30562 lt!2178542) lt!2178542)) (= lambda!274100 lambda!273994))))

(declare-fun bs!1238832 () Bool)

(assert (= bs!1238832 (and b!5343117 d!1714024)))

(assert (=> bs!1238832 (not (= lambda!274100 lambda!274056))))

(declare-fun bs!1238833 () Bool)

(assert (= bs!1238833 (and b!5343117 b!5343119)))

(assert (=> bs!1238833 (not (= lambda!274100 lambda!274099))))

(assert (=> bs!1238827 (= (and (= (regOne!30562 lt!2178542) (regTwo!30562 (regOne!30562 r!7292))) (= (regTwo!30562 lt!2178542) lt!2178574)) (= lambda!274100 lambda!273996))))

(assert (=> b!5343117 true))

(assert (=> b!5343117 true))

(declare-fun b!5343114 () Bool)

(declare-fun e!3317570 () Bool)

(assert (=> b!5343114 (= e!3317570 (matchRSpec!2128 (regTwo!30563 lt!2178542) s!2326))))

(declare-fun bm!381916 () Bool)

(declare-fun call!381922 () Bool)

(assert (=> bm!381916 (= call!381922 (isEmpty!33222 s!2326))))

(declare-fun b!5343116 () Bool)

(declare-fun e!3317569 () Bool)

(assert (=> b!5343116 (= e!3317569 e!3317570)))

(declare-fun res!2266824 () Bool)

(assert (=> b!5343116 (= res!2266824 (matchRSpec!2128 (regOne!30563 lt!2178542) s!2326))))

(assert (=> b!5343116 (=> res!2266824 e!3317570)))

(declare-fun e!3317572 () Bool)

(declare-fun call!381921 () Bool)

(assert (=> b!5343117 (= e!3317572 call!381921)))

(declare-fun bm!381917 () Bool)

(declare-fun c!929783 () Bool)

(assert (=> bm!381917 (= call!381921 (Exists!2206 (ite c!929783 lambda!274099 lambda!274100)))))

(declare-fun d!1714152 () Bool)

(declare-fun c!929781 () Bool)

(assert (=> d!1714152 (= c!929781 ((_ is EmptyExpr!15025) lt!2178542))))

(declare-fun e!3317575 () Bool)

(assert (=> d!1714152 (= (matchRSpec!2128 lt!2178542 s!2326) e!3317575)))

(declare-fun b!5343118 () Bool)

(declare-fun e!3317573 () Bool)

(assert (=> b!5343118 (= e!3317573 (= s!2326 (Cons!61250 (c!929489 lt!2178542) Nil!61250)))))

(declare-fun e!3317574 () Bool)

(assert (=> b!5343119 (= e!3317574 call!381921)))

(declare-fun b!5343120 () Bool)

(declare-fun res!2266823 () Bool)

(assert (=> b!5343120 (=> res!2266823 e!3317574)))

(assert (=> b!5343120 (= res!2266823 call!381922)))

(assert (=> b!5343120 (= e!3317572 e!3317574)))

(declare-fun b!5343121 () Bool)

(declare-fun e!3317571 () Bool)

(assert (=> b!5343121 (= e!3317575 e!3317571)))

(declare-fun res!2266822 () Bool)

(assert (=> b!5343121 (= res!2266822 (not ((_ is EmptyLang!15025) lt!2178542)))))

(assert (=> b!5343121 (=> (not res!2266822) (not e!3317571))))

(declare-fun b!5343122 () Bool)

(assert (=> b!5343122 (= e!3317575 call!381922)))

(declare-fun b!5343123 () Bool)

(assert (=> b!5343123 (= e!3317569 e!3317572)))

(assert (=> b!5343123 (= c!929783 ((_ is Star!15025) lt!2178542))))

(declare-fun b!5343124 () Bool)

(declare-fun c!929784 () Bool)

(assert (=> b!5343124 (= c!929784 ((_ is Union!15025) lt!2178542))))

(assert (=> b!5343124 (= e!3317573 e!3317569)))

(declare-fun b!5343125 () Bool)

(declare-fun c!929782 () Bool)

(assert (=> b!5343125 (= c!929782 ((_ is ElementMatch!15025) lt!2178542))))

(assert (=> b!5343125 (= e!3317571 e!3317573)))

(assert (= (and d!1714152 c!929781) b!5343122))

(assert (= (and d!1714152 (not c!929781)) b!5343121))

(assert (= (and b!5343121 res!2266822) b!5343125))

(assert (= (and b!5343125 c!929782) b!5343118))

(assert (= (and b!5343125 (not c!929782)) b!5343124))

(assert (= (and b!5343124 c!929784) b!5343116))

(assert (= (and b!5343124 (not c!929784)) b!5343123))

(assert (= (and b!5343116 (not res!2266824)) b!5343114))

(assert (= (and b!5343123 c!929783) b!5343120))

(assert (= (and b!5343123 (not c!929783)) b!5343117))

(assert (= (and b!5343120 (not res!2266823)) b!5343119))

(assert (= (or b!5343119 b!5343117) bm!381917))

(assert (= (or b!5343122 b!5343120) bm!381916))

(declare-fun m!6375300 () Bool)

(assert (=> b!5343114 m!6375300))

(assert (=> bm!381916 m!6374602))

(declare-fun m!6375302 () Bool)

(assert (=> b!5343116 m!6375302))

(declare-fun m!6375304 () Bool)

(assert (=> bm!381917 m!6375304))

(assert (=> b!5342221 d!1714152))

(declare-fun bs!1238837 () Bool)

(declare-fun b!5343177 () Bool)

(assert (= bs!1238837 (and b!5343177 b!5342221)))

(declare-fun lambda!274101 () Int)

(assert (=> bs!1238837 (not (= lambda!274101 lambda!273993))))

(declare-fun bs!1238838 () Bool)

(assert (= bs!1238838 (and b!5343177 b!5342191)))

(assert (=> bs!1238838 (not (= lambda!274101 lambda!273991))))

(declare-fun bs!1238839 () Bool)

(assert (= bs!1238839 (and b!5343177 b!5343117)))

(assert (=> bs!1238839 (not (= lambda!274101 lambda!274100))))

(declare-fun bs!1238840 () Bool)

(assert (= bs!1238840 (and b!5343177 b!5342350)))

(assert (=> bs!1238840 (= (and (= (reg!15354 lt!2178554) (reg!15354 r!7292)) (= lt!2178554 r!7292)) (= lambda!274101 lambda!274011))))

(assert (=> bs!1238837 (not (= lambda!274101 lambda!273995))))

(assert (=> bs!1238838 (not (= lambda!274101 lambda!273990))))

(declare-fun bs!1238841 () Bool)

(assert (= bs!1238841 (and b!5343177 d!1714030)))

(assert (=> bs!1238841 (not (= lambda!274101 lambda!274064))))

(assert (=> bs!1238841 (not (= lambda!274101 lambda!274067))))

(declare-fun bs!1238842 () Bool)

(assert (= bs!1238842 (and b!5343177 b!5342348)))

(assert (=> bs!1238842 (not (= lambda!274101 lambda!274012))))

(assert (=> bs!1238837 (not (= lambda!274101 lambda!273994))))

(declare-fun bs!1238843 () Bool)

(assert (= bs!1238843 (and b!5343177 d!1714024)))

(assert (=> bs!1238843 (not (= lambda!274101 lambda!274056))))

(declare-fun bs!1238844 () Bool)

(assert (= bs!1238844 (and b!5343177 b!5343119)))

(assert (=> bs!1238844 (= (and (= (reg!15354 lt!2178554) (reg!15354 lt!2178542)) (= lt!2178554 lt!2178542)) (= lambda!274101 lambda!274099))))

(assert (=> bs!1238837 (not (= lambda!274101 lambda!273996))))

(assert (=> b!5343177 true))

(assert (=> b!5343177 true))

(declare-fun bs!1238845 () Bool)

(declare-fun b!5343175 () Bool)

(assert (= bs!1238845 (and b!5343175 b!5342221)))

(declare-fun lambda!274102 () Int)

(assert (=> bs!1238845 (not (= lambda!274102 lambda!273993))))

(declare-fun bs!1238846 () Bool)

(assert (= bs!1238846 (and b!5343175 b!5342191)))

(assert (=> bs!1238846 (= (and (= (regOne!30562 lt!2178554) (regOne!30562 r!7292)) (= (regTwo!30562 lt!2178554) (regTwo!30562 r!7292))) (= lambda!274102 lambda!273991))))

(declare-fun bs!1238847 () Bool)

(assert (= bs!1238847 (and b!5343175 b!5343117)))

(assert (=> bs!1238847 (= (and (= (regOne!30562 lt!2178554) (regOne!30562 lt!2178542)) (= (regTwo!30562 lt!2178554) (regTwo!30562 lt!2178542))) (= lambda!274102 lambda!274100))))

(declare-fun bs!1238848 () Bool)

(assert (= bs!1238848 (and b!5343175 b!5342350)))

(assert (=> bs!1238848 (not (= lambda!274102 lambda!274011))))

(assert (=> bs!1238845 (not (= lambda!274102 lambda!273995))))

(assert (=> bs!1238846 (not (= lambda!274102 lambda!273990))))

(declare-fun bs!1238849 () Bool)

(assert (= bs!1238849 (and b!5343175 d!1714030)))

(assert (=> bs!1238849 (= (and (= (regOne!30562 lt!2178554) (regOne!30562 r!7292)) (= (regTwo!30562 lt!2178554) (regTwo!30562 r!7292))) (= lambda!274102 lambda!274067))))

(declare-fun bs!1238850 () Bool)

(assert (= bs!1238850 (and b!5343175 b!5342348)))

(assert (=> bs!1238850 (= (and (= (regOne!30562 lt!2178554) (regOne!30562 r!7292)) (= (regTwo!30562 lt!2178554) (regTwo!30562 r!7292))) (= lambda!274102 lambda!274012))))

(assert (=> bs!1238845 (= (and (= (regOne!30562 lt!2178554) (regOne!30562 (regOne!30562 r!7292))) (= (regTwo!30562 lt!2178554) lt!2178542)) (= lambda!274102 lambda!273994))))

(declare-fun bs!1238851 () Bool)

(assert (= bs!1238851 (and b!5343175 d!1714024)))

(assert (=> bs!1238851 (not (= lambda!274102 lambda!274056))))

(declare-fun bs!1238852 () Bool)

(assert (= bs!1238852 (and b!5343175 b!5343119)))

(assert (=> bs!1238852 (not (= lambda!274102 lambda!274099))))

(assert (=> bs!1238845 (= (and (= (regOne!30562 lt!2178554) (regTwo!30562 (regOne!30562 r!7292))) (= (regTwo!30562 lt!2178554) lt!2178574)) (= lambda!274102 lambda!273996))))

(declare-fun bs!1238853 () Bool)

(assert (= bs!1238853 (and b!5343175 b!5343177)))

(assert (=> bs!1238853 (not (= lambda!274102 lambda!274101))))

(assert (=> bs!1238849 (not (= lambda!274102 lambda!274064))))

(assert (=> b!5343175 true))

(assert (=> b!5343175 true))

(declare-fun b!5343173 () Bool)

(declare-fun e!3317597 () Bool)

(assert (=> b!5343173 (= e!3317597 (matchRSpec!2128 (regTwo!30563 lt!2178554) s!2326))))

(declare-fun bm!381918 () Bool)

(declare-fun call!381924 () Bool)

(assert (=> bm!381918 (= call!381924 (isEmpty!33222 s!2326))))

(declare-fun b!5343174 () Bool)

(declare-fun e!3317596 () Bool)

(assert (=> b!5343174 (= e!3317596 e!3317597)))

(declare-fun res!2266827 () Bool)

(assert (=> b!5343174 (= res!2266827 (matchRSpec!2128 (regOne!30563 lt!2178554) s!2326))))

(assert (=> b!5343174 (=> res!2266827 e!3317597)))

(declare-fun e!3317599 () Bool)

(declare-fun call!381923 () Bool)

(assert (=> b!5343175 (= e!3317599 call!381923)))

(declare-fun c!929787 () Bool)

(declare-fun bm!381919 () Bool)

(assert (=> bm!381919 (= call!381923 (Exists!2206 (ite c!929787 lambda!274101 lambda!274102)))))

(declare-fun d!1714156 () Bool)

(declare-fun c!929785 () Bool)

(assert (=> d!1714156 (= c!929785 ((_ is EmptyExpr!15025) lt!2178554))))

(declare-fun e!3317602 () Bool)

(assert (=> d!1714156 (= (matchRSpec!2128 lt!2178554 s!2326) e!3317602)))

(declare-fun b!5343176 () Bool)

(declare-fun e!3317600 () Bool)

(assert (=> b!5343176 (= e!3317600 (= s!2326 (Cons!61250 (c!929489 lt!2178554) Nil!61250)))))

(declare-fun e!3317601 () Bool)

(assert (=> b!5343177 (= e!3317601 call!381923)))

(declare-fun b!5343178 () Bool)

(declare-fun res!2266826 () Bool)

(assert (=> b!5343178 (=> res!2266826 e!3317601)))

(assert (=> b!5343178 (= res!2266826 call!381924)))

(assert (=> b!5343178 (= e!3317599 e!3317601)))

(declare-fun b!5343179 () Bool)

(declare-fun e!3317598 () Bool)

(assert (=> b!5343179 (= e!3317602 e!3317598)))

(declare-fun res!2266825 () Bool)

(assert (=> b!5343179 (= res!2266825 (not ((_ is EmptyLang!15025) lt!2178554)))))

(assert (=> b!5343179 (=> (not res!2266825) (not e!3317598))))

(declare-fun b!5343180 () Bool)

(assert (=> b!5343180 (= e!3317602 call!381924)))

(declare-fun b!5343181 () Bool)

(assert (=> b!5343181 (= e!3317596 e!3317599)))

(assert (=> b!5343181 (= c!929787 ((_ is Star!15025) lt!2178554))))

(declare-fun b!5343182 () Bool)

(declare-fun c!929788 () Bool)

(assert (=> b!5343182 (= c!929788 ((_ is Union!15025) lt!2178554))))

(assert (=> b!5343182 (= e!3317600 e!3317596)))

(declare-fun b!5343183 () Bool)

(declare-fun c!929786 () Bool)

(assert (=> b!5343183 (= c!929786 ((_ is ElementMatch!15025) lt!2178554))))

(assert (=> b!5343183 (= e!3317598 e!3317600)))

(assert (= (and d!1714156 c!929785) b!5343180))

(assert (= (and d!1714156 (not c!929785)) b!5343179))

(assert (= (and b!5343179 res!2266825) b!5343183))

(assert (= (and b!5343183 c!929786) b!5343176))

(assert (= (and b!5343183 (not c!929786)) b!5343182))

(assert (= (and b!5343182 c!929788) b!5343174))

(assert (= (and b!5343182 (not c!929788)) b!5343181))

(assert (= (and b!5343174 (not res!2266827)) b!5343173))

(assert (= (and b!5343181 c!929787) b!5343178))

(assert (= (and b!5343181 (not c!929787)) b!5343175))

(assert (= (and b!5343178 (not res!2266826)) b!5343177))

(assert (= (or b!5343177 b!5343175) bm!381919))

(assert (= (or b!5343180 b!5343178) bm!381918))

(declare-fun m!6375308 () Bool)

(assert (=> b!5343173 m!6375308))

(assert (=> bm!381918 m!6374602))

(declare-fun m!6375310 () Bool)

(assert (=> b!5343174 m!6375310))

(declare-fun m!6375312 () Bool)

(assert (=> bm!381919 m!6375312))

(assert (=> b!5342221 d!1714156))

(declare-fun b!5343184 () Bool)

(declare-fun e!3317604 () Bool)

(assert (=> b!5343184 (= e!3317604 (= (head!11454 s!2326) (c!929489 lt!2178542)))))

(declare-fun b!5343185 () Bool)

(declare-fun e!3317609 () Bool)

(assert (=> b!5343185 (= e!3317609 (matchR!7210 (derivativeStep!4189 lt!2178542 (head!11454 s!2326)) (tail!10551 s!2326)))))

(declare-fun b!5343186 () Bool)

(declare-fun res!2266834 () Bool)

(declare-fun e!3317607 () Bool)

(assert (=> b!5343186 (=> res!2266834 e!3317607)))

(assert (=> b!5343186 (= res!2266834 e!3317604)))

(declare-fun res!2266829 () Bool)

(assert (=> b!5343186 (=> (not res!2266829) (not e!3317604))))

(declare-fun lt!2178737 () Bool)

(assert (=> b!5343186 (= res!2266829 lt!2178737)))

(declare-fun b!5343187 () Bool)

(declare-fun e!3317603 () Bool)

(declare-fun e!3317608 () Bool)

(assert (=> b!5343187 (= e!3317603 e!3317608)))

(declare-fun res!2266830 () Bool)

(assert (=> b!5343187 (=> res!2266830 e!3317608)))

(declare-fun call!381925 () Bool)

(assert (=> b!5343187 (= res!2266830 call!381925)))

(declare-fun b!5343188 () Bool)

(declare-fun res!2266835 () Bool)

(assert (=> b!5343188 (=> (not res!2266835) (not e!3317604))))

(assert (=> b!5343188 (= res!2266835 (not call!381925))))

(declare-fun b!5343189 () Bool)

(declare-fun e!3317605 () Bool)

(assert (=> b!5343189 (= e!3317605 (not lt!2178737))))

(declare-fun b!5343190 () Bool)

(assert (=> b!5343190 (= e!3317609 (nullable!5194 lt!2178542))))

(declare-fun d!1714162 () Bool)

(declare-fun e!3317606 () Bool)

(assert (=> d!1714162 e!3317606))

(declare-fun c!929791 () Bool)

(assert (=> d!1714162 (= c!929791 ((_ is EmptyExpr!15025) lt!2178542))))

(assert (=> d!1714162 (= lt!2178737 e!3317609)))

(declare-fun c!929790 () Bool)

(assert (=> d!1714162 (= c!929790 (isEmpty!33222 s!2326))))

(assert (=> d!1714162 (validRegex!6761 lt!2178542)))

(assert (=> d!1714162 (= (matchR!7210 lt!2178542 s!2326) lt!2178737)))

(declare-fun bm!381920 () Bool)

(assert (=> bm!381920 (= call!381925 (isEmpty!33222 s!2326))))

(declare-fun b!5343191 () Bool)

(declare-fun res!2266828 () Bool)

(assert (=> b!5343191 (=> res!2266828 e!3317608)))

(assert (=> b!5343191 (= res!2266828 (not (isEmpty!33222 (tail!10551 s!2326))))))

(declare-fun b!5343192 () Bool)

(declare-fun res!2266833 () Bool)

(assert (=> b!5343192 (=> res!2266833 e!3317607)))

(assert (=> b!5343192 (= res!2266833 (not ((_ is ElementMatch!15025) lt!2178542)))))

(assert (=> b!5343192 (= e!3317605 e!3317607)))

(declare-fun b!5343193 () Bool)

(declare-fun res!2266831 () Bool)

(assert (=> b!5343193 (=> (not res!2266831) (not e!3317604))))

(assert (=> b!5343193 (= res!2266831 (isEmpty!33222 (tail!10551 s!2326)))))

(declare-fun b!5343194 () Bool)

(assert (=> b!5343194 (= e!3317606 e!3317605)))

(declare-fun c!929789 () Bool)

(assert (=> b!5343194 (= c!929789 ((_ is EmptyLang!15025) lt!2178542))))

(declare-fun b!5343195 () Bool)

(assert (=> b!5343195 (= e!3317608 (not (= (head!11454 s!2326) (c!929489 lt!2178542))))))

(declare-fun b!5343196 () Bool)

(assert (=> b!5343196 (= e!3317606 (= lt!2178737 call!381925))))

(declare-fun b!5343197 () Bool)

(assert (=> b!5343197 (= e!3317607 e!3317603)))

(declare-fun res!2266832 () Bool)

(assert (=> b!5343197 (=> (not res!2266832) (not e!3317603))))

(assert (=> b!5343197 (= res!2266832 (not lt!2178737))))

(assert (= (and d!1714162 c!929790) b!5343190))

(assert (= (and d!1714162 (not c!929790)) b!5343185))

(assert (= (and d!1714162 c!929791) b!5343196))

(assert (= (and d!1714162 (not c!929791)) b!5343194))

(assert (= (and b!5343194 c!929789) b!5343189))

(assert (= (and b!5343194 (not c!929789)) b!5343192))

(assert (= (and b!5343192 (not res!2266833)) b!5343186))

(assert (= (and b!5343186 res!2266829) b!5343188))

(assert (= (and b!5343188 res!2266835) b!5343193))

(assert (= (and b!5343193 res!2266831) b!5343184))

(assert (= (and b!5343186 (not res!2266834)) b!5343197))

(assert (= (and b!5343197 res!2266832) b!5343187))

(assert (= (and b!5343187 (not res!2266830)) b!5343191))

(assert (= (and b!5343191 (not res!2266828)) b!5343195))

(assert (= (or b!5343196 b!5343187 b!5343188) bm!381920))

(assert (=> b!5343185 m!6374662))

(assert (=> b!5343185 m!6374662))

(declare-fun m!6375314 () Bool)

(assert (=> b!5343185 m!6375314))

(assert (=> b!5343185 m!6374666))

(assert (=> b!5343185 m!6375314))

(assert (=> b!5343185 m!6374666))

(declare-fun m!6375316 () Bool)

(assert (=> b!5343185 m!6375316))

(assert (=> bm!381920 m!6374602))

(assert (=> d!1714162 m!6374602))

(declare-fun m!6375318 () Bool)

(assert (=> d!1714162 m!6375318))

(assert (=> b!5343184 m!6374662))

(declare-fun m!6375320 () Bool)

(assert (=> b!5343190 m!6375320))

(assert (=> b!5343193 m!6374666))

(assert (=> b!5343193 m!6374666))

(assert (=> b!5343193 m!6374672))

(assert (=> b!5343191 m!6374666))

(assert (=> b!5343191 m!6374666))

(assert (=> b!5343191 m!6374672))

(assert (=> b!5343195 m!6374662))

(assert (=> b!5342221 d!1714162))

(declare-fun d!1714164 () Bool)

(assert (=> d!1714164 (= (isDefined!11839 (findConcatSeparation!1550 (regTwo!30562 (regOne!30562 r!7292)) lt!2178574 Nil!61250 s!2326 s!2326)) (not (isEmpty!33223 (findConcatSeparation!1550 (regTwo!30562 (regOne!30562 r!7292)) lt!2178574 Nil!61250 s!2326 s!2326))))))

(declare-fun bs!1238854 () Bool)

(assert (= bs!1238854 d!1714164))

(assert (=> bs!1238854 m!6374494))

(declare-fun m!6375322 () Bool)

(assert (=> bs!1238854 m!6375322))

(assert (=> b!5342221 d!1714164))

(declare-fun d!1714166 () Bool)

(assert (=> d!1714166 (= (Exists!2206 lambda!273993) (choose!40044 lambda!273993))))

(declare-fun bs!1238855 () Bool)

(assert (= bs!1238855 d!1714166))

(declare-fun m!6375324 () Bool)

(assert (=> bs!1238855 m!6375324))

(assert (=> b!5342221 d!1714166))

(declare-fun d!1714168 () Bool)

(declare-fun c!929792 () Bool)

(assert (=> d!1714168 (= c!929792 (isEmpty!33222 s!2326))))

(declare-fun e!3317610 () Bool)

(assert (=> d!1714168 (= (matchZipper!1269 lt!2178561 s!2326) e!3317610)))

(declare-fun b!5343198 () Bool)

(assert (=> b!5343198 (= e!3317610 (nullableZipper!1368 lt!2178561))))

(declare-fun b!5343199 () Bool)

(assert (=> b!5343199 (= e!3317610 (matchZipper!1269 (derivationStepZipper!1266 lt!2178561 (head!11454 s!2326)) (tail!10551 s!2326)))))

(assert (= (and d!1714168 c!929792) b!5343198))

(assert (= (and d!1714168 (not c!929792)) b!5343199))

(assert (=> d!1714168 m!6374602))

(declare-fun m!6375326 () Bool)

(assert (=> b!5343198 m!6375326))

(assert (=> b!5343199 m!6374662))

(assert (=> b!5343199 m!6374662))

(declare-fun m!6375328 () Bool)

(assert (=> b!5343199 m!6375328))

(assert (=> b!5343199 m!6374666))

(assert (=> b!5343199 m!6375328))

(assert (=> b!5343199 m!6374666))

(declare-fun m!6375330 () Bool)

(assert (=> b!5343199 m!6375330))

(assert (=> b!5342221 d!1714168))

(declare-fun d!1714170 () Bool)

(assert (=> d!1714170 (= (matchR!7210 lt!2178554 s!2326) (matchZipper!1269 lt!2178561 s!2326))))

(declare-fun lt!2178740 () Unit!153618)

(declare-fun choose!40054 ((InoxSet Context!8818) List!61376 Regex!15025 List!61374) Unit!153618)

(assert (=> d!1714170 (= lt!2178740 (choose!40054 lt!2178561 lt!2178556 lt!2178554 s!2326))))

(assert (=> d!1714170 (validRegex!6761 lt!2178554)))

(assert (=> d!1714170 (= (theoremZipperRegexEquiv!423 lt!2178561 lt!2178556 lt!2178554 s!2326) lt!2178740)))

(declare-fun bs!1238856 () Bool)

(assert (= bs!1238856 d!1714170))

(assert (=> bs!1238856 m!6374486))

(assert (=> bs!1238856 m!6374522))

(declare-fun m!6375332 () Bool)

(assert (=> bs!1238856 m!6375332))

(declare-fun m!6375334 () Bool)

(assert (=> bs!1238856 m!6375334))

(assert (=> b!5342221 d!1714170))

(declare-fun bs!1238857 () Bool)

(declare-fun d!1714172 () Bool)

(assert (= bs!1238857 (and d!1714172 b!5342221)))

(declare-fun lambda!274103 () Int)

(assert (=> bs!1238857 (= lambda!274103 lambda!273993)))

(declare-fun bs!1238858 () Bool)

(assert (= bs!1238858 (and d!1714172 b!5342191)))

(assert (=> bs!1238858 (not (= lambda!274103 lambda!273991))))

(declare-fun bs!1238859 () Bool)

(assert (= bs!1238859 (and d!1714172 b!5343117)))

(assert (=> bs!1238859 (not (= lambda!274103 lambda!274100))))

(declare-fun bs!1238860 () Bool)

(assert (= bs!1238860 (and d!1714172 b!5343175)))

(assert (=> bs!1238860 (not (= lambda!274103 lambda!274102))))

(declare-fun bs!1238861 () Bool)

(assert (= bs!1238861 (and d!1714172 b!5342350)))

(assert (=> bs!1238861 (not (= lambda!274103 lambda!274011))))

(assert (=> bs!1238857 (= (and (= (regOne!30562 (regOne!30562 r!7292)) (regTwo!30562 (regOne!30562 r!7292))) (= lt!2178542 lt!2178574)) (= lambda!274103 lambda!273995))))

(assert (=> bs!1238858 (= (and (= (regOne!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178542 (regTwo!30562 r!7292))) (= lambda!274103 lambda!273990))))

(declare-fun bs!1238862 () Bool)

(assert (= bs!1238862 (and d!1714172 d!1714030)))

(assert (=> bs!1238862 (not (= lambda!274103 lambda!274067))))

(declare-fun bs!1238863 () Bool)

(assert (= bs!1238863 (and d!1714172 b!5342348)))

(assert (=> bs!1238863 (not (= lambda!274103 lambda!274012))))

(assert (=> bs!1238857 (not (= lambda!274103 lambda!273994))))

(declare-fun bs!1238864 () Bool)

(assert (= bs!1238864 (and d!1714172 d!1714024)))

(assert (=> bs!1238864 (= (and (= (regOne!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178542 (regTwo!30562 r!7292))) (= lambda!274103 lambda!274056))))

(declare-fun bs!1238865 () Bool)

(assert (= bs!1238865 (and d!1714172 b!5343119)))

(assert (=> bs!1238865 (not (= lambda!274103 lambda!274099))))

(assert (=> bs!1238857 (not (= lambda!274103 lambda!273996))))

(declare-fun bs!1238866 () Bool)

(assert (= bs!1238866 (and d!1714172 b!5343177)))

(assert (=> bs!1238866 (not (= lambda!274103 lambda!274101))))

(assert (=> bs!1238862 (= (and (= (regOne!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178542 (regTwo!30562 r!7292))) (= lambda!274103 lambda!274064))))

(assert (=> d!1714172 true))

(assert (=> d!1714172 true))

(assert (=> d!1714172 true))

(declare-fun lambda!274104 () Int)

(assert (=> bs!1238857 (not (= lambda!274104 lambda!273993))))

(assert (=> bs!1238858 (= (and (= (regOne!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178542 (regTwo!30562 r!7292))) (= lambda!274104 lambda!273991))))

(assert (=> bs!1238859 (= (and (= (regOne!30562 (regOne!30562 r!7292)) (regOne!30562 lt!2178542)) (= lt!2178542 (regTwo!30562 lt!2178542))) (= lambda!274104 lambda!274100))))

(assert (=> bs!1238860 (= (and (= (regOne!30562 (regOne!30562 r!7292)) (regOne!30562 lt!2178554)) (= lt!2178542 (regTwo!30562 lt!2178554))) (= lambda!274104 lambda!274102))))

(assert (=> bs!1238861 (not (= lambda!274104 lambda!274011))))

(assert (=> bs!1238857 (not (= lambda!274104 lambda!273995))))

(assert (=> bs!1238858 (not (= lambda!274104 lambda!273990))))

(assert (=> bs!1238862 (= (and (= (regOne!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178542 (regTwo!30562 r!7292))) (= lambda!274104 lambda!274067))))

(assert (=> bs!1238863 (= (and (= (regOne!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178542 (regTwo!30562 r!7292))) (= lambda!274104 lambda!274012))))

(assert (=> bs!1238857 (= lambda!274104 lambda!273994)))

(assert (=> bs!1238864 (not (= lambda!274104 lambda!274056))))

(assert (=> bs!1238865 (not (= lambda!274104 lambda!274099))))

(assert (=> bs!1238857 (= (and (= (regOne!30562 (regOne!30562 r!7292)) (regTwo!30562 (regOne!30562 r!7292))) (= lt!2178542 lt!2178574)) (= lambda!274104 lambda!273996))))

(assert (=> bs!1238862 (not (= lambda!274104 lambda!274064))))

(declare-fun bs!1238867 () Bool)

(assert (= bs!1238867 d!1714172))

(assert (=> bs!1238867 (not (= lambda!274104 lambda!274103))))

(assert (=> bs!1238866 (not (= lambda!274104 lambda!274101))))

(assert (=> d!1714172 true))

(assert (=> d!1714172 true))

(assert (=> d!1714172 true))

(assert (=> d!1714172 (= (Exists!2206 lambda!274103) (Exists!2206 lambda!274104))))

(declare-fun lt!2178741 () Unit!153618)

(assert (=> d!1714172 (= lt!2178741 (choose!40047 (regOne!30562 (regOne!30562 r!7292)) lt!2178542 s!2326))))

(assert (=> d!1714172 (validRegex!6761 (regOne!30562 (regOne!30562 r!7292)))))

(assert (=> d!1714172 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!860 (regOne!30562 (regOne!30562 r!7292)) lt!2178542 s!2326) lt!2178741)))

(declare-fun m!6375336 () Bool)

(assert (=> bs!1238867 m!6375336))

(declare-fun m!6375338 () Bool)

(assert (=> bs!1238867 m!6375338))

(declare-fun m!6375340 () Bool)

(assert (=> bs!1238867 m!6375340))

(declare-fun m!6375342 () Bool)

(assert (=> bs!1238867 m!6375342))

(assert (=> b!5342221 d!1714172))

(declare-fun bs!1238868 () Bool)

(declare-fun d!1714174 () Bool)

(assert (= bs!1238868 (and d!1714174 b!5342221)))

(declare-fun lambda!274105 () Int)

(assert (=> bs!1238868 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 (regOne!30562 r!7292))) (= lt!2178574 lt!2178542)) (= lambda!274105 lambda!273993))))

(declare-fun bs!1238869 () Bool)

(assert (= bs!1238869 (and d!1714174 b!5343117)))

(assert (=> bs!1238869 (not (= lambda!274105 lambda!274100))))

(declare-fun bs!1238870 () Bool)

(assert (= bs!1238870 (and d!1714174 b!5343175)))

(assert (=> bs!1238870 (not (= lambda!274105 lambda!274102))))

(declare-fun bs!1238871 () Bool)

(assert (= bs!1238871 (and d!1714174 b!5342350)))

(assert (=> bs!1238871 (not (= lambda!274105 lambda!274011))))

(assert (=> bs!1238868 (= lambda!274105 lambda!273995)))

(declare-fun bs!1238872 () Bool)

(assert (= bs!1238872 (and d!1714174 b!5342191)))

(assert (=> bs!1238872 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178574 (regTwo!30562 r!7292))) (= lambda!274105 lambda!273990))))

(assert (=> bs!1238872 (not (= lambda!274105 lambda!273991))))

(declare-fun bs!1238873 () Bool)

(assert (= bs!1238873 (and d!1714174 d!1714172)))

(assert (=> bs!1238873 (not (= lambda!274105 lambda!274104))))

(declare-fun bs!1238874 () Bool)

(assert (= bs!1238874 (and d!1714174 d!1714030)))

(assert (=> bs!1238874 (not (= lambda!274105 lambda!274067))))

(declare-fun bs!1238875 () Bool)

(assert (= bs!1238875 (and d!1714174 b!5342348)))

(assert (=> bs!1238875 (not (= lambda!274105 lambda!274012))))

(assert (=> bs!1238868 (not (= lambda!274105 lambda!273994))))

(declare-fun bs!1238876 () Bool)

(assert (= bs!1238876 (and d!1714174 d!1714024)))

(assert (=> bs!1238876 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178574 (regTwo!30562 r!7292))) (= lambda!274105 lambda!274056))))

(declare-fun bs!1238877 () Bool)

(assert (= bs!1238877 (and d!1714174 b!5343119)))

(assert (=> bs!1238877 (not (= lambda!274105 lambda!274099))))

(assert (=> bs!1238868 (not (= lambda!274105 lambda!273996))))

(assert (=> bs!1238874 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178574 (regTwo!30562 r!7292))) (= lambda!274105 lambda!274064))))

(assert (=> bs!1238873 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 (regOne!30562 r!7292))) (= lt!2178574 lt!2178542)) (= lambda!274105 lambda!274103))))

(declare-fun bs!1238878 () Bool)

(assert (= bs!1238878 (and d!1714174 b!5343177)))

(assert (=> bs!1238878 (not (= lambda!274105 lambda!274101))))

(assert (=> d!1714174 true))

(assert (=> d!1714174 true))

(assert (=> d!1714174 true))

(declare-fun lambda!274106 () Int)

(assert (=> bs!1238868 (not (= lambda!274106 lambda!273993))))

(assert (=> bs!1238869 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 lt!2178542)) (= lt!2178574 (regTwo!30562 lt!2178542))) (= lambda!274106 lambda!274100))))

(assert (=> bs!1238870 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 lt!2178554)) (= lt!2178574 (regTwo!30562 lt!2178554))) (= lambda!274106 lambda!274102))))

(assert (=> bs!1238871 (not (= lambda!274106 lambda!274011))))

(assert (=> bs!1238868 (not (= lambda!274106 lambda!273995))))

(assert (=> bs!1238872 (not (= lambda!274106 lambda!273990))))

(assert (=> bs!1238872 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178574 (regTwo!30562 r!7292))) (= lambda!274106 lambda!273991))))

(assert (=> bs!1238873 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 (regOne!30562 r!7292))) (= lt!2178574 lt!2178542)) (= lambda!274106 lambda!274104))))

(assert (=> bs!1238874 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178574 (regTwo!30562 r!7292))) (= lambda!274106 lambda!274067))))

(assert (=> bs!1238875 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178574 (regTwo!30562 r!7292))) (= lambda!274106 lambda!274012))))

(assert (=> bs!1238868 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 (regOne!30562 r!7292))) (= lt!2178574 lt!2178542)) (= lambda!274106 lambda!273994))))

(declare-fun bs!1238879 () Bool)

(assert (= bs!1238879 d!1714174))

(assert (=> bs!1238879 (not (= lambda!274106 lambda!274105))))

(assert (=> bs!1238876 (not (= lambda!274106 lambda!274056))))

(assert (=> bs!1238877 (not (= lambda!274106 lambda!274099))))

(assert (=> bs!1238868 (= lambda!274106 lambda!273996)))

(assert (=> bs!1238874 (not (= lambda!274106 lambda!274064))))

(assert (=> bs!1238873 (not (= lambda!274106 lambda!274103))))

(assert (=> bs!1238878 (not (= lambda!274106 lambda!274101))))

(assert (=> d!1714174 true))

(assert (=> d!1714174 true))

(assert (=> d!1714174 true))

(assert (=> d!1714174 (= (Exists!2206 lambda!274105) (Exists!2206 lambda!274106))))

(declare-fun lt!2178742 () Unit!153618)

(assert (=> d!1714174 (= lt!2178742 (choose!40047 (regTwo!30562 (regOne!30562 r!7292)) lt!2178574 s!2326))))

(assert (=> d!1714174 (validRegex!6761 (regTwo!30562 (regOne!30562 r!7292)))))

(assert (=> d!1714174 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!860 (regTwo!30562 (regOne!30562 r!7292)) lt!2178574 s!2326) lt!2178742)))

(declare-fun m!6375344 () Bool)

(assert (=> bs!1238879 m!6375344))

(declare-fun m!6375346 () Bool)

(assert (=> bs!1238879 m!6375346))

(declare-fun m!6375348 () Bool)

(assert (=> bs!1238879 m!6375348))

(declare-fun m!6375350 () Bool)

(assert (=> bs!1238879 m!6375350))

(assert (=> b!5342221 d!1714174))

(declare-fun d!1714176 () Bool)

(assert (=> d!1714176 (= (Exists!2206 lambda!273995) (choose!40044 lambda!273995))))

(declare-fun bs!1238880 () Bool)

(assert (= bs!1238880 d!1714176))

(declare-fun m!6375352 () Bool)

(assert (=> bs!1238880 m!6375352))

(assert (=> b!5342221 d!1714176))

(declare-fun bs!1238881 () Bool)

(declare-fun d!1714178 () Bool)

(assert (= bs!1238881 (and d!1714178 d!1713912)))

(declare-fun lambda!274107 () Int)

(assert (=> bs!1238881 (= lambda!274107 lambda!274000)))

(declare-fun bs!1238882 () Bool)

(assert (= bs!1238882 (and d!1714178 d!1714140)))

(assert (=> bs!1238882 (= lambda!274107 lambda!274097)))

(declare-fun bs!1238883 () Bool)

(assert (= bs!1238883 (and d!1714178 d!1714004)))

(assert (=> bs!1238883 (= lambda!274107 lambda!274034)))

(declare-fun bs!1238884 () Bool)

(assert (= bs!1238884 (and d!1714178 d!1713914)))

(assert (=> bs!1238884 (= lambda!274107 lambda!274003)))

(declare-fun bs!1238885 () Bool)

(assert (= bs!1238885 (and d!1714178 d!1713990)))

(assert (=> bs!1238885 (= lambda!274107 lambda!274027)))

(declare-fun bs!1238886 () Bool)

(assert (= bs!1238886 (and d!1714178 d!1713998)))

(assert (=> bs!1238886 (= lambda!274107 lambda!274031)))

(declare-fun bs!1238887 () Bool)

(assert (= bs!1238887 (and d!1714178 d!1714146)))

(assert (=> bs!1238887 (= lambda!274107 lambda!274098)))

(declare-fun bs!1238888 () Bool)

(assert (= bs!1238888 (and d!1714178 b!5342227)))

(assert (=> bs!1238888 (= lambda!274107 lambda!273997)))

(declare-fun b!5343200 () Bool)

(declare-fun e!3317616 () Regex!15025)

(declare-fun e!3317615 () Regex!15025)

(assert (=> b!5343200 (= e!3317616 e!3317615)))

(declare-fun c!929795 () Bool)

(assert (=> b!5343200 (= c!929795 ((_ is Cons!61251) lt!2178570))))

(declare-fun b!5343201 () Bool)

(declare-fun e!3317613 () Bool)

(declare-fun lt!2178743 () Regex!15025)

(assert (=> b!5343201 (= e!3317613 (isConcat!425 lt!2178743))))

(declare-fun b!5343202 () Bool)

(assert (=> b!5343202 (= e!3317615 (Concat!23870 (h!67699 lt!2178570) (generalisedConcat!694 (t!374592 lt!2178570))))))

(declare-fun e!3317612 () Bool)

(assert (=> d!1714178 e!3317612))

(declare-fun res!2266837 () Bool)

(assert (=> d!1714178 (=> (not res!2266837) (not e!3317612))))

(assert (=> d!1714178 (= res!2266837 (validRegex!6761 lt!2178743))))

(assert (=> d!1714178 (= lt!2178743 e!3317616)))

(declare-fun c!929794 () Bool)

(declare-fun e!3317614 () Bool)

(assert (=> d!1714178 (= c!929794 e!3317614)))

(declare-fun res!2266836 () Bool)

(assert (=> d!1714178 (=> (not res!2266836) (not e!3317614))))

(assert (=> d!1714178 (= res!2266836 ((_ is Cons!61251) lt!2178570))))

(assert (=> d!1714178 (forall!14443 lt!2178570 lambda!274107)))

(assert (=> d!1714178 (= (generalisedConcat!694 lt!2178570) lt!2178743)))

(declare-fun b!5343203 () Bool)

(declare-fun e!3317611 () Bool)

(assert (=> b!5343203 (= e!3317611 e!3317613)))

(declare-fun c!929796 () Bool)

(assert (=> b!5343203 (= c!929796 (isEmpty!33219 (tail!10549 lt!2178570)))))

(declare-fun b!5343204 () Bool)

(assert (=> b!5343204 (= e!3317615 EmptyExpr!15025)))

(declare-fun b!5343205 () Bool)

(assert (=> b!5343205 (= e!3317613 (= lt!2178743 (head!11452 lt!2178570)))))

(declare-fun b!5343206 () Bool)

(assert (=> b!5343206 (= e!3317616 (h!67699 lt!2178570))))

(declare-fun b!5343207 () Bool)

(assert (=> b!5343207 (= e!3317612 e!3317611)))

(declare-fun c!929793 () Bool)

(assert (=> b!5343207 (= c!929793 (isEmpty!33219 lt!2178570))))

(declare-fun b!5343208 () Bool)

(assert (=> b!5343208 (= e!3317614 (isEmpty!33219 (t!374592 lt!2178570)))))

(declare-fun b!5343209 () Bool)

(assert (=> b!5343209 (= e!3317611 (isEmptyExpr!902 lt!2178743))))

(assert (= (and d!1714178 res!2266836) b!5343208))

(assert (= (and d!1714178 c!929794) b!5343206))

(assert (= (and d!1714178 (not c!929794)) b!5343200))

(assert (= (and b!5343200 c!929795) b!5343202))

(assert (= (and b!5343200 (not c!929795)) b!5343204))

(assert (= (and d!1714178 res!2266837) b!5343207))

(assert (= (and b!5343207 c!929793) b!5343209))

(assert (= (and b!5343207 (not c!929793)) b!5343203))

(assert (= (and b!5343203 c!929796) b!5343205))

(assert (= (and b!5343203 (not c!929796)) b!5343201))

(declare-fun m!6375354 () Bool)

(assert (=> b!5343201 m!6375354))

(declare-fun m!6375356 () Bool)

(assert (=> b!5343209 m!6375356))

(declare-fun m!6375358 () Bool)

(assert (=> b!5343207 m!6375358))

(declare-fun m!6375360 () Bool)

(assert (=> d!1714178 m!6375360))

(declare-fun m!6375362 () Bool)

(assert (=> d!1714178 m!6375362))

(declare-fun m!6375364 () Bool)

(assert (=> b!5343208 m!6375364))

(declare-fun m!6375366 () Bool)

(assert (=> b!5343203 m!6375366))

(assert (=> b!5343203 m!6375366))

(declare-fun m!6375368 () Bool)

(assert (=> b!5343203 m!6375368))

(declare-fun m!6375370 () Bool)

(assert (=> b!5343205 m!6375370))

(declare-fun m!6375372 () Bool)

(assert (=> b!5343202 m!6375372))

(assert (=> b!5342221 d!1714178))

(declare-fun b!5343210 () Bool)

(declare-fun e!3317618 () Bool)

(assert (=> b!5343210 (= e!3317618 (= (head!11454 s!2326) (c!929489 lt!2178554)))))

(declare-fun b!5343211 () Bool)

(declare-fun e!3317623 () Bool)

(assert (=> b!5343211 (= e!3317623 (matchR!7210 (derivativeStep!4189 lt!2178554 (head!11454 s!2326)) (tail!10551 s!2326)))))

(declare-fun b!5343212 () Bool)

(declare-fun res!2266844 () Bool)

(declare-fun e!3317621 () Bool)

(assert (=> b!5343212 (=> res!2266844 e!3317621)))

(assert (=> b!5343212 (= res!2266844 e!3317618)))

(declare-fun res!2266839 () Bool)

(assert (=> b!5343212 (=> (not res!2266839) (not e!3317618))))

(declare-fun lt!2178744 () Bool)

(assert (=> b!5343212 (= res!2266839 lt!2178744)))

(declare-fun b!5343213 () Bool)

(declare-fun e!3317617 () Bool)

(declare-fun e!3317622 () Bool)

(assert (=> b!5343213 (= e!3317617 e!3317622)))

(declare-fun res!2266840 () Bool)

(assert (=> b!5343213 (=> res!2266840 e!3317622)))

(declare-fun call!381926 () Bool)

(assert (=> b!5343213 (= res!2266840 call!381926)))

(declare-fun b!5343214 () Bool)

(declare-fun res!2266845 () Bool)

(assert (=> b!5343214 (=> (not res!2266845) (not e!3317618))))

(assert (=> b!5343214 (= res!2266845 (not call!381926))))

(declare-fun b!5343215 () Bool)

(declare-fun e!3317619 () Bool)

(assert (=> b!5343215 (= e!3317619 (not lt!2178744))))

(declare-fun b!5343216 () Bool)

(assert (=> b!5343216 (= e!3317623 (nullable!5194 lt!2178554))))

(declare-fun d!1714180 () Bool)

(declare-fun e!3317620 () Bool)

(assert (=> d!1714180 e!3317620))

(declare-fun c!929799 () Bool)

(assert (=> d!1714180 (= c!929799 ((_ is EmptyExpr!15025) lt!2178554))))

(assert (=> d!1714180 (= lt!2178744 e!3317623)))

(declare-fun c!929798 () Bool)

(assert (=> d!1714180 (= c!929798 (isEmpty!33222 s!2326))))

(assert (=> d!1714180 (validRegex!6761 lt!2178554)))

(assert (=> d!1714180 (= (matchR!7210 lt!2178554 s!2326) lt!2178744)))

(declare-fun bm!381921 () Bool)

(assert (=> bm!381921 (= call!381926 (isEmpty!33222 s!2326))))

(declare-fun b!5343217 () Bool)

(declare-fun res!2266838 () Bool)

(assert (=> b!5343217 (=> res!2266838 e!3317622)))

(assert (=> b!5343217 (= res!2266838 (not (isEmpty!33222 (tail!10551 s!2326))))))

(declare-fun b!5343218 () Bool)

(declare-fun res!2266843 () Bool)

(assert (=> b!5343218 (=> res!2266843 e!3317621)))

(assert (=> b!5343218 (= res!2266843 (not ((_ is ElementMatch!15025) lt!2178554)))))

(assert (=> b!5343218 (= e!3317619 e!3317621)))

(declare-fun b!5343219 () Bool)

(declare-fun res!2266841 () Bool)

(assert (=> b!5343219 (=> (not res!2266841) (not e!3317618))))

(assert (=> b!5343219 (= res!2266841 (isEmpty!33222 (tail!10551 s!2326)))))

(declare-fun b!5343220 () Bool)

(assert (=> b!5343220 (= e!3317620 e!3317619)))

(declare-fun c!929797 () Bool)

(assert (=> b!5343220 (= c!929797 ((_ is EmptyLang!15025) lt!2178554))))

(declare-fun b!5343221 () Bool)

(assert (=> b!5343221 (= e!3317622 (not (= (head!11454 s!2326) (c!929489 lt!2178554))))))

(declare-fun b!5343222 () Bool)

(assert (=> b!5343222 (= e!3317620 (= lt!2178744 call!381926))))

(declare-fun b!5343223 () Bool)

(assert (=> b!5343223 (= e!3317621 e!3317617)))

(declare-fun res!2266842 () Bool)

(assert (=> b!5343223 (=> (not res!2266842) (not e!3317617))))

(assert (=> b!5343223 (= res!2266842 (not lt!2178744))))

(assert (= (and d!1714180 c!929798) b!5343216))

(assert (= (and d!1714180 (not c!929798)) b!5343211))

(assert (= (and d!1714180 c!929799) b!5343222))

(assert (= (and d!1714180 (not c!929799)) b!5343220))

(assert (= (and b!5343220 c!929797) b!5343215))

(assert (= (and b!5343220 (not c!929797)) b!5343218))

(assert (= (and b!5343218 (not res!2266843)) b!5343212))

(assert (= (and b!5343212 res!2266839) b!5343214))

(assert (= (and b!5343214 res!2266845) b!5343219))

(assert (= (and b!5343219 res!2266841) b!5343210))

(assert (= (and b!5343212 (not res!2266844)) b!5343223))

(assert (= (and b!5343223 res!2266842) b!5343213))

(assert (= (and b!5343213 (not res!2266840)) b!5343217))

(assert (= (and b!5343217 (not res!2266838)) b!5343221))

(assert (= (or b!5343222 b!5343213 b!5343214) bm!381921))

(assert (=> b!5343211 m!6374662))

(assert (=> b!5343211 m!6374662))

(declare-fun m!6375374 () Bool)

(assert (=> b!5343211 m!6375374))

(assert (=> b!5343211 m!6374666))

(assert (=> b!5343211 m!6375374))

(assert (=> b!5343211 m!6374666))

(declare-fun m!6375376 () Bool)

(assert (=> b!5343211 m!6375376))

(assert (=> bm!381921 m!6374602))

(assert (=> d!1714180 m!6374602))

(assert (=> d!1714180 m!6375334))

(assert (=> b!5343210 m!6374662))

(declare-fun m!6375378 () Bool)

(assert (=> b!5343216 m!6375378))

(assert (=> b!5343219 m!6374666))

(assert (=> b!5343219 m!6374666))

(assert (=> b!5343219 m!6374672))

(assert (=> b!5343217 m!6374666))

(assert (=> b!5343217 m!6374666))

(assert (=> b!5343217 m!6374672))

(assert (=> b!5343221 m!6374662))

(assert (=> b!5342221 d!1714180))

(declare-fun d!1714182 () Bool)

(assert (=> d!1714182 (= (Exists!2206 lambda!273996) (choose!40044 lambda!273996))))

(declare-fun bs!1238889 () Bool)

(assert (= bs!1238889 d!1714182))

(declare-fun m!6375380 () Bool)

(assert (=> bs!1238889 m!6375380))

(assert (=> b!5342221 d!1714182))

(declare-fun bs!1238890 () Bool)

(declare-fun d!1714184 () Bool)

(assert (= bs!1238890 (and d!1714184 b!5342221)))

(declare-fun lambda!274108 () Int)

(assert (=> bs!1238890 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 (regOne!30562 r!7292))) (= lt!2178574 lt!2178542)) (= lambda!274108 lambda!273993))))

(declare-fun bs!1238891 () Bool)

(assert (= bs!1238891 (and d!1714184 b!5343117)))

(assert (=> bs!1238891 (not (= lambda!274108 lambda!274100))))

(declare-fun bs!1238892 () Bool)

(assert (= bs!1238892 (and d!1714184 b!5342350)))

(assert (=> bs!1238892 (not (= lambda!274108 lambda!274011))))

(assert (=> bs!1238890 (= lambda!274108 lambda!273995)))

(declare-fun bs!1238893 () Bool)

(assert (= bs!1238893 (and d!1714184 b!5342191)))

(assert (=> bs!1238893 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178574 (regTwo!30562 r!7292))) (= lambda!274108 lambda!273990))))

(assert (=> bs!1238893 (not (= lambda!274108 lambda!273991))))

(declare-fun bs!1238894 () Bool)

(assert (= bs!1238894 (and d!1714184 d!1714172)))

(assert (=> bs!1238894 (not (= lambda!274108 lambda!274104))))

(declare-fun bs!1238895 () Bool)

(assert (= bs!1238895 (and d!1714184 d!1714030)))

(assert (=> bs!1238895 (not (= lambda!274108 lambda!274067))))

(declare-fun bs!1238896 () Bool)

(assert (= bs!1238896 (and d!1714184 b!5342348)))

(assert (=> bs!1238896 (not (= lambda!274108 lambda!274012))))

(declare-fun bs!1238897 () Bool)

(assert (= bs!1238897 (and d!1714184 d!1714174)))

(assert (=> bs!1238897 (not (= lambda!274108 lambda!274106))))

(declare-fun bs!1238898 () Bool)

(assert (= bs!1238898 (and d!1714184 b!5343175)))

(assert (=> bs!1238898 (not (= lambda!274108 lambda!274102))))

(assert (=> bs!1238890 (not (= lambda!274108 lambda!273994))))

(assert (=> bs!1238897 (= lambda!274108 lambda!274105)))

(declare-fun bs!1238899 () Bool)

(assert (= bs!1238899 (and d!1714184 d!1714024)))

(assert (=> bs!1238899 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178574 (regTwo!30562 r!7292))) (= lambda!274108 lambda!274056))))

(declare-fun bs!1238900 () Bool)

(assert (= bs!1238900 (and d!1714184 b!5343119)))

(assert (=> bs!1238900 (not (= lambda!274108 lambda!274099))))

(assert (=> bs!1238890 (not (= lambda!274108 lambda!273996))))

(assert (=> bs!1238895 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178574 (regTwo!30562 r!7292))) (= lambda!274108 lambda!274064))))

(assert (=> bs!1238894 (= (and (= (regTwo!30562 (regOne!30562 r!7292)) (regOne!30562 (regOne!30562 r!7292))) (= lt!2178574 lt!2178542)) (= lambda!274108 lambda!274103))))

(declare-fun bs!1238901 () Bool)

(assert (= bs!1238901 (and d!1714184 b!5343177)))

(assert (=> bs!1238901 (not (= lambda!274108 lambda!274101))))

(assert (=> d!1714184 true))

(assert (=> d!1714184 true))

(assert (=> d!1714184 true))

(assert (=> d!1714184 (= (isDefined!11839 (findConcatSeparation!1550 (regTwo!30562 (regOne!30562 r!7292)) lt!2178574 Nil!61250 s!2326 s!2326)) (Exists!2206 lambda!274108))))

(declare-fun lt!2178745 () Unit!153618)

(assert (=> d!1714184 (= lt!2178745 (choose!40045 (regTwo!30562 (regOne!30562 r!7292)) lt!2178574 s!2326))))

(assert (=> d!1714184 (validRegex!6761 (regTwo!30562 (regOne!30562 r!7292)))))

(assert (=> d!1714184 (= (lemmaFindConcatSeparationEquivalentToExists!1314 (regTwo!30562 (regOne!30562 r!7292)) lt!2178574 s!2326) lt!2178745)))

(declare-fun bs!1238902 () Bool)

(assert (= bs!1238902 d!1714184))

(declare-fun m!6375382 () Bool)

(assert (=> bs!1238902 m!6375382))

(declare-fun m!6375384 () Bool)

(assert (=> bs!1238902 m!6375384))

(assert (=> bs!1238902 m!6374494))

(assert (=> bs!1238902 m!6375350))

(assert (=> bs!1238902 m!6374494))

(assert (=> bs!1238902 m!6374496))

(assert (=> b!5342221 d!1714184))

(declare-fun d!1714186 () Bool)

(assert (=> d!1714186 (= (matchR!7210 lt!2178542 s!2326) (matchRSpec!2128 lt!2178542 s!2326))))

(declare-fun lt!2178746 () Unit!153618)

(assert (=> d!1714186 (= lt!2178746 (choose!40041 lt!2178542 s!2326))))

(assert (=> d!1714186 (validRegex!6761 lt!2178542)))

(assert (=> d!1714186 (= (mainMatchTheorem!2128 lt!2178542 s!2326) lt!2178746)))

(declare-fun bs!1238903 () Bool)

(assert (= bs!1238903 d!1714186))

(assert (=> bs!1238903 m!6374500))

(assert (=> bs!1238903 m!6374512))

(declare-fun m!6375386 () Bool)

(assert (=> bs!1238903 m!6375386))

(assert (=> bs!1238903 m!6375318))

(assert (=> b!5342221 d!1714186))

(declare-fun b!5343224 () Bool)

(declare-fun e!3317625 () Option!15136)

(assert (=> b!5343224 (= e!3317625 (Some!15135 (tuple2!64449 Nil!61250 s!2326)))))

(declare-fun b!5343226 () Bool)

(declare-fun e!3317626 () Bool)

(declare-fun lt!2178749 () Option!15136)

(assert (=> b!5343226 (= e!3317626 (= (++!13347 (_1!35527 (get!21065 lt!2178749)) (_2!35527 (get!21065 lt!2178749))) s!2326))))

(declare-fun b!5343227 () Bool)

(declare-fun e!3317628 () Bool)

(assert (=> b!5343227 (= e!3317628 (not (isDefined!11839 lt!2178749)))))

(declare-fun b!5343228 () Bool)

(declare-fun res!2266846 () Bool)

(assert (=> b!5343228 (=> (not res!2266846) (not e!3317626))))

(assert (=> b!5343228 (= res!2266846 (matchR!7210 (regOne!30562 (regOne!30562 r!7292)) (_1!35527 (get!21065 lt!2178749))))))

(declare-fun b!5343229 () Bool)

(declare-fun e!3317627 () Bool)

(assert (=> b!5343229 (= e!3317627 (matchR!7210 lt!2178542 s!2326))))

(declare-fun b!5343230 () Bool)

(declare-fun e!3317624 () Option!15136)

(assert (=> b!5343230 (= e!3317625 e!3317624)))

(declare-fun c!929800 () Bool)

(assert (=> b!5343230 (= c!929800 ((_ is Nil!61250) s!2326))))

(declare-fun d!1714188 () Bool)

(assert (=> d!1714188 e!3317628))

(declare-fun res!2266849 () Bool)

(assert (=> d!1714188 (=> res!2266849 e!3317628)))

(assert (=> d!1714188 (= res!2266849 e!3317626)))

(declare-fun res!2266850 () Bool)

(assert (=> d!1714188 (=> (not res!2266850) (not e!3317626))))

(assert (=> d!1714188 (= res!2266850 (isDefined!11839 lt!2178749))))

(assert (=> d!1714188 (= lt!2178749 e!3317625)))

(declare-fun c!929801 () Bool)

(assert (=> d!1714188 (= c!929801 e!3317627)))

(declare-fun res!2266847 () Bool)

(assert (=> d!1714188 (=> (not res!2266847) (not e!3317627))))

(assert (=> d!1714188 (= res!2266847 (matchR!7210 (regOne!30562 (regOne!30562 r!7292)) Nil!61250))))

(assert (=> d!1714188 (validRegex!6761 (regOne!30562 (regOne!30562 r!7292)))))

(assert (=> d!1714188 (= (findConcatSeparation!1550 (regOne!30562 (regOne!30562 r!7292)) lt!2178542 Nil!61250 s!2326 s!2326) lt!2178749)))

(declare-fun b!5343225 () Bool)

(declare-fun lt!2178748 () Unit!153618)

(declare-fun lt!2178747 () Unit!153618)

(assert (=> b!5343225 (= lt!2178748 lt!2178747)))

(assert (=> b!5343225 (= (++!13347 (++!13347 Nil!61250 (Cons!61250 (h!67698 s!2326) Nil!61250)) (t!374591 s!2326)) s!2326)))

(assert (=> b!5343225 (= lt!2178747 (lemmaMoveElementToOtherListKeepsConcatEq!1762 Nil!61250 (h!67698 s!2326) (t!374591 s!2326) s!2326))))

(assert (=> b!5343225 (= e!3317624 (findConcatSeparation!1550 (regOne!30562 (regOne!30562 r!7292)) lt!2178542 (++!13347 Nil!61250 (Cons!61250 (h!67698 s!2326) Nil!61250)) (t!374591 s!2326) s!2326))))

(declare-fun b!5343231 () Bool)

(assert (=> b!5343231 (= e!3317624 None!15135)))

(declare-fun b!5343232 () Bool)

(declare-fun res!2266848 () Bool)

(assert (=> b!5343232 (=> (not res!2266848) (not e!3317626))))

(assert (=> b!5343232 (= res!2266848 (matchR!7210 lt!2178542 (_2!35527 (get!21065 lt!2178749))))))

(assert (= (and d!1714188 res!2266847) b!5343229))

(assert (= (and d!1714188 c!929801) b!5343224))

(assert (= (and d!1714188 (not c!929801)) b!5343230))

(assert (= (and b!5343230 c!929800) b!5343231))

(assert (= (and b!5343230 (not c!929800)) b!5343225))

(assert (= (and d!1714188 res!2266850) b!5343228))

(assert (= (and b!5343228 res!2266846) b!5343232))

(assert (= (and b!5343232 res!2266848) b!5343226))

(assert (= (and d!1714188 (not res!2266849)) b!5343227))

(declare-fun m!6375388 () Bool)

(assert (=> b!5343226 m!6375388))

(declare-fun m!6375390 () Bool)

(assert (=> b!5343226 m!6375390))

(assert (=> b!5343229 m!6374500))

(declare-fun m!6375392 () Bool)

(assert (=> d!1714188 m!6375392))

(declare-fun m!6375394 () Bool)

(assert (=> d!1714188 m!6375394))

(assert (=> d!1714188 m!6375342))

(assert (=> b!5343228 m!6375388))

(declare-fun m!6375396 () Bool)

(assert (=> b!5343228 m!6375396))

(assert (=> b!5343232 m!6375388))

(declare-fun m!6375398 () Bool)

(assert (=> b!5343232 m!6375398))

(assert (=> b!5343225 m!6374864))

(assert (=> b!5343225 m!6374864))

(assert (=> b!5343225 m!6374866))

(assert (=> b!5343225 m!6374868))

(assert (=> b!5343225 m!6374864))

(declare-fun m!6375400 () Bool)

(assert (=> b!5343225 m!6375400))

(assert (=> b!5343227 m!6375392))

(assert (=> b!5342221 d!1714188))

(declare-fun d!1714190 () Bool)

(assert (=> d!1714190 (= (matchR!7210 lt!2178554 s!2326) (matchRSpec!2128 lt!2178554 s!2326))))

(declare-fun lt!2178750 () Unit!153618)

(assert (=> d!1714190 (= lt!2178750 (choose!40041 lt!2178554 s!2326))))

(assert (=> d!1714190 (validRegex!6761 lt!2178554)))

(assert (=> d!1714190 (= (mainMatchTheorem!2128 lt!2178554 s!2326) lt!2178750)))

(declare-fun bs!1238904 () Bool)

(assert (= bs!1238904 d!1714190))

(assert (=> bs!1238904 m!6374486))

(assert (=> bs!1238904 m!6374508))

(declare-fun m!6375402 () Bool)

(assert (=> bs!1238904 m!6375402))

(assert (=> bs!1238904 m!6375334))

(assert (=> b!5342221 d!1714190))

(declare-fun d!1714192 () Bool)

(assert (=> d!1714192 (= (Exists!2206 lambda!273994) (choose!40044 lambda!273994))))

(declare-fun bs!1238905 () Bool)

(assert (= bs!1238905 d!1714192))

(declare-fun m!6375404 () Bool)

(assert (=> bs!1238905 m!6375404))

(assert (=> b!5342221 d!1714192))

(declare-fun bs!1238906 () Bool)

(declare-fun d!1714194 () Bool)

(assert (= bs!1238906 (and d!1714194 b!5342221)))

(declare-fun lambda!274109 () Int)

(assert (=> bs!1238906 (= lambda!274109 lambda!273993)))

(declare-fun bs!1238907 () Bool)

(assert (= bs!1238907 (and d!1714194 b!5343117)))

(assert (=> bs!1238907 (not (= lambda!274109 lambda!274100))))

(declare-fun bs!1238908 () Bool)

(assert (= bs!1238908 (and d!1714194 b!5342350)))

(assert (=> bs!1238908 (not (= lambda!274109 lambda!274011))))

(assert (=> bs!1238906 (= (and (= (regOne!30562 (regOne!30562 r!7292)) (regTwo!30562 (regOne!30562 r!7292))) (= lt!2178542 lt!2178574)) (= lambda!274109 lambda!273995))))

(declare-fun bs!1238909 () Bool)

(assert (= bs!1238909 (and d!1714194 b!5342191)))

(assert (=> bs!1238909 (= (and (= (regOne!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178542 (regTwo!30562 r!7292))) (= lambda!274109 lambda!273990))))

(declare-fun bs!1238910 () Bool)

(assert (= bs!1238910 (and d!1714194 d!1714184)))

(assert (=> bs!1238910 (= (and (= (regOne!30562 (regOne!30562 r!7292)) (regTwo!30562 (regOne!30562 r!7292))) (= lt!2178542 lt!2178574)) (= lambda!274109 lambda!274108))))

(assert (=> bs!1238909 (not (= lambda!274109 lambda!273991))))

(declare-fun bs!1238911 () Bool)

(assert (= bs!1238911 (and d!1714194 d!1714172)))

(assert (=> bs!1238911 (not (= lambda!274109 lambda!274104))))

(declare-fun bs!1238912 () Bool)

(assert (= bs!1238912 (and d!1714194 d!1714030)))

(assert (=> bs!1238912 (not (= lambda!274109 lambda!274067))))

(declare-fun bs!1238913 () Bool)

(assert (= bs!1238913 (and d!1714194 b!5342348)))

(assert (=> bs!1238913 (not (= lambda!274109 lambda!274012))))

(declare-fun bs!1238914 () Bool)

(assert (= bs!1238914 (and d!1714194 d!1714174)))

(assert (=> bs!1238914 (not (= lambda!274109 lambda!274106))))

(declare-fun bs!1238915 () Bool)

(assert (= bs!1238915 (and d!1714194 b!5343175)))

(assert (=> bs!1238915 (not (= lambda!274109 lambda!274102))))

(assert (=> bs!1238906 (not (= lambda!274109 lambda!273994))))

(assert (=> bs!1238914 (= (and (= (regOne!30562 (regOne!30562 r!7292)) (regTwo!30562 (regOne!30562 r!7292))) (= lt!2178542 lt!2178574)) (= lambda!274109 lambda!274105))))

(declare-fun bs!1238916 () Bool)

(assert (= bs!1238916 (and d!1714194 d!1714024)))

(assert (=> bs!1238916 (= (and (= (regOne!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178542 (regTwo!30562 r!7292))) (= lambda!274109 lambda!274056))))

(declare-fun bs!1238917 () Bool)

(assert (= bs!1238917 (and d!1714194 b!5343119)))

(assert (=> bs!1238917 (not (= lambda!274109 lambda!274099))))

(assert (=> bs!1238906 (not (= lambda!274109 lambda!273996))))

(assert (=> bs!1238912 (= (and (= (regOne!30562 (regOne!30562 r!7292)) (regOne!30562 r!7292)) (= lt!2178542 (regTwo!30562 r!7292))) (= lambda!274109 lambda!274064))))

(assert (=> bs!1238911 (= lambda!274109 lambda!274103)))

(declare-fun bs!1238918 () Bool)

(assert (= bs!1238918 (and d!1714194 b!5343177)))

(assert (=> bs!1238918 (not (= lambda!274109 lambda!274101))))

(assert (=> d!1714194 true))

(assert (=> d!1714194 true))

(assert (=> d!1714194 true))

(assert (=> d!1714194 (= (isDefined!11839 (findConcatSeparation!1550 (regOne!30562 (regOne!30562 r!7292)) lt!2178542 Nil!61250 s!2326 s!2326)) (Exists!2206 lambda!274109))))

(declare-fun lt!2178751 () Unit!153618)

(assert (=> d!1714194 (= lt!2178751 (choose!40045 (regOne!30562 (regOne!30562 r!7292)) lt!2178542 s!2326))))

(assert (=> d!1714194 (validRegex!6761 (regOne!30562 (regOne!30562 r!7292)))))

(assert (=> d!1714194 (= (lemmaFindConcatSeparationEquivalentToExists!1314 (regOne!30562 (regOne!30562 r!7292)) lt!2178542 s!2326) lt!2178751)))

(declare-fun bs!1238919 () Bool)

(assert (= bs!1238919 d!1714194))

(declare-fun m!6375406 () Bool)

(assert (=> bs!1238919 m!6375406))

(declare-fun m!6375408 () Bool)

(assert (=> bs!1238919 m!6375408))

(assert (=> bs!1238919 m!6374484))

(assert (=> bs!1238919 m!6375342))

(assert (=> bs!1238919 m!6374484))

(assert (=> bs!1238919 m!6374502))

(assert (=> b!5342221 d!1714194))

(declare-fun b!5343233 () Bool)

(declare-fun e!3317630 () Option!15136)

(assert (=> b!5343233 (= e!3317630 (Some!15135 (tuple2!64449 Nil!61250 s!2326)))))

(declare-fun b!5343235 () Bool)

(declare-fun e!3317631 () Bool)

(declare-fun lt!2178754 () Option!15136)

(assert (=> b!5343235 (= e!3317631 (= (++!13347 (_1!35527 (get!21065 lt!2178754)) (_2!35527 (get!21065 lt!2178754))) s!2326))))

(declare-fun b!5343236 () Bool)

(declare-fun e!3317633 () Bool)

(assert (=> b!5343236 (= e!3317633 (not (isDefined!11839 lt!2178754)))))

(declare-fun b!5343237 () Bool)

(declare-fun res!2266851 () Bool)

(assert (=> b!5343237 (=> (not res!2266851) (not e!3317631))))

(assert (=> b!5343237 (= res!2266851 (matchR!7210 (regTwo!30562 (regOne!30562 r!7292)) (_1!35527 (get!21065 lt!2178754))))))

(declare-fun b!5343238 () Bool)

(declare-fun e!3317632 () Bool)

(assert (=> b!5343238 (= e!3317632 (matchR!7210 lt!2178574 s!2326))))

(declare-fun b!5343239 () Bool)

(declare-fun e!3317629 () Option!15136)

(assert (=> b!5343239 (= e!3317630 e!3317629)))

(declare-fun c!929802 () Bool)

(assert (=> b!5343239 (= c!929802 ((_ is Nil!61250) s!2326))))

(declare-fun d!1714196 () Bool)

(assert (=> d!1714196 e!3317633))

(declare-fun res!2266854 () Bool)

(assert (=> d!1714196 (=> res!2266854 e!3317633)))

(assert (=> d!1714196 (= res!2266854 e!3317631)))

(declare-fun res!2266855 () Bool)

(assert (=> d!1714196 (=> (not res!2266855) (not e!3317631))))

(assert (=> d!1714196 (= res!2266855 (isDefined!11839 lt!2178754))))

(assert (=> d!1714196 (= lt!2178754 e!3317630)))

(declare-fun c!929803 () Bool)

(assert (=> d!1714196 (= c!929803 e!3317632)))

(declare-fun res!2266852 () Bool)

(assert (=> d!1714196 (=> (not res!2266852) (not e!3317632))))

(assert (=> d!1714196 (= res!2266852 (matchR!7210 (regTwo!30562 (regOne!30562 r!7292)) Nil!61250))))

(assert (=> d!1714196 (validRegex!6761 (regTwo!30562 (regOne!30562 r!7292)))))

(assert (=> d!1714196 (= (findConcatSeparation!1550 (regTwo!30562 (regOne!30562 r!7292)) lt!2178574 Nil!61250 s!2326 s!2326) lt!2178754)))

(declare-fun b!5343234 () Bool)

(declare-fun lt!2178753 () Unit!153618)

(declare-fun lt!2178752 () Unit!153618)

(assert (=> b!5343234 (= lt!2178753 lt!2178752)))

(assert (=> b!5343234 (= (++!13347 (++!13347 Nil!61250 (Cons!61250 (h!67698 s!2326) Nil!61250)) (t!374591 s!2326)) s!2326)))

(assert (=> b!5343234 (= lt!2178752 (lemmaMoveElementToOtherListKeepsConcatEq!1762 Nil!61250 (h!67698 s!2326) (t!374591 s!2326) s!2326))))

(assert (=> b!5343234 (= e!3317629 (findConcatSeparation!1550 (regTwo!30562 (regOne!30562 r!7292)) lt!2178574 (++!13347 Nil!61250 (Cons!61250 (h!67698 s!2326) Nil!61250)) (t!374591 s!2326) s!2326))))

(declare-fun b!5343240 () Bool)

(assert (=> b!5343240 (= e!3317629 None!15135)))

(declare-fun b!5343241 () Bool)

(declare-fun res!2266853 () Bool)

(assert (=> b!5343241 (=> (not res!2266853) (not e!3317631))))

(assert (=> b!5343241 (= res!2266853 (matchR!7210 lt!2178574 (_2!35527 (get!21065 lt!2178754))))))

(assert (= (and d!1714196 res!2266852) b!5343238))

(assert (= (and d!1714196 c!929803) b!5343233))

(assert (= (and d!1714196 (not c!929803)) b!5343239))

(assert (= (and b!5343239 c!929802) b!5343240))

(assert (= (and b!5343239 (not c!929802)) b!5343234))

(assert (= (and d!1714196 res!2266855) b!5343237))

(assert (= (and b!5343237 res!2266851) b!5343241))

(assert (= (and b!5343241 res!2266853) b!5343235))

(assert (= (and d!1714196 (not res!2266854)) b!5343236))

(declare-fun m!6375410 () Bool)

(assert (=> b!5343235 m!6375410))

(declare-fun m!6375412 () Bool)

(assert (=> b!5343235 m!6375412))

(declare-fun m!6375414 () Bool)

(assert (=> b!5343238 m!6375414))

(declare-fun m!6375416 () Bool)

(assert (=> d!1714196 m!6375416))

(declare-fun m!6375418 () Bool)

(assert (=> d!1714196 m!6375418))

(assert (=> d!1714196 m!6375350))

(assert (=> b!5343237 m!6375410))

(declare-fun m!6375420 () Bool)

(assert (=> b!5343237 m!6375420))

(assert (=> b!5343241 m!6375410))

(declare-fun m!6375422 () Bool)

(assert (=> b!5343241 m!6375422))

(assert (=> b!5343234 m!6374864))

(assert (=> b!5343234 m!6374864))

(assert (=> b!5343234 m!6374866))

(assert (=> b!5343234 m!6374868))

(assert (=> b!5343234 m!6374864))

(declare-fun m!6375424 () Bool)

(assert (=> b!5343234 m!6375424))

(assert (=> b!5343236 m!6375416))

(assert (=> b!5342221 d!1714196))

(declare-fun d!1714198 () Bool)

(declare-fun c!929804 () Bool)

(assert (=> d!1714198 (= c!929804 (isEmpty!33222 (t!374591 s!2326)))))

(declare-fun e!3317634 () Bool)

(assert (=> d!1714198 (= (matchZipper!1269 lt!2178575 (t!374591 s!2326)) e!3317634)))

(declare-fun b!5343242 () Bool)

(assert (=> b!5343242 (= e!3317634 (nullableZipper!1368 lt!2178575))))

(declare-fun b!5343243 () Bool)

(assert (=> b!5343243 (= e!3317634 (matchZipper!1269 (derivationStepZipper!1266 lt!2178575 (head!11454 (t!374591 s!2326))) (tail!10551 (t!374591 s!2326))))))

(assert (= (and d!1714198 c!929804) b!5343242))

(assert (= (and d!1714198 (not c!929804)) b!5343243))

(assert (=> d!1714198 m!6375146))

(declare-fun m!6375426 () Bool)

(assert (=> b!5343242 m!6375426))

(assert (=> b!5343243 m!6375150))

(assert (=> b!5343243 m!6375150))

(declare-fun m!6375428 () Bool)

(assert (=> b!5343243 m!6375428))

(assert (=> b!5343243 m!6375154))

(assert (=> b!5343243 m!6375428))

(assert (=> b!5343243 m!6375154))

(declare-fun m!6375430 () Bool)

(assert (=> b!5343243 m!6375430))

(assert (=> b!5342200 d!1714198))

(assert (=> b!5342200 d!1714124))

(declare-fun d!1714200 () Bool)

(declare-fun c!929805 () Bool)

(assert (=> d!1714200 (= c!929805 (isEmpty!33222 (t!374591 s!2326)))))

(declare-fun e!3317635 () Bool)

(assert (=> d!1714200 (= (matchZipper!1269 lt!2178564 (t!374591 s!2326)) e!3317635)))

(declare-fun b!5343244 () Bool)

(assert (=> b!5343244 (= e!3317635 (nullableZipper!1368 lt!2178564))))

(declare-fun b!5343245 () Bool)

(assert (=> b!5343245 (= e!3317635 (matchZipper!1269 (derivationStepZipper!1266 lt!2178564 (head!11454 (t!374591 s!2326))) (tail!10551 (t!374591 s!2326))))))

(assert (= (and d!1714200 c!929805) b!5343244))

(assert (= (and d!1714200 (not c!929805)) b!5343245))

(assert (=> d!1714200 m!6375146))

(declare-fun m!6375432 () Bool)

(assert (=> b!5343244 m!6375432))

(assert (=> b!5343245 m!6375150))

(assert (=> b!5343245 m!6375150))

(declare-fun m!6375434 () Bool)

(assert (=> b!5343245 m!6375434))

(assert (=> b!5343245 m!6375154))

(assert (=> b!5343245 m!6375434))

(assert (=> b!5343245 m!6375154))

(declare-fun m!6375436 () Bool)

(assert (=> b!5343245 m!6375436))

(assert (=> b!5342199 d!1714200))

(declare-fun b!5343253 () Bool)

(declare-fun e!3317641 () Bool)

(declare-fun tp!1485348 () Bool)

(assert (=> b!5343253 (= e!3317641 tp!1485348)))

(declare-fun b!5343252 () Bool)

(declare-fun e!3317640 () Bool)

(declare-fun tp!1485349 () Bool)

(assert (=> b!5343252 (= e!3317640 (and (inv!80809 (h!67700 (t!374593 zl!343))) e!3317641 tp!1485349))))

(assert (=> b!5342193 (= tp!1485278 e!3317640)))

(assert (= b!5343252 b!5343253))

(assert (= (and b!5342193 ((_ is Cons!61252) (t!374593 zl!343))) b!5343252))

(declare-fun m!6375438 () Bool)

(assert (=> b!5343252 m!6375438))

(declare-fun condSetEmpty!34495 () Bool)

(assert (=> setNonEmpty!34489 (= condSetEmpty!34495 (= setRest!34489 ((as const (Array Context!8818 Bool)) false)))))

(declare-fun setRes!34495 () Bool)

(assert (=> setNonEmpty!34489 (= tp!1485281 setRes!34495)))

(declare-fun setIsEmpty!34495 () Bool)

(assert (=> setIsEmpty!34495 setRes!34495))

(declare-fun e!3317644 () Bool)

(declare-fun setNonEmpty!34495 () Bool)

(declare-fun tp!1485354 () Bool)

(declare-fun setElem!34495 () Context!8818)

(assert (=> setNonEmpty!34495 (= setRes!34495 (and tp!1485354 (inv!80809 setElem!34495) e!3317644))))

(declare-fun setRest!34495 () (InoxSet Context!8818))

(assert (=> setNonEmpty!34495 (= setRest!34489 ((_ map or) (store ((as const (Array Context!8818 Bool)) false) setElem!34495 true) setRest!34495))))

(declare-fun b!5343258 () Bool)

(declare-fun tp!1485355 () Bool)

(assert (=> b!5343258 (= e!3317644 tp!1485355)))

(assert (= (and setNonEmpty!34489 condSetEmpty!34495) setIsEmpty!34495))

(assert (= (and setNonEmpty!34489 (not condSetEmpty!34495)) setNonEmpty!34495))

(assert (= setNonEmpty!34495 b!5343258))

(declare-fun m!6375440 () Bool)

(assert (=> setNonEmpty!34495 m!6375440))

(declare-fun b!5343270 () Bool)

(declare-fun e!3317647 () Bool)

(declare-fun tp!1485368 () Bool)

(declare-fun tp!1485366 () Bool)

(assert (=> b!5343270 (= e!3317647 (and tp!1485368 tp!1485366))))

(declare-fun b!5343272 () Bool)

(declare-fun tp!1485370 () Bool)

(declare-fun tp!1485369 () Bool)

(assert (=> b!5343272 (= e!3317647 (and tp!1485370 tp!1485369))))

(declare-fun b!5343269 () Bool)

(assert (=> b!5343269 (= e!3317647 tp_is_empty!39303)))

(assert (=> b!5342223 (= tp!1485285 e!3317647)))

(declare-fun b!5343271 () Bool)

(declare-fun tp!1485367 () Bool)

(assert (=> b!5343271 (= e!3317647 tp!1485367)))

(assert (= (and b!5342223 ((_ is ElementMatch!15025) (reg!15354 r!7292))) b!5343269))

(assert (= (and b!5342223 ((_ is Concat!23870) (reg!15354 r!7292))) b!5343270))

(assert (= (and b!5342223 ((_ is Star!15025) (reg!15354 r!7292))) b!5343271))

(assert (= (and b!5342223 ((_ is Union!15025) (reg!15354 r!7292))) b!5343272))

(declare-fun b!5343277 () Bool)

(declare-fun e!3317650 () Bool)

(declare-fun tp!1485373 () Bool)

(assert (=> b!5343277 (= e!3317650 (and tp_is_empty!39303 tp!1485373))))

(assert (=> b!5342218 (= tp!1485279 e!3317650)))

(assert (= (and b!5342218 ((_ is Cons!61250) (t!374591 s!2326))) b!5343277))

(declare-fun b!5343282 () Bool)

(declare-fun e!3317653 () Bool)

(declare-fun tp!1485378 () Bool)

(declare-fun tp!1485379 () Bool)

(assert (=> b!5343282 (= e!3317653 (and tp!1485378 tp!1485379))))

(assert (=> b!5342217 (= tp!1485282 e!3317653)))

(assert (= (and b!5342217 ((_ is Cons!61251) (exprs!4909 setElem!34489))) b!5343282))

(declare-fun b!5343284 () Bool)

(declare-fun e!3317654 () Bool)

(declare-fun tp!1485382 () Bool)

(declare-fun tp!1485380 () Bool)

(assert (=> b!5343284 (= e!3317654 (and tp!1485382 tp!1485380))))

(declare-fun b!5343286 () Bool)

(declare-fun tp!1485384 () Bool)

(declare-fun tp!1485383 () Bool)

(assert (=> b!5343286 (= e!3317654 (and tp!1485384 tp!1485383))))

(declare-fun b!5343283 () Bool)

(assert (=> b!5343283 (= e!3317654 tp_is_empty!39303)))

(assert (=> b!5342212 (= tp!1485283 e!3317654)))

(declare-fun b!5343285 () Bool)

(declare-fun tp!1485381 () Bool)

(assert (=> b!5343285 (= e!3317654 tp!1485381)))

(assert (= (and b!5342212 ((_ is ElementMatch!15025) (regOne!30563 r!7292))) b!5343283))

(assert (= (and b!5342212 ((_ is Concat!23870) (regOne!30563 r!7292))) b!5343284))

(assert (= (and b!5342212 ((_ is Star!15025) (regOne!30563 r!7292))) b!5343285))

(assert (= (and b!5342212 ((_ is Union!15025) (regOne!30563 r!7292))) b!5343286))

(declare-fun b!5343288 () Bool)

(declare-fun e!3317655 () Bool)

(declare-fun tp!1485387 () Bool)

(declare-fun tp!1485385 () Bool)

(assert (=> b!5343288 (= e!3317655 (and tp!1485387 tp!1485385))))

(declare-fun b!5343290 () Bool)

(declare-fun tp!1485389 () Bool)

(declare-fun tp!1485388 () Bool)

(assert (=> b!5343290 (= e!3317655 (and tp!1485389 tp!1485388))))

(declare-fun b!5343287 () Bool)

(assert (=> b!5343287 (= e!3317655 tp_is_empty!39303)))

(assert (=> b!5342212 (= tp!1485276 e!3317655)))

(declare-fun b!5343289 () Bool)

(declare-fun tp!1485386 () Bool)

(assert (=> b!5343289 (= e!3317655 tp!1485386)))

(assert (= (and b!5342212 ((_ is ElementMatch!15025) (regTwo!30563 r!7292))) b!5343287))

(assert (= (and b!5342212 ((_ is Concat!23870) (regTwo!30563 r!7292))) b!5343288))

(assert (= (and b!5342212 ((_ is Star!15025) (regTwo!30563 r!7292))) b!5343289))

(assert (= (and b!5342212 ((_ is Union!15025) (regTwo!30563 r!7292))) b!5343290))

(declare-fun b!5343291 () Bool)

(declare-fun e!3317656 () Bool)

(declare-fun tp!1485390 () Bool)

(declare-fun tp!1485391 () Bool)

(assert (=> b!5343291 (= e!3317656 (and tp!1485390 tp!1485391))))

(assert (=> b!5342194 (= tp!1485284 e!3317656)))

(assert (= (and b!5342194 ((_ is Cons!61251) (exprs!4909 (h!67700 zl!343)))) b!5343291))

(declare-fun b!5343293 () Bool)

(declare-fun e!3317657 () Bool)

(declare-fun tp!1485394 () Bool)

(declare-fun tp!1485392 () Bool)

(assert (=> b!5343293 (= e!3317657 (and tp!1485394 tp!1485392))))

(declare-fun b!5343295 () Bool)

(declare-fun tp!1485396 () Bool)

(declare-fun tp!1485395 () Bool)

(assert (=> b!5343295 (= e!3317657 (and tp!1485396 tp!1485395))))

(declare-fun b!5343292 () Bool)

(assert (=> b!5343292 (= e!3317657 tp_is_empty!39303)))

(assert (=> b!5342219 (= tp!1485280 e!3317657)))

(declare-fun b!5343294 () Bool)

(declare-fun tp!1485393 () Bool)

(assert (=> b!5343294 (= e!3317657 tp!1485393)))

(assert (= (and b!5342219 ((_ is ElementMatch!15025) (regOne!30562 r!7292))) b!5343292))

(assert (= (and b!5342219 ((_ is Concat!23870) (regOne!30562 r!7292))) b!5343293))

(assert (= (and b!5342219 ((_ is Star!15025) (regOne!30562 r!7292))) b!5343294))

(assert (= (and b!5342219 ((_ is Union!15025) (regOne!30562 r!7292))) b!5343295))

(declare-fun b!5343297 () Bool)

(declare-fun e!3317658 () Bool)

(declare-fun tp!1485399 () Bool)

(declare-fun tp!1485397 () Bool)

(assert (=> b!5343297 (= e!3317658 (and tp!1485399 tp!1485397))))

(declare-fun b!5343299 () Bool)

(declare-fun tp!1485401 () Bool)

(declare-fun tp!1485400 () Bool)

(assert (=> b!5343299 (= e!3317658 (and tp!1485401 tp!1485400))))

(declare-fun b!5343296 () Bool)

(assert (=> b!5343296 (= e!3317658 tp_is_empty!39303)))

(assert (=> b!5342219 (= tp!1485277 e!3317658)))

(declare-fun b!5343298 () Bool)

(declare-fun tp!1485398 () Bool)

(assert (=> b!5343298 (= e!3317658 tp!1485398)))

(assert (= (and b!5342219 ((_ is ElementMatch!15025) (regTwo!30562 r!7292))) b!5343296))

(assert (= (and b!5342219 ((_ is Concat!23870) (regTwo!30562 r!7292))) b!5343297))

(assert (= (and b!5342219 ((_ is Star!15025) (regTwo!30562 r!7292))) b!5343298))

(assert (= (and b!5342219 ((_ is Union!15025) (regTwo!30562 r!7292))) b!5343299))

(declare-fun b_lambda!205223 () Bool)

(assert (= b_lambda!205215 (or b!5342203 b_lambda!205223)))

(declare-fun bs!1238920 () Bool)

(declare-fun d!1714202 () Bool)

(assert (= bs!1238920 (and d!1714202 b!5342203)))

(assert (=> bs!1238920 (= (dynLambda!24212 lambda!273992 lt!2178543) (derivationStepZipperUp!397 lt!2178543 (h!67698 s!2326)))))

(assert (=> bs!1238920 m!6374460))

(assert (=> d!1714116 d!1714202))

(declare-fun b_lambda!205225 () Bool)

(assert (= b_lambda!205209 (or b!5342227 b_lambda!205225)))

(declare-fun bs!1238921 () Bool)

(declare-fun d!1714204 () Bool)

(assert (= bs!1238921 (and d!1714204 b!5342227)))

(assert (=> bs!1238921 (= (dynLambda!24211 lambda!273997 (h!67699 (t!374592 (exprs!4909 (h!67700 zl!343))))) (validRegex!6761 (h!67699 (t!374592 (exprs!4909 (h!67700 zl!343))))))))

(declare-fun m!6375442 () Bool)

(assert (=> bs!1238921 m!6375442))

(assert (=> b!5342730 d!1714204))

(declare-fun b_lambda!205227 () Bool)

(assert (= b_lambda!205213 (or b!5342203 b_lambda!205227)))

(declare-fun bs!1238922 () Bool)

(declare-fun d!1714206 () Bool)

(assert (= bs!1238922 (and d!1714206 b!5342203)))

(assert (=> bs!1238922 (= (dynLambda!24212 lambda!273992 (h!67700 zl!343)) (derivationStepZipperUp!397 (h!67700 zl!343) (h!67698 s!2326)))))

(assert (=> bs!1238922 m!6374426))

(assert (=> d!1714088 d!1714206))

(check-sat (not d!1713914) (not b!5342946) (not d!1714088) (not b!5342719) (not bm!381892) (not b!5343291) (not b!5343253) (not b!5342262) (not b!5343193) (not b!5343297) (not b!5343110) (not d!1714178) (not b!5343033) (not b!5342491) (not b!5343234) (not b!5342690) (not b!5342988) (not bm!381913) (not b!5343294) (not b!5343270) (not b!5343221) (not d!1714194) (not d!1714038) (not bs!1238920) (not b!5343026) (not bm!381910) (not b!5342346) (not b!5342255) (not bm!381907) (not b!5343067) (not bm!381900) (not b!5342731) (not d!1713964) (not d!1714190) (not b!5343116) (not d!1714176) (not b!5343209) (not d!1714030) (not b!5343085) (not b!5343111) (not b!5342714) (not d!1714164) (not bm!381854) (not b!5343028) (not b!5342950) (not b!5343063) (not bm!381866) (not b!5343000) (not d!1714140) (not b!5343084) (not d!1714124) (not b!5343284) (not b!5343252) (not d!1714196) (not d!1714074) (not bm!381899) tp_is_empty!39303 (not b!5343027) (not b!5343228) (not b!5343034) (not b!5343006) (not b!5343114) (not b!5343036) (not b!5343229) (not b!5343191) (not d!1714166) (not b!5343241) (not b!5342480) (not b!5343066) (not b!5342931) (not b!5343227) (not d!1713912) (not d!1714184) (not b!5342772) (not b!5343061) (not d!1714112) (not b!5342865) (not b!5342766) (not b!5343207) (not bm!381921) (not b!5342993) (not b!5343289) (not bs!1238922) (not b!5342263) (not b!5343244) (not bm!381919) (not b!5343272) (not b!5343211) (not b!5342863) (not b!5342481) (not d!1714024) (not b_lambda!205223) (not b!5342486) (not d!1714106) (not b!5343202) (not d!1714146) (not d!1714126) (not b!5342877) (not d!1714198) (not b!5343022) (not d!1714150) (not bm!381893) (not b!5343083) (not b!5343023) (not b!5342768) (not b!5343225) (not d!1714180) (not b!5343184) (not d!1714028) (not d!1714022) (not b!5342487) (not bm!381865) (not b!5343208) (not b!5343242) (not bm!381901) (not d!1714128) (not b!5343201) (not d!1713944) (not b!5343286) (not b!5343038) (not bm!381831) (not b!5343277) (not bm!381920) (not b!5343238) (not b!5342636) (not d!1714122) (not d!1714046) (not b!5343236) (not b!5343025) (not b!5343056) (not b!5343237) (not b!5343190) (not d!1714118) (not b!5343232) (not b!5342261) (not b!5342256) (not b!5343258) (not bm!381906) (not setNonEmpty!34495) (not b_lambda!205225) (not b!5343001) (not b!5343219) (not d!1714004) (not b!5343299) (not b!5342259) (not bm!381905) (not b!5342991) (not d!1714162) (not d!1714172) (not b!5343199) (not b!5342697) (not d!1714188) (not d!1714186) (not b!5343024) (not b!5342691) (not b!5343090) (not b!5343235) (not d!1714168) (not b!5343205) (not b!5342693) (not b!5343173) (not b!5342715) (not b!5343245) (not d!1713990) (not d!1713998) (not b!5342966) (not d!1714182) (not b_lambda!205227) (not d!1714174) (not b!5342708) (not b!5342767) (not bm!381894) (not b!5343091) (not b!5343295) (not b!5342709) (not bm!381917) (not d!1714116) (not bs!1238921) (not d!1714200) (not d!1714006) (not b!5342702) (not b!5342257) (not d!1714138) (not d!1714192) (not b!5343210) (not b!5343060) (not b!5343290) (not b!5342695) (not b!5342951) (not b!5343185) (not b!5342986) (not bm!381895) (not b!5343216) (not b!5342692) (not b!5343089) (not b!5343217) (not d!1714012) (not b!5342955) (not b!5342347) (not b!5343271) (not d!1714010) (not bm!381916) (not b!5343059) (not b!5343226) (not b!5343174) (not b!5343243) (not bm!381832) (not b!5342717) (not b!5343198) (not b!5343203) (not b!5343285) (not b!5343288) (not b!5342696) (not d!1714002) (not bm!381918) (not b!5343065) (not b!5343054) (not d!1714170) (not b!5343195) (not b!5343298) (not b!5343293) (not b!5343002) (not b!5342765) (not b!5342935) (not d!1714068) (not b!5343282) (not b!5342769) (not b!5342554) (not b!5342489) (not b!5343087))
(check-sat)
