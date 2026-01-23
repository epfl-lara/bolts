; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!597856 () Bool)

(assert start!597856)

(declare-fun setIsEmpty!39552 () Bool)

(declare-fun setRes!39552 () Bool)

(assert (=> setIsEmpty!39552 setRes!39552))

(declare-fun b!5839094 () Bool)

(declare-fun res!2460024 () Bool)

(declare-fun e!3581693 () Bool)

(assert (=> b!5839094 (=> (not res!2460024) (not e!3581693))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32080 0))(
  ( (C!32081 (val!25742 Int)) )
))
(declare-datatypes ((Regex!15905 0))(
  ( (ElementMatch!15905 (c!1034553 C!32080)) (Concat!24750 (regOne!32322 Regex!15905) (regTwo!32322 Regex!15905)) (EmptyExpr!15905) (Star!15905 (reg!16234 Regex!15905)) (EmptyLang!15905) (Union!15905 (regOne!32323 Regex!15905) (regTwo!32323 Regex!15905)) )
))
(declare-datatypes ((List!64014 0))(
  ( (Nil!63890) (Cons!63890 (h!70338 Regex!15905) (t!377369 List!64014)) )
))
(declare-datatypes ((Context!10578 0))(
  ( (Context!10579 (exprs!5789 List!64014)) )
))
(declare-fun z!1189 () (InoxSet Context!10578))

(declare-datatypes ((List!64015 0))(
  ( (Nil!63891) (Cons!63891 (h!70339 Context!10578) (t!377370 List!64015)) )
))
(declare-fun zl!343 () List!64015)

(declare-fun toList!9689 ((InoxSet Context!10578)) List!64015)

(assert (=> b!5839094 (= res!2460024 (= (toList!9689 z!1189) zl!343))))

(declare-fun b!5839095 () Bool)

(declare-fun e!3581689 () Bool)

(assert (=> b!5839095 (= e!3581693 (not e!3581689))))

(declare-fun res!2460022 () Bool)

(assert (=> b!5839095 (=> res!2460022 e!3581689)))

(get-info :version)

(assert (=> b!5839095 (= res!2460022 (not ((_ is Cons!63891) zl!343)))))

(declare-fun lt!2303593 () Bool)

(declare-fun r!7292 () Regex!15905)

(declare-datatypes ((List!64016 0))(
  ( (Nil!63892) (Cons!63892 (h!70340 C!32080) (t!377371 List!64016)) )
))
(declare-fun s!2326 () List!64016)

(declare-fun matchRSpec!3006 (Regex!15905 List!64016) Bool)

(assert (=> b!5839095 (= lt!2303593 (matchRSpec!3006 r!7292 s!2326))))

(declare-fun matchR!8088 (Regex!15905 List!64016) Bool)

(assert (=> b!5839095 (= lt!2303593 (matchR!8088 r!7292 s!2326))))

(declare-datatypes ((Unit!157081 0))(
  ( (Unit!157082) )
))
(declare-fun lt!2303599 () Unit!157081)

(declare-fun mainMatchTheorem!3006 (Regex!15905 List!64016) Unit!157081)

(assert (=> b!5839095 (= lt!2303599 (mainMatchTheorem!3006 r!7292 s!2326))))

(declare-fun b!5839096 () Bool)

(declare-fun res!2460021 () Bool)

(assert (=> b!5839096 (=> res!2460021 e!3581689)))

(declare-fun generalisedConcat!1502 (List!64014) Regex!15905)

(assert (=> b!5839096 (= res!2460021 (not (= r!7292 (generalisedConcat!1502 (exprs!5789 (h!70339 zl!343))))))))

(declare-fun b!5839097 () Bool)

(declare-fun e!3581695 () Bool)

(assert (=> b!5839097 (= e!3581689 e!3581695)))

(declare-fun res!2460014 () Bool)

(assert (=> b!5839097 (=> res!2460014 e!3581695)))

(declare-fun lt!2303592 () Bool)

(declare-fun lt!2303597 () Bool)

(assert (=> b!5839097 (= res!2460014 (or (not (= lt!2303593 (or lt!2303597 lt!2303592))) (not ((_ is Nil!63892) s!2326))))))

(assert (=> b!5839097 (= lt!2303592 (matchRSpec!3006 (regTwo!32323 r!7292) s!2326))))

(assert (=> b!5839097 (= lt!2303592 (matchR!8088 (regTwo!32323 r!7292) s!2326))))

(declare-fun lt!2303596 () Unit!157081)

(assert (=> b!5839097 (= lt!2303596 (mainMatchTheorem!3006 (regTwo!32323 r!7292) s!2326))))

(assert (=> b!5839097 (= lt!2303597 (matchRSpec!3006 (regOne!32323 r!7292) s!2326))))

(assert (=> b!5839097 (= lt!2303597 (matchR!8088 (regOne!32323 r!7292) s!2326))))

(declare-fun lt!2303598 () Unit!157081)

(assert (=> b!5839097 (= lt!2303598 (mainMatchTheorem!3006 (regOne!32323 r!7292) s!2326))))

(declare-fun b!5839098 () Bool)

(declare-fun res!2460018 () Bool)

(assert (=> b!5839098 (=> res!2460018 e!3581689)))

(assert (=> b!5839098 (= res!2460018 (not ((_ is Cons!63890) (exprs!5789 (h!70339 zl!343)))))))

(declare-fun b!5839099 () Bool)

(declare-fun e!3581690 () Bool)

(declare-fun lt!2303594 () Bool)

(assert (=> b!5839099 (= e!3581690 (or (not (= lt!2303594 lt!2303593)) (= lt!2303593 lt!2303594)))))

(declare-fun matchZipper!1981 ((InoxSet Context!10578) List!64016) Bool)

(assert (=> b!5839099 (= lt!2303594 (matchZipper!1981 z!1189 s!2326))))

(declare-fun b!5839100 () Bool)

(declare-fun res!2460020 () Bool)

(assert (=> b!5839100 (=> res!2460020 e!3581689)))

(declare-fun isEmpty!35752 (List!64015) Bool)

(assert (=> b!5839100 (= res!2460020 (not (isEmpty!35752 (t!377370 zl!343))))))

(declare-fun b!5839102 () Bool)

(declare-fun e!3581696 () Bool)

(declare-fun tp!1614528 () Bool)

(declare-fun tp!1614527 () Bool)

(assert (=> b!5839102 (= e!3581696 (and tp!1614528 tp!1614527))))

(declare-fun b!5839103 () Bool)

(declare-fun e!3581691 () Bool)

(declare-fun tp!1614519 () Bool)

(assert (=> b!5839103 (= e!3581691 tp!1614519)))

(declare-fun b!5839104 () Bool)

(assert (=> b!5839104 (= e!3581695 e!3581690)))

(declare-fun res!2460017 () Bool)

(assert (=> b!5839104 (=> res!2460017 e!3581690)))

(declare-fun lt!2303600 () Bool)

(declare-fun lt!2303595 () Bool)

(assert (=> b!5839104 (= res!2460017 (not (= lt!2303600 lt!2303595)))))

(assert (=> b!5839104 (= lt!2303595 lt!2303600)))

(declare-fun nullableZipper!1754 ((InoxSet Context!10578)) Bool)

(assert (=> b!5839104 (= lt!2303600 (nullableZipper!1754 z!1189))))

(declare-fun nullable!5905 (Regex!15905) Bool)

(assert (=> b!5839104 (= lt!2303595 (nullable!5905 r!7292))))

(declare-fun lt!2303591 () Unit!157081)

(declare-fun lemmaUnfocusPreservesNullability!28 (Regex!15905 (InoxSet Context!10578)) Unit!157081)

(assert (=> b!5839104 (= lt!2303591 (lemmaUnfocusPreservesNullability!28 r!7292 z!1189))))

(declare-fun b!5839105 () Bool)

(declare-fun tp!1614520 () Bool)

(declare-fun tp!1614525 () Bool)

(assert (=> b!5839105 (= e!3581696 (and tp!1614520 tp!1614525))))

(declare-fun b!5839106 () Bool)

(declare-fun e!3581692 () Bool)

(declare-fun tp_is_empty!41063 () Bool)

(declare-fun tp!1614522 () Bool)

(assert (=> b!5839106 (= e!3581692 (and tp_is_empty!41063 tp!1614522))))

(declare-fun b!5839107 () Bool)

(assert (=> b!5839107 (= e!3581696 tp_is_empty!41063)))

(declare-fun b!5839108 () Bool)

(declare-fun tp!1614524 () Bool)

(assert (=> b!5839108 (= e!3581696 tp!1614524)))

(declare-fun b!5839109 () Bool)

(declare-fun tp!1614521 () Bool)

(declare-fun e!3581694 () Bool)

(declare-fun inv!83009 (Context!10578) Bool)

(assert (=> b!5839109 (= e!3581694 (and (inv!83009 (h!70339 zl!343)) e!3581691 tp!1614521))))

(declare-fun b!5839110 () Bool)

(declare-fun res!2460016 () Bool)

(assert (=> b!5839110 (=> (not res!2460016) (not e!3581693))))

(declare-fun unfocusZipper!1647 (List!64015) Regex!15905)

(assert (=> b!5839110 (= res!2460016 (= r!7292 (unfocusZipper!1647 zl!343)))))

(declare-fun b!5839111 () Bool)

(declare-fun res!2460023 () Bool)

(assert (=> b!5839111 (=> res!2460023 e!3581689)))

(declare-fun generalisedUnion!1749 (List!64014) Regex!15905)

(declare-fun unfocusZipperList!1326 (List!64015) List!64014)

(assert (=> b!5839111 (= res!2460023 (not (= r!7292 (generalisedUnion!1749 (unfocusZipperList!1326 zl!343)))))))

(declare-fun setElem!39552 () Context!10578)

(declare-fun e!3581697 () Bool)

(declare-fun tp!1614526 () Bool)

(declare-fun setNonEmpty!39552 () Bool)

(assert (=> setNonEmpty!39552 (= setRes!39552 (and tp!1614526 (inv!83009 setElem!39552) e!3581697))))

(declare-fun setRest!39552 () (InoxSet Context!10578))

(assert (=> setNonEmpty!39552 (= z!1189 ((_ map or) (store ((as const (Array Context!10578 Bool)) false) setElem!39552 true) setRest!39552))))

(declare-fun b!5839112 () Bool)

(declare-fun res!2460015 () Bool)

(assert (=> b!5839112 (=> res!2460015 e!3581689)))

(assert (=> b!5839112 (= res!2460015 (or ((_ is EmptyExpr!15905) r!7292) ((_ is EmptyLang!15905) r!7292) ((_ is ElementMatch!15905) r!7292) (not ((_ is Union!15905) r!7292))))))

(declare-fun b!5839101 () Bool)

(declare-fun tp!1614523 () Bool)

(assert (=> b!5839101 (= e!3581697 tp!1614523)))

(declare-fun res!2460019 () Bool)

(assert (=> start!597856 (=> (not res!2460019) (not e!3581693))))

(declare-fun validRegex!7641 (Regex!15905) Bool)

(assert (=> start!597856 (= res!2460019 (validRegex!7641 r!7292))))

(assert (=> start!597856 e!3581693))

(assert (=> start!597856 e!3581696))

(declare-fun condSetEmpty!39552 () Bool)

(assert (=> start!597856 (= condSetEmpty!39552 (= z!1189 ((as const (Array Context!10578 Bool)) false)))))

(assert (=> start!597856 setRes!39552))

(assert (=> start!597856 e!3581694))

(assert (=> start!597856 e!3581692))

(assert (= (and start!597856 res!2460019) b!5839094))

(assert (= (and b!5839094 res!2460024) b!5839110))

(assert (= (and b!5839110 res!2460016) b!5839095))

(assert (= (and b!5839095 (not res!2460022)) b!5839100))

(assert (= (and b!5839100 (not res!2460020)) b!5839096))

(assert (= (and b!5839096 (not res!2460021)) b!5839098))

(assert (= (and b!5839098 (not res!2460018)) b!5839111))

(assert (= (and b!5839111 (not res!2460023)) b!5839112))

(assert (= (and b!5839112 (not res!2460015)) b!5839097))

(assert (= (and b!5839097 (not res!2460014)) b!5839104))

(assert (= (and b!5839104 (not res!2460017)) b!5839099))

(assert (= (and start!597856 ((_ is ElementMatch!15905) r!7292)) b!5839107))

(assert (= (and start!597856 ((_ is Concat!24750) r!7292)) b!5839102))

(assert (= (and start!597856 ((_ is Star!15905) r!7292)) b!5839108))

(assert (= (and start!597856 ((_ is Union!15905) r!7292)) b!5839105))

(assert (= (and start!597856 condSetEmpty!39552) setIsEmpty!39552))

(assert (= (and start!597856 (not condSetEmpty!39552)) setNonEmpty!39552))

(assert (= setNonEmpty!39552 b!5839101))

(assert (= b!5839109 b!5839103))

(assert (= (and start!597856 ((_ is Cons!63891) zl!343)) b!5839109))

(assert (= (and start!597856 ((_ is Cons!63892) s!2326)) b!5839106))

(declare-fun m!6764228 () Bool)

(assert (=> b!5839111 m!6764228))

(assert (=> b!5839111 m!6764228))

(declare-fun m!6764230 () Bool)

(assert (=> b!5839111 m!6764230))

(declare-fun m!6764232 () Bool)

(assert (=> b!5839110 m!6764232))

(declare-fun m!6764234 () Bool)

(assert (=> b!5839097 m!6764234))

(declare-fun m!6764236 () Bool)

(assert (=> b!5839097 m!6764236))

(declare-fun m!6764238 () Bool)

(assert (=> b!5839097 m!6764238))

(declare-fun m!6764240 () Bool)

(assert (=> b!5839097 m!6764240))

(declare-fun m!6764242 () Bool)

(assert (=> b!5839097 m!6764242))

(declare-fun m!6764244 () Bool)

(assert (=> b!5839097 m!6764244))

(declare-fun m!6764246 () Bool)

(assert (=> b!5839104 m!6764246))

(declare-fun m!6764248 () Bool)

(assert (=> b!5839104 m!6764248))

(declare-fun m!6764250 () Bool)

(assert (=> b!5839104 m!6764250))

(declare-fun m!6764252 () Bool)

(assert (=> setNonEmpty!39552 m!6764252))

(declare-fun m!6764254 () Bool)

(assert (=> start!597856 m!6764254))

(declare-fun m!6764256 () Bool)

(assert (=> b!5839095 m!6764256))

(declare-fun m!6764258 () Bool)

(assert (=> b!5839095 m!6764258))

(declare-fun m!6764260 () Bool)

(assert (=> b!5839095 m!6764260))

(declare-fun m!6764262 () Bool)

(assert (=> b!5839100 m!6764262))

(declare-fun m!6764264 () Bool)

(assert (=> b!5839109 m!6764264))

(declare-fun m!6764266 () Bool)

(assert (=> b!5839099 m!6764266))

(declare-fun m!6764268 () Bool)

(assert (=> b!5839094 m!6764268))

(declare-fun m!6764270 () Bool)

(assert (=> b!5839096 m!6764270))

(check-sat (not b!5839102) (not b!5839111) (not b!5839108) (not b!5839101) (not start!597856) (not setNonEmpty!39552) (not b!5839110) (not b!5839099) (not b!5839094) (not b!5839106) (not b!5839097) tp_is_empty!41063 (not b!5839104) (not b!5839096) (not b!5839100) (not b!5839109) (not b!5839103) (not b!5839095) (not b!5839105))
(check-sat)
