; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727044 () Bool)

(assert start!727044)

(declare-fun b!7508104 () Bool)

(declare-fun e!4476921 () Bool)

(declare-fun e!4476916 () Bool)

(assert (=> b!7508104 (= e!4476921 e!4476916)))

(declare-fun res!3012224 () Bool)

(assert (=> b!7508104 (=> res!3012224 e!4476916)))

(declare-datatypes ((C!39762 0))(
  ( (C!39763 (val!30279 Int)) )
))
(declare-datatypes ((Regex!19718 0))(
  ( (ElementMatch!19718 (c!1386278 C!39762)) (Concat!28563 (regOne!39948 Regex!19718) (regTwo!39948 Regex!19718)) (EmptyExpr!19718) (Star!19718 (reg!20047 Regex!19718)) (EmptyLang!19718) (Union!19718 (regOne!39949 Regex!19718) (regTwo!39949 Regex!19718)) )
))
(declare-datatypes ((List!72541 0))(
  ( (Nil!72417) (Cons!72417 (h!78865 Regex!19718) (t!387110 List!72541)) )
))
(declare-datatypes ((Context!16940 0))(
  ( (Context!16941 (exprs!8970 List!72541)) )
))
(declare-fun z!3716 () (Set Context!16940))

(declare-fun nullableZipper!3184 ((Set Context!16940)) Bool)

(assert (=> b!7508104 (= res!3012224 (nullableZipper!3184 z!3716))))

(declare-datatypes ((List!72542 0))(
  ( (Nil!72418) (Cons!72418 (h!78866 C!39762) (t!387111 List!72542)) )
))
(declare-fun lt!2636391 () List!72542)

(declare-fun lt!2636382 () List!72542)

(declare-fun totalInput!779 () List!72542)

(declare-fun ++!17347 (List!72542 List!72542) List!72542)

(assert (=> b!7508104 (= (++!17347 lt!2636391 lt!2636382) totalInput!779)))

(declare-datatypes ((Unit!166450 0))(
  ( (Unit!166451) )
))
(declare-fun lt!2636387 () Unit!166450)

(declare-fun testedP!204 () List!72542)

(declare-fun lt!2636381 () C!39762)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3160 (List!72542 C!39762 List!72542 List!72542) Unit!166450)

(assert (=> b!7508104 (= lt!2636387 (lemmaMoveElementToOtherListKeepsConcatEq!3160 testedP!204 lt!2636381 lt!2636382 totalInput!779))))

(declare-fun testedSuffix!164 () List!72542)

(declare-fun tail!15002 (List!72542) List!72542)

(assert (=> b!7508104 (= lt!2636382 (tail!15002 testedSuffix!164))))

(declare-fun lt!2636386 () List!72542)

(declare-fun isPrefix!6012 (List!72542 List!72542) Bool)

(declare-fun head!15435 (List!72542) C!39762)

(assert (=> b!7508104 (isPrefix!6012 (++!17347 testedP!204 (Cons!72418 (head!15435 lt!2636386) Nil!72418)) totalInput!779)))

(declare-fun lt!2636377 () Unit!166450)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1129 (List!72542 List!72542) Unit!166450)

(assert (=> b!7508104 (= lt!2636377 (lemmaAddHeadSuffixToPrefixStillPrefix!1129 testedP!204 totalInput!779))))

(assert (=> b!7508104 (= lt!2636391 (++!17347 testedP!204 (Cons!72418 lt!2636381 Nil!72418)))))

(assert (=> b!7508104 (= lt!2636381 (head!15435 testedSuffix!164))))

(declare-fun b!7508105 () Bool)

(declare-fun e!4476913 () Bool)

(declare-fun e!4476925 () Bool)

(assert (=> b!7508105 (= e!4476913 e!4476925)))

(declare-fun res!3012232 () Bool)

(assert (=> b!7508105 (=> res!3012232 e!4476925)))

(declare-datatypes ((tuple2!68766 0))(
  ( (tuple2!68767 (_1!37686 List!72542) (_2!37686 List!72542)) )
))
(declare-fun lt!2636383 () tuple2!68766)

(declare-fun isEmpty!41319 (List!72542) Bool)

(assert (=> b!7508105 (= res!3012232 (isEmpty!41319 (_1!37686 lt!2636383)))))

(declare-fun b!7508106 () Bool)

(assert (=> b!7508106 (= e!4476916 e!4476913)))

(declare-fun res!3012231 () Bool)

(assert (=> b!7508106 (=> (not res!3012231) (not e!4476913))))

(assert (=> b!7508106 (= res!3012231 (= (++!17347 (_1!37686 lt!2636383) (_2!37686 lt!2636383)) totalInput!779))))

(declare-fun totalInputSize!226 () Int)

(declare-fun testedPSize!164 () Int)

(declare-fun findLongestMatchInnerZipper!324 ((Set Context!16940) List!72542 Int List!72542 List!72542 Int) tuple2!68766)

(declare-fun derivationStepZipper!3727 ((Set Context!16940) C!39762) (Set Context!16940))

(assert (=> b!7508106 (= lt!2636383 (findLongestMatchInnerZipper!324 (derivationStepZipper!3727 z!3716 lt!2636381) lt!2636391 (+ 1 testedPSize!164) lt!2636382 totalInput!779 totalInputSize!226))))

(declare-fun b!7508107 () Bool)

(declare-fun res!3012230 () Bool)

(declare-fun e!4476917 () Bool)

(assert (=> b!7508107 (=> res!3012230 e!4476917)))

(assert (=> b!7508107 (= res!3012230 (= testedPSize!164 totalInputSize!226))))

(declare-fun b!7508108 () Bool)

(declare-fun e!4476922 () Bool)

(assert (=> b!7508108 (= e!4476922 e!4476917)))

(declare-fun res!3012223 () Bool)

(assert (=> b!7508108 (=> res!3012223 e!4476917)))

(declare-fun lostCauseZipper!1406 ((Set Context!16940)) Bool)

(assert (=> b!7508108 (= res!3012223 (lostCauseZipper!1406 z!3716))))

(assert (=> b!7508108 (and (= testedSuffix!164 lt!2636386) (= lt!2636386 testedSuffix!164))))

(declare-fun lt!2636380 () Unit!166450)

(declare-fun lemmaSamePrefixThenSameSuffix!2811 (List!72542 List!72542 List!72542 List!72542 List!72542) Unit!166450)

(assert (=> b!7508108 (= lt!2636380 (lemmaSamePrefixThenSameSuffix!2811 testedP!204 testedSuffix!164 testedP!204 lt!2636386 totalInput!779))))

(declare-fun getSuffix!3512 (List!72542 List!72542) List!72542)

(assert (=> b!7508108 (= lt!2636386 (getSuffix!3512 totalInput!779 testedP!204))))

(declare-fun res!3012227 () Bool)

(declare-fun e!4476919 () Bool)

(assert (=> start!727044 (=> (not res!3012227) (not e!4476919))))

(declare-fun lt!2636389 () List!72542)

(assert (=> start!727044 (= res!3012227 (= lt!2636389 totalInput!779))))

(assert (=> start!727044 (= lt!2636389 (++!17347 testedP!204 testedSuffix!164))))

(assert (=> start!727044 e!4476919))

(declare-fun e!4476914 () Bool)

(assert (=> start!727044 e!4476914))

(assert (=> start!727044 true))

(declare-fun e!4476918 () Bool)

(assert (=> start!727044 e!4476918))

(declare-fun e!4476924 () Bool)

(assert (=> start!727044 e!4476924))

(declare-fun condSetEmpty!57069 () Bool)

(assert (=> start!727044 (= condSetEmpty!57069 (= z!3716 (as set.empty (Set Context!16940))))))

(declare-fun setRes!57069 () Bool)

(assert (=> start!727044 setRes!57069))

(declare-fun b!7508109 () Bool)

(declare-fun e!4476915 () Bool)

(declare-fun tp!2179261 () Bool)

(assert (=> b!7508109 (= e!4476915 tp!2179261)))

(declare-fun b!7508110 () Bool)

(declare-fun tp_is_empty!49777 () Bool)

(declare-fun tp!2179262 () Bool)

(assert (=> b!7508110 (= e!4476914 (and tp_is_empty!49777 tp!2179262))))

(declare-fun b!7508111 () Bool)

(declare-fun e!4476923 () Bool)

(declare-fun e!4476926 () Bool)

(assert (=> b!7508111 (= e!4476923 e!4476926)))

(declare-fun res!3012225 () Bool)

(assert (=> b!7508111 (=> (not res!3012225) (not e!4476926))))

(declare-fun lt!2636378 () Int)

(assert (=> b!7508111 (= res!3012225 (= totalInputSize!226 lt!2636378))))

(declare-fun size!42289 (List!72542) Int)

(assert (=> b!7508111 (= lt!2636378 (size!42289 totalInput!779))))

(declare-fun b!7508112 () Bool)

(assert (=> b!7508112 (= e!4476919 e!4476923)))

(declare-fun res!3012229 () Bool)

(assert (=> b!7508112 (=> (not res!3012229) (not e!4476923))))

(declare-fun lt!2636388 () Int)

(assert (=> b!7508112 (= res!3012229 (= testedPSize!164 lt!2636388))))

(assert (=> b!7508112 (= lt!2636388 (size!42289 testedP!204))))

(declare-fun b!7508113 () Bool)

(declare-fun e!4476920 () Unit!166450)

(declare-fun Unit!166452 () Unit!166450)

(assert (=> b!7508113 (= e!4476920 Unit!166452)))

(declare-fun b!7508114 () Bool)

(declare-fun tp!2179259 () Bool)

(assert (=> b!7508114 (= e!4476924 (and tp_is_empty!49777 tp!2179259))))

(declare-fun setIsEmpty!57069 () Bool)

(assert (=> setIsEmpty!57069 setRes!57069))

(declare-fun b!7508115 () Bool)

(assert (=> b!7508115 (= e!4476926 (not e!4476922))))

(declare-fun res!3012226 () Bool)

(assert (=> b!7508115 (=> res!3012226 e!4476922)))

(assert (=> b!7508115 (= res!3012226 (not (isPrefix!6012 testedP!204 totalInput!779)))))

(assert (=> b!7508115 (isPrefix!6012 testedP!204 lt!2636389)))

(declare-fun lt!2636379 () Unit!166450)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3725 (List!72542 List!72542) Unit!166450)

(assert (=> b!7508115 (= lt!2636379 (lemmaConcatTwoListThenFirstIsPrefix!3725 testedP!204 testedSuffix!164))))

(declare-fun b!7508116 () Bool)

(assert (=> b!7508116 (= e!4476917 e!4476921)))

(declare-fun res!3012228 () Bool)

(assert (=> b!7508116 (=> res!3012228 e!4476921)))

(assert (=> b!7508116 (= res!3012228 (>= lt!2636388 lt!2636378))))

(declare-fun lt!2636384 () Unit!166450)

(assert (=> b!7508116 (= lt!2636384 e!4476920)))

(declare-fun c!1386277 () Bool)

(assert (=> b!7508116 (= c!1386277 (= lt!2636388 lt!2636378))))

(assert (=> b!7508116 (<= lt!2636388 lt!2636378)))

(declare-fun lt!2636392 () Unit!166450)

(declare-fun lemmaIsPrefixThenSmallerEqSize!999 (List!72542 List!72542) Unit!166450)

(assert (=> b!7508116 (= lt!2636392 (lemmaIsPrefixThenSmallerEqSize!999 testedP!204 totalInput!779))))

(declare-fun b!7508117 () Bool)

(assert (=> b!7508117 (= e!4476925 (>= (size!42289 (_1!37686 lt!2636383)) lt!2636388))))

(declare-fun b!7508118 () Bool)

(declare-fun tp!2179258 () Bool)

(assert (=> b!7508118 (= e!4476918 (and tp_is_empty!49777 tp!2179258))))

(declare-fun tp!2179260 () Bool)

(declare-fun setNonEmpty!57069 () Bool)

(declare-fun setElem!57069 () Context!16940)

(declare-fun inv!92526 (Context!16940) Bool)

(assert (=> setNonEmpty!57069 (= setRes!57069 (and tp!2179260 (inv!92526 setElem!57069) e!4476915))))

(declare-fun setRest!57069 () (Set Context!16940))

(assert (=> setNonEmpty!57069 (= z!3716 (set.union (set.insert setElem!57069 (as set.empty (Set Context!16940))) setRest!57069))))

(declare-fun b!7508119 () Bool)

(declare-fun Unit!166453 () Unit!166450)

(assert (=> b!7508119 (= e!4476920 Unit!166453)))

(declare-fun lt!2636390 () Unit!166450)

(declare-fun lemmaIsPrefixRefl!3851 (List!72542 List!72542) Unit!166450)

(assert (=> b!7508119 (= lt!2636390 (lemmaIsPrefixRefl!3851 totalInput!779 totalInput!779))))

(assert (=> b!7508119 (isPrefix!6012 totalInput!779 totalInput!779)))

(declare-fun lt!2636385 () Unit!166450)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1501 (List!72542 List!72542 List!72542) Unit!166450)

(assert (=> b!7508119 (= lt!2636385 (lemmaIsPrefixSameLengthThenSameList!1501 totalInput!779 testedP!204 totalInput!779))))

(assert (=> b!7508119 false))

(assert (= (and start!727044 res!3012227) b!7508112))

(assert (= (and b!7508112 res!3012229) b!7508111))

(assert (= (and b!7508111 res!3012225) b!7508115))

(assert (= (and b!7508115 (not res!3012226)) b!7508108))

(assert (= (and b!7508108 (not res!3012223)) b!7508107))

(assert (= (and b!7508107 (not res!3012230)) b!7508116))

(assert (= (and b!7508116 c!1386277) b!7508119))

(assert (= (and b!7508116 (not c!1386277)) b!7508113))

(assert (= (and b!7508116 (not res!3012228)) b!7508104))

(assert (= (and b!7508104 (not res!3012224)) b!7508106))

(assert (= (and b!7508106 res!3012231) b!7508105))

(assert (= (and b!7508105 (not res!3012232)) b!7508117))

(assert (= (and start!727044 (is-Cons!72418 testedSuffix!164)) b!7508110))

(assert (= (and start!727044 (is-Cons!72418 totalInput!779)) b!7508118))

(assert (= (and start!727044 (is-Cons!72418 testedP!204)) b!7508114))

(assert (= (and start!727044 condSetEmpty!57069) setIsEmpty!57069))

(assert (= (and start!727044 (not condSetEmpty!57069)) setNonEmpty!57069))

(assert (= setNonEmpty!57069 b!7508109))

(declare-fun m!8091474 () Bool)

(assert (=> b!7508104 m!8091474))

(declare-fun m!8091476 () Bool)

(assert (=> b!7508104 m!8091476))

(declare-fun m!8091478 () Bool)

(assert (=> b!7508104 m!8091478))

(declare-fun m!8091480 () Bool)

(assert (=> b!7508104 m!8091480))

(declare-fun m!8091482 () Bool)

(assert (=> b!7508104 m!8091482))

(assert (=> b!7508104 m!8091476))

(declare-fun m!8091484 () Bool)

(assert (=> b!7508104 m!8091484))

(declare-fun m!8091486 () Bool)

(assert (=> b!7508104 m!8091486))

(declare-fun m!8091488 () Bool)

(assert (=> b!7508104 m!8091488))

(declare-fun m!8091490 () Bool)

(assert (=> b!7508104 m!8091490))

(declare-fun m!8091492 () Bool)

(assert (=> b!7508104 m!8091492))

(declare-fun m!8091494 () Bool)

(assert (=> b!7508106 m!8091494))

(declare-fun m!8091496 () Bool)

(assert (=> b!7508106 m!8091496))

(assert (=> b!7508106 m!8091496))

(declare-fun m!8091498 () Bool)

(assert (=> b!7508106 m!8091498))

(declare-fun m!8091500 () Bool)

(assert (=> b!7508119 m!8091500))

(declare-fun m!8091502 () Bool)

(assert (=> b!7508119 m!8091502))

(declare-fun m!8091504 () Bool)

(assert (=> b!7508119 m!8091504))

(declare-fun m!8091506 () Bool)

(assert (=> b!7508111 m!8091506))

(declare-fun m!8091508 () Bool)

(assert (=> b!7508108 m!8091508))

(declare-fun m!8091510 () Bool)

(assert (=> b!7508108 m!8091510))

(declare-fun m!8091512 () Bool)

(assert (=> b!7508108 m!8091512))

(declare-fun m!8091514 () Bool)

(assert (=> setNonEmpty!57069 m!8091514))

(declare-fun m!8091516 () Bool)

(assert (=> b!7508112 m!8091516))

(declare-fun m!8091518 () Bool)

(assert (=> b!7508115 m!8091518))

(declare-fun m!8091520 () Bool)

(assert (=> b!7508115 m!8091520))

(declare-fun m!8091522 () Bool)

(assert (=> b!7508115 m!8091522))

(declare-fun m!8091524 () Bool)

(assert (=> b!7508116 m!8091524))

(declare-fun m!8091526 () Bool)

(assert (=> start!727044 m!8091526))

(declare-fun m!8091528 () Bool)

(assert (=> b!7508117 m!8091528))

(declare-fun m!8091530 () Bool)

(assert (=> b!7508105 m!8091530))

(push 1)

(assert (not b!7508105))

(assert (not b!7508104))

(assert (not b!7508114))

(assert (not setNonEmpty!57069))

(assert (not b!7508109))

(assert (not b!7508117))

(assert (not b!7508111))

(assert tp_is_empty!49777)

(assert (not b!7508106))

(assert (not b!7508119))

(assert (not b!7508115))

(assert (not b!7508108))

(assert (not b!7508110))

(assert (not b!7508116))

(assert (not b!7508118))

(assert (not start!727044))

(assert (not b!7508112))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2305308 () Bool)

(declare-fun e!4476986 () Bool)

(assert (=> d!2305308 e!4476986))

(declare-fun res!3012280 () Bool)

(assert (=> d!2305308 (=> res!3012280 e!4476986)))

(declare-fun lt!2636449 () Bool)

(assert (=> d!2305308 (= res!3012280 (not lt!2636449))))

(declare-fun e!4476985 () Bool)

(assert (=> d!2305308 (= lt!2636449 e!4476985)))

(declare-fun res!3012277 () Bool)

(assert (=> d!2305308 (=> res!3012277 e!4476985)))

(assert (=> d!2305308 (= res!3012277 (is-Nil!72418 (++!17347 testedP!204 (Cons!72418 (head!15435 lt!2636386) Nil!72418))))))

(assert (=> d!2305308 (= (isPrefix!6012 (++!17347 testedP!204 (Cons!72418 (head!15435 lt!2636386) Nil!72418)) totalInput!779) lt!2636449)))

(declare-fun b!7508196 () Bool)

(declare-fun e!4476984 () Bool)

(assert (=> b!7508196 (= e!4476984 (isPrefix!6012 (tail!15002 (++!17347 testedP!204 (Cons!72418 (head!15435 lt!2636386) Nil!72418))) (tail!15002 totalInput!779)))))

(declare-fun b!7508195 () Bool)

(declare-fun res!3012278 () Bool)

(assert (=> b!7508195 (=> (not res!3012278) (not e!4476984))))

(assert (=> b!7508195 (= res!3012278 (= (head!15435 (++!17347 testedP!204 (Cons!72418 (head!15435 lt!2636386) Nil!72418))) (head!15435 totalInput!779)))))

(declare-fun b!7508197 () Bool)

(assert (=> b!7508197 (= e!4476986 (>= (size!42289 totalInput!779) (size!42289 (++!17347 testedP!204 (Cons!72418 (head!15435 lt!2636386) Nil!72418)))))))

(declare-fun b!7508194 () Bool)

(assert (=> b!7508194 (= e!4476985 e!4476984)))

(declare-fun res!3012279 () Bool)

(assert (=> b!7508194 (=> (not res!3012279) (not e!4476984))))

(assert (=> b!7508194 (= res!3012279 (not (is-Nil!72418 totalInput!779)))))

(assert (= (and d!2305308 (not res!3012277)) b!7508194))

(assert (= (and b!7508194 res!3012279) b!7508195))

(assert (= (and b!7508195 res!3012278) b!7508196))

(assert (= (and d!2305308 (not res!3012280)) b!7508197))

(assert (=> b!7508196 m!8091476))

(declare-fun m!8091604 () Bool)

(assert (=> b!7508196 m!8091604))

(declare-fun m!8091606 () Bool)

(assert (=> b!7508196 m!8091606))

(assert (=> b!7508196 m!8091604))

(assert (=> b!7508196 m!8091606))

(declare-fun m!8091608 () Bool)

(assert (=> b!7508196 m!8091608))

(assert (=> b!7508195 m!8091476))

(declare-fun m!8091610 () Bool)

(assert (=> b!7508195 m!8091610))

(declare-fun m!8091612 () Bool)

(assert (=> b!7508195 m!8091612))

(assert (=> b!7508197 m!8091506))

(assert (=> b!7508197 m!8091476))

(declare-fun m!8091614 () Bool)

(assert (=> b!7508197 m!8091614))

(assert (=> b!7508104 d!2305308))

(declare-fun d!2305310 () Bool)

(assert (=> d!2305310 (= (++!17347 (++!17347 testedP!204 (Cons!72418 lt!2636381 Nil!72418)) lt!2636382) totalInput!779)))

(declare-fun lt!2636452 () Unit!166450)

(declare-fun choose!58187 (List!72542 C!39762 List!72542 List!72542) Unit!166450)

(assert (=> d!2305310 (= lt!2636452 (choose!58187 testedP!204 lt!2636381 lt!2636382 totalInput!779))))

(assert (=> d!2305310 (= (++!17347 testedP!204 (Cons!72418 lt!2636381 lt!2636382)) totalInput!779)))

(assert (=> d!2305310 (= (lemmaMoveElementToOtherListKeepsConcatEq!3160 testedP!204 lt!2636381 lt!2636382 totalInput!779) lt!2636452)))

(declare-fun bs!1938566 () Bool)

(assert (= bs!1938566 d!2305310))

(assert (=> bs!1938566 m!8091474))

(assert (=> bs!1938566 m!8091474))

(declare-fun m!8091616 () Bool)

(assert (=> bs!1938566 m!8091616))

(declare-fun m!8091618 () Bool)

(assert (=> bs!1938566 m!8091618))

(declare-fun m!8091620 () Bool)

(assert (=> bs!1938566 m!8091620))

(assert (=> b!7508104 d!2305310))

(declare-fun d!2305312 () Bool)

(declare-fun lambda!465632 () Int)

(declare-fun exists!4873 ((Set Context!16940) Int) Bool)

(assert (=> d!2305312 (= (nullableZipper!3184 z!3716) (exists!4873 z!3716 lambda!465632))))

(declare-fun bs!1938567 () Bool)

(assert (= bs!1938567 d!2305312))

(declare-fun m!8091672 () Bool)

(assert (=> bs!1938567 m!8091672))

(assert (=> b!7508104 d!2305312))

(declare-fun d!2305316 () Bool)

(assert (=> d!2305316 (= (tail!15002 testedSuffix!164) (t!387111 testedSuffix!164))))

(assert (=> b!7508104 d!2305316))

(declare-fun d!2305318 () Bool)

(assert (=> d!2305318 (= (head!15435 testedSuffix!164) (h!78866 testedSuffix!164))))

(assert (=> b!7508104 d!2305318))

(declare-fun d!2305320 () Bool)

(assert (=> d!2305320 (= (head!15435 lt!2636386) (h!78866 lt!2636386))))

(assert (=> b!7508104 d!2305320))

(declare-fun d!2305322 () Bool)

(assert (=> d!2305322 (isPrefix!6012 (++!17347 testedP!204 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 testedP!204)) Nil!72418)) totalInput!779)))

(declare-fun lt!2636533 () Unit!166450)

(declare-fun choose!58188 (List!72542 List!72542) Unit!166450)

(assert (=> d!2305322 (= lt!2636533 (choose!58188 testedP!204 totalInput!779))))

(assert (=> d!2305322 (isPrefix!6012 testedP!204 totalInput!779)))

(assert (=> d!2305322 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1129 testedP!204 totalInput!779) lt!2636533)))

(declare-fun bs!1938568 () Bool)

(assert (= bs!1938568 d!2305322))

(assert (=> bs!1938568 m!8091518))

(declare-fun m!8091674 () Bool)

(assert (=> bs!1938568 m!8091674))

(declare-fun m!8091676 () Bool)

(assert (=> bs!1938568 m!8091676))

(assert (=> bs!1938568 m!8091512))

(declare-fun m!8091678 () Bool)

(assert (=> bs!1938568 m!8091678))

(assert (=> bs!1938568 m!8091674))

(declare-fun m!8091680 () Bool)

(assert (=> bs!1938568 m!8091680))

(assert (=> bs!1938568 m!8091512))

(assert (=> b!7508104 d!2305322))

(declare-fun b!7508249 () Bool)

(declare-fun e!4477015 () List!72542)

(assert (=> b!7508249 (= e!4477015 (Cons!72418 (h!78866 lt!2636391) (++!17347 (t!387111 lt!2636391) lt!2636382)))))

(declare-fun b!7508251 () Bool)

(declare-fun lt!2636536 () List!72542)

(declare-fun e!4477016 () Bool)

(assert (=> b!7508251 (= e!4477016 (or (not (= lt!2636382 Nil!72418)) (= lt!2636536 lt!2636391)))))

(declare-fun b!7508250 () Bool)

(declare-fun res!3012292 () Bool)

(assert (=> b!7508250 (=> (not res!3012292) (not e!4477016))))

(assert (=> b!7508250 (= res!3012292 (= (size!42289 lt!2636536) (+ (size!42289 lt!2636391) (size!42289 lt!2636382))))))

(declare-fun b!7508248 () Bool)

(assert (=> b!7508248 (= e!4477015 lt!2636382)))

(declare-fun d!2305324 () Bool)

(assert (=> d!2305324 e!4477016))

(declare-fun res!3012291 () Bool)

(assert (=> d!2305324 (=> (not res!3012291) (not e!4477016))))

(declare-fun content!15315 (List!72542) (Set C!39762))

(assert (=> d!2305324 (= res!3012291 (= (content!15315 lt!2636536) (set.union (content!15315 lt!2636391) (content!15315 lt!2636382))))))

(assert (=> d!2305324 (= lt!2636536 e!4477015)))

(declare-fun c!1386313 () Bool)

(assert (=> d!2305324 (= c!1386313 (is-Nil!72418 lt!2636391))))

(assert (=> d!2305324 (= (++!17347 lt!2636391 lt!2636382) lt!2636536)))

(assert (= (and d!2305324 c!1386313) b!7508248))

(assert (= (and d!2305324 (not c!1386313)) b!7508249))

(assert (= (and d!2305324 res!3012291) b!7508250))

(assert (= (and b!7508250 res!3012292) b!7508251))

(declare-fun m!8091682 () Bool)

(assert (=> b!7508249 m!8091682))

(declare-fun m!8091684 () Bool)

(assert (=> b!7508250 m!8091684))

(declare-fun m!8091686 () Bool)

(assert (=> b!7508250 m!8091686))

(declare-fun m!8091688 () Bool)

(assert (=> b!7508250 m!8091688))

(declare-fun m!8091690 () Bool)

(assert (=> d!2305324 m!8091690))

(declare-fun m!8091692 () Bool)

(assert (=> d!2305324 m!8091692))

(declare-fun m!8091694 () Bool)

(assert (=> d!2305324 m!8091694))

(assert (=> b!7508104 d!2305324))

(declare-fun b!7508253 () Bool)

(declare-fun e!4477017 () List!72542)

(assert (=> b!7508253 (= e!4477017 (Cons!72418 (h!78866 testedP!204) (++!17347 (t!387111 testedP!204) (Cons!72418 (head!15435 lt!2636386) Nil!72418))))))

(declare-fun e!4477018 () Bool)

(declare-fun lt!2636537 () List!72542)

(declare-fun b!7508255 () Bool)

(assert (=> b!7508255 (= e!4477018 (or (not (= (Cons!72418 (head!15435 lt!2636386) Nil!72418) Nil!72418)) (= lt!2636537 testedP!204)))))

(declare-fun b!7508254 () Bool)

(declare-fun res!3012294 () Bool)

(assert (=> b!7508254 (=> (not res!3012294) (not e!4477018))))

(assert (=> b!7508254 (= res!3012294 (= (size!42289 lt!2636537) (+ (size!42289 testedP!204) (size!42289 (Cons!72418 (head!15435 lt!2636386) Nil!72418)))))))

(declare-fun b!7508252 () Bool)

(assert (=> b!7508252 (= e!4477017 (Cons!72418 (head!15435 lt!2636386) Nil!72418))))

(declare-fun d!2305326 () Bool)

(assert (=> d!2305326 e!4477018))

(declare-fun res!3012293 () Bool)

(assert (=> d!2305326 (=> (not res!3012293) (not e!4477018))))

(assert (=> d!2305326 (= res!3012293 (= (content!15315 lt!2636537) (set.union (content!15315 testedP!204) (content!15315 (Cons!72418 (head!15435 lt!2636386) Nil!72418)))))))

(assert (=> d!2305326 (= lt!2636537 e!4477017)))

(declare-fun c!1386314 () Bool)

(assert (=> d!2305326 (= c!1386314 (is-Nil!72418 testedP!204))))

(assert (=> d!2305326 (= (++!17347 testedP!204 (Cons!72418 (head!15435 lt!2636386) Nil!72418)) lt!2636537)))

(assert (= (and d!2305326 c!1386314) b!7508252))

(assert (= (and d!2305326 (not c!1386314)) b!7508253))

(assert (= (and d!2305326 res!3012293) b!7508254))

(assert (= (and b!7508254 res!3012294) b!7508255))

(declare-fun m!8091696 () Bool)

(assert (=> b!7508253 m!8091696))

(declare-fun m!8091698 () Bool)

(assert (=> b!7508254 m!8091698))

(assert (=> b!7508254 m!8091516))

(declare-fun m!8091700 () Bool)

(assert (=> b!7508254 m!8091700))

(declare-fun m!8091702 () Bool)

(assert (=> d!2305326 m!8091702))

(declare-fun m!8091704 () Bool)

(assert (=> d!2305326 m!8091704))

(declare-fun m!8091706 () Bool)

(assert (=> d!2305326 m!8091706))

(assert (=> b!7508104 d!2305326))

(declare-fun b!7508257 () Bool)

(declare-fun e!4477019 () List!72542)

(assert (=> b!7508257 (= e!4477019 (Cons!72418 (h!78866 testedP!204) (++!17347 (t!387111 testedP!204) (Cons!72418 lt!2636381 Nil!72418))))))

(declare-fun b!7508259 () Bool)

(declare-fun lt!2636538 () List!72542)

(declare-fun e!4477020 () Bool)

(assert (=> b!7508259 (= e!4477020 (or (not (= (Cons!72418 lt!2636381 Nil!72418) Nil!72418)) (= lt!2636538 testedP!204)))))

(declare-fun b!7508258 () Bool)

(declare-fun res!3012296 () Bool)

(assert (=> b!7508258 (=> (not res!3012296) (not e!4477020))))

(assert (=> b!7508258 (= res!3012296 (= (size!42289 lt!2636538) (+ (size!42289 testedP!204) (size!42289 (Cons!72418 lt!2636381 Nil!72418)))))))

(declare-fun b!7508256 () Bool)

(assert (=> b!7508256 (= e!4477019 (Cons!72418 lt!2636381 Nil!72418))))

(declare-fun d!2305328 () Bool)

(assert (=> d!2305328 e!4477020))

(declare-fun res!3012295 () Bool)

(assert (=> d!2305328 (=> (not res!3012295) (not e!4477020))))

(assert (=> d!2305328 (= res!3012295 (= (content!15315 lt!2636538) (set.union (content!15315 testedP!204) (content!15315 (Cons!72418 lt!2636381 Nil!72418)))))))

(assert (=> d!2305328 (= lt!2636538 e!4477019)))

(declare-fun c!1386315 () Bool)

(assert (=> d!2305328 (= c!1386315 (is-Nil!72418 testedP!204))))

(assert (=> d!2305328 (= (++!17347 testedP!204 (Cons!72418 lt!2636381 Nil!72418)) lt!2636538)))

(assert (= (and d!2305328 c!1386315) b!7508256))

(assert (= (and d!2305328 (not c!1386315)) b!7508257))

(assert (= (and d!2305328 res!3012295) b!7508258))

(assert (= (and b!7508258 res!3012296) b!7508259))

(declare-fun m!8091708 () Bool)

(assert (=> b!7508257 m!8091708))

(declare-fun m!8091710 () Bool)

(assert (=> b!7508258 m!8091710))

(assert (=> b!7508258 m!8091516))

(declare-fun m!8091712 () Bool)

(assert (=> b!7508258 m!8091712))

(declare-fun m!8091714 () Bool)

(assert (=> d!2305328 m!8091714))

(assert (=> d!2305328 m!8091704))

(declare-fun m!8091716 () Bool)

(assert (=> d!2305328 m!8091716))

(assert (=> b!7508104 d!2305328))

(declare-fun d!2305330 () Bool)

(declare-fun e!4477023 () Bool)

(assert (=> d!2305330 e!4477023))

(declare-fun res!3012300 () Bool)

(assert (=> d!2305330 (=> res!3012300 e!4477023)))

(declare-fun lt!2636539 () Bool)

(assert (=> d!2305330 (= res!3012300 (not lt!2636539))))

(declare-fun e!4477022 () Bool)

(assert (=> d!2305330 (= lt!2636539 e!4477022)))

(declare-fun res!3012297 () Bool)

(assert (=> d!2305330 (=> res!3012297 e!4477022)))

(assert (=> d!2305330 (= res!3012297 (is-Nil!72418 testedP!204))))

(assert (=> d!2305330 (= (isPrefix!6012 testedP!204 totalInput!779) lt!2636539)))

(declare-fun b!7508262 () Bool)

(declare-fun e!4477021 () Bool)

(assert (=> b!7508262 (= e!4477021 (isPrefix!6012 (tail!15002 testedP!204) (tail!15002 totalInput!779)))))

(declare-fun b!7508261 () Bool)

(declare-fun res!3012298 () Bool)

(assert (=> b!7508261 (=> (not res!3012298) (not e!4477021))))

(assert (=> b!7508261 (= res!3012298 (= (head!15435 testedP!204) (head!15435 totalInput!779)))))

(declare-fun b!7508263 () Bool)

(assert (=> b!7508263 (= e!4477023 (>= (size!42289 totalInput!779) (size!42289 testedP!204)))))

(declare-fun b!7508260 () Bool)

(assert (=> b!7508260 (= e!4477022 e!4477021)))

(declare-fun res!3012299 () Bool)

(assert (=> b!7508260 (=> (not res!3012299) (not e!4477021))))

(assert (=> b!7508260 (= res!3012299 (not (is-Nil!72418 totalInput!779)))))

(assert (= (and d!2305330 (not res!3012297)) b!7508260))

(assert (= (and b!7508260 res!3012299) b!7508261))

(assert (= (and b!7508261 res!3012298) b!7508262))

(assert (= (and d!2305330 (not res!3012300)) b!7508263))

(declare-fun m!8091718 () Bool)

(assert (=> b!7508262 m!8091718))

(assert (=> b!7508262 m!8091606))

(assert (=> b!7508262 m!8091718))

(assert (=> b!7508262 m!8091606))

(declare-fun m!8091720 () Bool)

(assert (=> b!7508262 m!8091720))

(declare-fun m!8091722 () Bool)

(assert (=> b!7508261 m!8091722))

(assert (=> b!7508261 m!8091612))

(assert (=> b!7508263 m!8091506))

(assert (=> b!7508263 m!8091516))

(assert (=> b!7508115 d!2305330))

(declare-fun d!2305332 () Bool)

(declare-fun e!4477026 () Bool)

(assert (=> d!2305332 e!4477026))

(declare-fun res!3012304 () Bool)

(assert (=> d!2305332 (=> res!3012304 e!4477026)))

(declare-fun lt!2636540 () Bool)

(assert (=> d!2305332 (= res!3012304 (not lt!2636540))))

(declare-fun e!4477025 () Bool)

(assert (=> d!2305332 (= lt!2636540 e!4477025)))

(declare-fun res!3012301 () Bool)

(assert (=> d!2305332 (=> res!3012301 e!4477025)))

(assert (=> d!2305332 (= res!3012301 (is-Nil!72418 testedP!204))))

(assert (=> d!2305332 (= (isPrefix!6012 testedP!204 lt!2636389) lt!2636540)))

(declare-fun b!7508266 () Bool)

(declare-fun e!4477024 () Bool)

(assert (=> b!7508266 (= e!4477024 (isPrefix!6012 (tail!15002 testedP!204) (tail!15002 lt!2636389)))))

(declare-fun b!7508265 () Bool)

(declare-fun res!3012302 () Bool)

(assert (=> b!7508265 (=> (not res!3012302) (not e!4477024))))

(assert (=> b!7508265 (= res!3012302 (= (head!15435 testedP!204) (head!15435 lt!2636389)))))

(declare-fun b!7508267 () Bool)

(assert (=> b!7508267 (= e!4477026 (>= (size!42289 lt!2636389) (size!42289 testedP!204)))))

(declare-fun b!7508264 () Bool)

(assert (=> b!7508264 (= e!4477025 e!4477024)))

(declare-fun res!3012303 () Bool)

(assert (=> b!7508264 (=> (not res!3012303) (not e!4477024))))

(assert (=> b!7508264 (= res!3012303 (not (is-Nil!72418 lt!2636389)))))

(assert (= (and d!2305332 (not res!3012301)) b!7508264))

(assert (= (and b!7508264 res!3012303) b!7508265))

(assert (= (and b!7508265 res!3012302) b!7508266))

(assert (= (and d!2305332 (not res!3012304)) b!7508267))

(assert (=> b!7508266 m!8091718))

(declare-fun m!8091724 () Bool)

(assert (=> b!7508266 m!8091724))

(assert (=> b!7508266 m!8091718))

(assert (=> b!7508266 m!8091724))

(declare-fun m!8091726 () Bool)

(assert (=> b!7508266 m!8091726))

(assert (=> b!7508265 m!8091722))

(declare-fun m!8091728 () Bool)

(assert (=> b!7508265 m!8091728))

(declare-fun m!8091730 () Bool)

(assert (=> b!7508267 m!8091730))

(assert (=> b!7508267 m!8091516))

(assert (=> b!7508115 d!2305332))

(declare-fun d!2305334 () Bool)

(assert (=> d!2305334 (isPrefix!6012 testedP!204 (++!17347 testedP!204 testedSuffix!164))))

(declare-fun lt!2636543 () Unit!166450)

(declare-fun choose!58189 (List!72542 List!72542) Unit!166450)

(assert (=> d!2305334 (= lt!2636543 (choose!58189 testedP!204 testedSuffix!164))))

(assert (=> d!2305334 (= (lemmaConcatTwoListThenFirstIsPrefix!3725 testedP!204 testedSuffix!164) lt!2636543)))

(declare-fun bs!1938569 () Bool)

(assert (= bs!1938569 d!2305334))

(assert (=> bs!1938569 m!8091526))

(assert (=> bs!1938569 m!8091526))

(declare-fun m!8091732 () Bool)

(assert (=> bs!1938569 m!8091732))

(declare-fun m!8091734 () Bool)

(assert (=> bs!1938569 m!8091734))

(assert (=> b!7508115 d!2305334))

(declare-fun d!2305336 () Bool)

(assert (=> d!2305336 (= (isEmpty!41319 (_1!37686 lt!2636383)) (is-Nil!72418 (_1!37686 lt!2636383)))))

(assert (=> b!7508105 d!2305336))

(declare-fun d!2305338 () Bool)

(declare-fun lt!2636546 () Int)

(assert (=> d!2305338 (>= lt!2636546 0)))

(declare-fun e!4477029 () Int)

(assert (=> d!2305338 (= lt!2636546 e!4477029)))

(declare-fun c!1386318 () Bool)

(assert (=> d!2305338 (= c!1386318 (is-Nil!72418 testedP!204))))

(assert (=> d!2305338 (= (size!42289 testedP!204) lt!2636546)))

(declare-fun b!7508272 () Bool)

(assert (=> b!7508272 (= e!4477029 0)))

(declare-fun b!7508273 () Bool)

(assert (=> b!7508273 (= e!4477029 (+ 1 (size!42289 (t!387111 testedP!204))))))

(assert (= (and d!2305338 c!1386318) b!7508272))

(assert (= (and d!2305338 (not c!1386318)) b!7508273))

(declare-fun m!8091736 () Bool)

(assert (=> b!7508273 m!8091736))

(assert (=> b!7508112 d!2305338))

(declare-fun d!2305340 () Bool)

(declare-fun lt!2636547 () Int)

(assert (=> d!2305340 (>= lt!2636547 0)))

(declare-fun e!4477030 () Int)

(assert (=> d!2305340 (= lt!2636547 e!4477030)))

(declare-fun c!1386319 () Bool)

(assert (=> d!2305340 (= c!1386319 (is-Nil!72418 totalInput!779))))

(assert (=> d!2305340 (= (size!42289 totalInput!779) lt!2636547)))

(declare-fun b!7508274 () Bool)

(assert (=> b!7508274 (= e!4477030 0)))

(declare-fun b!7508275 () Bool)

(assert (=> b!7508275 (= e!4477030 (+ 1 (size!42289 (t!387111 totalInput!779))))))

(assert (= (and d!2305340 c!1386319) b!7508274))

(assert (= (and d!2305340 (not c!1386319)) b!7508275))

(declare-fun m!8091738 () Bool)

(assert (=> b!7508275 m!8091738))

(assert (=> b!7508111 d!2305340))

(declare-fun d!2305342 () Bool)

(declare-fun lambda!465635 () Int)

(declare-fun forall!18305 (List!72541 Int) Bool)

(assert (=> d!2305342 (= (inv!92526 setElem!57069) (forall!18305 (exprs!8970 setElem!57069) lambda!465635))))

(declare-fun bs!1938570 () Bool)

(assert (= bs!1938570 d!2305342))

(declare-fun m!8091740 () Bool)

(assert (=> bs!1938570 m!8091740))

(assert (=> setNonEmpty!57069 d!2305342))

(declare-fun d!2305344 () Bool)

(assert (=> d!2305344 (isPrefix!6012 totalInput!779 totalInput!779)))

(declare-fun lt!2636550 () Unit!166450)

(declare-fun choose!58190 (List!72542 List!72542) Unit!166450)

(assert (=> d!2305344 (= lt!2636550 (choose!58190 totalInput!779 totalInput!779))))

(assert (=> d!2305344 (= (lemmaIsPrefixRefl!3851 totalInput!779 totalInput!779) lt!2636550)))

(declare-fun bs!1938571 () Bool)

(assert (= bs!1938571 d!2305344))

(assert (=> bs!1938571 m!8091502))

(declare-fun m!8091742 () Bool)

(assert (=> bs!1938571 m!8091742))

(assert (=> b!7508119 d!2305344))

(declare-fun d!2305346 () Bool)

(declare-fun e!4477033 () Bool)

(assert (=> d!2305346 e!4477033))

(declare-fun res!3012308 () Bool)

(assert (=> d!2305346 (=> res!3012308 e!4477033)))

(declare-fun lt!2636551 () Bool)

(assert (=> d!2305346 (= res!3012308 (not lt!2636551))))

(declare-fun e!4477032 () Bool)

(assert (=> d!2305346 (= lt!2636551 e!4477032)))

(declare-fun res!3012305 () Bool)

(assert (=> d!2305346 (=> res!3012305 e!4477032)))

(assert (=> d!2305346 (= res!3012305 (is-Nil!72418 totalInput!779))))

(assert (=> d!2305346 (= (isPrefix!6012 totalInput!779 totalInput!779) lt!2636551)))

(declare-fun b!7508278 () Bool)

(declare-fun e!4477031 () Bool)

(assert (=> b!7508278 (= e!4477031 (isPrefix!6012 (tail!15002 totalInput!779) (tail!15002 totalInput!779)))))

(declare-fun b!7508277 () Bool)

(declare-fun res!3012306 () Bool)

(assert (=> b!7508277 (=> (not res!3012306) (not e!4477031))))

(assert (=> b!7508277 (= res!3012306 (= (head!15435 totalInput!779) (head!15435 totalInput!779)))))

(declare-fun b!7508279 () Bool)

(assert (=> b!7508279 (= e!4477033 (>= (size!42289 totalInput!779) (size!42289 totalInput!779)))))

(declare-fun b!7508276 () Bool)

(assert (=> b!7508276 (= e!4477032 e!4477031)))

(declare-fun res!3012307 () Bool)

(assert (=> b!7508276 (=> (not res!3012307) (not e!4477031))))

(assert (=> b!7508276 (= res!3012307 (not (is-Nil!72418 totalInput!779)))))

(assert (= (and d!2305346 (not res!3012305)) b!7508276))

(assert (= (and b!7508276 res!3012307) b!7508277))

(assert (= (and b!7508277 res!3012306) b!7508278))

(assert (= (and d!2305346 (not res!3012308)) b!7508279))

(assert (=> b!7508278 m!8091606))

(assert (=> b!7508278 m!8091606))

(assert (=> b!7508278 m!8091606))

(assert (=> b!7508278 m!8091606))

(declare-fun m!8091744 () Bool)

(assert (=> b!7508278 m!8091744))

(assert (=> b!7508277 m!8091612))

(assert (=> b!7508277 m!8091612))

(assert (=> b!7508279 m!8091506))

(assert (=> b!7508279 m!8091506))

(assert (=> b!7508119 d!2305346))

(declare-fun d!2305348 () Bool)

(assert (=> d!2305348 (= totalInput!779 testedP!204)))

(declare-fun lt!2636554 () Unit!166450)

(declare-fun choose!58191 (List!72542 List!72542 List!72542) Unit!166450)

(assert (=> d!2305348 (= lt!2636554 (choose!58191 totalInput!779 testedP!204 totalInput!779))))

(assert (=> d!2305348 (isPrefix!6012 totalInput!779 totalInput!779)))

(assert (=> d!2305348 (= (lemmaIsPrefixSameLengthThenSameList!1501 totalInput!779 testedP!204 totalInput!779) lt!2636554)))

(declare-fun bs!1938572 () Bool)

(assert (= bs!1938572 d!2305348))

(declare-fun m!8091746 () Bool)

(assert (=> bs!1938572 m!8091746))

(assert (=> bs!1938572 m!8091502))

(assert (=> b!7508119 d!2305348))

(declare-fun d!2305350 () Bool)

(assert (=> d!2305350 (<= (size!42289 testedP!204) (size!42289 totalInput!779))))

(declare-fun lt!2636557 () Unit!166450)

(declare-fun choose!58192 (List!72542 List!72542) Unit!166450)

(assert (=> d!2305350 (= lt!2636557 (choose!58192 testedP!204 totalInput!779))))

(assert (=> d!2305350 (isPrefix!6012 testedP!204 totalInput!779)))

(assert (=> d!2305350 (= (lemmaIsPrefixThenSmallerEqSize!999 testedP!204 totalInput!779) lt!2636557)))

(declare-fun bs!1938573 () Bool)

(assert (= bs!1938573 d!2305350))

(assert (=> bs!1938573 m!8091516))

(assert (=> bs!1938573 m!8091506))

(declare-fun m!8091748 () Bool)

(assert (=> bs!1938573 m!8091748))

(assert (=> bs!1938573 m!8091518))

(assert (=> b!7508116 d!2305350))

(declare-fun b!7508281 () Bool)

(declare-fun e!4477034 () List!72542)

(assert (=> b!7508281 (= e!4477034 (Cons!72418 (h!78866 (_1!37686 lt!2636383)) (++!17347 (t!387111 (_1!37686 lt!2636383)) (_2!37686 lt!2636383))))))

(declare-fun b!7508283 () Bool)

(declare-fun e!4477035 () Bool)

(declare-fun lt!2636558 () List!72542)

(assert (=> b!7508283 (= e!4477035 (or (not (= (_2!37686 lt!2636383) Nil!72418)) (= lt!2636558 (_1!37686 lt!2636383))))))

(declare-fun b!7508282 () Bool)

(declare-fun res!3012310 () Bool)

(assert (=> b!7508282 (=> (not res!3012310) (not e!4477035))))

(assert (=> b!7508282 (= res!3012310 (= (size!42289 lt!2636558) (+ (size!42289 (_1!37686 lt!2636383)) (size!42289 (_2!37686 lt!2636383)))))))

(declare-fun b!7508280 () Bool)

(assert (=> b!7508280 (= e!4477034 (_2!37686 lt!2636383))))

(declare-fun d!2305352 () Bool)

(assert (=> d!2305352 e!4477035))

(declare-fun res!3012309 () Bool)

(assert (=> d!2305352 (=> (not res!3012309) (not e!4477035))))

(assert (=> d!2305352 (= res!3012309 (= (content!15315 lt!2636558) (set.union (content!15315 (_1!37686 lt!2636383)) (content!15315 (_2!37686 lt!2636383)))))))

(assert (=> d!2305352 (= lt!2636558 e!4477034)))

(declare-fun c!1386320 () Bool)

(assert (=> d!2305352 (= c!1386320 (is-Nil!72418 (_1!37686 lt!2636383)))))

(assert (=> d!2305352 (= (++!17347 (_1!37686 lt!2636383) (_2!37686 lt!2636383)) lt!2636558)))

(assert (= (and d!2305352 c!1386320) b!7508280))

(assert (= (and d!2305352 (not c!1386320)) b!7508281))

(assert (= (and d!2305352 res!3012309) b!7508282))

(assert (= (and b!7508282 res!3012310) b!7508283))

(declare-fun m!8091750 () Bool)

(assert (=> b!7508281 m!8091750))

(declare-fun m!8091752 () Bool)

(assert (=> b!7508282 m!8091752))

(assert (=> b!7508282 m!8091528))

(declare-fun m!8091754 () Bool)

(assert (=> b!7508282 m!8091754))

(declare-fun m!8091756 () Bool)

(assert (=> d!2305352 m!8091756))

(declare-fun m!8091758 () Bool)

(assert (=> d!2305352 m!8091758))

(declare-fun m!8091760 () Bool)

(assert (=> d!2305352 m!8091760))

(assert (=> b!7508106 d!2305352))

(declare-fun bm!688856 () Bool)

(declare-fun call!688863 () C!39762)

(assert (=> bm!688856 (= call!688863 (head!15435 lt!2636382))))

(declare-fun b!7508312 () Bool)

(declare-fun c!1386337 () Bool)

(declare-fun call!688867 () Bool)

(assert (=> b!7508312 (= c!1386337 call!688867)))

(declare-fun lt!2636611 () Unit!166450)

(declare-fun lt!2636634 () Unit!166450)

(assert (=> b!7508312 (= lt!2636611 lt!2636634)))

(assert (=> b!7508312 (= totalInput!779 lt!2636391)))

(declare-fun call!688864 () Unit!166450)

(assert (=> b!7508312 (= lt!2636634 call!688864)))

(declare-fun lt!2636632 () Unit!166450)

(declare-fun lt!2636612 () Unit!166450)

(assert (=> b!7508312 (= lt!2636632 lt!2636612)))

(declare-fun call!688862 () Bool)

(assert (=> b!7508312 call!688862))

(declare-fun call!688866 () Unit!166450)

(assert (=> b!7508312 (= lt!2636612 call!688866)))

(declare-fun e!4477058 () tuple2!68766)

(declare-fun e!4477057 () tuple2!68766)

(assert (=> b!7508312 (= e!4477058 e!4477057)))

(declare-fun bm!688857 () Bool)

(assert (=> bm!688857 (= call!688862 (isPrefix!6012 totalInput!779 totalInput!779))))

(declare-fun b!7508314 () Bool)

(assert (=> b!7508314 (= e!4477057 (tuple2!68767 Nil!72418 totalInput!779))))

(declare-fun b!7508315 () Bool)

(declare-fun e!4477053 () Unit!166450)

(declare-fun Unit!166458 () Unit!166450)

(assert (=> b!7508315 (= e!4477053 Unit!166458)))

(declare-fun bm!688858 () Bool)

(assert (=> bm!688858 (= call!688866 (lemmaIsPrefixRefl!3851 totalInput!779 totalInput!779))))

(declare-fun b!7508316 () Bool)

(declare-fun e!4477052 () Bool)

(declare-fun e!4477059 () Bool)

(assert (=> b!7508316 (= e!4477052 e!4477059)))

(declare-fun res!3012315 () Bool)

(assert (=> b!7508316 (=> res!3012315 e!4477059)))

(declare-fun lt!2636615 () tuple2!68766)

(assert (=> b!7508316 (= res!3012315 (isEmpty!41319 (_1!37686 lt!2636615)))))

(declare-fun bm!688859 () Bool)

(declare-fun call!688861 () List!72542)

(assert (=> bm!688859 (= call!688861 (tail!15002 lt!2636382))))

(declare-fun b!7508317 () Bool)

(declare-fun Unit!166459 () Unit!166450)

(assert (=> b!7508317 (= e!4477053 Unit!166459)))

(declare-fun lt!2636630 () Unit!166450)

(assert (=> b!7508317 (= lt!2636630 call!688866)))

(assert (=> b!7508317 call!688862))

(declare-fun lt!2636627 () Unit!166450)

(assert (=> b!7508317 (= lt!2636627 lt!2636630)))

(declare-fun lt!2636618 () Unit!166450)

(assert (=> b!7508317 (= lt!2636618 call!688864)))

(assert (=> b!7508317 (= totalInput!779 lt!2636391)))

(declare-fun lt!2636621 () Unit!166450)

(assert (=> b!7508317 (= lt!2636621 lt!2636618)))

(assert (=> b!7508317 false))

(declare-fun b!7508318 () Bool)

(declare-fun e!4477055 () tuple2!68766)

(assert (=> b!7508318 (= e!4477055 e!4477058)))

(declare-fun c!1386334 () Bool)

(assert (=> b!7508318 (= c!1386334 (= (+ 1 testedPSize!164) totalInputSize!226))))

(declare-fun bm!688860 () Bool)

(assert (=> bm!688860 (= call!688864 (lemmaIsPrefixSameLengthThenSameList!1501 totalInput!779 lt!2636391 totalInput!779))))

(declare-fun d!2305354 () Bool)

(assert (=> d!2305354 e!4477052))

(declare-fun res!3012316 () Bool)

(assert (=> d!2305354 (=> (not res!3012316) (not e!4477052))))

(assert (=> d!2305354 (= res!3012316 (= (++!17347 (_1!37686 lt!2636615) (_2!37686 lt!2636615)) totalInput!779))))

(assert (=> d!2305354 (= lt!2636615 e!4477055)))

(declare-fun c!1386336 () Bool)

(assert (=> d!2305354 (= c!1386336 (lostCauseZipper!1406 (derivationStepZipper!3727 z!3716 lt!2636381)))))

(declare-fun lt!2636626 () Unit!166450)

(declare-fun Unit!166461 () Unit!166450)

(assert (=> d!2305354 (= lt!2636626 Unit!166461)))

(assert (=> d!2305354 (= (getSuffix!3512 totalInput!779 lt!2636391) lt!2636382)))

(declare-fun lt!2636614 () Unit!166450)

(declare-fun lt!2636616 () Unit!166450)

(assert (=> d!2305354 (= lt!2636614 lt!2636616)))

(declare-fun lt!2636619 () List!72542)

(assert (=> d!2305354 (= lt!2636382 lt!2636619)))

(assert (=> d!2305354 (= lt!2636616 (lemmaSamePrefixThenSameSuffix!2811 lt!2636391 lt!2636382 lt!2636391 lt!2636619 totalInput!779))))

(assert (=> d!2305354 (= lt!2636619 (getSuffix!3512 totalInput!779 lt!2636391))))

(declare-fun lt!2636629 () Unit!166450)

(declare-fun lt!2636617 () Unit!166450)

(assert (=> d!2305354 (= lt!2636629 lt!2636617)))

(assert (=> d!2305354 (isPrefix!6012 lt!2636391 (++!17347 lt!2636391 lt!2636382))))

(assert (=> d!2305354 (= lt!2636617 (lemmaConcatTwoListThenFirstIsPrefix!3725 lt!2636391 lt!2636382))))

(assert (=> d!2305354 (= (++!17347 lt!2636391 lt!2636382) totalInput!779)))

(assert (=> d!2305354 (= (findLongestMatchInnerZipper!324 (derivationStepZipper!3727 z!3716 lt!2636381) lt!2636391 (+ 1 testedPSize!164) lt!2636382 totalInput!779 totalInputSize!226) lt!2636615)))

(declare-fun b!7508313 () Bool)

(declare-fun e!4477054 () tuple2!68766)

(declare-fun lt!2636624 () tuple2!68766)

(assert (=> b!7508313 (= e!4477054 lt!2636624)))

(declare-fun b!7508319 () Bool)

(assert (=> b!7508319 (= e!4477057 (tuple2!68767 lt!2636391 Nil!72418))))

(declare-fun bm!688861 () Bool)

(assert (=> bm!688861 (= call!688867 (nullableZipper!3184 (derivationStepZipper!3727 z!3716 lt!2636381)))))

(declare-fun b!7508320 () Bool)

(assert (=> b!7508320 (= e!4477054 (tuple2!68767 lt!2636391 lt!2636382))))

(declare-fun b!7508321 () Bool)

(declare-fun c!1386333 () Bool)

(assert (=> b!7508321 (= c!1386333 call!688867)))

(declare-fun lt!2636620 () Unit!166450)

(declare-fun lt!2636635 () Unit!166450)

(assert (=> b!7508321 (= lt!2636620 lt!2636635)))

(declare-fun lt!2636631 () C!39762)

(declare-fun lt!2636628 () List!72542)

(assert (=> b!7508321 (= (++!17347 (++!17347 lt!2636391 (Cons!72418 lt!2636631 Nil!72418)) lt!2636628) totalInput!779)))

(assert (=> b!7508321 (= lt!2636635 (lemmaMoveElementToOtherListKeepsConcatEq!3160 lt!2636391 lt!2636631 lt!2636628 totalInput!779))))

(assert (=> b!7508321 (= lt!2636628 (tail!15002 lt!2636382))))

(assert (=> b!7508321 (= lt!2636631 (head!15435 lt!2636382))))

(declare-fun lt!2636633 () Unit!166450)

(declare-fun lt!2636613 () Unit!166450)

(assert (=> b!7508321 (= lt!2636633 lt!2636613)))

(assert (=> b!7508321 (isPrefix!6012 (++!17347 lt!2636391 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 lt!2636391)) Nil!72418)) totalInput!779)))

(assert (=> b!7508321 (= lt!2636613 (lemmaAddHeadSuffixToPrefixStillPrefix!1129 lt!2636391 totalInput!779))))

(declare-fun lt!2636636 () List!72542)

(assert (=> b!7508321 (= lt!2636636 (++!17347 lt!2636391 (Cons!72418 (head!15435 lt!2636382) Nil!72418)))))

(declare-fun lt!2636622 () Unit!166450)

(assert (=> b!7508321 (= lt!2636622 e!4477053)))

(declare-fun c!1386338 () Bool)

(assert (=> b!7508321 (= c!1386338 (= (size!42289 lt!2636391) (size!42289 totalInput!779)))))

(declare-fun lt!2636625 () Unit!166450)

(declare-fun lt!2636623 () Unit!166450)

(assert (=> b!7508321 (= lt!2636625 lt!2636623)))

(assert (=> b!7508321 (<= (size!42289 lt!2636391) (size!42289 totalInput!779))))

(assert (=> b!7508321 (= lt!2636623 (lemmaIsPrefixThenSmallerEqSize!999 lt!2636391 totalInput!779))))

(declare-fun e!4477056 () tuple2!68766)

(assert (=> b!7508321 (= e!4477058 e!4477056)))

(declare-fun b!7508322 () Bool)

(declare-fun call!688865 () tuple2!68766)

(assert (=> b!7508322 (= e!4477056 call!688865)))

(declare-fun bm!688862 () Bool)

(declare-fun call!688868 () (Set Context!16940))

(assert (=> bm!688862 (= call!688868 (derivationStepZipper!3727 (derivationStepZipper!3727 z!3716 lt!2636381) call!688863))))

(declare-fun b!7508323 () Bool)

(assert (=> b!7508323 (= e!4477056 e!4477054)))

(assert (=> b!7508323 (= lt!2636624 call!688865)))

(declare-fun c!1386335 () Bool)

(assert (=> b!7508323 (= c!1386335 (isEmpty!41319 (_1!37686 lt!2636624)))))

(declare-fun b!7508324 () Bool)

(assert (=> b!7508324 (= e!4477055 (tuple2!68767 Nil!72418 totalInput!779))))

(declare-fun bm!688863 () Bool)

(assert (=> bm!688863 (= call!688865 (findLongestMatchInnerZipper!324 call!688868 lt!2636636 (+ 1 testedPSize!164 1) call!688861 totalInput!779 totalInputSize!226))))

(declare-fun b!7508325 () Bool)

(assert (=> b!7508325 (= e!4477059 (>= (size!42289 (_1!37686 lt!2636615)) (size!42289 lt!2636391)))))

(assert (= (and d!2305354 c!1386336) b!7508324))

(assert (= (and d!2305354 (not c!1386336)) b!7508318))

(assert (= (and b!7508318 c!1386334) b!7508312))

(assert (= (and b!7508318 (not c!1386334)) b!7508321))

(assert (= (and b!7508312 c!1386337) b!7508319))

(assert (= (and b!7508312 (not c!1386337)) b!7508314))

(assert (= (and b!7508321 c!1386338) b!7508317))

(assert (= (and b!7508321 (not c!1386338)) b!7508315))

(assert (= (and b!7508321 c!1386333) b!7508323))

(assert (= (and b!7508321 (not c!1386333)) b!7508322))

(assert (= (and b!7508323 c!1386335) b!7508320))

(assert (= (and b!7508323 (not c!1386335)) b!7508313))

(assert (= (or b!7508323 b!7508322) bm!688856))

(assert (= (or b!7508323 b!7508322) bm!688859))

(assert (= (or b!7508323 b!7508322) bm!688862))

(assert (= (or b!7508323 b!7508322) bm!688863))

(assert (= (or b!7508312 b!7508317) bm!688857))

(assert (= (or b!7508312 b!7508317) bm!688860))

(assert (= (or b!7508312 b!7508321) bm!688861))

(assert (= (or b!7508312 b!7508317) bm!688858))

(assert (= (and d!2305354 res!3012316) b!7508316))

(assert (= (and b!7508316 (not res!3012315)) b!7508325))

(declare-fun m!8091762 () Bool)

(assert (=> b!7508321 m!8091762))

(declare-fun m!8091764 () Bool)

(assert (=> b!7508321 m!8091764))

(assert (=> b!7508321 m!8091686))

(assert (=> b!7508321 m!8091506))

(declare-fun m!8091766 () Bool)

(assert (=> b!7508321 m!8091766))

(declare-fun m!8091768 () Bool)

(assert (=> b!7508321 m!8091768))

(declare-fun m!8091770 () Bool)

(assert (=> b!7508321 m!8091770))

(declare-fun m!8091772 () Bool)

(assert (=> b!7508321 m!8091772))

(declare-fun m!8091774 () Bool)

(assert (=> b!7508321 m!8091774))

(declare-fun m!8091776 () Bool)

(assert (=> b!7508321 m!8091776))

(assert (=> b!7508321 m!8091766))

(assert (=> b!7508321 m!8091770))

(declare-fun m!8091778 () Bool)

(assert (=> b!7508321 m!8091778))

(assert (=> b!7508321 m!8091762))

(declare-fun m!8091780 () Bool)

(assert (=> b!7508321 m!8091780))

(declare-fun m!8091782 () Bool)

(assert (=> b!7508321 m!8091782))

(declare-fun m!8091784 () Bool)

(assert (=> b!7508321 m!8091784))

(declare-fun m!8091786 () Bool)

(assert (=> b!7508325 m!8091786))

(assert (=> b!7508325 m!8091686))

(assert (=> bm!688858 m!8091500))

(declare-fun m!8091788 () Bool)

(assert (=> bm!688860 m!8091788))

(assert (=> bm!688862 m!8091496))

(declare-fun m!8091790 () Bool)

(assert (=> bm!688862 m!8091790))

(assert (=> bm!688861 m!8091496))

(declare-fun m!8091792 () Bool)

(assert (=> bm!688861 m!8091792))

(assert (=> bm!688857 m!8091502))

(declare-fun m!8091794 () Bool)

(assert (=> d!2305354 m!8091794))

(assert (=> d!2305354 m!8091496))

(declare-fun m!8091796 () Bool)

(assert (=> d!2305354 m!8091796))

(assert (=> d!2305354 m!8091770))

(assert (=> d!2305354 m!8091488))

(declare-fun m!8091798 () Bool)

(assert (=> d!2305354 m!8091798))

(assert (=> d!2305354 m!8091488))

(declare-fun m!8091800 () Bool)

(assert (=> d!2305354 m!8091800))

(declare-fun m!8091802 () Bool)

(assert (=> d!2305354 m!8091802))

(assert (=> bm!688859 m!8091784))

(declare-fun m!8091804 () Bool)

(assert (=> b!7508316 m!8091804))

(declare-fun m!8091806 () Bool)

(assert (=> b!7508323 m!8091806))

(declare-fun m!8091808 () Bool)

(assert (=> bm!688863 m!8091808))

(assert (=> bm!688856 m!8091782))

(assert (=> b!7508106 d!2305354))

(declare-fun d!2305356 () Bool)

(assert (=> d!2305356 true))

(declare-fun lambda!465638 () Int)

(declare-fun flatMap!3262 ((Set Context!16940) Int) (Set Context!16940))

(assert (=> d!2305356 (= (derivationStepZipper!3727 z!3716 lt!2636381) (flatMap!3262 z!3716 lambda!465638))))

(declare-fun bs!1938574 () Bool)

(assert (= bs!1938574 d!2305356))

(declare-fun m!8091810 () Bool)

(assert (=> bs!1938574 m!8091810))

(assert (=> b!7508106 d!2305356))

(declare-fun bs!1938575 () Bool)

(declare-fun d!2305358 () Bool)

(assert (= bs!1938575 (and d!2305358 d!2305312)))

(declare-fun lambda!465651 () Int)

(assert (=> bs!1938575 (not (= lambda!465651 lambda!465632))))

(declare-fun bs!1938576 () Bool)

(declare-fun b!7508332 () Bool)

(assert (= bs!1938576 (and b!7508332 d!2305312)))

(declare-fun lambda!465652 () Int)

(assert (=> bs!1938576 (not (= lambda!465652 lambda!465632))))

(declare-fun bs!1938577 () Bool)

(assert (= bs!1938577 (and b!7508332 d!2305358)))

(assert (=> bs!1938577 (not (= lambda!465652 lambda!465651))))

(declare-fun bs!1938578 () Bool)

(declare-fun b!7508333 () Bool)

(assert (= bs!1938578 (and b!7508333 d!2305312)))

(declare-fun lambda!465653 () Int)

(assert (=> bs!1938578 (not (= lambda!465653 lambda!465632))))

(declare-fun bs!1938579 () Bool)

(assert (= bs!1938579 (and b!7508333 d!2305358)))

(assert (=> bs!1938579 (not (= lambda!465653 lambda!465651))))

(declare-fun bs!1938580 () Bool)

(assert (= bs!1938580 (and b!7508333 b!7508332)))

(assert (=> bs!1938580 (= lambda!465653 lambda!465652)))

(declare-fun e!4477066 () Unit!166450)

(declare-fun Unit!166464 () Unit!166450)

(assert (=> b!7508333 (= e!4477066 Unit!166464)))

(declare-datatypes ((List!72545 0))(
  ( (Nil!72421) (Cons!72421 (h!78869 Context!16940) (t!387114 List!72545)) )
))
(declare-fun lt!2636656 () List!72545)

(declare-fun call!688873 () List!72545)

(assert (=> b!7508333 (= lt!2636656 call!688873)))

(declare-fun lt!2636658 () Unit!166450)

(declare-fun lemmaForallThenNotExists!475 (List!72545 Int) Unit!166450)

(assert (=> b!7508333 (= lt!2636658 (lemmaForallThenNotExists!475 lt!2636656 lambda!465651))))

(declare-fun call!688874 () Bool)

(assert (=> b!7508333 (not call!688874)))

(declare-fun lt!2636657 () Unit!166450)

(assert (=> b!7508333 (= lt!2636657 lt!2636658)))

(declare-fun Unit!166465 () Unit!166450)

(assert (=> b!7508332 (= e!4477066 Unit!166465)))

(declare-fun lt!2636654 () List!72545)

(assert (=> b!7508332 (= lt!2636654 call!688873)))

(declare-fun lt!2636655 () Unit!166450)

(declare-fun lemmaNotForallThenExists!508 (List!72545 Int) Unit!166450)

(assert (=> b!7508332 (= lt!2636655 (lemmaNotForallThenExists!508 lt!2636654 lambda!465651))))

(assert (=> b!7508332 call!688874))

(declare-fun lt!2636659 () Unit!166450)

(assert (=> b!7508332 (= lt!2636659 lt!2636655)))

(declare-fun bm!688869 () Bool)

(declare-fun c!1386351 () Bool)

(declare-fun exists!4874 (List!72545 Int) Bool)

(assert (=> bm!688869 (= call!688874 (exists!4874 (ite c!1386351 lt!2636654 lt!2636656) (ite c!1386351 lambda!465652 lambda!465653)))))

(declare-fun lt!2636660 () Bool)

(declare-datatypes ((Option!17233 0))(
  ( (None!17232) (Some!17232 (v!54361 List!72542)) )
))
(declare-fun isEmpty!41321 (Option!17233) Bool)

(declare-fun getLanguageWitness!1061 ((Set Context!16940)) Option!17233)

(assert (=> d!2305358 (= lt!2636660 (isEmpty!41321 (getLanguageWitness!1061 z!3716)))))

(declare-fun forall!18306 ((Set Context!16940) Int) Bool)

(assert (=> d!2305358 (= lt!2636660 (forall!18306 z!3716 lambda!465651))))

(declare-fun lt!2636653 () Unit!166450)

(assert (=> d!2305358 (= lt!2636653 e!4477066)))

(assert (=> d!2305358 (= c!1386351 (not (forall!18306 z!3716 lambda!465651)))))

(assert (=> d!2305358 (= (lostCauseZipper!1406 z!3716) lt!2636660)))

(declare-fun bm!688868 () Bool)

(declare-fun toList!11837 ((Set Context!16940)) List!72545)

(assert (=> bm!688868 (= call!688873 (toList!11837 z!3716))))

(assert (= (and d!2305358 c!1386351) b!7508332))

(assert (= (and d!2305358 (not c!1386351)) b!7508333))

(assert (= (or b!7508332 b!7508333) bm!688868))

(assert (= (or b!7508332 b!7508333) bm!688869))

(declare-fun m!8091812 () Bool)

(assert (=> b!7508332 m!8091812))

(declare-fun m!8091814 () Bool)

(assert (=> bm!688868 m!8091814))

(declare-fun m!8091816 () Bool)

(assert (=> b!7508333 m!8091816))

(declare-fun m!8091818 () Bool)

(assert (=> bm!688869 m!8091818))

(declare-fun m!8091820 () Bool)

(assert (=> d!2305358 m!8091820))

(assert (=> d!2305358 m!8091820))

(declare-fun m!8091822 () Bool)

(assert (=> d!2305358 m!8091822))

(declare-fun m!8091824 () Bool)

(assert (=> d!2305358 m!8091824))

(assert (=> d!2305358 m!8091824))

(assert (=> b!7508108 d!2305358))

(declare-fun d!2305360 () Bool)

(assert (=> d!2305360 (= testedSuffix!164 lt!2636386)))

(declare-fun lt!2636663 () Unit!166450)

(declare-fun choose!58193 (List!72542 List!72542 List!72542 List!72542 List!72542) Unit!166450)

(assert (=> d!2305360 (= lt!2636663 (choose!58193 testedP!204 testedSuffix!164 testedP!204 lt!2636386 totalInput!779))))

(assert (=> d!2305360 (isPrefix!6012 testedP!204 totalInput!779)))

(assert (=> d!2305360 (= (lemmaSamePrefixThenSameSuffix!2811 testedP!204 testedSuffix!164 testedP!204 lt!2636386 totalInput!779) lt!2636663)))

(declare-fun bs!1938581 () Bool)

(assert (= bs!1938581 d!2305360))

(declare-fun m!8091826 () Bool)

(assert (=> bs!1938581 m!8091826))

(assert (=> bs!1938581 m!8091518))

(assert (=> b!7508108 d!2305360))

(declare-fun d!2305362 () Bool)

(declare-fun lt!2636666 () List!72542)

(assert (=> d!2305362 (= (++!17347 testedP!204 lt!2636666) totalInput!779)))

(declare-fun e!4477069 () List!72542)

(assert (=> d!2305362 (= lt!2636666 e!4477069)))

(declare-fun c!1386354 () Bool)

(assert (=> d!2305362 (= c!1386354 (is-Cons!72418 testedP!204))))

(assert (=> d!2305362 (>= (size!42289 totalInput!779) (size!42289 testedP!204))))

(assert (=> d!2305362 (= (getSuffix!3512 totalInput!779 testedP!204) lt!2636666)))

(declare-fun b!7508338 () Bool)

(assert (=> b!7508338 (= e!4477069 (getSuffix!3512 (tail!15002 totalInput!779) (t!387111 testedP!204)))))

(declare-fun b!7508339 () Bool)

(assert (=> b!7508339 (= e!4477069 totalInput!779)))

(assert (= (and d!2305362 c!1386354) b!7508338))

(assert (= (and d!2305362 (not c!1386354)) b!7508339))

(declare-fun m!8091828 () Bool)

(assert (=> d!2305362 m!8091828))

(assert (=> d!2305362 m!8091506))

(assert (=> d!2305362 m!8091516))

(assert (=> b!7508338 m!8091606))

(assert (=> b!7508338 m!8091606))

(declare-fun m!8091830 () Bool)

(assert (=> b!7508338 m!8091830))

(assert (=> b!7508108 d!2305362))

(declare-fun d!2305364 () Bool)

(declare-fun lt!2636667 () Int)

(assert (=> d!2305364 (>= lt!2636667 0)))

(declare-fun e!4477070 () Int)

(assert (=> d!2305364 (= lt!2636667 e!4477070)))

(declare-fun c!1386355 () Bool)

(assert (=> d!2305364 (= c!1386355 (is-Nil!72418 (_1!37686 lt!2636383)))))

(assert (=> d!2305364 (= (size!42289 (_1!37686 lt!2636383)) lt!2636667)))

(declare-fun b!7508340 () Bool)

(assert (=> b!7508340 (= e!4477070 0)))

(declare-fun b!7508341 () Bool)

(assert (=> b!7508341 (= e!4477070 (+ 1 (size!42289 (t!387111 (_1!37686 lt!2636383)))))))

(assert (= (and d!2305364 c!1386355) b!7508340))

(assert (= (and d!2305364 (not c!1386355)) b!7508341))

(declare-fun m!8091832 () Bool)

(assert (=> b!7508341 m!8091832))

(assert (=> b!7508117 d!2305364))

(declare-fun b!7508343 () Bool)

(declare-fun e!4477071 () List!72542)

(assert (=> b!7508343 (= e!4477071 (Cons!72418 (h!78866 testedP!204) (++!17347 (t!387111 testedP!204) testedSuffix!164)))))

(declare-fun lt!2636668 () List!72542)

(declare-fun b!7508345 () Bool)

(declare-fun e!4477072 () Bool)

(assert (=> b!7508345 (= e!4477072 (or (not (= testedSuffix!164 Nil!72418)) (= lt!2636668 testedP!204)))))

(declare-fun b!7508344 () Bool)

(declare-fun res!3012318 () Bool)

(assert (=> b!7508344 (=> (not res!3012318) (not e!4477072))))

(assert (=> b!7508344 (= res!3012318 (= (size!42289 lt!2636668) (+ (size!42289 testedP!204) (size!42289 testedSuffix!164))))))

(declare-fun b!7508342 () Bool)

(assert (=> b!7508342 (= e!4477071 testedSuffix!164)))

(declare-fun d!2305366 () Bool)

(assert (=> d!2305366 e!4477072))

(declare-fun res!3012317 () Bool)

(assert (=> d!2305366 (=> (not res!3012317) (not e!4477072))))

(assert (=> d!2305366 (= res!3012317 (= (content!15315 lt!2636668) (set.union (content!15315 testedP!204) (content!15315 testedSuffix!164))))))

(assert (=> d!2305366 (= lt!2636668 e!4477071)))

(declare-fun c!1386356 () Bool)

(assert (=> d!2305366 (= c!1386356 (is-Nil!72418 testedP!204))))

(assert (=> d!2305366 (= (++!17347 testedP!204 testedSuffix!164) lt!2636668)))

(assert (= (and d!2305366 c!1386356) b!7508342))

(assert (= (and d!2305366 (not c!1386356)) b!7508343))

(assert (= (and d!2305366 res!3012317) b!7508344))

(assert (= (and b!7508344 res!3012318) b!7508345))

(declare-fun m!8091834 () Bool)

(assert (=> b!7508343 m!8091834))

(declare-fun m!8091836 () Bool)

(assert (=> b!7508344 m!8091836))

(assert (=> b!7508344 m!8091516))

(declare-fun m!8091838 () Bool)

(assert (=> b!7508344 m!8091838))

(declare-fun m!8091840 () Bool)

(assert (=> d!2305366 m!8091840))

(assert (=> d!2305366 m!8091704))

(declare-fun m!8091842 () Bool)

(assert (=> d!2305366 m!8091842))

(assert (=> start!727044 d!2305366))

(declare-fun condSetEmpty!57075 () Bool)

(assert (=> setNonEmpty!57069 (= condSetEmpty!57075 (= setRest!57069 (as set.empty (Set Context!16940))))))

(declare-fun setRes!57075 () Bool)

(assert (=> setNonEmpty!57069 (= tp!2179260 setRes!57075)))

(declare-fun setIsEmpty!57075 () Bool)

(assert (=> setIsEmpty!57075 setRes!57075))

(declare-fun setElem!57075 () Context!16940)

(declare-fun e!4477075 () Bool)

(declare-fun setNonEmpty!57075 () Bool)

(declare-fun tp!2179282 () Bool)

(assert (=> setNonEmpty!57075 (= setRes!57075 (and tp!2179282 (inv!92526 setElem!57075) e!4477075))))

(declare-fun setRest!57075 () (Set Context!16940))

(assert (=> setNonEmpty!57075 (= setRest!57069 (set.union (set.insert setElem!57075 (as set.empty (Set Context!16940))) setRest!57075))))

(declare-fun b!7508350 () Bool)

(declare-fun tp!2179283 () Bool)

(assert (=> b!7508350 (= e!4477075 tp!2179283)))

(assert (= (and setNonEmpty!57069 condSetEmpty!57075) setIsEmpty!57075))

(assert (= (and setNonEmpty!57069 (not condSetEmpty!57075)) setNonEmpty!57075))

(assert (= setNonEmpty!57075 b!7508350))

(declare-fun m!8091844 () Bool)

(assert (=> setNonEmpty!57075 m!8091844))

(declare-fun b!7508355 () Bool)

(declare-fun e!4477078 () Bool)

(declare-fun tp!2179288 () Bool)

(declare-fun tp!2179289 () Bool)

(assert (=> b!7508355 (= e!4477078 (and tp!2179288 tp!2179289))))

(assert (=> b!7508109 (= tp!2179261 e!4477078)))

(assert (= (and b!7508109 (is-Cons!72417 (exprs!8970 setElem!57069))) b!7508355))

(declare-fun b!7508360 () Bool)

(declare-fun e!4477081 () Bool)

(declare-fun tp!2179292 () Bool)

(assert (=> b!7508360 (= e!4477081 (and tp_is_empty!49777 tp!2179292))))

(assert (=> b!7508114 (= tp!2179259 e!4477081)))

(assert (= (and b!7508114 (is-Cons!72418 (t!387111 testedP!204))) b!7508360))

(declare-fun b!7508361 () Bool)

(declare-fun e!4477082 () Bool)

(declare-fun tp!2179293 () Bool)

(assert (=> b!7508361 (= e!4477082 (and tp_is_empty!49777 tp!2179293))))

(assert (=> b!7508118 (= tp!2179258 e!4477082)))

(assert (= (and b!7508118 (is-Cons!72418 (t!387111 totalInput!779))) b!7508361))

(declare-fun b!7508362 () Bool)

(declare-fun e!4477083 () Bool)

(declare-fun tp!2179294 () Bool)

(assert (=> b!7508362 (= e!4477083 (and tp_is_empty!49777 tp!2179294))))

(assert (=> b!7508110 (= tp!2179262 e!4477083)))

(assert (= (and b!7508110 (is-Cons!72418 (t!387111 testedSuffix!164))) b!7508362))

(push 1)

(assert (not bm!688863))

(assert (not bm!688860))

(assert (not bm!688868))

(assert (not bm!688857))

(assert (not d!2305344))

(assert (not b!7508325))

(assert (not b!7508257))

(assert (not d!2305356))

(assert (not d!2305348))

(assert (not d!2305352))

(assert (not b!7508316))

(assert (not bm!688856))

(assert (not d!2305350))

(assert (not bm!688861))

(assert (not d!2305326))

(assert (not b!7508278))

(assert (not b!7508360))

(assert (not b!7508196))

(assert (not d!2305312))

(assert (not b!7508263))

(assert (not b!7508253))

(assert (not d!2305322))

(assert (not d!2305310))

(assert (not b!7508273))

(assert (not d!2305358))

(assert (not b!7508267))

(assert (not d!2305324))

(assert (not d!2305362))

(assert (not setNonEmpty!57075))

(assert (not b!7508277))

(assert (not b!7508362))

(assert (not bm!688869))

(assert (not d!2305342))

(assert (not b!7508332))

(assert (not b!7508282))

(assert (not b!7508344))

(assert (not bm!688858))

(assert (not d!2305354))

(assert (not b!7508266))

(assert (not b!7508254))

(assert (not d!2305366))

(assert (not b!7508279))

(assert (not b!7508350))

(assert (not bm!688859))

(assert (not d!2305360))

(assert tp_is_empty!49777)

(assert (not b!7508321))

(assert (not b!7508323))

(assert (not b!7508343))

(assert (not b!7508275))

(assert (not b!7508355))

(assert (not b!7508265))

(assert (not b!7508249))

(assert (not b!7508250))

(assert (not d!2305328))

(assert (not bm!688862))

(assert (not b!7508338))

(assert (not b!7508261))

(assert (not b!7508361))

(assert (not b!7508262))

(assert (not d!2305334))

(assert (not b!7508197))

(assert (not b!7508195))

(assert (not b!7508258))

(assert (not b!7508281))

(assert (not b!7508333))

(assert (not b!7508341))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2305418 () Bool)

(declare-fun e!4477135 () Bool)

(assert (=> d!2305418 e!4477135))

(declare-fun res!3012354 () Bool)

(assert (=> d!2305418 (=> res!3012354 e!4477135)))

(declare-fun lt!2636729 () Bool)

(assert (=> d!2305418 (= res!3012354 (not lt!2636729))))

(declare-fun e!4477134 () Bool)

(assert (=> d!2305418 (= lt!2636729 e!4477134)))

(declare-fun res!3012351 () Bool)

(assert (=> d!2305418 (=> res!3012351 e!4477134)))

(assert (=> d!2305418 (= res!3012351 (is-Nil!72418 (tail!15002 testedP!204)))))

(assert (=> d!2305418 (= (isPrefix!6012 (tail!15002 testedP!204) (tail!15002 lt!2636389)) lt!2636729)))

(declare-fun b!7508440 () Bool)

(declare-fun e!4477133 () Bool)

(assert (=> b!7508440 (= e!4477133 (isPrefix!6012 (tail!15002 (tail!15002 testedP!204)) (tail!15002 (tail!15002 lt!2636389))))))

(declare-fun b!7508439 () Bool)

(declare-fun res!3012352 () Bool)

(assert (=> b!7508439 (=> (not res!3012352) (not e!4477133))))

(assert (=> b!7508439 (= res!3012352 (= (head!15435 (tail!15002 testedP!204)) (head!15435 (tail!15002 lt!2636389))))))

(declare-fun b!7508441 () Bool)

(assert (=> b!7508441 (= e!4477135 (>= (size!42289 (tail!15002 lt!2636389)) (size!42289 (tail!15002 testedP!204))))))

(declare-fun b!7508438 () Bool)

(assert (=> b!7508438 (= e!4477134 e!4477133)))

(declare-fun res!3012353 () Bool)

(assert (=> b!7508438 (=> (not res!3012353) (not e!4477133))))

(assert (=> b!7508438 (= res!3012353 (not (is-Nil!72418 (tail!15002 lt!2636389))))))

(assert (= (and d!2305418 (not res!3012351)) b!7508438))

(assert (= (and b!7508438 res!3012353) b!7508439))

(assert (= (and b!7508439 res!3012352) b!7508440))

(assert (= (and d!2305418 (not res!3012354)) b!7508441))

(assert (=> b!7508440 m!8091718))

(declare-fun m!8091974 () Bool)

(assert (=> b!7508440 m!8091974))

(assert (=> b!7508440 m!8091724))

(declare-fun m!8091976 () Bool)

(assert (=> b!7508440 m!8091976))

(assert (=> b!7508440 m!8091974))

(assert (=> b!7508440 m!8091976))

(declare-fun m!8091978 () Bool)

(assert (=> b!7508440 m!8091978))

(assert (=> b!7508439 m!8091718))

(declare-fun m!8091980 () Bool)

(assert (=> b!7508439 m!8091980))

(assert (=> b!7508439 m!8091724))

(declare-fun m!8091982 () Bool)

(assert (=> b!7508439 m!8091982))

(assert (=> b!7508441 m!8091724))

(declare-fun m!8091984 () Bool)

(assert (=> b!7508441 m!8091984))

(assert (=> b!7508441 m!8091718))

(declare-fun m!8091986 () Bool)

(assert (=> b!7508441 m!8091986))

(assert (=> b!7508266 d!2305418))

(declare-fun d!2305420 () Bool)

(assert (=> d!2305420 (= (tail!15002 testedP!204) (t!387111 testedP!204))))

(assert (=> b!7508266 d!2305420))

(declare-fun d!2305422 () Bool)

(assert (=> d!2305422 (= (tail!15002 lt!2636389) (t!387111 lt!2636389))))

(assert (=> b!7508266 d!2305422))

(declare-fun d!2305424 () Bool)

(assert (=> d!2305424 (= (head!15435 testedP!204) (h!78866 testedP!204))))

(assert (=> b!7508261 d!2305424))

(declare-fun d!2305426 () Bool)

(assert (=> d!2305426 (= (head!15435 totalInput!779) (h!78866 totalInput!779))))

(assert (=> b!7508261 d!2305426))

(assert (=> b!7508263 d!2305340))

(assert (=> b!7508263 d!2305338))

(declare-fun d!2305428 () Bool)

(assert (=> d!2305428 (= (isEmpty!41319 (_1!37686 lt!2636615)) (is-Nil!72418 (_1!37686 lt!2636615)))))

(assert (=> b!7508316 d!2305428))

(declare-fun d!2305430 () Bool)

(declare-fun e!4477138 () Bool)

(assert (=> d!2305430 e!4477138))

(declare-fun res!3012358 () Bool)

(assert (=> d!2305430 (=> res!3012358 e!4477138)))

(declare-fun lt!2636730 () Bool)

(assert (=> d!2305430 (= res!3012358 (not lt!2636730))))

(declare-fun e!4477137 () Bool)

(assert (=> d!2305430 (= lt!2636730 e!4477137)))

(declare-fun res!3012355 () Bool)

(assert (=> d!2305430 (=> res!3012355 e!4477137)))

(assert (=> d!2305430 (= res!3012355 (is-Nil!72418 (tail!15002 (++!17347 testedP!204 (Cons!72418 (head!15435 lt!2636386) Nil!72418)))))))

(assert (=> d!2305430 (= (isPrefix!6012 (tail!15002 (++!17347 testedP!204 (Cons!72418 (head!15435 lt!2636386) Nil!72418))) (tail!15002 totalInput!779)) lt!2636730)))

(declare-fun b!7508444 () Bool)

(declare-fun e!4477136 () Bool)

(assert (=> b!7508444 (= e!4477136 (isPrefix!6012 (tail!15002 (tail!15002 (++!17347 testedP!204 (Cons!72418 (head!15435 lt!2636386) Nil!72418)))) (tail!15002 (tail!15002 totalInput!779))))))

(declare-fun b!7508443 () Bool)

(declare-fun res!3012356 () Bool)

(assert (=> b!7508443 (=> (not res!3012356) (not e!4477136))))

(assert (=> b!7508443 (= res!3012356 (= (head!15435 (tail!15002 (++!17347 testedP!204 (Cons!72418 (head!15435 lt!2636386) Nil!72418)))) (head!15435 (tail!15002 totalInput!779))))))

(declare-fun b!7508445 () Bool)

(assert (=> b!7508445 (= e!4477138 (>= (size!42289 (tail!15002 totalInput!779)) (size!42289 (tail!15002 (++!17347 testedP!204 (Cons!72418 (head!15435 lt!2636386) Nil!72418))))))))

(declare-fun b!7508442 () Bool)

(assert (=> b!7508442 (= e!4477137 e!4477136)))

(declare-fun res!3012357 () Bool)

(assert (=> b!7508442 (=> (not res!3012357) (not e!4477136))))

(assert (=> b!7508442 (= res!3012357 (not (is-Nil!72418 (tail!15002 totalInput!779))))))

(assert (= (and d!2305430 (not res!3012355)) b!7508442))

(assert (= (and b!7508442 res!3012357) b!7508443))

(assert (= (and b!7508443 res!3012356) b!7508444))

(assert (= (and d!2305430 (not res!3012358)) b!7508445))

(assert (=> b!7508444 m!8091604))

(declare-fun m!8091988 () Bool)

(assert (=> b!7508444 m!8091988))

(assert (=> b!7508444 m!8091606))

(declare-fun m!8091990 () Bool)

(assert (=> b!7508444 m!8091990))

(assert (=> b!7508444 m!8091988))

(assert (=> b!7508444 m!8091990))

(declare-fun m!8091992 () Bool)

(assert (=> b!7508444 m!8091992))

(assert (=> b!7508443 m!8091604))

(declare-fun m!8091994 () Bool)

(assert (=> b!7508443 m!8091994))

(assert (=> b!7508443 m!8091606))

(declare-fun m!8091996 () Bool)

(assert (=> b!7508443 m!8091996))

(assert (=> b!7508445 m!8091606))

(declare-fun m!8091998 () Bool)

(assert (=> b!7508445 m!8091998))

(assert (=> b!7508445 m!8091604))

(declare-fun m!8092000 () Bool)

(assert (=> b!7508445 m!8092000))

(assert (=> b!7508196 d!2305430))

(declare-fun d!2305432 () Bool)

(assert (=> d!2305432 (= (tail!15002 (++!17347 testedP!204 (Cons!72418 (head!15435 lt!2636386) Nil!72418))) (t!387111 (++!17347 testedP!204 (Cons!72418 (head!15435 lt!2636386) Nil!72418))))))

(assert (=> b!7508196 d!2305432))

(declare-fun d!2305434 () Bool)

(assert (=> d!2305434 (= (tail!15002 totalInput!779) (t!387111 totalInput!779))))

(assert (=> b!7508196 d!2305434))

(declare-fun bs!1938598 () Bool)

(declare-fun d!2305436 () Bool)

(assert (= bs!1938598 (and d!2305436 d!2305312)))

(declare-fun lambda!465680 () Int)

(assert (=> bs!1938598 (not (= lambda!465680 lambda!465632))))

(declare-fun bs!1938599 () Bool)

(assert (= bs!1938599 (and d!2305436 d!2305358)))

(assert (=> bs!1938599 (not (= lambda!465680 lambda!465651))))

(declare-fun bs!1938600 () Bool)

(assert (= bs!1938600 (and d!2305436 b!7508332)))

(assert (=> bs!1938600 (not (= lambda!465680 lambda!465652))))

(declare-fun bs!1938601 () Bool)

(assert (= bs!1938601 (and d!2305436 b!7508333)))

(assert (=> bs!1938601 (not (= lambda!465680 lambda!465653))))

(assert (=> d!2305436 true))

(declare-fun order!29657 () Int)

(declare-fun dynLambda!29788 (Int Int) Int)

(assert (=> d!2305436 (< (dynLambda!29788 order!29657 lambda!465651) (dynLambda!29788 order!29657 lambda!465680))))

(assert (=> d!2305436 (not (exists!4874 lt!2636656 lambda!465680))))

(declare-fun lt!2636733 () Unit!166450)

(declare-fun choose!58201 (List!72545 Int) Unit!166450)

(assert (=> d!2305436 (= lt!2636733 (choose!58201 lt!2636656 lambda!465651))))

(declare-fun forall!18309 (List!72545 Int) Bool)

(assert (=> d!2305436 (forall!18309 lt!2636656 lambda!465651)))

(assert (=> d!2305436 (= (lemmaForallThenNotExists!475 lt!2636656 lambda!465651) lt!2636733)))

(declare-fun bs!1938602 () Bool)

(assert (= bs!1938602 d!2305436))

(declare-fun m!8092002 () Bool)

(assert (=> bs!1938602 m!8092002))

(declare-fun m!8092004 () Bool)

(assert (=> bs!1938602 m!8092004))

(declare-fun m!8092006 () Bool)

(assert (=> bs!1938602 m!8092006))

(assert (=> b!7508333 d!2305436))

(declare-fun d!2305438 () Bool)

(declare-fun lt!2636734 () Int)

(assert (=> d!2305438 (>= lt!2636734 0)))

(declare-fun e!4477141 () Int)

(assert (=> d!2305438 (= lt!2636734 e!4477141)))

(declare-fun c!1386379 () Bool)

(assert (=> d!2305438 (= c!1386379 (is-Nil!72418 lt!2636538))))

(assert (=> d!2305438 (= (size!42289 lt!2636538) lt!2636734)))

(declare-fun b!7508448 () Bool)

(assert (=> b!7508448 (= e!4477141 0)))

(declare-fun b!7508449 () Bool)

(assert (=> b!7508449 (= e!4477141 (+ 1 (size!42289 (t!387111 lt!2636538))))))

(assert (= (and d!2305438 c!1386379) b!7508448))

(assert (= (and d!2305438 (not c!1386379)) b!7508449))

(declare-fun m!8092008 () Bool)

(assert (=> b!7508449 m!8092008))

(assert (=> b!7508258 d!2305438))

(assert (=> b!7508258 d!2305338))

(declare-fun d!2305440 () Bool)

(declare-fun lt!2636735 () Int)

(assert (=> d!2305440 (>= lt!2636735 0)))

(declare-fun e!4477142 () Int)

(assert (=> d!2305440 (= lt!2636735 e!4477142)))

(declare-fun c!1386380 () Bool)

(assert (=> d!2305440 (= c!1386380 (is-Nil!72418 (Cons!72418 lt!2636381 Nil!72418)))))

(assert (=> d!2305440 (= (size!42289 (Cons!72418 lt!2636381 Nil!72418)) lt!2636735)))

(declare-fun b!7508450 () Bool)

(assert (=> b!7508450 (= e!4477142 0)))

(declare-fun b!7508451 () Bool)

(assert (=> b!7508451 (= e!4477142 (+ 1 (size!42289 (t!387111 (Cons!72418 lt!2636381 Nil!72418)))))))

(assert (= (and d!2305440 c!1386380) b!7508450))

(assert (= (and d!2305440 (not c!1386380)) b!7508451))

(declare-fun m!8092010 () Bool)

(assert (=> b!7508451 m!8092010))

(assert (=> b!7508258 d!2305440))

(declare-fun bs!1938603 () Bool)

(declare-fun d!2305442 () Bool)

(assert (= bs!1938603 (and d!2305442 b!7508333)))

(declare-fun lambda!465683 () Int)

(assert (=> bs!1938603 (not (= lambda!465683 lambda!465653))))

(declare-fun bs!1938604 () Bool)

(assert (= bs!1938604 (and d!2305442 d!2305312)))

(assert (=> bs!1938604 (not (= lambda!465683 lambda!465632))))

(declare-fun bs!1938605 () Bool)

(assert (= bs!1938605 (and d!2305442 d!2305436)))

(assert (=> bs!1938605 (= (= (ite c!1386351 lambda!465652 lambda!465653) lambda!465651) (= lambda!465683 lambda!465680))))

(declare-fun bs!1938606 () Bool)

(assert (= bs!1938606 (and d!2305442 d!2305358)))

(assert (=> bs!1938606 (not (= lambda!465683 lambda!465651))))

(declare-fun bs!1938607 () Bool)

(assert (= bs!1938607 (and d!2305442 b!7508332)))

(assert (=> bs!1938607 (not (= lambda!465683 lambda!465652))))

(assert (=> d!2305442 true))

(assert (=> d!2305442 (< (dynLambda!29788 order!29657 (ite c!1386351 lambda!465652 lambda!465653)) (dynLambda!29788 order!29657 lambda!465683))))

(assert (=> d!2305442 (= (exists!4874 (ite c!1386351 lt!2636654 lt!2636656) (ite c!1386351 lambda!465652 lambda!465653)) (not (forall!18309 (ite c!1386351 lt!2636654 lt!2636656) lambda!465683)))))

(declare-fun bs!1938608 () Bool)

(assert (= bs!1938608 d!2305442))

(declare-fun m!8092012 () Bool)

(assert (=> bs!1938608 m!8092012))

(assert (=> bm!688869 d!2305442))

(declare-fun b!7508453 () Bool)

(declare-fun e!4477143 () List!72542)

(assert (=> b!7508453 (= e!4477143 (Cons!72418 (h!78866 (++!17347 testedP!204 (Cons!72418 lt!2636381 Nil!72418))) (++!17347 (t!387111 (++!17347 testedP!204 (Cons!72418 lt!2636381 Nil!72418))) lt!2636382)))))

(declare-fun b!7508455 () Bool)

(declare-fun e!4477144 () Bool)

(declare-fun lt!2636736 () List!72542)

(assert (=> b!7508455 (= e!4477144 (or (not (= lt!2636382 Nil!72418)) (= lt!2636736 (++!17347 testedP!204 (Cons!72418 lt!2636381 Nil!72418)))))))

(declare-fun b!7508454 () Bool)

(declare-fun res!3012360 () Bool)

(assert (=> b!7508454 (=> (not res!3012360) (not e!4477144))))

(assert (=> b!7508454 (= res!3012360 (= (size!42289 lt!2636736) (+ (size!42289 (++!17347 testedP!204 (Cons!72418 lt!2636381 Nil!72418))) (size!42289 lt!2636382))))))

(declare-fun b!7508452 () Bool)

(assert (=> b!7508452 (= e!4477143 lt!2636382)))

(declare-fun d!2305444 () Bool)

(assert (=> d!2305444 e!4477144))

(declare-fun res!3012359 () Bool)

(assert (=> d!2305444 (=> (not res!3012359) (not e!4477144))))

(assert (=> d!2305444 (= res!3012359 (= (content!15315 lt!2636736) (set.union (content!15315 (++!17347 testedP!204 (Cons!72418 lt!2636381 Nil!72418))) (content!15315 lt!2636382))))))

(assert (=> d!2305444 (= lt!2636736 e!4477143)))

(declare-fun c!1386381 () Bool)

(assert (=> d!2305444 (= c!1386381 (is-Nil!72418 (++!17347 testedP!204 (Cons!72418 lt!2636381 Nil!72418))))))

(assert (=> d!2305444 (= (++!17347 (++!17347 testedP!204 (Cons!72418 lt!2636381 Nil!72418)) lt!2636382) lt!2636736)))

(assert (= (and d!2305444 c!1386381) b!7508452))

(assert (= (and d!2305444 (not c!1386381)) b!7508453))

(assert (= (and d!2305444 res!3012359) b!7508454))

(assert (= (and b!7508454 res!3012360) b!7508455))

(declare-fun m!8092014 () Bool)

(assert (=> b!7508453 m!8092014))

(declare-fun m!8092016 () Bool)

(assert (=> b!7508454 m!8092016))

(assert (=> b!7508454 m!8091474))

(declare-fun m!8092018 () Bool)

(assert (=> b!7508454 m!8092018))

(assert (=> b!7508454 m!8091688))

(declare-fun m!8092020 () Bool)

(assert (=> d!2305444 m!8092020))

(assert (=> d!2305444 m!8091474))

(declare-fun m!8092022 () Bool)

(assert (=> d!2305444 m!8092022))

(assert (=> d!2305444 m!8091694))

(assert (=> d!2305310 d!2305444))

(assert (=> d!2305310 d!2305328))

(declare-fun d!2305446 () Bool)

(assert (=> d!2305446 (= (++!17347 (++!17347 testedP!204 (Cons!72418 lt!2636381 Nil!72418)) lt!2636382) totalInput!779)))

(assert (=> d!2305446 true))

(declare-fun _$68!1402 () Unit!166450)

(assert (=> d!2305446 (= (choose!58187 testedP!204 lt!2636381 lt!2636382 totalInput!779) _$68!1402)))

(declare-fun bs!1938609 () Bool)

(assert (= bs!1938609 d!2305446))

(assert (=> bs!1938609 m!8091474))

(assert (=> bs!1938609 m!8091474))

(assert (=> bs!1938609 m!8091616))

(assert (=> d!2305310 d!2305446))

(declare-fun e!4477145 () List!72542)

(declare-fun b!7508457 () Bool)

(assert (=> b!7508457 (= e!4477145 (Cons!72418 (h!78866 testedP!204) (++!17347 (t!387111 testedP!204) (Cons!72418 lt!2636381 lt!2636382))))))

(declare-fun e!4477146 () Bool)

(declare-fun b!7508459 () Bool)

(declare-fun lt!2636737 () List!72542)

(assert (=> b!7508459 (= e!4477146 (or (not (= (Cons!72418 lt!2636381 lt!2636382) Nil!72418)) (= lt!2636737 testedP!204)))))

(declare-fun b!7508458 () Bool)

(declare-fun res!3012362 () Bool)

(assert (=> b!7508458 (=> (not res!3012362) (not e!4477146))))

(assert (=> b!7508458 (= res!3012362 (= (size!42289 lt!2636737) (+ (size!42289 testedP!204) (size!42289 (Cons!72418 lt!2636381 lt!2636382)))))))

(declare-fun b!7508456 () Bool)

(assert (=> b!7508456 (= e!4477145 (Cons!72418 lt!2636381 lt!2636382))))

(declare-fun d!2305448 () Bool)

(assert (=> d!2305448 e!4477146))

(declare-fun res!3012361 () Bool)

(assert (=> d!2305448 (=> (not res!3012361) (not e!4477146))))

(assert (=> d!2305448 (= res!3012361 (= (content!15315 lt!2636737) (set.union (content!15315 testedP!204) (content!15315 (Cons!72418 lt!2636381 lt!2636382)))))))

(assert (=> d!2305448 (= lt!2636737 e!4477145)))

(declare-fun c!1386382 () Bool)

(assert (=> d!2305448 (= c!1386382 (is-Nil!72418 testedP!204))))

(assert (=> d!2305448 (= (++!17347 testedP!204 (Cons!72418 lt!2636381 lt!2636382)) lt!2636737)))

(assert (= (and d!2305448 c!1386382) b!7508456))

(assert (= (and d!2305448 (not c!1386382)) b!7508457))

(assert (= (and d!2305448 res!3012361) b!7508458))

(assert (= (and b!7508458 res!3012362) b!7508459))

(declare-fun m!8092024 () Bool)

(assert (=> b!7508457 m!8092024))

(declare-fun m!8092026 () Bool)

(assert (=> b!7508458 m!8092026))

(assert (=> b!7508458 m!8091516))

(declare-fun m!8092028 () Bool)

(assert (=> b!7508458 m!8092028))

(declare-fun m!8092030 () Bool)

(assert (=> d!2305448 m!8092030))

(assert (=> d!2305448 m!8091704))

(declare-fun m!8092032 () Bool)

(assert (=> d!2305448 m!8092032))

(assert (=> d!2305310 d!2305448))

(declare-fun b!7508461 () Bool)

(declare-fun e!4477147 () List!72542)

(assert (=> b!7508461 (= e!4477147 (Cons!72418 (h!78866 (t!387111 testedP!204)) (++!17347 (t!387111 (t!387111 testedP!204)) (Cons!72418 (head!15435 lt!2636386) Nil!72418))))))

(declare-fun e!4477148 () Bool)

(declare-fun b!7508463 () Bool)

(declare-fun lt!2636738 () List!72542)

(assert (=> b!7508463 (= e!4477148 (or (not (= (Cons!72418 (head!15435 lt!2636386) Nil!72418) Nil!72418)) (= lt!2636738 (t!387111 testedP!204))))))

(declare-fun b!7508462 () Bool)

(declare-fun res!3012364 () Bool)

(assert (=> b!7508462 (=> (not res!3012364) (not e!4477148))))

(assert (=> b!7508462 (= res!3012364 (= (size!42289 lt!2636738) (+ (size!42289 (t!387111 testedP!204)) (size!42289 (Cons!72418 (head!15435 lt!2636386) Nil!72418)))))))

(declare-fun b!7508460 () Bool)

(assert (=> b!7508460 (= e!4477147 (Cons!72418 (head!15435 lt!2636386) Nil!72418))))

(declare-fun d!2305450 () Bool)

(assert (=> d!2305450 e!4477148))

(declare-fun res!3012363 () Bool)

(assert (=> d!2305450 (=> (not res!3012363) (not e!4477148))))

(assert (=> d!2305450 (= res!3012363 (= (content!15315 lt!2636738) (set.union (content!15315 (t!387111 testedP!204)) (content!15315 (Cons!72418 (head!15435 lt!2636386) Nil!72418)))))))

(assert (=> d!2305450 (= lt!2636738 e!4477147)))

(declare-fun c!1386383 () Bool)

(assert (=> d!2305450 (= c!1386383 (is-Nil!72418 (t!387111 testedP!204)))))

(assert (=> d!2305450 (= (++!17347 (t!387111 testedP!204) (Cons!72418 (head!15435 lt!2636386) Nil!72418)) lt!2636738)))

(assert (= (and d!2305450 c!1386383) b!7508460))

(assert (= (and d!2305450 (not c!1386383)) b!7508461))

(assert (= (and d!2305450 res!3012363) b!7508462))

(assert (= (and b!7508462 res!3012364) b!7508463))

(declare-fun m!8092034 () Bool)

(assert (=> b!7508461 m!8092034))

(declare-fun m!8092036 () Bool)

(assert (=> b!7508462 m!8092036))

(assert (=> b!7508462 m!8091736))

(assert (=> b!7508462 m!8091700))

(declare-fun m!8092038 () Bool)

(assert (=> d!2305450 m!8092038))

(declare-fun m!8092040 () Bool)

(assert (=> d!2305450 m!8092040))

(assert (=> d!2305450 m!8091706))

(assert (=> b!7508253 d!2305450))

(declare-fun b!7508465 () Bool)

(declare-fun e!4477149 () List!72542)

(assert (=> b!7508465 (= e!4477149 (Cons!72418 (h!78866 (t!387111 testedP!204)) (++!17347 (t!387111 (t!387111 testedP!204)) testedSuffix!164)))))

(declare-fun e!4477150 () Bool)

(declare-fun b!7508467 () Bool)

(declare-fun lt!2636739 () List!72542)

(assert (=> b!7508467 (= e!4477150 (or (not (= testedSuffix!164 Nil!72418)) (= lt!2636739 (t!387111 testedP!204))))))

(declare-fun b!7508466 () Bool)

(declare-fun res!3012366 () Bool)

(assert (=> b!7508466 (=> (not res!3012366) (not e!4477150))))

(assert (=> b!7508466 (= res!3012366 (= (size!42289 lt!2636739) (+ (size!42289 (t!387111 testedP!204)) (size!42289 testedSuffix!164))))))

(declare-fun b!7508464 () Bool)

(assert (=> b!7508464 (= e!4477149 testedSuffix!164)))

(declare-fun d!2305452 () Bool)

(assert (=> d!2305452 e!4477150))

(declare-fun res!3012365 () Bool)

(assert (=> d!2305452 (=> (not res!3012365) (not e!4477150))))

(assert (=> d!2305452 (= res!3012365 (= (content!15315 lt!2636739) (set.union (content!15315 (t!387111 testedP!204)) (content!15315 testedSuffix!164))))))

(assert (=> d!2305452 (= lt!2636739 e!4477149)))

(declare-fun c!1386384 () Bool)

(assert (=> d!2305452 (= c!1386384 (is-Nil!72418 (t!387111 testedP!204)))))

(assert (=> d!2305452 (= (++!17347 (t!387111 testedP!204) testedSuffix!164) lt!2636739)))

(assert (= (and d!2305452 c!1386384) b!7508464))

(assert (= (and d!2305452 (not c!1386384)) b!7508465))

(assert (= (and d!2305452 res!3012365) b!7508466))

(assert (= (and b!7508466 res!3012366) b!7508467))

(declare-fun m!8092042 () Bool)

(assert (=> b!7508465 m!8092042))

(declare-fun m!8092044 () Bool)

(assert (=> b!7508466 m!8092044))

(assert (=> b!7508466 m!8091736))

(assert (=> b!7508466 m!8091838))

(declare-fun m!8092046 () Bool)

(assert (=> d!2305452 m!8092046))

(assert (=> d!2305452 m!8092040))

(assert (=> d!2305452 m!8091842))

(assert (=> b!7508343 d!2305452))

(declare-fun d!2305454 () Bool)

(declare-fun res!3012371 () Bool)

(declare-fun e!4477155 () Bool)

(assert (=> d!2305454 (=> res!3012371 e!4477155)))

(assert (=> d!2305454 (= res!3012371 (is-Nil!72417 (exprs!8970 setElem!57069)))))

(assert (=> d!2305454 (= (forall!18305 (exprs!8970 setElem!57069) lambda!465635) e!4477155)))

(declare-fun b!7508472 () Bool)

(declare-fun e!4477156 () Bool)

(assert (=> b!7508472 (= e!4477155 e!4477156)))

(declare-fun res!3012372 () Bool)

(assert (=> b!7508472 (=> (not res!3012372) (not e!4477156))))

(declare-fun dynLambda!29789 (Int Regex!19718) Bool)

(assert (=> b!7508472 (= res!3012372 (dynLambda!29789 lambda!465635 (h!78865 (exprs!8970 setElem!57069))))))

(declare-fun b!7508473 () Bool)

(assert (=> b!7508473 (= e!4477156 (forall!18305 (t!387110 (exprs!8970 setElem!57069)) lambda!465635))))

(assert (= (and d!2305454 (not res!3012371)) b!7508472))

(assert (= (and b!7508472 res!3012372) b!7508473))

(declare-fun b_lambda!287883 () Bool)

(assert (=> (not b_lambda!287883) (not b!7508472)))

(declare-fun m!8092048 () Bool)

(assert (=> b!7508472 m!8092048))

(declare-fun m!8092050 () Bool)

(assert (=> b!7508473 m!8092050))

(assert (=> d!2305342 d!2305454))

(declare-fun b!7508475 () Bool)

(declare-fun e!4477157 () List!72542)

(assert (=> b!7508475 (= e!4477157 (Cons!72418 (h!78866 testedP!204) (++!17347 (t!387111 testedP!204) lt!2636666)))))

(declare-fun e!4477158 () Bool)

(declare-fun b!7508477 () Bool)

(declare-fun lt!2636740 () List!72542)

(assert (=> b!7508477 (= e!4477158 (or (not (= lt!2636666 Nil!72418)) (= lt!2636740 testedP!204)))))

(declare-fun b!7508476 () Bool)

(declare-fun res!3012374 () Bool)

(assert (=> b!7508476 (=> (not res!3012374) (not e!4477158))))

(assert (=> b!7508476 (= res!3012374 (= (size!42289 lt!2636740) (+ (size!42289 testedP!204) (size!42289 lt!2636666))))))

(declare-fun b!7508474 () Bool)

(assert (=> b!7508474 (= e!4477157 lt!2636666)))

(declare-fun d!2305456 () Bool)

(assert (=> d!2305456 e!4477158))

(declare-fun res!3012373 () Bool)

(assert (=> d!2305456 (=> (not res!3012373) (not e!4477158))))

(assert (=> d!2305456 (= res!3012373 (= (content!15315 lt!2636740) (set.union (content!15315 testedP!204) (content!15315 lt!2636666))))))

(assert (=> d!2305456 (= lt!2636740 e!4477157)))

(declare-fun c!1386385 () Bool)

(assert (=> d!2305456 (= c!1386385 (is-Nil!72418 testedP!204))))

(assert (=> d!2305456 (= (++!17347 testedP!204 lt!2636666) lt!2636740)))

(assert (= (and d!2305456 c!1386385) b!7508474))

(assert (= (and d!2305456 (not c!1386385)) b!7508475))

(assert (= (and d!2305456 res!3012373) b!7508476))

(assert (= (and b!7508476 res!3012374) b!7508477))

(declare-fun m!8092052 () Bool)

(assert (=> b!7508475 m!8092052))

(declare-fun m!8092054 () Bool)

(assert (=> b!7508476 m!8092054))

(assert (=> b!7508476 m!8091516))

(declare-fun m!8092056 () Bool)

(assert (=> b!7508476 m!8092056))

(declare-fun m!8092058 () Bool)

(assert (=> d!2305456 m!8092058))

(assert (=> d!2305456 m!8091704))

(declare-fun m!8092060 () Bool)

(assert (=> d!2305456 m!8092060))

(assert (=> d!2305362 d!2305456))

(assert (=> d!2305362 d!2305340))

(assert (=> d!2305362 d!2305338))

(assert (=> d!2305344 d!2305346))

(declare-fun d!2305458 () Bool)

(assert (=> d!2305458 (isPrefix!6012 totalInput!779 totalInput!779)))

(assert (=> d!2305458 true))

(declare-fun _$45!2410 () Unit!166450)

(assert (=> d!2305458 (= (choose!58190 totalInput!779 totalInput!779) _$45!2410)))

(declare-fun bs!1938610 () Bool)

(assert (= bs!1938610 d!2305458))

(assert (=> bs!1938610 m!8091502))

(assert (=> d!2305344 d!2305458))

(declare-fun d!2305460 () Bool)

(declare-fun lt!2636741 () Int)

(assert (=> d!2305460 (>= lt!2636741 0)))

(declare-fun e!4477159 () Int)

(assert (=> d!2305460 (= lt!2636741 e!4477159)))

(declare-fun c!1386386 () Bool)

(assert (=> d!2305460 (= c!1386386 (is-Nil!72418 (t!387111 totalInput!779)))))

(assert (=> d!2305460 (= (size!42289 (t!387111 totalInput!779)) lt!2636741)))

(declare-fun b!7508478 () Bool)

(assert (=> b!7508478 (= e!4477159 0)))

(declare-fun b!7508479 () Bool)

(assert (=> b!7508479 (= e!4477159 (+ 1 (size!42289 (t!387111 (t!387111 totalInput!779)))))))

(assert (= (and d!2305460 c!1386386) b!7508478))

(assert (= (and d!2305460 (not c!1386386)) b!7508479))

(declare-fun m!8092062 () Bool)

(assert (=> b!7508479 m!8092062))

(assert (=> b!7508275 d!2305460))

(declare-fun d!2305462 () Bool)

(assert (=> d!2305462 (= (isEmpty!41319 (_1!37686 lt!2636624)) (is-Nil!72418 (_1!37686 lt!2636624)))))

(assert (=> b!7508323 d!2305462))

(declare-fun d!2305464 () Bool)

(declare-fun e!4477162 () Bool)

(assert (=> d!2305464 e!4477162))

(declare-fun res!3012378 () Bool)

(assert (=> d!2305464 (=> res!3012378 e!4477162)))

(declare-fun lt!2636742 () Bool)

(assert (=> d!2305464 (= res!3012378 (not lt!2636742))))

(declare-fun e!4477161 () Bool)

(assert (=> d!2305464 (= lt!2636742 e!4477161)))

(declare-fun res!3012375 () Bool)

(assert (=> d!2305464 (=> res!3012375 e!4477161)))

(assert (=> d!2305464 (= res!3012375 (is-Nil!72418 (tail!15002 totalInput!779)))))

(assert (=> d!2305464 (= (isPrefix!6012 (tail!15002 totalInput!779) (tail!15002 totalInput!779)) lt!2636742)))

(declare-fun b!7508482 () Bool)

(declare-fun e!4477160 () Bool)

(assert (=> b!7508482 (= e!4477160 (isPrefix!6012 (tail!15002 (tail!15002 totalInput!779)) (tail!15002 (tail!15002 totalInput!779))))))

(declare-fun b!7508481 () Bool)

(declare-fun res!3012376 () Bool)

(assert (=> b!7508481 (=> (not res!3012376) (not e!4477160))))

(assert (=> b!7508481 (= res!3012376 (= (head!15435 (tail!15002 totalInput!779)) (head!15435 (tail!15002 totalInput!779))))))

(declare-fun b!7508483 () Bool)

(assert (=> b!7508483 (= e!4477162 (>= (size!42289 (tail!15002 totalInput!779)) (size!42289 (tail!15002 totalInput!779))))))

(declare-fun b!7508480 () Bool)

(assert (=> b!7508480 (= e!4477161 e!4477160)))

(declare-fun res!3012377 () Bool)

(assert (=> b!7508480 (=> (not res!3012377) (not e!4477160))))

(assert (=> b!7508480 (= res!3012377 (not (is-Nil!72418 (tail!15002 totalInput!779))))))

(assert (= (and d!2305464 (not res!3012375)) b!7508480))

(assert (= (and b!7508480 res!3012377) b!7508481))

(assert (= (and b!7508481 res!3012376) b!7508482))

(assert (= (and d!2305464 (not res!3012378)) b!7508483))

(assert (=> b!7508482 m!8091606))

(assert (=> b!7508482 m!8091990))

(assert (=> b!7508482 m!8091606))

(assert (=> b!7508482 m!8091990))

(assert (=> b!7508482 m!8091990))

(assert (=> b!7508482 m!8091990))

(declare-fun m!8092064 () Bool)

(assert (=> b!7508482 m!8092064))

(assert (=> b!7508481 m!8091606))

(assert (=> b!7508481 m!8091996))

(assert (=> b!7508481 m!8091606))

(assert (=> b!7508481 m!8091996))

(assert (=> b!7508483 m!8091606))

(assert (=> b!7508483 m!8091998))

(assert (=> b!7508483 m!8091606))

(assert (=> b!7508483 m!8091998))

(assert (=> b!7508278 d!2305464))

(assert (=> b!7508278 d!2305434))

(declare-fun bm!688876 () Bool)

(declare-fun call!688883 () C!39762)

(assert (=> bm!688876 (= call!688883 (head!15435 call!688861))))

(declare-fun b!7508484 () Bool)

(declare-fun c!1386391 () Bool)

(declare-fun call!688887 () Bool)

(assert (=> b!7508484 (= c!1386391 call!688887)))

(declare-fun lt!2636743 () Unit!166450)

(declare-fun lt!2636766 () Unit!166450)

(assert (=> b!7508484 (= lt!2636743 lt!2636766)))

(assert (=> b!7508484 (= totalInput!779 lt!2636636)))

(declare-fun call!688884 () Unit!166450)

(assert (=> b!7508484 (= lt!2636766 call!688884)))

(declare-fun lt!2636764 () Unit!166450)

(declare-fun lt!2636744 () Unit!166450)

(assert (=> b!7508484 (= lt!2636764 lt!2636744)))

(declare-fun call!688882 () Bool)

(assert (=> b!7508484 call!688882))

(declare-fun call!688886 () Unit!166450)

(assert (=> b!7508484 (= lt!2636744 call!688886)))

(declare-fun e!4477169 () tuple2!68766)

(declare-fun e!4477168 () tuple2!68766)

(assert (=> b!7508484 (= e!4477169 e!4477168)))

(declare-fun bm!688877 () Bool)

(assert (=> bm!688877 (= call!688882 (isPrefix!6012 totalInput!779 totalInput!779))))

(declare-fun b!7508486 () Bool)

(assert (=> b!7508486 (= e!4477168 (tuple2!68767 Nil!72418 totalInput!779))))

(declare-fun b!7508487 () Bool)

(declare-fun e!4477164 () Unit!166450)

(declare-fun Unit!166468 () Unit!166450)

(assert (=> b!7508487 (= e!4477164 Unit!166468)))

(declare-fun bm!688878 () Bool)

(assert (=> bm!688878 (= call!688886 (lemmaIsPrefixRefl!3851 totalInput!779 totalInput!779))))

(declare-fun b!7508488 () Bool)

(declare-fun e!4477163 () Bool)

(declare-fun e!4477170 () Bool)

(assert (=> b!7508488 (= e!4477163 e!4477170)))

(declare-fun res!3012379 () Bool)

(assert (=> b!7508488 (=> res!3012379 e!4477170)))

(declare-fun lt!2636747 () tuple2!68766)

(assert (=> b!7508488 (= res!3012379 (isEmpty!41319 (_1!37686 lt!2636747)))))

(declare-fun bm!688879 () Bool)

(declare-fun call!688881 () List!72542)

(assert (=> bm!688879 (= call!688881 (tail!15002 call!688861))))

(declare-fun b!7508489 () Bool)

(declare-fun Unit!166469 () Unit!166450)

(assert (=> b!7508489 (= e!4477164 Unit!166469)))

(declare-fun lt!2636762 () Unit!166450)

(assert (=> b!7508489 (= lt!2636762 call!688886)))

(assert (=> b!7508489 call!688882))

(declare-fun lt!2636759 () Unit!166450)

(assert (=> b!7508489 (= lt!2636759 lt!2636762)))

(declare-fun lt!2636750 () Unit!166450)

(assert (=> b!7508489 (= lt!2636750 call!688884)))

(assert (=> b!7508489 (= totalInput!779 lt!2636636)))

(declare-fun lt!2636753 () Unit!166450)

(assert (=> b!7508489 (= lt!2636753 lt!2636750)))

(assert (=> b!7508489 false))

(declare-fun b!7508490 () Bool)

(declare-fun e!4477166 () tuple2!68766)

(assert (=> b!7508490 (= e!4477166 e!4477169)))

(declare-fun c!1386388 () Bool)

(assert (=> b!7508490 (= c!1386388 (= (+ 1 testedPSize!164 1) totalInputSize!226))))

(declare-fun bm!688880 () Bool)

(assert (=> bm!688880 (= call!688884 (lemmaIsPrefixSameLengthThenSameList!1501 totalInput!779 lt!2636636 totalInput!779))))

(declare-fun d!2305466 () Bool)

(assert (=> d!2305466 e!4477163))

(declare-fun res!3012380 () Bool)

(assert (=> d!2305466 (=> (not res!3012380) (not e!4477163))))

(assert (=> d!2305466 (= res!3012380 (= (++!17347 (_1!37686 lt!2636747) (_2!37686 lt!2636747)) totalInput!779))))

(assert (=> d!2305466 (= lt!2636747 e!4477166)))

(declare-fun c!1386390 () Bool)

(assert (=> d!2305466 (= c!1386390 (lostCauseZipper!1406 call!688868))))

(declare-fun lt!2636758 () Unit!166450)

(declare-fun Unit!166470 () Unit!166450)

(assert (=> d!2305466 (= lt!2636758 Unit!166470)))

(assert (=> d!2305466 (= (getSuffix!3512 totalInput!779 lt!2636636) call!688861)))

(declare-fun lt!2636746 () Unit!166450)

(declare-fun lt!2636748 () Unit!166450)

(assert (=> d!2305466 (= lt!2636746 lt!2636748)))

(declare-fun lt!2636751 () List!72542)

(assert (=> d!2305466 (= call!688861 lt!2636751)))

(assert (=> d!2305466 (= lt!2636748 (lemmaSamePrefixThenSameSuffix!2811 lt!2636636 call!688861 lt!2636636 lt!2636751 totalInput!779))))

(assert (=> d!2305466 (= lt!2636751 (getSuffix!3512 totalInput!779 lt!2636636))))

(declare-fun lt!2636761 () Unit!166450)

(declare-fun lt!2636749 () Unit!166450)

(assert (=> d!2305466 (= lt!2636761 lt!2636749)))

(assert (=> d!2305466 (isPrefix!6012 lt!2636636 (++!17347 lt!2636636 call!688861))))

(assert (=> d!2305466 (= lt!2636749 (lemmaConcatTwoListThenFirstIsPrefix!3725 lt!2636636 call!688861))))

(assert (=> d!2305466 (= (++!17347 lt!2636636 call!688861) totalInput!779)))

(assert (=> d!2305466 (= (findLongestMatchInnerZipper!324 call!688868 lt!2636636 (+ 1 testedPSize!164 1) call!688861 totalInput!779 totalInputSize!226) lt!2636747)))

(declare-fun b!7508485 () Bool)

(declare-fun e!4477165 () tuple2!68766)

(declare-fun lt!2636756 () tuple2!68766)

(assert (=> b!7508485 (= e!4477165 lt!2636756)))

(declare-fun b!7508491 () Bool)

(assert (=> b!7508491 (= e!4477168 (tuple2!68767 lt!2636636 Nil!72418))))

(declare-fun bm!688881 () Bool)

(assert (=> bm!688881 (= call!688887 (nullableZipper!3184 call!688868))))

(declare-fun b!7508492 () Bool)

(assert (=> b!7508492 (= e!4477165 (tuple2!68767 lt!2636636 call!688861))))

(declare-fun b!7508493 () Bool)

(declare-fun c!1386387 () Bool)

(assert (=> b!7508493 (= c!1386387 call!688887)))

(declare-fun lt!2636752 () Unit!166450)

(declare-fun lt!2636767 () Unit!166450)

(assert (=> b!7508493 (= lt!2636752 lt!2636767)))

(declare-fun lt!2636763 () C!39762)

(declare-fun lt!2636760 () List!72542)

(assert (=> b!7508493 (= (++!17347 (++!17347 lt!2636636 (Cons!72418 lt!2636763 Nil!72418)) lt!2636760) totalInput!779)))

(assert (=> b!7508493 (= lt!2636767 (lemmaMoveElementToOtherListKeepsConcatEq!3160 lt!2636636 lt!2636763 lt!2636760 totalInput!779))))

(assert (=> b!7508493 (= lt!2636760 (tail!15002 call!688861))))

(assert (=> b!7508493 (= lt!2636763 (head!15435 call!688861))))

(declare-fun lt!2636765 () Unit!166450)

(declare-fun lt!2636745 () Unit!166450)

(assert (=> b!7508493 (= lt!2636765 lt!2636745)))

(assert (=> b!7508493 (isPrefix!6012 (++!17347 lt!2636636 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 lt!2636636)) Nil!72418)) totalInput!779)))

(assert (=> b!7508493 (= lt!2636745 (lemmaAddHeadSuffixToPrefixStillPrefix!1129 lt!2636636 totalInput!779))))

(declare-fun lt!2636768 () List!72542)

(assert (=> b!7508493 (= lt!2636768 (++!17347 lt!2636636 (Cons!72418 (head!15435 call!688861) Nil!72418)))))

(declare-fun lt!2636754 () Unit!166450)

(assert (=> b!7508493 (= lt!2636754 e!4477164)))

(declare-fun c!1386392 () Bool)

(assert (=> b!7508493 (= c!1386392 (= (size!42289 lt!2636636) (size!42289 totalInput!779)))))

(declare-fun lt!2636757 () Unit!166450)

(declare-fun lt!2636755 () Unit!166450)

(assert (=> b!7508493 (= lt!2636757 lt!2636755)))

(assert (=> b!7508493 (<= (size!42289 lt!2636636) (size!42289 totalInput!779))))

(assert (=> b!7508493 (= lt!2636755 (lemmaIsPrefixThenSmallerEqSize!999 lt!2636636 totalInput!779))))

(declare-fun e!4477167 () tuple2!68766)

(assert (=> b!7508493 (= e!4477169 e!4477167)))

(declare-fun b!7508494 () Bool)

(declare-fun call!688885 () tuple2!68766)

(assert (=> b!7508494 (= e!4477167 call!688885)))

(declare-fun bm!688882 () Bool)

(declare-fun call!688888 () (Set Context!16940))

(assert (=> bm!688882 (= call!688888 (derivationStepZipper!3727 call!688868 call!688883))))

(declare-fun b!7508495 () Bool)

(assert (=> b!7508495 (= e!4477167 e!4477165)))

(assert (=> b!7508495 (= lt!2636756 call!688885)))

(declare-fun c!1386389 () Bool)

(assert (=> b!7508495 (= c!1386389 (isEmpty!41319 (_1!37686 lt!2636756)))))

(declare-fun b!7508496 () Bool)

(assert (=> b!7508496 (= e!4477166 (tuple2!68767 Nil!72418 totalInput!779))))

(declare-fun bm!688883 () Bool)

(assert (=> bm!688883 (= call!688885 (findLongestMatchInnerZipper!324 call!688888 lt!2636768 (+ 1 testedPSize!164 1 1) call!688881 totalInput!779 totalInputSize!226))))

(declare-fun b!7508497 () Bool)

(assert (=> b!7508497 (= e!4477170 (>= (size!42289 (_1!37686 lt!2636747)) (size!42289 lt!2636636)))))

(assert (= (and d!2305466 c!1386390) b!7508496))

(assert (= (and d!2305466 (not c!1386390)) b!7508490))

(assert (= (and b!7508490 c!1386388) b!7508484))

(assert (= (and b!7508490 (not c!1386388)) b!7508493))

(assert (= (and b!7508484 c!1386391) b!7508491))

(assert (= (and b!7508484 (not c!1386391)) b!7508486))

(assert (= (and b!7508493 c!1386392) b!7508489))

(assert (= (and b!7508493 (not c!1386392)) b!7508487))

(assert (= (and b!7508493 c!1386387) b!7508495))

(assert (= (and b!7508493 (not c!1386387)) b!7508494))

(assert (= (and b!7508495 c!1386389) b!7508492))

(assert (= (and b!7508495 (not c!1386389)) b!7508485))

(assert (= (or b!7508495 b!7508494) bm!688876))

(assert (= (or b!7508495 b!7508494) bm!688879))

(assert (= (or b!7508495 b!7508494) bm!688882))

(assert (= (or b!7508495 b!7508494) bm!688883))

(assert (= (or b!7508484 b!7508489) bm!688877))

(assert (= (or b!7508484 b!7508489) bm!688880))

(assert (= (or b!7508484 b!7508493) bm!688881))

(assert (= (or b!7508484 b!7508489) bm!688878))

(assert (= (and d!2305466 res!3012380) b!7508488))

(assert (= (and b!7508488 (not res!3012379)) b!7508497))

(declare-fun m!8092066 () Bool)

(assert (=> b!7508493 m!8092066))

(declare-fun m!8092068 () Bool)

(assert (=> b!7508493 m!8092068))

(declare-fun m!8092070 () Bool)

(assert (=> b!7508493 m!8092070))

(assert (=> b!7508493 m!8091506))

(declare-fun m!8092072 () Bool)

(assert (=> b!7508493 m!8092072))

(declare-fun m!8092074 () Bool)

(assert (=> b!7508493 m!8092074))

(declare-fun m!8092076 () Bool)

(assert (=> b!7508493 m!8092076))

(declare-fun m!8092078 () Bool)

(assert (=> b!7508493 m!8092078))

(declare-fun m!8092080 () Bool)

(assert (=> b!7508493 m!8092080))

(declare-fun m!8092082 () Bool)

(assert (=> b!7508493 m!8092082))

(assert (=> b!7508493 m!8092072))

(assert (=> b!7508493 m!8092076))

(declare-fun m!8092084 () Bool)

(assert (=> b!7508493 m!8092084))

(assert (=> b!7508493 m!8092066))

(declare-fun m!8092086 () Bool)

(assert (=> b!7508493 m!8092086))

(declare-fun m!8092088 () Bool)

(assert (=> b!7508493 m!8092088))

(declare-fun m!8092090 () Bool)

(assert (=> b!7508493 m!8092090))

(declare-fun m!8092092 () Bool)

(assert (=> b!7508497 m!8092092))

(assert (=> b!7508497 m!8092070))

(assert (=> bm!688878 m!8091500))

(declare-fun m!8092094 () Bool)

(assert (=> bm!688880 m!8092094))

(declare-fun m!8092096 () Bool)

(assert (=> bm!688882 m!8092096))

(declare-fun m!8092098 () Bool)

(assert (=> bm!688881 m!8092098))

(assert (=> bm!688877 m!8091502))

(declare-fun m!8092100 () Bool)

(assert (=> d!2305466 m!8092100))

(declare-fun m!8092102 () Bool)

(assert (=> d!2305466 m!8092102))

(assert (=> d!2305466 m!8092076))

(declare-fun m!8092104 () Bool)

(assert (=> d!2305466 m!8092104))

(declare-fun m!8092106 () Bool)

(assert (=> d!2305466 m!8092106))

(assert (=> d!2305466 m!8092104))

(declare-fun m!8092108 () Bool)

(assert (=> d!2305466 m!8092108))

(declare-fun m!8092110 () Bool)

(assert (=> d!2305466 m!8092110))

(assert (=> bm!688879 m!8092090))

(declare-fun m!8092112 () Bool)

(assert (=> b!7508488 m!8092112))

(declare-fun m!8092114 () Bool)

(assert (=> b!7508495 m!8092114))

(declare-fun m!8092116 () Bool)

(assert (=> bm!688883 m!8092116))

(assert (=> bm!688876 m!8092088))

(assert (=> bm!688863 d!2305466))

(declare-fun b!7508499 () Bool)

(declare-fun e!4477171 () List!72542)

(assert (=> b!7508499 (= e!4477171 (Cons!72418 (h!78866 (t!387111 lt!2636391)) (++!17347 (t!387111 (t!387111 lt!2636391)) lt!2636382)))))

(declare-fun e!4477172 () Bool)

(declare-fun lt!2636769 () List!72542)

(declare-fun b!7508501 () Bool)

(assert (=> b!7508501 (= e!4477172 (or (not (= lt!2636382 Nil!72418)) (= lt!2636769 (t!387111 lt!2636391))))))

(declare-fun b!7508500 () Bool)

(declare-fun res!3012382 () Bool)

(assert (=> b!7508500 (=> (not res!3012382) (not e!4477172))))

(assert (=> b!7508500 (= res!3012382 (= (size!42289 lt!2636769) (+ (size!42289 (t!387111 lt!2636391)) (size!42289 lt!2636382))))))

(declare-fun b!7508498 () Bool)

(assert (=> b!7508498 (= e!4477171 lt!2636382)))

(declare-fun d!2305468 () Bool)

(assert (=> d!2305468 e!4477172))

(declare-fun res!3012381 () Bool)

(assert (=> d!2305468 (=> (not res!3012381) (not e!4477172))))

(assert (=> d!2305468 (= res!3012381 (= (content!15315 lt!2636769) (set.union (content!15315 (t!387111 lt!2636391)) (content!15315 lt!2636382))))))

(assert (=> d!2305468 (= lt!2636769 e!4477171)))

(declare-fun c!1386393 () Bool)

(assert (=> d!2305468 (= c!1386393 (is-Nil!72418 (t!387111 lt!2636391)))))

(assert (=> d!2305468 (= (++!17347 (t!387111 lt!2636391) lt!2636382) lt!2636769)))

(assert (= (and d!2305468 c!1386393) b!7508498))

(assert (= (and d!2305468 (not c!1386393)) b!7508499))

(assert (= (and d!2305468 res!3012381) b!7508500))

(assert (= (and b!7508500 res!3012382) b!7508501))

(declare-fun m!8092118 () Bool)

(assert (=> b!7508499 m!8092118))

(declare-fun m!8092120 () Bool)

(assert (=> b!7508500 m!8092120))

(declare-fun m!8092122 () Bool)

(assert (=> b!7508500 m!8092122))

(assert (=> b!7508500 m!8091688))

(declare-fun m!8092124 () Bool)

(assert (=> d!2305468 m!8092124))

(declare-fun m!8092126 () Bool)

(assert (=> d!2305468 m!8092126))

(assert (=> d!2305468 m!8091694))

(assert (=> b!7508249 d!2305468))

(declare-fun d!2305470 () Bool)

(declare-fun c!1386396 () Bool)

(assert (=> d!2305470 (= c!1386396 (is-Nil!72418 lt!2636538))))

(declare-fun e!4477175 () (Set C!39762))

(assert (=> d!2305470 (= (content!15315 lt!2636538) e!4477175)))

(declare-fun b!7508506 () Bool)

(assert (=> b!7508506 (= e!4477175 (as set.empty (Set C!39762)))))

(declare-fun b!7508507 () Bool)

(assert (=> b!7508507 (= e!4477175 (set.union (set.insert (h!78866 lt!2636538) (as set.empty (Set C!39762))) (content!15315 (t!387111 lt!2636538))))))

(assert (= (and d!2305470 c!1386396) b!7508506))

(assert (= (and d!2305470 (not c!1386396)) b!7508507))

(declare-fun m!8092128 () Bool)

(assert (=> b!7508507 m!8092128))

(declare-fun m!8092130 () Bool)

(assert (=> b!7508507 m!8092130))

(assert (=> d!2305328 d!2305470))

(declare-fun d!2305472 () Bool)

(declare-fun c!1386397 () Bool)

(assert (=> d!2305472 (= c!1386397 (is-Nil!72418 testedP!204))))

(declare-fun e!4477176 () (Set C!39762))

(assert (=> d!2305472 (= (content!15315 testedP!204) e!4477176)))

(declare-fun b!7508508 () Bool)

(assert (=> b!7508508 (= e!4477176 (as set.empty (Set C!39762)))))

(declare-fun b!7508509 () Bool)

(assert (=> b!7508509 (= e!4477176 (set.union (set.insert (h!78866 testedP!204) (as set.empty (Set C!39762))) (content!15315 (t!387111 testedP!204))))))

(assert (= (and d!2305472 c!1386397) b!7508508))

(assert (= (and d!2305472 (not c!1386397)) b!7508509))

(declare-fun m!8092132 () Bool)

(assert (=> b!7508509 m!8092132))

(assert (=> b!7508509 m!8092040))

(assert (=> d!2305328 d!2305472))

(declare-fun d!2305474 () Bool)

(declare-fun c!1386398 () Bool)

(assert (=> d!2305474 (= c!1386398 (is-Nil!72418 (Cons!72418 lt!2636381 Nil!72418)))))

(declare-fun e!4477177 () (Set C!39762))

(assert (=> d!2305474 (= (content!15315 (Cons!72418 lt!2636381 Nil!72418)) e!4477177)))

(declare-fun b!7508510 () Bool)

(assert (=> b!7508510 (= e!4477177 (as set.empty (Set C!39762)))))

(declare-fun b!7508511 () Bool)

(assert (=> b!7508511 (= e!4477177 (set.union (set.insert (h!78866 (Cons!72418 lt!2636381 Nil!72418)) (as set.empty (Set C!39762))) (content!15315 (t!387111 (Cons!72418 lt!2636381 Nil!72418)))))))

(assert (= (and d!2305474 c!1386398) b!7508510))

(assert (= (and d!2305474 (not c!1386398)) b!7508511))

(declare-fun m!8092134 () Bool)

(assert (=> b!7508511 m!8092134))

(declare-fun m!8092136 () Bool)

(assert (=> b!7508511 m!8092136))

(assert (=> d!2305328 d!2305474))

(declare-fun bs!1938611 () Bool)

(declare-fun d!2305476 () Bool)

(assert (= bs!1938611 (and d!2305476 d!2305356)))

(declare-fun lambda!465684 () Int)

(assert (=> bs!1938611 (= (= call!688863 lt!2636381) (= lambda!465684 lambda!465638))))

(assert (=> d!2305476 true))

(assert (=> d!2305476 (= (derivationStepZipper!3727 (derivationStepZipper!3727 z!3716 lt!2636381) call!688863) (flatMap!3262 (derivationStepZipper!3727 z!3716 lt!2636381) lambda!465684))))

(declare-fun bs!1938612 () Bool)

(assert (= bs!1938612 d!2305476))

(assert (=> bs!1938612 m!8091496))

(declare-fun m!8092138 () Bool)

(assert (=> bs!1938612 m!8092138))

(assert (=> bm!688862 d!2305476))

(declare-fun d!2305478 () Bool)

(declare-fun lt!2636770 () Int)

(assert (=> d!2305478 (>= lt!2636770 0)))

(declare-fun e!4477178 () Int)

(assert (=> d!2305478 (= lt!2636770 e!4477178)))

(declare-fun c!1386399 () Bool)

(assert (=> d!2305478 (= c!1386399 (is-Nil!72418 lt!2636558))))

(assert (=> d!2305478 (= (size!42289 lt!2636558) lt!2636770)))

(declare-fun b!7508512 () Bool)

(assert (=> b!7508512 (= e!4477178 0)))

(declare-fun b!7508513 () Bool)

(assert (=> b!7508513 (= e!4477178 (+ 1 (size!42289 (t!387111 lt!2636558))))))

(assert (= (and d!2305478 c!1386399) b!7508512))

(assert (= (and d!2305478 (not c!1386399)) b!7508513))

(declare-fun m!8092140 () Bool)

(assert (=> b!7508513 m!8092140))

(assert (=> b!7508282 d!2305478))

(assert (=> b!7508282 d!2305364))

(declare-fun d!2305480 () Bool)

(declare-fun lt!2636771 () Int)

(assert (=> d!2305480 (>= lt!2636771 0)))

(declare-fun e!4477179 () Int)

(assert (=> d!2305480 (= lt!2636771 e!4477179)))

(declare-fun c!1386400 () Bool)

(assert (=> d!2305480 (= c!1386400 (is-Nil!72418 (_2!37686 lt!2636383)))))

(assert (=> d!2305480 (= (size!42289 (_2!37686 lt!2636383)) lt!2636771)))

(declare-fun b!7508514 () Bool)

(assert (=> b!7508514 (= e!4477179 0)))

(declare-fun b!7508515 () Bool)

(assert (=> b!7508515 (= e!4477179 (+ 1 (size!42289 (t!387111 (_2!37686 lt!2636383)))))))

(assert (= (and d!2305480 c!1386400) b!7508514))

(assert (= (and d!2305480 (not c!1386400)) b!7508515))

(declare-fun m!8092142 () Bool)

(assert (=> b!7508515 m!8092142))

(assert (=> b!7508282 d!2305480))

(assert (=> d!2305350 d!2305338))

(assert (=> d!2305350 d!2305340))

(declare-fun d!2305482 () Bool)

(assert (=> d!2305482 (<= (size!42289 testedP!204) (size!42289 totalInput!779))))

(assert (=> d!2305482 true))

(declare-fun _$64!886 () Unit!166450)

(assert (=> d!2305482 (= (choose!58192 testedP!204 totalInput!779) _$64!886)))

(declare-fun bs!1938613 () Bool)

(assert (= bs!1938613 d!2305482))

(assert (=> bs!1938613 m!8091516))

(assert (=> bs!1938613 m!8091506))

(assert (=> d!2305350 d!2305482))

(assert (=> d!2305350 d!2305330))

(declare-fun bs!1938614 () Bool)

(declare-fun d!2305484 () Bool)

(assert (= bs!1938614 (and d!2305484 d!2305442)))

(declare-fun lambda!465685 () Int)

(assert (=> bs!1938614 (not (= lambda!465685 lambda!465683))))

(declare-fun bs!1938615 () Bool)

(assert (= bs!1938615 (and d!2305484 b!7508333)))

(assert (=> bs!1938615 (not (= lambda!465685 lambda!465653))))

(declare-fun bs!1938616 () Bool)

(assert (= bs!1938616 (and d!2305484 d!2305312)))

(assert (=> bs!1938616 (= lambda!465685 lambda!465632)))

(declare-fun bs!1938617 () Bool)

(assert (= bs!1938617 (and d!2305484 d!2305436)))

(assert (=> bs!1938617 (not (= lambda!465685 lambda!465680))))

(declare-fun bs!1938618 () Bool)

(assert (= bs!1938618 (and d!2305484 d!2305358)))

(assert (=> bs!1938618 (not (= lambda!465685 lambda!465651))))

(declare-fun bs!1938619 () Bool)

(assert (= bs!1938619 (and d!2305484 b!7508332)))

(assert (=> bs!1938619 (not (= lambda!465685 lambda!465652))))

(assert (=> d!2305484 (= (nullableZipper!3184 (derivationStepZipper!3727 z!3716 lt!2636381)) (exists!4873 (derivationStepZipper!3727 z!3716 lt!2636381) lambda!465685))))

(declare-fun bs!1938620 () Bool)

(assert (= bs!1938620 d!2305484))

(assert (=> bs!1938620 m!8091496))

(declare-fun m!8092144 () Bool)

(assert (=> bs!1938620 m!8092144))

(assert (=> bm!688861 d!2305484))

(assert (=> b!7508321 d!2305340))

(declare-fun b!7508517 () Bool)

(declare-fun e!4477180 () List!72542)

(assert (=> b!7508517 (= e!4477180 (Cons!72418 (h!78866 lt!2636391) (++!17347 (t!387111 lt!2636391) (Cons!72418 lt!2636631 Nil!72418))))))

(declare-fun b!7508519 () Bool)

(declare-fun lt!2636772 () List!72542)

(declare-fun e!4477181 () Bool)

(assert (=> b!7508519 (= e!4477181 (or (not (= (Cons!72418 lt!2636631 Nil!72418) Nil!72418)) (= lt!2636772 lt!2636391)))))

(declare-fun b!7508518 () Bool)

(declare-fun res!3012384 () Bool)

(assert (=> b!7508518 (=> (not res!3012384) (not e!4477181))))

(assert (=> b!7508518 (= res!3012384 (= (size!42289 lt!2636772) (+ (size!42289 lt!2636391) (size!42289 (Cons!72418 lt!2636631 Nil!72418)))))))

(declare-fun b!7508516 () Bool)

(assert (=> b!7508516 (= e!4477180 (Cons!72418 lt!2636631 Nil!72418))))

(declare-fun d!2305486 () Bool)

(assert (=> d!2305486 e!4477181))

(declare-fun res!3012383 () Bool)

(assert (=> d!2305486 (=> (not res!3012383) (not e!4477181))))

(assert (=> d!2305486 (= res!3012383 (= (content!15315 lt!2636772) (set.union (content!15315 lt!2636391) (content!15315 (Cons!72418 lt!2636631 Nil!72418)))))))

(assert (=> d!2305486 (= lt!2636772 e!4477180)))

(declare-fun c!1386401 () Bool)

(assert (=> d!2305486 (= c!1386401 (is-Nil!72418 lt!2636391))))

(assert (=> d!2305486 (= (++!17347 lt!2636391 (Cons!72418 lt!2636631 Nil!72418)) lt!2636772)))

(assert (= (and d!2305486 c!1386401) b!7508516))

(assert (= (and d!2305486 (not c!1386401)) b!7508517))

(assert (= (and d!2305486 res!3012383) b!7508518))

(assert (= (and b!7508518 res!3012384) b!7508519))

(declare-fun m!8092146 () Bool)

(assert (=> b!7508517 m!8092146))

(declare-fun m!8092148 () Bool)

(assert (=> b!7508518 m!8092148))

(assert (=> b!7508518 m!8091686))

(declare-fun m!8092150 () Bool)

(assert (=> b!7508518 m!8092150))

(declare-fun m!8092152 () Bool)

(assert (=> d!2305486 m!8092152))

(assert (=> d!2305486 m!8091692))

(declare-fun m!8092154 () Bool)

(assert (=> d!2305486 m!8092154))

(assert (=> b!7508321 d!2305486))

(declare-fun d!2305488 () Bool)

(assert (=> d!2305488 (= (tail!15002 lt!2636382) (t!387111 lt!2636382))))

(assert (=> b!7508321 d!2305488))

(declare-fun d!2305490 () Bool)

(declare-fun lt!2636773 () List!72542)

(assert (=> d!2305490 (= (++!17347 lt!2636391 lt!2636773) totalInput!779)))

(declare-fun e!4477182 () List!72542)

(assert (=> d!2305490 (= lt!2636773 e!4477182)))

(declare-fun c!1386402 () Bool)

(assert (=> d!2305490 (= c!1386402 (is-Cons!72418 lt!2636391))))

(assert (=> d!2305490 (>= (size!42289 totalInput!779) (size!42289 lt!2636391))))

(assert (=> d!2305490 (= (getSuffix!3512 totalInput!779 lt!2636391) lt!2636773)))

(declare-fun b!7508520 () Bool)

(assert (=> b!7508520 (= e!4477182 (getSuffix!3512 (tail!15002 totalInput!779) (t!387111 lt!2636391)))))

(declare-fun b!7508521 () Bool)

(assert (=> b!7508521 (= e!4477182 totalInput!779)))

(assert (= (and d!2305490 c!1386402) b!7508520))

(assert (= (and d!2305490 (not c!1386402)) b!7508521))

(declare-fun m!8092156 () Bool)

(assert (=> d!2305490 m!8092156))

(assert (=> d!2305490 m!8091506))

(assert (=> d!2305490 m!8091686))

(assert (=> b!7508520 m!8091606))

(assert (=> b!7508520 m!8091606))

(declare-fun m!8092158 () Bool)

(assert (=> b!7508520 m!8092158))

(assert (=> b!7508321 d!2305490))

(declare-fun b!7508523 () Bool)

(declare-fun e!4477183 () List!72542)

(assert (=> b!7508523 (= e!4477183 (Cons!72418 (h!78866 (++!17347 lt!2636391 (Cons!72418 lt!2636631 Nil!72418))) (++!17347 (t!387111 (++!17347 lt!2636391 (Cons!72418 lt!2636631 Nil!72418))) lt!2636628)))))

(declare-fun lt!2636774 () List!72542)

(declare-fun b!7508525 () Bool)

(declare-fun e!4477184 () Bool)

(assert (=> b!7508525 (= e!4477184 (or (not (= lt!2636628 Nil!72418)) (= lt!2636774 (++!17347 lt!2636391 (Cons!72418 lt!2636631 Nil!72418)))))))

(declare-fun b!7508524 () Bool)

(declare-fun res!3012386 () Bool)

(assert (=> b!7508524 (=> (not res!3012386) (not e!4477184))))

(assert (=> b!7508524 (= res!3012386 (= (size!42289 lt!2636774) (+ (size!42289 (++!17347 lt!2636391 (Cons!72418 lt!2636631 Nil!72418))) (size!42289 lt!2636628))))))

(declare-fun b!7508522 () Bool)

(assert (=> b!7508522 (= e!4477183 lt!2636628)))

(declare-fun d!2305492 () Bool)

(assert (=> d!2305492 e!4477184))

(declare-fun res!3012385 () Bool)

(assert (=> d!2305492 (=> (not res!3012385) (not e!4477184))))

(assert (=> d!2305492 (= res!3012385 (= (content!15315 lt!2636774) (set.union (content!15315 (++!17347 lt!2636391 (Cons!72418 lt!2636631 Nil!72418))) (content!15315 lt!2636628))))))

(assert (=> d!2305492 (= lt!2636774 e!4477183)))

(declare-fun c!1386403 () Bool)

(assert (=> d!2305492 (= c!1386403 (is-Nil!72418 (++!17347 lt!2636391 (Cons!72418 lt!2636631 Nil!72418))))))

(assert (=> d!2305492 (= (++!17347 (++!17347 lt!2636391 (Cons!72418 lt!2636631 Nil!72418)) lt!2636628) lt!2636774)))

(assert (= (and d!2305492 c!1386403) b!7508522))

(assert (= (and d!2305492 (not c!1386403)) b!7508523))

(assert (= (and d!2305492 res!3012385) b!7508524))

(assert (= (and b!7508524 res!3012386) b!7508525))

(declare-fun m!8092160 () Bool)

(assert (=> b!7508523 m!8092160))

(declare-fun m!8092162 () Bool)

(assert (=> b!7508524 m!8092162))

(assert (=> b!7508524 m!8091762))

(declare-fun m!8092164 () Bool)

(assert (=> b!7508524 m!8092164))

(declare-fun m!8092166 () Bool)

(assert (=> b!7508524 m!8092166))

(declare-fun m!8092168 () Bool)

(assert (=> d!2305492 m!8092168))

(assert (=> d!2305492 m!8091762))

(declare-fun m!8092170 () Bool)

(assert (=> d!2305492 m!8092170))

(declare-fun m!8092172 () Bool)

(assert (=> d!2305492 m!8092172))

(assert (=> b!7508321 d!2305492))

(declare-fun b!7508527 () Bool)

(declare-fun e!4477185 () List!72542)

(assert (=> b!7508527 (= e!4477185 (Cons!72418 (h!78866 lt!2636391) (++!17347 (t!387111 lt!2636391) (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 lt!2636391)) Nil!72418))))))

(declare-fun e!4477186 () Bool)

(declare-fun lt!2636775 () List!72542)

(declare-fun b!7508529 () Bool)

(assert (=> b!7508529 (= e!4477186 (or (not (= (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 lt!2636391)) Nil!72418) Nil!72418)) (= lt!2636775 lt!2636391)))))

(declare-fun b!7508528 () Bool)

(declare-fun res!3012388 () Bool)

(assert (=> b!7508528 (=> (not res!3012388) (not e!4477186))))

(assert (=> b!7508528 (= res!3012388 (= (size!42289 lt!2636775) (+ (size!42289 lt!2636391) (size!42289 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 lt!2636391)) Nil!72418)))))))

(declare-fun b!7508526 () Bool)

(assert (=> b!7508526 (= e!4477185 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 lt!2636391)) Nil!72418))))

(declare-fun d!2305494 () Bool)

(assert (=> d!2305494 e!4477186))

(declare-fun res!3012387 () Bool)

(assert (=> d!2305494 (=> (not res!3012387) (not e!4477186))))

(assert (=> d!2305494 (= res!3012387 (= (content!15315 lt!2636775) (set.union (content!15315 lt!2636391) (content!15315 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 lt!2636391)) Nil!72418)))))))

(assert (=> d!2305494 (= lt!2636775 e!4477185)))

(declare-fun c!1386404 () Bool)

(assert (=> d!2305494 (= c!1386404 (is-Nil!72418 lt!2636391))))

(assert (=> d!2305494 (= (++!17347 lt!2636391 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 lt!2636391)) Nil!72418)) lt!2636775)))

(assert (= (and d!2305494 c!1386404) b!7508526))

(assert (= (and d!2305494 (not c!1386404)) b!7508527))

(assert (= (and d!2305494 res!3012387) b!7508528))

(assert (= (and b!7508528 res!3012388) b!7508529))

(declare-fun m!8092174 () Bool)

(assert (=> b!7508527 m!8092174))

(declare-fun m!8092176 () Bool)

(assert (=> b!7508528 m!8092176))

(assert (=> b!7508528 m!8091686))

(declare-fun m!8092178 () Bool)

(assert (=> b!7508528 m!8092178))

(declare-fun m!8092180 () Bool)

(assert (=> d!2305494 m!8092180))

(assert (=> d!2305494 m!8091692))

(declare-fun m!8092182 () Bool)

(assert (=> d!2305494 m!8092182))

(assert (=> b!7508321 d!2305494))

(declare-fun d!2305496 () Bool)

(assert (=> d!2305496 (isPrefix!6012 (++!17347 lt!2636391 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 lt!2636391)) Nil!72418)) totalInput!779)))

(declare-fun lt!2636776 () Unit!166450)

(assert (=> d!2305496 (= lt!2636776 (choose!58188 lt!2636391 totalInput!779))))

(assert (=> d!2305496 (isPrefix!6012 lt!2636391 totalInput!779)))

(assert (=> d!2305496 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1129 lt!2636391 totalInput!779) lt!2636776)))

(declare-fun bs!1938621 () Bool)

(assert (= bs!1938621 d!2305496))

(declare-fun m!8092184 () Bool)

(assert (=> bs!1938621 m!8092184))

(assert (=> bs!1938621 m!8091766))

(assert (=> bs!1938621 m!8091768))

(assert (=> bs!1938621 m!8091770))

(assert (=> bs!1938621 m!8091778))

(assert (=> bs!1938621 m!8091766))

(declare-fun m!8092186 () Bool)

(assert (=> bs!1938621 m!8092186))

(assert (=> bs!1938621 m!8091770))

(assert (=> b!7508321 d!2305496))

(declare-fun d!2305498 () Bool)

(assert (=> d!2305498 (<= (size!42289 lt!2636391) (size!42289 totalInput!779))))

(declare-fun lt!2636777 () Unit!166450)

(assert (=> d!2305498 (= lt!2636777 (choose!58192 lt!2636391 totalInput!779))))

(assert (=> d!2305498 (isPrefix!6012 lt!2636391 totalInput!779)))

(assert (=> d!2305498 (= (lemmaIsPrefixThenSmallerEqSize!999 lt!2636391 totalInput!779) lt!2636777)))

(declare-fun bs!1938622 () Bool)

(assert (= bs!1938622 d!2305498))

(assert (=> bs!1938622 m!8091686))

(assert (=> bs!1938622 m!8091506))

(declare-fun m!8092188 () Bool)

(assert (=> bs!1938622 m!8092188))

(assert (=> bs!1938622 m!8092184))

(assert (=> b!7508321 d!2305498))

(declare-fun d!2305500 () Bool)

(assert (=> d!2305500 (= (++!17347 (++!17347 lt!2636391 (Cons!72418 lt!2636631 Nil!72418)) lt!2636628) totalInput!779)))

(declare-fun lt!2636778 () Unit!166450)

(assert (=> d!2305500 (= lt!2636778 (choose!58187 lt!2636391 lt!2636631 lt!2636628 totalInput!779))))

(assert (=> d!2305500 (= (++!17347 lt!2636391 (Cons!72418 lt!2636631 lt!2636628)) totalInput!779)))

(assert (=> d!2305500 (= (lemmaMoveElementToOtherListKeepsConcatEq!3160 lt!2636391 lt!2636631 lt!2636628 totalInput!779) lt!2636778)))

(declare-fun bs!1938623 () Bool)

(assert (= bs!1938623 d!2305500))

(assert (=> bs!1938623 m!8091762))

(assert (=> bs!1938623 m!8091762))

(assert (=> bs!1938623 m!8091764))

(declare-fun m!8092190 () Bool)

(assert (=> bs!1938623 m!8092190))

(declare-fun m!8092192 () Bool)

(assert (=> bs!1938623 m!8092192))

(assert (=> b!7508321 d!2305500))

(declare-fun d!2305502 () Bool)

(assert (=> d!2305502 (= (head!15435 lt!2636382) (h!78866 lt!2636382))))

(assert (=> b!7508321 d!2305502))

(declare-fun b!7508531 () Bool)

(declare-fun e!4477187 () List!72542)

(assert (=> b!7508531 (= e!4477187 (Cons!72418 (h!78866 lt!2636391) (++!17347 (t!387111 lt!2636391) (Cons!72418 (head!15435 lt!2636382) Nil!72418))))))

(declare-fun lt!2636779 () List!72542)

(declare-fun e!4477188 () Bool)

(declare-fun b!7508533 () Bool)

(assert (=> b!7508533 (= e!4477188 (or (not (= (Cons!72418 (head!15435 lt!2636382) Nil!72418) Nil!72418)) (= lt!2636779 lt!2636391)))))

(declare-fun b!7508532 () Bool)

(declare-fun res!3012390 () Bool)

(assert (=> b!7508532 (=> (not res!3012390) (not e!4477188))))

(assert (=> b!7508532 (= res!3012390 (= (size!42289 lt!2636779) (+ (size!42289 lt!2636391) (size!42289 (Cons!72418 (head!15435 lt!2636382) Nil!72418)))))))

(declare-fun b!7508530 () Bool)

(assert (=> b!7508530 (= e!4477187 (Cons!72418 (head!15435 lt!2636382) Nil!72418))))

(declare-fun d!2305504 () Bool)

(assert (=> d!2305504 e!4477188))

(declare-fun res!3012389 () Bool)

(assert (=> d!2305504 (=> (not res!3012389) (not e!4477188))))

(assert (=> d!2305504 (= res!3012389 (= (content!15315 lt!2636779) (set.union (content!15315 lt!2636391) (content!15315 (Cons!72418 (head!15435 lt!2636382) Nil!72418)))))))

(assert (=> d!2305504 (= lt!2636779 e!4477187)))

(declare-fun c!1386405 () Bool)

(assert (=> d!2305504 (= c!1386405 (is-Nil!72418 lt!2636391))))

(assert (=> d!2305504 (= (++!17347 lt!2636391 (Cons!72418 (head!15435 lt!2636382) Nil!72418)) lt!2636779)))

(assert (= (and d!2305504 c!1386405) b!7508530))

(assert (= (and d!2305504 (not c!1386405)) b!7508531))

(assert (= (and d!2305504 res!3012389) b!7508532))

(assert (= (and b!7508532 res!3012390) b!7508533))

(declare-fun m!8092194 () Bool)

(assert (=> b!7508531 m!8092194))

(declare-fun m!8092196 () Bool)

(assert (=> b!7508532 m!8092196))

(assert (=> b!7508532 m!8091686))

(declare-fun m!8092198 () Bool)

(assert (=> b!7508532 m!8092198))

(declare-fun m!8092200 () Bool)

(assert (=> d!2305504 m!8092200))

(assert (=> d!2305504 m!8091692))

(declare-fun m!8092202 () Bool)

(assert (=> d!2305504 m!8092202))

(assert (=> b!7508321 d!2305504))

(declare-fun d!2305506 () Bool)

(declare-fun lt!2636780 () Int)

(assert (=> d!2305506 (>= lt!2636780 0)))

(declare-fun e!4477189 () Int)

(assert (=> d!2305506 (= lt!2636780 e!4477189)))

(declare-fun c!1386406 () Bool)

(assert (=> d!2305506 (= c!1386406 (is-Nil!72418 lt!2636391))))

(assert (=> d!2305506 (= (size!42289 lt!2636391) lt!2636780)))

(declare-fun b!7508534 () Bool)

(assert (=> b!7508534 (= e!4477189 0)))

(declare-fun b!7508535 () Bool)

(assert (=> b!7508535 (= e!4477189 (+ 1 (size!42289 (t!387111 lt!2636391))))))

(assert (= (and d!2305506 c!1386406) b!7508534))

(assert (= (and d!2305506 (not c!1386406)) b!7508535))

(assert (=> b!7508535 m!8092122))

(assert (=> b!7508321 d!2305506))

(declare-fun d!2305508 () Bool)

(declare-fun e!4477192 () Bool)

(assert (=> d!2305508 e!4477192))

(declare-fun res!3012394 () Bool)

(assert (=> d!2305508 (=> res!3012394 e!4477192)))

(declare-fun lt!2636781 () Bool)

(assert (=> d!2305508 (= res!3012394 (not lt!2636781))))

(declare-fun e!4477191 () Bool)

(assert (=> d!2305508 (= lt!2636781 e!4477191)))

(declare-fun res!3012391 () Bool)

(assert (=> d!2305508 (=> res!3012391 e!4477191)))

(assert (=> d!2305508 (= res!3012391 (is-Nil!72418 (++!17347 lt!2636391 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 lt!2636391)) Nil!72418))))))

(assert (=> d!2305508 (= (isPrefix!6012 (++!17347 lt!2636391 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 lt!2636391)) Nil!72418)) totalInput!779) lt!2636781)))

(declare-fun b!7508538 () Bool)

(declare-fun e!4477190 () Bool)

(assert (=> b!7508538 (= e!4477190 (isPrefix!6012 (tail!15002 (++!17347 lt!2636391 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 lt!2636391)) Nil!72418))) (tail!15002 totalInput!779)))))

(declare-fun b!7508537 () Bool)

(declare-fun res!3012392 () Bool)

(assert (=> b!7508537 (=> (not res!3012392) (not e!4477190))))

(assert (=> b!7508537 (= res!3012392 (= (head!15435 (++!17347 lt!2636391 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 lt!2636391)) Nil!72418))) (head!15435 totalInput!779)))))

(declare-fun b!7508539 () Bool)

(assert (=> b!7508539 (= e!4477192 (>= (size!42289 totalInput!779) (size!42289 (++!17347 lt!2636391 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 lt!2636391)) Nil!72418)))))))

(declare-fun b!7508536 () Bool)

(assert (=> b!7508536 (= e!4477191 e!4477190)))

(declare-fun res!3012393 () Bool)

(assert (=> b!7508536 (=> (not res!3012393) (not e!4477190))))

(assert (=> b!7508536 (= res!3012393 (not (is-Nil!72418 totalInput!779)))))

(assert (= (and d!2305508 (not res!3012391)) b!7508536))

(assert (= (and b!7508536 res!3012393) b!7508537))

(assert (= (and b!7508537 res!3012392) b!7508538))

(assert (= (and d!2305508 (not res!3012394)) b!7508539))

(assert (=> b!7508538 m!8091766))

(declare-fun m!8092204 () Bool)

(assert (=> b!7508538 m!8092204))

(assert (=> b!7508538 m!8091606))

(assert (=> b!7508538 m!8092204))

(assert (=> b!7508538 m!8091606))

(declare-fun m!8092206 () Bool)

(assert (=> b!7508538 m!8092206))

(assert (=> b!7508537 m!8091766))

(declare-fun m!8092208 () Bool)

(assert (=> b!7508537 m!8092208))

(assert (=> b!7508537 m!8091612))

(assert (=> b!7508539 m!8091506))

(assert (=> b!7508539 m!8091766))

(declare-fun m!8092210 () Bool)

(assert (=> b!7508539 m!8092210))

(assert (=> b!7508321 d!2305508))

(declare-fun d!2305510 () Bool)

(assert (=> d!2305510 (= (head!15435 (getSuffix!3512 totalInput!779 lt!2636391)) (h!78866 (getSuffix!3512 totalInput!779 lt!2636391)))))

(assert (=> b!7508321 d!2305510))

(declare-fun d!2305512 () Bool)

(declare-fun lt!2636782 () Int)

(assert (=> d!2305512 (>= lt!2636782 0)))

(declare-fun e!4477193 () Int)

(assert (=> d!2305512 (= lt!2636782 e!4477193)))

(declare-fun c!1386407 () Bool)

(assert (=> d!2305512 (= c!1386407 (is-Nil!72418 (t!387111 testedP!204)))))

(assert (=> d!2305512 (= (size!42289 (t!387111 testedP!204)) lt!2636782)))

(declare-fun b!7508540 () Bool)

(assert (=> b!7508540 (= e!4477193 0)))

(declare-fun b!7508541 () Bool)

(assert (=> b!7508541 (= e!4477193 (+ 1 (size!42289 (t!387111 (t!387111 testedP!204)))))))

(assert (= (and d!2305512 c!1386407) b!7508540))

(assert (= (and d!2305512 (not c!1386407)) b!7508541))

(declare-fun m!8092212 () Bool)

(assert (=> b!7508541 m!8092212))

(assert (=> b!7508273 d!2305512))

(declare-fun d!2305514 () Bool)

(assert (=> d!2305514 (= totalInput!779 lt!2636391)))

(declare-fun lt!2636783 () Unit!166450)

(assert (=> d!2305514 (= lt!2636783 (choose!58191 totalInput!779 lt!2636391 totalInput!779))))

(assert (=> d!2305514 (isPrefix!6012 totalInput!779 totalInput!779)))

(assert (=> d!2305514 (= (lemmaIsPrefixSameLengthThenSameList!1501 totalInput!779 lt!2636391 totalInput!779) lt!2636783)))

(declare-fun bs!1938624 () Bool)

(assert (= bs!1938624 d!2305514))

(declare-fun m!8092214 () Bool)

(assert (=> bs!1938624 m!8092214))

(assert (=> bs!1938624 m!8091502))

(assert (=> bm!688860 d!2305514))

(declare-fun d!2305516 () Bool)

(assert (=> d!2305516 (isPrefix!6012 lt!2636391 (++!17347 lt!2636391 lt!2636382))))

(declare-fun lt!2636784 () Unit!166450)

(assert (=> d!2305516 (= lt!2636784 (choose!58189 lt!2636391 lt!2636382))))

(assert (=> d!2305516 (= (lemmaConcatTwoListThenFirstIsPrefix!3725 lt!2636391 lt!2636382) lt!2636784)))

(declare-fun bs!1938625 () Bool)

(assert (= bs!1938625 d!2305516))

(assert (=> bs!1938625 m!8091488))

(assert (=> bs!1938625 m!8091488))

(assert (=> bs!1938625 m!8091800))

(declare-fun m!8092216 () Bool)

(assert (=> bs!1938625 m!8092216))

(assert (=> d!2305354 d!2305516))

(assert (=> d!2305354 d!2305324))

(assert (=> d!2305354 d!2305490))

(declare-fun d!2305518 () Bool)

(assert (=> d!2305518 (= lt!2636382 lt!2636619)))

(declare-fun lt!2636785 () Unit!166450)

(assert (=> d!2305518 (= lt!2636785 (choose!58193 lt!2636391 lt!2636382 lt!2636391 lt!2636619 totalInput!779))))

(assert (=> d!2305518 (isPrefix!6012 lt!2636391 totalInput!779)))

(assert (=> d!2305518 (= (lemmaSamePrefixThenSameSuffix!2811 lt!2636391 lt!2636382 lt!2636391 lt!2636619 totalInput!779) lt!2636785)))

(declare-fun bs!1938626 () Bool)

(assert (= bs!1938626 d!2305518))

(declare-fun m!8092218 () Bool)

(assert (=> bs!1938626 m!8092218))

(assert (=> bs!1938626 m!8092184))

(assert (=> d!2305354 d!2305518))

(declare-fun b!7508543 () Bool)

(declare-fun e!4477194 () List!72542)

(assert (=> b!7508543 (= e!4477194 (Cons!72418 (h!78866 (_1!37686 lt!2636615)) (++!17347 (t!387111 (_1!37686 lt!2636615)) (_2!37686 lt!2636615))))))

(declare-fun b!7508545 () Bool)

(declare-fun e!4477195 () Bool)

(declare-fun lt!2636786 () List!72542)

(assert (=> b!7508545 (= e!4477195 (or (not (= (_2!37686 lt!2636615) Nil!72418)) (= lt!2636786 (_1!37686 lt!2636615))))))

(declare-fun b!7508544 () Bool)

(declare-fun res!3012396 () Bool)

(assert (=> b!7508544 (=> (not res!3012396) (not e!4477195))))

(assert (=> b!7508544 (= res!3012396 (= (size!42289 lt!2636786) (+ (size!42289 (_1!37686 lt!2636615)) (size!42289 (_2!37686 lt!2636615)))))))

(declare-fun b!7508542 () Bool)

(assert (=> b!7508542 (= e!4477194 (_2!37686 lt!2636615))))

(declare-fun d!2305520 () Bool)

(assert (=> d!2305520 e!4477195))

(declare-fun res!3012395 () Bool)

(assert (=> d!2305520 (=> (not res!3012395) (not e!4477195))))

(assert (=> d!2305520 (= res!3012395 (= (content!15315 lt!2636786) (set.union (content!15315 (_1!37686 lt!2636615)) (content!15315 (_2!37686 lt!2636615)))))))

(assert (=> d!2305520 (= lt!2636786 e!4477194)))

(declare-fun c!1386408 () Bool)

(assert (=> d!2305520 (= c!1386408 (is-Nil!72418 (_1!37686 lt!2636615)))))

(assert (=> d!2305520 (= (++!17347 (_1!37686 lt!2636615) (_2!37686 lt!2636615)) lt!2636786)))

(assert (= (and d!2305520 c!1386408) b!7508542))

(assert (= (and d!2305520 (not c!1386408)) b!7508543))

(assert (= (and d!2305520 res!3012395) b!7508544))

(assert (= (and b!7508544 res!3012396) b!7508545))

(declare-fun m!8092220 () Bool)

(assert (=> b!7508543 m!8092220))

(declare-fun m!8092222 () Bool)

(assert (=> b!7508544 m!8092222))

(assert (=> b!7508544 m!8091786))

(declare-fun m!8092224 () Bool)

(assert (=> b!7508544 m!8092224))

(declare-fun m!8092226 () Bool)

(assert (=> d!2305520 m!8092226))

(declare-fun m!8092228 () Bool)

(assert (=> d!2305520 m!8092228))

(declare-fun m!8092230 () Bool)

(assert (=> d!2305520 m!8092230))

(assert (=> d!2305354 d!2305520))

(declare-fun d!2305522 () Bool)

(declare-fun e!4477198 () Bool)

(assert (=> d!2305522 e!4477198))

(declare-fun res!3012400 () Bool)

(assert (=> d!2305522 (=> res!3012400 e!4477198)))

(declare-fun lt!2636787 () Bool)

(assert (=> d!2305522 (= res!3012400 (not lt!2636787))))

(declare-fun e!4477197 () Bool)

(assert (=> d!2305522 (= lt!2636787 e!4477197)))

(declare-fun res!3012397 () Bool)

(assert (=> d!2305522 (=> res!3012397 e!4477197)))

(assert (=> d!2305522 (= res!3012397 (is-Nil!72418 lt!2636391))))

(assert (=> d!2305522 (= (isPrefix!6012 lt!2636391 (++!17347 lt!2636391 lt!2636382)) lt!2636787)))

(declare-fun b!7508548 () Bool)

(declare-fun e!4477196 () Bool)

(assert (=> b!7508548 (= e!4477196 (isPrefix!6012 (tail!15002 lt!2636391) (tail!15002 (++!17347 lt!2636391 lt!2636382))))))

(declare-fun b!7508547 () Bool)

(declare-fun res!3012398 () Bool)

(assert (=> b!7508547 (=> (not res!3012398) (not e!4477196))))

(assert (=> b!7508547 (= res!3012398 (= (head!15435 lt!2636391) (head!15435 (++!17347 lt!2636391 lt!2636382))))))

(declare-fun b!7508549 () Bool)

(assert (=> b!7508549 (= e!4477198 (>= (size!42289 (++!17347 lt!2636391 lt!2636382)) (size!42289 lt!2636391)))))

(declare-fun b!7508546 () Bool)

(assert (=> b!7508546 (= e!4477197 e!4477196)))

(declare-fun res!3012399 () Bool)

(assert (=> b!7508546 (=> (not res!3012399) (not e!4477196))))

(assert (=> b!7508546 (= res!3012399 (not (is-Nil!72418 (++!17347 lt!2636391 lt!2636382))))))

(assert (= (and d!2305522 (not res!3012397)) b!7508546))

(assert (= (and b!7508546 res!3012399) b!7508547))

(assert (= (and b!7508547 res!3012398) b!7508548))

(assert (= (and d!2305522 (not res!3012400)) b!7508549))

(declare-fun m!8092232 () Bool)

(assert (=> b!7508548 m!8092232))

(assert (=> b!7508548 m!8091488))

(declare-fun m!8092234 () Bool)

(assert (=> b!7508548 m!8092234))

(assert (=> b!7508548 m!8092232))

(assert (=> b!7508548 m!8092234))

(declare-fun m!8092236 () Bool)

(assert (=> b!7508548 m!8092236))

(declare-fun m!8092238 () Bool)

(assert (=> b!7508547 m!8092238))

(assert (=> b!7508547 m!8091488))

(declare-fun m!8092240 () Bool)

(assert (=> b!7508547 m!8092240))

(assert (=> b!7508549 m!8091488))

(declare-fun m!8092242 () Bool)

(assert (=> b!7508549 m!8092242))

(assert (=> b!7508549 m!8091686))

(assert (=> d!2305354 d!2305522))

(declare-fun bs!1938627 () Bool)

(declare-fun d!2305524 () Bool)

(assert (= bs!1938627 (and d!2305524 d!2305442)))

(declare-fun lambda!465686 () Int)

(assert (=> bs!1938627 (not (= lambda!465686 lambda!465683))))

(declare-fun bs!1938628 () Bool)

(assert (= bs!1938628 (and d!2305524 b!7508333)))

(assert (=> bs!1938628 (not (= lambda!465686 lambda!465653))))

(declare-fun bs!1938629 () Bool)

(assert (= bs!1938629 (and d!2305524 d!2305312)))

(assert (=> bs!1938629 (not (= lambda!465686 lambda!465632))))

(declare-fun bs!1938630 () Bool)

(assert (= bs!1938630 (and d!2305524 d!2305436)))

(assert (=> bs!1938630 (not (= lambda!465686 lambda!465680))))

(declare-fun bs!1938631 () Bool)

(assert (= bs!1938631 (and d!2305524 d!2305484)))

(assert (=> bs!1938631 (not (= lambda!465686 lambda!465685))))

(declare-fun bs!1938632 () Bool)

(assert (= bs!1938632 (and d!2305524 d!2305358)))

(assert (=> bs!1938632 (= lambda!465686 lambda!465651)))

(declare-fun bs!1938633 () Bool)

(assert (= bs!1938633 (and d!2305524 b!7508332)))

(assert (=> bs!1938633 (not (= lambda!465686 lambda!465652))))

(declare-fun bs!1938634 () Bool)

(declare-fun b!7508550 () Bool)

(assert (= bs!1938634 (and b!7508550 d!2305442)))

(declare-fun lambda!465687 () Int)

(assert (=> bs!1938634 (not (= lambda!465687 lambda!465683))))

(declare-fun bs!1938635 () Bool)

(assert (= bs!1938635 (and b!7508550 b!7508333)))

(assert (=> bs!1938635 (= lambda!465687 lambda!465653)))

(declare-fun bs!1938636 () Bool)

(assert (= bs!1938636 (and b!7508550 d!2305312)))

(assert (=> bs!1938636 (not (= lambda!465687 lambda!465632))))

(declare-fun bs!1938637 () Bool)

(assert (= bs!1938637 (and b!7508550 d!2305436)))

(assert (=> bs!1938637 (not (= lambda!465687 lambda!465680))))

(declare-fun bs!1938638 () Bool)

(assert (= bs!1938638 (and b!7508550 d!2305484)))

(assert (=> bs!1938638 (not (= lambda!465687 lambda!465685))))

(declare-fun bs!1938639 () Bool)

(assert (= bs!1938639 (and b!7508550 d!2305358)))

(assert (=> bs!1938639 (not (= lambda!465687 lambda!465651))))

(declare-fun bs!1938640 () Bool)

(assert (= bs!1938640 (and b!7508550 b!7508332)))

(assert (=> bs!1938640 (= lambda!465687 lambda!465652)))

(declare-fun bs!1938641 () Bool)

(assert (= bs!1938641 (and b!7508550 d!2305524)))

(assert (=> bs!1938641 (not (= lambda!465687 lambda!465686))))

(declare-fun bs!1938642 () Bool)

(declare-fun b!7508551 () Bool)

(assert (= bs!1938642 (and b!7508551 d!2305442)))

(declare-fun lambda!465688 () Int)

(assert (=> bs!1938642 (not (= lambda!465688 lambda!465683))))

(declare-fun bs!1938643 () Bool)

(assert (= bs!1938643 (and b!7508551 b!7508333)))

(assert (=> bs!1938643 (= lambda!465688 lambda!465653)))

(declare-fun bs!1938644 () Bool)

(assert (= bs!1938644 (and b!7508551 b!7508550)))

(assert (=> bs!1938644 (= lambda!465688 lambda!465687)))

(declare-fun bs!1938645 () Bool)

(assert (= bs!1938645 (and b!7508551 d!2305312)))

(assert (=> bs!1938645 (not (= lambda!465688 lambda!465632))))

(declare-fun bs!1938646 () Bool)

(assert (= bs!1938646 (and b!7508551 d!2305436)))

(assert (=> bs!1938646 (not (= lambda!465688 lambda!465680))))

(declare-fun bs!1938647 () Bool)

(assert (= bs!1938647 (and b!7508551 d!2305484)))

(assert (=> bs!1938647 (not (= lambda!465688 lambda!465685))))

(declare-fun bs!1938648 () Bool)

(assert (= bs!1938648 (and b!7508551 d!2305358)))

(assert (=> bs!1938648 (not (= lambda!465688 lambda!465651))))

(declare-fun bs!1938649 () Bool)

(assert (= bs!1938649 (and b!7508551 b!7508332)))

(assert (=> bs!1938649 (= lambda!465688 lambda!465652)))

(declare-fun bs!1938650 () Bool)

(assert (= bs!1938650 (and b!7508551 d!2305524)))

(assert (=> bs!1938650 (not (= lambda!465688 lambda!465686))))

(declare-fun e!4477199 () Unit!166450)

(declare-fun Unit!166474 () Unit!166450)

(assert (=> b!7508551 (= e!4477199 Unit!166474)))

(declare-fun lt!2636791 () List!72545)

(declare-fun call!688889 () List!72545)

(assert (=> b!7508551 (= lt!2636791 call!688889)))

(declare-fun lt!2636793 () Unit!166450)

(assert (=> b!7508551 (= lt!2636793 (lemmaForallThenNotExists!475 lt!2636791 lambda!465686))))

(declare-fun call!688890 () Bool)

(assert (=> b!7508551 (not call!688890)))

(declare-fun lt!2636792 () Unit!166450)

(assert (=> b!7508551 (= lt!2636792 lt!2636793)))

(declare-fun Unit!166475 () Unit!166450)

(assert (=> b!7508550 (= e!4477199 Unit!166475)))

(declare-fun lt!2636789 () List!72545)

(assert (=> b!7508550 (= lt!2636789 call!688889)))

(declare-fun lt!2636790 () Unit!166450)

(assert (=> b!7508550 (= lt!2636790 (lemmaNotForallThenExists!508 lt!2636789 lambda!465686))))

(assert (=> b!7508550 call!688890))

(declare-fun lt!2636794 () Unit!166450)

(assert (=> b!7508550 (= lt!2636794 lt!2636790)))

(declare-fun bm!688885 () Bool)

(declare-fun c!1386409 () Bool)

(assert (=> bm!688885 (= call!688890 (exists!4874 (ite c!1386409 lt!2636789 lt!2636791) (ite c!1386409 lambda!465687 lambda!465688)))))

(declare-fun lt!2636795 () Bool)

(assert (=> d!2305524 (= lt!2636795 (isEmpty!41321 (getLanguageWitness!1061 (derivationStepZipper!3727 z!3716 lt!2636381))))))

(assert (=> d!2305524 (= lt!2636795 (forall!18306 (derivationStepZipper!3727 z!3716 lt!2636381) lambda!465686))))

(declare-fun lt!2636788 () Unit!166450)

(assert (=> d!2305524 (= lt!2636788 e!4477199)))

(assert (=> d!2305524 (= c!1386409 (not (forall!18306 (derivationStepZipper!3727 z!3716 lt!2636381) lambda!465686)))))

(assert (=> d!2305524 (= (lostCauseZipper!1406 (derivationStepZipper!3727 z!3716 lt!2636381)) lt!2636795)))

(declare-fun bm!688884 () Bool)

(assert (=> bm!688884 (= call!688889 (toList!11837 (derivationStepZipper!3727 z!3716 lt!2636381)))))

(assert (= (and d!2305524 c!1386409) b!7508550))

(assert (= (and d!2305524 (not c!1386409)) b!7508551))

(assert (= (or b!7508550 b!7508551) bm!688884))

(assert (= (or b!7508550 b!7508551) bm!688885))

(declare-fun m!8092244 () Bool)

(assert (=> b!7508550 m!8092244))

(assert (=> bm!688884 m!8091496))

(declare-fun m!8092246 () Bool)

(assert (=> bm!688884 m!8092246))

(declare-fun m!8092248 () Bool)

(assert (=> b!7508551 m!8092248))

(declare-fun m!8092250 () Bool)

(assert (=> bm!688885 m!8092250))

(assert (=> d!2305524 m!8091496))

(declare-fun m!8092252 () Bool)

(assert (=> d!2305524 m!8092252))

(assert (=> d!2305524 m!8092252))

(declare-fun m!8092254 () Bool)

(assert (=> d!2305524 m!8092254))

(assert (=> d!2305524 m!8091496))

(declare-fun m!8092256 () Bool)

(assert (=> d!2305524 m!8092256))

(assert (=> d!2305524 m!8091496))

(assert (=> d!2305524 m!8092256))

(assert (=> d!2305354 d!2305524))

(declare-fun d!2305526 () Bool)

(assert (=> d!2305526 (= testedSuffix!164 lt!2636386)))

(assert (=> d!2305526 true))

(declare-fun _$63!1370 () Unit!166450)

(assert (=> d!2305526 (= (choose!58193 testedP!204 testedSuffix!164 testedP!204 lt!2636386 totalInput!779) _$63!1370)))

(assert (=> d!2305360 d!2305526))

(assert (=> d!2305360 d!2305330))

(assert (=> d!2305322 d!2305330))

(declare-fun d!2305528 () Bool)

(declare-fun e!4477202 () Bool)

(assert (=> d!2305528 e!4477202))

(declare-fun res!3012404 () Bool)

(assert (=> d!2305528 (=> res!3012404 e!4477202)))

(declare-fun lt!2636796 () Bool)

(assert (=> d!2305528 (= res!3012404 (not lt!2636796))))

(declare-fun e!4477201 () Bool)

(assert (=> d!2305528 (= lt!2636796 e!4477201)))

(declare-fun res!3012401 () Bool)

(assert (=> d!2305528 (=> res!3012401 e!4477201)))

(assert (=> d!2305528 (= res!3012401 (is-Nil!72418 (++!17347 testedP!204 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 testedP!204)) Nil!72418))))))

(assert (=> d!2305528 (= (isPrefix!6012 (++!17347 testedP!204 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 testedP!204)) Nil!72418)) totalInput!779) lt!2636796)))

(declare-fun b!7508554 () Bool)

(declare-fun e!4477200 () Bool)

(assert (=> b!7508554 (= e!4477200 (isPrefix!6012 (tail!15002 (++!17347 testedP!204 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 testedP!204)) Nil!72418))) (tail!15002 totalInput!779)))))

(declare-fun b!7508553 () Bool)

(declare-fun res!3012402 () Bool)

(assert (=> b!7508553 (=> (not res!3012402) (not e!4477200))))

(assert (=> b!7508553 (= res!3012402 (= (head!15435 (++!17347 testedP!204 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 testedP!204)) Nil!72418))) (head!15435 totalInput!779)))))

(declare-fun b!7508555 () Bool)

(assert (=> b!7508555 (= e!4477202 (>= (size!42289 totalInput!779) (size!42289 (++!17347 testedP!204 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 testedP!204)) Nil!72418)))))))

(declare-fun b!7508552 () Bool)

(assert (=> b!7508552 (= e!4477201 e!4477200)))

(declare-fun res!3012403 () Bool)

(assert (=> b!7508552 (=> (not res!3012403) (not e!4477200))))

(assert (=> b!7508552 (= res!3012403 (not (is-Nil!72418 totalInput!779)))))

(assert (= (and d!2305528 (not res!3012401)) b!7508552))

(assert (= (and b!7508552 res!3012403) b!7508553))

(assert (= (and b!7508553 res!3012402) b!7508554))

(assert (= (and d!2305528 (not res!3012404)) b!7508555))

(assert (=> b!7508554 m!8091674))

(declare-fun m!8092258 () Bool)

(assert (=> b!7508554 m!8092258))

(assert (=> b!7508554 m!8091606))

(assert (=> b!7508554 m!8092258))

(assert (=> b!7508554 m!8091606))

(declare-fun m!8092260 () Bool)

(assert (=> b!7508554 m!8092260))

(assert (=> b!7508553 m!8091674))

(declare-fun m!8092262 () Bool)

(assert (=> b!7508553 m!8092262))

(assert (=> b!7508553 m!8091612))

(assert (=> b!7508555 m!8091506))

(assert (=> b!7508555 m!8091674))

(declare-fun m!8092264 () Bool)

(assert (=> b!7508555 m!8092264))

(assert (=> d!2305322 d!2305528))

(assert (=> d!2305322 d!2305362))

(declare-fun d!2305530 () Bool)

(assert (=> d!2305530 (isPrefix!6012 (++!17347 testedP!204 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 testedP!204)) Nil!72418)) totalInput!779)))

(assert (=> d!2305530 true))

(declare-fun _$65!1883 () Unit!166450)

(assert (=> d!2305530 (= (choose!58188 testedP!204 totalInput!779) _$65!1883)))

(declare-fun bs!1938651 () Bool)

(assert (= bs!1938651 d!2305530))

(assert (=> bs!1938651 m!8091512))

(assert (=> bs!1938651 m!8091512))

(assert (=> bs!1938651 m!8091678))

(assert (=> bs!1938651 m!8091674))

(assert (=> bs!1938651 m!8091674))

(assert (=> bs!1938651 m!8091676))

(assert (=> d!2305322 d!2305530))

(declare-fun b!7508557 () Bool)

(declare-fun e!4477203 () List!72542)

(assert (=> b!7508557 (= e!4477203 (Cons!72418 (h!78866 testedP!204) (++!17347 (t!387111 testedP!204) (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 testedP!204)) Nil!72418))))))

(declare-fun b!7508559 () Bool)

(declare-fun lt!2636797 () List!72542)

(declare-fun e!4477204 () Bool)

(assert (=> b!7508559 (= e!4477204 (or (not (= (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 testedP!204)) Nil!72418) Nil!72418)) (= lt!2636797 testedP!204)))))

(declare-fun b!7508558 () Bool)

(declare-fun res!3012406 () Bool)

(assert (=> b!7508558 (=> (not res!3012406) (not e!4477204))))

(assert (=> b!7508558 (= res!3012406 (= (size!42289 lt!2636797) (+ (size!42289 testedP!204) (size!42289 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 testedP!204)) Nil!72418)))))))

(declare-fun b!7508556 () Bool)

(assert (=> b!7508556 (= e!4477203 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 testedP!204)) Nil!72418))))

(declare-fun d!2305532 () Bool)

(assert (=> d!2305532 e!4477204))

(declare-fun res!3012405 () Bool)

(assert (=> d!2305532 (=> (not res!3012405) (not e!4477204))))

(assert (=> d!2305532 (= res!3012405 (= (content!15315 lt!2636797) (set.union (content!15315 testedP!204) (content!15315 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 testedP!204)) Nil!72418)))))))

(assert (=> d!2305532 (= lt!2636797 e!4477203)))

(declare-fun c!1386410 () Bool)

(assert (=> d!2305532 (= c!1386410 (is-Nil!72418 testedP!204))))

(assert (=> d!2305532 (= (++!17347 testedP!204 (Cons!72418 (head!15435 (getSuffix!3512 totalInput!779 testedP!204)) Nil!72418)) lt!2636797)))

(assert (= (and d!2305532 c!1386410) b!7508556))

(assert (= (and d!2305532 (not c!1386410)) b!7508557))

(assert (= (and d!2305532 res!3012405) b!7508558))

(assert (= (and b!7508558 res!3012406) b!7508559))

(declare-fun m!8092266 () Bool)

(assert (=> b!7508557 m!8092266))

(declare-fun m!8092268 () Bool)

(assert (=> b!7508558 m!8092268))

(assert (=> b!7508558 m!8091516))

(declare-fun m!8092270 () Bool)

(assert (=> b!7508558 m!8092270))

(declare-fun m!8092272 () Bool)

(assert (=> d!2305532 m!8092272))

(assert (=> d!2305532 m!8091704))

(declare-fun m!8092274 () Bool)

(assert (=> d!2305532 m!8092274))

(assert (=> d!2305322 d!2305532))

(declare-fun d!2305534 () Bool)

(assert (=> d!2305534 (= (head!15435 (getSuffix!3512 totalInput!779 testedP!204)) (h!78866 (getSuffix!3512 totalInput!779 testedP!204)))))

(assert (=> d!2305322 d!2305534))

(declare-fun d!2305536 () Bool)

(assert (=> d!2305536 (= (head!15435 (++!17347 testedP!204 (Cons!72418 (head!15435 lt!2636386) Nil!72418))) (h!78866 (++!17347 testedP!204 (Cons!72418 (head!15435 lt!2636386) Nil!72418))))))

(assert (=> b!7508195 d!2305536))

(assert (=> b!7508195 d!2305426))

(declare-fun d!2305538 () Bool)

(declare-fun c!1386411 () Bool)

(assert (=> d!2305538 (= c!1386411 (is-Nil!72418 lt!2636536))))

(declare-fun e!4477205 () (Set C!39762))

(assert (=> d!2305538 (= (content!15315 lt!2636536) e!4477205)))

(declare-fun b!7508560 () Bool)

(assert (=> b!7508560 (= e!4477205 (as set.empty (Set C!39762)))))

(declare-fun b!7508561 () Bool)

(assert (=> b!7508561 (= e!4477205 (set.union (set.insert (h!78866 lt!2636536) (as set.empty (Set C!39762))) (content!15315 (t!387111 lt!2636536))))))

(assert (= (and d!2305538 c!1386411) b!7508560))

(assert (= (and d!2305538 (not c!1386411)) b!7508561))

(declare-fun m!8092276 () Bool)

(assert (=> b!7508561 m!8092276))

(declare-fun m!8092278 () Bool)

(assert (=> b!7508561 m!8092278))

(assert (=> d!2305324 d!2305538))

(declare-fun d!2305540 () Bool)

(declare-fun c!1386412 () Bool)

(assert (=> d!2305540 (= c!1386412 (is-Nil!72418 lt!2636391))))

(declare-fun e!4477206 () (Set C!39762))

(assert (=> d!2305540 (= (content!15315 lt!2636391) e!4477206)))

(declare-fun b!7508562 () Bool)

(assert (=> b!7508562 (= e!4477206 (as set.empty (Set C!39762)))))

(declare-fun b!7508563 () Bool)

(assert (=> b!7508563 (= e!4477206 (set.union (set.insert (h!78866 lt!2636391) (as set.empty (Set C!39762))) (content!15315 (t!387111 lt!2636391))))))

(assert (= (and d!2305540 c!1386412) b!7508562))

(assert (= (and d!2305540 (not c!1386412)) b!7508563))

(declare-fun m!8092280 () Bool)

(assert (=> b!7508563 m!8092280))

(assert (=> b!7508563 m!8092126))

(assert (=> d!2305324 d!2305540))

(declare-fun d!2305542 () Bool)

(declare-fun c!1386413 () Bool)

(assert (=> d!2305542 (= c!1386413 (is-Nil!72418 lt!2636382))))

(declare-fun e!4477207 () (Set C!39762))

(assert (=> d!2305542 (= (content!15315 lt!2636382) e!4477207)))

(declare-fun b!7508564 () Bool)

(assert (=> b!7508564 (= e!4477207 (as set.empty (Set C!39762)))))

(declare-fun b!7508565 () Bool)

(assert (=> b!7508565 (= e!4477207 (set.union (set.insert (h!78866 lt!2636382) (as set.empty (Set C!39762))) (content!15315 (t!387111 lt!2636382))))))

(assert (= (and d!2305542 c!1386413) b!7508564))

(assert (= (and d!2305542 (not c!1386413)) b!7508565))

(declare-fun m!8092282 () Bool)

(assert (=> b!7508565 m!8092282))

(declare-fun m!8092284 () Bool)

(assert (=> b!7508565 m!8092284))

(assert (=> d!2305324 d!2305542))

(declare-fun d!2305544 () Bool)

(declare-fun lt!2636798 () Int)

(assert (=> d!2305544 (>= lt!2636798 0)))

(declare-fun e!4477208 () Int)

(assert (=> d!2305544 (= lt!2636798 e!4477208)))

(declare-fun c!1386414 () Bool)

(assert (=> d!2305544 (= c!1386414 (is-Nil!72418 lt!2636389))))

(assert (=> d!2305544 (= (size!42289 lt!2636389) lt!2636798)))

(declare-fun b!7508566 () Bool)

(assert (=> b!7508566 (= e!4477208 0)))

(declare-fun b!7508567 () Bool)

(assert (=> b!7508567 (= e!4477208 (+ 1 (size!42289 (t!387111 lt!2636389))))))

(assert (= (and d!2305544 c!1386414) b!7508566))

(assert (= (and d!2305544 (not c!1386414)) b!7508567))

(declare-fun m!8092286 () Bool)

(assert (=> b!7508567 m!8092286))

(assert (=> b!7508267 d!2305544))

(assert (=> b!7508267 d!2305338))

(declare-fun bs!1938652 () Bool)

(declare-fun d!2305546 () Bool)

(assert (= bs!1938652 (and d!2305546 d!2305342)))

(declare-fun lambda!465689 () Int)

(assert (=> bs!1938652 (= lambda!465689 lambda!465635)))

(assert (=> d!2305546 (= (inv!92526 setElem!57075) (forall!18305 (exprs!8970 setElem!57075) lambda!465689))))

(declare-fun bs!1938653 () Bool)

(assert (= bs!1938653 d!2305546))

(declare-fun m!8092288 () Bool)

(assert (=> bs!1938653 m!8092288))

(assert (=> setNonEmpty!57075 d!2305546))

(assert (=> bm!688858 d!2305344))

(declare-fun d!2305548 () Bool)

(declare-fun e!4477211 () Bool)

(assert (=> d!2305548 e!4477211))

(declare-fun res!3012410 () Bool)

(assert (=> d!2305548 (=> res!3012410 e!4477211)))

(declare-fun lt!2636799 () Bool)

(assert (=> d!2305548 (= res!3012410 (not lt!2636799))))

(declare-fun e!4477210 () Bool)

(assert (=> d!2305548 (= lt!2636799 e!4477210)))

(declare-fun res!3012407 () Bool)

(assert (=> d!2305548 (=> res!3012407 e!4477210)))

(assert (=> d!2305548 (= res!3012407 (is-Nil!72418 (tail!15002 testedP!204)))))

(assert (=> d!2305548 (= (isPrefix!6012 (tail!15002 testedP!204) (tail!15002 totalInput!779)) lt!2636799)))

(declare-fun b!7508570 () Bool)

(declare-fun e!4477209 () Bool)

(assert (=> b!7508570 (= e!4477209 (isPrefix!6012 (tail!15002 (tail!15002 testedP!204)) (tail!15002 (tail!15002 totalInput!779))))))

(declare-fun b!7508569 () Bool)

(declare-fun res!3012408 () Bool)

(assert (=> b!7508569 (=> (not res!3012408) (not e!4477209))))

(assert (=> b!7508569 (= res!3012408 (= (head!15435 (tail!15002 testedP!204)) (head!15435 (tail!15002 totalInput!779))))))

(declare-fun b!7508571 () Bool)

(assert (=> b!7508571 (= e!4477211 (>= (size!42289 (tail!15002 totalInput!779)) (size!42289 (tail!15002 testedP!204))))))

(declare-fun b!7508568 () Bool)

(assert (=> b!7508568 (= e!4477210 e!4477209)))

(declare-fun res!3012409 () Bool)

(assert (=> b!7508568 (=> (not res!3012409) (not e!4477209))))

(assert (=> b!7508568 (= res!3012409 (not (is-Nil!72418 (tail!15002 totalInput!779))))))

(assert (= (and d!2305548 (not res!3012407)) b!7508568))

(assert (= (and b!7508568 res!3012409) b!7508569))

(assert (= (and b!7508569 res!3012408) b!7508570))

(assert (= (and d!2305548 (not res!3012410)) b!7508571))

(assert (=> b!7508570 m!8091718))

(assert (=> b!7508570 m!8091974))

(assert (=> b!7508570 m!8091606))

(assert (=> b!7508570 m!8091990))

(assert (=> b!7508570 m!8091974))

(assert (=> b!7508570 m!8091990))

(declare-fun m!8092290 () Bool)

(assert (=> b!7508570 m!8092290))

(assert (=> b!7508569 m!8091718))

(assert (=> b!7508569 m!8091980))

(assert (=> b!7508569 m!8091606))

(assert (=> b!7508569 m!8091996))

(assert (=> b!7508571 m!8091606))

(assert (=> b!7508571 m!8091998))

(assert (=> b!7508571 m!8091718))

(assert (=> b!7508571 m!8091986))

(assert (=> b!7508262 d!2305548))

(assert (=> b!7508262 d!2305420))

(assert (=> b!7508262 d!2305434))

(declare-fun d!2305550 () Bool)

(declare-fun choose!58204 ((Set Context!16940) Int) (Set Context!16940))

(assert (=> d!2305550 (= (flatMap!3262 z!3716 lambda!465638) (choose!58204 z!3716 lambda!465638))))

(declare-fun bs!1938654 () Bool)

(assert (= bs!1938654 d!2305550))

(declare-fun m!8092292 () Bool)

(assert (=> bs!1938654 m!8092292))

(assert (=> d!2305356 d!2305550))

(assert (=> bm!688857 d!2305346))

(declare-fun d!2305552 () Bool)

(declare-fun lt!2636800 () Int)

(assert (=> d!2305552 (>= lt!2636800 0)))

(declare-fun e!4477212 () Int)

(assert (=> d!2305552 (= lt!2636800 e!4477212)))

(declare-fun c!1386415 () Bool)

(assert (=> d!2305552 (= c!1386415 (is-Nil!72418 lt!2636668))))

(assert (=> d!2305552 (= (size!42289 lt!2636668) lt!2636800)))

(declare-fun b!7508572 () Bool)

(assert (=> b!7508572 (= e!4477212 0)))

(declare-fun b!7508573 () Bool)

(assert (=> b!7508573 (= e!4477212 (+ 1 (size!42289 (t!387111 lt!2636668))))))

(assert (= (and d!2305552 c!1386415) b!7508572))

(assert (= (and d!2305552 (not c!1386415)) b!7508573))

(declare-fun m!8092294 () Bool)

(assert (=> b!7508573 m!8092294))

(assert (=> b!7508344 d!2305552))

(assert (=> b!7508344 d!2305338))

(declare-fun d!2305554 () Bool)

(declare-fun lt!2636801 () Int)

(assert (=> d!2305554 (>= lt!2636801 0)))

(declare-fun e!4477213 () Int)

(assert (=> d!2305554 (= lt!2636801 e!4477213)))

(declare-fun c!1386416 () Bool)

(assert (=> d!2305554 (= c!1386416 (is-Nil!72418 testedSuffix!164))))

(assert (=> d!2305554 (= (size!42289 testedSuffix!164) lt!2636801)))

(declare-fun b!7508574 () Bool)

(assert (=> b!7508574 (= e!4477213 0)))

(declare-fun b!7508575 () Bool)

(assert (=> b!7508575 (= e!4477213 (+ 1 (size!42289 (t!387111 testedSuffix!164))))))

(assert (= (and d!2305554 c!1386416) b!7508574))

(assert (= (and d!2305554 (not c!1386416)) b!7508575))

(declare-fun m!8092296 () Bool)

(assert (=> b!7508575 m!8092296))

(assert (=> b!7508344 d!2305554))

(declare-fun b!7508577 () Bool)

(declare-fun e!4477214 () List!72542)

(assert (=> b!7508577 (= e!4477214 (Cons!72418 (h!78866 (t!387111 testedP!204)) (++!17347 (t!387111 (t!387111 testedP!204)) (Cons!72418 lt!2636381 Nil!72418))))))

(declare-fun b!7508579 () Bool)

(declare-fun lt!2636802 () List!72542)

(declare-fun e!4477215 () Bool)

(assert (=> b!7508579 (= e!4477215 (or (not (= (Cons!72418 lt!2636381 Nil!72418) Nil!72418)) (= lt!2636802 (t!387111 testedP!204))))))

(declare-fun b!7508578 () Bool)

(declare-fun res!3012412 () Bool)

(assert (=> b!7508578 (=> (not res!3012412) (not e!4477215))))

(assert (=> b!7508578 (= res!3012412 (= (size!42289 lt!2636802) (+ (size!42289 (t!387111 testedP!204)) (size!42289 (Cons!72418 lt!2636381 Nil!72418)))))))

(declare-fun b!7508576 () Bool)

(assert (=> b!7508576 (= e!4477214 (Cons!72418 lt!2636381 Nil!72418))))

(declare-fun d!2305556 () Bool)

(assert (=> d!2305556 e!4477215))

(declare-fun res!3012411 () Bool)

(assert (=> d!2305556 (=> (not res!3012411) (not e!4477215))))

(assert (=> d!2305556 (= res!3012411 (= (content!15315 lt!2636802) (set.union (content!15315 (t!387111 testedP!204)) (content!15315 (Cons!72418 lt!2636381 Nil!72418)))))))

(assert (=> d!2305556 (= lt!2636802 e!4477214)))

(declare-fun c!1386417 () Bool)

(assert (=> d!2305556 (= c!1386417 (is-Nil!72418 (t!387111 testedP!204)))))

(assert (=> d!2305556 (= (++!17347 (t!387111 testedP!204) (Cons!72418 lt!2636381 Nil!72418)) lt!2636802)))

(assert (= (and d!2305556 c!1386417) b!7508576))

(assert (= (and d!2305556 (not c!1386417)) b!7508577))

(assert (= (and d!2305556 res!3012411) b!7508578))

(assert (= (and b!7508578 res!3012412) b!7508579))

(declare-fun m!8092298 () Bool)

(assert (=> b!7508577 m!8092298))

(declare-fun m!8092300 () Bool)

(assert (=> b!7508578 m!8092300))

(assert (=> b!7508578 m!8091736))

(assert (=> b!7508578 m!8091712))

(declare-fun m!8092302 () Bool)

(assert (=> d!2305556 m!8092302))

(assert (=> d!2305556 m!8092040))

(assert (=> d!2305556 m!8091716))

(assert (=> b!7508257 d!2305556))

(declare-fun d!2305558 () Bool)

(assert (=> d!2305558 (= totalInput!779 testedP!204)))

(assert (=> d!2305558 true))

(declare-fun _$60!1294 () Unit!166450)

(assert (=> d!2305558 (= (choose!58191 totalInput!779 testedP!204 totalInput!779) _$60!1294)))

(assert (=> d!2305348 d!2305558))

(assert (=> d!2305348 d!2305346))

(declare-fun d!2305560 () Bool)

(declare-fun e!4477218 () Bool)

(assert (=> d!2305560 e!4477218))

(declare-fun res!3012415 () Bool)

(assert (=> d!2305560 (=> (not res!3012415) (not e!4477218))))

(declare-fun lt!2636805 () List!72545)

(declare-fun noDuplicate!3148 (List!72545) Bool)

(assert (=> d!2305560 (= res!3012415 (noDuplicate!3148 lt!2636805))))

(declare-fun choose!58205 ((Set Context!16940)) List!72545)

(assert (=> d!2305560 (= lt!2636805 (choose!58205 z!3716))))

(assert (=> d!2305560 (= (toList!11837 z!3716) lt!2636805)))

(declare-fun b!7508582 () Bool)

(declare-fun content!15317 (List!72545) (Set Context!16940))

(assert (=> b!7508582 (= e!4477218 (= (content!15317 lt!2636805) z!3716))))

(assert (= (and d!2305560 res!3012415) b!7508582))

(declare-fun m!8092304 () Bool)

(assert (=> d!2305560 m!8092304))

(declare-fun m!8092306 () Bool)

(assert (=> d!2305560 m!8092306))

(declare-fun m!8092308 () Bool)

(assert (=> b!7508582 m!8092308))

(assert (=> bm!688868 d!2305560))

(assert (=> b!7508265 d!2305424))

(declare-fun d!2305562 () Bool)

(assert (=> d!2305562 (= (head!15435 lt!2636389) (h!78866 lt!2636389))))

(assert (=> b!7508265 d!2305562))

(assert (=> b!7508279 d!2305340))

(declare-fun d!2305564 () Bool)

(declare-fun lt!2636806 () Int)

(assert (=> d!2305564 (>= lt!2636806 0)))

(declare-fun e!4477219 () Int)

(assert (=> d!2305564 (= lt!2636806 e!4477219)))

(declare-fun c!1386418 () Bool)

(assert (=> d!2305564 (= c!1386418 (is-Nil!72418 (_1!37686 lt!2636615)))))

(assert (=> d!2305564 (= (size!42289 (_1!37686 lt!2636615)) lt!2636806)))

(declare-fun b!7508583 () Bool)

(assert (=> b!7508583 (= e!4477219 0)))

(declare-fun b!7508584 () Bool)

(assert (=> b!7508584 (= e!4477219 (+ 1 (size!42289 (t!387111 (_1!37686 lt!2636615)))))))

(assert (= (and d!2305564 c!1386418) b!7508583))

(assert (= (and d!2305564 (not c!1386418)) b!7508584))

(declare-fun m!8092310 () Bool)

(assert (=> b!7508584 m!8092310))

(assert (=> b!7508325 d!2305564))

(assert (=> b!7508325 d!2305506))

(assert (=> bm!688856 d!2305502))

(declare-fun d!2305566 () Bool)

(declare-fun lt!2636807 () Int)

(assert (=> d!2305566 (>= lt!2636807 0)))

(declare-fun e!4477220 () Int)

(assert (=> d!2305566 (= lt!2636807 e!4477220)))

(declare-fun c!1386419 () Bool)

(assert (=> d!2305566 (= c!1386419 (is-Nil!72418 lt!2636537))))

(assert (=> d!2305566 (= (size!42289 lt!2636537) lt!2636807)))

(declare-fun b!7508585 () Bool)

(assert (=> b!7508585 (= e!4477220 0)))

(declare-fun b!7508586 () Bool)

(assert (=> b!7508586 (= e!4477220 (+ 1 (size!42289 (t!387111 lt!2636537))))))

(assert (= (and d!2305566 c!1386419) b!7508585))

(assert (= (and d!2305566 (not c!1386419)) b!7508586))

(declare-fun m!8092312 () Bool)

(assert (=> b!7508586 m!8092312))

(assert (=> b!7508254 d!2305566))

(assert (=> b!7508254 d!2305338))

(declare-fun d!2305568 () Bool)

(declare-fun lt!2636808 () Int)

(assert (=> d!2305568 (>= lt!2636808 0)))

(declare-fun e!4477221 () Int)

(assert (=> d!2305568 (= lt!2636808 e!4477221)))

(declare-fun c!1386420 () Bool)

(assert (=> d!2305568 (= c!1386420 (is-Nil!72418 (Cons!72418 (head!15435 lt!2636386) Nil!72418)))))

(assert (=> d!2305568 (= (size!42289 (Cons!72418 (head!15435 lt!2636386) Nil!72418)) lt!2636808)))

(declare-fun b!7508587 () Bool)

(assert (=> b!7508587 (= e!4477221 0)))

(declare-fun b!7508588 () Bool)

(assert (=> b!7508588 (= e!4477221 (+ 1 (size!42289 (t!387111 (Cons!72418 (head!15435 lt!2636386) Nil!72418)))))))

(assert (= (and d!2305568 c!1386420) b!7508587))

(assert (= (and d!2305568 (not c!1386420)) b!7508588))

(declare-fun m!8092314 () Bool)

(assert (=> b!7508588 m!8092314))

(assert (=> b!7508254 d!2305568))

(declare-fun bs!1938655 () Bool)

(declare-fun d!2305570 () Bool)

(assert (= bs!1938655 (and d!2305570 d!2305442)))

(declare-fun lambda!465692 () Int)

(assert (=> bs!1938655 (= (= lambda!465651 (ite c!1386351 lambda!465652 lambda!465653)) (= lambda!465692 lambda!465683))))

(declare-fun bs!1938656 () Bool)

(assert (= bs!1938656 (and d!2305570 b!7508333)))

(assert (=> bs!1938656 (not (= lambda!465692 lambda!465653))))

(declare-fun bs!1938657 () Bool)

(assert (= bs!1938657 (and d!2305570 b!7508550)))

(assert (=> bs!1938657 (not (= lambda!465692 lambda!465687))))

(declare-fun bs!1938658 () Bool)

(assert (= bs!1938658 (and d!2305570 d!2305312)))

(assert (=> bs!1938658 (not (= lambda!465692 lambda!465632))))

(declare-fun bs!1938659 () Bool)

(assert (= bs!1938659 (and d!2305570 d!2305436)))

(assert (=> bs!1938659 (= lambda!465692 lambda!465680)))

(declare-fun bs!1938660 () Bool)

(assert (= bs!1938660 (and d!2305570 b!7508551)))

(assert (=> bs!1938660 (not (= lambda!465692 lambda!465688))))

(declare-fun bs!1938661 () Bool)

(assert (= bs!1938661 (and d!2305570 d!2305484)))

(assert (=> bs!1938661 (not (= lambda!465692 lambda!465685))))

(declare-fun bs!1938662 () Bool)

(assert (= bs!1938662 (and d!2305570 d!2305358)))

(assert (=> bs!1938662 (not (= lambda!465692 lambda!465651))))

(declare-fun bs!1938663 () Bool)

(assert (= bs!1938663 (and d!2305570 b!7508332)))

(assert (=> bs!1938663 (not (= lambda!465692 lambda!465652))))

(declare-fun bs!1938664 () Bool)

(assert (= bs!1938664 (and d!2305570 d!2305524)))

(assert (=> bs!1938664 (not (= lambda!465692 lambda!465686))))

(assert (=> d!2305570 true))

(assert (=> d!2305570 (< (dynLambda!29788 order!29657 lambda!465651) (dynLambda!29788 order!29657 lambda!465692))))

(assert (=> d!2305570 (exists!4874 lt!2636654 lambda!465692)))

(declare-fun lt!2636811 () Unit!166450)

(declare-fun choose!58206 (List!72545 Int) Unit!166450)

(assert (=> d!2305570 (= lt!2636811 (choose!58206 lt!2636654 lambda!465651))))

(assert (=> d!2305570 (not (forall!18309 lt!2636654 lambda!465651))))

(assert (=> d!2305570 (= (lemmaNotForallThenExists!508 lt!2636654 lambda!465651) lt!2636811)))

(declare-fun bs!1938665 () Bool)

(assert (= bs!1938665 d!2305570))

(declare-fun m!8092316 () Bool)

(assert (=> bs!1938665 m!8092316))

(declare-fun m!8092318 () Bool)

(assert (=> bs!1938665 m!8092318))

(declare-fun m!8092320 () Bool)

(assert (=> bs!1938665 m!8092320))

(assert (=> b!7508332 d!2305570))

(declare-fun d!2305572 () Bool)

(declare-fun lt!2636814 () Bool)

(assert (=> d!2305572 (= lt!2636814 (exists!4874 (toList!11837 z!3716) lambda!465632))))

(declare-fun choose!58207 ((Set Context!16940) Int) Bool)

(assert (=> d!2305572 (= lt!2636814 (choose!58207 z!3716 lambda!465632))))

(assert (=> d!2305572 (= (exists!4873 z!3716 lambda!465632) lt!2636814)))

(declare-fun bs!1938666 () Bool)

(assert (= bs!1938666 d!2305572))

(assert (=> bs!1938666 m!8091814))

(assert (=> bs!1938666 m!8091814))

(declare-fun m!8092322 () Bool)

(assert (=> bs!1938666 m!8092322))

(declare-fun m!8092324 () Bool)

(assert (=> bs!1938666 m!8092324))

(assert (=> d!2305312 d!2305572))

(declare-fun d!2305574 () Bool)

(declare-fun lt!2636815 () List!72542)

(assert (=> d!2305574 (= (++!17347 (t!387111 testedP!204) lt!2636815) (tail!15002 totalInput!779))))

(declare-fun e!4477224 () List!72542)

(assert (=> d!2305574 (= lt!2636815 e!4477224)))

(declare-fun c!1386421 () Bool)

(assert (=> d!2305574 (= c!1386421 (is-Cons!72418 (t!387111 testedP!204)))))

(assert (=> d!2305574 (>= (size!42289 (tail!15002 totalInput!779)) (size!42289 (t!387111 testedP!204)))))

(assert (=> d!2305574 (= (getSuffix!3512 (tail!15002 totalInput!779) (t!387111 testedP!204)) lt!2636815)))

(declare-fun b!7508589 () Bool)

(assert (=> b!7508589 (= e!4477224 (getSuffix!3512 (tail!15002 (tail!15002 totalInput!779)) (t!387111 (t!387111 testedP!204))))))

(declare-fun b!7508590 () Bool)

(assert (=> b!7508590 (= e!4477224 (tail!15002 totalInput!779))))

(assert (= (and d!2305574 c!1386421) b!7508589))

(assert (= (and d!2305574 (not c!1386421)) b!7508590))

(declare-fun m!8092326 () Bool)

(assert (=> d!2305574 m!8092326))

(assert (=> d!2305574 m!8091606))

(assert (=> d!2305574 m!8091998))

(assert (=> d!2305574 m!8091736))

(assert (=> b!7508589 m!8091606))

(assert (=> b!7508589 m!8091990))

(assert (=> b!7508589 m!8091990))

(declare-fun m!8092328 () Bool)

(assert (=> b!7508589 m!8092328))

(assert (=> b!7508338 d!2305574))

(assert (=> b!7508338 d!2305434))

(assert (=> b!7508277 d!2305426))

(declare-fun d!2305576 () Bool)

(declare-fun e!4477227 () Bool)

(assert (=> d!2305576 e!4477227))

(declare-fun res!3012419 () Bool)

(assert (=> d!2305576 (=> res!3012419 e!4477227)))

(declare-fun lt!2636816 () Bool)

(assert (=> d!2305576 (= res!3012419 (not lt!2636816))))

(declare-fun e!4477226 () Bool)

(assert (=> d!2305576 (= lt!2636816 e!4477226)))

(declare-fun res!3012416 () Bool)

(assert (=> d!2305576 (=> res!3012416 e!4477226)))

(assert (=> d!2305576 (= res!3012416 (is-Nil!72418 testedP!204))))

(assert (=> d!2305576 (= (isPrefix!6012 testedP!204 (++!17347 testedP!204 testedSuffix!164)) lt!2636816)))

(declare-fun b!7508593 () Bool)

(declare-fun e!4477225 () Bool)

(assert (=> b!7508593 (= e!4477225 (isPrefix!6012 (tail!15002 testedP!204) (tail!15002 (++!17347 testedP!204 testedSuffix!164))))))

(declare-fun b!7508592 () Bool)

(declare-fun res!3012417 () Bool)

(assert (=> b!7508592 (=> (not res!3012417) (not e!4477225))))

(assert (=> b!7508592 (= res!3012417 (= (head!15435 testedP!204) (head!15435 (++!17347 testedP!204 testedSuffix!164))))))

(declare-fun b!7508594 () Bool)

(assert (=> b!7508594 (= e!4477227 (>= (size!42289 (++!17347 testedP!204 testedSuffix!164)) (size!42289 testedP!204)))))

(declare-fun b!7508591 () Bool)

(assert (=> b!7508591 (= e!4477226 e!4477225)))

(declare-fun res!3012418 () Bool)

(assert (=> b!7508591 (=> (not res!3012418) (not e!4477225))))

(assert (=> b!7508591 (= res!3012418 (not (is-Nil!72418 (++!17347 testedP!204 testedSuffix!164))))))

(assert (= (and d!2305576 (not res!3012416)) b!7508591))

(assert (= (and b!7508591 res!3012418) b!7508592))

(assert (= (and b!7508592 res!3012417) b!7508593))

(assert (= (and d!2305576 (not res!3012419)) b!7508594))

(assert (=> b!7508593 m!8091718))

(assert (=> b!7508593 m!8091526))

(declare-fun m!8092330 () Bool)

(assert (=> b!7508593 m!8092330))

(assert (=> b!7508593 m!8091718))

(assert (=> b!7508593 m!8092330))

(declare-fun m!8092332 () Bool)

(assert (=> b!7508593 m!8092332))

(assert (=> b!7508592 m!8091722))

(assert (=> b!7508592 m!8091526))

(declare-fun m!8092334 () Bool)

(assert (=> b!7508592 m!8092334))

(assert (=> b!7508594 m!8091526))

(declare-fun m!8092336 () Bool)

(assert (=> b!7508594 m!8092336))

(assert (=> b!7508594 m!8091516))

(assert (=> d!2305334 d!2305576))

(assert (=> d!2305334 d!2305366))

(declare-fun d!2305578 () Bool)

(assert (=> d!2305578 (isPrefix!6012 testedP!204 (++!17347 testedP!204 testedSuffix!164))))

(assert (=> d!2305578 true))

(declare-fun _$46!2094 () Unit!166450)

(assert (=> d!2305578 (= (choose!58189 testedP!204 testedSuffix!164) _$46!2094)))

(declare-fun bs!1938667 () Bool)

(assert (= bs!1938667 d!2305578))

(assert (=> bs!1938667 m!8091526))

(assert (=> bs!1938667 m!8091526))

(assert (=> bs!1938667 m!8091732))

(assert (=> d!2305334 d!2305578))

(declare-fun b!7508596 () Bool)

(declare-fun e!4477228 () List!72542)

(assert (=> b!7508596 (= e!4477228 (Cons!72418 (h!78866 (t!387111 (_1!37686 lt!2636383))) (++!17347 (t!387111 (t!387111 (_1!37686 lt!2636383))) (_2!37686 lt!2636383))))))

(declare-fun b!7508598 () Bool)

(declare-fun e!4477229 () Bool)

(declare-fun lt!2636817 () List!72542)

(assert (=> b!7508598 (= e!4477229 (or (not (= (_2!37686 lt!2636383) Nil!72418)) (= lt!2636817 (t!387111 (_1!37686 lt!2636383)))))))

(declare-fun b!7508597 () Bool)

(declare-fun res!3012421 () Bool)

(assert (=> b!7508597 (=> (not res!3012421) (not e!4477229))))

(assert (=> b!7508597 (= res!3012421 (= (size!42289 lt!2636817) (+ (size!42289 (t!387111 (_1!37686 lt!2636383))) (size!42289 (_2!37686 lt!2636383)))))))

(declare-fun b!7508595 () Bool)

(assert (=> b!7508595 (= e!4477228 (_2!37686 lt!2636383))))

(declare-fun d!2305580 () Bool)

(assert (=> d!2305580 e!4477229))

(declare-fun res!3012420 () Bool)

(assert (=> d!2305580 (=> (not res!3012420) (not e!4477229))))

(assert (=> d!2305580 (= res!3012420 (= (content!15315 lt!2636817) (set.union (content!15315 (t!387111 (_1!37686 lt!2636383))) (content!15315 (_2!37686 lt!2636383)))))))

(assert (=> d!2305580 (= lt!2636817 e!4477228)))

(declare-fun c!1386422 () Bool)

(assert (=> d!2305580 (= c!1386422 (is-Nil!72418 (t!387111 (_1!37686 lt!2636383))))))

(assert (=> d!2305580 (= (++!17347 (t!387111 (_1!37686 lt!2636383)) (_2!37686 lt!2636383)) lt!2636817)))

(assert (= (and d!2305580 c!1386422) b!7508595))

(assert (= (and d!2305580 (not c!1386422)) b!7508596))

(assert (= (and d!2305580 res!3012420) b!7508597))

(assert (= (and b!7508597 res!3012421) b!7508598))

(declare-fun m!8092338 () Bool)

(assert (=> b!7508596 m!8092338))

(declare-fun m!8092340 () Bool)

(assert (=> b!7508597 m!8092340))

(assert (=> b!7508597 m!8091832))

(assert (=> b!7508597 m!8091754))

(declare-fun m!8092342 () Bool)

(assert (=> d!2305580 m!8092342))

(declare-fun m!8092344 () Bool)

(assert (=> d!2305580 m!8092344))

(assert (=> d!2305580 m!8091760))

(assert (=> b!7508281 d!2305580))

(declare-fun d!2305582 () Bool)

(declare-fun lt!2636818 () Int)

(assert (=> d!2305582 (>= lt!2636818 0)))

(declare-fun e!4477230 () Int)

(assert (=> d!2305582 (= lt!2636818 e!4477230)))

(declare-fun c!1386423 () Bool)

(assert (=> d!2305582 (= c!1386423 (is-Nil!72418 lt!2636536))))

(assert (=> d!2305582 (= (size!42289 lt!2636536) lt!2636818)))

(declare-fun b!7508599 () Bool)

(assert (=> b!7508599 (= e!4477230 0)))

(declare-fun b!7508600 () Bool)

(assert (=> b!7508600 (= e!4477230 (+ 1 (size!42289 (t!387111 lt!2636536))))))

(assert (= (and d!2305582 c!1386423) b!7508599))

(assert (= (and d!2305582 (not c!1386423)) b!7508600))

(declare-fun m!8092346 () Bool)

(assert (=> b!7508600 m!8092346))

(assert (=> b!7508250 d!2305582))

(assert (=> b!7508250 d!2305506))

(declare-fun d!2305584 () Bool)

(declare-fun lt!2636819 () Int)

(assert (=> d!2305584 (>= lt!2636819 0)))

(declare-fun e!4477231 () Int)

(assert (=> d!2305584 (= lt!2636819 e!4477231)))

(declare-fun c!1386424 () Bool)

(assert (=> d!2305584 (= c!1386424 (is-Nil!72418 lt!2636382))))

(assert (=> d!2305584 (= (size!42289 lt!2636382) lt!2636819)))

(declare-fun b!7508601 () Bool)

(assert (=> b!7508601 (= e!4477231 0)))

(declare-fun b!7508602 () Bool)

(assert (=> b!7508602 (= e!4477231 (+ 1 (size!42289 (t!387111 lt!2636382))))))

(assert (= (and d!2305584 c!1386424) b!7508601))

(assert (= (and d!2305584 (not c!1386424)) b!7508602))

(declare-fun m!8092348 () Bool)

(assert (=> b!7508602 m!8092348))

(assert (=> b!7508250 d!2305584))

(declare-fun d!2305586 () Bool)

(declare-fun c!1386425 () Bool)

(assert (=> d!2305586 (= c!1386425 (is-Nil!72418 lt!2636537))))

(declare-fun e!4477232 () (Set C!39762))

(assert (=> d!2305586 (= (content!15315 lt!2636537) e!4477232)))

(declare-fun b!7508603 () Bool)

(assert (=> b!7508603 (= e!4477232 (as set.empty (Set C!39762)))))

(declare-fun b!7508604 () Bool)

(assert (=> b!7508604 (= e!4477232 (set.union (set.insert (h!78866 lt!2636537) (as set.empty (Set C!39762))) (content!15315 (t!387111 lt!2636537))))))

(assert (= (and d!2305586 c!1386425) b!7508603))

(assert (= (and d!2305586 (not c!1386425)) b!7508604))

(declare-fun m!8092350 () Bool)

(assert (=> b!7508604 m!8092350))

(declare-fun m!8092352 () Bool)

(assert (=> b!7508604 m!8092352))

(assert (=> d!2305326 d!2305586))

(assert (=> d!2305326 d!2305472))

(declare-fun d!2305588 () Bool)

(declare-fun c!1386426 () Bool)

(assert (=> d!2305588 (= c!1386426 (is-Nil!72418 (Cons!72418 (head!15435 lt!2636386) Nil!72418)))))

(declare-fun e!4477233 () (Set C!39762))

(assert (=> d!2305588 (= (content!15315 (Cons!72418 (head!15435 lt!2636386) Nil!72418)) e!4477233)))

(declare-fun b!7508605 () Bool)

(assert (=> b!7508605 (= e!4477233 (as set.empty (Set C!39762)))))

(declare-fun b!7508606 () Bool)

(assert (=> b!7508606 (= e!4477233 (set.union (set.insert (h!78866 (Cons!72418 (head!15435 lt!2636386) Nil!72418)) (as set.empty (Set C!39762))) (content!15315 (t!387111 (Cons!72418 (head!15435 lt!2636386) Nil!72418)))))))

(assert (= (and d!2305588 c!1386426) b!7508605))

(assert (= (and d!2305588 (not c!1386426)) b!7508606))

(declare-fun m!8092354 () Bool)

(assert (=> b!7508606 m!8092354))

(declare-fun m!8092356 () Bool)

(assert (=> b!7508606 m!8092356))

(assert (=> d!2305326 d!2305588))

(declare-fun d!2305590 () Bool)

(declare-fun c!1386427 () Bool)

(assert (=> d!2305590 (= c!1386427 (is-Nil!72418 lt!2636668))))

(declare-fun e!4477234 () (Set C!39762))

(assert (=> d!2305590 (= (content!15315 lt!2636668) e!4477234)))

(declare-fun b!7508607 () Bool)

(assert (=> b!7508607 (= e!4477234 (as set.empty (Set C!39762)))))

(declare-fun b!7508608 () Bool)

(assert (=> b!7508608 (= e!4477234 (set.union (set.insert (h!78866 lt!2636668) (as set.empty (Set C!39762))) (content!15315 (t!387111 lt!2636668))))))

(assert (= (and d!2305590 c!1386427) b!7508607))

(assert (= (and d!2305590 (not c!1386427)) b!7508608))

(declare-fun m!8092358 () Bool)

(assert (=> b!7508608 m!8092358))

(declare-fun m!8092360 () Bool)

(assert (=> b!7508608 m!8092360))

(assert (=> d!2305366 d!2305590))

(assert (=> d!2305366 d!2305472))

(declare-fun d!2305592 () Bool)

(declare-fun c!1386428 () Bool)

(assert (=> d!2305592 (= c!1386428 (is-Nil!72418 testedSuffix!164))))

(declare-fun e!4477235 () (Set C!39762))

(assert (=> d!2305592 (= (content!15315 testedSuffix!164) e!4477235)))

(declare-fun b!7508609 () Bool)

(assert (=> b!7508609 (= e!4477235 (as set.empty (Set C!39762)))))

(declare-fun b!7508610 () Bool)

(assert (=> b!7508610 (= e!4477235 (set.union (set.insert (h!78866 testedSuffix!164) (as set.empty (Set C!39762))) (content!15315 (t!387111 testedSuffix!164))))))

(assert (= (and d!2305592 c!1386428) b!7508609))

(assert (= (and d!2305592 (not c!1386428)) b!7508610))

(declare-fun m!8092362 () Bool)

(assert (=> b!7508610 m!8092362))

(declare-fun m!8092364 () Bool)

(assert (=> b!7508610 m!8092364))

(assert (=> d!2305366 d!2305592))

(declare-fun d!2305594 () Bool)

(assert (=> d!2305594 (= (isEmpty!41321 (getLanguageWitness!1061 z!3716)) (not (is-Some!17232 (getLanguageWitness!1061 z!3716))))))

(assert (=> d!2305358 d!2305594))

(declare-fun bs!1938668 () Bool)

(declare-fun d!2305596 () Bool)

(assert (= bs!1938668 (and d!2305596 d!2305442)))

(declare-fun lambda!465699 () Int)

(assert (=> bs!1938668 (not (= lambda!465699 lambda!465683))))

(declare-fun bs!1938669 () Bool)

(assert (= bs!1938669 (and d!2305596 b!7508333)))

(assert (=> bs!1938669 (= lambda!465699 lambda!465653)))

(declare-fun bs!1938670 () Bool)

(assert (= bs!1938670 (and d!2305596 b!7508550)))

(assert (=> bs!1938670 (= lambda!465699 lambda!465687)))

(declare-fun bs!1938671 () Bool)

(assert (= bs!1938671 (and d!2305596 d!2305312)))

(assert (=> bs!1938671 (not (= lambda!465699 lambda!465632))))

(declare-fun bs!1938672 () Bool)

(assert (= bs!1938672 (and d!2305596 d!2305436)))

(assert (=> bs!1938672 (not (= lambda!465699 lambda!465680))))

(declare-fun bs!1938673 () Bool)

(assert (= bs!1938673 (and d!2305596 b!7508551)))

(assert (=> bs!1938673 (= lambda!465699 lambda!465688)))

(declare-fun bs!1938674 () Bool)

(assert (= bs!1938674 (and d!2305596 d!2305484)))

(assert (=> bs!1938674 (not (= lambda!465699 lambda!465685))))

(declare-fun bs!1938675 () Bool)

(assert (= bs!1938675 (and d!2305596 d!2305358)))

(assert (=> bs!1938675 (not (= lambda!465699 lambda!465651))))

(declare-fun bs!1938676 () Bool)

(assert (= bs!1938676 (and d!2305596 b!7508332)))

(assert (=> bs!1938676 (= lambda!465699 lambda!465652)))

(declare-fun bs!1938677 () Bool)

(assert (= bs!1938677 (and d!2305596 d!2305524)))

(assert (=> bs!1938677 (not (= lambda!465699 lambda!465686))))

(declare-fun bs!1938678 () Bool)

(assert (= bs!1938678 (and d!2305596 d!2305570)))

(assert (=> bs!1938678 (not (= lambda!465699 lambda!465692))))

(declare-fun lt!2636822 () Option!17233)

(declare-fun isDefined!13909 (Option!17233) Bool)

(assert (=> d!2305596 (= (isDefined!13909 lt!2636822) (exists!4873 z!3716 lambda!465699))))

(declare-fun e!4477238 () Option!17233)

(assert (=> d!2305596 (= lt!2636822 e!4477238)))

(declare-fun c!1386437 () Bool)

(assert (=> d!2305596 (= c!1386437 (exists!4873 z!3716 lambda!465699))))

(assert (=> d!2305596 (= (getLanguageWitness!1061 z!3716) lt!2636822)))

(declare-fun b!7508615 () Bool)

(declare-fun getLanguageWitness!1064 (Context!16940) Option!17233)

(declare-fun getWitness!2482 ((Set Context!16940) Int) Context!16940)

(assert (=> b!7508615 (= e!4477238 (getLanguageWitness!1064 (getWitness!2482 z!3716 lambda!465699)))))

(declare-fun b!7508616 () Bool)

(assert (=> b!7508616 (= e!4477238 None!17232)))

(assert (= (and d!2305596 c!1386437) b!7508615))

(assert (= (and d!2305596 (not c!1386437)) b!7508616))

(declare-fun m!8092366 () Bool)

(assert (=> d!2305596 m!8092366))

(declare-fun m!8092368 () Bool)

(assert (=> d!2305596 m!8092368))

(assert (=> d!2305596 m!8092368))

(declare-fun m!8092370 () Bool)

(assert (=> b!7508615 m!8092370))

(assert (=> b!7508615 m!8092370))

(declare-fun m!8092372 () Bool)

(assert (=> b!7508615 m!8092372))

(assert (=> d!2305358 d!2305596))

(declare-fun d!2305598 () Bool)

(declare-fun lt!2636825 () Bool)

(assert (=> d!2305598 (= lt!2636825 (forall!18309 (toList!11837 z!3716) lambda!465651))))

(declare-fun choose!58209 ((Set Context!16940) Int) Bool)

(assert (=> d!2305598 (= lt!2636825 (choose!58209 z!3716 lambda!465651))))

(assert (=> d!2305598 (= (forall!18306 z!3716 lambda!465651) lt!2636825)))

(declare-fun bs!1938679 () Bool)

(assert (= bs!1938679 d!2305598))

(assert (=> bs!1938679 m!8091814))

(assert (=> bs!1938679 m!8091814))

(declare-fun m!8092374 () Bool)

(assert (=> bs!1938679 m!8092374))

(declare-fun m!8092376 () Bool)

(assert (=> bs!1938679 m!8092376))

(assert (=> d!2305358 d!2305598))

(declare-fun d!2305600 () Bool)

(declare-fun lt!2636826 () Int)

(assert (=> d!2305600 (>= lt!2636826 0)))

(declare-fun e!4477239 () Int)

(assert (=> d!2305600 (= lt!2636826 e!4477239)))

(declare-fun c!1386438 () Bool)

(assert (=> d!2305600 (= c!1386438 (is-Nil!72418 (t!387111 (_1!37686 lt!2636383))))))

(assert (=> d!2305600 (= (size!42289 (t!387111 (_1!37686 lt!2636383))) lt!2636826)))

(declare-fun b!7508617 () Bool)

(assert (=> b!7508617 (= e!4477239 0)))

(declare-fun b!7508618 () Bool)

(assert (=> b!7508618 (= e!4477239 (+ 1 (size!42289 (t!387111 (t!387111 (_1!37686 lt!2636383))))))))

(assert (= (and d!2305600 c!1386438) b!7508617))

(assert (= (and d!2305600 (not c!1386438)) b!7508618))

(declare-fun m!8092378 () Bool)

(assert (=> b!7508618 m!8092378))

(assert (=> b!7508341 d!2305600))

(assert (=> b!7508197 d!2305340))

(declare-fun d!2305602 () Bool)

(declare-fun lt!2636827 () Int)

(assert (=> d!2305602 (>= lt!2636827 0)))

(declare-fun e!4477240 () Int)

(assert (=> d!2305602 (= lt!2636827 e!4477240)))

(declare-fun c!1386439 () Bool)

(assert (=> d!2305602 (= c!1386439 (is-Nil!72418 (++!17347 testedP!204 (Cons!72418 (head!15435 lt!2636386) Nil!72418))))))

(assert (=> d!2305602 (= (size!42289 (++!17347 testedP!204 (Cons!72418 (head!15435 lt!2636386) Nil!72418))) lt!2636827)))

(declare-fun b!7508619 () Bool)

(assert (=> b!7508619 (= e!4477240 0)))

(declare-fun b!7508620 () Bool)

(assert (=> b!7508620 (= e!4477240 (+ 1 (size!42289 (t!387111 (++!17347 testedP!204 (Cons!72418 (head!15435 lt!2636386) Nil!72418))))))))

(assert (= (and d!2305602 c!1386439) b!7508619))

(assert (= (and d!2305602 (not c!1386439)) b!7508620))

(declare-fun m!8092380 () Bool)

(assert (=> b!7508620 m!8092380))

(assert (=> b!7508197 d!2305602))

(declare-fun d!2305604 () Bool)

(declare-fun c!1386440 () Bool)

(assert (=> d!2305604 (= c!1386440 (is-Nil!72418 lt!2636558))))

(declare-fun e!4477241 () (Set C!39762))

(assert (=> d!2305604 (= (content!15315 lt!2636558) e!4477241)))

(declare-fun b!7508621 () Bool)

(assert (=> b!7508621 (= e!4477241 (as set.empty (Set C!39762)))))

(declare-fun b!7508622 () Bool)

(assert (=> b!7508622 (= e!4477241 (set.union (set.insert (h!78866 lt!2636558) (as set.empty (Set C!39762))) (content!15315 (t!387111 lt!2636558))))))

(assert (= (and d!2305604 c!1386440) b!7508621))

(assert (= (and d!2305604 (not c!1386440)) b!7508622))

(declare-fun m!8092382 () Bool)

(assert (=> b!7508622 m!8092382))

(declare-fun m!8092384 () Bool)

(assert (=> b!7508622 m!8092384))

(assert (=> d!2305352 d!2305604))

(declare-fun d!2305606 () Bool)

(declare-fun c!1386441 () Bool)

(assert (=> d!2305606 (= c!1386441 (is-Nil!72418 (_1!37686 lt!2636383)))))

(declare-fun e!4477242 () (Set C!39762))

(assert (=> d!2305606 (= (content!15315 (_1!37686 lt!2636383)) e!4477242)))

(declare-fun b!7508623 () Bool)

(assert (=> b!7508623 (= e!4477242 (as set.empty (Set C!39762)))))

(declare-fun b!7508624 () Bool)

(assert (=> b!7508624 (= e!4477242 (set.union (set.insert (h!78866 (_1!37686 lt!2636383)) (as set.empty (Set C!39762))) (content!15315 (t!387111 (_1!37686 lt!2636383)))))))

(assert (= (and d!2305606 c!1386441) b!7508623))

(assert (= (and d!2305606 (not c!1386441)) b!7508624))

(declare-fun m!8092386 () Bool)

(assert (=> b!7508624 m!8092386))

(assert (=> b!7508624 m!8092344))

(assert (=> d!2305352 d!2305606))

(declare-fun d!2305608 () Bool)

(declare-fun c!1386442 () Bool)

(assert (=> d!2305608 (= c!1386442 (is-Nil!72418 (_2!37686 lt!2636383)))))

(declare-fun e!4477243 () (Set C!39762))

(assert (=> d!2305608 (= (content!15315 (_2!37686 lt!2636383)) e!4477243)))

(declare-fun b!7508625 () Bool)

(assert (=> b!7508625 (= e!4477243 (as set.empty (Set C!39762)))))

(declare-fun b!7508626 () Bool)

(assert (=> b!7508626 (= e!4477243 (set.union (set.insert (h!78866 (_2!37686 lt!2636383)) (as set.empty (Set C!39762))) (content!15315 (t!387111 (_2!37686 lt!2636383)))))))

(assert (= (and d!2305608 c!1386442) b!7508625))

(assert (= (and d!2305608 (not c!1386442)) b!7508626))

(declare-fun m!8092388 () Bool)

(assert (=> b!7508626 m!8092388))

(declare-fun m!8092390 () Bool)

(assert (=> b!7508626 m!8092390))

(assert (=> d!2305352 d!2305608))

(assert (=> bm!688859 d!2305488))

(declare-fun b!7508640 () Bool)

(declare-fun e!4477246 () Bool)

(declare-fun tp!2179322 () Bool)

(declare-fun tp!2179326 () Bool)

(assert (=> b!7508640 (= e!4477246 (and tp!2179322 tp!2179326))))

(declare-fun b!7508637 () Bool)

(assert (=> b!7508637 (= e!4477246 tp_is_empty!49777)))

(assert (=> b!7508355 (= tp!2179288 e!4477246)))

(declare-fun b!7508639 () Bool)

(declare-fun tp!2179323 () Bool)

(assert (=> b!7508639 (= e!4477246 tp!2179323)))

(declare-fun b!7508638 () Bool)

(declare-fun tp!2179324 () Bool)

(declare-fun tp!2179325 () Bool)

(assert (=> b!7508638 (= e!4477246 (and tp!2179324 tp!2179325))))

(assert (= (and b!7508355 (is-ElementMatch!19718 (h!78865 (exprs!8970 setElem!57069)))) b!7508637))

(assert (= (and b!7508355 (is-Concat!28563 (h!78865 (exprs!8970 setElem!57069)))) b!7508638))

(assert (= (and b!7508355 (is-Star!19718 (h!78865 (exprs!8970 setElem!57069)))) b!7508639))

(assert (= (and b!7508355 (is-Union!19718 (h!78865 (exprs!8970 setElem!57069)))) b!7508640))

(declare-fun b!7508641 () Bool)

(declare-fun e!4477247 () Bool)

(declare-fun tp!2179327 () Bool)

(declare-fun tp!2179328 () Bool)

(assert (=> b!7508641 (= e!4477247 (and tp!2179327 tp!2179328))))

(assert (=> b!7508355 (= tp!2179289 e!4477247)))

(assert (= (and b!7508355 (is-Cons!72417 (t!387110 (exprs!8970 setElem!57069)))) b!7508641))

(declare-fun b!7508642 () Bool)

(declare-fun e!4477248 () Bool)

(declare-fun tp!2179329 () Bool)

(assert (=> b!7508642 (= e!4477248 (and tp_is_empty!49777 tp!2179329))))

(assert (=> b!7508362 (= tp!2179294 e!4477248)))

(assert (= (and b!7508362 (is-Cons!72418 (t!387111 (t!387111 testedSuffix!164)))) b!7508642))

(declare-fun condSetEmpty!57079 () Bool)

(assert (=> setNonEmpty!57075 (= condSetEmpty!57079 (= setRest!57075 (as set.empty (Set Context!16940))))))

(declare-fun setRes!57079 () Bool)

(assert (=> setNonEmpty!57075 (= tp!2179282 setRes!57079)))

(declare-fun setIsEmpty!57079 () Bool)

(assert (=> setIsEmpty!57079 setRes!57079))

(declare-fun setNonEmpty!57079 () Bool)

(declare-fun e!4477249 () Bool)

(declare-fun tp!2179330 () Bool)

(declare-fun setElem!57079 () Context!16940)

(assert (=> setNonEmpty!57079 (= setRes!57079 (and tp!2179330 (inv!92526 setElem!57079) e!4477249))))

(declare-fun setRest!57079 () (Set Context!16940))

(assert (=> setNonEmpty!57079 (= setRest!57075 (set.union (set.insert setElem!57079 (as set.empty (Set Context!16940))) setRest!57079))))

(declare-fun b!7508643 () Bool)

(declare-fun tp!2179331 () Bool)

(assert (=> b!7508643 (= e!4477249 tp!2179331)))

(assert (= (and setNonEmpty!57075 condSetEmpty!57079) setIsEmpty!57079))

(assert (= (and setNonEmpty!57075 (not condSetEmpty!57079)) setNonEmpty!57079))

(assert (= setNonEmpty!57079 b!7508643))

(declare-fun m!8092392 () Bool)

(assert (=> setNonEmpty!57079 m!8092392))

(declare-fun b!7508644 () Bool)

(declare-fun e!4477250 () Bool)

(declare-fun tp!2179332 () Bool)

(declare-fun tp!2179333 () Bool)

(assert (=> b!7508644 (= e!4477250 (and tp!2179332 tp!2179333))))

(assert (=> b!7508350 (= tp!2179283 e!4477250)))

(assert (= (and b!7508350 (is-Cons!72417 (exprs!8970 setElem!57075))) b!7508644))

(declare-fun b!7508645 () Bool)

(declare-fun e!4477251 () Bool)

(declare-fun tp!2179334 () Bool)

(assert (=> b!7508645 (= e!4477251 (and tp_is_empty!49777 tp!2179334))))

(assert (=> b!7508361 (= tp!2179293 e!4477251)))

(assert (= (and b!7508361 (is-Cons!72418 (t!387111 (t!387111 totalInput!779)))) b!7508645))

(declare-fun b!7508646 () Bool)

(declare-fun e!4477252 () Bool)

(declare-fun tp!2179335 () Bool)

(assert (=> b!7508646 (= e!4477252 (and tp_is_empty!49777 tp!2179335))))

(assert (=> b!7508360 (= tp!2179292 e!4477252)))

(assert (= (and b!7508360 (is-Cons!72418 (t!387111 (t!387111 testedP!204)))) b!7508646))

(declare-fun b_lambda!287885 () Bool)

(assert (= b_lambda!287883 (or d!2305342 b_lambda!287885)))

(declare-fun bs!1938680 () Bool)

(declare-fun d!2305610 () Bool)

(assert (= bs!1938680 (and d!2305610 d!2305342)))

(declare-fun validRegex!10183 (Regex!19718) Bool)

(assert (=> bs!1938680 (= (dynLambda!29789 lambda!465635 (h!78865 (exprs!8970 setElem!57069))) (validRegex!10183 (h!78865 (exprs!8970 setElem!57069))))))

(declare-fun m!8092394 () Bool)

(assert (=> bs!1938680 m!8092394))

(assert (=> b!7508472 d!2305610))

(push 1)

(assert (not d!2305458))

(assert (not b!7508584))

(assert (not b!7508606))

(assert (not b!7508488))

(assert (not b!7508544))

(assert (not b!7508466))

(assert (not d!2305572))

(assert (not d!2305596))

(assert (not b!7508537))

(assert (not b!7508608))

(assert (not b!7508638))

(assert (not d!2305494))

(assert (not b!7508577))

(assert (not b!7508443))

(assert (not b!7508451))

(assert (not b!7508523))

(assert (not d!2305520))

(assert (not b!7508573))

(assert (not b!7508571))

(assert (not bm!688879))

(assert (not b!7508475))

(assert (not b!7508645))

(assert (not b!7508517))

(assert (not bm!688880))

(assert (not b!7508643))

(assert (not d!2305550))

(assert (not b!7508640))

(assert (not b!7508642))

(assert (not d!2305444))

(assert (not d!2305486))

(assert (not b!7508473))

(assert (not setNonEmpty!57079))

(assert (not b!7508602))

(assert (not d!2305484))

(assert (not d!2305436))

(assert (not b!7508440))

(assert (not b!7508567))

(assert (not d!2305516))

(assert (not b!7508461))

(assert (not d!2305476))

(assert (not b!7508549))

(assert (not d!2305496))

(assert (not b!7508458))

(assert (not bm!688882))

(assert (not d!2305446))

(assert (not b!7508513))

(assert (not b!7508639))

(assert (not b!7508596))

(assert (not b!7508511))

(assert (not d!2305504))

(assert (not d!2305490))

(assert (not bm!688885))

(assert (not b!7508481))

(assert (not b!7508624))

(assert (not b!7508515))

(assert (not d!2305466))

(assert (not b!7508610))

(assert (not b!7508551))

(assert (not bm!688881))

(assert (not b!7508532))

(assert (not b!7508547))

(assert (not bm!688883))

(assert (not b!7508483))

(assert (not b!7508538))

(assert (not d!2305518))

(assert (not b!7508479))

(assert (not b!7508444))

(assert (not b!7508454))

(assert (not b!7508618))

(assert (not b!7508597))

(assert (not d!2305530))

(assert (not b!7508604))

(assert (not b!7508589))

(assert (not b!7508641))

(assert (not b!7508622))

(assert (not d!2305570))

(assert (not b!7508518))

(assert (not bm!688877))

(assert (not b!7508457))

(assert (not b!7508569))

(assert (not b!7508531))

(assert (not b!7508646))

(assert (not b!7508565))

(assert (not b!7508482))

(assert (not d!2305598))

(assert (not b!7508465))

(assert (not d!2305556))

(assert (not b!7508476))

(assert (not b!7508497))

(assert (not b!7508499))

(assert (not b!7508462))

(assert (not d!2305524))

(assert (not b!7508520))

(assert (not b!7508588))

(assert (not d!2305448))

(assert (not d!2305468))

(assert (not b!7508495))

(assert (not d!2305482))

(assert (not b!7508441))

(assert (not bs!1938680))

(assert (not bm!688876))

(assert (not b!7508557))

(assert (not b!7508563))

(assert tp_is_empty!49777)

(assert (not b!7508626))

(assert (not b!7508615))

(assert (not b_lambda!287885))

(assert (not b!7508586))

(assert (not b!7508493))

(assert (not d!2305500))

(assert (not d!2305450))

(assert (not b!7508509))

(assert (not d!2305492))

(assert (not d!2305532))

(assert (not b!7508578))

(assert (not d!2305498))

(assert (not b!7508500))

(assert (not b!7508561))

(assert (not d!2305452))

(assert (not b!7508553))

(assert (not b!7508620))

(assert (not b!7508600))

(assert (not d!2305442))

(assert (not b!7508524))

(assert (not d!2305514))

(assert (not b!7508543))

(assert (not b!7508541))

(assert (not b!7508528))

(assert (not b!7508644))

(assert (not b!7508570))

(assert (not d!2305560))

(assert (not b!7508507))

(assert (not b!7508539))

(assert (not b!7508453))

(assert (not b!7508439))

(assert (not b!7508594))

(assert (not b!7508445))

(assert (not b!7508582))

(assert (not b!7508555))

(assert (not d!2305456))

(assert (not d!2305578))

(assert (not d!2305574))

(assert (not bm!688884))

(assert (not b!7508554))

(assert (not b!7508535))

(assert (not b!7508548))

(assert (not b!7508527))

(assert (not d!2305546))

(assert (not d!2305580))

(assert (not b!7508449))

(assert (not bm!688878))

(assert (not b!7508593))

(assert (not b!7508558))

(assert (not b!7508592))

(assert (not b!7508575))

(assert (not b!7508550))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

