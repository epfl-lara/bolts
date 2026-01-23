; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742526 () Bool)

(assert start!742526)

(declare-fun b!7839141 () Bool)

(declare-fun res!3117856 () Bool)

(declare-fun e!4635128 () Bool)

(assert (=> b!7839141 (=> (not res!3117856) (not e!4635128))))

(declare-datatypes ((C!42344 0))(
  ( (C!42345 (val!31612 Int)) )
))
(declare-datatypes ((List!73846 0))(
  ( (Nil!73722) (Cons!73722 (h!80170 C!42344) (t!388581 List!73846)) )
))
(declare-fun s2!2463 () List!73846)

(get-info :version)

(assert (=> b!7839141 (= res!3117856 (not ((_ is Nil!73722) s2!2463)))))

(declare-fun b!7839142 () Bool)

(declare-fun e!4635125 () Bool)

(declare-fun tp!2319708 () Bool)

(assert (=> b!7839142 (= e!4635125 tp!2319708)))

(declare-fun b!7839143 () Bool)

(declare-fun e!4635127 () Bool)

(declare-fun tp_is_empty!52373 () Bool)

(declare-fun tp!2319703 () Bool)

(assert (=> b!7839143 (= e!4635127 (and tp_is_empty!52373 tp!2319703))))

(declare-fun res!3117857 () Bool)

(assert (=> start!742526 (=> (not res!3117857) (not e!4635128))))

(declare-datatypes ((Regex!21009 0))(
  ( (ElementMatch!21009 (c!1441390 C!42344)) (Concat!29854 (regOne!42530 Regex!21009) (regTwo!42530 Regex!21009)) (EmptyExpr!21009) (Star!21009 (reg!21338 Regex!21009)) (EmptyLang!21009) (Union!21009 (regOne!42531 Regex!21009) (regTwo!42531 Regex!21009)) )
))
(declare-fun r1!3326 () Regex!21009)

(declare-fun validRegex!11423 (Regex!21009) Bool)

(assert (=> start!742526 (= res!3117857 (validRegex!11423 r1!3326))))

(assert (=> start!742526 e!4635128))

(declare-fun e!4635126 () Bool)

(assert (=> start!742526 e!4635126))

(declare-fun e!4635129 () Bool)

(assert (=> start!742526 e!4635129))

(assert (=> start!742526 e!4635127))

(assert (=> start!742526 e!4635125))

(declare-fun e!4635123 () Bool)

(assert (=> start!742526 e!4635123))

(declare-fun b!7839144 () Bool)

(assert (=> b!7839144 (= e!4635125 tp_is_empty!52373)))

(declare-fun b!7839145 () Bool)

(declare-fun tp!2319711 () Bool)

(declare-fun tp!2319705 () Bool)

(assert (=> b!7839145 (= e!4635129 (and tp!2319711 tp!2319705))))

(declare-fun b!7839146 () Bool)

(declare-fun res!3117858 () Bool)

(assert (=> b!7839146 (=> (not res!3117858) (not e!4635128))))

(declare-fun r2!3226 () Regex!21009)

(assert (=> b!7839146 (= res!3117858 (validRegex!11423 r2!3226))))

(declare-fun b!7839147 () Bool)

(assert (=> b!7839147 (= e!4635128 (not true))))

(declare-fun s1!2717 () List!73846)

(declare-fun s!10212 () List!73846)

(declare-fun ++!18043 (List!73846 List!73846) List!73846)

(assert (=> b!7839147 (= (++!18043 (++!18043 s1!2717 (Cons!73722 (h!80170 s2!2463) Nil!73722)) (t!388581 s2!2463)) s!10212)))

(declare-datatypes ((Unit!168816 0))(
  ( (Unit!168817) )
))
(declare-fun lt!2678286 () Unit!168816)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3454 (List!73846 C!42344 List!73846 List!73846) Unit!168816)

(assert (=> b!7839147 (= lt!2678286 (lemmaMoveElementToOtherListKeepsConcatEq!3454 s1!2717 (h!80170 s2!2463) (t!388581 s2!2463) s!10212))))

(declare-fun b!7839148 () Bool)

(declare-fun tp!2319715 () Bool)

(declare-fun tp!2319713 () Bool)

(assert (=> b!7839148 (= e!4635129 (and tp!2319715 tp!2319713))))

(declare-fun b!7839149 () Bool)

(declare-fun e!4635124 () Bool)

(declare-fun matchR!10465 (Regex!21009 List!73846) Bool)

(assert (=> b!7839149 (= e!4635124 (not (matchR!10465 r2!3226 s2!2463)))))

(declare-fun b!7839150 () Bool)

(declare-fun tp!2319709 () Bool)

(assert (=> b!7839150 (= e!4635129 tp!2319709)))

(declare-fun b!7839151 () Bool)

(declare-fun res!3117859 () Bool)

(assert (=> b!7839151 (=> (not res!3117859) (not e!4635128))))

(assert (=> b!7839151 (= res!3117859 e!4635124)))

(declare-fun res!3117855 () Bool)

(assert (=> b!7839151 (=> res!3117855 e!4635124)))

(assert (=> b!7839151 (= res!3117855 (not (matchR!10465 r1!3326 s1!2717)))))

(declare-fun b!7839152 () Bool)

(assert (=> b!7839152 (= e!4635129 tp_is_empty!52373)))

(declare-fun b!7839153 () Bool)

(declare-fun tp!2319706 () Bool)

(assert (=> b!7839153 (= e!4635123 (and tp_is_empty!52373 tp!2319706))))

(declare-fun b!7839154 () Bool)

(declare-fun tp!2319714 () Bool)

(assert (=> b!7839154 (= e!4635126 (and tp_is_empty!52373 tp!2319714))))

(declare-fun b!7839155 () Bool)

(declare-fun tp!2319712 () Bool)

(declare-fun tp!2319704 () Bool)

(assert (=> b!7839155 (= e!4635125 (and tp!2319712 tp!2319704))))

(declare-fun b!7839156 () Bool)

(declare-fun tp!2319707 () Bool)

(declare-fun tp!2319710 () Bool)

(assert (=> b!7839156 (= e!4635125 (and tp!2319707 tp!2319710))))

(declare-fun b!7839157 () Bool)

(declare-fun res!3117860 () Bool)

(assert (=> b!7839157 (=> (not res!3117860) (not e!4635128))))

(assert (=> b!7839157 (= res!3117860 (= (++!18043 s1!2717 s2!2463) s!10212))))

(assert (= (and start!742526 res!3117857) b!7839146))

(assert (= (and b!7839146 res!3117858) b!7839157))

(assert (= (and b!7839157 res!3117860) b!7839151))

(assert (= (and b!7839151 (not res!3117855)) b!7839149))

(assert (= (and b!7839151 res!3117859) b!7839141))

(assert (= (and b!7839141 res!3117856) b!7839147))

(assert (= (and start!742526 ((_ is Cons!73722) s1!2717)) b!7839154))

(assert (= (and start!742526 ((_ is ElementMatch!21009) r1!3326)) b!7839152))

(assert (= (and start!742526 ((_ is Concat!29854) r1!3326)) b!7839145))

(assert (= (and start!742526 ((_ is Star!21009) r1!3326)) b!7839150))

(assert (= (and start!742526 ((_ is Union!21009) r1!3326)) b!7839148))

(assert (= (and start!742526 ((_ is Cons!73722) s!10212)) b!7839143))

(assert (= (and start!742526 ((_ is ElementMatch!21009) r2!3226)) b!7839144))

(assert (= (and start!742526 ((_ is Concat!29854) r2!3226)) b!7839156))

(assert (= (and start!742526 ((_ is Star!21009) r2!3226)) b!7839142))

(assert (= (and start!742526 ((_ is Union!21009) r2!3226)) b!7839155))

(assert (= (and start!742526 ((_ is Cons!73722) s2!2463)) b!7839153))

(declare-fun m!8252822 () Bool)

(assert (=> b!7839147 m!8252822))

(assert (=> b!7839147 m!8252822))

(declare-fun m!8252824 () Bool)

(assert (=> b!7839147 m!8252824))

(declare-fun m!8252826 () Bool)

(assert (=> b!7839147 m!8252826))

(declare-fun m!8252828 () Bool)

(assert (=> start!742526 m!8252828))

(declare-fun m!8252830 () Bool)

(assert (=> b!7839151 m!8252830))

(declare-fun m!8252832 () Bool)

(assert (=> b!7839157 m!8252832))

(declare-fun m!8252834 () Bool)

(assert (=> b!7839149 m!8252834))

(declare-fun m!8252836 () Bool)

(assert (=> b!7839146 m!8252836))

(check-sat (not b!7839153) (not b!7839147) (not b!7839157) (not b!7839148) (not b!7839143) (not b!7839142) (not b!7839145) (not b!7839155) (not b!7839149) (not start!742526) tp_is_empty!52373 (not b!7839156) (not b!7839154) (not b!7839150) (not b!7839151) (not b!7839146))
(check-sat)
