; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527422 () Bool)

(assert start!527422)

(declare-fun b!4989449 () Bool)

(declare-fun res!2129919 () Bool)

(declare-fun e!3118261 () Bool)

(assert (=> b!4989449 (=> (not res!2129919) (not e!3118261))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!27716 0))(
  ( (C!27717 (val!23224 Int)) )
))
(declare-datatypes ((Regex!13733 0))(
  ( (ElementMatch!13733 (c!851331 C!27716)) (Concat!22526 (regOne!27978 Regex!13733) (regTwo!27978 Regex!13733)) (EmptyExpr!13733) (Star!13733 (reg!14062 Regex!13733)) (EmptyLang!13733) (Union!13733 (regOne!27979 Regex!13733) (regTwo!27979 Regex!13733)) )
))
(declare-datatypes ((List!57803 0))(
  ( (Nil!57679) (Cons!57679 (h!64127 Regex!13733) (t!370129 List!57803)) )
))
(declare-datatypes ((Context!6316 0))(
  ( (Context!6317 (exprs!3658 List!57803)) )
))
(declare-fun z!4183 () (InoxSet Context!6316))

(declare-fun r!12727 () Regex!13733)

(declare-datatypes ((List!57804 0))(
  ( (Nil!57680) (Cons!57680 (h!64128 Context!6316) (t!370130 List!57804)) )
))
(declare-fun unfocusZipper!260 (List!57804) Regex!13733)

(declare-fun toList!8018 ((InoxSet Context!6316)) List!57804)

(assert (=> b!4989449 (= res!2129919 (= (unfocusZipper!260 (toList!8018 z!4183)) r!12727))))

(declare-fun b!4989450 () Bool)

(declare-fun e!3118265 () Bool)

(assert (=> b!4989450 (= e!3118265 (not true))))

(declare-datatypes ((List!57805 0))(
  ( (Nil!57681) (Cons!57681 (h!64129 C!27716) (t!370131 List!57805)) )
))
(declare-fun lt!2062704 () List!57805)

(declare-fun lt!2062703 () Int)

(declare-fun isPrefix!5290 (List!57805 List!57805) Bool)

(declare-fun take!598 (List!57805 Int) List!57805)

(assert (=> b!4989450 (isPrefix!5290 (take!598 lt!2062704 lt!2062703) lt!2062704)))

(declare-datatypes ((Unit!148831 0))(
  ( (Unit!148832) )
))
(declare-fun lt!2062696 () Unit!148831)

(declare-fun lemmaTakeIsPrefix!92 (List!57805 Int) Unit!148831)

(assert (=> b!4989450 (= lt!2062696 (lemmaTakeIsPrefix!92 lt!2062704 lt!2062703))))

(declare-datatypes ((tuple2!62760 0))(
  ( (tuple2!62761 (_1!34683 List!57805) (_2!34683 List!57805)) )
))
(declare-fun lt!2062706 () tuple2!62760)

(declare-fun lt!2062698 () List!57805)

(assert (=> b!4989450 (isPrefix!5290 (_1!34683 lt!2062706) lt!2062698)))

(declare-fun lt!2062701 () Unit!148831)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3388 (List!57805 List!57805) Unit!148831)

(assert (=> b!4989450 (= lt!2062701 (lemmaConcatTwoListThenFirstIsPrefix!3388 (_1!34683 lt!2062706) (_2!34683 lt!2062706)))))

(declare-fun lt!2062700 () List!57805)

(declare-fun lt!2062699 () List!57805)

(assert (=> b!4989450 (isPrefix!5290 lt!2062700 lt!2062699)))

(declare-fun lt!2062702 () Unit!148831)

(declare-fun lt!2062695 () List!57805)

(assert (=> b!4989450 (= lt!2062702 (lemmaConcatTwoListThenFirstIsPrefix!3388 lt!2062700 lt!2062695))))

(declare-fun setIsEmpty!28154 () Bool)

(declare-fun setRes!28154 () Bool)

(assert (=> setIsEmpty!28154 setRes!28154))

(declare-fun b!4989451 () Bool)

(declare-fun e!3118260 () Bool)

(declare-datatypes ((IArray!30565 0))(
  ( (IArray!30566 (innerList!15340 List!57805)) )
))
(declare-datatypes ((Conc!15252 0))(
  ( (Node!15252 (left!42208 Conc!15252) (right!42538 Conc!15252) (csize!30734 Int) (cheight!15463 Int)) (Leaf!25327 (xs!18578 IArray!30565) (csize!30735 Int)) (Empty!15252) )
))
(declare-datatypes ((BalanceConc!29934 0))(
  ( (BalanceConc!29935 (c!851332 Conc!15252)) )
))
(declare-fun input!5597 () BalanceConc!29934)

(declare-fun tp!1398479 () Bool)

(declare-fun inv!75686 (Conc!15252) Bool)

(assert (=> b!4989451 (= e!3118260 (and (inv!75686 (c!851332 input!5597)) tp!1398479))))

(declare-fun b!4989452 () Bool)

(declare-fun e!3118259 () Bool)

(declare-fun totalInput!1012 () BalanceConc!29934)

(declare-fun tp!1398477 () Bool)

(assert (=> b!4989452 (= e!3118259 (and (inv!75686 (c!851332 totalInput!1012)) tp!1398477))))

(declare-fun b!4989453 () Bool)

(declare-fun e!3118264 () Bool)

(declare-fun tp!1398473 () Bool)

(declare-fun tp!1398472 () Bool)

(assert (=> b!4989453 (= e!3118264 (and tp!1398473 tp!1398472))))

(declare-fun b!4989454 () Bool)

(declare-fun e!3118262 () Bool)

(declare-fun e!3118263 () Bool)

(assert (=> b!4989454 (= e!3118262 e!3118263)))

(declare-fun res!2129921 () Bool)

(assert (=> b!4989454 (=> (not res!2129921) (not e!3118263))))

(declare-fun lt!2062697 () List!57805)

(assert (=> b!4989454 (= res!2129921 (= lt!2062699 lt!2062697))))

(declare-fun ++!12577 (List!57805 List!57805) List!57805)

(assert (=> b!4989454 (= lt!2062699 (++!12577 lt!2062700 lt!2062695))))

(declare-datatypes ((tuple2!62762 0))(
  ( (tuple2!62763 (_1!34684 BalanceConc!29934) (_2!34684 BalanceConc!29934)) )
))
(declare-fun lt!2062705 () tuple2!62762)

(declare-fun list!18536 (BalanceConc!29934) List!57805)

(assert (=> b!4989454 (= lt!2062695 (list!18536 (_2!34684 lt!2062705)))))

(assert (=> b!4989454 (= lt!2062700 (list!18536 (_1!34684 lt!2062705)))))

(declare-fun findLongestMatch!1746 (Regex!13733 List!57805) tuple2!62760)

(assert (=> b!4989454 (= lt!2062706 (findLongestMatch!1746 r!12727 lt!2062697))))

(declare-fun size!38321 (BalanceConc!29934) Int)

(assert (=> b!4989454 (= lt!2062703 (- (size!38321 totalInput!1012) (size!38321 input!5597)))))

(declare-fun findLongestMatchZipperFastV2!35 ((InoxSet Context!6316) BalanceConc!29934 BalanceConc!29934) tuple2!62762)

(assert (=> b!4989454 (= lt!2062705 (findLongestMatchZipperFastV2!35 z!4183 input!5597 totalInput!1012))))

(declare-fun res!2129918 () Bool)

(assert (=> start!527422 (=> (not res!2129918) (not e!3118261))))

(declare-fun validRegex!6030 (Regex!13733) Bool)

(assert (=> start!527422 (= res!2129918 (validRegex!6030 r!12727))))

(assert (=> start!527422 e!3118261))

(assert (=> start!527422 e!3118264))

(declare-fun condSetEmpty!28154 () Bool)

(assert (=> start!527422 (= condSetEmpty!28154 (= z!4183 ((as const (Array Context!6316 Bool)) false)))))

(assert (=> start!527422 setRes!28154))

(declare-fun inv!75687 (BalanceConc!29934) Bool)

(assert (=> start!527422 (and (inv!75687 input!5597) e!3118260)))

(assert (=> start!527422 (and (inv!75687 totalInput!1012) e!3118259)))

(declare-fun b!4989455 () Bool)

(assert (=> b!4989455 (= e!3118263 e!3118265)))

(declare-fun res!2129920 () Bool)

(assert (=> b!4989455 (=> (not res!2129920) (not e!3118265))))

(assert (=> b!4989455 (= res!2129920 (= lt!2062698 lt!2062697))))

(assert (=> b!4989455 (= lt!2062698 (++!12577 (_1!34683 lt!2062706) (_2!34683 lt!2062706)))))

(declare-fun b!4989456 () Bool)

(declare-fun e!3118258 () Bool)

(declare-fun tp!1398475 () Bool)

(assert (=> b!4989456 (= e!3118258 tp!1398475)))

(declare-fun tp!1398474 () Bool)

(declare-fun setElem!28154 () Context!6316)

(declare-fun setNonEmpty!28154 () Bool)

(declare-fun inv!75688 (Context!6316) Bool)

(assert (=> setNonEmpty!28154 (= setRes!28154 (and tp!1398474 (inv!75688 setElem!28154) e!3118258))))

(declare-fun setRest!28154 () (InoxSet Context!6316))

(assert (=> setNonEmpty!28154 (= z!4183 ((_ map or) (store ((as const (Array Context!6316 Bool)) false) setElem!28154 true) setRest!28154))))

(declare-fun b!4989457 () Bool)

(declare-fun tp_is_empty!36463 () Bool)

(assert (=> b!4989457 (= e!3118264 tp_is_empty!36463)))

(declare-fun b!4989458 () Bool)

(assert (=> b!4989458 (= e!3118261 e!3118262)))

(declare-fun res!2129917 () Bool)

(assert (=> b!4989458 (=> (not res!2129917) (not e!3118262))))

(declare-fun isSuffix!1299 (List!57805 List!57805) Bool)

(assert (=> b!4989458 (= res!2129917 (isSuffix!1299 lt!2062697 lt!2062704))))

(assert (=> b!4989458 (= lt!2062704 (list!18536 totalInput!1012))))

(assert (=> b!4989458 (= lt!2062697 (list!18536 input!5597))))

(declare-fun b!4989459 () Bool)

(declare-fun tp!1398478 () Bool)

(declare-fun tp!1398480 () Bool)

(assert (=> b!4989459 (= e!3118264 (and tp!1398478 tp!1398480))))

(declare-fun b!4989460 () Bool)

(declare-fun tp!1398476 () Bool)

(assert (=> b!4989460 (= e!3118264 tp!1398476)))

(assert (= (and start!527422 res!2129918) b!4989449))

(assert (= (and b!4989449 res!2129919) b!4989458))

(assert (= (and b!4989458 res!2129917) b!4989454))

(assert (= (and b!4989454 res!2129921) b!4989455))

(assert (= (and b!4989455 res!2129920) b!4989450))

(get-info :version)

(assert (= (and start!527422 ((_ is ElementMatch!13733) r!12727)) b!4989457))

(assert (= (and start!527422 ((_ is Concat!22526) r!12727)) b!4989453))

(assert (= (and start!527422 ((_ is Star!13733) r!12727)) b!4989460))

(assert (= (and start!527422 ((_ is Union!13733) r!12727)) b!4989459))

(assert (= (and start!527422 condSetEmpty!28154) setIsEmpty!28154))

(assert (= (and start!527422 (not condSetEmpty!28154)) setNonEmpty!28154))

(assert (= setNonEmpty!28154 b!4989456))

(assert (= start!527422 b!4989451))

(assert (= start!527422 b!4989452))

(declare-fun m!6021378 () Bool)

(assert (=> b!4989452 m!6021378))

(declare-fun m!6021380 () Bool)

(assert (=> b!4989450 m!6021380))

(declare-fun m!6021382 () Bool)

(assert (=> b!4989450 m!6021382))

(declare-fun m!6021384 () Bool)

(assert (=> b!4989450 m!6021384))

(declare-fun m!6021386 () Bool)

(assert (=> b!4989450 m!6021386))

(assert (=> b!4989450 m!6021382))

(declare-fun m!6021388 () Bool)

(assert (=> b!4989450 m!6021388))

(declare-fun m!6021390 () Bool)

(assert (=> b!4989450 m!6021390))

(declare-fun m!6021392 () Bool)

(assert (=> b!4989450 m!6021392))

(declare-fun m!6021394 () Bool)

(assert (=> b!4989455 m!6021394))

(declare-fun m!6021396 () Bool)

(assert (=> b!4989458 m!6021396))

(declare-fun m!6021398 () Bool)

(assert (=> b!4989458 m!6021398))

(declare-fun m!6021400 () Bool)

(assert (=> b!4989458 m!6021400))

(declare-fun m!6021402 () Bool)

(assert (=> b!4989449 m!6021402))

(assert (=> b!4989449 m!6021402))

(declare-fun m!6021404 () Bool)

(assert (=> b!4989449 m!6021404))

(declare-fun m!6021406 () Bool)

(assert (=> b!4989454 m!6021406))

(declare-fun m!6021408 () Bool)

(assert (=> b!4989454 m!6021408))

(declare-fun m!6021410 () Bool)

(assert (=> b!4989454 m!6021410))

(declare-fun m!6021412 () Bool)

(assert (=> b!4989454 m!6021412))

(declare-fun m!6021414 () Bool)

(assert (=> b!4989454 m!6021414))

(declare-fun m!6021416 () Bool)

(assert (=> b!4989454 m!6021416))

(declare-fun m!6021418 () Bool)

(assert (=> b!4989454 m!6021418))

(declare-fun m!6021420 () Bool)

(assert (=> b!4989451 m!6021420))

(declare-fun m!6021422 () Bool)

(assert (=> start!527422 m!6021422))

(declare-fun m!6021424 () Bool)

(assert (=> start!527422 m!6021424))

(declare-fun m!6021426 () Bool)

(assert (=> start!527422 m!6021426))

(declare-fun m!6021428 () Bool)

(assert (=> setNonEmpty!28154 m!6021428))

(check-sat (not start!527422) (not b!4989451) (not b!4989453) (not b!4989450) (not b!4989452) tp_is_empty!36463 (not b!4989454) (not b!4989459) (not b!4989449) (not b!4989456) (not setNonEmpty!28154) (not b!4989455) (not b!4989460) (not b!4989458))
(check-sat)
