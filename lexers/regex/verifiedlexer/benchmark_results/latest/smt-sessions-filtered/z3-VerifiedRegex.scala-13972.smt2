; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739828 () Bool)

(assert start!739828)

(declare-fun b!7767193 () Bool)

(declare-fun e!4602492 () Bool)

(declare-fun tp!2281725 () Bool)

(declare-fun tp!2281724 () Bool)

(assert (=> b!7767193 (= e!4602492 (and tp!2281725 tp!2281724))))

(declare-fun b!7767194 () Bool)

(declare-fun tp!2281729 () Bool)

(assert (=> b!7767194 (= e!4602492 tp!2281729)))

(declare-fun b!7767195 () Bool)

(declare-fun e!4602493 () Bool)

(declare-fun e!4602491 () Bool)

(assert (=> b!7767195 (= e!4602493 e!4602491)))

(declare-fun res!3096438 () Bool)

(assert (=> b!7767195 (=> (not res!3096438) (not e!4602491))))

(declare-datatypes ((C!41804 0))(
  ( (C!41805 (val!31342 Int)) )
))
(declare-datatypes ((List!73580 0))(
  ( (Nil!73456) (Cons!73456 (h!79904 C!41804) (t!388315 List!73580)) )
))
(declare-fun s!14904 () List!73580)

(declare-datatypes ((Regex!20739 0))(
  ( (ElementMatch!20739 (c!1431540 C!41804)) (Concat!29584 (regOne!41990 Regex!20739) (regTwo!41990 Regex!20739)) (EmptyExpr!20739) (Star!20739 (reg!21068 Regex!20739)) (EmptyLang!20739) (Union!20739 (regOne!41991 Regex!20739) (regTwo!41991 Regex!20739)) )
))
(declare-fun lt!2671057 () Regex!20739)

(declare-fun lt!2671055 () Regex!20739)

(declare-fun derivativeStep!6084 (Regex!20739 C!41804) Regex!20739)

(assert (=> b!7767195 (= res!3096438 (= (derivativeStep!6084 lt!2671055 (h!79904 s!14904)) (Concat!29584 lt!2671057 lt!2671055)))))

(declare-fun r!25924 () Regex!20739)

(assert (=> b!7767195 (= lt!2671057 (derivativeStep!6084 r!25924 (h!79904 s!14904)))))

(declare-fun b!7767196 () Bool)

(declare-fun res!3096439 () Bool)

(assert (=> b!7767196 (=> (not res!3096439) (not e!4602493))))

(declare-fun matchR!10201 (Regex!20739 List!73580) Bool)

(assert (=> b!7767196 (= res!3096439 (matchR!10201 lt!2671055 s!14904))))

(declare-fun b!7767197 () Bool)

(declare-fun tp_is_empty!51833 () Bool)

(assert (=> b!7767197 (= e!4602492 tp_is_empty!51833)))

(declare-fun b!7767198 () Bool)

(declare-fun e!4602495 () Bool)

(assert (=> b!7767198 (= e!4602491 (not e!4602495))))

(declare-fun res!3096437 () Bool)

(assert (=> b!7767198 (=> res!3096437 e!4602495)))

(declare-fun validRegex!11153 (Regex!20739) Bool)

(assert (=> b!7767198 (= res!3096437 (not (validRegex!11153 r!25924)))))

(declare-datatypes ((tuple2!69844 0))(
  ( (tuple2!69845 (_1!38225 List!73580) (_2!38225 List!73580)) )
))
(declare-fun lt!2671058 () tuple2!69844)

(declare-datatypes ((Option!17716 0))(
  ( (None!17715) (Some!17715 (v!54850 tuple2!69844)) )
))
(declare-fun lt!2671060 () Option!17716)

(declare-fun get!26220 (Option!17716) tuple2!69844)

(assert (=> b!7767198 (= lt!2671058 (get!26220 lt!2671060))))

(declare-fun isDefined!14328 (Option!17716) Bool)

(assert (=> b!7767198 (isDefined!14328 lt!2671060)))

(declare-fun findConcatSeparation!3746 (Regex!20739 Regex!20739 List!73580 List!73580 List!73580) Option!17716)

(assert (=> b!7767198 (= lt!2671060 (findConcatSeparation!3746 lt!2671057 lt!2671055 Nil!73456 (t!388315 s!14904) (t!388315 s!14904)))))

(declare-datatypes ((Unit!168440 0))(
  ( (Unit!168441) )
))
(declare-fun lt!2671056 () Unit!168440)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!336 (Regex!20739 Regex!20739 List!73580) Unit!168440)

(assert (=> b!7767198 (= lt!2671056 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!336 lt!2671057 lt!2671055 (t!388315 s!14904)))))

(declare-fun res!3096440 () Bool)

(assert (=> start!739828 (=> (not res!3096440) (not e!4602493))))

(assert (=> start!739828 (= res!3096440 (validRegex!11153 lt!2671055))))

(assert (=> start!739828 (= lt!2671055 (Star!20739 r!25924))))

(assert (=> start!739828 e!4602493))

(assert (=> start!739828 e!4602492))

(declare-fun e!4602494 () Bool)

(assert (=> start!739828 e!4602494))

(declare-fun b!7767199 () Bool)

(declare-fun tp!2281726 () Bool)

(declare-fun tp!2281727 () Bool)

(assert (=> b!7767199 (= e!4602492 (and tp!2281726 tp!2281727))))

(declare-fun b!7767200 () Bool)

(assert (=> b!7767200 (= e!4602495 true)))

(declare-fun lt!2671059 () Bool)

(assert (=> b!7767200 (= lt!2671059 (matchR!10201 lt!2671055 (_2!38225 lt!2671058)))))

(declare-fun b!7767201 () Bool)

(declare-fun res!3096436 () Bool)

(assert (=> b!7767201 (=> (not res!3096436) (not e!4602493))))

(get-info :version)

(assert (=> b!7767201 (= res!3096436 ((_ is Cons!73456) s!14904))))

(declare-fun b!7767202 () Bool)

(declare-fun tp!2281728 () Bool)

(assert (=> b!7767202 (= e!4602494 (and tp_is_empty!51833 tp!2281728))))

(declare-fun b!7767203 () Bool)

(declare-fun res!3096435 () Bool)

(assert (=> b!7767203 (=> res!3096435 e!4602495)))

(assert (=> b!7767203 (= res!3096435 (not (matchR!10201 r!25924 (Cons!73456 (h!79904 s!14904) (_1!38225 lt!2671058)))))))

(assert (= (and start!739828 res!3096440) b!7767196))

(assert (= (and b!7767196 res!3096439) b!7767201))

(assert (= (and b!7767201 res!3096436) b!7767195))

(assert (= (and b!7767195 res!3096438) b!7767198))

(assert (= (and b!7767198 (not res!3096437)) b!7767203))

(assert (= (and b!7767203 (not res!3096435)) b!7767200))

(assert (= (and start!739828 ((_ is ElementMatch!20739) r!25924)) b!7767197))

(assert (= (and start!739828 ((_ is Concat!29584) r!25924)) b!7767193))

(assert (= (and start!739828 ((_ is Star!20739) r!25924)) b!7767194))

(assert (= (and start!739828 ((_ is Union!20739) r!25924)) b!7767199))

(assert (= (and start!739828 ((_ is Cons!73456) s!14904)) b!7767202))

(declare-fun m!8223168 () Bool)

(assert (=> start!739828 m!8223168))

(declare-fun m!8223170 () Bool)

(assert (=> b!7767203 m!8223170))

(declare-fun m!8223172 () Bool)

(assert (=> b!7767195 m!8223172))

(declare-fun m!8223174 () Bool)

(assert (=> b!7767195 m!8223174))

(declare-fun m!8223176 () Bool)

(assert (=> b!7767198 m!8223176))

(declare-fun m!8223178 () Bool)

(assert (=> b!7767198 m!8223178))

(declare-fun m!8223180 () Bool)

(assert (=> b!7767198 m!8223180))

(declare-fun m!8223182 () Bool)

(assert (=> b!7767198 m!8223182))

(declare-fun m!8223184 () Bool)

(assert (=> b!7767198 m!8223184))

(declare-fun m!8223186 () Bool)

(assert (=> b!7767200 m!8223186))

(declare-fun m!8223188 () Bool)

(assert (=> b!7767196 m!8223188))

(check-sat (not b!7767193) (not b!7767195) (not b!7767203) tp_is_empty!51833 (not b!7767194) (not start!739828) (not b!7767198) (not b!7767196) (not b!7767200) (not b!7767202) (not b!7767199))
(check-sat)
