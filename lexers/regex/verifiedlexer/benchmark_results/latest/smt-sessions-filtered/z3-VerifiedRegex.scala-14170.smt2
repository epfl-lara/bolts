; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743558 () Bool)

(assert start!743558)

(declare-fun b!7859701 () Bool)

(declare-fun e!4644917 () Bool)

(declare-fun tp!2329169 () Bool)

(assert (=> b!7859701 (= e!4644917 tp!2329169)))

(declare-fun b!7859702 () Bool)

(declare-fun e!4644915 () Bool)

(declare-fun tp_is_empty!52625 () Bool)

(assert (=> b!7859702 (= e!4644915 tp_is_empty!52625)))

(declare-fun res!3124594 () Bool)

(declare-fun e!4644916 () Bool)

(assert (=> start!743558 (=> (not res!3124594) (not e!4644916))))

(declare-datatypes ((C!42552 0))(
  ( (C!42553 (val!31738 Int)) )
))
(declare-datatypes ((Regex!21113 0))(
  ( (ElementMatch!21113 (c!1444361 C!42552)) (Concat!29958 (regOne!42738 Regex!21113) (regTwo!42738 Regex!21113)) (EmptyExpr!21113) (Star!21113 (reg!21442 Regex!21113)) (EmptyLang!21113) (Union!21113 (regOne!42739 Regex!21113) (regTwo!42739 Regex!21113)) )
))
(declare-fun r1!6218 () Regex!21113)

(declare-fun validRegex!11523 (Regex!21113) Bool)

(assert (=> start!743558 (= res!3124594 (validRegex!11523 r1!6218))))

(assert (=> start!743558 e!4644916))

(assert (=> start!743558 e!4644917))

(assert (=> start!743558 e!4644915))

(declare-fun e!4644914 () Bool)

(assert (=> start!743558 e!4644914))

(declare-fun b!7859703 () Bool)

(declare-fun tp!2329170 () Bool)

(assert (=> b!7859703 (= e!4644915 tp!2329170)))

(declare-fun b!7859704 () Bool)

(assert (=> b!7859704 (= e!4644916 false)))

(declare-datatypes ((List!73972 0))(
  ( (Nil!73848) (Cons!73848 (h!80296 C!42552) (t!388707 List!73972)) )
))
(declare-fun s!14237 () List!73972)

(declare-fun lt!2680233 () Regex!21113)

(declare-fun r2!6156 () Regex!21113)

(declare-fun derivativeStep!6346 (Regex!21113 C!42552) Regex!21113)

(assert (=> b!7859704 (= lt!2680233 (derivativeStep!6346 (Concat!29958 r2!6156 r1!6218) (h!80296 s!14237)))))

(declare-fun lt!2680234 () Regex!21113)

(assert (=> b!7859704 (= lt!2680234 (derivativeStep!6346 r1!6218 (h!80296 s!14237)))))

(declare-fun lt!2680235 () Regex!21113)

(assert (=> b!7859704 (= lt!2680235 (derivativeStep!6346 r2!6156 (h!80296 s!14237)))))

(declare-fun b!7859705 () Bool)

(declare-fun tp!2329160 () Bool)

(declare-fun tp!2329166 () Bool)

(assert (=> b!7859705 (= e!4644915 (and tp!2329160 tp!2329166))))

(declare-fun b!7859706 () Bool)

(declare-fun tp!2329163 () Bool)

(declare-fun tp!2329161 () Bool)

(assert (=> b!7859706 (= e!4644917 (and tp!2329163 tp!2329161))))

(declare-fun b!7859707 () Bool)

(declare-fun tp!2329167 () Bool)

(declare-fun tp!2329162 () Bool)

(assert (=> b!7859707 (= e!4644917 (and tp!2329167 tp!2329162))))

(declare-fun b!7859708 () Bool)

(declare-fun res!3124590 () Bool)

(assert (=> b!7859708 (=> (not res!3124590) (not e!4644916))))

(get-info :version)

(assert (=> b!7859708 (= res!3124590 ((_ is Cons!73848) s!14237))))

(declare-fun b!7859709 () Bool)

(declare-fun res!3124592 () Bool)

(assert (=> b!7859709 (=> (not res!3124592) (not e!4644916))))

(declare-fun nullable!9383 (Regex!21113) Bool)

(assert (=> b!7859709 (= res!3124592 (nullable!9383 r2!6156))))

(declare-fun b!7859710 () Bool)

(declare-fun res!3124591 () Bool)

(assert (=> b!7859710 (=> (not res!3124591) (not e!4644916))))

(assert (=> b!7859710 (= res!3124591 (validRegex!11523 r2!6156))))

(declare-fun b!7859711 () Bool)

(declare-fun tp!2329165 () Bool)

(declare-fun tp!2329164 () Bool)

(assert (=> b!7859711 (= e!4644915 (and tp!2329165 tp!2329164))))

(declare-fun b!7859712 () Bool)

(assert (=> b!7859712 (= e!4644917 tp_is_empty!52625)))

(declare-fun b!7859713 () Bool)

(declare-fun res!3124593 () Bool)

(assert (=> b!7859713 (=> (not res!3124593) (not e!4644916))))

(declare-fun matchR!10549 (Regex!21113 List!73972) Bool)

(assert (=> b!7859713 (= res!3124593 (matchR!10549 r1!6218 s!14237))))

(declare-fun b!7859714 () Bool)

(declare-fun tp!2329168 () Bool)

(assert (=> b!7859714 (= e!4644914 (and tp_is_empty!52625 tp!2329168))))

(assert (= (and start!743558 res!3124594) b!7859710))

(assert (= (and b!7859710 res!3124591) b!7859713))

(assert (= (and b!7859713 res!3124593) b!7859709))

(assert (= (and b!7859709 res!3124592) b!7859708))

(assert (= (and b!7859708 res!3124590) b!7859704))

(assert (= (and start!743558 ((_ is ElementMatch!21113) r1!6218)) b!7859712))

(assert (= (and start!743558 ((_ is Concat!29958) r1!6218)) b!7859706))

(assert (= (and start!743558 ((_ is Star!21113) r1!6218)) b!7859701))

(assert (= (and start!743558 ((_ is Union!21113) r1!6218)) b!7859707))

(assert (= (and start!743558 ((_ is ElementMatch!21113) r2!6156)) b!7859702))

(assert (= (and start!743558 ((_ is Concat!29958) r2!6156)) b!7859711))

(assert (= (and start!743558 ((_ is Star!21113) r2!6156)) b!7859703))

(assert (= (and start!743558 ((_ is Union!21113) r2!6156)) b!7859705))

(assert (= (and start!743558 ((_ is Cons!73848) s!14237)) b!7859714))

(declare-fun m!8261742 () Bool)

(assert (=> start!743558 m!8261742))

(declare-fun m!8261744 () Bool)

(assert (=> b!7859713 m!8261744))

(declare-fun m!8261746 () Bool)

(assert (=> b!7859710 m!8261746))

(declare-fun m!8261748 () Bool)

(assert (=> b!7859704 m!8261748))

(declare-fun m!8261750 () Bool)

(assert (=> b!7859704 m!8261750))

(declare-fun m!8261752 () Bool)

(assert (=> b!7859704 m!8261752))

(declare-fun m!8261754 () Bool)

(assert (=> b!7859709 m!8261754))

(check-sat (not b!7859709) (not b!7859713) (not b!7859706) (not b!7859703) tp_is_empty!52625 (not b!7859701) (not b!7859711) (not start!743558) (not b!7859714) (not b!7859705) (not b!7859710) (not b!7859704) (not b!7859707))
(check-sat)
