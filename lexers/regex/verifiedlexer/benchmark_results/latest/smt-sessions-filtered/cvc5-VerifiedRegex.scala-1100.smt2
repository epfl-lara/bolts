; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!56590 () Bool)

(assert start!56590)

(declare-fun b!598082 () Bool)

(declare-fun b_free!16989 () Bool)

(declare-fun b_next!17005 () Bool)

(assert (=> b!598082 (= b_free!16989 (not b_next!17005))))

(declare-fun tp!186480 () Bool)

(declare-fun b_and!59051 () Bool)

(assert (=> b!598082 (= tp!186480 b_and!59051)))

(declare-fun b_free!16991 () Bool)

(declare-fun b_next!17007 () Bool)

(assert (=> b!598082 (= b_free!16991 (not b_next!17007))))

(declare-fun tp!186482 () Bool)

(declare-fun b_and!59053 () Bool)

(assert (=> b!598082 (= tp!186482 b_and!59053)))

(declare-fun b!598094 () Bool)

(declare-fun b_free!16993 () Bool)

(declare-fun b_next!17009 () Bool)

(assert (=> b!598094 (= b_free!16993 (not b_next!17009))))

(declare-fun tp!186483 () Bool)

(declare-fun b_and!59055 () Bool)

(assert (=> b!598094 (= tp!186483 b_and!59055)))

(declare-fun b_free!16995 () Bool)

(declare-fun b_next!17011 () Bool)

(assert (=> b!598094 (= b_free!16995 (not b_next!17011))))

(declare-fun tp!186478 () Bool)

(declare-fun b_and!59057 () Bool)

(assert (=> b!598094 (= tp!186478 b_and!59057)))

(declare-fun e!362247 () Bool)

(assert (=> b!598082 (= e!362247 (and tp!186480 tp!186482))))

(declare-fun b!598083 () Bool)

(declare-datatypes ((Unit!10870 0))(
  ( (Unit!10871) )
))
(declare-fun e!362251 () Unit!10870)

(declare-fun Unit!10872 () Unit!10870)

(assert (=> b!598083 (= e!362251 Unit!10872)))

(assert (=> b!598083 false))

(declare-fun b!598084 () Bool)

(declare-fun res!258476 () Bool)

(declare-fun e!362235 () Bool)

(assert (=> b!598084 (=> (not res!258476) (not e!362235))))

(declare-datatypes ((C!3962 0))(
  ( (C!3963 (val!2207 Int)) )
))
(declare-datatypes ((Regex!1520 0))(
  ( (ElementMatch!1520 (c!111133 C!3962)) (Concat!2730 (regOne!3552 Regex!1520) (regTwo!3552 Regex!1520)) (EmptyExpr!1520) (Star!1520 (reg!1849 Regex!1520)) (EmptyLang!1520) (Union!1520 (regOne!3553 Regex!1520) (regTwo!3553 Regex!1520)) )
))
(declare-datatypes ((List!5985 0))(
  ( (Nil!5975) (Cons!5975 (h!11376 (_ BitVec 16)) (t!79614 List!5985)) )
))
(declare-datatypes ((TokenValue!1210 0))(
  ( (FloatLiteralValue!2420 (text!8915 List!5985)) (TokenValueExt!1209 (__x!4318 Int)) (Broken!6050 (value!38643 List!5985)) (Object!1219) (End!1210) (Def!1210) (Underscore!1210) (Match!1210) (Else!1210) (Error!1210) (Case!1210) (If!1210) (Extends!1210) (Abstract!1210) (Class!1210) (Val!1210) (DelimiterValue!2420 (del!1270 List!5985)) (KeywordValue!1216 (value!38644 List!5985)) (CommentValue!2420 (value!38645 List!5985)) (WhitespaceValue!2420 (value!38646 List!5985)) (IndentationValue!1210 (value!38647 List!5985)) (String!7795) (Int32!1210) (Broken!6051 (value!38648 List!5985)) (Boolean!1211) (Unit!10873) (OperatorValue!1213 (op!1270 List!5985)) (IdentifierValue!2420 (value!38649 List!5985)) (IdentifierValue!2421 (value!38650 List!5985)) (WhitespaceValue!2421 (value!38651 List!5985)) (True!2420) (False!2420) (Broken!6052 (value!38652 List!5985)) (Broken!6053 (value!38653 List!5985)) (True!2421) (RightBrace!1210) (RightBracket!1210) (Colon!1210) (Null!1210) (Comma!1210) (LeftBracket!1210) (False!2421) (LeftBrace!1210) (ImaginaryLiteralValue!1210 (text!8916 List!5985)) (StringLiteralValue!3630 (value!38654 List!5985)) (EOFValue!1210 (value!38655 List!5985)) (IdentValue!1210 (value!38656 List!5985)) (DelimiterValue!2421 (value!38657 List!5985)) (DedentValue!1210 (value!38658 List!5985)) (NewLineValue!1210 (value!38659 List!5985)) (IntegerValue!3630 (value!38660 (_ BitVec 32)) (text!8917 List!5985)) (IntegerValue!3631 (value!38661 Int) (text!8918 List!5985)) (Times!1210) (Or!1210) (Equal!1210) (Minus!1210) (Broken!6054 (value!38662 List!5985)) (And!1210) (Div!1210) (LessEqual!1210) (Mod!1210) (Concat!2731) (Not!1210) (Plus!1210) (SpaceValue!1210 (value!38663 List!5985)) (IntegerValue!3632 (value!38664 Int) (text!8919 List!5985)) (StringLiteralValue!3631 (text!8920 List!5985)) (FloatLiteralValue!2421 (text!8921 List!5985)) (BytesLiteralValue!1210 (value!38665 List!5985)) (CommentValue!2421 (value!38666 List!5985)) (StringLiteralValue!3632 (value!38667 List!5985)) (ErrorTokenValue!1210 (msg!1271 List!5985)) )
))
(declare-datatypes ((String!7796 0))(
  ( (String!7797 (value!38668 String)) )
))
(declare-datatypes ((List!5986 0))(
  ( (Nil!5976) (Cons!5976 (h!11377 C!3962) (t!79615 List!5986)) )
))
(declare-datatypes ((IArray!3807 0))(
  ( (IArray!3808 (innerList!1961 List!5986)) )
))
(declare-datatypes ((Conc!1903 0))(
  ( (Node!1903 (left!4809 Conc!1903) (right!5139 Conc!1903) (csize!4036 Int) (cheight!2114 Int)) (Leaf!3004 (xs!4540 IArray!3807) (csize!4037 Int)) (Empty!1903) )
))
(declare-datatypes ((BalanceConc!3814 0))(
  ( (BalanceConc!3815 (c!111134 Conc!1903)) )
))
(declare-datatypes ((TokenValueInjection!2188 0))(
  ( (TokenValueInjection!2189 (toValue!2077 Int) (toChars!1936 Int)) )
))
(declare-datatypes ((Rule!2172 0))(
  ( (Rule!2173 (regex!1186 Regex!1520) (tag!1448 String!7796) (isSeparator!1186 Bool) (transformation!1186 TokenValueInjection!2188)) )
))
(declare-datatypes ((Token!2108 0))(
  ( (Token!2109 (value!38669 TokenValue!1210) (rule!1956 Rule!2172) (size!4706 Int) (originalCharacters!1225 List!5986)) )
))
(declare-fun token!491 () Token!2108)

(declare-fun size!4707 (List!5986) Int)

(assert (=> b!598084 (= res!258476 (= (size!4706 token!491) (size!4707 (originalCharacters!1225 token!491))))))

(declare-fun b!598085 () Bool)

(declare-fun e!362253 () Bool)

(declare-fun e!362243 () Bool)

(assert (=> b!598085 (= e!362253 e!362243)))

(declare-fun res!258479 () Bool)

(assert (=> b!598085 (=> (not res!258479) (not e!362243))))

(declare-fun lt!254627 () List!5986)

(declare-fun lt!254637 () List!5986)

(assert (=> b!598085 (= res!258479 (= lt!254627 lt!254637))))

(declare-fun lt!254645 () List!5986)

(declare-fun suffix!1342 () List!5986)

(declare-fun ++!1674 (List!5986 List!5986) List!5986)

(assert (=> b!598085 (= lt!254627 (++!1674 lt!254645 suffix!1342))))

(declare-fun b!598086 () Bool)

(declare-fun res!258474 () Bool)

(declare-fun e!362244 () Bool)

(assert (=> b!598086 (=> (not res!258474) (not e!362244))))

(declare-datatypes ((List!5987 0))(
  ( (Nil!5977) (Cons!5977 (h!11378 Rule!2172) (t!79616 List!5987)) )
))
(declare-fun rules!3103 () List!5987)

(declare-fun isEmpty!4313 (List!5987) Bool)

(assert (=> b!598086 (= res!258474 (not (isEmpty!4313 rules!3103)))))

(declare-fun b!598087 () Bool)

(declare-fun res!258475 () Bool)

(assert (=> b!598087 (=> (not res!258475) (not e!362244))))

(declare-datatypes ((LexerInterface!1072 0))(
  ( (LexerInterfaceExt!1069 (__x!4319 Int)) (Lexer!1070) )
))
(declare-fun thiss!22590 () LexerInterface!1072)

(declare-fun rulesInvariant!1035 (LexerInterface!1072 List!5987) Bool)

(assert (=> b!598087 (= res!258475 (rulesInvariant!1035 thiss!22590 rules!3103))))

(declare-fun b!598088 () Bool)

(declare-fun e!362239 () Bool)

(declare-fun e!362248 () Bool)

(assert (=> b!598088 (= e!362239 e!362248)))

(declare-fun res!258470 () Bool)

(assert (=> b!598088 (=> (not res!258470) (not e!362248))))

(declare-datatypes ((tuple2!6866 0))(
  ( (tuple2!6867 (_1!3697 Token!2108) (_2!3697 List!5986)) )
))
(declare-fun lt!254631 () tuple2!6866)

(assert (=> b!598088 (= res!258470 (and (= (_1!3697 lt!254631) token!491) (= (_2!3697 lt!254631) suffix!1342)))))

(declare-datatypes ((Option!1537 0))(
  ( (None!1536) (Some!1536 (v!16425 tuple2!6866)) )
))
(declare-fun lt!254647 () Option!1537)

(declare-fun get!2294 (Option!1537) tuple2!6866)

(assert (=> b!598088 (= lt!254631 (get!2294 lt!254647))))

(declare-fun lt!254652 () Int)

(declare-fun lt!254634 () Option!1537)

(declare-fun b!598090 () Bool)

(declare-fun lt!254646 () TokenValue!1210)

(declare-fun e!362237 () Bool)

(declare-fun lt!254635 () List!5986)

(declare-fun lt!254630 () List!5986)

(assert (=> b!598090 (= e!362237 (and (= (size!4706 (_1!3697 (v!16425 lt!254634))) lt!254652) (= (originalCharacters!1225 (_1!3697 (v!16425 lt!254634))) lt!254635) (= (v!16425 lt!254634) (tuple2!6867 (Token!2109 lt!254646 (rule!1956 (_1!3697 (v!16425 lt!254634))) lt!254652 lt!254635) lt!254630))))))

(declare-fun b!598091 () Bool)

(declare-fun e!362252 () Bool)

(declare-fun tp_is_empty!3395 () Bool)

(declare-fun tp!186477 () Bool)

(assert (=> b!598091 (= e!362252 (and tp_is_empty!3395 tp!186477))))

(declare-fun e!362234 () Bool)

(declare-fun tp!186479 () Bool)

(declare-fun b!598092 () Bool)

(declare-fun e!362238 () Bool)

(declare-fun inv!21 (TokenValue!1210) Bool)

(assert (=> b!598092 (= e!362238 (and (inv!21 (value!38669 token!491)) e!362234 tp!186479))))

(declare-fun b!598093 () Bool)

(declare-fun e!362233 () Bool)

(declare-fun tp!186476 () Bool)

(assert (=> b!598093 (= e!362233 (and tp_is_empty!3395 tp!186476))))

(declare-fun e!362232 () Bool)

(assert (=> b!598094 (= e!362232 (and tp!186483 tp!186478))))

(declare-fun tp!186475 () Bool)

(declare-fun b!598095 () Bool)

(declare-fun inv!7572 (String!7796) Bool)

(declare-fun inv!7575 (TokenValueInjection!2188) Bool)

(assert (=> b!598095 (= e!362234 (and tp!186475 (inv!7572 (tag!1448 (rule!1956 token!491))) (inv!7575 (transformation!1186 (rule!1956 token!491))) e!362247))))

(declare-fun b!598096 () Bool)

(declare-fun Unit!10874 () Unit!10870)

(assert (=> b!598096 (= e!362251 Unit!10874)))

(declare-fun b!598097 () Bool)

(declare-fun e!362246 () Bool)

(assert (=> b!598097 (= e!362243 (not e!362246))))

(declare-fun res!258478 () Bool)

(assert (=> b!598097 (=> res!258478 e!362246)))

(declare-fun input!2705 () List!5986)

(declare-fun isPrefix!814 (List!5986 List!5986) Bool)

(assert (=> b!598097 (= res!258478 (not (isPrefix!814 input!2705 lt!254627)))))

(assert (=> b!598097 (isPrefix!814 lt!254645 lt!254627)))

(declare-fun lt!254650 () Unit!10870)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!659 (List!5986 List!5986) Unit!10870)

(assert (=> b!598097 (= lt!254650 (lemmaConcatTwoListThenFirstIsPrefix!659 lt!254645 suffix!1342))))

(assert (=> b!598097 (isPrefix!814 input!2705 lt!254637)))

(declare-fun lt!254628 () Unit!10870)

(assert (=> b!598097 (= lt!254628 (lemmaConcatTwoListThenFirstIsPrefix!659 input!2705 suffix!1342))))

(assert (=> b!598097 e!362237))

(declare-fun res!258467 () Bool)

(assert (=> b!598097 (=> (not res!258467) (not e!362237))))

(assert (=> b!598097 (= res!258467 (= (value!38669 (_1!3697 (v!16425 lt!254634))) lt!254646))))

(declare-fun apply!1439 (TokenValueInjection!2188 BalanceConc!3814) TokenValue!1210)

(declare-fun seqFromList!1362 (List!5986) BalanceConc!3814)

(assert (=> b!598097 (= lt!254646 (apply!1439 (transformation!1186 (rule!1956 (_1!3697 (v!16425 lt!254634)))) (seqFromList!1362 lt!254635)))))

(declare-fun lt!254642 () Unit!10870)

(declare-fun lemmaInv!294 (TokenValueInjection!2188) Unit!10870)

(assert (=> b!598097 (= lt!254642 (lemmaInv!294 (transformation!1186 (rule!1956 token!491))))))

(declare-fun lt!254629 () Unit!10870)

(assert (=> b!598097 (= lt!254629 (lemmaInv!294 (transformation!1186 (rule!1956 (_1!3697 (v!16425 lt!254634))))))))

(declare-fun ruleValid!384 (LexerInterface!1072 Rule!2172) Bool)

(assert (=> b!598097 (ruleValid!384 thiss!22590 (rule!1956 token!491))))

(declare-fun lt!254644 () Unit!10870)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!231 (LexerInterface!1072 Rule!2172 List!5987) Unit!10870)

(assert (=> b!598097 (= lt!254644 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!231 thiss!22590 (rule!1956 token!491) rules!3103))))

(assert (=> b!598097 (ruleValid!384 thiss!22590 (rule!1956 (_1!3697 (v!16425 lt!254634))))))

(declare-fun lt!254649 () Unit!10870)

(assert (=> b!598097 (= lt!254649 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!231 thiss!22590 (rule!1956 (_1!3697 (v!16425 lt!254634))) rules!3103))))

(assert (=> b!598097 (isPrefix!814 input!2705 input!2705)))

(declare-fun lt!254648 () Unit!10870)

(declare-fun lemmaIsPrefixRefl!550 (List!5986 List!5986) Unit!10870)

(assert (=> b!598097 (= lt!254648 (lemmaIsPrefixRefl!550 input!2705 input!2705))))

(assert (=> b!598097 (= (_2!3697 (v!16425 lt!254634)) lt!254630)))

(declare-fun lt!254639 () Unit!10870)

(declare-fun lemmaSamePrefixThenSameSuffix!527 (List!5986 List!5986 List!5986 List!5986 List!5986) Unit!10870)

(assert (=> b!598097 (= lt!254639 (lemmaSamePrefixThenSameSuffix!527 lt!254635 (_2!3697 (v!16425 lt!254634)) lt!254635 lt!254630 input!2705))))

(declare-fun getSuffix!331 (List!5986 List!5986) List!5986)

(assert (=> b!598097 (= lt!254630 (getSuffix!331 input!2705 lt!254635))))

(declare-fun lt!254651 () List!5986)

(assert (=> b!598097 (isPrefix!814 lt!254635 lt!254651)))

(assert (=> b!598097 (= lt!254651 (++!1674 lt!254635 (_2!3697 (v!16425 lt!254634))))))

(declare-fun lt!254643 () Unit!10870)

(assert (=> b!598097 (= lt!254643 (lemmaConcatTwoListThenFirstIsPrefix!659 lt!254635 (_2!3697 (v!16425 lt!254634))))))

(declare-fun lt!254653 () Unit!10870)

(declare-fun lemmaCharactersSize!245 (Token!2108) Unit!10870)

(assert (=> b!598097 (= lt!254653 (lemmaCharactersSize!245 token!491))))

(declare-fun lt!254632 () Unit!10870)

(assert (=> b!598097 (= lt!254632 (lemmaCharactersSize!245 (_1!3697 (v!16425 lt!254634))))))

(declare-fun lt!254636 () Unit!10870)

(assert (=> b!598097 (= lt!254636 e!362251)))

(declare-fun c!111132 () Bool)

(declare-fun lt!254654 () Int)

(assert (=> b!598097 (= c!111132 (> lt!254652 lt!254654))))

(assert (=> b!598097 (= lt!254654 (size!4707 lt!254645))))

(assert (=> b!598097 (= lt!254652 (size!4707 lt!254635))))

(declare-fun list!2503 (BalanceConc!3814) List!5986)

(declare-fun charsOf!815 (Token!2108) BalanceConc!3814)

(assert (=> b!598097 (= lt!254635 (list!2503 (charsOf!815 (_1!3697 (v!16425 lt!254634)))))))

(assert (=> b!598097 (= lt!254634 (Some!1536 (v!16425 lt!254634)))))

(declare-fun lt!254633 () Unit!10870)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!259 (List!5986 List!5986 List!5986 List!5986) Unit!10870)

(assert (=> b!598097 (= lt!254633 (lemmaConcatSameAndSameSizesThenSameLists!259 lt!254645 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!598098 () Bool)

(declare-fun e!362241 () Bool)

(assert (=> b!598098 (= e!362241 (= input!2705 lt!254651))))

(declare-fun e!362245 () Bool)

(declare-fun tp!186481 () Bool)

(declare-fun b!598099 () Bool)

(assert (=> b!598099 (= e!362245 (and tp!186481 (inv!7572 (tag!1448 (h!11378 rules!3103))) (inv!7575 (transformation!1186 (h!11378 rules!3103))) e!362232))))

(declare-fun b!598089 () Bool)

(declare-fun res!258471 () Bool)

(assert (=> b!598089 (=> (not res!258471) (not e!362244))))

(declare-fun isEmpty!4314 (List!5986) Bool)

(assert (=> b!598089 (= res!258471 (not (isEmpty!4314 input!2705)))))

(declare-fun res!258466 () Bool)

(assert (=> start!56590 (=> (not res!258466) (not e!362244))))

(assert (=> start!56590 (= res!258466 (is-Lexer!1070 thiss!22590))))

(assert (=> start!56590 e!362244))

(assert (=> start!56590 e!362233))

(declare-fun e!362250 () Bool)

(assert (=> start!56590 e!362250))

(declare-fun inv!7576 (Token!2108) Bool)

(assert (=> start!56590 (and (inv!7576 token!491) e!362238)))

(assert (=> start!56590 true))

(assert (=> start!56590 e!362252))

(declare-fun b!598100 () Bool)

(assert (=> b!598100 (= e!362248 e!362253)))

(declare-fun res!258468 () Bool)

(assert (=> b!598100 (=> (not res!258468) (not e!362253))))

(assert (=> b!598100 (= res!258468 (is-Some!1536 lt!254634))))

(declare-fun maxPrefix!770 (LexerInterface!1072 List!5987 List!5986) Option!1537)

(assert (=> b!598100 (= lt!254634 (maxPrefix!770 thiss!22590 rules!3103 input!2705))))

(declare-fun b!598101 () Bool)

(declare-fun e!362249 () Bool)

(assert (=> b!598101 (= e!362249 e!362239)))

(declare-fun res!258465 () Bool)

(assert (=> b!598101 (=> (not res!258465) (not e!362239))))

(declare-fun isDefined!1348 (Option!1537) Bool)

(assert (=> b!598101 (= res!258465 (isDefined!1348 lt!254647))))

(assert (=> b!598101 (= lt!254647 (maxPrefix!770 thiss!22590 rules!3103 lt!254637))))

(assert (=> b!598101 (= lt!254637 (++!1674 input!2705 suffix!1342))))

(declare-fun b!598102 () Bool)

(assert (=> b!598102 (= e!362246 e!362241)))

(declare-fun res!258469 () Bool)

(assert (=> b!598102 (=> res!258469 e!362241)))

(declare-fun contains!1396 (List!5987 Rule!2172) Bool)

(assert (=> b!598102 (= res!258469 (not (contains!1396 rules!3103 (rule!1956 (_1!3697 (v!16425 lt!254634))))))))

(assert (=> b!598102 e!362235))

(declare-fun res!258473 () Bool)

(assert (=> b!598102 (=> (not res!258473) (not e!362235))))

(declare-fun lt!254640 () TokenValue!1210)

(assert (=> b!598102 (= res!258473 (= (value!38669 token!491) lt!254640))))

(assert (=> b!598102 (= lt!254640 (apply!1439 (transformation!1186 (rule!1956 token!491)) (seqFromList!1362 lt!254645)))))

(declare-fun lt!254641 () List!5986)

(assert (=> b!598102 (= suffix!1342 lt!254641)))

(declare-fun lt!254638 () Unit!10870)

(assert (=> b!598102 (= lt!254638 (lemmaSamePrefixThenSameSuffix!527 lt!254645 suffix!1342 lt!254645 lt!254641 lt!254637))))

(assert (=> b!598102 (= lt!254641 (getSuffix!331 lt!254637 lt!254645))))

(declare-fun b!598103 () Bool)

(declare-fun res!258477 () Bool)

(assert (=> b!598103 (=> (not res!258477) (not e!362237))))

(assert (=> b!598103 (= res!258477 (= (size!4706 (_1!3697 (v!16425 lt!254634))) (size!4707 (originalCharacters!1225 (_1!3697 (v!16425 lt!254634))))))))

(declare-fun b!598104 () Bool)

(assert (=> b!598104 (= e!362235 (and (= (size!4706 token!491) lt!254654) (= (originalCharacters!1225 token!491) lt!254645) (= (tuple2!6867 token!491 suffix!1342) (tuple2!6867 (Token!2109 lt!254640 (rule!1956 token!491) lt!254654 lt!254645) lt!254641))))))

(declare-fun b!598105 () Bool)

(assert (=> b!598105 (= e!362244 e!362249)))

(declare-fun res!258472 () Bool)

(assert (=> b!598105 (=> (not res!258472) (not e!362249))))

(assert (=> b!598105 (= res!258472 (= lt!254645 input!2705))))

(assert (=> b!598105 (= lt!254645 (list!2503 (charsOf!815 token!491)))))

(declare-fun b!598106 () Bool)

(declare-fun tp!186484 () Bool)

(assert (=> b!598106 (= e!362250 (and e!362245 tp!186484))))

(assert (= (and start!56590 res!258466) b!598086))

(assert (= (and b!598086 res!258474) b!598087))

(assert (= (and b!598087 res!258475) b!598089))

(assert (= (and b!598089 res!258471) b!598105))

(assert (= (and b!598105 res!258472) b!598101))

(assert (= (and b!598101 res!258465) b!598088))

(assert (= (and b!598088 res!258470) b!598100))

(assert (= (and b!598100 res!258468) b!598085))

(assert (= (and b!598085 res!258479) b!598097))

(assert (= (and b!598097 c!111132) b!598083))

(assert (= (and b!598097 (not c!111132)) b!598096))

(assert (= (and b!598097 res!258467) b!598103))

(assert (= (and b!598103 res!258477) b!598090))

(assert (= (and b!598097 (not res!258478)) b!598102))

(assert (= (and b!598102 res!258473) b!598084))

(assert (= (and b!598084 res!258476) b!598104))

(assert (= (and b!598102 (not res!258469)) b!598098))

(assert (= (and start!56590 (is-Cons!5976 suffix!1342)) b!598093))

(assert (= b!598099 b!598094))

(assert (= b!598106 b!598099))

(assert (= (and start!56590 (is-Cons!5977 rules!3103)) b!598106))

(assert (= b!598095 b!598082))

(assert (= b!598092 b!598095))

(assert (= start!56590 b!598092))

(assert (= (and start!56590 (is-Cons!5976 input!2705)) b!598091))

(declare-fun m!861513 () Bool)

(assert (=> b!598086 m!861513))

(declare-fun m!861515 () Bool)

(assert (=> b!598100 m!861515))

(declare-fun m!861517 () Bool)

(assert (=> b!598099 m!861517))

(declare-fun m!861519 () Bool)

(assert (=> b!598099 m!861519))

(declare-fun m!861521 () Bool)

(assert (=> b!598101 m!861521))

(declare-fun m!861523 () Bool)

(assert (=> b!598101 m!861523))

(declare-fun m!861525 () Bool)

(assert (=> b!598101 m!861525))

(declare-fun m!861527 () Bool)

(assert (=> b!598085 m!861527))

(declare-fun m!861529 () Bool)

(assert (=> b!598102 m!861529))

(declare-fun m!861531 () Bool)

(assert (=> b!598102 m!861531))

(declare-fun m!861533 () Bool)

(assert (=> b!598102 m!861533))

(assert (=> b!598102 m!861529))

(declare-fun m!861535 () Bool)

(assert (=> b!598102 m!861535))

(declare-fun m!861537 () Bool)

(assert (=> b!598102 m!861537))

(declare-fun m!861539 () Bool)

(assert (=> start!56590 m!861539))

(declare-fun m!861541 () Bool)

(assert (=> b!598092 m!861541))

(declare-fun m!861543 () Bool)

(assert (=> b!598084 m!861543))

(declare-fun m!861545 () Bool)

(assert (=> b!598087 m!861545))

(declare-fun m!861547 () Bool)

(assert (=> b!598097 m!861547))

(declare-fun m!861549 () Bool)

(assert (=> b!598097 m!861549))

(declare-fun m!861551 () Bool)

(assert (=> b!598097 m!861551))

(declare-fun m!861553 () Bool)

(assert (=> b!598097 m!861553))

(declare-fun m!861555 () Bool)

(assert (=> b!598097 m!861555))

(declare-fun m!861557 () Bool)

(assert (=> b!598097 m!861557))

(declare-fun m!861559 () Bool)

(assert (=> b!598097 m!861559))

(declare-fun m!861561 () Bool)

(assert (=> b!598097 m!861561))

(declare-fun m!861563 () Bool)

(assert (=> b!598097 m!861563))

(declare-fun m!861565 () Bool)

(assert (=> b!598097 m!861565))

(declare-fun m!861567 () Bool)

(assert (=> b!598097 m!861567))

(declare-fun m!861569 () Bool)

(assert (=> b!598097 m!861569))

(declare-fun m!861571 () Bool)

(assert (=> b!598097 m!861571))

(declare-fun m!861573 () Bool)

(assert (=> b!598097 m!861573))

(declare-fun m!861575 () Bool)

(assert (=> b!598097 m!861575))

(declare-fun m!861577 () Bool)

(assert (=> b!598097 m!861577))

(declare-fun m!861579 () Bool)

(assert (=> b!598097 m!861579))

(assert (=> b!598097 m!861553))

(declare-fun m!861581 () Bool)

(assert (=> b!598097 m!861581))

(declare-fun m!861583 () Bool)

(assert (=> b!598097 m!861583))

(declare-fun m!861585 () Bool)

(assert (=> b!598097 m!861585))

(declare-fun m!861587 () Bool)

(assert (=> b!598097 m!861587))

(declare-fun m!861589 () Bool)

(assert (=> b!598097 m!861589))

(assert (=> b!598097 m!861567))

(declare-fun m!861591 () Bool)

(assert (=> b!598097 m!861591))

(declare-fun m!861593 () Bool)

(assert (=> b!598097 m!861593))

(declare-fun m!861595 () Bool)

(assert (=> b!598097 m!861595))

(declare-fun m!861597 () Bool)

(assert (=> b!598097 m!861597))

(declare-fun m!861599 () Bool)

(assert (=> b!598097 m!861599))

(declare-fun m!861601 () Bool)

(assert (=> b!598103 m!861601))

(declare-fun m!861603 () Bool)

(assert (=> b!598105 m!861603))

(assert (=> b!598105 m!861603))

(declare-fun m!861605 () Bool)

(assert (=> b!598105 m!861605))

(declare-fun m!861607 () Bool)

(assert (=> b!598089 m!861607))

(declare-fun m!861609 () Bool)

(assert (=> b!598088 m!861609))

(declare-fun m!861611 () Bool)

(assert (=> b!598095 m!861611))

(declare-fun m!861613 () Bool)

(assert (=> b!598095 m!861613))

(push 1)

(assert b_and!59055)

(assert (not b_next!17011))

(assert (not b!598086))

(assert (not b!598097))

(assert (not b!598091))

(assert (not b_next!17007))

(assert (not b!598102))

(assert (not b!598085))

(assert (not b!598100))

(assert b_and!59057)

(assert b_and!59051)

(assert (not b!598103))

(assert tp_is_empty!3395)

(assert (not b!598105))

(assert (not b!598095))

(assert (not b_next!17005))

(assert (not start!56590))

(assert (not b!598099))

(assert (not b!598093))

(assert (not b!598092))

(assert (not b!598089))

(assert (not b_next!17009))

(assert (not b!598101))

(assert (not b!598088))

(assert b_and!59053)

(assert (not b!598087))

(assert (not b!598084))

(assert (not b!598106))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!17005))

(assert b_and!59055)

(assert (not b_next!17011))

(assert (not b_next!17007))

(assert b_and!59057)

(assert b_and!59051)

(assert (not b_next!17009))

(assert b_and!59053)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!210159 () Bool)

(declare-fun list!2505 (Conc!1903) List!5986)

(assert (=> d!210159 (= (list!2503 (charsOf!815 token!491)) (list!2505 (c!111134 (charsOf!815 token!491))))))

(declare-fun bs!70726 () Bool)

(assert (= bs!70726 d!210159))

(declare-fun m!861719 () Bool)

(assert (=> bs!70726 m!861719))

(assert (=> b!598105 d!210159))

(declare-fun d!210163 () Bool)

(declare-fun lt!254744 () BalanceConc!3814)

(assert (=> d!210163 (= (list!2503 lt!254744) (originalCharacters!1225 token!491))))

(declare-fun dynLambda!3449 (Int TokenValue!1210) BalanceConc!3814)

(assert (=> d!210163 (= lt!254744 (dynLambda!3449 (toChars!1936 (transformation!1186 (rule!1956 token!491))) (value!38669 token!491)))))

(assert (=> d!210163 (= (charsOf!815 token!491) lt!254744)))

(declare-fun b_lambda!23577 () Bool)

(assert (=> (not b_lambda!23577) (not d!210163)))

(declare-fun t!79621 () Bool)

(declare-fun tb!52167 () Bool)

(assert (=> (and b!598082 (= (toChars!1936 (transformation!1186 (rule!1956 token!491))) (toChars!1936 (transformation!1186 (rule!1956 token!491)))) t!79621) tb!52167))

(declare-fun b!598192 () Bool)

(declare-fun e!362325 () Bool)

(declare-fun tp!186517 () Bool)

(declare-fun inv!7579 (Conc!1903) Bool)

(assert (=> b!598192 (= e!362325 (and (inv!7579 (c!111134 (dynLambda!3449 (toChars!1936 (transformation!1186 (rule!1956 token!491))) (value!38669 token!491)))) tp!186517))))

(declare-fun result!58650 () Bool)

(declare-fun inv!7580 (BalanceConc!3814) Bool)

(assert (=> tb!52167 (= result!58650 (and (inv!7580 (dynLambda!3449 (toChars!1936 (transformation!1186 (rule!1956 token!491))) (value!38669 token!491))) e!362325))))

(assert (= tb!52167 b!598192))

(declare-fun m!861721 () Bool)

(assert (=> b!598192 m!861721))

(declare-fun m!861723 () Bool)

(assert (=> tb!52167 m!861723))

(assert (=> d!210163 t!79621))

(declare-fun b_and!59067 () Bool)

(assert (= b_and!59053 (and (=> t!79621 result!58650) b_and!59067)))

(declare-fun t!79623 () Bool)

(declare-fun tb!52169 () Bool)

(assert (=> (and b!598094 (= (toChars!1936 (transformation!1186 (h!11378 rules!3103))) (toChars!1936 (transformation!1186 (rule!1956 token!491)))) t!79623) tb!52169))

(declare-fun result!58654 () Bool)

(assert (= result!58654 result!58650))

(assert (=> d!210163 t!79623))

(declare-fun b_and!59069 () Bool)

(assert (= b_and!59057 (and (=> t!79623 result!58654) b_and!59069)))

(declare-fun m!861725 () Bool)

(assert (=> d!210163 m!861725))

(declare-fun m!861727 () Bool)

(assert (=> d!210163 m!861727))

(assert (=> b!598105 d!210163))

(declare-fun d!210165 () Bool)

(declare-fun lt!254747 () Int)

(assert (=> d!210165 (>= lt!254747 0)))

(declare-fun e!362330 () Int)

(assert (=> d!210165 (= lt!254747 e!362330)))

(declare-fun c!111146 () Bool)

(assert (=> d!210165 (= c!111146 (is-Nil!5976 (originalCharacters!1225 token!491)))))

(assert (=> d!210165 (= (size!4707 (originalCharacters!1225 token!491)) lt!254747)))

(declare-fun b!598199 () Bool)

(assert (=> b!598199 (= e!362330 0)))

(declare-fun b!598200 () Bool)

(assert (=> b!598200 (= e!362330 (+ 1 (size!4707 (t!79615 (originalCharacters!1225 token!491)))))))

(assert (= (and d!210165 c!111146) b!598199))

(assert (= (and d!210165 (not c!111146)) b!598200))

(declare-fun m!861729 () Bool)

(assert (=> b!598200 m!861729))

(assert (=> b!598084 d!210165))

(declare-fun d!210167 () Bool)

(declare-fun lt!254748 () Int)

(assert (=> d!210167 (>= lt!254748 0)))

(declare-fun e!362331 () Int)

(assert (=> d!210167 (= lt!254748 e!362331)))

(declare-fun c!111147 () Bool)

(assert (=> d!210167 (= c!111147 (is-Nil!5976 (originalCharacters!1225 (_1!3697 (v!16425 lt!254634)))))))

(assert (=> d!210167 (= (size!4707 (originalCharacters!1225 (_1!3697 (v!16425 lt!254634)))) lt!254748)))

(declare-fun b!598201 () Bool)

(assert (=> b!598201 (= e!362331 0)))

(declare-fun b!598202 () Bool)

(assert (=> b!598202 (= e!362331 (+ 1 (size!4707 (t!79615 (originalCharacters!1225 (_1!3697 (v!16425 lt!254634)))))))))

(assert (= (and d!210167 c!111147) b!598201))

(assert (= (and d!210167 (not c!111147)) b!598202))

(declare-fun m!861731 () Bool)

(assert (=> b!598202 m!861731))

(assert (=> b!598103 d!210167))

(declare-fun d!210169 () Bool)

(assert (=> d!210169 (= (isEmpty!4313 rules!3103) (is-Nil!5977 rules!3103))))

(assert (=> b!598086 d!210169))

(declare-fun d!210171 () Bool)

(assert (=> d!210171 (and (= lt!254645 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!254751 () Unit!10870)

(declare-fun choose!4356 (List!5986 List!5986 List!5986 List!5986) Unit!10870)

(assert (=> d!210171 (= lt!254751 (choose!4356 lt!254645 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!210171 (= (++!1674 lt!254645 suffix!1342) (++!1674 input!2705 suffix!1342))))

(assert (=> d!210171 (= (lemmaConcatSameAndSameSizesThenSameLists!259 lt!254645 suffix!1342 input!2705 suffix!1342) lt!254751)))

(declare-fun bs!70727 () Bool)

(assert (= bs!70727 d!210171))

(declare-fun m!861737 () Bool)

(assert (=> bs!70727 m!861737))

(assert (=> bs!70727 m!861527))

(assert (=> bs!70727 m!861525))

(assert (=> b!598097 d!210171))

(declare-fun d!210175 () Bool)

(assert (=> d!210175 (isPrefix!814 lt!254635 (++!1674 lt!254635 (_2!3697 (v!16425 lt!254634))))))

(declare-fun lt!254754 () Unit!10870)

(declare-fun choose!4357 (List!5986 List!5986) Unit!10870)

(assert (=> d!210175 (= lt!254754 (choose!4357 lt!254635 (_2!3697 (v!16425 lt!254634))))))

(assert (=> d!210175 (= (lemmaConcatTwoListThenFirstIsPrefix!659 lt!254635 (_2!3697 (v!16425 lt!254634))) lt!254754)))

(declare-fun bs!70728 () Bool)

(assert (= bs!70728 d!210175))

(assert (=> bs!70728 m!861579))

(assert (=> bs!70728 m!861579))

(declare-fun m!861739 () Bool)

(assert (=> bs!70728 m!861739))

(declare-fun m!861741 () Bool)

(assert (=> bs!70728 m!861741))

(assert (=> b!598097 d!210175))

(declare-fun b!598212 () Bool)

(declare-fun e!362339 () Bool)

(declare-fun e!362340 () Bool)

(assert (=> b!598212 (= e!362339 e!362340)))

(declare-fun res!258544 () Bool)

(assert (=> b!598212 (=> (not res!258544) (not e!362340))))

(assert (=> b!598212 (= res!258544 (not (is-Nil!5976 lt!254627)))))

(declare-fun b!598215 () Bool)

(declare-fun e!362341 () Bool)

(assert (=> b!598215 (= e!362341 (>= (size!4707 lt!254627) (size!4707 lt!254645)))))

(declare-fun d!210177 () Bool)

(assert (=> d!210177 e!362341))

(declare-fun res!258546 () Bool)

(assert (=> d!210177 (=> res!258546 e!362341)))

(declare-fun lt!254757 () Bool)

(assert (=> d!210177 (= res!258546 (not lt!254757))))

(assert (=> d!210177 (= lt!254757 e!362339)))

(declare-fun res!258545 () Bool)

(assert (=> d!210177 (=> res!258545 e!362339)))

(assert (=> d!210177 (= res!258545 (is-Nil!5976 lt!254645))))

(assert (=> d!210177 (= (isPrefix!814 lt!254645 lt!254627) lt!254757)))

(declare-fun b!598214 () Bool)

(declare-fun tail!798 (List!5986) List!5986)

(assert (=> b!598214 (= e!362340 (isPrefix!814 (tail!798 lt!254645) (tail!798 lt!254627)))))

(declare-fun b!598213 () Bool)

(declare-fun res!258547 () Bool)

(assert (=> b!598213 (=> (not res!258547) (not e!362340))))

(declare-fun head!1269 (List!5986) C!3962)

(assert (=> b!598213 (= res!258547 (= (head!1269 lt!254645) (head!1269 lt!254627)))))

(assert (= (and d!210177 (not res!258545)) b!598212))

(assert (= (and b!598212 res!258544) b!598213))

(assert (= (and b!598213 res!258547) b!598214))

(assert (= (and d!210177 (not res!258546)) b!598215))

(declare-fun m!861743 () Bool)

(assert (=> b!598215 m!861743))

(assert (=> b!598215 m!861577))

(declare-fun m!861745 () Bool)

(assert (=> b!598214 m!861745))

(declare-fun m!861747 () Bool)

(assert (=> b!598214 m!861747))

(assert (=> b!598214 m!861745))

(assert (=> b!598214 m!861747))

(declare-fun m!861749 () Bool)

(assert (=> b!598214 m!861749))

(declare-fun m!861751 () Bool)

(assert (=> b!598213 m!861751))

(declare-fun m!861753 () Bool)

(assert (=> b!598213 m!861753))

(assert (=> b!598097 d!210177))

(declare-fun d!210179 () Bool)

(assert (=> d!210179 (isPrefix!814 lt!254645 (++!1674 lt!254645 suffix!1342))))

(declare-fun lt!254758 () Unit!10870)

(assert (=> d!210179 (= lt!254758 (choose!4357 lt!254645 suffix!1342))))

(assert (=> d!210179 (= (lemmaConcatTwoListThenFirstIsPrefix!659 lt!254645 suffix!1342) lt!254758)))

(declare-fun bs!70729 () Bool)

(assert (= bs!70729 d!210179))

(assert (=> bs!70729 m!861527))

(assert (=> bs!70729 m!861527))

(declare-fun m!861755 () Bool)

(assert (=> bs!70729 m!861755))

(declare-fun m!861757 () Bool)

(assert (=> bs!70729 m!861757))

(assert (=> b!598097 d!210179))

(declare-fun b!598224 () Bool)

(declare-fun e!362347 () List!5986)

(assert (=> b!598224 (= e!362347 (_2!3697 (v!16425 lt!254634)))))

(declare-fun d!210181 () Bool)

(declare-fun e!362346 () Bool)

(assert (=> d!210181 e!362346))

(declare-fun res!258552 () Bool)

(assert (=> d!210181 (=> (not res!258552) (not e!362346))))

(declare-fun lt!254761 () List!5986)

(declare-fun content!1073 (List!5986) (Set C!3962))

(assert (=> d!210181 (= res!258552 (= (content!1073 lt!254761) (set.union (content!1073 lt!254635) (content!1073 (_2!3697 (v!16425 lt!254634))))))))

(assert (=> d!210181 (= lt!254761 e!362347)))

(declare-fun c!111150 () Bool)

(assert (=> d!210181 (= c!111150 (is-Nil!5976 lt!254635))))

(assert (=> d!210181 (= (++!1674 lt!254635 (_2!3697 (v!16425 lt!254634))) lt!254761)))

(declare-fun b!598227 () Bool)

(assert (=> b!598227 (= e!362346 (or (not (= (_2!3697 (v!16425 lt!254634)) Nil!5976)) (= lt!254761 lt!254635)))))

(declare-fun b!598226 () Bool)

(declare-fun res!258553 () Bool)

(assert (=> b!598226 (=> (not res!258553) (not e!362346))))

(assert (=> b!598226 (= res!258553 (= (size!4707 lt!254761) (+ (size!4707 lt!254635) (size!4707 (_2!3697 (v!16425 lt!254634))))))))

(declare-fun b!598225 () Bool)

(assert (=> b!598225 (= e!362347 (Cons!5976 (h!11377 lt!254635) (++!1674 (t!79615 lt!254635) (_2!3697 (v!16425 lt!254634)))))))

(assert (= (and d!210181 c!111150) b!598224))

(assert (= (and d!210181 (not c!111150)) b!598225))

(assert (= (and d!210181 res!258552) b!598226))

(assert (= (and b!598226 res!258553) b!598227))

(declare-fun m!861759 () Bool)

(assert (=> d!210181 m!861759))

(declare-fun m!861761 () Bool)

(assert (=> d!210181 m!861761))

(declare-fun m!861763 () Bool)

(assert (=> d!210181 m!861763))

(declare-fun m!861765 () Bool)

(assert (=> b!598226 m!861765))

(assert (=> b!598226 m!861581))

(declare-fun m!861767 () Bool)

(assert (=> b!598226 m!861767))

(declare-fun m!861769 () Bool)

(assert (=> b!598225 m!861769))

(assert (=> b!598097 d!210181))

(declare-fun d!210183 () Bool)

(declare-fun lt!254762 () BalanceConc!3814)

(assert (=> d!210183 (= (list!2503 lt!254762) (originalCharacters!1225 (_1!3697 (v!16425 lt!254634))))))

(assert (=> d!210183 (= lt!254762 (dynLambda!3449 (toChars!1936 (transformation!1186 (rule!1956 (_1!3697 (v!16425 lt!254634))))) (value!38669 (_1!3697 (v!16425 lt!254634)))))))

(assert (=> d!210183 (= (charsOf!815 (_1!3697 (v!16425 lt!254634))) lt!254762)))

(declare-fun b_lambda!23579 () Bool)

(assert (=> (not b_lambda!23579) (not d!210183)))

(declare-fun t!79625 () Bool)

(declare-fun tb!52171 () Bool)

(assert (=> (and b!598082 (= (toChars!1936 (transformation!1186 (rule!1956 token!491))) (toChars!1936 (transformation!1186 (rule!1956 (_1!3697 (v!16425 lt!254634)))))) t!79625) tb!52171))

(declare-fun b!598228 () Bool)

(declare-fun e!362348 () Bool)

(declare-fun tp!186518 () Bool)

(assert (=> b!598228 (= e!362348 (and (inv!7579 (c!111134 (dynLambda!3449 (toChars!1936 (transformation!1186 (rule!1956 (_1!3697 (v!16425 lt!254634))))) (value!38669 (_1!3697 (v!16425 lt!254634)))))) tp!186518))))

(declare-fun result!58656 () Bool)

(assert (=> tb!52171 (= result!58656 (and (inv!7580 (dynLambda!3449 (toChars!1936 (transformation!1186 (rule!1956 (_1!3697 (v!16425 lt!254634))))) (value!38669 (_1!3697 (v!16425 lt!254634))))) e!362348))))

(assert (= tb!52171 b!598228))

(declare-fun m!861771 () Bool)

(assert (=> b!598228 m!861771))

(declare-fun m!861773 () Bool)

(assert (=> tb!52171 m!861773))

(assert (=> d!210183 t!79625))

(declare-fun b_and!59071 () Bool)

(assert (= b_and!59067 (and (=> t!79625 result!58656) b_and!59071)))

(declare-fun t!79627 () Bool)

(declare-fun tb!52173 () Bool)

(assert (=> (and b!598094 (= (toChars!1936 (transformation!1186 (h!11378 rules!3103))) (toChars!1936 (transformation!1186 (rule!1956 (_1!3697 (v!16425 lt!254634)))))) t!79627) tb!52173))

(declare-fun result!58658 () Bool)

(assert (= result!58658 result!58656))

(assert (=> d!210183 t!79627))

(declare-fun b_and!59073 () Bool)

(assert (= b_and!59069 (and (=> t!79627 result!58658) b_and!59073)))

(declare-fun m!861775 () Bool)

(assert (=> d!210183 m!861775))

(declare-fun m!861777 () Bool)

(assert (=> d!210183 m!861777))

(assert (=> b!598097 d!210183))

(declare-fun d!210185 () Bool)

(assert (=> d!210185 (= (list!2503 (charsOf!815 (_1!3697 (v!16425 lt!254634)))) (list!2505 (c!111134 (charsOf!815 (_1!3697 (v!16425 lt!254634))))))))

(declare-fun bs!70730 () Bool)

(assert (= bs!70730 d!210185))

(declare-fun m!861779 () Bool)

(assert (=> bs!70730 m!861779))

(assert (=> b!598097 d!210185))

(declare-fun d!210187 () Bool)

(declare-fun e!362351 () Bool)

(assert (=> d!210187 e!362351))

(declare-fun res!258556 () Bool)

(assert (=> d!210187 (=> (not res!258556) (not e!362351))))

(declare-fun semiInverseModEq!470 (Int Int) Bool)

(assert (=> d!210187 (= res!258556 (semiInverseModEq!470 (toChars!1936 (transformation!1186 (rule!1956 (_1!3697 (v!16425 lt!254634))))) (toValue!2077 (transformation!1186 (rule!1956 (_1!3697 (v!16425 lt!254634)))))))))

(declare-fun Unit!10880 () Unit!10870)

(assert (=> d!210187 (= (lemmaInv!294 (transformation!1186 (rule!1956 (_1!3697 (v!16425 lt!254634))))) Unit!10880)))

(declare-fun b!598231 () Bool)

(declare-fun equivClasses!453 (Int Int) Bool)

(assert (=> b!598231 (= e!362351 (equivClasses!453 (toChars!1936 (transformation!1186 (rule!1956 (_1!3697 (v!16425 lt!254634))))) (toValue!2077 (transformation!1186 (rule!1956 (_1!3697 (v!16425 lt!254634)))))))))

(assert (= (and d!210187 res!258556) b!598231))

(declare-fun m!861781 () Bool)

(assert (=> d!210187 m!861781))

(declare-fun m!861783 () Bool)

(assert (=> b!598231 m!861783))

(assert (=> b!598097 d!210187))

(declare-fun d!210189 () Bool)

(assert (=> d!210189 (isPrefix!814 input!2705 input!2705)))

(declare-fun lt!254765 () Unit!10870)

(declare-fun choose!4358 (List!5986 List!5986) Unit!10870)

(assert (=> d!210189 (= lt!254765 (choose!4358 input!2705 input!2705))))

(assert (=> d!210189 (= (lemmaIsPrefixRefl!550 input!2705 input!2705) lt!254765)))

(declare-fun bs!70731 () Bool)

(assert (= bs!70731 d!210189))

(assert (=> bs!70731 m!861597))

(declare-fun m!861785 () Bool)

(assert (=> bs!70731 m!861785))

(assert (=> b!598097 d!210189))

(declare-fun d!210191 () Bool)

(declare-fun e!362352 () Bool)

(assert (=> d!210191 e!362352))

(declare-fun res!258557 () Bool)

(assert (=> d!210191 (=> (not res!258557) (not e!362352))))

(assert (=> d!210191 (= res!258557 (semiInverseModEq!470 (toChars!1936 (transformation!1186 (rule!1956 token!491))) (toValue!2077 (transformation!1186 (rule!1956 token!491)))))))

(declare-fun Unit!10881 () Unit!10870)

(assert (=> d!210191 (= (lemmaInv!294 (transformation!1186 (rule!1956 token!491))) Unit!10881)))

(declare-fun b!598232 () Bool)

(assert (=> b!598232 (= e!362352 (equivClasses!453 (toChars!1936 (transformation!1186 (rule!1956 token!491))) (toValue!2077 (transformation!1186 (rule!1956 token!491)))))))

(assert (= (and d!210191 res!258557) b!598232))

(declare-fun m!861787 () Bool)

(assert (=> d!210191 m!861787))

(declare-fun m!861789 () Bool)

(assert (=> b!598232 m!861789))

(assert (=> b!598097 d!210191))

(declare-fun d!210193 () Bool)

(declare-fun lt!254766 () Int)

(assert (=> d!210193 (>= lt!254766 0)))

(declare-fun e!362353 () Int)

(assert (=> d!210193 (= lt!254766 e!362353)))

(declare-fun c!111151 () Bool)

(assert (=> d!210193 (= c!111151 (is-Nil!5976 lt!254645))))

(assert (=> d!210193 (= (size!4707 lt!254645) lt!254766)))

(declare-fun b!598233 () Bool)

(assert (=> b!598233 (= e!362353 0)))

(declare-fun b!598234 () Bool)

(assert (=> b!598234 (= e!362353 (+ 1 (size!4707 (t!79615 lt!254645))))))

(assert (= (and d!210193 c!111151) b!598233))

(assert (= (and d!210193 (not c!111151)) b!598234))

(declare-fun m!861791 () Bool)

(assert (=> b!598234 m!861791))

(assert (=> b!598097 d!210193))

(declare-fun d!210195 () Bool)

(declare-fun lt!254769 () List!5986)

(assert (=> d!210195 (= (++!1674 lt!254635 lt!254769) input!2705)))

(declare-fun e!362356 () List!5986)

(assert (=> d!210195 (= lt!254769 e!362356)))

(declare-fun c!111154 () Bool)

(assert (=> d!210195 (= c!111154 (is-Cons!5976 lt!254635))))

(assert (=> d!210195 (>= (size!4707 input!2705) (size!4707 lt!254635))))

(assert (=> d!210195 (= (getSuffix!331 input!2705 lt!254635) lt!254769)))

(declare-fun b!598239 () Bool)

(assert (=> b!598239 (= e!362356 (getSuffix!331 (tail!798 input!2705) (t!79615 lt!254635)))))

(declare-fun b!598240 () Bool)

(assert (=> b!598240 (= e!362356 input!2705)))

(assert (= (and d!210195 c!111154) b!598239))

(assert (= (and d!210195 (not c!111154)) b!598240))

(declare-fun m!861793 () Bool)

(assert (=> d!210195 m!861793))

(declare-fun m!861795 () Bool)

(assert (=> d!210195 m!861795))

(assert (=> d!210195 m!861581))

(declare-fun m!861797 () Bool)

(assert (=> b!598239 m!861797))

(assert (=> b!598239 m!861797))

(declare-fun m!861799 () Bool)

(assert (=> b!598239 m!861799))

(assert (=> b!598097 d!210195))

(declare-fun b!598241 () Bool)

(declare-fun e!362357 () Bool)

(declare-fun e!362358 () Bool)

(assert (=> b!598241 (= e!362357 e!362358)))

(declare-fun res!258558 () Bool)

(assert (=> b!598241 (=> (not res!258558) (not e!362358))))

(assert (=> b!598241 (= res!258558 (not (is-Nil!5976 lt!254627)))))

(declare-fun b!598244 () Bool)

(declare-fun e!362359 () Bool)

(assert (=> b!598244 (= e!362359 (>= (size!4707 lt!254627) (size!4707 input!2705)))))

(declare-fun d!210197 () Bool)

(assert (=> d!210197 e!362359))

(declare-fun res!258560 () Bool)

(assert (=> d!210197 (=> res!258560 e!362359)))

(declare-fun lt!254770 () Bool)

(assert (=> d!210197 (= res!258560 (not lt!254770))))

(assert (=> d!210197 (= lt!254770 e!362357)))

(declare-fun res!258559 () Bool)

(assert (=> d!210197 (=> res!258559 e!362357)))

(assert (=> d!210197 (= res!258559 (is-Nil!5976 input!2705))))

(assert (=> d!210197 (= (isPrefix!814 input!2705 lt!254627) lt!254770)))

(declare-fun b!598243 () Bool)

(assert (=> b!598243 (= e!362358 (isPrefix!814 (tail!798 input!2705) (tail!798 lt!254627)))))

(declare-fun b!598242 () Bool)

(declare-fun res!258561 () Bool)

(assert (=> b!598242 (=> (not res!258561) (not e!362358))))

(assert (=> b!598242 (= res!258561 (= (head!1269 input!2705) (head!1269 lt!254627)))))

(assert (= (and d!210197 (not res!258559)) b!598241))

(assert (= (and b!598241 res!258558) b!598242))

(assert (= (and b!598242 res!258561) b!598243))

(assert (= (and d!210197 (not res!258560)) b!598244))

(assert (=> b!598244 m!861743))

(assert (=> b!598244 m!861795))

(assert (=> b!598243 m!861797))

(assert (=> b!598243 m!861747))

(assert (=> b!598243 m!861797))

(assert (=> b!598243 m!861747))

(declare-fun m!861801 () Bool)

(assert (=> b!598243 m!861801))

(declare-fun m!861803 () Bool)

(assert (=> b!598242 m!861803))

(assert (=> b!598242 m!861753))

(assert (=> b!598097 d!210197))

(declare-fun d!210199 () Bool)

(assert (=> d!210199 (ruleValid!384 thiss!22590 (rule!1956 (_1!3697 (v!16425 lt!254634))))))

(declare-fun lt!254773 () Unit!10870)

(declare-fun choose!4359 (LexerInterface!1072 Rule!2172 List!5987) Unit!10870)

(assert (=> d!210199 (= lt!254773 (choose!4359 thiss!22590 (rule!1956 (_1!3697 (v!16425 lt!254634))) rules!3103))))

(assert (=> d!210199 (contains!1396 rules!3103 (rule!1956 (_1!3697 (v!16425 lt!254634))))))

(assert (=> d!210199 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!231 thiss!22590 (rule!1956 (_1!3697 (v!16425 lt!254634))) rules!3103) lt!254773)))

(declare-fun bs!70732 () Bool)

(assert (= bs!70732 d!210199))

(assert (=> bs!70732 m!861585))

(declare-fun m!861805 () Bool)

(assert (=> bs!70732 m!861805))

(assert (=> bs!70732 m!861537))

(assert (=> b!598097 d!210199))

(declare-fun d!210201 () Bool)

(declare-fun lt!254774 () Int)

(assert (=> d!210201 (>= lt!254774 0)))

(declare-fun e!362360 () Int)

(assert (=> d!210201 (= lt!254774 e!362360)))

(declare-fun c!111155 () Bool)

(assert (=> d!210201 (= c!111155 (is-Nil!5976 lt!254635))))

(assert (=> d!210201 (= (size!4707 lt!254635) lt!254774)))

(declare-fun b!598245 () Bool)

(assert (=> b!598245 (= e!362360 0)))

(declare-fun b!598246 () Bool)

(assert (=> b!598246 (= e!362360 (+ 1 (size!4707 (t!79615 lt!254635))))))

(assert (= (and d!210201 c!111155) b!598245))

(assert (= (and d!210201 (not c!111155)) b!598246))

(declare-fun m!861807 () Bool)

(assert (=> b!598246 m!861807))

(assert (=> b!598097 d!210201))

(declare-fun b!598247 () Bool)

(declare-fun e!362361 () Bool)

(declare-fun e!362362 () Bool)

(assert (=> b!598247 (= e!362361 e!362362)))

(declare-fun res!258562 () Bool)

(assert (=> b!598247 (=> (not res!258562) (not e!362362))))

(assert (=> b!598247 (= res!258562 (not (is-Nil!5976 lt!254651)))))

(declare-fun b!598250 () Bool)

(declare-fun e!362363 () Bool)

(assert (=> b!598250 (= e!362363 (>= (size!4707 lt!254651) (size!4707 lt!254635)))))

(declare-fun d!210203 () Bool)

(assert (=> d!210203 e!362363))

(declare-fun res!258564 () Bool)

(assert (=> d!210203 (=> res!258564 e!362363)))

(declare-fun lt!254775 () Bool)

(assert (=> d!210203 (= res!258564 (not lt!254775))))

(assert (=> d!210203 (= lt!254775 e!362361)))

(declare-fun res!258563 () Bool)

(assert (=> d!210203 (=> res!258563 e!362361)))

(assert (=> d!210203 (= res!258563 (is-Nil!5976 lt!254635))))

(assert (=> d!210203 (= (isPrefix!814 lt!254635 lt!254651) lt!254775)))

(declare-fun b!598249 () Bool)

(assert (=> b!598249 (= e!362362 (isPrefix!814 (tail!798 lt!254635) (tail!798 lt!254651)))))

(declare-fun b!598248 () Bool)

(declare-fun res!258565 () Bool)

(assert (=> b!598248 (=> (not res!258565) (not e!362362))))

(assert (=> b!598248 (= res!258565 (= (head!1269 lt!254635) (head!1269 lt!254651)))))

(assert (= (and d!210203 (not res!258563)) b!598247))

(assert (= (and b!598247 res!258562) b!598248))

(assert (= (and b!598248 res!258565) b!598249))

(assert (= (and d!210203 (not res!258564)) b!598250))

(declare-fun m!861809 () Bool)

(assert (=> b!598250 m!861809))

(assert (=> b!598250 m!861581))

(declare-fun m!861811 () Bool)

(assert (=> b!598249 m!861811))

(declare-fun m!861813 () Bool)

(assert (=> b!598249 m!861813))

(assert (=> b!598249 m!861811))

(assert (=> b!598249 m!861813))

(declare-fun m!861815 () Bool)

(assert (=> b!598249 m!861815))

(declare-fun m!861817 () Bool)

(assert (=> b!598248 m!861817))

(declare-fun m!861819 () Bool)

(assert (=> b!598248 m!861819))

(assert (=> b!598097 d!210203))

(declare-fun b!598251 () Bool)

(declare-fun e!362364 () Bool)

(declare-fun e!362365 () Bool)

(assert (=> b!598251 (= e!362364 e!362365)))

(declare-fun res!258566 () Bool)

(assert (=> b!598251 (=> (not res!258566) (not e!362365))))

(assert (=> b!598251 (= res!258566 (not (is-Nil!5976 input!2705)))))

(declare-fun b!598254 () Bool)

(declare-fun e!362366 () Bool)

(assert (=> b!598254 (= e!362366 (>= (size!4707 input!2705) (size!4707 input!2705)))))

(declare-fun d!210205 () Bool)

(assert (=> d!210205 e!362366))

(declare-fun res!258568 () Bool)

(assert (=> d!210205 (=> res!258568 e!362366)))

(declare-fun lt!254776 () Bool)

(assert (=> d!210205 (= res!258568 (not lt!254776))))

(assert (=> d!210205 (= lt!254776 e!362364)))

(declare-fun res!258567 () Bool)

(assert (=> d!210205 (=> res!258567 e!362364)))

(assert (=> d!210205 (= res!258567 (is-Nil!5976 input!2705))))

(assert (=> d!210205 (= (isPrefix!814 input!2705 input!2705) lt!254776)))

(declare-fun b!598253 () Bool)

(assert (=> b!598253 (= e!362365 (isPrefix!814 (tail!798 input!2705) (tail!798 input!2705)))))

(declare-fun b!598252 () Bool)

(declare-fun res!258569 () Bool)

(assert (=> b!598252 (=> (not res!258569) (not e!362365))))

(assert (=> b!598252 (= res!258569 (= (head!1269 input!2705) (head!1269 input!2705)))))

(assert (= (and d!210205 (not res!258567)) b!598251))

(assert (= (and b!598251 res!258566) b!598252))

(assert (= (and b!598252 res!258569) b!598253))

(assert (= (and d!210205 (not res!258568)) b!598254))

(assert (=> b!598254 m!861795))

(assert (=> b!598254 m!861795))

(assert (=> b!598253 m!861797))

(assert (=> b!598253 m!861797))

(assert (=> b!598253 m!861797))

(assert (=> b!598253 m!861797))

(declare-fun m!861821 () Bool)

(assert (=> b!598253 m!861821))

(assert (=> b!598252 m!861803))

(assert (=> b!598252 m!861803))

(assert (=> b!598097 d!210205))

(declare-fun d!210207 () Bool)

(assert (=> d!210207 (ruleValid!384 thiss!22590 (rule!1956 token!491))))

(declare-fun lt!254777 () Unit!10870)

(assert (=> d!210207 (= lt!254777 (choose!4359 thiss!22590 (rule!1956 token!491) rules!3103))))

(assert (=> d!210207 (contains!1396 rules!3103 (rule!1956 token!491))))

(assert (=> d!210207 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!231 thiss!22590 (rule!1956 token!491) rules!3103) lt!254777)))

(declare-fun bs!70733 () Bool)

(assert (= bs!70733 d!210207))

(assert (=> bs!70733 m!861573))

(declare-fun m!861823 () Bool)

(assert (=> bs!70733 m!861823))

(declare-fun m!861825 () Bool)

(assert (=> bs!70733 m!861825))

(assert (=> b!598097 d!210207))

(declare-fun d!210209 () Bool)

(assert (=> d!210209 (isPrefix!814 input!2705 (++!1674 input!2705 suffix!1342))))

(declare-fun lt!254778 () Unit!10870)

(assert (=> d!210209 (= lt!254778 (choose!4357 input!2705 suffix!1342))))

(assert (=> d!210209 (= (lemmaConcatTwoListThenFirstIsPrefix!659 input!2705 suffix!1342) lt!254778)))

(declare-fun bs!70734 () Bool)

(assert (= bs!70734 d!210209))

(assert (=> bs!70734 m!861525))

(assert (=> bs!70734 m!861525))

(declare-fun m!861827 () Bool)

(assert (=> bs!70734 m!861827))

(declare-fun m!861829 () Bool)

(assert (=> bs!70734 m!861829))

(assert (=> b!598097 d!210209))

(declare-fun d!210211 () Bool)

(declare-fun res!258574 () Bool)

(declare-fun e!362369 () Bool)

(assert (=> d!210211 (=> (not res!258574) (not e!362369))))

(declare-fun validRegex!523 (Regex!1520) Bool)

(assert (=> d!210211 (= res!258574 (validRegex!523 (regex!1186 (rule!1956 token!491))))))

(assert (=> d!210211 (= (ruleValid!384 thiss!22590 (rule!1956 token!491)) e!362369)))

(declare-fun b!598259 () Bool)

(declare-fun res!258575 () Bool)

(assert (=> b!598259 (=> (not res!258575) (not e!362369))))

(declare-fun nullable!428 (Regex!1520) Bool)

(assert (=> b!598259 (= res!258575 (not (nullable!428 (regex!1186 (rule!1956 token!491)))))))

(declare-fun b!598260 () Bool)

(assert (=> b!598260 (= e!362369 (not (= (tag!1448 (rule!1956 token!491)) (String!7797 ""))))))

(assert (= (and d!210211 res!258574) b!598259))

(assert (= (and b!598259 res!258575) b!598260))

(declare-fun m!861831 () Bool)

(assert (=> d!210211 m!861831))

(declare-fun m!861833 () Bool)

(assert (=> b!598259 m!861833))

(assert (=> b!598097 d!210211))

(declare-fun b!598261 () Bool)

(declare-fun e!362370 () Bool)

(declare-fun e!362371 () Bool)

(assert (=> b!598261 (= e!362370 e!362371)))

(declare-fun res!258576 () Bool)

(assert (=> b!598261 (=> (not res!258576) (not e!362371))))

(assert (=> b!598261 (= res!258576 (not (is-Nil!5976 lt!254637)))))

(declare-fun b!598264 () Bool)

(declare-fun e!362372 () Bool)

(assert (=> b!598264 (= e!362372 (>= (size!4707 lt!254637) (size!4707 input!2705)))))

(declare-fun d!210213 () Bool)

(assert (=> d!210213 e!362372))

(declare-fun res!258578 () Bool)

(assert (=> d!210213 (=> res!258578 e!362372)))

(declare-fun lt!254779 () Bool)

(assert (=> d!210213 (= res!258578 (not lt!254779))))

(assert (=> d!210213 (= lt!254779 e!362370)))

(declare-fun res!258577 () Bool)

(assert (=> d!210213 (=> res!258577 e!362370)))

(assert (=> d!210213 (= res!258577 (is-Nil!5976 input!2705))))

(assert (=> d!210213 (= (isPrefix!814 input!2705 lt!254637) lt!254779)))

(declare-fun b!598263 () Bool)

(assert (=> b!598263 (= e!362371 (isPrefix!814 (tail!798 input!2705) (tail!798 lt!254637)))))

(declare-fun b!598262 () Bool)

(declare-fun res!258579 () Bool)

(assert (=> b!598262 (=> (not res!258579) (not e!362371))))

(assert (=> b!598262 (= res!258579 (= (head!1269 input!2705) (head!1269 lt!254637)))))

(assert (= (and d!210213 (not res!258577)) b!598261))

(assert (= (and b!598261 res!258576) b!598262))

(assert (= (and b!598262 res!258579) b!598263))

(assert (= (and d!210213 (not res!258578)) b!598264))

(declare-fun m!861835 () Bool)

(assert (=> b!598264 m!861835))

(assert (=> b!598264 m!861795))

(assert (=> b!598263 m!861797))

(declare-fun m!861837 () Bool)

(assert (=> b!598263 m!861837))

(assert (=> b!598263 m!861797))

(assert (=> b!598263 m!861837))

(declare-fun m!861839 () Bool)

(assert (=> b!598263 m!861839))

(assert (=> b!598262 m!861803))

(declare-fun m!861841 () Bool)

(assert (=> b!598262 m!861841))

(assert (=> b!598097 d!210213))

(declare-fun d!210215 () Bool)

(assert (=> d!210215 (= (size!4706 (_1!3697 (v!16425 lt!254634))) (size!4707 (originalCharacters!1225 (_1!3697 (v!16425 lt!254634)))))))

(declare-fun Unit!10882 () Unit!10870)

(assert (=> d!210215 (= (lemmaCharactersSize!245 (_1!3697 (v!16425 lt!254634))) Unit!10882)))

(declare-fun bs!70735 () Bool)

(assert (= bs!70735 d!210215))

(assert (=> bs!70735 m!861601))

(assert (=> b!598097 d!210215))

(declare-fun d!210217 () Bool)

(declare-fun fromListB!597 (List!5986) BalanceConc!3814)

(assert (=> d!210217 (= (seqFromList!1362 lt!254635) (fromListB!597 lt!254635))))

(declare-fun bs!70736 () Bool)

(assert (= bs!70736 d!210217))

(declare-fun m!861843 () Bool)

(assert (=> bs!70736 m!861843))

(assert (=> b!598097 d!210217))

(declare-fun d!210219 () Bool)

(declare-fun dynLambda!3450 (Int BalanceConc!3814) TokenValue!1210)

(assert (=> d!210219 (= (apply!1439 (transformation!1186 (rule!1956 (_1!3697 (v!16425 lt!254634)))) (seqFromList!1362 lt!254635)) (dynLambda!3450 (toValue!2077 (transformation!1186 (rule!1956 (_1!3697 (v!16425 lt!254634))))) (seqFromList!1362 lt!254635)))))

(declare-fun b_lambda!23581 () Bool)

(assert (=> (not b_lambda!23581) (not d!210219)))

(declare-fun tb!52175 () Bool)

(declare-fun t!79629 () Bool)

(assert (=> (and b!598082 (= (toValue!2077 (transformation!1186 (rule!1956 token!491))) (toValue!2077 (transformation!1186 (rule!1956 (_1!3697 (v!16425 lt!254634)))))) t!79629) tb!52175))

(declare-fun result!58660 () Bool)

(assert (=> tb!52175 (= result!58660 (inv!21 (dynLambda!3450 (toValue!2077 (transformation!1186 (rule!1956 (_1!3697 (v!16425 lt!254634))))) (seqFromList!1362 lt!254635))))))

(declare-fun m!861845 () Bool)

(assert (=> tb!52175 m!861845))

(assert (=> d!210219 t!79629))

(declare-fun b_and!59075 () Bool)

(assert (= b_and!59051 (and (=> t!79629 result!58660) b_and!59075)))

(declare-fun tb!52177 () Bool)

(declare-fun t!79631 () Bool)

(assert (=> (and b!598094 (= (toValue!2077 (transformation!1186 (h!11378 rules!3103))) (toValue!2077 (transformation!1186 (rule!1956 (_1!3697 (v!16425 lt!254634)))))) t!79631) tb!52177))

(declare-fun result!58664 () Bool)

(assert (= result!58664 result!58660))

(assert (=> d!210219 t!79631))

(declare-fun b_and!59077 () Bool)

(assert (= b_and!59055 (and (=> t!79631 result!58664) b_and!59077)))

(assert (=> d!210219 m!861553))

(declare-fun m!861847 () Bool)

(assert (=> d!210219 m!861847))

(assert (=> b!598097 d!210219))

(declare-fun d!210221 () Bool)

(declare-fun res!258580 () Bool)

(declare-fun e!362376 () Bool)

(assert (=> d!210221 (=> (not res!258580) (not e!362376))))

(assert (=> d!210221 (= res!258580 (validRegex!523 (regex!1186 (rule!1956 (_1!3697 (v!16425 lt!254634))))))))

(assert (=> d!210221 (= (ruleValid!384 thiss!22590 (rule!1956 (_1!3697 (v!16425 lt!254634)))) e!362376)))

(declare-fun b!598267 () Bool)

(declare-fun res!258581 () Bool)

(assert (=> b!598267 (=> (not res!258581) (not e!362376))))

(assert (=> b!598267 (= res!258581 (not (nullable!428 (regex!1186 (rule!1956 (_1!3697 (v!16425 lt!254634)))))))))

(declare-fun b!598268 () Bool)

(assert (=> b!598268 (= e!362376 (not (= (tag!1448 (rule!1956 (_1!3697 (v!16425 lt!254634)))) (String!7797 ""))))))

(assert (= (and d!210221 res!258580) b!598267))

(assert (= (and b!598267 res!258581) b!598268))

(declare-fun m!861849 () Bool)

(assert (=> d!210221 m!861849))

(declare-fun m!861851 () Bool)

(assert (=> b!598267 m!861851))

(assert (=> b!598097 d!210221))

(declare-fun d!210223 () Bool)

(assert (=> d!210223 (= (size!4706 token!491) (size!4707 (originalCharacters!1225 token!491)))))

(declare-fun Unit!10883 () Unit!10870)

(assert (=> d!210223 (= (lemmaCharactersSize!245 token!491) Unit!10883)))

(declare-fun bs!70737 () Bool)

(assert (= bs!70737 d!210223))

(assert (=> bs!70737 m!861543))

(assert (=> b!598097 d!210223))

(declare-fun d!210225 () Bool)

(assert (=> d!210225 (= (_2!3697 (v!16425 lt!254634)) lt!254630)))

(declare-fun lt!254782 () Unit!10870)

(declare-fun choose!4360 (List!5986 List!5986 List!5986 List!5986 List!5986) Unit!10870)

(assert (=> d!210225 (= lt!254782 (choose!4360 lt!254635 (_2!3697 (v!16425 lt!254634)) lt!254635 lt!254630 input!2705))))

(assert (=> d!210225 (isPrefix!814 lt!254635 input!2705)))

(assert (=> d!210225 (= (lemmaSamePrefixThenSameSuffix!527 lt!254635 (_2!3697 (v!16425 lt!254634)) lt!254635 lt!254630 input!2705) lt!254782)))

(declare-fun bs!70738 () Bool)

(assert (= bs!70738 d!210225))

(declare-fun m!861853 () Bool)

(assert (=> bs!70738 m!861853))

(declare-fun m!861855 () Bool)

(assert (=> bs!70738 m!861855))

(assert (=> b!598097 d!210225))

(declare-fun d!210227 () Bool)

(assert (=> d!210227 (= (inv!7572 (tag!1448 (rule!1956 token!491))) (= (mod (str.len (value!38668 (tag!1448 (rule!1956 token!491)))) 2) 0))))

(assert (=> b!598095 d!210227))

(declare-fun d!210229 () Bool)

(declare-fun res!258584 () Bool)

(declare-fun e!362379 () Bool)

(assert (=> d!210229 (=> (not res!258584) (not e!362379))))

(assert (=> d!210229 (= res!258584 (semiInverseModEq!470 (toChars!1936 (transformation!1186 (rule!1956 token!491))) (toValue!2077 (transformation!1186 (rule!1956 token!491)))))))

(assert (=> d!210229 (= (inv!7575 (transformation!1186 (rule!1956 token!491))) e!362379)))

(declare-fun b!598271 () Bool)

(assert (=> b!598271 (= e!362379 (equivClasses!453 (toChars!1936 (transformation!1186 (rule!1956 token!491))) (toValue!2077 (transformation!1186 (rule!1956 token!491)))))))

(assert (= (and d!210229 res!258584) b!598271))

(assert (=> d!210229 m!861787))

(assert (=> b!598271 m!861789))

(assert (=> b!598095 d!210229))

(declare-fun b!598272 () Bool)

(declare-fun e!362381 () List!5986)

(assert (=> b!598272 (= e!362381 suffix!1342)))

(declare-fun d!210231 () Bool)

(declare-fun e!362380 () Bool)

(assert (=> d!210231 e!362380))

(declare-fun res!258585 () Bool)

(assert (=> d!210231 (=> (not res!258585) (not e!362380))))

(declare-fun lt!254783 () List!5986)

(assert (=> d!210231 (= res!258585 (= (content!1073 lt!254783) (set.union (content!1073 lt!254645) (content!1073 suffix!1342))))))

(assert (=> d!210231 (= lt!254783 e!362381)))

(declare-fun c!111156 () Bool)

(assert (=> d!210231 (= c!111156 (is-Nil!5976 lt!254645))))

(assert (=> d!210231 (= (++!1674 lt!254645 suffix!1342) lt!254783)))

(declare-fun b!598275 () Bool)

(assert (=> b!598275 (= e!362380 (or (not (= suffix!1342 Nil!5976)) (= lt!254783 lt!254645)))))

(declare-fun b!598274 () Bool)

(declare-fun res!258586 () Bool)

(assert (=> b!598274 (=> (not res!258586) (not e!362380))))

(assert (=> b!598274 (= res!258586 (= (size!4707 lt!254783) (+ (size!4707 lt!254645) (size!4707 suffix!1342))))))

(declare-fun b!598273 () Bool)

(assert (=> b!598273 (= e!362381 (Cons!5976 (h!11377 lt!254645) (++!1674 (t!79615 lt!254645) suffix!1342)))))

(assert (= (and d!210231 c!111156) b!598272))

(assert (= (and d!210231 (not c!111156)) b!598273))

(assert (= (and d!210231 res!258585) b!598274))

(assert (= (and b!598274 res!258586) b!598275))

(declare-fun m!861857 () Bool)

(assert (=> d!210231 m!861857))

(declare-fun m!861859 () Bool)

(assert (=> d!210231 m!861859))

(declare-fun m!861861 () Bool)

(assert (=> d!210231 m!861861))

(declare-fun m!861863 () Bool)

(assert (=> b!598274 m!861863))

(assert (=> b!598274 m!861577))

(declare-fun m!861865 () Bool)

(assert (=> b!598274 m!861865))

(declare-fun m!861867 () Bool)

(assert (=> b!598273 m!861867))

(assert (=> b!598085 d!210231))

(declare-fun d!210233 () Bool)

(assert (=> d!210233 (= (inv!7572 (tag!1448 (h!11378 rules!3103))) (= (mod (str.len (value!38668 (tag!1448 (h!11378 rules!3103)))) 2) 0))))

(assert (=> b!598099 d!210233))

(declare-fun d!210235 () Bool)

(declare-fun res!258587 () Bool)

(declare-fun e!362382 () Bool)

(assert (=> d!210235 (=> (not res!258587) (not e!362382))))

(assert (=> d!210235 (= res!258587 (semiInverseModEq!470 (toChars!1936 (transformation!1186 (h!11378 rules!3103))) (toValue!2077 (transformation!1186 (h!11378 rules!3103)))))))

(assert (=> d!210235 (= (inv!7575 (transformation!1186 (h!11378 rules!3103))) e!362382)))

(declare-fun b!598276 () Bool)

(assert (=> b!598276 (= e!362382 (equivClasses!453 (toChars!1936 (transformation!1186 (h!11378 rules!3103))) (toValue!2077 (transformation!1186 (h!11378 rules!3103)))))))

(assert (= (and d!210235 res!258587) b!598276))

(declare-fun m!861869 () Bool)

(assert (=> d!210235 m!861869))

(declare-fun m!861871 () Bool)

(assert (=> b!598276 m!861871))

(assert (=> b!598099 d!210235))

(declare-fun d!210237 () Bool)

(assert (=> d!210237 (= (isEmpty!4314 input!2705) (is-Nil!5976 input!2705))))

(assert (=> b!598089 d!210237))

(declare-fun bm!40429 () Bool)

(declare-fun call!40434 () Option!1537)

(declare-fun maxPrefixOneRule!436 (LexerInterface!1072 Rule!2172 List!5986) Option!1537)

(assert (=> bm!40429 (= call!40434 (maxPrefixOneRule!436 thiss!22590 (h!11378 rules!3103) input!2705))))

(declare-fun b!598313 () Bool)

(declare-fun e!362397 () Bool)

(declare-fun lt!254806 () Option!1537)

(assert (=> b!598313 (= e!362397 (contains!1396 rules!3103 (rule!1956 (_1!3697 (get!2294 lt!254806)))))))

(declare-fun b!598314 () Bool)

(declare-fun res!258617 () Bool)

(assert (=> b!598314 (=> (not res!258617) (not e!362397))))

(assert (=> b!598314 (= res!258617 (= (value!38669 (_1!3697 (get!2294 lt!254806))) (apply!1439 (transformation!1186 (rule!1956 (_1!3697 (get!2294 lt!254806)))) (seqFromList!1362 (originalCharacters!1225 (_1!3697 (get!2294 lt!254806)))))))))

(declare-fun d!210239 () Bool)

(declare-fun e!362395 () Bool)

(assert (=> d!210239 e!362395))

(declare-fun res!258616 () Bool)

(assert (=> d!210239 (=> res!258616 e!362395)))

(declare-fun isEmpty!4318 (Option!1537) Bool)

(assert (=> d!210239 (= res!258616 (isEmpty!4318 lt!254806))))

(declare-fun e!362396 () Option!1537)

(assert (=> d!210239 (= lt!254806 e!362396)))

(declare-fun c!111161 () Bool)

(assert (=> d!210239 (= c!111161 (and (is-Cons!5977 rules!3103) (is-Nil!5977 (t!79616 rules!3103))))))

(declare-fun lt!254807 () Unit!10870)

(declare-fun lt!254804 () Unit!10870)

(assert (=> d!210239 (= lt!254807 lt!254804)))

(assert (=> d!210239 (isPrefix!814 input!2705 input!2705)))

(assert (=> d!210239 (= lt!254804 (lemmaIsPrefixRefl!550 input!2705 input!2705))))

(declare-fun rulesValidInductive!440 (LexerInterface!1072 List!5987) Bool)

(assert (=> d!210239 (rulesValidInductive!440 thiss!22590 rules!3103)))

(assert (=> d!210239 (= (maxPrefix!770 thiss!22590 rules!3103 input!2705) lt!254806)))

(declare-fun b!598315 () Bool)

(declare-fun res!258621 () Bool)

(assert (=> b!598315 (=> (not res!258621) (not e!362397))))

(declare-fun matchR!632 (Regex!1520 List!5986) Bool)

(assert (=> b!598315 (= res!258621 (matchR!632 (regex!1186 (rule!1956 (_1!3697 (get!2294 lt!254806)))) (list!2503 (charsOf!815 (_1!3697 (get!2294 lt!254806))))))))

(declare-fun b!598316 () Bool)

(declare-fun res!258619 () Bool)

(assert (=> b!598316 (=> (not res!258619) (not e!362397))))

(assert (=> b!598316 (= res!258619 (< (size!4707 (_2!3697 (get!2294 lt!254806))) (size!4707 input!2705)))))

(declare-fun b!598317 () Bool)

(declare-fun lt!254808 () Option!1537)

(declare-fun lt!254805 () Option!1537)

(assert (=> b!598317 (= e!362396 (ite (and (is-None!1536 lt!254808) (is-None!1536 lt!254805)) None!1536 (ite (is-None!1536 lt!254805) lt!254808 (ite (is-None!1536 lt!254808) lt!254805 (ite (>= (size!4706 (_1!3697 (v!16425 lt!254808))) (size!4706 (_1!3697 (v!16425 lt!254805)))) lt!254808 lt!254805)))))))

(assert (=> b!598317 (= lt!254808 call!40434)))

(assert (=> b!598317 (= lt!254805 (maxPrefix!770 thiss!22590 (t!79616 rules!3103) input!2705))))

(declare-fun b!598318 () Bool)

(assert (=> b!598318 (= e!362395 e!362397)))

(declare-fun res!258620 () Bool)

(assert (=> b!598318 (=> (not res!258620) (not e!362397))))

(assert (=> b!598318 (= res!258620 (isDefined!1348 lt!254806))))

(declare-fun b!598319 () Bool)

(assert (=> b!598319 (= e!362396 call!40434)))

(declare-fun b!598320 () Bool)

(declare-fun res!258622 () Bool)

(assert (=> b!598320 (=> (not res!258622) (not e!362397))))

(assert (=> b!598320 (= res!258622 (= (++!1674 (list!2503 (charsOf!815 (_1!3697 (get!2294 lt!254806)))) (_2!3697 (get!2294 lt!254806))) input!2705))))

(declare-fun b!598321 () Bool)

(declare-fun res!258618 () Bool)

(assert (=> b!598321 (=> (not res!258618) (not e!362397))))

(assert (=> b!598321 (= res!258618 (= (list!2503 (charsOf!815 (_1!3697 (get!2294 lt!254806)))) (originalCharacters!1225 (_1!3697 (get!2294 lt!254806)))))))

(assert (= (and d!210239 c!111161) b!598319))

(assert (= (and d!210239 (not c!111161)) b!598317))

(assert (= (or b!598319 b!598317) bm!40429))

(assert (= (and d!210239 (not res!258616)) b!598318))

(assert (= (and b!598318 res!258620) b!598321))

(assert (= (and b!598321 res!258618) b!598316))

(assert (= (and b!598316 res!258619) b!598320))

(assert (= (and b!598320 res!258622) b!598314))

(assert (= (and b!598314 res!258617) b!598315))

(assert (= (and b!598315 res!258621) b!598313))

(declare-fun m!861873 () Bool)

(assert (=> bm!40429 m!861873))

(declare-fun m!861875 () Bool)

(assert (=> b!598321 m!861875))

(declare-fun m!861877 () Bool)

(assert (=> b!598321 m!861877))

(assert (=> b!598321 m!861877))

(declare-fun m!861879 () Bool)

(assert (=> b!598321 m!861879))

(declare-fun m!861881 () Bool)

(assert (=> d!210239 m!861881))

(assert (=> d!210239 m!861597))

(assert (=> d!210239 m!861561))

(declare-fun m!861883 () Bool)

(assert (=> d!210239 m!861883))

(assert (=> b!598316 m!861875))

(declare-fun m!861885 () Bool)

(assert (=> b!598316 m!861885))

(assert (=> b!598316 m!861795))

(assert (=> b!598314 m!861875))

(declare-fun m!861887 () Bool)

(assert (=> b!598314 m!861887))

(assert (=> b!598314 m!861887))

(declare-fun m!861889 () Bool)

(assert (=> b!598314 m!861889))

(declare-fun m!861891 () Bool)

(assert (=> b!598317 m!861891))

(assert (=> b!598313 m!861875))

(declare-fun m!861893 () Bool)

(assert (=> b!598313 m!861893))

(assert (=> b!598320 m!861875))

(assert (=> b!598320 m!861877))

(assert (=> b!598320 m!861877))

(assert (=> b!598320 m!861879))

(assert (=> b!598320 m!861879))

(declare-fun m!861895 () Bool)

(assert (=> b!598320 m!861895))

(declare-fun m!861897 () Bool)

(assert (=> b!598318 m!861897))

(assert (=> b!598315 m!861875))

(assert (=> b!598315 m!861877))

(assert (=> b!598315 m!861877))

(assert (=> b!598315 m!861879))

(assert (=> b!598315 m!861879))

(declare-fun m!861899 () Bool)

(assert (=> b!598315 m!861899))

(assert (=> b!598100 d!210239))

(declare-fun d!210241 () Bool)

(declare-fun res!258632 () Bool)

(declare-fun e!362403 () Bool)

(assert (=> d!210241 (=> (not res!258632) (not e!362403))))

(declare-fun rulesValid!434 (LexerInterface!1072 List!5987) Bool)

(assert (=> d!210241 (= res!258632 (rulesValid!434 thiss!22590 rules!3103))))

(assert (=> d!210241 (= (rulesInvariant!1035 thiss!22590 rules!3103) e!362403)))

(declare-fun b!598333 () Bool)

(declare-datatypes ((List!5991 0))(
  ( (Nil!5981) (Cons!5981 (h!11382 String!7796) (t!79668 List!5991)) )
))
(declare-fun noDuplicateTag!434 (LexerInterface!1072 List!5987 List!5991) Bool)

(assert (=> b!598333 (= e!362403 (noDuplicateTag!434 thiss!22590 rules!3103 Nil!5981))))

(assert (= (and d!210241 res!258632) b!598333))

(declare-fun m!861901 () Bool)

(assert (=> d!210241 m!861901))

(declare-fun m!861903 () Bool)

(assert (=> b!598333 m!861903))

(assert (=> b!598087 d!210241))

(declare-fun d!210243 () Bool)

(assert (=> d!210243 (= (get!2294 lt!254647) (v!16425 lt!254647))))

(assert (=> b!598088 d!210243))

(declare-fun d!210245 () Bool)

(declare-fun res!258637 () Bool)

(declare-fun e!362406 () Bool)

(assert (=> d!210245 (=> (not res!258637) (not e!362406))))

(assert (=> d!210245 (= res!258637 (not (isEmpty!4314 (originalCharacters!1225 token!491))))))

(assert (=> d!210245 (= (inv!7576 token!491) e!362406)))

(declare-fun b!598338 () Bool)

(declare-fun res!258638 () Bool)

(assert (=> b!598338 (=> (not res!258638) (not e!362406))))

(assert (=> b!598338 (= res!258638 (= (originalCharacters!1225 token!491) (list!2503 (dynLambda!3449 (toChars!1936 (transformation!1186 (rule!1956 token!491))) (value!38669 token!491)))))))

(declare-fun b!598339 () Bool)

(assert (=> b!598339 (= e!362406 (= (size!4706 token!491) (size!4707 (originalCharacters!1225 token!491))))))

(assert (= (and d!210245 res!258637) b!598338))

(assert (= (and b!598338 res!258638) b!598339))

(declare-fun b_lambda!23583 () Bool)

(assert (=> (not b_lambda!23583) (not b!598338)))

(assert (=> b!598338 t!79621))

(declare-fun b_and!59079 () Bool)

(assert (= b_and!59071 (and (=> t!79621 result!58650) b_and!59079)))

(assert (=> b!598338 t!79623))

(declare-fun b_and!59081 () Bool)

(assert (= b_and!59073 (and (=> t!79623 result!58654) b_and!59081)))

(declare-fun m!861911 () Bool)

(assert (=> d!210245 m!861911))

(assert (=> b!598338 m!861727))

(assert (=> b!598338 m!861727))

(declare-fun m!861915 () Bool)

(assert (=> b!598338 m!861915))

(assert (=> b!598339 m!861543))

(assert (=> start!56590 d!210245))

(declare-fun d!210247 () Bool)

(assert (=> d!210247 (= suffix!1342 lt!254641)))

(declare-fun lt!254814 () Unit!10870)

(assert (=> d!210247 (= lt!254814 (choose!4360 lt!254645 suffix!1342 lt!254645 lt!254641 lt!254637))))

(assert (=> d!210247 (isPrefix!814 lt!254645 lt!254637)))

(assert (=> d!210247 (= (lemmaSamePrefixThenSameSuffix!527 lt!254645 suffix!1342 lt!254645 lt!254641 lt!254637) lt!254814)))

(declare-fun bs!70739 () Bool)

(assert (= bs!70739 d!210247))

(declare-fun m!861917 () Bool)

(assert (=> bs!70739 m!861917))

(declare-fun m!861919 () Bool)

(assert (=> bs!70739 m!861919))

(assert (=> b!598102 d!210247))

(declare-fun d!210249 () Bool)

(assert (=> d!210249 (= (seqFromList!1362 lt!254645) (fromListB!597 lt!254645))))

(declare-fun bs!70740 () Bool)

(assert (= bs!70740 d!210249))

(declare-fun m!861921 () Bool)

(assert (=> bs!70740 m!861921))

(assert (=> b!598102 d!210249))

(declare-fun d!210251 () Bool)

(declare-fun lt!254817 () Bool)

(declare-fun content!1075 (List!5987) (Set Rule!2172))

(assert (=> d!210251 (= lt!254817 (set.member (rule!1956 (_1!3697 (v!16425 lt!254634))) (content!1075 rules!3103)))))

(declare-fun e!362412 () Bool)

(assert (=> d!210251 (= lt!254817 e!362412)))

(declare-fun res!258644 () Bool)

(assert (=> d!210251 (=> (not res!258644) (not e!362412))))

(assert (=> d!210251 (= res!258644 (is-Cons!5977 rules!3103))))

(assert (=> d!210251 (= (contains!1396 rules!3103 (rule!1956 (_1!3697 (v!16425 lt!254634)))) lt!254817)))

(declare-fun b!598344 () Bool)

(declare-fun e!362411 () Bool)

(assert (=> b!598344 (= e!362412 e!362411)))

(declare-fun res!258643 () Bool)

(assert (=> b!598344 (=> res!258643 e!362411)))

(assert (=> b!598344 (= res!258643 (= (h!11378 rules!3103) (rule!1956 (_1!3697 (v!16425 lt!254634)))))))

(declare-fun b!598345 () Bool)

(assert (=> b!598345 (= e!362411 (contains!1396 (t!79616 rules!3103) (rule!1956 (_1!3697 (v!16425 lt!254634)))))))

(assert (= (and d!210251 res!258644) b!598344))

(assert (= (and b!598344 (not res!258643)) b!598345))

(declare-fun m!861945 () Bool)

(assert (=> d!210251 m!861945))

(declare-fun m!861947 () Bool)

(assert (=> d!210251 m!861947))

(declare-fun m!861949 () Bool)

(assert (=> b!598345 m!861949))

(assert (=> b!598102 d!210251))

(declare-fun d!210255 () Bool)

(assert (=> d!210255 (= (apply!1439 (transformation!1186 (rule!1956 token!491)) (seqFromList!1362 lt!254645)) (dynLambda!3450 (toValue!2077 (transformation!1186 (rule!1956 token!491))) (seqFromList!1362 lt!254645)))))

(declare-fun b_lambda!23585 () Bool)

(assert (=> (not b_lambda!23585) (not d!210255)))

(declare-fun t!79633 () Bool)

(declare-fun tb!52179 () Bool)

(assert (=> (and b!598082 (= (toValue!2077 (transformation!1186 (rule!1956 token!491))) (toValue!2077 (transformation!1186 (rule!1956 token!491)))) t!79633) tb!52179))

(declare-fun result!58666 () Bool)

(assert (=> tb!52179 (= result!58666 (inv!21 (dynLambda!3450 (toValue!2077 (transformation!1186 (rule!1956 token!491))) (seqFromList!1362 lt!254645))))))

(declare-fun m!861951 () Bool)

(assert (=> tb!52179 m!861951))

(assert (=> d!210255 t!79633))

(declare-fun b_and!59083 () Bool)

(assert (= b_and!59075 (and (=> t!79633 result!58666) b_and!59083)))

(declare-fun tb!52181 () Bool)

(declare-fun t!79635 () Bool)

(assert (=> (and b!598094 (= (toValue!2077 (transformation!1186 (h!11378 rules!3103))) (toValue!2077 (transformation!1186 (rule!1956 token!491)))) t!79635) tb!52181))

(declare-fun result!58668 () Bool)

(assert (= result!58668 result!58666))

(assert (=> d!210255 t!79635))

(declare-fun b_and!59085 () Bool)

(assert (= b_and!59077 (and (=> t!79635 result!58668) b_and!59085)))

(assert (=> d!210255 m!861529))

(declare-fun m!861953 () Bool)

(assert (=> d!210255 m!861953))

(assert (=> b!598102 d!210255))

(declare-fun d!210257 () Bool)

(declare-fun lt!254818 () List!5986)

(assert (=> d!210257 (= (++!1674 lt!254645 lt!254818) lt!254637)))

(declare-fun e!362414 () List!5986)

(assert (=> d!210257 (= lt!254818 e!362414)))

(declare-fun c!111163 () Bool)

(assert (=> d!210257 (= c!111163 (is-Cons!5976 lt!254645))))

(assert (=> d!210257 (>= (size!4707 lt!254637) (size!4707 lt!254645))))

(assert (=> d!210257 (= (getSuffix!331 lt!254637 lt!254645) lt!254818)))

(declare-fun b!598346 () Bool)

(assert (=> b!598346 (= e!362414 (getSuffix!331 (tail!798 lt!254637) (t!79615 lt!254645)))))

(declare-fun b!598347 () Bool)

(assert (=> b!598347 (= e!362414 lt!254637)))

(assert (= (and d!210257 c!111163) b!598346))

(assert (= (and d!210257 (not c!111163)) b!598347))

(declare-fun m!861955 () Bool)

(assert (=> d!210257 m!861955))

(assert (=> d!210257 m!861835))

(assert (=> d!210257 m!861577))

(assert (=> b!598346 m!861837))

(assert (=> b!598346 m!861837))

(declare-fun m!861957 () Bool)

(assert (=> b!598346 m!861957))

(assert (=> b!598102 d!210257))

(declare-fun b!598358 () Bool)

(declare-fun e!362421 () Bool)

(declare-fun inv!17 (TokenValue!1210) Bool)

(assert (=> b!598358 (= e!362421 (inv!17 (value!38669 token!491)))))

(declare-fun d!210259 () Bool)

(declare-fun c!111168 () Bool)

(assert (=> d!210259 (= c!111168 (is-IntegerValue!3630 (value!38669 token!491)))))

(declare-fun e!362422 () Bool)

(assert (=> d!210259 (= (inv!21 (value!38669 token!491)) e!362422)))

(declare-fun b!598359 () Bool)

(assert (=> b!598359 (= e!362422 e!362421)))

(declare-fun c!111169 () Bool)

(assert (=> b!598359 (= c!111169 (is-IntegerValue!3631 (value!38669 token!491)))))

(declare-fun b!598360 () Bool)

(declare-fun res!258647 () Bool)

(declare-fun e!362423 () Bool)

(assert (=> b!598360 (=> res!258647 e!362423)))

(assert (=> b!598360 (= res!258647 (not (is-IntegerValue!3632 (value!38669 token!491))))))

(assert (=> b!598360 (= e!362421 e!362423)))

(declare-fun b!598361 () Bool)

(declare-fun inv!15 (TokenValue!1210) Bool)

(assert (=> b!598361 (= e!362423 (inv!15 (value!38669 token!491)))))

(declare-fun b!598362 () Bool)

(declare-fun inv!16 (TokenValue!1210) Bool)

(assert (=> b!598362 (= e!362422 (inv!16 (value!38669 token!491)))))

(assert (= (and d!210259 c!111168) b!598362))

(assert (= (and d!210259 (not c!111168)) b!598359))

(assert (= (and b!598359 c!111169) b!598358))

(assert (= (and b!598359 (not c!111169)) b!598360))

(assert (= (and b!598360 (not res!258647)) b!598361))

(declare-fun m!861959 () Bool)

(assert (=> b!598358 m!861959))

(declare-fun m!861961 () Bool)

(assert (=> b!598361 m!861961))

(declare-fun m!861963 () Bool)

(assert (=> b!598362 m!861963))

(assert (=> b!598092 d!210259))

(declare-fun d!210261 () Bool)

(assert (=> d!210261 (= (isDefined!1348 lt!254647) (not (isEmpty!4318 lt!254647)))))

(declare-fun bs!70741 () Bool)

(assert (= bs!70741 d!210261))

(declare-fun m!861965 () Bool)

(assert (=> bs!70741 m!861965))

(assert (=> b!598101 d!210261))

(declare-fun bm!40431 () Bool)

(declare-fun call!40436 () Option!1537)

(assert (=> bm!40431 (= call!40436 (maxPrefixOneRule!436 thiss!22590 (h!11378 rules!3103) lt!254637))))

(declare-fun b!598367 () Bool)

(declare-fun e!362428 () Bool)

(declare-fun lt!254823 () Option!1537)

(assert (=> b!598367 (= e!362428 (contains!1396 rules!3103 (rule!1956 (_1!3697 (get!2294 lt!254823)))))))

(declare-fun b!598368 () Bool)

(declare-fun res!258649 () Bool)

(assert (=> b!598368 (=> (not res!258649) (not e!362428))))

(assert (=> b!598368 (= res!258649 (= (value!38669 (_1!3697 (get!2294 lt!254823))) (apply!1439 (transformation!1186 (rule!1956 (_1!3697 (get!2294 lt!254823)))) (seqFromList!1362 (originalCharacters!1225 (_1!3697 (get!2294 lt!254823)))))))))

(declare-fun d!210263 () Bool)

(declare-fun e!362426 () Bool)

(assert (=> d!210263 e!362426))

(declare-fun res!258648 () Bool)

(assert (=> d!210263 (=> res!258648 e!362426)))

(assert (=> d!210263 (= res!258648 (isEmpty!4318 lt!254823))))

(declare-fun e!362427 () Option!1537)

(assert (=> d!210263 (= lt!254823 e!362427)))

(declare-fun c!111172 () Bool)

(assert (=> d!210263 (= c!111172 (and (is-Cons!5977 rules!3103) (is-Nil!5977 (t!79616 rules!3103))))))

(declare-fun lt!254824 () Unit!10870)

(declare-fun lt!254821 () Unit!10870)

(assert (=> d!210263 (= lt!254824 lt!254821)))

(assert (=> d!210263 (isPrefix!814 lt!254637 lt!254637)))

(assert (=> d!210263 (= lt!254821 (lemmaIsPrefixRefl!550 lt!254637 lt!254637))))

(assert (=> d!210263 (rulesValidInductive!440 thiss!22590 rules!3103)))

(assert (=> d!210263 (= (maxPrefix!770 thiss!22590 rules!3103 lt!254637) lt!254823)))

(declare-fun b!598369 () Bool)

(declare-fun res!258653 () Bool)

(assert (=> b!598369 (=> (not res!258653) (not e!362428))))

(assert (=> b!598369 (= res!258653 (matchR!632 (regex!1186 (rule!1956 (_1!3697 (get!2294 lt!254823)))) (list!2503 (charsOf!815 (_1!3697 (get!2294 lt!254823))))))))

(declare-fun b!598370 () Bool)

(declare-fun res!258651 () Bool)

(assert (=> b!598370 (=> (not res!258651) (not e!362428))))

(assert (=> b!598370 (= res!258651 (< (size!4707 (_2!3697 (get!2294 lt!254823))) (size!4707 lt!254637)))))

(declare-fun b!598371 () Bool)

(declare-fun lt!254825 () Option!1537)

(declare-fun lt!254822 () Option!1537)

(assert (=> b!598371 (= e!362427 (ite (and (is-None!1536 lt!254825) (is-None!1536 lt!254822)) None!1536 (ite (is-None!1536 lt!254822) lt!254825 (ite (is-None!1536 lt!254825) lt!254822 (ite (>= (size!4706 (_1!3697 (v!16425 lt!254825))) (size!4706 (_1!3697 (v!16425 lt!254822)))) lt!254825 lt!254822)))))))

(assert (=> b!598371 (= lt!254825 call!40436)))

(assert (=> b!598371 (= lt!254822 (maxPrefix!770 thiss!22590 (t!79616 rules!3103) lt!254637))))

(declare-fun b!598372 () Bool)

(assert (=> b!598372 (= e!362426 e!362428)))

(declare-fun res!258652 () Bool)

(assert (=> b!598372 (=> (not res!258652) (not e!362428))))

(assert (=> b!598372 (= res!258652 (isDefined!1348 lt!254823))))

(declare-fun b!598373 () Bool)

(assert (=> b!598373 (= e!362427 call!40436)))

(declare-fun b!598374 () Bool)

(declare-fun res!258654 () Bool)

(assert (=> b!598374 (=> (not res!258654) (not e!362428))))

(assert (=> b!598374 (= res!258654 (= (++!1674 (list!2503 (charsOf!815 (_1!3697 (get!2294 lt!254823)))) (_2!3697 (get!2294 lt!254823))) lt!254637))))

(declare-fun b!598375 () Bool)

(declare-fun res!258650 () Bool)

(assert (=> b!598375 (=> (not res!258650) (not e!362428))))

(assert (=> b!598375 (= res!258650 (= (list!2503 (charsOf!815 (_1!3697 (get!2294 lt!254823)))) (originalCharacters!1225 (_1!3697 (get!2294 lt!254823)))))))

(assert (= (and d!210263 c!111172) b!598373))

(assert (= (and d!210263 (not c!111172)) b!598371))

(assert (= (or b!598373 b!598371) bm!40431))

(assert (= (and d!210263 (not res!258648)) b!598372))

(assert (= (and b!598372 res!258652) b!598375))

(assert (= (and b!598375 res!258650) b!598370))

(assert (= (and b!598370 res!258651) b!598374))

(assert (= (and b!598374 res!258654) b!598368))

(assert (= (and b!598368 res!258649) b!598369))

(assert (= (and b!598369 res!258653) b!598367))

(declare-fun m!861967 () Bool)

(assert (=> bm!40431 m!861967))

(declare-fun m!861969 () Bool)

(assert (=> b!598375 m!861969))

(declare-fun m!861971 () Bool)

(assert (=> b!598375 m!861971))

(assert (=> b!598375 m!861971))

(declare-fun m!861973 () Bool)

(assert (=> b!598375 m!861973))

(declare-fun m!861975 () Bool)

(assert (=> d!210263 m!861975))

(declare-fun m!861977 () Bool)

(assert (=> d!210263 m!861977))

(declare-fun m!861979 () Bool)

(assert (=> d!210263 m!861979))

(assert (=> d!210263 m!861883))

(assert (=> b!598370 m!861969))

(declare-fun m!861981 () Bool)

(assert (=> b!598370 m!861981))

(assert (=> b!598370 m!861835))

(assert (=> b!598368 m!861969))

(declare-fun m!861983 () Bool)

(assert (=> b!598368 m!861983))

(assert (=> b!598368 m!861983))

(declare-fun m!861985 () Bool)

(assert (=> b!598368 m!861985))

(declare-fun m!861987 () Bool)

(assert (=> b!598371 m!861987))

(assert (=> b!598367 m!861969))

(declare-fun m!861989 () Bool)

(assert (=> b!598367 m!861989))

(assert (=> b!598374 m!861969))

(assert (=> b!598374 m!861971))

(assert (=> b!598374 m!861971))

(assert (=> b!598374 m!861973))

(assert (=> b!598374 m!861973))

(declare-fun m!861991 () Bool)

(assert (=> b!598374 m!861991))

(declare-fun m!861993 () Bool)

(assert (=> b!598372 m!861993))

(assert (=> b!598369 m!861969))

(assert (=> b!598369 m!861971))

(assert (=> b!598369 m!861971))

(assert (=> b!598369 m!861973))

(assert (=> b!598369 m!861973))

(declare-fun m!861995 () Bool)

(assert (=> b!598369 m!861995))

(assert (=> b!598101 d!210263))

(declare-fun b!598380 () Bool)

(declare-fun e!362432 () List!5986)

(assert (=> b!598380 (= e!362432 suffix!1342)))

(declare-fun d!210265 () Bool)

(declare-fun e!362431 () Bool)

(assert (=> d!210265 e!362431))

(declare-fun res!258659 () Bool)

(assert (=> d!210265 (=> (not res!258659) (not e!362431))))

(declare-fun lt!254826 () List!5986)

(assert (=> d!210265 (= res!258659 (= (content!1073 lt!254826) (set.union (content!1073 input!2705) (content!1073 suffix!1342))))))

(assert (=> d!210265 (= lt!254826 e!362432)))

(declare-fun c!111173 () Bool)

(assert (=> d!210265 (= c!111173 (is-Nil!5976 input!2705))))

(assert (=> d!210265 (= (++!1674 input!2705 suffix!1342) lt!254826)))

(declare-fun b!598383 () Bool)

(assert (=> b!598383 (= e!362431 (or (not (= suffix!1342 Nil!5976)) (= lt!254826 input!2705)))))

(declare-fun b!598382 () Bool)

(declare-fun res!258660 () Bool)

(assert (=> b!598382 (=> (not res!258660) (not e!362431))))

(assert (=> b!598382 (= res!258660 (= (size!4707 lt!254826) (+ (size!4707 input!2705) (size!4707 suffix!1342))))))

(declare-fun b!598381 () Bool)

(assert (=> b!598381 (= e!362432 (Cons!5976 (h!11377 input!2705) (++!1674 (t!79615 input!2705) suffix!1342)))))

(assert (= (and d!210265 c!111173) b!598380))

(assert (= (and d!210265 (not c!111173)) b!598381))

(assert (= (and d!210265 res!258659) b!598382))

(assert (= (and b!598382 res!258660) b!598383))

(declare-fun m!861997 () Bool)

(assert (=> d!210265 m!861997))

(declare-fun m!861999 () Bool)

(assert (=> d!210265 m!861999))

(assert (=> d!210265 m!861861))

(declare-fun m!862001 () Bool)

(assert (=> b!598382 m!862001))

(assert (=> b!598382 m!861795))

(assert (=> b!598382 m!861865))

(declare-fun m!862003 () Bool)

(assert (=> b!598381 m!862003))

(assert (=> b!598101 d!210265))

(declare-fun b!598394 () Bool)

(declare-fun e!362435 () Bool)

(assert (=> b!598394 (= e!362435 tp_is_empty!3395)))

(assert (=> b!598099 (= tp!186481 e!362435)))

(declare-fun b!598395 () Bool)

(declare-fun tp!186530 () Bool)

(declare-fun tp!186529 () Bool)

(assert (=> b!598395 (= e!362435 (and tp!186530 tp!186529))))

(declare-fun b!598397 () Bool)

(declare-fun tp!186532 () Bool)

(declare-fun tp!186533 () Bool)

(assert (=> b!598397 (= e!362435 (and tp!186532 tp!186533))))

(declare-fun b!598396 () Bool)

(declare-fun tp!186531 () Bool)

(assert (=> b!598396 (= e!362435 tp!186531)))

(assert (= (and b!598099 (is-ElementMatch!1520 (regex!1186 (h!11378 rules!3103)))) b!598394))

(assert (= (and b!598099 (is-Concat!2730 (regex!1186 (h!11378 rules!3103)))) b!598395))

(assert (= (and b!598099 (is-Star!1520 (regex!1186 (h!11378 rules!3103)))) b!598396))

(assert (= (and b!598099 (is-Union!1520 (regex!1186 (h!11378 rules!3103)))) b!598397))

(declare-fun b!598406 () Bool)

(declare-fun e!362440 () Bool)

(declare-fun tp!186536 () Bool)

(assert (=> b!598406 (= e!362440 (and tp_is_empty!3395 tp!186536))))

(assert (=> b!598093 (= tp!186476 e!362440)))

(assert (= (and b!598093 (is-Cons!5976 (t!79615 suffix!1342))) b!598406))

(declare-fun b!598407 () Bool)

(declare-fun e!362441 () Bool)

(declare-fun tp!186537 () Bool)

(assert (=> b!598407 (= e!362441 (and tp_is_empty!3395 tp!186537))))

(assert (=> b!598091 (= tp!186477 e!362441)))

(assert (= (and b!598091 (is-Cons!5976 (t!79615 input!2705))) b!598407))

(declare-fun b!598408 () Bool)

(declare-fun e!362442 () Bool)

(declare-fun tp!186538 () Bool)

(assert (=> b!598408 (= e!362442 (and tp_is_empty!3395 tp!186538))))

(assert (=> b!598092 (= tp!186479 e!362442)))

(assert (= (and b!598092 (is-Cons!5976 (originalCharacters!1225 token!491))) b!598408))

(declare-fun b!598409 () Bool)

(declare-fun e!362443 () Bool)

(assert (=> b!598409 (= e!362443 tp_is_empty!3395)))

(assert (=> b!598095 (= tp!186475 e!362443)))

(declare-fun b!598410 () Bool)

(declare-fun tp!186540 () Bool)

(declare-fun tp!186539 () Bool)

(assert (=> b!598410 (= e!362443 (and tp!186540 tp!186539))))

(declare-fun b!598412 () Bool)

(declare-fun tp!186542 () Bool)

(declare-fun tp!186543 () Bool)

(assert (=> b!598412 (= e!362443 (and tp!186542 tp!186543))))

(declare-fun b!598411 () Bool)

(declare-fun tp!186541 () Bool)

(assert (=> b!598411 (= e!362443 tp!186541)))

(assert (= (and b!598095 (is-ElementMatch!1520 (regex!1186 (rule!1956 token!491)))) b!598409))

(assert (= (and b!598095 (is-Concat!2730 (regex!1186 (rule!1956 token!491)))) b!598410))

(assert (= (and b!598095 (is-Star!1520 (regex!1186 (rule!1956 token!491)))) b!598411))

(assert (= (and b!598095 (is-Union!1520 (regex!1186 (rule!1956 token!491)))) b!598412))

(declare-fun b!598425 () Bool)

(declare-fun b_free!17005 () Bool)

(declare-fun b_next!17021 () Bool)

(assert (=> b!598425 (= b_free!17005 (not b_next!17021))))

(declare-fun tb!52183 () Bool)

(declare-fun t!79637 () Bool)

(assert (=> (and b!598425 (= (toValue!2077 (transformation!1186 (h!11378 (t!79616 rules!3103)))) (toValue!2077 (transformation!1186 (rule!1956 (_1!3697 (v!16425 lt!254634)))))) t!79637) tb!52183))

(declare-fun result!58676 () Bool)

(assert (= result!58676 result!58660))

(assert (=> d!210219 t!79637))

(declare-fun t!79639 () Bool)

(declare-fun tb!52185 () Bool)

(assert (=> (and b!598425 (= (toValue!2077 (transformation!1186 (h!11378 (t!79616 rules!3103)))) (toValue!2077 (transformation!1186 (rule!1956 token!491)))) t!79639) tb!52185))

(declare-fun result!58678 () Bool)

(assert (= result!58678 result!58666))

(assert (=> d!210255 t!79639))

(declare-fun b_and!59087 () Bool)

(declare-fun tp!186555 () Bool)

(assert (=> b!598425 (= tp!186555 (and (=> t!79637 result!58676) (=> t!79639 result!58678) b_and!59087))))

(declare-fun b_free!17007 () Bool)

(declare-fun b_next!17023 () Bool)

(assert (=> b!598425 (= b_free!17007 (not b_next!17023))))

(declare-fun tb!52187 () Bool)

(declare-fun t!79641 () Bool)

(assert (=> (and b!598425 (= (toChars!1936 (transformation!1186 (h!11378 (t!79616 rules!3103)))) (toChars!1936 (transformation!1186 (rule!1956 token!491)))) t!79641) tb!52187))

(declare-fun result!58680 () Bool)

(assert (= result!58680 result!58650))

(assert (=> d!210163 t!79641))

(declare-fun tb!52189 () Bool)

(declare-fun t!79643 () Bool)

(assert (=> (and b!598425 (= (toChars!1936 (transformation!1186 (h!11378 (t!79616 rules!3103)))) (toChars!1936 (transformation!1186 (rule!1956 (_1!3697 (v!16425 lt!254634)))))) t!79643) tb!52189))

(declare-fun result!58682 () Bool)

(assert (= result!58682 result!58656))

(assert (=> d!210183 t!79643))

(assert (=> b!598338 t!79641))

(declare-fun tp!186553 () Bool)

(declare-fun b_and!59089 () Bool)

(assert (=> b!598425 (= tp!186553 (and (=> t!79641 result!58680) (=> t!79643 result!58682) b_and!59089))))

(declare-fun e!362455 () Bool)

(assert (=> b!598425 (= e!362455 (and tp!186555 tp!186553))))

(declare-fun tp!186552 () Bool)

(declare-fun b!598424 () Bool)

(declare-fun e!362453 () Bool)

(assert (=> b!598424 (= e!362453 (and tp!186552 (inv!7572 (tag!1448 (h!11378 (t!79616 rules!3103)))) (inv!7575 (transformation!1186 (h!11378 (t!79616 rules!3103)))) e!362455))))

(declare-fun b!598423 () Bool)

(declare-fun e!362456 () Bool)

(declare-fun tp!186554 () Bool)

(assert (=> b!598423 (= e!362456 (and e!362453 tp!186554))))

(assert (=> b!598106 (= tp!186484 e!362456)))

(assert (= b!598424 b!598425))

(assert (= b!598423 b!598424))

(assert (= (and b!598106 (is-Cons!5977 (t!79616 rules!3103))) b!598423))

(declare-fun m!862019 () Bool)

(assert (=> b!598424 m!862019))

(declare-fun m!862021 () Bool)

(assert (=> b!598424 m!862021))

(declare-fun b_lambda!23587 () Bool)

(assert (= b_lambda!23583 (or (and b!598082 b_free!16991) (and b!598094 b_free!16995 (= (toChars!1936 (transformation!1186 (h!11378 rules!3103))) (toChars!1936 (transformation!1186 (rule!1956 token!491))))) (and b!598425 b_free!17007 (= (toChars!1936 (transformation!1186 (h!11378 (t!79616 rules!3103)))) (toChars!1936 (transformation!1186 (rule!1956 token!491))))) b_lambda!23587)))

(declare-fun b_lambda!23589 () Bool)

(assert (= b_lambda!23577 (or (and b!598082 b_free!16991) (and b!598094 b_free!16995 (= (toChars!1936 (transformation!1186 (h!11378 rules!3103))) (toChars!1936 (transformation!1186 (rule!1956 token!491))))) (and b!598425 b_free!17007 (= (toChars!1936 (transformation!1186 (h!11378 (t!79616 rules!3103)))) (toChars!1936 (transformation!1186 (rule!1956 token!491))))) b_lambda!23589)))

(declare-fun b_lambda!23591 () Bool)

(assert (= b_lambda!23585 (or (and b!598082 b_free!16989) (and b!598094 b_free!16993 (= (toValue!2077 (transformation!1186 (h!11378 rules!3103))) (toValue!2077 (transformation!1186 (rule!1956 token!491))))) (and b!598425 b_free!17005 (= (toValue!2077 (transformation!1186 (h!11378 (t!79616 rules!3103)))) (toValue!2077 (transformation!1186 (rule!1956 token!491))))) b_lambda!23591)))

(push 1)

(assert (not b!598320))

(assert (not b_next!17021))

(assert (not b_next!17023))

(assert (not b!598214))

(assert (not b!598369))

(assert (not b_next!17005))

(assert (not b!598234))

(assert (not d!210261))

(assert (not d!210215))

(assert (not d!210175))

(assert (not b!598368))

(assert (not b!598375))

(assert (not b!598314))

(assert (not tb!52179))

(assert (not b!598339))

(assert (not d!210257))

(assert (not b!598274))

(assert (not d!210223))

(assert (not b!598200))

(assert (not b!598264))

(assert (not b_next!17011))

(assert (not d!210247))

(assert (not b_lambda!23587))

(assert (not b!598318))

(assert (not d!210199))

(assert (not b!598202))

(assert (not tb!52167))

(assert (not b!598396))

(assert (not d!210189))

(assert (not b!598406))

(assert (not b!598345))

(assert b_and!59079)

(assert (not b!598333))

(assert (not b!598397))

(assert (not d!210217))

(assert (not bm!40429))

(assert (not d!210249))

(assert (not b!598232))

(assert (not d!210231))

(assert (not b!598313))

(assert b_and!59089)

(assert (not b_next!17007))

(assert (not b!598372))

(assert (not d!210245))

(assert (not b!598382))

(assert (not b!598410))

(assert (not b_lambda!23589))

(assert (not b!598321))

(assert (not b!598411))

(assert (not d!210211))

(assert (not d!210183))

(assert (not d!210163))

(assert (not b!598213))

(assert b_and!59083)

(assert (not d!210187))

(assert (not b!598248))

(assert (not b!598254))

(assert (not b!598358))

(assert (not b!598408))

(assert (not d!210179))

(assert (not b!598371))

(assert (not tb!52171))

(assert (not b!598242))

(assert (not b!598250))

(assert (not b!598370))

(assert (not d!210221))

(assert (not b!598271))

(assert (not b_lambda!23579))

(assert (not d!210171))

(assert (not b!598225))

(assert (not b!598192))

(assert (not d!210229))

(assert (not b!598226))

(assert (not b!598215))

(assert (not b!598276))

(assert (not d!210207))

(assert (not b!598262))

(assert (not b!598267))

(assert b_and!59087)

(assert (not d!210251))

(assert (not d!210239))

(assert (not b!598381))

(assert (not b!598407))

(assert (not b!598228))

(assert (not b!598367))

(assert (not b_next!17009))

(assert (not d!210241))

(assert (not tb!52175))

(assert (not b!598239))

(assert (not b!598231))

(assert (not d!210235))

(assert (not b!598423))

(assert (not b!598424))

(assert (not b!598374))

(assert (not b!598346))

(assert (not b!598395))

(assert (not d!210265))

(assert (not b!598259))

(assert (not d!210191))

(assert (not b_lambda!23581))

(assert (not b!598246))

(assert (not b!598273))

(assert (not b!598253))

(assert (not b!598249))

(assert (not b!598338))

(assert (not b!598412))

(assert (not d!210181))

(assert (not d!210159))

(assert (not b!598362))

(assert (not b!598316))

(assert (not d!210209))

(assert (not b!598244))

(assert (not b!598252))

(assert (not b!598361))

(assert (not b!598317))

(assert b_and!59085)

(assert (not bm!40431))

(assert (not d!210195))

(assert (not b_lambda!23591))

(assert (not d!210185))

(assert tp_is_empty!3395)

(assert b_and!59081)

(assert (not b!598263))

(assert (not d!210263))

(assert (not d!210225))

(assert (not b!598315))

(assert (not b!598243))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!17011))

(assert b_and!59079)

(assert b_and!59083)

(assert b_and!59087)

(assert (not b_next!17009))

(assert (not b_next!17021))

(assert b_and!59085)

(assert b_and!59081)

(assert (not b_next!17023))

(assert (not b_next!17005))

(assert b_and!59089)

(assert (not b_next!17007))

(check-sat)

(pop 1)

