; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!283216 () Bool)

(assert start!283216)

(declare-fun b!2909113 () Bool)

(declare-fun e!1836243 () Bool)

(declare-fun tp!934768 () Bool)

(assert (=> b!2909113 (= e!1836243 tp!934768)))

(declare-fun setNonEmpty!25852 () Bool)

(declare-fun tp!934766 () Bool)

(declare-datatypes ((C!18038 0))(
  ( (C!18039 (val!11053 Int)) )
))
(declare-datatypes ((Regex!8928 0))(
  ( (ElementMatch!8928 (c!474149 C!18038)) (Concat!14249 (regOne!18368 Regex!8928) (regTwo!18368 Regex!8928)) (EmptyExpr!8928) (Star!8928 (reg!9257 Regex!8928)) (EmptyLang!8928) (Union!8928 (regOne!18369 Regex!8928) (regTwo!18369 Regex!8928)) )
))
(declare-datatypes ((List!34765 0))(
  ( (Nil!34641) (Cons!34641 (h!40061 Regex!8928) (t!233808 List!34765)) )
))
(declare-datatypes ((Context!5496 0))(
  ( (Context!5497 (exprs!3248 List!34765)) )
))
(declare-fun setElem!25852 () Context!5496)

(declare-fun setRes!25852 () Bool)

(declare-fun inv!46768 (Context!5496) Bool)

(assert (=> setNonEmpty!25852 (= setRes!25852 (and tp!934766 (inv!46768 setElem!25852) e!1836243))))

(declare-fun z!644 () (Set Context!5496))

(declare-fun setRest!25852 () (Set Context!5496))

(assert (=> setNonEmpty!25852 (= z!644 (set.union (set.insert setElem!25852 (as set.empty (Set Context!5496))) setRest!25852))))

(declare-fun b!2909114 () Bool)

(declare-fun e!1836242 () Bool)

(declare-fun e!1836241 () Bool)

(assert (=> b!2909114 (= e!1836242 e!1836241)))

(declare-fun res!1201107 () Bool)

(assert (=> b!2909114 (=> (not res!1201107) (not e!1836241))))

(declare-fun i!1878 () Int)

(declare-fun lt!1023069 () Int)

(assert (=> b!2909114 (= res!1201107 (and (<= i!1878 lt!1023069) (not (= i!1878 lt!1023069))))))

(declare-datatypes ((List!34766 0))(
  ( (Nil!34642) (Cons!34642 (h!40062 C!18038) (t!233809 List!34766)) )
))
(declare-datatypes ((IArray!21011 0))(
  ( (IArray!21012 (innerList!10563 List!34766)) )
))
(declare-datatypes ((Conc!10503 0))(
  ( (Node!10503 (left!26018 Conc!10503) (right!26348 Conc!10503) (csize!21236 Int) (cheight!10714 Int)) (Leaf!16191 (xs!13621 IArray!21011) (csize!21237 Int)) (Empty!10503) )
))
(declare-datatypes ((BalanceConc!20644 0))(
  ( (BalanceConc!20645 (c!474150 Conc!10503)) )
))
(declare-fun input!3770 () BalanceConc!20644)

(declare-fun size!26391 (BalanceConc!20644) Int)

(assert (=> b!2909114 (= lt!1023069 (size!26391 input!3770))))

(declare-fun b!2909115 () Bool)

(assert (=> b!2909115 (= e!1836241 (not true))))

(declare-fun lt!1023070 () Int)

(declare-fun size!26392 (List!34766) Int)

(declare-fun list!12595 (BalanceConc!20644) List!34766)

(assert (=> b!2909115 (= lt!1023070 (size!26392 (list!12595 input!3770)))))

(declare-fun lt!1023068 () (Set Context!5496))

(declare-fun prefixMatchZipper!364 ((Set Context!5496) List!34766) Bool)

(declare-fun dropList!1029 (BalanceConc!20644 Int) List!34766)

(declare-fun prefixMatchZipperSequence!768 ((Set Context!5496) BalanceConc!20644 Int) Bool)

(assert (=> b!2909115 (= (prefixMatchZipper!364 lt!1023068 (dropList!1029 input!3770 (+ 1 i!1878))) (prefixMatchZipperSequence!768 lt!1023068 input!3770 (+ 1 i!1878)))))

(declare-datatypes ((Unit!48187 0))(
  ( (Unit!48188) )
))
(declare-fun lt!1023071 () Unit!48187)

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!244 ((Set Context!5496) BalanceConc!20644 Int) Unit!48187)

(assert (=> b!2909115 (= lt!1023071 (lemmaprefixMatchZipperSequenceEquivalent!244 lt!1023068 input!3770 (+ 1 i!1878)))))

(declare-fun derivationStepZipper!508 ((Set Context!5496) C!18038) (Set Context!5496))

(declare-fun apply!7880 (BalanceConc!20644 Int) C!18038)

(assert (=> b!2909115 (= lt!1023068 (derivationStepZipper!508 z!644 (apply!7880 input!3770 i!1878)))))

(declare-fun b!2909116 () Bool)

(declare-fun e!1836240 () Bool)

(declare-fun tp!934767 () Bool)

(declare-fun inv!46769 (Conc!10503) Bool)

(assert (=> b!2909116 (= e!1836240 (and (inv!46769 (c!474150 input!3770)) tp!934767))))

(declare-fun setIsEmpty!25852 () Bool)

(assert (=> setIsEmpty!25852 setRes!25852))

(declare-fun res!1201106 () Bool)

(assert (=> start!283216 (=> (not res!1201106) (not e!1836242))))

(assert (=> start!283216 (= res!1201106 (>= i!1878 0))))

(assert (=> start!283216 e!1836242))

(assert (=> start!283216 true))

(declare-fun inv!46770 (BalanceConc!20644) Bool)

(assert (=> start!283216 (and (inv!46770 input!3770) e!1836240)))

(declare-fun condSetEmpty!25852 () Bool)

(assert (=> start!283216 (= condSetEmpty!25852 (= z!644 (as set.empty (Set Context!5496))))))

(assert (=> start!283216 setRes!25852))

(assert (= (and start!283216 res!1201106) b!2909114))

(assert (= (and b!2909114 res!1201107) b!2909115))

(assert (= start!283216 b!2909116))

(assert (= (and start!283216 condSetEmpty!25852) setIsEmpty!25852))

(assert (= (and start!283216 (not condSetEmpty!25852)) setNonEmpty!25852))

(assert (= setNonEmpty!25852 b!2909113))

(declare-fun m!3310295 () Bool)

(assert (=> b!2909116 m!3310295))

(declare-fun m!3310297 () Bool)

(assert (=> start!283216 m!3310297))

(declare-fun m!3310299 () Bool)

(assert (=> b!2909114 m!3310299))

(declare-fun m!3310301 () Bool)

(assert (=> b!2909115 m!3310301))

(declare-fun m!3310303 () Bool)

(assert (=> b!2909115 m!3310303))

(declare-fun m!3310305 () Bool)

(assert (=> b!2909115 m!3310305))

(declare-fun m!3310307 () Bool)

(assert (=> b!2909115 m!3310307))

(assert (=> b!2909115 m!3310307))

(declare-fun m!3310309 () Bool)

(assert (=> b!2909115 m!3310309))

(declare-fun m!3310311 () Bool)

(assert (=> b!2909115 m!3310311))

(assert (=> b!2909115 m!3310301))

(declare-fun m!3310313 () Bool)

(assert (=> b!2909115 m!3310313))

(assert (=> b!2909115 m!3310305))

(declare-fun m!3310315 () Bool)

(assert (=> b!2909115 m!3310315))

(declare-fun m!3310317 () Bool)

(assert (=> setNonEmpty!25852 m!3310317))

(push 1)

(assert (not b!2909115))

(assert (not b!2909113))

(assert (not setNonEmpty!25852))

(assert (not b!2909116))

(assert (not start!283216))

(assert (not b!2909114))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

