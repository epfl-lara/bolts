; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209646 () Bool)

(assert start!209646)

(declare-fun b!2161557 () Bool)

(declare-fun e!1383255 () Bool)

(declare-datatypes ((C!12128 0))(
  ( (C!12129 (val!7050 Int)) )
))
(declare-datatypes ((List!25186 0))(
  ( (Nil!25102) (Cons!25102 (h!30503 C!12128) (t!197734 List!25186)) )
))
(declare-datatypes ((IArray!16259 0))(
  ( (IArray!16260 (innerList!8187 List!25186)) )
))
(declare-datatypes ((Conc!8127 0))(
  ( (Node!8127 (left!19301 Conc!8127) (right!19631 Conc!8127) (csize!16484 Int) (cheight!8338 Int)) (Leaf!11890 (xs!11069 IArray!16259) (csize!16485 Int)) (Empty!8127) )
))
(declare-datatypes ((BalanceConc!16016 0))(
  ( (BalanceConc!16017 (c!341996 Conc!8127)) )
))
(declare-datatypes ((tuple2!24830 0))(
  ( (tuple2!24831 (_1!14785 BalanceConc!16016) (_2!14785 BalanceConc!16016)) )
))
(declare-fun lt!804812 () tuple2!24830)

(declare-fun isEmpty!14397 (BalanceConc!16016) Bool)

(assert (=> b!2161557 (= e!1383255 (not (isEmpty!14397 (_1!14785 lt!804812))))))

(declare-fun b!2161558 () Bool)

(declare-fun e!1383248 () Bool)

(declare-datatypes ((Regex!5991 0))(
  ( (ElementMatch!5991 (c!341997 C!12128)) (Concat!10293 (regOne!12494 Regex!5991) (regTwo!12494 Regex!5991)) (EmptyExpr!5991) (Star!5991 (reg!6320 Regex!5991)) (EmptyLang!5991) (Union!5991 (regOne!12495 Regex!5991) (regTwo!12495 Regex!5991)) )
))
(declare-fun r!12534 () Regex!5991)

(declare-datatypes ((tuple2!24832 0))(
  ( (tuple2!24833 (_1!14786 List!25186) (_2!14786 List!25186)) )
))
(declare-fun lt!804788 () tuple2!24832)

(declare-fun matchR!2752 (Regex!5991 List!25186) Bool)

(assert (=> b!2161558 (= e!1383248 (matchR!2752 r!12534 (_1!14786 lt!804788)))))

(declare-fun b!2161559 () Bool)

(declare-fun e!1383239 () Int)

(declare-fun lt!804801 () Int)

(assert (=> b!2161559 (= e!1383239 (- lt!804801 1))))

(declare-fun b!2161560 () Bool)

(declare-fun e!1383240 () Bool)

(declare-fun e!1383245 () Bool)

(assert (=> b!2161560 (= e!1383240 e!1383245)))

(declare-fun res!931577 () Bool)

(assert (=> b!2161560 (=> (not res!931577) (not e!1383245))))

(declare-fun lt!804807 () List!25186)

(declare-fun lt!804799 () List!25186)

(assert (=> b!2161560 (= res!931577 (= lt!804807 lt!804799))))

(declare-fun lt!804795 () tuple2!24832)

(declare-fun ++!6348 (List!25186 List!25186) List!25186)

(assert (=> b!2161560 (= lt!804807 (++!6348 (_1!14786 lt!804795) (_2!14786 lt!804795)))))

(declare-fun b!2161561 () Bool)

(declare-fun e!1383252 () Bool)

(declare-fun e!1383249 () Bool)

(assert (=> b!2161561 (= e!1383252 e!1383249)))

(declare-fun res!931579 () Bool)

(assert (=> b!2161561 (=> (not res!931579) (not e!1383249))))

(declare-fun lt!804792 () List!25186)

(declare-fun isSuffix!658 (List!25186 List!25186) Bool)

(assert (=> b!2161561 (= res!931579 (isSuffix!658 lt!804799 lt!804792))))

(declare-fun totalInput!977 () BalanceConc!16016)

(declare-fun list!9610 (BalanceConc!16016) List!25186)

(assert (=> b!2161561 (= lt!804792 (list!9610 totalInput!977))))

(declare-fun input!5540 () BalanceConc!16016)

(assert (=> b!2161561 (= lt!804799 (list!9610 input!5540))))

(declare-fun b!2161562 () Bool)

(declare-fun e!1383251 () Bool)

(assert (=> b!2161562 (= e!1383245 (not e!1383251))))

(declare-fun res!931581 () Bool)

(assert (=> b!2161562 (=> res!931581 e!1383251)))

(assert (=> b!2161562 (= res!931581 e!1383255)))

(declare-fun res!931580 () Bool)

(assert (=> b!2161562 (=> (not res!931580) (not e!1383255))))

(declare-fun lt!804804 () Bool)

(assert (=> b!2161562 (= res!931580 (not lt!804804))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!25187 0))(
  ( (Nil!25103) (Cons!25103 (h!30504 Regex!5991) (t!197735 List!25187)) )
))
(declare-datatypes ((Context!3122 0))(
  ( (Context!3123 (exprs!2061 List!25187)) )
))
(declare-fun z!4055 () (InoxSet Context!3122))

(declare-fun lt!804794 () List!25186)

(declare-fun matchZipper!119 ((InoxSet Context!3122) List!25186) Bool)

(assert (=> b!2161562 (= lt!804804 (matchZipper!119 z!4055 lt!804794))))

(assert (=> b!2161562 e!1383248))

(declare-fun res!931584 () Bool)

(assert (=> b!2161562 (=> res!931584 e!1383248)))

(declare-fun isEmpty!14398 (List!25186) Bool)

(assert (=> b!2161562 (= res!931584 (isEmpty!14398 (_1!14786 lt!804788)))))

(declare-fun findLongestMatchInner!620 (Regex!5991 List!25186 Int List!25186 List!25186 Int) tuple2!24832)

(declare-fun size!19609 (List!25186) Int)

(assert (=> b!2161562 (= lt!804788 (findLongestMatchInner!620 r!12534 Nil!25102 (size!19609 Nil!25102) lt!804799 lt!804799 (size!19609 lt!804799)))))

(declare-datatypes ((Unit!38133 0))(
  ( (Unit!38134) )
))
(declare-fun lt!804789 () Unit!38133)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!601 (Regex!5991 List!25186) Unit!38133)

(assert (=> b!2161562 (= lt!804789 (longestMatchIsAcceptedByMatchOrIsEmpty!601 r!12534 lt!804799))))

(declare-fun e!1383246 () Bool)

(assert (=> b!2161562 e!1383246))

(declare-fun res!931582 () Bool)

(assert (=> b!2161562 (=> res!931582 e!1383246)))

(declare-fun lt!804798 () Int)

(assert (=> b!2161562 (= res!931582 (<= lt!804798 0))))

(declare-fun lt!804791 () Int)

(declare-fun lt!804796 () Int)

(declare-fun furthestNullablePosition!178 ((InoxSet Context!3122) Int BalanceConc!16016 Int Int) Int)

(assert (=> b!2161562 (= lt!804798 (+ 1 (- (furthestNullablePosition!178 z!4055 lt!804801 totalInput!977 lt!804791 lt!804796) lt!804801)))))

(declare-fun lt!804802 () Unit!38133)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!26 ((InoxSet Context!3122) Int BalanceConc!16016 Int) Unit!38133)

(assert (=> b!2161562 (= lt!804802 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!26 z!4055 lt!804801 totalInput!977 lt!804796))))

(assert (=> b!2161562 (= lt!804796 e!1383239)))

(declare-fun c!341995 () Bool)

(declare-fun nullableZipper!272 ((InoxSet Context!3122)) Bool)

(assert (=> b!2161562 (= c!341995 (nullableZipper!272 z!4055))))

(declare-fun isPrefix!2111 (List!25186 List!25186) Bool)

(declare-fun take!205 (List!25186 Int) List!25186)

(assert (=> b!2161562 (isPrefix!2111 (take!205 lt!804792 lt!804801) lt!804792)))

(declare-fun lt!804793 () Unit!38133)

(declare-fun lemmaTakeIsPrefix!28 (List!25186 Int) Unit!38133)

(assert (=> b!2161562 (= lt!804793 (lemmaTakeIsPrefix!28 lt!804792 lt!804801))))

(assert (=> b!2161562 (isPrefix!2111 (_1!14786 lt!804795) lt!804807)))

(declare-fun lt!804800 () Unit!38133)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1394 (List!25186 List!25186) Unit!38133)

(assert (=> b!2161562 (= lt!804800 (lemmaConcatTwoListThenFirstIsPrefix!1394 (_1!14786 lt!804795) (_2!14786 lt!804795)))))

(declare-fun lt!804805 () List!25186)

(assert (=> b!2161562 (isPrefix!2111 lt!804794 lt!804805)))

(declare-fun lt!804786 () Unit!38133)

(declare-fun lt!804808 () List!25186)

(assert (=> b!2161562 (= lt!804786 (lemmaConcatTwoListThenFirstIsPrefix!1394 lt!804794 lt!804808))))

(declare-fun b!2161563 () Bool)

(assert (=> b!2161563 (= e!1383239 (- 1))))

(declare-fun b!2161564 () Bool)

(declare-fun e!1383254 () Bool)

(declare-fun tp!674378 () Bool)

(declare-fun tp!674374 () Bool)

(assert (=> b!2161564 (= e!1383254 (and tp!674378 tp!674374))))

(declare-fun res!931574 () Bool)

(declare-fun e!1383242 () Bool)

(assert (=> start!209646 (=> (not res!931574) (not e!1383242))))

(declare-fun validRegex!2267 (Regex!5991) Bool)

(assert (=> start!209646 (= res!931574 (validRegex!2267 r!12534))))

(assert (=> start!209646 e!1383242))

(assert (=> start!209646 e!1383254))

(declare-fun e!1383247 () Bool)

(declare-fun inv!33262 (BalanceConc!16016) Bool)

(assert (=> start!209646 (and (inv!33262 totalInput!977) e!1383247)))

(declare-fun e!1383244 () Bool)

(assert (=> start!209646 (and (inv!33262 input!5540) e!1383244)))

(declare-fun condSetEmpty!18082 () Bool)

(assert (=> start!209646 (= condSetEmpty!18082 (= z!4055 ((as const (Array Context!3122 Bool)) false)))))

(declare-fun setRes!18082 () Bool)

(assert (=> start!209646 setRes!18082))

(declare-fun b!2161565 () Bool)

(declare-fun e!1383241 () Bool)

(declare-fun e!1383253 () Bool)

(assert (=> b!2161565 (= e!1383241 e!1383253)))

(declare-fun res!931576 () Bool)

(assert (=> b!2161565 (=> res!931576 e!1383253)))

(declare-fun lt!804803 () Int)

(declare-fun lt!804806 () Int)

(assert (=> b!2161565 (= res!931576 (or (> lt!804803 lt!804806) (> lt!804806 lt!804803)))))

(declare-fun size!19610 (BalanceConc!16016) Int)

(assert (=> b!2161565 (= lt!804806 (size!19610 (_1!14785 lt!804812)))))

(assert (=> b!2161565 (= lt!804803 (size!19609 (_1!14786 lt!804795)))))

(assert (=> b!2161565 (= (matchR!2752 r!12534 lt!804794) lt!804804)))

(declare-fun lt!804809 () Unit!38133)

(declare-datatypes ((List!25188 0))(
  ( (Nil!25104) (Cons!25104 (h!30505 Context!3122) (t!197736 List!25188)) )
))
(declare-fun lt!804790 () List!25188)

(declare-fun theoremZipperRegexEquiv!35 ((InoxSet Context!3122) List!25188 Regex!5991 List!25186) Unit!38133)

(assert (=> b!2161565 (= lt!804809 (theoremZipperRegexEquiv!35 z!4055 lt!804790 r!12534 lt!804794))))

(declare-fun lt!804797 () Bool)

(assert (=> b!2161565 (= lt!804797 (matchZipper!119 z!4055 (_1!14786 lt!804795)))))

(declare-fun lt!804811 () Unit!38133)

(assert (=> b!2161565 (= lt!804811 (theoremZipperRegexEquiv!35 z!4055 lt!804790 r!12534 (_1!14786 lt!804795)))))

(declare-fun b!2161566 () Bool)

(assert (=> b!2161566 (= e!1383249 e!1383240)))

(declare-fun res!931585 () Bool)

(assert (=> b!2161566 (=> (not res!931585) (not e!1383240))))

(assert (=> b!2161566 (= res!931585 (= lt!804805 lt!804799))))

(assert (=> b!2161566 (= lt!804805 (++!6348 lt!804794 lt!804808))))

(assert (=> b!2161566 (= lt!804808 (list!9610 (_2!14785 lt!804812)))))

(assert (=> b!2161566 (= lt!804794 (list!9610 (_1!14785 lt!804812)))))

(declare-fun findLongestMatch!545 (Regex!5991 List!25186) tuple2!24832)

(assert (=> b!2161566 (= lt!804795 (findLongestMatch!545 r!12534 lt!804799))))

(assert (=> b!2161566 (= lt!804801 (- lt!804791 (size!19610 input!5540)))))

(assert (=> b!2161566 (= lt!804791 (size!19610 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!40 ((InoxSet Context!3122) BalanceConc!16016 BalanceConc!16016) tuple2!24830)

(assert (=> b!2161566 (= lt!804812 (findLongestMatchZipperSequenceV3!40 z!4055 input!5540 totalInput!977))))

(declare-fun setIsEmpty!18082 () Bool)

(assert (=> setIsEmpty!18082 setRes!18082))

(declare-fun b!2161567 () Bool)

(declare-fun drop!1214 (List!25186 Int) List!25186)

(assert (=> b!2161567 (= e!1383246 (matchZipper!119 z!4055 (take!205 (drop!1214 lt!804792 lt!804801) lt!804798)))))

(declare-fun b!2161568 () Bool)

(declare-fun tp!674375 () Bool)

(declare-fun inv!33263 (Conc!8127) Bool)

(assert (=> b!2161568 (= e!1383247 (and (inv!33263 (c!341996 totalInput!977)) tp!674375))))

(declare-fun b!2161569 () Bool)

(declare-fun tp!674373 () Bool)

(assert (=> b!2161569 (= e!1383254 tp!674373)))

(declare-fun b!2161570 () Bool)

(declare-fun tp_is_empty!9589 () Bool)

(assert (=> b!2161570 (= e!1383254 tp_is_empty!9589)))

(declare-fun setNonEmpty!18082 () Bool)

(declare-fun setElem!18082 () Context!3122)

(declare-fun e!1383250 () Bool)

(declare-fun tp!674377 () Bool)

(declare-fun inv!33264 (Context!3122) Bool)

(assert (=> setNonEmpty!18082 (= setRes!18082 (and tp!674377 (inv!33264 setElem!18082) e!1383250))))

(declare-fun setRest!18082 () (InoxSet Context!3122))

(assert (=> setNonEmpty!18082 (= z!4055 ((_ map or) (store ((as const (Array Context!3122 Bool)) false) setElem!18082 true) setRest!18082))))

(declare-fun b!2161571 () Bool)

(declare-fun tp!674370 () Bool)

(assert (=> b!2161571 (= e!1383244 (and (inv!33263 (c!341996 input!5540)) tp!674370))))

(declare-fun b!2161572 () Bool)

(declare-fun tp!674371 () Bool)

(assert (=> b!2161572 (= e!1383250 tp!674371)))

(declare-fun b!2161573 () Bool)

(assert (=> b!2161573 (= e!1383253 true)))

(assert (=> b!2161573 (= lt!804808 (_2!14786 lt!804795))))

(declare-fun lt!804787 () Unit!38133)

(declare-fun lemmaSamePrefixThenSameSuffix!946 (List!25186 List!25186 List!25186 List!25186 List!25186) Unit!38133)

(assert (=> b!2161573 (= lt!804787 (lemmaSamePrefixThenSameSuffix!946 lt!804794 lt!804808 (_1!14786 lt!804795) (_2!14786 lt!804795) lt!804799))))

(assert (=> b!2161573 (= lt!804794 (_1!14786 lt!804795))))

(declare-fun lt!804810 () Unit!38133)

(declare-fun lemmaIsPrefixSameLengthThenSameList!337 (List!25186 List!25186 List!25186) Unit!38133)

(assert (=> b!2161573 (= lt!804810 (lemmaIsPrefixSameLengthThenSameList!337 lt!804794 (_1!14786 lt!804795) lt!804799))))

(declare-fun b!2161574 () Bool)

(declare-fun e!1383243 () Bool)

(assert (=> b!2161574 (= e!1383243 (not (isEmpty!14398 (_1!14786 lt!804795))))))

(declare-fun b!2161575 () Bool)

(assert (=> b!2161575 (= e!1383242 e!1383252)))

(declare-fun res!931575 () Bool)

(assert (=> b!2161575 (=> (not res!931575) (not e!1383252))))

(declare-fun unfocusZipper!98 (List!25188) Regex!5991)

(assert (=> b!2161575 (= res!931575 (= (unfocusZipper!98 lt!804790) r!12534))))

(declare-fun toList!1174 ((InoxSet Context!3122)) List!25188)

(assert (=> b!2161575 (= lt!804790 (toList!1174 z!4055))))

(declare-fun b!2161576 () Bool)

(assert (=> b!2161576 (= e!1383251 e!1383241)))

(declare-fun res!931583 () Bool)

(assert (=> b!2161576 (=> res!931583 e!1383241)))

(assert (=> b!2161576 (= res!931583 e!1383243)))

(declare-fun res!931578 () Bool)

(assert (=> b!2161576 (=> (not res!931578) (not e!1383243))))

(assert (=> b!2161576 (= res!931578 (not lt!804797))))

(assert (=> b!2161576 (= lt!804797 (matchR!2752 r!12534 (_1!14786 lt!804795)))))

(declare-fun b!2161577 () Bool)

(declare-fun tp!674372 () Bool)

(declare-fun tp!674376 () Bool)

(assert (=> b!2161577 (= e!1383254 (and tp!674372 tp!674376))))

(assert (= (and start!209646 res!931574) b!2161575))

(assert (= (and b!2161575 res!931575) b!2161561))

(assert (= (and b!2161561 res!931579) b!2161566))

(assert (= (and b!2161566 res!931585) b!2161560))

(assert (= (and b!2161560 res!931577) b!2161562))

(assert (= (and b!2161562 c!341995) b!2161559))

(assert (= (and b!2161562 (not c!341995)) b!2161563))

(assert (= (and b!2161562 (not res!931582)) b!2161567))

(assert (= (and b!2161562 (not res!931584)) b!2161558))

(assert (= (and b!2161562 res!931580) b!2161557))

(assert (= (and b!2161562 (not res!931581)) b!2161576))

(assert (= (and b!2161576 res!931578) b!2161574))

(assert (= (and b!2161576 (not res!931583)) b!2161565))

(assert (= (and b!2161565 (not res!931576)) b!2161573))

(get-info :version)

(assert (= (and start!209646 ((_ is ElementMatch!5991) r!12534)) b!2161570))

(assert (= (and start!209646 ((_ is Concat!10293) r!12534)) b!2161564))

(assert (= (and start!209646 ((_ is Star!5991) r!12534)) b!2161569))

(assert (= (and start!209646 ((_ is Union!5991) r!12534)) b!2161577))

(assert (= start!209646 b!2161568))

(assert (= start!209646 b!2161571))

(assert (= (and start!209646 condSetEmpty!18082) setIsEmpty!18082))

(assert (= (and start!209646 (not condSetEmpty!18082)) setNonEmpty!18082))

(assert (= setNonEmpty!18082 b!2161572))

(declare-fun m!2602135 () Bool)

(assert (=> b!2161562 m!2602135))

(declare-fun m!2602137 () Bool)

(assert (=> b!2161562 m!2602137))

(declare-fun m!2602139 () Bool)

(assert (=> b!2161562 m!2602139))

(declare-fun m!2602141 () Bool)

(assert (=> b!2161562 m!2602141))

(declare-fun m!2602143 () Bool)

(assert (=> b!2161562 m!2602143))

(declare-fun m!2602145 () Bool)

(assert (=> b!2161562 m!2602145))

(declare-fun m!2602147 () Bool)

(assert (=> b!2161562 m!2602147))

(declare-fun m!2602149 () Bool)

(assert (=> b!2161562 m!2602149))

(declare-fun m!2602151 () Bool)

(assert (=> b!2161562 m!2602151))

(assert (=> b!2161562 m!2602141))

(declare-fun m!2602153 () Bool)

(assert (=> b!2161562 m!2602153))

(declare-fun m!2602155 () Bool)

(assert (=> b!2161562 m!2602155))

(declare-fun m!2602157 () Bool)

(assert (=> b!2161562 m!2602157))

(assert (=> b!2161562 m!2602153))

(declare-fun m!2602159 () Bool)

(assert (=> b!2161562 m!2602159))

(declare-fun m!2602161 () Bool)

(assert (=> b!2161562 m!2602161))

(declare-fun m!2602163 () Bool)

(assert (=> b!2161562 m!2602163))

(declare-fun m!2602165 () Bool)

(assert (=> b!2161562 m!2602165))

(assert (=> b!2161562 m!2602139))

(declare-fun m!2602167 () Bool)

(assert (=> b!2161566 m!2602167))

(declare-fun m!2602169 () Bool)

(assert (=> b!2161566 m!2602169))

(declare-fun m!2602171 () Bool)

(assert (=> b!2161566 m!2602171))

(declare-fun m!2602173 () Bool)

(assert (=> b!2161566 m!2602173))

(declare-fun m!2602175 () Bool)

(assert (=> b!2161566 m!2602175))

(declare-fun m!2602177 () Bool)

(assert (=> b!2161566 m!2602177))

(declare-fun m!2602179 () Bool)

(assert (=> b!2161566 m!2602179))

(declare-fun m!2602181 () Bool)

(assert (=> b!2161575 m!2602181))

(declare-fun m!2602183 () Bool)

(assert (=> b!2161575 m!2602183))

(declare-fun m!2602185 () Bool)

(assert (=> b!2161557 m!2602185))

(declare-fun m!2602187 () Bool)

(assert (=> b!2161561 m!2602187))

(declare-fun m!2602189 () Bool)

(assert (=> b!2161561 m!2602189))

(declare-fun m!2602191 () Bool)

(assert (=> b!2161561 m!2602191))

(declare-fun m!2602193 () Bool)

(assert (=> b!2161558 m!2602193))

(declare-fun m!2602195 () Bool)

(assert (=> b!2161560 m!2602195))

(declare-fun m!2602197 () Bool)

(assert (=> b!2161567 m!2602197))

(assert (=> b!2161567 m!2602197))

(declare-fun m!2602199 () Bool)

(assert (=> b!2161567 m!2602199))

(assert (=> b!2161567 m!2602199))

(declare-fun m!2602201 () Bool)

(assert (=> b!2161567 m!2602201))

(declare-fun m!2602203 () Bool)

(assert (=> setNonEmpty!18082 m!2602203))

(declare-fun m!2602205 () Bool)

(assert (=> b!2161565 m!2602205))

(declare-fun m!2602207 () Bool)

(assert (=> b!2161565 m!2602207))

(declare-fun m!2602209 () Bool)

(assert (=> b!2161565 m!2602209))

(declare-fun m!2602211 () Bool)

(assert (=> b!2161565 m!2602211))

(declare-fun m!2602213 () Bool)

(assert (=> b!2161565 m!2602213))

(declare-fun m!2602215 () Bool)

(assert (=> b!2161565 m!2602215))

(declare-fun m!2602217 () Bool)

(assert (=> start!209646 m!2602217))

(declare-fun m!2602219 () Bool)

(assert (=> start!209646 m!2602219))

(declare-fun m!2602221 () Bool)

(assert (=> start!209646 m!2602221))

(declare-fun m!2602223 () Bool)

(assert (=> b!2161573 m!2602223))

(declare-fun m!2602225 () Bool)

(assert (=> b!2161573 m!2602225))

(declare-fun m!2602227 () Bool)

(assert (=> b!2161571 m!2602227))

(declare-fun m!2602229 () Bool)

(assert (=> b!2161568 m!2602229))

(declare-fun m!2602231 () Bool)

(assert (=> b!2161574 m!2602231))

(declare-fun m!2602233 () Bool)

(assert (=> b!2161576 m!2602233))

(check-sat (not b!2161573) (not b!2161562) (not start!209646) (not b!2161569) (not b!2161557) tp_is_empty!9589 (not b!2161564) (not b!2161566) (not b!2161572) (not b!2161565) (not b!2161558) (not b!2161575) (not b!2161577) (not b!2161560) (not b!2161574) (not setNonEmpty!18082) (not b!2161561) (not b!2161571) (not b!2161568) (not b!2161567) (not b!2161576))
(check-sat)
