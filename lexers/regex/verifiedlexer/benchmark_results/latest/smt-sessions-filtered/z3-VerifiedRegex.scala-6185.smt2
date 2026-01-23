; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299254 () Bool)

(assert start!299254)

(declare-fun b!3190159 () Bool)

(declare-fun b_free!84337 () Bool)

(declare-fun b_next!85041 () Bool)

(assert (=> b!3190159 (= b_free!84337 (not b_next!85041))))

(declare-fun tp!1008462 () Bool)

(declare-fun b_and!211347 () Bool)

(assert (=> b!3190159 (= tp!1008462 b_and!211347)))

(declare-fun b_free!84339 () Bool)

(declare-fun b_next!85043 () Bool)

(assert (=> b!3190159 (= b_free!84339 (not b_next!85043))))

(declare-fun tp!1008461 () Bool)

(declare-fun b_and!211349 () Bool)

(assert (=> b!3190159 (= tp!1008461 b_and!211349)))

(declare-fun b!3190177 () Bool)

(declare-fun b_free!84341 () Bool)

(declare-fun b_next!85045 () Bool)

(assert (=> b!3190177 (= b_free!84341 (not b_next!85045))))

(declare-fun tp!1008460 () Bool)

(declare-fun b_and!211351 () Bool)

(assert (=> b!3190177 (= tp!1008460 b_and!211351)))

(declare-fun b_free!84343 () Bool)

(declare-fun b_next!85047 () Bool)

(assert (=> b!3190177 (= b_free!84343 (not b_next!85047))))

(declare-fun tp!1008464 () Bool)

(declare-fun b_and!211353 () Bool)

(assert (=> b!3190177 (= tp!1008464 b_and!211353)))

(declare-fun b!3190156 () Bool)

(declare-fun b_free!84345 () Bool)

(declare-fun b_next!85049 () Bool)

(assert (=> b!3190156 (= b_free!84345 (not b_next!85049))))

(declare-fun tp!1008463 () Bool)

(declare-fun b_and!211355 () Bool)

(assert (=> b!3190156 (= tp!1008463 b_and!211355)))

(declare-fun b_free!84347 () Bool)

(declare-fun b_next!85051 () Bool)

(assert (=> b!3190156 (= b_free!84347 (not b_next!85051))))

(declare-fun tp!1008469 () Bool)

(declare-fun b_and!211357 () Bool)

(assert (=> b!3190156 (= tp!1008469 b_and!211357)))

(declare-fun b!3190153 () Bool)

(declare-fun e!1988156 () Bool)

(declare-datatypes ((C!20004 0))(
  ( (C!20005 (val!12050 Int)) )
))
(declare-datatypes ((Regex!9909 0))(
  ( (ElementMatch!9909 (c!535752 C!20004)) (Concat!15289 (regOne!20330 Regex!9909) (regTwo!20330 Regex!9909)) (EmptyExpr!9909) (Star!9909 (reg!10238 Regex!9909)) (EmptyLang!9909) (Union!9909 (regOne!20331 Regex!9909) (regTwo!20331 Regex!9909)) )
))
(declare-datatypes ((List!35992 0))(
  ( (Nil!35868) (Cons!35868 (h!41288 (_ BitVec 16)) (t!236135 List!35992)) )
))
(declare-datatypes ((TokenValue!5380 0))(
  ( (FloatLiteralValue!10760 (text!38105 List!35992)) (TokenValueExt!5379 (__x!22977 Int)) (Broken!26900 (value!167209 List!35992)) (Object!5503) (End!5380) (Def!5380) (Underscore!5380) (Match!5380) (Else!5380) (Error!5380) (Case!5380) (If!5380) (Extends!5380) (Abstract!5380) (Class!5380) (Val!5380) (DelimiterValue!10760 (del!5440 List!35992)) (KeywordValue!5386 (value!167210 List!35992)) (CommentValue!10760 (value!167211 List!35992)) (WhitespaceValue!10760 (value!167212 List!35992)) (IndentationValue!5380 (value!167213 List!35992)) (String!40233) (Int32!5380) (Broken!26901 (value!167214 List!35992)) (Boolean!5381) (Unit!50299) (OperatorValue!5383 (op!5440 List!35992)) (IdentifierValue!10760 (value!167215 List!35992)) (IdentifierValue!10761 (value!167216 List!35992)) (WhitespaceValue!10761 (value!167217 List!35992)) (True!10760) (False!10760) (Broken!26902 (value!167218 List!35992)) (Broken!26903 (value!167219 List!35992)) (True!10761) (RightBrace!5380) (RightBracket!5380) (Colon!5380) (Null!5380) (Comma!5380) (LeftBracket!5380) (False!10761) (LeftBrace!5380) (ImaginaryLiteralValue!5380 (text!38106 List!35992)) (StringLiteralValue!16140 (value!167220 List!35992)) (EOFValue!5380 (value!167221 List!35992)) (IdentValue!5380 (value!167222 List!35992)) (DelimiterValue!10761 (value!167223 List!35992)) (DedentValue!5380 (value!167224 List!35992)) (NewLineValue!5380 (value!167225 List!35992)) (IntegerValue!16140 (value!167226 (_ BitVec 32)) (text!38107 List!35992)) (IntegerValue!16141 (value!167227 Int) (text!38108 List!35992)) (Times!5380) (Or!5380) (Equal!5380) (Minus!5380) (Broken!26904 (value!167228 List!35992)) (And!5380) (Div!5380) (LessEqual!5380) (Mod!5380) (Concat!15290) (Not!5380) (Plus!5380) (SpaceValue!5380 (value!167229 List!35992)) (IntegerValue!16142 (value!167230 Int) (text!38109 List!35992)) (StringLiteralValue!16141 (text!38110 List!35992)) (FloatLiteralValue!10761 (text!38111 List!35992)) (BytesLiteralValue!5380 (value!167231 List!35992)) (CommentValue!10761 (value!167232 List!35992)) (StringLiteralValue!16142 (value!167233 List!35992)) (ErrorTokenValue!5380 (msg!5441 List!35992)) )
))
(declare-datatypes ((List!35993 0))(
  ( (Nil!35869) (Cons!35869 (h!41289 C!20004) (t!236136 List!35993)) )
))
(declare-datatypes ((IArray!21355 0))(
  ( (IArray!21356 (innerList!10735 List!35993)) )
))
(declare-datatypes ((Conc!10675 0))(
  ( (Node!10675 (left!27892 Conc!10675) (right!28222 Conc!10675) (csize!21580 Int) (cheight!10886 Int)) (Leaf!16861 (xs!13793 IArray!21355) (csize!21581 Int)) (Empty!10675) )
))
(declare-datatypes ((BalanceConc!20964 0))(
  ( (BalanceConc!20965 (c!535753 Conc!10675)) )
))
(declare-datatypes ((String!40234 0))(
  ( (String!40235 (value!167234 String)) )
))
(declare-datatypes ((TokenValueInjection!10188 0))(
  ( (TokenValueInjection!10189 (toValue!7214 Int) (toChars!7073 Int)) )
))
(declare-datatypes ((Rule!10100 0))(
  ( (Rule!10101 (regex!5150 Regex!9909) (tag!5668 String!40234) (isSeparator!5150 Bool) (transformation!5150 TokenValueInjection!10188)) )
))
(declare-datatypes ((Token!9666 0))(
  ( (Token!9667 (value!167235 TokenValue!5380) (rule!7582 Rule!10100) (size!27056 Int) (originalCharacters!5864 List!35993)) )
))
(declare-datatypes ((List!35994 0))(
  ( (Nil!35870) (Cons!35870 (h!41290 Token!9666) (t!236137 List!35994)) )
))
(declare-fun tokens!494 () List!35994)

(declare-fun lt!1074161 () Rule!10100)

(assert (=> b!3190153 (= e!1988156 (= (rule!7582 (h!41290 tokens!494)) lt!1074161))))

(declare-fun res!1297387 () Bool)

(declare-fun e!1988172 () Bool)

(assert (=> start!299254 (=> (not res!1297387) (not e!1988172))))

(declare-datatypes ((LexerInterface!4739 0))(
  ( (LexerInterfaceExt!4736 (__x!22978 Int)) (Lexer!4737) )
))
(declare-fun thiss!18206 () LexerInterface!4739)

(get-info :version)

(assert (=> start!299254 (= res!1297387 ((_ is Lexer!4737) thiss!18206))))

(assert (=> start!299254 e!1988172))

(assert (=> start!299254 true))

(declare-fun e!1988154 () Bool)

(assert (=> start!299254 e!1988154))

(declare-fun separatorToken!241 () Token!9666)

(declare-fun e!1988148 () Bool)

(declare-fun inv!48722 (Token!9666) Bool)

(assert (=> start!299254 (and (inv!48722 separatorToken!241) e!1988148)))

(declare-fun e!1988164 () Bool)

(assert (=> start!299254 e!1988164))

(declare-fun b!3190154 () Bool)

(declare-fun res!1297395 () Bool)

(declare-fun e!1988147 () Bool)

(assert (=> b!3190154 (=> res!1297395 e!1988147)))

(declare-datatypes ((List!35995 0))(
  ( (Nil!35871) (Cons!35871 (h!41291 Rule!10100) (t!236138 List!35995)) )
))
(declare-fun rules!2135 () List!35995)

(declare-fun rulesProduceIndividualToken!2231 (LexerInterface!4739 List!35995 Token!9666) Bool)

(assert (=> b!3190154 (= res!1297395 (not (rulesProduceIndividualToken!2231 thiss!18206 rules!2135 (h!41290 tokens!494))))))

(declare-fun b!3190155 () Bool)

(declare-datatypes ((Unit!50300 0))(
  ( (Unit!50301) )
))
(declare-fun e!1988160 () Unit!50300)

(declare-fun Unit!50302 () Unit!50300)

(assert (=> b!3190155 (= e!1988160 Unit!50302)))

(declare-fun e!1988158 () Bool)

(assert (=> b!3190156 (= e!1988158 (and tp!1008463 tp!1008469))))

(declare-fun b!3190157 () Bool)

(declare-fun e!1988155 () Bool)

(declare-fun e!1988167 () Bool)

(assert (=> b!3190157 (= e!1988155 e!1988167)))

(declare-fun res!1297397 () Bool)

(assert (=> b!3190157 (=> res!1297397 e!1988167)))

(declare-datatypes ((tuple2!35256 0))(
  ( (tuple2!35257 (_1!20762 List!35994) (_2!20762 List!35993)) )
))
(declare-fun e!1988171 () tuple2!35256)

(declare-fun lt!1074150 () List!35993)

(declare-fun lexList!1289 (LexerInterface!4739 List!35995 List!35993) tuple2!35256)

(assert (=> b!3190157 (= res!1297397 (not (= e!1988171 (lexList!1289 thiss!18206 rules!2135 lt!1074150))))))

(declare-fun c!535751 () Bool)

(declare-datatypes ((tuple2!35258 0))(
  ( (tuple2!35259 (_1!20763 Token!9666) (_2!20763 List!35993)) )
))
(declare-datatypes ((Option!7033 0))(
  ( (None!7032) (Some!7032 (v!35532 tuple2!35258)) )
))
(declare-fun lt!1074147 () Option!7033)

(assert (=> b!3190157 (= c!535751 ((_ is Some!7032) lt!1074147))))

(declare-fun maxPrefix!2417 (LexerInterface!4739 List!35995 List!35993) Option!7033)

(assert (=> b!3190157 (= lt!1074147 (maxPrefix!2417 thiss!18206 rules!2135 lt!1074150))))

(declare-fun lt!1074138 () List!35993)

(declare-fun lt!1074153 () List!35993)

(assert (=> b!3190157 (= (maxPrefix!2417 thiss!18206 rules!2135 lt!1074153) (Some!7032 (tuple2!35259 (h!41290 tokens!494) lt!1074138)))))

(declare-fun lt!1074145 () Unit!50300)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!128 (LexerInterface!4739 List!35995 Token!9666 Rule!10100 List!35993 Rule!10100) Unit!50300)

(assert (=> b!3190157 (= lt!1074145 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!128 thiss!18206 rules!2135 (h!41290 tokens!494) (rule!7582 (h!41290 tokens!494)) lt!1074138 (rule!7582 separatorToken!241)))))

(declare-fun lt!1074162 () C!20004)

(declare-fun contains!6375 (List!35993 C!20004) Bool)

(declare-fun usedCharacters!494 (Regex!9909) List!35993)

(assert (=> b!3190157 (not (contains!6375 (usedCharacters!494 (regex!5150 (rule!7582 (h!41290 tokens!494)))) lt!1074162))))

(declare-fun lt!1074156 () Unit!50300)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!126 (LexerInterface!4739 List!35995 List!35995 Rule!10100 Rule!10100 C!20004) Unit!50300)

(assert (=> b!3190157 (= lt!1074156 (lemmaNonSepRuleNotContainsCharContainedInASepRule!126 thiss!18206 rules!2135 rules!2135 (rule!7582 (h!41290 tokens!494)) (rule!7582 separatorToken!241) lt!1074162))))

(declare-fun b!3190158 () Bool)

(declare-fun res!1297398 () Bool)

(declare-fun e!1988162 () Bool)

(assert (=> b!3190158 (=> (not res!1297398) (not e!1988162))))

(declare-fun lambda!116673 () Int)

(declare-fun forall!7282 (List!35994 Int) Bool)

(assert (=> b!3190158 (= res!1297398 (forall!7282 tokens!494 lambda!116673))))

(declare-fun e!1988166 () Bool)

(assert (=> b!3190159 (= e!1988166 (and tp!1008462 tp!1008461))))

(declare-fun b!3190160 () Bool)

(declare-fun e!1988150 () Bool)

(assert (=> b!3190160 (= e!1988150 e!1988155)))

(declare-fun res!1297390 () Bool)

(assert (=> b!3190160 (=> res!1297390 e!1988155)))

(declare-fun lt!1074140 () Bool)

(assert (=> b!3190160 (= res!1297390 lt!1074140)))

(declare-fun lt!1074142 () Unit!50300)

(assert (=> b!3190160 (= lt!1074142 e!1988160)))

(declare-fun c!535750 () Bool)

(assert (=> b!3190160 (= c!535750 lt!1074140)))

(assert (=> b!3190160 (= lt!1074140 (not (contains!6375 (usedCharacters!494 (regex!5150 (rule!7582 separatorToken!241))) lt!1074162)))))

(declare-fun head!6985 (List!35993) C!20004)

(assert (=> b!3190160 (= lt!1074162 (head!6985 lt!1074138))))

(declare-fun lt!1074148 () List!35993)

(declare-fun lt!1074137 () BalanceConc!20964)

(declare-fun maxPrefixOneRule!1544 (LexerInterface!4739 Rule!10100 List!35993) Option!7033)

(declare-fun apply!8088 (TokenValueInjection!10188 BalanceConc!20964) TokenValue!5380)

(declare-fun size!27057 (List!35993) Int)

(assert (=> b!3190160 (= (maxPrefixOneRule!1544 thiss!18206 (rule!7582 (h!41290 tokens!494)) lt!1074148) (Some!7032 (tuple2!35259 (Token!9667 (apply!8088 (transformation!5150 (rule!7582 (h!41290 tokens!494))) lt!1074137) (rule!7582 (h!41290 tokens!494)) (size!27057 lt!1074148) lt!1074148) Nil!35869)))))

(declare-fun lt!1074139 () Unit!50300)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!657 (LexerInterface!4739 List!35995 List!35993 List!35993 List!35993 Rule!10100) Unit!50300)

(assert (=> b!3190160 (= lt!1074139 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!657 thiss!18206 rules!2135 lt!1074148 lt!1074148 Nil!35869 (rule!7582 (h!41290 tokens!494))))))

(declare-fun e!1988170 () Bool)

(assert (=> b!3190160 e!1988170))

(declare-fun res!1297396 () Bool)

(assert (=> b!3190160 (=> (not res!1297396) (not e!1988170))))

(declare-datatypes ((Option!7034 0))(
  ( (None!7033) (Some!7033 (v!35533 Rule!10100)) )
))
(declare-fun lt!1074158 () Option!7034)

(declare-fun isDefined!5502 (Option!7034) Bool)

(assert (=> b!3190160 (= res!1297396 (isDefined!5502 lt!1074158))))

(declare-fun getRuleFromTag!879 (LexerInterface!4739 List!35995 String!40234) Option!7034)

(assert (=> b!3190160 (= lt!1074158 (getRuleFromTag!879 thiss!18206 rules!2135 (tag!5668 (rule!7582 separatorToken!241))))))

(declare-fun lt!1074152 () Unit!50300)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!879 (LexerInterface!4739 List!35995 List!35993 Token!9666) Unit!50300)

(assert (=> b!3190160 (= lt!1074152 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!879 thiss!18206 rules!2135 lt!1074138 separatorToken!241))))

(declare-fun e!1988152 () Bool)

(assert (=> b!3190160 e!1988152))

(declare-fun res!1297382 () Bool)

(assert (=> b!3190160 (=> (not res!1297382) (not e!1988152))))

(declare-fun lt!1074149 () Option!7034)

(assert (=> b!3190160 (= res!1297382 (isDefined!5502 lt!1074149))))

(assert (=> b!3190160 (= lt!1074149 (getRuleFromTag!879 thiss!18206 rules!2135 (tag!5668 (rule!7582 (h!41290 tokens!494)))))))

(declare-fun lt!1074157 () Unit!50300)

(assert (=> b!3190160 (= lt!1074157 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!879 thiss!18206 rules!2135 lt!1074148 (h!41290 tokens!494)))))

(declare-fun lt!1074143 () Unit!50300)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!800 (LexerInterface!4739 List!35995 List!35994 Token!9666) Unit!50300)

(assert (=> b!3190160 (= lt!1074143 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!800 thiss!18206 rules!2135 tokens!494 (h!41290 tokens!494)))))

(declare-fun isEmpty!20001 (List!35993) Bool)

(declare-fun getSuffix!1366 (List!35993 List!35993) List!35993)

(assert (=> b!3190160 (isEmpty!20001 (getSuffix!1366 lt!1074148 lt!1074148))))

(declare-fun lt!1074141 () Unit!50300)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!44 (List!35993) Unit!50300)

(assert (=> b!3190160 (= lt!1074141 (lemmaGetSuffixOnListWithItSelfIsEmpty!44 lt!1074148))))

(declare-fun e!1988161 () Bool)

(declare-fun e!1988151 () Bool)

(declare-fun b!3190161 () Bool)

(declare-fun tp!1008468 () Bool)

(declare-fun inv!48719 (String!40234) Bool)

(declare-fun inv!48723 (TokenValueInjection!10188) Bool)

(assert (=> b!3190161 (= e!1988151 (and tp!1008468 (inv!48719 (tag!5668 (rule!7582 (h!41290 tokens!494)))) (inv!48723 (transformation!5150 (rule!7582 (h!41290 tokens!494)))) e!1988161))))

(declare-fun b!3190162 () Bool)

(declare-fun e!1988144 () Bool)

(declare-fun lt!1074144 () Rule!10100)

(assert (=> b!3190162 (= e!1988144 (= (rule!7582 separatorToken!241) lt!1074144))))

(declare-fun b!3190163 () Bool)

(declare-fun res!1297385 () Bool)

(assert (=> b!3190163 (=> (not res!1297385) (not e!1988172))))

(declare-fun rulesInvariant!4136 (LexerInterface!4739 List!35995) Bool)

(assert (=> b!3190163 (= res!1297385 (rulesInvariant!4136 thiss!18206 rules!2135))))

(declare-fun b!3190164 () Bool)

(declare-fun e!1988165 () Bool)

(assert (=> b!3190164 (= e!1988165 e!1988150)))

(declare-fun res!1297393 () Bool)

(assert (=> b!3190164 (=> res!1297393 e!1988150)))

(assert (=> b!3190164 (= res!1297393 (not (= lt!1074150 lt!1074153)))))

(declare-fun ++!8588 (List!35993 List!35993) List!35993)

(assert (=> b!3190164 (= lt!1074153 (++!8588 lt!1074148 lt!1074138))))

(declare-fun lt!1074160 () BalanceConc!20964)

(declare-fun list!12740 (BalanceConc!20964) List!35993)

(assert (=> b!3190164 (= lt!1074150 (list!12740 lt!1074160))))

(declare-fun charsOf!3172 (Token!9666) BalanceConc!20964)

(assert (=> b!3190164 (= lt!1074138 (list!12740 (charsOf!3172 separatorToken!241)))))

(declare-datatypes ((IArray!21357 0))(
  ( (IArray!21358 (innerList!10736 List!35994)) )
))
(declare-datatypes ((Conc!10676 0))(
  ( (Node!10676 (left!27893 Conc!10676) (right!28223 Conc!10676) (csize!21582 Int) (cheight!10887 Int)) (Leaf!16862 (xs!13794 IArray!21357) (csize!21583 Int)) (Empty!10676) )
))
(declare-datatypes ((BalanceConc!20966 0))(
  ( (BalanceConc!20967 (c!535754 Conc!10676)) )
))
(declare-fun lt!1074155 () BalanceConc!20966)

(declare-fun printWithSeparatorToken!48 (LexerInterface!4739 BalanceConc!20966 Token!9666) BalanceConc!20964)

(assert (=> b!3190164 (= lt!1074160 (printWithSeparatorToken!48 thiss!18206 lt!1074155 separatorToken!241))))

(declare-fun b!3190165 () Bool)

(assert (=> b!3190165 (= e!1988172 e!1988162)))

(declare-fun res!1297391 () Bool)

(assert (=> b!3190165 (=> (not res!1297391) (not e!1988162))))

(declare-fun rulesProduceEachTokenIndividually!1190 (LexerInterface!4739 List!35995 BalanceConc!20966) Bool)

(assert (=> b!3190165 (= res!1297391 (rulesProduceEachTokenIndividually!1190 thiss!18206 rules!2135 lt!1074155))))

(declare-fun seqFromList!3379 (List!35994) BalanceConc!20966)

(assert (=> b!3190165 (= lt!1074155 (seqFromList!3379 tokens!494))))

(declare-fun b!3190166 () Bool)

(assert (=> b!3190166 (= e!1988152 e!1988156)))

(declare-fun res!1297402 () Bool)

(assert (=> b!3190166 (=> (not res!1297402) (not e!1988156))))

(declare-fun matchR!4567 (Regex!9909 List!35993) Bool)

(assert (=> b!3190166 (= res!1297402 (matchR!4567 (regex!5150 lt!1074161) lt!1074148))))

(declare-fun get!11422 (Option!7034) Rule!10100)

(assert (=> b!3190166 (= lt!1074161 (get!11422 lt!1074149))))

(declare-fun b!3190167 () Bool)

(declare-fun res!1297403 () Bool)

(assert (=> b!3190167 (=> (not res!1297403) (not e!1988162))))

(assert (=> b!3190167 (= res!1297403 (isSeparator!5150 (rule!7582 separatorToken!241)))))

(declare-fun b!3190168 () Bool)

(assert (=> b!3190168 (= e!1988167 true)))

(declare-fun lt!1074163 () List!35994)

(declare-fun filter!498 (List!35994 Int) List!35994)

(declare-fun list!12741 (BalanceConc!20966) List!35994)

(declare-datatypes ((tuple2!35260 0))(
  ( (tuple2!35261 (_1!20764 BalanceConc!20966) (_2!20764 BalanceConc!20964)) )
))
(declare-fun lex!2079 (LexerInterface!4739 List!35995 BalanceConc!20964) tuple2!35260)

(assert (=> b!3190168 (= lt!1074163 (filter!498 (list!12741 (_1!20764 (lex!2079 thiss!18206 rules!2135 (printWithSeparatorToken!48 thiss!18206 (BalanceConc!20967 Empty!10676) separatorToken!241)))) lambda!116673))))

(declare-fun b!3190169 () Bool)

(assert (=> b!3190169 (= e!1988171 (tuple2!35257 Nil!35870 lt!1074150))))

(assert (=> b!3190169 false))

(declare-fun b!3190170 () Bool)

(declare-fun res!1297384 () Bool)

(assert (=> b!3190170 (=> (not res!1297384) (not e!1988162))))

(assert (=> b!3190170 (= res!1297384 (and (not ((_ is Nil!35870) tokens!494)) ((_ is Nil!35870) (t!236137 tokens!494))))))

(declare-fun b!3190171 () Bool)

(declare-fun res!1297383 () Bool)

(assert (=> b!3190171 (=> (not res!1297383) (not e!1988172))))

(declare-fun isEmpty!20002 (List!35995) Bool)

(assert (=> b!3190171 (= res!1297383 (not (isEmpty!20002 rules!2135)))))

(declare-fun b!3190172 () Bool)

(declare-fun e!1988146 () Bool)

(assert (=> b!3190172 (= e!1988146 e!1988147)))

(declare-fun res!1297399 () Bool)

(assert (=> b!3190172 (=> res!1297399 e!1988147)))

(declare-fun lt!1074135 () List!35993)

(declare-fun lt!1074146 () List!35993)

(assert (=> b!3190172 (= res!1297399 (or (not (= lt!1074135 lt!1074148)) (not (= lt!1074146 lt!1074148))))))

(assert (=> b!3190172 (= lt!1074148 (list!12740 (charsOf!3172 (h!41290 tokens!494))))))

(declare-fun b!3190173 () Bool)

(declare-fun lt!1074151 () tuple2!35256)

(assert (=> b!3190173 (= e!1988171 (tuple2!35257 (Cons!35870 (_1!20763 (v!35532 lt!1074147)) (_1!20762 lt!1074151)) (_2!20762 lt!1074151)))))

(assert (=> b!3190173 (= lt!1074151 (lexList!1289 thiss!18206 rules!2135 (_2!20763 (v!35532 lt!1074147))))))

(declare-fun b!3190174 () Bool)

(declare-fun e!1988169 () Bool)

(assert (=> b!3190174 (= e!1988169 false)))

(declare-fun b!3190175 () Bool)

(declare-fun e!1988153 () Bool)

(assert (=> b!3190175 (= e!1988153 e!1988165)))

(declare-fun res!1297401 () Bool)

(assert (=> b!3190175 (=> res!1297401 e!1988165)))

(assert (=> b!3190175 (= res!1297401 (isSeparator!5150 (rule!7582 (h!41290 tokens!494))))))

(declare-fun lt!1074136 () Unit!50300)

(declare-fun forallContained!1133 (List!35994 Int Token!9666) Unit!50300)

(assert (=> b!3190175 (= lt!1074136 (forallContained!1133 tokens!494 lambda!116673 (h!41290 tokens!494)))))

(declare-fun e!1988168 () Bool)

(declare-fun b!3190176 () Bool)

(declare-fun tp!1008458 () Bool)

(assert (=> b!3190176 (= e!1988168 (and tp!1008458 (inv!48719 (tag!5668 (h!41291 rules!2135))) (inv!48723 (transformation!5150 (h!41291 rules!2135))) e!1988158))))

(assert (=> b!3190177 (= e!1988161 (and tp!1008460 tp!1008464))))

(declare-fun e!1988149 () Bool)

(declare-fun tp!1008470 () Bool)

(declare-fun b!3190178 () Bool)

(declare-fun inv!21 (TokenValue!5380) Bool)

(assert (=> b!3190178 (= e!1988148 (and (inv!21 (value!167235 separatorToken!241)) e!1988149 tp!1008470))))

(declare-fun b!3190179 () Bool)

(declare-fun tp!1008465 () Bool)

(assert (=> b!3190179 (= e!1988154 (and e!1988168 tp!1008465))))

(declare-fun b!3190180 () Bool)

(assert (=> b!3190180 (= e!1988147 e!1988153)))

(declare-fun res!1297392 () Bool)

(assert (=> b!3190180 (=> res!1297392 e!1988153)))

(declare-fun isEmpty!20003 (BalanceConc!20966) Bool)

(assert (=> b!3190180 (= res!1297392 (isEmpty!20003 (_1!20764 (lex!2079 thiss!18206 rules!2135 lt!1074137))))))

(declare-fun seqFromList!3380 (List!35993) BalanceConc!20964)

(assert (=> b!3190180 (= lt!1074137 (seqFromList!3380 lt!1074148))))

(declare-fun b!3190181 () Bool)

(assert (=> b!3190181 (= e!1988170 e!1988144)))

(declare-fun res!1297388 () Bool)

(assert (=> b!3190181 (=> (not res!1297388) (not e!1988144))))

(assert (=> b!3190181 (= res!1297388 (matchR!4567 (regex!5150 lt!1074144) lt!1074138))))

(assert (=> b!3190181 (= lt!1074144 (get!11422 lt!1074158))))

(declare-fun b!3190182 () Bool)

(declare-fun res!1297389 () Bool)

(assert (=> b!3190182 (=> (not res!1297389) (not e!1988162))))

(declare-fun sepAndNonSepRulesDisjointChars!1344 (List!35995 List!35995) Bool)

(assert (=> b!3190182 (= res!1297389 (sepAndNonSepRulesDisjointChars!1344 rules!2135 rules!2135))))

(declare-fun b!3190183 () Bool)

(assert (=> b!3190183 (= e!1988162 (not e!1988146))))

(declare-fun res!1297394 () Bool)

(assert (=> b!3190183 (=> res!1297394 e!1988146)))

(assert (=> b!3190183 (= res!1297394 (not (= lt!1074146 lt!1074135)))))

(declare-fun printList!1293 (LexerInterface!4739 List!35994) List!35993)

(assert (=> b!3190183 (= lt!1074135 (printList!1293 thiss!18206 (Cons!35870 (h!41290 tokens!494) Nil!35870)))))

(declare-fun lt!1074164 () BalanceConc!20964)

(assert (=> b!3190183 (= lt!1074146 (list!12740 lt!1074164))))

(declare-fun lt!1074154 () BalanceConc!20966)

(declare-fun printTailRec!1238 (LexerInterface!4739 BalanceConc!20966 Int BalanceConc!20964) BalanceConc!20964)

(assert (=> b!3190183 (= lt!1074164 (printTailRec!1238 thiss!18206 lt!1074154 0 (BalanceConc!20965 Empty!10675)))))

(declare-fun print!1806 (LexerInterface!4739 BalanceConc!20966) BalanceConc!20964)

(assert (=> b!3190183 (= lt!1074164 (print!1806 thiss!18206 lt!1074154))))

(declare-fun singletonSeq!2246 (Token!9666) BalanceConc!20966)

(assert (=> b!3190183 (= lt!1074154 (singletonSeq!2246 (h!41290 tokens!494)))))

(declare-fun b!3190184 () Bool)

(declare-fun tp!1008467 () Bool)

(assert (=> b!3190184 (= e!1988149 (and tp!1008467 (inv!48719 (tag!5668 (rule!7582 separatorToken!241))) (inv!48723 (transformation!5150 (rule!7582 separatorToken!241))) e!1988166))))

(declare-fun b!3190185 () Bool)

(declare-fun res!1297386 () Bool)

(assert (=> b!3190185 (=> (not res!1297386) (not e!1988162))))

(assert (=> b!3190185 (= res!1297386 (rulesProduceIndividualToken!2231 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun tp!1008459 () Bool)

(declare-fun e!1988142 () Bool)

(declare-fun b!3190186 () Bool)

(assert (=> b!3190186 (= e!1988142 (and (inv!21 (value!167235 (h!41290 tokens!494))) e!1988151 tp!1008459))))

(declare-fun b!3190187 () Bool)

(declare-fun tp!1008466 () Bool)

(assert (=> b!3190187 (= e!1988164 (and (inv!48722 (h!41290 tokens!494)) e!1988142 tp!1008466))))

(declare-fun b!3190188 () Bool)

(declare-fun Unit!50303 () Unit!50300)

(assert (=> b!3190188 (= e!1988160 Unit!50303)))

(declare-fun lt!1074159 () Unit!50300)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!348 (Regex!9909 List!35993 C!20004) Unit!50300)

(assert (=> b!3190188 (= lt!1074159 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!348 (regex!5150 (rule!7582 separatorToken!241)) lt!1074138 lt!1074162))))

(declare-fun res!1297400 () Bool)

(assert (=> b!3190188 (= res!1297400 (not (matchR!4567 (regex!5150 (rule!7582 separatorToken!241)) lt!1074138)))))

(assert (=> b!3190188 (=> (not res!1297400) (not e!1988169))))

(assert (=> b!3190188 e!1988169))

(assert (= (and start!299254 res!1297387) b!3190171))

(assert (= (and b!3190171 res!1297383) b!3190163))

(assert (= (and b!3190163 res!1297385) b!3190165))

(assert (= (and b!3190165 res!1297391) b!3190185))

(assert (= (and b!3190185 res!1297386) b!3190167))

(assert (= (and b!3190167 res!1297403) b!3190158))

(assert (= (and b!3190158 res!1297398) b!3190182))

(assert (= (and b!3190182 res!1297389) b!3190170))

(assert (= (and b!3190170 res!1297384) b!3190183))

(assert (= (and b!3190183 (not res!1297394)) b!3190172))

(assert (= (and b!3190172 (not res!1297399)) b!3190154))

(assert (= (and b!3190154 (not res!1297395)) b!3190180))

(assert (= (and b!3190180 (not res!1297392)) b!3190175))

(assert (= (and b!3190175 (not res!1297401)) b!3190164))

(assert (= (and b!3190164 (not res!1297393)) b!3190160))

(assert (= (and b!3190160 res!1297382) b!3190166))

(assert (= (and b!3190166 res!1297402) b!3190153))

(assert (= (and b!3190160 res!1297396) b!3190181))

(assert (= (and b!3190181 res!1297388) b!3190162))

(assert (= (and b!3190160 c!535750) b!3190188))

(assert (= (and b!3190160 (not c!535750)) b!3190155))

(assert (= (and b!3190188 res!1297400) b!3190174))

(assert (= (and b!3190160 (not res!1297390)) b!3190157))

(assert (= (and b!3190157 c!535751) b!3190173))

(assert (= (and b!3190157 (not c!535751)) b!3190169))

(assert (= (and b!3190157 (not res!1297397)) b!3190168))

(assert (= b!3190176 b!3190156))

(assert (= b!3190179 b!3190176))

(assert (= (and start!299254 ((_ is Cons!35871) rules!2135)) b!3190179))

(assert (= b!3190184 b!3190159))

(assert (= b!3190178 b!3190184))

(assert (= start!299254 b!3190178))

(assert (= b!3190161 b!3190177))

(assert (= b!3190186 b!3190161))

(assert (= b!3190187 b!3190186))

(assert (= (and start!299254 ((_ is Cons!35870) tokens!494)) b!3190187))

(declare-fun m!3449097 () Bool)

(assert (=> b!3190187 m!3449097))

(declare-fun m!3449099 () Bool)

(assert (=> b!3190161 m!3449099))

(declare-fun m!3449101 () Bool)

(assert (=> b!3190161 m!3449101))

(declare-fun m!3449103 () Bool)

(assert (=> b!3190171 m!3449103))

(declare-fun m!3449105 () Bool)

(assert (=> b!3190178 m!3449105))

(declare-fun m!3449107 () Bool)

(assert (=> b!3190183 m!3449107))

(declare-fun m!3449109 () Bool)

(assert (=> b!3190183 m!3449109))

(declare-fun m!3449111 () Bool)

(assert (=> b!3190183 m!3449111))

(declare-fun m!3449113 () Bool)

(assert (=> b!3190183 m!3449113))

(declare-fun m!3449115 () Bool)

(assert (=> b!3190183 m!3449115))

(declare-fun m!3449117 () Bool)

(assert (=> b!3190154 m!3449117))

(declare-fun m!3449119 () Bool)

(assert (=> b!3190184 m!3449119))

(declare-fun m!3449121 () Bool)

(assert (=> b!3190184 m!3449121))

(declare-fun m!3449123 () Bool)

(assert (=> b!3190157 m!3449123))

(declare-fun m!3449125 () Bool)

(assert (=> b!3190157 m!3449125))

(declare-fun m!3449127 () Bool)

(assert (=> b!3190157 m!3449127))

(declare-fun m!3449129 () Bool)

(assert (=> b!3190157 m!3449129))

(declare-fun m!3449131 () Bool)

(assert (=> b!3190157 m!3449131))

(declare-fun m!3449133 () Bool)

(assert (=> b!3190157 m!3449133))

(declare-fun m!3449135 () Bool)

(assert (=> b!3190157 m!3449135))

(assert (=> b!3190157 m!3449127))

(declare-fun m!3449137 () Bool)

(assert (=> b!3190188 m!3449137))

(declare-fun m!3449139 () Bool)

(assert (=> b!3190188 m!3449139))

(declare-fun m!3449141 () Bool)

(assert (=> b!3190176 m!3449141))

(declare-fun m!3449143 () Bool)

(assert (=> b!3190176 m!3449143))

(declare-fun m!3449145 () Bool)

(assert (=> b!3190173 m!3449145))

(declare-fun m!3449147 () Bool)

(assert (=> b!3190166 m!3449147))

(declare-fun m!3449149 () Bool)

(assert (=> b!3190166 m!3449149))

(declare-fun m!3449151 () Bool)

(assert (=> b!3190172 m!3449151))

(assert (=> b!3190172 m!3449151))

(declare-fun m!3449153 () Bool)

(assert (=> b!3190172 m!3449153))

(declare-fun m!3449155 () Bool)

(assert (=> start!299254 m!3449155))

(declare-fun m!3449157 () Bool)

(assert (=> b!3190158 m!3449157))

(declare-fun m!3449159 () Bool)

(assert (=> b!3190164 m!3449159))

(declare-fun m!3449161 () Bool)

(assert (=> b!3190164 m!3449161))

(declare-fun m!3449163 () Bool)

(assert (=> b!3190164 m!3449163))

(declare-fun m!3449165 () Bool)

(assert (=> b!3190164 m!3449165))

(assert (=> b!3190164 m!3449159))

(declare-fun m!3449167 () Bool)

(assert (=> b!3190164 m!3449167))

(declare-fun m!3449169 () Bool)

(assert (=> b!3190180 m!3449169))

(declare-fun m!3449171 () Bool)

(assert (=> b!3190180 m!3449171))

(declare-fun m!3449173 () Bool)

(assert (=> b!3190180 m!3449173))

(declare-fun m!3449175 () Bool)

(assert (=> b!3190163 m!3449175))

(declare-fun m!3449177 () Bool)

(assert (=> b!3190165 m!3449177))

(declare-fun m!3449179 () Bool)

(assert (=> b!3190165 m!3449179))

(declare-fun m!3449181 () Bool)

(assert (=> b!3190186 m!3449181))

(declare-fun m!3449183 () Bool)

(assert (=> b!3190185 m!3449183))

(declare-fun m!3449185 () Bool)

(assert (=> b!3190182 m!3449185))

(declare-fun m!3449187 () Bool)

(assert (=> b!3190160 m!3449187))

(declare-fun m!3449189 () Bool)

(assert (=> b!3190160 m!3449189))

(declare-fun m!3449191 () Bool)

(assert (=> b!3190160 m!3449191))

(declare-fun m!3449193 () Bool)

(assert (=> b!3190160 m!3449193))

(assert (=> b!3190160 m!3449189))

(declare-fun m!3449195 () Bool)

(assert (=> b!3190160 m!3449195))

(declare-fun m!3449197 () Bool)

(assert (=> b!3190160 m!3449197))

(declare-fun m!3449199 () Bool)

(assert (=> b!3190160 m!3449199))

(declare-fun m!3449201 () Bool)

(assert (=> b!3190160 m!3449201))

(declare-fun m!3449203 () Bool)

(assert (=> b!3190160 m!3449203))

(declare-fun m!3449205 () Bool)

(assert (=> b!3190160 m!3449205))

(declare-fun m!3449207 () Bool)

(assert (=> b!3190160 m!3449207))

(declare-fun m!3449209 () Bool)

(assert (=> b!3190160 m!3449209))

(assert (=> b!3190160 m!3449193))

(declare-fun m!3449211 () Bool)

(assert (=> b!3190160 m!3449211))

(declare-fun m!3449213 () Bool)

(assert (=> b!3190160 m!3449213))

(declare-fun m!3449215 () Bool)

(assert (=> b!3190160 m!3449215))

(declare-fun m!3449217 () Bool)

(assert (=> b!3190160 m!3449217))

(declare-fun m!3449219 () Bool)

(assert (=> b!3190160 m!3449219))

(declare-fun m!3449221 () Bool)

(assert (=> b!3190175 m!3449221))

(declare-fun m!3449223 () Bool)

(assert (=> b!3190168 m!3449223))

(assert (=> b!3190168 m!3449223))

(declare-fun m!3449225 () Bool)

(assert (=> b!3190168 m!3449225))

(declare-fun m!3449227 () Bool)

(assert (=> b!3190168 m!3449227))

(assert (=> b!3190168 m!3449227))

(declare-fun m!3449229 () Bool)

(assert (=> b!3190168 m!3449229))

(declare-fun m!3449231 () Bool)

(assert (=> b!3190181 m!3449231))

(declare-fun m!3449233 () Bool)

(assert (=> b!3190181 m!3449233))

(check-sat (not start!299254) (not b!3190181) b_and!211349 (not b!3190154) (not b!3190185) (not b!3190179) (not b!3190173) (not b!3190188) (not b!3190168) (not b!3190165) (not b!3190178) (not b!3190160) b_and!211353 (not b!3190186) (not b_next!85047) (not b!3190161) (not b!3190158) b_and!211351 (not b!3190175) b_and!211347 (not b_next!85051) (not b!3190163) (not b!3190182) (not b!3190183) b_and!211357 (not b_next!85045) (not b!3190184) (not b!3190187) (not b!3190166) (not b_next!85041) (not b!3190171) b_and!211355 (not b!3190172) (not b_next!85043) (not b!3190176) (not b!3190180) (not b!3190157) (not b!3190164) (not b_next!85049))
(check-sat b_and!211351 b_and!211349 b_and!211357 (not b_next!85045) (not b_next!85041) b_and!211355 (not b_next!85043) (not b_next!85049) b_and!211353 (not b_next!85047) b_and!211347 (not b_next!85051))
