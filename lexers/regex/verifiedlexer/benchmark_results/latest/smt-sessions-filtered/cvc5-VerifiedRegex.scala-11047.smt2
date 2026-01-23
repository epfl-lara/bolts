; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!572700 () Bool)

(assert start!572700)

(declare-fun b!5472479 () Bool)

(assert (=> b!5472479 true))

(assert (=> b!5472479 true))

(declare-fun lambda!291343 () Int)

(declare-fun lambda!291342 () Int)

(assert (=> b!5472479 (not (= lambda!291343 lambda!291342))))

(assert (=> b!5472479 true))

(assert (=> b!5472479 true))

(declare-fun lambda!291344 () Int)

(assert (=> b!5472479 (not (= lambda!291344 lambda!291342))))

(assert (=> b!5472479 (not (= lambda!291344 lambda!291343))))

(assert (=> b!5472479 true))

(assert (=> b!5472479 true))

(declare-fun b!5472467 () Bool)

(assert (=> b!5472467 true))

(declare-fun b!5472455 () Bool)

(declare-fun res!2332181 () Bool)

(declare-fun e!3387553 () Bool)

(assert (=> b!5472455 (=> res!2332181 e!3387553)))

(declare-datatypes ((C!30950 0))(
  ( (C!30951 (val!25177 Int)) )
))
(declare-datatypes ((Regex!15340 0))(
  ( (ElementMatch!15340 (c!956125 C!30950)) (Concat!24185 (regOne!31192 Regex!15340) (regTwo!31192 Regex!15340)) (EmptyExpr!15340) (Star!15340 (reg!15669 Regex!15340)) (EmptyLang!15340) (Union!15340 (regOne!31193 Regex!15340) (regTwo!31193 Regex!15340)) )
))
(declare-datatypes ((List!62319 0))(
  ( (Nil!62195) (Cons!62195 (h!68643 Regex!15340) (t!375548 List!62319)) )
))
(declare-datatypes ((Context!9448 0))(
  ( (Context!9449 (exprs!5224 List!62319)) )
))
(declare-datatypes ((List!62320 0))(
  ( (Nil!62196) (Cons!62196 (h!68644 Context!9448) (t!375549 List!62320)) )
))
(declare-fun zl!343 () List!62320)

(assert (=> b!5472455 (= res!2332181 (not (is-Cons!62195 (exprs!5224 (h!68644 zl!343)))))))

(declare-fun b!5472456 () Bool)

(declare-fun res!2332169 () Bool)

(declare-fun e!3387550 () Bool)

(assert (=> b!5472456 (=> res!2332169 e!3387550)))

(declare-fun lt!2235476 () Context!9448)

(declare-fun r!7292 () Regex!15340)

(declare-fun unfocusZipper!1082 (List!62320) Regex!15340)

(assert (=> b!5472456 (= res!2332169 (not (= (unfocusZipper!1082 (Cons!62196 lt!2235476 Nil!62196)) r!7292)))))

(declare-fun b!5472457 () Bool)

(declare-fun e!3387563 () Bool)

(declare-fun tp_is_empty!39933 () Bool)

(declare-fun tp!1504626 () Bool)

(assert (=> b!5472457 (= e!3387563 (and tp_is_empty!39933 tp!1504626))))

(declare-fun b!5472458 () Bool)

(declare-fun res!2332162 () Bool)

(declare-fun e!3387554 () Bool)

(assert (=> b!5472458 (=> res!2332162 e!3387554)))

(declare-fun lt!2235462 () (Set Context!9448))

(declare-datatypes ((List!62321 0))(
  ( (Nil!62197) (Cons!62197 (h!68645 C!30950) (t!375550 List!62321)) )
))
(declare-fun s!2326 () List!62321)

(declare-fun matchZipper!1558 ((Set Context!9448) List!62321) Bool)

(declare-fun derivationStepZipper!1535 ((Set Context!9448) C!30950) (Set Context!9448))

(assert (=> b!5472458 (= res!2332162 (not (= (matchZipper!1558 lt!2235462 s!2326) (matchZipper!1558 (derivationStepZipper!1535 lt!2235462 (h!68645 s!2326)) (t!375550 s!2326)))))))

(declare-fun b!5472459 () Bool)

(declare-fun e!3387556 () Bool)

(assert (=> b!5472459 (= e!3387556 e!3387554)))

(declare-fun res!2332171 () Bool)

(assert (=> b!5472459 (=> res!2332171 e!3387554)))

(declare-fun lt!2235488 () (Set Context!9448))

(declare-fun derivationStepZipperDown!766 (Regex!15340 Context!9448 C!30950) (Set Context!9448))

(assert (=> b!5472459 (= res!2332171 (not (= lt!2235488 (derivationStepZipperDown!766 (reg!15669 r!7292) lt!2235476 (h!68645 s!2326)))))))

(declare-fun lt!2235469 () List!62319)

(assert (=> b!5472459 (= lt!2235476 (Context!9449 lt!2235469))))

(declare-fun lt!2235481 () Context!9448)

(declare-fun lambda!291345 () Int)

(declare-fun flatMap!1043 ((Set Context!9448) Int) (Set Context!9448))

(declare-fun derivationStepZipperUp!692 (Context!9448 C!30950) (Set Context!9448))

(assert (=> b!5472459 (= (flatMap!1043 lt!2235462 lambda!291345) (derivationStepZipperUp!692 lt!2235481 (h!68645 s!2326)))))

(declare-datatypes ((Unit!155130 0))(
  ( (Unit!155131) )
))
(declare-fun lt!2235477 () Unit!155130)

(declare-fun lemmaFlatMapOnSingletonSet!575 ((Set Context!9448) Context!9448 Int) Unit!155130)

(assert (=> b!5472459 (= lt!2235477 (lemmaFlatMapOnSingletonSet!575 lt!2235462 lt!2235481 lambda!291345))))

(declare-fun lt!2235461 () (Set Context!9448))

(assert (=> b!5472459 (= lt!2235461 (derivationStepZipperUp!692 lt!2235481 (h!68645 s!2326)))))

(assert (=> b!5472459 (= lt!2235462 (set.insert lt!2235481 (as set.empty (Set Context!9448))))))

(assert (=> b!5472459 (= lt!2235481 (Context!9449 (Cons!62195 (reg!15669 r!7292) lt!2235469)))))

(assert (=> b!5472459 (= lt!2235469 (Cons!62195 r!7292 Nil!62195))))

(declare-fun b!5472460 () Bool)

(declare-fun res!2332165 () Bool)

(assert (=> b!5472460 (=> res!2332165 e!3387553)))

(assert (=> b!5472460 (= res!2332165 (or (is-EmptyExpr!15340 r!7292) (is-EmptyLang!15340 r!7292) (is-ElementMatch!15340 r!7292) (is-Union!15340 r!7292) (is-Concat!24185 r!7292)))))

(declare-fun b!5472461 () Bool)

(declare-fun res!2332183 () Bool)

(declare-fun e!3387551 () Bool)

(assert (=> b!5472461 (=> res!2332183 e!3387551)))

(assert (=> b!5472461 (= res!2332183 (is-Nil!62197 s!2326))))

(declare-fun b!5472462 () Bool)

(declare-fun res!2332166 () Bool)

(assert (=> b!5472462 (=> res!2332166 e!3387553)))

(declare-fun generalisedUnion!1269 (List!62319) Regex!15340)

(declare-fun unfocusZipperList!782 (List!62320) List!62319)

(assert (=> b!5472462 (= res!2332166 (not (= r!7292 (generalisedUnion!1269 (unfocusZipperList!782 zl!343)))))))

(declare-fun b!5472463 () Bool)

(declare-fun e!3387561 () Bool)

(declare-fun tp!1504628 () Bool)

(assert (=> b!5472463 (= e!3387561 tp!1504628)))

(declare-fun b!5472464 () Bool)

(declare-fun e!3387562 () Bool)

(declare-fun e!3387552 () Bool)

(assert (=> b!5472464 (= e!3387562 e!3387552)))

(declare-fun res!2332175 () Bool)

(assert (=> b!5472464 (=> res!2332175 e!3387552)))

(declare-datatypes ((tuple2!65074 0))(
  ( (tuple2!65075 (_1!35840 List!62321) (_2!35840 List!62321)) )
))
(declare-fun lt!2235463 () tuple2!65074)

(declare-fun ++!13677 (List!62321 List!62321) List!62321)

(assert (=> b!5472464 (= res!2332175 (not (= s!2326 (++!13677 (_1!35840 lt!2235463) (_2!35840 lt!2235463)))))))

(declare-datatypes ((Option!15449 0))(
  ( (None!15448) (Some!15448 (v!51477 tuple2!65074)) )
))
(declare-fun lt!2235460 () Option!15449)

(declare-fun get!21441 (Option!15449) tuple2!65074)

(assert (=> b!5472464 (= lt!2235463 (get!21441 lt!2235460))))

(declare-fun b!5472465 () Bool)

(declare-fun e!3387548 () Bool)

(assert (=> b!5472465 (= e!3387551 e!3387548)))

(declare-fun res!2332176 () Bool)

(assert (=> b!5472465 (=> res!2332176 e!3387548)))

(declare-fun lt!2235468 () (Set Context!9448))

(declare-fun lt!2235479 () (Set Context!9448))

(assert (=> b!5472465 (= res!2332176 (not (= lt!2235468 lt!2235479)))))

(assert (=> b!5472465 (= lt!2235479 (derivationStepZipperDown!766 r!7292 (Context!9449 Nil!62195) (h!68645 s!2326)))))

(assert (=> b!5472465 (= lt!2235468 (derivationStepZipperUp!692 (Context!9449 (Cons!62195 r!7292 Nil!62195)) (h!68645 s!2326)))))

(declare-fun z!1189 () (Set Context!9448))

(assert (=> b!5472465 (= lt!2235488 (derivationStepZipper!1535 z!1189 (h!68645 s!2326)))))

(declare-fun b!5472466 () Bool)

(declare-fun e!3387546 () Bool)

(declare-fun lt!2235471 () Bool)

(declare-fun Exists!2519 (Int) Bool)

(assert (=> b!5472466 (= e!3387546 (= lt!2235471 (Exists!2519 lambda!291342)))))

(assert (=> b!5472467 (= e!3387548 e!3387556)))

(declare-fun res!2332184 () Bool)

(assert (=> b!5472467 (=> res!2332184 e!3387556)))

(assert (=> b!5472467 (= res!2332184 (not (= lt!2235488 lt!2235479)))))

(assert (=> b!5472467 (= (flatMap!1043 z!1189 lambda!291345) (derivationStepZipperUp!692 (h!68644 zl!343) (h!68645 s!2326)))))

(declare-fun lt!2235475 () Unit!155130)

(assert (=> b!5472467 (= lt!2235475 (lemmaFlatMapOnSingletonSet!575 z!1189 (h!68644 zl!343) lambda!291345))))

(declare-fun b!5472468 () Bool)

(declare-fun e!3387545 () Bool)

(assert (=> b!5472468 (= e!3387545 (not e!3387553))))

(declare-fun res!2332177 () Bool)

(assert (=> b!5472468 (=> res!2332177 e!3387553)))

(assert (=> b!5472468 (= res!2332177 (not (is-Cons!62196 zl!343)))))

(declare-fun lt!2235472 () Bool)

(declare-fun matchRSpec!2443 (Regex!15340 List!62321) Bool)

(assert (=> b!5472468 (= lt!2235472 (matchRSpec!2443 r!7292 s!2326))))

(declare-fun matchR!7525 (Regex!15340 List!62321) Bool)

(assert (=> b!5472468 (= lt!2235472 (matchR!7525 r!7292 s!2326))))

(declare-fun lt!2235467 () Unit!155130)

(declare-fun mainMatchTheorem!2443 (Regex!15340 List!62321) Unit!155130)

(assert (=> b!5472468 (= lt!2235467 (mainMatchTheorem!2443 r!7292 s!2326))))

(declare-fun b!5472469 () Bool)

(declare-fun e!3387558 () Bool)

(assert (=> b!5472469 (= e!3387558 tp_is_empty!39933)))

(declare-fun b!5472470 () Bool)

(declare-fun e!3387557 () Bool)

(assert (=> b!5472470 (= e!3387557 e!3387545)))

(declare-fun res!2332179 () Bool)

(assert (=> b!5472470 (=> (not res!2332179) (not e!3387545))))

(declare-fun lt!2235482 () Regex!15340)

(assert (=> b!5472470 (= res!2332179 (= r!7292 lt!2235482))))

(assert (=> b!5472470 (= lt!2235482 (unfocusZipper!1082 zl!343))))

(declare-fun setRes!35926 () Bool)

(declare-fun setElem!35926 () Context!9448)

(declare-fun setNonEmpty!35926 () Bool)

(declare-fun tp!1504630 () Bool)

(declare-fun inv!81598 (Context!9448) Bool)

(assert (=> setNonEmpty!35926 (= setRes!35926 (and tp!1504630 (inv!81598 setElem!35926) e!3387561))))

(declare-fun setRest!35926 () (Set Context!9448))

(assert (=> setNonEmpty!35926 (= z!1189 (set.union (set.insert setElem!35926 (as set.empty (Set Context!9448))) setRest!35926))))

(declare-fun b!5472471 () Bool)

(assert (=> b!5472471 (= e!3387550 e!3387562)))

(declare-fun res!2332167 () Bool)

(assert (=> b!5472471 (=> res!2332167 e!3387562)))

(declare-fun lt!2235485 () Bool)

(assert (=> b!5472471 (= res!2332167 (not lt!2235485))))

(declare-fun e!3387547 () Bool)

(assert (=> b!5472471 e!3387547))

(declare-fun res!2332168 () Bool)

(assert (=> b!5472471 (=> (not res!2332168) (not e!3387547))))

(declare-fun lt!2235483 () Regex!15340)

(assert (=> b!5472471 (= res!2332168 (= lt!2235485 (matchRSpec!2443 lt!2235483 s!2326)))))

(assert (=> b!5472471 (= lt!2235485 (matchR!7525 lt!2235483 s!2326))))

(declare-fun lt!2235465 () Unit!155130)

(assert (=> b!5472471 (= lt!2235465 (mainMatchTheorem!2443 lt!2235483 s!2326))))

(declare-fun b!5472472 () Bool)

(declare-fun res!2332172 () Bool)

(assert (=> b!5472472 (=> res!2332172 e!3387550)))

(declare-fun lt!2235474 () Context!9448)

(assert (=> b!5472472 (= res!2332172 (not (= (unfocusZipper!1082 (Cons!62196 lt!2235474 Nil!62196)) (reg!15669 r!7292))))))

(declare-fun b!5472473 () Bool)

(declare-fun e!3387564 () Bool)

(assert (=> b!5472473 (= e!3387564 lt!2235471)))

(declare-fun b!5472474 () Bool)

(declare-fun res!2332161 () Bool)

(assert (=> b!5472474 (=> res!2332161 e!3387553)))

(declare-fun generalisedConcat!1009 (List!62319) Regex!15340)

(assert (=> b!5472474 (= res!2332161 (not (= r!7292 (generalisedConcat!1009 (exprs!5224 (h!68644 zl!343))))))))

(declare-fun b!5472475 () Bool)

(declare-fun tp!1504631 () Bool)

(assert (=> b!5472475 (= e!3387558 tp!1504631)))

(declare-fun b!5472476 () Bool)

(declare-fun e!3387560 () Bool)

(declare-fun tp!1504634 () Bool)

(assert (=> b!5472476 (= e!3387560 tp!1504634)))

(declare-fun b!5472477 () Bool)

(declare-fun res!2332160 () Bool)

(assert (=> b!5472477 (=> res!2332160 e!3387554)))

(assert (=> b!5472477 (= res!2332160 (or (not (= lt!2235482 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun res!2332164 () Bool)

(assert (=> start!572700 (=> (not res!2332164) (not e!3387557))))

(declare-fun validRegex!7076 (Regex!15340) Bool)

(assert (=> start!572700 (= res!2332164 (validRegex!7076 r!7292))))

(assert (=> start!572700 e!3387557))

(assert (=> start!572700 e!3387558))

(declare-fun condSetEmpty!35926 () Bool)

(assert (=> start!572700 (= condSetEmpty!35926 (= z!1189 (as set.empty (Set Context!9448))))))

(assert (=> start!572700 setRes!35926))

(declare-fun e!3387549 () Bool)

(assert (=> start!572700 e!3387549))

(assert (=> start!572700 e!3387563))

(declare-fun b!5472478 () Bool)

(declare-fun e!3387559 () Bool)

(assert (=> b!5472478 (= e!3387547 e!3387559)))

(declare-fun res!2332163 () Bool)

(assert (=> b!5472478 (=> res!2332163 e!3387559)))

(assert (=> b!5472478 (= res!2332163 (not lt!2235485))))

(assert (=> b!5472479 (= e!3387553 e!3387551)))

(declare-fun res!2332159 () Bool)

(assert (=> b!5472479 (=> res!2332159 e!3387551)))

(assert (=> b!5472479 (= res!2332159 (not (= lt!2235472 e!3387564)))))

(declare-fun res!2332180 () Bool)

(assert (=> b!5472479 (=> res!2332180 e!3387564)))

(declare-fun isEmpty!34156 (List!62321) Bool)

(assert (=> b!5472479 (= res!2332180 (isEmpty!34156 s!2326))))

(assert (=> b!5472479 (= (Exists!2519 lambda!291342) (Exists!2519 lambda!291344))))

(declare-fun lt!2235480 () Unit!155130)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1169 (Regex!15340 Regex!15340 List!62321) Unit!155130)

(assert (=> b!5472479 (= lt!2235480 (lemmaExistCutMatchRandMatchRSpecEquivalent!1169 (reg!15669 r!7292) r!7292 s!2326))))

(assert (=> b!5472479 (= (Exists!2519 lambda!291342) (Exists!2519 lambda!291343))))

(declare-fun lt!2235466 () Unit!155130)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!493 (Regex!15340 List!62321) Unit!155130)

(assert (=> b!5472479 (= lt!2235466 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!493 (reg!15669 r!7292) s!2326))))

(assert (=> b!5472479 (= lt!2235471 (Exists!2519 lambda!291342))))

(declare-fun isDefined!12152 (Option!15449) Bool)

(assert (=> b!5472479 (= lt!2235471 (isDefined!12152 lt!2235460))))

(declare-fun findConcatSeparation!1863 (Regex!15340 Regex!15340 List!62321 List!62321 List!62321) Option!15449)

(assert (=> b!5472479 (= lt!2235460 (findConcatSeparation!1863 (reg!15669 r!7292) r!7292 Nil!62197 s!2326 s!2326))))

(declare-fun lt!2235470 () Unit!155130)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1627 (Regex!15340 Regex!15340 List!62321) Unit!155130)

(assert (=> b!5472479 (= lt!2235470 (lemmaFindConcatSeparationEquivalentToExists!1627 (reg!15669 r!7292) r!7292 s!2326))))

(declare-fun b!5472480 () Bool)

(declare-fun tp!1504627 () Bool)

(declare-fun tp!1504629 () Bool)

(assert (=> b!5472480 (= e!3387558 (and tp!1504627 tp!1504629))))

(declare-fun b!5472481 () Bool)

(assert (=> b!5472481 (= e!3387559 e!3387546)))

(declare-fun res!2332174 () Bool)

(assert (=> b!5472481 (=> (not res!2332174) (not e!3387546))))

(assert (=> b!5472481 (= res!2332174 (= (Exists!2519 lambda!291342) (Exists!2519 lambda!291343)))))

(declare-fun setIsEmpty!35926 () Bool)

(assert (=> setIsEmpty!35926 setRes!35926))

(declare-fun b!5472482 () Bool)

(declare-fun res!2332173 () Bool)

(assert (=> b!5472482 (=> res!2332173 e!3387553)))

(declare-fun isEmpty!34157 (List!62320) Bool)

(assert (=> b!5472482 (= res!2332173 (not (isEmpty!34157 (t!375549 zl!343))))))

(declare-fun b!5472483 () Bool)

(declare-fun tp!1504633 () Bool)

(declare-fun tp!1504632 () Bool)

(assert (=> b!5472483 (= e!3387558 (and tp!1504633 tp!1504632))))

(declare-fun b!5472484 () Bool)

(declare-fun res!2332178 () Bool)

(assert (=> b!5472484 (=> (not res!2332178) (not e!3387557))))

(declare-fun toList!9124 ((Set Context!9448)) List!62320)

(assert (=> b!5472484 (= res!2332178 (= (toList!9124 z!1189) zl!343))))

(declare-fun b!5472485 () Bool)

(declare-fun e!3387555 () Bool)

(assert (=> b!5472485 (= e!3387554 e!3387555)))

(declare-fun res!2332170 () Bool)

(assert (=> b!5472485 (=> res!2332170 e!3387555)))

(assert (=> b!5472485 (= res!2332170 (not (= (unfocusZipper!1082 (Cons!62196 lt!2235481 Nil!62196)) lt!2235483)))))

(assert (=> b!5472485 (= lt!2235483 (Concat!24185 (reg!15669 r!7292) r!7292))))

(declare-fun b!5472486 () Bool)

(assert (=> b!5472486 (= e!3387552 (validRegex!7076 (reg!15669 r!7292)))))

(declare-fun b!5472487 () Bool)

(declare-fun tp!1504635 () Bool)

(assert (=> b!5472487 (= e!3387549 (and (inv!81598 (h!68644 zl!343)) e!3387560 tp!1504635))))

(declare-fun b!5472488 () Bool)

(assert (=> b!5472488 (= e!3387555 e!3387550)))

(declare-fun res!2332182 () Bool)

(assert (=> b!5472488 (=> res!2332182 e!3387550)))

(declare-fun lt!2235473 () (Set Context!9448))

(assert (=> b!5472488 (= res!2332182 (not (= lt!2235488 (derivationStepZipper!1535 lt!2235473 (h!68645 s!2326)))))))

(assert (=> b!5472488 (= (flatMap!1043 lt!2235473 lambda!291345) (derivationStepZipperUp!692 lt!2235476 (h!68645 s!2326)))))

(declare-fun lt!2235487 () Unit!155130)

(assert (=> b!5472488 (= lt!2235487 (lemmaFlatMapOnSingletonSet!575 lt!2235473 lt!2235476 lambda!291345))))

(declare-fun lt!2235486 () (Set Context!9448))

(assert (=> b!5472488 (= (flatMap!1043 lt!2235486 lambda!291345) (derivationStepZipperUp!692 lt!2235474 (h!68645 s!2326)))))

(declare-fun lt!2235478 () Unit!155130)

(assert (=> b!5472488 (= lt!2235478 (lemmaFlatMapOnSingletonSet!575 lt!2235486 lt!2235474 lambda!291345))))

(declare-fun lt!2235484 () (Set Context!9448))

(assert (=> b!5472488 (= lt!2235484 (derivationStepZipperUp!692 lt!2235476 (h!68645 s!2326)))))

(declare-fun lt!2235464 () (Set Context!9448))

(assert (=> b!5472488 (= lt!2235464 (derivationStepZipperUp!692 lt!2235474 (h!68645 s!2326)))))

(assert (=> b!5472488 (= lt!2235473 (set.insert lt!2235476 (as set.empty (Set Context!9448))))))

(assert (=> b!5472488 (= lt!2235486 (set.insert lt!2235474 (as set.empty (Set Context!9448))))))

(assert (=> b!5472488 (= lt!2235474 (Context!9449 (Cons!62195 (reg!15669 r!7292) Nil!62195)))))

(assert (= (and start!572700 res!2332164) b!5472484))

(assert (= (and b!5472484 res!2332178) b!5472470))

(assert (= (and b!5472470 res!2332179) b!5472468))

(assert (= (and b!5472468 (not res!2332177)) b!5472482))

(assert (= (and b!5472482 (not res!2332173)) b!5472474))

(assert (= (and b!5472474 (not res!2332161)) b!5472455))

(assert (= (and b!5472455 (not res!2332181)) b!5472462))

(assert (= (and b!5472462 (not res!2332166)) b!5472460))

(assert (= (and b!5472460 (not res!2332165)) b!5472479))

(assert (= (and b!5472479 (not res!2332180)) b!5472473))

(assert (= (and b!5472479 (not res!2332159)) b!5472461))

(assert (= (and b!5472461 (not res!2332183)) b!5472465))

(assert (= (and b!5472465 (not res!2332176)) b!5472467))

(assert (= (and b!5472467 (not res!2332184)) b!5472459))

(assert (= (and b!5472459 (not res!2332171)) b!5472458))

(assert (= (and b!5472458 (not res!2332162)) b!5472477))

(assert (= (and b!5472477 (not res!2332160)) b!5472485))

(assert (= (and b!5472485 (not res!2332170)) b!5472488))

(assert (= (and b!5472488 (not res!2332182)) b!5472472))

(assert (= (and b!5472472 (not res!2332172)) b!5472456))

(assert (= (and b!5472456 (not res!2332169)) b!5472471))

(assert (= (and b!5472471 res!2332168) b!5472478))

(assert (= (and b!5472478 (not res!2332163)) b!5472481))

(assert (= (and b!5472481 res!2332174) b!5472466))

(assert (= (and b!5472471 (not res!2332167)) b!5472464))

(assert (= (and b!5472464 (not res!2332175)) b!5472486))

(assert (= (and start!572700 (is-ElementMatch!15340 r!7292)) b!5472469))

(assert (= (and start!572700 (is-Concat!24185 r!7292)) b!5472480))

(assert (= (and start!572700 (is-Star!15340 r!7292)) b!5472475))

(assert (= (and start!572700 (is-Union!15340 r!7292)) b!5472483))

(assert (= (and start!572700 condSetEmpty!35926) setIsEmpty!35926))

(assert (= (and start!572700 (not condSetEmpty!35926)) setNonEmpty!35926))

(assert (= setNonEmpty!35926 b!5472463))

(assert (= b!5472487 b!5472476))

(assert (= (and start!572700 (is-Cons!62196 zl!343)) b!5472487))

(assert (= (and start!572700 (is-Cons!62197 s!2326)) b!5472457))

(declare-fun m!6490032 () Bool)

(assert (=> b!5472485 m!6490032))

(declare-fun m!6490034 () Bool)

(assert (=> b!5472456 m!6490034))

(declare-fun m!6490036 () Bool)

(assert (=> b!5472468 m!6490036))

(declare-fun m!6490038 () Bool)

(assert (=> b!5472468 m!6490038))

(declare-fun m!6490040 () Bool)

(assert (=> b!5472468 m!6490040))

(declare-fun m!6490042 () Bool)

(assert (=> setNonEmpty!35926 m!6490042))

(declare-fun m!6490044 () Bool)

(assert (=> b!5472486 m!6490044))

(declare-fun m!6490046 () Bool)

(assert (=> b!5472467 m!6490046))

(declare-fun m!6490048 () Bool)

(assert (=> b!5472467 m!6490048))

(declare-fun m!6490050 () Bool)

(assert (=> b!5472467 m!6490050))

(declare-fun m!6490052 () Bool)

(assert (=> b!5472479 m!6490052))

(assert (=> b!5472479 m!6490052))

(declare-fun m!6490054 () Bool)

(assert (=> b!5472479 m!6490054))

(declare-fun m!6490056 () Bool)

(assert (=> b!5472479 m!6490056))

(declare-fun m!6490058 () Bool)

(assert (=> b!5472479 m!6490058))

(declare-fun m!6490060 () Bool)

(assert (=> b!5472479 m!6490060))

(declare-fun m!6490062 () Bool)

(assert (=> b!5472479 m!6490062))

(declare-fun m!6490064 () Bool)

(assert (=> b!5472479 m!6490064))

(declare-fun m!6490066 () Bool)

(assert (=> b!5472479 m!6490066))

(assert (=> b!5472479 m!6490052))

(declare-fun m!6490068 () Bool)

(assert (=> b!5472479 m!6490068))

(assert (=> b!5472481 m!6490052))

(assert (=> b!5472481 m!6490058))

(declare-fun m!6490070 () Bool)

(assert (=> b!5472487 m!6490070))

(declare-fun m!6490072 () Bool)

(assert (=> b!5472474 m!6490072))

(declare-fun m!6490074 () Bool)

(assert (=> start!572700 m!6490074))

(declare-fun m!6490076 () Bool)

(assert (=> b!5472462 m!6490076))

(assert (=> b!5472462 m!6490076))

(declare-fun m!6490078 () Bool)

(assert (=> b!5472462 m!6490078))

(declare-fun m!6490080 () Bool)

(assert (=> b!5472471 m!6490080))

(declare-fun m!6490082 () Bool)

(assert (=> b!5472471 m!6490082))

(declare-fun m!6490084 () Bool)

(assert (=> b!5472471 m!6490084))

(declare-fun m!6490086 () Bool)

(assert (=> b!5472465 m!6490086))

(declare-fun m!6490088 () Bool)

(assert (=> b!5472465 m!6490088))

(declare-fun m!6490090 () Bool)

(assert (=> b!5472465 m!6490090))

(declare-fun m!6490092 () Bool)

(assert (=> b!5472458 m!6490092))

(declare-fun m!6490094 () Bool)

(assert (=> b!5472458 m!6490094))

(assert (=> b!5472458 m!6490094))

(declare-fun m!6490096 () Bool)

(assert (=> b!5472458 m!6490096))

(declare-fun m!6490098 () Bool)

(assert (=> b!5472488 m!6490098))

(declare-fun m!6490100 () Bool)

(assert (=> b!5472488 m!6490100))

(declare-fun m!6490102 () Bool)

(assert (=> b!5472488 m!6490102))

(declare-fun m!6490104 () Bool)

(assert (=> b!5472488 m!6490104))

(declare-fun m!6490106 () Bool)

(assert (=> b!5472488 m!6490106))

(declare-fun m!6490108 () Bool)

(assert (=> b!5472488 m!6490108))

(declare-fun m!6490110 () Bool)

(assert (=> b!5472488 m!6490110))

(declare-fun m!6490112 () Bool)

(assert (=> b!5472488 m!6490112))

(declare-fun m!6490114 () Bool)

(assert (=> b!5472488 m!6490114))

(assert (=> b!5472466 m!6490052))

(declare-fun m!6490116 () Bool)

(assert (=> b!5472459 m!6490116))

(declare-fun m!6490118 () Bool)

(assert (=> b!5472459 m!6490118))

(declare-fun m!6490120 () Bool)

(assert (=> b!5472459 m!6490120))

(declare-fun m!6490122 () Bool)

(assert (=> b!5472459 m!6490122))

(declare-fun m!6490124 () Bool)

(assert (=> b!5472459 m!6490124))

(declare-fun m!6490126 () Bool)

(assert (=> b!5472484 m!6490126))

(declare-fun m!6490128 () Bool)

(assert (=> b!5472472 m!6490128))

(declare-fun m!6490130 () Bool)

(assert (=> b!5472470 m!6490130))

(declare-fun m!6490132 () Bool)

(assert (=> b!5472482 m!6490132))

(declare-fun m!6490134 () Bool)

(assert (=> b!5472464 m!6490134))

(declare-fun m!6490136 () Bool)

(assert (=> b!5472464 m!6490136))

(push 1)

(assert (not b!5472487))

(assert (not b!5472466))

(assert (not b!5472479))

(assert (not b!5472472))

(assert (not b!5472486))

(assert (not b!5472482))

(assert (not b!5472457))

(assert tp_is_empty!39933)

(assert (not b!5472476))

(assert (not b!5472463))

(assert (not b!5472470))

(assert (not setNonEmpty!35926))

(assert (not b!5472481))

(assert (not b!5472484))

(assert (not b!5472467))

(assert (not b!5472464))

(assert (not b!5472483))

(assert (not start!572700))

(assert (not b!5472458))

(assert (not b!5472480))

(assert (not b!5472462))

(assert (not b!5472475))

(assert (not b!5472456))

(assert (not b!5472465))

(assert (not b!5472459))

(assert (not b!5472485))

(assert (not b!5472468))

(assert (not b!5472488))

(assert (not b!5472474))

(assert (not b!5472471))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1739498 () Bool)

(assert (=> d!1739498 (= (isEmpty!34157 (t!375549 zl!343)) (is-Nil!62196 (t!375549 zl!343)))))

(assert (=> b!5472482 d!1739498))

(declare-fun d!1739500 () Bool)

(declare-fun lt!2235578 () Regex!15340)

(assert (=> d!1739500 (validRegex!7076 lt!2235578)))

(assert (=> d!1739500 (= lt!2235578 (generalisedUnion!1269 (unfocusZipperList!782 (Cons!62196 lt!2235474 Nil!62196))))))

(assert (=> d!1739500 (= (unfocusZipper!1082 (Cons!62196 lt!2235474 Nil!62196)) lt!2235578)))

(declare-fun bs!1265187 () Bool)

(assert (= bs!1265187 d!1739500))

(declare-fun m!6490244 () Bool)

(assert (=> bs!1265187 m!6490244))

(declare-fun m!6490246 () Bool)

(assert (=> bs!1265187 m!6490246))

(assert (=> bs!1265187 m!6490246))

(declare-fun m!6490248 () Bool)

(assert (=> bs!1265187 m!6490248))

(assert (=> b!5472472 d!1739500))

(declare-fun b!5472659 () Bool)

(declare-fun e!3387657 () Bool)

(declare-fun lt!2235581 () Regex!15340)

(declare-fun isEmptyLang!1044 (Regex!15340) Bool)

(assert (=> b!5472659 (= e!3387657 (isEmptyLang!1044 lt!2235581))))

(declare-fun b!5472660 () Bool)

(declare-fun e!3387655 () Bool)

(assert (=> b!5472660 (= e!3387655 e!3387657)))

(declare-fun c!956144 () Bool)

(declare-fun isEmpty!34160 (List!62319) Bool)

(assert (=> b!5472660 (= c!956144 (isEmpty!34160 (unfocusZipperList!782 zl!343)))))

(declare-fun b!5472661 () Bool)

(declare-fun e!3387656 () Bool)

(assert (=> b!5472661 (= e!3387656 (isEmpty!34160 (t!375548 (unfocusZipperList!782 zl!343))))))

(declare-fun b!5472662 () Bool)

(declare-fun e!3387654 () Regex!15340)

(assert (=> b!5472662 (= e!3387654 EmptyLang!15340)))

(declare-fun b!5472663 () Bool)

(declare-fun e!3387658 () Regex!15340)

(assert (=> b!5472663 (= e!3387658 e!3387654)))

(declare-fun c!956146 () Bool)

(assert (=> b!5472663 (= c!956146 (is-Cons!62195 (unfocusZipperList!782 zl!343)))))

(declare-fun b!5472664 () Bool)

(declare-fun e!3387653 () Bool)

(declare-fun head!11723 (List!62319) Regex!15340)

(assert (=> b!5472664 (= e!3387653 (= lt!2235581 (head!11723 (unfocusZipperList!782 zl!343))))))

(declare-fun b!5472665 () Bool)

(assert (=> b!5472665 (= e!3387654 (Union!15340 (h!68643 (unfocusZipperList!782 zl!343)) (generalisedUnion!1269 (t!375548 (unfocusZipperList!782 zl!343)))))))

(declare-fun d!1739502 () Bool)

(assert (=> d!1739502 e!3387655))

(declare-fun res!2332304 () Bool)

(assert (=> d!1739502 (=> (not res!2332304) (not e!3387655))))

(assert (=> d!1739502 (= res!2332304 (validRegex!7076 lt!2235581))))

(assert (=> d!1739502 (= lt!2235581 e!3387658)))

(declare-fun c!956145 () Bool)

(assert (=> d!1739502 (= c!956145 e!3387656)))

(declare-fun res!2332303 () Bool)

(assert (=> d!1739502 (=> (not res!2332303) (not e!3387656))))

(assert (=> d!1739502 (= res!2332303 (is-Cons!62195 (unfocusZipperList!782 zl!343)))))

(declare-fun lambda!291376 () Int)

(declare-fun forall!14609 (List!62319 Int) Bool)

(assert (=> d!1739502 (forall!14609 (unfocusZipperList!782 zl!343) lambda!291376)))

(assert (=> d!1739502 (= (generalisedUnion!1269 (unfocusZipperList!782 zl!343)) lt!2235581)))

(declare-fun b!5472666 () Bool)

(assert (=> b!5472666 (= e!3387657 e!3387653)))

(declare-fun c!956147 () Bool)

(declare-fun tail!10820 (List!62319) List!62319)

(assert (=> b!5472666 (= c!956147 (isEmpty!34160 (tail!10820 (unfocusZipperList!782 zl!343))))))

(declare-fun b!5472667 () Bool)

(assert (=> b!5472667 (= e!3387658 (h!68643 (unfocusZipperList!782 zl!343)))))

(declare-fun b!5472668 () Bool)

(declare-fun isUnion!476 (Regex!15340) Bool)

(assert (=> b!5472668 (= e!3387653 (isUnion!476 lt!2235581))))

(assert (= (and d!1739502 res!2332303) b!5472661))

(assert (= (and d!1739502 c!956145) b!5472667))

(assert (= (and d!1739502 (not c!956145)) b!5472663))

(assert (= (and b!5472663 c!956146) b!5472665))

(assert (= (and b!5472663 (not c!956146)) b!5472662))

(assert (= (and d!1739502 res!2332304) b!5472660))

(assert (= (and b!5472660 c!956144) b!5472659))

(assert (= (and b!5472660 (not c!956144)) b!5472666))

(assert (= (and b!5472666 c!956147) b!5472664))

(assert (= (and b!5472666 (not c!956147)) b!5472668))

(assert (=> b!5472660 m!6490076))

(declare-fun m!6490250 () Bool)

(assert (=> b!5472660 m!6490250))

(assert (=> b!5472664 m!6490076))

(declare-fun m!6490252 () Bool)

(assert (=> b!5472664 m!6490252))

(declare-fun m!6490254 () Bool)

(assert (=> d!1739502 m!6490254))

(assert (=> d!1739502 m!6490076))

(declare-fun m!6490256 () Bool)

(assert (=> d!1739502 m!6490256))

(assert (=> b!5472666 m!6490076))

(declare-fun m!6490258 () Bool)

(assert (=> b!5472666 m!6490258))

(assert (=> b!5472666 m!6490258))

(declare-fun m!6490260 () Bool)

(assert (=> b!5472666 m!6490260))

(declare-fun m!6490262 () Bool)

(assert (=> b!5472659 m!6490262))

(declare-fun m!6490264 () Bool)

(assert (=> b!5472665 m!6490264))

(declare-fun m!6490266 () Bool)

(assert (=> b!5472661 m!6490266))

(declare-fun m!6490268 () Bool)

(assert (=> b!5472668 m!6490268))

(assert (=> b!5472462 d!1739502))

(declare-fun bs!1265188 () Bool)

(declare-fun d!1739504 () Bool)

(assert (= bs!1265188 (and d!1739504 d!1739502)))

(declare-fun lambda!291379 () Int)

(assert (=> bs!1265188 (= lambda!291379 lambda!291376)))

(declare-fun lt!2235584 () List!62319)

(assert (=> d!1739504 (forall!14609 lt!2235584 lambda!291379)))

(declare-fun e!3387661 () List!62319)

(assert (=> d!1739504 (= lt!2235584 e!3387661)))

(declare-fun c!956150 () Bool)

(assert (=> d!1739504 (= c!956150 (is-Cons!62196 zl!343))))

(assert (=> d!1739504 (= (unfocusZipperList!782 zl!343) lt!2235584)))

(declare-fun b!5472673 () Bool)

(assert (=> b!5472673 (= e!3387661 (Cons!62195 (generalisedConcat!1009 (exprs!5224 (h!68644 zl!343))) (unfocusZipperList!782 (t!375549 zl!343))))))

(declare-fun b!5472674 () Bool)

(assert (=> b!5472674 (= e!3387661 Nil!62195)))

(assert (= (and d!1739504 c!956150) b!5472673))

(assert (= (and d!1739504 (not c!956150)) b!5472674))

(declare-fun m!6490270 () Bool)

(assert (=> d!1739504 m!6490270))

(assert (=> b!5472673 m!6490072))

(declare-fun m!6490272 () Bool)

(assert (=> b!5472673 m!6490272))

(assert (=> b!5472462 d!1739504))

(declare-fun bs!1265189 () Bool)

(declare-fun b!5472715 () Bool)

(assert (= bs!1265189 (and b!5472715 b!5472479)))

(declare-fun lambda!291384 () Int)

(assert (=> bs!1265189 (not (= lambda!291384 lambda!291342))))

(assert (=> bs!1265189 (= (and (= (reg!15669 lt!2235483) (reg!15669 r!7292)) (= lt!2235483 r!7292)) (= lambda!291384 lambda!291343))))

(assert (=> bs!1265189 (not (= lambda!291384 lambda!291344))))

(assert (=> b!5472715 true))

(assert (=> b!5472715 true))

(declare-fun bs!1265190 () Bool)

(declare-fun b!5472710 () Bool)

(assert (= bs!1265190 (and b!5472710 b!5472479)))

(declare-fun lambda!291385 () Int)

(assert (=> bs!1265190 (not (= lambda!291385 lambda!291342))))

(assert (=> bs!1265190 (not (= lambda!291385 lambda!291343))))

(assert (=> bs!1265190 (= (and (= (regOne!31192 lt!2235483) (reg!15669 r!7292)) (= (regTwo!31192 lt!2235483) r!7292)) (= lambda!291385 lambda!291344))))

(declare-fun bs!1265191 () Bool)

(assert (= bs!1265191 (and b!5472710 b!5472715)))

(assert (=> bs!1265191 (not (= lambda!291385 lambda!291384))))

(assert (=> b!5472710 true))

(assert (=> b!5472710 true))

(declare-fun b!5472707 () Bool)

(declare-fun e!3387682 () Bool)

(declare-fun e!3387685 () Bool)

(assert (=> b!5472707 (= e!3387682 e!3387685)))

(declare-fun res!2332322 () Bool)

(assert (=> b!5472707 (= res!2332322 (not (is-EmptyLang!15340 lt!2235483)))))

(assert (=> b!5472707 (=> (not res!2332322) (not e!3387685))))

(declare-fun b!5472708 () Bool)

(declare-fun c!956161 () Bool)

(assert (=> b!5472708 (= c!956161 (is-Union!15340 lt!2235483))))

(declare-fun e!3387683 () Bool)

(declare-fun e!3387680 () Bool)

(assert (=> b!5472708 (= e!3387683 e!3387680)))

(declare-fun b!5472709 () Bool)

(declare-fun c!956162 () Bool)

(assert (=> b!5472709 (= c!956162 (is-ElementMatch!15340 lt!2235483))))

(assert (=> b!5472709 (= e!3387685 e!3387683)))

(declare-fun e!3387681 () Bool)

(declare-fun call!403805 () Bool)

(assert (=> b!5472710 (= e!3387681 call!403805)))

(declare-fun b!5472711 () Bool)

(assert (=> b!5472711 (= e!3387680 e!3387681)))

(declare-fun c!956160 () Bool)

(assert (=> b!5472711 (= c!956160 (is-Star!15340 lt!2235483))))

(declare-fun d!1739506 () Bool)

(declare-fun c!956159 () Bool)

(assert (=> d!1739506 (= c!956159 (is-EmptyExpr!15340 lt!2235483))))

(assert (=> d!1739506 (= (matchRSpec!2443 lt!2235483 s!2326) e!3387682)))

(declare-fun b!5472712 () Bool)

(declare-fun res!2332321 () Bool)

(declare-fun e!3387686 () Bool)

(assert (=> b!5472712 (=> res!2332321 e!3387686)))

(declare-fun call!403804 () Bool)

(assert (=> b!5472712 (= res!2332321 call!403804)))

(assert (=> b!5472712 (= e!3387681 e!3387686)))

(declare-fun b!5472713 () Bool)

(assert (=> b!5472713 (= e!3387683 (= s!2326 (Cons!62197 (c!956125 lt!2235483) Nil!62197)))))

(declare-fun bm!403799 () Bool)

(assert (=> bm!403799 (= call!403804 (isEmpty!34156 s!2326))))

(declare-fun b!5472714 () Bool)

(declare-fun e!3387684 () Bool)

(assert (=> b!5472714 (= e!3387684 (matchRSpec!2443 (regTwo!31193 lt!2235483) s!2326))))

(assert (=> b!5472715 (= e!3387686 call!403805)))

(declare-fun bm!403800 () Bool)

(assert (=> bm!403800 (= call!403805 (Exists!2519 (ite c!956160 lambda!291384 lambda!291385)))))

(declare-fun b!5472716 () Bool)

(assert (=> b!5472716 (= e!3387680 e!3387684)))

(declare-fun res!2332323 () Bool)

(assert (=> b!5472716 (= res!2332323 (matchRSpec!2443 (regOne!31193 lt!2235483) s!2326))))

(assert (=> b!5472716 (=> res!2332323 e!3387684)))

(declare-fun b!5472717 () Bool)

(assert (=> b!5472717 (= e!3387682 call!403804)))

(assert (= (and d!1739506 c!956159) b!5472717))

(assert (= (and d!1739506 (not c!956159)) b!5472707))

(assert (= (and b!5472707 res!2332322) b!5472709))

(assert (= (and b!5472709 c!956162) b!5472713))

(assert (= (and b!5472709 (not c!956162)) b!5472708))

(assert (= (and b!5472708 c!956161) b!5472716))

(assert (= (and b!5472708 (not c!956161)) b!5472711))

(assert (= (and b!5472716 (not res!2332323)) b!5472714))

(assert (= (and b!5472711 c!956160) b!5472712))

(assert (= (and b!5472711 (not c!956160)) b!5472710))

(assert (= (and b!5472712 (not res!2332321)) b!5472715))

(assert (= (or b!5472715 b!5472710) bm!403800))

(assert (= (or b!5472717 b!5472712) bm!403799))

(assert (=> bm!403799 m!6490054))

(declare-fun m!6490274 () Bool)

(assert (=> b!5472714 m!6490274))

(declare-fun m!6490276 () Bool)

(assert (=> bm!403800 m!6490276))

(declare-fun m!6490278 () Bool)

(assert (=> b!5472716 m!6490278))

(assert (=> b!5472471 d!1739506))

(declare-fun b!5472768 () Bool)

(declare-fun res!2332348 () Bool)

(declare-fun e!3387718 () Bool)

(assert (=> b!5472768 (=> res!2332348 e!3387718)))

(assert (=> b!5472768 (= res!2332348 (not (is-ElementMatch!15340 lt!2235483)))))

(declare-fun e!3387717 () Bool)

(assert (=> b!5472768 (= e!3387717 e!3387718)))

(declare-fun b!5472769 () Bool)

(declare-fun e!3387720 () Bool)

(assert (=> b!5472769 (= e!3387720 e!3387717)))

(declare-fun c!956178 () Bool)

(assert (=> b!5472769 (= c!956178 (is-EmptyLang!15340 lt!2235483))))

(declare-fun b!5472770 () Bool)

(declare-fun res!2332353 () Bool)

(declare-fun e!3387719 () Bool)

(assert (=> b!5472770 (=> (not res!2332353) (not e!3387719))))

(declare-fun call!403808 () Bool)

(assert (=> b!5472770 (= res!2332353 (not call!403808))))

(declare-fun b!5472771 () Bool)

(declare-fun e!3387721 () Bool)

(declare-fun derivativeStep!4324 (Regex!15340 C!30950) Regex!15340)

(declare-fun head!11724 (List!62321) C!30950)

(declare-fun tail!10821 (List!62321) List!62321)

(assert (=> b!5472771 (= e!3387721 (matchR!7525 (derivativeStep!4324 lt!2235483 (head!11724 s!2326)) (tail!10821 s!2326)))))

(declare-fun b!5472772 () Bool)

(declare-fun lt!2235587 () Bool)

(assert (=> b!5472772 (= e!3387717 (not lt!2235587))))

(declare-fun b!5472773 () Bool)

(declare-fun res!2332352 () Bool)

(declare-fun e!3387715 () Bool)

(assert (=> b!5472773 (=> res!2332352 e!3387715)))

(assert (=> b!5472773 (= res!2332352 (not (isEmpty!34156 (tail!10821 s!2326))))))

(declare-fun d!1739510 () Bool)

(assert (=> d!1739510 e!3387720))

(declare-fun c!956177 () Bool)

(assert (=> d!1739510 (= c!956177 (is-EmptyExpr!15340 lt!2235483))))

(assert (=> d!1739510 (= lt!2235587 e!3387721)))

(declare-fun c!956179 () Bool)

(assert (=> d!1739510 (= c!956179 (isEmpty!34156 s!2326))))

(assert (=> d!1739510 (validRegex!7076 lt!2235483)))

(assert (=> d!1739510 (= (matchR!7525 lt!2235483 s!2326) lt!2235587)))

(declare-fun b!5472774 () Bool)

(declare-fun nullable!5479 (Regex!15340) Bool)

(assert (=> b!5472774 (= e!3387721 (nullable!5479 lt!2235483))))

(declare-fun b!5472775 () Bool)

(assert (=> b!5472775 (= e!3387720 (= lt!2235587 call!403808))))

(declare-fun b!5472776 () Bool)

(declare-fun e!3387716 () Bool)

(assert (=> b!5472776 (= e!3387718 e!3387716)))

(declare-fun res!2332347 () Bool)

(assert (=> b!5472776 (=> (not res!2332347) (not e!3387716))))

(assert (=> b!5472776 (= res!2332347 (not lt!2235587))))

(declare-fun b!5472777 () Bool)

(assert (=> b!5472777 (= e!3387715 (not (= (head!11724 s!2326) (c!956125 lt!2235483))))))

(declare-fun b!5472778 () Bool)

(declare-fun res!2332351 () Bool)

(assert (=> b!5472778 (=> (not res!2332351) (not e!3387719))))

(assert (=> b!5472778 (= res!2332351 (isEmpty!34156 (tail!10821 s!2326)))))

(declare-fun b!5472779 () Bool)

(assert (=> b!5472779 (= e!3387719 (= (head!11724 s!2326) (c!956125 lt!2235483)))))

(declare-fun b!5472780 () Bool)

(declare-fun res!2332346 () Bool)

(assert (=> b!5472780 (=> res!2332346 e!3387718)))

(assert (=> b!5472780 (= res!2332346 e!3387719)))

(declare-fun res!2332350 () Bool)

(assert (=> b!5472780 (=> (not res!2332350) (not e!3387719))))

(assert (=> b!5472780 (= res!2332350 lt!2235587)))

(declare-fun bm!403803 () Bool)

(assert (=> bm!403803 (= call!403808 (isEmpty!34156 s!2326))))

(declare-fun b!5472781 () Bool)

(assert (=> b!5472781 (= e!3387716 e!3387715)))

(declare-fun res!2332349 () Bool)

(assert (=> b!5472781 (=> res!2332349 e!3387715)))

(assert (=> b!5472781 (= res!2332349 call!403808)))

(assert (= (and d!1739510 c!956179) b!5472774))

(assert (= (and d!1739510 (not c!956179)) b!5472771))

(assert (= (and d!1739510 c!956177) b!5472775))

(assert (= (and d!1739510 (not c!956177)) b!5472769))

(assert (= (and b!5472769 c!956178) b!5472772))

(assert (= (and b!5472769 (not c!956178)) b!5472768))

(assert (= (and b!5472768 (not res!2332348)) b!5472780))

(assert (= (and b!5472780 res!2332350) b!5472770))

(assert (= (and b!5472770 res!2332353) b!5472778))

(assert (= (and b!5472778 res!2332351) b!5472779))

(assert (= (and b!5472780 (not res!2332346)) b!5472776))

(assert (= (and b!5472776 res!2332347) b!5472781))

(assert (= (and b!5472781 (not res!2332349)) b!5472773))

(assert (= (and b!5472773 (not res!2332352)) b!5472777))

(assert (= (or b!5472775 b!5472770 b!5472781) bm!403803))

(declare-fun m!6490280 () Bool)

(assert (=> b!5472771 m!6490280))

(assert (=> b!5472771 m!6490280))

(declare-fun m!6490282 () Bool)

(assert (=> b!5472771 m!6490282))

(declare-fun m!6490284 () Bool)

(assert (=> b!5472771 m!6490284))

(assert (=> b!5472771 m!6490282))

(assert (=> b!5472771 m!6490284))

(declare-fun m!6490286 () Bool)

(assert (=> b!5472771 m!6490286))

(assert (=> b!5472778 m!6490284))

(assert (=> b!5472778 m!6490284))

(declare-fun m!6490288 () Bool)

(assert (=> b!5472778 m!6490288))

(assert (=> bm!403803 m!6490054))

(assert (=> b!5472777 m!6490280))

(assert (=> d!1739510 m!6490054))

(declare-fun m!6490290 () Bool)

(assert (=> d!1739510 m!6490290))

(assert (=> b!5472773 m!6490284))

(assert (=> b!5472773 m!6490284))

(assert (=> b!5472773 m!6490288))

(declare-fun m!6490292 () Bool)

(assert (=> b!5472774 m!6490292))

(assert (=> b!5472779 m!6490280))

(assert (=> b!5472471 d!1739510))

(declare-fun d!1739512 () Bool)

(assert (=> d!1739512 (= (matchR!7525 lt!2235483 s!2326) (matchRSpec!2443 lt!2235483 s!2326))))

(declare-fun lt!2235590 () Unit!155130)

(declare-fun choose!41627 (Regex!15340 List!62321) Unit!155130)

(assert (=> d!1739512 (= lt!2235590 (choose!41627 lt!2235483 s!2326))))

(assert (=> d!1739512 (validRegex!7076 lt!2235483)))

(assert (=> d!1739512 (= (mainMatchTheorem!2443 lt!2235483 s!2326) lt!2235590)))

(declare-fun bs!1265192 () Bool)

(assert (= bs!1265192 d!1739512))

(assert (=> bs!1265192 m!6490082))

(assert (=> bs!1265192 m!6490080))

(declare-fun m!6490294 () Bool)

(assert (=> bs!1265192 m!6490294))

(assert (=> bs!1265192 m!6490290))

(assert (=> b!5472471 d!1739512))

(declare-fun d!1739514 () Bool)

(declare-fun choose!41628 (Int) Bool)

(assert (=> d!1739514 (= (Exists!2519 lambda!291342) (choose!41628 lambda!291342))))

(declare-fun bs!1265193 () Bool)

(assert (= bs!1265193 d!1739514))

(declare-fun m!6490296 () Bool)

(assert (=> bs!1265193 m!6490296))

(assert (=> b!5472481 d!1739514))

(declare-fun d!1739516 () Bool)

(assert (=> d!1739516 (= (Exists!2519 lambda!291343) (choose!41628 lambda!291343))))

(declare-fun bs!1265194 () Bool)

(assert (= bs!1265194 d!1739516))

(declare-fun m!6490298 () Bool)

(assert (=> bs!1265194 m!6490298))

(assert (=> b!5472481 d!1739516))

(declare-fun bs!1265195 () Bool)

(declare-fun d!1739518 () Bool)

(assert (= bs!1265195 (and d!1739518 d!1739502)))

(declare-fun lambda!291390 () Int)

(assert (=> bs!1265195 (= lambda!291390 lambda!291376)))

(declare-fun bs!1265196 () Bool)

(assert (= bs!1265196 (and d!1739518 d!1739504)))

(assert (=> bs!1265196 (= lambda!291390 lambda!291379)))

(assert (=> d!1739518 (= (inv!81598 setElem!35926) (forall!14609 (exprs!5224 setElem!35926) lambda!291390))))

(declare-fun bs!1265197 () Bool)

(assert (= bs!1265197 d!1739518))

(declare-fun m!6490300 () Bool)

(assert (=> bs!1265197 m!6490300))

(assert (=> setNonEmpty!35926 d!1739518))

(declare-fun b!5472814 () Bool)

(declare-fun e!3387743 () (Set Context!9448))

(declare-fun call!403828 () (Set Context!9448))

(declare-fun call!403825 () (Set Context!9448))

(assert (=> b!5472814 (= e!3387743 (set.union call!403828 call!403825))))

(declare-fun b!5472815 () Bool)

(declare-fun e!3387741 () (Set Context!9448))

(assert (=> b!5472815 (= e!3387741 (set.insert (Context!9449 Nil!62195) (as set.empty (Set Context!9448))))))

(declare-fun c!956192 () Bool)

(declare-fun c!956193 () Bool)

(declare-fun bm!403820 () Bool)

(declare-fun call!403827 () List!62319)

(declare-fun c!956191 () Bool)

(assert (=> bm!403820 (= call!403828 (derivationStepZipperDown!766 (ite c!956191 (regOne!31193 r!7292) (ite c!956192 (regTwo!31192 r!7292) (ite c!956193 (regOne!31192 r!7292) (reg!15669 r!7292)))) (ite (or c!956191 c!956192) (Context!9449 Nil!62195) (Context!9449 call!403827)) (h!68645 s!2326)))))

(declare-fun b!5472816 () Bool)

(declare-fun e!3387739 () (Set Context!9448))

(declare-fun call!403830 () (Set Context!9448))

(assert (=> b!5472816 (= e!3387739 (set.union call!403825 call!403830))))

(declare-fun b!5472817 () Bool)

(declare-fun e!3387738 () Bool)

(assert (=> b!5472817 (= c!956192 e!3387738)))

(declare-fun res!2332366 () Bool)

(assert (=> b!5472817 (=> (not res!2332366) (not e!3387738))))

(assert (=> b!5472817 (= res!2332366 (is-Concat!24185 r!7292))))

(assert (=> b!5472817 (= e!3387743 e!3387739)))

(declare-fun b!5472818 () Bool)

(declare-fun e!3387740 () (Set Context!9448))

(assert (=> b!5472818 (= e!3387739 e!3387740)))

(assert (=> b!5472818 (= c!956193 (is-Concat!24185 r!7292))))

(declare-fun bm!403821 () Bool)

(declare-fun call!403826 () List!62319)

(declare-fun $colon$colon!1549 (List!62319 Regex!15340) List!62319)

(assert (=> bm!403821 (= call!403826 ($colon$colon!1549 (exprs!5224 (Context!9449 Nil!62195)) (ite (or c!956192 c!956193) (regTwo!31192 r!7292) r!7292)))))

(declare-fun bm!403822 () Bool)

(assert (=> bm!403822 (= call!403827 call!403826)))

(declare-fun b!5472819 () Bool)

(declare-fun e!3387742 () (Set Context!9448))

(declare-fun call!403829 () (Set Context!9448))

(assert (=> b!5472819 (= e!3387742 call!403829)))

(declare-fun b!5472820 () Bool)

(assert (=> b!5472820 (= e!3387742 (as set.empty (Set Context!9448)))))

(declare-fun d!1739520 () Bool)

(declare-fun c!956194 () Bool)

(assert (=> d!1739520 (= c!956194 (and (is-ElementMatch!15340 r!7292) (= (c!956125 r!7292) (h!68645 s!2326))))))

(assert (=> d!1739520 (= (derivationStepZipperDown!766 r!7292 (Context!9449 Nil!62195) (h!68645 s!2326)) e!3387741)))

(declare-fun b!5472821 () Bool)

(assert (=> b!5472821 (= e!3387740 call!403829)))

(declare-fun b!5472822 () Bool)

(assert (=> b!5472822 (= e!3387741 e!3387743)))

(assert (=> b!5472822 (= c!956191 (is-Union!15340 r!7292))))

(declare-fun bm!403823 () Bool)

(assert (=> bm!403823 (= call!403829 call!403830)))

(declare-fun b!5472823 () Bool)

(declare-fun c!956190 () Bool)

(assert (=> b!5472823 (= c!956190 (is-Star!15340 r!7292))))

(assert (=> b!5472823 (= e!3387740 e!3387742)))

(declare-fun bm!403824 () Bool)

(assert (=> bm!403824 (= call!403825 (derivationStepZipperDown!766 (ite c!956191 (regTwo!31193 r!7292) (regOne!31192 r!7292)) (ite c!956191 (Context!9449 Nil!62195) (Context!9449 call!403826)) (h!68645 s!2326)))))

(declare-fun b!5472824 () Bool)

(assert (=> b!5472824 (= e!3387738 (nullable!5479 (regOne!31192 r!7292)))))

(declare-fun bm!403825 () Bool)

(assert (=> bm!403825 (= call!403830 call!403828)))

(assert (= (and d!1739520 c!956194) b!5472815))

(assert (= (and d!1739520 (not c!956194)) b!5472822))

(assert (= (and b!5472822 c!956191) b!5472814))

(assert (= (and b!5472822 (not c!956191)) b!5472817))

(assert (= (and b!5472817 res!2332366) b!5472824))

(assert (= (and b!5472817 c!956192) b!5472816))

(assert (= (and b!5472817 (not c!956192)) b!5472818))

(assert (= (and b!5472818 c!956193) b!5472821))

(assert (= (and b!5472818 (not c!956193)) b!5472823))

(assert (= (and b!5472823 c!956190) b!5472819))

(assert (= (and b!5472823 (not c!956190)) b!5472820))

(assert (= (or b!5472821 b!5472819) bm!403822))

(assert (= (or b!5472821 b!5472819) bm!403823))

(assert (= (or b!5472816 bm!403822) bm!403821))

(assert (= (or b!5472816 bm!403823) bm!403825))

(assert (= (or b!5472814 b!5472816) bm!403824))

(assert (= (or b!5472814 bm!403825) bm!403820))

(declare-fun m!6490302 () Bool)

(assert (=> bm!403824 m!6490302))

(declare-fun m!6490304 () Bool)

(assert (=> bm!403820 m!6490304))

(declare-fun m!6490306 () Bool)

(assert (=> b!5472824 m!6490306))

(declare-fun m!6490308 () Bool)

(assert (=> bm!403821 m!6490308))

(declare-fun m!6490310 () Bool)

(assert (=> b!5472815 m!6490310))

(assert (=> b!5472465 d!1739520))

(declare-fun b!5472846 () Bool)

(declare-fun e!3387759 () (Set Context!9448))

(declare-fun call!403835 () (Set Context!9448))

(assert (=> b!5472846 (= e!3387759 call!403835)))

(declare-fun d!1739522 () Bool)

(declare-fun c!956203 () Bool)

(declare-fun e!3387758 () Bool)

(assert (=> d!1739522 (= c!956203 e!3387758)))

(declare-fun res!2332372 () Bool)

(assert (=> d!1739522 (=> (not res!2332372) (not e!3387758))))

(assert (=> d!1739522 (= res!2332372 (is-Cons!62195 (exprs!5224 (Context!9449 (Cons!62195 r!7292 Nil!62195)))))))

(declare-fun e!3387757 () (Set Context!9448))

(assert (=> d!1739522 (= (derivationStepZipperUp!692 (Context!9449 (Cons!62195 r!7292 Nil!62195)) (h!68645 s!2326)) e!3387757)))

(declare-fun b!5472847 () Bool)

(assert (=> b!5472847 (= e!3387758 (nullable!5479 (h!68643 (exprs!5224 (Context!9449 (Cons!62195 r!7292 Nil!62195))))))))

(declare-fun b!5472848 () Bool)

(assert (=> b!5472848 (= e!3387757 e!3387759)))

(declare-fun c!956204 () Bool)

(assert (=> b!5472848 (= c!956204 (is-Cons!62195 (exprs!5224 (Context!9449 (Cons!62195 r!7292 Nil!62195)))))))

(declare-fun bm!403830 () Bool)

(assert (=> bm!403830 (= call!403835 (derivationStepZipperDown!766 (h!68643 (exprs!5224 (Context!9449 (Cons!62195 r!7292 Nil!62195)))) (Context!9449 (t!375548 (exprs!5224 (Context!9449 (Cons!62195 r!7292 Nil!62195))))) (h!68645 s!2326)))))

(declare-fun b!5472849 () Bool)

(assert (=> b!5472849 (= e!3387757 (set.union call!403835 (derivationStepZipperUp!692 (Context!9449 (t!375548 (exprs!5224 (Context!9449 (Cons!62195 r!7292 Nil!62195))))) (h!68645 s!2326))))))

(declare-fun b!5472850 () Bool)

(assert (=> b!5472850 (= e!3387759 (as set.empty (Set Context!9448)))))

(assert (= (and d!1739522 res!2332372) b!5472847))

(assert (= (and d!1739522 c!956203) b!5472849))

(assert (= (and d!1739522 (not c!956203)) b!5472848))

(assert (= (and b!5472848 c!956204) b!5472846))

(assert (= (and b!5472848 (not c!956204)) b!5472850))

(assert (= (or b!5472849 b!5472846) bm!403830))

(declare-fun m!6490312 () Bool)

(assert (=> b!5472847 m!6490312))

(declare-fun m!6490314 () Bool)

(assert (=> bm!403830 m!6490314))

(declare-fun m!6490316 () Bool)

(assert (=> b!5472849 m!6490316))

(assert (=> b!5472465 d!1739522))

(declare-fun bs!1265201 () Bool)

(declare-fun d!1739524 () Bool)

(assert (= bs!1265201 (and d!1739524 b!5472467)))

(declare-fun lambda!291397 () Int)

(assert (=> bs!1265201 (= lambda!291397 lambda!291345)))

(assert (=> d!1739524 true))

(assert (=> d!1739524 (= (derivationStepZipper!1535 z!1189 (h!68645 s!2326)) (flatMap!1043 z!1189 lambda!291397))))

(declare-fun bs!1265202 () Bool)

(assert (= bs!1265202 d!1739524))

(declare-fun m!6490324 () Bool)

(assert (=> bs!1265202 m!6490324))

(assert (=> b!5472465 d!1739524))

(declare-fun d!1739528 () Bool)

(declare-fun e!3387762 () Bool)

(assert (=> d!1739528 e!3387762))

(declare-fun res!2332375 () Bool)

(assert (=> d!1739528 (=> (not res!2332375) (not e!3387762))))

(declare-fun lt!2235593 () List!62320)

(declare-fun noDuplicate!1453 (List!62320) Bool)

(assert (=> d!1739528 (= res!2332375 (noDuplicate!1453 lt!2235593))))

(declare-fun choose!41629 ((Set Context!9448)) List!62320)

(assert (=> d!1739528 (= lt!2235593 (choose!41629 z!1189))))

(assert (=> d!1739528 (= (toList!9124 z!1189) lt!2235593)))

(declare-fun b!5472855 () Bool)

(declare-fun content!11196 (List!62320) (Set Context!9448))

(assert (=> b!5472855 (= e!3387762 (= (content!11196 lt!2235593) z!1189))))

(assert (= (and d!1739528 res!2332375) b!5472855))

(declare-fun m!6490326 () Bool)

(assert (=> d!1739528 m!6490326))

(declare-fun m!6490328 () Bool)

(assert (=> d!1739528 m!6490328))

(declare-fun m!6490330 () Bool)

(assert (=> b!5472855 m!6490330))

(assert (=> b!5472484 d!1739528))

(declare-fun bs!1265203 () Bool)

(declare-fun d!1739530 () Bool)

(assert (= bs!1265203 (and d!1739530 d!1739502)))

(declare-fun lambda!291400 () Int)

(assert (=> bs!1265203 (= lambda!291400 lambda!291376)))

(declare-fun bs!1265204 () Bool)

(assert (= bs!1265204 (and d!1739530 d!1739504)))

(assert (=> bs!1265204 (= lambda!291400 lambda!291379)))

(declare-fun bs!1265205 () Bool)

(assert (= bs!1265205 (and d!1739530 d!1739518)))

(assert (=> bs!1265205 (= lambda!291400 lambda!291390)))

(declare-fun b!5472876 () Bool)

(declare-fun e!3387776 () Regex!15340)

(assert (=> b!5472876 (= e!3387776 (Concat!24185 (h!68643 (exprs!5224 (h!68644 zl!343))) (generalisedConcat!1009 (t!375548 (exprs!5224 (h!68644 zl!343))))))))

(declare-fun b!5472877 () Bool)

(declare-fun e!3387779 () Bool)

(declare-fun e!3387778 () Bool)

(assert (=> b!5472877 (= e!3387779 e!3387778)))

(declare-fun c!956218 () Bool)

(assert (=> b!5472877 (= c!956218 (isEmpty!34160 (exprs!5224 (h!68644 zl!343))))))

(declare-fun b!5472878 () Bool)

(declare-fun lt!2235596 () Regex!15340)

(declare-fun isEmptyExpr!1035 (Regex!15340) Bool)

(assert (=> b!5472878 (= e!3387778 (isEmptyExpr!1035 lt!2235596))))

(declare-fun b!5472879 () Bool)

(declare-fun e!3387775 () Bool)

(declare-fun isConcat!558 (Regex!15340) Bool)

(assert (=> b!5472879 (= e!3387775 (isConcat!558 lt!2235596))))

(declare-fun b!5472880 () Bool)

(declare-fun e!3387780 () Regex!15340)

(assert (=> b!5472880 (= e!3387780 e!3387776)))

(declare-fun c!956217 () Bool)

(assert (=> b!5472880 (= c!956217 (is-Cons!62195 (exprs!5224 (h!68644 zl!343))))))

(declare-fun b!5472881 () Bool)

(assert (=> b!5472881 (= e!3387775 (= lt!2235596 (head!11723 (exprs!5224 (h!68644 zl!343)))))))

(declare-fun b!5472882 () Bool)

(declare-fun e!3387777 () Bool)

(assert (=> b!5472882 (= e!3387777 (isEmpty!34160 (t!375548 (exprs!5224 (h!68644 zl!343)))))))

(assert (=> d!1739530 e!3387779))

(declare-fun res!2332381 () Bool)

(assert (=> d!1739530 (=> (not res!2332381) (not e!3387779))))

(assert (=> d!1739530 (= res!2332381 (validRegex!7076 lt!2235596))))

(assert (=> d!1739530 (= lt!2235596 e!3387780)))

(declare-fun c!956216 () Bool)

(assert (=> d!1739530 (= c!956216 e!3387777)))

(declare-fun res!2332380 () Bool)

(assert (=> d!1739530 (=> (not res!2332380) (not e!3387777))))

(assert (=> d!1739530 (= res!2332380 (is-Cons!62195 (exprs!5224 (h!68644 zl!343))))))

(assert (=> d!1739530 (forall!14609 (exprs!5224 (h!68644 zl!343)) lambda!291400)))

(assert (=> d!1739530 (= (generalisedConcat!1009 (exprs!5224 (h!68644 zl!343))) lt!2235596)))

(declare-fun b!5472883 () Bool)

(assert (=> b!5472883 (= e!3387776 EmptyExpr!15340)))

(declare-fun b!5472884 () Bool)

(assert (=> b!5472884 (= e!3387778 e!3387775)))

(declare-fun c!956215 () Bool)

(assert (=> b!5472884 (= c!956215 (isEmpty!34160 (tail!10820 (exprs!5224 (h!68644 zl!343)))))))

(declare-fun b!5472885 () Bool)

(assert (=> b!5472885 (= e!3387780 (h!68643 (exprs!5224 (h!68644 zl!343))))))

(assert (= (and d!1739530 res!2332380) b!5472882))

(assert (= (and d!1739530 c!956216) b!5472885))

(assert (= (and d!1739530 (not c!956216)) b!5472880))

(assert (= (and b!5472880 c!956217) b!5472876))

(assert (= (and b!5472880 (not c!956217)) b!5472883))

(assert (= (and d!1739530 res!2332381) b!5472877))

(assert (= (and b!5472877 c!956218) b!5472878))

(assert (= (and b!5472877 (not c!956218)) b!5472884))

(assert (= (and b!5472884 c!956215) b!5472881))

(assert (= (and b!5472884 (not c!956215)) b!5472879))

(declare-fun m!6490332 () Bool)

(assert (=> b!5472882 m!6490332))

(declare-fun m!6490334 () Bool)

(assert (=> b!5472881 m!6490334))

(declare-fun m!6490336 () Bool)

(assert (=> b!5472878 m!6490336))

(declare-fun m!6490338 () Bool)

(assert (=> b!5472876 m!6490338))

(declare-fun m!6490340 () Bool)

(assert (=> b!5472877 m!6490340))

(declare-fun m!6490342 () Bool)

(assert (=> b!5472879 m!6490342))

(declare-fun m!6490344 () Bool)

(assert (=> d!1739530 m!6490344))

(declare-fun m!6490346 () Bool)

(assert (=> d!1739530 m!6490346))

(declare-fun m!6490348 () Bool)

(assert (=> b!5472884 m!6490348))

(assert (=> b!5472884 m!6490348))

(declare-fun m!6490350 () Bool)

(assert (=> b!5472884 m!6490350))

(assert (=> b!5472474 d!1739530))

(declare-fun b!5472922 () Bool)

(declare-fun e!3387800 () List!62321)

(assert (=> b!5472922 (= e!3387800 (_2!35840 lt!2235463))))

(declare-fun b!5472925 () Bool)

(declare-fun e!3387799 () Bool)

(declare-fun lt!2235601 () List!62321)

(assert (=> b!5472925 (= e!3387799 (or (not (= (_2!35840 lt!2235463) Nil!62197)) (= lt!2235601 (_1!35840 lt!2235463))))))

(declare-fun b!5472924 () Bool)

(declare-fun res!2332403 () Bool)

(assert (=> b!5472924 (=> (not res!2332403) (not e!3387799))))

(declare-fun size!39913 (List!62321) Int)

(assert (=> b!5472924 (= res!2332403 (= (size!39913 lt!2235601) (+ (size!39913 (_1!35840 lt!2235463)) (size!39913 (_2!35840 lt!2235463)))))))

(declare-fun d!1739532 () Bool)

(assert (=> d!1739532 e!3387799))

(declare-fun res!2332402 () Bool)

(assert (=> d!1739532 (=> (not res!2332402) (not e!3387799))))

(declare-fun content!11197 (List!62321) (Set C!30950))

(assert (=> d!1739532 (= res!2332402 (= (content!11197 lt!2235601) (set.union (content!11197 (_1!35840 lt!2235463)) (content!11197 (_2!35840 lt!2235463)))))))

(assert (=> d!1739532 (= lt!2235601 e!3387800)))

(declare-fun c!956227 () Bool)

(assert (=> d!1739532 (= c!956227 (is-Nil!62197 (_1!35840 lt!2235463)))))

(assert (=> d!1739532 (= (++!13677 (_1!35840 lt!2235463) (_2!35840 lt!2235463)) lt!2235601)))

(declare-fun b!5472923 () Bool)

(assert (=> b!5472923 (= e!3387800 (Cons!62197 (h!68645 (_1!35840 lt!2235463)) (++!13677 (t!375550 (_1!35840 lt!2235463)) (_2!35840 lt!2235463))))))

(assert (= (and d!1739532 c!956227) b!5472922))

(assert (= (and d!1739532 (not c!956227)) b!5472923))

(assert (= (and d!1739532 res!2332402) b!5472924))

(assert (= (and b!5472924 res!2332403) b!5472925))

(declare-fun m!6490352 () Bool)

(assert (=> b!5472924 m!6490352))

(declare-fun m!6490354 () Bool)

(assert (=> b!5472924 m!6490354))

(declare-fun m!6490356 () Bool)

(assert (=> b!5472924 m!6490356))

(declare-fun m!6490358 () Bool)

(assert (=> d!1739532 m!6490358))

(declare-fun m!6490360 () Bool)

(assert (=> d!1739532 m!6490360))

(declare-fun m!6490362 () Bool)

(assert (=> d!1739532 m!6490362))

(declare-fun m!6490364 () Bool)

(assert (=> b!5472923 m!6490364))

(assert (=> b!5472464 d!1739532))

(declare-fun d!1739534 () Bool)

(assert (=> d!1739534 (= (get!21441 lt!2235460) (v!51477 lt!2235460))))

(assert (=> b!5472464 d!1739534))

(declare-fun bs!1265206 () Bool)

(declare-fun b!5472934 () Bool)

(assert (= bs!1265206 (and b!5472934 b!5472479)))

(declare-fun lambda!291401 () Int)

(assert (=> bs!1265206 (= lambda!291401 lambda!291343)))

(assert (=> bs!1265206 (not (= lambda!291401 lambda!291344))))

(assert (=> bs!1265206 (not (= lambda!291401 lambda!291342))))

(declare-fun bs!1265207 () Bool)

(assert (= bs!1265207 (and b!5472934 b!5472710)))

(assert (=> bs!1265207 (not (= lambda!291401 lambda!291385))))

(declare-fun bs!1265208 () Bool)

(assert (= bs!1265208 (and b!5472934 b!5472715)))

(assert (=> bs!1265208 (= (and (= (reg!15669 r!7292) (reg!15669 lt!2235483)) (= r!7292 lt!2235483)) (= lambda!291401 lambda!291384))))

(assert (=> b!5472934 true))

(assert (=> b!5472934 true))

(declare-fun bs!1265209 () Bool)

(declare-fun b!5472929 () Bool)

(assert (= bs!1265209 (and b!5472929 b!5472479)))

(declare-fun lambda!291402 () Int)

(assert (=> bs!1265209 (= (and (= (regOne!31192 r!7292) (reg!15669 r!7292)) (= (regTwo!31192 r!7292) r!7292)) (= lambda!291402 lambda!291344))))

(assert (=> bs!1265209 (not (= lambda!291402 lambda!291342))))

(declare-fun bs!1265210 () Bool)

(assert (= bs!1265210 (and b!5472929 b!5472934)))

(assert (=> bs!1265210 (not (= lambda!291402 lambda!291401))))

(assert (=> bs!1265209 (not (= lambda!291402 lambda!291343))))

(declare-fun bs!1265211 () Bool)

(assert (= bs!1265211 (and b!5472929 b!5472710)))

(assert (=> bs!1265211 (= (and (= (regOne!31192 r!7292) (regOne!31192 lt!2235483)) (= (regTwo!31192 r!7292) (regTwo!31192 lt!2235483))) (= lambda!291402 lambda!291385))))

(declare-fun bs!1265212 () Bool)

(assert (= bs!1265212 (and b!5472929 b!5472715)))

(assert (=> bs!1265212 (not (= lambda!291402 lambda!291384))))

(assert (=> b!5472929 true))

(assert (=> b!5472929 true))

(declare-fun b!5472926 () Bool)

(declare-fun e!3387803 () Bool)

(declare-fun e!3387806 () Bool)

(assert (=> b!5472926 (= e!3387803 e!3387806)))

(declare-fun res!2332405 () Bool)

(assert (=> b!5472926 (= res!2332405 (not (is-EmptyLang!15340 r!7292)))))

(assert (=> b!5472926 (=> (not res!2332405) (not e!3387806))))

(declare-fun b!5472927 () Bool)

(declare-fun c!956230 () Bool)

(assert (=> b!5472927 (= c!956230 (is-Union!15340 r!7292))))

(declare-fun e!3387804 () Bool)

(declare-fun e!3387801 () Bool)

(assert (=> b!5472927 (= e!3387804 e!3387801)))

(declare-fun b!5472928 () Bool)

(declare-fun c!956231 () Bool)

(assert (=> b!5472928 (= c!956231 (is-ElementMatch!15340 r!7292))))

(assert (=> b!5472928 (= e!3387806 e!3387804)))

(declare-fun e!3387802 () Bool)

(declare-fun call!403839 () Bool)

(assert (=> b!5472929 (= e!3387802 call!403839)))

(declare-fun b!5472930 () Bool)

(assert (=> b!5472930 (= e!3387801 e!3387802)))

(declare-fun c!956229 () Bool)

(assert (=> b!5472930 (= c!956229 (is-Star!15340 r!7292))))

(declare-fun d!1739536 () Bool)

(declare-fun c!956228 () Bool)

(assert (=> d!1739536 (= c!956228 (is-EmptyExpr!15340 r!7292))))

(assert (=> d!1739536 (= (matchRSpec!2443 r!7292 s!2326) e!3387803)))

(declare-fun b!5472931 () Bool)

(declare-fun res!2332404 () Bool)

(declare-fun e!3387807 () Bool)

(assert (=> b!5472931 (=> res!2332404 e!3387807)))

(declare-fun call!403838 () Bool)

(assert (=> b!5472931 (= res!2332404 call!403838)))

(assert (=> b!5472931 (= e!3387802 e!3387807)))

(declare-fun b!5472932 () Bool)

(assert (=> b!5472932 (= e!3387804 (= s!2326 (Cons!62197 (c!956125 r!7292) Nil!62197)))))

(declare-fun bm!403833 () Bool)

(assert (=> bm!403833 (= call!403838 (isEmpty!34156 s!2326))))

(declare-fun b!5472933 () Bool)

(declare-fun e!3387805 () Bool)

(assert (=> b!5472933 (= e!3387805 (matchRSpec!2443 (regTwo!31193 r!7292) s!2326))))

(assert (=> b!5472934 (= e!3387807 call!403839)))

(declare-fun bm!403834 () Bool)

(assert (=> bm!403834 (= call!403839 (Exists!2519 (ite c!956229 lambda!291401 lambda!291402)))))

(declare-fun b!5472935 () Bool)

(assert (=> b!5472935 (= e!3387801 e!3387805)))

(declare-fun res!2332406 () Bool)

(assert (=> b!5472935 (= res!2332406 (matchRSpec!2443 (regOne!31193 r!7292) s!2326))))

(assert (=> b!5472935 (=> res!2332406 e!3387805)))

(declare-fun b!5472936 () Bool)

(assert (=> b!5472936 (= e!3387803 call!403838)))

(assert (= (and d!1739536 c!956228) b!5472936))

(assert (= (and d!1739536 (not c!956228)) b!5472926))

(assert (= (and b!5472926 res!2332405) b!5472928))

(assert (= (and b!5472928 c!956231) b!5472932))

(assert (= (and b!5472928 (not c!956231)) b!5472927))

(assert (= (and b!5472927 c!956230) b!5472935))

(assert (= (and b!5472927 (not c!956230)) b!5472930))

(assert (= (and b!5472935 (not res!2332406)) b!5472933))

(assert (= (and b!5472930 c!956229) b!5472931))

(assert (= (and b!5472930 (not c!956229)) b!5472929))

(assert (= (and b!5472931 (not res!2332404)) b!5472934))

(assert (= (or b!5472934 b!5472929) bm!403834))

(assert (= (or b!5472936 b!5472931) bm!403833))

(assert (=> bm!403833 m!6490054))

(declare-fun m!6490366 () Bool)

(assert (=> b!5472933 m!6490366))

(declare-fun m!6490368 () Bool)

(assert (=> bm!403834 m!6490368))

(declare-fun m!6490370 () Bool)

(assert (=> b!5472935 m!6490370))

(assert (=> b!5472468 d!1739536))

(declare-fun b!5472937 () Bool)

(declare-fun res!2332409 () Bool)

(declare-fun e!3387811 () Bool)

(assert (=> b!5472937 (=> res!2332409 e!3387811)))

(assert (=> b!5472937 (= res!2332409 (not (is-ElementMatch!15340 r!7292)))))

(declare-fun e!3387810 () Bool)

(assert (=> b!5472937 (= e!3387810 e!3387811)))

(declare-fun b!5472938 () Bool)

(declare-fun e!3387813 () Bool)

(assert (=> b!5472938 (= e!3387813 e!3387810)))

(declare-fun c!956233 () Bool)

(assert (=> b!5472938 (= c!956233 (is-EmptyLang!15340 r!7292))))

(declare-fun b!5472939 () Bool)

(declare-fun res!2332414 () Bool)

(declare-fun e!3387812 () Bool)

(assert (=> b!5472939 (=> (not res!2332414) (not e!3387812))))

(declare-fun call!403840 () Bool)

(assert (=> b!5472939 (= res!2332414 (not call!403840))))

(declare-fun b!5472940 () Bool)

(declare-fun e!3387814 () Bool)

(assert (=> b!5472940 (= e!3387814 (matchR!7525 (derivativeStep!4324 r!7292 (head!11724 s!2326)) (tail!10821 s!2326)))))

(declare-fun b!5472941 () Bool)

(declare-fun lt!2235602 () Bool)

(assert (=> b!5472941 (= e!3387810 (not lt!2235602))))

(declare-fun b!5472942 () Bool)

(declare-fun res!2332413 () Bool)

(declare-fun e!3387808 () Bool)

(assert (=> b!5472942 (=> res!2332413 e!3387808)))

(assert (=> b!5472942 (= res!2332413 (not (isEmpty!34156 (tail!10821 s!2326))))))

(declare-fun d!1739538 () Bool)

(assert (=> d!1739538 e!3387813))

(declare-fun c!956232 () Bool)

(assert (=> d!1739538 (= c!956232 (is-EmptyExpr!15340 r!7292))))

(assert (=> d!1739538 (= lt!2235602 e!3387814)))

(declare-fun c!956234 () Bool)

(assert (=> d!1739538 (= c!956234 (isEmpty!34156 s!2326))))

(assert (=> d!1739538 (validRegex!7076 r!7292)))

(assert (=> d!1739538 (= (matchR!7525 r!7292 s!2326) lt!2235602)))

(declare-fun b!5472943 () Bool)

(assert (=> b!5472943 (= e!3387814 (nullable!5479 r!7292))))

(declare-fun b!5472944 () Bool)

(assert (=> b!5472944 (= e!3387813 (= lt!2235602 call!403840))))

(declare-fun b!5472945 () Bool)

(declare-fun e!3387809 () Bool)

(assert (=> b!5472945 (= e!3387811 e!3387809)))

(declare-fun res!2332408 () Bool)

(assert (=> b!5472945 (=> (not res!2332408) (not e!3387809))))

(assert (=> b!5472945 (= res!2332408 (not lt!2235602))))

(declare-fun b!5472946 () Bool)

(assert (=> b!5472946 (= e!3387808 (not (= (head!11724 s!2326) (c!956125 r!7292))))))

(declare-fun b!5472947 () Bool)

(declare-fun res!2332412 () Bool)

(assert (=> b!5472947 (=> (not res!2332412) (not e!3387812))))

(assert (=> b!5472947 (= res!2332412 (isEmpty!34156 (tail!10821 s!2326)))))

(declare-fun b!5472948 () Bool)

(assert (=> b!5472948 (= e!3387812 (= (head!11724 s!2326) (c!956125 r!7292)))))

(declare-fun b!5472949 () Bool)

(declare-fun res!2332407 () Bool)

(assert (=> b!5472949 (=> res!2332407 e!3387811)))

(assert (=> b!5472949 (= res!2332407 e!3387812)))

(declare-fun res!2332411 () Bool)

(assert (=> b!5472949 (=> (not res!2332411) (not e!3387812))))

(assert (=> b!5472949 (= res!2332411 lt!2235602)))

(declare-fun bm!403835 () Bool)

(assert (=> bm!403835 (= call!403840 (isEmpty!34156 s!2326))))

(declare-fun b!5472950 () Bool)

(assert (=> b!5472950 (= e!3387809 e!3387808)))

(declare-fun res!2332410 () Bool)

(assert (=> b!5472950 (=> res!2332410 e!3387808)))

(assert (=> b!5472950 (= res!2332410 call!403840)))

(assert (= (and d!1739538 c!956234) b!5472943))

(assert (= (and d!1739538 (not c!956234)) b!5472940))

(assert (= (and d!1739538 c!956232) b!5472944))

(assert (= (and d!1739538 (not c!956232)) b!5472938))

(assert (= (and b!5472938 c!956233) b!5472941))

(assert (= (and b!5472938 (not c!956233)) b!5472937))

(assert (= (and b!5472937 (not res!2332409)) b!5472949))

(assert (= (and b!5472949 res!2332411) b!5472939))

(assert (= (and b!5472939 res!2332414) b!5472947))

(assert (= (and b!5472947 res!2332412) b!5472948))

(assert (= (and b!5472949 (not res!2332407)) b!5472945))

(assert (= (and b!5472945 res!2332408) b!5472950))

(assert (= (and b!5472950 (not res!2332410)) b!5472942))

(assert (= (and b!5472942 (not res!2332413)) b!5472946))

(assert (= (or b!5472944 b!5472939 b!5472950) bm!403835))

(assert (=> b!5472940 m!6490280))

(assert (=> b!5472940 m!6490280))

(declare-fun m!6490372 () Bool)

(assert (=> b!5472940 m!6490372))

(assert (=> b!5472940 m!6490284))

(assert (=> b!5472940 m!6490372))

(assert (=> b!5472940 m!6490284))

(declare-fun m!6490374 () Bool)

(assert (=> b!5472940 m!6490374))

(assert (=> b!5472947 m!6490284))

(assert (=> b!5472947 m!6490284))

(assert (=> b!5472947 m!6490288))

(assert (=> bm!403835 m!6490054))

(assert (=> b!5472946 m!6490280))

(assert (=> d!1739538 m!6490054))

(assert (=> d!1739538 m!6490074))

(assert (=> b!5472942 m!6490284))

(assert (=> b!5472942 m!6490284))

(assert (=> b!5472942 m!6490288))

(declare-fun m!6490376 () Bool)

(assert (=> b!5472943 m!6490376))

(assert (=> b!5472948 m!6490280))

(assert (=> b!5472468 d!1739538))

(declare-fun d!1739540 () Bool)

(assert (=> d!1739540 (= (matchR!7525 r!7292 s!2326) (matchRSpec!2443 r!7292 s!2326))))

(declare-fun lt!2235603 () Unit!155130)

(assert (=> d!1739540 (= lt!2235603 (choose!41627 r!7292 s!2326))))

(assert (=> d!1739540 (validRegex!7076 r!7292)))

(assert (=> d!1739540 (= (mainMatchTheorem!2443 r!7292 s!2326) lt!2235603)))

(declare-fun bs!1265213 () Bool)

(assert (= bs!1265213 d!1739540))

(assert (=> bs!1265213 m!6490038))

(assert (=> bs!1265213 m!6490036))

(declare-fun m!6490378 () Bool)

(assert (=> bs!1265213 m!6490378))

(assert (=> bs!1265213 m!6490074))

(assert (=> b!5472468 d!1739540))

(declare-fun bs!1265214 () Bool)

(declare-fun d!1739542 () Bool)

(assert (= bs!1265214 (and d!1739542 d!1739502)))

(declare-fun lambda!291403 () Int)

(assert (=> bs!1265214 (= lambda!291403 lambda!291376)))

(declare-fun bs!1265215 () Bool)

(assert (= bs!1265215 (and d!1739542 d!1739504)))

(assert (=> bs!1265215 (= lambda!291403 lambda!291379)))

(declare-fun bs!1265216 () Bool)

(assert (= bs!1265216 (and d!1739542 d!1739518)))

(assert (=> bs!1265216 (= lambda!291403 lambda!291390)))

(declare-fun bs!1265217 () Bool)

(assert (= bs!1265217 (and d!1739542 d!1739530)))

(assert (=> bs!1265217 (= lambda!291403 lambda!291400)))

(assert (=> d!1739542 (= (inv!81598 (h!68644 zl!343)) (forall!14609 (exprs!5224 (h!68644 zl!343)) lambda!291403))))

(declare-fun bs!1265218 () Bool)

(assert (= bs!1265218 d!1739542))

(declare-fun m!6490380 () Bool)

(assert (=> bs!1265218 m!6490380))

(assert (=> b!5472487 d!1739542))

(declare-fun d!1739544 () Bool)

(declare-fun choose!41630 ((Set Context!9448) Int) (Set Context!9448))

(assert (=> d!1739544 (= (flatMap!1043 z!1189 lambda!291345) (choose!41630 z!1189 lambda!291345))))

(declare-fun bs!1265219 () Bool)

(assert (= bs!1265219 d!1739544))

(declare-fun m!6490382 () Bool)

(assert (=> bs!1265219 m!6490382))

(assert (=> b!5472467 d!1739544))

(declare-fun b!5472951 () Bool)

(declare-fun e!3387817 () (Set Context!9448))

(declare-fun call!403841 () (Set Context!9448))

(assert (=> b!5472951 (= e!3387817 call!403841)))

(declare-fun d!1739546 () Bool)

(declare-fun c!956235 () Bool)

(declare-fun e!3387816 () Bool)

(assert (=> d!1739546 (= c!956235 e!3387816)))

(declare-fun res!2332415 () Bool)

(assert (=> d!1739546 (=> (not res!2332415) (not e!3387816))))

(assert (=> d!1739546 (= res!2332415 (is-Cons!62195 (exprs!5224 (h!68644 zl!343))))))

(declare-fun e!3387815 () (Set Context!9448))

(assert (=> d!1739546 (= (derivationStepZipperUp!692 (h!68644 zl!343) (h!68645 s!2326)) e!3387815)))

(declare-fun b!5472952 () Bool)

(assert (=> b!5472952 (= e!3387816 (nullable!5479 (h!68643 (exprs!5224 (h!68644 zl!343)))))))

(declare-fun b!5472953 () Bool)

(assert (=> b!5472953 (= e!3387815 e!3387817)))

(declare-fun c!956236 () Bool)

(assert (=> b!5472953 (= c!956236 (is-Cons!62195 (exprs!5224 (h!68644 zl!343))))))

(declare-fun bm!403836 () Bool)

(assert (=> bm!403836 (= call!403841 (derivationStepZipperDown!766 (h!68643 (exprs!5224 (h!68644 zl!343))) (Context!9449 (t!375548 (exprs!5224 (h!68644 zl!343)))) (h!68645 s!2326)))))

(declare-fun b!5472954 () Bool)

(assert (=> b!5472954 (= e!3387815 (set.union call!403841 (derivationStepZipperUp!692 (Context!9449 (t!375548 (exprs!5224 (h!68644 zl!343)))) (h!68645 s!2326))))))

(declare-fun b!5472955 () Bool)

(assert (=> b!5472955 (= e!3387817 (as set.empty (Set Context!9448)))))

(assert (= (and d!1739546 res!2332415) b!5472952))

(assert (= (and d!1739546 c!956235) b!5472954))

(assert (= (and d!1739546 (not c!956235)) b!5472953))

(assert (= (and b!5472953 c!956236) b!5472951))

(assert (= (and b!5472953 (not c!956236)) b!5472955))

(assert (= (or b!5472954 b!5472951) bm!403836))

(declare-fun m!6490384 () Bool)

(assert (=> b!5472952 m!6490384))

(declare-fun m!6490386 () Bool)

(assert (=> bm!403836 m!6490386))

(declare-fun m!6490388 () Bool)

(assert (=> b!5472954 m!6490388))

(assert (=> b!5472467 d!1739546))

(declare-fun d!1739548 () Bool)

(declare-fun dynLambda!24426 (Int Context!9448) (Set Context!9448))

(assert (=> d!1739548 (= (flatMap!1043 z!1189 lambda!291345) (dynLambda!24426 lambda!291345 (h!68644 zl!343)))))

(declare-fun lt!2235607 () Unit!155130)

(declare-fun choose!41631 ((Set Context!9448) Context!9448 Int) Unit!155130)

(assert (=> d!1739548 (= lt!2235607 (choose!41631 z!1189 (h!68644 zl!343) lambda!291345))))

(assert (=> d!1739548 (= z!1189 (set.insert (h!68644 zl!343) (as set.empty (Set Context!9448))))))

(assert (=> d!1739548 (= (lemmaFlatMapOnSingletonSet!575 z!1189 (h!68644 zl!343) lambda!291345) lt!2235607)))

(declare-fun b_lambda!208011 () Bool)

(assert (=> (not b_lambda!208011) (not d!1739548)))

(declare-fun bs!1265220 () Bool)

(assert (= bs!1265220 d!1739548))

(assert (=> bs!1265220 m!6490046))

(declare-fun m!6490392 () Bool)

(assert (=> bs!1265220 m!6490392))

(declare-fun m!6490394 () Bool)

(assert (=> bs!1265220 m!6490394))

(declare-fun m!6490396 () Bool)

(assert (=> bs!1265220 m!6490396))

(assert (=> b!5472467 d!1739548))

(declare-fun b!5472988 () Bool)

(declare-fun e!3387843 () Bool)

(declare-fun e!3387839 () Bool)

(assert (=> b!5472988 (= e!3387843 e!3387839)))

(declare-fun c!956244 () Bool)

(assert (=> b!5472988 (= c!956244 (is-Union!15340 (reg!15669 r!7292)))))

(declare-fun bm!403844 () Bool)

(declare-fun call!403849 () Bool)

(declare-fun call!403850 () Bool)

(assert (=> bm!403844 (= call!403849 call!403850)))

(declare-fun c!956245 () Bool)

(declare-fun bm!403845 () Bool)

(assert (=> bm!403845 (= call!403850 (validRegex!7076 (ite c!956245 (reg!15669 (reg!15669 r!7292)) (ite c!956244 (regTwo!31193 (reg!15669 r!7292)) (regTwo!31192 (reg!15669 r!7292))))))))

(declare-fun b!5472990 () Bool)

(declare-fun res!2332434 () Bool)

(declare-fun e!3387844 () Bool)

(assert (=> b!5472990 (=> res!2332434 e!3387844)))

(assert (=> b!5472990 (= res!2332434 (not (is-Concat!24185 (reg!15669 r!7292))))))

(assert (=> b!5472990 (= e!3387839 e!3387844)))

(declare-fun bm!403846 () Bool)

(declare-fun call!403851 () Bool)

(assert (=> bm!403846 (= call!403851 (validRegex!7076 (ite c!956244 (regOne!31193 (reg!15669 r!7292)) (regOne!31192 (reg!15669 r!7292)))))))

(declare-fun b!5472991 () Bool)

(declare-fun e!3387841 () Bool)

(assert (=> b!5472991 (= e!3387841 call!403850)))

(declare-fun b!5472992 () Bool)

(declare-fun e!3387845 () Bool)

(assert (=> b!5472992 (= e!3387845 e!3387843)))

(assert (=> b!5472992 (= c!956245 (is-Star!15340 (reg!15669 r!7292)))))

(declare-fun b!5472993 () Bool)

(declare-fun e!3387840 () Bool)

(assert (=> b!5472993 (= e!3387840 call!403849)))

(declare-fun b!5472994 () Bool)

(declare-fun e!3387842 () Bool)

(assert (=> b!5472994 (= e!3387844 e!3387842)))

(declare-fun res!2332436 () Bool)

(assert (=> b!5472994 (=> (not res!2332436) (not e!3387842))))

(assert (=> b!5472994 (= res!2332436 call!403851)))

(declare-fun b!5472995 () Bool)

(assert (=> b!5472995 (= e!3387842 call!403849)))

(declare-fun b!5472996 () Bool)

(assert (=> b!5472996 (= e!3387843 e!3387841)))

(declare-fun res!2332437 () Bool)

(assert (=> b!5472996 (= res!2332437 (not (nullable!5479 (reg!15669 (reg!15669 r!7292)))))))

(assert (=> b!5472996 (=> (not res!2332437) (not e!3387841))))

(declare-fun b!5472989 () Bool)

(declare-fun res!2332438 () Bool)

(assert (=> b!5472989 (=> (not res!2332438) (not e!3387840))))

(assert (=> b!5472989 (= res!2332438 call!403851)))

(assert (=> b!5472989 (= e!3387839 e!3387840)))

(declare-fun d!1739550 () Bool)

(declare-fun res!2332435 () Bool)

(assert (=> d!1739550 (=> res!2332435 e!3387845)))

(assert (=> d!1739550 (= res!2332435 (is-ElementMatch!15340 (reg!15669 r!7292)))))

(assert (=> d!1739550 (= (validRegex!7076 (reg!15669 r!7292)) e!3387845)))

(assert (= (and d!1739550 (not res!2332435)) b!5472992))

(assert (= (and b!5472992 c!956245) b!5472996))

(assert (= (and b!5472992 (not c!956245)) b!5472988))

(assert (= (and b!5472996 res!2332437) b!5472991))

(assert (= (and b!5472988 c!956244) b!5472989))

(assert (= (and b!5472988 (not c!956244)) b!5472990))

(assert (= (and b!5472989 res!2332438) b!5472993))

(assert (= (and b!5472990 (not res!2332434)) b!5472994))

(assert (= (and b!5472994 res!2332436) b!5472995))

(assert (= (or b!5472993 b!5472995) bm!403844))

(assert (= (or b!5472989 b!5472994) bm!403846))

(assert (= (or b!5472991 bm!403844) bm!403845))

(declare-fun m!6490408 () Bool)

(assert (=> bm!403845 m!6490408))

(declare-fun m!6490410 () Bool)

(assert (=> bm!403846 m!6490410))

(declare-fun m!6490412 () Bool)

(assert (=> b!5472996 m!6490412))

(assert (=> b!5472486 d!1739550))

(declare-fun d!1739554 () Bool)

(declare-fun lt!2235608 () Regex!15340)

(assert (=> d!1739554 (validRegex!7076 lt!2235608)))

(assert (=> d!1739554 (= lt!2235608 (generalisedUnion!1269 (unfocusZipperList!782 (Cons!62196 lt!2235476 Nil!62196))))))

(assert (=> d!1739554 (= (unfocusZipper!1082 (Cons!62196 lt!2235476 Nil!62196)) lt!2235608)))

(declare-fun bs!1265221 () Bool)

(assert (= bs!1265221 d!1739554))

(declare-fun m!6490414 () Bool)

(assert (=> bs!1265221 m!6490414))

(declare-fun m!6490416 () Bool)

(assert (=> bs!1265221 m!6490416))

(assert (=> bs!1265221 m!6490416))

(declare-fun m!6490418 () Bool)

(assert (=> bs!1265221 m!6490418))

(assert (=> b!5472456 d!1739554))

(assert (=> b!5472466 d!1739514))

(declare-fun d!1739556 () Bool)

(declare-fun lt!2235611 () Regex!15340)

(assert (=> d!1739556 (validRegex!7076 lt!2235611)))

(assert (=> d!1739556 (= lt!2235611 (generalisedUnion!1269 (unfocusZipperList!782 (Cons!62196 lt!2235481 Nil!62196))))))

(assert (=> d!1739556 (= (unfocusZipper!1082 (Cons!62196 lt!2235481 Nil!62196)) lt!2235611)))

(declare-fun bs!1265222 () Bool)

(assert (= bs!1265222 d!1739556))

(declare-fun m!6490420 () Bool)

(assert (=> bs!1265222 m!6490420))

(declare-fun m!6490422 () Bool)

(assert (=> bs!1265222 m!6490422))

(assert (=> bs!1265222 m!6490422))

(declare-fun m!6490424 () Bool)

(assert (=> bs!1265222 m!6490424))

(assert (=> b!5472485 d!1739556))

(declare-fun d!1739558 () Bool)

(declare-fun lt!2235612 () Regex!15340)

(assert (=> d!1739558 (validRegex!7076 lt!2235612)))

(assert (=> d!1739558 (= lt!2235612 (generalisedUnion!1269 (unfocusZipperList!782 zl!343)))))

(assert (=> d!1739558 (= (unfocusZipper!1082 zl!343) lt!2235612)))

(declare-fun bs!1265223 () Bool)

(assert (= bs!1265223 d!1739558))

(declare-fun m!6490426 () Bool)

(assert (=> bs!1265223 m!6490426))

(assert (=> bs!1265223 m!6490076))

(assert (=> bs!1265223 m!6490076))

(assert (=> bs!1265223 m!6490078))

(assert (=> b!5472470 d!1739558))

(declare-fun b!5472997 () Bool)

(declare-fun e!3387851 () (Set Context!9448))

(declare-fun call!403855 () (Set Context!9448))

(declare-fun call!403852 () (Set Context!9448))

(assert (=> b!5472997 (= e!3387851 (set.union call!403855 call!403852))))

(declare-fun b!5472998 () Bool)

(declare-fun e!3387849 () (Set Context!9448))

(assert (=> b!5472998 (= e!3387849 (set.insert lt!2235476 (as set.empty (Set Context!9448))))))

(declare-fun c!956249 () Bool)

(declare-fun call!403854 () List!62319)

(declare-fun c!956248 () Bool)

(declare-fun bm!403847 () Bool)

(declare-fun c!956247 () Bool)

(assert (=> bm!403847 (= call!403855 (derivationStepZipperDown!766 (ite c!956247 (regOne!31193 (reg!15669 r!7292)) (ite c!956248 (regTwo!31192 (reg!15669 r!7292)) (ite c!956249 (regOne!31192 (reg!15669 r!7292)) (reg!15669 (reg!15669 r!7292))))) (ite (or c!956247 c!956248) lt!2235476 (Context!9449 call!403854)) (h!68645 s!2326)))))

(declare-fun b!5472999 () Bool)

(declare-fun e!3387847 () (Set Context!9448))

(declare-fun call!403857 () (Set Context!9448))

(assert (=> b!5472999 (= e!3387847 (set.union call!403852 call!403857))))

(declare-fun b!5473000 () Bool)

(declare-fun e!3387846 () Bool)

(assert (=> b!5473000 (= c!956248 e!3387846)))

(declare-fun res!2332439 () Bool)

(assert (=> b!5473000 (=> (not res!2332439) (not e!3387846))))

(assert (=> b!5473000 (= res!2332439 (is-Concat!24185 (reg!15669 r!7292)))))

(assert (=> b!5473000 (= e!3387851 e!3387847)))

(declare-fun b!5473001 () Bool)

(declare-fun e!3387848 () (Set Context!9448))

(assert (=> b!5473001 (= e!3387847 e!3387848)))

(assert (=> b!5473001 (= c!956249 (is-Concat!24185 (reg!15669 r!7292)))))

(declare-fun call!403853 () List!62319)

(declare-fun bm!403848 () Bool)

(assert (=> bm!403848 (= call!403853 ($colon$colon!1549 (exprs!5224 lt!2235476) (ite (or c!956248 c!956249) (regTwo!31192 (reg!15669 r!7292)) (reg!15669 r!7292))))))

(declare-fun bm!403849 () Bool)

(assert (=> bm!403849 (= call!403854 call!403853)))

(declare-fun b!5473002 () Bool)

(declare-fun e!3387850 () (Set Context!9448))

(declare-fun call!403856 () (Set Context!9448))

(assert (=> b!5473002 (= e!3387850 call!403856)))

(declare-fun b!5473003 () Bool)

(assert (=> b!5473003 (= e!3387850 (as set.empty (Set Context!9448)))))

(declare-fun d!1739560 () Bool)

(declare-fun c!956250 () Bool)

(assert (=> d!1739560 (= c!956250 (and (is-ElementMatch!15340 (reg!15669 r!7292)) (= (c!956125 (reg!15669 r!7292)) (h!68645 s!2326))))))

(assert (=> d!1739560 (= (derivationStepZipperDown!766 (reg!15669 r!7292) lt!2235476 (h!68645 s!2326)) e!3387849)))

(declare-fun b!5473004 () Bool)

(assert (=> b!5473004 (= e!3387848 call!403856)))

(declare-fun b!5473005 () Bool)

(assert (=> b!5473005 (= e!3387849 e!3387851)))

(assert (=> b!5473005 (= c!956247 (is-Union!15340 (reg!15669 r!7292)))))

(declare-fun bm!403850 () Bool)

(assert (=> bm!403850 (= call!403856 call!403857)))

(declare-fun b!5473006 () Bool)

(declare-fun c!956246 () Bool)

(assert (=> b!5473006 (= c!956246 (is-Star!15340 (reg!15669 r!7292)))))

(assert (=> b!5473006 (= e!3387848 e!3387850)))

(declare-fun bm!403851 () Bool)

(assert (=> bm!403851 (= call!403852 (derivationStepZipperDown!766 (ite c!956247 (regTwo!31193 (reg!15669 r!7292)) (regOne!31192 (reg!15669 r!7292))) (ite c!956247 lt!2235476 (Context!9449 call!403853)) (h!68645 s!2326)))))

(declare-fun b!5473007 () Bool)

(assert (=> b!5473007 (= e!3387846 (nullable!5479 (regOne!31192 (reg!15669 r!7292))))))

(declare-fun bm!403852 () Bool)

(assert (=> bm!403852 (= call!403857 call!403855)))

(assert (= (and d!1739560 c!956250) b!5472998))

(assert (= (and d!1739560 (not c!956250)) b!5473005))

(assert (= (and b!5473005 c!956247) b!5472997))

(assert (= (and b!5473005 (not c!956247)) b!5473000))

(assert (= (and b!5473000 res!2332439) b!5473007))

(assert (= (and b!5473000 c!956248) b!5472999))

(assert (= (and b!5473000 (not c!956248)) b!5473001))

(assert (= (and b!5473001 c!956249) b!5473004))

(assert (= (and b!5473001 (not c!956249)) b!5473006))

(assert (= (and b!5473006 c!956246) b!5473002))

(assert (= (and b!5473006 (not c!956246)) b!5473003))

(assert (= (or b!5473004 b!5473002) bm!403849))

(assert (= (or b!5473004 b!5473002) bm!403850))

(assert (= (or b!5472999 bm!403849) bm!403848))

(assert (= (or b!5472999 bm!403850) bm!403852))

(assert (= (or b!5472997 b!5472999) bm!403851))

(assert (= (or b!5472997 bm!403852) bm!403847))

(declare-fun m!6490428 () Bool)

(assert (=> bm!403851 m!6490428))

(declare-fun m!6490430 () Bool)

(assert (=> bm!403847 m!6490430))

(declare-fun m!6490432 () Bool)

(assert (=> b!5473007 m!6490432))

(declare-fun m!6490434 () Bool)

(assert (=> bm!403848 m!6490434))

(assert (=> b!5472998 m!6490106))

(assert (=> b!5472459 d!1739560))

(declare-fun d!1739562 () Bool)

(assert (=> d!1739562 (= (flatMap!1043 lt!2235462 lambda!291345) (choose!41630 lt!2235462 lambda!291345))))

(declare-fun bs!1265225 () Bool)

(assert (= bs!1265225 d!1739562))

(declare-fun m!6490438 () Bool)

(assert (=> bs!1265225 m!6490438))

(assert (=> b!5472459 d!1739562))

(declare-fun b!5473008 () Bool)

(declare-fun e!3387854 () (Set Context!9448))

(declare-fun call!403858 () (Set Context!9448))

(assert (=> b!5473008 (= e!3387854 call!403858)))

(declare-fun d!1739566 () Bool)

(declare-fun c!956251 () Bool)

(declare-fun e!3387853 () Bool)

(assert (=> d!1739566 (= c!956251 e!3387853)))

(declare-fun res!2332440 () Bool)

(assert (=> d!1739566 (=> (not res!2332440) (not e!3387853))))

(assert (=> d!1739566 (= res!2332440 (is-Cons!62195 (exprs!5224 lt!2235481)))))

(declare-fun e!3387852 () (Set Context!9448))

(assert (=> d!1739566 (= (derivationStepZipperUp!692 lt!2235481 (h!68645 s!2326)) e!3387852)))

(declare-fun b!5473009 () Bool)

(assert (=> b!5473009 (= e!3387853 (nullable!5479 (h!68643 (exprs!5224 lt!2235481))))))

(declare-fun b!5473010 () Bool)

(assert (=> b!5473010 (= e!3387852 e!3387854)))

(declare-fun c!956252 () Bool)

(assert (=> b!5473010 (= c!956252 (is-Cons!62195 (exprs!5224 lt!2235481)))))

(declare-fun bm!403853 () Bool)

(assert (=> bm!403853 (= call!403858 (derivationStepZipperDown!766 (h!68643 (exprs!5224 lt!2235481)) (Context!9449 (t!375548 (exprs!5224 lt!2235481))) (h!68645 s!2326)))))

(declare-fun b!5473011 () Bool)

(assert (=> b!5473011 (= e!3387852 (set.union call!403858 (derivationStepZipperUp!692 (Context!9449 (t!375548 (exprs!5224 lt!2235481))) (h!68645 s!2326))))))

(declare-fun b!5473012 () Bool)

(assert (=> b!5473012 (= e!3387854 (as set.empty (Set Context!9448)))))

(assert (= (and d!1739566 res!2332440) b!5473009))

(assert (= (and d!1739566 c!956251) b!5473011))

(assert (= (and d!1739566 (not c!956251)) b!5473010))

(assert (= (and b!5473010 c!956252) b!5473008))

(assert (= (and b!5473010 (not c!956252)) b!5473012))

(assert (= (or b!5473011 b!5473008) bm!403853))

(declare-fun m!6490440 () Bool)

(assert (=> b!5473009 m!6490440))

(declare-fun m!6490442 () Bool)

(assert (=> bm!403853 m!6490442))

(declare-fun m!6490444 () Bool)

(assert (=> b!5473011 m!6490444))

(assert (=> b!5472459 d!1739566))

(declare-fun d!1739568 () Bool)

(assert (=> d!1739568 (= (flatMap!1043 lt!2235462 lambda!291345) (dynLambda!24426 lambda!291345 lt!2235481))))

(declare-fun lt!2235614 () Unit!155130)

(assert (=> d!1739568 (= lt!2235614 (choose!41631 lt!2235462 lt!2235481 lambda!291345))))

(assert (=> d!1739568 (= lt!2235462 (set.insert lt!2235481 (as set.empty (Set Context!9448))))))

(assert (=> d!1739568 (= (lemmaFlatMapOnSingletonSet!575 lt!2235462 lt!2235481 lambda!291345) lt!2235614)))

(declare-fun b_lambda!208013 () Bool)

(assert (=> (not b_lambda!208013) (not d!1739568)))

(declare-fun bs!1265226 () Bool)

(assert (= bs!1265226 d!1739568))

(assert (=> bs!1265226 m!6490120))

(declare-fun m!6490446 () Bool)

(assert (=> bs!1265226 m!6490446))

(declare-fun m!6490448 () Bool)

(assert (=> bs!1265226 m!6490448))

(assert (=> bs!1265226 m!6490124))

(assert (=> b!5472459 d!1739568))

(declare-fun b!5473013 () Bool)

(declare-fun e!3387859 () Bool)

(declare-fun e!3387855 () Bool)

(assert (=> b!5473013 (= e!3387859 e!3387855)))

(declare-fun c!956253 () Bool)

(assert (=> b!5473013 (= c!956253 (is-Union!15340 r!7292))))

(declare-fun bm!403854 () Bool)

(declare-fun call!403859 () Bool)

(declare-fun call!403860 () Bool)

(assert (=> bm!403854 (= call!403859 call!403860)))

(declare-fun c!956254 () Bool)

(declare-fun bm!403855 () Bool)

(assert (=> bm!403855 (= call!403860 (validRegex!7076 (ite c!956254 (reg!15669 r!7292) (ite c!956253 (regTwo!31193 r!7292) (regTwo!31192 r!7292)))))))

(declare-fun b!5473015 () Bool)

(declare-fun res!2332441 () Bool)

(declare-fun e!3387860 () Bool)

(assert (=> b!5473015 (=> res!2332441 e!3387860)))

(assert (=> b!5473015 (= res!2332441 (not (is-Concat!24185 r!7292)))))

(assert (=> b!5473015 (= e!3387855 e!3387860)))

(declare-fun bm!403856 () Bool)

(declare-fun call!403861 () Bool)

(assert (=> bm!403856 (= call!403861 (validRegex!7076 (ite c!956253 (regOne!31193 r!7292) (regOne!31192 r!7292))))))

(declare-fun b!5473016 () Bool)

(declare-fun e!3387857 () Bool)

(assert (=> b!5473016 (= e!3387857 call!403860)))

(declare-fun b!5473017 () Bool)

(declare-fun e!3387861 () Bool)

(assert (=> b!5473017 (= e!3387861 e!3387859)))

(assert (=> b!5473017 (= c!956254 (is-Star!15340 r!7292))))

(declare-fun b!5473018 () Bool)

(declare-fun e!3387856 () Bool)

(assert (=> b!5473018 (= e!3387856 call!403859)))

(declare-fun b!5473019 () Bool)

(declare-fun e!3387858 () Bool)

(assert (=> b!5473019 (= e!3387860 e!3387858)))

(declare-fun res!2332443 () Bool)

(assert (=> b!5473019 (=> (not res!2332443) (not e!3387858))))

(assert (=> b!5473019 (= res!2332443 call!403861)))

(declare-fun b!5473020 () Bool)

(assert (=> b!5473020 (= e!3387858 call!403859)))

(declare-fun b!5473021 () Bool)

(assert (=> b!5473021 (= e!3387859 e!3387857)))

(declare-fun res!2332444 () Bool)

(assert (=> b!5473021 (= res!2332444 (not (nullable!5479 (reg!15669 r!7292))))))

(assert (=> b!5473021 (=> (not res!2332444) (not e!3387857))))

(declare-fun b!5473014 () Bool)

(declare-fun res!2332445 () Bool)

(assert (=> b!5473014 (=> (not res!2332445) (not e!3387856))))

(assert (=> b!5473014 (= res!2332445 call!403861)))

(assert (=> b!5473014 (= e!3387855 e!3387856)))

(declare-fun d!1739570 () Bool)

(declare-fun res!2332442 () Bool)

(assert (=> d!1739570 (=> res!2332442 e!3387861)))

(assert (=> d!1739570 (= res!2332442 (is-ElementMatch!15340 r!7292))))

(assert (=> d!1739570 (= (validRegex!7076 r!7292) e!3387861)))

(assert (= (and d!1739570 (not res!2332442)) b!5473017))

(assert (= (and b!5473017 c!956254) b!5473021))

(assert (= (and b!5473017 (not c!956254)) b!5473013))

(assert (= (and b!5473021 res!2332444) b!5473016))

(assert (= (and b!5473013 c!956253) b!5473014))

(assert (= (and b!5473013 (not c!956253)) b!5473015))

(assert (= (and b!5473014 res!2332445) b!5473018))

(assert (= (and b!5473015 (not res!2332441)) b!5473019))

(assert (= (and b!5473019 res!2332443) b!5473020))

(assert (= (or b!5473018 b!5473020) bm!403854))

(assert (= (or b!5473014 b!5473019) bm!403856))

(assert (= (or b!5473016 bm!403854) bm!403855))

(declare-fun m!6490452 () Bool)

(assert (=> bm!403855 m!6490452))

(declare-fun m!6490454 () Bool)

(assert (=> bm!403856 m!6490454))

(declare-fun m!6490456 () Bool)

(assert (=> b!5473021 m!6490456))

(assert (=> start!572700 d!1739570))

(declare-fun bs!1265229 () Bool)

(declare-fun d!1739574 () Bool)

(assert (= bs!1265229 (and d!1739574 b!5472479)))

(declare-fun lambda!291408 () Int)

(assert (=> bs!1265229 (not (= lambda!291408 lambda!291344))))

(assert (=> bs!1265229 (= lambda!291408 lambda!291342)))

(declare-fun bs!1265230 () Bool)

(assert (= bs!1265230 (and d!1739574 b!5472929)))

(assert (=> bs!1265230 (not (= lambda!291408 lambda!291402))))

(declare-fun bs!1265231 () Bool)

(assert (= bs!1265231 (and d!1739574 b!5472934)))

(assert (=> bs!1265231 (not (= lambda!291408 lambda!291401))))

(assert (=> bs!1265229 (not (= lambda!291408 lambda!291343))))

(declare-fun bs!1265232 () Bool)

(assert (= bs!1265232 (and d!1739574 b!5472710)))

(assert (=> bs!1265232 (not (= lambda!291408 lambda!291385))))

(declare-fun bs!1265233 () Bool)

(assert (= bs!1265233 (and d!1739574 b!5472715)))

(assert (=> bs!1265233 (not (= lambda!291408 lambda!291384))))

(assert (=> d!1739574 true))

(assert (=> d!1739574 true))

(assert (=> d!1739574 true))

(declare-fun bs!1265234 () Bool)

(assert (= bs!1265234 d!1739574))

(declare-fun lambda!291409 () Int)

(assert (=> bs!1265234 (not (= lambda!291409 lambda!291408))))

(assert (=> bs!1265229 (= lambda!291409 lambda!291344)))

(assert (=> bs!1265229 (not (= lambda!291409 lambda!291342))))

(assert (=> bs!1265230 (= (and (= (reg!15669 r!7292) (regOne!31192 r!7292)) (= r!7292 (regTwo!31192 r!7292))) (= lambda!291409 lambda!291402))))

(assert (=> bs!1265231 (not (= lambda!291409 lambda!291401))))

(assert (=> bs!1265229 (not (= lambda!291409 lambda!291343))))

(assert (=> bs!1265232 (= (and (= (reg!15669 r!7292) (regOne!31192 lt!2235483)) (= r!7292 (regTwo!31192 lt!2235483))) (= lambda!291409 lambda!291385))))

(assert (=> bs!1265233 (not (= lambda!291409 lambda!291384))))

(assert (=> d!1739574 true))

(assert (=> d!1739574 true))

(assert (=> d!1739574 true))

(assert (=> d!1739574 (= (Exists!2519 lambda!291408) (Exists!2519 lambda!291409))))

(declare-fun lt!2235620 () Unit!155130)

(declare-fun choose!41632 (Regex!15340 Regex!15340 List!62321) Unit!155130)

(assert (=> d!1739574 (= lt!2235620 (choose!41632 (reg!15669 r!7292) r!7292 s!2326))))

(assert (=> d!1739574 (validRegex!7076 (reg!15669 r!7292))))

(assert (=> d!1739574 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1169 (reg!15669 r!7292) r!7292 s!2326) lt!2235620)))

(declare-fun m!6490462 () Bool)

(assert (=> bs!1265234 m!6490462))

(declare-fun m!6490464 () Bool)

(assert (=> bs!1265234 m!6490464))

(declare-fun m!6490466 () Bool)

(assert (=> bs!1265234 m!6490466))

(assert (=> bs!1265234 m!6490044))

(assert (=> b!5472479 d!1739574))

(declare-fun d!1739578 () Bool)

(declare-fun isEmpty!34161 (Option!15449) Bool)

(assert (=> d!1739578 (= (isDefined!12152 lt!2235460) (not (isEmpty!34161 lt!2235460)))))

(declare-fun bs!1265235 () Bool)

(assert (= bs!1265235 d!1739578))

(declare-fun m!6490468 () Bool)

(assert (=> bs!1265235 m!6490468))

(assert (=> b!5472479 d!1739578))

(declare-fun d!1739580 () Bool)

(assert (=> d!1739580 (= (isEmpty!34156 s!2326) (is-Nil!62197 s!2326))))

(assert (=> b!5472479 d!1739580))

(assert (=> b!5472479 d!1739514))

(declare-fun bs!1265240 () Bool)

(declare-fun d!1739582 () Bool)

(assert (= bs!1265240 (and d!1739582 d!1739574)))

(declare-fun lambda!291417 () Int)

(assert (=> bs!1265240 (= (= (Star!15340 (reg!15669 r!7292)) r!7292) (= lambda!291417 lambda!291408))))

(declare-fun bs!1265241 () Bool)

(assert (= bs!1265241 (and d!1739582 b!5472479)))

(assert (=> bs!1265241 (not (= lambda!291417 lambda!291344))))

(assert (=> bs!1265241 (= (= (Star!15340 (reg!15669 r!7292)) r!7292) (= lambda!291417 lambda!291342))))

(assert (=> bs!1265240 (not (= lambda!291417 lambda!291409))))

(declare-fun bs!1265242 () Bool)

(assert (= bs!1265242 (and d!1739582 b!5472929)))

(assert (=> bs!1265242 (not (= lambda!291417 lambda!291402))))

(declare-fun bs!1265243 () Bool)

(assert (= bs!1265243 (and d!1739582 b!5472934)))

(assert (=> bs!1265243 (not (= lambda!291417 lambda!291401))))

(assert (=> bs!1265241 (not (= lambda!291417 lambda!291343))))

(declare-fun bs!1265244 () Bool)

(assert (= bs!1265244 (and d!1739582 b!5472710)))

(assert (=> bs!1265244 (not (= lambda!291417 lambda!291385))))

(declare-fun bs!1265245 () Bool)

(assert (= bs!1265245 (and d!1739582 b!5472715)))

(assert (=> bs!1265245 (not (= lambda!291417 lambda!291384))))

(assert (=> d!1739582 true))

(assert (=> d!1739582 true))

(declare-fun bs!1265247 () Bool)

(assert (= bs!1265247 d!1739582))

(declare-fun lambda!291418 () Int)

(assert (=> bs!1265247 (not (= lambda!291418 lambda!291417))))

(assert (=> bs!1265240 (not (= lambda!291418 lambda!291408))))

(assert (=> bs!1265241 (not (= lambda!291418 lambda!291344))))

(assert (=> bs!1265241 (not (= lambda!291418 lambda!291342))))

(assert (=> bs!1265240 (not (= lambda!291418 lambda!291409))))

(assert (=> bs!1265242 (not (= lambda!291418 lambda!291402))))

(assert (=> bs!1265243 (= (= (Star!15340 (reg!15669 r!7292)) r!7292) (= lambda!291418 lambda!291401))))

(assert (=> bs!1265241 (= (= (Star!15340 (reg!15669 r!7292)) r!7292) (= lambda!291418 lambda!291343))))

(assert (=> bs!1265244 (not (= lambda!291418 lambda!291385))))

(assert (=> bs!1265245 (= (and (= (reg!15669 r!7292) (reg!15669 lt!2235483)) (= (Star!15340 (reg!15669 r!7292)) lt!2235483)) (= lambda!291418 lambda!291384))))

(assert (=> d!1739582 true))

(assert (=> d!1739582 true))

(assert (=> d!1739582 (= (Exists!2519 lambda!291417) (Exists!2519 lambda!291418))))

(declare-fun lt!2235624 () Unit!155130)

(declare-fun choose!41635 (Regex!15340 List!62321) Unit!155130)

(assert (=> d!1739582 (= lt!2235624 (choose!41635 (reg!15669 r!7292) s!2326))))

(assert (=> d!1739582 (validRegex!7076 (reg!15669 r!7292))))

(assert (=> d!1739582 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!493 (reg!15669 r!7292) s!2326) lt!2235624)))

(declare-fun m!6490496 () Bool)

(assert (=> bs!1265247 m!6490496))

(declare-fun m!6490498 () Bool)

(assert (=> bs!1265247 m!6490498))

(declare-fun m!6490500 () Bool)

(assert (=> bs!1265247 m!6490500))

(assert (=> bs!1265247 m!6490044))

(assert (=> b!5472479 d!1739582))

(declare-fun d!1739596 () Bool)

(declare-fun e!3387909 () Bool)

(assert (=> d!1739596 e!3387909))

(declare-fun res!2332484 () Bool)

(assert (=> d!1739596 (=> res!2332484 e!3387909)))

(declare-fun e!3387908 () Bool)

(assert (=> d!1739596 (= res!2332484 e!3387908)))

(declare-fun res!2332483 () Bool)

(assert (=> d!1739596 (=> (not res!2332483) (not e!3387908))))

(declare-fun lt!2235637 () Option!15449)

(assert (=> d!1739596 (= res!2332483 (isDefined!12152 lt!2235637))))

(declare-fun e!3387907 () Option!15449)

(assert (=> d!1739596 (= lt!2235637 e!3387907)))

(declare-fun c!956280 () Bool)

(declare-fun e!3387911 () Bool)

(assert (=> d!1739596 (= c!956280 e!3387911)))

(declare-fun res!2332487 () Bool)

(assert (=> d!1739596 (=> (not res!2332487) (not e!3387911))))

(assert (=> d!1739596 (= res!2332487 (matchR!7525 (reg!15669 r!7292) Nil!62197))))

(assert (=> d!1739596 (validRegex!7076 (reg!15669 r!7292))))

(assert (=> d!1739596 (= (findConcatSeparation!1863 (reg!15669 r!7292) r!7292 Nil!62197 s!2326 s!2326) lt!2235637)))

(declare-fun b!5473105 () Bool)

(declare-fun res!2332486 () Bool)

(assert (=> b!5473105 (=> (not res!2332486) (not e!3387908))))

(assert (=> b!5473105 (= res!2332486 (matchR!7525 r!7292 (_2!35840 (get!21441 lt!2235637))))))

(declare-fun b!5473106 () Bool)

(assert (=> b!5473106 (= e!3387911 (matchR!7525 r!7292 s!2326))))

(declare-fun b!5473107 () Bool)

(assert (=> b!5473107 (= e!3387908 (= (++!13677 (_1!35840 (get!21441 lt!2235637)) (_2!35840 (get!21441 lt!2235637))) s!2326))))

(declare-fun b!5473108 () Bool)

(assert (=> b!5473108 (= e!3387907 (Some!15448 (tuple2!65075 Nil!62197 s!2326)))))

(declare-fun b!5473109 () Bool)

(declare-fun lt!2235638 () Unit!155130)

(declare-fun lt!2235639 () Unit!155130)

(assert (=> b!5473109 (= lt!2235638 lt!2235639)))

(assert (=> b!5473109 (= (++!13677 (++!13677 Nil!62197 (Cons!62197 (h!68645 s!2326) Nil!62197)) (t!375550 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1898 (List!62321 C!30950 List!62321 List!62321) Unit!155130)

(assert (=> b!5473109 (= lt!2235639 (lemmaMoveElementToOtherListKeepsConcatEq!1898 Nil!62197 (h!68645 s!2326) (t!375550 s!2326) s!2326))))

(declare-fun e!3387910 () Option!15449)

(assert (=> b!5473109 (= e!3387910 (findConcatSeparation!1863 (reg!15669 r!7292) r!7292 (++!13677 Nil!62197 (Cons!62197 (h!68645 s!2326) Nil!62197)) (t!375550 s!2326) s!2326))))

(declare-fun b!5473110 () Bool)

(assert (=> b!5473110 (= e!3387910 None!15448)))

(declare-fun b!5473111 () Bool)

(assert (=> b!5473111 (= e!3387907 e!3387910)))

(declare-fun c!956279 () Bool)

(assert (=> b!5473111 (= c!956279 (is-Nil!62197 s!2326))))

(declare-fun b!5473112 () Bool)

(assert (=> b!5473112 (= e!3387909 (not (isDefined!12152 lt!2235637)))))

(declare-fun b!5473113 () Bool)

(declare-fun res!2332485 () Bool)

(assert (=> b!5473113 (=> (not res!2332485) (not e!3387908))))

(assert (=> b!5473113 (= res!2332485 (matchR!7525 (reg!15669 r!7292) (_1!35840 (get!21441 lt!2235637))))))

(assert (= (and d!1739596 res!2332487) b!5473106))

(assert (= (and d!1739596 c!956280) b!5473108))

(assert (= (and d!1739596 (not c!956280)) b!5473111))

(assert (= (and b!5473111 c!956279) b!5473110))

(assert (= (and b!5473111 (not c!956279)) b!5473109))

(assert (= (and d!1739596 res!2332483) b!5473113))

(assert (= (and b!5473113 res!2332485) b!5473105))

(assert (= (and b!5473105 res!2332486) b!5473107))

(assert (= (and d!1739596 (not res!2332484)) b!5473112))

(declare-fun m!6490508 () Bool)

(assert (=> b!5473107 m!6490508))

(declare-fun m!6490510 () Bool)

(assert (=> b!5473107 m!6490510))

(assert (=> b!5473106 m!6490038))

(declare-fun m!6490512 () Bool)

(assert (=> d!1739596 m!6490512))

(declare-fun m!6490514 () Bool)

(assert (=> d!1739596 m!6490514))

(assert (=> d!1739596 m!6490044))

(assert (=> b!5473113 m!6490508))

(declare-fun m!6490516 () Bool)

(assert (=> b!5473113 m!6490516))

(assert (=> b!5473112 m!6490512))

(declare-fun m!6490518 () Bool)

(assert (=> b!5473109 m!6490518))

(assert (=> b!5473109 m!6490518))

(declare-fun m!6490520 () Bool)

(assert (=> b!5473109 m!6490520))

(declare-fun m!6490522 () Bool)

(assert (=> b!5473109 m!6490522))

(assert (=> b!5473109 m!6490518))

(declare-fun m!6490524 () Bool)

(assert (=> b!5473109 m!6490524))

(assert (=> b!5473105 m!6490508))

(declare-fun m!6490526 () Bool)

(assert (=> b!5473105 m!6490526))

(assert (=> b!5472479 d!1739596))

(assert (=> b!5472479 d!1739516))

(declare-fun d!1739600 () Bool)

(assert (=> d!1739600 (= (Exists!2519 lambda!291344) (choose!41628 lambda!291344))))

(declare-fun bs!1265248 () Bool)

(assert (= bs!1265248 d!1739600))

(declare-fun m!6490528 () Bool)

(assert (=> bs!1265248 m!6490528))

(assert (=> b!5472479 d!1739600))

(declare-fun bs!1265249 () Bool)

(declare-fun d!1739602 () Bool)

(assert (= bs!1265249 (and d!1739602 d!1739582)))

(declare-fun lambda!291421 () Int)

(assert (=> bs!1265249 (= (= r!7292 (Star!15340 (reg!15669 r!7292))) (= lambda!291421 lambda!291417))))

(declare-fun bs!1265250 () Bool)

(assert (= bs!1265250 (and d!1739602 d!1739574)))

(assert (=> bs!1265250 (= lambda!291421 lambda!291408)))

(declare-fun bs!1265251 () Bool)

(assert (= bs!1265251 (and d!1739602 b!5472479)))

(assert (=> bs!1265251 (not (= lambda!291421 lambda!291344))))

(assert (=> bs!1265251 (= lambda!291421 lambda!291342)))

(assert (=> bs!1265250 (not (= lambda!291421 lambda!291409))))

(declare-fun bs!1265252 () Bool)

(assert (= bs!1265252 (and d!1739602 b!5472929)))

(assert (=> bs!1265252 (not (= lambda!291421 lambda!291402))))

(declare-fun bs!1265254 () Bool)

(assert (= bs!1265254 (and d!1739602 b!5472934)))

(assert (=> bs!1265254 (not (= lambda!291421 lambda!291401))))

(assert (=> bs!1265251 (not (= lambda!291421 lambda!291343))))

(assert (=> bs!1265249 (not (= lambda!291421 lambda!291418))))

(declare-fun bs!1265255 () Bool)

(assert (= bs!1265255 (and d!1739602 b!5472710)))

(assert (=> bs!1265255 (not (= lambda!291421 lambda!291385))))

(declare-fun bs!1265256 () Bool)

(assert (= bs!1265256 (and d!1739602 b!5472715)))

(assert (=> bs!1265256 (not (= lambda!291421 lambda!291384))))

(assert (=> d!1739602 true))

(assert (=> d!1739602 true))

(assert (=> d!1739602 true))

(assert (=> d!1739602 (= (isDefined!12152 (findConcatSeparation!1863 (reg!15669 r!7292) r!7292 Nil!62197 s!2326 s!2326)) (Exists!2519 lambda!291421))))

(declare-fun lt!2235642 () Unit!155130)

(declare-fun choose!41637 (Regex!15340 Regex!15340 List!62321) Unit!155130)

(assert (=> d!1739602 (= lt!2235642 (choose!41637 (reg!15669 r!7292) r!7292 s!2326))))

(assert (=> d!1739602 (validRegex!7076 (reg!15669 r!7292))))

(assert (=> d!1739602 (= (lemmaFindConcatSeparationEquivalentToExists!1627 (reg!15669 r!7292) r!7292 s!2326) lt!2235642)))

(declare-fun bs!1265257 () Bool)

(assert (= bs!1265257 d!1739602))

(assert (=> bs!1265257 m!6490064))

(declare-fun m!6490542 () Bool)

(assert (=> bs!1265257 m!6490542))

(declare-fun m!6490544 () Bool)

(assert (=> bs!1265257 m!6490544))

(assert (=> bs!1265257 m!6490064))

(declare-fun m!6490550 () Bool)

(assert (=> bs!1265257 m!6490550))

(assert (=> bs!1265257 m!6490044))

(assert (=> b!5472479 d!1739602))

(declare-fun bs!1265258 () Bool)

(declare-fun d!1739610 () Bool)

(assert (= bs!1265258 (and d!1739610 b!5472467)))

(declare-fun lambda!291422 () Int)

(assert (=> bs!1265258 (= lambda!291422 lambda!291345)))

(declare-fun bs!1265259 () Bool)

(assert (= bs!1265259 (and d!1739610 d!1739524)))

(assert (=> bs!1265259 (= lambda!291422 lambda!291397)))

(assert (=> d!1739610 true))

(assert (=> d!1739610 (= (derivationStepZipper!1535 lt!2235473 (h!68645 s!2326)) (flatMap!1043 lt!2235473 lambda!291422))))

(declare-fun bs!1265261 () Bool)

(assert (= bs!1265261 d!1739610))

(declare-fun m!6490552 () Bool)

(assert (=> bs!1265261 m!6490552))

(assert (=> b!5472488 d!1739610))

(declare-fun b!5473134 () Bool)

(declare-fun e!3387925 () (Set Context!9448))

(declare-fun call!403885 () (Set Context!9448))

(assert (=> b!5473134 (= e!3387925 call!403885)))

(declare-fun d!1739612 () Bool)

(declare-fun c!956288 () Bool)

(declare-fun e!3387924 () Bool)

(assert (=> d!1739612 (= c!956288 e!3387924)))

(declare-fun res!2332494 () Bool)

(assert (=> d!1739612 (=> (not res!2332494) (not e!3387924))))

(assert (=> d!1739612 (= res!2332494 (is-Cons!62195 (exprs!5224 lt!2235474)))))

(declare-fun e!3387923 () (Set Context!9448))

(assert (=> d!1739612 (= (derivationStepZipperUp!692 lt!2235474 (h!68645 s!2326)) e!3387923)))

(declare-fun b!5473135 () Bool)

(assert (=> b!5473135 (= e!3387924 (nullable!5479 (h!68643 (exprs!5224 lt!2235474))))))

(declare-fun b!5473136 () Bool)

(assert (=> b!5473136 (= e!3387923 e!3387925)))

(declare-fun c!956289 () Bool)

(assert (=> b!5473136 (= c!956289 (is-Cons!62195 (exprs!5224 lt!2235474)))))

(declare-fun bm!403880 () Bool)

(assert (=> bm!403880 (= call!403885 (derivationStepZipperDown!766 (h!68643 (exprs!5224 lt!2235474)) (Context!9449 (t!375548 (exprs!5224 lt!2235474))) (h!68645 s!2326)))))

(declare-fun b!5473137 () Bool)

(assert (=> b!5473137 (= e!3387923 (set.union call!403885 (derivationStepZipperUp!692 (Context!9449 (t!375548 (exprs!5224 lt!2235474))) (h!68645 s!2326))))))

(declare-fun b!5473138 () Bool)

(assert (=> b!5473138 (= e!3387925 (as set.empty (Set Context!9448)))))

(assert (= (and d!1739612 res!2332494) b!5473135))

(assert (= (and d!1739612 c!956288) b!5473137))

(assert (= (and d!1739612 (not c!956288)) b!5473136))

(assert (= (and b!5473136 c!956289) b!5473134))

(assert (= (and b!5473136 (not c!956289)) b!5473138))

(assert (= (or b!5473137 b!5473134) bm!403880))

(declare-fun m!6490558 () Bool)

(assert (=> b!5473135 m!6490558))

(declare-fun m!6490560 () Bool)

(assert (=> bm!403880 m!6490560))

(declare-fun m!6490562 () Bool)

(assert (=> b!5473137 m!6490562))

(assert (=> b!5472488 d!1739612))

(declare-fun d!1739616 () Bool)

(assert (=> d!1739616 (= (flatMap!1043 lt!2235486 lambda!291345) (dynLambda!24426 lambda!291345 lt!2235474))))

(declare-fun lt!2235644 () Unit!155130)

(assert (=> d!1739616 (= lt!2235644 (choose!41631 lt!2235486 lt!2235474 lambda!291345))))

(assert (=> d!1739616 (= lt!2235486 (set.insert lt!2235474 (as set.empty (Set Context!9448))))))

(assert (=> d!1739616 (= (lemmaFlatMapOnSingletonSet!575 lt!2235486 lt!2235474 lambda!291345) lt!2235644)))

(declare-fun b_lambda!208021 () Bool)

(assert (=> (not b_lambda!208021) (not d!1739616)))

(declare-fun bs!1265262 () Bool)

(assert (= bs!1265262 d!1739616))

(assert (=> bs!1265262 m!6490102))

(declare-fun m!6490564 () Bool)

(assert (=> bs!1265262 m!6490564))

(declare-fun m!6490566 () Bool)

(assert (=> bs!1265262 m!6490566))

(assert (=> bs!1265262 m!6490108))

(assert (=> b!5472488 d!1739616))

(declare-fun d!1739618 () Bool)

(assert (=> d!1739618 (= (flatMap!1043 lt!2235473 lambda!291345) (dynLambda!24426 lambda!291345 lt!2235476))))

(declare-fun lt!2235645 () Unit!155130)

(assert (=> d!1739618 (= lt!2235645 (choose!41631 lt!2235473 lt!2235476 lambda!291345))))

(assert (=> d!1739618 (= lt!2235473 (set.insert lt!2235476 (as set.empty (Set Context!9448))))))

(assert (=> d!1739618 (= (lemmaFlatMapOnSingletonSet!575 lt!2235473 lt!2235476 lambda!291345) lt!2235645)))

(declare-fun b_lambda!208023 () Bool)

(assert (=> (not b_lambda!208023) (not d!1739618)))

(declare-fun bs!1265263 () Bool)

(assert (= bs!1265263 d!1739618))

(assert (=> bs!1265263 m!6490104))

(declare-fun m!6490568 () Bool)

(assert (=> bs!1265263 m!6490568))

(declare-fun m!6490570 () Bool)

(assert (=> bs!1265263 m!6490570))

(assert (=> bs!1265263 m!6490106))

(assert (=> b!5472488 d!1739618))

(declare-fun b!5473139 () Bool)

(declare-fun e!3387928 () (Set Context!9448))

(declare-fun call!403886 () (Set Context!9448))

(assert (=> b!5473139 (= e!3387928 call!403886)))

(declare-fun d!1739620 () Bool)

(declare-fun c!956290 () Bool)

(declare-fun e!3387927 () Bool)

(assert (=> d!1739620 (= c!956290 e!3387927)))

(declare-fun res!2332495 () Bool)

(assert (=> d!1739620 (=> (not res!2332495) (not e!3387927))))

(assert (=> d!1739620 (= res!2332495 (is-Cons!62195 (exprs!5224 lt!2235476)))))

(declare-fun e!3387926 () (Set Context!9448))

(assert (=> d!1739620 (= (derivationStepZipperUp!692 lt!2235476 (h!68645 s!2326)) e!3387926)))

(declare-fun b!5473140 () Bool)

(assert (=> b!5473140 (= e!3387927 (nullable!5479 (h!68643 (exprs!5224 lt!2235476))))))

(declare-fun b!5473141 () Bool)

(assert (=> b!5473141 (= e!3387926 e!3387928)))

(declare-fun c!956291 () Bool)

(assert (=> b!5473141 (= c!956291 (is-Cons!62195 (exprs!5224 lt!2235476)))))

(declare-fun bm!403881 () Bool)

(assert (=> bm!403881 (= call!403886 (derivationStepZipperDown!766 (h!68643 (exprs!5224 lt!2235476)) (Context!9449 (t!375548 (exprs!5224 lt!2235476))) (h!68645 s!2326)))))

(declare-fun b!5473142 () Bool)

(assert (=> b!5473142 (= e!3387926 (set.union call!403886 (derivationStepZipperUp!692 (Context!9449 (t!375548 (exprs!5224 lt!2235476))) (h!68645 s!2326))))))

(declare-fun b!5473143 () Bool)

(assert (=> b!5473143 (= e!3387928 (as set.empty (Set Context!9448)))))

(assert (= (and d!1739620 res!2332495) b!5473140))

(assert (= (and d!1739620 c!956290) b!5473142))

(assert (= (and d!1739620 (not c!956290)) b!5473141))

(assert (= (and b!5473141 c!956291) b!5473139))

(assert (= (and b!5473141 (not c!956291)) b!5473143))

(assert (= (or b!5473142 b!5473139) bm!403881))

(declare-fun m!6490572 () Bool)

(assert (=> b!5473140 m!6490572))

(declare-fun m!6490574 () Bool)

(assert (=> bm!403881 m!6490574))

(declare-fun m!6490576 () Bool)

(assert (=> b!5473142 m!6490576))

(assert (=> b!5472488 d!1739620))

(declare-fun d!1739622 () Bool)

(assert (=> d!1739622 (= (flatMap!1043 lt!2235486 lambda!291345) (choose!41630 lt!2235486 lambda!291345))))

(declare-fun bs!1265264 () Bool)

(assert (= bs!1265264 d!1739622))

(declare-fun m!6490578 () Bool)

(assert (=> bs!1265264 m!6490578))

(assert (=> b!5472488 d!1739622))

(declare-fun d!1739624 () Bool)

(assert (=> d!1739624 (= (flatMap!1043 lt!2235473 lambda!291345) (choose!41630 lt!2235473 lambda!291345))))

(declare-fun bs!1265265 () Bool)

(assert (= bs!1265265 d!1739624))

(declare-fun m!6490580 () Bool)

(assert (=> bs!1265265 m!6490580))

(assert (=> b!5472488 d!1739624))

(declare-fun d!1739626 () Bool)

(declare-fun c!956294 () Bool)

(assert (=> d!1739626 (= c!956294 (isEmpty!34156 s!2326))))

(declare-fun e!3387931 () Bool)

(assert (=> d!1739626 (= (matchZipper!1558 lt!2235462 s!2326) e!3387931)))

(declare-fun b!5473148 () Bool)

(declare-fun nullableZipper!1501 ((Set Context!9448)) Bool)

(assert (=> b!5473148 (= e!3387931 (nullableZipper!1501 lt!2235462))))

(declare-fun b!5473149 () Bool)

(assert (=> b!5473149 (= e!3387931 (matchZipper!1558 (derivationStepZipper!1535 lt!2235462 (head!11724 s!2326)) (tail!10821 s!2326)))))

(assert (= (and d!1739626 c!956294) b!5473148))

(assert (= (and d!1739626 (not c!956294)) b!5473149))

(assert (=> d!1739626 m!6490054))

(declare-fun m!6490584 () Bool)

(assert (=> b!5473148 m!6490584))

(assert (=> b!5473149 m!6490280))

(assert (=> b!5473149 m!6490280))

(declare-fun m!6490586 () Bool)

(assert (=> b!5473149 m!6490586))

(assert (=> b!5473149 m!6490284))

(assert (=> b!5473149 m!6490586))

(assert (=> b!5473149 m!6490284))

(declare-fun m!6490588 () Bool)

(assert (=> b!5473149 m!6490588))

(assert (=> b!5472458 d!1739626))

(declare-fun d!1739630 () Bool)

(declare-fun c!956295 () Bool)

(assert (=> d!1739630 (= c!956295 (isEmpty!34156 (t!375550 s!2326)))))

(declare-fun e!3387932 () Bool)

(assert (=> d!1739630 (= (matchZipper!1558 (derivationStepZipper!1535 lt!2235462 (h!68645 s!2326)) (t!375550 s!2326)) e!3387932)))

(declare-fun b!5473150 () Bool)

(assert (=> b!5473150 (= e!3387932 (nullableZipper!1501 (derivationStepZipper!1535 lt!2235462 (h!68645 s!2326))))))

(declare-fun b!5473151 () Bool)

(assert (=> b!5473151 (= e!3387932 (matchZipper!1558 (derivationStepZipper!1535 (derivationStepZipper!1535 lt!2235462 (h!68645 s!2326)) (head!11724 (t!375550 s!2326))) (tail!10821 (t!375550 s!2326))))))

(assert (= (and d!1739630 c!956295) b!5473150))

(assert (= (and d!1739630 (not c!956295)) b!5473151))

(declare-fun m!6490590 () Bool)

(assert (=> d!1739630 m!6490590))

(assert (=> b!5473150 m!6490094))

(declare-fun m!6490592 () Bool)

(assert (=> b!5473150 m!6490592))

(declare-fun m!6490594 () Bool)

(assert (=> b!5473151 m!6490594))

(assert (=> b!5473151 m!6490094))

(assert (=> b!5473151 m!6490594))

(declare-fun m!6490596 () Bool)

(assert (=> b!5473151 m!6490596))

(declare-fun m!6490598 () Bool)

(assert (=> b!5473151 m!6490598))

(assert (=> b!5473151 m!6490596))

(assert (=> b!5473151 m!6490598))

(declare-fun m!6490600 () Bool)

(assert (=> b!5473151 m!6490600))

(assert (=> b!5472458 d!1739630))

(declare-fun bs!1265267 () Bool)

(declare-fun d!1739632 () Bool)

(assert (= bs!1265267 (and d!1739632 b!5472467)))

(declare-fun lambda!291426 () Int)

(assert (=> bs!1265267 (= lambda!291426 lambda!291345)))

(declare-fun bs!1265268 () Bool)

(assert (= bs!1265268 (and d!1739632 d!1739524)))

(assert (=> bs!1265268 (= lambda!291426 lambda!291397)))

(declare-fun bs!1265269 () Bool)

(assert (= bs!1265269 (and d!1739632 d!1739610)))

(assert (=> bs!1265269 (= lambda!291426 lambda!291422)))

(assert (=> d!1739632 true))

(assert (=> d!1739632 (= (derivationStepZipper!1535 lt!2235462 (h!68645 s!2326)) (flatMap!1043 lt!2235462 lambda!291426))))

(declare-fun bs!1265270 () Bool)

(assert (= bs!1265270 d!1739632))

(declare-fun m!6490602 () Bool)

(assert (=> bs!1265270 m!6490602))

(assert (=> b!5472458 d!1739632))

(declare-fun b!5473159 () Bool)

(declare-fun e!3387938 () Bool)

(declare-fun tp!1504670 () Bool)

(assert (=> b!5473159 (= e!3387938 tp!1504670)))

(declare-fun b!5473158 () Bool)

(declare-fun tp!1504671 () Bool)

(declare-fun e!3387937 () Bool)

(assert (=> b!5473158 (= e!3387937 (and (inv!81598 (h!68644 (t!375549 zl!343))) e!3387938 tp!1504671))))

(assert (=> b!5472487 (= tp!1504635 e!3387937)))

(assert (= b!5473158 b!5473159))

(assert (= (and b!5472487 (is-Cons!62196 (t!375549 zl!343))) b!5473158))

(declare-fun m!6490604 () Bool)

(assert (=> b!5473158 m!6490604))

(declare-fun b!5473164 () Bool)

(declare-fun e!3387941 () Bool)

(declare-fun tp!1504674 () Bool)

(assert (=> b!5473164 (= e!3387941 (and tp_is_empty!39933 tp!1504674))))

(assert (=> b!5472457 (= tp!1504626 e!3387941)))

(assert (= (and b!5472457 (is-Cons!62197 (t!375550 s!2326))) b!5473164))

(declare-fun b!5473169 () Bool)

(declare-fun e!3387944 () Bool)

(declare-fun tp!1504679 () Bool)

(declare-fun tp!1504680 () Bool)

(assert (=> b!5473169 (= e!3387944 (and tp!1504679 tp!1504680))))

(assert (=> b!5472476 (= tp!1504634 e!3387944)))

(assert (= (and b!5472476 (is-Cons!62195 (exprs!5224 (h!68644 zl!343)))) b!5473169))

(declare-fun condSetEmpty!35932 () Bool)

(assert (=> setNonEmpty!35926 (= condSetEmpty!35932 (= setRest!35926 (as set.empty (Set Context!9448))))))

(declare-fun setRes!35932 () Bool)

(assert (=> setNonEmpty!35926 (= tp!1504630 setRes!35932)))

(declare-fun setIsEmpty!35932 () Bool)

(assert (=> setIsEmpty!35932 setRes!35932))

(declare-fun e!3387947 () Bool)

(declare-fun setNonEmpty!35932 () Bool)

(declare-fun tp!1504685 () Bool)

(declare-fun setElem!35932 () Context!9448)

(assert (=> setNonEmpty!35932 (= setRes!35932 (and tp!1504685 (inv!81598 setElem!35932) e!3387947))))

(declare-fun setRest!35932 () (Set Context!9448))

(assert (=> setNonEmpty!35932 (= setRest!35926 (set.union (set.insert setElem!35932 (as set.empty (Set Context!9448))) setRest!35932))))

(declare-fun b!5473174 () Bool)

(declare-fun tp!1504686 () Bool)

(assert (=> b!5473174 (= e!3387947 tp!1504686)))

(assert (= (and setNonEmpty!35926 condSetEmpty!35932) setIsEmpty!35932))

(assert (= (and setNonEmpty!35926 (not condSetEmpty!35932)) setNonEmpty!35932))

(assert (= setNonEmpty!35932 b!5473174))

(declare-fun m!6490606 () Bool)

(assert (=> setNonEmpty!35932 m!6490606))

(declare-fun b!5473185 () Bool)

(declare-fun e!3387950 () Bool)

(assert (=> b!5473185 (= e!3387950 tp_is_empty!39933)))

(declare-fun b!5473186 () Bool)

(declare-fun tp!1504699 () Bool)

(declare-fun tp!1504701 () Bool)

(assert (=> b!5473186 (= e!3387950 (and tp!1504699 tp!1504701))))

(assert (=> b!5472475 (= tp!1504631 e!3387950)))

(declare-fun b!5473188 () Bool)

(declare-fun tp!1504698 () Bool)

(declare-fun tp!1504697 () Bool)

(assert (=> b!5473188 (= e!3387950 (and tp!1504698 tp!1504697))))

(declare-fun b!5473187 () Bool)

(declare-fun tp!1504700 () Bool)

(assert (=> b!5473187 (= e!3387950 tp!1504700)))

(assert (= (and b!5472475 (is-ElementMatch!15340 (reg!15669 r!7292))) b!5473185))

(assert (= (and b!5472475 (is-Concat!24185 (reg!15669 r!7292))) b!5473186))

(assert (= (and b!5472475 (is-Star!15340 (reg!15669 r!7292))) b!5473187))

(assert (= (and b!5472475 (is-Union!15340 (reg!15669 r!7292))) b!5473188))

(declare-fun b!5473189 () Bool)

(declare-fun e!3387951 () Bool)

(assert (=> b!5473189 (= e!3387951 tp_is_empty!39933)))

(declare-fun b!5473190 () Bool)

(declare-fun tp!1504704 () Bool)

(declare-fun tp!1504706 () Bool)

(assert (=> b!5473190 (= e!3387951 (and tp!1504704 tp!1504706))))

(assert (=> b!5472480 (= tp!1504627 e!3387951)))

(declare-fun b!5473192 () Bool)

(declare-fun tp!1504703 () Bool)

(declare-fun tp!1504702 () Bool)

(assert (=> b!5473192 (= e!3387951 (and tp!1504703 tp!1504702))))

(declare-fun b!5473191 () Bool)

(declare-fun tp!1504705 () Bool)

(assert (=> b!5473191 (= e!3387951 tp!1504705)))

(assert (= (and b!5472480 (is-ElementMatch!15340 (regOne!31192 r!7292))) b!5473189))

(assert (= (and b!5472480 (is-Concat!24185 (regOne!31192 r!7292))) b!5473190))

(assert (= (and b!5472480 (is-Star!15340 (regOne!31192 r!7292))) b!5473191))

(assert (= (and b!5472480 (is-Union!15340 (regOne!31192 r!7292))) b!5473192))

(declare-fun b!5473193 () Bool)

(declare-fun e!3387952 () Bool)

(assert (=> b!5473193 (= e!3387952 tp_is_empty!39933)))

(declare-fun b!5473194 () Bool)

(declare-fun tp!1504709 () Bool)

(declare-fun tp!1504711 () Bool)

(assert (=> b!5473194 (= e!3387952 (and tp!1504709 tp!1504711))))

(assert (=> b!5472480 (= tp!1504629 e!3387952)))

(declare-fun b!5473196 () Bool)

(declare-fun tp!1504708 () Bool)

(declare-fun tp!1504707 () Bool)

(assert (=> b!5473196 (= e!3387952 (and tp!1504708 tp!1504707))))

(declare-fun b!5473195 () Bool)

(declare-fun tp!1504710 () Bool)

(assert (=> b!5473195 (= e!3387952 tp!1504710)))

(assert (= (and b!5472480 (is-ElementMatch!15340 (regTwo!31192 r!7292))) b!5473193))

(assert (= (and b!5472480 (is-Concat!24185 (regTwo!31192 r!7292))) b!5473194))

(assert (= (and b!5472480 (is-Star!15340 (regTwo!31192 r!7292))) b!5473195))

(assert (= (and b!5472480 (is-Union!15340 (regTwo!31192 r!7292))) b!5473196))

(declare-fun b!5473197 () Bool)

(declare-fun e!3387953 () Bool)

(assert (=> b!5473197 (= e!3387953 tp_is_empty!39933)))

(declare-fun b!5473198 () Bool)

(declare-fun tp!1504714 () Bool)

(declare-fun tp!1504716 () Bool)

(assert (=> b!5473198 (= e!3387953 (and tp!1504714 tp!1504716))))

(assert (=> b!5472483 (= tp!1504633 e!3387953)))

(declare-fun b!5473200 () Bool)

(declare-fun tp!1504713 () Bool)

(declare-fun tp!1504712 () Bool)

(assert (=> b!5473200 (= e!3387953 (and tp!1504713 tp!1504712))))

(declare-fun b!5473199 () Bool)

(declare-fun tp!1504715 () Bool)

(assert (=> b!5473199 (= e!3387953 tp!1504715)))

(assert (= (and b!5472483 (is-ElementMatch!15340 (regOne!31193 r!7292))) b!5473197))

(assert (= (and b!5472483 (is-Concat!24185 (regOne!31193 r!7292))) b!5473198))

(assert (= (and b!5472483 (is-Star!15340 (regOne!31193 r!7292))) b!5473199))

(assert (= (and b!5472483 (is-Union!15340 (regOne!31193 r!7292))) b!5473200))

(declare-fun b!5473201 () Bool)

(declare-fun e!3387954 () Bool)

(assert (=> b!5473201 (= e!3387954 tp_is_empty!39933)))

(declare-fun b!5473202 () Bool)

(declare-fun tp!1504719 () Bool)

(declare-fun tp!1504721 () Bool)

(assert (=> b!5473202 (= e!3387954 (and tp!1504719 tp!1504721))))

(assert (=> b!5472483 (= tp!1504632 e!3387954)))

(declare-fun b!5473204 () Bool)

(declare-fun tp!1504718 () Bool)

(declare-fun tp!1504717 () Bool)

(assert (=> b!5473204 (= e!3387954 (and tp!1504718 tp!1504717))))

(declare-fun b!5473203 () Bool)

(declare-fun tp!1504720 () Bool)

(assert (=> b!5473203 (= e!3387954 tp!1504720)))

(assert (= (and b!5472483 (is-ElementMatch!15340 (regTwo!31193 r!7292))) b!5473201))

(assert (= (and b!5472483 (is-Concat!24185 (regTwo!31193 r!7292))) b!5473202))

(assert (= (and b!5472483 (is-Star!15340 (regTwo!31193 r!7292))) b!5473203))

(assert (= (and b!5472483 (is-Union!15340 (regTwo!31193 r!7292))) b!5473204))

(declare-fun b!5473207 () Bool)

(declare-fun e!3387955 () Bool)

(declare-fun tp!1504722 () Bool)

(declare-fun tp!1504723 () Bool)

(assert (=> b!5473207 (= e!3387955 (and tp!1504722 tp!1504723))))

(assert (=> b!5472463 (= tp!1504628 e!3387955)))

(assert (= (and b!5472463 (is-Cons!62195 (exprs!5224 setElem!35926))) b!5473207))

(declare-fun b_lambda!208025 () Bool)

(assert (= b_lambda!208011 (or b!5472467 b_lambda!208025)))

(declare-fun bs!1265271 () Bool)

(declare-fun d!1739634 () Bool)

(assert (= bs!1265271 (and d!1739634 b!5472467)))

(assert (=> bs!1265271 (= (dynLambda!24426 lambda!291345 (h!68644 zl!343)) (derivationStepZipperUp!692 (h!68644 zl!343) (h!68645 s!2326)))))

(assert (=> bs!1265271 m!6490048))

(assert (=> d!1739548 d!1739634))

(declare-fun b_lambda!208027 () Bool)

(assert (= b_lambda!208013 (or b!5472467 b_lambda!208027)))

(declare-fun bs!1265272 () Bool)

(declare-fun d!1739636 () Bool)

(assert (= bs!1265272 (and d!1739636 b!5472467)))

(assert (=> bs!1265272 (= (dynLambda!24426 lambda!291345 lt!2235481) (derivationStepZipperUp!692 lt!2235481 (h!68645 s!2326)))))

(assert (=> bs!1265272 m!6490122))

(assert (=> d!1739568 d!1739636))

(declare-fun b_lambda!208029 () Bool)

(assert (= b_lambda!208023 (or b!5472467 b_lambda!208029)))

(declare-fun bs!1265273 () Bool)

(declare-fun d!1739638 () Bool)

(assert (= bs!1265273 (and d!1739638 b!5472467)))

(assert (=> bs!1265273 (= (dynLambda!24426 lambda!291345 lt!2235476) (derivationStepZipperUp!692 lt!2235476 (h!68645 s!2326)))))

(assert (=> bs!1265273 m!6490112))

(assert (=> d!1739618 d!1739638))

(declare-fun b_lambda!208031 () Bool)

(assert (= b_lambda!208021 (or b!5472467 b_lambda!208031)))

(declare-fun bs!1265274 () Bool)

(declare-fun d!1739640 () Bool)

(assert (= bs!1265274 (and d!1739640 b!5472467)))

(assert (=> bs!1265274 (= (dynLambda!24426 lambda!291345 lt!2235474) (derivationStepZipperUp!692 lt!2235474 (h!68645 s!2326)))))

(assert (=> bs!1265274 m!6490114))

(assert (=> d!1739616 d!1739640))

(push 1)

(assert (not b!5472847))

(assert (not d!1739538))

(assert (not b!5473203))

(assert (not bm!403799))

(assert (not bm!403833))

(assert (not bm!403855))

(assert (not b!5472876))

(assert (not b!5472771))

(assert (not b!5472923))

(assert (not b!5473194))

(assert (not b!5473151))

(assert (not b!5473186))

(assert (not b!5472773))

(assert (not d!1739626))

(assert (not b!5472940))

(assert (not b!5473200))

(assert (not bm!403830))

(assert (not bm!403847))

(assert (not b!5472943))

(assert (not b!5472660))

(assert (not b!5473109))

(assert (not d!1739516))

(assert (not d!1739512))

(assert (not bs!1265274))

(assert (not b!5473191))

(assert (not bs!1265272))

(assert (not bm!403820))

(assert (not b!5473198))

(assert (not b!5472664))

(assert (not b!5473113))

(assert (not b!5473140))

(assert (not b!5473196))

(assert (not d!1739610))

(assert (not b!5473190))

(assert (not b!5473192))

(assert (not b!5472778))

(assert (not d!1739544))

(assert (not b!5473105))

(assert (not b!5473149))

(assert (not d!1739602))

(assert (not d!1739524))

(assert (not d!1739502))

(assert (not bm!403824))

(assert (not b!5472668))

(assert (not d!1739600))

(assert (not b_lambda!208025))

(assert (not d!1739518))

(assert (not bm!403846))

(assert (not b!5473204))

(assert (not bm!403836))

(assert (not b!5473106))

(assert (not b!5473187))

(assert (not b_lambda!208031))

(assert (not d!1739574))

(assert (not d!1739578))

(assert (not d!1739582))

(assert (not b!5472714))

(assert (not bm!403821))

(assert (not b!5473137))

(assert (not b!5472673))

(assert (not d!1739504))

(assert (not b!5473142))

(assert tp_is_empty!39933)

(assert (not b!5472935))

(assert (not bs!1265273))

(assert (not setNonEmpty!35932))

(assert (not b!5473148))

(assert (not b!5473199))

(assert (not d!1739548))

(assert (not bm!403835))

(assert (not b!5472879))

(assert (not b!5472924))

(assert (not b!5473195))

(assert (not b!5473159))

(assert (not d!1739562))

(assert (not b!5472659))

(assert (not d!1739554))

(assert (not b!5472954))

(assert (not d!1739596))

(assert (not b!5472777))

(assert (not b!5473112))

(assert (not b!5472948))

(assert (not b!5473164))

(assert (not b!5472824))

(assert (not bs!1265271))

(assert (not b!5472996))

(assert (not b!5472855))

(assert (not bm!403856))

(assert (not b!5473158))

(assert (not b_lambda!208027))

(assert (not b!5472774))

(assert (not bm!403881))

(assert (not b!5472877))

(assert (not d!1739622))

(assert (not b!5473202))

(assert (not b!5472946))

(assert (not b!5472779))

(assert (not d!1739542))

(assert (not b!5473188))

(assert (not bm!403845))

(assert (not bm!403834))

(assert (not d!1739630))

(assert (not b!5473174))

(assert (not d!1739500))

(assert (not d!1739632))

(assert (not b!5472942))

(assert (not d!1739618))

(assert (not b!5472665))

(assert (not b!5472947))

(assert (not d!1739514))

(assert (not d!1739624))

(assert (not b!5473207))

(assert (not bm!403800))

(assert (not d!1739510))

(assert (not d!1739528))

(assert (not b!5472933))

(assert (not d!1739532))

(assert (not b!5473007))

(assert (not b!5473169))

(assert (not d!1739558))

(assert (not b!5472952))

(assert (not b!5473107))

(assert (not b!5472881))

(assert (not bm!403880))

(assert (not b!5472882))

(assert (not bm!403803))

(assert (not bm!403851))

(assert (not b!5473150))

(assert (not bm!403848))

(assert (not d!1739540))

(assert (not d!1739556))

(assert (not b!5472884))

(assert (not b!5472661))

(assert (not b!5472878))

(assert (not b!5473011))

(assert (not d!1739616))

(assert (not b!5473021))

(assert (not b!5473009))

(assert (not bm!403853))

(assert (not b!5472666))

(assert (not b!5473135))

(assert (not b!5472716))

(assert (not d!1739568))

(assert (not d!1739530))

(assert (not b_lambda!208029))

(assert (not b!5472849))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

