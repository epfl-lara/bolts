; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!528546 () Bool)

(assert start!528546)

(declare-fun b!5001743 () Bool)

(declare-fun e!3125562 () Bool)

(declare-fun e!3125553 () Bool)

(assert (=> b!5001743 (= e!3125562 e!3125553)))

(declare-fun res!2134291 () Bool)

(assert (=> b!5001743 (=> res!2134291 e!3125553)))

(declare-datatypes ((C!27828 0))(
  ( (C!27829 (val!23280 Int)) )
))
(declare-datatypes ((List!57971 0))(
  ( (Nil!57847) (Cons!57847 (h!64295 C!27828) (t!370317 List!57971)) )
))
(declare-fun lt!2069374 () List!57971)

(declare-fun lt!2069368 () List!57971)

(assert (=> b!5001743 (= res!2134291 (not (= lt!2069374 lt!2069368)))))

(declare-fun lt!2069371 () List!57971)

(declare-fun lt!2069380 () Int)

(declare-fun take!648 (List!57971 Int) List!57971)

(assert (=> b!5001743 (= lt!2069371 (take!648 lt!2069374 lt!2069380))))

(declare-fun lt!2069384 () List!57971)

(declare-fun lt!2069367 () Int)

(declare-fun drop!2452 (List!57971 Int) List!57971)

(assert (=> b!5001743 (= lt!2069374 (drop!2452 lt!2069384 lt!2069367))))

(declare-fun b!5001744 () Bool)

(declare-fun e!3125560 () Bool)

(assert (=> b!5001744 (= e!3125553 e!3125560)))

(declare-fun res!2134281 () Bool)

(assert (=> b!5001744 (=> res!2134281 e!3125560)))

(declare-fun isPrefix!5342 (List!57971 List!57971) Bool)

(assert (=> b!5001744 (= res!2134281 (not (isPrefix!5342 lt!2069371 lt!2069368)))))

(assert (=> b!5001744 (isPrefix!5342 (take!648 lt!2069368 lt!2069380) lt!2069368)))

(declare-datatypes ((Unit!149005 0))(
  ( (Unit!149006) )
))
(declare-fun lt!2069379 () Unit!149005)

(declare-fun lemmaTakeIsPrefix!142 (List!57971 Int) Unit!149005)

(assert (=> b!5001744 (= lt!2069379 (lemmaTakeIsPrefix!142 lt!2069368 lt!2069380))))

(declare-fun b!5001745 () Bool)

(declare-fun res!2134280 () Bool)

(assert (=> b!5001745 (=> res!2134280 e!3125560)))

(declare-datatypes ((tuple2!62992 0))(
  ( (tuple2!62993 (_1!34799 List!57971) (_2!34799 List!57971)) )
))
(declare-fun lt!2069388 () tuple2!62992)

(assert (=> b!5001745 (= res!2134280 (not (isPrefix!5342 (_1!34799 lt!2069388) lt!2069368)))))

(declare-fun b!5001746 () Bool)

(declare-fun e!3125551 () Bool)

(declare-fun tp_is_empty!36575 () Bool)

(assert (=> b!5001746 (= e!3125551 tp_is_empty!36575)))

(declare-fun b!5001747 () Bool)

(declare-fun tp!1402972 () Bool)

(declare-fun tp!1402977 () Bool)

(assert (=> b!5001747 (= e!3125551 (and tp!1402972 tp!1402977))))

(declare-fun b!5001748 () Bool)

(declare-fun e!3125564 () Bool)

(declare-fun e!3125559 () Bool)

(assert (=> b!5001748 (= e!3125564 e!3125559)))

(declare-fun res!2134288 () Bool)

(assert (=> b!5001748 (=> (not res!2134288) (not e!3125559))))

(declare-fun lt!2069381 () List!57971)

(assert (=> b!5001748 (= res!2134288 (= lt!2069381 lt!2069368))))

(declare-fun ++!12635 (List!57971 List!57971) List!57971)

(assert (=> b!5001748 (= lt!2069381 (++!12635 (_1!34799 lt!2069388) (_2!34799 lt!2069388)))))

(declare-fun b!5001749 () Bool)

(declare-fun tp!1402975 () Bool)

(declare-fun tp!1402978 () Bool)

(assert (=> b!5001749 (= e!3125551 (and tp!1402975 tp!1402978))))

(declare-fun tp!1402980 () Bool)

(declare-fun e!3125552 () Bool)

(declare-fun setRes!28376 () Bool)

(declare-fun setNonEmpty!28376 () Bool)

(declare-datatypes ((Regex!13789 0))(
  ( (ElementMatch!13789 (c!853595 C!27828)) (Concat!22582 (regOne!28090 Regex!13789) (regTwo!28090 Regex!13789)) (EmptyExpr!13789) (Star!13789 (reg!14118 Regex!13789)) (EmptyLang!13789) (Union!13789 (regOne!28091 Regex!13789) (regTwo!28091 Regex!13789)) )
))
(declare-datatypes ((List!57972 0))(
  ( (Nil!57848) (Cons!57848 (h!64296 Regex!13789) (t!370318 List!57972)) )
))
(declare-datatypes ((Context!6428 0))(
  ( (Context!6429 (exprs!3714 List!57972)) )
))
(declare-fun setElem!28376 () Context!6428)

(declare-fun inv!75984 (Context!6428) Bool)

(assert (=> setNonEmpty!28376 (= setRes!28376 (and tp!1402980 (inv!75984 setElem!28376) e!3125552))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4183 () (InoxSet Context!6428))

(declare-fun setRest!28376 () (InoxSet Context!6428))

(assert (=> setNonEmpty!28376 (= z!4183 ((_ map or) (store ((as const (Array Context!6428 Bool)) false) setElem!28376 true) setRest!28376))))

(declare-fun b!5001750 () Bool)

(declare-fun e!3125558 () Bool)

(declare-datatypes ((IArray!30677 0))(
  ( (IArray!30678 (innerList!15396 List!57971)) )
))
(declare-datatypes ((Conc!15308 0))(
  ( (Node!15308 (left!42296 Conc!15308) (right!42626 Conc!15308) (csize!30846 Int) (cheight!15519 Int)) (Leaf!25411 (xs!18634 IArray!30677) (csize!30847 Int)) (Empty!15308) )
))
(declare-datatypes ((BalanceConc!30046 0))(
  ( (BalanceConc!30047 (c!853596 Conc!15308)) )
))
(declare-datatypes ((tuple2!62994 0))(
  ( (tuple2!62995 (_1!34800 BalanceConc!30046) (_2!34800 BalanceConc!30046)) )
))
(declare-fun lt!2069373 () tuple2!62994)

(declare-fun isEmpty!31314 (BalanceConc!30046) Bool)

(assert (=> b!5001750 (= e!3125558 (not (isEmpty!31314 (_1!34800 lt!2069373))))))

(declare-fun res!2134284 () Bool)

(declare-fun e!3125556 () Bool)

(assert (=> start!528546 (=> (not res!2134284) (not e!3125556))))

(declare-fun r!12727 () Regex!13789)

(declare-fun validRegex!6086 (Regex!13789) Bool)

(assert (=> start!528546 (= res!2134284 (validRegex!6086 r!12727))))

(assert (=> start!528546 e!3125556))

(assert (=> start!528546 e!3125551))

(declare-fun input!5597 () BalanceConc!30046)

(declare-fun e!3125554 () Bool)

(declare-fun inv!75985 (BalanceConc!30046) Bool)

(assert (=> start!528546 (and (inv!75985 input!5597) e!3125554)))

(declare-fun condSetEmpty!28376 () Bool)

(assert (=> start!528546 (= condSetEmpty!28376 (= z!4183 ((as const (Array Context!6428 Bool)) false)))))

(assert (=> start!528546 setRes!28376))

(declare-fun totalInput!1012 () BalanceConc!30046)

(declare-fun e!3125566 () Bool)

(assert (=> start!528546 (and (inv!75985 totalInput!1012) e!3125566)))

(declare-fun b!5001751 () Bool)

(declare-fun e!3125557 () Bool)

(assert (=> b!5001751 (= e!3125556 e!3125557)))

(declare-fun res!2134285 () Bool)

(assert (=> b!5001751 (=> (not res!2134285) (not e!3125557))))

(declare-datatypes ((List!57973 0))(
  ( (Nil!57849) (Cons!57849 (h!64297 Context!6428) (t!370319 List!57973)) )
))
(declare-fun lt!2069377 () List!57973)

(declare-fun unfocusZipper!316 (List!57973) Regex!13789)

(assert (=> b!5001751 (= res!2134285 (= (unfocusZipper!316 lt!2069377) r!12727))))

(declare-fun toList!8074 ((InoxSet Context!6428)) List!57973)

(assert (=> b!5001751 (= lt!2069377 (toList!8074 z!4183))))

(declare-fun b!5001752 () Bool)

(declare-fun tp!1402973 () Bool)

(declare-fun inv!75986 (Conc!15308) Bool)

(assert (=> b!5001752 (= e!3125566 (and (inv!75986 (c!853596 totalInput!1012)) tp!1402973))))

(declare-fun b!5001753 () Bool)

(declare-fun tp!1402979 () Bool)

(assert (=> b!5001753 (= e!3125552 tp!1402979)))

(declare-fun b!5001754 () Bool)

(declare-fun e!3125561 () Bool)

(declare-fun isEmpty!31315 (List!57971) Bool)

(assert (=> b!5001754 (= e!3125561 (not (isEmpty!31315 (_1!34799 lt!2069388))))))

(declare-fun b!5001755 () Bool)

(declare-fun e!3125550 () Bool)

(assert (=> b!5001755 (= e!3125550 e!3125564)))

(declare-fun res!2134282 () Bool)

(assert (=> b!5001755 (=> (not res!2134282) (not e!3125564))))

(declare-fun lt!2069369 () List!57971)

(assert (=> b!5001755 (= res!2134282 (= lt!2069369 lt!2069368))))

(declare-fun lt!2069382 () List!57971)

(declare-fun lt!2069385 () List!57971)

(assert (=> b!5001755 (= lt!2069369 (++!12635 lt!2069382 lt!2069385))))

(declare-fun list!18612 (BalanceConc!30046) List!57971)

(assert (=> b!5001755 (= lt!2069385 (list!18612 (_2!34800 lt!2069373)))))

(assert (=> b!5001755 (= lt!2069382 (list!18612 (_1!34800 lt!2069373)))))

(declare-fun findLongestMatch!1802 (Regex!13789 List!57971) tuple2!62992)

(assert (=> b!5001755 (= lt!2069388 (findLongestMatch!1802 r!12727 lt!2069368))))

(declare-fun lt!2069366 () Int)

(declare-fun size!38446 (BalanceConc!30046) Int)

(assert (=> b!5001755 (= lt!2069367 (- lt!2069366 (size!38446 input!5597)))))

(assert (=> b!5001755 (= lt!2069366 (size!38446 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!91 ((InoxSet Context!6428) BalanceConc!30046 BalanceConc!30046) tuple2!62994)

(assert (=> b!5001755 (= lt!2069373 (findLongestMatchZipperFastV2!91 z!4183 input!5597 totalInput!1012))))

(declare-fun setIsEmpty!28376 () Bool)

(assert (=> setIsEmpty!28376 setRes!28376))

(declare-fun b!5001756 () Bool)

(declare-fun e!3125563 () Bool)

(assert (=> b!5001756 (= e!3125559 (not e!3125563))))

(declare-fun res!2134289 () Bool)

(assert (=> b!5001756 (=> res!2134289 e!3125563)))

(assert (=> b!5001756 (= res!2134289 e!3125558)))

(declare-fun res!2134290 () Bool)

(assert (=> b!5001756 (=> (not res!2134290) (not e!3125558))))

(declare-fun lt!2069386 () Bool)

(assert (=> b!5001756 (= res!2134290 (not lt!2069386))))

(declare-fun matchZipper!557 ((InoxSet Context!6428) List!57971) Bool)

(assert (=> b!5001756 (= lt!2069386 (matchZipper!557 z!4183 lt!2069382))))

(declare-fun e!3125555 () Bool)

(assert (=> b!5001756 e!3125555))

(declare-fun res!2134277 () Bool)

(assert (=> b!5001756 (=> res!2134277 e!3125555)))

(declare-fun lt!2069364 () tuple2!62992)

(assert (=> b!5001756 (= res!2134277 (isEmpty!31315 (_1!34799 lt!2069364)))))

(declare-fun findLongestMatchInner!1978 (Regex!13789 List!57971 Int List!57971 List!57971 Int) tuple2!62992)

(declare-fun size!38447 (List!57971) Int)

(assert (=> b!5001756 (= lt!2069364 (findLongestMatchInner!1978 r!12727 Nil!57847 (size!38447 Nil!57847) lt!2069368 lt!2069368 (size!38447 lt!2069368)))))

(declare-fun lt!2069387 () Unit!149005)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1931 (Regex!13789 List!57971) Unit!149005)

(assert (=> b!5001756 (= lt!2069387 (longestMatchIsAcceptedByMatchOrIsEmpty!1931 r!12727 lt!2069368))))

(declare-fun e!3125567 () Bool)

(assert (=> b!5001756 e!3125567))

(declare-fun res!2134279 () Bool)

(assert (=> b!5001756 (=> res!2134279 e!3125567)))

(declare-fun lt!2069363 () Int)

(assert (=> b!5001756 (= res!2134279 (= lt!2069363 0))))

(declare-fun findLongestMatchInnerZipperFastV2!129 ((InoxSet Context!6428) Int BalanceConc!30046 Int) Int)

(assert (=> b!5001756 (= lt!2069363 (findLongestMatchInnerZipperFastV2!129 z!4183 lt!2069367 totalInput!1012 lt!2069366))))

(declare-fun lt!2069376 () Unit!149005)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!48 ((InoxSet Context!6428) Int BalanceConc!30046) Unit!149005)

(assert (=> b!5001756 (= lt!2069376 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!48 z!4183 lt!2069367 totalInput!1012))))

(assert (=> b!5001756 (isPrefix!5342 (take!648 lt!2069384 lt!2069367) lt!2069384)))

(declare-fun lt!2069375 () Unit!149005)

(assert (=> b!5001756 (= lt!2069375 (lemmaTakeIsPrefix!142 lt!2069384 lt!2069367))))

(assert (=> b!5001756 (isPrefix!5342 (_1!34799 lt!2069388) lt!2069381)))

(declare-fun lt!2069370 () Unit!149005)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3440 (List!57971 List!57971) Unit!149005)

(assert (=> b!5001756 (= lt!2069370 (lemmaConcatTwoListThenFirstIsPrefix!3440 (_1!34799 lt!2069388) (_2!34799 lt!2069388)))))

(assert (=> b!5001756 (isPrefix!5342 lt!2069382 lt!2069369)))

(declare-fun lt!2069365 () Unit!149005)

(assert (=> b!5001756 (= lt!2069365 (lemmaConcatTwoListThenFirstIsPrefix!3440 lt!2069382 lt!2069385))))

(declare-fun b!5001757 () Bool)

(declare-fun e!3125565 () Bool)

(assert (=> b!5001757 (= e!3125565 e!3125562)))

(declare-fun res!2134278 () Bool)

(assert (=> b!5001757 (=> res!2134278 e!3125562)))

(assert (=> b!5001757 (= res!2134278 (<= lt!2069380 (size!38446 (_1!34800 lt!2069373))))))

(assert (=> b!5001757 (= lt!2069380 (size!38447 (_1!34799 lt!2069388)))))

(declare-fun matchR!6753 (Regex!13789 List!57971) Bool)

(assert (=> b!5001757 (= (matchR!6753 r!12727 lt!2069382) lt!2069386)))

(declare-fun lt!2069378 () Unit!149005)

(declare-fun theoremZipperRegexEquiv!161 ((InoxSet Context!6428) List!57973 Regex!13789 List!57971) Unit!149005)

(assert (=> b!5001757 (= lt!2069378 (theoremZipperRegexEquiv!161 z!4183 lt!2069377 r!12727 lt!2069382))))

(declare-fun lt!2069383 () Bool)

(assert (=> b!5001757 (= lt!2069383 (matchZipper!557 z!4183 (_1!34799 lt!2069388)))))

(declare-fun lt!2069372 () Unit!149005)

(assert (=> b!5001757 (= lt!2069372 (theoremZipperRegexEquiv!161 z!4183 lt!2069377 r!12727 (_1!34799 lt!2069388)))))

(declare-fun b!5001758 () Bool)

(declare-fun tp!1402976 () Bool)

(assert (=> b!5001758 (= e!3125551 tp!1402976)))

(declare-fun b!5001759 () Bool)

(declare-fun tp!1402974 () Bool)

(assert (=> b!5001759 (= e!3125554 (and (inv!75986 (c!853596 input!5597)) tp!1402974))))

(declare-fun b!5001760 () Bool)

(assert (=> b!5001760 (= e!3125555 (matchR!6753 r!12727 (_1!34799 lt!2069364)))))

(declare-fun b!5001761 () Bool)

(assert (=> b!5001761 (= e!3125563 e!3125565)))

(declare-fun res!2134286 () Bool)

(assert (=> b!5001761 (=> res!2134286 e!3125565)))

(assert (=> b!5001761 (= res!2134286 e!3125561)))

(declare-fun res!2134283 () Bool)

(assert (=> b!5001761 (=> (not res!2134283) (not e!3125561))))

(assert (=> b!5001761 (= res!2134283 (not lt!2069383))))

(assert (=> b!5001761 (= lt!2069383 (matchR!6753 r!12727 (_1!34799 lt!2069388)))))

(declare-fun b!5001762 () Bool)

(assert (=> b!5001762 (= e!3125560 (= (size!38447 lt!2069371) lt!2069380))))

(declare-fun b!5001763 () Bool)

(assert (=> b!5001763 (= e!3125567 (matchZipper!557 z!4183 (take!648 (drop!2452 lt!2069384 lt!2069367) lt!2069363)))))

(declare-fun b!5001764 () Bool)

(assert (=> b!5001764 (= e!3125557 e!3125550)))

(declare-fun res!2134287 () Bool)

(assert (=> b!5001764 (=> (not res!2134287) (not e!3125550))))

(declare-fun isSuffix!1355 (List!57971 List!57971) Bool)

(assert (=> b!5001764 (= res!2134287 (isSuffix!1355 lt!2069368 lt!2069384))))

(assert (=> b!5001764 (= lt!2069384 (list!18612 totalInput!1012))))

(assert (=> b!5001764 (= lt!2069368 (list!18612 input!5597))))

(assert (= (and start!528546 res!2134284) b!5001751))

(assert (= (and b!5001751 res!2134285) b!5001764))

(assert (= (and b!5001764 res!2134287) b!5001755))

(assert (= (and b!5001755 res!2134282) b!5001748))

(assert (= (and b!5001748 res!2134288) b!5001756))

(assert (= (and b!5001756 (not res!2134279)) b!5001763))

(assert (= (and b!5001756 (not res!2134277)) b!5001760))

(assert (= (and b!5001756 res!2134290) b!5001750))

(assert (= (and b!5001756 (not res!2134289)) b!5001761))

(assert (= (and b!5001761 res!2134283) b!5001754))

(assert (= (and b!5001761 (not res!2134286)) b!5001757))

(assert (= (and b!5001757 (not res!2134278)) b!5001743))

(assert (= (and b!5001743 (not res!2134291)) b!5001744))

(assert (= (and b!5001744 (not res!2134281)) b!5001745))

(assert (= (and b!5001745 (not res!2134280)) b!5001762))

(get-info :version)

(assert (= (and start!528546 ((_ is ElementMatch!13789) r!12727)) b!5001746))

(assert (= (and start!528546 ((_ is Concat!22582) r!12727)) b!5001749))

(assert (= (and start!528546 ((_ is Star!13789) r!12727)) b!5001758))

(assert (= (and start!528546 ((_ is Union!13789) r!12727)) b!5001747))

(assert (= start!528546 b!5001759))

(assert (= (and start!528546 condSetEmpty!28376) setIsEmpty!28376))

(assert (= (and start!528546 (not condSetEmpty!28376)) setNonEmpty!28376))

(assert (= setNonEmpty!28376 b!5001753))

(assert (= start!528546 b!5001752))

(declare-fun m!6035474 () Bool)

(assert (=> b!5001757 m!6035474))

(declare-fun m!6035476 () Bool)

(assert (=> b!5001757 m!6035476))

(declare-fun m!6035478 () Bool)

(assert (=> b!5001757 m!6035478))

(declare-fun m!6035480 () Bool)

(assert (=> b!5001757 m!6035480))

(declare-fun m!6035482 () Bool)

(assert (=> b!5001757 m!6035482))

(declare-fun m!6035484 () Bool)

(assert (=> b!5001757 m!6035484))

(declare-fun m!6035486 () Bool)

(assert (=> b!5001748 m!6035486))

(declare-fun m!6035488 () Bool)

(assert (=> b!5001743 m!6035488))

(declare-fun m!6035490 () Bool)

(assert (=> b!5001743 m!6035490))

(declare-fun m!6035492 () Bool)

(assert (=> b!5001756 m!6035492))

(declare-fun m!6035494 () Bool)

(assert (=> b!5001756 m!6035494))

(declare-fun m!6035496 () Bool)

(assert (=> b!5001756 m!6035496))

(declare-fun m!6035498 () Bool)

(assert (=> b!5001756 m!6035498))

(declare-fun m!6035500 () Bool)

(assert (=> b!5001756 m!6035500))

(declare-fun m!6035502 () Bool)

(assert (=> b!5001756 m!6035502))

(declare-fun m!6035504 () Bool)

(assert (=> b!5001756 m!6035504))

(declare-fun m!6035506 () Bool)

(assert (=> b!5001756 m!6035506))

(assert (=> b!5001756 m!6035494))

(declare-fun m!6035508 () Bool)

(assert (=> b!5001756 m!6035508))

(declare-fun m!6035510 () Bool)

(assert (=> b!5001756 m!6035510))

(declare-fun m!6035512 () Bool)

(assert (=> b!5001756 m!6035512))

(declare-fun m!6035514 () Bool)

(assert (=> b!5001756 m!6035514))

(assert (=> b!5001756 m!6035512))

(assert (=> b!5001756 m!6035506))

(declare-fun m!6035516 () Bool)

(assert (=> b!5001756 m!6035516))

(declare-fun m!6035518 () Bool)

(assert (=> b!5001756 m!6035518))

(declare-fun m!6035520 () Bool)

(assert (=> b!5001756 m!6035520))

(assert (=> b!5001763 m!6035490))

(assert (=> b!5001763 m!6035490))

(declare-fun m!6035522 () Bool)

(assert (=> b!5001763 m!6035522))

(assert (=> b!5001763 m!6035522))

(declare-fun m!6035524 () Bool)

(assert (=> b!5001763 m!6035524))

(declare-fun m!6035526 () Bool)

(assert (=> b!5001750 m!6035526))

(declare-fun m!6035528 () Bool)

(assert (=> b!5001762 m!6035528))

(declare-fun m!6035530 () Bool)

(assert (=> b!5001761 m!6035530))

(declare-fun m!6035532 () Bool)

(assert (=> b!5001745 m!6035532))

(declare-fun m!6035534 () Bool)

(assert (=> b!5001760 m!6035534))

(declare-fun m!6035536 () Bool)

(assert (=> b!5001752 m!6035536))

(declare-fun m!6035538 () Bool)

(assert (=> start!528546 m!6035538))

(declare-fun m!6035540 () Bool)

(assert (=> start!528546 m!6035540))

(declare-fun m!6035542 () Bool)

(assert (=> start!528546 m!6035542))

(declare-fun m!6035544 () Bool)

(assert (=> b!5001751 m!6035544))

(declare-fun m!6035546 () Bool)

(assert (=> b!5001751 m!6035546))

(declare-fun m!6035548 () Bool)

(assert (=> b!5001755 m!6035548))

(declare-fun m!6035550 () Bool)

(assert (=> b!5001755 m!6035550))

(declare-fun m!6035552 () Bool)

(assert (=> b!5001755 m!6035552))

(declare-fun m!6035554 () Bool)

(assert (=> b!5001755 m!6035554))

(declare-fun m!6035556 () Bool)

(assert (=> b!5001755 m!6035556))

(declare-fun m!6035558 () Bool)

(assert (=> b!5001755 m!6035558))

(declare-fun m!6035560 () Bool)

(assert (=> b!5001755 m!6035560))

(declare-fun m!6035562 () Bool)

(assert (=> b!5001764 m!6035562))

(declare-fun m!6035564 () Bool)

(assert (=> b!5001764 m!6035564))

(declare-fun m!6035566 () Bool)

(assert (=> b!5001764 m!6035566))

(declare-fun m!6035568 () Bool)

(assert (=> b!5001744 m!6035568))

(declare-fun m!6035570 () Bool)

(assert (=> b!5001744 m!6035570))

(assert (=> b!5001744 m!6035570))

(declare-fun m!6035572 () Bool)

(assert (=> b!5001744 m!6035572))

(declare-fun m!6035574 () Bool)

(assert (=> b!5001744 m!6035574))

(declare-fun m!6035576 () Bool)

(assert (=> b!5001754 m!6035576))

(declare-fun m!6035578 () Bool)

(assert (=> b!5001759 m!6035578))

(declare-fun m!6035580 () Bool)

(assert (=> setNonEmpty!28376 m!6035580))

(check-sat (not b!5001754) (not b!5001762) (not b!5001748) (not b!5001747) (not b!5001764) (not start!528546) (not b!5001750) (not b!5001759) (not b!5001745) (not b!5001761) (not b!5001752) (not b!5001751) (not b!5001758) (not b!5001753) (not b!5001763) (not setNonEmpty!28376) (not b!5001755) (not b!5001743) (not b!5001749) (not b!5001756) tp_is_empty!36575 (not b!5001757) (not b!5001760) (not b!5001744))
(check-sat)
(get-model)

(declare-fun b!5001773 () Bool)

(declare-fun e!3125574 () Bool)

(declare-fun e!3125575 () Bool)

(assert (=> b!5001773 (= e!3125574 e!3125575)))

(declare-fun res!2134301 () Bool)

(assert (=> b!5001773 (=> (not res!2134301) (not e!3125575))))

(assert (=> b!5001773 (= res!2134301 (not ((_ is Nil!57847) lt!2069368)))))

(declare-fun b!5001774 () Bool)

(declare-fun res!2134300 () Bool)

(assert (=> b!5001774 (=> (not res!2134300) (not e!3125575))))

(declare-fun head!10726 (List!57971) C!27828)

(assert (=> b!5001774 (= res!2134300 (= (head!10726 (_1!34799 lt!2069388)) (head!10726 lt!2069368)))))

(declare-fun b!5001776 () Bool)

(declare-fun e!3125576 () Bool)

(assert (=> b!5001776 (= e!3125576 (>= (size!38447 lt!2069368) (size!38447 (_1!34799 lt!2069388))))))

(declare-fun d!1609987 () Bool)

(assert (=> d!1609987 e!3125576))

(declare-fun res!2134303 () Bool)

(assert (=> d!1609987 (=> res!2134303 e!3125576)))

(declare-fun lt!2069391 () Bool)

(assert (=> d!1609987 (= res!2134303 (not lt!2069391))))

(assert (=> d!1609987 (= lt!2069391 e!3125574)))

(declare-fun res!2134302 () Bool)

(assert (=> d!1609987 (=> res!2134302 e!3125574)))

(assert (=> d!1609987 (= res!2134302 ((_ is Nil!57847) (_1!34799 lt!2069388)))))

(assert (=> d!1609987 (= (isPrefix!5342 (_1!34799 lt!2069388) lt!2069368) lt!2069391)))

(declare-fun b!5001775 () Bool)

(declare-fun tail!9859 (List!57971) List!57971)

(assert (=> b!5001775 (= e!3125575 (isPrefix!5342 (tail!9859 (_1!34799 lt!2069388)) (tail!9859 lt!2069368)))))

(assert (= (and d!1609987 (not res!2134302)) b!5001773))

(assert (= (and b!5001773 res!2134301) b!5001774))

(assert (= (and b!5001774 res!2134300) b!5001775))

(assert (= (and d!1609987 (not res!2134303)) b!5001776))

(declare-fun m!6035582 () Bool)

(assert (=> b!5001774 m!6035582))

(declare-fun m!6035584 () Bool)

(assert (=> b!5001774 m!6035584))

(assert (=> b!5001776 m!6035494))

(assert (=> b!5001776 m!6035478))

(declare-fun m!6035586 () Bool)

(assert (=> b!5001775 m!6035586))

(declare-fun m!6035588 () Bool)

(assert (=> b!5001775 m!6035588))

(assert (=> b!5001775 m!6035586))

(assert (=> b!5001775 m!6035588))

(declare-fun m!6035590 () Bool)

(assert (=> b!5001775 m!6035590))

(assert (=> b!5001745 d!1609987))

(declare-fun d!1609989 () Bool)

(declare-fun e!3125580 () Bool)

(assert (=> d!1609989 e!3125580))

(declare-fun res!2134306 () Bool)

(assert (=> d!1609989 (=> res!2134306 e!3125580)))

(declare-fun lt!2069394 () Bool)

(assert (=> d!1609989 (= res!2134306 (not lt!2069394))))

(assert (=> d!1609989 (= lt!2069394 (= lt!2069368 (drop!2452 lt!2069384 (- (size!38447 lt!2069384) (size!38447 lt!2069368)))))))

(assert (=> d!1609989 (= (isSuffix!1355 lt!2069368 lt!2069384) lt!2069394)))

(declare-fun b!5001783 () Bool)

(assert (=> b!5001783 (= e!3125580 (>= (size!38447 lt!2069384) (size!38447 lt!2069368)))))

(assert (= (and d!1609989 (not res!2134306)) b!5001783))

(declare-fun m!6035592 () Bool)

(assert (=> d!1609989 m!6035592))

(assert (=> d!1609989 m!6035494))

(declare-fun m!6035594 () Bool)

(assert (=> d!1609989 m!6035594))

(assert (=> b!5001783 m!6035592))

(assert (=> b!5001783 m!6035494))

(assert (=> b!5001764 d!1609989))

(declare-fun d!1609993 () Bool)

(declare-fun list!18613 (Conc!15308) List!57971)

(assert (=> d!1609993 (= (list!18612 totalInput!1012) (list!18613 (c!853596 totalInput!1012)))))

(declare-fun bs!1185781 () Bool)

(assert (= bs!1185781 d!1609993))

(declare-fun m!6035604 () Bool)

(assert (=> bs!1185781 m!6035604))

(assert (=> b!5001764 d!1609993))

(declare-fun d!1609999 () Bool)

(assert (=> d!1609999 (= (list!18612 input!5597) (list!18613 (c!853596 input!5597)))))

(declare-fun bs!1185782 () Bool)

(assert (= bs!1185782 d!1609999))

(declare-fun m!6035606 () Bool)

(assert (=> bs!1185782 m!6035606))

(assert (=> b!5001764 d!1609999))

(declare-fun d!1610001 () Bool)

(declare-fun lt!2069426 () tuple2!62992)

(assert (=> d!1610001 (= (++!12635 (_1!34799 lt!2069426) (_2!34799 lt!2069426)) lt!2069368)))

(declare-fun sizeTr!393 (List!57971 Int) Int)

(assert (=> d!1610001 (= lt!2069426 (findLongestMatchInner!1978 r!12727 Nil!57847 0 lt!2069368 lt!2069368 (sizeTr!393 lt!2069368 0)))))

(declare-fun lt!2069431 () Unit!149005)

(declare-fun lt!2069429 () Unit!149005)

(assert (=> d!1610001 (= lt!2069431 lt!2069429)))

(declare-fun lt!2069427 () List!57971)

(declare-fun lt!2069428 () Int)

(assert (=> d!1610001 (= (sizeTr!393 lt!2069427 lt!2069428) (+ (size!38447 lt!2069427) lt!2069428))))

(declare-fun lemmaSizeTrEqualsSize!392 (List!57971 Int) Unit!149005)

(assert (=> d!1610001 (= lt!2069429 (lemmaSizeTrEqualsSize!392 lt!2069427 lt!2069428))))

(assert (=> d!1610001 (= lt!2069428 0)))

(assert (=> d!1610001 (= lt!2069427 Nil!57847)))

(declare-fun lt!2069430 () Unit!149005)

(declare-fun lt!2069433 () Unit!149005)

(assert (=> d!1610001 (= lt!2069430 lt!2069433)))

(declare-fun lt!2069432 () Int)

(assert (=> d!1610001 (= (sizeTr!393 lt!2069368 lt!2069432) (+ (size!38447 lt!2069368) lt!2069432))))

(assert (=> d!1610001 (= lt!2069433 (lemmaSizeTrEqualsSize!392 lt!2069368 lt!2069432))))

(assert (=> d!1610001 (= lt!2069432 0)))

(assert (=> d!1610001 (validRegex!6086 r!12727)))

(assert (=> d!1610001 (= (findLongestMatch!1802 r!12727 lt!2069368) lt!2069426)))

(declare-fun bs!1185784 () Bool)

(assert (= bs!1185784 d!1610001))

(declare-fun m!6035636 () Bool)

(assert (=> bs!1185784 m!6035636))

(declare-fun m!6035638 () Bool)

(assert (=> bs!1185784 m!6035638))

(declare-fun m!6035640 () Bool)

(assert (=> bs!1185784 m!6035640))

(declare-fun m!6035642 () Bool)

(assert (=> bs!1185784 m!6035642))

(declare-fun m!6035644 () Bool)

(assert (=> bs!1185784 m!6035644))

(assert (=> bs!1185784 m!6035538))

(declare-fun m!6035646 () Bool)

(assert (=> bs!1185784 m!6035646))

(declare-fun m!6035648 () Bool)

(assert (=> bs!1185784 m!6035648))

(assert (=> bs!1185784 m!6035638))

(declare-fun m!6035650 () Bool)

(assert (=> bs!1185784 m!6035650))

(assert (=> bs!1185784 m!6035494))

(assert (=> b!5001755 d!1610001))

(declare-fun d!1610015 () Bool)

(assert (=> d!1610015 (= (list!18612 (_1!34800 lt!2069373)) (list!18613 (c!853596 (_1!34800 lt!2069373))))))

(declare-fun bs!1185785 () Bool)

(assert (= bs!1185785 d!1610015))

(declare-fun m!6035652 () Bool)

(assert (=> bs!1185785 m!6035652))

(assert (=> b!5001755 d!1610015))

(declare-fun d!1610017 () Bool)

(assert (=> d!1610017 (= (list!18612 (_2!34800 lt!2069373)) (list!18613 (c!853596 (_2!34800 lt!2069373))))))

(declare-fun bs!1185786 () Bool)

(assert (= bs!1185786 d!1610017))

(declare-fun m!6035654 () Bool)

(assert (=> bs!1185786 m!6035654))

(assert (=> b!5001755 d!1610017))

(declare-fun d!1610019 () Bool)

(declare-fun lt!2069436 () Int)

(assert (=> d!1610019 (= lt!2069436 (size!38447 (list!18612 totalInput!1012)))))

(declare-fun size!38448 (Conc!15308) Int)

(assert (=> d!1610019 (= lt!2069436 (size!38448 (c!853596 totalInput!1012)))))

(assert (=> d!1610019 (= (size!38446 totalInput!1012) lt!2069436)))

(declare-fun bs!1185787 () Bool)

(assert (= bs!1185787 d!1610019))

(assert (=> bs!1185787 m!6035564))

(assert (=> bs!1185787 m!6035564))

(declare-fun m!6035656 () Bool)

(assert (=> bs!1185787 m!6035656))

(declare-fun m!6035658 () Bool)

(assert (=> bs!1185787 m!6035658))

(assert (=> b!5001755 d!1610019))

(declare-fun d!1610021 () Bool)

(declare-fun lt!2069451 () tuple2!62994)

(assert (=> d!1610021 (= (++!12635 (list!18612 (_1!34800 lt!2069451)) (list!18612 (_2!34800 lt!2069451))) (list!18612 input!5597))))

(declare-fun lt!2069452 () Int)

(declare-fun splitAt!442 (BalanceConc!30046 Int) tuple2!62994)

(assert (=> d!1610021 (= lt!2069451 (splitAt!442 input!5597 (findLongestMatchInnerZipperFastV2!129 z!4183 (- lt!2069452 (size!38446 input!5597)) totalInput!1012 lt!2069452)))))

(assert (=> d!1610021 (= lt!2069452 (size!38446 totalInput!1012))))

(assert (=> d!1610021 (isSuffix!1355 (list!18612 input!5597) (list!18612 totalInput!1012))))

(assert (=> d!1610021 (= (findLongestMatchZipperFastV2!91 z!4183 input!5597 totalInput!1012) lt!2069451)))

(declare-fun bs!1185790 () Bool)

(assert (= bs!1185790 d!1610021))

(declare-fun m!6035696 () Bool)

(assert (=> bs!1185790 m!6035696))

(declare-fun m!6035698 () Bool)

(assert (=> bs!1185790 m!6035698))

(assert (=> bs!1185790 m!6035558))

(declare-fun m!6035700 () Bool)

(assert (=> bs!1185790 m!6035700))

(declare-fun m!6035702 () Bool)

(assert (=> bs!1185790 m!6035702))

(assert (=> bs!1185790 m!6035564))

(assert (=> bs!1185790 m!6035566))

(assert (=> bs!1185790 m!6035566))

(assert (=> bs!1185790 m!6035564))

(declare-fun m!6035704 () Bool)

(assert (=> bs!1185790 m!6035704))

(assert (=> bs!1185790 m!6035696))

(assert (=> bs!1185790 m!6035698))

(declare-fun m!6035706 () Bool)

(assert (=> bs!1185790 m!6035706))

(assert (=> bs!1185790 m!6035700))

(assert (=> bs!1185790 m!6035554))

(assert (=> b!5001755 d!1610021))

(declare-fun d!1610033 () Bool)

(declare-fun lt!2069453 () Int)

(assert (=> d!1610033 (= lt!2069453 (size!38447 (list!18612 input!5597)))))

(assert (=> d!1610033 (= lt!2069453 (size!38448 (c!853596 input!5597)))))

(assert (=> d!1610033 (= (size!38446 input!5597) lt!2069453)))

(declare-fun bs!1185791 () Bool)

(assert (= bs!1185791 d!1610033))

(assert (=> bs!1185791 m!6035566))

(assert (=> bs!1185791 m!6035566))

(declare-fun m!6035708 () Bool)

(assert (=> bs!1185791 m!6035708))

(declare-fun m!6035710 () Bool)

(assert (=> bs!1185791 m!6035710))

(assert (=> b!5001755 d!1610033))

(declare-fun b!5001930 () Bool)

(declare-fun res!2134364 () Bool)

(declare-fun e!3125663 () Bool)

(assert (=> b!5001930 (=> (not res!2134364) (not e!3125663))))

(declare-fun lt!2069457 () List!57971)

(assert (=> b!5001930 (= res!2134364 (= (size!38447 lt!2069457) (+ (size!38447 lt!2069382) (size!38447 lt!2069385))))))

(declare-fun b!5001929 () Bool)

(declare-fun e!3125662 () List!57971)

(assert (=> b!5001929 (= e!3125662 (Cons!57847 (h!64295 lt!2069382) (++!12635 (t!370317 lt!2069382) lt!2069385)))))

(declare-fun d!1610035 () Bool)

(assert (=> d!1610035 e!3125663))

(declare-fun res!2134363 () Bool)

(assert (=> d!1610035 (=> (not res!2134363) (not e!3125663))))

(declare-fun content!10238 (List!57971) (InoxSet C!27828))

(assert (=> d!1610035 (= res!2134363 (= (content!10238 lt!2069457) ((_ map or) (content!10238 lt!2069382) (content!10238 lt!2069385))))))

(assert (=> d!1610035 (= lt!2069457 e!3125662)))

(declare-fun c!853643 () Bool)

(assert (=> d!1610035 (= c!853643 ((_ is Nil!57847) lt!2069382))))

(assert (=> d!1610035 (= (++!12635 lt!2069382 lt!2069385) lt!2069457)))

(declare-fun b!5001931 () Bool)

(assert (=> b!5001931 (= e!3125663 (or (not (= lt!2069385 Nil!57847)) (= lt!2069457 lt!2069382)))))

(declare-fun b!5001928 () Bool)

(assert (=> b!5001928 (= e!3125662 lt!2069385)))

(assert (= (and d!1610035 c!853643) b!5001928))

(assert (= (and d!1610035 (not c!853643)) b!5001929))

(assert (= (and d!1610035 res!2134363) b!5001930))

(assert (= (and b!5001930 res!2134364) b!5001931))

(declare-fun m!6035722 () Bool)

(assert (=> b!5001930 m!6035722))

(declare-fun m!6035724 () Bool)

(assert (=> b!5001930 m!6035724))

(declare-fun m!6035726 () Bool)

(assert (=> b!5001930 m!6035726))

(declare-fun m!6035728 () Bool)

(assert (=> b!5001929 m!6035728))

(declare-fun m!6035730 () Bool)

(assert (=> d!1610035 m!6035730))

(declare-fun m!6035732 () Bool)

(assert (=> d!1610035 m!6035732))

(declare-fun m!6035734 () Bool)

(assert (=> d!1610035 m!6035734))

(assert (=> b!5001755 d!1610035))

(declare-fun c!853646 () Bool)

(declare-fun d!1610039 () Bool)

(assert (=> d!1610039 (= c!853646 (isEmpty!31315 (take!648 (drop!2452 lt!2069384 lt!2069367) lt!2069363)))))

(declare-fun e!3125666 () Bool)

(assert (=> d!1610039 (= (matchZipper!557 z!4183 (take!648 (drop!2452 lt!2069384 lt!2069367) lt!2069363)) e!3125666)))

(declare-fun b!5001936 () Bool)

(declare-fun nullableZipper!877 ((InoxSet Context!6428)) Bool)

(assert (=> b!5001936 (= e!3125666 (nullableZipper!877 z!4183))))

(declare-fun b!5001937 () Bool)

(declare-fun derivationStepZipper!626 ((InoxSet Context!6428) C!27828) (InoxSet Context!6428))

(assert (=> b!5001937 (= e!3125666 (matchZipper!557 (derivationStepZipper!626 z!4183 (head!10726 (take!648 (drop!2452 lt!2069384 lt!2069367) lt!2069363))) (tail!9859 (take!648 (drop!2452 lt!2069384 lt!2069367) lt!2069363))))))

(assert (= (and d!1610039 c!853646) b!5001936))

(assert (= (and d!1610039 (not c!853646)) b!5001937))

(assert (=> d!1610039 m!6035522))

(declare-fun m!6035752 () Bool)

(assert (=> d!1610039 m!6035752))

(declare-fun m!6035754 () Bool)

(assert (=> b!5001936 m!6035754))

(assert (=> b!5001937 m!6035522))

(declare-fun m!6035756 () Bool)

(assert (=> b!5001937 m!6035756))

(assert (=> b!5001937 m!6035756))

(declare-fun m!6035760 () Bool)

(assert (=> b!5001937 m!6035760))

(assert (=> b!5001937 m!6035522))

(declare-fun m!6035762 () Bool)

(assert (=> b!5001937 m!6035762))

(assert (=> b!5001937 m!6035760))

(assert (=> b!5001937 m!6035762))

(declare-fun m!6035768 () Bool)

(assert (=> b!5001937 m!6035768))

(assert (=> b!5001763 d!1610039))

(declare-fun b!5001956 () Bool)

(declare-fun e!3125678 () Int)

(assert (=> b!5001956 (= e!3125678 lt!2069363)))

(declare-fun b!5001957 () Bool)

(declare-fun e!3125680 () Int)

(assert (=> b!5001957 (= e!3125680 0)))

(declare-fun d!1610047 () Bool)

(declare-fun e!3125679 () Bool)

(assert (=> d!1610047 e!3125679))

(declare-fun res!2134369 () Bool)

(assert (=> d!1610047 (=> (not res!2134369) (not e!3125679))))

(declare-fun lt!2069487 () List!57971)

(assert (=> d!1610047 (= res!2134369 (= ((_ map implies) (content!10238 lt!2069487) (content!10238 (drop!2452 lt!2069384 lt!2069367))) ((as const (InoxSet C!27828)) true)))))

(declare-fun e!3125677 () List!57971)

(assert (=> d!1610047 (= lt!2069487 e!3125677)))

(declare-fun c!853655 () Bool)

(assert (=> d!1610047 (= c!853655 (or ((_ is Nil!57847) (drop!2452 lt!2069384 lt!2069367)) (<= lt!2069363 0)))))

(assert (=> d!1610047 (= (take!648 (drop!2452 lt!2069384 lt!2069367) lt!2069363) lt!2069487)))

(declare-fun b!5001958 () Bool)

(assert (=> b!5001958 (= e!3125677 Nil!57847)))

(declare-fun b!5001959 () Bool)

(assert (=> b!5001959 (= e!3125679 (= (size!38447 lt!2069487) e!3125680))))

(declare-fun c!853654 () Bool)

(assert (=> b!5001959 (= c!853654 (<= lt!2069363 0))))

(declare-fun b!5001960 () Bool)

(assert (=> b!5001960 (= e!3125677 (Cons!57847 (h!64295 (drop!2452 lt!2069384 lt!2069367)) (take!648 (t!370317 (drop!2452 lt!2069384 lt!2069367)) (- lt!2069363 1))))))

(declare-fun b!5001961 () Bool)

(assert (=> b!5001961 (= e!3125678 (size!38447 (drop!2452 lt!2069384 lt!2069367)))))

(declare-fun b!5001962 () Bool)

(assert (=> b!5001962 (= e!3125680 e!3125678)))

(declare-fun c!853656 () Bool)

(assert (=> b!5001962 (= c!853656 (>= lt!2069363 (size!38447 (drop!2452 lt!2069384 lt!2069367))))))

(assert (= (and d!1610047 c!853655) b!5001958))

(assert (= (and d!1610047 (not c!853655)) b!5001960))

(assert (= (and d!1610047 res!2134369) b!5001959))

(assert (= (and b!5001959 c!853654) b!5001957))

(assert (= (and b!5001959 (not c!853654)) b!5001962))

(assert (= (and b!5001962 c!853656) b!5001961))

(assert (= (and b!5001962 (not c!853656)) b!5001956))

(declare-fun m!6035790 () Bool)

(assert (=> b!5001960 m!6035790))

(assert (=> b!5001962 m!6035490))

(declare-fun m!6035792 () Bool)

(assert (=> b!5001962 m!6035792))

(declare-fun m!6035794 () Bool)

(assert (=> b!5001959 m!6035794))

(assert (=> b!5001961 m!6035490))

(assert (=> b!5001961 m!6035792))

(declare-fun m!6035796 () Bool)

(assert (=> d!1610047 m!6035796))

(assert (=> d!1610047 m!6035490))

(declare-fun m!6035798 () Bool)

(assert (=> d!1610047 m!6035798))

(assert (=> b!5001763 d!1610047))

(declare-fun b!5001981 () Bool)

(declare-fun e!3125694 () List!57971)

(assert (=> b!5001981 (= e!3125694 Nil!57847)))

(declare-fun b!5001982 () Bool)

(declare-fun e!3125695 () Int)

(declare-fun call!349076 () Int)

(assert (=> b!5001982 (= e!3125695 call!349076)))

(declare-fun b!5001983 () Bool)

(declare-fun e!3125691 () List!57971)

(assert (=> b!5001983 (= e!3125691 lt!2069384)))

(declare-fun b!5001985 () Bool)

(declare-fun e!3125692 () Bool)

(declare-fun lt!2069496 () List!57971)

(assert (=> b!5001985 (= e!3125692 (= (size!38447 lt!2069496) e!3125695))))

(declare-fun c!853665 () Bool)

(assert (=> b!5001985 (= c!853665 (<= lt!2069367 0))))

(declare-fun bm!349071 () Bool)

(assert (=> bm!349071 (= call!349076 (size!38447 lt!2069384))))

(declare-fun b!5001986 () Bool)

(declare-fun e!3125693 () Int)

(assert (=> b!5001986 (= e!3125693 0)))

(declare-fun b!5001987 () Bool)

(assert (=> b!5001987 (= e!3125691 (drop!2452 (t!370317 lt!2069384) (- lt!2069367 1)))))

(declare-fun d!1610055 () Bool)

(assert (=> d!1610055 e!3125692))

(declare-fun res!2134372 () Bool)

(assert (=> d!1610055 (=> (not res!2134372) (not e!3125692))))

(assert (=> d!1610055 (= res!2134372 (= ((_ map implies) (content!10238 lt!2069496) (content!10238 lt!2069384)) ((as const (InoxSet C!27828)) true)))))

(assert (=> d!1610055 (= lt!2069496 e!3125694)))

(declare-fun c!853667 () Bool)

(assert (=> d!1610055 (= c!853667 ((_ is Nil!57847) lt!2069384))))

(assert (=> d!1610055 (= (drop!2452 lt!2069384 lt!2069367) lt!2069496)))

(declare-fun b!5001984 () Bool)

(assert (=> b!5001984 (= e!3125694 e!3125691)))

(declare-fun c!853666 () Bool)

(assert (=> b!5001984 (= c!853666 (<= lt!2069367 0))))

(declare-fun b!5001988 () Bool)

(assert (=> b!5001988 (= e!3125695 e!3125693)))

(declare-fun c!853668 () Bool)

(assert (=> b!5001988 (= c!853668 (>= lt!2069367 call!349076))))

(declare-fun b!5001989 () Bool)

(assert (=> b!5001989 (= e!3125693 (- call!349076 lt!2069367))))

(assert (= (and d!1610055 c!853667) b!5001981))

(assert (= (and d!1610055 (not c!853667)) b!5001984))

(assert (= (and b!5001984 c!853666) b!5001983))

(assert (= (and b!5001984 (not c!853666)) b!5001987))

(assert (= (and d!1610055 res!2134372) b!5001985))

(assert (= (and b!5001985 c!853665) b!5001982))

(assert (= (and b!5001985 (not c!853665)) b!5001988))

(assert (= (and b!5001988 c!853668) b!5001986))

(assert (= (and b!5001988 (not c!853668)) b!5001989))

(assert (= (or b!5001982 b!5001988 b!5001989) bm!349071))

(declare-fun m!6035812 () Bool)

(assert (=> b!5001985 m!6035812))

(assert (=> bm!349071 m!6035592))

(declare-fun m!6035814 () Bool)

(assert (=> b!5001987 m!6035814))

(declare-fun m!6035816 () Bool)

(assert (=> d!1610055 m!6035816))

(declare-fun m!6035818 () Bool)

(assert (=> d!1610055 m!6035818))

(assert (=> b!5001763 d!1610055))

(declare-fun d!1610059 () Bool)

(assert (=> d!1610059 (= (isEmpty!31315 (_1!34799 lt!2069388)) ((_ is Nil!57847) (_1!34799 lt!2069388)))))

(assert (=> b!5001754 d!1610059))

(declare-fun b!5001990 () Bool)

(declare-fun e!3125696 () Bool)

(declare-fun e!3125697 () Bool)

(assert (=> b!5001990 (= e!3125696 e!3125697)))

(declare-fun res!2134374 () Bool)

(assert (=> b!5001990 (=> (not res!2134374) (not e!3125697))))

(assert (=> b!5001990 (= res!2134374 (not ((_ is Nil!57847) lt!2069368)))))

(declare-fun b!5001991 () Bool)

(declare-fun res!2134373 () Bool)

(assert (=> b!5001991 (=> (not res!2134373) (not e!3125697))))

(assert (=> b!5001991 (= res!2134373 (= (head!10726 lt!2069371) (head!10726 lt!2069368)))))

(declare-fun b!5001993 () Bool)

(declare-fun e!3125698 () Bool)

(assert (=> b!5001993 (= e!3125698 (>= (size!38447 lt!2069368) (size!38447 lt!2069371)))))

(declare-fun d!1610061 () Bool)

(assert (=> d!1610061 e!3125698))

(declare-fun res!2134376 () Bool)

(assert (=> d!1610061 (=> res!2134376 e!3125698)))

(declare-fun lt!2069497 () Bool)

(assert (=> d!1610061 (= res!2134376 (not lt!2069497))))

(assert (=> d!1610061 (= lt!2069497 e!3125696)))

(declare-fun res!2134375 () Bool)

(assert (=> d!1610061 (=> res!2134375 e!3125696)))

(assert (=> d!1610061 (= res!2134375 ((_ is Nil!57847) lt!2069371))))

(assert (=> d!1610061 (= (isPrefix!5342 lt!2069371 lt!2069368) lt!2069497)))

(declare-fun b!5001992 () Bool)

(assert (=> b!5001992 (= e!3125697 (isPrefix!5342 (tail!9859 lt!2069371) (tail!9859 lt!2069368)))))

(assert (= (and d!1610061 (not res!2134375)) b!5001990))

(assert (= (and b!5001990 res!2134374) b!5001991))

(assert (= (and b!5001991 res!2134373) b!5001992))

(assert (= (and d!1610061 (not res!2134376)) b!5001993))

(declare-fun m!6035820 () Bool)

(assert (=> b!5001991 m!6035820))

(assert (=> b!5001991 m!6035584))

(assert (=> b!5001993 m!6035494))

(assert (=> b!5001993 m!6035528))

(declare-fun m!6035822 () Bool)

(assert (=> b!5001992 m!6035822))

(assert (=> b!5001992 m!6035588))

(assert (=> b!5001992 m!6035822))

(assert (=> b!5001992 m!6035588))

(declare-fun m!6035824 () Bool)

(assert (=> b!5001992 m!6035824))

(assert (=> b!5001744 d!1610061))

(declare-fun b!5001994 () Bool)

(declare-fun e!3125699 () Bool)

(declare-fun e!3125700 () Bool)

(assert (=> b!5001994 (= e!3125699 e!3125700)))

(declare-fun res!2134378 () Bool)

(assert (=> b!5001994 (=> (not res!2134378) (not e!3125700))))

(assert (=> b!5001994 (= res!2134378 (not ((_ is Nil!57847) lt!2069368)))))

(declare-fun b!5001995 () Bool)

(declare-fun res!2134377 () Bool)

(assert (=> b!5001995 (=> (not res!2134377) (not e!3125700))))

(assert (=> b!5001995 (= res!2134377 (= (head!10726 (take!648 lt!2069368 lt!2069380)) (head!10726 lt!2069368)))))

(declare-fun b!5001997 () Bool)

(declare-fun e!3125701 () Bool)

(assert (=> b!5001997 (= e!3125701 (>= (size!38447 lt!2069368) (size!38447 (take!648 lt!2069368 lt!2069380))))))

(declare-fun d!1610063 () Bool)

(assert (=> d!1610063 e!3125701))

(declare-fun res!2134380 () Bool)

(assert (=> d!1610063 (=> res!2134380 e!3125701)))

(declare-fun lt!2069500 () Bool)

(assert (=> d!1610063 (= res!2134380 (not lt!2069500))))

(assert (=> d!1610063 (= lt!2069500 e!3125699)))

(declare-fun res!2134379 () Bool)

(assert (=> d!1610063 (=> res!2134379 e!3125699)))

(assert (=> d!1610063 (= res!2134379 ((_ is Nil!57847) (take!648 lt!2069368 lt!2069380)))))

(assert (=> d!1610063 (= (isPrefix!5342 (take!648 lt!2069368 lt!2069380) lt!2069368) lt!2069500)))

(declare-fun b!5001996 () Bool)

(assert (=> b!5001996 (= e!3125700 (isPrefix!5342 (tail!9859 (take!648 lt!2069368 lt!2069380)) (tail!9859 lt!2069368)))))

(assert (= (and d!1610063 (not res!2134379)) b!5001994))

(assert (= (and b!5001994 res!2134378) b!5001995))

(assert (= (and b!5001995 res!2134377) b!5001996))

(assert (= (and d!1610063 (not res!2134380)) b!5001997))

(assert (=> b!5001995 m!6035570))

(declare-fun m!6035826 () Bool)

(assert (=> b!5001995 m!6035826))

(assert (=> b!5001995 m!6035584))

(assert (=> b!5001997 m!6035494))

(assert (=> b!5001997 m!6035570))

(declare-fun m!6035828 () Bool)

(assert (=> b!5001997 m!6035828))

(assert (=> b!5001996 m!6035570))

(declare-fun m!6035830 () Bool)

(assert (=> b!5001996 m!6035830))

(assert (=> b!5001996 m!6035588))

(assert (=> b!5001996 m!6035830))

(assert (=> b!5001996 m!6035588))

(declare-fun m!6035832 () Bool)

(assert (=> b!5001996 m!6035832))

(assert (=> b!5001744 d!1610063))

(declare-fun b!5001998 () Bool)

(declare-fun e!3125703 () Int)

(assert (=> b!5001998 (= e!3125703 lt!2069380)))

(declare-fun b!5001999 () Bool)

(declare-fun e!3125705 () Int)

(assert (=> b!5001999 (= e!3125705 0)))

(declare-fun d!1610065 () Bool)

(declare-fun e!3125704 () Bool)

(assert (=> d!1610065 e!3125704))

(declare-fun res!2134381 () Bool)

(assert (=> d!1610065 (=> (not res!2134381) (not e!3125704))))

(declare-fun lt!2069502 () List!57971)

(assert (=> d!1610065 (= res!2134381 (= ((_ map implies) (content!10238 lt!2069502) (content!10238 lt!2069368)) ((as const (InoxSet C!27828)) true)))))

(declare-fun e!3125702 () List!57971)

(assert (=> d!1610065 (= lt!2069502 e!3125702)))

(declare-fun c!853670 () Bool)

(assert (=> d!1610065 (= c!853670 (or ((_ is Nil!57847) lt!2069368) (<= lt!2069380 0)))))

(assert (=> d!1610065 (= (take!648 lt!2069368 lt!2069380) lt!2069502)))

(declare-fun b!5002000 () Bool)

(assert (=> b!5002000 (= e!3125702 Nil!57847)))

(declare-fun b!5002001 () Bool)

(assert (=> b!5002001 (= e!3125704 (= (size!38447 lt!2069502) e!3125705))))

(declare-fun c!853669 () Bool)

(assert (=> b!5002001 (= c!853669 (<= lt!2069380 0))))

(declare-fun b!5002002 () Bool)

(assert (=> b!5002002 (= e!3125702 (Cons!57847 (h!64295 lt!2069368) (take!648 (t!370317 lt!2069368) (- lt!2069380 1))))))

(declare-fun b!5002003 () Bool)

(assert (=> b!5002003 (= e!3125703 (size!38447 lt!2069368))))

(declare-fun b!5002004 () Bool)

(assert (=> b!5002004 (= e!3125705 e!3125703)))

(declare-fun c!853671 () Bool)

(assert (=> b!5002004 (= c!853671 (>= lt!2069380 (size!38447 lt!2069368)))))

(assert (= (and d!1610065 c!853670) b!5002000))

(assert (= (and d!1610065 (not c!853670)) b!5002002))

(assert (= (and d!1610065 res!2134381) b!5002001))

(assert (= (and b!5002001 c!853669) b!5001999))

(assert (= (and b!5002001 (not c!853669)) b!5002004))

(assert (= (and b!5002004 c!853671) b!5002003))

(assert (= (and b!5002004 (not c!853671)) b!5001998))

(declare-fun m!6035838 () Bool)

(assert (=> b!5002002 m!6035838))

(assert (=> b!5002004 m!6035494))

(declare-fun m!6035840 () Bool)

(assert (=> b!5002001 m!6035840))

(assert (=> b!5002003 m!6035494))

(declare-fun m!6035842 () Bool)

(assert (=> d!1610065 m!6035842))

(declare-fun m!6035844 () Bool)

(assert (=> d!1610065 m!6035844))

(assert (=> b!5001744 d!1610065))

(declare-fun d!1610069 () Bool)

(assert (=> d!1610069 (isPrefix!5342 (take!648 lt!2069368 lt!2069380) lt!2069368)))

(declare-fun lt!2069505 () Unit!149005)

(declare-fun choose!36970 (List!57971 Int) Unit!149005)

(assert (=> d!1610069 (= lt!2069505 (choose!36970 lt!2069368 lt!2069380))))

(assert (=> d!1610069 (>= lt!2069380 0)))

(assert (=> d!1610069 (= (lemmaTakeIsPrefix!142 lt!2069368 lt!2069380) lt!2069505)))

(declare-fun bs!1185799 () Bool)

(assert (= bs!1185799 d!1610069))

(assert (=> bs!1185799 m!6035570))

(assert (=> bs!1185799 m!6035570))

(assert (=> bs!1185799 m!6035572))

(declare-fun m!6035846 () Bool)

(assert (=> bs!1185799 m!6035846))

(assert (=> b!5001744 d!1610069))

(declare-fun b!5002055 () Bool)

(declare-fun e!3125743 () Int)

(assert (=> b!5002055 (= e!3125743 0)))

(declare-fun b!5002056 () Bool)

(declare-fun e!3125745 () Int)

(assert (=> b!5002056 (= e!3125743 e!3125745)))

(declare-fun lt!2069517 () (InoxSet Context!6428))

(declare-fun apply!13983 (BalanceConc!30046 Int) C!27828)

(assert (=> b!5002056 (= lt!2069517 (derivationStepZipper!626 z!4183 (apply!13983 totalInput!1012 lt!2069367)))))

(declare-fun lt!2069516 () Int)

(assert (=> b!5002056 (= lt!2069516 (findLongestMatchInnerZipperFastV2!129 lt!2069517 (+ lt!2069367 1) totalInput!1012 lt!2069366))))

(declare-fun c!853685 () Bool)

(assert (=> b!5002056 (= c!853685 (> lt!2069516 0))))

(declare-fun b!5002057 () Bool)

(declare-fun e!3125744 () Bool)

(declare-fun lostCauseZipper!823 ((InoxSet Context!6428)) Bool)

(assert (=> b!5002057 (= e!3125744 (lostCauseZipper!823 z!4183))))

(declare-fun b!5002058 () Bool)

(declare-fun c!853684 () Bool)

(assert (=> b!5002058 (= c!853684 (nullableZipper!877 lt!2069517))))

(declare-fun e!3125746 () Int)

(assert (=> b!5002058 (= e!3125745 e!3125746)))

(declare-fun b!5002059 () Bool)

(assert (=> b!5002059 (= e!3125746 0)))

(declare-fun b!5002061 () Bool)

(assert (=> b!5002061 (= e!3125746 1)))

(declare-fun b!5002062 () Bool)

(declare-fun e!3125747 () Bool)

(assert (=> b!5002062 (= e!3125747 (<= lt!2069367 (size!38446 totalInput!1012)))))

(declare-fun d!1610071 () Bool)

(declare-fun lt!2069518 () Int)

(assert (=> d!1610071 (and (>= lt!2069518 0) (<= lt!2069518 (- lt!2069366 lt!2069367)))))

(assert (=> d!1610071 (= lt!2069518 e!3125743)))

(declare-fun c!853686 () Bool)

(assert (=> d!1610071 (= c!853686 e!3125744)))

(declare-fun res!2134408 () Bool)

(assert (=> d!1610071 (=> res!2134408 e!3125744)))

(assert (=> d!1610071 (= res!2134408 (= lt!2069367 lt!2069366))))

(assert (=> d!1610071 e!3125747))

(declare-fun res!2134409 () Bool)

(assert (=> d!1610071 (=> (not res!2134409) (not e!3125747))))

(assert (=> d!1610071 (= res!2134409 (>= lt!2069367 0))))

(assert (=> d!1610071 (= (findLongestMatchInnerZipperFastV2!129 z!4183 lt!2069367 totalInput!1012 lt!2069366) lt!2069518)))

(declare-fun b!5002060 () Bool)

(assert (=> b!5002060 (= e!3125745 (+ 1 lt!2069516))))

(assert (= (and d!1610071 res!2134409) b!5002062))

(assert (= (and d!1610071 (not res!2134408)) b!5002057))

(assert (= (and d!1610071 c!853686) b!5002055))

(assert (= (and d!1610071 (not c!853686)) b!5002056))

(assert (= (and b!5002056 c!853685) b!5002060))

(assert (= (and b!5002056 (not c!853685)) b!5002058))

(assert (= (and b!5002058 c!853684) b!5002061))

(assert (= (and b!5002058 (not c!853684)) b!5002059))

(declare-fun m!6035872 () Bool)

(assert (=> b!5002056 m!6035872))

(assert (=> b!5002056 m!6035872))

(declare-fun m!6035874 () Bool)

(assert (=> b!5002056 m!6035874))

(declare-fun m!6035876 () Bool)

(assert (=> b!5002056 m!6035876))

(declare-fun m!6035878 () Bool)

(assert (=> b!5002057 m!6035878))

(declare-fun m!6035880 () Bool)

(assert (=> b!5002058 m!6035880))

(assert (=> b!5002062 m!6035554))

(assert (=> b!5001756 d!1610071))

(declare-fun d!1610087 () Bool)

(assert (=> d!1610087 (isPrefix!5342 (_1!34799 lt!2069388) (++!12635 (_1!34799 lt!2069388) (_2!34799 lt!2069388)))))

(declare-fun lt!2069521 () Unit!149005)

(declare-fun choose!36971 (List!57971 List!57971) Unit!149005)

(assert (=> d!1610087 (= lt!2069521 (choose!36971 (_1!34799 lt!2069388) (_2!34799 lt!2069388)))))

(assert (=> d!1610087 (= (lemmaConcatTwoListThenFirstIsPrefix!3440 (_1!34799 lt!2069388) (_2!34799 lt!2069388)) lt!2069521)))

(declare-fun bs!1185804 () Bool)

(assert (= bs!1185804 d!1610087))

(assert (=> bs!1185804 m!6035486))

(assert (=> bs!1185804 m!6035486))

(declare-fun m!6035882 () Bool)

(assert (=> bs!1185804 m!6035882))

(declare-fun m!6035884 () Bool)

(assert (=> bs!1185804 m!6035884))

(assert (=> b!5001756 d!1610087))

(declare-fun d!1610089 () Bool)

(declare-fun e!3125756 () Bool)

(assert (=> d!1610089 e!3125756))

(declare-fun res!2134418 () Bool)

(assert (=> d!1610089 (=> res!2134418 e!3125756)))

(assert (=> d!1610089 (= res!2134418 (isEmpty!31315 (_1!34799 (findLongestMatchInner!1978 r!12727 Nil!57847 (size!38447 Nil!57847) lt!2069368 lt!2069368 (size!38447 lt!2069368)))))))

(declare-fun lt!2069529 () Unit!149005)

(declare-fun choose!36972 (Regex!13789 List!57971) Unit!149005)

(assert (=> d!1610089 (= lt!2069529 (choose!36972 r!12727 lt!2069368))))

(assert (=> d!1610089 (validRegex!6086 r!12727)))

(assert (=> d!1610089 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1931 r!12727 lt!2069368) lt!2069529)))

(declare-fun b!5002071 () Bool)

(assert (=> b!5002071 (= e!3125756 (matchR!6753 r!12727 (_1!34799 (findLongestMatchInner!1978 r!12727 Nil!57847 (size!38447 Nil!57847) lt!2069368 lt!2069368 (size!38447 lt!2069368)))))))

(assert (= (and d!1610089 (not res!2134418)) b!5002071))

(assert (=> d!1610089 m!6035506))

(assert (=> d!1610089 m!6035506))

(assert (=> d!1610089 m!6035494))

(assert (=> d!1610089 m!6035508))

(assert (=> d!1610089 m!6035538))

(declare-fun m!6035896 () Bool)

(assert (=> d!1610089 m!6035896))

(assert (=> d!1610089 m!6035494))

(declare-fun m!6035898 () Bool)

(assert (=> d!1610089 m!6035898))

(assert (=> b!5002071 m!6035506))

(assert (=> b!5002071 m!6035494))

(assert (=> b!5002071 m!6035506))

(assert (=> b!5002071 m!6035494))

(assert (=> b!5002071 m!6035508))

(declare-fun m!6035900 () Bool)

(assert (=> b!5002071 m!6035900))

(assert (=> b!5001756 d!1610089))

(declare-fun d!1610093 () Bool)

(declare-fun lt!2069536 () Int)

(assert (=> d!1610093 (>= lt!2069536 0)))

(declare-fun e!3125764 () Int)

(assert (=> d!1610093 (= lt!2069536 e!3125764)))

(declare-fun c!853691 () Bool)

(assert (=> d!1610093 (= c!853691 ((_ is Nil!57847) lt!2069368))))

(assert (=> d!1610093 (= (size!38447 lt!2069368) lt!2069536)))

(declare-fun b!5002084 () Bool)

(assert (=> b!5002084 (= e!3125764 0)))

(declare-fun b!5002085 () Bool)

(assert (=> b!5002085 (= e!3125764 (+ 1 (size!38447 (t!370317 lt!2069368))))))

(assert (= (and d!1610093 c!853691) b!5002084))

(assert (= (and d!1610093 (not c!853691)) b!5002085))

(declare-fun m!6035924 () Bool)

(assert (=> b!5002085 m!6035924))

(assert (=> b!5001756 d!1610093))

(declare-fun d!1610105 () Bool)

(declare-fun e!3125770 () Bool)

(assert (=> d!1610105 e!3125770))

(declare-fun res!2134428 () Bool)

(assert (=> d!1610105 (=> res!2134428 e!3125770)))

(assert (=> d!1610105 (= res!2134428 (= (findLongestMatchInnerZipperFastV2!129 z!4183 lt!2069367 totalInput!1012 (size!38446 totalInput!1012)) 0))))

(declare-fun lt!2069539 () Unit!149005)

(declare-fun choose!36973 ((InoxSet Context!6428) Int BalanceConc!30046) Unit!149005)

(assert (=> d!1610105 (= lt!2069539 (choose!36973 z!4183 lt!2069367 totalInput!1012))))

(declare-fun e!3125769 () Bool)

(assert (=> d!1610105 e!3125769))

(declare-fun res!2134427 () Bool)

(assert (=> d!1610105 (=> (not res!2134427) (not e!3125769))))

(assert (=> d!1610105 (= res!2134427 (>= lt!2069367 0))))

(assert (=> d!1610105 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!48 z!4183 lt!2069367 totalInput!1012) lt!2069539)))

(declare-fun b!5002090 () Bool)

(assert (=> b!5002090 (= e!3125769 (<= lt!2069367 (size!38446 totalInput!1012)))))

(declare-fun b!5002091 () Bool)

(assert (=> b!5002091 (= e!3125770 (matchZipper!557 z!4183 (take!648 (drop!2452 (list!18612 totalInput!1012) lt!2069367) (findLongestMatchInnerZipperFastV2!129 z!4183 lt!2069367 totalInput!1012 (size!38446 totalInput!1012)))))))

(assert (= (and d!1610105 res!2134427) b!5002090))

(assert (= (and d!1610105 (not res!2134428)) b!5002091))

(assert (=> d!1610105 m!6035554))

(assert (=> d!1610105 m!6035554))

(declare-fun m!6035926 () Bool)

(assert (=> d!1610105 m!6035926))

(declare-fun m!6035928 () Bool)

(assert (=> d!1610105 m!6035928))

(assert (=> b!5002090 m!6035554))

(assert (=> b!5002091 m!6035564))

(assert (=> b!5002091 m!6035554))

(assert (=> b!5002091 m!6035926))

(declare-fun m!6035930 () Bool)

(assert (=> b!5002091 m!6035930))

(declare-fun m!6035932 () Bool)

(assert (=> b!5002091 m!6035932))

(assert (=> b!5002091 m!6035554))

(assert (=> b!5002091 m!6035564))

(declare-fun m!6035934 () Bool)

(assert (=> b!5002091 m!6035934))

(assert (=> b!5002091 m!6035934))

(assert (=> b!5002091 m!6035926))

(assert (=> b!5002091 m!6035930))

(assert (=> b!5001756 d!1610105))

(declare-fun b!5002092 () Bool)

(declare-fun e!3125771 () Bool)

(declare-fun e!3125772 () Bool)

(assert (=> b!5002092 (= e!3125771 e!3125772)))

(declare-fun res!2134430 () Bool)

(assert (=> b!5002092 (=> (not res!2134430) (not e!3125772))))

(assert (=> b!5002092 (= res!2134430 (not ((_ is Nil!57847) lt!2069384)))))

(declare-fun b!5002093 () Bool)

(declare-fun res!2134429 () Bool)

(assert (=> b!5002093 (=> (not res!2134429) (not e!3125772))))

(assert (=> b!5002093 (= res!2134429 (= (head!10726 (take!648 lt!2069384 lt!2069367)) (head!10726 lt!2069384)))))

(declare-fun b!5002095 () Bool)

(declare-fun e!3125773 () Bool)

(assert (=> b!5002095 (= e!3125773 (>= (size!38447 lt!2069384) (size!38447 (take!648 lt!2069384 lt!2069367))))))

(declare-fun d!1610107 () Bool)

(assert (=> d!1610107 e!3125773))

(declare-fun res!2134432 () Bool)

(assert (=> d!1610107 (=> res!2134432 e!3125773)))

(declare-fun lt!2069540 () Bool)

(assert (=> d!1610107 (= res!2134432 (not lt!2069540))))

(assert (=> d!1610107 (= lt!2069540 e!3125771)))

(declare-fun res!2134431 () Bool)

(assert (=> d!1610107 (=> res!2134431 e!3125771)))

(assert (=> d!1610107 (= res!2134431 ((_ is Nil!57847) (take!648 lt!2069384 lt!2069367)))))

(assert (=> d!1610107 (= (isPrefix!5342 (take!648 lt!2069384 lt!2069367) lt!2069384) lt!2069540)))

(declare-fun b!5002094 () Bool)

(assert (=> b!5002094 (= e!3125772 (isPrefix!5342 (tail!9859 (take!648 lt!2069384 lt!2069367)) (tail!9859 lt!2069384)))))

(assert (= (and d!1610107 (not res!2134431)) b!5002092))

(assert (= (and b!5002092 res!2134430) b!5002093))

(assert (= (and b!5002093 res!2134429) b!5002094))

(assert (= (and d!1610107 (not res!2134432)) b!5002095))

(assert (=> b!5002093 m!6035512))

(declare-fun m!6035936 () Bool)

(assert (=> b!5002093 m!6035936))

(declare-fun m!6035938 () Bool)

(assert (=> b!5002093 m!6035938))

(assert (=> b!5002095 m!6035592))

(assert (=> b!5002095 m!6035512))

(declare-fun m!6035940 () Bool)

(assert (=> b!5002095 m!6035940))

(assert (=> b!5002094 m!6035512))

(declare-fun m!6035942 () Bool)

(assert (=> b!5002094 m!6035942))

(declare-fun m!6035944 () Bool)

(assert (=> b!5002094 m!6035944))

(assert (=> b!5002094 m!6035942))

(assert (=> b!5002094 m!6035944))

(declare-fun m!6035946 () Bool)

(assert (=> b!5002094 m!6035946))

(assert (=> b!5001756 d!1610107))

(declare-fun b!5002096 () Bool)

(declare-fun e!3125774 () Bool)

(declare-fun e!3125775 () Bool)

(assert (=> b!5002096 (= e!3125774 e!3125775)))

(declare-fun res!2134434 () Bool)

(assert (=> b!5002096 (=> (not res!2134434) (not e!3125775))))

(assert (=> b!5002096 (= res!2134434 (not ((_ is Nil!57847) lt!2069381)))))

(declare-fun b!5002097 () Bool)

(declare-fun res!2134433 () Bool)

(assert (=> b!5002097 (=> (not res!2134433) (not e!3125775))))

(assert (=> b!5002097 (= res!2134433 (= (head!10726 (_1!34799 lt!2069388)) (head!10726 lt!2069381)))))

(declare-fun b!5002099 () Bool)

(declare-fun e!3125776 () Bool)

(assert (=> b!5002099 (= e!3125776 (>= (size!38447 lt!2069381) (size!38447 (_1!34799 lt!2069388))))))

(declare-fun d!1610109 () Bool)

(assert (=> d!1610109 e!3125776))

(declare-fun res!2134436 () Bool)

(assert (=> d!1610109 (=> res!2134436 e!3125776)))

(declare-fun lt!2069541 () Bool)

(assert (=> d!1610109 (= res!2134436 (not lt!2069541))))

(assert (=> d!1610109 (= lt!2069541 e!3125774)))

(declare-fun res!2134435 () Bool)

(assert (=> d!1610109 (=> res!2134435 e!3125774)))

(assert (=> d!1610109 (= res!2134435 ((_ is Nil!57847) (_1!34799 lt!2069388)))))

(assert (=> d!1610109 (= (isPrefix!5342 (_1!34799 lt!2069388) lt!2069381) lt!2069541)))

(declare-fun b!5002098 () Bool)

(assert (=> b!5002098 (= e!3125775 (isPrefix!5342 (tail!9859 (_1!34799 lt!2069388)) (tail!9859 lt!2069381)))))

(assert (= (and d!1610109 (not res!2134435)) b!5002096))

(assert (= (and b!5002096 res!2134434) b!5002097))

(assert (= (and b!5002097 res!2134433) b!5002098))

(assert (= (and d!1610109 (not res!2134436)) b!5002099))

(assert (=> b!5002097 m!6035582))

(declare-fun m!6035948 () Bool)

(assert (=> b!5002097 m!6035948))

(declare-fun m!6035950 () Bool)

(assert (=> b!5002099 m!6035950))

(assert (=> b!5002099 m!6035478))

(assert (=> b!5002098 m!6035586))

(declare-fun m!6035952 () Bool)

(assert (=> b!5002098 m!6035952))

(assert (=> b!5002098 m!6035586))

(assert (=> b!5002098 m!6035952))

(declare-fun m!6035954 () Bool)

(assert (=> b!5002098 m!6035954))

(assert (=> b!5001756 d!1610109))

(declare-fun d!1610111 () Bool)

(declare-fun c!853692 () Bool)

(assert (=> d!1610111 (= c!853692 (isEmpty!31315 lt!2069382))))

(declare-fun e!3125777 () Bool)

(assert (=> d!1610111 (= (matchZipper!557 z!4183 lt!2069382) e!3125777)))

(declare-fun b!5002100 () Bool)

(assert (=> b!5002100 (= e!3125777 (nullableZipper!877 z!4183))))

(declare-fun b!5002101 () Bool)

(assert (=> b!5002101 (= e!3125777 (matchZipper!557 (derivationStepZipper!626 z!4183 (head!10726 lt!2069382)) (tail!9859 lt!2069382)))))

(assert (= (and d!1610111 c!853692) b!5002100))

(assert (= (and d!1610111 (not c!853692)) b!5002101))

(declare-fun m!6035956 () Bool)

(assert (=> d!1610111 m!6035956))

(assert (=> b!5002100 m!6035754))

(declare-fun m!6035958 () Bool)

(assert (=> b!5002101 m!6035958))

(assert (=> b!5002101 m!6035958))

(declare-fun m!6035960 () Bool)

(assert (=> b!5002101 m!6035960))

(declare-fun m!6035962 () Bool)

(assert (=> b!5002101 m!6035962))

(assert (=> b!5002101 m!6035960))

(assert (=> b!5002101 m!6035962))

(declare-fun m!6035964 () Bool)

(assert (=> b!5002101 m!6035964))

(assert (=> b!5001756 d!1610111))

(declare-fun b!5002158 () Bool)

(declare-fun e!3125811 () tuple2!62992)

(assert (=> b!5002158 (= e!3125811 (tuple2!62993 Nil!57847 lt!2069368))))

(declare-fun bm!349097 () Bool)

(declare-fun call!349109 () Bool)

(declare-fun nullable!4683 (Regex!13789) Bool)

(assert (=> bm!349097 (= call!349109 (nullable!4683 r!12727))))

(declare-fun b!5002159 () Bool)

(declare-fun e!3125814 () tuple2!62992)

(declare-fun e!3125818 () tuple2!62992)

(assert (=> b!5002159 (= e!3125814 e!3125818)))

(declare-fun lt!2069631 () tuple2!62992)

(declare-fun call!349107 () tuple2!62992)

(assert (=> b!5002159 (= lt!2069631 call!349107)))

(declare-fun c!853721 () Bool)

(assert (=> b!5002159 (= c!853721 (isEmpty!31315 (_1!34799 lt!2069631)))))

(declare-fun b!5002160 () Bool)

(assert (=> b!5002160 (= e!3125818 (tuple2!62993 Nil!57847 lt!2069368))))

(declare-fun b!5002161 () Bool)

(declare-fun e!3125816 () Bool)

(declare-fun lt!2069627 () tuple2!62992)

(assert (=> b!5002161 (= e!3125816 (>= (size!38447 (_1!34799 lt!2069627)) (size!38447 Nil!57847)))))

(declare-fun b!5002162 () Bool)

(declare-fun e!3125817 () Unit!149005)

(declare-fun Unit!149007 () Unit!149005)

(assert (=> b!5002162 (= e!3125817 Unit!149007)))

(declare-fun lt!2069647 () Unit!149005)

(declare-fun call!349105 () Unit!149005)

(assert (=> b!5002162 (= lt!2069647 call!349105)))

(declare-fun call!349102 () Bool)

(assert (=> b!5002162 call!349102))

(declare-fun lt!2069626 () Unit!149005)

(assert (=> b!5002162 (= lt!2069626 lt!2069647)))

(declare-fun lt!2069643 () Unit!149005)

(declare-fun call!349106 () Unit!149005)

(assert (=> b!5002162 (= lt!2069643 call!349106)))

(assert (=> b!5002162 (= lt!2069368 Nil!57847)))

(declare-fun lt!2069630 () Unit!149005)

(assert (=> b!5002162 (= lt!2069630 lt!2069643)))

(assert (=> b!5002162 false))

(declare-fun bm!349098 () Bool)

(declare-fun call!349103 () List!57971)

(assert (=> bm!349098 (= call!349103 (tail!9859 lt!2069368))))

(declare-fun b!5002163 () Bool)

(declare-fun c!853719 () Bool)

(assert (=> b!5002163 (= c!853719 call!349109)))

(declare-fun lt!2069628 () Unit!149005)

(declare-fun lt!2069622 () Unit!149005)

(assert (=> b!5002163 (= lt!2069628 lt!2069622)))

(declare-fun lt!2069625 () C!27828)

(declare-fun lt!2069636 () List!57971)

(assert (=> b!5002163 (= (++!12635 (++!12635 Nil!57847 (Cons!57847 lt!2069625 Nil!57847)) lt!2069636) lt!2069368)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1493 (List!57971 C!27828 List!57971 List!57971) Unit!149005)

(assert (=> b!5002163 (= lt!2069622 (lemmaMoveElementToOtherListKeepsConcatEq!1493 Nil!57847 lt!2069625 lt!2069636 lt!2069368))))

(assert (=> b!5002163 (= lt!2069636 (tail!9859 lt!2069368))))

(assert (=> b!5002163 (= lt!2069625 (head!10726 lt!2069368))))

(declare-fun lt!2069635 () Unit!149005)

(declare-fun lt!2069645 () Unit!149005)

(assert (=> b!5002163 (= lt!2069635 lt!2069645)))

(declare-fun getSuffix!3137 (List!57971 List!57971) List!57971)

(assert (=> b!5002163 (isPrefix!5342 (++!12635 Nil!57847 (Cons!57847 (head!10726 (getSuffix!3137 lt!2069368 Nil!57847)) Nil!57847)) lt!2069368)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!882 (List!57971 List!57971) Unit!149005)

(assert (=> b!5002163 (= lt!2069645 (lemmaAddHeadSuffixToPrefixStillPrefix!882 Nil!57847 lt!2069368))))

(declare-fun lt!2069634 () Unit!149005)

(declare-fun lt!2069629 () Unit!149005)

(assert (=> b!5002163 (= lt!2069634 lt!2069629)))

(assert (=> b!5002163 (= lt!2069629 (lemmaAddHeadSuffixToPrefixStillPrefix!882 Nil!57847 lt!2069368))))

(declare-fun lt!2069640 () List!57971)

(assert (=> b!5002163 (= lt!2069640 (++!12635 Nil!57847 (Cons!57847 (head!10726 lt!2069368) Nil!57847)))))

(declare-fun lt!2069648 () Unit!149005)

(assert (=> b!5002163 (= lt!2069648 e!3125817)))

(declare-fun c!853717 () Bool)

(assert (=> b!5002163 (= c!853717 (= (size!38447 Nil!57847) (size!38447 lt!2069368)))))

(declare-fun lt!2069633 () Unit!149005)

(declare-fun lt!2069637 () Unit!149005)

(assert (=> b!5002163 (= lt!2069633 lt!2069637)))

(assert (=> b!5002163 (<= (size!38447 Nil!57847) (size!38447 lt!2069368))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!808 (List!57971 List!57971) Unit!149005)

(assert (=> b!5002163 (= lt!2069637 (lemmaIsPrefixThenSmallerEqSize!808 Nil!57847 lt!2069368))))

(declare-fun e!3125812 () tuple2!62992)

(assert (=> b!5002163 (= e!3125812 e!3125814)))

(declare-fun bm!349099 () Bool)

(assert (=> bm!349099 (= call!349102 (isPrefix!5342 lt!2069368 lt!2069368))))

(declare-fun bm!349100 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1268 (List!57971 List!57971 List!57971) Unit!149005)

(assert (=> bm!349100 (= call!349106 (lemmaIsPrefixSameLengthThenSameList!1268 lt!2069368 Nil!57847 lt!2069368))))

(declare-fun b!5002169 () Bool)

(declare-fun Unit!149008 () Unit!149005)

(assert (=> b!5002169 (= e!3125817 Unit!149008)))

(declare-fun b!5002170 () Bool)

(assert (=> b!5002170 (= e!3125811 e!3125812)))

(declare-fun c!853718 () Bool)

(assert (=> b!5002170 (= c!853718 (= (size!38447 Nil!57847) (size!38447 lt!2069368)))))

(declare-fun b!5002171 () Bool)

(declare-fun c!853720 () Bool)

(assert (=> b!5002171 (= c!853720 call!349109)))

(declare-fun lt!2069638 () Unit!149005)

(declare-fun lt!2069639 () Unit!149005)

(assert (=> b!5002171 (= lt!2069638 lt!2069639)))

(assert (=> b!5002171 (= lt!2069368 Nil!57847)))

(assert (=> b!5002171 (= lt!2069639 call!349106)))

(declare-fun lt!2069646 () Unit!149005)

(declare-fun lt!2069623 () Unit!149005)

(assert (=> b!5002171 (= lt!2069646 lt!2069623)))

(assert (=> b!5002171 call!349102))

(assert (=> b!5002171 (= lt!2069623 call!349105)))

(declare-fun e!3125815 () tuple2!62992)

(assert (=> b!5002171 (= e!3125812 e!3125815)))

(declare-fun b!5002172 () Bool)

(assert (=> b!5002172 (= e!3125815 (tuple2!62993 Nil!57847 lt!2069368))))

(declare-fun call!349104 () Regex!13789)

(declare-fun bm!349101 () Bool)

(assert (=> bm!349101 (= call!349107 (findLongestMatchInner!1978 call!349104 lt!2069640 (+ (size!38447 Nil!57847) 1) call!349103 lt!2069368 (size!38447 lt!2069368)))))

(declare-fun bm!349102 () Bool)

(declare-fun call!349108 () C!27828)

(assert (=> bm!349102 (= call!349108 (head!10726 lt!2069368))))

(declare-fun b!5002173 () Bool)

(assert (=> b!5002173 (= e!3125818 lt!2069631)))

(declare-fun b!5002174 () Bool)

(assert (=> b!5002174 (= e!3125814 call!349107)))

(declare-fun bm!349103 () Bool)

(declare-fun derivativeStep!3973 (Regex!13789 C!27828) Regex!13789)

(assert (=> bm!349103 (= call!349104 (derivativeStep!3973 r!12727 call!349108))))

(declare-fun b!5002175 () Bool)

(declare-fun e!3125813 () Bool)

(assert (=> b!5002175 (= e!3125813 e!3125816)))

(declare-fun res!2134448 () Bool)

(assert (=> b!5002175 (=> res!2134448 e!3125816)))

(assert (=> b!5002175 (= res!2134448 (isEmpty!31315 (_1!34799 lt!2069627)))))

(declare-fun bm!349104 () Bool)

(declare-fun lemmaIsPrefixRefl!3620 (List!57971 List!57971) Unit!149005)

(assert (=> bm!349104 (= call!349105 (lemmaIsPrefixRefl!3620 lt!2069368 lt!2069368))))

(declare-fun b!5002164 () Bool)

(assert (=> b!5002164 (= e!3125815 (tuple2!62993 Nil!57847 Nil!57847))))

(declare-fun d!1610113 () Bool)

(assert (=> d!1610113 e!3125813))

(declare-fun res!2134447 () Bool)

(assert (=> d!1610113 (=> (not res!2134447) (not e!3125813))))

(assert (=> d!1610113 (= res!2134447 (= (++!12635 (_1!34799 lt!2069627) (_2!34799 lt!2069627)) lt!2069368))))

(assert (=> d!1610113 (= lt!2069627 e!3125811)))

(declare-fun c!853716 () Bool)

(declare-fun lostCause!1181 (Regex!13789) Bool)

(assert (=> d!1610113 (= c!853716 (lostCause!1181 r!12727))))

(declare-fun lt!2069621 () Unit!149005)

(declare-fun Unit!149009 () Unit!149005)

(assert (=> d!1610113 (= lt!2069621 Unit!149009)))

(assert (=> d!1610113 (= (getSuffix!3137 lt!2069368 Nil!57847) lt!2069368)))

(declare-fun lt!2069642 () Unit!149005)

(declare-fun lt!2069632 () Unit!149005)

(assert (=> d!1610113 (= lt!2069642 lt!2069632)))

(declare-fun lt!2069624 () List!57971)

(assert (=> d!1610113 (= lt!2069368 lt!2069624)))

(declare-fun lemmaSamePrefixThenSameSuffix!2551 (List!57971 List!57971 List!57971 List!57971 List!57971) Unit!149005)

(assert (=> d!1610113 (= lt!2069632 (lemmaSamePrefixThenSameSuffix!2551 Nil!57847 lt!2069368 Nil!57847 lt!2069624 lt!2069368))))

(assert (=> d!1610113 (= lt!2069624 (getSuffix!3137 lt!2069368 Nil!57847))))

(declare-fun lt!2069644 () Unit!149005)

(declare-fun lt!2069641 () Unit!149005)

(assert (=> d!1610113 (= lt!2069644 lt!2069641)))

(assert (=> d!1610113 (isPrefix!5342 Nil!57847 (++!12635 Nil!57847 lt!2069368))))

(assert (=> d!1610113 (= lt!2069641 (lemmaConcatTwoListThenFirstIsPrefix!3440 Nil!57847 lt!2069368))))

(assert (=> d!1610113 (validRegex!6086 r!12727)))

(assert (=> d!1610113 (= (findLongestMatchInner!1978 r!12727 Nil!57847 (size!38447 Nil!57847) lt!2069368 lt!2069368 (size!38447 lt!2069368)) lt!2069627)))

(assert (= (and d!1610113 c!853716) b!5002158))

(assert (= (and d!1610113 (not c!853716)) b!5002170))

(assert (= (and b!5002170 c!853718) b!5002171))

(assert (= (and b!5002170 (not c!853718)) b!5002163))

(assert (= (and b!5002171 c!853720) b!5002164))

(assert (= (and b!5002171 (not c!853720)) b!5002172))

(assert (= (and b!5002163 c!853717) b!5002162))

(assert (= (and b!5002163 (not c!853717)) b!5002169))

(assert (= (and b!5002163 c!853719) b!5002159))

(assert (= (and b!5002163 (not c!853719)) b!5002174))

(assert (= (and b!5002159 c!853721) b!5002160))

(assert (= (and b!5002159 (not c!853721)) b!5002173))

(assert (= (or b!5002159 b!5002174) bm!349102))

(assert (= (or b!5002159 b!5002174) bm!349098))

(assert (= (or b!5002159 b!5002174) bm!349103))

(assert (= (or b!5002159 b!5002174) bm!349101))

(assert (= (or b!5002171 b!5002163) bm!349097))

(assert (= (or b!5002171 b!5002162) bm!349099))

(assert (= (or b!5002171 b!5002162) bm!349100))

(assert (= (or b!5002171 b!5002162) bm!349104))

(assert (= (and d!1610113 res!2134447) b!5002175))

(assert (= (and b!5002175 (not res!2134448)) b!5002161))

(declare-fun m!6035976 () Bool)

(assert (=> b!5002175 m!6035976))

(assert (=> bm!349101 m!6035494))

(declare-fun m!6035978 () Bool)

(assert (=> bm!349101 m!6035978))

(declare-fun m!6035980 () Bool)

(assert (=> bm!349097 m!6035980))

(declare-fun m!6035982 () Bool)

(assert (=> d!1610113 m!6035982))

(declare-fun m!6035984 () Bool)

(assert (=> d!1610113 m!6035984))

(declare-fun m!6035986 () Bool)

(assert (=> d!1610113 m!6035986))

(declare-fun m!6035988 () Bool)

(assert (=> d!1610113 m!6035988))

(assert (=> d!1610113 m!6035982))

(declare-fun m!6035990 () Bool)

(assert (=> d!1610113 m!6035990))

(declare-fun m!6035992 () Bool)

(assert (=> d!1610113 m!6035992))

(declare-fun m!6035994 () Bool)

(assert (=> d!1610113 m!6035994))

(assert (=> d!1610113 m!6035538))

(declare-fun m!6035996 () Bool)

(assert (=> bm!349104 m!6035996))

(declare-fun m!6035998 () Bool)

(assert (=> b!5002161 m!6035998))

(assert (=> b!5002161 m!6035506))

(assert (=> bm!349098 m!6035588))

(assert (=> bm!349102 m!6035584))

(declare-fun m!6036000 () Bool)

(assert (=> bm!349103 m!6036000))

(declare-fun m!6036002 () Bool)

(assert (=> bm!349099 m!6036002))

(assert (=> b!5002163 m!6035986))

(declare-fun m!6036004 () Bool)

(assert (=> b!5002163 m!6036004))

(declare-fun m!6036006 () Bool)

(assert (=> b!5002163 m!6036006))

(declare-fun m!6036008 () Bool)

(assert (=> b!5002163 m!6036008))

(assert (=> b!5002163 m!6035584))

(declare-fun m!6036010 () Bool)

(assert (=> b!5002163 m!6036010))

(declare-fun m!6036012 () Bool)

(assert (=> b!5002163 m!6036012))

(assert (=> b!5002163 m!6035506))

(assert (=> b!5002163 m!6035588))

(declare-fun m!6036014 () Bool)

(assert (=> b!5002163 m!6036014))

(declare-fun m!6036016 () Bool)

(assert (=> b!5002163 m!6036016))

(declare-fun m!6036018 () Bool)

(assert (=> b!5002163 m!6036018))

(assert (=> b!5002163 m!6035494))

(assert (=> b!5002163 m!6035986))

(declare-fun m!6036020 () Bool)

(assert (=> b!5002163 m!6036020))

(assert (=> b!5002163 m!6036004))

(assert (=> b!5002163 m!6036014))

(declare-fun m!6036022 () Bool)

(assert (=> bm!349100 m!6036022))

(declare-fun m!6036024 () Bool)

(assert (=> b!5002159 m!6036024))

(assert (=> b!5001756 d!1610113))

(declare-fun d!1610119 () Bool)

(assert (=> d!1610119 (isPrefix!5342 lt!2069382 (++!12635 lt!2069382 lt!2069385))))

(declare-fun lt!2069691 () Unit!149005)

(assert (=> d!1610119 (= lt!2069691 (choose!36971 lt!2069382 lt!2069385))))

(assert (=> d!1610119 (= (lemmaConcatTwoListThenFirstIsPrefix!3440 lt!2069382 lt!2069385) lt!2069691)))

(declare-fun bs!1185807 () Bool)

(assert (= bs!1185807 d!1610119))

(assert (=> bs!1185807 m!6035550))

(assert (=> bs!1185807 m!6035550))

(declare-fun m!6036026 () Bool)

(assert (=> bs!1185807 m!6036026))

(declare-fun m!6036028 () Bool)

(assert (=> bs!1185807 m!6036028))

(assert (=> b!5001756 d!1610119))

(declare-fun d!1610121 () Bool)

(assert (=> d!1610121 (isPrefix!5342 (take!648 lt!2069384 lt!2069367) lt!2069384)))

(declare-fun lt!2069692 () Unit!149005)

(assert (=> d!1610121 (= lt!2069692 (choose!36970 lt!2069384 lt!2069367))))

(assert (=> d!1610121 (>= lt!2069367 0)))

(assert (=> d!1610121 (= (lemmaTakeIsPrefix!142 lt!2069384 lt!2069367) lt!2069692)))

(declare-fun bs!1185808 () Bool)

(assert (= bs!1185808 d!1610121))

(assert (=> bs!1185808 m!6035512))

(assert (=> bs!1185808 m!6035512))

(assert (=> bs!1185808 m!6035514))

(declare-fun m!6036030 () Bool)

(assert (=> bs!1185808 m!6036030))

(assert (=> b!5001756 d!1610121))

(declare-fun b!5002192 () Bool)

(declare-fun e!3125830 () Int)

(assert (=> b!5002192 (= e!3125830 lt!2069367)))

(declare-fun b!5002193 () Bool)

(declare-fun e!3125832 () Int)

(assert (=> b!5002193 (= e!3125832 0)))

(declare-fun d!1610123 () Bool)

(declare-fun e!3125831 () Bool)

(assert (=> d!1610123 e!3125831))

(declare-fun res!2134449 () Bool)

(assert (=> d!1610123 (=> (not res!2134449) (not e!3125831))))

(declare-fun lt!2069693 () List!57971)

(assert (=> d!1610123 (= res!2134449 (= ((_ map implies) (content!10238 lt!2069693) (content!10238 lt!2069384)) ((as const (InoxSet C!27828)) true)))))

(declare-fun e!3125829 () List!57971)

(assert (=> d!1610123 (= lt!2069693 e!3125829)))

(declare-fun c!853733 () Bool)

(assert (=> d!1610123 (= c!853733 (or ((_ is Nil!57847) lt!2069384) (<= lt!2069367 0)))))

(assert (=> d!1610123 (= (take!648 lt!2069384 lt!2069367) lt!2069693)))

(declare-fun b!5002194 () Bool)

(assert (=> b!5002194 (= e!3125829 Nil!57847)))

(declare-fun b!5002195 () Bool)

(assert (=> b!5002195 (= e!3125831 (= (size!38447 lt!2069693) e!3125832))))

(declare-fun c!853732 () Bool)

(assert (=> b!5002195 (= c!853732 (<= lt!2069367 0))))

(declare-fun b!5002196 () Bool)

(assert (=> b!5002196 (= e!3125829 (Cons!57847 (h!64295 lt!2069384) (take!648 (t!370317 lt!2069384) (- lt!2069367 1))))))

(declare-fun b!5002197 () Bool)

(assert (=> b!5002197 (= e!3125830 (size!38447 lt!2069384))))

(declare-fun b!5002198 () Bool)

(assert (=> b!5002198 (= e!3125832 e!3125830)))

(declare-fun c!853734 () Bool)

(assert (=> b!5002198 (= c!853734 (>= lt!2069367 (size!38447 lt!2069384)))))

(assert (= (and d!1610123 c!853733) b!5002194))

(assert (= (and d!1610123 (not c!853733)) b!5002196))

(assert (= (and d!1610123 res!2134449) b!5002195))

(assert (= (and b!5002195 c!853732) b!5002193))

(assert (= (and b!5002195 (not c!853732)) b!5002198))

(assert (= (and b!5002198 c!853734) b!5002197))

(assert (= (and b!5002198 (not c!853734)) b!5002192))

(declare-fun m!6036032 () Bool)

(assert (=> b!5002196 m!6036032))

(assert (=> b!5002198 m!6035592))

(declare-fun m!6036034 () Bool)

(assert (=> b!5002195 m!6036034))

(assert (=> b!5002197 m!6035592))

(declare-fun m!6036036 () Bool)

(assert (=> d!1610123 m!6036036))

(assert (=> d!1610123 m!6035818))

(assert (=> b!5001756 d!1610123))

(declare-fun d!1610125 () Bool)

(assert (=> d!1610125 (= (isEmpty!31315 (_1!34799 lt!2069364)) ((_ is Nil!57847) (_1!34799 lt!2069364)))))

(assert (=> b!5001756 d!1610125))

(declare-fun d!1610127 () Bool)

(declare-fun lt!2069694 () Int)

(assert (=> d!1610127 (>= lt!2069694 0)))

(declare-fun e!3125833 () Int)

(assert (=> d!1610127 (= lt!2069694 e!3125833)))

(declare-fun c!853735 () Bool)

(assert (=> d!1610127 (= c!853735 ((_ is Nil!57847) Nil!57847))))

(assert (=> d!1610127 (= (size!38447 Nil!57847) lt!2069694)))

(declare-fun b!5002199 () Bool)

(assert (=> b!5002199 (= e!3125833 0)))

(declare-fun b!5002200 () Bool)

(assert (=> b!5002200 (= e!3125833 (+ 1 (size!38447 (t!370317 Nil!57847))))))

(assert (= (and d!1610127 c!853735) b!5002199))

(assert (= (and d!1610127 (not c!853735)) b!5002200))

(declare-fun m!6036038 () Bool)

(assert (=> b!5002200 m!6036038))

(assert (=> b!5001756 d!1610127))

(declare-fun b!5002201 () Bool)

(declare-fun e!3125834 () Bool)

(declare-fun e!3125835 () Bool)

(assert (=> b!5002201 (= e!3125834 e!3125835)))

(declare-fun res!2134451 () Bool)

(assert (=> b!5002201 (=> (not res!2134451) (not e!3125835))))

(assert (=> b!5002201 (= res!2134451 (not ((_ is Nil!57847) lt!2069369)))))

(declare-fun b!5002202 () Bool)

(declare-fun res!2134450 () Bool)

(assert (=> b!5002202 (=> (not res!2134450) (not e!3125835))))

(assert (=> b!5002202 (= res!2134450 (= (head!10726 lt!2069382) (head!10726 lt!2069369)))))

(declare-fun b!5002204 () Bool)

(declare-fun e!3125836 () Bool)

(assert (=> b!5002204 (= e!3125836 (>= (size!38447 lt!2069369) (size!38447 lt!2069382)))))

(declare-fun d!1610129 () Bool)

(assert (=> d!1610129 e!3125836))

(declare-fun res!2134453 () Bool)

(assert (=> d!1610129 (=> res!2134453 e!3125836)))

(declare-fun lt!2069695 () Bool)

(assert (=> d!1610129 (= res!2134453 (not lt!2069695))))

(assert (=> d!1610129 (= lt!2069695 e!3125834)))

(declare-fun res!2134452 () Bool)

(assert (=> d!1610129 (=> res!2134452 e!3125834)))

(assert (=> d!1610129 (= res!2134452 ((_ is Nil!57847) lt!2069382))))

(assert (=> d!1610129 (= (isPrefix!5342 lt!2069382 lt!2069369) lt!2069695)))

(declare-fun b!5002203 () Bool)

(assert (=> b!5002203 (= e!3125835 (isPrefix!5342 (tail!9859 lt!2069382) (tail!9859 lt!2069369)))))

(assert (= (and d!1610129 (not res!2134452)) b!5002201))

(assert (= (and b!5002201 res!2134451) b!5002202))

(assert (= (and b!5002202 res!2134450) b!5002203))

(assert (= (and d!1610129 (not res!2134453)) b!5002204))

(assert (=> b!5002202 m!6035958))

(declare-fun m!6036040 () Bool)

(assert (=> b!5002202 m!6036040))

(declare-fun m!6036042 () Bool)

(assert (=> b!5002204 m!6036042))

(assert (=> b!5002204 m!6035724))

(assert (=> b!5002203 m!6035962))

(declare-fun m!6036044 () Bool)

(assert (=> b!5002203 m!6036044))

(assert (=> b!5002203 m!6035962))

(assert (=> b!5002203 m!6036044))

(declare-fun m!6036046 () Bool)

(assert (=> b!5002203 m!6036046))

(assert (=> b!5001756 d!1610129))

(declare-fun d!1610131 () Bool)

(declare-fun lt!2069696 () Int)

(assert (=> d!1610131 (>= lt!2069696 0)))

(declare-fun e!3125837 () Int)

(assert (=> d!1610131 (= lt!2069696 e!3125837)))

(declare-fun c!853736 () Bool)

(assert (=> d!1610131 (= c!853736 ((_ is Nil!57847) (_1!34799 lt!2069388)))))

(assert (=> d!1610131 (= (size!38447 (_1!34799 lt!2069388)) lt!2069696)))

(declare-fun b!5002205 () Bool)

(assert (=> b!5002205 (= e!3125837 0)))

(declare-fun b!5002206 () Bool)

(assert (=> b!5002206 (= e!3125837 (+ 1 (size!38447 (t!370317 (_1!34799 lt!2069388)))))))

(assert (= (and d!1610131 c!853736) b!5002205))

(assert (= (and d!1610131 (not c!853736)) b!5002206))

(declare-fun m!6036048 () Bool)

(assert (=> b!5002206 m!6036048))

(assert (=> b!5001757 d!1610131))

(declare-fun d!1610133 () Bool)

(declare-fun c!853737 () Bool)

(assert (=> d!1610133 (= c!853737 (isEmpty!31315 (_1!34799 lt!2069388)))))

(declare-fun e!3125838 () Bool)

(assert (=> d!1610133 (= (matchZipper!557 z!4183 (_1!34799 lt!2069388)) e!3125838)))

(declare-fun b!5002207 () Bool)

(assert (=> b!5002207 (= e!3125838 (nullableZipper!877 z!4183))))

(declare-fun b!5002208 () Bool)

(assert (=> b!5002208 (= e!3125838 (matchZipper!557 (derivationStepZipper!626 z!4183 (head!10726 (_1!34799 lt!2069388))) (tail!9859 (_1!34799 lt!2069388))))))

(assert (= (and d!1610133 c!853737) b!5002207))

(assert (= (and d!1610133 (not c!853737)) b!5002208))

(assert (=> d!1610133 m!6035576))

(assert (=> b!5002207 m!6035754))

(assert (=> b!5002208 m!6035582))

(assert (=> b!5002208 m!6035582))

(declare-fun m!6036050 () Bool)

(assert (=> b!5002208 m!6036050))

(assert (=> b!5002208 m!6035586))

(assert (=> b!5002208 m!6036050))

(assert (=> b!5002208 m!6035586))

(declare-fun m!6036052 () Bool)

(assert (=> b!5002208 m!6036052))

(assert (=> b!5001757 d!1610133))

(declare-fun b!5002241 () Bool)

(declare-fun res!2134476 () Bool)

(declare-fun e!3125858 () Bool)

(assert (=> b!5002241 (=> res!2134476 e!3125858)))

(declare-fun e!3125863 () Bool)

(assert (=> b!5002241 (= res!2134476 e!3125863)))

(declare-fun res!2134480 () Bool)

(assert (=> b!5002241 (=> (not res!2134480) (not e!3125863))))

(declare-fun lt!2069699 () Bool)

(assert (=> b!5002241 (= res!2134480 lt!2069699)))

(declare-fun b!5002242 () Bool)

(assert (=> b!5002242 (= e!3125863 (= (head!10726 lt!2069382) (c!853595 r!12727)))))

(declare-fun b!5002243 () Bool)

(declare-fun res!2134478 () Bool)

(declare-fun e!3125862 () Bool)

(assert (=> b!5002243 (=> res!2134478 e!3125862)))

(assert (=> b!5002243 (= res!2134478 (not (isEmpty!31315 (tail!9859 lt!2069382))))))

(declare-fun b!5002244 () Bool)

(declare-fun e!3125861 () Bool)

(assert (=> b!5002244 (= e!3125861 (matchR!6753 (derivativeStep!3973 r!12727 (head!10726 lt!2069382)) (tail!9859 lt!2069382)))))

(declare-fun b!5002245 () Bool)

(declare-fun res!2134477 () Bool)

(assert (=> b!5002245 (=> res!2134477 e!3125858)))

(assert (=> b!5002245 (= res!2134477 (not ((_ is ElementMatch!13789) r!12727)))))

(declare-fun e!3125859 () Bool)

(assert (=> b!5002245 (= e!3125859 e!3125858)))

(declare-fun b!5002246 () Bool)

(declare-fun e!3125857 () Bool)

(declare-fun call!349128 () Bool)

(assert (=> b!5002246 (= e!3125857 (= lt!2069699 call!349128))))

(declare-fun b!5002247 () Bool)

(declare-fun e!3125860 () Bool)

(assert (=> b!5002247 (= e!3125860 e!3125862)))

(declare-fun res!2134479 () Bool)

(assert (=> b!5002247 (=> res!2134479 e!3125862)))

(assert (=> b!5002247 (= res!2134479 call!349128)))

(declare-fun b!5002248 () Bool)

(declare-fun res!2134474 () Bool)

(assert (=> b!5002248 (=> (not res!2134474) (not e!3125863))))

(assert (=> b!5002248 (= res!2134474 (not call!349128))))

(declare-fun b!5002249 () Bool)

(assert (=> b!5002249 (= e!3125862 (not (= (head!10726 lt!2069382) (c!853595 r!12727))))))

(declare-fun d!1610135 () Bool)

(assert (=> d!1610135 e!3125857))

(declare-fun c!853746 () Bool)

(assert (=> d!1610135 (= c!853746 ((_ is EmptyExpr!13789) r!12727))))

(assert (=> d!1610135 (= lt!2069699 e!3125861)))

(declare-fun c!853745 () Bool)

(assert (=> d!1610135 (= c!853745 (isEmpty!31315 lt!2069382))))

(assert (=> d!1610135 (validRegex!6086 r!12727)))

(assert (=> d!1610135 (= (matchR!6753 r!12727 lt!2069382) lt!2069699)))

(declare-fun b!5002250 () Bool)

(declare-fun res!2134475 () Bool)

(assert (=> b!5002250 (=> (not res!2134475) (not e!3125863))))

(assert (=> b!5002250 (= res!2134475 (isEmpty!31315 (tail!9859 lt!2069382)))))

(declare-fun bm!349123 () Bool)

(assert (=> bm!349123 (= call!349128 (isEmpty!31315 lt!2069382))))

(declare-fun b!5002251 () Bool)

(assert (=> b!5002251 (= e!3125859 (not lt!2069699))))

(declare-fun b!5002252 () Bool)

(assert (=> b!5002252 (= e!3125861 (nullable!4683 r!12727))))

(declare-fun b!5002253 () Bool)

(assert (=> b!5002253 (= e!3125858 e!3125860)))

(declare-fun res!2134481 () Bool)

(assert (=> b!5002253 (=> (not res!2134481) (not e!3125860))))

(assert (=> b!5002253 (= res!2134481 (not lt!2069699))))

(declare-fun b!5002254 () Bool)

(assert (=> b!5002254 (= e!3125857 e!3125859)))

(declare-fun c!853744 () Bool)

(assert (=> b!5002254 (= c!853744 ((_ is EmptyLang!13789) r!12727))))

(assert (= (and d!1610135 c!853745) b!5002252))

(assert (= (and d!1610135 (not c!853745)) b!5002244))

(assert (= (and d!1610135 c!853746) b!5002246))

(assert (= (and d!1610135 (not c!853746)) b!5002254))

(assert (= (and b!5002254 c!853744) b!5002251))

(assert (= (and b!5002254 (not c!853744)) b!5002245))

(assert (= (and b!5002245 (not res!2134477)) b!5002241))

(assert (= (and b!5002241 res!2134480) b!5002248))

(assert (= (and b!5002248 res!2134474) b!5002250))

(assert (= (and b!5002250 res!2134475) b!5002242))

(assert (= (and b!5002241 (not res!2134476)) b!5002253))

(assert (= (and b!5002253 res!2134481) b!5002247))

(assert (= (and b!5002247 (not res!2134479)) b!5002243))

(assert (= (and b!5002243 (not res!2134478)) b!5002249))

(assert (= (or b!5002246 b!5002247 b!5002248) bm!349123))

(assert (=> b!5002252 m!6035980))

(assert (=> b!5002250 m!6035962))

(assert (=> b!5002250 m!6035962))

(declare-fun m!6036054 () Bool)

(assert (=> b!5002250 m!6036054))

(assert (=> b!5002249 m!6035958))

(assert (=> d!1610135 m!6035956))

(assert (=> d!1610135 m!6035538))

(assert (=> b!5002242 m!6035958))

(assert (=> b!5002244 m!6035958))

(assert (=> b!5002244 m!6035958))

(declare-fun m!6036056 () Bool)

(assert (=> b!5002244 m!6036056))

(assert (=> b!5002244 m!6035962))

(assert (=> b!5002244 m!6036056))

(assert (=> b!5002244 m!6035962))

(declare-fun m!6036058 () Bool)

(assert (=> b!5002244 m!6036058))

(assert (=> b!5002243 m!6035962))

(assert (=> b!5002243 m!6035962))

(assert (=> b!5002243 m!6036054))

(assert (=> bm!349123 m!6035956))

(assert (=> b!5001757 d!1610135))

(declare-fun d!1610137 () Bool)

(assert (=> d!1610137 (= (matchR!6753 r!12727 (_1!34799 lt!2069388)) (matchZipper!557 z!4183 (_1!34799 lt!2069388)))))

(declare-fun lt!2069730 () Unit!149005)

(declare-fun choose!36976 ((InoxSet Context!6428) List!57973 Regex!13789 List!57971) Unit!149005)

(assert (=> d!1610137 (= lt!2069730 (choose!36976 z!4183 lt!2069377 r!12727 (_1!34799 lt!2069388)))))

(assert (=> d!1610137 (validRegex!6086 r!12727)))

(assert (=> d!1610137 (= (theoremZipperRegexEquiv!161 z!4183 lt!2069377 r!12727 (_1!34799 lt!2069388)) lt!2069730)))

(declare-fun bs!1185809 () Bool)

(assert (= bs!1185809 d!1610137))

(assert (=> bs!1185809 m!6035530))

(assert (=> bs!1185809 m!6035480))

(declare-fun m!6036060 () Bool)

(assert (=> bs!1185809 m!6036060))

(assert (=> bs!1185809 m!6035538))

(assert (=> b!5001757 d!1610137))

(declare-fun d!1610139 () Bool)

(declare-fun lt!2069731 () Int)

(assert (=> d!1610139 (= lt!2069731 (size!38447 (list!18612 (_1!34800 lt!2069373))))))

(assert (=> d!1610139 (= lt!2069731 (size!38448 (c!853596 (_1!34800 lt!2069373))))))

(assert (=> d!1610139 (= (size!38446 (_1!34800 lt!2069373)) lt!2069731)))

(declare-fun bs!1185810 () Bool)

(assert (= bs!1185810 d!1610139))

(assert (=> bs!1185810 m!6035548))

(assert (=> bs!1185810 m!6035548))

(declare-fun m!6036062 () Bool)

(assert (=> bs!1185810 m!6036062))

(declare-fun m!6036064 () Bool)

(assert (=> bs!1185810 m!6036064))

(assert (=> b!5001757 d!1610139))

(declare-fun d!1610141 () Bool)

(assert (=> d!1610141 (= (matchR!6753 r!12727 lt!2069382) (matchZipper!557 z!4183 lt!2069382))))

(declare-fun lt!2069732 () Unit!149005)

(assert (=> d!1610141 (= lt!2069732 (choose!36976 z!4183 lt!2069377 r!12727 lt!2069382))))

(assert (=> d!1610141 (validRegex!6086 r!12727)))

(assert (=> d!1610141 (= (theoremZipperRegexEquiv!161 z!4183 lt!2069377 r!12727 lt!2069382) lt!2069732)))

(declare-fun bs!1185811 () Bool)

(assert (= bs!1185811 d!1610141))

(assert (=> bs!1185811 m!6035482))

(assert (=> bs!1185811 m!6035504))

(declare-fun m!6036066 () Bool)

(assert (=> bs!1185811 m!6036066))

(assert (=> bs!1185811 m!6035538))

(assert (=> b!5001757 d!1610141))

(declare-fun b!5002271 () Bool)

(declare-fun res!2134485 () Bool)

(declare-fun e!3125873 () Bool)

(assert (=> b!5002271 (=> (not res!2134485) (not e!3125873))))

(declare-fun lt!2069733 () List!57971)

(assert (=> b!5002271 (= res!2134485 (= (size!38447 lt!2069733) (+ (size!38447 (_1!34799 lt!2069388)) (size!38447 (_2!34799 lt!2069388)))))))

(declare-fun b!5002270 () Bool)

(declare-fun e!3125872 () List!57971)

(assert (=> b!5002270 (= e!3125872 (Cons!57847 (h!64295 (_1!34799 lt!2069388)) (++!12635 (t!370317 (_1!34799 lt!2069388)) (_2!34799 lt!2069388))))))

(declare-fun d!1610143 () Bool)

(assert (=> d!1610143 e!3125873))

(declare-fun res!2134484 () Bool)

(assert (=> d!1610143 (=> (not res!2134484) (not e!3125873))))

(assert (=> d!1610143 (= res!2134484 (= (content!10238 lt!2069733) ((_ map or) (content!10238 (_1!34799 lt!2069388)) (content!10238 (_2!34799 lt!2069388)))))))

(assert (=> d!1610143 (= lt!2069733 e!3125872)))

(declare-fun c!853753 () Bool)

(assert (=> d!1610143 (= c!853753 ((_ is Nil!57847) (_1!34799 lt!2069388)))))

(assert (=> d!1610143 (= (++!12635 (_1!34799 lt!2069388) (_2!34799 lt!2069388)) lt!2069733)))

(declare-fun b!5002272 () Bool)

(assert (=> b!5002272 (= e!3125873 (or (not (= (_2!34799 lt!2069388) Nil!57847)) (= lt!2069733 (_1!34799 lt!2069388))))))

(declare-fun b!5002269 () Bool)

(assert (=> b!5002269 (= e!3125872 (_2!34799 lt!2069388))))

(assert (= (and d!1610143 c!853753) b!5002269))

(assert (= (and d!1610143 (not c!853753)) b!5002270))

(assert (= (and d!1610143 res!2134484) b!5002271))

(assert (= (and b!5002271 res!2134485) b!5002272))

(declare-fun m!6036068 () Bool)

(assert (=> b!5002271 m!6036068))

(assert (=> b!5002271 m!6035478))

(declare-fun m!6036070 () Bool)

(assert (=> b!5002271 m!6036070))

(declare-fun m!6036072 () Bool)

(assert (=> b!5002270 m!6036072))

(declare-fun m!6036074 () Bool)

(assert (=> d!1610143 m!6036074))

(declare-fun m!6036076 () Bool)

(assert (=> d!1610143 m!6036076))

(declare-fun m!6036078 () Bool)

(assert (=> d!1610143 m!6036078))

(assert (=> b!5001748 d!1610143))

(declare-fun d!1610145 () Bool)

(declare-fun c!853760 () Bool)

(assert (=> d!1610145 (= c!853760 ((_ is Node!15308) (c!853596 input!5597)))))

(declare-fun e!3125883 () Bool)

(assert (=> d!1610145 (= (inv!75986 (c!853596 input!5597)) e!3125883)))

(declare-fun b!5002288 () Bool)

(declare-fun inv!75989 (Conc!15308) Bool)

(assert (=> b!5002288 (= e!3125883 (inv!75989 (c!853596 input!5597)))))

(declare-fun b!5002289 () Bool)

(declare-fun e!3125884 () Bool)

(assert (=> b!5002289 (= e!3125883 e!3125884)))

(declare-fun res!2134489 () Bool)

(assert (=> b!5002289 (= res!2134489 (not ((_ is Leaf!25411) (c!853596 input!5597))))))

(assert (=> b!5002289 (=> res!2134489 e!3125884)))

(declare-fun b!5002290 () Bool)

(declare-fun inv!75990 (Conc!15308) Bool)

(assert (=> b!5002290 (= e!3125884 (inv!75990 (c!853596 input!5597)))))

(assert (= (and d!1610145 c!853760) b!5002288))

(assert (= (and d!1610145 (not c!853760)) b!5002289))

(assert (= (and b!5002289 (not res!2134489)) b!5002290))

(declare-fun m!6036136 () Bool)

(assert (=> b!5002288 m!6036136))

(declare-fun m!6036138 () Bool)

(assert (=> b!5002290 m!6036138))

(assert (=> b!5001759 d!1610145))

(declare-fun d!1610153 () Bool)

(declare-fun lambda!248351 () Int)

(declare-fun forall!13358 (List!57972 Int) Bool)

(assert (=> d!1610153 (= (inv!75984 setElem!28376) (forall!13358 (exprs!3714 setElem!28376) lambda!248351))))

(declare-fun bs!1185815 () Bool)

(assert (= bs!1185815 d!1610153))

(declare-fun m!6036216 () Bool)

(assert (=> bs!1185815 m!6036216))

(assert (=> setNonEmpty!28376 d!1610153))

(declare-fun d!1610177 () Bool)

(declare-fun lt!2069756 () Bool)

(assert (=> d!1610177 (= lt!2069756 (isEmpty!31315 (list!18612 (_1!34800 lt!2069373))))))

(declare-fun isEmpty!31317 (Conc!15308) Bool)

(assert (=> d!1610177 (= lt!2069756 (isEmpty!31317 (c!853596 (_1!34800 lt!2069373))))))

(assert (=> d!1610177 (= (isEmpty!31314 (_1!34800 lt!2069373)) lt!2069756)))

(declare-fun bs!1185816 () Bool)

(assert (= bs!1185816 d!1610177))

(assert (=> bs!1185816 m!6035548))

(assert (=> bs!1185816 m!6035548))

(declare-fun m!6036218 () Bool)

(assert (=> bs!1185816 m!6036218))

(declare-fun m!6036220 () Bool)

(assert (=> bs!1185816 m!6036220))

(assert (=> b!5001750 d!1610177))

(declare-fun d!1610179 () Bool)

(declare-fun c!853768 () Bool)

(assert (=> d!1610179 (= c!853768 ((_ is Node!15308) (c!853596 totalInput!1012)))))

(declare-fun e!3125909 () Bool)

(assert (=> d!1610179 (= (inv!75986 (c!853596 totalInput!1012)) e!3125909)))

(declare-fun b!5002325 () Bool)

(assert (=> b!5002325 (= e!3125909 (inv!75989 (c!853596 totalInput!1012)))))

(declare-fun b!5002326 () Bool)

(declare-fun e!3125910 () Bool)

(assert (=> b!5002326 (= e!3125909 e!3125910)))

(declare-fun res!2134510 () Bool)

(assert (=> b!5002326 (= res!2134510 (not ((_ is Leaf!25411) (c!853596 totalInput!1012))))))

(assert (=> b!5002326 (=> res!2134510 e!3125910)))

(declare-fun b!5002327 () Bool)

(assert (=> b!5002327 (= e!3125910 (inv!75990 (c!853596 totalInput!1012)))))

(assert (= (and d!1610179 c!853768) b!5002325))

(assert (= (and d!1610179 (not c!853768)) b!5002326))

(assert (= (and b!5002326 (not res!2134510)) b!5002327))

(declare-fun m!6036222 () Bool)

(assert (=> b!5002325 m!6036222))

(declare-fun m!6036224 () Bool)

(assert (=> b!5002327 m!6036224))

(assert (=> b!5001752 d!1610179))

(declare-fun b!5002328 () Bool)

(declare-fun e!3125912 () Int)

(assert (=> b!5002328 (= e!3125912 lt!2069380)))

(declare-fun b!5002329 () Bool)

(declare-fun e!3125914 () Int)

(assert (=> b!5002329 (= e!3125914 0)))

(declare-fun d!1610181 () Bool)

(declare-fun e!3125913 () Bool)

(assert (=> d!1610181 e!3125913))

(declare-fun res!2134511 () Bool)

(assert (=> d!1610181 (=> (not res!2134511) (not e!3125913))))

(declare-fun lt!2069757 () List!57971)

(assert (=> d!1610181 (= res!2134511 (= ((_ map implies) (content!10238 lt!2069757) (content!10238 lt!2069374)) ((as const (InoxSet C!27828)) true)))))

(declare-fun e!3125911 () List!57971)

(assert (=> d!1610181 (= lt!2069757 e!3125911)))

(declare-fun c!853770 () Bool)

(assert (=> d!1610181 (= c!853770 (or ((_ is Nil!57847) lt!2069374) (<= lt!2069380 0)))))

(assert (=> d!1610181 (= (take!648 lt!2069374 lt!2069380) lt!2069757)))

(declare-fun b!5002330 () Bool)

(assert (=> b!5002330 (= e!3125911 Nil!57847)))

(declare-fun b!5002331 () Bool)

(assert (=> b!5002331 (= e!3125913 (= (size!38447 lt!2069757) e!3125914))))

(declare-fun c!853769 () Bool)

(assert (=> b!5002331 (= c!853769 (<= lt!2069380 0))))

(declare-fun b!5002332 () Bool)

(assert (=> b!5002332 (= e!3125911 (Cons!57847 (h!64295 lt!2069374) (take!648 (t!370317 lt!2069374) (- lt!2069380 1))))))

(declare-fun b!5002333 () Bool)

(assert (=> b!5002333 (= e!3125912 (size!38447 lt!2069374))))

(declare-fun b!5002334 () Bool)

(assert (=> b!5002334 (= e!3125914 e!3125912)))

(declare-fun c!853771 () Bool)

(assert (=> b!5002334 (= c!853771 (>= lt!2069380 (size!38447 lt!2069374)))))

(assert (= (and d!1610181 c!853770) b!5002330))

(assert (= (and d!1610181 (not c!853770)) b!5002332))

(assert (= (and d!1610181 res!2134511) b!5002331))

(assert (= (and b!5002331 c!853769) b!5002329))

(assert (= (and b!5002331 (not c!853769)) b!5002334))

(assert (= (and b!5002334 c!853771) b!5002333))

(assert (= (and b!5002334 (not c!853771)) b!5002328))

(declare-fun m!6036226 () Bool)

(assert (=> b!5002332 m!6036226))

(declare-fun m!6036228 () Bool)

(assert (=> b!5002334 m!6036228))

(declare-fun m!6036230 () Bool)

(assert (=> b!5002331 m!6036230))

(assert (=> b!5002333 m!6036228))

(declare-fun m!6036232 () Bool)

(assert (=> d!1610181 m!6036232))

(declare-fun m!6036234 () Bool)

(assert (=> d!1610181 m!6036234))

(assert (=> b!5001743 d!1610181))

(assert (=> b!5001743 d!1610055))

(declare-fun c!853777 () Bool)

(declare-fun bm!349138 () Bool)

(declare-fun c!853776 () Bool)

(declare-fun call!349145 () Bool)

(assert (=> bm!349138 (= call!349145 (validRegex!6086 (ite c!853777 (reg!14118 r!12727) (ite c!853776 (regOne!28091 r!12727) (regTwo!28090 r!12727)))))))

(declare-fun b!5002353 () Bool)

(declare-fun e!3125935 () Bool)

(declare-fun e!3125931 () Bool)

(assert (=> b!5002353 (= e!3125935 e!3125931)))

(declare-fun res!2134523 () Bool)

(assert (=> b!5002353 (= res!2134523 (not (nullable!4683 (reg!14118 r!12727))))))

(assert (=> b!5002353 (=> (not res!2134523) (not e!3125931))))

(declare-fun b!5002354 () Bool)

(declare-fun e!3125929 () Bool)

(declare-fun call!349144 () Bool)

(assert (=> b!5002354 (= e!3125929 call!349144)))

(declare-fun b!5002355 () Bool)

(declare-fun res!2134524 () Bool)

(declare-fun e!3125934 () Bool)

(assert (=> b!5002355 (=> (not res!2134524) (not e!3125934))))

(assert (=> b!5002355 (= res!2134524 call!349144)))

(declare-fun e!3125932 () Bool)

(assert (=> b!5002355 (= e!3125932 e!3125934)))

(declare-fun b!5002356 () Bool)

(assert (=> b!5002356 (= e!3125935 e!3125932)))

(assert (=> b!5002356 (= c!853776 ((_ is Union!13789) r!12727))))

(declare-fun bm!349139 () Bool)

(assert (=> bm!349139 (= call!349144 call!349145)))

(declare-fun b!5002357 () Bool)

(declare-fun e!3125930 () Bool)

(assert (=> b!5002357 (= e!3125930 e!3125929)))

(declare-fun res!2134522 () Bool)

(assert (=> b!5002357 (=> (not res!2134522) (not e!3125929))))

(declare-fun call!349143 () Bool)

(assert (=> b!5002357 (= res!2134522 call!349143)))

(declare-fun b!5002358 () Bool)

(assert (=> b!5002358 (= e!3125931 call!349145)))

(declare-fun d!1610183 () Bool)

(declare-fun res!2134526 () Bool)

(declare-fun e!3125933 () Bool)

(assert (=> d!1610183 (=> res!2134526 e!3125933)))

(assert (=> d!1610183 (= res!2134526 ((_ is ElementMatch!13789) r!12727))))

(assert (=> d!1610183 (= (validRegex!6086 r!12727) e!3125933)))

(declare-fun b!5002359 () Bool)

(assert (=> b!5002359 (= e!3125933 e!3125935)))

(assert (=> b!5002359 (= c!853777 ((_ is Star!13789) r!12727))))

(declare-fun b!5002360 () Bool)

(declare-fun res!2134525 () Bool)

(assert (=> b!5002360 (=> res!2134525 e!3125930)))

(assert (=> b!5002360 (= res!2134525 (not ((_ is Concat!22582) r!12727)))))

(assert (=> b!5002360 (= e!3125932 e!3125930)))

(declare-fun b!5002361 () Bool)

(assert (=> b!5002361 (= e!3125934 call!349143)))

(declare-fun bm!349140 () Bool)

(assert (=> bm!349140 (= call!349143 (validRegex!6086 (ite c!853776 (regTwo!28091 r!12727) (regOne!28090 r!12727))))))

(assert (= (and d!1610183 (not res!2134526)) b!5002359))

(assert (= (and b!5002359 c!853777) b!5002353))

(assert (= (and b!5002359 (not c!853777)) b!5002356))

(assert (= (and b!5002353 res!2134523) b!5002358))

(assert (= (and b!5002356 c!853776) b!5002355))

(assert (= (and b!5002356 (not c!853776)) b!5002360))

(assert (= (and b!5002355 res!2134524) b!5002361))

(assert (= (and b!5002360 (not res!2134525)) b!5002357))

(assert (= (and b!5002357 res!2134522) b!5002354))

(assert (= (or b!5002361 b!5002357) bm!349140))

(assert (= (or b!5002355 b!5002354) bm!349139))

(assert (= (or b!5002358 bm!349139) bm!349138))

(declare-fun m!6036236 () Bool)

(assert (=> bm!349138 m!6036236))

(declare-fun m!6036238 () Bool)

(assert (=> b!5002353 m!6036238))

(declare-fun m!6036240 () Bool)

(assert (=> bm!349140 m!6036240))

(assert (=> start!528546 d!1610183))

(declare-fun d!1610185 () Bool)

(declare-fun isBalanced!4266 (Conc!15308) Bool)

(assert (=> d!1610185 (= (inv!75985 input!5597) (isBalanced!4266 (c!853596 input!5597)))))

(declare-fun bs!1185817 () Bool)

(assert (= bs!1185817 d!1610185))

(declare-fun m!6036242 () Bool)

(assert (=> bs!1185817 m!6036242))

(assert (=> start!528546 d!1610185))

(declare-fun d!1610187 () Bool)

(assert (=> d!1610187 (= (inv!75985 totalInput!1012) (isBalanced!4266 (c!853596 totalInput!1012)))))

(declare-fun bs!1185818 () Bool)

(assert (= bs!1185818 d!1610187))

(declare-fun m!6036244 () Bool)

(assert (=> bs!1185818 m!6036244))

(assert (=> start!528546 d!1610187))

(declare-fun d!1610189 () Bool)

(declare-fun lt!2069758 () Int)

(assert (=> d!1610189 (>= lt!2069758 0)))

(declare-fun e!3125936 () Int)

(assert (=> d!1610189 (= lt!2069758 e!3125936)))

(declare-fun c!853778 () Bool)

(assert (=> d!1610189 (= c!853778 ((_ is Nil!57847) lt!2069371))))

(assert (=> d!1610189 (= (size!38447 lt!2069371) lt!2069758)))

(declare-fun b!5002362 () Bool)

(assert (=> b!5002362 (= e!3125936 0)))

(declare-fun b!5002363 () Bool)

(assert (=> b!5002363 (= e!3125936 (+ 1 (size!38447 (t!370317 lt!2069371))))))

(assert (= (and d!1610189 c!853778) b!5002362))

(assert (= (and d!1610189 (not c!853778)) b!5002363))

(declare-fun m!6036246 () Bool)

(assert (=> b!5002363 m!6036246))

(assert (=> b!5001762 d!1610189))

(declare-fun b!5002364 () Bool)

(declare-fun res!2134529 () Bool)

(declare-fun e!3125938 () Bool)

(assert (=> b!5002364 (=> res!2134529 e!3125938)))

(declare-fun e!3125943 () Bool)

(assert (=> b!5002364 (= res!2134529 e!3125943)))

(declare-fun res!2134533 () Bool)

(assert (=> b!5002364 (=> (not res!2134533) (not e!3125943))))

(declare-fun lt!2069759 () Bool)

(assert (=> b!5002364 (= res!2134533 lt!2069759)))

(declare-fun b!5002365 () Bool)

(assert (=> b!5002365 (= e!3125943 (= (head!10726 (_1!34799 lt!2069364)) (c!853595 r!12727)))))

(declare-fun b!5002366 () Bool)

(declare-fun res!2134531 () Bool)

(declare-fun e!3125942 () Bool)

(assert (=> b!5002366 (=> res!2134531 e!3125942)))

(assert (=> b!5002366 (= res!2134531 (not (isEmpty!31315 (tail!9859 (_1!34799 lt!2069364)))))))

(declare-fun b!5002367 () Bool)

(declare-fun e!3125941 () Bool)

(assert (=> b!5002367 (= e!3125941 (matchR!6753 (derivativeStep!3973 r!12727 (head!10726 (_1!34799 lt!2069364))) (tail!9859 (_1!34799 lt!2069364))))))

(declare-fun b!5002368 () Bool)

(declare-fun res!2134530 () Bool)

(assert (=> b!5002368 (=> res!2134530 e!3125938)))

(assert (=> b!5002368 (= res!2134530 (not ((_ is ElementMatch!13789) r!12727)))))

(declare-fun e!3125939 () Bool)

(assert (=> b!5002368 (= e!3125939 e!3125938)))

(declare-fun b!5002369 () Bool)

(declare-fun e!3125937 () Bool)

(declare-fun call!349146 () Bool)

(assert (=> b!5002369 (= e!3125937 (= lt!2069759 call!349146))))

(declare-fun b!5002370 () Bool)

(declare-fun e!3125940 () Bool)

(assert (=> b!5002370 (= e!3125940 e!3125942)))

(declare-fun res!2134532 () Bool)

(assert (=> b!5002370 (=> res!2134532 e!3125942)))

(assert (=> b!5002370 (= res!2134532 call!349146)))

(declare-fun b!5002371 () Bool)

(declare-fun res!2134527 () Bool)

(assert (=> b!5002371 (=> (not res!2134527) (not e!3125943))))

(assert (=> b!5002371 (= res!2134527 (not call!349146))))

(declare-fun b!5002372 () Bool)

(assert (=> b!5002372 (= e!3125942 (not (= (head!10726 (_1!34799 lt!2069364)) (c!853595 r!12727))))))

(declare-fun d!1610191 () Bool)

(assert (=> d!1610191 e!3125937))

(declare-fun c!853781 () Bool)

(assert (=> d!1610191 (= c!853781 ((_ is EmptyExpr!13789) r!12727))))

(assert (=> d!1610191 (= lt!2069759 e!3125941)))

(declare-fun c!853780 () Bool)

(assert (=> d!1610191 (= c!853780 (isEmpty!31315 (_1!34799 lt!2069364)))))

(assert (=> d!1610191 (validRegex!6086 r!12727)))

(assert (=> d!1610191 (= (matchR!6753 r!12727 (_1!34799 lt!2069364)) lt!2069759)))

(declare-fun b!5002373 () Bool)

(declare-fun res!2134528 () Bool)

(assert (=> b!5002373 (=> (not res!2134528) (not e!3125943))))

(assert (=> b!5002373 (= res!2134528 (isEmpty!31315 (tail!9859 (_1!34799 lt!2069364))))))

(declare-fun bm!349141 () Bool)

(assert (=> bm!349141 (= call!349146 (isEmpty!31315 (_1!34799 lt!2069364)))))

(declare-fun b!5002374 () Bool)

(assert (=> b!5002374 (= e!3125939 (not lt!2069759))))

(declare-fun b!5002375 () Bool)

(assert (=> b!5002375 (= e!3125941 (nullable!4683 r!12727))))

(declare-fun b!5002376 () Bool)

(assert (=> b!5002376 (= e!3125938 e!3125940)))

(declare-fun res!2134534 () Bool)

(assert (=> b!5002376 (=> (not res!2134534) (not e!3125940))))

(assert (=> b!5002376 (= res!2134534 (not lt!2069759))))

(declare-fun b!5002377 () Bool)

(assert (=> b!5002377 (= e!3125937 e!3125939)))

(declare-fun c!853779 () Bool)

(assert (=> b!5002377 (= c!853779 ((_ is EmptyLang!13789) r!12727))))

(assert (= (and d!1610191 c!853780) b!5002375))

(assert (= (and d!1610191 (not c!853780)) b!5002367))

(assert (= (and d!1610191 c!853781) b!5002369))

(assert (= (and d!1610191 (not c!853781)) b!5002377))

(assert (= (and b!5002377 c!853779) b!5002374))

(assert (= (and b!5002377 (not c!853779)) b!5002368))

(assert (= (and b!5002368 (not res!2134530)) b!5002364))

(assert (= (and b!5002364 res!2134533) b!5002371))

(assert (= (and b!5002371 res!2134527) b!5002373))

(assert (= (and b!5002373 res!2134528) b!5002365))

(assert (= (and b!5002364 (not res!2134529)) b!5002376))

(assert (= (and b!5002376 res!2134534) b!5002370))

(assert (= (and b!5002370 (not res!2134532)) b!5002366))

(assert (= (and b!5002366 (not res!2134531)) b!5002372))

(assert (= (or b!5002369 b!5002370 b!5002371) bm!349141))

(assert (=> b!5002375 m!6035980))

(declare-fun m!6036248 () Bool)

(assert (=> b!5002373 m!6036248))

(assert (=> b!5002373 m!6036248))

(declare-fun m!6036250 () Bool)

(assert (=> b!5002373 m!6036250))

(declare-fun m!6036252 () Bool)

(assert (=> b!5002372 m!6036252))

(assert (=> d!1610191 m!6035502))

(assert (=> d!1610191 m!6035538))

(assert (=> b!5002365 m!6036252))

(assert (=> b!5002367 m!6036252))

(assert (=> b!5002367 m!6036252))

(declare-fun m!6036254 () Bool)

(assert (=> b!5002367 m!6036254))

(assert (=> b!5002367 m!6036248))

(assert (=> b!5002367 m!6036254))

(assert (=> b!5002367 m!6036248))

(declare-fun m!6036256 () Bool)

(assert (=> b!5002367 m!6036256))

(assert (=> b!5002366 m!6036248))

(assert (=> b!5002366 m!6036248))

(assert (=> b!5002366 m!6036250))

(assert (=> bm!349141 m!6035502))

(assert (=> b!5001760 d!1610191))

(declare-fun b!5002378 () Bool)

(declare-fun res!2134537 () Bool)

(declare-fun e!3125945 () Bool)

(assert (=> b!5002378 (=> res!2134537 e!3125945)))

(declare-fun e!3125950 () Bool)

(assert (=> b!5002378 (= res!2134537 e!3125950)))

(declare-fun res!2134541 () Bool)

(assert (=> b!5002378 (=> (not res!2134541) (not e!3125950))))

(declare-fun lt!2069760 () Bool)

(assert (=> b!5002378 (= res!2134541 lt!2069760)))

(declare-fun b!5002379 () Bool)

(assert (=> b!5002379 (= e!3125950 (= (head!10726 (_1!34799 lt!2069388)) (c!853595 r!12727)))))

(declare-fun b!5002380 () Bool)

(declare-fun res!2134539 () Bool)

(declare-fun e!3125949 () Bool)

(assert (=> b!5002380 (=> res!2134539 e!3125949)))

(assert (=> b!5002380 (= res!2134539 (not (isEmpty!31315 (tail!9859 (_1!34799 lt!2069388)))))))

(declare-fun b!5002381 () Bool)

(declare-fun e!3125948 () Bool)

(assert (=> b!5002381 (= e!3125948 (matchR!6753 (derivativeStep!3973 r!12727 (head!10726 (_1!34799 lt!2069388))) (tail!9859 (_1!34799 lt!2069388))))))

(declare-fun b!5002382 () Bool)

(declare-fun res!2134538 () Bool)

(assert (=> b!5002382 (=> res!2134538 e!3125945)))

(assert (=> b!5002382 (= res!2134538 (not ((_ is ElementMatch!13789) r!12727)))))

(declare-fun e!3125946 () Bool)

(assert (=> b!5002382 (= e!3125946 e!3125945)))

(declare-fun b!5002383 () Bool)

(declare-fun e!3125944 () Bool)

(declare-fun call!349147 () Bool)

(assert (=> b!5002383 (= e!3125944 (= lt!2069760 call!349147))))

(declare-fun b!5002384 () Bool)

(declare-fun e!3125947 () Bool)

(assert (=> b!5002384 (= e!3125947 e!3125949)))

(declare-fun res!2134540 () Bool)

(assert (=> b!5002384 (=> res!2134540 e!3125949)))

(assert (=> b!5002384 (= res!2134540 call!349147)))

(declare-fun b!5002385 () Bool)

(declare-fun res!2134535 () Bool)

(assert (=> b!5002385 (=> (not res!2134535) (not e!3125950))))

(assert (=> b!5002385 (= res!2134535 (not call!349147))))

(declare-fun b!5002386 () Bool)

(assert (=> b!5002386 (= e!3125949 (not (= (head!10726 (_1!34799 lt!2069388)) (c!853595 r!12727))))))

(declare-fun d!1610193 () Bool)

(assert (=> d!1610193 e!3125944))

(declare-fun c!853784 () Bool)

(assert (=> d!1610193 (= c!853784 ((_ is EmptyExpr!13789) r!12727))))

(assert (=> d!1610193 (= lt!2069760 e!3125948)))

(declare-fun c!853783 () Bool)

(assert (=> d!1610193 (= c!853783 (isEmpty!31315 (_1!34799 lt!2069388)))))

(assert (=> d!1610193 (validRegex!6086 r!12727)))

(assert (=> d!1610193 (= (matchR!6753 r!12727 (_1!34799 lt!2069388)) lt!2069760)))

(declare-fun b!5002387 () Bool)

(declare-fun res!2134536 () Bool)

(assert (=> b!5002387 (=> (not res!2134536) (not e!3125950))))

(assert (=> b!5002387 (= res!2134536 (isEmpty!31315 (tail!9859 (_1!34799 lt!2069388))))))

(declare-fun bm!349142 () Bool)

(assert (=> bm!349142 (= call!349147 (isEmpty!31315 (_1!34799 lt!2069388)))))

(declare-fun b!5002388 () Bool)

(assert (=> b!5002388 (= e!3125946 (not lt!2069760))))

(declare-fun b!5002389 () Bool)

(assert (=> b!5002389 (= e!3125948 (nullable!4683 r!12727))))

(declare-fun b!5002390 () Bool)

(assert (=> b!5002390 (= e!3125945 e!3125947)))

(declare-fun res!2134542 () Bool)

(assert (=> b!5002390 (=> (not res!2134542) (not e!3125947))))

(assert (=> b!5002390 (= res!2134542 (not lt!2069760))))

(declare-fun b!5002391 () Bool)

(assert (=> b!5002391 (= e!3125944 e!3125946)))

(declare-fun c!853782 () Bool)

(assert (=> b!5002391 (= c!853782 ((_ is EmptyLang!13789) r!12727))))

(assert (= (and d!1610193 c!853783) b!5002389))

(assert (= (and d!1610193 (not c!853783)) b!5002381))

(assert (= (and d!1610193 c!853784) b!5002383))

(assert (= (and d!1610193 (not c!853784)) b!5002391))

(assert (= (and b!5002391 c!853782) b!5002388))

(assert (= (and b!5002391 (not c!853782)) b!5002382))

(assert (= (and b!5002382 (not res!2134538)) b!5002378))

(assert (= (and b!5002378 res!2134541) b!5002385))

(assert (= (and b!5002385 res!2134535) b!5002387))

(assert (= (and b!5002387 res!2134536) b!5002379))

(assert (= (and b!5002378 (not res!2134537)) b!5002390))

(assert (= (and b!5002390 res!2134542) b!5002384))

(assert (= (and b!5002384 (not res!2134540)) b!5002380))

(assert (= (and b!5002380 (not res!2134539)) b!5002386))

(assert (= (or b!5002383 b!5002384 b!5002385) bm!349142))

(assert (=> b!5002389 m!6035980))

(assert (=> b!5002387 m!6035586))

(assert (=> b!5002387 m!6035586))

(declare-fun m!6036258 () Bool)

(assert (=> b!5002387 m!6036258))

(assert (=> b!5002386 m!6035582))

(assert (=> d!1610193 m!6035576))

(assert (=> d!1610193 m!6035538))

(assert (=> b!5002379 m!6035582))

(assert (=> b!5002381 m!6035582))

(assert (=> b!5002381 m!6035582))

(declare-fun m!6036260 () Bool)

(assert (=> b!5002381 m!6036260))

(assert (=> b!5002381 m!6035586))

(assert (=> b!5002381 m!6036260))

(assert (=> b!5002381 m!6035586))

(declare-fun m!6036262 () Bool)

(assert (=> b!5002381 m!6036262))

(assert (=> b!5002380 m!6035586))

(assert (=> b!5002380 m!6035586))

(assert (=> b!5002380 m!6036258))

(assert (=> bm!349142 m!6035576))

(assert (=> b!5001761 d!1610193))

(declare-fun d!1610195 () Bool)

(declare-fun lt!2069763 () Regex!13789)

(assert (=> d!1610195 (validRegex!6086 lt!2069763)))

(declare-fun generalisedUnion!576 (List!57972) Regex!13789)

(declare-fun unfocusZipperList!89 (List!57973) List!57972)

(assert (=> d!1610195 (= lt!2069763 (generalisedUnion!576 (unfocusZipperList!89 lt!2069377)))))

(assert (=> d!1610195 (= (unfocusZipper!316 lt!2069377) lt!2069763)))

(declare-fun bs!1185819 () Bool)

(assert (= bs!1185819 d!1610195))

(declare-fun m!6036264 () Bool)

(assert (=> bs!1185819 m!6036264))

(declare-fun m!6036266 () Bool)

(assert (=> bs!1185819 m!6036266))

(assert (=> bs!1185819 m!6036266))

(declare-fun m!6036268 () Bool)

(assert (=> bs!1185819 m!6036268))

(assert (=> b!5001751 d!1610195))

(declare-fun d!1610197 () Bool)

(declare-fun e!3125953 () Bool)

(assert (=> d!1610197 e!3125953))

(declare-fun res!2134545 () Bool)

(assert (=> d!1610197 (=> (not res!2134545) (not e!3125953))))

(declare-fun lt!2069766 () List!57973)

(declare-fun noDuplicate!1025 (List!57973) Bool)

(assert (=> d!1610197 (= res!2134545 (noDuplicate!1025 lt!2069766))))

(declare-fun choose!36980 ((InoxSet Context!6428)) List!57973)

(assert (=> d!1610197 (= lt!2069766 (choose!36980 z!4183))))

(assert (=> d!1610197 (= (toList!8074 z!4183) lt!2069766)))

(declare-fun b!5002394 () Bool)

(declare-fun content!10241 (List!57973) (InoxSet Context!6428))

(assert (=> b!5002394 (= e!3125953 (= (content!10241 lt!2069766) z!4183))))

(assert (= (and d!1610197 res!2134545) b!5002394))

(declare-fun m!6036270 () Bool)

(assert (=> d!1610197 m!6036270))

(declare-fun m!6036272 () Bool)

(assert (=> d!1610197 m!6036272))

(declare-fun m!6036274 () Bool)

(assert (=> b!5002394 m!6036274))

(assert (=> b!5001751 d!1610197))

(declare-fun b!5002403 () Bool)

(declare-fun e!3125959 () Bool)

(declare-fun tp!1402987 () Bool)

(declare-fun tp!1402989 () Bool)

(assert (=> b!5002403 (= e!3125959 (and (inv!75986 (left!42296 (c!853596 input!5597))) tp!1402989 (inv!75986 (right!42626 (c!853596 input!5597))) tp!1402987))))

(declare-fun b!5002405 () Bool)

(declare-fun e!3125958 () Bool)

(declare-fun tp!1402988 () Bool)

(assert (=> b!5002405 (= e!3125958 tp!1402988)))

(declare-fun b!5002404 () Bool)

(declare-fun inv!75991 (IArray!30677) Bool)

(assert (=> b!5002404 (= e!3125959 (and (inv!75991 (xs!18634 (c!853596 input!5597))) e!3125958))))

(assert (=> b!5001759 (= tp!1402974 (and (inv!75986 (c!853596 input!5597)) e!3125959))))

(assert (= (and b!5001759 ((_ is Node!15308) (c!853596 input!5597))) b!5002403))

(assert (= b!5002404 b!5002405))

(assert (= (and b!5001759 ((_ is Leaf!25411) (c!853596 input!5597))) b!5002404))

(declare-fun m!6036276 () Bool)

(assert (=> b!5002403 m!6036276))

(declare-fun m!6036278 () Bool)

(assert (=> b!5002403 m!6036278))

(declare-fun m!6036280 () Bool)

(assert (=> b!5002404 m!6036280))

(assert (=> b!5001759 m!6035578))

(declare-fun condSetEmpty!28379 () Bool)

(assert (=> setNonEmpty!28376 (= condSetEmpty!28379 (= setRest!28376 ((as const (Array Context!6428 Bool)) false)))))

(declare-fun setRes!28379 () Bool)

(assert (=> setNonEmpty!28376 (= tp!1402980 setRes!28379)))

(declare-fun setIsEmpty!28379 () Bool)

(assert (=> setIsEmpty!28379 setRes!28379))

(declare-fun setElem!28379 () Context!6428)

(declare-fun tp!1402994 () Bool)

(declare-fun e!3125962 () Bool)

(declare-fun setNonEmpty!28379 () Bool)

(assert (=> setNonEmpty!28379 (= setRes!28379 (and tp!1402994 (inv!75984 setElem!28379) e!3125962))))

(declare-fun setRest!28379 () (InoxSet Context!6428))

(assert (=> setNonEmpty!28379 (= setRest!28376 ((_ map or) (store ((as const (Array Context!6428 Bool)) false) setElem!28379 true) setRest!28379))))

(declare-fun b!5002410 () Bool)

(declare-fun tp!1402995 () Bool)

(assert (=> b!5002410 (= e!3125962 tp!1402995)))

(assert (= (and setNonEmpty!28376 condSetEmpty!28379) setIsEmpty!28379))

(assert (= (and setNonEmpty!28376 (not condSetEmpty!28379)) setNonEmpty!28379))

(assert (= setNonEmpty!28379 b!5002410))

(declare-fun m!6036282 () Bool)

(assert (=> setNonEmpty!28379 m!6036282))

(declare-fun e!3125965 () Bool)

(assert (=> b!5001749 (= tp!1402975 e!3125965)))

(declare-fun b!5002422 () Bool)

(declare-fun tp!1403006 () Bool)

(declare-fun tp!1403007 () Bool)

(assert (=> b!5002422 (= e!3125965 (and tp!1403006 tp!1403007))))

(declare-fun b!5002424 () Bool)

(declare-fun tp!1403009 () Bool)

(declare-fun tp!1403010 () Bool)

(assert (=> b!5002424 (= e!3125965 (and tp!1403009 tp!1403010))))

(declare-fun b!5002423 () Bool)

(declare-fun tp!1403008 () Bool)

(assert (=> b!5002423 (= e!3125965 tp!1403008)))

(declare-fun b!5002421 () Bool)

(assert (=> b!5002421 (= e!3125965 tp_is_empty!36575)))

(assert (= (and b!5001749 ((_ is ElementMatch!13789) (regOne!28090 r!12727))) b!5002421))

(assert (= (and b!5001749 ((_ is Concat!22582) (regOne!28090 r!12727))) b!5002422))

(assert (= (and b!5001749 ((_ is Star!13789) (regOne!28090 r!12727))) b!5002423))

(assert (= (and b!5001749 ((_ is Union!13789) (regOne!28090 r!12727))) b!5002424))

(declare-fun e!3125966 () Bool)

(assert (=> b!5001749 (= tp!1402978 e!3125966)))

(declare-fun b!5002426 () Bool)

(declare-fun tp!1403011 () Bool)

(declare-fun tp!1403012 () Bool)

(assert (=> b!5002426 (= e!3125966 (and tp!1403011 tp!1403012))))

(declare-fun b!5002428 () Bool)

(declare-fun tp!1403014 () Bool)

(declare-fun tp!1403015 () Bool)

(assert (=> b!5002428 (= e!3125966 (and tp!1403014 tp!1403015))))

(declare-fun b!5002427 () Bool)

(declare-fun tp!1403013 () Bool)

(assert (=> b!5002427 (= e!3125966 tp!1403013)))

(declare-fun b!5002425 () Bool)

(assert (=> b!5002425 (= e!3125966 tp_is_empty!36575)))

(assert (= (and b!5001749 ((_ is ElementMatch!13789) (regTwo!28090 r!12727))) b!5002425))

(assert (= (and b!5001749 ((_ is Concat!22582) (regTwo!28090 r!12727))) b!5002426))

(assert (= (and b!5001749 ((_ is Star!13789) (regTwo!28090 r!12727))) b!5002427))

(assert (= (and b!5001749 ((_ is Union!13789) (regTwo!28090 r!12727))) b!5002428))

(declare-fun b!5002433 () Bool)

(declare-fun e!3125969 () Bool)

(declare-fun tp!1403020 () Bool)

(declare-fun tp!1403021 () Bool)

(assert (=> b!5002433 (= e!3125969 (and tp!1403020 tp!1403021))))

(assert (=> b!5001753 (= tp!1402979 e!3125969)))

(assert (= (and b!5001753 ((_ is Cons!57848) (exprs!3714 setElem!28376))) b!5002433))

(declare-fun e!3125970 () Bool)

(assert (=> b!5001758 (= tp!1402976 e!3125970)))

(declare-fun b!5002435 () Bool)

(declare-fun tp!1403022 () Bool)

(declare-fun tp!1403023 () Bool)

(assert (=> b!5002435 (= e!3125970 (and tp!1403022 tp!1403023))))

(declare-fun b!5002437 () Bool)

(declare-fun tp!1403025 () Bool)

(declare-fun tp!1403026 () Bool)

(assert (=> b!5002437 (= e!3125970 (and tp!1403025 tp!1403026))))

(declare-fun b!5002436 () Bool)

(declare-fun tp!1403024 () Bool)

(assert (=> b!5002436 (= e!3125970 tp!1403024)))

(declare-fun b!5002434 () Bool)

(assert (=> b!5002434 (= e!3125970 tp_is_empty!36575)))

(assert (= (and b!5001758 ((_ is ElementMatch!13789) (reg!14118 r!12727))) b!5002434))

(assert (= (and b!5001758 ((_ is Concat!22582) (reg!14118 r!12727))) b!5002435))

(assert (= (and b!5001758 ((_ is Star!13789) (reg!14118 r!12727))) b!5002436))

(assert (= (and b!5001758 ((_ is Union!13789) (reg!14118 r!12727))) b!5002437))

(declare-fun tp!1403027 () Bool)

(declare-fun e!3125972 () Bool)

(declare-fun tp!1403029 () Bool)

(declare-fun b!5002438 () Bool)

(assert (=> b!5002438 (= e!3125972 (and (inv!75986 (left!42296 (c!853596 totalInput!1012))) tp!1403029 (inv!75986 (right!42626 (c!853596 totalInput!1012))) tp!1403027))))

(declare-fun b!5002440 () Bool)

(declare-fun e!3125971 () Bool)

(declare-fun tp!1403028 () Bool)

(assert (=> b!5002440 (= e!3125971 tp!1403028)))

(declare-fun b!5002439 () Bool)

(assert (=> b!5002439 (= e!3125972 (and (inv!75991 (xs!18634 (c!853596 totalInput!1012))) e!3125971))))

(assert (=> b!5001752 (= tp!1402973 (and (inv!75986 (c!853596 totalInput!1012)) e!3125972))))

(assert (= (and b!5001752 ((_ is Node!15308) (c!853596 totalInput!1012))) b!5002438))

(assert (= b!5002439 b!5002440))

(assert (= (and b!5001752 ((_ is Leaf!25411) (c!853596 totalInput!1012))) b!5002439))

(declare-fun m!6036284 () Bool)

(assert (=> b!5002438 m!6036284))

(declare-fun m!6036286 () Bool)

(assert (=> b!5002438 m!6036286))

(declare-fun m!6036288 () Bool)

(assert (=> b!5002439 m!6036288))

(assert (=> b!5001752 m!6035536))

(declare-fun e!3125973 () Bool)

(assert (=> b!5001747 (= tp!1402972 e!3125973)))

(declare-fun b!5002442 () Bool)

(declare-fun tp!1403030 () Bool)

(declare-fun tp!1403031 () Bool)

(assert (=> b!5002442 (= e!3125973 (and tp!1403030 tp!1403031))))

(declare-fun b!5002444 () Bool)

(declare-fun tp!1403033 () Bool)

(declare-fun tp!1403034 () Bool)

(assert (=> b!5002444 (= e!3125973 (and tp!1403033 tp!1403034))))

(declare-fun b!5002443 () Bool)

(declare-fun tp!1403032 () Bool)

(assert (=> b!5002443 (= e!3125973 tp!1403032)))

(declare-fun b!5002441 () Bool)

(assert (=> b!5002441 (= e!3125973 tp_is_empty!36575)))

(assert (= (and b!5001747 ((_ is ElementMatch!13789) (regOne!28091 r!12727))) b!5002441))

(assert (= (and b!5001747 ((_ is Concat!22582) (regOne!28091 r!12727))) b!5002442))

(assert (= (and b!5001747 ((_ is Star!13789) (regOne!28091 r!12727))) b!5002443))

(assert (= (and b!5001747 ((_ is Union!13789) (regOne!28091 r!12727))) b!5002444))

(declare-fun e!3125974 () Bool)

(assert (=> b!5001747 (= tp!1402977 e!3125974)))

(declare-fun b!5002446 () Bool)

(declare-fun tp!1403035 () Bool)

(declare-fun tp!1403036 () Bool)

(assert (=> b!5002446 (= e!3125974 (and tp!1403035 tp!1403036))))

(declare-fun b!5002448 () Bool)

(declare-fun tp!1403038 () Bool)

(declare-fun tp!1403039 () Bool)

(assert (=> b!5002448 (= e!3125974 (and tp!1403038 tp!1403039))))

(declare-fun b!5002447 () Bool)

(declare-fun tp!1403037 () Bool)

(assert (=> b!5002447 (= e!3125974 tp!1403037)))

(declare-fun b!5002445 () Bool)

(assert (=> b!5002445 (= e!3125974 tp_is_empty!36575)))

(assert (= (and b!5001747 ((_ is ElementMatch!13789) (regTwo!28091 r!12727))) b!5002445))

(assert (= (and b!5001747 ((_ is Concat!22582) (regTwo!28091 r!12727))) b!5002446))

(assert (= (and b!5001747 ((_ is Star!13789) (regTwo!28091 r!12727))) b!5002447))

(assert (= (and b!5001747 ((_ is Union!13789) (regTwo!28091 r!12727))) b!5002448))

(check-sat (not d!1610123) (not b!5001759) (not d!1610087) (not d!1610019) (not bm!349123) (not bm!349100) (not d!1610069) (not b!5002426) (not b!5002085) (not b!5002062) (not b!5001783) (not b!5002446) (not b!5002334) (not b!5002435) (not b!5002442) (not b!5002443) (not b!5002057) (not b!5001987) (not b!5001995) (not b!5002333) (not d!1609993) (not d!1609989) (not b!5002372) (not b!5001774) (not d!1610055) (not b!5002003) (not b!5002200) (not b!5001993) (not b!5002100) (not b!5002381) (not b!5001997) (not d!1610111) (not d!1610121) (not b!5002001) (not b!5002242) (not d!1610185) (not setNonEmpty!28379) (not b!5002427) (not b!5002202) (not b!5002056) (not b!5002093) (not d!1610139) (not bm!349104) (not bm!349140) (not b!5002332) (not d!1610141) (not b!5002198) (not b!5001962) (not b!5002101) (not b!5002163) (not d!1609999) (not b!5002095) (not d!1610105) (not b!5002243) (not d!1610187) (not b!5002203) (not b!5001992) (not b!5002004) (not b!5002373) (not d!1610137) (not b!5001996) (not b!5002288) (not b!5001929) (not b!5001752) (not b!5002002) (not d!1610021) (not d!1610065) (not bm!349101) (not d!1610089) (not d!1610039) (not bm!349103) (not b!5002403) (not d!1610047) (not b!5002090) (not b!5002270) (not d!1610193) (not b!5002197) (not b!5002440) (not bm!349071) (not b!5001959) (not b!5002424) (not b!5002386) (not d!1610001) (not d!1610197) (not b!5002367) (not d!1610177) (not b!5001937) (not b!5002249) (not b!5002161) (not bm!349097) (not b!5001960) (not b!5002331) (not b!5002250) (not b!5002252) (not d!1610119) (not d!1610133) (not d!1610135) (not b!5002327) (not b!5002207) (not b!5002387) (not bm!349141) (not d!1610017) (not b!5002204) (not b!5002444) (not b!5002375) (not b!5001936) (not b!5002405) (not b!5002071) (not bm!349142) (not b!5002423) tp_is_empty!36575 (not b!5002439) (not d!1610113) (not b!5002175) (not b!5002436) (not b!5001961) (not b!5002428) (not b!5001775) (not b!5002438) (not bm!349099) (not bm!349098) (not d!1610195) (not b!5002422) (not b!5002290) (not b!5002325) (not b!5002389) (not d!1610015) (not b!5002097) (not d!1610181) (not d!1610035) (not b!5001985) (not b!5002379) (not b!5002271) (not b!5002244) (not d!1610143) (not b!5002196) (not b!5001776) (not b!5002159) (not b!5002091) (not b!5002410) (not d!1610153) (not b!5002094) (not b!5002448) (not b!5002433) (not b!5002363) (not b!5002447) (not b!5002437) (not b!5002404) (not b!5002058) (not d!1610033) (not b!5002099) (not b!5002195) (not bm!349102) (not b!5002394) (not d!1610191) (not b!5002380) (not b!5002353) (not b!5001991) (not b!5002366) (not bm!349138) (not b!5001930) (not b!5002365) (not b!5002208) (not b!5002206) (not b!5002098))
(check-sat)
