; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527418 () Bool)

(assert start!527418)

(declare-fun b!4989377 () Bool)

(declare-fun e!3118212 () Bool)

(declare-fun e!3118211 () Bool)

(assert (=> b!4989377 (= e!3118212 e!3118211)))

(declare-fun res!2129891 () Bool)

(assert (=> b!4989377 (=> (not res!2129891) (not e!3118211))))

(declare-datatypes ((C!27712 0))(
  ( (C!27713 (val!23222 Int)) )
))
(declare-datatypes ((List!57797 0))(
  ( (Nil!57673) (Cons!57673 (h!64121 C!27712) (t!370123 List!57797)) )
))
(declare-fun lt!2062633 () List!57797)

(declare-datatypes ((IArray!30561 0))(
  ( (IArray!30562 (innerList!15338 List!57797)) )
))
(declare-datatypes ((Conc!15250 0))(
  ( (Node!15250 (left!42205 Conc!15250) (right!42535 Conc!15250) (csize!30730 Int) (cheight!15461 Int)) (Leaf!25324 (xs!18576 IArray!30561) (csize!30731 Int)) (Empty!15250) )
))
(declare-datatypes ((BalanceConc!29930 0))(
  ( (BalanceConc!29931 (c!851327 Conc!15250)) )
))
(declare-fun totalInput!1012 () BalanceConc!29930)

(declare-fun isSuffix!1297 (List!57797 List!57797) Bool)

(declare-fun list!18534 (BalanceConc!29930) List!57797)

(assert (=> b!4989377 (= res!2129891 (isSuffix!1297 lt!2062633 (list!18534 totalInput!1012)))))

(declare-fun input!5597 () BalanceConc!29930)

(assert (=> b!4989377 (= lt!2062633 (list!18534 input!5597))))

(declare-fun b!4989378 () Bool)

(declare-fun e!3118216 () Bool)

(declare-fun e!3118217 () Bool)

(assert (=> b!4989378 (= e!3118216 e!3118217)))

(declare-fun res!2129887 () Bool)

(assert (=> b!4989378 (=> (not res!2129887) (not e!3118217))))

(declare-fun lt!2062631 () List!57797)

(assert (=> b!4989378 (= res!2129887 (= lt!2062631 lt!2062633))))

(declare-datatypes ((tuple2!62752 0))(
  ( (tuple2!62753 (_1!34679 List!57797) (_2!34679 List!57797)) )
))
(declare-fun lt!2062628 () tuple2!62752)

(declare-fun ++!12575 (List!57797 List!57797) List!57797)

(assert (=> b!4989378 (= lt!2062631 (++!12575 (_1!34679 lt!2062628) (_2!34679 lt!2062628)))))

(declare-fun b!4989379 () Bool)

(declare-fun e!3118213 () Bool)

(declare-fun tp!1398424 () Bool)

(declare-fun tp!1398425 () Bool)

(assert (=> b!4989379 (= e!3118213 (and tp!1398424 tp!1398425))))

(declare-fun b!4989380 () Bool)

(declare-fun tp!1398421 () Bool)

(declare-fun tp!1398418 () Bool)

(assert (=> b!4989380 (= e!3118213 (and tp!1398421 tp!1398418))))

(declare-fun b!4989381 () Bool)

(declare-fun tp!1398420 () Bool)

(assert (=> b!4989381 (= e!3118213 tp!1398420)))

(declare-fun b!4989382 () Bool)

(declare-fun e!3118214 () Bool)

(declare-fun tp!1398423 () Bool)

(declare-fun inv!75677 (Conc!15250) Bool)

(assert (=> b!4989382 (= e!3118214 (and (inv!75677 (c!851327 input!5597)) tp!1398423))))

(declare-fun res!2129889 () Bool)

(assert (=> start!527418 (=> (not res!2129889) (not e!3118212))))

(declare-datatypes ((Regex!13731 0))(
  ( (ElementMatch!13731 (c!851328 C!27712)) (Concat!22524 (regOne!27974 Regex!13731) (regTwo!27974 Regex!13731)) (EmptyExpr!13731) (Star!13731 (reg!14060 Regex!13731)) (EmptyLang!13731) (Union!13731 (regOne!27975 Regex!13731) (regTwo!27975 Regex!13731)) )
))
(declare-fun r!12727 () Regex!13731)

(declare-fun validRegex!6028 (Regex!13731) Bool)

(assert (=> start!527418 (= res!2129889 (validRegex!6028 r!12727))))

(assert (=> start!527418 e!3118212))

(assert (=> start!527418 e!3118213))

(declare-fun condSetEmpty!28148 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!57798 0))(
  ( (Nil!57674) (Cons!57674 (h!64122 Regex!13731) (t!370124 List!57798)) )
))
(declare-datatypes ((Context!6312 0))(
  ( (Context!6313 (exprs!3656 List!57798)) )
))
(declare-fun z!4183 () (InoxSet Context!6312))

(assert (=> start!527418 (= condSetEmpty!28148 (= z!4183 ((as const (Array Context!6312 Bool)) false)))))

(declare-fun setRes!28148 () Bool)

(assert (=> start!527418 setRes!28148))

(declare-fun inv!75678 (BalanceConc!29930) Bool)

(assert (=> start!527418 (and (inv!75678 input!5597) e!3118214)))

(declare-fun e!3118215 () Bool)

(assert (=> start!527418 (and (inv!75678 totalInput!1012) e!3118215)))

(declare-fun b!4989383 () Bool)

(declare-fun tp!1398422 () Bool)

(assert (=> b!4989383 (= e!3118215 (and (inv!75677 (c!851327 totalInput!1012)) tp!1398422))))

(declare-fun b!4989384 () Bool)

(declare-fun e!3118210 () Bool)

(declare-fun tp!1398419 () Bool)

(assert (=> b!4989384 (= e!3118210 tp!1398419)))

(declare-fun b!4989385 () Bool)

(assert (=> b!4989385 (= e!3118211 e!3118216)))

(declare-fun res!2129890 () Bool)

(assert (=> b!4989385 (=> (not res!2129890) (not e!3118216))))

(declare-fun lt!2062632 () List!57797)

(assert (=> b!4989385 (= res!2129890 (= lt!2062632 lt!2062633))))

(declare-fun lt!2062626 () List!57797)

(declare-fun lt!2062625 () List!57797)

(assert (=> b!4989385 (= lt!2062632 (++!12575 lt!2062626 lt!2062625))))

(declare-datatypes ((tuple2!62754 0))(
  ( (tuple2!62755 (_1!34680 BalanceConc!29930) (_2!34680 BalanceConc!29930)) )
))
(declare-fun lt!2062630 () tuple2!62754)

(assert (=> b!4989385 (= lt!2062625 (list!18534 (_2!34680 lt!2062630)))))

(assert (=> b!4989385 (= lt!2062626 (list!18534 (_1!34680 lt!2062630)))))

(declare-fun findLongestMatch!1744 (Regex!13731 List!57797) tuple2!62752)

(assert (=> b!4989385 (= lt!2062628 (findLongestMatch!1744 r!12727 lt!2062633))))

(declare-fun lt!2062624 () Int)

(declare-fun size!38319 (BalanceConc!29930) Int)

(assert (=> b!4989385 (= lt!2062624 (size!38319 input!5597))))

(declare-fun lt!2062629 () Int)

(assert (=> b!4989385 (= lt!2062629 (size!38319 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!33 ((InoxSet Context!6312) BalanceConc!29930 BalanceConc!29930) tuple2!62754)

(assert (=> b!4989385 (= lt!2062630 (findLongestMatchZipperFastV2!33 z!4183 input!5597 totalInput!1012))))

(declare-fun setIsEmpty!28148 () Bool)

(assert (=> setIsEmpty!28148 setRes!28148))

(declare-fun b!4989386 () Bool)

(assert (=> b!4989386 (= e!3118217 (not true))))

(declare-fun isPrefix!5288 (List!57797 List!57797) Bool)

(assert (=> b!4989386 (isPrefix!5288 (_1!34679 lt!2062628) lt!2062631)))

(declare-datatypes ((Unit!148827 0))(
  ( (Unit!148828) )
))
(declare-fun lt!2062634 () Unit!148827)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3386 (List!57797 List!57797) Unit!148827)

(assert (=> b!4989386 (= lt!2062634 (lemmaConcatTwoListThenFirstIsPrefix!3386 (_1!34679 lt!2062628) (_2!34679 lt!2062628)))))

(assert (=> b!4989386 (isPrefix!5288 lt!2062626 lt!2062632)))

(declare-fun lt!2062627 () Unit!148827)

(assert (=> b!4989386 (= lt!2062627 (lemmaConcatTwoListThenFirstIsPrefix!3386 lt!2062626 lt!2062625))))

(declare-fun setNonEmpty!28148 () Bool)

(declare-fun tp!1398426 () Bool)

(declare-fun setElem!28148 () Context!6312)

(declare-fun inv!75679 (Context!6312) Bool)

(assert (=> setNonEmpty!28148 (= setRes!28148 (and tp!1398426 (inv!75679 setElem!28148) e!3118210))))

(declare-fun setRest!28148 () (InoxSet Context!6312))

(assert (=> setNonEmpty!28148 (= z!4183 ((_ map or) (store ((as const (Array Context!6312 Bool)) false) setElem!28148 true) setRest!28148))))

(declare-fun b!4989387 () Bool)

(declare-fun tp_is_empty!36459 () Bool)

(assert (=> b!4989387 (= e!3118213 tp_is_empty!36459)))

(declare-fun b!4989388 () Bool)

(declare-fun res!2129888 () Bool)

(assert (=> b!4989388 (=> (not res!2129888) (not e!3118212))))

(declare-datatypes ((List!57799 0))(
  ( (Nil!57675) (Cons!57675 (h!64123 Context!6312) (t!370125 List!57799)) )
))
(declare-fun unfocusZipper!258 (List!57799) Regex!13731)

(declare-fun toList!8016 ((InoxSet Context!6312)) List!57799)

(assert (=> b!4989388 (= res!2129888 (= (unfocusZipper!258 (toList!8016 z!4183)) r!12727))))

(assert (= (and start!527418 res!2129889) b!4989388))

(assert (= (and b!4989388 res!2129888) b!4989377))

(assert (= (and b!4989377 res!2129891) b!4989385))

(assert (= (and b!4989385 res!2129890) b!4989378))

(assert (= (and b!4989378 res!2129887) b!4989386))

(get-info :version)

(assert (= (and start!527418 ((_ is ElementMatch!13731) r!12727)) b!4989387))

(assert (= (and start!527418 ((_ is Concat!22524) r!12727)) b!4989379))

(assert (= (and start!527418 ((_ is Star!13731) r!12727)) b!4989381))

(assert (= (and start!527418 ((_ is Union!13731) r!12727)) b!4989380))

(assert (= (and start!527418 condSetEmpty!28148) setIsEmpty!28148))

(assert (= (and start!527418 (not condSetEmpty!28148)) setNonEmpty!28148))

(assert (= setNonEmpty!28148 b!4989384))

(assert (= start!527418 b!4989382))

(assert (= start!527418 b!4989383))

(declare-fun m!6021280 () Bool)

(assert (=> b!4989378 m!6021280))

(declare-fun m!6021282 () Bool)

(assert (=> start!527418 m!6021282))

(declare-fun m!6021284 () Bool)

(assert (=> start!527418 m!6021284))

(declare-fun m!6021286 () Bool)

(assert (=> start!527418 m!6021286))

(declare-fun m!6021288 () Bool)

(assert (=> b!4989382 m!6021288))

(declare-fun m!6021290 () Bool)

(assert (=> b!4989383 m!6021290))

(declare-fun m!6021292 () Bool)

(assert (=> b!4989386 m!6021292))

(declare-fun m!6021294 () Bool)

(assert (=> b!4989386 m!6021294))

(declare-fun m!6021296 () Bool)

(assert (=> b!4989386 m!6021296))

(declare-fun m!6021298 () Bool)

(assert (=> b!4989386 m!6021298))

(declare-fun m!6021300 () Bool)

(assert (=> setNonEmpty!28148 m!6021300))

(declare-fun m!6021302 () Bool)

(assert (=> b!4989377 m!6021302))

(assert (=> b!4989377 m!6021302))

(declare-fun m!6021304 () Bool)

(assert (=> b!4989377 m!6021304))

(declare-fun m!6021306 () Bool)

(assert (=> b!4989377 m!6021306))

(declare-fun m!6021308 () Bool)

(assert (=> b!4989385 m!6021308))

(declare-fun m!6021310 () Bool)

(assert (=> b!4989385 m!6021310))

(declare-fun m!6021312 () Bool)

(assert (=> b!4989385 m!6021312))

(declare-fun m!6021314 () Bool)

(assert (=> b!4989385 m!6021314))

(declare-fun m!6021316 () Bool)

(assert (=> b!4989385 m!6021316))

(declare-fun m!6021318 () Bool)

(assert (=> b!4989385 m!6021318))

(declare-fun m!6021320 () Bool)

(assert (=> b!4989385 m!6021320))

(declare-fun m!6021322 () Bool)

(assert (=> b!4989388 m!6021322))

(assert (=> b!4989388 m!6021322))

(declare-fun m!6021324 () Bool)

(assert (=> b!4989388 m!6021324))

(check-sat (not b!4989381) (not b!4989383) tp_is_empty!36459 (not b!4989386) (not b!4989379) (not b!4989380) (not b!4989385) (not start!527418) (not b!4989388) (not b!4989384) (not b!4989382) (not b!4989378) (not setNonEmpty!28148) (not b!4989377))
(check-sat)
