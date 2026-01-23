; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741962 () Bool)

(assert start!741962)

(declare-fun b!7819776 () Bool)

(declare-fun e!4626735 () Bool)

(declare-fun tp_is_empty!52221 () Bool)

(declare-fun tp!2307618 () Bool)

(assert (=> b!7819776 (= e!4626735 (and tp_is_empty!52221 tp!2307618))))

(declare-fun b!7819777 () Bool)

(declare-fun res!3112547 () Bool)

(declare-fun e!4626732 () Bool)

(assert (=> b!7819777 (=> (not res!3112547) (not e!4626732))))

(declare-datatypes ((C!42192 0))(
  ( (C!42193 (val!31536 Int)) )
))
(declare-datatypes ((List!73770 0))(
  ( (Nil!73646) (Cons!73646 (h!80094 C!42192) (t!388505 List!73770)) )
))
(declare-fun s1!4101 () List!73770)

(declare-fun s2!3721 () List!73770)

(declare-fun s!14274 () List!73770)

(declare-fun ++!17967 (List!73770 List!73770) List!73770)

(assert (=> b!7819777 (= res!3112547 (= (++!17967 s1!4101 s2!3721) s!14274))))

(declare-fun b!7819778 () Bool)

(declare-fun res!3112548 () Bool)

(assert (=> b!7819778 (=> (not res!3112548) (not e!4626732))))

(declare-fun s2Rec!453 () List!73770)

(get-info :version)

(assert (=> b!7819778 (= res!3112548 ((_ is Nil!73646) s2Rec!453))))

(declare-fun b!7819779 () Bool)

(declare-fun res!3112546 () Bool)

(assert (=> b!7819779 (=> (not res!3112546) (not e!4626732))))

(declare-fun e!4626731 () Bool)

(assert (=> b!7819779 (= res!3112546 e!4626731)))

(declare-fun res!3112549 () Bool)

(assert (=> b!7819779 (=> res!3112549 e!4626731)))

(declare-datatypes ((Regex!20933 0))(
  ( (ElementMatch!20933 (c!1439282 C!42192)) (Concat!29778 (regOne!42378 Regex!20933) (regTwo!42378 Regex!20933)) (EmptyExpr!20933) (Star!20933 (reg!21262 Regex!20933)) (EmptyLang!20933) (Union!20933 (regOne!42379 Regex!20933) (regTwo!42379 Regex!20933)) )
))
(declare-fun r1!6261 () Regex!20933)

(declare-fun s1Rec!453 () List!73770)

(declare-fun matchR!10389 (Regex!20933 List!73770) Bool)

(assert (=> b!7819779 (= res!3112549 (not (matchR!10389 r1!6261 s1Rec!453)))))

(declare-fun b!7819780 () Bool)

(declare-fun e!4626736 () Bool)

(declare-fun tp!2307622 () Bool)

(declare-fun tp!2307615 () Bool)

(assert (=> b!7819780 (= e!4626736 (and tp!2307622 tp!2307615))))

(declare-fun b!7819781 () Bool)

(declare-fun res!3112553 () Bool)

(declare-fun e!4626737 () Bool)

(assert (=> b!7819781 (=> (not res!3112553) (not e!4626737))))

(assert (=> b!7819781 (= res!3112553 (and (= s1Rec!453 s1!4101) (= s2Rec!453 s2!3721)))))

(declare-fun b!7819782 () Bool)

(declare-fun res!3112554 () Bool)

(assert (=> b!7819782 (=> (not res!3112554) (not e!4626732))))

(declare-fun r2!6199 () Regex!20933)

(assert (=> b!7819782 (= res!3112554 (matchR!10389 r2!6199 s2!3721))))

(declare-fun b!7819783 () Bool)

(assert (=> b!7819783 (= e!4626731 (not (matchR!10389 r2!6199 s2Rec!453)))))

(declare-fun b!7819784 () Bool)

(declare-fun res!3112544 () Bool)

(assert (=> b!7819784 (=> (not res!3112544) (not e!4626732))))

(assert (=> b!7819784 (= res!3112544 (matchR!10389 r1!6261 s1!4101))))

(declare-fun res!3112556 () Bool)

(assert (=> start!741962 (=> (not res!3112556) (not e!4626732))))

(declare-fun validRegex!11347 (Regex!20933) Bool)

(assert (=> start!741962 (= res!3112556 (validRegex!11347 r1!6261))))

(assert (=> start!741962 e!4626732))

(assert (=> start!741962 e!4626736))

(declare-fun e!4626730 () Bool)

(assert (=> start!741962 e!4626730))

(declare-fun e!4626738 () Bool)

(assert (=> start!741962 e!4626738))

(assert (=> start!741962 e!4626735))

(declare-fun e!4626733 () Bool)

(assert (=> start!741962 e!4626733))

(declare-fun e!4626734 () Bool)

(assert (=> start!741962 e!4626734))

(declare-fun e!4626739 () Bool)

(assert (=> start!741962 e!4626739))

(declare-fun b!7819785 () Bool)

(declare-fun tp!2307626 () Bool)

(declare-fun tp!2307621 () Bool)

(assert (=> b!7819785 (= e!4626734 (and tp!2307626 tp!2307621))))

(declare-fun b!7819786 () Bool)

(declare-fun res!3112550 () Bool)

(assert (=> b!7819786 (=> (not res!3112550) (not e!4626732))))

(assert (=> b!7819786 (= res!3112550 (validRegex!11347 r2!6199))))

(declare-fun b!7819787 () Bool)

(assert (=> b!7819787 (= e!4626736 tp_is_empty!52221)))

(declare-fun b!7819788 () Bool)

(declare-fun res!3112545 () Bool)

(assert (=> b!7819788 (=> (not res!3112545) (not e!4626732))))

(assert (=> b!7819788 (= res!3112545 (= (++!17967 s1Rec!453 s2Rec!453) s!14274))))

(declare-fun b!7819789 () Bool)

(assert (=> b!7819789 (= e!4626732 e!4626737)))

(declare-fun res!3112555 () Bool)

(assert (=> b!7819789 (=> (not res!3112555) (not e!4626737))))

(declare-fun lt!2676143 () Int)

(declare-fun size!42739 (List!73770) Int)

(assert (=> b!7819789 (= res!3112555 (= lt!2676143 (size!42739 s!14274)))))

(assert (=> b!7819789 (= lt!2676143 (size!42739 s1Rec!453))))

(declare-fun b!7819790 () Bool)

(declare-fun tp!2307627 () Bool)

(assert (=> b!7819790 (= e!4626733 (and tp_is_empty!52221 tp!2307627))))

(declare-fun b!7819791 () Bool)

(assert (=> b!7819791 (= e!4626737 false)))

(declare-datatypes ((tuple2!69976 0))(
  ( (tuple2!69977 (_1!38291 List!73770) (_2!38291 List!73770)) )
))
(declare-datatypes ((Option!17782 0))(
  ( (None!17781) (Some!17781 (v!54916 tuple2!69976)) )
))
(declare-fun lt!2676144 () Option!17782)

(declare-fun findConcatSeparation!3812 (Regex!20933 Regex!20933 List!73770 List!73770 List!73770) Option!17782)

(assert (=> b!7819791 (= lt!2676144 (findConcatSeparation!3812 r1!6261 r2!6199 s1Rec!453 s2Rec!453 s!14274))))

(declare-fun b!7819792 () Bool)

(declare-fun tp!2307623 () Bool)

(declare-fun tp!2307614 () Bool)

(assert (=> b!7819792 (= e!4626734 (and tp!2307623 tp!2307614))))

(declare-fun b!7819793 () Bool)

(declare-fun tp!2307620 () Bool)

(assert (=> b!7819793 (= e!4626739 (and tp_is_empty!52221 tp!2307620))))

(declare-fun b!7819794 () Bool)

(declare-fun res!3112551 () Bool)

(assert (=> b!7819794 (=> (not res!3112551) (not e!4626732))))

(declare-fun isPrefix!6283 (List!73770 List!73770) Bool)

(assert (=> b!7819794 (= res!3112551 (isPrefix!6283 s1Rec!453 s1!4101))))

(declare-fun b!7819795 () Bool)

(declare-fun tp!2307613 () Bool)

(assert (=> b!7819795 (= e!4626738 (and tp_is_empty!52221 tp!2307613))))

(declare-fun b!7819796 () Bool)

(declare-fun tp!2307625 () Bool)

(assert (=> b!7819796 (= e!4626734 tp!2307625)))

(declare-fun b!7819797 () Bool)

(declare-fun tp!2307624 () Bool)

(assert (=> b!7819797 (= e!4626736 tp!2307624)))

(declare-fun b!7819798 () Bool)

(declare-fun res!3112552 () Bool)

(assert (=> b!7819798 (=> (not res!3112552) (not e!4626737))))

(assert (=> b!7819798 (= res!3112552 (= lt!2676143 (size!42739 s1!4101)))))

(declare-fun b!7819799 () Bool)

(declare-fun tp!2307619 () Bool)

(declare-fun tp!2307617 () Bool)

(assert (=> b!7819799 (= e!4626736 (and tp!2307619 tp!2307617))))

(declare-fun b!7819800 () Bool)

(assert (=> b!7819800 (= e!4626734 tp_is_empty!52221)))

(declare-fun b!7819801 () Bool)

(declare-fun tp!2307616 () Bool)

(assert (=> b!7819801 (= e!4626730 (and tp_is_empty!52221 tp!2307616))))

(assert (= (and start!741962 res!3112556) b!7819786))

(assert (= (and b!7819786 res!3112550) b!7819777))

(assert (= (and b!7819777 res!3112547) b!7819794))

(assert (= (and b!7819794 res!3112551) b!7819788))

(assert (= (and b!7819788 res!3112545) b!7819784))

(assert (= (and b!7819784 res!3112544) b!7819782))

(assert (= (and b!7819782 res!3112554) b!7819779))

(assert (= (and b!7819779 (not res!3112549)) b!7819783))

(assert (= (and b!7819779 res!3112546) b!7819778))

(assert (= (and b!7819778 res!3112548) b!7819789))

(assert (= (and b!7819789 res!3112555) b!7819798))

(assert (= (and b!7819798 res!3112552) b!7819781))

(assert (= (and b!7819781 res!3112553) b!7819791))

(assert (= (and start!741962 ((_ is ElementMatch!20933) r2!6199)) b!7819787))

(assert (= (and start!741962 ((_ is Concat!29778) r2!6199)) b!7819780))

(assert (= (and start!741962 ((_ is Star!20933) r2!6199)) b!7819797))

(assert (= (and start!741962 ((_ is Union!20933) r2!6199)) b!7819799))

(assert (= (and start!741962 ((_ is Cons!73646) s1!4101)) b!7819801))

(assert (= (and start!741962 ((_ is Cons!73646) s2!3721)) b!7819795))

(assert (= (and start!741962 ((_ is Cons!73646) s2Rec!453)) b!7819776))

(assert (= (and start!741962 ((_ is Cons!73646) s!14274)) b!7819790))

(assert (= (and start!741962 ((_ is ElementMatch!20933) r1!6261)) b!7819800))

(assert (= (and start!741962 ((_ is Concat!29778) r1!6261)) b!7819785))

(assert (= (and start!741962 ((_ is Star!20933) r1!6261)) b!7819796))

(assert (= (and start!741962 ((_ is Union!20933) r1!6261)) b!7819792))

(assert (= (and start!741962 ((_ is Cons!73646) s1Rec!453)) b!7819793))

(declare-fun m!8244596 () Bool)

(assert (=> b!7819789 m!8244596))

(declare-fun m!8244598 () Bool)

(assert (=> b!7819789 m!8244598))

(declare-fun m!8244600 () Bool)

(assert (=> b!7819786 m!8244600))

(declare-fun m!8244602 () Bool)

(assert (=> start!741962 m!8244602))

(declare-fun m!8244604 () Bool)

(assert (=> b!7819782 m!8244604))

(declare-fun m!8244606 () Bool)

(assert (=> b!7819779 m!8244606))

(declare-fun m!8244608 () Bool)

(assert (=> b!7819788 m!8244608))

(declare-fun m!8244610 () Bool)

(assert (=> b!7819794 m!8244610))

(declare-fun m!8244612 () Bool)

(assert (=> b!7819791 m!8244612))

(declare-fun m!8244614 () Bool)

(assert (=> b!7819784 m!8244614))

(declare-fun m!8244616 () Bool)

(assert (=> b!7819783 m!8244616))

(declare-fun m!8244618 () Bool)

(assert (=> b!7819777 m!8244618))

(declare-fun m!8244620 () Bool)

(assert (=> b!7819798 m!8244620))

(check-sat (not b!7819776) (not b!7819784) (not b!7819788) (not b!7819785) (not b!7819780) (not b!7819790) (not b!7819794) tp_is_empty!52221 (not b!7819777) (not b!7819792) (not b!7819799) (not b!7819779) (not b!7819795) (not b!7819782) (not b!7819786) (not b!7819797) (not b!7819791) (not b!7819789) (not start!741962) (not b!7819798) (not b!7819796) (not b!7819793) (not b!7819783) (not b!7819801))
(check-sat)
