; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527470 () Bool)

(assert start!527470)

(declare-fun b!4990797 () Bool)

(declare-fun e!3119355 () Bool)

(declare-datatypes ((C!27764 0))(
  ( (C!27765 (val!23248 Int)) )
))
(declare-datatypes ((List!57875 0))(
  ( (Nil!57751) (Cons!57751 (h!64199 C!27764) (t!370201 List!57875)) )
))
(declare-datatypes ((IArray!30613 0))(
  ( (IArray!30614 (innerList!15364 List!57875)) )
))
(declare-datatypes ((Conc!15276 0))(
  ( (Node!15276 (left!42244 Conc!15276) (right!42574 Conc!15276) (csize!30782 Int) (cheight!15487 Int)) (Leaf!25363 (xs!18602 IArray!30613) (csize!30783 Int)) (Empty!15276) )
))
(declare-datatypes ((BalanceConc!29982 0))(
  ( (BalanceConc!29983 (c!851379 Conc!15276)) )
))
(declare-fun totalInput!1012 () BalanceConc!29982)

(declare-fun tp!1399126 () Bool)

(declare-fun inv!75794 (Conc!15276) Bool)

(assert (=> b!4990797 (= e!3119355 (and (inv!75794 (c!851379 totalInput!1012)) tp!1399126))))

(declare-fun b!4990798 () Bool)

(declare-fun e!3119345 () Bool)

(declare-datatypes ((tuple2!62856 0))(
  ( (tuple2!62857 (_1!34731 List!57875) (_2!34731 List!57875)) )
))
(declare-fun lt!2064374 () tuple2!62856)

(declare-fun isEmpty!31248 (List!57875) Bool)

(assert (=> b!4990798 (= e!3119345 (not (isEmpty!31248 (_1!34731 lt!2064374))))))

(declare-fun b!4990799 () Bool)

(declare-fun e!3119344 () Bool)

(declare-fun tp!1399124 () Bool)

(assert (=> b!4990799 (= e!3119344 tp!1399124)))

(declare-fun b!4990800 () Bool)

(declare-fun e!3119357 () Bool)

(declare-datatypes ((Regex!13757 0))(
  ( (ElementMatch!13757 (c!851380 C!27764)) (Concat!22550 (regOne!28026 Regex!13757) (regTwo!28026 Regex!13757)) (EmptyExpr!13757) (Star!13757 (reg!14086 Regex!13757)) (EmptyLang!13757) (Union!13757 (regOne!28027 Regex!13757) (regTwo!28027 Regex!13757)) )
))
(declare-fun r!12727 () Regex!13757)

(declare-fun lt!2064387 () tuple2!62856)

(declare-fun matchR!6729 (Regex!13757 List!57875) Bool)

(assert (=> b!4990800 (= e!3119357 (matchR!6729 r!12727 (_1!34731 lt!2064387)))))

(declare-fun b!4990801 () Bool)

(declare-fun e!3119351 () Bool)

(declare-fun e!3119352 () Bool)

(assert (=> b!4990801 (= e!3119351 e!3119352)))

(declare-fun res!2130761 () Bool)

(assert (=> b!4990801 (=> (not res!2130761) (not e!3119352))))

(declare-fun lt!2064397 () List!57875)

(declare-fun lt!2064392 () List!57875)

(declare-fun isSuffix!1323 (List!57875 List!57875) Bool)

(assert (=> b!4990801 (= res!2130761 (isSuffix!1323 lt!2064397 lt!2064392))))

(declare-fun list!18560 (BalanceConc!29982) List!57875)

(assert (=> b!4990801 (= lt!2064392 (list!18560 totalInput!1012))))

(declare-fun input!5597 () BalanceConc!29982)

(assert (=> b!4990801 (= lt!2064397 (list!18560 input!5597))))

(declare-fun b!4990802 () Bool)

(declare-fun e!3119356 () Bool)

(assert (=> b!4990802 (= e!3119356 true)))

(declare-fun lt!2064386 () Bool)

(declare-fun isPrefix!5314 (List!57875 List!57875) Bool)

(assert (=> b!4990802 (= lt!2064386 (isPrefix!5314 (_1!34731 lt!2064374) lt!2064397))))

(declare-fun b!4990803 () Bool)

(declare-fun e!3119342 () Bool)

(declare-fun tp!1399122 () Bool)

(declare-fun tp!1399127 () Bool)

(assert (=> b!4990803 (= e!3119342 (and tp!1399122 tp!1399127))))

(declare-fun setIsEmpty!28226 () Bool)

(declare-fun setRes!28226 () Bool)

(assert (=> setIsEmpty!28226 setRes!28226))

(declare-fun b!4990804 () Bool)

(declare-fun tp!1399128 () Bool)

(assert (=> b!4990804 (= e!3119342 tp!1399128)))

(declare-fun res!2130766 () Bool)

(declare-fun e!3119341 () Bool)

(assert (=> start!527470 (=> (not res!2130766) (not e!3119341))))

(declare-fun validRegex!6054 (Regex!13757) Bool)

(assert (=> start!527470 (= res!2130766 (validRegex!6054 r!12727))))

(assert (=> start!527470 e!3119341))

(assert (=> start!527470 e!3119342))

(declare-fun e!3119353 () Bool)

(declare-fun inv!75795 (BalanceConc!29982) Bool)

(assert (=> start!527470 (and (inv!75795 input!5597) e!3119353)))

(declare-fun condSetEmpty!28226 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!57876 0))(
  ( (Nil!57752) (Cons!57752 (h!64200 Regex!13757) (t!370202 List!57876)) )
))
(declare-datatypes ((Context!6364 0))(
  ( (Context!6365 (exprs!3682 List!57876)) )
))
(declare-fun z!4183 () (InoxSet Context!6364))

(assert (=> start!527470 (= condSetEmpty!28226 (= z!4183 ((as const (Array Context!6364 Bool)) false)))))

(assert (=> start!527470 setRes!28226))

(assert (=> start!527470 (and (inv!75795 totalInput!1012) e!3119355)))

(declare-fun b!4990805 () Bool)

(declare-fun e!3119350 () Bool)

(declare-fun e!3119343 () Bool)

(assert (=> b!4990805 (= e!3119350 e!3119343)))

(declare-fun res!2130772 () Bool)

(assert (=> b!4990805 (=> res!2130772 e!3119343)))

(declare-fun lt!2064377 () Int)

(declare-fun lt!2064389 () Int)

(assert (=> b!4990805 (= res!2130772 (or (> lt!2064377 lt!2064389) (> lt!2064389 lt!2064377)))))

(declare-datatypes ((tuple2!62858 0))(
  ( (tuple2!62859 (_1!34732 BalanceConc!29982) (_2!34732 BalanceConc!29982)) )
))
(declare-fun lt!2064378 () tuple2!62858)

(declare-fun size!38366 (BalanceConc!29982) Int)

(assert (=> b!4990805 (= lt!2064389 (size!38366 (_1!34732 lt!2064378)))))

(declare-fun size!38367 (List!57875) Int)

(assert (=> b!4990805 (= lt!2064377 (size!38367 (_1!34731 lt!2064374)))))

(declare-fun lt!2064384 () List!57875)

(declare-fun lt!2064398 () Bool)

(assert (=> b!4990805 (= (matchR!6729 r!12727 lt!2064384) lt!2064398)))

(declare-datatypes ((List!57877 0))(
  ( (Nil!57753) (Cons!57753 (h!64201 Context!6364) (t!370203 List!57877)) )
))
(declare-fun lt!2064388 () List!57877)

(declare-datatypes ((Unit!148879 0))(
  ( (Unit!148880) )
))
(declare-fun lt!2064396 () Unit!148879)

(declare-fun theoremZipperRegexEquiv!143 ((InoxSet Context!6364) List!57877 Regex!13757 List!57875) Unit!148879)

(assert (=> b!4990805 (= lt!2064396 (theoremZipperRegexEquiv!143 z!4183 lt!2064388 r!12727 lt!2064384))))

(declare-fun lt!2064379 () Bool)

(declare-fun matchZipper!533 ((InoxSet Context!6364) List!57875) Bool)

(assert (=> b!4990805 (= lt!2064379 (matchZipper!533 z!4183 (_1!34731 lt!2064374)))))

(declare-fun lt!2064394 () Unit!148879)

(assert (=> b!4990805 (= lt!2064394 (theoremZipperRegexEquiv!143 z!4183 lt!2064388 r!12727 (_1!34731 lt!2064374)))))

(declare-fun setNonEmpty!28226 () Bool)

(declare-fun tp!1399125 () Bool)

(declare-fun setElem!28226 () Context!6364)

(declare-fun inv!75796 (Context!6364) Bool)

(assert (=> setNonEmpty!28226 (= setRes!28226 (and tp!1399125 (inv!75796 setElem!28226) e!3119344))))

(declare-fun setRest!28226 () (InoxSet Context!6364))

(assert (=> setNonEmpty!28226 (= z!4183 ((_ map or) (store ((as const (Array Context!6364 Bool)) false) setElem!28226 true) setRest!28226))))

(declare-fun b!4990806 () Bool)

(declare-fun e!3119349 () Bool)

(declare-fun e!3119348 () Bool)

(assert (=> b!4990806 (= e!3119349 (not e!3119348))))

(declare-fun res!2130763 () Bool)

(assert (=> b!4990806 (=> res!2130763 e!3119348)))

(declare-fun e!3119354 () Bool)

(assert (=> b!4990806 (= res!2130763 e!3119354)))

(declare-fun res!2130773 () Bool)

(assert (=> b!4990806 (=> (not res!2130773) (not e!3119354))))

(assert (=> b!4990806 (= res!2130773 (not lt!2064398))))

(assert (=> b!4990806 (= lt!2064398 (matchZipper!533 z!4183 lt!2064384))))

(assert (=> b!4990806 e!3119357))

(declare-fun res!2130768 () Bool)

(assert (=> b!4990806 (=> res!2130768 e!3119357)))

(assert (=> b!4990806 (= res!2130768 (isEmpty!31248 (_1!34731 lt!2064387)))))

(declare-fun findLongestMatchInner!1946 (Regex!13757 List!57875 Int List!57875 List!57875 Int) tuple2!62856)

(assert (=> b!4990806 (= lt!2064387 (findLongestMatchInner!1946 r!12727 Nil!57751 (size!38367 Nil!57751) lt!2064397 lt!2064397 (size!38367 lt!2064397)))))

(declare-fun lt!2064390 () Unit!148879)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1907 (Regex!13757 List!57875) Unit!148879)

(assert (=> b!4990806 (= lt!2064390 (longestMatchIsAcceptedByMatchOrIsEmpty!1907 r!12727 lt!2064397))))

(declare-fun e!3119346 () Bool)

(assert (=> b!4990806 e!3119346))

(declare-fun res!2130762 () Bool)

(assert (=> b!4990806 (=> res!2130762 e!3119346)))

(declare-fun lt!2064382 () Int)

(assert (=> b!4990806 (= res!2130762 (= lt!2064382 0))))

(declare-fun lt!2064393 () Int)

(declare-fun lt!2064395 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!97 ((InoxSet Context!6364) Int BalanceConc!29982 Int) Int)

(assert (=> b!4990806 (= lt!2064382 (findLongestMatchInnerZipperFastV2!97 z!4183 lt!2064393 totalInput!1012 lt!2064395))))

(declare-fun lt!2064381 () Unit!148879)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!24 ((InoxSet Context!6364) Int BalanceConc!29982) Unit!148879)

(assert (=> b!4990806 (= lt!2064381 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!24 z!4183 lt!2064393 totalInput!1012))))

(declare-fun take!622 (List!57875 Int) List!57875)

(assert (=> b!4990806 (isPrefix!5314 (take!622 lt!2064392 lt!2064393) lt!2064392)))

(declare-fun lt!2064385 () Unit!148879)

(declare-fun lemmaTakeIsPrefix!116 (List!57875 Int) Unit!148879)

(assert (=> b!4990806 (= lt!2064385 (lemmaTakeIsPrefix!116 lt!2064392 lt!2064393))))

(declare-fun lt!2064373 () List!57875)

(assert (=> b!4990806 (isPrefix!5314 (_1!34731 lt!2064374) lt!2064373)))

(declare-fun lt!2064391 () Unit!148879)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3412 (List!57875 List!57875) Unit!148879)

(assert (=> b!4990806 (= lt!2064391 (lemmaConcatTwoListThenFirstIsPrefix!3412 (_1!34731 lt!2064374) (_2!34731 lt!2064374)))))

(declare-fun lt!2064380 () List!57875)

(assert (=> b!4990806 (isPrefix!5314 lt!2064384 lt!2064380)))

(declare-fun lt!2064375 () Unit!148879)

(declare-fun lt!2064383 () List!57875)

(assert (=> b!4990806 (= lt!2064375 (lemmaConcatTwoListThenFirstIsPrefix!3412 lt!2064384 lt!2064383))))

(declare-fun b!4990807 () Bool)

(declare-fun drop!2420 (List!57875 Int) List!57875)

(assert (=> b!4990807 (= e!3119346 (matchZipper!533 z!4183 (take!622 (drop!2420 lt!2064392 lt!2064393) lt!2064382)))))

(declare-fun b!4990808 () Bool)

(assert (=> b!4990808 (= e!3119341 e!3119351)))

(declare-fun res!2130770 () Bool)

(assert (=> b!4990808 (=> (not res!2130770) (not e!3119351))))

(declare-fun unfocusZipper!284 (List!57877) Regex!13757)

(assert (=> b!4990808 (= res!2130770 (= (unfocusZipper!284 lt!2064388) r!12727))))

(declare-fun toList!8042 ((InoxSet Context!6364)) List!57877)

(assert (=> b!4990808 (= lt!2064388 (toList!8042 z!4183))))

(declare-fun b!4990809 () Bool)

(declare-fun e!3119347 () Bool)

(assert (=> b!4990809 (= e!3119352 e!3119347)))

(declare-fun res!2130771 () Bool)

(assert (=> b!4990809 (=> (not res!2130771) (not e!3119347))))

(assert (=> b!4990809 (= res!2130771 (= lt!2064380 lt!2064397))))

(declare-fun ++!12601 (List!57875 List!57875) List!57875)

(assert (=> b!4990809 (= lt!2064380 (++!12601 lt!2064384 lt!2064383))))

(assert (=> b!4990809 (= lt!2064383 (list!18560 (_2!34732 lt!2064378)))))

(assert (=> b!4990809 (= lt!2064384 (list!18560 (_1!34732 lt!2064378)))))

(declare-fun findLongestMatch!1770 (Regex!13757 List!57875) tuple2!62856)

(assert (=> b!4990809 (= lt!2064374 (findLongestMatch!1770 r!12727 lt!2064397))))

(assert (=> b!4990809 (= lt!2064393 (- lt!2064395 (size!38366 input!5597)))))

(assert (=> b!4990809 (= lt!2064395 (size!38366 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!59 ((InoxSet Context!6364) BalanceConc!29982 BalanceConc!29982) tuple2!62858)

(assert (=> b!4990809 (= lt!2064378 (findLongestMatchZipperFastV2!59 z!4183 input!5597 totalInput!1012))))

(declare-fun b!4990810 () Bool)

(assert (=> b!4990810 (= e!3119347 e!3119349)))

(declare-fun res!2130769 () Bool)

(assert (=> b!4990810 (=> (not res!2130769) (not e!3119349))))

(assert (=> b!4990810 (= res!2130769 (= lt!2064373 lt!2064397))))

(assert (=> b!4990810 (= lt!2064373 (++!12601 (_1!34731 lt!2064374) (_2!34731 lt!2064374)))))

(declare-fun b!4990811 () Bool)

(declare-fun tp!1399123 () Bool)

(assert (=> b!4990811 (= e!3119353 (and (inv!75794 (c!851379 input!5597)) tp!1399123))))

(declare-fun b!4990812 () Bool)

(declare-fun isEmpty!31249 (BalanceConc!29982) Bool)

(assert (=> b!4990812 (= e!3119354 (not (isEmpty!31249 (_1!34732 lt!2064378))))))

(declare-fun b!4990813 () Bool)

(assert (=> b!4990813 (= e!3119343 e!3119356)))

(declare-fun res!2130764 () Bool)

(assert (=> b!4990813 (=> res!2130764 e!3119356)))

(assert (=> b!4990813 (= res!2130764 (not (isPrefix!5314 lt!2064384 lt!2064397)))))

(assert (=> b!4990813 (= lt!2064384 (_1!34731 lt!2064374))))

(declare-fun lt!2064376 () Unit!148879)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1251 (List!57875 List!57875 List!57875) Unit!148879)

(assert (=> b!4990813 (= lt!2064376 (lemmaIsPrefixSameLengthThenSameList!1251 lt!2064384 (_1!34731 lt!2064374) lt!2064397))))

(declare-fun b!4990814 () Bool)

(declare-fun tp_is_empty!36511 () Bool)

(assert (=> b!4990814 (= e!3119342 tp_is_empty!36511)))

(declare-fun b!4990815 () Bool)

(declare-fun tp!1399121 () Bool)

(declare-fun tp!1399120 () Bool)

(assert (=> b!4990815 (= e!3119342 (and tp!1399121 tp!1399120))))

(declare-fun b!4990816 () Bool)

(assert (=> b!4990816 (= e!3119348 e!3119350)))

(declare-fun res!2130767 () Bool)

(assert (=> b!4990816 (=> res!2130767 e!3119350)))

(assert (=> b!4990816 (= res!2130767 e!3119345)))

(declare-fun res!2130765 () Bool)

(assert (=> b!4990816 (=> (not res!2130765) (not e!3119345))))

(assert (=> b!4990816 (= res!2130765 (not lt!2064379))))

(assert (=> b!4990816 (= lt!2064379 (matchR!6729 r!12727 (_1!34731 lt!2064374)))))

(assert (= (and start!527470 res!2130766) b!4990808))

(assert (= (and b!4990808 res!2130770) b!4990801))

(assert (= (and b!4990801 res!2130761) b!4990809))

(assert (= (and b!4990809 res!2130771) b!4990810))

(assert (= (and b!4990810 res!2130769) b!4990806))

(assert (= (and b!4990806 (not res!2130762)) b!4990807))

(assert (= (and b!4990806 (not res!2130768)) b!4990800))

(assert (= (and b!4990806 res!2130773) b!4990812))

(assert (= (and b!4990806 (not res!2130763)) b!4990816))

(assert (= (and b!4990816 res!2130765) b!4990798))

(assert (= (and b!4990816 (not res!2130767)) b!4990805))

(assert (= (and b!4990805 (not res!2130772)) b!4990813))

(assert (= (and b!4990813 (not res!2130764)) b!4990802))

(get-info :version)

(assert (= (and start!527470 ((_ is ElementMatch!13757) r!12727)) b!4990814))

(assert (= (and start!527470 ((_ is Concat!22550) r!12727)) b!4990815))

(assert (= (and start!527470 ((_ is Star!13757) r!12727)) b!4990804))

(assert (= (and start!527470 ((_ is Union!13757) r!12727)) b!4990803))

(assert (= start!527470 b!4990811))

(assert (= (and start!527470 condSetEmpty!28226) setIsEmpty!28226))

(assert (= (and start!527470 (not condSetEmpty!28226)) setNonEmpty!28226))

(assert (= setNonEmpty!28226 b!4990799))

(assert (= start!527470 b!4990797))

(declare-fun m!6023566 () Bool)

(assert (=> b!4990810 m!6023566))

(declare-fun m!6023568 () Bool)

(assert (=> b!4990809 m!6023568))

(declare-fun m!6023570 () Bool)

(assert (=> b!4990809 m!6023570))

(declare-fun m!6023572 () Bool)

(assert (=> b!4990809 m!6023572))

(declare-fun m!6023574 () Bool)

(assert (=> b!4990809 m!6023574))

(declare-fun m!6023576 () Bool)

(assert (=> b!4990809 m!6023576))

(declare-fun m!6023578 () Bool)

(assert (=> b!4990809 m!6023578))

(declare-fun m!6023580 () Bool)

(assert (=> b!4990809 m!6023580))

(declare-fun m!6023582 () Bool)

(assert (=> setNonEmpty!28226 m!6023582))

(declare-fun m!6023584 () Bool)

(assert (=> b!4990805 m!6023584))

(declare-fun m!6023586 () Bool)

(assert (=> b!4990805 m!6023586))

(declare-fun m!6023588 () Bool)

(assert (=> b!4990805 m!6023588))

(declare-fun m!6023590 () Bool)

(assert (=> b!4990805 m!6023590))

(declare-fun m!6023592 () Bool)

(assert (=> b!4990805 m!6023592))

(declare-fun m!6023594 () Bool)

(assert (=> b!4990805 m!6023594))

(declare-fun m!6023596 () Bool)

(assert (=> b!4990802 m!6023596))

(declare-fun m!6023598 () Bool)

(assert (=> b!4990808 m!6023598))

(declare-fun m!6023600 () Bool)

(assert (=> b!4990808 m!6023600))

(declare-fun m!6023602 () Bool)

(assert (=> b!4990800 m!6023602))

(declare-fun m!6023604 () Bool)

(assert (=> b!4990807 m!6023604))

(assert (=> b!4990807 m!6023604))

(declare-fun m!6023606 () Bool)

(assert (=> b!4990807 m!6023606))

(assert (=> b!4990807 m!6023606))

(declare-fun m!6023608 () Bool)

(assert (=> b!4990807 m!6023608))

(declare-fun m!6023610 () Bool)

(assert (=> b!4990811 m!6023610))

(declare-fun m!6023612 () Bool)

(assert (=> b!4990816 m!6023612))

(declare-fun m!6023614 () Bool)

(assert (=> b!4990797 m!6023614))

(declare-fun m!6023616 () Bool)

(assert (=> b!4990812 m!6023616))

(declare-fun m!6023618 () Bool)

(assert (=> start!527470 m!6023618))

(declare-fun m!6023620 () Bool)

(assert (=> start!527470 m!6023620))

(declare-fun m!6023622 () Bool)

(assert (=> start!527470 m!6023622))

(declare-fun m!6023624 () Bool)

(assert (=> b!4990798 m!6023624))

(declare-fun m!6023626 () Bool)

(assert (=> b!4990813 m!6023626))

(declare-fun m!6023628 () Bool)

(assert (=> b!4990813 m!6023628))

(declare-fun m!6023630 () Bool)

(assert (=> b!4990801 m!6023630))

(declare-fun m!6023632 () Bool)

(assert (=> b!4990801 m!6023632))

(declare-fun m!6023634 () Bool)

(assert (=> b!4990801 m!6023634))

(declare-fun m!6023636 () Bool)

(assert (=> b!4990806 m!6023636))

(declare-fun m!6023638 () Bool)

(assert (=> b!4990806 m!6023638))

(declare-fun m!6023640 () Bool)

(assert (=> b!4990806 m!6023640))

(declare-fun m!6023642 () Bool)

(assert (=> b!4990806 m!6023642))

(assert (=> b!4990806 m!6023636))

(declare-fun m!6023644 () Bool)

(assert (=> b!4990806 m!6023644))

(declare-fun m!6023646 () Bool)

(assert (=> b!4990806 m!6023646))

(declare-fun m!6023648 () Bool)

(assert (=> b!4990806 m!6023648))

(assert (=> b!4990806 m!6023642))

(declare-fun m!6023650 () Bool)

(assert (=> b!4990806 m!6023650))

(declare-fun m!6023652 () Bool)

(assert (=> b!4990806 m!6023652))

(declare-fun m!6023654 () Bool)

(assert (=> b!4990806 m!6023654))

(declare-fun m!6023656 () Bool)

(assert (=> b!4990806 m!6023656))

(declare-fun m!6023658 () Bool)

(assert (=> b!4990806 m!6023658))

(assert (=> b!4990806 m!6023644))

(declare-fun m!6023660 () Bool)

(assert (=> b!4990806 m!6023660))

(declare-fun m!6023662 () Bool)

(assert (=> b!4990806 m!6023662))

(declare-fun m!6023664 () Bool)

(assert (=> b!4990806 m!6023664))

(check-sat (not b!4990808) (not b!4990815) (not b!4990812) (not b!4990809) (not setNonEmpty!28226) tp_is_empty!36511 (not b!4990802) (not b!4990810) (not b!4990799) (not start!527470) (not b!4990806) (not b!4990816) (not b!4990798) (not b!4990803) (not b!4990804) (not b!4990813) (not b!4990800) (not b!4990807) (not b!4990805) (not b!4990811) (not b!4990801) (not b!4990797))
(check-sat)
