; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!661174 () Bool)

(assert start!661174)

(declare-fun b!6842597 () Bool)

(assert (=> b!6842597 true))

(declare-fun b!6842606 () Bool)

(assert (=> b!6842606 true))

(declare-fun b!6842588 () Bool)

(declare-fun e!4126674 () Bool)

(declare-fun e!4126671 () Bool)

(declare-fun tp!1873994 () Bool)

(declare-datatypes ((C!33606 0))(
  ( (C!33607 (val!26505 Int)) )
))
(declare-datatypes ((Regex!16668 0))(
  ( (ElementMatch!16668 (c!1273870 C!33606)) (Concat!25513 (regOne!33848 Regex!16668) (regTwo!33848 Regex!16668)) (EmptyExpr!16668) (Star!16668 (reg!16997 Regex!16668)) (EmptyLang!16668) (Union!16668 (regOne!33849 Regex!16668) (regTwo!33849 Regex!16668)) )
))
(declare-datatypes ((List!66303 0))(
  ( (Nil!66179) (Cons!66179 (h!72627 Regex!16668) (t!380046 List!66303)) )
))
(declare-datatypes ((Context!12104 0))(
  ( (Context!12105 (exprs!6552 List!66303)) )
))
(declare-datatypes ((List!66304 0))(
  ( (Nil!66180) (Cons!66180 (h!72628 Context!12104) (t!380047 List!66304)) )
))
(declare-fun zl!343 () List!66304)

(declare-fun inv!84918 (Context!12104) Bool)

(assert (=> b!6842588 (= e!4126674 (and (inv!84918 (h!72628 zl!343)) e!4126671 tp!1873994))))

(declare-fun b!6842589 () Bool)

(declare-fun e!4126667 () Bool)

(declare-fun tp!1873997 () Bool)

(declare-fun tp!1873990 () Bool)

(assert (=> b!6842589 (= e!4126667 (and tp!1873997 tp!1873990))))

(declare-fun b!6842590 () Bool)

(declare-fun res!2793637 () Bool)

(declare-fun e!4126672 () Bool)

(assert (=> b!6842590 (=> res!2793637 e!4126672)))

(declare-fun lt!2455426 () Regex!16668)

(declare-datatypes ((List!66305 0))(
  ( (Nil!66181) (Cons!66181 (h!72629 C!33606) (t!380048 List!66305)) )
))
(declare-fun s!2326 () List!66305)

(declare-fun matchR!8851 (Regex!16668 List!66305) Bool)

(assert (=> b!6842590 (= res!2793637 (not (matchR!8851 lt!2455426 s!2326)))))

(declare-fun b!6842591 () Bool)

(declare-fun res!2793638 () Bool)

(declare-fun e!4126668 () Bool)

(assert (=> b!6842591 (=> (not res!2793638) (not e!4126668))))

(declare-fun z!1189 () (Set Context!12104))

(declare-fun toList!10452 ((Set Context!12104)) List!66304)

(assert (=> b!6842591 (= res!2793638 (= (toList!10452 z!1189) zl!343))))

(declare-fun b!6842592 () Bool)

(declare-fun tp!1873991 () Bool)

(declare-fun tp!1873995 () Bool)

(assert (=> b!6842592 (= e!4126667 (and tp!1873991 tp!1873995))))

(declare-fun res!2793641 () Bool)

(assert (=> start!661174 (=> (not res!2793641) (not e!4126668))))

(declare-fun r!7292 () Regex!16668)

(declare-fun validRegex!8404 (Regex!16668) Bool)

(assert (=> start!661174 (= res!2793641 (validRegex!8404 r!7292))))

(assert (=> start!661174 e!4126668))

(assert (=> start!661174 e!4126667))

(declare-fun condSetEmpty!47044 () Bool)

(assert (=> start!661174 (= condSetEmpty!47044 (= z!1189 (as set.empty (Set Context!12104))))))

(declare-fun setRes!47044 () Bool)

(assert (=> start!661174 setRes!47044))

(assert (=> start!661174 e!4126674))

(declare-fun e!4126675 () Bool)

(assert (=> start!661174 e!4126675))

(declare-fun b!6842593 () Bool)

(declare-fun res!2793640 () Bool)

(assert (=> b!6842593 (=> (not res!2793640) (not e!4126668))))

(declare-fun unfocusZipper!2410 (List!66304) Regex!16668)

(assert (=> b!6842593 (= res!2793640 (= r!7292 (unfocusZipper!2410 zl!343)))))

(declare-fun b!6842594 () Bool)

(declare-fun res!2793634 () Bool)

(declare-fun e!4126665 () Bool)

(assert (=> b!6842594 (=> res!2793634 e!4126665)))

(assert (=> b!6842594 (= res!2793634 (or (not (is-Cons!66180 zl!343)) (is-Nil!66181 s!2326) (not (= zl!343 (Cons!66180 (h!72628 zl!343) (t!380047 zl!343))))))))

(declare-fun b!6842595 () Bool)

(declare-fun e!4126669 () Bool)

(declare-fun lambda!386881 () Int)

(declare-fun contains!20314 (List!66304 Context!12104) Bool)

(declare-fun getWitness!931 (List!66304 Int) Context!12104)

(assert (=> b!6842595 (= e!4126669 (contains!20314 zl!343 (getWitness!931 zl!343 lambda!386881)))))

(declare-fun b!6842596 () Bool)

(declare-fun res!2793635 () Bool)

(assert (=> b!6842596 (=> res!2793635 e!4126665)))

(declare-fun isEmpty!38558 (List!66304) Bool)

(assert (=> b!6842596 (= res!2793635 (isEmpty!38558 (t!380047 zl!343)))))

(declare-fun e!4126666 () Bool)

(assert (=> b!6842597 (= e!4126665 e!4126666)))

(declare-fun res!2793633 () Bool)

(assert (=> b!6842597 (=> res!2793633 e!4126666)))

(declare-fun lt!2455425 () Bool)

(assert (=> b!6842597 (= res!2793633 (not lt!2455425))))

(declare-fun lt!2455428 () List!66303)

(declare-fun lambda!386880 () Int)

(declare-fun exists!2762 (List!66303 Int) Bool)

(assert (=> b!6842597 (= lt!2455425 (exists!2762 lt!2455428 lambda!386880))))

(declare-datatypes ((Unit!160035 0))(
  ( (Unit!160036) )
))
(declare-fun lt!2455429 () Unit!160035)

(declare-fun matchRGenUnionSpec!307 (Regex!16668 List!66303 List!66305) Unit!160035)

(assert (=> b!6842597 (= lt!2455429 (matchRGenUnionSpec!307 r!7292 lt!2455428 s!2326))))

(declare-fun unfocusZipperList!2085 (List!66304) List!66303)

(assert (=> b!6842597 (= lt!2455428 (unfocusZipperList!2085 zl!343))))

(declare-fun b!6842598 () Bool)

(declare-fun tp!1873992 () Bool)

(assert (=> b!6842598 (= e!4126671 tp!1873992)))

(declare-fun b!6842599 () Bool)

(declare-fun res!2793639 () Bool)

(assert (=> b!6842599 (=> res!2793639 e!4126672)))

(assert (=> b!6842599 (= res!2793639 (not (validRegex!8404 lt!2455426)))))

(declare-fun b!6842600 () Bool)

(declare-fun res!2793636 () Bool)

(assert (=> b!6842600 (=> res!2793636 e!4126666)))

(assert (=> b!6842600 (= res!2793636 (not (exists!2762 lt!2455428 lambda!386880)))))

(declare-fun b!6842601 () Bool)

(declare-fun tp_is_empty!42589 () Bool)

(declare-fun tp!1873996 () Bool)

(assert (=> b!6842601 (= e!4126675 (and tp_is_empty!42589 tp!1873996))))

(declare-fun b!6842602 () Bool)

(declare-fun e!4126673 () Bool)

(assert (=> b!6842602 (= e!4126673 (isEmpty!38558 (t!380047 zl!343)))))

(declare-fun b!6842603 () Bool)

(declare-fun e!4126670 () Bool)

(declare-fun tp!1873989 () Bool)

(assert (=> b!6842603 (= e!4126670 tp!1873989)))

(declare-fun setIsEmpty!47044 () Bool)

(assert (=> setIsEmpty!47044 setRes!47044))

(declare-fun b!6842604 () Bool)

(declare-fun tp!1873988 () Bool)

(assert (=> b!6842604 (= e!4126667 tp!1873988)))

(declare-fun b!6842605 () Bool)

(assert (=> b!6842605 (= e!4126666 e!4126672)))

(declare-fun res!2793644 () Bool)

(assert (=> b!6842605 (=> res!2793644 e!4126672)))

(declare-fun contains!20315 (List!66303 Regex!16668) Bool)

(assert (=> b!6842605 (= res!2793644 (not (contains!20315 lt!2455428 lt!2455426)))))

(declare-fun getWitness!932 (List!66303 Int) Regex!16668)

(assert (=> b!6842605 (= lt!2455426 (getWitness!932 lt!2455428 lambda!386880))))

(declare-fun setElem!47044 () Context!12104)

(declare-fun setNonEmpty!47044 () Bool)

(declare-fun tp!1873993 () Bool)

(assert (=> setNonEmpty!47044 (= setRes!47044 (and tp!1873993 (inv!84918 setElem!47044) e!4126670))))

(declare-fun setRest!47044 () (Set Context!12104))

(assert (=> setNonEmpty!47044 (= z!1189 (set.union (set.insert setElem!47044 (as set.empty (Set Context!12104))) setRest!47044))))

(assert (=> b!6842606 (= e!4126672 e!4126669)))

(declare-fun res!2793643 () Bool)

(assert (=> b!6842606 (=> res!2793643 e!4126669)))

(declare-fun exists!2763 (List!66304 Int) Bool)

(assert (=> b!6842606 (= res!2793643 (not (exists!2763 zl!343 lambda!386881)))))

(assert (=> b!6842606 (exists!2763 zl!343 lambda!386881)))

(declare-fun lt!2455430 () Unit!160035)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!23 (List!66304 Regex!16668) Unit!160035)

(assert (=> b!6842606 (= lt!2455430 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!23 zl!343 lt!2455426))))

(declare-fun b!6842607 () Bool)

(assert (=> b!6842607 (= e!4126667 tp_is_empty!42589)))

(declare-fun b!6842608 () Bool)

(assert (=> b!6842608 (= e!4126668 (not e!4126665))))

(declare-fun res!2793642 () Bool)

(assert (=> b!6842608 (=> res!2793642 e!4126665)))

(assert (=> b!6842608 (= res!2793642 e!4126673)))

(declare-fun res!2793645 () Bool)

(assert (=> b!6842608 (=> (not res!2793645) (not e!4126673))))

(assert (=> b!6842608 (= res!2793645 (is-Cons!66180 zl!343))))

(declare-fun matchRSpec!3769 (Regex!16668 List!66305) Bool)

(assert (=> b!6842608 (= lt!2455425 (matchRSpec!3769 r!7292 s!2326))))

(assert (=> b!6842608 (= lt!2455425 (matchR!8851 r!7292 s!2326))))

(declare-fun lt!2455427 () Unit!160035)

(declare-fun mainMatchTheorem!3769 (Regex!16668 List!66305) Unit!160035)

(assert (=> b!6842608 (= lt!2455427 (mainMatchTheorem!3769 r!7292 s!2326))))

(assert (= (and start!661174 res!2793641) b!6842591))

(assert (= (and b!6842591 res!2793638) b!6842593))

(assert (= (and b!6842593 res!2793640) b!6842608))

(assert (= (and b!6842608 res!2793645) b!6842602))

(assert (= (and b!6842608 (not res!2793642)) b!6842594))

(assert (= (and b!6842594 (not res!2793634)) b!6842596))

(assert (= (and b!6842596 (not res!2793635)) b!6842597))

(assert (= (and b!6842597 (not res!2793633)) b!6842600))

(assert (= (and b!6842600 (not res!2793636)) b!6842605))

(assert (= (and b!6842605 (not res!2793644)) b!6842599))

(assert (= (and b!6842599 (not res!2793639)) b!6842590))

(assert (= (and b!6842590 (not res!2793637)) b!6842606))

(assert (= (and b!6842606 (not res!2793643)) b!6842595))

(assert (= (and start!661174 (is-ElementMatch!16668 r!7292)) b!6842607))

(assert (= (and start!661174 (is-Concat!25513 r!7292)) b!6842589))

(assert (= (and start!661174 (is-Star!16668 r!7292)) b!6842604))

(assert (= (and start!661174 (is-Union!16668 r!7292)) b!6842592))

(assert (= (and start!661174 condSetEmpty!47044) setIsEmpty!47044))

(assert (= (and start!661174 (not condSetEmpty!47044)) setNonEmpty!47044))

(assert (= setNonEmpty!47044 b!6842603))

(assert (= b!6842588 b!6842598))

(assert (= (and start!661174 (is-Cons!66180 zl!343)) b!6842588))

(assert (= (and start!661174 (is-Cons!66181 s!2326)) b!6842601))

(declare-fun m!7584512 () Bool)

(assert (=> b!6842600 m!7584512))

(assert (=> b!6842597 m!7584512))

(declare-fun m!7584514 () Bool)

(assert (=> b!6842597 m!7584514))

(declare-fun m!7584516 () Bool)

(assert (=> b!6842597 m!7584516))

(declare-fun m!7584518 () Bool)

(assert (=> b!6842591 m!7584518))

(declare-fun m!7584520 () Bool)

(assert (=> setNonEmpty!47044 m!7584520))

(declare-fun m!7584522 () Bool)

(assert (=> b!6842602 m!7584522))

(declare-fun m!7584524 () Bool)

(assert (=> b!6842588 m!7584524))

(declare-fun m!7584526 () Bool)

(assert (=> b!6842599 m!7584526))

(declare-fun m!7584528 () Bool)

(assert (=> b!6842593 m!7584528))

(assert (=> b!6842596 m!7584522))

(declare-fun m!7584530 () Bool)

(assert (=> b!6842590 m!7584530))

(declare-fun m!7584532 () Bool)

(assert (=> b!6842595 m!7584532))

(assert (=> b!6842595 m!7584532))

(declare-fun m!7584534 () Bool)

(assert (=> b!6842595 m!7584534))

(declare-fun m!7584536 () Bool)

(assert (=> start!661174 m!7584536))

(declare-fun m!7584538 () Bool)

(assert (=> b!6842605 m!7584538))

(declare-fun m!7584540 () Bool)

(assert (=> b!6842605 m!7584540))

(declare-fun m!7584542 () Bool)

(assert (=> b!6842608 m!7584542))

(declare-fun m!7584544 () Bool)

(assert (=> b!6842608 m!7584544))

(declare-fun m!7584546 () Bool)

(assert (=> b!6842608 m!7584546))

(declare-fun m!7584548 () Bool)

(assert (=> b!6842606 m!7584548))

(assert (=> b!6842606 m!7584548))

(declare-fun m!7584550 () Bool)

(assert (=> b!6842606 m!7584550))

(push 1)

(assert (not b!6842591))

(assert (not b!6842605))

(assert (not b!6842601))

(assert (not b!6842606))

(assert (not start!661174))

(assert (not b!6842603))

(assert (not b!6842604))

(assert (not b!6842595))

(assert (not setNonEmpty!47044))

(assert (not b!6842592))

(assert tp_is_empty!42589)

(assert (not b!6842593))

(assert (not b!6842598))

(assert (not b!6842588))

(assert (not b!6842596))

(assert (not b!6842599))

(assert (not b!6842602))

(assert (not b!6842589))

(assert (not b!6842590))

(assert (not b!6842597))

(assert (not b!6842608))

(assert (not b!6842600))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2151244 () Bool)

(declare-fun lt!2455451 () Regex!16668)

(assert (=> d!2151244 (validRegex!8404 lt!2455451)))

(declare-fun generalisedUnion!2508 (List!66303) Regex!16668)

(assert (=> d!2151244 (= lt!2455451 (generalisedUnion!2508 (unfocusZipperList!2085 zl!343)))))

(assert (=> d!2151244 (= (unfocusZipper!2410 zl!343) lt!2455451)))

(declare-fun bs!1829268 () Bool)

(assert (= bs!1829268 d!2151244))

(declare-fun m!7584592 () Bool)

(assert (=> bs!1829268 m!7584592))

(assert (=> bs!1829268 m!7584516))

(assert (=> bs!1829268 m!7584516))

(declare-fun m!7584594 () Bool)

(assert (=> bs!1829268 m!7584594))

(assert (=> b!6842593 d!2151244))

(declare-fun d!2151248 () Bool)

(declare-fun lt!2455454 () Bool)

(declare-fun content!12971 (List!66303) (Set Regex!16668))

(assert (=> d!2151248 (= lt!2455454 (set.member lt!2455426 (content!12971 lt!2455428)))))

(declare-fun e!4126720 () Bool)

(assert (=> d!2151248 (= lt!2455454 e!4126720)))

(declare-fun res!2793696 () Bool)

(assert (=> d!2151248 (=> (not res!2793696) (not e!4126720))))

(assert (=> d!2151248 (= res!2793696 (is-Cons!66179 lt!2455428))))

(assert (=> d!2151248 (= (contains!20315 lt!2455428 lt!2455426) lt!2455454)))

(declare-fun b!6842690 () Bool)

(declare-fun e!4126719 () Bool)

(assert (=> b!6842690 (= e!4126720 e!4126719)))

(declare-fun res!2793695 () Bool)

(assert (=> b!6842690 (=> res!2793695 e!4126719)))

(assert (=> b!6842690 (= res!2793695 (= (h!72627 lt!2455428) lt!2455426))))

(declare-fun b!6842691 () Bool)

(assert (=> b!6842691 (= e!4126719 (contains!20315 (t!380046 lt!2455428) lt!2455426))))

(assert (= (and d!2151248 res!2793696) b!6842690))

(assert (= (and b!6842690 (not res!2793695)) b!6842691))

(declare-fun m!7584596 () Bool)

(assert (=> d!2151248 m!7584596))

(declare-fun m!7584598 () Bool)

(assert (=> d!2151248 m!7584598))

(declare-fun m!7584600 () Bool)

(assert (=> b!6842691 m!7584600))

(assert (=> b!6842605 d!2151248))

(declare-fun b!6842706 () Bool)

(declare-fun e!4126729 () Regex!16668)

(declare-fun e!4126732 () Regex!16668)

(assert (=> b!6842706 (= e!4126729 e!4126732)))

(declare-fun c!1273879 () Bool)

(assert (=> b!6842706 (= c!1273879 (is-Cons!66179 lt!2455428))))

(declare-fun b!6842707 () Bool)

(declare-fun lt!2455460 () Unit!160035)

(declare-fun Unit!160039 () Unit!160035)

(assert (=> b!6842707 (= lt!2455460 Unit!160039)))

(assert (=> b!6842707 false))

(declare-fun head!13712 (List!66303) Regex!16668)

(assert (=> b!6842707 (= e!4126732 (head!13712 lt!2455428))))

(declare-fun d!2151250 () Bool)

(declare-fun e!4126731 () Bool)

(assert (=> d!2151250 e!4126731))

(declare-fun res!2793701 () Bool)

(assert (=> d!2151250 (=> (not res!2793701) (not e!4126731))))

(declare-fun lt!2455459 () Regex!16668)

(declare-fun dynLambda!26435 (Int Regex!16668) Bool)

(assert (=> d!2151250 (= res!2793701 (dynLambda!26435 lambda!386880 lt!2455459))))

(assert (=> d!2151250 (= lt!2455459 e!4126729)))

(declare-fun c!1273878 () Bool)

(declare-fun e!4126730 () Bool)

(assert (=> d!2151250 (= c!1273878 e!4126730)))

(declare-fun res!2793702 () Bool)

(assert (=> d!2151250 (=> (not res!2793702) (not e!4126730))))

(assert (=> d!2151250 (= res!2793702 (is-Cons!66179 lt!2455428))))

(assert (=> d!2151250 (exists!2762 lt!2455428 lambda!386880)))

(assert (=> d!2151250 (= (getWitness!932 lt!2455428 lambda!386880) lt!2455459)))

(declare-fun b!6842708 () Bool)

(assert (=> b!6842708 (= e!4126730 (dynLambda!26435 lambda!386880 (h!72627 lt!2455428)))))

(declare-fun b!6842709 () Bool)

(assert (=> b!6842709 (= e!4126729 (h!72627 lt!2455428))))

(declare-fun b!6842710 () Bool)

(assert (=> b!6842710 (= e!4126731 (contains!20315 lt!2455428 lt!2455459))))

(declare-fun b!6842711 () Bool)

(assert (=> b!6842711 (= e!4126732 (getWitness!932 (t!380046 lt!2455428) lambda!386880))))

(assert (= (and d!2151250 res!2793702) b!6842708))

(assert (= (and d!2151250 c!1273878) b!6842709))

(assert (= (and d!2151250 (not c!1273878)) b!6842706))

(assert (= (and b!6842706 c!1273879) b!6842711))

(assert (= (and b!6842706 (not c!1273879)) b!6842707))

(assert (= (and d!2151250 res!2793701) b!6842710))

(declare-fun b_lambda!258043 () Bool)

(assert (=> (not b_lambda!258043) (not d!2151250)))

(declare-fun b_lambda!258045 () Bool)

(assert (=> (not b_lambda!258045) (not b!6842708)))

(declare-fun m!7584604 () Bool)

(assert (=> b!6842707 m!7584604))

(declare-fun m!7584606 () Bool)

(assert (=> b!6842711 m!7584606))

(declare-fun m!7584608 () Bool)

(assert (=> b!6842710 m!7584608))

(declare-fun m!7584610 () Bool)

(assert (=> d!2151250 m!7584610))

(assert (=> d!2151250 m!7584512))

(declare-fun m!7584612 () Bool)

(assert (=> b!6842708 m!7584612))

(assert (=> b!6842605 d!2151250))

(declare-fun d!2151254 () Bool)

(declare-fun lt!2455465 () Bool)

(declare-fun content!12972 (List!66304) (Set Context!12104))

(assert (=> d!2151254 (= lt!2455465 (set.member (getWitness!931 zl!343 lambda!386881) (content!12972 zl!343)))))

(declare-fun e!4126737 () Bool)

(assert (=> d!2151254 (= lt!2455465 e!4126737)))

(declare-fun res!2793707 () Bool)

(assert (=> d!2151254 (=> (not res!2793707) (not e!4126737))))

(assert (=> d!2151254 (= res!2793707 (is-Cons!66180 zl!343))))

(assert (=> d!2151254 (= (contains!20314 zl!343 (getWitness!931 zl!343 lambda!386881)) lt!2455465)))

(declare-fun b!6842716 () Bool)

(declare-fun e!4126738 () Bool)

(assert (=> b!6842716 (= e!4126737 e!4126738)))

(declare-fun res!2793708 () Bool)

(assert (=> b!6842716 (=> res!2793708 e!4126738)))

(assert (=> b!6842716 (= res!2793708 (= (h!72628 zl!343) (getWitness!931 zl!343 lambda!386881)))))

(declare-fun b!6842717 () Bool)

(assert (=> b!6842717 (= e!4126738 (contains!20314 (t!380047 zl!343) (getWitness!931 zl!343 lambda!386881)))))

(assert (= (and d!2151254 res!2793707) b!6842716))

(assert (= (and b!6842716 (not res!2793708)) b!6842717))

(declare-fun m!7584614 () Bool)

(assert (=> d!2151254 m!7584614))

(assert (=> d!2151254 m!7584532))

(declare-fun m!7584616 () Bool)

(assert (=> d!2151254 m!7584616))

(assert (=> b!6842717 m!7584532))

(declare-fun m!7584618 () Bool)

(assert (=> b!6842717 m!7584618))

(assert (=> b!6842595 d!2151254))

(declare-fun d!2151256 () Bool)

(declare-fun e!4126750 () Bool)

(assert (=> d!2151256 e!4126750))

(declare-fun res!2793714 () Bool)

(assert (=> d!2151256 (=> (not res!2793714) (not e!4126750))))

(declare-fun lt!2455471 () Context!12104)

(declare-fun dynLambda!26436 (Int Context!12104) Bool)

(assert (=> d!2151256 (= res!2793714 (dynLambda!26436 lambda!386881 lt!2455471))))

(declare-fun e!4126748 () Context!12104)

(assert (=> d!2151256 (= lt!2455471 e!4126748)))

(declare-fun c!1273886 () Bool)

(declare-fun e!4126749 () Bool)

(assert (=> d!2151256 (= c!1273886 e!4126749)))

(declare-fun res!2793713 () Bool)

(assert (=> d!2151256 (=> (not res!2793713) (not e!4126749))))

(assert (=> d!2151256 (= res!2793713 (is-Cons!66180 zl!343))))

(assert (=> d!2151256 (exists!2763 zl!343 lambda!386881)))

(assert (=> d!2151256 (= (getWitness!931 zl!343 lambda!386881) lt!2455471)))

(declare-fun b!6842730 () Bool)

(declare-fun e!4126747 () Context!12104)

(assert (=> b!6842730 (= e!4126748 e!4126747)))

(declare-fun c!1273887 () Bool)

(assert (=> b!6842730 (= c!1273887 (is-Cons!66180 zl!343))))

(declare-fun b!6842731 () Bool)

(assert (=> b!6842731 (= e!4126749 (dynLambda!26436 lambda!386881 (h!72628 zl!343)))))

(declare-fun b!6842732 () Bool)

(assert (=> b!6842732 (= e!4126748 (h!72628 zl!343))))

(declare-fun b!6842733 () Bool)

(assert (=> b!6842733 (= e!4126750 (contains!20314 zl!343 lt!2455471))))

(declare-fun b!6842734 () Bool)

(declare-fun lt!2455472 () Unit!160035)

(declare-fun Unit!160040 () Unit!160035)

(assert (=> b!6842734 (= lt!2455472 Unit!160040)))

(assert (=> b!6842734 false))

(declare-fun head!13713 (List!66304) Context!12104)

(assert (=> b!6842734 (= e!4126747 (head!13713 zl!343))))

(declare-fun b!6842735 () Bool)

(assert (=> b!6842735 (= e!4126747 (getWitness!931 (t!380047 zl!343) lambda!386881))))

(assert (= (and d!2151256 res!2793713) b!6842731))

(assert (= (and d!2151256 c!1273886) b!6842732))

(assert (= (and d!2151256 (not c!1273886)) b!6842730))

(assert (= (and b!6842730 c!1273887) b!6842735))

(assert (= (and b!6842730 (not c!1273887)) b!6842734))

(assert (= (and d!2151256 res!2793714) b!6842733))

(declare-fun b_lambda!258047 () Bool)

(assert (=> (not b_lambda!258047) (not d!2151256)))

(declare-fun b_lambda!258049 () Bool)

(assert (=> (not b_lambda!258049) (not b!6842731)))

(declare-fun m!7584626 () Bool)

(assert (=> b!6842731 m!7584626))

(declare-fun m!7584628 () Bool)

(assert (=> b!6842733 m!7584628))

(declare-fun m!7584630 () Bool)

(assert (=> b!6842734 m!7584630))

(declare-fun m!7584632 () Bool)

(assert (=> d!2151256 m!7584632))

(assert (=> d!2151256 m!7584548))

(declare-fun m!7584634 () Bool)

(assert (=> b!6842735 m!7584634))

(assert (=> b!6842595 d!2151256))

(declare-fun bs!1829276 () Bool)

(declare-fun d!2151260 () Bool)

(assert (= bs!1829276 (and d!2151260 b!6842597)))

(declare-fun lambda!386907 () Int)

(assert (=> bs!1829276 (not (= lambda!386907 lambda!386880))))

(assert (=> d!2151260 true))

(declare-fun order!27637 () Int)

(declare-fun dynLambda!26437 (Int Int) Int)

(assert (=> d!2151260 (< (dynLambda!26437 order!27637 lambda!386880) (dynLambda!26437 order!27637 lambda!386907))))

(declare-fun forall!15843 (List!66303 Int) Bool)

(assert (=> d!2151260 (= (exists!2762 lt!2455428 lambda!386880) (not (forall!15843 lt!2455428 lambda!386907)))))

(declare-fun bs!1829277 () Bool)

(assert (= bs!1829277 d!2151260))

(declare-fun m!7584638 () Bool)

(assert (=> bs!1829277 m!7584638))

(assert (=> b!6842597 d!2151260))

(declare-fun bs!1829278 () Bool)

(declare-fun d!2151264 () Bool)

(assert (= bs!1829278 (and d!2151264 b!6842597)))

(declare-fun lambda!386912 () Int)

(assert (=> bs!1829278 (not (= lambda!386912 lambda!386880))))

(declare-fun bs!1829279 () Bool)

(assert (= bs!1829279 (and d!2151264 d!2151260)))

(assert (=> bs!1829279 (not (= lambda!386912 lambda!386907))))

(declare-fun lambda!386913 () Int)

(assert (=> bs!1829278 (= lambda!386913 lambda!386880)))

(assert (=> bs!1829279 (not (= lambda!386913 lambda!386907))))

(declare-fun bs!1829280 () Bool)

(assert (= bs!1829280 d!2151264))

(assert (=> bs!1829280 (not (= lambda!386913 lambda!386912))))

(assert (=> d!2151264 true))

(assert (=> d!2151264 (= (matchR!8851 r!7292 s!2326) (exists!2762 lt!2455428 lambda!386913))))

(declare-fun lt!2455477 () Unit!160035)

(declare-fun choose!51024 (Regex!16668 List!66303 List!66305) Unit!160035)

(assert (=> d!2151264 (= lt!2455477 (choose!51024 r!7292 lt!2455428 s!2326))))

(assert (=> d!2151264 (forall!15843 lt!2455428 lambda!386912)))

(assert (=> d!2151264 (= (matchRGenUnionSpec!307 r!7292 lt!2455428 s!2326) lt!2455477)))

(assert (=> bs!1829280 m!7584544))

(declare-fun m!7584644 () Bool)

(assert (=> bs!1829280 m!7584644))

(declare-fun m!7584648 () Bool)

(assert (=> bs!1829280 m!7584648))

(declare-fun m!7584650 () Bool)

(assert (=> bs!1829280 m!7584650))

(assert (=> b!6842597 d!2151264))

(declare-fun bs!1829281 () Bool)

(declare-fun d!2151268 () Bool)

(assert (= bs!1829281 (and d!2151268 b!6842597)))

(declare-fun lambda!386916 () Int)

(assert (=> bs!1829281 (not (= lambda!386916 lambda!386880))))

(declare-fun bs!1829282 () Bool)

(assert (= bs!1829282 (and d!2151268 d!2151260)))

(assert (=> bs!1829282 (not (= lambda!386916 lambda!386907))))

(declare-fun bs!1829283 () Bool)

(assert (= bs!1829283 (and d!2151268 d!2151264)))

(assert (=> bs!1829283 (= lambda!386916 lambda!386912)))

(assert (=> bs!1829283 (not (= lambda!386916 lambda!386913))))

(declare-fun lt!2455481 () List!66303)

(assert (=> d!2151268 (forall!15843 lt!2455481 lambda!386916)))

(declare-fun e!4126761 () List!66303)

(assert (=> d!2151268 (= lt!2455481 e!4126761)))

(declare-fun c!1273890 () Bool)

(assert (=> d!2151268 (= c!1273890 (is-Cons!66180 zl!343))))

(assert (=> d!2151268 (= (unfocusZipperList!2085 zl!343) lt!2455481)))

(declare-fun b!6842752 () Bool)

(declare-fun generalisedConcat!2261 (List!66303) Regex!16668)

(assert (=> b!6842752 (= e!4126761 (Cons!66179 (generalisedConcat!2261 (exprs!6552 (h!72628 zl!343))) (unfocusZipperList!2085 (t!380047 zl!343))))))

(declare-fun b!6842753 () Bool)

(assert (=> b!6842753 (= e!4126761 Nil!66179)))

(assert (= (and d!2151268 c!1273890) b!6842752))

(assert (= (and d!2151268 (not c!1273890)) b!6842753))

(declare-fun m!7584652 () Bool)

(assert (=> d!2151268 m!7584652))

(declare-fun m!7584654 () Bool)

(assert (=> b!6842752 m!7584654))

(declare-fun m!7584656 () Bool)

(assert (=> b!6842752 m!7584656))

(assert (=> b!6842597 d!2151268))

(declare-fun b!6842784 () Bool)

(declare-fun e!4126790 () Bool)

(declare-fun e!4126785 () Bool)

(assert (=> b!6842784 (= e!4126790 e!4126785)))

(declare-fun c!1273900 () Bool)

(assert (=> b!6842784 (= c!1273900 (is-Union!16668 r!7292))))

(declare-fun b!6842785 () Bool)

(declare-fun e!4126784 () Bool)

(assert (=> b!6842785 (= e!4126790 e!4126784)))

(declare-fun res!2793737 () Bool)

(declare-fun nullable!6633 (Regex!16668) Bool)

(assert (=> b!6842785 (= res!2793737 (not (nullable!6633 (reg!16997 r!7292))))))

(assert (=> b!6842785 (=> (not res!2793737) (not e!4126784))))

(declare-fun b!6842786 () Bool)

(declare-fun call!623153 () Bool)

(assert (=> b!6842786 (= e!4126784 call!623153)))

(declare-fun b!6842787 () Bool)

(declare-fun e!4126787 () Bool)

(declare-fun call!623154 () Bool)

(assert (=> b!6842787 (= e!4126787 call!623154)))

(declare-fun d!2151270 () Bool)

(declare-fun res!2793739 () Bool)

(declare-fun e!4126789 () Bool)

(assert (=> d!2151270 (=> res!2793739 e!4126789)))

(assert (=> d!2151270 (= res!2793739 (is-ElementMatch!16668 r!7292))))

(assert (=> d!2151270 (= (validRegex!8404 r!7292) e!4126789)))

(declare-fun b!6842788 () Bool)

(declare-fun e!4126788 () Bool)

(assert (=> b!6842788 (= e!4126788 e!4126787)))

(declare-fun res!2793741 () Bool)

(assert (=> b!6842788 (=> (not res!2793741) (not e!4126787))))

(declare-fun call!623152 () Bool)

(assert (=> b!6842788 (= res!2793741 call!623152)))

(declare-fun bm!623147 () Bool)

(assert (=> bm!623147 (= call!623154 call!623153)))

(declare-fun c!1273899 () Bool)

(declare-fun bm!623148 () Bool)

(assert (=> bm!623148 (= call!623153 (validRegex!8404 (ite c!1273899 (reg!16997 r!7292) (ite c!1273900 (regTwo!33849 r!7292) (regTwo!33848 r!7292)))))))

(declare-fun bm!623149 () Bool)

(assert (=> bm!623149 (= call!623152 (validRegex!8404 (ite c!1273900 (regOne!33849 r!7292) (regOne!33848 r!7292))))))

(declare-fun b!6842789 () Bool)

(declare-fun res!2793740 () Bool)

(declare-fun e!4126786 () Bool)

(assert (=> b!6842789 (=> (not res!2793740) (not e!4126786))))

(assert (=> b!6842789 (= res!2793740 call!623152)))

(assert (=> b!6842789 (= e!4126785 e!4126786)))

(declare-fun b!6842790 () Bool)

(assert (=> b!6842790 (= e!4126786 call!623154)))

(declare-fun b!6842791 () Bool)

(declare-fun res!2793738 () Bool)

(assert (=> b!6842791 (=> res!2793738 e!4126788)))

(assert (=> b!6842791 (= res!2793738 (not (is-Concat!25513 r!7292)))))

(assert (=> b!6842791 (= e!4126785 e!4126788)))

(declare-fun b!6842792 () Bool)

(assert (=> b!6842792 (= e!4126789 e!4126790)))

(assert (=> b!6842792 (= c!1273899 (is-Star!16668 r!7292))))

(assert (= (and d!2151270 (not res!2793739)) b!6842792))

(assert (= (and b!6842792 c!1273899) b!6842785))

(assert (= (and b!6842792 (not c!1273899)) b!6842784))

(assert (= (and b!6842785 res!2793737) b!6842786))

(assert (= (and b!6842784 c!1273900) b!6842789))

(assert (= (and b!6842784 (not c!1273900)) b!6842791))

(assert (= (and b!6842789 res!2793740) b!6842790))

(assert (= (and b!6842791 (not res!2793738)) b!6842788))

(assert (= (and b!6842788 res!2793741) b!6842787))

(assert (= (or b!6842790 b!6842787) bm!623147))

(assert (= (or b!6842789 b!6842788) bm!623149))

(assert (= (or b!6842786 bm!623147) bm!623148))

(declare-fun m!7584658 () Bool)

(assert (=> b!6842785 m!7584658))

(declare-fun m!7584660 () Bool)

(assert (=> bm!623148 m!7584660))

(declare-fun m!7584662 () Bool)

(assert (=> bm!623149 m!7584662))

(assert (=> start!661174 d!2151270))

(declare-fun bs!1829284 () Bool)

(declare-fun d!2151272 () Bool)

(assert (= bs!1829284 (and d!2151272 d!2151264)))

(declare-fun lambda!386919 () Int)

(assert (=> bs!1829284 (not (= lambda!386919 lambda!386913))))

(declare-fun bs!1829285 () Bool)

(assert (= bs!1829285 (and d!2151272 d!2151260)))

(assert (=> bs!1829285 (not (= lambda!386919 lambda!386907))))

(assert (=> bs!1829284 (= lambda!386919 lambda!386912)))

(declare-fun bs!1829286 () Bool)

(assert (= bs!1829286 (and d!2151272 d!2151268)))

(assert (=> bs!1829286 (= lambda!386919 lambda!386916)))

(declare-fun bs!1829287 () Bool)

(assert (= bs!1829287 (and d!2151272 b!6842597)))

(assert (=> bs!1829287 (not (= lambda!386919 lambda!386880))))

(assert (=> d!2151272 (= (inv!84918 setElem!47044) (forall!15843 (exprs!6552 setElem!47044) lambda!386919))))

(declare-fun bs!1829288 () Bool)

(assert (= bs!1829288 d!2151272))

(declare-fun m!7584664 () Bool)

(assert (=> bs!1829288 m!7584664))

(assert (=> setNonEmpty!47044 d!2151272))

(declare-fun d!2151274 () Bool)

(assert (=> d!2151274 (= (isEmpty!38558 (t!380047 zl!343)) (is-Nil!66180 (t!380047 zl!343)))))

(assert (=> b!6842596 d!2151274))

(declare-fun bs!1829289 () Bool)

(declare-fun d!2151276 () Bool)

(assert (= bs!1829289 (and d!2151276 b!6842606)))

(declare-fun lambda!386922 () Int)

(assert (=> bs!1829289 (not (= lambda!386922 lambda!386881))))

(assert (=> d!2151276 true))

(declare-fun order!27639 () Int)

(declare-fun dynLambda!26438 (Int Int) Int)

(assert (=> d!2151276 (< (dynLambda!26438 order!27639 lambda!386881) (dynLambda!26438 order!27639 lambda!386922))))

(declare-fun forall!15844 (List!66304 Int) Bool)

(assert (=> d!2151276 (= (exists!2763 zl!343 lambda!386881) (not (forall!15844 zl!343 lambda!386922)))))

(declare-fun bs!1829290 () Bool)

(assert (= bs!1829290 d!2151276))

(declare-fun m!7584670 () Bool)

(assert (=> bs!1829290 m!7584670))

(assert (=> b!6842606 d!2151276))

(declare-fun bs!1829291 () Bool)

(declare-fun d!2151278 () Bool)

(assert (= bs!1829291 (and d!2151278 b!6842606)))

(declare-fun lambda!386925 () Int)

(assert (=> bs!1829291 (= lambda!386925 lambda!386881)))

(declare-fun bs!1829292 () Bool)

(assert (= bs!1829292 (and d!2151278 d!2151276)))

(assert (=> bs!1829292 (not (= lambda!386925 lambda!386922))))

(assert (=> d!2151278 true))

(assert (=> d!2151278 (exists!2763 zl!343 lambda!386925)))

(declare-fun lt!2455490 () Unit!160035)

(declare-fun choose!51025 (List!66304 Regex!16668) Unit!160035)

(assert (=> d!2151278 (= lt!2455490 (choose!51025 zl!343 lt!2455426))))

(assert (=> d!2151278 (contains!20315 (unfocusZipperList!2085 zl!343) lt!2455426)))

(assert (=> d!2151278 (= (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!23 zl!343 lt!2455426) lt!2455490)))

(declare-fun bs!1829293 () Bool)

(assert (= bs!1829293 d!2151278))

(declare-fun m!7584678 () Bool)

(assert (=> bs!1829293 m!7584678))

(declare-fun m!7584680 () Bool)

(assert (=> bs!1829293 m!7584680))

(assert (=> bs!1829293 m!7584516))

(assert (=> bs!1829293 m!7584516))

(declare-fun m!7584682 () Bool)

(assert (=> bs!1829293 m!7584682))

(assert (=> b!6842606 d!2151278))

(declare-fun b!6842868 () Bool)

(assert (=> b!6842868 true))

(assert (=> b!6842868 true))

(declare-fun bs!1829294 () Bool)

(declare-fun b!6842867 () Bool)

(assert (= bs!1829294 (and b!6842867 b!6842868)))

(declare-fun lambda!386931 () Int)

(declare-fun lambda!386930 () Int)

(assert (=> bs!1829294 (not (= lambda!386931 lambda!386930))))

(assert (=> b!6842867 true))

(assert (=> b!6842867 true))

(declare-fun b!6842862 () Bool)

(declare-fun e!4126831 () Bool)

(declare-fun e!4126829 () Bool)

(assert (=> b!6842862 (= e!4126831 e!4126829)))

(declare-fun c!1273921 () Bool)

(assert (=> b!6842862 (= c!1273921 (is-Star!16668 r!7292))))

(declare-fun bm!623156 () Bool)

(declare-fun call!623161 () Bool)

(declare-fun isEmpty!38560 (List!66305) Bool)

(assert (=> bm!623156 (= call!623161 (isEmpty!38560 s!2326))))

(declare-fun b!6842863 () Bool)

(declare-fun e!4126830 () Bool)

(assert (=> b!6842863 (= e!4126830 call!623161)))

(declare-fun b!6842864 () Bool)

(declare-fun c!1273922 () Bool)

(assert (=> b!6842864 (= c!1273922 (is-Union!16668 r!7292))))

(declare-fun e!4126827 () Bool)

(assert (=> b!6842864 (= e!4126827 e!4126831)))

(declare-fun b!6842865 () Bool)

(declare-fun res!2793778 () Bool)

(declare-fun e!4126832 () Bool)

(assert (=> b!6842865 (=> res!2793778 e!4126832)))

(assert (=> b!6842865 (= res!2793778 call!623161)))

(assert (=> b!6842865 (= e!4126829 e!4126832)))

(declare-fun b!6842866 () Bool)

(assert (=> b!6842866 (= e!4126827 (= s!2326 (Cons!66181 (c!1273870 r!7292) Nil!66181)))))

(declare-fun call!623162 () Bool)

(assert (=> b!6842867 (= e!4126829 call!623162)))

(assert (=> b!6842868 (= e!4126832 call!623162)))

(declare-fun d!2151284 () Bool)

(declare-fun c!1273919 () Bool)

(assert (=> d!2151284 (= c!1273919 (is-EmptyExpr!16668 r!7292))))

(assert (=> d!2151284 (= (matchRSpec!3769 r!7292 s!2326) e!4126830)))

(declare-fun b!6842861 () Bool)

(declare-fun e!4126833 () Bool)

(assert (=> b!6842861 (= e!4126831 e!4126833)))

(declare-fun res!2793777 () Bool)

(assert (=> b!6842861 (= res!2793777 (matchRSpec!3769 (regOne!33849 r!7292) s!2326))))

(assert (=> b!6842861 (=> res!2793777 e!4126833)))

(declare-fun b!6842869 () Bool)

(declare-fun e!4126828 () Bool)

(assert (=> b!6842869 (= e!4126830 e!4126828)))

(declare-fun res!2793776 () Bool)

(assert (=> b!6842869 (= res!2793776 (not (is-EmptyLang!16668 r!7292)))))

(assert (=> b!6842869 (=> (not res!2793776) (not e!4126828))))

(declare-fun bm!623157 () Bool)

(declare-fun Exists!3732 (Int) Bool)

(assert (=> bm!623157 (= call!623162 (Exists!3732 (ite c!1273921 lambda!386930 lambda!386931)))))

(declare-fun b!6842870 () Bool)

(declare-fun c!1273920 () Bool)

(assert (=> b!6842870 (= c!1273920 (is-ElementMatch!16668 r!7292))))

(assert (=> b!6842870 (= e!4126828 e!4126827)))

(declare-fun b!6842871 () Bool)

(assert (=> b!6842871 (= e!4126833 (matchRSpec!3769 (regTwo!33849 r!7292) s!2326))))

(assert (= (and d!2151284 c!1273919) b!6842863))

(assert (= (and d!2151284 (not c!1273919)) b!6842869))

(assert (= (and b!6842869 res!2793776) b!6842870))

(assert (= (and b!6842870 c!1273920) b!6842866))

(assert (= (and b!6842870 (not c!1273920)) b!6842864))

(assert (= (and b!6842864 c!1273922) b!6842861))

(assert (= (and b!6842864 (not c!1273922)) b!6842862))

(assert (= (and b!6842861 (not res!2793777)) b!6842871))

(assert (= (and b!6842862 c!1273921) b!6842865))

(assert (= (and b!6842862 (not c!1273921)) b!6842867))

(assert (= (and b!6842865 (not res!2793778)) b!6842868))

(assert (= (or b!6842868 b!6842867) bm!623157))

(assert (= (or b!6842863 b!6842865) bm!623156))

(declare-fun m!7584684 () Bool)

(assert (=> bm!623156 m!7584684))

(declare-fun m!7584686 () Bool)

(assert (=> b!6842861 m!7584686))

(declare-fun m!7584688 () Bool)

(assert (=> bm!623157 m!7584688))

(declare-fun m!7584690 () Bool)

(assert (=> b!6842871 m!7584690))

(assert (=> b!6842608 d!2151284))

(declare-fun b!6842918 () Bool)

(declare-fun res!2793805 () Bool)

(declare-fun e!4126859 () Bool)

(assert (=> b!6842918 (=> (not res!2793805) (not e!4126859))))

(declare-fun tail!12797 (List!66305) List!66305)

(assert (=> b!6842918 (= res!2793805 (isEmpty!38560 (tail!12797 s!2326)))))

(declare-fun b!6842919 () Bool)

(declare-fun res!2793803 () Bool)

(declare-fun e!4126858 () Bool)

(assert (=> b!6842919 (=> res!2793803 e!4126858)))

(assert (=> b!6842919 (= res!2793803 (not (isEmpty!38560 (tail!12797 s!2326))))))

(declare-fun b!6842920 () Bool)

(declare-fun res!2793807 () Bool)

(declare-fun e!4126861 () Bool)

(assert (=> b!6842920 (=> res!2793807 e!4126861)))

(assert (=> b!6842920 (= res!2793807 (not (is-ElementMatch!16668 r!7292)))))

(declare-fun e!4126857 () Bool)

(assert (=> b!6842920 (= e!4126857 e!4126861)))

(declare-fun d!2151286 () Bool)

(declare-fun e!4126855 () Bool)

(assert (=> d!2151286 e!4126855))

(declare-fun c!1273933 () Bool)

(assert (=> d!2151286 (= c!1273933 (is-EmptyExpr!16668 r!7292))))

(declare-fun lt!2455496 () Bool)

(declare-fun e!4126860 () Bool)

(assert (=> d!2151286 (= lt!2455496 e!4126860)))

(declare-fun c!1273934 () Bool)

(assert (=> d!2151286 (= c!1273934 (isEmpty!38560 s!2326))))

(assert (=> d!2151286 (validRegex!8404 r!7292)))

(assert (=> d!2151286 (= (matchR!8851 r!7292 s!2326) lt!2455496)))

(declare-fun b!6842921 () Bool)

(declare-fun derivativeStep!5316 (Regex!16668 C!33606) Regex!16668)

(declare-fun head!13714 (List!66305) C!33606)

(assert (=> b!6842921 (= e!4126860 (matchR!8851 (derivativeStep!5316 r!7292 (head!13714 s!2326)) (tail!12797 s!2326)))))

(declare-fun b!6842922 () Bool)

(assert (=> b!6842922 (= e!4126857 (not lt!2455496))))

(declare-fun b!6842923 () Bool)

(declare-fun e!4126856 () Bool)

(assert (=> b!6842923 (= e!4126856 e!4126858)))

(declare-fun res!2793804 () Bool)

(assert (=> b!6842923 (=> res!2793804 e!4126858)))

(declare-fun call!623166 () Bool)

(assert (=> b!6842923 (= res!2793804 call!623166)))

(declare-fun b!6842924 () Bool)

(declare-fun res!2793810 () Bool)

(assert (=> b!6842924 (=> (not res!2793810) (not e!4126859))))

(assert (=> b!6842924 (= res!2793810 (not call!623166))))

(declare-fun b!6842925 () Bool)

(assert (=> b!6842925 (= e!4126858 (not (= (head!13714 s!2326) (c!1273870 r!7292))))))

(declare-fun b!6842926 () Bool)

(assert (=> b!6842926 (= e!4126855 e!4126857)))

(declare-fun c!1273932 () Bool)

(assert (=> b!6842926 (= c!1273932 (is-EmptyLang!16668 r!7292))))

(declare-fun b!6842927 () Bool)

(assert (=> b!6842927 (= e!4126861 e!4126856)))

(declare-fun res!2793809 () Bool)

(assert (=> b!6842927 (=> (not res!2793809) (not e!4126856))))

(assert (=> b!6842927 (= res!2793809 (not lt!2455496))))

(declare-fun bm!623161 () Bool)

(assert (=> bm!623161 (= call!623166 (isEmpty!38560 s!2326))))

(declare-fun b!6842928 () Bool)

(assert (=> b!6842928 (= e!4126855 (= lt!2455496 call!623166))))

(declare-fun b!6842929 () Bool)

(assert (=> b!6842929 (= e!4126859 (= (head!13714 s!2326) (c!1273870 r!7292)))))

(declare-fun b!6842930 () Bool)

(declare-fun res!2793808 () Bool)

(assert (=> b!6842930 (=> res!2793808 e!4126861)))

(assert (=> b!6842930 (= res!2793808 e!4126859)))

(declare-fun res!2793806 () Bool)

(assert (=> b!6842930 (=> (not res!2793806) (not e!4126859))))

(assert (=> b!6842930 (= res!2793806 lt!2455496)))

(declare-fun b!6842931 () Bool)

(assert (=> b!6842931 (= e!4126860 (nullable!6633 r!7292))))

(assert (= (and d!2151286 c!1273934) b!6842931))

(assert (= (and d!2151286 (not c!1273934)) b!6842921))

(assert (= (and d!2151286 c!1273933) b!6842928))

(assert (= (and d!2151286 (not c!1273933)) b!6842926))

(assert (= (and b!6842926 c!1273932) b!6842922))

(assert (= (and b!6842926 (not c!1273932)) b!6842920))

(assert (= (and b!6842920 (not res!2793807)) b!6842930))

(assert (= (and b!6842930 res!2793806) b!6842924))

(assert (= (and b!6842924 res!2793810) b!6842918))

(assert (= (and b!6842918 res!2793805) b!6842929))

(assert (= (and b!6842930 (not res!2793808)) b!6842927))

(assert (= (and b!6842927 res!2793809) b!6842923))

(assert (= (and b!6842923 (not res!2793804)) b!6842919))

(assert (= (and b!6842919 (not res!2793803)) b!6842925))

(assert (= (or b!6842928 b!6842923 b!6842924) bm!623161))

(assert (=> bm!623161 m!7584684))

(declare-fun m!7584706 () Bool)

(assert (=> b!6842921 m!7584706))

(assert (=> b!6842921 m!7584706))

(declare-fun m!7584708 () Bool)

(assert (=> b!6842921 m!7584708))

(declare-fun m!7584710 () Bool)

(assert (=> b!6842921 m!7584710))

(assert (=> b!6842921 m!7584708))

(assert (=> b!6842921 m!7584710))

(declare-fun m!7584712 () Bool)

(assert (=> b!6842921 m!7584712))

(assert (=> d!2151286 m!7584684))

(assert (=> d!2151286 m!7584536))

(assert (=> b!6842918 m!7584710))

(assert (=> b!6842918 m!7584710))

(declare-fun m!7584714 () Bool)

(assert (=> b!6842918 m!7584714))

(assert (=> b!6842919 m!7584710))

(assert (=> b!6842919 m!7584710))

(assert (=> b!6842919 m!7584714))

(assert (=> b!6842925 m!7584706))

(declare-fun m!7584716 () Bool)

(assert (=> b!6842931 m!7584716))

(assert (=> b!6842929 m!7584706))

(assert (=> b!6842608 d!2151286))

(declare-fun d!2151290 () Bool)

(assert (=> d!2151290 (= (matchR!8851 r!7292 s!2326) (matchRSpec!3769 r!7292 s!2326))))

(declare-fun lt!2455499 () Unit!160035)

(declare-fun choose!51026 (Regex!16668 List!66305) Unit!160035)

(assert (=> d!2151290 (= lt!2455499 (choose!51026 r!7292 s!2326))))

(assert (=> d!2151290 (validRegex!8404 r!7292)))

(assert (=> d!2151290 (= (mainMatchTheorem!3769 r!7292 s!2326) lt!2455499)))

(declare-fun bs!1829295 () Bool)

(assert (= bs!1829295 d!2151290))

(assert (=> bs!1829295 m!7584544))

(assert (=> bs!1829295 m!7584542))

(declare-fun m!7584718 () Bool)

(assert (=> bs!1829295 m!7584718))

(assert (=> bs!1829295 m!7584536))

(assert (=> b!6842608 d!2151290))

(declare-fun b!6842950 () Bool)

(declare-fun e!4126882 () Bool)

(declare-fun e!4126877 () Bool)

(assert (=> b!6842950 (= e!4126882 e!4126877)))

(declare-fun c!1273940 () Bool)

(assert (=> b!6842950 (= c!1273940 (is-Union!16668 lt!2455426))))

(declare-fun b!6842951 () Bool)

(declare-fun e!4126876 () Bool)

(assert (=> b!6842951 (= e!4126882 e!4126876)))

(declare-fun res!2793821 () Bool)

(assert (=> b!6842951 (= res!2793821 (not (nullable!6633 (reg!16997 lt!2455426))))))

(assert (=> b!6842951 (=> (not res!2793821) (not e!4126876))))

(declare-fun b!6842952 () Bool)

(declare-fun call!623174 () Bool)

(assert (=> b!6842952 (= e!4126876 call!623174)))

(declare-fun b!6842953 () Bool)

(declare-fun e!4126879 () Bool)

(declare-fun call!623175 () Bool)

(assert (=> b!6842953 (= e!4126879 call!623175)))

(declare-fun d!2151292 () Bool)

(declare-fun res!2793823 () Bool)

(declare-fun e!4126881 () Bool)

(assert (=> d!2151292 (=> res!2793823 e!4126881)))

(assert (=> d!2151292 (= res!2793823 (is-ElementMatch!16668 lt!2455426))))

(assert (=> d!2151292 (= (validRegex!8404 lt!2455426) e!4126881)))

(declare-fun b!6842954 () Bool)

(declare-fun e!4126880 () Bool)

(assert (=> b!6842954 (= e!4126880 e!4126879)))

(declare-fun res!2793825 () Bool)

(assert (=> b!6842954 (=> (not res!2793825) (not e!4126879))))

(declare-fun call!623173 () Bool)

(assert (=> b!6842954 (= res!2793825 call!623173)))

(declare-fun bm!623168 () Bool)

(assert (=> bm!623168 (= call!623175 call!623174)))

(declare-fun bm!623169 () Bool)

(declare-fun c!1273939 () Bool)

(assert (=> bm!623169 (= call!623174 (validRegex!8404 (ite c!1273939 (reg!16997 lt!2455426) (ite c!1273940 (regTwo!33849 lt!2455426) (regTwo!33848 lt!2455426)))))))

(declare-fun bm!623170 () Bool)

(assert (=> bm!623170 (= call!623173 (validRegex!8404 (ite c!1273940 (regOne!33849 lt!2455426) (regOne!33848 lt!2455426))))))

(declare-fun b!6842955 () Bool)

(declare-fun res!2793824 () Bool)

(declare-fun e!4126878 () Bool)

(assert (=> b!6842955 (=> (not res!2793824) (not e!4126878))))

(assert (=> b!6842955 (= res!2793824 call!623173)))

(assert (=> b!6842955 (= e!4126877 e!4126878)))

(declare-fun b!6842956 () Bool)

(assert (=> b!6842956 (= e!4126878 call!623175)))

(declare-fun b!6842957 () Bool)

(declare-fun res!2793822 () Bool)

(assert (=> b!6842957 (=> res!2793822 e!4126880)))

(assert (=> b!6842957 (= res!2793822 (not (is-Concat!25513 lt!2455426)))))

(assert (=> b!6842957 (= e!4126877 e!4126880)))

(declare-fun b!6842958 () Bool)

(assert (=> b!6842958 (= e!4126881 e!4126882)))

(assert (=> b!6842958 (= c!1273939 (is-Star!16668 lt!2455426))))

(assert (= (and d!2151292 (not res!2793823)) b!6842958))

(assert (= (and b!6842958 c!1273939) b!6842951))

(assert (= (and b!6842958 (not c!1273939)) b!6842950))

(assert (= (and b!6842951 res!2793821) b!6842952))

(assert (= (and b!6842950 c!1273940) b!6842955))

(assert (= (and b!6842950 (not c!1273940)) b!6842957))

(assert (= (and b!6842955 res!2793824) b!6842956))

(assert (= (and b!6842957 (not res!2793822)) b!6842954))

(assert (= (and b!6842954 res!2793825) b!6842953))

(assert (= (or b!6842956 b!6842953) bm!623168))

(assert (= (or b!6842955 b!6842954) bm!623170))

(assert (= (or b!6842952 bm!623168) bm!623169))

(declare-fun m!7584720 () Bool)

(assert (=> b!6842951 m!7584720))

(declare-fun m!7584722 () Bool)

(assert (=> bm!623169 m!7584722))

(declare-fun m!7584724 () Bool)

(assert (=> bm!623170 m!7584724))

(assert (=> b!6842599 d!2151292))

(declare-fun bs!1829296 () Bool)

(declare-fun d!2151294 () Bool)

(assert (= bs!1829296 (and d!2151294 d!2151264)))

(declare-fun lambda!386932 () Int)

(assert (=> bs!1829296 (not (= lambda!386932 lambda!386913))))

(declare-fun bs!1829297 () Bool)

(assert (= bs!1829297 (and d!2151294 d!2151272)))

(assert (=> bs!1829297 (= lambda!386932 lambda!386919)))

(declare-fun bs!1829298 () Bool)

(assert (= bs!1829298 (and d!2151294 d!2151260)))

(assert (=> bs!1829298 (not (= lambda!386932 lambda!386907))))

(assert (=> bs!1829296 (= lambda!386932 lambda!386912)))

(declare-fun bs!1829299 () Bool)

(assert (= bs!1829299 (and d!2151294 d!2151268)))

(assert (=> bs!1829299 (= lambda!386932 lambda!386916)))

(declare-fun bs!1829300 () Bool)

(assert (= bs!1829300 (and d!2151294 b!6842597)))

(assert (=> bs!1829300 (not (= lambda!386932 lambda!386880))))

(assert (=> d!2151294 (= (inv!84918 (h!72628 zl!343)) (forall!15843 (exprs!6552 (h!72628 zl!343)) lambda!386932))))

(declare-fun bs!1829301 () Bool)

(assert (= bs!1829301 d!2151294))

(declare-fun m!7584726 () Bool)

(assert (=> bs!1829301 m!7584726))

(assert (=> b!6842588 d!2151294))

(declare-fun b!6842959 () Bool)

(declare-fun res!2793828 () Bool)

(declare-fun e!4126887 () Bool)

(assert (=> b!6842959 (=> (not res!2793828) (not e!4126887))))

(assert (=> b!6842959 (= res!2793828 (isEmpty!38560 (tail!12797 s!2326)))))

(declare-fun b!6842960 () Bool)

(declare-fun res!2793826 () Bool)

(declare-fun e!4126886 () Bool)

(assert (=> b!6842960 (=> res!2793826 e!4126886)))

(assert (=> b!6842960 (= res!2793826 (not (isEmpty!38560 (tail!12797 s!2326))))))

(declare-fun b!6842961 () Bool)

(declare-fun res!2793830 () Bool)

(declare-fun e!4126889 () Bool)

(assert (=> b!6842961 (=> res!2793830 e!4126889)))

(assert (=> b!6842961 (= res!2793830 (not (is-ElementMatch!16668 lt!2455426)))))

(declare-fun e!4126885 () Bool)

(assert (=> b!6842961 (= e!4126885 e!4126889)))

(declare-fun d!2151296 () Bool)

(declare-fun e!4126883 () Bool)

(assert (=> d!2151296 e!4126883))

(declare-fun c!1273942 () Bool)

(assert (=> d!2151296 (= c!1273942 (is-EmptyExpr!16668 lt!2455426))))

(declare-fun lt!2455500 () Bool)

(declare-fun e!4126888 () Bool)

(assert (=> d!2151296 (= lt!2455500 e!4126888)))

(declare-fun c!1273943 () Bool)

(assert (=> d!2151296 (= c!1273943 (isEmpty!38560 s!2326))))

(assert (=> d!2151296 (validRegex!8404 lt!2455426)))

(assert (=> d!2151296 (= (matchR!8851 lt!2455426 s!2326) lt!2455500)))

(declare-fun b!6842962 () Bool)

(assert (=> b!6842962 (= e!4126888 (matchR!8851 (derivativeStep!5316 lt!2455426 (head!13714 s!2326)) (tail!12797 s!2326)))))

(declare-fun b!6842963 () Bool)

(assert (=> b!6842963 (= e!4126885 (not lt!2455500))))

(declare-fun b!6842964 () Bool)

(declare-fun e!4126884 () Bool)

(assert (=> b!6842964 (= e!4126884 e!4126886)))

(declare-fun res!2793827 () Bool)

(assert (=> b!6842964 (=> res!2793827 e!4126886)))

(declare-fun call!623176 () Bool)

(assert (=> b!6842964 (= res!2793827 call!623176)))

(declare-fun b!6842965 () Bool)

(declare-fun res!2793833 () Bool)

(assert (=> b!6842965 (=> (not res!2793833) (not e!4126887))))

(assert (=> b!6842965 (= res!2793833 (not call!623176))))

(declare-fun b!6842966 () Bool)

(assert (=> b!6842966 (= e!4126886 (not (= (head!13714 s!2326) (c!1273870 lt!2455426))))))

(declare-fun b!6842967 () Bool)

(assert (=> b!6842967 (= e!4126883 e!4126885)))

(declare-fun c!1273941 () Bool)

(assert (=> b!6842967 (= c!1273941 (is-EmptyLang!16668 lt!2455426))))

(declare-fun b!6842968 () Bool)

(assert (=> b!6842968 (= e!4126889 e!4126884)))

(declare-fun res!2793832 () Bool)

(assert (=> b!6842968 (=> (not res!2793832) (not e!4126884))))

(assert (=> b!6842968 (= res!2793832 (not lt!2455500))))

(declare-fun bm!623171 () Bool)

(assert (=> bm!623171 (= call!623176 (isEmpty!38560 s!2326))))

(declare-fun b!6842969 () Bool)

(assert (=> b!6842969 (= e!4126883 (= lt!2455500 call!623176))))

(declare-fun b!6842970 () Bool)

(assert (=> b!6842970 (= e!4126887 (= (head!13714 s!2326) (c!1273870 lt!2455426)))))

(declare-fun b!6842971 () Bool)

(declare-fun res!2793831 () Bool)

(assert (=> b!6842971 (=> res!2793831 e!4126889)))

(assert (=> b!6842971 (= res!2793831 e!4126887)))

(declare-fun res!2793829 () Bool)

(assert (=> b!6842971 (=> (not res!2793829) (not e!4126887))))

(assert (=> b!6842971 (= res!2793829 lt!2455500)))

(declare-fun b!6842972 () Bool)

(assert (=> b!6842972 (= e!4126888 (nullable!6633 lt!2455426))))

(assert (= (and d!2151296 c!1273943) b!6842972))

(assert (= (and d!2151296 (not c!1273943)) b!6842962))

(assert (= (and d!2151296 c!1273942) b!6842969))

(assert (= (and d!2151296 (not c!1273942)) b!6842967))

(assert (= (and b!6842967 c!1273941) b!6842963))

(assert (= (and b!6842967 (not c!1273941)) b!6842961))

(assert (= (and b!6842961 (not res!2793830)) b!6842971))

(assert (= (and b!6842971 res!2793829) b!6842965))

(assert (= (and b!6842965 res!2793833) b!6842959))

(assert (= (and b!6842959 res!2793828) b!6842970))

(assert (= (and b!6842971 (not res!2793831)) b!6842968))

(assert (= (and b!6842968 res!2793832) b!6842964))

(assert (= (and b!6842964 (not res!2793827)) b!6842960))

(assert (= (and b!6842960 (not res!2793826)) b!6842966))

(assert (= (or b!6842969 b!6842964 b!6842965) bm!623171))

(assert (=> bm!623171 m!7584684))

(assert (=> b!6842962 m!7584706))

(assert (=> b!6842962 m!7584706))

(declare-fun m!7584728 () Bool)

(assert (=> b!6842962 m!7584728))

(assert (=> b!6842962 m!7584710))

(assert (=> b!6842962 m!7584728))

(assert (=> b!6842962 m!7584710))

(declare-fun m!7584730 () Bool)

(assert (=> b!6842962 m!7584730))

(assert (=> d!2151296 m!7584684))

(assert (=> d!2151296 m!7584526))

(assert (=> b!6842959 m!7584710))

(assert (=> b!6842959 m!7584710))

(assert (=> b!6842959 m!7584714))

(assert (=> b!6842960 m!7584710))

(assert (=> b!6842960 m!7584710))

(assert (=> b!6842960 m!7584714))

(assert (=> b!6842966 m!7584706))

(declare-fun m!7584732 () Bool)

(assert (=> b!6842972 m!7584732))

(assert (=> b!6842970 m!7584706))

(assert (=> b!6842590 d!2151296))

(assert (=> b!6842600 d!2151260))

(assert (=> b!6842602 d!2151274))

(declare-fun d!2151298 () Bool)

(declare-fun e!4126892 () Bool)

(assert (=> d!2151298 e!4126892))

(declare-fun res!2793836 () Bool)

(assert (=> d!2151298 (=> (not res!2793836) (not e!4126892))))

(declare-fun lt!2455503 () List!66304)

(declare-fun noDuplicate!2436 (List!66304) Bool)

(assert (=> d!2151298 (= res!2793836 (noDuplicate!2436 lt!2455503))))

(declare-fun choose!51028 ((Set Context!12104)) List!66304)

(assert (=> d!2151298 (= lt!2455503 (choose!51028 z!1189))))

(assert (=> d!2151298 (= (toList!10452 z!1189) lt!2455503)))

(declare-fun b!6842975 () Bool)

(assert (=> b!6842975 (= e!4126892 (= (content!12972 lt!2455503) z!1189))))

(assert (= (and d!2151298 res!2793836) b!6842975))

(declare-fun m!7584734 () Bool)

(assert (=> d!2151298 m!7584734))

(declare-fun m!7584736 () Bool)

(assert (=> d!2151298 m!7584736))

(declare-fun m!7584738 () Bool)

(assert (=> b!6842975 m!7584738))

(assert (=> b!6842591 d!2151298))

(declare-fun b!6842980 () Bool)

(declare-fun e!4126895 () Bool)

(declare-fun tp!1874032 () Bool)

(declare-fun tp!1874033 () Bool)

(assert (=> b!6842980 (= e!4126895 (and tp!1874032 tp!1874033))))

(assert (=> b!6842598 (= tp!1873992 e!4126895)))

(assert (= (and b!6842598 (is-Cons!66179 (exprs!6552 (h!72628 zl!343)))) b!6842980))

(declare-fun b!6842981 () Bool)

(declare-fun e!4126896 () Bool)

(declare-fun tp!1874034 () Bool)

(declare-fun tp!1874035 () Bool)

(assert (=> b!6842981 (= e!4126896 (and tp!1874034 tp!1874035))))

(assert (=> b!6842603 (= tp!1873989 e!4126896)))

(assert (= (and b!6842603 (is-Cons!66179 (exprs!6552 setElem!47044))) b!6842981))

(declare-fun b!6843003 () Bool)

(declare-fun e!4126906 () Bool)

(declare-fun tp!1874049 () Bool)

(assert (=> b!6843003 (= e!4126906 tp!1874049)))

(declare-fun b!6843004 () Bool)

(declare-fun tp!1874047 () Bool)

(declare-fun tp!1874048 () Bool)

(assert (=> b!6843004 (= e!4126906 (and tp!1874047 tp!1874048))))

(declare-fun b!6843001 () Bool)

(assert (=> b!6843001 (= e!4126906 tp_is_empty!42589)))

(assert (=> b!6842592 (= tp!1873991 e!4126906)))

(declare-fun b!6843002 () Bool)

(declare-fun tp!1874046 () Bool)

(declare-fun tp!1874050 () Bool)

(assert (=> b!6843002 (= e!4126906 (and tp!1874046 tp!1874050))))

(assert (= (and b!6842592 (is-ElementMatch!16668 (regOne!33849 r!7292))) b!6843001))

(assert (= (and b!6842592 (is-Concat!25513 (regOne!33849 r!7292))) b!6843002))

(assert (= (and b!6842592 (is-Star!16668 (regOne!33849 r!7292))) b!6843003))

(assert (= (and b!6842592 (is-Union!16668 (regOne!33849 r!7292))) b!6843004))

(declare-fun b!6843007 () Bool)

(declare-fun e!4126907 () Bool)

(declare-fun tp!1874054 () Bool)

(assert (=> b!6843007 (= e!4126907 tp!1874054)))

(declare-fun b!6843008 () Bool)

(declare-fun tp!1874052 () Bool)

(declare-fun tp!1874053 () Bool)

(assert (=> b!6843008 (= e!4126907 (and tp!1874052 tp!1874053))))

(declare-fun b!6843005 () Bool)

(assert (=> b!6843005 (= e!4126907 tp_is_empty!42589)))

(assert (=> b!6842592 (= tp!1873995 e!4126907)))

(declare-fun b!6843006 () Bool)

(declare-fun tp!1874051 () Bool)

(declare-fun tp!1874055 () Bool)

(assert (=> b!6843006 (= e!4126907 (and tp!1874051 tp!1874055))))

(assert (= (and b!6842592 (is-ElementMatch!16668 (regTwo!33849 r!7292))) b!6843005))

(assert (= (and b!6842592 (is-Concat!25513 (regTwo!33849 r!7292))) b!6843006))

(assert (= (and b!6842592 (is-Star!16668 (regTwo!33849 r!7292))) b!6843007))

(assert (= (and b!6842592 (is-Union!16668 (regTwo!33849 r!7292))) b!6843008))

(declare-fun b!6843011 () Bool)

(declare-fun e!4126908 () Bool)

(declare-fun tp!1874059 () Bool)

(assert (=> b!6843011 (= e!4126908 tp!1874059)))

(declare-fun b!6843012 () Bool)

(declare-fun tp!1874057 () Bool)

(declare-fun tp!1874058 () Bool)

(assert (=> b!6843012 (= e!4126908 (and tp!1874057 tp!1874058))))

(declare-fun b!6843009 () Bool)

(assert (=> b!6843009 (= e!4126908 tp_is_empty!42589)))

(assert (=> b!6842589 (= tp!1873997 e!4126908)))

(declare-fun b!6843010 () Bool)

(declare-fun tp!1874056 () Bool)

(declare-fun tp!1874060 () Bool)

(assert (=> b!6843010 (= e!4126908 (and tp!1874056 tp!1874060))))

(assert (= (and b!6842589 (is-ElementMatch!16668 (regOne!33848 r!7292))) b!6843009))

(assert (= (and b!6842589 (is-Concat!25513 (regOne!33848 r!7292))) b!6843010))

(assert (= (and b!6842589 (is-Star!16668 (regOne!33848 r!7292))) b!6843011))

(assert (= (and b!6842589 (is-Union!16668 (regOne!33848 r!7292))) b!6843012))

(declare-fun b!6843015 () Bool)

(declare-fun e!4126909 () Bool)

(declare-fun tp!1874064 () Bool)

(assert (=> b!6843015 (= e!4126909 tp!1874064)))

(declare-fun b!6843016 () Bool)

(declare-fun tp!1874062 () Bool)

(declare-fun tp!1874063 () Bool)

(assert (=> b!6843016 (= e!4126909 (and tp!1874062 tp!1874063))))

(declare-fun b!6843013 () Bool)

(assert (=> b!6843013 (= e!4126909 tp_is_empty!42589)))

(assert (=> b!6842589 (= tp!1873990 e!4126909)))

(declare-fun b!6843014 () Bool)

(declare-fun tp!1874061 () Bool)

(declare-fun tp!1874065 () Bool)

(assert (=> b!6843014 (= e!4126909 (and tp!1874061 tp!1874065))))

(assert (= (and b!6842589 (is-ElementMatch!16668 (regTwo!33848 r!7292))) b!6843013))

(assert (= (and b!6842589 (is-Concat!25513 (regTwo!33848 r!7292))) b!6843014))

(assert (= (and b!6842589 (is-Star!16668 (regTwo!33848 r!7292))) b!6843015))

(assert (= (and b!6842589 (is-Union!16668 (regTwo!33848 r!7292))) b!6843016))

(declare-fun b!6843019 () Bool)

(declare-fun e!4126910 () Bool)

(declare-fun tp!1874069 () Bool)

(assert (=> b!6843019 (= e!4126910 tp!1874069)))

(declare-fun b!6843020 () Bool)

(declare-fun tp!1874067 () Bool)

(declare-fun tp!1874068 () Bool)

(assert (=> b!6843020 (= e!4126910 (and tp!1874067 tp!1874068))))

(declare-fun b!6843017 () Bool)

(assert (=> b!6843017 (= e!4126910 tp_is_empty!42589)))

(assert (=> b!6842604 (= tp!1873988 e!4126910)))

(declare-fun b!6843018 () Bool)

(declare-fun tp!1874066 () Bool)

(declare-fun tp!1874070 () Bool)

(assert (=> b!6843018 (= e!4126910 (and tp!1874066 tp!1874070))))

(assert (= (and b!6842604 (is-ElementMatch!16668 (reg!16997 r!7292))) b!6843017))

(assert (= (and b!6842604 (is-Concat!25513 (reg!16997 r!7292))) b!6843018))

(assert (= (and b!6842604 (is-Star!16668 (reg!16997 r!7292))) b!6843019))

(assert (= (and b!6842604 (is-Union!16668 (reg!16997 r!7292))) b!6843020))

(declare-fun b!6843028 () Bool)

(declare-fun e!4126916 () Bool)

(declare-fun tp!1874075 () Bool)

(assert (=> b!6843028 (= e!4126916 tp!1874075)))

(declare-fun e!4126915 () Bool)

(declare-fun tp!1874076 () Bool)

(declare-fun b!6843027 () Bool)

(assert (=> b!6843027 (= e!4126915 (and (inv!84918 (h!72628 (t!380047 zl!343))) e!4126916 tp!1874076))))

(assert (=> b!6842588 (= tp!1873994 e!4126915)))

(assert (= b!6843027 b!6843028))

(assert (= (and b!6842588 (is-Cons!66180 (t!380047 zl!343))) b!6843027))

(declare-fun m!7584746 () Bool)

(assert (=> b!6843027 m!7584746))

(declare-fun b!6843033 () Bool)

(declare-fun e!4126919 () Bool)

(declare-fun tp!1874079 () Bool)

(assert (=> b!6843033 (= e!4126919 (and tp_is_empty!42589 tp!1874079))))

(assert (=> b!6842601 (= tp!1873996 e!4126919)))

(assert (= (and b!6842601 (is-Cons!66181 (t!380048 s!2326))) b!6843033))

(declare-fun condSetEmpty!47050 () Bool)

(assert (=> setNonEmpty!47044 (= condSetEmpty!47050 (= setRest!47044 (as set.empty (Set Context!12104))))))

(declare-fun setRes!47050 () Bool)

(assert (=> setNonEmpty!47044 (= tp!1873993 setRes!47050)))

(declare-fun setIsEmpty!47050 () Bool)

(assert (=> setIsEmpty!47050 setRes!47050))

(declare-fun tp!1874084 () Bool)

(declare-fun e!4126922 () Bool)

(declare-fun setElem!47050 () Context!12104)

(declare-fun setNonEmpty!47050 () Bool)

(assert (=> setNonEmpty!47050 (= setRes!47050 (and tp!1874084 (inv!84918 setElem!47050) e!4126922))))

(declare-fun setRest!47050 () (Set Context!12104))

(assert (=> setNonEmpty!47050 (= setRest!47044 (set.union (set.insert setElem!47050 (as set.empty (Set Context!12104))) setRest!47050))))

(declare-fun b!6843038 () Bool)

(declare-fun tp!1874085 () Bool)

(assert (=> b!6843038 (= e!4126922 tp!1874085)))

(assert (= (and setNonEmpty!47044 condSetEmpty!47050) setIsEmpty!47050))

(assert (= (and setNonEmpty!47044 (not condSetEmpty!47050)) setNonEmpty!47050))

(assert (= setNonEmpty!47050 b!6843038))

(declare-fun m!7584748 () Bool)

(assert (=> setNonEmpty!47050 m!7584748))

(declare-fun b_lambda!258055 () Bool)

(assert (= b_lambda!258049 (or b!6842606 b_lambda!258055)))

(declare-fun bs!1829302 () Bool)

(declare-fun d!2151302 () Bool)

(assert (= bs!1829302 (and d!2151302 b!6842606)))

(assert (=> bs!1829302 (= (dynLambda!26436 lambda!386881 (h!72628 zl!343)) (= (generalisedConcat!2261 (exprs!6552 (h!72628 zl!343))) lt!2455426))))

(assert (=> bs!1829302 m!7584654))

(assert (=> b!6842731 d!2151302))

(declare-fun b_lambda!258057 () Bool)

(assert (= b_lambda!258043 (or b!6842597 b_lambda!258057)))

(declare-fun bs!1829303 () Bool)

(declare-fun d!2151304 () Bool)

(assert (= bs!1829303 (and d!2151304 b!6842597)))

(declare-fun res!2793842 () Bool)

(declare-fun e!4126923 () Bool)

(assert (=> bs!1829303 (=> (not res!2793842) (not e!4126923))))

(assert (=> bs!1829303 (= res!2793842 (validRegex!8404 lt!2455459))))

(assert (=> bs!1829303 (= (dynLambda!26435 lambda!386880 lt!2455459) e!4126923)))

(declare-fun b!6843039 () Bool)

(assert (=> b!6843039 (= e!4126923 (matchR!8851 lt!2455459 s!2326))))

(assert (= (and bs!1829303 res!2793842) b!6843039))

(declare-fun m!7584750 () Bool)

(assert (=> bs!1829303 m!7584750))

(declare-fun m!7584752 () Bool)

(assert (=> b!6843039 m!7584752))

(assert (=> d!2151250 d!2151304))

(declare-fun b_lambda!258059 () Bool)

(assert (= b_lambda!258047 (or b!6842606 b_lambda!258059)))

(declare-fun bs!1829304 () Bool)

(declare-fun d!2151306 () Bool)

(assert (= bs!1829304 (and d!2151306 b!6842606)))

(assert (=> bs!1829304 (= (dynLambda!26436 lambda!386881 lt!2455471) (= (generalisedConcat!2261 (exprs!6552 lt!2455471)) lt!2455426))))

(declare-fun m!7584754 () Bool)

(assert (=> bs!1829304 m!7584754))

(assert (=> d!2151256 d!2151306))

(declare-fun b_lambda!258061 () Bool)

(assert (= b_lambda!258045 (or b!6842597 b_lambda!258061)))

(declare-fun bs!1829305 () Bool)

(declare-fun d!2151308 () Bool)

(assert (= bs!1829305 (and d!2151308 b!6842597)))

(declare-fun res!2793843 () Bool)

(declare-fun e!4126924 () Bool)

(assert (=> bs!1829305 (=> (not res!2793843) (not e!4126924))))

(assert (=> bs!1829305 (= res!2793843 (validRegex!8404 (h!72627 lt!2455428)))))

(assert (=> bs!1829305 (= (dynLambda!26435 lambda!386880 (h!72627 lt!2455428)) e!4126924)))

(declare-fun b!6843040 () Bool)

(assert (=> b!6843040 (= e!4126924 (matchR!8851 (h!72627 lt!2455428) s!2326))))

(assert (= (and bs!1829305 res!2793843) b!6843040))

(declare-fun m!7584756 () Bool)

(assert (=> bs!1829305 m!7584756))

(declare-fun m!7584758 () Bool)

(assert (=> b!6843040 m!7584758))

(assert (=> b!6842708 d!2151308))

(push 1)

(assert (not b!6842929))

(assert (not b!6842735))

(assert (not b!6843007))

(assert (not b!6842752))

(assert (not bs!1829304))

(assert (not b!6843040))

(assert (not d!2151248))

(assert (not b!6843006))

(assert (not b!6843011))

(assert (not b!6842717))

(assert (not bm!623171))

(assert (not b_lambda!258059))

(assert (not b_lambda!258055))

(assert (not bm!623149))

(assert (not b!6842921))

(assert (not bm!623156))

(assert (not b!6843002))

(assert (not d!2151286))

(assert (not b!6842981))

(assert (not b!6843015))

(assert (not d!2151272))

(assert tp_is_empty!42589)

(assert (not b!6843038))

(assert (not b!6842962))

(assert (not b!6842711))

(assert (not setNonEmpty!47050))

(assert (not d!2151254))

(assert (not bm!623148))

(assert (not b!6842871))

(assert (not b_lambda!258061))

(assert (not d!2151296))

(assert (not d!2151298))

(assert (not b!6843027))

(assert (not b!6842707))

(assert (not b!6843019))

(assert (not b!6843039))

(assert (not d!2151260))

(assert (not b!6842861))

(assert (not b!6842960))

(assert (not b!6842975))

(assert (not bm!623157))

(assert (not bm!623170))

(assert (not b!6842785))

(assert (not b!6843003))

(assert (not bs!1829303))

(assert (not b!6843020))

(assert (not b!6842733))

(assert (not d!2151276))

(assert (not bm!623169))

(assert (not b!6842959))

(assert (not b!6843010))

(assert (not b!6842972))

(assert (not b!6842925))

(assert (not d!2151278))

(assert (not b!6843012))

(assert (not d!2151250))

(assert (not b!6842734))

(assert (not d!2151268))

(assert (not b!6843004))

(assert (not d!2151256))

(assert (not b!6843028))

(assert (not d!2151294))

(assert (not bs!1829302))

(assert (not d!2151244))

(assert (not b!6842951))

(assert (not b!6843018))

(assert (not b!6842919))

(assert (not bm!623161))

(assert (not b!6843033))

(assert (not b_lambda!258057))

(assert (not b!6842970))

(assert (not bs!1829305))

(assert (not b!6842966))

(assert (not b!6842931))

(assert (not d!2151264))

(assert (not b!6843014))

(assert (not d!2151290))

(assert (not b!6842710))

(assert (not b!6842691))

(assert (not b!6842918))

(assert (not b!6843008))

(assert (not b!6842980))

(assert (not b!6843016))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

