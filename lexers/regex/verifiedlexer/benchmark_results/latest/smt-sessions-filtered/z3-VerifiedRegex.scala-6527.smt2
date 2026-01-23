; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!344622 () Bool)

(assert start!344622)

(declare-fun b!3675559 () Bool)

(declare-fun b_free!97265 () Bool)

(declare-fun b_next!97969 () Bool)

(assert (=> b!3675559 (= b_free!97265 (not b_next!97969))))

(declare-fun tp!1117969 () Bool)

(declare-fun b_and!274099 () Bool)

(assert (=> b!3675559 (= tp!1117969 b_and!274099)))

(declare-fun b_free!97267 () Bool)

(declare-fun b_next!97971 () Bool)

(assert (=> b!3675559 (= b_free!97267 (not b_next!97971))))

(declare-fun tp!1117962 () Bool)

(declare-fun b_and!274101 () Bool)

(assert (=> b!3675559 (= tp!1117962 b_and!274101)))

(declare-fun b!3675589 () Bool)

(declare-fun b_free!97269 () Bool)

(declare-fun b_next!97973 () Bool)

(assert (=> b!3675589 (= b_free!97269 (not b_next!97973))))

(declare-fun tp!1117970 () Bool)

(declare-fun b_and!274103 () Bool)

(assert (=> b!3675589 (= tp!1117970 b_and!274103)))

(declare-fun b_free!97271 () Bool)

(declare-fun b_next!97975 () Bool)

(assert (=> b!3675589 (= b_free!97271 (not b_next!97975))))

(declare-fun tp!1117957 () Bool)

(declare-fun b_and!274105 () Bool)

(assert (=> b!3675589 (= tp!1117957 b_and!274105)))

(declare-fun b!3675567 () Bool)

(declare-fun b_free!97273 () Bool)

(declare-fun b_next!97977 () Bool)

(assert (=> b!3675567 (= b_free!97273 (not b_next!97977))))

(declare-fun tp!1117959 () Bool)

(declare-fun b_and!274107 () Bool)

(assert (=> b!3675567 (= tp!1117959 b_and!274107)))

(declare-fun b_free!97275 () Bool)

(declare-fun b_next!97979 () Bool)

(assert (=> b!3675567 (= b_free!97275 (not b_next!97979))))

(declare-fun tp!1117966 () Bool)

(declare-fun b_and!274109 () Bool)

(assert (=> b!3675567 (= tp!1117966 b_and!274109)))

(declare-fun b!3675580 () Bool)

(declare-fun b_free!97277 () Bool)

(declare-fun b_next!97981 () Bool)

(assert (=> b!3675580 (= b_free!97277 (not b_next!97981))))

(declare-fun tp!1117967 () Bool)

(declare-fun b_and!274111 () Bool)

(assert (=> b!3675580 (= tp!1117967 b_and!274111)))

(declare-fun b_free!97279 () Bool)

(declare-fun b_next!97983 () Bool)

(assert (=> b!3675580 (= b_free!97279 (not b_next!97983))))

(declare-fun tp!1117956 () Bool)

(declare-fun b_and!274113 () Bool)

(assert (=> b!3675580 (= tp!1117956 b_and!274113)))

(declare-fun tp!1117965 () Bool)

(declare-fun e!2275974 () Bool)

(declare-fun e!2275989 () Bool)

(declare-fun b!3675547 () Bool)

(declare-datatypes ((List!38893 0))(
  ( (Nil!38769) (Cons!38769 (h!44189 (_ BitVec 16)) (t!300088 List!38893)) )
))
(declare-datatypes ((TokenValue!6064 0))(
  ( (FloatLiteralValue!12128 (text!42893 List!38893)) (TokenValueExt!6063 (__x!24345 Int)) (Broken!30320 (value!186703 List!38893)) (Object!6187) (End!6064) (Def!6064) (Underscore!6064) (Match!6064) (Else!6064) (Error!6064) (Case!6064) (If!6064) (Extends!6064) (Abstract!6064) (Class!6064) (Val!6064) (DelimiterValue!12128 (del!6124 List!38893)) (KeywordValue!6070 (value!186704 List!38893)) (CommentValue!12128 (value!186705 List!38893)) (WhitespaceValue!12128 (value!186706 List!38893)) (IndentationValue!6064 (value!186707 List!38893)) (String!43653) (Int32!6064) (Broken!30321 (value!186708 List!38893)) (Boolean!6065) (Unit!56582) (OperatorValue!6067 (op!6124 List!38893)) (IdentifierValue!12128 (value!186709 List!38893)) (IdentifierValue!12129 (value!186710 List!38893)) (WhitespaceValue!12129 (value!186711 List!38893)) (True!12128) (False!12128) (Broken!30322 (value!186712 List!38893)) (Broken!30323 (value!186713 List!38893)) (True!12129) (RightBrace!6064) (RightBracket!6064) (Colon!6064) (Null!6064) (Comma!6064) (LeftBracket!6064) (False!12129) (LeftBrace!6064) (ImaginaryLiteralValue!6064 (text!42894 List!38893)) (StringLiteralValue!18192 (value!186714 List!38893)) (EOFValue!6064 (value!186715 List!38893)) (IdentValue!6064 (value!186716 List!38893)) (DelimiterValue!12129 (value!186717 List!38893)) (DedentValue!6064 (value!186718 List!38893)) (NewLineValue!6064 (value!186719 List!38893)) (IntegerValue!18192 (value!186720 (_ BitVec 32)) (text!42895 List!38893)) (IntegerValue!18193 (value!186721 Int) (text!42896 List!38893)) (Times!6064) (Or!6064) (Equal!6064) (Minus!6064) (Broken!30324 (value!186722 List!38893)) (And!6064) (Div!6064) (LessEqual!6064) (Mod!6064) (Concat!16657) (Not!6064) (Plus!6064) (SpaceValue!6064 (value!186723 List!38893)) (IntegerValue!18194 (value!186724 Int) (text!42897 List!38893)) (StringLiteralValue!18193 (text!42898 List!38893)) (FloatLiteralValue!12129 (text!42899 List!38893)) (BytesLiteralValue!6064 (value!186725 List!38893)) (CommentValue!12129 (value!186726 List!38893)) (StringLiteralValue!18194 (value!186727 List!38893)) (ErrorTokenValue!6064 (msg!6125 List!38893)) )
))
(declare-datatypes ((C!21372 0))(
  ( (C!21373 (val!12734 Int)) )
))
(declare-datatypes ((Regex!10593 0))(
  ( (ElementMatch!10593 (c!635630 C!21372)) (Concat!16658 (regOne!21698 Regex!10593) (regTwo!21698 Regex!10593)) (EmptyExpr!10593) (Star!10593 (reg!10922 Regex!10593)) (EmptyLang!10593) (Union!10593 (regOne!21699 Regex!10593) (regTwo!21699 Regex!10593)) )
))
(declare-datatypes ((String!43654 0))(
  ( (String!43655 (value!186728 String)) )
))
(declare-datatypes ((List!38894 0))(
  ( (Nil!38770) (Cons!38770 (h!44190 C!21372) (t!300089 List!38894)) )
))
(declare-datatypes ((IArray!23735 0))(
  ( (IArray!23736 (innerList!11925 List!38894)) )
))
(declare-datatypes ((Conc!11865 0))(
  ( (Node!11865 (left!30252 Conc!11865) (right!30582 Conc!11865) (csize!23960 Int) (cheight!12076 Int)) (Leaf!18393 (xs!15067 IArray!23735) (csize!23961 Int)) (Empty!11865) )
))
(declare-datatypes ((BalanceConc!23344 0))(
  ( (BalanceConc!23345 (c!635631 Conc!11865)) )
))
(declare-datatypes ((TokenValueInjection!11556 0))(
  ( (TokenValueInjection!11557 (toValue!8130 Int) (toChars!7989 Int)) )
))
(declare-datatypes ((Rule!11468 0))(
  ( (Rule!11469 (regex!5834 Regex!10593) (tag!6630 String!43654) (isSeparator!5834 Bool) (transformation!5834 TokenValueInjection!11556)) )
))
(declare-fun anOtherTypeRule!33 () Rule!11468)

(declare-fun inv!52258 (String!43654) Bool)

(declare-fun inv!52261 (TokenValueInjection!11556) Bool)

(assert (=> b!3675547 (= e!2275989 (and tp!1117965 (inv!52258 (tag!6630 anOtherTypeRule!33)) (inv!52261 (transformation!5834 anOtherTypeRule!33)) e!2275974))))

(declare-fun b!3675548 () Bool)

(declare-fun res!1493019 () Bool)

(declare-fun e!2275985 () Bool)

(assert (=> b!3675548 (=> res!1493019 e!2275985)))

(declare-datatypes ((Token!11034 0))(
  ( (Token!11035 (value!186729 TokenValue!6064) (rule!8664 Rule!11468) (size!29639 Int) (originalCharacters!6548 List!38894)) )
))
(declare-datatypes ((tuple2!38636 0))(
  ( (tuple2!38637 (_1!22452 Token!11034) (_2!22452 List!38894)) )
))
(declare-fun lt!1283115 () tuple2!38636)

(declare-fun lt!1283099 () List!38894)

(declare-fun matchR!5162 (Regex!10593 List!38894) Bool)

(assert (=> b!3675548 (= res!1493019 (not (matchR!5162 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283099)))))

(declare-fun b!3675549 () Bool)

(declare-fun res!1493035 () Bool)

(declare-fun e!2275977 () Bool)

(assert (=> b!3675549 (=> (not res!1493035) (not e!2275977))))

(declare-fun rule!403 () Rule!11468)

(assert (=> b!3675549 (= res!1493035 (not (= (isSeparator!5834 anOtherTypeRule!33) (isSeparator!5834 rule!403))))))

(declare-fun b!3675550 () Bool)

(declare-fun res!1493022 () Bool)

(assert (=> b!3675550 (=> (not res!1493022) (not e!2275977))))

(declare-datatypes ((LexerInterface!5423 0))(
  ( (LexerInterfaceExt!5420 (__x!24346 Int)) (Lexer!5421) )
))
(declare-fun thiss!23823 () LexerInterface!5423)

(declare-datatypes ((List!38895 0))(
  ( (Nil!38771) (Cons!38771 (h!44191 Rule!11468) (t!300090 List!38895)) )
))
(declare-fun rules!3307 () List!38895)

(declare-fun rulesInvariant!4820 (LexerInterface!5423 List!38895) Bool)

(assert (=> b!3675550 (= res!1493022 (rulesInvariant!4820 thiss!23823 rules!3307))))

(declare-fun b!3675551 () Bool)

(declare-datatypes ((Unit!56583 0))(
  ( (Unit!56584) )
))
(declare-fun e!2275966 () Unit!56583)

(declare-fun Unit!56585 () Unit!56583)

(assert (=> b!3675551 (= e!2275966 Unit!56585)))

(declare-fun lt!1283097 () Unit!56583)

(declare-fun lt!1283106 () List!38894)

(declare-fun lt!1283133 () C!21372)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!782 (Regex!10593 List!38894 C!21372) Unit!56583)

(assert (=> b!3675551 (= lt!1283097 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!782 (regex!5834 rule!403) lt!1283106 lt!1283133))))

(assert (=> b!3675551 false))

(declare-fun b!3675553 () Bool)

(declare-fun e!2275971 () Bool)

(declare-fun e!2275988 () Bool)

(declare-fun tp!1117964 () Bool)

(assert (=> b!3675553 (= e!2275988 (and tp!1117964 (inv!52258 (tag!6630 rule!403)) (inv!52261 (transformation!5834 rule!403)) e!2275971))))

(declare-fun b!3675554 () Bool)

(declare-fun e!2275980 () Bool)

(declare-fun e!2275976 () Bool)

(declare-fun tp!1117960 () Bool)

(assert (=> b!3675554 (= e!2275980 (and e!2275976 tp!1117960))))

(declare-fun b!3675555 () Bool)

(declare-fun e!2275994 () Bool)

(assert (=> b!3675555 (= e!2275994 false)))

(declare-fun b!3675556 () Bool)

(declare-fun res!1493020 () Bool)

(declare-fun e!2275986 () Bool)

(assert (=> b!3675556 (=> (not res!1493020) (not e!2275986))))

(declare-fun lt!1283132 () tuple2!38636)

(declare-fun isEmpty!23018 (List!38894) Bool)

(assert (=> b!3675556 (= res!1493020 (isEmpty!23018 (_2!22452 lt!1283132)))))

(declare-fun b!3675557 () Bool)

(declare-fun e!2275978 () Unit!56583)

(declare-fun Unit!56586 () Unit!56583)

(assert (=> b!3675557 (= e!2275978 Unit!56586)))

(declare-fun b!3675558 () Bool)

(declare-fun res!1493034 () Bool)

(assert (=> b!3675558 (=> (not res!1493034) (not e!2275986))))

(declare-fun token!511 () Token!11034)

(assert (=> b!3675558 (= res!1493034 (= (rule!8664 token!511) rule!403))))

(assert (=> b!3675559 (= e!2275971 (and tp!1117969 tp!1117962))))

(declare-fun b!3675560 () Bool)

(declare-fun e!2275987 () Unit!56583)

(declare-fun e!2275995 () Unit!56583)

(assert (=> b!3675560 (= e!2275987 e!2275995)))

(declare-fun lt!1283138 () List!38894)

(declare-fun lt!1283118 () Unit!56583)

(declare-fun suffix!1395 () List!38894)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!142 (List!38894 List!38894 List!38894 List!38894) Unit!56583)

(assert (=> b!3675560 (= lt!1283118 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!142 lt!1283106 suffix!1395 lt!1283099 lt!1283138))))

(declare-fun lt!1283096 () C!21372)

(declare-fun contains!7735 (List!38894 C!21372) Bool)

(assert (=> b!3675560 (contains!7735 lt!1283099 lt!1283096)))

(declare-fun c!635621 () Bool)

(assert (=> b!3675560 (= c!635621 (isSeparator!5834 rule!403))))

(declare-fun b!3675561 () Bool)

(declare-fun e!2275961 () Unit!56583)

(declare-fun Unit!56587 () Unit!56583)

(assert (=> b!3675561 (= e!2275961 Unit!56587)))

(declare-fun call!266179 () Unit!56583)

(declare-fun bm!266170 () Bool)

(assert (=> bm!266170 (= call!266179 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!782 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283099 lt!1283096))))

(declare-fun e!2275996 () Bool)

(declare-fun tp!1117958 () Bool)

(declare-fun b!3675562 () Bool)

(declare-fun e!2275969 () Bool)

(assert (=> b!3675562 (= e!2275969 (and tp!1117958 (inv!52258 (tag!6630 (rule!8664 token!511))) (inv!52261 (transformation!5834 (rule!8664 token!511))) e!2275996))))

(declare-fun b!3675563 () Bool)

(declare-fun e!2275972 () Bool)

(declare-fun e!2275984 () Bool)

(assert (=> b!3675563 (= e!2275972 e!2275984)))

(declare-fun res!1493025 () Bool)

(assert (=> b!3675563 (=> res!1493025 e!2275984)))

(declare-fun ++!9650 (List!38894 List!38894) List!38894)

(declare-fun getSuffix!1750 (List!38894 List!38894) List!38894)

(assert (=> b!3675563 (= res!1493025 (not (= lt!1283138 (++!9650 lt!1283106 (getSuffix!1750 lt!1283138 lt!1283106)))))))

(declare-fun lt!1283107 () Unit!56583)

(assert (=> b!3675563 (= lt!1283107 e!2275961)))

(declare-fun c!635625 () Bool)

(assert (=> b!3675563 (= c!635625 (not (= (rule!8664 (_1!22452 lt!1283115)) (rule!8664 token!511))))))

(assert (=> b!3675563 (= lt!1283099 lt!1283106)))

(declare-fun lt!1283128 () Unit!56583)

(declare-fun lemmaIsPrefixSameLengthThenSameList!659 (List!38894 List!38894 List!38894) Unit!56583)

(assert (=> b!3675563 (= lt!1283128 (lemmaIsPrefixSameLengthThenSameList!659 lt!1283099 lt!1283106 lt!1283138))))

(declare-fun lt!1283148 () Unit!56583)

(declare-fun e!2275991 () Unit!56583)

(assert (=> b!3675563 (= lt!1283148 e!2275991)))

(declare-fun c!635624 () Bool)

(declare-fun lt!1283113 () Int)

(declare-fun lt!1283093 () Int)

(assert (=> b!3675563 (= c!635624 (< lt!1283113 lt!1283093))))

(declare-fun lt!1283121 () Unit!56583)

(assert (=> b!3675563 (= lt!1283121 e!2275987)))

(declare-fun c!635629 () Bool)

(assert (=> b!3675563 (= c!635629 (> lt!1283113 lt!1283093))))

(declare-fun lt!1283105 () BalanceConc!23344)

(declare-fun size!29640 (BalanceConc!23344) Int)

(assert (=> b!3675563 (= lt!1283093 (size!29640 lt!1283105))))

(declare-fun lt!1283100 () Unit!56583)

(declare-fun e!2275973 () Unit!56583)

(assert (=> b!3675563 (= lt!1283100 e!2275973)))

(declare-fun c!635623 () Bool)

(assert (=> b!3675563 (= c!635623 (isSeparator!5834 rule!403))))

(declare-fun lt!1283144 () Unit!56583)

(assert (=> b!3675563 (= lt!1283144 e!2275966)))

(declare-fun c!635620 () Bool)

(declare-fun lt!1283120 () List!38894)

(assert (=> b!3675563 (= c!635620 (not (contains!7735 lt!1283120 lt!1283133)))))

(declare-fun head!7880 (List!38894) C!21372)

(assert (=> b!3675563 (= lt!1283133 (head!7880 lt!1283099))))

(declare-fun b!3675564 () Bool)

(declare-fun e!2275975 () Bool)

(assert (=> b!3675564 (= e!2275986 (not e!2275975))))

(declare-fun res!1493029 () Bool)

(assert (=> b!3675564 (=> res!1493029 e!2275975)))

(assert (=> b!3675564 (= res!1493029 (not (matchR!5162 (regex!5834 rule!403) lt!1283106)))))

(declare-fun ruleValid!2098 (LexerInterface!5423 Rule!11468) Bool)

(assert (=> b!3675564 (ruleValid!2098 thiss!23823 rule!403)))

(declare-fun lt!1283102 () Unit!56583)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1252 (LexerInterface!5423 Rule!11468 List!38895) Unit!56583)

(assert (=> b!3675564 (= lt!1283102 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1252 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3675565 () Bool)

(declare-fun res!1493026 () Bool)

(declare-fun e!2275962 () Bool)

(assert (=> b!3675565 (=> res!1493026 e!2275962)))

(declare-fun usedCharacters!1046 (Regex!10593) List!38894)

(assert (=> b!3675565 (= res!1493026 (not (contains!7735 (usedCharacters!1046 (regex!5834 anOtherTypeRule!33)) lt!1283096)))))

(declare-fun b!3675566 () Bool)

(declare-fun res!1493021 () Bool)

(assert (=> b!3675566 (=> (not res!1493021) (not e!2275977))))

(declare-fun contains!7736 (List!38895 Rule!11468) Bool)

(assert (=> b!3675566 (= res!1493021 (contains!7736 rules!3307 rule!403))))

(assert (=> b!3675567 (= e!2275974 (and tp!1117959 tp!1117966))))

(declare-fun e!2275983 () Bool)

(declare-fun b!3675568 () Bool)

(declare-fun tp!1117961 () Bool)

(assert (=> b!3675568 (= e!2275976 (and tp!1117961 (inv!52258 (tag!6630 (h!44191 rules!3307))) (inv!52261 (transformation!5834 (h!44191 rules!3307))) e!2275983))))

(declare-fun b!3675569 () Bool)

(declare-fun e!2275970 () Bool)

(declare-fun tp_is_empty!18269 () Bool)

(declare-fun tp!1117963 () Bool)

(assert (=> b!3675569 (= e!2275970 (and tp_is_empty!18269 tp!1117963))))

(declare-fun b!3675570 () Bool)

(declare-fun Unit!56588 () Unit!56583)

(assert (=> b!3675570 (= e!2275987 Unit!56588)))

(declare-fun b!3675571 () Bool)

(declare-fun e!2275963 () Unit!56583)

(assert (=> b!3675571 (= e!2275973 e!2275963)))

(declare-fun c!635627 () Bool)

(assert (=> b!3675571 (= c!635627 (not (isSeparator!5834 (rule!8664 (_1!22452 lt!1283115)))))))

(declare-fun b!3675572 () Bool)

(declare-fun res!1493033 () Bool)

(assert (=> b!3675572 (=> (not res!1493033) (not e!2275977))))

(assert (=> b!3675572 (= res!1493033 (contains!7736 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3675573 () Bool)

(declare-fun e!2275967 () Unit!56583)

(declare-fun Unit!56589 () Unit!56583)

(assert (=> b!3675573 (= e!2275967 Unit!56589)))

(declare-fun b!3675574 () Bool)

(declare-fun e!2275965 () Unit!56583)

(assert (=> b!3675574 (= e!2275973 e!2275965)))

(declare-fun c!635622 () Bool)

(assert (=> b!3675574 (= c!635622 (isSeparator!5834 (rule!8664 (_1!22452 lt!1283115))))))

(declare-fun b!3675575 () Bool)

(assert (=> b!3675575 false))

(declare-fun lt!1283143 () Unit!56583)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!242 (LexerInterface!5423 List!38895 Rule!11468 List!38894 List!38894 Rule!11468) Unit!56583)

(assert (=> b!3675575 (= lt!1283143 (lemmaMaxPrefNoSmallerRuleMatches!242 thiss!23823 rules!3307 (rule!8664 (_1!22452 lt!1283115)) lt!1283106 lt!1283138 rule!403))))

(declare-fun Unit!56590 () Unit!56583)

(assert (=> b!3675575 (= e!2275978 Unit!56590)))

(declare-fun b!3675576 () Bool)

(assert (=> b!3675576 false))

(declare-fun lt!1283104 () Unit!56583)

(declare-fun call!266180 () Unit!56583)

(assert (=> b!3675576 (= lt!1283104 call!266180)))

(declare-fun call!266177 () Bool)

(assert (=> b!3675576 (not call!266177)))

(declare-fun lt!1283116 () Unit!56583)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!480 (LexerInterface!5423 List!38895 List!38895 Rule!11468 Rule!11468 C!21372) Unit!56583)

(assert (=> b!3675576 (= lt!1283116 (lemmaNonSepRuleNotContainsCharContainedInASepRule!480 thiss!23823 rules!3307 rules!3307 (rule!8664 (_1!22452 lt!1283115)) rule!403 lt!1283133))))

(declare-fun Unit!56591 () Unit!56583)

(assert (=> b!3675576 (= e!2275963 Unit!56591)))

(declare-fun b!3675577 () Bool)

(assert (=> b!3675577 (= e!2275975 e!2275962)))

(declare-fun res!1493027 () Bool)

(assert (=> b!3675577 (=> res!1493027 e!2275962)))

(assert (=> b!3675577 (= res!1493027 (contains!7735 lt!1283120 lt!1283096))))

(assert (=> b!3675577 (= lt!1283096 (head!7880 suffix!1395))))

(assert (=> b!3675577 (= lt!1283120 (usedCharacters!1046 (regex!5834 rule!403)))))

(declare-fun b!3675578 () Bool)

(declare-fun e!2275990 () Bool)

(declare-fun e!2275979 () Bool)

(assert (=> b!3675578 (= e!2275990 e!2275979)))

(declare-fun res!1493024 () Bool)

(assert (=> b!3675578 (=> (not res!1493024) (not e!2275979))))

(declare-fun lt!1283109 () Rule!11468)

(declare-fun list!14404 (BalanceConc!23344) List!38894)

(declare-fun charsOf!3848 (Token!11034) BalanceConc!23344)

(assert (=> b!3675578 (= res!1493024 (matchR!5162 (regex!5834 lt!1283109) (list!14404 (charsOf!3848 (_1!22452 lt!1283115)))))))

(declare-datatypes ((Option!8296 0))(
  ( (None!8295) (Some!8295 (v!38219 Rule!11468)) )
))
(declare-fun lt!1283112 () Option!8296)

(declare-fun get!12823 (Option!8296) Rule!11468)

(assert (=> b!3675578 (= lt!1283109 (get!12823 lt!1283112))))

(declare-fun b!3675579 () Bool)

(declare-fun Unit!56592 () Unit!56583)

(assert (=> b!3675579 (= e!2275961 Unit!56592)))

(declare-fun lt!1283098 () Int)

(declare-fun getIndex!502 (List!38895 Rule!11468) Int)

(assert (=> b!3675579 (= lt!1283098 (getIndex!502 rules!3307 (rule!8664 (_1!22452 lt!1283115))))))

(declare-fun lt!1283126 () Int)

(assert (=> b!3675579 (= lt!1283126 (getIndex!502 rules!3307 rule!403))))

(declare-fun c!635628 () Bool)

(assert (=> b!3675579 (= c!635628 (< lt!1283098 lt!1283126))))

(declare-fun lt!1283141 () Unit!56583)

(assert (=> b!3675579 (= lt!1283141 e!2275967)))

(declare-fun c!635626 () Bool)

(assert (=> b!3675579 (= c!635626 (< lt!1283126 lt!1283098))))

(declare-fun lt!1283127 () Unit!56583)

(assert (=> b!3675579 (= lt!1283127 e!2275978)))

(declare-fun lt!1283125 () Unit!56583)

(declare-fun lemmaSameIndexThenSameElement!234 (List!38895 Rule!11468 Rule!11468) Unit!56583)

(assert (=> b!3675579 (= lt!1283125 (lemmaSameIndexThenSameElement!234 rules!3307 (rule!8664 (_1!22452 lt!1283115)) rule!403))))

(assert (=> b!3675579 false))

(declare-fun bm!266171 () Bool)

(declare-fun call!266176 () List!38894)

(assert (=> bm!266171 (= call!266176 (usedCharacters!1046 (regex!5834 (rule!8664 (_1!22452 lt!1283115)))))))

(declare-fun bm!266172 () Bool)

(declare-fun call!266175 () List!38894)

(assert (=> bm!266172 (= call!266175 (usedCharacters!1046 (regex!5834 (rule!8664 (_1!22452 lt!1283115)))))))

(declare-fun bm!266173 () Bool)

(assert (=> bm!266173 (= call!266177 (contains!7735 call!266175 lt!1283133))))

(assert (=> b!3675580 (= e!2275983 (and tp!1117967 tp!1117956))))

(declare-fun b!3675581 () Bool)

(declare-fun e!2275968 () Bool)

(assert (=> b!3675581 (= e!2275968 e!2275986)))

(declare-fun res!1493028 () Bool)

(assert (=> b!3675581 (=> (not res!1493028) (not e!2275986))))

(assert (=> b!3675581 (= res!1493028 (= (_1!22452 lt!1283132) token!511))))

(declare-datatypes ((Option!8297 0))(
  ( (None!8296) (Some!8296 (v!38220 tuple2!38636)) )
))
(declare-fun lt!1283114 () Option!8297)

(declare-fun get!12824 (Option!8297) tuple2!38636)

(assert (=> b!3675581 (= lt!1283132 (get!12824 lt!1283114))))

(declare-fun b!3675582 () Bool)

(assert (=> b!3675582 (= e!2275962 e!2275985)))

(declare-fun res!1493031 () Bool)

(assert (=> b!3675582 (=> res!1493031 e!2275985)))

(declare-fun isPrefix!3197 (List!38894 List!38894) Bool)

(assert (=> b!3675582 (= res!1493031 (not (isPrefix!3197 lt!1283099 lt!1283138)))))

(assert (=> b!3675582 (isPrefix!3197 lt!1283099 (++!9650 lt!1283099 (_2!22452 lt!1283115)))))

(declare-fun lt!1283145 () Unit!56583)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2116 (List!38894 List!38894) Unit!56583)

(assert (=> b!3675582 (= lt!1283145 (lemmaConcatTwoListThenFirstIsPrefix!2116 lt!1283099 (_2!22452 lt!1283115)))))

(declare-fun lt!1283139 () BalanceConc!23344)

(assert (=> b!3675582 (= lt!1283099 (list!14404 lt!1283139))))

(assert (=> b!3675582 (= lt!1283139 (charsOf!3848 (_1!22452 lt!1283115)))))

(assert (=> b!3675582 e!2275990))

(declare-fun res!1493030 () Bool)

(assert (=> b!3675582 (=> (not res!1493030) (not e!2275990))))

(declare-fun isDefined!6528 (Option!8296) Bool)

(assert (=> b!3675582 (= res!1493030 (isDefined!6528 lt!1283112))))

(declare-fun getRuleFromTag!1438 (LexerInterface!5423 List!38895 String!43654) Option!8296)

(assert (=> b!3675582 (= lt!1283112 (getRuleFromTag!1438 thiss!23823 rules!3307 (tag!6630 (rule!8664 (_1!22452 lt!1283115)))))))

(declare-fun lt!1283137 () Unit!56583)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1438 (LexerInterface!5423 List!38895 List!38894 Token!11034) Unit!56583)

(assert (=> b!3675582 (= lt!1283137 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1438 thiss!23823 rules!3307 lt!1283138 (_1!22452 lt!1283115)))))

(declare-fun lt!1283131 () Option!8297)

(assert (=> b!3675582 (= lt!1283115 (get!12824 lt!1283131))))

(declare-fun lt!1283129 () Unit!56583)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1101 (LexerInterface!5423 List!38895 List!38894 List!38894) Unit!56583)

(assert (=> b!3675582 (= lt!1283129 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1101 thiss!23823 rules!3307 lt!1283106 suffix!1395))))

(declare-fun maxPrefix!2957 (LexerInterface!5423 List!38895 List!38894) Option!8297)

(assert (=> b!3675582 (= lt!1283131 (maxPrefix!2957 thiss!23823 rules!3307 lt!1283138))))

(assert (=> b!3675582 (isPrefix!3197 lt!1283106 lt!1283138)))

(declare-fun lt!1283146 () Unit!56583)

(assert (=> b!3675582 (= lt!1283146 (lemmaConcatTwoListThenFirstIsPrefix!2116 lt!1283106 suffix!1395))))

(assert (=> b!3675582 (= lt!1283138 (++!9650 lt!1283106 suffix!1395))))

(declare-fun b!3675583 () Bool)

(declare-fun Unit!56593 () Unit!56583)

(assert (=> b!3675583 (= e!2275991 Unit!56593)))

(declare-fun b!3675584 () Bool)

(declare-fun Unit!56594 () Unit!56583)

(assert (=> b!3675584 (= e!2275991 Unit!56594)))

(declare-fun lt!1283135 () Unit!56583)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!376 (LexerInterface!5423 List!38895 Rule!11468 List!38894 List!38894 List!38894 Rule!11468) Unit!56583)

(assert (=> b!3675584 (= lt!1283135 (lemmaMaxPrefixOutputsMaxPrefix!376 thiss!23823 rules!3307 (rule!8664 (_1!22452 lt!1283115)) lt!1283099 lt!1283138 lt!1283106 rule!403))))

(assert (=> b!3675584 false))

(declare-fun b!3675585 () Bool)

(declare-fun Unit!56595 () Unit!56583)

(assert (=> b!3675585 (= e!2275963 Unit!56595)))

(declare-fun b!3675586 () Bool)

(declare-fun Unit!56596 () Unit!56583)

(assert (=> b!3675586 (= e!2275966 Unit!56596)))

(declare-fun b!3675587 () Bool)

(assert (=> b!3675587 false))

(declare-fun lt!1283140 () Unit!56583)

(assert (=> b!3675587 (= lt!1283140 call!266179)))

(declare-fun call!266178 () Bool)

(assert (=> b!3675587 (not call!266178)))

(declare-fun lt!1283119 () Unit!56583)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!362 (LexerInterface!5423 List!38895 List!38895 Rule!11468 Rule!11468 C!21372) Unit!56583)

(assert (=> b!3675587 (= lt!1283119 (lemmaSepRuleNotContainsCharContainedInANonSepRule!362 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8664 (_1!22452 lt!1283115)) lt!1283096))))

(declare-fun Unit!56597 () Unit!56583)

(assert (=> b!3675587 (= e!2275995 Unit!56597)))

(declare-fun b!3675588 () Bool)

(declare-fun res!1493032 () Bool)

(assert (=> b!3675588 (=> res!1493032 e!2275975)))

(assert (=> b!3675588 (= res!1493032 (isEmpty!23018 suffix!1395))))

(assert (=> b!3675589 (= e!2275996 (and tp!1117970 tp!1117957))))

(declare-fun b!3675590 () Bool)

(assert (=> b!3675590 false))

(declare-fun lt!1283134 () Unit!56583)

(assert (=> b!3675590 (= lt!1283134 call!266180)))

(assert (=> b!3675590 (not call!266177)))

(declare-fun lt!1283117 () Unit!56583)

(assert (=> b!3675590 (= lt!1283117 (lemmaSepRuleNotContainsCharContainedInANonSepRule!362 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8664 (_1!22452 lt!1283115)) lt!1283133))))

(declare-fun Unit!56598 () Unit!56583)

(assert (=> b!3675590 (= e!2275965 Unit!56598)))

(declare-fun bm!266174 () Bool)

(assert (=> bm!266174 (= call!266180 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!782 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283099 lt!1283133))))

(declare-fun bm!266175 () Bool)

(assert (=> bm!266175 (= call!266178 (contains!7735 call!266176 lt!1283096))))

(declare-fun res!1493016 () Bool)

(assert (=> start!344622 (=> (not res!1493016) (not e!2275977))))

(get-info :version)

(assert (=> start!344622 (= res!1493016 ((_ is Lexer!5421) thiss!23823))))

(assert (=> start!344622 e!2275977))

(assert (=> start!344622 e!2275980))

(assert (=> start!344622 e!2275970))

(assert (=> start!344622 true))

(declare-fun e!2275964 () Bool)

(declare-fun inv!52262 (Token!11034) Bool)

(assert (=> start!344622 (and (inv!52262 token!511) e!2275964)))

(assert (=> start!344622 e!2275988))

(assert (=> start!344622 e!2275989))

(declare-fun b!3675552 () Bool)

(assert (=> b!3675552 false))

(declare-fun lt!1283111 () Unit!56583)

(assert (=> b!3675552 (= lt!1283111 call!266179)))

(assert (=> b!3675552 (not call!266178)))

(declare-fun lt!1283103 () Unit!56583)

(assert (=> b!3675552 (= lt!1283103 (lemmaNonSepRuleNotContainsCharContainedInASepRule!480 thiss!23823 rules!3307 rules!3307 (rule!8664 (_1!22452 lt!1283115)) anOtherTypeRule!33 lt!1283096))))

(declare-fun Unit!56599 () Unit!56583)

(assert (=> b!3675552 (= e!2275995 Unit!56599)))

(declare-fun b!3675591 () Bool)

(declare-fun res!1493036 () Bool)

(assert (=> b!3675591 (=> (not res!1493036) (not e!2275977))))

(declare-fun isEmpty!23019 (List!38895) Bool)

(assert (=> b!3675591 (= res!1493036 (not (isEmpty!23019 rules!3307)))))

(declare-fun b!3675592 () Bool)

(declare-fun res!1493018 () Bool)

(assert (=> b!3675592 (=> res!1493018 e!2275962)))

(declare-fun sepAndNonSepRulesDisjointChars!2002 (List!38895 List!38895) Bool)

(assert (=> b!3675592 (= res!1493018 (not (sepAndNonSepRulesDisjointChars!2002 rules!3307 rules!3307)))))

(declare-fun b!3675593 () Bool)

(assert (=> b!3675593 e!2275994))

(declare-fun res!1493017 () Bool)

(assert (=> b!3675593 (=> (not res!1493017) (not e!2275994))))

(assert (=> b!3675593 (= res!1493017 (not (matchR!5162 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283106)))))

(declare-fun lt!1283136 () Unit!56583)

(assert (=> b!3675593 (= lt!1283136 (lemmaMaxPrefNoSmallerRuleMatches!242 thiss!23823 rules!3307 rule!403 lt!1283106 lt!1283106 (rule!8664 (_1!22452 lt!1283115))))))

(assert (=> b!3675593 (isEmpty!23018 (getSuffix!1750 lt!1283106 lt!1283106))))

(declare-fun lt!1283122 () Unit!56583)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!214 (List!38894) Unit!56583)

(assert (=> b!3675593 (= lt!1283122 (lemmaGetSuffixOnListWithItSelfIsEmpty!214 lt!1283106))))

(declare-fun Unit!56600 () Unit!56583)

(assert (=> b!3675593 (= e!2275967 Unit!56600)))

(declare-fun b!3675594 () Bool)

(declare-fun e!2275960 () Bool)

(assert (=> b!3675594 (= e!2275985 e!2275960)))

(declare-fun res!1493037 () Bool)

(assert (=> b!3675594 (=> res!1493037 e!2275960)))

(declare-fun lt!1283123 () TokenValue!6064)

(assert (=> b!3675594 (= res!1493037 (not (= lt!1283131 (Some!8296 (tuple2!38637 (Token!11035 lt!1283123 (rule!8664 (_1!22452 lt!1283115)) lt!1283113 lt!1283099) (_2!22452 lt!1283115))))))))

(assert (=> b!3675594 (= lt!1283113 (size!29640 lt!1283139))))

(declare-fun apply!9336 (TokenValueInjection!11556 BalanceConc!23344) TokenValue!6064)

(assert (=> b!3675594 (= lt!1283123 (apply!9336 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283139))))

(declare-fun lt!1283130 () Unit!56583)

(declare-fun lemmaCharactersSize!879 (Token!11034) Unit!56583)

(assert (=> b!3675594 (= lt!1283130 (lemmaCharactersSize!879 (_1!22452 lt!1283115)))))

(declare-fun lt!1283142 () Unit!56583)

(declare-fun lemmaEqSameImage!1017 (TokenValueInjection!11556 BalanceConc!23344 BalanceConc!23344) Unit!56583)

(declare-fun seqFromList!4383 (List!38894) BalanceConc!23344)

(assert (=> b!3675594 (= lt!1283142 (lemmaEqSameImage!1017 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283139 (seqFromList!4383 (originalCharacters!6548 (_1!22452 lt!1283115)))))))

(declare-fun lt!1283095 () Unit!56583)

(declare-fun lemmaSemiInverse!1583 (TokenValueInjection!11556 BalanceConc!23344) Unit!56583)

(assert (=> b!3675594 (= lt!1283095 (lemmaSemiInverse!1583 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283139))))

(declare-fun b!3675595 () Bool)

(assert (=> b!3675595 (= e!2275979 (= (rule!8664 (_1!22452 lt!1283115)) lt!1283109))))

(declare-fun b!3675596 () Bool)

(declare-fun Unit!56601 () Unit!56583)

(assert (=> b!3675596 (= e!2275965 Unit!56601)))

(declare-fun b!3675597 () Bool)

(assert (=> b!3675597 (= e!2275960 e!2275972)))

(declare-fun res!1493023 () Bool)

(assert (=> b!3675597 (=> res!1493023 e!2275972)))

(declare-fun lt!1283124 () List!38894)

(declare-fun lt!1283147 () Option!8297)

(assert (=> b!3675597 (= res!1493023 (or (not (= lt!1283124 (_2!22452 lt!1283115))) (not (= lt!1283147 (Some!8296 (tuple2!38637 (_1!22452 lt!1283115) lt!1283124))))))))

(assert (=> b!3675597 (= (_2!22452 lt!1283115) lt!1283124)))

(declare-fun lt!1283094 () Unit!56583)

(declare-fun lemmaSamePrefixThenSameSuffix!1524 (List!38894 List!38894 List!38894 List!38894 List!38894) Unit!56583)

(assert (=> b!3675597 (= lt!1283094 (lemmaSamePrefixThenSameSuffix!1524 lt!1283099 (_2!22452 lt!1283115) lt!1283099 lt!1283124 lt!1283138))))

(assert (=> b!3675597 (= lt!1283124 (getSuffix!1750 lt!1283138 lt!1283099))))

(declare-fun lt!1283101 () Int)

(declare-fun lt!1283110 () TokenValue!6064)

(assert (=> b!3675597 (= lt!1283147 (Some!8296 (tuple2!38637 (Token!11035 lt!1283110 (rule!8664 (_1!22452 lt!1283115)) lt!1283101 lt!1283099) (_2!22452 lt!1283115))))))

(declare-fun maxPrefixOneRule!2095 (LexerInterface!5423 Rule!11468 List!38894) Option!8297)

(assert (=> b!3675597 (= lt!1283147 (maxPrefixOneRule!2095 thiss!23823 (rule!8664 (_1!22452 lt!1283115)) lt!1283138))))

(declare-fun size!29641 (List!38894) Int)

(assert (=> b!3675597 (= lt!1283101 (size!29641 lt!1283099))))

(assert (=> b!3675597 (= lt!1283110 (apply!9336 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))) (seqFromList!4383 lt!1283099)))))

(declare-fun lt!1283108 () Unit!56583)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1151 (LexerInterface!5423 List!38895 List!38894 List!38894 List!38894 Rule!11468) Unit!56583)

(assert (=> b!3675597 (= lt!1283108 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1151 thiss!23823 rules!3307 lt!1283099 lt!1283138 (_2!22452 lt!1283115) (rule!8664 (_1!22452 lt!1283115))))))

(declare-fun b!3675598 () Bool)

(assert (=> b!3675598 (= e!2275984 (not (isEmpty!23018 lt!1283106)))))

(declare-fun b!3675599 () Bool)

(declare-fun tp!1117968 () Bool)

(declare-fun inv!21 (TokenValue!6064) Bool)

(assert (=> b!3675599 (= e!2275964 (and (inv!21 (value!186729 token!511)) e!2275969 tp!1117968))))

(declare-fun b!3675600 () Bool)

(assert (=> b!3675600 (= e!2275977 e!2275968)))

(declare-fun res!1493038 () Bool)

(assert (=> b!3675600 (=> (not res!1493038) (not e!2275968))))

(declare-fun isDefined!6529 (Option!8297) Bool)

(assert (=> b!3675600 (= res!1493038 (isDefined!6529 lt!1283114))))

(assert (=> b!3675600 (= lt!1283114 (maxPrefix!2957 thiss!23823 rules!3307 lt!1283106))))

(assert (=> b!3675600 (= lt!1283106 (list!14404 lt!1283105))))

(assert (=> b!3675600 (= lt!1283105 (charsOf!3848 token!511))))

(assert (= (and start!344622 res!1493016) b!3675591))

(assert (= (and b!3675591 res!1493036) b!3675550))

(assert (= (and b!3675550 res!1493022) b!3675566))

(assert (= (and b!3675566 res!1493021) b!3675572))

(assert (= (and b!3675572 res!1493033) b!3675549))

(assert (= (and b!3675549 res!1493035) b!3675600))

(assert (= (and b!3675600 res!1493038) b!3675581))

(assert (= (and b!3675581 res!1493028) b!3675556))

(assert (= (and b!3675556 res!1493020) b!3675558))

(assert (= (and b!3675558 res!1493034) b!3675564))

(assert (= (and b!3675564 (not res!1493029)) b!3675588))

(assert (= (and b!3675588 (not res!1493032)) b!3675577))

(assert (= (and b!3675577 (not res!1493027)) b!3675565))

(assert (= (and b!3675565 (not res!1493026)) b!3675592))

(assert (= (and b!3675592 (not res!1493018)) b!3675582))

(assert (= (and b!3675582 res!1493030) b!3675578))

(assert (= (and b!3675578 res!1493024) b!3675595))

(assert (= (and b!3675582 (not res!1493031)) b!3675548))

(assert (= (and b!3675548 (not res!1493019)) b!3675594))

(assert (= (and b!3675594 (not res!1493037)) b!3675597))

(assert (= (and b!3675597 (not res!1493023)) b!3675563))

(assert (= (and b!3675563 c!635620) b!3675551))

(assert (= (and b!3675563 (not c!635620)) b!3675586))

(assert (= (and b!3675563 c!635623) b!3675571))

(assert (= (and b!3675563 (not c!635623)) b!3675574))

(assert (= (and b!3675571 c!635627) b!3675576))

(assert (= (and b!3675571 (not c!635627)) b!3675585))

(assert (= (and b!3675574 c!635622) b!3675590))

(assert (= (and b!3675574 (not c!635622)) b!3675596))

(assert (= (or b!3675576 b!3675590) bm!266174))

(assert (= (or b!3675576 b!3675590) bm!266172))

(assert (= (or b!3675576 b!3675590) bm!266173))

(assert (= (and b!3675563 c!635629) b!3675560))

(assert (= (and b!3675563 (not c!635629)) b!3675570))

(assert (= (and b!3675560 c!635621) b!3675587))

(assert (= (and b!3675560 (not c!635621)) b!3675552))

(assert (= (or b!3675587 b!3675552) bm!266170))

(assert (= (or b!3675587 b!3675552) bm!266171))

(assert (= (or b!3675587 b!3675552) bm!266175))

(assert (= (and b!3675563 c!635624) b!3675584))

(assert (= (and b!3675563 (not c!635624)) b!3675583))

(assert (= (and b!3675563 c!635625) b!3675579))

(assert (= (and b!3675563 (not c!635625)) b!3675561))

(assert (= (and b!3675579 c!635628) b!3675593))

(assert (= (and b!3675579 (not c!635628)) b!3675573))

(assert (= (and b!3675593 res!1493017) b!3675555))

(assert (= (and b!3675579 c!635626) b!3675575))

(assert (= (and b!3675579 (not c!635626)) b!3675557))

(assert (= (and b!3675563 (not res!1493025)) b!3675598))

(assert (= b!3675568 b!3675580))

(assert (= b!3675554 b!3675568))

(assert (= (and start!344622 ((_ is Cons!38771) rules!3307)) b!3675554))

(assert (= (and start!344622 ((_ is Cons!38770) suffix!1395)) b!3675569))

(assert (= b!3675562 b!3675589))

(assert (= b!3675599 b!3675562))

(assert (= start!344622 b!3675599))

(assert (= b!3675553 b!3675559))

(assert (= start!344622 b!3675553))

(assert (= b!3675547 b!3675567))

(assert (= start!344622 b!3675547))

(declare-fun m!4184911 () Bool)

(assert (=> bm!266174 m!4184911))

(declare-fun m!4184913 () Bool)

(assert (=> b!3675564 m!4184913))

(declare-fun m!4184915 () Bool)

(assert (=> b!3675564 m!4184915))

(declare-fun m!4184917 () Bool)

(assert (=> b!3675564 m!4184917))

(declare-fun m!4184919 () Bool)

(assert (=> start!344622 m!4184919))

(declare-fun m!4184921 () Bool)

(assert (=> b!3675590 m!4184921))

(declare-fun m!4184923 () Bool)

(assert (=> b!3675566 m!4184923))

(declare-fun m!4184925 () Bool)

(assert (=> b!3675556 m!4184925))

(declare-fun m!4184927 () Bool)

(assert (=> b!3675552 m!4184927))

(declare-fun m!4184929 () Bool)

(assert (=> b!3675578 m!4184929))

(assert (=> b!3675578 m!4184929))

(declare-fun m!4184931 () Bool)

(assert (=> b!3675578 m!4184931))

(assert (=> b!3675578 m!4184931))

(declare-fun m!4184933 () Bool)

(assert (=> b!3675578 m!4184933))

(declare-fun m!4184935 () Bool)

(assert (=> b!3675578 m!4184935))

(declare-fun m!4184937 () Bool)

(assert (=> b!3675562 m!4184937))

(declare-fun m!4184939 () Bool)

(assert (=> b!3675562 m!4184939))

(declare-fun m!4184941 () Bool)

(assert (=> b!3675553 m!4184941))

(declare-fun m!4184943 () Bool)

(assert (=> b!3675553 m!4184943))

(declare-fun m!4184945 () Bool)

(assert (=> b!3675597 m!4184945))

(declare-fun m!4184947 () Bool)

(assert (=> b!3675597 m!4184947))

(declare-fun m!4184949 () Bool)

(assert (=> b!3675597 m!4184949))

(assert (=> b!3675597 m!4184945))

(declare-fun m!4184951 () Bool)

(assert (=> b!3675597 m!4184951))

(declare-fun m!4184953 () Bool)

(assert (=> b!3675597 m!4184953))

(declare-fun m!4184955 () Bool)

(assert (=> b!3675597 m!4184955))

(declare-fun m!4184957 () Bool)

(assert (=> b!3675597 m!4184957))

(declare-fun m!4184959 () Bool)

(assert (=> b!3675550 m!4184959))

(declare-fun m!4184961 () Bool)

(assert (=> b!3675600 m!4184961))

(declare-fun m!4184963 () Bool)

(assert (=> b!3675600 m!4184963))

(declare-fun m!4184965 () Bool)

(assert (=> b!3675600 m!4184965))

(declare-fun m!4184967 () Bool)

(assert (=> b!3675600 m!4184967))

(declare-fun m!4184969 () Bool)

(assert (=> b!3675575 m!4184969))

(declare-fun m!4184971 () Bool)

(assert (=> b!3675576 m!4184971))

(declare-fun m!4184973 () Bool)

(assert (=> b!3675591 m!4184973))

(declare-fun m!4184975 () Bool)

(assert (=> b!3675565 m!4184975))

(assert (=> b!3675565 m!4184975))

(declare-fun m!4184977 () Bool)

(assert (=> b!3675565 m!4184977))

(declare-fun m!4184979 () Bool)

(assert (=> b!3675551 m!4184979))

(declare-fun m!4184981 () Bool)

(assert (=> b!3675579 m!4184981))

(declare-fun m!4184983 () Bool)

(assert (=> b!3675579 m!4184983))

(declare-fun m!4184985 () Bool)

(assert (=> b!3675579 m!4184985))

(declare-fun m!4184987 () Bool)

(assert (=> b!3675560 m!4184987))

(declare-fun m!4184989 () Bool)

(assert (=> b!3675560 m!4184989))

(declare-fun m!4184991 () Bool)

(assert (=> b!3675588 m!4184991))

(declare-fun m!4184993 () Bool)

(assert (=> b!3675577 m!4184993))

(declare-fun m!4184995 () Bool)

(assert (=> b!3675577 m!4184995))

(declare-fun m!4184997 () Bool)

(assert (=> b!3675577 m!4184997))

(declare-fun m!4184999 () Bool)

(assert (=> b!3675582 m!4184999))

(declare-fun m!4185001 () Bool)

(assert (=> b!3675582 m!4185001))

(declare-fun m!4185003 () Bool)

(assert (=> b!3675582 m!4185003))

(declare-fun m!4185005 () Bool)

(assert (=> b!3675582 m!4185005))

(declare-fun m!4185007 () Bool)

(assert (=> b!3675582 m!4185007))

(declare-fun m!4185009 () Bool)

(assert (=> b!3675582 m!4185009))

(declare-fun m!4185011 () Bool)

(assert (=> b!3675582 m!4185011))

(declare-fun m!4185013 () Bool)

(assert (=> b!3675582 m!4185013))

(assert (=> b!3675582 m!4185001))

(declare-fun m!4185015 () Bool)

(assert (=> b!3675582 m!4185015))

(declare-fun m!4185017 () Bool)

(assert (=> b!3675582 m!4185017))

(declare-fun m!4185019 () Bool)

(assert (=> b!3675582 m!4185019))

(declare-fun m!4185021 () Bool)

(assert (=> b!3675582 m!4185021))

(assert (=> b!3675582 m!4184929))

(declare-fun m!4185023 () Bool)

(assert (=> b!3675582 m!4185023))

(declare-fun m!4185025 () Bool)

(assert (=> b!3675582 m!4185025))

(declare-fun m!4185027 () Bool)

(assert (=> b!3675547 m!4185027))

(declare-fun m!4185029 () Bool)

(assert (=> b!3675547 m!4185029))

(declare-fun m!4185031 () Bool)

(assert (=> b!3675563 m!4185031))

(declare-fun m!4185033 () Bool)

(assert (=> b!3675563 m!4185033))

(declare-fun m!4185035 () Bool)

(assert (=> b!3675563 m!4185035))

(declare-fun m!4185037 () Bool)

(assert (=> b!3675563 m!4185037))

(assert (=> b!3675563 m!4185035))

(declare-fun m!4185039 () Bool)

(assert (=> b!3675563 m!4185039))

(declare-fun m!4185041 () Bool)

(assert (=> b!3675563 m!4185041))

(declare-fun m!4185043 () Bool)

(assert (=> bm!266171 m!4185043))

(declare-fun m!4185045 () Bool)

(assert (=> b!3675548 m!4185045))

(declare-fun m!4185047 () Bool)

(assert (=> b!3675587 m!4185047))

(declare-fun m!4185049 () Bool)

(assert (=> b!3675568 m!4185049))

(declare-fun m!4185051 () Bool)

(assert (=> b!3675568 m!4185051))

(declare-fun m!4185053 () Bool)

(assert (=> bm!266170 m!4185053))

(declare-fun m!4185055 () Bool)

(assert (=> b!3675594 m!4185055))

(declare-fun m!4185057 () Bool)

(assert (=> b!3675594 m!4185057))

(declare-fun m!4185059 () Bool)

(assert (=> b!3675594 m!4185059))

(declare-fun m!4185061 () Bool)

(assert (=> b!3675594 m!4185061))

(declare-fun m!4185063 () Bool)

(assert (=> b!3675594 m!4185063))

(assert (=> b!3675594 m!4185055))

(declare-fun m!4185065 () Bool)

(assert (=> b!3675594 m!4185065))

(declare-fun m!4185067 () Bool)

(assert (=> bm!266175 m!4185067))

(declare-fun m!4185069 () Bool)

(assert (=> b!3675598 m!4185069))

(declare-fun m!4185071 () Bool)

(assert (=> b!3675581 m!4185071))

(declare-fun m!4185073 () Bool)

(assert (=> b!3675592 m!4185073))

(declare-fun m!4185075 () Bool)

(assert (=> b!3675584 m!4185075))

(declare-fun m!4185077 () Bool)

(assert (=> b!3675599 m!4185077))

(declare-fun m!4185079 () Bool)

(assert (=> b!3675572 m!4185079))

(assert (=> bm!266172 m!4185043))

(declare-fun m!4185081 () Bool)

(assert (=> bm!266173 m!4185081))

(declare-fun m!4185083 () Bool)

(assert (=> b!3675593 m!4185083))

(declare-fun m!4185085 () Bool)

(assert (=> b!3675593 m!4185085))

(declare-fun m!4185087 () Bool)

(assert (=> b!3675593 m!4185087))

(declare-fun m!4185089 () Bool)

(assert (=> b!3675593 m!4185089))

(assert (=> b!3675593 m!4185083))

(declare-fun m!4185091 () Bool)

(assert (=> b!3675593 m!4185091))

(check-sat (not b!3675598) b_and!274099 (not b!3675584) (not b!3675592) (not b_next!97977) (not b!3675560) (not start!344622) (not bm!266173) (not b!3675547) b_and!274103 (not b!3675550) (not b!3675563) (not bm!266171) (not b_next!97979) (not b!3675575) (not b_next!97983) (not b!3675562) (not b!3675597) (not bm!266174) (not b!3675593) (not b!3675590) b_and!274113 (not b!3675599) (not b!3675569) (not b!3675554) (not b!3675582) (not b!3675551) (not b_next!97969) (not b!3675578) (not bm!266175) (not b!3675553) (not b!3675581) (not b!3675572) (not b!3675565) (not b!3675579) (not bm!266170) b_and!274109 (not b!3675576) tp_is_empty!18269 (not b!3675587) (not b!3675568) (not b!3675564) (not b!3675566) (not b!3675594) (not b!3675591) b_and!274107 (not b_next!97975) (not b!3675552) b_and!274101 (not b_next!97973) (not b!3675588) (not bm!266172) (not b_next!97971) b_and!274111 (not b!3675600) (not b!3675548) (not b_next!97981) b_and!274105 (not b!3675577) (not b!3675556))
(check-sat b_and!274099 (not b_next!97977) b_and!274113 (not b_next!97969) b_and!274109 b_and!274101 (not b_next!97973) b_and!274103 (not b_next!97971) b_and!274111 (not b_next!97981) b_and!274105 (not b_next!97979) (not b_next!97983) b_and!274107 (not b_next!97975))
(get-model)

(declare-fun d!1079066 () Bool)

(assert (=> d!1079066 (= (isEmpty!23018 suffix!1395) ((_ is Nil!38770) suffix!1395))))

(assert (=> b!3675588 d!1079066))

(declare-fun d!1079068 () Bool)

(assert (=> d!1079068 (= (inv!52258 (tag!6630 (h!44191 rules!3307))) (= (mod (str.len (value!186728 (tag!6630 (h!44191 rules!3307)))) 2) 0))))

(assert (=> b!3675568 d!1079068))

(declare-fun d!1079070 () Bool)

(declare-fun res!1493045 () Bool)

(declare-fun e!2275999 () Bool)

(assert (=> d!1079070 (=> (not res!1493045) (not e!2275999))))

(declare-fun semiInverseModEq!2488 (Int Int) Bool)

(assert (=> d!1079070 (= res!1493045 (semiInverseModEq!2488 (toChars!7989 (transformation!5834 (h!44191 rules!3307))) (toValue!8130 (transformation!5834 (h!44191 rules!3307)))))))

(assert (=> d!1079070 (= (inv!52261 (transformation!5834 (h!44191 rules!3307))) e!2275999)))

(declare-fun b!3675603 () Bool)

(declare-fun equivClasses!2387 (Int Int) Bool)

(assert (=> b!3675603 (= e!2275999 (equivClasses!2387 (toChars!7989 (transformation!5834 (h!44191 rules!3307))) (toValue!8130 (transformation!5834 (h!44191 rules!3307)))))))

(assert (= (and d!1079070 res!1493045) b!3675603))

(declare-fun m!4185093 () Bool)

(assert (=> d!1079070 m!4185093))

(declare-fun m!4185095 () Bool)

(assert (=> b!3675603 m!4185095))

(assert (=> b!3675568 d!1079070))

(declare-fun d!1079072 () Bool)

(assert (=> d!1079072 (not (contains!7735 (usedCharacters!1046 (regex!5834 (rule!8664 (_1!22452 lt!1283115)))) lt!1283096))))

(declare-fun lt!1283151 () Unit!56583)

(declare-fun choose!21904 (LexerInterface!5423 List!38895 List!38895 Rule!11468 Rule!11468 C!21372) Unit!56583)

(assert (=> d!1079072 (= lt!1283151 (choose!21904 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8664 (_1!22452 lt!1283115)) lt!1283096))))

(assert (=> d!1079072 (rulesInvariant!4820 thiss!23823 rules!3307)))

(assert (=> d!1079072 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!362 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8664 (_1!22452 lt!1283115)) lt!1283096) lt!1283151)))

(declare-fun bs!573338 () Bool)

(assert (= bs!573338 d!1079072))

(assert (=> bs!573338 m!4185043))

(assert (=> bs!573338 m!4185043))

(declare-fun m!4185097 () Bool)

(assert (=> bs!573338 m!4185097))

(declare-fun m!4185099 () Bool)

(assert (=> bs!573338 m!4185099))

(assert (=> bs!573338 m!4184959))

(assert (=> b!3675587 d!1079072))

(declare-fun b!3675632 () Bool)

(declare-fun e!2276017 () Bool)

(declare-fun nullable!3688 (Regex!10593) Bool)

(assert (=> b!3675632 (= e!2276017 (nullable!3688 (regex!5834 (rule!8664 (_1!22452 lt!1283115)))))))

(declare-fun b!3675633 () Bool)

(declare-fun e!2276020 () Bool)

(declare-fun e!2276019 () Bool)

(assert (=> b!3675633 (= e!2276020 e!2276019)))

(declare-fun res!1493064 () Bool)

(assert (=> b!3675633 (=> res!1493064 e!2276019)))

(declare-fun call!266183 () Bool)

(assert (=> b!3675633 (= res!1493064 call!266183)))

(declare-fun bm!266178 () Bool)

(assert (=> bm!266178 (= call!266183 (isEmpty!23018 lt!1283099))))

(declare-fun b!3675634 () Bool)

(declare-fun e!2276014 () Bool)

(assert (=> b!3675634 (= e!2276014 e!2276020)))

(declare-fun res!1493062 () Bool)

(assert (=> b!3675634 (=> (not res!1493062) (not e!2276020))))

(declare-fun lt!1283154 () Bool)

(assert (=> b!3675634 (= res!1493062 (not lt!1283154))))

(declare-fun b!3675635 () Bool)

(assert (=> b!3675635 (= e!2276019 (not (= (head!7880 lt!1283099) (c!635630 (regex!5834 (rule!8664 (_1!22452 lt!1283115)))))))))

(declare-fun b!3675636 () Bool)

(declare-fun derivativeStep!3237 (Regex!10593 C!21372) Regex!10593)

(declare-fun tail!5686 (List!38894) List!38894)

(assert (=> b!3675636 (= e!2276017 (matchR!5162 (derivativeStep!3237 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) (head!7880 lt!1283099)) (tail!5686 lt!1283099)))))

(declare-fun b!3675637 () Bool)

(declare-fun res!1493063 () Bool)

(declare-fun e!2276015 () Bool)

(assert (=> b!3675637 (=> (not res!1493063) (not e!2276015))))

(assert (=> b!3675637 (= res!1493063 (not call!266183))))

(declare-fun b!3675638 () Bool)

(declare-fun res!1493069 () Bool)

(assert (=> b!3675638 (=> res!1493069 e!2276014)))

(assert (=> b!3675638 (= res!1493069 (not ((_ is ElementMatch!10593) (regex!5834 (rule!8664 (_1!22452 lt!1283115))))))))

(declare-fun e!2276016 () Bool)

(assert (=> b!3675638 (= e!2276016 e!2276014)))

(declare-fun d!1079074 () Bool)

(declare-fun e!2276018 () Bool)

(assert (=> d!1079074 e!2276018))

(declare-fun c!635641 () Bool)

(assert (=> d!1079074 (= c!635641 ((_ is EmptyExpr!10593) (regex!5834 (rule!8664 (_1!22452 lt!1283115)))))))

(assert (=> d!1079074 (= lt!1283154 e!2276017)))

(declare-fun c!635639 () Bool)

(assert (=> d!1079074 (= c!635639 (isEmpty!23018 lt!1283099))))

(declare-fun validRegex!4850 (Regex!10593) Bool)

(assert (=> d!1079074 (validRegex!4850 (regex!5834 (rule!8664 (_1!22452 lt!1283115))))))

(assert (=> d!1079074 (= (matchR!5162 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283099) lt!1283154)))

(declare-fun b!3675639 () Bool)

(assert (=> b!3675639 (= e!2276016 (not lt!1283154))))

(declare-fun b!3675640 () Bool)

(assert (=> b!3675640 (= e!2276018 e!2276016)))

(declare-fun c!635640 () Bool)

(assert (=> b!3675640 (= c!635640 ((_ is EmptyLang!10593) (regex!5834 (rule!8664 (_1!22452 lt!1283115)))))))

(declare-fun b!3675641 () Bool)

(declare-fun res!1493067 () Bool)

(assert (=> b!3675641 (=> res!1493067 e!2276014)))

(assert (=> b!3675641 (= res!1493067 e!2276015)))

(declare-fun res!1493066 () Bool)

(assert (=> b!3675641 (=> (not res!1493066) (not e!2276015))))

(assert (=> b!3675641 (= res!1493066 lt!1283154)))

(declare-fun b!3675642 () Bool)

(declare-fun res!1493068 () Bool)

(assert (=> b!3675642 (=> (not res!1493068) (not e!2276015))))

(assert (=> b!3675642 (= res!1493068 (isEmpty!23018 (tail!5686 lt!1283099)))))

(declare-fun b!3675643 () Bool)

(assert (=> b!3675643 (= e!2276015 (= (head!7880 lt!1283099) (c!635630 (regex!5834 (rule!8664 (_1!22452 lt!1283115))))))))

(declare-fun b!3675644 () Bool)

(assert (=> b!3675644 (= e!2276018 (= lt!1283154 call!266183))))

(declare-fun b!3675645 () Bool)

(declare-fun res!1493065 () Bool)

(assert (=> b!3675645 (=> res!1493065 e!2276019)))

(assert (=> b!3675645 (= res!1493065 (not (isEmpty!23018 (tail!5686 lt!1283099))))))

(assert (= (and d!1079074 c!635639) b!3675632))

(assert (= (and d!1079074 (not c!635639)) b!3675636))

(assert (= (and d!1079074 c!635641) b!3675644))

(assert (= (and d!1079074 (not c!635641)) b!3675640))

(assert (= (and b!3675640 c!635640) b!3675639))

(assert (= (and b!3675640 (not c!635640)) b!3675638))

(assert (= (and b!3675638 (not res!1493069)) b!3675641))

(assert (= (and b!3675641 res!1493066) b!3675637))

(assert (= (and b!3675637 res!1493063) b!3675642))

(assert (= (and b!3675642 res!1493068) b!3675643))

(assert (= (and b!3675641 (not res!1493067)) b!3675634))

(assert (= (and b!3675634 res!1493062) b!3675633))

(assert (= (and b!3675633 (not res!1493064)) b!3675645))

(assert (= (and b!3675645 (not res!1493065)) b!3675635))

(assert (= (or b!3675644 b!3675633 b!3675637) bm!266178))

(declare-fun m!4185101 () Bool)

(assert (=> b!3675632 m!4185101))

(declare-fun m!4185103 () Bool)

(assert (=> b!3675642 m!4185103))

(assert (=> b!3675642 m!4185103))

(declare-fun m!4185105 () Bool)

(assert (=> b!3675642 m!4185105))

(assert (=> b!3675635 m!4185033))

(declare-fun m!4185107 () Bool)

(assert (=> d!1079074 m!4185107))

(declare-fun m!4185109 () Bool)

(assert (=> d!1079074 m!4185109))

(assert (=> b!3675636 m!4185033))

(assert (=> b!3675636 m!4185033))

(declare-fun m!4185111 () Bool)

(assert (=> b!3675636 m!4185111))

(assert (=> b!3675636 m!4185103))

(assert (=> b!3675636 m!4185111))

(assert (=> b!3675636 m!4185103))

(declare-fun m!4185113 () Bool)

(assert (=> b!3675636 m!4185113))

(assert (=> bm!266178 m!4185107))

(assert (=> b!3675643 m!4185033))

(assert (=> b!3675645 m!4185103))

(assert (=> b!3675645 m!4185103))

(assert (=> b!3675645 m!4185105))

(assert (=> b!3675548 d!1079074))

(declare-fun d!1079076 () Bool)

(declare-fun lt!1283157 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5617 (List!38895) (InoxSet Rule!11468))

(assert (=> d!1079076 (= lt!1283157 (select (content!5617 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2276026 () Bool)

(assert (=> d!1079076 (= lt!1283157 e!2276026)))

(declare-fun res!1493077 () Bool)

(assert (=> d!1079076 (=> (not res!1493077) (not e!2276026))))

(assert (=> d!1079076 (= res!1493077 ((_ is Cons!38771) rules!3307))))

(assert (=> d!1079076 (= (contains!7736 rules!3307 anOtherTypeRule!33) lt!1283157)))

(declare-fun b!3675650 () Bool)

(declare-fun e!2276025 () Bool)

(assert (=> b!3675650 (= e!2276026 e!2276025)))

(declare-fun res!1493078 () Bool)

(assert (=> b!3675650 (=> res!1493078 e!2276025)))

(assert (=> b!3675650 (= res!1493078 (= (h!44191 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3675651 () Bool)

(assert (=> b!3675651 (= e!2276025 (contains!7736 (t!300090 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1079076 res!1493077) b!3675650))

(assert (= (and b!3675650 (not res!1493078)) b!3675651))

(declare-fun m!4185115 () Bool)

(assert (=> d!1079076 m!4185115))

(declare-fun m!4185117 () Bool)

(assert (=> d!1079076 m!4185117))

(declare-fun m!4185119 () Bool)

(assert (=> b!3675651 m!4185119))

(assert (=> b!3675572 d!1079076))

(declare-fun d!1079078 () Bool)

(assert (=> d!1079078 (not (contains!7735 (usedCharacters!1046 (regex!5834 (rule!8664 (_1!22452 lt!1283115)))) lt!1283133))))

(declare-fun lt!1283158 () Unit!56583)

(assert (=> d!1079078 (= lt!1283158 (choose!21904 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8664 (_1!22452 lt!1283115)) lt!1283133))))

(assert (=> d!1079078 (rulesInvariant!4820 thiss!23823 rules!3307)))

(assert (=> d!1079078 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!362 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8664 (_1!22452 lt!1283115)) lt!1283133) lt!1283158)))

(declare-fun bs!573339 () Bool)

(assert (= bs!573339 d!1079078))

(assert (=> bs!573339 m!4185043))

(assert (=> bs!573339 m!4185043))

(declare-fun m!4185121 () Bool)

(assert (=> bs!573339 m!4185121))

(declare-fun m!4185123 () Bool)

(assert (=> bs!573339 m!4185123))

(assert (=> bs!573339 m!4184959))

(assert (=> b!3675590 d!1079078))

(declare-fun d!1079080 () Bool)

(assert (=> d!1079080 (not (matchR!5162 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283099))))

(declare-fun lt!1283163 () Unit!56583)

(declare-fun choose!21905 (Regex!10593 List!38894 C!21372) Unit!56583)

(assert (=> d!1079080 (= lt!1283163 (choose!21905 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283099 lt!1283133))))

(assert (=> d!1079080 (validRegex!4850 (regex!5834 (rule!8664 (_1!22452 lt!1283115))))))

(assert (=> d!1079080 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!782 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283099 lt!1283133) lt!1283163)))

(declare-fun bs!573340 () Bool)

(assert (= bs!573340 d!1079080))

(assert (=> bs!573340 m!4185045))

(declare-fun m!4185125 () Bool)

(assert (=> bs!573340 m!4185125))

(assert (=> bs!573340 m!4185109))

(assert (=> bm!266174 d!1079080))

(declare-fun d!1079084 () Bool)

(assert (=> d!1079084 (not (contains!7735 (usedCharacters!1046 (regex!5834 (rule!8664 (_1!22452 lt!1283115)))) lt!1283096))))

(declare-fun lt!1283177 () Unit!56583)

(declare-fun choose!21907 (LexerInterface!5423 List!38895 List!38895 Rule!11468 Rule!11468 C!21372) Unit!56583)

(assert (=> d!1079084 (= lt!1283177 (choose!21907 thiss!23823 rules!3307 rules!3307 (rule!8664 (_1!22452 lt!1283115)) anOtherTypeRule!33 lt!1283096))))

(assert (=> d!1079084 (rulesInvariant!4820 thiss!23823 rules!3307)))

(assert (=> d!1079084 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!480 thiss!23823 rules!3307 rules!3307 (rule!8664 (_1!22452 lt!1283115)) anOtherTypeRule!33 lt!1283096) lt!1283177)))

(declare-fun bs!573343 () Bool)

(assert (= bs!573343 d!1079084))

(assert (=> bs!573343 m!4185043))

(assert (=> bs!573343 m!4185043))

(assert (=> bs!573343 m!4185097))

(declare-fun m!4185145 () Bool)

(assert (=> bs!573343 m!4185145))

(assert (=> bs!573343 m!4184959))

(assert (=> b!3675552 d!1079084))

(declare-fun d!1079096 () Bool)

(declare-fun res!1493096 () Bool)

(declare-fun e!2276052 () Bool)

(assert (=> d!1079096 (=> (not res!1493096) (not e!2276052))))

(declare-fun rulesValid!2246 (LexerInterface!5423 List!38895) Bool)

(assert (=> d!1079096 (= res!1493096 (rulesValid!2246 thiss!23823 rules!3307))))

(assert (=> d!1079096 (= (rulesInvariant!4820 thiss!23823 rules!3307) e!2276052)))

(declare-fun b!3675689 () Bool)

(declare-datatypes ((List!38897 0))(
  ( (Nil!38773) (Cons!38773 (h!44193 String!43654) (t!300212 List!38897)) )
))
(declare-fun noDuplicateTag!2242 (LexerInterface!5423 List!38895 List!38897) Bool)

(assert (=> b!3675689 (= e!2276052 (noDuplicateTag!2242 thiss!23823 rules!3307 Nil!38773))))

(assert (= (and d!1079096 res!1493096) b!3675689))

(declare-fun m!4185151 () Bool)

(assert (=> d!1079096 m!4185151))

(declare-fun m!4185153 () Bool)

(assert (=> b!3675689 m!4185153))

(assert (=> b!3675550 d!1079096))

(declare-fun d!1079100 () Bool)

(assert (=> d!1079100 (not (matchR!5162 (regex!5834 rule!403) lt!1283106))))

(declare-fun lt!1283178 () Unit!56583)

(assert (=> d!1079100 (= lt!1283178 (choose!21905 (regex!5834 rule!403) lt!1283106 lt!1283133))))

(assert (=> d!1079100 (validRegex!4850 (regex!5834 rule!403))))

(assert (=> d!1079100 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!782 (regex!5834 rule!403) lt!1283106 lt!1283133) lt!1283178)))

(declare-fun bs!573344 () Bool)

(assert (= bs!573344 d!1079100))

(assert (=> bs!573344 m!4184913))

(declare-fun m!4185159 () Bool)

(assert (=> bs!573344 m!4185159))

(declare-fun m!4185161 () Bool)

(assert (=> bs!573344 m!4185161))

(assert (=> b!3675551 d!1079100))

(declare-fun d!1079102 () Bool)

(assert (=> d!1079102 (= (isEmpty!23019 rules!3307) ((_ is Nil!38771) rules!3307))))

(assert (=> b!3675591 d!1079102))

(declare-fun d!1079106 () Bool)

(declare-fun res!1493101 () Bool)

(declare-fun e!2276056 () Bool)

(assert (=> d!1079106 (=> (not res!1493101) (not e!2276056))))

(assert (=> d!1079106 (= res!1493101 (not (isEmpty!23018 (originalCharacters!6548 token!511))))))

(assert (=> d!1079106 (= (inv!52262 token!511) e!2276056)))

(declare-fun b!3675695 () Bool)

(declare-fun res!1493102 () Bool)

(assert (=> b!3675695 (=> (not res!1493102) (not e!2276056))))

(declare-fun dynLambda!16979 (Int TokenValue!6064) BalanceConc!23344)

(assert (=> b!3675695 (= res!1493102 (= (originalCharacters!6548 token!511) (list!14404 (dynLambda!16979 (toChars!7989 (transformation!5834 (rule!8664 token!511))) (value!186729 token!511)))))))

(declare-fun b!3675696 () Bool)

(assert (=> b!3675696 (= e!2276056 (= (size!29639 token!511) (size!29641 (originalCharacters!6548 token!511))))))

(assert (= (and d!1079106 res!1493101) b!3675695))

(assert (= (and b!3675695 res!1493102) b!3675696))

(declare-fun b_lambda!109137 () Bool)

(assert (=> (not b_lambda!109137) (not b!3675695)))

(declare-fun t!300100 () Bool)

(declare-fun tb!212957 () Bool)

(assert (=> (and b!3675559 (= (toChars!7989 (transformation!5834 rule!403)) (toChars!7989 (transformation!5834 (rule!8664 token!511)))) t!300100) tb!212957))

(declare-fun b!3675701 () Bool)

(declare-fun e!2276059 () Bool)

(declare-fun tp!1117976 () Bool)

(declare-fun inv!52265 (Conc!11865) Bool)

(assert (=> b!3675701 (= e!2276059 (and (inv!52265 (c!635631 (dynLambda!16979 (toChars!7989 (transformation!5834 (rule!8664 token!511))) (value!186729 token!511)))) tp!1117976))))

(declare-fun result!259144 () Bool)

(declare-fun inv!52266 (BalanceConc!23344) Bool)

(assert (=> tb!212957 (= result!259144 (and (inv!52266 (dynLambda!16979 (toChars!7989 (transformation!5834 (rule!8664 token!511))) (value!186729 token!511))) e!2276059))))

(assert (= tb!212957 b!3675701))

(declare-fun m!4185173 () Bool)

(assert (=> b!3675701 m!4185173))

(declare-fun m!4185175 () Bool)

(assert (=> tb!212957 m!4185175))

(assert (=> b!3675695 t!300100))

(declare-fun b_and!274123 () Bool)

(assert (= b_and!274101 (and (=> t!300100 result!259144) b_and!274123)))

(declare-fun t!300102 () Bool)

(declare-fun tb!212959 () Bool)

(assert (=> (and b!3675589 (= (toChars!7989 (transformation!5834 (rule!8664 token!511))) (toChars!7989 (transformation!5834 (rule!8664 token!511)))) t!300102) tb!212959))

(declare-fun result!259148 () Bool)

(assert (= result!259148 result!259144))

(assert (=> b!3675695 t!300102))

(declare-fun b_and!274125 () Bool)

(assert (= b_and!274105 (and (=> t!300102 result!259148) b_and!274125)))

(declare-fun tb!212961 () Bool)

(declare-fun t!300104 () Bool)

(assert (=> (and b!3675567 (= (toChars!7989 (transformation!5834 anOtherTypeRule!33)) (toChars!7989 (transformation!5834 (rule!8664 token!511)))) t!300104) tb!212961))

(declare-fun result!259150 () Bool)

(assert (= result!259150 result!259144))

(assert (=> b!3675695 t!300104))

(declare-fun b_and!274127 () Bool)

(assert (= b_and!274109 (and (=> t!300104 result!259150) b_and!274127)))

(declare-fun tb!212963 () Bool)

(declare-fun t!300106 () Bool)

(assert (=> (and b!3675580 (= (toChars!7989 (transformation!5834 (h!44191 rules!3307))) (toChars!7989 (transformation!5834 (rule!8664 token!511)))) t!300106) tb!212963))

(declare-fun result!259152 () Bool)

(assert (= result!259152 result!259144))

(assert (=> b!3675695 t!300106))

(declare-fun b_and!274129 () Bool)

(assert (= b_and!274113 (and (=> t!300106 result!259152) b_and!274129)))

(declare-fun m!4185177 () Bool)

(assert (=> d!1079106 m!4185177))

(declare-fun m!4185179 () Bool)

(assert (=> b!3675695 m!4185179))

(assert (=> b!3675695 m!4185179))

(declare-fun m!4185181 () Bool)

(assert (=> b!3675695 m!4185181))

(declare-fun m!4185183 () Bool)

(assert (=> b!3675696 m!4185183))

(assert (=> start!344622 d!1079106))

(declare-fun d!1079110 () Bool)

(assert (=> d!1079110 (not (matchR!5162 (regex!5834 rule!403) lt!1283106))))

(declare-fun lt!1283181 () Unit!56583)

(declare-fun choose!21908 (LexerInterface!5423 List!38895 Rule!11468 List!38894 List!38894 Rule!11468) Unit!56583)

(assert (=> d!1079110 (= lt!1283181 (choose!21908 thiss!23823 rules!3307 (rule!8664 (_1!22452 lt!1283115)) lt!1283106 lt!1283138 rule!403))))

(assert (=> d!1079110 (isPrefix!3197 lt!1283106 lt!1283138)))

(assert (=> d!1079110 (= (lemmaMaxPrefNoSmallerRuleMatches!242 thiss!23823 rules!3307 (rule!8664 (_1!22452 lt!1283115)) lt!1283106 lt!1283138 rule!403) lt!1283181)))

(declare-fun bs!573346 () Bool)

(assert (= bs!573346 d!1079110))

(assert (=> bs!573346 m!4184913))

(declare-fun m!4185185 () Bool)

(assert (=> bs!573346 m!4185185))

(assert (=> bs!573346 m!4185023))

(assert (=> b!3675575 d!1079110))

(declare-fun d!1079112 () Bool)

(assert (=> d!1079112 (= (inv!52258 (tag!6630 rule!403)) (= (mod (str.len (value!186728 (tag!6630 rule!403))) 2) 0))))

(assert (=> b!3675553 d!1079112))

(declare-fun d!1079114 () Bool)

(declare-fun res!1493103 () Bool)

(declare-fun e!2276060 () Bool)

(assert (=> d!1079114 (=> (not res!1493103) (not e!2276060))))

(assert (=> d!1079114 (= res!1493103 (semiInverseModEq!2488 (toChars!7989 (transformation!5834 rule!403)) (toValue!8130 (transformation!5834 rule!403))))))

(assert (=> d!1079114 (= (inv!52261 (transformation!5834 rule!403)) e!2276060)))

(declare-fun b!3675702 () Bool)

(assert (=> b!3675702 (= e!2276060 (equivClasses!2387 (toChars!7989 (transformation!5834 rule!403)) (toValue!8130 (transformation!5834 rule!403))))))

(assert (= (and d!1079114 res!1493103) b!3675702))

(declare-fun m!4185187 () Bool)

(assert (=> d!1079114 m!4185187))

(declare-fun m!4185189 () Bool)

(assert (=> b!3675702 m!4185189))

(assert (=> b!3675553 d!1079114))

(declare-fun d!1079116 () Bool)

(declare-fun lt!1283184 () Bool)

(declare-fun content!5618 (List!38894) (InoxSet C!21372))

(assert (=> d!1079116 (= lt!1283184 (select (content!5618 call!266176) lt!1283096))))

(declare-fun e!2276065 () Bool)

(assert (=> d!1079116 (= lt!1283184 e!2276065)))

(declare-fun res!1493109 () Bool)

(assert (=> d!1079116 (=> (not res!1493109) (not e!2276065))))

(assert (=> d!1079116 (= res!1493109 ((_ is Cons!38770) call!266176))))

(assert (=> d!1079116 (= (contains!7735 call!266176 lt!1283096) lt!1283184)))

(declare-fun b!3675707 () Bool)

(declare-fun e!2276066 () Bool)

(assert (=> b!3675707 (= e!2276065 e!2276066)))

(declare-fun res!1493108 () Bool)

(assert (=> b!3675707 (=> res!1493108 e!2276066)))

(assert (=> b!3675707 (= res!1493108 (= (h!44190 call!266176) lt!1283096))))

(declare-fun b!3675708 () Bool)

(assert (=> b!3675708 (= e!2276066 (contains!7735 (t!300089 call!266176) lt!1283096))))

(assert (= (and d!1079116 res!1493109) b!3675707))

(assert (= (and b!3675707 (not res!1493108)) b!3675708))

(declare-fun m!4185191 () Bool)

(assert (=> d!1079116 m!4185191))

(declare-fun m!4185193 () Bool)

(assert (=> d!1079116 m!4185193))

(declare-fun m!4185195 () Bool)

(assert (=> b!3675708 m!4185195))

(assert (=> bm!266175 d!1079116))

(declare-fun d!1079118 () Bool)

(declare-fun lt!1283185 () Bool)

(assert (=> d!1079118 (= lt!1283185 (select (content!5618 lt!1283120) lt!1283096))))

(declare-fun e!2276067 () Bool)

(assert (=> d!1079118 (= lt!1283185 e!2276067)))

(declare-fun res!1493111 () Bool)

(assert (=> d!1079118 (=> (not res!1493111) (not e!2276067))))

(assert (=> d!1079118 (= res!1493111 ((_ is Cons!38770) lt!1283120))))

(assert (=> d!1079118 (= (contains!7735 lt!1283120 lt!1283096) lt!1283185)))

(declare-fun b!3675709 () Bool)

(declare-fun e!2276068 () Bool)

(assert (=> b!3675709 (= e!2276067 e!2276068)))

(declare-fun res!1493110 () Bool)

(assert (=> b!3675709 (=> res!1493110 e!2276068)))

(assert (=> b!3675709 (= res!1493110 (= (h!44190 lt!1283120) lt!1283096))))

(declare-fun b!3675710 () Bool)

(assert (=> b!3675710 (= e!2276068 (contains!7735 (t!300089 lt!1283120) lt!1283096))))

(assert (= (and d!1079118 res!1493111) b!3675709))

(assert (= (and b!3675709 (not res!1493110)) b!3675710))

(declare-fun m!4185197 () Bool)

(assert (=> d!1079118 m!4185197))

(declare-fun m!4185199 () Bool)

(assert (=> d!1079118 m!4185199))

(declare-fun m!4185201 () Bool)

(assert (=> b!3675710 m!4185201))

(assert (=> b!3675577 d!1079118))

(declare-fun d!1079120 () Bool)

(assert (=> d!1079120 (= (head!7880 suffix!1395) (h!44190 suffix!1395))))

(assert (=> b!3675577 d!1079120))

(declare-fun b!3675754 () Bool)

(declare-fun e!2276087 () List!38894)

(declare-fun call!266195 () List!38894)

(assert (=> b!3675754 (= e!2276087 call!266195)))

(declare-fun b!3675755 () Bool)

(declare-fun e!2276089 () List!38894)

(declare-fun call!266196 () List!38894)

(assert (=> b!3675755 (= e!2276089 call!266196)))

(declare-fun b!3675756 () Bool)

(declare-fun e!2276086 () List!38894)

(declare-fun e!2276088 () List!38894)

(assert (=> b!3675756 (= e!2276086 e!2276088)))

(declare-fun c!635663 () Bool)

(assert (=> b!3675756 (= c!635663 ((_ is ElementMatch!10593) (regex!5834 rule!403)))))

(declare-fun b!3675757 () Bool)

(assert (=> b!3675757 (= e!2276087 call!266195)))

(declare-fun bm!266190 () Bool)

(declare-fun call!266198 () List!38894)

(assert (=> bm!266190 (= call!266198 call!266196)))

(declare-fun b!3675758 () Bool)

(assert (=> b!3675758 (= e!2276086 Nil!38770)))

(declare-fun b!3675759 () Bool)

(assert (=> b!3675759 (= e!2276089 e!2276087)))

(declare-fun c!635664 () Bool)

(assert (=> b!3675759 (= c!635664 ((_ is Union!10593) (regex!5834 rule!403)))))

(declare-fun b!3675761 () Bool)

(declare-fun c!635665 () Bool)

(assert (=> b!3675761 (= c!635665 ((_ is Star!10593) (regex!5834 rule!403)))))

(assert (=> b!3675761 (= e!2276088 e!2276089)))

(declare-fun bm!266191 () Bool)

(assert (=> bm!266191 (= call!266196 (usedCharacters!1046 (ite c!635665 (reg!10922 (regex!5834 rule!403)) (ite c!635664 (regTwo!21699 (regex!5834 rule!403)) (regOne!21698 (regex!5834 rule!403))))))))

(declare-fun bm!266192 () Bool)

(declare-fun call!266197 () List!38894)

(assert (=> bm!266192 (= call!266195 (++!9650 (ite c!635664 call!266197 call!266198) (ite c!635664 call!266198 call!266197)))))

(declare-fun bm!266193 () Bool)

(assert (=> bm!266193 (= call!266197 (usedCharacters!1046 (ite c!635664 (regOne!21699 (regex!5834 rule!403)) (regTwo!21698 (regex!5834 rule!403)))))))

(declare-fun d!1079122 () Bool)

(declare-fun c!635666 () Bool)

(assert (=> d!1079122 (= c!635666 (or ((_ is EmptyExpr!10593) (regex!5834 rule!403)) ((_ is EmptyLang!10593) (regex!5834 rule!403))))))

(assert (=> d!1079122 (= (usedCharacters!1046 (regex!5834 rule!403)) e!2276086)))

(declare-fun b!3675760 () Bool)

(assert (=> b!3675760 (= e!2276088 (Cons!38770 (c!635630 (regex!5834 rule!403)) Nil!38770))))

(assert (= (and d!1079122 c!635666) b!3675758))

(assert (= (and d!1079122 (not c!635666)) b!3675756))

(assert (= (and b!3675756 c!635663) b!3675760))

(assert (= (and b!3675756 (not c!635663)) b!3675761))

(assert (= (and b!3675761 c!635665) b!3675755))

(assert (= (and b!3675761 (not c!635665)) b!3675759))

(assert (= (and b!3675759 c!635664) b!3675757))

(assert (= (and b!3675759 (not c!635664)) b!3675754))

(assert (= (or b!3675757 b!3675754) bm!266193))

(assert (= (or b!3675757 b!3675754) bm!266190))

(assert (= (or b!3675757 b!3675754) bm!266192))

(assert (= (or b!3675755 bm!266190) bm!266191))

(declare-fun m!4185241 () Bool)

(assert (=> bm!266191 m!4185241))

(declare-fun m!4185243 () Bool)

(assert (=> bm!266192 m!4185243))

(declare-fun m!4185245 () Bool)

(assert (=> bm!266193 m!4185245))

(assert (=> b!3675577 d!1079122))

(declare-fun b!3675762 () Bool)

(declare-fun e!2276093 () Bool)

(assert (=> b!3675762 (= e!2276093 (nullable!3688 (regex!5834 lt!1283109)))))

(declare-fun b!3675763 () Bool)

(declare-fun e!2276096 () Bool)

(declare-fun e!2276095 () Bool)

(assert (=> b!3675763 (= e!2276096 e!2276095)))

(declare-fun res!1493135 () Bool)

(assert (=> b!3675763 (=> res!1493135 e!2276095)))

(declare-fun call!266199 () Bool)

(assert (=> b!3675763 (= res!1493135 call!266199)))

(declare-fun bm!266194 () Bool)

(assert (=> bm!266194 (= call!266199 (isEmpty!23018 (list!14404 (charsOf!3848 (_1!22452 lt!1283115)))))))

(declare-fun b!3675764 () Bool)

(declare-fun e!2276090 () Bool)

(assert (=> b!3675764 (= e!2276090 e!2276096)))

(declare-fun res!1493133 () Bool)

(assert (=> b!3675764 (=> (not res!1493133) (not e!2276096))))

(declare-fun lt!1283204 () Bool)

(assert (=> b!3675764 (= res!1493133 (not lt!1283204))))

(declare-fun b!3675765 () Bool)

(assert (=> b!3675765 (= e!2276095 (not (= (head!7880 (list!14404 (charsOf!3848 (_1!22452 lt!1283115)))) (c!635630 (regex!5834 lt!1283109)))))))

(declare-fun b!3675766 () Bool)

(assert (=> b!3675766 (= e!2276093 (matchR!5162 (derivativeStep!3237 (regex!5834 lt!1283109) (head!7880 (list!14404 (charsOf!3848 (_1!22452 lt!1283115))))) (tail!5686 (list!14404 (charsOf!3848 (_1!22452 lt!1283115))))))))

(declare-fun b!3675767 () Bool)

(declare-fun res!1493134 () Bool)

(declare-fun e!2276091 () Bool)

(assert (=> b!3675767 (=> (not res!1493134) (not e!2276091))))

(assert (=> b!3675767 (= res!1493134 (not call!266199))))

(declare-fun b!3675768 () Bool)

(declare-fun res!1493140 () Bool)

(assert (=> b!3675768 (=> res!1493140 e!2276090)))

(assert (=> b!3675768 (= res!1493140 (not ((_ is ElementMatch!10593) (regex!5834 lt!1283109))))))

(declare-fun e!2276092 () Bool)

(assert (=> b!3675768 (= e!2276092 e!2276090)))

(declare-fun d!1079130 () Bool)

(declare-fun e!2276094 () Bool)

(assert (=> d!1079130 e!2276094))

(declare-fun c!635669 () Bool)

(assert (=> d!1079130 (= c!635669 ((_ is EmptyExpr!10593) (regex!5834 lt!1283109)))))

(assert (=> d!1079130 (= lt!1283204 e!2276093)))

(declare-fun c!635667 () Bool)

(assert (=> d!1079130 (= c!635667 (isEmpty!23018 (list!14404 (charsOf!3848 (_1!22452 lt!1283115)))))))

(assert (=> d!1079130 (validRegex!4850 (regex!5834 lt!1283109))))

(assert (=> d!1079130 (= (matchR!5162 (regex!5834 lt!1283109) (list!14404 (charsOf!3848 (_1!22452 lt!1283115)))) lt!1283204)))

(declare-fun b!3675769 () Bool)

(assert (=> b!3675769 (= e!2276092 (not lt!1283204))))

(declare-fun b!3675770 () Bool)

(assert (=> b!3675770 (= e!2276094 e!2276092)))

(declare-fun c!635668 () Bool)

(assert (=> b!3675770 (= c!635668 ((_ is EmptyLang!10593) (regex!5834 lt!1283109)))))

(declare-fun b!3675771 () Bool)

(declare-fun res!1493138 () Bool)

(assert (=> b!3675771 (=> res!1493138 e!2276090)))

(assert (=> b!3675771 (= res!1493138 e!2276091)))

(declare-fun res!1493137 () Bool)

(assert (=> b!3675771 (=> (not res!1493137) (not e!2276091))))

(assert (=> b!3675771 (= res!1493137 lt!1283204)))

(declare-fun b!3675772 () Bool)

(declare-fun res!1493139 () Bool)

(assert (=> b!3675772 (=> (not res!1493139) (not e!2276091))))

(assert (=> b!3675772 (= res!1493139 (isEmpty!23018 (tail!5686 (list!14404 (charsOf!3848 (_1!22452 lt!1283115))))))))

(declare-fun b!3675773 () Bool)

(assert (=> b!3675773 (= e!2276091 (= (head!7880 (list!14404 (charsOf!3848 (_1!22452 lt!1283115)))) (c!635630 (regex!5834 lt!1283109))))))

(declare-fun b!3675774 () Bool)

(assert (=> b!3675774 (= e!2276094 (= lt!1283204 call!266199))))

(declare-fun b!3675775 () Bool)

(declare-fun res!1493136 () Bool)

(assert (=> b!3675775 (=> res!1493136 e!2276095)))

(assert (=> b!3675775 (= res!1493136 (not (isEmpty!23018 (tail!5686 (list!14404 (charsOf!3848 (_1!22452 lt!1283115)))))))))

(assert (= (and d!1079130 c!635667) b!3675762))

(assert (= (and d!1079130 (not c!635667)) b!3675766))

(assert (= (and d!1079130 c!635669) b!3675774))

(assert (= (and d!1079130 (not c!635669)) b!3675770))

(assert (= (and b!3675770 c!635668) b!3675769))

(assert (= (and b!3675770 (not c!635668)) b!3675768))

(assert (= (and b!3675768 (not res!1493140)) b!3675771))

(assert (= (and b!3675771 res!1493137) b!3675767))

(assert (= (and b!3675767 res!1493134) b!3675772))

(assert (= (and b!3675772 res!1493139) b!3675773))

(assert (= (and b!3675771 (not res!1493138)) b!3675764))

(assert (= (and b!3675764 res!1493133) b!3675763))

(assert (= (and b!3675763 (not res!1493135)) b!3675775))

(assert (= (and b!3675775 (not res!1493136)) b!3675765))

(assert (= (or b!3675774 b!3675763 b!3675767) bm!266194))

(declare-fun m!4185247 () Bool)

(assert (=> b!3675762 m!4185247))

(assert (=> b!3675772 m!4184931))

(declare-fun m!4185249 () Bool)

(assert (=> b!3675772 m!4185249))

(assert (=> b!3675772 m!4185249))

(declare-fun m!4185251 () Bool)

(assert (=> b!3675772 m!4185251))

(assert (=> b!3675765 m!4184931))

(declare-fun m!4185253 () Bool)

(assert (=> b!3675765 m!4185253))

(assert (=> d!1079130 m!4184931))

(declare-fun m!4185255 () Bool)

(assert (=> d!1079130 m!4185255))

(declare-fun m!4185257 () Bool)

(assert (=> d!1079130 m!4185257))

(assert (=> b!3675766 m!4184931))

(assert (=> b!3675766 m!4185253))

(assert (=> b!3675766 m!4185253))

(declare-fun m!4185259 () Bool)

(assert (=> b!3675766 m!4185259))

(assert (=> b!3675766 m!4184931))

(assert (=> b!3675766 m!4185249))

(assert (=> b!3675766 m!4185259))

(assert (=> b!3675766 m!4185249))

(declare-fun m!4185265 () Bool)

(assert (=> b!3675766 m!4185265))

(assert (=> bm!266194 m!4184931))

(assert (=> bm!266194 m!4185255))

(assert (=> b!3675773 m!4184931))

(assert (=> b!3675773 m!4185253))

(assert (=> b!3675775 m!4184931))

(assert (=> b!3675775 m!4185249))

(assert (=> b!3675775 m!4185249))

(assert (=> b!3675775 m!4185251))

(assert (=> b!3675578 d!1079130))

(declare-fun d!1079134 () Bool)

(declare-fun list!14406 (Conc!11865) List!38894)

(assert (=> d!1079134 (= (list!14404 (charsOf!3848 (_1!22452 lt!1283115))) (list!14406 (c!635631 (charsOf!3848 (_1!22452 lt!1283115)))))))

(declare-fun bs!573349 () Bool)

(assert (= bs!573349 d!1079134))

(declare-fun m!4185267 () Bool)

(assert (=> bs!573349 m!4185267))

(assert (=> b!3675578 d!1079134))

(declare-fun d!1079138 () Bool)

(declare-fun lt!1283210 () BalanceConc!23344)

(assert (=> d!1079138 (= (list!14404 lt!1283210) (originalCharacters!6548 (_1!22452 lt!1283115)))))

(assert (=> d!1079138 (= lt!1283210 (dynLambda!16979 (toChars!7989 (transformation!5834 (rule!8664 (_1!22452 lt!1283115)))) (value!186729 (_1!22452 lt!1283115))))))

(assert (=> d!1079138 (= (charsOf!3848 (_1!22452 lt!1283115)) lt!1283210)))

(declare-fun b_lambda!109141 () Bool)

(assert (=> (not b_lambda!109141) (not d!1079138)))

(declare-fun tb!212965 () Bool)

(declare-fun t!300108 () Bool)

(assert (=> (and b!3675559 (= (toChars!7989 (transformation!5834 rule!403)) (toChars!7989 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300108) tb!212965))

(declare-fun b!3675779 () Bool)

(declare-fun e!2276100 () Bool)

(declare-fun tp!1117977 () Bool)

(assert (=> b!3675779 (= e!2276100 (and (inv!52265 (c!635631 (dynLambda!16979 (toChars!7989 (transformation!5834 (rule!8664 (_1!22452 lt!1283115)))) (value!186729 (_1!22452 lt!1283115))))) tp!1117977))))

(declare-fun result!259154 () Bool)

(assert (=> tb!212965 (= result!259154 (and (inv!52266 (dynLambda!16979 (toChars!7989 (transformation!5834 (rule!8664 (_1!22452 lt!1283115)))) (value!186729 (_1!22452 lt!1283115)))) e!2276100))))

(assert (= tb!212965 b!3675779))

(declare-fun m!4185273 () Bool)

(assert (=> b!3675779 m!4185273))

(declare-fun m!4185275 () Bool)

(assert (=> tb!212965 m!4185275))

(assert (=> d!1079138 t!300108))

(declare-fun b_and!274139 () Bool)

(assert (= b_and!274123 (and (=> t!300108 result!259154) b_and!274139)))

(declare-fun tb!212967 () Bool)

(declare-fun t!300110 () Bool)

(assert (=> (and b!3675589 (= (toChars!7989 (transformation!5834 (rule!8664 token!511))) (toChars!7989 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300110) tb!212967))

(declare-fun result!259156 () Bool)

(assert (= result!259156 result!259154))

(assert (=> d!1079138 t!300110))

(declare-fun b_and!274141 () Bool)

(assert (= b_and!274125 (and (=> t!300110 result!259156) b_and!274141)))

(declare-fun t!300112 () Bool)

(declare-fun tb!212969 () Bool)

(assert (=> (and b!3675567 (= (toChars!7989 (transformation!5834 anOtherTypeRule!33)) (toChars!7989 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300112) tb!212969))

(declare-fun result!259158 () Bool)

(assert (= result!259158 result!259154))

(assert (=> d!1079138 t!300112))

(declare-fun b_and!274143 () Bool)

(assert (= b_and!274127 (and (=> t!300112 result!259158) b_and!274143)))

(declare-fun tb!212971 () Bool)

(declare-fun t!300114 () Bool)

(assert (=> (and b!3675580 (= (toChars!7989 (transformation!5834 (h!44191 rules!3307))) (toChars!7989 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300114) tb!212971))

(declare-fun result!259160 () Bool)

(assert (= result!259160 result!259154))

(assert (=> d!1079138 t!300114))

(declare-fun b_and!274145 () Bool)

(assert (= b_and!274129 (and (=> t!300114 result!259160) b_and!274145)))

(declare-fun m!4185277 () Bool)

(assert (=> d!1079138 m!4185277))

(declare-fun m!4185279 () Bool)

(assert (=> d!1079138 m!4185279))

(assert (=> b!3675578 d!1079138))

(declare-fun d!1079142 () Bool)

(assert (=> d!1079142 (= (get!12823 lt!1283112) (v!38219 lt!1283112))))

(assert (=> b!3675578 d!1079142))

(declare-fun d!1079144 () Bool)

(declare-fun dynLambda!16980 (Int BalanceConc!23344) TokenValue!6064)

(assert (=> d!1079144 (= (apply!9336 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283139) (dynLambda!16980 (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115)))) lt!1283139))))

(declare-fun b_lambda!109143 () Bool)

(assert (=> (not b_lambda!109143) (not d!1079144)))

(declare-fun t!300116 () Bool)

(declare-fun tb!212973 () Bool)

(assert (=> (and b!3675559 (= (toValue!8130 (transformation!5834 rule!403)) (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300116) tb!212973))

(declare-fun result!259162 () Bool)

(assert (=> tb!212973 (= result!259162 (inv!21 (dynLambda!16980 (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115)))) lt!1283139)))))

(declare-fun m!4185281 () Bool)

(assert (=> tb!212973 m!4185281))

(assert (=> d!1079144 t!300116))

(declare-fun b_and!274147 () Bool)

(assert (= b_and!274099 (and (=> t!300116 result!259162) b_and!274147)))

(declare-fun tb!212975 () Bool)

(declare-fun t!300118 () Bool)

(assert (=> (and b!3675589 (= (toValue!8130 (transformation!5834 (rule!8664 token!511))) (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300118) tb!212975))

(declare-fun result!259166 () Bool)

(assert (= result!259166 result!259162))

(assert (=> d!1079144 t!300118))

(declare-fun b_and!274149 () Bool)

(assert (= b_and!274103 (and (=> t!300118 result!259166) b_and!274149)))

(declare-fun t!300120 () Bool)

(declare-fun tb!212977 () Bool)

(assert (=> (and b!3675567 (= (toValue!8130 (transformation!5834 anOtherTypeRule!33)) (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300120) tb!212977))

(declare-fun result!259168 () Bool)

(assert (= result!259168 result!259162))

(assert (=> d!1079144 t!300120))

(declare-fun b_and!274151 () Bool)

(assert (= b_and!274107 (and (=> t!300120 result!259168) b_and!274151)))

(declare-fun t!300122 () Bool)

(declare-fun tb!212979 () Bool)

(assert (=> (and b!3675580 (= (toValue!8130 (transformation!5834 (h!44191 rules!3307))) (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300122) tb!212979))

(declare-fun result!259170 () Bool)

(assert (= result!259170 result!259162))

(assert (=> d!1079144 t!300122))

(declare-fun b_and!274153 () Bool)

(assert (= b_and!274111 (and (=> t!300122 result!259170) b_and!274153)))

(declare-fun m!4185283 () Bool)

(assert (=> d!1079144 m!4185283))

(assert (=> b!3675594 d!1079144))

(declare-fun b!3675960 () Bool)

(declare-fun e!2276205 () Bool)

(assert (=> b!3675960 (= e!2276205 true)))

(declare-fun d!1079146 () Bool)

(assert (=> d!1079146 e!2276205))

(assert (= d!1079146 b!3675960))

(declare-fun order!21461 () Int)

(declare-fun lambda!124718 () Int)

(declare-fun order!21459 () Int)

(declare-fun dynLambda!16981 (Int Int) Int)

(declare-fun dynLambda!16982 (Int Int) Int)

(assert (=> b!3675960 (< (dynLambda!16981 order!21459 (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) (dynLambda!16982 order!21461 lambda!124718))))

(declare-fun order!21463 () Int)

(declare-fun dynLambda!16983 (Int Int) Int)

(assert (=> b!3675960 (< (dynLambda!16983 order!21463 (toChars!7989 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) (dynLambda!16982 order!21461 lambda!124718))))

(assert (=> d!1079146 (= (dynLambda!16980 (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115)))) lt!1283139) (dynLambda!16980 (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115)))) (seqFromList!4383 (originalCharacters!6548 (_1!22452 lt!1283115)))))))

(declare-fun lt!1283318 () Unit!56583)

(declare-fun Forall2of!403 (Int BalanceConc!23344 BalanceConc!23344) Unit!56583)

(assert (=> d!1079146 (= lt!1283318 (Forall2of!403 lambda!124718 lt!1283139 (seqFromList!4383 (originalCharacters!6548 (_1!22452 lt!1283115)))))))

(assert (=> d!1079146 (= (list!14404 lt!1283139) (list!14404 (seqFromList!4383 (originalCharacters!6548 (_1!22452 lt!1283115)))))))

(assert (=> d!1079146 (= (lemmaEqSameImage!1017 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283139 (seqFromList!4383 (originalCharacters!6548 (_1!22452 lt!1283115)))) lt!1283318)))

(declare-fun b_lambda!109147 () Bool)

(assert (=> (not b_lambda!109147) (not d!1079146)))

(assert (=> d!1079146 t!300116))

(declare-fun b_and!274163 () Bool)

(assert (= b_and!274147 (and (=> t!300116 result!259162) b_and!274163)))

(assert (=> d!1079146 t!300118))

(declare-fun b_and!274165 () Bool)

(assert (= b_and!274149 (and (=> t!300118 result!259166) b_and!274165)))

(assert (=> d!1079146 t!300120))

(declare-fun b_and!274167 () Bool)

(assert (= b_and!274151 (and (=> t!300120 result!259168) b_and!274167)))

(assert (=> d!1079146 t!300122))

(declare-fun b_and!274169 () Bool)

(assert (= b_and!274153 (and (=> t!300122 result!259170) b_and!274169)))

(declare-fun b_lambda!109149 () Bool)

(assert (=> (not b_lambda!109149) (not d!1079146)))

(declare-fun t!300132 () Bool)

(declare-fun tb!212989 () Bool)

(assert (=> (and b!3675559 (= (toValue!8130 (transformation!5834 rule!403)) (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300132) tb!212989))

(declare-fun result!259180 () Bool)

(assert (=> tb!212989 (= result!259180 (inv!21 (dynLambda!16980 (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115)))) (seqFromList!4383 (originalCharacters!6548 (_1!22452 lt!1283115))))))))

(declare-fun m!4185505 () Bool)

(assert (=> tb!212989 m!4185505))

(assert (=> d!1079146 t!300132))

(declare-fun b_and!274171 () Bool)

(assert (= b_and!274163 (and (=> t!300132 result!259180) b_and!274171)))

(declare-fun t!300134 () Bool)

(declare-fun tb!212991 () Bool)

(assert (=> (and b!3675589 (= (toValue!8130 (transformation!5834 (rule!8664 token!511))) (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300134) tb!212991))

(declare-fun result!259182 () Bool)

(assert (= result!259182 result!259180))

(assert (=> d!1079146 t!300134))

(declare-fun b_and!274173 () Bool)

(assert (= b_and!274165 (and (=> t!300134 result!259182) b_and!274173)))

(declare-fun tb!212993 () Bool)

(declare-fun t!300136 () Bool)

(assert (=> (and b!3675567 (= (toValue!8130 (transformation!5834 anOtherTypeRule!33)) (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300136) tb!212993))

(declare-fun result!259184 () Bool)

(assert (= result!259184 result!259180))

(assert (=> d!1079146 t!300136))

(declare-fun b_and!274175 () Bool)

(assert (= b_and!274167 (and (=> t!300136 result!259184) b_and!274175)))

(declare-fun tb!212995 () Bool)

(declare-fun t!300138 () Bool)

(assert (=> (and b!3675580 (= (toValue!8130 (transformation!5834 (h!44191 rules!3307))) (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300138) tb!212995))

(declare-fun result!259186 () Bool)

(assert (= result!259186 result!259180))

(assert (=> d!1079146 t!300138))

(declare-fun b_and!274177 () Bool)

(assert (= b_and!274169 (and (=> t!300138 result!259186) b_and!274177)))

(assert (=> d!1079146 m!4185055))

(declare-fun m!4185507 () Bool)

(assert (=> d!1079146 m!4185507))

(assert (=> d!1079146 m!4185055))

(declare-fun m!4185509 () Bool)

(assert (=> d!1079146 m!4185509))

(assert (=> d!1079146 m!4185055))

(declare-fun m!4185511 () Bool)

(assert (=> d!1079146 m!4185511))

(assert (=> d!1079146 m!4185011))

(assert (=> d!1079146 m!4185283))

(assert (=> b!3675594 d!1079146))

(declare-fun b!3675965 () Bool)

(declare-fun e!2276209 () Bool)

(assert (=> b!3675965 (= e!2276209 true)))

(declare-fun d!1079206 () Bool)

(assert (=> d!1079206 e!2276209))

(assert (= d!1079206 b!3675965))

(declare-fun order!21465 () Int)

(declare-fun lambda!124721 () Int)

(declare-fun dynLambda!16984 (Int Int) Int)

(assert (=> b!3675965 (< (dynLambda!16981 order!21459 (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) (dynLambda!16984 order!21465 lambda!124721))))

(assert (=> b!3675965 (< (dynLambda!16983 order!21463 (toChars!7989 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) (dynLambda!16984 order!21465 lambda!124721))))

(assert (=> d!1079206 (= (list!14404 (dynLambda!16979 (toChars!7989 (transformation!5834 (rule!8664 (_1!22452 lt!1283115)))) (dynLambda!16980 (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115)))) lt!1283139))) (list!14404 lt!1283139))))

(declare-fun lt!1283321 () Unit!56583)

(declare-fun ForallOf!745 (Int BalanceConc!23344) Unit!56583)

(assert (=> d!1079206 (= lt!1283321 (ForallOf!745 lambda!124721 lt!1283139))))

(assert (=> d!1079206 (= (lemmaSemiInverse!1583 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283139) lt!1283321)))

(declare-fun b_lambda!109151 () Bool)

(assert (=> (not b_lambda!109151) (not d!1079206)))

(declare-fun t!300140 () Bool)

(declare-fun tb!212997 () Bool)

(assert (=> (and b!3675559 (= (toChars!7989 (transformation!5834 rule!403)) (toChars!7989 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300140) tb!212997))

(declare-fun b!3675966 () Bool)

(declare-fun tp!1117979 () Bool)

(declare-fun e!2276210 () Bool)

(assert (=> b!3675966 (= e!2276210 (and (inv!52265 (c!635631 (dynLambda!16979 (toChars!7989 (transformation!5834 (rule!8664 (_1!22452 lt!1283115)))) (dynLambda!16980 (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115)))) lt!1283139)))) tp!1117979))))

(declare-fun result!259188 () Bool)

(assert (=> tb!212997 (= result!259188 (and (inv!52266 (dynLambda!16979 (toChars!7989 (transformation!5834 (rule!8664 (_1!22452 lt!1283115)))) (dynLambda!16980 (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115)))) lt!1283139))) e!2276210))))

(assert (= tb!212997 b!3675966))

(declare-fun m!4185513 () Bool)

(assert (=> b!3675966 m!4185513))

(declare-fun m!4185515 () Bool)

(assert (=> tb!212997 m!4185515))

(assert (=> d!1079206 t!300140))

(declare-fun b_and!274179 () Bool)

(assert (= b_and!274139 (and (=> t!300140 result!259188) b_and!274179)))

(declare-fun tb!212999 () Bool)

(declare-fun t!300142 () Bool)

(assert (=> (and b!3675589 (= (toChars!7989 (transformation!5834 (rule!8664 token!511))) (toChars!7989 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300142) tb!212999))

(declare-fun result!259190 () Bool)

(assert (= result!259190 result!259188))

(assert (=> d!1079206 t!300142))

(declare-fun b_and!274181 () Bool)

(assert (= b_and!274141 (and (=> t!300142 result!259190) b_and!274181)))

(declare-fun t!300144 () Bool)

(declare-fun tb!213001 () Bool)

(assert (=> (and b!3675567 (= (toChars!7989 (transformation!5834 anOtherTypeRule!33)) (toChars!7989 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300144) tb!213001))

(declare-fun result!259192 () Bool)

(assert (= result!259192 result!259188))

(assert (=> d!1079206 t!300144))

(declare-fun b_and!274183 () Bool)

(assert (= b_and!274143 (and (=> t!300144 result!259192) b_and!274183)))

(declare-fun tb!213003 () Bool)

(declare-fun t!300146 () Bool)

(assert (=> (and b!3675580 (= (toChars!7989 (transformation!5834 (h!44191 rules!3307))) (toChars!7989 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300146) tb!213003))

(declare-fun result!259194 () Bool)

(assert (= result!259194 result!259188))

(assert (=> d!1079206 t!300146))

(declare-fun b_and!274185 () Bool)

(assert (= b_and!274145 (and (=> t!300146 result!259194) b_and!274185)))

(declare-fun b_lambda!109153 () Bool)

(assert (=> (not b_lambda!109153) (not d!1079206)))

(assert (=> d!1079206 t!300116))

(declare-fun b_and!274187 () Bool)

(assert (= b_and!274171 (and (=> t!300116 result!259162) b_and!274187)))

(assert (=> d!1079206 t!300118))

(declare-fun b_and!274189 () Bool)

(assert (= b_and!274173 (and (=> t!300118 result!259166) b_and!274189)))

(assert (=> d!1079206 t!300120))

(declare-fun b_and!274191 () Bool)

(assert (= b_and!274175 (and (=> t!300120 result!259168) b_and!274191)))

(assert (=> d!1079206 t!300122))

(declare-fun b_and!274193 () Bool)

(assert (= b_and!274177 (and (=> t!300122 result!259170) b_and!274193)))

(assert (=> d!1079206 m!4185011))

(assert (=> d!1079206 m!4185283))

(declare-fun m!4185517 () Bool)

(assert (=> d!1079206 m!4185517))

(declare-fun m!4185519 () Bool)

(assert (=> d!1079206 m!4185519))

(assert (=> d!1079206 m!4185283))

(assert (=> d!1079206 m!4185517))

(declare-fun m!4185521 () Bool)

(assert (=> d!1079206 m!4185521))

(assert (=> b!3675594 d!1079206))

(declare-fun d!1079208 () Bool)

(declare-fun lt!1283324 () Int)

(assert (=> d!1079208 (= lt!1283324 (size!29641 (list!14404 lt!1283139)))))

(declare-fun size!29642 (Conc!11865) Int)

(assert (=> d!1079208 (= lt!1283324 (size!29642 (c!635631 lt!1283139)))))

(assert (=> d!1079208 (= (size!29640 lt!1283139) lt!1283324)))

(declare-fun bs!573358 () Bool)

(assert (= bs!573358 d!1079208))

(assert (=> bs!573358 m!4185011))

(assert (=> bs!573358 m!4185011))

(declare-fun m!4185523 () Bool)

(assert (=> bs!573358 m!4185523))

(declare-fun m!4185525 () Bool)

(assert (=> bs!573358 m!4185525))

(assert (=> b!3675594 d!1079208))

(declare-fun d!1079210 () Bool)

(assert (=> d!1079210 (= (size!29639 (_1!22452 lt!1283115)) (size!29641 (originalCharacters!6548 (_1!22452 lt!1283115))))))

(declare-fun Unit!56602 () Unit!56583)

(assert (=> d!1079210 (= (lemmaCharactersSize!879 (_1!22452 lt!1283115)) Unit!56602)))

(declare-fun bs!573359 () Bool)

(assert (= bs!573359 d!1079210))

(declare-fun m!4185527 () Bool)

(assert (=> bs!573359 m!4185527))

(assert (=> b!3675594 d!1079210))

(declare-fun d!1079212 () Bool)

(declare-fun fromListB!2024 (List!38894) BalanceConc!23344)

(assert (=> d!1079212 (= (seqFromList!4383 (originalCharacters!6548 (_1!22452 lt!1283115))) (fromListB!2024 (originalCharacters!6548 (_1!22452 lt!1283115))))))

(declare-fun bs!573360 () Bool)

(assert (= bs!573360 d!1079212))

(declare-fun m!4185529 () Bool)

(assert (=> bs!573360 m!4185529))

(assert (=> b!3675594 d!1079212))

(declare-fun d!1079214 () Bool)

(assert (=> d!1079214 (not (contains!7735 (usedCharacters!1046 (regex!5834 (rule!8664 (_1!22452 lt!1283115)))) lt!1283133))))

(declare-fun lt!1283325 () Unit!56583)

(assert (=> d!1079214 (= lt!1283325 (choose!21907 thiss!23823 rules!3307 rules!3307 (rule!8664 (_1!22452 lt!1283115)) rule!403 lt!1283133))))

(assert (=> d!1079214 (rulesInvariant!4820 thiss!23823 rules!3307)))

(assert (=> d!1079214 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!480 thiss!23823 rules!3307 rules!3307 (rule!8664 (_1!22452 lt!1283115)) rule!403 lt!1283133) lt!1283325)))

(declare-fun bs!573361 () Bool)

(assert (= bs!573361 d!1079214))

(assert (=> bs!573361 m!4185043))

(assert (=> bs!573361 m!4185043))

(assert (=> bs!573361 m!4185121))

(declare-fun m!4185531 () Bool)

(assert (=> bs!573361 m!4185531))

(assert (=> bs!573361 m!4184959))

(assert (=> b!3675576 d!1079214))

(declare-fun d!1079216 () Bool)

(declare-fun res!1493257 () Bool)

(declare-fun e!2276215 () Bool)

(assert (=> d!1079216 (=> res!1493257 e!2276215)))

(assert (=> d!1079216 (= res!1493257 (not ((_ is Cons!38771) rules!3307)))))

(assert (=> d!1079216 (= (sepAndNonSepRulesDisjointChars!2002 rules!3307 rules!3307) e!2276215)))

(declare-fun b!3675971 () Bool)

(declare-fun e!2276216 () Bool)

(assert (=> b!3675971 (= e!2276215 e!2276216)))

(declare-fun res!1493258 () Bool)

(assert (=> b!3675971 (=> (not res!1493258) (not e!2276216))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!912 (Rule!11468 List!38895) Bool)

(assert (=> b!3675971 (= res!1493258 (ruleDisjointCharsFromAllFromOtherType!912 (h!44191 rules!3307) rules!3307))))

(declare-fun b!3675972 () Bool)

(assert (=> b!3675972 (= e!2276216 (sepAndNonSepRulesDisjointChars!2002 rules!3307 (t!300090 rules!3307)))))

(assert (= (and d!1079216 (not res!1493257)) b!3675971))

(assert (= (and b!3675971 res!1493258) b!3675972))

(declare-fun m!4185533 () Bool)

(assert (=> b!3675971 m!4185533))

(declare-fun m!4185535 () Bool)

(assert (=> b!3675972 m!4185535))

(assert (=> b!3675592 d!1079216))

(declare-fun d!1079218 () Bool)

(declare-fun lt!1283328 () List!38894)

(assert (=> d!1079218 (= (++!9650 lt!1283106 lt!1283328) lt!1283106)))

(declare-fun e!2276219 () List!38894)

(assert (=> d!1079218 (= lt!1283328 e!2276219)))

(declare-fun c!635707 () Bool)

(assert (=> d!1079218 (= c!635707 ((_ is Cons!38770) lt!1283106))))

(assert (=> d!1079218 (>= (size!29641 lt!1283106) (size!29641 lt!1283106))))

(assert (=> d!1079218 (= (getSuffix!1750 lt!1283106 lt!1283106) lt!1283328)))

(declare-fun b!3675977 () Bool)

(assert (=> b!3675977 (= e!2276219 (getSuffix!1750 (tail!5686 lt!1283106) (t!300089 lt!1283106)))))

(declare-fun b!3675978 () Bool)

(assert (=> b!3675978 (= e!2276219 lt!1283106)))

(assert (= (and d!1079218 c!635707) b!3675977))

(assert (= (and d!1079218 (not c!635707)) b!3675978))

(declare-fun m!4185537 () Bool)

(assert (=> d!1079218 m!4185537))

(declare-fun m!4185539 () Bool)

(assert (=> d!1079218 m!4185539))

(assert (=> d!1079218 m!4185539))

(declare-fun m!4185541 () Bool)

(assert (=> b!3675977 m!4185541))

(assert (=> b!3675977 m!4185541))

(declare-fun m!4185543 () Bool)

(assert (=> b!3675977 m!4185543))

(assert (=> b!3675593 d!1079218))

(declare-fun b!3675979 () Bool)

(declare-fun e!2276223 () Bool)

(assert (=> b!3675979 (= e!2276223 (nullable!3688 (regex!5834 (rule!8664 (_1!22452 lt!1283115)))))))

(declare-fun b!3675980 () Bool)

(declare-fun e!2276226 () Bool)

(declare-fun e!2276225 () Bool)

(assert (=> b!3675980 (= e!2276226 e!2276225)))

(declare-fun res!1493261 () Bool)

(assert (=> b!3675980 (=> res!1493261 e!2276225)))

(declare-fun call!266206 () Bool)

(assert (=> b!3675980 (= res!1493261 call!266206)))

(declare-fun bm!266201 () Bool)

(assert (=> bm!266201 (= call!266206 (isEmpty!23018 lt!1283106))))

(declare-fun b!3675981 () Bool)

(declare-fun e!2276220 () Bool)

(assert (=> b!3675981 (= e!2276220 e!2276226)))

(declare-fun res!1493259 () Bool)

(assert (=> b!3675981 (=> (not res!1493259) (not e!2276226))))

(declare-fun lt!1283329 () Bool)

(assert (=> b!3675981 (= res!1493259 (not lt!1283329))))

(declare-fun b!3675982 () Bool)

(assert (=> b!3675982 (= e!2276225 (not (= (head!7880 lt!1283106) (c!635630 (regex!5834 (rule!8664 (_1!22452 lt!1283115)))))))))

(declare-fun b!3675983 () Bool)

(assert (=> b!3675983 (= e!2276223 (matchR!5162 (derivativeStep!3237 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) (head!7880 lt!1283106)) (tail!5686 lt!1283106)))))

(declare-fun b!3675984 () Bool)

(declare-fun res!1493260 () Bool)

(declare-fun e!2276221 () Bool)

(assert (=> b!3675984 (=> (not res!1493260) (not e!2276221))))

(assert (=> b!3675984 (= res!1493260 (not call!266206))))

(declare-fun b!3675985 () Bool)

(declare-fun res!1493266 () Bool)

(assert (=> b!3675985 (=> res!1493266 e!2276220)))

(assert (=> b!3675985 (= res!1493266 (not ((_ is ElementMatch!10593) (regex!5834 (rule!8664 (_1!22452 lt!1283115))))))))

(declare-fun e!2276222 () Bool)

(assert (=> b!3675985 (= e!2276222 e!2276220)))

(declare-fun d!1079220 () Bool)

(declare-fun e!2276224 () Bool)

(assert (=> d!1079220 e!2276224))

(declare-fun c!635710 () Bool)

(assert (=> d!1079220 (= c!635710 ((_ is EmptyExpr!10593) (regex!5834 (rule!8664 (_1!22452 lt!1283115)))))))

(assert (=> d!1079220 (= lt!1283329 e!2276223)))

(declare-fun c!635708 () Bool)

(assert (=> d!1079220 (= c!635708 (isEmpty!23018 lt!1283106))))

(assert (=> d!1079220 (validRegex!4850 (regex!5834 (rule!8664 (_1!22452 lt!1283115))))))

(assert (=> d!1079220 (= (matchR!5162 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283106) lt!1283329)))

(declare-fun b!3675986 () Bool)

(assert (=> b!3675986 (= e!2276222 (not lt!1283329))))

(declare-fun b!3675987 () Bool)

(assert (=> b!3675987 (= e!2276224 e!2276222)))

(declare-fun c!635709 () Bool)

(assert (=> b!3675987 (= c!635709 ((_ is EmptyLang!10593) (regex!5834 (rule!8664 (_1!22452 lt!1283115)))))))

(declare-fun b!3675988 () Bool)

(declare-fun res!1493264 () Bool)

(assert (=> b!3675988 (=> res!1493264 e!2276220)))

(assert (=> b!3675988 (= res!1493264 e!2276221)))

(declare-fun res!1493263 () Bool)

(assert (=> b!3675988 (=> (not res!1493263) (not e!2276221))))

(assert (=> b!3675988 (= res!1493263 lt!1283329)))

(declare-fun b!3675989 () Bool)

(declare-fun res!1493265 () Bool)

(assert (=> b!3675989 (=> (not res!1493265) (not e!2276221))))

(assert (=> b!3675989 (= res!1493265 (isEmpty!23018 (tail!5686 lt!1283106)))))

(declare-fun b!3675990 () Bool)

(assert (=> b!3675990 (= e!2276221 (= (head!7880 lt!1283106) (c!635630 (regex!5834 (rule!8664 (_1!22452 lt!1283115))))))))

(declare-fun b!3675991 () Bool)

(assert (=> b!3675991 (= e!2276224 (= lt!1283329 call!266206))))

(declare-fun b!3675992 () Bool)

(declare-fun res!1493262 () Bool)

(assert (=> b!3675992 (=> res!1493262 e!2276225)))

(assert (=> b!3675992 (= res!1493262 (not (isEmpty!23018 (tail!5686 lt!1283106))))))

(assert (= (and d!1079220 c!635708) b!3675979))

(assert (= (and d!1079220 (not c!635708)) b!3675983))

(assert (= (and d!1079220 c!635710) b!3675991))

(assert (= (and d!1079220 (not c!635710)) b!3675987))

(assert (= (and b!3675987 c!635709) b!3675986))

(assert (= (and b!3675987 (not c!635709)) b!3675985))

(assert (= (and b!3675985 (not res!1493266)) b!3675988))

(assert (= (and b!3675988 res!1493263) b!3675984))

(assert (= (and b!3675984 res!1493260) b!3675989))

(assert (= (and b!3675989 res!1493265) b!3675990))

(assert (= (and b!3675988 (not res!1493264)) b!3675981))

(assert (= (and b!3675981 res!1493259) b!3675980))

(assert (= (and b!3675980 (not res!1493261)) b!3675992))

(assert (= (and b!3675992 (not res!1493262)) b!3675982))

(assert (= (or b!3675991 b!3675980 b!3675984) bm!266201))

(assert (=> b!3675979 m!4185101))

(assert (=> b!3675989 m!4185541))

(assert (=> b!3675989 m!4185541))

(declare-fun m!4185545 () Bool)

(assert (=> b!3675989 m!4185545))

(declare-fun m!4185547 () Bool)

(assert (=> b!3675982 m!4185547))

(assert (=> d!1079220 m!4185069))

(assert (=> d!1079220 m!4185109))

(assert (=> b!3675983 m!4185547))

(assert (=> b!3675983 m!4185547))

(declare-fun m!4185549 () Bool)

(assert (=> b!3675983 m!4185549))

(assert (=> b!3675983 m!4185541))

(assert (=> b!3675983 m!4185549))

(assert (=> b!3675983 m!4185541))

(declare-fun m!4185551 () Bool)

(assert (=> b!3675983 m!4185551))

(assert (=> bm!266201 m!4185069))

(assert (=> b!3675990 m!4185547))

(assert (=> b!3675992 m!4185541))

(assert (=> b!3675992 m!4185541))

(assert (=> b!3675992 m!4185545))

(assert (=> b!3675593 d!1079220))

(declare-fun d!1079222 () Bool)

(assert (=> d!1079222 (isEmpty!23018 (getSuffix!1750 lt!1283106 lt!1283106))))

(declare-fun lt!1283332 () Unit!56583)

(declare-fun choose!21914 (List!38894) Unit!56583)

(assert (=> d!1079222 (= lt!1283332 (choose!21914 lt!1283106))))

(assert (=> d!1079222 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!214 lt!1283106) lt!1283332)))

(declare-fun bs!573362 () Bool)

(assert (= bs!573362 d!1079222))

(assert (=> bs!573362 m!4185083))

(assert (=> bs!573362 m!4185083))

(assert (=> bs!573362 m!4185085))

(declare-fun m!4185553 () Bool)

(assert (=> bs!573362 m!4185553))

(assert (=> b!3675593 d!1079222))

(declare-fun d!1079224 () Bool)

(assert (=> d!1079224 (= (isEmpty!23018 (getSuffix!1750 lt!1283106 lt!1283106)) ((_ is Nil!38770) (getSuffix!1750 lt!1283106 lt!1283106)))))

(assert (=> b!3675593 d!1079224))

(declare-fun d!1079226 () Bool)

(assert (=> d!1079226 (not (matchR!5162 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283106))))

(declare-fun lt!1283333 () Unit!56583)

(assert (=> d!1079226 (= lt!1283333 (choose!21908 thiss!23823 rules!3307 rule!403 lt!1283106 lt!1283106 (rule!8664 (_1!22452 lt!1283115))))))

(assert (=> d!1079226 (isPrefix!3197 lt!1283106 lt!1283106)))

(assert (=> d!1079226 (= (lemmaMaxPrefNoSmallerRuleMatches!242 thiss!23823 rules!3307 rule!403 lt!1283106 lt!1283106 (rule!8664 (_1!22452 lt!1283115))) lt!1283333)))

(declare-fun bs!573363 () Bool)

(assert (= bs!573363 d!1079226))

(assert (=> bs!573363 m!4185091))

(declare-fun m!4185555 () Bool)

(assert (=> bs!573363 m!4185555))

(declare-fun m!4185557 () Bool)

(assert (=> bs!573363 m!4185557))

(assert (=> b!3675593 d!1079226))

(declare-fun d!1079228 () Bool)

(assert (=> d!1079228 (= (isEmpty!23018 (_2!22452 lt!1283132)) ((_ is Nil!38770) (_2!22452 lt!1283132)))))

(assert (=> b!3675556 d!1079228))

(declare-fun b!3675993 () Bool)

(declare-fun e!2276228 () List!38894)

(declare-fun call!266207 () List!38894)

(assert (=> b!3675993 (= e!2276228 call!266207)))

(declare-fun b!3675994 () Bool)

(declare-fun e!2276230 () List!38894)

(declare-fun call!266208 () List!38894)

(assert (=> b!3675994 (= e!2276230 call!266208)))

(declare-fun b!3675995 () Bool)

(declare-fun e!2276227 () List!38894)

(declare-fun e!2276229 () List!38894)

(assert (=> b!3675995 (= e!2276227 e!2276229)))

(declare-fun c!635711 () Bool)

(assert (=> b!3675995 (= c!635711 ((_ is ElementMatch!10593) (regex!5834 (rule!8664 (_1!22452 lt!1283115)))))))

(declare-fun b!3675996 () Bool)

(assert (=> b!3675996 (= e!2276228 call!266207)))

(declare-fun bm!266202 () Bool)

(declare-fun call!266210 () List!38894)

(assert (=> bm!266202 (= call!266210 call!266208)))

(declare-fun b!3675997 () Bool)

(assert (=> b!3675997 (= e!2276227 Nil!38770)))

(declare-fun b!3675998 () Bool)

(assert (=> b!3675998 (= e!2276230 e!2276228)))

(declare-fun c!635712 () Bool)

(assert (=> b!3675998 (= c!635712 ((_ is Union!10593) (regex!5834 (rule!8664 (_1!22452 lt!1283115)))))))

(declare-fun b!3676000 () Bool)

(declare-fun c!635713 () Bool)

(assert (=> b!3676000 (= c!635713 ((_ is Star!10593) (regex!5834 (rule!8664 (_1!22452 lt!1283115)))))))

(assert (=> b!3676000 (= e!2276229 e!2276230)))

(declare-fun bm!266203 () Bool)

(assert (=> bm!266203 (= call!266208 (usedCharacters!1046 (ite c!635713 (reg!10922 (regex!5834 (rule!8664 (_1!22452 lt!1283115)))) (ite c!635712 (regTwo!21699 (regex!5834 (rule!8664 (_1!22452 lt!1283115)))) (regOne!21698 (regex!5834 (rule!8664 (_1!22452 lt!1283115))))))))))

(declare-fun call!266209 () List!38894)

(declare-fun bm!266204 () Bool)

(assert (=> bm!266204 (= call!266207 (++!9650 (ite c!635712 call!266209 call!266210) (ite c!635712 call!266210 call!266209)))))

(declare-fun bm!266205 () Bool)

(assert (=> bm!266205 (= call!266209 (usedCharacters!1046 (ite c!635712 (regOne!21699 (regex!5834 (rule!8664 (_1!22452 lt!1283115)))) (regTwo!21698 (regex!5834 (rule!8664 (_1!22452 lt!1283115)))))))))

(declare-fun d!1079230 () Bool)

(declare-fun c!635714 () Bool)

(assert (=> d!1079230 (= c!635714 (or ((_ is EmptyExpr!10593) (regex!5834 (rule!8664 (_1!22452 lt!1283115)))) ((_ is EmptyLang!10593) (regex!5834 (rule!8664 (_1!22452 lt!1283115))))))))

(assert (=> d!1079230 (= (usedCharacters!1046 (regex!5834 (rule!8664 (_1!22452 lt!1283115)))) e!2276227)))

(declare-fun b!3675999 () Bool)

(assert (=> b!3675999 (= e!2276229 (Cons!38770 (c!635630 (regex!5834 (rule!8664 (_1!22452 lt!1283115)))) Nil!38770))))

(assert (= (and d!1079230 c!635714) b!3675997))

(assert (= (and d!1079230 (not c!635714)) b!3675995))

(assert (= (and b!3675995 c!635711) b!3675999))

(assert (= (and b!3675995 (not c!635711)) b!3676000))

(assert (= (and b!3676000 c!635713) b!3675994))

(assert (= (and b!3676000 (not c!635713)) b!3675998))

(assert (= (and b!3675998 c!635712) b!3675996))

(assert (= (and b!3675998 (not c!635712)) b!3675993))

(assert (= (or b!3675996 b!3675993) bm!266205))

(assert (= (or b!3675996 b!3675993) bm!266202))

(assert (= (or b!3675996 b!3675993) bm!266204))

(assert (= (or b!3675994 bm!266202) bm!266203))

(declare-fun m!4185559 () Bool)

(assert (=> bm!266203 m!4185559))

(declare-fun m!4185561 () Bool)

(assert (=> bm!266204 m!4185561))

(declare-fun m!4185563 () Bool)

(assert (=> bm!266205 m!4185563))

(assert (=> bm!266171 d!1079230))

(declare-fun d!1079232 () Bool)

(assert (=> d!1079232 (= (_2!22452 lt!1283115) lt!1283124)))

(declare-fun lt!1283336 () Unit!56583)

(declare-fun choose!21915 (List!38894 List!38894 List!38894 List!38894 List!38894) Unit!56583)

(assert (=> d!1079232 (= lt!1283336 (choose!21915 lt!1283099 (_2!22452 lt!1283115) lt!1283099 lt!1283124 lt!1283138))))

(assert (=> d!1079232 (isPrefix!3197 lt!1283099 lt!1283138)))

(assert (=> d!1079232 (= (lemmaSamePrefixThenSameSuffix!1524 lt!1283099 (_2!22452 lt!1283115) lt!1283099 lt!1283124 lt!1283138) lt!1283336)))

(declare-fun bs!573364 () Bool)

(assert (= bs!573364 d!1079232))

(declare-fun m!4185565 () Bool)

(assert (=> bs!573364 m!4185565))

(assert (=> bs!573364 m!4185021))

(assert (=> b!3675597 d!1079232))

(declare-fun b!3676019 () Bool)

(declare-fun e!2276241 () Option!8297)

(assert (=> b!3676019 (= e!2276241 None!8296)))

(declare-fun b!3676020 () Bool)

(declare-fun res!1493285 () Bool)

(declare-fun e!2276240 () Bool)

(assert (=> b!3676020 (=> (not res!1493285) (not e!2276240))))

(declare-fun lt!1283347 () Option!8297)

(assert (=> b!3676020 (= res!1493285 (= (++!9650 (list!14404 (charsOf!3848 (_1!22452 (get!12824 lt!1283347)))) (_2!22452 (get!12824 lt!1283347))) lt!1283138))))

(declare-fun b!3676021 () Bool)

(declare-fun e!2276239 () Bool)

(assert (=> b!3676021 (= e!2276239 e!2276240)))

(declare-fun res!1493286 () Bool)

(assert (=> b!3676021 (=> (not res!1493286) (not e!2276240))))

(assert (=> b!3676021 (= res!1493286 (matchR!5162 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) (list!14404 (charsOf!3848 (_1!22452 (get!12824 lt!1283347))))))))

(declare-fun b!3676022 () Bool)

(declare-fun res!1493283 () Bool)

(assert (=> b!3676022 (=> (not res!1493283) (not e!2276240))))

(assert (=> b!3676022 (= res!1493283 (< (size!29641 (_2!22452 (get!12824 lt!1283347))) (size!29641 lt!1283138)))))

(declare-fun b!3676023 () Bool)

(declare-fun res!1493284 () Bool)

(assert (=> b!3676023 (=> (not res!1493284) (not e!2276240))))

(assert (=> b!3676023 (= res!1493284 (= (value!186729 (_1!22452 (get!12824 lt!1283347))) (apply!9336 (transformation!5834 (rule!8664 (_1!22452 (get!12824 lt!1283347)))) (seqFromList!4383 (originalCharacters!6548 (_1!22452 (get!12824 lt!1283347)))))))))

(declare-fun b!3676024 () Bool)

(declare-fun res!1493282 () Bool)

(assert (=> b!3676024 (=> (not res!1493282) (not e!2276240))))

(assert (=> b!3676024 (= res!1493282 (= (rule!8664 (_1!22452 (get!12824 lt!1283347))) (rule!8664 (_1!22452 lt!1283115))))))

(declare-fun d!1079234 () Bool)

(assert (=> d!1079234 e!2276239))

(declare-fun res!1493287 () Bool)

(assert (=> d!1079234 (=> res!1493287 e!2276239)))

(declare-fun isEmpty!23022 (Option!8297) Bool)

(assert (=> d!1079234 (= res!1493287 (isEmpty!23022 lt!1283347))))

(assert (=> d!1079234 (= lt!1283347 e!2276241)))

(declare-fun c!635717 () Bool)

(declare-datatypes ((tuple2!38640 0))(
  ( (tuple2!38641 (_1!22454 List!38894) (_2!22454 List!38894)) )
))
(declare-fun lt!1283350 () tuple2!38640)

(assert (=> d!1079234 (= c!635717 (isEmpty!23018 (_1!22454 lt!1283350)))))

(declare-fun findLongestMatch!999 (Regex!10593 List!38894) tuple2!38640)

(assert (=> d!1079234 (= lt!1283350 (findLongestMatch!999 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283138))))

(assert (=> d!1079234 (ruleValid!2098 thiss!23823 (rule!8664 (_1!22452 lt!1283115)))))

(assert (=> d!1079234 (= (maxPrefixOneRule!2095 thiss!23823 (rule!8664 (_1!22452 lt!1283115)) lt!1283138) lt!1283347)))

(declare-fun b!3676025 () Bool)

(assert (=> b!3676025 (= e!2276240 (= (size!29639 (_1!22452 (get!12824 lt!1283347))) (size!29641 (originalCharacters!6548 (_1!22452 (get!12824 lt!1283347))))))))

(declare-fun b!3676026 () Bool)

(declare-fun e!2276242 () Bool)

(declare-fun findLongestMatchInner!1084 (Regex!10593 List!38894 Int List!38894 List!38894 Int) tuple2!38640)

(assert (=> b!3676026 (= e!2276242 (matchR!5162 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) (_1!22454 (findLongestMatchInner!1084 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) Nil!38770 (size!29641 Nil!38770) lt!1283138 lt!1283138 (size!29641 lt!1283138)))))))

(declare-fun b!3676027 () Bool)

(assert (=> b!3676027 (= e!2276241 (Some!8296 (tuple2!38637 (Token!11035 (apply!9336 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))) (seqFromList!4383 (_1!22454 lt!1283350))) (rule!8664 (_1!22452 lt!1283115)) (size!29640 (seqFromList!4383 (_1!22454 lt!1283350))) (_1!22454 lt!1283350)) (_2!22454 lt!1283350))))))

(declare-fun lt!1283351 () Unit!56583)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1057 (Regex!10593 List!38894) Unit!56583)

(assert (=> b!3676027 (= lt!1283351 (longestMatchIsAcceptedByMatchOrIsEmpty!1057 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283138))))

(declare-fun res!1493281 () Bool)

(assert (=> b!3676027 (= res!1493281 (isEmpty!23018 (_1!22454 (findLongestMatchInner!1084 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) Nil!38770 (size!29641 Nil!38770) lt!1283138 lt!1283138 (size!29641 lt!1283138)))))))

(assert (=> b!3676027 (=> res!1493281 e!2276242)))

(assert (=> b!3676027 e!2276242))

(declare-fun lt!1283348 () Unit!56583)

(assert (=> b!3676027 (= lt!1283348 lt!1283351)))

(declare-fun lt!1283349 () Unit!56583)

(assert (=> b!3676027 (= lt!1283349 (lemmaSemiInverse!1583 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))) (seqFromList!4383 (_1!22454 lt!1283350))))))

(assert (= (and d!1079234 c!635717) b!3676019))

(assert (= (and d!1079234 (not c!635717)) b!3676027))

(assert (= (and b!3676027 (not res!1493281)) b!3676026))

(assert (= (and d!1079234 (not res!1493287)) b!3676021))

(assert (= (and b!3676021 res!1493286) b!3676020))

(assert (= (and b!3676020 res!1493285) b!3676022))

(assert (= (and b!3676022 res!1493283) b!3676024))

(assert (= (and b!3676024 res!1493282) b!3676023))

(assert (= (and b!3676023 res!1493284) b!3676025))

(declare-fun m!4185567 () Bool)

(assert (=> b!3676021 m!4185567))

(declare-fun m!4185569 () Bool)

(assert (=> b!3676021 m!4185569))

(assert (=> b!3676021 m!4185569))

(declare-fun m!4185571 () Bool)

(assert (=> b!3676021 m!4185571))

(assert (=> b!3676021 m!4185571))

(declare-fun m!4185573 () Bool)

(assert (=> b!3676021 m!4185573))

(assert (=> b!3676025 m!4185567))

(declare-fun m!4185575 () Bool)

(assert (=> b!3676025 m!4185575))

(declare-fun m!4185577 () Bool)

(assert (=> d!1079234 m!4185577))

(declare-fun m!4185579 () Bool)

(assert (=> d!1079234 m!4185579))

(declare-fun m!4185581 () Bool)

(assert (=> d!1079234 m!4185581))

(declare-fun m!4185583 () Bool)

(assert (=> d!1079234 m!4185583))

(declare-fun m!4185585 () Bool)

(assert (=> b!3676026 m!4185585))

(declare-fun m!4185587 () Bool)

(assert (=> b!3676026 m!4185587))

(assert (=> b!3676026 m!4185585))

(assert (=> b!3676026 m!4185587))

(declare-fun m!4185589 () Bool)

(assert (=> b!3676026 m!4185589))

(declare-fun m!4185591 () Bool)

(assert (=> b!3676026 m!4185591))

(assert (=> b!3676020 m!4185567))

(assert (=> b!3676020 m!4185569))

(assert (=> b!3676020 m!4185569))

(assert (=> b!3676020 m!4185571))

(assert (=> b!3676020 m!4185571))

(declare-fun m!4185593 () Bool)

(assert (=> b!3676020 m!4185593))

(assert (=> b!3676022 m!4185567))

(declare-fun m!4185595 () Bool)

(assert (=> b!3676022 m!4185595))

(assert (=> b!3676022 m!4185587))

(assert (=> b!3676027 m!4185587))

(declare-fun m!4185597 () Bool)

(assert (=> b!3676027 m!4185597))

(declare-fun m!4185599 () Bool)

(assert (=> b!3676027 m!4185599))

(assert (=> b!3676027 m!4185597))

(declare-fun m!4185601 () Bool)

(assert (=> b!3676027 m!4185601))

(assert (=> b!3676027 m!4185597))

(assert (=> b!3676027 m!4185585))

(assert (=> b!3676027 m!4185587))

(assert (=> b!3676027 m!4185589))

(assert (=> b!3676027 m!4185597))

(declare-fun m!4185603 () Bool)

(assert (=> b!3676027 m!4185603))

(declare-fun m!4185605 () Bool)

(assert (=> b!3676027 m!4185605))

(assert (=> b!3676027 m!4185585))

(declare-fun m!4185607 () Bool)

(assert (=> b!3676027 m!4185607))

(assert (=> b!3676024 m!4185567))

(assert (=> b!3676023 m!4185567))

(declare-fun m!4185609 () Bool)

(assert (=> b!3676023 m!4185609))

(assert (=> b!3676023 m!4185609))

(declare-fun m!4185611 () Bool)

(assert (=> b!3676023 m!4185611))

(assert (=> b!3675597 d!1079234))

(declare-fun d!1079236 () Bool)

(assert (=> d!1079236 (= (apply!9336 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))) (seqFromList!4383 lt!1283099)) (dynLambda!16980 (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115)))) (seqFromList!4383 lt!1283099)))))

(declare-fun b_lambda!109155 () Bool)

(assert (=> (not b_lambda!109155) (not d!1079236)))

(declare-fun t!300148 () Bool)

(declare-fun tb!213005 () Bool)

(assert (=> (and b!3675559 (= (toValue!8130 (transformation!5834 rule!403)) (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300148) tb!213005))

(declare-fun result!259196 () Bool)

(assert (=> tb!213005 (= result!259196 (inv!21 (dynLambda!16980 (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115)))) (seqFromList!4383 lt!1283099))))))

(declare-fun m!4185613 () Bool)

(assert (=> tb!213005 m!4185613))

(assert (=> d!1079236 t!300148))

(declare-fun b_and!274195 () Bool)

(assert (= b_and!274187 (and (=> t!300148 result!259196) b_and!274195)))

(declare-fun tb!213007 () Bool)

(declare-fun t!300150 () Bool)

(assert (=> (and b!3675589 (= (toValue!8130 (transformation!5834 (rule!8664 token!511))) (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300150) tb!213007))

(declare-fun result!259198 () Bool)

(assert (= result!259198 result!259196))

(assert (=> d!1079236 t!300150))

(declare-fun b_and!274197 () Bool)

(assert (= b_and!274189 (and (=> t!300150 result!259198) b_and!274197)))

(declare-fun tb!213009 () Bool)

(declare-fun t!300152 () Bool)

(assert (=> (and b!3675567 (= (toValue!8130 (transformation!5834 anOtherTypeRule!33)) (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300152) tb!213009))

(declare-fun result!259200 () Bool)

(assert (= result!259200 result!259196))

(assert (=> d!1079236 t!300152))

(declare-fun b_and!274199 () Bool)

(assert (= b_and!274191 (and (=> t!300152 result!259200) b_and!274199)))

(declare-fun tb!213011 () Bool)

(declare-fun t!300154 () Bool)

(assert (=> (and b!3675580 (= (toValue!8130 (transformation!5834 (h!44191 rules!3307))) (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300154) tb!213011))

(declare-fun result!259202 () Bool)

(assert (= result!259202 result!259196))

(assert (=> d!1079236 t!300154))

(declare-fun b_and!274201 () Bool)

(assert (= b_and!274193 (and (=> t!300154 result!259202) b_and!274201)))

(assert (=> d!1079236 m!4184945))

(declare-fun m!4185615 () Bool)

(assert (=> d!1079236 m!4185615))

(assert (=> b!3675597 d!1079236))

(declare-fun d!1079238 () Bool)

(assert (=> d!1079238 (= (seqFromList!4383 lt!1283099) (fromListB!2024 lt!1283099))))

(declare-fun bs!573365 () Bool)

(assert (= bs!573365 d!1079238))

(declare-fun m!4185617 () Bool)

(assert (=> bs!573365 m!4185617))

(assert (=> b!3675597 d!1079238))

(declare-fun d!1079240 () Bool)

(declare-fun lt!1283354 () Int)

(assert (=> d!1079240 (>= lt!1283354 0)))

(declare-fun e!2276246 () Int)

(assert (=> d!1079240 (= lt!1283354 e!2276246)))

(declare-fun c!635720 () Bool)

(assert (=> d!1079240 (= c!635720 ((_ is Nil!38770) lt!1283099))))

(assert (=> d!1079240 (= (size!29641 lt!1283099) lt!1283354)))

(declare-fun b!3676032 () Bool)

(assert (=> b!3676032 (= e!2276246 0)))

(declare-fun b!3676033 () Bool)

(assert (=> b!3676033 (= e!2276246 (+ 1 (size!29641 (t!300089 lt!1283099))))))

(assert (= (and d!1079240 c!635720) b!3676032))

(assert (= (and d!1079240 (not c!635720)) b!3676033))

(declare-fun m!4185619 () Bool)

(assert (=> b!3676033 m!4185619))

(assert (=> b!3675597 d!1079240))

(declare-fun d!1079242 () Bool)

(assert (=> d!1079242 (= (maxPrefixOneRule!2095 thiss!23823 (rule!8664 (_1!22452 lt!1283115)) lt!1283138) (Some!8296 (tuple2!38637 (Token!11035 (apply!9336 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))) (seqFromList!4383 lt!1283099)) (rule!8664 (_1!22452 lt!1283115)) (size!29641 lt!1283099) lt!1283099) (_2!22452 lt!1283115))))))

(declare-fun lt!1283357 () Unit!56583)

(declare-fun choose!21916 (LexerInterface!5423 List!38895 List!38894 List!38894 List!38894 Rule!11468) Unit!56583)

(assert (=> d!1079242 (= lt!1283357 (choose!21916 thiss!23823 rules!3307 lt!1283099 lt!1283138 (_2!22452 lt!1283115) (rule!8664 (_1!22452 lt!1283115))))))

(assert (=> d!1079242 (not (isEmpty!23019 rules!3307))))

(assert (=> d!1079242 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1151 thiss!23823 rules!3307 lt!1283099 lt!1283138 (_2!22452 lt!1283115) (rule!8664 (_1!22452 lt!1283115))) lt!1283357)))

(declare-fun bs!573366 () Bool)

(assert (= bs!573366 d!1079242))

(assert (=> bs!573366 m!4184951))

(assert (=> bs!573366 m!4184945))

(assert (=> bs!573366 m!4184947))

(declare-fun m!4185621 () Bool)

(assert (=> bs!573366 m!4185621))

(assert (=> bs!573366 m!4184953))

(assert (=> bs!573366 m!4184973))

(assert (=> bs!573366 m!4184945))

(assert (=> b!3675597 d!1079242))

(declare-fun d!1079244 () Bool)

(declare-fun lt!1283358 () List!38894)

(assert (=> d!1079244 (= (++!9650 lt!1283099 lt!1283358) lt!1283138)))

(declare-fun e!2276247 () List!38894)

(assert (=> d!1079244 (= lt!1283358 e!2276247)))

(declare-fun c!635721 () Bool)

(assert (=> d!1079244 (= c!635721 ((_ is Cons!38770) lt!1283099))))

(assert (=> d!1079244 (>= (size!29641 lt!1283138) (size!29641 lt!1283099))))

(assert (=> d!1079244 (= (getSuffix!1750 lt!1283138 lt!1283099) lt!1283358)))

(declare-fun b!3676034 () Bool)

(assert (=> b!3676034 (= e!2276247 (getSuffix!1750 (tail!5686 lt!1283138) (t!300089 lt!1283099)))))

(declare-fun b!3676035 () Bool)

(assert (=> b!3676035 (= e!2276247 lt!1283138)))

(assert (= (and d!1079244 c!635721) b!3676034))

(assert (= (and d!1079244 (not c!635721)) b!3676035))

(declare-fun m!4185623 () Bool)

(assert (=> d!1079244 m!4185623))

(assert (=> d!1079244 m!4185587))

(assert (=> d!1079244 m!4184951))

(declare-fun m!4185625 () Bool)

(assert (=> b!3676034 m!4185625))

(assert (=> b!3676034 m!4185625))

(declare-fun m!4185627 () Bool)

(assert (=> b!3676034 m!4185627))

(assert (=> b!3675597 d!1079244))

(declare-fun d!1079246 () Bool)

(assert (=> d!1079246 (contains!7735 lt!1283099 (head!7880 suffix!1395))))

(declare-fun lt!1283361 () Unit!56583)

(declare-fun choose!21917 (List!38894 List!38894 List!38894 List!38894) Unit!56583)

(assert (=> d!1079246 (= lt!1283361 (choose!21917 lt!1283106 suffix!1395 lt!1283099 lt!1283138))))

(assert (=> d!1079246 (isPrefix!3197 lt!1283099 lt!1283138)))

(assert (=> d!1079246 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!142 lt!1283106 suffix!1395 lt!1283099 lt!1283138) lt!1283361)))

(declare-fun bs!573367 () Bool)

(assert (= bs!573367 d!1079246))

(assert (=> bs!573367 m!4184995))

(assert (=> bs!573367 m!4184995))

(declare-fun m!4185629 () Bool)

(assert (=> bs!573367 m!4185629))

(declare-fun m!4185631 () Bool)

(assert (=> bs!573367 m!4185631))

(assert (=> bs!573367 m!4185021))

(assert (=> b!3675560 d!1079246))

(declare-fun d!1079248 () Bool)

(declare-fun lt!1283362 () Bool)

(assert (=> d!1079248 (= lt!1283362 (select (content!5618 lt!1283099) lt!1283096))))

(declare-fun e!2276248 () Bool)

(assert (=> d!1079248 (= lt!1283362 e!2276248)))

(declare-fun res!1493289 () Bool)

(assert (=> d!1079248 (=> (not res!1493289) (not e!2276248))))

(assert (=> d!1079248 (= res!1493289 ((_ is Cons!38770) lt!1283099))))

(assert (=> d!1079248 (= (contains!7735 lt!1283099 lt!1283096) lt!1283362)))

(declare-fun b!3676036 () Bool)

(declare-fun e!2276249 () Bool)

(assert (=> b!3676036 (= e!2276248 e!2276249)))

(declare-fun res!1493288 () Bool)

(assert (=> b!3676036 (=> res!1493288 e!2276249)))

(assert (=> b!3676036 (= res!1493288 (= (h!44190 lt!1283099) lt!1283096))))

(declare-fun b!3676037 () Bool)

(assert (=> b!3676037 (= e!2276249 (contains!7735 (t!300089 lt!1283099) lt!1283096))))

(assert (= (and d!1079248 res!1493289) b!3676036))

(assert (= (and b!3676036 (not res!1493288)) b!3676037))

(declare-fun m!4185633 () Bool)

(assert (=> d!1079248 m!4185633))

(declare-fun m!4185635 () Bool)

(assert (=> d!1079248 m!4185635))

(declare-fun m!4185637 () Bool)

(assert (=> b!3676037 m!4185637))

(assert (=> b!3675560 d!1079248))

(declare-fun b!3676046 () Bool)

(declare-fun e!2276255 () Int)

(assert (=> b!3676046 (= e!2276255 0)))

(declare-fun b!3676048 () Bool)

(declare-fun e!2276256 () Int)

(assert (=> b!3676048 (= e!2276256 (+ 1 (getIndex!502 (t!300090 rules!3307) (rule!8664 (_1!22452 lt!1283115)))))))

(declare-fun b!3676049 () Bool)

(assert (=> b!3676049 (= e!2276256 (- 1))))

(declare-fun b!3676047 () Bool)

(assert (=> b!3676047 (= e!2276255 e!2276256)))

(declare-fun c!635727 () Bool)

(assert (=> b!3676047 (= c!635727 (and ((_ is Cons!38771) rules!3307) (not (= (h!44191 rules!3307) (rule!8664 (_1!22452 lt!1283115))))))))

(declare-fun d!1079250 () Bool)

(declare-fun lt!1283365 () Int)

(assert (=> d!1079250 (>= lt!1283365 0)))

(assert (=> d!1079250 (= lt!1283365 e!2276255)))

(declare-fun c!635726 () Bool)

(assert (=> d!1079250 (= c!635726 (and ((_ is Cons!38771) rules!3307) (= (h!44191 rules!3307) (rule!8664 (_1!22452 lt!1283115)))))))

(assert (=> d!1079250 (contains!7736 rules!3307 (rule!8664 (_1!22452 lt!1283115)))))

(assert (=> d!1079250 (= (getIndex!502 rules!3307 (rule!8664 (_1!22452 lt!1283115))) lt!1283365)))

(assert (= (and d!1079250 c!635726) b!3676046))

(assert (= (and d!1079250 (not c!635726)) b!3676047))

(assert (= (and b!3676047 c!635727) b!3676048))

(assert (= (and b!3676047 (not c!635727)) b!3676049))

(declare-fun m!4185639 () Bool)

(assert (=> b!3676048 m!4185639))

(declare-fun m!4185641 () Bool)

(assert (=> d!1079250 m!4185641))

(assert (=> b!3675579 d!1079250))

(declare-fun b!3676050 () Bool)

(declare-fun e!2276257 () Int)

(assert (=> b!3676050 (= e!2276257 0)))

(declare-fun b!3676052 () Bool)

(declare-fun e!2276258 () Int)

(assert (=> b!3676052 (= e!2276258 (+ 1 (getIndex!502 (t!300090 rules!3307) rule!403)))))

(declare-fun b!3676053 () Bool)

(assert (=> b!3676053 (= e!2276258 (- 1))))

(declare-fun b!3676051 () Bool)

(assert (=> b!3676051 (= e!2276257 e!2276258)))

(declare-fun c!635729 () Bool)

(assert (=> b!3676051 (= c!635729 (and ((_ is Cons!38771) rules!3307) (not (= (h!44191 rules!3307) rule!403))))))

(declare-fun d!1079252 () Bool)

(declare-fun lt!1283366 () Int)

(assert (=> d!1079252 (>= lt!1283366 0)))

(assert (=> d!1079252 (= lt!1283366 e!2276257)))

(declare-fun c!635728 () Bool)

(assert (=> d!1079252 (= c!635728 (and ((_ is Cons!38771) rules!3307) (= (h!44191 rules!3307) rule!403)))))

(assert (=> d!1079252 (contains!7736 rules!3307 rule!403)))

(assert (=> d!1079252 (= (getIndex!502 rules!3307 rule!403) lt!1283366)))

(assert (= (and d!1079252 c!635728) b!3676050))

(assert (= (and d!1079252 (not c!635728)) b!3676051))

(assert (= (and b!3676051 c!635729) b!3676052))

(assert (= (and b!3676051 (not c!635729)) b!3676053))

(declare-fun m!4185643 () Bool)

(assert (=> b!3676052 m!4185643))

(assert (=> d!1079252 m!4184923))

(assert (=> b!3675579 d!1079252))

(declare-fun d!1079254 () Bool)

(assert (=> d!1079254 (= (rule!8664 (_1!22452 lt!1283115)) rule!403)))

(declare-fun lt!1283369 () Unit!56583)

(declare-fun choose!21918 (List!38895 Rule!11468 Rule!11468) Unit!56583)

(assert (=> d!1079254 (= lt!1283369 (choose!21918 rules!3307 (rule!8664 (_1!22452 lt!1283115)) rule!403))))

(assert (=> d!1079254 (contains!7736 rules!3307 (rule!8664 (_1!22452 lt!1283115)))))

(assert (=> d!1079254 (= (lemmaSameIndexThenSameElement!234 rules!3307 (rule!8664 (_1!22452 lt!1283115)) rule!403) lt!1283369)))

(declare-fun bs!573368 () Bool)

(assert (= bs!573368 d!1079254))

(declare-fun m!4185645 () Bool)

(assert (=> bs!573368 m!4185645))

(assert (=> bs!573368 m!4185641))

(assert (=> b!3675579 d!1079254))

(declare-fun d!1079256 () Bool)

(declare-fun c!635735 () Bool)

(assert (=> d!1079256 (= c!635735 ((_ is IntegerValue!18192) (value!186729 token!511)))))

(declare-fun e!2276266 () Bool)

(assert (=> d!1079256 (= (inv!21 (value!186729 token!511)) e!2276266)))

(declare-fun b!3676064 () Bool)

(declare-fun e!2276265 () Bool)

(assert (=> b!3676064 (= e!2276266 e!2276265)))

(declare-fun c!635734 () Bool)

(assert (=> b!3676064 (= c!635734 ((_ is IntegerValue!18193) (value!186729 token!511)))))

(declare-fun b!3676065 () Bool)

(declare-fun inv!16 (TokenValue!6064) Bool)

(assert (=> b!3676065 (= e!2276266 (inv!16 (value!186729 token!511)))))

(declare-fun b!3676066 () Bool)

(declare-fun e!2276267 () Bool)

(declare-fun inv!15 (TokenValue!6064) Bool)

(assert (=> b!3676066 (= e!2276267 (inv!15 (value!186729 token!511)))))

(declare-fun b!3676067 () Bool)

(declare-fun res!1493292 () Bool)

(assert (=> b!3676067 (=> res!1493292 e!2276267)))

(assert (=> b!3676067 (= res!1493292 (not ((_ is IntegerValue!18194) (value!186729 token!511))))))

(assert (=> b!3676067 (= e!2276265 e!2276267)))

(declare-fun b!3676068 () Bool)

(declare-fun inv!17 (TokenValue!6064) Bool)

(assert (=> b!3676068 (= e!2276265 (inv!17 (value!186729 token!511)))))

(assert (= (and d!1079256 c!635735) b!3676065))

(assert (= (and d!1079256 (not c!635735)) b!3676064))

(assert (= (and b!3676064 c!635734) b!3676068))

(assert (= (and b!3676064 (not c!635734)) b!3676067))

(assert (= (and b!3676067 (not res!1493292)) b!3676066))

(declare-fun m!4185647 () Bool)

(assert (=> b!3676065 m!4185647))

(declare-fun m!4185649 () Bool)

(assert (=> b!3676066 m!4185649))

(declare-fun m!4185651 () Bool)

(assert (=> b!3676068 m!4185651))

(assert (=> b!3675599 d!1079256))

(declare-fun d!1079258 () Bool)

(assert (=> d!1079258 (not (matchR!5162 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283099))))

(declare-fun lt!1283370 () Unit!56583)

(assert (=> d!1079258 (= lt!1283370 (choose!21905 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283099 lt!1283096))))

(assert (=> d!1079258 (validRegex!4850 (regex!5834 (rule!8664 (_1!22452 lt!1283115))))))

(assert (=> d!1079258 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!782 (regex!5834 (rule!8664 (_1!22452 lt!1283115))) lt!1283099 lt!1283096) lt!1283370)))

(declare-fun bs!573369 () Bool)

(assert (= bs!573369 d!1079258))

(assert (=> bs!573369 m!4185045))

(declare-fun m!4185653 () Bool)

(assert (=> bs!573369 m!4185653))

(assert (=> bs!573369 m!4185109))

(assert (=> bm!266170 d!1079258))

(declare-fun d!1079260 () Bool)

(assert (=> d!1079260 (= (inv!52258 (tag!6630 (rule!8664 token!511))) (= (mod (str.len (value!186728 (tag!6630 (rule!8664 token!511)))) 2) 0))))

(assert (=> b!3675562 d!1079260))

(declare-fun d!1079262 () Bool)

(declare-fun res!1493293 () Bool)

(declare-fun e!2276268 () Bool)

(assert (=> d!1079262 (=> (not res!1493293) (not e!2276268))))

(assert (=> d!1079262 (= res!1493293 (semiInverseModEq!2488 (toChars!7989 (transformation!5834 (rule!8664 token!511))) (toValue!8130 (transformation!5834 (rule!8664 token!511)))))))

(assert (=> d!1079262 (= (inv!52261 (transformation!5834 (rule!8664 token!511))) e!2276268)))

(declare-fun b!3676069 () Bool)

(assert (=> b!3676069 (= e!2276268 (equivClasses!2387 (toChars!7989 (transformation!5834 (rule!8664 token!511))) (toValue!8130 (transformation!5834 (rule!8664 token!511)))))))

(assert (= (and d!1079262 res!1493293) b!3676069))

(declare-fun m!4185655 () Bool)

(assert (=> d!1079262 m!4185655))

(declare-fun m!4185657 () Bool)

(assert (=> b!3676069 m!4185657))

(assert (=> b!3675562 d!1079262))

(assert (=> bm!266172 d!1079230))

(declare-fun d!1079264 () Bool)

(declare-fun lt!1283371 () Bool)

(assert (=> d!1079264 (= lt!1283371 (select (content!5618 call!266175) lt!1283133))))

(declare-fun e!2276269 () Bool)

(assert (=> d!1079264 (= lt!1283371 e!2276269)))

(declare-fun res!1493295 () Bool)

(assert (=> d!1079264 (=> (not res!1493295) (not e!2276269))))

(assert (=> d!1079264 (= res!1493295 ((_ is Cons!38770) call!266175))))

(assert (=> d!1079264 (= (contains!7735 call!266175 lt!1283133) lt!1283371)))

(declare-fun b!3676070 () Bool)

(declare-fun e!2276270 () Bool)

(assert (=> b!3676070 (= e!2276269 e!2276270)))

(declare-fun res!1493294 () Bool)

(assert (=> b!3676070 (=> res!1493294 e!2276270)))

(assert (=> b!3676070 (= res!1493294 (= (h!44190 call!266175) lt!1283133))))

(declare-fun b!3676071 () Bool)

(assert (=> b!3676071 (= e!2276270 (contains!7735 (t!300089 call!266175) lt!1283133))))

(assert (= (and d!1079264 res!1493295) b!3676070))

(assert (= (and b!3676070 (not res!1493294)) b!3676071))

(declare-fun m!4185659 () Bool)

(assert (=> d!1079264 m!4185659))

(declare-fun m!4185661 () Bool)

(assert (=> d!1079264 m!4185661))

(declare-fun m!4185663 () Bool)

(assert (=> b!3676071 m!4185663))

(assert (=> bm!266173 d!1079264))

(declare-fun d!1079266 () Bool)

(assert (=> d!1079266 (= (isEmpty!23018 lt!1283106) ((_ is Nil!38770) lt!1283106))))

(assert (=> b!3675598 d!1079266))

(declare-fun b!3676072 () Bool)

(declare-fun e!2276274 () Bool)

(assert (=> b!3676072 (= e!2276274 (nullable!3688 (regex!5834 rule!403)))))

(declare-fun b!3676073 () Bool)

(declare-fun e!2276277 () Bool)

(declare-fun e!2276276 () Bool)

(assert (=> b!3676073 (= e!2276277 e!2276276)))

(declare-fun res!1493298 () Bool)

(assert (=> b!3676073 (=> res!1493298 e!2276276)))

(declare-fun call!266211 () Bool)

(assert (=> b!3676073 (= res!1493298 call!266211)))

(declare-fun bm!266206 () Bool)

(assert (=> bm!266206 (= call!266211 (isEmpty!23018 lt!1283106))))

(declare-fun b!3676074 () Bool)

(declare-fun e!2276271 () Bool)

(assert (=> b!3676074 (= e!2276271 e!2276277)))

(declare-fun res!1493296 () Bool)

(assert (=> b!3676074 (=> (not res!1493296) (not e!2276277))))

(declare-fun lt!1283372 () Bool)

(assert (=> b!3676074 (= res!1493296 (not lt!1283372))))

(declare-fun b!3676075 () Bool)

(assert (=> b!3676075 (= e!2276276 (not (= (head!7880 lt!1283106) (c!635630 (regex!5834 rule!403)))))))

(declare-fun b!3676076 () Bool)

(assert (=> b!3676076 (= e!2276274 (matchR!5162 (derivativeStep!3237 (regex!5834 rule!403) (head!7880 lt!1283106)) (tail!5686 lt!1283106)))))

(declare-fun b!3676077 () Bool)

(declare-fun res!1493297 () Bool)

(declare-fun e!2276272 () Bool)

(assert (=> b!3676077 (=> (not res!1493297) (not e!2276272))))

(assert (=> b!3676077 (= res!1493297 (not call!266211))))

(declare-fun b!3676078 () Bool)

(declare-fun res!1493303 () Bool)

(assert (=> b!3676078 (=> res!1493303 e!2276271)))

(assert (=> b!3676078 (= res!1493303 (not ((_ is ElementMatch!10593) (regex!5834 rule!403))))))

(declare-fun e!2276273 () Bool)

(assert (=> b!3676078 (= e!2276273 e!2276271)))

(declare-fun d!1079268 () Bool)

(declare-fun e!2276275 () Bool)

(assert (=> d!1079268 e!2276275))

(declare-fun c!635738 () Bool)

(assert (=> d!1079268 (= c!635738 ((_ is EmptyExpr!10593) (regex!5834 rule!403)))))

(assert (=> d!1079268 (= lt!1283372 e!2276274)))

(declare-fun c!635736 () Bool)

(assert (=> d!1079268 (= c!635736 (isEmpty!23018 lt!1283106))))

(assert (=> d!1079268 (validRegex!4850 (regex!5834 rule!403))))

(assert (=> d!1079268 (= (matchR!5162 (regex!5834 rule!403) lt!1283106) lt!1283372)))

(declare-fun b!3676079 () Bool)

(assert (=> b!3676079 (= e!2276273 (not lt!1283372))))

(declare-fun b!3676080 () Bool)

(assert (=> b!3676080 (= e!2276275 e!2276273)))

(declare-fun c!635737 () Bool)

(assert (=> b!3676080 (= c!635737 ((_ is EmptyLang!10593) (regex!5834 rule!403)))))

(declare-fun b!3676081 () Bool)

(declare-fun res!1493301 () Bool)

(assert (=> b!3676081 (=> res!1493301 e!2276271)))

(assert (=> b!3676081 (= res!1493301 e!2276272)))

(declare-fun res!1493300 () Bool)

(assert (=> b!3676081 (=> (not res!1493300) (not e!2276272))))

(assert (=> b!3676081 (= res!1493300 lt!1283372)))

(declare-fun b!3676082 () Bool)

(declare-fun res!1493302 () Bool)

(assert (=> b!3676082 (=> (not res!1493302) (not e!2276272))))

(assert (=> b!3676082 (= res!1493302 (isEmpty!23018 (tail!5686 lt!1283106)))))

(declare-fun b!3676083 () Bool)

(assert (=> b!3676083 (= e!2276272 (= (head!7880 lt!1283106) (c!635630 (regex!5834 rule!403))))))

(declare-fun b!3676084 () Bool)

(assert (=> b!3676084 (= e!2276275 (= lt!1283372 call!266211))))

(declare-fun b!3676085 () Bool)

(declare-fun res!1493299 () Bool)

(assert (=> b!3676085 (=> res!1493299 e!2276276)))

(assert (=> b!3676085 (= res!1493299 (not (isEmpty!23018 (tail!5686 lt!1283106))))))

(assert (= (and d!1079268 c!635736) b!3676072))

(assert (= (and d!1079268 (not c!635736)) b!3676076))

(assert (= (and d!1079268 c!635738) b!3676084))

(assert (= (and d!1079268 (not c!635738)) b!3676080))

(assert (= (and b!3676080 c!635737) b!3676079))

(assert (= (and b!3676080 (not c!635737)) b!3676078))

(assert (= (and b!3676078 (not res!1493303)) b!3676081))

(assert (= (and b!3676081 res!1493300) b!3676077))

(assert (= (and b!3676077 res!1493297) b!3676082))

(assert (= (and b!3676082 res!1493302) b!3676083))

(assert (= (and b!3676081 (not res!1493301)) b!3676074))

(assert (= (and b!3676074 res!1493296) b!3676073))

(assert (= (and b!3676073 (not res!1493298)) b!3676085))

(assert (= (and b!3676085 (not res!1493299)) b!3676075))

(assert (= (or b!3676084 b!3676073 b!3676077) bm!266206))

(declare-fun m!4185665 () Bool)

(assert (=> b!3676072 m!4185665))

(assert (=> b!3676082 m!4185541))

(assert (=> b!3676082 m!4185541))

(assert (=> b!3676082 m!4185545))

(assert (=> b!3676075 m!4185547))

(assert (=> d!1079268 m!4185069))

(assert (=> d!1079268 m!4185161))

(assert (=> b!3676076 m!4185547))

(assert (=> b!3676076 m!4185547))

(declare-fun m!4185667 () Bool)

(assert (=> b!3676076 m!4185667))

(assert (=> b!3676076 m!4185541))

(assert (=> b!3676076 m!4185667))

(assert (=> b!3676076 m!4185541))

(declare-fun m!4185669 () Bool)

(assert (=> b!3676076 m!4185669))

(assert (=> bm!266206 m!4185069))

(assert (=> b!3676083 m!4185547))

(assert (=> b!3676085 m!4185541))

(assert (=> b!3676085 m!4185541))

(assert (=> b!3676085 m!4185545))

(assert (=> b!3675564 d!1079268))

(declare-fun d!1079270 () Bool)

(declare-fun res!1493308 () Bool)

(declare-fun e!2276280 () Bool)

(assert (=> d!1079270 (=> (not res!1493308) (not e!2276280))))

(assert (=> d!1079270 (= res!1493308 (validRegex!4850 (regex!5834 rule!403)))))

(assert (=> d!1079270 (= (ruleValid!2098 thiss!23823 rule!403) e!2276280)))

(declare-fun b!3676090 () Bool)

(declare-fun res!1493309 () Bool)

(assert (=> b!3676090 (=> (not res!1493309) (not e!2276280))))

(assert (=> b!3676090 (= res!1493309 (not (nullable!3688 (regex!5834 rule!403))))))

(declare-fun b!3676091 () Bool)

(assert (=> b!3676091 (= e!2276280 (not (= (tag!6630 rule!403) (String!43655 ""))))))

(assert (= (and d!1079270 res!1493308) b!3676090))

(assert (= (and b!3676090 res!1493309) b!3676091))

(assert (=> d!1079270 m!4185161))

(assert (=> b!3676090 m!4185665))

(assert (=> b!3675564 d!1079270))

(declare-fun d!1079272 () Bool)

(assert (=> d!1079272 (ruleValid!2098 thiss!23823 rule!403)))

(declare-fun lt!1283375 () Unit!56583)

(declare-fun choose!21919 (LexerInterface!5423 Rule!11468 List!38895) Unit!56583)

(assert (=> d!1079272 (= lt!1283375 (choose!21919 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1079272 (contains!7736 rules!3307 rule!403)))

(assert (=> d!1079272 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1252 thiss!23823 rule!403 rules!3307) lt!1283375)))

(declare-fun bs!573370 () Bool)

(assert (= bs!573370 d!1079272))

(assert (=> bs!573370 m!4184915))

(declare-fun m!4185671 () Bool)

(assert (=> bs!573370 m!4185671))

(assert (=> bs!573370 m!4184923))

(assert (=> b!3675564 d!1079272))

(declare-fun d!1079274 () Bool)

(assert (=> d!1079274 (= (get!12824 lt!1283131) (v!38220 lt!1283131))))

(assert (=> b!3675582 d!1079274))

(assert (=> b!3675582 d!1079138))

(declare-fun b!3676100 () Bool)

(declare-fun e!2276286 () List!38894)

(assert (=> b!3676100 (= e!2276286 (_2!22452 lt!1283115))))

(declare-fun b!3676102 () Bool)

(declare-fun res!1493315 () Bool)

(declare-fun e!2276285 () Bool)

(assert (=> b!3676102 (=> (not res!1493315) (not e!2276285))))

(declare-fun lt!1283378 () List!38894)

(assert (=> b!3676102 (= res!1493315 (= (size!29641 lt!1283378) (+ (size!29641 lt!1283099) (size!29641 (_2!22452 lt!1283115)))))))

(declare-fun d!1079276 () Bool)

(assert (=> d!1079276 e!2276285))

(declare-fun res!1493314 () Bool)

(assert (=> d!1079276 (=> (not res!1493314) (not e!2276285))))

(assert (=> d!1079276 (= res!1493314 (= (content!5618 lt!1283378) ((_ map or) (content!5618 lt!1283099) (content!5618 (_2!22452 lt!1283115)))))))

(assert (=> d!1079276 (= lt!1283378 e!2276286)))

(declare-fun c!635741 () Bool)

(assert (=> d!1079276 (= c!635741 ((_ is Nil!38770) lt!1283099))))

(assert (=> d!1079276 (= (++!9650 lt!1283099 (_2!22452 lt!1283115)) lt!1283378)))

(declare-fun b!3676101 () Bool)

(assert (=> b!3676101 (= e!2276286 (Cons!38770 (h!44190 lt!1283099) (++!9650 (t!300089 lt!1283099) (_2!22452 lt!1283115))))))

(declare-fun b!3676103 () Bool)

(assert (=> b!3676103 (= e!2276285 (or (not (= (_2!22452 lt!1283115) Nil!38770)) (= lt!1283378 lt!1283099)))))

(assert (= (and d!1079276 c!635741) b!3676100))

(assert (= (and d!1079276 (not c!635741)) b!3676101))

(assert (= (and d!1079276 res!1493314) b!3676102))

(assert (= (and b!3676102 res!1493315) b!3676103))

(declare-fun m!4185673 () Bool)

(assert (=> b!3676102 m!4185673))

(assert (=> b!3676102 m!4184951))

(declare-fun m!4185675 () Bool)

(assert (=> b!3676102 m!4185675))

(declare-fun m!4185677 () Bool)

(assert (=> d!1079276 m!4185677))

(assert (=> d!1079276 m!4185633))

(declare-fun m!4185679 () Bool)

(assert (=> d!1079276 m!4185679))

(declare-fun m!4185681 () Bool)

(assert (=> b!3676101 m!4185681))

(assert (=> b!3675582 d!1079276))

(declare-fun b!3676115 () Bool)

(declare-fun e!2276295 () Bool)

(assert (=> b!3676115 (= e!2276295 (>= (size!29641 lt!1283138) (size!29641 lt!1283099)))))

(declare-fun b!3676114 () Bool)

(declare-fun e!2276293 () Bool)

(assert (=> b!3676114 (= e!2276293 (isPrefix!3197 (tail!5686 lt!1283099) (tail!5686 lt!1283138)))))

(declare-fun b!3676112 () Bool)

(declare-fun e!2276294 () Bool)

(assert (=> b!3676112 (= e!2276294 e!2276293)))

(declare-fun res!1493327 () Bool)

(assert (=> b!3676112 (=> (not res!1493327) (not e!2276293))))

(assert (=> b!3676112 (= res!1493327 (not ((_ is Nil!38770) lt!1283138)))))

(declare-fun b!3676113 () Bool)

(declare-fun res!1493324 () Bool)

(assert (=> b!3676113 (=> (not res!1493324) (not e!2276293))))

(assert (=> b!3676113 (= res!1493324 (= (head!7880 lt!1283099) (head!7880 lt!1283138)))))

(declare-fun d!1079278 () Bool)

(assert (=> d!1079278 e!2276295))

(declare-fun res!1493325 () Bool)

(assert (=> d!1079278 (=> res!1493325 e!2276295)))

(declare-fun lt!1283381 () Bool)

(assert (=> d!1079278 (= res!1493325 (not lt!1283381))))

(assert (=> d!1079278 (= lt!1283381 e!2276294)))

(declare-fun res!1493326 () Bool)

(assert (=> d!1079278 (=> res!1493326 e!2276294)))

(assert (=> d!1079278 (= res!1493326 ((_ is Nil!38770) lt!1283099))))

(assert (=> d!1079278 (= (isPrefix!3197 lt!1283099 lt!1283138) lt!1283381)))

(assert (= (and d!1079278 (not res!1493326)) b!3676112))

(assert (= (and b!3676112 res!1493327) b!3676113))

(assert (= (and b!3676113 res!1493324) b!3676114))

(assert (= (and d!1079278 (not res!1493325)) b!3676115))

(assert (=> b!3676115 m!4185587))

(assert (=> b!3676115 m!4184951))

(assert (=> b!3676114 m!4185103))

(assert (=> b!3676114 m!4185625))

(assert (=> b!3676114 m!4185103))

(assert (=> b!3676114 m!4185625))

(declare-fun m!4185683 () Bool)

(assert (=> b!3676114 m!4185683))

(assert (=> b!3676113 m!4185033))

(declare-fun m!4185685 () Bool)

(assert (=> b!3676113 m!4185685))

(assert (=> b!3675582 d!1079278))

(declare-fun d!1079280 () Bool)

(assert (=> d!1079280 (= (list!14404 lt!1283139) (list!14406 (c!635631 lt!1283139)))))

(declare-fun bs!573371 () Bool)

(assert (= bs!573371 d!1079280))

(declare-fun m!4185687 () Bool)

(assert (=> bs!573371 m!4185687))

(assert (=> b!3675582 d!1079280))

(declare-fun d!1079282 () Bool)

(declare-fun e!2276310 () Bool)

(assert (=> d!1079282 e!2276310))

(declare-fun res!1493347 () Bool)

(assert (=> d!1079282 (=> res!1493347 e!2276310)))

(declare-fun lt!1283395 () Option!8297)

(assert (=> d!1079282 (= res!1493347 (isEmpty!23022 lt!1283395))))

(declare-fun e!2276309 () Option!8297)

(assert (=> d!1079282 (= lt!1283395 e!2276309)))

(declare-fun c!635744 () Bool)

(assert (=> d!1079282 (= c!635744 (and ((_ is Cons!38771) rules!3307) ((_ is Nil!38771) (t!300090 rules!3307))))))

(declare-fun lt!1283396 () Unit!56583)

(declare-fun lt!1283397 () Unit!56583)

(assert (=> d!1079282 (= lt!1283396 lt!1283397)))

(assert (=> d!1079282 (isPrefix!3197 lt!1283138 lt!1283138)))

(declare-fun lemmaIsPrefixRefl!2012 (List!38894 List!38894) Unit!56583)

(assert (=> d!1079282 (= lt!1283397 (lemmaIsPrefixRefl!2012 lt!1283138 lt!1283138))))

(declare-fun rulesValidInductive!2075 (LexerInterface!5423 List!38895) Bool)

(assert (=> d!1079282 (rulesValidInductive!2075 thiss!23823 rules!3307)))

(assert (=> d!1079282 (= (maxPrefix!2957 thiss!23823 rules!3307 lt!1283138) lt!1283395)))

(declare-fun b!3676142 () Bool)

(declare-fun res!1493345 () Bool)

(declare-fun e!2276311 () Bool)

(assert (=> b!3676142 (=> (not res!1493345) (not e!2276311))))

(assert (=> b!3676142 (= res!1493345 (= (list!14404 (charsOf!3848 (_1!22452 (get!12824 lt!1283395)))) (originalCharacters!6548 (_1!22452 (get!12824 lt!1283395)))))))

(declare-fun b!3676143 () Bool)

(declare-fun res!1493343 () Bool)

(assert (=> b!3676143 (=> (not res!1493343) (not e!2276311))))

(assert (=> b!3676143 (= res!1493343 (= (++!9650 (list!14404 (charsOf!3848 (_1!22452 (get!12824 lt!1283395)))) (_2!22452 (get!12824 lt!1283395))) lt!1283138))))

(declare-fun b!3676144 () Bool)

(declare-fun res!1493346 () Bool)

(assert (=> b!3676144 (=> (not res!1493346) (not e!2276311))))

(assert (=> b!3676144 (= res!1493346 (matchR!5162 (regex!5834 (rule!8664 (_1!22452 (get!12824 lt!1283395)))) (list!14404 (charsOf!3848 (_1!22452 (get!12824 lt!1283395))))))))

(declare-fun bm!266209 () Bool)

(declare-fun call!266214 () Option!8297)

(assert (=> bm!266209 (= call!266214 (maxPrefixOneRule!2095 thiss!23823 (h!44191 rules!3307) lt!1283138))))

(declare-fun b!3676145 () Bool)

(declare-fun res!1493348 () Bool)

(assert (=> b!3676145 (=> (not res!1493348) (not e!2276311))))

(assert (=> b!3676145 (= res!1493348 (= (value!186729 (_1!22452 (get!12824 lt!1283395))) (apply!9336 (transformation!5834 (rule!8664 (_1!22452 (get!12824 lt!1283395)))) (seqFromList!4383 (originalCharacters!6548 (_1!22452 (get!12824 lt!1283395)))))))))

(declare-fun b!3676146 () Bool)

(assert (=> b!3676146 (= e!2276311 (contains!7736 rules!3307 (rule!8664 (_1!22452 (get!12824 lt!1283395)))))))

(declare-fun b!3676147 () Bool)

(declare-fun lt!1283393 () Option!8297)

(declare-fun lt!1283394 () Option!8297)

(assert (=> b!3676147 (= e!2276309 (ite (and ((_ is None!8296) lt!1283393) ((_ is None!8296) lt!1283394)) None!8296 (ite ((_ is None!8296) lt!1283394) lt!1283393 (ite ((_ is None!8296) lt!1283393) lt!1283394 (ite (>= (size!29639 (_1!22452 (v!38220 lt!1283393))) (size!29639 (_1!22452 (v!38220 lt!1283394)))) lt!1283393 lt!1283394)))))))

(assert (=> b!3676147 (= lt!1283393 call!266214)))

(assert (=> b!3676147 (= lt!1283394 (maxPrefix!2957 thiss!23823 (t!300090 rules!3307) lt!1283138))))

(declare-fun b!3676148 () Bool)

(assert (=> b!3676148 (= e!2276309 call!266214)))

(declare-fun b!3676149 () Bool)

(declare-fun res!1493344 () Bool)

(assert (=> b!3676149 (=> (not res!1493344) (not e!2276311))))

(assert (=> b!3676149 (= res!1493344 (< (size!29641 (_2!22452 (get!12824 lt!1283395))) (size!29641 lt!1283138)))))

(declare-fun b!3676150 () Bool)

(assert (=> b!3676150 (= e!2276310 e!2276311)))

(declare-fun res!1493342 () Bool)

(assert (=> b!3676150 (=> (not res!1493342) (not e!2276311))))

(assert (=> b!3676150 (= res!1493342 (isDefined!6529 lt!1283395))))

(assert (= (and d!1079282 c!635744) b!3676148))

(assert (= (and d!1079282 (not c!635744)) b!3676147))

(assert (= (or b!3676148 b!3676147) bm!266209))

(assert (= (and d!1079282 (not res!1493347)) b!3676150))

(assert (= (and b!3676150 res!1493342) b!3676142))

(assert (= (and b!3676142 res!1493345) b!3676149))

(assert (= (and b!3676149 res!1493344) b!3676143))

(assert (= (and b!3676143 res!1493343) b!3676145))

(assert (= (and b!3676145 res!1493348) b!3676144))

(assert (= (and b!3676144 res!1493346) b!3676146))

(declare-fun m!4185703 () Bool)

(assert (=> b!3676150 m!4185703))

(declare-fun m!4185705 () Bool)

(assert (=> b!3676145 m!4185705))

(declare-fun m!4185707 () Bool)

(assert (=> b!3676145 m!4185707))

(assert (=> b!3676145 m!4185707))

(declare-fun m!4185709 () Bool)

(assert (=> b!3676145 m!4185709))

(declare-fun m!4185711 () Bool)

(assert (=> d!1079282 m!4185711))

(declare-fun m!4185713 () Bool)

(assert (=> d!1079282 m!4185713))

(declare-fun m!4185715 () Bool)

(assert (=> d!1079282 m!4185715))

(declare-fun m!4185717 () Bool)

(assert (=> d!1079282 m!4185717))

(declare-fun m!4185719 () Bool)

(assert (=> b!3676147 m!4185719))

(assert (=> b!3676143 m!4185705))

(declare-fun m!4185721 () Bool)

(assert (=> b!3676143 m!4185721))

(assert (=> b!3676143 m!4185721))

(declare-fun m!4185723 () Bool)

(assert (=> b!3676143 m!4185723))

(assert (=> b!3676143 m!4185723))

(declare-fun m!4185725 () Bool)

(assert (=> b!3676143 m!4185725))

(assert (=> b!3676144 m!4185705))

(assert (=> b!3676144 m!4185721))

(assert (=> b!3676144 m!4185721))

(assert (=> b!3676144 m!4185723))

(assert (=> b!3676144 m!4185723))

(declare-fun m!4185727 () Bool)

(assert (=> b!3676144 m!4185727))

(assert (=> b!3676142 m!4185705))

(assert (=> b!3676142 m!4185721))

(assert (=> b!3676142 m!4185721))

(assert (=> b!3676142 m!4185723))

(declare-fun m!4185729 () Bool)

(assert (=> bm!266209 m!4185729))

(assert (=> b!3676146 m!4185705))

(declare-fun m!4185731 () Bool)

(assert (=> b!3676146 m!4185731))

(assert (=> b!3676149 m!4185705))

(declare-fun m!4185733 () Bool)

(assert (=> b!3676149 m!4185733))

(assert (=> b!3676149 m!4185587))

(assert (=> b!3675582 d!1079282))

(declare-fun b!3676170 () Bool)

(declare-fun lt!1283412 () Unit!56583)

(declare-fun lt!1283411 () Unit!56583)

(assert (=> b!3676170 (= lt!1283412 lt!1283411)))

(assert (=> b!3676170 (rulesInvariant!4820 thiss!23823 (t!300090 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!619 (LexerInterface!5423 Rule!11468 List!38895) Unit!56583)

(assert (=> b!3676170 (= lt!1283411 (lemmaInvariantOnRulesThenOnTail!619 thiss!23823 (h!44191 rules!3307) (t!300090 rules!3307)))))

(declare-fun e!2276328 () Option!8296)

(assert (=> b!3676170 (= e!2276328 (getRuleFromTag!1438 thiss!23823 (t!300090 rules!3307) (tag!6630 (rule!8664 (_1!22452 lt!1283115)))))))

(declare-fun b!3676171 () Bool)

(declare-fun e!2276326 () Option!8296)

(assert (=> b!3676171 (= e!2276326 (Some!8295 (h!44191 rules!3307)))))

(declare-fun b!3676172 () Bool)

(assert (=> b!3676172 (= e!2276328 None!8295)))

(declare-fun b!3676173 () Bool)

(assert (=> b!3676173 (= e!2276326 e!2276328)))

(declare-fun c!635749 () Bool)

(assert (=> b!3676173 (= c!635749 (and ((_ is Cons!38771) rules!3307) (not (= (tag!6630 (h!44191 rules!3307)) (tag!6630 (rule!8664 (_1!22452 lt!1283115)))))))))

(declare-fun d!1079286 () Bool)

(declare-fun e!2276329 () Bool)

(assert (=> d!1079286 e!2276329))

(declare-fun res!1493356 () Bool)

(assert (=> d!1079286 (=> res!1493356 e!2276329)))

(declare-fun lt!1283410 () Option!8296)

(declare-fun isEmpty!23023 (Option!8296) Bool)

(assert (=> d!1079286 (= res!1493356 (isEmpty!23023 lt!1283410))))

(assert (=> d!1079286 (= lt!1283410 e!2276326)))

(declare-fun c!635750 () Bool)

(assert (=> d!1079286 (= c!635750 (and ((_ is Cons!38771) rules!3307) (= (tag!6630 (h!44191 rules!3307)) (tag!6630 (rule!8664 (_1!22452 lt!1283115))))))))

(assert (=> d!1079286 (rulesInvariant!4820 thiss!23823 rules!3307)))

(assert (=> d!1079286 (= (getRuleFromTag!1438 thiss!23823 rules!3307 (tag!6630 (rule!8664 (_1!22452 lt!1283115)))) lt!1283410)))

(declare-fun b!3676174 () Bool)

(declare-fun e!2276327 () Bool)

(assert (=> b!3676174 (= e!2276329 e!2276327)))

(declare-fun res!1493355 () Bool)

(assert (=> b!3676174 (=> (not res!1493355) (not e!2276327))))

(assert (=> b!3676174 (= res!1493355 (contains!7736 rules!3307 (get!12823 lt!1283410)))))

(declare-fun b!3676175 () Bool)

(assert (=> b!3676175 (= e!2276327 (= (tag!6630 (get!12823 lt!1283410)) (tag!6630 (rule!8664 (_1!22452 lt!1283115)))))))

(assert (= (and d!1079286 c!635750) b!3676171))

(assert (= (and d!1079286 (not c!635750)) b!3676173))

(assert (= (and b!3676173 c!635749) b!3676170))

(assert (= (and b!3676173 (not c!635749)) b!3676172))

(assert (= (and d!1079286 (not res!1493356)) b!3676174))

(assert (= (and b!3676174 res!1493355) b!3676175))

(declare-fun m!4185751 () Bool)

(assert (=> b!3676170 m!4185751))

(declare-fun m!4185753 () Bool)

(assert (=> b!3676170 m!4185753))

(declare-fun m!4185755 () Bool)

(assert (=> b!3676170 m!4185755))

(declare-fun m!4185757 () Bool)

(assert (=> d!1079286 m!4185757))

(assert (=> d!1079286 m!4184959))

(declare-fun m!4185759 () Bool)

(assert (=> b!3676174 m!4185759))

(assert (=> b!3676174 m!4185759))

(declare-fun m!4185761 () Bool)

(assert (=> b!3676174 m!4185761))

(assert (=> b!3676175 m!4185759))

(assert (=> b!3675582 d!1079286))

(declare-fun b!3676179 () Bool)

(declare-fun e!2276332 () Bool)

(assert (=> b!3676179 (= e!2276332 (>= (size!29641 (++!9650 lt!1283099 (_2!22452 lt!1283115))) (size!29641 lt!1283099)))))

(declare-fun b!3676178 () Bool)

(declare-fun e!2276330 () Bool)

(assert (=> b!3676178 (= e!2276330 (isPrefix!3197 (tail!5686 lt!1283099) (tail!5686 (++!9650 lt!1283099 (_2!22452 lt!1283115)))))))

(declare-fun b!3676176 () Bool)

(declare-fun e!2276331 () Bool)

(assert (=> b!3676176 (= e!2276331 e!2276330)))

(declare-fun res!1493360 () Bool)

(assert (=> b!3676176 (=> (not res!1493360) (not e!2276330))))

(assert (=> b!3676176 (= res!1493360 (not ((_ is Nil!38770) (++!9650 lt!1283099 (_2!22452 lt!1283115)))))))

(declare-fun b!3676177 () Bool)

(declare-fun res!1493357 () Bool)

(assert (=> b!3676177 (=> (not res!1493357) (not e!2276330))))

(assert (=> b!3676177 (= res!1493357 (= (head!7880 lt!1283099) (head!7880 (++!9650 lt!1283099 (_2!22452 lt!1283115)))))))

(declare-fun d!1079298 () Bool)

(assert (=> d!1079298 e!2276332))

(declare-fun res!1493358 () Bool)

(assert (=> d!1079298 (=> res!1493358 e!2276332)))

(declare-fun lt!1283413 () Bool)

(assert (=> d!1079298 (= res!1493358 (not lt!1283413))))

(assert (=> d!1079298 (= lt!1283413 e!2276331)))

(declare-fun res!1493359 () Bool)

(assert (=> d!1079298 (=> res!1493359 e!2276331)))

(assert (=> d!1079298 (= res!1493359 ((_ is Nil!38770) lt!1283099))))

(assert (=> d!1079298 (= (isPrefix!3197 lt!1283099 (++!9650 lt!1283099 (_2!22452 lt!1283115))) lt!1283413)))

(assert (= (and d!1079298 (not res!1493359)) b!3676176))

(assert (= (and b!3676176 res!1493360) b!3676177))

(assert (= (and b!3676177 res!1493357) b!3676178))

(assert (= (and d!1079298 (not res!1493358)) b!3676179))

(assert (=> b!3676179 m!4185001))

(declare-fun m!4185763 () Bool)

(assert (=> b!3676179 m!4185763))

(assert (=> b!3676179 m!4184951))

(assert (=> b!3676178 m!4185103))

(assert (=> b!3676178 m!4185001))

(declare-fun m!4185765 () Bool)

(assert (=> b!3676178 m!4185765))

(assert (=> b!3676178 m!4185103))

(assert (=> b!3676178 m!4185765))

(declare-fun m!4185767 () Bool)

(assert (=> b!3676178 m!4185767))

(assert (=> b!3676177 m!4185033))

(assert (=> b!3676177 m!4185001))

(declare-fun m!4185769 () Bool)

(assert (=> b!3676177 m!4185769))

(assert (=> b!3675582 d!1079298))

(declare-fun d!1079300 () Bool)

(assert (=> d!1079300 (isPrefix!3197 lt!1283106 (++!9650 lt!1283106 suffix!1395))))

(declare-fun lt!1283416 () Unit!56583)

(declare-fun choose!21922 (List!38894 List!38894) Unit!56583)

(assert (=> d!1079300 (= lt!1283416 (choose!21922 lt!1283106 suffix!1395))))

(assert (=> d!1079300 (= (lemmaConcatTwoListThenFirstIsPrefix!2116 lt!1283106 suffix!1395) lt!1283416)))

(declare-fun bs!573375 () Bool)

(assert (= bs!573375 d!1079300))

(assert (=> bs!573375 m!4185013))

(assert (=> bs!573375 m!4185013))

(declare-fun m!4185771 () Bool)

(assert (=> bs!573375 m!4185771))

(declare-fun m!4185773 () Bool)

(assert (=> bs!573375 m!4185773))

(assert (=> b!3675582 d!1079300))

(declare-fun d!1079302 () Bool)

(declare-fun e!2276346 () Bool)

(assert (=> d!1079302 e!2276346))

(declare-fun res!1493370 () Bool)

(assert (=> d!1079302 (=> (not res!1493370) (not e!2276346))))

(assert (=> d!1079302 (= res!1493370 (isDefined!6528 (getRuleFromTag!1438 thiss!23823 rules!3307 (tag!6630 (rule!8664 (_1!22452 lt!1283115))))))))

(declare-fun lt!1283427 () Unit!56583)

(declare-fun choose!21923 (LexerInterface!5423 List!38895 List!38894 Token!11034) Unit!56583)

(assert (=> d!1079302 (= lt!1283427 (choose!21923 thiss!23823 rules!3307 lt!1283138 (_1!22452 lt!1283115)))))

(assert (=> d!1079302 (rulesInvariant!4820 thiss!23823 rules!3307)))

(assert (=> d!1079302 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1438 thiss!23823 rules!3307 lt!1283138 (_1!22452 lt!1283115)) lt!1283427)))

(declare-fun b!3676201 () Bool)

(declare-fun res!1493371 () Bool)

(assert (=> b!3676201 (=> (not res!1493371) (not e!2276346))))

(assert (=> b!3676201 (= res!1493371 (matchR!5162 (regex!5834 (get!12823 (getRuleFromTag!1438 thiss!23823 rules!3307 (tag!6630 (rule!8664 (_1!22452 lt!1283115)))))) (list!14404 (charsOf!3848 (_1!22452 lt!1283115)))))))

(declare-fun b!3676202 () Bool)

(assert (=> b!3676202 (= e!2276346 (= (rule!8664 (_1!22452 lt!1283115)) (get!12823 (getRuleFromTag!1438 thiss!23823 rules!3307 (tag!6630 (rule!8664 (_1!22452 lt!1283115)))))))))

(assert (= (and d!1079302 res!1493370) b!3676201))

(assert (= (and b!3676201 res!1493371) b!3676202))

(assert (=> d!1079302 m!4185017))

(assert (=> d!1079302 m!4185017))

(declare-fun m!4185795 () Bool)

(assert (=> d!1079302 m!4185795))

(declare-fun m!4185797 () Bool)

(assert (=> d!1079302 m!4185797))

(assert (=> d!1079302 m!4184959))

(assert (=> b!3676201 m!4184929))

(assert (=> b!3676201 m!4185017))

(declare-fun m!4185799 () Bool)

(assert (=> b!3676201 m!4185799))

(assert (=> b!3676201 m!4184929))

(assert (=> b!3676201 m!4184931))

(assert (=> b!3676201 m!4185017))

(assert (=> b!3676201 m!4184931))

(declare-fun m!4185809 () Bool)

(assert (=> b!3676201 m!4185809))

(assert (=> b!3676202 m!4185017))

(assert (=> b!3676202 m!4185017))

(assert (=> b!3676202 m!4185799))

(assert (=> b!3675582 d!1079302))

(declare-fun b!3676207 () Bool)

(declare-fun e!2276350 () List!38894)

(assert (=> b!3676207 (= e!2276350 suffix!1395)))

(declare-fun b!3676209 () Bool)

(declare-fun res!1493375 () Bool)

(declare-fun e!2276349 () Bool)

(assert (=> b!3676209 (=> (not res!1493375) (not e!2276349))))

(declare-fun lt!1283430 () List!38894)

(assert (=> b!3676209 (= res!1493375 (= (size!29641 lt!1283430) (+ (size!29641 lt!1283106) (size!29641 suffix!1395))))))

(declare-fun d!1079316 () Bool)

(assert (=> d!1079316 e!2276349))

(declare-fun res!1493374 () Bool)

(assert (=> d!1079316 (=> (not res!1493374) (not e!2276349))))

(assert (=> d!1079316 (= res!1493374 (= (content!5618 lt!1283430) ((_ map or) (content!5618 lt!1283106) (content!5618 suffix!1395))))))

(assert (=> d!1079316 (= lt!1283430 e!2276350)))

(declare-fun c!635759 () Bool)

(assert (=> d!1079316 (= c!635759 ((_ is Nil!38770) lt!1283106))))

(assert (=> d!1079316 (= (++!9650 lt!1283106 suffix!1395) lt!1283430)))

(declare-fun b!3676208 () Bool)

(assert (=> b!3676208 (= e!2276350 (Cons!38770 (h!44190 lt!1283106) (++!9650 (t!300089 lt!1283106) suffix!1395)))))

(declare-fun b!3676210 () Bool)

(assert (=> b!3676210 (= e!2276349 (or (not (= suffix!1395 Nil!38770)) (= lt!1283430 lt!1283106)))))

(assert (= (and d!1079316 c!635759) b!3676207))

(assert (= (and d!1079316 (not c!635759)) b!3676208))

(assert (= (and d!1079316 res!1493374) b!3676209))

(assert (= (and b!3676209 res!1493375) b!3676210))

(declare-fun m!4185817 () Bool)

(assert (=> b!3676209 m!4185817))

(assert (=> b!3676209 m!4185539))

(declare-fun m!4185819 () Bool)

(assert (=> b!3676209 m!4185819))

(declare-fun m!4185821 () Bool)

(assert (=> d!1079316 m!4185821))

(declare-fun m!4185823 () Bool)

(assert (=> d!1079316 m!4185823))

(declare-fun m!4185825 () Bool)

(assert (=> d!1079316 m!4185825))

(declare-fun m!4185827 () Bool)

(assert (=> b!3676208 m!4185827))

(assert (=> b!3675582 d!1079316))

(declare-fun d!1079322 () Bool)

(assert (=> d!1079322 (= (isDefined!6528 lt!1283112) (not (isEmpty!23023 lt!1283112)))))

(declare-fun bs!573380 () Bool)

(assert (= bs!573380 d!1079322))

(declare-fun m!4185833 () Bool)

(assert (=> bs!573380 m!4185833))

(assert (=> b!3675582 d!1079322))

(declare-fun b!3676371 () Bool)

(declare-fun e!2276440 () Bool)

(declare-fun lt!1283514 () Token!11034)

(assert (=> b!3676371 (= e!2276440 (= (rule!8664 lt!1283514) (get!12823 (getRuleFromTag!1438 thiss!23823 rules!3307 (tag!6630 (rule!8664 lt!1283514))))))))

(declare-fun d!1079326 () Bool)

(assert (=> d!1079326 (isDefined!6529 (maxPrefix!2957 thiss!23823 rules!3307 (++!9650 lt!1283106 suffix!1395)))))

(declare-fun lt!1283518 () Unit!56583)

(declare-fun e!2276439 () Unit!56583)

(assert (=> d!1079326 (= lt!1283518 e!2276439)))

(declare-fun c!635794 () Bool)

(assert (=> d!1079326 (= c!635794 (isEmpty!23022 (maxPrefix!2957 thiss!23823 rules!3307 (++!9650 lt!1283106 suffix!1395))))))

(declare-fun lt!1283519 () Unit!56583)

(declare-fun lt!1283508 () Unit!56583)

(assert (=> d!1079326 (= lt!1283519 lt!1283508)))

(assert (=> d!1079326 e!2276440))

(declare-fun res!1493427 () Bool)

(assert (=> d!1079326 (=> (not res!1493427) (not e!2276440))))

(assert (=> d!1079326 (= res!1493427 (isDefined!6528 (getRuleFromTag!1438 thiss!23823 rules!3307 (tag!6630 (rule!8664 lt!1283514)))))))

(assert (=> d!1079326 (= lt!1283508 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1438 thiss!23823 rules!3307 lt!1283106 lt!1283514))))

(declare-fun lt!1283509 () Unit!56583)

(declare-fun lt!1283520 () Unit!56583)

(assert (=> d!1079326 (= lt!1283509 lt!1283520)))

(declare-fun lt!1283521 () List!38894)

(assert (=> d!1079326 (isPrefix!3197 lt!1283521 (++!9650 lt!1283106 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!540 (List!38894 List!38894 List!38894) Unit!56583)

(assert (=> d!1079326 (= lt!1283520 (lemmaPrefixStaysPrefixWhenAddingToSuffix!540 lt!1283521 lt!1283106 suffix!1395))))

(assert (=> d!1079326 (= lt!1283521 (list!14404 (charsOf!3848 lt!1283514)))))

(declare-fun lt!1283513 () Unit!56583)

(declare-fun lt!1283511 () Unit!56583)

(assert (=> d!1079326 (= lt!1283513 lt!1283511)))

(declare-fun lt!1283507 () List!38894)

(declare-fun lt!1283506 () List!38894)

(assert (=> d!1079326 (isPrefix!3197 lt!1283507 (++!9650 lt!1283507 lt!1283506))))

(assert (=> d!1079326 (= lt!1283511 (lemmaConcatTwoListThenFirstIsPrefix!2116 lt!1283507 lt!1283506))))

(assert (=> d!1079326 (= lt!1283506 (_2!22452 (get!12824 (maxPrefix!2957 thiss!23823 rules!3307 lt!1283106))))))

(assert (=> d!1079326 (= lt!1283507 (list!14404 (charsOf!3848 lt!1283514)))))

(declare-datatypes ((List!38899 0))(
  ( (Nil!38775) (Cons!38775 (h!44195 Token!11034) (t!300214 List!38899)) )
))
(declare-fun head!7882 (List!38899) Token!11034)

(declare-datatypes ((IArray!23739 0))(
  ( (IArray!23740 (innerList!11927 List!38899)) )
))
(declare-datatypes ((Conc!11867 0))(
  ( (Node!11867 (left!30258 Conc!11867) (right!30588 Conc!11867) (csize!23964 Int) (cheight!12078 Int)) (Leaf!18395 (xs!15069 IArray!23739) (csize!23965 Int)) (Empty!11867) )
))
(declare-datatypes ((BalanceConc!23348 0))(
  ( (BalanceConc!23349 (c!635803 Conc!11867)) )
))
(declare-fun list!14408 (BalanceConc!23348) List!38899)

(declare-datatypes ((tuple2!38642 0))(
  ( (tuple2!38643 (_1!22455 BalanceConc!23348) (_2!22455 BalanceConc!23344)) )
))
(declare-fun lex!2572 (LexerInterface!5423 List!38895 BalanceConc!23344) tuple2!38642)

(assert (=> d!1079326 (= lt!1283514 (head!7882 (list!14408 (_1!22455 (lex!2572 thiss!23823 rules!3307 (seqFromList!4383 lt!1283106))))))))

(assert (=> d!1079326 (not (isEmpty!23019 rules!3307))))

(assert (=> d!1079326 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1101 thiss!23823 rules!3307 lt!1283106 suffix!1395) lt!1283518)))

(declare-fun b!3676370 () Bool)

(declare-fun res!1493426 () Bool)

(assert (=> b!3676370 (=> (not res!1493426) (not e!2276440))))

(assert (=> b!3676370 (= res!1493426 (matchR!5162 (regex!5834 (get!12823 (getRuleFromTag!1438 thiss!23823 rules!3307 (tag!6630 (rule!8664 lt!1283514))))) (list!14404 (charsOf!3848 lt!1283514))))))

(declare-fun b!3676373 () Bool)

(declare-fun Unit!56606 () Unit!56583)

(assert (=> b!3676373 (= e!2276439 Unit!56606)))

(declare-fun b!3676372 () Bool)

(declare-fun Unit!56607 () Unit!56583)

(assert (=> b!3676372 (= e!2276439 Unit!56607)))

(declare-fun lt!1283515 () List!38894)

(assert (=> b!3676372 (= lt!1283515 (++!9650 lt!1283106 suffix!1395))))

(declare-fun lt!1283516 () Unit!56583)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!576 (LexerInterface!5423 Rule!11468 List!38895 List!38894) Unit!56583)

(assert (=> b!3676372 (= lt!1283516 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!576 thiss!23823 (rule!8664 lt!1283514) rules!3307 lt!1283515))))

(assert (=> b!3676372 (isEmpty!23022 (maxPrefixOneRule!2095 thiss!23823 (rule!8664 lt!1283514) lt!1283515))))

(declare-fun lt!1283517 () Unit!56583)

(assert (=> b!3676372 (= lt!1283517 lt!1283516)))

(declare-fun lt!1283510 () List!38894)

(assert (=> b!3676372 (= lt!1283510 (list!14404 (charsOf!3848 lt!1283514)))))

(declare-fun lt!1283512 () Unit!56583)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!564 (LexerInterface!5423 Rule!11468 List!38894 List!38894) Unit!56583)

(assert (=> b!3676372 (= lt!1283512 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!564 thiss!23823 (rule!8664 lt!1283514) lt!1283510 (++!9650 lt!1283106 suffix!1395)))))

(assert (=> b!3676372 (not (matchR!5162 (regex!5834 (rule!8664 lt!1283514)) lt!1283510))))

(declare-fun lt!1283522 () Unit!56583)

(assert (=> b!3676372 (= lt!1283522 lt!1283512)))

(assert (=> b!3676372 false))

(assert (= (and d!1079326 res!1493427) b!3676370))

(assert (= (and b!3676370 res!1493426) b!3676371))

(assert (= (and d!1079326 c!635794) b!3676372))

(assert (= (and d!1079326 (not c!635794)) b!3676373))

(declare-fun m!4185975 () Bool)

(assert (=> b!3676371 m!4185975))

(assert (=> b!3676371 m!4185975))

(declare-fun m!4185977 () Bool)

(assert (=> b!3676371 m!4185977))

(assert (=> d!1079326 m!4185013))

(declare-fun m!4185979 () Bool)

(assert (=> d!1079326 m!4185979))

(declare-fun m!4185981 () Bool)

(assert (=> d!1079326 m!4185981))

(assert (=> d!1079326 m!4185979))

(declare-fun m!4185983 () Bool)

(assert (=> d!1079326 m!4185983))

(declare-fun m!4185985 () Bool)

(assert (=> d!1079326 m!4185985))

(declare-fun m!4185987 () Bool)

(assert (=> d!1079326 m!4185987))

(declare-fun m!4185989 () Bool)

(assert (=> d!1079326 m!4185989))

(declare-fun m!4185991 () Bool)

(assert (=> d!1079326 m!4185991))

(declare-fun m!4185993 () Bool)

(assert (=> d!1079326 m!4185993))

(assert (=> d!1079326 m!4185985))

(assert (=> d!1079326 m!4185975))

(assert (=> d!1079326 m!4185991))

(declare-fun m!4185995 () Bool)

(assert (=> d!1079326 m!4185995))

(declare-fun m!4185997 () Bool)

(assert (=> d!1079326 m!4185997))

(assert (=> d!1079326 m!4184973))

(assert (=> d!1079326 m!4184963))

(declare-fun m!4185999 () Bool)

(assert (=> d!1079326 m!4185999))

(declare-fun m!4186001 () Bool)

(assert (=> d!1079326 m!4186001))

(assert (=> d!1079326 m!4184963))

(assert (=> d!1079326 m!4185997))

(declare-fun m!4186003 () Bool)

(assert (=> d!1079326 m!4186003))

(declare-fun m!4186005 () Bool)

(assert (=> d!1079326 m!4186005))

(assert (=> d!1079326 m!4185013))

(assert (=> d!1079326 m!4185979))

(assert (=> d!1079326 m!4186005))

(declare-fun m!4186007 () Bool)

(assert (=> d!1079326 m!4186007))

(assert (=> d!1079326 m!4185013))

(declare-fun m!4186009 () Bool)

(assert (=> d!1079326 m!4186009))

(assert (=> d!1079326 m!4185975))

(declare-fun m!4186011 () Bool)

(assert (=> d!1079326 m!4186011))

(assert (=> b!3676370 m!4185995))

(declare-fun m!4186013 () Bool)

(assert (=> b!3676370 m!4186013))

(assert (=> b!3676370 m!4185975))

(assert (=> b!3676370 m!4185991))

(assert (=> b!3676370 m!4185995))

(assert (=> b!3676370 m!4185991))

(assert (=> b!3676370 m!4185975))

(assert (=> b!3676370 m!4185977))

(assert (=> b!3676372 m!4185013))

(assert (=> b!3676372 m!4185013))

(declare-fun m!4186015 () Bool)

(assert (=> b!3676372 m!4186015))

(declare-fun m!4186017 () Bool)

(assert (=> b!3676372 m!4186017))

(assert (=> b!3676372 m!4185991))

(declare-fun m!4186019 () Bool)

(assert (=> b!3676372 m!4186019))

(assert (=> b!3676372 m!4186017))

(declare-fun m!4186021 () Bool)

(assert (=> b!3676372 m!4186021))

(assert (=> b!3676372 m!4185991))

(assert (=> b!3676372 m!4185995))

(declare-fun m!4186023 () Bool)

(assert (=> b!3676372 m!4186023))

(assert (=> b!3675582 d!1079326))

(declare-fun d!1079392 () Bool)

(assert (=> d!1079392 (isPrefix!3197 lt!1283099 (++!9650 lt!1283099 (_2!22452 lt!1283115)))))

(declare-fun lt!1283523 () Unit!56583)

(assert (=> d!1079392 (= lt!1283523 (choose!21922 lt!1283099 (_2!22452 lt!1283115)))))

(assert (=> d!1079392 (= (lemmaConcatTwoListThenFirstIsPrefix!2116 lt!1283099 (_2!22452 lt!1283115)) lt!1283523)))

(declare-fun bs!573390 () Bool)

(assert (= bs!573390 d!1079392))

(assert (=> bs!573390 m!4185001))

(assert (=> bs!573390 m!4185001))

(assert (=> bs!573390 m!4185015))

(declare-fun m!4186025 () Bool)

(assert (=> bs!573390 m!4186025))

(assert (=> b!3675582 d!1079392))

(declare-fun b!3676377 () Bool)

(declare-fun e!2276443 () Bool)

(assert (=> b!3676377 (= e!2276443 (>= (size!29641 lt!1283138) (size!29641 lt!1283106)))))

(declare-fun b!3676376 () Bool)

(declare-fun e!2276441 () Bool)

(assert (=> b!3676376 (= e!2276441 (isPrefix!3197 (tail!5686 lt!1283106) (tail!5686 lt!1283138)))))

(declare-fun b!3676374 () Bool)

(declare-fun e!2276442 () Bool)

(assert (=> b!3676374 (= e!2276442 e!2276441)))

(declare-fun res!1493431 () Bool)

(assert (=> b!3676374 (=> (not res!1493431) (not e!2276441))))

(assert (=> b!3676374 (= res!1493431 (not ((_ is Nil!38770) lt!1283138)))))

(declare-fun b!3676375 () Bool)

(declare-fun res!1493428 () Bool)

(assert (=> b!3676375 (=> (not res!1493428) (not e!2276441))))

(assert (=> b!3676375 (= res!1493428 (= (head!7880 lt!1283106) (head!7880 lt!1283138)))))

(declare-fun d!1079394 () Bool)

(assert (=> d!1079394 e!2276443))

(declare-fun res!1493429 () Bool)

(assert (=> d!1079394 (=> res!1493429 e!2276443)))

(declare-fun lt!1283524 () Bool)

(assert (=> d!1079394 (= res!1493429 (not lt!1283524))))

(assert (=> d!1079394 (= lt!1283524 e!2276442)))

(declare-fun res!1493430 () Bool)

(assert (=> d!1079394 (=> res!1493430 e!2276442)))

(assert (=> d!1079394 (= res!1493430 ((_ is Nil!38770) lt!1283106))))

(assert (=> d!1079394 (= (isPrefix!3197 lt!1283106 lt!1283138) lt!1283524)))

(assert (= (and d!1079394 (not res!1493430)) b!3676374))

(assert (= (and b!3676374 res!1493431) b!3676375))

(assert (= (and b!3676375 res!1493428) b!3676376))

(assert (= (and d!1079394 (not res!1493429)) b!3676377))

(assert (=> b!3676377 m!4185587))

(assert (=> b!3676377 m!4185539))

(assert (=> b!3676376 m!4185541))

(assert (=> b!3676376 m!4185625))

(assert (=> b!3676376 m!4185541))

(assert (=> b!3676376 m!4185625))

(declare-fun m!4186027 () Bool)

(assert (=> b!3676376 m!4186027))

(assert (=> b!3676375 m!4185547))

(assert (=> b!3676375 m!4185685))

(assert (=> b!3675582 d!1079394))

(declare-fun d!1079396 () Bool)

(assert (=> d!1079396 (= (get!12824 lt!1283114) (v!38220 lt!1283114))))

(assert (=> b!3675581 d!1079396))

(declare-fun d!1079398 () Bool)

(assert (=> d!1079398 (= (isDefined!6529 lt!1283114) (not (isEmpty!23022 lt!1283114)))))

(declare-fun bs!573391 () Bool)

(assert (= bs!573391 d!1079398))

(declare-fun m!4186029 () Bool)

(assert (=> bs!573391 m!4186029))

(assert (=> b!3675600 d!1079398))

(declare-fun d!1079400 () Bool)

(declare-fun e!2276445 () Bool)

(assert (=> d!1079400 e!2276445))

(declare-fun res!1493437 () Bool)

(assert (=> d!1079400 (=> res!1493437 e!2276445)))

(declare-fun lt!1283527 () Option!8297)

(assert (=> d!1079400 (= res!1493437 (isEmpty!23022 lt!1283527))))

(declare-fun e!2276444 () Option!8297)

(assert (=> d!1079400 (= lt!1283527 e!2276444)))

(declare-fun c!635795 () Bool)

(assert (=> d!1079400 (= c!635795 (and ((_ is Cons!38771) rules!3307) ((_ is Nil!38771) (t!300090 rules!3307))))))

(declare-fun lt!1283528 () Unit!56583)

(declare-fun lt!1283529 () Unit!56583)

(assert (=> d!1079400 (= lt!1283528 lt!1283529)))

(assert (=> d!1079400 (isPrefix!3197 lt!1283106 lt!1283106)))

(assert (=> d!1079400 (= lt!1283529 (lemmaIsPrefixRefl!2012 lt!1283106 lt!1283106))))

(assert (=> d!1079400 (rulesValidInductive!2075 thiss!23823 rules!3307)))

(assert (=> d!1079400 (= (maxPrefix!2957 thiss!23823 rules!3307 lt!1283106) lt!1283527)))

(declare-fun b!3676378 () Bool)

(declare-fun res!1493435 () Bool)

(declare-fun e!2276446 () Bool)

(assert (=> b!3676378 (=> (not res!1493435) (not e!2276446))))

(assert (=> b!3676378 (= res!1493435 (= (list!14404 (charsOf!3848 (_1!22452 (get!12824 lt!1283527)))) (originalCharacters!6548 (_1!22452 (get!12824 lt!1283527)))))))

(declare-fun b!3676379 () Bool)

(declare-fun res!1493433 () Bool)

(assert (=> b!3676379 (=> (not res!1493433) (not e!2276446))))

(assert (=> b!3676379 (= res!1493433 (= (++!9650 (list!14404 (charsOf!3848 (_1!22452 (get!12824 lt!1283527)))) (_2!22452 (get!12824 lt!1283527))) lt!1283106))))

(declare-fun b!3676380 () Bool)

(declare-fun res!1493436 () Bool)

(assert (=> b!3676380 (=> (not res!1493436) (not e!2276446))))

(assert (=> b!3676380 (= res!1493436 (matchR!5162 (regex!5834 (rule!8664 (_1!22452 (get!12824 lt!1283527)))) (list!14404 (charsOf!3848 (_1!22452 (get!12824 lt!1283527))))))))

(declare-fun call!266236 () Option!8297)

(declare-fun bm!266231 () Bool)

(assert (=> bm!266231 (= call!266236 (maxPrefixOneRule!2095 thiss!23823 (h!44191 rules!3307) lt!1283106))))

(declare-fun b!3676381 () Bool)

(declare-fun res!1493438 () Bool)

(assert (=> b!3676381 (=> (not res!1493438) (not e!2276446))))

(assert (=> b!3676381 (= res!1493438 (= (value!186729 (_1!22452 (get!12824 lt!1283527))) (apply!9336 (transformation!5834 (rule!8664 (_1!22452 (get!12824 lt!1283527)))) (seqFromList!4383 (originalCharacters!6548 (_1!22452 (get!12824 lt!1283527)))))))))

(declare-fun b!3676382 () Bool)

(assert (=> b!3676382 (= e!2276446 (contains!7736 rules!3307 (rule!8664 (_1!22452 (get!12824 lt!1283527)))))))

(declare-fun b!3676383 () Bool)

(declare-fun lt!1283525 () Option!8297)

(declare-fun lt!1283526 () Option!8297)

(assert (=> b!3676383 (= e!2276444 (ite (and ((_ is None!8296) lt!1283525) ((_ is None!8296) lt!1283526)) None!8296 (ite ((_ is None!8296) lt!1283526) lt!1283525 (ite ((_ is None!8296) lt!1283525) lt!1283526 (ite (>= (size!29639 (_1!22452 (v!38220 lt!1283525))) (size!29639 (_1!22452 (v!38220 lt!1283526)))) lt!1283525 lt!1283526)))))))

(assert (=> b!3676383 (= lt!1283525 call!266236)))

(assert (=> b!3676383 (= lt!1283526 (maxPrefix!2957 thiss!23823 (t!300090 rules!3307) lt!1283106))))

(declare-fun b!3676384 () Bool)

(assert (=> b!3676384 (= e!2276444 call!266236)))

(declare-fun b!3676385 () Bool)

(declare-fun res!1493434 () Bool)

(assert (=> b!3676385 (=> (not res!1493434) (not e!2276446))))

(assert (=> b!3676385 (= res!1493434 (< (size!29641 (_2!22452 (get!12824 lt!1283527))) (size!29641 lt!1283106)))))

(declare-fun b!3676386 () Bool)

(assert (=> b!3676386 (= e!2276445 e!2276446)))

(declare-fun res!1493432 () Bool)

(assert (=> b!3676386 (=> (not res!1493432) (not e!2276446))))

(assert (=> b!3676386 (= res!1493432 (isDefined!6529 lt!1283527))))

(assert (= (and d!1079400 c!635795) b!3676384))

(assert (= (and d!1079400 (not c!635795)) b!3676383))

(assert (= (or b!3676384 b!3676383) bm!266231))

(assert (= (and d!1079400 (not res!1493437)) b!3676386))

(assert (= (and b!3676386 res!1493432) b!3676378))

(assert (= (and b!3676378 res!1493435) b!3676385))

(assert (= (and b!3676385 res!1493434) b!3676379))

(assert (= (and b!3676379 res!1493433) b!3676381))

(assert (= (and b!3676381 res!1493438) b!3676380))

(assert (= (and b!3676380 res!1493436) b!3676382))

(declare-fun m!4186031 () Bool)

(assert (=> b!3676386 m!4186031))

(declare-fun m!4186033 () Bool)

(assert (=> b!3676381 m!4186033))

(declare-fun m!4186035 () Bool)

(assert (=> b!3676381 m!4186035))

(assert (=> b!3676381 m!4186035))

(declare-fun m!4186037 () Bool)

(assert (=> b!3676381 m!4186037))

(declare-fun m!4186039 () Bool)

(assert (=> d!1079400 m!4186039))

(assert (=> d!1079400 m!4185557))

(declare-fun m!4186041 () Bool)

(assert (=> d!1079400 m!4186041))

(assert (=> d!1079400 m!4185717))

(declare-fun m!4186043 () Bool)

(assert (=> b!3676383 m!4186043))

(assert (=> b!3676379 m!4186033))

(declare-fun m!4186045 () Bool)

(assert (=> b!3676379 m!4186045))

(assert (=> b!3676379 m!4186045))

(declare-fun m!4186047 () Bool)

(assert (=> b!3676379 m!4186047))

(assert (=> b!3676379 m!4186047))

(declare-fun m!4186049 () Bool)

(assert (=> b!3676379 m!4186049))

(assert (=> b!3676380 m!4186033))

(assert (=> b!3676380 m!4186045))

(assert (=> b!3676380 m!4186045))

(assert (=> b!3676380 m!4186047))

(assert (=> b!3676380 m!4186047))

(declare-fun m!4186051 () Bool)

(assert (=> b!3676380 m!4186051))

(assert (=> b!3676378 m!4186033))

(assert (=> b!3676378 m!4186045))

(assert (=> b!3676378 m!4186045))

(assert (=> b!3676378 m!4186047))

(declare-fun m!4186053 () Bool)

(assert (=> bm!266231 m!4186053))

(assert (=> b!3676382 m!4186033))

(declare-fun m!4186055 () Bool)

(assert (=> b!3676382 m!4186055))

(assert (=> b!3676385 m!4186033))

(declare-fun m!4186057 () Bool)

(assert (=> b!3676385 m!4186057))

(assert (=> b!3676385 m!4185539))

(assert (=> b!3675600 d!1079400))

(declare-fun d!1079402 () Bool)

(assert (=> d!1079402 (= (list!14404 lt!1283105) (list!14406 (c!635631 lt!1283105)))))

(declare-fun bs!573392 () Bool)

(assert (= bs!573392 d!1079402))

(declare-fun m!4186059 () Bool)

(assert (=> bs!573392 m!4186059))

(assert (=> b!3675600 d!1079402))

(declare-fun d!1079404 () Bool)

(declare-fun lt!1283530 () BalanceConc!23344)

(assert (=> d!1079404 (= (list!14404 lt!1283530) (originalCharacters!6548 token!511))))

(assert (=> d!1079404 (= lt!1283530 (dynLambda!16979 (toChars!7989 (transformation!5834 (rule!8664 token!511))) (value!186729 token!511)))))

(assert (=> d!1079404 (= (charsOf!3848 token!511) lt!1283530)))

(declare-fun b_lambda!109173 () Bool)

(assert (=> (not b_lambda!109173) (not d!1079404)))

(assert (=> d!1079404 t!300100))

(declare-fun b_and!274255 () Bool)

(assert (= b_and!274179 (and (=> t!300100 result!259144) b_and!274255)))

(assert (=> d!1079404 t!300102))

(declare-fun b_and!274257 () Bool)

(assert (= b_and!274181 (and (=> t!300102 result!259148) b_and!274257)))

(assert (=> d!1079404 t!300104))

(declare-fun b_and!274259 () Bool)

(assert (= b_and!274183 (and (=> t!300104 result!259150) b_and!274259)))

(assert (=> d!1079404 t!300106))

(declare-fun b_and!274261 () Bool)

(assert (= b_and!274185 (and (=> t!300106 result!259152) b_and!274261)))

(declare-fun m!4186061 () Bool)

(assert (=> d!1079404 m!4186061))

(assert (=> d!1079404 m!4185179))

(assert (=> b!3675600 d!1079404))

(declare-fun d!1079406 () Bool)

(declare-fun lt!1283531 () Int)

(assert (=> d!1079406 (= lt!1283531 (size!29641 (list!14404 lt!1283105)))))

(assert (=> d!1079406 (= lt!1283531 (size!29642 (c!635631 lt!1283105)))))

(assert (=> d!1079406 (= (size!29640 lt!1283105) lt!1283531)))

(declare-fun bs!573393 () Bool)

(assert (= bs!573393 d!1079406))

(assert (=> bs!573393 m!4184965))

(assert (=> bs!573393 m!4184965))

(declare-fun m!4186063 () Bool)

(assert (=> bs!573393 m!4186063))

(declare-fun m!4186065 () Bool)

(assert (=> bs!573393 m!4186065))

(assert (=> b!3675563 d!1079406))

(declare-fun d!1079408 () Bool)

(declare-fun lt!1283532 () List!38894)

(assert (=> d!1079408 (= (++!9650 lt!1283106 lt!1283532) lt!1283138)))

(declare-fun e!2276447 () List!38894)

(assert (=> d!1079408 (= lt!1283532 e!2276447)))

(declare-fun c!635796 () Bool)

(assert (=> d!1079408 (= c!635796 ((_ is Cons!38770) lt!1283106))))

(assert (=> d!1079408 (>= (size!29641 lt!1283138) (size!29641 lt!1283106))))

(assert (=> d!1079408 (= (getSuffix!1750 lt!1283138 lt!1283106) lt!1283532)))

(declare-fun b!3676387 () Bool)

(assert (=> b!3676387 (= e!2276447 (getSuffix!1750 (tail!5686 lt!1283138) (t!300089 lt!1283106)))))

(declare-fun b!3676388 () Bool)

(assert (=> b!3676388 (= e!2276447 lt!1283138)))

(assert (= (and d!1079408 c!635796) b!3676387))

(assert (= (and d!1079408 (not c!635796)) b!3676388))

(declare-fun m!4186067 () Bool)

(assert (=> d!1079408 m!4186067))

(assert (=> d!1079408 m!4185587))

(assert (=> d!1079408 m!4185539))

(assert (=> b!3676387 m!4185625))

(assert (=> b!3676387 m!4185625))

(declare-fun m!4186069 () Bool)

(assert (=> b!3676387 m!4186069))

(assert (=> b!3675563 d!1079408))

(declare-fun b!3676389 () Bool)

(declare-fun e!2276449 () List!38894)

(assert (=> b!3676389 (= e!2276449 (getSuffix!1750 lt!1283138 lt!1283106))))

(declare-fun b!3676391 () Bool)

(declare-fun res!1493440 () Bool)

(declare-fun e!2276448 () Bool)

(assert (=> b!3676391 (=> (not res!1493440) (not e!2276448))))

(declare-fun lt!1283533 () List!38894)

(assert (=> b!3676391 (= res!1493440 (= (size!29641 lt!1283533) (+ (size!29641 lt!1283106) (size!29641 (getSuffix!1750 lt!1283138 lt!1283106)))))))

(declare-fun d!1079410 () Bool)

(assert (=> d!1079410 e!2276448))

(declare-fun res!1493439 () Bool)

(assert (=> d!1079410 (=> (not res!1493439) (not e!2276448))))

(assert (=> d!1079410 (= res!1493439 (= (content!5618 lt!1283533) ((_ map or) (content!5618 lt!1283106) (content!5618 (getSuffix!1750 lt!1283138 lt!1283106)))))))

(assert (=> d!1079410 (= lt!1283533 e!2276449)))

(declare-fun c!635797 () Bool)

(assert (=> d!1079410 (= c!635797 ((_ is Nil!38770) lt!1283106))))

(assert (=> d!1079410 (= (++!9650 lt!1283106 (getSuffix!1750 lt!1283138 lt!1283106)) lt!1283533)))

(declare-fun b!3676390 () Bool)

(assert (=> b!3676390 (= e!2276449 (Cons!38770 (h!44190 lt!1283106) (++!9650 (t!300089 lt!1283106) (getSuffix!1750 lt!1283138 lt!1283106))))))

(declare-fun b!3676392 () Bool)

(assert (=> b!3676392 (= e!2276448 (or (not (= (getSuffix!1750 lt!1283138 lt!1283106) Nil!38770)) (= lt!1283533 lt!1283106)))))

(assert (= (and d!1079410 c!635797) b!3676389))

(assert (= (and d!1079410 (not c!635797)) b!3676390))

(assert (= (and d!1079410 res!1493439) b!3676391))

(assert (= (and b!3676391 res!1493440) b!3676392))

(declare-fun m!4186071 () Bool)

(assert (=> b!3676391 m!4186071))

(assert (=> b!3676391 m!4185539))

(assert (=> b!3676391 m!4185035))

(declare-fun m!4186073 () Bool)

(assert (=> b!3676391 m!4186073))

(declare-fun m!4186075 () Bool)

(assert (=> d!1079410 m!4186075))

(assert (=> d!1079410 m!4185823))

(assert (=> d!1079410 m!4185035))

(declare-fun m!4186077 () Bool)

(assert (=> d!1079410 m!4186077))

(assert (=> b!3676390 m!4185035))

(declare-fun m!4186079 () Bool)

(assert (=> b!3676390 m!4186079))

(assert (=> b!3675563 d!1079410))

(declare-fun d!1079412 () Bool)

(assert (=> d!1079412 (= lt!1283099 lt!1283106)))

(declare-fun lt!1283536 () Unit!56583)

(declare-fun choose!21926 (List!38894 List!38894 List!38894) Unit!56583)

(assert (=> d!1079412 (= lt!1283536 (choose!21926 lt!1283099 lt!1283106 lt!1283138))))

(assert (=> d!1079412 (isPrefix!3197 lt!1283099 lt!1283138)))

(assert (=> d!1079412 (= (lemmaIsPrefixSameLengthThenSameList!659 lt!1283099 lt!1283106 lt!1283138) lt!1283536)))

(declare-fun bs!573394 () Bool)

(assert (= bs!573394 d!1079412))

(declare-fun m!4186081 () Bool)

(assert (=> bs!573394 m!4186081))

(assert (=> bs!573394 m!4185021))

(assert (=> b!3675563 d!1079412))

(declare-fun d!1079414 () Bool)

(declare-fun lt!1283537 () Bool)

(assert (=> d!1079414 (= lt!1283537 (select (content!5618 lt!1283120) lt!1283133))))

(declare-fun e!2276450 () Bool)

(assert (=> d!1079414 (= lt!1283537 e!2276450)))

(declare-fun res!1493442 () Bool)

(assert (=> d!1079414 (=> (not res!1493442) (not e!2276450))))

(assert (=> d!1079414 (= res!1493442 ((_ is Cons!38770) lt!1283120))))

(assert (=> d!1079414 (= (contains!7735 lt!1283120 lt!1283133) lt!1283537)))

(declare-fun b!3676393 () Bool)

(declare-fun e!2276451 () Bool)

(assert (=> b!3676393 (= e!2276450 e!2276451)))

(declare-fun res!1493441 () Bool)

(assert (=> b!3676393 (=> res!1493441 e!2276451)))

(assert (=> b!3676393 (= res!1493441 (= (h!44190 lt!1283120) lt!1283133))))

(declare-fun b!3676394 () Bool)

(assert (=> b!3676394 (= e!2276451 (contains!7735 (t!300089 lt!1283120) lt!1283133))))

(assert (= (and d!1079414 res!1493442) b!3676393))

(assert (= (and b!3676393 (not res!1493441)) b!3676394))

(assert (=> d!1079414 m!4185197))

(declare-fun m!4186083 () Bool)

(assert (=> d!1079414 m!4186083))

(declare-fun m!4186085 () Bool)

(assert (=> b!3676394 m!4186085))

(assert (=> b!3675563 d!1079414))

(declare-fun d!1079416 () Bool)

(assert (=> d!1079416 (= (head!7880 lt!1283099) (h!44190 lt!1283099))))

(assert (=> b!3675563 d!1079416))

(declare-fun d!1079418 () Bool)

(assert (=> d!1079418 (= (inv!52258 (tag!6630 anOtherTypeRule!33)) (= (mod (str.len (value!186728 (tag!6630 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3675547 d!1079418))

(declare-fun d!1079420 () Bool)

(declare-fun res!1493443 () Bool)

(declare-fun e!2276452 () Bool)

(assert (=> d!1079420 (=> (not res!1493443) (not e!2276452))))

(assert (=> d!1079420 (= res!1493443 (semiInverseModEq!2488 (toChars!7989 (transformation!5834 anOtherTypeRule!33)) (toValue!8130 (transformation!5834 anOtherTypeRule!33))))))

(assert (=> d!1079420 (= (inv!52261 (transformation!5834 anOtherTypeRule!33)) e!2276452)))

(declare-fun b!3676395 () Bool)

(assert (=> b!3676395 (= e!2276452 (equivClasses!2387 (toChars!7989 (transformation!5834 anOtherTypeRule!33)) (toValue!8130 (transformation!5834 anOtherTypeRule!33))))))

(assert (= (and d!1079420 res!1493443) b!3676395))

(declare-fun m!4186087 () Bool)

(assert (=> d!1079420 m!4186087))

(declare-fun m!4186089 () Bool)

(assert (=> b!3676395 m!4186089))

(assert (=> b!3675547 d!1079420))

(declare-fun d!1079422 () Bool)

(declare-fun lt!1283538 () Bool)

(assert (=> d!1079422 (= lt!1283538 (select (content!5618 (usedCharacters!1046 (regex!5834 anOtherTypeRule!33))) lt!1283096))))

(declare-fun e!2276453 () Bool)

(assert (=> d!1079422 (= lt!1283538 e!2276453)))

(declare-fun res!1493445 () Bool)

(assert (=> d!1079422 (=> (not res!1493445) (not e!2276453))))

(assert (=> d!1079422 (= res!1493445 ((_ is Cons!38770) (usedCharacters!1046 (regex!5834 anOtherTypeRule!33))))))

(assert (=> d!1079422 (= (contains!7735 (usedCharacters!1046 (regex!5834 anOtherTypeRule!33)) lt!1283096) lt!1283538)))

(declare-fun b!3676396 () Bool)

(declare-fun e!2276454 () Bool)

(assert (=> b!3676396 (= e!2276453 e!2276454)))

(declare-fun res!1493444 () Bool)

(assert (=> b!3676396 (=> res!1493444 e!2276454)))

(assert (=> b!3676396 (= res!1493444 (= (h!44190 (usedCharacters!1046 (regex!5834 anOtherTypeRule!33))) lt!1283096))))

(declare-fun b!3676397 () Bool)

(assert (=> b!3676397 (= e!2276454 (contains!7735 (t!300089 (usedCharacters!1046 (regex!5834 anOtherTypeRule!33))) lt!1283096))))

(assert (= (and d!1079422 res!1493445) b!3676396))

(assert (= (and b!3676396 (not res!1493444)) b!3676397))

(assert (=> d!1079422 m!4184975))

(declare-fun m!4186091 () Bool)

(assert (=> d!1079422 m!4186091))

(declare-fun m!4186093 () Bool)

(assert (=> d!1079422 m!4186093))

(declare-fun m!4186095 () Bool)

(assert (=> b!3676397 m!4186095))

(assert (=> b!3675565 d!1079422))

(declare-fun b!3676398 () Bool)

(declare-fun e!2276456 () List!38894)

(declare-fun call!266237 () List!38894)

(assert (=> b!3676398 (= e!2276456 call!266237)))

(declare-fun b!3676399 () Bool)

(declare-fun e!2276458 () List!38894)

(declare-fun call!266238 () List!38894)

(assert (=> b!3676399 (= e!2276458 call!266238)))

(declare-fun b!3676400 () Bool)

(declare-fun e!2276455 () List!38894)

(declare-fun e!2276457 () List!38894)

(assert (=> b!3676400 (= e!2276455 e!2276457)))

(declare-fun c!635798 () Bool)

(assert (=> b!3676400 (= c!635798 ((_ is ElementMatch!10593) (regex!5834 anOtherTypeRule!33)))))

(declare-fun b!3676401 () Bool)

(assert (=> b!3676401 (= e!2276456 call!266237)))

(declare-fun bm!266232 () Bool)

(declare-fun call!266240 () List!38894)

(assert (=> bm!266232 (= call!266240 call!266238)))

(declare-fun b!3676402 () Bool)

(assert (=> b!3676402 (= e!2276455 Nil!38770)))

(declare-fun b!3676403 () Bool)

(assert (=> b!3676403 (= e!2276458 e!2276456)))

(declare-fun c!635799 () Bool)

(assert (=> b!3676403 (= c!635799 ((_ is Union!10593) (regex!5834 anOtherTypeRule!33)))))

(declare-fun b!3676405 () Bool)

(declare-fun c!635800 () Bool)

(assert (=> b!3676405 (= c!635800 ((_ is Star!10593) (regex!5834 anOtherTypeRule!33)))))

(assert (=> b!3676405 (= e!2276457 e!2276458)))

(declare-fun bm!266233 () Bool)

(assert (=> bm!266233 (= call!266238 (usedCharacters!1046 (ite c!635800 (reg!10922 (regex!5834 anOtherTypeRule!33)) (ite c!635799 (regTwo!21699 (regex!5834 anOtherTypeRule!33)) (regOne!21698 (regex!5834 anOtherTypeRule!33))))))))

(declare-fun call!266239 () List!38894)

(declare-fun bm!266234 () Bool)

(assert (=> bm!266234 (= call!266237 (++!9650 (ite c!635799 call!266239 call!266240) (ite c!635799 call!266240 call!266239)))))

(declare-fun bm!266235 () Bool)

(assert (=> bm!266235 (= call!266239 (usedCharacters!1046 (ite c!635799 (regOne!21699 (regex!5834 anOtherTypeRule!33)) (regTwo!21698 (regex!5834 anOtherTypeRule!33)))))))

(declare-fun d!1079424 () Bool)

(declare-fun c!635801 () Bool)

(assert (=> d!1079424 (= c!635801 (or ((_ is EmptyExpr!10593) (regex!5834 anOtherTypeRule!33)) ((_ is EmptyLang!10593) (regex!5834 anOtherTypeRule!33))))))

(assert (=> d!1079424 (= (usedCharacters!1046 (regex!5834 anOtherTypeRule!33)) e!2276455)))

(declare-fun b!3676404 () Bool)

(assert (=> b!3676404 (= e!2276457 (Cons!38770 (c!635630 (regex!5834 anOtherTypeRule!33)) Nil!38770))))

(assert (= (and d!1079424 c!635801) b!3676402))

(assert (= (and d!1079424 (not c!635801)) b!3676400))

(assert (= (and b!3676400 c!635798) b!3676404))

(assert (= (and b!3676400 (not c!635798)) b!3676405))

(assert (= (and b!3676405 c!635800) b!3676399))

(assert (= (and b!3676405 (not c!635800)) b!3676403))

(assert (= (and b!3676403 c!635799) b!3676401))

(assert (= (and b!3676403 (not c!635799)) b!3676398))

(assert (= (or b!3676401 b!3676398) bm!266235))

(assert (= (or b!3676401 b!3676398) bm!266232))

(assert (= (or b!3676401 b!3676398) bm!266234))

(assert (= (or b!3676399 bm!266232) bm!266233))

(declare-fun m!4186097 () Bool)

(assert (=> bm!266233 m!4186097))

(declare-fun m!4186099 () Bool)

(assert (=> bm!266234 m!4186099))

(declare-fun m!4186101 () Bool)

(assert (=> bm!266235 m!4186101))

(assert (=> b!3675565 d!1079424))

(declare-fun d!1079426 () Bool)

(declare-fun lt!1283539 () Bool)

(assert (=> d!1079426 (= lt!1283539 (select (content!5617 rules!3307) rule!403))))

(declare-fun e!2276460 () Bool)

(assert (=> d!1079426 (= lt!1283539 e!2276460)))

(declare-fun res!1493446 () Bool)

(assert (=> d!1079426 (=> (not res!1493446) (not e!2276460))))

(assert (=> d!1079426 (= res!1493446 ((_ is Cons!38771) rules!3307))))

(assert (=> d!1079426 (= (contains!7736 rules!3307 rule!403) lt!1283539)))

(declare-fun b!3676406 () Bool)

(declare-fun e!2276459 () Bool)

(assert (=> b!3676406 (= e!2276460 e!2276459)))

(declare-fun res!1493447 () Bool)

(assert (=> b!3676406 (=> res!1493447 e!2276459)))

(assert (=> b!3676406 (= res!1493447 (= (h!44191 rules!3307) rule!403))))

(declare-fun b!3676407 () Bool)

(assert (=> b!3676407 (= e!2276459 (contains!7736 (t!300090 rules!3307) rule!403))))

(assert (= (and d!1079426 res!1493446) b!3676406))

(assert (= (and b!3676406 (not res!1493447)) b!3676407))

(assert (=> d!1079426 m!4185115))

(declare-fun m!4186103 () Bool)

(assert (=> d!1079426 m!4186103))

(declare-fun m!4186105 () Bool)

(assert (=> b!3676407 m!4186105))

(assert (=> b!3675566 d!1079426))

(declare-fun d!1079428 () Bool)

(assert (=> d!1079428 (not (matchR!5162 (regex!5834 rule!403) lt!1283106))))

(declare-fun lt!1283542 () Unit!56583)

(declare-fun choose!21929 (LexerInterface!5423 List!38895 Rule!11468 List!38894 List!38894 List!38894 Rule!11468) Unit!56583)

(assert (=> d!1079428 (= lt!1283542 (choose!21929 thiss!23823 rules!3307 (rule!8664 (_1!22452 lt!1283115)) lt!1283099 lt!1283138 lt!1283106 rule!403))))

(assert (=> d!1079428 (isPrefix!3197 lt!1283099 lt!1283138)))

(assert (=> d!1079428 (= (lemmaMaxPrefixOutputsMaxPrefix!376 thiss!23823 rules!3307 (rule!8664 (_1!22452 lt!1283115)) lt!1283099 lt!1283138 lt!1283106 rule!403) lt!1283542)))

(declare-fun bs!573395 () Bool)

(assert (= bs!573395 d!1079428))

(assert (=> bs!573395 m!4184913))

(declare-fun m!4186107 () Bool)

(assert (=> bs!573395 m!4186107))

(assert (=> bs!573395 m!4185021))

(assert (=> b!3675584 d!1079428))

(declare-fun b!3676412 () Bool)

(declare-fun e!2276463 () Bool)

(declare-fun tp!1118029 () Bool)

(assert (=> b!3676412 (= e!2276463 (and tp_is_empty!18269 tp!1118029))))

(assert (=> b!3675569 (= tp!1117963 e!2276463)))

(assert (= (and b!3675569 ((_ is Cons!38770) (t!300089 suffix!1395))) b!3676412))

(declare-fun b!3676423 () Bool)

(declare-fun b_free!97285 () Bool)

(declare-fun b_next!97989 () Bool)

(assert (=> b!3676423 (= b_free!97285 (not b_next!97989))))

(declare-fun tb!213057 () Bool)

(declare-fun t!300201 () Bool)

(assert (=> (and b!3676423 (= (toValue!8130 (transformation!5834 (h!44191 (t!300090 rules!3307)))) (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300201) tb!213057))

(declare-fun result!259260 () Bool)

(assert (= result!259260 result!259162))

(assert (=> d!1079206 t!300201))

(declare-fun tb!213059 () Bool)

(declare-fun t!300203 () Bool)

(assert (=> (and b!3676423 (= (toValue!8130 (transformation!5834 (h!44191 (t!300090 rules!3307)))) (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300203) tb!213059))

(declare-fun result!259262 () Bool)

(assert (= result!259262 result!259196))

(assert (=> d!1079236 t!300203))

(assert (=> d!1079146 t!300201))

(declare-fun t!300205 () Bool)

(declare-fun tb!213061 () Bool)

(assert (=> (and b!3676423 (= (toValue!8130 (transformation!5834 (h!44191 (t!300090 rules!3307)))) (toValue!8130 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300205) tb!213061))

(declare-fun result!259264 () Bool)

(assert (= result!259264 result!259180))

(assert (=> d!1079146 t!300205))

(assert (=> d!1079144 t!300201))

(declare-fun b_and!274263 () Bool)

(declare-fun tp!1118040 () Bool)

(assert (=> b!3676423 (= tp!1118040 (and (=> t!300201 result!259260) (=> t!300205 result!259264) (=> t!300203 result!259262) b_and!274263))))

(declare-fun b_free!97287 () Bool)

(declare-fun b_next!97991 () Bool)

(assert (=> b!3676423 (= b_free!97287 (not b_next!97991))))

(declare-fun tb!213063 () Bool)

(declare-fun t!300207 () Bool)

(assert (=> (and b!3676423 (= (toChars!7989 (transformation!5834 (h!44191 (t!300090 rules!3307)))) (toChars!7989 (transformation!5834 (rule!8664 token!511)))) t!300207) tb!213063))

(declare-fun result!259266 () Bool)

(assert (= result!259266 result!259144))

(assert (=> b!3675695 t!300207))

(declare-fun tb!213065 () Bool)

(declare-fun t!300209 () Bool)

(assert (=> (and b!3676423 (= (toChars!7989 (transformation!5834 (h!44191 (t!300090 rules!3307)))) (toChars!7989 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300209) tb!213065))

(declare-fun result!259268 () Bool)

(assert (= result!259268 result!259154))

(assert (=> d!1079138 t!300209))

(declare-fun tb!213067 () Bool)

(declare-fun t!300211 () Bool)

(assert (=> (and b!3676423 (= (toChars!7989 (transformation!5834 (h!44191 (t!300090 rules!3307)))) (toChars!7989 (transformation!5834 (rule!8664 (_1!22452 lt!1283115))))) t!300211) tb!213067))

(declare-fun result!259270 () Bool)

(assert (= result!259270 result!259188))

(assert (=> d!1079206 t!300211))

(assert (=> d!1079404 t!300207))

(declare-fun b_and!274265 () Bool)

(declare-fun tp!1118038 () Bool)

(assert (=> b!3676423 (= tp!1118038 (and (=> t!300207 result!259266) (=> t!300209 result!259268) (=> t!300211 result!259270) b_and!274265))))

(declare-fun e!2276474 () Bool)

(assert (=> b!3676423 (= e!2276474 (and tp!1118040 tp!1118038))))

(declare-fun b!3676422 () Bool)

(declare-fun tp!1118041 () Bool)

(declare-fun e!2276473 () Bool)

(assert (=> b!3676422 (= e!2276473 (and tp!1118041 (inv!52258 (tag!6630 (h!44191 (t!300090 rules!3307)))) (inv!52261 (transformation!5834 (h!44191 (t!300090 rules!3307)))) e!2276474))))

(declare-fun b!3676421 () Bool)

(declare-fun e!2276472 () Bool)

(declare-fun tp!1118039 () Bool)

(assert (=> b!3676421 (= e!2276472 (and e!2276473 tp!1118039))))

(assert (=> b!3675554 (= tp!1117960 e!2276472)))

(assert (= b!3676422 b!3676423))

(assert (= b!3676421 b!3676422))

(assert (= (and b!3675554 ((_ is Cons!38771) (t!300090 rules!3307))) b!3676421))

(declare-fun m!4186109 () Bool)

(assert (=> b!3676422 m!4186109))

(declare-fun m!4186111 () Bool)

(assert (=> b!3676422 m!4186111))

(declare-fun b!3676434 () Bool)

(declare-fun e!2276478 () Bool)

(assert (=> b!3676434 (= e!2276478 tp_is_empty!18269)))

(declare-fun b!3676437 () Bool)

(declare-fun tp!1118052 () Bool)

(declare-fun tp!1118053 () Bool)

(assert (=> b!3676437 (= e!2276478 (and tp!1118052 tp!1118053))))

(declare-fun b!3676435 () Bool)

(declare-fun tp!1118055 () Bool)

(declare-fun tp!1118056 () Bool)

(assert (=> b!3676435 (= e!2276478 (and tp!1118055 tp!1118056))))

(declare-fun b!3676436 () Bool)

(declare-fun tp!1118054 () Bool)

(assert (=> b!3676436 (= e!2276478 tp!1118054)))

(assert (=> b!3675568 (= tp!1117961 e!2276478)))

(assert (= (and b!3675568 ((_ is ElementMatch!10593) (regex!5834 (h!44191 rules!3307)))) b!3676434))

(assert (= (and b!3675568 ((_ is Concat!16658) (regex!5834 (h!44191 rules!3307)))) b!3676435))

(assert (= (and b!3675568 ((_ is Star!10593) (regex!5834 (h!44191 rules!3307)))) b!3676436))

(assert (= (and b!3675568 ((_ is Union!10593) (regex!5834 (h!44191 rules!3307)))) b!3676437))

(declare-fun b!3676438 () Bool)

(declare-fun e!2276479 () Bool)

(assert (=> b!3676438 (= e!2276479 tp_is_empty!18269)))

(declare-fun b!3676441 () Bool)

(declare-fun tp!1118057 () Bool)

(declare-fun tp!1118058 () Bool)

(assert (=> b!3676441 (= e!2276479 (and tp!1118057 tp!1118058))))

(declare-fun b!3676439 () Bool)

(declare-fun tp!1118060 () Bool)

(declare-fun tp!1118061 () Bool)

(assert (=> b!3676439 (= e!2276479 (and tp!1118060 tp!1118061))))

(declare-fun b!3676440 () Bool)

(declare-fun tp!1118059 () Bool)

(assert (=> b!3676440 (= e!2276479 tp!1118059)))

(assert (=> b!3675553 (= tp!1117964 e!2276479)))

(assert (= (and b!3675553 ((_ is ElementMatch!10593) (regex!5834 rule!403))) b!3676438))

(assert (= (and b!3675553 ((_ is Concat!16658) (regex!5834 rule!403))) b!3676439))

(assert (= (and b!3675553 ((_ is Star!10593) (regex!5834 rule!403))) b!3676440))

(assert (= (and b!3675553 ((_ is Union!10593) (regex!5834 rule!403))) b!3676441))

(declare-fun b!3676442 () Bool)

(declare-fun e!2276480 () Bool)

(declare-fun tp!1118062 () Bool)

(assert (=> b!3676442 (= e!2276480 (and tp_is_empty!18269 tp!1118062))))

(assert (=> b!3675599 (= tp!1117968 e!2276480)))

(assert (= (and b!3675599 ((_ is Cons!38770) (originalCharacters!6548 token!511))) b!3676442))

(declare-fun b!3676443 () Bool)

(declare-fun e!2276481 () Bool)

(assert (=> b!3676443 (= e!2276481 tp_is_empty!18269)))

(declare-fun b!3676446 () Bool)

(declare-fun tp!1118063 () Bool)

(declare-fun tp!1118064 () Bool)

(assert (=> b!3676446 (= e!2276481 (and tp!1118063 tp!1118064))))

(declare-fun b!3676444 () Bool)

(declare-fun tp!1118066 () Bool)

(declare-fun tp!1118067 () Bool)

(assert (=> b!3676444 (= e!2276481 (and tp!1118066 tp!1118067))))

(declare-fun b!3676445 () Bool)

(declare-fun tp!1118065 () Bool)

(assert (=> b!3676445 (= e!2276481 tp!1118065)))

(assert (=> b!3675562 (= tp!1117958 e!2276481)))

(assert (= (and b!3675562 ((_ is ElementMatch!10593) (regex!5834 (rule!8664 token!511)))) b!3676443))

(assert (= (and b!3675562 ((_ is Concat!16658) (regex!5834 (rule!8664 token!511)))) b!3676444))

(assert (= (and b!3675562 ((_ is Star!10593) (regex!5834 (rule!8664 token!511)))) b!3676445))

(assert (= (and b!3675562 ((_ is Union!10593) (regex!5834 (rule!8664 token!511)))) b!3676446))

(declare-fun b!3676447 () Bool)

(declare-fun e!2276482 () Bool)

(assert (=> b!3676447 (= e!2276482 tp_is_empty!18269)))

(declare-fun b!3676450 () Bool)

(declare-fun tp!1118068 () Bool)

(declare-fun tp!1118069 () Bool)

(assert (=> b!3676450 (= e!2276482 (and tp!1118068 tp!1118069))))

(declare-fun b!3676448 () Bool)

(declare-fun tp!1118071 () Bool)

(declare-fun tp!1118072 () Bool)

(assert (=> b!3676448 (= e!2276482 (and tp!1118071 tp!1118072))))

(declare-fun b!3676449 () Bool)

(declare-fun tp!1118070 () Bool)

(assert (=> b!3676449 (= e!2276482 tp!1118070)))

(assert (=> b!3675547 (= tp!1117965 e!2276482)))

(assert (= (and b!3675547 ((_ is ElementMatch!10593) (regex!5834 anOtherTypeRule!33))) b!3676447))

(assert (= (and b!3675547 ((_ is Concat!16658) (regex!5834 anOtherTypeRule!33))) b!3676448))

(assert (= (and b!3675547 ((_ is Star!10593) (regex!5834 anOtherTypeRule!33))) b!3676449))

(assert (= (and b!3675547 ((_ is Union!10593) (regex!5834 anOtherTypeRule!33))) b!3676450))

(declare-fun b_lambda!109175 () Bool)

(assert (= b_lambda!109173 (or (and b!3675580 b_free!97279 (= (toChars!7989 (transformation!5834 (h!44191 rules!3307))) (toChars!7989 (transformation!5834 (rule!8664 token!511))))) (and b!3675589 b_free!97271) (and b!3676423 b_free!97287 (= (toChars!7989 (transformation!5834 (h!44191 (t!300090 rules!3307)))) (toChars!7989 (transformation!5834 (rule!8664 token!511))))) (and b!3675567 b_free!97275 (= (toChars!7989 (transformation!5834 anOtherTypeRule!33)) (toChars!7989 (transformation!5834 (rule!8664 token!511))))) (and b!3675559 b_free!97267 (= (toChars!7989 (transformation!5834 rule!403)) (toChars!7989 (transformation!5834 (rule!8664 token!511))))) b_lambda!109175)))

(declare-fun b_lambda!109177 () Bool)

(assert (= b_lambda!109137 (or (and b!3675580 b_free!97279 (= (toChars!7989 (transformation!5834 (h!44191 rules!3307))) (toChars!7989 (transformation!5834 (rule!8664 token!511))))) (and b!3675589 b_free!97271) (and b!3676423 b_free!97287 (= (toChars!7989 (transformation!5834 (h!44191 (t!300090 rules!3307)))) (toChars!7989 (transformation!5834 (rule!8664 token!511))))) (and b!3675567 b_free!97275 (= (toChars!7989 (transformation!5834 anOtherTypeRule!33)) (toChars!7989 (transformation!5834 (rule!8664 token!511))))) (and b!3675559 b_free!97267 (= (toChars!7989 (transformation!5834 rule!403)) (toChars!7989 (transformation!5834 (rule!8664 token!511))))) b_lambda!109177)))

(check-sat (not b!3676444) (not bm!266205) (not b!3675966) (not b!3676083) (not b!3676146) (not b!3676090) (not b_lambda!109147) (not b!3676150) (not b!3676023) (not b!3676380) (not b!3676372) (not b!3675603) (not bm!266204) (not b!3676445) (not b!3676371) (not tb!212997) (not b!3675971) (not b!3676386) (not b!3676209) (not d!1079080) (not d!1079402) (not b!3676439) (not d!1079210) (not b!3676026) (not d!1079076) (not b!3676449) (not b!3675710) (not b!3676177) (not b!3676391) (not b!3676037) (not b!3675972) (not b!3676378) (not b!3676114) (not bm!266201) b_and!274255 (not b!3676020) (not b!3676170) (not b!3676377) (not b!3676101) (not b!3676033) b_and!274259 (not b_next!97983) b_and!274265 (not b_next!97979) (not bm!266209) (not bm!266194) (not b!3676113) (not b!3676075) (not d!1079084) (not d!1079414) (not b!3675645) (not b!3675643) (not bm!266234) (not b!3676202) (not b!3676450) (not b!3675636) b_and!274197 (not d!1079072) (not bm!266206) b_and!274261 (not b!3676065) (not b!3676387) (not b!3676385) (not b!3675635) (not d!1079246) (not d!1079070) (not b!3676147) (not b!3676383) b_and!274201 (not bm!266178) b_and!274263 (not b!3676024) (not b_next!97977) (not b_next!97989) (not b!3676048) (not b!3676397) (not d!1079412) (not d!1079130) (not b!3676142) (not b!3675773) (not bm!266203) (not d!1079270) (not b!3675990) (not b!3676143) (not d!1079116) (not b!3675983) (not b!3676382) (not b!3676102) (not d!1079280) (not tb!212957) (not b!3675689) (not d!1079406) (not b!3676021) (not b!3676381) (not d!1079234) (not b!3676068) (not d!1079226) (not b!3676034) (not b_lambda!109141) (not d!1079426) (not b!3676421) (not d!1079300) (not d!1079096) (not b!3676022) (not b!3676446) (not b!3675696) (not b!3676376) (not d!1079404) (not d!1079242) (not b!3676437) (not b!3675702) (not d!1079420) (not b!3676076) (not d!1079146) (not b!3676436) (not b_lambda!109151) (not d!1079392) (not d!1079408) (not d!1079238) (not b_next!97969) (not d!1079400) (not b!3675765) (not b!3675989) (not b!3675651) (not d!1079276) (not b!3676144) (not b!3675766) (not bm!266235) (not b!3676052) (not d!1079138) (not b!3676442) (not b_lambda!109175) (not b!3676174) (not b!3676395) (not b_lambda!109149) (not d!1079214) (not b!3675982) (not d!1079264) b_and!274257 (not d!1079282) (not d!1079114) (not b!3675632) (not b_lambda!109155) (not d!1079262) (not d!1079232) (not b!3675762) (not b!3675775) (not b!3676394) (not d!1079106) tp_is_empty!18269 (not d!1079248) (not b_lambda!109153) (not bm!266233) (not b!3676149) (not b!3676072) (not d!1079268) (not b!3675977) (not b!3675695) (not b!3676025) (not tb!213005) (not b!3676370) (not b!3676390) (not d!1079252) (not d!1079222) (not b!3676115) (not b!3676435) (not b!3676379) (not b!3676440) (not d!1079078) (not b_next!97975) (not d!1079110) (not b!3675779) (not b!3676066) (not bm!266231) (not d!1079244) (not b!3676082) (not d!1079218) (not b_next!97973) (not d!1079074) (not b!3676179) (not b!3676422) (not b!3676085) (not b!3675992) (not b!3676448) (not bm!266191) (not b_lambda!109177) (not d!1079322) (not b!3676145) (not d!1079250) (not d!1079100) (not d!1079422) (not b!3676027) (not b!3676201) (not d!1079428) (not b_next!97971) (not d!1079254) (not d!1079208) (not b!3675979) b_and!274195 (not d!1079398) (not tb!212965) (not d!1079220) (not d!1079316) (not b!3676071) (not b!3676175) (not b!3676208) (not b!3676069) (not b!3676178) (not d!1079212) b_and!274199 (not b_next!97981) (not d!1079326) (not d!1079286) (not b!3675772) (not d!1079258) (not d!1079302) (not b!3675708) (not bm!266192) (not b!3676412) (not d!1079118) (not tb!212989) (not d!1079134) (not tb!212973) (not b!3676407) (not d!1079410) (not b!3675642) (not b!3676441) (not b!3675701) (not b_next!97991) (not b!3676375) (not d!1079206) (not b_lambda!109143) (not bm!266193) (not d!1079272))
(check-sat b_and!274255 b_and!274197 b_and!274261 (not b_next!97969) b_and!274257 (not b_next!97975) (not b_next!97973) (not b_next!97991) b_and!274259 (not b_next!97983) b_and!274265 (not b_next!97979) b_and!274201 b_and!274263 (not b_next!97977) (not b_next!97989) (not b_next!97971) b_and!274195 b_and!274199 (not b_next!97981))
