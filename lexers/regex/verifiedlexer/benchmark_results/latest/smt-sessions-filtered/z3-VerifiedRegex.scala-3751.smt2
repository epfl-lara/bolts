; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209602 () Bool)

(assert start!209602)

(declare-fun setIsEmpty!18016 () Bool)

(declare-fun setRes!18016 () Bool)

(assert (=> setIsEmpty!18016 setRes!18016))

(declare-fun b!2160121 () Bool)

(declare-fun e!1382114 () Bool)

(declare-fun tp!673780 () Bool)

(declare-fun tp!673776 () Bool)

(assert (=> b!2160121 (= e!1382114 (and tp!673780 tp!673776))))

(declare-fun b!2160122 () Bool)

(declare-fun e!1382107 () Bool)

(declare-datatypes ((C!12084 0))(
  ( (C!12085 (val!7028 Int)) )
))
(declare-datatypes ((List!25120 0))(
  ( (Nil!25036) (Cons!25036 (h!30437 C!12084) (t!197668 List!25120)) )
))
(declare-datatypes ((IArray!16215 0))(
  ( (IArray!16216 (innerList!8165 List!25120)) )
))
(declare-datatypes ((Conc!8105 0))(
  ( (Node!8105 (left!19268 Conc!8105) (right!19598 Conc!8105) (csize!16440 Int) (cheight!8316 Int)) (Leaf!11857 (xs!11047 IArray!16215) (csize!16441 Int)) (Empty!8105) )
))
(declare-datatypes ((BalanceConc!15972 0))(
  ( (BalanceConc!15973 (c!341886 Conc!8105)) )
))
(declare-datatypes ((tuple2!24742 0))(
  ( (tuple2!24743 (_1!14741 BalanceConc!15972) (_2!14741 BalanceConc!15972)) )
))
(declare-fun lt!803084 () tuple2!24742)

(declare-fun isEmpty!14353 (BalanceConc!15972) Bool)

(assert (=> b!2160122 (= e!1382107 (isEmpty!14353 (_1!14741 lt!803084)))))

(declare-fun b!2160123 () Bool)

(declare-fun e!1382109 () Bool)

(declare-fun e!1382106 () Bool)

(assert (=> b!2160123 (= e!1382109 e!1382106)))

(declare-fun res!930733 () Bool)

(assert (=> b!2160123 (=> (not res!930733) (not e!1382106))))

(declare-fun lt!803081 () List!25120)

(declare-fun lt!803074 () List!25120)

(declare-fun isSuffix!636 (List!25120 List!25120) Bool)

(assert (=> b!2160123 (= res!930733 (isSuffix!636 lt!803081 lt!803074))))

(declare-fun totalInput!977 () BalanceConc!15972)

(declare-fun list!9588 (BalanceConc!15972) List!25120)

(assert (=> b!2160123 (= lt!803074 (list!9588 totalInput!977))))

(declare-fun input!5540 () BalanceConc!15972)

(assert (=> b!2160123 (= lt!803081 (list!9588 input!5540))))

(declare-fun lt!803077 () Int)

(declare-fun e!1382113 () Bool)

(declare-fun lt!803090 () Int)

(declare-fun b!2160124 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!5969 0))(
  ( (ElementMatch!5969 (c!341887 C!12084)) (Concat!10271 (regOne!12450 Regex!5969) (regTwo!12450 Regex!5969)) (EmptyExpr!5969) (Star!5969 (reg!6298 Regex!5969)) (EmptyLang!5969) (Union!5969 (regOne!12451 Regex!5969) (regTwo!12451 Regex!5969)) )
))
(declare-datatypes ((List!25121 0))(
  ( (Nil!25037) (Cons!25037 (h!30438 Regex!5969) (t!197669 List!25121)) )
))
(declare-datatypes ((Context!3078 0))(
  ( (Context!3079 (exprs!2039 List!25121)) )
))
(declare-fun z!4055 () (InoxSet Context!3078))

(declare-fun matchZipper!97 ((InoxSet Context!3078) List!25120) Bool)

(declare-fun take!183 (List!25120 Int) List!25120)

(declare-fun drop!1192 (List!25120 Int) List!25120)

(assert (=> b!2160124 (= e!1382113 (matchZipper!97 z!4055 (take!183 (drop!1192 lt!803074 lt!803090) lt!803077)))))

(declare-fun b!2160125 () Bool)

(declare-fun e!1382108 () Bool)

(declare-fun tp!673779 () Bool)

(declare-fun inv!33163 (Conc!8105) Bool)

(assert (=> b!2160125 (= e!1382108 (and (inv!33163 (c!341886 totalInput!977)) tp!673779))))

(declare-fun b!2160126 () Bool)

(declare-fun e!1382110 () Bool)

(assert (=> b!2160126 (= e!1382110 (not true))))

(declare-fun lt!803072 () Bool)

(assert (=> b!2160126 (= lt!803072 e!1382107)))

(declare-fun res!930734 () Bool)

(assert (=> b!2160126 (=> res!930734 e!1382107)))

(declare-fun lt!803075 () List!25120)

(assert (=> b!2160126 (= res!930734 (matchZipper!97 z!4055 lt!803075))))

(declare-fun e!1382111 () Bool)

(assert (=> b!2160126 e!1382111))

(declare-fun res!930735 () Bool)

(assert (=> b!2160126 (=> res!930735 e!1382111)))

(declare-datatypes ((tuple2!24744 0))(
  ( (tuple2!24745 (_1!14742 List!25120) (_2!14742 List!25120)) )
))
(declare-fun lt!803080 () tuple2!24744)

(declare-fun isEmpty!14354 (List!25120) Bool)

(assert (=> b!2160126 (= res!930735 (isEmpty!14354 (_1!14742 lt!803080)))))

(declare-fun r!12534 () Regex!5969)

(declare-fun findLongestMatchInner!598 (Regex!5969 List!25120 Int List!25120 List!25120 Int) tuple2!24744)

(declare-fun size!19565 (List!25120) Int)

(assert (=> b!2160126 (= lt!803080 (findLongestMatchInner!598 r!12534 Nil!25036 (size!19565 Nil!25036) lt!803081 lt!803081 (size!19565 lt!803081)))))

(declare-datatypes ((Unit!38089 0))(
  ( (Unit!38090) )
))
(declare-fun lt!803088 () Unit!38089)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!579 (Regex!5969 List!25120) Unit!38089)

(assert (=> b!2160126 (= lt!803088 (longestMatchIsAcceptedByMatchOrIsEmpty!579 r!12534 lt!803081))))

(assert (=> b!2160126 e!1382113))

(declare-fun res!930736 () Bool)

(assert (=> b!2160126 (=> res!930736 e!1382113)))

(assert (=> b!2160126 (= res!930736 (<= lt!803077 0))))

(declare-fun lt!803079 () Int)

(declare-fun lt!803078 () Int)

(declare-fun furthestNullablePosition!156 ((InoxSet Context!3078) Int BalanceConc!15972 Int Int) Int)

(assert (=> b!2160126 (= lt!803077 (+ 1 (- (furthestNullablePosition!156 z!4055 lt!803090 totalInput!977 lt!803078 lt!803079) lt!803090)))))

(declare-fun lt!803087 () Unit!38089)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!4 ((InoxSet Context!3078) Int BalanceConc!15972 Int) Unit!38089)

(assert (=> b!2160126 (= lt!803087 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!4 z!4055 lt!803090 totalInput!977 lt!803079))))

(declare-fun e!1382105 () Int)

(assert (=> b!2160126 (= lt!803079 e!1382105)))

(declare-fun c!341885 () Bool)

(declare-fun nullableZipper!250 ((InoxSet Context!3078)) Bool)

(assert (=> b!2160126 (= c!341885 (nullableZipper!250 z!4055))))

(declare-fun isPrefix!2089 (List!25120 List!25120) Bool)

(assert (=> b!2160126 (isPrefix!2089 (take!183 lt!803074 lt!803090) lt!803074)))

(declare-fun lt!803076 () Unit!38089)

(declare-fun lemmaTakeIsPrefix!6 (List!25120 Int) Unit!38089)

(assert (=> b!2160126 (= lt!803076 (lemmaTakeIsPrefix!6 lt!803074 lt!803090))))

(declare-fun lt!803083 () tuple2!24744)

(declare-fun lt!803089 () List!25120)

(assert (=> b!2160126 (isPrefix!2089 (_1!14742 lt!803083) lt!803089)))

(declare-fun lt!803086 () Unit!38089)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1372 (List!25120 List!25120) Unit!38089)

(assert (=> b!2160126 (= lt!803086 (lemmaConcatTwoListThenFirstIsPrefix!1372 (_1!14742 lt!803083) (_2!14742 lt!803083)))))

(declare-fun lt!803073 () List!25120)

(assert (=> b!2160126 (isPrefix!2089 lt!803075 lt!803073)))

(declare-fun lt!803082 () Unit!38089)

(declare-fun lt!803085 () List!25120)

(assert (=> b!2160126 (= lt!803082 (lemmaConcatTwoListThenFirstIsPrefix!1372 lt!803075 lt!803085))))

(declare-fun b!2160127 () Bool)

(assert (=> b!2160127 (= e!1382105 (- 1))))

(declare-fun b!2160128 () Bool)

(assert (=> b!2160128 (= e!1382105 (- lt!803090 1))))

(declare-fun res!930738 () Bool)

(assert (=> start!209602 (=> (not res!930738) (not e!1382109))))

(declare-fun validRegex!2245 (Regex!5969) Bool)

(assert (=> start!209602 (= res!930738 (validRegex!2245 r!12534))))

(assert (=> start!209602 e!1382109))

(assert (=> start!209602 e!1382114))

(declare-fun condSetEmpty!18016 () Bool)

(assert (=> start!209602 (= condSetEmpty!18016 (= z!4055 ((as const (Array Context!3078 Bool)) false)))))

(assert (=> start!209602 setRes!18016))

(declare-fun inv!33164 (BalanceConc!15972) Bool)

(assert (=> start!209602 (and (inv!33164 totalInput!977) e!1382108)))

(declare-fun e!1382112 () Bool)

(assert (=> start!209602 (and (inv!33164 input!5540) e!1382112)))

(declare-fun b!2160129 () Bool)

(declare-fun tp!673784 () Bool)

(declare-fun tp!673777 () Bool)

(assert (=> b!2160129 (= e!1382114 (and tp!673784 tp!673777))))

(declare-fun b!2160130 () Bool)

(declare-fun tp_is_empty!9545 () Bool)

(assert (=> b!2160130 (= e!1382114 tp_is_empty!9545)))

(declare-fun b!2160131 () Bool)

(declare-fun tp!673778 () Bool)

(assert (=> b!2160131 (= e!1382112 (and (inv!33163 (c!341886 input!5540)) tp!673778))))

(declare-fun b!2160132 () Bool)

(declare-fun e!1382104 () Bool)

(declare-fun tp!673782 () Bool)

(assert (=> b!2160132 (= e!1382104 tp!673782)))

(declare-fun b!2160133 () Bool)

(declare-fun matchR!2730 (Regex!5969 List!25120) Bool)

(assert (=> b!2160133 (= e!1382111 (matchR!2730 r!12534 (_1!14742 lt!803080)))))

(declare-fun b!2160134 () Bool)

(declare-fun e!1382115 () Bool)

(assert (=> b!2160134 (= e!1382106 e!1382115)))

(declare-fun res!930732 () Bool)

(assert (=> b!2160134 (=> (not res!930732) (not e!1382115))))

(assert (=> b!2160134 (= res!930732 (= lt!803073 lt!803081))))

(declare-fun ++!6326 (List!25120 List!25120) List!25120)

(assert (=> b!2160134 (= lt!803073 (++!6326 lt!803075 lt!803085))))

(assert (=> b!2160134 (= lt!803085 (list!9588 (_2!14741 lt!803084)))))

(assert (=> b!2160134 (= lt!803075 (list!9588 (_1!14741 lt!803084)))))

(declare-fun findLongestMatch!523 (Regex!5969 List!25120) tuple2!24744)

(assert (=> b!2160134 (= lt!803083 (findLongestMatch!523 r!12534 lt!803081))))

(declare-fun size!19566 (BalanceConc!15972) Int)

(assert (=> b!2160134 (= lt!803090 (- lt!803078 (size!19566 input!5540)))))

(assert (=> b!2160134 (= lt!803078 (size!19566 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!18 ((InoxSet Context!3078) BalanceConc!15972 BalanceConc!15972) tuple2!24742)

(assert (=> b!2160134 (= lt!803084 (findLongestMatchZipperSequenceV3!18 z!4055 input!5540 totalInput!977))))

(declare-fun b!2160135 () Bool)

(declare-fun res!930737 () Bool)

(assert (=> b!2160135 (=> (not res!930737) (not e!1382109))))

(declare-datatypes ((List!25122 0))(
  ( (Nil!25038) (Cons!25038 (h!30439 Context!3078) (t!197670 List!25122)) )
))
(declare-fun unfocusZipper!76 (List!25122) Regex!5969)

(declare-fun toList!1152 ((InoxSet Context!3078)) List!25122)

(assert (=> b!2160135 (= res!930737 (= (unfocusZipper!76 (toList!1152 z!4055)) r!12534))))

(declare-fun setElem!18016 () Context!3078)

(declare-fun tp!673781 () Bool)

(declare-fun setNonEmpty!18016 () Bool)

(declare-fun inv!33165 (Context!3078) Bool)

(assert (=> setNonEmpty!18016 (= setRes!18016 (and tp!673781 (inv!33165 setElem!18016) e!1382104))))

(declare-fun setRest!18016 () (InoxSet Context!3078))

(assert (=> setNonEmpty!18016 (= z!4055 ((_ map or) (store ((as const (Array Context!3078 Bool)) false) setElem!18016 true) setRest!18016))))

(declare-fun b!2160136 () Bool)

(assert (=> b!2160136 (= e!1382115 e!1382110)))

(declare-fun res!930739 () Bool)

(assert (=> b!2160136 (=> (not res!930739) (not e!1382110))))

(assert (=> b!2160136 (= res!930739 (= lt!803089 lt!803081))))

(assert (=> b!2160136 (= lt!803089 (++!6326 (_1!14742 lt!803083) (_2!14742 lt!803083)))))

(declare-fun b!2160137 () Bool)

(declare-fun tp!673783 () Bool)

(assert (=> b!2160137 (= e!1382114 tp!673783)))

(assert (= (and start!209602 res!930738) b!2160135))

(assert (= (and b!2160135 res!930737) b!2160123))

(assert (= (and b!2160123 res!930733) b!2160134))

(assert (= (and b!2160134 res!930732) b!2160136))

(assert (= (and b!2160136 res!930739) b!2160126))

(assert (= (and b!2160126 c!341885) b!2160128))

(assert (= (and b!2160126 (not c!341885)) b!2160127))

(assert (= (and b!2160126 (not res!930736)) b!2160124))

(assert (= (and b!2160126 (not res!930735)) b!2160133))

(assert (= (and b!2160126 (not res!930734)) b!2160122))

(get-info :version)

(assert (= (and start!209602 ((_ is ElementMatch!5969) r!12534)) b!2160130))

(assert (= (and start!209602 ((_ is Concat!10271) r!12534)) b!2160121))

(assert (= (and start!209602 ((_ is Star!5969) r!12534)) b!2160137))

(assert (= (and start!209602 ((_ is Union!5969) r!12534)) b!2160129))

(assert (= (and start!209602 condSetEmpty!18016) setIsEmpty!18016))

(assert (= (and start!209602 (not condSetEmpty!18016)) setNonEmpty!18016))

(assert (= setNonEmpty!18016 b!2160132))

(assert (= start!209602 b!2160125))

(assert (= start!209602 b!2160131))

(declare-fun m!2599955 () Bool)

(assert (=> b!2160135 m!2599955))

(assert (=> b!2160135 m!2599955))

(declare-fun m!2599957 () Bool)

(assert (=> b!2160135 m!2599957))

(declare-fun m!2599959 () Bool)

(assert (=> b!2160134 m!2599959))

(declare-fun m!2599961 () Bool)

(assert (=> b!2160134 m!2599961))

(declare-fun m!2599963 () Bool)

(assert (=> b!2160134 m!2599963))

(declare-fun m!2599965 () Bool)

(assert (=> b!2160134 m!2599965))

(declare-fun m!2599967 () Bool)

(assert (=> b!2160134 m!2599967))

(declare-fun m!2599969 () Bool)

(assert (=> b!2160134 m!2599969))

(declare-fun m!2599971 () Bool)

(assert (=> b!2160134 m!2599971))

(declare-fun m!2599973 () Bool)

(assert (=> b!2160123 m!2599973))

(declare-fun m!2599975 () Bool)

(assert (=> b!2160123 m!2599975))

(declare-fun m!2599977 () Bool)

(assert (=> b!2160123 m!2599977))

(declare-fun m!2599979 () Bool)

(assert (=> b!2160126 m!2599979))

(declare-fun m!2599981 () Bool)

(assert (=> b!2160126 m!2599981))

(declare-fun m!2599983 () Bool)

(assert (=> b!2160126 m!2599983))

(declare-fun m!2599985 () Bool)

(assert (=> b!2160126 m!2599985))

(declare-fun m!2599987 () Bool)

(assert (=> b!2160126 m!2599987))

(declare-fun m!2599989 () Bool)

(assert (=> b!2160126 m!2599989))

(declare-fun m!2599991 () Bool)

(assert (=> b!2160126 m!2599991))

(declare-fun m!2599993 () Bool)

(assert (=> b!2160126 m!2599993))

(declare-fun m!2599995 () Bool)

(assert (=> b!2160126 m!2599995))

(declare-fun m!2599997 () Bool)

(assert (=> b!2160126 m!2599997))

(declare-fun m!2599999 () Bool)

(assert (=> b!2160126 m!2599999))

(declare-fun m!2600001 () Bool)

(assert (=> b!2160126 m!2600001))

(declare-fun m!2600003 () Bool)

(assert (=> b!2160126 m!2600003))

(assert (=> b!2160126 m!2600001))

(assert (=> b!2160126 m!2599981))

(assert (=> b!2160126 m!2599983))

(declare-fun m!2600005 () Bool)

(assert (=> b!2160126 m!2600005))

(declare-fun m!2600007 () Bool)

(assert (=> b!2160126 m!2600007))

(declare-fun m!2600009 () Bool)

(assert (=> b!2160126 m!2600009))

(declare-fun m!2600011 () Bool)

(assert (=> b!2160133 m!2600011))

(declare-fun m!2600013 () Bool)

(assert (=> setNonEmpty!18016 m!2600013))

(declare-fun m!2600015 () Bool)

(assert (=> b!2160124 m!2600015))

(assert (=> b!2160124 m!2600015))

(declare-fun m!2600017 () Bool)

(assert (=> b!2160124 m!2600017))

(assert (=> b!2160124 m!2600017))

(declare-fun m!2600019 () Bool)

(assert (=> b!2160124 m!2600019))

(declare-fun m!2600021 () Bool)

(assert (=> b!2160122 m!2600021))

(declare-fun m!2600023 () Bool)

(assert (=> start!209602 m!2600023))

(declare-fun m!2600025 () Bool)

(assert (=> start!209602 m!2600025))

(declare-fun m!2600027 () Bool)

(assert (=> start!209602 m!2600027))

(declare-fun m!2600029 () Bool)

(assert (=> b!2160136 m!2600029))

(declare-fun m!2600031 () Bool)

(assert (=> b!2160131 m!2600031))

(declare-fun m!2600033 () Bool)

(assert (=> b!2160125 m!2600033))

(check-sat (not b!2160131) (not setNonEmpty!18016) (not b!2160124) (not b!2160126) (not b!2160136) (not b!2160133) (not b!2160123) tp_is_empty!9545 (not b!2160122) (not b!2160129) (not b!2160135) (not b!2160137) (not b!2160125) (not b!2160134) (not b!2160121) (not b!2160132) (not start!209602))
(check-sat)
