; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!725932 () Bool)

(assert start!725932)

(declare-fun b!7502652 () Bool)

(declare-fun e!4473186 () Bool)

(declare-fun e!4473189 () Bool)

(assert (=> b!7502652 (= e!4473186 e!4473189)))

(declare-fun res!3009850 () Bool)

(assert (=> b!7502652 (=> res!3009850 e!4473189)))

(declare-datatypes ((C!39662 0))(
  ( (C!39663 (val!30229 Int)) )
))
(declare-datatypes ((Regex!19678 0))(
  ( (ElementMatch!19678 (c!1385024 C!39662)) (Concat!28523 (regOne!39868 Regex!19678) (regTwo!39868 Regex!19678)) (EmptyExpr!19678) (Star!19678 (reg!20007 Regex!19678)) (EmptyLang!19678) (Union!19678 (regOne!39869 Regex!19678) (regTwo!39869 Regex!19678)) )
))
(declare-datatypes ((List!72429 0))(
  ( (Nil!72305) (Cons!72305 (h!78753 Regex!19678) (t!386998 List!72429)) )
))
(declare-datatypes ((Context!16860 0))(
  ( (Context!16861 (exprs!8930 List!72429)) )
))
(declare-fun z!3716 () (Set Context!16860))

(declare-fun lostCauseZipper!1366 ((Set Context!16860)) Bool)

(assert (=> b!7502652 (= res!3009850 (lostCauseZipper!1366 z!3716))))

(declare-datatypes ((List!72430 0))(
  ( (Nil!72306) (Cons!72306 (h!78754 C!39662) (t!386999 List!72430)) )
))
(declare-fun testedSuffix!164 () List!72430)

(declare-fun lt!2632746 () List!72430)

(assert (=> b!7502652 (and (= testedSuffix!164 lt!2632746) (= lt!2632746 testedSuffix!164))))

(declare-datatypes ((Unit!166244 0))(
  ( (Unit!166245) )
))
(declare-fun lt!2632742 () Unit!166244)

(declare-fun totalInput!779 () List!72430)

(declare-fun testedP!204 () List!72430)

(declare-fun lemmaSamePrefixThenSameSuffix!2769 (List!72430 List!72430 List!72430 List!72430 List!72430) Unit!166244)

(assert (=> b!7502652 (= lt!2632742 (lemmaSamePrefixThenSameSuffix!2769 testedP!204 testedSuffix!164 testedP!204 lt!2632746 totalInput!779))))

(declare-fun getSuffix!3466 (List!72430 List!72430) List!72430)

(assert (=> b!7502652 (= lt!2632746 (getSuffix!3466 totalInput!779 testedP!204))))

(declare-fun b!7502653 () Bool)

(declare-fun e!4473181 () Bool)

(declare-fun e!4473185 () Bool)

(assert (=> b!7502653 (= e!4473181 e!4473185)))

(declare-fun res!3009856 () Bool)

(assert (=> b!7502653 (=> (not res!3009856) (not e!4473185))))

(declare-fun testedPSize!164 () Int)

(declare-fun lt!2632738 () Int)

(assert (=> b!7502653 (= res!3009856 (= testedPSize!164 lt!2632738))))

(declare-fun size!42239 (List!72430) Int)

(assert (=> b!7502653 (= lt!2632738 (size!42239 testedP!204))))

(declare-fun b!7502654 () Bool)

(declare-fun e!4473190 () Bool)

(declare-fun e!4473191 () Bool)

(assert (=> b!7502654 (= e!4473190 e!4473191)))

(declare-fun res!3009853 () Bool)

(assert (=> b!7502654 (=> res!3009853 e!4473191)))

(declare-fun nullableZipper!3158 ((Set Context!16860)) Bool)

(assert (=> b!7502654 (= res!3009853 (not (nullableZipper!3158 z!3716)))))

(declare-fun lt!2632745 () List!72430)

(declare-fun lt!2632744 () List!72430)

(declare-fun ++!17297 (List!72430 List!72430) List!72430)

(assert (=> b!7502654 (= (++!17297 lt!2632745 lt!2632744) totalInput!779)))

(declare-fun lt!2632739 () C!39662)

(declare-fun lt!2632743 () Unit!166244)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3138 (List!72430 C!39662 List!72430 List!72430) Unit!166244)

(assert (=> b!7502654 (= lt!2632743 (lemmaMoveElementToOtherListKeepsConcatEq!3138 testedP!204 lt!2632739 lt!2632744 totalInput!779))))

(declare-fun tail!14970 (List!72430) List!72430)

(assert (=> b!7502654 (= lt!2632744 (tail!14970 testedSuffix!164))))

(declare-fun isPrefix!5964 (List!72430 List!72430) Bool)

(declare-fun head!15404 (List!72430) C!39662)

(assert (=> b!7502654 (isPrefix!5964 (++!17297 testedP!204 (Cons!72306 (head!15404 lt!2632746) Nil!72306)) totalInput!779)))

(declare-fun lt!2632749 () Unit!166244)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1105 (List!72430 List!72430) Unit!166244)

(assert (=> b!7502654 (= lt!2632749 (lemmaAddHeadSuffixToPrefixStillPrefix!1105 testedP!204 totalInput!779))))

(assert (=> b!7502654 (= lt!2632745 (++!17297 testedP!204 (Cons!72306 lt!2632739 Nil!72306)))))

(assert (=> b!7502654 (= lt!2632739 (head!15404 testedSuffix!164))))

(declare-fun b!7502655 () Bool)

(declare-fun e!4473184 () Bool)

(declare-fun tp_is_empty!49677 () Bool)

(declare-fun tp!2177932 () Bool)

(assert (=> b!7502655 (= e!4473184 (and tp_is_empty!49677 tp!2177932))))

(declare-fun b!7502656 () Bool)

(declare-fun e!4473187 () Bool)

(declare-fun tp!2177931 () Bool)

(assert (=> b!7502656 (= e!4473187 tp!2177931)))

(declare-fun b!7502658 () Bool)

(assert (=> b!7502658 (= e!4473191 (not (= testedSuffix!164 Nil!72306)))))

(declare-fun setElem!56873 () Context!16860)

(declare-fun setNonEmpty!56873 () Bool)

(declare-fun setRes!56873 () Bool)

(declare-fun tp!2177930 () Bool)

(declare-fun inv!92411 (Context!16860) Bool)

(assert (=> setNonEmpty!56873 (= setRes!56873 (and tp!2177930 (inv!92411 setElem!56873) e!4473187))))

(declare-fun setRest!56873 () (Set Context!16860))

(assert (=> setNonEmpty!56873 (= z!3716 (set.union (set.insert setElem!56873 (as set.empty (Set Context!16860))) setRest!56873))))

(declare-fun b!7502659 () Bool)

(declare-fun e!4473192 () Bool)

(assert (=> b!7502659 (= e!4473192 (not e!4473186))))

(declare-fun res!3009854 () Bool)

(assert (=> b!7502659 (=> res!3009854 e!4473186)))

(assert (=> b!7502659 (= res!3009854 (not (isPrefix!5964 testedP!204 totalInput!779)))))

(declare-fun lt!2632748 () List!72430)

(assert (=> b!7502659 (isPrefix!5964 testedP!204 lt!2632748)))

(declare-fun lt!2632747 () Unit!166244)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3677 (List!72430 List!72430) Unit!166244)

(assert (=> b!7502659 (= lt!2632747 (lemmaConcatTwoListThenFirstIsPrefix!3677 testedP!204 testedSuffix!164))))

(declare-fun b!7502660 () Bool)

(declare-fun e!4473183 () Bool)

(declare-fun tp!2177929 () Bool)

(assert (=> b!7502660 (= e!4473183 (and tp_is_empty!49677 tp!2177929))))

(declare-fun b!7502661 () Bool)

(assert (=> b!7502661 (= e!4473185 e!4473192)))

(declare-fun res!3009849 () Bool)

(assert (=> b!7502661 (=> (not res!3009849) (not e!4473192))))

(declare-fun totalInputSize!226 () Int)

(declare-fun lt!2632741 () Int)

(assert (=> b!7502661 (= res!3009849 (= totalInputSize!226 lt!2632741))))

(assert (=> b!7502661 (= lt!2632741 (size!42239 totalInput!779))))

(declare-fun setIsEmpty!56873 () Bool)

(assert (=> setIsEmpty!56873 setRes!56873))

(declare-fun b!7502662 () Bool)

(declare-fun res!3009855 () Bool)

(assert (=> b!7502662 (=> res!3009855 e!4473189)))

(assert (=> b!7502662 (= res!3009855 (= testedPSize!164 totalInputSize!226))))

(declare-fun b!7502663 () Bool)

(declare-fun e!4473182 () Unit!166244)

(declare-fun Unit!166246 () Unit!166244)

(assert (=> b!7502663 (= e!4473182 Unit!166246)))

(declare-fun b!7502657 () Bool)

(assert (=> b!7502657 (= e!4473189 e!4473190)))

(declare-fun res!3009852 () Bool)

(assert (=> b!7502657 (=> res!3009852 e!4473190)))

(assert (=> b!7502657 (= res!3009852 (>= lt!2632738 lt!2632741))))

(declare-fun lt!2632740 () Unit!166244)

(assert (=> b!7502657 (= lt!2632740 e!4473182)))

(declare-fun c!1385023 () Bool)

(assert (=> b!7502657 (= c!1385023 (= lt!2632738 lt!2632741))))

(assert (=> b!7502657 (<= lt!2632738 lt!2632741)))

(declare-fun lt!2632750 () Unit!166244)

(declare-fun lemmaIsPrefixThenSmallerEqSize!969 (List!72430 List!72430) Unit!166244)

(assert (=> b!7502657 (= lt!2632750 (lemmaIsPrefixThenSmallerEqSize!969 testedP!204 totalInput!779))))

(declare-fun res!3009851 () Bool)

(assert (=> start!725932 (=> (not res!3009851) (not e!4473181))))

(assert (=> start!725932 (= res!3009851 (= lt!2632748 totalInput!779))))

(assert (=> start!725932 (= lt!2632748 (++!17297 testedP!204 testedSuffix!164))))

(assert (=> start!725932 e!4473181))

(assert (=> start!725932 e!4473184))

(assert (=> start!725932 true))

(assert (=> start!725932 e!4473183))

(declare-fun e!4473188 () Bool)

(assert (=> start!725932 e!4473188))

(declare-fun condSetEmpty!56873 () Bool)

(assert (=> start!725932 (= condSetEmpty!56873 (= z!3716 (as set.empty (Set Context!16860))))))

(assert (=> start!725932 setRes!56873))

(declare-fun b!7502664 () Bool)

(declare-fun tp!2177928 () Bool)

(assert (=> b!7502664 (= e!4473188 (and tp_is_empty!49677 tp!2177928))))

(declare-fun b!7502665 () Bool)

(declare-fun Unit!166247 () Unit!166244)

(assert (=> b!7502665 (= e!4473182 Unit!166247)))

(declare-fun lt!2632737 () Unit!166244)

(declare-fun lemmaIsPrefixRefl!3813 (List!72430 List!72430) Unit!166244)

(assert (=> b!7502665 (= lt!2632737 (lemmaIsPrefixRefl!3813 totalInput!779 totalInput!779))))

(assert (=> b!7502665 (isPrefix!5964 totalInput!779 totalInput!779)))

(declare-fun lt!2632751 () Unit!166244)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1467 (List!72430 List!72430 List!72430) Unit!166244)

(assert (=> b!7502665 (= lt!2632751 (lemmaIsPrefixSameLengthThenSameList!1467 totalInput!779 testedP!204 totalInput!779))))

(assert (=> b!7502665 false))

(assert (= (and start!725932 res!3009851) b!7502653))

(assert (= (and b!7502653 res!3009856) b!7502661))

(assert (= (and b!7502661 res!3009849) b!7502659))

(assert (= (and b!7502659 (not res!3009854)) b!7502652))

(assert (= (and b!7502652 (not res!3009850)) b!7502662))

(assert (= (and b!7502662 (not res!3009855)) b!7502657))

(assert (= (and b!7502657 c!1385023) b!7502665))

(assert (= (and b!7502657 (not c!1385023)) b!7502663))

(assert (= (and b!7502657 (not res!3009852)) b!7502654))

(assert (= (and b!7502654 (not res!3009853)) b!7502658))

(assert (= (and start!725932 (is-Cons!72306 testedSuffix!164)) b!7502655))

(assert (= (and start!725932 (is-Cons!72306 totalInput!779)) b!7502660))

(assert (= (and start!725932 (is-Cons!72306 testedP!204)) b!7502664))

(assert (= (and start!725932 condSetEmpty!56873) setIsEmpty!56873))

(assert (= (and start!725932 (not condSetEmpty!56873)) setNonEmpty!56873))

(assert (= setNonEmpty!56873 b!7502656))

(declare-fun m!8084234 () Bool)

(assert (=> setNonEmpty!56873 m!8084234))

(declare-fun m!8084236 () Bool)

(assert (=> b!7502661 m!8084236))

(declare-fun m!8084238 () Bool)

(assert (=> b!7502654 m!8084238))

(declare-fun m!8084240 () Bool)

(assert (=> b!7502654 m!8084240))

(declare-fun m!8084242 () Bool)

(assert (=> b!7502654 m!8084242))

(declare-fun m!8084244 () Bool)

(assert (=> b!7502654 m!8084244))

(declare-fun m!8084246 () Bool)

(assert (=> b!7502654 m!8084246))

(declare-fun m!8084248 () Bool)

(assert (=> b!7502654 m!8084248))

(declare-fun m!8084250 () Bool)

(assert (=> b!7502654 m!8084250))

(declare-fun m!8084252 () Bool)

(assert (=> b!7502654 m!8084252))

(assert (=> b!7502654 m!8084248))

(declare-fun m!8084254 () Bool)

(assert (=> b!7502654 m!8084254))

(declare-fun m!8084256 () Bool)

(assert (=> b!7502654 m!8084256))

(declare-fun m!8084258 () Bool)

(assert (=> b!7502653 m!8084258))

(declare-fun m!8084260 () Bool)

(assert (=> b!7502659 m!8084260))

(declare-fun m!8084262 () Bool)

(assert (=> b!7502659 m!8084262))

(declare-fun m!8084264 () Bool)

(assert (=> b!7502659 m!8084264))

(declare-fun m!8084266 () Bool)

(assert (=> b!7502652 m!8084266))

(declare-fun m!8084268 () Bool)

(assert (=> b!7502652 m!8084268))

(declare-fun m!8084270 () Bool)

(assert (=> b!7502652 m!8084270))

(declare-fun m!8084272 () Bool)

(assert (=> b!7502665 m!8084272))

(declare-fun m!8084274 () Bool)

(assert (=> b!7502665 m!8084274))

(declare-fun m!8084276 () Bool)

(assert (=> b!7502665 m!8084276))

(declare-fun m!8084278 () Bool)

(assert (=> start!725932 m!8084278))

(declare-fun m!8084280 () Bool)

(assert (=> b!7502657 m!8084280))

(push 1)

(assert (not b!7502664))

(assert (not b!7502655))

(assert (not start!725932))

(assert (not b!7502661))

(assert (not b!7502659))

(assert (not b!7502660))

(assert (not setNonEmpty!56873))

(assert (not b!7502653))

(assert (not b!7502652))

(assert tp_is_empty!49677)

(assert (not b!7502657))

(assert (not b!7502656))

(assert (not b!7502665))

(assert (not b!7502654))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7502727 () Bool)

(declare-fun e!4473237 () Bool)

(declare-fun lt!2632801 () List!72430)

(assert (=> b!7502727 (= e!4473237 (or (not (= lt!2632744 Nil!72306)) (= lt!2632801 lt!2632745)))))

(declare-fun b!7502724 () Bool)

(declare-fun e!4473238 () List!72430)

(assert (=> b!7502724 (= e!4473238 lt!2632744)))

(declare-fun b!7502726 () Bool)

(declare-fun res!3009890 () Bool)

(assert (=> b!7502726 (=> (not res!3009890) (not e!4473237))))

(assert (=> b!7502726 (= res!3009890 (= (size!42239 lt!2632801) (+ (size!42239 lt!2632745) (size!42239 lt!2632744))))))

(declare-fun b!7502725 () Bool)

(assert (=> b!7502725 (= e!4473238 (Cons!72306 (h!78754 lt!2632745) (++!17297 (t!386999 lt!2632745) lt!2632744)))))

(declare-fun d!2302805 () Bool)

(assert (=> d!2302805 e!4473237))

(declare-fun res!3009889 () Bool)

(assert (=> d!2302805 (=> (not res!3009889) (not e!4473237))))

(declare-fun content!15280 (List!72430) (Set C!39662))

(assert (=> d!2302805 (= res!3009889 (= (content!15280 lt!2632801) (set.union (content!15280 lt!2632745) (content!15280 lt!2632744))))))

(assert (=> d!2302805 (= lt!2632801 e!4473238)))

(declare-fun c!1385033 () Bool)

(assert (=> d!2302805 (= c!1385033 (is-Nil!72306 lt!2632745))))

(assert (=> d!2302805 (= (++!17297 lt!2632745 lt!2632744) lt!2632801)))

(assert (= (and d!2302805 c!1385033) b!7502724))

(assert (= (and d!2302805 (not c!1385033)) b!7502725))

(assert (= (and d!2302805 res!3009889) b!7502726))

(assert (= (and b!7502726 res!3009890) b!7502727))

(declare-fun m!8084330 () Bool)

(assert (=> b!7502726 m!8084330))

(declare-fun m!8084332 () Bool)

(assert (=> b!7502726 m!8084332))

(declare-fun m!8084334 () Bool)

(assert (=> b!7502726 m!8084334))

(declare-fun m!8084336 () Bool)

(assert (=> b!7502725 m!8084336))

(declare-fun m!8084338 () Bool)

(assert (=> d!2302805 m!8084338))

(declare-fun m!8084340 () Bool)

(assert (=> d!2302805 m!8084340))

(declare-fun m!8084342 () Bool)

(assert (=> d!2302805 m!8084342))

(assert (=> b!7502654 d!2302805))

(declare-fun d!2302809 () Bool)

(assert (=> d!2302809 (= (tail!14970 testedSuffix!164) (t!386999 testedSuffix!164))))

(assert (=> b!7502654 d!2302809))

(declare-fun d!2302811 () Bool)

(assert (=> d!2302811 (= (head!15404 testedSuffix!164) (h!78754 testedSuffix!164))))

(assert (=> b!7502654 d!2302811))

(declare-fun d!2302813 () Bool)

(assert (=> d!2302813 (= (head!15404 lt!2632746) (h!78754 lt!2632746))))

(assert (=> b!7502654 d!2302813))

(declare-fun d!2302815 () Bool)

(declare-fun e!4473247 () Bool)

(assert (=> d!2302815 e!4473247))

(declare-fun res!3009903 () Bool)

(assert (=> d!2302815 (=> res!3009903 e!4473247)))

(declare-fun lt!2632810 () Bool)

(assert (=> d!2302815 (= res!3009903 (not lt!2632810))))

(declare-fun e!4473249 () Bool)

(assert (=> d!2302815 (= lt!2632810 e!4473249)))

(declare-fun res!3009904 () Bool)

(assert (=> d!2302815 (=> res!3009904 e!4473249)))

(assert (=> d!2302815 (= res!3009904 (is-Nil!72306 (++!17297 testedP!204 (Cons!72306 (head!15404 lt!2632746) Nil!72306))))))

(assert (=> d!2302815 (= (isPrefix!5964 (++!17297 testedP!204 (Cons!72306 (head!15404 lt!2632746) Nil!72306)) totalInput!779) lt!2632810)))

(declare-fun b!7502741 () Bool)

(declare-fun res!3009901 () Bool)

(declare-fun e!4473248 () Bool)

(assert (=> b!7502741 (=> (not res!3009901) (not e!4473248))))

(assert (=> b!7502741 (= res!3009901 (= (head!15404 (++!17297 testedP!204 (Cons!72306 (head!15404 lt!2632746) Nil!72306))) (head!15404 totalInput!779)))))

(declare-fun b!7502743 () Bool)

(assert (=> b!7502743 (= e!4473247 (>= (size!42239 totalInput!779) (size!42239 (++!17297 testedP!204 (Cons!72306 (head!15404 lt!2632746) Nil!72306)))))))

(declare-fun b!7502742 () Bool)

(assert (=> b!7502742 (= e!4473248 (isPrefix!5964 (tail!14970 (++!17297 testedP!204 (Cons!72306 (head!15404 lt!2632746) Nil!72306))) (tail!14970 totalInput!779)))))

(declare-fun b!7502740 () Bool)

(assert (=> b!7502740 (= e!4473249 e!4473248)))

(declare-fun res!3009902 () Bool)

(assert (=> b!7502740 (=> (not res!3009902) (not e!4473248))))

(assert (=> b!7502740 (= res!3009902 (not (is-Nil!72306 totalInput!779)))))

(assert (= (and d!2302815 (not res!3009904)) b!7502740))

(assert (= (and b!7502740 res!3009902) b!7502741))

(assert (= (and b!7502741 res!3009901) b!7502742))

(assert (= (and d!2302815 (not res!3009903)) b!7502743))

(assert (=> b!7502741 m!8084248))

(declare-fun m!8084358 () Bool)

(assert (=> b!7502741 m!8084358))

(declare-fun m!8084360 () Bool)

(assert (=> b!7502741 m!8084360))

(assert (=> b!7502743 m!8084236))

(assert (=> b!7502743 m!8084248))

(declare-fun m!8084362 () Bool)

(assert (=> b!7502743 m!8084362))

(assert (=> b!7502742 m!8084248))

(declare-fun m!8084366 () Bool)

(assert (=> b!7502742 m!8084366))

(declare-fun m!8084368 () Bool)

(assert (=> b!7502742 m!8084368))

(assert (=> b!7502742 m!8084366))

(assert (=> b!7502742 m!8084368))

(declare-fun m!8084370 () Bool)

(assert (=> b!7502742 m!8084370))

(assert (=> b!7502654 d!2302815))

(declare-fun lt!2632812 () List!72430)

(declare-fun b!7502747 () Bool)

(declare-fun e!4473250 () Bool)

(assert (=> b!7502747 (= e!4473250 (or (not (= (Cons!72306 (head!15404 lt!2632746) Nil!72306) Nil!72306)) (= lt!2632812 testedP!204)))))

(declare-fun b!7502744 () Bool)

(declare-fun e!4473251 () List!72430)

(assert (=> b!7502744 (= e!4473251 (Cons!72306 (head!15404 lt!2632746) Nil!72306))))

(declare-fun b!7502746 () Bool)

(declare-fun res!3009906 () Bool)

(assert (=> b!7502746 (=> (not res!3009906) (not e!4473250))))

(assert (=> b!7502746 (= res!3009906 (= (size!42239 lt!2632812) (+ (size!42239 testedP!204) (size!42239 (Cons!72306 (head!15404 lt!2632746) Nil!72306)))))))

(declare-fun b!7502745 () Bool)

(assert (=> b!7502745 (= e!4473251 (Cons!72306 (h!78754 testedP!204) (++!17297 (t!386999 testedP!204) (Cons!72306 (head!15404 lt!2632746) Nil!72306))))))

(declare-fun d!2302823 () Bool)

(assert (=> d!2302823 e!4473250))

(declare-fun res!3009905 () Bool)

(assert (=> d!2302823 (=> (not res!3009905) (not e!4473250))))

(assert (=> d!2302823 (= res!3009905 (= (content!15280 lt!2632812) (set.union (content!15280 testedP!204) (content!15280 (Cons!72306 (head!15404 lt!2632746) Nil!72306)))))))

(assert (=> d!2302823 (= lt!2632812 e!4473251)))

(declare-fun c!1385035 () Bool)

(assert (=> d!2302823 (= c!1385035 (is-Nil!72306 testedP!204))))

(assert (=> d!2302823 (= (++!17297 testedP!204 (Cons!72306 (head!15404 lt!2632746) Nil!72306)) lt!2632812)))

(assert (= (and d!2302823 c!1385035) b!7502744))

(assert (= (and d!2302823 (not c!1385035)) b!7502745))

(assert (= (and d!2302823 res!3009905) b!7502746))

(assert (= (and b!7502746 res!3009906) b!7502747))

(declare-fun m!8084372 () Bool)

(assert (=> b!7502746 m!8084372))

(assert (=> b!7502746 m!8084258))

(declare-fun m!8084374 () Bool)

(assert (=> b!7502746 m!8084374))

(declare-fun m!8084376 () Bool)

(assert (=> b!7502745 m!8084376))

(declare-fun m!8084378 () Bool)

(assert (=> d!2302823 m!8084378))

(declare-fun m!8084380 () Bool)

(assert (=> d!2302823 m!8084380))

(declare-fun m!8084382 () Bool)

(assert (=> d!2302823 m!8084382))

(assert (=> b!7502654 d!2302823))

(declare-fun lt!2632813 () List!72430)

(declare-fun e!4473252 () Bool)

(declare-fun b!7502751 () Bool)

(assert (=> b!7502751 (= e!4473252 (or (not (= (Cons!72306 lt!2632739 Nil!72306) Nil!72306)) (= lt!2632813 testedP!204)))))

(declare-fun b!7502748 () Bool)

(declare-fun e!4473253 () List!72430)

(assert (=> b!7502748 (= e!4473253 (Cons!72306 lt!2632739 Nil!72306))))

(declare-fun b!7502750 () Bool)

(declare-fun res!3009908 () Bool)

(assert (=> b!7502750 (=> (not res!3009908) (not e!4473252))))

(assert (=> b!7502750 (= res!3009908 (= (size!42239 lt!2632813) (+ (size!42239 testedP!204) (size!42239 (Cons!72306 lt!2632739 Nil!72306)))))))

(declare-fun b!7502749 () Bool)

(assert (=> b!7502749 (= e!4473253 (Cons!72306 (h!78754 testedP!204) (++!17297 (t!386999 testedP!204) (Cons!72306 lt!2632739 Nil!72306))))))

(declare-fun d!2302825 () Bool)

(assert (=> d!2302825 e!4473252))

(declare-fun res!3009907 () Bool)

(assert (=> d!2302825 (=> (not res!3009907) (not e!4473252))))

(assert (=> d!2302825 (= res!3009907 (= (content!15280 lt!2632813) (set.union (content!15280 testedP!204) (content!15280 (Cons!72306 lt!2632739 Nil!72306)))))))

(assert (=> d!2302825 (= lt!2632813 e!4473253)))

(declare-fun c!1385036 () Bool)

(assert (=> d!2302825 (= c!1385036 (is-Nil!72306 testedP!204))))

(assert (=> d!2302825 (= (++!17297 testedP!204 (Cons!72306 lt!2632739 Nil!72306)) lt!2632813)))

(assert (= (and d!2302825 c!1385036) b!7502748))

(assert (= (and d!2302825 (not c!1385036)) b!7502749))

(assert (= (and d!2302825 res!3009907) b!7502750))

(assert (= (and b!7502750 res!3009908) b!7502751))

(declare-fun m!8084384 () Bool)

(assert (=> b!7502750 m!8084384))

(assert (=> b!7502750 m!8084258))

(declare-fun m!8084386 () Bool)

(assert (=> b!7502750 m!8084386))

(declare-fun m!8084388 () Bool)

(assert (=> b!7502749 m!8084388))

(declare-fun m!8084390 () Bool)

(assert (=> d!2302825 m!8084390))

(assert (=> d!2302825 m!8084380))

(declare-fun m!8084392 () Bool)

(assert (=> d!2302825 m!8084392))

(assert (=> b!7502654 d!2302825))

(declare-fun d!2302827 () Bool)

(declare-fun lambda!464996 () Int)

(declare-fun exists!4836 ((Set Context!16860) Int) Bool)

(assert (=> d!2302827 (= (nullableZipper!3158 z!3716) (exists!4836 z!3716 lambda!464996))))

(declare-fun bs!1937780 () Bool)

(assert (= bs!1937780 d!2302827))

(declare-fun m!8084420 () Bool)

(assert (=> bs!1937780 m!8084420))

(assert (=> b!7502654 d!2302827))

(declare-fun d!2302839 () Bool)

(assert (=> d!2302839 (= (++!17297 (++!17297 testedP!204 (Cons!72306 lt!2632739 Nil!72306)) lt!2632744) totalInput!779)))

(declare-fun lt!2632831 () Unit!166244)

(declare-fun choose!58011 (List!72430 C!39662 List!72430 List!72430) Unit!166244)

(assert (=> d!2302839 (= lt!2632831 (choose!58011 testedP!204 lt!2632739 lt!2632744 totalInput!779))))

(assert (=> d!2302839 (= (++!17297 testedP!204 (Cons!72306 lt!2632739 lt!2632744)) totalInput!779)))

(assert (=> d!2302839 (= (lemmaMoveElementToOtherListKeepsConcatEq!3138 testedP!204 lt!2632739 lt!2632744 totalInput!779) lt!2632831)))

(declare-fun bs!1937781 () Bool)

(assert (= bs!1937781 d!2302839))

(assert (=> bs!1937781 m!8084250))

(assert (=> bs!1937781 m!8084250))

(declare-fun m!8084422 () Bool)

(assert (=> bs!1937781 m!8084422))

(declare-fun m!8084424 () Bool)

(assert (=> bs!1937781 m!8084424))

(declare-fun m!8084426 () Bool)

(assert (=> bs!1937781 m!8084426))

(assert (=> b!7502654 d!2302839))

(declare-fun d!2302841 () Bool)

(assert (=> d!2302841 (isPrefix!5964 (++!17297 testedP!204 (Cons!72306 (head!15404 (getSuffix!3466 totalInput!779 testedP!204)) Nil!72306)) totalInput!779)))

(declare-fun lt!2632834 () Unit!166244)

(declare-fun choose!58012 (List!72430 List!72430) Unit!166244)

(assert (=> d!2302841 (= lt!2632834 (choose!58012 testedP!204 totalInput!779))))

(assert (=> d!2302841 (isPrefix!5964 testedP!204 totalInput!779)))

(assert (=> d!2302841 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1105 testedP!204 totalInput!779) lt!2632834)))

(declare-fun bs!1937782 () Bool)

(assert (= bs!1937782 d!2302841))

(assert (=> bs!1937782 m!8084270))

(declare-fun m!8084428 () Bool)

(assert (=> bs!1937782 m!8084428))

(declare-fun m!8084430 () Bool)

(assert (=> bs!1937782 m!8084430))

(declare-fun m!8084432 () Bool)

(assert (=> bs!1937782 m!8084432))

(declare-fun m!8084434 () Bool)

(assert (=> bs!1937782 m!8084434))

(assert (=> bs!1937782 m!8084432))

(assert (=> bs!1937782 m!8084260))

(assert (=> bs!1937782 m!8084270))

(assert (=> b!7502654 d!2302841))

(declare-fun d!2302843 () Bool)

(declare-fun lambda!464999 () Int)

(declare-fun forall!18255 (List!72429 Int) Bool)

(assert (=> d!2302843 (= (inv!92411 setElem!56873) (forall!18255 (exprs!8930 setElem!56873) lambda!464999))))

(declare-fun bs!1937783 () Bool)

(assert (= bs!1937783 d!2302843))

(declare-fun m!8084436 () Bool)

(assert (=> bs!1937783 m!8084436))

(assert (=> setNonEmpty!56873 d!2302843))

(declare-fun d!2302845 () Bool)

(declare-fun lt!2632837 () Int)

(assert (=> d!2302845 (>= lt!2632837 0)))

(declare-fun e!4473273 () Int)

(assert (=> d!2302845 (= lt!2632837 e!4473273)))

(declare-fun c!1385045 () Bool)

(assert (=> d!2302845 (= c!1385045 (is-Nil!72306 testedP!204))))

(assert (=> d!2302845 (= (size!42239 testedP!204) lt!2632837)))

(declare-fun b!7502780 () Bool)

(assert (=> b!7502780 (= e!4473273 0)))

(declare-fun b!7502781 () Bool)

(assert (=> b!7502781 (= e!4473273 (+ 1 (size!42239 (t!386999 testedP!204))))))

(assert (= (and d!2302845 c!1385045) b!7502780))

(assert (= (and d!2302845 (not c!1385045)) b!7502781))

(declare-fun m!8084438 () Bool)

(assert (=> b!7502781 m!8084438))

(assert (=> b!7502653 d!2302845))

(declare-fun b!7502785 () Bool)

(declare-fun e!4473274 () Bool)

(declare-fun lt!2632838 () List!72430)

(assert (=> b!7502785 (= e!4473274 (or (not (= testedSuffix!164 Nil!72306)) (= lt!2632838 testedP!204)))))

(declare-fun b!7502782 () Bool)

(declare-fun e!4473275 () List!72430)

(assert (=> b!7502782 (= e!4473275 testedSuffix!164)))

(declare-fun b!7502784 () Bool)

(declare-fun res!3009930 () Bool)

(assert (=> b!7502784 (=> (not res!3009930) (not e!4473274))))

(assert (=> b!7502784 (= res!3009930 (= (size!42239 lt!2632838) (+ (size!42239 testedP!204) (size!42239 testedSuffix!164))))))

(declare-fun b!7502783 () Bool)

(assert (=> b!7502783 (= e!4473275 (Cons!72306 (h!78754 testedP!204) (++!17297 (t!386999 testedP!204) testedSuffix!164)))))

(declare-fun d!2302847 () Bool)

(assert (=> d!2302847 e!4473274))

(declare-fun res!3009929 () Bool)

(assert (=> d!2302847 (=> (not res!3009929) (not e!4473274))))

(assert (=> d!2302847 (= res!3009929 (= (content!15280 lt!2632838) (set.union (content!15280 testedP!204) (content!15280 testedSuffix!164))))))

(assert (=> d!2302847 (= lt!2632838 e!4473275)))

(declare-fun c!1385046 () Bool)

(assert (=> d!2302847 (= c!1385046 (is-Nil!72306 testedP!204))))

(assert (=> d!2302847 (= (++!17297 testedP!204 testedSuffix!164) lt!2632838)))

(assert (= (and d!2302847 c!1385046) b!7502782))

(assert (= (and d!2302847 (not c!1385046)) b!7502783))

(assert (= (and d!2302847 res!3009929) b!7502784))

(assert (= (and b!7502784 res!3009930) b!7502785))

(declare-fun m!8084440 () Bool)

(assert (=> b!7502784 m!8084440))

(assert (=> b!7502784 m!8084258))

(declare-fun m!8084442 () Bool)

(assert (=> b!7502784 m!8084442))

(declare-fun m!8084444 () Bool)

(assert (=> b!7502783 m!8084444))

(declare-fun m!8084446 () Bool)

(assert (=> d!2302847 m!8084446))

(assert (=> d!2302847 m!8084380))

(declare-fun m!8084448 () Bool)

(assert (=> d!2302847 m!8084448))

(assert (=> start!725932 d!2302847))

(declare-fun bs!1937784 () Bool)

(declare-fun d!2302849 () Bool)

(assert (= bs!1937784 (and d!2302849 d!2302827)))

(declare-fun lambda!465012 () Int)

(assert (=> bs!1937784 (not (= lambda!465012 lambda!464996))))

(declare-fun bs!1937785 () Bool)

(declare-fun b!7502790 () Bool)

(assert (= bs!1937785 (and b!7502790 d!2302827)))

(declare-fun lambda!465013 () Int)

(assert (=> bs!1937785 (not (= lambda!465013 lambda!464996))))

(declare-fun bs!1937786 () Bool)

(assert (= bs!1937786 (and b!7502790 d!2302849)))

(assert (=> bs!1937786 (not (= lambda!465013 lambda!465012))))

(declare-fun bs!1937787 () Bool)

(declare-fun b!7502791 () Bool)

(assert (= bs!1937787 (and b!7502791 d!2302827)))

(declare-fun lambda!465014 () Int)

(assert (=> bs!1937787 (not (= lambda!465014 lambda!464996))))

(declare-fun bs!1937788 () Bool)

(assert (= bs!1937788 (and b!7502791 d!2302849)))

(assert (=> bs!1937788 (not (= lambda!465014 lambda!465012))))

(declare-fun bs!1937789 () Bool)

(assert (= bs!1937789 (and b!7502791 b!7502790)))

(assert (=> bs!1937789 (= lambda!465014 lambda!465013)))

(declare-fun bm!688620 () Bool)

(declare-datatypes ((List!72433 0))(
  ( (Nil!72309) (Cons!72309 (h!78757 Context!16860) (t!387002 List!72433)) )
))
(declare-fun call!688626 () List!72433)

(declare-fun toList!11816 ((Set Context!16860)) List!72433)

(assert (=> bm!688620 (= call!688626 (toList!11816 z!3716))))

(declare-fun e!4473282 () Unit!166244)

(declare-fun Unit!166252 () Unit!166244)

(assert (=> b!7502791 (= e!4473282 Unit!166252)))

(declare-fun lt!2632861 () List!72433)

(assert (=> b!7502791 (= lt!2632861 call!688626)))

(declare-fun lt!2632857 () Unit!166244)

(declare-fun lemmaForallThenNotExists!454 (List!72433 Int) Unit!166244)

(assert (=> b!7502791 (= lt!2632857 (lemmaForallThenNotExists!454 lt!2632861 lambda!465012))))

(declare-fun call!688625 () Bool)

(assert (=> b!7502791 (not call!688625)))

(declare-fun lt!2632855 () Unit!166244)

(assert (=> b!7502791 (= lt!2632855 lt!2632857)))

(declare-fun lt!2632856 () List!72433)

(declare-fun c!1385057 () Bool)

(declare-fun bm!688621 () Bool)

(declare-fun exists!4837 (List!72433 Int) Bool)

(assert (=> bm!688621 (= call!688625 (exists!4837 (ite c!1385057 lt!2632856 lt!2632861) (ite c!1385057 lambda!465013 lambda!465014)))))

(declare-fun lt!2632860 () Bool)

(declare-datatypes ((Option!17212 0))(
  ( (None!17211) (Some!17211 (v!54340 List!72430)) )
))
(declare-fun isEmpty!41296 (Option!17212) Bool)

(declare-fun getLanguageWitness!1030 ((Set Context!16860)) Option!17212)

(assert (=> d!2302849 (= lt!2632860 (isEmpty!41296 (getLanguageWitness!1030 z!3716)))))

(declare-fun forall!18256 ((Set Context!16860) Int) Bool)

(assert (=> d!2302849 (= lt!2632860 (forall!18256 z!3716 lambda!465012))))

(declare-fun lt!2632858 () Unit!166244)

(assert (=> d!2302849 (= lt!2632858 e!4473282)))

(assert (=> d!2302849 (= c!1385057 (not (forall!18256 z!3716 lambda!465012)))))

(assert (=> d!2302849 (= (lostCauseZipper!1366 z!3716) lt!2632860)))

(declare-fun Unit!166253 () Unit!166244)

(assert (=> b!7502790 (= e!4473282 Unit!166253)))

(assert (=> b!7502790 (= lt!2632856 call!688626)))

(declare-fun lt!2632859 () Unit!166244)

(declare-fun lemmaNotForallThenExists!487 (List!72433 Int) Unit!166244)

(assert (=> b!7502790 (= lt!2632859 (lemmaNotForallThenExists!487 lt!2632856 lambda!465012))))

(assert (=> b!7502790 call!688625))

(declare-fun lt!2632862 () Unit!166244)

(assert (=> b!7502790 (= lt!2632862 lt!2632859)))

(assert (= (and d!2302849 c!1385057) b!7502790))

(assert (= (and d!2302849 (not c!1385057)) b!7502791))

(assert (= (or b!7502790 b!7502791) bm!688620))

(assert (= (or b!7502790 b!7502791) bm!688621))

(declare-fun m!8084450 () Bool)

(assert (=> bm!688620 m!8084450))

(declare-fun m!8084452 () Bool)

(assert (=> b!7502790 m!8084452))

(declare-fun m!8084454 () Bool)

(assert (=> d!2302849 m!8084454))

(assert (=> d!2302849 m!8084454))

(declare-fun m!8084456 () Bool)

(assert (=> d!2302849 m!8084456))

(declare-fun m!8084458 () Bool)

(assert (=> d!2302849 m!8084458))

(assert (=> d!2302849 m!8084458))

(declare-fun m!8084460 () Bool)

(assert (=> b!7502791 m!8084460))

(declare-fun m!8084462 () Bool)

(assert (=> bm!688621 m!8084462))

(assert (=> b!7502652 d!2302849))

(declare-fun d!2302851 () Bool)

(assert (=> d!2302851 (= testedSuffix!164 lt!2632746)))

(declare-fun lt!2632865 () Unit!166244)

(declare-fun choose!58013 (List!72430 List!72430 List!72430 List!72430 List!72430) Unit!166244)

(assert (=> d!2302851 (= lt!2632865 (choose!58013 testedP!204 testedSuffix!164 testedP!204 lt!2632746 totalInput!779))))

(assert (=> d!2302851 (isPrefix!5964 testedP!204 totalInput!779)))

(assert (=> d!2302851 (= (lemmaSamePrefixThenSameSuffix!2769 testedP!204 testedSuffix!164 testedP!204 lt!2632746 totalInput!779) lt!2632865)))

(declare-fun bs!1937790 () Bool)

(assert (= bs!1937790 d!2302851))

(declare-fun m!8084464 () Bool)

(assert (=> bs!1937790 m!8084464))

(assert (=> bs!1937790 m!8084260))

(assert (=> b!7502652 d!2302851))

(declare-fun d!2302853 () Bool)

(declare-fun lt!2632868 () List!72430)

(assert (=> d!2302853 (= (++!17297 testedP!204 lt!2632868) totalInput!779)))

(declare-fun e!4473285 () List!72430)

(assert (=> d!2302853 (= lt!2632868 e!4473285)))

(declare-fun c!1385060 () Bool)

(assert (=> d!2302853 (= c!1385060 (is-Cons!72306 testedP!204))))

(assert (=> d!2302853 (>= (size!42239 totalInput!779) (size!42239 testedP!204))))

(assert (=> d!2302853 (= (getSuffix!3466 totalInput!779 testedP!204) lt!2632868)))

(declare-fun b!7502796 () Bool)

(assert (=> b!7502796 (= e!4473285 (getSuffix!3466 (tail!14970 totalInput!779) (t!386999 testedP!204)))))

(declare-fun b!7502797 () Bool)

(assert (=> b!7502797 (= e!4473285 totalInput!779)))

(assert (= (and d!2302853 c!1385060) b!7502796))

(assert (= (and d!2302853 (not c!1385060)) b!7502797))

(declare-fun m!8084466 () Bool)

(assert (=> d!2302853 m!8084466))

(assert (=> d!2302853 m!8084236))

(assert (=> d!2302853 m!8084258))

(assert (=> b!7502796 m!8084368))

(assert (=> b!7502796 m!8084368))

(declare-fun m!8084468 () Bool)

(assert (=> b!7502796 m!8084468))

(assert (=> b!7502652 d!2302853))

(declare-fun d!2302855 () Bool)

(assert (=> d!2302855 (<= (size!42239 testedP!204) (size!42239 totalInput!779))))

(declare-fun lt!2632871 () Unit!166244)

(declare-fun choose!58014 (List!72430 List!72430) Unit!166244)

(assert (=> d!2302855 (= lt!2632871 (choose!58014 testedP!204 totalInput!779))))

(assert (=> d!2302855 (isPrefix!5964 testedP!204 totalInput!779)))

(assert (=> d!2302855 (= (lemmaIsPrefixThenSmallerEqSize!969 testedP!204 totalInput!779) lt!2632871)))

(declare-fun bs!1937791 () Bool)

(assert (= bs!1937791 d!2302855))

(assert (=> bs!1937791 m!8084258))

(assert (=> bs!1937791 m!8084236))

(declare-fun m!8084470 () Bool)

(assert (=> bs!1937791 m!8084470))

(assert (=> bs!1937791 m!8084260))

(assert (=> b!7502657 d!2302855))

(declare-fun d!2302857 () Bool)

(declare-fun lt!2632872 () Int)

(assert (=> d!2302857 (>= lt!2632872 0)))

(declare-fun e!4473286 () Int)

(assert (=> d!2302857 (= lt!2632872 e!4473286)))

(declare-fun c!1385061 () Bool)

(assert (=> d!2302857 (= c!1385061 (is-Nil!72306 totalInput!779))))

(assert (=> d!2302857 (= (size!42239 totalInput!779) lt!2632872)))

(declare-fun b!7502798 () Bool)

(assert (=> b!7502798 (= e!4473286 0)))

(declare-fun b!7502799 () Bool)

(assert (=> b!7502799 (= e!4473286 (+ 1 (size!42239 (t!386999 totalInput!779))))))

(assert (= (and d!2302857 c!1385061) b!7502798))

(assert (= (and d!2302857 (not c!1385061)) b!7502799))

(declare-fun m!8084472 () Bool)

(assert (=> b!7502799 m!8084472))

(assert (=> b!7502661 d!2302857))

(declare-fun d!2302859 () Bool)

(assert (=> d!2302859 (isPrefix!5964 totalInput!779 totalInput!779)))

(declare-fun lt!2632875 () Unit!166244)

(declare-fun choose!58015 (List!72430 List!72430) Unit!166244)

(assert (=> d!2302859 (= lt!2632875 (choose!58015 totalInput!779 totalInput!779))))

(assert (=> d!2302859 (= (lemmaIsPrefixRefl!3813 totalInput!779 totalInput!779) lt!2632875)))

(declare-fun bs!1937792 () Bool)

(assert (= bs!1937792 d!2302859))

(assert (=> bs!1937792 m!8084274))

(declare-fun m!8084474 () Bool)

(assert (=> bs!1937792 m!8084474))

(assert (=> b!7502665 d!2302859))

(declare-fun d!2302861 () Bool)

(declare-fun e!4473287 () Bool)

(assert (=> d!2302861 e!4473287))

(declare-fun res!3009933 () Bool)

(assert (=> d!2302861 (=> res!3009933 e!4473287)))

(declare-fun lt!2632876 () Bool)

(assert (=> d!2302861 (= res!3009933 (not lt!2632876))))

(declare-fun e!4473289 () Bool)

(assert (=> d!2302861 (= lt!2632876 e!4473289)))

(declare-fun res!3009934 () Bool)

(assert (=> d!2302861 (=> res!3009934 e!4473289)))

(assert (=> d!2302861 (= res!3009934 (is-Nil!72306 totalInput!779))))

(assert (=> d!2302861 (= (isPrefix!5964 totalInput!779 totalInput!779) lt!2632876)))

(declare-fun b!7502801 () Bool)

(declare-fun res!3009931 () Bool)

(declare-fun e!4473288 () Bool)

(assert (=> b!7502801 (=> (not res!3009931) (not e!4473288))))

(assert (=> b!7502801 (= res!3009931 (= (head!15404 totalInput!779) (head!15404 totalInput!779)))))

(declare-fun b!7502803 () Bool)

(assert (=> b!7502803 (= e!4473287 (>= (size!42239 totalInput!779) (size!42239 totalInput!779)))))

(declare-fun b!7502802 () Bool)

(assert (=> b!7502802 (= e!4473288 (isPrefix!5964 (tail!14970 totalInput!779) (tail!14970 totalInput!779)))))

(declare-fun b!7502800 () Bool)

(assert (=> b!7502800 (= e!4473289 e!4473288)))

(declare-fun res!3009932 () Bool)

(assert (=> b!7502800 (=> (not res!3009932) (not e!4473288))))

(assert (=> b!7502800 (= res!3009932 (not (is-Nil!72306 totalInput!779)))))

(assert (= (and d!2302861 (not res!3009934)) b!7502800))

(assert (= (and b!7502800 res!3009932) b!7502801))

(assert (= (and b!7502801 res!3009931) b!7502802))

(assert (= (and d!2302861 (not res!3009933)) b!7502803))

(assert (=> b!7502801 m!8084360))

(assert (=> b!7502801 m!8084360))

(assert (=> b!7502803 m!8084236))

(assert (=> b!7502803 m!8084236))

(assert (=> b!7502802 m!8084368))

(assert (=> b!7502802 m!8084368))

(assert (=> b!7502802 m!8084368))

(assert (=> b!7502802 m!8084368))

(declare-fun m!8084476 () Bool)

(assert (=> b!7502802 m!8084476))

(assert (=> b!7502665 d!2302861))

(declare-fun d!2302863 () Bool)

(assert (=> d!2302863 (= totalInput!779 testedP!204)))

(declare-fun lt!2632879 () Unit!166244)

(declare-fun choose!58016 (List!72430 List!72430 List!72430) Unit!166244)

(assert (=> d!2302863 (= lt!2632879 (choose!58016 totalInput!779 testedP!204 totalInput!779))))

(assert (=> d!2302863 (isPrefix!5964 totalInput!779 totalInput!779)))

(assert (=> d!2302863 (= (lemmaIsPrefixSameLengthThenSameList!1467 totalInput!779 testedP!204 totalInput!779) lt!2632879)))

(declare-fun bs!1937793 () Bool)

(assert (= bs!1937793 d!2302863))

(declare-fun m!8084478 () Bool)

(assert (=> bs!1937793 m!8084478))

(assert (=> bs!1937793 m!8084274))

(assert (=> b!7502665 d!2302863))

(declare-fun d!2302865 () Bool)

(declare-fun e!4473290 () Bool)

(assert (=> d!2302865 e!4473290))

(declare-fun res!3009937 () Bool)

(assert (=> d!2302865 (=> res!3009937 e!4473290)))

(declare-fun lt!2632880 () Bool)

(assert (=> d!2302865 (= res!3009937 (not lt!2632880))))

(declare-fun e!4473292 () Bool)

(assert (=> d!2302865 (= lt!2632880 e!4473292)))

(declare-fun res!3009938 () Bool)

(assert (=> d!2302865 (=> res!3009938 e!4473292)))

(assert (=> d!2302865 (= res!3009938 (is-Nil!72306 testedP!204))))

(assert (=> d!2302865 (= (isPrefix!5964 testedP!204 totalInput!779) lt!2632880)))

(declare-fun b!7502805 () Bool)

(declare-fun res!3009935 () Bool)

(declare-fun e!4473291 () Bool)

(assert (=> b!7502805 (=> (not res!3009935) (not e!4473291))))

(assert (=> b!7502805 (= res!3009935 (= (head!15404 testedP!204) (head!15404 totalInput!779)))))

(declare-fun b!7502807 () Bool)

(assert (=> b!7502807 (= e!4473290 (>= (size!42239 totalInput!779) (size!42239 testedP!204)))))

(declare-fun b!7502806 () Bool)

(assert (=> b!7502806 (= e!4473291 (isPrefix!5964 (tail!14970 testedP!204) (tail!14970 totalInput!779)))))

(declare-fun b!7502804 () Bool)

(assert (=> b!7502804 (= e!4473292 e!4473291)))

(declare-fun res!3009936 () Bool)

(assert (=> b!7502804 (=> (not res!3009936) (not e!4473291))))

(assert (=> b!7502804 (= res!3009936 (not (is-Nil!72306 totalInput!779)))))

(assert (= (and d!2302865 (not res!3009938)) b!7502804))

(assert (= (and b!7502804 res!3009936) b!7502805))

(assert (= (and b!7502805 res!3009935) b!7502806))

(assert (= (and d!2302865 (not res!3009937)) b!7502807))

(declare-fun m!8084480 () Bool)

(assert (=> b!7502805 m!8084480))

(assert (=> b!7502805 m!8084360))

(assert (=> b!7502807 m!8084236))

(assert (=> b!7502807 m!8084258))

(declare-fun m!8084482 () Bool)

(assert (=> b!7502806 m!8084482))

(assert (=> b!7502806 m!8084368))

(assert (=> b!7502806 m!8084482))

(assert (=> b!7502806 m!8084368))

(declare-fun m!8084484 () Bool)

(assert (=> b!7502806 m!8084484))

(assert (=> b!7502659 d!2302865))

(declare-fun d!2302867 () Bool)

(declare-fun e!4473293 () Bool)

(assert (=> d!2302867 e!4473293))

(declare-fun res!3009941 () Bool)

(assert (=> d!2302867 (=> res!3009941 e!4473293)))

(declare-fun lt!2632881 () Bool)

(assert (=> d!2302867 (= res!3009941 (not lt!2632881))))

(declare-fun e!4473295 () Bool)

(assert (=> d!2302867 (= lt!2632881 e!4473295)))

(declare-fun res!3009942 () Bool)

(assert (=> d!2302867 (=> res!3009942 e!4473295)))

(assert (=> d!2302867 (= res!3009942 (is-Nil!72306 testedP!204))))

(assert (=> d!2302867 (= (isPrefix!5964 testedP!204 lt!2632748) lt!2632881)))

(declare-fun b!7502809 () Bool)

(declare-fun res!3009939 () Bool)

(declare-fun e!4473294 () Bool)

(assert (=> b!7502809 (=> (not res!3009939) (not e!4473294))))

(assert (=> b!7502809 (= res!3009939 (= (head!15404 testedP!204) (head!15404 lt!2632748)))))

(declare-fun b!7502811 () Bool)

(assert (=> b!7502811 (= e!4473293 (>= (size!42239 lt!2632748) (size!42239 testedP!204)))))

(declare-fun b!7502810 () Bool)

(assert (=> b!7502810 (= e!4473294 (isPrefix!5964 (tail!14970 testedP!204) (tail!14970 lt!2632748)))))

(declare-fun b!7502808 () Bool)

(assert (=> b!7502808 (= e!4473295 e!4473294)))

(declare-fun res!3009940 () Bool)

(assert (=> b!7502808 (=> (not res!3009940) (not e!4473294))))

(assert (=> b!7502808 (= res!3009940 (not (is-Nil!72306 lt!2632748)))))

(assert (= (and d!2302867 (not res!3009942)) b!7502808))

(assert (= (and b!7502808 res!3009940) b!7502809))

(assert (= (and b!7502809 res!3009939) b!7502810))

(assert (= (and d!2302867 (not res!3009941)) b!7502811))

(assert (=> b!7502809 m!8084480))

(declare-fun m!8084486 () Bool)

(assert (=> b!7502809 m!8084486))

(declare-fun m!8084488 () Bool)

(assert (=> b!7502811 m!8084488))

(assert (=> b!7502811 m!8084258))

(assert (=> b!7502810 m!8084482))

(declare-fun m!8084490 () Bool)

(assert (=> b!7502810 m!8084490))

(assert (=> b!7502810 m!8084482))

(assert (=> b!7502810 m!8084490))

(declare-fun m!8084492 () Bool)

(assert (=> b!7502810 m!8084492))

(assert (=> b!7502659 d!2302867))

(declare-fun d!2302869 () Bool)

(assert (=> d!2302869 (isPrefix!5964 testedP!204 (++!17297 testedP!204 testedSuffix!164))))

(declare-fun lt!2632884 () Unit!166244)

(declare-fun choose!58017 (List!72430 List!72430) Unit!166244)

(assert (=> d!2302869 (= lt!2632884 (choose!58017 testedP!204 testedSuffix!164))))

(assert (=> d!2302869 (= (lemmaConcatTwoListThenFirstIsPrefix!3677 testedP!204 testedSuffix!164) lt!2632884)))

(declare-fun bs!1937794 () Bool)

(assert (= bs!1937794 d!2302869))

(assert (=> bs!1937794 m!8084278))

(assert (=> bs!1937794 m!8084278))

(declare-fun m!8084494 () Bool)

(assert (=> bs!1937794 m!8084494))

(declare-fun m!8084496 () Bool)

(assert (=> bs!1937794 m!8084496))

(assert (=> b!7502659 d!2302869))

(declare-fun condSetEmpty!56879 () Bool)

(assert (=> setNonEmpty!56873 (= condSetEmpty!56879 (= setRest!56873 (as set.empty (Set Context!16860))))))

(declare-fun setRes!56879 () Bool)

(assert (=> setNonEmpty!56873 (= tp!2177930 setRes!56879)))

(declare-fun setIsEmpty!56879 () Bool)

(assert (=> setIsEmpty!56879 setRes!56879))

(declare-fun tp!2177953 () Bool)

(declare-fun setNonEmpty!56879 () Bool)

(declare-fun e!4473298 () Bool)

(declare-fun setElem!56879 () Context!16860)

(assert (=> setNonEmpty!56879 (= setRes!56879 (and tp!2177953 (inv!92411 setElem!56879) e!4473298))))

(declare-fun setRest!56879 () (Set Context!16860))

(assert (=> setNonEmpty!56879 (= setRest!56873 (set.union (set.insert setElem!56879 (as set.empty (Set Context!16860))) setRest!56879))))

(declare-fun b!7502816 () Bool)

(declare-fun tp!2177952 () Bool)

(assert (=> b!7502816 (= e!4473298 tp!2177952)))

(assert (= (and setNonEmpty!56873 condSetEmpty!56879) setIsEmpty!56879))

(assert (= (and setNonEmpty!56873 (not condSetEmpty!56879)) setNonEmpty!56879))

(assert (= setNonEmpty!56879 b!7502816))

(declare-fun m!8084498 () Bool)

(assert (=> setNonEmpty!56879 m!8084498))

(declare-fun b!7502821 () Bool)

(declare-fun e!4473301 () Bool)

(declare-fun tp!2177958 () Bool)

(declare-fun tp!2177959 () Bool)

(assert (=> b!7502821 (= e!4473301 (and tp!2177958 tp!2177959))))

(assert (=> b!7502656 (= tp!2177931 e!4473301)))

(assert (= (and b!7502656 (is-Cons!72305 (exprs!8930 setElem!56873))) b!7502821))

(declare-fun b!7502826 () Bool)

(declare-fun e!4473304 () Bool)

(declare-fun tp!2177962 () Bool)

(assert (=> b!7502826 (= e!4473304 (and tp_is_empty!49677 tp!2177962))))

(assert (=> b!7502660 (= tp!2177929 e!4473304)))

(assert (= (and b!7502660 (is-Cons!72306 (t!386999 totalInput!779))) b!7502826))

(declare-fun b!7502827 () Bool)

(declare-fun e!4473305 () Bool)

(declare-fun tp!2177963 () Bool)

(assert (=> b!7502827 (= e!4473305 (and tp_is_empty!49677 tp!2177963))))

(assert (=> b!7502664 (= tp!2177928 e!4473305)))

(assert (= (and b!7502664 (is-Cons!72306 (t!386999 testedP!204))) b!7502827))

(declare-fun b!7502828 () Bool)

(declare-fun e!4473306 () Bool)

(declare-fun tp!2177964 () Bool)

(assert (=> b!7502828 (= e!4473306 (and tp_is_empty!49677 tp!2177964))))

(assert (=> b!7502655 (= tp!2177932 e!4473306)))

(assert (= (and b!7502655 (is-Cons!72306 (t!386999 testedSuffix!164))) b!7502828))

(push 1)

(assert (not b!7502828))

(assert (not b!7502781))

(assert (not d!2302855))

(assert (not b!7502826))

(assert (not b!7502743))

(assert (not b!7502726))

(assert (not b!7502750))

(assert (not b!7502784))

(assert (not d!2302839))

(assert (not b!7502801))

(assert (not b!7502783))

(assert (not b!7502742))

(assert (not d!2302843))

(assert (not b!7502811))

(assert (not d!2302827))

(assert (not d!2302853))

(assert (not b!7502725))

(assert (not d!2302859))

(assert (not b!7502796))

(assert (not d!2302851))

(assert (not d!2302805))

(assert (not bm!688620))

(assert (not d!2302869))

(assert (not b!7502749))

(assert tp_is_empty!49677)

(assert (not b!7502746))

(assert (not d!2302823))

(assert (not b!7502806))

(assert (not b!7502745))

(assert (not b!7502827))

(assert (not b!7502810))

(assert (not b!7502802))

(assert (not b!7502816))

(assert (not b!7502805))

(assert (not d!2302825))

(assert (not b!7502791))

(assert (not b!7502790))

(assert (not b!7502799))

(assert (not d!2302849))

(assert (not b!7502807))

(assert (not setNonEmpty!56879))

(assert (not b!7502821))

(assert (not d!2302863))

(assert (not b!7502803))

(assert (not d!2302847))

(assert (not b!7502809))

(assert (not b!7502741))

(assert (not bm!688621))

(assert (not d!2302841))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

