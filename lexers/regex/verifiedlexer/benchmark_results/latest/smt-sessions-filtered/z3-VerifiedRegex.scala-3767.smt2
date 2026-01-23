; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!210250 () Bool)

(assert start!210250)

(declare-fun b!2168351 () Bool)

(declare-fun e!1386819 () Bool)

(declare-datatypes ((C!12148 0))(
  ( (C!12149 (val!7060 Int)) )
))
(declare-datatypes ((List!25216 0))(
  ( (Nil!25132) (Cons!25132 (h!30533 C!12148) (t!197778 List!25216)) )
))
(declare-fun lt!807123 () List!25216)

(declare-fun lt!807101 () List!25216)

(assert (=> b!2168351 (= e!1386819 (= lt!807123 lt!807101))))

(declare-fun lt!807100 () List!25216)

(declare-fun lt!807121 () Int)

(declare-fun take!211 (List!25216 Int) List!25216)

(assert (=> b!2168351 (= lt!807100 (take!211 lt!807123 lt!807121))))

(declare-fun lt!807114 () List!25216)

(declare-fun lt!807115 () Int)

(declare-fun drop!1224 (List!25216 Int) List!25216)

(assert (=> b!2168351 (= lt!807123 (drop!1224 lt!807114 lt!807115))))

(declare-fun b!2168352 () Bool)

(declare-fun e!1386811 () Bool)

(declare-fun tp_is_empty!9609 () Bool)

(assert (=> b!2168352 (= e!1386811 tp_is_empty!9609)))

(declare-fun b!2168353 () Bool)

(declare-fun e!1386824 () Bool)

(declare-fun tp!676841 () Bool)

(assert (=> b!2168353 (= e!1386824 tp!676841)))

(declare-datatypes ((Regex!6001 0))(
  ( (ElementMatch!6001 (c!343540 C!12148)) (Concat!10303 (regOne!12514 Regex!6001) (regTwo!12514 Regex!6001)) (EmptyExpr!6001) (Star!6001 (reg!6330 Regex!6001)) (EmptyLang!6001) (Union!6001 (regOne!12515 Regex!6001) (regTwo!12515 Regex!6001)) )
))
(declare-datatypes ((List!25217 0))(
  ( (Nil!25133) (Cons!25133 (h!30534 Regex!6001) (t!197779 List!25217)) )
))
(declare-datatypes ((Context!3142 0))(
  ( (Context!3143 (exprs!2071 List!25217)) )
))
(declare-fun setElem!18140 () Context!3142)

(declare-fun setRes!18140 () Bool)

(declare-fun setNonEmpty!18140 () Bool)

(declare-fun tp!676843 () Bool)

(declare-fun inv!33330 (Context!3142) Bool)

(assert (=> setNonEmpty!18140 (= setRes!18140 (and tp!676843 (inv!33330 setElem!18140) e!1386824))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4055 () (InoxSet Context!3142))

(declare-fun setRest!18140 () (InoxSet Context!3142))

(assert (=> setNonEmpty!18140 (= z!4055 ((_ map or) (store ((as const (Array Context!3142 Bool)) false) setElem!18140 true) setRest!18140))))

(declare-fun b!2168354 () Bool)

(declare-fun e!1386812 () Bool)

(declare-datatypes ((tuple2!24874 0))(
  ( (tuple2!24875 (_1!14807 List!25216) (_2!14807 List!25216)) )
))
(declare-fun lt!807106 () tuple2!24874)

(declare-fun isEmpty!14417 (List!25216) Bool)

(assert (=> b!2168354 (= e!1386812 (not (isEmpty!14417 (_1!14807 lt!807106))))))

(declare-fun b!2168355 () Bool)

(declare-fun e!1386813 () Bool)

(declare-datatypes ((IArray!16279 0))(
  ( (IArray!16280 (innerList!8197 List!25216)) )
))
(declare-datatypes ((Conc!8137 0))(
  ( (Node!8137 (left!19320 Conc!8137) (right!19650 Conc!8137) (csize!16504 Int) (cheight!8348 Int)) (Leaf!11905 (xs!11079 IArray!16279) (csize!16505 Int)) (Empty!8137) )
))
(declare-datatypes ((BalanceConc!16036 0))(
  ( (BalanceConc!16037 (c!343541 Conc!8137)) )
))
(declare-fun input!5540 () BalanceConc!16036)

(declare-fun tp!676840 () Bool)

(declare-fun inv!33331 (Conc!8137) Bool)

(assert (=> b!2168355 (= e!1386813 (and (inv!33331 (c!343541 input!5540)) tp!676840))))

(declare-fun b!2168356 () Bool)

(declare-fun e!1386823 () Bool)

(declare-fun e!1386818 () Bool)

(assert (=> b!2168356 (= e!1386823 e!1386818)))

(declare-fun res!933364 () Bool)

(assert (=> b!2168356 (=> (not res!933364) (not e!1386818))))

(declare-fun lt!807104 () List!25216)

(assert (=> b!2168356 (= res!933364 (= lt!807104 lt!807101))))

(declare-fun lt!807122 () List!25216)

(declare-fun lt!807118 () List!25216)

(declare-fun ++!6360 (List!25216 List!25216) List!25216)

(assert (=> b!2168356 (= lt!807104 (++!6360 lt!807122 lt!807118))))

(declare-datatypes ((tuple2!24876 0))(
  ( (tuple2!24877 (_1!14808 BalanceConc!16036) (_2!14808 BalanceConc!16036)) )
))
(declare-fun lt!807105 () tuple2!24876)

(declare-fun list!9630 (BalanceConc!16036) List!25216)

(assert (=> b!2168356 (= lt!807118 (list!9630 (_2!14808 lt!807105)))))

(assert (=> b!2168356 (= lt!807122 (list!9630 (_1!14808 lt!807105)))))

(declare-fun r!12534 () Regex!6001)

(declare-fun findLongestMatch!555 (Regex!6001 List!25216) tuple2!24874)

(assert (=> b!2168356 (= lt!807106 (findLongestMatch!555 r!12534 lt!807101))))

(declare-fun lt!807099 () Int)

(declare-fun size!19637 (BalanceConc!16036) Int)

(assert (=> b!2168356 (= lt!807115 (- lt!807099 (size!19637 input!5540)))))

(declare-fun totalInput!977 () BalanceConc!16036)

(assert (=> b!2168356 (= lt!807099 (size!19637 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!50 ((InoxSet Context!3142) BalanceConc!16036 BalanceConc!16036) tuple2!24876)

(assert (=> b!2168356 (= lt!807105 (findLongestMatchZipperSequenceV3!50 z!4055 input!5540 totalInput!977))))

(declare-fun b!2168357 () Bool)

(declare-fun tp!676845 () Bool)

(declare-fun tp!676847 () Bool)

(assert (=> b!2168357 (= e!1386811 (and tp!676845 tp!676847))))

(declare-fun b!2168358 () Bool)

(declare-fun e!1386821 () Bool)

(declare-fun isEmpty!14418 (BalanceConc!16036) Bool)

(assert (=> b!2168358 (= e!1386821 (not (isEmpty!14418 (_1!14808 lt!807105))))))

(declare-fun setIsEmpty!18140 () Bool)

(assert (=> setIsEmpty!18140 setRes!18140))

(declare-fun b!2168359 () Bool)

(declare-fun e!1386822 () Int)

(assert (=> b!2168359 (= e!1386822 (- 1))))

(declare-fun b!2168360 () Bool)

(declare-fun e!1386815 () Bool)

(declare-fun e!1386825 () Bool)

(assert (=> b!2168360 (= e!1386815 e!1386825)))

(declare-fun res!933367 () Bool)

(assert (=> b!2168360 (=> (not res!933367) (not e!1386825))))

(declare-datatypes ((List!25218 0))(
  ( (Nil!25134) (Cons!25134 (h!30535 Context!3142) (t!197780 List!25218)) )
))
(declare-fun lt!807124 () List!25218)

(declare-fun unfocusZipper!108 (List!25218) Regex!6001)

(assert (=> b!2168360 (= res!933367 (= (unfocusZipper!108 lt!807124) r!12534))))

(declare-fun toList!1184 ((InoxSet Context!3142)) List!25218)

(assert (=> b!2168360 (= lt!807124 (toList!1184 z!4055))))

(declare-fun b!2168361 () Bool)

(assert (=> b!2168361 (= e!1386822 (- lt!807115 1))))

(declare-fun b!2168362 () Bool)

(declare-fun tp!676848 () Bool)

(declare-fun tp!676844 () Bool)

(assert (=> b!2168362 (= e!1386811 (and tp!676848 tp!676844))))

(declare-fun b!2168363 () Bool)

(declare-fun e!1386826 () Bool)

(assert (=> b!2168363 (= e!1386826 e!1386819)))

(declare-fun res!933362 () Bool)

(assert (=> b!2168363 (=> res!933362 e!1386819)))

(assert (=> b!2168363 (= res!933362 (<= lt!807121 (size!19637 (_1!14808 lt!807105))))))

(declare-fun size!19638 (List!25216) Int)

(assert (=> b!2168363 (= lt!807121 (size!19638 (_1!14807 lt!807106)))))

(declare-fun lt!807116 () Bool)

(declare-fun matchR!2758 (Regex!6001 List!25216) Bool)

(assert (=> b!2168363 (= (matchR!2758 r!12534 lt!807122) lt!807116)))

(declare-datatypes ((Unit!38197 0))(
  ( (Unit!38198) )
))
(declare-fun lt!807107 () Unit!38197)

(declare-fun theoremZipperRegexEquiv!37 ((InoxSet Context!3142) List!25218 Regex!6001 List!25216) Unit!38197)

(assert (=> b!2168363 (= lt!807107 (theoremZipperRegexEquiv!37 z!4055 lt!807124 r!12534 lt!807122))))

(declare-fun lt!807111 () Bool)

(declare-fun matchZipper!125 ((InoxSet Context!3142) List!25216) Bool)

(assert (=> b!2168363 (= lt!807111 (matchZipper!125 z!4055 (_1!14807 lt!807106)))))

(declare-fun lt!807112 () Unit!38197)

(assert (=> b!2168363 (= lt!807112 (theoremZipperRegexEquiv!37 z!4055 lt!807124 r!12534 (_1!14807 lt!807106)))))

(declare-fun b!2168364 () Bool)

(declare-fun e!1386827 () Bool)

(assert (=> b!2168364 (= e!1386827 e!1386826)))

(declare-fun res!933365 () Bool)

(assert (=> b!2168364 (=> res!933365 e!1386826)))

(assert (=> b!2168364 (= res!933365 e!1386812)))

(declare-fun res!933368 () Bool)

(assert (=> b!2168364 (=> (not res!933368) (not e!1386812))))

(assert (=> b!2168364 (= res!933368 (not lt!807111))))

(assert (=> b!2168364 (= lt!807111 (matchR!2758 r!12534 (_1!14807 lt!807106)))))

(declare-fun b!2168365 () Bool)

(declare-fun e!1386814 () Bool)

(declare-fun tp!676842 () Bool)

(assert (=> b!2168365 (= e!1386814 (and (inv!33331 (c!343541 totalInput!977)) tp!676842))))

(declare-fun res!933369 () Bool)

(assert (=> start!210250 (=> (not res!933369) (not e!1386815))))

(declare-fun validRegex!2277 (Regex!6001) Bool)

(assert (=> start!210250 (= res!933369 (validRegex!2277 r!12534))))

(assert (=> start!210250 e!1386815))

(assert (=> start!210250 e!1386811))

(declare-fun inv!33332 (BalanceConc!16036) Bool)

(assert (=> start!210250 (and (inv!33332 totalInput!977) e!1386814)))

(assert (=> start!210250 (and (inv!33332 input!5540) e!1386813)))

(declare-fun condSetEmpty!18140 () Bool)

(assert (=> start!210250 (= condSetEmpty!18140 (= z!4055 ((as const (Array Context!3142 Bool)) false)))))

(assert (=> start!210250 setRes!18140))

(declare-fun lt!807120 () Int)

(declare-fun e!1386816 () Bool)

(declare-fun b!2168366 () Bool)

(assert (=> b!2168366 (= e!1386816 (matchZipper!125 z!4055 (take!211 (drop!1224 lt!807114 lt!807115) lt!807120)))))

(declare-fun b!2168367 () Bool)

(declare-fun e!1386817 () Bool)

(assert (=> b!2168367 (= e!1386818 e!1386817)))

(declare-fun res!933363 () Bool)

(assert (=> b!2168367 (=> (not res!933363) (not e!1386817))))

(declare-fun lt!807108 () List!25216)

(assert (=> b!2168367 (= res!933363 (= lt!807108 lt!807101))))

(assert (=> b!2168367 (= lt!807108 (++!6360 (_1!14807 lt!807106) (_2!14807 lt!807106)))))

(declare-fun b!2168368 () Bool)

(declare-fun e!1386820 () Bool)

(declare-fun lt!807117 () tuple2!24874)

(assert (=> b!2168368 (= e!1386820 (matchR!2758 r!12534 (_1!14807 lt!807117)))))

(declare-fun b!2168369 () Bool)

(declare-fun tp!676846 () Bool)

(assert (=> b!2168369 (= e!1386811 tp!676846)))

(declare-fun b!2168370 () Bool)

(assert (=> b!2168370 (= e!1386817 (not e!1386827))))

(declare-fun res!933361 () Bool)

(assert (=> b!2168370 (=> res!933361 e!1386827)))

(assert (=> b!2168370 (= res!933361 e!1386821)))

(declare-fun res!933366 () Bool)

(assert (=> b!2168370 (=> (not res!933366) (not e!1386821))))

(assert (=> b!2168370 (= res!933366 (not lt!807116))))

(assert (=> b!2168370 (= lt!807116 (matchZipper!125 z!4055 lt!807122))))

(assert (=> b!2168370 e!1386820))

(declare-fun res!933359 () Bool)

(assert (=> b!2168370 (=> res!933359 e!1386820)))

(assert (=> b!2168370 (= res!933359 (isEmpty!14417 (_1!14807 lt!807117)))))

(declare-fun findLongestMatchInner!630 (Regex!6001 List!25216 Int List!25216 List!25216 Int) tuple2!24874)

(assert (=> b!2168370 (= lt!807117 (findLongestMatchInner!630 r!12534 Nil!25132 (size!19638 Nil!25132) lt!807101 lt!807101 (size!19638 lt!807101)))))

(declare-fun lt!807102 () Unit!38197)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!607 (Regex!6001 List!25216) Unit!38197)

(assert (=> b!2168370 (= lt!807102 (longestMatchIsAcceptedByMatchOrIsEmpty!607 r!12534 lt!807101))))

(assert (=> b!2168370 e!1386816))

(declare-fun res!933358 () Bool)

(assert (=> b!2168370 (=> res!933358 e!1386816)))

(assert (=> b!2168370 (= res!933358 (<= lt!807120 0))))

(declare-fun lt!807119 () Int)

(declare-fun furthestNullablePosition!188 ((InoxSet Context!3142) Int BalanceConc!16036 Int Int) Int)

(assert (=> b!2168370 (= lt!807120 (+ 1 (- (furthestNullablePosition!188 z!4055 lt!807115 totalInput!977 lt!807099 lt!807119) lt!807115)))))

(declare-fun lt!807110 () Unit!38197)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!32 ((InoxSet Context!3142) Int BalanceConc!16036 Int) Unit!38197)

(assert (=> b!2168370 (= lt!807110 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!32 z!4055 lt!807115 totalInput!977 lt!807119))))

(assert (=> b!2168370 (= lt!807119 e!1386822)))

(declare-fun c!343539 () Bool)

(declare-fun nullableZipper!282 ((InoxSet Context!3142)) Bool)

(assert (=> b!2168370 (= c!343539 (nullableZipper!282 z!4055))))

(declare-fun isPrefix!2117 (List!25216 List!25216) Bool)

(assert (=> b!2168370 (isPrefix!2117 (take!211 lt!807114 lt!807115) lt!807114)))

(declare-fun lt!807109 () Unit!38197)

(declare-fun lemmaTakeIsPrefix!34 (List!25216 Int) Unit!38197)

(assert (=> b!2168370 (= lt!807109 (lemmaTakeIsPrefix!34 lt!807114 lt!807115))))

(assert (=> b!2168370 (isPrefix!2117 (_1!14807 lt!807106) lt!807108)))

(declare-fun lt!807103 () Unit!38197)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1400 (List!25216 List!25216) Unit!38197)

(assert (=> b!2168370 (= lt!807103 (lemmaConcatTwoListThenFirstIsPrefix!1400 (_1!14807 lt!807106) (_2!14807 lt!807106)))))

(assert (=> b!2168370 (isPrefix!2117 lt!807122 lt!807104)))

(declare-fun lt!807113 () Unit!38197)

(assert (=> b!2168370 (= lt!807113 (lemmaConcatTwoListThenFirstIsPrefix!1400 lt!807122 lt!807118))))

(declare-fun b!2168371 () Bool)

(assert (=> b!2168371 (= e!1386825 e!1386823)))

(declare-fun res!933360 () Bool)

(assert (=> b!2168371 (=> (not res!933360) (not e!1386823))))

(declare-fun isSuffix!668 (List!25216 List!25216) Bool)

(assert (=> b!2168371 (= res!933360 (isSuffix!668 lt!807101 lt!807114))))

(assert (=> b!2168371 (= lt!807114 (list!9630 totalInput!977))))

(assert (=> b!2168371 (= lt!807101 (list!9630 input!5540))))

(assert (= (and start!210250 res!933369) b!2168360))

(assert (= (and b!2168360 res!933367) b!2168371))

(assert (= (and b!2168371 res!933360) b!2168356))

(assert (= (and b!2168356 res!933364) b!2168367))

(assert (= (and b!2168367 res!933363) b!2168370))

(assert (= (and b!2168370 c!343539) b!2168361))

(assert (= (and b!2168370 (not c!343539)) b!2168359))

(assert (= (and b!2168370 (not res!933358)) b!2168366))

(assert (= (and b!2168370 (not res!933359)) b!2168368))

(assert (= (and b!2168370 res!933366) b!2168358))

(assert (= (and b!2168370 (not res!933361)) b!2168364))

(assert (= (and b!2168364 res!933368) b!2168354))

(assert (= (and b!2168364 (not res!933365)) b!2168363))

(assert (= (and b!2168363 (not res!933362)) b!2168351))

(get-info :version)

(assert (= (and start!210250 ((_ is ElementMatch!6001) r!12534)) b!2168352))

(assert (= (and start!210250 ((_ is Concat!10303) r!12534)) b!2168357))

(assert (= (and start!210250 ((_ is Star!6001) r!12534)) b!2168369))

(assert (= (and start!210250 ((_ is Union!6001) r!12534)) b!2168362))

(assert (= start!210250 b!2168365))

(assert (= start!210250 b!2168355))

(assert (= (and start!210250 condSetEmpty!18140) setIsEmpty!18140))

(assert (= (and start!210250 (not condSetEmpty!18140)) setNonEmpty!18140))

(assert (= setNonEmpty!18140 b!2168353))

(declare-fun m!2609197 () Bool)

(assert (=> b!2168363 m!2609197))

(declare-fun m!2609199 () Bool)

(assert (=> b!2168363 m!2609199))

(declare-fun m!2609201 () Bool)

(assert (=> b!2168363 m!2609201))

(declare-fun m!2609203 () Bool)

(assert (=> b!2168363 m!2609203))

(declare-fun m!2609205 () Bool)

(assert (=> b!2168363 m!2609205))

(declare-fun m!2609207 () Bool)

(assert (=> b!2168363 m!2609207))

(declare-fun m!2609209 () Bool)

(assert (=> b!2168370 m!2609209))

(declare-fun m!2609211 () Bool)

(assert (=> b!2168370 m!2609211))

(declare-fun m!2609213 () Bool)

(assert (=> b!2168370 m!2609213))

(declare-fun m!2609215 () Bool)

(assert (=> b!2168370 m!2609215))

(declare-fun m!2609217 () Bool)

(assert (=> b!2168370 m!2609217))

(declare-fun m!2609219 () Bool)

(assert (=> b!2168370 m!2609219))

(declare-fun m!2609221 () Bool)

(assert (=> b!2168370 m!2609221))

(declare-fun m!2609223 () Bool)

(assert (=> b!2168370 m!2609223))

(declare-fun m!2609225 () Bool)

(assert (=> b!2168370 m!2609225))

(declare-fun m!2609227 () Bool)

(assert (=> b!2168370 m!2609227))

(assert (=> b!2168370 m!2609215))

(declare-fun m!2609229 () Bool)

(assert (=> b!2168370 m!2609229))

(declare-fun m!2609231 () Bool)

(assert (=> b!2168370 m!2609231))

(declare-fun m!2609233 () Bool)

(assert (=> b!2168370 m!2609233))

(assert (=> b!2168370 m!2609225))

(assert (=> b!2168370 m!2609213))

(declare-fun m!2609235 () Bool)

(assert (=> b!2168370 m!2609235))

(declare-fun m!2609237 () Bool)

(assert (=> b!2168370 m!2609237))

(declare-fun m!2609239 () Bool)

(assert (=> b!2168370 m!2609239))

(declare-fun m!2609241 () Bool)

(assert (=> b!2168367 m!2609241))

(declare-fun m!2609243 () Bool)

(assert (=> b!2168354 m!2609243))

(declare-fun m!2609245 () Bool)

(assert (=> b!2168366 m!2609245))

(assert (=> b!2168366 m!2609245))

(declare-fun m!2609247 () Bool)

(assert (=> b!2168366 m!2609247))

(assert (=> b!2168366 m!2609247))

(declare-fun m!2609249 () Bool)

(assert (=> b!2168366 m!2609249))

(declare-fun m!2609251 () Bool)

(assert (=> b!2168368 m!2609251))

(declare-fun m!2609253 () Bool)

(assert (=> b!2168356 m!2609253))

(declare-fun m!2609255 () Bool)

(assert (=> b!2168356 m!2609255))

(declare-fun m!2609257 () Bool)

(assert (=> b!2168356 m!2609257))

(declare-fun m!2609259 () Bool)

(assert (=> b!2168356 m!2609259))

(declare-fun m!2609261 () Bool)

(assert (=> b!2168356 m!2609261))

(declare-fun m!2609263 () Bool)

(assert (=> b!2168356 m!2609263))

(declare-fun m!2609265 () Bool)

(assert (=> b!2168356 m!2609265))

(declare-fun m!2609267 () Bool)

(assert (=> b!2168371 m!2609267))

(declare-fun m!2609269 () Bool)

(assert (=> b!2168371 m!2609269))

(declare-fun m!2609271 () Bool)

(assert (=> b!2168371 m!2609271))

(declare-fun m!2609273 () Bool)

(assert (=> setNonEmpty!18140 m!2609273))

(declare-fun m!2609275 () Bool)

(assert (=> b!2168358 m!2609275))

(declare-fun m!2609277 () Bool)

(assert (=> b!2168355 m!2609277))

(declare-fun m!2609279 () Bool)

(assert (=> b!2168351 m!2609279))

(assert (=> b!2168351 m!2609245))

(declare-fun m!2609281 () Bool)

(assert (=> b!2168364 m!2609281))

(declare-fun m!2609283 () Bool)

(assert (=> b!2168360 m!2609283))

(declare-fun m!2609285 () Bool)

(assert (=> b!2168360 m!2609285))

(declare-fun m!2609287 () Bool)

(assert (=> b!2168365 m!2609287))

(declare-fun m!2609289 () Bool)

(assert (=> start!210250 m!2609289))

(declare-fun m!2609291 () Bool)

(assert (=> start!210250 m!2609291))

(declare-fun m!2609293 () Bool)

(assert (=> start!210250 m!2609293))

(check-sat (not b!2168363) (not b!2168357) (not b!2168360) (not b!2168364) (not b!2168371) (not b!2168355) (not b!2168365) (not b!2168358) (not b!2168354) (not b!2168366) (not start!210250) (not b!2168367) (not b!2168351) (not b!2168356) (not b!2168368) tp_is_empty!9609 (not b!2168369) (not b!2168362) (not b!2168370) (not b!2168353) (not setNonEmpty!18140))
(check-sat)
(get-model)

(declare-fun d!649452 () Bool)

(assert (=> d!649452 (= (isEmpty!14417 (_1!14807 lt!807106)) ((_ is Nil!25132) (_1!14807 lt!807106)))))

(assert (=> b!2168354 d!649452))

(declare-fun b!2168519 () Bool)

(declare-fun e!1386906 () Bool)

(declare-fun head!4642 (List!25216) C!12148)

(assert (=> b!2168519 (= e!1386906 (not (= (head!4642 (_1!14807 lt!807106)) (c!343540 r!12534))))))

(declare-fun b!2168520 () Bool)

(declare-fun e!1386908 () Bool)

(assert (=> b!2168520 (= e!1386908 e!1386906)))

(declare-fun res!933438 () Bool)

(assert (=> b!2168520 (=> res!933438 e!1386906)))

(declare-fun call!130050 () Bool)

(assert (=> b!2168520 (= res!933438 call!130050)))

(declare-fun bm!130045 () Bool)

(assert (=> bm!130045 (= call!130050 (isEmpty!14417 (_1!14807 lt!807106)))))

(declare-fun d!649454 () Bool)

(declare-fun e!1386911 () Bool)

(assert (=> d!649454 e!1386911))

(declare-fun c!343584 () Bool)

(assert (=> d!649454 (= c!343584 ((_ is EmptyExpr!6001) r!12534))))

(declare-fun lt!807143 () Bool)

(declare-fun e!1386907 () Bool)

(assert (=> d!649454 (= lt!807143 e!1386907)))

(declare-fun c!343586 () Bool)

(assert (=> d!649454 (= c!343586 (isEmpty!14417 (_1!14807 lt!807106)))))

(assert (=> d!649454 (validRegex!2277 r!12534)))

(assert (=> d!649454 (= (matchR!2758 r!12534 (_1!14807 lt!807106)) lt!807143)))

(declare-fun b!2168521 () Bool)

(declare-fun res!933439 () Bool)

(declare-fun e!1386912 () Bool)

(assert (=> b!2168521 (=> (not res!933439) (not e!1386912))))

(assert (=> b!2168521 (= res!933439 (not call!130050))))

(declare-fun b!2168522 () Bool)

(declare-fun res!933433 () Bool)

(assert (=> b!2168522 (=> (not res!933433) (not e!1386912))))

(declare-fun tail!3114 (List!25216) List!25216)

(assert (=> b!2168522 (= res!933433 (isEmpty!14417 (tail!3114 (_1!14807 lt!807106))))))

(declare-fun b!2168523 () Bool)

(declare-fun res!933434 () Bool)

(declare-fun e!1386909 () Bool)

(assert (=> b!2168523 (=> res!933434 e!1386909)))

(assert (=> b!2168523 (= res!933434 e!1386912)))

(declare-fun res!933440 () Bool)

(assert (=> b!2168523 (=> (not res!933440) (not e!1386912))))

(assert (=> b!2168523 (= res!933440 lt!807143)))

(declare-fun b!2168524 () Bool)

(declare-fun derivativeStep!1436 (Regex!6001 C!12148) Regex!6001)

(assert (=> b!2168524 (= e!1386907 (matchR!2758 (derivativeStep!1436 r!12534 (head!4642 (_1!14807 lt!807106))) (tail!3114 (_1!14807 lt!807106))))))

(declare-fun b!2168525 () Bool)

(declare-fun e!1386910 () Bool)

(assert (=> b!2168525 (= e!1386910 (not lt!807143))))

(declare-fun b!2168526 () Bool)

(assert (=> b!2168526 (= e!1386912 (= (head!4642 (_1!14807 lt!807106)) (c!343540 r!12534)))))

(declare-fun b!2168527 () Bool)

(declare-fun res!933435 () Bool)

(assert (=> b!2168527 (=> res!933435 e!1386909)))

(assert (=> b!2168527 (= res!933435 (not ((_ is ElementMatch!6001) r!12534)))))

(assert (=> b!2168527 (= e!1386910 e!1386909)))

(declare-fun b!2168528 () Bool)

(declare-fun res!933436 () Bool)

(assert (=> b!2168528 (=> res!933436 e!1386906)))

(assert (=> b!2168528 (= res!933436 (not (isEmpty!14417 (tail!3114 (_1!14807 lt!807106)))))))

(declare-fun b!2168529 () Bool)

(assert (=> b!2168529 (= e!1386911 (= lt!807143 call!130050))))

(declare-fun b!2168530 () Bool)

(declare-fun nullable!1692 (Regex!6001) Bool)

(assert (=> b!2168530 (= e!1386907 (nullable!1692 r!12534))))

(declare-fun b!2168531 () Bool)

(assert (=> b!2168531 (= e!1386911 e!1386910)))

(declare-fun c!343585 () Bool)

(assert (=> b!2168531 (= c!343585 ((_ is EmptyLang!6001) r!12534))))

(declare-fun b!2168532 () Bool)

(assert (=> b!2168532 (= e!1386909 e!1386908)))

(declare-fun res!933437 () Bool)

(assert (=> b!2168532 (=> (not res!933437) (not e!1386908))))

(assert (=> b!2168532 (= res!933437 (not lt!807143))))

(assert (= (and d!649454 c!343586) b!2168530))

(assert (= (and d!649454 (not c!343586)) b!2168524))

(assert (= (and d!649454 c!343584) b!2168529))

(assert (= (and d!649454 (not c!343584)) b!2168531))

(assert (= (and b!2168531 c!343585) b!2168525))

(assert (= (and b!2168531 (not c!343585)) b!2168527))

(assert (= (and b!2168527 (not res!933435)) b!2168523))

(assert (= (and b!2168523 res!933440) b!2168521))

(assert (= (and b!2168521 res!933439) b!2168522))

(assert (= (and b!2168522 res!933433) b!2168526))

(assert (= (and b!2168523 (not res!933434)) b!2168532))

(assert (= (and b!2168532 res!933437) b!2168520))

(assert (= (and b!2168520 (not res!933438)) b!2168528))

(assert (= (and b!2168528 (not res!933436)) b!2168519))

(assert (= (or b!2168529 b!2168520 b!2168521) bm!130045))

(declare-fun m!2609355 () Bool)

(assert (=> b!2168522 m!2609355))

(assert (=> b!2168522 m!2609355))

(declare-fun m!2609357 () Bool)

(assert (=> b!2168522 m!2609357))

(assert (=> d!649454 m!2609243))

(assert (=> d!649454 m!2609289))

(declare-fun m!2609359 () Bool)

(assert (=> b!2168526 m!2609359))

(assert (=> b!2168524 m!2609359))

(assert (=> b!2168524 m!2609359))

(declare-fun m!2609361 () Bool)

(assert (=> b!2168524 m!2609361))

(assert (=> b!2168524 m!2609355))

(assert (=> b!2168524 m!2609361))

(assert (=> b!2168524 m!2609355))

(declare-fun m!2609363 () Bool)

(assert (=> b!2168524 m!2609363))

(declare-fun m!2609365 () Bool)

(assert (=> b!2168530 m!2609365))

(assert (=> b!2168519 m!2609359))

(assert (=> b!2168528 m!2609355))

(assert (=> b!2168528 m!2609355))

(assert (=> b!2168528 m!2609357))

(assert (=> bm!130045 m!2609243))

(assert (=> b!2168364 d!649454))

(declare-fun d!649468 () Bool)

(declare-fun c!343589 () Bool)

(assert (=> d!649468 (= c!343589 ((_ is Node!8137) (c!343541 totalInput!977)))))

(declare-fun e!1386917 () Bool)

(assert (=> d!649468 (= (inv!33331 (c!343541 totalInput!977)) e!1386917)))

(declare-fun b!2168539 () Bool)

(declare-fun inv!33335 (Conc!8137) Bool)

(assert (=> b!2168539 (= e!1386917 (inv!33335 (c!343541 totalInput!977)))))

(declare-fun b!2168540 () Bool)

(declare-fun e!1386918 () Bool)

(assert (=> b!2168540 (= e!1386917 e!1386918)))

(declare-fun res!933443 () Bool)

(assert (=> b!2168540 (= res!933443 (not ((_ is Leaf!11905) (c!343541 totalInput!977))))))

(assert (=> b!2168540 (=> res!933443 e!1386918)))

(declare-fun b!2168541 () Bool)

(declare-fun inv!33336 (Conc!8137) Bool)

(assert (=> b!2168541 (= e!1386918 (inv!33336 (c!343541 totalInput!977)))))

(assert (= (and d!649468 c!343589) b!2168539))

(assert (= (and d!649468 (not c!343589)) b!2168540))

(assert (= (and b!2168540 (not res!933443)) b!2168541))

(declare-fun m!2609367 () Bool)

(assert (=> b!2168539 m!2609367))

(declare-fun m!2609369 () Bool)

(assert (=> b!2168541 m!2609369))

(assert (=> b!2168365 d!649468))

(declare-fun d!649470 () Bool)

(declare-fun c!343590 () Bool)

(assert (=> d!649470 (= c!343590 ((_ is Node!8137) (c!343541 input!5540)))))

(declare-fun e!1386919 () Bool)

(assert (=> d!649470 (= (inv!33331 (c!343541 input!5540)) e!1386919)))

(declare-fun b!2168542 () Bool)

(assert (=> b!2168542 (= e!1386919 (inv!33335 (c!343541 input!5540)))))

(declare-fun b!2168543 () Bool)

(declare-fun e!1386920 () Bool)

(assert (=> b!2168543 (= e!1386919 e!1386920)))

(declare-fun res!933444 () Bool)

(assert (=> b!2168543 (= res!933444 (not ((_ is Leaf!11905) (c!343541 input!5540))))))

(assert (=> b!2168543 (=> res!933444 e!1386920)))

(declare-fun b!2168544 () Bool)

(assert (=> b!2168544 (= e!1386920 (inv!33336 (c!343541 input!5540)))))

(assert (= (and d!649470 c!343590) b!2168542))

(assert (= (and d!649470 (not c!343590)) b!2168543))

(assert (= (and b!2168543 (not res!933444)) b!2168544))

(declare-fun m!2609371 () Bool)

(assert (=> b!2168542 m!2609371))

(declare-fun m!2609373 () Bool)

(assert (=> b!2168544 m!2609373))

(assert (=> b!2168355 d!649470))

(declare-fun d!649472 () Bool)

(declare-fun lt!807146 () Int)

(assert (=> d!649472 (= lt!807146 (size!19638 (list!9630 totalInput!977)))))

(declare-fun size!19640 (Conc!8137) Int)

(assert (=> d!649472 (= lt!807146 (size!19640 (c!343541 totalInput!977)))))

(assert (=> d!649472 (= (size!19637 totalInput!977) lt!807146)))

(declare-fun bs!446789 () Bool)

(assert (= bs!446789 d!649472))

(assert (=> bs!446789 m!2609269))

(assert (=> bs!446789 m!2609269))

(declare-fun m!2609375 () Bool)

(assert (=> bs!446789 m!2609375))

(declare-fun m!2609377 () Bool)

(assert (=> bs!446789 m!2609377))

(assert (=> b!2168356 d!649472))

(declare-fun b!2168556 () Bool)

(declare-fun e!1386925 () Bool)

(declare-fun lt!807149 () List!25216)

(assert (=> b!2168556 (= e!1386925 (or (not (= lt!807118 Nil!25132)) (= lt!807149 lt!807122)))))

(declare-fun b!2168554 () Bool)

(declare-fun e!1386926 () List!25216)

(assert (=> b!2168554 (= e!1386926 (Cons!25132 (h!30533 lt!807122) (++!6360 (t!197778 lt!807122) lt!807118)))))

(declare-fun b!2168555 () Bool)

(declare-fun res!933449 () Bool)

(assert (=> b!2168555 (=> (not res!933449) (not e!1386925))))

(assert (=> b!2168555 (= res!933449 (= (size!19638 lt!807149) (+ (size!19638 lt!807122) (size!19638 lt!807118))))))

(declare-fun d!649474 () Bool)

(assert (=> d!649474 e!1386925))

(declare-fun res!933450 () Bool)

(assert (=> d!649474 (=> (not res!933450) (not e!1386925))))

(declare-fun content!3409 (List!25216) (InoxSet C!12148))

(assert (=> d!649474 (= res!933450 (= (content!3409 lt!807149) ((_ map or) (content!3409 lt!807122) (content!3409 lt!807118))))))

(assert (=> d!649474 (= lt!807149 e!1386926)))

(declare-fun c!343593 () Bool)

(assert (=> d!649474 (= c!343593 ((_ is Nil!25132) lt!807122))))

(assert (=> d!649474 (= (++!6360 lt!807122 lt!807118) lt!807149)))

(declare-fun b!2168553 () Bool)

(assert (=> b!2168553 (= e!1386926 lt!807118)))

(assert (= (and d!649474 c!343593) b!2168553))

(assert (= (and d!649474 (not c!343593)) b!2168554))

(assert (= (and d!649474 res!933450) b!2168555))

(assert (= (and b!2168555 res!933449) b!2168556))

(declare-fun m!2609379 () Bool)

(assert (=> b!2168554 m!2609379))

(declare-fun m!2609381 () Bool)

(assert (=> b!2168555 m!2609381))

(declare-fun m!2609383 () Bool)

(assert (=> b!2168555 m!2609383))

(declare-fun m!2609385 () Bool)

(assert (=> b!2168555 m!2609385))

(declare-fun m!2609387 () Bool)

(assert (=> d!649474 m!2609387))

(declare-fun m!2609389 () Bool)

(assert (=> d!649474 m!2609389))

(declare-fun m!2609391 () Bool)

(assert (=> d!649474 m!2609391))

(assert (=> b!2168356 d!649474))

(declare-fun d!649476 () Bool)

(declare-fun lt!807172 () tuple2!24874)

(assert (=> d!649476 (= (++!6360 (_1!14807 lt!807172) (_2!14807 lt!807172)) lt!807101)))

(declare-fun sizeTr!107 (List!25216 Int) Int)

(assert (=> d!649476 (= lt!807172 (findLongestMatchInner!630 r!12534 Nil!25132 0 lt!807101 lt!807101 (sizeTr!107 lt!807101 0)))))

(declare-fun lt!807167 () Unit!38197)

(declare-fun lt!807168 () Unit!38197)

(assert (=> d!649476 (= lt!807167 lt!807168)))

(declare-fun lt!807170 () List!25216)

(declare-fun lt!807171 () Int)

(assert (=> d!649476 (= (sizeTr!107 lt!807170 lt!807171) (+ (size!19638 lt!807170) lt!807171))))

(declare-fun lemmaSizeTrEqualsSize!107 (List!25216 Int) Unit!38197)

(assert (=> d!649476 (= lt!807168 (lemmaSizeTrEqualsSize!107 lt!807170 lt!807171))))

(assert (=> d!649476 (= lt!807171 0)))

(assert (=> d!649476 (= lt!807170 Nil!25132)))

(declare-fun lt!807169 () Unit!38197)

(declare-fun lt!807166 () Unit!38197)

(assert (=> d!649476 (= lt!807169 lt!807166)))

(declare-fun lt!807173 () Int)

(assert (=> d!649476 (= (sizeTr!107 lt!807101 lt!807173) (+ (size!19638 lt!807101) lt!807173))))

(assert (=> d!649476 (= lt!807166 (lemmaSizeTrEqualsSize!107 lt!807101 lt!807173))))

(assert (=> d!649476 (= lt!807173 0)))

(assert (=> d!649476 (validRegex!2277 r!12534)))

(assert (=> d!649476 (= (findLongestMatch!555 r!12534 lt!807101) lt!807172)))

(declare-fun bs!446790 () Bool)

(assert (= bs!446790 d!649476))

(declare-fun m!2609393 () Bool)

(assert (=> bs!446790 m!2609393))

(declare-fun m!2609395 () Bool)

(assert (=> bs!446790 m!2609395))

(declare-fun m!2609397 () Bool)

(assert (=> bs!446790 m!2609397))

(assert (=> bs!446790 m!2609289))

(declare-fun m!2609399 () Bool)

(assert (=> bs!446790 m!2609399))

(assert (=> bs!446790 m!2609397))

(declare-fun m!2609401 () Bool)

(assert (=> bs!446790 m!2609401))

(declare-fun m!2609403 () Bool)

(assert (=> bs!446790 m!2609403))

(declare-fun m!2609405 () Bool)

(assert (=> bs!446790 m!2609405))

(declare-fun m!2609407 () Bool)

(assert (=> bs!446790 m!2609407))

(assert (=> bs!446790 m!2609213))

(assert (=> b!2168356 d!649476))

(declare-fun d!649478 () Bool)

(declare-fun lt!807174 () Int)

(assert (=> d!649478 (= lt!807174 (size!19638 (list!9630 input!5540)))))

(assert (=> d!649478 (= lt!807174 (size!19640 (c!343541 input!5540)))))

(assert (=> d!649478 (= (size!19637 input!5540) lt!807174)))

(declare-fun bs!446791 () Bool)

(assert (= bs!446791 d!649478))

(assert (=> bs!446791 m!2609271))

(assert (=> bs!446791 m!2609271))

(declare-fun m!2609409 () Bool)

(assert (=> bs!446791 m!2609409))

(declare-fun m!2609411 () Bool)

(assert (=> bs!446791 m!2609411))

(assert (=> b!2168356 d!649478))

(declare-fun b!2168565 () Bool)

(declare-fun e!1386932 () tuple2!24876)

(declare-fun call!130053 () tuple2!24876)

(assert (=> b!2168565 (= e!1386932 call!130053)))

(declare-fun d!649480 () Bool)

(declare-fun lt!807186 () tuple2!24876)

(assert (=> d!649480 (= (++!6360 (list!9630 (_1!14808 lt!807186)) (list!9630 (_2!14808 lt!807186))) (list!9630 input!5540))))

(assert (=> d!649480 (= lt!807186 e!1386932)))

(declare-fun c!343598 () Bool)

(declare-fun lt!807184 () Int)

(assert (=> d!649480 (= c!343598 (< lt!807184 0))))

(declare-fun e!1386931 () Int)

(declare-fun lt!807185 () Int)

(declare-fun lt!807183 () Int)

(assert (=> d!649480 (= lt!807184 (+ (- (furthestNullablePosition!188 z!4055 lt!807185 totalInput!977 lt!807183 e!1386931) lt!807185) 1))))

(declare-fun c!343599 () Bool)

(assert (=> d!649480 (= c!343599 (nullableZipper!282 z!4055))))

(assert (=> d!649480 (= lt!807185 (- lt!807183 (size!19637 input!5540)))))

(assert (=> d!649480 (= lt!807183 (size!19637 totalInput!977))))

(assert (=> d!649480 (isSuffix!668 (list!9630 input!5540) (list!9630 totalInput!977))))

(assert (=> d!649480 (= (findLongestMatchZipperSequenceV3!50 z!4055 input!5540 totalInput!977) lt!807186)))

(declare-fun b!2168566 () Bool)

(assert (=> b!2168566 (= e!1386931 (- lt!807185 1))))

(declare-fun bm!130048 () Bool)

(declare-fun splitAt!29 (BalanceConc!16036 Int) tuple2!24876)

(assert (=> bm!130048 (= call!130053 (splitAt!29 input!5540 (ite c!343598 0 lt!807184)))))

(declare-fun b!2168567 () Bool)

(assert (=> b!2168567 (= e!1386932 call!130053)))

(declare-fun b!2168568 () Bool)

(assert (=> b!2168568 (= e!1386931 (- 1))))

(assert (= (and d!649480 c!343599) b!2168566))

(assert (= (and d!649480 (not c!343599)) b!2168568))

(assert (= (and d!649480 c!343598) b!2168567))

(assert (= (and d!649480 (not c!343598)) b!2168565))

(assert (= (or b!2168567 b!2168565) bm!130048))

(declare-fun m!2609413 () Bool)

(assert (=> d!649480 m!2609413))

(declare-fun m!2609415 () Bool)

(assert (=> d!649480 m!2609415))

(declare-fun m!2609417 () Bool)

(assert (=> d!649480 m!2609417))

(declare-fun m!2609419 () Bool)

(assert (=> d!649480 m!2609419))

(assert (=> d!649480 m!2609271))

(assert (=> d!649480 m!2609269))

(declare-fun m!2609421 () Bool)

(assert (=> d!649480 m!2609421))

(assert (=> d!649480 m!2609269))

(assert (=> d!649480 m!2609271))

(assert (=> d!649480 m!2609417))

(assert (=> d!649480 m!2609257))

(assert (=> d!649480 m!2609223))

(assert (=> d!649480 m!2609263))

(assert (=> d!649480 m!2609415))

(declare-fun m!2609423 () Bool)

(assert (=> bm!130048 m!2609423))

(assert (=> b!2168356 d!649480))

(declare-fun d!649482 () Bool)

(declare-fun list!9632 (Conc!8137) List!25216)

(assert (=> d!649482 (= (list!9630 (_1!14808 lt!807105)) (list!9632 (c!343541 (_1!14808 lt!807105))))))

(declare-fun bs!446792 () Bool)

(assert (= bs!446792 d!649482))

(declare-fun m!2609425 () Bool)

(assert (=> bs!446792 m!2609425))

(assert (=> b!2168356 d!649482))

(declare-fun d!649484 () Bool)

(assert (=> d!649484 (= (list!9630 (_2!14808 lt!807105)) (list!9632 (c!343541 (_2!14808 lt!807105))))))

(declare-fun bs!446793 () Bool)

(assert (= bs!446793 d!649484))

(declare-fun m!2609427 () Bool)

(assert (=> bs!446793 m!2609427))

(assert (=> b!2168356 d!649484))

(declare-fun d!649486 () Bool)

(declare-fun lt!807187 () Int)

(assert (=> d!649486 (= lt!807187 (size!19638 (list!9630 (_1!14808 lt!807105))))))

(assert (=> d!649486 (= lt!807187 (size!19640 (c!343541 (_1!14808 lt!807105))))))

(assert (=> d!649486 (= (size!19637 (_1!14808 lt!807105)) lt!807187)))

(declare-fun bs!446794 () Bool)

(assert (= bs!446794 d!649486))

(assert (=> bs!446794 m!2609253))

(assert (=> bs!446794 m!2609253))

(declare-fun m!2609429 () Bool)

(assert (=> bs!446794 m!2609429))

(declare-fun m!2609431 () Bool)

(assert (=> bs!446794 m!2609431))

(assert (=> b!2168363 d!649486))

(declare-fun d!649488 () Bool)

(assert (=> d!649488 (= (matchR!2758 r!12534 (_1!14807 lt!807106)) (matchZipper!125 z!4055 (_1!14807 lt!807106)))))

(declare-fun lt!807190 () Unit!38197)

(declare-fun choose!12771 ((InoxSet Context!3142) List!25218 Regex!6001 List!25216) Unit!38197)

(assert (=> d!649488 (= lt!807190 (choose!12771 z!4055 lt!807124 r!12534 (_1!14807 lt!807106)))))

(assert (=> d!649488 (validRegex!2277 r!12534)))

(assert (=> d!649488 (= (theoremZipperRegexEquiv!37 z!4055 lt!807124 r!12534 (_1!14807 lt!807106)) lt!807190)))

(declare-fun bs!446795 () Bool)

(assert (= bs!446795 d!649488))

(assert (=> bs!446795 m!2609281))

(assert (=> bs!446795 m!2609199))

(declare-fun m!2609433 () Bool)

(assert (=> bs!446795 m!2609433))

(assert (=> bs!446795 m!2609289))

(assert (=> b!2168363 d!649488))

(declare-fun d!649490 () Bool)

(declare-fun lt!807193 () Int)

(assert (=> d!649490 (>= lt!807193 0)))

(declare-fun e!1386935 () Int)

(assert (=> d!649490 (= lt!807193 e!1386935)))

(declare-fun c!343602 () Bool)

(assert (=> d!649490 (= c!343602 ((_ is Nil!25132) (_1!14807 lt!807106)))))

(assert (=> d!649490 (= (size!19638 (_1!14807 lt!807106)) lt!807193)))

(declare-fun b!2168573 () Bool)

(assert (=> b!2168573 (= e!1386935 0)))

(declare-fun b!2168574 () Bool)

(assert (=> b!2168574 (= e!1386935 (+ 1 (size!19638 (t!197778 (_1!14807 lt!807106)))))))

(assert (= (and d!649490 c!343602) b!2168573))

(assert (= (and d!649490 (not c!343602)) b!2168574))

(declare-fun m!2609435 () Bool)

(assert (=> b!2168574 m!2609435))

(assert (=> b!2168363 d!649490))

(declare-fun d!649492 () Bool)

(declare-fun c!343605 () Bool)

(assert (=> d!649492 (= c!343605 (isEmpty!14417 (_1!14807 lt!807106)))))

(declare-fun e!1386938 () Bool)

(assert (=> d!649492 (= (matchZipper!125 z!4055 (_1!14807 lt!807106)) e!1386938)))

(declare-fun b!2168579 () Bool)

(assert (=> b!2168579 (= e!1386938 (nullableZipper!282 z!4055))))

(declare-fun b!2168580 () Bool)

(declare-fun derivationStepZipper!122 ((InoxSet Context!3142) C!12148) (InoxSet Context!3142))

(assert (=> b!2168580 (= e!1386938 (matchZipper!125 (derivationStepZipper!122 z!4055 (head!4642 (_1!14807 lt!807106))) (tail!3114 (_1!14807 lt!807106))))))

(assert (= (and d!649492 c!343605) b!2168579))

(assert (= (and d!649492 (not c!343605)) b!2168580))

(assert (=> d!649492 m!2609243))

(assert (=> b!2168579 m!2609223))

(assert (=> b!2168580 m!2609359))

(assert (=> b!2168580 m!2609359))

(declare-fun m!2609437 () Bool)

(assert (=> b!2168580 m!2609437))

(assert (=> b!2168580 m!2609355))

(assert (=> b!2168580 m!2609437))

(assert (=> b!2168580 m!2609355))

(declare-fun m!2609439 () Bool)

(assert (=> b!2168580 m!2609439))

(assert (=> b!2168363 d!649492))

(declare-fun b!2168581 () Bool)

(declare-fun e!1386939 () Bool)

(assert (=> b!2168581 (= e!1386939 (not (= (head!4642 lt!807122) (c!343540 r!12534))))))

(declare-fun b!2168582 () Bool)

(declare-fun e!1386941 () Bool)

(assert (=> b!2168582 (= e!1386941 e!1386939)))

(declare-fun res!933456 () Bool)

(assert (=> b!2168582 (=> res!933456 e!1386939)))

(declare-fun call!130054 () Bool)

(assert (=> b!2168582 (= res!933456 call!130054)))

(declare-fun bm!130049 () Bool)

(assert (=> bm!130049 (= call!130054 (isEmpty!14417 lt!807122))))

(declare-fun d!649494 () Bool)

(declare-fun e!1386944 () Bool)

(assert (=> d!649494 e!1386944))

(declare-fun c!343606 () Bool)

(assert (=> d!649494 (= c!343606 ((_ is EmptyExpr!6001) r!12534))))

(declare-fun lt!807194 () Bool)

(declare-fun e!1386940 () Bool)

(assert (=> d!649494 (= lt!807194 e!1386940)))

(declare-fun c!343608 () Bool)

(assert (=> d!649494 (= c!343608 (isEmpty!14417 lt!807122))))

(assert (=> d!649494 (validRegex!2277 r!12534)))

(assert (=> d!649494 (= (matchR!2758 r!12534 lt!807122) lt!807194)))

(declare-fun b!2168583 () Bool)

(declare-fun res!933457 () Bool)

(declare-fun e!1386945 () Bool)

(assert (=> b!2168583 (=> (not res!933457) (not e!1386945))))

(assert (=> b!2168583 (= res!933457 (not call!130054))))

(declare-fun b!2168584 () Bool)

(declare-fun res!933451 () Bool)

(assert (=> b!2168584 (=> (not res!933451) (not e!1386945))))

(assert (=> b!2168584 (= res!933451 (isEmpty!14417 (tail!3114 lt!807122)))))

(declare-fun b!2168585 () Bool)

(declare-fun res!933452 () Bool)

(declare-fun e!1386942 () Bool)

(assert (=> b!2168585 (=> res!933452 e!1386942)))

(assert (=> b!2168585 (= res!933452 e!1386945)))

(declare-fun res!933458 () Bool)

(assert (=> b!2168585 (=> (not res!933458) (not e!1386945))))

(assert (=> b!2168585 (= res!933458 lt!807194)))

(declare-fun b!2168586 () Bool)

(assert (=> b!2168586 (= e!1386940 (matchR!2758 (derivativeStep!1436 r!12534 (head!4642 lt!807122)) (tail!3114 lt!807122)))))

(declare-fun b!2168587 () Bool)

(declare-fun e!1386943 () Bool)

(assert (=> b!2168587 (= e!1386943 (not lt!807194))))

(declare-fun b!2168588 () Bool)

(assert (=> b!2168588 (= e!1386945 (= (head!4642 lt!807122) (c!343540 r!12534)))))

(declare-fun b!2168589 () Bool)

(declare-fun res!933453 () Bool)

(assert (=> b!2168589 (=> res!933453 e!1386942)))

(assert (=> b!2168589 (= res!933453 (not ((_ is ElementMatch!6001) r!12534)))))

(assert (=> b!2168589 (= e!1386943 e!1386942)))

(declare-fun b!2168590 () Bool)

(declare-fun res!933454 () Bool)

(assert (=> b!2168590 (=> res!933454 e!1386939)))

(assert (=> b!2168590 (= res!933454 (not (isEmpty!14417 (tail!3114 lt!807122))))))

(declare-fun b!2168591 () Bool)

(assert (=> b!2168591 (= e!1386944 (= lt!807194 call!130054))))

(declare-fun b!2168592 () Bool)

(assert (=> b!2168592 (= e!1386940 (nullable!1692 r!12534))))

(declare-fun b!2168593 () Bool)

(assert (=> b!2168593 (= e!1386944 e!1386943)))

(declare-fun c!343607 () Bool)

(assert (=> b!2168593 (= c!343607 ((_ is EmptyLang!6001) r!12534))))

(declare-fun b!2168594 () Bool)

(assert (=> b!2168594 (= e!1386942 e!1386941)))

(declare-fun res!933455 () Bool)

(assert (=> b!2168594 (=> (not res!933455) (not e!1386941))))

(assert (=> b!2168594 (= res!933455 (not lt!807194))))

(assert (= (and d!649494 c!343608) b!2168592))

(assert (= (and d!649494 (not c!343608)) b!2168586))

(assert (= (and d!649494 c!343606) b!2168591))

(assert (= (and d!649494 (not c!343606)) b!2168593))

(assert (= (and b!2168593 c!343607) b!2168587))

(assert (= (and b!2168593 (not c!343607)) b!2168589))

(assert (= (and b!2168589 (not res!933453)) b!2168585))

(assert (= (and b!2168585 res!933458) b!2168583))

(assert (= (and b!2168583 res!933457) b!2168584))

(assert (= (and b!2168584 res!933451) b!2168588))

(assert (= (and b!2168585 (not res!933452)) b!2168594))

(assert (= (and b!2168594 res!933455) b!2168582))

(assert (= (and b!2168582 (not res!933456)) b!2168590))

(assert (= (and b!2168590 (not res!933454)) b!2168581))

(assert (= (or b!2168591 b!2168582 b!2168583) bm!130049))

(declare-fun m!2609441 () Bool)

(assert (=> b!2168584 m!2609441))

(assert (=> b!2168584 m!2609441))

(declare-fun m!2609443 () Bool)

(assert (=> b!2168584 m!2609443))

(declare-fun m!2609445 () Bool)

(assert (=> d!649494 m!2609445))

(assert (=> d!649494 m!2609289))

(declare-fun m!2609447 () Bool)

(assert (=> b!2168588 m!2609447))

(assert (=> b!2168586 m!2609447))

(assert (=> b!2168586 m!2609447))

(declare-fun m!2609449 () Bool)

(assert (=> b!2168586 m!2609449))

(assert (=> b!2168586 m!2609441))

(assert (=> b!2168586 m!2609449))

(assert (=> b!2168586 m!2609441))

(declare-fun m!2609451 () Bool)

(assert (=> b!2168586 m!2609451))

(assert (=> b!2168592 m!2609365))

(assert (=> b!2168581 m!2609447))

(assert (=> b!2168590 m!2609441))

(assert (=> b!2168590 m!2609441))

(assert (=> b!2168590 m!2609443))

(assert (=> bm!130049 m!2609445))

(assert (=> b!2168363 d!649494))

(declare-fun d!649496 () Bool)

(assert (=> d!649496 (= (matchR!2758 r!12534 lt!807122) (matchZipper!125 z!4055 lt!807122))))

(declare-fun lt!807195 () Unit!38197)

(assert (=> d!649496 (= lt!807195 (choose!12771 z!4055 lt!807124 r!12534 lt!807122))))

(assert (=> d!649496 (validRegex!2277 r!12534)))

(assert (=> d!649496 (= (theoremZipperRegexEquiv!37 z!4055 lt!807124 r!12534 lt!807122) lt!807195)))

(declare-fun bs!446796 () Bool)

(assert (= bs!446796 d!649496))

(assert (=> bs!446796 m!2609201))

(assert (=> bs!446796 m!2609221))

(declare-fun m!2609453 () Bool)

(assert (=> bs!446796 m!2609453))

(assert (=> bs!446796 m!2609289))

(assert (=> b!2168363 d!649496))

(declare-fun d!649498 () Bool)

(declare-fun lambda!81764 () Int)

(declare-fun forall!5164 (List!25217 Int) Bool)

(assert (=> d!649498 (= (inv!33330 setElem!18140) (forall!5164 (exprs!2071 setElem!18140) lambda!81764))))

(declare-fun bs!446807 () Bool)

(assert (= bs!446807 d!649498))

(declare-fun m!2609595 () Bool)

(assert (=> bs!446807 m!2609595))

(assert (=> setNonEmpty!18140 d!649498))

(declare-fun b!2168776 () Bool)

(declare-fun e!1387066 () Bool)

(declare-fun e!1387070 () Bool)

(assert (=> b!2168776 (= e!1387066 e!1387070)))

(declare-fun c!343663 () Bool)

(assert (=> b!2168776 (= c!343663 ((_ is Star!6001) r!12534))))

(declare-fun b!2168777 () Bool)

(declare-fun e!1387071 () Bool)

(assert (=> b!2168777 (= e!1387070 e!1387071)))

(declare-fun res!933538 () Bool)

(assert (=> b!2168777 (= res!933538 (not (nullable!1692 (reg!6330 r!12534))))))

(assert (=> b!2168777 (=> (not res!933538) (not e!1387071))))

(declare-fun c!343664 () Bool)

(declare-fun bm!130090 () Bool)

(declare-fun call!130095 () Bool)

(assert (=> bm!130090 (= call!130095 (validRegex!2277 (ite c!343663 (reg!6330 r!12534) (ite c!343664 (regOne!12515 r!12534) (regTwo!12514 r!12534)))))))

(declare-fun b!2168778 () Bool)

(declare-fun res!933540 () Bool)

(declare-fun e!1387068 () Bool)

(assert (=> b!2168778 (=> res!933540 e!1387068)))

(assert (=> b!2168778 (= res!933540 (not ((_ is Concat!10303) r!12534)))))

(declare-fun e!1387067 () Bool)

(assert (=> b!2168778 (= e!1387067 e!1387068)))

(declare-fun b!2168779 () Bool)

(declare-fun res!933537 () Bool)

(declare-fun e!1387069 () Bool)

(assert (=> b!2168779 (=> (not res!933537) (not e!1387069))))

(declare-fun call!130097 () Bool)

(assert (=> b!2168779 (= res!933537 call!130097)))

(assert (=> b!2168779 (= e!1387067 e!1387069)))

(declare-fun bm!130091 () Bool)

(assert (=> bm!130091 (= call!130097 call!130095)))

(declare-fun b!2168780 () Bool)

(declare-fun call!130096 () Bool)

(assert (=> b!2168780 (= e!1387069 call!130096)))

(declare-fun b!2168781 () Bool)

(assert (=> b!2168781 (= e!1387070 e!1387067)))

(assert (=> b!2168781 (= c!343664 ((_ is Union!6001) r!12534))))

(declare-fun b!2168782 () Bool)

(declare-fun e!1387072 () Bool)

(assert (=> b!2168782 (= e!1387072 call!130097)))

(declare-fun bm!130092 () Bool)

(assert (=> bm!130092 (= call!130096 (validRegex!2277 (ite c!343664 (regTwo!12515 r!12534) (regOne!12514 r!12534))))))

(declare-fun b!2168784 () Bool)

(assert (=> b!2168784 (= e!1387068 e!1387072)))

(declare-fun res!933539 () Bool)

(assert (=> b!2168784 (=> (not res!933539) (not e!1387072))))

(assert (=> b!2168784 (= res!933539 call!130096)))

(declare-fun d!649542 () Bool)

(declare-fun res!933536 () Bool)

(assert (=> d!649542 (=> res!933536 e!1387066)))

(assert (=> d!649542 (= res!933536 ((_ is ElementMatch!6001) r!12534))))

(assert (=> d!649542 (= (validRegex!2277 r!12534) e!1387066)))

(declare-fun b!2168783 () Bool)

(assert (=> b!2168783 (= e!1387071 call!130095)))

(assert (= (and d!649542 (not res!933536)) b!2168776))

(assert (= (and b!2168776 c!343663) b!2168777))

(assert (= (and b!2168776 (not c!343663)) b!2168781))

(assert (= (and b!2168777 res!933538) b!2168783))

(assert (= (and b!2168781 c!343664) b!2168779))

(assert (= (and b!2168781 (not c!343664)) b!2168778))

(assert (= (and b!2168779 res!933537) b!2168780))

(assert (= (and b!2168778 (not res!933540)) b!2168784))

(assert (= (and b!2168784 res!933539) b!2168782))

(assert (= (or b!2168780 b!2168784) bm!130092))

(assert (= (or b!2168779 b!2168782) bm!130091))

(assert (= (or b!2168783 bm!130091) bm!130090))

(declare-fun m!2609649 () Bool)

(assert (=> b!2168777 m!2609649))

(declare-fun m!2609651 () Bool)

(assert (=> bm!130090 m!2609651))

(declare-fun m!2609653 () Bool)

(assert (=> bm!130092 m!2609653))

(assert (=> start!210250 d!649542))

(declare-fun d!649564 () Bool)

(declare-fun isBalanced!2525 (Conc!8137) Bool)

(assert (=> d!649564 (= (inv!33332 totalInput!977) (isBalanced!2525 (c!343541 totalInput!977)))))

(declare-fun bs!446813 () Bool)

(assert (= bs!446813 d!649564))

(declare-fun m!2609675 () Bool)

(assert (=> bs!446813 m!2609675))

(assert (=> start!210250 d!649564))

(declare-fun d!649574 () Bool)

(assert (=> d!649574 (= (inv!33332 input!5540) (isBalanced!2525 (c!343541 input!5540)))))

(declare-fun bs!446814 () Bool)

(assert (= bs!446814 d!649574))

(declare-fun m!2609677 () Bool)

(assert (=> bs!446814 m!2609677))

(assert (=> start!210250 d!649574))

(declare-fun b!2168804 () Bool)

(declare-fun e!1387087 () List!25216)

(assert (=> b!2168804 (= e!1387087 Nil!25132)))

(declare-fun b!2168805 () Bool)

(assert (=> b!2168805 (= e!1387087 (Cons!25132 (h!30533 lt!807123) (take!211 (t!197778 lt!807123) (- lt!807121 1))))))

(declare-fun b!2168807 () Bool)

(declare-fun e!1387086 () Bool)

(declare-fun lt!807334 () List!25216)

(declare-fun e!1387084 () Int)

(assert (=> b!2168807 (= e!1387086 (= (size!19638 lt!807334) e!1387084))))

(declare-fun c!343673 () Bool)

(assert (=> b!2168807 (= c!343673 (<= lt!807121 0))))

(declare-fun b!2168808 () Bool)

(declare-fun e!1387085 () Int)

(assert (=> b!2168808 (= e!1387084 e!1387085)))

(declare-fun c!343674 () Bool)

(assert (=> b!2168808 (= c!343674 (>= lt!807121 (size!19638 lt!807123)))))

(declare-fun d!649576 () Bool)

(assert (=> d!649576 e!1387086))

(declare-fun res!933546 () Bool)

(assert (=> d!649576 (=> (not res!933546) (not e!1387086))))

(assert (=> d!649576 (= res!933546 (= ((_ map implies) (content!3409 lt!807334) (content!3409 lt!807123)) ((as const (InoxSet C!12148)) true)))))

(assert (=> d!649576 (= lt!807334 e!1387087)))

(declare-fun c!343672 () Bool)

(assert (=> d!649576 (= c!343672 (or ((_ is Nil!25132) lt!807123) (<= lt!807121 0)))))

(assert (=> d!649576 (= (take!211 lt!807123 lt!807121) lt!807334)))

(declare-fun b!2168806 () Bool)

(assert (=> b!2168806 (= e!1387085 lt!807121)))

(declare-fun b!2168809 () Bool)

(assert (=> b!2168809 (= e!1387085 (size!19638 lt!807123))))

(declare-fun b!2168810 () Bool)

(assert (=> b!2168810 (= e!1387084 0)))

(assert (= (and d!649576 c!343672) b!2168804))

(assert (= (and d!649576 (not c!343672)) b!2168805))

(assert (= (and d!649576 res!933546) b!2168807))

(assert (= (and b!2168807 c!343673) b!2168810))

(assert (= (and b!2168807 (not c!343673)) b!2168808))

(assert (= (and b!2168808 c!343674) b!2168809))

(assert (= (and b!2168808 (not c!343674)) b!2168806))

(declare-fun m!2609679 () Bool)

(assert (=> b!2168807 m!2609679))

(declare-fun m!2609681 () Bool)

(assert (=> d!649576 m!2609681))

(declare-fun m!2609683 () Bool)

(assert (=> d!649576 m!2609683))

(declare-fun m!2609685 () Bool)

(assert (=> b!2168805 m!2609685))

(declare-fun m!2609687 () Bool)

(assert (=> b!2168808 m!2609687))

(assert (=> b!2168809 m!2609687))

(assert (=> b!2168351 d!649576))

(declare-fun b!2168829 () Bool)

(declare-fun e!1387101 () List!25216)

(assert (=> b!2168829 (= e!1387101 lt!807114)))

(declare-fun bm!130095 () Bool)

(declare-fun call!130100 () Int)

(assert (=> bm!130095 (= call!130100 (size!19638 lt!807114))))

(declare-fun b!2168831 () Bool)

(declare-fun e!1387098 () Int)

(assert (=> b!2168831 (= e!1387098 (- call!130100 lt!807115))))

(declare-fun b!2168832 () Bool)

(declare-fun e!1387102 () Bool)

(declare-fun lt!807337 () List!25216)

(declare-fun e!1387099 () Int)

(assert (=> b!2168832 (= e!1387102 (= (size!19638 lt!807337) e!1387099))))

(declare-fun c!343683 () Bool)

(assert (=> b!2168832 (= c!343683 (<= lt!807115 0))))

(declare-fun b!2168833 () Bool)

(declare-fun e!1387100 () List!25216)

(assert (=> b!2168833 (= e!1387100 Nil!25132)))

(declare-fun b!2168834 () Bool)

(assert (=> b!2168834 (= e!1387100 e!1387101)))

(declare-fun c!343686 () Bool)

(assert (=> b!2168834 (= c!343686 (<= lt!807115 0))))

(declare-fun b!2168835 () Bool)

(assert (=> b!2168835 (= e!1387099 e!1387098)))

(declare-fun c!343685 () Bool)

(assert (=> b!2168835 (= c!343685 (>= lt!807115 call!130100))))

(declare-fun b!2168836 () Bool)

(assert (=> b!2168836 (= e!1387101 (drop!1224 (t!197778 lt!807114) (- lt!807115 1)))))

(declare-fun b!2168837 () Bool)

(assert (=> b!2168837 (= e!1387098 0)))

(declare-fun b!2168830 () Bool)

(assert (=> b!2168830 (= e!1387099 call!130100)))

(declare-fun d!649578 () Bool)

(assert (=> d!649578 e!1387102))

(declare-fun res!933549 () Bool)

(assert (=> d!649578 (=> (not res!933549) (not e!1387102))))

(assert (=> d!649578 (= res!933549 (= ((_ map implies) (content!3409 lt!807337) (content!3409 lt!807114)) ((as const (InoxSet C!12148)) true)))))

(assert (=> d!649578 (= lt!807337 e!1387100)))

(declare-fun c!343684 () Bool)

(assert (=> d!649578 (= c!343684 ((_ is Nil!25132) lt!807114))))

(assert (=> d!649578 (= (drop!1224 lt!807114 lt!807115) lt!807337)))

(assert (= (and d!649578 c!343684) b!2168833))

(assert (= (and d!649578 (not c!343684)) b!2168834))

(assert (= (and b!2168834 c!343686) b!2168829))

(assert (= (and b!2168834 (not c!343686)) b!2168836))

(assert (= (and d!649578 res!933549) b!2168832))

(assert (= (and b!2168832 c!343683) b!2168830))

(assert (= (and b!2168832 (not c!343683)) b!2168835))

(assert (= (and b!2168835 c!343685) b!2168837))

(assert (= (and b!2168835 (not c!343685)) b!2168831))

(assert (= (or b!2168830 b!2168835 b!2168831) bm!130095))

(declare-fun m!2609689 () Bool)

(assert (=> bm!130095 m!2609689))

(declare-fun m!2609691 () Bool)

(assert (=> b!2168832 m!2609691))

(declare-fun m!2609693 () Bool)

(assert (=> b!2168836 m!2609693))

(declare-fun m!2609695 () Bool)

(assert (=> d!649578 m!2609695))

(declare-fun m!2609697 () Bool)

(assert (=> d!649578 m!2609697))

(assert (=> b!2168351 d!649578))

(declare-fun d!649580 () Bool)

(declare-fun lt!807338 () Int)

(assert (=> d!649580 (>= lt!807338 0)))

(declare-fun e!1387103 () Int)

(assert (=> d!649580 (= lt!807338 e!1387103)))

(declare-fun c!343687 () Bool)

(assert (=> d!649580 (= c!343687 ((_ is Nil!25132) Nil!25132))))

(assert (=> d!649580 (= (size!19638 Nil!25132) lt!807338)))

(declare-fun b!2168838 () Bool)

(assert (=> b!2168838 (= e!1387103 0)))

(declare-fun b!2168839 () Bool)

(assert (=> b!2168839 (= e!1387103 (+ 1 (size!19638 (t!197778 Nil!25132))))))

(assert (= (and d!649580 c!343687) b!2168838))

(assert (= (and d!649580 (not c!343687)) b!2168839))

(declare-fun m!2609699 () Bool)

(assert (=> b!2168839 m!2609699))

(assert (=> b!2168370 d!649580))

(declare-fun d!649582 () Bool)

(assert (=> d!649582 (isPrefix!2117 (_1!14807 lt!807106) (++!6360 (_1!14807 lt!807106) (_2!14807 lt!807106)))))

(declare-fun lt!807349 () Unit!38197)

(declare-fun choose!12773 (List!25216 List!25216) Unit!38197)

(assert (=> d!649582 (= lt!807349 (choose!12773 (_1!14807 lt!807106) (_2!14807 lt!807106)))))

(assert (=> d!649582 (= (lemmaConcatTwoListThenFirstIsPrefix!1400 (_1!14807 lt!807106) (_2!14807 lt!807106)) lt!807349)))

(declare-fun bs!446815 () Bool)

(assert (= bs!446815 d!649582))

(assert (=> bs!446815 m!2609241))

(assert (=> bs!446815 m!2609241))

(declare-fun m!2609701 () Bool)

(assert (=> bs!446815 m!2609701))

(declare-fun m!2609703 () Bool)

(assert (=> bs!446815 m!2609703))

(assert (=> b!2168370 d!649582))

(declare-fun b!2168862 () Bool)

(declare-fun e!1387118 () Bool)

(assert (=> b!2168862 (= e!1387118 (isPrefix!2117 (tail!3114 (take!211 lt!807114 lt!807115)) (tail!3114 lt!807114)))))

(declare-fun b!2168861 () Bool)

(declare-fun res!933558 () Bool)

(assert (=> b!2168861 (=> (not res!933558) (not e!1387118))))

(assert (=> b!2168861 (= res!933558 (= (head!4642 (take!211 lt!807114 lt!807115)) (head!4642 lt!807114)))))

(declare-fun d!649584 () Bool)

(declare-fun e!1387117 () Bool)

(assert (=> d!649584 e!1387117))

(declare-fun res!933561 () Bool)

(assert (=> d!649584 (=> res!933561 e!1387117)))

(declare-fun lt!807357 () Bool)

(assert (=> d!649584 (= res!933561 (not lt!807357))))

(declare-fun e!1387116 () Bool)

(assert (=> d!649584 (= lt!807357 e!1387116)))

(declare-fun res!933559 () Bool)

(assert (=> d!649584 (=> res!933559 e!1387116)))

(assert (=> d!649584 (= res!933559 ((_ is Nil!25132) (take!211 lt!807114 lt!807115)))))

(assert (=> d!649584 (= (isPrefix!2117 (take!211 lt!807114 lt!807115) lt!807114) lt!807357)))

(declare-fun b!2168863 () Bool)

(assert (=> b!2168863 (= e!1387117 (>= (size!19638 lt!807114) (size!19638 (take!211 lt!807114 lt!807115))))))

(declare-fun b!2168860 () Bool)

(assert (=> b!2168860 (= e!1387116 e!1387118)))

(declare-fun res!933560 () Bool)

(assert (=> b!2168860 (=> (not res!933560) (not e!1387118))))

(assert (=> b!2168860 (= res!933560 (not ((_ is Nil!25132) lt!807114)))))

(assert (= (and d!649584 (not res!933559)) b!2168860))

(assert (= (and b!2168860 res!933560) b!2168861))

(assert (= (and b!2168861 res!933558) b!2168862))

(assert (= (and d!649584 (not res!933561)) b!2168863))

(assert (=> b!2168862 m!2609215))

(declare-fun m!2609721 () Bool)

(assert (=> b!2168862 m!2609721))

(declare-fun m!2609723 () Bool)

(assert (=> b!2168862 m!2609723))

(assert (=> b!2168862 m!2609721))

(assert (=> b!2168862 m!2609723))

(declare-fun m!2609725 () Bool)

(assert (=> b!2168862 m!2609725))

(assert (=> b!2168861 m!2609215))

(declare-fun m!2609727 () Bool)

(assert (=> b!2168861 m!2609727))

(declare-fun m!2609729 () Bool)

(assert (=> b!2168861 m!2609729))

(assert (=> b!2168863 m!2609689))

(assert (=> b!2168863 m!2609215))

(declare-fun m!2609731 () Bool)

(assert (=> b!2168863 m!2609731))

(assert (=> b!2168370 d!649584))

(declare-fun d!649590 () Bool)

(declare-fun c!343694 () Bool)

(assert (=> d!649590 (= c!343694 (isEmpty!14417 lt!807122))))

(declare-fun e!1387119 () Bool)

(assert (=> d!649590 (= (matchZipper!125 z!4055 lt!807122) e!1387119)))

(declare-fun b!2168864 () Bool)

(assert (=> b!2168864 (= e!1387119 (nullableZipper!282 z!4055))))

(declare-fun b!2168865 () Bool)

(assert (=> b!2168865 (= e!1387119 (matchZipper!125 (derivationStepZipper!122 z!4055 (head!4642 lt!807122)) (tail!3114 lt!807122)))))

(assert (= (and d!649590 c!343694) b!2168864))

(assert (= (and d!649590 (not c!343694)) b!2168865))

(assert (=> d!649590 m!2609445))

(assert (=> b!2168864 m!2609223))

(assert (=> b!2168865 m!2609447))

(assert (=> b!2168865 m!2609447))

(declare-fun m!2609733 () Bool)

(assert (=> b!2168865 m!2609733))

(assert (=> b!2168865 m!2609441))

(assert (=> b!2168865 m!2609733))

(assert (=> b!2168865 m!2609441))

(declare-fun m!2609735 () Bool)

(assert (=> b!2168865 m!2609735))

(assert (=> b!2168370 d!649590))

(declare-fun bm!130115 () Bool)

(declare-fun call!130120 () Unit!38197)

(declare-fun lemmaIsPrefixSameLengthThenSameList!343 (List!25216 List!25216 List!25216) Unit!38197)

(assert (=> bm!130115 (= call!130120 (lemmaIsPrefixSameLengthThenSameList!343 lt!807101 Nil!25132 lt!807101))))

(declare-fun b!2168960 () Bool)

(declare-fun e!1387168 () tuple2!24874)

(assert (=> b!2168960 (= e!1387168 (tuple2!24875 Nil!25132 lt!807101))))

(declare-fun b!2168961 () Bool)

(declare-fun e!1387171 () Unit!38197)

(declare-fun Unit!38202 () Unit!38197)

(assert (=> b!2168961 (= e!1387171 Unit!38202)))

(declare-fun lt!807457 () Unit!38197)

(declare-fun call!130125 () Unit!38197)

(assert (=> b!2168961 (= lt!807457 call!130125)))

(declare-fun call!130127 () Bool)

(assert (=> b!2168961 call!130127))

(declare-fun lt!807461 () Unit!38197)

(assert (=> b!2168961 (= lt!807461 lt!807457)))

(declare-fun lt!807450 () Unit!38197)

(assert (=> b!2168961 (= lt!807450 call!130120)))

(assert (=> b!2168961 (= lt!807101 Nil!25132)))

(declare-fun lt!807458 () Unit!38197)

(assert (=> b!2168961 (= lt!807458 lt!807450)))

(assert (=> b!2168961 false))

(declare-fun b!2168962 () Bool)

(declare-fun e!1387166 () tuple2!24874)

(declare-fun lt!807462 () tuple2!24874)

(assert (=> b!2168962 (= e!1387166 lt!807462)))

(declare-fun bm!130116 () Bool)

(declare-fun call!130123 () C!12148)

(assert (=> bm!130116 (= call!130123 (head!4642 lt!807101))))

(declare-fun b!2168963 () Bool)

(assert (=> b!2168963 (= e!1387168 (tuple2!24875 Nil!25132 Nil!25132))))

(declare-fun bm!130117 () Bool)

(assert (=> bm!130117 (= call!130127 (isPrefix!2117 lt!807101 lt!807101))))

(declare-fun bm!130118 () Bool)

(declare-fun lt!807442 () List!25216)

(declare-fun call!130121 () tuple2!24874)

(declare-fun call!130126 () List!25216)

(declare-fun call!130124 () Regex!6001)

(assert (=> bm!130118 (= call!130121 (findLongestMatchInner!630 call!130124 lt!807442 (+ (size!19638 Nil!25132) 1) call!130126 lt!807101 (size!19638 lt!807101)))))

(declare-fun b!2168964 () Bool)

(declare-fun e!1387164 () tuple2!24874)

(assert (=> b!2168964 (= e!1387164 e!1387166)))

(assert (=> b!2168964 (= lt!807462 call!130121)))

(declare-fun c!343713 () Bool)

(assert (=> b!2168964 (= c!343713 (isEmpty!14417 (_1!14807 lt!807462)))))

(declare-fun b!2168965 () Bool)

(declare-fun c!343714 () Bool)

(declare-fun call!130122 () Bool)

(assert (=> b!2168965 (= c!343714 call!130122)))

(declare-fun lt!807466 () Unit!38197)

(declare-fun lt!807445 () Unit!38197)

(assert (=> b!2168965 (= lt!807466 lt!807445)))

(assert (=> b!2168965 (= lt!807101 Nil!25132)))

(assert (=> b!2168965 (= lt!807445 call!130120)))

(declare-fun lt!807451 () Unit!38197)

(declare-fun lt!807441 () Unit!38197)

(assert (=> b!2168965 (= lt!807451 lt!807441)))

(assert (=> b!2168965 call!130127))

(assert (=> b!2168965 (= lt!807441 call!130125)))

(declare-fun e!1387167 () tuple2!24874)

(assert (=> b!2168965 (= e!1387167 e!1387168)))

(declare-fun bm!130119 () Bool)

(declare-fun lemmaIsPrefixRefl!1405 (List!25216 List!25216) Unit!38197)

(assert (=> bm!130119 (= call!130125 (lemmaIsPrefixRefl!1405 lt!807101 lt!807101))))

(declare-fun b!2168966 () Bool)

(declare-fun c!343712 () Bool)

(assert (=> b!2168966 (= c!343712 call!130122)))

(declare-fun lt!807440 () Unit!38197)

(declare-fun lt!807452 () Unit!38197)

(assert (=> b!2168966 (= lt!807440 lt!807452)))

(declare-fun lt!807455 () C!12148)

(declare-fun lt!807443 () List!25216)

(assert (=> b!2168966 (= (++!6360 (++!6360 Nil!25132 (Cons!25132 lt!807455 Nil!25132)) lt!807443) lt!807101)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!503 (List!25216 C!12148 List!25216 List!25216) Unit!38197)

(assert (=> b!2168966 (= lt!807452 (lemmaMoveElementToOtherListKeepsConcatEq!503 Nil!25132 lt!807455 lt!807443 lt!807101))))

(assert (=> b!2168966 (= lt!807443 (tail!3114 lt!807101))))

(assert (=> b!2168966 (= lt!807455 (head!4642 lt!807101))))

(declare-fun lt!807456 () Unit!38197)

(declare-fun lt!807453 () Unit!38197)

(assert (=> b!2168966 (= lt!807456 lt!807453)))

(declare-fun getSuffix!1030 (List!25216 List!25216) List!25216)

(assert (=> b!2168966 (isPrefix!2117 (++!6360 Nil!25132 (Cons!25132 (head!4642 (getSuffix!1030 lt!807101 Nil!25132)) Nil!25132)) lt!807101)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!375 (List!25216 List!25216) Unit!38197)

(assert (=> b!2168966 (= lt!807453 (lemmaAddHeadSuffixToPrefixStillPrefix!375 Nil!25132 lt!807101))))

(declare-fun lt!807464 () Unit!38197)

(declare-fun lt!807463 () Unit!38197)

(assert (=> b!2168966 (= lt!807464 lt!807463)))

(assert (=> b!2168966 (= lt!807463 (lemmaAddHeadSuffixToPrefixStillPrefix!375 Nil!25132 lt!807101))))

(assert (=> b!2168966 (= lt!807442 (++!6360 Nil!25132 (Cons!25132 (head!4642 lt!807101) Nil!25132)))))

(declare-fun lt!807454 () Unit!38197)

(assert (=> b!2168966 (= lt!807454 e!1387171)))

(declare-fun c!343716 () Bool)

(assert (=> b!2168966 (= c!343716 (= (size!19638 Nil!25132) (size!19638 lt!807101)))))

(declare-fun lt!807447 () Unit!38197)

(declare-fun lt!807449 () Unit!38197)

(assert (=> b!2168966 (= lt!807447 lt!807449)))

(assert (=> b!2168966 (<= (size!19638 Nil!25132) (size!19638 lt!807101))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!178 (List!25216 List!25216) Unit!38197)

(assert (=> b!2168966 (= lt!807449 (lemmaIsPrefixThenSmallerEqSize!178 Nil!25132 lt!807101))))

(assert (=> b!2168966 (= e!1387167 e!1387164)))

(declare-fun bm!130120 () Bool)

(assert (=> bm!130120 (= call!130124 (derivativeStep!1436 r!12534 call!130123))))

(declare-fun b!2168967 () Bool)

(declare-fun e!1387165 () Bool)

(declare-fun lt!807465 () tuple2!24874)

(assert (=> b!2168967 (= e!1387165 (>= (size!19638 (_1!14807 lt!807465)) (size!19638 Nil!25132)))))

(declare-fun b!2168968 () Bool)

(declare-fun e!1387169 () Bool)

(assert (=> b!2168968 (= e!1387169 e!1387165)))

(declare-fun res!933569 () Bool)

(assert (=> b!2168968 (=> res!933569 e!1387165)))

(assert (=> b!2168968 (= res!933569 (isEmpty!14417 (_1!14807 lt!807465)))))

(declare-fun b!2168969 () Bool)

(declare-fun e!1387170 () tuple2!24874)

(assert (=> b!2168969 (= e!1387170 (tuple2!24875 Nil!25132 lt!807101))))

(declare-fun b!2168970 () Bool)

(declare-fun Unit!38203 () Unit!38197)

(assert (=> b!2168970 (= e!1387171 Unit!38203)))

(declare-fun b!2168971 () Bool)

(assert (=> b!2168971 (= e!1387164 call!130121)))

(declare-fun d!649592 () Bool)

(assert (=> d!649592 e!1387169))

(declare-fun res!933568 () Bool)

(assert (=> d!649592 (=> (not res!933568) (not e!1387169))))

(assert (=> d!649592 (= res!933568 (= (++!6360 (_1!14807 lt!807465) (_2!14807 lt!807465)) lt!807101))))

(assert (=> d!649592 (= lt!807465 e!1387170)))

(declare-fun c!343717 () Bool)

(declare-fun lostCause!665 (Regex!6001) Bool)

(assert (=> d!649592 (= c!343717 (lostCause!665 r!12534))))

(declare-fun lt!807444 () Unit!38197)

(declare-fun Unit!38204 () Unit!38197)

(assert (=> d!649592 (= lt!807444 Unit!38204)))

(assert (=> d!649592 (= (getSuffix!1030 lt!807101 Nil!25132) lt!807101)))

(declare-fun lt!807439 () Unit!38197)

(declare-fun lt!807459 () Unit!38197)

(assert (=> d!649592 (= lt!807439 lt!807459)))

(declare-fun lt!807446 () List!25216)

(assert (=> d!649592 (= lt!807101 lt!807446)))

(declare-fun lemmaSamePrefixThenSameSuffix!952 (List!25216 List!25216 List!25216 List!25216 List!25216) Unit!38197)

(assert (=> d!649592 (= lt!807459 (lemmaSamePrefixThenSameSuffix!952 Nil!25132 lt!807101 Nil!25132 lt!807446 lt!807101))))

(assert (=> d!649592 (= lt!807446 (getSuffix!1030 lt!807101 Nil!25132))))

(declare-fun lt!807460 () Unit!38197)

(declare-fun lt!807448 () Unit!38197)

(assert (=> d!649592 (= lt!807460 lt!807448)))

(assert (=> d!649592 (isPrefix!2117 Nil!25132 (++!6360 Nil!25132 lt!807101))))

(assert (=> d!649592 (= lt!807448 (lemmaConcatTwoListThenFirstIsPrefix!1400 Nil!25132 lt!807101))))

(assert (=> d!649592 (validRegex!2277 r!12534)))

(assert (=> d!649592 (= (findLongestMatchInner!630 r!12534 Nil!25132 (size!19638 Nil!25132) lt!807101 lt!807101 (size!19638 lt!807101)) lt!807465)))

(declare-fun b!2168972 () Bool)

(assert (=> b!2168972 (= e!1387166 (tuple2!24875 Nil!25132 lt!807101))))

(declare-fun bm!130121 () Bool)

(assert (=> bm!130121 (= call!130126 (tail!3114 lt!807101))))

(declare-fun bm!130122 () Bool)

(assert (=> bm!130122 (= call!130122 (nullable!1692 r!12534))))

(declare-fun b!2168973 () Bool)

(assert (=> b!2168973 (= e!1387170 e!1387167)))

(declare-fun c!343715 () Bool)

(assert (=> b!2168973 (= c!343715 (= (size!19638 Nil!25132) (size!19638 lt!807101)))))

(assert (= (and d!649592 c!343717) b!2168969))

(assert (= (and d!649592 (not c!343717)) b!2168973))

(assert (= (and b!2168973 c!343715) b!2168965))

(assert (= (and b!2168973 (not c!343715)) b!2168966))

(assert (= (and b!2168965 c!343714) b!2168963))

(assert (= (and b!2168965 (not c!343714)) b!2168960))

(assert (= (and b!2168966 c!343716) b!2168961))

(assert (= (and b!2168966 (not c!343716)) b!2168970))

(assert (= (and b!2168966 c!343712) b!2168964))

(assert (= (and b!2168966 (not c!343712)) b!2168971))

(assert (= (and b!2168964 c!343713) b!2168972))

(assert (= (and b!2168964 (not c!343713)) b!2168962))

(assert (= (or b!2168964 b!2168971) bm!130116))

(assert (= (or b!2168964 b!2168971) bm!130121))

(assert (= (or b!2168964 b!2168971) bm!130120))

(assert (= (or b!2168964 b!2168971) bm!130118))

(assert (= (or b!2168965 b!2168961) bm!130117))

(assert (= (or b!2168965 b!2168961) bm!130119))

(assert (= (or b!2168965 b!2168961) bm!130115))

(assert (= (or b!2168965 b!2168966) bm!130122))

(assert (= (and d!649592 res!933568) b!2168968))

(assert (= (and b!2168968 (not res!933569)) b!2168967))

(declare-fun m!2609791 () Bool)

(assert (=> bm!130121 m!2609791))

(declare-fun m!2609793 () Bool)

(assert (=> b!2168968 m!2609793))

(declare-fun m!2609795 () Bool)

(assert (=> bm!130116 m!2609795))

(declare-fun m!2609797 () Bool)

(assert (=> bm!130119 m!2609797))

(declare-fun m!2609799 () Bool)

(assert (=> d!649592 m!2609799))

(declare-fun m!2609801 () Bool)

(assert (=> d!649592 m!2609801))

(declare-fun m!2609803 () Bool)

(assert (=> d!649592 m!2609803))

(declare-fun m!2609805 () Bool)

(assert (=> d!649592 m!2609805))

(declare-fun m!2609807 () Bool)

(assert (=> d!649592 m!2609807))

(assert (=> d!649592 m!2609805))

(assert (=> d!649592 m!2609289))

(declare-fun m!2609809 () Bool)

(assert (=> d!649592 m!2609809))

(declare-fun m!2609811 () Bool)

(assert (=> d!649592 m!2609811))

(declare-fun m!2609813 () Bool)

(assert (=> bm!130120 m!2609813))

(declare-fun m!2609815 () Bool)

(assert (=> bm!130117 m!2609815))

(declare-fun m!2609817 () Bool)

(assert (=> bm!130115 m!2609817))

(assert (=> bm!130122 m!2609365))

(assert (=> bm!130118 m!2609213))

(declare-fun m!2609819 () Bool)

(assert (=> bm!130118 m!2609819))

(declare-fun m!2609821 () Bool)

(assert (=> b!2168966 m!2609821))

(assert (=> b!2168966 m!2609225))

(assert (=> b!2168966 m!2609809))

(declare-fun m!2609823 () Bool)

(assert (=> b!2168966 m!2609823))

(declare-fun m!2609825 () Bool)

(assert (=> b!2168966 m!2609825))

(assert (=> b!2168966 m!2609809))

(assert (=> b!2168966 m!2609213))

(assert (=> b!2168966 m!2609795))

(declare-fun m!2609827 () Bool)

(assert (=> b!2168966 m!2609827))

(declare-fun m!2609829 () Bool)

(assert (=> b!2168966 m!2609829))

(assert (=> b!2168966 m!2609827))

(declare-fun m!2609831 () Bool)

(assert (=> b!2168966 m!2609831))

(assert (=> b!2168966 m!2609825))

(declare-fun m!2609833 () Bool)

(assert (=> b!2168966 m!2609833))

(declare-fun m!2609835 () Bool)

(assert (=> b!2168966 m!2609835))

(assert (=> b!2168966 m!2609791))

(declare-fun m!2609837 () Bool)

(assert (=> b!2168966 m!2609837))

(declare-fun m!2609839 () Bool)

(assert (=> b!2168964 m!2609839))

(declare-fun m!2609841 () Bool)

(assert (=> b!2168967 m!2609841))

(assert (=> b!2168967 m!2609225))

(assert (=> b!2168370 d!649592))

(declare-fun b!2168976 () Bool)

(declare-fun e!1387174 () Bool)

(assert (=> b!2168976 (= e!1387174 (isPrefix!2117 (tail!3114 lt!807122) (tail!3114 lt!807104)))))

(declare-fun b!2168975 () Bool)

(declare-fun res!933570 () Bool)

(assert (=> b!2168975 (=> (not res!933570) (not e!1387174))))

(assert (=> b!2168975 (= res!933570 (= (head!4642 lt!807122) (head!4642 lt!807104)))))

(declare-fun d!649600 () Bool)

(declare-fun e!1387173 () Bool)

(assert (=> d!649600 e!1387173))

(declare-fun res!933573 () Bool)

(assert (=> d!649600 (=> res!933573 e!1387173)))

(declare-fun lt!807467 () Bool)

(assert (=> d!649600 (= res!933573 (not lt!807467))))

(declare-fun e!1387172 () Bool)

(assert (=> d!649600 (= lt!807467 e!1387172)))

(declare-fun res!933571 () Bool)

(assert (=> d!649600 (=> res!933571 e!1387172)))

(assert (=> d!649600 (= res!933571 ((_ is Nil!25132) lt!807122))))

(assert (=> d!649600 (= (isPrefix!2117 lt!807122 lt!807104) lt!807467)))

(declare-fun b!2168977 () Bool)

(assert (=> b!2168977 (= e!1387173 (>= (size!19638 lt!807104) (size!19638 lt!807122)))))

(declare-fun b!2168974 () Bool)

(assert (=> b!2168974 (= e!1387172 e!1387174)))

(declare-fun res!933572 () Bool)

(assert (=> b!2168974 (=> (not res!933572) (not e!1387174))))

(assert (=> b!2168974 (= res!933572 (not ((_ is Nil!25132) lt!807104)))))

(assert (= (and d!649600 (not res!933571)) b!2168974))

(assert (= (and b!2168974 res!933572) b!2168975))

(assert (= (and b!2168975 res!933570) b!2168976))

(assert (= (and d!649600 (not res!933573)) b!2168977))

(assert (=> b!2168976 m!2609441))

(declare-fun m!2609843 () Bool)

(assert (=> b!2168976 m!2609843))

(assert (=> b!2168976 m!2609441))

(assert (=> b!2168976 m!2609843))

(declare-fun m!2609845 () Bool)

(assert (=> b!2168976 m!2609845))

(assert (=> b!2168975 m!2609447))

(declare-fun m!2609847 () Bool)

(assert (=> b!2168975 m!2609847))

(declare-fun m!2609849 () Bool)

(assert (=> b!2168977 m!2609849))

(assert (=> b!2168977 m!2609383))

(assert (=> b!2168370 d!649600))

(declare-fun d!649602 () Bool)

(assert (=> d!649602 (isPrefix!2117 lt!807122 (++!6360 lt!807122 lt!807118))))

(declare-fun lt!807468 () Unit!38197)

(assert (=> d!649602 (= lt!807468 (choose!12773 lt!807122 lt!807118))))

(assert (=> d!649602 (= (lemmaConcatTwoListThenFirstIsPrefix!1400 lt!807122 lt!807118) lt!807468)))

(declare-fun bs!446818 () Bool)

(assert (= bs!446818 d!649602))

(assert (=> bs!446818 m!2609261))

(assert (=> bs!446818 m!2609261))

(declare-fun m!2609851 () Bool)

(assert (=> bs!446818 m!2609851))

(declare-fun m!2609853 () Bool)

(assert (=> bs!446818 m!2609853))

(assert (=> b!2168370 d!649602))

(declare-fun d!649604 () Bool)

(declare-fun lt!807469 () Int)

(assert (=> d!649604 (>= lt!807469 0)))

(declare-fun e!1387175 () Int)

(assert (=> d!649604 (= lt!807469 e!1387175)))

(declare-fun c!343718 () Bool)

(assert (=> d!649604 (= c!343718 ((_ is Nil!25132) lt!807101))))

(assert (=> d!649604 (= (size!19638 lt!807101) lt!807469)))

(declare-fun b!2168978 () Bool)

(assert (=> b!2168978 (= e!1387175 0)))

(declare-fun b!2168979 () Bool)

(assert (=> b!2168979 (= e!1387175 (+ 1 (size!19638 (t!197778 lt!807101))))))

(assert (= (and d!649604 c!343718) b!2168978))

(assert (= (and d!649604 (not c!343718)) b!2168979))

(declare-fun m!2609855 () Bool)

(assert (=> b!2168979 m!2609855))

(assert (=> b!2168370 d!649604))

(declare-fun b!2168980 () Bool)

(declare-fun e!1387179 () List!25216)

(assert (=> b!2168980 (= e!1387179 Nil!25132)))

(declare-fun b!2168981 () Bool)

(assert (=> b!2168981 (= e!1387179 (Cons!25132 (h!30533 lt!807114) (take!211 (t!197778 lt!807114) (- lt!807115 1))))))

(declare-fun b!2168983 () Bool)

(declare-fun e!1387178 () Bool)

(declare-fun lt!807470 () List!25216)

(declare-fun e!1387176 () Int)

(assert (=> b!2168983 (= e!1387178 (= (size!19638 lt!807470) e!1387176))))

(declare-fun c!343720 () Bool)

(assert (=> b!2168983 (= c!343720 (<= lt!807115 0))))

(declare-fun b!2168984 () Bool)

(declare-fun e!1387177 () Int)

(assert (=> b!2168984 (= e!1387176 e!1387177)))

(declare-fun c!343721 () Bool)

(assert (=> b!2168984 (= c!343721 (>= lt!807115 (size!19638 lt!807114)))))

(declare-fun d!649606 () Bool)

(assert (=> d!649606 e!1387178))

(declare-fun res!933574 () Bool)

(assert (=> d!649606 (=> (not res!933574) (not e!1387178))))

(assert (=> d!649606 (= res!933574 (= ((_ map implies) (content!3409 lt!807470) (content!3409 lt!807114)) ((as const (InoxSet C!12148)) true)))))

(assert (=> d!649606 (= lt!807470 e!1387179)))

(declare-fun c!343719 () Bool)

(assert (=> d!649606 (= c!343719 (or ((_ is Nil!25132) lt!807114) (<= lt!807115 0)))))

(assert (=> d!649606 (= (take!211 lt!807114 lt!807115) lt!807470)))

(declare-fun b!2168982 () Bool)

(assert (=> b!2168982 (= e!1387177 lt!807115)))

(declare-fun b!2168985 () Bool)

(assert (=> b!2168985 (= e!1387177 (size!19638 lt!807114))))

(declare-fun b!2168986 () Bool)

(assert (=> b!2168986 (= e!1387176 0)))

(assert (= (and d!649606 c!343719) b!2168980))

(assert (= (and d!649606 (not c!343719)) b!2168981))

(assert (= (and d!649606 res!933574) b!2168983))

(assert (= (and b!2168983 c!343720) b!2168986))

(assert (= (and b!2168983 (not c!343720)) b!2168984))

(assert (= (and b!2168984 c!343721) b!2168985))

(assert (= (and b!2168984 (not c!343721)) b!2168982))

(declare-fun m!2609857 () Bool)

(assert (=> b!2168983 m!2609857))

(declare-fun m!2609859 () Bool)

(assert (=> d!649606 m!2609859))

(assert (=> d!649606 m!2609697))

(declare-fun m!2609861 () Bool)

(assert (=> b!2168981 m!2609861))

(assert (=> b!2168984 m!2609689))

(assert (=> b!2168985 m!2609689))

(assert (=> b!2168370 d!649606))

(declare-fun d!649608 () Bool)

(declare-fun lambda!81767 () Int)

(declare-fun exists!754 ((InoxSet Context!3142) Int) Bool)

(assert (=> d!649608 (= (nullableZipper!282 z!4055) (exists!754 z!4055 lambda!81767))))

(declare-fun bs!446819 () Bool)

(assert (= bs!446819 d!649608))

(declare-fun m!2609863 () Bool)

(assert (=> bs!446819 m!2609863))

(assert (=> b!2168370 d!649608))

(declare-fun d!649610 () Bool)

(declare-fun e!1387185 () Bool)

(assert (=> d!649610 e!1387185))

(declare-fun res!933580 () Bool)

(assert (=> d!649610 (=> res!933580 e!1387185)))

(declare-fun lt!807475 () Int)

(assert (=> d!649610 (= res!933580 (<= lt!807475 0))))

(assert (=> d!649610 (= lt!807475 (+ (- (furthestNullablePosition!188 z!4055 lt!807115 totalInput!977 (size!19637 totalInput!977) lt!807119) lt!807115) 1))))

(declare-fun lt!807476 () Unit!38197)

(declare-fun choose!12774 ((InoxSet Context!3142) Int BalanceConc!16036 Int) Unit!38197)

(assert (=> d!649610 (= lt!807476 (choose!12774 z!4055 lt!807115 totalInput!977 lt!807119))))

(declare-fun e!1387184 () Bool)

(assert (=> d!649610 e!1387184))

(declare-fun res!933579 () Bool)

(assert (=> d!649610 (=> (not res!933579) (not e!1387184))))

(assert (=> d!649610 (= res!933579 (>= lt!807115 0))))

(assert (=> d!649610 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!32 z!4055 lt!807115 totalInput!977 lt!807119) lt!807476)))

(declare-fun b!2168991 () Bool)

(assert (=> b!2168991 (= e!1387184 (<= lt!807115 (size!19637 totalInput!977)))))

(declare-fun b!2168992 () Bool)

(assert (=> b!2168992 (= e!1387185 (matchZipper!125 z!4055 (take!211 (drop!1224 (list!9630 totalInput!977) lt!807115) lt!807475)))))

(assert (= (and d!649610 res!933579) b!2168991))

(assert (= (and d!649610 (not res!933580)) b!2168992))

(assert (=> d!649610 m!2609263))

(assert (=> d!649610 m!2609263))

(declare-fun m!2609865 () Bool)

(assert (=> d!649610 m!2609865))

(declare-fun m!2609867 () Bool)

(assert (=> d!649610 m!2609867))

(assert (=> b!2168991 m!2609263))

(assert (=> b!2168992 m!2609269))

(assert (=> b!2168992 m!2609269))

(declare-fun m!2609869 () Bool)

(assert (=> b!2168992 m!2609869))

(assert (=> b!2168992 m!2609869))

(declare-fun m!2609871 () Bool)

(assert (=> b!2168992 m!2609871))

(assert (=> b!2168992 m!2609871))

(declare-fun m!2609873 () Bool)

(assert (=> b!2168992 m!2609873))

(assert (=> b!2168370 d!649610))

(declare-fun b!2169003 () Bool)

(declare-fun e!1387192 () Int)

(assert (=> b!2169003 (= e!1387192 lt!807115)))

(declare-fun b!2169004 () Bool)

(declare-fun e!1387193 () Int)

(assert (=> b!2169004 (= e!1387193 lt!807119)))

(declare-fun b!2169005 () Bool)

(assert (=> b!2169005 (= e!1387192 lt!807119)))

(declare-fun lt!807481 () Int)

(declare-fun d!649612 () Bool)

(assert (=> d!649612 (and (>= lt!807481 (- 1)) (< lt!807481 lt!807099) (>= lt!807481 lt!807119) (or (= lt!807481 lt!807119) (>= lt!807481 lt!807115)))))

(assert (=> d!649612 (= lt!807481 e!1387193)))

(declare-fun c!343729 () Bool)

(declare-fun e!1387194 () Bool)

(assert (=> d!649612 (= c!343729 e!1387194)))

(declare-fun res!933583 () Bool)

(assert (=> d!649612 (=> res!933583 e!1387194)))

(assert (=> d!649612 (= res!933583 (= lt!807115 lt!807099))))

(assert (=> d!649612 (and (>= lt!807115 0) (<= lt!807115 lt!807099))))

(assert (=> d!649612 (= (furthestNullablePosition!188 z!4055 lt!807115 totalInput!977 lt!807099 lt!807119) lt!807481)))

(declare-fun b!2169006 () Bool)

(declare-fun lostCauseZipper!155 ((InoxSet Context!3142)) Bool)

(assert (=> b!2169006 (= e!1387194 (lostCauseZipper!155 z!4055))))

(declare-fun b!2169007 () Bool)

(declare-fun lt!807482 () (InoxSet Context!3142))

(assert (=> b!2169007 (= e!1387193 (furthestNullablePosition!188 lt!807482 (+ lt!807115 1) totalInput!977 lt!807099 e!1387192))))

(declare-fun apply!6064 (BalanceConc!16036 Int) C!12148)

(assert (=> b!2169007 (= lt!807482 (derivationStepZipper!122 z!4055 (apply!6064 totalInput!977 lt!807115)))))

(declare-fun c!343728 () Bool)

(assert (=> b!2169007 (= c!343728 (nullableZipper!282 lt!807482))))

(assert (= (and d!649612 (not res!933583)) b!2169006))

(assert (= (and d!649612 c!343729) b!2169004))

(assert (= (and d!649612 (not c!343729)) b!2169007))

(assert (= (and b!2169007 c!343728) b!2169003))

(assert (= (and b!2169007 (not c!343728)) b!2169005))

(declare-fun m!2609875 () Bool)

(assert (=> b!2169006 m!2609875))

(declare-fun m!2609877 () Bool)

(assert (=> b!2169007 m!2609877))

(declare-fun m!2609879 () Bool)

(assert (=> b!2169007 m!2609879))

(assert (=> b!2169007 m!2609879))

(declare-fun m!2609881 () Bool)

(assert (=> b!2169007 m!2609881))

(declare-fun m!2609883 () Bool)

(assert (=> b!2169007 m!2609883))

(assert (=> b!2168370 d!649612))

(declare-fun b!2169010 () Bool)

(declare-fun e!1387197 () Bool)

(assert (=> b!2169010 (= e!1387197 (isPrefix!2117 (tail!3114 (_1!14807 lt!807106)) (tail!3114 lt!807108)))))

(declare-fun b!2169009 () Bool)

(declare-fun res!933584 () Bool)

(assert (=> b!2169009 (=> (not res!933584) (not e!1387197))))

(assert (=> b!2169009 (= res!933584 (= (head!4642 (_1!14807 lt!807106)) (head!4642 lt!807108)))))

(declare-fun d!649614 () Bool)

(declare-fun e!1387196 () Bool)

(assert (=> d!649614 e!1387196))

(declare-fun res!933587 () Bool)

(assert (=> d!649614 (=> res!933587 e!1387196)))

(declare-fun lt!807483 () Bool)

(assert (=> d!649614 (= res!933587 (not lt!807483))))

(declare-fun e!1387195 () Bool)

(assert (=> d!649614 (= lt!807483 e!1387195)))

(declare-fun res!933585 () Bool)

(assert (=> d!649614 (=> res!933585 e!1387195)))

(assert (=> d!649614 (= res!933585 ((_ is Nil!25132) (_1!14807 lt!807106)))))

(assert (=> d!649614 (= (isPrefix!2117 (_1!14807 lt!807106) lt!807108) lt!807483)))

(declare-fun b!2169011 () Bool)

(assert (=> b!2169011 (= e!1387196 (>= (size!19638 lt!807108) (size!19638 (_1!14807 lt!807106))))))

(declare-fun b!2169008 () Bool)

(assert (=> b!2169008 (= e!1387195 e!1387197)))

(declare-fun res!933586 () Bool)

(assert (=> b!2169008 (=> (not res!933586) (not e!1387197))))

(assert (=> b!2169008 (= res!933586 (not ((_ is Nil!25132) lt!807108)))))

(assert (= (and d!649614 (not res!933585)) b!2169008))

(assert (= (and b!2169008 res!933586) b!2169009))

(assert (= (and b!2169009 res!933584) b!2169010))

(assert (= (and d!649614 (not res!933587)) b!2169011))

(assert (=> b!2169010 m!2609355))

(declare-fun m!2609885 () Bool)

(assert (=> b!2169010 m!2609885))

(assert (=> b!2169010 m!2609355))

(assert (=> b!2169010 m!2609885))

(declare-fun m!2609887 () Bool)

(assert (=> b!2169010 m!2609887))

(assert (=> b!2169009 m!2609359))

(declare-fun m!2609889 () Bool)

(assert (=> b!2169009 m!2609889))

(declare-fun m!2609891 () Bool)

(assert (=> b!2169011 m!2609891))

(assert (=> b!2169011 m!2609197))

(assert (=> b!2168370 d!649614))

(declare-fun d!649616 () Bool)

(declare-fun e!1387200 () Bool)

(assert (=> d!649616 e!1387200))

(declare-fun res!933590 () Bool)

(assert (=> d!649616 (=> res!933590 e!1387200)))

(assert (=> d!649616 (= res!933590 (isEmpty!14417 (_1!14807 (findLongestMatchInner!630 r!12534 Nil!25132 (size!19638 Nil!25132) lt!807101 lt!807101 (size!19638 lt!807101)))))))

(declare-fun lt!807486 () Unit!38197)

(declare-fun choose!12775 (Regex!6001 List!25216) Unit!38197)

(assert (=> d!649616 (= lt!807486 (choose!12775 r!12534 lt!807101))))

(assert (=> d!649616 (validRegex!2277 r!12534)))

(assert (=> d!649616 (= (longestMatchIsAcceptedByMatchOrIsEmpty!607 r!12534 lt!807101) lt!807486)))

(declare-fun b!2169014 () Bool)

(assert (=> b!2169014 (= e!1387200 (matchR!2758 r!12534 (_1!14807 (findLongestMatchInner!630 r!12534 Nil!25132 (size!19638 Nil!25132) lt!807101 lt!807101 (size!19638 lt!807101)))))))

(assert (= (and d!649616 (not res!933590)) b!2169014))

(declare-fun m!2609893 () Bool)

(assert (=> d!649616 m!2609893))

(assert (=> d!649616 m!2609225))

(assert (=> d!649616 m!2609213))

(assert (=> d!649616 m!2609235))

(assert (=> d!649616 m!2609289))

(assert (=> d!649616 m!2609213))

(assert (=> d!649616 m!2609225))

(declare-fun m!2609895 () Bool)

(assert (=> d!649616 m!2609895))

(assert (=> b!2169014 m!2609225))

(assert (=> b!2169014 m!2609213))

(assert (=> b!2169014 m!2609225))

(assert (=> b!2169014 m!2609213))

(assert (=> b!2169014 m!2609235))

(declare-fun m!2609897 () Bool)

(assert (=> b!2169014 m!2609897))

(assert (=> b!2168370 d!649616))

(declare-fun d!649618 () Bool)

(assert (=> d!649618 (isPrefix!2117 (take!211 lt!807114 lt!807115) lt!807114)))

(declare-fun lt!807489 () Unit!38197)

(declare-fun choose!12776 (List!25216 Int) Unit!38197)

(assert (=> d!649618 (= lt!807489 (choose!12776 lt!807114 lt!807115))))

(assert (=> d!649618 (>= lt!807115 0)))

(assert (=> d!649618 (= (lemmaTakeIsPrefix!34 lt!807114 lt!807115) lt!807489)))

(declare-fun bs!446820 () Bool)

(assert (= bs!446820 d!649618))

(assert (=> bs!446820 m!2609215))

(assert (=> bs!446820 m!2609215))

(assert (=> bs!446820 m!2609217))

(declare-fun m!2609899 () Bool)

(assert (=> bs!446820 m!2609899))

(assert (=> b!2168370 d!649618))

(declare-fun d!649620 () Bool)

(assert (=> d!649620 (= (isEmpty!14417 (_1!14807 lt!807117)) ((_ is Nil!25132) (_1!14807 lt!807117)))))

(assert (=> b!2168370 d!649620))

(declare-fun d!649622 () Bool)

(declare-fun e!1387203 () Bool)

(assert (=> d!649622 e!1387203))

(declare-fun res!933593 () Bool)

(assert (=> d!649622 (=> res!933593 e!1387203)))

(declare-fun lt!807492 () Bool)

(assert (=> d!649622 (= res!933593 (not lt!807492))))

(assert (=> d!649622 (= lt!807492 (= lt!807101 (drop!1224 lt!807114 (- (size!19638 lt!807114) (size!19638 lt!807101)))))))

(assert (=> d!649622 (= (isSuffix!668 lt!807101 lt!807114) lt!807492)))

(declare-fun b!2169017 () Bool)

(assert (=> b!2169017 (= e!1387203 (>= (size!19638 lt!807114) (size!19638 lt!807101)))))

(assert (= (and d!649622 (not res!933593)) b!2169017))

(assert (=> d!649622 m!2609689))

(assert (=> d!649622 m!2609213))

(declare-fun m!2609901 () Bool)

(assert (=> d!649622 m!2609901))

(assert (=> b!2169017 m!2609689))

(assert (=> b!2169017 m!2609213))

(assert (=> b!2168371 d!649622))

(declare-fun d!649624 () Bool)

(assert (=> d!649624 (= (list!9630 totalInput!977) (list!9632 (c!343541 totalInput!977)))))

(declare-fun bs!446821 () Bool)

(assert (= bs!446821 d!649624))

(declare-fun m!2609903 () Bool)

(assert (=> bs!446821 m!2609903))

(assert (=> b!2168371 d!649624))

(declare-fun d!649626 () Bool)

(assert (=> d!649626 (= (list!9630 input!5540) (list!9632 (c!343541 input!5540)))))

(declare-fun bs!446822 () Bool)

(assert (= bs!446822 d!649626))

(declare-fun m!2609905 () Bool)

(assert (=> bs!446822 m!2609905))

(assert (=> b!2168371 d!649626))

(declare-fun d!649628 () Bool)

(declare-fun lt!807495 () Regex!6001)

(assert (=> d!649628 (validRegex!2277 lt!807495)))

(declare-fun generalisedUnion!508 (List!25217) Regex!6001)

(declare-fun unfocusZipperList!32 (List!25218) List!25217)

(assert (=> d!649628 (= lt!807495 (generalisedUnion!508 (unfocusZipperList!32 lt!807124)))))

(assert (=> d!649628 (= (unfocusZipper!108 lt!807124) lt!807495)))

(declare-fun bs!446823 () Bool)

(assert (= bs!446823 d!649628))

(declare-fun m!2609907 () Bool)

(assert (=> bs!446823 m!2609907))

(declare-fun m!2609909 () Bool)

(assert (=> bs!446823 m!2609909))

(assert (=> bs!446823 m!2609909))

(declare-fun m!2609911 () Bool)

(assert (=> bs!446823 m!2609911))

(assert (=> b!2168360 d!649628))

(declare-fun d!649630 () Bool)

(declare-fun e!1387206 () Bool)

(assert (=> d!649630 e!1387206))

(declare-fun res!933596 () Bool)

(assert (=> d!649630 (=> (not res!933596) (not e!1387206))))

(declare-fun lt!807498 () List!25218)

(declare-fun noDuplicate!285 (List!25218) Bool)

(assert (=> d!649630 (= res!933596 (noDuplicate!285 lt!807498))))

(declare-fun choose!12777 ((InoxSet Context!3142)) List!25218)

(assert (=> d!649630 (= lt!807498 (choose!12777 z!4055))))

(assert (=> d!649630 (= (toList!1184 z!4055) lt!807498)))

(declare-fun b!2169020 () Bool)

(declare-fun content!3411 (List!25218) (InoxSet Context!3142))

(assert (=> b!2169020 (= e!1387206 (= (content!3411 lt!807498) z!4055))))

(assert (= (and d!649630 res!933596) b!2169020))

(declare-fun m!2609913 () Bool)

(assert (=> d!649630 m!2609913))

(declare-fun m!2609915 () Bool)

(assert (=> d!649630 m!2609915))

(declare-fun m!2609917 () Bool)

(assert (=> b!2169020 m!2609917))

(assert (=> b!2168360 d!649630))

(declare-fun c!343730 () Bool)

(declare-fun d!649632 () Bool)

(assert (=> d!649632 (= c!343730 (isEmpty!14417 (take!211 (drop!1224 lt!807114 lt!807115) lt!807120)))))

(declare-fun e!1387207 () Bool)

(assert (=> d!649632 (= (matchZipper!125 z!4055 (take!211 (drop!1224 lt!807114 lt!807115) lt!807120)) e!1387207)))

(declare-fun b!2169021 () Bool)

(assert (=> b!2169021 (= e!1387207 (nullableZipper!282 z!4055))))

(declare-fun b!2169022 () Bool)

(assert (=> b!2169022 (= e!1387207 (matchZipper!125 (derivationStepZipper!122 z!4055 (head!4642 (take!211 (drop!1224 lt!807114 lt!807115) lt!807120))) (tail!3114 (take!211 (drop!1224 lt!807114 lt!807115) lt!807120))))))

(assert (= (and d!649632 c!343730) b!2169021))

(assert (= (and d!649632 (not c!343730)) b!2169022))

(assert (=> d!649632 m!2609247))

(declare-fun m!2609919 () Bool)

(assert (=> d!649632 m!2609919))

(assert (=> b!2169021 m!2609223))

(assert (=> b!2169022 m!2609247))

(declare-fun m!2609921 () Bool)

(assert (=> b!2169022 m!2609921))

(assert (=> b!2169022 m!2609921))

(declare-fun m!2609923 () Bool)

(assert (=> b!2169022 m!2609923))

(assert (=> b!2169022 m!2609247))

(declare-fun m!2609925 () Bool)

(assert (=> b!2169022 m!2609925))

(assert (=> b!2169022 m!2609923))

(assert (=> b!2169022 m!2609925))

(declare-fun m!2609927 () Bool)

(assert (=> b!2169022 m!2609927))

(assert (=> b!2168366 d!649632))

(declare-fun b!2169023 () Bool)

(declare-fun e!1387211 () List!25216)

(assert (=> b!2169023 (= e!1387211 Nil!25132)))

(declare-fun b!2169024 () Bool)

(assert (=> b!2169024 (= e!1387211 (Cons!25132 (h!30533 (drop!1224 lt!807114 lt!807115)) (take!211 (t!197778 (drop!1224 lt!807114 lt!807115)) (- lt!807120 1))))))

(declare-fun b!2169026 () Bool)

(declare-fun e!1387210 () Bool)

(declare-fun lt!807499 () List!25216)

(declare-fun e!1387208 () Int)

(assert (=> b!2169026 (= e!1387210 (= (size!19638 lt!807499) e!1387208))))

(declare-fun c!343732 () Bool)

(assert (=> b!2169026 (= c!343732 (<= lt!807120 0))))

(declare-fun b!2169027 () Bool)

(declare-fun e!1387209 () Int)

(assert (=> b!2169027 (= e!1387208 e!1387209)))

(declare-fun c!343733 () Bool)

(assert (=> b!2169027 (= c!343733 (>= lt!807120 (size!19638 (drop!1224 lt!807114 lt!807115))))))

(declare-fun d!649634 () Bool)

(assert (=> d!649634 e!1387210))

(declare-fun res!933597 () Bool)

(assert (=> d!649634 (=> (not res!933597) (not e!1387210))))

(assert (=> d!649634 (= res!933597 (= ((_ map implies) (content!3409 lt!807499) (content!3409 (drop!1224 lt!807114 lt!807115))) ((as const (InoxSet C!12148)) true)))))

(assert (=> d!649634 (= lt!807499 e!1387211)))

(declare-fun c!343731 () Bool)

(assert (=> d!649634 (= c!343731 (or ((_ is Nil!25132) (drop!1224 lt!807114 lt!807115)) (<= lt!807120 0)))))

(assert (=> d!649634 (= (take!211 (drop!1224 lt!807114 lt!807115) lt!807120) lt!807499)))

(declare-fun b!2169025 () Bool)

(assert (=> b!2169025 (= e!1387209 lt!807120)))

(declare-fun b!2169028 () Bool)

(assert (=> b!2169028 (= e!1387209 (size!19638 (drop!1224 lt!807114 lt!807115)))))

(declare-fun b!2169029 () Bool)

(assert (=> b!2169029 (= e!1387208 0)))

(assert (= (and d!649634 c!343731) b!2169023))

(assert (= (and d!649634 (not c!343731)) b!2169024))

(assert (= (and d!649634 res!933597) b!2169026))

(assert (= (and b!2169026 c!343732) b!2169029))

(assert (= (and b!2169026 (not c!343732)) b!2169027))

(assert (= (and b!2169027 c!343733) b!2169028))

(assert (= (and b!2169027 (not c!343733)) b!2169025))

(declare-fun m!2609929 () Bool)

(assert (=> b!2169026 m!2609929))

(declare-fun m!2609931 () Bool)

(assert (=> d!649634 m!2609931))

(assert (=> d!649634 m!2609245))

(declare-fun m!2609933 () Bool)

(assert (=> d!649634 m!2609933))

(declare-fun m!2609935 () Bool)

(assert (=> b!2169024 m!2609935))

(assert (=> b!2169027 m!2609245))

(declare-fun m!2609937 () Bool)

(assert (=> b!2169027 m!2609937))

(assert (=> b!2169028 m!2609245))

(assert (=> b!2169028 m!2609937))

(assert (=> b!2168366 d!649634))

(assert (=> b!2168366 d!649578))

(declare-fun b!2169033 () Bool)

(declare-fun e!1387212 () Bool)

(declare-fun lt!807500 () List!25216)

(assert (=> b!2169033 (= e!1387212 (or (not (= (_2!14807 lt!807106) Nil!25132)) (= lt!807500 (_1!14807 lt!807106))))))

(declare-fun b!2169031 () Bool)

(declare-fun e!1387213 () List!25216)

(assert (=> b!2169031 (= e!1387213 (Cons!25132 (h!30533 (_1!14807 lt!807106)) (++!6360 (t!197778 (_1!14807 lt!807106)) (_2!14807 lt!807106))))))

(declare-fun b!2169032 () Bool)

(declare-fun res!933598 () Bool)

(assert (=> b!2169032 (=> (not res!933598) (not e!1387212))))

(assert (=> b!2169032 (= res!933598 (= (size!19638 lt!807500) (+ (size!19638 (_1!14807 lt!807106)) (size!19638 (_2!14807 lt!807106)))))))

(declare-fun d!649636 () Bool)

(assert (=> d!649636 e!1387212))

(declare-fun res!933599 () Bool)

(assert (=> d!649636 (=> (not res!933599) (not e!1387212))))

(assert (=> d!649636 (= res!933599 (= (content!3409 lt!807500) ((_ map or) (content!3409 (_1!14807 lt!807106)) (content!3409 (_2!14807 lt!807106)))))))

(assert (=> d!649636 (= lt!807500 e!1387213)))

(declare-fun c!343734 () Bool)

(assert (=> d!649636 (= c!343734 ((_ is Nil!25132) (_1!14807 lt!807106)))))

(assert (=> d!649636 (= (++!6360 (_1!14807 lt!807106) (_2!14807 lt!807106)) lt!807500)))

(declare-fun b!2169030 () Bool)

(assert (=> b!2169030 (= e!1387213 (_2!14807 lt!807106))))

(assert (= (and d!649636 c!343734) b!2169030))

(assert (= (and d!649636 (not c!343734)) b!2169031))

(assert (= (and d!649636 res!933599) b!2169032))

(assert (= (and b!2169032 res!933598) b!2169033))

(declare-fun m!2609939 () Bool)

(assert (=> b!2169031 m!2609939))

(declare-fun m!2609941 () Bool)

(assert (=> b!2169032 m!2609941))

(assert (=> b!2169032 m!2609197))

(declare-fun m!2609943 () Bool)

(assert (=> b!2169032 m!2609943))

(declare-fun m!2609945 () Bool)

(assert (=> d!649636 m!2609945))

(declare-fun m!2609947 () Bool)

(assert (=> d!649636 m!2609947))

(declare-fun m!2609949 () Bool)

(assert (=> d!649636 m!2609949))

(assert (=> b!2168367 d!649636))

(declare-fun d!649638 () Bool)

(declare-fun lt!807503 () Bool)

(assert (=> d!649638 (= lt!807503 (isEmpty!14417 (list!9630 (_1!14808 lt!807105))))))

(declare-fun isEmpty!14420 (Conc!8137) Bool)

(assert (=> d!649638 (= lt!807503 (isEmpty!14420 (c!343541 (_1!14808 lt!807105))))))

(assert (=> d!649638 (= (isEmpty!14418 (_1!14808 lt!807105)) lt!807503)))

(declare-fun bs!446824 () Bool)

(assert (= bs!446824 d!649638))

(assert (=> bs!446824 m!2609253))

(assert (=> bs!446824 m!2609253))

(declare-fun m!2609951 () Bool)

(assert (=> bs!446824 m!2609951))

(declare-fun m!2609953 () Bool)

(assert (=> bs!446824 m!2609953))

(assert (=> b!2168358 d!649638))

(declare-fun b!2169034 () Bool)

(declare-fun e!1387214 () Bool)

(assert (=> b!2169034 (= e!1387214 (not (= (head!4642 (_1!14807 lt!807117)) (c!343540 r!12534))))))

(declare-fun b!2169035 () Bool)

(declare-fun e!1387216 () Bool)

(assert (=> b!2169035 (= e!1387216 e!1387214)))

(declare-fun res!933605 () Bool)

(assert (=> b!2169035 (=> res!933605 e!1387214)))

(declare-fun call!130128 () Bool)

(assert (=> b!2169035 (= res!933605 call!130128)))

(declare-fun bm!130123 () Bool)

(assert (=> bm!130123 (= call!130128 (isEmpty!14417 (_1!14807 lt!807117)))))

(declare-fun d!649640 () Bool)

(declare-fun e!1387219 () Bool)

(assert (=> d!649640 e!1387219))

(declare-fun c!343735 () Bool)

(assert (=> d!649640 (= c!343735 ((_ is EmptyExpr!6001) r!12534))))

(declare-fun lt!807504 () Bool)

(declare-fun e!1387215 () Bool)

(assert (=> d!649640 (= lt!807504 e!1387215)))

(declare-fun c!343737 () Bool)

(assert (=> d!649640 (= c!343737 (isEmpty!14417 (_1!14807 lt!807117)))))

(assert (=> d!649640 (validRegex!2277 r!12534)))

(assert (=> d!649640 (= (matchR!2758 r!12534 (_1!14807 lt!807117)) lt!807504)))

(declare-fun b!2169036 () Bool)

(declare-fun res!933606 () Bool)

(declare-fun e!1387220 () Bool)

(assert (=> b!2169036 (=> (not res!933606) (not e!1387220))))

(assert (=> b!2169036 (= res!933606 (not call!130128))))

(declare-fun b!2169037 () Bool)

(declare-fun res!933600 () Bool)

(assert (=> b!2169037 (=> (not res!933600) (not e!1387220))))

(assert (=> b!2169037 (= res!933600 (isEmpty!14417 (tail!3114 (_1!14807 lt!807117))))))

(declare-fun b!2169038 () Bool)

(declare-fun res!933601 () Bool)

(declare-fun e!1387217 () Bool)

(assert (=> b!2169038 (=> res!933601 e!1387217)))

(assert (=> b!2169038 (= res!933601 e!1387220)))

(declare-fun res!933607 () Bool)

(assert (=> b!2169038 (=> (not res!933607) (not e!1387220))))

(assert (=> b!2169038 (= res!933607 lt!807504)))

(declare-fun b!2169039 () Bool)

(assert (=> b!2169039 (= e!1387215 (matchR!2758 (derivativeStep!1436 r!12534 (head!4642 (_1!14807 lt!807117))) (tail!3114 (_1!14807 lt!807117))))))

(declare-fun b!2169040 () Bool)

(declare-fun e!1387218 () Bool)

(assert (=> b!2169040 (= e!1387218 (not lt!807504))))

(declare-fun b!2169041 () Bool)

(assert (=> b!2169041 (= e!1387220 (= (head!4642 (_1!14807 lt!807117)) (c!343540 r!12534)))))

(declare-fun b!2169042 () Bool)

(declare-fun res!933602 () Bool)

(assert (=> b!2169042 (=> res!933602 e!1387217)))

(assert (=> b!2169042 (= res!933602 (not ((_ is ElementMatch!6001) r!12534)))))

(assert (=> b!2169042 (= e!1387218 e!1387217)))

(declare-fun b!2169043 () Bool)

(declare-fun res!933603 () Bool)

(assert (=> b!2169043 (=> res!933603 e!1387214)))

(assert (=> b!2169043 (= res!933603 (not (isEmpty!14417 (tail!3114 (_1!14807 lt!807117)))))))

(declare-fun b!2169044 () Bool)

(assert (=> b!2169044 (= e!1387219 (= lt!807504 call!130128))))

(declare-fun b!2169045 () Bool)

(assert (=> b!2169045 (= e!1387215 (nullable!1692 r!12534))))

(declare-fun b!2169046 () Bool)

(assert (=> b!2169046 (= e!1387219 e!1387218)))

(declare-fun c!343736 () Bool)

(assert (=> b!2169046 (= c!343736 ((_ is EmptyLang!6001) r!12534))))

(declare-fun b!2169047 () Bool)

(assert (=> b!2169047 (= e!1387217 e!1387216)))

(declare-fun res!933604 () Bool)

(assert (=> b!2169047 (=> (not res!933604) (not e!1387216))))

(assert (=> b!2169047 (= res!933604 (not lt!807504))))

(assert (= (and d!649640 c!343737) b!2169045))

(assert (= (and d!649640 (not c!343737)) b!2169039))

(assert (= (and d!649640 c!343735) b!2169044))

(assert (= (and d!649640 (not c!343735)) b!2169046))

(assert (= (and b!2169046 c!343736) b!2169040))

(assert (= (and b!2169046 (not c!343736)) b!2169042))

(assert (= (and b!2169042 (not res!933602)) b!2169038))

(assert (= (and b!2169038 res!933607) b!2169036))

(assert (= (and b!2169036 res!933606) b!2169037))

(assert (= (and b!2169037 res!933600) b!2169041))

(assert (= (and b!2169038 (not res!933601)) b!2169047))

(assert (= (and b!2169047 res!933604) b!2169035))

(assert (= (and b!2169035 (not res!933605)) b!2169043))

(assert (= (and b!2169043 (not res!933603)) b!2169034))

(assert (= (or b!2169044 b!2169035 b!2169036) bm!130123))

(declare-fun m!2609955 () Bool)

(assert (=> b!2169037 m!2609955))

(assert (=> b!2169037 m!2609955))

(declare-fun m!2609957 () Bool)

(assert (=> b!2169037 m!2609957))

(assert (=> d!649640 m!2609219))

(assert (=> d!649640 m!2609289))

(declare-fun m!2609959 () Bool)

(assert (=> b!2169041 m!2609959))

(assert (=> b!2169039 m!2609959))

(assert (=> b!2169039 m!2609959))

(declare-fun m!2609961 () Bool)

(assert (=> b!2169039 m!2609961))

(assert (=> b!2169039 m!2609955))

(assert (=> b!2169039 m!2609961))

(assert (=> b!2169039 m!2609955))

(declare-fun m!2609963 () Bool)

(assert (=> b!2169039 m!2609963))

(assert (=> b!2169045 m!2609365))

(assert (=> b!2169034 m!2609959))

(assert (=> b!2169043 m!2609955))

(assert (=> b!2169043 m!2609955))

(assert (=> b!2169043 m!2609957))

(assert (=> bm!130123 m!2609219))

(assert (=> b!2168368 d!649640))

(declare-fun b!2169061 () Bool)

(declare-fun e!1387223 () Bool)

(declare-fun tp!676921 () Bool)

(declare-fun tp!676920 () Bool)

(assert (=> b!2169061 (= e!1387223 (and tp!676921 tp!676920))))

(declare-fun b!2169058 () Bool)

(assert (=> b!2169058 (= e!1387223 tp_is_empty!9609)))

(declare-fun b!2169060 () Bool)

(declare-fun tp!676922 () Bool)

(assert (=> b!2169060 (= e!1387223 tp!676922)))

(declare-fun b!2169059 () Bool)

(declare-fun tp!676919 () Bool)

(declare-fun tp!676918 () Bool)

(assert (=> b!2169059 (= e!1387223 (and tp!676919 tp!676918))))

(assert (=> b!2168369 (= tp!676846 e!1387223)))

(assert (= (and b!2168369 ((_ is ElementMatch!6001) (reg!6330 r!12534))) b!2169058))

(assert (= (and b!2168369 ((_ is Concat!10303) (reg!6330 r!12534))) b!2169059))

(assert (= (and b!2168369 ((_ is Star!6001) (reg!6330 r!12534))) b!2169060))

(assert (= (and b!2168369 ((_ is Union!6001) (reg!6330 r!12534))) b!2169061))

(declare-fun e!1387229 () Bool)

(declare-fun b!2169070 () Bool)

(declare-fun tp!676931 () Bool)

(declare-fun tp!676930 () Bool)

(assert (=> b!2169070 (= e!1387229 (and (inv!33331 (left!19320 (c!343541 totalInput!977))) tp!676931 (inv!33331 (right!19650 (c!343541 totalInput!977))) tp!676930))))

(declare-fun b!2169072 () Bool)

(declare-fun e!1387228 () Bool)

(declare-fun tp!676929 () Bool)

(assert (=> b!2169072 (= e!1387228 tp!676929)))

(declare-fun b!2169071 () Bool)

(declare-fun inv!33338 (IArray!16279) Bool)

(assert (=> b!2169071 (= e!1387229 (and (inv!33338 (xs!11079 (c!343541 totalInput!977))) e!1387228))))

(assert (=> b!2168365 (= tp!676842 (and (inv!33331 (c!343541 totalInput!977)) e!1387229))))

(assert (= (and b!2168365 ((_ is Node!8137) (c!343541 totalInput!977))) b!2169070))

(assert (= b!2169071 b!2169072))

(assert (= (and b!2168365 ((_ is Leaf!11905) (c!343541 totalInput!977))) b!2169071))

(declare-fun m!2609965 () Bool)

(assert (=> b!2169070 m!2609965))

(declare-fun m!2609967 () Bool)

(assert (=> b!2169070 m!2609967))

(declare-fun m!2609969 () Bool)

(assert (=> b!2169071 m!2609969))

(assert (=> b!2168365 m!2609287))

(declare-fun tp!676933 () Bool)

(declare-fun e!1387231 () Bool)

(declare-fun b!2169073 () Bool)

(declare-fun tp!676934 () Bool)

(assert (=> b!2169073 (= e!1387231 (and (inv!33331 (left!19320 (c!343541 input!5540))) tp!676934 (inv!33331 (right!19650 (c!343541 input!5540))) tp!676933))))

(declare-fun b!2169075 () Bool)

(declare-fun e!1387230 () Bool)

(declare-fun tp!676932 () Bool)

(assert (=> b!2169075 (= e!1387230 tp!676932)))

(declare-fun b!2169074 () Bool)

(assert (=> b!2169074 (= e!1387231 (and (inv!33338 (xs!11079 (c!343541 input!5540))) e!1387230))))

(assert (=> b!2168355 (= tp!676840 (and (inv!33331 (c!343541 input!5540)) e!1387231))))

(assert (= (and b!2168355 ((_ is Node!8137) (c!343541 input!5540))) b!2169073))

(assert (= b!2169074 b!2169075))

(assert (= (and b!2168355 ((_ is Leaf!11905) (c!343541 input!5540))) b!2169074))

(declare-fun m!2609971 () Bool)

(assert (=> b!2169073 m!2609971))

(declare-fun m!2609973 () Bool)

(assert (=> b!2169073 m!2609973))

(declare-fun m!2609975 () Bool)

(assert (=> b!2169074 m!2609975))

(assert (=> b!2168355 m!2609277))

(declare-fun b!2169080 () Bool)

(declare-fun e!1387234 () Bool)

(declare-fun tp!676939 () Bool)

(declare-fun tp!676940 () Bool)

(assert (=> b!2169080 (= e!1387234 (and tp!676939 tp!676940))))

(assert (=> b!2168353 (= tp!676841 e!1387234)))

(assert (= (and b!2168353 ((_ is Cons!25133) (exprs!2071 setElem!18140))) b!2169080))

(declare-fun b!2169084 () Bool)

(declare-fun e!1387235 () Bool)

(declare-fun tp!676944 () Bool)

(declare-fun tp!676943 () Bool)

(assert (=> b!2169084 (= e!1387235 (and tp!676944 tp!676943))))

(declare-fun b!2169081 () Bool)

(assert (=> b!2169081 (= e!1387235 tp_is_empty!9609)))

(declare-fun b!2169083 () Bool)

(declare-fun tp!676945 () Bool)

(assert (=> b!2169083 (= e!1387235 tp!676945)))

(declare-fun b!2169082 () Bool)

(declare-fun tp!676942 () Bool)

(declare-fun tp!676941 () Bool)

(assert (=> b!2169082 (= e!1387235 (and tp!676942 tp!676941))))

(assert (=> b!2168357 (= tp!676845 e!1387235)))

(assert (= (and b!2168357 ((_ is ElementMatch!6001) (regOne!12514 r!12534))) b!2169081))

(assert (= (and b!2168357 ((_ is Concat!10303) (regOne!12514 r!12534))) b!2169082))

(assert (= (and b!2168357 ((_ is Star!6001) (regOne!12514 r!12534))) b!2169083))

(assert (= (and b!2168357 ((_ is Union!6001) (regOne!12514 r!12534))) b!2169084))

(declare-fun b!2169088 () Bool)

(declare-fun e!1387236 () Bool)

(declare-fun tp!676949 () Bool)

(declare-fun tp!676948 () Bool)

(assert (=> b!2169088 (= e!1387236 (and tp!676949 tp!676948))))

(declare-fun b!2169085 () Bool)

(assert (=> b!2169085 (= e!1387236 tp_is_empty!9609)))

(declare-fun b!2169087 () Bool)

(declare-fun tp!676950 () Bool)

(assert (=> b!2169087 (= e!1387236 tp!676950)))

(declare-fun b!2169086 () Bool)

(declare-fun tp!676947 () Bool)

(declare-fun tp!676946 () Bool)

(assert (=> b!2169086 (= e!1387236 (and tp!676947 tp!676946))))

(assert (=> b!2168357 (= tp!676847 e!1387236)))

(assert (= (and b!2168357 ((_ is ElementMatch!6001) (regTwo!12514 r!12534))) b!2169085))

(assert (= (and b!2168357 ((_ is Concat!10303) (regTwo!12514 r!12534))) b!2169086))

(assert (= (and b!2168357 ((_ is Star!6001) (regTwo!12514 r!12534))) b!2169087))

(assert (= (and b!2168357 ((_ is Union!6001) (regTwo!12514 r!12534))) b!2169088))

(declare-fun b!2169092 () Bool)

(declare-fun e!1387237 () Bool)

(declare-fun tp!676954 () Bool)

(declare-fun tp!676953 () Bool)

(assert (=> b!2169092 (= e!1387237 (and tp!676954 tp!676953))))

(declare-fun b!2169089 () Bool)

(assert (=> b!2169089 (= e!1387237 tp_is_empty!9609)))

(declare-fun b!2169091 () Bool)

(declare-fun tp!676955 () Bool)

(assert (=> b!2169091 (= e!1387237 tp!676955)))

(declare-fun b!2169090 () Bool)

(declare-fun tp!676952 () Bool)

(declare-fun tp!676951 () Bool)

(assert (=> b!2169090 (= e!1387237 (and tp!676952 tp!676951))))

(assert (=> b!2168362 (= tp!676848 e!1387237)))

(assert (= (and b!2168362 ((_ is ElementMatch!6001) (regOne!12515 r!12534))) b!2169089))

(assert (= (and b!2168362 ((_ is Concat!10303) (regOne!12515 r!12534))) b!2169090))

(assert (= (and b!2168362 ((_ is Star!6001) (regOne!12515 r!12534))) b!2169091))

(assert (= (and b!2168362 ((_ is Union!6001) (regOne!12515 r!12534))) b!2169092))

(declare-fun b!2169096 () Bool)

(declare-fun e!1387238 () Bool)

(declare-fun tp!676959 () Bool)

(declare-fun tp!676958 () Bool)

(assert (=> b!2169096 (= e!1387238 (and tp!676959 tp!676958))))

(declare-fun b!2169093 () Bool)

(assert (=> b!2169093 (= e!1387238 tp_is_empty!9609)))

(declare-fun b!2169095 () Bool)

(declare-fun tp!676960 () Bool)

(assert (=> b!2169095 (= e!1387238 tp!676960)))

(declare-fun b!2169094 () Bool)

(declare-fun tp!676957 () Bool)

(declare-fun tp!676956 () Bool)

(assert (=> b!2169094 (= e!1387238 (and tp!676957 tp!676956))))

(assert (=> b!2168362 (= tp!676844 e!1387238)))

(assert (= (and b!2168362 ((_ is ElementMatch!6001) (regTwo!12515 r!12534))) b!2169093))

(assert (= (and b!2168362 ((_ is Concat!10303) (regTwo!12515 r!12534))) b!2169094))

(assert (= (and b!2168362 ((_ is Star!6001) (regTwo!12515 r!12534))) b!2169095))

(assert (= (and b!2168362 ((_ is Union!6001) (regTwo!12515 r!12534))) b!2169096))

(declare-fun condSetEmpty!18146 () Bool)

(assert (=> setNonEmpty!18140 (= condSetEmpty!18146 (= setRest!18140 ((as const (Array Context!3142 Bool)) false)))))

(declare-fun setRes!18146 () Bool)

(assert (=> setNonEmpty!18140 (= tp!676843 setRes!18146)))

(declare-fun setIsEmpty!18146 () Bool)

(assert (=> setIsEmpty!18146 setRes!18146))

(declare-fun tp!676965 () Bool)

(declare-fun e!1387241 () Bool)

(declare-fun setNonEmpty!18146 () Bool)

(declare-fun setElem!18146 () Context!3142)

(assert (=> setNonEmpty!18146 (= setRes!18146 (and tp!676965 (inv!33330 setElem!18146) e!1387241))))

(declare-fun setRest!18146 () (InoxSet Context!3142))

(assert (=> setNonEmpty!18146 (= setRest!18140 ((_ map or) (store ((as const (Array Context!3142 Bool)) false) setElem!18146 true) setRest!18146))))

(declare-fun b!2169101 () Bool)

(declare-fun tp!676966 () Bool)

(assert (=> b!2169101 (= e!1387241 tp!676966)))

(assert (= (and setNonEmpty!18140 condSetEmpty!18146) setIsEmpty!18146))

(assert (= (and setNonEmpty!18140 (not condSetEmpty!18146)) setNonEmpty!18146))

(assert (= setNonEmpty!18146 b!2169101))

(declare-fun m!2609977 () Bool)

(assert (=> setNonEmpty!18146 m!2609977))

(check-sat (not b!2169094) (not b!2168574) (not b!2168985) (not b!2169095) (not b!2168584) (not b!2168539) (not b!2168968) (not d!649582) (not b!2169101) (not b!2168526) (not d!649590) (not bm!130117) (not b!2169026) (not d!649628) (not b!2168588) (not d!649474) (not bm!130116) (not b!2169024) (not b!2168966) (not b!2169088) (not b!2169086) (not b!2169071) (not d!649576) (not d!649634) (not b!2168586) (not b!2169083) (not d!649478) (not d!649636) (not b!2169072) (not b!2168777) (not d!649494) (not b!2169011) (not b!2169031) (not b!2168805) (not b!2168977) (not b!2168964) (not bm!130115) (not b!2169061) (not b!2169009) (not bm!130095) (not bm!130123) (not bm!130121) (not b!2169007) (not b!2169034) (not bm!130118) (not d!649498) (not b!2168975) (not b!2168554) (not b!2169028) (not bm!130122) (not b!2168809) (not b!2168592) (not d!649454) (not b!2168528) (not b!2168530) (not b!2169045) (not b!2168839) (not b!2169082) (not b!2169096) (not d!649610) (not setNonEmpty!18146) (not b!2168992) (not d!649564) (not b!2169074) (not d!649578) (not d!649632) (not b!2168991) (not d!649622) (not b!2169084) (not b!2169090) (not b!2169091) (not b!2169020) (not b!2168541) tp_is_empty!9609 (not d!649638) (not d!649630) (not b!2168519) (not d!649488) (not b!2169006) (not b!2169060) (not b!2168983) (not d!649480) (not bm!130048) (not b!2168862) (not d!649592) (not b!2168522) (not b!2169092) (not d!649482) (not b!2168581) (not d!649626) (not b!2168984) (not b!2168524) (not b!2169022) (not b!2169073) (not b!2168544) (not b!2169014) (not b!2169017) (not b!2168836) (not b!2169043) (not b!2168863) (not d!649640) (not d!649624) (not b!2168864) (not b!2169080) (not b!2169075) (not d!649476) (not bm!130119) (not b!2169010) (not b!2169087) (not b!2169039) (not bm!130045) (not d!649486) (not b!2168967) (not b!2168861) (not b!2169032) (not d!649492) (not d!649618) (not b!2168832) (not b!2169021) (not b!2169059) (not b!2169070) (not b!2168579) (not b!2169041) (not b!2168355) (not b!2168865) (not d!649484) (not d!649496) (not b!2168590) (not b!2168808) (not b!2168807) (not b!2168365) (not bm!130092) (not bm!130120) (not bm!130090) (not b!2168555) (not d!649606) (not b!2168981) (not d!649574) (not b!2168976) (not b!2169037) (not bm!130049) (not d!649602) (not b!2168580) (not b!2168979) (not b!2169027) (not d!649472) (not d!649608) (not d!649616) (not b!2168542))
(check-sat)
