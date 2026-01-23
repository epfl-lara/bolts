; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530186 () Bool)

(assert start!530186)

(declare-fun b!5018165 () Bool)

(declare-fun e!3134929 () Bool)

(declare-fun e!3134926 () Bool)

(assert (=> b!5018165 (= e!3134929 e!3134926)))

(declare-fun res!2139790 () Bool)

(assert (=> b!5018165 (=> res!2139790 e!3134926)))

(declare-fun e!3134932 () Bool)

(assert (=> b!5018165 (= res!2139790 e!3134932)))

(declare-fun res!2139789 () Bool)

(assert (=> b!5018165 (=> (not res!2139789) (not e!3134932))))

(declare-fun lt!2076867 () Bool)

(assert (=> b!5018165 (= res!2139789 (not lt!2076867))))

(declare-datatypes ((C!27888 0))(
  ( (C!27889 (val!23310 Int)) )
))
(declare-datatypes ((Regex!13819 0))(
  ( (ElementMatch!13819 (c!857433 C!27888)) (Concat!22612 (regOne!28150 Regex!13819) (regTwo!28150 Regex!13819)) (EmptyExpr!13819) (Star!13819 (reg!14148 Regex!13819)) (EmptyLang!13819) (Union!13819 (regOne!28151 Regex!13819) (regTwo!28151 Regex!13819)) )
))
(declare-fun r!12727 () Regex!13819)

(declare-datatypes ((List!58061 0))(
  ( (Nil!57937) (Cons!57937 (h!64385 C!27888) (t!370437 List!58061)) )
))
(declare-datatypes ((tuple2!63124 0))(
  ( (tuple2!63125 (_1!34865 List!58061) (_2!34865 List!58061)) )
))
(declare-fun lt!2076866 () tuple2!63124)

(declare-fun matchR!6783 (Regex!13819 List!58061) Bool)

(assert (=> b!5018165 (= lt!2076867 (matchR!6783 r!12727 (_1!34865 lt!2076866)))))

(declare-fun res!2139784 () Bool)

(declare-fun e!3134938 () Bool)

(assert (=> start!530186 (=> (not res!2139784) (not e!3134938))))

(declare-fun validRegex!6116 (Regex!13819) Bool)

(assert (=> start!530186 (= res!2139784 (validRegex!6116 r!12727))))

(assert (=> start!530186 e!3134938))

(declare-fun e!3134930 () Bool)

(assert (=> start!530186 e!3134930))

(declare-datatypes ((IArray!30737 0))(
  ( (IArray!30738 (innerList!15426 List!58061)) )
))
(declare-datatypes ((Conc!15338 0))(
  ( (Node!15338 (left!42353 Conc!15338) (right!42683 Conc!15338) (csize!30906 Int) (cheight!15549 Int)) (Leaf!25456 (xs!18664 IArray!30737) (csize!30907 Int)) (Empty!15338) )
))
(declare-datatypes ((BalanceConc!30106 0))(
  ( (BalanceConc!30107 (c!857434 Conc!15338)) )
))
(declare-fun input!5597 () BalanceConc!30106)

(declare-fun e!3134927 () Bool)

(declare-fun inv!76173 (BalanceConc!30106) Bool)

(assert (=> start!530186 (and (inv!76173 input!5597) e!3134927)))

(declare-fun condSetEmpty!28528 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!58062 0))(
  ( (Nil!57938) (Cons!57938 (h!64386 Regex!13819) (t!370438 List!58062)) )
))
(declare-datatypes ((Context!6488 0))(
  ( (Context!6489 (exprs!3744 List!58062)) )
))
(declare-fun z!4183 () (InoxSet Context!6488))

(assert (=> start!530186 (= condSetEmpty!28528 (= z!4183 ((as const (Array Context!6488 Bool)) false)))))

(declare-fun setRes!28528 () Bool)

(assert (=> start!530186 setRes!28528))

(declare-fun totalInput!1012 () BalanceConc!30106)

(declare-fun e!3134925 () Bool)

(assert (=> start!530186 (and (inv!76173 totalInput!1012) e!3134925)))

(declare-fun b!5018166 () Bool)

(declare-fun e!3134937 () Bool)

(declare-fun e!3134934 () Bool)

(assert (=> b!5018166 (= e!3134937 e!3134934)))

(declare-fun res!2139793 () Bool)

(assert (=> b!5018166 (=> (not res!2139793) (not e!3134934))))

(declare-fun lt!2076856 () List!58061)

(declare-fun lt!2076870 () List!58061)

(assert (=> b!5018166 (= res!2139793 (= lt!2076856 lt!2076870))))

(declare-fun lt!2076875 () List!58061)

(declare-fun lt!2076868 () List!58061)

(declare-fun ++!12667 (List!58061 List!58061) List!58061)

(assert (=> b!5018166 (= lt!2076856 (++!12667 lt!2076875 lt!2076868))))

(declare-datatypes ((tuple2!63126 0))(
  ( (tuple2!63127 (_1!34866 BalanceConc!30106) (_2!34866 BalanceConc!30106)) )
))
(declare-fun lt!2076871 () tuple2!63126)

(declare-fun list!18666 (BalanceConc!30106) List!58061)

(assert (=> b!5018166 (= lt!2076868 (list!18666 (_2!34866 lt!2076871)))))

(assert (=> b!5018166 (= lt!2076875 (list!18666 (_1!34866 lt!2076871)))))

(declare-fun findLongestMatch!1832 (Regex!13819 List!58061) tuple2!63124)

(assert (=> b!5018166 (= lt!2076866 (findLongestMatch!1832 r!12727 lt!2076870))))

(declare-fun lt!2076855 () Int)

(declare-fun lt!2076853 () Int)

(declare-fun size!38524 (BalanceConc!30106) Int)

(assert (=> b!5018166 (= lt!2076855 (- lt!2076853 (size!38524 input!5597)))))

(assert (=> b!5018166 (= lt!2076853 (size!38524 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!121 ((InoxSet Context!6488) BalanceConc!30106 BalanceConc!30106) tuple2!63126)

(assert (=> b!5018166 (= lt!2076871 (findLongestMatchZipperFastV2!121 z!4183 input!5597 totalInput!1012))))

(declare-fun b!5018167 () Bool)

(declare-fun e!3134939 () Bool)

(declare-fun e!3134928 () Bool)

(assert (=> b!5018167 (= e!3134939 e!3134928)))

(declare-fun res!2139791 () Bool)

(assert (=> b!5018167 (=> res!2139791 e!3134928)))

(declare-fun isPrefix!5372 (List!58061 List!58061) Bool)

(assert (=> b!5018167 (= res!2139791 (not (isPrefix!5372 lt!2076875 lt!2076870)))))

(assert (=> b!5018167 (= lt!2076875 (_1!34865 lt!2076866))))

(declare-datatypes ((Unit!149175 0))(
  ( (Unit!149176) )
))
(declare-fun lt!2076857 () Unit!149175)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1289 (List!58061 List!58061 List!58061) Unit!149175)

(assert (=> b!5018167 (= lt!2076857 (lemmaIsPrefixSameLengthThenSameList!1289 lt!2076875 (_1!34865 lt!2076866) lt!2076870))))

(declare-fun b!5018168 () Bool)

(declare-fun tp!1407207 () Bool)

(assert (=> b!5018168 (= e!3134930 tp!1407207)))

(declare-fun b!5018169 () Bool)

(declare-fun tp_is_empty!36635 () Bool)

(assert (=> b!5018169 (= e!3134930 tp_is_empty!36635)))

(declare-fun setIsEmpty!28528 () Bool)

(assert (=> setIsEmpty!28528 setRes!28528))

(declare-fun b!5018170 () Bool)

(declare-fun e!3134941 () Bool)

(assert (=> b!5018170 (= e!3134941 (not e!3134929))))

(declare-fun res!2139783 () Bool)

(assert (=> b!5018170 (=> res!2139783 e!3134929)))

(declare-fun e!3134935 () Bool)

(assert (=> b!5018170 (= res!2139783 e!3134935)))

(declare-fun res!2139786 () Bool)

(assert (=> b!5018170 (=> (not res!2139786) (not e!3134935))))

(declare-fun lt!2076873 () Bool)

(assert (=> b!5018170 (= res!2139786 (not lt!2076873))))

(declare-fun matchZipper!587 ((InoxSet Context!6488) List!58061) Bool)

(assert (=> b!5018170 (= lt!2076873 (matchZipper!587 z!4183 lt!2076875))))

(declare-fun e!3134936 () Bool)

(assert (=> b!5018170 e!3134936))

(declare-fun res!2139788 () Bool)

(assert (=> b!5018170 (=> res!2139788 e!3134936)))

(declare-fun lt!2076861 () tuple2!63124)

(declare-fun isEmpty!31403 (List!58061) Bool)

(assert (=> b!5018170 (= res!2139788 (isEmpty!31403 (_1!34865 lt!2076861)))))

(declare-fun findLongestMatchInner!2008 (Regex!13819 List!58061 Int List!58061 List!58061 Int) tuple2!63124)

(declare-fun size!38525 (List!58061) Int)

(assert (=> b!5018170 (= lt!2076861 (findLongestMatchInner!2008 r!12727 Nil!57937 (size!38525 Nil!57937) lt!2076870 lt!2076870 (size!38525 lt!2076870)))))

(declare-fun lt!2076862 () Unit!149175)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1961 (Regex!13819 List!58061) Unit!149175)

(assert (=> b!5018170 (= lt!2076862 (longestMatchIsAcceptedByMatchOrIsEmpty!1961 r!12727 lt!2076870))))

(declare-fun e!3134931 () Bool)

(assert (=> b!5018170 e!3134931))

(declare-fun res!2139792 () Bool)

(assert (=> b!5018170 (=> res!2139792 e!3134931)))

(declare-fun lt!2076859 () Int)

(assert (=> b!5018170 (= res!2139792 (= lt!2076859 0))))

(declare-fun findLongestMatchInnerZipperFastV2!159 ((InoxSet Context!6488) Int BalanceConc!30106 Int) Int)

(assert (=> b!5018170 (= lt!2076859 (findLongestMatchInnerZipperFastV2!159 z!4183 lt!2076855 totalInput!1012 lt!2076853))))

(declare-fun lt!2076876 () Unit!149175)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!78 ((InoxSet Context!6488) Int BalanceConc!30106) Unit!149175)

(assert (=> b!5018170 (= lt!2076876 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!78 z!4183 lt!2076855 totalInput!1012))))

(declare-fun lt!2076872 () List!58061)

(declare-fun take!678 (List!58061 Int) List!58061)

(assert (=> b!5018170 (isPrefix!5372 (take!678 lt!2076872 lt!2076855) lt!2076872)))

(declare-fun lt!2076860 () Unit!149175)

(declare-fun lemmaTakeIsPrefix!172 (List!58061 Int) Unit!149175)

(assert (=> b!5018170 (= lt!2076860 (lemmaTakeIsPrefix!172 lt!2076872 lt!2076855))))

(declare-fun lt!2076854 () List!58061)

(assert (=> b!5018170 (isPrefix!5372 (_1!34865 lt!2076866) lt!2076854)))

(declare-fun lt!2076863 () Unit!149175)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3470 (List!58061 List!58061) Unit!149175)

(assert (=> b!5018170 (= lt!2076863 (lemmaConcatTwoListThenFirstIsPrefix!3470 (_1!34865 lt!2076866) (_2!34865 lt!2076866)))))

(assert (=> b!5018170 (isPrefix!5372 lt!2076875 lt!2076856)))

(declare-fun lt!2076864 () Unit!149175)

(assert (=> b!5018170 (= lt!2076864 (lemmaConcatTwoListThenFirstIsPrefix!3470 lt!2076875 lt!2076868))))

(declare-fun b!5018171 () Bool)

(declare-fun drop!2482 (List!58061 Int) List!58061)

(assert (=> b!5018171 (= e!3134931 (matchZipper!587 z!4183 (take!678 (drop!2482 lt!2076872 lt!2076855) lt!2076859)))))

(declare-fun b!5018172 () Bool)

(assert (=> b!5018172 (= e!3134928 (isPrefix!5372 (_1!34865 lt!2076866) lt!2076870))))

(declare-fun setNonEmpty!28528 () Bool)

(declare-fun e!3134933 () Bool)

(declare-fun tp!1407204 () Bool)

(declare-fun setElem!28528 () Context!6488)

(declare-fun inv!76174 (Context!6488) Bool)

(assert (=> setNonEmpty!28528 (= setRes!28528 (and tp!1407204 (inv!76174 setElem!28528) e!3134933))))

(declare-fun setRest!28528 () (InoxSet Context!6488))

(assert (=> setNonEmpty!28528 (= z!4183 ((_ map or) (store ((as const (Array Context!6488 Bool)) false) setElem!28528 true) setRest!28528))))

(declare-fun b!5018173 () Bool)

(declare-fun tp!1407211 () Bool)

(declare-fun tp!1407212 () Bool)

(assert (=> b!5018173 (= e!3134930 (and tp!1407211 tp!1407212))))

(declare-fun b!5018174 () Bool)

(declare-fun e!3134940 () Bool)

(assert (=> b!5018174 (= e!3134938 e!3134940)))

(declare-fun res!2139785 () Bool)

(assert (=> b!5018174 (=> (not res!2139785) (not e!3134940))))

(declare-datatypes ((List!58063 0))(
  ( (Nil!57939) (Cons!57939 (h!64387 Context!6488) (t!370439 List!58063)) )
))
(declare-fun lt!2076865 () List!58063)

(declare-fun unfocusZipper!346 (List!58063) Regex!13819)

(assert (=> b!5018174 (= res!2139785 (= (unfocusZipper!346 lt!2076865) r!12727))))

(declare-fun toList!8104 ((InoxSet Context!6488)) List!58063)

(assert (=> b!5018174 (= lt!2076865 (toList!8104 z!4183))))

(declare-fun b!5018175 () Bool)

(declare-fun tp!1407205 () Bool)

(declare-fun inv!76175 (Conc!15338) Bool)

(assert (=> b!5018175 (= e!3134927 (and (inv!76175 (c!857434 input!5597)) tp!1407205))))

(declare-fun b!5018176 () Bool)

(declare-fun isEmpty!31404 (BalanceConc!30106) Bool)

(assert (=> b!5018176 (= e!3134935 (not (isEmpty!31404 (_1!34866 lt!2076871))))))

(declare-fun b!5018177 () Bool)

(assert (=> b!5018177 (= e!3134934 e!3134941)))

(declare-fun res!2139794 () Bool)

(assert (=> b!5018177 (=> (not res!2139794) (not e!3134941))))

(assert (=> b!5018177 (= res!2139794 (= lt!2076854 lt!2076870))))

(assert (=> b!5018177 (= lt!2076854 (++!12667 (_1!34865 lt!2076866) (_2!34865 lt!2076866)))))

(declare-fun b!5018178 () Bool)

(declare-fun tp!1407206 () Bool)

(assert (=> b!5018178 (= e!3134933 tp!1407206)))

(declare-fun b!5018179 () Bool)

(declare-fun tp!1407210 () Bool)

(declare-fun tp!1407208 () Bool)

(assert (=> b!5018179 (= e!3134930 (and tp!1407210 tp!1407208))))

(declare-fun b!5018180 () Bool)

(assert (=> b!5018180 (= e!3134926 e!3134939)))

(declare-fun res!2139787 () Bool)

(assert (=> b!5018180 (=> res!2139787 e!3134939)))

(declare-fun lt!2076869 () Int)

(declare-fun lt!2076874 () Int)

(assert (=> b!5018180 (= res!2139787 (or (> lt!2076869 lt!2076874) (> lt!2076874 lt!2076869)))))

(assert (=> b!5018180 (= lt!2076874 (size!38524 (_1!34866 lt!2076871)))))

(assert (=> b!5018180 (= lt!2076869 (size!38525 (_1!34865 lt!2076866)))))

(assert (=> b!5018180 (= (matchR!6783 r!12727 lt!2076875) lt!2076873)))

(declare-fun lt!2076858 () Unit!149175)

(declare-fun theoremZipperRegexEquiv!191 ((InoxSet Context!6488) List!58063 Regex!13819 List!58061) Unit!149175)

(assert (=> b!5018180 (= lt!2076858 (theoremZipperRegexEquiv!191 z!4183 lt!2076865 r!12727 lt!2076875))))

(assert (=> b!5018180 (= lt!2076867 (matchZipper!587 z!4183 (_1!34865 lt!2076866)))))

(declare-fun lt!2076852 () Unit!149175)

(assert (=> b!5018180 (= lt!2076852 (theoremZipperRegexEquiv!191 z!4183 lt!2076865 r!12727 (_1!34865 lt!2076866)))))

(declare-fun b!5018181 () Bool)

(assert (=> b!5018181 (= e!3134940 e!3134937)))

(declare-fun res!2139795 () Bool)

(assert (=> b!5018181 (=> (not res!2139795) (not e!3134937))))

(declare-fun isSuffix!1385 (List!58061 List!58061) Bool)

(assert (=> b!5018181 (= res!2139795 (isSuffix!1385 lt!2076870 lt!2076872))))

(assert (=> b!5018181 (= lt!2076872 (list!18666 totalInput!1012))))

(assert (=> b!5018181 (= lt!2076870 (list!18666 input!5597))))

(declare-fun b!5018182 () Bool)

(assert (=> b!5018182 (= e!3134936 (matchR!6783 r!12727 (_1!34865 lt!2076861)))))

(declare-fun b!5018183 () Bool)

(declare-fun tp!1407209 () Bool)

(assert (=> b!5018183 (= e!3134925 (and (inv!76175 (c!857434 totalInput!1012)) tp!1407209))))

(declare-fun b!5018184 () Bool)

(assert (=> b!5018184 (= e!3134932 (not (isEmpty!31403 (_1!34865 lt!2076866))))))

(assert (= (and start!530186 res!2139784) b!5018174))

(assert (= (and b!5018174 res!2139785) b!5018181))

(assert (= (and b!5018181 res!2139795) b!5018166))

(assert (= (and b!5018166 res!2139793) b!5018177))

(assert (= (and b!5018177 res!2139794) b!5018170))

(assert (= (and b!5018170 (not res!2139792)) b!5018171))

(assert (= (and b!5018170 (not res!2139788)) b!5018182))

(assert (= (and b!5018170 res!2139786) b!5018176))

(assert (= (and b!5018170 (not res!2139783)) b!5018165))

(assert (= (and b!5018165 res!2139789) b!5018184))

(assert (= (and b!5018165 (not res!2139790)) b!5018180))

(assert (= (and b!5018180 (not res!2139787)) b!5018167))

(assert (= (and b!5018167 (not res!2139791)) b!5018172))

(get-info :version)

(assert (= (and start!530186 ((_ is ElementMatch!13819) r!12727)) b!5018169))

(assert (= (and start!530186 ((_ is Concat!22612) r!12727)) b!5018179))

(assert (= (and start!530186 ((_ is Star!13819) r!12727)) b!5018168))

(assert (= (and start!530186 ((_ is Union!13819) r!12727)) b!5018173))

(assert (= start!530186 b!5018175))

(assert (= (and start!530186 condSetEmpty!28528) setIsEmpty!28528))

(assert (= (and start!530186 (not condSetEmpty!28528)) setNonEmpty!28528))

(assert (= setNonEmpty!28528 b!5018178))

(assert (= start!530186 b!5018183))

(declare-fun m!6053378 () Bool)

(assert (=> b!5018182 m!6053378))

(declare-fun m!6053380 () Bool)

(assert (=> b!5018183 m!6053380))

(declare-fun m!6053382 () Bool)

(assert (=> b!5018180 m!6053382))

(declare-fun m!6053384 () Bool)

(assert (=> b!5018180 m!6053384))

(declare-fun m!6053386 () Bool)

(assert (=> b!5018180 m!6053386))

(declare-fun m!6053388 () Bool)

(assert (=> b!5018180 m!6053388))

(declare-fun m!6053390 () Bool)

(assert (=> b!5018180 m!6053390))

(declare-fun m!6053392 () Bool)

(assert (=> b!5018180 m!6053392))

(declare-fun m!6053394 () Bool)

(assert (=> b!5018174 m!6053394))

(declare-fun m!6053396 () Bool)

(assert (=> b!5018174 m!6053396))

(declare-fun m!6053398 () Bool)

(assert (=> b!5018177 m!6053398))

(declare-fun m!6053400 () Bool)

(assert (=> b!5018175 m!6053400))

(declare-fun m!6053402 () Bool)

(assert (=> b!5018172 m!6053402))

(declare-fun m!6053404 () Bool)

(assert (=> start!530186 m!6053404))

(declare-fun m!6053406 () Bool)

(assert (=> start!530186 m!6053406))

(declare-fun m!6053408 () Bool)

(assert (=> start!530186 m!6053408))

(declare-fun m!6053410 () Bool)

(assert (=> b!5018171 m!6053410))

(assert (=> b!5018171 m!6053410))

(declare-fun m!6053412 () Bool)

(assert (=> b!5018171 m!6053412))

(assert (=> b!5018171 m!6053412))

(declare-fun m!6053414 () Bool)

(assert (=> b!5018171 m!6053414))

(declare-fun m!6053416 () Bool)

(assert (=> b!5018167 m!6053416))

(declare-fun m!6053418 () Bool)

(assert (=> b!5018167 m!6053418))

(declare-fun m!6053420 () Bool)

(assert (=> b!5018176 m!6053420))

(declare-fun m!6053422 () Bool)

(assert (=> b!5018170 m!6053422))

(declare-fun m!6053424 () Bool)

(assert (=> b!5018170 m!6053424))

(declare-fun m!6053426 () Bool)

(assert (=> b!5018170 m!6053426))

(declare-fun m!6053428 () Bool)

(assert (=> b!5018170 m!6053428))

(declare-fun m!6053430 () Bool)

(assert (=> b!5018170 m!6053430))

(declare-fun m!6053432 () Bool)

(assert (=> b!5018170 m!6053432))

(declare-fun m!6053434 () Bool)

(assert (=> b!5018170 m!6053434))

(declare-fun m!6053436 () Bool)

(assert (=> b!5018170 m!6053436))

(declare-fun m!6053438 () Bool)

(assert (=> b!5018170 m!6053438))

(declare-fun m!6053440 () Bool)

(assert (=> b!5018170 m!6053440))

(assert (=> b!5018170 m!6053438))

(declare-fun m!6053442 () Bool)

(assert (=> b!5018170 m!6053442))

(declare-fun m!6053444 () Bool)

(assert (=> b!5018170 m!6053444))

(declare-fun m!6053446 () Bool)

(assert (=> b!5018170 m!6053446))

(assert (=> b!5018170 m!6053436))

(assert (=> b!5018170 m!6053426))

(declare-fun m!6053448 () Bool)

(assert (=> b!5018170 m!6053448))

(declare-fun m!6053450 () Bool)

(assert (=> b!5018170 m!6053450))

(declare-fun m!6053452 () Bool)

(assert (=> b!5018181 m!6053452))

(declare-fun m!6053454 () Bool)

(assert (=> b!5018181 m!6053454))

(declare-fun m!6053456 () Bool)

(assert (=> b!5018181 m!6053456))

(declare-fun m!6053458 () Bool)

(assert (=> b!5018184 m!6053458))

(declare-fun m!6053460 () Bool)

(assert (=> b!5018165 m!6053460))

(declare-fun m!6053462 () Bool)

(assert (=> b!5018166 m!6053462))

(declare-fun m!6053464 () Bool)

(assert (=> b!5018166 m!6053464))

(declare-fun m!6053466 () Bool)

(assert (=> b!5018166 m!6053466))

(declare-fun m!6053468 () Bool)

(assert (=> b!5018166 m!6053468))

(declare-fun m!6053470 () Bool)

(assert (=> b!5018166 m!6053470))

(declare-fun m!6053472 () Bool)

(assert (=> b!5018166 m!6053472))

(declare-fun m!6053474 () Bool)

(assert (=> b!5018166 m!6053474))

(declare-fun m!6053476 () Bool)

(assert (=> setNonEmpty!28528 m!6053476))

(check-sat (not b!5018168) (not b!5018167) (not b!5018183) (not b!5018172) (not b!5018178) (not b!5018180) (not b!5018166) (not b!5018174) (not b!5018165) (not start!530186) (not b!5018175) (not b!5018176) (not b!5018170) (not b!5018177) (not b!5018182) tp_is_empty!36635 (not b!5018184) (not b!5018181) (not b!5018171) (not b!5018179) (not b!5018173) (not setNonEmpty!28528))
(check-sat)
