; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!549036 () Bool)

(assert start!549036)

(declare-fun b!5184434 () Bool)

(declare-fun res!2202275 () Bool)

(declare-fun e!3229907 () Bool)

(assert (=> b!5184434 (=> res!2202275 e!3229907)))

(declare-datatypes ((C!29662 0))(
  ( (C!29663 (val!24533 Int)) )
))
(declare-datatypes ((Regex!14696 0))(
  ( (ElementMatch!14696 (c!893481 C!29662)) (Concat!23541 (regOne!29904 Regex!14696) (regTwo!29904 Regex!14696)) (EmptyExpr!14696) (Star!14696 (reg!15025 Regex!14696)) (EmptyLang!14696) (Union!14696 (regOne!29905 Regex!14696) (regTwo!29905 Regex!14696)) )
))
(declare-fun r!7292 () Regex!14696)

(declare-datatypes ((List!60387 0))(
  ( (Nil!60263) (Cons!60263 (h!66711 Regex!14696) (t!373540 List!60387)) )
))
(declare-datatypes ((Context!8160 0))(
  ( (Context!8161 (exprs!4580 List!60387)) )
))
(declare-datatypes ((List!60388 0))(
  ( (Nil!60264) (Cons!60264 (h!66712 Context!8160) (t!373541 List!60388)) )
))
(declare-fun zl!343 () List!60388)

(declare-fun generalisedConcat!365 (List!60387) Regex!14696)

(assert (=> b!5184434 (= res!2202275 (not (= r!7292 (generalisedConcat!365 (exprs!4580 (h!66712 zl!343))))))))

(declare-fun b!5184436 () Bool)

(declare-fun e!3229906 () Bool)

(declare-fun tp!1454489 () Bool)

(declare-fun tp!1454486 () Bool)

(assert (=> b!5184436 (= e!3229906 (and tp!1454489 tp!1454486))))

(declare-fun b!5184437 () Bool)

(declare-fun tp!1454492 () Bool)

(assert (=> b!5184437 (= e!3229906 tp!1454492)))

(declare-fun b!5184438 () Bool)

(declare-fun e!3229904 () Bool)

(assert (=> b!5184438 (= e!3229904 (not e!3229907))))

(declare-fun res!2202272 () Bool)

(assert (=> b!5184438 (=> res!2202272 e!3229907)))

(assert (=> b!5184438 (= res!2202272 (not (is-Cons!60264 zl!343)))))

(declare-datatypes ((List!60389 0))(
  ( (Nil!60265) (Cons!60265 (h!66713 C!29662) (t!373542 List!60389)) )
))
(declare-fun s!2326 () List!60389)

(declare-fun matchR!6881 (Regex!14696 List!60389) Bool)

(declare-fun matchRSpec!1799 (Regex!14696 List!60389) Bool)

(assert (=> b!5184438 (= (matchR!6881 r!7292 s!2326) (matchRSpec!1799 r!7292 s!2326))))

(declare-datatypes ((Unit!152226 0))(
  ( (Unit!152227) )
))
(declare-fun lt!2136288 () Unit!152226)

(declare-fun mainMatchTheorem!1799 (Regex!14696 List!60389) Unit!152226)

(assert (=> b!5184438 (= lt!2136288 (mainMatchTheorem!1799 r!7292 s!2326))))

(declare-fun b!5184439 () Bool)

(declare-fun res!2202276 () Bool)

(assert (=> b!5184439 (=> (not res!2202276) (not e!3229904))))

(declare-fun z!1189 () (Set Context!8160))

(declare-fun toList!8480 ((Set Context!8160)) List!60388)

(assert (=> b!5184439 (= res!2202276 (= (toList!8480 z!1189) zl!343))))

(declare-fun b!5184440 () Bool)

(declare-fun tp_is_empty!38645 () Bool)

(assert (=> b!5184440 (= e!3229906 tp_is_empty!38645)))

(declare-fun b!5184441 () Bool)

(declare-fun tp!1454493 () Bool)

(declare-fun tp!1454490 () Bool)

(assert (=> b!5184441 (= e!3229906 (and tp!1454493 tp!1454490))))

(declare-fun b!5184442 () Bool)

(declare-fun res!2202271 () Bool)

(assert (=> b!5184442 (=> res!2202271 e!3229907)))

(declare-fun generalisedUnion!625 (List!60387) Regex!14696)

(declare-fun unfocusZipperList!138 (List!60388) List!60387)

(assert (=> b!5184442 (= res!2202271 (not (= r!7292 (generalisedUnion!625 (unfocusZipperList!138 zl!343)))))))

(declare-fun b!5184435 () Bool)

(declare-fun e!3229902 () Bool)

(declare-fun tp!1454487 () Bool)

(assert (=> b!5184435 (= e!3229902 tp!1454487)))

(declare-fun res!2202274 () Bool)

(assert (=> start!549036 (=> (not res!2202274) (not e!3229904))))

(declare-fun validRegex!6432 (Regex!14696) Bool)

(assert (=> start!549036 (= res!2202274 (validRegex!6432 r!7292))))

(assert (=> start!549036 e!3229904))

(assert (=> start!549036 e!3229906))

(declare-fun condSetEmpty!32635 () Bool)

(assert (=> start!549036 (= condSetEmpty!32635 (= z!1189 (as set.empty (Set Context!8160))))))

(declare-fun setRes!32635 () Bool)

(assert (=> start!549036 setRes!32635))

(declare-fun e!3229903 () Bool)

(assert (=> start!549036 e!3229903))

(declare-fun e!3229908 () Bool)

(assert (=> start!549036 e!3229908))

(declare-fun setIsEmpty!32635 () Bool)

(assert (=> setIsEmpty!32635 setRes!32635))

(declare-fun tp!1454488 () Bool)

(declare-fun b!5184443 () Bool)

(declare-fun e!3229905 () Bool)

(declare-fun inv!79988 (Context!8160) Bool)

(assert (=> b!5184443 (= e!3229903 (and (inv!79988 (h!66712 zl!343)) e!3229905 tp!1454488))))

(declare-fun b!5184444 () Bool)

(declare-fun res!2202278 () Bool)

(assert (=> b!5184444 (=> (not res!2202278) (not e!3229904))))

(declare-fun unfocusZipper!438 (List!60388) Regex!14696)

(assert (=> b!5184444 (= res!2202278 (= r!7292 (unfocusZipper!438 zl!343)))))

(declare-fun b!5184445 () Bool)

(assert (=> b!5184445 (= e!3229907 true)))

(assert (=> b!5184445 (= (matchR!6881 (regOne!29905 r!7292) s!2326) (matchRSpec!1799 (regOne!29905 r!7292) s!2326))))

(declare-fun lt!2136289 () Unit!152226)

(assert (=> b!5184445 (= lt!2136289 (mainMatchTheorem!1799 (regOne!29905 r!7292) s!2326))))

(declare-fun b!5184446 () Bool)

(declare-fun tp!1454491 () Bool)

(assert (=> b!5184446 (= e!3229905 tp!1454491)))

(declare-fun b!5184447 () Bool)

(declare-fun res!2202277 () Bool)

(assert (=> b!5184447 (=> res!2202277 e!3229907)))

(declare-fun isEmpty!32253 (List!60388) Bool)

(assert (=> b!5184447 (= res!2202277 (not (isEmpty!32253 (t!373541 zl!343))))))

(declare-fun b!5184448 () Bool)

(declare-fun res!2202273 () Bool)

(assert (=> b!5184448 (=> res!2202273 e!3229907)))

(assert (=> b!5184448 (= res!2202273 (or (is-EmptyExpr!14696 r!7292) (is-EmptyLang!14696 r!7292) (is-ElementMatch!14696 r!7292) (not (is-Union!14696 r!7292))))))

(declare-fun b!5184449 () Bool)

(declare-fun res!2202279 () Bool)

(assert (=> b!5184449 (=> res!2202279 e!3229907)))

(assert (=> b!5184449 (= res!2202279 (not (is-Cons!60263 (exprs!4580 (h!66712 zl!343)))))))

(declare-fun tp!1454494 () Bool)

(declare-fun setNonEmpty!32635 () Bool)

(declare-fun setElem!32635 () Context!8160)

(assert (=> setNonEmpty!32635 (= setRes!32635 (and tp!1454494 (inv!79988 setElem!32635) e!3229902))))

(declare-fun setRest!32635 () (Set Context!8160))

(assert (=> setNonEmpty!32635 (= z!1189 (set.union (set.insert setElem!32635 (as set.empty (Set Context!8160))) setRest!32635))))

(declare-fun b!5184450 () Bool)

(declare-fun tp!1454495 () Bool)

(assert (=> b!5184450 (= e!3229908 (and tp_is_empty!38645 tp!1454495))))

(assert (= (and start!549036 res!2202274) b!5184439))

(assert (= (and b!5184439 res!2202276) b!5184444))

(assert (= (and b!5184444 res!2202278) b!5184438))

(assert (= (and b!5184438 (not res!2202272)) b!5184447))

(assert (= (and b!5184447 (not res!2202277)) b!5184434))

(assert (= (and b!5184434 (not res!2202275)) b!5184449))

(assert (= (and b!5184449 (not res!2202279)) b!5184442))

(assert (= (and b!5184442 (not res!2202271)) b!5184448))

(assert (= (and b!5184448 (not res!2202273)) b!5184445))

(assert (= (and start!549036 (is-ElementMatch!14696 r!7292)) b!5184440))

(assert (= (and start!549036 (is-Concat!23541 r!7292)) b!5184441))

(assert (= (and start!549036 (is-Star!14696 r!7292)) b!5184437))

(assert (= (and start!549036 (is-Union!14696 r!7292)) b!5184436))

(assert (= (and start!549036 condSetEmpty!32635) setIsEmpty!32635))

(assert (= (and start!549036 (not condSetEmpty!32635)) setNonEmpty!32635))

(assert (= setNonEmpty!32635 b!5184435))

(assert (= b!5184443 b!5184446))

(assert (= (and start!549036 (is-Cons!60264 zl!343)) b!5184443))

(assert (= (and start!549036 (is-Cons!60265 s!2326)) b!5184450))

(declare-fun m!6243634 () Bool)

(assert (=> b!5184438 m!6243634))

(declare-fun m!6243636 () Bool)

(assert (=> b!5184438 m!6243636))

(declare-fun m!6243638 () Bool)

(assert (=> b!5184438 m!6243638))

(declare-fun m!6243640 () Bool)

(assert (=> b!5184442 m!6243640))

(assert (=> b!5184442 m!6243640))

(declare-fun m!6243642 () Bool)

(assert (=> b!5184442 m!6243642))

(declare-fun m!6243644 () Bool)

(assert (=> b!5184439 m!6243644))

(declare-fun m!6243646 () Bool)

(assert (=> b!5184445 m!6243646))

(declare-fun m!6243648 () Bool)

(assert (=> b!5184445 m!6243648))

(declare-fun m!6243650 () Bool)

(assert (=> b!5184445 m!6243650))

(declare-fun m!6243652 () Bool)

(assert (=> start!549036 m!6243652))

(declare-fun m!6243654 () Bool)

(assert (=> b!5184434 m!6243654))

(declare-fun m!6243656 () Bool)

(assert (=> b!5184444 m!6243656))

(declare-fun m!6243658 () Bool)

(assert (=> b!5184443 m!6243658))

(declare-fun m!6243660 () Bool)

(assert (=> setNonEmpty!32635 m!6243660))

(declare-fun m!6243662 () Bool)

(assert (=> b!5184447 m!6243662))

(push 1)

(assert (not b!5184445))

(assert (not start!549036))

(assert (not setNonEmpty!32635))

(assert (not b!5184437))

(assert (not b!5184435))

(assert (not b!5184447))

(assert (not b!5184439))

(assert (not b!5184450))

(assert (not b!5184441))

(assert (not b!5184436))

(assert (not b!5184444))

(assert tp_is_empty!38645)

(assert (not b!5184446))

(assert (not b!5184438))

(assert (not b!5184434))

(assert (not b!5184442))

(assert (not b!5184443))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

