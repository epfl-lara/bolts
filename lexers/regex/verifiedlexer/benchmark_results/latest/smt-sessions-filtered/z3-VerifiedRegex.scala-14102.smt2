; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742506 () Bool)

(assert start!742506)

(declare-fun res!3117680 () Bool)

(declare-fun e!4634909 () Bool)

(assert (=> start!742506 (=> (not res!3117680) (not e!4634909))))

(declare-datatypes ((C!42324 0))(
  ( (C!42325 (val!31602 Int)) )
))
(declare-datatypes ((Regex!20999 0))(
  ( (ElementMatch!20999 (c!1441380 C!42324)) (Concat!29844 (regOne!42510 Regex!20999) (regTwo!42510 Regex!20999)) (EmptyExpr!20999) (Star!20999 (reg!21328 Regex!20999)) (EmptyLang!20999) (Union!20999 (regOne!42511 Regex!20999) (regTwo!42511 Regex!20999)) )
))
(declare-fun r1!3326 () Regex!20999)

(declare-fun validRegex!11413 (Regex!20999) Bool)

(assert (=> start!742506 (= res!3117680 (validRegex!11413 r1!3326))))

(assert (=> start!742506 e!4634909))

(declare-fun e!4634907 () Bool)

(assert (=> start!742506 e!4634907))

(declare-fun e!4634910 () Bool)

(assert (=> start!742506 e!4634910))

(declare-fun e!4634908 () Bool)

(assert (=> start!742506 e!4634908))

(declare-fun e!4634913 () Bool)

(assert (=> start!742506 e!4634913))

(declare-fun e!4634912 () Bool)

(assert (=> start!742506 e!4634912))

(declare-fun b!7838629 () Bool)

(declare-fun tp_is_empty!52353 () Bool)

(declare-fun tp!2319316 () Bool)

(assert (=> b!7838629 (= e!4634908 (and tp_is_empty!52353 tp!2319316))))

(declare-fun b!7838630 () Bool)

(declare-fun res!3117679 () Bool)

(declare-fun e!4634911 () Bool)

(assert (=> b!7838630 (=> (not res!3117679) (not e!4634911))))

(declare-fun r2!3226 () Regex!20999)

(declare-datatypes ((List!73836 0))(
  ( (Nil!73712) (Cons!73712 (h!80160 C!42324) (t!388571 List!73836)) )
))
(declare-datatypes ((tuple2!70004 0))(
  ( (tuple2!70005 (_1!38305 List!73836) (_2!38305 List!73836)) )
))
(declare-fun lt!2678255 () tuple2!70004)

(declare-fun matchR!10455 (Regex!20999 List!73836) Bool)

(assert (=> b!7838630 (= res!3117679 (matchR!10455 r2!3226 (_2!38305 lt!2678255)))))

(declare-fun b!7838631 () Bool)

(declare-fun tp!2319324 () Bool)

(declare-fun tp!2319319 () Bool)

(assert (=> b!7838631 (= e!4634913 (and tp!2319324 tp!2319319))))

(declare-fun b!7838632 () Bool)

(assert (=> b!7838632 (= e!4634910 tp_is_empty!52353)))

(declare-fun b!7838633 () Bool)

(declare-fun tp!2319315 () Bool)

(declare-fun tp!2319313 () Bool)

(assert (=> b!7838633 (= e!4634910 (and tp!2319315 tp!2319313))))

(declare-fun b!7838634 () Bool)

(declare-fun res!3117676 () Bool)

(assert (=> b!7838634 (=> (not res!3117676) (not e!4634909))))

(declare-fun s2!2463 () List!73836)

(assert (=> b!7838634 (= res!3117676 (matchR!10455 r2!3226 s2!2463))))

(declare-fun b!7838635 () Bool)

(declare-fun e!4634906 () Bool)

(assert (=> b!7838635 (= e!4634909 e!4634906)))

(declare-fun res!3117674 () Bool)

(assert (=> b!7838635 (=> (not res!3117674) (not e!4634906))))

(declare-datatypes ((Option!17796 0))(
  ( (None!17795) (Some!17795 (v!54930 tuple2!70004)) )
))
(declare-fun lt!2678256 () Option!17796)

(declare-fun isDefined!14402 (Option!17796) Bool)

(assert (=> b!7838635 (= res!3117674 (isDefined!14402 lt!2678256))))

(declare-fun s1!2717 () List!73836)

(assert (=> b!7838635 (= lt!2678256 (Some!17795 (tuple2!70005 s1!2717 s2!2463)))))

(declare-fun b!7838636 () Bool)

(declare-fun res!3117673 () Bool)

(assert (=> b!7838636 (=> (not res!3117673) (not e!4634909))))

(assert (=> b!7838636 (= res!3117673 (matchR!10455 r1!3326 s1!2717))))

(declare-fun b!7838637 () Bool)

(assert (=> b!7838637 (= e!4634913 tp_is_empty!52353)))

(declare-fun b!7838638 () Bool)

(declare-fun tp!2319320 () Bool)

(assert (=> b!7838638 (= e!4634910 tp!2319320)))

(declare-fun b!7838639 () Bool)

(declare-fun tp!2319325 () Bool)

(assert (=> b!7838639 (= e!4634912 (and tp_is_empty!52353 tp!2319325))))

(declare-fun b!7838640 () Bool)

(declare-fun tp!2319321 () Bool)

(assert (=> b!7838640 (= e!4634907 (and tp_is_empty!52353 tp!2319321))))

(declare-fun b!7838641 () Bool)

(declare-fun res!3117675 () Bool)

(assert (=> b!7838641 (=> (not res!3117675) (not e!4634909))))

(declare-fun s!10212 () List!73836)

(declare-fun ++!18033 (List!73836 List!73836) List!73836)

(assert (=> b!7838641 (= res!3117675 (= (++!18033 s1!2717 s2!2463) s!10212))))

(declare-fun b!7838642 () Bool)

(assert (=> b!7838642 (= e!4634911 false)))

(declare-fun b!7838643 () Bool)

(declare-fun res!3117678 () Bool)

(assert (=> b!7838643 (=> (not res!3117678) (not e!4634909))))

(assert (=> b!7838643 (= res!3117678 (validRegex!11413 r2!3226))))

(declare-fun b!7838644 () Bool)

(declare-fun tp!2319322 () Bool)

(assert (=> b!7838644 (= e!4634913 tp!2319322)))

(declare-fun b!7838645 () Bool)

(declare-fun tp!2319317 () Bool)

(declare-fun tp!2319314 () Bool)

(assert (=> b!7838645 (= e!4634910 (and tp!2319317 tp!2319314))))

(declare-fun b!7838646 () Bool)

(assert (=> b!7838646 (= e!4634906 e!4634911)))

(declare-fun res!3117677 () Bool)

(assert (=> b!7838646 (=> (not res!3117677) (not e!4634911))))

(assert (=> b!7838646 (= res!3117677 (matchR!10455 r1!3326 (_1!38305 lt!2678255)))))

(declare-fun get!26412 (Option!17796) tuple2!70004)

(assert (=> b!7838646 (= lt!2678255 (get!26412 lt!2678256))))

(declare-fun b!7838647 () Bool)

(declare-fun tp!2319323 () Bool)

(declare-fun tp!2319318 () Bool)

(assert (=> b!7838647 (= e!4634913 (and tp!2319323 tp!2319318))))

(assert (= (and start!742506 res!3117680) b!7838643))

(assert (= (and b!7838643 res!3117678) b!7838641))

(assert (= (and b!7838641 res!3117675) b!7838636))

(assert (= (and b!7838636 res!3117673) b!7838634))

(assert (= (and b!7838634 res!3117676) b!7838635))

(assert (= (and b!7838635 res!3117674) b!7838646))

(assert (= (and b!7838646 res!3117677) b!7838630))

(assert (= (and b!7838630 res!3117679) b!7838642))

(get-info :version)

(assert (= (and start!742506 ((_ is Cons!73712) s1!2717)) b!7838640))

(assert (= (and start!742506 ((_ is ElementMatch!20999) r1!3326)) b!7838632))

(assert (= (and start!742506 ((_ is Concat!29844) r1!3326)) b!7838633))

(assert (= (and start!742506 ((_ is Star!20999) r1!3326)) b!7838638))

(assert (= (and start!742506 ((_ is Union!20999) r1!3326)) b!7838645))

(assert (= (and start!742506 ((_ is Cons!73712) s!10212)) b!7838629))

(assert (= (and start!742506 ((_ is ElementMatch!20999) r2!3226)) b!7838637))

(assert (= (and start!742506 ((_ is Concat!29844) r2!3226)) b!7838631))

(assert (= (and start!742506 ((_ is Star!20999) r2!3226)) b!7838644))

(assert (= (and start!742506 ((_ is Union!20999) r2!3226)) b!7838647))

(assert (= (and start!742506 ((_ is Cons!73712) s2!2463)) b!7838639))

(declare-fun m!8252688 () Bool)

(assert (=> b!7838630 m!8252688))

(declare-fun m!8252690 () Bool)

(assert (=> b!7838636 m!8252690))

(declare-fun m!8252692 () Bool)

(assert (=> b!7838641 m!8252692))

(declare-fun m!8252694 () Bool)

(assert (=> b!7838635 m!8252694))

(declare-fun m!8252696 () Bool)

(assert (=> b!7838634 m!8252696))

(declare-fun m!8252698 () Bool)

(assert (=> b!7838646 m!8252698))

(declare-fun m!8252700 () Bool)

(assert (=> b!7838646 m!8252700))

(declare-fun m!8252702 () Bool)

(assert (=> start!742506 m!8252702))

(declare-fun m!8252704 () Bool)

(assert (=> b!7838643 m!8252704))

(check-sat (not start!742506) (not b!7838631) (not b!7838636) (not b!7838634) (not b!7838643) (not b!7838646) (not b!7838638) (not b!7838641) (not b!7838635) (not b!7838645) (not b!7838639) (not b!7838633) (not b!7838640) (not b!7838630) (not b!7838629) tp_is_empty!52353 (not b!7838647) (not b!7838644))
(check-sat)
