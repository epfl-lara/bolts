; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!222546 () Bool)

(assert start!222546)

(declare-fun b!2274289 () Bool)

(declare-fun b_free!67693 () Bool)

(declare-fun b_next!68397 () Bool)

(assert (=> b!2274289 (= b_free!67693 (not b_next!68397))))

(declare-fun tp!720378 () Bool)

(declare-fun b_and!179297 () Bool)

(assert (=> b!2274289 (= tp!720378 b_and!179297)))

(declare-fun b_free!67695 () Bool)

(declare-fun b_next!68399 () Bool)

(assert (=> b!2274289 (= b_free!67695 (not b_next!68399))))

(declare-fun tp!720380 () Bool)

(declare-fun b_and!179299 () Bool)

(assert (=> b!2274289 (= tp!720380 b_and!179299)))

(declare-fun b!2274277 () Bool)

(declare-fun b_free!67697 () Bool)

(declare-fun b_next!68401 () Bool)

(assert (=> b!2274277 (= b_free!67697 (not b_next!68401))))

(declare-fun tp!720383 () Bool)

(declare-fun b_and!179301 () Bool)

(assert (=> b!2274277 (= tp!720383 b_and!179301)))

(declare-fun b_free!67699 () Bool)

(declare-fun b_next!68403 () Bool)

(assert (=> b!2274277 (= b_free!67699 (not b_next!68403))))

(declare-fun tp!720391 () Bool)

(declare-fun b_and!179303 () Bool)

(assert (=> b!2274277 (= tp!720391 b_and!179303)))

(declare-fun b!2274282 () Bool)

(declare-fun b_free!67701 () Bool)

(declare-fun b_next!68405 () Bool)

(assert (=> b!2274282 (= b_free!67701 (not b_next!68405))))

(declare-fun tp!720392 () Bool)

(declare-fun b_and!179305 () Bool)

(assert (=> b!2274282 (= tp!720392 b_and!179305)))

(declare-fun b_free!67703 () Bool)

(declare-fun b_next!68407 () Bool)

(assert (=> b!2274282 (= b_free!67703 (not b_next!68407))))

(declare-fun tp!720382 () Bool)

(declare-fun b_and!179307 () Bool)

(assert (=> b!2274282 (= tp!720382 b_and!179307)))

(declare-fun b!2274292 () Bool)

(declare-fun b_free!67705 () Bool)

(declare-fun b_next!68409 () Bool)

(assert (=> b!2274292 (= b_free!67705 (not b_next!68409))))

(declare-fun tp!720393 () Bool)

(declare-fun b_and!179309 () Bool)

(assert (=> b!2274292 (= tp!720393 b_and!179309)))

(declare-fun b_free!67707 () Bool)

(declare-fun b_next!68411 () Bool)

(assert (=> b!2274292 (= b_free!67707 (not b_next!68411))))

(declare-fun tp!720387 () Bool)

(declare-fun b_and!179311 () Bool)

(assert (=> b!2274292 (= tp!720387 b_and!179311)))

(declare-fun b!2274269 () Bool)

(declare-datatypes ((List!27129 0))(
  ( (Nil!27035) (Cons!27035 (h!32436 (_ BitVec 16)) (t!202909 List!27129)) )
))
(declare-datatypes ((TokenValue!4474 0))(
  ( (FloatLiteralValue!8948 (text!31763 List!27129)) (TokenValueExt!4473 (__x!18008 Int)) (Broken!22370 (value!136687 List!27129)) (Object!4567) (End!4474) (Def!4474) (Underscore!4474) (Match!4474) (Else!4474) (Error!4474) (Case!4474) (If!4474) (Extends!4474) (Abstract!4474) (Class!4474) (Val!4474) (DelimiterValue!8948 (del!4534 List!27129)) (KeywordValue!4480 (value!136688 List!27129)) (CommentValue!8948 (value!136689 List!27129)) (WhitespaceValue!8948 (value!136690 List!27129)) (IndentationValue!4474 (value!136691 List!27129)) (String!29475) (Int32!4474) (Broken!22371 (value!136692 List!27129)) (Boolean!4475) (Unit!39982) (OperatorValue!4477 (op!4534 List!27129)) (IdentifierValue!8948 (value!136693 List!27129)) (IdentifierValue!8949 (value!136694 List!27129)) (WhitespaceValue!8949 (value!136695 List!27129)) (True!8948) (False!8948) (Broken!22372 (value!136696 List!27129)) (Broken!22373 (value!136697 List!27129)) (True!8949) (RightBrace!4474) (RightBracket!4474) (Colon!4474) (Null!4474) (Comma!4474) (LeftBracket!4474) (False!8949) (LeftBrace!4474) (ImaginaryLiteralValue!4474 (text!31764 List!27129)) (StringLiteralValue!13422 (value!136698 List!27129)) (EOFValue!4474 (value!136699 List!27129)) (IdentValue!4474 (value!136700 List!27129)) (DelimiterValue!8949 (value!136701 List!27129)) (DedentValue!4474 (value!136702 List!27129)) (NewLineValue!4474 (value!136703 List!27129)) (IntegerValue!13422 (value!136704 (_ BitVec 32)) (text!31765 List!27129)) (IntegerValue!13423 (value!136705 Int) (text!31766 List!27129)) (Times!4474) (Or!4474) (Equal!4474) (Minus!4474) (Broken!22374 (value!136706 List!27129)) (And!4474) (Div!4474) (LessEqual!4474) (Mod!4474) (Concat!11134) (Not!4474) (Plus!4474) (SpaceValue!4474 (value!136707 List!27129)) (IntegerValue!13424 (value!136708 Int) (text!31767 List!27129)) (StringLiteralValue!13423 (text!31768 List!27129)) (FloatLiteralValue!8949 (text!31769 List!27129)) (BytesLiteralValue!4474 (value!136709 List!27129)) (CommentValue!8949 (value!136710 List!27129)) (StringLiteralValue!13424 (value!136711 List!27129)) (ErrorTokenValue!4474 (msg!4535 List!27129)) )
))
(declare-datatypes ((C!13466 0))(
  ( (C!13467 (val!7781 Int)) )
))
(declare-datatypes ((List!27130 0))(
  ( (Nil!27036) (Cons!27036 (h!32437 C!13466) (t!202910 List!27130)) )
))
(declare-datatypes ((IArray!17549 0))(
  ( (IArray!17550 (innerList!8832 List!27130)) )
))
(declare-datatypes ((Conc!8772 0))(
  ( (Node!8772 (left!20517 Conc!8772) (right!20847 Conc!8772) (csize!17774 Int) (cheight!8983 Int)) (Leaf!12914 (xs!11714 IArray!17549) (csize!17775 Int)) (Empty!8772) )
))
(declare-datatypes ((BalanceConc!17272 0))(
  ( (BalanceConc!17273 (c!361058 Conc!8772)) )
))
(declare-datatypes ((Regex!6660 0))(
  ( (ElementMatch!6660 (c!361059 C!13466)) (Concat!11135 (regOne!13832 Regex!6660) (regTwo!13832 Regex!6660)) (EmptyExpr!6660) (Star!6660 (reg!6989 Regex!6660)) (EmptyLang!6660) (Union!6660 (regOne!13833 Regex!6660) (regTwo!13833 Regex!6660)) )
))
(declare-datatypes ((String!29476 0))(
  ( (String!29477 (value!136712 String)) )
))
(declare-datatypes ((TokenValueInjection!8488 0))(
  ( (TokenValueInjection!8489 (toValue!6086 Int) (toChars!5945 Int)) )
))
(declare-datatypes ((Rule!8424 0))(
  ( (Rule!8425 (regex!4312 Regex!6660) (tag!4802 String!29476) (isSeparator!4312 Bool) (transformation!4312 TokenValueInjection!8488)) )
))
(declare-fun r!2363 () Rule!8424)

(declare-fun tp!720390 () Bool)

(declare-fun e!1456626 () Bool)

(declare-fun e!1456622 () Bool)

(declare-fun inv!36607 (String!29476) Bool)

(declare-fun inv!36610 (TokenValueInjection!8488) Bool)

(assert (=> b!2274269 (= e!1456626 (and tp!720390 (inv!36607 (tag!4802 r!2363)) (inv!36610 (transformation!4312 r!2363)) e!1456622))))

(declare-fun b!2274270 () Bool)

(declare-fun e!1456633 () Bool)

(declare-datatypes ((Token!8102 0))(
  ( (Token!8103 (value!136713 TokenValue!4474) (rule!6632 Rule!8424) (size!21237 Int) (originalCharacters!5082 List!27130)) )
))
(declare-datatypes ((List!27131 0))(
  ( (Nil!27037) (Cons!27037 (h!32438 Token!8102) (t!202911 List!27131)) )
))
(declare-fun tokens!456 () List!27131)

(declare-fun otherP!12 () List!27130)

(declare-fun size!21238 (BalanceConc!17272) Int)

(declare-fun charsOf!2700 (Token!8102) BalanceConc!17272)

(declare-fun head!4911 (List!27131) Token!8102)

(declare-fun size!21239 (List!27130) Int)

(assert (=> b!2274270 (= e!1456633 (<= (size!21238 (charsOf!2700 (head!4911 tokens!456))) (size!21239 otherP!12)))))

(declare-fun e!1456641 () Bool)

(declare-fun e!1456648 () Bool)

(declare-fun tp!720379 () Bool)

(declare-fun b!2274271 () Bool)

(declare-fun inv!36611 (Token!8102) Bool)

(assert (=> b!2274271 (= e!1456641 (and (inv!36611 (h!32438 tokens!456)) e!1456648 tp!720379))))

(declare-fun e!1456629 () Bool)

(declare-fun e!1456632 () Bool)

(declare-fun b!2274272 () Bool)

(declare-fun tp!720389 () Bool)

(declare-datatypes ((List!27132 0))(
  ( (Nil!27038) (Cons!27038 (h!32439 Rule!8424) (t!202912 List!27132)) )
))
(declare-fun rules!1750 () List!27132)

(assert (=> b!2274272 (= e!1456632 (and tp!720389 (inv!36607 (tag!4802 (h!32439 rules!1750))) (inv!36610 (transformation!4312 (h!32439 rules!1750))) e!1456629))))

(declare-fun b!2274273 () Bool)

(declare-fun e!1456646 () Bool)

(declare-datatypes ((tuple2!26724 0))(
  ( (tuple2!26725 (_1!15872 Token!8102) (_2!15872 List!27130)) )
))
(declare-datatypes ((Option!5294 0))(
  ( (None!5293) (Some!5293 (v!30345 tuple2!26724)) )
))
(declare-fun lt!844625 () Option!5294)

(assert (=> b!2274273 (= e!1456646 (= lt!844625 None!5293))))

(declare-fun isEmpty!15325 (Option!5294) Bool)

(assert (=> b!2274273 (isEmpty!15325 lt!844625)))

(declare-datatypes ((LexerInterface!3909 0))(
  ( (LexerInterfaceExt!3906 (__x!18009 Int)) (Lexer!3907) )
))
(declare-fun thiss!16613 () LexerInterface!3909)

(declare-fun input!1722 () List!27130)

(declare-fun otherR!12 () Rule!8424)

(declare-fun maxPrefixOneRule!1359 (LexerInterface!3909 Rule!8424 List!27130) Option!5294)

(assert (=> b!2274273 (= lt!844625 (maxPrefixOneRule!1359 thiss!16613 otherR!12 input!1722))))

(declare-datatypes ((Unit!39983 0))(
  ( (Unit!39984) )
))
(declare-fun lt!844623 () Unit!39983)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!410 (LexerInterface!3909 Rule!8424 List!27132 List!27130) Unit!39983)

(assert (=> b!2274273 (= lt!844623 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!410 thiss!16613 otherR!12 rules!1750 input!1722))))

(declare-fun b!2274274 () Bool)

(declare-fun e!1456624 () Bool)

(declare-fun e!1456639 () Bool)

(assert (=> b!2274274 (= e!1456624 e!1456639)))

(declare-fun res!971987 () Bool)

(assert (=> b!2274274 (=> (not res!971987) (not e!1456639))))

(assert (=> b!2274274 (= res!971987 e!1456633)))

(declare-fun res!971976 () Bool)

(assert (=> b!2274274 (=> res!971976 e!1456633)))

(declare-fun lt!844627 () Bool)

(assert (=> b!2274274 (= res!971976 lt!844627)))

(declare-fun isEmpty!15326 (List!27131) Bool)

(assert (=> b!2274274 (= lt!844627 (isEmpty!15326 tokens!456))))

(declare-fun b!2274275 () Bool)

(declare-fun e!1456628 () Bool)

(declare-fun tp_is_empty!10541 () Bool)

(declare-fun tp!720384 () Bool)

(assert (=> b!2274275 (= e!1456628 (and tp_is_empty!10541 tp!720384))))

(declare-fun b!2274276 () Bool)

(declare-fun res!971980 () Bool)

(declare-fun e!1456640 () Bool)

(assert (=> b!2274276 (=> (not res!971980) (not e!1456640))))

(declare-fun contains!4680 (List!27132 Rule!8424) Bool)

(assert (=> b!2274276 (= res!971980 (contains!4680 rules!1750 otherR!12))))

(declare-fun e!1456645 () Bool)

(assert (=> b!2274277 (= e!1456645 (and tp!720383 tp!720391))))

(declare-fun res!971985 () Bool)

(assert (=> start!222546 (=> (not res!971985) (not e!1456640))))

(assert (=> start!222546 (= res!971985 (is-Lexer!3907 thiss!16613))))

(assert (=> start!222546 e!1456640))

(assert (=> start!222546 true))

(declare-fun e!1456643 () Bool)

(assert (=> start!222546 e!1456643))

(declare-fun e!1456636 () Bool)

(assert (=> start!222546 e!1456636))

(assert (=> start!222546 e!1456628))

(declare-fun e!1456638 () Bool)

(assert (=> start!222546 e!1456638))

(declare-fun e!1456644 () Bool)

(assert (=> start!222546 e!1456644))

(assert (=> start!222546 e!1456626))

(assert (=> start!222546 e!1456641))

(declare-fun b!2274278 () Bool)

(declare-fun e!1456634 () Bool)

(declare-fun tp!720381 () Bool)

(declare-fun inv!21 (TokenValue!4474) Bool)

(assert (=> b!2274278 (= e!1456648 (and (inv!21 (value!136713 (h!32438 tokens!456))) e!1456634 tp!720381))))

(declare-fun b!2274279 () Bool)

(declare-fun tp!720388 () Bool)

(assert (=> b!2274279 (= e!1456638 (and tp_is_empty!10541 tp!720388))))

(declare-fun b!2274280 () Bool)

(declare-fun e!1456647 () Bool)

(assert (=> b!2274280 (= e!1456647 (= (rule!6632 (head!4911 tokens!456)) r!2363))))

(declare-fun b!2274281 () Bool)

(assert (=> b!2274281 (= e!1456640 e!1456624)))

(declare-fun res!971975 () Bool)

(assert (=> b!2274281 (=> (not res!971975) (not e!1456624))))

(declare-datatypes ((IArray!17551 0))(
  ( (IArray!17552 (innerList!8833 List!27131)) )
))
(declare-datatypes ((Conc!8773 0))(
  ( (Node!8773 (left!20518 Conc!8773) (right!20848 Conc!8773) (csize!17776 Int) (cheight!8984 Int)) (Leaf!12915 (xs!11715 IArray!17551) (csize!17777 Int)) (Empty!8773) )
))
(declare-datatypes ((BalanceConc!17274 0))(
  ( (BalanceConc!17275 (c!361060 Conc!8773)) )
))
(declare-datatypes ((tuple2!26726 0))(
  ( (tuple2!26727 (_1!15873 BalanceConc!17274) (_2!15873 BalanceConc!17272)) )
))
(declare-fun lt!844626 () tuple2!26726)

(declare-fun suffix!886 () List!27130)

(declare-datatypes ((tuple2!26728 0))(
  ( (tuple2!26729 (_1!15874 List!27131) (_2!15874 List!27130)) )
))
(declare-fun list!10502 (BalanceConc!17274) List!27131)

(declare-fun list!10503 (BalanceConc!17272) List!27130)

(assert (=> b!2274281 (= res!971975 (= (tuple2!26729 (list!10502 (_1!15873 lt!844626)) (list!10503 (_2!15873 lt!844626))) (tuple2!26729 tokens!456 suffix!886)))))

(declare-fun lex!1748 (LexerInterface!3909 List!27132 BalanceConc!17272) tuple2!26726)

(declare-fun seqFromList!3016 (List!27130) BalanceConc!17272)

(assert (=> b!2274281 (= lt!844626 (lex!1748 thiss!16613 rules!1750 (seqFromList!3016 input!1722)))))

(declare-fun e!1456642 () Bool)

(assert (=> b!2274282 (= e!1456642 (and tp!720392 tp!720382))))

(declare-fun b!2274283 () Bool)

(declare-fun res!971982 () Bool)

(assert (=> b!2274283 (=> (not res!971982) (not e!1456639))))

(assert (=> b!2274283 (= res!971982 e!1456647)))

(declare-fun res!971984 () Bool)

(assert (=> b!2274283 (=> res!971984 e!1456647)))

(assert (=> b!2274283 (= res!971984 lt!844627)))

(declare-fun b!2274284 () Bool)

(declare-fun e!1456625 () Bool)

(assert (=> b!2274284 (= e!1456625 e!1456646)))

(declare-fun res!971981 () Bool)

(assert (=> b!2274284 (=> res!971981 e!1456646)))

(declare-fun getIndex!325 (List!27132 Rule!8424) Int)

(assert (=> b!2274284 (= res!971981 (<= (getIndex!325 rules!1750 r!2363) (getIndex!325 rules!1750 otherR!12)))))

(declare-fun ruleValid!1402 (LexerInterface!3909 Rule!8424) Bool)

(assert (=> b!2274284 (ruleValid!1402 thiss!16613 otherR!12)))

(declare-fun lt!844628 () Unit!39983)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!807 (LexerInterface!3909 Rule!8424 List!27132) Unit!39983)

(assert (=> b!2274284 (= lt!844628 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!807 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2274285 () Bool)

(declare-fun res!971986 () Bool)

(assert (=> b!2274285 (=> (not res!971986) (not e!1456640))))

(assert (=> b!2274285 (= res!971986 (contains!4680 rules!1750 r!2363))))

(declare-fun b!2274286 () Bool)

(declare-fun res!971978 () Bool)

(assert (=> b!2274286 (=> (not res!971978) (not e!1456640))))

(declare-fun isEmpty!15327 (List!27132) Bool)

(assert (=> b!2274286 (= res!971978 (not (isEmpty!15327 rules!1750)))))

(declare-fun b!2274287 () Bool)

(assert (=> b!2274287 (= e!1456639 (not e!1456625))))

(declare-fun res!971983 () Bool)

(assert (=> b!2274287 (=> res!971983 e!1456625)))

(declare-fun e!1456631 () Bool)

(assert (=> b!2274287 (= res!971983 e!1456631)))

(declare-fun res!971989 () Bool)

(assert (=> b!2274287 (=> (not res!971989) (not e!1456631))))

(assert (=> b!2274287 (= res!971989 (not lt!844627))))

(assert (=> b!2274287 (ruleValid!1402 thiss!16613 r!2363)))

(declare-fun lt!844624 () Unit!39983)

(assert (=> b!2274287 (= lt!844624 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!807 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2274288 () Bool)

(declare-fun matchR!2917 (Regex!6660 List!27130) Bool)

(assert (=> b!2274288 (= e!1456631 (not (matchR!2917 (regex!4312 r!2363) (list!10503 (charsOf!2700 (head!4911 tokens!456))))))))

(assert (=> b!2274289 (= e!1456629 (and tp!720378 tp!720380))))

(declare-fun b!2274290 () Bool)

(declare-fun res!971977 () Bool)

(assert (=> b!2274290 (=> res!971977 e!1456646)))

(assert (=> b!2274290 (= res!971977 (not (is-Nil!27037 tokens!456)))))

(declare-fun tp!720394 () Bool)

(declare-fun b!2274291 () Bool)

(assert (=> b!2274291 (= e!1456634 (and tp!720394 (inv!36607 (tag!4802 (rule!6632 (h!32438 tokens!456)))) (inv!36610 (transformation!4312 (rule!6632 (h!32438 tokens!456)))) e!1456642))))

(assert (=> b!2274292 (= e!1456622 (and tp!720393 tp!720387))))

(declare-fun b!2274293 () Bool)

(declare-fun res!971974 () Bool)

(assert (=> b!2274293 (=> (not res!971974) (not e!1456639))))

(declare-fun isPrefix!2302 (List!27130 List!27130) Bool)

(assert (=> b!2274293 (= res!971974 (isPrefix!2302 otherP!12 input!1722))))

(declare-fun b!2274294 () Bool)

(declare-fun tp!720385 () Bool)

(assert (=> b!2274294 (= e!1456643 (and tp_is_empty!10541 tp!720385))))

(declare-fun tp!720386 () Bool)

(declare-fun b!2274295 () Bool)

(assert (=> b!2274295 (= e!1456636 (and tp!720386 (inv!36607 (tag!4802 otherR!12)) (inv!36610 (transformation!4312 otherR!12)) e!1456645))))

(declare-fun b!2274296 () Bool)

(declare-fun res!971979 () Bool)

(assert (=> b!2274296 (=> (not res!971979) (not e!1456640))))

(declare-fun rulesInvariant!3411 (LexerInterface!3909 List!27132) Bool)

(assert (=> b!2274296 (= res!971979 (rulesInvariant!3411 thiss!16613 rules!1750))))

(declare-fun b!2274297 () Bool)

(declare-fun tp!720395 () Bool)

(assert (=> b!2274297 (= e!1456644 (and e!1456632 tp!720395))))

(declare-fun b!2274298 () Bool)

(declare-fun res!971988 () Bool)

(assert (=> b!2274298 (=> (not res!971988) (not e!1456639))))

(assert (=> b!2274298 (= res!971988 (not (= r!2363 otherR!12)))))

(assert (= (and start!222546 res!971985) b!2274286))

(assert (= (and b!2274286 res!971978) b!2274296))

(assert (= (and b!2274296 res!971979) b!2274285))

(assert (= (and b!2274285 res!971986) b!2274276))

(assert (= (and b!2274276 res!971980) b!2274281))

(assert (= (and b!2274281 res!971975) b!2274274))

(assert (= (and b!2274274 (not res!971976)) b!2274270))

(assert (= (and b!2274274 res!971987) b!2274283))

(assert (= (and b!2274283 (not res!971984)) b!2274280))

(assert (= (and b!2274283 res!971982) b!2274293))

(assert (= (and b!2274293 res!971974) b!2274298))

(assert (= (and b!2274298 res!971988) b!2274287))

(assert (= (and b!2274287 res!971989) b!2274288))

(assert (= (and b!2274287 (not res!971983)) b!2274284))

(assert (= (and b!2274284 (not res!971981)) b!2274290))

(assert (= (and b!2274290 (not res!971977)) b!2274273))

(assert (= (and start!222546 (is-Cons!27036 input!1722)) b!2274294))

(assert (= b!2274295 b!2274277))

(assert (= start!222546 b!2274295))

(assert (= (and start!222546 (is-Cons!27036 suffix!886)) b!2274275))

(assert (= (and start!222546 (is-Cons!27036 otherP!12)) b!2274279))

(assert (= b!2274272 b!2274289))

(assert (= b!2274297 b!2274272))

(assert (= (and start!222546 (is-Cons!27038 rules!1750)) b!2274297))

(assert (= b!2274269 b!2274292))

(assert (= start!222546 b!2274269))

(assert (= b!2274291 b!2274282))

(assert (= b!2274278 b!2274291))

(assert (= b!2274271 b!2274278))

(assert (= (and start!222546 (is-Cons!27037 tokens!456)) b!2274271))

(declare-fun m!2702679 () Bool)

(assert (=> b!2274270 m!2702679))

(assert (=> b!2274270 m!2702679))

(declare-fun m!2702681 () Bool)

(assert (=> b!2274270 m!2702681))

(assert (=> b!2274270 m!2702681))

(declare-fun m!2702683 () Bool)

(assert (=> b!2274270 m!2702683))

(declare-fun m!2702685 () Bool)

(assert (=> b!2274270 m!2702685))

(declare-fun m!2702687 () Bool)

(assert (=> b!2274291 m!2702687))

(declare-fun m!2702689 () Bool)

(assert (=> b!2274291 m!2702689))

(declare-fun m!2702691 () Bool)

(assert (=> b!2274296 m!2702691))

(assert (=> b!2274280 m!2702679))

(declare-fun m!2702693 () Bool)

(assert (=> b!2274281 m!2702693))

(declare-fun m!2702695 () Bool)

(assert (=> b!2274281 m!2702695))

(declare-fun m!2702697 () Bool)

(assert (=> b!2274281 m!2702697))

(assert (=> b!2274281 m!2702697))

(declare-fun m!2702699 () Bool)

(assert (=> b!2274281 m!2702699))

(declare-fun m!2702701 () Bool)

(assert (=> b!2274269 m!2702701))

(declare-fun m!2702703 () Bool)

(assert (=> b!2274269 m!2702703))

(assert (=> b!2274288 m!2702679))

(assert (=> b!2274288 m!2702679))

(assert (=> b!2274288 m!2702681))

(assert (=> b!2274288 m!2702681))

(declare-fun m!2702705 () Bool)

(assert (=> b!2274288 m!2702705))

(assert (=> b!2274288 m!2702705))

(declare-fun m!2702707 () Bool)

(assert (=> b!2274288 m!2702707))

(declare-fun m!2702709 () Bool)

(assert (=> b!2274272 m!2702709))

(declare-fun m!2702711 () Bool)

(assert (=> b!2274272 m!2702711))

(declare-fun m!2702713 () Bool)

(assert (=> b!2274284 m!2702713))

(declare-fun m!2702715 () Bool)

(assert (=> b!2274284 m!2702715))

(declare-fun m!2702717 () Bool)

(assert (=> b!2274284 m!2702717))

(declare-fun m!2702719 () Bool)

(assert (=> b!2274284 m!2702719))

(declare-fun m!2702721 () Bool)

(assert (=> b!2274271 m!2702721))

(declare-fun m!2702723 () Bool)

(assert (=> b!2274287 m!2702723))

(declare-fun m!2702725 () Bool)

(assert (=> b!2274287 m!2702725))

(declare-fun m!2702727 () Bool)

(assert (=> b!2274276 m!2702727))

(declare-fun m!2702729 () Bool)

(assert (=> b!2274273 m!2702729))

(declare-fun m!2702731 () Bool)

(assert (=> b!2274273 m!2702731))

(declare-fun m!2702733 () Bool)

(assert (=> b!2274273 m!2702733))

(declare-fun m!2702735 () Bool)

(assert (=> b!2274278 m!2702735))

(declare-fun m!2702737 () Bool)

(assert (=> b!2274286 m!2702737))

(declare-fun m!2702739 () Bool)

(assert (=> b!2274274 m!2702739))

(declare-fun m!2702741 () Bool)

(assert (=> b!2274295 m!2702741))

(declare-fun m!2702743 () Bool)

(assert (=> b!2274295 m!2702743))

(declare-fun m!2702745 () Bool)

(assert (=> b!2274293 m!2702745))

(declare-fun m!2702747 () Bool)

(assert (=> b!2274285 m!2702747))

(push 1)

(assert (not b_next!68407))

(assert (not b!2274285))

(assert (not b!2274272))

(assert (not b_next!68401))

(assert (not b_next!68397))

(assert b_and!179299)

(assert b_and!179301)

(assert (not b!2274273))

(assert (not b!2274295))

(assert (not b!2274275))

(assert (not b!2274294))

(assert b_and!179305)

(assert (not b!2274274))

(assert (not b!2274280))

(assert (not b!2274271))

(assert (not b!2274281))

(assert tp_is_empty!10541)

(assert (not b_next!68405))

(assert (not b!2274291))

(assert b_and!179297)

(assert b_and!179311)

(assert (not b_next!68409))

(assert (not b_next!68403))

(assert (not b!2274286))

(assert (not b!2274279))

(assert (not b!2274284))

(assert (not b!2274276))

(assert (not b_next!68411))

(assert b_and!179309)

(assert (not b!2274297))

(assert (not b!2274270))

(assert b_and!179303)

(assert (not b!2274269))

(assert (not b!2274296))

(assert (not b!2274287))

(assert (not b!2274288))

(assert (not b!2274293))

(assert (not b!2274278))

(assert b_and!179307)

(assert (not b_next!68399))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!68407))

(assert (not b_next!68405))

(assert (not b_next!68401))

(assert (not b_next!68397))

(assert b_and!179299)

(assert b_and!179301)

(assert (not b_next!68403))

(assert b_and!179303)

(assert b_and!179305)

(assert b_and!179297)

(assert b_and!179311)

(assert (not b_next!68409))

(assert (not b_next!68411))

(assert b_and!179309)

(assert b_and!179307)

(assert (not b_next!68399))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2274399 () Bool)

(declare-fun e!1456737 () Bool)

(declare-fun inv!15 (TokenValue!4474) Bool)

(assert (=> b!2274399 (= e!1456737 (inv!15 (value!136713 (h!32438 tokens!456))))))

(declare-fun b!2274400 () Bool)

(declare-fun e!1456738 () Bool)

(declare-fun e!1456736 () Bool)

(assert (=> b!2274400 (= e!1456738 e!1456736)))

(declare-fun c!361069 () Bool)

(assert (=> b!2274400 (= c!361069 (is-IntegerValue!13423 (value!136713 (h!32438 tokens!456))))))

(declare-fun b!2274401 () Bool)

(declare-fun res!972047 () Bool)

(assert (=> b!2274401 (=> res!972047 e!1456737)))

(assert (=> b!2274401 (= res!972047 (not (is-IntegerValue!13424 (value!136713 (h!32438 tokens!456)))))))

(assert (=> b!2274401 (= e!1456736 e!1456737)))

(declare-fun b!2274402 () Bool)

(declare-fun inv!16 (TokenValue!4474) Bool)

(assert (=> b!2274402 (= e!1456738 (inv!16 (value!136713 (h!32438 tokens!456))))))

(declare-fun b!2274403 () Bool)

(declare-fun inv!17 (TokenValue!4474) Bool)

(assert (=> b!2274403 (= e!1456736 (inv!17 (value!136713 (h!32438 tokens!456))))))

(declare-fun d!673258 () Bool)

(declare-fun c!361070 () Bool)

(assert (=> d!673258 (= c!361070 (is-IntegerValue!13422 (value!136713 (h!32438 tokens!456))))))

(assert (=> d!673258 (= (inv!21 (value!136713 (h!32438 tokens!456))) e!1456738)))

(assert (= (and d!673258 c!361070) b!2274402))

(assert (= (and d!673258 (not c!361070)) b!2274400))

(assert (= (and b!2274400 c!361069) b!2274403))

(assert (= (and b!2274400 (not c!361069)) b!2274401))

(assert (= (and b!2274401 (not res!972047)) b!2274399))

(declare-fun m!2702819 () Bool)

(assert (=> b!2274399 m!2702819))

(declare-fun m!2702821 () Bool)

(assert (=> b!2274402 m!2702821))

(declare-fun m!2702823 () Bool)

(assert (=> b!2274403 m!2702823))

(assert (=> b!2274278 d!673258))

(declare-fun b!2274432 () Bool)

(declare-fun e!1456759 () Bool)

(declare-fun e!1456757 () Bool)

(assert (=> b!2274432 (= e!1456759 e!1456757)))

(declare-fun c!361079 () Bool)

(assert (=> b!2274432 (= c!361079 (is-EmptyLang!6660 (regex!4312 r!2363)))))

(declare-fun b!2274433 () Bool)

(declare-fun e!1456758 () Bool)

(declare-fun e!1456753 () Bool)

(assert (=> b!2274433 (= e!1456758 e!1456753)))

(declare-fun res!972071 () Bool)

(assert (=> b!2274433 (=> res!972071 e!1456753)))

(declare-fun call!136253 () Bool)

(assert (=> b!2274433 (= res!972071 call!136253)))

(declare-fun b!2274434 () Bool)

(declare-fun e!1456754 () Bool)

(assert (=> b!2274434 (= e!1456754 e!1456758)))

(declare-fun res!972070 () Bool)

(assert (=> b!2274434 (=> (not res!972070) (not e!1456758))))

(declare-fun lt!844649 () Bool)

(assert (=> b!2274434 (= res!972070 (not lt!844649))))

(declare-fun b!2274435 () Bool)

(declare-fun res!972072 () Bool)

(assert (=> b!2274435 (=> res!972072 e!1456753)))

(declare-fun isEmpty!15331 (List!27130) Bool)

(declare-fun tail!3280 (List!27130) List!27130)

(assert (=> b!2274435 (= res!972072 (not (isEmpty!15331 (tail!3280 (list!10503 (charsOf!2700 (head!4911 tokens!456)))))))))

(declare-fun b!2274436 () Bool)

(declare-fun e!1456755 () Bool)

(declare-fun nullable!1837 (Regex!6660) Bool)

(assert (=> b!2274436 (= e!1456755 (nullable!1837 (regex!4312 r!2363)))))

(declare-fun b!2274437 () Bool)

(assert (=> b!2274437 (= e!1456757 (not lt!844649))))

(declare-fun d!673260 () Bool)

(assert (=> d!673260 e!1456759))

(declare-fun c!361078 () Bool)

(assert (=> d!673260 (= c!361078 (is-EmptyExpr!6660 (regex!4312 r!2363)))))

(assert (=> d!673260 (= lt!844649 e!1456755)))

(declare-fun c!361077 () Bool)

(assert (=> d!673260 (= c!361077 (isEmpty!15331 (list!10503 (charsOf!2700 (head!4911 tokens!456)))))))

(declare-fun validRegex!2499 (Regex!6660) Bool)

(assert (=> d!673260 (validRegex!2499 (regex!4312 r!2363))))

(assert (=> d!673260 (= (matchR!2917 (regex!4312 r!2363) (list!10503 (charsOf!2700 (head!4911 tokens!456)))) lt!844649)))

(declare-fun b!2274438 () Bool)

(declare-fun e!1456756 () Bool)

(declare-fun head!4913 (List!27130) C!13466)

(assert (=> b!2274438 (= e!1456756 (= (head!4913 (list!10503 (charsOf!2700 (head!4911 tokens!456)))) (c!361059 (regex!4312 r!2363))))))

(declare-fun b!2274439 () Bool)

(declare-fun res!972067 () Bool)

(assert (=> b!2274439 (=> res!972067 e!1456754)))

(assert (=> b!2274439 (= res!972067 e!1456756)))

(declare-fun res!972069 () Bool)

(assert (=> b!2274439 (=> (not res!972069) (not e!1456756))))

(assert (=> b!2274439 (= res!972069 lt!844649)))

(declare-fun b!2274440 () Bool)

(declare-fun res!972073 () Bool)

(assert (=> b!2274440 (=> res!972073 e!1456754)))

(assert (=> b!2274440 (= res!972073 (not (is-ElementMatch!6660 (regex!4312 r!2363))))))

(assert (=> b!2274440 (= e!1456757 e!1456754)))

(declare-fun b!2274441 () Bool)

(assert (=> b!2274441 (= e!1456753 (not (= (head!4913 (list!10503 (charsOf!2700 (head!4911 tokens!456)))) (c!361059 (regex!4312 r!2363)))))))

(declare-fun b!2274442 () Bool)

(declare-fun derivativeStep!1497 (Regex!6660 C!13466) Regex!6660)

(assert (=> b!2274442 (= e!1456755 (matchR!2917 (derivativeStep!1497 (regex!4312 r!2363) (head!4913 (list!10503 (charsOf!2700 (head!4911 tokens!456))))) (tail!3280 (list!10503 (charsOf!2700 (head!4911 tokens!456))))))))

(declare-fun b!2274443 () Bool)

(declare-fun res!972066 () Bool)

(assert (=> b!2274443 (=> (not res!972066) (not e!1456756))))

(assert (=> b!2274443 (= res!972066 (isEmpty!15331 (tail!3280 (list!10503 (charsOf!2700 (head!4911 tokens!456))))))))

(declare-fun b!2274444 () Bool)

(declare-fun res!972068 () Bool)

(assert (=> b!2274444 (=> (not res!972068) (not e!1456756))))

(assert (=> b!2274444 (= res!972068 (not call!136253))))

(declare-fun b!2274445 () Bool)

(assert (=> b!2274445 (= e!1456759 (= lt!844649 call!136253))))

(declare-fun bm!136248 () Bool)

(assert (=> bm!136248 (= call!136253 (isEmpty!15331 (list!10503 (charsOf!2700 (head!4911 tokens!456)))))))

(assert (= (and d!673260 c!361077) b!2274436))

(assert (= (and d!673260 (not c!361077)) b!2274442))

(assert (= (and d!673260 c!361078) b!2274445))

(assert (= (and d!673260 (not c!361078)) b!2274432))

(assert (= (and b!2274432 c!361079) b!2274437))

(assert (= (and b!2274432 (not c!361079)) b!2274440))

(assert (= (and b!2274440 (not res!972073)) b!2274439))

(assert (= (and b!2274439 res!972069) b!2274444))

(assert (= (and b!2274444 res!972068) b!2274443))

(assert (= (and b!2274443 res!972066) b!2274438))

(assert (= (and b!2274439 (not res!972067)) b!2274434))

(assert (= (and b!2274434 res!972070) b!2274433))

(assert (= (and b!2274433 (not res!972071)) b!2274435))

(assert (= (and b!2274435 (not res!972072)) b!2274441))

(assert (= (or b!2274445 b!2274433 b!2274444) bm!136248))

(assert (=> b!2274435 m!2702705))

(declare-fun m!2702825 () Bool)

(assert (=> b!2274435 m!2702825))

(assert (=> b!2274435 m!2702825))

(declare-fun m!2702827 () Bool)

(assert (=> b!2274435 m!2702827))

(assert (=> b!2274441 m!2702705))

(declare-fun m!2702829 () Bool)

(assert (=> b!2274441 m!2702829))

(assert (=> b!2274443 m!2702705))

(assert (=> b!2274443 m!2702825))

(assert (=> b!2274443 m!2702825))

(assert (=> b!2274443 m!2702827))

(assert (=> d!673260 m!2702705))

(declare-fun m!2702831 () Bool)

(assert (=> d!673260 m!2702831))

(declare-fun m!2702833 () Bool)

(assert (=> d!673260 m!2702833))

(declare-fun m!2702835 () Bool)

(assert (=> b!2274436 m!2702835))

(assert (=> bm!136248 m!2702705))

(assert (=> bm!136248 m!2702831))

(assert (=> b!2274442 m!2702705))

(assert (=> b!2274442 m!2702829))

(assert (=> b!2274442 m!2702829))

(declare-fun m!2702837 () Bool)

(assert (=> b!2274442 m!2702837))

(assert (=> b!2274442 m!2702705))

(assert (=> b!2274442 m!2702825))

(assert (=> b!2274442 m!2702837))

(assert (=> b!2274442 m!2702825))

(declare-fun m!2702839 () Bool)

(assert (=> b!2274442 m!2702839))

(assert (=> b!2274438 m!2702705))

(assert (=> b!2274438 m!2702829))

(assert (=> b!2274288 d!673260))

(declare-fun d!673262 () Bool)

(declare-fun list!10506 (Conc!8772) List!27130)

(assert (=> d!673262 (= (list!10503 (charsOf!2700 (head!4911 tokens!456))) (list!10506 (c!361058 (charsOf!2700 (head!4911 tokens!456)))))))

(declare-fun bs!456258 () Bool)

(assert (= bs!456258 d!673262))

(declare-fun m!2702841 () Bool)

(assert (=> bs!456258 m!2702841))

(assert (=> b!2274288 d!673262))

(declare-fun d!673264 () Bool)

(declare-fun lt!844652 () BalanceConc!17272)

(assert (=> d!673264 (= (list!10503 lt!844652) (originalCharacters!5082 (head!4911 tokens!456)))))

(declare-fun dynLambda!11740 (Int TokenValue!4474) BalanceConc!17272)

(assert (=> d!673264 (= lt!844652 (dynLambda!11740 (toChars!5945 (transformation!4312 (rule!6632 (head!4911 tokens!456)))) (value!136713 (head!4911 tokens!456))))))

(assert (=> d!673264 (= (charsOf!2700 (head!4911 tokens!456)) lt!844652)))

(declare-fun b_lambda!72449 () Bool)

(assert (=> (not b_lambda!72449) (not d!673264)))

(declare-fun tb!135055 () Bool)

(declare-fun t!202918 () Bool)

(assert (=> (and b!2274289 (= (toChars!5945 (transformation!4312 (h!32439 rules!1750))) (toChars!5945 (transformation!4312 (rule!6632 (head!4911 tokens!456))))) t!202918) tb!135055))

(declare-fun b!2274450 () Bool)

(declare-fun e!1456762 () Bool)

(declare-fun tp!720452 () Bool)

(declare-fun inv!36614 (Conc!8772) Bool)

(assert (=> b!2274450 (= e!1456762 (and (inv!36614 (c!361058 (dynLambda!11740 (toChars!5945 (transformation!4312 (rule!6632 (head!4911 tokens!456)))) (value!136713 (head!4911 tokens!456))))) tp!720452))))

(declare-fun result!164662 () Bool)

(declare-fun inv!36615 (BalanceConc!17272) Bool)

(assert (=> tb!135055 (= result!164662 (and (inv!36615 (dynLambda!11740 (toChars!5945 (transformation!4312 (rule!6632 (head!4911 tokens!456)))) (value!136713 (head!4911 tokens!456)))) e!1456762))))

(assert (= tb!135055 b!2274450))

(declare-fun m!2702843 () Bool)

(assert (=> b!2274450 m!2702843))

(declare-fun m!2702845 () Bool)

(assert (=> tb!135055 m!2702845))

(assert (=> d!673264 t!202918))

(declare-fun b_and!179329 () Bool)

(assert (= b_and!179299 (and (=> t!202918 result!164662) b_and!179329)))

(declare-fun t!202920 () Bool)

(declare-fun tb!135057 () Bool)

(assert (=> (and b!2274277 (= (toChars!5945 (transformation!4312 otherR!12)) (toChars!5945 (transformation!4312 (rule!6632 (head!4911 tokens!456))))) t!202920) tb!135057))

(declare-fun result!164666 () Bool)

(assert (= result!164666 result!164662))

(assert (=> d!673264 t!202920))

(declare-fun b_and!179331 () Bool)

(assert (= b_and!179303 (and (=> t!202920 result!164666) b_and!179331)))

(declare-fun t!202922 () Bool)

(declare-fun tb!135059 () Bool)

(assert (=> (and b!2274282 (= (toChars!5945 (transformation!4312 (rule!6632 (h!32438 tokens!456)))) (toChars!5945 (transformation!4312 (rule!6632 (head!4911 tokens!456))))) t!202922) tb!135059))

(declare-fun result!164668 () Bool)

(assert (= result!164668 result!164662))

(assert (=> d!673264 t!202922))

(declare-fun b_and!179333 () Bool)

(assert (= b_and!179307 (and (=> t!202922 result!164668) b_and!179333)))

(declare-fun tb!135061 () Bool)

(declare-fun t!202924 () Bool)

(assert (=> (and b!2274292 (= (toChars!5945 (transformation!4312 r!2363)) (toChars!5945 (transformation!4312 (rule!6632 (head!4911 tokens!456))))) t!202924) tb!135061))

(declare-fun result!164670 () Bool)

(assert (= result!164670 result!164662))

(assert (=> d!673264 t!202924))

(declare-fun b_and!179335 () Bool)

(assert (= b_and!179311 (and (=> t!202924 result!164670) b_and!179335)))

(declare-fun m!2702847 () Bool)

(assert (=> d!673264 m!2702847))

(declare-fun m!2702849 () Bool)

(assert (=> d!673264 m!2702849))

(assert (=> b!2274288 d!673264))

(declare-fun d!673266 () Bool)

(assert (=> d!673266 (= (head!4911 tokens!456) (h!32438 tokens!456))))

(assert (=> b!2274288 d!673266))

(declare-fun d!673268 () Bool)

(assert (=> d!673268 (= (inv!36607 (tag!4802 r!2363)) (= (mod (str.len (value!136712 (tag!4802 r!2363))) 2) 0))))

(assert (=> b!2274269 d!673268))

(declare-fun d!673270 () Bool)

(declare-fun res!972076 () Bool)

(declare-fun e!1456765 () Bool)

(assert (=> d!673270 (=> (not res!972076) (not e!1456765))))

(declare-fun semiInverseModEq!1739 (Int Int) Bool)

(assert (=> d!673270 (= res!972076 (semiInverseModEq!1739 (toChars!5945 (transformation!4312 r!2363)) (toValue!6086 (transformation!4312 r!2363))))))

(assert (=> d!673270 (= (inv!36610 (transformation!4312 r!2363)) e!1456765)))

(declare-fun b!2274453 () Bool)

(declare-fun equivClasses!1658 (Int Int) Bool)

(assert (=> b!2274453 (= e!1456765 (equivClasses!1658 (toChars!5945 (transformation!4312 r!2363)) (toValue!6086 (transformation!4312 r!2363))))))

(assert (= (and d!673270 res!972076) b!2274453))

(declare-fun m!2702851 () Bool)

(assert (=> d!673270 m!2702851))

(declare-fun m!2702853 () Bool)

(assert (=> b!2274453 m!2702853))

(assert (=> b!2274269 d!673270))

(declare-fun d!673272 () Bool)

(declare-fun lt!844655 () Int)

(assert (=> d!673272 (= lt!844655 (size!21239 (list!10503 (charsOf!2700 (head!4911 tokens!456)))))))

(declare-fun size!21243 (Conc!8772) Int)

(assert (=> d!673272 (= lt!844655 (size!21243 (c!361058 (charsOf!2700 (head!4911 tokens!456)))))))

(assert (=> d!673272 (= (size!21238 (charsOf!2700 (head!4911 tokens!456))) lt!844655)))

(declare-fun bs!456259 () Bool)

(assert (= bs!456259 d!673272))

(assert (=> bs!456259 m!2702681))

(assert (=> bs!456259 m!2702705))

(assert (=> bs!456259 m!2702705))

(declare-fun m!2702855 () Bool)

(assert (=> bs!456259 m!2702855))

(declare-fun m!2702857 () Bool)

(assert (=> bs!456259 m!2702857))

(assert (=> b!2274270 d!673272))

(assert (=> b!2274270 d!673264))

(assert (=> b!2274270 d!673266))

(declare-fun d!673274 () Bool)

(declare-fun lt!844658 () Int)

(assert (=> d!673274 (>= lt!844658 0)))

(declare-fun e!1456768 () Int)

(assert (=> d!673274 (= lt!844658 e!1456768)))

(declare-fun c!361082 () Bool)

(assert (=> d!673274 (= c!361082 (is-Nil!27036 otherP!12))))

(assert (=> d!673274 (= (size!21239 otherP!12) lt!844658)))

(declare-fun b!2274458 () Bool)

(assert (=> b!2274458 (= e!1456768 0)))

(declare-fun b!2274459 () Bool)

(assert (=> b!2274459 (= e!1456768 (+ 1 (size!21239 (t!202910 otherP!12))))))

(assert (= (and d!673274 c!361082) b!2274458))

(assert (= (and d!673274 (not c!361082)) b!2274459))

(declare-fun m!2702859 () Bool)

(assert (=> b!2274459 m!2702859))

(assert (=> b!2274270 d!673274))

(declare-fun d!673278 () Bool)

(declare-fun list!10507 (Conc!8773) List!27131)

(assert (=> d!673278 (= (list!10502 (_1!15873 lt!844626)) (list!10507 (c!361060 (_1!15873 lt!844626))))))

(declare-fun bs!456260 () Bool)

(assert (= bs!456260 d!673278))

(declare-fun m!2702861 () Bool)

(assert (=> bs!456260 m!2702861))

(assert (=> b!2274281 d!673278))

(declare-fun d!673280 () Bool)

(assert (=> d!673280 (= (list!10503 (_2!15873 lt!844626)) (list!10506 (c!361058 (_2!15873 lt!844626))))))

(declare-fun bs!456261 () Bool)

(assert (= bs!456261 d!673280))

(declare-fun m!2702863 () Bool)

(assert (=> bs!456261 m!2702863))

(assert (=> b!2274281 d!673280))

(declare-fun b!2274533 () Bool)

(declare-fun e!1456809 () Bool)

(declare-fun lt!844670 () tuple2!26726)

(declare-fun isEmpty!15332 (BalanceConc!17274) Bool)

(assert (=> b!2274533 (= e!1456809 (not (isEmpty!15332 (_1!15873 lt!844670))))))

(declare-fun b!2274534 () Bool)

(declare-fun e!1456811 () Bool)

(assert (=> b!2274534 (= e!1456811 e!1456809)))

(declare-fun res!972124 () Bool)

(assert (=> b!2274534 (= res!972124 (< (size!21238 (_2!15873 lt!844670)) (size!21238 (seqFromList!3016 input!1722))))))

(assert (=> b!2274534 (=> (not res!972124) (not e!1456809))))

(declare-fun d!673282 () Bool)

(declare-fun e!1456810 () Bool)

(assert (=> d!673282 e!1456810))

(declare-fun res!972122 () Bool)

(assert (=> d!673282 (=> (not res!972122) (not e!1456810))))

(assert (=> d!673282 (= res!972122 e!1456811)))

(declare-fun c!361094 () Bool)

(declare-fun size!21244 (BalanceConc!17274) Int)

(assert (=> d!673282 (= c!361094 (> (size!21244 (_1!15873 lt!844670)) 0))))

(declare-fun lexTailRecV2!758 (LexerInterface!3909 List!27132 BalanceConc!17272 BalanceConc!17272 BalanceConc!17272 BalanceConc!17274) tuple2!26726)

(assert (=> d!673282 (= lt!844670 (lexTailRecV2!758 thiss!16613 rules!1750 (seqFromList!3016 input!1722) (BalanceConc!17273 Empty!8772) (seqFromList!3016 input!1722) (BalanceConc!17275 Empty!8773)))))

(assert (=> d!673282 (= (lex!1748 thiss!16613 rules!1750 (seqFromList!3016 input!1722)) lt!844670)))

(declare-fun b!2274535 () Bool)

(declare-fun lexList!1083 (LexerInterface!3909 List!27132 List!27130) tuple2!26728)

(assert (=> b!2274535 (= e!1456810 (= (list!10503 (_2!15873 lt!844670)) (_2!15874 (lexList!1083 thiss!16613 rules!1750 (list!10503 (seqFromList!3016 input!1722))))))))

(declare-fun b!2274536 () Bool)

(declare-fun res!972123 () Bool)

(assert (=> b!2274536 (=> (not res!972123) (not e!1456810))))

(assert (=> b!2274536 (= res!972123 (= (list!10502 (_1!15873 lt!844670)) (_1!15874 (lexList!1083 thiss!16613 rules!1750 (list!10503 (seqFromList!3016 input!1722))))))))

(declare-fun b!2274537 () Bool)

(assert (=> b!2274537 (= e!1456811 (= (_2!15873 lt!844670) (seqFromList!3016 input!1722)))))

(assert (= (and d!673282 c!361094) b!2274534))

(assert (= (and d!673282 (not c!361094)) b!2274537))

(assert (= (and b!2274534 res!972124) b!2274533))

(assert (= (and d!673282 res!972122) b!2274536))

(assert (= (and b!2274536 res!972123) b!2274535))

(declare-fun m!2702909 () Bool)

(assert (=> b!2274535 m!2702909))

(assert (=> b!2274535 m!2702697))

(declare-fun m!2702911 () Bool)

(assert (=> b!2274535 m!2702911))

(assert (=> b!2274535 m!2702911))

(declare-fun m!2702913 () Bool)

(assert (=> b!2274535 m!2702913))

(declare-fun m!2702915 () Bool)

(assert (=> b!2274533 m!2702915))

(declare-fun m!2702917 () Bool)

(assert (=> b!2274536 m!2702917))

(assert (=> b!2274536 m!2702697))

(assert (=> b!2274536 m!2702911))

(assert (=> b!2274536 m!2702911))

(assert (=> b!2274536 m!2702913))

(declare-fun m!2702919 () Bool)

(assert (=> b!2274534 m!2702919))

(assert (=> b!2274534 m!2702697))

(declare-fun m!2702921 () Bool)

(assert (=> b!2274534 m!2702921))

(declare-fun m!2702923 () Bool)

(assert (=> d!673282 m!2702923))

(assert (=> d!673282 m!2702697))

(assert (=> d!673282 m!2702697))

(declare-fun m!2702925 () Bool)

(assert (=> d!673282 m!2702925))

(assert (=> b!2274281 d!673282))

(declare-fun d!673302 () Bool)

(declare-fun fromListB!1349 (List!27130) BalanceConc!17272)

(assert (=> d!673302 (= (seqFromList!3016 input!1722) (fromListB!1349 input!1722))))

(declare-fun bs!456264 () Bool)

(assert (= bs!456264 d!673302))

(declare-fun m!2702927 () Bool)

(assert (=> bs!456264 m!2702927))

(assert (=> b!2274281 d!673302))

(assert (=> b!2274280 d!673266))

(declare-fun d!673304 () Bool)

(assert (=> d!673304 (= (inv!36607 (tag!4802 (rule!6632 (h!32438 tokens!456)))) (= (mod (str.len (value!136712 (tag!4802 (rule!6632 (h!32438 tokens!456))))) 2) 0))))

(assert (=> b!2274291 d!673304))

(declare-fun d!673306 () Bool)

(declare-fun res!972125 () Bool)

(declare-fun e!1456812 () Bool)

(assert (=> d!673306 (=> (not res!972125) (not e!1456812))))

(assert (=> d!673306 (= res!972125 (semiInverseModEq!1739 (toChars!5945 (transformation!4312 (rule!6632 (h!32438 tokens!456)))) (toValue!6086 (transformation!4312 (rule!6632 (h!32438 tokens!456))))))))

(assert (=> d!673306 (= (inv!36610 (transformation!4312 (rule!6632 (h!32438 tokens!456)))) e!1456812)))

(declare-fun b!2274538 () Bool)

(assert (=> b!2274538 (= e!1456812 (equivClasses!1658 (toChars!5945 (transformation!4312 (rule!6632 (h!32438 tokens!456)))) (toValue!6086 (transformation!4312 (rule!6632 (h!32438 tokens!456))))))))

(assert (= (and d!673306 res!972125) b!2274538))

(declare-fun m!2702929 () Bool)

(assert (=> d!673306 m!2702929))

(declare-fun m!2702931 () Bool)

(assert (=> b!2274538 m!2702931))

(assert (=> b!2274291 d!673306))

(declare-fun d!673308 () Bool)

(declare-fun e!1456820 () Bool)

(assert (=> d!673308 e!1456820))

(declare-fun res!972135 () Bool)

(assert (=> d!673308 (=> res!972135 e!1456820)))

(declare-fun lt!844673 () Bool)

(assert (=> d!673308 (= res!972135 (not lt!844673))))

(declare-fun e!1456819 () Bool)

(assert (=> d!673308 (= lt!844673 e!1456819)))

(declare-fun res!972134 () Bool)

(assert (=> d!673308 (=> res!972134 e!1456819)))

(assert (=> d!673308 (= res!972134 (is-Nil!27036 otherP!12))))

(assert (=> d!673308 (= (isPrefix!2302 otherP!12 input!1722) lt!844673)))

(declare-fun b!2274548 () Bool)

(declare-fun res!972136 () Bool)

(declare-fun e!1456821 () Bool)

(assert (=> b!2274548 (=> (not res!972136) (not e!1456821))))

(assert (=> b!2274548 (= res!972136 (= (head!4913 otherP!12) (head!4913 input!1722)))))

(declare-fun b!2274547 () Bool)

(assert (=> b!2274547 (= e!1456819 e!1456821)))

(declare-fun res!972137 () Bool)

(assert (=> b!2274547 (=> (not res!972137) (not e!1456821))))

(assert (=> b!2274547 (= res!972137 (not (is-Nil!27036 input!1722)))))

(declare-fun b!2274549 () Bool)

(assert (=> b!2274549 (= e!1456821 (isPrefix!2302 (tail!3280 otherP!12) (tail!3280 input!1722)))))

(declare-fun b!2274550 () Bool)

(assert (=> b!2274550 (= e!1456820 (>= (size!21239 input!1722) (size!21239 otherP!12)))))

(assert (= (and d!673308 (not res!972134)) b!2274547))

(assert (= (and b!2274547 res!972137) b!2274548))

(assert (= (and b!2274548 res!972136) b!2274549))

(assert (= (and d!673308 (not res!972135)) b!2274550))

(declare-fun m!2702933 () Bool)

(assert (=> b!2274548 m!2702933))

(declare-fun m!2702935 () Bool)

(assert (=> b!2274548 m!2702935))

(declare-fun m!2702937 () Bool)

(assert (=> b!2274549 m!2702937))

(declare-fun m!2702939 () Bool)

(assert (=> b!2274549 m!2702939))

(assert (=> b!2274549 m!2702937))

(assert (=> b!2274549 m!2702939))

(declare-fun m!2702941 () Bool)

(assert (=> b!2274549 m!2702941))

(declare-fun m!2702943 () Bool)

(assert (=> b!2274550 m!2702943))

(assert (=> b!2274550 m!2702685))

(assert (=> b!2274293 d!673308))

(declare-fun d!673310 () Bool)

(declare-fun res!972142 () Bool)

(declare-fun e!1456824 () Bool)

(assert (=> d!673310 (=> (not res!972142) (not e!1456824))))

(assert (=> d!673310 (= res!972142 (not (isEmpty!15331 (originalCharacters!5082 (h!32438 tokens!456)))))))

(assert (=> d!673310 (= (inv!36611 (h!32438 tokens!456)) e!1456824)))

(declare-fun b!2274555 () Bool)

(declare-fun res!972143 () Bool)

(assert (=> b!2274555 (=> (not res!972143) (not e!1456824))))

(assert (=> b!2274555 (= res!972143 (= (originalCharacters!5082 (h!32438 tokens!456)) (list!10503 (dynLambda!11740 (toChars!5945 (transformation!4312 (rule!6632 (h!32438 tokens!456)))) (value!136713 (h!32438 tokens!456))))))))

(declare-fun b!2274556 () Bool)

(assert (=> b!2274556 (= e!1456824 (= (size!21237 (h!32438 tokens!456)) (size!21239 (originalCharacters!5082 (h!32438 tokens!456)))))))

(assert (= (and d!673310 res!972142) b!2274555))

(assert (= (and b!2274555 res!972143) b!2274556))

(declare-fun b_lambda!72455 () Bool)

(assert (=> (not b_lambda!72455) (not b!2274555)))

(declare-fun tb!135079 () Bool)

(declare-fun t!202942 () Bool)

(assert (=> (and b!2274289 (= (toChars!5945 (transformation!4312 (h!32439 rules!1750))) (toChars!5945 (transformation!4312 (rule!6632 (h!32438 tokens!456))))) t!202942) tb!135079))

(declare-fun b!2274557 () Bool)

(declare-fun e!1456825 () Bool)

(declare-fun tp!720457 () Bool)

(assert (=> b!2274557 (= e!1456825 (and (inv!36614 (c!361058 (dynLambda!11740 (toChars!5945 (transformation!4312 (rule!6632 (h!32438 tokens!456)))) (value!136713 (h!32438 tokens!456))))) tp!720457))))

(declare-fun result!164690 () Bool)

(assert (=> tb!135079 (= result!164690 (and (inv!36615 (dynLambda!11740 (toChars!5945 (transformation!4312 (rule!6632 (h!32438 tokens!456)))) (value!136713 (h!32438 tokens!456)))) e!1456825))))

(assert (= tb!135079 b!2274557))

(declare-fun m!2702945 () Bool)

(assert (=> b!2274557 m!2702945))

(declare-fun m!2702947 () Bool)

(assert (=> tb!135079 m!2702947))

(assert (=> b!2274555 t!202942))

(declare-fun b_and!179353 () Bool)

(assert (= b_and!179329 (and (=> t!202942 result!164690) b_and!179353)))

(declare-fun tb!135081 () Bool)

(declare-fun t!202944 () Bool)

(assert (=> (and b!2274277 (= (toChars!5945 (transformation!4312 otherR!12)) (toChars!5945 (transformation!4312 (rule!6632 (h!32438 tokens!456))))) t!202944) tb!135081))

(declare-fun result!164692 () Bool)

(assert (= result!164692 result!164690))

(assert (=> b!2274555 t!202944))

(declare-fun b_and!179355 () Bool)

(assert (= b_and!179331 (and (=> t!202944 result!164692) b_and!179355)))

(declare-fun t!202946 () Bool)

(declare-fun tb!135083 () Bool)

(assert (=> (and b!2274282 (= (toChars!5945 (transformation!4312 (rule!6632 (h!32438 tokens!456)))) (toChars!5945 (transformation!4312 (rule!6632 (h!32438 tokens!456))))) t!202946) tb!135083))

(declare-fun result!164694 () Bool)

(assert (= result!164694 result!164690))

(assert (=> b!2274555 t!202946))

(declare-fun b_and!179357 () Bool)

(assert (= b_and!179333 (and (=> t!202946 result!164694) b_and!179357)))

(declare-fun tb!135085 () Bool)

(declare-fun t!202948 () Bool)

(assert (=> (and b!2274292 (= (toChars!5945 (transformation!4312 r!2363)) (toChars!5945 (transformation!4312 (rule!6632 (h!32438 tokens!456))))) t!202948) tb!135085))

(declare-fun result!164696 () Bool)

(assert (= result!164696 result!164690))

(assert (=> b!2274555 t!202948))

(declare-fun b_and!179359 () Bool)

(assert (= b_and!179335 (and (=> t!202948 result!164696) b_and!179359)))

(declare-fun m!2702949 () Bool)

(assert (=> d!673310 m!2702949))

(declare-fun m!2702951 () Bool)

(assert (=> b!2274555 m!2702951))

(assert (=> b!2274555 m!2702951))

(declare-fun m!2702953 () Bool)

(assert (=> b!2274555 m!2702953))

(declare-fun m!2702955 () Bool)

(assert (=> b!2274556 m!2702955))

(assert (=> b!2274271 d!673310))

(declare-fun d!673312 () Bool)

(assert (=> d!673312 (= (isEmpty!15325 lt!844625) (not (is-Some!5293 lt!844625)))))

(assert (=> b!2274273 d!673312))

(declare-fun b!2274576 () Bool)

(declare-fun e!1456835 () Bool)

(declare-fun lt!844687 () Option!5294)

(declare-fun get!8150 (Option!5294) tuple2!26724)

(assert (=> b!2274576 (= e!1456835 (= (size!21237 (_1!15872 (get!8150 lt!844687))) (size!21239 (originalCharacters!5082 (_1!15872 (get!8150 lt!844687))))))))

(declare-fun b!2274577 () Bool)

(declare-fun res!972163 () Bool)

(assert (=> b!2274577 (=> (not res!972163) (not e!1456835))))

(assert (=> b!2274577 (= res!972163 (= (rule!6632 (_1!15872 (get!8150 lt!844687))) otherR!12))))

(declare-fun b!2274578 () Bool)

(declare-fun res!972158 () Bool)

(assert (=> b!2274578 (=> (not res!972158) (not e!1456835))))

(declare-fun apply!6598 (TokenValueInjection!8488 BalanceConc!17272) TokenValue!4474)

(assert (=> b!2274578 (= res!972158 (= (value!136713 (_1!15872 (get!8150 lt!844687))) (apply!6598 (transformation!4312 (rule!6632 (_1!15872 (get!8150 lt!844687)))) (seqFromList!3016 (originalCharacters!5082 (_1!15872 (get!8150 lt!844687)))))))))

(declare-fun b!2274580 () Bool)

(declare-fun e!1456834 () Bool)

(declare-datatypes ((tuple2!26736 0))(
  ( (tuple2!26737 (_1!15878 List!27130) (_2!15878 List!27130)) )
))
(declare-fun findLongestMatchInner!706 (Regex!6660 List!27130 Int List!27130 List!27130 Int) tuple2!26736)

(assert (=> b!2274580 (= e!1456834 (matchR!2917 (regex!4312 otherR!12) (_1!15878 (findLongestMatchInner!706 (regex!4312 otherR!12) Nil!27036 (size!21239 Nil!27036) input!1722 input!1722 (size!21239 input!1722)))))))

(declare-fun b!2274581 () Bool)

(declare-fun e!1456837 () Option!5294)

(assert (=> b!2274581 (= e!1456837 None!5293)))

(declare-fun b!2274582 () Bool)

(declare-fun res!972164 () Bool)

(assert (=> b!2274582 (=> (not res!972164) (not e!1456835))))

(declare-fun ++!6598 (List!27130 List!27130) List!27130)

(assert (=> b!2274582 (= res!972164 (= (++!6598 (list!10503 (charsOf!2700 (_1!15872 (get!8150 lt!844687)))) (_2!15872 (get!8150 lt!844687))) input!1722))))

(declare-fun b!2274583 () Bool)

(declare-fun lt!844688 () tuple2!26736)

(assert (=> b!2274583 (= e!1456837 (Some!5293 (tuple2!26725 (Token!8103 (apply!6598 (transformation!4312 otherR!12) (seqFromList!3016 (_1!15878 lt!844688))) otherR!12 (size!21238 (seqFromList!3016 (_1!15878 lt!844688))) (_1!15878 lt!844688)) (_2!15878 lt!844688))))))

(declare-fun lt!844686 () Unit!39983)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!679 (Regex!6660 List!27130) Unit!39983)

(assert (=> b!2274583 (= lt!844686 (longestMatchIsAcceptedByMatchOrIsEmpty!679 (regex!4312 otherR!12) input!1722))))

(declare-fun res!972162 () Bool)

(assert (=> b!2274583 (= res!972162 (isEmpty!15331 (_1!15878 (findLongestMatchInner!706 (regex!4312 otherR!12) Nil!27036 (size!21239 Nil!27036) input!1722 input!1722 (size!21239 input!1722)))))))

(assert (=> b!2274583 (=> res!972162 e!1456834)))

(assert (=> b!2274583 e!1456834))

(declare-fun lt!844685 () Unit!39983)

(assert (=> b!2274583 (= lt!844685 lt!844686)))

(declare-fun lt!844684 () Unit!39983)

(declare-fun lemmaSemiInverse!1039 (TokenValueInjection!8488 BalanceConc!17272) Unit!39983)

(assert (=> b!2274583 (= lt!844684 (lemmaSemiInverse!1039 (transformation!4312 otherR!12) (seqFromList!3016 (_1!15878 lt!844688))))))

(declare-fun b!2274584 () Bool)

(declare-fun res!972161 () Bool)

(assert (=> b!2274584 (=> (not res!972161) (not e!1456835))))

(assert (=> b!2274584 (= res!972161 (< (size!21239 (_2!15872 (get!8150 lt!844687))) (size!21239 input!1722)))))

(declare-fun b!2274579 () Bool)

(declare-fun e!1456836 () Bool)

(assert (=> b!2274579 (= e!1456836 e!1456835)))

(declare-fun res!972160 () Bool)

(assert (=> b!2274579 (=> (not res!972160) (not e!1456835))))

(assert (=> b!2274579 (= res!972160 (matchR!2917 (regex!4312 otherR!12) (list!10503 (charsOf!2700 (_1!15872 (get!8150 lt!844687))))))))

(declare-fun d!673314 () Bool)

(assert (=> d!673314 e!1456836))

(declare-fun res!972159 () Bool)

(assert (=> d!673314 (=> res!972159 e!1456836)))

(assert (=> d!673314 (= res!972159 (isEmpty!15325 lt!844687))))

(assert (=> d!673314 (= lt!844687 e!1456837)))

(declare-fun c!361097 () Bool)

(assert (=> d!673314 (= c!361097 (isEmpty!15331 (_1!15878 lt!844688)))))

(declare-fun findLongestMatch!635 (Regex!6660 List!27130) tuple2!26736)

(assert (=> d!673314 (= lt!844688 (findLongestMatch!635 (regex!4312 otherR!12) input!1722))))

(assert (=> d!673314 (ruleValid!1402 thiss!16613 otherR!12)))

(assert (=> d!673314 (= (maxPrefixOneRule!1359 thiss!16613 otherR!12 input!1722) lt!844687)))

(assert (= (and d!673314 c!361097) b!2274581))

(assert (= (and d!673314 (not c!361097)) b!2274583))

(assert (= (and b!2274583 (not res!972162)) b!2274580))

(assert (= (and d!673314 (not res!972159)) b!2274579))

(assert (= (and b!2274579 res!972160) b!2274582))

(assert (= (and b!2274582 res!972164) b!2274584))

(assert (= (and b!2274584 res!972161) b!2274577))

(assert (= (and b!2274577 res!972163) b!2274578))

(assert (= (and b!2274578 res!972158) b!2274576))

(declare-fun m!2702957 () Bool)

(assert (=> b!2274577 m!2702957))

(declare-fun m!2702959 () Bool)

(assert (=> b!2274583 m!2702959))

(declare-fun m!2702961 () Bool)

(assert (=> b!2274583 m!2702961))

(declare-fun m!2702963 () Bool)

(assert (=> b!2274583 m!2702963))

(assert (=> b!2274583 m!2702961))

(assert (=> b!2274583 m!2702961))

(declare-fun m!2702965 () Bool)

(assert (=> b!2274583 m!2702965))

(assert (=> b!2274583 m!2702943))

(assert (=> b!2274583 m!2702961))

(declare-fun m!2702967 () Bool)

(assert (=> b!2274583 m!2702967))

(declare-fun m!2702969 () Bool)

(assert (=> b!2274583 m!2702969))

(declare-fun m!2702971 () Bool)

(assert (=> b!2274583 m!2702971))

(assert (=> b!2274583 m!2702959))

(assert (=> b!2274583 m!2702943))

(declare-fun m!2702973 () Bool)

(assert (=> b!2274583 m!2702973))

(assert (=> b!2274582 m!2702957))

(declare-fun m!2702975 () Bool)

(assert (=> b!2274582 m!2702975))

(assert (=> b!2274582 m!2702975))

(declare-fun m!2702977 () Bool)

(assert (=> b!2274582 m!2702977))

(assert (=> b!2274582 m!2702977))

(declare-fun m!2702979 () Bool)

(assert (=> b!2274582 m!2702979))

(assert (=> b!2274576 m!2702957))

(declare-fun m!2702981 () Bool)

(assert (=> b!2274576 m!2702981))

(assert (=> b!2274580 m!2702959))

(assert (=> b!2274580 m!2702943))

(assert (=> b!2274580 m!2702959))

(assert (=> b!2274580 m!2702943))

(assert (=> b!2274580 m!2702973))

(declare-fun m!2702983 () Bool)

(assert (=> b!2274580 m!2702983))

(assert (=> b!2274578 m!2702957))

(declare-fun m!2702985 () Bool)

(assert (=> b!2274578 m!2702985))

(assert (=> b!2274578 m!2702985))

(declare-fun m!2702987 () Bool)

(assert (=> b!2274578 m!2702987))

(assert (=> b!2274579 m!2702957))

(assert (=> b!2274579 m!2702975))

(assert (=> b!2274579 m!2702975))

(assert (=> b!2274579 m!2702977))

(assert (=> b!2274579 m!2702977))

(declare-fun m!2702989 () Bool)

(assert (=> b!2274579 m!2702989))

(assert (=> b!2274584 m!2702957))

(declare-fun m!2702991 () Bool)

(assert (=> b!2274584 m!2702991))

(assert (=> b!2274584 m!2702943))

(declare-fun m!2702993 () Bool)

(assert (=> d!673314 m!2702993))

(declare-fun m!2702995 () Bool)

(assert (=> d!673314 m!2702995))

(declare-fun m!2702997 () Bool)

(assert (=> d!673314 m!2702997))

(assert (=> d!673314 m!2702717))

(assert (=> b!2274273 d!673314))

(declare-fun d!673316 () Bool)

(assert (=> d!673316 (isEmpty!15325 (maxPrefixOneRule!1359 thiss!16613 otherR!12 input!1722))))

(declare-fun lt!844691 () Unit!39983)

(declare-fun choose!13272 (LexerInterface!3909 Rule!8424 List!27132 List!27130) Unit!39983)

(assert (=> d!673316 (= lt!844691 (choose!13272 thiss!16613 otherR!12 rules!1750 input!1722))))

(assert (=> d!673316 (not (isEmpty!15327 rules!1750))))

(assert (=> d!673316 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!410 thiss!16613 otherR!12 rules!1750 input!1722) lt!844691)))

(declare-fun bs!456265 () Bool)

(assert (= bs!456265 d!673316))

(assert (=> bs!456265 m!2702731))

(assert (=> bs!456265 m!2702731))

(declare-fun m!2702999 () Bool)

(assert (=> bs!456265 m!2702999))

(declare-fun m!2703001 () Bool)

(assert (=> bs!456265 m!2703001))

(assert (=> bs!456265 m!2702737))

(assert (=> b!2274273 d!673316))

(declare-fun d!673318 () Bool)

(assert (=> d!673318 (= (inv!36607 (tag!4802 (h!32439 rules!1750))) (= (mod (str.len (value!136712 (tag!4802 (h!32439 rules!1750)))) 2) 0))))

(assert (=> b!2274272 d!673318))

(declare-fun d!673320 () Bool)

(declare-fun res!972165 () Bool)

(declare-fun e!1456838 () Bool)

(assert (=> d!673320 (=> (not res!972165) (not e!1456838))))

(assert (=> d!673320 (= res!972165 (semiInverseModEq!1739 (toChars!5945 (transformation!4312 (h!32439 rules!1750))) (toValue!6086 (transformation!4312 (h!32439 rules!1750)))))))

(assert (=> d!673320 (= (inv!36610 (transformation!4312 (h!32439 rules!1750))) e!1456838)))

(declare-fun b!2274585 () Bool)

(assert (=> b!2274585 (= e!1456838 (equivClasses!1658 (toChars!5945 (transformation!4312 (h!32439 rules!1750))) (toValue!6086 (transformation!4312 (h!32439 rules!1750)))))))

(assert (= (and d!673320 res!972165) b!2274585))

(declare-fun m!2703003 () Bool)

(assert (=> d!673320 m!2703003))

(declare-fun m!2703005 () Bool)

(assert (=> b!2274585 m!2703005))

(assert (=> b!2274272 d!673320))

(declare-fun d!673322 () Bool)

(assert (=> d!673322 (= (isEmpty!15326 tokens!456) (is-Nil!27037 tokens!456))))

(assert (=> b!2274274 d!673322))

(declare-fun d!673324 () Bool)

(declare-fun lt!844694 () Bool)

(declare-fun content!3606 (List!27132) (Set Rule!8424))

(assert (=> d!673324 (= lt!844694 (set.member r!2363 (content!3606 rules!1750)))))

(declare-fun e!1456843 () Bool)

(assert (=> d!673324 (= lt!844694 e!1456843)))

(declare-fun res!972171 () Bool)

(assert (=> d!673324 (=> (not res!972171) (not e!1456843))))

(assert (=> d!673324 (= res!972171 (is-Cons!27038 rules!1750))))

(assert (=> d!673324 (= (contains!4680 rules!1750 r!2363) lt!844694)))

(declare-fun b!2274590 () Bool)

(declare-fun e!1456844 () Bool)

(assert (=> b!2274590 (= e!1456843 e!1456844)))

(declare-fun res!972170 () Bool)

(assert (=> b!2274590 (=> res!972170 e!1456844)))

(assert (=> b!2274590 (= res!972170 (= (h!32439 rules!1750) r!2363))))

(declare-fun b!2274591 () Bool)

(assert (=> b!2274591 (= e!1456844 (contains!4680 (t!202912 rules!1750) r!2363))))

(assert (= (and d!673324 res!972171) b!2274590))

(assert (= (and b!2274590 (not res!972170)) b!2274591))

(declare-fun m!2703007 () Bool)

(assert (=> d!673324 m!2703007))

(declare-fun m!2703009 () Bool)

(assert (=> d!673324 m!2703009))

(declare-fun m!2703011 () Bool)

(assert (=> b!2274591 m!2703011))

(assert (=> b!2274285 d!673324))

(declare-fun d!673326 () Bool)

(declare-fun lt!844707 () Int)

(assert (=> d!673326 (>= lt!844707 0)))

(declare-fun e!1456858 () Int)

(assert (=> d!673326 (= lt!844707 e!1456858)))

(declare-fun c!361105 () Bool)

(assert (=> d!673326 (= c!361105 (and (is-Cons!27038 rules!1750) (= (h!32439 rules!1750) r!2363)))))

(assert (=> d!673326 (contains!4680 rules!1750 r!2363)))

(assert (=> d!673326 (= (getIndex!325 rules!1750 r!2363) lt!844707)))

(declare-fun b!2274613 () Bool)

(declare-fun e!1456859 () Int)

(assert (=> b!2274613 (= e!1456858 e!1456859)))

(declare-fun c!361104 () Bool)

(assert (=> b!2274613 (= c!361104 (and (is-Cons!27038 rules!1750) (not (= (h!32439 rules!1750) r!2363))))))

(declare-fun b!2274615 () Bool)

(assert (=> b!2274615 (= e!1456859 (- 1))))

(declare-fun b!2274612 () Bool)

(assert (=> b!2274612 (= e!1456858 0)))

(declare-fun b!2274614 () Bool)

(assert (=> b!2274614 (= e!1456859 (+ 1 (getIndex!325 (t!202912 rules!1750) r!2363)))))

(assert (= (and d!673326 c!361105) b!2274612))

(assert (= (and d!673326 (not c!361105)) b!2274613))

(assert (= (and b!2274613 c!361104) b!2274614))

(assert (= (and b!2274613 (not c!361104)) b!2274615))

(assert (=> d!673326 m!2702747))

(declare-fun m!2703013 () Bool)

(assert (=> b!2274614 m!2703013))

(assert (=> b!2274284 d!673326))

(declare-fun d!673328 () Bool)

(declare-fun lt!844708 () Int)

(assert (=> d!673328 (>= lt!844708 0)))

(declare-fun e!1456860 () Int)

(assert (=> d!673328 (= lt!844708 e!1456860)))

(declare-fun c!361107 () Bool)

(assert (=> d!673328 (= c!361107 (and (is-Cons!27038 rules!1750) (= (h!32439 rules!1750) otherR!12)))))

(assert (=> d!673328 (contains!4680 rules!1750 otherR!12)))

(assert (=> d!673328 (= (getIndex!325 rules!1750 otherR!12) lt!844708)))

(declare-fun b!2274623 () Bool)

(declare-fun e!1456861 () Int)

(assert (=> b!2274623 (= e!1456860 e!1456861)))

(declare-fun c!361106 () Bool)

(assert (=> b!2274623 (= c!361106 (and (is-Cons!27038 rules!1750) (not (= (h!32439 rules!1750) otherR!12))))))

(declare-fun b!2274625 () Bool)

(assert (=> b!2274625 (= e!1456861 (- 1))))

(declare-fun b!2274622 () Bool)

(assert (=> b!2274622 (= e!1456860 0)))

(declare-fun b!2274624 () Bool)

(assert (=> b!2274624 (= e!1456861 (+ 1 (getIndex!325 (t!202912 rules!1750) otherR!12)))))

(assert (= (and d!673328 c!361107) b!2274622))

(assert (= (and d!673328 (not c!361107)) b!2274623))

(assert (= (and b!2274623 c!361106) b!2274624))

(assert (= (and b!2274623 (not c!361106)) b!2274625))

(assert (=> d!673328 m!2702727))

(declare-fun m!2703015 () Bool)

(assert (=> b!2274624 m!2703015))

(assert (=> b!2274284 d!673328))

(declare-fun d!673330 () Bool)

(declare-fun res!972190 () Bool)

(declare-fun e!1456864 () Bool)

(assert (=> d!673330 (=> (not res!972190) (not e!1456864))))

(assert (=> d!673330 (= res!972190 (validRegex!2499 (regex!4312 otherR!12)))))

(assert (=> d!673330 (= (ruleValid!1402 thiss!16613 otherR!12) e!1456864)))

(declare-fun b!2274630 () Bool)

(declare-fun res!972191 () Bool)

(assert (=> b!2274630 (=> (not res!972191) (not e!1456864))))

(assert (=> b!2274630 (= res!972191 (not (nullable!1837 (regex!4312 otherR!12))))))

(declare-fun b!2274631 () Bool)

(assert (=> b!2274631 (= e!1456864 (not (= (tag!4802 otherR!12) (String!29477 ""))))))

(assert (= (and d!673330 res!972190) b!2274630))

(assert (= (and b!2274630 res!972191) b!2274631))

(declare-fun m!2703017 () Bool)

(assert (=> d!673330 m!2703017))

(declare-fun m!2703019 () Bool)

(assert (=> b!2274630 m!2703019))

(assert (=> b!2274284 d!673330))

(declare-fun d!673332 () Bool)

(assert (=> d!673332 (ruleValid!1402 thiss!16613 otherR!12)))

(declare-fun lt!844711 () Unit!39983)

(declare-fun choose!13274 (LexerInterface!3909 Rule!8424 List!27132) Unit!39983)

(assert (=> d!673332 (= lt!844711 (choose!13274 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!673332 (contains!4680 rules!1750 otherR!12)))

(assert (=> d!673332 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!807 thiss!16613 otherR!12 rules!1750) lt!844711)))

(declare-fun bs!456266 () Bool)

(assert (= bs!456266 d!673332))

(assert (=> bs!456266 m!2702717))

(declare-fun m!2703021 () Bool)

(assert (=> bs!456266 m!2703021))

(assert (=> bs!456266 m!2702727))

(assert (=> b!2274284 d!673332))

(declare-fun d!673334 () Bool)

(assert (=> d!673334 (= (inv!36607 (tag!4802 otherR!12)) (= (mod (str.len (value!136712 (tag!4802 otherR!12))) 2) 0))))

(assert (=> b!2274295 d!673334))

(declare-fun d!673336 () Bool)

(declare-fun res!972192 () Bool)

(declare-fun e!1456865 () Bool)

(assert (=> d!673336 (=> (not res!972192) (not e!1456865))))

(assert (=> d!673336 (= res!972192 (semiInverseModEq!1739 (toChars!5945 (transformation!4312 otherR!12)) (toValue!6086 (transformation!4312 otherR!12))))))

(assert (=> d!673336 (= (inv!36610 (transformation!4312 otherR!12)) e!1456865)))

(declare-fun b!2274632 () Bool)

(assert (=> b!2274632 (= e!1456865 (equivClasses!1658 (toChars!5945 (transformation!4312 otherR!12)) (toValue!6086 (transformation!4312 otherR!12))))))

(assert (= (and d!673336 res!972192) b!2274632))

(declare-fun m!2703023 () Bool)

(assert (=> d!673336 m!2703023))

(declare-fun m!2703025 () Bool)

(assert (=> b!2274632 m!2703025))

(assert (=> b!2274295 d!673336))

(declare-fun d!673338 () Bool)

(assert (=> d!673338 (= (isEmpty!15327 rules!1750) (is-Nil!27038 rules!1750))))

(assert (=> b!2274286 d!673338))

(declare-fun d!673340 () Bool)

(declare-fun res!972195 () Bool)

(declare-fun e!1456868 () Bool)

(assert (=> d!673340 (=> (not res!972195) (not e!1456868))))

(declare-fun rulesValid!1583 (LexerInterface!3909 List!27132) Bool)

(assert (=> d!673340 (= res!972195 (rulesValid!1583 thiss!16613 rules!1750))))

(assert (=> d!673340 (= (rulesInvariant!3411 thiss!16613 rules!1750) e!1456868)))

(declare-fun b!2274635 () Bool)

(declare-datatypes ((List!27137 0))(
  ( (Nil!27043) (Cons!27043 (h!32444 String!29476) (t!202965 List!27137)) )
))
(declare-fun noDuplicateTag!1581 (LexerInterface!3909 List!27132 List!27137) Bool)

(assert (=> b!2274635 (= e!1456868 (noDuplicateTag!1581 thiss!16613 rules!1750 Nil!27043))))

(assert (= (and d!673340 res!972195) b!2274635))

(declare-fun m!2703027 () Bool)

(assert (=> d!673340 m!2703027))

(declare-fun m!2703029 () Bool)

(assert (=> b!2274635 m!2703029))

(assert (=> b!2274296 d!673340))

(declare-fun d!673342 () Bool)

(declare-fun lt!844712 () Bool)

(assert (=> d!673342 (= lt!844712 (set.member otherR!12 (content!3606 rules!1750)))))

(declare-fun e!1456869 () Bool)

(assert (=> d!673342 (= lt!844712 e!1456869)))

(declare-fun res!972197 () Bool)

(assert (=> d!673342 (=> (not res!972197) (not e!1456869))))

(assert (=> d!673342 (= res!972197 (is-Cons!27038 rules!1750))))

(assert (=> d!673342 (= (contains!4680 rules!1750 otherR!12) lt!844712)))

(declare-fun b!2274636 () Bool)

(declare-fun e!1456870 () Bool)

(assert (=> b!2274636 (= e!1456869 e!1456870)))

(declare-fun res!972196 () Bool)

(assert (=> b!2274636 (=> res!972196 e!1456870)))

(assert (=> b!2274636 (= res!972196 (= (h!32439 rules!1750) otherR!12))))

(declare-fun b!2274637 () Bool)

(assert (=> b!2274637 (= e!1456870 (contains!4680 (t!202912 rules!1750) otherR!12))))

(assert (= (and d!673342 res!972197) b!2274636))

(assert (= (and b!2274636 (not res!972196)) b!2274637))

(assert (=> d!673342 m!2703007))

(declare-fun m!2703031 () Bool)

(assert (=> d!673342 m!2703031))

(declare-fun m!2703033 () Bool)

(assert (=> b!2274637 m!2703033))

(assert (=> b!2274276 d!673342))

(declare-fun d!673344 () Bool)

(declare-fun res!972198 () Bool)

(declare-fun e!1456871 () Bool)

(assert (=> d!673344 (=> (not res!972198) (not e!1456871))))

(assert (=> d!673344 (= res!972198 (validRegex!2499 (regex!4312 r!2363)))))

(assert (=> d!673344 (= (ruleValid!1402 thiss!16613 r!2363) e!1456871)))

(declare-fun b!2274638 () Bool)

(declare-fun res!972199 () Bool)

(assert (=> b!2274638 (=> (not res!972199) (not e!1456871))))

(assert (=> b!2274638 (= res!972199 (not (nullable!1837 (regex!4312 r!2363))))))

(declare-fun b!2274639 () Bool)

(assert (=> b!2274639 (= e!1456871 (not (= (tag!4802 r!2363) (String!29477 ""))))))

(assert (= (and d!673344 res!972198) b!2274638))

(assert (= (and b!2274638 res!972199) b!2274639))

(assert (=> d!673344 m!2702833))

(assert (=> b!2274638 m!2702835))

(assert (=> b!2274287 d!673344))

(declare-fun d!673346 () Bool)

(assert (=> d!673346 (ruleValid!1402 thiss!16613 r!2363)))

(declare-fun lt!844713 () Unit!39983)

(assert (=> d!673346 (= lt!844713 (choose!13274 thiss!16613 r!2363 rules!1750))))

(assert (=> d!673346 (contains!4680 rules!1750 r!2363)))

(assert (=> d!673346 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!807 thiss!16613 r!2363 rules!1750) lt!844713)))

(declare-fun bs!456267 () Bool)

(assert (= bs!456267 d!673346))

(assert (=> bs!456267 m!2702723))

(declare-fun m!2703035 () Bool)

(assert (=> bs!456267 m!2703035))

(assert (=> bs!456267 m!2702747))

(assert (=> b!2274287 d!673346))

(declare-fun b!2274644 () Bool)

(declare-fun e!1456874 () Bool)

(declare-fun tp!720460 () Bool)

(assert (=> b!2274644 (= e!1456874 (and tp_is_empty!10541 tp!720460))))

(assert (=> b!2274278 (= tp!720381 e!1456874)))

(assert (= (and b!2274278 (is-Cons!27036 (originalCharacters!5082 (h!32438 tokens!456)))) b!2274644))

(declare-fun b!2274667 () Bool)

(declare-fun e!1456881 () Bool)

(declare-fun tp!720474 () Bool)

(declare-fun tp!720473 () Bool)

(assert (=> b!2274667 (= e!1456881 (and tp!720474 tp!720473))))

(declare-fun b!2274664 () Bool)

(assert (=> b!2274664 (= e!1456881 tp_is_empty!10541)))

(declare-fun b!2274666 () Bool)

(declare-fun tp!720475 () Bool)

(assert (=> b!2274666 (= e!1456881 tp!720475)))

(assert (=> b!2274269 (= tp!720390 e!1456881)))

(declare-fun b!2274665 () Bool)

(declare-fun tp!720472 () Bool)

(declare-fun tp!720471 () Bool)

(assert (=> b!2274665 (= e!1456881 (and tp!720472 tp!720471))))

(assert (= (and b!2274269 (is-ElementMatch!6660 (regex!4312 r!2363))) b!2274664))

(assert (= (and b!2274269 (is-Concat!11135 (regex!4312 r!2363))) b!2274665))

(assert (= (and b!2274269 (is-Star!6660 (regex!4312 r!2363))) b!2274666))

(assert (= (and b!2274269 (is-Union!6660 (regex!4312 r!2363))) b!2274667))

(declare-fun b!2274668 () Bool)

(declare-fun e!1456882 () Bool)

(declare-fun tp!720476 () Bool)

(assert (=> b!2274668 (= e!1456882 (and tp_is_empty!10541 tp!720476))))

(assert (=> b!2274279 (= tp!720388 e!1456882)))

(assert (= (and b!2274279 (is-Cons!27036 (t!202910 otherP!12))) b!2274668))

(declare-fun b!2274672 () Bool)

(declare-fun e!1456883 () Bool)

(declare-fun tp!720480 () Bool)

(declare-fun tp!720479 () Bool)

(assert (=> b!2274672 (= e!1456883 (and tp!720480 tp!720479))))

(declare-fun b!2274669 () Bool)

(assert (=> b!2274669 (= e!1456883 tp_is_empty!10541)))

(declare-fun b!2274671 () Bool)

(declare-fun tp!720481 () Bool)

(assert (=> b!2274671 (= e!1456883 tp!720481)))

(assert (=> b!2274291 (= tp!720394 e!1456883)))

(declare-fun b!2274670 () Bool)

(declare-fun tp!720478 () Bool)

(declare-fun tp!720477 () Bool)

(assert (=> b!2274670 (= e!1456883 (and tp!720478 tp!720477))))

(assert (= (and b!2274291 (is-ElementMatch!6660 (regex!4312 (rule!6632 (h!32438 tokens!456))))) b!2274669))

(assert (= (and b!2274291 (is-Concat!11135 (regex!4312 (rule!6632 (h!32438 tokens!456))))) b!2274670))

(assert (= (and b!2274291 (is-Star!6660 (regex!4312 (rule!6632 (h!32438 tokens!456))))) b!2274671))

(assert (= (and b!2274291 (is-Union!6660 (regex!4312 (rule!6632 (h!32438 tokens!456))))) b!2274672))

(declare-fun b!2274686 () Bool)

(declare-fun b_free!67725 () Bool)

(declare-fun b_next!68429 () Bool)

(assert (=> b!2274686 (= b_free!67725 (not b_next!68429))))

(declare-fun tp!720492 () Bool)

(declare-fun b_and!179361 () Bool)

(assert (=> b!2274686 (= tp!720492 b_and!179361)))

(declare-fun b_free!67727 () Bool)

(declare-fun b_next!68431 () Bool)

(assert (=> b!2274686 (= b_free!67727 (not b_next!68431))))

(declare-fun t!202950 () Bool)

(declare-fun tb!135087 () Bool)

(assert (=> (and b!2274686 (= (toChars!5945 (transformation!4312 (rule!6632 (h!32438 (t!202911 tokens!456))))) (toChars!5945 (transformation!4312 (rule!6632 (head!4911 tokens!456))))) t!202950) tb!135087))

(declare-fun result!164704 () Bool)

(assert (= result!164704 result!164662))

(assert (=> d!673264 t!202950))

(declare-fun t!202952 () Bool)

(declare-fun tb!135089 () Bool)

(assert (=> (and b!2274686 (= (toChars!5945 (transformation!4312 (rule!6632 (h!32438 (t!202911 tokens!456))))) (toChars!5945 (transformation!4312 (rule!6632 (h!32438 tokens!456))))) t!202952) tb!135089))

(declare-fun result!164706 () Bool)

(assert (= result!164706 result!164690))

(assert (=> b!2274555 t!202952))

(declare-fun tp!720494 () Bool)

(declare-fun b_and!179363 () Bool)

(assert (=> b!2274686 (= tp!720494 (and (=> t!202950 result!164704) (=> t!202952 result!164706) b_and!179363))))

(declare-fun e!1456898 () Bool)

(declare-fun b!2274683 () Bool)

(declare-fun e!1456901 () Bool)

(declare-fun tp!720493 () Bool)

(assert (=> b!2274683 (= e!1456898 (and (inv!36611 (h!32438 (t!202911 tokens!456))) e!1456901 tp!720493))))

(declare-fun e!1456900 () Bool)

(assert (=> b!2274686 (= e!1456900 (and tp!720492 tp!720494))))

(declare-fun b!2274684 () Bool)

(declare-fun tp!720496 () Bool)

(declare-fun e!1456899 () Bool)

(assert (=> b!2274684 (= e!1456901 (and (inv!21 (value!136713 (h!32438 (t!202911 tokens!456)))) e!1456899 tp!720496))))

(assert (=> b!2274271 (= tp!720379 e!1456898)))

(declare-fun b!2274685 () Bool)

(declare-fun tp!720495 () Bool)

(assert (=> b!2274685 (= e!1456899 (and tp!720495 (inv!36607 (tag!4802 (rule!6632 (h!32438 (t!202911 tokens!456))))) (inv!36610 (transformation!4312 (rule!6632 (h!32438 (t!202911 tokens!456))))) e!1456900))))

(assert (= b!2274685 b!2274686))

(assert (= b!2274684 b!2274685))

(assert (= b!2274683 b!2274684))

(assert (= (and b!2274271 (is-Cons!27037 (t!202911 tokens!456))) b!2274683))

(declare-fun m!2703081 () Bool)

(assert (=> b!2274683 m!2703081))

(declare-fun m!2703083 () Bool)

(assert (=> b!2274684 m!2703083))

(declare-fun m!2703085 () Bool)

(assert (=> b!2274685 m!2703085))

(declare-fun m!2703087 () Bool)

(assert (=> b!2274685 m!2703087))

(declare-fun b!2274687 () Bool)

(declare-fun e!1456902 () Bool)

(declare-fun tp!720497 () Bool)

(assert (=> b!2274687 (= e!1456902 (and tp_is_empty!10541 tp!720497))))

(assert (=> b!2274294 (= tp!720385 e!1456902)))

(assert (= (and b!2274294 (is-Cons!27036 (t!202910 input!1722))) b!2274687))

(declare-fun b!2274691 () Bool)

(declare-fun e!1456903 () Bool)

(declare-fun tp!720501 () Bool)

(declare-fun tp!720500 () Bool)

(assert (=> b!2274691 (= e!1456903 (and tp!720501 tp!720500))))

(declare-fun b!2274688 () Bool)

(assert (=> b!2274688 (= e!1456903 tp_is_empty!10541)))

(declare-fun b!2274690 () Bool)

(declare-fun tp!720502 () Bool)

(assert (=> b!2274690 (= e!1456903 tp!720502)))

(assert (=> b!2274272 (= tp!720389 e!1456903)))

(declare-fun b!2274689 () Bool)

(declare-fun tp!720499 () Bool)

(declare-fun tp!720498 () Bool)

(assert (=> b!2274689 (= e!1456903 (and tp!720499 tp!720498))))

(assert (= (and b!2274272 (is-ElementMatch!6660 (regex!4312 (h!32439 rules!1750)))) b!2274688))

(assert (= (and b!2274272 (is-Concat!11135 (regex!4312 (h!32439 rules!1750)))) b!2274689))

(assert (= (and b!2274272 (is-Star!6660 (regex!4312 (h!32439 rules!1750)))) b!2274690))

(assert (= (and b!2274272 (is-Union!6660 (regex!4312 (h!32439 rules!1750)))) b!2274691))

(declare-fun b!2274695 () Bool)

(declare-fun e!1456904 () Bool)

(declare-fun tp!720506 () Bool)

(declare-fun tp!720505 () Bool)

(assert (=> b!2274695 (= e!1456904 (and tp!720506 tp!720505))))

(declare-fun b!2274692 () Bool)

(assert (=> b!2274692 (= e!1456904 tp_is_empty!10541)))

(declare-fun b!2274694 () Bool)

(declare-fun tp!720507 () Bool)

(assert (=> b!2274694 (= e!1456904 tp!720507)))

(assert (=> b!2274295 (= tp!720386 e!1456904)))

(declare-fun b!2274693 () Bool)

(declare-fun tp!720504 () Bool)

(declare-fun tp!720503 () Bool)

(assert (=> b!2274693 (= e!1456904 (and tp!720504 tp!720503))))

(assert (= (and b!2274295 (is-ElementMatch!6660 (regex!4312 otherR!12))) b!2274692))

(assert (= (and b!2274295 (is-Concat!11135 (regex!4312 otherR!12))) b!2274693))

(assert (= (and b!2274295 (is-Star!6660 (regex!4312 otherR!12))) b!2274694))

(assert (= (and b!2274295 (is-Union!6660 (regex!4312 otherR!12))) b!2274695))

(declare-fun b!2274706 () Bool)

(declare-fun b_free!67729 () Bool)

(declare-fun b_next!68433 () Bool)

(assert (=> b!2274706 (= b_free!67729 (not b_next!68433))))

(declare-fun tp!720518 () Bool)

(declare-fun b_and!179365 () Bool)

(assert (=> b!2274706 (= tp!720518 b_and!179365)))

(declare-fun b_free!67731 () Bool)

(declare-fun b_next!68435 () Bool)

(assert (=> b!2274706 (= b_free!67731 (not b_next!68435))))

(declare-fun t!202954 () Bool)

(declare-fun tb!135091 () Bool)

(assert (=> (and b!2274706 (= (toChars!5945 (transformation!4312 (h!32439 (t!202912 rules!1750)))) (toChars!5945 (transformation!4312 (rule!6632 (head!4911 tokens!456))))) t!202954) tb!135091))

(declare-fun result!164710 () Bool)

(assert (= result!164710 result!164662))

(assert (=> d!673264 t!202954))

(declare-fun t!202956 () Bool)

(declare-fun tb!135093 () Bool)

(assert (=> (and b!2274706 (= (toChars!5945 (transformation!4312 (h!32439 (t!202912 rules!1750)))) (toChars!5945 (transformation!4312 (rule!6632 (h!32438 tokens!456))))) t!202956) tb!135093))

(declare-fun result!164712 () Bool)

(assert (= result!164712 result!164690))

(assert (=> b!2274555 t!202956))

(declare-fun b_and!179367 () Bool)

(declare-fun tp!720516 () Bool)

(assert (=> b!2274706 (= tp!720516 (and (=> t!202954 result!164710) (=> t!202956 result!164712) b_and!179367))))

(declare-fun e!1456916 () Bool)

(assert (=> b!2274706 (= e!1456916 (and tp!720518 tp!720516))))

(declare-fun tp!720519 () Bool)

(declare-fun b!2274705 () Bool)

(declare-fun e!1456914 () Bool)

(assert (=> b!2274705 (= e!1456914 (and tp!720519 (inv!36607 (tag!4802 (h!32439 (t!202912 rules!1750)))) (inv!36610 (transformation!4312 (h!32439 (t!202912 rules!1750)))) e!1456916))))

(declare-fun b!2274704 () Bool)

(declare-fun e!1456915 () Bool)

(declare-fun tp!720517 () Bool)

(assert (=> b!2274704 (= e!1456915 (and e!1456914 tp!720517))))

(assert (=> b!2274297 (= tp!720395 e!1456915)))

(assert (= b!2274705 b!2274706))

(assert (= b!2274704 b!2274705))

(assert (= (and b!2274297 (is-Cons!27038 (t!202912 rules!1750))) b!2274704))

(declare-fun m!2703089 () Bool)

(assert (=> b!2274705 m!2703089))

(declare-fun m!2703091 () Bool)

(assert (=> b!2274705 m!2703091))

(declare-fun b!2274707 () Bool)

(declare-fun e!1456917 () Bool)

(declare-fun tp!720520 () Bool)

(assert (=> b!2274707 (= e!1456917 (and tp_is_empty!10541 tp!720520))))

(assert (=> b!2274275 (= tp!720384 e!1456917)))

(assert (= (and b!2274275 (is-Cons!27036 (t!202910 suffix!886))) b!2274707))

(declare-fun b_lambda!72457 () Bool)

(assert (= b_lambda!72455 (or (and b!2274292 b_free!67707 (= (toChars!5945 (transformation!4312 r!2363)) (toChars!5945 (transformation!4312 (rule!6632 (h!32438 tokens!456)))))) (and b!2274282 b_free!67703) (and b!2274277 b_free!67699 (= (toChars!5945 (transformation!4312 otherR!12)) (toChars!5945 (transformation!4312 (rule!6632 (h!32438 tokens!456)))))) (and b!2274289 b_free!67695 (= (toChars!5945 (transformation!4312 (h!32439 rules!1750))) (toChars!5945 (transformation!4312 (rule!6632 (h!32438 tokens!456)))))) (and b!2274686 b_free!67727 (= (toChars!5945 (transformation!4312 (rule!6632 (h!32438 (t!202911 tokens!456))))) (toChars!5945 (transformation!4312 (rule!6632 (h!32438 tokens!456)))))) (and b!2274706 b_free!67731 (= (toChars!5945 (transformation!4312 (h!32439 (t!202912 rules!1750)))) (toChars!5945 (transformation!4312 (rule!6632 (h!32438 tokens!456)))))) b_lambda!72457)))

(push 1)

(assert (not b_next!68435))

(assert (not d!673272))

(assert (not d!673278))

(assert (not b!2274584))

(assert (not b!2274624))

(assert (not d!673340))

(assert tp_is_empty!10541)

(assert (not b!2274535))

(assert (not b!2274684))

(assert (not b!2274555))

(assert (not b!2274632))

(assert (not d!673302))

(assert (not d!673342))

(assert (not b_next!68407))

(assert (not b!2274685))

(assert (not b!2274536))

(assert (not b!2274580))

(assert (not d!673262))

(assert (not b!2274443))

(assert (not b_next!68405))

(assert (not b!2274441))

(assert (not b_lambda!72449))

(assert (not b!2274635))

(assert (not b!2274695))

(assert (not d!673280))

(assert b_and!179359)

(assert (not b_next!68409))

(assert (not b_next!68433))

(assert b_and!179297)

(assert (not b_next!68401))

(assert (not b!2274707))

(assert (not b!2274585))

(assert b_and!179361)

(assert (not b!2274591))

(assert (not b!2274579))

(assert (not b_next!68397))

(assert (not b!2274557))

(assert (not b!2274583))

(assert (not d!673344))

(assert (not b!2274690))

(assert (not b!2274438))

(assert (not d!673314))

(assert (not b!2274667))

(assert (not b!2274637))

(assert (not b!2274687))

(assert (not d!673282))

(assert b_and!179301)

(assert (not b!2274459))

(assert (not d!673310))

(assert (not b!2274577))

(assert (not b!2274668))

(assert (not b!2274538))

(assert (not tb!135055))

(assert b_and!179355)

(assert (not b!2274442))

(assert (not b_lambda!72457))

(assert (not b!2274666))

(assert (not d!673260))

(assert (not b!2274705))

(assert (not b_next!68403))

(assert b_and!179357)

(assert (not d!673346))

(assert (not b!2274670))

(assert (not b!2274672))

(assert b_and!179363)

(assert (not b!2274548))

(assert (not b!2274704))

(assert b_and!179367)

(assert (not d!673332))

(assert (not b_next!68429))

(assert (not b!2274453))

(assert (not b!2274549))

(assert (not b_next!68411))

(assert b_and!179309)

(assert (not b!2274450))

(assert (not d!673336))

(assert (not b!2274614))

(assert (not b_next!68431))

(assert (not b!2274403))

(assert (not b!2274694))

(assert (not b!2274576))

(assert (not b!2274582))

(assert (not d!673320))

(assert (not b!2274534))

(assert (not tb!135079))

(assert (not b!2274683))

(assert (not b!2274550))

(assert (not b!2274402))

(assert (not d!673316))

(assert (not b!2274691))

(assert (not d!673326))

(assert (not b!2274665))

(assert (not b!2274436))

(assert (not b!2274638))

(assert (not b!2274693))

(assert (not d!673330))

(assert (not b!2274435))

(assert (not d!673306))

(assert (not d!673264))

(assert (not b!2274556))

(assert b_and!179353)

(assert (not bm!136248))

(assert (not b!2274671))

(assert (not b!2274689))

(assert (not b!2274533))

(assert b_and!179365)

(assert (not b!2274630))

(assert (not b!2274578))

(assert (not d!673270))

(assert (not b!2274644))

(assert (not b!2274399))

(assert (not b_next!68399))

(assert b_and!179305)

(assert (not d!673324))

(assert (not d!673328))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!68407))

(assert (not b_next!68405))

(assert (not b_next!68435))

(assert (not b_next!68397))

(assert b_and!179301)

(assert b_and!179355)

(assert b_and!179363)

(assert (not b_next!68431))

(assert b_and!179353)

(assert b_and!179365)

(assert (not b_next!68399))

(assert b_and!179305)

(assert b_and!179359)

(assert (not b_next!68409))

(assert (not b_next!68433))

(assert b_and!179297)

(assert (not b_next!68401))

(assert b_and!179361)

(assert (not b_next!68403))

(assert b_and!179357)

(assert b_and!179367)

(assert (not b_next!68429))

(assert (not b_next!68411))

(assert b_and!179309)

(check-sat)

(pop 1)

