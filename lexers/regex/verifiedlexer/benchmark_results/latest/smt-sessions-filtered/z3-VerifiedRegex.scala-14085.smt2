; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742270 () Bool)

(assert start!742270)

(declare-fun b!7833692 () Bool)

(declare-fun e!4632524 () Bool)

(declare-fun tp_is_empty!52285 () Bool)

(declare-fun tp!2316923 () Bool)

(assert (=> b!7833692 (= e!4632524 (and tp_is_empty!52285 tp!2316923))))

(declare-fun b!7833693 () Bool)

(declare-fun e!4632523 () Bool)

(declare-fun tp!2316930 () Bool)

(assert (=> b!7833693 (= e!4632523 (and tp_is_empty!52285 tp!2316930))))

(declare-fun b!7833694 () Bool)

(declare-fun e!4632522 () Bool)

(declare-fun e!4632514 () Bool)

(assert (=> b!7833694 (= e!4632522 e!4632514)))

(declare-fun res!3115773 () Bool)

(assert (=> b!7833694 (=> (not res!3115773) (not e!4632514))))

(declare-datatypes ((C!42256 0))(
  ( (C!42257 (val!31568 Int)) )
))
(declare-datatypes ((List!73802 0))(
  ( (Nil!73678) (Cons!73678 (h!80126 C!42256) (t!388537 List!73802)) )
))
(declare-fun lt!2677106 () List!73802)

(declare-fun s!14274 () List!73802)

(assert (=> b!7833694 (= res!3115773 (= lt!2677106 s!14274))))

(declare-fun s1Rec!453 () List!73802)

(declare-fun s2Rec!453 () List!73802)

(declare-fun ++!17999 (List!73802 List!73802) List!73802)

(assert (=> b!7833694 (= lt!2677106 (++!17999 s1Rec!453 s2Rec!453))))

(declare-fun b!7833695 () Bool)

(declare-fun e!4632521 () Bool)

(declare-fun tp!2316931 () Bool)

(assert (=> b!7833695 (= e!4632521 tp!2316931)))

(declare-fun b!7833696 () Bool)

(declare-fun e!4632517 () Bool)

(declare-fun tp!2316926 () Bool)

(assert (=> b!7833696 (= e!4632517 (and tp_is_empty!52285 tp!2316926))))

(declare-fun b!7833697 () Bool)

(declare-fun tp!2316927 () Bool)

(declare-fun tp!2316919 () Bool)

(assert (=> b!7833697 (= e!4632521 (and tp!2316927 tp!2316919))))

(declare-fun b!7833699 () Bool)

(declare-fun res!3115772 () Bool)

(declare-fun e!4632519 () Bool)

(assert (=> b!7833699 (=> (not res!3115772) (not e!4632519))))

(declare-datatypes ((Regex!20965 0))(
  ( (ElementMatch!20965 (c!1440850 C!42256)) (Concat!29810 (regOne!42442 Regex!20965) (regTwo!42442 Regex!20965)) (EmptyExpr!20965) (Star!20965 (reg!21294 Regex!20965)) (EmptyLang!20965) (Union!20965 (regOne!42443 Regex!20965) (regTwo!42443 Regex!20965)) )
))
(declare-fun r2!6199 () Regex!20965)

(declare-fun validRegex!11379 (Regex!20965) Bool)

(assert (=> b!7833699 (= res!3115772 (validRegex!11379 r2!6199))))

(declare-fun b!7833700 () Bool)

(assert (=> b!7833700 (= e!4632521 tp_is_empty!52285)))

(declare-fun b!7833701 () Bool)

(declare-fun e!4632520 () Bool)

(declare-fun s1!4101 () List!73802)

(declare-fun isPrefix!6315 (List!73802 List!73802) Bool)

(assert (=> b!7833701 (= e!4632520 (isPrefix!6315 s1!4101 s!14274))))

(declare-fun b!7833702 () Bool)

(declare-fun res!3115781 () Bool)

(assert (=> b!7833702 (=> (not res!3115781) (not e!4632514))))

(declare-fun r1!6261 () Regex!20965)

(declare-fun matchR!10421 (Regex!20965 List!73802) Bool)

(assert (=> b!7833702 (= res!3115781 (matchR!10421 r1!6261 s1!4101))))

(declare-fun b!7833703 () Bool)

(declare-fun e!4632525 () Bool)

(declare-fun tp!2316917 () Bool)

(declare-fun tp!2316929 () Bool)

(assert (=> b!7833703 (= e!4632525 (and tp!2316917 tp!2316929))))

(declare-fun b!7833704 () Bool)

(assert (=> b!7833704 (= e!4632514 (not e!4632520))))

(declare-fun res!3115774 () Bool)

(assert (=> b!7833704 (=> res!3115774 e!4632520)))

(assert (=> b!7833704 (= res!3115774 (not (= s1Rec!453 s1!4101)))))

(assert (=> b!7833704 (isPrefix!6315 s1Rec!453 lt!2677106)))

(declare-datatypes ((Unit!168700 0))(
  ( (Unit!168701) )
))
(declare-fun lt!2677105 () Unit!168700)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3761 (List!73802 List!73802) Unit!168700)

(assert (=> b!7833704 (= lt!2677105 (lemmaConcatTwoListThenFirstIsPrefix!3761 s1Rec!453 s2Rec!453))))

(declare-fun lt!2677104 () List!73802)

(assert (=> b!7833704 (isPrefix!6315 s1!4101 lt!2677104)))

(declare-fun lt!2677103 () Unit!168700)

(declare-fun s2!3721 () List!73802)

(assert (=> b!7833704 (= lt!2677103 (lemmaConcatTwoListThenFirstIsPrefix!3761 s1!4101 s2!3721))))

(declare-fun b!7833705 () Bool)

(declare-fun res!3115779 () Bool)

(assert (=> b!7833705 (=> (not res!3115779) (not e!4632514))))

(assert (=> b!7833705 (= res!3115779 (matchR!10421 r2!6199 s2!3721))))

(declare-fun b!7833706 () Bool)

(assert (=> b!7833706 (= e!4632519 e!4632522)))

(declare-fun res!3115775 () Bool)

(assert (=> b!7833706 (=> (not res!3115775) (not e!4632522))))

(assert (=> b!7833706 (= res!3115775 (= lt!2677104 s!14274))))

(assert (=> b!7833706 (= lt!2677104 (++!17999 s1!4101 s2!3721))))

(declare-fun b!7833707 () Bool)

(declare-fun res!3115776 () Bool)

(assert (=> b!7833707 (=> (not res!3115776) (not e!4632514))))

(get-info :version)

(assert (=> b!7833707 (= res!3115776 (not ((_ is Nil!73678) s2Rec!453)))))

(declare-fun b!7833708 () Bool)

(declare-fun e!4632516 () Bool)

(declare-fun tp!2316928 () Bool)

(assert (=> b!7833708 (= e!4632516 (and tp_is_empty!52285 tp!2316928))))

(declare-fun b!7833709 () Bool)

(declare-fun e!4632518 () Bool)

(assert (=> b!7833709 (= e!4632518 (not (matchR!10421 r2!6199 s2Rec!453)))))

(declare-fun b!7833710 () Bool)

(assert (=> b!7833710 (= e!4632525 tp_is_empty!52285)))

(declare-fun b!7833711 () Bool)

(declare-fun tp!2316921 () Bool)

(assert (=> b!7833711 (= e!4632525 tp!2316921)))

(declare-fun b!7833712 () Bool)

(declare-fun res!3115777 () Bool)

(assert (=> b!7833712 (=> (not res!3115777) (not e!4632514))))

(assert (=> b!7833712 (= res!3115777 e!4632518)))

(declare-fun res!3115782 () Bool)

(assert (=> b!7833712 (=> res!3115782 e!4632518)))

(assert (=> b!7833712 (= res!3115782 (not (matchR!10421 r1!6261 s1Rec!453)))))

(declare-fun b!7833713 () Bool)

(declare-fun res!3115780 () Bool)

(assert (=> b!7833713 (=> (not res!3115780) (not e!4632522))))

(assert (=> b!7833713 (= res!3115780 (isPrefix!6315 s1Rec!453 s1!4101))))

(declare-fun res!3115778 () Bool)

(assert (=> start!742270 (=> (not res!3115778) (not e!4632519))))

(assert (=> start!742270 (= res!3115778 (validRegex!11379 r1!6261))))

(assert (=> start!742270 e!4632519))

(assert (=> start!742270 e!4632525))

(assert (=> start!742270 e!4632517))

(assert (=> start!742270 e!4632524))

(assert (=> start!742270 e!4632523))

(assert (=> start!742270 e!4632516))

(assert (=> start!742270 e!4632521))

(declare-fun e!4632515 () Bool)

(assert (=> start!742270 e!4632515))

(declare-fun b!7833698 () Bool)

(declare-fun tp!2316918 () Bool)

(declare-fun tp!2316924 () Bool)

(assert (=> b!7833698 (= e!4632521 (and tp!2316918 tp!2316924))))

(declare-fun b!7833714 () Bool)

(declare-fun tp!2316920 () Bool)

(declare-fun tp!2316925 () Bool)

(assert (=> b!7833714 (= e!4632525 (and tp!2316920 tp!2316925))))

(declare-fun b!7833715 () Bool)

(declare-fun tp!2316922 () Bool)

(assert (=> b!7833715 (= e!4632515 (and tp_is_empty!52285 tp!2316922))))

(assert (= (and start!742270 res!3115778) b!7833699))

(assert (= (and b!7833699 res!3115772) b!7833706))

(assert (= (and b!7833706 res!3115775) b!7833713))

(assert (= (and b!7833713 res!3115780) b!7833694))

(assert (= (and b!7833694 res!3115773) b!7833702))

(assert (= (and b!7833702 res!3115781) b!7833705))

(assert (= (and b!7833705 res!3115779) b!7833712))

(assert (= (and b!7833712 (not res!3115782)) b!7833709))

(assert (= (and b!7833712 res!3115777) b!7833707))

(assert (= (and b!7833707 res!3115776) b!7833704))

(assert (= (and b!7833704 (not res!3115774)) b!7833701))

(assert (= (and start!742270 ((_ is ElementMatch!20965) r2!6199)) b!7833710))

(assert (= (and start!742270 ((_ is Concat!29810) r2!6199)) b!7833714))

(assert (= (and start!742270 ((_ is Star!20965) r2!6199)) b!7833711))

(assert (= (and start!742270 ((_ is Union!20965) r2!6199)) b!7833703))

(assert (= (and start!742270 ((_ is Cons!73678) s1!4101)) b!7833696))

(assert (= (and start!742270 ((_ is Cons!73678) s2!3721)) b!7833692))

(assert (= (and start!742270 ((_ is Cons!73678) s2Rec!453)) b!7833693))

(assert (= (and start!742270 ((_ is Cons!73678) s!14274)) b!7833708))

(assert (= (and start!742270 ((_ is ElementMatch!20965) r1!6261)) b!7833700))

(assert (= (and start!742270 ((_ is Concat!29810) r1!6261)) b!7833697))

(assert (= (and start!742270 ((_ is Star!20965) r1!6261)) b!7833695))

(assert (= (and start!742270 ((_ is Union!20965) r1!6261)) b!7833698))

(assert (= (and start!742270 ((_ is Cons!73678) s1Rec!453)) b!7833715))

(declare-fun m!8249746 () Bool)

(assert (=> b!7833704 m!8249746))

(declare-fun m!8249748 () Bool)

(assert (=> b!7833704 m!8249748))

(declare-fun m!8249750 () Bool)

(assert (=> b!7833704 m!8249750))

(declare-fun m!8249752 () Bool)

(assert (=> b!7833704 m!8249752))

(declare-fun m!8249754 () Bool)

(assert (=> b!7833702 m!8249754))

(declare-fun m!8249756 () Bool)

(assert (=> b!7833699 m!8249756))

(declare-fun m!8249758 () Bool)

(assert (=> b!7833706 m!8249758))

(declare-fun m!8249760 () Bool)

(assert (=> b!7833694 m!8249760))

(declare-fun m!8249762 () Bool)

(assert (=> b!7833709 m!8249762))

(declare-fun m!8249764 () Bool)

(assert (=> b!7833705 m!8249764))

(declare-fun m!8249766 () Bool)

(assert (=> b!7833713 m!8249766))

(declare-fun m!8249768 () Bool)

(assert (=> start!742270 m!8249768))

(declare-fun m!8249770 () Bool)

(assert (=> b!7833712 m!8249770))

(declare-fun m!8249772 () Bool)

(assert (=> b!7833701 m!8249772))

(check-sat (not b!7833697) (not b!7833703) (not b!7833712) (not b!7833714) (not b!7833706) (not b!7833696) (not b!7833694) (not start!742270) tp_is_empty!52285 (not b!7833695) (not b!7833702) (not b!7833699) (not b!7833704) (not b!7833698) (not b!7833711) (not b!7833692) (not b!7833713) (not b!7833708) (not b!7833693) (not b!7833701) (not b!7833705) (not b!7833709) (not b!7833715))
(check-sat)
