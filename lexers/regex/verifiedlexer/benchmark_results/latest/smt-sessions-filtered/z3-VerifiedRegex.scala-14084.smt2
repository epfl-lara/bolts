; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742266 () Bool)

(assert start!742266)

(declare-fun b!7833545 () Bool)

(declare-fun e!4632447 () Bool)

(declare-fun tp_is_empty!52281 () Bool)

(declare-fun tp!2316841 () Bool)

(assert (=> b!7833545 (= e!4632447 (and tp_is_empty!52281 tp!2316841))))

(declare-fun b!7833546 () Bool)

(declare-fun e!4632444 () Bool)

(declare-fun tp!2316839 () Bool)

(assert (=> b!7833546 (= e!4632444 (and tp_is_empty!52281 tp!2316839))))

(declare-fun b!7833547 () Bool)

(declare-fun res!3115714 () Bool)

(declare-fun e!4632451 () Bool)

(assert (=> b!7833547 (=> (not res!3115714) (not e!4632451))))

(declare-fun e!4632450 () Bool)

(assert (=> b!7833547 (= res!3115714 e!4632450)))

(declare-fun res!3115715 () Bool)

(assert (=> b!7833547 (=> res!3115715 e!4632450)))

(declare-datatypes ((C!42252 0))(
  ( (C!42253 (val!31566 Int)) )
))
(declare-datatypes ((Regex!20963 0))(
  ( (ElementMatch!20963 (c!1440848 C!42252)) (Concat!29808 (regOne!42438 Regex!20963) (regTwo!42438 Regex!20963)) (EmptyExpr!20963) (Star!20963 (reg!21292 Regex!20963)) (EmptyLang!20963) (Union!20963 (regOne!42439 Regex!20963) (regTwo!42439 Regex!20963)) )
))
(declare-fun r1!6261 () Regex!20963)

(declare-datatypes ((List!73800 0))(
  ( (Nil!73676) (Cons!73676 (h!80124 C!42252) (t!388535 List!73800)) )
))
(declare-fun s1Rec!453 () List!73800)

(declare-fun matchR!10419 (Regex!20963 List!73800) Bool)

(assert (=> b!7833547 (= res!3115715 (not (matchR!10419 r1!6261 s1Rec!453)))))

(declare-fun b!7833548 () Bool)

(declare-fun res!3115708 () Bool)

(assert (=> b!7833548 (=> (not res!3115708) (not e!4632451))))

(declare-fun s1!4101 () List!73800)

(assert (=> b!7833548 (= res!3115708 (matchR!10419 r1!6261 s1!4101))))

(declare-fun b!7833549 () Bool)

(declare-fun e!4632452 () Bool)

(declare-datatypes ((tuple2!69992 0))(
  ( (tuple2!69993 (_1!38299 List!73800) (_2!38299 List!73800)) )
))
(declare-datatypes ((Option!17790 0))(
  ( (None!17789) (Some!17789 (v!54924 tuple2!69992)) )
))
(declare-fun lt!2677081 () Option!17790)

(declare-fun isDefined!14396 (Option!17790) Bool)

(assert (=> b!7833549 (= e!4632452 (not (isDefined!14396 lt!2677081)))))

(declare-fun b!7833550 () Bool)

(declare-fun r2!6199 () Regex!20963)

(declare-fun s2Rec!453 () List!73800)

(assert (=> b!7833550 (= e!4632450 (not (matchR!10419 r2!6199 s2Rec!453)))))

(declare-fun b!7833551 () Bool)

(declare-fun res!3115705 () Bool)

(assert (=> b!7833551 (=> (not res!3115705) (not e!4632451))))

(declare-fun s2!3721 () List!73800)

(assert (=> b!7833551 (= res!3115705 (matchR!10419 r2!6199 s2!3721))))

(declare-fun b!7833552 () Bool)

(declare-fun res!3115704 () Bool)

(assert (=> b!7833552 (=> (not res!3115704) (not e!4632451))))

(declare-fun isPrefix!6313 (List!73800 List!73800) Bool)

(assert (=> b!7833552 (= res!3115704 (isPrefix!6313 s1Rec!453 s1!4101))))

(declare-fun b!7833553 () Bool)

(declare-fun res!3115713 () Bool)

(assert (=> b!7833553 (=> (not res!3115713) (not e!4632451))))

(declare-fun validRegex!11377 (Regex!20963) Bool)

(assert (=> b!7833553 (= res!3115713 (validRegex!11377 r2!6199))))

(declare-fun b!7833554 () Bool)

(declare-fun res!3115711 () Bool)

(assert (=> b!7833554 (=> (not res!3115711) (not e!4632451))))

(declare-fun s!14274 () List!73800)

(declare-fun ++!17997 (List!73800 List!73800) List!73800)

(assert (=> b!7833554 (= res!3115711 (= (++!17997 s1!4101 s2!3721) s!14274))))

(declare-fun b!7833555 () Bool)

(declare-fun e!4632443 () Bool)

(declare-fun tp!2316835 () Bool)

(declare-fun tp!2316834 () Bool)

(assert (=> b!7833555 (= e!4632443 (and tp!2316835 tp!2316834))))

(declare-fun res!3115716 () Bool)

(assert (=> start!742266 (=> (not res!3115716) (not e!4632451))))

(assert (=> start!742266 (= res!3115716 (validRegex!11377 r1!6261))))

(assert (=> start!742266 e!4632451))

(assert (=> start!742266 e!4632443))

(assert (=> start!742266 e!4632444))

(declare-fun e!4632448 () Bool)

(assert (=> start!742266 e!4632448))

(declare-fun e!4632453 () Bool)

(assert (=> start!742266 e!4632453))

(assert (=> start!742266 e!4632447))

(declare-fun e!4632445 () Bool)

(assert (=> start!742266 e!4632445))

(declare-fun e!4632449 () Bool)

(assert (=> start!742266 e!4632449))

(declare-fun b!7833556 () Bool)

(declare-fun tp!2316840 () Bool)

(assert (=> b!7833556 (= e!4632453 (and tp_is_empty!52281 tp!2316840))))

(declare-fun b!7833557 () Bool)

(declare-fun tp!2316827 () Bool)

(assert (=> b!7833557 (= e!4632448 (and tp_is_empty!52281 tp!2316827))))

(declare-fun b!7833558 () Bool)

(declare-fun tp!2316837 () Bool)

(assert (=> b!7833558 (= e!4632449 (and tp_is_empty!52281 tp!2316837))))

(declare-fun b!7833559 () Bool)

(declare-fun tp!2316832 () Bool)

(assert (=> b!7833559 (= e!4632445 tp!2316832)))

(declare-fun b!7833560 () Bool)

(declare-fun res!3115706 () Bool)

(declare-fun e!4632446 () Bool)

(assert (=> b!7833560 (=> (not res!3115706) (not e!4632446))))

(declare-fun lt!2677082 () Int)

(declare-fun size!42763 (List!73800) Int)

(assert (=> b!7833560 (= res!3115706 (= lt!2677082 (size!42763 s1!4101)))))

(declare-fun b!7833561 () Bool)

(assert (=> b!7833561 (= e!4632446 e!4632452)))

(declare-fun res!3115709 () Bool)

(assert (=> b!7833561 (=> (not res!3115709) (not e!4632452))))

(assert (=> b!7833561 (= res!3115709 (= lt!2677081 (Some!17789 (tuple2!69993 s1Rec!453 s2Rec!453))))))

(declare-fun findConcatSeparation!3820 (Regex!20963 Regex!20963 List!73800 List!73800 List!73800) Option!17790)

(assert (=> b!7833561 (= lt!2677081 (findConcatSeparation!3820 r1!6261 r2!6199 s1Rec!453 s2Rec!453 s!14274))))

(declare-fun b!7833562 () Bool)

(declare-fun tp!2316829 () Bool)

(assert (=> b!7833562 (= e!4632443 tp!2316829)))

(declare-fun b!7833563 () Bool)

(assert (=> b!7833563 (= e!4632451 e!4632446)))

(declare-fun res!3115703 () Bool)

(assert (=> b!7833563 (=> (not res!3115703) (not e!4632446))))

(assert (=> b!7833563 (= res!3115703 (= lt!2677082 (size!42763 s!14274)))))

(assert (=> b!7833563 (= lt!2677082 (size!42763 s1Rec!453))))

(declare-fun b!7833564 () Bool)

(declare-fun res!3115712 () Bool)

(assert (=> b!7833564 (=> (not res!3115712) (not e!4632451))))

(get-info :version)

(assert (=> b!7833564 (= res!3115712 ((_ is Nil!73676) s2Rec!453))))

(declare-fun b!7833565 () Bool)

(declare-fun tp!2316828 () Bool)

(declare-fun tp!2316831 () Bool)

(assert (=> b!7833565 (= e!4632443 (and tp!2316828 tp!2316831))))

(declare-fun b!7833566 () Bool)

(declare-fun tp!2316838 () Bool)

(declare-fun tp!2316833 () Bool)

(assert (=> b!7833566 (= e!4632445 (and tp!2316838 tp!2316833))))

(declare-fun b!7833567 () Bool)

(declare-fun res!3115707 () Bool)

(assert (=> b!7833567 (=> (not res!3115707) (not e!4632451))))

(assert (=> b!7833567 (= res!3115707 (= (++!17997 s1Rec!453 s2Rec!453) s!14274))))

(declare-fun b!7833568 () Bool)

(assert (=> b!7833568 (= e!4632445 tp_is_empty!52281)))

(declare-fun b!7833569 () Bool)

(declare-fun res!3115710 () Bool)

(assert (=> b!7833569 (=> (not res!3115710) (not e!4632446))))

(assert (=> b!7833569 (= res!3115710 (and (= s1Rec!453 s1!4101) (= s2Rec!453 s2!3721)))))

(declare-fun b!7833570 () Bool)

(assert (=> b!7833570 (= e!4632443 tp_is_empty!52281)))

(declare-fun b!7833571 () Bool)

(declare-fun tp!2316830 () Bool)

(declare-fun tp!2316836 () Bool)

(assert (=> b!7833571 (= e!4632445 (and tp!2316830 tp!2316836))))

(assert (= (and start!742266 res!3115716) b!7833553))

(assert (= (and b!7833553 res!3115713) b!7833554))

(assert (= (and b!7833554 res!3115711) b!7833552))

(assert (= (and b!7833552 res!3115704) b!7833567))

(assert (= (and b!7833567 res!3115707) b!7833548))

(assert (= (and b!7833548 res!3115708) b!7833551))

(assert (= (and b!7833551 res!3115705) b!7833547))

(assert (= (and b!7833547 (not res!3115715)) b!7833550))

(assert (= (and b!7833547 res!3115714) b!7833564))

(assert (= (and b!7833564 res!3115712) b!7833563))

(assert (= (and b!7833563 res!3115703) b!7833560))

(assert (= (and b!7833560 res!3115706) b!7833569))

(assert (= (and b!7833569 res!3115710) b!7833561))

(assert (= (and b!7833561 res!3115709) b!7833549))

(assert (= (and start!742266 ((_ is ElementMatch!20963) r2!6199)) b!7833570))

(assert (= (and start!742266 ((_ is Concat!29808) r2!6199)) b!7833555))

(assert (= (and start!742266 ((_ is Star!20963) r2!6199)) b!7833562))

(assert (= (and start!742266 ((_ is Union!20963) r2!6199)) b!7833565))

(assert (= (and start!742266 ((_ is Cons!73676) s1!4101)) b!7833546))

(assert (= (and start!742266 ((_ is Cons!73676) s2!3721)) b!7833557))

(assert (= (and start!742266 ((_ is Cons!73676) s2Rec!453)) b!7833556))

(assert (= (and start!742266 ((_ is Cons!73676) s!14274)) b!7833545))

(assert (= (and start!742266 ((_ is ElementMatch!20963) r1!6261)) b!7833568))

(assert (= (and start!742266 ((_ is Concat!29808) r1!6261)) b!7833566))

(assert (= (and start!742266 ((_ is Star!20963) r1!6261)) b!7833559))

(assert (= (and start!742266 ((_ is Union!20963) r1!6261)) b!7833571))

(assert (= (and start!742266 ((_ is Cons!73676) s1Rec!453)) b!7833558))

(declare-fun m!8249690 () Bool)

(assert (=> start!742266 m!8249690))

(declare-fun m!8249692 () Bool)

(assert (=> b!7833567 m!8249692))

(declare-fun m!8249694 () Bool)

(assert (=> b!7833560 m!8249694))

(declare-fun m!8249696 () Bool)

(assert (=> b!7833549 m!8249696))

(declare-fun m!8249698 () Bool)

(assert (=> b!7833563 m!8249698))

(declare-fun m!8249700 () Bool)

(assert (=> b!7833563 m!8249700))

(declare-fun m!8249702 () Bool)

(assert (=> b!7833550 m!8249702))

(declare-fun m!8249704 () Bool)

(assert (=> b!7833551 m!8249704))

(declare-fun m!8249706 () Bool)

(assert (=> b!7833552 m!8249706))

(declare-fun m!8249708 () Bool)

(assert (=> b!7833561 m!8249708))

(declare-fun m!8249710 () Bool)

(assert (=> b!7833548 m!8249710))

(declare-fun m!8249712 () Bool)

(assert (=> b!7833547 m!8249712))

(declare-fun m!8249714 () Bool)

(assert (=> b!7833553 m!8249714))

(declare-fun m!8249716 () Bool)

(assert (=> b!7833554 m!8249716))

(check-sat (not b!7833559) (not b!7833550) (not start!742266) (not b!7833547) (not b!7833546) (not b!7833556) (not b!7833555) (not b!7833562) (not b!7833566) (not b!7833558) (not b!7833565) (not b!7833548) (not b!7833549) (not b!7833567) (not b!7833563) (not b!7833561) (not b!7833545) tp_is_empty!52281 (not b!7833557) (not b!7833554) (not b!7833552) (not b!7833571) (not b!7833553) (not b!7833560) (not b!7833551))
(check-sat)
