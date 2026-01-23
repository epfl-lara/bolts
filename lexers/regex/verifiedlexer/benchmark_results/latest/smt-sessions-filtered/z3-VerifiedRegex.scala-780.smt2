; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44778 () Bool)

(assert start!44778)

(declare-fun b!469123 () Bool)

(assert (=> b!469123 true))

(declare-fun b!469122 () Bool)

(declare-fun e!287127 () Bool)

(declare-fun tp!129503 () Bool)

(declare-fun tp!129506 () Bool)

(assert (=> b!469122 (= e!287127 (and tp!129503 tp!129506))))

(declare-fun e!287126 () Bool)

(assert (=> b!469123 (= e!287126 true)))

(declare-datatypes ((Unit!8239 0))(
  ( (Unit!8240) )
))
(declare-fun lt!209642 () Unit!8239)

(declare-datatypes ((C!3136 0))(
  ( (C!3137 (val!1454 Int)) )
))
(declare-datatypes ((List!4523 0))(
  ( (Nil!4513) (Cons!4513 (h!9910 C!3136) (t!72917 List!4523)) )
))
(declare-datatypes ((Option!1199 0))(
  ( (None!1198) (Some!1198 (v!15599 List!4523)) )
))
(declare-fun lt!209640 () Option!1199)

(declare-fun lambda!13850 () Int)

(declare-fun ExistsThe!2 (Option!1199 Int) Unit!8239)

(assert (=> b!469123 (= lt!209642 (ExistsThe!2 lt!209640 lambda!13850))))

(declare-fun b!469124 () Bool)

(declare-fun tp_is_empty!2011 () Bool)

(assert (=> b!469124 (= e!287127 tp_is_empty!2011)))

(declare-fun b!469125 () Bool)

(declare-fun res!208313 () Bool)

(declare-fun e!287128 () Bool)

(assert (=> b!469125 (=> (not res!208313) (not e!287128))))

(declare-datatypes ((Regex!1107 0))(
  ( (ElementMatch!1107 (c!94424 C!3136)) (Concat!2007 (regOne!2726 Regex!1107) (regTwo!2726 Regex!1107)) (EmptyExpr!1107) (Star!1107 (reg!1436 Regex!1107)) (EmptyLang!1107) (Union!1107 (regOne!2727 Regex!1107) (regTwo!2727 Regex!1107)) )
))
(declare-fun r!23305 () Regex!1107)

(declare-fun lostCause!101 (Regex!1107) Bool)

(assert (=> b!469125 (= res!208313 (not (lostCause!101 r!23305)))))

(declare-fun b!469126 () Bool)

(declare-fun tp!129507 () Bool)

(assert (=> b!469126 (= e!287127 tp!129507)))

(declare-fun b!469127 () Bool)

(assert (=> b!469127 (= e!287128 (not e!287126))))

(declare-fun res!208312 () Bool)

(assert (=> b!469127 (=> res!208312 e!287126)))

(declare-fun isDefined!1034 (Option!1199) Bool)

(assert (=> b!469127 (= res!208312 (not (isDefined!1034 lt!209640)))))

(declare-fun matchR!423 (Regex!1107 List!4523) Bool)

(declare-fun get!1670 (Option!1199) List!4523)

(assert (=> b!469127 (matchR!423 r!23305 (get!1670 lt!209640))))

(declare-fun getLanguageWitness!34 (Regex!1107) Option!1199)

(assert (=> b!469127 (= lt!209640 (getLanguageWitness!34 r!23305))))

(declare-fun lt!209641 () Unit!8239)

(declare-fun lemmaGetWitnessMatches!4 (Regex!1107) Unit!8239)

(assert (=> b!469127 (= lt!209641 (lemmaGetWitnessMatches!4 r!23305))))

(declare-fun res!208311 () Bool)

(assert (=> start!44778 (=> (not res!208311) (not e!287128))))

(declare-fun validRegex!335 (Regex!1107) Bool)

(assert (=> start!44778 (= res!208311 (validRegex!335 r!23305))))

(assert (=> start!44778 e!287128))

(assert (=> start!44778 e!287127))

(declare-fun b!469128 () Bool)

(declare-fun tp!129505 () Bool)

(declare-fun tp!129504 () Bool)

(assert (=> b!469128 (= e!287127 (and tp!129505 tp!129504))))

(assert (= (and start!44778 res!208311) b!469125))

(assert (= (and b!469125 res!208313) b!469127))

(assert (= (and b!469127 (not res!208312)) b!469123))

(get-info :version)

(assert (= (and start!44778 ((_ is ElementMatch!1107) r!23305)) b!469124))

(assert (= (and start!44778 ((_ is Concat!2007) r!23305)) b!469128))

(assert (= (and start!44778 ((_ is Star!1107) r!23305)) b!469126))

(assert (= (and start!44778 ((_ is Union!1107) r!23305)) b!469122))

(declare-fun m!744015 () Bool)

(assert (=> b!469123 m!744015))

(declare-fun m!744017 () Bool)

(assert (=> b!469125 m!744017))

(declare-fun m!744019 () Bool)

(assert (=> b!469127 m!744019))

(declare-fun m!744021 () Bool)

(assert (=> b!469127 m!744021))

(declare-fun m!744023 () Bool)

(assert (=> b!469127 m!744023))

(declare-fun m!744025 () Bool)

(assert (=> b!469127 m!744025))

(declare-fun m!744027 () Bool)

(assert (=> b!469127 m!744027))

(assert (=> b!469127 m!744021))

(declare-fun m!744029 () Bool)

(assert (=> start!44778 m!744029))

(check-sat tp_is_empty!2011 (not b!469127) (not b!469125) (not b!469128) (not b!469122) (not start!44778) (not b!469126) (not b!469123))
(check-sat)
