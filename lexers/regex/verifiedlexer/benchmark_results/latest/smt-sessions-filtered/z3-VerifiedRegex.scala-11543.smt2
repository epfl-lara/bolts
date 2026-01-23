; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!635098 () Bool)

(assert start!635098)

(declare-fun b!6428621 () Bool)

(assert (=> b!6428621 true))

(assert (=> b!6428621 true))

(declare-fun lambda!355545 () Int)

(declare-fun lambda!355544 () Int)

(assert (=> b!6428621 (not (= lambda!355545 lambda!355544))))

(assert (=> b!6428621 true))

(assert (=> b!6428621 true))

(declare-fun b!6428628 () Bool)

(assert (=> b!6428628 true))

(declare-fun bs!1616919 () Bool)

(declare-fun b!6428629 () Bool)

(assert (= bs!1616919 (and b!6428629 b!6428621)))

(declare-datatypes ((C!32936 0))(
  ( (C!32937 (val!26170 Int)) )
))
(declare-datatypes ((Regex!16333 0))(
  ( (ElementMatch!16333 (c!1174748 C!32936)) (Concat!25178 (regOne!33178 Regex!16333) (regTwo!33178 Regex!16333)) (EmptyExpr!16333) (Star!16333 (reg!16662 Regex!16333)) (EmptyLang!16333) (Union!16333 (regOne!33179 Regex!16333) (regTwo!33179 Regex!16333)) )
))
(declare-fun r!7292 () Regex!16333)

(declare-fun lambda!355547 () Int)

(declare-fun lt!2378898 () Regex!16333)

(assert (=> bs!1616919 (= (= lt!2378898 (regOne!33178 r!7292)) (= lambda!355547 lambda!355544))))

(assert (=> bs!1616919 (not (= lambda!355547 lambda!355545))))

(assert (=> b!6428629 true))

(assert (=> b!6428629 true))

(assert (=> b!6428629 true))

(declare-fun lambda!355548 () Int)

(assert (=> bs!1616919 (not (= lambda!355548 lambda!355544))))

(assert (=> bs!1616919 (= (= lt!2378898 (regOne!33178 r!7292)) (= lambda!355548 lambda!355545))))

(assert (=> b!6428629 (not (= lambda!355548 lambda!355547))))

(assert (=> b!6428629 true))

(assert (=> b!6428629 true))

(assert (=> b!6428629 true))

(declare-fun bs!1616920 () Bool)

(declare-fun b!6428631 () Bool)

(assert (= bs!1616920 (and b!6428631 b!6428621)))

(declare-datatypes ((List!65298 0))(
  ( (Nil!65174) (Cons!65174 (h!71622 C!32936) (t!378914 List!65298)) )
))
(declare-fun s!2326 () List!65298)

(declare-datatypes ((tuple2!66624 0))(
  ( (tuple2!66625 (_1!36615 List!65298) (_2!36615 List!65298)) )
))
(declare-fun lt!2378919 () tuple2!66624)

(declare-fun lambda!355549 () Int)

(assert (=> bs!1616920 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) (regOne!33178 r!7292)) (= lt!2378898 (regTwo!33178 r!7292))) (= lambda!355549 lambda!355544))))

(assert (=> bs!1616920 (not (= lambda!355549 lambda!355545))))

(declare-fun bs!1616921 () Bool)

(assert (= bs!1616921 (and b!6428631 b!6428629)))

(assert (=> bs!1616921 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) lt!2378898) (= lt!2378898 (regTwo!33178 r!7292))) (= lambda!355549 lambda!355547))))

(assert (=> bs!1616921 (not (= lambda!355549 lambda!355548))))

(assert (=> b!6428631 true))

(assert (=> b!6428631 true))

(assert (=> b!6428631 true))

(declare-fun lambda!355550 () Int)

(assert (=> bs!1616920 (not (= lambda!355550 lambda!355545))))

(assert (=> b!6428631 (not (= lambda!355550 lambda!355549))))

(assert (=> bs!1616921 (not (= lambda!355550 lambda!355548))))

(assert (=> bs!1616921 (not (= lambda!355550 lambda!355547))))

(assert (=> bs!1616920 (not (= lambda!355550 lambda!355544))))

(assert (=> b!6428631 true))

(assert (=> b!6428631 true))

(assert (=> b!6428631 true))

(declare-fun lambda!355551 () Int)

(assert (=> bs!1616920 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) (regOne!33178 r!7292)) (= lt!2378898 (regTwo!33178 r!7292))) (= lambda!355551 lambda!355545))))

(assert (=> b!6428631 (not (= lambda!355551 lambda!355550))))

(assert (=> b!6428631 (not (= lambda!355551 lambda!355549))))

(assert (=> bs!1616921 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) lt!2378898) (= lt!2378898 (regTwo!33178 r!7292))) (= lambda!355551 lambda!355548))))

(assert (=> bs!1616921 (not (= lambda!355551 lambda!355547))))

(assert (=> bs!1616920 (not (= lambda!355551 lambda!355544))))

(assert (=> b!6428631 true))

(assert (=> b!6428631 true))

(assert (=> b!6428631 true))

(declare-fun b!6428599 () Bool)

(declare-fun e!3900055 () Bool)

(declare-fun e!3900035 () Bool)

(assert (=> b!6428599 (= e!3900055 (not e!3900035))))

(declare-fun res!2642395 () Bool)

(assert (=> b!6428599 (=> res!2642395 e!3900035)))

(declare-datatypes ((List!65299 0))(
  ( (Nil!65175) (Cons!65175 (h!71623 Regex!16333) (t!378915 List!65299)) )
))
(declare-datatypes ((Context!11434 0))(
  ( (Context!11435 (exprs!6217 List!65299)) )
))
(declare-datatypes ((List!65300 0))(
  ( (Nil!65176) (Cons!65176 (h!71624 Context!11434) (t!378916 List!65300)) )
))
(declare-fun zl!343 () List!65300)

(get-info :version)

(assert (=> b!6428599 (= res!2642395 (not ((_ is Cons!65176) zl!343)))))

(declare-fun lt!2378904 () Bool)

(declare-fun lt!2378881 () Bool)

(assert (=> b!6428599 (= lt!2378904 lt!2378881)))

(declare-fun matchRSpec!3434 (Regex!16333 List!65298) Bool)

(assert (=> b!6428599 (= lt!2378881 (matchRSpec!3434 r!7292 s!2326))))

(declare-fun matchR!8516 (Regex!16333 List!65298) Bool)

(assert (=> b!6428599 (= lt!2378904 (matchR!8516 r!7292 s!2326))))

(declare-datatypes ((Unit!158663 0))(
  ( (Unit!158664) )
))
(declare-fun lt!2378873 () Unit!158663)

(declare-fun mainMatchTheorem!3434 (Regex!16333 List!65298) Unit!158663)

(assert (=> b!6428599 (= lt!2378873 (mainMatchTheorem!3434 r!7292 s!2326))))

(declare-fun b!6428600 () Bool)

(declare-fun e!3900045 () Bool)

(declare-fun tp!1783948 () Bool)

(assert (=> b!6428600 (= e!3900045 tp!1783948)))

(declare-fun b!6428601 () Bool)

(declare-fun res!2642384 () Bool)

(declare-fun e!3900057 () Bool)

(assert (=> b!6428601 (=> res!2642384 e!3900057)))

(assert (=> b!6428601 (= res!2642384 (not (matchR!8516 (regTwo!33178 r!7292) (_2!36615 lt!2378919))))))

(declare-fun b!6428602 () Bool)

(declare-fun res!2642382 () Bool)

(assert (=> b!6428602 (=> res!2642382 e!3900035)))

(declare-fun isEmpty!37340 (List!65300) Bool)

(assert (=> b!6428602 (= res!2642382 (not (isEmpty!37340 (t!378916 zl!343))))))

(declare-fun b!6428603 () Bool)

(declare-fun res!2642408 () Bool)

(declare-fun e!3900047 () Bool)

(assert (=> b!6428603 (=> res!2642408 e!3900047)))

(declare-fun lt!2378914 () tuple2!66624)

(assert (=> b!6428603 (= res!2642408 (not (matchR!8516 lt!2378898 (_2!36615 lt!2378914))))))

(declare-fun b!6428604 () Bool)

(declare-fun e!3900036 () Bool)

(declare-fun nullable!6326 (Regex!16333) Bool)

(assert (=> b!6428604 (= e!3900036 (nullable!6326 (regOne!33178 (regOne!33178 r!7292))))))

(declare-fun b!6428605 () Bool)

(declare-fun e!3900038 () Unit!158663)

(declare-fun Unit!158665 () Unit!158663)

(assert (=> b!6428605 (= e!3900038 Unit!158665)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2378896 () (InoxSet Context!11434))

(declare-fun lt!2378906 () Unit!158663)

(declare-fun lt!2378890 () (InoxSet Context!11434))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1164 ((InoxSet Context!11434) (InoxSet Context!11434) List!65298) Unit!158663)

(assert (=> b!6428605 (= lt!2378906 (lemmaZipperConcatMatchesSameAsBothZippers!1164 lt!2378890 lt!2378896 (t!378914 s!2326)))))

(declare-fun res!2642400 () Bool)

(declare-fun matchZipper!2345 ((InoxSet Context!11434) List!65298) Bool)

(assert (=> b!6428605 (= res!2642400 (matchZipper!2345 lt!2378890 (t!378914 s!2326)))))

(declare-fun e!3900042 () Bool)

(assert (=> b!6428605 (=> res!2642400 e!3900042)))

(assert (=> b!6428605 (= (matchZipper!2345 ((_ map or) lt!2378890 lt!2378896) (t!378914 s!2326)) e!3900042)))

(declare-fun b!6428606 () Bool)

(assert (=> b!6428606 (= e!3900042 (matchZipper!2345 lt!2378896 (t!378914 s!2326)))))

(declare-fun b!6428607 () Bool)

(declare-fun e!3900051 () Bool)

(assert (=> b!6428607 (= e!3900051 (or (not lt!2378904) lt!2378881))))

(declare-fun b!6428608 () Bool)

(declare-fun e!3900058 () Bool)

(declare-fun e!3900052 () Bool)

(assert (=> b!6428608 (= e!3900058 e!3900052)))

(declare-fun res!2642404 () Bool)

(assert (=> b!6428608 (=> res!2642404 e!3900052)))

(declare-fun lt!2378889 () Context!11434)

(declare-fun unfocusZipper!2075 (List!65300) Regex!16333)

(assert (=> b!6428608 (= res!2642404 (not (= (unfocusZipper!2075 (Cons!65176 lt!2378889 Nil!65176)) (reg!16662 (regOne!33178 r!7292)))))))

(declare-fun lt!2378891 () (InoxSet Context!11434))

(declare-fun lambda!355546 () Int)

(declare-fun lt!2378920 () Context!11434)

(declare-fun flatMap!1838 ((InoxSet Context!11434) Int) (InoxSet Context!11434))

(declare-fun derivationStepZipperUp!1507 (Context!11434 C!32936) (InoxSet Context!11434))

(assert (=> b!6428608 (= (flatMap!1838 lt!2378891 lambda!355546) (derivationStepZipperUp!1507 lt!2378920 (h!71622 s!2326)))))

(declare-fun lt!2378884 () Unit!158663)

(declare-fun lemmaFlatMapOnSingletonSet!1364 ((InoxSet Context!11434) Context!11434 Int) Unit!158663)

(assert (=> b!6428608 (= lt!2378884 (lemmaFlatMapOnSingletonSet!1364 lt!2378891 lt!2378920 lambda!355546))))

(declare-fun lt!2378886 () (InoxSet Context!11434))

(assert (=> b!6428608 (= (flatMap!1838 lt!2378886 lambda!355546) (derivationStepZipperUp!1507 lt!2378889 (h!71622 s!2326)))))

(declare-fun lt!2378887 () Unit!158663)

(assert (=> b!6428608 (= lt!2378887 (lemmaFlatMapOnSingletonSet!1364 lt!2378886 lt!2378889 lambda!355546))))

(declare-fun lt!2378882 () (InoxSet Context!11434))

(assert (=> b!6428608 (= lt!2378882 (derivationStepZipperUp!1507 lt!2378920 (h!71622 s!2326)))))

(declare-fun lt!2378875 () (InoxSet Context!11434))

(assert (=> b!6428608 (= lt!2378875 (derivationStepZipperUp!1507 lt!2378889 (h!71622 s!2326)))))

(assert (=> b!6428608 (= lt!2378891 (store ((as const (Array Context!11434 Bool)) false) lt!2378920 true))))

(assert (=> b!6428608 (= lt!2378886 (store ((as const (Array Context!11434 Bool)) false) lt!2378889 true))))

(assert (=> b!6428608 (= lt!2378889 (Context!11435 (Cons!65175 (reg!16662 (regOne!33178 r!7292)) Nil!65175)))))

(declare-fun b!6428609 () Bool)

(declare-fun res!2642394 () Bool)

(assert (=> b!6428609 (=> res!2642394 e!3900052)))

(declare-fun lt!2378880 () Regex!16333)

(assert (=> b!6428609 (= res!2642394 (not (= (unfocusZipper!2075 (Cons!65176 lt!2378920 Nil!65176)) lt!2378880)))))

(declare-fun b!6428610 () Bool)

(declare-fun res!2642390 () Bool)

(assert (=> b!6428610 (=> res!2642390 e!3900035)))

(declare-fun generalisedUnion!2177 (List!65299) Regex!16333)

(declare-fun unfocusZipperList!1754 (List!65300) List!65299)

(assert (=> b!6428610 (= res!2642390 (not (= r!7292 (generalisedUnion!2177 (unfocusZipperList!1754 zl!343)))))))

(declare-fun b!6428611 () Bool)

(declare-fun res!2642389 () Bool)

(declare-fun e!3900044 () Bool)

(assert (=> b!6428611 (=> (not res!2642389) (not e!3900044))))

(declare-fun z!1189 () (InoxSet Context!11434))

(declare-fun toList!10117 ((InoxSet Context!11434)) List!65300)

(assert (=> b!6428611 (= res!2642389 (= (toList!10117 z!1189) zl!343))))

(declare-fun b!6428612 () Bool)

(declare-fun res!2642407 () Bool)

(assert (=> b!6428612 (=> res!2642407 e!3900035)))

(declare-fun generalisedConcat!1930 (List!65299) Regex!16333)

(assert (=> b!6428612 (= res!2642407 (not (= r!7292 (generalisedConcat!1930 (exprs!6217 (h!71624 zl!343))))))))

(declare-fun b!6428613 () Bool)

(declare-fun e!3900054 () Bool)

(assert (=> b!6428613 (= e!3900054 e!3900058)))

(declare-fun res!2642383 () Bool)

(assert (=> b!6428613 (=> res!2642383 e!3900058)))

(declare-fun lt!2378916 () Context!11434)

(declare-fun lt!2378878 () Regex!16333)

(assert (=> b!6428613 (= res!2642383 (not (= (unfocusZipper!2075 (Cons!65176 lt!2378916 Nil!65176)) lt!2378878)))))

(assert (=> b!6428613 (= lt!2378878 (Concat!25178 (reg!16662 (regOne!33178 r!7292)) lt!2378880))))

(declare-fun b!6428614 () Bool)

(declare-fun e!3900048 () Bool)

(declare-fun tp!1783953 () Bool)

(assert (=> b!6428614 (= e!3900048 tp!1783953)))

(declare-fun b!6428615 () Bool)

(declare-fun res!2642405 () Bool)

(declare-fun e!3900043 () Bool)

(assert (=> b!6428615 (=> res!2642405 e!3900043)))

(declare-fun lt!2378909 () (InoxSet Context!11434))

(declare-fun lt!2378883 () (InoxSet Context!11434))

(assert (=> b!6428615 (= res!2642405 (not (= (matchZipper!2345 lt!2378883 s!2326) (matchZipper!2345 lt!2378909 (t!378914 s!2326)))))))

(declare-fun b!6428616 () Bool)

(declare-fun res!2642401 () Bool)

(assert (=> b!6428616 (=> res!2642401 e!3900057)))

(assert (=> b!6428616 (= res!2642401 (not (matchR!8516 lt!2378898 (_1!36615 lt!2378919))))))

(declare-fun b!6428617 () Bool)

(declare-fun e!3900049 () Bool)

(declare-fun tp_is_empty!41919 () Bool)

(assert (=> b!6428617 (= e!3900049 tp_is_empty!41919)))

(declare-fun b!6428618 () Bool)

(declare-fun e!3900040 () Bool)

(assert (=> b!6428618 (= e!3900047 e!3900040)))

(declare-fun res!2642413 () Bool)

(assert (=> b!6428618 (=> (not res!2642413) (not e!3900040))))

(declare-fun validRegex!8069 (Regex!16333) Bool)

(assert (=> b!6428618 (= res!2642413 (validRegex!8069 lt!2378898))))

(declare-fun lt!2378893 () List!65298)

(assert (=> b!6428618 (matchR!8516 lt!2378898 lt!2378893)))

(declare-fun lt!2378903 () Unit!158663)

(declare-fun lemmaStarApp!110 (Regex!16333 List!65298 List!65298) Unit!158663)

(assert (=> b!6428618 (= lt!2378903 (lemmaStarApp!110 (reg!16662 (regOne!33178 r!7292)) (_1!36615 lt!2378914) (_2!36615 lt!2378914)))))

(declare-fun e!3900041 () Bool)

(declare-fun tp!1783945 () Bool)

(declare-fun b!6428619 () Bool)

(declare-fun inv!84079 (Context!11434) Bool)

(assert (=> b!6428619 (= e!3900041 (and (inv!84079 (h!71624 zl!343)) e!3900045 tp!1783945))))

(declare-fun b!6428620 () Bool)

(declare-fun tp!1783952 () Bool)

(declare-fun tp!1783951 () Bool)

(assert (=> b!6428620 (= e!3900049 (and tp!1783952 tp!1783951))))

(declare-fun e!3900046 () Bool)

(assert (=> b!6428621 (= e!3900035 e!3900046)))

(declare-fun res!2642396 () Bool)

(assert (=> b!6428621 (=> res!2642396 e!3900046)))

(declare-fun lt!2378874 () Bool)

(assert (=> b!6428621 (= res!2642396 (or (not (= lt!2378904 lt!2378874)) ((_ is Nil!65174) s!2326)))))

(declare-fun Exists!3403 (Int) Bool)

(assert (=> b!6428621 (= (Exists!3403 lambda!355544) (Exists!3403 lambda!355545))))

(declare-fun lt!2378897 () Unit!158663)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1940 (Regex!16333 Regex!16333 List!65298) Unit!158663)

(assert (=> b!6428621 (= lt!2378897 (lemmaExistCutMatchRandMatchRSpecEquivalent!1940 (regOne!33178 r!7292) (regTwo!33178 r!7292) s!2326))))

(assert (=> b!6428621 (= lt!2378874 (Exists!3403 lambda!355544))))

(declare-datatypes ((Option!16224 0))(
  ( (None!16223) (Some!16223 (v!52396 tuple2!66624)) )
))
(declare-fun isDefined!12927 (Option!16224) Bool)

(declare-fun findConcatSeparation!2638 (Regex!16333 Regex!16333 List!65298 List!65298 List!65298) Option!16224)

(assert (=> b!6428621 (= lt!2378874 (isDefined!12927 (findConcatSeparation!2638 (regOne!33178 r!7292) (regTwo!33178 r!7292) Nil!65174 s!2326 s!2326)))))

(declare-fun lt!2378894 () Unit!158663)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2402 (Regex!16333 Regex!16333 List!65298) Unit!158663)

(assert (=> b!6428621 (= lt!2378894 (lemmaFindConcatSeparationEquivalentToExists!2402 (regOne!33178 r!7292) (regTwo!33178 r!7292) s!2326))))

(declare-fun b!6428622 () Bool)

(declare-fun e!3900039 () Bool)

(assert (=> b!6428622 (= e!3900039 e!3900047)))

(declare-fun res!2642409 () Bool)

(assert (=> b!6428622 (=> res!2642409 e!3900047)))

(declare-fun lt!2378900 () List!65298)

(assert (=> b!6428622 (= res!2642409 (not (= lt!2378900 s!2326)))))

(declare-fun lt!2378913 () List!65298)

(declare-fun ++!14401 (List!65298 List!65298) List!65298)

(assert (=> b!6428622 (= lt!2378900 (++!14401 (_1!36615 lt!2378914) lt!2378913))))

(assert (=> b!6428622 (= lt!2378900 (++!14401 lt!2378893 (_2!36615 lt!2378919)))))

(assert (=> b!6428622 (= lt!2378913 (++!14401 (_2!36615 lt!2378914) (_2!36615 lt!2378919)))))

(declare-fun lt!2378905 () Unit!158663)

(declare-fun lemmaConcatAssociativity!2904 (List!65298 List!65298 List!65298) Unit!158663)

(assert (=> b!6428622 (= lt!2378905 (lemmaConcatAssociativity!2904 (_1!36615 lt!2378914) (_2!36615 lt!2378914) (_2!36615 lt!2378919)))))

(declare-fun b!6428623 () Bool)

(declare-fun res!2642411 () Bool)

(assert (=> b!6428623 (=> res!2642411 e!3900035)))

(assert (=> b!6428623 (= res!2642411 (or ((_ is EmptyExpr!16333) r!7292) ((_ is EmptyLang!16333) r!7292) ((_ is ElementMatch!16333) r!7292) ((_ is Union!16333) r!7292) (not ((_ is Concat!25178) r!7292))))))

(declare-fun b!6428624 () Bool)

(declare-fun res!2642414 () Bool)

(assert (=> b!6428624 (=> res!2642414 e!3900047)))

(assert (=> b!6428624 (= res!2642414 (not (matchR!8516 (reg!16662 (regOne!33178 r!7292)) (_1!36615 lt!2378914))))))

(declare-fun b!6428625 () Bool)

(declare-fun Unit!158666 () Unit!158663)

(assert (=> b!6428625 (= e!3900038 Unit!158666)))

(declare-fun setIsEmpty!43896 () Bool)

(declare-fun setRes!43896 () Bool)

(assert (=> setIsEmpty!43896 setRes!43896))

(declare-fun res!2642380 () Bool)

(assert (=> start!635098 (=> (not res!2642380) (not e!3900044))))

(assert (=> start!635098 (= res!2642380 (validRegex!8069 r!7292))))

(assert (=> start!635098 e!3900044))

(assert (=> start!635098 e!3900049))

(declare-fun condSetEmpty!43896 () Bool)

(assert (=> start!635098 (= condSetEmpty!43896 (= z!1189 ((as const (Array Context!11434 Bool)) false)))))

(assert (=> start!635098 setRes!43896))

(assert (=> start!635098 e!3900041))

(declare-fun e!3900050 () Bool)

(assert (=> start!635098 e!3900050))

(declare-fun b!6428626 () Bool)

(assert (=> b!6428626 (= e!3900040 (validRegex!8069 (regTwo!33178 r!7292)))))

(declare-fun b!6428627 () Bool)

(declare-fun res!2642386 () Bool)

(declare-fun e!3900037 () Bool)

(assert (=> b!6428627 (=> res!2642386 e!3900037)))

(assert (=> b!6428627 (= res!2642386 (or ((_ is Concat!25178) (regOne!33178 r!7292)) (not ((_ is Star!16333) (regOne!33178 r!7292)))))))

(assert (=> b!6428628 (= e!3900046 e!3900037)))

(declare-fun res!2642398 () Bool)

(assert (=> b!6428628 (=> res!2642398 e!3900037)))

(assert (=> b!6428628 (= res!2642398 (or (and ((_ is ElementMatch!16333) (regOne!33178 r!7292)) (= (c!1174748 (regOne!33178 r!7292)) (h!71622 s!2326))) ((_ is Union!16333) (regOne!33178 r!7292))))))

(declare-fun lt!2378915 () Unit!158663)

(assert (=> b!6428628 (= lt!2378915 e!3900038)))

(declare-fun c!1174747 () Bool)

(assert (=> b!6428628 (= c!1174747 (nullable!6326 (h!71623 (exprs!6217 (h!71624 zl!343)))))))

(assert (=> b!6428628 (= (flatMap!1838 z!1189 lambda!355546) (derivationStepZipperUp!1507 (h!71624 zl!343) (h!71622 s!2326)))))

(declare-fun lt!2378910 () Unit!158663)

(assert (=> b!6428628 (= lt!2378910 (lemmaFlatMapOnSingletonSet!1364 z!1189 (h!71624 zl!343) lambda!355546))))

(declare-fun lt!2378901 () Context!11434)

(assert (=> b!6428628 (= lt!2378896 (derivationStepZipperUp!1507 lt!2378901 (h!71622 s!2326)))))

(declare-fun derivationStepZipperDown!1581 (Regex!16333 Context!11434 C!32936) (InoxSet Context!11434))

(assert (=> b!6428628 (= lt!2378890 (derivationStepZipperDown!1581 (h!71623 (exprs!6217 (h!71624 zl!343))) lt!2378901 (h!71622 s!2326)))))

(assert (=> b!6428628 (= lt!2378901 (Context!11435 (t!378915 (exprs!6217 (h!71624 zl!343)))))))

(declare-fun lt!2378892 () (InoxSet Context!11434))

(assert (=> b!6428628 (= lt!2378892 (derivationStepZipperUp!1507 (Context!11435 (Cons!65175 (h!71623 (exprs!6217 (h!71624 zl!343))) (t!378915 (exprs!6217 (h!71624 zl!343))))) (h!71622 s!2326)))))

(declare-fun e!3900053 () Bool)

(assert (=> b!6428629 (= e!3900053 e!3900057)))

(declare-fun res!2642388 () Bool)

(assert (=> b!6428629 (=> res!2642388 e!3900057)))

(assert (=> b!6428629 (= res!2642388 (not (= (++!14401 (_1!36615 lt!2378919) (_2!36615 lt!2378919)) s!2326)))))

(declare-fun lt!2378895 () Option!16224)

(declare-fun get!22583 (Option!16224) tuple2!66624)

(assert (=> b!6428629 (= lt!2378919 (get!22583 lt!2378895))))

(assert (=> b!6428629 (= (Exists!3403 lambda!355547) (Exists!3403 lambda!355548))))

(declare-fun lt!2378902 () Unit!158663)

(assert (=> b!6428629 (= lt!2378902 (lemmaExistCutMatchRandMatchRSpecEquivalent!1940 lt!2378898 (regTwo!33178 r!7292) s!2326))))

(assert (=> b!6428629 (= (isDefined!12927 lt!2378895) (Exists!3403 lambda!355547))))

(assert (=> b!6428629 (= lt!2378895 (findConcatSeparation!2638 lt!2378898 (regTwo!33178 r!7292) Nil!65174 s!2326 s!2326))))

(declare-fun lt!2378888 () Unit!158663)

(assert (=> b!6428629 (= lt!2378888 (lemmaFindConcatSeparationEquivalentToExists!2402 lt!2378898 (regTwo!33178 r!7292) s!2326))))

(declare-fun b!6428630 () Bool)

(assert (=> b!6428630 (= e!3900052 e!3900053)))

(declare-fun res!2642393 () Bool)

(assert (=> b!6428630 (=> res!2642393 e!3900053)))

(assert (=> b!6428630 (= res!2642393 (not lt!2378904))))

(assert (=> b!6428630 e!3900051))

(declare-fun res!2642397 () Bool)

(assert (=> b!6428630 (=> (not res!2642397) (not e!3900051))))

(assert (=> b!6428630 (= res!2642397 (= (matchR!8516 lt!2378878 s!2326) (matchRSpec!3434 lt!2378878 s!2326)))))

(declare-fun lt!2378917 () Unit!158663)

(assert (=> b!6428630 (= lt!2378917 (mainMatchTheorem!3434 lt!2378878 s!2326))))

(assert (=> b!6428631 (= e!3900057 e!3900039)))

(declare-fun res!2642403 () Bool)

(assert (=> b!6428631 (=> res!2642403 e!3900039)))

(assert (=> b!6428631 (= res!2642403 (not (= (_1!36615 lt!2378919) lt!2378893)))))

(assert (=> b!6428631 (= lt!2378893 (++!14401 (_1!36615 lt!2378914) (_2!36615 lt!2378914)))))

(declare-fun lt!2378885 () Option!16224)

(assert (=> b!6428631 (= lt!2378914 (get!22583 lt!2378885))))

(assert (=> b!6428631 (= (Exists!3403 lambda!355549) (Exists!3403 lambda!355551))))

(declare-fun lt!2378911 () Unit!158663)

(assert (=> b!6428631 (= lt!2378911 (lemmaExistCutMatchRandMatchRSpecEquivalent!1940 (reg!16662 (regOne!33178 r!7292)) lt!2378898 (_1!36615 lt!2378919)))))

(assert (=> b!6428631 (= (Exists!3403 lambda!355549) (Exists!3403 lambda!355550))))

(declare-fun lt!2378918 () Unit!158663)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!624 (Regex!16333 List!65298) Unit!158663)

(assert (=> b!6428631 (= lt!2378918 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!624 (reg!16662 (regOne!33178 r!7292)) (_1!36615 lt!2378919)))))

(assert (=> b!6428631 (= (isDefined!12927 lt!2378885) (Exists!3403 lambda!355549))))

(assert (=> b!6428631 (= lt!2378885 (findConcatSeparation!2638 (reg!16662 (regOne!33178 r!7292)) lt!2378898 Nil!65174 (_1!36615 lt!2378919) (_1!36615 lt!2378919)))))

(declare-fun lt!2378907 () Unit!158663)

(assert (=> b!6428631 (= lt!2378907 (lemmaFindConcatSeparationEquivalentToExists!2402 (reg!16662 (regOne!33178 r!7292)) lt!2378898 (_1!36615 lt!2378919)))))

(assert (=> b!6428631 (matchRSpec!3434 lt!2378898 (_1!36615 lt!2378919))))

(declare-fun lt!2378912 () Unit!158663)

(assert (=> b!6428631 (= lt!2378912 (mainMatchTheorem!3434 lt!2378898 (_1!36615 lt!2378919)))))

(declare-fun setElem!43896 () Context!11434)

(declare-fun setNonEmpty!43896 () Bool)

(declare-fun tp!1783949 () Bool)

(assert (=> setNonEmpty!43896 (= setRes!43896 (and tp!1783949 (inv!84079 setElem!43896) e!3900048))))

(declare-fun setRest!43896 () (InoxSet Context!11434))

(assert (=> setNonEmpty!43896 (= z!1189 ((_ map or) (store ((as const (Array Context!11434 Bool)) false) setElem!43896 true) setRest!43896))))

(declare-fun b!6428632 () Bool)

(declare-fun e!3900056 () Bool)

(assert (=> b!6428632 (= e!3900037 e!3900056)))

(declare-fun res!2642387 () Bool)

(assert (=> b!6428632 (=> res!2642387 e!3900056)))

(declare-fun lt!2378899 () (InoxSet Context!11434))

(assert (=> b!6428632 (= res!2642387 (not (= lt!2378890 lt!2378899)))))

(assert (=> b!6428632 (= lt!2378899 (derivationStepZipperDown!1581 (reg!16662 (regOne!33178 r!7292)) lt!2378920 (h!71622 s!2326)))))

(declare-fun lt!2378876 () List!65299)

(assert (=> b!6428632 (= lt!2378920 (Context!11435 lt!2378876))))

(assert (=> b!6428632 (= lt!2378876 (Cons!65175 lt!2378898 (t!378915 (exprs!6217 (h!71624 zl!343)))))))

(assert (=> b!6428632 (= lt!2378898 (Star!16333 (reg!16662 (regOne!33178 r!7292))))))

(declare-fun b!6428633 () Bool)

(assert (=> b!6428633 (= e!3900044 e!3900055)))

(declare-fun res!2642402 () Bool)

(assert (=> b!6428633 (=> (not res!2642402) (not e!3900055))))

(declare-fun lt!2378879 () Regex!16333)

(assert (=> b!6428633 (= res!2642402 (= r!7292 lt!2378879))))

(assert (=> b!6428633 (= lt!2378879 (unfocusZipper!2075 zl!343))))

(declare-fun b!6428634 () Bool)

(declare-fun tp!1783950 () Bool)

(declare-fun tp!1783947 () Bool)

(assert (=> b!6428634 (= e!3900049 (and tp!1783950 tp!1783947))))

(declare-fun b!6428635 () Bool)

(declare-fun tp!1783946 () Bool)

(assert (=> b!6428635 (= e!3900049 tp!1783946)))

(declare-fun b!6428636 () Bool)

(declare-fun res!2642399 () Bool)

(assert (=> b!6428636 (=> res!2642399 e!3900037)))

(assert (=> b!6428636 (= res!2642399 e!3900036)))

(declare-fun res!2642392 () Bool)

(assert (=> b!6428636 (=> (not res!2642392) (not e!3900036))))

(assert (=> b!6428636 (= res!2642392 ((_ is Concat!25178) (regOne!33178 r!7292)))))

(declare-fun b!6428637 () Bool)

(assert (=> b!6428637 (= e!3900056 e!3900043)))

(declare-fun res!2642412 () Bool)

(assert (=> b!6428637 (=> res!2642412 e!3900043)))

(assert (=> b!6428637 (= res!2642412 (not (= lt!2378909 lt!2378899)))))

(assert (=> b!6428637 (= (flatMap!1838 lt!2378883 lambda!355546) (derivationStepZipperUp!1507 lt!2378916 (h!71622 s!2326)))))

(declare-fun lt!2378877 () Unit!158663)

(assert (=> b!6428637 (= lt!2378877 (lemmaFlatMapOnSingletonSet!1364 lt!2378883 lt!2378916 lambda!355546))))

(declare-fun lt!2378908 () (InoxSet Context!11434))

(assert (=> b!6428637 (= lt!2378908 (derivationStepZipperUp!1507 lt!2378916 (h!71622 s!2326)))))

(declare-fun derivationStepZipper!2299 ((InoxSet Context!11434) C!32936) (InoxSet Context!11434))

(assert (=> b!6428637 (= lt!2378909 (derivationStepZipper!2299 lt!2378883 (h!71622 s!2326)))))

(assert (=> b!6428637 (= lt!2378883 (store ((as const (Array Context!11434 Bool)) false) lt!2378916 true))))

(assert (=> b!6428637 (= lt!2378916 (Context!11435 (Cons!65175 (reg!16662 (regOne!33178 r!7292)) lt!2378876)))))

(declare-fun b!6428638 () Bool)

(declare-fun res!2642385 () Bool)

(assert (=> b!6428638 (=> res!2642385 e!3900057)))

(declare-fun isEmpty!37341 (List!65298) Bool)

(assert (=> b!6428638 (= res!2642385 (isEmpty!37341 (_1!36615 lt!2378919)))))

(declare-fun b!6428639 () Bool)

(declare-fun res!2642391 () Bool)

(assert (=> b!6428639 (=> res!2642391 e!3900035)))

(assert (=> b!6428639 (= res!2642391 (not ((_ is Cons!65175) (exprs!6217 (h!71624 zl!343)))))))

(declare-fun b!6428640 () Bool)

(declare-fun res!2642406 () Bool)

(assert (=> b!6428640 (=> res!2642406 e!3900046)))

(declare-fun isEmpty!37342 (List!65299) Bool)

(assert (=> b!6428640 (= res!2642406 (isEmpty!37342 (t!378915 (exprs!6217 (h!71624 zl!343)))))))

(declare-fun b!6428641 () Bool)

(declare-fun res!2642381 () Bool)

(assert (=> b!6428641 (=> res!2642381 e!3900043)))

(assert (=> b!6428641 (= res!2642381 (not (= lt!2378879 r!7292)))))

(declare-fun b!6428642 () Bool)

(declare-fun tp!1783954 () Bool)

(assert (=> b!6428642 (= e!3900050 (and tp_is_empty!41919 tp!1783954))))

(declare-fun b!6428643 () Bool)

(assert (=> b!6428643 (= e!3900043 e!3900054)))

(declare-fun res!2642410 () Bool)

(assert (=> b!6428643 (=> res!2642410 e!3900054)))

(assert (=> b!6428643 (= res!2642410 (not (= r!7292 lt!2378880)))))

(assert (=> b!6428643 (= lt!2378880 (Concat!25178 lt!2378898 (regTwo!33178 r!7292)))))

(assert (= (and start!635098 res!2642380) b!6428611))

(assert (= (and b!6428611 res!2642389) b!6428633))

(assert (= (and b!6428633 res!2642402) b!6428599))

(assert (= (and b!6428599 (not res!2642395)) b!6428602))

(assert (= (and b!6428602 (not res!2642382)) b!6428612))

(assert (= (and b!6428612 (not res!2642407)) b!6428639))

(assert (= (and b!6428639 (not res!2642391)) b!6428610))

(assert (= (and b!6428610 (not res!2642390)) b!6428623))

(assert (= (and b!6428623 (not res!2642411)) b!6428621))

(assert (= (and b!6428621 (not res!2642396)) b!6428640))

(assert (= (and b!6428640 (not res!2642406)) b!6428628))

(assert (= (and b!6428628 c!1174747) b!6428605))

(assert (= (and b!6428628 (not c!1174747)) b!6428625))

(assert (= (and b!6428605 (not res!2642400)) b!6428606))

(assert (= (and b!6428628 (not res!2642398)) b!6428636))

(assert (= (and b!6428636 res!2642392) b!6428604))

(assert (= (and b!6428636 (not res!2642399)) b!6428627))

(assert (= (and b!6428627 (not res!2642386)) b!6428632))

(assert (= (and b!6428632 (not res!2642387)) b!6428637))

(assert (= (and b!6428637 (not res!2642412)) b!6428615))

(assert (= (and b!6428615 (not res!2642405)) b!6428641))

(assert (= (and b!6428641 (not res!2642381)) b!6428643))

(assert (= (and b!6428643 (not res!2642410)) b!6428613))

(assert (= (and b!6428613 (not res!2642383)) b!6428608))

(assert (= (and b!6428608 (not res!2642404)) b!6428609))

(assert (= (and b!6428609 (not res!2642394)) b!6428630))

(assert (= (and b!6428630 res!2642397) b!6428607))

(assert (= (and b!6428630 (not res!2642393)) b!6428629))

(assert (= (and b!6428629 (not res!2642388)) b!6428616))

(assert (= (and b!6428616 (not res!2642401)) b!6428601))

(assert (= (and b!6428601 (not res!2642384)) b!6428638))

(assert (= (and b!6428638 (not res!2642385)) b!6428631))

(assert (= (and b!6428631 (not res!2642403)) b!6428622))

(assert (= (and b!6428622 (not res!2642409)) b!6428624))

(assert (= (and b!6428624 (not res!2642414)) b!6428603))

(assert (= (and b!6428603 (not res!2642408)) b!6428618))

(assert (= (and b!6428618 res!2642413) b!6428626))

(assert (= (and start!635098 ((_ is ElementMatch!16333) r!7292)) b!6428617))

(assert (= (and start!635098 ((_ is Concat!25178) r!7292)) b!6428620))

(assert (= (and start!635098 ((_ is Star!16333) r!7292)) b!6428635))

(assert (= (and start!635098 ((_ is Union!16333) r!7292)) b!6428634))

(assert (= (and start!635098 condSetEmpty!43896) setIsEmpty!43896))

(assert (= (and start!635098 (not condSetEmpty!43896)) setNonEmpty!43896))

(assert (= setNonEmpty!43896 b!6428614))

(assert (= b!6428619 b!6428600))

(assert (= (and start!635098 ((_ is Cons!65176) zl!343)) b!6428619))

(assert (= (and start!635098 ((_ is Cons!65174) s!2326)) b!6428642))

(declare-fun m!7222280 () Bool)

(assert (=> b!6428609 m!7222280))

(declare-fun m!7222282 () Bool)

(assert (=> b!6428608 m!7222282))

(declare-fun m!7222284 () Bool)

(assert (=> b!6428608 m!7222284))

(declare-fun m!7222286 () Bool)

(assert (=> b!6428608 m!7222286))

(declare-fun m!7222288 () Bool)

(assert (=> b!6428608 m!7222288))

(declare-fun m!7222290 () Bool)

(assert (=> b!6428608 m!7222290))

(declare-fun m!7222292 () Bool)

(assert (=> b!6428608 m!7222292))

(declare-fun m!7222294 () Bool)

(assert (=> b!6428608 m!7222294))

(declare-fun m!7222296 () Bool)

(assert (=> b!6428608 m!7222296))

(declare-fun m!7222298 () Bool)

(assert (=> b!6428608 m!7222298))

(declare-fun m!7222300 () Bool)

(assert (=> b!6428633 m!7222300))

(declare-fun m!7222302 () Bool)

(assert (=> b!6428602 m!7222302))

(declare-fun m!7222304 () Bool)

(assert (=> start!635098 m!7222304))

(declare-fun m!7222306 () Bool)

(assert (=> b!6428638 m!7222306))

(declare-fun m!7222308 () Bool)

(assert (=> b!6428611 m!7222308))

(declare-fun m!7222310 () Bool)

(assert (=> b!6428621 m!7222310))

(declare-fun m!7222312 () Bool)

(assert (=> b!6428621 m!7222312))

(declare-fun m!7222314 () Bool)

(assert (=> b!6428621 m!7222314))

(declare-fun m!7222316 () Bool)

(assert (=> b!6428621 m!7222316))

(assert (=> b!6428621 m!7222310))

(declare-fun m!7222318 () Bool)

(assert (=> b!6428621 m!7222318))

(assert (=> b!6428621 m!7222312))

(declare-fun m!7222320 () Bool)

(assert (=> b!6428621 m!7222320))

(declare-fun m!7222322 () Bool)

(assert (=> b!6428626 m!7222322))

(declare-fun m!7222324 () Bool)

(assert (=> setNonEmpty!43896 m!7222324))

(declare-fun m!7222326 () Bool)

(assert (=> b!6428630 m!7222326))

(declare-fun m!7222328 () Bool)

(assert (=> b!6428630 m!7222328))

(declare-fun m!7222330 () Bool)

(assert (=> b!6428630 m!7222330))

(declare-fun m!7222332 () Bool)

(assert (=> b!6428605 m!7222332))

(declare-fun m!7222334 () Bool)

(assert (=> b!6428605 m!7222334))

(declare-fun m!7222336 () Bool)

(assert (=> b!6428605 m!7222336))

(declare-fun m!7222338 () Bool)

(assert (=> b!6428624 m!7222338))

(declare-fun m!7222340 () Bool)

(assert (=> b!6428612 m!7222340))

(declare-fun m!7222342 () Bool)

(assert (=> b!6428640 m!7222342))

(declare-fun m!7222344 () Bool)

(assert (=> b!6428628 m!7222344))

(declare-fun m!7222346 () Bool)

(assert (=> b!6428628 m!7222346))

(declare-fun m!7222348 () Bool)

(assert (=> b!6428628 m!7222348))

(declare-fun m!7222350 () Bool)

(assert (=> b!6428628 m!7222350))

(declare-fun m!7222352 () Bool)

(assert (=> b!6428628 m!7222352))

(declare-fun m!7222354 () Bool)

(assert (=> b!6428628 m!7222354))

(declare-fun m!7222356 () Bool)

(assert (=> b!6428628 m!7222356))

(declare-fun m!7222358 () Bool)

(assert (=> b!6428599 m!7222358))

(declare-fun m!7222360 () Bool)

(assert (=> b!6428599 m!7222360))

(declare-fun m!7222362 () Bool)

(assert (=> b!6428599 m!7222362))

(declare-fun m!7222364 () Bool)

(assert (=> b!6428615 m!7222364))

(declare-fun m!7222366 () Bool)

(assert (=> b!6428615 m!7222366))

(declare-fun m!7222368 () Bool)

(assert (=> b!6428629 m!7222368))

(declare-fun m!7222370 () Bool)

(assert (=> b!6428629 m!7222370))

(declare-fun m!7222372 () Bool)

(assert (=> b!6428629 m!7222372))

(declare-fun m!7222374 () Bool)

(assert (=> b!6428629 m!7222374))

(declare-fun m!7222376 () Bool)

(assert (=> b!6428629 m!7222376))

(declare-fun m!7222378 () Bool)

(assert (=> b!6428629 m!7222378))

(assert (=> b!6428629 m!7222368))

(declare-fun m!7222380 () Bool)

(assert (=> b!6428629 m!7222380))

(declare-fun m!7222382 () Bool)

(assert (=> b!6428629 m!7222382))

(declare-fun m!7222384 () Bool)

(assert (=> b!6428603 m!7222384))

(declare-fun m!7222386 () Bool)

(assert (=> b!6428610 m!7222386))

(assert (=> b!6428610 m!7222386))

(declare-fun m!7222388 () Bool)

(assert (=> b!6428610 m!7222388))

(declare-fun m!7222390 () Bool)

(assert (=> b!6428632 m!7222390))

(declare-fun m!7222392 () Bool)

(assert (=> b!6428613 m!7222392))

(declare-fun m!7222394 () Bool)

(assert (=> b!6428622 m!7222394))

(declare-fun m!7222396 () Bool)

(assert (=> b!6428622 m!7222396))

(declare-fun m!7222398 () Bool)

(assert (=> b!6428622 m!7222398))

(declare-fun m!7222400 () Bool)

(assert (=> b!6428622 m!7222400))

(declare-fun m!7222402 () Bool)

(assert (=> b!6428616 m!7222402))

(declare-fun m!7222404 () Bool)

(assert (=> b!6428619 m!7222404))

(declare-fun m!7222406 () Bool)

(assert (=> b!6428601 m!7222406))

(declare-fun m!7222408 () Bool)

(assert (=> b!6428604 m!7222408))

(declare-fun m!7222410 () Bool)

(assert (=> b!6428637 m!7222410))

(declare-fun m!7222412 () Bool)

(assert (=> b!6428637 m!7222412))

(declare-fun m!7222414 () Bool)

(assert (=> b!6428637 m!7222414))

(declare-fun m!7222416 () Bool)

(assert (=> b!6428637 m!7222416))

(declare-fun m!7222418 () Bool)

(assert (=> b!6428637 m!7222418))

(declare-fun m!7222420 () Bool)

(assert (=> b!6428606 m!7222420))

(declare-fun m!7222422 () Bool)

(assert (=> b!6428631 m!7222422))

(assert (=> b!6428631 m!7222422))

(declare-fun m!7222424 () Bool)

(assert (=> b!6428631 m!7222424))

(declare-fun m!7222426 () Bool)

(assert (=> b!6428631 m!7222426))

(declare-fun m!7222428 () Bool)

(assert (=> b!6428631 m!7222428))

(declare-fun m!7222430 () Bool)

(assert (=> b!6428631 m!7222430))

(assert (=> b!6428631 m!7222422))

(declare-fun m!7222432 () Bool)

(assert (=> b!6428631 m!7222432))

(declare-fun m!7222434 () Bool)

(assert (=> b!6428631 m!7222434))

(declare-fun m!7222436 () Bool)

(assert (=> b!6428631 m!7222436))

(declare-fun m!7222438 () Bool)

(assert (=> b!6428631 m!7222438))

(declare-fun m!7222440 () Bool)

(assert (=> b!6428631 m!7222440))

(declare-fun m!7222442 () Bool)

(assert (=> b!6428631 m!7222442))

(declare-fun m!7222444 () Bool)

(assert (=> b!6428631 m!7222444))

(declare-fun m!7222446 () Bool)

(assert (=> b!6428618 m!7222446))

(declare-fun m!7222448 () Bool)

(assert (=> b!6428618 m!7222448))

(declare-fun m!7222450 () Bool)

(assert (=> b!6428618 m!7222450))

(check-sat (not b!6428603) (not b!6428615) (not b!6428611) (not b!6428624) (not b!6428609) (not b!6428630) (not b!6428633) (not b!6428606) (not b!6428631) (not b!6428640) (not b!6428613) (not b!6428632) (not b!6428628) (not b!6428601) (not b!6428634) (not start!635098) (not b!6428618) (not b!6428638) (not b!6428635) (not b!6428599) (not b!6428608) (not b!6428605) (not setNonEmpty!43896) (not b!6428612) (not b!6428626) (not b!6428614) (not b!6428629) tp_is_empty!41919 (not b!6428619) (not b!6428637) (not b!6428621) (not b!6428604) (not b!6428616) (not b!6428602) (not b!6428600) (not b!6428642) (not b!6428622) (not b!6428610) (not b!6428620))
(check-sat)
(get-model)

(declare-fun b!6428954 () Bool)

(declare-fun e!3900231 () Bool)

(declare-fun derivativeStep!5037 (Regex!16333 C!32936) Regex!16333)

(declare-fun head!13156 (List!65298) C!32936)

(declare-fun tail!12241 (List!65298) List!65298)

(assert (=> b!6428954 (= e!3900231 (matchR!8516 (derivativeStep!5037 lt!2378898 (head!13156 (_1!36615 lt!2378919))) (tail!12241 (_1!36615 lt!2378919))))))

(declare-fun b!6428955 () Bool)

(declare-fun e!3900233 () Bool)

(declare-fun e!3900235 () Bool)

(assert (=> b!6428955 (= e!3900233 e!3900235)))

(declare-fun res!2642558 () Bool)

(assert (=> b!6428955 (=> (not res!2642558) (not e!3900235))))

(declare-fun lt!2378970 () Bool)

(assert (=> b!6428955 (= res!2642558 (not lt!2378970))))

(declare-fun b!6428956 () Bool)

(declare-fun e!3900234 () Bool)

(declare-fun e!3900237 () Bool)

(assert (=> b!6428956 (= e!3900234 e!3900237)))

(declare-fun c!1174830 () Bool)

(assert (=> b!6428956 (= c!1174830 ((_ is EmptyLang!16333) lt!2378898))))

(declare-fun b!6428957 () Bool)

(declare-fun res!2642563 () Bool)

(declare-fun e!3900232 () Bool)

(assert (=> b!6428957 (=> res!2642563 e!3900232)))

(assert (=> b!6428957 (= res!2642563 (not (isEmpty!37341 (tail!12241 (_1!36615 lt!2378919)))))))

(declare-fun b!6428958 () Bool)

(assert (=> b!6428958 (= e!3900235 e!3900232)))

(declare-fun res!2642560 () Bool)

(assert (=> b!6428958 (=> res!2642560 e!3900232)))

(declare-fun call!552943 () Bool)

(assert (=> b!6428958 (= res!2642560 call!552943)))

(declare-fun d!2015282 () Bool)

(assert (=> d!2015282 e!3900234))

(declare-fun c!1174832 () Bool)

(assert (=> d!2015282 (= c!1174832 ((_ is EmptyExpr!16333) lt!2378898))))

(assert (=> d!2015282 (= lt!2378970 e!3900231)))

(declare-fun c!1174831 () Bool)

(assert (=> d!2015282 (= c!1174831 (isEmpty!37341 (_1!36615 lt!2378919)))))

(assert (=> d!2015282 (validRegex!8069 lt!2378898)))

(assert (=> d!2015282 (= (matchR!8516 lt!2378898 (_1!36615 lt!2378919)) lt!2378970)))

(declare-fun b!6428959 () Bool)

(declare-fun res!2642561 () Bool)

(declare-fun e!3900236 () Bool)

(assert (=> b!6428959 (=> (not res!2642561) (not e!3900236))))

(assert (=> b!6428959 (= res!2642561 (not call!552943))))

(declare-fun b!6428960 () Bool)

(assert (=> b!6428960 (= e!3900234 (= lt!2378970 call!552943))))

(declare-fun b!6428961 () Bool)

(assert (=> b!6428961 (= e!3900232 (not (= (head!13156 (_1!36615 lt!2378919)) (c!1174748 lt!2378898))))))

(declare-fun bm!552938 () Bool)

(assert (=> bm!552938 (= call!552943 (isEmpty!37341 (_1!36615 lt!2378919)))))

(declare-fun b!6428962 () Bool)

(assert (=> b!6428962 (= e!3900236 (= (head!13156 (_1!36615 lt!2378919)) (c!1174748 lt!2378898)))))

(declare-fun b!6428963 () Bool)

(declare-fun res!2642562 () Bool)

(assert (=> b!6428963 (=> (not res!2642562) (not e!3900236))))

(assert (=> b!6428963 (= res!2642562 (isEmpty!37341 (tail!12241 (_1!36615 lt!2378919))))))

(declare-fun b!6428964 () Bool)

(assert (=> b!6428964 (= e!3900237 (not lt!2378970))))

(declare-fun b!6428965 () Bool)

(assert (=> b!6428965 (= e!3900231 (nullable!6326 lt!2378898))))

(declare-fun b!6428966 () Bool)

(declare-fun res!2642564 () Bool)

(assert (=> b!6428966 (=> res!2642564 e!3900233)))

(assert (=> b!6428966 (= res!2642564 e!3900236)))

(declare-fun res!2642559 () Bool)

(assert (=> b!6428966 (=> (not res!2642559) (not e!3900236))))

(assert (=> b!6428966 (= res!2642559 lt!2378970)))

(declare-fun b!6428967 () Bool)

(declare-fun res!2642557 () Bool)

(assert (=> b!6428967 (=> res!2642557 e!3900233)))

(assert (=> b!6428967 (= res!2642557 (not ((_ is ElementMatch!16333) lt!2378898)))))

(assert (=> b!6428967 (= e!3900237 e!3900233)))

(assert (= (and d!2015282 c!1174831) b!6428965))

(assert (= (and d!2015282 (not c!1174831)) b!6428954))

(assert (= (and d!2015282 c!1174832) b!6428960))

(assert (= (and d!2015282 (not c!1174832)) b!6428956))

(assert (= (and b!6428956 c!1174830) b!6428964))

(assert (= (and b!6428956 (not c!1174830)) b!6428967))

(assert (= (and b!6428967 (not res!2642557)) b!6428966))

(assert (= (and b!6428966 res!2642559) b!6428959))

(assert (= (and b!6428959 res!2642561) b!6428963))

(assert (= (and b!6428963 res!2642562) b!6428962))

(assert (= (and b!6428966 (not res!2642564)) b!6428955))

(assert (= (and b!6428955 res!2642558) b!6428958))

(assert (= (and b!6428958 (not res!2642560)) b!6428957))

(assert (= (and b!6428957 (not res!2642563)) b!6428961))

(assert (= (or b!6428960 b!6428958 b!6428959) bm!552938))

(declare-fun m!7222670 () Bool)

(assert (=> b!6428965 m!7222670))

(assert (=> bm!552938 m!7222306))

(declare-fun m!7222672 () Bool)

(assert (=> b!6428957 m!7222672))

(assert (=> b!6428957 m!7222672))

(declare-fun m!7222674 () Bool)

(assert (=> b!6428957 m!7222674))

(declare-fun m!7222676 () Bool)

(assert (=> b!6428961 m!7222676))

(assert (=> b!6428954 m!7222676))

(assert (=> b!6428954 m!7222676))

(declare-fun m!7222678 () Bool)

(assert (=> b!6428954 m!7222678))

(assert (=> b!6428954 m!7222672))

(assert (=> b!6428954 m!7222678))

(assert (=> b!6428954 m!7222672))

(declare-fun m!7222680 () Bool)

(assert (=> b!6428954 m!7222680))

(assert (=> b!6428963 m!7222672))

(assert (=> b!6428963 m!7222672))

(assert (=> b!6428963 m!7222674))

(assert (=> b!6428962 m!7222676))

(assert (=> d!2015282 m!7222306))

(assert (=> d!2015282 m!7222446))

(assert (=> b!6428616 d!2015282))

(declare-fun d!2015308 () Bool)

(declare-fun choose!47794 ((InoxSet Context!11434) Int) (InoxSet Context!11434))

(assert (=> d!2015308 (= (flatMap!1838 lt!2378883 lambda!355546) (choose!47794 lt!2378883 lambda!355546))))

(declare-fun bs!1616959 () Bool)

(assert (= bs!1616959 d!2015308))

(declare-fun m!7222682 () Bool)

(assert (=> bs!1616959 m!7222682))

(assert (=> b!6428637 d!2015308))

(declare-fun b!6429040 () Bool)

(declare-fun call!552968 () (InoxSet Context!11434))

(declare-fun e!3900279 () (InoxSet Context!11434))

(assert (=> b!6429040 (= e!3900279 ((_ map or) call!552968 (derivationStepZipperUp!1507 (Context!11435 (t!378915 (exprs!6217 lt!2378916))) (h!71622 s!2326))))))

(declare-fun b!6429041 () Bool)

(declare-fun e!3900280 () Bool)

(assert (=> b!6429041 (= e!3900280 (nullable!6326 (h!71623 (exprs!6217 lt!2378916))))))

(declare-fun bm!552963 () Bool)

(assert (=> bm!552963 (= call!552968 (derivationStepZipperDown!1581 (h!71623 (exprs!6217 lt!2378916)) (Context!11435 (t!378915 (exprs!6217 lt!2378916))) (h!71622 s!2326)))))

(declare-fun d!2015310 () Bool)

(declare-fun c!1174861 () Bool)

(assert (=> d!2015310 (= c!1174861 e!3900280)))

(declare-fun res!2642581 () Bool)

(assert (=> d!2015310 (=> (not res!2642581) (not e!3900280))))

(assert (=> d!2015310 (= res!2642581 ((_ is Cons!65175) (exprs!6217 lt!2378916)))))

(assert (=> d!2015310 (= (derivationStepZipperUp!1507 lt!2378916 (h!71622 s!2326)) e!3900279)))

(declare-fun b!6429042 () Bool)

(declare-fun e!3900278 () (InoxSet Context!11434))

(assert (=> b!6429042 (= e!3900278 call!552968)))

(declare-fun b!6429043 () Bool)

(assert (=> b!6429043 (= e!3900278 ((as const (Array Context!11434 Bool)) false))))

(declare-fun b!6429044 () Bool)

(assert (=> b!6429044 (= e!3900279 e!3900278)))

(declare-fun c!1174862 () Bool)

(assert (=> b!6429044 (= c!1174862 ((_ is Cons!65175) (exprs!6217 lt!2378916)))))

(assert (= (and d!2015310 res!2642581) b!6429041))

(assert (= (and d!2015310 c!1174861) b!6429040))

(assert (= (and d!2015310 (not c!1174861)) b!6429044))

(assert (= (and b!6429044 c!1174862) b!6429042))

(assert (= (and b!6429044 (not c!1174862)) b!6429043))

(assert (= (or b!6429040 b!6429042) bm!552963))

(declare-fun m!7222712 () Bool)

(assert (=> b!6429040 m!7222712))

(declare-fun m!7222714 () Bool)

(assert (=> b!6429041 m!7222714))

(declare-fun m!7222716 () Bool)

(assert (=> bm!552963 m!7222716))

(assert (=> b!6428637 d!2015310))

(declare-fun d!2015322 () Bool)

(declare-fun dynLambda!25890 (Int Context!11434) (InoxSet Context!11434))

(assert (=> d!2015322 (= (flatMap!1838 lt!2378883 lambda!355546) (dynLambda!25890 lambda!355546 lt!2378916))))

(declare-fun lt!2378974 () Unit!158663)

(declare-fun choose!47795 ((InoxSet Context!11434) Context!11434 Int) Unit!158663)

(assert (=> d!2015322 (= lt!2378974 (choose!47795 lt!2378883 lt!2378916 lambda!355546))))

(assert (=> d!2015322 (= lt!2378883 (store ((as const (Array Context!11434 Bool)) false) lt!2378916 true))))

(assert (=> d!2015322 (= (lemmaFlatMapOnSingletonSet!1364 lt!2378883 lt!2378916 lambda!355546) lt!2378974)))

(declare-fun b_lambda!244285 () Bool)

(assert (=> (not b_lambda!244285) (not d!2015322)))

(declare-fun bs!1616967 () Bool)

(assert (= bs!1616967 d!2015322))

(assert (=> bs!1616967 m!7222410))

(declare-fun m!7222726 () Bool)

(assert (=> bs!1616967 m!7222726))

(declare-fun m!7222728 () Bool)

(assert (=> bs!1616967 m!7222728))

(assert (=> bs!1616967 m!7222416))

(assert (=> b!6428637 d!2015322))

(declare-fun bs!1616976 () Bool)

(declare-fun d!2015326 () Bool)

(assert (= bs!1616976 (and d!2015326 b!6428628)))

(declare-fun lambda!355580 () Int)

(assert (=> bs!1616976 (= lambda!355580 lambda!355546)))

(assert (=> d!2015326 true))

(assert (=> d!2015326 (= (derivationStepZipper!2299 lt!2378883 (h!71622 s!2326)) (flatMap!1838 lt!2378883 lambda!355580))))

(declare-fun bs!1616978 () Bool)

(assert (= bs!1616978 d!2015326))

(declare-fun m!7222730 () Bool)

(assert (=> bs!1616978 m!7222730))

(assert (=> b!6428637 d!2015326))

(declare-fun d!2015328 () Bool)

(declare-fun lt!2378978 () Regex!16333)

(assert (=> d!2015328 (validRegex!8069 lt!2378978)))

(assert (=> d!2015328 (= lt!2378978 (generalisedUnion!2177 (unfocusZipperList!1754 zl!343)))))

(assert (=> d!2015328 (= (unfocusZipper!2075 zl!343) lt!2378978)))

(declare-fun bs!1616980 () Bool)

(assert (= bs!1616980 d!2015328))

(declare-fun m!7222740 () Bool)

(assert (=> bs!1616980 m!7222740))

(assert (=> bs!1616980 m!7222386))

(assert (=> bs!1616980 m!7222386))

(assert (=> bs!1616980 m!7222388))

(assert (=> b!6428633 d!2015328))

(declare-fun d!2015334 () Bool)

(declare-fun lt!2378979 () Regex!16333)

(assert (=> d!2015334 (validRegex!8069 lt!2378979)))

(assert (=> d!2015334 (= lt!2378979 (generalisedUnion!2177 (unfocusZipperList!1754 (Cons!65176 lt!2378916 Nil!65176))))))

(assert (=> d!2015334 (= (unfocusZipper!2075 (Cons!65176 lt!2378916 Nil!65176)) lt!2378979)))

(declare-fun bs!1616981 () Bool)

(assert (= bs!1616981 d!2015334))

(declare-fun m!7222742 () Bool)

(assert (=> bs!1616981 m!7222742))

(declare-fun m!7222744 () Bool)

(assert (=> bs!1616981 m!7222744))

(assert (=> bs!1616981 m!7222744))

(declare-fun m!7222746 () Bool)

(assert (=> bs!1616981 m!7222746))

(assert (=> b!6428613 d!2015334))

(declare-fun b!6429119 () Bool)

(declare-fun c!1174897 () Bool)

(assert (=> b!6429119 (= c!1174897 ((_ is Star!16333) (reg!16662 (regOne!33178 r!7292))))))

(declare-fun e!3900324 () (InoxSet Context!11434))

(declare-fun e!3900323 () (InoxSet Context!11434))

(assert (=> b!6429119 (= e!3900324 e!3900323)))

(declare-fun bm!552978 () Bool)

(declare-fun call!552985 () List!65299)

(declare-fun call!552983 () List!65299)

(assert (=> bm!552978 (= call!552985 call!552983)))

(declare-fun b!6429120 () Bool)

(declare-fun e!3900327 () (InoxSet Context!11434))

(declare-fun call!552986 () (InoxSet Context!11434))

(declare-fun call!552988 () (InoxSet Context!11434))

(assert (=> b!6429120 (= e!3900327 ((_ map or) call!552986 call!552988))))

(declare-fun c!1174893 () Bool)

(declare-fun bm!552979 () Bool)

(declare-fun c!1174895 () Bool)

(declare-fun c!1174894 () Bool)

(assert (=> bm!552979 (= call!552986 (derivationStepZipperDown!1581 (ite c!1174895 (regOne!33179 (reg!16662 (regOne!33178 r!7292))) (ite c!1174894 (regTwo!33178 (reg!16662 (regOne!33178 r!7292))) (ite c!1174893 (regOne!33178 (reg!16662 (regOne!33178 r!7292))) (reg!16662 (reg!16662 (regOne!33178 r!7292)))))) (ite (or c!1174895 c!1174894) lt!2378920 (Context!11435 call!552985)) (h!71622 s!2326)))))

(declare-fun b!6429122 () Bool)

(declare-fun e!3900325 () (InoxSet Context!11434))

(assert (=> b!6429122 (= e!3900325 e!3900324)))

(assert (=> b!6429122 (= c!1174893 ((_ is Concat!25178) (reg!16662 (regOne!33178 r!7292))))))

(declare-fun bm!552980 () Bool)

(declare-fun $colon$colon!2193 (List!65299 Regex!16333) List!65299)

(assert (=> bm!552980 (= call!552983 ($colon$colon!2193 (exprs!6217 lt!2378920) (ite (or c!1174894 c!1174893) (regTwo!33178 (reg!16662 (regOne!33178 r!7292))) (reg!16662 (regOne!33178 r!7292)))))))

(declare-fun bm!552981 () Bool)

(declare-fun call!552987 () (InoxSet Context!11434))

(declare-fun call!552984 () (InoxSet Context!11434))

(assert (=> bm!552981 (= call!552987 call!552984)))

(declare-fun b!6429123 () Bool)

(declare-fun e!3900328 () Bool)

(assert (=> b!6429123 (= c!1174894 e!3900328)))

(declare-fun res!2642598 () Bool)

(assert (=> b!6429123 (=> (not res!2642598) (not e!3900328))))

(assert (=> b!6429123 (= res!2642598 ((_ is Concat!25178) (reg!16662 (regOne!33178 r!7292))))))

(assert (=> b!6429123 (= e!3900327 e!3900325)))

(declare-fun bm!552982 () Bool)

(assert (=> bm!552982 (= call!552988 (derivationStepZipperDown!1581 (ite c!1174895 (regTwo!33179 (reg!16662 (regOne!33178 r!7292))) (regOne!33178 (reg!16662 (regOne!33178 r!7292)))) (ite c!1174895 lt!2378920 (Context!11435 call!552983)) (h!71622 s!2326)))))

(declare-fun b!6429124 () Bool)

(assert (=> b!6429124 (= e!3900325 ((_ map or) call!552988 call!552984))))

(declare-fun b!6429125 () Bool)

(assert (=> b!6429125 (= e!3900323 call!552987)))

(declare-fun b!6429126 () Bool)

(assert (=> b!6429126 (= e!3900328 (nullable!6326 (regOne!33178 (reg!16662 (regOne!33178 r!7292)))))))

(declare-fun b!6429121 () Bool)

(declare-fun e!3900326 () (InoxSet Context!11434))

(assert (=> b!6429121 (= e!3900326 (store ((as const (Array Context!11434 Bool)) false) lt!2378920 true))))

(declare-fun d!2015336 () Bool)

(declare-fun c!1174896 () Bool)

(assert (=> d!2015336 (= c!1174896 (and ((_ is ElementMatch!16333) (reg!16662 (regOne!33178 r!7292))) (= (c!1174748 (reg!16662 (regOne!33178 r!7292))) (h!71622 s!2326))))))

(assert (=> d!2015336 (= (derivationStepZipperDown!1581 (reg!16662 (regOne!33178 r!7292)) lt!2378920 (h!71622 s!2326)) e!3900326)))

(declare-fun bm!552983 () Bool)

(assert (=> bm!552983 (= call!552984 call!552986)))

(declare-fun b!6429127 () Bool)

(assert (=> b!6429127 (= e!3900326 e!3900327)))

(assert (=> b!6429127 (= c!1174895 ((_ is Union!16333) (reg!16662 (regOne!33178 r!7292))))))

(declare-fun b!6429128 () Bool)

(assert (=> b!6429128 (= e!3900323 ((as const (Array Context!11434 Bool)) false))))

(declare-fun b!6429129 () Bool)

(assert (=> b!6429129 (= e!3900324 call!552987)))

(assert (= (and d!2015336 c!1174896) b!6429121))

(assert (= (and d!2015336 (not c!1174896)) b!6429127))

(assert (= (and b!6429127 c!1174895) b!6429120))

(assert (= (and b!6429127 (not c!1174895)) b!6429123))

(assert (= (and b!6429123 res!2642598) b!6429126))

(assert (= (and b!6429123 c!1174894) b!6429124))

(assert (= (and b!6429123 (not c!1174894)) b!6429122))

(assert (= (and b!6429122 c!1174893) b!6429129))

(assert (= (and b!6429122 (not c!1174893)) b!6429119))

(assert (= (and b!6429119 c!1174897) b!6429125))

(assert (= (and b!6429119 (not c!1174897)) b!6429128))

(assert (= (or b!6429129 b!6429125) bm!552978))

(assert (= (or b!6429129 b!6429125) bm!552981))

(assert (= (or b!6429124 bm!552978) bm!552980))

(assert (= (or b!6429124 bm!552981) bm!552983))

(assert (= (or b!6429120 b!6429124) bm!552982))

(assert (= (or b!6429120 bm!552983) bm!552979))

(declare-fun m!7222786 () Bool)

(assert (=> bm!552979 m!7222786))

(declare-fun m!7222788 () Bool)

(assert (=> b!6429126 m!7222788))

(assert (=> b!6429121 m!7222290))

(declare-fun m!7222790 () Bool)

(assert (=> bm!552980 m!7222790))

(declare-fun m!7222792 () Bool)

(assert (=> bm!552982 m!7222792))

(assert (=> b!6428632 d!2015336))

(declare-fun d!2015346 () Bool)

(declare-fun c!1174900 () Bool)

(assert (=> d!2015346 (= c!1174900 (isEmpty!37341 s!2326))))

(declare-fun e!3900331 () Bool)

(assert (=> d!2015346 (= (matchZipper!2345 lt!2378883 s!2326) e!3900331)))

(declare-fun b!6429134 () Bool)

(declare-fun nullableZipper!2098 ((InoxSet Context!11434)) Bool)

(assert (=> b!6429134 (= e!3900331 (nullableZipper!2098 lt!2378883))))

(declare-fun b!6429135 () Bool)

(assert (=> b!6429135 (= e!3900331 (matchZipper!2345 (derivationStepZipper!2299 lt!2378883 (head!13156 s!2326)) (tail!12241 s!2326)))))

(assert (= (and d!2015346 c!1174900) b!6429134))

(assert (= (and d!2015346 (not c!1174900)) b!6429135))

(declare-fun m!7222798 () Bool)

(assert (=> d!2015346 m!7222798))

(declare-fun m!7222800 () Bool)

(assert (=> b!6429134 m!7222800))

(declare-fun m!7222802 () Bool)

(assert (=> b!6429135 m!7222802))

(assert (=> b!6429135 m!7222802))

(declare-fun m!7222804 () Bool)

(assert (=> b!6429135 m!7222804))

(declare-fun m!7222806 () Bool)

(assert (=> b!6429135 m!7222806))

(assert (=> b!6429135 m!7222804))

(assert (=> b!6429135 m!7222806))

(declare-fun m!7222808 () Bool)

(assert (=> b!6429135 m!7222808))

(assert (=> b!6428615 d!2015346))

(declare-fun d!2015350 () Bool)

(declare-fun c!1174901 () Bool)

(assert (=> d!2015350 (= c!1174901 (isEmpty!37341 (t!378914 s!2326)))))

(declare-fun e!3900332 () Bool)

(assert (=> d!2015350 (= (matchZipper!2345 lt!2378909 (t!378914 s!2326)) e!3900332)))

(declare-fun b!6429136 () Bool)

(assert (=> b!6429136 (= e!3900332 (nullableZipper!2098 lt!2378909))))

(declare-fun b!6429137 () Bool)

(assert (=> b!6429137 (= e!3900332 (matchZipper!2345 (derivationStepZipper!2299 lt!2378909 (head!13156 (t!378914 s!2326))) (tail!12241 (t!378914 s!2326))))))

(assert (= (and d!2015350 c!1174901) b!6429136))

(assert (= (and d!2015350 (not c!1174901)) b!6429137))

(declare-fun m!7222810 () Bool)

(assert (=> d!2015350 m!7222810))

(declare-fun m!7222812 () Bool)

(assert (=> b!6429136 m!7222812))

(declare-fun m!7222814 () Bool)

(assert (=> b!6429137 m!7222814))

(assert (=> b!6429137 m!7222814))

(declare-fun m!7222816 () Bool)

(assert (=> b!6429137 m!7222816))

(declare-fun m!7222818 () Bool)

(assert (=> b!6429137 m!7222818))

(assert (=> b!6429137 m!7222816))

(assert (=> b!6429137 m!7222818))

(declare-fun m!7222820 () Bool)

(assert (=> b!6429137 m!7222820))

(assert (=> b!6428615 d!2015350))

(declare-fun b!6429213 () Bool)

(declare-fun e!3900378 () Option!16224)

(assert (=> b!6429213 (= e!3900378 None!16223)))

(declare-fun b!6429214 () Bool)

(declare-fun lt!2379001 () Unit!158663)

(declare-fun lt!2379003 () Unit!158663)

(assert (=> b!6429214 (= lt!2379001 lt!2379003)))

(assert (=> b!6429214 (= (++!14401 (++!14401 Nil!65174 (Cons!65174 (h!71622 s!2326) Nil!65174)) (t!378914 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2496 (List!65298 C!32936 List!65298 List!65298) Unit!158663)

(assert (=> b!6429214 (= lt!2379003 (lemmaMoveElementToOtherListKeepsConcatEq!2496 Nil!65174 (h!71622 s!2326) (t!378914 s!2326) s!2326))))

(assert (=> b!6429214 (= e!3900378 (findConcatSeparation!2638 (regOne!33178 r!7292) (regTwo!33178 r!7292) (++!14401 Nil!65174 (Cons!65174 (h!71622 s!2326) Nil!65174)) (t!378914 s!2326) s!2326))))

(declare-fun b!6429215 () Bool)

(declare-fun res!2642637 () Bool)

(declare-fun e!3900377 () Bool)

(assert (=> b!6429215 (=> (not res!2642637) (not e!3900377))))

(declare-fun lt!2379002 () Option!16224)

(assert (=> b!6429215 (= res!2642637 (matchR!8516 (regTwo!33178 r!7292) (_2!36615 (get!22583 lt!2379002))))))

(declare-fun b!6429216 () Bool)

(declare-fun e!3900380 () Option!16224)

(assert (=> b!6429216 (= e!3900380 (Some!16223 (tuple2!66625 Nil!65174 s!2326)))))

(declare-fun b!6429217 () Bool)

(declare-fun e!3900379 () Bool)

(assert (=> b!6429217 (= e!3900379 (matchR!8516 (regTwo!33178 r!7292) s!2326))))

(declare-fun b!6429218 () Bool)

(declare-fun e!3900376 () Bool)

(assert (=> b!6429218 (= e!3900376 (not (isDefined!12927 lt!2379002)))))

(declare-fun b!6429220 () Bool)

(declare-fun res!2642635 () Bool)

(assert (=> b!6429220 (=> (not res!2642635) (not e!3900377))))

(assert (=> b!6429220 (= res!2642635 (matchR!8516 (regOne!33178 r!7292) (_1!36615 (get!22583 lt!2379002))))))

(declare-fun b!6429221 () Bool)

(assert (=> b!6429221 (= e!3900377 (= (++!14401 (_1!36615 (get!22583 lt!2379002)) (_2!36615 (get!22583 lt!2379002))) s!2326))))

(declare-fun b!6429219 () Bool)

(assert (=> b!6429219 (= e!3900380 e!3900378)))

(declare-fun c!1174923 () Bool)

(assert (=> b!6429219 (= c!1174923 ((_ is Nil!65174) s!2326))))

(declare-fun d!2015352 () Bool)

(assert (=> d!2015352 e!3900376))

(declare-fun res!2642636 () Bool)

(assert (=> d!2015352 (=> res!2642636 e!3900376)))

(assert (=> d!2015352 (= res!2642636 e!3900377)))

(declare-fun res!2642634 () Bool)

(assert (=> d!2015352 (=> (not res!2642634) (not e!3900377))))

(assert (=> d!2015352 (= res!2642634 (isDefined!12927 lt!2379002))))

(assert (=> d!2015352 (= lt!2379002 e!3900380)))

(declare-fun c!1174922 () Bool)

(assert (=> d!2015352 (= c!1174922 e!3900379)))

(declare-fun res!2642638 () Bool)

(assert (=> d!2015352 (=> (not res!2642638) (not e!3900379))))

(assert (=> d!2015352 (= res!2642638 (matchR!8516 (regOne!33178 r!7292) Nil!65174))))

(assert (=> d!2015352 (validRegex!8069 (regOne!33178 r!7292))))

(assert (=> d!2015352 (= (findConcatSeparation!2638 (regOne!33178 r!7292) (regTwo!33178 r!7292) Nil!65174 s!2326 s!2326) lt!2379002)))

(assert (= (and d!2015352 res!2642638) b!6429217))

(assert (= (and d!2015352 c!1174922) b!6429216))

(assert (= (and d!2015352 (not c!1174922)) b!6429219))

(assert (= (and b!6429219 c!1174923) b!6429213))

(assert (= (and b!6429219 (not c!1174923)) b!6429214))

(assert (= (and d!2015352 res!2642634) b!6429220))

(assert (= (and b!6429220 res!2642635) b!6429215))

(assert (= (and b!6429215 res!2642637) b!6429221))

(assert (= (and d!2015352 (not res!2642636)) b!6429218))

(declare-fun m!7222916 () Bool)

(assert (=> b!6429218 m!7222916))

(declare-fun m!7222920 () Bool)

(assert (=> b!6429215 m!7222920))

(declare-fun m!7222924 () Bool)

(assert (=> b!6429215 m!7222924))

(declare-fun m!7222926 () Bool)

(assert (=> b!6429214 m!7222926))

(assert (=> b!6429214 m!7222926))

(declare-fun m!7222928 () Bool)

(assert (=> b!6429214 m!7222928))

(declare-fun m!7222930 () Bool)

(assert (=> b!6429214 m!7222930))

(assert (=> b!6429214 m!7222926))

(declare-fun m!7222932 () Bool)

(assert (=> b!6429214 m!7222932))

(assert (=> d!2015352 m!7222916))

(declare-fun m!7222934 () Bool)

(assert (=> d!2015352 m!7222934))

(declare-fun m!7222936 () Bool)

(assert (=> d!2015352 m!7222936))

(assert (=> b!6429221 m!7222920))

(declare-fun m!7222938 () Bool)

(assert (=> b!6429221 m!7222938))

(declare-fun m!7222940 () Bool)

(assert (=> b!6429217 m!7222940))

(assert (=> b!6429220 m!7222920))

(declare-fun m!7222942 () Bool)

(assert (=> b!6429220 m!7222942))

(assert (=> b!6428621 d!2015352))

(declare-fun d!2015388 () Bool)

(declare-fun choose!47798 (Int) Bool)

(assert (=> d!2015388 (= (Exists!3403 lambda!355545) (choose!47798 lambda!355545))))

(declare-fun bs!1617022 () Bool)

(assert (= bs!1617022 d!2015388))

(declare-fun m!7222944 () Bool)

(assert (=> bs!1617022 m!7222944))

(assert (=> b!6428621 d!2015388))

(declare-fun d!2015390 () Bool)

(assert (=> d!2015390 (= (Exists!3403 lambda!355544) (choose!47798 lambda!355544))))

(declare-fun bs!1617024 () Bool)

(assert (= bs!1617024 d!2015390))

(declare-fun m!7222946 () Bool)

(assert (=> bs!1617024 m!7222946))

(assert (=> b!6428621 d!2015390))

(declare-fun bs!1617049 () Bool)

(declare-fun d!2015392 () Bool)

(assert (= bs!1617049 (and d!2015392 b!6428621)))

(declare-fun lambda!355596 () Int)

(assert (=> bs!1617049 (not (= lambda!355596 lambda!355545))))

(declare-fun bs!1617050 () Bool)

(assert (= bs!1617050 (and d!2015392 b!6428631)))

(assert (=> bs!1617050 (not (= lambda!355596 lambda!355550))))

(assert (=> bs!1617050 (not (= lambda!355596 lambda!355551))))

(assert (=> bs!1617050 (= (and (= s!2326 (_1!36615 lt!2378919)) (= (regOne!33178 r!7292) (reg!16662 (regOne!33178 r!7292))) (= (regTwo!33178 r!7292) lt!2378898)) (= lambda!355596 lambda!355549))))

(declare-fun bs!1617051 () Bool)

(assert (= bs!1617051 (and d!2015392 b!6428629)))

(assert (=> bs!1617051 (not (= lambda!355596 lambda!355548))))

(assert (=> bs!1617051 (= (= (regOne!33178 r!7292) lt!2378898) (= lambda!355596 lambda!355547))))

(assert (=> bs!1617049 (= lambda!355596 lambda!355544)))

(assert (=> d!2015392 true))

(assert (=> d!2015392 true))

(assert (=> d!2015392 true))

(assert (=> d!2015392 (= (isDefined!12927 (findConcatSeparation!2638 (regOne!33178 r!7292) (regTwo!33178 r!7292) Nil!65174 s!2326 s!2326)) (Exists!3403 lambda!355596))))

(declare-fun lt!2379009 () Unit!158663)

(declare-fun choose!47799 (Regex!16333 Regex!16333 List!65298) Unit!158663)

(assert (=> d!2015392 (= lt!2379009 (choose!47799 (regOne!33178 r!7292) (regTwo!33178 r!7292) s!2326))))

(assert (=> d!2015392 (validRegex!8069 (regOne!33178 r!7292))))

(assert (=> d!2015392 (= (lemmaFindConcatSeparationEquivalentToExists!2402 (regOne!33178 r!7292) (regTwo!33178 r!7292) s!2326) lt!2379009)))

(declare-fun bs!1617052 () Bool)

(assert (= bs!1617052 d!2015392))

(assert (=> bs!1617052 m!7222936))

(declare-fun m!7222964 () Bool)

(assert (=> bs!1617052 m!7222964))

(declare-fun m!7222966 () Bool)

(assert (=> bs!1617052 m!7222966))

(assert (=> bs!1617052 m!7222312))

(assert (=> bs!1617052 m!7222314))

(assert (=> bs!1617052 m!7222312))

(assert (=> b!6428621 d!2015392))

(declare-fun bs!1617055 () Bool)

(declare-fun d!2015402 () Bool)

(assert (= bs!1617055 (and d!2015402 b!6428621)))

(declare-fun lambda!355606 () Int)

(assert (=> bs!1617055 (not (= lambda!355606 lambda!355545))))

(declare-fun bs!1617057 () Bool)

(assert (= bs!1617057 (and d!2015402 d!2015392)))

(assert (=> bs!1617057 (= lambda!355606 lambda!355596)))

(declare-fun bs!1617059 () Bool)

(assert (= bs!1617059 (and d!2015402 b!6428631)))

(assert (=> bs!1617059 (not (= lambda!355606 lambda!355550))))

(assert (=> bs!1617059 (not (= lambda!355606 lambda!355551))))

(assert (=> bs!1617059 (= (and (= s!2326 (_1!36615 lt!2378919)) (= (regOne!33178 r!7292) (reg!16662 (regOne!33178 r!7292))) (= (regTwo!33178 r!7292) lt!2378898)) (= lambda!355606 lambda!355549))))

(declare-fun bs!1617063 () Bool)

(assert (= bs!1617063 (and d!2015402 b!6428629)))

(assert (=> bs!1617063 (not (= lambda!355606 lambda!355548))))

(assert (=> bs!1617063 (= (= (regOne!33178 r!7292) lt!2378898) (= lambda!355606 lambda!355547))))

(assert (=> bs!1617055 (= lambda!355606 lambda!355544)))

(assert (=> d!2015402 true))

(assert (=> d!2015402 true))

(assert (=> d!2015402 true))

(declare-fun lambda!355607 () Int)

(assert (=> bs!1617055 (= lambda!355607 lambda!355545)))

(assert (=> bs!1617057 (not (= lambda!355607 lambda!355596))))

(assert (=> bs!1617059 (not (= lambda!355607 lambda!355550))))

(assert (=> bs!1617059 (= (and (= s!2326 (_1!36615 lt!2378919)) (= (regOne!33178 r!7292) (reg!16662 (regOne!33178 r!7292))) (= (regTwo!33178 r!7292) lt!2378898)) (= lambda!355607 lambda!355551))))

(declare-fun bs!1617070 () Bool)

(assert (= bs!1617070 d!2015402))

(assert (=> bs!1617070 (not (= lambda!355607 lambda!355606))))

(assert (=> bs!1617059 (not (= lambda!355607 lambda!355549))))

(assert (=> bs!1617063 (= (= (regOne!33178 r!7292) lt!2378898) (= lambda!355607 lambda!355548))))

(assert (=> bs!1617063 (not (= lambda!355607 lambda!355547))))

(assert (=> bs!1617055 (not (= lambda!355607 lambda!355544))))

(assert (=> d!2015402 true))

(assert (=> d!2015402 true))

(assert (=> d!2015402 true))

(assert (=> d!2015402 (= (Exists!3403 lambda!355606) (Exists!3403 lambda!355607))))

(declare-fun lt!2379016 () Unit!158663)

(declare-fun choose!47800 (Regex!16333 Regex!16333 List!65298) Unit!158663)

(assert (=> d!2015402 (= lt!2379016 (choose!47800 (regOne!33178 r!7292) (regTwo!33178 r!7292) s!2326))))

(assert (=> d!2015402 (validRegex!8069 (regOne!33178 r!7292))))

(assert (=> d!2015402 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1940 (regOne!33178 r!7292) (regTwo!33178 r!7292) s!2326) lt!2379016)))

(declare-fun m!7222968 () Bool)

(assert (=> bs!1617070 m!7222968))

(declare-fun m!7222970 () Bool)

(assert (=> bs!1617070 m!7222970))

(declare-fun m!7222972 () Bool)

(assert (=> bs!1617070 m!7222972))

(assert (=> bs!1617070 m!7222936))

(assert (=> b!6428621 d!2015402))

(declare-fun d!2015404 () Bool)

(declare-fun isEmpty!37344 (Option!16224) Bool)

(assert (=> d!2015404 (= (isDefined!12927 (findConcatSeparation!2638 (regOne!33178 r!7292) (regTwo!33178 r!7292) Nil!65174 s!2326 s!2326)) (not (isEmpty!37344 (findConcatSeparation!2638 (regOne!33178 r!7292) (regTwo!33178 r!7292) Nil!65174 s!2326 s!2326))))))

(declare-fun bs!1617072 () Bool)

(assert (= bs!1617072 d!2015404))

(assert (=> bs!1617072 m!7222312))

(declare-fun m!7222974 () Bool)

(assert (=> bs!1617072 m!7222974))

(assert (=> b!6428621 d!2015404))

(declare-fun d!2015406 () Bool)

(assert (=> d!2015406 (= (isEmpty!37342 (t!378915 (exprs!6217 (h!71624 zl!343)))) ((_ is Nil!65175) (t!378915 (exprs!6217 (h!71624 zl!343)))))))

(assert (=> b!6428640 d!2015406))

(declare-fun b!6429258 () Bool)

(declare-fun e!3900398 () Bool)

(assert (=> b!6429258 (= e!3900398 (matchR!8516 (derivativeStep!5037 (regTwo!33178 r!7292) (head!13156 (_2!36615 lt!2378919))) (tail!12241 (_2!36615 lt!2378919))))))

(declare-fun b!6429259 () Bool)

(declare-fun e!3900400 () Bool)

(declare-fun e!3900402 () Bool)

(assert (=> b!6429259 (= e!3900400 e!3900402)))

(declare-fun res!2642670 () Bool)

(assert (=> b!6429259 (=> (not res!2642670) (not e!3900402))))

(declare-fun lt!2379017 () Bool)

(assert (=> b!6429259 (= res!2642670 (not lt!2379017))))

(declare-fun b!6429260 () Bool)

(declare-fun e!3900401 () Bool)

(declare-fun e!3900404 () Bool)

(assert (=> b!6429260 (= e!3900401 e!3900404)))

(declare-fun c!1174927 () Bool)

(assert (=> b!6429260 (= c!1174927 ((_ is EmptyLang!16333) (regTwo!33178 r!7292)))))

(declare-fun b!6429261 () Bool)

(declare-fun res!2642675 () Bool)

(declare-fun e!3900399 () Bool)

(assert (=> b!6429261 (=> res!2642675 e!3900399)))

(assert (=> b!6429261 (= res!2642675 (not (isEmpty!37341 (tail!12241 (_2!36615 lt!2378919)))))))

(declare-fun b!6429262 () Bool)

(assert (=> b!6429262 (= e!3900402 e!3900399)))

(declare-fun res!2642672 () Bool)

(assert (=> b!6429262 (=> res!2642672 e!3900399)))

(declare-fun call!553001 () Bool)

(assert (=> b!6429262 (= res!2642672 call!553001)))

(declare-fun d!2015408 () Bool)

(assert (=> d!2015408 e!3900401))

(declare-fun c!1174929 () Bool)

(assert (=> d!2015408 (= c!1174929 ((_ is EmptyExpr!16333) (regTwo!33178 r!7292)))))

(assert (=> d!2015408 (= lt!2379017 e!3900398)))

(declare-fun c!1174928 () Bool)

(assert (=> d!2015408 (= c!1174928 (isEmpty!37341 (_2!36615 lt!2378919)))))

(assert (=> d!2015408 (validRegex!8069 (regTwo!33178 r!7292))))

(assert (=> d!2015408 (= (matchR!8516 (regTwo!33178 r!7292) (_2!36615 lt!2378919)) lt!2379017)))

(declare-fun b!6429263 () Bool)

(declare-fun res!2642673 () Bool)

(declare-fun e!3900403 () Bool)

(assert (=> b!6429263 (=> (not res!2642673) (not e!3900403))))

(assert (=> b!6429263 (= res!2642673 (not call!553001))))

(declare-fun b!6429264 () Bool)

(assert (=> b!6429264 (= e!3900401 (= lt!2379017 call!553001))))

(declare-fun b!6429265 () Bool)

(assert (=> b!6429265 (= e!3900399 (not (= (head!13156 (_2!36615 lt!2378919)) (c!1174748 (regTwo!33178 r!7292)))))))

(declare-fun bm!552996 () Bool)

(assert (=> bm!552996 (= call!553001 (isEmpty!37341 (_2!36615 lt!2378919)))))

(declare-fun b!6429266 () Bool)

(assert (=> b!6429266 (= e!3900403 (= (head!13156 (_2!36615 lt!2378919)) (c!1174748 (regTwo!33178 r!7292))))))

(declare-fun b!6429267 () Bool)

(declare-fun res!2642674 () Bool)

(assert (=> b!6429267 (=> (not res!2642674) (not e!3900403))))

(assert (=> b!6429267 (= res!2642674 (isEmpty!37341 (tail!12241 (_2!36615 lt!2378919))))))

(declare-fun b!6429268 () Bool)

(assert (=> b!6429268 (= e!3900404 (not lt!2379017))))

(declare-fun b!6429269 () Bool)

(assert (=> b!6429269 (= e!3900398 (nullable!6326 (regTwo!33178 r!7292)))))

(declare-fun b!6429270 () Bool)

(declare-fun res!2642676 () Bool)

(assert (=> b!6429270 (=> res!2642676 e!3900400)))

(assert (=> b!6429270 (= res!2642676 e!3900403)))

(declare-fun res!2642671 () Bool)

(assert (=> b!6429270 (=> (not res!2642671) (not e!3900403))))

(assert (=> b!6429270 (= res!2642671 lt!2379017)))

(declare-fun b!6429271 () Bool)

(declare-fun res!2642669 () Bool)

(assert (=> b!6429271 (=> res!2642669 e!3900400)))

(assert (=> b!6429271 (= res!2642669 (not ((_ is ElementMatch!16333) (regTwo!33178 r!7292))))))

(assert (=> b!6429271 (= e!3900404 e!3900400)))

(assert (= (and d!2015408 c!1174928) b!6429269))

(assert (= (and d!2015408 (not c!1174928)) b!6429258))

(assert (= (and d!2015408 c!1174929) b!6429264))

(assert (= (and d!2015408 (not c!1174929)) b!6429260))

(assert (= (and b!6429260 c!1174927) b!6429268))

(assert (= (and b!6429260 (not c!1174927)) b!6429271))

(assert (= (and b!6429271 (not res!2642669)) b!6429270))

(assert (= (and b!6429270 res!2642671) b!6429263))

(assert (= (and b!6429263 res!2642673) b!6429267))

(assert (= (and b!6429267 res!2642674) b!6429266))

(assert (= (and b!6429270 (not res!2642676)) b!6429259))

(assert (= (and b!6429259 res!2642670) b!6429262))

(assert (= (and b!6429262 (not res!2642672)) b!6429261))

(assert (= (and b!6429261 (not res!2642675)) b!6429265))

(assert (= (or b!6429264 b!6429262 b!6429263) bm!552996))

(declare-fun m!7222976 () Bool)

(assert (=> b!6429269 m!7222976))

(declare-fun m!7222978 () Bool)

(assert (=> bm!552996 m!7222978))

(declare-fun m!7222980 () Bool)

(assert (=> b!6429261 m!7222980))

(assert (=> b!6429261 m!7222980))

(declare-fun m!7222982 () Bool)

(assert (=> b!6429261 m!7222982))

(declare-fun m!7222984 () Bool)

(assert (=> b!6429265 m!7222984))

(assert (=> b!6429258 m!7222984))

(assert (=> b!6429258 m!7222984))

(declare-fun m!7222986 () Bool)

(assert (=> b!6429258 m!7222986))

(assert (=> b!6429258 m!7222980))

(assert (=> b!6429258 m!7222986))

(assert (=> b!6429258 m!7222980))

(declare-fun m!7222988 () Bool)

(assert (=> b!6429258 m!7222988))

(assert (=> b!6429267 m!7222980))

(assert (=> b!6429267 m!7222980))

(assert (=> b!6429267 m!7222982))

(assert (=> b!6429266 m!7222984))

(assert (=> d!2015408 m!7222978))

(assert (=> d!2015408 m!7222322))

(assert (=> b!6428601 d!2015408))

(declare-fun lt!2379020 () List!65298)

(declare-fun e!3900416 () Bool)

(declare-fun b!6429294 () Bool)

(assert (=> b!6429294 (= e!3900416 (or (not (= lt!2378913 Nil!65174)) (= lt!2379020 (_1!36615 lt!2378914))))))

(declare-fun b!6429293 () Bool)

(declare-fun res!2642684 () Bool)

(assert (=> b!6429293 (=> (not res!2642684) (not e!3900416))))

(declare-fun size!40392 (List!65298) Int)

(assert (=> b!6429293 (= res!2642684 (= (size!40392 lt!2379020) (+ (size!40392 (_1!36615 lt!2378914)) (size!40392 lt!2378913))))))

(declare-fun b!6429291 () Bool)

(declare-fun e!3900417 () List!65298)

(assert (=> b!6429291 (= e!3900417 lt!2378913)))

(declare-fun b!6429292 () Bool)

(assert (=> b!6429292 (= e!3900417 (Cons!65174 (h!71622 (_1!36615 lt!2378914)) (++!14401 (t!378914 (_1!36615 lt!2378914)) lt!2378913)))))

(declare-fun d!2015410 () Bool)

(assert (=> d!2015410 e!3900416))

(declare-fun res!2642685 () Bool)

(assert (=> d!2015410 (=> (not res!2642685) (not e!3900416))))

(declare-fun content!12380 (List!65298) (InoxSet C!32936))

(assert (=> d!2015410 (= res!2642685 (= (content!12380 lt!2379020) ((_ map or) (content!12380 (_1!36615 lt!2378914)) (content!12380 lt!2378913))))))

(assert (=> d!2015410 (= lt!2379020 e!3900417)))

(declare-fun c!1174936 () Bool)

(assert (=> d!2015410 (= c!1174936 ((_ is Nil!65174) (_1!36615 lt!2378914)))))

(assert (=> d!2015410 (= (++!14401 (_1!36615 lt!2378914) lt!2378913) lt!2379020)))

(assert (= (and d!2015410 c!1174936) b!6429291))

(assert (= (and d!2015410 (not c!1174936)) b!6429292))

(assert (= (and d!2015410 res!2642685) b!6429293))

(assert (= (and b!6429293 res!2642684) b!6429294))

(declare-fun m!7222998 () Bool)

(assert (=> b!6429293 m!7222998))

(declare-fun m!7223000 () Bool)

(assert (=> b!6429293 m!7223000))

(declare-fun m!7223002 () Bool)

(assert (=> b!6429293 m!7223002))

(declare-fun m!7223004 () Bool)

(assert (=> b!6429292 m!7223004))

(declare-fun m!7223006 () Bool)

(assert (=> d!2015410 m!7223006))

(declare-fun m!7223008 () Bool)

(assert (=> d!2015410 m!7223008))

(declare-fun m!7223010 () Bool)

(assert (=> d!2015410 m!7223010))

(assert (=> b!6428622 d!2015410))

(declare-fun b!6429298 () Bool)

(declare-fun e!3900418 () Bool)

(declare-fun lt!2379021 () List!65298)

(assert (=> b!6429298 (= e!3900418 (or (not (= (_2!36615 lt!2378919) Nil!65174)) (= lt!2379021 lt!2378893)))))

(declare-fun b!6429297 () Bool)

(declare-fun res!2642686 () Bool)

(assert (=> b!6429297 (=> (not res!2642686) (not e!3900418))))

(assert (=> b!6429297 (= res!2642686 (= (size!40392 lt!2379021) (+ (size!40392 lt!2378893) (size!40392 (_2!36615 lt!2378919)))))))

(declare-fun b!6429295 () Bool)

(declare-fun e!3900419 () List!65298)

(assert (=> b!6429295 (= e!3900419 (_2!36615 lt!2378919))))

(declare-fun b!6429296 () Bool)

(assert (=> b!6429296 (= e!3900419 (Cons!65174 (h!71622 lt!2378893) (++!14401 (t!378914 lt!2378893) (_2!36615 lt!2378919))))))

(declare-fun d!2015418 () Bool)

(assert (=> d!2015418 e!3900418))

(declare-fun res!2642687 () Bool)

(assert (=> d!2015418 (=> (not res!2642687) (not e!3900418))))

(assert (=> d!2015418 (= res!2642687 (= (content!12380 lt!2379021) ((_ map or) (content!12380 lt!2378893) (content!12380 (_2!36615 lt!2378919)))))))

(assert (=> d!2015418 (= lt!2379021 e!3900419)))

(declare-fun c!1174937 () Bool)

(assert (=> d!2015418 (= c!1174937 ((_ is Nil!65174) lt!2378893))))

(assert (=> d!2015418 (= (++!14401 lt!2378893 (_2!36615 lt!2378919)) lt!2379021)))

(assert (= (and d!2015418 c!1174937) b!6429295))

(assert (= (and d!2015418 (not c!1174937)) b!6429296))

(assert (= (and d!2015418 res!2642687) b!6429297))

(assert (= (and b!6429297 res!2642686) b!6429298))

(declare-fun m!7223012 () Bool)

(assert (=> b!6429297 m!7223012))

(declare-fun m!7223014 () Bool)

(assert (=> b!6429297 m!7223014))

(declare-fun m!7223016 () Bool)

(assert (=> b!6429297 m!7223016))

(declare-fun m!7223018 () Bool)

(assert (=> b!6429296 m!7223018))

(declare-fun m!7223020 () Bool)

(assert (=> d!2015418 m!7223020))

(declare-fun m!7223022 () Bool)

(assert (=> d!2015418 m!7223022))

(declare-fun m!7223024 () Bool)

(assert (=> d!2015418 m!7223024))

(assert (=> b!6428622 d!2015418))

(declare-fun e!3900420 () Bool)

(declare-fun b!6429302 () Bool)

(declare-fun lt!2379022 () List!65298)

(assert (=> b!6429302 (= e!3900420 (or (not (= (_2!36615 lt!2378919) Nil!65174)) (= lt!2379022 (_2!36615 lt!2378914))))))

(declare-fun b!6429301 () Bool)

(declare-fun res!2642688 () Bool)

(assert (=> b!6429301 (=> (not res!2642688) (not e!3900420))))

(assert (=> b!6429301 (= res!2642688 (= (size!40392 lt!2379022) (+ (size!40392 (_2!36615 lt!2378914)) (size!40392 (_2!36615 lt!2378919)))))))

(declare-fun b!6429299 () Bool)

(declare-fun e!3900421 () List!65298)

(assert (=> b!6429299 (= e!3900421 (_2!36615 lt!2378919))))

(declare-fun b!6429300 () Bool)

(assert (=> b!6429300 (= e!3900421 (Cons!65174 (h!71622 (_2!36615 lt!2378914)) (++!14401 (t!378914 (_2!36615 lt!2378914)) (_2!36615 lt!2378919))))))

(declare-fun d!2015420 () Bool)

(assert (=> d!2015420 e!3900420))

(declare-fun res!2642689 () Bool)

(assert (=> d!2015420 (=> (not res!2642689) (not e!3900420))))

(assert (=> d!2015420 (= res!2642689 (= (content!12380 lt!2379022) ((_ map or) (content!12380 (_2!36615 lt!2378914)) (content!12380 (_2!36615 lt!2378919)))))))

(assert (=> d!2015420 (= lt!2379022 e!3900421)))

(declare-fun c!1174938 () Bool)

(assert (=> d!2015420 (= c!1174938 ((_ is Nil!65174) (_2!36615 lt!2378914)))))

(assert (=> d!2015420 (= (++!14401 (_2!36615 lt!2378914) (_2!36615 lt!2378919)) lt!2379022)))

(assert (= (and d!2015420 c!1174938) b!6429299))

(assert (= (and d!2015420 (not c!1174938)) b!6429300))

(assert (= (and d!2015420 res!2642689) b!6429301))

(assert (= (and b!6429301 res!2642688) b!6429302))

(declare-fun m!7223026 () Bool)

(assert (=> b!6429301 m!7223026))

(declare-fun m!7223028 () Bool)

(assert (=> b!6429301 m!7223028))

(assert (=> b!6429301 m!7223016))

(declare-fun m!7223030 () Bool)

(assert (=> b!6429300 m!7223030))

(declare-fun m!7223032 () Bool)

(assert (=> d!2015420 m!7223032))

(declare-fun m!7223034 () Bool)

(assert (=> d!2015420 m!7223034))

(assert (=> d!2015420 m!7223024))

(assert (=> b!6428622 d!2015420))

(declare-fun d!2015422 () Bool)

(assert (=> d!2015422 (= (++!14401 (++!14401 (_1!36615 lt!2378914) (_2!36615 lt!2378914)) (_2!36615 lt!2378919)) (++!14401 (_1!36615 lt!2378914) (++!14401 (_2!36615 lt!2378914) (_2!36615 lt!2378919))))))

(declare-fun lt!2379025 () Unit!158663)

(declare-fun choose!47801 (List!65298 List!65298 List!65298) Unit!158663)

(assert (=> d!2015422 (= lt!2379025 (choose!47801 (_1!36615 lt!2378914) (_2!36615 lt!2378914) (_2!36615 lt!2378919)))))

(assert (=> d!2015422 (= (lemmaConcatAssociativity!2904 (_1!36615 lt!2378914) (_2!36615 lt!2378914) (_2!36615 lt!2378919)) lt!2379025)))

(declare-fun bs!1617104 () Bool)

(assert (= bs!1617104 d!2015422))

(declare-fun m!7223044 () Bool)

(assert (=> bs!1617104 m!7223044))

(assert (=> bs!1617104 m!7222398))

(assert (=> bs!1617104 m!7222424))

(declare-fun m!7223046 () Bool)

(assert (=> bs!1617104 m!7223046))

(assert (=> bs!1617104 m!7222424))

(assert (=> bs!1617104 m!7222398))

(declare-fun m!7223048 () Bool)

(assert (=> bs!1617104 m!7223048))

(assert (=> b!6428622 d!2015422))

(declare-fun d!2015428 () Bool)

(declare-fun lambda!355613 () Int)

(declare-fun forall!15523 (List!65299 Int) Bool)

(assert (=> d!2015428 (= (inv!84079 (h!71624 zl!343)) (forall!15523 (exprs!6217 (h!71624 zl!343)) lambda!355613))))

(declare-fun bs!1617105 () Bool)

(assert (= bs!1617105 d!2015428))

(declare-fun m!7223074 () Bool)

(assert (=> bs!1617105 m!7223074))

(assert (=> b!6428619 d!2015428))

(declare-fun d!2015432 () Bool)

(assert (=> d!2015432 (= (isEmpty!37341 (_1!36615 lt!2378919)) ((_ is Nil!65174) (_1!36615 lt!2378919)))))

(assert (=> b!6428638 d!2015432))

(declare-fun b!6429358 () Bool)

(declare-fun e!3900458 () Bool)

(declare-fun e!3900457 () Bool)

(assert (=> b!6429358 (= e!3900458 e!3900457)))

(declare-fun res!2642717 () Bool)

(assert (=> b!6429358 (=> (not res!2642717) (not e!3900457))))

(declare-fun call!553012 () Bool)

(assert (=> b!6429358 (= res!2642717 call!553012)))

(declare-fun b!6429359 () Bool)

(declare-fun call!553011 () Bool)

(assert (=> b!6429359 (= e!3900457 call!553011)))

(declare-fun c!1174949 () Bool)

(declare-fun call!553010 () Bool)

(declare-fun c!1174950 () Bool)

(declare-fun bm!553005 () Bool)

(assert (=> bm!553005 (= call!553010 (validRegex!8069 (ite c!1174949 (reg!16662 r!7292) (ite c!1174950 (regTwo!33179 r!7292) (regTwo!33178 r!7292)))))))

(declare-fun bm!553006 () Bool)

(assert (=> bm!553006 (= call!553011 call!553010)))

(declare-fun b!6429360 () Bool)

(declare-fun res!2642716 () Bool)

(assert (=> b!6429360 (=> res!2642716 e!3900458)))

(assert (=> b!6429360 (= res!2642716 (not ((_ is Concat!25178) r!7292)))))

(declare-fun e!3900460 () Bool)

(assert (=> b!6429360 (= e!3900460 e!3900458)))

(declare-fun b!6429361 () Bool)

(declare-fun e!3900461 () Bool)

(assert (=> b!6429361 (= e!3900461 e!3900460)))

(assert (=> b!6429361 (= c!1174950 ((_ is Union!16333) r!7292))))

(declare-fun b!6429362 () Bool)

(declare-fun e!3900459 () Bool)

(assert (=> b!6429362 (= e!3900459 e!3900461)))

(assert (=> b!6429362 (= c!1174949 ((_ is Star!16333) r!7292))))

(declare-fun b!6429363 () Bool)

(declare-fun e!3900462 () Bool)

(assert (=> b!6429363 (= e!3900462 call!553010)))

(declare-fun bm!553007 () Bool)

(assert (=> bm!553007 (= call!553012 (validRegex!8069 (ite c!1174950 (regOne!33179 r!7292) (regOne!33178 r!7292))))))

(declare-fun d!2015438 () Bool)

(declare-fun res!2642714 () Bool)

(assert (=> d!2015438 (=> res!2642714 e!3900459)))

(assert (=> d!2015438 (= res!2642714 ((_ is ElementMatch!16333) r!7292))))

(assert (=> d!2015438 (= (validRegex!8069 r!7292) e!3900459)))

(declare-fun b!6429364 () Bool)

(assert (=> b!6429364 (= e!3900461 e!3900462)))

(declare-fun res!2642713 () Bool)

(assert (=> b!6429364 (= res!2642713 (not (nullable!6326 (reg!16662 r!7292))))))

(assert (=> b!6429364 (=> (not res!2642713) (not e!3900462))))

(declare-fun b!6429365 () Bool)

(declare-fun res!2642715 () Bool)

(declare-fun e!3900463 () Bool)

(assert (=> b!6429365 (=> (not res!2642715) (not e!3900463))))

(assert (=> b!6429365 (= res!2642715 call!553012)))

(assert (=> b!6429365 (= e!3900460 e!3900463)))

(declare-fun b!6429366 () Bool)

(assert (=> b!6429366 (= e!3900463 call!553011)))

(assert (= (and d!2015438 (not res!2642714)) b!6429362))

(assert (= (and b!6429362 c!1174949) b!6429364))

(assert (= (and b!6429362 (not c!1174949)) b!6429361))

(assert (= (and b!6429364 res!2642713) b!6429363))

(assert (= (and b!6429361 c!1174950) b!6429365))

(assert (= (and b!6429361 (not c!1174950)) b!6429360))

(assert (= (and b!6429365 res!2642715) b!6429366))

(assert (= (and b!6429360 (not res!2642716)) b!6429358))

(assert (= (and b!6429358 res!2642717) b!6429359))

(assert (= (or b!6429366 b!6429359) bm!553006))

(assert (= (or b!6429365 b!6429358) bm!553007))

(assert (= (or b!6429363 bm!553006) bm!553005))

(declare-fun m!7223130 () Bool)

(assert (=> bm!553005 m!7223130))

(declare-fun m!7223132 () Bool)

(assert (=> bm!553007 m!7223132))

(declare-fun m!7223134 () Bool)

(assert (=> b!6429364 m!7223134))

(assert (=> start!635098 d!2015438))

(declare-fun b!6429374 () Bool)

(declare-fun e!3900468 () Bool)

(declare-fun e!3900467 () Bool)

(assert (=> b!6429374 (= e!3900468 e!3900467)))

(declare-fun res!2642722 () Bool)

(assert (=> b!6429374 (=> (not res!2642722) (not e!3900467))))

(declare-fun call!553015 () Bool)

(assert (=> b!6429374 (= res!2642722 call!553015)))

(declare-fun b!6429375 () Bool)

(declare-fun call!553014 () Bool)

(assert (=> b!6429375 (= e!3900467 call!553014)))

(declare-fun c!1174951 () Bool)

(declare-fun c!1174952 () Bool)

(declare-fun bm!553008 () Bool)

(declare-fun call!553013 () Bool)

(assert (=> bm!553008 (= call!553013 (validRegex!8069 (ite c!1174951 (reg!16662 lt!2378898) (ite c!1174952 (regTwo!33179 lt!2378898) (regTwo!33178 lt!2378898)))))))

(declare-fun bm!553009 () Bool)

(assert (=> bm!553009 (= call!553014 call!553013)))

(declare-fun b!6429376 () Bool)

(declare-fun res!2642721 () Bool)

(assert (=> b!6429376 (=> res!2642721 e!3900468)))

(assert (=> b!6429376 (= res!2642721 (not ((_ is Concat!25178) lt!2378898)))))

(declare-fun e!3900470 () Bool)

(assert (=> b!6429376 (= e!3900470 e!3900468)))

(declare-fun b!6429377 () Bool)

(declare-fun e!3900471 () Bool)

(assert (=> b!6429377 (= e!3900471 e!3900470)))

(assert (=> b!6429377 (= c!1174952 ((_ is Union!16333) lt!2378898))))

(declare-fun b!6429378 () Bool)

(declare-fun e!3900469 () Bool)

(assert (=> b!6429378 (= e!3900469 e!3900471)))

(assert (=> b!6429378 (= c!1174951 ((_ is Star!16333) lt!2378898))))

(declare-fun b!6429379 () Bool)

(declare-fun e!3900472 () Bool)

(assert (=> b!6429379 (= e!3900472 call!553013)))

(declare-fun bm!553010 () Bool)

(assert (=> bm!553010 (= call!553015 (validRegex!8069 (ite c!1174952 (regOne!33179 lt!2378898) (regOne!33178 lt!2378898))))))

(declare-fun d!2015448 () Bool)

(declare-fun res!2642719 () Bool)

(assert (=> d!2015448 (=> res!2642719 e!3900469)))

(assert (=> d!2015448 (= res!2642719 ((_ is ElementMatch!16333) lt!2378898))))

(assert (=> d!2015448 (= (validRegex!8069 lt!2378898) e!3900469)))

(declare-fun b!6429381 () Bool)

(assert (=> b!6429381 (= e!3900471 e!3900472)))

(declare-fun res!2642718 () Bool)

(assert (=> b!6429381 (= res!2642718 (not (nullable!6326 (reg!16662 lt!2378898))))))

(assert (=> b!6429381 (=> (not res!2642718) (not e!3900472))))

(declare-fun b!6429383 () Bool)

(declare-fun res!2642720 () Bool)

(declare-fun e!3900473 () Bool)

(assert (=> b!6429383 (=> (not res!2642720) (not e!3900473))))

(assert (=> b!6429383 (= res!2642720 call!553015)))

(assert (=> b!6429383 (= e!3900470 e!3900473)))

(declare-fun b!6429384 () Bool)

(assert (=> b!6429384 (= e!3900473 call!553014)))

(assert (= (and d!2015448 (not res!2642719)) b!6429378))

(assert (= (and b!6429378 c!1174951) b!6429381))

(assert (= (and b!6429378 (not c!1174951)) b!6429377))

(assert (= (and b!6429381 res!2642718) b!6429379))

(assert (= (and b!6429377 c!1174952) b!6429383))

(assert (= (and b!6429377 (not c!1174952)) b!6429376))

(assert (= (and b!6429383 res!2642720) b!6429384))

(assert (= (and b!6429376 (not res!2642721)) b!6429374))

(assert (= (and b!6429374 res!2642722) b!6429375))

(assert (= (or b!6429384 b!6429375) bm!553009))

(assert (= (or b!6429383 b!6429374) bm!553010))

(assert (= (or b!6429379 bm!553009) bm!553008))

(declare-fun m!7223136 () Bool)

(assert (=> bm!553008 m!7223136))

(declare-fun m!7223138 () Bool)

(assert (=> bm!553010 m!7223138))

(declare-fun m!7223140 () Bool)

(assert (=> b!6429381 m!7223140))

(assert (=> b!6428618 d!2015448))

(declare-fun b!6429387 () Bool)

(declare-fun e!3900474 () Bool)

(assert (=> b!6429387 (= e!3900474 (matchR!8516 (derivativeStep!5037 lt!2378898 (head!13156 lt!2378893)) (tail!12241 lt!2378893)))))

(declare-fun b!6429388 () Bool)

(declare-fun e!3900476 () Bool)

(declare-fun e!3900478 () Bool)

(assert (=> b!6429388 (= e!3900476 e!3900478)))

(declare-fun res!2642724 () Bool)

(assert (=> b!6429388 (=> (not res!2642724) (not e!3900478))))

(declare-fun lt!2379037 () Bool)

(assert (=> b!6429388 (= res!2642724 (not lt!2379037))))

(declare-fun b!6429389 () Bool)

(declare-fun e!3900477 () Bool)

(declare-fun e!3900480 () Bool)

(assert (=> b!6429389 (= e!3900477 e!3900480)))

(declare-fun c!1174953 () Bool)

(assert (=> b!6429389 (= c!1174953 ((_ is EmptyLang!16333) lt!2378898))))

(declare-fun b!6429390 () Bool)

(declare-fun res!2642729 () Bool)

(declare-fun e!3900475 () Bool)

(assert (=> b!6429390 (=> res!2642729 e!3900475)))

(assert (=> b!6429390 (= res!2642729 (not (isEmpty!37341 (tail!12241 lt!2378893))))))

(declare-fun b!6429391 () Bool)

(assert (=> b!6429391 (= e!3900478 e!3900475)))

(declare-fun res!2642726 () Bool)

(assert (=> b!6429391 (=> res!2642726 e!3900475)))

(declare-fun call!553016 () Bool)

(assert (=> b!6429391 (= res!2642726 call!553016)))

(declare-fun d!2015450 () Bool)

(assert (=> d!2015450 e!3900477))

(declare-fun c!1174955 () Bool)

(assert (=> d!2015450 (= c!1174955 ((_ is EmptyExpr!16333) lt!2378898))))

(assert (=> d!2015450 (= lt!2379037 e!3900474)))

(declare-fun c!1174954 () Bool)

(assert (=> d!2015450 (= c!1174954 (isEmpty!37341 lt!2378893))))

(assert (=> d!2015450 (validRegex!8069 lt!2378898)))

(assert (=> d!2015450 (= (matchR!8516 lt!2378898 lt!2378893) lt!2379037)))

(declare-fun b!6429392 () Bool)

(declare-fun res!2642727 () Bool)

(declare-fun e!3900479 () Bool)

(assert (=> b!6429392 (=> (not res!2642727) (not e!3900479))))

(assert (=> b!6429392 (= res!2642727 (not call!553016))))

(declare-fun b!6429393 () Bool)

(assert (=> b!6429393 (= e!3900477 (= lt!2379037 call!553016))))

(declare-fun b!6429394 () Bool)

(assert (=> b!6429394 (= e!3900475 (not (= (head!13156 lt!2378893) (c!1174748 lt!2378898))))))

(declare-fun bm!553011 () Bool)

(assert (=> bm!553011 (= call!553016 (isEmpty!37341 lt!2378893))))

(declare-fun b!6429395 () Bool)

(assert (=> b!6429395 (= e!3900479 (= (head!13156 lt!2378893) (c!1174748 lt!2378898)))))

(declare-fun b!6429396 () Bool)

(declare-fun res!2642728 () Bool)

(assert (=> b!6429396 (=> (not res!2642728) (not e!3900479))))

(assert (=> b!6429396 (= res!2642728 (isEmpty!37341 (tail!12241 lt!2378893)))))

(declare-fun b!6429397 () Bool)

(assert (=> b!6429397 (= e!3900480 (not lt!2379037))))

(declare-fun b!6429398 () Bool)

(assert (=> b!6429398 (= e!3900474 (nullable!6326 lt!2378898))))

(declare-fun b!6429399 () Bool)

(declare-fun res!2642730 () Bool)

(assert (=> b!6429399 (=> res!2642730 e!3900476)))

(assert (=> b!6429399 (= res!2642730 e!3900479)))

(declare-fun res!2642725 () Bool)

(assert (=> b!6429399 (=> (not res!2642725) (not e!3900479))))

(assert (=> b!6429399 (= res!2642725 lt!2379037)))

(declare-fun b!6429400 () Bool)

(declare-fun res!2642723 () Bool)

(assert (=> b!6429400 (=> res!2642723 e!3900476)))

(assert (=> b!6429400 (= res!2642723 (not ((_ is ElementMatch!16333) lt!2378898)))))

(assert (=> b!6429400 (= e!3900480 e!3900476)))

(assert (= (and d!2015450 c!1174954) b!6429398))

(assert (= (and d!2015450 (not c!1174954)) b!6429387))

(assert (= (and d!2015450 c!1174955) b!6429393))

(assert (= (and d!2015450 (not c!1174955)) b!6429389))

(assert (= (and b!6429389 c!1174953) b!6429397))

(assert (= (and b!6429389 (not c!1174953)) b!6429400))

(assert (= (and b!6429400 (not res!2642723)) b!6429399))

(assert (= (and b!6429399 res!2642725) b!6429392))

(assert (= (and b!6429392 res!2642727) b!6429396))

(assert (= (and b!6429396 res!2642728) b!6429395))

(assert (= (and b!6429399 (not res!2642730)) b!6429388))

(assert (= (and b!6429388 res!2642724) b!6429391))

(assert (= (and b!6429391 (not res!2642726)) b!6429390))

(assert (= (and b!6429390 (not res!2642729)) b!6429394))

(assert (= (or b!6429393 b!6429391 b!6429392) bm!553011))

(assert (=> b!6429398 m!7222670))

(declare-fun m!7223142 () Bool)

(assert (=> bm!553011 m!7223142))

(declare-fun m!7223144 () Bool)

(assert (=> b!6429390 m!7223144))

(assert (=> b!6429390 m!7223144))

(declare-fun m!7223146 () Bool)

(assert (=> b!6429390 m!7223146))

(declare-fun m!7223148 () Bool)

(assert (=> b!6429394 m!7223148))

(assert (=> b!6429387 m!7223148))

(assert (=> b!6429387 m!7223148))

(declare-fun m!7223150 () Bool)

(assert (=> b!6429387 m!7223150))

(assert (=> b!6429387 m!7223144))

(assert (=> b!6429387 m!7223150))

(assert (=> b!6429387 m!7223144))

(declare-fun m!7223152 () Bool)

(assert (=> b!6429387 m!7223152))

(assert (=> b!6429396 m!7223144))

(assert (=> b!6429396 m!7223144))

(assert (=> b!6429396 m!7223146))

(assert (=> b!6429395 m!7223148))

(assert (=> d!2015450 m!7223142))

(assert (=> d!2015450 m!7222446))

(assert (=> b!6428618 d!2015450))

(declare-fun d!2015452 () Bool)

(assert (=> d!2015452 (matchR!8516 (Star!16333 (reg!16662 (regOne!33178 r!7292))) (++!14401 (_1!36615 lt!2378914) (_2!36615 lt!2378914)))))

(declare-fun lt!2379040 () Unit!158663)

(declare-fun choose!47802 (Regex!16333 List!65298 List!65298) Unit!158663)

(assert (=> d!2015452 (= lt!2379040 (choose!47802 (reg!16662 (regOne!33178 r!7292)) (_1!36615 lt!2378914) (_2!36615 lt!2378914)))))

(assert (=> d!2015452 (validRegex!8069 (Star!16333 (reg!16662 (regOne!33178 r!7292))))))

(assert (=> d!2015452 (= (lemmaStarApp!110 (reg!16662 (regOne!33178 r!7292)) (_1!36615 lt!2378914) (_2!36615 lt!2378914)) lt!2379040)))

(declare-fun bs!1617113 () Bool)

(assert (= bs!1617113 d!2015452))

(assert (=> bs!1617113 m!7222424))

(assert (=> bs!1617113 m!7222424))

(declare-fun m!7223154 () Bool)

(assert (=> bs!1617113 m!7223154))

(declare-fun m!7223156 () Bool)

(assert (=> bs!1617113 m!7223156))

(declare-fun m!7223158 () Bool)

(assert (=> bs!1617113 m!7223158))

(assert (=> b!6428618 d!2015452))

(declare-fun bs!1617114 () Bool)

(declare-fun b!6429470 () Bool)

(assert (= bs!1617114 (and b!6429470 b!6428621)))

(declare-fun lambda!355618 () Int)

(assert (=> bs!1617114 (not (= lambda!355618 lambda!355545))))

(declare-fun bs!1617115 () Bool)

(assert (= bs!1617115 (and b!6429470 d!2015392)))

(assert (=> bs!1617115 (not (= lambda!355618 lambda!355596))))

(declare-fun bs!1617116 () Bool)

(assert (= bs!1617116 (and b!6429470 b!6428631)))

(assert (=> bs!1617116 (= (and (= s!2326 (_1!36615 lt!2378919)) (= (reg!16662 r!7292) (reg!16662 (regOne!33178 r!7292))) (= r!7292 lt!2378898)) (= lambda!355618 lambda!355550))))

(declare-fun bs!1617117 () Bool)

(assert (= bs!1617117 (and b!6429470 d!2015402)))

(assert (=> bs!1617117 (not (= lambda!355618 lambda!355607))))

(assert (=> bs!1617116 (not (= lambda!355618 lambda!355551))))

(assert (=> bs!1617117 (not (= lambda!355618 lambda!355606))))

(assert (=> bs!1617116 (not (= lambda!355618 lambda!355549))))

(declare-fun bs!1617118 () Bool)

(assert (= bs!1617118 (and b!6429470 b!6428629)))

(assert (=> bs!1617118 (not (= lambda!355618 lambda!355548))))

(assert (=> bs!1617118 (not (= lambda!355618 lambda!355547))))

(assert (=> bs!1617114 (not (= lambda!355618 lambda!355544))))

(assert (=> b!6429470 true))

(assert (=> b!6429470 true))

(declare-fun bs!1617119 () Bool)

(declare-fun b!6429474 () Bool)

(assert (= bs!1617119 (and b!6429474 b!6428621)))

(declare-fun lambda!355619 () Int)

(assert (=> bs!1617119 (= lambda!355619 lambda!355545)))

(declare-fun bs!1617120 () Bool)

(assert (= bs!1617120 (and b!6429474 d!2015392)))

(assert (=> bs!1617120 (not (= lambda!355619 lambda!355596))))

(declare-fun bs!1617121 () Bool)

(assert (= bs!1617121 (and b!6429474 b!6428631)))

(assert (=> bs!1617121 (not (= lambda!355619 lambda!355550))))

(declare-fun bs!1617122 () Bool)

(assert (= bs!1617122 (and b!6429474 d!2015402)))

(assert (=> bs!1617122 (= lambda!355619 lambda!355607)))

(assert (=> bs!1617121 (= (and (= s!2326 (_1!36615 lt!2378919)) (= (regOne!33178 r!7292) (reg!16662 (regOne!33178 r!7292))) (= (regTwo!33178 r!7292) lt!2378898)) (= lambda!355619 lambda!355551))))

(assert (=> bs!1617122 (not (= lambda!355619 lambda!355606))))

(declare-fun bs!1617123 () Bool)

(assert (= bs!1617123 (and b!6429474 b!6429470)))

(assert (=> bs!1617123 (not (= lambda!355619 lambda!355618))))

(assert (=> bs!1617121 (not (= lambda!355619 lambda!355549))))

(declare-fun bs!1617124 () Bool)

(assert (= bs!1617124 (and b!6429474 b!6428629)))

(assert (=> bs!1617124 (= (= (regOne!33178 r!7292) lt!2378898) (= lambda!355619 lambda!355548))))

(assert (=> bs!1617124 (not (= lambda!355619 lambda!355547))))

(assert (=> bs!1617119 (not (= lambda!355619 lambda!355544))))

(assert (=> b!6429474 true))

(assert (=> b!6429474 true))

(declare-fun b!6429464 () Bool)

(declare-fun res!2642749 () Bool)

(declare-fun e!3900516 () Bool)

(assert (=> b!6429464 (=> res!2642749 e!3900516)))

(declare-fun call!553021 () Bool)

(assert (=> b!6429464 (= res!2642749 call!553021)))

(declare-fun e!3900515 () Bool)

(assert (=> b!6429464 (= e!3900515 e!3900516)))

(declare-fun b!6429465 () Bool)

(declare-fun e!3900511 () Bool)

(assert (=> b!6429465 (= e!3900511 e!3900515)))

(declare-fun c!1174965 () Bool)

(assert (=> b!6429465 (= c!1174965 ((_ is Star!16333) r!7292))))

(declare-fun b!6429466 () Bool)

(declare-fun c!1174967 () Bool)

(assert (=> b!6429466 (= c!1174967 ((_ is ElementMatch!16333) r!7292))))

(declare-fun e!3900513 () Bool)

(declare-fun e!3900512 () Bool)

(assert (=> b!6429466 (= e!3900513 e!3900512)))

(declare-fun b!6429467 () Bool)

(declare-fun c!1174964 () Bool)

(assert (=> b!6429467 (= c!1174964 ((_ is Union!16333) r!7292))))

(assert (=> b!6429467 (= e!3900512 e!3900511)))

(declare-fun bm!553017 () Bool)

(assert (=> bm!553017 (= call!553021 (isEmpty!37341 s!2326))))

(declare-fun b!6429468 () Bool)

(declare-fun e!3900517 () Bool)

(assert (=> b!6429468 (= e!3900517 e!3900513)))

(declare-fun res!2642747 () Bool)

(assert (=> b!6429468 (= res!2642747 (not ((_ is EmptyLang!16333) r!7292)))))

(assert (=> b!6429468 (=> (not res!2642747) (not e!3900513))))

(declare-fun bm!553016 () Bool)

(declare-fun call!553022 () Bool)

(assert (=> bm!553016 (= call!553022 (Exists!3403 (ite c!1174965 lambda!355618 lambda!355619)))))

(declare-fun d!2015462 () Bool)

(declare-fun c!1174966 () Bool)

(assert (=> d!2015462 (= c!1174966 ((_ is EmptyExpr!16333) r!7292))))

(assert (=> d!2015462 (= (matchRSpec!3434 r!7292 s!2326) e!3900517)))

(declare-fun b!6429469 () Bool)

(assert (=> b!6429469 (= e!3900512 (= s!2326 (Cons!65174 (c!1174748 r!7292) Nil!65174)))))

(assert (=> b!6429470 (= e!3900516 call!553022)))

(declare-fun b!6429471 () Bool)

(assert (=> b!6429471 (= e!3900517 call!553021)))

(declare-fun b!6429472 () Bool)

(declare-fun e!3900514 () Bool)

(assert (=> b!6429472 (= e!3900514 (matchRSpec!3434 (regTwo!33179 r!7292) s!2326))))

(declare-fun b!6429473 () Bool)

(assert (=> b!6429473 (= e!3900511 e!3900514)))

(declare-fun res!2642748 () Bool)

(assert (=> b!6429473 (= res!2642748 (matchRSpec!3434 (regOne!33179 r!7292) s!2326))))

(assert (=> b!6429473 (=> res!2642748 e!3900514)))

(assert (=> b!6429474 (= e!3900515 call!553022)))

(assert (= (and d!2015462 c!1174966) b!6429471))

(assert (= (and d!2015462 (not c!1174966)) b!6429468))

(assert (= (and b!6429468 res!2642747) b!6429466))

(assert (= (and b!6429466 c!1174967) b!6429469))

(assert (= (and b!6429466 (not c!1174967)) b!6429467))

(assert (= (and b!6429467 c!1174964) b!6429473))

(assert (= (and b!6429467 (not c!1174964)) b!6429465))

(assert (= (and b!6429473 (not res!2642748)) b!6429472))

(assert (= (and b!6429465 c!1174965) b!6429464))

(assert (= (and b!6429465 (not c!1174965)) b!6429474))

(assert (= (and b!6429464 (not res!2642749)) b!6429470))

(assert (= (or b!6429470 b!6429474) bm!553016))

(assert (= (or b!6429471 b!6429464) bm!553017))

(assert (=> bm!553017 m!7222798))

(declare-fun m!7223160 () Bool)

(assert (=> bm!553016 m!7223160))

(declare-fun m!7223162 () Bool)

(assert (=> b!6429472 m!7223162))

(declare-fun m!7223164 () Bool)

(assert (=> b!6429473 m!7223164))

(assert (=> b!6428599 d!2015462))

(declare-fun b!6429475 () Bool)

(declare-fun e!3900518 () Bool)

(assert (=> b!6429475 (= e!3900518 (matchR!8516 (derivativeStep!5037 r!7292 (head!13156 s!2326)) (tail!12241 s!2326)))))

(declare-fun b!6429476 () Bool)

(declare-fun e!3900520 () Bool)

(declare-fun e!3900522 () Bool)

(assert (=> b!6429476 (= e!3900520 e!3900522)))

(declare-fun res!2642751 () Bool)

(assert (=> b!6429476 (=> (not res!2642751) (not e!3900522))))

(declare-fun lt!2379041 () Bool)

(assert (=> b!6429476 (= res!2642751 (not lt!2379041))))

(declare-fun b!6429477 () Bool)

(declare-fun e!3900521 () Bool)

(declare-fun e!3900524 () Bool)

(assert (=> b!6429477 (= e!3900521 e!3900524)))

(declare-fun c!1174968 () Bool)

(assert (=> b!6429477 (= c!1174968 ((_ is EmptyLang!16333) r!7292))))

(declare-fun b!6429478 () Bool)

(declare-fun res!2642756 () Bool)

(declare-fun e!3900519 () Bool)

(assert (=> b!6429478 (=> res!2642756 e!3900519)))

(assert (=> b!6429478 (= res!2642756 (not (isEmpty!37341 (tail!12241 s!2326))))))

(declare-fun b!6429479 () Bool)

(assert (=> b!6429479 (= e!3900522 e!3900519)))

(declare-fun res!2642753 () Bool)

(assert (=> b!6429479 (=> res!2642753 e!3900519)))

(declare-fun call!553023 () Bool)

(assert (=> b!6429479 (= res!2642753 call!553023)))

(declare-fun d!2015464 () Bool)

(assert (=> d!2015464 e!3900521))

(declare-fun c!1174970 () Bool)

(assert (=> d!2015464 (= c!1174970 ((_ is EmptyExpr!16333) r!7292))))

(assert (=> d!2015464 (= lt!2379041 e!3900518)))

(declare-fun c!1174969 () Bool)

(assert (=> d!2015464 (= c!1174969 (isEmpty!37341 s!2326))))

(assert (=> d!2015464 (validRegex!8069 r!7292)))

(assert (=> d!2015464 (= (matchR!8516 r!7292 s!2326) lt!2379041)))

(declare-fun b!6429480 () Bool)

(declare-fun res!2642754 () Bool)

(declare-fun e!3900523 () Bool)

(assert (=> b!6429480 (=> (not res!2642754) (not e!3900523))))

(assert (=> b!6429480 (= res!2642754 (not call!553023))))

(declare-fun b!6429481 () Bool)

(assert (=> b!6429481 (= e!3900521 (= lt!2379041 call!553023))))

(declare-fun b!6429482 () Bool)

(assert (=> b!6429482 (= e!3900519 (not (= (head!13156 s!2326) (c!1174748 r!7292))))))

(declare-fun bm!553018 () Bool)

(assert (=> bm!553018 (= call!553023 (isEmpty!37341 s!2326))))

(declare-fun b!6429483 () Bool)

(assert (=> b!6429483 (= e!3900523 (= (head!13156 s!2326) (c!1174748 r!7292)))))

(declare-fun b!6429484 () Bool)

(declare-fun res!2642755 () Bool)

(assert (=> b!6429484 (=> (not res!2642755) (not e!3900523))))

(assert (=> b!6429484 (= res!2642755 (isEmpty!37341 (tail!12241 s!2326)))))

(declare-fun b!6429485 () Bool)

(assert (=> b!6429485 (= e!3900524 (not lt!2379041))))

(declare-fun b!6429486 () Bool)

(assert (=> b!6429486 (= e!3900518 (nullable!6326 r!7292))))

(declare-fun b!6429487 () Bool)

(declare-fun res!2642757 () Bool)

(assert (=> b!6429487 (=> res!2642757 e!3900520)))

(assert (=> b!6429487 (= res!2642757 e!3900523)))

(declare-fun res!2642752 () Bool)

(assert (=> b!6429487 (=> (not res!2642752) (not e!3900523))))

(assert (=> b!6429487 (= res!2642752 lt!2379041)))

(declare-fun b!6429488 () Bool)

(declare-fun res!2642750 () Bool)

(assert (=> b!6429488 (=> res!2642750 e!3900520)))

(assert (=> b!6429488 (= res!2642750 (not ((_ is ElementMatch!16333) r!7292)))))

(assert (=> b!6429488 (= e!3900524 e!3900520)))

(assert (= (and d!2015464 c!1174969) b!6429486))

(assert (= (and d!2015464 (not c!1174969)) b!6429475))

(assert (= (and d!2015464 c!1174970) b!6429481))

(assert (= (and d!2015464 (not c!1174970)) b!6429477))

(assert (= (and b!6429477 c!1174968) b!6429485))

(assert (= (and b!6429477 (not c!1174968)) b!6429488))

(assert (= (and b!6429488 (not res!2642750)) b!6429487))

(assert (= (and b!6429487 res!2642752) b!6429480))

(assert (= (and b!6429480 res!2642754) b!6429484))

(assert (= (and b!6429484 res!2642755) b!6429483))

(assert (= (and b!6429487 (not res!2642757)) b!6429476))

(assert (= (and b!6429476 res!2642751) b!6429479))

(assert (= (and b!6429479 (not res!2642753)) b!6429478))

(assert (= (and b!6429478 (not res!2642756)) b!6429482))

(assert (= (or b!6429481 b!6429479 b!6429480) bm!553018))

(declare-fun m!7223166 () Bool)

(assert (=> b!6429486 m!7223166))

(assert (=> bm!553018 m!7222798))

(assert (=> b!6429478 m!7222806))

(assert (=> b!6429478 m!7222806))

(declare-fun m!7223168 () Bool)

(assert (=> b!6429478 m!7223168))

(assert (=> b!6429482 m!7222802))

(assert (=> b!6429475 m!7222802))

(assert (=> b!6429475 m!7222802))

(declare-fun m!7223170 () Bool)

(assert (=> b!6429475 m!7223170))

(assert (=> b!6429475 m!7222806))

(assert (=> b!6429475 m!7223170))

(assert (=> b!6429475 m!7222806))

(declare-fun m!7223172 () Bool)

(assert (=> b!6429475 m!7223172))

(assert (=> b!6429484 m!7222806))

(assert (=> b!6429484 m!7222806))

(assert (=> b!6429484 m!7223168))

(assert (=> b!6429483 m!7222802))

(assert (=> d!2015464 m!7222798))

(assert (=> d!2015464 m!7222304))

(assert (=> b!6428599 d!2015464))

(declare-fun d!2015466 () Bool)

(assert (=> d!2015466 (= (matchR!8516 r!7292 s!2326) (matchRSpec!3434 r!7292 s!2326))))

(declare-fun lt!2379044 () Unit!158663)

(declare-fun choose!47803 (Regex!16333 List!65298) Unit!158663)

(assert (=> d!2015466 (= lt!2379044 (choose!47803 r!7292 s!2326))))

(assert (=> d!2015466 (validRegex!8069 r!7292)))

(assert (=> d!2015466 (= (mainMatchTheorem!3434 r!7292 s!2326) lt!2379044)))

(declare-fun bs!1617125 () Bool)

(assert (= bs!1617125 d!2015466))

(assert (=> bs!1617125 m!7222360))

(assert (=> bs!1617125 m!7222358))

(declare-fun m!7223174 () Bool)

(assert (=> bs!1617125 m!7223174))

(assert (=> bs!1617125 m!7222304))

(assert (=> b!6428599 d!2015466))

(declare-fun b!6429489 () Bool)

(declare-fun e!3900526 () Bool)

(declare-fun e!3900525 () Bool)

(assert (=> b!6429489 (= e!3900526 e!3900525)))

(declare-fun res!2642762 () Bool)

(assert (=> b!6429489 (=> (not res!2642762) (not e!3900525))))

(declare-fun call!553026 () Bool)

(assert (=> b!6429489 (= res!2642762 call!553026)))

(declare-fun b!6429490 () Bool)

(declare-fun call!553025 () Bool)

(assert (=> b!6429490 (= e!3900525 call!553025)))

(declare-fun call!553024 () Bool)

(declare-fun c!1174972 () Bool)

(declare-fun c!1174971 () Bool)

(declare-fun bm!553019 () Bool)

(assert (=> bm!553019 (= call!553024 (validRegex!8069 (ite c!1174971 (reg!16662 (regTwo!33178 r!7292)) (ite c!1174972 (regTwo!33179 (regTwo!33178 r!7292)) (regTwo!33178 (regTwo!33178 r!7292))))))))

(declare-fun bm!553020 () Bool)

(assert (=> bm!553020 (= call!553025 call!553024)))

(declare-fun b!6429491 () Bool)

(declare-fun res!2642761 () Bool)

(assert (=> b!6429491 (=> res!2642761 e!3900526)))

(assert (=> b!6429491 (= res!2642761 (not ((_ is Concat!25178) (regTwo!33178 r!7292))))))

(declare-fun e!3900528 () Bool)

(assert (=> b!6429491 (= e!3900528 e!3900526)))

(declare-fun b!6429492 () Bool)

(declare-fun e!3900529 () Bool)

(assert (=> b!6429492 (= e!3900529 e!3900528)))

(assert (=> b!6429492 (= c!1174972 ((_ is Union!16333) (regTwo!33178 r!7292)))))

(declare-fun b!6429493 () Bool)

(declare-fun e!3900527 () Bool)

(assert (=> b!6429493 (= e!3900527 e!3900529)))

(assert (=> b!6429493 (= c!1174971 ((_ is Star!16333) (regTwo!33178 r!7292)))))

(declare-fun b!6429494 () Bool)

(declare-fun e!3900530 () Bool)

(assert (=> b!6429494 (= e!3900530 call!553024)))

(declare-fun bm!553021 () Bool)

(assert (=> bm!553021 (= call!553026 (validRegex!8069 (ite c!1174972 (regOne!33179 (regTwo!33178 r!7292)) (regOne!33178 (regTwo!33178 r!7292)))))))

(declare-fun d!2015468 () Bool)

(declare-fun res!2642759 () Bool)

(assert (=> d!2015468 (=> res!2642759 e!3900527)))

(assert (=> d!2015468 (= res!2642759 ((_ is ElementMatch!16333) (regTwo!33178 r!7292)))))

(assert (=> d!2015468 (= (validRegex!8069 (regTwo!33178 r!7292)) e!3900527)))

(declare-fun b!6429495 () Bool)

(assert (=> b!6429495 (= e!3900529 e!3900530)))

(declare-fun res!2642758 () Bool)

(assert (=> b!6429495 (= res!2642758 (not (nullable!6326 (reg!16662 (regTwo!33178 r!7292)))))))

(assert (=> b!6429495 (=> (not res!2642758) (not e!3900530))))

(declare-fun b!6429496 () Bool)

(declare-fun res!2642760 () Bool)

(declare-fun e!3900531 () Bool)

(assert (=> b!6429496 (=> (not res!2642760) (not e!3900531))))

(assert (=> b!6429496 (= res!2642760 call!553026)))

(assert (=> b!6429496 (= e!3900528 e!3900531)))

(declare-fun b!6429497 () Bool)

(assert (=> b!6429497 (= e!3900531 call!553025)))

(assert (= (and d!2015468 (not res!2642759)) b!6429493))

(assert (= (and b!6429493 c!1174971) b!6429495))

(assert (= (and b!6429493 (not c!1174971)) b!6429492))

(assert (= (and b!6429495 res!2642758) b!6429494))

(assert (= (and b!6429492 c!1174972) b!6429496))

(assert (= (and b!6429492 (not c!1174972)) b!6429491))

(assert (= (and b!6429496 res!2642760) b!6429497))

(assert (= (and b!6429491 (not res!2642761)) b!6429489))

(assert (= (and b!6429489 res!2642762) b!6429490))

(assert (= (or b!6429497 b!6429490) bm!553020))

(assert (= (or b!6429496 b!6429489) bm!553021))

(assert (= (or b!6429494 bm!553020) bm!553019))

(declare-fun m!7223176 () Bool)

(assert (=> bm!553019 m!7223176))

(declare-fun m!7223178 () Bool)

(assert (=> bm!553021 m!7223178))

(declare-fun m!7223180 () Bool)

(assert (=> b!6429495 m!7223180))

(assert (=> b!6428626 d!2015468))

(declare-fun d!2015470 () Bool)

(declare-fun e!3900534 () Bool)

(assert (=> d!2015470 (= (matchZipper!2345 ((_ map or) lt!2378890 lt!2378896) (t!378914 s!2326)) e!3900534)))

(declare-fun res!2642765 () Bool)

(assert (=> d!2015470 (=> res!2642765 e!3900534)))

(assert (=> d!2015470 (= res!2642765 (matchZipper!2345 lt!2378890 (t!378914 s!2326)))))

(declare-fun lt!2379047 () Unit!158663)

(declare-fun choose!47804 ((InoxSet Context!11434) (InoxSet Context!11434) List!65298) Unit!158663)

(assert (=> d!2015470 (= lt!2379047 (choose!47804 lt!2378890 lt!2378896 (t!378914 s!2326)))))

(assert (=> d!2015470 (= (lemmaZipperConcatMatchesSameAsBothZippers!1164 lt!2378890 lt!2378896 (t!378914 s!2326)) lt!2379047)))

(declare-fun b!6429500 () Bool)

(assert (=> b!6429500 (= e!3900534 (matchZipper!2345 lt!2378896 (t!378914 s!2326)))))

(assert (= (and d!2015470 (not res!2642765)) b!6429500))

(assert (=> d!2015470 m!7222336))

(assert (=> d!2015470 m!7222334))

(declare-fun m!7223182 () Bool)

(assert (=> d!2015470 m!7223182))

(assert (=> b!6429500 m!7222420))

(assert (=> b!6428605 d!2015470))

(declare-fun d!2015472 () Bool)

(declare-fun c!1174973 () Bool)

(assert (=> d!2015472 (= c!1174973 (isEmpty!37341 (t!378914 s!2326)))))

(declare-fun e!3900535 () Bool)

(assert (=> d!2015472 (= (matchZipper!2345 lt!2378890 (t!378914 s!2326)) e!3900535)))

(declare-fun b!6429501 () Bool)

(assert (=> b!6429501 (= e!3900535 (nullableZipper!2098 lt!2378890))))

(declare-fun b!6429502 () Bool)

(assert (=> b!6429502 (= e!3900535 (matchZipper!2345 (derivationStepZipper!2299 lt!2378890 (head!13156 (t!378914 s!2326))) (tail!12241 (t!378914 s!2326))))))

(assert (= (and d!2015472 c!1174973) b!6429501))

(assert (= (and d!2015472 (not c!1174973)) b!6429502))

(assert (=> d!2015472 m!7222810))

(declare-fun m!7223184 () Bool)

(assert (=> b!6429501 m!7223184))

(assert (=> b!6429502 m!7222814))

(assert (=> b!6429502 m!7222814))

(declare-fun m!7223186 () Bool)

(assert (=> b!6429502 m!7223186))

(assert (=> b!6429502 m!7222818))

(assert (=> b!6429502 m!7223186))

(assert (=> b!6429502 m!7222818))

(declare-fun m!7223188 () Bool)

(assert (=> b!6429502 m!7223188))

(assert (=> b!6428605 d!2015472))

(declare-fun d!2015474 () Bool)

(declare-fun c!1174974 () Bool)

(assert (=> d!2015474 (= c!1174974 (isEmpty!37341 (t!378914 s!2326)))))

(declare-fun e!3900536 () Bool)

(assert (=> d!2015474 (= (matchZipper!2345 ((_ map or) lt!2378890 lt!2378896) (t!378914 s!2326)) e!3900536)))

(declare-fun b!6429503 () Bool)

(assert (=> b!6429503 (= e!3900536 (nullableZipper!2098 ((_ map or) lt!2378890 lt!2378896)))))

(declare-fun b!6429504 () Bool)

(assert (=> b!6429504 (= e!3900536 (matchZipper!2345 (derivationStepZipper!2299 ((_ map or) lt!2378890 lt!2378896) (head!13156 (t!378914 s!2326))) (tail!12241 (t!378914 s!2326))))))

(assert (= (and d!2015474 c!1174974) b!6429503))

(assert (= (and d!2015474 (not c!1174974)) b!6429504))

(assert (=> d!2015474 m!7222810))

(declare-fun m!7223190 () Bool)

(assert (=> b!6429503 m!7223190))

(assert (=> b!6429504 m!7222814))

(assert (=> b!6429504 m!7222814))

(declare-fun m!7223192 () Bool)

(assert (=> b!6429504 m!7223192))

(assert (=> b!6429504 m!7222818))

(assert (=> b!6429504 m!7223192))

(assert (=> b!6429504 m!7222818))

(declare-fun m!7223194 () Bool)

(assert (=> b!6429504 m!7223194))

(assert (=> b!6428605 d!2015474))

(declare-fun d!2015476 () Bool)

(declare-fun c!1174975 () Bool)

(assert (=> d!2015476 (= c!1174975 (isEmpty!37341 (t!378914 s!2326)))))

(declare-fun e!3900537 () Bool)

(assert (=> d!2015476 (= (matchZipper!2345 lt!2378896 (t!378914 s!2326)) e!3900537)))

(declare-fun b!6429505 () Bool)

(assert (=> b!6429505 (= e!3900537 (nullableZipper!2098 lt!2378896))))

(declare-fun b!6429506 () Bool)

(assert (=> b!6429506 (= e!3900537 (matchZipper!2345 (derivationStepZipper!2299 lt!2378896 (head!13156 (t!378914 s!2326))) (tail!12241 (t!378914 s!2326))))))

(assert (= (and d!2015476 c!1174975) b!6429505))

(assert (= (and d!2015476 (not c!1174975)) b!6429506))

(assert (=> d!2015476 m!7222810))

(declare-fun m!7223196 () Bool)

(assert (=> b!6429505 m!7223196))

(assert (=> b!6429506 m!7222814))

(assert (=> b!6429506 m!7222814))

(declare-fun m!7223198 () Bool)

(assert (=> b!6429506 m!7223198))

(assert (=> b!6429506 m!7222818))

(assert (=> b!6429506 m!7223198))

(assert (=> b!6429506 m!7222818))

(declare-fun m!7223200 () Bool)

(assert (=> b!6429506 m!7223200))

(assert (=> b!6428606 d!2015476))

(declare-fun b!6429507 () Bool)

(declare-fun e!3900538 () Bool)

(assert (=> b!6429507 (= e!3900538 (matchR!8516 (derivativeStep!5037 lt!2378898 (head!13156 (_2!36615 lt!2378914))) (tail!12241 (_2!36615 lt!2378914))))))

(declare-fun b!6429508 () Bool)

(declare-fun e!3900540 () Bool)

(declare-fun e!3900542 () Bool)

(assert (=> b!6429508 (= e!3900540 e!3900542)))

(declare-fun res!2642767 () Bool)

(assert (=> b!6429508 (=> (not res!2642767) (not e!3900542))))

(declare-fun lt!2379048 () Bool)

(assert (=> b!6429508 (= res!2642767 (not lt!2379048))))

(declare-fun b!6429509 () Bool)

(declare-fun e!3900541 () Bool)

(declare-fun e!3900544 () Bool)

(assert (=> b!6429509 (= e!3900541 e!3900544)))

(declare-fun c!1174976 () Bool)

(assert (=> b!6429509 (= c!1174976 ((_ is EmptyLang!16333) lt!2378898))))

(declare-fun b!6429510 () Bool)

(declare-fun res!2642772 () Bool)

(declare-fun e!3900539 () Bool)

(assert (=> b!6429510 (=> res!2642772 e!3900539)))

(assert (=> b!6429510 (= res!2642772 (not (isEmpty!37341 (tail!12241 (_2!36615 lt!2378914)))))))

(declare-fun b!6429511 () Bool)

(assert (=> b!6429511 (= e!3900542 e!3900539)))

(declare-fun res!2642769 () Bool)

(assert (=> b!6429511 (=> res!2642769 e!3900539)))

(declare-fun call!553027 () Bool)

(assert (=> b!6429511 (= res!2642769 call!553027)))

(declare-fun d!2015478 () Bool)

(assert (=> d!2015478 e!3900541))

(declare-fun c!1174978 () Bool)

(assert (=> d!2015478 (= c!1174978 ((_ is EmptyExpr!16333) lt!2378898))))

(assert (=> d!2015478 (= lt!2379048 e!3900538)))

(declare-fun c!1174977 () Bool)

(assert (=> d!2015478 (= c!1174977 (isEmpty!37341 (_2!36615 lt!2378914)))))

(assert (=> d!2015478 (validRegex!8069 lt!2378898)))

(assert (=> d!2015478 (= (matchR!8516 lt!2378898 (_2!36615 lt!2378914)) lt!2379048)))

(declare-fun b!6429512 () Bool)

(declare-fun res!2642770 () Bool)

(declare-fun e!3900543 () Bool)

(assert (=> b!6429512 (=> (not res!2642770) (not e!3900543))))

(assert (=> b!6429512 (= res!2642770 (not call!553027))))

(declare-fun b!6429513 () Bool)

(assert (=> b!6429513 (= e!3900541 (= lt!2379048 call!553027))))

(declare-fun b!6429514 () Bool)

(assert (=> b!6429514 (= e!3900539 (not (= (head!13156 (_2!36615 lt!2378914)) (c!1174748 lt!2378898))))))

(declare-fun bm!553022 () Bool)

(assert (=> bm!553022 (= call!553027 (isEmpty!37341 (_2!36615 lt!2378914)))))

(declare-fun b!6429515 () Bool)

(assert (=> b!6429515 (= e!3900543 (= (head!13156 (_2!36615 lt!2378914)) (c!1174748 lt!2378898)))))

(declare-fun b!6429516 () Bool)

(declare-fun res!2642771 () Bool)

(assert (=> b!6429516 (=> (not res!2642771) (not e!3900543))))

(assert (=> b!6429516 (= res!2642771 (isEmpty!37341 (tail!12241 (_2!36615 lt!2378914))))))

(declare-fun b!6429517 () Bool)

(assert (=> b!6429517 (= e!3900544 (not lt!2379048))))

(declare-fun b!6429518 () Bool)

(assert (=> b!6429518 (= e!3900538 (nullable!6326 lt!2378898))))

(declare-fun b!6429519 () Bool)

(declare-fun res!2642773 () Bool)

(assert (=> b!6429519 (=> res!2642773 e!3900540)))

(assert (=> b!6429519 (= res!2642773 e!3900543)))

(declare-fun res!2642768 () Bool)

(assert (=> b!6429519 (=> (not res!2642768) (not e!3900543))))

(assert (=> b!6429519 (= res!2642768 lt!2379048)))

(declare-fun b!6429520 () Bool)

(declare-fun res!2642766 () Bool)

(assert (=> b!6429520 (=> res!2642766 e!3900540)))

(assert (=> b!6429520 (= res!2642766 (not ((_ is ElementMatch!16333) lt!2378898)))))

(assert (=> b!6429520 (= e!3900544 e!3900540)))

(assert (= (and d!2015478 c!1174977) b!6429518))

(assert (= (and d!2015478 (not c!1174977)) b!6429507))

(assert (= (and d!2015478 c!1174978) b!6429513))

(assert (= (and d!2015478 (not c!1174978)) b!6429509))

(assert (= (and b!6429509 c!1174976) b!6429517))

(assert (= (and b!6429509 (not c!1174976)) b!6429520))

(assert (= (and b!6429520 (not res!2642766)) b!6429519))

(assert (= (and b!6429519 res!2642768) b!6429512))

(assert (= (and b!6429512 res!2642770) b!6429516))

(assert (= (and b!6429516 res!2642771) b!6429515))

(assert (= (and b!6429519 (not res!2642773)) b!6429508))

(assert (= (and b!6429508 res!2642767) b!6429511))

(assert (= (and b!6429511 (not res!2642769)) b!6429510))

(assert (= (and b!6429510 (not res!2642772)) b!6429514))

(assert (= (or b!6429513 b!6429511 b!6429512) bm!553022))

(assert (=> b!6429518 m!7222670))

(declare-fun m!7223202 () Bool)

(assert (=> bm!553022 m!7223202))

(declare-fun m!7223204 () Bool)

(assert (=> b!6429510 m!7223204))

(assert (=> b!6429510 m!7223204))

(declare-fun m!7223206 () Bool)

(assert (=> b!6429510 m!7223206))

(declare-fun m!7223208 () Bool)

(assert (=> b!6429514 m!7223208))

(assert (=> b!6429507 m!7223208))

(assert (=> b!6429507 m!7223208))

(declare-fun m!7223210 () Bool)

(assert (=> b!6429507 m!7223210))

(assert (=> b!6429507 m!7223204))

(assert (=> b!6429507 m!7223210))

(assert (=> b!6429507 m!7223204))

(declare-fun m!7223212 () Bool)

(assert (=> b!6429507 m!7223212))

(assert (=> b!6429516 m!7223204))

(assert (=> b!6429516 m!7223204))

(assert (=> b!6429516 m!7223206))

(assert (=> b!6429515 m!7223208))

(assert (=> d!2015478 m!7223202))

(assert (=> d!2015478 m!7222446))

(assert (=> b!6428603 d!2015478))

(declare-fun b!6429521 () Bool)

(declare-fun e!3900545 () Bool)

(assert (=> b!6429521 (= e!3900545 (matchR!8516 (derivativeStep!5037 (reg!16662 (regOne!33178 r!7292)) (head!13156 (_1!36615 lt!2378914))) (tail!12241 (_1!36615 lt!2378914))))))

(declare-fun b!6429522 () Bool)

(declare-fun e!3900547 () Bool)

(declare-fun e!3900549 () Bool)

(assert (=> b!6429522 (= e!3900547 e!3900549)))

(declare-fun res!2642775 () Bool)

(assert (=> b!6429522 (=> (not res!2642775) (not e!3900549))))

(declare-fun lt!2379049 () Bool)

(assert (=> b!6429522 (= res!2642775 (not lt!2379049))))

(declare-fun b!6429523 () Bool)

(declare-fun e!3900548 () Bool)

(declare-fun e!3900551 () Bool)

(assert (=> b!6429523 (= e!3900548 e!3900551)))

(declare-fun c!1174979 () Bool)

(assert (=> b!6429523 (= c!1174979 ((_ is EmptyLang!16333) (reg!16662 (regOne!33178 r!7292))))))

(declare-fun b!6429524 () Bool)

(declare-fun res!2642780 () Bool)

(declare-fun e!3900546 () Bool)

(assert (=> b!6429524 (=> res!2642780 e!3900546)))

(assert (=> b!6429524 (= res!2642780 (not (isEmpty!37341 (tail!12241 (_1!36615 lt!2378914)))))))

(declare-fun b!6429525 () Bool)

(assert (=> b!6429525 (= e!3900549 e!3900546)))

(declare-fun res!2642777 () Bool)

(assert (=> b!6429525 (=> res!2642777 e!3900546)))

(declare-fun call!553028 () Bool)

(assert (=> b!6429525 (= res!2642777 call!553028)))

(declare-fun d!2015480 () Bool)

(assert (=> d!2015480 e!3900548))

(declare-fun c!1174981 () Bool)

(assert (=> d!2015480 (= c!1174981 ((_ is EmptyExpr!16333) (reg!16662 (regOne!33178 r!7292))))))

(assert (=> d!2015480 (= lt!2379049 e!3900545)))

(declare-fun c!1174980 () Bool)

(assert (=> d!2015480 (= c!1174980 (isEmpty!37341 (_1!36615 lt!2378914)))))

(assert (=> d!2015480 (validRegex!8069 (reg!16662 (regOne!33178 r!7292)))))

(assert (=> d!2015480 (= (matchR!8516 (reg!16662 (regOne!33178 r!7292)) (_1!36615 lt!2378914)) lt!2379049)))

(declare-fun b!6429526 () Bool)

(declare-fun res!2642778 () Bool)

(declare-fun e!3900550 () Bool)

(assert (=> b!6429526 (=> (not res!2642778) (not e!3900550))))

(assert (=> b!6429526 (= res!2642778 (not call!553028))))

(declare-fun b!6429527 () Bool)

(assert (=> b!6429527 (= e!3900548 (= lt!2379049 call!553028))))

(declare-fun b!6429528 () Bool)

(assert (=> b!6429528 (= e!3900546 (not (= (head!13156 (_1!36615 lt!2378914)) (c!1174748 (reg!16662 (regOne!33178 r!7292))))))))

(declare-fun bm!553023 () Bool)

(assert (=> bm!553023 (= call!553028 (isEmpty!37341 (_1!36615 lt!2378914)))))

(declare-fun b!6429529 () Bool)

(assert (=> b!6429529 (= e!3900550 (= (head!13156 (_1!36615 lt!2378914)) (c!1174748 (reg!16662 (regOne!33178 r!7292)))))))

(declare-fun b!6429530 () Bool)

(declare-fun res!2642779 () Bool)

(assert (=> b!6429530 (=> (not res!2642779) (not e!3900550))))

(assert (=> b!6429530 (= res!2642779 (isEmpty!37341 (tail!12241 (_1!36615 lt!2378914))))))

(declare-fun b!6429531 () Bool)

(assert (=> b!6429531 (= e!3900551 (not lt!2379049))))

(declare-fun b!6429532 () Bool)

(assert (=> b!6429532 (= e!3900545 (nullable!6326 (reg!16662 (regOne!33178 r!7292))))))

(declare-fun b!6429533 () Bool)

(declare-fun res!2642781 () Bool)

(assert (=> b!6429533 (=> res!2642781 e!3900547)))

(assert (=> b!6429533 (= res!2642781 e!3900550)))

(declare-fun res!2642776 () Bool)

(assert (=> b!6429533 (=> (not res!2642776) (not e!3900550))))

(assert (=> b!6429533 (= res!2642776 lt!2379049)))

(declare-fun b!6429534 () Bool)

(declare-fun res!2642774 () Bool)

(assert (=> b!6429534 (=> res!2642774 e!3900547)))

(assert (=> b!6429534 (= res!2642774 (not ((_ is ElementMatch!16333) (reg!16662 (regOne!33178 r!7292)))))))

(assert (=> b!6429534 (= e!3900551 e!3900547)))

(assert (= (and d!2015480 c!1174980) b!6429532))

(assert (= (and d!2015480 (not c!1174980)) b!6429521))

(assert (= (and d!2015480 c!1174981) b!6429527))

(assert (= (and d!2015480 (not c!1174981)) b!6429523))

(assert (= (and b!6429523 c!1174979) b!6429531))

(assert (= (and b!6429523 (not c!1174979)) b!6429534))

(assert (= (and b!6429534 (not res!2642774)) b!6429533))

(assert (= (and b!6429533 res!2642776) b!6429526))

(assert (= (and b!6429526 res!2642778) b!6429530))

(assert (= (and b!6429530 res!2642779) b!6429529))

(assert (= (and b!6429533 (not res!2642781)) b!6429522))

(assert (= (and b!6429522 res!2642775) b!6429525))

(assert (= (and b!6429525 (not res!2642777)) b!6429524))

(assert (= (and b!6429524 (not res!2642780)) b!6429528))

(assert (= (or b!6429527 b!6429525 b!6429526) bm!553023))

(declare-fun m!7223214 () Bool)

(assert (=> b!6429532 m!7223214))

(declare-fun m!7223216 () Bool)

(assert (=> bm!553023 m!7223216))

(declare-fun m!7223218 () Bool)

(assert (=> b!6429524 m!7223218))

(assert (=> b!6429524 m!7223218))

(declare-fun m!7223220 () Bool)

(assert (=> b!6429524 m!7223220))

(declare-fun m!7223222 () Bool)

(assert (=> b!6429528 m!7223222))

(assert (=> b!6429521 m!7223222))

(assert (=> b!6429521 m!7223222))

(declare-fun m!7223224 () Bool)

(assert (=> b!6429521 m!7223224))

(assert (=> b!6429521 m!7223218))

(assert (=> b!6429521 m!7223224))

(assert (=> b!6429521 m!7223218))

(declare-fun m!7223226 () Bool)

(assert (=> b!6429521 m!7223226))

(assert (=> b!6429530 m!7223218))

(assert (=> b!6429530 m!7223218))

(assert (=> b!6429530 m!7223220))

(assert (=> b!6429529 m!7223222))

(assert (=> d!2015480 m!7223216))

(declare-fun m!7223228 () Bool)

(assert (=> d!2015480 m!7223228))

(assert (=> b!6428624 d!2015480))

(declare-fun d!2015482 () Bool)

(assert (=> d!2015482 (= (isEmpty!37340 (t!378916 zl!343)) ((_ is Nil!65176) (t!378916 zl!343)))))

(assert (=> b!6428602 d!2015482))

(declare-fun d!2015484 () Bool)

(declare-fun nullableFct!2272 (Regex!16333) Bool)

(assert (=> d!2015484 (= (nullable!6326 (regOne!33178 (regOne!33178 r!7292))) (nullableFct!2272 (regOne!33178 (regOne!33178 r!7292))))))

(declare-fun bs!1617126 () Bool)

(assert (= bs!1617126 d!2015484))

(declare-fun m!7223230 () Bool)

(assert (=> bs!1617126 m!7223230))

(assert (=> b!6428604 d!2015484))

(declare-fun d!2015486 () Bool)

(declare-fun e!3900554 () Bool)

(assert (=> d!2015486 e!3900554))

(declare-fun res!2642784 () Bool)

(assert (=> d!2015486 (=> (not res!2642784) (not e!3900554))))

(declare-fun lt!2379052 () List!65300)

(declare-fun noDuplicate!2162 (List!65300) Bool)

(assert (=> d!2015486 (= res!2642784 (noDuplicate!2162 lt!2379052))))

(declare-fun choose!47806 ((InoxSet Context!11434)) List!65300)

(assert (=> d!2015486 (= lt!2379052 (choose!47806 z!1189))))

(assert (=> d!2015486 (= (toList!10117 z!1189) lt!2379052)))

(declare-fun b!6429537 () Bool)

(declare-fun content!12381 (List!65300) (InoxSet Context!11434))

(assert (=> b!6429537 (= e!3900554 (= (content!12381 lt!2379052) z!1189))))

(assert (= (and d!2015486 res!2642784) b!6429537))

(declare-fun m!7223232 () Bool)

(assert (=> d!2015486 m!7223232))

(declare-fun m!7223234 () Bool)

(assert (=> d!2015486 m!7223234))

(declare-fun m!7223236 () Bool)

(assert (=> b!6429537 m!7223236))

(assert (=> b!6428611 d!2015486))

(declare-fun bs!1617127 () Bool)

(declare-fun b!6429544 () Bool)

(assert (= bs!1617127 (and b!6429544 b!6428621)))

(declare-fun lambda!355620 () Int)

(assert (=> bs!1617127 (not (= lambda!355620 lambda!355545))))

(declare-fun bs!1617128 () Bool)

(assert (= bs!1617128 (and b!6429544 d!2015392)))

(assert (=> bs!1617128 (not (= lambda!355620 lambda!355596))))

(declare-fun bs!1617129 () Bool)

(assert (= bs!1617129 (and b!6429544 b!6428631)))

(assert (=> bs!1617129 (= (= (reg!16662 lt!2378898) (reg!16662 (regOne!33178 r!7292))) (= lambda!355620 lambda!355550))))

(declare-fun bs!1617130 () Bool)

(assert (= bs!1617130 (and b!6429544 d!2015402)))

(assert (=> bs!1617130 (not (= lambda!355620 lambda!355607))))

(assert (=> bs!1617130 (not (= lambda!355620 lambda!355606))))

(declare-fun bs!1617131 () Bool)

(assert (= bs!1617131 (and b!6429544 b!6429470)))

(assert (=> bs!1617131 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 lt!2378898) (reg!16662 r!7292)) (= lt!2378898 r!7292)) (= lambda!355620 lambda!355618))))

(assert (=> bs!1617129 (not (= lambda!355620 lambda!355549))))

(declare-fun bs!1617132 () Bool)

(assert (= bs!1617132 (and b!6429544 b!6428629)))

(assert (=> bs!1617132 (not (= lambda!355620 lambda!355548))))

(assert (=> bs!1617132 (not (= lambda!355620 lambda!355547))))

(assert (=> bs!1617127 (not (= lambda!355620 lambda!355544))))

(declare-fun bs!1617133 () Bool)

(assert (= bs!1617133 (and b!6429544 b!6429474)))

(assert (=> bs!1617133 (not (= lambda!355620 lambda!355619))))

(assert (=> bs!1617129 (not (= lambda!355620 lambda!355551))))

(assert (=> b!6429544 true))

(assert (=> b!6429544 true))

(declare-fun bs!1617134 () Bool)

(declare-fun b!6429548 () Bool)

(assert (= bs!1617134 (and b!6429548 b!6429544)))

(declare-fun lambda!355621 () Int)

(assert (=> bs!1617134 (not (= lambda!355621 lambda!355620))))

(declare-fun bs!1617135 () Bool)

(assert (= bs!1617135 (and b!6429548 b!6428621)))

(assert (=> bs!1617135 (= (and (= (_1!36615 lt!2378919) s!2326) (= (regOne!33178 lt!2378898) (regOne!33178 r!7292)) (= (regTwo!33178 lt!2378898) (regTwo!33178 r!7292))) (= lambda!355621 lambda!355545))))

(declare-fun bs!1617136 () Bool)

(assert (= bs!1617136 (and b!6429548 d!2015392)))

(assert (=> bs!1617136 (not (= lambda!355621 lambda!355596))))

(declare-fun bs!1617137 () Bool)

(assert (= bs!1617137 (and b!6429548 b!6428631)))

(assert (=> bs!1617137 (not (= lambda!355621 lambda!355550))))

(declare-fun bs!1617138 () Bool)

(assert (= bs!1617138 (and b!6429548 d!2015402)))

(assert (=> bs!1617138 (= (and (= (_1!36615 lt!2378919) s!2326) (= (regOne!33178 lt!2378898) (regOne!33178 r!7292)) (= (regTwo!33178 lt!2378898) (regTwo!33178 r!7292))) (= lambda!355621 lambda!355607))))

(assert (=> bs!1617138 (not (= lambda!355621 lambda!355606))))

(declare-fun bs!1617139 () Bool)

(assert (= bs!1617139 (and b!6429548 b!6429470)))

(assert (=> bs!1617139 (not (= lambda!355621 lambda!355618))))

(assert (=> bs!1617137 (not (= lambda!355621 lambda!355549))))

(declare-fun bs!1617140 () Bool)

(assert (= bs!1617140 (and b!6429548 b!6428629)))

(assert (=> bs!1617140 (= (and (= (_1!36615 lt!2378919) s!2326) (= (regOne!33178 lt!2378898) lt!2378898) (= (regTwo!33178 lt!2378898) (regTwo!33178 r!7292))) (= lambda!355621 lambda!355548))))

(assert (=> bs!1617140 (not (= lambda!355621 lambda!355547))))

(assert (=> bs!1617135 (not (= lambda!355621 lambda!355544))))

(declare-fun bs!1617141 () Bool)

(assert (= bs!1617141 (and b!6429548 b!6429474)))

(assert (=> bs!1617141 (= (and (= (_1!36615 lt!2378919) s!2326) (= (regOne!33178 lt!2378898) (regOne!33178 r!7292)) (= (regTwo!33178 lt!2378898) (regTwo!33178 r!7292))) (= lambda!355621 lambda!355619))))

(assert (=> bs!1617137 (= (and (= (regOne!33178 lt!2378898) (reg!16662 (regOne!33178 r!7292))) (= (regTwo!33178 lt!2378898) lt!2378898)) (= lambda!355621 lambda!355551))))

(assert (=> b!6429548 true))

(assert (=> b!6429548 true))

(declare-fun b!6429538 () Bool)

(declare-fun res!2642787 () Bool)

(declare-fun e!3900560 () Bool)

(assert (=> b!6429538 (=> res!2642787 e!3900560)))

(declare-fun call!553029 () Bool)

(assert (=> b!6429538 (= res!2642787 call!553029)))

(declare-fun e!3900559 () Bool)

(assert (=> b!6429538 (= e!3900559 e!3900560)))

(declare-fun b!6429539 () Bool)

(declare-fun e!3900555 () Bool)

(assert (=> b!6429539 (= e!3900555 e!3900559)))

(declare-fun c!1174983 () Bool)

(assert (=> b!6429539 (= c!1174983 ((_ is Star!16333) lt!2378898))))

(declare-fun b!6429540 () Bool)

(declare-fun c!1174985 () Bool)

(assert (=> b!6429540 (= c!1174985 ((_ is ElementMatch!16333) lt!2378898))))

(declare-fun e!3900557 () Bool)

(declare-fun e!3900556 () Bool)

(assert (=> b!6429540 (= e!3900557 e!3900556)))

(declare-fun b!6429541 () Bool)

(declare-fun c!1174982 () Bool)

(assert (=> b!6429541 (= c!1174982 ((_ is Union!16333) lt!2378898))))

(assert (=> b!6429541 (= e!3900556 e!3900555)))

(declare-fun bm!553025 () Bool)

(assert (=> bm!553025 (= call!553029 (isEmpty!37341 (_1!36615 lt!2378919)))))

(declare-fun b!6429542 () Bool)

(declare-fun e!3900561 () Bool)

(assert (=> b!6429542 (= e!3900561 e!3900557)))

(declare-fun res!2642785 () Bool)

(assert (=> b!6429542 (= res!2642785 (not ((_ is EmptyLang!16333) lt!2378898)))))

(assert (=> b!6429542 (=> (not res!2642785) (not e!3900557))))

(declare-fun call!553030 () Bool)

(declare-fun bm!553024 () Bool)

(assert (=> bm!553024 (= call!553030 (Exists!3403 (ite c!1174983 lambda!355620 lambda!355621)))))

(declare-fun d!2015488 () Bool)

(declare-fun c!1174984 () Bool)

(assert (=> d!2015488 (= c!1174984 ((_ is EmptyExpr!16333) lt!2378898))))

(assert (=> d!2015488 (= (matchRSpec!3434 lt!2378898 (_1!36615 lt!2378919)) e!3900561)))

(declare-fun b!6429543 () Bool)

(assert (=> b!6429543 (= e!3900556 (= (_1!36615 lt!2378919) (Cons!65174 (c!1174748 lt!2378898) Nil!65174)))))

(assert (=> b!6429544 (= e!3900560 call!553030)))

(declare-fun b!6429545 () Bool)

(assert (=> b!6429545 (= e!3900561 call!553029)))

(declare-fun b!6429546 () Bool)

(declare-fun e!3900558 () Bool)

(assert (=> b!6429546 (= e!3900558 (matchRSpec!3434 (regTwo!33179 lt!2378898) (_1!36615 lt!2378919)))))

(declare-fun b!6429547 () Bool)

(assert (=> b!6429547 (= e!3900555 e!3900558)))

(declare-fun res!2642786 () Bool)

(assert (=> b!6429547 (= res!2642786 (matchRSpec!3434 (regOne!33179 lt!2378898) (_1!36615 lt!2378919)))))

(assert (=> b!6429547 (=> res!2642786 e!3900558)))

(assert (=> b!6429548 (= e!3900559 call!553030)))

(assert (= (and d!2015488 c!1174984) b!6429545))

(assert (= (and d!2015488 (not c!1174984)) b!6429542))

(assert (= (and b!6429542 res!2642785) b!6429540))

(assert (= (and b!6429540 c!1174985) b!6429543))

(assert (= (and b!6429540 (not c!1174985)) b!6429541))

(assert (= (and b!6429541 c!1174982) b!6429547))

(assert (= (and b!6429541 (not c!1174982)) b!6429539))

(assert (= (and b!6429547 (not res!2642786)) b!6429546))

(assert (= (and b!6429539 c!1174983) b!6429538))

(assert (= (and b!6429539 (not c!1174983)) b!6429548))

(assert (= (and b!6429538 (not res!2642787)) b!6429544))

(assert (= (or b!6429544 b!6429548) bm!553024))

(assert (= (or b!6429545 b!6429538) bm!553025))

(assert (=> bm!553025 m!7222306))

(declare-fun m!7223238 () Bool)

(assert (=> bm!553024 m!7223238))

(declare-fun m!7223240 () Bool)

(assert (=> b!6429546 m!7223240))

(declare-fun m!7223242 () Bool)

(assert (=> b!6429547 m!7223242))

(assert (=> b!6428631 d!2015488))

(declare-fun b!6429549 () Bool)

(declare-fun e!3900564 () Option!16224)

(assert (=> b!6429549 (= e!3900564 None!16223)))

(declare-fun b!6429550 () Bool)

(declare-fun lt!2379053 () Unit!158663)

(declare-fun lt!2379055 () Unit!158663)

(assert (=> b!6429550 (= lt!2379053 lt!2379055)))

(assert (=> b!6429550 (= (++!14401 (++!14401 Nil!65174 (Cons!65174 (h!71622 (_1!36615 lt!2378919)) Nil!65174)) (t!378914 (_1!36615 lt!2378919))) (_1!36615 lt!2378919))))

(assert (=> b!6429550 (= lt!2379055 (lemmaMoveElementToOtherListKeepsConcatEq!2496 Nil!65174 (h!71622 (_1!36615 lt!2378919)) (t!378914 (_1!36615 lt!2378919)) (_1!36615 lt!2378919)))))

(assert (=> b!6429550 (= e!3900564 (findConcatSeparation!2638 (reg!16662 (regOne!33178 r!7292)) lt!2378898 (++!14401 Nil!65174 (Cons!65174 (h!71622 (_1!36615 lt!2378919)) Nil!65174)) (t!378914 (_1!36615 lt!2378919)) (_1!36615 lt!2378919)))))

(declare-fun b!6429551 () Bool)

(declare-fun res!2642791 () Bool)

(declare-fun e!3900563 () Bool)

(assert (=> b!6429551 (=> (not res!2642791) (not e!3900563))))

(declare-fun lt!2379054 () Option!16224)

(assert (=> b!6429551 (= res!2642791 (matchR!8516 lt!2378898 (_2!36615 (get!22583 lt!2379054))))))

(declare-fun b!6429552 () Bool)

(declare-fun e!3900566 () Option!16224)

(assert (=> b!6429552 (= e!3900566 (Some!16223 (tuple2!66625 Nil!65174 (_1!36615 lt!2378919))))))

(declare-fun b!6429553 () Bool)

(declare-fun e!3900565 () Bool)

(assert (=> b!6429553 (= e!3900565 (matchR!8516 lt!2378898 (_1!36615 lt!2378919)))))

(declare-fun b!6429554 () Bool)

(declare-fun e!3900562 () Bool)

(assert (=> b!6429554 (= e!3900562 (not (isDefined!12927 lt!2379054)))))

(declare-fun b!6429556 () Bool)

(declare-fun res!2642789 () Bool)

(assert (=> b!6429556 (=> (not res!2642789) (not e!3900563))))

(assert (=> b!6429556 (= res!2642789 (matchR!8516 (reg!16662 (regOne!33178 r!7292)) (_1!36615 (get!22583 lt!2379054))))))

(declare-fun b!6429557 () Bool)

(assert (=> b!6429557 (= e!3900563 (= (++!14401 (_1!36615 (get!22583 lt!2379054)) (_2!36615 (get!22583 lt!2379054))) (_1!36615 lt!2378919)))))

(declare-fun b!6429555 () Bool)

(assert (=> b!6429555 (= e!3900566 e!3900564)))

(declare-fun c!1174987 () Bool)

(assert (=> b!6429555 (= c!1174987 ((_ is Nil!65174) (_1!36615 lt!2378919)))))

(declare-fun d!2015490 () Bool)

(assert (=> d!2015490 e!3900562))

(declare-fun res!2642790 () Bool)

(assert (=> d!2015490 (=> res!2642790 e!3900562)))

(assert (=> d!2015490 (= res!2642790 e!3900563)))

(declare-fun res!2642788 () Bool)

(assert (=> d!2015490 (=> (not res!2642788) (not e!3900563))))

(assert (=> d!2015490 (= res!2642788 (isDefined!12927 lt!2379054))))

(assert (=> d!2015490 (= lt!2379054 e!3900566)))

(declare-fun c!1174986 () Bool)

(assert (=> d!2015490 (= c!1174986 e!3900565)))

(declare-fun res!2642792 () Bool)

(assert (=> d!2015490 (=> (not res!2642792) (not e!3900565))))

(assert (=> d!2015490 (= res!2642792 (matchR!8516 (reg!16662 (regOne!33178 r!7292)) Nil!65174))))

(assert (=> d!2015490 (validRegex!8069 (reg!16662 (regOne!33178 r!7292)))))

(assert (=> d!2015490 (= (findConcatSeparation!2638 (reg!16662 (regOne!33178 r!7292)) lt!2378898 Nil!65174 (_1!36615 lt!2378919) (_1!36615 lt!2378919)) lt!2379054)))

(assert (= (and d!2015490 res!2642792) b!6429553))

(assert (= (and d!2015490 c!1174986) b!6429552))

(assert (= (and d!2015490 (not c!1174986)) b!6429555))

(assert (= (and b!6429555 c!1174987) b!6429549))

(assert (= (and b!6429555 (not c!1174987)) b!6429550))

(assert (= (and d!2015490 res!2642788) b!6429556))

(assert (= (and b!6429556 res!2642789) b!6429551))

(assert (= (and b!6429551 res!2642791) b!6429557))

(assert (= (and d!2015490 (not res!2642790)) b!6429554))

(declare-fun m!7223244 () Bool)

(assert (=> b!6429554 m!7223244))

(declare-fun m!7223246 () Bool)

(assert (=> b!6429551 m!7223246))

(declare-fun m!7223248 () Bool)

(assert (=> b!6429551 m!7223248))

(declare-fun m!7223250 () Bool)

(assert (=> b!6429550 m!7223250))

(assert (=> b!6429550 m!7223250))

(declare-fun m!7223252 () Bool)

(assert (=> b!6429550 m!7223252))

(declare-fun m!7223254 () Bool)

(assert (=> b!6429550 m!7223254))

(assert (=> b!6429550 m!7223250))

(declare-fun m!7223256 () Bool)

(assert (=> b!6429550 m!7223256))

(assert (=> d!2015490 m!7223244))

(declare-fun m!7223258 () Bool)

(assert (=> d!2015490 m!7223258))

(assert (=> d!2015490 m!7223228))

(assert (=> b!6429557 m!7223246))

(declare-fun m!7223260 () Bool)

(assert (=> b!6429557 m!7223260))

(assert (=> b!6429553 m!7222402))

(assert (=> b!6429556 m!7223246))

(declare-fun m!7223262 () Bool)

(assert (=> b!6429556 m!7223262))

(assert (=> b!6428631 d!2015490))

(declare-fun bs!1617142 () Bool)

(declare-fun d!2015492 () Bool)

(assert (= bs!1617142 (and d!2015492 b!6429544)))

(declare-fun lambda!355622 () Int)

(assert (=> bs!1617142 (not (= lambda!355622 lambda!355620))))

(declare-fun bs!1617143 () Bool)

(assert (= bs!1617143 (and d!2015492 b!6428621)))

(assert (=> bs!1617143 (not (= lambda!355622 lambda!355545))))

(declare-fun bs!1617144 () Bool)

(assert (= bs!1617144 (and d!2015492 b!6429548)))

(assert (=> bs!1617144 (not (= lambda!355622 lambda!355621))))

(declare-fun bs!1617145 () Bool)

(assert (= bs!1617145 (and d!2015492 d!2015392)))

(assert (=> bs!1617145 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) (regOne!33178 r!7292)) (= lt!2378898 (regTwo!33178 r!7292))) (= lambda!355622 lambda!355596))))

(declare-fun bs!1617146 () Bool)

(assert (= bs!1617146 (and d!2015492 b!6428631)))

(assert (=> bs!1617146 (not (= lambda!355622 lambda!355550))))

(declare-fun bs!1617147 () Bool)

(assert (= bs!1617147 (and d!2015492 d!2015402)))

(assert (=> bs!1617147 (not (= lambda!355622 lambda!355607))))

(assert (=> bs!1617147 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) (regOne!33178 r!7292)) (= lt!2378898 (regTwo!33178 r!7292))) (= lambda!355622 lambda!355606))))

(declare-fun bs!1617148 () Bool)

(assert (= bs!1617148 (and d!2015492 b!6429470)))

(assert (=> bs!1617148 (not (= lambda!355622 lambda!355618))))

(assert (=> bs!1617146 (= lambda!355622 lambda!355549)))

(declare-fun bs!1617149 () Bool)

(assert (= bs!1617149 (and d!2015492 b!6428629)))

(assert (=> bs!1617149 (not (= lambda!355622 lambda!355548))))

(assert (=> bs!1617149 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) lt!2378898) (= lt!2378898 (regTwo!33178 r!7292))) (= lambda!355622 lambda!355547))))

(assert (=> bs!1617143 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) (regOne!33178 r!7292)) (= lt!2378898 (regTwo!33178 r!7292))) (= lambda!355622 lambda!355544))))

(declare-fun bs!1617150 () Bool)

(assert (= bs!1617150 (and d!2015492 b!6429474)))

(assert (=> bs!1617150 (not (= lambda!355622 lambda!355619))))

(assert (=> bs!1617146 (not (= lambda!355622 lambda!355551))))

(assert (=> d!2015492 true))

(assert (=> d!2015492 true))

(assert (=> d!2015492 true))

(declare-fun bs!1617151 () Bool)

(assert (= bs!1617151 d!2015492))

(declare-fun lambda!355623 () Int)

(assert (=> bs!1617151 (not (= lambda!355623 lambda!355622))))

(assert (=> bs!1617142 (not (= lambda!355623 lambda!355620))))

(assert (=> bs!1617143 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) (regOne!33178 r!7292)) (= lt!2378898 (regTwo!33178 r!7292))) (= lambda!355623 lambda!355545))))

(assert (=> bs!1617144 (= (and (= (reg!16662 (regOne!33178 r!7292)) (regOne!33178 lt!2378898)) (= lt!2378898 (regTwo!33178 lt!2378898))) (= lambda!355623 lambda!355621))))

(assert (=> bs!1617145 (not (= lambda!355623 lambda!355596))))

(assert (=> bs!1617146 (not (= lambda!355623 lambda!355550))))

(assert (=> bs!1617147 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) (regOne!33178 r!7292)) (= lt!2378898 (regTwo!33178 r!7292))) (= lambda!355623 lambda!355607))))

(assert (=> bs!1617147 (not (= lambda!355623 lambda!355606))))

(assert (=> bs!1617148 (not (= lambda!355623 lambda!355618))))

(assert (=> bs!1617146 (not (= lambda!355623 lambda!355549))))

(assert (=> bs!1617149 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) lt!2378898) (= lt!2378898 (regTwo!33178 r!7292))) (= lambda!355623 lambda!355548))))

(assert (=> bs!1617149 (not (= lambda!355623 lambda!355547))))

(assert (=> bs!1617143 (not (= lambda!355623 lambda!355544))))

(assert (=> bs!1617150 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) (regOne!33178 r!7292)) (= lt!2378898 (regTwo!33178 r!7292))) (= lambda!355623 lambda!355619))))

(assert (=> bs!1617146 (= lambda!355623 lambda!355551)))

(assert (=> d!2015492 true))

(assert (=> d!2015492 true))

(assert (=> d!2015492 true))

(assert (=> d!2015492 (= (Exists!3403 lambda!355622) (Exists!3403 lambda!355623))))

(declare-fun lt!2379056 () Unit!158663)

(assert (=> d!2015492 (= lt!2379056 (choose!47800 (reg!16662 (regOne!33178 r!7292)) lt!2378898 (_1!36615 lt!2378919)))))

(assert (=> d!2015492 (validRegex!8069 (reg!16662 (regOne!33178 r!7292)))))

(assert (=> d!2015492 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1940 (reg!16662 (regOne!33178 r!7292)) lt!2378898 (_1!36615 lt!2378919)) lt!2379056)))

(declare-fun m!7223264 () Bool)

(assert (=> bs!1617151 m!7223264))

(declare-fun m!7223266 () Bool)

(assert (=> bs!1617151 m!7223266))

(declare-fun m!7223268 () Bool)

(assert (=> bs!1617151 m!7223268))

(assert (=> bs!1617151 m!7223228))

(assert (=> b!6428631 d!2015492))

(declare-fun d!2015494 () Bool)

(assert (=> d!2015494 (= (Exists!3403 lambda!355550) (choose!47798 lambda!355550))))

(declare-fun bs!1617152 () Bool)

(assert (= bs!1617152 d!2015494))

(declare-fun m!7223270 () Bool)

(assert (=> bs!1617152 m!7223270))

(assert (=> b!6428631 d!2015494))

(declare-fun d!2015496 () Bool)

(assert (=> d!2015496 (= (matchR!8516 lt!2378898 (_1!36615 lt!2378919)) (matchRSpec!3434 lt!2378898 (_1!36615 lt!2378919)))))

(declare-fun lt!2379057 () Unit!158663)

(assert (=> d!2015496 (= lt!2379057 (choose!47803 lt!2378898 (_1!36615 lt!2378919)))))

(assert (=> d!2015496 (validRegex!8069 lt!2378898)))

(assert (=> d!2015496 (= (mainMatchTheorem!3434 lt!2378898 (_1!36615 lt!2378919)) lt!2379057)))

(declare-fun bs!1617153 () Bool)

(assert (= bs!1617153 d!2015496))

(assert (=> bs!1617153 m!7222402))

(assert (=> bs!1617153 m!7222428))

(declare-fun m!7223272 () Bool)

(assert (=> bs!1617153 m!7223272))

(assert (=> bs!1617153 m!7222446))

(assert (=> b!6428631 d!2015496))

(declare-fun d!2015498 () Bool)

(assert (=> d!2015498 (= (get!22583 lt!2378885) (v!52396 lt!2378885))))

(assert (=> b!6428631 d!2015498))

(declare-fun b!6429561 () Bool)

(declare-fun e!3900567 () Bool)

(declare-fun lt!2379058 () List!65298)

(assert (=> b!6429561 (= e!3900567 (or (not (= (_2!36615 lt!2378914) Nil!65174)) (= lt!2379058 (_1!36615 lt!2378914))))))

(declare-fun b!6429560 () Bool)

(declare-fun res!2642793 () Bool)

(assert (=> b!6429560 (=> (not res!2642793) (not e!3900567))))

(assert (=> b!6429560 (= res!2642793 (= (size!40392 lt!2379058) (+ (size!40392 (_1!36615 lt!2378914)) (size!40392 (_2!36615 lt!2378914)))))))

(declare-fun b!6429558 () Bool)

(declare-fun e!3900568 () List!65298)

(assert (=> b!6429558 (= e!3900568 (_2!36615 lt!2378914))))

(declare-fun b!6429559 () Bool)

(assert (=> b!6429559 (= e!3900568 (Cons!65174 (h!71622 (_1!36615 lt!2378914)) (++!14401 (t!378914 (_1!36615 lt!2378914)) (_2!36615 lt!2378914))))))

(declare-fun d!2015500 () Bool)

(assert (=> d!2015500 e!3900567))

(declare-fun res!2642794 () Bool)

(assert (=> d!2015500 (=> (not res!2642794) (not e!3900567))))

(assert (=> d!2015500 (= res!2642794 (= (content!12380 lt!2379058) ((_ map or) (content!12380 (_1!36615 lt!2378914)) (content!12380 (_2!36615 lt!2378914)))))))

(assert (=> d!2015500 (= lt!2379058 e!3900568)))

(declare-fun c!1174988 () Bool)

(assert (=> d!2015500 (= c!1174988 ((_ is Nil!65174) (_1!36615 lt!2378914)))))

(assert (=> d!2015500 (= (++!14401 (_1!36615 lt!2378914) (_2!36615 lt!2378914)) lt!2379058)))

(assert (= (and d!2015500 c!1174988) b!6429558))

(assert (= (and d!2015500 (not c!1174988)) b!6429559))

(assert (= (and d!2015500 res!2642794) b!6429560))

(assert (= (and b!6429560 res!2642793) b!6429561))

(declare-fun m!7223274 () Bool)

(assert (=> b!6429560 m!7223274))

(assert (=> b!6429560 m!7223000))

(assert (=> b!6429560 m!7223028))

(declare-fun m!7223276 () Bool)

(assert (=> b!6429559 m!7223276))

(declare-fun m!7223278 () Bool)

(assert (=> d!2015500 m!7223278))

(assert (=> d!2015500 m!7223008))

(assert (=> d!2015500 m!7223034))

(assert (=> b!6428631 d!2015500))

(declare-fun d!2015502 () Bool)

(assert (=> d!2015502 (= (Exists!3403 lambda!355549) (choose!47798 lambda!355549))))

(declare-fun bs!1617154 () Bool)

(assert (= bs!1617154 d!2015502))

(declare-fun m!7223280 () Bool)

(assert (=> bs!1617154 m!7223280))

(assert (=> b!6428631 d!2015502))

(declare-fun d!2015504 () Bool)

(assert (=> d!2015504 (= (isDefined!12927 lt!2378885) (not (isEmpty!37344 lt!2378885)))))

(declare-fun bs!1617155 () Bool)

(assert (= bs!1617155 d!2015504))

(declare-fun m!7223282 () Bool)

(assert (=> bs!1617155 m!7223282))

(assert (=> b!6428631 d!2015504))

(declare-fun bs!1617156 () Bool)

(declare-fun d!2015506 () Bool)

(assert (= bs!1617156 (and d!2015506 d!2015492)))

(declare-fun lambda!355628 () Int)

(assert (=> bs!1617156 (= (= (Star!16333 (reg!16662 (regOne!33178 r!7292))) lt!2378898) (= lambda!355628 lambda!355622))))

(declare-fun bs!1617157 () Bool)

(assert (= bs!1617157 (and d!2015506 b!6429544)))

(assert (=> bs!1617157 (not (= lambda!355628 lambda!355620))))

(declare-fun bs!1617158 () Bool)

(assert (= bs!1617158 (and d!2015506 b!6428621)))

(assert (=> bs!1617158 (not (= lambda!355628 lambda!355545))))

(declare-fun bs!1617159 () Bool)

(assert (= bs!1617159 (and d!2015506 b!6429548)))

(assert (=> bs!1617159 (not (= lambda!355628 lambda!355621))))

(declare-fun bs!1617160 () Bool)

(assert (= bs!1617160 (and d!2015506 d!2015392)))

(assert (=> bs!1617160 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) (regOne!33178 r!7292)) (= (Star!16333 (reg!16662 (regOne!33178 r!7292))) (regTwo!33178 r!7292))) (= lambda!355628 lambda!355596))))

(declare-fun bs!1617161 () Bool)

(assert (= bs!1617161 (and d!2015506 b!6428631)))

(assert (=> bs!1617161 (not (= lambda!355628 lambda!355550))))

(declare-fun bs!1617162 () Bool)

(assert (= bs!1617162 (and d!2015506 d!2015402)))

(assert (=> bs!1617162 (not (= lambda!355628 lambda!355607))))

(assert (=> bs!1617162 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) (regOne!33178 r!7292)) (= (Star!16333 (reg!16662 (regOne!33178 r!7292))) (regTwo!33178 r!7292))) (= lambda!355628 lambda!355606))))

(declare-fun bs!1617163 () Bool)

(assert (= bs!1617163 (and d!2015506 b!6429470)))

(assert (=> bs!1617163 (not (= lambda!355628 lambda!355618))))

(assert (=> bs!1617161 (= (= (Star!16333 (reg!16662 (regOne!33178 r!7292))) lt!2378898) (= lambda!355628 lambda!355549))))

(declare-fun bs!1617164 () Bool)

(assert (= bs!1617164 (and d!2015506 b!6428629)))

(assert (=> bs!1617164 (not (= lambda!355628 lambda!355548))))

(assert (=> bs!1617164 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) lt!2378898) (= (Star!16333 (reg!16662 (regOne!33178 r!7292))) (regTwo!33178 r!7292))) (= lambda!355628 lambda!355547))))

(assert (=> bs!1617158 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) (regOne!33178 r!7292)) (= (Star!16333 (reg!16662 (regOne!33178 r!7292))) (regTwo!33178 r!7292))) (= lambda!355628 lambda!355544))))

(assert (=> bs!1617161 (not (= lambda!355628 lambda!355551))))

(assert (=> bs!1617156 (not (= lambda!355628 lambda!355623))))

(declare-fun bs!1617165 () Bool)

(assert (= bs!1617165 (and d!2015506 b!6429474)))

(assert (=> bs!1617165 (not (= lambda!355628 lambda!355619))))

(assert (=> d!2015506 true))

(assert (=> d!2015506 true))

(declare-fun lambda!355629 () Int)

(assert (=> bs!1617156 (not (= lambda!355629 lambda!355622))))

(assert (=> bs!1617157 (= (and (= (reg!16662 (regOne!33178 r!7292)) (reg!16662 lt!2378898)) (= (Star!16333 (reg!16662 (regOne!33178 r!7292))) lt!2378898)) (= lambda!355629 lambda!355620))))

(assert (=> bs!1617158 (not (= lambda!355629 lambda!355545))))

(assert (=> bs!1617159 (not (= lambda!355629 lambda!355621))))

(assert (=> bs!1617160 (not (= lambda!355629 lambda!355596))))

(assert (=> bs!1617161 (= (= (Star!16333 (reg!16662 (regOne!33178 r!7292))) lt!2378898) (= lambda!355629 lambda!355550))))

(assert (=> bs!1617162 (not (= lambda!355629 lambda!355607))))

(assert (=> bs!1617163 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) (reg!16662 r!7292)) (= (Star!16333 (reg!16662 (regOne!33178 r!7292))) r!7292)) (= lambda!355629 lambda!355618))))

(assert (=> bs!1617161 (not (= lambda!355629 lambda!355549))))

(assert (=> bs!1617164 (not (= lambda!355629 lambda!355548))))

(assert (=> bs!1617164 (not (= lambda!355629 lambda!355547))))

(assert (=> bs!1617158 (not (= lambda!355629 lambda!355544))))

(assert (=> bs!1617161 (not (= lambda!355629 lambda!355551))))

(assert (=> bs!1617156 (not (= lambda!355629 lambda!355623))))

(assert (=> bs!1617165 (not (= lambda!355629 lambda!355619))))

(assert (=> bs!1617162 (not (= lambda!355629 lambda!355606))))

(declare-fun bs!1617166 () Bool)

(assert (= bs!1617166 d!2015506))

(assert (=> bs!1617166 (not (= lambda!355629 lambda!355628))))

(assert (=> d!2015506 true))

(assert (=> d!2015506 true))

(assert (=> d!2015506 (= (Exists!3403 lambda!355628) (Exists!3403 lambda!355629))))

(declare-fun lt!2379061 () Unit!158663)

(declare-fun choose!47807 (Regex!16333 List!65298) Unit!158663)

(assert (=> d!2015506 (= lt!2379061 (choose!47807 (reg!16662 (regOne!33178 r!7292)) (_1!36615 lt!2378919)))))

(assert (=> d!2015506 (validRegex!8069 (reg!16662 (regOne!33178 r!7292)))))

(assert (=> d!2015506 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!624 (reg!16662 (regOne!33178 r!7292)) (_1!36615 lt!2378919)) lt!2379061)))

(declare-fun m!7223284 () Bool)

(assert (=> bs!1617166 m!7223284))

(declare-fun m!7223286 () Bool)

(assert (=> bs!1617166 m!7223286))

(declare-fun m!7223288 () Bool)

(assert (=> bs!1617166 m!7223288))

(assert (=> bs!1617166 m!7223228))

(assert (=> b!6428631 d!2015506))

(declare-fun d!2015508 () Bool)

(assert (=> d!2015508 (= (Exists!3403 lambda!355551) (choose!47798 lambda!355551))))

(declare-fun bs!1617167 () Bool)

(assert (= bs!1617167 d!2015508))

(declare-fun m!7223290 () Bool)

(assert (=> bs!1617167 m!7223290))

(assert (=> b!6428631 d!2015508))

(declare-fun bs!1617168 () Bool)

(declare-fun d!2015510 () Bool)

(assert (= bs!1617168 (and d!2015510 d!2015492)))

(declare-fun lambda!355630 () Int)

(assert (=> bs!1617168 (= lambda!355630 lambda!355622)))

(declare-fun bs!1617169 () Bool)

(assert (= bs!1617169 (and d!2015510 b!6429544)))

(assert (=> bs!1617169 (not (= lambda!355630 lambda!355620))))

(declare-fun bs!1617170 () Bool)

(assert (= bs!1617170 (and d!2015510 d!2015506)))

(assert (=> bs!1617170 (not (= lambda!355630 lambda!355629))))

(declare-fun bs!1617171 () Bool)

(assert (= bs!1617171 (and d!2015510 b!6428621)))

(assert (=> bs!1617171 (not (= lambda!355630 lambda!355545))))

(declare-fun bs!1617172 () Bool)

(assert (= bs!1617172 (and d!2015510 b!6429548)))

(assert (=> bs!1617172 (not (= lambda!355630 lambda!355621))))

(declare-fun bs!1617173 () Bool)

(assert (= bs!1617173 (and d!2015510 d!2015392)))

(assert (=> bs!1617173 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) (regOne!33178 r!7292)) (= lt!2378898 (regTwo!33178 r!7292))) (= lambda!355630 lambda!355596))))

(declare-fun bs!1617174 () Bool)

(assert (= bs!1617174 (and d!2015510 b!6428631)))

(assert (=> bs!1617174 (not (= lambda!355630 lambda!355550))))

(declare-fun bs!1617175 () Bool)

(assert (= bs!1617175 (and d!2015510 d!2015402)))

(assert (=> bs!1617175 (not (= lambda!355630 lambda!355607))))

(declare-fun bs!1617176 () Bool)

(assert (= bs!1617176 (and d!2015510 b!6429470)))

(assert (=> bs!1617176 (not (= lambda!355630 lambda!355618))))

(assert (=> bs!1617174 (= lambda!355630 lambda!355549)))

(declare-fun bs!1617177 () Bool)

(assert (= bs!1617177 (and d!2015510 b!6428629)))

(assert (=> bs!1617177 (not (= lambda!355630 lambda!355548))))

(assert (=> bs!1617177 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) lt!2378898) (= lt!2378898 (regTwo!33178 r!7292))) (= lambda!355630 lambda!355547))))

(assert (=> bs!1617171 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) (regOne!33178 r!7292)) (= lt!2378898 (regTwo!33178 r!7292))) (= lambda!355630 lambda!355544))))

(assert (=> bs!1617174 (not (= lambda!355630 lambda!355551))))

(assert (=> bs!1617168 (not (= lambda!355630 lambda!355623))))

(declare-fun bs!1617178 () Bool)

(assert (= bs!1617178 (and d!2015510 b!6429474)))

(assert (=> bs!1617178 (not (= lambda!355630 lambda!355619))))

(assert (=> bs!1617175 (= (and (= (_1!36615 lt!2378919) s!2326) (= (reg!16662 (regOne!33178 r!7292)) (regOne!33178 r!7292)) (= lt!2378898 (regTwo!33178 r!7292))) (= lambda!355630 lambda!355606))))

(assert (=> bs!1617170 (= (= lt!2378898 (Star!16333 (reg!16662 (regOne!33178 r!7292)))) (= lambda!355630 lambda!355628))))

(assert (=> d!2015510 true))

(assert (=> d!2015510 true))

(assert (=> d!2015510 true))

(assert (=> d!2015510 (= (isDefined!12927 (findConcatSeparation!2638 (reg!16662 (regOne!33178 r!7292)) lt!2378898 Nil!65174 (_1!36615 lt!2378919) (_1!36615 lt!2378919))) (Exists!3403 lambda!355630))))

(declare-fun lt!2379062 () Unit!158663)

(assert (=> d!2015510 (= lt!2379062 (choose!47799 (reg!16662 (regOne!33178 r!7292)) lt!2378898 (_1!36615 lt!2378919)))))

(assert (=> d!2015510 (validRegex!8069 (reg!16662 (regOne!33178 r!7292)))))

(assert (=> d!2015510 (= (lemmaFindConcatSeparationEquivalentToExists!2402 (reg!16662 (regOne!33178 r!7292)) lt!2378898 (_1!36615 lt!2378919)) lt!2379062)))

(declare-fun bs!1617179 () Bool)

(assert (= bs!1617179 d!2015510))

(assert (=> bs!1617179 m!7223228))

(declare-fun m!7223292 () Bool)

(assert (=> bs!1617179 m!7223292))

(declare-fun m!7223294 () Bool)

(assert (=> bs!1617179 m!7223294))

(assert (=> bs!1617179 m!7222444))

(declare-fun m!7223296 () Bool)

(assert (=> bs!1617179 m!7223296))

(assert (=> bs!1617179 m!7222444))

(assert (=> b!6428631 d!2015510))

(declare-fun bs!1617180 () Bool)

(declare-fun d!2015512 () Bool)

(assert (= bs!1617180 (and d!2015512 d!2015428)))

(declare-fun lambda!355633 () Int)

(assert (=> bs!1617180 (= lambda!355633 lambda!355613)))

(declare-fun b!6429592 () Bool)

(declare-fun e!3900588 () Regex!16333)

(assert (=> b!6429592 (= e!3900588 (h!71623 (unfocusZipperList!1754 zl!343)))))

(declare-fun b!6429593 () Bool)

(declare-fun e!3900586 () Bool)

(declare-fun e!3900587 () Bool)

(assert (=> b!6429593 (= e!3900586 e!3900587)))

(declare-fun c!1175000 () Bool)

(assert (=> b!6429593 (= c!1175000 (isEmpty!37342 (unfocusZipperList!1754 zl!343)))))

(declare-fun b!6429594 () Bool)

(declare-fun e!3900590 () Bool)

(assert (=> b!6429594 (= e!3900590 (isEmpty!37342 (t!378915 (unfocusZipperList!1754 zl!343))))))

(declare-fun b!6429595 () Bool)

(declare-fun e!3900585 () Regex!16333)

(assert (=> b!6429595 (= e!3900585 (Union!16333 (h!71623 (unfocusZipperList!1754 zl!343)) (generalisedUnion!2177 (t!378915 (unfocusZipperList!1754 zl!343)))))))

(declare-fun b!6429596 () Bool)

(declare-fun e!3900589 () Bool)

(declare-fun lt!2379065 () Regex!16333)

(declare-fun isUnion!1171 (Regex!16333) Bool)

(assert (=> b!6429596 (= e!3900589 (isUnion!1171 lt!2379065))))

(declare-fun b!6429597 () Bool)

(declare-fun head!13158 (List!65299) Regex!16333)

(assert (=> b!6429597 (= e!3900589 (= lt!2379065 (head!13158 (unfocusZipperList!1754 zl!343))))))

(assert (=> d!2015512 e!3900586))

(declare-fun res!2642809 () Bool)

(assert (=> d!2015512 (=> (not res!2642809) (not e!3900586))))

(assert (=> d!2015512 (= res!2642809 (validRegex!8069 lt!2379065))))

(assert (=> d!2015512 (= lt!2379065 e!3900588)))

(declare-fun c!1174997 () Bool)

(assert (=> d!2015512 (= c!1174997 e!3900590)))

(declare-fun res!2642810 () Bool)

(assert (=> d!2015512 (=> (not res!2642810) (not e!3900590))))

(assert (=> d!2015512 (= res!2642810 ((_ is Cons!65175) (unfocusZipperList!1754 zl!343)))))

(assert (=> d!2015512 (forall!15523 (unfocusZipperList!1754 zl!343) lambda!355633)))

(assert (=> d!2015512 (= (generalisedUnion!2177 (unfocusZipperList!1754 zl!343)) lt!2379065)))

(declare-fun b!6429598 () Bool)

(assert (=> b!6429598 (= e!3900588 e!3900585)))

(declare-fun c!1174998 () Bool)

(assert (=> b!6429598 (= c!1174998 ((_ is Cons!65175) (unfocusZipperList!1754 zl!343)))))

(declare-fun b!6429599 () Bool)

(assert (=> b!6429599 (= e!3900587 e!3900589)))

(declare-fun c!1174999 () Bool)

(declare-fun tail!12243 (List!65299) List!65299)

(assert (=> b!6429599 (= c!1174999 (isEmpty!37342 (tail!12243 (unfocusZipperList!1754 zl!343))))))

(declare-fun b!6429600 () Bool)

(declare-fun isEmptyLang!1741 (Regex!16333) Bool)

(assert (=> b!6429600 (= e!3900587 (isEmptyLang!1741 lt!2379065))))

(declare-fun b!6429601 () Bool)

(assert (=> b!6429601 (= e!3900585 EmptyLang!16333)))

(assert (= (and d!2015512 res!2642810) b!6429594))

(assert (= (and d!2015512 c!1174997) b!6429592))

(assert (= (and d!2015512 (not c!1174997)) b!6429598))

(assert (= (and b!6429598 c!1174998) b!6429595))

(assert (= (and b!6429598 (not c!1174998)) b!6429601))

(assert (= (and d!2015512 res!2642809) b!6429593))

(assert (= (and b!6429593 c!1175000) b!6429600))

(assert (= (and b!6429593 (not c!1175000)) b!6429599))

(assert (= (and b!6429599 c!1174999) b!6429597))

(assert (= (and b!6429599 (not c!1174999)) b!6429596))

(assert (=> b!6429593 m!7222386))

(declare-fun m!7223298 () Bool)

(assert (=> b!6429593 m!7223298))

(declare-fun m!7223300 () Bool)

(assert (=> b!6429600 m!7223300))

(assert (=> b!6429599 m!7222386))

(declare-fun m!7223302 () Bool)

(assert (=> b!6429599 m!7223302))

(assert (=> b!6429599 m!7223302))

(declare-fun m!7223304 () Bool)

(assert (=> b!6429599 m!7223304))

(assert (=> b!6429597 m!7222386))

(declare-fun m!7223306 () Bool)

(assert (=> b!6429597 m!7223306))

(declare-fun m!7223308 () Bool)

(assert (=> b!6429594 m!7223308))

(declare-fun m!7223310 () Bool)

(assert (=> b!6429596 m!7223310))

(declare-fun m!7223312 () Bool)

(assert (=> b!6429595 m!7223312))

(declare-fun m!7223314 () Bool)

(assert (=> d!2015512 m!7223314))

(assert (=> d!2015512 m!7222386))

(declare-fun m!7223316 () Bool)

(assert (=> d!2015512 m!7223316))

(assert (=> b!6428610 d!2015512))

(declare-fun bs!1617181 () Bool)

(declare-fun d!2015514 () Bool)

(assert (= bs!1617181 (and d!2015514 d!2015428)))

(declare-fun lambda!355636 () Int)

(assert (=> bs!1617181 (= lambda!355636 lambda!355613)))

(declare-fun bs!1617182 () Bool)

(assert (= bs!1617182 (and d!2015514 d!2015512)))

(assert (=> bs!1617182 (= lambda!355636 lambda!355633)))

(declare-fun lt!2379068 () List!65299)

(assert (=> d!2015514 (forall!15523 lt!2379068 lambda!355636)))

(declare-fun e!3900593 () List!65299)

(assert (=> d!2015514 (= lt!2379068 e!3900593)))

(declare-fun c!1175003 () Bool)

(assert (=> d!2015514 (= c!1175003 ((_ is Cons!65176) zl!343))))

(assert (=> d!2015514 (= (unfocusZipperList!1754 zl!343) lt!2379068)))

(declare-fun b!6429606 () Bool)

(assert (=> b!6429606 (= e!3900593 (Cons!65175 (generalisedConcat!1930 (exprs!6217 (h!71624 zl!343))) (unfocusZipperList!1754 (t!378916 zl!343))))))

(declare-fun b!6429607 () Bool)

(assert (=> b!6429607 (= e!3900593 Nil!65175)))

(assert (= (and d!2015514 c!1175003) b!6429606))

(assert (= (and d!2015514 (not c!1175003)) b!6429607))

(declare-fun m!7223318 () Bool)

(assert (=> d!2015514 m!7223318))

(assert (=> b!6429606 m!7222340))

(declare-fun m!7223320 () Bool)

(assert (=> b!6429606 m!7223320))

(assert (=> b!6428610 d!2015514))

(declare-fun bs!1617183 () Bool)

(declare-fun d!2015516 () Bool)

(assert (= bs!1617183 (and d!2015516 d!2015428)))

(declare-fun lambda!355639 () Int)

(assert (=> bs!1617183 (= lambda!355639 lambda!355613)))

(declare-fun bs!1617184 () Bool)

(assert (= bs!1617184 (and d!2015516 d!2015512)))

(assert (=> bs!1617184 (= lambda!355639 lambda!355633)))

(declare-fun bs!1617185 () Bool)

(assert (= bs!1617185 (and d!2015516 d!2015514)))

(assert (=> bs!1617185 (= lambda!355639 lambda!355636)))

(declare-fun b!6429628 () Bool)

(declare-fun e!3900606 () Bool)

(declare-fun e!3900607 () Bool)

(assert (=> b!6429628 (= e!3900606 e!3900607)))

(declare-fun c!1175012 () Bool)

(assert (=> b!6429628 (= c!1175012 (isEmpty!37342 (exprs!6217 (h!71624 zl!343))))))

(declare-fun b!6429629 () Bool)

(declare-fun e!3900608 () Bool)

(declare-fun lt!2379071 () Regex!16333)

(assert (=> b!6429629 (= e!3900608 (= lt!2379071 (head!13158 (exprs!6217 (h!71624 zl!343)))))))

(declare-fun b!6429631 () Bool)

(declare-fun e!3900610 () Regex!16333)

(declare-fun e!3900611 () Regex!16333)

(assert (=> b!6429631 (= e!3900610 e!3900611)))

(declare-fun c!1175015 () Bool)

(assert (=> b!6429631 (= c!1175015 ((_ is Cons!65175) (exprs!6217 (h!71624 zl!343))))))

(declare-fun b!6429632 () Bool)

(declare-fun isEmptyExpr!1734 (Regex!16333) Bool)

(assert (=> b!6429632 (= e!3900607 (isEmptyExpr!1734 lt!2379071))))

(declare-fun b!6429633 () Bool)

(assert (=> b!6429633 (= e!3900611 EmptyExpr!16333)))

(declare-fun b!6429634 () Bool)

(declare-fun isConcat!1257 (Regex!16333) Bool)

(assert (=> b!6429634 (= e!3900608 (isConcat!1257 lt!2379071))))

(declare-fun b!6429635 () Bool)

(assert (=> b!6429635 (= e!3900607 e!3900608)))

(declare-fun c!1175014 () Bool)

(assert (=> b!6429635 (= c!1175014 (isEmpty!37342 (tail!12243 (exprs!6217 (h!71624 zl!343)))))))

(declare-fun b!6429636 () Bool)

(assert (=> b!6429636 (= e!3900610 (h!71623 (exprs!6217 (h!71624 zl!343))))))

(declare-fun b!6429637 () Bool)

(declare-fun e!3900609 () Bool)

(assert (=> b!6429637 (= e!3900609 (isEmpty!37342 (t!378915 (exprs!6217 (h!71624 zl!343)))))))

(assert (=> d!2015516 e!3900606))

(declare-fun res!2642816 () Bool)

(assert (=> d!2015516 (=> (not res!2642816) (not e!3900606))))

(assert (=> d!2015516 (= res!2642816 (validRegex!8069 lt!2379071))))

(assert (=> d!2015516 (= lt!2379071 e!3900610)))

(declare-fun c!1175013 () Bool)

(assert (=> d!2015516 (= c!1175013 e!3900609)))

(declare-fun res!2642815 () Bool)

(assert (=> d!2015516 (=> (not res!2642815) (not e!3900609))))

(assert (=> d!2015516 (= res!2642815 ((_ is Cons!65175) (exprs!6217 (h!71624 zl!343))))))

(assert (=> d!2015516 (forall!15523 (exprs!6217 (h!71624 zl!343)) lambda!355639)))

(assert (=> d!2015516 (= (generalisedConcat!1930 (exprs!6217 (h!71624 zl!343))) lt!2379071)))

(declare-fun b!6429630 () Bool)

(assert (=> b!6429630 (= e!3900611 (Concat!25178 (h!71623 (exprs!6217 (h!71624 zl!343))) (generalisedConcat!1930 (t!378915 (exprs!6217 (h!71624 zl!343))))))))

(assert (= (and d!2015516 res!2642815) b!6429637))

(assert (= (and d!2015516 c!1175013) b!6429636))

(assert (= (and d!2015516 (not c!1175013)) b!6429631))

(assert (= (and b!6429631 c!1175015) b!6429630))

(assert (= (and b!6429631 (not c!1175015)) b!6429633))

(assert (= (and d!2015516 res!2642816) b!6429628))

(assert (= (and b!6429628 c!1175012) b!6429632))

(assert (= (and b!6429628 (not c!1175012)) b!6429635))

(assert (= (and b!6429635 c!1175014) b!6429629))

(assert (= (and b!6429635 (not c!1175014)) b!6429634))

(assert (=> b!6429637 m!7222342))

(declare-fun m!7223322 () Bool)

(assert (=> b!6429630 m!7223322))

(declare-fun m!7223324 () Bool)

(assert (=> b!6429629 m!7223324))

(declare-fun m!7223326 () Bool)

(assert (=> b!6429628 m!7223326))

(declare-fun m!7223328 () Bool)

(assert (=> b!6429635 m!7223328))

(assert (=> b!6429635 m!7223328))

(declare-fun m!7223330 () Bool)

(assert (=> b!6429635 m!7223330))

(declare-fun m!7223332 () Bool)

(assert (=> d!2015516 m!7223332))

(declare-fun m!7223334 () Bool)

(assert (=> d!2015516 m!7223334))

(declare-fun m!7223336 () Bool)

(assert (=> b!6429634 m!7223336))

(declare-fun m!7223338 () Bool)

(assert (=> b!6429632 m!7223338))

(assert (=> b!6428612 d!2015516))

(declare-fun bs!1617186 () Bool)

(declare-fun d!2015518 () Bool)

(assert (= bs!1617186 (and d!2015518 d!2015428)))

(declare-fun lambda!355640 () Int)

(assert (=> bs!1617186 (= lambda!355640 lambda!355613)))

(declare-fun bs!1617187 () Bool)

(assert (= bs!1617187 (and d!2015518 d!2015512)))

(assert (=> bs!1617187 (= lambda!355640 lambda!355633)))

(declare-fun bs!1617188 () Bool)

(assert (= bs!1617188 (and d!2015518 d!2015514)))

(assert (=> bs!1617188 (= lambda!355640 lambda!355636)))

(declare-fun bs!1617189 () Bool)

(assert (= bs!1617189 (and d!2015518 d!2015516)))

(assert (=> bs!1617189 (= lambda!355640 lambda!355639)))

(assert (=> d!2015518 (= (inv!84079 setElem!43896) (forall!15523 (exprs!6217 setElem!43896) lambda!355640))))

(declare-fun bs!1617190 () Bool)

(assert (= bs!1617190 d!2015518))

(declare-fun m!7223340 () Bool)

(assert (=> bs!1617190 m!7223340))

(assert (=> setNonEmpty!43896 d!2015518))

(declare-fun d!2015520 () Bool)

(assert (=> d!2015520 (= (flatMap!1838 lt!2378891 lambda!355546) (choose!47794 lt!2378891 lambda!355546))))

(declare-fun bs!1617191 () Bool)

(assert (= bs!1617191 d!2015520))

(declare-fun m!7223342 () Bool)

(assert (=> bs!1617191 m!7223342))

(assert (=> b!6428608 d!2015520))

(declare-fun call!553031 () (InoxSet Context!11434))

(declare-fun e!3900613 () (InoxSet Context!11434))

(declare-fun b!6429638 () Bool)

(assert (=> b!6429638 (= e!3900613 ((_ map or) call!553031 (derivationStepZipperUp!1507 (Context!11435 (t!378915 (exprs!6217 lt!2378920))) (h!71622 s!2326))))))

(declare-fun b!6429639 () Bool)

(declare-fun e!3900614 () Bool)

(assert (=> b!6429639 (= e!3900614 (nullable!6326 (h!71623 (exprs!6217 lt!2378920))))))

(declare-fun bm!553026 () Bool)

(assert (=> bm!553026 (= call!553031 (derivationStepZipperDown!1581 (h!71623 (exprs!6217 lt!2378920)) (Context!11435 (t!378915 (exprs!6217 lt!2378920))) (h!71622 s!2326)))))

(declare-fun d!2015522 () Bool)

(declare-fun c!1175016 () Bool)

(assert (=> d!2015522 (= c!1175016 e!3900614)))

(declare-fun res!2642817 () Bool)

(assert (=> d!2015522 (=> (not res!2642817) (not e!3900614))))

(assert (=> d!2015522 (= res!2642817 ((_ is Cons!65175) (exprs!6217 lt!2378920)))))

(assert (=> d!2015522 (= (derivationStepZipperUp!1507 lt!2378920 (h!71622 s!2326)) e!3900613)))

(declare-fun b!6429640 () Bool)

(declare-fun e!3900612 () (InoxSet Context!11434))

(assert (=> b!6429640 (= e!3900612 call!553031)))

(declare-fun b!6429641 () Bool)

(assert (=> b!6429641 (= e!3900612 ((as const (Array Context!11434 Bool)) false))))

(declare-fun b!6429642 () Bool)

(assert (=> b!6429642 (= e!3900613 e!3900612)))

(declare-fun c!1175017 () Bool)

(assert (=> b!6429642 (= c!1175017 ((_ is Cons!65175) (exprs!6217 lt!2378920)))))

(assert (= (and d!2015522 res!2642817) b!6429639))

(assert (= (and d!2015522 c!1175016) b!6429638))

(assert (= (and d!2015522 (not c!1175016)) b!6429642))

(assert (= (and b!6429642 c!1175017) b!6429640))

(assert (= (and b!6429642 (not c!1175017)) b!6429641))

(assert (= (or b!6429638 b!6429640) bm!553026))

(declare-fun m!7223344 () Bool)

(assert (=> b!6429638 m!7223344))

(declare-fun m!7223346 () Bool)

(assert (=> b!6429639 m!7223346))

(declare-fun m!7223348 () Bool)

(assert (=> bm!553026 m!7223348))

(assert (=> b!6428608 d!2015522))

(declare-fun call!553032 () (InoxSet Context!11434))

(declare-fun b!6429643 () Bool)

(declare-fun e!3900616 () (InoxSet Context!11434))

(assert (=> b!6429643 (= e!3900616 ((_ map or) call!553032 (derivationStepZipperUp!1507 (Context!11435 (t!378915 (exprs!6217 lt!2378889))) (h!71622 s!2326))))))

(declare-fun b!6429644 () Bool)

(declare-fun e!3900617 () Bool)

(assert (=> b!6429644 (= e!3900617 (nullable!6326 (h!71623 (exprs!6217 lt!2378889))))))

(declare-fun bm!553027 () Bool)

(assert (=> bm!553027 (= call!553032 (derivationStepZipperDown!1581 (h!71623 (exprs!6217 lt!2378889)) (Context!11435 (t!378915 (exprs!6217 lt!2378889))) (h!71622 s!2326)))))

(declare-fun d!2015524 () Bool)

(declare-fun c!1175018 () Bool)

(assert (=> d!2015524 (= c!1175018 e!3900617)))

(declare-fun res!2642818 () Bool)

(assert (=> d!2015524 (=> (not res!2642818) (not e!3900617))))

(assert (=> d!2015524 (= res!2642818 ((_ is Cons!65175) (exprs!6217 lt!2378889)))))

(assert (=> d!2015524 (= (derivationStepZipperUp!1507 lt!2378889 (h!71622 s!2326)) e!3900616)))

(declare-fun b!6429645 () Bool)

(declare-fun e!3900615 () (InoxSet Context!11434))

(assert (=> b!6429645 (= e!3900615 call!553032)))

(declare-fun b!6429646 () Bool)

(assert (=> b!6429646 (= e!3900615 ((as const (Array Context!11434 Bool)) false))))

(declare-fun b!6429647 () Bool)

(assert (=> b!6429647 (= e!3900616 e!3900615)))

(declare-fun c!1175019 () Bool)

(assert (=> b!6429647 (= c!1175019 ((_ is Cons!65175) (exprs!6217 lt!2378889)))))

(assert (= (and d!2015524 res!2642818) b!6429644))

(assert (= (and d!2015524 c!1175018) b!6429643))

(assert (= (and d!2015524 (not c!1175018)) b!6429647))

(assert (= (and b!6429647 c!1175019) b!6429645))

(assert (= (and b!6429647 (not c!1175019)) b!6429646))

(assert (= (or b!6429643 b!6429645) bm!553027))

(declare-fun m!7223350 () Bool)

(assert (=> b!6429643 m!7223350))

(declare-fun m!7223352 () Bool)

(assert (=> b!6429644 m!7223352))

(declare-fun m!7223354 () Bool)

(assert (=> bm!553027 m!7223354))

(assert (=> b!6428608 d!2015524))

(declare-fun d!2015526 () Bool)

(assert (=> d!2015526 (= (flatMap!1838 lt!2378886 lambda!355546) (choose!47794 lt!2378886 lambda!355546))))

(declare-fun bs!1617192 () Bool)

(assert (= bs!1617192 d!2015526))

(declare-fun m!7223356 () Bool)

(assert (=> bs!1617192 m!7223356))

(assert (=> b!6428608 d!2015526))

(declare-fun d!2015528 () Bool)

(assert (=> d!2015528 (= (flatMap!1838 lt!2378891 lambda!355546) (dynLambda!25890 lambda!355546 lt!2378920))))

(declare-fun lt!2379072 () Unit!158663)

(assert (=> d!2015528 (= lt!2379072 (choose!47795 lt!2378891 lt!2378920 lambda!355546))))

(assert (=> d!2015528 (= lt!2378891 (store ((as const (Array Context!11434 Bool)) false) lt!2378920 true))))

(assert (=> d!2015528 (= (lemmaFlatMapOnSingletonSet!1364 lt!2378891 lt!2378920 lambda!355546) lt!2379072)))

(declare-fun b_lambda!244295 () Bool)

(assert (=> (not b_lambda!244295) (not d!2015528)))

(declare-fun bs!1617193 () Bool)

(assert (= bs!1617193 d!2015528))

(assert (=> bs!1617193 m!7222296))

(declare-fun m!7223358 () Bool)

(assert (=> bs!1617193 m!7223358))

(declare-fun m!7223360 () Bool)

(assert (=> bs!1617193 m!7223360))

(assert (=> bs!1617193 m!7222290))

(assert (=> b!6428608 d!2015528))

(declare-fun d!2015530 () Bool)

(assert (=> d!2015530 (= (flatMap!1838 lt!2378886 lambda!355546) (dynLambda!25890 lambda!355546 lt!2378889))))

(declare-fun lt!2379073 () Unit!158663)

(assert (=> d!2015530 (= lt!2379073 (choose!47795 lt!2378886 lt!2378889 lambda!355546))))

(assert (=> d!2015530 (= lt!2378886 (store ((as const (Array Context!11434 Bool)) false) lt!2378889 true))))

(assert (=> d!2015530 (= (lemmaFlatMapOnSingletonSet!1364 lt!2378886 lt!2378889 lambda!355546) lt!2379073)))

(declare-fun b_lambda!244297 () Bool)

(assert (=> (not b_lambda!244297) (not d!2015530)))

(declare-fun bs!1617194 () Bool)

(assert (= bs!1617194 d!2015530))

(assert (=> bs!1617194 m!7222288))

(declare-fun m!7223362 () Bool)

(assert (=> bs!1617194 m!7223362))

(declare-fun m!7223364 () Bool)

(assert (=> bs!1617194 m!7223364))

(assert (=> bs!1617194 m!7222298))

(assert (=> b!6428608 d!2015530))

(declare-fun d!2015532 () Bool)

(declare-fun lt!2379074 () Regex!16333)

(assert (=> d!2015532 (validRegex!8069 lt!2379074)))

(assert (=> d!2015532 (= lt!2379074 (generalisedUnion!2177 (unfocusZipperList!1754 (Cons!65176 lt!2378889 Nil!65176))))))

(assert (=> d!2015532 (= (unfocusZipper!2075 (Cons!65176 lt!2378889 Nil!65176)) lt!2379074)))

(declare-fun bs!1617195 () Bool)

(assert (= bs!1617195 d!2015532))

(declare-fun m!7223366 () Bool)

(assert (=> bs!1617195 m!7223366))

(declare-fun m!7223368 () Bool)

(assert (=> bs!1617195 m!7223368))

(assert (=> bs!1617195 m!7223368))

(declare-fun m!7223370 () Bool)

(assert (=> bs!1617195 m!7223370))

(assert (=> b!6428608 d!2015532))

(declare-fun call!553033 () (InoxSet Context!11434))

(declare-fun b!6429648 () Bool)

(declare-fun e!3900619 () (InoxSet Context!11434))

(assert (=> b!6429648 (= e!3900619 ((_ map or) call!553033 (derivationStepZipperUp!1507 (Context!11435 (t!378915 (exprs!6217 lt!2378901))) (h!71622 s!2326))))))

(declare-fun b!6429649 () Bool)

(declare-fun e!3900620 () Bool)

(assert (=> b!6429649 (= e!3900620 (nullable!6326 (h!71623 (exprs!6217 lt!2378901))))))

(declare-fun bm!553028 () Bool)

(assert (=> bm!553028 (= call!553033 (derivationStepZipperDown!1581 (h!71623 (exprs!6217 lt!2378901)) (Context!11435 (t!378915 (exprs!6217 lt!2378901))) (h!71622 s!2326)))))

(declare-fun d!2015534 () Bool)

(declare-fun c!1175020 () Bool)

(assert (=> d!2015534 (= c!1175020 e!3900620)))

(declare-fun res!2642819 () Bool)

(assert (=> d!2015534 (=> (not res!2642819) (not e!3900620))))

(assert (=> d!2015534 (= res!2642819 ((_ is Cons!65175) (exprs!6217 lt!2378901)))))

(assert (=> d!2015534 (= (derivationStepZipperUp!1507 lt!2378901 (h!71622 s!2326)) e!3900619)))

(declare-fun b!6429650 () Bool)

(declare-fun e!3900618 () (InoxSet Context!11434))

(assert (=> b!6429650 (= e!3900618 call!553033)))

(declare-fun b!6429651 () Bool)

(assert (=> b!6429651 (= e!3900618 ((as const (Array Context!11434 Bool)) false))))

(declare-fun b!6429652 () Bool)

(assert (=> b!6429652 (= e!3900619 e!3900618)))

(declare-fun c!1175021 () Bool)

(assert (=> b!6429652 (= c!1175021 ((_ is Cons!65175) (exprs!6217 lt!2378901)))))

(assert (= (and d!2015534 res!2642819) b!6429649))

(assert (= (and d!2015534 c!1175020) b!6429648))

(assert (= (and d!2015534 (not c!1175020)) b!6429652))

(assert (= (and b!6429652 c!1175021) b!6429650))

(assert (= (and b!6429652 (not c!1175021)) b!6429651))

(assert (= (or b!6429648 b!6429650) bm!553028))

(declare-fun m!7223372 () Bool)

(assert (=> b!6429648 m!7223372))

(declare-fun m!7223374 () Bool)

(assert (=> b!6429649 m!7223374))

(declare-fun m!7223376 () Bool)

(assert (=> bm!553028 m!7223376))

(assert (=> b!6428628 d!2015534))

(declare-fun b!6429653 () Bool)

(declare-fun c!1175026 () Bool)

(assert (=> b!6429653 (= c!1175026 ((_ is Star!16333) (h!71623 (exprs!6217 (h!71624 zl!343)))))))

(declare-fun e!3900622 () (InoxSet Context!11434))

(declare-fun e!3900621 () (InoxSet Context!11434))

(assert (=> b!6429653 (= e!3900622 e!3900621)))

(declare-fun bm!553029 () Bool)

(declare-fun call!553036 () List!65299)

(declare-fun call!553034 () List!65299)

(assert (=> bm!553029 (= call!553036 call!553034)))

(declare-fun b!6429654 () Bool)

(declare-fun e!3900625 () (InoxSet Context!11434))

(declare-fun call!553037 () (InoxSet Context!11434))

(declare-fun call!553039 () (InoxSet Context!11434))

(assert (=> b!6429654 (= e!3900625 ((_ map or) call!553037 call!553039))))

(declare-fun c!1175024 () Bool)

(declare-fun c!1175023 () Bool)

(declare-fun bm!553030 () Bool)

(declare-fun c!1175022 () Bool)

(assert (=> bm!553030 (= call!553037 (derivationStepZipperDown!1581 (ite c!1175024 (regOne!33179 (h!71623 (exprs!6217 (h!71624 zl!343)))) (ite c!1175023 (regTwo!33178 (h!71623 (exprs!6217 (h!71624 zl!343)))) (ite c!1175022 (regOne!33178 (h!71623 (exprs!6217 (h!71624 zl!343)))) (reg!16662 (h!71623 (exprs!6217 (h!71624 zl!343))))))) (ite (or c!1175024 c!1175023) lt!2378901 (Context!11435 call!553036)) (h!71622 s!2326)))))

(declare-fun b!6429656 () Bool)

(declare-fun e!3900623 () (InoxSet Context!11434))

(assert (=> b!6429656 (= e!3900623 e!3900622)))

(assert (=> b!6429656 (= c!1175022 ((_ is Concat!25178) (h!71623 (exprs!6217 (h!71624 zl!343)))))))

(declare-fun bm!553031 () Bool)

(assert (=> bm!553031 (= call!553034 ($colon$colon!2193 (exprs!6217 lt!2378901) (ite (or c!1175023 c!1175022) (regTwo!33178 (h!71623 (exprs!6217 (h!71624 zl!343)))) (h!71623 (exprs!6217 (h!71624 zl!343))))))))

(declare-fun bm!553032 () Bool)

(declare-fun call!553038 () (InoxSet Context!11434))

(declare-fun call!553035 () (InoxSet Context!11434))

(assert (=> bm!553032 (= call!553038 call!553035)))

(declare-fun b!6429657 () Bool)

(declare-fun e!3900626 () Bool)

(assert (=> b!6429657 (= c!1175023 e!3900626)))

(declare-fun res!2642820 () Bool)

(assert (=> b!6429657 (=> (not res!2642820) (not e!3900626))))

(assert (=> b!6429657 (= res!2642820 ((_ is Concat!25178) (h!71623 (exprs!6217 (h!71624 zl!343)))))))

(assert (=> b!6429657 (= e!3900625 e!3900623)))

(declare-fun bm!553033 () Bool)

(assert (=> bm!553033 (= call!553039 (derivationStepZipperDown!1581 (ite c!1175024 (regTwo!33179 (h!71623 (exprs!6217 (h!71624 zl!343)))) (regOne!33178 (h!71623 (exprs!6217 (h!71624 zl!343))))) (ite c!1175024 lt!2378901 (Context!11435 call!553034)) (h!71622 s!2326)))))

(declare-fun b!6429658 () Bool)

(assert (=> b!6429658 (= e!3900623 ((_ map or) call!553039 call!553035))))

(declare-fun b!6429659 () Bool)

(assert (=> b!6429659 (= e!3900621 call!553038)))

(declare-fun b!6429660 () Bool)

(assert (=> b!6429660 (= e!3900626 (nullable!6326 (regOne!33178 (h!71623 (exprs!6217 (h!71624 zl!343))))))))

(declare-fun b!6429655 () Bool)

(declare-fun e!3900624 () (InoxSet Context!11434))

(assert (=> b!6429655 (= e!3900624 (store ((as const (Array Context!11434 Bool)) false) lt!2378901 true))))

(declare-fun d!2015536 () Bool)

(declare-fun c!1175025 () Bool)

(assert (=> d!2015536 (= c!1175025 (and ((_ is ElementMatch!16333) (h!71623 (exprs!6217 (h!71624 zl!343)))) (= (c!1174748 (h!71623 (exprs!6217 (h!71624 zl!343)))) (h!71622 s!2326))))))

(assert (=> d!2015536 (= (derivationStepZipperDown!1581 (h!71623 (exprs!6217 (h!71624 zl!343))) lt!2378901 (h!71622 s!2326)) e!3900624)))

(declare-fun bm!553034 () Bool)

(assert (=> bm!553034 (= call!553035 call!553037)))

(declare-fun b!6429661 () Bool)

(assert (=> b!6429661 (= e!3900624 e!3900625)))

(assert (=> b!6429661 (= c!1175024 ((_ is Union!16333) (h!71623 (exprs!6217 (h!71624 zl!343)))))))

(declare-fun b!6429662 () Bool)

(assert (=> b!6429662 (= e!3900621 ((as const (Array Context!11434 Bool)) false))))

(declare-fun b!6429663 () Bool)

(assert (=> b!6429663 (= e!3900622 call!553038)))

(assert (= (and d!2015536 c!1175025) b!6429655))

(assert (= (and d!2015536 (not c!1175025)) b!6429661))

(assert (= (and b!6429661 c!1175024) b!6429654))

(assert (= (and b!6429661 (not c!1175024)) b!6429657))

(assert (= (and b!6429657 res!2642820) b!6429660))

(assert (= (and b!6429657 c!1175023) b!6429658))

(assert (= (and b!6429657 (not c!1175023)) b!6429656))

(assert (= (and b!6429656 c!1175022) b!6429663))

(assert (= (and b!6429656 (not c!1175022)) b!6429653))

(assert (= (and b!6429653 c!1175026) b!6429659))

(assert (= (and b!6429653 (not c!1175026)) b!6429662))

(assert (= (or b!6429663 b!6429659) bm!553029))

(assert (= (or b!6429663 b!6429659) bm!553032))

(assert (= (or b!6429658 bm!553029) bm!553031))

(assert (= (or b!6429658 bm!553032) bm!553034))

(assert (= (or b!6429654 b!6429658) bm!553033))

(assert (= (or b!6429654 bm!553034) bm!553030))

(declare-fun m!7223378 () Bool)

(assert (=> bm!553030 m!7223378))

(declare-fun m!7223380 () Bool)

(assert (=> b!6429660 m!7223380))

(declare-fun m!7223382 () Bool)

(assert (=> b!6429655 m!7223382))

(declare-fun m!7223384 () Bool)

(assert (=> bm!553031 m!7223384))

(declare-fun m!7223386 () Bool)

(assert (=> bm!553033 m!7223386))

(assert (=> b!6428628 d!2015536))

(declare-fun d!2015538 () Bool)

(assert (=> d!2015538 (= (flatMap!1838 z!1189 lambda!355546) (dynLambda!25890 lambda!355546 (h!71624 zl!343)))))

(declare-fun lt!2379075 () Unit!158663)

(assert (=> d!2015538 (= lt!2379075 (choose!47795 z!1189 (h!71624 zl!343) lambda!355546))))

(assert (=> d!2015538 (= z!1189 (store ((as const (Array Context!11434 Bool)) false) (h!71624 zl!343) true))))

(assert (=> d!2015538 (= (lemmaFlatMapOnSingletonSet!1364 z!1189 (h!71624 zl!343) lambda!355546) lt!2379075)))

(declare-fun b_lambda!244299 () Bool)

(assert (=> (not b_lambda!244299) (not d!2015538)))

(declare-fun bs!1617196 () Bool)

(assert (= bs!1617196 d!2015538))

(assert (=> bs!1617196 m!7222350))

(declare-fun m!7223388 () Bool)

(assert (=> bs!1617196 m!7223388))

(declare-fun m!7223390 () Bool)

(assert (=> bs!1617196 m!7223390))

(declare-fun m!7223392 () Bool)

(assert (=> bs!1617196 m!7223392))

(assert (=> b!6428628 d!2015538))

(declare-fun d!2015540 () Bool)

(assert (=> d!2015540 (= (nullable!6326 (h!71623 (exprs!6217 (h!71624 zl!343)))) (nullableFct!2272 (h!71623 (exprs!6217 (h!71624 zl!343)))))))

(declare-fun bs!1617197 () Bool)

(assert (= bs!1617197 d!2015540))

(declare-fun m!7223394 () Bool)

(assert (=> bs!1617197 m!7223394))

(assert (=> b!6428628 d!2015540))

(declare-fun b!6429664 () Bool)

(declare-fun e!3900628 () (InoxSet Context!11434))

(declare-fun call!553040 () (InoxSet Context!11434))

(assert (=> b!6429664 (= e!3900628 ((_ map or) call!553040 (derivationStepZipperUp!1507 (Context!11435 (t!378915 (exprs!6217 (Context!11435 (Cons!65175 (h!71623 (exprs!6217 (h!71624 zl!343))) (t!378915 (exprs!6217 (h!71624 zl!343)))))))) (h!71622 s!2326))))))

(declare-fun b!6429665 () Bool)

(declare-fun e!3900629 () Bool)

(assert (=> b!6429665 (= e!3900629 (nullable!6326 (h!71623 (exprs!6217 (Context!11435 (Cons!65175 (h!71623 (exprs!6217 (h!71624 zl!343))) (t!378915 (exprs!6217 (h!71624 zl!343)))))))))))

(declare-fun bm!553035 () Bool)

(assert (=> bm!553035 (= call!553040 (derivationStepZipperDown!1581 (h!71623 (exprs!6217 (Context!11435 (Cons!65175 (h!71623 (exprs!6217 (h!71624 zl!343))) (t!378915 (exprs!6217 (h!71624 zl!343))))))) (Context!11435 (t!378915 (exprs!6217 (Context!11435 (Cons!65175 (h!71623 (exprs!6217 (h!71624 zl!343))) (t!378915 (exprs!6217 (h!71624 zl!343)))))))) (h!71622 s!2326)))))

(declare-fun d!2015542 () Bool)

(declare-fun c!1175027 () Bool)

(assert (=> d!2015542 (= c!1175027 e!3900629)))

(declare-fun res!2642821 () Bool)

(assert (=> d!2015542 (=> (not res!2642821) (not e!3900629))))

(assert (=> d!2015542 (= res!2642821 ((_ is Cons!65175) (exprs!6217 (Context!11435 (Cons!65175 (h!71623 (exprs!6217 (h!71624 zl!343))) (t!378915 (exprs!6217 (h!71624 zl!343))))))))))

(assert (=> d!2015542 (= (derivationStepZipperUp!1507 (Context!11435 (Cons!65175 (h!71623 (exprs!6217 (h!71624 zl!343))) (t!378915 (exprs!6217 (h!71624 zl!343))))) (h!71622 s!2326)) e!3900628)))

(declare-fun b!6429666 () Bool)

(declare-fun e!3900627 () (InoxSet Context!11434))

(assert (=> b!6429666 (= e!3900627 call!553040)))

(declare-fun b!6429667 () Bool)

(assert (=> b!6429667 (= e!3900627 ((as const (Array Context!11434 Bool)) false))))

(declare-fun b!6429668 () Bool)

(assert (=> b!6429668 (= e!3900628 e!3900627)))

(declare-fun c!1175028 () Bool)

(assert (=> b!6429668 (= c!1175028 ((_ is Cons!65175) (exprs!6217 (Context!11435 (Cons!65175 (h!71623 (exprs!6217 (h!71624 zl!343))) (t!378915 (exprs!6217 (h!71624 zl!343))))))))))

(assert (= (and d!2015542 res!2642821) b!6429665))

(assert (= (and d!2015542 c!1175027) b!6429664))

(assert (= (and d!2015542 (not c!1175027)) b!6429668))

(assert (= (and b!6429668 c!1175028) b!6429666))

(assert (= (and b!6429668 (not c!1175028)) b!6429667))

(assert (= (or b!6429664 b!6429666) bm!553035))

(declare-fun m!7223396 () Bool)

(assert (=> b!6429664 m!7223396))

(declare-fun m!7223398 () Bool)

(assert (=> b!6429665 m!7223398))

(declare-fun m!7223400 () Bool)

(assert (=> bm!553035 m!7223400))

(assert (=> b!6428628 d!2015542))

(declare-fun d!2015544 () Bool)

(assert (=> d!2015544 (= (flatMap!1838 z!1189 lambda!355546) (choose!47794 z!1189 lambda!355546))))

(declare-fun bs!1617198 () Bool)

(assert (= bs!1617198 d!2015544))

(declare-fun m!7223402 () Bool)

(assert (=> bs!1617198 m!7223402))

(assert (=> b!6428628 d!2015544))

(declare-fun e!3900631 () (InoxSet Context!11434))

(declare-fun b!6429669 () Bool)

(declare-fun call!553041 () (InoxSet Context!11434))

(assert (=> b!6429669 (= e!3900631 ((_ map or) call!553041 (derivationStepZipperUp!1507 (Context!11435 (t!378915 (exprs!6217 (h!71624 zl!343)))) (h!71622 s!2326))))))

(declare-fun b!6429670 () Bool)

(declare-fun e!3900632 () Bool)

(assert (=> b!6429670 (= e!3900632 (nullable!6326 (h!71623 (exprs!6217 (h!71624 zl!343)))))))

(declare-fun bm!553036 () Bool)

(assert (=> bm!553036 (= call!553041 (derivationStepZipperDown!1581 (h!71623 (exprs!6217 (h!71624 zl!343))) (Context!11435 (t!378915 (exprs!6217 (h!71624 zl!343)))) (h!71622 s!2326)))))

(declare-fun d!2015546 () Bool)

(declare-fun c!1175029 () Bool)

(assert (=> d!2015546 (= c!1175029 e!3900632)))

(declare-fun res!2642822 () Bool)

(assert (=> d!2015546 (=> (not res!2642822) (not e!3900632))))

(assert (=> d!2015546 (= res!2642822 ((_ is Cons!65175) (exprs!6217 (h!71624 zl!343))))))

(assert (=> d!2015546 (= (derivationStepZipperUp!1507 (h!71624 zl!343) (h!71622 s!2326)) e!3900631)))

(declare-fun b!6429671 () Bool)

(declare-fun e!3900630 () (InoxSet Context!11434))

(assert (=> b!6429671 (= e!3900630 call!553041)))

(declare-fun b!6429672 () Bool)

(assert (=> b!6429672 (= e!3900630 ((as const (Array Context!11434 Bool)) false))))

(declare-fun b!6429673 () Bool)

(assert (=> b!6429673 (= e!3900631 e!3900630)))

(declare-fun c!1175030 () Bool)

(assert (=> b!6429673 (= c!1175030 ((_ is Cons!65175) (exprs!6217 (h!71624 zl!343))))))

(assert (= (and d!2015546 res!2642822) b!6429670))

(assert (= (and d!2015546 c!1175029) b!6429669))

(assert (= (and d!2015546 (not c!1175029)) b!6429673))

(assert (= (and b!6429673 c!1175030) b!6429671))

(assert (= (and b!6429673 (not c!1175030)) b!6429672))

(assert (= (or b!6429669 b!6429671) bm!553036))

(declare-fun m!7223404 () Bool)

(assert (=> b!6429669 m!7223404))

(assert (=> b!6429670 m!7222354))

(declare-fun m!7223406 () Bool)

(assert (=> bm!553036 m!7223406))

(assert (=> b!6428628 d!2015546))

(declare-fun b!6429674 () Bool)

(declare-fun e!3900633 () Bool)

(assert (=> b!6429674 (= e!3900633 (matchR!8516 (derivativeStep!5037 lt!2378878 (head!13156 s!2326)) (tail!12241 s!2326)))))

(declare-fun b!6429675 () Bool)

(declare-fun e!3900635 () Bool)

(declare-fun e!3900637 () Bool)

(assert (=> b!6429675 (= e!3900635 e!3900637)))

(declare-fun res!2642824 () Bool)

(assert (=> b!6429675 (=> (not res!2642824) (not e!3900637))))

(declare-fun lt!2379076 () Bool)

(assert (=> b!6429675 (= res!2642824 (not lt!2379076))))

(declare-fun b!6429676 () Bool)

(declare-fun e!3900636 () Bool)

(declare-fun e!3900639 () Bool)

(assert (=> b!6429676 (= e!3900636 e!3900639)))

(declare-fun c!1175031 () Bool)

(assert (=> b!6429676 (= c!1175031 ((_ is EmptyLang!16333) lt!2378878))))

(declare-fun b!6429677 () Bool)

(declare-fun res!2642829 () Bool)

(declare-fun e!3900634 () Bool)

(assert (=> b!6429677 (=> res!2642829 e!3900634)))

(assert (=> b!6429677 (= res!2642829 (not (isEmpty!37341 (tail!12241 s!2326))))))

(declare-fun b!6429678 () Bool)

(assert (=> b!6429678 (= e!3900637 e!3900634)))

(declare-fun res!2642826 () Bool)

(assert (=> b!6429678 (=> res!2642826 e!3900634)))

(declare-fun call!553042 () Bool)

(assert (=> b!6429678 (= res!2642826 call!553042)))

(declare-fun d!2015548 () Bool)

(assert (=> d!2015548 e!3900636))

(declare-fun c!1175033 () Bool)

(assert (=> d!2015548 (= c!1175033 ((_ is EmptyExpr!16333) lt!2378878))))

(assert (=> d!2015548 (= lt!2379076 e!3900633)))

(declare-fun c!1175032 () Bool)

(assert (=> d!2015548 (= c!1175032 (isEmpty!37341 s!2326))))

(assert (=> d!2015548 (validRegex!8069 lt!2378878)))

(assert (=> d!2015548 (= (matchR!8516 lt!2378878 s!2326) lt!2379076)))

(declare-fun b!6429679 () Bool)

(declare-fun res!2642827 () Bool)

(declare-fun e!3900638 () Bool)

(assert (=> b!6429679 (=> (not res!2642827) (not e!3900638))))

(assert (=> b!6429679 (= res!2642827 (not call!553042))))

(declare-fun b!6429680 () Bool)

(assert (=> b!6429680 (= e!3900636 (= lt!2379076 call!553042))))

(declare-fun b!6429681 () Bool)

(assert (=> b!6429681 (= e!3900634 (not (= (head!13156 s!2326) (c!1174748 lt!2378878))))))

(declare-fun bm!553037 () Bool)

(assert (=> bm!553037 (= call!553042 (isEmpty!37341 s!2326))))

(declare-fun b!6429682 () Bool)

(assert (=> b!6429682 (= e!3900638 (= (head!13156 s!2326) (c!1174748 lt!2378878)))))

(declare-fun b!6429683 () Bool)

(declare-fun res!2642828 () Bool)

(assert (=> b!6429683 (=> (not res!2642828) (not e!3900638))))

(assert (=> b!6429683 (= res!2642828 (isEmpty!37341 (tail!12241 s!2326)))))

(declare-fun b!6429684 () Bool)

(assert (=> b!6429684 (= e!3900639 (not lt!2379076))))

(declare-fun b!6429685 () Bool)

(assert (=> b!6429685 (= e!3900633 (nullable!6326 lt!2378878))))

(declare-fun b!6429686 () Bool)

(declare-fun res!2642830 () Bool)

(assert (=> b!6429686 (=> res!2642830 e!3900635)))

(assert (=> b!6429686 (= res!2642830 e!3900638)))

(declare-fun res!2642825 () Bool)

(assert (=> b!6429686 (=> (not res!2642825) (not e!3900638))))

(assert (=> b!6429686 (= res!2642825 lt!2379076)))

(declare-fun b!6429687 () Bool)

(declare-fun res!2642823 () Bool)

(assert (=> b!6429687 (=> res!2642823 e!3900635)))

(assert (=> b!6429687 (= res!2642823 (not ((_ is ElementMatch!16333) lt!2378878)))))

(assert (=> b!6429687 (= e!3900639 e!3900635)))

(assert (= (and d!2015548 c!1175032) b!6429685))

(assert (= (and d!2015548 (not c!1175032)) b!6429674))

(assert (= (and d!2015548 c!1175033) b!6429680))

(assert (= (and d!2015548 (not c!1175033)) b!6429676))

(assert (= (and b!6429676 c!1175031) b!6429684))

(assert (= (and b!6429676 (not c!1175031)) b!6429687))

(assert (= (and b!6429687 (not res!2642823)) b!6429686))

(assert (= (and b!6429686 res!2642825) b!6429679))

(assert (= (and b!6429679 res!2642827) b!6429683))

(assert (= (and b!6429683 res!2642828) b!6429682))

(assert (= (and b!6429686 (not res!2642830)) b!6429675))

(assert (= (and b!6429675 res!2642824) b!6429678))

(assert (= (and b!6429678 (not res!2642826)) b!6429677))

(assert (= (and b!6429677 (not res!2642829)) b!6429681))

(assert (= (or b!6429680 b!6429678 b!6429679) bm!553037))

(declare-fun m!7223408 () Bool)

(assert (=> b!6429685 m!7223408))

(assert (=> bm!553037 m!7222798))

(assert (=> b!6429677 m!7222806))

(assert (=> b!6429677 m!7222806))

(assert (=> b!6429677 m!7223168))

(assert (=> b!6429681 m!7222802))

(assert (=> b!6429674 m!7222802))

(assert (=> b!6429674 m!7222802))

(declare-fun m!7223410 () Bool)

(assert (=> b!6429674 m!7223410))

(assert (=> b!6429674 m!7222806))

(assert (=> b!6429674 m!7223410))

(assert (=> b!6429674 m!7222806))

(declare-fun m!7223412 () Bool)

(assert (=> b!6429674 m!7223412))

(assert (=> b!6429683 m!7222806))

(assert (=> b!6429683 m!7222806))

(assert (=> b!6429683 m!7223168))

(assert (=> b!6429682 m!7222802))

(assert (=> d!2015548 m!7222798))

(declare-fun m!7223414 () Bool)

(assert (=> d!2015548 m!7223414))

(assert (=> b!6428630 d!2015548))

(declare-fun bs!1617199 () Bool)

(declare-fun b!6429694 () Bool)

(assert (= bs!1617199 (and b!6429694 d!2015492)))

(declare-fun lambda!355641 () Int)

(assert (=> bs!1617199 (not (= lambda!355641 lambda!355622))))

(declare-fun bs!1617200 () Bool)

(assert (= bs!1617200 (and b!6429694 b!6429544)))

(assert (=> bs!1617200 (= (and (= s!2326 (_1!36615 lt!2378919)) (= (reg!16662 lt!2378878) (reg!16662 lt!2378898)) (= lt!2378878 lt!2378898)) (= lambda!355641 lambda!355620))))

(declare-fun bs!1617201 () Bool)

(assert (= bs!1617201 (and b!6429694 d!2015506)))

(assert (=> bs!1617201 (= (and (= s!2326 (_1!36615 lt!2378919)) (= (reg!16662 lt!2378878) (reg!16662 (regOne!33178 r!7292))) (= lt!2378878 (Star!16333 (reg!16662 (regOne!33178 r!7292))))) (= lambda!355641 lambda!355629))))

(declare-fun bs!1617202 () Bool)

(assert (= bs!1617202 (and b!6429694 b!6428621)))

(assert (=> bs!1617202 (not (= lambda!355641 lambda!355545))))

(declare-fun bs!1617203 () Bool)

(assert (= bs!1617203 (and b!6429694 b!6429548)))

(assert (=> bs!1617203 (not (= lambda!355641 lambda!355621))))

(declare-fun bs!1617204 () Bool)

(assert (= bs!1617204 (and b!6429694 d!2015392)))

(assert (=> bs!1617204 (not (= lambda!355641 lambda!355596))))

(declare-fun bs!1617205 () Bool)

(assert (= bs!1617205 (and b!6429694 b!6428631)))

(assert (=> bs!1617205 (= (and (= s!2326 (_1!36615 lt!2378919)) (= (reg!16662 lt!2378878) (reg!16662 (regOne!33178 r!7292))) (= lt!2378878 lt!2378898)) (= lambda!355641 lambda!355550))))

(declare-fun bs!1617206 () Bool)

(assert (= bs!1617206 (and b!6429694 d!2015402)))

(assert (=> bs!1617206 (not (= lambda!355641 lambda!355607))))

(assert (=> bs!1617205 (not (= lambda!355641 lambda!355549))))

(declare-fun bs!1617207 () Bool)

(assert (= bs!1617207 (and b!6429694 b!6428629)))

(assert (=> bs!1617207 (not (= lambda!355641 lambda!355548))))

(assert (=> bs!1617207 (not (= lambda!355641 lambda!355547))))

(assert (=> bs!1617202 (not (= lambda!355641 lambda!355544))))

(assert (=> bs!1617205 (not (= lambda!355641 lambda!355551))))

(assert (=> bs!1617199 (not (= lambda!355641 lambda!355623))))

(declare-fun bs!1617208 () Bool)

(assert (= bs!1617208 (and b!6429694 b!6429474)))

(assert (=> bs!1617208 (not (= lambda!355641 lambda!355619))))

(assert (=> bs!1617206 (not (= lambda!355641 lambda!355606))))

(assert (=> bs!1617201 (not (= lambda!355641 lambda!355628))))

(declare-fun bs!1617209 () Bool)

(assert (= bs!1617209 (and b!6429694 b!6429470)))

(assert (=> bs!1617209 (= (and (= (reg!16662 lt!2378878) (reg!16662 r!7292)) (= lt!2378878 r!7292)) (= lambda!355641 lambda!355618))))

(declare-fun bs!1617210 () Bool)

(assert (= bs!1617210 (and b!6429694 d!2015510)))

(assert (=> bs!1617210 (not (= lambda!355641 lambda!355630))))

(assert (=> b!6429694 true))

(assert (=> b!6429694 true))

(declare-fun bs!1617211 () Bool)

(declare-fun b!6429698 () Bool)

(assert (= bs!1617211 (and b!6429698 d!2015492)))

(declare-fun lambda!355642 () Int)

(assert (=> bs!1617211 (not (= lambda!355642 lambda!355622))))

(declare-fun bs!1617212 () Bool)

(assert (= bs!1617212 (and b!6429698 b!6429544)))

(assert (=> bs!1617212 (not (= lambda!355642 lambda!355620))))

(declare-fun bs!1617213 () Bool)

(assert (= bs!1617213 (and b!6429698 d!2015506)))

(assert (=> bs!1617213 (not (= lambda!355642 lambda!355629))))

(declare-fun bs!1617214 () Bool)

(assert (= bs!1617214 (and b!6429698 b!6428621)))

(assert (=> bs!1617214 (= (and (= (regOne!33178 lt!2378878) (regOne!33178 r!7292)) (= (regTwo!33178 lt!2378878) (regTwo!33178 r!7292))) (= lambda!355642 lambda!355545))))

(declare-fun bs!1617215 () Bool)

(assert (= bs!1617215 (and b!6429698 b!6429548)))

(assert (=> bs!1617215 (= (and (= s!2326 (_1!36615 lt!2378919)) (= (regOne!33178 lt!2378878) (regOne!33178 lt!2378898)) (= (regTwo!33178 lt!2378878) (regTwo!33178 lt!2378898))) (= lambda!355642 lambda!355621))))

(declare-fun bs!1617216 () Bool)

(assert (= bs!1617216 (and b!6429698 d!2015392)))

(assert (=> bs!1617216 (not (= lambda!355642 lambda!355596))))

(declare-fun bs!1617217 () Bool)

(assert (= bs!1617217 (and b!6429698 b!6428631)))

(assert (=> bs!1617217 (not (= lambda!355642 lambda!355550))))

(declare-fun bs!1617218 () Bool)

(assert (= bs!1617218 (and b!6429698 d!2015402)))

(assert (=> bs!1617218 (= (and (= (regOne!33178 lt!2378878) (regOne!33178 r!7292)) (= (regTwo!33178 lt!2378878) (regTwo!33178 r!7292))) (= lambda!355642 lambda!355607))))

(assert (=> bs!1617217 (not (= lambda!355642 lambda!355549))))

(declare-fun bs!1617219 () Bool)

(assert (= bs!1617219 (and b!6429698 b!6428629)))

(assert (=> bs!1617219 (= (and (= (regOne!33178 lt!2378878) lt!2378898) (= (regTwo!33178 lt!2378878) (regTwo!33178 r!7292))) (= lambda!355642 lambda!355548))))

(assert (=> bs!1617219 (not (= lambda!355642 lambda!355547))))

(assert (=> bs!1617214 (not (= lambda!355642 lambda!355544))))

(declare-fun bs!1617220 () Bool)

(assert (= bs!1617220 (and b!6429698 b!6429694)))

(assert (=> bs!1617220 (not (= lambda!355642 lambda!355641))))

(assert (=> bs!1617217 (= (and (= s!2326 (_1!36615 lt!2378919)) (= (regOne!33178 lt!2378878) (reg!16662 (regOne!33178 r!7292))) (= (regTwo!33178 lt!2378878) lt!2378898)) (= lambda!355642 lambda!355551))))

(assert (=> bs!1617211 (= (and (= s!2326 (_1!36615 lt!2378919)) (= (regOne!33178 lt!2378878) (reg!16662 (regOne!33178 r!7292))) (= (regTwo!33178 lt!2378878) lt!2378898)) (= lambda!355642 lambda!355623))))

(declare-fun bs!1617221 () Bool)

(assert (= bs!1617221 (and b!6429698 b!6429474)))

(assert (=> bs!1617221 (= (and (= (regOne!33178 lt!2378878) (regOne!33178 r!7292)) (= (regTwo!33178 lt!2378878) (regTwo!33178 r!7292))) (= lambda!355642 lambda!355619))))

(assert (=> bs!1617218 (not (= lambda!355642 lambda!355606))))

(assert (=> bs!1617213 (not (= lambda!355642 lambda!355628))))

(declare-fun bs!1617222 () Bool)

(assert (= bs!1617222 (and b!6429698 b!6429470)))

(assert (=> bs!1617222 (not (= lambda!355642 lambda!355618))))

(declare-fun bs!1617223 () Bool)

(assert (= bs!1617223 (and b!6429698 d!2015510)))

(assert (=> bs!1617223 (not (= lambda!355642 lambda!355630))))

(assert (=> b!6429698 true))

(assert (=> b!6429698 true))

(declare-fun b!6429688 () Bool)

(declare-fun res!2642833 () Bool)

(declare-fun e!3900645 () Bool)

(assert (=> b!6429688 (=> res!2642833 e!3900645)))

(declare-fun call!553043 () Bool)

(assert (=> b!6429688 (= res!2642833 call!553043)))

(declare-fun e!3900644 () Bool)

(assert (=> b!6429688 (= e!3900644 e!3900645)))

(declare-fun b!6429689 () Bool)

(declare-fun e!3900640 () Bool)

(assert (=> b!6429689 (= e!3900640 e!3900644)))

(declare-fun c!1175035 () Bool)

(assert (=> b!6429689 (= c!1175035 ((_ is Star!16333) lt!2378878))))

(declare-fun b!6429690 () Bool)

(declare-fun c!1175037 () Bool)

(assert (=> b!6429690 (= c!1175037 ((_ is ElementMatch!16333) lt!2378878))))

(declare-fun e!3900642 () Bool)

(declare-fun e!3900641 () Bool)

(assert (=> b!6429690 (= e!3900642 e!3900641)))

(declare-fun b!6429691 () Bool)

(declare-fun c!1175034 () Bool)

(assert (=> b!6429691 (= c!1175034 ((_ is Union!16333) lt!2378878))))

(assert (=> b!6429691 (= e!3900641 e!3900640)))

(declare-fun bm!553039 () Bool)

(assert (=> bm!553039 (= call!553043 (isEmpty!37341 s!2326))))

(declare-fun b!6429692 () Bool)

(declare-fun e!3900646 () Bool)

(assert (=> b!6429692 (= e!3900646 e!3900642)))

(declare-fun res!2642831 () Bool)

(assert (=> b!6429692 (= res!2642831 (not ((_ is EmptyLang!16333) lt!2378878)))))

(assert (=> b!6429692 (=> (not res!2642831) (not e!3900642))))

(declare-fun bm!553038 () Bool)

(declare-fun call!553044 () Bool)

(assert (=> bm!553038 (= call!553044 (Exists!3403 (ite c!1175035 lambda!355641 lambda!355642)))))

(declare-fun d!2015550 () Bool)

(declare-fun c!1175036 () Bool)

(assert (=> d!2015550 (= c!1175036 ((_ is EmptyExpr!16333) lt!2378878))))

(assert (=> d!2015550 (= (matchRSpec!3434 lt!2378878 s!2326) e!3900646)))

(declare-fun b!6429693 () Bool)

(assert (=> b!6429693 (= e!3900641 (= s!2326 (Cons!65174 (c!1174748 lt!2378878) Nil!65174)))))

(assert (=> b!6429694 (= e!3900645 call!553044)))

(declare-fun b!6429695 () Bool)

(assert (=> b!6429695 (= e!3900646 call!553043)))

(declare-fun b!6429696 () Bool)

(declare-fun e!3900643 () Bool)

(assert (=> b!6429696 (= e!3900643 (matchRSpec!3434 (regTwo!33179 lt!2378878) s!2326))))

(declare-fun b!6429697 () Bool)

(assert (=> b!6429697 (= e!3900640 e!3900643)))

(declare-fun res!2642832 () Bool)

(assert (=> b!6429697 (= res!2642832 (matchRSpec!3434 (regOne!33179 lt!2378878) s!2326))))

(assert (=> b!6429697 (=> res!2642832 e!3900643)))

(assert (=> b!6429698 (= e!3900644 call!553044)))

(assert (= (and d!2015550 c!1175036) b!6429695))

(assert (= (and d!2015550 (not c!1175036)) b!6429692))

(assert (= (and b!6429692 res!2642831) b!6429690))

(assert (= (and b!6429690 c!1175037) b!6429693))

(assert (= (and b!6429690 (not c!1175037)) b!6429691))

(assert (= (and b!6429691 c!1175034) b!6429697))

(assert (= (and b!6429691 (not c!1175034)) b!6429689))

(assert (= (and b!6429697 (not res!2642832)) b!6429696))

(assert (= (and b!6429689 c!1175035) b!6429688))

(assert (= (and b!6429689 (not c!1175035)) b!6429698))

(assert (= (and b!6429688 (not res!2642833)) b!6429694))

(assert (= (or b!6429694 b!6429698) bm!553038))

(assert (= (or b!6429695 b!6429688) bm!553039))

(assert (=> bm!553039 m!7222798))

(declare-fun m!7223416 () Bool)

(assert (=> bm!553038 m!7223416))

(declare-fun m!7223418 () Bool)

(assert (=> b!6429696 m!7223418))

(declare-fun m!7223420 () Bool)

(assert (=> b!6429697 m!7223420))

(assert (=> b!6428630 d!2015550))

(declare-fun d!2015552 () Bool)

(assert (=> d!2015552 (= (matchR!8516 lt!2378878 s!2326) (matchRSpec!3434 lt!2378878 s!2326))))

(declare-fun lt!2379077 () Unit!158663)

(assert (=> d!2015552 (= lt!2379077 (choose!47803 lt!2378878 s!2326))))

(assert (=> d!2015552 (validRegex!8069 lt!2378878)))

(assert (=> d!2015552 (= (mainMatchTheorem!3434 lt!2378878 s!2326) lt!2379077)))

(declare-fun bs!1617224 () Bool)

(assert (= bs!1617224 d!2015552))

(assert (=> bs!1617224 m!7222326))

(assert (=> bs!1617224 m!7222328))

(declare-fun m!7223422 () Bool)

(assert (=> bs!1617224 m!7223422))

(assert (=> bs!1617224 m!7223414))

(assert (=> b!6428630 d!2015552))

(declare-fun d!2015554 () Bool)

(declare-fun lt!2379078 () Regex!16333)

(assert (=> d!2015554 (validRegex!8069 lt!2379078)))

(assert (=> d!2015554 (= lt!2379078 (generalisedUnion!2177 (unfocusZipperList!1754 (Cons!65176 lt!2378920 Nil!65176))))))

(assert (=> d!2015554 (= (unfocusZipper!2075 (Cons!65176 lt!2378920 Nil!65176)) lt!2379078)))

(declare-fun bs!1617225 () Bool)

(assert (= bs!1617225 d!2015554))

(declare-fun m!7223424 () Bool)

(assert (=> bs!1617225 m!7223424))

(declare-fun m!7223426 () Bool)

(assert (=> bs!1617225 m!7223426))

(assert (=> bs!1617225 m!7223426))

(declare-fun m!7223428 () Bool)

(assert (=> bs!1617225 m!7223428))

(assert (=> b!6428609 d!2015554))

(declare-fun d!2015556 () Bool)

(assert (=> d!2015556 (= (Exists!3403 lambda!355547) (choose!47798 lambda!355547))))

(declare-fun bs!1617226 () Bool)

(assert (= bs!1617226 d!2015556))

(declare-fun m!7223430 () Bool)

(assert (=> bs!1617226 m!7223430))

(assert (=> b!6428629 d!2015556))

(declare-fun b!6429702 () Bool)

(declare-fun e!3900647 () Bool)

(declare-fun lt!2379079 () List!65298)

(assert (=> b!6429702 (= e!3900647 (or (not (= (_2!36615 lt!2378919) Nil!65174)) (= lt!2379079 (_1!36615 lt!2378919))))))

(declare-fun b!6429701 () Bool)

(declare-fun res!2642834 () Bool)

(assert (=> b!6429701 (=> (not res!2642834) (not e!3900647))))

(assert (=> b!6429701 (= res!2642834 (= (size!40392 lt!2379079) (+ (size!40392 (_1!36615 lt!2378919)) (size!40392 (_2!36615 lt!2378919)))))))

(declare-fun b!6429699 () Bool)

(declare-fun e!3900648 () List!65298)

(assert (=> b!6429699 (= e!3900648 (_2!36615 lt!2378919))))

(declare-fun b!6429700 () Bool)

(assert (=> b!6429700 (= e!3900648 (Cons!65174 (h!71622 (_1!36615 lt!2378919)) (++!14401 (t!378914 (_1!36615 lt!2378919)) (_2!36615 lt!2378919))))))

(declare-fun d!2015558 () Bool)

(assert (=> d!2015558 e!3900647))

(declare-fun res!2642835 () Bool)

(assert (=> d!2015558 (=> (not res!2642835) (not e!3900647))))

(assert (=> d!2015558 (= res!2642835 (= (content!12380 lt!2379079) ((_ map or) (content!12380 (_1!36615 lt!2378919)) (content!12380 (_2!36615 lt!2378919)))))))

(assert (=> d!2015558 (= lt!2379079 e!3900648)))

(declare-fun c!1175038 () Bool)

(assert (=> d!2015558 (= c!1175038 ((_ is Nil!65174) (_1!36615 lt!2378919)))))

(assert (=> d!2015558 (= (++!14401 (_1!36615 lt!2378919) (_2!36615 lt!2378919)) lt!2379079)))

(assert (= (and d!2015558 c!1175038) b!6429699))

(assert (= (and d!2015558 (not c!1175038)) b!6429700))

(assert (= (and d!2015558 res!2642835) b!6429701))

(assert (= (and b!6429701 res!2642834) b!6429702))

(declare-fun m!7223432 () Bool)

(assert (=> b!6429701 m!7223432))

(declare-fun m!7223434 () Bool)

(assert (=> b!6429701 m!7223434))

(assert (=> b!6429701 m!7223016))

(declare-fun m!7223436 () Bool)

(assert (=> b!6429700 m!7223436))

(declare-fun m!7223438 () Bool)

(assert (=> d!2015558 m!7223438))

(declare-fun m!7223440 () Bool)

(assert (=> d!2015558 m!7223440))

(assert (=> d!2015558 m!7223024))

(assert (=> b!6428629 d!2015558))

(declare-fun d!2015560 () Bool)

(assert (=> d!2015560 (= (Exists!3403 lambda!355548) (choose!47798 lambda!355548))))

(declare-fun bs!1617227 () Bool)

(assert (= bs!1617227 d!2015560))

(declare-fun m!7223442 () Bool)

(assert (=> bs!1617227 m!7223442))

(assert (=> b!6428629 d!2015560))

(declare-fun d!2015562 () Bool)

(assert (=> d!2015562 (= (get!22583 lt!2378895) (v!52396 lt!2378895))))

(assert (=> b!6428629 d!2015562))

(declare-fun bs!1617228 () Bool)

(declare-fun d!2015564 () Bool)

(assert (= bs!1617228 (and d!2015564 d!2015492)))

(declare-fun lambda!355643 () Int)

(assert (=> bs!1617228 (= (and (= s!2326 (_1!36615 lt!2378919)) (= lt!2378898 (reg!16662 (regOne!33178 r!7292))) (= (regTwo!33178 r!7292) lt!2378898)) (= lambda!355643 lambda!355622))))

(declare-fun bs!1617229 () Bool)

(assert (= bs!1617229 (and d!2015564 b!6429544)))

(assert (=> bs!1617229 (not (= lambda!355643 lambda!355620))))

(declare-fun bs!1617230 () Bool)

(assert (= bs!1617230 (and d!2015564 d!2015506)))

(assert (=> bs!1617230 (not (= lambda!355643 lambda!355629))))

(declare-fun bs!1617231 () Bool)

(assert (= bs!1617231 (and d!2015564 b!6428621)))

(assert (=> bs!1617231 (not (= lambda!355643 lambda!355545))))

(declare-fun bs!1617232 () Bool)

(assert (= bs!1617232 (and d!2015564 b!6429548)))

(assert (=> bs!1617232 (not (= lambda!355643 lambda!355621))))

(declare-fun bs!1617233 () Bool)

(assert (= bs!1617233 (and d!2015564 d!2015392)))

(assert (=> bs!1617233 (= (= lt!2378898 (regOne!33178 r!7292)) (= lambda!355643 lambda!355596))))

(declare-fun bs!1617234 () Bool)

(assert (= bs!1617234 (and d!2015564 b!6428631)))

(assert (=> bs!1617234 (not (= lambda!355643 lambda!355550))))

(declare-fun bs!1617235 () Bool)

(assert (= bs!1617235 (and d!2015564 d!2015402)))

(assert (=> bs!1617235 (not (= lambda!355643 lambda!355607))))

(assert (=> bs!1617234 (= (and (= s!2326 (_1!36615 lt!2378919)) (= lt!2378898 (reg!16662 (regOne!33178 r!7292))) (= (regTwo!33178 r!7292) lt!2378898)) (= lambda!355643 lambda!355549))))

(declare-fun bs!1617236 () Bool)

(assert (= bs!1617236 (and d!2015564 b!6428629)))

(assert (=> bs!1617236 (not (= lambda!355643 lambda!355548))))

(assert (=> bs!1617236 (= lambda!355643 lambda!355547)))

(assert (=> bs!1617231 (= (= lt!2378898 (regOne!33178 r!7292)) (= lambda!355643 lambda!355544))))

(declare-fun bs!1617237 () Bool)

(assert (= bs!1617237 (and d!2015564 b!6429694)))

(assert (=> bs!1617237 (not (= lambda!355643 lambda!355641))))

(declare-fun bs!1617238 () Bool)

(assert (= bs!1617238 (and d!2015564 b!6429698)))

(assert (=> bs!1617238 (not (= lambda!355643 lambda!355642))))

(assert (=> bs!1617234 (not (= lambda!355643 lambda!355551))))

(assert (=> bs!1617228 (not (= lambda!355643 lambda!355623))))

(declare-fun bs!1617239 () Bool)

(assert (= bs!1617239 (and d!2015564 b!6429474)))

(assert (=> bs!1617239 (not (= lambda!355643 lambda!355619))))

(assert (=> bs!1617235 (= (= lt!2378898 (regOne!33178 r!7292)) (= lambda!355643 lambda!355606))))

(assert (=> bs!1617230 (= (and (= s!2326 (_1!36615 lt!2378919)) (= lt!2378898 (reg!16662 (regOne!33178 r!7292))) (= (regTwo!33178 r!7292) (Star!16333 (reg!16662 (regOne!33178 r!7292))))) (= lambda!355643 lambda!355628))))

(declare-fun bs!1617240 () Bool)

(assert (= bs!1617240 (and d!2015564 b!6429470)))

(assert (=> bs!1617240 (not (= lambda!355643 lambda!355618))))

(declare-fun bs!1617241 () Bool)

(assert (= bs!1617241 (and d!2015564 d!2015510)))

(assert (=> bs!1617241 (= (and (= s!2326 (_1!36615 lt!2378919)) (= lt!2378898 (reg!16662 (regOne!33178 r!7292))) (= (regTwo!33178 r!7292) lt!2378898)) (= lambda!355643 lambda!355630))))

(assert (=> d!2015564 true))

(assert (=> d!2015564 true))

(assert (=> d!2015564 true))

(assert (=> d!2015564 (= (isDefined!12927 (findConcatSeparation!2638 lt!2378898 (regTwo!33178 r!7292) Nil!65174 s!2326 s!2326)) (Exists!3403 lambda!355643))))

(declare-fun lt!2379080 () Unit!158663)

(assert (=> d!2015564 (= lt!2379080 (choose!47799 lt!2378898 (regTwo!33178 r!7292) s!2326))))

(assert (=> d!2015564 (validRegex!8069 lt!2378898)))

(assert (=> d!2015564 (= (lemmaFindConcatSeparationEquivalentToExists!2402 lt!2378898 (regTwo!33178 r!7292) s!2326) lt!2379080)))

(declare-fun bs!1617242 () Bool)

(assert (= bs!1617242 d!2015564))

(assert (=> bs!1617242 m!7222446))

(declare-fun m!7223444 () Bool)

(assert (=> bs!1617242 m!7223444))

(declare-fun m!7223446 () Bool)

(assert (=> bs!1617242 m!7223446))

(assert (=> bs!1617242 m!7222372))

(declare-fun m!7223448 () Bool)

(assert (=> bs!1617242 m!7223448))

(assert (=> bs!1617242 m!7222372))

(assert (=> b!6428629 d!2015564))

(declare-fun bs!1617243 () Bool)

(declare-fun d!2015566 () Bool)

(assert (= bs!1617243 (and d!2015566 d!2015492)))

(declare-fun lambda!355644 () Int)

(assert (=> bs!1617243 (= (and (= s!2326 (_1!36615 lt!2378919)) (= lt!2378898 (reg!16662 (regOne!33178 r!7292))) (= (regTwo!33178 r!7292) lt!2378898)) (= lambda!355644 lambda!355622))))

(declare-fun bs!1617244 () Bool)

(assert (= bs!1617244 (and d!2015566 b!6429544)))

(assert (=> bs!1617244 (not (= lambda!355644 lambda!355620))))

(declare-fun bs!1617245 () Bool)

(assert (= bs!1617245 (and d!2015566 d!2015506)))

(assert (=> bs!1617245 (not (= lambda!355644 lambda!355629))))

(declare-fun bs!1617246 () Bool)

(assert (= bs!1617246 (and d!2015566 b!6428621)))

(assert (=> bs!1617246 (not (= lambda!355644 lambda!355545))))

(declare-fun bs!1617247 () Bool)

(assert (= bs!1617247 (and d!2015566 b!6429548)))

(assert (=> bs!1617247 (not (= lambda!355644 lambda!355621))))

(declare-fun bs!1617248 () Bool)

(assert (= bs!1617248 (and d!2015566 d!2015392)))

(assert (=> bs!1617248 (= (= lt!2378898 (regOne!33178 r!7292)) (= lambda!355644 lambda!355596))))

(declare-fun bs!1617249 () Bool)

(assert (= bs!1617249 (and d!2015566 b!6428631)))

(assert (=> bs!1617249 (not (= lambda!355644 lambda!355550))))

(declare-fun bs!1617250 () Bool)

(assert (= bs!1617250 (and d!2015566 d!2015402)))

(assert (=> bs!1617250 (not (= lambda!355644 lambda!355607))))

(assert (=> bs!1617249 (= (and (= s!2326 (_1!36615 lt!2378919)) (= lt!2378898 (reg!16662 (regOne!33178 r!7292))) (= (regTwo!33178 r!7292) lt!2378898)) (= lambda!355644 lambda!355549))))

(declare-fun bs!1617251 () Bool)

(assert (= bs!1617251 (and d!2015566 b!6428629)))

(assert (=> bs!1617251 (not (= lambda!355644 lambda!355548))))

(assert (=> bs!1617251 (= lambda!355644 lambda!355547)))

(declare-fun bs!1617252 () Bool)

(assert (= bs!1617252 (and d!2015566 d!2015564)))

(assert (=> bs!1617252 (= lambda!355644 lambda!355643)))

(assert (=> bs!1617246 (= (= lt!2378898 (regOne!33178 r!7292)) (= lambda!355644 lambda!355544))))

(declare-fun bs!1617253 () Bool)

(assert (= bs!1617253 (and d!2015566 b!6429694)))

(assert (=> bs!1617253 (not (= lambda!355644 lambda!355641))))

(declare-fun bs!1617254 () Bool)

(assert (= bs!1617254 (and d!2015566 b!6429698)))

(assert (=> bs!1617254 (not (= lambda!355644 lambda!355642))))

(assert (=> bs!1617249 (not (= lambda!355644 lambda!355551))))

(assert (=> bs!1617243 (not (= lambda!355644 lambda!355623))))

(declare-fun bs!1617255 () Bool)

(assert (= bs!1617255 (and d!2015566 b!6429474)))

(assert (=> bs!1617255 (not (= lambda!355644 lambda!355619))))

(assert (=> bs!1617250 (= (= lt!2378898 (regOne!33178 r!7292)) (= lambda!355644 lambda!355606))))

(assert (=> bs!1617245 (= (and (= s!2326 (_1!36615 lt!2378919)) (= lt!2378898 (reg!16662 (regOne!33178 r!7292))) (= (regTwo!33178 r!7292) (Star!16333 (reg!16662 (regOne!33178 r!7292))))) (= lambda!355644 lambda!355628))))

(declare-fun bs!1617256 () Bool)

(assert (= bs!1617256 (and d!2015566 b!6429470)))

(assert (=> bs!1617256 (not (= lambda!355644 lambda!355618))))

(declare-fun bs!1617257 () Bool)

(assert (= bs!1617257 (and d!2015566 d!2015510)))

(assert (=> bs!1617257 (= (and (= s!2326 (_1!36615 lt!2378919)) (= lt!2378898 (reg!16662 (regOne!33178 r!7292))) (= (regTwo!33178 r!7292) lt!2378898)) (= lambda!355644 lambda!355630))))

(assert (=> d!2015566 true))

(assert (=> d!2015566 true))

(assert (=> d!2015566 true))

(declare-fun lambda!355645 () Int)

(assert (=> bs!1617243 (not (= lambda!355645 lambda!355622))))

(assert (=> bs!1617244 (not (= lambda!355645 lambda!355620))))

(assert (=> bs!1617245 (not (= lambda!355645 lambda!355629))))

(assert (=> bs!1617246 (= (= lt!2378898 (regOne!33178 r!7292)) (= lambda!355645 lambda!355545))))

(assert (=> bs!1617247 (= (and (= s!2326 (_1!36615 lt!2378919)) (= lt!2378898 (regOne!33178 lt!2378898)) (= (regTwo!33178 r!7292) (regTwo!33178 lt!2378898))) (= lambda!355645 lambda!355621))))

(assert (=> bs!1617248 (not (= lambda!355645 lambda!355596))))

(assert (=> bs!1617249 (not (= lambda!355645 lambda!355550))))

(assert (=> bs!1617250 (= (= lt!2378898 (regOne!33178 r!7292)) (= lambda!355645 lambda!355607))))

(assert (=> bs!1617249 (not (= lambda!355645 lambda!355549))))

(assert (=> bs!1617251 (= lambda!355645 lambda!355548)))

(assert (=> bs!1617251 (not (= lambda!355645 lambda!355547))))

(assert (=> bs!1617252 (not (= lambda!355645 lambda!355643))))

(assert (=> bs!1617246 (not (= lambda!355645 lambda!355544))))

(assert (=> bs!1617254 (= (and (= lt!2378898 (regOne!33178 lt!2378878)) (= (regTwo!33178 r!7292) (regTwo!33178 lt!2378878))) (= lambda!355645 lambda!355642))))

(assert (=> bs!1617249 (= (and (= s!2326 (_1!36615 lt!2378919)) (= lt!2378898 (reg!16662 (regOne!33178 r!7292))) (= (regTwo!33178 r!7292) lt!2378898)) (= lambda!355645 lambda!355551))))

(assert (=> bs!1617243 (= (and (= s!2326 (_1!36615 lt!2378919)) (= lt!2378898 (reg!16662 (regOne!33178 r!7292))) (= (regTwo!33178 r!7292) lt!2378898)) (= lambda!355645 lambda!355623))))

(assert (=> bs!1617255 (= (= lt!2378898 (regOne!33178 r!7292)) (= lambda!355645 lambda!355619))))

(assert (=> bs!1617250 (not (= lambda!355645 lambda!355606))))

(assert (=> bs!1617245 (not (= lambda!355645 lambda!355628))))

(assert (=> bs!1617256 (not (= lambda!355645 lambda!355618))))

(assert (=> bs!1617257 (not (= lambda!355645 lambda!355630))))

(assert (=> bs!1617253 (not (= lambda!355645 lambda!355641))))

(declare-fun bs!1617258 () Bool)

(assert (= bs!1617258 d!2015566))

(assert (=> bs!1617258 (not (= lambda!355645 lambda!355644))))

(assert (=> d!2015566 true))

(assert (=> d!2015566 true))

(assert (=> d!2015566 true))

(assert (=> d!2015566 (= (Exists!3403 lambda!355644) (Exists!3403 lambda!355645))))

(declare-fun lt!2379081 () Unit!158663)

(assert (=> d!2015566 (= lt!2379081 (choose!47800 lt!2378898 (regTwo!33178 r!7292) s!2326))))

(assert (=> d!2015566 (validRegex!8069 lt!2378898)))

(assert (=> d!2015566 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1940 lt!2378898 (regTwo!33178 r!7292) s!2326) lt!2379081)))

(declare-fun m!7223450 () Bool)

(assert (=> bs!1617258 m!7223450))

(declare-fun m!7223452 () Bool)

(assert (=> bs!1617258 m!7223452))

(declare-fun m!7223454 () Bool)

(assert (=> bs!1617258 m!7223454))

(assert (=> bs!1617258 m!7222446))

(assert (=> b!6428629 d!2015566))

(declare-fun b!6429703 () Bool)

(declare-fun e!3900651 () Option!16224)

(assert (=> b!6429703 (= e!3900651 None!16223)))

(declare-fun b!6429704 () Bool)

(declare-fun lt!2379082 () Unit!158663)

(declare-fun lt!2379084 () Unit!158663)

(assert (=> b!6429704 (= lt!2379082 lt!2379084)))

(assert (=> b!6429704 (= (++!14401 (++!14401 Nil!65174 (Cons!65174 (h!71622 s!2326) Nil!65174)) (t!378914 s!2326)) s!2326)))

(assert (=> b!6429704 (= lt!2379084 (lemmaMoveElementToOtherListKeepsConcatEq!2496 Nil!65174 (h!71622 s!2326) (t!378914 s!2326) s!2326))))

(assert (=> b!6429704 (= e!3900651 (findConcatSeparation!2638 lt!2378898 (regTwo!33178 r!7292) (++!14401 Nil!65174 (Cons!65174 (h!71622 s!2326) Nil!65174)) (t!378914 s!2326) s!2326))))

(declare-fun b!6429705 () Bool)

(declare-fun res!2642839 () Bool)

(declare-fun e!3900650 () Bool)

(assert (=> b!6429705 (=> (not res!2642839) (not e!3900650))))

(declare-fun lt!2379083 () Option!16224)

(assert (=> b!6429705 (= res!2642839 (matchR!8516 (regTwo!33178 r!7292) (_2!36615 (get!22583 lt!2379083))))))

(declare-fun b!6429706 () Bool)

(declare-fun e!3900653 () Option!16224)

(assert (=> b!6429706 (= e!3900653 (Some!16223 (tuple2!66625 Nil!65174 s!2326)))))

(declare-fun b!6429707 () Bool)

(declare-fun e!3900652 () Bool)

(assert (=> b!6429707 (= e!3900652 (matchR!8516 (regTwo!33178 r!7292) s!2326))))

(declare-fun b!6429708 () Bool)

(declare-fun e!3900649 () Bool)

(assert (=> b!6429708 (= e!3900649 (not (isDefined!12927 lt!2379083)))))

(declare-fun b!6429710 () Bool)

(declare-fun res!2642837 () Bool)

(assert (=> b!6429710 (=> (not res!2642837) (not e!3900650))))

(assert (=> b!6429710 (= res!2642837 (matchR!8516 lt!2378898 (_1!36615 (get!22583 lt!2379083))))))

(declare-fun b!6429711 () Bool)

(assert (=> b!6429711 (= e!3900650 (= (++!14401 (_1!36615 (get!22583 lt!2379083)) (_2!36615 (get!22583 lt!2379083))) s!2326))))

(declare-fun b!6429709 () Bool)

(assert (=> b!6429709 (= e!3900653 e!3900651)))

(declare-fun c!1175040 () Bool)

(assert (=> b!6429709 (= c!1175040 ((_ is Nil!65174) s!2326))))

(declare-fun d!2015568 () Bool)

(assert (=> d!2015568 e!3900649))

(declare-fun res!2642838 () Bool)

(assert (=> d!2015568 (=> res!2642838 e!3900649)))

(assert (=> d!2015568 (= res!2642838 e!3900650)))

(declare-fun res!2642836 () Bool)

(assert (=> d!2015568 (=> (not res!2642836) (not e!3900650))))

(assert (=> d!2015568 (= res!2642836 (isDefined!12927 lt!2379083))))

(assert (=> d!2015568 (= lt!2379083 e!3900653)))

(declare-fun c!1175039 () Bool)

(assert (=> d!2015568 (= c!1175039 e!3900652)))

(declare-fun res!2642840 () Bool)

(assert (=> d!2015568 (=> (not res!2642840) (not e!3900652))))

(assert (=> d!2015568 (= res!2642840 (matchR!8516 lt!2378898 Nil!65174))))

(assert (=> d!2015568 (validRegex!8069 lt!2378898)))

(assert (=> d!2015568 (= (findConcatSeparation!2638 lt!2378898 (regTwo!33178 r!7292) Nil!65174 s!2326 s!2326) lt!2379083)))

(assert (= (and d!2015568 res!2642840) b!6429707))

(assert (= (and d!2015568 c!1175039) b!6429706))

(assert (= (and d!2015568 (not c!1175039)) b!6429709))

(assert (= (and b!6429709 c!1175040) b!6429703))

(assert (= (and b!6429709 (not c!1175040)) b!6429704))

(assert (= (and d!2015568 res!2642836) b!6429710))

(assert (= (and b!6429710 res!2642837) b!6429705))

(assert (= (and b!6429705 res!2642839) b!6429711))

(assert (= (and d!2015568 (not res!2642838)) b!6429708))

(declare-fun m!7223456 () Bool)

(assert (=> b!6429708 m!7223456))

(declare-fun m!7223458 () Bool)

(assert (=> b!6429705 m!7223458))

(declare-fun m!7223460 () Bool)

(assert (=> b!6429705 m!7223460))

(assert (=> b!6429704 m!7222926))

(assert (=> b!6429704 m!7222926))

(assert (=> b!6429704 m!7222928))

(assert (=> b!6429704 m!7222930))

(assert (=> b!6429704 m!7222926))

(declare-fun m!7223462 () Bool)

(assert (=> b!6429704 m!7223462))

(assert (=> d!2015568 m!7223456))

(declare-fun m!7223464 () Bool)

(assert (=> d!2015568 m!7223464))

(assert (=> d!2015568 m!7222446))

(assert (=> b!6429711 m!7223458))

(declare-fun m!7223466 () Bool)

(assert (=> b!6429711 m!7223466))

(assert (=> b!6429707 m!7222940))

(assert (=> b!6429710 m!7223458))

(declare-fun m!7223468 () Bool)

(assert (=> b!6429710 m!7223468))

(assert (=> b!6428629 d!2015568))

(declare-fun d!2015570 () Bool)

(assert (=> d!2015570 (= (isDefined!12927 lt!2378895) (not (isEmpty!37344 lt!2378895)))))

(declare-fun bs!1617259 () Bool)

(assert (= bs!1617259 d!2015570))

(declare-fun m!7223470 () Bool)

(assert (=> bs!1617259 m!7223470))

(assert (=> b!6428629 d!2015570))

(declare-fun b!6429716 () Bool)

(declare-fun e!3900656 () Bool)

(declare-fun tp!1784017 () Bool)

(declare-fun tp!1784018 () Bool)

(assert (=> b!6429716 (= e!3900656 (and tp!1784017 tp!1784018))))

(assert (=> b!6428600 (= tp!1783948 e!3900656)))

(assert (= (and b!6428600 ((_ is Cons!65175) (exprs!6217 (h!71624 zl!343)))) b!6429716))

(declare-fun b!6429730 () Bool)

(declare-fun e!3900659 () Bool)

(declare-fun tp!1784029 () Bool)

(declare-fun tp!1784033 () Bool)

(assert (=> b!6429730 (= e!3900659 (and tp!1784029 tp!1784033))))

(declare-fun b!6429728 () Bool)

(declare-fun tp!1784031 () Bool)

(declare-fun tp!1784030 () Bool)

(assert (=> b!6429728 (= e!3900659 (and tp!1784031 tp!1784030))))

(declare-fun b!6429727 () Bool)

(assert (=> b!6429727 (= e!3900659 tp_is_empty!41919)))

(declare-fun b!6429729 () Bool)

(declare-fun tp!1784032 () Bool)

(assert (=> b!6429729 (= e!3900659 tp!1784032)))

(assert (=> b!6428635 (= tp!1783946 e!3900659)))

(assert (= (and b!6428635 ((_ is ElementMatch!16333) (reg!16662 r!7292))) b!6429727))

(assert (= (and b!6428635 ((_ is Concat!25178) (reg!16662 r!7292))) b!6429728))

(assert (= (and b!6428635 ((_ is Star!16333) (reg!16662 r!7292))) b!6429729))

(assert (= (and b!6428635 ((_ is Union!16333) (reg!16662 r!7292))) b!6429730))

(declare-fun b!6429735 () Bool)

(declare-fun e!3900662 () Bool)

(declare-fun tp!1784036 () Bool)

(assert (=> b!6429735 (= e!3900662 (and tp_is_empty!41919 tp!1784036))))

(assert (=> b!6428642 (= tp!1783954 e!3900662)))

(assert (= (and b!6428642 ((_ is Cons!65174) (t!378914 s!2326))) b!6429735))

(declare-fun condSetEmpty!43902 () Bool)

(assert (=> setNonEmpty!43896 (= condSetEmpty!43902 (= setRest!43896 ((as const (Array Context!11434 Bool)) false)))))

(declare-fun setRes!43902 () Bool)

(assert (=> setNonEmpty!43896 (= tp!1783949 setRes!43902)))

(declare-fun setIsEmpty!43902 () Bool)

(assert (=> setIsEmpty!43902 setRes!43902))

(declare-fun setElem!43902 () Context!11434)

(declare-fun tp!1784042 () Bool)

(declare-fun setNonEmpty!43902 () Bool)

(declare-fun e!3900665 () Bool)

(assert (=> setNonEmpty!43902 (= setRes!43902 (and tp!1784042 (inv!84079 setElem!43902) e!3900665))))

(declare-fun setRest!43902 () (InoxSet Context!11434))

(assert (=> setNonEmpty!43902 (= setRest!43896 ((_ map or) (store ((as const (Array Context!11434 Bool)) false) setElem!43902 true) setRest!43902))))

(declare-fun b!6429740 () Bool)

(declare-fun tp!1784041 () Bool)

(assert (=> b!6429740 (= e!3900665 tp!1784041)))

(assert (= (and setNonEmpty!43896 condSetEmpty!43902) setIsEmpty!43902))

(assert (= (and setNonEmpty!43896 (not condSetEmpty!43902)) setNonEmpty!43902))

(assert (= setNonEmpty!43902 b!6429740))

(declare-fun m!7223472 () Bool)

(assert (=> setNonEmpty!43902 m!7223472))

(declare-fun b!6429748 () Bool)

(declare-fun e!3900671 () Bool)

(declare-fun tp!1784047 () Bool)

(assert (=> b!6429748 (= e!3900671 tp!1784047)))

(declare-fun e!3900670 () Bool)

(declare-fun b!6429747 () Bool)

(declare-fun tp!1784048 () Bool)

(assert (=> b!6429747 (= e!3900670 (and (inv!84079 (h!71624 (t!378916 zl!343))) e!3900671 tp!1784048))))

(assert (=> b!6428619 (= tp!1783945 e!3900670)))

(assert (= b!6429747 b!6429748))

(assert (= (and b!6428619 ((_ is Cons!65176) (t!378916 zl!343))) b!6429747))

(declare-fun m!7223474 () Bool)

(assert (=> b!6429747 m!7223474))

(declare-fun b!6429752 () Bool)

(declare-fun e!3900672 () Bool)

(declare-fun tp!1784049 () Bool)

(declare-fun tp!1784053 () Bool)

(assert (=> b!6429752 (= e!3900672 (and tp!1784049 tp!1784053))))

(declare-fun b!6429750 () Bool)

(declare-fun tp!1784051 () Bool)

(declare-fun tp!1784050 () Bool)

(assert (=> b!6429750 (= e!3900672 (and tp!1784051 tp!1784050))))

(declare-fun b!6429749 () Bool)

(assert (=> b!6429749 (= e!3900672 tp_is_empty!41919)))

(declare-fun b!6429751 () Bool)

(declare-fun tp!1784052 () Bool)

(assert (=> b!6429751 (= e!3900672 tp!1784052)))

(assert (=> b!6428634 (= tp!1783950 e!3900672)))

(assert (= (and b!6428634 ((_ is ElementMatch!16333) (regOne!33179 r!7292))) b!6429749))

(assert (= (and b!6428634 ((_ is Concat!25178) (regOne!33179 r!7292))) b!6429750))

(assert (= (and b!6428634 ((_ is Star!16333) (regOne!33179 r!7292))) b!6429751))

(assert (= (and b!6428634 ((_ is Union!16333) (regOne!33179 r!7292))) b!6429752))

(declare-fun b!6429756 () Bool)

(declare-fun e!3900673 () Bool)

(declare-fun tp!1784054 () Bool)

(declare-fun tp!1784058 () Bool)

(assert (=> b!6429756 (= e!3900673 (and tp!1784054 tp!1784058))))

(declare-fun b!6429754 () Bool)

(declare-fun tp!1784056 () Bool)

(declare-fun tp!1784055 () Bool)

(assert (=> b!6429754 (= e!3900673 (and tp!1784056 tp!1784055))))

(declare-fun b!6429753 () Bool)

(assert (=> b!6429753 (= e!3900673 tp_is_empty!41919)))

(declare-fun b!6429755 () Bool)

(declare-fun tp!1784057 () Bool)

(assert (=> b!6429755 (= e!3900673 tp!1784057)))

(assert (=> b!6428634 (= tp!1783947 e!3900673)))

(assert (= (and b!6428634 ((_ is ElementMatch!16333) (regTwo!33179 r!7292))) b!6429753))

(assert (= (and b!6428634 ((_ is Concat!25178) (regTwo!33179 r!7292))) b!6429754))

(assert (= (and b!6428634 ((_ is Star!16333) (regTwo!33179 r!7292))) b!6429755))

(assert (= (and b!6428634 ((_ is Union!16333) (regTwo!33179 r!7292))) b!6429756))

(declare-fun b!6429760 () Bool)

(declare-fun e!3900674 () Bool)

(declare-fun tp!1784059 () Bool)

(declare-fun tp!1784063 () Bool)

(assert (=> b!6429760 (= e!3900674 (and tp!1784059 tp!1784063))))

(declare-fun b!6429758 () Bool)

(declare-fun tp!1784061 () Bool)

(declare-fun tp!1784060 () Bool)

(assert (=> b!6429758 (= e!3900674 (and tp!1784061 tp!1784060))))

(declare-fun b!6429757 () Bool)

(assert (=> b!6429757 (= e!3900674 tp_is_empty!41919)))

(declare-fun b!6429759 () Bool)

(declare-fun tp!1784062 () Bool)

(assert (=> b!6429759 (= e!3900674 tp!1784062)))

(assert (=> b!6428620 (= tp!1783952 e!3900674)))

(assert (= (and b!6428620 ((_ is ElementMatch!16333) (regOne!33178 r!7292))) b!6429757))

(assert (= (and b!6428620 ((_ is Concat!25178) (regOne!33178 r!7292))) b!6429758))

(assert (= (and b!6428620 ((_ is Star!16333) (regOne!33178 r!7292))) b!6429759))

(assert (= (and b!6428620 ((_ is Union!16333) (regOne!33178 r!7292))) b!6429760))

(declare-fun b!6429764 () Bool)

(declare-fun e!3900675 () Bool)

(declare-fun tp!1784064 () Bool)

(declare-fun tp!1784068 () Bool)

(assert (=> b!6429764 (= e!3900675 (and tp!1784064 tp!1784068))))

(declare-fun b!6429762 () Bool)

(declare-fun tp!1784066 () Bool)

(declare-fun tp!1784065 () Bool)

(assert (=> b!6429762 (= e!3900675 (and tp!1784066 tp!1784065))))

(declare-fun b!6429761 () Bool)

(assert (=> b!6429761 (= e!3900675 tp_is_empty!41919)))

(declare-fun b!6429763 () Bool)

(declare-fun tp!1784067 () Bool)

(assert (=> b!6429763 (= e!3900675 tp!1784067)))

(assert (=> b!6428620 (= tp!1783951 e!3900675)))

(assert (= (and b!6428620 ((_ is ElementMatch!16333) (regTwo!33178 r!7292))) b!6429761))

(assert (= (and b!6428620 ((_ is Concat!25178) (regTwo!33178 r!7292))) b!6429762))

(assert (= (and b!6428620 ((_ is Star!16333) (regTwo!33178 r!7292))) b!6429763))

(assert (= (and b!6428620 ((_ is Union!16333) (regTwo!33178 r!7292))) b!6429764))

(declare-fun b!6429765 () Bool)

(declare-fun e!3900676 () Bool)

(declare-fun tp!1784069 () Bool)

(declare-fun tp!1784070 () Bool)

(assert (=> b!6429765 (= e!3900676 (and tp!1784069 tp!1784070))))

(assert (=> b!6428614 (= tp!1783953 e!3900676)))

(assert (= (and b!6428614 ((_ is Cons!65175) (exprs!6217 setElem!43896))) b!6429765))

(declare-fun b_lambda!244301 () Bool)

(assert (= b_lambda!244299 (or b!6428628 b_lambda!244301)))

(declare-fun bs!1617260 () Bool)

(declare-fun d!2015572 () Bool)

(assert (= bs!1617260 (and d!2015572 b!6428628)))

(assert (=> bs!1617260 (= (dynLambda!25890 lambda!355546 (h!71624 zl!343)) (derivationStepZipperUp!1507 (h!71624 zl!343) (h!71622 s!2326)))))

(assert (=> bs!1617260 m!7222348))

(assert (=> d!2015538 d!2015572))

(declare-fun b_lambda!244303 () Bool)

(assert (= b_lambda!244295 (or b!6428628 b_lambda!244303)))

(declare-fun bs!1617261 () Bool)

(declare-fun d!2015574 () Bool)

(assert (= bs!1617261 (and d!2015574 b!6428628)))

(assert (=> bs!1617261 (= (dynLambda!25890 lambda!355546 lt!2378920) (derivationStepZipperUp!1507 lt!2378920 (h!71622 s!2326)))))

(assert (=> bs!1617261 m!7222292))

(assert (=> d!2015528 d!2015574))

(declare-fun b_lambda!244305 () Bool)

(assert (= b_lambda!244297 (or b!6428628 b_lambda!244305)))

(declare-fun bs!1617262 () Bool)

(declare-fun d!2015576 () Bool)

(assert (= bs!1617262 (and d!2015576 b!6428628)))

(assert (=> bs!1617262 (= (dynLambda!25890 lambda!355546 lt!2378889) (derivationStepZipperUp!1507 lt!2378889 (h!71622 s!2326)))))

(assert (=> bs!1617262 m!7222286))

(assert (=> d!2015530 d!2015576))

(declare-fun b_lambda!244307 () Bool)

(assert (= b_lambda!244285 (or b!6428628 b_lambda!244307)))

(declare-fun bs!1617263 () Bool)

(declare-fun d!2015578 () Bool)

(assert (= bs!1617263 (and d!2015578 b!6428628)))

(assert (=> bs!1617263 (= (dynLambda!25890 lambda!355546 lt!2378916) (derivationStepZipperUp!1507 lt!2378916 (h!71622 s!2326)))))

(assert (=> bs!1617263 m!7222414))

(assert (=> d!2015322 d!2015578))

(check-sat (not b!6429215) (not d!2015478) (not b_lambda!244303) (not b!6428961) (not b!6429762) (not b!6428962) (not bm!553019) (not b!6429632) (not b!6429521) (not b!6429041) (not b!6429398) (not b!6429554) (not d!2015516) (not b!6429500) (not d!2015466) (not d!2015402) (not d!2015512) (not d!2015564) (not b!6429704) (not bm!553026) (not b!6429390) (not b!6429596) (not b!6429486) (not b!6429730) (not b!6429293) (not bm!553036) (not b!6429648) (not b!6429599) (not bm!552938) (not b!6429600) (not bm!553037) (not d!2015450) (not d!2015408) (not d!2015328) (not b!6428957) (not b!6429747) (not bm!553035) (not b!6429681) (not b!6429482) (not b!6429478) (not d!2015308) (not b!6429387) (not b!6429716) (not d!2015552) (not d!2015566) (not b!6429729) (not bm!552996) (not b!6429756) (not d!2015476) (not d!2015496) (not b!6428963) (not d!2015322) (not b!6429764) (not d!2015390) (not b!6429634) (not b!6429763) (not d!2015346) (not b!6429750) (not d!2015504) (not b!6429475) (not d!2015350) (not d!2015480) (not b!6429547) (not d!2015506) (not b!6429696) (not b!6428954) (not b!6429740) (not d!2015540) (not b!6429710) (not b!6429606) (not bm!553022) (not d!2015560) (not b!6429473) (not d!2015544) (not d!2015494) (not b!6429137) (not b!6429597) (not b!6429754) (not d!2015518) (not b!6429537) (not d!2015474) (not bm!553030) (not b!6429483) (not b!6429707) (not d!2015490) (not b!6429518) (not d!2015282) (not d!2015334) (not bs!1617261) (not b_lambda!244305) (not b!6429628) (not b!6429670) (not bm!553025) (not b!6429300) (not b!6429503) (not d!2015418) (not b!6429660) (not b!6429524) (not b!6429506) (not b!6429510) (not b!6428965) (not bm!553008) (not b!6429701) (not d!2015420) (not d!2015502) (not b!6429505) (not bm!553005) (not d!2015326) (not bm!553033) (not b!6429381) tp_is_empty!41919 (not bm!553024) (not b!6429221) (not b!6429472) (not d!2015428) (not d!2015388) (not d!2015492) (not bm!553031) (not bm!552979) (not d!2015554) (not bm!553007) (not d!2015452) (not b!6429515) (not d!2015464) (not d!2015568) (not b!6429395) (not b!6429266) (not b!6429528) (not b!6429551) (not b!6429674) (not d!2015570) (not b!6429594) (not d!2015422) (not b!6429134) (not b!6429220) (not b!6429759) (not d!2015486) (not b!6429364) (not b!6429649) (not b!6429550) (not bm!553011) (not b!6429504) (not b!6429760) (not b!6429502) (not bm!553028) (not b!6429507) (not b!6429136) (not b!6429217) (not d!2015556) (not bm!553023) (not b!6429559) (not d!2015558) (not bm!553039) (not b!6429484) (not b!6429553) (not bs!1617263) (not b!6429765) (not bs!1617262) (not bm!553017) (not bs!1617260) (not bm!552980) (not b!6429135) (not b!6429532) (not b!6429700) (not b!6429751) (not b!6429728) (not b!6429629) (not b!6429292) (not d!2015514) (not b_lambda!244307) (not b!6429697) (not b!6429711) (not b!6429516) (not b!6429639) (not d!2015392) (not b!6429301) (not b!6429705) (not d!2015530) (not b!6429269) (not d!2015526) (not b_lambda!244301) (not b!6429258) (not d!2015510) (not d!2015520) (not bm!553018) (not d!2015538) (not bm!553021) (not b!6429501) (not b!6429755) (not b!6429214) (not b!6429546) (not b!6429267) (not b!6429126) (not bm!552982) (not b!6429683) (not b!6429595) (not b!6429396) (not d!2015500) (not d!2015484) (not b!6429748) (not d!2015410) (not b!6429708) (not d!2015472) (not bm!553038) (not b!6429297) (not setNonEmpty!43902) (not b!6429735) (not d!2015470) (not b!6429218) (not b!6429556) (not b!6429514) (not b!6429643) (not b!6429265) (not b!6429664) (not b!6429665) (not bm!553016) (not b!6429530) (not b!6429637) (not b!6429669) (not b!6429593) (not bm!552963) (not b!6429644) (not bm!553027) (not b!6429630) (not b!6429557) (not b!6429752) (not b!6429529) (not b!6429394) (not b!6429685) (not d!2015548) (not b!6429495) (not b!6429040) (not b!6429560) (not b!6429635) (not d!2015528) (not b!6429638) (not b!6429261) (not d!2015404) (not d!2015532) (not bm!553010) (not b!6429682) (not d!2015508) (not b!6429758) (not b!6429677) (not b!6429296) (not d!2015352))
(check-sat)
