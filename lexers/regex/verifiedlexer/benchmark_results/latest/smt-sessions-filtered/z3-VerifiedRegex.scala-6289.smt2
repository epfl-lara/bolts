; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!314382 () Bool)

(assert start!314382)

(declare-fun b!3376680 () Bool)

(declare-fun b_free!88257 () Bool)

(declare-fun b_next!88961 () Bool)

(assert (=> b!3376680 (= b_free!88257 (not b_next!88961))))

(declare-fun tp!1055995 () Bool)

(declare-fun b_and!234431 () Bool)

(assert (=> b!3376680 (= tp!1055995 b_and!234431)))

(declare-fun b_free!88259 () Bool)

(declare-fun b_next!88963 () Bool)

(assert (=> b!3376680 (= b_free!88259 (not b_next!88963))))

(declare-fun tp!1055993 () Bool)

(declare-fun b_and!234433 () Bool)

(assert (=> b!3376680 (= tp!1055993 b_and!234433)))

(declare-fun b!3376660 () Bool)

(declare-fun b_free!88261 () Bool)

(declare-fun b_next!88965 () Bool)

(assert (=> b!3376660 (= b_free!88261 (not b_next!88965))))

(declare-fun tp!1055992 () Bool)

(declare-fun b_and!234435 () Bool)

(assert (=> b!3376660 (= tp!1055992 b_and!234435)))

(declare-fun b_free!88263 () Bool)

(declare-fun b_next!88967 () Bool)

(assert (=> b!3376660 (= b_free!88263 (not b_next!88967))))

(declare-fun tp!1055998 () Bool)

(declare-fun b_and!234437 () Bool)

(assert (=> b!3376660 (= tp!1055998 b_and!234437)))

(declare-fun b!3376658 () Bool)

(declare-fun b_free!88265 () Bool)

(declare-fun b_next!88969 () Bool)

(assert (=> b!3376658 (= b_free!88265 (not b_next!88969))))

(declare-fun tp!1055990 () Bool)

(declare-fun b_and!234439 () Bool)

(assert (=> b!3376658 (= tp!1055990 b_and!234439)))

(declare-fun b_free!88267 () Bool)

(declare-fun b_next!88971 () Bool)

(assert (=> b!3376658 (= b_free!88267 (not b_next!88971))))

(declare-fun tp!1055996 () Bool)

(declare-fun b_and!234441 () Bool)

(assert (=> b!3376658 (= tp!1055996 b_and!234441)))

(declare-fun b!3376657 () Bool)

(declare-fun e!2095763 () Bool)

(declare-fun e!2095764 () Bool)

(assert (=> b!3376657 (= e!2095763 e!2095764)))

(declare-fun res!1365591 () Bool)

(assert (=> b!3376657 (=> res!1365591 e!2095764)))

(declare-datatypes ((LexerInterface!4947 0))(
  ( (LexerInterfaceExt!4944 (__x!23393 Int)) (Lexer!4945) )
))
(declare-fun thiss!18206 () LexerInterface!4947)

(declare-datatypes ((C!20420 0))(
  ( (C!20421 (val!12258 Int)) )
))
(declare-datatypes ((Regex!10117 0))(
  ( (ElementMatch!10117 (c!575046 C!20420)) (Concat!15705 (regOne!20746 Regex!10117) (regTwo!20746 Regex!10117)) (EmptyExpr!10117) (Star!10117 (reg!10446 Regex!10117)) (EmptyLang!10117) (Union!10117 (regOne!20747 Regex!10117) (regTwo!20747 Regex!10117)) )
))
(declare-datatypes ((List!36916 0))(
  ( (Nil!36792) (Cons!36792 (h!42212 (_ BitVec 16)) (t!262795 List!36916)) )
))
(declare-datatypes ((TokenValue!5588 0))(
  ( (FloatLiteralValue!11176 (text!39561 List!36916)) (TokenValueExt!5587 (__x!23394 Int)) (Broken!27940 (value!173137 List!36916)) (Object!5711) (End!5588) (Def!5588) (Underscore!5588) (Match!5588) (Else!5588) (Error!5588) (Case!5588) (If!5588) (Extends!5588) (Abstract!5588) (Class!5588) (Val!5588) (DelimiterValue!11176 (del!5648 List!36916)) (KeywordValue!5594 (value!173138 List!36916)) (CommentValue!11176 (value!173139 List!36916)) (WhitespaceValue!11176 (value!173140 List!36916)) (IndentationValue!5588 (value!173141 List!36916)) (String!41273) (Int32!5588) (Broken!27941 (value!173142 List!36916)) (Boolean!5589) (Unit!51893) (OperatorValue!5591 (op!5648 List!36916)) (IdentifierValue!11176 (value!173143 List!36916)) (IdentifierValue!11177 (value!173144 List!36916)) (WhitespaceValue!11177 (value!173145 List!36916)) (True!11176) (False!11176) (Broken!27942 (value!173146 List!36916)) (Broken!27943 (value!173147 List!36916)) (True!11177) (RightBrace!5588) (RightBracket!5588) (Colon!5588) (Null!5588) (Comma!5588) (LeftBracket!5588) (False!11177) (LeftBrace!5588) (ImaginaryLiteralValue!5588 (text!39562 List!36916)) (StringLiteralValue!16764 (value!173148 List!36916)) (EOFValue!5588 (value!173149 List!36916)) (IdentValue!5588 (value!173150 List!36916)) (DelimiterValue!11177 (value!173151 List!36916)) (DedentValue!5588 (value!173152 List!36916)) (NewLineValue!5588 (value!173153 List!36916)) (IntegerValue!16764 (value!173154 (_ BitVec 32)) (text!39563 List!36916)) (IntegerValue!16765 (value!173155 Int) (text!39564 List!36916)) (Times!5588) (Or!5588) (Equal!5588) (Minus!5588) (Broken!27944 (value!173156 List!36916)) (And!5588) (Div!5588) (LessEqual!5588) (Mod!5588) (Concat!15706) (Not!5588) (Plus!5588) (SpaceValue!5588 (value!173157 List!36916)) (IntegerValue!16766 (value!173158 Int) (text!39565 List!36916)) (StringLiteralValue!16765 (text!39566 List!36916)) (FloatLiteralValue!11177 (text!39567 List!36916)) (BytesLiteralValue!5588 (value!173159 List!36916)) (CommentValue!11177 (value!173160 List!36916)) (StringLiteralValue!16766 (value!173161 List!36916)) (ErrorTokenValue!5588 (msg!5649 List!36916)) )
))
(declare-datatypes ((List!36917 0))(
  ( (Nil!36793) (Cons!36793 (h!42213 C!20420) (t!262796 List!36917)) )
))
(declare-datatypes ((IArray!22187 0))(
  ( (IArray!22188 (innerList!11151 List!36917)) )
))
(declare-datatypes ((Conc!11091 0))(
  ( (Node!11091 (left!28684 Conc!11091) (right!29014 Conc!11091) (csize!22412 Int) (cheight!11302 Int)) (Leaf!17381 (xs!14245 IArray!22187) (csize!22413 Int)) (Empty!11091) )
))
(declare-datatypes ((BalanceConc!21796 0))(
  ( (BalanceConc!21797 (c!575047 Conc!11091)) )
))
(declare-datatypes ((String!41274 0))(
  ( (String!41275 (value!173162 String)) )
))
(declare-datatypes ((TokenValueInjection!10604 0))(
  ( (TokenValueInjection!10605 (toValue!7542 Int) (toChars!7401 Int)) )
))
(declare-datatypes ((Rule!10516 0))(
  ( (Rule!10517 (regex!5358 Regex!10117) (tag!5926 String!41274) (isSeparator!5358 Bool) (transformation!5358 TokenValueInjection!10604)) )
))
(declare-datatypes ((List!36918 0))(
  ( (Nil!36794) (Cons!36794 (h!42214 Rule!10516) (t!262797 List!36918)) )
))
(declare-fun rules!2135 () List!36918)

(declare-fun lt!1146082 () BalanceConc!21796)

(declare-datatypes ((Token!10082 0))(
  ( (Token!10083 (value!173163 TokenValue!5588) (rule!7902 Rule!10516) (size!27846 Int) (originalCharacters!6072 List!36917)) )
))
(declare-datatypes ((List!36919 0))(
  ( (Nil!36795) (Cons!36795 (h!42215 Token!10082) (t!262798 List!36919)) )
))
(declare-datatypes ((IArray!22189 0))(
  ( (IArray!22190 (innerList!11152 List!36919)) )
))
(declare-datatypes ((Conc!11092 0))(
  ( (Node!11092 (left!28685 Conc!11092) (right!29015 Conc!11092) (csize!22414 Int) (cheight!11303 Int)) (Leaf!17382 (xs!14246 IArray!22189) (csize!22415 Int)) (Empty!11092) )
))
(declare-datatypes ((BalanceConc!21798 0))(
  ( (BalanceConc!21799 (c!575048 Conc!11092)) )
))
(declare-fun isEmpty!21015 (BalanceConc!21798) Bool)

(declare-datatypes ((tuple2!36356 0))(
  ( (tuple2!36357 (_1!21312 BalanceConc!21798) (_2!21312 BalanceConc!21796)) )
))
(declare-fun lex!2273 (LexerInterface!4947 List!36918 BalanceConc!21796) tuple2!36356)

(assert (=> b!3376657 (= res!1365591 (isEmpty!21015 (_1!21312 (lex!2273 thiss!18206 rules!2135 lt!1146082))))))

(declare-fun lt!1146072 () List!36917)

(declare-fun seqFromList!3769 (List!36917) BalanceConc!21796)

(assert (=> b!3376657 (= lt!1146082 (seqFromList!3769 lt!1146072))))

(declare-fun e!2095752 () Bool)

(assert (=> b!3376658 (= e!2095752 (and tp!1055990 tp!1055996))))

(declare-fun b!3376659 () Bool)

(declare-fun res!1365601 () Bool)

(declare-fun e!2095759 () Bool)

(assert (=> b!3376659 (=> (not res!1365601) (not e!2095759))))

(declare-fun isEmpty!21016 (List!36918) Bool)

(assert (=> b!3376659 (= res!1365601 (not (isEmpty!21016 rules!2135)))))

(declare-fun e!2095748 () Bool)

(assert (=> b!3376660 (= e!2095748 (and tp!1055992 tp!1055998))))

(declare-fun b!3376661 () Bool)

(declare-fun e!2095742 () Bool)

(declare-fun separatorToken!241 () Token!10082)

(declare-fun lt!1146083 () Rule!10516)

(assert (=> b!3376661 (= e!2095742 (= (rule!7902 separatorToken!241) lt!1146083))))

(declare-fun tokens!494 () List!36919)

(declare-fun b!3376662 () Bool)

(declare-fun e!2095755 () Bool)

(declare-fun e!2095749 () Bool)

(declare-fun tp!1055994 () Bool)

(declare-fun inv!49863 (Token!10082) Bool)

(assert (=> b!3376662 (= e!2095755 (and (inv!49863 (h!42215 tokens!494)) e!2095749 tp!1055994))))

(declare-fun b!3376663 () Bool)

(declare-fun e!2095744 () Bool)

(assert (=> b!3376663 (= e!2095764 e!2095744)))

(declare-fun res!1365610 () Bool)

(assert (=> b!3376663 (=> res!1365610 e!2095744)))

(assert (=> b!3376663 (= res!1365610 (isSeparator!5358 (rule!7902 (h!42215 tokens!494))))))

(declare-datatypes ((Unit!51894 0))(
  ( (Unit!51895) )
))
(declare-fun lt!1146084 () Unit!51894)

(declare-fun lambda!120365 () Int)

(declare-fun forallContained!1305 (List!36919 Int Token!10082) Unit!51894)

(assert (=> b!3376663 (= lt!1146084 (forallContained!1305 tokens!494 lambda!120365 (h!42215 tokens!494)))))

(declare-fun e!2095762 () Bool)

(declare-fun tp!1055997 () Bool)

(declare-fun b!3376664 () Bool)

(declare-fun inv!49860 (String!41274) Bool)

(declare-fun inv!49864 (TokenValueInjection!10604) Bool)

(assert (=> b!3376664 (= e!2095762 (and tp!1055997 (inv!49860 (tag!5926 (rule!7902 separatorToken!241))) (inv!49864 (transformation!5358 (rule!7902 separatorToken!241))) e!2095752))))

(declare-fun b!3376665 () Bool)

(declare-fun res!1365594 () Bool)

(declare-fun e!2095758 () Bool)

(assert (=> b!3376665 (=> (not res!1365594) (not e!2095758))))

(assert (=> b!3376665 (= res!1365594 (isSeparator!5358 (rule!7902 separatorToken!241)))))

(declare-fun b!3376666 () Bool)

(declare-fun res!1365595 () Bool)

(assert (=> b!3376666 (=> (not res!1365595) (not e!2095759))))

(declare-fun rulesInvariant!4344 (LexerInterface!4947 List!36918) Bool)

(assert (=> b!3376666 (= res!1365595 (rulesInvariant!4344 thiss!18206 rules!2135))))

(declare-fun b!3376667 () Bool)

(declare-fun res!1365605 () Bool)

(assert (=> b!3376667 (=> (not res!1365605) (not e!2095758))))

(get-info :version)

(assert (=> b!3376667 (= res!1365605 (and (not ((_ is Nil!36795) tokens!494)) ((_ is Nil!36795) (t!262798 tokens!494))))))

(declare-fun b!3376668 () Bool)

(declare-fun e!2095745 () Bool)

(assert (=> b!3376668 (= e!2095745 e!2095742)))

(declare-fun res!1365609 () Bool)

(assert (=> b!3376668 (=> (not res!1365609) (not e!2095742))))

(declare-fun lt!1146071 () List!36917)

(declare-fun matchR!4709 (Regex!10117 List!36917) Bool)

(assert (=> b!3376668 (= res!1365609 (matchR!4709 (regex!5358 lt!1146083) lt!1146071))))

(declare-datatypes ((Option!7363 0))(
  ( (None!7362) (Some!7362 (v!36410 Rule!10516)) )
))
(declare-fun lt!1146078 () Option!7363)

(declare-fun get!11736 (Option!7363) Rule!10516)

(assert (=> b!3376668 (= lt!1146083 (get!11736 lt!1146078))))

(declare-fun res!1365604 () Bool)

(assert (=> start!314382 (=> (not res!1365604) (not e!2095759))))

(assert (=> start!314382 (= res!1365604 ((_ is Lexer!4945) thiss!18206))))

(assert (=> start!314382 e!2095759))

(assert (=> start!314382 true))

(declare-fun e!2095761 () Bool)

(assert (=> start!314382 e!2095761))

(declare-fun e!2095767 () Bool)

(assert (=> start!314382 (and (inv!49863 separatorToken!241) e!2095767)))

(assert (=> start!314382 e!2095755))

(declare-fun b!3376669 () Bool)

(declare-fun e!2095756 () Bool)

(declare-fun e!2095768 () Bool)

(assert (=> b!3376669 (= e!2095756 e!2095768)))

(declare-fun res!1365602 () Bool)

(assert (=> b!3376669 (=> res!1365602 e!2095768)))

(declare-fun lt!1146079 () C!20420)

(declare-fun contains!6707 (List!36917 C!20420) Bool)

(declare-fun usedCharacters!614 (Regex!10117) List!36917)

(assert (=> b!3376669 (= res!1365602 (contains!6707 (usedCharacters!614 (regex!5358 (rule!7902 separatorToken!241))) lt!1146079))))

(declare-fun head!7201 (List!36917) C!20420)

(assert (=> b!3376669 (= lt!1146079 (head!7201 lt!1146071))))

(declare-datatypes ((tuple2!36358 0))(
  ( (tuple2!36359 (_1!21313 Token!10082) (_2!21313 List!36917)) )
))
(declare-datatypes ((Option!7364 0))(
  ( (None!7363) (Some!7363 (v!36411 tuple2!36358)) )
))
(declare-fun maxPrefixOneRule!1670 (LexerInterface!4947 Rule!10516 List!36917) Option!7364)

(declare-fun apply!8541 (TokenValueInjection!10604 BalanceConc!21796) TokenValue!5588)

(declare-fun size!27847 (List!36917) Int)

(assert (=> b!3376669 (= (maxPrefixOneRule!1670 thiss!18206 (rule!7902 (h!42215 tokens!494)) lt!1146072) (Some!7363 (tuple2!36359 (Token!10083 (apply!8541 (transformation!5358 (rule!7902 (h!42215 tokens!494))) lt!1146082) (rule!7902 (h!42215 tokens!494)) (size!27847 lt!1146072) lt!1146072) Nil!36793)))))

(declare-fun lt!1146069 () Unit!51894)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!769 (LexerInterface!4947 List!36918 List!36917 List!36917 List!36917 Rule!10516) Unit!51894)

(assert (=> b!3376669 (= lt!1146069 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!769 thiss!18206 rules!2135 lt!1146072 lt!1146072 Nil!36793 (rule!7902 (h!42215 tokens!494))))))

(assert (=> b!3376669 e!2095745))

(declare-fun res!1365597 () Bool)

(assert (=> b!3376669 (=> (not res!1365597) (not e!2095745))))

(declare-fun isDefined!5696 (Option!7363) Bool)

(assert (=> b!3376669 (= res!1365597 (isDefined!5696 lt!1146078))))

(declare-fun getRuleFromTag!1013 (LexerInterface!4947 List!36918 String!41274) Option!7363)

(assert (=> b!3376669 (= lt!1146078 (getRuleFromTag!1013 thiss!18206 rules!2135 (tag!5926 (rule!7902 separatorToken!241))))))

(declare-fun lt!1146077 () Unit!51894)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1013 (LexerInterface!4947 List!36918 List!36917 Token!10082) Unit!51894)

(assert (=> b!3376669 (= lt!1146077 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1013 thiss!18206 rules!2135 lt!1146071 separatorToken!241))))

(declare-fun e!2095760 () Bool)

(assert (=> b!3376669 e!2095760))

(declare-fun res!1365596 () Bool)

(assert (=> b!3376669 (=> (not res!1365596) (not e!2095760))))

(declare-fun lt!1146073 () Option!7363)

(assert (=> b!3376669 (= res!1365596 (isDefined!5696 lt!1146073))))

(assert (=> b!3376669 (= lt!1146073 (getRuleFromTag!1013 thiss!18206 rules!2135 (tag!5926 (rule!7902 (h!42215 tokens!494)))))))

(declare-fun lt!1146088 () Unit!51894)

(assert (=> b!3376669 (= lt!1146088 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1013 thiss!18206 rules!2135 lt!1146072 (h!42215 tokens!494)))))

(declare-fun lt!1146075 () Unit!51894)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!942 (LexerInterface!4947 List!36918 List!36919 Token!10082) Unit!51894)

(assert (=> b!3376669 (= lt!1146075 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!942 thiss!18206 rules!2135 tokens!494 (h!42215 tokens!494)))))

(declare-fun isEmpty!21017 (List!36917) Bool)

(declare-fun getSuffix!1452 (List!36917 List!36917) List!36917)

(assert (=> b!3376669 (isEmpty!21017 (getSuffix!1452 lt!1146072 lt!1146072))))

(declare-fun lt!1146087 () Unit!51894)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!110 (List!36917) Unit!51894)

(assert (=> b!3376669 (= lt!1146087 (lemmaGetSuffixOnListWithItSelfIsEmpty!110 lt!1146072))))

(declare-fun b!3376670 () Bool)

(declare-fun res!1365593 () Bool)

(assert (=> b!3376670 (=> (not res!1365593) (not e!2095758))))

(declare-fun rulesProduceIndividualToken!2439 (LexerInterface!4947 List!36918 Token!10082) Bool)

(assert (=> b!3376670 (= res!1365593 (rulesProduceIndividualToken!2439 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3376671 () Bool)

(declare-fun e!2095746 () Bool)

(declare-fun tp!1055986 () Bool)

(assert (=> b!3376671 (= e!2095761 (and e!2095746 tp!1055986))))

(declare-fun tp!1055989 () Bool)

(declare-fun b!3376672 () Bool)

(declare-fun inv!21 (TokenValue!5588) Bool)

(assert (=> b!3376672 (= e!2095767 (and (inv!21 (value!173163 separatorToken!241)) e!2095762 tp!1055989))))

(declare-fun b!3376673 () Bool)

(assert (=> b!3376673 (= e!2095759 e!2095758)))

(declare-fun res!1365606 () Bool)

(assert (=> b!3376673 (=> (not res!1365606) (not e!2095758))))

(declare-fun lt!1146085 () BalanceConc!21798)

(declare-fun rulesProduceEachTokenIndividually!1398 (LexerInterface!4947 List!36918 BalanceConc!21798) Bool)

(assert (=> b!3376673 (= res!1365606 (rulesProduceEachTokenIndividually!1398 thiss!18206 rules!2135 lt!1146085))))

(declare-fun seqFromList!3770 (List!36919) BalanceConc!21798)

(assert (=> b!3376673 (= lt!1146085 (seqFromList!3770 tokens!494))))

(declare-fun e!2095750 () Bool)

(declare-fun b!3376674 () Bool)

(declare-fun tp!1055991 () Bool)

(assert (=> b!3376674 (= e!2095750 (and tp!1055991 (inv!49860 (tag!5926 (rule!7902 (h!42215 tokens!494)))) (inv!49864 (transformation!5358 (rule!7902 (h!42215 tokens!494)))) e!2095748))))

(declare-fun b!3376675 () Bool)

(declare-fun res!1365600 () Bool)

(assert (=> b!3376675 (=> res!1365600 e!2095763)))

(assert (=> b!3376675 (= res!1365600 (not (rulesProduceIndividualToken!2439 thiss!18206 rules!2135 (h!42215 tokens!494))))))

(declare-fun b!3376676 () Bool)

(declare-fun tp!1055987 () Bool)

(assert (=> b!3376676 (= e!2095749 (and (inv!21 (value!173163 (h!42215 tokens!494))) e!2095750 tp!1055987))))

(declare-fun b!3376677 () Bool)

(assert (=> b!3376677 (= e!2095768 false)))

(assert (=> b!3376677 (not (matchR!4709 (regex!5358 (rule!7902 separatorToken!241)) lt!1146071))))

(declare-fun lt!1146068 () Unit!51894)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!448 (Regex!10117 List!36917 C!20420) Unit!51894)

(assert (=> b!3376677 (= lt!1146068 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!448 (regex!5358 (rule!7902 separatorToken!241)) lt!1146071 lt!1146079))))

(declare-fun b!3376678 () Bool)

(declare-fun e!2095751 () Bool)

(declare-fun lt!1146080 () Rule!10516)

(assert (=> b!3376678 (= e!2095751 (= (rule!7902 (h!42215 tokens!494)) lt!1146080))))

(declare-fun b!3376679 () Bool)

(declare-fun e!2095747 () Bool)

(assert (=> b!3376679 (= e!2095758 (not e!2095747))))

(declare-fun res!1365608 () Bool)

(assert (=> b!3376679 (=> res!1365608 e!2095747)))

(declare-fun lt!1146086 () List!36917)

(declare-fun lt!1146074 () List!36917)

(assert (=> b!3376679 (= res!1365608 (not (= lt!1146086 lt!1146074)))))

(declare-fun printList!1495 (LexerInterface!4947 List!36919) List!36917)

(assert (=> b!3376679 (= lt!1146074 (printList!1495 thiss!18206 (Cons!36795 (h!42215 tokens!494) Nil!36795)))))

(declare-fun lt!1146076 () BalanceConc!21796)

(declare-fun list!13299 (BalanceConc!21796) List!36917)

(assert (=> b!3376679 (= lt!1146086 (list!13299 lt!1146076))))

(declare-fun lt!1146081 () BalanceConc!21798)

(declare-fun printTailRec!1442 (LexerInterface!4947 BalanceConc!21798 Int BalanceConc!21796) BalanceConc!21796)

(assert (=> b!3376679 (= lt!1146076 (printTailRec!1442 thiss!18206 lt!1146081 0 (BalanceConc!21797 Empty!11091)))))

(declare-fun print!2012 (LexerInterface!4947 BalanceConc!21798) BalanceConc!21796)

(assert (=> b!3376679 (= lt!1146076 (print!2012 thiss!18206 lt!1146081))))

(declare-fun singletonSeq!2454 (Token!10082) BalanceConc!21798)

(assert (=> b!3376679 (= lt!1146081 (singletonSeq!2454 (h!42215 tokens!494)))))

(declare-fun e!2095766 () Bool)

(assert (=> b!3376680 (= e!2095766 (and tp!1055995 tp!1055993))))

(declare-fun b!3376681 () Bool)

(assert (=> b!3376681 (= e!2095747 e!2095763)))

(declare-fun res!1365592 () Bool)

(assert (=> b!3376681 (=> res!1365592 e!2095763)))

(assert (=> b!3376681 (= res!1365592 (or (not (= lt!1146074 lt!1146072)) (not (= lt!1146086 lt!1146072))))))

(declare-fun charsOf!3372 (Token!10082) BalanceConc!21796)

(assert (=> b!3376681 (= lt!1146072 (list!13299 (charsOf!3372 (h!42215 tokens!494))))))

(declare-fun b!3376682 () Bool)

(declare-fun res!1365599 () Bool)

(assert (=> b!3376682 (=> (not res!1365599) (not e!2095758))))

(declare-fun sepAndNonSepRulesDisjointChars!1552 (List!36918 List!36918) Bool)

(assert (=> b!3376682 (= res!1365599 (sepAndNonSepRulesDisjointChars!1552 rules!2135 rules!2135))))

(declare-fun b!3376683 () Bool)

(assert (=> b!3376683 (= e!2095760 e!2095751)))

(declare-fun res!1365607 () Bool)

(assert (=> b!3376683 (=> (not res!1365607) (not e!2095751))))

(assert (=> b!3376683 (= res!1365607 (matchR!4709 (regex!5358 lt!1146080) lt!1146072))))

(assert (=> b!3376683 (= lt!1146080 (get!11736 lt!1146073))))

(declare-fun tp!1055988 () Bool)

(declare-fun b!3376684 () Bool)

(assert (=> b!3376684 (= e!2095746 (and tp!1055988 (inv!49860 (tag!5926 (h!42214 rules!2135))) (inv!49864 (transformation!5358 (h!42214 rules!2135))) e!2095766))))

(declare-fun b!3376685 () Bool)

(declare-fun res!1365603 () Bool)

(assert (=> b!3376685 (=> (not res!1365603) (not e!2095758))))

(declare-fun forall!7733 (List!36919 Int) Bool)

(assert (=> b!3376685 (= res!1365603 (forall!7733 tokens!494 lambda!120365))))

(declare-fun b!3376686 () Bool)

(assert (=> b!3376686 (= e!2095744 e!2095756)))

(declare-fun res!1365598 () Bool)

(assert (=> b!3376686 (=> res!1365598 e!2095756)))

(declare-fun lt!1146070 () BalanceConc!21796)

(declare-fun ++!8985 (List!36917 List!36917) List!36917)

(assert (=> b!3376686 (= res!1365598 (not (= (list!13299 lt!1146070) (++!8985 lt!1146072 lt!1146071))))))

(assert (=> b!3376686 (= lt!1146071 (list!13299 (charsOf!3372 separatorToken!241)))))

(declare-fun printWithSeparatorToken!138 (LexerInterface!4947 BalanceConc!21798 Token!10082) BalanceConc!21796)

(assert (=> b!3376686 (= lt!1146070 (printWithSeparatorToken!138 thiss!18206 lt!1146085 separatorToken!241))))

(assert (= (and start!314382 res!1365604) b!3376659))

(assert (= (and b!3376659 res!1365601) b!3376666))

(assert (= (and b!3376666 res!1365595) b!3376673))

(assert (= (and b!3376673 res!1365606) b!3376670))

(assert (= (and b!3376670 res!1365593) b!3376665))

(assert (= (and b!3376665 res!1365594) b!3376685))

(assert (= (and b!3376685 res!1365603) b!3376682))

(assert (= (and b!3376682 res!1365599) b!3376667))

(assert (= (and b!3376667 res!1365605) b!3376679))

(assert (= (and b!3376679 (not res!1365608)) b!3376681))

(assert (= (and b!3376681 (not res!1365592)) b!3376675))

(assert (= (and b!3376675 (not res!1365600)) b!3376657))

(assert (= (and b!3376657 (not res!1365591)) b!3376663))

(assert (= (and b!3376663 (not res!1365610)) b!3376686))

(assert (= (and b!3376686 (not res!1365598)) b!3376669))

(assert (= (and b!3376669 res!1365596) b!3376683))

(assert (= (and b!3376683 res!1365607) b!3376678))

(assert (= (and b!3376669 res!1365597) b!3376668))

(assert (= (and b!3376668 res!1365609) b!3376661))

(assert (= (and b!3376669 (not res!1365602)) b!3376677))

(assert (= b!3376684 b!3376680))

(assert (= b!3376671 b!3376684))

(assert (= (and start!314382 ((_ is Cons!36794) rules!2135)) b!3376671))

(assert (= b!3376664 b!3376658))

(assert (= b!3376672 b!3376664))

(assert (= start!314382 b!3376672))

(assert (= b!3376674 b!3376660))

(assert (= b!3376676 b!3376674))

(assert (= b!3376662 b!3376676))

(assert (= (and start!314382 ((_ is Cons!36795) tokens!494)) b!3376662))

(declare-fun m!3740191 () Bool)

(assert (=> b!3376659 m!3740191))

(declare-fun m!3740193 () Bool)

(assert (=> b!3376677 m!3740193))

(declare-fun m!3740195 () Bool)

(assert (=> b!3376677 m!3740195))

(declare-fun m!3740197 () Bool)

(assert (=> b!3376666 m!3740197))

(declare-fun m!3740199 () Bool)

(assert (=> b!3376673 m!3740199))

(declare-fun m!3740201 () Bool)

(assert (=> b!3376673 m!3740201))

(declare-fun m!3740203 () Bool)

(assert (=> b!3376668 m!3740203))

(declare-fun m!3740205 () Bool)

(assert (=> b!3376668 m!3740205))

(declare-fun m!3740207 () Bool)

(assert (=> b!3376670 m!3740207))

(declare-fun m!3740209 () Bool)

(assert (=> b!3376684 m!3740209))

(declare-fun m!3740211 () Bool)

(assert (=> b!3376684 m!3740211))

(declare-fun m!3740213 () Bool)

(assert (=> b!3376664 m!3740213))

(declare-fun m!3740215 () Bool)

(assert (=> b!3376664 m!3740215))

(declare-fun m!3740217 () Bool)

(assert (=> b!3376675 m!3740217))

(declare-fun m!3740219 () Bool)

(assert (=> b!3376679 m!3740219))

(declare-fun m!3740221 () Bool)

(assert (=> b!3376679 m!3740221))

(declare-fun m!3740223 () Bool)

(assert (=> b!3376679 m!3740223))

(declare-fun m!3740225 () Bool)

(assert (=> b!3376679 m!3740225))

(declare-fun m!3740227 () Bool)

(assert (=> b!3376679 m!3740227))

(declare-fun m!3740229 () Bool)

(assert (=> b!3376681 m!3740229))

(assert (=> b!3376681 m!3740229))

(declare-fun m!3740231 () Bool)

(assert (=> b!3376681 m!3740231))

(declare-fun m!3740233 () Bool)

(assert (=> b!3376682 m!3740233))

(declare-fun m!3740235 () Bool)

(assert (=> b!3376672 m!3740235))

(declare-fun m!3740237 () Bool)

(assert (=> b!3376663 m!3740237))

(declare-fun m!3740239 () Bool)

(assert (=> b!3376685 m!3740239))

(declare-fun m!3740241 () Bool)

(assert (=> b!3376676 m!3740241))

(declare-fun m!3740243 () Bool)

(assert (=> b!3376669 m!3740243))

(declare-fun m!3740245 () Bool)

(assert (=> b!3376669 m!3740245))

(declare-fun m!3740247 () Bool)

(assert (=> b!3376669 m!3740247))

(declare-fun m!3740249 () Bool)

(assert (=> b!3376669 m!3740249))

(assert (=> b!3376669 m!3740243))

(declare-fun m!3740251 () Bool)

(assert (=> b!3376669 m!3740251))

(declare-fun m!3740253 () Bool)

(assert (=> b!3376669 m!3740253))

(declare-fun m!3740255 () Bool)

(assert (=> b!3376669 m!3740255))

(assert (=> b!3376669 m!3740247))

(declare-fun m!3740257 () Bool)

(assert (=> b!3376669 m!3740257))

(declare-fun m!3740259 () Bool)

(assert (=> b!3376669 m!3740259))

(declare-fun m!3740261 () Bool)

(assert (=> b!3376669 m!3740261))

(declare-fun m!3740263 () Bool)

(assert (=> b!3376669 m!3740263))

(declare-fun m!3740265 () Bool)

(assert (=> b!3376669 m!3740265))

(declare-fun m!3740267 () Bool)

(assert (=> b!3376669 m!3740267))

(declare-fun m!3740269 () Bool)

(assert (=> b!3376669 m!3740269))

(declare-fun m!3740271 () Bool)

(assert (=> b!3376669 m!3740271))

(declare-fun m!3740273 () Bool)

(assert (=> b!3376669 m!3740273))

(declare-fun m!3740275 () Bool)

(assert (=> b!3376669 m!3740275))

(declare-fun m!3740277 () Bool)

(assert (=> start!314382 m!3740277))

(declare-fun m!3740279 () Bool)

(assert (=> b!3376674 m!3740279))

(declare-fun m!3740281 () Bool)

(assert (=> b!3376674 m!3740281))

(declare-fun m!3740283 () Bool)

(assert (=> b!3376686 m!3740283))

(declare-fun m!3740285 () Bool)

(assert (=> b!3376686 m!3740285))

(declare-fun m!3740287 () Bool)

(assert (=> b!3376686 m!3740287))

(declare-fun m!3740289 () Bool)

(assert (=> b!3376686 m!3740289))

(assert (=> b!3376686 m!3740283))

(declare-fun m!3740291 () Bool)

(assert (=> b!3376686 m!3740291))

(declare-fun m!3740293 () Bool)

(assert (=> b!3376662 m!3740293))

(declare-fun m!3740295 () Bool)

(assert (=> b!3376657 m!3740295))

(declare-fun m!3740297 () Bool)

(assert (=> b!3376657 m!3740297))

(declare-fun m!3740299 () Bool)

(assert (=> b!3376657 m!3740299))

(declare-fun m!3740301 () Bool)

(assert (=> b!3376683 m!3740301))

(declare-fun m!3740303 () Bool)

(assert (=> b!3376683 m!3740303))

(check-sat b_and!234439 (not b!3376682) b_and!234437 (not b!3376663) (not b_next!88971) b_and!234435 b_and!234433 (not b_next!88969) (not b_next!88961) (not b!3376674) (not b!3376676) (not b!3376669) b_and!234431 (not b!3376664) (not start!314382) (not b_next!88967) (not b!3376662) (not b!3376666) (not b_next!88963) (not b!3376681) (not b!3376683) (not b!3376679) (not b!3376668) (not b!3376671) (not b!3376670) b_and!234441 (not b!3376672) (not b!3376659) (not b!3376685) (not b!3376673) (not b!3376684) (not b!3376677) (not b!3376675) (not b_next!88965) (not b!3376657) (not b!3376686))
(check-sat (not b_next!88967) b_and!234439 b_and!234437 (not b_next!88963) (not b_next!88971) b_and!234435 b_and!234441 b_and!234433 (not b_next!88969) (not b_next!88961) (not b_next!88965) b_and!234431)
