; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!529678 () Bool)

(assert start!529678)

(declare-fun b!5013879 () Bool)

(declare-fun e!3132364 () Bool)

(declare-datatypes ((C!27864 0))(
  ( (C!27865 (val!23298 Int)) )
))
(declare-datatypes ((List!58025 0))(
  ( (Nil!57901) (Cons!57901 (h!64349 C!27864) (t!370393 List!58025)) )
))
(declare-datatypes ((IArray!30713 0))(
  ( (IArray!30714 (innerList!15414 List!58025)) )
))
(declare-datatypes ((Conc!15326 0))(
  ( (Node!15326 (left!42331 Conc!15326) (right!42661 Conc!15326) (csize!30882 Int) (cheight!15537 Int)) (Leaf!25438 (xs!18652 IArray!30713) (csize!30883 Int)) (Empty!15326) )
))
(declare-datatypes ((BalanceConc!30082 0))(
  ( (BalanceConc!30083 (c!856477 Conc!15326)) )
))
(declare-fun input!5597 () BalanceConc!30082)

(declare-fun tp!1406217 () Bool)

(declare-fun inv!76101 (Conc!15326) Bool)

(assert (=> b!5013879 (= e!3132364 (and (inv!76101 (c!856477 input!5597)) tp!1406217))))

(declare-fun b!5013880 () Bool)

(declare-fun e!3132355 () Bool)

(declare-fun e!3132352 () Bool)

(assert (=> b!5013880 (= e!3132355 e!3132352)))

(declare-fun res!2138154 () Bool)

(assert (=> b!5013880 (=> res!2138154 e!3132352)))

(declare-fun e!3132361 () Bool)

(assert (=> b!5013880 (= res!2138154 e!3132361)))

(declare-fun res!2138160 () Bool)

(assert (=> b!5013880 (=> (not res!2138160) (not e!3132361))))

(declare-fun lt!2074464 () Bool)

(assert (=> b!5013880 (= res!2138160 (not lt!2074464))))

(declare-datatypes ((Regex!13807 0))(
  ( (ElementMatch!13807 (c!856478 C!27864)) (Concat!22600 (regOne!28126 Regex!13807) (regTwo!28126 Regex!13807)) (EmptyExpr!13807) (Star!13807 (reg!14136 Regex!13807)) (EmptyLang!13807) (Union!13807 (regOne!28127 Regex!13807) (regTwo!28127 Regex!13807)) )
))
(declare-fun r!12727 () Regex!13807)

(declare-datatypes ((tuple2!63072 0))(
  ( (tuple2!63073 (_1!34839 List!58025) (_2!34839 List!58025)) )
))
(declare-fun lt!2074473 () tuple2!63072)

(declare-fun matchR!6771 (Regex!13807 List!58025) Bool)

(assert (=> b!5013880 (= lt!2074464 (matchR!6771 r!12727 (_1!34839 lt!2074473)))))

(declare-fun b!5013881 () Bool)

(declare-fun e!3132357 () Bool)

(declare-datatypes ((tuple2!63074 0))(
  ( (tuple2!63075 (_1!34840 BalanceConc!30082) (_2!34840 BalanceConc!30082)) )
))
(declare-fun lt!2074476 () tuple2!63074)

(declare-fun isEmpty!31369 (BalanceConc!30082) Bool)

(assert (=> b!5013881 (= e!3132357 (not (isEmpty!31369 (_1!34840 lt!2074476))))))

(declare-fun b!5013882 () Bool)

(declare-fun isEmpty!31370 (List!58025) Bool)

(assert (=> b!5013882 (= e!3132361 (not (isEmpty!31370 (_1!34839 lt!2074473))))))

(declare-fun b!5013883 () Bool)

(declare-fun e!3132359 () Bool)

(declare-fun e!3132365 () Bool)

(assert (=> b!5013883 (= e!3132359 e!3132365)))

(declare-fun res!2138157 () Bool)

(assert (=> b!5013883 (=> (not res!2138157) (not e!3132365))))

(declare-fun lt!2074485 () List!58025)

(declare-fun lt!2074465 () List!58025)

(declare-fun isSuffix!1373 (List!58025 List!58025) Bool)

(assert (=> b!5013883 (= res!2138157 (isSuffix!1373 lt!2074485 lt!2074465))))

(declare-fun totalInput!1012 () BalanceConc!30082)

(declare-fun list!18646 (BalanceConc!30082) List!58025)

(assert (=> b!5013883 (= lt!2074465 (list!18646 totalInput!1012))))

(assert (=> b!5013883 (= lt!2074485 (list!18646 input!5597))))

(declare-fun res!2138159 () Bool)

(declare-fun e!3132350 () Bool)

(assert (=> start!529678 (=> (not res!2138159) (not e!3132350))))

(declare-fun validRegex!6104 (Regex!13807) Bool)

(assert (=> start!529678 (= res!2138159 (validRegex!6104 r!12727))))

(assert (=> start!529678 e!3132350))

(declare-fun e!3132351 () Bool)

(assert (=> start!529678 e!3132351))

(declare-fun inv!76102 (BalanceConc!30082) Bool)

(assert (=> start!529678 (and (inv!76102 input!5597) e!3132364)))

(declare-fun condSetEmpty!28472 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!58026 0))(
  ( (Nil!57902) (Cons!57902 (h!64350 Regex!13807) (t!370394 List!58026)) )
))
(declare-datatypes ((Context!6464 0))(
  ( (Context!6465 (exprs!3732 List!58026)) )
))
(declare-fun z!4183 () (InoxSet Context!6464))

(assert (=> start!529678 (= condSetEmpty!28472 (= z!4183 ((as const (Array Context!6464 Bool)) false)))))

(declare-fun setRes!28472 () Bool)

(assert (=> start!529678 setRes!28472))

(declare-fun e!3132362 () Bool)

(assert (=> start!529678 (and (inv!76102 totalInput!1012) e!3132362)))

(declare-fun b!5013884 () Bool)

(assert (=> b!5013884 (= e!3132350 e!3132359)))

(declare-fun res!2138151 () Bool)

(assert (=> b!5013884 (=> (not res!2138151) (not e!3132359))))

(declare-datatypes ((List!58027 0))(
  ( (Nil!57903) (Cons!57903 (h!64351 Context!6464) (t!370395 List!58027)) )
))
(declare-fun lt!2074480 () List!58027)

(declare-fun unfocusZipper!334 (List!58027) Regex!13807)

(assert (=> b!5013884 (= res!2138151 (= (unfocusZipper!334 lt!2074480) r!12727))))

(declare-fun toList!8092 ((InoxSet Context!6464)) List!58027)

(assert (=> b!5013884 (= lt!2074480 (toList!8092 z!4183))))

(declare-fun setIsEmpty!28472 () Bool)

(assert (=> setIsEmpty!28472 setRes!28472))

(declare-fun b!5013885 () Bool)

(declare-fun e!3132358 () Bool)

(declare-fun lt!2074474 () tuple2!63072)

(assert (=> b!5013885 (= e!3132358 (= (_1!34839 lt!2074474) (_1!34839 lt!2074473)))))

(declare-fun b!5013886 () Bool)

(declare-fun tp_is_empty!36611 () Bool)

(assert (=> b!5013886 (= e!3132351 tp_is_empty!36611)))

(declare-fun b!5013887 () Bool)

(declare-fun res!2138155 () Bool)

(assert (=> b!5013887 (=> res!2138155 e!3132358)))

(declare-fun lt!2074484 () List!58025)

(declare-fun isPrefix!5360 (List!58025 List!58025) Bool)

(assert (=> b!5013887 (= res!2138155 (not (isPrefix!5360 lt!2074484 lt!2074485)))))

(declare-fun b!5013888 () Bool)

(declare-fun e!3132360 () Bool)

(declare-fun e!3132363 () Bool)

(assert (=> b!5013888 (= e!3132360 e!3132363)))

(declare-fun res!2138153 () Bool)

(assert (=> b!5013888 (=> (not res!2138153) (not e!3132363))))

(declare-fun lt!2074469 () List!58025)

(assert (=> b!5013888 (= res!2138153 (= lt!2074469 lt!2074485))))

(declare-fun ++!12655 (List!58025 List!58025) List!58025)

(assert (=> b!5013888 (= lt!2074469 (++!12655 (_1!34839 lt!2074473) (_2!34839 lt!2074473)))))

(declare-fun b!5013889 () Bool)

(declare-fun tp!1406214 () Bool)

(declare-fun tp!1406218 () Bool)

(assert (=> b!5013889 (= e!3132351 (and tp!1406214 tp!1406218))))

(declare-fun lt!2074477 () Int)

(declare-fun lt!2074471 () Int)

(declare-fun e!3132353 () Bool)

(declare-fun b!5013890 () Bool)

(declare-fun matchZipper!575 ((InoxSet Context!6464) List!58025) Bool)

(declare-fun take!666 (List!58025 Int) List!58025)

(declare-fun drop!2470 (List!58025 Int) List!58025)

(assert (=> b!5013890 (= e!3132353 (matchZipper!575 z!4183 (take!666 (drop!2470 lt!2074465 lt!2074471) lt!2074477)))))

(declare-fun b!5013891 () Bool)

(declare-fun tp!1406216 () Bool)

(assert (=> b!5013891 (= e!3132351 tp!1406216)))

(declare-fun b!5013892 () Bool)

(assert (=> b!5013892 (= e!3132365 e!3132360)))

(declare-fun res!2138152 () Bool)

(assert (=> b!5013892 (=> (not res!2138152) (not e!3132360))))

(declare-fun lt!2074466 () List!58025)

(assert (=> b!5013892 (= res!2138152 (= lt!2074466 lt!2074485))))

(declare-fun lt!2074470 () List!58025)

(assert (=> b!5013892 (= lt!2074466 (++!12655 lt!2074484 lt!2074470))))

(assert (=> b!5013892 (= lt!2074470 (list!18646 (_2!34840 lt!2074476)))))

(assert (=> b!5013892 (= lt!2074484 (list!18646 (_1!34840 lt!2074476)))))

(declare-fun findLongestMatch!1820 (Regex!13807 List!58025) tuple2!63072)

(assert (=> b!5013892 (= lt!2074473 (findLongestMatch!1820 r!12727 lt!2074485))))

(declare-fun lt!2074486 () Int)

(declare-fun size!38494 (BalanceConc!30082) Int)

(assert (=> b!5013892 (= lt!2074471 (- lt!2074486 (size!38494 input!5597)))))

(assert (=> b!5013892 (= lt!2074486 (size!38494 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!109 ((InoxSet Context!6464) BalanceConc!30082 BalanceConc!30082) tuple2!63074)

(assert (=> b!5013892 (= lt!2074476 (findLongestMatchZipperFastV2!109 z!4183 input!5597 totalInput!1012))))

(declare-fun b!5013893 () Bool)

(declare-fun e!3132356 () Bool)

(declare-fun tp!1406211 () Bool)

(assert (=> b!5013893 (= e!3132356 tp!1406211)))

(declare-fun b!5013894 () Bool)

(declare-fun res!2138156 () Bool)

(assert (=> b!5013894 (=> res!2138156 e!3132358)))

(declare-fun lt!2074468 () Int)

(declare-fun size!38495 (List!58025) Int)

(assert (=> b!5013894 (= res!2138156 (< (size!38495 lt!2074484) lt!2074468))))

(declare-fun b!5013895 () Bool)

(assert (=> b!5013895 (= e!3132363 (not e!3132355))))

(declare-fun res!2138162 () Bool)

(assert (=> b!5013895 (=> res!2138162 e!3132355)))

(assert (=> b!5013895 (= res!2138162 e!3132357)))

(declare-fun res!2138161 () Bool)

(assert (=> b!5013895 (=> (not res!2138161) (not e!3132357))))

(declare-fun lt!2074482 () Bool)

(assert (=> b!5013895 (= res!2138161 (not lt!2074482))))

(assert (=> b!5013895 (= lt!2074482 (matchZipper!575 z!4183 lt!2074484))))

(declare-fun e!3132354 () Bool)

(assert (=> b!5013895 e!3132354))

(declare-fun res!2138150 () Bool)

(assert (=> b!5013895 (=> res!2138150 e!3132354)))

(assert (=> b!5013895 (= res!2138150 (isEmpty!31370 (_1!34839 lt!2074474)))))

(declare-fun findLongestMatchInner!1996 (Regex!13807 List!58025 Int List!58025 List!58025 Int) tuple2!63072)

(assert (=> b!5013895 (= lt!2074474 (findLongestMatchInner!1996 r!12727 Nil!57901 (size!38495 Nil!57901) lt!2074485 lt!2074485 (size!38495 lt!2074485)))))

(declare-datatypes ((Unit!149117 0))(
  ( (Unit!149118) )
))
(declare-fun lt!2074475 () Unit!149117)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1949 (Regex!13807 List!58025) Unit!149117)

(assert (=> b!5013895 (= lt!2074475 (longestMatchIsAcceptedByMatchOrIsEmpty!1949 r!12727 lt!2074485))))

(assert (=> b!5013895 e!3132353))

(declare-fun res!2138149 () Bool)

(assert (=> b!5013895 (=> res!2138149 e!3132353)))

(assert (=> b!5013895 (= res!2138149 (= lt!2074477 0))))

(declare-fun findLongestMatchInnerZipperFastV2!147 ((InoxSet Context!6464) Int BalanceConc!30082 Int) Int)

(assert (=> b!5013895 (= lt!2074477 (findLongestMatchInnerZipperFastV2!147 z!4183 lt!2074471 totalInput!1012 lt!2074486))))

(declare-fun lt!2074463 () Unit!149117)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!66 ((InoxSet Context!6464) Int BalanceConc!30082) Unit!149117)

(assert (=> b!5013895 (= lt!2074463 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!66 z!4183 lt!2074471 totalInput!1012))))

(assert (=> b!5013895 (isPrefix!5360 (take!666 lt!2074465 lt!2074471) lt!2074465)))

(declare-fun lt!2074483 () Unit!149117)

(declare-fun lemmaTakeIsPrefix!160 (List!58025 Int) Unit!149117)

(assert (=> b!5013895 (= lt!2074483 (lemmaTakeIsPrefix!160 lt!2074465 lt!2074471))))

(assert (=> b!5013895 (isPrefix!5360 (_1!34839 lt!2074473) lt!2074469)))

(declare-fun lt!2074478 () Unit!149117)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3458 (List!58025 List!58025) Unit!149117)

(assert (=> b!5013895 (= lt!2074478 (lemmaConcatTwoListThenFirstIsPrefix!3458 (_1!34839 lt!2074473) (_2!34839 lt!2074473)))))

(assert (=> b!5013895 (isPrefix!5360 lt!2074484 lt!2074466)))

(declare-fun lt!2074479 () Unit!149117)

(assert (=> b!5013895 (= lt!2074479 (lemmaConcatTwoListThenFirstIsPrefix!3458 lt!2074484 lt!2074470))))

(declare-fun b!5013896 () Bool)

(assert (=> b!5013896 (= e!3132352 e!3132358)))

(declare-fun res!2138158 () Bool)

(assert (=> b!5013896 (=> res!2138158 e!3132358)))

(declare-fun lt!2074467 () Int)

(assert (=> b!5013896 (= res!2138158 (or (> lt!2074468 lt!2074467) (<= lt!2074467 lt!2074468)))))

(assert (=> b!5013896 (= lt!2074467 (size!38494 (_1!34840 lt!2074476)))))

(assert (=> b!5013896 (= lt!2074468 (size!38495 (_1!34839 lt!2074473)))))

(assert (=> b!5013896 (= (matchR!6771 r!12727 lt!2074484) lt!2074482)))

(declare-fun lt!2074472 () Unit!149117)

(declare-fun theoremZipperRegexEquiv!179 ((InoxSet Context!6464) List!58027 Regex!13807 List!58025) Unit!149117)

(assert (=> b!5013896 (= lt!2074472 (theoremZipperRegexEquiv!179 z!4183 lt!2074480 r!12727 lt!2074484))))

(assert (=> b!5013896 (= lt!2074464 (matchZipper!575 z!4183 (_1!34839 lt!2074473)))))

(declare-fun lt!2074481 () Unit!149117)

(assert (=> b!5013896 (= lt!2074481 (theoremZipperRegexEquiv!179 z!4183 lt!2074480 r!12727 (_1!34839 lt!2074473)))))

(declare-fun b!5013897 () Bool)

(declare-fun tp!1406213 () Bool)

(assert (=> b!5013897 (= e!3132362 (and (inv!76101 (c!856477 totalInput!1012)) tp!1406213))))

(declare-fun b!5013898 () Bool)

(declare-fun tp!1406215 () Bool)

(declare-fun tp!1406210 () Bool)

(assert (=> b!5013898 (= e!3132351 (and tp!1406215 tp!1406210))))

(declare-fun b!5013899 () Bool)

(declare-fun res!2138163 () Bool)

(assert (=> b!5013899 (=> res!2138163 e!3132358)))

(assert (=> b!5013899 (= res!2138163 (not (isPrefix!5360 (_1!34839 lt!2074473) lt!2074485)))))

(declare-fun tp!1406212 () Bool)

(declare-fun setNonEmpty!28472 () Bool)

(declare-fun setElem!28472 () Context!6464)

(declare-fun inv!76103 (Context!6464) Bool)

(assert (=> setNonEmpty!28472 (= setRes!28472 (and tp!1406212 (inv!76103 setElem!28472) e!3132356))))

(declare-fun setRest!28472 () (InoxSet Context!6464))

(assert (=> setNonEmpty!28472 (= z!4183 ((_ map or) (store ((as const (Array Context!6464 Bool)) false) setElem!28472 true) setRest!28472))))

(declare-fun b!5013900 () Bool)

(assert (=> b!5013900 (= e!3132354 (matchR!6771 r!12727 (_1!34839 lt!2074474)))))

(assert (= (and start!529678 res!2138159) b!5013884))

(assert (= (and b!5013884 res!2138151) b!5013883))

(assert (= (and b!5013883 res!2138157) b!5013892))

(assert (= (and b!5013892 res!2138152) b!5013888))

(assert (= (and b!5013888 res!2138153) b!5013895))

(assert (= (and b!5013895 (not res!2138149)) b!5013890))

(assert (= (and b!5013895 (not res!2138150)) b!5013900))

(assert (= (and b!5013895 res!2138161) b!5013881))

(assert (= (and b!5013895 (not res!2138162)) b!5013880))

(assert (= (and b!5013880 res!2138160) b!5013882))

(assert (= (and b!5013880 (not res!2138154)) b!5013896))

(assert (= (and b!5013896 (not res!2138158)) b!5013899))

(assert (= (and b!5013899 (not res!2138163)) b!5013887))

(assert (= (and b!5013887 (not res!2138155)) b!5013894))

(assert (= (and b!5013894 (not res!2138156)) b!5013885))

(get-info :version)

(assert (= (and start!529678 ((_ is ElementMatch!13807) r!12727)) b!5013886))

(assert (= (and start!529678 ((_ is Concat!22600) r!12727)) b!5013898))

(assert (= (and start!529678 ((_ is Star!13807) r!12727)) b!5013891))

(assert (= (and start!529678 ((_ is Union!13807) r!12727)) b!5013889))

(assert (= start!529678 b!5013879))

(assert (= (and start!529678 condSetEmpty!28472) setIsEmpty!28472))

(assert (= (and start!529678 (not condSetEmpty!28472)) setNonEmpty!28472))

(assert (= setNonEmpty!28472 b!5013893))

(assert (= start!529678 b!5013897))

(declare-fun m!6048614 () Bool)

(assert (=> b!5013888 m!6048614))

(declare-fun m!6048616 () Bool)

(assert (=> b!5013896 m!6048616))

(declare-fun m!6048618 () Bool)

(assert (=> b!5013896 m!6048618))

(declare-fun m!6048620 () Bool)

(assert (=> b!5013896 m!6048620))

(declare-fun m!6048622 () Bool)

(assert (=> b!5013896 m!6048622))

(declare-fun m!6048624 () Bool)

(assert (=> b!5013896 m!6048624))

(declare-fun m!6048626 () Bool)

(assert (=> b!5013896 m!6048626))

(declare-fun m!6048628 () Bool)

(assert (=> b!5013897 m!6048628))

(declare-fun m!6048630 () Bool)

(assert (=> b!5013900 m!6048630))

(declare-fun m!6048632 () Bool)

(assert (=> b!5013890 m!6048632))

(assert (=> b!5013890 m!6048632))

(declare-fun m!6048634 () Bool)

(assert (=> b!5013890 m!6048634))

(assert (=> b!5013890 m!6048634))

(declare-fun m!6048636 () Bool)

(assert (=> b!5013890 m!6048636))

(declare-fun m!6048638 () Bool)

(assert (=> b!5013899 m!6048638))

(declare-fun m!6048640 () Bool)

(assert (=> start!529678 m!6048640))

(declare-fun m!6048642 () Bool)

(assert (=> start!529678 m!6048642))

(declare-fun m!6048644 () Bool)

(assert (=> start!529678 m!6048644))

(declare-fun m!6048646 () Bool)

(assert (=> b!5013881 m!6048646))

(declare-fun m!6048648 () Bool)

(assert (=> b!5013884 m!6048648))

(declare-fun m!6048650 () Bool)

(assert (=> b!5013884 m!6048650))

(declare-fun m!6048652 () Bool)

(assert (=> b!5013883 m!6048652))

(declare-fun m!6048654 () Bool)

(assert (=> b!5013883 m!6048654))

(declare-fun m!6048656 () Bool)

(assert (=> b!5013883 m!6048656))

(declare-fun m!6048658 () Bool)

(assert (=> b!5013892 m!6048658))

(declare-fun m!6048660 () Bool)

(assert (=> b!5013892 m!6048660))

(declare-fun m!6048662 () Bool)

(assert (=> b!5013892 m!6048662))

(declare-fun m!6048664 () Bool)

(assert (=> b!5013892 m!6048664))

(declare-fun m!6048666 () Bool)

(assert (=> b!5013892 m!6048666))

(declare-fun m!6048668 () Bool)

(assert (=> b!5013892 m!6048668))

(declare-fun m!6048670 () Bool)

(assert (=> b!5013892 m!6048670))

(declare-fun m!6048672 () Bool)

(assert (=> b!5013879 m!6048672))

(declare-fun m!6048674 () Bool)

(assert (=> b!5013880 m!6048674))

(declare-fun m!6048676 () Bool)

(assert (=> b!5013894 m!6048676))

(declare-fun m!6048678 () Bool)

(assert (=> b!5013887 m!6048678))

(declare-fun m!6048680 () Bool)

(assert (=> b!5013895 m!6048680))

(declare-fun m!6048682 () Bool)

(assert (=> b!5013895 m!6048682))

(declare-fun m!6048684 () Bool)

(assert (=> b!5013895 m!6048684))

(declare-fun m!6048686 () Bool)

(assert (=> b!5013895 m!6048686))

(declare-fun m!6048688 () Bool)

(assert (=> b!5013895 m!6048688))

(declare-fun m!6048690 () Bool)

(assert (=> b!5013895 m!6048690))

(declare-fun m!6048692 () Bool)

(assert (=> b!5013895 m!6048692))

(declare-fun m!6048694 () Bool)

(assert (=> b!5013895 m!6048694))

(declare-fun m!6048696 () Bool)

(assert (=> b!5013895 m!6048696))

(declare-fun m!6048698 () Bool)

(assert (=> b!5013895 m!6048698))

(declare-fun m!6048700 () Bool)

(assert (=> b!5013895 m!6048700))

(declare-fun m!6048702 () Bool)

(assert (=> b!5013895 m!6048702))

(assert (=> b!5013895 m!6048690))

(assert (=> b!5013895 m!6048686))

(declare-fun m!6048704 () Bool)

(assert (=> b!5013895 m!6048704))

(declare-fun m!6048706 () Bool)

(assert (=> b!5013895 m!6048706))

(declare-fun m!6048708 () Bool)

(assert (=> b!5013895 m!6048708))

(assert (=> b!5013895 m!6048692))

(declare-fun m!6048710 () Bool)

(assert (=> setNonEmpty!28472 m!6048710))

(declare-fun m!6048712 () Bool)

(assert (=> b!5013882 m!6048712))

(check-sat (not start!529678) (not b!5013890) tp_is_empty!36611 (not b!5013894) (not setNonEmpty!28472) (not b!5013880) (not b!5013898) (not b!5013899) (not b!5013879) (not b!5013900) (not b!5013893) (not b!5013889) (not b!5013896) (not b!5013882) (not b!5013891) (not b!5013883) (not b!5013887) (not b!5013897) (not b!5013888) (not b!5013892) (not b!5013881) (not b!5013895) (not b!5013884))
(check-sat)
(get-model)

(declare-fun d!1614400 () Bool)

(assert (=> d!1614400 (= (isEmpty!31370 (_1!34839 lt!2074473)) ((_ is Nil!57901) (_1!34839 lt!2074473)))))

(assert (=> b!5013882 d!1614400))

(declare-fun d!1614402 () Bool)

(declare-fun lt!2074489 () Bool)

(assert (=> d!1614402 (= lt!2074489 (isEmpty!31370 (list!18646 (_1!34840 lt!2074476))))))

(declare-fun isEmpty!31372 (Conc!15326) Bool)

(assert (=> d!1614402 (= lt!2074489 (isEmpty!31372 (c!856477 (_1!34840 lt!2074476))))))

(assert (=> d!1614402 (= (isEmpty!31369 (_1!34840 lt!2074476)) lt!2074489)))

(declare-fun bs!1186837 () Bool)

(assert (= bs!1186837 d!1614402))

(assert (=> bs!1186837 m!6048660))

(assert (=> bs!1186837 m!6048660))

(declare-fun m!6048714 () Bool)

(assert (=> bs!1186837 m!6048714))

(declare-fun m!6048716 () Bool)

(assert (=> bs!1186837 m!6048716))

(assert (=> b!5013881 d!1614402))

(declare-fun d!1614404 () Bool)

(declare-fun e!3132368 () Bool)

(assert (=> d!1614404 e!3132368))

(declare-fun res!2138166 () Bool)

(assert (=> d!1614404 (=> res!2138166 e!3132368)))

(declare-fun lt!2074492 () Bool)

(assert (=> d!1614404 (= res!2138166 (not lt!2074492))))

(assert (=> d!1614404 (= lt!2074492 (= lt!2074485 (drop!2470 lt!2074465 (- (size!38495 lt!2074465) (size!38495 lt!2074485)))))))

(assert (=> d!1614404 (= (isSuffix!1373 lt!2074485 lt!2074465) lt!2074492)))

(declare-fun b!5013903 () Bool)

(assert (=> b!5013903 (= e!3132368 (>= (size!38495 lt!2074465) (size!38495 lt!2074485)))))

(assert (= (and d!1614404 (not res!2138166)) b!5013903))

(declare-fun m!6048718 () Bool)

(assert (=> d!1614404 m!6048718))

(assert (=> d!1614404 m!6048692))

(declare-fun m!6048720 () Bool)

(assert (=> d!1614404 m!6048720))

(assert (=> b!5013903 m!6048718))

(assert (=> b!5013903 m!6048692))

(assert (=> b!5013883 d!1614404))

(declare-fun d!1614406 () Bool)

(declare-fun list!18648 (Conc!15326) List!58025)

(assert (=> d!1614406 (= (list!18646 totalInput!1012) (list!18648 (c!856477 totalInput!1012)))))

(declare-fun bs!1186838 () Bool)

(assert (= bs!1186838 d!1614406))

(declare-fun m!6048722 () Bool)

(assert (=> bs!1186838 m!6048722))

(assert (=> b!5013883 d!1614406))

(declare-fun d!1614410 () Bool)

(assert (=> d!1614410 (= (list!18646 input!5597) (list!18648 (c!856477 input!5597)))))

(declare-fun bs!1186839 () Bool)

(assert (= bs!1186839 d!1614410))

(declare-fun m!6048724 () Bool)

(assert (=> bs!1186839 m!6048724))

(assert (=> b!5013883 d!1614410))

(declare-fun d!1614412 () Bool)

(assert (=> d!1614412 (= (list!18646 (_2!34840 lt!2074476)) (list!18648 (c!856477 (_2!34840 lt!2074476))))))

(declare-fun bs!1186840 () Bool)

(assert (= bs!1186840 d!1614412))

(declare-fun m!6048726 () Bool)

(assert (=> bs!1186840 m!6048726))

(assert (=> b!5013892 d!1614412))

(declare-fun d!1614414 () Bool)

(assert (=> d!1614414 (= (list!18646 (_1!34840 lt!2074476)) (list!18648 (c!856477 (_1!34840 lt!2074476))))))

(declare-fun bs!1186841 () Bool)

(assert (= bs!1186841 d!1614414))

(declare-fun m!6048728 () Bool)

(assert (=> bs!1186841 m!6048728))

(assert (=> b!5013892 d!1614414))

(declare-fun d!1614416 () Bool)

(declare-fun lt!2074495 () Int)

(assert (=> d!1614416 (= lt!2074495 (size!38495 (list!18646 input!5597)))))

(declare-fun size!38497 (Conc!15326) Int)

(assert (=> d!1614416 (= lt!2074495 (size!38497 (c!856477 input!5597)))))

(assert (=> d!1614416 (= (size!38494 input!5597) lt!2074495)))

(declare-fun bs!1186842 () Bool)

(assert (= bs!1186842 d!1614416))

(assert (=> bs!1186842 m!6048656))

(assert (=> bs!1186842 m!6048656))

(declare-fun m!6048730 () Bool)

(assert (=> bs!1186842 m!6048730))

(declare-fun m!6048732 () Bool)

(assert (=> bs!1186842 m!6048732))

(assert (=> b!5013892 d!1614416))

(declare-fun d!1614418 () Bool)

(declare-fun lt!2074496 () Int)

(assert (=> d!1614418 (= lt!2074496 (size!38495 (list!18646 totalInput!1012)))))

(assert (=> d!1614418 (= lt!2074496 (size!38497 (c!856477 totalInput!1012)))))

(assert (=> d!1614418 (= (size!38494 totalInput!1012) lt!2074496)))

(declare-fun bs!1186843 () Bool)

(assert (= bs!1186843 d!1614418))

(assert (=> bs!1186843 m!6048654))

(assert (=> bs!1186843 m!6048654))

(declare-fun m!6048734 () Bool)

(assert (=> bs!1186843 m!6048734))

(declare-fun m!6048736 () Bool)

(assert (=> bs!1186843 m!6048736))

(assert (=> b!5013892 d!1614418))

(declare-fun d!1614420 () Bool)

(declare-fun lt!2074539 () tuple2!63074)

(assert (=> d!1614420 (= (++!12655 (list!18646 (_1!34840 lt!2074539)) (list!18646 (_2!34840 lt!2074539))) (list!18646 input!5597))))

(declare-fun lt!2074540 () Int)

(declare-fun splitAt!459 (BalanceConc!30082 Int) tuple2!63074)

(assert (=> d!1614420 (= lt!2074539 (splitAt!459 input!5597 (findLongestMatchInnerZipperFastV2!147 z!4183 (- lt!2074540 (size!38494 input!5597)) totalInput!1012 lt!2074540)))))

(assert (=> d!1614420 (= lt!2074540 (size!38494 totalInput!1012))))

(assert (=> d!1614420 (isSuffix!1373 (list!18646 input!5597) (list!18646 totalInput!1012))))

(assert (=> d!1614420 (= (findLongestMatchZipperFastV2!109 z!4183 input!5597 totalInput!1012) lt!2074539)))

(declare-fun bs!1186853 () Bool)

(assert (= bs!1186853 d!1614420))

(assert (=> bs!1186853 m!6048670))

(declare-fun m!6048798 () Bool)

(assert (=> bs!1186853 m!6048798))

(declare-fun m!6048802 () Bool)

(assert (=> bs!1186853 m!6048802))

(declare-fun m!6048804 () Bool)

(assert (=> bs!1186853 m!6048804))

(assert (=> bs!1186853 m!6048802))

(assert (=> bs!1186853 m!6048656))

(assert (=> bs!1186853 m!6048654))

(declare-fun m!6048810 () Bool)

(assert (=> bs!1186853 m!6048810))

(assert (=> bs!1186853 m!6048662))

(assert (=> bs!1186853 m!6048654))

(assert (=> bs!1186853 m!6048656))

(assert (=> bs!1186853 m!6048798))

(declare-fun m!6048812 () Bool)

(assert (=> bs!1186853 m!6048812))

(assert (=> bs!1186853 m!6048812))

(declare-fun m!6048814 () Bool)

(assert (=> bs!1186853 m!6048814))

(assert (=> b!5013892 d!1614420))

(declare-fun d!1614446 () Bool)

(declare-fun lt!2074567 () tuple2!63072)

(assert (=> d!1614446 (= (++!12655 (_1!34839 lt!2074567) (_2!34839 lt!2074567)) lt!2074485)))

(declare-fun sizeTr!406 (List!58025 Int) Int)

(assert (=> d!1614446 (= lt!2074567 (findLongestMatchInner!1996 r!12727 Nil!57901 0 lt!2074485 lt!2074485 (sizeTr!406 lt!2074485 0)))))

(declare-fun lt!2074564 () Unit!149117)

(declare-fun lt!2074570 () Unit!149117)

(assert (=> d!1614446 (= lt!2074564 lt!2074570)))

(declare-fun lt!2074565 () List!58025)

(declare-fun lt!2074563 () Int)

(assert (=> d!1614446 (= (sizeTr!406 lt!2074565 lt!2074563) (+ (size!38495 lt!2074565) lt!2074563))))

(declare-fun lemmaSizeTrEqualsSize!405 (List!58025 Int) Unit!149117)

(assert (=> d!1614446 (= lt!2074570 (lemmaSizeTrEqualsSize!405 lt!2074565 lt!2074563))))

(assert (=> d!1614446 (= lt!2074563 0)))

(assert (=> d!1614446 (= lt!2074565 Nil!57901)))

(declare-fun lt!2074566 () Unit!149117)

(declare-fun lt!2074568 () Unit!149117)

(assert (=> d!1614446 (= lt!2074566 lt!2074568)))

(declare-fun lt!2074569 () Int)

(assert (=> d!1614446 (= (sizeTr!406 lt!2074485 lt!2074569) (+ (size!38495 lt!2074485) lt!2074569))))

(assert (=> d!1614446 (= lt!2074568 (lemmaSizeTrEqualsSize!405 lt!2074485 lt!2074569))))

(assert (=> d!1614446 (= lt!2074569 0)))

(assert (=> d!1614446 (validRegex!6104 r!12727)))

(assert (=> d!1614446 (= (findLongestMatch!1820 r!12727 lt!2074485) lt!2074567)))

(declare-fun bs!1186854 () Bool)

(assert (= bs!1186854 d!1614446))

(declare-fun m!6048832 () Bool)

(assert (=> bs!1186854 m!6048832))

(declare-fun m!6048834 () Bool)

(assert (=> bs!1186854 m!6048834))

(declare-fun m!6048836 () Bool)

(assert (=> bs!1186854 m!6048836))

(assert (=> bs!1186854 m!6048692))

(assert (=> bs!1186854 m!6048640))

(declare-fun m!6048838 () Bool)

(assert (=> bs!1186854 m!6048838))

(declare-fun m!6048840 () Bool)

(assert (=> bs!1186854 m!6048840))

(declare-fun m!6048842 () Bool)

(assert (=> bs!1186854 m!6048842))

(declare-fun m!6048844 () Bool)

(assert (=> bs!1186854 m!6048844))

(assert (=> bs!1186854 m!6048836))

(declare-fun m!6048846 () Bool)

(assert (=> bs!1186854 m!6048846))

(assert (=> b!5013892 d!1614446))

(declare-fun d!1614452 () Bool)

(declare-fun e!3132413 () Bool)

(assert (=> d!1614452 e!3132413))

(declare-fun res!2138208 () Bool)

(assert (=> d!1614452 (=> (not res!2138208) (not e!3132413))))

(declare-fun lt!2074573 () List!58025)

(declare-fun content!10264 (List!58025) (InoxSet C!27864))

(assert (=> d!1614452 (= res!2138208 (= (content!10264 lt!2074573) ((_ map or) (content!10264 lt!2074484) (content!10264 lt!2074470))))))

(declare-fun e!3132412 () List!58025)

(assert (=> d!1614452 (= lt!2074573 e!3132412)))

(declare-fun c!856490 () Bool)

(assert (=> d!1614452 (= c!856490 ((_ is Nil!57901) lt!2074484))))

(assert (=> d!1614452 (= (++!12655 lt!2074484 lt!2074470) lt!2074573)))

(declare-fun b!5013969 () Bool)

(declare-fun res!2138209 () Bool)

(assert (=> b!5013969 (=> (not res!2138209) (not e!3132413))))

(assert (=> b!5013969 (= res!2138209 (= (size!38495 lt!2074573) (+ (size!38495 lt!2074484) (size!38495 lt!2074470))))))

(declare-fun b!5013967 () Bool)

(assert (=> b!5013967 (= e!3132412 lt!2074470)))

(declare-fun b!5013968 () Bool)

(assert (=> b!5013968 (= e!3132412 (Cons!57901 (h!64349 lt!2074484) (++!12655 (t!370393 lt!2074484) lt!2074470)))))

(declare-fun b!5013970 () Bool)

(assert (=> b!5013970 (= e!3132413 (or (not (= lt!2074470 Nil!57901)) (= lt!2074573 lt!2074484)))))

(assert (= (and d!1614452 c!856490) b!5013967))

(assert (= (and d!1614452 (not c!856490)) b!5013968))

(assert (= (and d!1614452 res!2138208) b!5013969))

(assert (= (and b!5013969 res!2138209) b!5013970))

(declare-fun m!6048848 () Bool)

(assert (=> d!1614452 m!6048848))

(declare-fun m!6048850 () Bool)

(assert (=> d!1614452 m!6048850))

(declare-fun m!6048852 () Bool)

(assert (=> d!1614452 m!6048852))

(declare-fun m!6048854 () Bool)

(assert (=> b!5013969 m!6048854))

(assert (=> b!5013969 m!6048676))

(declare-fun m!6048856 () Bool)

(assert (=> b!5013969 m!6048856))

(declare-fun m!6048858 () Bool)

(assert (=> b!5013968 m!6048858))

(assert (=> b!5013892 d!1614452))

(declare-fun b!5013989 () Bool)

(declare-fun res!2138224 () Bool)

(declare-fun e!3132434 () Bool)

(assert (=> b!5013989 (=> res!2138224 e!3132434)))

(assert (=> b!5013989 (= res!2138224 (not ((_ is Concat!22600) r!12727)))))

(declare-fun e!3132428 () Bool)

(assert (=> b!5013989 (= e!3132428 e!3132434)))

(declare-fun b!5013990 () Bool)

(declare-fun e!3132431 () Bool)

(declare-fun e!3132430 () Bool)

(assert (=> b!5013990 (= e!3132431 e!3132430)))

(declare-fun c!856496 () Bool)

(assert (=> b!5013990 (= c!856496 ((_ is Star!13807) r!12727))))

(declare-fun bm!350148 () Bool)

(declare-fun c!856495 () Bool)

(declare-fun call!350153 () Bool)

(assert (=> bm!350148 (= call!350153 (validRegex!6104 (ite c!856496 (reg!14136 r!12727) (ite c!856495 (regTwo!28127 r!12727) (regOne!28126 r!12727)))))))

(declare-fun bm!350149 () Bool)

(declare-fun call!350155 () Bool)

(assert (=> bm!350149 (= call!350155 (validRegex!6104 (ite c!856495 (regOne!28127 r!12727) (regTwo!28126 r!12727))))))

(declare-fun d!1614454 () Bool)

(declare-fun res!2138222 () Bool)

(assert (=> d!1614454 (=> res!2138222 e!3132431)))

(assert (=> d!1614454 (= res!2138222 ((_ is ElementMatch!13807) r!12727))))

(assert (=> d!1614454 (= (validRegex!6104 r!12727) e!3132431)))

(declare-fun b!5013991 () Bool)

(declare-fun e!3132432 () Bool)

(assert (=> b!5013991 (= e!3132432 call!350153)))

(declare-fun bm!350150 () Bool)

(declare-fun call!350154 () Bool)

(assert (=> bm!350150 (= call!350154 call!350153)))

(declare-fun b!5013992 () Bool)

(declare-fun res!2138220 () Bool)

(declare-fun e!3132429 () Bool)

(assert (=> b!5013992 (=> (not res!2138220) (not e!3132429))))

(assert (=> b!5013992 (= res!2138220 call!350155)))

(assert (=> b!5013992 (= e!3132428 e!3132429)))

(declare-fun b!5013993 () Bool)

(assert (=> b!5013993 (= e!3132430 e!3132428)))

(assert (=> b!5013993 (= c!856495 ((_ is Union!13807) r!12727))))

(declare-fun b!5013994 () Bool)

(assert (=> b!5013994 (= e!3132430 e!3132432)))

(declare-fun res!2138223 () Bool)

(declare-fun nullable!4695 (Regex!13807) Bool)

(assert (=> b!5013994 (= res!2138223 (not (nullable!4695 (reg!14136 r!12727))))))

(assert (=> b!5013994 (=> (not res!2138223) (not e!3132432))))

(declare-fun b!5013995 () Bool)

(declare-fun e!3132433 () Bool)

(assert (=> b!5013995 (= e!3132433 call!350155)))

(declare-fun b!5013996 () Bool)

(assert (=> b!5013996 (= e!3132429 call!350154)))

(declare-fun b!5013997 () Bool)

(assert (=> b!5013997 (= e!3132434 e!3132433)))

(declare-fun res!2138221 () Bool)

(assert (=> b!5013997 (=> (not res!2138221) (not e!3132433))))

(assert (=> b!5013997 (= res!2138221 call!350154)))

(assert (= (and d!1614454 (not res!2138222)) b!5013990))

(assert (= (and b!5013990 c!856496) b!5013994))

(assert (= (and b!5013990 (not c!856496)) b!5013993))

(assert (= (and b!5013994 res!2138223) b!5013991))

(assert (= (and b!5013993 c!856495) b!5013992))

(assert (= (and b!5013993 (not c!856495)) b!5013989))

(assert (= (and b!5013992 res!2138220) b!5013996))

(assert (= (and b!5013989 (not res!2138224)) b!5013997))

(assert (= (and b!5013997 res!2138221) b!5013995))

(assert (= (or b!5013996 b!5013997) bm!350150))

(assert (= (or b!5013992 b!5013995) bm!350149))

(assert (= (or b!5013991 bm!350150) bm!350148))

(declare-fun m!6048860 () Bool)

(assert (=> bm!350148 m!6048860))

(declare-fun m!6048862 () Bool)

(assert (=> bm!350149 m!6048862))

(declare-fun m!6048864 () Bool)

(assert (=> b!5013994 m!6048864))

(assert (=> start!529678 d!1614454))

(declare-fun d!1614456 () Bool)

(declare-fun isBalanced!4278 (Conc!15326) Bool)

(assert (=> d!1614456 (= (inv!76102 input!5597) (isBalanced!4278 (c!856477 input!5597)))))

(declare-fun bs!1186855 () Bool)

(assert (= bs!1186855 d!1614456))

(declare-fun m!6048866 () Bool)

(assert (=> bs!1186855 m!6048866))

(assert (=> start!529678 d!1614456))

(declare-fun d!1614458 () Bool)

(assert (=> d!1614458 (= (inv!76102 totalInput!1012) (isBalanced!4278 (c!856477 totalInput!1012)))))

(declare-fun bs!1186856 () Bool)

(assert (= bs!1186856 d!1614458))

(declare-fun m!6048868 () Bool)

(assert (=> bs!1186856 m!6048868))

(assert (=> start!529678 d!1614458))

(declare-fun d!1614460 () Bool)

(declare-fun c!856499 () Bool)

(assert (=> d!1614460 (= c!856499 ((_ is Node!15326) (c!856477 input!5597)))))

(declare-fun e!3132439 () Bool)

(assert (=> d!1614460 (= (inv!76101 (c!856477 input!5597)) e!3132439)))

(declare-fun b!5014004 () Bool)

(declare-fun inv!76104 (Conc!15326) Bool)

(assert (=> b!5014004 (= e!3132439 (inv!76104 (c!856477 input!5597)))))

(declare-fun b!5014005 () Bool)

(declare-fun e!3132440 () Bool)

(assert (=> b!5014005 (= e!3132439 e!3132440)))

(declare-fun res!2138227 () Bool)

(assert (=> b!5014005 (= res!2138227 (not ((_ is Leaf!25438) (c!856477 input!5597))))))

(assert (=> b!5014005 (=> res!2138227 e!3132440)))

(declare-fun b!5014006 () Bool)

(declare-fun inv!76105 (Conc!15326) Bool)

(assert (=> b!5014006 (= e!3132440 (inv!76105 (c!856477 input!5597)))))

(assert (= (and d!1614460 c!856499) b!5014004))

(assert (= (and d!1614460 (not c!856499)) b!5014005))

(assert (= (and b!5014005 (not res!2138227)) b!5014006))

(declare-fun m!6048870 () Bool)

(assert (=> b!5014004 m!6048870))

(declare-fun m!6048872 () Bool)

(assert (=> b!5014006 m!6048872))

(assert (=> b!5013879 d!1614460))

(declare-fun b!5014016 () Bool)

(declare-fun res!2138236 () Bool)

(declare-fun e!3132447 () Bool)

(assert (=> b!5014016 (=> (not res!2138236) (not e!3132447))))

(declare-fun head!10743 (List!58025) C!27864)

(assert (=> b!5014016 (= res!2138236 (= (head!10743 (_1!34839 lt!2074473)) (head!10743 lt!2074485)))))

(declare-fun d!1614462 () Bool)

(declare-fun e!3132448 () Bool)

(assert (=> d!1614462 e!3132448))

(declare-fun res!2138237 () Bool)

(assert (=> d!1614462 (=> res!2138237 e!3132448)))

(declare-fun lt!2074576 () Bool)

(assert (=> d!1614462 (= res!2138237 (not lt!2074576))))

(declare-fun e!3132449 () Bool)

(assert (=> d!1614462 (= lt!2074576 e!3132449)))

(declare-fun res!2138239 () Bool)

(assert (=> d!1614462 (=> res!2138239 e!3132449)))

(assert (=> d!1614462 (= res!2138239 ((_ is Nil!57901) (_1!34839 lt!2074473)))))

(assert (=> d!1614462 (= (isPrefix!5360 (_1!34839 lt!2074473) lt!2074485) lt!2074576)))

(declare-fun b!5014015 () Bool)

(assert (=> b!5014015 (= e!3132449 e!3132447)))

(declare-fun res!2138238 () Bool)

(assert (=> b!5014015 (=> (not res!2138238) (not e!3132447))))

(assert (=> b!5014015 (= res!2138238 (not ((_ is Nil!57901) lt!2074485)))))

(declare-fun b!5014017 () Bool)

(declare-fun tail!9876 (List!58025) List!58025)

(assert (=> b!5014017 (= e!3132447 (isPrefix!5360 (tail!9876 (_1!34839 lt!2074473)) (tail!9876 lt!2074485)))))

(declare-fun b!5014018 () Bool)

(assert (=> b!5014018 (= e!3132448 (>= (size!38495 lt!2074485) (size!38495 (_1!34839 lt!2074473))))))

(assert (= (and d!1614462 (not res!2138239)) b!5014015))

(assert (= (and b!5014015 res!2138238) b!5014016))

(assert (= (and b!5014016 res!2138236) b!5014017))

(assert (= (and d!1614462 (not res!2138237)) b!5014018))

(declare-fun m!6048874 () Bool)

(assert (=> b!5014016 m!6048874))

(declare-fun m!6048876 () Bool)

(assert (=> b!5014016 m!6048876))

(declare-fun m!6048878 () Bool)

(assert (=> b!5014017 m!6048878))

(declare-fun m!6048880 () Bool)

(assert (=> b!5014017 m!6048880))

(assert (=> b!5014017 m!6048878))

(assert (=> b!5014017 m!6048880))

(declare-fun m!6048882 () Bool)

(assert (=> b!5014017 m!6048882))

(assert (=> b!5014018 m!6048692))

(assert (=> b!5014018 m!6048626))

(assert (=> b!5013899 d!1614462))

(declare-fun d!1614464 () Bool)

(declare-fun e!3132451 () Bool)

(assert (=> d!1614464 e!3132451))

(declare-fun res!2138240 () Bool)

(assert (=> d!1614464 (=> (not res!2138240) (not e!3132451))))

(declare-fun lt!2074577 () List!58025)

(assert (=> d!1614464 (= res!2138240 (= (content!10264 lt!2074577) ((_ map or) (content!10264 (_1!34839 lt!2074473)) (content!10264 (_2!34839 lt!2074473)))))))

(declare-fun e!3132450 () List!58025)

(assert (=> d!1614464 (= lt!2074577 e!3132450)))

(declare-fun c!856500 () Bool)

(assert (=> d!1614464 (= c!856500 ((_ is Nil!57901) (_1!34839 lt!2074473)))))

(assert (=> d!1614464 (= (++!12655 (_1!34839 lt!2074473) (_2!34839 lt!2074473)) lt!2074577)))

(declare-fun b!5014021 () Bool)

(declare-fun res!2138241 () Bool)

(assert (=> b!5014021 (=> (not res!2138241) (not e!3132451))))

(assert (=> b!5014021 (= res!2138241 (= (size!38495 lt!2074577) (+ (size!38495 (_1!34839 lt!2074473)) (size!38495 (_2!34839 lt!2074473)))))))

(declare-fun b!5014019 () Bool)

(assert (=> b!5014019 (= e!3132450 (_2!34839 lt!2074473))))

(declare-fun b!5014020 () Bool)

(assert (=> b!5014020 (= e!3132450 (Cons!57901 (h!64349 (_1!34839 lt!2074473)) (++!12655 (t!370393 (_1!34839 lt!2074473)) (_2!34839 lt!2074473))))))

(declare-fun b!5014022 () Bool)

(assert (=> b!5014022 (= e!3132451 (or (not (= (_2!34839 lt!2074473) Nil!57901)) (= lt!2074577 (_1!34839 lt!2074473))))))

(assert (= (and d!1614464 c!856500) b!5014019))

(assert (= (and d!1614464 (not c!856500)) b!5014020))

(assert (= (and d!1614464 res!2138240) b!5014021))

(assert (= (and b!5014021 res!2138241) b!5014022))

(declare-fun m!6048884 () Bool)

(assert (=> d!1614464 m!6048884))

(declare-fun m!6048886 () Bool)

(assert (=> d!1614464 m!6048886))

(declare-fun m!6048888 () Bool)

(assert (=> d!1614464 m!6048888))

(declare-fun m!6048890 () Bool)

(assert (=> b!5014021 m!6048890))

(assert (=> b!5014021 m!6048626))

(declare-fun m!6048892 () Bool)

(assert (=> b!5014021 m!6048892))

(declare-fun m!6048894 () Bool)

(assert (=> b!5014020 m!6048894))

(assert (=> b!5013888 d!1614464))

(declare-fun b!5014051 () Bool)

(declare-fun e!3132472 () Bool)

(declare-fun e!3132467 () Bool)

(assert (=> b!5014051 (= e!3132472 e!3132467)))

(declare-fun res!2138259 () Bool)

(assert (=> b!5014051 (=> (not res!2138259) (not e!3132467))))

(declare-fun lt!2074580 () Bool)

(assert (=> b!5014051 (= res!2138259 (not lt!2074580))))

(declare-fun b!5014052 () Bool)

(declare-fun e!3132466 () Bool)

(assert (=> b!5014052 (= e!3132466 (= (head!10743 (_1!34839 lt!2074474)) (c!856478 r!12727)))))

(declare-fun b!5014053 () Bool)

(declare-fun e!3132471 () Bool)

(assert (=> b!5014053 (= e!3132471 (not (= (head!10743 (_1!34839 lt!2074474)) (c!856478 r!12727))))))

(declare-fun b!5014054 () Bool)

(declare-fun e!3132468 () Bool)

(assert (=> b!5014054 (= e!3132468 (not lt!2074580))))

(declare-fun b!5014055 () Bool)

(declare-fun res!2138258 () Bool)

(assert (=> b!5014055 (=> res!2138258 e!3132472)))

(assert (=> b!5014055 (= res!2138258 (not ((_ is ElementMatch!13807) r!12727)))))

(assert (=> b!5014055 (= e!3132468 e!3132472)))

(declare-fun d!1614466 () Bool)

(declare-fun e!3132470 () Bool)

(assert (=> d!1614466 e!3132470))

(declare-fun c!856509 () Bool)

(assert (=> d!1614466 (= c!856509 ((_ is EmptyExpr!13807) r!12727))))

(declare-fun e!3132469 () Bool)

(assert (=> d!1614466 (= lt!2074580 e!3132469)))

(declare-fun c!856507 () Bool)

(assert (=> d!1614466 (= c!856507 (isEmpty!31370 (_1!34839 lt!2074474)))))

(assert (=> d!1614466 (validRegex!6104 r!12727)))

(assert (=> d!1614466 (= (matchR!6771 r!12727 (_1!34839 lt!2074474)) lt!2074580)))

(declare-fun b!5014056 () Bool)

(assert (=> b!5014056 (= e!3132470 e!3132468)))

(declare-fun c!856508 () Bool)

(assert (=> b!5014056 (= c!856508 ((_ is EmptyLang!13807) r!12727))))

(declare-fun b!5014057 () Bool)

(assert (=> b!5014057 (= e!3132469 (nullable!4695 r!12727))))

(declare-fun b!5014058 () Bool)

(declare-fun res!2138261 () Bool)

(assert (=> b!5014058 (=> res!2138261 e!3132472)))

(assert (=> b!5014058 (= res!2138261 e!3132466)))

(declare-fun res!2138263 () Bool)

(assert (=> b!5014058 (=> (not res!2138263) (not e!3132466))))

(assert (=> b!5014058 (= res!2138263 lt!2074580)))

(declare-fun b!5014059 () Bool)

(declare-fun res!2138260 () Bool)

(assert (=> b!5014059 (=> res!2138260 e!3132471)))

(assert (=> b!5014059 (= res!2138260 (not (isEmpty!31370 (tail!9876 (_1!34839 lt!2074474)))))))

(declare-fun b!5014060 () Bool)

(declare-fun derivativeStep!3985 (Regex!13807 C!27864) Regex!13807)

(assert (=> b!5014060 (= e!3132469 (matchR!6771 (derivativeStep!3985 r!12727 (head!10743 (_1!34839 lt!2074474))) (tail!9876 (_1!34839 lt!2074474))))))

(declare-fun b!5014061 () Bool)

(declare-fun res!2138262 () Bool)

(assert (=> b!5014061 (=> (not res!2138262) (not e!3132466))))

(assert (=> b!5014061 (= res!2138262 (isEmpty!31370 (tail!9876 (_1!34839 lt!2074474))))))

(declare-fun b!5014062 () Bool)

(assert (=> b!5014062 (= e!3132467 e!3132471)))

(declare-fun res!2138264 () Bool)

(assert (=> b!5014062 (=> res!2138264 e!3132471)))

(declare-fun call!350158 () Bool)

(assert (=> b!5014062 (= res!2138264 call!350158)))

(declare-fun bm!350153 () Bool)

(assert (=> bm!350153 (= call!350158 (isEmpty!31370 (_1!34839 lt!2074474)))))

(declare-fun b!5014063 () Bool)

(assert (=> b!5014063 (= e!3132470 (= lt!2074580 call!350158))))

(declare-fun b!5014064 () Bool)

(declare-fun res!2138265 () Bool)

(assert (=> b!5014064 (=> (not res!2138265) (not e!3132466))))

(assert (=> b!5014064 (= res!2138265 (not call!350158))))

(assert (= (and d!1614466 c!856507) b!5014057))

(assert (= (and d!1614466 (not c!856507)) b!5014060))

(assert (= (and d!1614466 c!856509) b!5014063))

(assert (= (and d!1614466 (not c!856509)) b!5014056))

(assert (= (and b!5014056 c!856508) b!5014054))

(assert (= (and b!5014056 (not c!856508)) b!5014055))

(assert (= (and b!5014055 (not res!2138258)) b!5014058))

(assert (= (and b!5014058 res!2138263) b!5014064))

(assert (= (and b!5014064 res!2138265) b!5014061))

(assert (= (and b!5014061 res!2138262) b!5014052))

(assert (= (and b!5014058 (not res!2138261)) b!5014051))

(assert (= (and b!5014051 res!2138259) b!5014062))

(assert (= (and b!5014062 (not res!2138264)) b!5014059))

(assert (= (and b!5014059 (not res!2138260)) b!5014053))

(assert (= (or b!5014063 b!5014062 b!5014064) bm!350153))

(declare-fun m!6048896 () Bool)

(assert (=> b!5014053 m!6048896))

(declare-fun m!6048898 () Bool)

(assert (=> b!5014057 m!6048898))

(assert (=> b!5014052 m!6048896))

(assert (=> b!5014060 m!6048896))

(assert (=> b!5014060 m!6048896))

(declare-fun m!6048900 () Bool)

(assert (=> b!5014060 m!6048900))

(declare-fun m!6048902 () Bool)

(assert (=> b!5014060 m!6048902))

(assert (=> b!5014060 m!6048900))

(assert (=> b!5014060 m!6048902))

(declare-fun m!6048904 () Bool)

(assert (=> b!5014060 m!6048904))

(assert (=> b!5014059 m!6048902))

(assert (=> b!5014059 m!6048902))

(declare-fun m!6048906 () Bool)

(assert (=> b!5014059 m!6048906))

(assert (=> bm!350153 m!6048702))

(assert (=> b!5014061 m!6048902))

(assert (=> b!5014061 m!6048902))

(assert (=> b!5014061 m!6048906))

(assert (=> d!1614466 m!6048702))

(assert (=> d!1614466 m!6048640))

(assert (=> b!5013900 d!1614466))

(declare-fun d!1614468 () Bool)

(declare-fun c!856512 () Bool)

(assert (=> d!1614468 (= c!856512 (isEmpty!31370 (take!666 (drop!2470 lt!2074465 lt!2074471) lt!2074477)))))

(declare-fun e!3132475 () Bool)

(assert (=> d!1614468 (= (matchZipper!575 z!4183 (take!666 (drop!2470 lt!2074465 lt!2074471) lt!2074477)) e!3132475)))

(declare-fun b!5014069 () Bool)

(declare-fun nullableZipper!890 ((InoxSet Context!6464)) Bool)

(assert (=> b!5014069 (= e!3132475 (nullableZipper!890 z!4183))))

(declare-fun b!5014070 () Bool)

(declare-fun derivationStepZipper!639 ((InoxSet Context!6464) C!27864) (InoxSet Context!6464))

(assert (=> b!5014070 (= e!3132475 (matchZipper!575 (derivationStepZipper!639 z!4183 (head!10743 (take!666 (drop!2470 lt!2074465 lt!2074471) lt!2074477))) (tail!9876 (take!666 (drop!2470 lt!2074465 lt!2074471) lt!2074477))))))

(assert (= (and d!1614468 c!856512) b!5014069))

(assert (= (and d!1614468 (not c!856512)) b!5014070))

(assert (=> d!1614468 m!6048634))

(declare-fun m!6048908 () Bool)

(assert (=> d!1614468 m!6048908))

(declare-fun m!6048910 () Bool)

(assert (=> b!5014069 m!6048910))

(assert (=> b!5014070 m!6048634))

(declare-fun m!6048912 () Bool)

(assert (=> b!5014070 m!6048912))

(assert (=> b!5014070 m!6048912))

(declare-fun m!6048914 () Bool)

(assert (=> b!5014070 m!6048914))

(assert (=> b!5014070 m!6048634))

(declare-fun m!6048916 () Bool)

(assert (=> b!5014070 m!6048916))

(assert (=> b!5014070 m!6048914))

(assert (=> b!5014070 m!6048916))

(declare-fun m!6048918 () Bool)

(assert (=> b!5014070 m!6048918))

(assert (=> b!5013890 d!1614468))

(declare-fun b!5014085 () Bool)

(declare-fun e!3132487 () Bool)

(declare-fun lt!2074583 () List!58025)

(declare-fun e!3132485 () Int)

(assert (=> b!5014085 (= e!3132487 (= (size!38495 lt!2074583) e!3132485))))

(declare-fun c!856519 () Bool)

(assert (=> b!5014085 (= c!856519 (<= lt!2074477 0))))

(declare-fun d!1614470 () Bool)

(assert (=> d!1614470 e!3132487))

(declare-fun res!2138268 () Bool)

(assert (=> d!1614470 (=> (not res!2138268) (not e!3132487))))

(assert (=> d!1614470 (= res!2138268 (= ((_ map implies) (content!10264 lt!2074583) (content!10264 (drop!2470 lt!2074465 lt!2074471))) ((as const (InoxSet C!27864)) true)))))

(declare-fun e!3132486 () List!58025)

(assert (=> d!1614470 (= lt!2074583 e!3132486)))

(declare-fun c!856520 () Bool)

(assert (=> d!1614470 (= c!856520 (or ((_ is Nil!57901) (drop!2470 lt!2074465 lt!2074471)) (<= lt!2074477 0)))))

(assert (=> d!1614470 (= (take!666 (drop!2470 lt!2074465 lt!2074471) lt!2074477) lt!2074583)))

(declare-fun b!5014086 () Bool)

(declare-fun e!3132484 () Int)

(assert (=> b!5014086 (= e!3132484 (size!38495 (drop!2470 lt!2074465 lt!2074471)))))

(declare-fun b!5014087 () Bool)

(assert (=> b!5014087 (= e!3132485 0)))

(declare-fun b!5014088 () Bool)

(assert (=> b!5014088 (= e!3132485 e!3132484)))

(declare-fun c!856521 () Bool)

(assert (=> b!5014088 (= c!856521 (>= lt!2074477 (size!38495 (drop!2470 lt!2074465 lt!2074471))))))

(declare-fun b!5014089 () Bool)

(assert (=> b!5014089 (= e!3132486 (Cons!57901 (h!64349 (drop!2470 lt!2074465 lt!2074471)) (take!666 (t!370393 (drop!2470 lt!2074465 lt!2074471)) (- lt!2074477 1))))))

(declare-fun b!5014090 () Bool)

(assert (=> b!5014090 (= e!3132484 lt!2074477)))

(declare-fun b!5014091 () Bool)

(assert (=> b!5014091 (= e!3132486 Nil!57901)))

(assert (= (and d!1614470 c!856520) b!5014091))

(assert (= (and d!1614470 (not c!856520)) b!5014089))

(assert (= (and d!1614470 res!2138268) b!5014085))

(assert (= (and b!5014085 c!856519) b!5014087))

(assert (= (and b!5014085 (not c!856519)) b!5014088))

(assert (= (and b!5014088 c!856521) b!5014086))

(assert (= (and b!5014088 (not c!856521)) b!5014090))

(declare-fun m!6048920 () Bool)

(assert (=> b!5014089 m!6048920))

(declare-fun m!6048922 () Bool)

(assert (=> d!1614470 m!6048922))

(assert (=> d!1614470 m!6048632))

(declare-fun m!6048924 () Bool)

(assert (=> d!1614470 m!6048924))

(assert (=> b!5014086 m!6048632))

(declare-fun m!6048926 () Bool)

(assert (=> b!5014086 m!6048926))

(assert (=> b!5014088 m!6048632))

(assert (=> b!5014088 m!6048926))

(declare-fun m!6048928 () Bool)

(assert (=> b!5014085 m!6048928))

(assert (=> b!5013890 d!1614470))

(declare-fun b!5014110 () Bool)

(declare-fun e!3132499 () Int)

(declare-fun e!3132501 () Int)

(assert (=> b!5014110 (= e!3132499 e!3132501)))

(declare-fun c!856531 () Bool)

(declare-fun call!350161 () Int)

(assert (=> b!5014110 (= c!856531 (>= lt!2074471 call!350161))))

(declare-fun b!5014111 () Bool)

(assert (=> b!5014111 (= e!3132501 0)))

(declare-fun b!5014112 () Bool)

(declare-fun e!3132498 () List!58025)

(assert (=> b!5014112 (= e!3132498 lt!2074465)))

(declare-fun b!5014113 () Bool)

(declare-fun e!3132502 () List!58025)

(assert (=> b!5014113 (= e!3132502 e!3132498)))

(declare-fun c!856532 () Bool)

(assert (=> b!5014113 (= c!856532 (<= lt!2074471 0))))

(declare-fun b!5014114 () Bool)

(declare-fun e!3132500 () Bool)

(declare-fun lt!2074586 () List!58025)

(assert (=> b!5014114 (= e!3132500 (= (size!38495 lt!2074586) e!3132499))))

(declare-fun c!856533 () Bool)

(assert (=> b!5014114 (= c!856533 (<= lt!2074471 0))))

(declare-fun b!5014115 () Bool)

(assert (=> b!5014115 (= e!3132501 (- call!350161 lt!2074471))))

(declare-fun b!5014116 () Bool)

(assert (=> b!5014116 (= e!3132498 (drop!2470 (t!370393 lt!2074465) (- lt!2074471 1)))))

(declare-fun bm!350156 () Bool)

(assert (=> bm!350156 (= call!350161 (size!38495 lt!2074465))))

(declare-fun d!1614472 () Bool)

(assert (=> d!1614472 e!3132500))

(declare-fun res!2138271 () Bool)

(assert (=> d!1614472 (=> (not res!2138271) (not e!3132500))))

(assert (=> d!1614472 (= res!2138271 (= ((_ map implies) (content!10264 lt!2074586) (content!10264 lt!2074465)) ((as const (InoxSet C!27864)) true)))))

(assert (=> d!1614472 (= lt!2074586 e!3132502)))

(declare-fun c!856530 () Bool)

(assert (=> d!1614472 (= c!856530 ((_ is Nil!57901) lt!2074465))))

(assert (=> d!1614472 (= (drop!2470 lt!2074465 lt!2074471) lt!2074586)))

(declare-fun b!5014117 () Bool)

(assert (=> b!5014117 (= e!3132499 call!350161)))

(declare-fun b!5014118 () Bool)

(assert (=> b!5014118 (= e!3132502 Nil!57901)))

(assert (= (and d!1614472 c!856530) b!5014118))

(assert (= (and d!1614472 (not c!856530)) b!5014113))

(assert (= (and b!5014113 c!856532) b!5014112))

(assert (= (and b!5014113 (not c!856532)) b!5014116))

(assert (= (and d!1614472 res!2138271) b!5014114))

(assert (= (and b!5014114 c!856533) b!5014117))

(assert (= (and b!5014114 (not c!856533)) b!5014110))

(assert (= (and b!5014110 c!856531) b!5014111))

(assert (= (and b!5014110 (not c!856531)) b!5014115))

(assert (= (or b!5014117 b!5014110 b!5014115) bm!350156))

(declare-fun m!6048930 () Bool)

(assert (=> b!5014114 m!6048930))

(declare-fun m!6048932 () Bool)

(assert (=> b!5014116 m!6048932))

(assert (=> bm!350156 m!6048718))

(declare-fun m!6048934 () Bool)

(assert (=> d!1614472 m!6048934))

(declare-fun m!6048936 () Bool)

(assert (=> d!1614472 m!6048936))

(assert (=> b!5013890 d!1614472))

(declare-fun b!5014119 () Bool)

(declare-fun e!3132509 () Bool)

(declare-fun e!3132504 () Bool)

(assert (=> b!5014119 (= e!3132509 e!3132504)))

(declare-fun res!2138273 () Bool)

(assert (=> b!5014119 (=> (not res!2138273) (not e!3132504))))

(declare-fun lt!2074587 () Bool)

(assert (=> b!5014119 (= res!2138273 (not lt!2074587))))

(declare-fun b!5014120 () Bool)

(declare-fun e!3132503 () Bool)

(assert (=> b!5014120 (= e!3132503 (= (head!10743 (_1!34839 lt!2074473)) (c!856478 r!12727)))))

(declare-fun b!5014121 () Bool)

(declare-fun e!3132508 () Bool)

(assert (=> b!5014121 (= e!3132508 (not (= (head!10743 (_1!34839 lt!2074473)) (c!856478 r!12727))))))

(declare-fun b!5014122 () Bool)

(declare-fun e!3132505 () Bool)

(assert (=> b!5014122 (= e!3132505 (not lt!2074587))))

(declare-fun b!5014123 () Bool)

(declare-fun res!2138272 () Bool)

(assert (=> b!5014123 (=> res!2138272 e!3132509)))

(assert (=> b!5014123 (= res!2138272 (not ((_ is ElementMatch!13807) r!12727)))))

(assert (=> b!5014123 (= e!3132505 e!3132509)))

(declare-fun d!1614474 () Bool)

(declare-fun e!3132507 () Bool)

(assert (=> d!1614474 e!3132507))

(declare-fun c!856536 () Bool)

(assert (=> d!1614474 (= c!856536 ((_ is EmptyExpr!13807) r!12727))))

(declare-fun e!3132506 () Bool)

(assert (=> d!1614474 (= lt!2074587 e!3132506)))

(declare-fun c!856534 () Bool)

(assert (=> d!1614474 (= c!856534 (isEmpty!31370 (_1!34839 lt!2074473)))))

(assert (=> d!1614474 (validRegex!6104 r!12727)))

(assert (=> d!1614474 (= (matchR!6771 r!12727 (_1!34839 lt!2074473)) lt!2074587)))

(declare-fun b!5014124 () Bool)

(assert (=> b!5014124 (= e!3132507 e!3132505)))

(declare-fun c!856535 () Bool)

(assert (=> b!5014124 (= c!856535 ((_ is EmptyLang!13807) r!12727))))

(declare-fun b!5014125 () Bool)

(assert (=> b!5014125 (= e!3132506 (nullable!4695 r!12727))))

(declare-fun b!5014126 () Bool)

(declare-fun res!2138275 () Bool)

(assert (=> b!5014126 (=> res!2138275 e!3132509)))

(assert (=> b!5014126 (= res!2138275 e!3132503)))

(declare-fun res!2138277 () Bool)

(assert (=> b!5014126 (=> (not res!2138277) (not e!3132503))))

(assert (=> b!5014126 (= res!2138277 lt!2074587)))

(declare-fun b!5014127 () Bool)

(declare-fun res!2138274 () Bool)

(assert (=> b!5014127 (=> res!2138274 e!3132508)))

(assert (=> b!5014127 (= res!2138274 (not (isEmpty!31370 (tail!9876 (_1!34839 lt!2074473)))))))

(declare-fun b!5014128 () Bool)

(assert (=> b!5014128 (= e!3132506 (matchR!6771 (derivativeStep!3985 r!12727 (head!10743 (_1!34839 lt!2074473))) (tail!9876 (_1!34839 lt!2074473))))))

(declare-fun b!5014129 () Bool)

(declare-fun res!2138276 () Bool)

(assert (=> b!5014129 (=> (not res!2138276) (not e!3132503))))

(assert (=> b!5014129 (= res!2138276 (isEmpty!31370 (tail!9876 (_1!34839 lt!2074473))))))

(declare-fun b!5014130 () Bool)

(assert (=> b!5014130 (= e!3132504 e!3132508)))

(declare-fun res!2138278 () Bool)

(assert (=> b!5014130 (=> res!2138278 e!3132508)))

(declare-fun call!350162 () Bool)

(assert (=> b!5014130 (= res!2138278 call!350162)))

(declare-fun bm!350157 () Bool)

(assert (=> bm!350157 (= call!350162 (isEmpty!31370 (_1!34839 lt!2074473)))))

(declare-fun b!5014131 () Bool)

(assert (=> b!5014131 (= e!3132507 (= lt!2074587 call!350162))))

(declare-fun b!5014132 () Bool)

(declare-fun res!2138279 () Bool)

(assert (=> b!5014132 (=> (not res!2138279) (not e!3132503))))

(assert (=> b!5014132 (= res!2138279 (not call!350162))))

(assert (= (and d!1614474 c!856534) b!5014125))

(assert (= (and d!1614474 (not c!856534)) b!5014128))

(assert (= (and d!1614474 c!856536) b!5014131))

(assert (= (and d!1614474 (not c!856536)) b!5014124))

(assert (= (and b!5014124 c!856535) b!5014122))

(assert (= (and b!5014124 (not c!856535)) b!5014123))

(assert (= (and b!5014123 (not res!2138272)) b!5014126))

(assert (= (and b!5014126 res!2138277) b!5014132))

(assert (= (and b!5014132 res!2138279) b!5014129))

(assert (= (and b!5014129 res!2138276) b!5014120))

(assert (= (and b!5014126 (not res!2138275)) b!5014119))

(assert (= (and b!5014119 res!2138273) b!5014130))

(assert (= (and b!5014130 (not res!2138278)) b!5014127))

(assert (= (and b!5014127 (not res!2138274)) b!5014121))

(assert (= (or b!5014131 b!5014130 b!5014132) bm!350157))

(assert (=> b!5014121 m!6048874))

(assert (=> b!5014125 m!6048898))

(assert (=> b!5014120 m!6048874))

(assert (=> b!5014128 m!6048874))

(assert (=> b!5014128 m!6048874))

(declare-fun m!6048938 () Bool)

(assert (=> b!5014128 m!6048938))

(assert (=> b!5014128 m!6048878))

(assert (=> b!5014128 m!6048938))

(assert (=> b!5014128 m!6048878))

(declare-fun m!6048940 () Bool)

(assert (=> b!5014128 m!6048940))

(assert (=> b!5014127 m!6048878))

(assert (=> b!5014127 m!6048878))

(declare-fun m!6048942 () Bool)

(assert (=> b!5014127 m!6048942))

(assert (=> bm!350157 m!6048712))

(assert (=> b!5014129 m!6048878))

(assert (=> b!5014129 m!6048878))

(assert (=> b!5014129 m!6048942))

(assert (=> d!1614474 m!6048712))

(assert (=> d!1614474 m!6048640))

(assert (=> b!5013880 d!1614474))

(declare-fun d!1614476 () Bool)

(declare-fun lambda!248596 () Int)

(declare-fun forall!13376 (List!58026 Int) Bool)

(assert (=> d!1614476 (= (inv!76103 setElem!28472) (forall!13376 (exprs!3732 setElem!28472) lambda!248596))))

(declare-fun bs!1186861 () Bool)

(assert (= bs!1186861 d!1614476))

(declare-fun m!6049102 () Bool)

(assert (=> bs!1186861 m!6049102))

(assert (=> setNonEmpty!28472 d!1614476))

(declare-fun d!1614514 () Bool)

(declare-fun c!856596 () Bool)

(assert (=> d!1614514 (= c!856596 ((_ is Node!15326) (c!856477 totalInput!1012)))))

(declare-fun e!3132603 () Bool)

(assert (=> d!1614514 (= (inv!76101 (c!856477 totalInput!1012)) e!3132603)))

(declare-fun b!5014288 () Bool)

(assert (=> b!5014288 (= e!3132603 (inv!76104 (c!856477 totalInput!1012)))))

(declare-fun b!5014289 () Bool)

(declare-fun e!3132604 () Bool)

(assert (=> b!5014289 (= e!3132603 e!3132604)))

(declare-fun res!2138317 () Bool)

(assert (=> b!5014289 (= res!2138317 (not ((_ is Leaf!25438) (c!856477 totalInput!1012))))))

(assert (=> b!5014289 (=> res!2138317 e!3132604)))

(declare-fun b!5014290 () Bool)

(assert (=> b!5014290 (= e!3132604 (inv!76105 (c!856477 totalInput!1012)))))

(assert (= (and d!1614514 c!856596) b!5014288))

(assert (= (and d!1614514 (not c!856596)) b!5014289))

(assert (= (and b!5014289 (not res!2138317)) b!5014290))

(declare-fun m!6049110 () Bool)

(assert (=> b!5014288 m!6049110))

(declare-fun m!6049112 () Bool)

(assert (=> b!5014290 m!6049112))

(assert (=> b!5013897 d!1614514))

(declare-fun d!1614518 () Bool)

(declare-fun lt!2074710 () Int)

(assert (=> d!1614518 (>= lt!2074710 0)))

(declare-fun e!3132607 () Int)

(assert (=> d!1614518 (= lt!2074710 e!3132607)))

(declare-fun c!856599 () Bool)

(assert (=> d!1614518 (= c!856599 ((_ is Nil!57901) (_1!34839 lt!2074473)))))

(assert (=> d!1614518 (= (size!38495 (_1!34839 lt!2074473)) lt!2074710)))

(declare-fun b!5014295 () Bool)

(assert (=> b!5014295 (= e!3132607 0)))

(declare-fun b!5014296 () Bool)

(assert (=> b!5014296 (= e!3132607 (+ 1 (size!38495 (t!370393 (_1!34839 lt!2074473)))))))

(assert (= (and d!1614518 c!856599) b!5014295))

(assert (= (and d!1614518 (not c!856599)) b!5014296))

(declare-fun m!6049114 () Bool)

(assert (=> b!5014296 m!6049114))

(assert (=> b!5013896 d!1614518))

(declare-fun d!1614520 () Bool)

(assert (=> d!1614520 (= (matchR!6771 r!12727 (_1!34839 lt!2074473)) (matchZipper!575 z!4183 (_1!34839 lt!2074473)))))

(declare-fun lt!2074713 () Unit!149117)

(declare-fun choose!37087 ((InoxSet Context!6464) List!58027 Regex!13807 List!58025) Unit!149117)

(assert (=> d!1614520 (= lt!2074713 (choose!37087 z!4183 lt!2074480 r!12727 (_1!34839 lt!2074473)))))

(assert (=> d!1614520 (validRegex!6104 r!12727)))

(assert (=> d!1614520 (= (theoremZipperRegexEquiv!179 z!4183 lt!2074480 r!12727 (_1!34839 lt!2074473)) lt!2074713)))

(declare-fun bs!1186862 () Bool)

(assert (= bs!1186862 d!1614520))

(assert (=> bs!1186862 m!6048674))

(assert (=> bs!1186862 m!6048618))

(declare-fun m!6049116 () Bool)

(assert (=> bs!1186862 m!6049116))

(assert (=> bs!1186862 m!6048640))

(assert (=> b!5013896 d!1614520))

(declare-fun d!1614522 () Bool)

(declare-fun c!856600 () Bool)

(assert (=> d!1614522 (= c!856600 (isEmpty!31370 (_1!34839 lt!2074473)))))

(declare-fun e!3132608 () Bool)

(assert (=> d!1614522 (= (matchZipper!575 z!4183 (_1!34839 lt!2074473)) e!3132608)))

(declare-fun b!5014297 () Bool)

(assert (=> b!5014297 (= e!3132608 (nullableZipper!890 z!4183))))

(declare-fun b!5014298 () Bool)

(assert (=> b!5014298 (= e!3132608 (matchZipper!575 (derivationStepZipper!639 z!4183 (head!10743 (_1!34839 lt!2074473))) (tail!9876 (_1!34839 lt!2074473))))))

(assert (= (and d!1614522 c!856600) b!5014297))

(assert (= (and d!1614522 (not c!856600)) b!5014298))

(assert (=> d!1614522 m!6048712))

(assert (=> b!5014297 m!6048910))

(assert (=> b!5014298 m!6048874))

(assert (=> b!5014298 m!6048874))

(declare-fun m!6049118 () Bool)

(assert (=> b!5014298 m!6049118))

(assert (=> b!5014298 m!6048878))

(assert (=> b!5014298 m!6049118))

(assert (=> b!5014298 m!6048878))

(declare-fun m!6049120 () Bool)

(assert (=> b!5014298 m!6049120))

(assert (=> b!5013896 d!1614522))

(declare-fun d!1614524 () Bool)

(assert (=> d!1614524 (= (matchR!6771 r!12727 lt!2074484) (matchZipper!575 z!4183 lt!2074484))))

(declare-fun lt!2074714 () Unit!149117)

(assert (=> d!1614524 (= lt!2074714 (choose!37087 z!4183 lt!2074480 r!12727 lt!2074484))))

(assert (=> d!1614524 (validRegex!6104 r!12727)))

(assert (=> d!1614524 (= (theoremZipperRegexEquiv!179 z!4183 lt!2074480 r!12727 lt!2074484) lt!2074714)))

(declare-fun bs!1186863 () Bool)

(assert (= bs!1186863 d!1614524))

(assert (=> bs!1186863 m!6048624))

(assert (=> bs!1186863 m!6048684))

(declare-fun m!6049122 () Bool)

(assert (=> bs!1186863 m!6049122))

(assert (=> bs!1186863 m!6048640))

(assert (=> b!5013896 d!1614524))

(declare-fun b!5014299 () Bool)

(declare-fun e!3132615 () Bool)

(declare-fun e!3132610 () Bool)

(assert (=> b!5014299 (= e!3132615 e!3132610)))

(declare-fun res!2138319 () Bool)

(assert (=> b!5014299 (=> (not res!2138319) (not e!3132610))))

(declare-fun lt!2074715 () Bool)

(assert (=> b!5014299 (= res!2138319 (not lt!2074715))))

(declare-fun b!5014300 () Bool)

(declare-fun e!3132609 () Bool)

(assert (=> b!5014300 (= e!3132609 (= (head!10743 lt!2074484) (c!856478 r!12727)))))

(declare-fun b!5014301 () Bool)

(declare-fun e!3132614 () Bool)

(assert (=> b!5014301 (= e!3132614 (not (= (head!10743 lt!2074484) (c!856478 r!12727))))))

(declare-fun b!5014302 () Bool)

(declare-fun e!3132611 () Bool)

(assert (=> b!5014302 (= e!3132611 (not lt!2074715))))

(declare-fun b!5014303 () Bool)

(declare-fun res!2138318 () Bool)

(assert (=> b!5014303 (=> res!2138318 e!3132615)))

(assert (=> b!5014303 (= res!2138318 (not ((_ is ElementMatch!13807) r!12727)))))

(assert (=> b!5014303 (= e!3132611 e!3132615)))

(declare-fun d!1614526 () Bool)

(declare-fun e!3132613 () Bool)

(assert (=> d!1614526 e!3132613))

(declare-fun c!856603 () Bool)

(assert (=> d!1614526 (= c!856603 ((_ is EmptyExpr!13807) r!12727))))

(declare-fun e!3132612 () Bool)

(assert (=> d!1614526 (= lt!2074715 e!3132612)))

(declare-fun c!856601 () Bool)

(assert (=> d!1614526 (= c!856601 (isEmpty!31370 lt!2074484))))

(assert (=> d!1614526 (validRegex!6104 r!12727)))

(assert (=> d!1614526 (= (matchR!6771 r!12727 lt!2074484) lt!2074715)))

(declare-fun b!5014304 () Bool)

(assert (=> b!5014304 (= e!3132613 e!3132611)))

(declare-fun c!856602 () Bool)

(assert (=> b!5014304 (= c!856602 ((_ is EmptyLang!13807) r!12727))))

(declare-fun b!5014305 () Bool)

(assert (=> b!5014305 (= e!3132612 (nullable!4695 r!12727))))

(declare-fun b!5014306 () Bool)

(declare-fun res!2138321 () Bool)

(assert (=> b!5014306 (=> res!2138321 e!3132615)))

(assert (=> b!5014306 (= res!2138321 e!3132609)))

(declare-fun res!2138323 () Bool)

(assert (=> b!5014306 (=> (not res!2138323) (not e!3132609))))

(assert (=> b!5014306 (= res!2138323 lt!2074715)))

(declare-fun b!5014307 () Bool)

(declare-fun res!2138320 () Bool)

(assert (=> b!5014307 (=> res!2138320 e!3132614)))

(assert (=> b!5014307 (= res!2138320 (not (isEmpty!31370 (tail!9876 lt!2074484))))))

(declare-fun b!5014308 () Bool)

(assert (=> b!5014308 (= e!3132612 (matchR!6771 (derivativeStep!3985 r!12727 (head!10743 lt!2074484)) (tail!9876 lt!2074484)))))

(declare-fun b!5014309 () Bool)

(declare-fun res!2138322 () Bool)

(assert (=> b!5014309 (=> (not res!2138322) (not e!3132609))))

(assert (=> b!5014309 (= res!2138322 (isEmpty!31370 (tail!9876 lt!2074484)))))

(declare-fun b!5014310 () Bool)

(assert (=> b!5014310 (= e!3132610 e!3132614)))

(declare-fun res!2138324 () Bool)

(assert (=> b!5014310 (=> res!2138324 e!3132614)))

(declare-fun call!350190 () Bool)

(assert (=> b!5014310 (= res!2138324 call!350190)))

(declare-fun bm!350185 () Bool)

(assert (=> bm!350185 (= call!350190 (isEmpty!31370 lt!2074484))))

(declare-fun b!5014311 () Bool)

(assert (=> b!5014311 (= e!3132613 (= lt!2074715 call!350190))))

(declare-fun b!5014312 () Bool)

(declare-fun res!2138325 () Bool)

(assert (=> b!5014312 (=> (not res!2138325) (not e!3132609))))

(assert (=> b!5014312 (= res!2138325 (not call!350190))))

(assert (= (and d!1614526 c!856601) b!5014305))

(assert (= (and d!1614526 (not c!856601)) b!5014308))

(assert (= (and d!1614526 c!856603) b!5014311))

(assert (= (and d!1614526 (not c!856603)) b!5014304))

(assert (= (and b!5014304 c!856602) b!5014302))

(assert (= (and b!5014304 (not c!856602)) b!5014303))

(assert (= (and b!5014303 (not res!2138318)) b!5014306))

(assert (= (and b!5014306 res!2138323) b!5014312))

(assert (= (and b!5014312 res!2138325) b!5014309))

(assert (= (and b!5014309 res!2138322) b!5014300))

(assert (= (and b!5014306 (not res!2138321)) b!5014299))

(assert (= (and b!5014299 res!2138319) b!5014310))

(assert (= (and b!5014310 (not res!2138324)) b!5014307))

(assert (= (and b!5014307 (not res!2138320)) b!5014301))

(assert (= (or b!5014311 b!5014310 b!5014312) bm!350185))

(declare-fun m!6049124 () Bool)

(assert (=> b!5014301 m!6049124))

(assert (=> b!5014305 m!6048898))

(assert (=> b!5014300 m!6049124))

(assert (=> b!5014308 m!6049124))

(assert (=> b!5014308 m!6049124))

(declare-fun m!6049126 () Bool)

(assert (=> b!5014308 m!6049126))

(declare-fun m!6049128 () Bool)

(assert (=> b!5014308 m!6049128))

(assert (=> b!5014308 m!6049126))

(assert (=> b!5014308 m!6049128))

(declare-fun m!6049130 () Bool)

(assert (=> b!5014308 m!6049130))

(assert (=> b!5014307 m!6049128))

(assert (=> b!5014307 m!6049128))

(declare-fun m!6049132 () Bool)

(assert (=> b!5014307 m!6049132))

(declare-fun m!6049134 () Bool)

(assert (=> bm!350185 m!6049134))

(assert (=> b!5014309 m!6049128))

(assert (=> b!5014309 m!6049128))

(assert (=> b!5014309 m!6049132))

(assert (=> d!1614526 m!6049134))

(assert (=> d!1614526 m!6048640))

(assert (=> b!5013896 d!1614526))

(declare-fun d!1614528 () Bool)

(declare-fun lt!2074716 () Int)

(assert (=> d!1614528 (= lt!2074716 (size!38495 (list!18646 (_1!34840 lt!2074476))))))

(assert (=> d!1614528 (= lt!2074716 (size!38497 (c!856477 (_1!34840 lt!2074476))))))

(assert (=> d!1614528 (= (size!38494 (_1!34840 lt!2074476)) lt!2074716)))

(declare-fun bs!1186864 () Bool)

(assert (= bs!1186864 d!1614528))

(assert (=> bs!1186864 m!6048660))

(assert (=> bs!1186864 m!6048660))

(declare-fun m!6049136 () Bool)

(assert (=> bs!1186864 m!6049136))

(declare-fun m!6049138 () Bool)

(assert (=> bs!1186864 m!6049138))

(assert (=> b!5013896 d!1614528))

(declare-fun b!5014316 () Bool)

(declare-fun res!2138326 () Bool)

(declare-fun e!3132618 () Bool)

(assert (=> b!5014316 (=> (not res!2138326) (not e!3132618))))

(assert (=> b!5014316 (= res!2138326 (= (head!10743 lt!2074484) (head!10743 lt!2074485)))))

(declare-fun d!1614530 () Bool)

(declare-fun e!3132619 () Bool)

(assert (=> d!1614530 e!3132619))

(declare-fun res!2138329 () Bool)

(assert (=> d!1614530 (=> res!2138329 e!3132619)))

(declare-fun lt!2074717 () Bool)

(assert (=> d!1614530 (= res!2138329 (not lt!2074717))))

(declare-fun e!3132620 () Bool)

(assert (=> d!1614530 (= lt!2074717 e!3132620)))

(declare-fun res!2138331 () Bool)

(assert (=> d!1614530 (=> res!2138331 e!3132620)))

(assert (=> d!1614530 (= res!2138331 ((_ is Nil!57901) lt!2074484))))

(assert (=> d!1614530 (= (isPrefix!5360 lt!2074484 lt!2074485) lt!2074717)))

(declare-fun b!5014315 () Bool)

(assert (=> b!5014315 (= e!3132620 e!3132618)))

(declare-fun res!2138330 () Bool)

(assert (=> b!5014315 (=> (not res!2138330) (not e!3132618))))

(assert (=> b!5014315 (= res!2138330 (not ((_ is Nil!57901) lt!2074485)))))

(declare-fun b!5014317 () Bool)

(assert (=> b!5014317 (= e!3132618 (isPrefix!5360 (tail!9876 lt!2074484) (tail!9876 lt!2074485)))))

(declare-fun b!5014318 () Bool)

(assert (=> b!5014318 (= e!3132619 (>= (size!38495 lt!2074485) (size!38495 lt!2074484)))))

(assert (= (and d!1614530 (not res!2138331)) b!5014315))

(assert (= (and b!5014315 res!2138330) b!5014316))

(assert (= (and b!5014316 res!2138326) b!5014317))

(assert (= (and d!1614530 (not res!2138329)) b!5014318))

(assert (=> b!5014316 m!6049124))

(assert (=> b!5014316 m!6048876))

(assert (=> b!5014317 m!6049128))

(assert (=> b!5014317 m!6048880))

(assert (=> b!5014317 m!6049128))

(assert (=> b!5014317 m!6048880))

(declare-fun m!6049140 () Bool)

(assert (=> b!5014317 m!6049140))

(assert (=> b!5014318 m!6048692))

(assert (=> b!5014318 m!6048676))

(assert (=> b!5013887 d!1614530))

(declare-fun d!1614532 () Bool)

(declare-fun lt!2074720 () Int)

(assert (=> d!1614532 (>= lt!2074720 0)))

(declare-fun e!3132623 () Int)

(assert (=> d!1614532 (= lt!2074720 e!3132623)))

(declare-fun c!856604 () Bool)

(assert (=> d!1614532 (= c!856604 ((_ is Nil!57901) lt!2074484))))

(assert (=> d!1614532 (= (size!38495 lt!2074484) lt!2074720)))

(declare-fun b!5014321 () Bool)

(assert (=> b!5014321 (= e!3132623 0)))

(declare-fun b!5014322 () Bool)

(assert (=> b!5014322 (= e!3132623 (+ 1 (size!38495 (t!370393 lt!2074484))))))

(assert (= (and d!1614532 c!856604) b!5014321))

(assert (= (and d!1614532 (not c!856604)) b!5014322))

(declare-fun m!6049142 () Bool)

(assert (=> b!5014322 m!6049142))

(assert (=> b!5013894 d!1614532))

(declare-fun d!1614534 () Bool)

(declare-fun lt!2074724 () Regex!13807)

(assert (=> d!1614534 (validRegex!6104 lt!2074724)))

(declare-fun generalisedUnion!588 (List!58026) Regex!13807)

(declare-fun unfocusZipperList!101 (List!58027) List!58026)

(assert (=> d!1614534 (= lt!2074724 (generalisedUnion!588 (unfocusZipperList!101 lt!2074480)))))

(assert (=> d!1614534 (= (unfocusZipper!334 lt!2074480) lt!2074724)))

(declare-fun bs!1186865 () Bool)

(assert (= bs!1186865 d!1614534))

(declare-fun m!6049154 () Bool)

(assert (=> bs!1186865 m!6049154))

(declare-fun m!6049156 () Bool)

(assert (=> bs!1186865 m!6049156))

(assert (=> bs!1186865 m!6049156))

(declare-fun m!6049158 () Bool)

(assert (=> bs!1186865 m!6049158))

(assert (=> b!5013884 d!1614534))

(declare-fun d!1614538 () Bool)

(declare-fun e!3132628 () Bool)

(assert (=> d!1614538 e!3132628))

(declare-fun res!2138338 () Bool)

(assert (=> d!1614538 (=> (not res!2138338) (not e!3132628))))

(declare-fun lt!2074730 () List!58027)

(declare-fun noDuplicate!1037 (List!58027) Bool)

(assert (=> d!1614538 (= res!2138338 (noDuplicate!1037 lt!2074730))))

(declare-fun choose!37088 ((InoxSet Context!6464)) List!58027)

(assert (=> d!1614538 (= lt!2074730 (choose!37088 z!4183))))

(assert (=> d!1614538 (= (toList!8092 z!4183) lt!2074730)))

(declare-fun b!5014327 () Bool)

(declare-fun content!10265 (List!58027) (InoxSet Context!6464))

(assert (=> b!5014327 (= e!3132628 (= (content!10265 lt!2074730) z!4183))))

(assert (= (and d!1614538 res!2138338) b!5014327))

(declare-fun m!6049162 () Bool)

(assert (=> d!1614538 m!6049162))

(declare-fun m!6049164 () Bool)

(assert (=> d!1614538 m!6049164))

(declare-fun m!6049166 () Bool)

(assert (=> b!5014327 m!6049166))

(assert (=> b!5013884 d!1614538))

(declare-fun b!5014388 () Bool)

(declare-fun e!3132664 () Int)

(declare-fun e!3132663 () Int)

(assert (=> b!5014388 (= e!3132664 e!3132663)))

(declare-fun lt!2074747 () (InoxSet Context!6464))

(declare-fun apply!14006 (BalanceConc!30082 Int) C!27864)

(assert (=> b!5014388 (= lt!2074747 (derivationStepZipper!639 z!4183 (apply!14006 totalInput!1012 lt!2074471)))))

(declare-fun lt!2074746 () Int)

(assert (=> b!5014388 (= lt!2074746 (findLongestMatchInnerZipperFastV2!147 lt!2074747 (+ lt!2074471 1) totalInput!1012 lt!2074486))))

(declare-fun c!856623 () Bool)

(assert (=> b!5014388 (= c!856623 (> lt!2074746 0))))

(declare-fun b!5014389 () Bool)

(declare-fun e!3132665 () Int)

(assert (=> b!5014389 (= e!3132665 1)))

(declare-fun b!5014390 () Bool)

(declare-fun e!3132662 () Bool)

(declare-fun lostCauseZipper!836 ((InoxSet Context!6464)) Bool)

(assert (=> b!5014390 (= e!3132662 (lostCauseZipper!836 z!4183))))

(declare-fun b!5014392 () Bool)

(declare-fun c!856622 () Bool)

(assert (=> b!5014392 (= c!856622 (nullableZipper!890 lt!2074747))))

(assert (=> b!5014392 (= e!3132663 e!3132665)))

(declare-fun b!5014393 () Bool)

(declare-fun e!3132661 () Bool)

(assert (=> b!5014393 (= e!3132661 (<= lt!2074471 (size!38494 totalInput!1012)))))

(declare-fun b!5014394 () Bool)

(assert (=> b!5014394 (= e!3132665 0)))

(declare-fun b!5014395 () Bool)

(assert (=> b!5014395 (= e!3132663 (+ 1 lt!2074746))))

(declare-fun b!5014391 () Bool)

(assert (=> b!5014391 (= e!3132664 0)))

(declare-fun d!1614542 () Bool)

(declare-fun lt!2074748 () Int)

(assert (=> d!1614542 (and (>= lt!2074748 0) (<= lt!2074748 (- lt!2074486 lt!2074471)))))

(assert (=> d!1614542 (= lt!2074748 e!3132664)))

(declare-fun c!856621 () Bool)

(assert (=> d!1614542 (= c!856621 e!3132662)))

(declare-fun res!2138368 () Bool)

(assert (=> d!1614542 (=> res!2138368 e!3132662)))

(assert (=> d!1614542 (= res!2138368 (= lt!2074471 lt!2074486))))

(assert (=> d!1614542 e!3132661))

(declare-fun res!2138367 () Bool)

(assert (=> d!1614542 (=> (not res!2138367) (not e!3132661))))

(assert (=> d!1614542 (= res!2138367 (>= lt!2074471 0))))

(assert (=> d!1614542 (= (findLongestMatchInnerZipperFastV2!147 z!4183 lt!2074471 totalInput!1012 lt!2074486) lt!2074748)))

(assert (= (and d!1614542 res!2138367) b!5014393))

(assert (= (and d!1614542 (not res!2138368)) b!5014390))

(assert (= (and d!1614542 c!856621) b!5014391))

(assert (= (and d!1614542 (not c!856621)) b!5014388))

(assert (= (and b!5014388 c!856623) b!5014395))

(assert (= (and b!5014388 (not c!856623)) b!5014392))

(assert (= (and b!5014392 c!856622) b!5014389))

(assert (= (and b!5014392 (not c!856622)) b!5014394))

(declare-fun m!6049188 () Bool)

(assert (=> b!5014388 m!6049188))

(assert (=> b!5014388 m!6049188))

(declare-fun m!6049190 () Bool)

(assert (=> b!5014388 m!6049190))

(declare-fun m!6049194 () Bool)

(assert (=> b!5014388 m!6049194))

(declare-fun m!6049196 () Bool)

(assert (=> b!5014390 m!6049196))

(declare-fun m!6049198 () Bool)

(assert (=> b!5014392 m!6049198))

(assert (=> b!5014393 m!6048670))

(assert (=> b!5013895 d!1614542))

(declare-fun d!1614558 () Bool)

(declare-fun c!856629 () Bool)

(assert (=> d!1614558 (= c!856629 (isEmpty!31370 lt!2074484))))

(declare-fun e!3132675 () Bool)

(assert (=> d!1614558 (= (matchZipper!575 z!4183 lt!2074484) e!3132675)))

(declare-fun b!5014414 () Bool)

(assert (=> b!5014414 (= e!3132675 (nullableZipper!890 z!4183))))

(declare-fun b!5014415 () Bool)

(assert (=> b!5014415 (= e!3132675 (matchZipper!575 (derivationStepZipper!639 z!4183 (head!10743 lt!2074484)) (tail!9876 lt!2074484)))))

(assert (= (and d!1614558 c!856629) b!5014414))

(assert (= (and d!1614558 (not c!856629)) b!5014415))

(assert (=> d!1614558 m!6049134))

(assert (=> b!5014414 m!6048910))

(assert (=> b!5014415 m!6049124))

(assert (=> b!5014415 m!6049124))

(declare-fun m!6049200 () Bool)

(assert (=> b!5014415 m!6049200))

(assert (=> b!5014415 m!6049128))

(assert (=> b!5014415 m!6049200))

(assert (=> b!5014415 m!6049128))

(declare-fun m!6049202 () Bool)

(assert (=> b!5014415 m!6049202))

(assert (=> b!5013895 d!1614558))

(declare-fun d!1614560 () Bool)

(assert (=> d!1614560 (isPrefix!5360 (take!666 lt!2074465 lt!2074471) lt!2074465)))

(declare-fun lt!2074753 () Unit!149117)

(declare-fun choose!37089 (List!58025 Int) Unit!149117)

(assert (=> d!1614560 (= lt!2074753 (choose!37089 lt!2074465 lt!2074471))))

(assert (=> d!1614560 (>= lt!2074471 0)))

(assert (=> d!1614560 (= (lemmaTakeIsPrefix!160 lt!2074465 lt!2074471) lt!2074753)))

(declare-fun bs!1186870 () Bool)

(assert (= bs!1186870 d!1614560))

(assert (=> bs!1186870 m!6048686))

(assert (=> bs!1186870 m!6048686))

(assert (=> bs!1186870 m!6048688))

(declare-fun m!6049210 () Bool)

(assert (=> bs!1186870 m!6049210))

(assert (=> b!5013895 d!1614560))

(declare-fun bm!350207 () Bool)

(declare-fun call!350213 () Regex!13807)

(declare-fun call!350216 () C!27864)

(assert (=> bm!350207 (= call!350213 (derivativeStep!3985 r!12727 call!350216))))

(declare-fun b!5014531 () Bool)

(declare-fun e!3132740 () tuple2!63072)

(assert (=> b!5014531 (= e!3132740 (tuple2!63073 Nil!57901 lt!2074485))))

(declare-fun b!5014532 () Bool)

(declare-fun c!856655 () Bool)

(declare-fun call!350212 () Bool)

(assert (=> b!5014532 (= c!856655 call!350212)))

(declare-fun lt!2074837 () Unit!149117)

(declare-fun lt!2074828 () Unit!149117)

(assert (=> b!5014532 (= lt!2074837 lt!2074828)))

(assert (=> b!5014532 (= lt!2074485 Nil!57901)))

(declare-fun call!350218 () Unit!149117)

(assert (=> b!5014532 (= lt!2074828 call!350218)))

(declare-fun lt!2074829 () Unit!149117)

(declare-fun lt!2074823 () Unit!149117)

(assert (=> b!5014532 (= lt!2074829 lt!2074823)))

(declare-fun call!350214 () Bool)

(assert (=> b!5014532 call!350214))

(declare-fun call!350215 () Unit!149117)

(assert (=> b!5014532 (= lt!2074823 call!350215)))

(declare-fun e!3132739 () tuple2!63072)

(declare-fun e!3132737 () tuple2!63072)

(assert (=> b!5014532 (= e!3132739 e!3132737)))

(declare-fun b!5014533 () Bool)

(declare-fun e!3132738 () Bool)

(declare-fun e!3132736 () Bool)

(assert (=> b!5014533 (= e!3132738 e!3132736)))

(declare-fun res!2138398 () Bool)

(assert (=> b!5014533 (=> res!2138398 e!3132736)))

(declare-fun lt!2074832 () tuple2!63072)

(assert (=> b!5014533 (= res!2138398 (isEmpty!31370 (_1!34839 lt!2074832)))))

(declare-fun b!5014534 () Bool)

(declare-fun e!3132734 () tuple2!63072)

(declare-fun call!350217 () tuple2!63072)

(assert (=> b!5014534 (= e!3132734 call!350217)))

(declare-fun d!1614564 () Bool)

(assert (=> d!1614564 e!3132738))

(declare-fun res!2138399 () Bool)

(assert (=> d!1614564 (=> (not res!2138399) (not e!3132738))))

(assert (=> d!1614564 (= res!2138399 (= (++!12655 (_1!34839 lt!2074832) (_2!34839 lt!2074832)) lt!2074485))))

(declare-fun e!3132733 () tuple2!63072)

(assert (=> d!1614564 (= lt!2074832 e!3132733)))

(declare-fun c!856652 () Bool)

(declare-fun lostCause!1194 (Regex!13807) Bool)

(assert (=> d!1614564 (= c!856652 (lostCause!1194 r!12727))))

(declare-fun lt!2074815 () Unit!149117)

(declare-fun Unit!149122 () Unit!149117)

(assert (=> d!1614564 (= lt!2074815 Unit!149122)))

(declare-fun getSuffix!3150 (List!58025 List!58025) List!58025)

(assert (=> d!1614564 (= (getSuffix!3150 lt!2074485 Nil!57901) lt!2074485)))

(declare-fun lt!2074820 () Unit!149117)

(declare-fun lt!2074838 () Unit!149117)

(assert (=> d!1614564 (= lt!2074820 lt!2074838)))

(declare-fun lt!2074817 () List!58025)

(assert (=> d!1614564 (= lt!2074485 lt!2074817)))

(declare-fun lemmaSamePrefixThenSameSuffix!2564 (List!58025 List!58025 List!58025 List!58025 List!58025) Unit!149117)

(assert (=> d!1614564 (= lt!2074838 (lemmaSamePrefixThenSameSuffix!2564 Nil!57901 lt!2074485 Nil!57901 lt!2074817 lt!2074485))))

(assert (=> d!1614564 (= lt!2074817 (getSuffix!3150 lt!2074485 Nil!57901))))

(declare-fun lt!2074836 () Unit!149117)

(declare-fun lt!2074825 () Unit!149117)

(assert (=> d!1614564 (= lt!2074836 lt!2074825)))

(assert (=> d!1614564 (isPrefix!5360 Nil!57901 (++!12655 Nil!57901 lt!2074485))))

(assert (=> d!1614564 (= lt!2074825 (lemmaConcatTwoListThenFirstIsPrefix!3458 Nil!57901 lt!2074485))))

(assert (=> d!1614564 (validRegex!6104 r!12727)))

(assert (=> d!1614564 (= (findLongestMatchInner!1996 r!12727 Nil!57901 (size!38495 Nil!57901) lt!2074485 lt!2074485 (size!38495 lt!2074485)) lt!2074832)))

(declare-fun b!5014535 () Bool)

(assert (=> b!5014535 (= e!3132734 e!3132740)))

(declare-fun lt!2074842 () tuple2!63072)

(assert (=> b!5014535 (= lt!2074842 call!350217)))

(declare-fun c!856653 () Bool)

(assert (=> b!5014535 (= c!856653 (isEmpty!31370 (_1!34839 lt!2074842)))))

(declare-fun b!5014536 () Bool)

(declare-fun c!856654 () Bool)

(assert (=> b!5014536 (= c!856654 call!350212)))

(declare-fun lt!2074827 () Unit!149117)

(declare-fun lt!2074830 () Unit!149117)

(assert (=> b!5014536 (= lt!2074827 lt!2074830)))

(declare-fun lt!2074821 () C!27864)

(declare-fun lt!2074839 () List!58025)

(assert (=> b!5014536 (= (++!12655 (++!12655 Nil!57901 (Cons!57901 lt!2074821 Nil!57901)) lt!2074839) lt!2074485)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1506 (List!58025 C!27864 List!58025 List!58025) Unit!149117)

(assert (=> b!5014536 (= lt!2074830 (lemmaMoveElementToOtherListKeepsConcatEq!1506 Nil!57901 lt!2074821 lt!2074839 lt!2074485))))

(assert (=> b!5014536 (= lt!2074839 (tail!9876 lt!2074485))))

(assert (=> b!5014536 (= lt!2074821 (head!10743 lt!2074485))))

(declare-fun lt!2074819 () Unit!149117)

(declare-fun lt!2074834 () Unit!149117)

(assert (=> b!5014536 (= lt!2074819 lt!2074834)))

(assert (=> b!5014536 (isPrefix!5360 (++!12655 Nil!57901 (Cons!57901 (head!10743 (getSuffix!3150 lt!2074485 Nil!57901)) Nil!57901)) lt!2074485)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!895 (List!58025 List!58025) Unit!149117)

(assert (=> b!5014536 (= lt!2074834 (lemmaAddHeadSuffixToPrefixStillPrefix!895 Nil!57901 lt!2074485))))

(declare-fun lt!2074831 () Unit!149117)

(declare-fun lt!2074824 () Unit!149117)

(assert (=> b!5014536 (= lt!2074831 lt!2074824)))

(assert (=> b!5014536 (= lt!2074824 (lemmaAddHeadSuffixToPrefixStillPrefix!895 Nil!57901 lt!2074485))))

(declare-fun lt!2074835 () List!58025)

(assert (=> b!5014536 (= lt!2074835 (++!12655 Nil!57901 (Cons!57901 (head!10743 lt!2074485) Nil!57901)))))

(declare-fun lt!2074840 () Unit!149117)

(declare-fun e!3132735 () Unit!149117)

(assert (=> b!5014536 (= lt!2074840 e!3132735)))

(declare-fun c!856651 () Bool)

(assert (=> b!5014536 (= c!856651 (= (size!38495 Nil!57901) (size!38495 lt!2074485)))))

(declare-fun lt!2074818 () Unit!149117)

(declare-fun lt!2074841 () Unit!149117)

(assert (=> b!5014536 (= lt!2074818 lt!2074841)))

(assert (=> b!5014536 (<= (size!38495 Nil!57901) (size!38495 lt!2074485))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!821 (List!58025 List!58025) Unit!149117)

(assert (=> b!5014536 (= lt!2074841 (lemmaIsPrefixThenSmallerEqSize!821 Nil!57901 lt!2074485))))

(assert (=> b!5014536 (= e!3132739 e!3132734)))

(declare-fun b!5014537 () Bool)

(assert (=> b!5014537 (= e!3132736 (>= (size!38495 (_1!34839 lt!2074832)) (size!38495 Nil!57901)))))

(declare-fun b!5014538 () Bool)

(assert (=> b!5014538 (= e!3132733 e!3132739)))

(declare-fun c!856650 () Bool)

(assert (=> b!5014538 (= c!856650 (= (size!38495 Nil!57901) (size!38495 lt!2074485)))))

(declare-fun bm!350208 () Bool)

(assert (=> bm!350208 (= call!350214 (isPrefix!5360 lt!2074485 lt!2074485))))

(declare-fun b!5014539 () Bool)

(declare-fun Unit!149123 () Unit!149117)

(assert (=> b!5014539 (= e!3132735 Unit!149123)))

(declare-fun lt!2074833 () Unit!149117)

(assert (=> b!5014539 (= lt!2074833 call!350215)))

(assert (=> b!5014539 call!350214))

(declare-fun lt!2074822 () Unit!149117)

(assert (=> b!5014539 (= lt!2074822 lt!2074833)))

(declare-fun lt!2074826 () Unit!149117)

(assert (=> b!5014539 (= lt!2074826 call!350218)))

(assert (=> b!5014539 (= lt!2074485 Nil!57901)))

(declare-fun lt!2074816 () Unit!149117)

(assert (=> b!5014539 (= lt!2074816 lt!2074826)))

(assert (=> b!5014539 false))

(declare-fun b!5014540 () Bool)

(declare-fun Unit!149124 () Unit!149117)

(assert (=> b!5014540 (= e!3132735 Unit!149124)))

(declare-fun bm!350209 () Bool)

(assert (=> bm!350209 (= call!350216 (head!10743 lt!2074485))))

(declare-fun bm!350210 () Bool)

(declare-fun call!350219 () List!58025)

(assert (=> bm!350210 (= call!350217 (findLongestMatchInner!1996 call!350213 lt!2074835 (+ (size!38495 Nil!57901) 1) call!350219 lt!2074485 (size!38495 lt!2074485)))))

(declare-fun b!5014541 () Bool)

(assert (=> b!5014541 (= e!3132737 (tuple2!63073 Nil!57901 lt!2074485))))

(declare-fun b!5014542 () Bool)

(assert (=> b!5014542 (= e!3132733 (tuple2!63073 Nil!57901 lt!2074485))))

(declare-fun bm!350211 () Bool)

(declare-fun lemmaIsPrefixRefl!3633 (List!58025 List!58025) Unit!149117)

(assert (=> bm!350211 (= call!350215 (lemmaIsPrefixRefl!3633 lt!2074485 lt!2074485))))

(declare-fun bm!350212 () Bool)

(assert (=> bm!350212 (= call!350219 (tail!9876 lt!2074485))))

(declare-fun bm!350213 () Bool)

(assert (=> bm!350213 (= call!350212 (nullable!4695 r!12727))))

(declare-fun b!5014543 () Bool)

(assert (=> b!5014543 (= e!3132740 lt!2074842)))

(declare-fun bm!350214 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1281 (List!58025 List!58025 List!58025) Unit!149117)

(assert (=> bm!350214 (= call!350218 (lemmaIsPrefixSameLengthThenSameList!1281 lt!2074485 Nil!57901 lt!2074485))))

(declare-fun b!5014544 () Bool)

(assert (=> b!5014544 (= e!3132737 (tuple2!63073 Nil!57901 Nil!57901))))

(assert (= (and d!1614564 c!856652) b!5014542))

(assert (= (and d!1614564 (not c!856652)) b!5014538))

(assert (= (and b!5014538 c!856650) b!5014532))

(assert (= (and b!5014538 (not c!856650)) b!5014536))

(assert (= (and b!5014532 c!856655) b!5014544))

(assert (= (and b!5014532 (not c!856655)) b!5014541))

(assert (= (and b!5014536 c!856651) b!5014539))

(assert (= (and b!5014536 (not c!856651)) b!5014540))

(assert (= (and b!5014536 c!856654) b!5014535))

(assert (= (and b!5014536 (not c!856654)) b!5014534))

(assert (= (and b!5014535 c!856653) b!5014531))

(assert (= (and b!5014535 (not c!856653)) b!5014543))

(assert (= (or b!5014535 b!5014534) bm!350209))

(assert (= (or b!5014535 b!5014534) bm!350212))

(assert (= (or b!5014535 b!5014534) bm!350207))

(assert (= (or b!5014535 b!5014534) bm!350210))

(assert (= (or b!5014532 b!5014536) bm!350213))

(assert (= (or b!5014532 b!5014539) bm!350208))

(assert (= (or b!5014532 b!5014539) bm!350214))

(assert (= (or b!5014532 b!5014539) bm!350211))

(assert (= (and d!1614564 res!2138399) b!5014533))

(assert (= (and b!5014533 (not res!2138398)) b!5014537))

(declare-fun m!6049262 () Bool)

(assert (=> b!5014535 m!6049262))

(assert (=> bm!350212 m!6048880))

(declare-fun m!6049264 () Bool)

(assert (=> b!5014537 m!6049264))

(assert (=> b!5014537 m!6048690))

(declare-fun m!6049266 () Bool)

(assert (=> b!5014533 m!6049266))

(declare-fun m!6049268 () Bool)

(assert (=> bm!350207 m!6049268))

(declare-fun m!6049270 () Bool)

(assert (=> b!5014536 m!6049270))

(assert (=> b!5014536 m!6048692))

(declare-fun m!6049272 () Bool)

(assert (=> b!5014536 m!6049272))

(declare-fun m!6049274 () Bool)

(assert (=> b!5014536 m!6049274))

(assert (=> b!5014536 m!6048690))

(assert (=> b!5014536 m!6049272))

(assert (=> b!5014536 m!6049270))

(declare-fun m!6049276 () Bool)

(assert (=> b!5014536 m!6049276))

(declare-fun m!6049278 () Bool)

(assert (=> b!5014536 m!6049278))

(declare-fun m!6049280 () Bool)

(assert (=> b!5014536 m!6049280))

(declare-fun m!6049282 () Bool)

(assert (=> b!5014536 m!6049282))

(assert (=> b!5014536 m!6048876))

(declare-fun m!6049284 () Bool)

(assert (=> b!5014536 m!6049284))

(assert (=> b!5014536 m!6049280))

(declare-fun m!6049286 () Bool)

(assert (=> b!5014536 m!6049286))

(assert (=> b!5014536 m!6048880))

(declare-fun m!6049288 () Bool)

(assert (=> b!5014536 m!6049288))

(assert (=> bm!350213 m!6048898))

(declare-fun m!6049290 () Bool)

(assert (=> bm!350214 m!6049290))

(declare-fun m!6049292 () Bool)

(assert (=> bm!350211 m!6049292))

(assert (=> bm!350210 m!6048692))

(declare-fun m!6049294 () Bool)

(assert (=> bm!350210 m!6049294))

(assert (=> bm!350209 m!6048876))

(declare-fun m!6049296 () Bool)

(assert (=> d!1614564 m!6049296))

(assert (=> d!1614564 m!6048640))

(declare-fun m!6049298 () Bool)

(assert (=> d!1614564 m!6049298))

(assert (=> d!1614564 m!6049280))

(declare-fun m!6049300 () Bool)

(assert (=> d!1614564 m!6049300))

(declare-fun m!6049302 () Bool)

(assert (=> d!1614564 m!6049302))

(assert (=> d!1614564 m!6049300))

(declare-fun m!6049304 () Bool)

(assert (=> d!1614564 m!6049304))

(declare-fun m!6049306 () Bool)

(assert (=> d!1614564 m!6049306))

(declare-fun m!6049308 () Bool)

(assert (=> bm!350208 m!6049308))

(assert (=> b!5013895 d!1614564))

(declare-fun d!1614578 () Bool)

(declare-fun lt!2074843 () Int)

(assert (=> d!1614578 (>= lt!2074843 0)))

(declare-fun e!3132741 () Int)

(assert (=> d!1614578 (= lt!2074843 e!3132741)))

(declare-fun c!856656 () Bool)

(assert (=> d!1614578 (= c!856656 ((_ is Nil!57901) lt!2074485))))

(assert (=> d!1614578 (= (size!38495 lt!2074485) lt!2074843)))

(declare-fun b!5014545 () Bool)

(assert (=> b!5014545 (= e!3132741 0)))

(declare-fun b!5014546 () Bool)

(assert (=> b!5014546 (= e!3132741 (+ 1 (size!38495 (t!370393 lt!2074485))))))

(assert (= (and d!1614578 c!856656) b!5014545))

(assert (= (and d!1614578 (not c!856656)) b!5014546))

(declare-fun m!6049310 () Bool)

(assert (=> b!5014546 m!6049310))

(assert (=> b!5013895 d!1614578))

(declare-fun b!5014548 () Bool)

(declare-fun res!2138400 () Bool)

(declare-fun e!3132742 () Bool)

(assert (=> b!5014548 (=> (not res!2138400) (not e!3132742))))

(assert (=> b!5014548 (= res!2138400 (= (head!10743 lt!2074484) (head!10743 lt!2074466)))))

(declare-fun d!1614580 () Bool)

(declare-fun e!3132743 () Bool)

(assert (=> d!1614580 e!3132743))

(declare-fun res!2138401 () Bool)

(assert (=> d!1614580 (=> res!2138401 e!3132743)))

(declare-fun lt!2074844 () Bool)

(assert (=> d!1614580 (= res!2138401 (not lt!2074844))))

(declare-fun e!3132744 () Bool)

(assert (=> d!1614580 (= lt!2074844 e!3132744)))

(declare-fun res!2138403 () Bool)

(assert (=> d!1614580 (=> res!2138403 e!3132744)))

(assert (=> d!1614580 (= res!2138403 ((_ is Nil!57901) lt!2074484))))

(assert (=> d!1614580 (= (isPrefix!5360 lt!2074484 lt!2074466) lt!2074844)))

(declare-fun b!5014547 () Bool)

(assert (=> b!5014547 (= e!3132744 e!3132742)))

(declare-fun res!2138402 () Bool)

(assert (=> b!5014547 (=> (not res!2138402) (not e!3132742))))

(assert (=> b!5014547 (= res!2138402 (not ((_ is Nil!57901) lt!2074466)))))

(declare-fun b!5014549 () Bool)

(assert (=> b!5014549 (= e!3132742 (isPrefix!5360 (tail!9876 lt!2074484) (tail!9876 lt!2074466)))))

(declare-fun b!5014550 () Bool)

(assert (=> b!5014550 (= e!3132743 (>= (size!38495 lt!2074466) (size!38495 lt!2074484)))))

(assert (= (and d!1614580 (not res!2138403)) b!5014547))

(assert (= (and b!5014547 res!2138402) b!5014548))

(assert (= (and b!5014548 res!2138400) b!5014549))

(assert (= (and d!1614580 (not res!2138401)) b!5014550))

(assert (=> b!5014548 m!6049124))

(declare-fun m!6049312 () Bool)

(assert (=> b!5014548 m!6049312))

(assert (=> b!5014549 m!6049128))

(declare-fun m!6049314 () Bool)

(assert (=> b!5014549 m!6049314))

(assert (=> b!5014549 m!6049128))

(assert (=> b!5014549 m!6049314))

(declare-fun m!6049316 () Bool)

(assert (=> b!5014549 m!6049316))

(declare-fun m!6049318 () Bool)

(assert (=> b!5014550 m!6049318))

(assert (=> b!5014550 m!6048676))

(assert (=> b!5013895 d!1614580))

(declare-fun b!5014552 () Bool)

(declare-fun res!2138404 () Bool)

(declare-fun e!3132745 () Bool)

(assert (=> b!5014552 (=> (not res!2138404) (not e!3132745))))

(assert (=> b!5014552 (= res!2138404 (= (head!10743 (take!666 lt!2074465 lt!2074471)) (head!10743 lt!2074465)))))

(declare-fun d!1614582 () Bool)

(declare-fun e!3132746 () Bool)

(assert (=> d!1614582 e!3132746))

(declare-fun res!2138405 () Bool)

(assert (=> d!1614582 (=> res!2138405 e!3132746)))

(declare-fun lt!2074845 () Bool)

(assert (=> d!1614582 (= res!2138405 (not lt!2074845))))

(declare-fun e!3132747 () Bool)

(assert (=> d!1614582 (= lt!2074845 e!3132747)))

(declare-fun res!2138407 () Bool)

(assert (=> d!1614582 (=> res!2138407 e!3132747)))

(assert (=> d!1614582 (= res!2138407 ((_ is Nil!57901) (take!666 lt!2074465 lt!2074471)))))

(assert (=> d!1614582 (= (isPrefix!5360 (take!666 lt!2074465 lt!2074471) lt!2074465) lt!2074845)))

(declare-fun b!5014551 () Bool)

(assert (=> b!5014551 (= e!3132747 e!3132745)))

(declare-fun res!2138406 () Bool)

(assert (=> b!5014551 (=> (not res!2138406) (not e!3132745))))

(assert (=> b!5014551 (= res!2138406 (not ((_ is Nil!57901) lt!2074465)))))

(declare-fun b!5014553 () Bool)

(assert (=> b!5014553 (= e!3132745 (isPrefix!5360 (tail!9876 (take!666 lt!2074465 lt!2074471)) (tail!9876 lt!2074465)))))

(declare-fun b!5014554 () Bool)

(assert (=> b!5014554 (= e!3132746 (>= (size!38495 lt!2074465) (size!38495 (take!666 lt!2074465 lt!2074471))))))

(assert (= (and d!1614582 (not res!2138407)) b!5014551))

(assert (= (and b!5014551 res!2138406) b!5014552))

(assert (= (and b!5014552 res!2138404) b!5014553))

(assert (= (and d!1614582 (not res!2138405)) b!5014554))

(assert (=> b!5014552 m!6048686))

(declare-fun m!6049320 () Bool)

(assert (=> b!5014552 m!6049320))

(declare-fun m!6049322 () Bool)

(assert (=> b!5014552 m!6049322))

(assert (=> b!5014553 m!6048686))

(declare-fun m!6049324 () Bool)

(assert (=> b!5014553 m!6049324))

(declare-fun m!6049326 () Bool)

(assert (=> b!5014553 m!6049326))

(assert (=> b!5014553 m!6049324))

(assert (=> b!5014553 m!6049326))

(declare-fun m!6049328 () Bool)

(assert (=> b!5014553 m!6049328))

(assert (=> b!5014554 m!6048718))

(assert (=> b!5014554 m!6048686))

(declare-fun m!6049330 () Bool)

(assert (=> b!5014554 m!6049330))

(assert (=> b!5013895 d!1614582))

(declare-fun d!1614584 () Bool)

(declare-fun e!3132750 () Bool)

(assert (=> d!1614584 e!3132750))

(declare-fun res!2138410 () Bool)

(assert (=> d!1614584 (=> res!2138410 e!3132750)))

(assert (=> d!1614584 (= res!2138410 (isEmpty!31370 (_1!34839 (findLongestMatchInner!1996 r!12727 Nil!57901 (size!38495 Nil!57901) lt!2074485 lt!2074485 (size!38495 lt!2074485)))))))

(declare-fun lt!2074848 () Unit!149117)

(declare-fun choose!37090 (Regex!13807 List!58025) Unit!149117)

(assert (=> d!1614584 (= lt!2074848 (choose!37090 r!12727 lt!2074485))))

(assert (=> d!1614584 (validRegex!6104 r!12727)))

(assert (=> d!1614584 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1949 r!12727 lt!2074485) lt!2074848)))

(declare-fun b!5014557 () Bool)

(assert (=> b!5014557 (= e!3132750 (matchR!6771 r!12727 (_1!34839 (findLongestMatchInner!1996 r!12727 Nil!57901 (size!38495 Nil!57901) lt!2074485 lt!2074485 (size!38495 lt!2074485)))))))

(assert (= (and d!1614584 (not res!2138410)) b!5014557))

(assert (=> d!1614584 m!6048690))

(declare-fun m!6049332 () Bool)

(assert (=> d!1614584 m!6049332))

(assert (=> d!1614584 m!6048690))

(assert (=> d!1614584 m!6048692))

(assert (=> d!1614584 m!6048694))

(declare-fun m!6049334 () Bool)

(assert (=> d!1614584 m!6049334))

(assert (=> d!1614584 m!6048640))

(assert (=> d!1614584 m!6048692))

(assert (=> b!5014557 m!6048690))

(assert (=> b!5014557 m!6048692))

(assert (=> b!5014557 m!6048690))

(assert (=> b!5014557 m!6048692))

(assert (=> b!5014557 m!6048694))

(declare-fun m!6049336 () Bool)

(assert (=> b!5014557 m!6049336))

(assert (=> b!5013895 d!1614584))

(declare-fun d!1614586 () Bool)

(assert (=> d!1614586 (isPrefix!5360 (_1!34839 lt!2074473) (++!12655 (_1!34839 lt!2074473) (_2!34839 lt!2074473)))))

(declare-fun lt!2074851 () Unit!149117)

(declare-fun choose!37091 (List!58025 List!58025) Unit!149117)

(assert (=> d!1614586 (= lt!2074851 (choose!37091 (_1!34839 lt!2074473) (_2!34839 lt!2074473)))))

(assert (=> d!1614586 (= (lemmaConcatTwoListThenFirstIsPrefix!3458 (_1!34839 lt!2074473) (_2!34839 lt!2074473)) lt!2074851)))

(declare-fun bs!1186873 () Bool)

(assert (= bs!1186873 d!1614586))

(assert (=> bs!1186873 m!6048614))

(assert (=> bs!1186873 m!6048614))

(declare-fun m!6049338 () Bool)

(assert (=> bs!1186873 m!6049338))

(declare-fun m!6049340 () Bool)

(assert (=> bs!1186873 m!6049340))

(assert (=> b!5013895 d!1614586))

(declare-fun b!5014558 () Bool)

(declare-fun e!3132754 () Bool)

(declare-fun lt!2074852 () List!58025)

(declare-fun e!3132752 () Int)

(assert (=> b!5014558 (= e!3132754 (= (size!38495 lt!2074852) e!3132752))))

(declare-fun c!856657 () Bool)

(assert (=> b!5014558 (= c!856657 (<= lt!2074471 0))))

(declare-fun d!1614588 () Bool)

(assert (=> d!1614588 e!3132754))

(declare-fun res!2138411 () Bool)

(assert (=> d!1614588 (=> (not res!2138411) (not e!3132754))))

(assert (=> d!1614588 (= res!2138411 (= ((_ map implies) (content!10264 lt!2074852) (content!10264 lt!2074465)) ((as const (InoxSet C!27864)) true)))))

(declare-fun e!3132753 () List!58025)

(assert (=> d!1614588 (= lt!2074852 e!3132753)))

(declare-fun c!856658 () Bool)

(assert (=> d!1614588 (= c!856658 (or ((_ is Nil!57901) lt!2074465) (<= lt!2074471 0)))))

(assert (=> d!1614588 (= (take!666 lt!2074465 lt!2074471) lt!2074852)))

(declare-fun b!5014559 () Bool)

(declare-fun e!3132751 () Int)

(assert (=> b!5014559 (= e!3132751 (size!38495 lt!2074465))))

(declare-fun b!5014560 () Bool)

(assert (=> b!5014560 (= e!3132752 0)))

(declare-fun b!5014561 () Bool)

(assert (=> b!5014561 (= e!3132752 e!3132751)))

(declare-fun c!856659 () Bool)

(assert (=> b!5014561 (= c!856659 (>= lt!2074471 (size!38495 lt!2074465)))))

(declare-fun b!5014562 () Bool)

(assert (=> b!5014562 (= e!3132753 (Cons!57901 (h!64349 lt!2074465) (take!666 (t!370393 lt!2074465) (- lt!2074471 1))))))

(declare-fun b!5014563 () Bool)

(assert (=> b!5014563 (= e!3132751 lt!2074471)))

(declare-fun b!5014564 () Bool)

(assert (=> b!5014564 (= e!3132753 Nil!57901)))

(assert (= (and d!1614588 c!856658) b!5014564))

(assert (= (and d!1614588 (not c!856658)) b!5014562))

(assert (= (and d!1614588 res!2138411) b!5014558))

(assert (= (and b!5014558 c!856657) b!5014560))

(assert (= (and b!5014558 (not c!856657)) b!5014561))

(assert (= (and b!5014561 c!856659) b!5014559))

(assert (= (and b!5014561 (not c!856659)) b!5014563))

(declare-fun m!6049342 () Bool)

(assert (=> b!5014562 m!6049342))

(declare-fun m!6049344 () Bool)

(assert (=> d!1614588 m!6049344))

(assert (=> d!1614588 m!6048936))

(assert (=> b!5014559 m!6048718))

(assert (=> b!5014561 m!6048718))

(declare-fun m!6049346 () Bool)

(assert (=> b!5014558 m!6049346))

(assert (=> b!5013895 d!1614588))

(declare-fun d!1614590 () Bool)

(declare-fun e!3132760 () Bool)

(assert (=> d!1614590 e!3132760))

(declare-fun res!2138417 () Bool)

(assert (=> d!1614590 (=> res!2138417 e!3132760)))

(assert (=> d!1614590 (= res!2138417 (= (findLongestMatchInnerZipperFastV2!147 z!4183 lt!2074471 totalInput!1012 (size!38494 totalInput!1012)) 0))))

(declare-fun lt!2074855 () Unit!149117)

(declare-fun choose!37092 ((InoxSet Context!6464) Int BalanceConc!30082) Unit!149117)

(assert (=> d!1614590 (= lt!2074855 (choose!37092 z!4183 lt!2074471 totalInput!1012))))

(declare-fun e!3132759 () Bool)

(assert (=> d!1614590 e!3132759))

(declare-fun res!2138416 () Bool)

(assert (=> d!1614590 (=> (not res!2138416) (not e!3132759))))

(assert (=> d!1614590 (= res!2138416 (>= lt!2074471 0))))

(assert (=> d!1614590 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!66 z!4183 lt!2074471 totalInput!1012) lt!2074855)))

(declare-fun b!5014569 () Bool)

(assert (=> b!5014569 (= e!3132759 (<= lt!2074471 (size!38494 totalInput!1012)))))

(declare-fun b!5014570 () Bool)

(assert (=> b!5014570 (= e!3132760 (matchZipper!575 z!4183 (take!666 (drop!2470 (list!18646 totalInput!1012) lt!2074471) (findLongestMatchInnerZipperFastV2!147 z!4183 lt!2074471 totalInput!1012 (size!38494 totalInput!1012)))))))

(assert (= (and d!1614590 res!2138416) b!5014569))

(assert (= (and d!1614590 (not res!2138417)) b!5014570))

(assert (=> d!1614590 m!6048670))

(assert (=> d!1614590 m!6048670))

(declare-fun m!6049348 () Bool)

(assert (=> d!1614590 m!6049348))

(declare-fun m!6049350 () Bool)

(assert (=> d!1614590 m!6049350))

(assert (=> b!5014569 m!6048670))

(assert (=> b!5014570 m!6048654))

(declare-fun m!6049352 () Bool)

(assert (=> b!5014570 m!6049352))

(assert (=> b!5014570 m!6049352))

(assert (=> b!5014570 m!6049348))

(declare-fun m!6049354 () Bool)

(assert (=> b!5014570 m!6049354))

(assert (=> b!5014570 m!6048654))

(assert (=> b!5014570 m!6048670))

(assert (=> b!5014570 m!6049348))

(assert (=> b!5014570 m!6048670))

(assert (=> b!5014570 m!6049354))

(declare-fun m!6049356 () Bool)

(assert (=> b!5014570 m!6049356))

(assert (=> b!5013895 d!1614590))

(declare-fun b!5014572 () Bool)

(declare-fun res!2138418 () Bool)

(declare-fun e!3132761 () Bool)

(assert (=> b!5014572 (=> (not res!2138418) (not e!3132761))))

(assert (=> b!5014572 (= res!2138418 (= (head!10743 (_1!34839 lt!2074473)) (head!10743 lt!2074469)))))

(declare-fun d!1614592 () Bool)

(declare-fun e!3132762 () Bool)

(assert (=> d!1614592 e!3132762))

(declare-fun res!2138419 () Bool)

(assert (=> d!1614592 (=> res!2138419 e!3132762)))

(declare-fun lt!2074856 () Bool)

(assert (=> d!1614592 (= res!2138419 (not lt!2074856))))

(declare-fun e!3132763 () Bool)

(assert (=> d!1614592 (= lt!2074856 e!3132763)))

(declare-fun res!2138421 () Bool)

(assert (=> d!1614592 (=> res!2138421 e!3132763)))

(assert (=> d!1614592 (= res!2138421 ((_ is Nil!57901) (_1!34839 lt!2074473)))))

(assert (=> d!1614592 (= (isPrefix!5360 (_1!34839 lt!2074473) lt!2074469) lt!2074856)))

(declare-fun b!5014571 () Bool)

(assert (=> b!5014571 (= e!3132763 e!3132761)))

(declare-fun res!2138420 () Bool)

(assert (=> b!5014571 (=> (not res!2138420) (not e!3132761))))

(assert (=> b!5014571 (= res!2138420 (not ((_ is Nil!57901) lt!2074469)))))

(declare-fun b!5014573 () Bool)

(assert (=> b!5014573 (= e!3132761 (isPrefix!5360 (tail!9876 (_1!34839 lt!2074473)) (tail!9876 lt!2074469)))))

(declare-fun b!5014574 () Bool)

(assert (=> b!5014574 (= e!3132762 (>= (size!38495 lt!2074469) (size!38495 (_1!34839 lt!2074473))))))

(assert (= (and d!1614592 (not res!2138421)) b!5014571))

(assert (= (and b!5014571 res!2138420) b!5014572))

(assert (= (and b!5014572 res!2138418) b!5014573))

(assert (= (and d!1614592 (not res!2138419)) b!5014574))

(assert (=> b!5014572 m!6048874))

(declare-fun m!6049358 () Bool)

(assert (=> b!5014572 m!6049358))

(assert (=> b!5014573 m!6048878))

(declare-fun m!6049360 () Bool)

(assert (=> b!5014573 m!6049360))

(assert (=> b!5014573 m!6048878))

(assert (=> b!5014573 m!6049360))

(declare-fun m!6049362 () Bool)

(assert (=> b!5014573 m!6049362))

(declare-fun m!6049364 () Bool)

(assert (=> b!5014574 m!6049364))

(assert (=> b!5014574 m!6048626))

(assert (=> b!5013895 d!1614592))

(declare-fun d!1614594 () Bool)

(assert (=> d!1614594 (= (isEmpty!31370 (_1!34839 lt!2074474)) ((_ is Nil!57901) (_1!34839 lt!2074474)))))

(assert (=> b!5013895 d!1614594))

(declare-fun d!1614596 () Bool)

(assert (=> d!1614596 (isPrefix!5360 lt!2074484 (++!12655 lt!2074484 lt!2074470))))

(declare-fun lt!2074857 () Unit!149117)

(assert (=> d!1614596 (= lt!2074857 (choose!37091 lt!2074484 lt!2074470))))

(assert (=> d!1614596 (= (lemmaConcatTwoListThenFirstIsPrefix!3458 lt!2074484 lt!2074470) lt!2074857)))

(declare-fun bs!1186874 () Bool)

(assert (= bs!1186874 d!1614596))

(assert (=> bs!1186874 m!6048664))

(assert (=> bs!1186874 m!6048664))

(declare-fun m!6049366 () Bool)

(assert (=> bs!1186874 m!6049366))

(declare-fun m!6049368 () Bool)

(assert (=> bs!1186874 m!6049368))

(assert (=> b!5013895 d!1614596))

(declare-fun d!1614598 () Bool)

(declare-fun lt!2074858 () Int)

(assert (=> d!1614598 (>= lt!2074858 0)))

(declare-fun e!3132764 () Int)

(assert (=> d!1614598 (= lt!2074858 e!3132764)))

(declare-fun c!856660 () Bool)

(assert (=> d!1614598 (= c!856660 ((_ is Nil!57901) Nil!57901))))

(assert (=> d!1614598 (= (size!38495 Nil!57901) lt!2074858)))

(declare-fun b!5014575 () Bool)

(assert (=> b!5014575 (= e!3132764 0)))

(declare-fun b!5014576 () Bool)

(assert (=> b!5014576 (= e!3132764 (+ 1 (size!38495 (t!370393 Nil!57901))))))

(assert (= (and d!1614598 c!856660) b!5014575))

(assert (= (and d!1614598 (not c!856660)) b!5014576))

(declare-fun m!6049370 () Bool)

(assert (=> b!5014576 m!6049370))

(assert (=> b!5013895 d!1614598))

(declare-fun e!3132769 () Bool)

(declare-fun tp!1406286 () Bool)

(declare-fun tp!1406284 () Bool)

(declare-fun b!5014585 () Bool)

(assert (=> b!5014585 (= e!3132769 (and (inv!76101 (left!42331 (c!856477 totalInput!1012))) tp!1406284 (inv!76101 (right!42661 (c!856477 totalInput!1012))) tp!1406286))))

(declare-fun b!5014587 () Bool)

(declare-fun e!3132770 () Bool)

(declare-fun tp!1406285 () Bool)

(assert (=> b!5014587 (= e!3132770 tp!1406285)))

(declare-fun b!5014586 () Bool)

(declare-fun inv!76109 (IArray!30713) Bool)

(assert (=> b!5014586 (= e!3132769 (and (inv!76109 (xs!18652 (c!856477 totalInput!1012))) e!3132770))))

(assert (=> b!5013897 (= tp!1406213 (and (inv!76101 (c!856477 totalInput!1012)) e!3132769))))

(assert (= (and b!5013897 ((_ is Node!15326) (c!856477 totalInput!1012))) b!5014585))

(assert (= b!5014586 b!5014587))

(assert (= (and b!5013897 ((_ is Leaf!25438) (c!856477 totalInput!1012))) b!5014586))

(declare-fun m!6049372 () Bool)

(assert (=> b!5014585 m!6049372))

(declare-fun m!6049374 () Bool)

(assert (=> b!5014585 m!6049374))

(declare-fun m!6049376 () Bool)

(assert (=> b!5014586 m!6049376))

(assert (=> b!5013897 m!6048628))

(declare-fun b!5014599 () Bool)

(declare-fun e!3132773 () Bool)

(declare-fun tp!1406299 () Bool)

(declare-fun tp!1406300 () Bool)

(assert (=> b!5014599 (= e!3132773 (and tp!1406299 tp!1406300))))

(declare-fun b!5014598 () Bool)

(assert (=> b!5014598 (= e!3132773 tp_is_empty!36611)))

(assert (=> b!5013891 (= tp!1406216 e!3132773)))

(declare-fun b!5014600 () Bool)

(declare-fun tp!1406301 () Bool)

(assert (=> b!5014600 (= e!3132773 tp!1406301)))

(declare-fun b!5014601 () Bool)

(declare-fun tp!1406297 () Bool)

(declare-fun tp!1406298 () Bool)

(assert (=> b!5014601 (= e!3132773 (and tp!1406297 tp!1406298))))

(assert (= (and b!5013891 ((_ is ElementMatch!13807) (reg!14136 r!12727))) b!5014598))

(assert (= (and b!5013891 ((_ is Concat!22600) (reg!14136 r!12727))) b!5014599))

(assert (= (and b!5013891 ((_ is Star!13807) (reg!14136 r!12727))) b!5014600))

(assert (= (and b!5013891 ((_ is Union!13807) (reg!14136 r!12727))) b!5014601))

(declare-fun b!5014606 () Bool)

(declare-fun e!3132776 () Bool)

(declare-fun tp!1406306 () Bool)

(declare-fun tp!1406307 () Bool)

(assert (=> b!5014606 (= e!3132776 (and tp!1406306 tp!1406307))))

(assert (=> b!5013893 (= tp!1406211 e!3132776)))

(assert (= (and b!5013893 ((_ is Cons!57902) (exprs!3732 setElem!28472))) b!5014606))

(declare-fun b!5014608 () Bool)

(declare-fun e!3132777 () Bool)

(declare-fun tp!1406310 () Bool)

(declare-fun tp!1406311 () Bool)

(assert (=> b!5014608 (= e!3132777 (and tp!1406310 tp!1406311))))

(declare-fun b!5014607 () Bool)

(assert (=> b!5014607 (= e!3132777 tp_is_empty!36611)))

(assert (=> b!5013898 (= tp!1406215 e!3132777)))

(declare-fun b!5014609 () Bool)

(declare-fun tp!1406312 () Bool)

(assert (=> b!5014609 (= e!3132777 tp!1406312)))

(declare-fun b!5014610 () Bool)

(declare-fun tp!1406308 () Bool)

(declare-fun tp!1406309 () Bool)

(assert (=> b!5014610 (= e!3132777 (and tp!1406308 tp!1406309))))

(assert (= (and b!5013898 ((_ is ElementMatch!13807) (regOne!28126 r!12727))) b!5014607))

(assert (= (and b!5013898 ((_ is Concat!22600) (regOne!28126 r!12727))) b!5014608))

(assert (= (and b!5013898 ((_ is Star!13807) (regOne!28126 r!12727))) b!5014609))

(assert (= (and b!5013898 ((_ is Union!13807) (regOne!28126 r!12727))) b!5014610))

(declare-fun b!5014612 () Bool)

(declare-fun e!3132778 () Bool)

(declare-fun tp!1406315 () Bool)

(declare-fun tp!1406316 () Bool)

(assert (=> b!5014612 (= e!3132778 (and tp!1406315 tp!1406316))))

(declare-fun b!5014611 () Bool)

(assert (=> b!5014611 (= e!3132778 tp_is_empty!36611)))

(assert (=> b!5013898 (= tp!1406210 e!3132778)))

(declare-fun b!5014613 () Bool)

(declare-fun tp!1406317 () Bool)

(assert (=> b!5014613 (= e!3132778 tp!1406317)))

(declare-fun b!5014614 () Bool)

(declare-fun tp!1406313 () Bool)

(declare-fun tp!1406314 () Bool)

(assert (=> b!5014614 (= e!3132778 (and tp!1406313 tp!1406314))))

(assert (= (and b!5013898 ((_ is ElementMatch!13807) (regTwo!28126 r!12727))) b!5014611))

(assert (= (and b!5013898 ((_ is Concat!22600) (regTwo!28126 r!12727))) b!5014612))

(assert (= (and b!5013898 ((_ is Star!13807) (regTwo!28126 r!12727))) b!5014613))

(assert (= (and b!5013898 ((_ is Union!13807) (regTwo!28126 r!12727))) b!5014614))

(declare-fun b!5014616 () Bool)

(declare-fun e!3132779 () Bool)

(declare-fun tp!1406320 () Bool)

(declare-fun tp!1406321 () Bool)

(assert (=> b!5014616 (= e!3132779 (and tp!1406320 tp!1406321))))

(declare-fun b!5014615 () Bool)

(assert (=> b!5014615 (= e!3132779 tp_is_empty!36611)))

(assert (=> b!5013889 (= tp!1406214 e!3132779)))

(declare-fun b!5014617 () Bool)

(declare-fun tp!1406322 () Bool)

(assert (=> b!5014617 (= e!3132779 tp!1406322)))

(declare-fun b!5014618 () Bool)

(declare-fun tp!1406318 () Bool)

(declare-fun tp!1406319 () Bool)

(assert (=> b!5014618 (= e!3132779 (and tp!1406318 tp!1406319))))

(assert (= (and b!5013889 ((_ is ElementMatch!13807) (regOne!28127 r!12727))) b!5014615))

(assert (= (and b!5013889 ((_ is Concat!22600) (regOne!28127 r!12727))) b!5014616))

(assert (= (and b!5013889 ((_ is Star!13807) (regOne!28127 r!12727))) b!5014617))

(assert (= (and b!5013889 ((_ is Union!13807) (regOne!28127 r!12727))) b!5014618))

(declare-fun b!5014620 () Bool)

(declare-fun e!3132780 () Bool)

(declare-fun tp!1406325 () Bool)

(declare-fun tp!1406326 () Bool)

(assert (=> b!5014620 (= e!3132780 (and tp!1406325 tp!1406326))))

(declare-fun b!5014619 () Bool)

(assert (=> b!5014619 (= e!3132780 tp_is_empty!36611)))

(assert (=> b!5013889 (= tp!1406218 e!3132780)))

(declare-fun b!5014621 () Bool)

(declare-fun tp!1406327 () Bool)

(assert (=> b!5014621 (= e!3132780 tp!1406327)))

(declare-fun b!5014622 () Bool)

(declare-fun tp!1406323 () Bool)

(declare-fun tp!1406324 () Bool)

(assert (=> b!5014622 (= e!3132780 (and tp!1406323 tp!1406324))))

(assert (= (and b!5013889 ((_ is ElementMatch!13807) (regTwo!28127 r!12727))) b!5014619))

(assert (= (and b!5013889 ((_ is Concat!22600) (regTwo!28127 r!12727))) b!5014620))

(assert (= (and b!5013889 ((_ is Star!13807) (regTwo!28127 r!12727))) b!5014621))

(assert (= (and b!5013889 ((_ is Union!13807) (regTwo!28127 r!12727))) b!5014622))

(declare-fun tp!1406330 () Bool)

(declare-fun e!3132781 () Bool)

(declare-fun tp!1406328 () Bool)

(declare-fun b!5014623 () Bool)

(assert (=> b!5014623 (= e!3132781 (and (inv!76101 (left!42331 (c!856477 input!5597))) tp!1406328 (inv!76101 (right!42661 (c!856477 input!5597))) tp!1406330))))

(declare-fun b!5014625 () Bool)

(declare-fun e!3132782 () Bool)

(declare-fun tp!1406329 () Bool)

(assert (=> b!5014625 (= e!3132782 tp!1406329)))

(declare-fun b!5014624 () Bool)

(assert (=> b!5014624 (= e!3132781 (and (inv!76109 (xs!18652 (c!856477 input!5597))) e!3132782))))

(assert (=> b!5013879 (= tp!1406217 (and (inv!76101 (c!856477 input!5597)) e!3132781))))

(assert (= (and b!5013879 ((_ is Node!15326) (c!856477 input!5597))) b!5014623))

(assert (= b!5014624 b!5014625))

(assert (= (and b!5013879 ((_ is Leaf!25438) (c!856477 input!5597))) b!5014624))

(declare-fun m!6049378 () Bool)

(assert (=> b!5014623 m!6049378))

(declare-fun m!6049380 () Bool)

(assert (=> b!5014623 m!6049380))

(declare-fun m!6049382 () Bool)

(assert (=> b!5014624 m!6049382))

(assert (=> b!5013879 m!6048672))

(declare-fun condSetEmpty!28478 () Bool)

(assert (=> setNonEmpty!28472 (= condSetEmpty!28478 (= setRest!28472 ((as const (Array Context!6464 Bool)) false)))))

(declare-fun setRes!28478 () Bool)

(assert (=> setNonEmpty!28472 (= tp!1406212 setRes!28478)))

(declare-fun setIsEmpty!28478 () Bool)

(assert (=> setIsEmpty!28478 setRes!28478))

(declare-fun setElem!28478 () Context!6464)

(declare-fun tp!1406335 () Bool)

(declare-fun setNonEmpty!28478 () Bool)

(declare-fun e!3132785 () Bool)

(assert (=> setNonEmpty!28478 (= setRes!28478 (and tp!1406335 (inv!76103 setElem!28478) e!3132785))))

(declare-fun setRest!28478 () (InoxSet Context!6464))

(assert (=> setNonEmpty!28478 (= setRest!28472 ((_ map or) (store ((as const (Array Context!6464 Bool)) false) setElem!28478 true) setRest!28478))))

(declare-fun b!5014630 () Bool)

(declare-fun tp!1406336 () Bool)

(assert (=> b!5014630 (= e!3132785 tp!1406336)))

(assert (= (and setNonEmpty!28472 condSetEmpty!28478) setIsEmpty!28478))

(assert (= (and setNonEmpty!28472 (not condSetEmpty!28478)) setNonEmpty!28478))

(assert (= setNonEmpty!28478 b!5014630))

(declare-fun m!6049384 () Bool)

(assert (=> setNonEmpty!28478 m!6049384))

(check-sat (not b!5014617) (not b!5014606) (not b!5014057) (not b!5014298) (not d!1614558) (not d!1614420) (not b!5014016) (not d!1614456) (not b!5014053) (not b!5014388) (not b!5014561) (not b!5014414) (not b!5014121) (not d!1614418) (not b!5014535) (not b!5014610) (not b!5014393) (not b!5014415) (not b!5014006) (not d!1614468) (not b!5014308) (not b!5014290) (not b!5014608) (not bm!350208) (not b!5014322) (not d!1614560) (not d!1614584) (not b!5013903) (not d!1614538) (not b!5014554) (not b!5014618) (not d!1614472) (not b!5014317) (not b!5014120) (not b!5014609) (not b!5014060) (not bm!350185) (not b!5014616) (not d!1614416) (not d!1614586) tp_is_empty!36611 (not b!5014552) (not b!5014307) (not b!5014548) (not b!5014114) (not b!5014088) (not b!5014129) (not bm!350211) (not b!5014059) (not b!5014549) (not b!5014562) (not d!1614596) (not b!5014621) (not d!1614458) (not b!5014327) (not bm!350156) (not d!1614590) (not d!1614528) (not b!5014585) (not b!5014559) (not d!1614464) (not b!5014623) (not b!5014089) (not b!5014630) (not d!1614564) (not b!5014624) (not b!5014572) (not b!5014017) (not d!1614446) (not b!5014537) (not b!5014600) (not d!1614452) (not b!5013897) (not b!5014573) (not b!5014004) (not d!1614412) (not b!5013968) (not b!5014070) (not d!1614474) (not bm!350209) (not b!5014305) (not bm!350210) (not b!5014570) (not b!5014128) (not d!1614404) (not d!1614526) (not b!5014297) (not b!5014318) (not bm!350214) (not b!5014316) (not b!5014288) (not d!1614470) (not b!5014116) (not b!5014625) (not b!5013879) (not b!5014125) (not b!5014601) (not bm!350207) (not b!5014553) (not b!5014533) (not bm!350157) (not d!1614410) (not b!5014301) (not setNonEmpty!28478) (not b!5014569) (not b!5014557) (not b!5014296) (not b!5014018) (not b!5014550) (not bm!350148) (not bm!350212) (not d!1614534) (not b!5014612) (not b!5014587) (not b!5014086) (not b!5014613) (not b!5014536) (not b!5014021) (not b!5014085) (not d!1614524) (not b!5014622) (not b!5014309) (not b!5014586) (not b!5014069) (not d!1614588) (not d!1614406) (not b!5014599) (not b!5014390) (not b!5014061) (not d!1614402) (not bm!350213) (not b!5014546) (not b!5014620) (not b!5014614) (not d!1614476) (not d!1614522) (not b!5013969) (not bm!350153) (not b!5014020) (not b!5014574) (not b!5014127) (not b!5014052) (not b!5013994) (not b!5014576) (not d!1614414) (not b!5014558) (not bm!350149) (not d!1614466) (not b!5014300) (not d!1614520) (not b!5014392))
(check-sat)
