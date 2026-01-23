; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!537724 () Bool)

(assert start!537724)

(declare-fun b!5098382 () Bool)

(declare-fun e!3179633 () Bool)

(declare-fun tp_is_empty!37279 () Bool)

(assert (=> b!5098382 (= e!3179633 tp_is_empty!37279)))

(declare-fun b!5098383 () Bool)

(declare-fun e!3179634 () Bool)

(assert (=> b!5098383 (= e!3179634 (not true))))

(declare-datatypes ((C!28272 0))(
  ( (C!28273 (val!23788 Int)) )
))
(declare-datatypes ((List!58810 0))(
  ( (Nil!58686) (Cons!58686 (h!65134 C!28272) (t!371811 List!58810)) )
))
(declare-fun input!6459 () List!58810)

(declare-fun sizeTr!419 (List!58810 Int) Int)

(declare-fun size!39313 (List!58810) Int)

(assert (=> b!5098383 (= (sizeTr!419 input!6459 0) (size!39313 input!6459))))

(declare-datatypes ((Unit!149746 0))(
  ( (Unit!149747) )
))
(declare-fun lt!2095118 () Unit!149746)

(declare-fun lemmaSizeTrEqualsSize!418 (List!58810 Int) Unit!149746)

(assert (=> b!5098383 (= lt!2095118 (lemmaSizeTrEqualsSize!418 input!6459 0))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14007 0))(
  ( (ElementMatch!14007 (c!876101 C!28272)) (Concat!22852 (regOne!28526 Regex!14007) (regTwo!28526 Regex!14007)) (EmptyExpr!14007) (Star!14007 (reg!14336 Regex!14007)) (EmptyLang!14007) (Union!14007 (regOne!28527 Regex!14007) (regTwo!28527 Regex!14007)) )
))
(declare-datatypes ((List!58811 0))(
  ( (Nil!58687) (Cons!58687 (h!65135 Regex!14007) (t!371812 List!58811)) )
))
(declare-datatypes ((Context!6782 0))(
  ( (Context!6783 (exprs!3891 List!58811)) )
))
(declare-fun lt!2095119 () (InoxSet Context!6782))

(declare-fun r!15189 () Regex!14007)

(declare-datatypes ((tuple2!63404 0))(
  ( (tuple2!63405 (_1!35005 List!58810) (_2!35005 List!58810)) )
))
(declare-fun findLongestMatchZipper!33 ((InoxSet Context!6782) List!58810) tuple2!63404)

(declare-fun findLongestMatch!1841 (Regex!14007 List!58810) tuple2!63404)

(assert (=> b!5098383 (= (findLongestMatchZipper!33 lt!2095119 input!6459) (findLongestMatch!1841 r!15189 input!6459))))

(declare-fun lt!2095120 () Unit!149746)

(declare-fun longestMatchSameAsRegex!29 (Regex!14007 (InoxSet Context!6782) List!58810) Unit!149746)

(assert (=> b!5098383 (= lt!2095120 (longestMatchSameAsRegex!29 r!15189 lt!2095119 input!6459))))

(declare-fun focus!368 (Regex!14007) (InoxSet Context!6782))

(assert (=> b!5098383 (= lt!2095119 (focus!368 r!15189))))

(declare-fun b!5098384 () Bool)

(declare-fun tp!1421632 () Bool)

(declare-fun tp!1421633 () Bool)

(assert (=> b!5098384 (= e!3179633 (and tp!1421632 tp!1421633))))

(declare-fun res!2169776 () Bool)

(assert (=> start!537724 (=> (not res!2169776) (not e!3179634))))

(declare-fun validRegex!6134 (Regex!14007) Bool)

(assert (=> start!537724 (= res!2169776 (validRegex!6134 r!15189))))

(assert (=> start!537724 e!3179634))

(assert (=> start!537724 e!3179633))

(declare-fun e!3179635 () Bool)

(assert (=> start!537724 e!3179635))

(declare-fun b!5098385 () Bool)

(declare-fun tp!1421634 () Bool)

(assert (=> b!5098385 (= e!3179633 tp!1421634)))

(declare-fun b!5098386 () Bool)

(declare-fun tp!1421630 () Bool)

(declare-fun tp!1421635 () Bool)

(assert (=> b!5098386 (= e!3179633 (and tp!1421630 tp!1421635))))

(declare-fun b!5098387 () Bool)

(declare-fun tp!1421631 () Bool)

(assert (=> b!5098387 (= e!3179635 (and tp_is_empty!37279 tp!1421631))))

(assert (= (and start!537724 res!2169776) b!5098383))

(get-info :version)

(assert (= (and start!537724 ((_ is ElementMatch!14007) r!15189)) b!5098382))

(assert (= (and start!537724 ((_ is Concat!22852) r!15189)) b!5098386))

(assert (= (and start!537724 ((_ is Star!14007) r!15189)) b!5098385))

(assert (= (and start!537724 ((_ is Union!14007) r!15189)) b!5098384))

(assert (= (and start!537724 ((_ is Cons!58686) input!6459)) b!5098387))

(declare-fun m!6155750 () Bool)

(assert (=> b!5098383 m!6155750))

(declare-fun m!6155752 () Bool)

(assert (=> b!5098383 m!6155752))

(declare-fun m!6155754 () Bool)

(assert (=> b!5098383 m!6155754))

(declare-fun m!6155756 () Bool)

(assert (=> b!5098383 m!6155756))

(declare-fun m!6155758 () Bool)

(assert (=> b!5098383 m!6155758))

(declare-fun m!6155760 () Bool)

(assert (=> b!5098383 m!6155760))

(declare-fun m!6155762 () Bool)

(assert (=> b!5098383 m!6155762))

(declare-fun m!6155764 () Bool)

(assert (=> start!537724 m!6155764))

(check-sat (not b!5098384) (not b!5098386) (not b!5098385) (not start!537724) tp_is_empty!37279 (not b!5098387) (not b!5098383))
(check-sat)
