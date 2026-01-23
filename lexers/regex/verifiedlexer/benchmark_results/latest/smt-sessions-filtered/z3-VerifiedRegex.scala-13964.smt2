; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739724 () Bool)

(assert start!739724)

(declare-fun b!7765472 () Bool)

(declare-fun e!4601639 () Bool)

(declare-fun tp!2281135 () Bool)

(assert (=> b!7765472 (= e!4601639 tp!2281135)))

(declare-fun b!7765473 () Bool)

(declare-fun tp!2281134 () Bool)

(declare-fun tp!2281132 () Bool)

(assert (=> b!7765473 (= e!4601639 (and tp!2281134 tp!2281132))))

(declare-fun res!3095806 () Bool)

(declare-fun e!4601638 () Bool)

(assert (=> start!739724 (=> (not res!3095806) (not e!4601638))))

(declare-datatypes ((C!41772 0))(
  ( (C!41773 (val!31326 Int)) )
))
(declare-datatypes ((Regex!20723 0))(
  ( (ElementMatch!20723 (c!1431238 C!41772)) (Concat!29568 (regOne!41958 Regex!20723) (regTwo!41958 Regex!20723)) (EmptyExpr!20723) (Star!20723 (reg!21052 Regex!20723)) (EmptyLang!20723) (Union!20723 (regOne!41959 Regex!20723) (regTwo!41959 Regex!20723)) )
))
(declare-fun lt!2670813 () Regex!20723)

(declare-fun validRegex!11137 (Regex!20723) Bool)

(assert (=> start!739724 (= res!3095806 (validRegex!11137 lt!2670813))))

(declare-fun r!25924 () Regex!20723)

(assert (=> start!739724 (= lt!2670813 (Star!20723 r!25924))))

(assert (=> start!739724 e!4601638))

(assert (=> start!739724 e!4601639))

(declare-fun e!4601637 () Bool)

(assert (=> start!739724 e!4601637))

(declare-fun b!7765474 () Bool)

(declare-fun tp_is_empty!51801 () Bool)

(assert (=> b!7765474 (= e!4601639 tp_is_empty!51801)))

(declare-fun b!7765475 () Bool)

(assert (=> b!7765475 (= e!4601638 false)))

(declare-fun lt!2670814 () Bool)

(declare-datatypes ((List!73564 0))(
  ( (Nil!73440) (Cons!73440 (h!79888 C!41772) (t!388299 List!73564)) )
))
(declare-fun s!14904 () List!73564)

(declare-fun matchR!10185 (Regex!20723 List!73564) Bool)

(assert (=> b!7765475 (= lt!2670814 (matchR!10185 lt!2670813 s!14904))))

(declare-fun b!7765476 () Bool)

(declare-fun tp!2281133 () Bool)

(assert (=> b!7765476 (= e!4601637 (and tp_is_empty!51801 tp!2281133))))

(declare-fun b!7765477 () Bool)

(declare-fun tp!2281137 () Bool)

(declare-fun tp!2281136 () Bool)

(assert (=> b!7765477 (= e!4601639 (and tp!2281137 tp!2281136))))

(assert (= (and start!739724 res!3095806) b!7765475))

(get-info :version)

(assert (= (and start!739724 ((_ is ElementMatch!20723) r!25924)) b!7765474))

(assert (= (and start!739724 ((_ is Concat!29568) r!25924)) b!7765477))

(assert (= (and start!739724 ((_ is Star!20723) r!25924)) b!7765472))

(assert (= (and start!739724 ((_ is Union!20723) r!25924)) b!7765473))

(assert (= (and start!739724 ((_ is Cons!73440) s!14904)) b!7765476))

(declare-fun m!8222518 () Bool)

(assert (=> start!739724 m!8222518))

(declare-fun m!8222520 () Bool)

(assert (=> b!7765475 m!8222520))

(check-sat (not b!7765476) (not b!7765473) (not b!7765477) (not start!739724) (not b!7765475) (not b!7765472) tp_is_empty!51801)
(check-sat)
