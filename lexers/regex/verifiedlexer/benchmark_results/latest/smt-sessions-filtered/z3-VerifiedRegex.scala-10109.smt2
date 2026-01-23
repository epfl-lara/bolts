; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!529562 () Bool)

(assert start!529562)

(declare-fun b!5012893 () Bool)

(declare-fun e!3131747 () Bool)

(declare-fun tp!1405986 () Bool)

(assert (=> b!5012893 (= e!3131747 tp!1405986)))

(declare-fun b!5012894 () Bool)

(declare-fun e!3131743 () Bool)

(declare-datatypes ((C!27856 0))(
  ( (C!27857 (val!23294 Int)) )
))
(declare-datatypes ((List!58013 0))(
  ( (Nil!57889) (Cons!57889 (h!64337 C!27856) (t!370381 List!58013)) )
))
(declare-datatypes ((IArray!30705 0))(
  ( (IArray!30706 (innerList!15410 List!58013)) )
))
(declare-datatypes ((Conc!15322 0))(
  ( (Node!15322 (left!42325 Conc!15322) (right!42655 Conc!15322) (csize!30874 Int) (cheight!15533 Int)) (Leaf!25432 (xs!18648 IArray!30705) (csize!30875 Int)) (Empty!15322) )
))
(declare-datatypes ((BalanceConc!30074 0))(
  ( (BalanceConc!30075 (c!856287 Conc!15322)) )
))
(declare-fun totalInput!1012 () BalanceConc!30074)

(declare-fun tp!1405991 () Bool)

(declare-fun inv!76077 (Conc!15322) Bool)

(assert (=> b!5012894 (= e!3131743 (and (inv!76077 (c!856287 totalInput!1012)) tp!1405991))))

(declare-fun b!5012895 () Bool)

(declare-fun e!3131741 () Bool)

(declare-fun e!3131739 () Bool)

(assert (=> b!5012895 (= e!3131741 e!3131739)))

(declare-fun res!2137723 () Bool)

(assert (=> b!5012895 (=> (not res!2137723) (not e!3131739))))

(declare-fun lt!2073810 () List!58013)

(declare-fun lt!2073816 () List!58013)

(assert (=> b!5012895 (= res!2137723 (= lt!2073810 lt!2073816))))

(declare-datatypes ((tuple2!63056 0))(
  ( (tuple2!63057 (_1!34831 List!58013) (_2!34831 List!58013)) )
))
(declare-fun lt!2073808 () tuple2!63056)

(declare-fun ++!12651 (List!58013 List!58013) List!58013)

(assert (=> b!5012895 (= lt!2073810 (++!12651 (_1!34831 lt!2073808) (_2!34831 lt!2073808)))))

(declare-fun b!5012896 () Bool)

(declare-fun e!3131740 () Bool)

(declare-fun e!3131738 () Bool)

(assert (=> b!5012896 (= e!3131740 e!3131738)))

(declare-fun res!2137719 () Bool)

(assert (=> b!5012896 (=> res!2137719 e!3131738)))

(declare-fun e!3131746 () Bool)

(assert (=> b!5012896 (= res!2137719 e!3131746)))

(declare-fun res!2137726 () Bool)

(assert (=> b!5012896 (=> (not res!2137726) (not e!3131746))))

(declare-fun lt!2073815 () Bool)

(assert (=> b!5012896 (= res!2137726 (not lt!2073815))))

(declare-datatypes ((Regex!13803 0))(
  ( (ElementMatch!13803 (c!856288 C!27856)) (Concat!22596 (regOne!28118 Regex!13803) (regTwo!28118 Regex!13803)) (EmptyExpr!13803) (Star!13803 (reg!14132 Regex!13803)) (EmptyLang!13803) (Union!13803 (regOne!28119 Regex!13803) (regTwo!28119 Regex!13803)) )
))
(declare-fun r!12727 () Regex!13803)

(declare-fun matchR!6767 (Regex!13803 List!58013) Bool)

(assert (=> b!5012896 (= lt!2073815 (matchR!6767 r!12727 (_1!34831 lt!2073808)))))

(declare-fun b!5012897 () Bool)

(declare-fun e!3131742 () Bool)

(assert (=> b!5012897 (= e!3131742 e!3131741)))

(declare-fun res!2137729 () Bool)

(assert (=> b!5012897 (=> (not res!2137729) (not e!3131741))))

(declare-fun lt!2073826 () List!58013)

(assert (=> b!5012897 (= res!2137729 (= lt!2073826 lt!2073816))))

(declare-fun lt!2073818 () List!58013)

(declare-fun lt!2073817 () List!58013)

(assert (=> b!5012897 (= lt!2073826 (++!12651 lt!2073818 lt!2073817))))

(declare-datatypes ((tuple2!63058 0))(
  ( (tuple2!63059 (_1!34832 BalanceConc!30074) (_2!34832 BalanceConc!30074)) )
))
(declare-fun lt!2073805 () tuple2!63058)

(declare-fun list!18640 (BalanceConc!30074) List!58013)

(assert (=> b!5012897 (= lt!2073817 (list!18640 (_2!34832 lt!2073805)))))

(assert (=> b!5012897 (= lt!2073818 (list!18640 (_1!34832 lt!2073805)))))

(declare-fun findLongestMatch!1816 (Regex!13803 List!58013) tuple2!63056)

(assert (=> b!5012897 (= lt!2073808 (findLongestMatch!1816 r!12727 lt!2073816))))

(declare-fun lt!2073821 () Int)

(declare-fun lt!2073804 () Int)

(declare-fun input!5597 () BalanceConc!30074)

(declare-fun size!38484 (BalanceConc!30074) Int)

(assert (=> b!5012897 (= lt!2073821 (- lt!2073804 (size!38484 input!5597)))))

(assert (=> b!5012897 (= lt!2073804 (size!38484 totalInput!1012))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!58014 0))(
  ( (Nil!57890) (Cons!57890 (h!64338 Regex!13803) (t!370382 List!58014)) )
))
(declare-datatypes ((Context!6456 0))(
  ( (Context!6457 (exprs!3728 List!58014)) )
))
(declare-fun z!4183 () (InoxSet Context!6456))

(declare-fun findLongestMatchZipperFastV2!105 ((InoxSet Context!6456) BalanceConc!30074 BalanceConc!30074) tuple2!63058)

(assert (=> b!5012897 (= lt!2073805 (findLongestMatchZipperFastV2!105 z!4183 input!5597 totalInput!1012))))

(declare-fun b!5012898 () Bool)

(declare-fun e!3131753 () Bool)

(declare-fun tp!1405992 () Bool)

(assert (=> b!5012898 (= e!3131753 (and (inv!76077 (c!856287 input!5597)) tp!1405992))))

(declare-fun b!5012900 () Bool)

(declare-fun e!3131749 () Bool)

(declare-fun isEmpty!31359 (BalanceConc!30074) Bool)

(assert (=> b!5012900 (= e!3131749 (not (isEmpty!31359 (_1!34832 lt!2073805))))))

(declare-fun setNonEmpty!28454 () Bool)

(declare-fun setRes!28454 () Bool)

(declare-fun tp!1405987 () Bool)

(declare-fun setElem!28454 () Context!6456)

(declare-fun inv!76078 (Context!6456) Bool)

(assert (=> setNonEmpty!28454 (= setRes!28454 (and tp!1405987 (inv!76078 setElem!28454) e!3131747))))

(declare-fun setRest!28454 () (InoxSet Context!6456))

(assert (=> setNonEmpty!28454 (= z!4183 ((_ map or) (store ((as const (Array Context!6456 Bool)) false) setElem!28454 true) setRest!28454))))

(declare-fun b!5012901 () Bool)

(declare-fun e!3131744 () Bool)

(declare-fun tp!1405989 () Bool)

(declare-fun tp!1405985 () Bool)

(assert (=> b!5012901 (= e!3131744 (and tp!1405989 tp!1405985))))

(declare-fun setIsEmpty!28454 () Bool)

(assert (=> setIsEmpty!28454 setRes!28454))

(declare-fun b!5012902 () Bool)

(declare-fun isEmpty!31360 (List!58013) Bool)

(assert (=> b!5012902 (= e!3131746 (not (isEmpty!31360 (_1!34831 lt!2073808))))))

(declare-fun b!5012903 () Bool)

(declare-fun res!2137727 () Bool)

(declare-fun e!3131748 () Bool)

(assert (=> b!5012903 (=> res!2137727 e!3131748)))

(declare-fun isPrefix!5356 (List!58013 List!58013) Bool)

(assert (=> b!5012903 (= res!2137727 (not (isPrefix!5356 (_1!34831 lt!2073808) lt!2073816)))))

(declare-fun b!5012904 () Bool)

(declare-fun tp!1405984 () Bool)

(declare-fun tp!1405990 () Bool)

(assert (=> b!5012904 (= e!3131744 (and tp!1405984 tp!1405990))))

(declare-fun b!5012899 () Bool)

(declare-fun tp!1405988 () Bool)

(assert (=> b!5012899 (= e!3131744 tp!1405988)))

(declare-fun res!2137722 () Bool)

(declare-fun e!3131752 () Bool)

(assert (=> start!529562 (=> (not res!2137722) (not e!3131752))))

(declare-fun validRegex!6100 (Regex!13803) Bool)

(assert (=> start!529562 (= res!2137722 (validRegex!6100 r!12727))))

(assert (=> start!529562 e!3131752))

(assert (=> start!529562 e!3131744))

(declare-fun inv!76079 (BalanceConc!30074) Bool)

(assert (=> start!529562 (and (inv!76079 input!5597) e!3131753)))

(declare-fun condSetEmpty!28454 () Bool)

(assert (=> start!529562 (= condSetEmpty!28454 (= z!4183 ((as const (Array Context!6456 Bool)) false)))))

(assert (=> start!529562 setRes!28454))

(assert (=> start!529562 (and (inv!76079 totalInput!1012) e!3131743)))

(declare-fun b!5012905 () Bool)

(declare-fun e!3131745 () Bool)

(declare-fun lt!2073824 () tuple2!63056)

(assert (=> b!5012905 (= e!3131745 (matchR!6767 r!12727 (_1!34831 lt!2073824)))))

(declare-fun b!5012906 () Bool)

(assert (=> b!5012906 (= e!3131748 (isPrefix!5356 lt!2073818 lt!2073816))))

(declare-fun b!5012907 () Bool)

(declare-fun e!3131750 () Bool)

(assert (=> b!5012907 (= e!3131752 e!3131750)))

(declare-fun res!2137720 () Bool)

(assert (=> b!5012907 (=> (not res!2137720) (not e!3131750))))

(declare-datatypes ((List!58015 0))(
  ( (Nil!57891) (Cons!57891 (h!64339 Context!6456) (t!370383 List!58015)) )
))
(declare-fun lt!2073825 () List!58015)

(declare-fun unfocusZipper!330 (List!58015) Regex!13803)

(assert (=> b!5012907 (= res!2137720 (= (unfocusZipper!330 lt!2073825) r!12727))))

(declare-fun toList!8088 ((InoxSet Context!6456)) List!58015)

(assert (=> b!5012907 (= lt!2073825 (toList!8088 z!4183))))

(declare-fun b!5012908 () Bool)

(assert (=> b!5012908 (= e!3131750 e!3131742)))

(declare-fun res!2137721 () Bool)

(assert (=> b!5012908 (=> (not res!2137721) (not e!3131742))))

(declare-fun lt!2073812 () List!58013)

(declare-fun isSuffix!1369 (List!58013 List!58013) Bool)

(assert (=> b!5012908 (= res!2137721 (isSuffix!1369 lt!2073816 lt!2073812))))

(assert (=> b!5012908 (= lt!2073812 (list!18640 totalInput!1012))))

(assert (=> b!5012908 (= lt!2073816 (list!18640 input!5597))))

(declare-fun b!5012909 () Bool)

(assert (=> b!5012909 (= e!3131738 e!3131748)))

(declare-fun res!2137731 () Bool)

(assert (=> b!5012909 (=> res!2137731 e!3131748)))

(declare-fun lt!2073809 () Int)

(declare-fun lt!2073811 () Int)

(assert (=> b!5012909 (= res!2137731 (or (> lt!2073809 lt!2073811) (<= lt!2073811 lt!2073809)))))

(assert (=> b!5012909 (= lt!2073811 (size!38484 (_1!34832 lt!2073805)))))

(declare-fun size!38485 (List!58013) Int)

(assert (=> b!5012909 (= lt!2073809 (size!38485 (_1!34831 lt!2073808)))))

(declare-fun lt!2073807 () Bool)

(assert (=> b!5012909 (= (matchR!6767 r!12727 lt!2073818) lt!2073807)))

(declare-datatypes ((Unit!149103 0))(
  ( (Unit!149104) )
))
(declare-fun lt!2073819 () Unit!149103)

(declare-fun theoremZipperRegexEquiv!175 ((InoxSet Context!6456) List!58015 Regex!13803 List!58013) Unit!149103)

(assert (=> b!5012909 (= lt!2073819 (theoremZipperRegexEquiv!175 z!4183 lt!2073825 r!12727 lt!2073818))))

(declare-fun matchZipper!571 ((InoxSet Context!6456) List!58013) Bool)

(assert (=> b!5012909 (= lt!2073815 (matchZipper!571 z!4183 (_1!34831 lt!2073808)))))

(declare-fun lt!2073822 () Unit!149103)

(assert (=> b!5012909 (= lt!2073822 (theoremZipperRegexEquiv!175 z!4183 lt!2073825 r!12727 (_1!34831 lt!2073808)))))

(declare-fun b!5012910 () Bool)

(assert (=> b!5012910 (= e!3131739 (not e!3131740))))

(declare-fun res!2137725 () Bool)

(assert (=> b!5012910 (=> res!2137725 e!3131740)))

(assert (=> b!5012910 (= res!2137725 e!3131749)))

(declare-fun res!2137728 () Bool)

(assert (=> b!5012910 (=> (not res!2137728) (not e!3131749))))

(assert (=> b!5012910 (= res!2137728 (not lt!2073807))))

(assert (=> b!5012910 (= lt!2073807 (matchZipper!571 z!4183 lt!2073818))))

(assert (=> b!5012910 e!3131745))

(declare-fun res!2137724 () Bool)

(assert (=> b!5012910 (=> res!2137724 e!3131745)))

(assert (=> b!5012910 (= res!2137724 (isEmpty!31360 (_1!34831 lt!2073824)))))

(declare-fun findLongestMatchInner!1992 (Regex!13803 List!58013 Int List!58013 List!58013 Int) tuple2!63056)

(assert (=> b!5012910 (= lt!2073824 (findLongestMatchInner!1992 r!12727 Nil!57889 (size!38485 Nil!57889) lt!2073816 lt!2073816 (size!38485 lt!2073816)))))

(declare-fun lt!2073803 () Unit!149103)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1945 (Regex!13803 List!58013) Unit!149103)

(assert (=> b!5012910 (= lt!2073803 (longestMatchIsAcceptedByMatchOrIsEmpty!1945 r!12727 lt!2073816))))

(declare-fun e!3131751 () Bool)

(assert (=> b!5012910 e!3131751))

(declare-fun res!2137730 () Bool)

(assert (=> b!5012910 (=> res!2137730 e!3131751)))

(declare-fun lt!2073806 () Int)

(assert (=> b!5012910 (= res!2137730 (= lt!2073806 0))))

(declare-fun findLongestMatchInnerZipperFastV2!143 ((InoxSet Context!6456) Int BalanceConc!30074 Int) Int)

(assert (=> b!5012910 (= lt!2073806 (findLongestMatchInnerZipperFastV2!143 z!4183 lt!2073821 totalInput!1012 lt!2073804))))

(declare-fun lt!2073820 () Unit!149103)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!62 ((InoxSet Context!6456) Int BalanceConc!30074) Unit!149103)

(assert (=> b!5012910 (= lt!2073820 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!62 z!4183 lt!2073821 totalInput!1012))))

(declare-fun take!662 (List!58013 Int) List!58013)

(assert (=> b!5012910 (isPrefix!5356 (take!662 lt!2073812 lt!2073821) lt!2073812)))

(declare-fun lt!2073813 () Unit!149103)

(declare-fun lemmaTakeIsPrefix!156 (List!58013 Int) Unit!149103)

(assert (=> b!5012910 (= lt!2073813 (lemmaTakeIsPrefix!156 lt!2073812 lt!2073821))))

(assert (=> b!5012910 (isPrefix!5356 (_1!34831 lt!2073808) lt!2073810)))

(declare-fun lt!2073823 () Unit!149103)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3454 (List!58013 List!58013) Unit!149103)

(assert (=> b!5012910 (= lt!2073823 (lemmaConcatTwoListThenFirstIsPrefix!3454 (_1!34831 lt!2073808) (_2!34831 lt!2073808)))))

(assert (=> b!5012910 (isPrefix!5356 lt!2073818 lt!2073826)))

(declare-fun lt!2073814 () Unit!149103)

(assert (=> b!5012910 (= lt!2073814 (lemmaConcatTwoListThenFirstIsPrefix!3454 lt!2073818 lt!2073817))))

(declare-fun b!5012911 () Bool)

(declare-fun tp_is_empty!36603 () Bool)

(assert (=> b!5012911 (= e!3131744 tp_is_empty!36603)))

(declare-fun b!5012912 () Bool)

(declare-fun drop!2466 (List!58013 Int) List!58013)

(assert (=> b!5012912 (= e!3131751 (matchZipper!571 z!4183 (take!662 (drop!2466 lt!2073812 lt!2073821) lt!2073806)))))

(assert (= (and start!529562 res!2137722) b!5012907))

(assert (= (and b!5012907 res!2137720) b!5012908))

(assert (= (and b!5012908 res!2137721) b!5012897))

(assert (= (and b!5012897 res!2137729) b!5012895))

(assert (= (and b!5012895 res!2137723) b!5012910))

(assert (= (and b!5012910 (not res!2137730)) b!5012912))

(assert (= (and b!5012910 (not res!2137724)) b!5012905))

(assert (= (and b!5012910 res!2137728) b!5012900))

(assert (= (and b!5012910 (not res!2137725)) b!5012896))

(assert (= (and b!5012896 res!2137726) b!5012902))

(assert (= (and b!5012896 (not res!2137719)) b!5012909))

(assert (= (and b!5012909 (not res!2137731)) b!5012903))

(assert (= (and b!5012903 (not res!2137727)) b!5012906))

(get-info :version)

(assert (= (and start!529562 ((_ is ElementMatch!13803) r!12727)) b!5012911))

(assert (= (and start!529562 ((_ is Concat!22596) r!12727)) b!5012901))

(assert (= (and start!529562 ((_ is Star!13803) r!12727)) b!5012899))

(assert (= (and start!529562 ((_ is Union!13803) r!12727)) b!5012904))

(assert (= start!529562 b!5012898))

(assert (= (and start!529562 condSetEmpty!28454) setIsEmpty!28454))

(assert (= (and start!529562 (not condSetEmpty!28454)) setNonEmpty!28454))

(assert (= setNonEmpty!28454 b!5012893))

(assert (= start!529562 b!5012894))

(declare-fun m!6047544 () Bool)

(assert (=> b!5012912 m!6047544))

(assert (=> b!5012912 m!6047544))

(declare-fun m!6047546 () Bool)

(assert (=> b!5012912 m!6047546))

(assert (=> b!5012912 m!6047546))

(declare-fun m!6047548 () Bool)

(assert (=> b!5012912 m!6047548))

(declare-fun m!6047550 () Bool)

(assert (=> b!5012894 m!6047550))

(declare-fun m!6047552 () Bool)

(assert (=> b!5012908 m!6047552))

(declare-fun m!6047554 () Bool)

(assert (=> b!5012908 m!6047554))

(declare-fun m!6047556 () Bool)

(assert (=> b!5012908 m!6047556))

(declare-fun m!6047558 () Bool)

(assert (=> b!5012898 m!6047558))

(declare-fun m!6047560 () Bool)

(assert (=> b!5012896 m!6047560))

(declare-fun m!6047562 () Bool)

(assert (=> start!529562 m!6047562))

(declare-fun m!6047564 () Bool)

(assert (=> start!529562 m!6047564))

(declare-fun m!6047566 () Bool)

(assert (=> start!529562 m!6047566))

(declare-fun m!6047568 () Bool)

(assert (=> b!5012910 m!6047568))

(declare-fun m!6047570 () Bool)

(assert (=> b!5012910 m!6047570))

(declare-fun m!6047572 () Bool)

(assert (=> b!5012910 m!6047572))

(declare-fun m!6047574 () Bool)

(assert (=> b!5012910 m!6047574))

(declare-fun m!6047576 () Bool)

(assert (=> b!5012910 m!6047576))

(declare-fun m!6047578 () Bool)

(assert (=> b!5012910 m!6047578))

(declare-fun m!6047580 () Bool)

(assert (=> b!5012910 m!6047580))

(declare-fun m!6047582 () Bool)

(assert (=> b!5012910 m!6047582))

(declare-fun m!6047584 () Bool)

(assert (=> b!5012910 m!6047584))

(assert (=> b!5012910 m!6047576))

(declare-fun m!6047586 () Bool)

(assert (=> b!5012910 m!6047586))

(declare-fun m!6047588 () Bool)

(assert (=> b!5012910 m!6047588))

(assert (=> b!5012910 m!6047568))

(assert (=> b!5012910 m!6047570))

(declare-fun m!6047590 () Bool)

(assert (=> b!5012910 m!6047590))

(declare-fun m!6047592 () Bool)

(assert (=> b!5012910 m!6047592))

(declare-fun m!6047594 () Bool)

(assert (=> b!5012910 m!6047594))

(declare-fun m!6047596 () Bool)

(assert (=> b!5012910 m!6047596))

(declare-fun m!6047598 () Bool)

(assert (=> b!5012897 m!6047598))

(declare-fun m!6047600 () Bool)

(assert (=> b!5012897 m!6047600))

(declare-fun m!6047602 () Bool)

(assert (=> b!5012897 m!6047602))

(declare-fun m!6047604 () Bool)

(assert (=> b!5012897 m!6047604))

(declare-fun m!6047606 () Bool)

(assert (=> b!5012897 m!6047606))

(declare-fun m!6047608 () Bool)

(assert (=> b!5012897 m!6047608))

(declare-fun m!6047610 () Bool)

(assert (=> b!5012897 m!6047610))

(declare-fun m!6047612 () Bool)

(assert (=> b!5012906 m!6047612))

(declare-fun m!6047614 () Bool)

(assert (=> b!5012902 m!6047614))

(declare-fun m!6047616 () Bool)

(assert (=> setNonEmpty!28454 m!6047616))

(declare-fun m!6047618 () Bool)

(assert (=> b!5012905 m!6047618))

(declare-fun m!6047620 () Bool)

(assert (=> b!5012900 m!6047620))

(declare-fun m!6047622 () Bool)

(assert (=> b!5012895 m!6047622))

(declare-fun m!6047624 () Bool)

(assert (=> b!5012903 m!6047624))

(declare-fun m!6047626 () Bool)

(assert (=> b!5012909 m!6047626))

(declare-fun m!6047628 () Bool)

(assert (=> b!5012909 m!6047628))

(declare-fun m!6047630 () Bool)

(assert (=> b!5012909 m!6047630))

(declare-fun m!6047632 () Bool)

(assert (=> b!5012909 m!6047632))

(declare-fun m!6047634 () Bool)

(assert (=> b!5012909 m!6047634))

(declare-fun m!6047636 () Bool)

(assert (=> b!5012909 m!6047636))

(declare-fun m!6047638 () Bool)

(assert (=> b!5012907 m!6047638))

(declare-fun m!6047640 () Bool)

(assert (=> b!5012907 m!6047640))

(check-sat (not b!5012896) (not b!5012900) (not setNonEmpty!28454) (not b!5012897) (not b!5012904) (not b!5012902) (not b!5012893) (not b!5012906) (not b!5012899) (not b!5012908) tp_is_empty!36603 (not b!5012905) (not b!5012907) (not b!5012910) (not b!5012912) (not b!5012898) (not b!5012894) (not b!5012909) (not b!5012903) (not b!5012895) (not b!5012901) (not start!529562))
(check-sat)
