; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281418 () Bool)

(assert start!281418)

(declare-fun b!2882285 () Bool)

(declare-fun e!1823323 () Bool)

(declare-fun tp!924387 () Bool)

(declare-fun tp!924386 () Bool)

(assert (=> b!2882285 (= e!1823323 (and tp!924387 tp!924386))))

(declare-fun b!2882286 () Bool)

(declare-fun tp_is_empty!15121 () Bool)

(assert (=> b!2882286 (= e!1823323 tp_is_empty!15121)))

(declare-fun b!2882287 () Bool)

(declare-fun res!1194209 () Bool)

(declare-fun e!1823322 () Bool)

(assert (=> b!2882287 (=> (not res!1194209) (not e!1823322))))

(declare-datatypes ((C!17716 0))(
  ( (C!17717 (val!10892 Int)) )
))
(declare-datatypes ((Regex!8767 0))(
  ( (ElementMatch!8767 (c!468248 C!17716)) (Concat!14088 (regOne!18046 Regex!8767) (regTwo!18046 Regex!8767)) (EmptyExpr!8767) (Star!8767 (reg!9096 Regex!8767)) (EmptyLang!8767) (Union!8767 (regOne!18047 Regex!8767) (regTwo!18047 Regex!8767)) )
))
(declare-fun r!23079 () Regex!8767)

(get-info :version)

(assert (=> b!2882287 (= res!1194209 (and (not ((_ is EmptyExpr!8767) r!23079)) (not ((_ is EmptyLang!8767) r!23079)) (not ((_ is ElementMatch!8767) r!23079)) (not ((_ is Star!8767) r!23079)) ((_ is Union!8767) r!23079)))))

(declare-fun res!1194207 () Bool)

(assert (=> start!281418 (=> (not res!1194207) (not e!1823322))))

(declare-fun validRegex!3540 (Regex!8767) Bool)

(assert (=> start!281418 (= res!1194207 (validRegex!3540 r!23079))))

(assert (=> start!281418 e!1823322))

(assert (=> start!281418 e!1823323))

(declare-fun b!2882288 () Bool)

(declare-fun tp!924389 () Bool)

(assert (=> b!2882288 (= e!1823323 tp!924389)))

(declare-fun b!2882289 () Bool)

(declare-fun tp!924388 () Bool)

(declare-fun tp!924385 () Bool)

(assert (=> b!2882289 (= e!1823323 (and tp!924388 tp!924385))))

(declare-fun b!2882290 () Bool)

(declare-fun res!1194208 () Bool)

(assert (=> b!2882290 (=> (not res!1194208) (not e!1823322))))

(declare-datatypes ((List!34568 0))(
  ( (Nil!34444) (Cons!34444 (h!39864 C!17716) (t!233611 List!34568)) )
))
(declare-datatypes ((Option!6440 0))(
  ( (None!6439) (Some!6439 (v!34565 List!34568)) )
))
(declare-fun isDefined!5004 (Option!6440) Bool)

(declare-fun getLanguageWitness!474 (Regex!8767) Option!6440)

(assert (=> b!2882290 (= res!1194208 (isDefined!5004 (getLanguageWitness!474 r!23079)))))

(declare-fun b!2882291 () Bool)

(declare-fun e!1823321 () Bool)

(assert (=> b!2882291 (= e!1823322 e!1823321)))

(declare-fun res!1194206 () Bool)

(assert (=> b!2882291 (=> (not res!1194206) (not e!1823321))))

(declare-fun lt!1019978 () Option!6440)

(assert (=> b!2882291 (= res!1194206 ((_ is Some!6439) lt!1019978))))

(assert (=> b!2882291 (= lt!1019978 (getLanguageWitness!474 (regOne!18047 r!23079)))))

(declare-fun b!2882292 () Bool)

(assert (=> b!2882292 (= e!1823321 (not true))))

(declare-fun matchR!3755 (Regex!8767 List!34568) Bool)

(assert (=> b!2882292 (matchR!3755 r!23079 (v!34565 lt!1019978))))

(declare-datatypes ((Unit!48015 0))(
  ( (Unit!48016) )
))
(declare-fun lt!1019979 () Unit!48015)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!30 (Regex!8767 Regex!8767 List!34568) Unit!48015)

(assert (=> b!2882292 (= lt!1019979 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!30 (regOne!18047 r!23079) (regTwo!18047 r!23079) (v!34565 lt!1019978)))))

(declare-fun get!10371 (Option!6440) List!34568)

(assert (=> b!2882292 (matchR!3755 (regOne!18047 r!23079) (get!10371 lt!1019978))))

(declare-fun lt!1019980 () Unit!48015)

(declare-fun lemmaGetWitnessMatches!62 (Regex!8767) Unit!48015)

(assert (=> b!2882292 (= lt!1019980 (lemmaGetWitnessMatches!62 (regOne!18047 r!23079)))))

(assert (= (and start!281418 res!1194207) b!2882290))

(assert (= (and b!2882290 res!1194208) b!2882287))

(assert (= (and b!2882287 res!1194209) b!2882291))

(assert (= (and b!2882291 res!1194206) b!2882292))

(assert (= (and start!281418 ((_ is ElementMatch!8767) r!23079)) b!2882286))

(assert (= (and start!281418 ((_ is Concat!14088) r!23079)) b!2882285))

(assert (= (and start!281418 ((_ is Star!8767) r!23079)) b!2882288))

(assert (= (and start!281418 ((_ is Union!8767) r!23079)) b!2882289))

(declare-fun m!3299369 () Bool)

(assert (=> start!281418 m!3299369))

(declare-fun m!3299371 () Bool)

(assert (=> b!2882290 m!3299371))

(assert (=> b!2882290 m!3299371))

(declare-fun m!3299373 () Bool)

(assert (=> b!2882290 m!3299373))

(declare-fun m!3299375 () Bool)

(assert (=> b!2882291 m!3299375))

(declare-fun m!3299377 () Bool)

(assert (=> b!2882292 m!3299377))

(declare-fun m!3299379 () Bool)

(assert (=> b!2882292 m!3299379))

(assert (=> b!2882292 m!3299377))

(declare-fun m!3299381 () Bool)

(assert (=> b!2882292 m!3299381))

(declare-fun m!3299383 () Bool)

(assert (=> b!2882292 m!3299383))

(declare-fun m!3299385 () Bool)

(assert (=> b!2882292 m!3299385))

(check-sat (not b!2882288) (not b!2882285) (not b!2882289) tp_is_empty!15121 (not b!2882290) (not b!2882291) (not b!2882292) (not start!281418))
(check-sat)
