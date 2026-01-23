; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!528418 () Bool)

(assert start!528418)

(declare-fun b!5000423 () Bool)

(declare-fun e!3124648 () Bool)

(declare-datatypes ((C!27808 0))(
  ( (C!27809 (val!23270 Int)) )
))
(declare-datatypes ((List!57941 0))(
  ( (Nil!57817) (Cons!57817 (h!64265 C!27808) (t!370287 List!57941)) )
))
(declare-datatypes ((tuple2!62952 0))(
  ( (tuple2!62953 (_1!34779 List!57941) (_2!34779 List!57941)) )
))
(declare-fun lt!2068265 () tuple2!62952)

(declare-fun isEmpty!31292 (List!57941) Bool)

(assert (=> b!5000423 (= e!3124648 (not (isEmpty!31292 (_1!34779 lt!2068265))))))

(declare-fun b!5000424 () Bool)

(declare-fun e!3124642 () Bool)

(declare-fun tp!1402588 () Bool)

(declare-fun tp!1402585 () Bool)

(assert (=> b!5000424 (= e!3124642 (and tp!1402588 tp!1402585))))

(declare-fun b!5000425 () Bool)

(declare-fun e!3124641 () Bool)

(declare-fun tp!1402584 () Bool)

(assert (=> b!5000425 (= e!3124641 tp!1402584)))

(declare-fun b!5000426 () Bool)

(declare-fun e!3124636 () Bool)

(declare-fun e!3124637 () Bool)

(assert (=> b!5000426 (= e!3124636 e!3124637)))

(declare-fun res!2133655 () Bool)

(assert (=> b!5000426 (=> (not res!2133655) (not e!3124637))))

(declare-datatypes ((Regex!13779 0))(
  ( (ElementMatch!13779 (c!853389 C!27808)) (Concat!22572 (regOne!28070 Regex!13779) (regTwo!28070 Regex!13779)) (EmptyExpr!13779) (Star!13779 (reg!14108 Regex!13779)) (EmptyLang!13779) (Union!13779 (regOne!28071 Regex!13779) (regTwo!28071 Regex!13779)) )
))
(declare-fun lt!2068263 () Regex!13779)

(declare-fun r!12727 () Regex!13779)

(assert (=> b!5000426 (= res!2133655 (= lt!2068263 r!12727))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!57942 0))(
  ( (Nil!57818) (Cons!57818 (h!64266 Regex!13779) (t!370288 List!57942)) )
))
(declare-datatypes ((Context!6408 0))(
  ( (Context!6409 (exprs!3704 List!57942)) )
))
(declare-fun z!4183 () (InoxSet Context!6408))

(declare-datatypes ((List!57943 0))(
  ( (Nil!57819) (Cons!57819 (h!64267 Context!6408) (t!370289 List!57943)) )
))
(declare-fun unfocusZipper!306 (List!57943) Regex!13779)

(declare-fun toList!8064 ((InoxSet Context!6408)) List!57943)

(assert (=> b!5000426 (= lt!2068263 (unfocusZipper!306 (toList!8064 z!4183)))))

(declare-fun b!5000428 () Bool)

(declare-fun e!3124645 () Bool)

(declare-datatypes ((IArray!30657 0))(
  ( (IArray!30658 (innerList!15386 List!57941)) )
))
(declare-datatypes ((Conc!15298 0))(
  ( (Node!15298 (left!42281 Conc!15298) (right!42611 Conc!15298) (csize!30826 Int) (cheight!15509 Int)) (Leaf!25396 (xs!18624 IArray!30657) (csize!30827 Int)) (Empty!15298) )
))
(declare-datatypes ((BalanceConc!30026 0))(
  ( (BalanceConc!30027 (c!853390 Conc!15298)) )
))
(declare-fun totalInput!1012 () BalanceConc!30026)

(declare-fun tp!1402589 () Bool)

(declare-fun inv!75934 (Conc!15298) Bool)

(assert (=> b!5000428 (= e!3124645 (and (inv!75934 (c!853390 totalInput!1012)) tp!1402589))))

(declare-fun b!5000429 () Bool)

(declare-fun lt!2068272 () Int)

(declare-fun lt!2068271 () Int)

(declare-fun lt!2068270 () List!57941)

(declare-fun e!3124647 () Bool)

(declare-fun matchZipper!547 ((InoxSet Context!6408) List!57941) Bool)

(declare-fun take!638 (List!57941 Int) List!57941)

(declare-fun drop!2442 (List!57941 Int) List!57941)

(assert (=> b!5000429 (= e!3124647 (matchZipper!547 z!4183 (take!638 (drop!2442 lt!2068270 lt!2068271) lt!2068272)))))

(declare-fun b!5000430 () Bool)

(declare-fun tp_is_empty!36555 () Bool)

(assert (=> b!5000430 (= e!3124642 tp_is_empty!36555)))

(declare-fun b!5000431 () Bool)

(declare-fun e!3124643 () Bool)

(assert (=> b!5000431 (= e!3124643 (= r!12727 lt!2068263))))

(declare-fun b!5000432 () Bool)

(declare-fun e!3124639 () Bool)

(declare-fun input!5597 () BalanceConc!30026)

(declare-fun tp!1402592 () Bool)

(assert (=> b!5000432 (= e!3124639 (and (inv!75934 (c!853390 input!5597)) tp!1402592))))

(declare-fun b!5000433 () Bool)

(declare-fun res!2133654 () Bool)

(assert (=> b!5000433 (=> res!2133654 e!3124643)))

(assert (=> b!5000433 (= res!2133654 e!3124648)))

(declare-fun res!2133657 () Bool)

(assert (=> b!5000433 (=> (not res!2133657) (not e!3124648))))

(declare-fun matchR!6743 (Regex!13779 List!57941) Bool)

(assert (=> b!5000433 (= res!2133657 (not (matchR!6743 r!12727 (_1!34779 lt!2068265))))))

(declare-fun b!5000434 () Bool)

(declare-fun e!3124638 () Bool)

(assert (=> b!5000434 (= e!3124638 (not e!3124643))))

(declare-fun res!2133649 () Bool)

(assert (=> b!5000434 (=> res!2133649 e!3124643)))

(declare-fun e!3124646 () Bool)

(assert (=> b!5000434 (= res!2133649 e!3124646)))

(declare-fun res!2133648 () Bool)

(assert (=> b!5000434 (=> (not res!2133648) (not e!3124646))))

(declare-fun lt!2068266 () List!57941)

(assert (=> b!5000434 (= res!2133648 (not (matchZipper!547 z!4183 lt!2068266)))))

(declare-fun e!3124649 () Bool)

(assert (=> b!5000434 e!3124649))

(declare-fun res!2133656 () Bool)

(assert (=> b!5000434 (=> res!2133656 e!3124649)))

(declare-fun lt!2068275 () tuple2!62952)

(assert (=> b!5000434 (= res!2133656 (isEmpty!31292 (_1!34779 lt!2068275)))))

(declare-fun lt!2068269 () List!57941)

(declare-fun findLongestMatchInner!1968 (Regex!13779 List!57941 Int List!57941 List!57941 Int) tuple2!62952)

(declare-fun size!38424 (List!57941) Int)

(assert (=> b!5000434 (= lt!2068275 (findLongestMatchInner!1968 r!12727 Nil!57817 (size!38424 Nil!57817) lt!2068269 lt!2068269 (size!38424 lt!2068269)))))

(declare-datatypes ((Unit!148979 0))(
  ( (Unit!148980) )
))
(declare-fun lt!2068274 () Unit!148979)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1921 (Regex!13779 List!57941) Unit!148979)

(assert (=> b!5000434 (= lt!2068274 (longestMatchIsAcceptedByMatchOrIsEmpty!1921 r!12727 lt!2068269))))

(assert (=> b!5000434 e!3124647))

(declare-fun res!2133653 () Bool)

(assert (=> b!5000434 (=> res!2133653 e!3124647)))

(assert (=> b!5000434 (= res!2133653 (= lt!2068272 0))))

(declare-fun lt!2068264 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!119 ((InoxSet Context!6408) Int BalanceConc!30026 Int) Int)

(assert (=> b!5000434 (= lt!2068272 (findLongestMatchInnerZipperFastV2!119 z!4183 lt!2068271 totalInput!1012 lt!2068264))))

(declare-fun lt!2068261 () Unit!148979)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!38 ((InoxSet Context!6408) Int BalanceConc!30026) Unit!148979)

(assert (=> b!5000434 (= lt!2068261 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!38 z!4183 lt!2068271 totalInput!1012))))

(declare-fun isPrefix!5332 (List!57941 List!57941) Bool)

(assert (=> b!5000434 (isPrefix!5332 (take!638 lt!2068270 lt!2068271) lt!2068270)))

(declare-fun lt!2068260 () Unit!148979)

(declare-fun lemmaTakeIsPrefix!132 (List!57941 Int) Unit!148979)

(assert (=> b!5000434 (= lt!2068260 (lemmaTakeIsPrefix!132 lt!2068270 lt!2068271))))

(declare-fun lt!2068273 () List!57941)

(assert (=> b!5000434 (isPrefix!5332 (_1!34779 lt!2068265) lt!2068273)))

(declare-fun lt!2068262 () Unit!148979)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3430 (List!57941 List!57941) Unit!148979)

(assert (=> b!5000434 (= lt!2068262 (lemmaConcatTwoListThenFirstIsPrefix!3430 (_1!34779 lt!2068265) (_2!34779 lt!2068265)))))

(declare-fun lt!2068259 () List!57941)

(assert (=> b!5000434 (isPrefix!5332 lt!2068266 lt!2068259)))

(declare-fun lt!2068267 () Unit!148979)

(declare-fun lt!2068268 () List!57941)

(assert (=> b!5000434 (= lt!2068267 (lemmaConcatTwoListThenFirstIsPrefix!3430 lt!2068266 lt!2068268))))

(declare-fun b!5000427 () Bool)

(declare-fun e!3124644 () Bool)

(assert (=> b!5000427 (= e!3124644 e!3124638)))

(declare-fun res!2133652 () Bool)

(assert (=> b!5000427 (=> (not res!2133652) (not e!3124638))))

(assert (=> b!5000427 (= res!2133652 (= lt!2068273 lt!2068269))))

(declare-fun ++!12625 (List!57941 List!57941) List!57941)

(assert (=> b!5000427 (= lt!2068273 (++!12625 (_1!34779 lt!2068265) (_2!34779 lt!2068265)))))

(declare-fun res!2133647 () Bool)

(assert (=> start!528418 (=> (not res!2133647) (not e!3124636))))

(declare-fun validRegex!6076 (Regex!13779) Bool)

(assert (=> start!528418 (= res!2133647 (validRegex!6076 r!12727))))

(assert (=> start!528418 e!3124636))

(assert (=> start!528418 e!3124642))

(declare-fun inv!75935 (BalanceConc!30026) Bool)

(assert (=> start!528418 (and (inv!75935 input!5597) e!3124639)))

(declare-fun condSetEmpty!28340 () Bool)

(assert (=> start!528418 (= condSetEmpty!28340 (= z!4183 ((as const (Array Context!6408 Bool)) false)))))

(declare-fun setRes!28340 () Bool)

(assert (=> start!528418 setRes!28340))

(assert (=> start!528418 (and (inv!75935 totalInput!1012) e!3124645)))

(declare-fun tp!1402586 () Bool)

(declare-fun setNonEmpty!28340 () Bool)

(declare-fun setElem!28340 () Context!6408)

(declare-fun inv!75936 (Context!6408) Bool)

(assert (=> setNonEmpty!28340 (= setRes!28340 (and tp!1402586 (inv!75936 setElem!28340) e!3124641))))

(declare-fun setRest!28340 () (InoxSet Context!6408))

(assert (=> setNonEmpty!28340 (= z!4183 ((_ map or) (store ((as const (Array Context!6408 Bool)) false) setElem!28340 true) setRest!28340))))

(declare-fun b!5000435 () Bool)

(declare-fun tp!1402591 () Bool)

(declare-fun tp!1402590 () Bool)

(assert (=> b!5000435 (= e!3124642 (and tp!1402591 tp!1402590))))

(declare-fun b!5000436 () Bool)

(declare-fun e!3124640 () Bool)

(assert (=> b!5000436 (= e!3124637 e!3124640)))

(declare-fun res!2133650 () Bool)

(assert (=> b!5000436 (=> (not res!2133650) (not e!3124640))))

(declare-fun isSuffix!1345 (List!57941 List!57941) Bool)

(assert (=> b!5000436 (= res!2133650 (isSuffix!1345 lt!2068269 lt!2068270))))

(declare-fun list!18600 (BalanceConc!30026) List!57941)

(assert (=> b!5000436 (= lt!2068270 (list!18600 totalInput!1012))))

(assert (=> b!5000436 (= lt!2068269 (list!18600 input!5597))))

(declare-fun b!5000437 () Bool)

(assert (=> b!5000437 (= e!3124649 (matchR!6743 r!12727 (_1!34779 lt!2068275)))))

(declare-fun b!5000438 () Bool)

(declare-fun tp!1402587 () Bool)

(assert (=> b!5000438 (= e!3124642 tp!1402587)))

(declare-fun setIsEmpty!28340 () Bool)

(assert (=> setIsEmpty!28340 setRes!28340))

(declare-fun b!5000439 () Bool)

(assert (=> b!5000439 (= e!3124640 e!3124644)))

(declare-fun res!2133651 () Bool)

(assert (=> b!5000439 (=> (not res!2133651) (not e!3124644))))

(assert (=> b!5000439 (= res!2133651 (= lt!2068259 lt!2068269))))

(assert (=> b!5000439 (= lt!2068259 (++!12625 lt!2068266 lt!2068268))))

(declare-datatypes ((tuple2!62954 0))(
  ( (tuple2!62955 (_1!34780 BalanceConc!30026) (_2!34780 BalanceConc!30026)) )
))
(declare-fun lt!2068276 () tuple2!62954)

(assert (=> b!5000439 (= lt!2068268 (list!18600 (_2!34780 lt!2068276)))))

(assert (=> b!5000439 (= lt!2068266 (list!18600 (_1!34780 lt!2068276)))))

(declare-fun findLongestMatch!1792 (Regex!13779 List!57941) tuple2!62952)

(assert (=> b!5000439 (= lt!2068265 (findLongestMatch!1792 r!12727 lt!2068269))))

(declare-fun size!38425 (BalanceConc!30026) Int)

(assert (=> b!5000439 (= lt!2068271 (- lt!2068264 (size!38425 input!5597)))))

(assert (=> b!5000439 (= lt!2068264 (size!38425 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!81 ((InoxSet Context!6408) BalanceConc!30026 BalanceConc!30026) tuple2!62954)

(assert (=> b!5000439 (= lt!2068276 (findLongestMatchZipperFastV2!81 z!4183 input!5597 totalInput!1012))))

(declare-fun b!5000440 () Bool)

(declare-fun isEmpty!31293 (BalanceConc!30026) Bool)

(assert (=> b!5000440 (= e!3124646 (not (isEmpty!31293 (_1!34780 lt!2068276))))))

(assert (= (and start!528418 res!2133647) b!5000426))

(assert (= (and b!5000426 res!2133655) b!5000436))

(assert (= (and b!5000436 res!2133650) b!5000439))

(assert (= (and b!5000439 res!2133651) b!5000427))

(assert (= (and b!5000427 res!2133652) b!5000434))

(assert (= (and b!5000434 (not res!2133653)) b!5000429))

(assert (= (and b!5000434 (not res!2133656)) b!5000437))

(assert (= (and b!5000434 res!2133648) b!5000440))

(assert (= (and b!5000434 (not res!2133649)) b!5000433))

(assert (= (and b!5000433 res!2133657) b!5000423))

(assert (= (and b!5000433 (not res!2133654)) b!5000431))

(get-info :version)

(assert (= (and start!528418 ((_ is ElementMatch!13779) r!12727)) b!5000430))

(assert (= (and start!528418 ((_ is Concat!22572) r!12727)) b!5000435))

(assert (= (and start!528418 ((_ is Star!13779) r!12727)) b!5000438))

(assert (= (and start!528418 ((_ is Union!13779) r!12727)) b!5000424))

(assert (= start!528418 b!5000432))

(assert (= (and start!528418 condSetEmpty!28340) setIsEmpty!28340))

(assert (= (and start!528418 (not condSetEmpty!28340)) setNonEmpty!28340))

(assert (= setNonEmpty!28340 b!5000425))

(assert (= start!528418 b!5000428))

(declare-fun m!6033816 () Bool)

(assert (=> b!5000429 m!6033816))

(assert (=> b!5000429 m!6033816))

(declare-fun m!6033818 () Bool)

(assert (=> b!5000429 m!6033818))

(assert (=> b!5000429 m!6033818))

(declare-fun m!6033820 () Bool)

(assert (=> b!5000429 m!6033820))

(declare-fun m!6033822 () Bool)

(assert (=> b!5000440 m!6033822))

(declare-fun m!6033824 () Bool)

(assert (=> b!5000427 m!6033824))

(declare-fun m!6033826 () Bool)

(assert (=> b!5000437 m!6033826))

(declare-fun m!6033828 () Bool)

(assert (=> start!528418 m!6033828))

(declare-fun m!6033830 () Bool)

(assert (=> start!528418 m!6033830))

(declare-fun m!6033832 () Bool)

(assert (=> start!528418 m!6033832))

(declare-fun m!6033834 () Bool)

(assert (=> setNonEmpty!28340 m!6033834))

(declare-fun m!6033836 () Bool)

(assert (=> b!5000434 m!6033836))

(declare-fun m!6033838 () Bool)

(assert (=> b!5000434 m!6033838))

(declare-fun m!6033840 () Bool)

(assert (=> b!5000434 m!6033840))

(declare-fun m!6033842 () Bool)

(assert (=> b!5000434 m!6033842))

(declare-fun m!6033844 () Bool)

(assert (=> b!5000434 m!6033844))

(declare-fun m!6033846 () Bool)

(assert (=> b!5000434 m!6033846))

(declare-fun m!6033848 () Bool)

(assert (=> b!5000434 m!6033848))

(declare-fun m!6033850 () Bool)

(assert (=> b!5000434 m!6033850))

(declare-fun m!6033852 () Bool)

(assert (=> b!5000434 m!6033852))

(declare-fun m!6033854 () Bool)

(assert (=> b!5000434 m!6033854))

(declare-fun m!6033856 () Bool)

(assert (=> b!5000434 m!6033856))

(declare-fun m!6033858 () Bool)

(assert (=> b!5000434 m!6033858))

(assert (=> b!5000434 m!6033852))

(assert (=> b!5000434 m!6033854))

(declare-fun m!6033860 () Bool)

(assert (=> b!5000434 m!6033860))

(assert (=> b!5000434 m!6033840))

(declare-fun m!6033862 () Bool)

(assert (=> b!5000434 m!6033862))

(declare-fun m!6033864 () Bool)

(assert (=> b!5000434 m!6033864))

(declare-fun m!6033866 () Bool)

(assert (=> b!5000428 m!6033866))

(declare-fun m!6033868 () Bool)

(assert (=> b!5000426 m!6033868))

(assert (=> b!5000426 m!6033868))

(declare-fun m!6033870 () Bool)

(assert (=> b!5000426 m!6033870))

(declare-fun m!6033872 () Bool)

(assert (=> b!5000433 m!6033872))

(declare-fun m!6033874 () Bool)

(assert (=> b!5000436 m!6033874))

(declare-fun m!6033876 () Bool)

(assert (=> b!5000436 m!6033876))

(declare-fun m!6033878 () Bool)

(assert (=> b!5000436 m!6033878))

(declare-fun m!6033880 () Bool)

(assert (=> b!5000423 m!6033880))

(declare-fun m!6033882 () Bool)

(assert (=> b!5000432 m!6033882))

(declare-fun m!6033884 () Bool)

(assert (=> b!5000439 m!6033884))

(declare-fun m!6033886 () Bool)

(assert (=> b!5000439 m!6033886))

(declare-fun m!6033888 () Bool)

(assert (=> b!5000439 m!6033888))

(declare-fun m!6033890 () Bool)

(assert (=> b!5000439 m!6033890))

(declare-fun m!6033892 () Bool)

(assert (=> b!5000439 m!6033892))

(declare-fun m!6033894 () Bool)

(assert (=> b!5000439 m!6033894))

(declare-fun m!6033896 () Bool)

(assert (=> b!5000439 m!6033896))

(check-sat (not b!5000424) (not b!5000434) (not b!5000438) (not b!5000427) (not b!5000433) (not b!5000440) (not b!5000437) (not start!528418) (not b!5000435) (not b!5000429) (not b!5000432) (not b!5000426) (not b!5000423) tp_is_empty!36555 (not b!5000439) (not b!5000425) (not b!5000436) (not b!5000428) (not setNonEmpty!28340))
(check-sat)
