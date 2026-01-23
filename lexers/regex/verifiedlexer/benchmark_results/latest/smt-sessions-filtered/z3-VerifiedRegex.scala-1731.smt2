; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86674 () Bool)

(assert start!86674)

(declare-fun b!976273 () Bool)

(declare-fun e!628692 () Bool)

(declare-fun tp_is_empty!5085 () Bool)

(assert (=> b!976273 (= e!628692 tp_is_empty!5085)))

(declare-fun b!976274 () Bool)

(declare-fun res!443367 () Bool)

(declare-fun e!628691 () Bool)

(assert (=> b!976274 (=> res!443367 e!628691)))

(declare-datatypes ((C!6012 0))(
  ( (C!6013 (val!3254 Int)) )
))
(declare-datatypes ((Regex!2721 0))(
  ( (ElementMatch!2721 (c!159444 C!6012)) (Concat!4554 (regOne!5954 Regex!2721) (regTwo!5954 Regex!2721)) (EmptyExpr!2721) (Star!2721 (reg!3050 Regex!2721)) (EmptyLang!2721) (Union!2721 (regOne!5955 Regex!2721) (regTwo!5955 Regex!2721)) )
))
(declare-fun r!15766 () Regex!2721)

(declare-fun validRegex!1190 (Regex!2721) Bool)

(assert (=> b!976274 (= res!443367 (not (validRegex!1190 (regOne!5954 r!15766))))))

(declare-fun b!976275 () Bool)

(assert (=> b!976275 (= e!628691 true)))

(declare-fun res!443370 () Bool)

(declare-fun e!628690 () Bool)

(assert (=> start!86674 (=> (not res!443370) (not e!628690))))

(assert (=> start!86674 (= res!443370 (validRegex!1190 r!15766))))

(assert (=> start!86674 e!628690))

(assert (=> start!86674 e!628692))

(declare-fun e!628693 () Bool)

(assert (=> start!86674 e!628693))

(declare-fun b!976276 () Bool)

(declare-fun tp!298654 () Bool)

(assert (=> b!976276 (= e!628692 tp!298654)))

(declare-fun b!976277 () Bool)

(declare-fun tp!298652 () Bool)

(declare-fun tp!298651 () Bool)

(assert (=> b!976277 (= e!628692 (and tp!298652 tp!298651))))

(declare-fun b!976278 () Bool)

(declare-fun res!443368 () Bool)

(assert (=> b!976278 (=> res!443368 e!628691)))

(declare-datatypes ((List!9951 0))(
  ( (Nil!9935) (Cons!9935 (h!15336 C!6012) (t!100997 List!9951)) )
))
(declare-fun s!10566 () List!9951)

(declare-fun isEmpty!6250 (List!9951) Bool)

(assert (=> b!976278 (= res!443368 (isEmpty!6250 s!10566))))

(declare-fun b!976279 () Bool)

(declare-fun tp!298655 () Bool)

(assert (=> b!976279 (= e!628693 (and tp_is_empty!5085 tp!298655))))

(declare-fun b!976280 () Bool)

(declare-fun tp!298653 () Bool)

(declare-fun tp!298656 () Bool)

(assert (=> b!976280 (= e!628692 (and tp!298653 tp!298656))))

(declare-fun b!976281 () Bool)

(assert (=> b!976281 (= e!628690 (not e!628691))))

(declare-fun res!443369 () Bool)

(assert (=> b!976281 (=> res!443369 e!628691)))

(declare-fun lt!349472 () Bool)

(get-info :version)

(assert (=> b!976281 (= res!443369 (or (not lt!349472) (and ((_ is Concat!4554) r!15766) ((_ is EmptyExpr!2721) (regOne!5954 r!15766))) (not ((_ is Concat!4554) r!15766)) (not ((_ is EmptyExpr!2721) (regTwo!5954 r!15766)))))))

(declare-fun matchRSpec!520 (Regex!2721 List!9951) Bool)

(assert (=> b!976281 (= lt!349472 (matchRSpec!520 r!15766 s!10566))))

(declare-fun matchR!1257 (Regex!2721 List!9951) Bool)

(assert (=> b!976281 (= lt!349472 (matchR!1257 r!15766 s!10566))))

(declare-datatypes ((Unit!15101 0))(
  ( (Unit!15102) )
))
(declare-fun lt!349473 () Unit!15101)

(declare-fun mainMatchTheorem!520 (Regex!2721 List!9951) Unit!15101)

(assert (=> b!976281 (= lt!349473 (mainMatchTheorem!520 r!15766 s!10566))))

(assert (= (and start!86674 res!443370) b!976281))

(assert (= (and b!976281 (not res!443369)) b!976278))

(assert (= (and b!976278 (not res!443368)) b!976274))

(assert (= (and b!976274 (not res!443367)) b!976275))

(assert (= (and start!86674 ((_ is ElementMatch!2721) r!15766)) b!976273))

(assert (= (and start!86674 ((_ is Concat!4554) r!15766)) b!976280))

(assert (= (and start!86674 ((_ is Star!2721) r!15766)) b!976276))

(assert (= (and start!86674 ((_ is Union!2721) r!15766)) b!976277))

(assert (= (and start!86674 ((_ is Cons!9935) s!10566)) b!976279))

(declare-fun m!1177673 () Bool)

(assert (=> b!976274 m!1177673))

(declare-fun m!1177675 () Bool)

(assert (=> start!86674 m!1177675))

(declare-fun m!1177677 () Bool)

(assert (=> b!976278 m!1177677))

(declare-fun m!1177679 () Bool)

(assert (=> b!976281 m!1177679))

(declare-fun m!1177681 () Bool)

(assert (=> b!976281 m!1177681))

(declare-fun m!1177683 () Bool)

(assert (=> b!976281 m!1177683))

(check-sat (not b!976277) (not start!86674) (not b!976279) (not b!976281) (not b!976278) (not b!976274) (not b!976280) (not b!976276) tp_is_empty!5085)
(check-sat)
