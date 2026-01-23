; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663762 () Bool)

(assert start!663762)

(declare-fun res!2804363 () Bool)

(declare-fun e!4145808 () Bool)

(assert (=> start!663762 (=> (not res!2804363) (not e!4145808))))

(declare-datatypes ((C!33772 0))(
  ( (C!33773 (val!26588 Int)) )
))
(declare-datatypes ((Regex!16751 0))(
  ( (ElementMatch!16751 (c!1279889 C!33772)) (Concat!25596 (regOne!34014 Regex!16751) (regTwo!34014 Regex!16751)) (EmptyExpr!16751) (Star!16751 (reg!17080 Regex!16751)) (EmptyLang!16751) (Union!16751 (regOne!34015 Regex!16751) (regTwo!34015 Regex!16751)) )
))
(declare-fun r1!6342 () Regex!16751)

(declare-fun validRegex!8459 (Regex!16751) Bool)

(assert (=> start!663762 (= res!2804363 (validRegex!8459 r1!6342))))

(assert (=> start!663762 e!4145808))

(declare-fun e!4145810 () Bool)

(assert (=> start!663762 e!4145810))

(declare-fun e!4145812 () Bool)

(assert (=> start!663762 e!4145812))

(declare-fun e!4145809 () Bool)

(assert (=> start!663762 e!4145809))

(declare-fun e!4145811 () Bool)

(assert (=> start!663762 e!4145811))

(declare-fun b!6879180 () Bool)

(declare-fun tp!1891386 () Bool)

(declare-fun tp!1891390 () Bool)

(assert (=> b!6879180 (= e!4145809 (and tp!1891386 tp!1891390))))

(declare-fun b!6879181 () Bool)

(declare-fun tp_is_empty!42727 () Bool)

(assert (=> b!6879181 (= e!4145812 tp_is_empty!42727)))

(declare-fun b!6879182 () Bool)

(assert (=> b!6879182 (= e!4145808 (not true))))

(declare-fun lt!2459429 () Regex!16751)

(declare-datatypes ((List!66508 0))(
  ( (Nil!66384) (Cons!66384 (h!72832 C!33772) (t!380251 List!66508)) )
))
(declare-fun s!14361 () List!66508)

(declare-fun matchR!8896 (Regex!16751 List!66508) Bool)

(declare-fun matchRSpec!3814 (Regex!16751 List!66508) Bool)

(assert (=> b!6879182 (= (matchR!8896 lt!2459429 s!14361) (matchRSpec!3814 lt!2459429 s!14361))))

(declare-datatypes ((Unit!160222 0))(
  ( (Unit!160223) )
))
(declare-fun lt!2459428 () Unit!160222)

(declare-fun mainMatchTheorem!3814 (Regex!16751 List!66508) Unit!160222)

(assert (=> b!6879182 (= lt!2459428 (mainMatchTheorem!3814 lt!2459429 s!14361))))

(declare-fun r3!135 () Regex!16751)

(declare-fun r2!6280 () Regex!16751)

(assert (=> b!6879182 (= lt!2459429 (Concat!25596 (Concat!25596 r1!6342 r2!6280) r3!135))))

(declare-fun b!6879183 () Bool)

(declare-fun tp!1891397 () Bool)

(declare-fun tp!1891396 () Bool)

(assert (=> b!6879183 (= e!4145810 (and tp!1891397 tp!1891396))))

(declare-fun b!6879184 () Bool)

(declare-fun tp!1891398 () Bool)

(assert (=> b!6879184 (= e!4145810 tp!1891398)))

(declare-fun b!6879185 () Bool)

(assert (=> b!6879185 (= e!4145809 tp_is_empty!42727)))

(declare-fun b!6879186 () Bool)

(declare-fun tp!1891389 () Bool)

(declare-fun tp!1891399 () Bool)

(assert (=> b!6879186 (= e!4145812 (and tp!1891389 tp!1891399))))

(declare-fun b!6879187 () Bool)

(declare-fun res!2804364 () Bool)

(assert (=> b!6879187 (=> (not res!2804364) (not e!4145808))))

(assert (=> b!6879187 (= res!2804364 (validRegex!8459 r2!6280))))

(declare-fun b!6879188 () Bool)

(declare-fun tp!1891395 () Bool)

(declare-fun tp!1891394 () Bool)

(assert (=> b!6879188 (= e!4145810 (and tp!1891395 tp!1891394))))

(declare-fun b!6879189 () Bool)

(assert (=> b!6879189 (= e!4145810 tp_is_empty!42727)))

(declare-fun b!6879190 () Bool)

(declare-fun res!2804362 () Bool)

(assert (=> b!6879190 (=> (not res!2804362) (not e!4145808))))

(assert (=> b!6879190 (= res!2804362 (validRegex!8459 r3!135))))

(declare-fun b!6879191 () Bool)

(declare-fun tp!1891391 () Bool)

(assert (=> b!6879191 (= e!4145812 tp!1891391)))

(declare-fun b!6879192 () Bool)

(declare-fun tp!1891384 () Bool)

(declare-fun tp!1891392 () Bool)

(assert (=> b!6879192 (= e!4145809 (and tp!1891384 tp!1891392))))

(declare-fun b!6879193 () Bool)

(declare-fun tp!1891385 () Bool)

(assert (=> b!6879193 (= e!4145811 (and tp_is_empty!42727 tp!1891385))))

(declare-fun b!6879194 () Bool)

(declare-fun tp!1891387 () Bool)

(declare-fun tp!1891393 () Bool)

(assert (=> b!6879194 (= e!4145812 (and tp!1891387 tp!1891393))))

(declare-fun b!6879195 () Bool)

(declare-fun tp!1891388 () Bool)

(assert (=> b!6879195 (= e!4145809 tp!1891388)))

(assert (= (and start!663762 res!2804363) b!6879187))

(assert (= (and b!6879187 res!2804364) b!6879190))

(assert (= (and b!6879190 res!2804362) b!6879182))

(get-info :version)

(assert (= (and start!663762 ((_ is ElementMatch!16751) r1!6342)) b!6879189))

(assert (= (and start!663762 ((_ is Concat!25596) r1!6342)) b!6879183))

(assert (= (and start!663762 ((_ is Star!16751) r1!6342)) b!6879184))

(assert (= (and start!663762 ((_ is Union!16751) r1!6342)) b!6879188))

(assert (= (and start!663762 ((_ is ElementMatch!16751) r2!6280)) b!6879181))

(assert (= (and start!663762 ((_ is Concat!25596) r2!6280)) b!6879194))

(assert (= (and start!663762 ((_ is Star!16751) r2!6280)) b!6879191))

(assert (= (and start!663762 ((_ is Union!16751) r2!6280)) b!6879186))

(assert (= (and start!663762 ((_ is ElementMatch!16751) r3!135)) b!6879185))

(assert (= (and start!663762 ((_ is Concat!25596) r3!135)) b!6879192))

(assert (= (and start!663762 ((_ is Star!16751) r3!135)) b!6879195))

(assert (= (and start!663762 ((_ is Union!16751) r3!135)) b!6879180))

(assert (= (and start!663762 ((_ is Cons!66384) s!14361)) b!6879193))

(declare-fun m!7605668 () Bool)

(assert (=> start!663762 m!7605668))

(declare-fun m!7605670 () Bool)

(assert (=> b!6879182 m!7605670))

(declare-fun m!7605672 () Bool)

(assert (=> b!6879182 m!7605672))

(declare-fun m!7605674 () Bool)

(assert (=> b!6879182 m!7605674))

(declare-fun m!7605676 () Bool)

(assert (=> b!6879187 m!7605676))

(declare-fun m!7605678 () Bool)

(assert (=> b!6879190 m!7605678))

(check-sat tp_is_empty!42727 (not b!6879190) (not b!6879191) (not b!6879184) (not b!6879194) (not b!6879192) (not b!6879183) (not b!6879195) (not b!6879188) (not b!6879186) (not start!663762) (not b!6879182) (not b!6879193) (not b!6879180) (not b!6879187))
(check-sat)
