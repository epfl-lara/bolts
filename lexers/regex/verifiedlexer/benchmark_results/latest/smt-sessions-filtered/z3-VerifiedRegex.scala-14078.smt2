; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742018 () Bool)

(assert start!742018)

(declare-fun b!7821576 () Bool)

(declare-fun e!4627589 () Bool)

(declare-fun tp_is_empty!52257 () Bool)

(declare-fun tp!2308569 () Bool)

(assert (=> b!7821576 (= e!4627589 (and tp_is_empty!52257 tp!2308569))))

(declare-fun b!7821577 () Bool)

(declare-fun e!4627585 () Bool)

(declare-fun tp!2308563 () Bool)

(declare-fun tp!2308565 () Bool)

(assert (=> b!7821577 (= e!4627585 (and tp!2308563 tp!2308565))))

(declare-fun b!7821578 () Bool)

(declare-fun res!3113295 () Bool)

(declare-fun e!4627586 () Bool)

(assert (=> b!7821578 (=> (not res!3113295) (not e!4627586))))

(declare-datatypes ((C!42228 0))(
  ( (C!42229 (val!31554 Int)) )
))
(declare-datatypes ((List!73788 0))(
  ( (Nil!73664) (Cons!73664 (h!80112 C!42228) (t!388523 List!73788)) )
))
(declare-fun s1Rec!453 () List!73788)

(declare-fun s2Rec!453 () List!73788)

(declare-fun s!14274 () List!73788)

(declare-fun ++!17985 (List!73788 List!73788) List!73788)

(assert (=> b!7821578 (= res!3113295 (= (++!17985 s1Rec!453 s2Rec!453) s!14274))))

(declare-fun b!7821579 () Bool)

(declare-fun res!3113292 () Bool)

(assert (=> b!7821579 (=> (not res!3113292) (not e!4627586))))

(declare-datatypes ((Regex!20951 0))(
  ( (ElementMatch!20951 (c!1439416 C!42228)) (Concat!29796 (regOne!42414 Regex!20951) (regTwo!42414 Regex!20951)) (EmptyExpr!20951) (Star!20951 (reg!21280 Regex!20951)) (EmptyLang!20951) (Union!20951 (regOne!42415 Regex!20951) (regTwo!42415 Regex!20951)) )
))
(declare-fun r2!6199 () Regex!20951)

(declare-fun validRegex!11365 (Regex!20951) Bool)

(assert (=> b!7821579 (= res!3113292 (validRegex!11365 r2!6199))))

(declare-fun b!7821581 () Bool)

(declare-fun e!4627581 () Bool)

(assert (=> b!7821581 (= e!4627586 e!4627581)))

(declare-fun res!3113298 () Bool)

(assert (=> b!7821581 (=> (not res!3113298) (not e!4627581))))

(declare-fun lt!2676568 () Int)

(declare-fun size!42751 (List!73788) Int)

(assert (=> b!7821581 (= res!3113298 (= lt!2676568 (size!42751 s!14274)))))

(assert (=> b!7821581 (= lt!2676568 (size!42751 s1Rec!453))))

(declare-fun b!7821582 () Bool)

(declare-fun e!4627582 () Bool)

(declare-fun tp!2308571 () Bool)

(declare-fun tp!2308564 () Bool)

(assert (=> b!7821582 (= e!4627582 (and tp!2308571 tp!2308564))))

(declare-fun b!7821583 () Bool)

(assert (=> b!7821583 (= e!4627585 tp_is_empty!52257)))

(declare-fun b!7821584 () Bool)

(assert (=> b!7821584 (= e!4627582 tp_is_empty!52257)))

(declare-fun b!7821585 () Bool)

(declare-fun res!3113297 () Bool)

(assert (=> b!7821585 (=> (not res!3113297) (not e!4627586))))

(declare-fun e!4627583 () Bool)

(assert (=> b!7821585 (= res!3113297 e!4627583)))

(declare-fun res!3113299 () Bool)

(assert (=> b!7821585 (=> res!3113299 e!4627583)))

(declare-fun r1!6261 () Regex!20951)

(declare-fun matchR!10407 (Regex!20951 List!73788) Bool)

(assert (=> b!7821585 (= res!3113299 (not (matchR!10407 r1!6261 s1Rec!453)))))

(declare-fun b!7821586 () Bool)

(declare-fun s1!4101 () List!73788)

(assert (=> b!7821586 (= e!4627581 (not (= lt!2676568 (size!42751 s1!4101))))))

(declare-fun b!7821587 () Bool)

(declare-fun e!4627584 () Bool)

(declare-fun tp!2308567 () Bool)

(assert (=> b!7821587 (= e!4627584 (and tp_is_empty!52257 tp!2308567))))

(declare-fun b!7821588 () Bool)

(assert (=> b!7821588 (= e!4627583 (not (matchR!10407 r2!6199 s2Rec!453)))))

(declare-fun b!7821589 () Bool)

(declare-fun res!3113294 () Bool)

(assert (=> b!7821589 (=> (not res!3113294) (not e!4627586))))

(declare-fun s2!3721 () List!73788)

(assert (=> b!7821589 (= res!3113294 (= (++!17985 s1!4101 s2!3721) s!14274))))

(declare-fun b!7821580 () Bool)

(declare-fun tp!2308570 () Bool)

(assert (=> b!7821580 (= e!4627582 tp!2308570)))

(declare-fun res!3113293 () Bool)

(assert (=> start!742018 (=> (not res!3113293) (not e!4627586))))

(assert (=> start!742018 (= res!3113293 (validRegex!11365 r1!6261))))

(assert (=> start!742018 e!4627586))

(assert (=> start!742018 e!4627582))

(assert (=> start!742018 e!4627584))

(declare-fun e!4627588 () Bool)

(assert (=> start!742018 e!4627588))

(declare-fun e!4627587 () Bool)

(assert (=> start!742018 e!4627587))

(assert (=> start!742018 e!4627589))

(assert (=> start!742018 e!4627585))

(declare-fun e!4627580 () Bool)

(assert (=> start!742018 e!4627580))

(declare-fun b!7821590 () Bool)

(declare-fun tp!2308559 () Bool)

(declare-fun tp!2308568 () Bool)

(assert (=> b!7821590 (= e!4627582 (and tp!2308559 tp!2308568))))

(declare-fun b!7821591 () Bool)

(declare-fun res!3113296 () Bool)

(assert (=> b!7821591 (=> (not res!3113296) (not e!4627586))))

(get-info :version)

(assert (=> b!7821591 (= res!3113296 ((_ is Nil!73664) s2Rec!453))))

(declare-fun b!7821592 () Bool)

(declare-fun res!3113300 () Bool)

(assert (=> b!7821592 (=> (not res!3113300) (not e!4627586))))

(assert (=> b!7821592 (= res!3113300 (matchR!10407 r1!6261 s1!4101))))

(declare-fun b!7821593 () Bool)

(declare-fun tp!2308560 () Bool)

(assert (=> b!7821593 (= e!4627588 (and tp_is_empty!52257 tp!2308560))))

(declare-fun b!7821594 () Bool)

(declare-fun res!3113302 () Bool)

(assert (=> b!7821594 (=> (not res!3113302) (not e!4627586))))

(declare-fun isPrefix!6301 (List!73788 List!73788) Bool)

(assert (=> b!7821594 (= res!3113302 (isPrefix!6301 s1Rec!453 s1!4101))))

(declare-fun b!7821595 () Bool)

(declare-fun tp!2308557 () Bool)

(assert (=> b!7821595 (= e!4627585 tp!2308557)))

(declare-fun b!7821596 () Bool)

(declare-fun tp!2308562 () Bool)

(assert (=> b!7821596 (= e!4627580 (and tp_is_empty!52257 tp!2308562))))

(declare-fun b!7821597 () Bool)

(declare-fun res!3113301 () Bool)

(assert (=> b!7821597 (=> (not res!3113301) (not e!4627586))))

(assert (=> b!7821597 (= res!3113301 (matchR!10407 r2!6199 s2!3721))))

(declare-fun b!7821598 () Bool)

(declare-fun tp!2308558 () Bool)

(assert (=> b!7821598 (= e!4627587 (and tp_is_empty!52257 tp!2308558))))

(declare-fun b!7821599 () Bool)

(declare-fun tp!2308566 () Bool)

(declare-fun tp!2308561 () Bool)

(assert (=> b!7821599 (= e!4627585 (and tp!2308566 tp!2308561))))

(assert (= (and start!742018 res!3113293) b!7821579))

(assert (= (and b!7821579 res!3113292) b!7821589))

(assert (= (and b!7821589 res!3113294) b!7821594))

(assert (= (and b!7821594 res!3113302) b!7821578))

(assert (= (and b!7821578 res!3113295) b!7821592))

(assert (= (and b!7821592 res!3113300) b!7821597))

(assert (= (and b!7821597 res!3113301) b!7821585))

(assert (= (and b!7821585 (not res!3113299)) b!7821588))

(assert (= (and b!7821585 res!3113297) b!7821591))

(assert (= (and b!7821591 res!3113296) b!7821581))

(assert (= (and b!7821581 res!3113298) b!7821586))

(assert (= (and start!742018 ((_ is ElementMatch!20951) r2!6199)) b!7821584))

(assert (= (and start!742018 ((_ is Concat!29796) r2!6199)) b!7821582))

(assert (= (and start!742018 ((_ is Star!20951) r2!6199)) b!7821580))

(assert (= (and start!742018 ((_ is Union!20951) r2!6199)) b!7821590))

(assert (= (and start!742018 ((_ is Cons!73664) s1!4101)) b!7821587))

(assert (= (and start!742018 ((_ is Cons!73664) s2!3721)) b!7821593))

(assert (= (and start!742018 ((_ is Cons!73664) s2Rec!453)) b!7821598))

(assert (= (and start!742018 ((_ is Cons!73664) s!14274)) b!7821576))

(assert (= (and start!742018 ((_ is ElementMatch!20951) r1!6261)) b!7821583))

(assert (= (and start!742018 ((_ is Concat!29796) r1!6261)) b!7821599))

(assert (= (and start!742018 ((_ is Star!20951) r1!6261)) b!7821595))

(assert (= (and start!742018 ((_ is Union!20951) r1!6261)) b!7821577))

(assert (= (and start!742018 ((_ is Cons!73664) s1Rec!453)) b!7821596))

(declare-fun m!8245430 () Bool)

(assert (=> b!7821581 m!8245430))

(declare-fun m!8245432 () Bool)

(assert (=> b!7821581 m!8245432))

(declare-fun m!8245434 () Bool)

(assert (=> b!7821594 m!8245434))

(declare-fun m!8245436 () Bool)

(assert (=> b!7821578 m!8245436))

(declare-fun m!8245438 () Bool)

(assert (=> b!7821592 m!8245438))

(declare-fun m!8245440 () Bool)

(assert (=> b!7821588 m!8245440))

(declare-fun m!8245442 () Bool)

(assert (=> start!742018 m!8245442))

(declare-fun m!8245444 () Bool)

(assert (=> b!7821597 m!8245444))

(declare-fun m!8245446 () Bool)

(assert (=> b!7821585 m!8245446))

(declare-fun m!8245448 () Bool)

(assert (=> b!7821589 m!8245448))

(declare-fun m!8245450 () Bool)

(assert (=> b!7821586 m!8245450))

(declare-fun m!8245452 () Bool)

(assert (=> b!7821579 m!8245452))

(check-sat (not b!7821588) (not b!7821593) (not b!7821589) (not start!742018) tp_is_empty!52257 (not b!7821587) (not b!7821599) (not b!7821592) (not b!7821598) (not b!7821594) (not b!7821585) (not b!7821595) (not b!7821597) (not b!7821596) (not b!7821580) (not b!7821579) (not b!7821581) (not b!7821586) (not b!7821578) (not b!7821576) (not b!7821590) (not b!7821582) (not b!7821577))
(check-sat)
(get-model)

(declare-fun b!7821637 () Bool)

(declare-fun e!4627609 () List!73788)

(assert (=> b!7821637 (= e!4627609 (Cons!73664 (h!80112 s1!4101) (++!17985 (t!388523 s1!4101) s2!3721)))))

(declare-fun e!4627608 () Bool)

(declare-fun b!7821639 () Bool)

(declare-fun lt!2676573 () List!73788)

(assert (=> b!7821639 (= e!4627608 (or (not (= s2!3721 Nil!73664)) (= lt!2676573 s1!4101)))))

(declare-fun d!2349591 () Bool)

(assert (=> d!2349591 e!4627608))

(declare-fun res!3113324 () Bool)

(assert (=> d!2349591 (=> (not res!3113324) (not e!4627608))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15636 (List!73788) (InoxSet C!42228))

(assert (=> d!2349591 (= res!3113324 (= (content!15636 lt!2676573) ((_ map or) (content!15636 s1!4101) (content!15636 s2!3721))))))

(assert (=> d!2349591 (= lt!2676573 e!4627609)))

(declare-fun c!1439425 () Bool)

(assert (=> d!2349591 (= c!1439425 ((_ is Nil!73664) s1!4101))))

(assert (=> d!2349591 (= (++!17985 s1!4101 s2!3721) lt!2676573)))

(declare-fun b!7821638 () Bool)

(declare-fun res!3113323 () Bool)

(assert (=> b!7821638 (=> (not res!3113323) (not e!4627608))))

(assert (=> b!7821638 (= res!3113323 (= (size!42751 lt!2676573) (+ (size!42751 s1!4101) (size!42751 s2!3721))))))

(declare-fun b!7821636 () Bool)

(assert (=> b!7821636 (= e!4627609 s2!3721)))

(assert (= (and d!2349591 c!1439425) b!7821636))

(assert (= (and d!2349591 (not c!1439425)) b!7821637))

(assert (= (and d!2349591 res!3113324) b!7821638))

(assert (= (and b!7821638 res!3113323) b!7821639))

(declare-fun m!8245454 () Bool)

(assert (=> b!7821637 m!8245454))

(declare-fun m!8245456 () Bool)

(assert (=> d!2349591 m!8245456))

(declare-fun m!8245458 () Bool)

(assert (=> d!2349591 m!8245458))

(declare-fun m!8245460 () Bool)

(assert (=> d!2349591 m!8245460))

(declare-fun m!8245462 () Bool)

(assert (=> b!7821638 m!8245462))

(assert (=> b!7821638 m!8245450))

(declare-fun m!8245464 () Bool)

(assert (=> b!7821638 m!8245464))

(assert (=> b!7821589 d!2349591))

(declare-fun d!2349595 () Bool)

(declare-fun e!4627624 () Bool)

(assert (=> d!2349595 e!4627624))

(declare-fun res!3113343 () Bool)

(assert (=> d!2349595 (=> res!3113343 e!4627624)))

(declare-fun lt!2676577 () Bool)

(assert (=> d!2349595 (= res!3113343 (not lt!2676577))))

(declare-fun e!4627623 () Bool)

(assert (=> d!2349595 (= lt!2676577 e!4627623)))

(declare-fun res!3113341 () Bool)

(assert (=> d!2349595 (=> res!3113341 e!4627623)))

(assert (=> d!2349595 (= res!3113341 ((_ is Nil!73664) s1Rec!453))))

(assert (=> d!2349595 (= (isPrefix!6301 s1Rec!453 s1!4101) lt!2676577)))

(declare-fun b!7821662 () Bool)

(declare-fun e!4627625 () Bool)

(assert (=> b!7821662 (= e!4627623 e!4627625)))

(declare-fun res!3113342 () Bool)

(assert (=> b!7821662 (=> (not res!3113342) (not e!4627625))))

(assert (=> b!7821662 (= res!3113342 (not ((_ is Nil!73664) s1!4101)))))

(declare-fun b!7821664 () Bool)

(declare-fun tail!15525 (List!73788) List!73788)

(assert (=> b!7821664 (= e!4627625 (isPrefix!6301 (tail!15525 s1Rec!453) (tail!15525 s1!4101)))))

(declare-fun b!7821665 () Bool)

(assert (=> b!7821665 (= e!4627624 (>= (size!42751 s1!4101) (size!42751 s1Rec!453)))))

(declare-fun b!7821663 () Bool)

(declare-fun res!3113344 () Bool)

(assert (=> b!7821663 (=> (not res!3113344) (not e!4627625))))

(declare-fun head!15984 (List!73788) C!42228)

(assert (=> b!7821663 (= res!3113344 (= (head!15984 s1Rec!453) (head!15984 s1!4101)))))

(assert (= (and d!2349595 (not res!3113341)) b!7821662))

(assert (= (and b!7821662 res!3113342) b!7821663))

(assert (= (and b!7821663 res!3113344) b!7821664))

(assert (= (and d!2349595 (not res!3113343)) b!7821665))

(declare-fun m!8245480 () Bool)

(assert (=> b!7821664 m!8245480))

(declare-fun m!8245482 () Bool)

(assert (=> b!7821664 m!8245482))

(assert (=> b!7821664 m!8245480))

(assert (=> b!7821664 m!8245482))

(declare-fun m!8245484 () Bool)

(assert (=> b!7821664 m!8245484))

(assert (=> b!7821665 m!8245450))

(assert (=> b!7821665 m!8245432))

(declare-fun m!8245486 () Bool)

(assert (=> b!7821663 m!8245486))

(declare-fun m!8245488 () Bool)

(assert (=> b!7821663 m!8245488))

(assert (=> b!7821594 d!2349595))

(declare-fun b!7821667 () Bool)

(declare-fun e!4627627 () List!73788)

(assert (=> b!7821667 (= e!4627627 (Cons!73664 (h!80112 s1Rec!453) (++!17985 (t!388523 s1Rec!453) s2Rec!453)))))

(declare-fun e!4627626 () Bool)

(declare-fun b!7821669 () Bool)

(declare-fun lt!2676578 () List!73788)

(assert (=> b!7821669 (= e!4627626 (or (not (= s2Rec!453 Nil!73664)) (= lt!2676578 s1Rec!453)))))

(declare-fun d!2349599 () Bool)

(assert (=> d!2349599 e!4627626))

(declare-fun res!3113346 () Bool)

(assert (=> d!2349599 (=> (not res!3113346) (not e!4627626))))

(assert (=> d!2349599 (= res!3113346 (= (content!15636 lt!2676578) ((_ map or) (content!15636 s1Rec!453) (content!15636 s2Rec!453))))))

(assert (=> d!2349599 (= lt!2676578 e!4627627)))

(declare-fun c!1439429 () Bool)

(assert (=> d!2349599 (= c!1439429 ((_ is Nil!73664) s1Rec!453))))

(assert (=> d!2349599 (= (++!17985 s1Rec!453 s2Rec!453) lt!2676578)))

(declare-fun b!7821668 () Bool)

(declare-fun res!3113345 () Bool)

(assert (=> b!7821668 (=> (not res!3113345) (not e!4627626))))

(assert (=> b!7821668 (= res!3113345 (= (size!42751 lt!2676578) (+ (size!42751 s1Rec!453) (size!42751 s2Rec!453))))))

(declare-fun b!7821666 () Bool)

(assert (=> b!7821666 (= e!4627627 s2Rec!453)))

(assert (= (and d!2349599 c!1439429) b!7821666))

(assert (= (and d!2349599 (not c!1439429)) b!7821667))

(assert (= (and d!2349599 res!3113346) b!7821668))

(assert (= (and b!7821668 res!3113345) b!7821669))

(declare-fun m!8245490 () Bool)

(assert (=> b!7821667 m!8245490))

(declare-fun m!8245492 () Bool)

(assert (=> d!2349599 m!8245492))

(declare-fun m!8245494 () Bool)

(assert (=> d!2349599 m!8245494))

(declare-fun m!8245496 () Bool)

(assert (=> d!2349599 m!8245496))

(declare-fun m!8245498 () Bool)

(assert (=> b!7821668 m!8245498))

(assert (=> b!7821668 m!8245432))

(declare-fun m!8245500 () Bool)

(assert (=> b!7821668 m!8245500))

(assert (=> b!7821578 d!2349599))

(declare-fun bm!725480 () Bool)

(declare-fun call!725485 () Bool)

(declare-fun isEmpty!42283 (List!73788) Bool)

(assert (=> bm!725480 (= call!725485 (isEmpty!42283 s2Rec!453))))

(declare-fun b!7821786 () Bool)

(declare-fun res!3113418 () Bool)

(declare-fun e!4627694 () Bool)

(assert (=> b!7821786 (=> res!3113418 e!4627694)))

(assert (=> b!7821786 (= res!3113418 (not ((_ is ElementMatch!20951) r2!6199)))))

(declare-fun e!4627700 () Bool)

(assert (=> b!7821786 (= e!4627700 e!4627694)))

(declare-fun b!7821787 () Bool)

(declare-fun res!3113421 () Bool)

(declare-fun e!4627697 () Bool)

(assert (=> b!7821787 (=> res!3113421 e!4627697)))

(assert (=> b!7821787 (= res!3113421 (not (isEmpty!42283 (tail!15525 s2Rec!453))))))

(declare-fun b!7821788 () Bool)

(declare-fun lt!2676591 () Bool)

(assert (=> b!7821788 (= e!4627700 (not lt!2676591))))

(declare-fun b!7821789 () Bool)

(declare-fun res!3113422 () Bool)

(declare-fun e!4627699 () Bool)

(assert (=> b!7821789 (=> (not res!3113422) (not e!4627699))))

(assert (=> b!7821789 (= res!3113422 (not call!725485))))

(declare-fun b!7821790 () Bool)

(declare-fun e!4627696 () Bool)

(assert (=> b!7821790 (= e!4627696 e!4627700)))

(declare-fun c!1439453 () Bool)

(assert (=> b!7821790 (= c!1439453 ((_ is EmptyLang!20951) r2!6199))))

(declare-fun b!7821791 () Bool)

(declare-fun e!4627695 () Bool)

(declare-fun nullable!9295 (Regex!20951) Bool)

(assert (=> b!7821791 (= e!4627695 (nullable!9295 r2!6199))))

(declare-fun b!7821792 () Bool)

(assert (=> b!7821792 (= e!4627699 (= (head!15984 s2Rec!453) (c!1439416 r2!6199)))))

(declare-fun b!7821793 () Bool)

(assert (=> b!7821793 (= e!4627697 (not (= (head!15984 s2Rec!453) (c!1439416 r2!6199))))))

(declare-fun d!2349601 () Bool)

(assert (=> d!2349601 e!4627696))

(declare-fun c!1439455 () Bool)

(assert (=> d!2349601 (= c!1439455 ((_ is EmptyExpr!20951) r2!6199))))

(assert (=> d!2349601 (= lt!2676591 e!4627695)))

(declare-fun c!1439454 () Bool)

(assert (=> d!2349601 (= c!1439454 (isEmpty!42283 s2Rec!453))))

(assert (=> d!2349601 (validRegex!11365 r2!6199)))

(assert (=> d!2349601 (= (matchR!10407 r2!6199 s2Rec!453) lt!2676591)))

(declare-fun b!7821794 () Bool)

(declare-fun derivativeStep!6254 (Regex!20951 C!42228) Regex!20951)

(assert (=> b!7821794 (= e!4627695 (matchR!10407 (derivativeStep!6254 r2!6199 (head!15984 s2Rec!453)) (tail!15525 s2Rec!453)))))

(declare-fun b!7821795 () Bool)

(declare-fun e!4627698 () Bool)

(assert (=> b!7821795 (= e!4627694 e!4627698)))

(declare-fun res!3113417 () Bool)

(assert (=> b!7821795 (=> (not res!3113417) (not e!4627698))))

(assert (=> b!7821795 (= res!3113417 (not lt!2676591))))

(declare-fun b!7821796 () Bool)

(declare-fun res!3113423 () Bool)

(assert (=> b!7821796 (=> res!3113423 e!4627694)))

(assert (=> b!7821796 (= res!3113423 e!4627699)))

(declare-fun res!3113424 () Bool)

(assert (=> b!7821796 (=> (not res!3113424) (not e!4627699))))

(assert (=> b!7821796 (= res!3113424 lt!2676591)))

(declare-fun b!7821797 () Bool)

(assert (=> b!7821797 (= e!4627696 (= lt!2676591 call!725485))))

(declare-fun b!7821798 () Bool)

(declare-fun res!3113420 () Bool)

(assert (=> b!7821798 (=> (not res!3113420) (not e!4627699))))

(assert (=> b!7821798 (= res!3113420 (isEmpty!42283 (tail!15525 s2Rec!453)))))

(declare-fun b!7821799 () Bool)

(assert (=> b!7821799 (= e!4627698 e!4627697)))

(declare-fun res!3113419 () Bool)

(assert (=> b!7821799 (=> res!3113419 e!4627697)))

(assert (=> b!7821799 (= res!3113419 call!725485)))

(assert (= (and d!2349601 c!1439454) b!7821791))

(assert (= (and d!2349601 (not c!1439454)) b!7821794))

(assert (= (and d!2349601 c!1439455) b!7821797))

(assert (= (and d!2349601 (not c!1439455)) b!7821790))

(assert (= (and b!7821790 c!1439453) b!7821788))

(assert (= (and b!7821790 (not c!1439453)) b!7821786))

(assert (= (and b!7821786 (not res!3113418)) b!7821796))

(assert (= (and b!7821796 res!3113424) b!7821789))

(assert (= (and b!7821789 res!3113422) b!7821798))

(assert (= (and b!7821798 res!3113420) b!7821792))

(assert (= (and b!7821796 (not res!3113423)) b!7821795))

(assert (= (and b!7821795 res!3113417) b!7821799))

(assert (= (and b!7821799 (not res!3113419)) b!7821787))

(assert (= (and b!7821787 (not res!3113421)) b!7821793))

(assert (= (or b!7821797 b!7821789 b!7821799) bm!725480))

(declare-fun m!8245572 () Bool)

(assert (=> b!7821793 m!8245572))

(assert (=> b!7821794 m!8245572))

(assert (=> b!7821794 m!8245572))

(declare-fun m!8245574 () Bool)

(assert (=> b!7821794 m!8245574))

(declare-fun m!8245576 () Bool)

(assert (=> b!7821794 m!8245576))

(assert (=> b!7821794 m!8245574))

(assert (=> b!7821794 m!8245576))

(declare-fun m!8245578 () Bool)

(assert (=> b!7821794 m!8245578))

(declare-fun m!8245580 () Bool)

(assert (=> bm!725480 m!8245580))

(assert (=> b!7821787 m!8245576))

(assert (=> b!7821787 m!8245576))

(declare-fun m!8245582 () Bool)

(assert (=> b!7821787 m!8245582))

(assert (=> d!2349601 m!8245580))

(assert (=> d!2349601 m!8245452))

(assert (=> b!7821792 m!8245572))

(assert (=> b!7821798 m!8245576))

(assert (=> b!7821798 m!8245576))

(assert (=> b!7821798 m!8245582))

(declare-fun m!8245586 () Bool)

(assert (=> b!7821791 m!8245586))

(assert (=> b!7821588 d!2349601))

(declare-fun bm!725487 () Bool)

(declare-fun call!725492 () Bool)

(assert (=> bm!725487 (= call!725492 (isEmpty!42283 s1Rec!453))))

(declare-fun b!7821818 () Bool)

(declare-fun res!3113436 () Bool)

(declare-fun e!4627715 () Bool)

(assert (=> b!7821818 (=> res!3113436 e!4627715)))

(assert (=> b!7821818 (= res!3113436 (not ((_ is ElementMatch!20951) r1!6261)))))

(declare-fun e!4627721 () Bool)

(assert (=> b!7821818 (= e!4627721 e!4627715)))

(declare-fun b!7821819 () Bool)

(declare-fun res!3113439 () Bool)

(declare-fun e!4627718 () Bool)

(assert (=> b!7821819 (=> res!3113439 e!4627718)))

(assert (=> b!7821819 (= res!3113439 (not (isEmpty!42283 (tail!15525 s1Rec!453))))))

(declare-fun b!7821820 () Bool)

(declare-fun lt!2676592 () Bool)

(assert (=> b!7821820 (= e!4627721 (not lt!2676592))))

(declare-fun b!7821821 () Bool)

(declare-fun res!3113440 () Bool)

(declare-fun e!4627720 () Bool)

(assert (=> b!7821821 (=> (not res!3113440) (not e!4627720))))

(assert (=> b!7821821 (= res!3113440 (not call!725492))))

(declare-fun b!7821822 () Bool)

(declare-fun e!4627717 () Bool)

(assert (=> b!7821822 (= e!4627717 e!4627721)))

(declare-fun c!1439460 () Bool)

(assert (=> b!7821822 (= c!1439460 ((_ is EmptyLang!20951) r1!6261))))

(declare-fun b!7821823 () Bool)

(declare-fun e!4627716 () Bool)

(assert (=> b!7821823 (= e!4627716 (nullable!9295 r1!6261))))

(declare-fun b!7821824 () Bool)

(assert (=> b!7821824 (= e!4627720 (= (head!15984 s1Rec!453) (c!1439416 r1!6261)))))

(declare-fun b!7821825 () Bool)

(assert (=> b!7821825 (= e!4627718 (not (= (head!15984 s1Rec!453) (c!1439416 r1!6261))))))

(declare-fun d!2349617 () Bool)

(assert (=> d!2349617 e!4627717))

(declare-fun c!1439462 () Bool)

(assert (=> d!2349617 (= c!1439462 ((_ is EmptyExpr!20951) r1!6261))))

(assert (=> d!2349617 (= lt!2676592 e!4627716)))

(declare-fun c!1439461 () Bool)

(assert (=> d!2349617 (= c!1439461 (isEmpty!42283 s1Rec!453))))

(assert (=> d!2349617 (validRegex!11365 r1!6261)))

(assert (=> d!2349617 (= (matchR!10407 r1!6261 s1Rec!453) lt!2676592)))

(declare-fun b!7821826 () Bool)

(assert (=> b!7821826 (= e!4627716 (matchR!10407 (derivativeStep!6254 r1!6261 (head!15984 s1Rec!453)) (tail!15525 s1Rec!453)))))

(declare-fun b!7821827 () Bool)

(declare-fun e!4627719 () Bool)

(assert (=> b!7821827 (= e!4627715 e!4627719)))

(declare-fun res!3113435 () Bool)

(assert (=> b!7821827 (=> (not res!3113435) (not e!4627719))))

(assert (=> b!7821827 (= res!3113435 (not lt!2676592))))

(declare-fun b!7821828 () Bool)

(declare-fun res!3113441 () Bool)

(assert (=> b!7821828 (=> res!3113441 e!4627715)))

(assert (=> b!7821828 (= res!3113441 e!4627720)))

(declare-fun res!3113442 () Bool)

(assert (=> b!7821828 (=> (not res!3113442) (not e!4627720))))

(assert (=> b!7821828 (= res!3113442 lt!2676592)))

(declare-fun b!7821829 () Bool)

(assert (=> b!7821829 (= e!4627717 (= lt!2676592 call!725492))))

(declare-fun b!7821830 () Bool)

(declare-fun res!3113438 () Bool)

(assert (=> b!7821830 (=> (not res!3113438) (not e!4627720))))

(assert (=> b!7821830 (= res!3113438 (isEmpty!42283 (tail!15525 s1Rec!453)))))

(declare-fun b!7821831 () Bool)

(assert (=> b!7821831 (= e!4627719 e!4627718)))

(declare-fun res!3113437 () Bool)

(assert (=> b!7821831 (=> res!3113437 e!4627718)))

(assert (=> b!7821831 (= res!3113437 call!725492)))

(assert (= (and d!2349617 c!1439461) b!7821823))

(assert (= (and d!2349617 (not c!1439461)) b!7821826))

(assert (= (and d!2349617 c!1439462) b!7821829))

(assert (= (and d!2349617 (not c!1439462)) b!7821822))

(assert (= (and b!7821822 c!1439460) b!7821820))

(assert (= (and b!7821822 (not c!1439460)) b!7821818))

(assert (= (and b!7821818 (not res!3113436)) b!7821828))

(assert (= (and b!7821828 res!3113442) b!7821821))

(assert (= (and b!7821821 res!3113440) b!7821830))

(assert (= (and b!7821830 res!3113438) b!7821824))

(assert (= (and b!7821828 (not res!3113441)) b!7821827))

(assert (= (and b!7821827 res!3113435) b!7821831))

(assert (= (and b!7821831 (not res!3113437)) b!7821819))

(assert (= (and b!7821819 (not res!3113439)) b!7821825))

(assert (= (or b!7821829 b!7821821 b!7821831) bm!725487))

(assert (=> b!7821825 m!8245486))

(assert (=> b!7821826 m!8245486))

(assert (=> b!7821826 m!8245486))

(declare-fun m!8245592 () Bool)

(assert (=> b!7821826 m!8245592))

(assert (=> b!7821826 m!8245480))

(assert (=> b!7821826 m!8245592))

(assert (=> b!7821826 m!8245480))

(declare-fun m!8245594 () Bool)

(assert (=> b!7821826 m!8245594))

(declare-fun m!8245596 () Bool)

(assert (=> bm!725487 m!8245596))

(assert (=> b!7821819 m!8245480))

(assert (=> b!7821819 m!8245480))

(declare-fun m!8245598 () Bool)

(assert (=> b!7821819 m!8245598))

(assert (=> d!2349617 m!8245596))

(assert (=> d!2349617 m!8245442))

(assert (=> b!7821824 m!8245486))

(assert (=> b!7821830 m!8245480))

(assert (=> b!7821830 m!8245480))

(assert (=> b!7821830 m!8245598))

(declare-fun m!8245600 () Bool)

(assert (=> b!7821823 m!8245600))

(assert (=> b!7821585 d!2349617))

(declare-fun b!7821919 () Bool)

(declare-fun e!4627762 () Bool)

(declare-fun e!4627765 () Bool)

(assert (=> b!7821919 (= e!4627762 e!4627765)))

(declare-fun c!1439472 () Bool)

(assert (=> b!7821919 (= c!1439472 ((_ is Union!20951) r1!6261))))

(declare-fun b!7821920 () Bool)

(declare-fun e!4627761 () Bool)

(assert (=> b!7821920 (= e!4627762 e!4627761)))

(declare-fun res!3113455 () Bool)

(assert (=> b!7821920 (= res!3113455 (not (nullable!9295 (reg!21280 r1!6261))))))

(assert (=> b!7821920 (=> (not res!3113455) (not e!4627761))))

(declare-fun b!7821921 () Bool)

(declare-fun e!4627763 () Bool)

(assert (=> b!7821921 (= e!4627763 e!4627762)))

(declare-fun c!1439473 () Bool)

(assert (=> b!7821921 (= c!1439473 ((_ is Star!20951) r1!6261))))

(declare-fun b!7821922 () Bool)

(declare-fun res!3113454 () Bool)

(declare-fun e!4627760 () Bool)

(assert (=> b!7821922 (=> res!3113454 e!4627760)))

(assert (=> b!7821922 (= res!3113454 (not ((_ is Concat!29796) r1!6261)))))

(assert (=> b!7821922 (= e!4627765 e!4627760)))

(declare-fun bm!725494 () Bool)

(declare-fun call!725500 () Bool)

(declare-fun call!725499 () Bool)

(assert (=> bm!725494 (= call!725500 call!725499)))

(declare-fun b!7821923 () Bool)

(declare-fun e!4627766 () Bool)

(declare-fun call!725501 () Bool)

(assert (=> b!7821923 (= e!4627766 call!725501)))

(declare-fun b!7821925 () Bool)

(declare-fun res!3113457 () Bool)

(declare-fun e!4627764 () Bool)

(assert (=> b!7821925 (=> (not res!3113457) (not e!4627764))))

(assert (=> b!7821925 (= res!3113457 call!725501)))

(assert (=> b!7821925 (= e!4627765 e!4627764)))

(declare-fun b!7821926 () Bool)

(assert (=> b!7821926 (= e!4627760 e!4627766)))

(declare-fun res!3113456 () Bool)

(assert (=> b!7821926 (=> (not res!3113456) (not e!4627766))))

(assert (=> b!7821926 (= res!3113456 call!725500)))

(declare-fun bm!725495 () Bool)

(assert (=> bm!725495 (= call!725501 (validRegex!11365 (ite c!1439472 (regOne!42415 r1!6261) (regTwo!42414 r1!6261))))))

(declare-fun b!7821924 () Bool)

(assert (=> b!7821924 (= e!4627764 call!725500)))

(declare-fun d!2349621 () Bool)

(declare-fun res!3113453 () Bool)

(assert (=> d!2349621 (=> res!3113453 e!4627763)))

(assert (=> d!2349621 (= res!3113453 ((_ is ElementMatch!20951) r1!6261))))

(assert (=> d!2349621 (= (validRegex!11365 r1!6261) e!4627763)))

(declare-fun bm!725496 () Bool)

(assert (=> bm!725496 (= call!725499 (validRegex!11365 (ite c!1439473 (reg!21280 r1!6261) (ite c!1439472 (regTwo!42415 r1!6261) (regOne!42414 r1!6261)))))))

(declare-fun b!7821927 () Bool)

(assert (=> b!7821927 (= e!4627761 call!725499)))

(assert (= (and d!2349621 (not res!3113453)) b!7821921))

(assert (= (and b!7821921 c!1439473) b!7821920))

(assert (= (and b!7821921 (not c!1439473)) b!7821919))

(assert (= (and b!7821920 res!3113455) b!7821927))

(assert (= (and b!7821919 c!1439472) b!7821925))

(assert (= (and b!7821919 (not c!1439472)) b!7821922))

(assert (= (and b!7821925 res!3113457) b!7821924))

(assert (= (and b!7821922 (not res!3113454)) b!7821926))

(assert (= (and b!7821926 res!3113456) b!7821923))

(assert (= (or b!7821924 b!7821926) bm!725494))

(assert (= (or b!7821925 b!7821923) bm!725495))

(assert (= (or b!7821927 bm!725494) bm!725496))

(declare-fun m!8245608 () Bool)

(assert (=> b!7821920 m!8245608))

(declare-fun m!8245610 () Bool)

(assert (=> bm!725495 m!8245610))

(declare-fun m!8245612 () Bool)

(assert (=> bm!725496 m!8245612))

(assert (=> start!742018 d!2349621))

(declare-fun b!7821928 () Bool)

(declare-fun e!4627769 () Bool)

(declare-fun e!4627772 () Bool)

(assert (=> b!7821928 (= e!4627769 e!4627772)))

(declare-fun c!1439474 () Bool)

(assert (=> b!7821928 (= c!1439474 ((_ is Union!20951) r2!6199))))

(declare-fun b!7821929 () Bool)

(declare-fun e!4627768 () Bool)

(assert (=> b!7821929 (= e!4627769 e!4627768)))

(declare-fun res!3113460 () Bool)

(assert (=> b!7821929 (= res!3113460 (not (nullable!9295 (reg!21280 r2!6199))))))

(assert (=> b!7821929 (=> (not res!3113460) (not e!4627768))))

(declare-fun b!7821930 () Bool)

(declare-fun e!4627770 () Bool)

(assert (=> b!7821930 (= e!4627770 e!4627769)))

(declare-fun c!1439475 () Bool)

(assert (=> b!7821930 (= c!1439475 ((_ is Star!20951) r2!6199))))

(declare-fun b!7821931 () Bool)

(declare-fun res!3113459 () Bool)

(declare-fun e!4627767 () Bool)

(assert (=> b!7821931 (=> res!3113459 e!4627767)))

(assert (=> b!7821931 (= res!3113459 (not ((_ is Concat!29796) r2!6199)))))

(assert (=> b!7821931 (= e!4627772 e!4627767)))

(declare-fun bm!725497 () Bool)

(declare-fun call!725503 () Bool)

(declare-fun call!725502 () Bool)

(assert (=> bm!725497 (= call!725503 call!725502)))

(declare-fun b!7821932 () Bool)

(declare-fun e!4627773 () Bool)

(declare-fun call!725504 () Bool)

(assert (=> b!7821932 (= e!4627773 call!725504)))

(declare-fun b!7821934 () Bool)

(declare-fun res!3113462 () Bool)

(declare-fun e!4627771 () Bool)

(assert (=> b!7821934 (=> (not res!3113462) (not e!4627771))))

(assert (=> b!7821934 (= res!3113462 call!725504)))

(assert (=> b!7821934 (= e!4627772 e!4627771)))

(declare-fun b!7821935 () Bool)

(assert (=> b!7821935 (= e!4627767 e!4627773)))

(declare-fun res!3113461 () Bool)

(assert (=> b!7821935 (=> (not res!3113461) (not e!4627773))))

(assert (=> b!7821935 (= res!3113461 call!725503)))

(declare-fun bm!725498 () Bool)

(assert (=> bm!725498 (= call!725504 (validRegex!11365 (ite c!1439474 (regOne!42415 r2!6199) (regTwo!42414 r2!6199))))))

(declare-fun b!7821933 () Bool)

(assert (=> b!7821933 (= e!4627771 call!725503)))

(declare-fun d!2349627 () Bool)

(declare-fun res!3113458 () Bool)

(assert (=> d!2349627 (=> res!3113458 e!4627770)))

(assert (=> d!2349627 (= res!3113458 ((_ is ElementMatch!20951) r2!6199))))

(assert (=> d!2349627 (= (validRegex!11365 r2!6199) e!4627770)))

(declare-fun bm!725499 () Bool)

(assert (=> bm!725499 (= call!725502 (validRegex!11365 (ite c!1439475 (reg!21280 r2!6199) (ite c!1439474 (regTwo!42415 r2!6199) (regOne!42414 r2!6199)))))))

(declare-fun b!7821936 () Bool)

(assert (=> b!7821936 (= e!4627768 call!725502)))

(assert (= (and d!2349627 (not res!3113458)) b!7821930))

(assert (= (and b!7821930 c!1439475) b!7821929))

(assert (= (and b!7821930 (not c!1439475)) b!7821928))

(assert (= (and b!7821929 res!3113460) b!7821936))

(assert (= (and b!7821928 c!1439474) b!7821934))

(assert (= (and b!7821928 (not c!1439474)) b!7821931))

(assert (= (and b!7821934 res!3113462) b!7821933))

(assert (= (and b!7821931 (not res!3113459)) b!7821935))

(assert (= (and b!7821935 res!3113461) b!7821932))

(assert (= (or b!7821933 b!7821935) bm!725497))

(assert (= (or b!7821934 b!7821932) bm!725498))

(assert (= (or b!7821936 bm!725497) bm!725499))

(declare-fun m!8245614 () Bool)

(assert (=> b!7821929 m!8245614))

(declare-fun m!8245616 () Bool)

(assert (=> bm!725498 m!8245616))

(declare-fun m!8245618 () Bool)

(assert (=> bm!725499 m!8245618))

(assert (=> b!7821579 d!2349627))

(declare-fun bm!725500 () Bool)

(declare-fun call!725505 () Bool)

(assert (=> bm!725500 (= call!725505 (isEmpty!42283 s2!3721))))

(declare-fun b!7821937 () Bool)

(declare-fun res!3113464 () Bool)

(declare-fun e!4627774 () Bool)

(assert (=> b!7821937 (=> res!3113464 e!4627774)))

(assert (=> b!7821937 (= res!3113464 (not ((_ is ElementMatch!20951) r2!6199)))))

(declare-fun e!4627780 () Bool)

(assert (=> b!7821937 (= e!4627780 e!4627774)))

(declare-fun b!7821938 () Bool)

(declare-fun res!3113467 () Bool)

(declare-fun e!4627777 () Bool)

(assert (=> b!7821938 (=> res!3113467 e!4627777)))

(assert (=> b!7821938 (= res!3113467 (not (isEmpty!42283 (tail!15525 s2!3721))))))

(declare-fun b!7821939 () Bool)

(declare-fun lt!2676598 () Bool)

(assert (=> b!7821939 (= e!4627780 (not lt!2676598))))

(declare-fun b!7821940 () Bool)

(declare-fun res!3113468 () Bool)

(declare-fun e!4627779 () Bool)

(assert (=> b!7821940 (=> (not res!3113468) (not e!4627779))))

(assert (=> b!7821940 (= res!3113468 (not call!725505))))

(declare-fun b!7821941 () Bool)

(declare-fun e!4627776 () Bool)

(assert (=> b!7821941 (= e!4627776 e!4627780)))

(declare-fun c!1439476 () Bool)

(assert (=> b!7821941 (= c!1439476 ((_ is EmptyLang!20951) r2!6199))))

(declare-fun b!7821942 () Bool)

(declare-fun e!4627775 () Bool)

(assert (=> b!7821942 (= e!4627775 (nullable!9295 r2!6199))))

(declare-fun b!7821943 () Bool)

(assert (=> b!7821943 (= e!4627779 (= (head!15984 s2!3721) (c!1439416 r2!6199)))))

(declare-fun b!7821944 () Bool)

(assert (=> b!7821944 (= e!4627777 (not (= (head!15984 s2!3721) (c!1439416 r2!6199))))))

(declare-fun d!2349629 () Bool)

(assert (=> d!2349629 e!4627776))

(declare-fun c!1439478 () Bool)

(assert (=> d!2349629 (= c!1439478 ((_ is EmptyExpr!20951) r2!6199))))

(assert (=> d!2349629 (= lt!2676598 e!4627775)))

(declare-fun c!1439477 () Bool)

(assert (=> d!2349629 (= c!1439477 (isEmpty!42283 s2!3721))))

(assert (=> d!2349629 (validRegex!11365 r2!6199)))

(assert (=> d!2349629 (= (matchR!10407 r2!6199 s2!3721) lt!2676598)))

(declare-fun b!7821945 () Bool)

(assert (=> b!7821945 (= e!4627775 (matchR!10407 (derivativeStep!6254 r2!6199 (head!15984 s2!3721)) (tail!15525 s2!3721)))))

(declare-fun b!7821946 () Bool)

(declare-fun e!4627778 () Bool)

(assert (=> b!7821946 (= e!4627774 e!4627778)))

(declare-fun res!3113463 () Bool)

(assert (=> b!7821946 (=> (not res!3113463) (not e!4627778))))

(assert (=> b!7821946 (= res!3113463 (not lt!2676598))))

(declare-fun b!7821947 () Bool)

(declare-fun res!3113469 () Bool)

(assert (=> b!7821947 (=> res!3113469 e!4627774)))

(assert (=> b!7821947 (= res!3113469 e!4627779)))

(declare-fun res!3113470 () Bool)

(assert (=> b!7821947 (=> (not res!3113470) (not e!4627779))))

(assert (=> b!7821947 (= res!3113470 lt!2676598)))

(declare-fun b!7821948 () Bool)

(assert (=> b!7821948 (= e!4627776 (= lt!2676598 call!725505))))

(declare-fun b!7821949 () Bool)

(declare-fun res!3113466 () Bool)

(assert (=> b!7821949 (=> (not res!3113466) (not e!4627779))))

(assert (=> b!7821949 (= res!3113466 (isEmpty!42283 (tail!15525 s2!3721)))))

(declare-fun b!7821950 () Bool)

(assert (=> b!7821950 (= e!4627778 e!4627777)))

(declare-fun res!3113465 () Bool)

(assert (=> b!7821950 (=> res!3113465 e!4627777)))

(assert (=> b!7821950 (= res!3113465 call!725505)))

(assert (= (and d!2349629 c!1439477) b!7821942))

(assert (= (and d!2349629 (not c!1439477)) b!7821945))

(assert (= (and d!2349629 c!1439478) b!7821948))

(assert (= (and d!2349629 (not c!1439478)) b!7821941))

(assert (= (and b!7821941 c!1439476) b!7821939))

(assert (= (and b!7821941 (not c!1439476)) b!7821937))

(assert (= (and b!7821937 (not res!3113464)) b!7821947))

(assert (= (and b!7821947 res!3113470) b!7821940))

(assert (= (and b!7821940 res!3113468) b!7821949))

(assert (= (and b!7821949 res!3113466) b!7821943))

(assert (= (and b!7821947 (not res!3113469)) b!7821946))

(assert (= (and b!7821946 res!3113463) b!7821950))

(assert (= (and b!7821950 (not res!3113465)) b!7821938))

(assert (= (and b!7821938 (not res!3113467)) b!7821944))

(assert (= (or b!7821948 b!7821940 b!7821950) bm!725500))

(declare-fun m!8245620 () Bool)

(assert (=> b!7821944 m!8245620))

(assert (=> b!7821945 m!8245620))

(assert (=> b!7821945 m!8245620))

(declare-fun m!8245622 () Bool)

(assert (=> b!7821945 m!8245622))

(declare-fun m!8245624 () Bool)

(assert (=> b!7821945 m!8245624))

(assert (=> b!7821945 m!8245622))

(assert (=> b!7821945 m!8245624))

(declare-fun m!8245626 () Bool)

(assert (=> b!7821945 m!8245626))

(declare-fun m!8245628 () Bool)

(assert (=> bm!725500 m!8245628))

(assert (=> b!7821938 m!8245624))

(assert (=> b!7821938 m!8245624))

(declare-fun m!8245630 () Bool)

(assert (=> b!7821938 m!8245630))

(assert (=> d!2349629 m!8245628))

(assert (=> d!2349629 m!8245452))

(assert (=> b!7821943 m!8245620))

(assert (=> b!7821949 m!8245624))

(assert (=> b!7821949 m!8245624))

(assert (=> b!7821949 m!8245630))

(assert (=> b!7821942 m!8245586))

(assert (=> b!7821597 d!2349629))

(declare-fun d!2349631 () Bool)

(declare-fun lt!2676601 () Int)

(assert (=> d!2349631 (>= lt!2676601 0)))

(declare-fun e!4627783 () Int)

(assert (=> d!2349631 (= lt!2676601 e!4627783)))

(declare-fun c!1439481 () Bool)

(assert (=> d!2349631 (= c!1439481 ((_ is Nil!73664) s!14274))))

(assert (=> d!2349631 (= (size!42751 s!14274) lt!2676601)))

(declare-fun b!7821955 () Bool)

(assert (=> b!7821955 (= e!4627783 0)))

(declare-fun b!7821956 () Bool)

(assert (=> b!7821956 (= e!4627783 (+ 1 (size!42751 (t!388523 s!14274))))))

(assert (= (and d!2349631 c!1439481) b!7821955))

(assert (= (and d!2349631 (not c!1439481)) b!7821956))

(declare-fun m!8245632 () Bool)

(assert (=> b!7821956 m!8245632))

(assert (=> b!7821581 d!2349631))

(declare-fun d!2349633 () Bool)

(declare-fun lt!2676602 () Int)

(assert (=> d!2349633 (>= lt!2676602 0)))

(declare-fun e!4627784 () Int)

(assert (=> d!2349633 (= lt!2676602 e!4627784)))

(declare-fun c!1439482 () Bool)

(assert (=> d!2349633 (= c!1439482 ((_ is Nil!73664) s1Rec!453))))

(assert (=> d!2349633 (= (size!42751 s1Rec!453) lt!2676602)))

(declare-fun b!7821957 () Bool)

(assert (=> b!7821957 (= e!4627784 0)))

(declare-fun b!7821958 () Bool)

(assert (=> b!7821958 (= e!4627784 (+ 1 (size!42751 (t!388523 s1Rec!453))))))

(assert (= (and d!2349633 c!1439482) b!7821957))

(assert (= (and d!2349633 (not c!1439482)) b!7821958))

(declare-fun m!8245634 () Bool)

(assert (=> b!7821958 m!8245634))

(assert (=> b!7821581 d!2349633))

(declare-fun d!2349635 () Bool)

(declare-fun lt!2676603 () Int)

(assert (=> d!2349635 (>= lt!2676603 0)))

(declare-fun e!4627785 () Int)

(assert (=> d!2349635 (= lt!2676603 e!4627785)))

(declare-fun c!1439483 () Bool)

(assert (=> d!2349635 (= c!1439483 ((_ is Nil!73664) s1!4101))))

(assert (=> d!2349635 (= (size!42751 s1!4101) lt!2676603)))

(declare-fun b!7821959 () Bool)

(assert (=> b!7821959 (= e!4627785 0)))

(declare-fun b!7821960 () Bool)

(assert (=> b!7821960 (= e!4627785 (+ 1 (size!42751 (t!388523 s1!4101))))))

(assert (= (and d!2349635 c!1439483) b!7821959))

(assert (= (and d!2349635 (not c!1439483)) b!7821960))

(declare-fun m!8245636 () Bool)

(assert (=> b!7821960 m!8245636))

(assert (=> b!7821586 d!2349635))

(declare-fun bm!725501 () Bool)

(declare-fun call!725506 () Bool)

(assert (=> bm!725501 (= call!725506 (isEmpty!42283 s1!4101))))

(declare-fun b!7821961 () Bool)

(declare-fun res!3113472 () Bool)

(declare-fun e!4627786 () Bool)

(assert (=> b!7821961 (=> res!3113472 e!4627786)))

(assert (=> b!7821961 (= res!3113472 (not ((_ is ElementMatch!20951) r1!6261)))))

(declare-fun e!4627792 () Bool)

(assert (=> b!7821961 (= e!4627792 e!4627786)))

(declare-fun b!7821962 () Bool)

(declare-fun res!3113475 () Bool)

(declare-fun e!4627789 () Bool)

(assert (=> b!7821962 (=> res!3113475 e!4627789)))

(assert (=> b!7821962 (= res!3113475 (not (isEmpty!42283 (tail!15525 s1!4101))))))

(declare-fun b!7821963 () Bool)

(declare-fun lt!2676604 () Bool)

(assert (=> b!7821963 (= e!4627792 (not lt!2676604))))

(declare-fun b!7821964 () Bool)

(declare-fun res!3113476 () Bool)

(declare-fun e!4627791 () Bool)

(assert (=> b!7821964 (=> (not res!3113476) (not e!4627791))))

(assert (=> b!7821964 (= res!3113476 (not call!725506))))

(declare-fun b!7821965 () Bool)

(declare-fun e!4627788 () Bool)

(assert (=> b!7821965 (= e!4627788 e!4627792)))

(declare-fun c!1439484 () Bool)

(assert (=> b!7821965 (= c!1439484 ((_ is EmptyLang!20951) r1!6261))))

(declare-fun b!7821966 () Bool)

(declare-fun e!4627787 () Bool)

(assert (=> b!7821966 (= e!4627787 (nullable!9295 r1!6261))))

(declare-fun b!7821967 () Bool)

(assert (=> b!7821967 (= e!4627791 (= (head!15984 s1!4101) (c!1439416 r1!6261)))))

(declare-fun b!7821968 () Bool)

(assert (=> b!7821968 (= e!4627789 (not (= (head!15984 s1!4101) (c!1439416 r1!6261))))))

(declare-fun d!2349637 () Bool)

(assert (=> d!2349637 e!4627788))

(declare-fun c!1439486 () Bool)

(assert (=> d!2349637 (= c!1439486 ((_ is EmptyExpr!20951) r1!6261))))

(assert (=> d!2349637 (= lt!2676604 e!4627787)))

(declare-fun c!1439485 () Bool)

(assert (=> d!2349637 (= c!1439485 (isEmpty!42283 s1!4101))))

(assert (=> d!2349637 (validRegex!11365 r1!6261)))

(assert (=> d!2349637 (= (matchR!10407 r1!6261 s1!4101) lt!2676604)))

(declare-fun b!7821969 () Bool)

(assert (=> b!7821969 (= e!4627787 (matchR!10407 (derivativeStep!6254 r1!6261 (head!15984 s1!4101)) (tail!15525 s1!4101)))))

(declare-fun b!7821970 () Bool)

(declare-fun e!4627790 () Bool)

(assert (=> b!7821970 (= e!4627786 e!4627790)))

(declare-fun res!3113471 () Bool)

(assert (=> b!7821970 (=> (not res!3113471) (not e!4627790))))

(assert (=> b!7821970 (= res!3113471 (not lt!2676604))))

(declare-fun b!7821971 () Bool)

(declare-fun res!3113477 () Bool)

(assert (=> b!7821971 (=> res!3113477 e!4627786)))

(assert (=> b!7821971 (= res!3113477 e!4627791)))

(declare-fun res!3113478 () Bool)

(assert (=> b!7821971 (=> (not res!3113478) (not e!4627791))))

(assert (=> b!7821971 (= res!3113478 lt!2676604)))

(declare-fun b!7821972 () Bool)

(assert (=> b!7821972 (= e!4627788 (= lt!2676604 call!725506))))

(declare-fun b!7821973 () Bool)

(declare-fun res!3113474 () Bool)

(assert (=> b!7821973 (=> (not res!3113474) (not e!4627791))))

(assert (=> b!7821973 (= res!3113474 (isEmpty!42283 (tail!15525 s1!4101)))))

(declare-fun b!7821974 () Bool)

(assert (=> b!7821974 (= e!4627790 e!4627789)))

(declare-fun res!3113473 () Bool)

(assert (=> b!7821974 (=> res!3113473 e!4627789)))

(assert (=> b!7821974 (= res!3113473 call!725506)))

(assert (= (and d!2349637 c!1439485) b!7821966))

(assert (= (and d!2349637 (not c!1439485)) b!7821969))

(assert (= (and d!2349637 c!1439486) b!7821972))

(assert (= (and d!2349637 (not c!1439486)) b!7821965))

(assert (= (and b!7821965 c!1439484) b!7821963))

(assert (= (and b!7821965 (not c!1439484)) b!7821961))

(assert (= (and b!7821961 (not res!3113472)) b!7821971))

(assert (= (and b!7821971 res!3113478) b!7821964))

(assert (= (and b!7821964 res!3113476) b!7821973))

(assert (= (and b!7821973 res!3113474) b!7821967))

(assert (= (and b!7821971 (not res!3113477)) b!7821970))

(assert (= (and b!7821970 res!3113471) b!7821974))

(assert (= (and b!7821974 (not res!3113473)) b!7821962))

(assert (= (and b!7821962 (not res!3113475)) b!7821968))

(assert (= (or b!7821972 b!7821964 b!7821974) bm!725501))

(assert (=> b!7821968 m!8245488))

(assert (=> b!7821969 m!8245488))

(assert (=> b!7821969 m!8245488))

(declare-fun m!8245638 () Bool)

(assert (=> b!7821969 m!8245638))

(assert (=> b!7821969 m!8245482))

(assert (=> b!7821969 m!8245638))

(assert (=> b!7821969 m!8245482))

(declare-fun m!8245640 () Bool)

(assert (=> b!7821969 m!8245640))

(declare-fun m!8245642 () Bool)

(assert (=> bm!725501 m!8245642))

(assert (=> b!7821962 m!8245482))

(assert (=> b!7821962 m!8245482))

(declare-fun m!8245644 () Bool)

(assert (=> b!7821962 m!8245644))

(assert (=> d!2349637 m!8245642))

(assert (=> d!2349637 m!8245442))

(assert (=> b!7821967 m!8245488))

(assert (=> b!7821973 m!8245482))

(assert (=> b!7821973 m!8245482))

(assert (=> b!7821973 m!8245644))

(assert (=> b!7821966 m!8245600))

(assert (=> b!7821592 d!2349637))

(declare-fun b!7821987 () Bool)

(declare-fun e!4627795 () Bool)

(declare-fun tp!2308650 () Bool)

(assert (=> b!7821987 (= e!4627795 tp!2308650)))

(declare-fun b!7821985 () Bool)

(assert (=> b!7821985 (= e!4627795 tp_is_empty!52257)))

(declare-fun b!7821988 () Bool)

(declare-fun tp!2308653 () Bool)

(declare-fun tp!2308649 () Bool)

(assert (=> b!7821988 (= e!4627795 (and tp!2308653 tp!2308649))))

(declare-fun b!7821986 () Bool)

(declare-fun tp!2308651 () Bool)

(declare-fun tp!2308652 () Bool)

(assert (=> b!7821986 (= e!4627795 (and tp!2308651 tp!2308652))))

(assert (=> b!7821599 (= tp!2308566 e!4627795)))

(assert (= (and b!7821599 ((_ is ElementMatch!20951) (regOne!42414 r1!6261))) b!7821985))

(assert (= (and b!7821599 ((_ is Concat!29796) (regOne!42414 r1!6261))) b!7821986))

(assert (= (and b!7821599 ((_ is Star!20951) (regOne!42414 r1!6261))) b!7821987))

(assert (= (and b!7821599 ((_ is Union!20951) (regOne!42414 r1!6261))) b!7821988))

(declare-fun b!7821991 () Bool)

(declare-fun e!4627796 () Bool)

(declare-fun tp!2308655 () Bool)

(assert (=> b!7821991 (= e!4627796 tp!2308655)))

(declare-fun b!7821989 () Bool)

(assert (=> b!7821989 (= e!4627796 tp_is_empty!52257)))

(declare-fun b!7821992 () Bool)

(declare-fun tp!2308658 () Bool)

(declare-fun tp!2308654 () Bool)

(assert (=> b!7821992 (= e!4627796 (and tp!2308658 tp!2308654))))

(declare-fun b!7821990 () Bool)

(declare-fun tp!2308656 () Bool)

(declare-fun tp!2308657 () Bool)

(assert (=> b!7821990 (= e!4627796 (and tp!2308656 tp!2308657))))

(assert (=> b!7821599 (= tp!2308561 e!4627796)))

(assert (= (and b!7821599 ((_ is ElementMatch!20951) (regTwo!42414 r1!6261))) b!7821989))

(assert (= (and b!7821599 ((_ is Concat!29796) (regTwo!42414 r1!6261))) b!7821990))

(assert (= (and b!7821599 ((_ is Star!20951) (regTwo!42414 r1!6261))) b!7821991))

(assert (= (and b!7821599 ((_ is Union!20951) (regTwo!42414 r1!6261))) b!7821992))

(declare-fun b!7821995 () Bool)

(declare-fun e!4627797 () Bool)

(declare-fun tp!2308660 () Bool)

(assert (=> b!7821995 (= e!4627797 tp!2308660)))

(declare-fun b!7821993 () Bool)

(assert (=> b!7821993 (= e!4627797 tp_is_empty!52257)))

(declare-fun b!7821996 () Bool)

(declare-fun tp!2308663 () Bool)

(declare-fun tp!2308659 () Bool)

(assert (=> b!7821996 (= e!4627797 (and tp!2308663 tp!2308659))))

(declare-fun b!7821994 () Bool)

(declare-fun tp!2308661 () Bool)

(declare-fun tp!2308662 () Bool)

(assert (=> b!7821994 (= e!4627797 (and tp!2308661 tp!2308662))))

(assert (=> b!7821590 (= tp!2308559 e!4627797)))

(assert (= (and b!7821590 ((_ is ElementMatch!20951) (regOne!42415 r2!6199))) b!7821993))

(assert (= (and b!7821590 ((_ is Concat!29796) (regOne!42415 r2!6199))) b!7821994))

(assert (= (and b!7821590 ((_ is Star!20951) (regOne!42415 r2!6199))) b!7821995))

(assert (= (and b!7821590 ((_ is Union!20951) (regOne!42415 r2!6199))) b!7821996))

(declare-fun b!7821999 () Bool)

(declare-fun e!4627798 () Bool)

(declare-fun tp!2308665 () Bool)

(assert (=> b!7821999 (= e!4627798 tp!2308665)))

(declare-fun b!7821997 () Bool)

(assert (=> b!7821997 (= e!4627798 tp_is_empty!52257)))

(declare-fun b!7822000 () Bool)

(declare-fun tp!2308668 () Bool)

(declare-fun tp!2308664 () Bool)

(assert (=> b!7822000 (= e!4627798 (and tp!2308668 tp!2308664))))

(declare-fun b!7821998 () Bool)

(declare-fun tp!2308666 () Bool)

(declare-fun tp!2308667 () Bool)

(assert (=> b!7821998 (= e!4627798 (and tp!2308666 tp!2308667))))

(assert (=> b!7821590 (= tp!2308568 e!4627798)))

(assert (= (and b!7821590 ((_ is ElementMatch!20951) (regTwo!42415 r2!6199))) b!7821997))

(assert (= (and b!7821590 ((_ is Concat!29796) (regTwo!42415 r2!6199))) b!7821998))

(assert (= (and b!7821590 ((_ is Star!20951) (regTwo!42415 r2!6199))) b!7821999))

(assert (= (and b!7821590 ((_ is Union!20951) (regTwo!42415 r2!6199))) b!7822000))

(declare-fun b!7822003 () Bool)

(declare-fun e!4627799 () Bool)

(declare-fun tp!2308670 () Bool)

(assert (=> b!7822003 (= e!4627799 tp!2308670)))

(declare-fun b!7822001 () Bool)

(assert (=> b!7822001 (= e!4627799 tp_is_empty!52257)))

(declare-fun b!7822004 () Bool)

(declare-fun tp!2308673 () Bool)

(declare-fun tp!2308669 () Bool)

(assert (=> b!7822004 (= e!4627799 (and tp!2308673 tp!2308669))))

(declare-fun b!7822002 () Bool)

(declare-fun tp!2308671 () Bool)

(declare-fun tp!2308672 () Bool)

(assert (=> b!7822002 (= e!4627799 (and tp!2308671 tp!2308672))))

(assert (=> b!7821595 (= tp!2308557 e!4627799)))

(assert (= (and b!7821595 ((_ is ElementMatch!20951) (reg!21280 r1!6261))) b!7822001))

(assert (= (and b!7821595 ((_ is Concat!29796) (reg!21280 r1!6261))) b!7822002))

(assert (= (and b!7821595 ((_ is Star!20951) (reg!21280 r1!6261))) b!7822003))

(assert (= (and b!7821595 ((_ is Union!20951) (reg!21280 r1!6261))) b!7822004))

(declare-fun b!7822009 () Bool)

(declare-fun e!4627802 () Bool)

(declare-fun tp!2308676 () Bool)

(assert (=> b!7822009 (= e!4627802 (and tp_is_empty!52257 tp!2308676))))

(assert (=> b!7821596 (= tp!2308562 e!4627802)))

(assert (= (and b!7821596 ((_ is Cons!73664) (t!388523 s1Rec!453))) b!7822009))

(declare-fun b!7822012 () Bool)

(declare-fun e!4627803 () Bool)

(declare-fun tp!2308678 () Bool)

(assert (=> b!7822012 (= e!4627803 tp!2308678)))

(declare-fun b!7822010 () Bool)

(assert (=> b!7822010 (= e!4627803 tp_is_empty!52257)))

(declare-fun b!7822013 () Bool)

(declare-fun tp!2308681 () Bool)

(declare-fun tp!2308677 () Bool)

(assert (=> b!7822013 (= e!4627803 (and tp!2308681 tp!2308677))))

(declare-fun b!7822011 () Bool)

(declare-fun tp!2308679 () Bool)

(declare-fun tp!2308680 () Bool)

(assert (=> b!7822011 (= e!4627803 (and tp!2308679 tp!2308680))))

(assert (=> b!7821580 (= tp!2308570 e!4627803)))

(assert (= (and b!7821580 ((_ is ElementMatch!20951) (reg!21280 r2!6199))) b!7822010))

(assert (= (and b!7821580 ((_ is Concat!29796) (reg!21280 r2!6199))) b!7822011))

(assert (= (and b!7821580 ((_ is Star!20951) (reg!21280 r2!6199))) b!7822012))

(assert (= (and b!7821580 ((_ is Union!20951) (reg!21280 r2!6199))) b!7822013))

(declare-fun b!7822014 () Bool)

(declare-fun e!4627804 () Bool)

(declare-fun tp!2308682 () Bool)

(assert (=> b!7822014 (= e!4627804 (and tp_is_empty!52257 tp!2308682))))

(assert (=> b!7821593 (= tp!2308560 e!4627804)))

(assert (= (and b!7821593 ((_ is Cons!73664) (t!388523 s2!3721))) b!7822014))

(declare-fun b!7822017 () Bool)

(declare-fun e!4627805 () Bool)

(declare-fun tp!2308684 () Bool)

(assert (=> b!7822017 (= e!4627805 tp!2308684)))

(declare-fun b!7822015 () Bool)

(assert (=> b!7822015 (= e!4627805 tp_is_empty!52257)))

(declare-fun b!7822018 () Bool)

(declare-fun tp!2308687 () Bool)

(declare-fun tp!2308683 () Bool)

(assert (=> b!7822018 (= e!4627805 (and tp!2308687 tp!2308683))))

(declare-fun b!7822016 () Bool)

(declare-fun tp!2308685 () Bool)

(declare-fun tp!2308686 () Bool)

(assert (=> b!7822016 (= e!4627805 (and tp!2308685 tp!2308686))))

(assert (=> b!7821577 (= tp!2308563 e!4627805)))

(assert (= (and b!7821577 ((_ is ElementMatch!20951) (regOne!42415 r1!6261))) b!7822015))

(assert (= (and b!7821577 ((_ is Concat!29796) (regOne!42415 r1!6261))) b!7822016))

(assert (= (and b!7821577 ((_ is Star!20951) (regOne!42415 r1!6261))) b!7822017))

(assert (= (and b!7821577 ((_ is Union!20951) (regOne!42415 r1!6261))) b!7822018))

(declare-fun b!7822021 () Bool)

(declare-fun e!4627806 () Bool)

(declare-fun tp!2308689 () Bool)

(assert (=> b!7822021 (= e!4627806 tp!2308689)))

(declare-fun b!7822019 () Bool)

(assert (=> b!7822019 (= e!4627806 tp_is_empty!52257)))

(declare-fun b!7822022 () Bool)

(declare-fun tp!2308692 () Bool)

(declare-fun tp!2308688 () Bool)

(assert (=> b!7822022 (= e!4627806 (and tp!2308692 tp!2308688))))

(declare-fun b!7822020 () Bool)

(declare-fun tp!2308690 () Bool)

(declare-fun tp!2308691 () Bool)

(assert (=> b!7822020 (= e!4627806 (and tp!2308690 tp!2308691))))

(assert (=> b!7821577 (= tp!2308565 e!4627806)))

(assert (= (and b!7821577 ((_ is ElementMatch!20951) (regTwo!42415 r1!6261))) b!7822019))

(assert (= (and b!7821577 ((_ is Concat!29796) (regTwo!42415 r1!6261))) b!7822020))

(assert (= (and b!7821577 ((_ is Star!20951) (regTwo!42415 r1!6261))) b!7822021))

(assert (= (and b!7821577 ((_ is Union!20951) (regTwo!42415 r1!6261))) b!7822022))

(declare-fun b!7822023 () Bool)

(declare-fun e!4627807 () Bool)

(declare-fun tp!2308693 () Bool)

(assert (=> b!7822023 (= e!4627807 (and tp_is_empty!52257 tp!2308693))))

(assert (=> b!7821598 (= tp!2308558 e!4627807)))

(assert (= (and b!7821598 ((_ is Cons!73664) (t!388523 s2Rec!453))) b!7822023))

(declare-fun b!7822026 () Bool)

(declare-fun e!4627808 () Bool)

(declare-fun tp!2308695 () Bool)

(assert (=> b!7822026 (= e!4627808 tp!2308695)))

(declare-fun b!7822024 () Bool)

(assert (=> b!7822024 (= e!4627808 tp_is_empty!52257)))

(declare-fun b!7822027 () Bool)

(declare-fun tp!2308698 () Bool)

(declare-fun tp!2308694 () Bool)

(assert (=> b!7822027 (= e!4627808 (and tp!2308698 tp!2308694))))

(declare-fun b!7822025 () Bool)

(declare-fun tp!2308696 () Bool)

(declare-fun tp!2308697 () Bool)

(assert (=> b!7822025 (= e!4627808 (and tp!2308696 tp!2308697))))

(assert (=> b!7821582 (= tp!2308571 e!4627808)))

(assert (= (and b!7821582 ((_ is ElementMatch!20951) (regOne!42414 r2!6199))) b!7822024))

(assert (= (and b!7821582 ((_ is Concat!29796) (regOne!42414 r2!6199))) b!7822025))

(assert (= (and b!7821582 ((_ is Star!20951) (regOne!42414 r2!6199))) b!7822026))

(assert (= (and b!7821582 ((_ is Union!20951) (regOne!42414 r2!6199))) b!7822027))

(declare-fun b!7822030 () Bool)

(declare-fun e!4627809 () Bool)

(declare-fun tp!2308700 () Bool)

(assert (=> b!7822030 (= e!4627809 tp!2308700)))

(declare-fun b!7822028 () Bool)

(assert (=> b!7822028 (= e!4627809 tp_is_empty!52257)))

(declare-fun b!7822031 () Bool)

(declare-fun tp!2308703 () Bool)

(declare-fun tp!2308699 () Bool)

(assert (=> b!7822031 (= e!4627809 (and tp!2308703 tp!2308699))))

(declare-fun b!7822029 () Bool)

(declare-fun tp!2308701 () Bool)

(declare-fun tp!2308702 () Bool)

(assert (=> b!7822029 (= e!4627809 (and tp!2308701 tp!2308702))))

(assert (=> b!7821582 (= tp!2308564 e!4627809)))

(assert (= (and b!7821582 ((_ is ElementMatch!20951) (regTwo!42414 r2!6199))) b!7822028))

(assert (= (and b!7821582 ((_ is Concat!29796) (regTwo!42414 r2!6199))) b!7822029))

(assert (= (and b!7821582 ((_ is Star!20951) (regTwo!42414 r2!6199))) b!7822030))

(assert (= (and b!7821582 ((_ is Union!20951) (regTwo!42414 r2!6199))) b!7822031))

(declare-fun b!7822032 () Bool)

(declare-fun e!4627810 () Bool)

(declare-fun tp!2308704 () Bool)

(assert (=> b!7822032 (= e!4627810 (and tp_is_empty!52257 tp!2308704))))

(assert (=> b!7821587 (= tp!2308567 e!4627810)))

(assert (= (and b!7821587 ((_ is Cons!73664) (t!388523 s1!4101))) b!7822032))

(declare-fun b!7822033 () Bool)

(declare-fun e!4627811 () Bool)

(declare-fun tp!2308705 () Bool)

(assert (=> b!7822033 (= e!4627811 (and tp_is_empty!52257 tp!2308705))))

(assert (=> b!7821576 (= tp!2308569 e!4627811)))

(assert (= (and b!7821576 ((_ is Cons!73664) (t!388523 s!14274))) b!7822033))

(check-sat (not bm!725498) (not b!7822004) (not b!7821793) (not b!7821667) (not b!7821945) (not b!7821830) (not bm!725495) (not b!7822017) (not b!7821958) (not d!2349591) (not b!7821988) (not b!7821825) (not b!7821990) (not b!7822033) (not b!7821792) (not b!7821986) (not b!7821943) (not b!7821824) (not b!7821969) (not d!2349617) (not d!2349601) (not b!7821665) (not b!7821929) (not bm!725499) (not b!7821791) (not b!7821973) (not b!7821942) (not b!7821996) (not b!7821663) (not b!7821960) (not d!2349599) (not bm!725501) (not b!7822029) (not b!7821638) (not b!7822032) (not b!7822020) (not b!7822002) (not b!7821944) (not b!7822021) (not b!7821956) (not b!7821994) (not b!7821920) (not b!7822031) (not b!7822023) (not d!2349637) (not b!7821826) (not b!7821992) (not d!2349629) (not b!7821968) (not b!7821987) (not b!7822014) (not b!7822011) (not b!7821991) (not b!7822022) (not b!7821637) tp_is_empty!52257 (not b!7821787) (not b!7821668) (not b!7821967) (not b!7822012) (not b!7821998) (not b!7822018) (not b!7822025) (not b!7821794) (not b!7822016) (not b!7821819) (not b!7821664) (not b!7822009) (not b!7822013) (not b!7821798) (not b!7822027) (not b!7821966) (not b!7822026) (not bm!725496) (not bm!725500) (not b!7821995) (not b!7822000) (not b!7821938) (not b!7822030) (not bm!725480) (not b!7821962) (not b!7821823) (not b!7821999) (not bm!725487) (not b!7821949) (not b!7822003))
(check-sat)
(get-model)

(declare-fun b!7822034 () Bool)

(declare-fun e!4627814 () Bool)

(declare-fun e!4627817 () Bool)

(assert (=> b!7822034 (= e!4627814 e!4627817)))

(declare-fun c!1439487 () Bool)

(assert (=> b!7822034 (= c!1439487 ((_ is Union!20951) (ite c!1439473 (reg!21280 r1!6261) (ite c!1439472 (regTwo!42415 r1!6261) (regOne!42414 r1!6261)))))))

(declare-fun b!7822035 () Bool)

(declare-fun e!4627813 () Bool)

(assert (=> b!7822035 (= e!4627814 e!4627813)))

(declare-fun res!3113481 () Bool)

(assert (=> b!7822035 (= res!3113481 (not (nullable!9295 (reg!21280 (ite c!1439473 (reg!21280 r1!6261) (ite c!1439472 (regTwo!42415 r1!6261) (regOne!42414 r1!6261)))))))))

(assert (=> b!7822035 (=> (not res!3113481) (not e!4627813))))

(declare-fun b!7822036 () Bool)

(declare-fun e!4627815 () Bool)

(assert (=> b!7822036 (= e!4627815 e!4627814)))

(declare-fun c!1439488 () Bool)

(assert (=> b!7822036 (= c!1439488 ((_ is Star!20951) (ite c!1439473 (reg!21280 r1!6261) (ite c!1439472 (regTwo!42415 r1!6261) (regOne!42414 r1!6261)))))))

(declare-fun b!7822037 () Bool)

(declare-fun res!3113480 () Bool)

(declare-fun e!4627812 () Bool)

(assert (=> b!7822037 (=> res!3113480 e!4627812)))

(assert (=> b!7822037 (= res!3113480 (not ((_ is Concat!29796) (ite c!1439473 (reg!21280 r1!6261) (ite c!1439472 (regTwo!42415 r1!6261) (regOne!42414 r1!6261))))))))

(assert (=> b!7822037 (= e!4627817 e!4627812)))

(declare-fun bm!725502 () Bool)

(declare-fun call!725508 () Bool)

(declare-fun call!725507 () Bool)

(assert (=> bm!725502 (= call!725508 call!725507)))

(declare-fun b!7822038 () Bool)

(declare-fun e!4627818 () Bool)

(declare-fun call!725509 () Bool)

(assert (=> b!7822038 (= e!4627818 call!725509)))

(declare-fun b!7822040 () Bool)

(declare-fun res!3113483 () Bool)

(declare-fun e!4627816 () Bool)

(assert (=> b!7822040 (=> (not res!3113483) (not e!4627816))))

(assert (=> b!7822040 (= res!3113483 call!725509)))

(assert (=> b!7822040 (= e!4627817 e!4627816)))

(declare-fun b!7822041 () Bool)

(assert (=> b!7822041 (= e!4627812 e!4627818)))

(declare-fun res!3113482 () Bool)

(assert (=> b!7822041 (=> (not res!3113482) (not e!4627818))))

(assert (=> b!7822041 (= res!3113482 call!725508)))

(declare-fun bm!725503 () Bool)

(assert (=> bm!725503 (= call!725509 (validRegex!11365 (ite c!1439487 (regOne!42415 (ite c!1439473 (reg!21280 r1!6261) (ite c!1439472 (regTwo!42415 r1!6261) (regOne!42414 r1!6261)))) (regTwo!42414 (ite c!1439473 (reg!21280 r1!6261) (ite c!1439472 (regTwo!42415 r1!6261) (regOne!42414 r1!6261)))))))))

(declare-fun b!7822039 () Bool)

(assert (=> b!7822039 (= e!4627816 call!725508)))

(declare-fun d!2349639 () Bool)

(declare-fun res!3113479 () Bool)

(assert (=> d!2349639 (=> res!3113479 e!4627815)))

(assert (=> d!2349639 (= res!3113479 ((_ is ElementMatch!20951) (ite c!1439473 (reg!21280 r1!6261) (ite c!1439472 (regTwo!42415 r1!6261) (regOne!42414 r1!6261)))))))

(assert (=> d!2349639 (= (validRegex!11365 (ite c!1439473 (reg!21280 r1!6261) (ite c!1439472 (regTwo!42415 r1!6261) (regOne!42414 r1!6261)))) e!4627815)))

(declare-fun bm!725504 () Bool)

(assert (=> bm!725504 (= call!725507 (validRegex!11365 (ite c!1439488 (reg!21280 (ite c!1439473 (reg!21280 r1!6261) (ite c!1439472 (regTwo!42415 r1!6261) (regOne!42414 r1!6261)))) (ite c!1439487 (regTwo!42415 (ite c!1439473 (reg!21280 r1!6261) (ite c!1439472 (regTwo!42415 r1!6261) (regOne!42414 r1!6261)))) (regOne!42414 (ite c!1439473 (reg!21280 r1!6261) (ite c!1439472 (regTwo!42415 r1!6261) (regOne!42414 r1!6261))))))))))

(declare-fun b!7822042 () Bool)

(assert (=> b!7822042 (= e!4627813 call!725507)))

(assert (= (and d!2349639 (not res!3113479)) b!7822036))

(assert (= (and b!7822036 c!1439488) b!7822035))

(assert (= (and b!7822036 (not c!1439488)) b!7822034))

(assert (= (and b!7822035 res!3113481) b!7822042))

(assert (= (and b!7822034 c!1439487) b!7822040))

(assert (= (and b!7822034 (not c!1439487)) b!7822037))

(assert (= (and b!7822040 res!3113483) b!7822039))

(assert (= (and b!7822037 (not res!3113480)) b!7822041))

(assert (= (and b!7822041 res!3113482) b!7822038))

(assert (= (or b!7822039 b!7822041) bm!725502))

(assert (= (or b!7822040 b!7822038) bm!725503))

(assert (= (or b!7822042 bm!725502) bm!725504))

(declare-fun m!8245646 () Bool)

(assert (=> b!7822035 m!8245646))

(declare-fun m!8245648 () Bool)

(assert (=> bm!725503 m!8245648))

(declare-fun m!8245650 () Bool)

(assert (=> bm!725504 m!8245650))

(assert (=> bm!725496 d!2349639))

(declare-fun d!2349641 () Bool)

(assert (=> d!2349641 (= (head!15984 s2Rec!453) (h!80112 s2Rec!453))))

(assert (=> b!7821793 d!2349641))

(declare-fun d!2349643 () Bool)

(assert (=> d!2349643 (= (head!15984 s1Rec!453) (h!80112 s1Rec!453))))

(assert (=> b!7821824 d!2349643))

(declare-fun d!2349645 () Bool)

(declare-fun nullableFct!3663 (Regex!20951) Bool)

(assert (=> d!2349645 (= (nullable!9295 r2!6199) (nullableFct!3663 r2!6199))))

(declare-fun bs!1966742 () Bool)

(assert (= bs!1966742 d!2349645))

(declare-fun m!8245652 () Bool)

(assert (=> bs!1966742 m!8245652))

(assert (=> b!7821791 d!2349645))

(declare-fun bm!725505 () Bool)

(declare-fun call!725510 () Bool)

(assert (=> bm!725505 (= call!725510 (isEmpty!42283 (tail!15525 s1Rec!453)))))

(declare-fun b!7822043 () Bool)

(declare-fun res!3113485 () Bool)

(declare-fun e!4627819 () Bool)

(assert (=> b!7822043 (=> res!3113485 e!4627819)))

(assert (=> b!7822043 (= res!3113485 (not ((_ is ElementMatch!20951) (derivativeStep!6254 r1!6261 (head!15984 s1Rec!453)))))))

(declare-fun e!4627825 () Bool)

(assert (=> b!7822043 (= e!4627825 e!4627819)))

(declare-fun b!7822044 () Bool)

(declare-fun res!3113488 () Bool)

(declare-fun e!4627822 () Bool)

(assert (=> b!7822044 (=> res!3113488 e!4627822)))

(assert (=> b!7822044 (= res!3113488 (not (isEmpty!42283 (tail!15525 (tail!15525 s1Rec!453)))))))

(declare-fun b!7822045 () Bool)

(declare-fun lt!2676605 () Bool)

(assert (=> b!7822045 (= e!4627825 (not lt!2676605))))

(declare-fun b!7822046 () Bool)

(declare-fun res!3113489 () Bool)

(declare-fun e!4627824 () Bool)

(assert (=> b!7822046 (=> (not res!3113489) (not e!4627824))))

(assert (=> b!7822046 (= res!3113489 (not call!725510))))

(declare-fun b!7822047 () Bool)

(declare-fun e!4627821 () Bool)

(assert (=> b!7822047 (= e!4627821 e!4627825)))

(declare-fun c!1439489 () Bool)

(assert (=> b!7822047 (= c!1439489 ((_ is EmptyLang!20951) (derivativeStep!6254 r1!6261 (head!15984 s1Rec!453))))))

(declare-fun b!7822048 () Bool)

(declare-fun e!4627820 () Bool)

(assert (=> b!7822048 (= e!4627820 (nullable!9295 (derivativeStep!6254 r1!6261 (head!15984 s1Rec!453))))))

(declare-fun b!7822049 () Bool)

(assert (=> b!7822049 (= e!4627824 (= (head!15984 (tail!15525 s1Rec!453)) (c!1439416 (derivativeStep!6254 r1!6261 (head!15984 s1Rec!453)))))))

(declare-fun b!7822050 () Bool)

(assert (=> b!7822050 (= e!4627822 (not (= (head!15984 (tail!15525 s1Rec!453)) (c!1439416 (derivativeStep!6254 r1!6261 (head!15984 s1Rec!453))))))))

(declare-fun d!2349647 () Bool)

(assert (=> d!2349647 e!4627821))

(declare-fun c!1439491 () Bool)

(assert (=> d!2349647 (= c!1439491 ((_ is EmptyExpr!20951) (derivativeStep!6254 r1!6261 (head!15984 s1Rec!453))))))

(assert (=> d!2349647 (= lt!2676605 e!4627820)))

(declare-fun c!1439490 () Bool)

(assert (=> d!2349647 (= c!1439490 (isEmpty!42283 (tail!15525 s1Rec!453)))))

(assert (=> d!2349647 (validRegex!11365 (derivativeStep!6254 r1!6261 (head!15984 s1Rec!453)))))

(assert (=> d!2349647 (= (matchR!10407 (derivativeStep!6254 r1!6261 (head!15984 s1Rec!453)) (tail!15525 s1Rec!453)) lt!2676605)))

(declare-fun b!7822051 () Bool)

(assert (=> b!7822051 (= e!4627820 (matchR!10407 (derivativeStep!6254 (derivativeStep!6254 r1!6261 (head!15984 s1Rec!453)) (head!15984 (tail!15525 s1Rec!453))) (tail!15525 (tail!15525 s1Rec!453))))))

(declare-fun b!7822052 () Bool)

(declare-fun e!4627823 () Bool)

(assert (=> b!7822052 (= e!4627819 e!4627823)))

(declare-fun res!3113484 () Bool)

(assert (=> b!7822052 (=> (not res!3113484) (not e!4627823))))

(assert (=> b!7822052 (= res!3113484 (not lt!2676605))))

(declare-fun b!7822053 () Bool)

(declare-fun res!3113490 () Bool)

(assert (=> b!7822053 (=> res!3113490 e!4627819)))

(assert (=> b!7822053 (= res!3113490 e!4627824)))

(declare-fun res!3113491 () Bool)

(assert (=> b!7822053 (=> (not res!3113491) (not e!4627824))))

(assert (=> b!7822053 (= res!3113491 lt!2676605)))

(declare-fun b!7822054 () Bool)

(assert (=> b!7822054 (= e!4627821 (= lt!2676605 call!725510))))

(declare-fun b!7822055 () Bool)

(declare-fun res!3113487 () Bool)

(assert (=> b!7822055 (=> (not res!3113487) (not e!4627824))))

(assert (=> b!7822055 (= res!3113487 (isEmpty!42283 (tail!15525 (tail!15525 s1Rec!453))))))

(declare-fun b!7822056 () Bool)

(assert (=> b!7822056 (= e!4627823 e!4627822)))

(declare-fun res!3113486 () Bool)

(assert (=> b!7822056 (=> res!3113486 e!4627822)))

(assert (=> b!7822056 (= res!3113486 call!725510)))

(assert (= (and d!2349647 c!1439490) b!7822048))

(assert (= (and d!2349647 (not c!1439490)) b!7822051))

(assert (= (and d!2349647 c!1439491) b!7822054))

(assert (= (and d!2349647 (not c!1439491)) b!7822047))

(assert (= (and b!7822047 c!1439489) b!7822045))

(assert (= (and b!7822047 (not c!1439489)) b!7822043))

(assert (= (and b!7822043 (not res!3113485)) b!7822053))

(assert (= (and b!7822053 res!3113491) b!7822046))

(assert (= (and b!7822046 res!3113489) b!7822055))

(assert (= (and b!7822055 res!3113487) b!7822049))

(assert (= (and b!7822053 (not res!3113490)) b!7822052))

(assert (= (and b!7822052 res!3113484) b!7822056))

(assert (= (and b!7822056 (not res!3113486)) b!7822044))

(assert (= (and b!7822044 (not res!3113488)) b!7822050))

(assert (= (or b!7822054 b!7822046 b!7822056) bm!725505))

(assert (=> b!7822050 m!8245480))

(declare-fun m!8245654 () Bool)

(assert (=> b!7822050 m!8245654))

(assert (=> b!7822051 m!8245480))

(assert (=> b!7822051 m!8245654))

(assert (=> b!7822051 m!8245592))

(assert (=> b!7822051 m!8245654))

(declare-fun m!8245656 () Bool)

(assert (=> b!7822051 m!8245656))

(assert (=> b!7822051 m!8245480))

(declare-fun m!8245658 () Bool)

(assert (=> b!7822051 m!8245658))

(assert (=> b!7822051 m!8245656))

(assert (=> b!7822051 m!8245658))

(declare-fun m!8245660 () Bool)

(assert (=> b!7822051 m!8245660))

(assert (=> bm!725505 m!8245480))

(assert (=> bm!725505 m!8245598))

(assert (=> b!7822044 m!8245480))

(assert (=> b!7822044 m!8245658))

(assert (=> b!7822044 m!8245658))

(declare-fun m!8245662 () Bool)

(assert (=> b!7822044 m!8245662))

(assert (=> d!2349647 m!8245480))

(assert (=> d!2349647 m!8245598))

(assert (=> d!2349647 m!8245592))

(declare-fun m!8245664 () Bool)

(assert (=> d!2349647 m!8245664))

(assert (=> b!7822049 m!8245480))

(assert (=> b!7822049 m!8245654))

(assert (=> b!7822055 m!8245480))

(assert (=> b!7822055 m!8245658))

(assert (=> b!7822055 m!8245658))

(assert (=> b!7822055 m!8245662))

(assert (=> b!7822048 m!8245592))

(declare-fun m!8245666 () Bool)

(assert (=> b!7822048 m!8245666))

(assert (=> b!7821826 d!2349647))

(declare-fun b!7822077 () Bool)

(declare-fun e!4627838 () Regex!20951)

(declare-fun call!725521 () Regex!20951)

(declare-fun call!725522 () Regex!20951)

(assert (=> b!7822077 (= e!4627838 (Union!20951 call!725521 call!725522))))

(declare-fun bm!725514 () Bool)

(declare-fun c!1439502 () Bool)

(declare-fun c!1439505 () Bool)

(assert (=> bm!725514 (= call!725521 (derivativeStep!6254 (ite c!1439502 (regOne!42415 r1!6261) (ite c!1439505 (reg!21280 r1!6261) (regOne!42414 r1!6261))) (head!15984 s1Rec!453)))))

(declare-fun bm!725515 () Bool)

(declare-fun call!725519 () Regex!20951)

(assert (=> bm!725515 (= call!725519 call!725521)))

(declare-fun b!7822078 () Bool)

(declare-fun e!4627836 () Regex!20951)

(declare-fun e!4627839 () Regex!20951)

(assert (=> b!7822078 (= e!4627836 e!4627839)))

(declare-fun c!1439504 () Bool)

(assert (=> b!7822078 (= c!1439504 ((_ is ElementMatch!20951) r1!6261))))

(declare-fun b!7822079 () Bool)

(declare-fun e!4627840 () Regex!20951)

(assert (=> b!7822079 (= e!4627838 e!4627840)))

(assert (=> b!7822079 (= c!1439505 ((_ is Star!20951) r1!6261))))

(declare-fun bm!725516 () Bool)

(assert (=> bm!725516 (= call!725522 (derivativeStep!6254 (ite c!1439502 (regTwo!42415 r1!6261) (regTwo!42414 r1!6261)) (head!15984 s1Rec!453)))))

(declare-fun b!7822080 () Bool)

(assert (=> b!7822080 (= e!4627839 (ite (= (head!15984 s1Rec!453) (c!1439416 r1!6261)) EmptyExpr!20951 EmptyLang!20951))))

(declare-fun b!7822081 () Bool)

(assert (=> b!7822081 (= e!4627840 (Concat!29796 call!725519 r1!6261))))

(declare-fun b!7822082 () Bool)

(declare-fun e!4627837 () Regex!20951)

(declare-fun call!725520 () Regex!20951)

(assert (=> b!7822082 (= e!4627837 (Union!20951 (Concat!29796 call!725520 (regTwo!42414 r1!6261)) call!725522))))

(declare-fun b!7822083 () Bool)

(assert (=> b!7822083 (= e!4627837 (Union!20951 (Concat!29796 call!725520 (regTwo!42414 r1!6261)) EmptyLang!20951))))

(declare-fun d!2349649 () Bool)

(declare-fun lt!2676608 () Regex!20951)

(assert (=> d!2349649 (validRegex!11365 lt!2676608)))

(assert (=> d!2349649 (= lt!2676608 e!4627836)))

(declare-fun c!1439506 () Bool)

(assert (=> d!2349649 (= c!1439506 (or ((_ is EmptyExpr!20951) r1!6261) ((_ is EmptyLang!20951) r1!6261)))))

(assert (=> d!2349649 (validRegex!11365 r1!6261)))

(assert (=> d!2349649 (= (derivativeStep!6254 r1!6261 (head!15984 s1Rec!453)) lt!2676608)))

(declare-fun bm!725517 () Bool)

(assert (=> bm!725517 (= call!725520 call!725519)))

(declare-fun b!7822084 () Bool)

(assert (=> b!7822084 (= c!1439502 ((_ is Union!20951) r1!6261))))

(assert (=> b!7822084 (= e!4627839 e!4627838)))

(declare-fun b!7822085 () Bool)

(assert (=> b!7822085 (= e!4627836 EmptyLang!20951)))

(declare-fun b!7822086 () Bool)

(declare-fun c!1439503 () Bool)

(assert (=> b!7822086 (= c!1439503 (nullable!9295 (regOne!42414 r1!6261)))))

(assert (=> b!7822086 (= e!4627840 e!4627837)))

(assert (= (and d!2349649 c!1439506) b!7822085))

(assert (= (and d!2349649 (not c!1439506)) b!7822078))

(assert (= (and b!7822078 c!1439504) b!7822080))

(assert (= (and b!7822078 (not c!1439504)) b!7822084))

(assert (= (and b!7822084 c!1439502) b!7822077))

(assert (= (and b!7822084 (not c!1439502)) b!7822079))

(assert (= (and b!7822079 c!1439505) b!7822081))

(assert (= (and b!7822079 (not c!1439505)) b!7822086))

(assert (= (and b!7822086 c!1439503) b!7822082))

(assert (= (and b!7822086 (not c!1439503)) b!7822083))

(assert (= (or b!7822082 b!7822083) bm!725517))

(assert (= (or b!7822081 bm!725517) bm!725515))

(assert (= (or b!7822077 bm!725515) bm!725514))

(assert (= (or b!7822077 b!7822082) bm!725516))

(assert (=> bm!725514 m!8245486))

(declare-fun m!8245668 () Bool)

(assert (=> bm!725514 m!8245668))

(assert (=> bm!725516 m!8245486))

(declare-fun m!8245670 () Bool)

(assert (=> bm!725516 m!8245670))

(declare-fun m!8245672 () Bool)

(assert (=> d!2349649 m!8245672))

(assert (=> d!2349649 m!8245442))

(declare-fun m!8245674 () Bool)

(assert (=> b!7822086 m!8245674))

(assert (=> b!7821826 d!2349649))

(assert (=> b!7821826 d!2349643))

(declare-fun d!2349651 () Bool)

(assert (=> d!2349651 (= (tail!15525 s1Rec!453) (t!388523 s1Rec!453))))

(assert (=> b!7821826 d!2349651))

(declare-fun d!2349653 () Bool)

(assert (=> d!2349653 (= (isEmpty!42283 (tail!15525 s1Rec!453)) ((_ is Nil!73664) (tail!15525 s1Rec!453)))))

(assert (=> b!7821830 d!2349653))

(assert (=> b!7821830 d!2349651))

(declare-fun d!2349655 () Bool)

(declare-fun lt!2676609 () Int)

(assert (=> d!2349655 (>= lt!2676609 0)))

(declare-fun e!4627841 () Int)

(assert (=> d!2349655 (= lt!2676609 e!4627841)))

(declare-fun c!1439507 () Bool)

(assert (=> d!2349655 (= c!1439507 ((_ is Nil!73664) lt!2676573))))

(assert (=> d!2349655 (= (size!42751 lt!2676573) lt!2676609)))

(declare-fun b!7822087 () Bool)

(assert (=> b!7822087 (= e!4627841 0)))

(declare-fun b!7822088 () Bool)

(assert (=> b!7822088 (= e!4627841 (+ 1 (size!42751 (t!388523 lt!2676573))))))

(assert (= (and d!2349655 c!1439507) b!7822087))

(assert (= (and d!2349655 (not c!1439507)) b!7822088))

(declare-fun m!8245676 () Bool)

(assert (=> b!7822088 m!8245676))

(assert (=> b!7821638 d!2349655))

(assert (=> b!7821638 d!2349635))

(declare-fun d!2349657 () Bool)

(declare-fun lt!2676610 () Int)

(assert (=> d!2349657 (>= lt!2676610 0)))

(declare-fun e!4627842 () Int)

(assert (=> d!2349657 (= lt!2676610 e!4627842)))

(declare-fun c!1439508 () Bool)

(assert (=> d!2349657 (= c!1439508 ((_ is Nil!73664) s2!3721))))

(assert (=> d!2349657 (= (size!42751 s2!3721) lt!2676610)))

(declare-fun b!7822089 () Bool)

(assert (=> b!7822089 (= e!4627842 0)))

(declare-fun b!7822090 () Bool)

(assert (=> b!7822090 (= e!4627842 (+ 1 (size!42751 (t!388523 s2!3721))))))

(assert (= (and d!2349657 c!1439508) b!7822089))

(assert (= (and d!2349657 (not c!1439508)) b!7822090))

(declare-fun m!8245678 () Bool)

(assert (=> b!7822090 m!8245678))

(assert (=> b!7821638 d!2349657))

(declare-fun d!2349659 () Bool)

(declare-fun e!4627844 () Bool)

(assert (=> d!2349659 e!4627844))

(declare-fun res!3113494 () Bool)

(assert (=> d!2349659 (=> res!3113494 e!4627844)))

(declare-fun lt!2676611 () Bool)

(assert (=> d!2349659 (= res!3113494 (not lt!2676611))))

(declare-fun e!4627843 () Bool)

(assert (=> d!2349659 (= lt!2676611 e!4627843)))

(declare-fun res!3113492 () Bool)

(assert (=> d!2349659 (=> res!3113492 e!4627843)))

(assert (=> d!2349659 (= res!3113492 ((_ is Nil!73664) (tail!15525 s1Rec!453)))))

(assert (=> d!2349659 (= (isPrefix!6301 (tail!15525 s1Rec!453) (tail!15525 s1!4101)) lt!2676611)))

(declare-fun b!7822091 () Bool)

(declare-fun e!4627845 () Bool)

(assert (=> b!7822091 (= e!4627843 e!4627845)))

(declare-fun res!3113493 () Bool)

(assert (=> b!7822091 (=> (not res!3113493) (not e!4627845))))

(assert (=> b!7822091 (= res!3113493 (not ((_ is Nil!73664) (tail!15525 s1!4101))))))

(declare-fun b!7822093 () Bool)

(assert (=> b!7822093 (= e!4627845 (isPrefix!6301 (tail!15525 (tail!15525 s1Rec!453)) (tail!15525 (tail!15525 s1!4101))))))

(declare-fun b!7822094 () Bool)

(assert (=> b!7822094 (= e!4627844 (>= (size!42751 (tail!15525 s1!4101)) (size!42751 (tail!15525 s1Rec!453))))))

(declare-fun b!7822092 () Bool)

(declare-fun res!3113495 () Bool)

(assert (=> b!7822092 (=> (not res!3113495) (not e!4627845))))

(assert (=> b!7822092 (= res!3113495 (= (head!15984 (tail!15525 s1Rec!453)) (head!15984 (tail!15525 s1!4101))))))

(assert (= (and d!2349659 (not res!3113492)) b!7822091))

(assert (= (and b!7822091 res!3113493) b!7822092))

(assert (= (and b!7822092 res!3113495) b!7822093))

(assert (= (and d!2349659 (not res!3113494)) b!7822094))

(assert (=> b!7822093 m!8245480))

(assert (=> b!7822093 m!8245658))

(assert (=> b!7822093 m!8245482))

(declare-fun m!8245680 () Bool)

(assert (=> b!7822093 m!8245680))

(assert (=> b!7822093 m!8245658))

(assert (=> b!7822093 m!8245680))

(declare-fun m!8245682 () Bool)

(assert (=> b!7822093 m!8245682))

(assert (=> b!7822094 m!8245482))

(declare-fun m!8245684 () Bool)

(assert (=> b!7822094 m!8245684))

(assert (=> b!7822094 m!8245480))

(declare-fun m!8245686 () Bool)

(assert (=> b!7822094 m!8245686))

(assert (=> b!7822092 m!8245480))

(assert (=> b!7822092 m!8245654))

(assert (=> b!7822092 m!8245482))

(declare-fun m!8245688 () Bool)

(assert (=> b!7822092 m!8245688))

(assert (=> b!7821664 d!2349659))

(assert (=> b!7821664 d!2349651))

(declare-fun d!2349661 () Bool)

(assert (=> d!2349661 (= (tail!15525 s1!4101) (t!388523 s1!4101))))

(assert (=> b!7821664 d!2349661))

(declare-fun b!7822096 () Bool)

(declare-fun e!4627847 () List!73788)

(assert (=> b!7822096 (= e!4627847 (Cons!73664 (h!80112 (t!388523 s1Rec!453)) (++!17985 (t!388523 (t!388523 s1Rec!453)) s2Rec!453)))))

(declare-fun lt!2676612 () List!73788)

(declare-fun e!4627846 () Bool)

(declare-fun b!7822098 () Bool)

(assert (=> b!7822098 (= e!4627846 (or (not (= s2Rec!453 Nil!73664)) (= lt!2676612 (t!388523 s1Rec!453))))))

(declare-fun d!2349663 () Bool)

(assert (=> d!2349663 e!4627846))

(declare-fun res!3113497 () Bool)

(assert (=> d!2349663 (=> (not res!3113497) (not e!4627846))))

(assert (=> d!2349663 (= res!3113497 (= (content!15636 lt!2676612) ((_ map or) (content!15636 (t!388523 s1Rec!453)) (content!15636 s2Rec!453))))))

(assert (=> d!2349663 (= lt!2676612 e!4627847)))

(declare-fun c!1439509 () Bool)

(assert (=> d!2349663 (= c!1439509 ((_ is Nil!73664) (t!388523 s1Rec!453)))))

(assert (=> d!2349663 (= (++!17985 (t!388523 s1Rec!453) s2Rec!453) lt!2676612)))

(declare-fun b!7822097 () Bool)

(declare-fun res!3113496 () Bool)

(assert (=> b!7822097 (=> (not res!3113496) (not e!4627846))))

(assert (=> b!7822097 (= res!3113496 (= (size!42751 lt!2676612) (+ (size!42751 (t!388523 s1Rec!453)) (size!42751 s2Rec!453))))))

(declare-fun b!7822095 () Bool)

(assert (=> b!7822095 (= e!4627847 s2Rec!453)))

(assert (= (and d!2349663 c!1439509) b!7822095))

(assert (= (and d!2349663 (not c!1439509)) b!7822096))

(assert (= (and d!2349663 res!3113497) b!7822097))

(assert (= (and b!7822097 res!3113496) b!7822098))

(declare-fun m!8245690 () Bool)

(assert (=> b!7822096 m!8245690))

(declare-fun m!8245692 () Bool)

(assert (=> d!2349663 m!8245692))

(declare-fun m!8245694 () Bool)

(assert (=> d!2349663 m!8245694))

(assert (=> d!2349663 m!8245496))

(declare-fun m!8245696 () Bool)

(assert (=> b!7822097 m!8245696))

(assert (=> b!7822097 m!8245634))

(assert (=> b!7822097 m!8245500))

(assert (=> b!7821667 d!2349663))

(declare-fun d!2349665 () Bool)

(declare-fun c!1439512 () Bool)

(assert (=> d!2349665 (= c!1439512 ((_ is Nil!73664) lt!2676573))))

(declare-fun e!4627850 () (InoxSet C!42228))

(assert (=> d!2349665 (= (content!15636 lt!2676573) e!4627850)))

(declare-fun b!7822103 () Bool)

(assert (=> b!7822103 (= e!4627850 ((as const (Array C!42228 Bool)) false))))

(declare-fun b!7822104 () Bool)

(assert (=> b!7822104 (= e!4627850 ((_ map or) (store ((as const (Array C!42228 Bool)) false) (h!80112 lt!2676573) true) (content!15636 (t!388523 lt!2676573))))))

(assert (= (and d!2349665 c!1439512) b!7822103))

(assert (= (and d!2349665 (not c!1439512)) b!7822104))

(declare-fun m!8245698 () Bool)

(assert (=> b!7822104 m!8245698))

(declare-fun m!8245700 () Bool)

(assert (=> b!7822104 m!8245700))

(assert (=> d!2349591 d!2349665))

(declare-fun d!2349667 () Bool)

(declare-fun c!1439513 () Bool)

(assert (=> d!2349667 (= c!1439513 ((_ is Nil!73664) s1!4101))))

(declare-fun e!4627851 () (InoxSet C!42228))

(assert (=> d!2349667 (= (content!15636 s1!4101) e!4627851)))

(declare-fun b!7822105 () Bool)

(assert (=> b!7822105 (= e!4627851 ((as const (Array C!42228 Bool)) false))))

(declare-fun b!7822106 () Bool)

(assert (=> b!7822106 (= e!4627851 ((_ map or) (store ((as const (Array C!42228 Bool)) false) (h!80112 s1!4101) true) (content!15636 (t!388523 s1!4101))))))

(assert (= (and d!2349667 c!1439513) b!7822105))

(assert (= (and d!2349667 (not c!1439513)) b!7822106))

(declare-fun m!8245702 () Bool)

(assert (=> b!7822106 m!8245702))

(declare-fun m!8245704 () Bool)

(assert (=> b!7822106 m!8245704))

(assert (=> d!2349591 d!2349667))

(declare-fun d!2349669 () Bool)

(declare-fun c!1439514 () Bool)

(assert (=> d!2349669 (= c!1439514 ((_ is Nil!73664) s2!3721))))

(declare-fun e!4627852 () (InoxSet C!42228))

(assert (=> d!2349669 (= (content!15636 s2!3721) e!4627852)))

(declare-fun b!7822107 () Bool)

(assert (=> b!7822107 (= e!4627852 ((as const (Array C!42228 Bool)) false))))

(declare-fun b!7822108 () Bool)

(assert (=> b!7822108 (= e!4627852 ((_ map or) (store ((as const (Array C!42228 Bool)) false) (h!80112 s2!3721) true) (content!15636 (t!388523 s2!3721))))))

(assert (= (and d!2349669 c!1439514) b!7822107))

(assert (= (and d!2349669 (not c!1439514)) b!7822108))

(declare-fun m!8245706 () Bool)

(assert (=> b!7822108 m!8245706))

(declare-fun m!8245708 () Bool)

(assert (=> b!7822108 m!8245708))

(assert (=> d!2349591 d!2349669))

(declare-fun d!2349671 () Bool)

(assert (=> d!2349671 (= (isEmpty!42283 s1Rec!453) ((_ is Nil!73664) s1Rec!453))))

(assert (=> bm!725487 d!2349671))

(declare-fun d!2349673 () Bool)

(assert (=> d!2349673 (= (head!15984 s2!3721) (h!80112 s2!3721))))

(assert (=> b!7821943 d!2349673))

(declare-fun d!2349675 () Bool)

(assert (=> d!2349675 (= (nullable!9295 (reg!21280 r2!6199)) (nullableFct!3663 (reg!21280 r2!6199)))))

(declare-fun bs!1966743 () Bool)

(assert (= bs!1966743 d!2349675))

(declare-fun m!8245710 () Bool)

(assert (=> bs!1966743 m!8245710))

(assert (=> b!7821929 d!2349675))

(assert (=> d!2349617 d!2349671))

(assert (=> d!2349617 d!2349621))

(declare-fun d!2349677 () Bool)

(declare-fun lt!2676613 () Int)

(assert (=> d!2349677 (>= lt!2676613 0)))

(declare-fun e!4627853 () Int)

(assert (=> d!2349677 (= lt!2676613 e!4627853)))

(declare-fun c!1439515 () Bool)

(assert (=> d!2349677 (= c!1439515 ((_ is Nil!73664) (t!388523 s!14274)))))

(assert (=> d!2349677 (= (size!42751 (t!388523 s!14274)) lt!2676613)))

(declare-fun b!7822109 () Bool)

(assert (=> b!7822109 (= e!4627853 0)))

(declare-fun b!7822110 () Bool)

(assert (=> b!7822110 (= e!4627853 (+ 1 (size!42751 (t!388523 (t!388523 s!14274)))))))

(assert (= (and d!2349677 c!1439515) b!7822109))

(assert (= (and d!2349677 (not c!1439515)) b!7822110))

(declare-fun m!8245712 () Bool)

(assert (=> b!7822110 m!8245712))

(assert (=> b!7821956 d!2349677))

(declare-fun b!7822111 () Bool)

(declare-fun e!4627856 () Bool)

(declare-fun e!4627859 () Bool)

(assert (=> b!7822111 (= e!4627856 e!4627859)))

(declare-fun c!1439516 () Bool)

(assert (=> b!7822111 (= c!1439516 ((_ is Union!20951) (ite c!1439474 (regOne!42415 r2!6199) (regTwo!42414 r2!6199))))))

(declare-fun b!7822112 () Bool)

(declare-fun e!4627855 () Bool)

(assert (=> b!7822112 (= e!4627856 e!4627855)))

(declare-fun res!3113500 () Bool)

(assert (=> b!7822112 (= res!3113500 (not (nullable!9295 (reg!21280 (ite c!1439474 (regOne!42415 r2!6199) (regTwo!42414 r2!6199))))))))

(assert (=> b!7822112 (=> (not res!3113500) (not e!4627855))))

(declare-fun b!7822113 () Bool)

(declare-fun e!4627857 () Bool)

(assert (=> b!7822113 (= e!4627857 e!4627856)))

(declare-fun c!1439517 () Bool)

(assert (=> b!7822113 (= c!1439517 ((_ is Star!20951) (ite c!1439474 (regOne!42415 r2!6199) (regTwo!42414 r2!6199))))))

(declare-fun b!7822114 () Bool)

(declare-fun res!3113499 () Bool)

(declare-fun e!4627854 () Bool)

(assert (=> b!7822114 (=> res!3113499 e!4627854)))

(assert (=> b!7822114 (= res!3113499 (not ((_ is Concat!29796) (ite c!1439474 (regOne!42415 r2!6199) (regTwo!42414 r2!6199)))))))

(assert (=> b!7822114 (= e!4627859 e!4627854)))

(declare-fun bm!725518 () Bool)

(declare-fun call!725524 () Bool)

(declare-fun call!725523 () Bool)

(assert (=> bm!725518 (= call!725524 call!725523)))

(declare-fun b!7822115 () Bool)

(declare-fun e!4627860 () Bool)

(declare-fun call!725525 () Bool)

(assert (=> b!7822115 (= e!4627860 call!725525)))

(declare-fun b!7822117 () Bool)

(declare-fun res!3113502 () Bool)

(declare-fun e!4627858 () Bool)

(assert (=> b!7822117 (=> (not res!3113502) (not e!4627858))))

(assert (=> b!7822117 (= res!3113502 call!725525)))

(assert (=> b!7822117 (= e!4627859 e!4627858)))

(declare-fun b!7822118 () Bool)

(assert (=> b!7822118 (= e!4627854 e!4627860)))

(declare-fun res!3113501 () Bool)

(assert (=> b!7822118 (=> (not res!3113501) (not e!4627860))))

(assert (=> b!7822118 (= res!3113501 call!725524)))

(declare-fun bm!725519 () Bool)

(assert (=> bm!725519 (= call!725525 (validRegex!11365 (ite c!1439516 (regOne!42415 (ite c!1439474 (regOne!42415 r2!6199) (regTwo!42414 r2!6199))) (regTwo!42414 (ite c!1439474 (regOne!42415 r2!6199) (regTwo!42414 r2!6199))))))))

(declare-fun b!7822116 () Bool)

(assert (=> b!7822116 (= e!4627858 call!725524)))

(declare-fun d!2349679 () Bool)

(declare-fun res!3113498 () Bool)

(assert (=> d!2349679 (=> res!3113498 e!4627857)))

(assert (=> d!2349679 (= res!3113498 ((_ is ElementMatch!20951) (ite c!1439474 (regOne!42415 r2!6199) (regTwo!42414 r2!6199))))))

(assert (=> d!2349679 (= (validRegex!11365 (ite c!1439474 (regOne!42415 r2!6199) (regTwo!42414 r2!6199))) e!4627857)))

(declare-fun bm!725520 () Bool)

(assert (=> bm!725520 (= call!725523 (validRegex!11365 (ite c!1439517 (reg!21280 (ite c!1439474 (regOne!42415 r2!6199) (regTwo!42414 r2!6199))) (ite c!1439516 (regTwo!42415 (ite c!1439474 (regOne!42415 r2!6199) (regTwo!42414 r2!6199))) (regOne!42414 (ite c!1439474 (regOne!42415 r2!6199) (regTwo!42414 r2!6199)))))))))

(declare-fun b!7822119 () Bool)

(assert (=> b!7822119 (= e!4627855 call!725523)))

(assert (= (and d!2349679 (not res!3113498)) b!7822113))

(assert (= (and b!7822113 c!1439517) b!7822112))

(assert (= (and b!7822113 (not c!1439517)) b!7822111))

(assert (= (and b!7822112 res!3113500) b!7822119))

(assert (= (and b!7822111 c!1439516) b!7822117))

(assert (= (and b!7822111 (not c!1439516)) b!7822114))

(assert (= (and b!7822117 res!3113502) b!7822116))

(assert (= (and b!7822114 (not res!3113499)) b!7822118))

(assert (= (and b!7822118 res!3113501) b!7822115))

(assert (= (or b!7822116 b!7822118) bm!725518))

(assert (= (or b!7822117 b!7822115) bm!725519))

(assert (= (or b!7822119 bm!725518) bm!725520))

(declare-fun m!8245714 () Bool)

(assert (=> b!7822112 m!8245714))

(declare-fun m!8245716 () Bool)

(assert (=> bm!725519 m!8245716))

(declare-fun m!8245718 () Bool)

(assert (=> bm!725520 m!8245718))

(assert (=> bm!725498 d!2349679))

(declare-fun d!2349681 () Bool)

(assert (=> d!2349681 (= (head!15984 s1!4101) (h!80112 s1!4101))))

(assert (=> b!7821967 d!2349681))

(declare-fun d!2349683 () Bool)

(assert (=> d!2349683 (= (nullable!9295 r1!6261) (nullableFct!3663 r1!6261))))

(declare-fun bs!1966744 () Bool)

(assert (= bs!1966744 d!2349683))

(declare-fun m!8245720 () Bool)

(assert (=> bs!1966744 m!8245720))

(assert (=> b!7821823 d!2349683))

(declare-fun d!2349685 () Bool)

(assert (=> d!2349685 (= (isEmpty!42283 (tail!15525 s2!3721)) ((_ is Nil!73664) (tail!15525 s2!3721)))))

(assert (=> b!7821949 d!2349685))

(declare-fun d!2349687 () Bool)

(assert (=> d!2349687 (= (tail!15525 s2!3721) (t!388523 s2!3721))))

(assert (=> b!7821949 d!2349687))

(assert (=> b!7821819 d!2349653))

(assert (=> b!7821819 d!2349651))

(declare-fun bm!725521 () Bool)

(declare-fun call!725526 () Bool)

(assert (=> bm!725521 (= call!725526 (isEmpty!42283 (tail!15525 s2!3721)))))

(declare-fun b!7822120 () Bool)

(declare-fun res!3113504 () Bool)

(declare-fun e!4627861 () Bool)

(assert (=> b!7822120 (=> res!3113504 e!4627861)))

(assert (=> b!7822120 (= res!3113504 (not ((_ is ElementMatch!20951) (derivativeStep!6254 r2!6199 (head!15984 s2!3721)))))))

(declare-fun e!4627867 () Bool)

(assert (=> b!7822120 (= e!4627867 e!4627861)))

(declare-fun b!7822121 () Bool)

(declare-fun res!3113507 () Bool)

(declare-fun e!4627864 () Bool)

(assert (=> b!7822121 (=> res!3113507 e!4627864)))

(assert (=> b!7822121 (= res!3113507 (not (isEmpty!42283 (tail!15525 (tail!15525 s2!3721)))))))

(declare-fun b!7822122 () Bool)

(declare-fun lt!2676614 () Bool)

(assert (=> b!7822122 (= e!4627867 (not lt!2676614))))

(declare-fun b!7822123 () Bool)

(declare-fun res!3113508 () Bool)

(declare-fun e!4627866 () Bool)

(assert (=> b!7822123 (=> (not res!3113508) (not e!4627866))))

(assert (=> b!7822123 (= res!3113508 (not call!725526))))

(declare-fun b!7822124 () Bool)

(declare-fun e!4627863 () Bool)

(assert (=> b!7822124 (= e!4627863 e!4627867)))

(declare-fun c!1439518 () Bool)

(assert (=> b!7822124 (= c!1439518 ((_ is EmptyLang!20951) (derivativeStep!6254 r2!6199 (head!15984 s2!3721))))))

(declare-fun b!7822125 () Bool)

(declare-fun e!4627862 () Bool)

(assert (=> b!7822125 (= e!4627862 (nullable!9295 (derivativeStep!6254 r2!6199 (head!15984 s2!3721))))))

(declare-fun b!7822126 () Bool)

(assert (=> b!7822126 (= e!4627866 (= (head!15984 (tail!15525 s2!3721)) (c!1439416 (derivativeStep!6254 r2!6199 (head!15984 s2!3721)))))))

(declare-fun b!7822127 () Bool)

(assert (=> b!7822127 (= e!4627864 (not (= (head!15984 (tail!15525 s2!3721)) (c!1439416 (derivativeStep!6254 r2!6199 (head!15984 s2!3721))))))))

(declare-fun d!2349689 () Bool)

(assert (=> d!2349689 e!4627863))

(declare-fun c!1439520 () Bool)

(assert (=> d!2349689 (= c!1439520 ((_ is EmptyExpr!20951) (derivativeStep!6254 r2!6199 (head!15984 s2!3721))))))

(assert (=> d!2349689 (= lt!2676614 e!4627862)))

(declare-fun c!1439519 () Bool)

(assert (=> d!2349689 (= c!1439519 (isEmpty!42283 (tail!15525 s2!3721)))))

(assert (=> d!2349689 (validRegex!11365 (derivativeStep!6254 r2!6199 (head!15984 s2!3721)))))

(assert (=> d!2349689 (= (matchR!10407 (derivativeStep!6254 r2!6199 (head!15984 s2!3721)) (tail!15525 s2!3721)) lt!2676614)))

(declare-fun b!7822128 () Bool)

(assert (=> b!7822128 (= e!4627862 (matchR!10407 (derivativeStep!6254 (derivativeStep!6254 r2!6199 (head!15984 s2!3721)) (head!15984 (tail!15525 s2!3721))) (tail!15525 (tail!15525 s2!3721))))))

(declare-fun b!7822129 () Bool)

(declare-fun e!4627865 () Bool)

(assert (=> b!7822129 (= e!4627861 e!4627865)))

(declare-fun res!3113503 () Bool)

(assert (=> b!7822129 (=> (not res!3113503) (not e!4627865))))

(assert (=> b!7822129 (= res!3113503 (not lt!2676614))))

(declare-fun b!7822130 () Bool)

(declare-fun res!3113509 () Bool)

(assert (=> b!7822130 (=> res!3113509 e!4627861)))

(assert (=> b!7822130 (= res!3113509 e!4627866)))

(declare-fun res!3113510 () Bool)

(assert (=> b!7822130 (=> (not res!3113510) (not e!4627866))))

(assert (=> b!7822130 (= res!3113510 lt!2676614)))

(declare-fun b!7822131 () Bool)

(assert (=> b!7822131 (= e!4627863 (= lt!2676614 call!725526))))

(declare-fun b!7822132 () Bool)

(declare-fun res!3113506 () Bool)

(assert (=> b!7822132 (=> (not res!3113506) (not e!4627866))))

(assert (=> b!7822132 (= res!3113506 (isEmpty!42283 (tail!15525 (tail!15525 s2!3721))))))

(declare-fun b!7822133 () Bool)

(assert (=> b!7822133 (= e!4627865 e!4627864)))

(declare-fun res!3113505 () Bool)

(assert (=> b!7822133 (=> res!3113505 e!4627864)))

(assert (=> b!7822133 (= res!3113505 call!725526)))

(assert (= (and d!2349689 c!1439519) b!7822125))

(assert (= (and d!2349689 (not c!1439519)) b!7822128))

(assert (= (and d!2349689 c!1439520) b!7822131))

(assert (= (and d!2349689 (not c!1439520)) b!7822124))

(assert (= (and b!7822124 c!1439518) b!7822122))

(assert (= (and b!7822124 (not c!1439518)) b!7822120))

(assert (= (and b!7822120 (not res!3113504)) b!7822130))

(assert (= (and b!7822130 res!3113510) b!7822123))

(assert (= (and b!7822123 res!3113508) b!7822132))

(assert (= (and b!7822132 res!3113506) b!7822126))

(assert (= (and b!7822130 (not res!3113509)) b!7822129))

(assert (= (and b!7822129 res!3113503) b!7822133))

(assert (= (and b!7822133 (not res!3113505)) b!7822121))

(assert (= (and b!7822121 (not res!3113507)) b!7822127))

(assert (= (or b!7822131 b!7822123 b!7822133) bm!725521))

(assert (=> b!7822127 m!8245624))

(declare-fun m!8245722 () Bool)

(assert (=> b!7822127 m!8245722))

(assert (=> b!7822128 m!8245624))

(assert (=> b!7822128 m!8245722))

(assert (=> b!7822128 m!8245622))

(assert (=> b!7822128 m!8245722))

(declare-fun m!8245724 () Bool)

(assert (=> b!7822128 m!8245724))

(assert (=> b!7822128 m!8245624))

(declare-fun m!8245726 () Bool)

(assert (=> b!7822128 m!8245726))

(assert (=> b!7822128 m!8245724))

(assert (=> b!7822128 m!8245726))

(declare-fun m!8245728 () Bool)

(assert (=> b!7822128 m!8245728))

(assert (=> bm!725521 m!8245624))

(assert (=> bm!725521 m!8245630))

(assert (=> b!7822121 m!8245624))

(assert (=> b!7822121 m!8245726))

(assert (=> b!7822121 m!8245726))

(declare-fun m!8245730 () Bool)

(assert (=> b!7822121 m!8245730))

(assert (=> d!2349689 m!8245624))

(assert (=> d!2349689 m!8245630))

(assert (=> d!2349689 m!8245622))

(declare-fun m!8245732 () Bool)

(assert (=> d!2349689 m!8245732))

(assert (=> b!7822126 m!8245624))

(assert (=> b!7822126 m!8245722))

(assert (=> b!7822132 m!8245624))

(assert (=> b!7822132 m!8245726))

(assert (=> b!7822132 m!8245726))

(assert (=> b!7822132 m!8245730))

(assert (=> b!7822125 m!8245622))

(declare-fun m!8245734 () Bool)

(assert (=> b!7822125 m!8245734))

(assert (=> b!7821945 d!2349689))

(declare-fun b!7822134 () Bool)

(declare-fun e!4627870 () Regex!20951)

(declare-fun call!725529 () Regex!20951)

(declare-fun call!725530 () Regex!20951)

(assert (=> b!7822134 (= e!4627870 (Union!20951 call!725529 call!725530))))

(declare-fun c!1439521 () Bool)

(declare-fun bm!725522 () Bool)

(declare-fun c!1439524 () Bool)

(assert (=> bm!725522 (= call!725529 (derivativeStep!6254 (ite c!1439521 (regOne!42415 r2!6199) (ite c!1439524 (reg!21280 r2!6199) (regOne!42414 r2!6199))) (head!15984 s2!3721)))))

(declare-fun bm!725523 () Bool)

(declare-fun call!725527 () Regex!20951)

(assert (=> bm!725523 (= call!725527 call!725529)))

(declare-fun b!7822135 () Bool)

(declare-fun e!4627868 () Regex!20951)

(declare-fun e!4627871 () Regex!20951)

(assert (=> b!7822135 (= e!4627868 e!4627871)))

(declare-fun c!1439523 () Bool)

(assert (=> b!7822135 (= c!1439523 ((_ is ElementMatch!20951) r2!6199))))

(declare-fun b!7822136 () Bool)

(declare-fun e!4627872 () Regex!20951)

(assert (=> b!7822136 (= e!4627870 e!4627872)))

(assert (=> b!7822136 (= c!1439524 ((_ is Star!20951) r2!6199))))

(declare-fun bm!725524 () Bool)

(assert (=> bm!725524 (= call!725530 (derivativeStep!6254 (ite c!1439521 (regTwo!42415 r2!6199) (regTwo!42414 r2!6199)) (head!15984 s2!3721)))))

(declare-fun b!7822137 () Bool)

(assert (=> b!7822137 (= e!4627871 (ite (= (head!15984 s2!3721) (c!1439416 r2!6199)) EmptyExpr!20951 EmptyLang!20951))))

(declare-fun b!7822138 () Bool)

(assert (=> b!7822138 (= e!4627872 (Concat!29796 call!725527 r2!6199))))

(declare-fun call!725528 () Regex!20951)

(declare-fun b!7822139 () Bool)

(declare-fun e!4627869 () Regex!20951)

(assert (=> b!7822139 (= e!4627869 (Union!20951 (Concat!29796 call!725528 (regTwo!42414 r2!6199)) call!725530))))

(declare-fun b!7822140 () Bool)

(assert (=> b!7822140 (= e!4627869 (Union!20951 (Concat!29796 call!725528 (regTwo!42414 r2!6199)) EmptyLang!20951))))

(declare-fun d!2349691 () Bool)

(declare-fun lt!2676615 () Regex!20951)

(assert (=> d!2349691 (validRegex!11365 lt!2676615)))

(assert (=> d!2349691 (= lt!2676615 e!4627868)))

(declare-fun c!1439525 () Bool)

(assert (=> d!2349691 (= c!1439525 (or ((_ is EmptyExpr!20951) r2!6199) ((_ is EmptyLang!20951) r2!6199)))))

(assert (=> d!2349691 (validRegex!11365 r2!6199)))

(assert (=> d!2349691 (= (derivativeStep!6254 r2!6199 (head!15984 s2!3721)) lt!2676615)))

(declare-fun bm!725525 () Bool)

(assert (=> bm!725525 (= call!725528 call!725527)))

(declare-fun b!7822141 () Bool)

(assert (=> b!7822141 (= c!1439521 ((_ is Union!20951) r2!6199))))

(assert (=> b!7822141 (= e!4627871 e!4627870)))

(declare-fun b!7822142 () Bool)

(assert (=> b!7822142 (= e!4627868 EmptyLang!20951)))

(declare-fun b!7822143 () Bool)

(declare-fun c!1439522 () Bool)

(assert (=> b!7822143 (= c!1439522 (nullable!9295 (regOne!42414 r2!6199)))))

(assert (=> b!7822143 (= e!4627872 e!4627869)))

(assert (= (and d!2349691 c!1439525) b!7822142))

(assert (= (and d!2349691 (not c!1439525)) b!7822135))

(assert (= (and b!7822135 c!1439523) b!7822137))

(assert (= (and b!7822135 (not c!1439523)) b!7822141))

(assert (= (and b!7822141 c!1439521) b!7822134))

(assert (= (and b!7822141 (not c!1439521)) b!7822136))

(assert (= (and b!7822136 c!1439524) b!7822138))

(assert (= (and b!7822136 (not c!1439524)) b!7822143))

(assert (= (and b!7822143 c!1439522) b!7822139))

(assert (= (and b!7822143 (not c!1439522)) b!7822140))

(assert (= (or b!7822139 b!7822140) bm!725525))

(assert (= (or b!7822138 bm!725525) bm!725523))

(assert (= (or b!7822134 bm!725523) bm!725522))

(assert (= (or b!7822134 b!7822139) bm!725524))

(assert (=> bm!725522 m!8245620))

(declare-fun m!8245736 () Bool)

(assert (=> bm!725522 m!8245736))

(assert (=> bm!725524 m!8245620))

(declare-fun m!8245738 () Bool)

(assert (=> bm!725524 m!8245738))

(declare-fun m!8245740 () Bool)

(assert (=> d!2349691 m!8245740))

(assert (=> d!2349691 m!8245452))

(declare-fun m!8245742 () Bool)

(assert (=> b!7822143 m!8245742))

(assert (=> b!7821945 d!2349691))

(assert (=> b!7821945 d!2349673))

(assert (=> b!7821945 d!2349687))

(declare-fun d!2349693 () Bool)

(assert (=> d!2349693 (= (nullable!9295 (reg!21280 r1!6261)) (nullableFct!3663 (reg!21280 r1!6261)))))

(declare-fun bs!1966745 () Bool)

(assert (= bs!1966745 d!2349693))

(declare-fun m!8245744 () Bool)

(assert (=> bs!1966745 m!8245744))

(assert (=> b!7821920 d!2349693))

(assert (=> b!7821792 d!2349641))

(declare-fun b!7822144 () Bool)

(declare-fun e!4627875 () Bool)

(declare-fun e!4627878 () Bool)

(assert (=> b!7822144 (= e!4627875 e!4627878)))

(declare-fun c!1439526 () Bool)

(assert (=> b!7822144 (= c!1439526 ((_ is Union!20951) (ite c!1439472 (regOne!42415 r1!6261) (regTwo!42414 r1!6261))))))

(declare-fun b!7822145 () Bool)

(declare-fun e!4627874 () Bool)

(assert (=> b!7822145 (= e!4627875 e!4627874)))

(declare-fun res!3113513 () Bool)

(assert (=> b!7822145 (= res!3113513 (not (nullable!9295 (reg!21280 (ite c!1439472 (regOne!42415 r1!6261) (regTwo!42414 r1!6261))))))))

(assert (=> b!7822145 (=> (not res!3113513) (not e!4627874))))

(declare-fun b!7822146 () Bool)

(declare-fun e!4627876 () Bool)

(assert (=> b!7822146 (= e!4627876 e!4627875)))

(declare-fun c!1439527 () Bool)

(assert (=> b!7822146 (= c!1439527 ((_ is Star!20951) (ite c!1439472 (regOne!42415 r1!6261) (regTwo!42414 r1!6261))))))

(declare-fun b!7822147 () Bool)

(declare-fun res!3113512 () Bool)

(declare-fun e!4627873 () Bool)

(assert (=> b!7822147 (=> res!3113512 e!4627873)))

(assert (=> b!7822147 (= res!3113512 (not ((_ is Concat!29796) (ite c!1439472 (regOne!42415 r1!6261) (regTwo!42414 r1!6261)))))))

(assert (=> b!7822147 (= e!4627878 e!4627873)))

(declare-fun bm!725526 () Bool)

(declare-fun call!725532 () Bool)

(declare-fun call!725531 () Bool)

(assert (=> bm!725526 (= call!725532 call!725531)))

(declare-fun b!7822148 () Bool)

(declare-fun e!4627879 () Bool)

(declare-fun call!725533 () Bool)

(assert (=> b!7822148 (= e!4627879 call!725533)))

(declare-fun b!7822150 () Bool)

(declare-fun res!3113515 () Bool)

(declare-fun e!4627877 () Bool)

(assert (=> b!7822150 (=> (not res!3113515) (not e!4627877))))

(assert (=> b!7822150 (= res!3113515 call!725533)))

(assert (=> b!7822150 (= e!4627878 e!4627877)))

(declare-fun b!7822151 () Bool)

(assert (=> b!7822151 (= e!4627873 e!4627879)))

(declare-fun res!3113514 () Bool)

(assert (=> b!7822151 (=> (not res!3113514) (not e!4627879))))

(assert (=> b!7822151 (= res!3113514 call!725532)))

(declare-fun bm!725527 () Bool)

(assert (=> bm!725527 (= call!725533 (validRegex!11365 (ite c!1439526 (regOne!42415 (ite c!1439472 (regOne!42415 r1!6261) (regTwo!42414 r1!6261))) (regTwo!42414 (ite c!1439472 (regOne!42415 r1!6261) (regTwo!42414 r1!6261))))))))

(declare-fun b!7822149 () Bool)

(assert (=> b!7822149 (= e!4627877 call!725532)))

(declare-fun d!2349695 () Bool)

(declare-fun res!3113511 () Bool)

(assert (=> d!2349695 (=> res!3113511 e!4627876)))

(assert (=> d!2349695 (= res!3113511 ((_ is ElementMatch!20951) (ite c!1439472 (regOne!42415 r1!6261) (regTwo!42414 r1!6261))))))

(assert (=> d!2349695 (= (validRegex!11365 (ite c!1439472 (regOne!42415 r1!6261) (regTwo!42414 r1!6261))) e!4627876)))

(declare-fun bm!725528 () Bool)

(assert (=> bm!725528 (= call!725531 (validRegex!11365 (ite c!1439527 (reg!21280 (ite c!1439472 (regOne!42415 r1!6261) (regTwo!42414 r1!6261))) (ite c!1439526 (regTwo!42415 (ite c!1439472 (regOne!42415 r1!6261) (regTwo!42414 r1!6261))) (regOne!42414 (ite c!1439472 (regOne!42415 r1!6261) (regTwo!42414 r1!6261)))))))))

(declare-fun b!7822152 () Bool)

(assert (=> b!7822152 (= e!4627874 call!725531)))

(assert (= (and d!2349695 (not res!3113511)) b!7822146))

(assert (= (and b!7822146 c!1439527) b!7822145))

(assert (= (and b!7822146 (not c!1439527)) b!7822144))

(assert (= (and b!7822145 res!3113513) b!7822152))

(assert (= (and b!7822144 c!1439526) b!7822150))

(assert (= (and b!7822144 (not c!1439526)) b!7822147))

(assert (= (and b!7822150 res!3113515) b!7822149))

(assert (= (and b!7822147 (not res!3113512)) b!7822151))

(assert (= (and b!7822151 res!3113514) b!7822148))

(assert (= (or b!7822149 b!7822151) bm!725526))

(assert (= (or b!7822150 b!7822148) bm!725527))

(assert (= (or b!7822152 bm!725526) bm!725528))

(declare-fun m!8245746 () Bool)

(assert (=> b!7822145 m!8245746))

(declare-fun m!8245748 () Bool)

(assert (=> bm!725527 m!8245748))

(declare-fun m!8245750 () Bool)

(assert (=> bm!725528 m!8245750))

(assert (=> bm!725495 d!2349695))

(declare-fun b!7822154 () Bool)

(declare-fun e!4627881 () List!73788)

(assert (=> b!7822154 (= e!4627881 (Cons!73664 (h!80112 (t!388523 s1!4101)) (++!17985 (t!388523 (t!388523 s1!4101)) s2!3721)))))

(declare-fun b!7822156 () Bool)

(declare-fun lt!2676616 () List!73788)

(declare-fun e!4627880 () Bool)

(assert (=> b!7822156 (= e!4627880 (or (not (= s2!3721 Nil!73664)) (= lt!2676616 (t!388523 s1!4101))))))

(declare-fun d!2349697 () Bool)

(assert (=> d!2349697 e!4627880))

(declare-fun res!3113517 () Bool)

(assert (=> d!2349697 (=> (not res!3113517) (not e!4627880))))

(assert (=> d!2349697 (= res!3113517 (= (content!15636 lt!2676616) ((_ map or) (content!15636 (t!388523 s1!4101)) (content!15636 s2!3721))))))

(assert (=> d!2349697 (= lt!2676616 e!4627881)))

(declare-fun c!1439528 () Bool)

(assert (=> d!2349697 (= c!1439528 ((_ is Nil!73664) (t!388523 s1!4101)))))

(assert (=> d!2349697 (= (++!17985 (t!388523 s1!4101) s2!3721) lt!2676616)))

(declare-fun b!7822155 () Bool)

(declare-fun res!3113516 () Bool)

(assert (=> b!7822155 (=> (not res!3113516) (not e!4627880))))

(assert (=> b!7822155 (= res!3113516 (= (size!42751 lt!2676616) (+ (size!42751 (t!388523 s1!4101)) (size!42751 s2!3721))))))

(declare-fun b!7822153 () Bool)

(assert (=> b!7822153 (= e!4627881 s2!3721)))

(assert (= (and d!2349697 c!1439528) b!7822153))

(assert (= (and d!2349697 (not c!1439528)) b!7822154))

(assert (= (and d!2349697 res!3113517) b!7822155))

(assert (= (and b!7822155 res!3113516) b!7822156))

(declare-fun m!8245752 () Bool)

(assert (=> b!7822154 m!8245752))

(declare-fun m!8245754 () Bool)

(assert (=> d!2349697 m!8245754))

(assert (=> d!2349697 m!8245704))

(assert (=> d!2349697 m!8245460))

(declare-fun m!8245756 () Bool)

(assert (=> b!7822155 m!8245756))

(assert (=> b!7822155 m!8245636))

(assert (=> b!7822155 m!8245464))

(assert (=> b!7821637 d!2349697))

(declare-fun d!2349699 () Bool)

(assert (=> d!2349699 (= (isEmpty!42283 (tail!15525 s1!4101)) ((_ is Nil!73664) (tail!15525 s1!4101)))))

(assert (=> b!7821973 d!2349699))

(assert (=> b!7821973 d!2349661))

(declare-fun bm!725529 () Bool)

(declare-fun call!725534 () Bool)

(assert (=> bm!725529 (= call!725534 (isEmpty!42283 (tail!15525 s1!4101)))))

(declare-fun b!7822157 () Bool)

(declare-fun res!3113519 () Bool)

(declare-fun e!4627882 () Bool)

(assert (=> b!7822157 (=> res!3113519 e!4627882)))

(assert (=> b!7822157 (= res!3113519 (not ((_ is ElementMatch!20951) (derivativeStep!6254 r1!6261 (head!15984 s1!4101)))))))

(declare-fun e!4627888 () Bool)

(assert (=> b!7822157 (= e!4627888 e!4627882)))

(declare-fun b!7822158 () Bool)

(declare-fun res!3113522 () Bool)

(declare-fun e!4627885 () Bool)

(assert (=> b!7822158 (=> res!3113522 e!4627885)))

(assert (=> b!7822158 (= res!3113522 (not (isEmpty!42283 (tail!15525 (tail!15525 s1!4101)))))))

(declare-fun b!7822159 () Bool)

(declare-fun lt!2676617 () Bool)

(assert (=> b!7822159 (= e!4627888 (not lt!2676617))))

(declare-fun b!7822160 () Bool)

(declare-fun res!3113523 () Bool)

(declare-fun e!4627887 () Bool)

(assert (=> b!7822160 (=> (not res!3113523) (not e!4627887))))

(assert (=> b!7822160 (= res!3113523 (not call!725534))))

(declare-fun b!7822161 () Bool)

(declare-fun e!4627884 () Bool)

(assert (=> b!7822161 (= e!4627884 e!4627888)))

(declare-fun c!1439529 () Bool)

(assert (=> b!7822161 (= c!1439529 ((_ is EmptyLang!20951) (derivativeStep!6254 r1!6261 (head!15984 s1!4101))))))

(declare-fun b!7822162 () Bool)

(declare-fun e!4627883 () Bool)

(assert (=> b!7822162 (= e!4627883 (nullable!9295 (derivativeStep!6254 r1!6261 (head!15984 s1!4101))))))

(declare-fun b!7822163 () Bool)

(assert (=> b!7822163 (= e!4627887 (= (head!15984 (tail!15525 s1!4101)) (c!1439416 (derivativeStep!6254 r1!6261 (head!15984 s1!4101)))))))

(declare-fun b!7822164 () Bool)

(assert (=> b!7822164 (= e!4627885 (not (= (head!15984 (tail!15525 s1!4101)) (c!1439416 (derivativeStep!6254 r1!6261 (head!15984 s1!4101))))))))

(declare-fun d!2349701 () Bool)

(assert (=> d!2349701 e!4627884))

(declare-fun c!1439531 () Bool)

(assert (=> d!2349701 (= c!1439531 ((_ is EmptyExpr!20951) (derivativeStep!6254 r1!6261 (head!15984 s1!4101))))))

(assert (=> d!2349701 (= lt!2676617 e!4627883)))

(declare-fun c!1439530 () Bool)

(assert (=> d!2349701 (= c!1439530 (isEmpty!42283 (tail!15525 s1!4101)))))

(assert (=> d!2349701 (validRegex!11365 (derivativeStep!6254 r1!6261 (head!15984 s1!4101)))))

(assert (=> d!2349701 (= (matchR!10407 (derivativeStep!6254 r1!6261 (head!15984 s1!4101)) (tail!15525 s1!4101)) lt!2676617)))

(declare-fun b!7822165 () Bool)

(assert (=> b!7822165 (= e!4627883 (matchR!10407 (derivativeStep!6254 (derivativeStep!6254 r1!6261 (head!15984 s1!4101)) (head!15984 (tail!15525 s1!4101))) (tail!15525 (tail!15525 s1!4101))))))

(declare-fun b!7822166 () Bool)

(declare-fun e!4627886 () Bool)

(assert (=> b!7822166 (= e!4627882 e!4627886)))

(declare-fun res!3113518 () Bool)

(assert (=> b!7822166 (=> (not res!3113518) (not e!4627886))))

(assert (=> b!7822166 (= res!3113518 (not lt!2676617))))

(declare-fun b!7822167 () Bool)

(declare-fun res!3113524 () Bool)

(assert (=> b!7822167 (=> res!3113524 e!4627882)))

(assert (=> b!7822167 (= res!3113524 e!4627887)))

(declare-fun res!3113525 () Bool)

(assert (=> b!7822167 (=> (not res!3113525) (not e!4627887))))

(assert (=> b!7822167 (= res!3113525 lt!2676617)))

(declare-fun b!7822168 () Bool)

(assert (=> b!7822168 (= e!4627884 (= lt!2676617 call!725534))))

(declare-fun b!7822169 () Bool)

(declare-fun res!3113521 () Bool)

(assert (=> b!7822169 (=> (not res!3113521) (not e!4627887))))

(assert (=> b!7822169 (= res!3113521 (isEmpty!42283 (tail!15525 (tail!15525 s1!4101))))))

(declare-fun b!7822170 () Bool)

(assert (=> b!7822170 (= e!4627886 e!4627885)))

(declare-fun res!3113520 () Bool)

(assert (=> b!7822170 (=> res!3113520 e!4627885)))

(assert (=> b!7822170 (= res!3113520 call!725534)))

(assert (= (and d!2349701 c!1439530) b!7822162))

(assert (= (and d!2349701 (not c!1439530)) b!7822165))

(assert (= (and d!2349701 c!1439531) b!7822168))

(assert (= (and d!2349701 (not c!1439531)) b!7822161))

(assert (= (and b!7822161 c!1439529) b!7822159))

(assert (= (and b!7822161 (not c!1439529)) b!7822157))

(assert (= (and b!7822157 (not res!3113519)) b!7822167))

(assert (= (and b!7822167 res!3113525) b!7822160))

(assert (= (and b!7822160 res!3113523) b!7822169))

(assert (= (and b!7822169 res!3113521) b!7822163))

(assert (= (and b!7822167 (not res!3113524)) b!7822166))

(assert (= (and b!7822166 res!3113518) b!7822170))

(assert (= (and b!7822170 (not res!3113520)) b!7822158))

(assert (= (and b!7822158 (not res!3113522)) b!7822164))

(assert (= (or b!7822168 b!7822160 b!7822170) bm!725529))

(assert (=> b!7822164 m!8245482))

(assert (=> b!7822164 m!8245688))

(assert (=> b!7822165 m!8245482))

(assert (=> b!7822165 m!8245688))

(assert (=> b!7822165 m!8245638))

(assert (=> b!7822165 m!8245688))

(declare-fun m!8245758 () Bool)

(assert (=> b!7822165 m!8245758))

(assert (=> b!7822165 m!8245482))

(assert (=> b!7822165 m!8245680))

(assert (=> b!7822165 m!8245758))

(assert (=> b!7822165 m!8245680))

(declare-fun m!8245760 () Bool)

(assert (=> b!7822165 m!8245760))

(assert (=> bm!725529 m!8245482))

(assert (=> bm!725529 m!8245644))

(assert (=> b!7822158 m!8245482))

(assert (=> b!7822158 m!8245680))

(assert (=> b!7822158 m!8245680))

(declare-fun m!8245762 () Bool)

(assert (=> b!7822158 m!8245762))

(assert (=> d!2349701 m!8245482))

(assert (=> d!2349701 m!8245644))

(assert (=> d!2349701 m!8245638))

(declare-fun m!8245764 () Bool)

(assert (=> d!2349701 m!8245764))

(assert (=> b!7822163 m!8245482))

(assert (=> b!7822163 m!8245688))

(assert (=> b!7822169 m!8245482))

(assert (=> b!7822169 m!8245680))

(assert (=> b!7822169 m!8245680))

(assert (=> b!7822169 m!8245762))

(assert (=> b!7822162 m!8245638))

(declare-fun m!8245766 () Bool)

(assert (=> b!7822162 m!8245766))

(assert (=> b!7821969 d!2349701))

(declare-fun b!7822171 () Bool)

(declare-fun e!4627891 () Regex!20951)

(declare-fun call!725537 () Regex!20951)

(declare-fun call!725538 () Regex!20951)

(assert (=> b!7822171 (= e!4627891 (Union!20951 call!725537 call!725538))))

(declare-fun c!1439532 () Bool)

(declare-fun c!1439535 () Bool)

(declare-fun bm!725530 () Bool)

(assert (=> bm!725530 (= call!725537 (derivativeStep!6254 (ite c!1439532 (regOne!42415 r1!6261) (ite c!1439535 (reg!21280 r1!6261) (regOne!42414 r1!6261))) (head!15984 s1!4101)))))

(declare-fun bm!725531 () Bool)

(declare-fun call!725535 () Regex!20951)

(assert (=> bm!725531 (= call!725535 call!725537)))

(declare-fun b!7822172 () Bool)

(declare-fun e!4627889 () Regex!20951)

(declare-fun e!4627892 () Regex!20951)

(assert (=> b!7822172 (= e!4627889 e!4627892)))

(declare-fun c!1439534 () Bool)

(assert (=> b!7822172 (= c!1439534 ((_ is ElementMatch!20951) r1!6261))))

(declare-fun b!7822173 () Bool)

(declare-fun e!4627893 () Regex!20951)

(assert (=> b!7822173 (= e!4627891 e!4627893)))

(assert (=> b!7822173 (= c!1439535 ((_ is Star!20951) r1!6261))))

(declare-fun bm!725532 () Bool)

(assert (=> bm!725532 (= call!725538 (derivativeStep!6254 (ite c!1439532 (regTwo!42415 r1!6261) (regTwo!42414 r1!6261)) (head!15984 s1!4101)))))

(declare-fun b!7822174 () Bool)

(assert (=> b!7822174 (= e!4627892 (ite (= (head!15984 s1!4101) (c!1439416 r1!6261)) EmptyExpr!20951 EmptyLang!20951))))

(declare-fun b!7822175 () Bool)

(assert (=> b!7822175 (= e!4627893 (Concat!29796 call!725535 r1!6261))))

(declare-fun e!4627890 () Regex!20951)

(declare-fun b!7822176 () Bool)

(declare-fun call!725536 () Regex!20951)

(assert (=> b!7822176 (= e!4627890 (Union!20951 (Concat!29796 call!725536 (regTwo!42414 r1!6261)) call!725538))))

(declare-fun b!7822177 () Bool)

(assert (=> b!7822177 (= e!4627890 (Union!20951 (Concat!29796 call!725536 (regTwo!42414 r1!6261)) EmptyLang!20951))))

(declare-fun d!2349703 () Bool)

(declare-fun lt!2676618 () Regex!20951)

(assert (=> d!2349703 (validRegex!11365 lt!2676618)))

(assert (=> d!2349703 (= lt!2676618 e!4627889)))

(declare-fun c!1439536 () Bool)

(assert (=> d!2349703 (= c!1439536 (or ((_ is EmptyExpr!20951) r1!6261) ((_ is EmptyLang!20951) r1!6261)))))

(assert (=> d!2349703 (validRegex!11365 r1!6261)))

(assert (=> d!2349703 (= (derivativeStep!6254 r1!6261 (head!15984 s1!4101)) lt!2676618)))

(declare-fun bm!725533 () Bool)

(assert (=> bm!725533 (= call!725536 call!725535)))

(declare-fun b!7822178 () Bool)

(assert (=> b!7822178 (= c!1439532 ((_ is Union!20951) r1!6261))))

(assert (=> b!7822178 (= e!4627892 e!4627891)))

(declare-fun b!7822179 () Bool)

(assert (=> b!7822179 (= e!4627889 EmptyLang!20951)))

(declare-fun b!7822180 () Bool)

(declare-fun c!1439533 () Bool)

(assert (=> b!7822180 (= c!1439533 (nullable!9295 (regOne!42414 r1!6261)))))

(assert (=> b!7822180 (= e!4627893 e!4627890)))

(assert (= (and d!2349703 c!1439536) b!7822179))

(assert (= (and d!2349703 (not c!1439536)) b!7822172))

(assert (= (and b!7822172 c!1439534) b!7822174))

(assert (= (and b!7822172 (not c!1439534)) b!7822178))

(assert (= (and b!7822178 c!1439532) b!7822171))

(assert (= (and b!7822178 (not c!1439532)) b!7822173))

(assert (= (and b!7822173 c!1439535) b!7822175))

(assert (= (and b!7822173 (not c!1439535)) b!7822180))

(assert (= (and b!7822180 c!1439533) b!7822176))

(assert (= (and b!7822180 (not c!1439533)) b!7822177))

(assert (= (or b!7822176 b!7822177) bm!725533))

(assert (= (or b!7822175 bm!725533) bm!725531))

(assert (= (or b!7822171 bm!725531) bm!725530))

(assert (= (or b!7822171 b!7822176) bm!725532))

(assert (=> bm!725530 m!8245488))

(declare-fun m!8245768 () Bool)

(assert (=> bm!725530 m!8245768))

(assert (=> bm!725532 m!8245488))

(declare-fun m!8245770 () Bool)

(assert (=> bm!725532 m!8245770))

(declare-fun m!8245772 () Bool)

(assert (=> d!2349703 m!8245772))

(assert (=> d!2349703 m!8245442))

(assert (=> b!7822180 m!8245674))

(assert (=> b!7821969 d!2349703))

(assert (=> b!7821969 d!2349681))

(assert (=> b!7821969 d!2349661))

(assert (=> b!7821825 d!2349643))

(declare-fun d!2349705 () Bool)

(declare-fun lt!2676619 () Int)

(assert (=> d!2349705 (>= lt!2676619 0)))

(declare-fun e!4627894 () Int)

(assert (=> d!2349705 (= lt!2676619 e!4627894)))

(declare-fun c!1439537 () Bool)

(assert (=> d!2349705 (= c!1439537 ((_ is Nil!73664) (t!388523 s1!4101)))))

(assert (=> d!2349705 (= (size!42751 (t!388523 s1!4101)) lt!2676619)))

(declare-fun b!7822181 () Bool)

(assert (=> b!7822181 (= e!4627894 0)))

(declare-fun b!7822182 () Bool)

(assert (=> b!7822182 (= e!4627894 (+ 1 (size!42751 (t!388523 (t!388523 s1!4101)))))))

(assert (= (and d!2349705 c!1439537) b!7822181))

(assert (= (and d!2349705 (not c!1439537)) b!7822182))

(declare-fun m!8245774 () Bool)

(assert (=> b!7822182 m!8245774))

(assert (=> b!7821960 d!2349705))

(assert (=> b!7821665 d!2349635))

(assert (=> b!7821665 d!2349633))

(declare-fun d!2349707 () Bool)

(declare-fun lt!2676620 () Int)

(assert (=> d!2349707 (>= lt!2676620 0)))

(declare-fun e!4627895 () Int)

(assert (=> d!2349707 (= lt!2676620 e!4627895)))

(declare-fun c!1439538 () Bool)

(assert (=> d!2349707 (= c!1439538 ((_ is Nil!73664) lt!2676578))))

(assert (=> d!2349707 (= (size!42751 lt!2676578) lt!2676620)))

(declare-fun b!7822183 () Bool)

(assert (=> b!7822183 (= e!4627895 0)))

(declare-fun b!7822184 () Bool)

(assert (=> b!7822184 (= e!4627895 (+ 1 (size!42751 (t!388523 lt!2676578))))))

(assert (= (and d!2349707 c!1439538) b!7822183))

(assert (= (and d!2349707 (not c!1439538)) b!7822184))

(declare-fun m!8245776 () Bool)

(assert (=> b!7822184 m!8245776))

(assert (=> b!7821668 d!2349707))

(assert (=> b!7821668 d!2349633))

(declare-fun d!2349709 () Bool)

(declare-fun lt!2676621 () Int)

(assert (=> d!2349709 (>= lt!2676621 0)))

(declare-fun e!4627896 () Int)

(assert (=> d!2349709 (= lt!2676621 e!4627896)))

(declare-fun c!1439539 () Bool)

(assert (=> d!2349709 (= c!1439539 ((_ is Nil!73664) s2Rec!453))))

(assert (=> d!2349709 (= (size!42751 s2Rec!453) lt!2676621)))

(declare-fun b!7822185 () Bool)

(assert (=> b!7822185 (= e!4627896 0)))

(declare-fun b!7822186 () Bool)

(assert (=> b!7822186 (= e!4627896 (+ 1 (size!42751 (t!388523 s2Rec!453))))))

(assert (= (and d!2349709 c!1439539) b!7822185))

(assert (= (and d!2349709 (not c!1439539)) b!7822186))

(declare-fun m!8245778 () Bool)

(assert (=> b!7822186 m!8245778))

(assert (=> b!7821668 d!2349709))

(declare-fun d!2349711 () Bool)

(assert (=> d!2349711 (= (isEmpty!42283 s2!3721) ((_ is Nil!73664) s2!3721))))

(assert (=> d!2349629 d!2349711))

(assert (=> d!2349629 d!2349627))

(declare-fun d!2349713 () Bool)

(assert (=> d!2349713 (= (isEmpty!42283 (tail!15525 s2Rec!453)) ((_ is Nil!73664) (tail!15525 s2Rec!453)))))

(assert (=> b!7821798 d!2349713))

(declare-fun d!2349715 () Bool)

(assert (=> d!2349715 (= (tail!15525 s2Rec!453) (t!388523 s2Rec!453))))

(assert (=> b!7821798 d!2349715))

(assert (=> b!7821938 d!2349685))

(assert (=> b!7821938 d!2349687))

(declare-fun bm!725534 () Bool)

(declare-fun call!725539 () Bool)

(assert (=> bm!725534 (= call!725539 (isEmpty!42283 (tail!15525 s2Rec!453)))))

(declare-fun b!7822187 () Bool)

(declare-fun res!3113527 () Bool)

(declare-fun e!4627897 () Bool)

(assert (=> b!7822187 (=> res!3113527 e!4627897)))

(assert (=> b!7822187 (= res!3113527 (not ((_ is ElementMatch!20951) (derivativeStep!6254 r2!6199 (head!15984 s2Rec!453)))))))

(declare-fun e!4627903 () Bool)

(assert (=> b!7822187 (= e!4627903 e!4627897)))

(declare-fun b!7822188 () Bool)

(declare-fun res!3113530 () Bool)

(declare-fun e!4627900 () Bool)

(assert (=> b!7822188 (=> res!3113530 e!4627900)))

(assert (=> b!7822188 (= res!3113530 (not (isEmpty!42283 (tail!15525 (tail!15525 s2Rec!453)))))))

(declare-fun b!7822189 () Bool)

(declare-fun lt!2676622 () Bool)

(assert (=> b!7822189 (= e!4627903 (not lt!2676622))))

(declare-fun b!7822190 () Bool)

(declare-fun res!3113531 () Bool)

(declare-fun e!4627902 () Bool)

(assert (=> b!7822190 (=> (not res!3113531) (not e!4627902))))

(assert (=> b!7822190 (= res!3113531 (not call!725539))))

(declare-fun b!7822191 () Bool)

(declare-fun e!4627899 () Bool)

(assert (=> b!7822191 (= e!4627899 e!4627903)))

(declare-fun c!1439540 () Bool)

(assert (=> b!7822191 (= c!1439540 ((_ is EmptyLang!20951) (derivativeStep!6254 r2!6199 (head!15984 s2Rec!453))))))

(declare-fun b!7822192 () Bool)

(declare-fun e!4627898 () Bool)

(assert (=> b!7822192 (= e!4627898 (nullable!9295 (derivativeStep!6254 r2!6199 (head!15984 s2Rec!453))))))

(declare-fun b!7822193 () Bool)

(assert (=> b!7822193 (= e!4627902 (= (head!15984 (tail!15525 s2Rec!453)) (c!1439416 (derivativeStep!6254 r2!6199 (head!15984 s2Rec!453)))))))

(declare-fun b!7822194 () Bool)

(assert (=> b!7822194 (= e!4627900 (not (= (head!15984 (tail!15525 s2Rec!453)) (c!1439416 (derivativeStep!6254 r2!6199 (head!15984 s2Rec!453))))))))

(declare-fun d!2349717 () Bool)

(assert (=> d!2349717 e!4627899))

(declare-fun c!1439542 () Bool)

(assert (=> d!2349717 (= c!1439542 ((_ is EmptyExpr!20951) (derivativeStep!6254 r2!6199 (head!15984 s2Rec!453))))))

(assert (=> d!2349717 (= lt!2676622 e!4627898)))

(declare-fun c!1439541 () Bool)

(assert (=> d!2349717 (= c!1439541 (isEmpty!42283 (tail!15525 s2Rec!453)))))

(assert (=> d!2349717 (validRegex!11365 (derivativeStep!6254 r2!6199 (head!15984 s2Rec!453)))))

(assert (=> d!2349717 (= (matchR!10407 (derivativeStep!6254 r2!6199 (head!15984 s2Rec!453)) (tail!15525 s2Rec!453)) lt!2676622)))

(declare-fun b!7822195 () Bool)

(assert (=> b!7822195 (= e!4627898 (matchR!10407 (derivativeStep!6254 (derivativeStep!6254 r2!6199 (head!15984 s2Rec!453)) (head!15984 (tail!15525 s2Rec!453))) (tail!15525 (tail!15525 s2Rec!453))))))

(declare-fun b!7822196 () Bool)

(declare-fun e!4627901 () Bool)

(assert (=> b!7822196 (= e!4627897 e!4627901)))

(declare-fun res!3113526 () Bool)

(assert (=> b!7822196 (=> (not res!3113526) (not e!4627901))))

(assert (=> b!7822196 (= res!3113526 (not lt!2676622))))

(declare-fun b!7822197 () Bool)

(declare-fun res!3113532 () Bool)

(assert (=> b!7822197 (=> res!3113532 e!4627897)))

(assert (=> b!7822197 (= res!3113532 e!4627902)))

(declare-fun res!3113533 () Bool)

(assert (=> b!7822197 (=> (not res!3113533) (not e!4627902))))

(assert (=> b!7822197 (= res!3113533 lt!2676622)))

(declare-fun b!7822198 () Bool)

(assert (=> b!7822198 (= e!4627899 (= lt!2676622 call!725539))))

(declare-fun b!7822199 () Bool)

(declare-fun res!3113529 () Bool)

(assert (=> b!7822199 (=> (not res!3113529) (not e!4627902))))

(assert (=> b!7822199 (= res!3113529 (isEmpty!42283 (tail!15525 (tail!15525 s2Rec!453))))))

(declare-fun b!7822200 () Bool)

(assert (=> b!7822200 (= e!4627901 e!4627900)))

(declare-fun res!3113528 () Bool)

(assert (=> b!7822200 (=> res!3113528 e!4627900)))

(assert (=> b!7822200 (= res!3113528 call!725539)))

(assert (= (and d!2349717 c!1439541) b!7822192))

(assert (= (and d!2349717 (not c!1439541)) b!7822195))

(assert (= (and d!2349717 c!1439542) b!7822198))

(assert (= (and d!2349717 (not c!1439542)) b!7822191))

(assert (= (and b!7822191 c!1439540) b!7822189))

(assert (= (and b!7822191 (not c!1439540)) b!7822187))

(assert (= (and b!7822187 (not res!3113527)) b!7822197))

(assert (= (and b!7822197 res!3113533) b!7822190))

(assert (= (and b!7822190 res!3113531) b!7822199))

(assert (= (and b!7822199 res!3113529) b!7822193))

(assert (= (and b!7822197 (not res!3113532)) b!7822196))

(assert (= (and b!7822196 res!3113526) b!7822200))

(assert (= (and b!7822200 (not res!3113528)) b!7822188))

(assert (= (and b!7822188 (not res!3113530)) b!7822194))

(assert (= (or b!7822198 b!7822190 b!7822200) bm!725534))

(assert (=> b!7822194 m!8245576))

(declare-fun m!8245780 () Bool)

(assert (=> b!7822194 m!8245780))

(assert (=> b!7822195 m!8245576))

(assert (=> b!7822195 m!8245780))

(assert (=> b!7822195 m!8245574))

(assert (=> b!7822195 m!8245780))

(declare-fun m!8245782 () Bool)

(assert (=> b!7822195 m!8245782))

(assert (=> b!7822195 m!8245576))

(declare-fun m!8245784 () Bool)

(assert (=> b!7822195 m!8245784))

(assert (=> b!7822195 m!8245782))

(assert (=> b!7822195 m!8245784))

(declare-fun m!8245786 () Bool)

(assert (=> b!7822195 m!8245786))

(assert (=> bm!725534 m!8245576))

(assert (=> bm!725534 m!8245582))

(assert (=> b!7822188 m!8245576))

(assert (=> b!7822188 m!8245784))

(assert (=> b!7822188 m!8245784))

(declare-fun m!8245788 () Bool)

(assert (=> b!7822188 m!8245788))

(assert (=> d!2349717 m!8245576))

(assert (=> d!2349717 m!8245582))

(assert (=> d!2349717 m!8245574))

(declare-fun m!8245790 () Bool)

(assert (=> d!2349717 m!8245790))

(assert (=> b!7822193 m!8245576))

(assert (=> b!7822193 m!8245780))

(assert (=> b!7822199 m!8245576))

(assert (=> b!7822199 m!8245784))

(assert (=> b!7822199 m!8245784))

(assert (=> b!7822199 m!8245788))

(assert (=> b!7822192 m!8245574))

(declare-fun m!8245792 () Bool)

(assert (=> b!7822192 m!8245792))

(assert (=> b!7821794 d!2349717))

(declare-fun b!7822201 () Bool)

(declare-fun e!4627906 () Regex!20951)

(declare-fun call!725542 () Regex!20951)

(declare-fun call!725543 () Regex!20951)

(assert (=> b!7822201 (= e!4627906 (Union!20951 call!725542 call!725543))))

(declare-fun c!1439546 () Bool)

(declare-fun bm!725535 () Bool)

(declare-fun c!1439543 () Bool)

(assert (=> bm!725535 (= call!725542 (derivativeStep!6254 (ite c!1439543 (regOne!42415 r2!6199) (ite c!1439546 (reg!21280 r2!6199) (regOne!42414 r2!6199))) (head!15984 s2Rec!453)))))

(declare-fun bm!725536 () Bool)

(declare-fun call!725540 () Regex!20951)

(assert (=> bm!725536 (= call!725540 call!725542)))

(declare-fun b!7822202 () Bool)

(declare-fun e!4627904 () Regex!20951)

(declare-fun e!4627907 () Regex!20951)

(assert (=> b!7822202 (= e!4627904 e!4627907)))

(declare-fun c!1439545 () Bool)

(assert (=> b!7822202 (= c!1439545 ((_ is ElementMatch!20951) r2!6199))))

(declare-fun b!7822203 () Bool)

(declare-fun e!4627908 () Regex!20951)

(assert (=> b!7822203 (= e!4627906 e!4627908)))

(assert (=> b!7822203 (= c!1439546 ((_ is Star!20951) r2!6199))))

(declare-fun bm!725537 () Bool)

(assert (=> bm!725537 (= call!725543 (derivativeStep!6254 (ite c!1439543 (regTwo!42415 r2!6199) (regTwo!42414 r2!6199)) (head!15984 s2Rec!453)))))

(declare-fun b!7822204 () Bool)

(assert (=> b!7822204 (= e!4627907 (ite (= (head!15984 s2Rec!453) (c!1439416 r2!6199)) EmptyExpr!20951 EmptyLang!20951))))

(declare-fun b!7822205 () Bool)

(assert (=> b!7822205 (= e!4627908 (Concat!29796 call!725540 r2!6199))))

(declare-fun call!725541 () Regex!20951)

(declare-fun e!4627905 () Regex!20951)

(declare-fun b!7822206 () Bool)

(assert (=> b!7822206 (= e!4627905 (Union!20951 (Concat!29796 call!725541 (regTwo!42414 r2!6199)) call!725543))))

(declare-fun b!7822207 () Bool)

(assert (=> b!7822207 (= e!4627905 (Union!20951 (Concat!29796 call!725541 (regTwo!42414 r2!6199)) EmptyLang!20951))))

(declare-fun d!2349719 () Bool)

(declare-fun lt!2676623 () Regex!20951)

(assert (=> d!2349719 (validRegex!11365 lt!2676623)))

(assert (=> d!2349719 (= lt!2676623 e!4627904)))

(declare-fun c!1439547 () Bool)

(assert (=> d!2349719 (= c!1439547 (or ((_ is EmptyExpr!20951) r2!6199) ((_ is EmptyLang!20951) r2!6199)))))

(assert (=> d!2349719 (validRegex!11365 r2!6199)))

(assert (=> d!2349719 (= (derivativeStep!6254 r2!6199 (head!15984 s2Rec!453)) lt!2676623)))

(declare-fun bm!725538 () Bool)

(assert (=> bm!725538 (= call!725541 call!725540)))

(declare-fun b!7822208 () Bool)

(assert (=> b!7822208 (= c!1439543 ((_ is Union!20951) r2!6199))))

(assert (=> b!7822208 (= e!4627907 e!4627906)))

(declare-fun b!7822209 () Bool)

(assert (=> b!7822209 (= e!4627904 EmptyLang!20951)))

(declare-fun b!7822210 () Bool)

(declare-fun c!1439544 () Bool)

(assert (=> b!7822210 (= c!1439544 (nullable!9295 (regOne!42414 r2!6199)))))

(assert (=> b!7822210 (= e!4627908 e!4627905)))

(assert (= (and d!2349719 c!1439547) b!7822209))

(assert (= (and d!2349719 (not c!1439547)) b!7822202))

(assert (= (and b!7822202 c!1439545) b!7822204))

(assert (= (and b!7822202 (not c!1439545)) b!7822208))

(assert (= (and b!7822208 c!1439543) b!7822201))

(assert (= (and b!7822208 (not c!1439543)) b!7822203))

(assert (= (and b!7822203 c!1439546) b!7822205))

(assert (= (and b!7822203 (not c!1439546)) b!7822210))

(assert (= (and b!7822210 c!1439544) b!7822206))

(assert (= (and b!7822210 (not c!1439544)) b!7822207))

(assert (= (or b!7822206 b!7822207) bm!725538))

(assert (= (or b!7822205 bm!725538) bm!725536))

(assert (= (or b!7822201 bm!725536) bm!725535))

(assert (= (or b!7822201 b!7822206) bm!725537))

(assert (=> bm!725535 m!8245572))

(declare-fun m!8245794 () Bool)

(assert (=> bm!725535 m!8245794))

(assert (=> bm!725537 m!8245572))

(declare-fun m!8245796 () Bool)

(assert (=> bm!725537 m!8245796))

(declare-fun m!8245798 () Bool)

(assert (=> d!2349719 m!8245798))

(assert (=> d!2349719 m!8245452))

(assert (=> b!7822210 m!8245742))

(assert (=> b!7821794 d!2349719))

(assert (=> b!7821794 d!2349641))

(assert (=> b!7821794 d!2349715))

(assert (=> bm!725500 d!2349711))

(assert (=> b!7821663 d!2349643))

(assert (=> b!7821663 d!2349681))

(assert (=> b!7821962 d!2349699))

(assert (=> b!7821962 d!2349661))

(assert (=> b!7821942 d!2349645))

(assert (=> b!7821944 d!2349673))

(declare-fun d!2349721 () Bool)

(assert (=> d!2349721 (= (isEmpty!42283 s1!4101) ((_ is Nil!73664) s1!4101))))

(assert (=> d!2349637 d!2349721))

(assert (=> d!2349637 d!2349621))

(assert (=> bm!725501 d!2349721))

(assert (=> b!7821787 d!2349713))

(assert (=> b!7821787 d!2349715))

(declare-fun d!2349723 () Bool)

(declare-fun c!1439548 () Bool)

(assert (=> d!2349723 (= c!1439548 ((_ is Nil!73664) lt!2676578))))

(declare-fun e!4627909 () (InoxSet C!42228))

(assert (=> d!2349723 (= (content!15636 lt!2676578) e!4627909)))

(declare-fun b!7822211 () Bool)

(assert (=> b!7822211 (= e!4627909 ((as const (Array C!42228 Bool)) false))))

(declare-fun b!7822212 () Bool)

(assert (=> b!7822212 (= e!4627909 ((_ map or) (store ((as const (Array C!42228 Bool)) false) (h!80112 lt!2676578) true) (content!15636 (t!388523 lt!2676578))))))

(assert (= (and d!2349723 c!1439548) b!7822211))

(assert (= (and d!2349723 (not c!1439548)) b!7822212))

(declare-fun m!8245800 () Bool)

(assert (=> b!7822212 m!8245800))

(declare-fun m!8245802 () Bool)

(assert (=> b!7822212 m!8245802))

(assert (=> d!2349599 d!2349723))

(declare-fun d!2349725 () Bool)

(declare-fun c!1439549 () Bool)

(assert (=> d!2349725 (= c!1439549 ((_ is Nil!73664) s1Rec!453))))

(declare-fun e!4627910 () (InoxSet C!42228))

(assert (=> d!2349725 (= (content!15636 s1Rec!453) e!4627910)))

(declare-fun b!7822213 () Bool)

(assert (=> b!7822213 (= e!4627910 ((as const (Array C!42228 Bool)) false))))

(declare-fun b!7822214 () Bool)

(assert (=> b!7822214 (= e!4627910 ((_ map or) (store ((as const (Array C!42228 Bool)) false) (h!80112 s1Rec!453) true) (content!15636 (t!388523 s1Rec!453))))))

(assert (= (and d!2349725 c!1439549) b!7822213))

(assert (= (and d!2349725 (not c!1439549)) b!7822214))

(declare-fun m!8245804 () Bool)

(assert (=> b!7822214 m!8245804))

(assert (=> b!7822214 m!8245694))

(assert (=> d!2349599 d!2349725))

(declare-fun d!2349727 () Bool)

(declare-fun c!1439550 () Bool)

(assert (=> d!2349727 (= c!1439550 ((_ is Nil!73664) s2Rec!453))))

(declare-fun e!4627911 () (InoxSet C!42228))

(assert (=> d!2349727 (= (content!15636 s2Rec!453) e!4627911)))

(declare-fun b!7822215 () Bool)

(assert (=> b!7822215 (= e!4627911 ((as const (Array C!42228 Bool)) false))))

(declare-fun b!7822216 () Bool)

(assert (=> b!7822216 (= e!4627911 ((_ map or) (store ((as const (Array C!42228 Bool)) false) (h!80112 s2Rec!453) true) (content!15636 (t!388523 s2Rec!453))))))

(assert (= (and d!2349727 c!1439550) b!7822215))

(assert (= (and d!2349727 (not c!1439550)) b!7822216))

(declare-fun m!8245806 () Bool)

(assert (=> b!7822216 m!8245806))

(declare-fun m!8245808 () Bool)

(assert (=> b!7822216 m!8245808))

(assert (=> d!2349599 d!2349727))

(declare-fun d!2349729 () Bool)

(declare-fun lt!2676624 () Int)

(assert (=> d!2349729 (>= lt!2676624 0)))

(declare-fun e!4627912 () Int)

(assert (=> d!2349729 (= lt!2676624 e!4627912)))

(declare-fun c!1439551 () Bool)

(assert (=> d!2349729 (= c!1439551 ((_ is Nil!73664) (t!388523 s1Rec!453)))))

(assert (=> d!2349729 (= (size!42751 (t!388523 s1Rec!453)) lt!2676624)))

(declare-fun b!7822217 () Bool)

(assert (=> b!7822217 (= e!4627912 0)))

(declare-fun b!7822218 () Bool)

(assert (=> b!7822218 (= e!4627912 (+ 1 (size!42751 (t!388523 (t!388523 s1Rec!453)))))))

(assert (= (and d!2349729 c!1439551) b!7822217))

(assert (= (and d!2349729 (not c!1439551)) b!7822218))

(declare-fun m!8245810 () Bool)

(assert (=> b!7822218 m!8245810))

(assert (=> b!7821958 d!2349729))

(declare-fun b!7822219 () Bool)

(declare-fun e!4627915 () Bool)

(declare-fun e!4627918 () Bool)

(assert (=> b!7822219 (= e!4627915 e!4627918)))

(declare-fun c!1439552 () Bool)

(assert (=> b!7822219 (= c!1439552 ((_ is Union!20951) (ite c!1439475 (reg!21280 r2!6199) (ite c!1439474 (regTwo!42415 r2!6199) (regOne!42414 r2!6199)))))))

(declare-fun b!7822220 () Bool)

(declare-fun e!4627914 () Bool)

(assert (=> b!7822220 (= e!4627915 e!4627914)))

(declare-fun res!3113536 () Bool)

(assert (=> b!7822220 (= res!3113536 (not (nullable!9295 (reg!21280 (ite c!1439475 (reg!21280 r2!6199) (ite c!1439474 (regTwo!42415 r2!6199) (regOne!42414 r2!6199)))))))))

(assert (=> b!7822220 (=> (not res!3113536) (not e!4627914))))

(declare-fun b!7822221 () Bool)

(declare-fun e!4627916 () Bool)

(assert (=> b!7822221 (= e!4627916 e!4627915)))

(declare-fun c!1439553 () Bool)

(assert (=> b!7822221 (= c!1439553 ((_ is Star!20951) (ite c!1439475 (reg!21280 r2!6199) (ite c!1439474 (regTwo!42415 r2!6199) (regOne!42414 r2!6199)))))))

(declare-fun b!7822222 () Bool)

(declare-fun res!3113535 () Bool)

(declare-fun e!4627913 () Bool)

(assert (=> b!7822222 (=> res!3113535 e!4627913)))

(assert (=> b!7822222 (= res!3113535 (not ((_ is Concat!29796) (ite c!1439475 (reg!21280 r2!6199) (ite c!1439474 (regTwo!42415 r2!6199) (regOne!42414 r2!6199))))))))

(assert (=> b!7822222 (= e!4627918 e!4627913)))

(declare-fun bm!725539 () Bool)

(declare-fun call!725545 () Bool)

(declare-fun call!725544 () Bool)

(assert (=> bm!725539 (= call!725545 call!725544)))

(declare-fun b!7822223 () Bool)

(declare-fun e!4627919 () Bool)

(declare-fun call!725546 () Bool)

(assert (=> b!7822223 (= e!4627919 call!725546)))

(declare-fun b!7822225 () Bool)

(declare-fun res!3113538 () Bool)

(declare-fun e!4627917 () Bool)

(assert (=> b!7822225 (=> (not res!3113538) (not e!4627917))))

(assert (=> b!7822225 (= res!3113538 call!725546)))

(assert (=> b!7822225 (= e!4627918 e!4627917)))

(declare-fun b!7822226 () Bool)

(assert (=> b!7822226 (= e!4627913 e!4627919)))

(declare-fun res!3113537 () Bool)

(assert (=> b!7822226 (=> (not res!3113537) (not e!4627919))))

(assert (=> b!7822226 (= res!3113537 call!725545)))

(declare-fun bm!725540 () Bool)

(assert (=> bm!725540 (= call!725546 (validRegex!11365 (ite c!1439552 (regOne!42415 (ite c!1439475 (reg!21280 r2!6199) (ite c!1439474 (regTwo!42415 r2!6199) (regOne!42414 r2!6199)))) (regTwo!42414 (ite c!1439475 (reg!21280 r2!6199) (ite c!1439474 (regTwo!42415 r2!6199) (regOne!42414 r2!6199)))))))))

(declare-fun b!7822224 () Bool)

(assert (=> b!7822224 (= e!4627917 call!725545)))

(declare-fun d!2349731 () Bool)

(declare-fun res!3113534 () Bool)

(assert (=> d!2349731 (=> res!3113534 e!4627916)))

(assert (=> d!2349731 (= res!3113534 ((_ is ElementMatch!20951) (ite c!1439475 (reg!21280 r2!6199) (ite c!1439474 (regTwo!42415 r2!6199) (regOne!42414 r2!6199)))))))

(assert (=> d!2349731 (= (validRegex!11365 (ite c!1439475 (reg!21280 r2!6199) (ite c!1439474 (regTwo!42415 r2!6199) (regOne!42414 r2!6199)))) e!4627916)))

(declare-fun bm!725541 () Bool)

(assert (=> bm!725541 (= call!725544 (validRegex!11365 (ite c!1439553 (reg!21280 (ite c!1439475 (reg!21280 r2!6199) (ite c!1439474 (regTwo!42415 r2!6199) (regOne!42414 r2!6199)))) (ite c!1439552 (regTwo!42415 (ite c!1439475 (reg!21280 r2!6199) (ite c!1439474 (regTwo!42415 r2!6199) (regOne!42414 r2!6199)))) (regOne!42414 (ite c!1439475 (reg!21280 r2!6199) (ite c!1439474 (regTwo!42415 r2!6199) (regOne!42414 r2!6199))))))))))

(declare-fun b!7822227 () Bool)

(assert (=> b!7822227 (= e!4627914 call!725544)))

(assert (= (and d!2349731 (not res!3113534)) b!7822221))

(assert (= (and b!7822221 c!1439553) b!7822220))

(assert (= (and b!7822221 (not c!1439553)) b!7822219))

(assert (= (and b!7822220 res!3113536) b!7822227))

(assert (= (and b!7822219 c!1439552) b!7822225))

(assert (= (and b!7822219 (not c!1439552)) b!7822222))

(assert (= (and b!7822225 res!3113538) b!7822224))

(assert (= (and b!7822222 (not res!3113535)) b!7822226))

(assert (= (and b!7822226 res!3113537) b!7822223))

(assert (= (or b!7822224 b!7822226) bm!725539))

(assert (= (or b!7822225 b!7822223) bm!725540))

(assert (= (or b!7822227 bm!725539) bm!725541))

(declare-fun m!8245812 () Bool)

(assert (=> b!7822220 m!8245812))

(declare-fun m!8245814 () Bool)

(assert (=> bm!725540 m!8245814))

(declare-fun m!8245816 () Bool)

(assert (=> bm!725541 m!8245816))

(assert (=> bm!725499 d!2349731))

(assert (=> b!7821968 d!2349681))

(declare-fun d!2349733 () Bool)

(assert (=> d!2349733 (= (isEmpty!42283 s2Rec!453) ((_ is Nil!73664) s2Rec!453))))

(assert (=> d!2349601 d!2349733))

(assert (=> d!2349601 d!2349627))

(assert (=> b!7821966 d!2349683))

(assert (=> bm!725480 d!2349733))

(declare-fun b!7822230 () Bool)

(declare-fun e!4627920 () Bool)

(declare-fun tp!2308707 () Bool)

(assert (=> b!7822230 (= e!4627920 tp!2308707)))

(declare-fun b!7822228 () Bool)

(assert (=> b!7822228 (= e!4627920 tp_is_empty!52257)))

(declare-fun b!7822231 () Bool)

(declare-fun tp!2308710 () Bool)

(declare-fun tp!2308706 () Bool)

(assert (=> b!7822231 (= e!4627920 (and tp!2308710 tp!2308706))))

(declare-fun b!7822229 () Bool)

(declare-fun tp!2308708 () Bool)

(declare-fun tp!2308709 () Bool)

(assert (=> b!7822229 (= e!4627920 (and tp!2308708 tp!2308709))))

(assert (=> b!7822003 (= tp!2308670 e!4627920)))

(assert (= (and b!7822003 ((_ is ElementMatch!20951) (reg!21280 (reg!21280 r1!6261)))) b!7822228))

(assert (= (and b!7822003 ((_ is Concat!29796) (reg!21280 (reg!21280 r1!6261)))) b!7822229))

(assert (= (and b!7822003 ((_ is Star!20951) (reg!21280 (reg!21280 r1!6261)))) b!7822230))

(assert (= (and b!7822003 ((_ is Union!20951) (reg!21280 (reg!21280 r1!6261)))) b!7822231))

(declare-fun b!7822234 () Bool)

(declare-fun e!4627921 () Bool)

(declare-fun tp!2308712 () Bool)

(assert (=> b!7822234 (= e!4627921 tp!2308712)))

(declare-fun b!7822232 () Bool)

(assert (=> b!7822232 (= e!4627921 tp_is_empty!52257)))

(declare-fun b!7822235 () Bool)

(declare-fun tp!2308715 () Bool)

(declare-fun tp!2308711 () Bool)

(assert (=> b!7822235 (= e!4627921 (and tp!2308715 tp!2308711))))

(declare-fun b!7822233 () Bool)

(declare-fun tp!2308713 () Bool)

(declare-fun tp!2308714 () Bool)

(assert (=> b!7822233 (= e!4627921 (and tp!2308713 tp!2308714))))

(assert (=> b!7822002 (= tp!2308671 e!4627921)))

(assert (= (and b!7822002 ((_ is ElementMatch!20951) (regOne!42414 (reg!21280 r1!6261)))) b!7822232))

(assert (= (and b!7822002 ((_ is Concat!29796) (regOne!42414 (reg!21280 r1!6261)))) b!7822233))

(assert (= (and b!7822002 ((_ is Star!20951) (regOne!42414 (reg!21280 r1!6261)))) b!7822234))

(assert (= (and b!7822002 ((_ is Union!20951) (regOne!42414 (reg!21280 r1!6261)))) b!7822235))

(declare-fun b!7822238 () Bool)

(declare-fun e!4627922 () Bool)

(declare-fun tp!2308717 () Bool)

(assert (=> b!7822238 (= e!4627922 tp!2308717)))

(declare-fun b!7822236 () Bool)

(assert (=> b!7822236 (= e!4627922 tp_is_empty!52257)))

(declare-fun b!7822239 () Bool)

(declare-fun tp!2308720 () Bool)

(declare-fun tp!2308716 () Bool)

(assert (=> b!7822239 (= e!4627922 (and tp!2308720 tp!2308716))))

(declare-fun b!7822237 () Bool)

(declare-fun tp!2308718 () Bool)

(declare-fun tp!2308719 () Bool)

(assert (=> b!7822237 (= e!4627922 (and tp!2308718 tp!2308719))))

(assert (=> b!7822002 (= tp!2308672 e!4627922)))

(assert (= (and b!7822002 ((_ is ElementMatch!20951) (regTwo!42414 (reg!21280 r1!6261)))) b!7822236))

(assert (= (and b!7822002 ((_ is Concat!29796) (regTwo!42414 (reg!21280 r1!6261)))) b!7822237))

(assert (= (and b!7822002 ((_ is Star!20951) (regTwo!42414 (reg!21280 r1!6261)))) b!7822238))

(assert (= (and b!7822002 ((_ is Union!20951) (regTwo!42414 (reg!21280 r1!6261)))) b!7822239))

(declare-fun b!7822242 () Bool)

(declare-fun e!4627923 () Bool)

(declare-fun tp!2308722 () Bool)

(assert (=> b!7822242 (= e!4627923 tp!2308722)))

(declare-fun b!7822240 () Bool)

(assert (=> b!7822240 (= e!4627923 tp_is_empty!52257)))

(declare-fun b!7822243 () Bool)

(declare-fun tp!2308725 () Bool)

(declare-fun tp!2308721 () Bool)

(assert (=> b!7822243 (= e!4627923 (and tp!2308725 tp!2308721))))

(declare-fun b!7822241 () Bool)

(declare-fun tp!2308723 () Bool)

(declare-fun tp!2308724 () Bool)

(assert (=> b!7822241 (= e!4627923 (and tp!2308723 tp!2308724))))

(assert (=> b!7822004 (= tp!2308673 e!4627923)))

(assert (= (and b!7822004 ((_ is ElementMatch!20951) (regOne!42415 (reg!21280 r1!6261)))) b!7822240))

(assert (= (and b!7822004 ((_ is Concat!29796) (regOne!42415 (reg!21280 r1!6261)))) b!7822241))

(assert (= (and b!7822004 ((_ is Star!20951) (regOne!42415 (reg!21280 r1!6261)))) b!7822242))

(assert (= (and b!7822004 ((_ is Union!20951) (regOne!42415 (reg!21280 r1!6261)))) b!7822243))

(declare-fun b!7822250 () Bool)

(declare-fun e!4627927 () Bool)

(declare-fun tp!2308727 () Bool)

(assert (=> b!7822250 (= e!4627927 tp!2308727)))

(declare-fun b!7822248 () Bool)

(assert (=> b!7822248 (= e!4627927 tp_is_empty!52257)))

(declare-fun b!7822251 () Bool)

(declare-fun tp!2308730 () Bool)

(declare-fun tp!2308726 () Bool)

(assert (=> b!7822251 (= e!4627927 (and tp!2308730 tp!2308726))))

(declare-fun b!7822249 () Bool)

(declare-fun tp!2308728 () Bool)

(declare-fun tp!2308729 () Bool)

(assert (=> b!7822249 (= e!4627927 (and tp!2308728 tp!2308729))))

(assert (=> b!7822004 (= tp!2308669 e!4627927)))

(assert (= (and b!7822004 ((_ is ElementMatch!20951) (regTwo!42415 (reg!21280 r1!6261)))) b!7822248))

(assert (= (and b!7822004 ((_ is Concat!29796) (regTwo!42415 (reg!21280 r1!6261)))) b!7822249))

(assert (= (and b!7822004 ((_ is Star!20951) (regTwo!42415 (reg!21280 r1!6261)))) b!7822250))

(assert (= (and b!7822004 ((_ is Union!20951) (regTwo!42415 (reg!21280 r1!6261)))) b!7822251))

(declare-fun b!7822254 () Bool)

(declare-fun e!4627928 () Bool)

(declare-fun tp!2308732 () Bool)

(assert (=> b!7822254 (= e!4627928 tp!2308732)))

(declare-fun b!7822252 () Bool)

(assert (=> b!7822252 (= e!4627928 tp_is_empty!52257)))

(declare-fun b!7822255 () Bool)

(declare-fun tp!2308735 () Bool)

(declare-fun tp!2308731 () Bool)

(assert (=> b!7822255 (= e!4627928 (and tp!2308735 tp!2308731))))

(declare-fun b!7822253 () Bool)

(declare-fun tp!2308733 () Bool)

(declare-fun tp!2308734 () Bool)

(assert (=> b!7822253 (= e!4627928 (and tp!2308733 tp!2308734))))

(assert (=> b!7821995 (= tp!2308660 e!4627928)))

(assert (= (and b!7821995 ((_ is ElementMatch!20951) (reg!21280 (regOne!42415 r2!6199)))) b!7822252))

(assert (= (and b!7821995 ((_ is Concat!29796) (reg!21280 (regOne!42415 r2!6199)))) b!7822253))

(assert (= (and b!7821995 ((_ is Star!20951) (reg!21280 (regOne!42415 r2!6199)))) b!7822254))

(assert (= (and b!7821995 ((_ is Union!20951) (reg!21280 (regOne!42415 r2!6199)))) b!7822255))

(declare-fun b!7822258 () Bool)

(declare-fun e!4627929 () Bool)

(declare-fun tp!2308737 () Bool)

(assert (=> b!7822258 (= e!4627929 tp!2308737)))

(declare-fun b!7822256 () Bool)

(assert (=> b!7822256 (= e!4627929 tp_is_empty!52257)))

(declare-fun b!7822259 () Bool)

(declare-fun tp!2308740 () Bool)

(declare-fun tp!2308736 () Bool)

(assert (=> b!7822259 (= e!4627929 (and tp!2308740 tp!2308736))))

(declare-fun b!7822257 () Bool)

(declare-fun tp!2308738 () Bool)

(declare-fun tp!2308739 () Bool)

(assert (=> b!7822257 (= e!4627929 (and tp!2308738 tp!2308739))))

(assert (=> b!7821994 (= tp!2308661 e!4627929)))

(assert (= (and b!7821994 ((_ is ElementMatch!20951) (regOne!42414 (regOne!42415 r2!6199)))) b!7822256))

(assert (= (and b!7821994 ((_ is Concat!29796) (regOne!42414 (regOne!42415 r2!6199)))) b!7822257))

(assert (= (and b!7821994 ((_ is Star!20951) (regOne!42414 (regOne!42415 r2!6199)))) b!7822258))

(assert (= (and b!7821994 ((_ is Union!20951) (regOne!42414 (regOne!42415 r2!6199)))) b!7822259))

(declare-fun b!7822262 () Bool)

(declare-fun e!4627930 () Bool)

(declare-fun tp!2308742 () Bool)

(assert (=> b!7822262 (= e!4627930 tp!2308742)))

(declare-fun b!7822260 () Bool)

(assert (=> b!7822260 (= e!4627930 tp_is_empty!52257)))

(declare-fun b!7822263 () Bool)

(declare-fun tp!2308745 () Bool)

(declare-fun tp!2308741 () Bool)

(assert (=> b!7822263 (= e!4627930 (and tp!2308745 tp!2308741))))

(declare-fun b!7822261 () Bool)

(declare-fun tp!2308743 () Bool)

(declare-fun tp!2308744 () Bool)

(assert (=> b!7822261 (= e!4627930 (and tp!2308743 tp!2308744))))

(assert (=> b!7821994 (= tp!2308662 e!4627930)))

(assert (= (and b!7821994 ((_ is ElementMatch!20951) (regTwo!42414 (regOne!42415 r2!6199)))) b!7822260))

(assert (= (and b!7821994 ((_ is Concat!29796) (regTwo!42414 (regOne!42415 r2!6199)))) b!7822261))

(assert (= (and b!7821994 ((_ is Star!20951) (regTwo!42414 (regOne!42415 r2!6199)))) b!7822262))

(assert (= (and b!7821994 ((_ is Union!20951) (regTwo!42414 (regOne!42415 r2!6199)))) b!7822263))

(declare-fun b!7822266 () Bool)

(declare-fun e!4627931 () Bool)

(declare-fun tp!2308747 () Bool)

(assert (=> b!7822266 (= e!4627931 tp!2308747)))

(declare-fun b!7822264 () Bool)

(assert (=> b!7822264 (= e!4627931 tp_is_empty!52257)))

(declare-fun b!7822267 () Bool)

(declare-fun tp!2308750 () Bool)

(declare-fun tp!2308746 () Bool)

(assert (=> b!7822267 (= e!4627931 (and tp!2308750 tp!2308746))))

(declare-fun b!7822265 () Bool)

(declare-fun tp!2308748 () Bool)

(declare-fun tp!2308749 () Bool)

(assert (=> b!7822265 (= e!4627931 (and tp!2308748 tp!2308749))))

(assert (=> b!7821986 (= tp!2308651 e!4627931)))

(assert (= (and b!7821986 ((_ is ElementMatch!20951) (regOne!42414 (regOne!42414 r1!6261)))) b!7822264))

(assert (= (and b!7821986 ((_ is Concat!29796) (regOne!42414 (regOne!42414 r1!6261)))) b!7822265))

(assert (= (and b!7821986 ((_ is Star!20951) (regOne!42414 (regOne!42414 r1!6261)))) b!7822266))

(assert (= (and b!7821986 ((_ is Union!20951) (regOne!42414 (regOne!42414 r1!6261)))) b!7822267))

(declare-fun b!7822270 () Bool)

(declare-fun e!4627932 () Bool)

(declare-fun tp!2308752 () Bool)

(assert (=> b!7822270 (= e!4627932 tp!2308752)))

(declare-fun b!7822268 () Bool)

(assert (=> b!7822268 (= e!4627932 tp_is_empty!52257)))

(declare-fun b!7822271 () Bool)

(declare-fun tp!2308755 () Bool)

(declare-fun tp!2308751 () Bool)

(assert (=> b!7822271 (= e!4627932 (and tp!2308755 tp!2308751))))

(declare-fun b!7822269 () Bool)

(declare-fun tp!2308753 () Bool)

(declare-fun tp!2308754 () Bool)

(assert (=> b!7822269 (= e!4627932 (and tp!2308753 tp!2308754))))

(assert (=> b!7821986 (= tp!2308652 e!4627932)))

(assert (= (and b!7821986 ((_ is ElementMatch!20951) (regTwo!42414 (regOne!42414 r1!6261)))) b!7822268))

(assert (= (and b!7821986 ((_ is Concat!29796) (regTwo!42414 (regOne!42414 r1!6261)))) b!7822269))

(assert (= (and b!7821986 ((_ is Star!20951) (regTwo!42414 (regOne!42414 r1!6261)))) b!7822270))

(assert (= (and b!7821986 ((_ is Union!20951) (regTwo!42414 (regOne!42414 r1!6261)))) b!7822271))

(declare-fun b!7822274 () Bool)

(declare-fun e!4627933 () Bool)

(declare-fun tp!2308757 () Bool)

(assert (=> b!7822274 (= e!4627933 tp!2308757)))

(declare-fun b!7822272 () Bool)

(assert (=> b!7822272 (= e!4627933 tp_is_empty!52257)))

(declare-fun b!7822275 () Bool)

(declare-fun tp!2308760 () Bool)

(declare-fun tp!2308756 () Bool)

(assert (=> b!7822275 (= e!4627933 (and tp!2308760 tp!2308756))))

(declare-fun b!7822273 () Bool)

(declare-fun tp!2308758 () Bool)

(declare-fun tp!2308759 () Bool)

(assert (=> b!7822273 (= e!4627933 (and tp!2308758 tp!2308759))))

(assert (=> b!7822026 (= tp!2308695 e!4627933)))

(assert (= (and b!7822026 ((_ is ElementMatch!20951) (reg!21280 (regOne!42414 r2!6199)))) b!7822272))

(assert (= (and b!7822026 ((_ is Concat!29796) (reg!21280 (regOne!42414 r2!6199)))) b!7822273))

(assert (= (and b!7822026 ((_ is Star!20951) (reg!21280 (regOne!42414 r2!6199)))) b!7822274))

(assert (= (and b!7822026 ((_ is Union!20951) (reg!21280 (regOne!42414 r2!6199)))) b!7822275))

(declare-fun b!7822280 () Bool)

(declare-fun e!4627935 () Bool)

(declare-fun tp!2308762 () Bool)

(assert (=> b!7822280 (= e!4627935 tp!2308762)))

(declare-fun b!7822278 () Bool)

(assert (=> b!7822278 (= e!4627935 tp_is_empty!52257)))

(declare-fun b!7822281 () Bool)

(declare-fun tp!2308765 () Bool)

(declare-fun tp!2308761 () Bool)

(assert (=> b!7822281 (= e!4627935 (and tp!2308765 tp!2308761))))

(declare-fun b!7822279 () Bool)

(declare-fun tp!2308763 () Bool)

(declare-fun tp!2308764 () Bool)

(assert (=> b!7822279 (= e!4627935 (and tp!2308763 tp!2308764))))

(assert (=> b!7822018 (= tp!2308687 e!4627935)))

(assert (= (and b!7822018 ((_ is ElementMatch!20951) (regOne!42415 (regOne!42415 r1!6261)))) b!7822278))

(assert (= (and b!7822018 ((_ is Concat!29796) (regOne!42415 (regOne!42415 r1!6261)))) b!7822279))

(assert (= (and b!7822018 ((_ is Star!20951) (regOne!42415 (regOne!42415 r1!6261)))) b!7822280))

(assert (= (and b!7822018 ((_ is Union!20951) (regOne!42415 (regOne!42415 r1!6261)))) b!7822281))

(declare-fun b!7822284 () Bool)

(declare-fun e!4627936 () Bool)

(declare-fun tp!2308767 () Bool)

(assert (=> b!7822284 (= e!4627936 tp!2308767)))

(declare-fun b!7822282 () Bool)

(assert (=> b!7822282 (= e!4627936 tp_is_empty!52257)))

(declare-fun b!7822285 () Bool)

(declare-fun tp!2308770 () Bool)

(declare-fun tp!2308766 () Bool)

(assert (=> b!7822285 (= e!4627936 (and tp!2308770 tp!2308766))))

(declare-fun b!7822283 () Bool)

(declare-fun tp!2308768 () Bool)

(declare-fun tp!2308769 () Bool)

(assert (=> b!7822283 (= e!4627936 (and tp!2308768 tp!2308769))))

(assert (=> b!7822018 (= tp!2308683 e!4627936)))

(assert (= (and b!7822018 ((_ is ElementMatch!20951) (regTwo!42415 (regOne!42415 r1!6261)))) b!7822282))

(assert (= (and b!7822018 ((_ is Concat!29796) (regTwo!42415 (regOne!42415 r1!6261)))) b!7822283))

(assert (= (and b!7822018 ((_ is Star!20951) (regTwo!42415 (regOne!42415 r1!6261)))) b!7822284))

(assert (= (and b!7822018 ((_ is Union!20951) (regTwo!42415 (regOne!42415 r1!6261)))) b!7822285))

(declare-fun b!7822288 () Bool)

(declare-fun e!4627937 () Bool)

(declare-fun tp!2308772 () Bool)

(assert (=> b!7822288 (= e!4627937 tp!2308772)))

(declare-fun b!7822286 () Bool)

(assert (=> b!7822286 (= e!4627937 tp_is_empty!52257)))

(declare-fun b!7822289 () Bool)

(declare-fun tp!2308775 () Bool)

(declare-fun tp!2308771 () Bool)

(assert (=> b!7822289 (= e!4627937 (and tp!2308775 tp!2308771))))

(declare-fun b!7822287 () Bool)

(declare-fun tp!2308773 () Bool)

(declare-fun tp!2308774 () Bool)

(assert (=> b!7822287 (= e!4627937 (and tp!2308773 tp!2308774))))

(assert (=> b!7822027 (= tp!2308698 e!4627937)))

(assert (= (and b!7822027 ((_ is ElementMatch!20951) (regOne!42415 (regOne!42414 r2!6199)))) b!7822286))

(assert (= (and b!7822027 ((_ is Concat!29796) (regOne!42415 (regOne!42414 r2!6199)))) b!7822287))

(assert (= (and b!7822027 ((_ is Star!20951) (regOne!42415 (regOne!42414 r2!6199)))) b!7822288))

(assert (= (and b!7822027 ((_ is Union!20951) (regOne!42415 (regOne!42414 r2!6199)))) b!7822289))

(declare-fun b!7822292 () Bool)

(declare-fun e!4627938 () Bool)

(declare-fun tp!2308777 () Bool)

(assert (=> b!7822292 (= e!4627938 tp!2308777)))

(declare-fun b!7822290 () Bool)

(assert (=> b!7822290 (= e!4627938 tp_is_empty!52257)))

(declare-fun b!7822293 () Bool)

(declare-fun tp!2308780 () Bool)

(declare-fun tp!2308776 () Bool)

(assert (=> b!7822293 (= e!4627938 (and tp!2308780 tp!2308776))))

(declare-fun b!7822291 () Bool)

(declare-fun tp!2308778 () Bool)

(declare-fun tp!2308779 () Bool)

(assert (=> b!7822291 (= e!4627938 (and tp!2308778 tp!2308779))))

(assert (=> b!7822027 (= tp!2308694 e!4627938)))

(assert (= (and b!7822027 ((_ is ElementMatch!20951) (regTwo!42415 (regOne!42414 r2!6199)))) b!7822290))

(assert (= (and b!7822027 ((_ is Concat!29796) (regTwo!42415 (regOne!42414 r2!6199)))) b!7822291))

(assert (= (and b!7822027 ((_ is Star!20951) (regTwo!42415 (regOne!42414 r2!6199)))) b!7822292))

(assert (= (and b!7822027 ((_ is Union!20951) (regTwo!42415 (regOne!42414 r2!6199)))) b!7822293))

(declare-fun b!7822296 () Bool)

(declare-fun e!4627939 () Bool)

(declare-fun tp!2308782 () Bool)

(assert (=> b!7822296 (= e!4627939 tp!2308782)))

(declare-fun b!7822294 () Bool)

(assert (=> b!7822294 (= e!4627939 tp_is_empty!52257)))

(declare-fun b!7822297 () Bool)

(declare-fun tp!2308785 () Bool)

(declare-fun tp!2308781 () Bool)

(assert (=> b!7822297 (= e!4627939 (and tp!2308785 tp!2308781))))

(declare-fun b!7822295 () Bool)

(declare-fun tp!2308783 () Bool)

(declare-fun tp!2308784 () Bool)

(assert (=> b!7822295 (= e!4627939 (and tp!2308783 tp!2308784))))

(assert (=> b!7822021 (= tp!2308689 e!4627939)))

(assert (= (and b!7822021 ((_ is ElementMatch!20951) (reg!21280 (regTwo!42415 r1!6261)))) b!7822294))

(assert (= (and b!7822021 ((_ is Concat!29796) (reg!21280 (regTwo!42415 r1!6261)))) b!7822295))

(assert (= (and b!7822021 ((_ is Star!20951) (reg!21280 (regTwo!42415 r1!6261)))) b!7822296))

(assert (= (and b!7822021 ((_ is Union!20951) (reg!21280 (regTwo!42415 r1!6261)))) b!7822297))

(declare-fun b!7822314 () Bool)

(declare-fun e!4627947 () Bool)

(declare-fun tp!2308787 () Bool)

(assert (=> b!7822314 (= e!4627947 tp!2308787)))

(declare-fun b!7822312 () Bool)

(assert (=> b!7822312 (= e!4627947 tp_is_empty!52257)))

(declare-fun b!7822315 () Bool)

(declare-fun tp!2308790 () Bool)

(declare-fun tp!2308786 () Bool)

(assert (=> b!7822315 (= e!4627947 (and tp!2308790 tp!2308786))))

(declare-fun b!7822313 () Bool)

(declare-fun tp!2308788 () Bool)

(declare-fun tp!2308789 () Bool)

(assert (=> b!7822313 (= e!4627947 (and tp!2308788 tp!2308789))))

(assert (=> b!7822020 (= tp!2308690 e!4627947)))

(assert (= (and b!7822020 ((_ is ElementMatch!20951) (regOne!42414 (regTwo!42415 r1!6261)))) b!7822312))

(assert (= (and b!7822020 ((_ is Concat!29796) (regOne!42414 (regTwo!42415 r1!6261)))) b!7822313))

(assert (= (and b!7822020 ((_ is Star!20951) (regOne!42414 (regTwo!42415 r1!6261)))) b!7822314))

(assert (= (and b!7822020 ((_ is Union!20951) (regOne!42414 (regTwo!42415 r1!6261)))) b!7822315))

(declare-fun b!7822318 () Bool)

(declare-fun e!4627948 () Bool)

(declare-fun tp!2308792 () Bool)

(assert (=> b!7822318 (= e!4627948 tp!2308792)))

(declare-fun b!7822316 () Bool)

(assert (=> b!7822316 (= e!4627948 tp_is_empty!52257)))

(declare-fun b!7822319 () Bool)

(declare-fun tp!2308795 () Bool)

(declare-fun tp!2308791 () Bool)

(assert (=> b!7822319 (= e!4627948 (and tp!2308795 tp!2308791))))

(declare-fun b!7822317 () Bool)

(declare-fun tp!2308793 () Bool)

(declare-fun tp!2308794 () Bool)

(assert (=> b!7822317 (= e!4627948 (and tp!2308793 tp!2308794))))

(assert (=> b!7822020 (= tp!2308691 e!4627948)))

(assert (= (and b!7822020 ((_ is ElementMatch!20951) (regTwo!42414 (regTwo!42415 r1!6261)))) b!7822316))

(assert (= (and b!7822020 ((_ is Concat!29796) (regTwo!42414 (regTwo!42415 r1!6261)))) b!7822317))

(assert (= (and b!7822020 ((_ is Star!20951) (regTwo!42414 (regTwo!42415 r1!6261)))) b!7822318))

(assert (= (and b!7822020 ((_ is Union!20951) (regTwo!42414 (regTwo!42415 r1!6261)))) b!7822319))

(declare-fun b!7822322 () Bool)

(declare-fun e!4627949 () Bool)

(declare-fun tp!2308797 () Bool)

(assert (=> b!7822322 (= e!4627949 tp!2308797)))

(declare-fun b!7822320 () Bool)

(assert (=> b!7822320 (= e!4627949 tp_is_empty!52257)))

(declare-fun b!7822323 () Bool)

(declare-fun tp!2308800 () Bool)

(declare-fun tp!2308796 () Bool)

(assert (=> b!7822323 (= e!4627949 (and tp!2308800 tp!2308796))))

(declare-fun b!7822321 () Bool)

(declare-fun tp!2308798 () Bool)

(declare-fun tp!2308799 () Bool)

(assert (=> b!7822321 (= e!4627949 (and tp!2308798 tp!2308799))))

(assert (=> b!7822013 (= tp!2308681 e!4627949)))

(assert (= (and b!7822013 ((_ is ElementMatch!20951) (regOne!42415 (reg!21280 r2!6199)))) b!7822320))

(assert (= (and b!7822013 ((_ is Concat!29796) (regOne!42415 (reg!21280 r2!6199)))) b!7822321))

(assert (= (and b!7822013 ((_ is Star!20951) (regOne!42415 (reg!21280 r2!6199)))) b!7822322))

(assert (= (and b!7822013 ((_ is Union!20951) (regOne!42415 (reg!21280 r2!6199)))) b!7822323))

(declare-fun b!7822326 () Bool)

(declare-fun e!4627950 () Bool)

(declare-fun tp!2308802 () Bool)

(assert (=> b!7822326 (= e!4627950 tp!2308802)))

(declare-fun b!7822324 () Bool)

(assert (=> b!7822324 (= e!4627950 tp_is_empty!52257)))

(declare-fun b!7822327 () Bool)

(declare-fun tp!2308805 () Bool)

(declare-fun tp!2308801 () Bool)

(assert (=> b!7822327 (= e!4627950 (and tp!2308805 tp!2308801))))

(declare-fun b!7822325 () Bool)

(declare-fun tp!2308803 () Bool)

(declare-fun tp!2308804 () Bool)

(assert (=> b!7822325 (= e!4627950 (and tp!2308803 tp!2308804))))

(assert (=> b!7822013 (= tp!2308677 e!4627950)))

(assert (= (and b!7822013 ((_ is ElementMatch!20951) (regTwo!42415 (reg!21280 r2!6199)))) b!7822324))

(assert (= (and b!7822013 ((_ is Concat!29796) (regTwo!42415 (reg!21280 r2!6199)))) b!7822325))

(assert (= (and b!7822013 ((_ is Star!20951) (regTwo!42415 (reg!21280 r2!6199)))) b!7822326))

(assert (= (and b!7822013 ((_ is Union!20951) (regTwo!42415 (reg!21280 r2!6199)))) b!7822327))

(declare-fun b!7822330 () Bool)

(declare-fun e!4627951 () Bool)

(declare-fun tp!2308807 () Bool)

(assert (=> b!7822330 (= e!4627951 tp!2308807)))

(declare-fun b!7822328 () Bool)

(assert (=> b!7822328 (= e!4627951 tp_is_empty!52257)))

(declare-fun b!7822331 () Bool)

(declare-fun tp!2308810 () Bool)

(declare-fun tp!2308806 () Bool)

(assert (=> b!7822331 (= e!4627951 (and tp!2308810 tp!2308806))))

(declare-fun b!7822329 () Bool)

(declare-fun tp!2308808 () Bool)

(declare-fun tp!2308809 () Bool)

(assert (=> b!7822329 (= e!4627951 (and tp!2308808 tp!2308809))))

(assert (=> b!7822022 (= tp!2308692 e!4627951)))

(assert (= (and b!7822022 ((_ is ElementMatch!20951) (regOne!42415 (regTwo!42415 r1!6261)))) b!7822328))

(assert (= (and b!7822022 ((_ is Concat!29796) (regOne!42415 (regTwo!42415 r1!6261)))) b!7822329))

(assert (= (and b!7822022 ((_ is Star!20951) (regOne!42415 (regTwo!42415 r1!6261)))) b!7822330))

(assert (= (and b!7822022 ((_ is Union!20951) (regOne!42415 (regTwo!42415 r1!6261)))) b!7822331))

(declare-fun b!7822334 () Bool)

(declare-fun e!4627952 () Bool)

(declare-fun tp!2308812 () Bool)

(assert (=> b!7822334 (= e!4627952 tp!2308812)))

(declare-fun b!7822332 () Bool)

(assert (=> b!7822332 (= e!4627952 tp_is_empty!52257)))

(declare-fun b!7822335 () Bool)

(declare-fun tp!2308815 () Bool)

(declare-fun tp!2308811 () Bool)

(assert (=> b!7822335 (= e!4627952 (and tp!2308815 tp!2308811))))

(declare-fun b!7822333 () Bool)

(declare-fun tp!2308813 () Bool)

(declare-fun tp!2308814 () Bool)

(assert (=> b!7822333 (= e!4627952 (and tp!2308813 tp!2308814))))

(assert (=> b!7822022 (= tp!2308688 e!4627952)))

(assert (= (and b!7822022 ((_ is ElementMatch!20951) (regTwo!42415 (regTwo!42415 r1!6261)))) b!7822332))

(assert (= (and b!7822022 ((_ is Concat!29796) (regTwo!42415 (regTwo!42415 r1!6261)))) b!7822333))

(assert (= (and b!7822022 ((_ is Star!20951) (regTwo!42415 (regTwo!42415 r1!6261)))) b!7822334))

(assert (= (and b!7822022 ((_ is Union!20951) (regTwo!42415 (regTwo!42415 r1!6261)))) b!7822335))

(declare-fun b!7822338 () Bool)

(declare-fun e!4627953 () Bool)

(declare-fun tp!2308817 () Bool)

(assert (=> b!7822338 (= e!4627953 tp!2308817)))

(declare-fun b!7822336 () Bool)

(assert (=> b!7822336 (= e!4627953 tp_is_empty!52257)))

(declare-fun b!7822339 () Bool)

(declare-fun tp!2308820 () Bool)

(declare-fun tp!2308816 () Bool)

(assert (=> b!7822339 (= e!4627953 (and tp!2308820 tp!2308816))))

(declare-fun b!7822337 () Bool)

(declare-fun tp!2308818 () Bool)

(declare-fun tp!2308819 () Bool)

(assert (=> b!7822337 (= e!4627953 (and tp!2308818 tp!2308819))))

(assert (=> b!7822029 (= tp!2308701 e!4627953)))

(assert (= (and b!7822029 ((_ is ElementMatch!20951) (regOne!42414 (regTwo!42414 r2!6199)))) b!7822336))

(assert (= (and b!7822029 ((_ is Concat!29796) (regOne!42414 (regTwo!42414 r2!6199)))) b!7822337))

(assert (= (and b!7822029 ((_ is Star!20951) (regOne!42414 (regTwo!42414 r2!6199)))) b!7822338))

(assert (= (and b!7822029 ((_ is Union!20951) (regOne!42414 (regTwo!42414 r2!6199)))) b!7822339))

(declare-fun b!7822342 () Bool)

(declare-fun e!4627954 () Bool)

(declare-fun tp!2308822 () Bool)

(assert (=> b!7822342 (= e!4627954 tp!2308822)))

(declare-fun b!7822340 () Bool)

(assert (=> b!7822340 (= e!4627954 tp_is_empty!52257)))

(declare-fun b!7822343 () Bool)

(declare-fun tp!2308825 () Bool)

(declare-fun tp!2308821 () Bool)

(assert (=> b!7822343 (= e!4627954 (and tp!2308825 tp!2308821))))

(declare-fun b!7822341 () Bool)

(declare-fun tp!2308823 () Bool)

(declare-fun tp!2308824 () Bool)

(assert (=> b!7822341 (= e!4627954 (and tp!2308823 tp!2308824))))

(assert (=> b!7822029 (= tp!2308702 e!4627954)))

(assert (= (and b!7822029 ((_ is ElementMatch!20951) (regTwo!42414 (regTwo!42414 r2!6199)))) b!7822340))

(assert (= (and b!7822029 ((_ is Concat!29796) (regTwo!42414 (regTwo!42414 r2!6199)))) b!7822341))

(assert (= (and b!7822029 ((_ is Star!20951) (regTwo!42414 (regTwo!42414 r2!6199)))) b!7822342))

(assert (= (and b!7822029 ((_ is Union!20951) (regTwo!42414 (regTwo!42414 r2!6199)))) b!7822343))

(declare-fun b!7822346 () Bool)

(declare-fun e!4627955 () Bool)

(declare-fun tp!2308827 () Bool)

(assert (=> b!7822346 (= e!4627955 tp!2308827)))

(declare-fun b!7822344 () Bool)

(assert (=> b!7822344 (= e!4627955 tp_is_empty!52257)))

(declare-fun b!7822347 () Bool)

(declare-fun tp!2308830 () Bool)

(declare-fun tp!2308826 () Bool)

(assert (=> b!7822347 (= e!4627955 (and tp!2308830 tp!2308826))))

(declare-fun b!7822345 () Bool)

(declare-fun tp!2308828 () Bool)

(declare-fun tp!2308829 () Bool)

(assert (=> b!7822345 (= e!4627955 (and tp!2308828 tp!2308829))))

(assert (=> b!7821996 (= tp!2308663 e!4627955)))

(assert (= (and b!7821996 ((_ is ElementMatch!20951) (regOne!42415 (regOne!42415 r2!6199)))) b!7822344))

(assert (= (and b!7821996 ((_ is Concat!29796) (regOne!42415 (regOne!42415 r2!6199)))) b!7822345))

(assert (= (and b!7821996 ((_ is Star!20951) (regOne!42415 (regOne!42415 r2!6199)))) b!7822346))

(assert (= (and b!7821996 ((_ is Union!20951) (regOne!42415 (regOne!42415 r2!6199)))) b!7822347))

(declare-fun b!7822350 () Bool)

(declare-fun e!4627956 () Bool)

(declare-fun tp!2308832 () Bool)

(assert (=> b!7822350 (= e!4627956 tp!2308832)))

(declare-fun b!7822348 () Bool)

(assert (=> b!7822348 (= e!4627956 tp_is_empty!52257)))

(declare-fun b!7822351 () Bool)

(declare-fun tp!2308835 () Bool)

(declare-fun tp!2308831 () Bool)

(assert (=> b!7822351 (= e!4627956 (and tp!2308835 tp!2308831))))

(declare-fun b!7822349 () Bool)

(declare-fun tp!2308833 () Bool)

(declare-fun tp!2308834 () Bool)

(assert (=> b!7822349 (= e!4627956 (and tp!2308833 tp!2308834))))

(assert (=> b!7821996 (= tp!2308659 e!4627956)))

(assert (= (and b!7821996 ((_ is ElementMatch!20951) (regTwo!42415 (regOne!42415 r2!6199)))) b!7822348))

(assert (= (and b!7821996 ((_ is Concat!29796) (regTwo!42415 (regOne!42415 r2!6199)))) b!7822349))

(assert (= (and b!7821996 ((_ is Star!20951) (regTwo!42415 (regOne!42415 r2!6199)))) b!7822350))

(assert (= (and b!7821996 ((_ is Union!20951) (regTwo!42415 (regOne!42415 r2!6199)))) b!7822351))

(declare-fun b!7822354 () Bool)

(declare-fun e!4627957 () Bool)

(declare-fun tp!2308837 () Bool)

(assert (=> b!7822354 (= e!4627957 tp!2308837)))

(declare-fun b!7822352 () Bool)

(assert (=> b!7822352 (= e!4627957 tp_is_empty!52257)))

(declare-fun b!7822355 () Bool)

(declare-fun tp!2308840 () Bool)

(declare-fun tp!2308836 () Bool)

(assert (=> b!7822355 (= e!4627957 (and tp!2308840 tp!2308836))))

(declare-fun b!7822353 () Bool)

(declare-fun tp!2308838 () Bool)

(declare-fun tp!2308839 () Bool)

(assert (=> b!7822353 (= e!4627957 (and tp!2308838 tp!2308839))))

(assert (=> b!7822011 (= tp!2308679 e!4627957)))

(assert (= (and b!7822011 ((_ is ElementMatch!20951) (regOne!42414 (reg!21280 r2!6199)))) b!7822352))

(assert (= (and b!7822011 ((_ is Concat!29796) (regOne!42414 (reg!21280 r2!6199)))) b!7822353))

(assert (= (and b!7822011 ((_ is Star!20951) (regOne!42414 (reg!21280 r2!6199)))) b!7822354))

(assert (= (and b!7822011 ((_ is Union!20951) (regOne!42414 (reg!21280 r2!6199)))) b!7822355))

(declare-fun b!7822358 () Bool)

(declare-fun e!4627958 () Bool)

(declare-fun tp!2308842 () Bool)

(assert (=> b!7822358 (= e!4627958 tp!2308842)))

(declare-fun b!7822356 () Bool)

(assert (=> b!7822356 (= e!4627958 tp_is_empty!52257)))

(declare-fun b!7822359 () Bool)

(declare-fun tp!2308845 () Bool)

(declare-fun tp!2308841 () Bool)

(assert (=> b!7822359 (= e!4627958 (and tp!2308845 tp!2308841))))

(declare-fun b!7822357 () Bool)

(declare-fun tp!2308843 () Bool)

(declare-fun tp!2308844 () Bool)

(assert (=> b!7822357 (= e!4627958 (and tp!2308843 tp!2308844))))

(assert (=> b!7822011 (= tp!2308680 e!4627958)))

(assert (= (and b!7822011 ((_ is ElementMatch!20951) (regTwo!42414 (reg!21280 r2!6199)))) b!7822356))

(assert (= (and b!7822011 ((_ is Concat!29796) (regTwo!42414 (reg!21280 r2!6199)))) b!7822357))

(assert (= (and b!7822011 ((_ is Star!20951) (regTwo!42414 (reg!21280 r2!6199)))) b!7822358))

(assert (= (and b!7822011 ((_ is Union!20951) (regTwo!42414 (reg!21280 r2!6199)))) b!7822359))

(declare-fun b!7822362 () Bool)

(declare-fun e!4627959 () Bool)

(declare-fun tp!2308847 () Bool)

(assert (=> b!7822362 (= e!4627959 tp!2308847)))

(declare-fun b!7822360 () Bool)

(assert (=> b!7822360 (= e!4627959 tp_is_empty!52257)))

(declare-fun b!7822363 () Bool)

(declare-fun tp!2308850 () Bool)

(declare-fun tp!2308846 () Bool)

(assert (=> b!7822363 (= e!4627959 (and tp!2308850 tp!2308846))))

(declare-fun b!7822361 () Bool)

(declare-fun tp!2308848 () Bool)

(declare-fun tp!2308849 () Bool)

(assert (=> b!7822361 (= e!4627959 (and tp!2308848 tp!2308849))))

(assert (=> b!7821988 (= tp!2308653 e!4627959)))

(assert (= (and b!7821988 ((_ is ElementMatch!20951) (regOne!42415 (regOne!42414 r1!6261)))) b!7822360))

(assert (= (and b!7821988 ((_ is Concat!29796) (regOne!42415 (regOne!42414 r1!6261)))) b!7822361))

(assert (= (and b!7821988 ((_ is Star!20951) (regOne!42415 (regOne!42414 r1!6261)))) b!7822362))

(assert (= (and b!7821988 ((_ is Union!20951) (regOne!42415 (regOne!42414 r1!6261)))) b!7822363))

(declare-fun b!7822366 () Bool)

(declare-fun e!4627960 () Bool)

(declare-fun tp!2308852 () Bool)

(assert (=> b!7822366 (= e!4627960 tp!2308852)))

(declare-fun b!7822364 () Bool)

(assert (=> b!7822364 (= e!4627960 tp_is_empty!52257)))

(declare-fun b!7822367 () Bool)

(declare-fun tp!2308855 () Bool)

(declare-fun tp!2308851 () Bool)

(assert (=> b!7822367 (= e!4627960 (and tp!2308855 tp!2308851))))

(declare-fun b!7822365 () Bool)

(declare-fun tp!2308853 () Bool)

(declare-fun tp!2308854 () Bool)

(assert (=> b!7822365 (= e!4627960 (and tp!2308853 tp!2308854))))

(assert (=> b!7821988 (= tp!2308649 e!4627960)))

(assert (= (and b!7821988 ((_ is ElementMatch!20951) (regTwo!42415 (regOne!42414 r1!6261)))) b!7822364))

(assert (= (and b!7821988 ((_ is Concat!29796) (regTwo!42415 (regOne!42414 r1!6261)))) b!7822365))

(assert (= (and b!7821988 ((_ is Star!20951) (regTwo!42415 (regOne!42414 r1!6261)))) b!7822366))

(assert (= (and b!7821988 ((_ is Union!20951) (regTwo!42415 (regOne!42414 r1!6261)))) b!7822367))

(declare-fun b!7822370 () Bool)

(declare-fun e!4627961 () Bool)

(declare-fun tp!2308857 () Bool)

(assert (=> b!7822370 (= e!4627961 tp!2308857)))

(declare-fun b!7822368 () Bool)

(assert (=> b!7822368 (= e!4627961 tp_is_empty!52257)))

(declare-fun b!7822371 () Bool)

(declare-fun tp!2308860 () Bool)

(declare-fun tp!2308856 () Bool)

(assert (=> b!7822371 (= e!4627961 (and tp!2308860 tp!2308856))))

(declare-fun b!7822369 () Bool)

(declare-fun tp!2308858 () Bool)

(declare-fun tp!2308859 () Bool)

(assert (=> b!7822369 (= e!4627961 (and tp!2308858 tp!2308859))))

(assert (=> b!7821987 (= tp!2308650 e!4627961)))

(assert (= (and b!7821987 ((_ is ElementMatch!20951) (reg!21280 (regOne!42414 r1!6261)))) b!7822368))

(assert (= (and b!7821987 ((_ is Concat!29796) (reg!21280 (regOne!42414 r1!6261)))) b!7822369))

(assert (= (and b!7821987 ((_ is Star!20951) (reg!21280 (regOne!42414 r1!6261)))) b!7822370))

(assert (= (and b!7821987 ((_ is Union!20951) (reg!21280 (regOne!42414 r1!6261)))) b!7822371))

(declare-fun b!7822374 () Bool)

(declare-fun e!4627962 () Bool)

(declare-fun tp!2308862 () Bool)

(assert (=> b!7822374 (= e!4627962 tp!2308862)))

(declare-fun b!7822372 () Bool)

(assert (=> b!7822372 (= e!4627962 tp_is_empty!52257)))

(declare-fun b!7822375 () Bool)

(declare-fun tp!2308865 () Bool)

(declare-fun tp!2308861 () Bool)

(assert (=> b!7822375 (= e!4627962 (and tp!2308865 tp!2308861))))

(declare-fun b!7822373 () Bool)

(declare-fun tp!2308863 () Bool)

(declare-fun tp!2308864 () Bool)

(assert (=> b!7822373 (= e!4627962 (and tp!2308863 tp!2308864))))

(assert (=> b!7822012 (= tp!2308678 e!4627962)))

(assert (= (and b!7822012 ((_ is ElementMatch!20951) (reg!21280 (reg!21280 r2!6199)))) b!7822372))

(assert (= (and b!7822012 ((_ is Concat!29796) (reg!21280 (reg!21280 r2!6199)))) b!7822373))

(assert (= (and b!7822012 ((_ is Star!20951) (reg!21280 (reg!21280 r2!6199)))) b!7822374))

(assert (= (and b!7822012 ((_ is Union!20951) (reg!21280 (reg!21280 r2!6199)))) b!7822375))

(declare-fun b!7822378 () Bool)

(declare-fun e!4627963 () Bool)

(declare-fun tp!2308867 () Bool)

(assert (=> b!7822378 (= e!4627963 tp!2308867)))

(declare-fun b!7822376 () Bool)

(assert (=> b!7822376 (= e!4627963 tp_is_empty!52257)))

(declare-fun b!7822379 () Bool)

(declare-fun tp!2308870 () Bool)

(declare-fun tp!2308866 () Bool)

(assert (=> b!7822379 (= e!4627963 (and tp!2308870 tp!2308866))))

(declare-fun b!7822377 () Bool)

(declare-fun tp!2308868 () Bool)

(declare-fun tp!2308869 () Bool)

(assert (=> b!7822377 (= e!4627963 (and tp!2308868 tp!2308869))))

(assert (=> b!7821998 (= tp!2308666 e!4627963)))

(assert (= (and b!7821998 ((_ is ElementMatch!20951) (regOne!42414 (regTwo!42415 r2!6199)))) b!7822376))

(assert (= (and b!7821998 ((_ is Concat!29796) (regOne!42414 (regTwo!42415 r2!6199)))) b!7822377))

(assert (= (and b!7821998 ((_ is Star!20951) (regOne!42414 (regTwo!42415 r2!6199)))) b!7822378))

(assert (= (and b!7821998 ((_ is Union!20951) (regOne!42414 (regTwo!42415 r2!6199)))) b!7822379))

(declare-fun b!7822382 () Bool)

(declare-fun e!4627964 () Bool)

(declare-fun tp!2308872 () Bool)

(assert (=> b!7822382 (= e!4627964 tp!2308872)))

(declare-fun b!7822380 () Bool)

(assert (=> b!7822380 (= e!4627964 tp_is_empty!52257)))

(declare-fun b!7822383 () Bool)

(declare-fun tp!2308875 () Bool)

(declare-fun tp!2308871 () Bool)

(assert (=> b!7822383 (= e!4627964 (and tp!2308875 tp!2308871))))

(declare-fun b!7822381 () Bool)

(declare-fun tp!2308873 () Bool)

(declare-fun tp!2308874 () Bool)

(assert (=> b!7822381 (= e!4627964 (and tp!2308873 tp!2308874))))

(assert (=> b!7821998 (= tp!2308667 e!4627964)))

(assert (= (and b!7821998 ((_ is ElementMatch!20951) (regTwo!42414 (regTwo!42415 r2!6199)))) b!7822380))

(assert (= (and b!7821998 ((_ is Concat!29796) (regTwo!42414 (regTwo!42415 r2!6199)))) b!7822381))

(assert (= (and b!7821998 ((_ is Star!20951) (regTwo!42414 (regTwo!42415 r2!6199)))) b!7822382))

(assert (= (and b!7821998 ((_ is Union!20951) (regTwo!42414 (regTwo!42415 r2!6199)))) b!7822383))

(declare-fun b!7822386 () Bool)

(declare-fun e!4627965 () Bool)

(declare-fun tp!2308877 () Bool)

(assert (=> b!7822386 (= e!4627965 tp!2308877)))

(declare-fun b!7822384 () Bool)

(assert (=> b!7822384 (= e!4627965 tp_is_empty!52257)))

(declare-fun b!7822387 () Bool)

(declare-fun tp!2308880 () Bool)

(declare-fun tp!2308876 () Bool)

(assert (=> b!7822387 (= e!4627965 (and tp!2308880 tp!2308876))))

(declare-fun b!7822385 () Bool)

(declare-fun tp!2308878 () Bool)

(declare-fun tp!2308879 () Bool)

(assert (=> b!7822385 (= e!4627965 (and tp!2308878 tp!2308879))))

(assert (=> b!7821990 (= tp!2308656 e!4627965)))

(assert (= (and b!7821990 ((_ is ElementMatch!20951) (regOne!42414 (regTwo!42414 r1!6261)))) b!7822384))

(assert (= (and b!7821990 ((_ is Concat!29796) (regOne!42414 (regTwo!42414 r1!6261)))) b!7822385))

(assert (= (and b!7821990 ((_ is Star!20951) (regOne!42414 (regTwo!42414 r1!6261)))) b!7822386))

(assert (= (and b!7821990 ((_ is Union!20951) (regOne!42414 (regTwo!42414 r1!6261)))) b!7822387))

(declare-fun b!7822390 () Bool)

(declare-fun e!4627966 () Bool)

(declare-fun tp!2308882 () Bool)

(assert (=> b!7822390 (= e!4627966 tp!2308882)))

(declare-fun b!7822388 () Bool)

(assert (=> b!7822388 (= e!4627966 tp_is_empty!52257)))

(declare-fun b!7822391 () Bool)

(declare-fun tp!2308885 () Bool)

(declare-fun tp!2308881 () Bool)

(assert (=> b!7822391 (= e!4627966 (and tp!2308885 tp!2308881))))

(declare-fun b!7822389 () Bool)

(declare-fun tp!2308883 () Bool)

(declare-fun tp!2308884 () Bool)

(assert (=> b!7822389 (= e!4627966 (and tp!2308883 tp!2308884))))

(assert (=> b!7821990 (= tp!2308657 e!4627966)))

(assert (= (and b!7821990 ((_ is ElementMatch!20951) (regTwo!42414 (regTwo!42414 r1!6261)))) b!7822388))

(assert (= (and b!7821990 ((_ is Concat!29796) (regTwo!42414 (regTwo!42414 r1!6261)))) b!7822389))

(assert (= (and b!7821990 ((_ is Star!20951) (regTwo!42414 (regTwo!42414 r1!6261)))) b!7822390))

(assert (= (and b!7821990 ((_ is Union!20951) (regTwo!42414 (regTwo!42414 r1!6261)))) b!7822391))

(declare-fun b!7822394 () Bool)

(declare-fun e!4627967 () Bool)

(declare-fun tp!2308887 () Bool)

(assert (=> b!7822394 (= e!4627967 tp!2308887)))

(declare-fun b!7822392 () Bool)

(assert (=> b!7822392 (= e!4627967 tp_is_empty!52257)))

(declare-fun b!7822395 () Bool)

(declare-fun tp!2308890 () Bool)

(declare-fun tp!2308886 () Bool)

(assert (=> b!7822395 (= e!4627967 (and tp!2308890 tp!2308886))))

(declare-fun b!7822393 () Bool)

(declare-fun tp!2308888 () Bool)

(declare-fun tp!2308889 () Bool)

(assert (=> b!7822393 (= e!4627967 (and tp!2308888 tp!2308889))))

(assert (=> b!7821991 (= tp!2308655 e!4627967)))

(assert (= (and b!7821991 ((_ is ElementMatch!20951) (reg!21280 (regTwo!42414 r1!6261)))) b!7822392))

(assert (= (and b!7821991 ((_ is Concat!29796) (reg!21280 (regTwo!42414 r1!6261)))) b!7822393))

(assert (= (and b!7821991 ((_ is Star!20951) (reg!21280 (regTwo!42414 r1!6261)))) b!7822394))

(assert (= (and b!7821991 ((_ is Union!20951) (reg!21280 (regTwo!42414 r1!6261)))) b!7822395))

(declare-fun b!7822396 () Bool)

(declare-fun e!4627968 () Bool)

(declare-fun tp!2308891 () Bool)

(assert (=> b!7822396 (= e!4627968 (and tp_is_empty!52257 tp!2308891))))

(assert (=> b!7822032 (= tp!2308704 e!4627968)))

(assert (= (and b!7822032 ((_ is Cons!73664) (t!388523 (t!388523 s1!4101)))) b!7822396))

(declare-fun b!7822399 () Bool)

(declare-fun e!4627969 () Bool)

(declare-fun tp!2308893 () Bool)

(assert (=> b!7822399 (= e!4627969 tp!2308893)))

(declare-fun b!7822397 () Bool)

(assert (=> b!7822397 (= e!4627969 tp_is_empty!52257)))

(declare-fun b!7822400 () Bool)

(declare-fun tp!2308896 () Bool)

(declare-fun tp!2308892 () Bool)

(assert (=> b!7822400 (= e!4627969 (and tp!2308896 tp!2308892))))

(declare-fun b!7822398 () Bool)

(declare-fun tp!2308894 () Bool)

(declare-fun tp!2308895 () Bool)

(assert (=> b!7822398 (= e!4627969 (and tp!2308894 tp!2308895))))

(assert (=> b!7821999 (= tp!2308665 e!4627969)))

(assert (= (and b!7821999 ((_ is ElementMatch!20951) (reg!21280 (regTwo!42415 r2!6199)))) b!7822397))

(assert (= (and b!7821999 ((_ is Concat!29796) (reg!21280 (regTwo!42415 r2!6199)))) b!7822398))

(assert (= (and b!7821999 ((_ is Star!20951) (reg!21280 (regTwo!42415 r2!6199)))) b!7822399))

(assert (= (and b!7821999 ((_ is Union!20951) (reg!21280 (regTwo!42415 r2!6199)))) b!7822400))

(declare-fun b!7822401 () Bool)

(declare-fun e!4627970 () Bool)

(declare-fun tp!2308897 () Bool)

(assert (=> b!7822401 (= e!4627970 (and tp_is_empty!52257 tp!2308897))))

(assert (=> b!7822014 (= tp!2308682 e!4627970)))

(assert (= (and b!7822014 ((_ is Cons!73664) (t!388523 (t!388523 s2!3721)))) b!7822401))

(declare-fun b!7822404 () Bool)

(declare-fun e!4627971 () Bool)

(declare-fun tp!2308899 () Bool)

(assert (=> b!7822404 (= e!4627971 tp!2308899)))

(declare-fun b!7822402 () Bool)

(assert (=> b!7822402 (= e!4627971 tp_is_empty!52257)))

(declare-fun b!7822405 () Bool)

(declare-fun tp!2308902 () Bool)

(declare-fun tp!2308898 () Bool)

(assert (=> b!7822405 (= e!4627971 (and tp!2308902 tp!2308898))))

(declare-fun b!7822403 () Bool)

(declare-fun tp!2308900 () Bool)

(declare-fun tp!2308901 () Bool)

(assert (=> b!7822403 (= e!4627971 (and tp!2308900 tp!2308901))))

(assert (=> b!7822031 (= tp!2308703 e!4627971)))

(assert (= (and b!7822031 ((_ is ElementMatch!20951) (regOne!42415 (regTwo!42414 r2!6199)))) b!7822402))

(assert (= (and b!7822031 ((_ is Concat!29796) (regOne!42415 (regTwo!42414 r2!6199)))) b!7822403))

(assert (= (and b!7822031 ((_ is Star!20951) (regOne!42415 (regTwo!42414 r2!6199)))) b!7822404))

(assert (= (and b!7822031 ((_ is Union!20951) (regOne!42415 (regTwo!42414 r2!6199)))) b!7822405))

(declare-fun b!7822408 () Bool)

(declare-fun e!4627972 () Bool)

(declare-fun tp!2308904 () Bool)

(assert (=> b!7822408 (= e!4627972 tp!2308904)))

(declare-fun b!7822406 () Bool)

(assert (=> b!7822406 (= e!4627972 tp_is_empty!52257)))

(declare-fun b!7822409 () Bool)

(declare-fun tp!2308907 () Bool)

(declare-fun tp!2308903 () Bool)

(assert (=> b!7822409 (= e!4627972 (and tp!2308907 tp!2308903))))

(declare-fun b!7822407 () Bool)

(declare-fun tp!2308905 () Bool)

(declare-fun tp!2308906 () Bool)

(assert (=> b!7822407 (= e!4627972 (and tp!2308905 tp!2308906))))

(assert (=> b!7822031 (= tp!2308699 e!4627972)))

(assert (= (and b!7822031 ((_ is ElementMatch!20951) (regTwo!42415 (regTwo!42414 r2!6199)))) b!7822406))

(assert (= (and b!7822031 ((_ is Concat!29796) (regTwo!42415 (regTwo!42414 r2!6199)))) b!7822407))

(assert (= (and b!7822031 ((_ is Star!20951) (regTwo!42415 (regTwo!42414 r2!6199)))) b!7822408))

(assert (= (and b!7822031 ((_ is Union!20951) (regTwo!42415 (regTwo!42414 r2!6199)))) b!7822409))

(declare-fun b!7822412 () Bool)

(declare-fun e!4627973 () Bool)

(declare-fun tp!2308909 () Bool)

(assert (=> b!7822412 (= e!4627973 tp!2308909)))

(declare-fun b!7822410 () Bool)

(assert (=> b!7822410 (= e!4627973 tp_is_empty!52257)))

(declare-fun b!7822413 () Bool)

(declare-fun tp!2308912 () Bool)

(declare-fun tp!2308908 () Bool)

(assert (=> b!7822413 (= e!4627973 (and tp!2308912 tp!2308908))))

(declare-fun b!7822411 () Bool)

(declare-fun tp!2308910 () Bool)

(declare-fun tp!2308911 () Bool)

(assert (=> b!7822411 (= e!4627973 (and tp!2308910 tp!2308911))))

(assert (=> b!7822030 (= tp!2308700 e!4627973)))

(assert (= (and b!7822030 ((_ is ElementMatch!20951) (reg!21280 (regTwo!42414 r2!6199)))) b!7822410))

(assert (= (and b!7822030 ((_ is Concat!29796) (reg!21280 (regTwo!42414 r2!6199)))) b!7822411))

(assert (= (and b!7822030 ((_ is Star!20951) (reg!21280 (regTwo!42414 r2!6199)))) b!7822412))

(assert (= (and b!7822030 ((_ is Union!20951) (reg!21280 (regTwo!42414 r2!6199)))) b!7822413))

(declare-fun b!7822414 () Bool)

(declare-fun e!4627974 () Bool)

(declare-fun tp!2308913 () Bool)

(assert (=> b!7822414 (= e!4627974 (and tp_is_empty!52257 tp!2308913))))

(assert (=> b!7822023 (= tp!2308693 e!4627974)))

(assert (= (and b!7822023 ((_ is Cons!73664) (t!388523 (t!388523 s2Rec!453)))) b!7822414))

(declare-fun b!7822417 () Bool)

(declare-fun e!4627975 () Bool)

(declare-fun tp!2308915 () Bool)

(assert (=> b!7822417 (= e!4627975 tp!2308915)))

(declare-fun b!7822415 () Bool)

(assert (=> b!7822415 (= e!4627975 tp_is_empty!52257)))

(declare-fun b!7822418 () Bool)

(declare-fun tp!2308918 () Bool)

(declare-fun tp!2308914 () Bool)

(assert (=> b!7822418 (= e!4627975 (and tp!2308918 tp!2308914))))

(declare-fun b!7822416 () Bool)

(declare-fun tp!2308916 () Bool)

(declare-fun tp!2308917 () Bool)

(assert (=> b!7822416 (= e!4627975 (and tp!2308916 tp!2308917))))

(assert (=> b!7822016 (= tp!2308685 e!4627975)))

(assert (= (and b!7822016 ((_ is ElementMatch!20951) (regOne!42414 (regOne!42415 r1!6261)))) b!7822415))

(assert (= (and b!7822016 ((_ is Concat!29796) (regOne!42414 (regOne!42415 r1!6261)))) b!7822416))

(assert (= (and b!7822016 ((_ is Star!20951) (regOne!42414 (regOne!42415 r1!6261)))) b!7822417))

(assert (= (and b!7822016 ((_ is Union!20951) (regOne!42414 (regOne!42415 r1!6261)))) b!7822418))

(declare-fun b!7822421 () Bool)

(declare-fun e!4627976 () Bool)

(declare-fun tp!2308920 () Bool)

(assert (=> b!7822421 (= e!4627976 tp!2308920)))

(declare-fun b!7822419 () Bool)

(assert (=> b!7822419 (= e!4627976 tp_is_empty!52257)))

(declare-fun b!7822422 () Bool)

(declare-fun tp!2308923 () Bool)

(declare-fun tp!2308919 () Bool)

(assert (=> b!7822422 (= e!4627976 (and tp!2308923 tp!2308919))))

(declare-fun b!7822420 () Bool)

(declare-fun tp!2308921 () Bool)

(declare-fun tp!2308922 () Bool)

(assert (=> b!7822420 (= e!4627976 (and tp!2308921 tp!2308922))))

(assert (=> b!7822016 (= tp!2308686 e!4627976)))

(assert (= (and b!7822016 ((_ is ElementMatch!20951) (regTwo!42414 (regOne!42415 r1!6261)))) b!7822419))

(assert (= (and b!7822016 ((_ is Concat!29796) (regTwo!42414 (regOne!42415 r1!6261)))) b!7822420))

(assert (= (and b!7822016 ((_ is Star!20951) (regTwo!42414 (regOne!42415 r1!6261)))) b!7822421))

(assert (= (and b!7822016 ((_ is Union!20951) (regTwo!42414 (regOne!42415 r1!6261)))) b!7822422))

(declare-fun b!7822423 () Bool)

(declare-fun e!4627977 () Bool)

(declare-fun tp!2308924 () Bool)

(assert (=> b!7822423 (= e!4627977 (and tp_is_empty!52257 tp!2308924))))

(assert (=> b!7822009 (= tp!2308676 e!4627977)))

(assert (= (and b!7822009 ((_ is Cons!73664) (t!388523 (t!388523 s1Rec!453)))) b!7822423))

(declare-fun b!7822426 () Bool)

(declare-fun e!4627978 () Bool)

(declare-fun tp!2308926 () Bool)

(assert (=> b!7822426 (= e!4627978 tp!2308926)))

(declare-fun b!7822424 () Bool)

(assert (=> b!7822424 (= e!4627978 tp_is_empty!52257)))

(declare-fun b!7822427 () Bool)

(declare-fun tp!2308929 () Bool)

(declare-fun tp!2308925 () Bool)

(assert (=> b!7822427 (= e!4627978 (and tp!2308929 tp!2308925))))

(declare-fun b!7822425 () Bool)

(declare-fun tp!2308927 () Bool)

(declare-fun tp!2308928 () Bool)

(assert (=> b!7822425 (= e!4627978 (and tp!2308927 tp!2308928))))

(assert (=> b!7822025 (= tp!2308696 e!4627978)))

(assert (= (and b!7822025 ((_ is ElementMatch!20951) (regOne!42414 (regOne!42414 r2!6199)))) b!7822424))

(assert (= (and b!7822025 ((_ is Concat!29796) (regOne!42414 (regOne!42414 r2!6199)))) b!7822425))

(assert (= (and b!7822025 ((_ is Star!20951) (regOne!42414 (regOne!42414 r2!6199)))) b!7822426))

(assert (= (and b!7822025 ((_ is Union!20951) (regOne!42414 (regOne!42414 r2!6199)))) b!7822427))

(declare-fun b!7822430 () Bool)

(declare-fun e!4627979 () Bool)

(declare-fun tp!2308931 () Bool)

(assert (=> b!7822430 (= e!4627979 tp!2308931)))

(declare-fun b!7822428 () Bool)

(assert (=> b!7822428 (= e!4627979 tp_is_empty!52257)))

(declare-fun b!7822431 () Bool)

(declare-fun tp!2308934 () Bool)

(declare-fun tp!2308930 () Bool)

(assert (=> b!7822431 (= e!4627979 (and tp!2308934 tp!2308930))))

(declare-fun b!7822429 () Bool)

(declare-fun tp!2308932 () Bool)

(declare-fun tp!2308933 () Bool)

(assert (=> b!7822429 (= e!4627979 (and tp!2308932 tp!2308933))))

(assert (=> b!7822025 (= tp!2308697 e!4627979)))

(assert (= (and b!7822025 ((_ is ElementMatch!20951) (regTwo!42414 (regOne!42414 r2!6199)))) b!7822428))

(assert (= (and b!7822025 ((_ is Concat!29796) (regTwo!42414 (regOne!42414 r2!6199)))) b!7822429))

(assert (= (and b!7822025 ((_ is Star!20951) (regTwo!42414 (regOne!42414 r2!6199)))) b!7822430))

(assert (= (and b!7822025 ((_ is Union!20951) (regTwo!42414 (regOne!42414 r2!6199)))) b!7822431))

(declare-fun b!7822434 () Bool)

(declare-fun e!4627980 () Bool)

(declare-fun tp!2308936 () Bool)

(assert (=> b!7822434 (= e!4627980 tp!2308936)))

(declare-fun b!7822432 () Bool)

(assert (=> b!7822432 (= e!4627980 tp_is_empty!52257)))

(declare-fun b!7822435 () Bool)

(declare-fun tp!2308939 () Bool)

(declare-fun tp!2308935 () Bool)

(assert (=> b!7822435 (= e!4627980 (and tp!2308939 tp!2308935))))

(declare-fun b!7822433 () Bool)

(declare-fun tp!2308937 () Bool)

(declare-fun tp!2308938 () Bool)

(assert (=> b!7822433 (= e!4627980 (and tp!2308937 tp!2308938))))

(assert (=> b!7822017 (= tp!2308684 e!4627980)))

(assert (= (and b!7822017 ((_ is ElementMatch!20951) (reg!21280 (regOne!42415 r1!6261)))) b!7822432))

(assert (= (and b!7822017 ((_ is Concat!29796) (reg!21280 (regOne!42415 r1!6261)))) b!7822433))

(assert (= (and b!7822017 ((_ is Star!20951) (reg!21280 (regOne!42415 r1!6261)))) b!7822434))

(assert (= (and b!7822017 ((_ is Union!20951) (reg!21280 (regOne!42415 r1!6261)))) b!7822435))

(declare-fun b!7822438 () Bool)

(declare-fun e!4627981 () Bool)

(declare-fun tp!2308941 () Bool)

(assert (=> b!7822438 (= e!4627981 tp!2308941)))

(declare-fun b!7822436 () Bool)

(assert (=> b!7822436 (= e!4627981 tp_is_empty!52257)))

(declare-fun b!7822439 () Bool)

(declare-fun tp!2308944 () Bool)

(declare-fun tp!2308940 () Bool)

(assert (=> b!7822439 (= e!4627981 (and tp!2308944 tp!2308940))))

(declare-fun b!7822437 () Bool)

(declare-fun tp!2308942 () Bool)

(declare-fun tp!2308943 () Bool)

(assert (=> b!7822437 (= e!4627981 (and tp!2308942 tp!2308943))))

(assert (=> b!7822000 (= tp!2308668 e!4627981)))

(assert (= (and b!7822000 ((_ is ElementMatch!20951) (regOne!42415 (regTwo!42415 r2!6199)))) b!7822436))

(assert (= (and b!7822000 ((_ is Concat!29796) (regOne!42415 (regTwo!42415 r2!6199)))) b!7822437))

(assert (= (and b!7822000 ((_ is Star!20951) (regOne!42415 (regTwo!42415 r2!6199)))) b!7822438))

(assert (= (and b!7822000 ((_ is Union!20951) (regOne!42415 (regTwo!42415 r2!6199)))) b!7822439))

(declare-fun b!7822442 () Bool)

(declare-fun e!4627982 () Bool)

(declare-fun tp!2308946 () Bool)

(assert (=> b!7822442 (= e!4627982 tp!2308946)))

(declare-fun b!7822440 () Bool)

(assert (=> b!7822440 (= e!4627982 tp_is_empty!52257)))

(declare-fun b!7822443 () Bool)

(declare-fun tp!2308949 () Bool)

(declare-fun tp!2308945 () Bool)

(assert (=> b!7822443 (= e!4627982 (and tp!2308949 tp!2308945))))

(declare-fun b!7822441 () Bool)

(declare-fun tp!2308947 () Bool)

(declare-fun tp!2308948 () Bool)

(assert (=> b!7822441 (= e!4627982 (and tp!2308947 tp!2308948))))

(assert (=> b!7822000 (= tp!2308664 e!4627982)))

(assert (= (and b!7822000 ((_ is ElementMatch!20951) (regTwo!42415 (regTwo!42415 r2!6199)))) b!7822440))

(assert (= (and b!7822000 ((_ is Concat!29796) (regTwo!42415 (regTwo!42415 r2!6199)))) b!7822441))

(assert (= (and b!7822000 ((_ is Star!20951) (regTwo!42415 (regTwo!42415 r2!6199)))) b!7822442))

(assert (= (and b!7822000 ((_ is Union!20951) (regTwo!42415 (regTwo!42415 r2!6199)))) b!7822443))

(declare-fun b!7822446 () Bool)

(declare-fun e!4627983 () Bool)

(declare-fun tp!2308951 () Bool)

(assert (=> b!7822446 (= e!4627983 tp!2308951)))

(declare-fun b!7822444 () Bool)

(assert (=> b!7822444 (= e!4627983 tp_is_empty!52257)))

(declare-fun b!7822447 () Bool)

(declare-fun tp!2308954 () Bool)

(declare-fun tp!2308950 () Bool)

(assert (=> b!7822447 (= e!4627983 (and tp!2308954 tp!2308950))))

(declare-fun b!7822445 () Bool)

(declare-fun tp!2308952 () Bool)

(declare-fun tp!2308953 () Bool)

(assert (=> b!7822445 (= e!4627983 (and tp!2308952 tp!2308953))))

(assert (=> b!7821992 (= tp!2308658 e!4627983)))

(assert (= (and b!7821992 ((_ is ElementMatch!20951) (regOne!42415 (regTwo!42414 r1!6261)))) b!7822444))

(assert (= (and b!7821992 ((_ is Concat!29796) (regOne!42415 (regTwo!42414 r1!6261)))) b!7822445))

(assert (= (and b!7821992 ((_ is Star!20951) (regOne!42415 (regTwo!42414 r1!6261)))) b!7822446))

(assert (= (and b!7821992 ((_ is Union!20951) (regOne!42415 (regTwo!42414 r1!6261)))) b!7822447))

(declare-fun b!7822450 () Bool)

(declare-fun e!4627984 () Bool)

(declare-fun tp!2308956 () Bool)

(assert (=> b!7822450 (= e!4627984 tp!2308956)))

(declare-fun b!7822448 () Bool)

(assert (=> b!7822448 (= e!4627984 tp_is_empty!52257)))

(declare-fun b!7822451 () Bool)

(declare-fun tp!2308959 () Bool)

(declare-fun tp!2308955 () Bool)

(assert (=> b!7822451 (= e!4627984 (and tp!2308959 tp!2308955))))

(declare-fun b!7822449 () Bool)

(declare-fun tp!2308957 () Bool)

(declare-fun tp!2308958 () Bool)

(assert (=> b!7822449 (= e!4627984 (and tp!2308957 tp!2308958))))

(assert (=> b!7821992 (= tp!2308654 e!4627984)))

(assert (= (and b!7821992 ((_ is ElementMatch!20951) (regTwo!42415 (regTwo!42414 r1!6261)))) b!7822448))

(assert (= (and b!7821992 ((_ is Concat!29796) (regTwo!42415 (regTwo!42414 r1!6261)))) b!7822449))

(assert (= (and b!7821992 ((_ is Star!20951) (regTwo!42415 (regTwo!42414 r1!6261)))) b!7822450))

(assert (= (and b!7821992 ((_ is Union!20951) (regTwo!42415 (regTwo!42414 r1!6261)))) b!7822451))

(declare-fun b!7822452 () Bool)

(declare-fun e!4627985 () Bool)

(declare-fun tp!2308960 () Bool)

(assert (=> b!7822452 (= e!4627985 (and tp_is_empty!52257 tp!2308960))))

(assert (=> b!7822033 (= tp!2308705 e!4627985)))

(assert (= (and b!7822033 ((_ is Cons!73664) (t!388523 (t!388523 s!14274)))) b!7822452))

(check-sat (not b!7822370) (not b!7822261) (not b!7822163) (not b!7822347) (not b!7822427) (not bm!725520) (not b!7822420) (not b!7822335) (not b!7822357) (not b!7822051) (not b!7822329) (not b!7822110) (not b!7822343) (not b!7822285) (not b!7822229) (not b!7822409) (not d!2349647) (not b!7822412) (not b!7822237) (not b!7822092) (not b!7822408) (not b!7822289) (not b!7822106) (not b!7822238) (not b!7822422) (not b!7822429) (not d!2349691) (not bm!725516) (not d!2349645) (not b!7822322) (not b!7822104) (not b!7822192) (not b!7822439) (not b!7822353) (not b!7822216) (not b!7822379) (not b!7822263) (not b!7822407) (not b!7822132) (not b!7822158) (not b!7822121) (not b!7822145) (not bm!725534) (not b!7822433) (not b!7822374) (not b!7822342) (not b!7822404) (not b!7822351) (not d!2349701) (not b!7822035) (not b!7822401) (not b!7822318) (not b!7822438) (not b!7822235) (not b!7822339) (not b!7822194) (not b!7822435) (not b!7822442) (not b!7822331) (not b!7822234) (not b!7822385) (not b!7822269) (not b!7822334) (not b!7822446) (not b!7822258) (not d!2349717) (not b!7822369) (not bm!725532) (not b!7822193) (not b!7822188) (not b!7822199) (not b!7822293) (not bm!725524) (not b!7822414) (not b!7822430) (not d!2349649) (not b!7822184) (not b!7822386) (not b!7822292) (not b!7822341) (not b!7822449) (not b!7822169) (not b!7822266) (not b!7822195) (not bm!725541) (not b!7822180) (not b!7822319) (not b!7822327) (not b!7822273) (not b!7822393) (not d!2349689) (not b!7822283) (not d!2349719) (not b!7822218) (not b!7822093) (not b!7822182) (not b!7822164) (not b!7822337) (not b!7822350) (not b!7822373) (not b!7822165) (not b!7822443) (not b!7822239) (not b!7822086) (not b!7822426) (not bm!725521) (not b!7822254) (not b!7822048) (not b!7822333) (not b!7822154) (not b!7822230) (not b!7822349) (not b!7822270) (not b!7822088) (not d!2349683) (not d!2349697) (not b!7822242) (not bm!725503) (not b!7822405) (not b!7822279) (not b!7822403) (not b!7822413) (not b!7822326) (not b!7822363) (not b!7822274) (not b!7822398) (not b!7822315) (not bm!725514) (not b!7822367) (not b!7822255) (not b!7822288) (not b!7822155) (not b!7822259) (not b!7822267) (not b!7822253) (not b!7822391) (not b!7822287) (not d!2349675) (not b!7822377) (not b!7822143) (not b!7822049) (not b!7822399) (not b!7822257) (not b!7822231) (not b!7822214) (not b!7822445) tp_is_empty!52257 (not b!7822097) (not b!7822451) (not b!7822210) (not b!7822317) (not b!7822313) (not b!7822375) (not bm!725530) (not b!7822441) (not b!7822371) (not b!7822250) (not b!7822044) (not b!7822358) (not bm!725527) (not b!7822271) (not bm!725519) (not b!7822127) (not b!7822416) (not b!7822325) (not bm!725528) (not b!7822243) (not bm!725529) (not b!7822128) (not b!7822262) (not b!7822346) (not b!7822125) (not b!7822390) (not b!7822296) (not b!7822094) (not b!7822354) (not b!7822394) (not b!7822220) (not b!7822378) (not b!7822241) (not b!7822359) (not b!7822387) (not b!7822345) (not b!7822090) (not b!7822382) (not b!7822297) (not bm!725504) (not b!7822162) (not b!7822265) (not b!7822425) (not b!7822423) (not b!7822411) (not b!7822381) (not bm!725540) (not b!7822212) (not b!7822323) (not d!2349663) (not b!7822395) (not b!7822400) (not b!7822295) (not b!7822321) (not b!7822108) (not b!7822126) (not b!7822417) (not b!7822361) (not b!7822434) (not b!7822186) (not b!7822362) (not b!7822338) (not b!7822233) (not b!7822421) (not b!7822437) (not b!7822050) (not bm!725505) (not b!7822314) (not b!7822355) (not b!7822396) (not b!7822447) (not b!7822366) (not b!7822389) (not b!7822330) (not b!7822450) (not b!7822055) (not b!7822280) (not bm!725535) (not b!7822096) (not d!2349703) (not b!7822112) (not b!7822383) (not b!7822365) (not b!7822275) (not b!7822284) (not bm!725537) (not b!7822452) (not b!7822249) (not b!7822251) (not b!7822431) (not d!2349693) (not bm!725522) (not b!7822281) (not b!7822418) (not b!7822291))
(check-sat)
