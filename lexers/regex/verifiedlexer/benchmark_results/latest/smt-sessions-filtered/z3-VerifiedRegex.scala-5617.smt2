; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281462 () Bool)

(assert start!281462)

(declare-fun b!2882848 () Bool)

(declare-fun e!1823503 () Bool)

(declare-fun tp!924717 () Bool)

(declare-fun tp!924719 () Bool)

(assert (=> b!2882848 (= e!1823503 (and tp!924717 tp!924719))))

(declare-fun b!2882849 () Bool)

(declare-fun e!1823502 () Bool)

(declare-fun e!1823501 () Bool)

(assert (=> b!2882849 (= e!1823502 e!1823501)))

(declare-fun res!1194505 () Bool)

(assert (=> b!2882849 (=> (not res!1194505) (not e!1823501))))

(declare-datatypes ((C!17760 0))(
  ( (C!17761 (val!10914 Int)) )
))
(declare-datatypes ((List!34590 0))(
  ( (Nil!34466) (Cons!34466 (h!39886 C!17760) (t!233633 List!34590)) )
))
(declare-datatypes ((Option!6462 0))(
  ( (None!6461) (Some!6461 (v!34587 List!34590)) )
))
(declare-fun lt!1020160 () Option!6462)

(get-info :version)

(assert (=> b!2882849 (= res!1194505 ((_ is Some!6461) lt!1020160))))

(declare-datatypes ((Regex!8789 0))(
  ( (ElementMatch!8789 (c!468270 C!17760)) (Concat!14110 (regOne!18090 Regex!8789) (regTwo!18090 Regex!8789)) (EmptyExpr!8789) (Star!8789 (reg!9118 Regex!8789)) (EmptyLang!8789) (Union!8789 (regOne!18091 Regex!8789) (regTwo!18091 Regex!8789)) )
))
(declare-fun r!23079 () Regex!8789)

(declare-fun getLanguageWitness!496 (Regex!8789) Option!6462)

(assert (=> b!2882849 (= lt!1020160 (getLanguageWitness!496 (regOne!18090 r!23079)))))

(declare-fun b!2882850 () Bool)

(declare-fun res!1194507 () Bool)

(assert (=> b!2882850 (=> (not res!1194507) (not e!1823501))))

(assert (=> b!2882850 (= res!1194507 ((_ is Some!6461) (getLanguageWitness!496 (regTwo!18090 r!23079))))))

(declare-fun b!2882851 () Bool)

(declare-fun tp_is_empty!15165 () Bool)

(assert (=> b!2882851 (= e!1823503 tp_is_empty!15165)))

(declare-fun b!2882852 () Bool)

(assert (=> b!2882852 (= e!1823501 (not true))))

(declare-fun matchR!3771 (Regex!8789 List!34590) Bool)

(declare-fun get!10398 (Option!6462) List!34590)

(assert (=> b!2882852 (matchR!3771 (regOne!18090 r!23079) (get!10398 lt!1020160))))

(declare-datatypes ((Unit!48047 0))(
  ( (Unit!48048) )
))
(declare-fun lt!1020159 () Unit!48047)

(declare-fun lemmaGetWitnessMatches!78 (Regex!8789) Unit!48047)

(assert (=> b!2882852 (= lt!1020159 (lemmaGetWitnessMatches!78 (regOne!18090 r!23079)))))

(declare-fun res!1194509 () Bool)

(assert (=> start!281462 (=> (not res!1194509) (not e!1823502))))

(declare-fun validRegex!3562 (Regex!8789) Bool)

(assert (=> start!281462 (= res!1194509 (validRegex!3562 r!23079))))

(assert (=> start!281462 e!1823502))

(assert (=> start!281462 e!1823503))

(declare-fun b!2882853 () Bool)

(declare-fun tp!924718 () Bool)

(assert (=> b!2882853 (= e!1823503 tp!924718)))

(declare-fun b!2882854 () Bool)

(declare-fun res!1194506 () Bool)

(assert (=> b!2882854 (=> (not res!1194506) (not e!1823502))))

(declare-fun isDefined!5026 (Option!6462) Bool)

(assert (=> b!2882854 (= res!1194506 (isDefined!5026 (getLanguageWitness!496 r!23079)))))

(declare-fun b!2882855 () Bool)

(declare-fun res!1194508 () Bool)

(assert (=> b!2882855 (=> (not res!1194508) (not e!1823502))))

(assert (=> b!2882855 (= res!1194508 (and (not ((_ is EmptyExpr!8789) r!23079)) (not ((_ is EmptyLang!8789) r!23079)) (not ((_ is ElementMatch!8789) r!23079)) (not ((_ is Star!8789) r!23079)) (not ((_ is Union!8789) r!23079))))))

(declare-fun b!2882856 () Bool)

(declare-fun tp!924716 () Bool)

(declare-fun tp!924715 () Bool)

(assert (=> b!2882856 (= e!1823503 (and tp!924716 tp!924715))))

(assert (= (and start!281462 res!1194509) b!2882854))

(assert (= (and b!2882854 res!1194506) b!2882855))

(assert (= (and b!2882855 res!1194508) b!2882849))

(assert (= (and b!2882849 res!1194505) b!2882850))

(assert (= (and b!2882850 res!1194507) b!2882852))

(assert (= (and start!281462 ((_ is ElementMatch!8789) r!23079)) b!2882851))

(assert (= (and start!281462 ((_ is Concat!14110) r!23079)) b!2882856))

(assert (= (and start!281462 ((_ is Star!8789) r!23079)) b!2882853))

(assert (= (and start!281462 ((_ is Union!8789) r!23079)) b!2882848))

(declare-fun m!3299751 () Bool)

(assert (=> start!281462 m!3299751))

(declare-fun m!3299753 () Bool)

(assert (=> b!2882854 m!3299753))

(assert (=> b!2882854 m!3299753))

(declare-fun m!3299755 () Bool)

(assert (=> b!2882854 m!3299755))

(declare-fun m!3299757 () Bool)

(assert (=> b!2882849 m!3299757))

(declare-fun m!3299759 () Bool)

(assert (=> b!2882852 m!3299759))

(assert (=> b!2882852 m!3299759))

(declare-fun m!3299761 () Bool)

(assert (=> b!2882852 m!3299761))

(declare-fun m!3299763 () Bool)

(assert (=> b!2882852 m!3299763))

(declare-fun m!3299765 () Bool)

(assert (=> b!2882850 m!3299765))

(check-sat (not b!2882852) (not b!2882850) (not b!2882849) (not b!2882848) (not b!2882853) (not b!2882854) tp_is_empty!15165 (not b!2882856) (not start!281462))
(check-sat)
