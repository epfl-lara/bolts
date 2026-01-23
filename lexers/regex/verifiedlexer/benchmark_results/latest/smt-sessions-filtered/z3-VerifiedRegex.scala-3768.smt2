; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!210366 () Bool)

(assert start!210366)

(declare-fun res!933685 () Bool)

(declare-fun e!1387333 () Bool)

(assert (=> start!210366 (=> (not res!933685) (not e!1387333))))

(declare-datatypes ((C!12152 0))(
  ( (C!12153 (val!7062 Int)) )
))
(declare-datatypes ((Regex!6003 0))(
  ( (ElementMatch!6003 (c!343746 C!12152)) (Concat!10305 (regOne!12518 Regex!6003) (regTwo!12518 Regex!6003)) (EmptyExpr!6003) (Star!6003 (reg!6332 Regex!6003)) (EmptyLang!6003) (Union!6003 (regOne!12519 Regex!6003) (regTwo!12519 Regex!6003)) )
))
(declare-fun r!12534 () Regex!6003)

(declare-fun validRegex!2279 (Regex!6003) Bool)

(assert (=> start!210366 (= res!933685 (validRegex!2279 r!12534))))

(assert (=> start!210366 e!1387333))

(declare-fun e!1387343 () Bool)

(assert (=> start!210366 e!1387343))

(declare-datatypes ((List!25222 0))(
  ( (Nil!25138) (Cons!25138 (h!30539 C!12152) (t!197784 List!25222)) )
))
(declare-datatypes ((IArray!16283 0))(
  ( (IArray!16284 (innerList!8199 List!25222)) )
))
(declare-datatypes ((Conc!8139 0))(
  ( (Node!8139 (left!19323 Conc!8139) (right!19653 Conc!8139) (csize!16508 Int) (cheight!8350 Int)) (Leaf!11908 (xs!11081 IArray!16283) (csize!16509 Int)) (Empty!8139) )
))
(declare-datatypes ((BalanceConc!16040 0))(
  ( (BalanceConc!16041 (c!343747 Conc!8139)) )
))
(declare-fun totalInput!977 () BalanceConc!16040)

(declare-fun e!1387349 () Bool)

(declare-fun inv!33345 (BalanceConc!16040) Bool)

(assert (=> start!210366 (and (inv!33345 totalInput!977) e!1387349)))

(declare-fun input!5540 () BalanceConc!16040)

(declare-fun e!1387335 () Bool)

(assert (=> start!210366 (and (inv!33345 input!5540) e!1387335)))

(declare-fun condSetEmpty!18152 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!25223 0))(
  ( (Nil!25139) (Cons!25139 (h!30540 Regex!6003) (t!197785 List!25223)) )
))
(declare-datatypes ((Context!3146 0))(
  ( (Context!3147 (exprs!2073 List!25223)) )
))
(declare-fun z!4055 () (InoxSet Context!3146))

(assert (=> start!210366 (= condSetEmpty!18152 (= z!4055 ((as const (Array Context!3146 Bool)) false)))))

(declare-fun setRes!18152 () Bool)

(assert (=> start!210366 setRes!18152))

(declare-fun b!2169212 () Bool)

(declare-fun e!1387348 () Bool)

(declare-fun lt!807659 () List!25222)

(declare-datatypes ((tuple2!24882 0))(
  ( (tuple2!24883 (_1!14811 List!25222) (_2!14811 List!25222)) )
))
(declare-fun lt!807653 () tuple2!24882)

(assert (=> b!2169212 (= e!1387348 (= lt!807659 (_1!14811 lt!807653)))))

(declare-fun lt!807669 () List!25222)

(assert (=> b!2169212 (= lt!807669 (_1!14811 lt!807653))))

(declare-fun lt!807650 () List!25222)

(declare-datatypes ((Unit!38207 0))(
  ( (Unit!38208) )
))
(declare-fun lt!807652 () Unit!38207)

(declare-fun lemmaIsPrefixSameLengthThenSameList!345 (List!25222 List!25222 List!25222) Unit!38207)

(assert (=> b!2169212 (= lt!807652 (lemmaIsPrefixSameLengthThenSameList!345 lt!807669 (_1!14811 lt!807653) lt!807650))))

(declare-fun isPrefix!2119 (List!25222 List!25222) Bool)

(assert (=> b!2169212 (isPrefix!2119 lt!807659 lt!807650)))

(declare-fun lt!807673 () Int)

(declare-fun take!213 (List!25222 Int) List!25222)

(assert (=> b!2169212 (= lt!807659 (take!213 lt!807650 lt!807673))))

(declare-fun lt!807665 () Unit!38207)

(declare-fun lemmaTakeIsPrefix!36 (List!25222 Int) Unit!38207)

(assert (=> b!2169212 (= lt!807665 (lemmaTakeIsPrefix!36 lt!807650 lt!807673))))

(declare-fun b!2169213 () Bool)

(declare-fun e!1387344 () Bool)

(declare-fun tp!677014 () Bool)

(assert (=> b!2169213 (= e!1387344 tp!677014)))

(declare-fun b!2169214 () Bool)

(declare-fun tp_is_empty!9613 () Bool)

(assert (=> b!2169214 (= e!1387343 tp_is_empty!9613)))

(declare-fun b!2169215 () Bool)

(declare-fun e!1387334 () Int)

(declare-fun lt!807664 () Int)

(assert (=> b!2169215 (= e!1387334 (- lt!807664 1))))

(declare-fun b!2169216 () Bool)

(declare-fun e!1387338 () Bool)

(declare-fun e!1387342 () Bool)

(assert (=> b!2169216 (= e!1387338 (not e!1387342))))

(declare-fun res!933677 () Bool)

(assert (=> b!2169216 (=> res!933677 e!1387342)))

(declare-fun e!1387340 () Bool)

(assert (=> b!2169216 (= res!933677 e!1387340)))

(declare-fun res!933680 () Bool)

(assert (=> b!2169216 (=> (not res!933680) (not e!1387340))))

(declare-fun lt!807663 () Bool)

(assert (=> b!2169216 (= res!933680 (not lt!807663))))

(declare-fun lt!807657 () List!25222)

(declare-fun matchZipper!127 ((InoxSet Context!3146) List!25222) Bool)

(assert (=> b!2169216 (= lt!807663 (matchZipper!127 z!4055 lt!807657))))

(declare-fun e!1387347 () Bool)

(assert (=> b!2169216 e!1387347))

(declare-fun res!933679 () Bool)

(assert (=> b!2169216 (=> res!933679 e!1387347)))

(declare-fun lt!807654 () tuple2!24882)

(declare-fun isEmpty!14423 (List!25222) Bool)

(assert (=> b!2169216 (= res!933679 (isEmpty!14423 (_1!14811 lt!807654)))))

(declare-fun findLongestMatchInner!632 (Regex!6003 List!25222 Int List!25222 List!25222 Int) tuple2!24882)

(declare-fun size!19643 (List!25222) Int)

(assert (=> b!2169216 (= lt!807654 (findLongestMatchInner!632 r!12534 Nil!25138 (size!19643 Nil!25138) lt!807650 lt!807650 (size!19643 lt!807650)))))

(declare-fun lt!807670 () Unit!38207)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!609 (Regex!6003 List!25222) Unit!38207)

(assert (=> b!2169216 (= lt!807670 (longestMatchIsAcceptedByMatchOrIsEmpty!609 r!12534 lt!807650))))

(declare-fun e!1387339 () Bool)

(assert (=> b!2169216 e!1387339))

(declare-fun res!933681 () Bool)

(assert (=> b!2169216 (=> res!933681 e!1387339)))

(declare-fun lt!807656 () Int)

(assert (=> b!2169216 (= res!933681 (<= lt!807656 0))))

(declare-fun lt!807676 () Int)

(declare-fun lt!807678 () Int)

(declare-fun furthestNullablePosition!190 ((InoxSet Context!3146) Int BalanceConc!16040 Int Int) Int)

(assert (=> b!2169216 (= lt!807656 (+ 1 (- (furthestNullablePosition!190 z!4055 lt!807664 totalInput!977 lt!807678 lt!807676) lt!807664)))))

(declare-fun lt!807658 () Unit!38207)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!34 ((InoxSet Context!3146) Int BalanceConc!16040 Int) Unit!38207)

(assert (=> b!2169216 (= lt!807658 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!34 z!4055 lt!807664 totalInput!977 lt!807676))))

(assert (=> b!2169216 (= lt!807676 e!1387334)))

(declare-fun c!343745 () Bool)

(declare-fun nullableZipper!284 ((InoxSet Context!3146)) Bool)

(assert (=> b!2169216 (= c!343745 (nullableZipper!284 z!4055))))

(declare-fun lt!807662 () List!25222)

(assert (=> b!2169216 (isPrefix!2119 (take!213 lt!807662 lt!807664) lt!807662)))

(declare-fun lt!807674 () Unit!38207)

(assert (=> b!2169216 (= lt!807674 (lemmaTakeIsPrefix!36 lt!807662 lt!807664))))

(declare-fun lt!807672 () List!25222)

(assert (=> b!2169216 (isPrefix!2119 (_1!14811 lt!807653) lt!807672)))

(declare-fun lt!807668 () Unit!38207)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1402 (List!25222 List!25222) Unit!38207)

(assert (=> b!2169216 (= lt!807668 (lemmaConcatTwoListThenFirstIsPrefix!1402 (_1!14811 lt!807653) (_2!14811 lt!807653)))))

(declare-fun lt!807675 () List!25222)

(assert (=> b!2169216 (isPrefix!2119 lt!807657 lt!807675)))

(declare-fun lt!807660 () Unit!38207)

(declare-fun lt!807667 () List!25222)

(assert (=> b!2169216 (= lt!807660 (lemmaConcatTwoListThenFirstIsPrefix!1402 lt!807657 lt!807667))))

(declare-fun b!2169217 () Bool)

(declare-fun e!1387346 () Bool)

(declare-fun e!1387345 () Bool)

(assert (=> b!2169217 (= e!1387346 e!1387345)))

(declare-fun res!933682 () Bool)

(assert (=> b!2169217 (=> (not res!933682) (not e!1387345))))

(declare-fun isSuffix!670 (List!25222 List!25222) Bool)

(assert (=> b!2169217 (= res!933682 (isSuffix!670 lt!807650 lt!807662))))

(declare-fun list!9634 (BalanceConc!16040) List!25222)

(assert (=> b!2169217 (= lt!807662 (list!9634 totalInput!977))))

(assert (=> b!2169217 (= lt!807650 (list!9634 input!5540))))

(declare-fun b!2169218 () Bool)

(assert (=> b!2169218 (= e!1387334 (- 1))))

(declare-fun b!2169219 () Bool)

(declare-fun e!1387337 () Bool)

(declare-fun e!1387341 () Bool)

(assert (=> b!2169219 (= e!1387337 e!1387341)))

(declare-fun res!933676 () Bool)

(assert (=> b!2169219 (=> res!933676 e!1387341)))

(declare-datatypes ((tuple2!24884 0))(
  ( (tuple2!24885 (_1!14812 BalanceConc!16040) (_2!14812 BalanceConc!16040)) )
))
(declare-fun lt!807677 () tuple2!24884)

(declare-fun size!19644 (BalanceConc!16040) Int)

(assert (=> b!2169219 (= res!933676 (<= lt!807673 (size!19644 (_1!14812 lt!807677))))))

(assert (=> b!2169219 (= lt!807673 (size!19643 (_1!14811 lt!807653)))))

(declare-fun matchR!2760 (Regex!6003 List!25222) Bool)

(assert (=> b!2169219 (= (matchR!2760 r!12534 lt!807657) lt!807663)))

(declare-datatypes ((List!25224 0))(
  ( (Nil!25140) (Cons!25140 (h!30541 Context!3146) (t!197786 List!25224)) )
))
(declare-fun lt!807661 () List!25224)

(declare-fun lt!807666 () Unit!38207)

(declare-fun theoremZipperRegexEquiv!39 ((InoxSet Context!3146) List!25224 Regex!6003 List!25222) Unit!38207)

(assert (=> b!2169219 (= lt!807666 (theoremZipperRegexEquiv!39 z!4055 lt!807661 r!12534 lt!807657))))

(declare-fun lt!807651 () Bool)

(assert (=> b!2169219 (= lt!807651 (matchZipper!127 z!4055 (_1!14811 lt!807653)))))

(declare-fun lt!807671 () Unit!38207)

(assert (=> b!2169219 (= lt!807671 (theoremZipperRegexEquiv!39 z!4055 lt!807661 r!12534 (_1!14811 lt!807653)))))

(declare-fun b!2169220 () Bool)

(assert (=> b!2169220 (= e!1387347 (matchR!2760 r!12534 (_1!14811 lt!807654)))))

(declare-fun b!2169221 () Bool)

(declare-fun tp!677020 () Bool)

(declare-fun tp!677013 () Bool)

(assert (=> b!2169221 (= e!1387343 (and tp!677020 tp!677013))))

(declare-fun setNonEmpty!18152 () Bool)

(declare-fun setElem!18152 () Context!3146)

(declare-fun tp!677012 () Bool)

(declare-fun inv!33346 (Context!3146) Bool)

(assert (=> setNonEmpty!18152 (= setRes!18152 (and tp!677012 (inv!33346 setElem!18152) e!1387344))))

(declare-fun setRest!18152 () (InoxSet Context!3146))

(assert (=> setNonEmpty!18152 (= z!4055 ((_ map or) (store ((as const (Array Context!3146 Bool)) false) setElem!18152 true) setRest!18152))))

(declare-fun b!2169222 () Bool)

(assert (=> b!2169222 (= e!1387342 e!1387337)))

(declare-fun res!933674 () Bool)

(assert (=> b!2169222 (=> res!933674 e!1387337)))

(declare-fun e!1387332 () Bool)

(assert (=> b!2169222 (= res!933674 e!1387332)))

(declare-fun res!933683 () Bool)

(assert (=> b!2169222 (=> (not res!933683) (not e!1387332))))

(assert (=> b!2169222 (= res!933683 (not lt!807651))))

(assert (=> b!2169222 (= lt!807651 (matchR!2760 r!12534 (_1!14811 lt!807653)))))

(declare-fun b!2169223 () Bool)

(assert (=> b!2169223 (= e!1387332 (not (isEmpty!14423 (_1!14811 lt!807653))))))

(declare-fun setIsEmpty!18152 () Bool)

(assert (=> setIsEmpty!18152 setRes!18152))

(declare-fun b!2169224 () Bool)

(declare-fun tp!677015 () Bool)

(assert (=> b!2169224 (= e!1387343 tp!677015)))

(declare-fun b!2169225 () Bool)

(declare-fun e!1387336 () Bool)

(assert (=> b!2169225 (= e!1387345 e!1387336)))

(declare-fun res!933678 () Bool)

(assert (=> b!2169225 (=> (not res!933678) (not e!1387336))))

(assert (=> b!2169225 (= res!933678 (= lt!807675 lt!807650))))

(declare-fun ++!6362 (List!25222 List!25222) List!25222)

(assert (=> b!2169225 (= lt!807675 (++!6362 lt!807657 lt!807667))))

(assert (=> b!2169225 (= lt!807667 (list!9634 (_2!14812 lt!807677)))))

(assert (=> b!2169225 (= lt!807657 (list!9634 (_1!14812 lt!807677)))))

(declare-fun findLongestMatch!557 (Regex!6003 List!25222) tuple2!24882)

(assert (=> b!2169225 (= lt!807653 (findLongestMatch!557 r!12534 lt!807650))))

(assert (=> b!2169225 (= lt!807664 (- lt!807678 (size!19644 input!5540)))))

(assert (=> b!2169225 (= lt!807678 (size!19644 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!52 ((InoxSet Context!3146) BalanceConc!16040 BalanceConc!16040) tuple2!24884)

(assert (=> b!2169225 (= lt!807677 (findLongestMatchZipperSequenceV3!52 z!4055 input!5540 totalInput!977))))

(declare-fun b!2169226 () Bool)

(declare-fun isEmpty!14424 (BalanceConc!16040) Bool)

(assert (=> b!2169226 (= e!1387340 (not (isEmpty!14424 (_1!14812 lt!807677))))))

(declare-fun b!2169227 () Bool)

(declare-fun tp!677016 () Bool)

(declare-fun inv!33347 (Conc!8139) Bool)

(assert (=> b!2169227 (= e!1387335 (and (inv!33347 (c!343747 input!5540)) tp!677016))))

(declare-fun b!2169228 () Bool)

(assert (=> b!2169228 (= e!1387341 e!1387348)))

(declare-fun res!933673 () Bool)

(assert (=> b!2169228 (=> res!933673 e!1387348)))

(declare-fun lt!807655 () List!25222)

(assert (=> b!2169228 (= res!933673 (not (= lt!807655 lt!807650)))))

(assert (=> b!2169228 (= lt!807669 (take!213 lt!807655 lt!807673))))

(declare-fun drop!1226 (List!25222 Int) List!25222)

(assert (=> b!2169228 (= lt!807655 (drop!1226 lt!807662 lt!807664))))

(declare-fun b!2169229 () Bool)

(assert (=> b!2169229 (= e!1387339 (matchZipper!127 z!4055 (take!213 (drop!1226 lt!807662 lt!807664) lt!807656)))))

(declare-fun b!2169230 () Bool)

(declare-fun tp!677019 () Bool)

(assert (=> b!2169230 (= e!1387349 (and (inv!33347 (c!343747 totalInput!977)) tp!677019))))

(declare-fun b!2169231 () Bool)

(declare-fun tp!677017 () Bool)

(declare-fun tp!677018 () Bool)

(assert (=> b!2169231 (= e!1387343 (and tp!677017 tp!677018))))

(declare-fun b!2169232 () Bool)

(assert (=> b!2169232 (= e!1387336 e!1387338)))

(declare-fun res!933684 () Bool)

(assert (=> b!2169232 (=> (not res!933684) (not e!1387338))))

(assert (=> b!2169232 (= res!933684 (= lt!807672 lt!807650))))

(assert (=> b!2169232 (= lt!807672 (++!6362 (_1!14811 lt!807653) (_2!14811 lt!807653)))))

(declare-fun b!2169233 () Bool)

(assert (=> b!2169233 (= e!1387333 e!1387346)))

(declare-fun res!933675 () Bool)

(assert (=> b!2169233 (=> (not res!933675) (not e!1387346))))

(declare-fun unfocusZipper!110 (List!25224) Regex!6003)

(assert (=> b!2169233 (= res!933675 (= (unfocusZipper!110 lt!807661) r!12534))))

(declare-fun toList!1186 ((InoxSet Context!3146)) List!25224)

(assert (=> b!2169233 (= lt!807661 (toList!1186 z!4055))))

(assert (= (and start!210366 res!933685) b!2169233))

(assert (= (and b!2169233 res!933675) b!2169217))

(assert (= (and b!2169217 res!933682) b!2169225))

(assert (= (and b!2169225 res!933678) b!2169232))

(assert (= (and b!2169232 res!933684) b!2169216))

(assert (= (and b!2169216 c!343745) b!2169215))

(assert (= (and b!2169216 (not c!343745)) b!2169218))

(assert (= (and b!2169216 (not res!933681)) b!2169229))

(assert (= (and b!2169216 (not res!933679)) b!2169220))

(assert (= (and b!2169216 res!933680) b!2169226))

(assert (= (and b!2169216 (not res!933677)) b!2169222))

(assert (= (and b!2169222 res!933683) b!2169223))

(assert (= (and b!2169222 (not res!933674)) b!2169219))

(assert (= (and b!2169219 (not res!933676)) b!2169228))

(assert (= (and b!2169228 (not res!933673)) b!2169212))

(get-info :version)

(assert (= (and start!210366 ((_ is ElementMatch!6003) r!12534)) b!2169214))

(assert (= (and start!210366 ((_ is Concat!10305) r!12534)) b!2169231))

(assert (= (and start!210366 ((_ is Star!6003) r!12534)) b!2169224))

(assert (= (and start!210366 ((_ is Union!6003) r!12534)) b!2169221))

(assert (= start!210366 b!2169230))

(assert (= start!210366 b!2169227))

(assert (= (and start!210366 condSetEmpty!18152) setIsEmpty!18152))

(assert (= (and start!210366 (not condSetEmpty!18152)) setNonEmpty!18152))

(assert (= setNonEmpty!18152 b!2169213))

(declare-fun m!2610085 () Bool)

(assert (=> setNonEmpty!18152 m!2610085))

(declare-fun m!2610087 () Bool)

(assert (=> b!2169216 m!2610087))

(declare-fun m!2610089 () Bool)

(assert (=> b!2169216 m!2610089))

(declare-fun m!2610091 () Bool)

(assert (=> b!2169216 m!2610091))

(assert (=> b!2169216 m!2610087))

(declare-fun m!2610093 () Bool)

(assert (=> b!2169216 m!2610093))

(declare-fun m!2610095 () Bool)

(assert (=> b!2169216 m!2610095))

(declare-fun m!2610097 () Bool)

(assert (=> b!2169216 m!2610097))

(declare-fun m!2610099 () Bool)

(assert (=> b!2169216 m!2610099))

(assert (=> b!2169216 m!2610091))

(declare-fun m!2610101 () Bool)

(assert (=> b!2169216 m!2610101))

(declare-fun m!2610103 () Bool)

(assert (=> b!2169216 m!2610103))

(declare-fun m!2610105 () Bool)

(assert (=> b!2169216 m!2610105))

(declare-fun m!2610107 () Bool)

(assert (=> b!2169216 m!2610107))

(declare-fun m!2610109 () Bool)

(assert (=> b!2169216 m!2610109))

(declare-fun m!2610111 () Bool)

(assert (=> b!2169216 m!2610111))

(assert (=> b!2169216 m!2610101))

(declare-fun m!2610113 () Bool)

(assert (=> b!2169216 m!2610113))

(declare-fun m!2610115 () Bool)

(assert (=> b!2169216 m!2610115))

(declare-fun m!2610117 () Bool)

(assert (=> b!2169216 m!2610117))

(declare-fun m!2610119 () Bool)

(assert (=> b!2169230 m!2610119))

(declare-fun m!2610121 () Bool)

(assert (=> start!210366 m!2610121))

(declare-fun m!2610123 () Bool)

(assert (=> start!210366 m!2610123))

(declare-fun m!2610125 () Bool)

(assert (=> start!210366 m!2610125))

(declare-fun m!2610127 () Bool)

(assert (=> b!2169212 m!2610127))

(declare-fun m!2610129 () Bool)

(assert (=> b!2169212 m!2610129))

(declare-fun m!2610131 () Bool)

(assert (=> b!2169212 m!2610131))

(declare-fun m!2610133 () Bool)

(assert (=> b!2169212 m!2610133))

(declare-fun m!2610135 () Bool)

(assert (=> b!2169222 m!2610135))

(declare-fun m!2610137 () Bool)

(assert (=> b!2169226 m!2610137))

(declare-fun m!2610139 () Bool)

(assert (=> b!2169228 m!2610139))

(declare-fun m!2610141 () Bool)

(assert (=> b!2169228 m!2610141))

(declare-fun m!2610143 () Bool)

(assert (=> b!2169225 m!2610143))

(declare-fun m!2610145 () Bool)

(assert (=> b!2169225 m!2610145))

(declare-fun m!2610147 () Bool)

(assert (=> b!2169225 m!2610147))

(declare-fun m!2610149 () Bool)

(assert (=> b!2169225 m!2610149))

(declare-fun m!2610151 () Bool)

(assert (=> b!2169225 m!2610151))

(declare-fun m!2610153 () Bool)

(assert (=> b!2169225 m!2610153))

(declare-fun m!2610155 () Bool)

(assert (=> b!2169225 m!2610155))

(declare-fun m!2610157 () Bool)

(assert (=> b!2169232 m!2610157))

(declare-fun m!2610159 () Bool)

(assert (=> b!2169219 m!2610159))

(declare-fun m!2610161 () Bool)

(assert (=> b!2169219 m!2610161))

(declare-fun m!2610163 () Bool)

(assert (=> b!2169219 m!2610163))

(declare-fun m!2610165 () Bool)

(assert (=> b!2169219 m!2610165))

(declare-fun m!2610167 () Bool)

(assert (=> b!2169219 m!2610167))

(declare-fun m!2610169 () Bool)

(assert (=> b!2169219 m!2610169))

(declare-fun m!2610171 () Bool)

(assert (=> b!2169227 m!2610171))

(declare-fun m!2610173 () Bool)

(assert (=> b!2169223 m!2610173))

(declare-fun m!2610175 () Bool)

(assert (=> b!2169217 m!2610175))

(declare-fun m!2610177 () Bool)

(assert (=> b!2169217 m!2610177))

(declare-fun m!2610179 () Bool)

(assert (=> b!2169217 m!2610179))

(declare-fun m!2610181 () Bool)

(assert (=> b!2169220 m!2610181))

(assert (=> b!2169229 m!2610141))

(assert (=> b!2169229 m!2610141))

(declare-fun m!2610183 () Bool)

(assert (=> b!2169229 m!2610183))

(assert (=> b!2169229 m!2610183))

(declare-fun m!2610185 () Bool)

(assert (=> b!2169229 m!2610185))

(declare-fun m!2610187 () Bool)

(assert (=> b!2169233 m!2610187))

(declare-fun m!2610189 () Bool)

(assert (=> b!2169233 m!2610189))

(check-sat (not b!2169225) (not b!2169212) tp_is_empty!9613 (not setNonEmpty!18152) (not b!2169217) (not b!2169222) (not b!2169228) (not b!2169216) (not b!2169219) (not b!2169213) (not b!2169223) (not b!2169221) (not b!2169231) (not b!2169233) (not b!2169224) (not b!2169229) (not start!210366) (not b!2169227) (not b!2169226) (not b!2169220) (not b!2169232) (not b!2169230))
(check-sat)
