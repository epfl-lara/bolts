; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527430 () Bool)

(assert start!527430)

(declare-fun b!4989614 () Bool)

(declare-fun e!3118384 () Bool)

(declare-fun tp!1398580 () Bool)

(assert (=> b!4989614 (= e!3118384 tp!1398580)))

(declare-fun lt!2062898 () Int)

(declare-fun e!3118377 () Bool)

(declare-fun lt!2062896 () Int)

(declare-datatypes ((C!27724 0))(
  ( (C!27725 (val!23228 Int)) )
))
(declare-datatypes ((List!57815 0))(
  ( (Nil!57691) (Cons!57691 (h!64139 C!27724) (t!370141 List!57815)) )
))
(declare-fun lt!2062903 () List!57815)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13737 0))(
  ( (ElementMatch!13737 (c!851339 C!27724)) (Concat!22530 (regOne!27986 Regex!13737) (regTwo!27986 Regex!13737)) (EmptyExpr!13737) (Star!13737 (reg!14066 Regex!13737)) (EmptyLang!13737) (Union!13737 (regOne!27987 Regex!13737) (regTwo!27987 Regex!13737)) )
))
(declare-datatypes ((List!57816 0))(
  ( (Nil!57692) (Cons!57692 (h!64140 Regex!13737) (t!370142 List!57816)) )
))
(declare-datatypes ((Context!6324 0))(
  ( (Context!6325 (exprs!3662 List!57816)) )
))
(declare-fun z!4183 () (InoxSet Context!6324))

(declare-fun b!4989615 () Bool)

(declare-fun matchZipper!513 ((InoxSet Context!6324) List!57815) Bool)

(declare-fun take!602 (List!57815 Int) List!57815)

(declare-fun drop!2400 (List!57815 Int) List!57815)

(assert (=> b!4989615 (= e!3118377 (matchZipper!513 z!4183 (take!602 (drop!2400 lt!2062903 lt!2062898) lt!2062896)))))

(declare-fun res!2129998 () Bool)

(declare-fun e!3118378 () Bool)

(assert (=> start!527430 (=> (not res!2129998) (not e!3118378))))

(declare-fun r!12727 () Regex!13737)

(declare-fun validRegex!6034 (Regex!13737) Bool)

(assert (=> start!527430 (= res!2129998 (validRegex!6034 r!12727))))

(assert (=> start!527430 e!3118378))

(declare-fun e!3118380 () Bool)

(assert (=> start!527430 e!3118380))

(declare-fun condSetEmpty!28166 () Bool)

(assert (=> start!527430 (= condSetEmpty!28166 (= z!4183 ((as const (Array Context!6324 Bool)) false)))))

(declare-fun setRes!28166 () Bool)

(assert (=> start!527430 setRes!28166))

(declare-datatypes ((IArray!30573 0))(
  ( (IArray!30574 (innerList!15344 List!57815)) )
))
(declare-datatypes ((Conc!15256 0))(
  ( (Node!15256 (left!42214 Conc!15256) (right!42544 Conc!15256) (csize!30742 Int) (cheight!15467 Int)) (Leaf!25333 (xs!18582 IArray!30573) (csize!30743 Int)) (Empty!15256) )
))
(declare-datatypes ((BalanceConc!29942 0))(
  ( (BalanceConc!29943 (c!851340 Conc!15256)) )
))
(declare-fun input!5597 () BalanceConc!29942)

(declare-fun e!3118376 () Bool)

(declare-fun inv!75704 (BalanceConc!29942) Bool)

(assert (=> start!527430 (and (inv!75704 input!5597) e!3118376)))

(declare-fun totalInput!1012 () BalanceConc!29942)

(declare-fun e!3118382 () Bool)

(assert (=> start!527430 (and (inv!75704 totalInput!1012) e!3118382)))

(declare-fun b!4989616 () Bool)

(declare-fun tp_is_empty!36471 () Bool)

(assert (=> b!4989616 (= e!3118380 tp_is_empty!36471)))

(declare-fun b!4989617 () Bool)

(declare-fun e!3118375 () Bool)

(declare-datatypes ((tuple2!62776 0))(
  ( (tuple2!62777 (_1!34691 BalanceConc!29942) (_2!34691 BalanceConc!29942)) )
))
(declare-fun lt!2062904 () tuple2!62776)

(declare-fun isEmpty!31208 (BalanceConc!29942) Bool)

(assert (=> b!4989617 (= e!3118375 (isEmpty!31208 (_1!34691 lt!2062904)))))

(declare-fun b!4989618 () Bool)

(declare-fun tp!1398587 () Bool)

(assert (=> b!4989618 (= e!3118380 tp!1398587)))

(declare-fun b!4989619 () Bool)

(declare-fun e!3118385 () Bool)

(assert (=> b!4989619 (= e!3118378 e!3118385)))

(declare-fun res!2130005 () Bool)

(assert (=> b!4989619 (=> (not res!2130005) (not e!3118385))))

(declare-fun lt!2062888 () List!57815)

(declare-fun isSuffix!1303 (List!57815 List!57815) Bool)

(assert (=> b!4989619 (= res!2130005 (isSuffix!1303 lt!2062888 lt!2062903))))

(declare-fun list!18540 (BalanceConc!29942) List!57815)

(assert (=> b!4989619 (= lt!2062903 (list!18540 totalInput!1012))))

(assert (=> b!4989619 (= lt!2062888 (list!18540 input!5597))))

(declare-fun setNonEmpty!28166 () Bool)

(declare-fun setElem!28166 () Context!6324)

(declare-fun tp!1398583 () Bool)

(declare-fun inv!75705 (Context!6324) Bool)

(assert (=> setNonEmpty!28166 (= setRes!28166 (and tp!1398583 (inv!75705 setElem!28166) e!3118384))))

(declare-fun setRest!28166 () (InoxSet Context!6324))

(assert (=> setNonEmpty!28166 (= z!4183 ((_ map or) (store ((as const (Array Context!6324 Bool)) false) setElem!28166 true) setRest!28166))))

(declare-fun b!4989620 () Bool)

(declare-fun tp!1398582 () Bool)

(declare-fun inv!75706 (Conc!15256) Bool)

(assert (=> b!4989620 (= e!3118376 (and (inv!75706 (c!851340 input!5597)) tp!1398582))))

(declare-fun b!4989621 () Bool)

(declare-fun tp!1398586 () Bool)

(assert (=> b!4989621 (= e!3118382 (and (inv!75706 (c!851340 totalInput!1012)) tp!1398586))))

(declare-fun b!4989622 () Bool)

(declare-fun tp!1398585 () Bool)

(declare-fun tp!1398588 () Bool)

(assert (=> b!4989622 (= e!3118380 (and tp!1398585 tp!1398588))))

(declare-fun b!4989623 () Bool)

(declare-fun e!3118381 () Bool)

(assert (=> b!4989623 (= e!3118385 e!3118381)))

(declare-fun res!2130004 () Bool)

(assert (=> b!4989623 (=> (not res!2130004) (not e!3118381))))

(declare-fun lt!2062891 () List!57815)

(assert (=> b!4989623 (= res!2130004 (= lt!2062891 lt!2062888))))

(declare-fun lt!2062892 () List!57815)

(declare-fun lt!2062900 () List!57815)

(declare-fun ++!12581 (List!57815 List!57815) List!57815)

(assert (=> b!4989623 (= lt!2062891 (++!12581 lt!2062892 lt!2062900))))

(assert (=> b!4989623 (= lt!2062900 (list!18540 (_2!34691 lt!2062904)))))

(assert (=> b!4989623 (= lt!2062892 (list!18540 (_1!34691 lt!2062904)))))

(declare-datatypes ((tuple2!62778 0))(
  ( (tuple2!62779 (_1!34692 List!57815) (_2!34692 List!57815)) )
))
(declare-fun lt!2062889 () tuple2!62778)

(declare-fun findLongestMatch!1750 (Regex!13737 List!57815) tuple2!62778)

(assert (=> b!4989623 (= lt!2062889 (findLongestMatch!1750 r!12727 lt!2062888))))

(declare-fun lt!2062894 () Int)

(declare-fun size!38326 (BalanceConc!29942) Int)

(assert (=> b!4989623 (= lt!2062898 (- lt!2062894 (size!38326 input!5597)))))

(assert (=> b!4989623 (= lt!2062894 (size!38326 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!39 ((InoxSet Context!6324) BalanceConc!29942 BalanceConc!29942) tuple2!62776)

(assert (=> b!4989623 (= lt!2062904 (findLongestMatchZipperFastV2!39 z!4183 input!5597 totalInput!1012))))

(declare-fun b!4989624 () Bool)

(declare-fun tp!1398584 () Bool)

(declare-fun tp!1398581 () Bool)

(assert (=> b!4989624 (= e!3118380 (and tp!1398584 tp!1398581))))

(declare-fun b!4989625 () Bool)

(declare-fun e!3118383 () Bool)

(assert (=> b!4989625 (= e!3118383 (not true))))

(declare-fun lt!2062902 () Bool)

(assert (=> b!4989625 (= lt!2062902 e!3118375)))

(declare-fun res!2129999 () Bool)

(assert (=> b!4989625 (=> res!2129999 e!3118375)))

(assert (=> b!4989625 (= res!2129999 (matchZipper!513 z!4183 lt!2062892))))

(declare-fun e!3118379 () Bool)

(assert (=> b!4989625 e!3118379))

(declare-fun res!2130003 () Bool)

(assert (=> b!4989625 (=> res!2130003 e!3118379)))

(declare-fun lt!2062897 () tuple2!62778)

(declare-fun isEmpty!31209 (List!57815) Bool)

(assert (=> b!4989625 (= res!2130003 (isEmpty!31209 (_1!34692 lt!2062897)))))

(declare-fun findLongestMatchInner!1926 (Regex!13737 List!57815 Int List!57815 List!57815 Int) tuple2!62778)

(declare-fun size!38327 (List!57815) Int)

(assert (=> b!4989625 (= lt!2062897 (findLongestMatchInner!1926 r!12727 Nil!57691 (size!38327 Nil!57691) lt!2062888 lt!2062888 (size!38327 lt!2062888)))))

(declare-datatypes ((Unit!148839 0))(
  ( (Unit!148840) )
))
(declare-fun lt!2062899 () Unit!148839)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1887 (Regex!13737 List!57815) Unit!148839)

(assert (=> b!4989625 (= lt!2062899 (longestMatchIsAcceptedByMatchOrIsEmpty!1887 r!12727 lt!2062888))))

(assert (=> b!4989625 e!3118377))

(declare-fun res!2130000 () Bool)

(assert (=> b!4989625 (=> res!2130000 e!3118377)))

(assert (=> b!4989625 (= res!2130000 (= lt!2062896 0))))

(declare-fun findLongestMatchInnerZipperFastV2!77 ((InoxSet Context!6324) Int BalanceConc!29942 Int) Int)

(assert (=> b!4989625 (= lt!2062896 (findLongestMatchInnerZipperFastV2!77 z!4183 lt!2062898 totalInput!1012 lt!2062894))))

(declare-fun lt!2062887 () Unit!148839)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!4 ((InoxSet Context!6324) Int BalanceConc!29942) Unit!148839)

(assert (=> b!4989625 (= lt!2062887 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!4 z!4183 lt!2062898 totalInput!1012))))

(declare-fun isPrefix!5294 (List!57815 List!57815) Bool)

(assert (=> b!4989625 (isPrefix!5294 (take!602 lt!2062903 lt!2062898) lt!2062903)))

(declare-fun lt!2062895 () Unit!148839)

(declare-fun lemmaTakeIsPrefix!96 (List!57815 Int) Unit!148839)

(assert (=> b!4989625 (= lt!2062895 (lemmaTakeIsPrefix!96 lt!2062903 lt!2062898))))

(declare-fun lt!2062901 () List!57815)

(assert (=> b!4989625 (isPrefix!5294 (_1!34692 lt!2062889) lt!2062901)))

(declare-fun lt!2062893 () Unit!148839)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3392 (List!57815 List!57815) Unit!148839)

(assert (=> b!4989625 (= lt!2062893 (lemmaConcatTwoListThenFirstIsPrefix!3392 (_1!34692 lt!2062889) (_2!34692 lt!2062889)))))

(assert (=> b!4989625 (isPrefix!5294 lt!2062892 lt!2062891)))

(declare-fun lt!2062890 () Unit!148839)

(assert (=> b!4989625 (= lt!2062890 (lemmaConcatTwoListThenFirstIsPrefix!3392 lt!2062892 lt!2062900))))

(declare-fun b!4989626 () Bool)

(declare-fun matchR!6709 (Regex!13737 List!57815) Bool)

(assert (=> b!4989626 (= e!3118379 (matchR!6709 r!12727 (_1!34692 lt!2062897)))))

(declare-fun setIsEmpty!28166 () Bool)

(assert (=> setIsEmpty!28166 setRes!28166))

(declare-fun b!4989627 () Bool)

(declare-fun res!2130002 () Bool)

(assert (=> b!4989627 (=> (not res!2130002) (not e!3118378))))

(declare-datatypes ((List!57817 0))(
  ( (Nil!57693) (Cons!57693 (h!64141 Context!6324) (t!370143 List!57817)) )
))
(declare-fun unfocusZipper!264 (List!57817) Regex!13737)

(declare-fun toList!8022 ((InoxSet Context!6324)) List!57817)

(assert (=> b!4989627 (= res!2130002 (= (unfocusZipper!264 (toList!8022 z!4183)) r!12727))))

(declare-fun b!4989628 () Bool)

(assert (=> b!4989628 (= e!3118381 e!3118383)))

(declare-fun res!2130001 () Bool)

(assert (=> b!4989628 (=> (not res!2130001) (not e!3118383))))

(assert (=> b!4989628 (= res!2130001 (= lt!2062901 lt!2062888))))

(assert (=> b!4989628 (= lt!2062901 (++!12581 (_1!34692 lt!2062889) (_2!34692 lt!2062889)))))

(assert (= (and start!527430 res!2129998) b!4989627))

(assert (= (and b!4989627 res!2130002) b!4989619))

(assert (= (and b!4989619 res!2130005) b!4989623))

(assert (= (and b!4989623 res!2130004) b!4989628))

(assert (= (and b!4989628 res!2130001) b!4989625))

(assert (= (and b!4989625 (not res!2130000)) b!4989615))

(assert (= (and b!4989625 (not res!2130003)) b!4989626))

(assert (= (and b!4989625 (not res!2129999)) b!4989617))

(get-info :version)

(assert (= (and start!527430 ((_ is ElementMatch!13737) r!12727)) b!4989616))

(assert (= (and start!527430 ((_ is Concat!22530) r!12727)) b!4989624))

(assert (= (and start!527430 ((_ is Star!13737) r!12727)) b!4989618))

(assert (= (and start!527430 ((_ is Union!13737) r!12727)) b!4989622))

(assert (= (and start!527430 condSetEmpty!28166) setIsEmpty!28166))

(assert (= (and start!527430 (not condSetEmpty!28166)) setNonEmpty!28166))

(assert (= setNonEmpty!28166 b!4989614))

(assert (= start!527430 b!4989620))

(assert (= start!527430 b!4989621))

(declare-fun m!6021632 () Bool)

(assert (=> b!4989623 m!6021632))

(declare-fun m!6021634 () Bool)

(assert (=> b!4989623 m!6021634))

(declare-fun m!6021636 () Bool)

(assert (=> b!4989623 m!6021636))

(declare-fun m!6021638 () Bool)

(assert (=> b!4989623 m!6021638))

(declare-fun m!6021640 () Bool)

(assert (=> b!4989623 m!6021640))

(declare-fun m!6021642 () Bool)

(assert (=> b!4989623 m!6021642))

(declare-fun m!6021644 () Bool)

(assert (=> b!4989623 m!6021644))

(declare-fun m!6021646 () Bool)

(assert (=> b!4989615 m!6021646))

(assert (=> b!4989615 m!6021646))

(declare-fun m!6021648 () Bool)

(assert (=> b!4989615 m!6021648))

(assert (=> b!4989615 m!6021648))

(declare-fun m!6021650 () Bool)

(assert (=> b!4989615 m!6021650))

(declare-fun m!6021652 () Bool)

(assert (=> setNonEmpty!28166 m!6021652))

(declare-fun m!6021654 () Bool)

(assert (=> b!4989617 m!6021654))

(declare-fun m!6021656 () Bool)

(assert (=> b!4989620 m!6021656))

(declare-fun m!6021658 () Bool)

(assert (=> b!4989628 m!6021658))

(declare-fun m!6021660 () Bool)

(assert (=> b!4989619 m!6021660))

(declare-fun m!6021662 () Bool)

(assert (=> b!4989619 m!6021662))

(declare-fun m!6021664 () Bool)

(assert (=> b!4989619 m!6021664))

(declare-fun m!6021666 () Bool)

(assert (=> b!4989621 m!6021666))

(declare-fun m!6021668 () Bool)

(assert (=> b!4989625 m!6021668))

(declare-fun m!6021670 () Bool)

(assert (=> b!4989625 m!6021670))

(declare-fun m!6021672 () Bool)

(assert (=> b!4989625 m!6021672))

(declare-fun m!6021674 () Bool)

(assert (=> b!4989625 m!6021674))

(declare-fun m!6021676 () Bool)

(assert (=> b!4989625 m!6021676))

(declare-fun m!6021678 () Bool)

(assert (=> b!4989625 m!6021678))

(declare-fun m!6021680 () Bool)

(assert (=> b!4989625 m!6021680))

(declare-fun m!6021682 () Bool)

(assert (=> b!4989625 m!6021682))

(assert (=> b!4989625 m!6021678))

(declare-fun m!6021684 () Bool)

(assert (=> b!4989625 m!6021684))

(declare-fun m!6021686 () Bool)

(assert (=> b!4989625 m!6021686))

(declare-fun m!6021688 () Bool)

(assert (=> b!4989625 m!6021688))

(declare-fun m!6021690 () Bool)

(assert (=> b!4989625 m!6021690))

(declare-fun m!6021692 () Bool)

(assert (=> b!4989625 m!6021692))

(assert (=> b!4989625 m!6021668))

(assert (=> b!4989625 m!6021688))

(declare-fun m!6021694 () Bool)

(assert (=> b!4989625 m!6021694))

(declare-fun m!6021696 () Bool)

(assert (=> b!4989625 m!6021696))

(declare-fun m!6021698 () Bool)

(assert (=> start!527430 m!6021698))

(declare-fun m!6021700 () Bool)

(assert (=> start!527430 m!6021700))

(declare-fun m!6021702 () Bool)

(assert (=> start!527430 m!6021702))

(declare-fun m!6021704 () Bool)

(assert (=> b!4989627 m!6021704))

(assert (=> b!4989627 m!6021704))

(declare-fun m!6021706 () Bool)

(assert (=> b!4989627 m!6021706))

(declare-fun m!6021708 () Bool)

(assert (=> b!4989626 m!6021708))

(check-sat (not b!4989615) (not b!4989614) (not b!4989620) (not b!4989618) (not start!527430) (not b!4989621) (not b!4989622) (not setNonEmpty!28166) (not b!4989628) (not b!4989626) (not b!4989627) (not b!4989617) (not b!4989619) (not b!4989623) tp_is_empty!36471 (not b!4989624) (not b!4989625))
(check-sat)
