; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742518 () Bool)

(assert start!742518)

(declare-fun b!7838935 () Bool)

(declare-fun e!4635043 () Bool)

(declare-fun tp!2319549 () Bool)

(assert (=> b!7838935 (= e!4635043 tp!2319549)))

(declare-fun b!7838936 () Bool)

(declare-fun res!3117788 () Bool)

(declare-fun e!4635042 () Bool)

(assert (=> b!7838936 (=> (not res!3117788) (not e!4635042))))

(declare-datatypes ((C!42336 0))(
  ( (C!42337 (val!31608 Int)) )
))
(declare-datatypes ((Regex!21005 0))(
  ( (ElementMatch!21005 (c!1441386 C!42336)) (Concat!29850 (regOne!42522 Regex!21005) (regTwo!42522 Regex!21005)) (EmptyExpr!21005) (Star!21005 (reg!21334 Regex!21005)) (EmptyLang!21005) (Union!21005 (regOne!42523 Regex!21005) (regTwo!42523 Regex!21005)) )
))
(declare-fun r2!3226 () Regex!21005)

(declare-datatypes ((List!73842 0))(
  ( (Nil!73718) (Cons!73718 (h!80166 C!42336) (t!388577 List!73842)) )
))
(declare-datatypes ((tuple2!70012 0))(
  ( (tuple2!70013 (_1!38309 List!73842) (_2!38309 List!73842)) )
))
(declare-fun lt!2678274 () tuple2!70012)

(declare-fun matchR!10461 (Regex!21005 List!73842) Bool)

(assert (=> b!7838936 (= res!3117788 (matchR!10461 r2!3226 (_2!38309 lt!2678274)))))

(declare-fun b!7838937 () Bool)

(declare-fun tp!2319553 () Bool)

(declare-fun tp!2319550 () Bool)

(assert (=> b!7838937 (= e!4635043 (and tp!2319553 tp!2319550))))

(declare-fun b!7838938 () Bool)

(declare-fun res!3117785 () Bool)

(declare-fun e!4635039 () Bool)

(assert (=> b!7838938 (=> (not res!3117785) (not e!4635039))))

(declare-fun s1!2717 () List!73842)

(declare-fun s!10212 () List!73842)

(declare-fun s2!2463 () List!73842)

(declare-fun ++!18039 (List!73842 List!73842) List!73842)

(assert (=> b!7838938 (= res!3117785 (= (++!18039 s1!2717 s2!2463) s!10212))))

(declare-fun b!7838939 () Bool)

(declare-fun res!3117784 () Bool)

(assert (=> b!7838939 (=> (not res!3117784) (not e!4635039))))

(declare-fun validRegex!11419 (Regex!21005) Bool)

(assert (=> b!7838939 (= res!3117784 (validRegex!11419 r2!3226))))

(declare-fun res!3117782 () Bool)

(assert (=> start!742518 (=> (not res!3117782) (not e!4635039))))

(declare-fun r1!3326 () Regex!21005)

(assert (=> start!742518 (= res!3117782 (validRegex!11419 r1!3326))))

(assert (=> start!742518 e!4635039))

(declare-fun e!4635038 () Bool)

(assert (=> start!742518 e!4635038))

(declare-fun e!4635045 () Bool)

(assert (=> start!742518 e!4635045))

(declare-fun e!4635040 () Bool)

(assert (=> start!742518 e!4635040))

(assert (=> start!742518 e!4635043))

(declare-fun e!4635044 () Bool)

(assert (=> start!742518 e!4635044))

(declare-fun b!7838940 () Bool)

(declare-fun tp!2319554 () Bool)

(declare-fun tp!2319558 () Bool)

(assert (=> b!7838940 (= e!4635045 (and tp!2319554 tp!2319558))))

(declare-fun b!7838941 () Bool)

(declare-fun tp!2319548 () Bool)

(assert (=> b!7838941 (= e!4635045 tp!2319548)))

(declare-fun b!7838942 () Bool)

(declare-fun res!3117781 () Bool)

(assert (=> b!7838942 (=> (not res!3117781) (not e!4635039))))

(declare-fun e!4635041 () Bool)

(assert (=> b!7838942 (= res!3117781 e!4635041)))

(declare-fun res!3117786 () Bool)

(assert (=> b!7838942 (=> res!3117786 e!4635041)))

(assert (=> b!7838942 (= res!3117786 (not (matchR!10461 r1!3326 s1!2717)))))

(declare-fun b!7838943 () Bool)

(declare-fun res!3117787 () Bool)

(assert (=> b!7838943 (=> (not res!3117787) (not e!4635039))))

(get-info :version)

(assert (=> b!7838943 (= res!3117787 false)))

(declare-fun b!7838944 () Bool)

(declare-fun tp_is_empty!52365 () Bool)

(assert (=> b!7838944 (= e!4635043 tp_is_empty!52365)))

(declare-fun b!7838945 () Bool)

(declare-fun tp!2319556 () Bool)

(declare-fun tp!2319547 () Bool)

(assert (=> b!7838945 (= e!4635043 (and tp!2319556 tp!2319547))))

(declare-fun b!7838946 () Bool)

(declare-fun tp!2319555 () Bool)

(assert (=> b!7838946 (= e!4635038 (and tp_is_empty!52365 tp!2319555))))

(declare-fun b!7838947 () Bool)

(assert (=> b!7838947 (= e!4635041 (not (matchR!10461 r2!3226 s2!2463)))))

(declare-fun b!7838948 () Bool)

(declare-fun tp!2319552 () Bool)

(declare-fun tp!2319557 () Bool)

(assert (=> b!7838948 (= e!4635045 (and tp!2319552 tp!2319557))))

(declare-fun b!7838949 () Bool)

(assert (=> b!7838949 (= e!4635045 tp_is_empty!52365)))

(declare-fun b!7838950 () Bool)

(declare-fun tp!2319559 () Bool)

(assert (=> b!7838950 (= e!4635044 (and tp_is_empty!52365 tp!2319559))))

(declare-fun b!7838951 () Bool)

(assert (=> b!7838951 (= e!4635042 false)))

(declare-fun b!7838952 () Bool)

(assert (=> b!7838952 (= e!4635039 e!4635042)))

(declare-fun res!3117783 () Bool)

(assert (=> b!7838952 (=> (not res!3117783) (not e!4635042))))

(assert (=> b!7838952 (= res!3117783 (matchR!10461 r1!3326 (_1!38309 lt!2678274)))))

(declare-datatypes ((Option!17800 0))(
  ( (None!17799) (Some!17799 (v!54934 tuple2!70012)) )
))
(declare-fun get!26419 (Option!17800) tuple2!70012)

(assert (=> b!7838952 (= lt!2678274 (get!26419 None!17799))))

(declare-fun b!7838953 () Bool)

(declare-fun tp!2319551 () Bool)

(assert (=> b!7838953 (= e!4635040 (and tp_is_empty!52365 tp!2319551))))

(assert (= (and start!742518 res!3117782) b!7838939))

(assert (= (and b!7838939 res!3117784) b!7838938))

(assert (= (and b!7838938 res!3117785) b!7838942))

(assert (= (and b!7838942 (not res!3117786)) b!7838947))

(assert (= (and b!7838942 res!3117781) b!7838943))

(assert (= (and b!7838943 res!3117787) b!7838952))

(assert (= (and b!7838952 res!3117783) b!7838936))

(assert (= (and b!7838936 res!3117788) b!7838951))

(assert (= (and start!742518 ((_ is Cons!73718) s1!2717)) b!7838946))

(assert (= (and start!742518 ((_ is ElementMatch!21005) r1!3326)) b!7838949))

(assert (= (and start!742518 ((_ is Concat!29850) r1!3326)) b!7838948))

(assert (= (and start!742518 ((_ is Star!21005) r1!3326)) b!7838941))

(assert (= (and start!742518 ((_ is Union!21005) r1!3326)) b!7838940))

(assert (= (and start!742518 ((_ is Cons!73718) s!10212)) b!7838953))

(assert (= (and start!742518 ((_ is ElementMatch!21005) r2!3226)) b!7838944))

(assert (= (and start!742518 ((_ is Concat!29850) r2!3226)) b!7838937))

(assert (= (and start!742518 ((_ is Star!21005) r2!3226)) b!7838935))

(assert (= (and start!742518 ((_ is Union!21005) r2!3226)) b!7838945))

(assert (= (and start!742518 ((_ is Cons!73718) s2!2463)) b!7838950))

(declare-fun m!8252770 () Bool)

(assert (=> b!7838947 m!8252770))

(declare-fun m!8252772 () Bool)

(assert (=> b!7838952 m!8252772))

(declare-fun m!8252774 () Bool)

(assert (=> b!7838952 m!8252774))

(declare-fun m!8252776 () Bool)

(assert (=> start!742518 m!8252776))

(declare-fun m!8252778 () Bool)

(assert (=> b!7838942 m!8252778))

(declare-fun m!8252780 () Bool)

(assert (=> b!7838939 m!8252780))

(declare-fun m!8252782 () Bool)

(assert (=> b!7838938 m!8252782))

(declare-fun m!8252784 () Bool)

(assert (=> b!7838936 m!8252784))

(check-sat (not b!7838946) (not b!7838948) (not b!7838952) (not b!7838936) (not b!7838950) (not b!7838939) (not b!7838940) tp_is_empty!52365 (not b!7838953) (not b!7838938) (not b!7838945) (not start!742518) (not b!7838941) (not b!7838935) (not b!7838937) (not b!7838947) (not b!7838942))
(check-sat)
