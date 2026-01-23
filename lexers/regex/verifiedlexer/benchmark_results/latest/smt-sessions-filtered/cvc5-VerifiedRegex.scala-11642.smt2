; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!650986 () Bool)

(assert start!650986)

(declare-fun b!6712210 () Bool)

(assert (=> b!6712210 true))

(assert (=> b!6712210 true))

(declare-fun setNonEmpty!45714 () Bool)

(declare-fun e!4056527 () Bool)

(declare-fun setRes!45714 () Bool)

(declare-datatypes ((C!33330 0))(
  ( (C!33331 (val!26367 Int)) )
))
(declare-datatypes ((Regex!16530 0))(
  ( (ElementMatch!16530 (c!1244588 C!33330)) (Concat!25375 (regOne!33572 Regex!16530) (regTwo!33572 Regex!16530)) (EmptyExpr!16530) (Star!16530 (reg!16859 Regex!16530)) (EmptyLang!16530) (Union!16530 (regOne!33573 Regex!16530) (regTwo!33573 Regex!16530)) )
))
(declare-datatypes ((List!65889 0))(
  ( (Nil!65765) (Cons!65765 (h!72213 Regex!16530) (t!379566 List!65889)) )
))
(declare-datatypes ((Context!11828 0))(
  ( (Context!11829 (exprs!6414 List!65889)) )
))
(declare-fun setElem!45714 () Context!11828)

(declare-fun tp!1839536 () Bool)

(declare-fun inv!84573 (Context!11828) Bool)

(assert (=> setNonEmpty!45714 (= setRes!45714 (and tp!1839536 (inv!84573 setElem!45714) e!4056527))))

(declare-fun z!1189 () (Set Context!11828))

(declare-fun setRest!45714 () (Set Context!11828))

(assert (=> setNonEmpty!45714 (= z!1189 (set.union (set.insert setElem!45714 (as set.empty (Set Context!11828))) setRest!45714))))

(declare-fun b!6712204 () Bool)

(declare-fun e!4056528 () Bool)

(declare-fun tp!1839533 () Bool)

(assert (=> b!6712204 (= e!4056528 tp!1839533)))

(declare-fun b!6712205 () Bool)

(declare-fun e!4056530 () Bool)

(declare-fun tp!1839538 () Bool)

(declare-fun tp!1839539 () Bool)

(assert (=> b!6712205 (= e!4056530 (and tp!1839538 tp!1839539))))

(declare-fun res!2746743 () Bool)

(declare-fun e!4056523 () Bool)

(assert (=> start!650986 (=> (not res!2746743) (not e!4056523))))

(declare-fun r!7292 () Regex!16530)

(declare-fun validRegex!8266 (Regex!16530) Bool)

(assert (=> start!650986 (= res!2746743 (validRegex!8266 r!7292))))

(assert (=> start!650986 e!4056523))

(assert (=> start!650986 e!4056530))

(declare-fun condSetEmpty!45714 () Bool)

(assert (=> start!650986 (= condSetEmpty!45714 (= z!1189 (as set.empty (Set Context!11828))))))

(assert (=> start!650986 setRes!45714))

(declare-fun e!4056525 () Bool)

(assert (=> start!650986 e!4056525))

(declare-fun e!4056524 () Bool)

(assert (=> start!650986 e!4056524))

(declare-fun b!6712206 () Bool)

(declare-fun tp!1839530 () Bool)

(assert (=> b!6712206 (= e!4056530 tp!1839530)))

(declare-fun setIsEmpty!45714 () Bool)

(assert (=> setIsEmpty!45714 setRes!45714))

(declare-fun b!6712207 () Bool)

(declare-fun tp_is_empty!42313 () Bool)

(assert (=> b!6712207 (= e!4056530 tp_is_empty!42313)))

(declare-fun b!6712208 () Bool)

(declare-fun res!2746742 () Bool)

(declare-fun e!4056529 () Bool)

(assert (=> b!6712208 (=> res!2746742 e!4056529)))

(assert (=> b!6712208 (= res!2746742 (or (is-EmptyExpr!16530 r!7292) (is-EmptyLang!16530 r!7292) (is-ElementMatch!16530 r!7292) (is-Union!16530 r!7292) (is-Concat!25375 r!7292)))))

(declare-fun tp!1839535 () Bool)

(declare-fun b!6712209 () Bool)

(declare-datatypes ((List!65890 0))(
  ( (Nil!65766) (Cons!65766 (h!72214 Context!11828) (t!379567 List!65890)) )
))
(declare-fun zl!343 () List!65890)

(assert (=> b!6712209 (= e!4056525 (and (inv!84573 (h!72214 zl!343)) e!4056528 tp!1839535))))

(declare-fun e!4056526 () Bool)

(assert (=> b!6712210 (= e!4056529 e!4056526)))

(declare-fun res!2746741 () Bool)

(assert (=> b!6712210 (=> res!2746741 e!4056526)))

(assert (=> b!6712210 (= res!2746741 (not (validRegex!8266 (reg!16859 r!7292))))))

(declare-datatypes ((List!65891 0))(
  ( (Nil!65767) (Cons!65767 (h!72215 C!33330) (t!379568 List!65891)) )
))
(declare-fun s!2326 () List!65891)

(declare-fun lambda!376226 () Int)

(declare-datatypes ((tuple2!67010 0))(
  ( (tuple2!67011 (_1!36808 List!65891) (_2!36808 List!65891)) )
))
(declare-datatypes ((Option!16417 0))(
  ( (None!16416) (Some!16416 (v!52614 tuple2!67010)) )
))
(declare-fun isDefined!13120 (Option!16417) Bool)

(declare-fun findConcatSeparation!2831 (Regex!16530 Regex!16530 List!65891 List!65891 List!65891) Option!16417)

(declare-fun Exists!3598 (Int) Bool)

(assert (=> b!6712210 (= (isDefined!13120 (findConcatSeparation!2831 (reg!16859 r!7292) r!7292 Nil!65767 s!2326 s!2326)) (Exists!3598 lambda!376226))))

(declare-datatypes ((Unit!159751 0))(
  ( (Unit!159752) )
))
(declare-fun lt!2435768 () Unit!159751)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2595 (Regex!16530 Regex!16530 List!65891) Unit!159751)

(assert (=> b!6712210 (= lt!2435768 (lemmaFindConcatSeparationEquivalentToExists!2595 (reg!16859 r!7292) r!7292 s!2326))))

(declare-fun b!6712211 () Bool)

(declare-fun tp!1839537 () Bool)

(assert (=> b!6712211 (= e!4056527 tp!1839537)))

(declare-fun b!6712212 () Bool)

(declare-fun res!2746744 () Bool)

(assert (=> b!6712212 (=> res!2746744 e!4056529)))

(declare-fun generalisedUnion!2374 (List!65889) Regex!16530)

(declare-fun unfocusZipperList!1951 (List!65890) List!65889)

(assert (=> b!6712212 (= res!2746744 (not (= r!7292 (generalisedUnion!2374 (unfocusZipperList!1951 zl!343)))))))

(declare-fun b!6712213 () Bool)

(declare-fun nullable!6521 (Regex!16530) Bool)

(assert (=> b!6712213 (= e!4056526 (not (nullable!6521 (reg!16859 r!7292))))))

(declare-fun b!6712214 () Bool)

(declare-fun tp!1839532 () Bool)

(declare-fun tp!1839534 () Bool)

(assert (=> b!6712214 (= e!4056530 (and tp!1839532 tp!1839534))))

(declare-fun b!6712215 () Bool)

(declare-fun res!2746750 () Bool)

(assert (=> b!6712215 (=> res!2746750 e!4056529)))

(declare-fun isEmpty!38085 (List!65890) Bool)

(assert (=> b!6712215 (= res!2746750 (not (isEmpty!38085 (t!379567 zl!343))))))

(declare-fun b!6712216 () Bool)

(declare-fun tp!1839531 () Bool)

(assert (=> b!6712216 (= e!4056524 (and tp_is_empty!42313 tp!1839531))))

(declare-fun b!6712217 () Bool)

(declare-fun res!2746748 () Bool)

(assert (=> b!6712217 (=> res!2746748 e!4056529)))

(assert (=> b!6712217 (= res!2746748 (not (is-Cons!65765 (exprs!6414 (h!72214 zl!343)))))))

(declare-fun b!6712218 () Bool)

(declare-fun res!2746745 () Bool)

(assert (=> b!6712218 (=> (not res!2746745) (not e!4056523))))

(declare-fun toList!10314 ((Set Context!11828)) List!65890)

(assert (=> b!6712218 (= res!2746745 (= (toList!10314 z!1189) zl!343))))

(declare-fun b!6712219 () Bool)

(declare-fun res!2746747 () Bool)

(assert (=> b!6712219 (=> (not res!2746747) (not e!4056523))))

(declare-fun unfocusZipper!2272 (List!65890) Regex!16530)

(assert (=> b!6712219 (= res!2746747 (= r!7292 (unfocusZipper!2272 zl!343)))))

(declare-fun b!6712220 () Bool)

(assert (=> b!6712220 (= e!4056523 (not e!4056529))))

(declare-fun res!2746746 () Bool)

(assert (=> b!6712220 (=> res!2746746 e!4056529)))

(assert (=> b!6712220 (= res!2746746 (not (is-Cons!65766 zl!343)))))

(declare-fun matchR!8713 (Regex!16530 List!65891) Bool)

(declare-fun matchRSpec!3631 (Regex!16530 List!65891) Bool)

(assert (=> b!6712220 (= (matchR!8713 r!7292 s!2326) (matchRSpec!3631 r!7292 s!2326))))

(declare-fun lt!2435767 () Unit!159751)

(declare-fun mainMatchTheorem!3631 (Regex!16530 List!65891) Unit!159751)

(assert (=> b!6712220 (= lt!2435767 (mainMatchTheorem!3631 r!7292 s!2326))))

(declare-fun b!6712221 () Bool)

(declare-fun res!2746749 () Bool)

(assert (=> b!6712221 (=> res!2746749 e!4056529)))

(declare-fun generalisedConcat!2127 (List!65889) Regex!16530)

(assert (=> b!6712221 (= res!2746749 (not (= r!7292 (generalisedConcat!2127 (exprs!6414 (h!72214 zl!343))))))))

(assert (= (and start!650986 res!2746743) b!6712218))

(assert (= (and b!6712218 res!2746745) b!6712219))

(assert (= (and b!6712219 res!2746747) b!6712220))

(assert (= (and b!6712220 (not res!2746746)) b!6712215))

(assert (= (and b!6712215 (not res!2746750)) b!6712221))

(assert (= (and b!6712221 (not res!2746749)) b!6712217))

(assert (= (and b!6712217 (not res!2746748)) b!6712212))

(assert (= (and b!6712212 (not res!2746744)) b!6712208))

(assert (= (and b!6712208 (not res!2746742)) b!6712210))

(assert (= (and b!6712210 (not res!2746741)) b!6712213))

(assert (= (and start!650986 (is-ElementMatch!16530 r!7292)) b!6712207))

(assert (= (and start!650986 (is-Concat!25375 r!7292)) b!6712214))

(assert (= (and start!650986 (is-Star!16530 r!7292)) b!6712206))

(assert (= (and start!650986 (is-Union!16530 r!7292)) b!6712205))

(assert (= (and start!650986 condSetEmpty!45714) setIsEmpty!45714))

(assert (= (and start!650986 (not condSetEmpty!45714)) setNonEmpty!45714))

(assert (= setNonEmpty!45714 b!6712211))

(assert (= b!6712209 b!6712204))

(assert (= (and start!650986 (is-Cons!65766 zl!343)) b!6712209))

(assert (= (and start!650986 (is-Cons!65767 s!2326)) b!6712216))

(declare-fun m!7477640 () Bool)

(assert (=> b!6712213 m!7477640))

(declare-fun m!7477642 () Bool)

(assert (=> b!6712212 m!7477642))

(assert (=> b!6712212 m!7477642))

(declare-fun m!7477644 () Bool)

(assert (=> b!6712212 m!7477644))

(declare-fun m!7477646 () Bool)

(assert (=> b!6712210 m!7477646))

(declare-fun m!7477648 () Bool)

(assert (=> b!6712210 m!7477648))

(declare-fun m!7477650 () Bool)

(assert (=> b!6712210 m!7477650))

(declare-fun m!7477652 () Bool)

(assert (=> b!6712210 m!7477652))

(assert (=> b!6712210 m!7477652))

(declare-fun m!7477654 () Bool)

(assert (=> b!6712210 m!7477654))

(declare-fun m!7477656 () Bool)

(assert (=> b!6712219 m!7477656))

(declare-fun m!7477658 () Bool)

(assert (=> setNonEmpty!45714 m!7477658))

(declare-fun m!7477660 () Bool)

(assert (=> b!6712220 m!7477660))

(declare-fun m!7477662 () Bool)

(assert (=> b!6712220 m!7477662))

(declare-fun m!7477664 () Bool)

(assert (=> b!6712220 m!7477664))

(declare-fun m!7477666 () Bool)

(assert (=> b!6712209 m!7477666))

(declare-fun m!7477668 () Bool)

(assert (=> b!6712218 m!7477668))

(declare-fun m!7477670 () Bool)

(assert (=> start!650986 m!7477670))

(declare-fun m!7477672 () Bool)

(assert (=> b!6712221 m!7477672))

(declare-fun m!7477674 () Bool)

(assert (=> b!6712215 m!7477674))

(push 1)

(assert (not b!6712212))

(assert (not b!6712210))

(assert (not b!6712206))

(assert (not b!6712213))

(assert (not b!6712215))

(assert (not b!6712214))

(assert (not setNonEmpty!45714))

(assert (not b!6712218))

(assert (not start!650986))

(assert (not b!6712220))

(assert (not b!6712204))

(assert (not b!6712211))

(assert (not b!6712216))

(assert (not b!6712205))

(assert (not b!6712209))

(assert (not b!6712219))

(assert (not b!6712221))

(assert tp_is_empty!42313)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2110365 () Bool)

(declare-fun e!4056559 () Bool)

(assert (=> d!2110365 e!4056559))

(declare-fun res!2746787 () Bool)

(assert (=> d!2110365 (=> (not res!2746787) (not e!4056559))))

(declare-fun lt!2435777 () List!65890)

(declare-fun noDuplicate!2329 (List!65890) Bool)

(assert (=> d!2110365 (= res!2746787 (noDuplicate!2329 lt!2435777))))

(declare-fun choose!50000 ((Set Context!11828)) List!65890)

(assert (=> d!2110365 (= lt!2435777 (choose!50000 z!1189))))

(assert (=> d!2110365 (= (toList!10314 z!1189) lt!2435777)))

(declare-fun b!6712290 () Bool)

(declare-fun content!12748 (List!65890) (Set Context!11828))

(assert (=> b!6712290 (= e!4056559 (= (content!12748 lt!2435777) z!1189))))

(assert (= (and d!2110365 res!2746787) b!6712290))

(declare-fun m!7477712 () Bool)

(assert (=> d!2110365 m!7477712))

(declare-fun m!7477714 () Bool)

(assert (=> d!2110365 m!7477714))

(declare-fun m!7477716 () Bool)

(assert (=> b!6712290 m!7477716))

(assert (=> b!6712218 d!2110365))

(declare-fun d!2110367 () Bool)

(declare-fun lambda!376232 () Int)

(declare-fun forall!15736 (List!65889 Int) Bool)

(assert (=> d!2110367 (= (inv!84573 setElem!45714) (forall!15736 (exprs!6414 setElem!45714) lambda!376232))))

(declare-fun bs!1786596 () Bool)

(assert (= bs!1786596 d!2110367))

(declare-fun m!7477718 () Bool)

(assert (=> bs!1786596 m!7477718))

(assert (=> setNonEmpty!45714 d!2110367))

(declare-fun d!2110369 () Bool)

(declare-fun nullableFct!2439 (Regex!16530) Bool)

(assert (=> d!2110369 (= (nullable!6521 (reg!16859 r!7292)) (nullableFct!2439 (reg!16859 r!7292)))))

(declare-fun bs!1786597 () Bool)

(assert (= bs!1786597 d!2110369))

(declare-fun m!7477720 () Bool)

(assert (=> bs!1786597 m!7477720))

(assert (=> b!6712213 d!2110369))

(declare-fun bs!1786598 () Bool)

(declare-fun d!2110371 () Bool)

(assert (= bs!1786598 (and d!2110371 d!2110367)))

(declare-fun lambda!376237 () Int)

(assert (=> bs!1786598 (= lambda!376237 lambda!376232)))

(declare-fun b!6712331 () Bool)

(declare-fun e!4056588 () Regex!16530)

(declare-fun e!4056587 () Regex!16530)

(assert (=> b!6712331 (= e!4056588 e!4056587)))

(declare-fun c!1244608 () Bool)

(assert (=> b!6712331 (= c!1244608 (is-Cons!65765 (unfocusZipperList!1951 zl!343)))))

(declare-fun b!6712332 () Bool)

(declare-fun e!4056589 () Bool)

(declare-fun lt!2435782 () Regex!16530)

(declare-fun isUnion!1340 (Regex!16530) Bool)

(assert (=> b!6712332 (= e!4056589 (isUnion!1340 lt!2435782))))

(declare-fun b!6712333 () Bool)

(declare-fun e!4056584 () Bool)

(declare-fun isEmpty!38087 (List!65889) Bool)

(assert (=> b!6712333 (= e!4056584 (isEmpty!38087 (t!379566 (unfocusZipperList!1951 zl!343))))))

(declare-fun b!6712334 () Bool)

(declare-fun e!4056585 () Bool)

(declare-fun isEmptyLang!1910 (Regex!16530) Bool)

(assert (=> b!6712334 (= e!4056585 (isEmptyLang!1910 lt!2435782))))

(declare-fun b!6712335 () Bool)

(declare-fun head!13499 (List!65889) Regex!16530)

(assert (=> b!6712335 (= e!4056589 (= lt!2435782 (head!13499 (unfocusZipperList!1951 zl!343))))))

(declare-fun e!4056586 () Bool)

(assert (=> d!2110371 e!4056586))

(declare-fun res!2746796 () Bool)

(assert (=> d!2110371 (=> (not res!2746796) (not e!4056586))))

(assert (=> d!2110371 (= res!2746796 (validRegex!8266 lt!2435782))))

(assert (=> d!2110371 (= lt!2435782 e!4056588)))

(declare-fun c!1244607 () Bool)

(assert (=> d!2110371 (= c!1244607 e!4056584)))

(declare-fun res!2746797 () Bool)

(assert (=> d!2110371 (=> (not res!2746797) (not e!4056584))))

(assert (=> d!2110371 (= res!2746797 (is-Cons!65765 (unfocusZipperList!1951 zl!343)))))

(assert (=> d!2110371 (forall!15736 (unfocusZipperList!1951 zl!343) lambda!376237)))

(assert (=> d!2110371 (= (generalisedUnion!2374 (unfocusZipperList!1951 zl!343)) lt!2435782)))

(declare-fun b!6712336 () Bool)

(assert (=> b!6712336 (= e!4056586 e!4056585)))

(declare-fun c!1244606 () Bool)

(assert (=> b!6712336 (= c!1244606 (isEmpty!38087 (unfocusZipperList!1951 zl!343)))))

(declare-fun b!6712337 () Bool)

(assert (=> b!6712337 (= e!4056585 e!4056589)))

(declare-fun c!1244609 () Bool)

(declare-fun tail!12584 (List!65889) List!65889)

(assert (=> b!6712337 (= c!1244609 (isEmpty!38087 (tail!12584 (unfocusZipperList!1951 zl!343))))))

(declare-fun b!6712338 () Bool)

(assert (=> b!6712338 (= e!4056587 (Union!16530 (h!72213 (unfocusZipperList!1951 zl!343)) (generalisedUnion!2374 (t!379566 (unfocusZipperList!1951 zl!343)))))))

(declare-fun b!6712339 () Bool)

(assert (=> b!6712339 (= e!4056588 (h!72213 (unfocusZipperList!1951 zl!343)))))

(declare-fun b!6712340 () Bool)

(assert (=> b!6712340 (= e!4056587 EmptyLang!16530)))

(assert (= (and d!2110371 res!2746797) b!6712333))

(assert (= (and d!2110371 c!1244607) b!6712339))

(assert (= (and d!2110371 (not c!1244607)) b!6712331))

(assert (= (and b!6712331 c!1244608) b!6712338))

(assert (= (and b!6712331 (not c!1244608)) b!6712340))

(assert (= (and d!2110371 res!2746796) b!6712336))

(assert (= (and b!6712336 c!1244606) b!6712334))

(assert (= (and b!6712336 (not c!1244606)) b!6712337))

(assert (= (and b!6712337 c!1244609) b!6712335))

(assert (= (and b!6712337 (not c!1244609)) b!6712332))

(declare-fun m!7477722 () Bool)

(assert (=> b!6712338 m!7477722))

(declare-fun m!7477724 () Bool)

(assert (=> b!6712333 m!7477724))

(assert (=> b!6712335 m!7477642))

(declare-fun m!7477726 () Bool)

(assert (=> b!6712335 m!7477726))

(assert (=> b!6712336 m!7477642))

(declare-fun m!7477728 () Bool)

(assert (=> b!6712336 m!7477728))

(assert (=> b!6712337 m!7477642))

(declare-fun m!7477730 () Bool)

(assert (=> b!6712337 m!7477730))

(assert (=> b!6712337 m!7477730))

(declare-fun m!7477732 () Bool)

(assert (=> b!6712337 m!7477732))

(declare-fun m!7477734 () Bool)

(assert (=> b!6712334 m!7477734))

(declare-fun m!7477736 () Bool)

(assert (=> b!6712332 m!7477736))

(declare-fun m!7477738 () Bool)

(assert (=> d!2110371 m!7477738))

(assert (=> d!2110371 m!7477642))

(declare-fun m!7477740 () Bool)

(assert (=> d!2110371 m!7477740))

(assert (=> b!6712212 d!2110371))

(declare-fun bs!1786599 () Bool)

(declare-fun d!2110373 () Bool)

(assert (= bs!1786599 (and d!2110373 d!2110367)))

(declare-fun lambda!376241 () Int)

(assert (=> bs!1786599 (= lambda!376241 lambda!376232)))

(declare-fun bs!1786600 () Bool)

(assert (= bs!1786600 (and d!2110373 d!2110371)))

(assert (=> bs!1786600 (= lambda!376241 lambda!376237)))

(declare-fun lt!2435786 () List!65889)

(assert (=> d!2110373 (forall!15736 lt!2435786 lambda!376241)))

(declare-fun e!4056598 () List!65889)

(assert (=> d!2110373 (= lt!2435786 e!4056598)))

(declare-fun c!1244616 () Bool)

(assert (=> d!2110373 (= c!1244616 (is-Cons!65766 zl!343))))

(assert (=> d!2110373 (= (unfocusZipperList!1951 zl!343) lt!2435786)))

(declare-fun b!6712355 () Bool)

(assert (=> b!6712355 (= e!4056598 (Cons!65765 (generalisedConcat!2127 (exprs!6414 (h!72214 zl!343))) (unfocusZipperList!1951 (t!379567 zl!343))))))

(declare-fun b!6712356 () Bool)

(assert (=> b!6712356 (= e!4056598 Nil!65765)))

(assert (= (and d!2110373 c!1244616) b!6712355))

(assert (= (and d!2110373 (not c!1244616)) b!6712356))

(declare-fun m!7477762 () Bool)

(assert (=> d!2110373 m!7477762))

(assert (=> b!6712355 m!7477672))

(declare-fun m!7477764 () Bool)

(assert (=> b!6712355 m!7477764))

(assert (=> b!6712212 d!2110373))

(declare-fun bm!605935 () Bool)

(declare-fun call!605942 () Bool)

(declare-fun call!605940 () Bool)

(assert (=> bm!605935 (= call!605942 call!605940)))

(declare-fun b!6712379 () Bool)

(declare-fun e!4056621 () Bool)

(assert (=> b!6712379 (= e!4056621 call!605942)))

(declare-fun b!6712380 () Bool)

(declare-fun e!4056617 () Bool)

(assert (=> b!6712380 (= e!4056617 call!605942)))

(declare-fun b!6712381 () Bool)

(declare-fun e!4056618 () Bool)

(declare-fun e!4056616 () Bool)

(assert (=> b!6712381 (= e!4056618 e!4056616)))

(declare-fun c!1244624 () Bool)

(assert (=> b!6712381 (= c!1244624 (is-Star!16530 r!7292))))

(declare-fun bm!605936 () Bool)

(declare-fun call!605941 () Bool)

(declare-fun c!1244623 () Bool)

(assert (=> bm!605936 (= call!605941 (validRegex!8266 (ite c!1244623 (regOne!33573 r!7292) (regOne!33572 r!7292))))))

(declare-fun b!6712383 () Bool)

(declare-fun res!2746810 () Bool)

(declare-fun e!4056619 () Bool)

(assert (=> b!6712383 (=> res!2746810 e!4056619)))

(assert (=> b!6712383 (= res!2746810 (not (is-Concat!25375 r!7292)))))

(declare-fun e!4056620 () Bool)

(assert (=> b!6712383 (= e!4056620 e!4056619)))

(declare-fun bm!605937 () Bool)

(assert (=> bm!605937 (= call!605940 (validRegex!8266 (ite c!1244624 (reg!16859 r!7292) (ite c!1244623 (regTwo!33573 r!7292) (regTwo!33572 r!7292)))))))

(declare-fun b!6712384 () Bool)

(declare-fun e!4056615 () Bool)

(assert (=> b!6712384 (= e!4056616 e!4056615)))

(declare-fun res!2746811 () Bool)

(assert (=> b!6712384 (= res!2746811 (not (nullable!6521 (reg!16859 r!7292))))))

(assert (=> b!6712384 (=> (not res!2746811) (not e!4056615))))

(declare-fun b!6712385 () Bool)

(assert (=> b!6712385 (= e!4056619 e!4056617)))

(declare-fun res!2746814 () Bool)

(assert (=> b!6712385 (=> (not res!2746814) (not e!4056617))))

(assert (=> b!6712385 (= res!2746814 call!605941)))

(declare-fun b!6712386 () Bool)

(assert (=> b!6712386 (= e!4056616 e!4056620)))

(assert (=> b!6712386 (= c!1244623 (is-Union!16530 r!7292))))

(declare-fun b!6712387 () Bool)

(assert (=> b!6712387 (= e!4056615 call!605940)))

(declare-fun d!2110377 () Bool)

(declare-fun res!2746813 () Bool)

(assert (=> d!2110377 (=> res!2746813 e!4056618)))

(assert (=> d!2110377 (= res!2746813 (is-ElementMatch!16530 r!7292))))

(assert (=> d!2110377 (= (validRegex!8266 r!7292) e!4056618)))

(declare-fun b!6712382 () Bool)

(declare-fun res!2746812 () Bool)

(assert (=> b!6712382 (=> (not res!2746812) (not e!4056621))))

(assert (=> b!6712382 (= res!2746812 call!605941)))

(assert (=> b!6712382 (= e!4056620 e!4056621)))

(assert (= (and d!2110377 (not res!2746813)) b!6712381))

(assert (= (and b!6712381 c!1244624) b!6712384))

(assert (= (and b!6712381 (not c!1244624)) b!6712386))

(assert (= (and b!6712384 res!2746811) b!6712387))

(assert (= (and b!6712386 c!1244623) b!6712382))

(assert (= (and b!6712386 (not c!1244623)) b!6712383))

(assert (= (and b!6712382 res!2746812) b!6712379))

(assert (= (and b!6712383 (not res!2746810)) b!6712385))

(assert (= (and b!6712385 res!2746814) b!6712380))

(assert (= (or b!6712379 b!6712380) bm!605935))

(assert (= (or b!6712382 b!6712385) bm!605936))

(assert (= (or b!6712387 bm!605935) bm!605937))

(declare-fun m!7477766 () Bool)

(assert (=> bm!605936 m!7477766))

(declare-fun m!7477768 () Bool)

(assert (=> bm!605937 m!7477768))

(assert (=> b!6712384 m!7477640))

(assert (=> start!650986 d!2110377))

(declare-fun d!2110379 () Bool)

(declare-fun isEmpty!38088 (Option!16417) Bool)

(assert (=> d!2110379 (= (isDefined!13120 (findConcatSeparation!2831 (reg!16859 r!7292) r!7292 Nil!65767 s!2326 s!2326)) (not (isEmpty!38088 (findConcatSeparation!2831 (reg!16859 r!7292) r!7292 Nil!65767 s!2326 s!2326))))))

(declare-fun bs!1786601 () Bool)

(assert (= bs!1786601 d!2110379))

(assert (=> bs!1786601 m!7477652))

(declare-fun m!7477770 () Bool)

(assert (=> bs!1786601 m!7477770))

(assert (=> b!6712210 d!2110379))

(declare-fun bm!605938 () Bool)

(declare-fun call!605945 () Bool)

(declare-fun call!605943 () Bool)

(assert (=> bm!605938 (= call!605945 call!605943)))

(declare-fun b!6712390 () Bool)

(declare-fun e!4056629 () Bool)

(assert (=> b!6712390 (= e!4056629 call!605945)))

(declare-fun b!6712391 () Bool)

(declare-fun e!4056625 () Bool)

(assert (=> b!6712391 (= e!4056625 call!605945)))

(declare-fun b!6712392 () Bool)

(declare-fun e!4056626 () Bool)

(declare-fun e!4056624 () Bool)

(assert (=> b!6712392 (= e!4056626 e!4056624)))

(declare-fun c!1244627 () Bool)

(assert (=> b!6712392 (= c!1244627 (is-Star!16530 (reg!16859 r!7292)))))

(declare-fun bm!605939 () Bool)

(declare-fun call!605944 () Bool)

(declare-fun c!1244626 () Bool)

(assert (=> bm!605939 (= call!605944 (validRegex!8266 (ite c!1244626 (regOne!33573 (reg!16859 r!7292)) (regOne!33572 (reg!16859 r!7292)))))))

(declare-fun b!6712394 () Bool)

(declare-fun res!2746815 () Bool)

(declare-fun e!4056627 () Bool)

(assert (=> b!6712394 (=> res!2746815 e!4056627)))

(assert (=> b!6712394 (= res!2746815 (not (is-Concat!25375 (reg!16859 r!7292))))))

(declare-fun e!4056628 () Bool)

(assert (=> b!6712394 (= e!4056628 e!4056627)))

(declare-fun bm!605940 () Bool)

(assert (=> bm!605940 (= call!605943 (validRegex!8266 (ite c!1244627 (reg!16859 (reg!16859 r!7292)) (ite c!1244626 (regTwo!33573 (reg!16859 r!7292)) (regTwo!33572 (reg!16859 r!7292))))))))

(declare-fun b!6712395 () Bool)

(declare-fun e!4056623 () Bool)

(assert (=> b!6712395 (= e!4056624 e!4056623)))

(declare-fun res!2746816 () Bool)

(assert (=> b!6712395 (= res!2746816 (not (nullable!6521 (reg!16859 (reg!16859 r!7292)))))))

(assert (=> b!6712395 (=> (not res!2746816) (not e!4056623))))

(declare-fun b!6712396 () Bool)

(assert (=> b!6712396 (= e!4056627 e!4056625)))

(declare-fun res!2746819 () Bool)

(assert (=> b!6712396 (=> (not res!2746819) (not e!4056625))))

(assert (=> b!6712396 (= res!2746819 call!605944)))

(declare-fun b!6712397 () Bool)

(assert (=> b!6712397 (= e!4056624 e!4056628)))

(assert (=> b!6712397 (= c!1244626 (is-Union!16530 (reg!16859 r!7292)))))

(declare-fun b!6712398 () Bool)

(assert (=> b!6712398 (= e!4056623 call!605943)))

(declare-fun d!2110381 () Bool)

(declare-fun res!2746818 () Bool)

(assert (=> d!2110381 (=> res!2746818 e!4056626)))

(assert (=> d!2110381 (= res!2746818 (is-ElementMatch!16530 (reg!16859 r!7292)))))

(assert (=> d!2110381 (= (validRegex!8266 (reg!16859 r!7292)) e!4056626)))

(declare-fun b!6712393 () Bool)

(declare-fun res!2746817 () Bool)

(assert (=> b!6712393 (=> (not res!2746817) (not e!4056629))))

(assert (=> b!6712393 (= res!2746817 call!605944)))

(assert (=> b!6712393 (= e!4056628 e!4056629)))

(assert (= (and d!2110381 (not res!2746818)) b!6712392))

(assert (= (and b!6712392 c!1244627) b!6712395))

(assert (= (and b!6712392 (not c!1244627)) b!6712397))

(assert (= (and b!6712395 res!2746816) b!6712398))

(assert (= (and b!6712397 c!1244626) b!6712393))

(assert (= (and b!6712397 (not c!1244626)) b!6712394))

(assert (= (and b!6712393 res!2746817) b!6712390))

(assert (= (and b!6712394 (not res!2746815)) b!6712396))

(assert (= (and b!6712396 res!2746819) b!6712391))

(assert (= (or b!6712390 b!6712391) bm!605938))

(assert (= (or b!6712393 b!6712396) bm!605939))

(assert (= (or b!6712398 bm!605938) bm!605940))

(declare-fun m!7477772 () Bool)

(assert (=> bm!605939 m!7477772))

(declare-fun m!7477774 () Bool)

(assert (=> bm!605940 m!7477774))

(declare-fun m!7477776 () Bool)

(assert (=> b!6712395 m!7477776))

(assert (=> b!6712210 d!2110381))

(declare-fun d!2110383 () Bool)

(declare-fun choose!50001 (Int) Bool)

(assert (=> d!2110383 (= (Exists!3598 lambda!376226) (choose!50001 lambda!376226))))

(declare-fun bs!1786603 () Bool)

(assert (= bs!1786603 d!2110383))

(declare-fun m!7477778 () Bool)

(assert (=> bs!1786603 m!7477778))

(assert (=> b!6712210 d!2110383))

(declare-fun b!6712425 () Bool)

(declare-fun e!4056645 () Option!16417)

(assert (=> b!6712425 (= e!4056645 None!16416)))

(declare-fun d!2110385 () Bool)

(declare-fun e!4056648 () Bool)

(assert (=> d!2110385 e!4056648))

(declare-fun res!2746831 () Bool)

(assert (=> d!2110385 (=> res!2746831 e!4056648)))

(declare-fun e!4056647 () Bool)

(assert (=> d!2110385 (= res!2746831 e!4056647)))

(declare-fun res!2746834 () Bool)

(assert (=> d!2110385 (=> (not res!2746834) (not e!4056647))))

(declare-fun lt!2435800 () Option!16417)

(assert (=> d!2110385 (= res!2746834 (isDefined!13120 lt!2435800))))

(declare-fun e!4056646 () Option!16417)

(assert (=> d!2110385 (= lt!2435800 e!4056646)))

(declare-fun c!1244636 () Bool)

(declare-fun e!4056644 () Bool)

(assert (=> d!2110385 (= c!1244636 e!4056644)))

(declare-fun res!2746830 () Bool)

(assert (=> d!2110385 (=> (not res!2746830) (not e!4056644))))

(assert (=> d!2110385 (= res!2746830 (matchR!8713 (reg!16859 r!7292) Nil!65767))))

(assert (=> d!2110385 (validRegex!8266 (reg!16859 r!7292))))

(assert (=> d!2110385 (= (findConcatSeparation!2831 (reg!16859 r!7292) r!7292 Nil!65767 s!2326 s!2326) lt!2435800)))

(declare-fun b!6712429 () Bool)

(assert (=> b!6712429 (= e!4056646 (Some!16416 (tuple2!67011 Nil!65767 s!2326)))))

(declare-fun b!6712431 () Bool)

(assert (=> b!6712431 (= e!4056646 e!4056645)))

(declare-fun c!1244637 () Bool)

(assert (=> b!6712431 (= c!1244637 (is-Nil!65767 s!2326))))

(declare-fun b!6712432 () Bool)

(declare-fun lt!2435798 () Unit!159751)

(declare-fun lt!2435799 () Unit!159751)

(assert (=> b!6712432 (= lt!2435798 lt!2435799)))

(declare-fun ++!14692 (List!65891 List!65891) List!65891)

(assert (=> b!6712432 (= (++!14692 (++!14692 Nil!65767 (Cons!65767 (h!72215 s!2326) Nil!65767)) (t!379568 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2665 (List!65891 C!33330 List!65891 List!65891) Unit!159751)

(assert (=> b!6712432 (= lt!2435799 (lemmaMoveElementToOtherListKeepsConcatEq!2665 Nil!65767 (h!72215 s!2326) (t!379568 s!2326) s!2326))))

(assert (=> b!6712432 (= e!4056645 (findConcatSeparation!2831 (reg!16859 r!7292) r!7292 (++!14692 Nil!65767 (Cons!65767 (h!72215 s!2326) Nil!65767)) (t!379568 s!2326) s!2326))))

(declare-fun b!6712433 () Bool)

(declare-fun res!2746833 () Bool)

(assert (=> b!6712433 (=> (not res!2746833) (not e!4056647))))

(declare-fun get!22873 (Option!16417) tuple2!67010)

(assert (=> b!6712433 (= res!2746833 (matchR!8713 (reg!16859 r!7292) (_1!36808 (get!22873 lt!2435800))))))

(declare-fun b!6712434 () Bool)

(assert (=> b!6712434 (= e!4056647 (= (++!14692 (_1!36808 (get!22873 lt!2435800)) (_2!36808 (get!22873 lt!2435800))) s!2326))))

(declare-fun b!6712435 () Bool)

(assert (=> b!6712435 (= e!4056644 (matchR!8713 r!7292 s!2326))))

(declare-fun b!6712436 () Bool)

(declare-fun res!2746832 () Bool)

(assert (=> b!6712436 (=> (not res!2746832) (not e!4056647))))

(assert (=> b!6712436 (= res!2746832 (matchR!8713 r!7292 (_2!36808 (get!22873 lt!2435800))))))

(declare-fun b!6712437 () Bool)

(assert (=> b!6712437 (= e!4056648 (not (isDefined!13120 lt!2435800)))))

(assert (= (and d!2110385 res!2746830) b!6712435))

(assert (= (and d!2110385 c!1244636) b!6712429))

(assert (= (and d!2110385 (not c!1244636)) b!6712431))

(assert (= (and b!6712431 c!1244637) b!6712425))

(assert (= (and b!6712431 (not c!1244637)) b!6712432))

(assert (= (and d!2110385 res!2746834) b!6712433))

(assert (= (and b!6712433 res!2746833) b!6712436))

(assert (= (and b!6712436 res!2746832) b!6712434))

(assert (= (and d!2110385 (not res!2746831)) b!6712437))

(declare-fun m!7477784 () Bool)

(assert (=> b!6712433 m!7477784))

(declare-fun m!7477786 () Bool)

(assert (=> b!6712433 m!7477786))

(assert (=> b!6712435 m!7477660))

(assert (=> b!6712434 m!7477784))

(declare-fun m!7477788 () Bool)

(assert (=> b!6712434 m!7477788))

(assert (=> b!6712436 m!7477784))

(declare-fun m!7477790 () Bool)

(assert (=> b!6712436 m!7477790))

(declare-fun m!7477792 () Bool)

(assert (=> d!2110385 m!7477792))

(declare-fun m!7477794 () Bool)

(assert (=> d!2110385 m!7477794))

(assert (=> d!2110385 m!7477648))

(assert (=> b!6712437 m!7477792))

(declare-fun m!7477796 () Bool)

(assert (=> b!6712432 m!7477796))

(assert (=> b!6712432 m!7477796))

(declare-fun m!7477798 () Bool)

(assert (=> b!6712432 m!7477798))

(declare-fun m!7477800 () Bool)

(assert (=> b!6712432 m!7477800))

(assert (=> b!6712432 m!7477796))

(declare-fun m!7477802 () Bool)

(assert (=> b!6712432 m!7477802))

(assert (=> b!6712210 d!2110385))

(declare-fun bs!1786604 () Bool)

(declare-fun d!2110391 () Bool)

(assert (= bs!1786604 (and d!2110391 b!6712210)))

(declare-fun lambda!376247 () Int)

(assert (=> bs!1786604 (= lambda!376247 lambda!376226)))

(assert (=> d!2110391 true))

(assert (=> d!2110391 true))

(assert (=> d!2110391 true))

(assert (=> d!2110391 (= (isDefined!13120 (findConcatSeparation!2831 (reg!16859 r!7292) r!7292 Nil!65767 s!2326 s!2326)) (Exists!3598 lambda!376247))))

(declare-fun lt!2435803 () Unit!159751)

(declare-fun choose!50002 (Regex!16530 Regex!16530 List!65891) Unit!159751)

(assert (=> d!2110391 (= lt!2435803 (choose!50002 (reg!16859 r!7292) r!7292 s!2326))))

(assert (=> d!2110391 (validRegex!8266 (reg!16859 r!7292))))

(assert (=> d!2110391 (= (lemmaFindConcatSeparationEquivalentToExists!2595 (reg!16859 r!7292) r!7292 s!2326) lt!2435803)))

(declare-fun bs!1786605 () Bool)

(assert (= bs!1786605 d!2110391))

(declare-fun m!7477804 () Bool)

(assert (=> bs!1786605 m!7477804))

(assert (=> bs!1786605 m!7477652))

(assert (=> bs!1786605 m!7477648))

(declare-fun m!7477806 () Bool)

(assert (=> bs!1786605 m!7477806))

(assert (=> bs!1786605 m!7477652))

(assert (=> bs!1786605 m!7477654))

(assert (=> b!6712210 d!2110391))

(declare-fun bs!1786606 () Bool)

(declare-fun d!2110393 () Bool)

(assert (= bs!1786606 (and d!2110393 d!2110367)))

(declare-fun lambda!376250 () Int)

(assert (=> bs!1786606 (= lambda!376250 lambda!376232)))

(declare-fun bs!1786607 () Bool)

(assert (= bs!1786607 (and d!2110393 d!2110371)))

(assert (=> bs!1786607 (= lambda!376250 lambda!376237)))

(declare-fun bs!1786608 () Bool)

(assert (= bs!1786608 (and d!2110393 d!2110373)))

(assert (=> bs!1786608 (= lambda!376250 lambda!376241)))

(declare-fun b!6712492 () Bool)

(declare-fun e!4056681 () Bool)

(declare-fun e!4056680 () Bool)

(assert (=> b!6712492 (= e!4056681 e!4056680)))

(declare-fun c!1244651 () Bool)

(assert (=> b!6712492 (= c!1244651 (isEmpty!38087 (tail!12584 (exprs!6414 (h!72214 zl!343)))))))

(declare-fun b!6712493 () Bool)

(declare-fun e!4056683 () Regex!16530)

(assert (=> b!6712493 (= e!4056683 (Concat!25375 (h!72213 (exprs!6414 (h!72214 zl!343))) (generalisedConcat!2127 (t!379566 (exprs!6414 (h!72214 zl!343))))))))

(declare-fun b!6712494 () Bool)

(declare-fun e!4056682 () Regex!16530)

(assert (=> b!6712494 (= e!4056682 e!4056683)))

(declare-fun c!1244654 () Bool)

(assert (=> b!6712494 (= c!1244654 (is-Cons!65765 (exprs!6414 (h!72214 zl!343))))))

(declare-fun b!6712495 () Bool)

(declare-fun lt!2435807 () Regex!16530)

(declare-fun isEmptyExpr!1902 (Regex!16530) Bool)

(assert (=> b!6712495 (= e!4056681 (isEmptyExpr!1902 lt!2435807))))

(declare-fun b!6712496 () Bool)

(assert (=> b!6712496 (= e!4056680 (= lt!2435807 (head!13499 (exprs!6414 (h!72214 zl!343)))))))

(declare-fun b!6712497 () Bool)

(declare-fun e!4056685 () Bool)

(assert (=> b!6712497 (= e!4056685 e!4056681)))

(declare-fun c!1244653 () Bool)

(assert (=> b!6712497 (= c!1244653 (isEmpty!38087 (exprs!6414 (h!72214 zl!343))))))

(declare-fun b!6712498 () Bool)

(declare-fun isConcat!1425 (Regex!16530) Bool)

(assert (=> b!6712498 (= e!4056680 (isConcat!1425 lt!2435807))))

(declare-fun b!6712499 () Bool)

(declare-fun e!4056684 () Bool)

(assert (=> b!6712499 (= e!4056684 (isEmpty!38087 (t!379566 (exprs!6414 (h!72214 zl!343)))))))

(declare-fun b!6712500 () Bool)

(assert (=> b!6712500 (= e!4056682 (h!72213 (exprs!6414 (h!72214 zl!343))))))

(assert (=> d!2110393 e!4056685))

(declare-fun res!2746867 () Bool)

(assert (=> d!2110393 (=> (not res!2746867) (not e!4056685))))

(assert (=> d!2110393 (= res!2746867 (validRegex!8266 lt!2435807))))

(assert (=> d!2110393 (= lt!2435807 e!4056682)))

(declare-fun c!1244652 () Bool)

(assert (=> d!2110393 (= c!1244652 e!4056684)))

(declare-fun res!2746868 () Bool)

(assert (=> d!2110393 (=> (not res!2746868) (not e!4056684))))

(assert (=> d!2110393 (= res!2746868 (is-Cons!65765 (exprs!6414 (h!72214 zl!343))))))

(assert (=> d!2110393 (forall!15736 (exprs!6414 (h!72214 zl!343)) lambda!376250)))

(assert (=> d!2110393 (= (generalisedConcat!2127 (exprs!6414 (h!72214 zl!343))) lt!2435807)))

(declare-fun b!6712501 () Bool)

(assert (=> b!6712501 (= e!4056683 EmptyExpr!16530)))

(assert (= (and d!2110393 res!2746868) b!6712499))

(assert (= (and d!2110393 c!1244652) b!6712500))

(assert (= (and d!2110393 (not c!1244652)) b!6712494))

(assert (= (and b!6712494 c!1244654) b!6712493))

(assert (= (and b!6712494 (not c!1244654)) b!6712501))

(assert (= (and d!2110393 res!2746867) b!6712497))

(assert (= (and b!6712497 c!1244653) b!6712495))

(assert (= (and b!6712497 (not c!1244653)) b!6712492))

(assert (= (and b!6712492 c!1244651) b!6712496))

(assert (= (and b!6712492 (not c!1244651)) b!6712498))

(declare-fun m!7477822 () Bool)

(assert (=> b!6712498 m!7477822))

(declare-fun m!7477824 () Bool)

(assert (=> b!6712492 m!7477824))

(assert (=> b!6712492 m!7477824))

(declare-fun m!7477826 () Bool)

(assert (=> b!6712492 m!7477826))

(declare-fun m!7477828 () Bool)

(assert (=> b!6712499 m!7477828))

(declare-fun m!7477830 () Bool)

(assert (=> b!6712497 m!7477830))

(declare-fun m!7477832 () Bool)

(assert (=> b!6712493 m!7477832))

(declare-fun m!7477834 () Bool)

(assert (=> b!6712496 m!7477834))

(declare-fun m!7477836 () Bool)

(assert (=> b!6712495 m!7477836))

(declare-fun m!7477838 () Bool)

(assert (=> d!2110393 m!7477838))

(declare-fun m!7477840 () Bool)

(assert (=> d!2110393 m!7477840))

(assert (=> b!6712221 d!2110393))

(declare-fun b!6712553 () Bool)

(declare-fun e!4056717 () Bool)

(declare-fun e!4056714 () Bool)

(assert (=> b!6712553 (= e!4056717 e!4056714)))

(declare-fun res!2746897 () Bool)

(assert (=> b!6712553 (=> (not res!2746897) (not e!4056714))))

(declare-fun lt!2435810 () Bool)

(assert (=> b!6712553 (= res!2746897 (not lt!2435810))))

(declare-fun b!6712554 () Bool)

(declare-fun res!2746892 () Bool)

(declare-fun e!4056719 () Bool)

(assert (=> b!6712554 (=> res!2746892 e!4056719)))

(declare-fun isEmpty!38089 (List!65891) Bool)

(declare-fun tail!12585 (List!65891) List!65891)

(assert (=> b!6712554 (= res!2746892 (not (isEmpty!38089 (tail!12585 s!2326))))))

(declare-fun b!6712555 () Bool)

(declare-fun e!4056718 () Bool)

(declare-fun e!4056720 () Bool)

(assert (=> b!6712555 (= e!4056718 e!4056720)))

(declare-fun c!1244670 () Bool)

(assert (=> b!6712555 (= c!1244670 (is-EmptyLang!16530 r!7292))))

(declare-fun b!6712556 () Bool)

(declare-fun res!2746894 () Bool)

(assert (=> b!6712556 (=> res!2746894 e!4056717)))

(declare-fun e!4056716 () Bool)

(assert (=> b!6712556 (= res!2746894 e!4056716)))

(declare-fun res!2746895 () Bool)

(assert (=> b!6712556 (=> (not res!2746895) (not e!4056716))))

(assert (=> b!6712556 (= res!2746895 lt!2435810)))

(declare-fun b!6712557 () Bool)

(declare-fun head!13500 (List!65891) C!33330)

(assert (=> b!6712557 (= e!4056719 (not (= (head!13500 s!2326) (c!1244588 r!7292))))))

(declare-fun b!6712558 () Bool)

(assert (=> b!6712558 (= e!4056716 (= (head!13500 s!2326) (c!1244588 r!7292)))))

(declare-fun bm!605946 () Bool)

(declare-fun call!605951 () Bool)

(assert (=> bm!605946 (= call!605951 (isEmpty!38089 s!2326))))

(declare-fun b!6712559 () Bool)

(assert (=> b!6712559 (= e!4056718 (= lt!2435810 call!605951))))

(declare-fun b!6712552 () Bool)

(assert (=> b!6712552 (= e!4056714 e!4056719)))

(declare-fun res!2746896 () Bool)

(assert (=> b!6712552 (=> res!2746896 e!4056719)))

(assert (=> b!6712552 (= res!2746896 call!605951)))

(declare-fun d!2110397 () Bool)

(assert (=> d!2110397 e!4056718))

(declare-fun c!1244669 () Bool)

(assert (=> d!2110397 (= c!1244669 (is-EmptyExpr!16530 r!7292))))

(declare-fun e!4056715 () Bool)

(assert (=> d!2110397 (= lt!2435810 e!4056715)))

(declare-fun c!1244671 () Bool)

(assert (=> d!2110397 (= c!1244671 (isEmpty!38089 s!2326))))

(assert (=> d!2110397 (validRegex!8266 r!7292)))

(assert (=> d!2110397 (= (matchR!8713 r!7292 s!2326) lt!2435810)))

(declare-fun b!6712560 () Bool)

(declare-fun derivativeStep!5208 (Regex!16530 C!33330) Regex!16530)

(assert (=> b!6712560 (= e!4056715 (matchR!8713 (derivativeStep!5208 r!7292 (head!13500 s!2326)) (tail!12585 s!2326)))))

(declare-fun b!6712561 () Bool)

(declare-fun res!2746898 () Bool)

(assert (=> b!6712561 (=> (not res!2746898) (not e!4056716))))

(assert (=> b!6712561 (= res!2746898 (isEmpty!38089 (tail!12585 s!2326)))))

(declare-fun b!6712562 () Bool)

(assert (=> b!6712562 (= e!4056720 (not lt!2435810))))

(declare-fun b!6712563 () Bool)

(declare-fun res!2746891 () Bool)

(assert (=> b!6712563 (=> res!2746891 e!4056717)))

(assert (=> b!6712563 (= res!2746891 (not (is-ElementMatch!16530 r!7292)))))

(assert (=> b!6712563 (= e!4056720 e!4056717)))

(declare-fun b!6712564 () Bool)

(declare-fun res!2746893 () Bool)

(assert (=> b!6712564 (=> (not res!2746893) (not e!4056716))))

(assert (=> b!6712564 (= res!2746893 (not call!605951))))

(declare-fun b!6712565 () Bool)

(assert (=> b!6712565 (= e!4056715 (nullable!6521 r!7292))))

(assert (= (and d!2110397 c!1244671) b!6712565))

(assert (= (and d!2110397 (not c!1244671)) b!6712560))

(assert (= (and d!2110397 c!1244669) b!6712559))

(assert (= (and d!2110397 (not c!1244669)) b!6712555))

(assert (= (and b!6712555 c!1244670) b!6712562))

(assert (= (and b!6712555 (not c!1244670)) b!6712563))

(assert (= (and b!6712563 (not res!2746891)) b!6712556))

(assert (= (and b!6712556 res!2746895) b!6712564))

(assert (= (and b!6712564 res!2746893) b!6712561))

(assert (= (and b!6712561 res!2746898) b!6712558))

(assert (= (and b!6712556 (not res!2746894)) b!6712553))

(assert (= (and b!6712553 res!2746897) b!6712552))

(assert (= (and b!6712552 (not res!2746896)) b!6712554))

(assert (= (and b!6712554 (not res!2746892)) b!6712557))

(assert (= (or b!6712559 b!6712552 b!6712564) bm!605946))

(declare-fun m!7477842 () Bool)

(assert (=> d!2110397 m!7477842))

(assert (=> d!2110397 m!7477670))

(declare-fun m!7477844 () Bool)

(assert (=> b!6712554 m!7477844))

(assert (=> b!6712554 m!7477844))

(declare-fun m!7477846 () Bool)

(assert (=> b!6712554 m!7477846))

(assert (=> bm!605946 m!7477842))

(declare-fun m!7477848 () Bool)

(assert (=> b!6712560 m!7477848))

(assert (=> b!6712560 m!7477848))

(declare-fun m!7477850 () Bool)

(assert (=> b!6712560 m!7477850))

(assert (=> b!6712560 m!7477844))

(assert (=> b!6712560 m!7477850))

(assert (=> b!6712560 m!7477844))

(declare-fun m!7477852 () Bool)

(assert (=> b!6712560 m!7477852))

(declare-fun m!7477854 () Bool)

(assert (=> b!6712565 m!7477854))

(assert (=> b!6712558 m!7477848))

(assert (=> b!6712561 m!7477844))

(assert (=> b!6712561 m!7477844))

(assert (=> b!6712561 m!7477846))

(assert (=> b!6712557 m!7477848))

(assert (=> b!6712220 d!2110397))

(declare-fun bs!1786609 () Bool)

(declare-fun b!6712615 () Bool)

(assert (= bs!1786609 (and b!6712615 b!6712210)))

(declare-fun lambda!376259 () Int)

(assert (=> bs!1786609 (not (= lambda!376259 lambda!376226))))

(declare-fun bs!1786610 () Bool)

(assert (= bs!1786610 (and b!6712615 d!2110391)))

(assert (=> bs!1786610 (not (= lambda!376259 lambda!376247))))

(assert (=> b!6712615 true))

(assert (=> b!6712615 true))

(declare-fun bs!1786611 () Bool)

(declare-fun b!6712616 () Bool)

(assert (= bs!1786611 (and b!6712616 b!6712210)))

(declare-fun lambda!376260 () Int)

(assert (=> bs!1786611 (not (= lambda!376260 lambda!376226))))

(declare-fun bs!1786612 () Bool)

(assert (= bs!1786612 (and b!6712616 d!2110391)))

(assert (=> bs!1786612 (not (= lambda!376260 lambda!376247))))

(declare-fun bs!1786613 () Bool)

(assert (= bs!1786613 (and b!6712616 b!6712615)))

(assert (=> bs!1786613 (not (= lambda!376260 lambda!376259))))

(assert (=> b!6712616 true))

(assert (=> b!6712616 true))

(declare-fun b!6712608 () Bool)

(declare-fun e!4056744 () Bool)

(assert (=> b!6712608 (= e!4056744 (matchRSpec!3631 (regTwo!33573 r!7292) s!2326))))

(declare-fun b!6712609 () Bool)

(declare-fun e!4056745 () Bool)

(assert (=> b!6712609 (= e!4056745 (= s!2326 (Cons!65767 (c!1244588 r!7292) Nil!65767)))))

(declare-fun b!6712610 () Bool)

(declare-fun c!1244681 () Bool)

(assert (=> b!6712610 (= c!1244681 (is-ElementMatch!16530 r!7292))))

(declare-fun e!4056748 () Bool)

(assert (=> b!6712610 (= e!4056748 e!4056745)))

(declare-fun bm!605955 () Bool)

(declare-fun call!605961 () Bool)

(assert (=> bm!605955 (= call!605961 (isEmpty!38089 s!2326))))

(declare-fun b!6712611 () Bool)

(declare-fun e!4056743 () Bool)

(assert (=> b!6712611 (= e!4056743 e!4056748)))

(declare-fun res!2746925 () Bool)

(assert (=> b!6712611 (= res!2746925 (not (is-EmptyLang!16530 r!7292)))))

(assert (=> b!6712611 (=> (not res!2746925) (not e!4056748))))

(declare-fun b!6712612 () Bool)

(declare-fun res!2746927 () Bool)

(declare-fun e!4056746 () Bool)

(assert (=> b!6712612 (=> res!2746927 e!4056746)))

(assert (=> b!6712612 (= res!2746927 call!605961)))

(declare-fun e!4056749 () Bool)

(assert (=> b!6712612 (= e!4056749 e!4056746)))

(declare-fun b!6712613 () Bool)

(assert (=> b!6712613 (= e!4056743 call!605961)))

(declare-fun b!6712614 () Bool)

(declare-fun e!4056747 () Bool)

(assert (=> b!6712614 (= e!4056747 e!4056749)))

(declare-fun c!1244682 () Bool)

(assert (=> b!6712614 (= c!1244682 (is-Star!16530 r!7292))))

(declare-fun call!605960 () Bool)

(assert (=> b!6712615 (= e!4056746 call!605960)))

(declare-fun d!2110399 () Bool)

(declare-fun c!1244683 () Bool)

(assert (=> d!2110399 (= c!1244683 (is-EmptyExpr!16530 r!7292))))

(assert (=> d!2110399 (= (matchRSpec!3631 r!7292 s!2326) e!4056743)))

(assert (=> b!6712616 (= e!4056749 call!605960)))

(declare-fun b!6712617 () Bool)

(declare-fun c!1244680 () Bool)

(assert (=> b!6712617 (= c!1244680 (is-Union!16530 r!7292))))

(assert (=> b!6712617 (= e!4056745 e!4056747)))

(declare-fun b!6712618 () Bool)

(assert (=> b!6712618 (= e!4056747 e!4056744)))

(declare-fun res!2746926 () Bool)

(assert (=> b!6712618 (= res!2746926 (matchRSpec!3631 (regOne!33573 r!7292) s!2326))))

(assert (=> b!6712618 (=> res!2746926 e!4056744)))

(declare-fun bm!605956 () Bool)

(assert (=> bm!605956 (= call!605960 (Exists!3598 (ite c!1244682 lambda!376259 lambda!376260)))))

(assert (= (and d!2110399 c!1244683) b!6712613))

(assert (= (and d!2110399 (not c!1244683)) b!6712611))

(assert (= (and b!6712611 res!2746925) b!6712610))

(assert (= (and b!6712610 c!1244681) b!6712609))

(assert (= (and b!6712610 (not c!1244681)) b!6712617))

(assert (= (and b!6712617 c!1244680) b!6712618))

(assert (= (and b!6712617 (not c!1244680)) b!6712614))

(assert (= (and b!6712618 (not res!2746926)) b!6712608))

(assert (= (and b!6712614 c!1244682) b!6712612))

(assert (= (and b!6712614 (not c!1244682)) b!6712616))

(assert (= (and b!6712612 (not res!2746927)) b!6712615))

(assert (= (or b!6712615 b!6712616) bm!605956))

(assert (= (or b!6712613 b!6712612) bm!605955))

(declare-fun m!7477856 () Bool)

(assert (=> b!6712608 m!7477856))

(assert (=> bm!605955 m!7477842))

(declare-fun m!7477858 () Bool)

(assert (=> b!6712618 m!7477858))

(declare-fun m!7477860 () Bool)

(assert (=> bm!605956 m!7477860))

(assert (=> b!6712220 d!2110399))

(declare-fun d!2110401 () Bool)

(assert (=> d!2110401 (= (matchR!8713 r!7292 s!2326) (matchRSpec!3631 r!7292 s!2326))))

(declare-fun lt!2435813 () Unit!159751)

(declare-fun choose!50003 (Regex!16530 List!65891) Unit!159751)

(assert (=> d!2110401 (= lt!2435813 (choose!50003 r!7292 s!2326))))

(assert (=> d!2110401 (validRegex!8266 r!7292)))

(assert (=> d!2110401 (= (mainMatchTheorem!3631 r!7292 s!2326) lt!2435813)))

(declare-fun bs!1786615 () Bool)

(assert (= bs!1786615 d!2110401))

(assert (=> bs!1786615 m!7477660))

(assert (=> bs!1786615 m!7477662))

(declare-fun m!7477862 () Bool)

(assert (=> bs!1786615 m!7477862))

(assert (=> bs!1786615 m!7477670))

(assert (=> b!6712220 d!2110401))

(declare-fun d!2110403 () Bool)

(assert (=> d!2110403 (= (isEmpty!38085 (t!379567 zl!343)) (is-Nil!65766 (t!379567 zl!343)))))

(assert (=> b!6712215 d!2110403))

(declare-fun bs!1786616 () Bool)

(declare-fun d!2110405 () Bool)

(assert (= bs!1786616 (and d!2110405 d!2110367)))

(declare-fun lambda!376263 () Int)

(assert (=> bs!1786616 (= lambda!376263 lambda!376232)))

(declare-fun bs!1786618 () Bool)

(assert (= bs!1786618 (and d!2110405 d!2110371)))

(assert (=> bs!1786618 (= lambda!376263 lambda!376237)))

(declare-fun bs!1786619 () Bool)

(assert (= bs!1786619 (and d!2110405 d!2110373)))

(assert (=> bs!1786619 (= lambda!376263 lambda!376241)))

(declare-fun bs!1786620 () Bool)

(assert (= bs!1786620 (and d!2110405 d!2110393)))

(assert (=> bs!1786620 (= lambda!376263 lambda!376250)))

(assert (=> d!2110405 (= (inv!84573 (h!72214 zl!343)) (forall!15736 (exprs!6414 (h!72214 zl!343)) lambda!376263))))

(declare-fun bs!1786622 () Bool)

(assert (= bs!1786622 d!2110405))

(declare-fun m!7477864 () Bool)

(assert (=> bs!1786622 m!7477864))

(assert (=> b!6712209 d!2110405))

(declare-fun d!2110407 () Bool)

(declare-fun lt!2435816 () Regex!16530)

(assert (=> d!2110407 (validRegex!8266 lt!2435816)))

(assert (=> d!2110407 (= lt!2435816 (generalisedUnion!2374 (unfocusZipperList!1951 zl!343)))))

(assert (=> d!2110407 (= (unfocusZipper!2272 zl!343) lt!2435816)))

(declare-fun bs!1786623 () Bool)

(assert (= bs!1786623 d!2110407))

(declare-fun m!7477872 () Bool)

(assert (=> bs!1786623 m!7477872))

(assert (=> bs!1786623 m!7477642))

(assert (=> bs!1786623 m!7477642))

(assert (=> bs!1786623 m!7477644))

(assert (=> b!6712219 d!2110407))

(declare-fun condSetEmpty!45720 () Bool)

(assert (=> setNonEmpty!45714 (= condSetEmpty!45720 (= setRest!45714 (as set.empty (Set Context!11828))))))

(declare-fun setRes!45720 () Bool)

(assert (=> setNonEmpty!45714 (= tp!1839536 setRes!45720)))

(declare-fun setIsEmpty!45720 () Bool)

(assert (=> setIsEmpty!45720 setRes!45720))

(declare-fun tp!1839574 () Bool)

(declare-fun e!4056759 () Bool)

(declare-fun setElem!45720 () Context!11828)

(declare-fun setNonEmpty!45720 () Bool)

(assert (=> setNonEmpty!45720 (= setRes!45720 (and tp!1839574 (inv!84573 setElem!45720) e!4056759))))

(declare-fun setRest!45720 () (Set Context!11828))

(assert (=> setNonEmpty!45720 (= setRest!45714 (set.union (set.insert setElem!45720 (as set.empty (Set Context!11828))) setRest!45720))))

(declare-fun b!6712634 () Bool)

(declare-fun tp!1839575 () Bool)

(assert (=> b!6712634 (= e!4056759 tp!1839575)))

(assert (= (and setNonEmpty!45714 condSetEmpty!45720) setIsEmpty!45720))

(assert (= (and setNonEmpty!45714 (not condSetEmpty!45720)) setNonEmpty!45720))

(assert (= setNonEmpty!45720 b!6712634))

(declare-fun m!7477874 () Bool)

(assert (=> setNonEmpty!45720 m!7477874))

(declare-fun b!6712639 () Bool)

(declare-fun e!4056762 () Bool)

(declare-fun tp!1839578 () Bool)

(assert (=> b!6712639 (= e!4056762 (and tp_is_empty!42313 tp!1839578))))

(assert (=> b!6712216 (= tp!1839531 e!4056762)))

(assert (= (and b!6712216 (is-Cons!65767 (t!379568 s!2326))) b!6712639))

(declare-fun b!6712644 () Bool)

(declare-fun e!4056765 () Bool)

(declare-fun tp!1839583 () Bool)

(declare-fun tp!1839584 () Bool)

(assert (=> b!6712644 (= e!4056765 (and tp!1839583 tp!1839584))))

(assert (=> b!6712211 (= tp!1839537 e!4056765)))

(assert (= (and b!6712211 (is-Cons!65765 (exprs!6414 setElem!45714))) b!6712644))

(declare-fun b!6712656 () Bool)

(declare-fun e!4056768 () Bool)

(declare-fun tp!1839598 () Bool)

(declare-fun tp!1839596 () Bool)

(assert (=> b!6712656 (= e!4056768 (and tp!1839598 tp!1839596))))

(declare-fun b!6712657 () Bool)

(declare-fun tp!1839597 () Bool)

(assert (=> b!6712657 (= e!4056768 tp!1839597)))

(assert (=> b!6712206 (= tp!1839530 e!4056768)))

(declare-fun b!6712655 () Bool)

(assert (=> b!6712655 (= e!4056768 tp_is_empty!42313)))

(declare-fun b!6712658 () Bool)

(declare-fun tp!1839599 () Bool)

(declare-fun tp!1839595 () Bool)

(assert (=> b!6712658 (= e!4056768 (and tp!1839599 tp!1839595))))

(assert (= (and b!6712206 (is-ElementMatch!16530 (reg!16859 r!7292))) b!6712655))

(assert (= (and b!6712206 (is-Concat!25375 (reg!16859 r!7292))) b!6712656))

(assert (= (and b!6712206 (is-Star!16530 (reg!16859 r!7292))) b!6712657))

(assert (= (and b!6712206 (is-Union!16530 (reg!16859 r!7292))) b!6712658))

(declare-fun b!6712660 () Bool)

(declare-fun e!4056769 () Bool)

(declare-fun tp!1839603 () Bool)

(declare-fun tp!1839601 () Bool)

(assert (=> b!6712660 (= e!4056769 (and tp!1839603 tp!1839601))))

(declare-fun b!6712661 () Bool)

(declare-fun tp!1839602 () Bool)

(assert (=> b!6712661 (= e!4056769 tp!1839602)))

(assert (=> b!6712205 (= tp!1839538 e!4056769)))

(declare-fun b!6712659 () Bool)

(assert (=> b!6712659 (= e!4056769 tp_is_empty!42313)))

(declare-fun b!6712662 () Bool)

(declare-fun tp!1839604 () Bool)

(declare-fun tp!1839600 () Bool)

(assert (=> b!6712662 (= e!4056769 (and tp!1839604 tp!1839600))))

(assert (= (and b!6712205 (is-ElementMatch!16530 (regOne!33573 r!7292))) b!6712659))

(assert (= (and b!6712205 (is-Concat!25375 (regOne!33573 r!7292))) b!6712660))

(assert (= (and b!6712205 (is-Star!16530 (regOne!33573 r!7292))) b!6712661))

(assert (= (and b!6712205 (is-Union!16530 (regOne!33573 r!7292))) b!6712662))

(declare-fun b!6712664 () Bool)

(declare-fun e!4056770 () Bool)

(declare-fun tp!1839608 () Bool)

(declare-fun tp!1839606 () Bool)

(assert (=> b!6712664 (= e!4056770 (and tp!1839608 tp!1839606))))

(declare-fun b!6712665 () Bool)

(declare-fun tp!1839607 () Bool)

(assert (=> b!6712665 (= e!4056770 tp!1839607)))

(assert (=> b!6712205 (= tp!1839539 e!4056770)))

(declare-fun b!6712663 () Bool)

(assert (=> b!6712663 (= e!4056770 tp_is_empty!42313)))

(declare-fun b!6712666 () Bool)

(declare-fun tp!1839609 () Bool)

(declare-fun tp!1839605 () Bool)

(assert (=> b!6712666 (= e!4056770 (and tp!1839609 tp!1839605))))

(assert (= (and b!6712205 (is-ElementMatch!16530 (regTwo!33573 r!7292))) b!6712663))

(assert (= (and b!6712205 (is-Concat!25375 (regTwo!33573 r!7292))) b!6712664))

(assert (= (and b!6712205 (is-Star!16530 (regTwo!33573 r!7292))) b!6712665))

(assert (= (and b!6712205 (is-Union!16530 (regTwo!33573 r!7292))) b!6712666))

(declare-fun b!6712668 () Bool)

(declare-fun e!4056771 () Bool)

(declare-fun tp!1839613 () Bool)

(declare-fun tp!1839611 () Bool)

(assert (=> b!6712668 (= e!4056771 (and tp!1839613 tp!1839611))))

(declare-fun b!6712669 () Bool)

(declare-fun tp!1839612 () Bool)

(assert (=> b!6712669 (= e!4056771 tp!1839612)))

(assert (=> b!6712214 (= tp!1839532 e!4056771)))

(declare-fun b!6712667 () Bool)

(assert (=> b!6712667 (= e!4056771 tp_is_empty!42313)))

(declare-fun b!6712670 () Bool)

(declare-fun tp!1839614 () Bool)

(declare-fun tp!1839610 () Bool)

(assert (=> b!6712670 (= e!4056771 (and tp!1839614 tp!1839610))))

(assert (= (and b!6712214 (is-ElementMatch!16530 (regOne!33572 r!7292))) b!6712667))

(assert (= (and b!6712214 (is-Concat!25375 (regOne!33572 r!7292))) b!6712668))

(assert (= (and b!6712214 (is-Star!16530 (regOne!33572 r!7292))) b!6712669))

(assert (= (and b!6712214 (is-Union!16530 (regOne!33572 r!7292))) b!6712670))

(declare-fun b!6712672 () Bool)

(declare-fun e!4056772 () Bool)

(declare-fun tp!1839618 () Bool)

(declare-fun tp!1839616 () Bool)

(assert (=> b!6712672 (= e!4056772 (and tp!1839618 tp!1839616))))

(declare-fun b!6712673 () Bool)

(declare-fun tp!1839617 () Bool)

(assert (=> b!6712673 (= e!4056772 tp!1839617)))

(assert (=> b!6712214 (= tp!1839534 e!4056772)))

(declare-fun b!6712671 () Bool)

(assert (=> b!6712671 (= e!4056772 tp_is_empty!42313)))

(declare-fun b!6712674 () Bool)

(declare-fun tp!1839619 () Bool)

(declare-fun tp!1839615 () Bool)

(assert (=> b!6712674 (= e!4056772 (and tp!1839619 tp!1839615))))

(assert (= (and b!6712214 (is-ElementMatch!16530 (regTwo!33572 r!7292))) b!6712671))

(assert (= (and b!6712214 (is-Concat!25375 (regTwo!33572 r!7292))) b!6712672))

(assert (= (and b!6712214 (is-Star!16530 (regTwo!33572 r!7292))) b!6712673))

(assert (= (and b!6712214 (is-Union!16530 (regTwo!33572 r!7292))) b!6712674))

(declare-fun b!6712682 () Bool)

(declare-fun e!4056778 () Bool)

(declare-fun tp!1839624 () Bool)

(assert (=> b!6712682 (= e!4056778 tp!1839624)))

(declare-fun b!6712681 () Bool)

(declare-fun e!4056777 () Bool)

(declare-fun tp!1839625 () Bool)

(assert (=> b!6712681 (= e!4056777 (and (inv!84573 (h!72214 (t!379567 zl!343))) e!4056778 tp!1839625))))

(assert (=> b!6712209 (= tp!1839535 e!4056777)))

(assert (= b!6712681 b!6712682))

(assert (= (and b!6712209 (is-Cons!65766 (t!379567 zl!343))) b!6712681))

(declare-fun m!7477876 () Bool)

(assert (=> b!6712681 m!7477876))

(declare-fun b!6712683 () Bool)

(declare-fun e!4056779 () Bool)

(declare-fun tp!1839626 () Bool)

(declare-fun tp!1839627 () Bool)

(assert (=> b!6712683 (= e!4056779 (and tp!1839626 tp!1839627))))

(assert (=> b!6712204 (= tp!1839533 e!4056779)))

(assert (= (and b!6712204 (is-Cons!65765 (exprs!6414 (h!72214 zl!343)))) b!6712683))

(push 1)

(assert (not b!6712674))

(assert (not b!6712681))

(assert (not b!6712434))

(assert (not setNonEmpty!45720))

(assert (not b!6712498))

(assert (not b!6712662))

(assert (not b!6712333))

(assert (not b!6712335))

(assert (not d!2110367))

(assert (not b!6712495))

(assert (not d!2110369))

(assert (not bm!605939))

(assert (not b!6712496))

(assert (not b!6712355))

(assert (not b!6712334))

(assert (not bm!605946))

(assert (not b!6712561))

(assert (not b!6712634))

(assert (not d!2110371))

(assert (not b!6712332))

(assert (not d!2110373))

(assert (not b!6712682))

(assert (not bm!605956))

(assert (not d!2110379))

(assert (not b!6712492))

(assert (not b!6712673))

(assert (not d!2110383))

(assert (not b!6712432))

(assert (not b!6712639))

(assert (not b!6712658))

(assert (not b!6712683))

(assert (not d!2110405))

(assert (not bm!605940))

(assert (not b!6712499))

(assert (not b!6712557))

(assert (not b!6712497))

(assert (not b!6712618))

(assert (not d!2110393))

(assert (not bm!605955))

(assert (not d!2110401))

(assert (not b!6712395))

(assert (not b!6712644))

(assert (not b!6712493))

(assert (not b!6712660))

(assert (not bm!605936))

(assert (not b!6712337))

(assert (not d!2110385))

(assert (not b!6712384))

(assert (not b!6712669))

(assert (not b!6712435))

(assert (not b!6712656))

(assert (not b!6712672))

(assert (not b!6712661))

(assert (not b!6712657))

(assert (not b!6712565))

(assert (not b!6712336))

(assert (not b!6712436))

(assert (not b!6712338))

(assert (not d!2110397))

(assert (not b!6712664))

(assert (not b!6712670))

(assert (not d!2110365))

(assert (not d!2110391))

(assert (not b!6712554))

(assert (not d!2110407))

(assert (not b!6712433))

(assert (not b!6712666))

(assert (not b!6712290))

(assert (not b!6712608))

(assert tp_is_empty!42313)

(assert (not b!6712437))

(assert (not b!6712560))

(assert (not b!6712668))

(assert (not bm!605937))

(assert (not b!6712558))

(assert (not b!6712665))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

