; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744314 () Bool)

(assert start!744314)

(declare-fun b!7881802 () Bool)

(declare-fun e!4654436 () Bool)

(declare-fun tp_is_empty!52777 () Bool)

(assert (=> b!7881802 (= e!4654436 tp_is_empty!52777)))

(declare-fun b!7881803 () Bool)

(declare-fun res!3129985 () Bool)

(declare-fun e!4654435 () Bool)

(assert (=> b!7881803 (=> (not res!3129985) (not e!4654435))))

(declare-datatypes ((C!42704 0))(
  ( (C!42705 (val!31814 Int)) )
))
(declare-datatypes ((Regex!21189 0))(
  ( (ElementMatch!21189 (c!1447357 C!42704)) (Concat!30034 (regOne!42890 Regex!21189) (regTwo!42890 Regex!21189)) (EmptyExpr!21189) (Star!21189 (reg!21518 Regex!21189)) (EmptyLang!21189) (Union!21189 (regOne!42891 Regex!21189) (regTwo!42891 Regex!21189)) )
))
(declare-fun r2!6150 () Regex!21189)

(declare-fun validRegex!11599 (Regex!21189) Bool)

(assert (=> b!7881803 (= res!3129985 (validRegex!11599 r2!6150))))

(declare-fun b!7881804 () Bool)

(assert (=> b!7881804 (= e!4654435 (not true))))

(declare-datatypes ((List!74048 0))(
  ( (Nil!73924) (Cons!73924 (h!80372 C!42704) (t!388783 List!74048)) )
))
(declare-fun s!14231 () List!74048)

(declare-fun r1!6212 () Regex!21189)

(declare-fun lt!2681326 () Bool)

(declare-fun matchR!10625 (Regex!21189 List!74048) Bool)

(assert (=> b!7881804 (= lt!2681326 (matchR!10625 (Union!21189 r2!6150 r1!6212) s!14231))))

(declare-fun lt!2681327 () Regex!21189)

(declare-fun lt!2681325 () Regex!21189)

(assert (=> b!7881804 (matchR!10625 (Union!21189 lt!2681327 lt!2681325) (t!388783 s!14231))))

(declare-datatypes ((Unit!169000 0))(
  ( (Unit!169001) )
))
(declare-fun lt!2681324 () Unit!169000)

(declare-fun lemmaReversedUnionAcceptsSameString!58 (Regex!21189 Regex!21189 List!74048) Unit!169000)

(assert (=> b!7881804 (= lt!2681324 (lemmaReversedUnionAcceptsSameString!58 lt!2681325 lt!2681327 (t!388783 s!14231)))))

(declare-fun derivativeStep!6418 (Regex!21189 C!42704) Regex!21189)

(assert (=> b!7881804 (= lt!2681327 (derivativeStep!6418 r2!6150 (h!80372 s!14231)))))

(assert (=> b!7881804 (= lt!2681325 (derivativeStep!6418 r1!6212 (h!80372 s!14231)))))

(declare-fun b!7881805 () Bool)

(declare-fun e!4654437 () Bool)

(assert (=> b!7881805 (= e!4654437 tp_is_empty!52777)))

(declare-fun b!7881806 () Bool)

(declare-fun tp!2342362 () Bool)

(declare-fun tp!2342367 () Bool)

(assert (=> b!7881806 (= e!4654436 (and tp!2342362 tp!2342367))))

(declare-fun b!7881807 () Bool)

(declare-fun tp!2342370 () Bool)

(assert (=> b!7881807 (= e!4654436 tp!2342370)))

(declare-fun b!7881808 () Bool)

(declare-fun e!4654434 () Bool)

(declare-fun tp!2342360 () Bool)

(assert (=> b!7881808 (= e!4654434 (and tp_is_empty!52777 tp!2342360))))

(declare-fun b!7881810 () Bool)

(declare-fun res!3129988 () Bool)

(assert (=> b!7881810 (=> (not res!3129988) (not e!4654435))))

(assert (=> b!7881810 (= res!3129988 (matchR!10625 (Union!21189 r1!6212 r2!6150) s!14231))))

(declare-fun b!7881811 () Bool)

(declare-fun tp!2342364 () Bool)

(declare-fun tp!2342366 () Bool)

(assert (=> b!7881811 (= e!4654437 (and tp!2342364 tp!2342366))))

(declare-fun b!7881812 () Bool)

(declare-fun res!3129986 () Bool)

(assert (=> b!7881812 (=> (not res!3129986) (not e!4654435))))

(get-info :version)

(assert (=> b!7881812 (= res!3129986 ((_ is Cons!73924) s!14231))))

(declare-fun b!7881813 () Bool)

(declare-fun tp!2342369 () Bool)

(assert (=> b!7881813 (= e!4654437 tp!2342369)))

(declare-fun b!7881814 () Bool)

(declare-fun tp!2342361 () Bool)

(declare-fun tp!2342363 () Bool)

(assert (=> b!7881814 (= e!4654436 (and tp!2342361 tp!2342363))))

(declare-fun res!3129987 () Bool)

(assert (=> start!744314 (=> (not res!3129987) (not e!4654435))))

(assert (=> start!744314 (= res!3129987 (validRegex!11599 r1!6212))))

(assert (=> start!744314 e!4654435))

(assert (=> start!744314 e!4654437))

(assert (=> start!744314 e!4654436))

(assert (=> start!744314 e!4654434))

(declare-fun b!7881809 () Bool)

(declare-fun tp!2342368 () Bool)

(declare-fun tp!2342365 () Bool)

(assert (=> b!7881809 (= e!4654437 (and tp!2342368 tp!2342365))))

(assert (= (and start!744314 res!3129987) b!7881803))

(assert (= (and b!7881803 res!3129985) b!7881810))

(assert (= (and b!7881810 res!3129988) b!7881812))

(assert (= (and b!7881812 res!3129986) b!7881804))

(assert (= (and start!744314 ((_ is ElementMatch!21189) r1!6212)) b!7881805))

(assert (= (and start!744314 ((_ is Concat!30034) r1!6212)) b!7881809))

(assert (= (and start!744314 ((_ is Star!21189) r1!6212)) b!7881813))

(assert (= (and start!744314 ((_ is Union!21189) r1!6212)) b!7881811))

(assert (= (and start!744314 ((_ is ElementMatch!21189) r2!6150)) b!7881802))

(assert (= (and start!744314 ((_ is Concat!30034) r2!6150)) b!7881806))

(assert (= (and start!744314 ((_ is Star!21189) r2!6150)) b!7881807))

(assert (= (and start!744314 ((_ is Union!21189) r2!6150)) b!7881814))

(assert (= (and start!744314 ((_ is Cons!73924) s!14231)) b!7881808))

(declare-fun m!8268356 () Bool)

(assert (=> b!7881803 m!8268356))

(declare-fun m!8268358 () Bool)

(assert (=> b!7881804 m!8268358))

(declare-fun m!8268360 () Bool)

(assert (=> b!7881804 m!8268360))

(declare-fun m!8268362 () Bool)

(assert (=> b!7881804 m!8268362))

(declare-fun m!8268364 () Bool)

(assert (=> b!7881804 m!8268364))

(declare-fun m!8268366 () Bool)

(assert (=> b!7881804 m!8268366))

(declare-fun m!8268368 () Bool)

(assert (=> b!7881810 m!8268368))

(declare-fun m!8268370 () Bool)

(assert (=> start!744314 m!8268370))

(check-sat tp_is_empty!52777 (not b!7881804) (not b!7881813) (not b!7881814) (not b!7881808) (not b!7881803) (not b!7881809) (not b!7881811) (not b!7881807) (not b!7881806) (not b!7881810) (not start!744314))
(check-sat)
