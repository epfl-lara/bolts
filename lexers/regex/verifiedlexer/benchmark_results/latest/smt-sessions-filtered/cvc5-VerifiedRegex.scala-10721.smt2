; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!549020 () Bool)

(assert start!549020)

(declare-fun b!5183998 () Bool)

(declare-fun e!3229728 () Bool)

(declare-fun tp!1454252 () Bool)

(assert (=> b!5183998 (= e!3229728 tp!1454252)))

(declare-fun b!5183999 () Bool)

(declare-fun e!3229722 () Bool)

(assert (=> b!5183999 (= e!3229722 true)))

(declare-datatypes ((C!29646 0))(
  ( (C!29647 (val!24525 Int)) )
))
(declare-datatypes ((Regex!14688 0))(
  ( (ElementMatch!14688 (c!893473 C!29646)) (Concat!23533 (regOne!29888 Regex!14688) (regTwo!29888 Regex!14688)) (EmptyExpr!14688) (Star!14688 (reg!15017 Regex!14688)) (EmptyLang!14688) (Union!14688 (regOne!29889 Regex!14688) (regTwo!29889 Regex!14688)) )
))
(declare-fun lt!2136217 () Regex!14688)

(declare-datatypes ((List!60363 0))(
  ( (Nil!60239) (Cons!60239 (h!66687 Regex!14688) (t!373516 List!60363)) )
))
(declare-datatypes ((Context!8144 0))(
  ( (Context!8145 (exprs!4572 List!60363)) )
))
(declare-datatypes ((List!60364 0))(
  ( (Nil!60240) (Cons!60240 (h!66688 Context!8144) (t!373517 List!60364)) )
))
(declare-fun zl!343 () List!60364)

(declare-fun generalisedUnion!617 (List!60363) Regex!14688)

(declare-fun unfocusZipperList!130 (List!60364) List!60363)

(assert (=> b!5183999 (= lt!2136217 (generalisedUnion!617 (unfocusZipperList!130 zl!343)))))

(declare-fun b!5184000 () Bool)

(declare-fun e!3229725 () Bool)

(declare-fun tp_is_empty!38629 () Bool)

(declare-fun tp!1454255 () Bool)

(assert (=> b!5184000 (= e!3229725 (and tp_is_empty!38629 tp!1454255))))

(declare-fun b!5184001 () Bool)

(declare-fun tp!1454250 () Bool)

(declare-fun tp!1454254 () Bool)

(assert (=> b!5184001 (= e!3229728 (and tp!1454250 tp!1454254))))

(declare-fun b!5184002 () Bool)

(declare-fun tp!1454253 () Bool)

(declare-fun tp!1454248 () Bool)

(assert (=> b!5184002 (= e!3229728 (and tp!1454253 tp!1454248))))

(declare-fun b!5184003 () Bool)

(declare-fun res!2202030 () Bool)

(declare-fun e!3229724 () Bool)

(assert (=> b!5184003 (=> (not res!2202030) (not e!3229724))))

(declare-fun z!1189 () (Set Context!8144))

(declare-fun toList!8472 ((Set Context!8144)) List!60364)

(assert (=> b!5184003 (= res!2202030 (= (toList!8472 z!1189) zl!343))))

(declare-fun b!5184004 () Bool)

(declare-fun e!3229726 () Bool)

(declare-fun tp!1454249 () Bool)

(assert (=> b!5184004 (= e!3229726 tp!1454249)))

(declare-fun b!5184006 () Bool)

(assert (=> b!5184006 (= e!3229724 (not e!3229722))))

(declare-fun res!2202032 () Bool)

(assert (=> b!5184006 (=> res!2202032 e!3229722)))

(assert (=> b!5184006 (= res!2202032 (not (is-Cons!60240 zl!343)))))

(declare-fun r!7292 () Regex!14688)

(declare-datatypes ((List!60365 0))(
  ( (Nil!60241) (Cons!60241 (h!66689 C!29646) (t!373518 List!60365)) )
))
(declare-fun s!2326 () List!60365)

(declare-fun matchR!6873 (Regex!14688 List!60365) Bool)

(declare-fun matchRSpec!1791 (Regex!14688 List!60365) Bool)

(assert (=> b!5184006 (= (matchR!6873 r!7292 s!2326) (matchRSpec!1791 r!7292 s!2326))))

(declare-datatypes ((Unit!152210 0))(
  ( (Unit!152211) )
))
(declare-fun lt!2136216 () Unit!152210)

(declare-fun mainMatchTheorem!1791 (Regex!14688 List!60365) Unit!152210)

(assert (=> b!5184006 (= lt!2136216 (mainMatchTheorem!1791 r!7292 s!2326))))

(declare-fun b!5184007 () Bool)

(declare-fun res!2202027 () Bool)

(assert (=> b!5184007 (=> res!2202027 e!3229722)))

(assert (=> b!5184007 (= res!2202027 (not (is-Cons!60239 (exprs!4572 (h!66688 zl!343)))))))

(declare-fun b!5184008 () Bool)

(declare-fun res!2202029 () Bool)

(assert (=> b!5184008 (=> res!2202029 e!3229722)))

(declare-fun generalisedConcat!357 (List!60363) Regex!14688)

(assert (=> b!5184008 (= res!2202029 (not (= r!7292 (generalisedConcat!357 (exprs!4572 (h!66688 zl!343))))))))

(declare-fun b!5184009 () Bool)

(declare-fun res!2202033 () Bool)

(assert (=> b!5184009 (=> res!2202033 e!3229722)))

(declare-fun isEmpty!32241 (List!60364) Bool)

(assert (=> b!5184009 (= res!2202033 (not (isEmpty!32241 (t!373517 zl!343))))))

(declare-fun b!5184010 () Bool)

(declare-fun e!3229727 () Bool)

(declare-fun tp!1454246 () Bool)

(assert (=> b!5184010 (= e!3229727 tp!1454246)))

(declare-fun setElem!32611 () Context!8144)

(declare-fun setRes!32611 () Bool)

(declare-fun setNonEmpty!32611 () Bool)

(declare-fun tp!1454251 () Bool)

(declare-fun inv!79968 (Context!8144) Bool)

(assert (=> setNonEmpty!32611 (= setRes!32611 (and tp!1454251 (inv!79968 setElem!32611) e!3229727))))

(declare-fun setRest!32611 () (Set Context!8144))

(assert (=> setNonEmpty!32611 (= z!1189 (set.union (set.insert setElem!32611 (as set.empty (Set Context!8144))) setRest!32611))))

(declare-fun res!2202028 () Bool)

(assert (=> start!549020 (=> (not res!2202028) (not e!3229724))))

(declare-fun validRegex!6424 (Regex!14688) Bool)

(assert (=> start!549020 (= res!2202028 (validRegex!6424 r!7292))))

(assert (=> start!549020 e!3229724))

(assert (=> start!549020 e!3229728))

(declare-fun condSetEmpty!32611 () Bool)

(assert (=> start!549020 (= condSetEmpty!32611 (= z!1189 (as set.empty (Set Context!8144))))))

(assert (=> start!549020 setRes!32611))

(declare-fun e!3229723 () Bool)

(assert (=> start!549020 e!3229723))

(assert (=> start!549020 e!3229725))

(declare-fun b!5184005 () Bool)

(declare-fun res!2202031 () Bool)

(assert (=> b!5184005 (=> (not res!2202031) (not e!3229724))))

(declare-fun unfocusZipper!430 (List!60364) Regex!14688)

(assert (=> b!5184005 (= res!2202031 (= r!7292 (unfocusZipper!430 zl!343)))))

(declare-fun b!5184011 () Bool)

(assert (=> b!5184011 (= e!3229728 tp_is_empty!38629)))

(declare-fun tp!1454247 () Bool)

(declare-fun b!5184012 () Bool)

(assert (=> b!5184012 (= e!3229723 (and (inv!79968 (h!66688 zl!343)) e!3229726 tp!1454247))))

(declare-fun setIsEmpty!32611 () Bool)

(assert (=> setIsEmpty!32611 setRes!32611))

(assert (= (and start!549020 res!2202028) b!5184003))

(assert (= (and b!5184003 res!2202030) b!5184005))

(assert (= (and b!5184005 res!2202031) b!5184006))

(assert (= (and b!5184006 (not res!2202032)) b!5184009))

(assert (= (and b!5184009 (not res!2202033)) b!5184008))

(assert (= (and b!5184008 (not res!2202029)) b!5184007))

(assert (= (and b!5184007 (not res!2202027)) b!5183999))

(assert (= (and start!549020 (is-ElementMatch!14688 r!7292)) b!5184011))

(assert (= (and start!549020 (is-Concat!23533 r!7292)) b!5184001))

(assert (= (and start!549020 (is-Star!14688 r!7292)) b!5183998))

(assert (= (and start!549020 (is-Union!14688 r!7292)) b!5184002))

(assert (= (and start!549020 condSetEmpty!32611) setIsEmpty!32611))

(assert (= (and start!549020 (not condSetEmpty!32611)) setNonEmpty!32611))

(assert (= setNonEmpty!32611 b!5184010))

(assert (= b!5184012 b!5184004))

(assert (= (and start!549020 (is-Cons!60240 zl!343)) b!5184012))

(assert (= (and start!549020 (is-Cons!60241 s!2326)) b!5184000))

(declare-fun m!6243394 () Bool)

(assert (=> b!5184008 m!6243394))

(declare-fun m!6243396 () Bool)

(assert (=> setNonEmpty!32611 m!6243396))

(declare-fun m!6243398 () Bool)

(assert (=> b!5184005 m!6243398))

(declare-fun m!6243400 () Bool)

(assert (=> b!5184003 m!6243400))

(declare-fun m!6243402 () Bool)

(assert (=> b!5184012 m!6243402))

(declare-fun m!6243404 () Bool)

(assert (=> b!5184006 m!6243404))

(declare-fun m!6243406 () Bool)

(assert (=> b!5184006 m!6243406))

(declare-fun m!6243408 () Bool)

(assert (=> b!5184006 m!6243408))

(declare-fun m!6243410 () Bool)

(assert (=> start!549020 m!6243410))

(declare-fun m!6243412 () Bool)

(assert (=> b!5183999 m!6243412))

(assert (=> b!5183999 m!6243412))

(declare-fun m!6243414 () Bool)

(assert (=> b!5183999 m!6243414))

(declare-fun m!6243416 () Bool)

(assert (=> b!5184009 m!6243416))

(push 1)

(assert (not b!5184000))

(assert (not start!549020))

(assert (not b!5184004))

(assert (not b!5184006))

(assert (not b!5184001))

(assert (not setNonEmpty!32611))

(assert (not b!5184008))

(assert (not b!5183999))

(assert (not b!5184009))

(assert tp_is_empty!38629)

(assert (not b!5183998))

(assert (not b!5184002))

(assert (not b!5184010))

(assert (not b!5184005))

(assert (not b!5184012))

(assert (not b!5184003))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

