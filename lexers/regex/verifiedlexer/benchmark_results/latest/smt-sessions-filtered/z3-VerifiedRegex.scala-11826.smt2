; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!665370 () Bool)

(assert start!665370)

(declare-fun b!6914296 () Bool)

(declare-fun e!4162462 () Bool)

(declare-fun tp_is_empty!43023 () Bool)

(assert (=> b!6914296 (= e!4162462 tp_is_empty!43023)))

(assert (=> start!665370 false))

(declare-fun e!4162464 () Bool)

(assert (=> start!665370 e!4162464))

(assert (=> start!665370 e!4162462))

(declare-fun e!4162463 () Bool)

(assert (=> start!665370 e!4162463))

(declare-fun b!6914297 () Bool)

(assert (=> b!6914297 (= e!4162463 tp_is_empty!43023)))

(declare-fun b!6914298 () Bool)

(assert (=> b!6914298 (= e!4162464 tp_is_empty!43023)))

(declare-fun b!6914299 () Bool)

(declare-fun tp!1904299 () Bool)

(declare-fun tp!1904297 () Bool)

(assert (=> b!6914299 (= e!4162464 (and tp!1904299 tp!1904297))))

(declare-fun b!6914300 () Bool)

(declare-fun tp!1904300 () Bool)

(assert (=> b!6914300 (= e!4162463 tp!1904300)))

(declare-fun b!6914301 () Bool)

(declare-fun tp!1904291 () Bool)

(declare-fun tp!1904298 () Bool)

(assert (=> b!6914301 (= e!4162463 (and tp!1904291 tp!1904298))))

(declare-fun b!6914302 () Bool)

(declare-fun tp!1904303 () Bool)

(assert (=> b!6914302 (= e!4162464 tp!1904303)))

(declare-fun b!6914303 () Bool)

(declare-fun tp!1904301 () Bool)

(declare-fun tp!1904295 () Bool)

(assert (=> b!6914303 (= e!4162463 (and tp!1904301 tp!1904295))))

(declare-fun b!6914304 () Bool)

(declare-fun tp!1904294 () Bool)

(declare-fun tp!1904296 () Bool)

(assert (=> b!6914304 (= e!4162462 (and tp!1904294 tp!1904296))))

(declare-fun b!6914305 () Bool)

(declare-fun tp!1904302 () Bool)

(assert (=> b!6914305 (= e!4162462 tp!1904302)))

(declare-fun b!6914306 () Bool)

(declare-fun tp!1904304 () Bool)

(declare-fun tp!1904305 () Bool)

(assert (=> b!6914306 (= e!4162464 (and tp!1904304 tp!1904305))))

(declare-fun b!6914307 () Bool)

(declare-fun tp!1904293 () Bool)

(declare-fun tp!1904292 () Bool)

(assert (=> b!6914307 (= e!4162462 (and tp!1904293 tp!1904292))))

(declare-datatypes ((C!34068 0))(
  ( (C!34069 (val!26736 Int)) )
))
(declare-datatypes ((Regex!16899 0))(
  ( (ElementMatch!16899 (c!1284157 C!34068)) (Concat!25744 (regOne!34310 Regex!16899) (regTwo!34310 Regex!16899)) (EmptyExpr!16899) (Star!16899 (reg!17228 Regex!16899)) (EmptyLang!16899) (Union!16899 (regOne!34311 Regex!16899) (regTwo!34311 Regex!16899)) )
))
(declare-fun r1!6342 () Regex!16899)

(get-info :version)

(assert (= (and start!665370 ((_ is ElementMatch!16899) r1!6342)) b!6914298))

(assert (= (and start!665370 ((_ is Concat!25744) r1!6342)) b!6914299))

(assert (= (and start!665370 ((_ is Star!16899) r1!6342)) b!6914302))

(assert (= (and start!665370 ((_ is Union!16899) r1!6342)) b!6914306))

(declare-fun r2!6280 () Regex!16899)

(assert (= (and start!665370 ((_ is ElementMatch!16899) r2!6280)) b!6914296))

(assert (= (and start!665370 ((_ is Concat!25744) r2!6280)) b!6914304))

(assert (= (and start!665370 ((_ is Star!16899) r2!6280)) b!6914305))

(assert (= (and start!665370 ((_ is Union!16899) r2!6280)) b!6914307))

(declare-fun r3!135 () Regex!16899)

(assert (= (and start!665370 ((_ is ElementMatch!16899) r3!135)) b!6914297))

(assert (= (and start!665370 ((_ is Concat!25744) r3!135)) b!6914303))

(assert (= (and start!665370 ((_ is Star!16899) r3!135)) b!6914300))

(assert (= (and start!665370 ((_ is Union!16899) r3!135)) b!6914301))

(check-sat tp_is_empty!43023 (not b!6914304) (not b!6914301) (not b!6914306) (not b!6914299) (not b!6914305) (not b!6914303) (not b!6914307) (not b!6914302) (not b!6914300))
(check-sat)
