; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!173614 () Bool)

(assert start!173614)

(declare-fun b!1757378 () Bool)

(declare-fun b_free!48551 () Bool)

(declare-fun b_next!49255 () Bool)

(assert (=> b!1757378 (= b_free!48551 (not b_next!49255))))

(declare-fun tp!499504 () Bool)

(declare-fun b_and!132111 () Bool)

(assert (=> b!1757378 (= tp!499504 b_and!132111)))

(declare-fun b_free!48553 () Bool)

(declare-fun b_next!49257 () Bool)

(assert (=> b!1757378 (= b_free!48553 (not b_next!49257))))

(declare-fun tp!499500 () Bool)

(declare-fun b_and!132113 () Bool)

(assert (=> b!1757378 (= tp!499500 b_and!132113)))

(declare-fun b!1757385 () Bool)

(declare-fun b_free!48555 () Bool)

(declare-fun b_next!49259 () Bool)

(assert (=> b!1757385 (= b_free!48555 (not b_next!49259))))

(declare-fun tp!499502 () Bool)

(declare-fun b_and!132115 () Bool)

(assert (=> b!1757385 (= tp!499502 b_and!132115)))

(declare-fun b_free!48557 () Bool)

(declare-fun b_next!49261 () Bool)

(assert (=> b!1757385 (= b_free!48557 (not b_next!49261))))

(declare-fun tp!499508 () Bool)

(declare-fun b_and!132117 () Bool)

(assert (=> b!1757385 (= tp!499508 b_and!132117)))

(declare-fun b!1757386 () Bool)

(declare-fun b_free!48559 () Bool)

(declare-fun b_next!49263 () Bool)

(assert (=> b!1757386 (= b_free!48559 (not b_next!49263))))

(declare-fun tp!499503 () Bool)

(declare-fun b_and!132119 () Bool)

(assert (=> b!1757386 (= tp!499503 b_and!132119)))

(declare-fun b_free!48561 () Bool)

(declare-fun b_next!49265 () Bool)

(assert (=> b!1757386 (= b_free!48561 (not b_next!49265))))

(declare-fun tp!499499 () Bool)

(declare-fun b_and!132121 () Bool)

(assert (=> b!1757386 (= tp!499499 b_and!132121)))

(declare-fun b!1757416 () Bool)

(declare-fun e!1124763 () Bool)

(assert (=> b!1757416 (= e!1124763 true)))

(declare-fun b!1757415 () Bool)

(declare-fun e!1124762 () Bool)

(assert (=> b!1757415 (= e!1124762 e!1124763)))

(declare-fun b!1757414 () Bool)

(declare-fun e!1124761 () Bool)

(assert (=> b!1757414 (= e!1124761 e!1124762)))

(declare-fun b!1757402 () Bool)

(assert (=> b!1757402 e!1124761))

(assert (= b!1757415 b!1757416))

(assert (= b!1757414 b!1757415))

(assert (= b!1757402 b!1757414))

(declare-datatypes ((List!19409 0))(
  ( (Nil!19339) (Cons!19339 (h!24740 (_ BitVec 16)) (t!163652 List!19409)) )
))
(declare-datatypes ((TokenValue!3545 0))(
  ( (FloatLiteralValue!7090 (text!25260 List!19409)) (TokenValueExt!3544 (__x!12392 Int)) (Broken!17725 (value!108114 List!19409)) (Object!3614) (End!3545) (Def!3545) (Underscore!3545) (Match!3545) (Else!3545) (Error!3545) (Case!3545) (If!3545) (Extends!3545) (Abstract!3545) (Class!3545) (Val!3545) (DelimiterValue!7090 (del!3605 List!19409)) (KeywordValue!3551 (value!108115 List!19409)) (CommentValue!7090 (value!108116 List!19409)) (WhitespaceValue!7090 (value!108117 List!19409)) (IndentationValue!3545 (value!108118 List!19409)) (String!22056) (Int32!3545) (Broken!17726 (value!108119 List!19409)) (Boolean!3546) (Unit!33506) (OperatorValue!3548 (op!3605 List!19409)) (IdentifierValue!7090 (value!108120 List!19409)) (IdentifierValue!7091 (value!108121 List!19409)) (WhitespaceValue!7091 (value!108122 List!19409)) (True!7090) (False!7090) (Broken!17727 (value!108123 List!19409)) (Broken!17728 (value!108124 List!19409)) (True!7091) (RightBrace!3545) (RightBracket!3545) (Colon!3545) (Null!3545) (Comma!3545) (LeftBracket!3545) (False!7091) (LeftBrace!3545) (ImaginaryLiteralValue!3545 (text!25261 List!19409)) (StringLiteralValue!10635 (value!108125 List!19409)) (EOFValue!3545 (value!108126 List!19409)) (IdentValue!3545 (value!108127 List!19409)) (DelimiterValue!7091 (value!108128 List!19409)) (DedentValue!3545 (value!108129 List!19409)) (NewLineValue!3545 (value!108130 List!19409)) (IntegerValue!10635 (value!108131 (_ BitVec 32)) (text!25262 List!19409)) (IntegerValue!10636 (value!108132 Int) (text!25263 List!19409)) (Times!3545) (Or!3545) (Equal!3545) (Minus!3545) (Broken!17729 (value!108133 List!19409)) (And!3545) (Div!3545) (LessEqual!3545) (Mod!3545) (Concat!8328) (Not!3545) (Plus!3545) (SpaceValue!3545 (value!108134 List!19409)) (IntegerValue!10637 (value!108135 Int) (text!25264 List!19409)) (StringLiteralValue!10636 (text!25265 List!19409)) (FloatLiteralValue!7091 (text!25266 List!19409)) (BytesLiteralValue!3545 (value!108136 List!19409)) (CommentValue!7091 (value!108137 List!19409)) (StringLiteralValue!10637 (value!108138 List!19409)) (ErrorTokenValue!3545 (msg!3606 List!19409)) )
))
(declare-datatypes ((C!9740 0))(
  ( (C!9741 (val!5466 Int)) )
))
(declare-datatypes ((List!19410 0))(
  ( (Nil!19340) (Cons!19340 (h!24741 C!9740) (t!163653 List!19410)) )
))
(declare-datatypes ((String!22057 0))(
  ( (String!22058 (value!108139 String)) )
))
(declare-datatypes ((Regex!4783 0))(
  ( (ElementMatch!4783 (c!286406 C!9740)) (Concat!8329 (regOne!10078 Regex!4783) (regTwo!10078 Regex!4783)) (EmptyExpr!4783) (Star!4783 (reg!5112 Regex!4783)) (EmptyLang!4783) (Union!4783 (regOne!10079 Regex!4783) (regTwo!10079 Regex!4783)) )
))
(declare-datatypes ((IArray!12871 0))(
  ( (IArray!12872 (innerList!6493 List!19410)) )
))
(declare-datatypes ((Conc!6433 0))(
  ( (Node!6433 (left!15482 Conc!6433) (right!15812 Conc!6433) (csize!13096 Int) (cheight!6644 Int)) (Leaf!9381 (xs!9309 IArray!12871) (csize!13097 Int)) (Empty!6433) )
))
(declare-datatypes ((BalanceConc!12810 0))(
  ( (BalanceConc!12811 (c!286407 Conc!6433)) )
))
(declare-datatypes ((TokenValueInjection!6750 0))(
  ( (TokenValueInjection!6751 (toValue!4974 Int) (toChars!4833 Int)) )
))
(declare-datatypes ((Rule!6710 0))(
  ( (Rule!6711 (regex!3455 Regex!4783) (tag!3815 String!22057) (isSeparator!3455 Bool) (transformation!3455 TokenValueInjection!6750)) )
))
(declare-datatypes ((Token!6476 0))(
  ( (Token!6477 (value!108140 TokenValue!3545) (rule!5469 Rule!6710) (size!15363 Int) (originalCharacters!4269 List!19410)) )
))
(declare-datatypes ((tuple2!18954 0))(
  ( (tuple2!18955 (_1!10879 Token!6476) (_2!10879 List!19410)) )
))
(declare-fun lt!678970 () tuple2!18954)

(declare-fun order!12225 () Int)

(declare-fun order!12223 () Int)

(declare-fun lambda!70052 () Int)

(declare-fun dynLambda!9283 (Int Int) Int)

(declare-fun dynLambda!9284 (Int Int) Int)

(assert (=> b!1757416 (< (dynLambda!9283 order!12223 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) (dynLambda!9284 order!12225 lambda!70052))))

(declare-fun order!12227 () Int)

(declare-fun dynLambda!9285 (Int Int) Int)

(assert (=> b!1757416 (< (dynLambda!9285 order!12227 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) (dynLambda!9284 order!12225 lambda!70052))))

(declare-fun b!1757375 () Bool)

(declare-fun e!1124734 () Bool)

(declare-fun e!1124740 () Bool)

(declare-fun tp!499497 () Bool)

(assert (=> b!1757375 (= e!1124734 (and e!1124740 tp!499497))))

(declare-fun b!1757376 () Bool)

(declare-fun res!790741 () Bool)

(declare-fun e!1124754 () Bool)

(assert (=> b!1757376 (=> (not res!790741) (not e!1124754))))

(declare-datatypes ((List!19411 0))(
  ( (Nil!19341) (Cons!19341 (h!24742 Rule!6710) (t!163654 List!19411)) )
))
(declare-fun rules!3447 () List!19411)

(declare-fun rule!422 () Rule!6710)

(declare-fun contains!3483 (List!19411 Rule!6710) Bool)

(assert (=> b!1757376 (= res!790741 (contains!3483 rules!3447 rule!422))))

(declare-fun b!1757377 () Bool)

(declare-fun res!790758 () Bool)

(declare-fun e!1124748 () Bool)

(assert (=> b!1757377 (=> res!790758 e!1124748)))

(declare-fun lt!678961 () List!19410)

(declare-fun matchR!2256 (Regex!4783 List!19410) Bool)

(assert (=> b!1757377 (= res!790758 (not (matchR!2256 (regex!3455 (rule!5469 (_1!10879 lt!678970))) lt!678961)))))

(declare-fun b!1757379 () Bool)

(declare-fun e!1124745 () Bool)

(declare-fun e!1124751 () Bool)

(assert (=> b!1757379 (= e!1124745 e!1124751)))

(declare-fun res!790755 () Bool)

(assert (=> b!1757379 (=> (not res!790755) (not e!1124751))))

(declare-fun lt!678968 () Rule!6710)

(declare-fun list!7841 (BalanceConc!12810) List!19410)

(declare-fun charsOf!2104 (Token!6476) BalanceConc!12810)

(assert (=> b!1757379 (= res!790755 (matchR!2256 (regex!3455 lt!678968) (list!7841 (charsOf!2104 (_1!10879 lt!678970)))))))

(declare-datatypes ((Option!3932 0))(
  ( (None!3931) (Some!3931 (v!25386 Rule!6710)) )
))
(declare-fun lt!678967 () Option!3932)

(declare-fun get!5877 (Option!3932) Rule!6710)

(assert (=> b!1757379 (= lt!678968 (get!5877 lt!678967))))

(declare-fun tp!499505 () Bool)

(declare-fun e!1124746 () Bool)

(declare-fun b!1757380 () Bool)

(declare-fun e!1124753 () Bool)

(declare-fun inv!25102 (String!22057) Bool)

(declare-fun inv!25107 (TokenValueInjection!6750) Bool)

(assert (=> b!1757380 (= e!1124753 (and tp!499505 (inv!25102 (tag!3815 rule!422)) (inv!25107 (transformation!3455 rule!422)) e!1124746))))

(declare-fun b!1757381 () Bool)

(declare-fun e!1124744 () Bool)

(declare-fun e!1124741 () Bool)

(assert (=> b!1757381 (= e!1124744 e!1124741)))

(declare-fun res!790749 () Bool)

(assert (=> b!1757381 (=> res!790749 e!1124741)))

(declare-datatypes ((Option!3933 0))(
  ( (None!3932) (Some!3932 (v!25387 tuple2!18954)) )
))
(declare-fun lt!678965 () Option!3933)

(declare-fun lt!678962 () BalanceConc!12810)

(declare-fun apply!5255 (TokenValueInjection!6750 BalanceConc!12810) TokenValue!3545)

(declare-fun size!15364 (BalanceConc!12810) Int)

(assert (=> b!1757381 (= res!790749 (not (= lt!678965 (Some!3932 (tuple2!18955 (Token!6477 (apply!5255 (transformation!3455 (rule!5469 (_1!10879 lt!678970))) lt!678962) (rule!5469 (_1!10879 lt!678970)) (size!15364 lt!678962) lt!678961) (_2!10879 lt!678970))))))))

(declare-datatypes ((Unit!33507 0))(
  ( (Unit!33508) )
))
(declare-fun lt!678966 () Unit!33507)

(declare-fun lemmaCharactersSize!513 (Token!6476) Unit!33507)

(assert (=> b!1757381 (= lt!678966 (lemmaCharactersSize!513 (_1!10879 lt!678970)))))

(declare-fun lt!678958 () Unit!33507)

(declare-fun lemmaEqSameImage!366 (TokenValueInjection!6750 BalanceConc!12810 BalanceConc!12810) Unit!33507)

(declare-fun seqFromList!2424 (List!19410) BalanceConc!12810)

(assert (=> b!1757381 (= lt!678958 (lemmaEqSameImage!366 (transformation!3455 (rule!5469 (_1!10879 lt!678970))) lt!678962 (seqFromList!2424 (originalCharacters!4269 (_1!10879 lt!678970)))))))

(declare-fun b!1757382 () Bool)

(declare-fun res!790748 () Bool)

(declare-fun e!1124736 () Bool)

(assert (=> b!1757382 (=> res!790748 e!1124736)))

(declare-fun suffix!1421 () List!19410)

(declare-fun isEmpty!12198 (List!19410) Bool)

(assert (=> b!1757382 (= res!790748 (isEmpty!12198 suffix!1421))))

(declare-fun b!1757383 () Bool)

(declare-fun res!790753 () Bool)

(assert (=> b!1757383 (=> (not res!790753) (not e!1124754))))

(declare-datatypes ((LexerInterface!3084 0))(
  ( (LexerInterfaceExt!3081 (__x!12393 Int)) (Lexer!3082) )
))
(declare-fun thiss!24550 () LexerInterface!3084)

(declare-fun rulesInvariant!2753 (LexerInterface!3084 List!19411) Bool)

(assert (=> b!1757383 (= res!790753 (rulesInvariant!2753 thiss!24550 rules!3447))))

(declare-fun e!1124735 () Bool)

(declare-fun tp!499506 () Bool)

(declare-fun b!1757384 () Bool)

(assert (=> b!1757384 (= e!1124740 (and tp!499506 (inv!25102 (tag!3815 (h!24742 rules!3447))) (inv!25107 (transformation!3455 (h!24742 rules!3447))) e!1124735))))

(assert (=> b!1757385 (= e!1124746 (and tp!499502 tp!499508))))

(assert (=> b!1757386 (= e!1124735 (and tp!499503 tp!499499))))

(declare-fun b!1757387 () Bool)

(assert (=> b!1757387 (= e!1124736 e!1124748)))

(declare-fun res!790761 () Bool)

(assert (=> b!1757387 (=> res!790761 e!1124748)))

(declare-fun lt!678954 () List!19410)

(declare-fun isPrefix!1695 (List!19410 List!19410) Bool)

(assert (=> b!1757387 (= res!790761 (not (isPrefix!1695 lt!678961 lt!678954)))))

(declare-fun lt!678952 () List!19410)

(assert (=> b!1757387 (isPrefix!1695 lt!678961 lt!678952)))

(declare-fun ++!5279 (List!19410 List!19410) List!19410)

(assert (=> b!1757387 (= lt!678952 (++!5279 lt!678961 (_2!10879 lt!678970)))))

(declare-fun lt!678963 () Unit!33507)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1204 (List!19410 List!19410) Unit!33507)

(assert (=> b!1757387 (= lt!678963 (lemmaConcatTwoListThenFirstIsPrefix!1204 lt!678961 (_2!10879 lt!678970)))))

(assert (=> b!1757387 (= lt!678961 (list!7841 lt!678962))))

(assert (=> b!1757387 (= lt!678962 (charsOf!2104 (_1!10879 lt!678970)))))

(assert (=> b!1757387 e!1124745))

(declare-fun res!790757 () Bool)

(assert (=> b!1757387 (=> (not res!790757) (not e!1124745))))

(declare-fun isDefined!3275 (Option!3932) Bool)

(assert (=> b!1757387 (= res!790757 (isDefined!3275 lt!678967))))

(declare-fun getRuleFromTag!503 (LexerInterface!3084 List!19411 String!22057) Option!3932)

(assert (=> b!1757387 (= lt!678967 (getRuleFromTag!503 thiss!24550 rules!3447 (tag!3815 (rule!5469 (_1!10879 lt!678970)))))))

(declare-fun lt!678969 () Unit!33507)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!503 (LexerInterface!3084 List!19411 List!19410 Token!6476) Unit!33507)

(assert (=> b!1757387 (= lt!678969 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!503 thiss!24550 rules!3447 lt!678954 (_1!10879 lt!678970)))))

(declare-fun get!5878 (Option!3933) tuple2!18954)

(assert (=> b!1757387 (= lt!678970 (get!5878 lt!678965))))

(declare-fun lt!678951 () List!19410)

(declare-fun lt!678972 () Unit!33507)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!606 (LexerInterface!3084 List!19411 List!19410 List!19410) Unit!33507)

(assert (=> b!1757387 (= lt!678972 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!606 thiss!24550 rules!3447 lt!678951 suffix!1421))))

(declare-fun maxPrefix!1638 (LexerInterface!3084 List!19411 List!19410) Option!3933)

(assert (=> b!1757387 (= lt!678965 (maxPrefix!1638 thiss!24550 rules!3447 lt!678954))))

(assert (=> b!1757387 (isPrefix!1695 lt!678951 lt!678954)))

(declare-fun lt!678956 () Unit!33507)

(assert (=> b!1757387 (= lt!678956 (lemmaConcatTwoListThenFirstIsPrefix!1204 lt!678951 suffix!1421))))

(assert (=> b!1757387 (= lt!678954 (++!5279 lt!678951 suffix!1421))))

(declare-fun b!1757388 () Bool)

(declare-fun res!790743 () Bool)

(assert (=> b!1757388 (=> res!790743 e!1124736)))

(declare-fun prefixMatch!666 (Regex!4783 List!19410) Bool)

(declare-fun rulesRegex!811 (LexerInterface!3084 List!19411) Regex!4783)

(declare-fun head!4062 (List!19410) C!9740)

(assert (=> b!1757388 (= res!790743 (prefixMatch!666 (rulesRegex!811 thiss!24550 rules!3447) (++!5279 lt!678951 (Cons!19340 (head!4062 suffix!1421) Nil!19340))))))

(declare-fun e!1124739 () Bool)

(declare-fun token!523 () Token!6476)

(declare-fun tp!499501 () Bool)

(declare-fun b!1757389 () Bool)

(declare-fun e!1124738 () Bool)

(assert (=> b!1757389 (= e!1124738 (and tp!499501 (inv!25102 (tag!3815 (rule!5469 token!523))) (inv!25107 (transformation!3455 (rule!5469 token!523))) e!1124739))))

(declare-fun e!1124749 () Bool)

(declare-fun tp!499507 () Bool)

(declare-fun b!1757390 () Bool)

(declare-fun inv!21 (TokenValue!3545) Bool)

(assert (=> b!1757390 (= e!1124749 (and (inv!21 (value!108140 token!523)) e!1124738 tp!499507))))

(declare-fun b!1757391 () Bool)

(declare-fun res!790744 () Bool)

(declare-fun e!1124743 () Bool)

(assert (=> b!1757391 (=> (not res!790744) (not e!1124743))))

(assert (=> b!1757391 (= res!790744 (= (rule!5469 token!523) rule!422))))

(declare-fun b!1757392 () Bool)

(declare-fun res!790747 () Bool)

(assert (=> b!1757392 (=> res!790747 e!1124744)))

(declare-fun dynLambda!9286 (Int TokenValue!3545) BalanceConc!12810)

(assert (=> b!1757392 (= res!790747 (not (= lt!678962 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (value!108140 (_1!10879 lt!678970))))))))

(declare-fun b!1757393 () Bool)

(declare-fun e!1124747 () Bool)

(assert (=> b!1757393 (= e!1124747 e!1124743)))

(declare-fun res!790750 () Bool)

(assert (=> b!1757393 (=> (not res!790750) (not e!1124743))))

(declare-fun lt!678955 () tuple2!18954)

(assert (=> b!1757393 (= res!790750 (= (_1!10879 lt!678955) token!523))))

(declare-fun lt!678964 () Option!3933)

(assert (=> b!1757393 (= lt!678955 (get!5878 lt!678964))))

(declare-fun b!1757394 () Bool)

(assert (=> b!1757394 (= e!1124751 (= (rule!5469 (_1!10879 lt!678970)) lt!678968))))

(assert (=> b!1757378 (= e!1124739 (and tp!499504 tp!499500))))

(declare-fun res!790762 () Bool)

(assert (=> start!173614 (=> (not res!790762) (not e!1124754))))

(get-info :version)

(assert (=> start!173614 (= res!790762 ((_ is Lexer!3082) thiss!24550))))

(assert (=> start!173614 e!1124754))

(declare-fun e!1124752 () Bool)

(assert (=> start!173614 e!1124752))

(assert (=> start!173614 e!1124753))

(assert (=> start!173614 true))

(declare-fun inv!25108 (Token!6476) Bool)

(assert (=> start!173614 (and (inv!25108 token!523) e!1124749)))

(assert (=> start!173614 e!1124734))

(declare-fun b!1757395 () Bool)

(declare-fun res!790745 () Bool)

(assert (=> b!1757395 (=> res!790745 e!1124741)))

(assert (=> b!1757395 (= res!790745 (not (contains!3483 rules!3447 (rule!5469 (_1!10879 lt!678970)))))))

(declare-fun b!1757396 () Bool)

(declare-fun res!790760 () Bool)

(assert (=> b!1757396 (=> (not res!790760) (not e!1124743))))

(assert (=> b!1757396 (= res!790760 (isEmpty!12198 (_2!10879 lt!678955)))))

(declare-fun b!1757397 () Bool)

(declare-fun lt!678953 () BalanceConc!12810)

(declare-fun size!15365 (List!19410) Int)

(assert (=> b!1757397 (= e!1124741 (= lt!678965 (Some!3932 (tuple2!18955 (Token!6477 (apply!5255 (transformation!3455 (rule!5469 (_1!10879 lt!678970))) lt!678953) (rule!5469 (_1!10879 lt!678970)) (size!15365 lt!678961) lt!678961) (_2!10879 lt!678970)))))))

(declare-fun lt!678960 () Unit!33507)

(declare-fun lemmaSemiInverse!593 (TokenValueInjection!6750 BalanceConc!12810) Unit!33507)

(assert (=> b!1757397 (= lt!678960 (lemmaSemiInverse!593 (transformation!3455 (rule!5469 (_1!10879 lt!678970))) lt!678953))))

(assert (=> b!1757397 (= lt!678953 (seqFromList!2424 lt!678961))))

(declare-fun b!1757398 () Bool)

(declare-fun res!790742 () Bool)

(assert (=> b!1757398 (=> res!790742 e!1124741)))

(assert (=> b!1757398 (= res!790742 (isEmpty!12198 lt!678961))))

(declare-fun b!1757399 () Bool)

(declare-fun res!790756 () Bool)

(assert (=> b!1757399 (=> (not res!790756) (not e!1124754))))

(declare-fun isEmpty!12199 (List!19411) Bool)

(assert (=> b!1757399 (= res!790756 (not (isEmpty!12199 rules!3447)))))

(declare-fun b!1757400 () Bool)

(declare-fun tp_is_empty!7809 () Bool)

(declare-fun tp!499498 () Bool)

(assert (=> b!1757400 (= e!1124752 (and tp_is_empty!7809 tp!499498))))

(declare-fun b!1757401 () Bool)

(declare-fun res!790751 () Bool)

(assert (=> b!1757401 (=> res!790751 e!1124741)))

(assert (=> b!1757401 (= res!790751 (not (= lt!678954 lt!678952)))))

(declare-fun e!1124737 () Bool)

(assert (=> b!1757402 (= e!1124748 e!1124737)))

(declare-fun res!790746 () Bool)

(assert (=> b!1757402 (=> res!790746 e!1124737)))

(declare-fun Forall!822 (Int) Bool)

(assert (=> b!1757402 (= res!790746 (not (Forall!822 lambda!70052)))))

(declare-fun lt!678971 () Unit!33507)

(declare-fun lemmaInv!654 (TokenValueInjection!6750) Unit!33507)

(assert (=> b!1757402 (= lt!678971 (lemmaInv!654 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))))))

(declare-fun b!1757403 () Bool)

(assert (=> b!1757403 (= e!1124754 e!1124747)))

(declare-fun res!790754 () Bool)

(assert (=> b!1757403 (=> (not res!790754) (not e!1124747))))

(declare-fun isDefined!3276 (Option!3933) Bool)

(assert (=> b!1757403 (= res!790754 (isDefined!3276 lt!678964))))

(assert (=> b!1757403 (= lt!678964 (maxPrefix!1638 thiss!24550 rules!3447 lt!678951))))

(assert (=> b!1757403 (= lt!678951 (list!7841 (charsOf!2104 token!523)))))

(declare-fun b!1757404 () Bool)

(assert (=> b!1757404 (= e!1124743 (not e!1124736))))

(declare-fun res!790759 () Bool)

(assert (=> b!1757404 (=> res!790759 e!1124736)))

(assert (=> b!1757404 (= res!790759 (not (matchR!2256 (regex!3455 rule!422) lt!678951)))))

(declare-fun ruleValid!953 (LexerInterface!3084 Rule!6710) Bool)

(assert (=> b!1757404 (ruleValid!953 thiss!24550 rule!422)))

(declare-fun lt!678959 () Unit!33507)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!476 (LexerInterface!3084 Rule!6710 List!19411) Unit!33507)

(assert (=> b!1757404 (= lt!678959 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!476 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1757405 () Bool)

(assert (=> b!1757405 (= e!1124737 e!1124744)))

(declare-fun res!790752 () Bool)

(assert (=> b!1757405 (=> res!790752 e!1124744)))

(declare-fun dynLambda!9287 (Int BalanceConc!12810) TokenValue!3545)

(assert (=> b!1757405 (= res!790752 (not (= (list!7841 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962))) lt!678961)))))

(declare-fun lt!678957 () Unit!33507)

(assert (=> b!1757405 (= lt!678957 (lemmaSemiInverse!593 (transformation!3455 (rule!5469 (_1!10879 lt!678970))) lt!678962))))

(assert (= (and start!173614 res!790762) b!1757399))

(assert (= (and b!1757399 res!790756) b!1757383))

(assert (= (and b!1757383 res!790753) b!1757376))

(assert (= (and b!1757376 res!790741) b!1757403))

(assert (= (and b!1757403 res!790754) b!1757393))

(assert (= (and b!1757393 res!790750) b!1757396))

(assert (= (and b!1757396 res!790760) b!1757391))

(assert (= (and b!1757391 res!790744) b!1757404))

(assert (= (and b!1757404 (not res!790759)) b!1757382))

(assert (= (and b!1757382 (not res!790748)) b!1757388))

(assert (= (and b!1757388 (not res!790743)) b!1757387))

(assert (= (and b!1757387 res!790757) b!1757379))

(assert (= (and b!1757379 res!790755) b!1757394))

(assert (= (and b!1757387 (not res!790761)) b!1757377))

(assert (= (and b!1757377 (not res!790758)) b!1757402))

(assert (= (and b!1757402 (not res!790746)) b!1757405))

(assert (= (and b!1757405 (not res!790752)) b!1757392))

(assert (= (and b!1757392 (not res!790747)) b!1757381))

(assert (= (and b!1757381 (not res!790749)) b!1757395))

(assert (= (and b!1757395 (not res!790745)) b!1757401))

(assert (= (and b!1757401 (not res!790751)) b!1757398))

(assert (= (and b!1757398 (not res!790742)) b!1757397))

(assert (= (and start!173614 ((_ is Cons!19340) suffix!1421)) b!1757400))

(assert (= b!1757380 b!1757385))

(assert (= start!173614 b!1757380))

(assert (= b!1757389 b!1757378))

(assert (= b!1757390 b!1757389))

(assert (= start!173614 b!1757390))

(assert (= b!1757384 b!1757386))

(assert (= b!1757375 b!1757384))

(assert (= (and start!173614 ((_ is Cons!19341) rules!3447)) b!1757375))

(declare-fun b_lambda!56719 () Bool)

(assert (=> (not b_lambda!56719) (not b!1757392)))

(declare-fun t!163635 () Bool)

(declare-fun tb!105647 () Bool)

(assert (=> (and b!1757378 (= (toChars!4833 (transformation!3455 (rule!5469 token!523))) (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163635) tb!105647))

(declare-fun b!1757421 () Bool)

(declare-fun e!1124766 () Bool)

(declare-fun tp!499511 () Bool)

(declare-fun inv!25109 (Conc!6433) Bool)

(assert (=> b!1757421 (= e!1124766 (and (inv!25109 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (value!108140 (_1!10879 lt!678970))))) tp!499511))))

(declare-fun result!127106 () Bool)

(declare-fun inv!25110 (BalanceConc!12810) Bool)

(assert (=> tb!105647 (= result!127106 (and (inv!25110 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (value!108140 (_1!10879 lt!678970)))) e!1124766))))

(assert (= tb!105647 b!1757421))

(declare-fun m!2172351 () Bool)

(assert (=> b!1757421 m!2172351))

(declare-fun m!2172353 () Bool)

(assert (=> tb!105647 m!2172353))

(assert (=> b!1757392 t!163635))

(declare-fun b_and!132123 () Bool)

(assert (= b_and!132113 (and (=> t!163635 result!127106) b_and!132123)))

(declare-fun tb!105649 () Bool)

(declare-fun t!163637 () Bool)

(assert (=> (and b!1757385 (= (toChars!4833 (transformation!3455 rule!422)) (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163637) tb!105649))

(declare-fun result!127110 () Bool)

(assert (= result!127110 result!127106))

(assert (=> b!1757392 t!163637))

(declare-fun b_and!132125 () Bool)

(assert (= b_and!132117 (and (=> t!163637 result!127110) b_and!132125)))

(declare-fun t!163639 () Bool)

(declare-fun tb!105651 () Bool)

(assert (=> (and b!1757386 (= (toChars!4833 (transformation!3455 (h!24742 rules!3447))) (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163639) tb!105651))

(declare-fun result!127112 () Bool)

(assert (= result!127112 result!127106))

(assert (=> b!1757392 t!163639))

(declare-fun b_and!132127 () Bool)

(assert (= b_and!132121 (and (=> t!163639 result!127112) b_and!132127)))

(declare-fun b_lambda!56721 () Bool)

(assert (=> (not b_lambda!56721) (not b!1757405)))

(declare-fun t!163641 () Bool)

(declare-fun tb!105653 () Bool)

(assert (=> (and b!1757378 (= (toChars!4833 (transformation!3455 (rule!5469 token!523))) (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163641) tb!105653))

(declare-fun b!1757422 () Bool)

(declare-fun e!1124767 () Bool)

(declare-fun tp!499512 () Bool)

(assert (=> b!1757422 (= e!1124767 (and (inv!25109 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962)))) tp!499512))))

(declare-fun result!127114 () Bool)

(assert (=> tb!105653 (= result!127114 (and (inv!25110 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962))) e!1124767))))

(assert (= tb!105653 b!1757422))

(declare-fun m!2172355 () Bool)

(assert (=> b!1757422 m!2172355))

(declare-fun m!2172357 () Bool)

(assert (=> tb!105653 m!2172357))

(assert (=> b!1757405 t!163641))

(declare-fun b_and!132129 () Bool)

(assert (= b_and!132123 (and (=> t!163641 result!127114) b_and!132129)))

(declare-fun t!163643 () Bool)

(declare-fun tb!105655 () Bool)

(assert (=> (and b!1757385 (= (toChars!4833 (transformation!3455 rule!422)) (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163643) tb!105655))

(declare-fun result!127116 () Bool)

(assert (= result!127116 result!127114))

(assert (=> b!1757405 t!163643))

(declare-fun b_and!132131 () Bool)

(assert (= b_and!132125 (and (=> t!163643 result!127116) b_and!132131)))

(declare-fun t!163645 () Bool)

(declare-fun tb!105657 () Bool)

(assert (=> (and b!1757386 (= (toChars!4833 (transformation!3455 (h!24742 rules!3447))) (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163645) tb!105657))

(declare-fun result!127118 () Bool)

(assert (= result!127118 result!127114))

(assert (=> b!1757405 t!163645))

(declare-fun b_and!132133 () Bool)

(assert (= b_and!132127 (and (=> t!163645 result!127118) b_and!132133)))

(declare-fun b_lambda!56723 () Bool)

(assert (=> (not b_lambda!56723) (not b!1757405)))

(declare-fun tb!105659 () Bool)

(declare-fun t!163647 () Bool)

(assert (=> (and b!1757378 (= (toValue!4974 (transformation!3455 (rule!5469 token!523))) (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163647) tb!105659))

(declare-fun result!127120 () Bool)

(assert (=> tb!105659 (= result!127120 (inv!21 (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962)))))

(declare-fun m!2172359 () Bool)

(assert (=> tb!105659 m!2172359))

(assert (=> b!1757405 t!163647))

(declare-fun b_and!132135 () Bool)

(assert (= b_and!132111 (and (=> t!163647 result!127120) b_and!132135)))

(declare-fun t!163649 () Bool)

(declare-fun tb!105661 () Bool)

(assert (=> (and b!1757385 (= (toValue!4974 (transformation!3455 rule!422)) (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163649) tb!105661))

(declare-fun result!127124 () Bool)

(assert (= result!127124 result!127120))

(assert (=> b!1757405 t!163649))

(declare-fun b_and!132137 () Bool)

(assert (= b_and!132115 (and (=> t!163649 result!127124) b_and!132137)))

(declare-fun tb!105663 () Bool)

(declare-fun t!163651 () Bool)

(assert (=> (and b!1757386 (= (toValue!4974 (transformation!3455 (h!24742 rules!3447))) (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163651) tb!105663))

(declare-fun result!127126 () Bool)

(assert (= result!127126 result!127120))

(assert (=> b!1757405 t!163651))

(declare-fun b_and!132139 () Bool)

(assert (= b_and!132119 (and (=> t!163651 result!127126) b_and!132139)))

(declare-fun m!2172361 () Bool)

(assert (=> b!1757403 m!2172361))

(declare-fun m!2172363 () Bool)

(assert (=> b!1757403 m!2172363))

(declare-fun m!2172365 () Bool)

(assert (=> b!1757403 m!2172365))

(assert (=> b!1757403 m!2172365))

(declare-fun m!2172367 () Bool)

(assert (=> b!1757403 m!2172367))

(declare-fun m!2172369 () Bool)

(assert (=> b!1757383 m!2172369))

(declare-fun m!2172371 () Bool)

(assert (=> b!1757384 m!2172371))

(declare-fun m!2172373 () Bool)

(assert (=> b!1757384 m!2172373))

(declare-fun m!2172375 () Bool)

(assert (=> b!1757393 m!2172375))

(declare-fun m!2172377 () Bool)

(assert (=> b!1757397 m!2172377))

(declare-fun m!2172379 () Bool)

(assert (=> b!1757397 m!2172379))

(declare-fun m!2172381 () Bool)

(assert (=> b!1757397 m!2172381))

(declare-fun m!2172383 () Bool)

(assert (=> b!1757397 m!2172383))

(declare-fun m!2172385 () Bool)

(assert (=> b!1757380 m!2172385))

(declare-fun m!2172387 () Bool)

(assert (=> b!1757380 m!2172387))

(declare-fun m!2172389 () Bool)

(assert (=> b!1757388 m!2172389))

(declare-fun m!2172391 () Bool)

(assert (=> b!1757388 m!2172391))

(declare-fun m!2172393 () Bool)

(assert (=> b!1757388 m!2172393))

(assert (=> b!1757388 m!2172389))

(assert (=> b!1757388 m!2172393))

(declare-fun m!2172395 () Bool)

(assert (=> b!1757388 m!2172395))

(declare-fun m!2172397 () Bool)

(assert (=> b!1757405 m!2172397))

(assert (=> b!1757405 m!2172397))

(declare-fun m!2172399 () Bool)

(assert (=> b!1757405 m!2172399))

(assert (=> b!1757405 m!2172399))

(declare-fun m!2172401 () Bool)

(assert (=> b!1757405 m!2172401))

(declare-fun m!2172403 () Bool)

(assert (=> b!1757405 m!2172403))

(declare-fun m!2172405 () Bool)

(assert (=> b!1757399 m!2172405))

(declare-fun m!2172407 () Bool)

(assert (=> b!1757390 m!2172407))

(declare-fun m!2172409 () Bool)

(assert (=> b!1757395 m!2172409))

(declare-fun m!2172411 () Bool)

(assert (=> b!1757392 m!2172411))

(declare-fun m!2172413 () Bool)

(assert (=> b!1757398 m!2172413))

(declare-fun m!2172415 () Bool)

(assert (=> b!1757377 m!2172415))

(declare-fun m!2172417 () Bool)

(assert (=> b!1757382 m!2172417))

(declare-fun m!2172419 () Bool)

(assert (=> b!1757381 m!2172419))

(declare-fun m!2172421 () Bool)

(assert (=> b!1757381 m!2172421))

(declare-fun m!2172423 () Bool)

(assert (=> b!1757381 m!2172423))

(declare-fun m!2172425 () Bool)

(assert (=> b!1757381 m!2172425))

(declare-fun m!2172427 () Bool)

(assert (=> b!1757381 m!2172427))

(assert (=> b!1757381 m!2172425))

(declare-fun m!2172429 () Bool)

(assert (=> start!173614 m!2172429))

(declare-fun m!2172431 () Bool)

(assert (=> b!1757379 m!2172431))

(assert (=> b!1757379 m!2172431))

(declare-fun m!2172433 () Bool)

(assert (=> b!1757379 m!2172433))

(assert (=> b!1757379 m!2172433))

(declare-fun m!2172435 () Bool)

(assert (=> b!1757379 m!2172435))

(declare-fun m!2172437 () Bool)

(assert (=> b!1757379 m!2172437))

(declare-fun m!2172439 () Bool)

(assert (=> b!1757404 m!2172439))

(declare-fun m!2172441 () Bool)

(assert (=> b!1757404 m!2172441))

(declare-fun m!2172443 () Bool)

(assert (=> b!1757404 m!2172443))

(declare-fun m!2172445 () Bool)

(assert (=> b!1757389 m!2172445))

(declare-fun m!2172447 () Bool)

(assert (=> b!1757389 m!2172447))

(declare-fun m!2172449 () Bool)

(assert (=> b!1757387 m!2172449))

(declare-fun m!2172451 () Bool)

(assert (=> b!1757387 m!2172451))

(declare-fun m!2172453 () Bool)

(assert (=> b!1757387 m!2172453))

(declare-fun m!2172455 () Bool)

(assert (=> b!1757387 m!2172455))

(declare-fun m!2172457 () Bool)

(assert (=> b!1757387 m!2172457))

(declare-fun m!2172459 () Bool)

(assert (=> b!1757387 m!2172459))

(declare-fun m!2172461 () Bool)

(assert (=> b!1757387 m!2172461))

(declare-fun m!2172463 () Bool)

(assert (=> b!1757387 m!2172463))

(declare-fun m!2172465 () Bool)

(assert (=> b!1757387 m!2172465))

(declare-fun m!2172467 () Bool)

(assert (=> b!1757387 m!2172467))

(declare-fun m!2172469 () Bool)

(assert (=> b!1757387 m!2172469))

(declare-fun m!2172471 () Bool)

(assert (=> b!1757387 m!2172471))

(declare-fun m!2172473 () Bool)

(assert (=> b!1757387 m!2172473))

(assert (=> b!1757387 m!2172431))

(declare-fun m!2172475 () Bool)

(assert (=> b!1757387 m!2172475))

(declare-fun m!2172477 () Bool)

(assert (=> b!1757396 m!2172477))

(declare-fun m!2172479 () Bool)

(assert (=> b!1757402 m!2172479))

(declare-fun m!2172481 () Bool)

(assert (=> b!1757402 m!2172481))

(declare-fun m!2172483 () Bool)

(assert (=> b!1757376 m!2172483))

(check-sat b_and!132131 (not b!1757400) (not b!1757397) (not b!1757384) (not b_next!49257) (not tb!105659) (not b!1757380) (not b!1757405) (not b!1757388) (not b!1757377) (not b!1757402) (not b!1757404) (not b!1757395) b_and!132135 (not b_lambda!56721) (not b!1757399) (not b!1757381) (not b!1757383) (not b!1757403) (not b_next!49265) (not b!1757390) (not b!1757382) (not b!1757379) (not b!1757387) (not b!1757421) b_and!132137 b_and!132129 (not b_next!49259) (not b!1757393) b_and!132133 (not b!1757398) (not b!1757389) (not b!1757422) (not b_next!49255) (not b!1757396) b_and!132139 (not tb!105647) (not b_next!49263) (not b_lambda!56719) (not b_lambda!56723) (not b!1757376) (not tb!105653) (not b!1757375) tp_is_empty!7809 (not b_next!49261) (not start!173614))
(check-sat b_and!132131 b_and!132135 (not b_next!49265) (not b_next!49257) (not b_next!49259) b_and!132133 (not b_next!49255) b_and!132139 (not b_next!49263) (not b_next!49261) b_and!132137 b_and!132129)
(get-model)

(declare-fun b!1757493 () Bool)

(declare-fun res!790798 () Bool)

(declare-fun e!1124821 () Bool)

(assert (=> b!1757493 (=> res!790798 e!1124821)))

(assert (=> b!1757493 (= res!790798 (not ((_ is ElementMatch!4783) (regex!3455 lt!678968))))))

(declare-fun e!1124818 () Bool)

(assert (=> b!1757493 (= e!1124818 e!1124821)))

(declare-fun b!1757494 () Bool)

(declare-fun e!1124815 () Bool)

(declare-fun lt!678984 () Bool)

(declare-fun call!110577 () Bool)

(assert (=> b!1757494 (= e!1124815 (= lt!678984 call!110577))))

(declare-fun b!1757495 () Bool)

(declare-fun res!790802 () Bool)

(declare-fun e!1124819 () Bool)

(assert (=> b!1757495 (=> res!790802 e!1124819)))

(declare-fun tail!2627 (List!19410) List!19410)

(assert (=> b!1757495 (= res!790802 (not (isEmpty!12198 (tail!2627 (list!7841 (charsOf!2104 (_1!10879 lt!678970)))))))))

(declare-fun b!1757496 () Bool)

(declare-fun e!1124816 () Bool)

(assert (=> b!1757496 (= e!1124816 e!1124819)))

(declare-fun res!790801 () Bool)

(assert (=> b!1757496 (=> res!790801 e!1124819)))

(assert (=> b!1757496 (= res!790801 call!110577)))

(declare-fun b!1757497 () Bool)

(declare-fun e!1124817 () Bool)

(assert (=> b!1757497 (= e!1124817 (= (head!4062 (list!7841 (charsOf!2104 (_1!10879 lt!678970)))) (c!286406 (regex!3455 lt!678968))))))

(declare-fun b!1757498 () Bool)

(assert (=> b!1757498 (= e!1124818 (not lt!678984))))

(declare-fun b!1757499 () Bool)

(declare-fun res!790799 () Bool)

(assert (=> b!1757499 (=> res!790799 e!1124821)))

(assert (=> b!1757499 (= res!790799 e!1124817)))

(declare-fun res!790796 () Bool)

(assert (=> b!1757499 (=> (not res!790796) (not e!1124817))))

(assert (=> b!1757499 (= res!790796 lt!678984)))

(declare-fun bm!110572 () Bool)

(assert (=> bm!110572 (= call!110577 (isEmpty!12198 (list!7841 (charsOf!2104 (_1!10879 lt!678970)))))))

(declare-fun b!1757500 () Bool)

(declare-fun res!790800 () Bool)

(assert (=> b!1757500 (=> (not res!790800) (not e!1124817))))

(assert (=> b!1757500 (= res!790800 (not call!110577))))

(declare-fun b!1757501 () Bool)

(declare-fun e!1124820 () Bool)

(declare-fun nullable!1454 (Regex!4783) Bool)

(assert (=> b!1757501 (= e!1124820 (nullable!1454 (regex!3455 lt!678968)))))

(declare-fun b!1757503 () Bool)

(declare-fun res!790803 () Bool)

(assert (=> b!1757503 (=> (not res!790803) (not e!1124817))))

(assert (=> b!1757503 (= res!790803 (isEmpty!12198 (tail!2627 (list!7841 (charsOf!2104 (_1!10879 lt!678970))))))))

(declare-fun b!1757504 () Bool)

(assert (=> b!1757504 (= e!1124815 e!1124818)))

(declare-fun c!286425 () Bool)

(assert (=> b!1757504 (= c!286425 ((_ is EmptyLang!4783) (regex!3455 lt!678968)))))

(declare-fun b!1757505 () Bool)

(declare-fun derivativeStep!1223 (Regex!4783 C!9740) Regex!4783)

(assert (=> b!1757505 (= e!1124820 (matchR!2256 (derivativeStep!1223 (regex!3455 lt!678968) (head!4062 (list!7841 (charsOf!2104 (_1!10879 lt!678970))))) (tail!2627 (list!7841 (charsOf!2104 (_1!10879 lt!678970))))))))

(declare-fun b!1757506 () Bool)

(assert (=> b!1757506 (= e!1124819 (not (= (head!4062 (list!7841 (charsOf!2104 (_1!10879 lt!678970)))) (c!286406 (regex!3455 lt!678968)))))))

(declare-fun b!1757502 () Bool)

(assert (=> b!1757502 (= e!1124821 e!1124816)))

(declare-fun res!790797 () Bool)

(assert (=> b!1757502 (=> (not res!790797) (not e!1124816))))

(assert (=> b!1757502 (= res!790797 (not lt!678984))))

(declare-fun d!536798 () Bool)

(assert (=> d!536798 e!1124815))

(declare-fun c!286424 () Bool)

(assert (=> d!536798 (= c!286424 ((_ is EmptyExpr!4783) (regex!3455 lt!678968)))))

(assert (=> d!536798 (= lt!678984 e!1124820)))

(declare-fun c!286423 () Bool)

(assert (=> d!536798 (= c!286423 (isEmpty!12198 (list!7841 (charsOf!2104 (_1!10879 lt!678970)))))))

(declare-fun validRegex!1928 (Regex!4783) Bool)

(assert (=> d!536798 (validRegex!1928 (regex!3455 lt!678968))))

(assert (=> d!536798 (= (matchR!2256 (regex!3455 lt!678968) (list!7841 (charsOf!2104 (_1!10879 lt!678970)))) lt!678984)))

(assert (= (and d!536798 c!286423) b!1757501))

(assert (= (and d!536798 (not c!286423)) b!1757505))

(assert (= (and d!536798 c!286424) b!1757494))

(assert (= (and d!536798 (not c!286424)) b!1757504))

(assert (= (and b!1757504 c!286425) b!1757498))

(assert (= (and b!1757504 (not c!286425)) b!1757493))

(assert (= (and b!1757493 (not res!790798)) b!1757499))

(assert (= (and b!1757499 res!790796) b!1757500))

(assert (= (and b!1757500 res!790800) b!1757503))

(assert (= (and b!1757503 res!790803) b!1757497))

(assert (= (and b!1757499 (not res!790799)) b!1757502))

(assert (= (and b!1757502 res!790797) b!1757496))

(assert (= (and b!1757496 (not res!790801)) b!1757495))

(assert (= (and b!1757495 (not res!790802)) b!1757506))

(assert (= (or b!1757494 b!1757496 b!1757500) bm!110572))

(assert (=> b!1757506 m!2172433))

(declare-fun m!2172523 () Bool)

(assert (=> b!1757506 m!2172523))

(assert (=> b!1757505 m!2172433))

(assert (=> b!1757505 m!2172523))

(assert (=> b!1757505 m!2172523))

(declare-fun m!2172525 () Bool)

(assert (=> b!1757505 m!2172525))

(assert (=> b!1757505 m!2172433))

(declare-fun m!2172527 () Bool)

(assert (=> b!1757505 m!2172527))

(assert (=> b!1757505 m!2172525))

(assert (=> b!1757505 m!2172527))

(declare-fun m!2172529 () Bool)

(assert (=> b!1757505 m!2172529))

(assert (=> b!1757503 m!2172433))

(assert (=> b!1757503 m!2172527))

(assert (=> b!1757503 m!2172527))

(declare-fun m!2172531 () Bool)

(assert (=> b!1757503 m!2172531))

(assert (=> b!1757497 m!2172433))

(assert (=> b!1757497 m!2172523))

(assert (=> d!536798 m!2172433))

(declare-fun m!2172533 () Bool)

(assert (=> d!536798 m!2172533))

(declare-fun m!2172535 () Bool)

(assert (=> d!536798 m!2172535))

(assert (=> b!1757495 m!2172433))

(assert (=> b!1757495 m!2172527))

(assert (=> b!1757495 m!2172527))

(assert (=> b!1757495 m!2172531))

(assert (=> bm!110572 m!2172433))

(assert (=> bm!110572 m!2172533))

(declare-fun m!2172537 () Bool)

(assert (=> b!1757501 m!2172537))

(assert (=> b!1757379 d!536798))

(declare-fun d!536816 () Bool)

(declare-fun list!7842 (Conc!6433) List!19410)

(assert (=> d!536816 (= (list!7841 (charsOf!2104 (_1!10879 lt!678970))) (list!7842 (c!286407 (charsOf!2104 (_1!10879 lt!678970)))))))

(declare-fun bs!403884 () Bool)

(assert (= bs!403884 d!536816))

(declare-fun m!2172539 () Bool)

(assert (=> bs!403884 m!2172539))

(assert (=> b!1757379 d!536816))

(declare-fun d!536818 () Bool)

(declare-fun lt!678987 () BalanceConc!12810)

(assert (=> d!536818 (= (list!7841 lt!678987) (originalCharacters!4269 (_1!10879 lt!678970)))))

(assert (=> d!536818 (= lt!678987 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (value!108140 (_1!10879 lt!678970))))))

(assert (=> d!536818 (= (charsOf!2104 (_1!10879 lt!678970)) lt!678987)))

(declare-fun b_lambda!56731 () Bool)

(assert (=> (not b_lambda!56731) (not d!536818)))

(assert (=> d!536818 t!163635))

(declare-fun b_and!132159 () Bool)

(assert (= b_and!132129 (and (=> t!163635 result!127106) b_and!132159)))

(assert (=> d!536818 t!163637))

(declare-fun b_and!132161 () Bool)

(assert (= b_and!132131 (and (=> t!163637 result!127110) b_and!132161)))

(assert (=> d!536818 t!163639))

(declare-fun b_and!132163 () Bool)

(assert (= b_and!132133 (and (=> t!163639 result!127112) b_and!132163)))

(declare-fun m!2172541 () Bool)

(assert (=> d!536818 m!2172541))

(assert (=> d!536818 m!2172411))

(assert (=> b!1757379 d!536818))

(declare-fun d!536820 () Bool)

(assert (=> d!536820 (= (get!5877 lt!678967) (v!25386 lt!678967))))

(assert (=> b!1757379 d!536820))

(declare-fun d!536822 () Bool)

(assert (=> d!536822 (= (isEmpty!12199 rules!3447) ((_ is Nil!19341) rules!3447))))

(assert (=> b!1757399 d!536822))

(declare-fun b!1757507 () Bool)

(declare-fun res!790806 () Bool)

(declare-fun e!1124828 () Bool)

(assert (=> b!1757507 (=> res!790806 e!1124828)))

(assert (=> b!1757507 (= res!790806 (not ((_ is ElementMatch!4783) (regex!3455 (rule!5469 (_1!10879 lt!678970))))))))

(declare-fun e!1124825 () Bool)

(assert (=> b!1757507 (= e!1124825 e!1124828)))

(declare-fun b!1757508 () Bool)

(declare-fun e!1124822 () Bool)

(declare-fun lt!678988 () Bool)

(declare-fun call!110578 () Bool)

(assert (=> b!1757508 (= e!1124822 (= lt!678988 call!110578))))

(declare-fun b!1757509 () Bool)

(declare-fun res!790810 () Bool)

(declare-fun e!1124826 () Bool)

(assert (=> b!1757509 (=> res!790810 e!1124826)))

(assert (=> b!1757509 (= res!790810 (not (isEmpty!12198 (tail!2627 lt!678961))))))

(declare-fun b!1757510 () Bool)

(declare-fun e!1124823 () Bool)

(assert (=> b!1757510 (= e!1124823 e!1124826)))

(declare-fun res!790809 () Bool)

(assert (=> b!1757510 (=> res!790809 e!1124826)))

(assert (=> b!1757510 (= res!790809 call!110578)))

(declare-fun b!1757511 () Bool)

(declare-fun e!1124824 () Bool)

(assert (=> b!1757511 (= e!1124824 (= (head!4062 lt!678961) (c!286406 (regex!3455 (rule!5469 (_1!10879 lt!678970))))))))

(declare-fun b!1757512 () Bool)

(assert (=> b!1757512 (= e!1124825 (not lt!678988))))

(declare-fun b!1757513 () Bool)

(declare-fun res!790807 () Bool)

(assert (=> b!1757513 (=> res!790807 e!1124828)))

(assert (=> b!1757513 (= res!790807 e!1124824)))

(declare-fun res!790804 () Bool)

(assert (=> b!1757513 (=> (not res!790804) (not e!1124824))))

(assert (=> b!1757513 (= res!790804 lt!678988)))

(declare-fun bm!110573 () Bool)

(assert (=> bm!110573 (= call!110578 (isEmpty!12198 lt!678961))))

(declare-fun b!1757514 () Bool)

(declare-fun res!790808 () Bool)

(assert (=> b!1757514 (=> (not res!790808) (not e!1124824))))

(assert (=> b!1757514 (= res!790808 (not call!110578))))

(declare-fun b!1757515 () Bool)

(declare-fun e!1124827 () Bool)

(assert (=> b!1757515 (= e!1124827 (nullable!1454 (regex!3455 (rule!5469 (_1!10879 lt!678970)))))))

(declare-fun b!1757517 () Bool)

(declare-fun res!790811 () Bool)

(assert (=> b!1757517 (=> (not res!790811) (not e!1124824))))

(assert (=> b!1757517 (= res!790811 (isEmpty!12198 (tail!2627 lt!678961)))))

(declare-fun b!1757518 () Bool)

(assert (=> b!1757518 (= e!1124822 e!1124825)))

(declare-fun c!286428 () Bool)

(assert (=> b!1757518 (= c!286428 ((_ is EmptyLang!4783) (regex!3455 (rule!5469 (_1!10879 lt!678970)))))))

(declare-fun b!1757519 () Bool)

(assert (=> b!1757519 (= e!1124827 (matchR!2256 (derivativeStep!1223 (regex!3455 (rule!5469 (_1!10879 lt!678970))) (head!4062 lt!678961)) (tail!2627 lt!678961)))))

(declare-fun b!1757520 () Bool)

(assert (=> b!1757520 (= e!1124826 (not (= (head!4062 lt!678961) (c!286406 (regex!3455 (rule!5469 (_1!10879 lt!678970)))))))))

(declare-fun b!1757516 () Bool)

(assert (=> b!1757516 (= e!1124828 e!1124823)))

(declare-fun res!790805 () Bool)

(assert (=> b!1757516 (=> (not res!790805) (not e!1124823))))

(assert (=> b!1757516 (= res!790805 (not lt!678988))))

(declare-fun d!536824 () Bool)

(assert (=> d!536824 e!1124822))

(declare-fun c!286427 () Bool)

(assert (=> d!536824 (= c!286427 ((_ is EmptyExpr!4783) (regex!3455 (rule!5469 (_1!10879 lt!678970)))))))

(assert (=> d!536824 (= lt!678988 e!1124827)))

(declare-fun c!286426 () Bool)

(assert (=> d!536824 (= c!286426 (isEmpty!12198 lt!678961))))

(assert (=> d!536824 (validRegex!1928 (regex!3455 (rule!5469 (_1!10879 lt!678970))))))

(assert (=> d!536824 (= (matchR!2256 (regex!3455 (rule!5469 (_1!10879 lt!678970))) lt!678961) lt!678988)))

(assert (= (and d!536824 c!286426) b!1757515))

(assert (= (and d!536824 (not c!286426)) b!1757519))

(assert (= (and d!536824 c!286427) b!1757508))

(assert (= (and d!536824 (not c!286427)) b!1757518))

(assert (= (and b!1757518 c!286428) b!1757512))

(assert (= (and b!1757518 (not c!286428)) b!1757507))

(assert (= (and b!1757507 (not res!790806)) b!1757513))

(assert (= (and b!1757513 res!790804) b!1757514))

(assert (= (and b!1757514 res!790808) b!1757517))

(assert (= (and b!1757517 res!790811) b!1757511))

(assert (= (and b!1757513 (not res!790807)) b!1757516))

(assert (= (and b!1757516 res!790805) b!1757510))

(assert (= (and b!1757510 (not res!790809)) b!1757509))

(assert (= (and b!1757509 (not res!790810)) b!1757520))

(assert (= (or b!1757508 b!1757510 b!1757514) bm!110573))

(declare-fun m!2172543 () Bool)

(assert (=> b!1757520 m!2172543))

(assert (=> b!1757519 m!2172543))

(assert (=> b!1757519 m!2172543))

(declare-fun m!2172545 () Bool)

(assert (=> b!1757519 m!2172545))

(declare-fun m!2172547 () Bool)

(assert (=> b!1757519 m!2172547))

(assert (=> b!1757519 m!2172545))

(assert (=> b!1757519 m!2172547))

(declare-fun m!2172549 () Bool)

(assert (=> b!1757519 m!2172549))

(assert (=> b!1757517 m!2172547))

(assert (=> b!1757517 m!2172547))

(declare-fun m!2172551 () Bool)

(assert (=> b!1757517 m!2172551))

(assert (=> b!1757511 m!2172543))

(assert (=> d!536824 m!2172413))

(declare-fun m!2172553 () Bool)

(assert (=> d!536824 m!2172553))

(assert (=> b!1757509 m!2172547))

(assert (=> b!1757509 m!2172547))

(assert (=> b!1757509 m!2172551))

(assert (=> bm!110573 m!2172413))

(declare-fun m!2172555 () Bool)

(assert (=> b!1757515 m!2172555))

(assert (=> b!1757377 d!536824))

(declare-fun d!536826 () Bool)

(declare-fun c!286433 () Bool)

(assert (=> d!536826 (= c!286433 ((_ is Node!6433) (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (value!108140 (_1!10879 lt!678970))))))))

(declare-fun e!1124839 () Bool)

(assert (=> d!536826 (= (inv!25109 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (value!108140 (_1!10879 lt!678970))))) e!1124839)))

(declare-fun b!1757545 () Bool)

(declare-fun inv!25113 (Conc!6433) Bool)

(assert (=> b!1757545 (= e!1124839 (inv!25113 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (value!108140 (_1!10879 lt!678970))))))))

(declare-fun b!1757546 () Bool)

(declare-fun e!1124840 () Bool)

(assert (=> b!1757546 (= e!1124839 e!1124840)))

(declare-fun res!790828 () Bool)

(assert (=> b!1757546 (= res!790828 (not ((_ is Leaf!9381) (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (value!108140 (_1!10879 lt!678970)))))))))

(assert (=> b!1757546 (=> res!790828 e!1124840)))

(declare-fun b!1757547 () Bool)

(declare-fun inv!25114 (Conc!6433) Bool)

(assert (=> b!1757547 (= e!1124840 (inv!25114 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (value!108140 (_1!10879 lt!678970))))))))

(assert (= (and d!536826 c!286433) b!1757545))

(assert (= (and d!536826 (not c!286433)) b!1757546))

(assert (= (and b!1757546 (not res!790828)) b!1757547))

(declare-fun m!2172557 () Bool)

(assert (=> b!1757545 m!2172557))

(declare-fun m!2172559 () Bool)

(assert (=> b!1757547 m!2172559))

(assert (=> b!1757421 d!536826))

(declare-fun d!536828 () Bool)

(assert (=> d!536828 (= (isEmpty!12198 lt!678961) ((_ is Nil!19340) lt!678961))))

(assert (=> b!1757398 d!536828))

(declare-fun d!536830 () Bool)

(assert (=> d!536830 (= (apply!5255 (transformation!3455 (rule!5469 (_1!10879 lt!678970))) lt!678953) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678953))))

(declare-fun b_lambda!56733 () Bool)

(assert (=> (not b_lambda!56733) (not d!536830)))

(declare-fun tb!105671 () Bool)

(declare-fun t!163662 () Bool)

(assert (=> (and b!1757378 (= (toValue!4974 (transformation!3455 (rule!5469 token!523))) (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163662) tb!105671))

(declare-fun result!127134 () Bool)

(assert (=> tb!105671 (= result!127134 (inv!21 (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678953)))))

(declare-fun m!2172595 () Bool)

(assert (=> tb!105671 m!2172595))

(assert (=> d!536830 t!163662))

(declare-fun b_and!132165 () Bool)

(assert (= b_and!132135 (and (=> t!163662 result!127134) b_and!132165)))

(declare-fun t!163664 () Bool)

(declare-fun tb!105673 () Bool)

(assert (=> (and b!1757385 (= (toValue!4974 (transformation!3455 rule!422)) (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163664) tb!105673))

(declare-fun result!127136 () Bool)

(assert (= result!127136 result!127134))

(assert (=> d!536830 t!163664))

(declare-fun b_and!132167 () Bool)

(assert (= b_and!132137 (and (=> t!163664 result!127136) b_and!132167)))

(declare-fun tb!105675 () Bool)

(declare-fun t!163666 () Bool)

(assert (=> (and b!1757386 (= (toValue!4974 (transformation!3455 (h!24742 rules!3447))) (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163666) tb!105675))

(declare-fun result!127138 () Bool)

(assert (= result!127138 result!127134))

(assert (=> d!536830 t!163666))

(declare-fun b_and!132169 () Bool)

(assert (= b_and!132139 (and (=> t!163666 result!127138) b_and!132169)))

(declare-fun m!2172597 () Bool)

(assert (=> d!536830 m!2172597))

(assert (=> b!1757397 d!536830))

(declare-fun d!536834 () Bool)

(declare-fun lt!679009 () Int)

(assert (=> d!536834 (>= lt!679009 0)))

(declare-fun e!1124856 () Int)

(assert (=> d!536834 (= lt!679009 e!1124856)))

(declare-fun c!286437 () Bool)

(assert (=> d!536834 (= c!286437 ((_ is Nil!19340) lt!678961))))

(assert (=> d!536834 (= (size!15365 lt!678961) lt!679009)))

(declare-fun b!1757573 () Bool)

(assert (=> b!1757573 (= e!1124856 0)))

(declare-fun b!1757574 () Bool)

(assert (=> b!1757574 (= e!1124856 (+ 1 (size!15365 (t!163653 lt!678961))))))

(assert (= (and d!536834 c!286437) b!1757573))

(assert (= (and d!536834 (not c!286437)) b!1757574))

(declare-fun m!2172611 () Bool)

(assert (=> b!1757574 m!2172611))

(assert (=> b!1757397 d!536834))

(declare-fun bs!403886 () Bool)

(declare-fun d!536840 () Bool)

(assert (= bs!403886 (and d!536840 b!1757402)))

(declare-fun lambda!70058 () Int)

(assert (=> bs!403886 (= lambda!70058 lambda!70052)))

(declare-fun b!1757585 () Bool)

(declare-fun e!1124862 () Bool)

(assert (=> b!1757585 (= e!1124862 true)))

(assert (=> d!536840 e!1124862))

(assert (= d!536840 b!1757585))

(assert (=> b!1757585 (< (dynLambda!9283 order!12223 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) (dynLambda!9284 order!12225 lambda!70058))))

(assert (=> b!1757585 (< (dynLambda!9285 order!12227 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) (dynLambda!9284 order!12225 lambda!70058))))

(assert (=> d!536840 (= (list!7841 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678953))) (list!7841 lt!678953))))

(declare-fun lt!679015 () Unit!33507)

(declare-fun ForallOf!307 (Int BalanceConc!12810) Unit!33507)

(assert (=> d!536840 (= lt!679015 (ForallOf!307 lambda!70058 lt!678953))))

(assert (=> d!536840 (= (lemmaSemiInverse!593 (transformation!3455 (rule!5469 (_1!10879 lt!678970))) lt!678953) lt!679015)))

(declare-fun b_lambda!56737 () Bool)

(assert (=> (not b_lambda!56737) (not d!536840)))

(declare-fun tb!105677 () Bool)

(declare-fun t!163668 () Bool)

(assert (=> (and b!1757378 (= (toChars!4833 (transformation!3455 (rule!5469 token!523))) (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163668) tb!105677))

(declare-fun b!1757586 () Bool)

(declare-fun tp!499513 () Bool)

(declare-fun e!1124863 () Bool)

(assert (=> b!1757586 (= e!1124863 (and (inv!25109 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678953)))) tp!499513))))

(declare-fun result!127140 () Bool)

(assert (=> tb!105677 (= result!127140 (and (inv!25110 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678953))) e!1124863))))

(assert (= tb!105677 b!1757586))

(declare-fun m!2172623 () Bool)

(assert (=> b!1757586 m!2172623))

(declare-fun m!2172625 () Bool)

(assert (=> tb!105677 m!2172625))

(assert (=> d!536840 t!163668))

(declare-fun b_and!132177 () Bool)

(assert (= b_and!132159 (and (=> t!163668 result!127140) b_and!132177)))

(declare-fun t!163670 () Bool)

(declare-fun tb!105679 () Bool)

(assert (=> (and b!1757385 (= (toChars!4833 (transformation!3455 rule!422)) (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163670) tb!105679))

(declare-fun result!127142 () Bool)

(assert (= result!127142 result!127140))

(assert (=> d!536840 t!163670))

(declare-fun b_and!132179 () Bool)

(assert (= b_and!132161 (and (=> t!163670 result!127142) b_and!132179)))

(declare-fun t!163672 () Bool)

(declare-fun tb!105681 () Bool)

(assert (=> (and b!1757386 (= (toChars!4833 (transformation!3455 (h!24742 rules!3447))) (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163672) tb!105681))

(declare-fun result!127144 () Bool)

(assert (= result!127144 result!127140))

(assert (=> d!536840 t!163672))

(declare-fun b_and!132181 () Bool)

(assert (= b_and!132163 (and (=> t!163672 result!127144) b_and!132181)))

(declare-fun b_lambda!56739 () Bool)

(assert (=> (not b_lambda!56739) (not d!536840)))

(assert (=> d!536840 t!163662))

(declare-fun b_and!132183 () Bool)

(assert (= b_and!132165 (and (=> t!163662 result!127134) b_and!132183)))

(assert (=> d!536840 t!163664))

(declare-fun b_and!132185 () Bool)

(assert (= b_and!132167 (and (=> t!163664 result!127136) b_and!132185)))

(assert (=> d!536840 t!163666))

(declare-fun b_and!132187 () Bool)

(assert (= b_and!132169 (and (=> t!163666 result!127138) b_and!132187)))

(assert (=> d!536840 m!2172597))

(assert (=> d!536840 m!2172597))

(declare-fun m!2172627 () Bool)

(assert (=> d!536840 m!2172627))

(declare-fun m!2172629 () Bool)

(assert (=> d!536840 m!2172629))

(assert (=> d!536840 m!2172627))

(declare-fun m!2172631 () Bool)

(assert (=> d!536840 m!2172631))

(declare-fun m!2172633 () Bool)

(assert (=> d!536840 m!2172633))

(assert (=> b!1757397 d!536840))

(declare-fun d!536846 () Bool)

(declare-fun fromListB!1104 (List!19410) BalanceConc!12810)

(assert (=> d!536846 (= (seqFromList!2424 lt!678961) (fromListB!1104 lt!678961))))

(declare-fun bs!403887 () Bool)

(assert (= bs!403887 d!536846))

(declare-fun m!2172635 () Bool)

(assert (=> bs!403887 m!2172635))

(assert (=> b!1757397 d!536846))

(declare-fun d!536848 () Bool)

(declare-fun lt!679030 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2787 (List!19411) (InoxSet Rule!6710))

(assert (=> d!536848 (= lt!679030 (select (content!2787 rules!3447) rule!422))))

(declare-fun e!1124881 () Bool)

(assert (=> d!536848 (= lt!679030 e!1124881)))

(declare-fun res!790864 () Bool)

(assert (=> d!536848 (=> (not res!790864) (not e!1124881))))

(assert (=> d!536848 (= res!790864 ((_ is Cons!19341) rules!3447))))

(assert (=> d!536848 (= (contains!3483 rules!3447 rule!422) lt!679030)))

(declare-fun b!1757609 () Bool)

(declare-fun e!1124880 () Bool)

(assert (=> b!1757609 (= e!1124881 e!1124880)))

(declare-fun res!790865 () Bool)

(assert (=> b!1757609 (=> res!790865 e!1124880)))

(assert (=> b!1757609 (= res!790865 (= (h!24742 rules!3447) rule!422))))

(declare-fun b!1757610 () Bool)

(assert (=> b!1757610 (= e!1124880 (contains!3483 (t!163654 rules!3447) rule!422))))

(assert (= (and d!536848 res!790864) b!1757609))

(assert (= (and b!1757609 (not res!790865)) b!1757610))

(declare-fun m!2172649 () Bool)

(assert (=> d!536848 m!2172649))

(declare-fun m!2172651 () Bool)

(assert (=> d!536848 m!2172651))

(declare-fun m!2172653 () Bool)

(assert (=> b!1757610 m!2172653))

(assert (=> b!1757376 d!536848))

(declare-fun d!536852 () Bool)

(assert (=> d!536852 (= (isEmpty!12198 (_2!10879 lt!678955)) ((_ is Nil!19340) (_2!10879 lt!678955)))))

(assert (=> b!1757396 d!536852))

(declare-fun d!536854 () Bool)

(assert (=> d!536854 (= (list!7841 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962))) (list!7842 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962)))))))

(declare-fun bs!403888 () Bool)

(assert (= bs!403888 d!536854))

(declare-fun m!2172655 () Bool)

(assert (=> bs!403888 m!2172655))

(assert (=> b!1757405 d!536854))

(declare-fun bs!403889 () Bool)

(declare-fun d!536856 () Bool)

(assert (= bs!403889 (and d!536856 b!1757402)))

(declare-fun lambda!70059 () Int)

(assert (=> bs!403889 (= lambda!70059 lambda!70052)))

(declare-fun bs!403890 () Bool)

(assert (= bs!403890 (and d!536856 d!536840)))

(assert (=> bs!403890 (= lambda!70059 lambda!70058)))

(declare-fun b!1757611 () Bool)

(declare-fun e!1124882 () Bool)

(assert (=> b!1757611 (= e!1124882 true)))

(assert (=> d!536856 e!1124882))

(assert (= d!536856 b!1757611))

(assert (=> b!1757611 (< (dynLambda!9283 order!12223 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) (dynLambda!9284 order!12225 lambda!70059))))

(assert (=> b!1757611 (< (dynLambda!9285 order!12227 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) (dynLambda!9284 order!12225 lambda!70059))))

(assert (=> d!536856 (= (list!7841 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962))) (list!7841 lt!678962))))

(declare-fun lt!679031 () Unit!33507)

(assert (=> d!536856 (= lt!679031 (ForallOf!307 lambda!70059 lt!678962))))

(assert (=> d!536856 (= (lemmaSemiInverse!593 (transformation!3455 (rule!5469 (_1!10879 lt!678970))) lt!678962) lt!679031)))

(declare-fun b_lambda!56741 () Bool)

(assert (=> (not b_lambda!56741) (not d!536856)))

(assert (=> d!536856 t!163641))

(declare-fun b_and!132189 () Bool)

(assert (= b_and!132177 (and (=> t!163641 result!127114) b_and!132189)))

(assert (=> d!536856 t!163643))

(declare-fun b_and!132191 () Bool)

(assert (= b_and!132179 (and (=> t!163643 result!127116) b_and!132191)))

(assert (=> d!536856 t!163645))

(declare-fun b_and!132193 () Bool)

(assert (= b_and!132181 (and (=> t!163645 result!127118) b_and!132193)))

(declare-fun b_lambda!56743 () Bool)

(assert (=> (not b_lambda!56743) (not d!536856)))

(assert (=> d!536856 t!163647))

(declare-fun b_and!132195 () Bool)

(assert (= b_and!132183 (and (=> t!163647 result!127120) b_and!132195)))

(assert (=> d!536856 t!163649))

(declare-fun b_and!132197 () Bool)

(assert (= b_and!132185 (and (=> t!163649 result!127124) b_and!132197)))

(assert (=> d!536856 t!163651))

(declare-fun b_and!132199 () Bool)

(assert (= b_and!132187 (and (=> t!163651 result!127126) b_and!132199)))

(assert (=> d!536856 m!2172397))

(assert (=> d!536856 m!2172397))

(assert (=> d!536856 m!2172399))

(declare-fun m!2172657 () Bool)

(assert (=> d!536856 m!2172657))

(assert (=> d!536856 m!2172399))

(assert (=> d!536856 m!2172401))

(assert (=> d!536856 m!2172461))

(assert (=> b!1757405 d!536856))

(declare-fun d!536858 () Bool)

(declare-fun isBalanced!2008 (Conc!6433) Bool)

(assert (=> d!536858 (= (inv!25110 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962))) (isBalanced!2008 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962)))))))

(declare-fun bs!403891 () Bool)

(assert (= bs!403891 d!536858))

(declare-fun m!2172659 () Bool)

(assert (=> bs!403891 m!2172659))

(assert (=> tb!105653 d!536858))

(declare-fun d!536860 () Bool)

(assert (=> d!536860 (= (inv!25102 (tag!3815 (h!24742 rules!3447))) (= (mod (str.len (value!108139 (tag!3815 (h!24742 rules!3447)))) 2) 0))))

(assert (=> b!1757384 d!536860))

(declare-fun d!536862 () Bool)

(declare-fun res!790868 () Bool)

(declare-fun e!1124885 () Bool)

(assert (=> d!536862 (=> (not res!790868) (not e!1124885))))

(declare-fun semiInverseModEq!1370 (Int Int) Bool)

(assert (=> d!536862 (= res!790868 (semiInverseModEq!1370 (toChars!4833 (transformation!3455 (h!24742 rules!3447))) (toValue!4974 (transformation!3455 (h!24742 rules!3447)))))))

(assert (=> d!536862 (= (inv!25107 (transformation!3455 (h!24742 rules!3447))) e!1124885)))

(declare-fun b!1757614 () Bool)

(declare-fun equivClasses!1311 (Int Int) Bool)

(assert (=> b!1757614 (= e!1124885 (equivClasses!1311 (toChars!4833 (transformation!3455 (h!24742 rules!3447))) (toValue!4974 (transformation!3455 (h!24742 rules!3447)))))))

(assert (= (and d!536862 res!790868) b!1757614))

(declare-fun m!2172661 () Bool)

(assert (=> d!536862 m!2172661))

(declare-fun m!2172663 () Bool)

(assert (=> b!1757614 m!2172663))

(assert (=> b!1757384 d!536862))

(declare-fun d!536864 () Bool)

(declare-fun res!790871 () Bool)

(declare-fun e!1124888 () Bool)

(assert (=> d!536864 (=> (not res!790871) (not e!1124888))))

(declare-fun rulesValid!1295 (LexerInterface!3084 List!19411) Bool)

(assert (=> d!536864 (= res!790871 (rulesValid!1295 thiss!24550 rules!3447))))

(assert (=> d!536864 (= (rulesInvariant!2753 thiss!24550 rules!3447) e!1124888)))

(declare-fun b!1757617 () Bool)

(declare-datatypes ((List!19413 0))(
  ( (Nil!19343) (Cons!19343 (h!24744 String!22057) (t!163732 List!19413)) )
))
(declare-fun noDuplicateTag!1295 (LexerInterface!3084 List!19411 List!19413) Bool)

(assert (=> b!1757617 (= e!1124888 (noDuplicateTag!1295 thiss!24550 rules!3447 Nil!19343))))

(assert (= (and d!536864 res!790871) b!1757617))

(declare-fun m!2172665 () Bool)

(assert (=> d!536864 m!2172665))

(declare-fun m!2172667 () Bool)

(assert (=> b!1757617 m!2172667))

(assert (=> b!1757383 d!536864))

(declare-fun b!1757618 () Bool)

(declare-fun res!790874 () Bool)

(declare-fun e!1124895 () Bool)

(assert (=> b!1757618 (=> res!790874 e!1124895)))

(assert (=> b!1757618 (= res!790874 (not ((_ is ElementMatch!4783) (regex!3455 rule!422))))))

(declare-fun e!1124892 () Bool)

(assert (=> b!1757618 (= e!1124892 e!1124895)))

(declare-fun b!1757619 () Bool)

(declare-fun e!1124889 () Bool)

(declare-fun lt!679032 () Bool)

(declare-fun call!110582 () Bool)

(assert (=> b!1757619 (= e!1124889 (= lt!679032 call!110582))))

(declare-fun b!1757620 () Bool)

(declare-fun res!790878 () Bool)

(declare-fun e!1124893 () Bool)

(assert (=> b!1757620 (=> res!790878 e!1124893)))

(assert (=> b!1757620 (= res!790878 (not (isEmpty!12198 (tail!2627 lt!678951))))))

(declare-fun b!1757621 () Bool)

(declare-fun e!1124890 () Bool)

(assert (=> b!1757621 (= e!1124890 e!1124893)))

(declare-fun res!790877 () Bool)

(assert (=> b!1757621 (=> res!790877 e!1124893)))

(assert (=> b!1757621 (= res!790877 call!110582)))

(declare-fun b!1757622 () Bool)

(declare-fun e!1124891 () Bool)

(assert (=> b!1757622 (= e!1124891 (= (head!4062 lt!678951) (c!286406 (regex!3455 rule!422))))))

(declare-fun b!1757623 () Bool)

(assert (=> b!1757623 (= e!1124892 (not lt!679032))))

(declare-fun b!1757624 () Bool)

(declare-fun res!790875 () Bool)

(assert (=> b!1757624 (=> res!790875 e!1124895)))

(assert (=> b!1757624 (= res!790875 e!1124891)))

(declare-fun res!790872 () Bool)

(assert (=> b!1757624 (=> (not res!790872) (not e!1124891))))

(assert (=> b!1757624 (= res!790872 lt!679032)))

(declare-fun bm!110577 () Bool)

(assert (=> bm!110577 (= call!110582 (isEmpty!12198 lt!678951))))

(declare-fun b!1757625 () Bool)

(declare-fun res!790876 () Bool)

(assert (=> b!1757625 (=> (not res!790876) (not e!1124891))))

(assert (=> b!1757625 (= res!790876 (not call!110582))))

(declare-fun b!1757626 () Bool)

(declare-fun e!1124894 () Bool)

(assert (=> b!1757626 (= e!1124894 (nullable!1454 (regex!3455 rule!422)))))

(declare-fun b!1757628 () Bool)

(declare-fun res!790879 () Bool)

(assert (=> b!1757628 (=> (not res!790879) (not e!1124891))))

(assert (=> b!1757628 (= res!790879 (isEmpty!12198 (tail!2627 lt!678951)))))

(declare-fun b!1757629 () Bool)

(assert (=> b!1757629 (= e!1124889 e!1124892)))

(declare-fun c!286447 () Bool)

(assert (=> b!1757629 (= c!286447 ((_ is EmptyLang!4783) (regex!3455 rule!422)))))

(declare-fun b!1757630 () Bool)

(assert (=> b!1757630 (= e!1124894 (matchR!2256 (derivativeStep!1223 (regex!3455 rule!422) (head!4062 lt!678951)) (tail!2627 lt!678951)))))

(declare-fun b!1757631 () Bool)

(assert (=> b!1757631 (= e!1124893 (not (= (head!4062 lt!678951) (c!286406 (regex!3455 rule!422)))))))

(declare-fun b!1757627 () Bool)

(assert (=> b!1757627 (= e!1124895 e!1124890)))

(declare-fun res!790873 () Bool)

(assert (=> b!1757627 (=> (not res!790873) (not e!1124890))))

(assert (=> b!1757627 (= res!790873 (not lt!679032))))

(declare-fun d!536866 () Bool)

(assert (=> d!536866 e!1124889))

(declare-fun c!286446 () Bool)

(assert (=> d!536866 (= c!286446 ((_ is EmptyExpr!4783) (regex!3455 rule!422)))))

(assert (=> d!536866 (= lt!679032 e!1124894)))

(declare-fun c!286445 () Bool)

(assert (=> d!536866 (= c!286445 (isEmpty!12198 lt!678951))))

(assert (=> d!536866 (validRegex!1928 (regex!3455 rule!422))))

(assert (=> d!536866 (= (matchR!2256 (regex!3455 rule!422) lt!678951) lt!679032)))

(assert (= (and d!536866 c!286445) b!1757626))

(assert (= (and d!536866 (not c!286445)) b!1757630))

(assert (= (and d!536866 c!286446) b!1757619))

(assert (= (and d!536866 (not c!286446)) b!1757629))

(assert (= (and b!1757629 c!286447) b!1757623))

(assert (= (and b!1757629 (not c!286447)) b!1757618))

(assert (= (and b!1757618 (not res!790874)) b!1757624))

(assert (= (and b!1757624 res!790872) b!1757625))

(assert (= (and b!1757625 res!790876) b!1757628))

(assert (= (and b!1757628 res!790879) b!1757622))

(assert (= (and b!1757624 (not res!790875)) b!1757627))

(assert (= (and b!1757627 res!790873) b!1757621))

(assert (= (and b!1757621 (not res!790877)) b!1757620))

(assert (= (and b!1757620 (not res!790878)) b!1757631))

(assert (= (or b!1757619 b!1757621 b!1757625) bm!110577))

(declare-fun m!2172669 () Bool)

(assert (=> b!1757631 m!2172669))

(assert (=> b!1757630 m!2172669))

(assert (=> b!1757630 m!2172669))

(declare-fun m!2172671 () Bool)

(assert (=> b!1757630 m!2172671))

(declare-fun m!2172673 () Bool)

(assert (=> b!1757630 m!2172673))

(assert (=> b!1757630 m!2172671))

(assert (=> b!1757630 m!2172673))

(declare-fun m!2172675 () Bool)

(assert (=> b!1757630 m!2172675))

(assert (=> b!1757628 m!2172673))

(assert (=> b!1757628 m!2172673))

(declare-fun m!2172677 () Bool)

(assert (=> b!1757628 m!2172677))

(assert (=> b!1757622 m!2172669))

(declare-fun m!2172679 () Bool)

(assert (=> d!536866 m!2172679))

(declare-fun m!2172681 () Bool)

(assert (=> d!536866 m!2172681))

(assert (=> b!1757620 m!2172673))

(assert (=> b!1757620 m!2172673))

(assert (=> b!1757620 m!2172677))

(assert (=> bm!110577 m!2172679))

(declare-fun m!2172683 () Bool)

(assert (=> b!1757626 m!2172683))

(assert (=> b!1757404 d!536866))

(declare-fun d!536868 () Bool)

(declare-fun res!790884 () Bool)

(declare-fun e!1124898 () Bool)

(assert (=> d!536868 (=> (not res!790884) (not e!1124898))))

(assert (=> d!536868 (= res!790884 (validRegex!1928 (regex!3455 rule!422)))))

(assert (=> d!536868 (= (ruleValid!953 thiss!24550 rule!422) e!1124898)))

(declare-fun b!1757636 () Bool)

(declare-fun res!790885 () Bool)

(assert (=> b!1757636 (=> (not res!790885) (not e!1124898))))

(assert (=> b!1757636 (= res!790885 (not (nullable!1454 (regex!3455 rule!422))))))

(declare-fun b!1757637 () Bool)

(assert (=> b!1757637 (= e!1124898 (not (= (tag!3815 rule!422) (String!22058 ""))))))

(assert (= (and d!536868 res!790884) b!1757636))

(assert (= (and b!1757636 res!790885) b!1757637))

(assert (=> d!536868 m!2172681))

(assert (=> b!1757636 m!2172683))

(assert (=> b!1757404 d!536868))

(declare-fun d!536870 () Bool)

(assert (=> d!536870 (ruleValid!953 thiss!24550 rule!422)))

(declare-fun lt!679035 () Unit!33507)

(declare-fun choose!10867 (LexerInterface!3084 Rule!6710 List!19411) Unit!33507)

(assert (=> d!536870 (= lt!679035 (choose!10867 thiss!24550 rule!422 rules!3447))))

(assert (=> d!536870 (contains!3483 rules!3447 rule!422)))

(assert (=> d!536870 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!476 thiss!24550 rule!422 rules!3447) lt!679035)))

(declare-fun bs!403892 () Bool)

(assert (= bs!403892 d!536870))

(assert (=> bs!403892 m!2172441))

(declare-fun m!2172685 () Bool)

(assert (=> bs!403892 m!2172685))

(assert (=> bs!403892 m!2172483))

(assert (=> b!1757404 d!536870))

(declare-fun d!536872 () Bool)

(declare-fun isEmpty!12202 (Option!3933) Bool)

(assert (=> d!536872 (= (isDefined!3276 lt!678964) (not (isEmpty!12202 lt!678964)))))

(declare-fun bs!403893 () Bool)

(assert (= bs!403893 d!536872))

(declare-fun m!2172687 () Bool)

(assert (=> bs!403893 m!2172687))

(assert (=> b!1757403 d!536872))

(declare-fun d!536874 () Bool)

(declare-fun e!1124907 () Bool)

(assert (=> d!536874 e!1124907))

(declare-fun res!790902 () Bool)

(assert (=> d!536874 (=> res!790902 e!1124907)))

(declare-fun lt!679049 () Option!3933)

(assert (=> d!536874 (= res!790902 (isEmpty!12202 lt!679049))))

(declare-fun e!1124905 () Option!3933)

(assert (=> d!536874 (= lt!679049 e!1124905)))

(declare-fun c!286450 () Bool)

(assert (=> d!536874 (= c!286450 (and ((_ is Cons!19341) rules!3447) ((_ is Nil!19341) (t!163654 rules!3447))))))

(declare-fun lt!679047 () Unit!33507)

(declare-fun lt!679048 () Unit!33507)

(assert (=> d!536874 (= lt!679047 lt!679048)))

(assert (=> d!536874 (isPrefix!1695 lt!678951 lt!678951)))

(declare-fun lemmaIsPrefixRefl!1122 (List!19410 List!19410) Unit!33507)

(assert (=> d!536874 (= lt!679048 (lemmaIsPrefixRefl!1122 lt!678951 lt!678951))))

(declare-fun rulesValidInductive!1160 (LexerInterface!3084 List!19411) Bool)

(assert (=> d!536874 (rulesValidInductive!1160 thiss!24550 rules!3447)))

(assert (=> d!536874 (= (maxPrefix!1638 thiss!24550 rules!3447 lt!678951) lt!679049)))

(declare-fun b!1757656 () Bool)

(declare-fun res!790904 () Bool)

(declare-fun e!1124906 () Bool)

(assert (=> b!1757656 (=> (not res!790904) (not e!1124906))))

(assert (=> b!1757656 (= res!790904 (= (value!108140 (_1!10879 (get!5878 lt!679049))) (apply!5255 (transformation!3455 (rule!5469 (_1!10879 (get!5878 lt!679049)))) (seqFromList!2424 (originalCharacters!4269 (_1!10879 (get!5878 lt!679049)))))))))

(declare-fun call!110585 () Option!3933)

(declare-fun bm!110580 () Bool)

(declare-fun maxPrefixOneRule!1007 (LexerInterface!3084 Rule!6710 List!19410) Option!3933)

(assert (=> bm!110580 (= call!110585 (maxPrefixOneRule!1007 thiss!24550 (h!24742 rules!3447) lt!678951))))

(declare-fun b!1757657 () Bool)

(assert (=> b!1757657 (= e!1124907 e!1124906)))

(declare-fun res!790905 () Bool)

(assert (=> b!1757657 (=> (not res!790905) (not e!1124906))))

(assert (=> b!1757657 (= res!790905 (isDefined!3276 lt!679049))))

(declare-fun b!1757658 () Bool)

(declare-fun res!790901 () Bool)

(assert (=> b!1757658 (=> (not res!790901) (not e!1124906))))

(assert (=> b!1757658 (= res!790901 (= (list!7841 (charsOf!2104 (_1!10879 (get!5878 lt!679049)))) (originalCharacters!4269 (_1!10879 (get!5878 lt!679049)))))))

(declare-fun b!1757659 () Bool)

(declare-fun res!790903 () Bool)

(assert (=> b!1757659 (=> (not res!790903) (not e!1124906))))

(assert (=> b!1757659 (= res!790903 (= (++!5279 (list!7841 (charsOf!2104 (_1!10879 (get!5878 lt!679049)))) (_2!10879 (get!5878 lt!679049))) lt!678951))))

(declare-fun b!1757660 () Bool)

(declare-fun res!790900 () Bool)

(assert (=> b!1757660 (=> (not res!790900) (not e!1124906))))

(assert (=> b!1757660 (= res!790900 (< (size!15365 (_2!10879 (get!5878 lt!679049))) (size!15365 lt!678951)))))

(declare-fun b!1757661 () Bool)

(assert (=> b!1757661 (= e!1124906 (contains!3483 rules!3447 (rule!5469 (_1!10879 (get!5878 lt!679049)))))))

(declare-fun b!1757662 () Bool)

(declare-fun lt!679046 () Option!3933)

(declare-fun lt!679050 () Option!3933)

(assert (=> b!1757662 (= e!1124905 (ite (and ((_ is None!3932) lt!679046) ((_ is None!3932) lt!679050)) None!3932 (ite ((_ is None!3932) lt!679050) lt!679046 (ite ((_ is None!3932) lt!679046) lt!679050 (ite (>= (size!15363 (_1!10879 (v!25387 lt!679046))) (size!15363 (_1!10879 (v!25387 lt!679050)))) lt!679046 lt!679050)))))))

(assert (=> b!1757662 (= lt!679046 call!110585)))

(assert (=> b!1757662 (= lt!679050 (maxPrefix!1638 thiss!24550 (t!163654 rules!3447) lt!678951))))

(declare-fun b!1757663 () Bool)

(declare-fun res!790906 () Bool)

(assert (=> b!1757663 (=> (not res!790906) (not e!1124906))))

(assert (=> b!1757663 (= res!790906 (matchR!2256 (regex!3455 (rule!5469 (_1!10879 (get!5878 lt!679049)))) (list!7841 (charsOf!2104 (_1!10879 (get!5878 lt!679049))))))))

(declare-fun b!1757664 () Bool)

(assert (=> b!1757664 (= e!1124905 call!110585)))

(assert (= (and d!536874 c!286450) b!1757664))

(assert (= (and d!536874 (not c!286450)) b!1757662))

(assert (= (or b!1757664 b!1757662) bm!110580))

(assert (= (and d!536874 (not res!790902)) b!1757657))

(assert (= (and b!1757657 res!790905) b!1757658))

(assert (= (and b!1757658 res!790901) b!1757660))

(assert (= (and b!1757660 res!790900) b!1757659))

(assert (= (and b!1757659 res!790903) b!1757656))

(assert (= (and b!1757656 res!790904) b!1757663))

(assert (= (and b!1757663 res!790906) b!1757661))

(declare-fun m!2172689 () Bool)

(assert (=> bm!110580 m!2172689))

(declare-fun m!2172691 () Bool)

(assert (=> b!1757659 m!2172691))

(declare-fun m!2172693 () Bool)

(assert (=> b!1757659 m!2172693))

(assert (=> b!1757659 m!2172693))

(declare-fun m!2172695 () Bool)

(assert (=> b!1757659 m!2172695))

(assert (=> b!1757659 m!2172695))

(declare-fun m!2172697 () Bool)

(assert (=> b!1757659 m!2172697))

(assert (=> b!1757660 m!2172691))

(declare-fun m!2172699 () Bool)

(assert (=> b!1757660 m!2172699))

(declare-fun m!2172701 () Bool)

(assert (=> b!1757660 m!2172701))

(declare-fun m!2172703 () Bool)

(assert (=> d!536874 m!2172703))

(declare-fun m!2172705 () Bool)

(assert (=> d!536874 m!2172705))

(declare-fun m!2172707 () Bool)

(assert (=> d!536874 m!2172707))

(declare-fun m!2172709 () Bool)

(assert (=> d!536874 m!2172709))

(assert (=> b!1757658 m!2172691))

(assert (=> b!1757658 m!2172693))

(assert (=> b!1757658 m!2172693))

(assert (=> b!1757658 m!2172695))

(assert (=> b!1757663 m!2172691))

(assert (=> b!1757663 m!2172693))

(assert (=> b!1757663 m!2172693))

(assert (=> b!1757663 m!2172695))

(assert (=> b!1757663 m!2172695))

(declare-fun m!2172711 () Bool)

(assert (=> b!1757663 m!2172711))

(assert (=> b!1757656 m!2172691))

(declare-fun m!2172713 () Bool)

(assert (=> b!1757656 m!2172713))

(assert (=> b!1757656 m!2172713))

(declare-fun m!2172715 () Bool)

(assert (=> b!1757656 m!2172715))

(declare-fun m!2172717 () Bool)

(assert (=> b!1757657 m!2172717))

(declare-fun m!2172719 () Bool)

(assert (=> b!1757662 m!2172719))

(assert (=> b!1757661 m!2172691))

(declare-fun m!2172721 () Bool)

(assert (=> b!1757661 m!2172721))

(assert (=> b!1757403 d!536874))

(declare-fun d!536876 () Bool)

(assert (=> d!536876 (= (list!7841 (charsOf!2104 token!523)) (list!7842 (c!286407 (charsOf!2104 token!523))))))

(declare-fun bs!403894 () Bool)

(assert (= bs!403894 d!536876))

(declare-fun m!2172723 () Bool)

(assert (=> bs!403894 m!2172723))

(assert (=> b!1757403 d!536876))

(declare-fun d!536878 () Bool)

(declare-fun lt!679051 () BalanceConc!12810)

(assert (=> d!536878 (= (list!7841 lt!679051) (originalCharacters!4269 token!523))))

(assert (=> d!536878 (= lt!679051 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 token!523))) (value!108140 token!523)))))

(assert (=> d!536878 (= (charsOf!2104 token!523) lt!679051)))

(declare-fun b_lambda!56745 () Bool)

(assert (=> (not b_lambda!56745) (not d!536878)))

(declare-fun t!163674 () Bool)

(declare-fun tb!105683 () Bool)

(assert (=> (and b!1757378 (= (toChars!4833 (transformation!3455 (rule!5469 token!523))) (toChars!4833 (transformation!3455 (rule!5469 token!523)))) t!163674) tb!105683))

(declare-fun b!1757665 () Bool)

(declare-fun e!1124908 () Bool)

(declare-fun tp!499514 () Bool)

(assert (=> b!1757665 (= e!1124908 (and (inv!25109 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 token!523))) (value!108140 token!523)))) tp!499514))))

(declare-fun result!127146 () Bool)

(assert (=> tb!105683 (= result!127146 (and (inv!25110 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 token!523))) (value!108140 token!523))) e!1124908))))

(assert (= tb!105683 b!1757665))

(declare-fun m!2172725 () Bool)

(assert (=> b!1757665 m!2172725))

(declare-fun m!2172727 () Bool)

(assert (=> tb!105683 m!2172727))

(assert (=> d!536878 t!163674))

(declare-fun b_and!132201 () Bool)

(assert (= b_and!132189 (and (=> t!163674 result!127146) b_and!132201)))

(declare-fun t!163676 () Bool)

(declare-fun tb!105685 () Bool)

(assert (=> (and b!1757385 (= (toChars!4833 (transformation!3455 rule!422)) (toChars!4833 (transformation!3455 (rule!5469 token!523)))) t!163676) tb!105685))

(declare-fun result!127148 () Bool)

(assert (= result!127148 result!127146))

(assert (=> d!536878 t!163676))

(declare-fun b_and!132203 () Bool)

(assert (= b_and!132191 (and (=> t!163676 result!127148) b_and!132203)))

(declare-fun tb!105687 () Bool)

(declare-fun t!163678 () Bool)

(assert (=> (and b!1757386 (= (toChars!4833 (transformation!3455 (h!24742 rules!3447))) (toChars!4833 (transformation!3455 (rule!5469 token!523)))) t!163678) tb!105687))

(declare-fun result!127150 () Bool)

(assert (= result!127150 result!127146))

(assert (=> d!536878 t!163678))

(declare-fun b_and!132205 () Bool)

(assert (= b_and!132193 (and (=> t!163678 result!127150) b_and!132205)))

(declare-fun m!2172729 () Bool)

(assert (=> d!536878 m!2172729))

(declare-fun m!2172731 () Bool)

(assert (=> d!536878 m!2172731))

(assert (=> b!1757403 d!536878))

(declare-fun d!536880 () Bool)

(declare-fun res!790911 () Bool)

(declare-fun e!1124911 () Bool)

(assert (=> d!536880 (=> (not res!790911) (not e!1124911))))

(assert (=> d!536880 (= res!790911 (not (isEmpty!12198 (originalCharacters!4269 token!523))))))

(assert (=> d!536880 (= (inv!25108 token!523) e!1124911)))

(declare-fun b!1757670 () Bool)

(declare-fun res!790912 () Bool)

(assert (=> b!1757670 (=> (not res!790912) (not e!1124911))))

(assert (=> b!1757670 (= res!790912 (= (originalCharacters!4269 token!523) (list!7841 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 token!523))) (value!108140 token!523)))))))

(declare-fun b!1757671 () Bool)

(assert (=> b!1757671 (= e!1124911 (= (size!15363 token!523) (size!15365 (originalCharacters!4269 token!523))))))

(assert (= (and d!536880 res!790911) b!1757670))

(assert (= (and b!1757670 res!790912) b!1757671))

(declare-fun b_lambda!56747 () Bool)

(assert (=> (not b_lambda!56747) (not b!1757670)))

(assert (=> b!1757670 t!163674))

(declare-fun b_and!132207 () Bool)

(assert (= b_and!132201 (and (=> t!163674 result!127146) b_and!132207)))

(assert (=> b!1757670 t!163676))

(declare-fun b_and!132209 () Bool)

(assert (= b_and!132203 (and (=> t!163676 result!127148) b_and!132209)))

(assert (=> b!1757670 t!163678))

(declare-fun b_and!132211 () Bool)

(assert (= b_and!132205 (and (=> t!163678 result!127150) b_and!132211)))

(declare-fun m!2172733 () Bool)

(assert (=> d!536880 m!2172733))

(assert (=> b!1757670 m!2172731))

(assert (=> b!1757670 m!2172731))

(declare-fun m!2172735 () Bool)

(assert (=> b!1757670 m!2172735))

(declare-fun m!2172737 () Bool)

(assert (=> b!1757671 m!2172737))

(assert (=> start!173614 d!536880))

(declare-fun d!536882 () Bool)

(assert (=> d!536882 (= (isEmpty!12198 suffix!1421) ((_ is Nil!19340) suffix!1421))))

(assert (=> b!1757382 d!536882))

(declare-fun d!536884 () Bool)

(declare-fun lt!679054 () Int)

(assert (=> d!536884 (= lt!679054 (size!15365 (list!7841 lt!678962)))))

(declare-fun size!15367 (Conc!6433) Int)

(assert (=> d!536884 (= lt!679054 (size!15367 (c!286407 lt!678962)))))

(assert (=> d!536884 (= (size!15364 lt!678962) lt!679054)))

(declare-fun bs!403895 () Bool)

(assert (= bs!403895 d!536884))

(assert (=> bs!403895 m!2172461))

(assert (=> bs!403895 m!2172461))

(declare-fun m!2172739 () Bool)

(assert (=> bs!403895 m!2172739))

(declare-fun m!2172741 () Bool)

(assert (=> bs!403895 m!2172741))

(assert (=> b!1757381 d!536884))

(declare-fun d!536886 () Bool)

(assert (=> d!536886 (= (apply!5255 (transformation!3455 (rule!5469 (_1!10879 lt!678970))) lt!678962) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962))))

(declare-fun b_lambda!56749 () Bool)

(assert (=> (not b_lambda!56749) (not d!536886)))

(assert (=> d!536886 t!163647))

(declare-fun b_and!132213 () Bool)

(assert (= b_and!132195 (and (=> t!163647 result!127120) b_and!132213)))

(assert (=> d!536886 t!163649))

(declare-fun b_and!132215 () Bool)

(assert (= b_and!132197 (and (=> t!163649 result!127124) b_and!132215)))

(assert (=> d!536886 t!163651))

(declare-fun b_and!132217 () Bool)

(assert (= b_and!132199 (and (=> t!163651 result!127126) b_and!132217)))

(assert (=> d!536886 m!2172397))

(assert (=> b!1757381 d!536886))

(declare-fun d!536888 () Bool)

(assert (=> d!536888 (= (size!15363 (_1!10879 lt!678970)) (size!15365 (originalCharacters!4269 (_1!10879 lt!678970))))))

(declare-fun Unit!33512 () Unit!33507)

(assert (=> d!536888 (= (lemmaCharactersSize!513 (_1!10879 lt!678970)) Unit!33512)))

(declare-fun bs!403896 () Bool)

(assert (= bs!403896 d!536888))

(declare-fun m!2172743 () Bool)

(assert (=> bs!403896 m!2172743))

(assert (=> b!1757381 d!536888))

(declare-fun d!536890 () Bool)

(assert (=> d!536890 (= (seqFromList!2424 (originalCharacters!4269 (_1!10879 lt!678970))) (fromListB!1104 (originalCharacters!4269 (_1!10879 lt!678970))))))

(declare-fun bs!403897 () Bool)

(assert (= bs!403897 d!536890))

(declare-fun m!2172745 () Bool)

(assert (=> bs!403897 m!2172745))

(assert (=> b!1757381 d!536890))

(declare-fun b!1757678 () Bool)

(declare-fun e!1124916 () Bool)

(assert (=> b!1757678 (= e!1124916 true)))

(declare-fun d!536892 () Bool)

(assert (=> d!536892 e!1124916))

(assert (= d!536892 b!1757678))

(declare-fun lambda!70062 () Int)

(declare-fun order!12231 () Int)

(declare-fun dynLambda!9289 (Int Int) Int)

(assert (=> b!1757678 (< (dynLambda!9283 order!12223 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) (dynLambda!9289 order!12231 lambda!70062))))

(assert (=> b!1757678 (< (dynLambda!9285 order!12227 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) (dynLambda!9289 order!12231 lambda!70062))))

(assert (=> d!536892 (= (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (seqFromList!2424 (originalCharacters!4269 (_1!10879 lt!678970)))))))

(declare-fun lt!679057 () Unit!33507)

(declare-fun Forall2of!117 (Int BalanceConc!12810 BalanceConc!12810) Unit!33507)

(assert (=> d!536892 (= lt!679057 (Forall2of!117 lambda!70062 lt!678962 (seqFromList!2424 (originalCharacters!4269 (_1!10879 lt!678970)))))))

(assert (=> d!536892 (= (list!7841 lt!678962) (list!7841 (seqFromList!2424 (originalCharacters!4269 (_1!10879 lt!678970)))))))

(assert (=> d!536892 (= (lemmaEqSameImage!366 (transformation!3455 (rule!5469 (_1!10879 lt!678970))) lt!678962 (seqFromList!2424 (originalCharacters!4269 (_1!10879 lt!678970)))) lt!679057)))

(declare-fun b_lambda!56751 () Bool)

(assert (=> (not b_lambda!56751) (not d!536892)))

(assert (=> d!536892 t!163647))

(declare-fun b_and!132219 () Bool)

(assert (= b_and!132213 (and (=> t!163647 result!127120) b_and!132219)))

(assert (=> d!536892 t!163649))

(declare-fun b_and!132221 () Bool)

(assert (= b_and!132215 (and (=> t!163649 result!127124) b_and!132221)))

(assert (=> d!536892 t!163651))

(declare-fun b_and!132223 () Bool)

(assert (= b_and!132217 (and (=> t!163651 result!127126) b_and!132223)))

(declare-fun b_lambda!56753 () Bool)

(assert (=> (not b_lambda!56753) (not d!536892)))

(declare-fun tb!105689 () Bool)

(declare-fun t!163680 () Bool)

(assert (=> (and b!1757378 (= (toValue!4974 (transformation!3455 (rule!5469 token!523))) (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163680) tb!105689))

(declare-fun result!127152 () Bool)

(assert (=> tb!105689 (= result!127152 (inv!21 (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (seqFromList!2424 (originalCharacters!4269 (_1!10879 lt!678970))))))))

(declare-fun m!2172747 () Bool)

(assert (=> tb!105689 m!2172747))

(assert (=> d!536892 t!163680))

(declare-fun b_and!132225 () Bool)

(assert (= b_and!132219 (and (=> t!163680 result!127152) b_and!132225)))

(declare-fun t!163682 () Bool)

(declare-fun tb!105691 () Bool)

(assert (=> (and b!1757385 (= (toValue!4974 (transformation!3455 rule!422)) (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163682) tb!105691))

(declare-fun result!127154 () Bool)

(assert (= result!127154 result!127152))

(assert (=> d!536892 t!163682))

(declare-fun b_and!132227 () Bool)

(assert (= b_and!132221 (and (=> t!163682 result!127154) b_and!132227)))

(declare-fun t!163684 () Bool)

(declare-fun tb!105693 () Bool)

(assert (=> (and b!1757386 (= (toValue!4974 (transformation!3455 (h!24742 rules!3447))) (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163684) tb!105693))

(declare-fun result!127156 () Bool)

(assert (= result!127156 result!127152))

(assert (=> d!536892 t!163684))

(declare-fun b_and!132229 () Bool)

(assert (= b_and!132223 (and (=> t!163684 result!127156) b_and!132229)))

(assert (=> d!536892 m!2172397))

(assert (=> d!536892 m!2172461))

(assert (=> d!536892 m!2172425))

(declare-fun m!2172749 () Bool)

(assert (=> d!536892 m!2172749))

(assert (=> d!536892 m!2172425))

(declare-fun m!2172751 () Bool)

(assert (=> d!536892 m!2172751))

(assert (=> d!536892 m!2172425))

(declare-fun m!2172753 () Bool)

(assert (=> d!536892 m!2172753))

(assert (=> b!1757381 d!536892))

(declare-fun d!536894 () Bool)

(assert (=> d!536894 (= (inv!25110 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (value!108140 (_1!10879 lt!678970)))) (isBalanced!2008 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (value!108140 (_1!10879 lt!678970))))))))

(declare-fun bs!403898 () Bool)

(assert (= bs!403898 d!536894))

(declare-fun m!2172755 () Bool)

(assert (=> bs!403898 m!2172755))

(assert (=> tb!105647 d!536894))

(declare-fun d!536896 () Bool)

(declare-fun choose!10870 (Int) Bool)

(assert (=> d!536896 (= (Forall!822 lambda!70052) (choose!10870 lambda!70052))))

(declare-fun bs!403899 () Bool)

(assert (= bs!403899 d!536896))

(declare-fun m!2172757 () Bool)

(assert (=> bs!403899 m!2172757))

(assert (=> b!1757402 d!536896))

(declare-fun d!536898 () Bool)

(declare-fun e!1124920 () Bool)

(assert (=> d!536898 e!1124920))

(declare-fun res!790917 () Bool)

(assert (=> d!536898 (=> (not res!790917) (not e!1124920))))

(assert (=> d!536898 (= res!790917 (semiInverseModEq!1370 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))))))

(declare-fun Unit!33514 () Unit!33507)

(assert (=> d!536898 (= (lemmaInv!654 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) Unit!33514)))

(declare-fun b!1757681 () Bool)

(assert (=> b!1757681 (= e!1124920 (equivClasses!1311 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))))))

(assert (= (and d!536898 res!790917) b!1757681))

(declare-fun m!2172759 () Bool)

(assert (=> d!536898 m!2172759))

(declare-fun m!2172761 () Bool)

(assert (=> b!1757681 m!2172761))

(assert (=> b!1757402 d!536898))

(declare-fun d!536900 () Bool)

(assert (=> d!536900 (= (inv!25102 (tag!3815 rule!422)) (= (mod (str.len (value!108139 (tag!3815 rule!422))) 2) 0))))

(assert (=> b!1757380 d!536900))

(declare-fun d!536902 () Bool)

(declare-fun res!790918 () Bool)

(declare-fun e!1124921 () Bool)

(assert (=> d!536902 (=> (not res!790918) (not e!1124921))))

(assert (=> d!536902 (= res!790918 (semiInverseModEq!1370 (toChars!4833 (transformation!3455 rule!422)) (toValue!4974 (transformation!3455 rule!422))))))

(assert (=> d!536902 (= (inv!25107 (transformation!3455 rule!422)) e!1124921)))

(declare-fun b!1757682 () Bool)

(assert (=> b!1757682 (= e!1124921 (equivClasses!1311 (toChars!4833 (transformation!3455 rule!422)) (toValue!4974 (transformation!3455 rule!422))))))

(assert (= (and d!536902 res!790918) b!1757682))

(declare-fun m!2172763 () Bool)

(assert (=> d!536902 m!2172763))

(declare-fun m!2172765 () Bool)

(assert (=> b!1757682 m!2172765))

(assert (=> b!1757380 d!536902))

(declare-fun b!1757693 () Bool)

(declare-fun e!1124930 () Bool)

(declare-fun inv!16 (TokenValue!3545) Bool)

(assert (=> b!1757693 (= e!1124930 (inv!16 (value!108140 token!523)))))

(declare-fun b!1757695 () Bool)

(declare-fun e!1124929 () Bool)

(declare-fun inv!17 (TokenValue!3545) Bool)

(assert (=> b!1757695 (= e!1124929 (inv!17 (value!108140 token!523)))))

(declare-fun b!1757694 () Bool)

(assert (=> b!1757694 (= e!1124930 e!1124929)))

(declare-fun c!286456 () Bool)

(assert (=> b!1757694 (= c!286456 ((_ is IntegerValue!10636) (value!108140 token!523)))))

(declare-fun d!536904 () Bool)

(declare-fun c!286455 () Bool)

(assert (=> d!536904 (= c!286455 ((_ is IntegerValue!10635) (value!108140 token!523)))))

(assert (=> d!536904 (= (inv!21 (value!108140 token!523)) e!1124930)))

(declare-fun b!1757696 () Bool)

(declare-fun res!790921 () Bool)

(declare-fun e!1124928 () Bool)

(assert (=> b!1757696 (=> res!790921 e!1124928)))

(assert (=> b!1757696 (= res!790921 (not ((_ is IntegerValue!10637) (value!108140 token!523))))))

(assert (=> b!1757696 (= e!1124929 e!1124928)))

(declare-fun b!1757697 () Bool)

(declare-fun inv!15 (TokenValue!3545) Bool)

(assert (=> b!1757697 (= e!1124928 (inv!15 (value!108140 token!523)))))

(assert (= (and d!536904 c!286455) b!1757693))

(assert (= (and d!536904 (not c!286455)) b!1757694))

(assert (= (and b!1757694 c!286456) b!1757695))

(assert (= (and b!1757694 (not c!286456)) b!1757696))

(assert (= (and b!1757696 (not res!790921)) b!1757697))

(declare-fun m!2172767 () Bool)

(assert (=> b!1757693 m!2172767))

(declare-fun m!2172769 () Bool)

(assert (=> b!1757695 m!2172769))

(declare-fun m!2172771 () Bool)

(assert (=> b!1757697 m!2172771))

(assert (=> b!1757390 d!536904))

(declare-fun d!536906 () Bool)

(assert (=> d!536906 (= (inv!25102 (tag!3815 (rule!5469 token!523))) (= (mod (str.len (value!108139 (tag!3815 (rule!5469 token!523)))) 2) 0))))

(assert (=> b!1757389 d!536906))

(declare-fun d!536908 () Bool)

(declare-fun res!790922 () Bool)

(declare-fun e!1124931 () Bool)

(assert (=> d!536908 (=> (not res!790922) (not e!1124931))))

(assert (=> d!536908 (= res!790922 (semiInverseModEq!1370 (toChars!4833 (transformation!3455 (rule!5469 token!523))) (toValue!4974 (transformation!3455 (rule!5469 token!523)))))))

(assert (=> d!536908 (= (inv!25107 (transformation!3455 (rule!5469 token!523))) e!1124931)))

(declare-fun b!1757698 () Bool)

(assert (=> b!1757698 (= e!1124931 (equivClasses!1311 (toChars!4833 (transformation!3455 (rule!5469 token!523))) (toValue!4974 (transformation!3455 (rule!5469 token!523)))))))

(assert (= (and d!536908 res!790922) b!1757698))

(declare-fun m!2172773 () Bool)

(assert (=> d!536908 m!2172773))

(declare-fun m!2172775 () Bool)

(assert (=> b!1757698 m!2172775))

(assert (=> b!1757389 d!536908))

(declare-fun d!536910 () Bool)

(declare-fun c!286457 () Bool)

(assert (=> d!536910 (= c!286457 ((_ is Node!6433) (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962)))))))

(declare-fun e!1124932 () Bool)

(assert (=> d!536910 (= (inv!25109 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962)))) e!1124932)))

(declare-fun b!1757699 () Bool)

(assert (=> b!1757699 (= e!1124932 (inv!25113 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962)))))))

(declare-fun b!1757700 () Bool)

(declare-fun e!1124933 () Bool)

(assert (=> b!1757700 (= e!1124932 e!1124933)))

(declare-fun res!790923 () Bool)

(assert (=> b!1757700 (= res!790923 (not ((_ is Leaf!9381) (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962))))))))

(assert (=> b!1757700 (=> res!790923 e!1124933)))

(declare-fun b!1757701 () Bool)

(assert (=> b!1757701 (= e!1124933 (inv!25114 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962)))))))

(assert (= (and d!536910 c!286457) b!1757699))

(assert (= (and d!536910 (not c!286457)) b!1757700))

(assert (= (and b!1757700 (not res!790923)) b!1757701))

(declare-fun m!2172777 () Bool)

(assert (=> b!1757699 m!2172777))

(declare-fun m!2172779 () Bool)

(assert (=> b!1757701 m!2172779))

(assert (=> b!1757422 d!536910))

(declare-fun d!536912 () Bool)

(declare-fun c!286460 () Bool)

(assert (=> d!536912 (= c!286460 (isEmpty!12198 (++!5279 lt!678951 (Cons!19340 (head!4062 suffix!1421) Nil!19340))))))

(declare-fun e!1124936 () Bool)

(assert (=> d!536912 (= (prefixMatch!666 (rulesRegex!811 thiss!24550 rules!3447) (++!5279 lt!678951 (Cons!19340 (head!4062 suffix!1421) Nil!19340))) e!1124936)))

(declare-fun b!1757706 () Bool)

(declare-fun lostCause!566 (Regex!4783) Bool)

(assert (=> b!1757706 (= e!1124936 (not (lostCause!566 (rulesRegex!811 thiss!24550 rules!3447))))))

(declare-fun b!1757707 () Bool)

(assert (=> b!1757707 (= e!1124936 (prefixMatch!666 (derivativeStep!1223 (rulesRegex!811 thiss!24550 rules!3447) (head!4062 (++!5279 lt!678951 (Cons!19340 (head!4062 suffix!1421) Nil!19340)))) (tail!2627 (++!5279 lt!678951 (Cons!19340 (head!4062 suffix!1421) Nil!19340)))))))

(assert (= (and d!536912 c!286460) b!1757706))

(assert (= (and d!536912 (not c!286460)) b!1757707))

(assert (=> d!536912 m!2172393))

(declare-fun m!2172781 () Bool)

(assert (=> d!536912 m!2172781))

(assert (=> b!1757706 m!2172389))

(declare-fun m!2172783 () Bool)

(assert (=> b!1757706 m!2172783))

(assert (=> b!1757707 m!2172393))

(declare-fun m!2172785 () Bool)

(assert (=> b!1757707 m!2172785))

(assert (=> b!1757707 m!2172389))

(assert (=> b!1757707 m!2172785))

(declare-fun m!2172787 () Bool)

(assert (=> b!1757707 m!2172787))

(assert (=> b!1757707 m!2172393))

(declare-fun m!2172789 () Bool)

(assert (=> b!1757707 m!2172789))

(assert (=> b!1757707 m!2172787))

(assert (=> b!1757707 m!2172789))

(declare-fun m!2172791 () Bool)

(assert (=> b!1757707 m!2172791))

(assert (=> b!1757388 d!536912))

(declare-fun d!536914 () Bool)

(declare-fun lt!679094 () Unit!33507)

(declare-fun lemma!379 (List!19411 LexerInterface!3084 List!19411) Unit!33507)

(assert (=> d!536914 (= lt!679094 (lemma!379 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70065 () Int)

(declare-datatypes ((List!19416 0))(
  ( (Nil!19346) (Cons!19346 (h!24747 Regex!4783) (t!163735 List!19416)) )
))
(declare-fun generalisedUnion!387 (List!19416) Regex!4783)

(declare-fun map!3986 (List!19411 Int) List!19416)

(assert (=> d!536914 (= (rulesRegex!811 thiss!24550 rules!3447) (generalisedUnion!387 (map!3986 rules!3447 lambda!70065)))))

(declare-fun bs!403900 () Bool)

(assert (= bs!403900 d!536914))

(declare-fun m!2172793 () Bool)

(assert (=> bs!403900 m!2172793))

(declare-fun m!2172795 () Bool)

(assert (=> bs!403900 m!2172795))

(assert (=> bs!403900 m!2172795))

(declare-fun m!2172797 () Bool)

(assert (=> bs!403900 m!2172797))

(assert (=> b!1757388 d!536914))

(declare-fun e!1124945 () Bool)

(declare-fun b!1757727 () Bool)

(declare-fun lt!679097 () List!19410)

(assert (=> b!1757727 (= e!1124945 (or (not (= (Cons!19340 (head!4062 suffix!1421) Nil!19340) Nil!19340)) (= lt!679097 lt!678951)))))

(declare-fun b!1757724 () Bool)

(declare-fun e!1124946 () List!19410)

(assert (=> b!1757724 (= e!1124946 (Cons!19340 (head!4062 suffix!1421) Nil!19340))))

(declare-fun b!1757726 () Bool)

(declare-fun res!790933 () Bool)

(assert (=> b!1757726 (=> (not res!790933) (not e!1124945))))

(assert (=> b!1757726 (= res!790933 (= (size!15365 lt!679097) (+ (size!15365 lt!678951) (size!15365 (Cons!19340 (head!4062 suffix!1421) Nil!19340)))))))

(declare-fun b!1757725 () Bool)

(assert (=> b!1757725 (= e!1124946 (Cons!19340 (h!24741 lt!678951) (++!5279 (t!163653 lt!678951) (Cons!19340 (head!4062 suffix!1421) Nil!19340))))))

(declare-fun d!536916 () Bool)

(assert (=> d!536916 e!1124945))

(declare-fun res!790932 () Bool)

(assert (=> d!536916 (=> (not res!790932) (not e!1124945))))

(declare-fun content!2788 (List!19410) (InoxSet C!9740))

(assert (=> d!536916 (= res!790932 (= (content!2788 lt!679097) ((_ map or) (content!2788 lt!678951) (content!2788 (Cons!19340 (head!4062 suffix!1421) Nil!19340)))))))

(assert (=> d!536916 (= lt!679097 e!1124946)))

(declare-fun c!286465 () Bool)

(assert (=> d!536916 (= c!286465 ((_ is Nil!19340) lt!678951))))

(assert (=> d!536916 (= (++!5279 lt!678951 (Cons!19340 (head!4062 suffix!1421) Nil!19340)) lt!679097)))

(assert (= (and d!536916 c!286465) b!1757724))

(assert (= (and d!536916 (not c!286465)) b!1757725))

(assert (= (and d!536916 res!790932) b!1757726))

(assert (= (and b!1757726 res!790933) b!1757727))

(declare-fun m!2172799 () Bool)

(assert (=> b!1757726 m!2172799))

(assert (=> b!1757726 m!2172701))

(declare-fun m!2172801 () Bool)

(assert (=> b!1757726 m!2172801))

(declare-fun m!2172803 () Bool)

(assert (=> b!1757725 m!2172803))

(declare-fun m!2172805 () Bool)

(assert (=> d!536916 m!2172805))

(declare-fun m!2172807 () Bool)

(assert (=> d!536916 m!2172807))

(declare-fun m!2172809 () Bool)

(assert (=> d!536916 m!2172809))

(assert (=> b!1757388 d!536916))

(declare-fun d!536918 () Bool)

(assert (=> d!536918 (= (head!4062 suffix!1421) (h!24741 suffix!1421))))

(assert (=> b!1757388 d!536918))

(assert (=> b!1757387 d!536818))

(declare-fun d!536920 () Bool)

(assert (=> d!536920 (= (list!7841 lt!678962) (list!7842 (c!286407 lt!678962)))))

(declare-fun bs!403901 () Bool)

(assert (= bs!403901 d!536920))

(declare-fun m!2172811 () Bool)

(assert (=> bs!403901 m!2172811))

(assert (=> b!1757387 d!536920))

(declare-fun d!536922 () Bool)

(assert (=> d!536922 (isPrefix!1695 lt!678961 (++!5279 lt!678961 (_2!10879 lt!678970)))))

(declare-fun lt!679117 () Unit!33507)

(declare-fun choose!10871 (List!19410 List!19410) Unit!33507)

(assert (=> d!536922 (= lt!679117 (choose!10871 lt!678961 (_2!10879 lt!678970)))))

(assert (=> d!536922 (= (lemmaConcatTwoListThenFirstIsPrefix!1204 lt!678961 (_2!10879 lt!678970)) lt!679117)))

(declare-fun bs!403902 () Bool)

(assert (= bs!403902 d!536922))

(assert (=> bs!403902 m!2172467))

(assert (=> bs!403902 m!2172467))

(declare-fun m!2172853 () Bool)

(assert (=> bs!403902 m!2172853))

(declare-fun m!2172855 () Bool)

(assert (=> bs!403902 m!2172855))

(assert (=> b!1757387 d!536922))

(declare-fun d!536924 () Bool)

(assert (=> d!536924 (= (get!5878 lt!678965) (v!25387 lt!678965))))

(assert (=> b!1757387 d!536924))

(declare-fun d!536928 () Bool)

(declare-fun e!1124960 () Bool)

(assert (=> d!536928 e!1124960))

(declare-fun res!790951 () Bool)

(assert (=> d!536928 (=> res!790951 e!1124960)))

(declare-fun lt!679122 () Bool)

(assert (=> d!536928 (= res!790951 (not lt!679122))))

(declare-fun e!1124959 () Bool)

(assert (=> d!536928 (= lt!679122 e!1124959)))

(declare-fun res!790948 () Bool)

(assert (=> d!536928 (=> res!790948 e!1124959)))

(assert (=> d!536928 (= res!790948 ((_ is Nil!19340) lt!678961))))

(assert (=> d!536928 (= (isPrefix!1695 lt!678961 lt!678952) lt!679122)))

(declare-fun b!1757749 () Bool)

(declare-fun res!790950 () Bool)

(declare-fun e!1124961 () Bool)

(assert (=> b!1757749 (=> (not res!790950) (not e!1124961))))

(assert (=> b!1757749 (= res!790950 (= (head!4062 lt!678961) (head!4062 lt!678952)))))

(declare-fun b!1757748 () Bool)

(assert (=> b!1757748 (= e!1124959 e!1124961)))

(declare-fun res!790949 () Bool)

(assert (=> b!1757748 (=> (not res!790949) (not e!1124961))))

(assert (=> b!1757748 (= res!790949 (not ((_ is Nil!19340) lt!678952)))))

(declare-fun b!1757751 () Bool)

(assert (=> b!1757751 (= e!1124960 (>= (size!15365 lt!678952) (size!15365 lt!678961)))))

(declare-fun b!1757750 () Bool)

(assert (=> b!1757750 (= e!1124961 (isPrefix!1695 (tail!2627 lt!678961) (tail!2627 lt!678952)))))

(assert (= (and d!536928 (not res!790948)) b!1757748))

(assert (= (and b!1757748 res!790949) b!1757749))

(assert (= (and b!1757749 res!790950) b!1757750))

(assert (= (and d!536928 (not res!790951)) b!1757751))

(assert (=> b!1757749 m!2172543))

(declare-fun m!2172867 () Bool)

(assert (=> b!1757749 m!2172867))

(declare-fun m!2172869 () Bool)

(assert (=> b!1757751 m!2172869))

(assert (=> b!1757751 m!2172379))

(assert (=> b!1757750 m!2172547))

(declare-fun m!2172871 () Bool)

(assert (=> b!1757750 m!2172871))

(assert (=> b!1757750 m!2172547))

(assert (=> b!1757750 m!2172871))

(declare-fun m!2172873 () Bool)

(assert (=> b!1757750 m!2172873))

(assert (=> b!1757387 d!536928))

(declare-fun d!536930 () Bool)

(declare-fun e!1124964 () Bool)

(assert (=> d!536930 e!1124964))

(declare-fun res!790957 () Bool)

(assert (=> d!536930 (=> res!790957 e!1124964)))

(declare-fun lt!679124 () Bool)

(assert (=> d!536930 (= res!790957 (not lt!679124))))

(declare-fun e!1124962 () Bool)

(assert (=> d!536930 (= lt!679124 e!1124962)))

(declare-fun res!790954 () Bool)

(assert (=> d!536930 (=> res!790954 e!1124962)))

(assert (=> d!536930 (= res!790954 ((_ is Nil!19340) lt!678961))))

(assert (=> d!536930 (= (isPrefix!1695 lt!678961 lt!678954) lt!679124)))

(declare-fun b!1757757 () Bool)

(declare-fun res!790956 () Bool)

(declare-fun e!1124966 () Bool)

(assert (=> b!1757757 (=> (not res!790956) (not e!1124966))))

(assert (=> b!1757757 (= res!790956 (= (head!4062 lt!678961) (head!4062 lt!678954)))))

(declare-fun b!1757756 () Bool)

(assert (=> b!1757756 (= e!1124962 e!1124966)))

(declare-fun res!790955 () Bool)

(assert (=> b!1757756 (=> (not res!790955) (not e!1124966))))

(assert (=> b!1757756 (= res!790955 (not ((_ is Nil!19340) lt!678954)))))

(declare-fun b!1757759 () Bool)

(assert (=> b!1757759 (= e!1124964 (>= (size!15365 lt!678954) (size!15365 lt!678961)))))

(declare-fun b!1757758 () Bool)

(assert (=> b!1757758 (= e!1124966 (isPrefix!1695 (tail!2627 lt!678961) (tail!2627 lt!678954)))))

(assert (= (and d!536930 (not res!790954)) b!1757756))

(assert (= (and b!1757756 res!790955) b!1757757))

(assert (= (and b!1757757 res!790956) b!1757758))

(assert (= (and d!536930 (not res!790957)) b!1757759))

(assert (=> b!1757757 m!2172543))

(declare-fun m!2172875 () Bool)

(assert (=> b!1757757 m!2172875))

(declare-fun m!2172877 () Bool)

(assert (=> b!1757759 m!2172877))

(assert (=> b!1757759 m!2172379))

(assert (=> b!1757758 m!2172547))

(declare-fun m!2172881 () Bool)

(assert (=> b!1757758 m!2172881))

(assert (=> b!1757758 m!2172547))

(assert (=> b!1757758 m!2172881))

(declare-fun m!2172889 () Bool)

(assert (=> b!1757758 m!2172889))

(assert (=> b!1757387 d!536930))

(declare-fun d!536932 () Bool)

(declare-fun e!1124980 () Bool)

(assert (=> d!536932 e!1124980))

(declare-fun res!790973 () Bool)

(assert (=> d!536932 (=> (not res!790973) (not e!1124980))))

(assert (=> d!536932 (= res!790973 (isDefined!3275 (getRuleFromTag!503 thiss!24550 rules!3447 (tag!3815 (rule!5469 (_1!10879 lt!678970))))))))

(declare-fun lt!679134 () Unit!33507)

(declare-fun choose!10872 (LexerInterface!3084 List!19411 List!19410 Token!6476) Unit!33507)

(assert (=> d!536932 (= lt!679134 (choose!10872 thiss!24550 rules!3447 lt!678954 (_1!10879 lt!678970)))))

(assert (=> d!536932 (rulesInvariant!2753 thiss!24550 rules!3447)))

(assert (=> d!536932 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!503 thiss!24550 rules!3447 lt!678954 (_1!10879 lt!678970)) lt!679134)))

(declare-fun b!1757781 () Bool)

(declare-fun res!790974 () Bool)

(assert (=> b!1757781 (=> (not res!790974) (not e!1124980))))

(assert (=> b!1757781 (= res!790974 (matchR!2256 (regex!3455 (get!5877 (getRuleFromTag!503 thiss!24550 rules!3447 (tag!3815 (rule!5469 (_1!10879 lt!678970)))))) (list!7841 (charsOf!2104 (_1!10879 lt!678970)))))))

(declare-fun b!1757782 () Bool)

(assert (=> b!1757782 (= e!1124980 (= (rule!5469 (_1!10879 lt!678970)) (get!5877 (getRuleFromTag!503 thiss!24550 rules!3447 (tag!3815 (rule!5469 (_1!10879 lt!678970)))))))))

(assert (= (and d!536932 res!790973) b!1757781))

(assert (= (and b!1757781 res!790974) b!1757782))

(assert (=> d!536932 m!2172471))

(assert (=> d!536932 m!2172471))

(declare-fun m!2172939 () Bool)

(assert (=> d!536932 m!2172939))

(declare-fun m!2172941 () Bool)

(assert (=> d!536932 m!2172941))

(assert (=> d!536932 m!2172369))

(assert (=> b!1757781 m!2172471))

(assert (=> b!1757781 m!2172431))

(assert (=> b!1757781 m!2172433))

(assert (=> b!1757781 m!2172433))

(declare-fun m!2172943 () Bool)

(assert (=> b!1757781 m!2172943))

(assert (=> b!1757781 m!2172431))

(assert (=> b!1757781 m!2172471))

(declare-fun m!2172945 () Bool)

(assert (=> b!1757781 m!2172945))

(assert (=> b!1757782 m!2172471))

(assert (=> b!1757782 m!2172471))

(assert (=> b!1757782 m!2172945))

(assert (=> b!1757387 d!536932))

(declare-fun d!536952 () Bool)

(declare-fun e!1124983 () Bool)

(assert (=> d!536952 e!1124983))

(declare-fun res!790977 () Bool)

(assert (=> d!536952 (=> res!790977 e!1124983)))

(declare-fun lt!679138 () Option!3933)

(assert (=> d!536952 (= res!790977 (isEmpty!12202 lt!679138))))

(declare-fun e!1124981 () Option!3933)

(assert (=> d!536952 (= lt!679138 e!1124981)))

(declare-fun c!286473 () Bool)

(assert (=> d!536952 (= c!286473 (and ((_ is Cons!19341) rules!3447) ((_ is Nil!19341) (t!163654 rules!3447))))))

(declare-fun lt!679136 () Unit!33507)

(declare-fun lt!679137 () Unit!33507)

(assert (=> d!536952 (= lt!679136 lt!679137)))

(assert (=> d!536952 (isPrefix!1695 lt!678954 lt!678954)))

(assert (=> d!536952 (= lt!679137 (lemmaIsPrefixRefl!1122 lt!678954 lt!678954))))

(assert (=> d!536952 (rulesValidInductive!1160 thiss!24550 rules!3447)))

(assert (=> d!536952 (= (maxPrefix!1638 thiss!24550 rules!3447 lt!678954) lt!679138)))

(declare-fun b!1757783 () Bool)

(declare-fun res!790979 () Bool)

(declare-fun e!1124982 () Bool)

(assert (=> b!1757783 (=> (not res!790979) (not e!1124982))))

(assert (=> b!1757783 (= res!790979 (= (value!108140 (_1!10879 (get!5878 lt!679138))) (apply!5255 (transformation!3455 (rule!5469 (_1!10879 (get!5878 lt!679138)))) (seqFromList!2424 (originalCharacters!4269 (_1!10879 (get!5878 lt!679138)))))))))

(declare-fun call!110586 () Option!3933)

(declare-fun bm!110581 () Bool)

(assert (=> bm!110581 (= call!110586 (maxPrefixOneRule!1007 thiss!24550 (h!24742 rules!3447) lt!678954))))

(declare-fun b!1757784 () Bool)

(assert (=> b!1757784 (= e!1124983 e!1124982)))

(declare-fun res!790980 () Bool)

(assert (=> b!1757784 (=> (not res!790980) (not e!1124982))))

(assert (=> b!1757784 (= res!790980 (isDefined!3276 lt!679138))))

(declare-fun b!1757785 () Bool)

(declare-fun res!790976 () Bool)

(assert (=> b!1757785 (=> (not res!790976) (not e!1124982))))

(assert (=> b!1757785 (= res!790976 (= (list!7841 (charsOf!2104 (_1!10879 (get!5878 lt!679138)))) (originalCharacters!4269 (_1!10879 (get!5878 lt!679138)))))))

(declare-fun b!1757786 () Bool)

(declare-fun res!790978 () Bool)

(assert (=> b!1757786 (=> (not res!790978) (not e!1124982))))

(assert (=> b!1757786 (= res!790978 (= (++!5279 (list!7841 (charsOf!2104 (_1!10879 (get!5878 lt!679138)))) (_2!10879 (get!5878 lt!679138))) lt!678954))))

(declare-fun b!1757787 () Bool)

(declare-fun res!790975 () Bool)

(assert (=> b!1757787 (=> (not res!790975) (not e!1124982))))

(assert (=> b!1757787 (= res!790975 (< (size!15365 (_2!10879 (get!5878 lt!679138))) (size!15365 lt!678954)))))

(declare-fun b!1757788 () Bool)

(assert (=> b!1757788 (= e!1124982 (contains!3483 rules!3447 (rule!5469 (_1!10879 (get!5878 lt!679138)))))))

(declare-fun b!1757789 () Bool)

(declare-fun lt!679135 () Option!3933)

(declare-fun lt!679139 () Option!3933)

(assert (=> b!1757789 (= e!1124981 (ite (and ((_ is None!3932) lt!679135) ((_ is None!3932) lt!679139)) None!3932 (ite ((_ is None!3932) lt!679139) lt!679135 (ite ((_ is None!3932) lt!679135) lt!679139 (ite (>= (size!15363 (_1!10879 (v!25387 lt!679135))) (size!15363 (_1!10879 (v!25387 lt!679139)))) lt!679135 lt!679139)))))))

(assert (=> b!1757789 (= lt!679135 call!110586)))

(assert (=> b!1757789 (= lt!679139 (maxPrefix!1638 thiss!24550 (t!163654 rules!3447) lt!678954))))

(declare-fun b!1757790 () Bool)

(declare-fun res!790981 () Bool)

(assert (=> b!1757790 (=> (not res!790981) (not e!1124982))))

(assert (=> b!1757790 (= res!790981 (matchR!2256 (regex!3455 (rule!5469 (_1!10879 (get!5878 lt!679138)))) (list!7841 (charsOf!2104 (_1!10879 (get!5878 lt!679138))))))))

(declare-fun b!1757791 () Bool)

(assert (=> b!1757791 (= e!1124981 call!110586)))

(assert (= (and d!536952 c!286473) b!1757791))

(assert (= (and d!536952 (not c!286473)) b!1757789))

(assert (= (or b!1757791 b!1757789) bm!110581))

(assert (= (and d!536952 (not res!790977)) b!1757784))

(assert (= (and b!1757784 res!790980) b!1757785))

(assert (= (and b!1757785 res!790976) b!1757787))

(assert (= (and b!1757787 res!790975) b!1757786))

(assert (= (and b!1757786 res!790978) b!1757783))

(assert (= (and b!1757783 res!790979) b!1757790))

(assert (= (and b!1757790 res!790981) b!1757788))

(declare-fun m!2172947 () Bool)

(assert (=> bm!110581 m!2172947))

(declare-fun m!2172949 () Bool)

(assert (=> b!1757786 m!2172949))

(declare-fun m!2172951 () Bool)

(assert (=> b!1757786 m!2172951))

(assert (=> b!1757786 m!2172951))

(declare-fun m!2172953 () Bool)

(assert (=> b!1757786 m!2172953))

(assert (=> b!1757786 m!2172953))

(declare-fun m!2172955 () Bool)

(assert (=> b!1757786 m!2172955))

(assert (=> b!1757787 m!2172949))

(declare-fun m!2172957 () Bool)

(assert (=> b!1757787 m!2172957))

(assert (=> b!1757787 m!2172877))

(declare-fun m!2172959 () Bool)

(assert (=> d!536952 m!2172959))

(declare-fun m!2172961 () Bool)

(assert (=> d!536952 m!2172961))

(declare-fun m!2172963 () Bool)

(assert (=> d!536952 m!2172963))

(assert (=> d!536952 m!2172709))

(assert (=> b!1757785 m!2172949))

(assert (=> b!1757785 m!2172951))

(assert (=> b!1757785 m!2172951))

(assert (=> b!1757785 m!2172953))

(assert (=> b!1757790 m!2172949))

(assert (=> b!1757790 m!2172951))

(assert (=> b!1757790 m!2172951))

(assert (=> b!1757790 m!2172953))

(assert (=> b!1757790 m!2172953))

(declare-fun m!2172965 () Bool)

(assert (=> b!1757790 m!2172965))

(assert (=> b!1757783 m!2172949))

(declare-fun m!2172967 () Bool)

(assert (=> b!1757783 m!2172967))

(assert (=> b!1757783 m!2172967))

(declare-fun m!2172969 () Bool)

(assert (=> b!1757783 m!2172969))

(declare-fun m!2172971 () Bool)

(assert (=> b!1757784 m!2172971))

(declare-fun m!2172973 () Bool)

(assert (=> b!1757789 m!2172973))

(assert (=> b!1757788 m!2172949))

(declare-fun m!2172975 () Bool)

(assert (=> b!1757788 m!2172975))

(assert (=> b!1757387 d!536952))

(declare-fun d!536954 () Bool)

(assert (=> d!536954 (isPrefix!1695 lt!678951 (++!5279 lt!678951 suffix!1421))))

(declare-fun lt!679142 () Unit!33507)

(assert (=> d!536954 (= lt!679142 (choose!10871 lt!678951 suffix!1421))))

(assert (=> d!536954 (= (lemmaConcatTwoListThenFirstIsPrefix!1204 lt!678951 suffix!1421) lt!679142)))

(declare-fun bs!403906 () Bool)

(assert (= bs!403906 d!536954))

(assert (=> bs!403906 m!2172469))

(assert (=> bs!403906 m!2172469))

(declare-fun m!2172977 () Bool)

(assert (=> bs!403906 m!2172977))

(declare-fun m!2172979 () Bool)

(assert (=> bs!403906 m!2172979))

(assert (=> b!1757387 d!536954))

(declare-fun b!1757983 () Bool)

(declare-fun e!1125088 () Unit!33507)

(declare-fun Unit!33515 () Unit!33507)

(assert (=> b!1757983 (= e!1125088 Unit!33515)))

(declare-fun lt!679211 () List!19410)

(assert (=> b!1757983 (= lt!679211 (++!5279 lt!678951 suffix!1421))))

(declare-fun lt!679213 () Token!6476)

(declare-fun lt!679212 () Unit!33507)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!313 (LexerInterface!3084 Rule!6710 List!19411 List!19410) Unit!33507)

(assert (=> b!1757983 (= lt!679212 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!313 thiss!24550 (rule!5469 lt!679213) rules!3447 lt!679211))))

(assert (=> b!1757983 (isEmpty!12202 (maxPrefixOneRule!1007 thiss!24550 (rule!5469 lt!679213) lt!679211))))

(declare-fun lt!679217 () Unit!33507)

(assert (=> b!1757983 (= lt!679217 lt!679212)))

(declare-fun lt!679206 () List!19410)

(assert (=> b!1757983 (= lt!679206 (list!7841 (charsOf!2104 lt!679213)))))

(declare-fun lt!679202 () Unit!33507)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!309 (LexerInterface!3084 Rule!6710 List!19410 List!19410) Unit!33507)

(assert (=> b!1757983 (= lt!679202 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!309 thiss!24550 (rule!5469 lt!679213) lt!679206 (++!5279 lt!678951 suffix!1421)))))

(assert (=> b!1757983 (not (matchR!2256 (regex!3455 (rule!5469 lt!679213)) lt!679206))))

(declare-fun lt!679214 () Unit!33507)

(assert (=> b!1757983 (= lt!679214 lt!679202)))

(assert (=> b!1757983 false))

(declare-fun d!536956 () Bool)

(assert (=> d!536956 (isDefined!3276 (maxPrefix!1638 thiss!24550 rules!3447 (++!5279 lt!678951 suffix!1421)))))

(declare-fun lt!679201 () Unit!33507)

(assert (=> d!536956 (= lt!679201 e!1125088)))

(declare-fun c!286501 () Bool)

(assert (=> d!536956 (= c!286501 (isEmpty!12202 (maxPrefix!1638 thiss!24550 rules!3447 (++!5279 lt!678951 suffix!1421))))))

(declare-fun lt!679209 () Unit!33507)

(declare-fun lt!679216 () Unit!33507)

(assert (=> d!536956 (= lt!679209 lt!679216)))

(declare-fun e!1125089 () Bool)

(assert (=> d!536956 e!1125089))

(declare-fun res!791059 () Bool)

(assert (=> d!536956 (=> (not res!791059) (not e!1125089))))

(assert (=> d!536956 (= res!791059 (isDefined!3275 (getRuleFromTag!503 thiss!24550 rules!3447 (tag!3815 (rule!5469 lt!679213)))))))

(assert (=> d!536956 (= lt!679216 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!503 thiss!24550 rules!3447 lt!678951 lt!679213))))

(declare-fun lt!679204 () Unit!33507)

(declare-fun lt!679208 () Unit!33507)

(assert (=> d!536956 (= lt!679204 lt!679208)))

(declare-fun lt!679215 () List!19410)

(assert (=> d!536956 (isPrefix!1695 lt!679215 (++!5279 lt!678951 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!305 (List!19410 List!19410 List!19410) Unit!33507)

(assert (=> d!536956 (= lt!679208 (lemmaPrefixStaysPrefixWhenAddingToSuffix!305 lt!679215 lt!678951 suffix!1421))))

(assert (=> d!536956 (= lt!679215 (list!7841 (charsOf!2104 lt!679213)))))

(declare-fun lt!679203 () Unit!33507)

(declare-fun lt!679205 () Unit!33507)

(assert (=> d!536956 (= lt!679203 lt!679205)))

(declare-fun lt!679207 () List!19410)

(declare-fun lt!679210 () List!19410)

(assert (=> d!536956 (isPrefix!1695 lt!679207 (++!5279 lt!679207 lt!679210))))

(assert (=> d!536956 (= lt!679205 (lemmaConcatTwoListThenFirstIsPrefix!1204 lt!679207 lt!679210))))

(assert (=> d!536956 (= lt!679210 (_2!10879 (get!5878 (maxPrefix!1638 thiss!24550 rules!3447 lt!678951))))))

(assert (=> d!536956 (= lt!679207 (list!7841 (charsOf!2104 lt!679213)))))

(declare-datatypes ((List!19417 0))(
  ( (Nil!19347) (Cons!19347 (h!24748 Token!6476) (t!163736 List!19417)) )
))
(declare-fun head!4064 (List!19417) Token!6476)

(declare-datatypes ((IArray!12875 0))(
  ( (IArray!12876 (innerList!6495 List!19417)) )
))
(declare-datatypes ((Conc!6435 0))(
  ( (Node!6435 (left!15484 Conc!6435) (right!15814 Conc!6435) (csize!13100 Int) (cheight!6646 Int)) (Leaf!9383 (xs!9311 IArray!12875) (csize!13101 Int)) (Empty!6435) )
))
(declare-datatypes ((BalanceConc!12814 0))(
  ( (BalanceConc!12815 (c!286513 Conc!6435)) )
))
(declare-fun list!7845 (BalanceConc!12814) List!19417)

(declare-datatypes ((tuple2!18958 0))(
  ( (tuple2!18959 (_1!10881 BalanceConc!12814) (_2!10881 BalanceConc!12810)) )
))
(declare-fun lex!1444 (LexerInterface!3084 List!19411 BalanceConc!12810) tuple2!18958)

(assert (=> d!536956 (= lt!679213 (head!4064 (list!7845 (_1!10881 (lex!1444 thiss!24550 rules!3447 (seqFromList!2424 lt!678951))))))))

(assert (=> d!536956 (not (isEmpty!12199 rules!3447))))

(assert (=> d!536956 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!606 thiss!24550 rules!3447 lt!678951 suffix!1421) lt!679201)))

(declare-fun b!1757982 () Bool)

(assert (=> b!1757982 (= e!1125089 (= (rule!5469 lt!679213) (get!5877 (getRuleFromTag!503 thiss!24550 rules!3447 (tag!3815 (rule!5469 lt!679213))))))))

(declare-fun b!1757984 () Bool)

(declare-fun Unit!33516 () Unit!33507)

(assert (=> b!1757984 (= e!1125088 Unit!33516)))

(declare-fun b!1757981 () Bool)

(declare-fun res!791058 () Bool)

(assert (=> b!1757981 (=> (not res!791058) (not e!1125089))))

(assert (=> b!1757981 (= res!791058 (matchR!2256 (regex!3455 (get!5877 (getRuleFromTag!503 thiss!24550 rules!3447 (tag!3815 (rule!5469 lt!679213))))) (list!7841 (charsOf!2104 lt!679213))))))

(assert (= (and d!536956 res!791059) b!1757981))

(assert (= (and b!1757981 res!791058) b!1757982))

(assert (= (and d!536956 c!286501) b!1757983))

(assert (= (and d!536956 (not c!286501)) b!1757984))

(declare-fun m!2173167 () Bool)

(assert (=> b!1757983 m!2173167))

(declare-fun m!2173169 () Bool)

(assert (=> b!1757983 m!2173169))

(assert (=> b!1757983 m!2173167))

(declare-fun m!2173171 () Bool)

(assert (=> b!1757983 m!2173171))

(declare-fun m!2173173 () Bool)

(assert (=> b!1757983 m!2173173))

(assert (=> b!1757983 m!2172469))

(declare-fun m!2173175 () Bool)

(assert (=> b!1757983 m!2173175))

(declare-fun m!2173177 () Bool)

(assert (=> b!1757983 m!2173177))

(assert (=> b!1757983 m!2172469))

(assert (=> b!1757983 m!2173173))

(declare-fun m!2173179 () Bool)

(assert (=> b!1757983 m!2173179))

(assert (=> d!536956 m!2172469))

(declare-fun m!2173181 () Bool)

(assert (=> d!536956 m!2173181))

(declare-fun m!2173183 () Bool)

(assert (=> d!536956 m!2173183))

(assert (=> d!536956 m!2172363))

(assert (=> d!536956 m!2172469))

(declare-fun m!2173185 () Bool)

(assert (=> d!536956 m!2173185))

(assert (=> d!536956 m!2172363))

(declare-fun m!2173187 () Bool)

(assert (=> d!536956 m!2173187))

(declare-fun m!2173189 () Bool)

(assert (=> d!536956 m!2173189))

(assert (=> d!536956 m!2173189))

(declare-fun m!2173191 () Bool)

(assert (=> d!536956 m!2173191))

(assert (=> d!536956 m!2173167))

(assert (=> d!536956 m!2173171))

(declare-fun m!2173193 () Bool)

(assert (=> d!536956 m!2173193))

(assert (=> d!536956 m!2173181))

(declare-fun m!2173195 () Bool)

(assert (=> d!536956 m!2173195))

(declare-fun m!2173197 () Bool)

(assert (=> d!536956 m!2173197))

(assert (=> d!536956 m!2172405))

(declare-fun m!2173199 () Bool)

(assert (=> d!536956 m!2173199))

(declare-fun m!2173201 () Bool)

(assert (=> d!536956 m!2173201))

(declare-fun m!2173203 () Bool)

(assert (=> d!536956 m!2173203))

(declare-fun m!2173205 () Bool)

(assert (=> d!536956 m!2173205))

(assert (=> d!536956 m!2173203))

(assert (=> d!536956 m!2173199))

(declare-fun m!2173207 () Bool)

(assert (=> d!536956 m!2173207))

(assert (=> d!536956 m!2173167))

(assert (=> d!536956 m!2173201))

(declare-fun m!2173209 () Bool)

(assert (=> d!536956 m!2173209))

(assert (=> d!536956 m!2173181))

(declare-fun m!2173211 () Bool)

(assert (=> d!536956 m!2173211))

(assert (=> d!536956 m!2172469))

(assert (=> b!1757982 m!2173189))

(assert (=> b!1757982 m!2173189))

(declare-fun m!2173213 () Bool)

(assert (=> b!1757982 m!2173213))

(assert (=> b!1757981 m!2173171))

(declare-fun m!2173215 () Bool)

(assert (=> b!1757981 m!2173215))

(assert (=> b!1757981 m!2173189))

(assert (=> b!1757981 m!2173213))

(assert (=> b!1757981 m!2173167))

(assert (=> b!1757981 m!2173189))

(assert (=> b!1757981 m!2173167))

(assert (=> b!1757981 m!2173171))

(assert (=> b!1757387 d!536956))

(declare-fun b!1757988 () Bool)

(declare-fun e!1125090 () Bool)

(declare-fun lt!679218 () List!19410)

(assert (=> b!1757988 (= e!1125090 (or (not (= suffix!1421 Nil!19340)) (= lt!679218 lt!678951)))))

(declare-fun b!1757985 () Bool)

(declare-fun e!1125091 () List!19410)

(assert (=> b!1757985 (= e!1125091 suffix!1421)))

(declare-fun b!1757987 () Bool)

(declare-fun res!791061 () Bool)

(assert (=> b!1757987 (=> (not res!791061) (not e!1125090))))

(assert (=> b!1757987 (= res!791061 (= (size!15365 lt!679218) (+ (size!15365 lt!678951) (size!15365 suffix!1421))))))

(declare-fun b!1757986 () Bool)

(assert (=> b!1757986 (= e!1125091 (Cons!19340 (h!24741 lt!678951) (++!5279 (t!163653 lt!678951) suffix!1421)))))

(declare-fun d!537030 () Bool)

(assert (=> d!537030 e!1125090))

(declare-fun res!791060 () Bool)

(assert (=> d!537030 (=> (not res!791060) (not e!1125090))))

(assert (=> d!537030 (= res!791060 (= (content!2788 lt!679218) ((_ map or) (content!2788 lt!678951) (content!2788 suffix!1421))))))

(assert (=> d!537030 (= lt!679218 e!1125091)))

(declare-fun c!286502 () Bool)

(assert (=> d!537030 (= c!286502 ((_ is Nil!19340) lt!678951))))

(assert (=> d!537030 (= (++!5279 lt!678951 suffix!1421) lt!679218)))

(assert (= (and d!537030 c!286502) b!1757985))

(assert (= (and d!537030 (not c!286502)) b!1757986))

(assert (= (and d!537030 res!791060) b!1757987))

(assert (= (and b!1757987 res!791061) b!1757988))

(declare-fun m!2173217 () Bool)

(assert (=> b!1757987 m!2173217))

(assert (=> b!1757987 m!2172701))

(declare-fun m!2173219 () Bool)

(assert (=> b!1757987 m!2173219))

(declare-fun m!2173221 () Bool)

(assert (=> b!1757986 m!2173221))

(declare-fun m!2173223 () Bool)

(assert (=> d!537030 m!2173223))

(assert (=> d!537030 m!2172807))

(declare-fun m!2173225 () Bool)

(assert (=> d!537030 m!2173225))

(assert (=> b!1757387 d!537030))

(declare-fun e!1125092 () Bool)

(declare-fun lt!679219 () List!19410)

(declare-fun b!1757992 () Bool)

(assert (=> b!1757992 (= e!1125092 (or (not (= (_2!10879 lt!678970) Nil!19340)) (= lt!679219 lt!678961)))))

(declare-fun b!1757989 () Bool)

(declare-fun e!1125093 () List!19410)

(assert (=> b!1757989 (= e!1125093 (_2!10879 lt!678970))))

(declare-fun b!1757991 () Bool)

(declare-fun res!791063 () Bool)

(assert (=> b!1757991 (=> (not res!791063) (not e!1125092))))

(assert (=> b!1757991 (= res!791063 (= (size!15365 lt!679219) (+ (size!15365 lt!678961) (size!15365 (_2!10879 lt!678970)))))))

(declare-fun b!1757990 () Bool)

(assert (=> b!1757990 (= e!1125093 (Cons!19340 (h!24741 lt!678961) (++!5279 (t!163653 lt!678961) (_2!10879 lt!678970))))))

(declare-fun d!537032 () Bool)

(assert (=> d!537032 e!1125092))

(declare-fun res!791062 () Bool)

(assert (=> d!537032 (=> (not res!791062) (not e!1125092))))

(assert (=> d!537032 (= res!791062 (= (content!2788 lt!679219) ((_ map or) (content!2788 lt!678961) (content!2788 (_2!10879 lt!678970)))))))

(assert (=> d!537032 (= lt!679219 e!1125093)))

(declare-fun c!286503 () Bool)

(assert (=> d!537032 (= c!286503 ((_ is Nil!19340) lt!678961))))

(assert (=> d!537032 (= (++!5279 lt!678961 (_2!10879 lt!678970)) lt!679219)))

(assert (= (and d!537032 c!286503) b!1757989))

(assert (= (and d!537032 (not c!286503)) b!1757990))

(assert (= (and d!537032 res!791062) b!1757991))

(assert (= (and b!1757991 res!791063) b!1757992))

(declare-fun m!2173227 () Bool)

(assert (=> b!1757991 m!2173227))

(assert (=> b!1757991 m!2172379))

(declare-fun m!2173229 () Bool)

(assert (=> b!1757991 m!2173229))

(declare-fun m!2173231 () Bool)

(assert (=> b!1757990 m!2173231))

(declare-fun m!2173233 () Bool)

(assert (=> d!537032 m!2173233))

(declare-fun m!2173235 () Bool)

(assert (=> d!537032 m!2173235))

(declare-fun m!2173237 () Bool)

(assert (=> d!537032 m!2173237))

(assert (=> b!1757387 d!537032))

(declare-fun d!537034 () Bool)

(declare-fun e!1125095 () Bool)

(assert (=> d!537034 e!1125095))

(declare-fun res!791067 () Bool)

(assert (=> d!537034 (=> res!791067 e!1125095)))

(declare-fun lt!679220 () Bool)

(assert (=> d!537034 (= res!791067 (not lt!679220))))

(declare-fun e!1125094 () Bool)

(assert (=> d!537034 (= lt!679220 e!1125094)))

(declare-fun res!791064 () Bool)

(assert (=> d!537034 (=> res!791064 e!1125094)))

(assert (=> d!537034 (= res!791064 ((_ is Nil!19340) lt!678951))))

(assert (=> d!537034 (= (isPrefix!1695 lt!678951 lt!678954) lt!679220)))

(declare-fun b!1757994 () Bool)

(declare-fun res!791066 () Bool)

(declare-fun e!1125096 () Bool)

(assert (=> b!1757994 (=> (not res!791066) (not e!1125096))))

(assert (=> b!1757994 (= res!791066 (= (head!4062 lt!678951) (head!4062 lt!678954)))))

(declare-fun b!1757993 () Bool)

(assert (=> b!1757993 (= e!1125094 e!1125096)))

(declare-fun res!791065 () Bool)

(assert (=> b!1757993 (=> (not res!791065) (not e!1125096))))

(assert (=> b!1757993 (= res!791065 (not ((_ is Nil!19340) lt!678954)))))

(declare-fun b!1757996 () Bool)

(assert (=> b!1757996 (= e!1125095 (>= (size!15365 lt!678954) (size!15365 lt!678951)))))

(declare-fun b!1757995 () Bool)

(assert (=> b!1757995 (= e!1125096 (isPrefix!1695 (tail!2627 lt!678951) (tail!2627 lt!678954)))))

(assert (= (and d!537034 (not res!791064)) b!1757993))

(assert (= (and b!1757993 res!791065) b!1757994))

(assert (= (and b!1757994 res!791066) b!1757995))

(assert (= (and d!537034 (not res!791067)) b!1757996))

(assert (=> b!1757994 m!2172669))

(assert (=> b!1757994 m!2172875))

(assert (=> b!1757996 m!2172877))

(assert (=> b!1757996 m!2172701))

(assert (=> b!1757995 m!2172673))

(assert (=> b!1757995 m!2172881))

(assert (=> b!1757995 m!2172673))

(assert (=> b!1757995 m!2172881))

(declare-fun m!2173239 () Bool)

(assert (=> b!1757995 m!2173239))

(assert (=> b!1757387 d!537034))

(declare-fun d!537036 () Bool)

(declare-fun isEmpty!12203 (Option!3932) Bool)

(assert (=> d!537036 (= (isDefined!3275 lt!678967) (not (isEmpty!12203 lt!678967)))))

(declare-fun bs!403919 () Bool)

(assert (= bs!403919 d!537036))

(declare-fun m!2173241 () Bool)

(assert (=> bs!403919 m!2173241))

(assert (=> b!1757387 d!537036))

(declare-fun d!537038 () Bool)

(declare-fun e!1125108 () Bool)

(assert (=> d!537038 e!1125108))

(declare-fun res!791073 () Bool)

(assert (=> d!537038 (=> res!791073 e!1125108)))

(declare-fun lt!679229 () Option!3932)

(assert (=> d!537038 (= res!791073 (isEmpty!12203 lt!679229))))

(declare-fun e!1125105 () Option!3932)

(assert (=> d!537038 (= lt!679229 e!1125105)))

(declare-fun c!286509 () Bool)

(assert (=> d!537038 (= c!286509 (and ((_ is Cons!19341) rules!3447) (= (tag!3815 (h!24742 rules!3447)) (tag!3815 (rule!5469 (_1!10879 lt!678970))))))))

(assert (=> d!537038 (rulesInvariant!2753 thiss!24550 rules!3447)))

(assert (=> d!537038 (= (getRuleFromTag!503 thiss!24550 rules!3447 (tag!3815 (rule!5469 (_1!10879 lt!678970)))) lt!679229)))

(declare-fun b!1758009 () Bool)

(declare-fun lt!679228 () Unit!33507)

(declare-fun lt!679227 () Unit!33507)

(assert (=> b!1758009 (= lt!679228 lt!679227)))

(assert (=> b!1758009 (rulesInvariant!2753 thiss!24550 (t!163654 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!184 (LexerInterface!3084 Rule!6710 List!19411) Unit!33507)

(assert (=> b!1758009 (= lt!679227 (lemmaInvariantOnRulesThenOnTail!184 thiss!24550 (h!24742 rules!3447) (t!163654 rules!3447)))))

(declare-fun e!1125107 () Option!3932)

(assert (=> b!1758009 (= e!1125107 (getRuleFromTag!503 thiss!24550 (t!163654 rules!3447) (tag!3815 (rule!5469 (_1!10879 lt!678970)))))))

(declare-fun b!1758010 () Bool)

(assert (=> b!1758010 (= e!1125105 (Some!3931 (h!24742 rules!3447)))))

(declare-fun b!1758011 () Bool)

(declare-fun e!1125106 () Bool)

(assert (=> b!1758011 (= e!1125106 (= (tag!3815 (get!5877 lt!679229)) (tag!3815 (rule!5469 (_1!10879 lt!678970)))))))

(declare-fun b!1758012 () Bool)

(assert (=> b!1758012 (= e!1125105 e!1125107)))

(declare-fun c!286508 () Bool)

(assert (=> b!1758012 (= c!286508 (and ((_ is Cons!19341) rules!3447) (not (= (tag!3815 (h!24742 rules!3447)) (tag!3815 (rule!5469 (_1!10879 lt!678970)))))))))

(declare-fun b!1758013 () Bool)

(assert (=> b!1758013 (= e!1125107 None!3931)))

(declare-fun b!1758014 () Bool)

(assert (=> b!1758014 (= e!1125108 e!1125106)))

(declare-fun res!791072 () Bool)

(assert (=> b!1758014 (=> (not res!791072) (not e!1125106))))

(assert (=> b!1758014 (= res!791072 (contains!3483 rules!3447 (get!5877 lt!679229)))))

(assert (= (and d!537038 c!286509) b!1758010))

(assert (= (and d!537038 (not c!286509)) b!1758012))

(assert (= (and b!1758012 c!286508) b!1758009))

(assert (= (and b!1758012 (not c!286508)) b!1758013))

(assert (= (and d!537038 (not res!791073)) b!1758014))

(assert (= (and b!1758014 res!791072) b!1758011))

(declare-fun m!2173243 () Bool)

(assert (=> d!537038 m!2173243))

(assert (=> d!537038 m!2172369))

(declare-fun m!2173245 () Bool)

(assert (=> b!1758009 m!2173245))

(declare-fun m!2173247 () Bool)

(assert (=> b!1758009 m!2173247))

(declare-fun m!2173249 () Bool)

(assert (=> b!1758009 m!2173249))

(declare-fun m!2173251 () Bool)

(assert (=> b!1758011 m!2173251))

(assert (=> b!1758014 m!2173251))

(assert (=> b!1758014 m!2173251))

(declare-fun m!2173253 () Bool)

(assert (=> b!1758014 m!2173253))

(assert (=> b!1757387 d!537038))

(declare-fun d!537040 () Bool)

(declare-fun lt!679230 () Bool)

(assert (=> d!537040 (= lt!679230 (select (content!2787 rules!3447) (rule!5469 (_1!10879 lt!678970))))))

(declare-fun e!1125110 () Bool)

(assert (=> d!537040 (= lt!679230 e!1125110)))

(declare-fun res!791074 () Bool)

(assert (=> d!537040 (=> (not res!791074) (not e!1125110))))

(assert (=> d!537040 (= res!791074 ((_ is Cons!19341) rules!3447))))

(assert (=> d!537040 (= (contains!3483 rules!3447 (rule!5469 (_1!10879 lt!678970))) lt!679230)))

(declare-fun b!1758015 () Bool)

(declare-fun e!1125109 () Bool)

(assert (=> b!1758015 (= e!1125110 e!1125109)))

(declare-fun res!791075 () Bool)

(assert (=> b!1758015 (=> res!791075 e!1125109)))

(assert (=> b!1758015 (= res!791075 (= (h!24742 rules!3447) (rule!5469 (_1!10879 lt!678970))))))

(declare-fun b!1758016 () Bool)

(assert (=> b!1758016 (= e!1125109 (contains!3483 (t!163654 rules!3447) (rule!5469 (_1!10879 lt!678970))))))

(assert (= (and d!537040 res!791074) b!1758015))

(assert (= (and b!1758015 (not res!791075)) b!1758016))

(assert (=> d!537040 m!2172649))

(declare-fun m!2173255 () Bool)

(assert (=> d!537040 m!2173255))

(declare-fun m!2173257 () Bool)

(assert (=> b!1758016 m!2173257))

(assert (=> b!1757395 d!537040))

(declare-fun b!1758017 () Bool)

(declare-fun e!1125113 () Bool)

(assert (=> b!1758017 (= e!1125113 (inv!16 (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962)))))

(declare-fun b!1758019 () Bool)

(declare-fun e!1125112 () Bool)

(assert (=> b!1758019 (= e!1125112 (inv!17 (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962)))))

(declare-fun b!1758018 () Bool)

(assert (=> b!1758018 (= e!1125113 e!1125112)))

(declare-fun c!286511 () Bool)

(assert (=> b!1758018 (= c!286511 ((_ is IntegerValue!10636) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962)))))

(declare-fun d!537042 () Bool)

(declare-fun c!286510 () Bool)

(assert (=> d!537042 (= c!286510 ((_ is IntegerValue!10635) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962)))))

(assert (=> d!537042 (= (inv!21 (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962)) e!1125113)))

(declare-fun b!1758020 () Bool)

(declare-fun res!791076 () Bool)

(declare-fun e!1125111 () Bool)

(assert (=> b!1758020 (=> res!791076 e!1125111)))

(assert (=> b!1758020 (= res!791076 (not ((_ is IntegerValue!10637) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962))))))

(assert (=> b!1758020 (= e!1125112 e!1125111)))

(declare-fun b!1758021 () Bool)

(assert (=> b!1758021 (= e!1125111 (inv!15 (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962)))))

(assert (= (and d!537042 c!286510) b!1758017))

(assert (= (and d!537042 (not c!286510)) b!1758018))

(assert (= (and b!1758018 c!286511) b!1758019))

(assert (= (and b!1758018 (not c!286511)) b!1758020))

(assert (= (and b!1758020 (not res!791076)) b!1758021))

(declare-fun m!2173259 () Bool)

(assert (=> b!1758017 m!2173259))

(declare-fun m!2173261 () Bool)

(assert (=> b!1758019 m!2173261))

(declare-fun m!2173263 () Bool)

(assert (=> b!1758021 m!2173263))

(assert (=> tb!105659 d!537042))

(declare-fun d!537044 () Bool)

(assert (=> d!537044 (= (get!5878 lt!678964) (v!25387 lt!678964))))

(assert (=> b!1757393 d!537044))

(declare-fun b!1758026 () Bool)

(declare-fun e!1125116 () Bool)

(declare-fun tp!499572 () Bool)

(assert (=> b!1758026 (= e!1125116 (and tp_is_empty!7809 tp!499572))))

(assert (=> b!1757390 (= tp!499507 e!1125116)))

(assert (= (and b!1757390 ((_ is Cons!19340) (originalCharacters!4269 token!523))) b!1758026))

(declare-fun e!1125119 () Bool)

(assert (=> b!1757389 (= tp!499501 e!1125119)))

(declare-fun b!1758038 () Bool)

(declare-fun tp!499586 () Bool)

(declare-fun tp!499584 () Bool)

(assert (=> b!1758038 (= e!1125119 (and tp!499586 tp!499584))))

(declare-fun b!1758039 () Bool)

(declare-fun tp!499585 () Bool)

(assert (=> b!1758039 (= e!1125119 tp!499585)))

(declare-fun b!1758037 () Bool)

(assert (=> b!1758037 (= e!1125119 tp_is_empty!7809)))

(declare-fun b!1758040 () Bool)

(declare-fun tp!499583 () Bool)

(declare-fun tp!499587 () Bool)

(assert (=> b!1758040 (= e!1125119 (and tp!499583 tp!499587))))

(assert (= (and b!1757389 ((_ is ElementMatch!4783) (regex!3455 (rule!5469 token!523)))) b!1758037))

(assert (= (and b!1757389 ((_ is Concat!8329) (regex!3455 (rule!5469 token!523)))) b!1758038))

(assert (= (and b!1757389 ((_ is Star!4783) (regex!3455 (rule!5469 token!523)))) b!1758039))

(assert (= (and b!1757389 ((_ is Union!4783) (regex!3455 (rule!5469 token!523)))) b!1758040))

(declare-fun e!1125120 () Bool)

(assert (=> b!1757384 (= tp!499506 e!1125120)))

(declare-fun b!1758042 () Bool)

(declare-fun tp!499591 () Bool)

(declare-fun tp!499589 () Bool)

(assert (=> b!1758042 (= e!1125120 (and tp!499591 tp!499589))))

(declare-fun b!1758043 () Bool)

(declare-fun tp!499590 () Bool)

(assert (=> b!1758043 (= e!1125120 tp!499590)))

(declare-fun b!1758041 () Bool)

(assert (=> b!1758041 (= e!1125120 tp_is_empty!7809)))

(declare-fun b!1758044 () Bool)

(declare-fun tp!499588 () Bool)

(declare-fun tp!499592 () Bool)

(assert (=> b!1758044 (= e!1125120 (and tp!499588 tp!499592))))

(assert (= (and b!1757384 ((_ is ElementMatch!4783) (regex!3455 (h!24742 rules!3447)))) b!1758041))

(assert (= (and b!1757384 ((_ is Concat!8329) (regex!3455 (h!24742 rules!3447)))) b!1758042))

(assert (= (and b!1757384 ((_ is Star!4783) (regex!3455 (h!24742 rules!3447)))) b!1758043))

(assert (= (and b!1757384 ((_ is Union!4783) (regex!3455 (h!24742 rules!3447)))) b!1758044))

(declare-fun b!1758045 () Bool)

(declare-fun e!1125121 () Bool)

(declare-fun tp!499593 () Bool)

(assert (=> b!1758045 (= e!1125121 (and tp_is_empty!7809 tp!499593))))

(assert (=> b!1757400 (= tp!499498 e!1125121)))

(assert (= (and b!1757400 ((_ is Cons!19340) (t!163653 suffix!1421))) b!1758045))

(declare-fun tp!499601 () Bool)

(declare-fun e!1125127 () Bool)

(declare-fun tp!499602 () Bool)

(declare-fun b!1758054 () Bool)

(assert (=> b!1758054 (= e!1125127 (and (inv!25109 (left!15482 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962))))) tp!499601 (inv!25109 (right!15812 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962))))) tp!499602))))

(declare-fun b!1758056 () Bool)

(declare-fun e!1125126 () Bool)

(declare-fun tp!499600 () Bool)

(assert (=> b!1758056 (= e!1125126 tp!499600)))

(declare-fun b!1758055 () Bool)

(declare-fun inv!25116 (IArray!12871) Bool)

(assert (=> b!1758055 (= e!1125127 (and (inv!25116 (xs!9309 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962))))) e!1125126))))

(assert (=> b!1757422 (= tp!499512 (and (inv!25109 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962)))) e!1125127))))

(assert (= (and b!1757422 ((_ is Node!6433) (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962))))) b!1758054))

(assert (= b!1758055 b!1758056))

(assert (= (and b!1757422 ((_ is Leaf!9381) (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (dynLambda!9287 (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) lt!678962))))) b!1758055))

(declare-fun m!2173265 () Bool)

(assert (=> b!1758054 m!2173265))

(declare-fun m!2173267 () Bool)

(assert (=> b!1758054 m!2173267))

(declare-fun m!2173269 () Bool)

(assert (=> b!1758055 m!2173269))

(assert (=> b!1757422 m!2172355))

(declare-fun tp!499605 () Bool)

(declare-fun e!1125129 () Bool)

(declare-fun tp!499604 () Bool)

(declare-fun b!1758057 () Bool)

(assert (=> b!1758057 (= e!1125129 (and (inv!25109 (left!15482 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (value!108140 (_1!10879 lt!678970)))))) tp!499604 (inv!25109 (right!15812 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (value!108140 (_1!10879 lt!678970)))))) tp!499605))))

(declare-fun b!1758059 () Bool)

(declare-fun e!1125128 () Bool)

(declare-fun tp!499603 () Bool)

(assert (=> b!1758059 (= e!1125128 tp!499603)))

(declare-fun b!1758058 () Bool)

(assert (=> b!1758058 (= e!1125129 (and (inv!25116 (xs!9309 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (value!108140 (_1!10879 lt!678970)))))) e!1125128))))

(assert (=> b!1757421 (= tp!499511 (and (inv!25109 (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (value!108140 (_1!10879 lt!678970))))) e!1125129))))

(assert (= (and b!1757421 ((_ is Node!6433) (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (value!108140 (_1!10879 lt!678970)))))) b!1758057))

(assert (= b!1758058 b!1758059))

(assert (= (and b!1757421 ((_ is Leaf!9381) (c!286407 (dynLambda!9286 (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))) (value!108140 (_1!10879 lt!678970)))))) b!1758058))

(declare-fun m!2173271 () Bool)

(assert (=> b!1758057 m!2173271))

(declare-fun m!2173273 () Bool)

(assert (=> b!1758057 m!2173273))

(declare-fun m!2173275 () Bool)

(assert (=> b!1758058 m!2173275))

(assert (=> b!1757421 m!2172351))

(declare-fun b!1758070 () Bool)

(declare-fun b_free!48567 () Bool)

(declare-fun b_next!49271 () Bool)

(assert (=> b!1758070 (= b_free!48567 (not b_next!49271))))

(declare-fun t!163718 () Bool)

(declare-fun tb!105727 () Bool)

(assert (=> (and b!1758070 (= (toValue!4974 (transformation!3455 (h!24742 (t!163654 rules!3447)))) (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163718) tb!105727))

(declare-fun result!127206 () Bool)

(assert (= result!127206 result!127134))

(assert (=> d!536830 t!163718))

(declare-fun t!163720 () Bool)

(declare-fun tb!105729 () Bool)

(assert (=> (and b!1758070 (= (toValue!4974 (transformation!3455 (h!24742 (t!163654 rules!3447)))) (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163720) tb!105729))

(declare-fun result!127208 () Bool)

(assert (= result!127208 result!127120))

(assert (=> d!536886 t!163720))

(assert (=> b!1757405 t!163720))

(assert (=> d!536840 t!163718))

(declare-fun tb!105731 () Bool)

(declare-fun t!163722 () Bool)

(assert (=> (and b!1758070 (= (toValue!4974 (transformation!3455 (h!24742 (t!163654 rules!3447)))) (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163722) tb!105731))

(declare-fun result!127210 () Bool)

(assert (= result!127210 result!127152))

(assert (=> d!536892 t!163722))

(assert (=> d!536892 t!163720))

(assert (=> d!536856 t!163720))

(declare-fun tp!499616 () Bool)

(declare-fun b_and!132277 () Bool)

(assert (=> b!1758070 (= tp!499616 (and (=> t!163718 result!127206) (=> t!163720 result!127208) (=> t!163722 result!127210) b_and!132277))))

(declare-fun b_free!48569 () Bool)

(declare-fun b_next!49273 () Bool)

(assert (=> b!1758070 (= b_free!48569 (not b_next!49273))))

(declare-fun tb!105733 () Bool)

(declare-fun t!163724 () Bool)

(assert (=> (and b!1758070 (= (toChars!4833 (transformation!3455 (h!24742 (t!163654 rules!3447)))) (toChars!4833 (transformation!3455 (rule!5469 token!523)))) t!163724) tb!105733))

(declare-fun result!127212 () Bool)

(assert (= result!127212 result!127146))

(assert (=> d!536878 t!163724))

(declare-fun t!163726 () Bool)

(declare-fun tb!105735 () Bool)

(assert (=> (and b!1758070 (= (toChars!4833 (transformation!3455 (h!24742 (t!163654 rules!3447)))) (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163726) tb!105735))

(declare-fun result!127214 () Bool)

(assert (= result!127214 result!127140))

(assert (=> d!536840 t!163726))

(assert (=> b!1757670 t!163724))

(declare-fun tb!105737 () Bool)

(declare-fun t!163728 () Bool)

(assert (=> (and b!1758070 (= (toChars!4833 (transformation!3455 (h!24742 (t!163654 rules!3447)))) (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163728) tb!105737))

(declare-fun result!127216 () Bool)

(assert (= result!127216 result!127114))

(assert (=> d!536856 t!163728))

(declare-fun tb!105739 () Bool)

(declare-fun t!163730 () Bool)

(assert (=> (and b!1758070 (= (toChars!4833 (transformation!3455 (h!24742 (t!163654 rules!3447)))) (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970))))) t!163730) tb!105739))

(declare-fun result!127218 () Bool)

(assert (= result!127218 result!127106))

(assert (=> b!1757392 t!163730))

(assert (=> d!536818 t!163730))

(assert (=> b!1757405 t!163728))

(declare-fun tp!499617 () Bool)

(declare-fun b_and!132279 () Bool)

(assert (=> b!1758070 (= tp!499617 (and (=> t!163726 result!127214) (=> t!163728 result!127216) (=> t!163724 result!127212) (=> t!163730 result!127218) b_and!132279))))

(declare-fun e!1125139 () Bool)

(assert (=> b!1758070 (= e!1125139 (and tp!499616 tp!499617))))

(declare-fun tp!499615 () Bool)

(declare-fun b!1758069 () Bool)

(declare-fun e!1125140 () Bool)

(assert (=> b!1758069 (= e!1125140 (and tp!499615 (inv!25102 (tag!3815 (h!24742 (t!163654 rules!3447)))) (inv!25107 (transformation!3455 (h!24742 (t!163654 rules!3447)))) e!1125139))))

(declare-fun b!1758068 () Bool)

(declare-fun e!1125138 () Bool)

(declare-fun tp!499614 () Bool)

(assert (=> b!1758068 (= e!1125138 (and e!1125140 tp!499614))))

(assert (=> b!1757375 (= tp!499497 e!1125138)))

(assert (= b!1758069 b!1758070))

(assert (= b!1758068 b!1758069))

(assert (= (and b!1757375 ((_ is Cons!19341) (t!163654 rules!3447))) b!1758068))

(declare-fun m!2173277 () Bool)

(assert (=> b!1758069 m!2173277))

(declare-fun m!2173279 () Bool)

(assert (=> b!1758069 m!2173279))

(declare-fun e!1125142 () Bool)

(assert (=> b!1757380 (= tp!499505 e!1125142)))

(declare-fun b!1758072 () Bool)

(declare-fun tp!499621 () Bool)

(declare-fun tp!499619 () Bool)

(assert (=> b!1758072 (= e!1125142 (and tp!499621 tp!499619))))

(declare-fun b!1758073 () Bool)

(declare-fun tp!499620 () Bool)

(assert (=> b!1758073 (= e!1125142 tp!499620)))

(declare-fun b!1758071 () Bool)

(assert (=> b!1758071 (= e!1125142 tp_is_empty!7809)))

(declare-fun b!1758074 () Bool)

(declare-fun tp!499618 () Bool)

(declare-fun tp!499622 () Bool)

(assert (=> b!1758074 (= e!1125142 (and tp!499618 tp!499622))))

(assert (= (and b!1757380 ((_ is ElementMatch!4783) (regex!3455 rule!422))) b!1758071))

(assert (= (and b!1757380 ((_ is Concat!8329) (regex!3455 rule!422))) b!1758072))

(assert (= (and b!1757380 ((_ is Star!4783) (regex!3455 rule!422))) b!1758073))

(assert (= (and b!1757380 ((_ is Union!4783) (regex!3455 rule!422))) b!1758074))

(declare-fun b_lambda!56779 () Bool)

(assert (= b_lambda!56747 (or (and b!1757378 b_free!48553) (and b!1757385 b_free!48557 (= (toChars!4833 (transformation!3455 rule!422)) (toChars!4833 (transformation!3455 (rule!5469 token!523))))) (and b!1757386 b_free!48561 (= (toChars!4833 (transformation!3455 (h!24742 rules!3447))) (toChars!4833 (transformation!3455 (rule!5469 token!523))))) (and b!1758070 b_free!48569 (= (toChars!4833 (transformation!3455 (h!24742 (t!163654 rules!3447)))) (toChars!4833 (transformation!3455 (rule!5469 token!523))))) b_lambda!56779)))

(declare-fun b_lambda!56781 () Bool)

(assert (= b_lambda!56723 (or (and b!1757378 b_free!48551 (= (toValue!4974 (transformation!3455 (rule!5469 token!523))) (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))))) (and b!1757385 b_free!48555 (= (toValue!4974 (transformation!3455 rule!422)) (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))))) (and b!1757386 b_free!48559 (= (toValue!4974 (transformation!3455 (h!24742 rules!3447))) (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))))) (and b!1758070 b_free!48567 (= (toValue!4974 (transformation!3455 (h!24742 (t!163654 rules!3447)))) (toValue!4974 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))))) b_lambda!56781)))

(declare-fun b_lambda!56783 () Bool)

(assert (= b_lambda!56745 (or (and b!1757378 b_free!48553) (and b!1757385 b_free!48557 (= (toChars!4833 (transformation!3455 rule!422)) (toChars!4833 (transformation!3455 (rule!5469 token!523))))) (and b!1757386 b_free!48561 (= (toChars!4833 (transformation!3455 (h!24742 rules!3447))) (toChars!4833 (transformation!3455 (rule!5469 token!523))))) (and b!1758070 b_free!48569 (= (toChars!4833 (transformation!3455 (h!24742 (t!163654 rules!3447)))) (toChars!4833 (transformation!3455 (rule!5469 token!523))))) b_lambda!56783)))

(declare-fun b_lambda!56785 () Bool)

(assert (= b_lambda!56719 (or (and b!1757378 b_free!48553 (= (toChars!4833 (transformation!3455 (rule!5469 token!523))) (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))))) (and b!1757385 b_free!48557 (= (toChars!4833 (transformation!3455 rule!422)) (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))))) (and b!1757386 b_free!48561 (= (toChars!4833 (transformation!3455 (h!24742 rules!3447))) (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))))) (and b!1758070 b_free!48569 (= (toChars!4833 (transformation!3455 (h!24742 (t!163654 rules!3447)))) (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))))) b_lambda!56785)))

(declare-fun b_lambda!56787 () Bool)

(assert (= b_lambda!56721 (or (and b!1757378 b_free!48553 (= (toChars!4833 (transformation!3455 (rule!5469 token!523))) (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))))) (and b!1757385 b_free!48557 (= (toChars!4833 (transformation!3455 rule!422)) (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))))) (and b!1757386 b_free!48561 (= (toChars!4833 (transformation!3455 (h!24742 rules!3447))) (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))))) (and b!1758070 b_free!48569 (= (toChars!4833 (transformation!3455 (h!24742 (t!163654 rules!3447)))) (toChars!4833 (transformation!3455 (rule!5469 (_1!10879 lt!678970)))))) b_lambda!56787)))

(check-sat (not b_lambda!56781) (not d!536952) (not b!1758073) (not tb!105689) (not b!1758068) (not d!536866) (not d!536898) (not b!1758042) (not b_next!49273) (not b!1757701) (not d!536888) (not b!1757706) (not d!536878) (not b!1757511) (not b!1757622) (not b!1757726) (not b!1757787) (not d!537040) (not b_lambda!56753) (not b!1758059) (not b!1757503) (not b!1757699) (not b!1757515) (not tb!105683) (not b!1757495) (not d!536846) (not b!1757996) b_and!132227 (not d!536894) (not b!1757660) (not b!1757519) (not b!1758016) (not b!1757636) (not b!1757995) (not b_lambda!56733) (not b!1758011) (not bm!110577) (not b!1757994) (not b!1757586) (not b!1757707) (not b!1757658) (not b!1757786) (not d!536932) (not b!1758021) (not d!536956) (not b!1757665) (not b!1757698) (not b_next!49265) (not d!536818) (not b!1757631) (not b!1757750) (not d!536914) (not b!1758040) (not b!1757783) b_and!132225 (not b!1757785) (not b!1757628) (not b!1758039) (not d!536922) (not b!1758054) (not b!1757421) (not tb!105671) b_and!132229 (not b_lambda!56749) (not b!1757781) (not d!536890) (not b!1757986) b_and!132279 (not d!536920) (not b_next!49257) (not b!1757614) (not b!1758043) (not b_lambda!56787) (not d!536902) (not b_next!49259) (not b!1758069) (not bm!110580) (not b!1757657) (not b!1757693) (not d!536856) (not d!536854) (not b!1757520) (not b!1758058) (not b!1757663) (not b_lambda!56731) (not d!537030) (not d!536864) (not b!1757982) (not b!1757749) (not b!1757751) (not d!536798) (not b!1757547) (not b!1757759) (not b!1758055) (not d!536848) (not b!1757725) (not b!1757789) (not b!1757505) (not b!1757656) (not b!1758074) (not b!1758072) (not bm!110573) (not b!1757545) (not b!1757671) (not b!1757506) (not b!1757981) (not b!1758038) (not b!1757788) (not b!1757509) (not b!1757661) (not b!1757422) (not b!1757497) (not b_next!49255) (not d!536892) (not b!1758017) (not b!1757697) b_and!132211 (not b!1758026) (not b!1757682) (not d!536896) (not b!1757517) (not b!1757790) (not b_lambda!56737) (not b_lambda!56779) (not d!536916) (not b!1757501) (not d!536862) (not b!1757990) (not b!1757659) (not b!1757695) (not d!537032) (not b!1757617) (not b!1758014) (not b!1758056) (not b!1757681) (not b_next!49263) (not b!1757610) (not b!1757630) (not d!537036) (not b!1757991) (not d!536872) (not d!536840) (not b_lambda!56783) (not d!536858) b_and!132209 (not b!1757987) (not b!1757574) (not d!536908) (not b!1758057) (not d!537038) (not b!1758044) (not d!536870) (not bm!110572) (not bm!110581) b_and!132277 (not b!1758045) tp_is_empty!7809 (not tb!105677) (not d!536874) (not d!536884) (not b!1757757) (not d!536880) (not d!536868) (not b_lambda!56785) (not d!536876) b_and!132207 (not b!1757983) (not b_next!49261) (not d!536954) (not b!1757662) (not b!1757758) (not b!1757784) (not b!1758019) (not d!536824) (not d!536816) (not b_lambda!56739) (not b_next!49271) (not b_lambda!56741) (not b_lambda!56743) (not d!536912) (not b!1758009) (not b!1757782) (not b_lambda!56751) (not b!1757670) (not b!1757620) (not b!1757626))
(check-sat (not b_next!49273) b_and!132227 (not b_next!49265) b_and!132225 b_and!132229 (not b_next!49259) (not b_next!49255) b_and!132211 (not b_next!49263) b_and!132209 b_and!132277 b_and!132207 (not b_next!49261) (not b_next!49271) b_and!132279 (not b_next!49257))
