; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131508 () Bool)

(assert start!131508)

(declare-fun b!1424201 () Bool)

(declare-fun e!909271 () Bool)

(declare-datatypes ((C!7984 0))(
  ( (C!7985 (val!4562 Int)) )
))
(declare-datatypes ((List!14846 0))(
  ( (Nil!14780) (Cons!14780 (h!20181 C!7984) (t!124697 List!14846)) )
))
(declare-datatypes ((IArray!10013 0))(
  ( (IArray!10014 (innerList!5064 List!14846)) )
))
(declare-datatypes ((Conc!5004 0))(
  ( (Node!5004 (left!12601 Conc!5004) (right!12931 Conc!5004) (csize!10238 Int) (cheight!5215 Int)) (Leaf!7500 (xs!7733 IArray!10013) (csize!10239 Int)) (Empty!5004) )
))
(declare-datatypes ((BalanceConc!9948 0))(
  ( (BalanceConc!9949 (c!234102 Conc!5004)) )
))
(declare-datatypes ((List!14847 0))(
  ( (Nil!14781) (Cons!14781 (h!20182 (_ BitVec 16)) (t!124698 List!14847)) )
))
(declare-datatypes ((TokenValue!2679 0))(
  ( (FloatLiteralValue!5358 (text!19198 List!14847)) (TokenValueExt!2678 (__x!9156 Int)) (Broken!13395 (value!83408 List!14847)) (Object!2744) (End!2679) (Def!2679) (Underscore!2679) (Match!2679) (Else!2679) (Error!2679) (Case!2679) (If!2679) (Extends!2679) (Abstract!2679) (Class!2679) (Val!2679) (DelimiterValue!5358 (del!2739 List!14847)) (KeywordValue!2685 (value!83409 List!14847)) (CommentValue!5358 (value!83410 List!14847)) (WhitespaceValue!5358 (value!83411 List!14847)) (IndentationValue!2679 (value!83412 List!14847)) (String!17650) (Int32!2679) (Broken!13396 (value!83413 List!14847)) (Boolean!2680) (Unit!22267) (OperatorValue!2682 (op!2739 List!14847)) (IdentifierValue!5358 (value!83414 List!14847)) (IdentifierValue!5359 (value!83415 List!14847)) (WhitespaceValue!5359 (value!83416 List!14847)) (True!5358) (False!5358) (Broken!13397 (value!83417 List!14847)) (Broken!13398 (value!83418 List!14847)) (True!5359) (RightBrace!2679) (RightBracket!2679) (Colon!2679) (Null!2679) (Comma!2679) (LeftBracket!2679) (False!5359) (LeftBrace!2679) (ImaginaryLiteralValue!2679 (text!19199 List!14847)) (StringLiteralValue!8037 (value!83419 List!14847)) (EOFValue!2679 (value!83420 List!14847)) (IdentValue!2679 (value!83421 List!14847)) (DelimiterValue!5359 (value!83422 List!14847)) (DedentValue!2679 (value!83423 List!14847)) (NewLineValue!2679 (value!83424 List!14847)) (IntegerValue!8037 (value!83425 (_ BitVec 32)) (text!19200 List!14847)) (IntegerValue!8038 (value!83426 Int) (text!19201 List!14847)) (Times!2679) (Or!2679) (Equal!2679) (Minus!2679) (Broken!13399 (value!83427 List!14847)) (And!2679) (Div!2679) (LessEqual!2679) (Mod!2679) (Concat!6582) (Not!2679) (Plus!2679) (SpaceValue!2679 (value!83428 List!14847)) (IntegerValue!8039 (value!83429 Int) (text!19202 List!14847)) (StringLiteralValue!8038 (text!19203 List!14847)) (FloatLiteralValue!5359 (text!19204 List!14847)) (BytesLiteralValue!2679 (value!83430 List!14847)) (CommentValue!5359 (value!83431 List!14847)) (StringLiteralValue!8039 (value!83432 List!14847)) (ErrorTokenValue!2679 (msg!2740 List!14847)) )
))
(declare-datatypes ((Regex!3903 0))(
  ( (ElementMatch!3903 (c!234103 C!7984)) (Concat!6583 (regOne!8318 Regex!3903) (regTwo!8318 Regex!3903)) (EmptyExpr!3903) (Star!3903 (reg!4232 Regex!3903)) (EmptyLang!3903) (Union!3903 (regOne!8319 Regex!3903) (regTwo!8319 Regex!3903)) )
))
(declare-datatypes ((String!17651 0))(
  ( (String!17652 (value!83433 String)) )
))
(declare-datatypes ((TokenValueInjection!5018 0))(
  ( (TokenValueInjection!5019 (toValue!3888 Int) (toChars!3747 Int)) )
))
(declare-datatypes ((Rule!4978 0))(
  ( (Rule!4979 (regex!2589 Regex!3903) (tag!2851 String!17651) (isSeparator!2589 Bool) (transformation!2589 TokenValueInjection!5018)) )
))
(declare-datatypes ((Token!4840 0))(
  ( (Token!4841 (value!83434 TokenValue!2679) (rule!4352 Rule!4978) (size!12130 Int) (originalCharacters!3451 List!14846)) )
))
(declare-datatypes ((List!14848 0))(
  ( (Nil!14782) (Cons!14782 (h!20183 Token!4840) (t!124699 List!14848)) )
))
(declare-datatypes ((IArray!10015 0))(
  ( (IArray!10016 (innerList!5065 List!14848)) )
))
(declare-datatypes ((Conc!5005 0))(
  ( (Node!5005 (left!12602 Conc!5005) (right!12932 Conc!5005) (csize!10240 Int) (cheight!5216 Int)) (Leaf!7501 (xs!7734 IArray!10015) (csize!10241 Int)) (Empty!5005) )
))
(declare-datatypes ((BalanceConc!9950 0))(
  ( (BalanceConc!9951 (c!234104 Conc!5005)) )
))
(declare-datatypes ((List!14849 0))(
  ( (Nil!14783) (Cons!14783 (h!20184 Rule!4978) (t!124700 List!14849)) )
))
(declare-datatypes ((PrintableTokens!960 0))(
  ( (PrintableTokens!961 (rules!11228 List!14849) (tokens!1918 BalanceConc!9950)) )
))
(declare-fun other!32 () PrintableTokens!960)

(declare-fun tp!403795 () Bool)

(declare-fun inv!19600 (Conc!5005) Bool)

(assert (=> b!1424201 (= e!909271 (and (inv!19600 (c!234104 (tokens!1918 other!32))) tp!403795))))

(declare-fun res!644894 () Bool)

(declare-fun e!909269 () Bool)

(assert (=> start!131508 (=> (not res!644894) (not e!909269))))

(declare-fun thiss!10022 () PrintableTokens!960)

(assert (=> start!131508 (= res!644894 (= (rules!11228 thiss!10022) (rules!11228 other!32)))))

(assert (=> start!131508 e!909269))

(declare-fun e!909273 () Bool)

(declare-fun inv!19601 (PrintableTokens!960) Bool)

(assert (=> start!131508 (and (inv!19601 thiss!10022) e!909273)))

(declare-fun e!909270 () Bool)

(assert (=> start!131508 (and (inv!19601 other!32) e!909270)))

(declare-fun b!1424202 () Bool)

(declare-fun res!644893 () Bool)

(declare-fun e!909275 () Bool)

(assert (=> b!1424202 (=> (not res!644893) (not e!909275))))

(declare-fun isEmpty!9145 (BalanceConc!9950) Bool)

(assert (=> b!1424202 (= res!644893 (not (isEmpty!9145 (tokens!1918 thiss!10022))))))

(declare-fun b!1424203 () Bool)

(assert (=> b!1424203 (= e!909269 e!909275)))

(declare-fun res!644895 () Bool)

(assert (=> b!1424203 (=> (not res!644895) (not e!909275))))

(assert (=> b!1424203 (= res!644895 (not (isEmpty!9145 (tokens!1918 other!32))))))

(declare-datatypes ((Unit!22268 0))(
  ( (Unit!22269) )
))
(declare-fun lt!482941 () Unit!22268)

(declare-fun lemmaInvariant!285 (PrintableTokens!960) Unit!22268)

(assert (=> b!1424203 (= lt!482941 (lemmaInvariant!285 thiss!10022))))

(declare-fun lt!482939 () Unit!22268)

(assert (=> b!1424203 (= lt!482939 (lemmaInvariant!285 other!32))))

(declare-fun b!1424204 () Bool)

(declare-fun e!909274 () Bool)

(assert (=> b!1424204 (= e!909275 (not e!909274))))

(declare-fun res!644896 () Bool)

(assert (=> b!1424204 (=> res!644896 e!909274)))

(declare-fun isEmpty!9146 (List!14849) Bool)

(assert (=> b!1424204 (= res!644896 (isEmpty!9146 (rules!11228 thiss!10022)))))

(declare-fun lt!482937 () Token!4840)

(declare-datatypes ((LexerInterface!2253 0))(
  ( (LexerInterfaceExt!2250 (__x!9157 Int)) (Lexer!2251) )
))
(declare-fun rulesProduceIndividualToken!1186 (LexerInterface!2253 List!14849 Token!4840) Bool)

(assert (=> b!1424204 (rulesProduceIndividualToken!1186 Lexer!2251 (rules!11228 thiss!10022) lt!482937)))

(declare-fun lt!482942 () List!14848)

(declare-fun lt!482944 () Unit!22268)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!371 (LexerInterface!2253 List!14849 List!14848 Token!4840) Unit!22268)

(assert (=> b!1424204 (= lt!482944 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!371 Lexer!2251 (rules!11228 thiss!10022) lt!482942 lt!482937))))

(declare-fun head!2829 (BalanceConc!9950) Token!4840)

(assert (=> b!1424204 (= lt!482937 (head!2829 (tokens!1918 other!32)))))

(declare-fun list!5865 (BalanceConc!9950) List!14848)

(assert (=> b!1424204 (= lt!482942 (list!5865 (tokens!1918 other!32)))))

(declare-fun lt!482938 () Token!4840)

(assert (=> b!1424204 (rulesProduceIndividualToken!1186 Lexer!2251 (rules!11228 thiss!10022) lt!482938)))

(declare-fun lt!482936 () List!14848)

(declare-fun lt!482943 () Unit!22268)

(assert (=> b!1424204 (= lt!482943 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!371 Lexer!2251 (rules!11228 thiss!10022) lt!482936 lt!482938))))

(declare-fun last!107 (BalanceConc!9950) Token!4840)

(assert (=> b!1424204 (= lt!482938 (last!107 (tokens!1918 thiss!10022)))))

(assert (=> b!1424204 (= lt!482936 (list!5865 (tokens!1918 thiss!10022)))))

(declare-fun b!1424205 () Bool)

(declare-fun e!909272 () Bool)

(declare-fun tp!403797 () Bool)

(assert (=> b!1424205 (= e!909272 (and (inv!19600 (c!234104 (tokens!1918 thiss!10022))) tp!403797))))

(declare-fun b!1424206 () Bool)

(declare-fun tp!403798 () Bool)

(declare-fun inv!19602 (BalanceConc!9950) Bool)

(assert (=> b!1424206 (= e!909270 (and tp!403798 (inv!19602 (tokens!1918 other!32)) e!909271))))

(declare-fun tp!403796 () Bool)

(declare-fun b!1424207 () Bool)

(assert (=> b!1424207 (= e!909273 (and tp!403796 (inv!19602 (tokens!1918 thiss!10022)) e!909272))))

(declare-fun b!1424208 () Bool)

(assert (=> b!1424208 (= e!909274 true)))

(declare-fun lt!482940 () Bool)

(declare-fun rulesInvariant!2103 (LexerInterface!2253 List!14849) Bool)

(assert (=> b!1424208 (= lt!482940 (rulesInvariant!2103 Lexer!2251 (rules!11228 thiss!10022)))))

(assert (= (and start!131508 res!644894) b!1424203))

(assert (= (and b!1424203 res!644895) b!1424202))

(assert (= (and b!1424202 res!644893) b!1424204))

(assert (= (and b!1424204 (not res!644896)) b!1424208))

(assert (= b!1424207 b!1424205))

(assert (= start!131508 b!1424207))

(assert (= b!1424206 b!1424201))

(assert (= start!131508 b!1424206))

(declare-fun m!1617677 () Bool)

(assert (=> start!131508 m!1617677))

(declare-fun m!1617679 () Bool)

(assert (=> start!131508 m!1617679))

(declare-fun m!1617681 () Bool)

(assert (=> b!1424207 m!1617681))

(declare-fun m!1617683 () Bool)

(assert (=> b!1424201 m!1617683))

(declare-fun m!1617685 () Bool)

(assert (=> b!1424202 m!1617685))

(declare-fun m!1617687 () Bool)

(assert (=> b!1424205 m!1617687))

(declare-fun m!1617689 () Bool)

(assert (=> b!1424203 m!1617689))

(declare-fun m!1617691 () Bool)

(assert (=> b!1424203 m!1617691))

(declare-fun m!1617693 () Bool)

(assert (=> b!1424203 m!1617693))

(declare-fun m!1617695 () Bool)

(assert (=> b!1424204 m!1617695))

(declare-fun m!1617697 () Bool)

(assert (=> b!1424204 m!1617697))

(declare-fun m!1617699 () Bool)

(assert (=> b!1424204 m!1617699))

(declare-fun m!1617701 () Bool)

(assert (=> b!1424204 m!1617701))

(declare-fun m!1617703 () Bool)

(assert (=> b!1424204 m!1617703))

(declare-fun m!1617705 () Bool)

(assert (=> b!1424204 m!1617705))

(declare-fun m!1617707 () Bool)

(assert (=> b!1424204 m!1617707))

(declare-fun m!1617709 () Bool)

(assert (=> b!1424204 m!1617709))

(declare-fun m!1617711 () Bool)

(assert (=> b!1424204 m!1617711))

(declare-fun m!1617713 () Bool)

(assert (=> b!1424206 m!1617713))

(declare-fun m!1617715 () Bool)

(assert (=> b!1424208 m!1617715))

(check-sat (not b!1424205) (not b!1424204) (not b!1424201) (not b!1424203) (not start!131508) (not b!1424202) (not b!1424207) (not b!1424208) (not b!1424206))
(check-sat)
