; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!315074 () Bool)

(assert start!315074)

(declare-fun b!3381023 () Bool)

(declare-fun b_free!88489 () Bool)

(declare-fun b_next!89193 () Bool)

(assert (=> b!3381023 (= b_free!88489 (not b_next!89193))))

(declare-fun tp!1057022 () Bool)

(declare-fun b_and!234903 () Bool)

(assert (=> b!3381023 (= tp!1057022 b_and!234903)))

(declare-fun b_free!88491 () Bool)

(declare-fun b_next!89195 () Bool)

(assert (=> b!3381023 (= b_free!88491 (not b_next!89195))))

(declare-fun tp!1057023 () Bool)

(declare-fun b_and!234905 () Bool)

(assert (=> b!3381023 (= tp!1057023 b_and!234905)))

(declare-fun b!3381012 () Bool)

(declare-fun b_free!88493 () Bool)

(declare-fun b_next!89197 () Bool)

(assert (=> b!3381012 (= b_free!88493 (not b_next!89197))))

(declare-fun tp!1057021 () Bool)

(declare-fun b_and!234907 () Bool)

(assert (=> b!3381012 (= tp!1057021 b_and!234907)))

(declare-fun b_free!88495 () Bool)

(declare-fun b_next!89199 () Bool)

(assert (=> b!3381012 (= b_free!88495 (not b_next!89199))))

(declare-fun tp!1057024 () Bool)

(declare-fun b_and!234909 () Bool)

(assert (=> b!3381012 (= tp!1057024 b_and!234909)))

(declare-fun b!3381007 () Bool)

(declare-fun b_free!88497 () Bool)

(declare-fun b_next!89201 () Bool)

(assert (=> b!3381007 (= b_free!88497 (not b_next!89201))))

(declare-fun tp!1057020 () Bool)

(declare-fun b_and!234911 () Bool)

(assert (=> b!3381007 (= tp!1057020 b_and!234911)))

(declare-fun b_free!88499 () Bool)

(declare-fun b_next!89203 () Bool)

(assert (=> b!3381007 (= b_free!88499 (not b_next!89203))))

(declare-fun tp!1057015 () Bool)

(declare-fun b_and!234913 () Bool)

(assert (=> b!3381007 (= tp!1057015 b_and!234913)))

(declare-fun b!3380995 () Bool)

(declare-fun e!2098838 () Bool)

(assert (=> b!3380995 (= e!2098838 true)))

(declare-fun lt!1148033 () Bool)

(declare-datatypes ((C!20448 0))(
  ( (C!20449 (val!12272 Int)) )
))
(declare-datatypes ((Regex!10131 0))(
  ( (ElementMatch!10131 (c!575684 C!20448)) (Concat!15733 (regOne!20774 Regex!10131) (regTwo!20774 Regex!10131)) (EmptyExpr!10131) (Star!10131 (reg!10460 Regex!10131)) (EmptyLang!10131) (Union!10131 (regOne!20775 Regex!10131) (regTwo!20775 Regex!10131)) )
))
(declare-datatypes ((List!36980 0))(
  ( (Nil!36856) (Cons!36856 (h!42276 (_ BitVec 16)) (t!263183 List!36980)) )
))
(declare-datatypes ((TokenValue!5602 0))(
  ( (FloatLiteralValue!11204 (text!39659 List!36980)) (TokenValueExt!5601 (__x!23421 Int)) (Broken!28010 (value!173536 List!36980)) (Object!5725) (End!5602) (Def!5602) (Underscore!5602) (Match!5602) (Else!5602) (Error!5602) (Case!5602) (If!5602) (Extends!5602) (Abstract!5602) (Class!5602) (Val!5602) (DelimiterValue!11204 (del!5662 List!36980)) (KeywordValue!5608 (value!173537 List!36980)) (CommentValue!11204 (value!173538 List!36980)) (WhitespaceValue!11204 (value!173539 List!36980)) (IndentationValue!5602 (value!173540 List!36980)) (String!41343) (Int32!5602) (Broken!28011 (value!173541 List!36980)) (Boolean!5603) (Unit!51961) (OperatorValue!5605 (op!5662 List!36980)) (IdentifierValue!11204 (value!173542 List!36980)) (IdentifierValue!11205 (value!173543 List!36980)) (WhitespaceValue!11205 (value!173544 List!36980)) (True!11204) (False!11204) (Broken!28012 (value!173545 List!36980)) (Broken!28013 (value!173546 List!36980)) (True!11205) (RightBrace!5602) (RightBracket!5602) (Colon!5602) (Null!5602) (Comma!5602) (LeftBracket!5602) (False!11205) (LeftBrace!5602) (ImaginaryLiteralValue!5602 (text!39660 List!36980)) (StringLiteralValue!16806 (value!173547 List!36980)) (EOFValue!5602 (value!173548 List!36980)) (IdentValue!5602 (value!173549 List!36980)) (DelimiterValue!11205 (value!173550 List!36980)) (DedentValue!5602 (value!173551 List!36980)) (NewLineValue!5602 (value!173552 List!36980)) (IntegerValue!16806 (value!173553 (_ BitVec 32)) (text!39661 List!36980)) (IntegerValue!16807 (value!173554 Int) (text!39662 List!36980)) (Times!5602) (Or!5602) (Equal!5602) (Minus!5602) (Broken!28014 (value!173555 List!36980)) (And!5602) (Div!5602) (LessEqual!5602) (Mod!5602) (Concat!15734) (Not!5602) (Plus!5602) (SpaceValue!5602 (value!173556 List!36980)) (IntegerValue!16808 (value!173557 Int) (text!39663 List!36980)) (StringLiteralValue!16807 (text!39664 List!36980)) (FloatLiteralValue!11205 (text!39665 List!36980)) (BytesLiteralValue!5602 (value!173558 List!36980)) (CommentValue!11205 (value!173559 List!36980)) (StringLiteralValue!16808 (value!173560 List!36980)) (ErrorTokenValue!5602 (msg!5663 List!36980)) )
))
(declare-datatypes ((List!36981 0))(
  ( (Nil!36857) (Cons!36857 (h!42277 C!20448) (t!263184 List!36981)) )
))
(declare-datatypes ((IArray!22243 0))(
  ( (IArray!22244 (innerList!11179 List!36981)) )
))
(declare-datatypes ((Conc!11119 0))(
  ( (Node!11119 (left!28735 Conc!11119) (right!29065 Conc!11119) (csize!22468 Int) (cheight!11330 Int)) (Leaf!17416 (xs!14273 IArray!22243) (csize!22469 Int)) (Empty!11119) )
))
(declare-datatypes ((BalanceConc!21852 0))(
  ( (BalanceConc!21853 (c!575685 Conc!11119)) )
))
(declare-datatypes ((String!41344 0))(
  ( (String!41345 (value!173561 String)) )
))
(declare-datatypes ((TokenValueInjection!10632 0))(
  ( (TokenValueInjection!10633 (toValue!7556 Int) (toChars!7415 Int)) )
))
(declare-datatypes ((Rule!10544 0))(
  ( (Rule!10545 (regex!5372 Regex!10131) (tag!5948 String!41344) (isSeparator!5372 Bool) (transformation!5372 TokenValueInjection!10632)) )
))
(declare-datatypes ((List!36982 0))(
  ( (Nil!36858) (Cons!36858 (h!42278 Rule!10544) (t!263185 List!36982)) )
))
(declare-fun rules!2135 () List!36982)

(declare-datatypes ((Token!10110 0))(
  ( (Token!10111 (value!173562 TokenValue!5602) (rule!7924 Rule!10544) (size!27890 Int) (originalCharacters!6086 List!36981)) )
))
(declare-fun separatorToken!241 () Token!10110)

(declare-fun contains!6738 (List!36982 Rule!10544) Bool)

(assert (=> b!3380995 (= lt!1148033 (contains!6738 rules!2135 (rule!7924 separatorToken!241)))))

(declare-fun b!3380997 () Bool)

(declare-fun e!2098847 () Bool)

(declare-datatypes ((List!36983 0))(
  ( (Nil!36859) (Cons!36859 (h!42279 Token!10110) (t!263186 List!36983)) )
))
(declare-fun tokens!494 () List!36983)

(declare-fun lt!1148013 () Rule!10544)

(assert (=> b!3380997 (= e!2098847 (= (rule!7924 (h!42279 tokens!494)) lt!1148013))))

(declare-fun b!3380998 () Bool)

(declare-fun e!2098835 () Bool)

(declare-fun e!2098828 () Bool)

(assert (=> b!3380998 (= e!2098835 e!2098828)))

(declare-fun res!1367826 () Bool)

(assert (=> b!3380998 (=> (not res!1367826) (not e!2098828))))

(declare-fun lt!1148021 () Rule!10544)

(declare-fun lt!1148028 () List!36981)

(declare-fun matchR!4723 (Regex!10131 List!36981) Bool)

(assert (=> b!3380998 (= res!1367826 (matchR!4723 (regex!5372 lt!1148021) lt!1148028))))

(declare-datatypes ((Option!7391 0))(
  ( (None!7390) (Some!7390 (v!36478 Rule!10544)) )
))
(declare-fun lt!1148019 () Option!7391)

(declare-fun get!11765 (Option!7391) Rule!10544)

(assert (=> b!3380998 (= lt!1148021 (get!11765 lt!1148019))))

(declare-fun b!3380999 () Bool)

(declare-fun e!2098829 () Bool)

(declare-fun e!2098855 () Bool)

(declare-fun tp!1057012 () Bool)

(assert (=> b!3380999 (= e!2098829 (and e!2098855 tp!1057012))))

(declare-fun b!3381000 () Bool)

(declare-fun e!2098845 () Bool)

(declare-fun e!2098848 () Bool)

(assert (=> b!3381000 (= e!2098845 e!2098848)))

(declare-fun res!1367833 () Bool)

(assert (=> b!3381000 (=> res!1367833 e!2098848)))

(assert (=> b!3381000 (= res!1367833 (isSeparator!5372 (rule!7924 (h!42279 tokens!494))))))

(declare-datatypes ((Unit!51962 0))(
  ( (Unit!51963) )
))
(declare-fun lt!1148031 () Unit!51962)

(declare-fun lambda!120475 () Int)

(declare-fun forallContained!1319 (List!36983 Int Token!10110) Unit!51962)

(assert (=> b!3381000 (= lt!1148031 (forallContained!1319 tokens!494 lambda!120475 (h!42279 tokens!494)))))

(declare-fun e!2098827 () Bool)

(declare-fun tp!1057018 () Bool)

(declare-fun b!3381001 () Bool)

(declare-fun e!2098856 () Bool)

(declare-fun inv!49925 (String!41344) Bool)

(declare-fun inv!49928 (TokenValueInjection!10632) Bool)

(assert (=> b!3381001 (= e!2098827 (and tp!1057018 (inv!49925 (tag!5948 (rule!7924 (h!42279 tokens!494)))) (inv!49928 (transformation!5372 (rule!7924 (h!42279 tokens!494)))) e!2098856))))

(declare-fun b!3381002 () Bool)

(declare-fun res!1367839 () Bool)

(declare-fun e!2098853 () Bool)

(assert (=> b!3381002 (=> (not res!1367839) (not e!2098853))))

(declare-fun isEmpty!21097 (List!36982) Bool)

(assert (=> b!3381002 (= res!1367839 (not (isEmpty!21097 rules!2135)))))

(declare-fun b!3381003 () Bool)

(declare-fun e!2098846 () Bool)

(assert (=> b!3381003 (= e!2098846 e!2098838)))

(declare-fun res!1367821 () Bool)

(assert (=> b!3381003 (=> res!1367821 e!2098838)))

(assert (=> b!3381003 (= res!1367821 (not (contains!6738 rules!2135 (rule!7924 (h!42279 tokens!494)))))))

(declare-fun lt!1148012 () C!20448)

(declare-fun contains!6739 (List!36981 C!20448) Bool)

(declare-fun usedCharacters!628 (Regex!10131) List!36981)

(assert (=> b!3381003 (not (contains!6739 (usedCharacters!628 (regex!5372 (rule!7924 (h!42279 tokens!494)))) lt!1148012))))

(declare-datatypes ((LexerInterface!4961 0))(
  ( (LexerInterfaceExt!4958 (__x!23422 Int)) (Lexer!4959) )
))
(declare-fun thiss!18206 () LexerInterface!4961)

(declare-fun lt!1148011 () Unit!51962)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!212 (LexerInterface!4961 List!36982 List!36982 Rule!10544 Rule!10544 C!20448) Unit!51962)

(assert (=> b!3381003 (= lt!1148011 (lemmaNonSepRuleNotContainsCharContainedInASepRule!212 thiss!18206 rules!2135 rules!2135 (rule!7924 (h!42279 tokens!494)) (rule!7924 separatorToken!241) lt!1148012))))

(declare-fun b!3381004 () Bool)

(declare-fun e!2098850 () Bool)

(declare-fun e!2098841 () Bool)

(assert (=> b!3381004 (= e!2098850 e!2098841)))

(declare-fun res!1367834 () Bool)

(assert (=> b!3381004 (=> res!1367834 e!2098841)))

(declare-fun lt!1148029 () List!36981)

(declare-fun lt!1148015 () List!36981)

(declare-fun lt!1148016 () List!36981)

(assert (=> b!3381004 (= res!1367834 (or (not (= lt!1148029 lt!1148015)) (not (= lt!1148016 lt!1148015))))))

(declare-fun list!13329 (BalanceConc!21852) List!36981)

(declare-fun charsOf!3386 (Token!10110) BalanceConc!21852)

(assert (=> b!3381004 (= lt!1148015 (list!13329 (charsOf!3386 (h!42279 tokens!494))))))

(declare-fun b!3381005 () Bool)

(declare-fun res!1367825 () Bool)

(assert (=> b!3381005 (=> (not res!1367825) (not e!2098853))))

(declare-fun rulesInvariant!4358 (LexerInterface!4961 List!36982) Bool)

(assert (=> b!3381005 (= res!1367825 (rulesInvariant!4358 thiss!18206 rules!2135))))

(declare-fun b!3381006 () Bool)

(declare-fun res!1367831 () Bool)

(assert (=> b!3381006 (=> res!1367831 e!2098841)))

(declare-fun rulesProduceIndividualToken!2453 (LexerInterface!4961 List!36982 Token!10110) Bool)

(assert (=> b!3381006 (= res!1367831 (not (rulesProduceIndividualToken!2453 thiss!18206 rules!2135 (h!42279 tokens!494))))))

(declare-fun e!2098852 () Bool)

(assert (=> b!3381007 (= e!2098852 (and tp!1057020 tp!1057015))))

(declare-fun b!3381008 () Bool)

(declare-fun e!2098833 () Unit!51962)

(declare-fun Unit!51964 () Unit!51962)

(assert (=> b!3381008 (= e!2098833 Unit!51964)))

(declare-fun lt!1148025 () Unit!51962)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!462 (Regex!10131 List!36981 C!20448) Unit!51962)

(assert (=> b!3381008 (= lt!1148025 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!462 (regex!5372 (rule!7924 separatorToken!241)) lt!1148028 lt!1148012))))

(declare-fun res!1367829 () Bool)

(assert (=> b!3381008 (= res!1367829 (not (matchR!4723 (regex!5372 (rule!7924 separatorToken!241)) lt!1148028)))))

(declare-fun e!2098834 () Bool)

(assert (=> b!3381008 (=> (not res!1367829) (not e!2098834))))

(assert (=> b!3381008 e!2098834))

(declare-fun b!3381009 () Bool)

(declare-fun e!2098837 () Bool)

(assert (=> b!3381009 (= e!2098837 e!2098846)))

(declare-fun res!1367835 () Bool)

(assert (=> b!3381009 (=> res!1367835 e!2098846)))

(declare-fun lt!1148017 () Bool)

(assert (=> b!3381009 (= res!1367835 lt!1148017)))

(declare-fun lt!1148027 () Unit!51962)

(assert (=> b!3381009 (= lt!1148027 e!2098833)))

(declare-fun c!575683 () Bool)

(assert (=> b!3381009 (= c!575683 lt!1148017)))

(assert (=> b!3381009 (= lt!1148017 (not (contains!6739 (usedCharacters!628 (regex!5372 (rule!7924 separatorToken!241))) lt!1148012)))))

(declare-fun head!7223 (List!36981) C!20448)

(assert (=> b!3381009 (= lt!1148012 (head!7223 lt!1148028))))

(declare-fun lt!1148022 () BalanceConc!21852)

(declare-datatypes ((tuple2!36444 0))(
  ( (tuple2!36445 (_1!21356 Token!10110) (_2!21356 List!36981)) )
))
(declare-datatypes ((Option!7392 0))(
  ( (None!7391) (Some!7391 (v!36479 tuple2!36444)) )
))
(declare-fun maxPrefixOneRule!1684 (LexerInterface!4961 Rule!10544 List!36981) Option!7392)

(declare-fun apply!8571 (TokenValueInjection!10632 BalanceConc!21852) TokenValue!5602)

(declare-fun size!27891 (List!36981) Int)

(assert (=> b!3381009 (= (maxPrefixOneRule!1684 thiss!18206 (rule!7924 (h!42279 tokens!494)) lt!1148015) (Some!7391 (tuple2!36445 (Token!10111 (apply!8571 (transformation!5372 (rule!7924 (h!42279 tokens!494))) lt!1148022) (rule!7924 (h!42279 tokens!494)) (size!27891 lt!1148015) lt!1148015) Nil!36857)))))

(declare-fun lt!1148010 () Unit!51962)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!783 (LexerInterface!4961 List!36982 List!36981 List!36981 List!36981 Rule!10544) Unit!51962)

(assert (=> b!3381009 (= lt!1148010 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!783 thiss!18206 rules!2135 lt!1148015 lt!1148015 Nil!36857 (rule!7924 (h!42279 tokens!494))))))

(assert (=> b!3381009 e!2098835))

(declare-fun res!1367838 () Bool)

(assert (=> b!3381009 (=> (not res!1367838) (not e!2098835))))

(declare-fun isDefined!5710 (Option!7391) Bool)

(assert (=> b!3381009 (= res!1367838 (isDefined!5710 lt!1148019))))

(declare-fun getRuleFromTag!1027 (LexerInterface!4961 List!36982 String!41344) Option!7391)

(assert (=> b!3381009 (= lt!1148019 (getRuleFromTag!1027 thiss!18206 rules!2135 (tag!5948 (rule!7924 separatorToken!241))))))

(declare-fun lt!1148023 () Unit!51962)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1027 (LexerInterface!4961 List!36982 List!36981 Token!10110) Unit!51962)

(assert (=> b!3381009 (= lt!1148023 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1027 thiss!18206 rules!2135 lt!1148028 separatorToken!241))))

(declare-fun e!2098843 () Bool)

(assert (=> b!3381009 e!2098843))

(declare-fun res!1367822 () Bool)

(assert (=> b!3381009 (=> (not res!1367822) (not e!2098843))))

(declare-fun lt!1148026 () Option!7391)

(assert (=> b!3381009 (= res!1367822 (isDefined!5710 lt!1148026))))

(assert (=> b!3381009 (= lt!1148026 (getRuleFromTag!1027 thiss!18206 rules!2135 (tag!5948 (rule!7924 (h!42279 tokens!494)))))))

(declare-fun lt!1148014 () Unit!51962)

(assert (=> b!3381009 (= lt!1148014 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1027 thiss!18206 rules!2135 lt!1148015 (h!42279 tokens!494)))))

(declare-fun lt!1148032 () Unit!51962)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!956 (LexerInterface!4961 List!36982 List!36983 Token!10110) Unit!51962)

(assert (=> b!3381009 (= lt!1148032 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!956 thiss!18206 rules!2135 tokens!494 (h!42279 tokens!494)))))

(declare-fun isEmpty!21098 (List!36981) Bool)

(declare-fun getSuffix!1466 (List!36981 List!36981) List!36981)

(assert (=> b!3381009 (isEmpty!21098 (getSuffix!1466 lt!1148015 lt!1148015))))

(declare-fun lt!1148020 () Unit!51962)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!124 (List!36981) Unit!51962)

(assert (=> b!3381009 (= lt!1148020 (lemmaGetSuffixOnListWithItSelfIsEmpty!124 lt!1148015))))

(declare-fun res!1367820 () Bool)

(assert (=> start!315074 (=> (not res!1367820) (not e!2098853))))

(get-info :version)

(assert (=> start!315074 (= res!1367820 ((_ is Lexer!4959) thiss!18206))))

(assert (=> start!315074 e!2098853))

(assert (=> start!315074 true))

(assert (=> start!315074 e!2098829))

(declare-fun e!2098842 () Bool)

(declare-fun inv!49929 (Token!10110) Bool)

(assert (=> start!315074 (and (inv!49929 separatorToken!241) e!2098842)))

(declare-fun e!2098844 () Bool)

(assert (=> start!315074 e!2098844))

(declare-fun b!3380996 () Bool)

(declare-fun res!1367832 () Bool)

(declare-fun e!2098839 () Bool)

(assert (=> b!3380996 (=> (not res!1367832) (not e!2098839))))

(assert (=> b!3380996 (= res!1367832 (rulesProduceIndividualToken!2453 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3381010 () Bool)

(assert (=> b!3381010 (= e!2098834 false)))

(declare-fun b!3381011 () Bool)

(declare-fun e!2098832 () Bool)

(declare-fun tp!1057013 () Bool)

(assert (=> b!3381011 (= e!2098855 (and tp!1057013 (inv!49925 (tag!5948 (h!42278 rules!2135))) (inv!49928 (transformation!5372 (h!42278 rules!2135))) e!2098832))))

(assert (=> b!3381012 (= e!2098832 (and tp!1057021 tp!1057024))))

(declare-fun b!3381013 () Bool)

(declare-fun res!1367840 () Bool)

(assert (=> b!3381013 (=> (not res!1367840) (not e!2098839))))

(assert (=> b!3381013 (= res!1367840 (isSeparator!5372 (rule!7924 separatorToken!241)))))

(declare-fun b!3381014 () Bool)

(assert (=> b!3381014 (= e!2098828 (= (rule!7924 separatorToken!241) lt!1148021))))

(declare-fun b!3381015 () Bool)

(assert (=> b!3381015 (= e!2098848 e!2098837)))

(declare-fun res!1367836 () Bool)

(assert (=> b!3381015 (=> res!1367836 e!2098837)))

(declare-fun lt!1148018 () BalanceConc!21852)

(declare-fun ++!9007 (List!36981 List!36981) List!36981)

(assert (=> b!3381015 (= res!1367836 (not (= (list!13329 lt!1148018) (++!9007 lt!1148015 lt!1148028))))))

(assert (=> b!3381015 (= lt!1148028 (list!13329 (charsOf!3386 separatorToken!241)))))

(declare-datatypes ((IArray!22245 0))(
  ( (IArray!22246 (innerList!11180 List!36983)) )
))
(declare-datatypes ((Conc!11120 0))(
  ( (Node!11120 (left!28736 Conc!11120) (right!29066 Conc!11120) (csize!22470 Int) (cheight!11331 Int)) (Leaf!17417 (xs!14274 IArray!22245) (csize!22471 Int)) (Empty!11120) )
))
(declare-datatypes ((BalanceConc!21854 0))(
  ( (BalanceConc!21855 (c!575686 Conc!11120)) )
))
(declare-fun lt!1148024 () BalanceConc!21854)

(declare-fun printWithSeparatorToken!152 (LexerInterface!4961 BalanceConc!21854 Token!10110) BalanceConc!21852)

(assert (=> b!3381015 (= lt!1148018 (printWithSeparatorToken!152 thiss!18206 lt!1148024 separatorToken!241))))

(declare-fun b!3381016 () Bool)

(declare-fun Unit!51965 () Unit!51962)

(assert (=> b!3381016 (= e!2098833 Unit!51965)))

(declare-fun e!2098854 () Bool)

(declare-fun tp!1057017 () Bool)

(declare-fun b!3381017 () Bool)

(declare-fun inv!21 (TokenValue!5602) Bool)

(assert (=> b!3381017 (= e!2098842 (and (inv!21 (value!173562 separatorToken!241)) e!2098854 tp!1057017))))

(declare-fun b!3381018 () Bool)

(assert (=> b!3381018 (= e!2098839 (not e!2098850))))

(declare-fun res!1367830 () Bool)

(assert (=> b!3381018 (=> res!1367830 e!2098850)))

(assert (=> b!3381018 (= res!1367830 (not (= lt!1148016 lt!1148029)))))

(declare-fun printList!1509 (LexerInterface!4961 List!36983) List!36981)

(assert (=> b!3381018 (= lt!1148029 (printList!1509 thiss!18206 (Cons!36859 (h!42279 tokens!494) Nil!36859)))))

(declare-fun lt!1148030 () BalanceConc!21852)

(assert (=> b!3381018 (= lt!1148016 (list!13329 lt!1148030))))

(declare-fun lt!1148034 () BalanceConc!21854)

(declare-fun printTailRec!1456 (LexerInterface!4961 BalanceConc!21854 Int BalanceConc!21852) BalanceConc!21852)

(assert (=> b!3381018 (= lt!1148030 (printTailRec!1456 thiss!18206 lt!1148034 0 (BalanceConc!21853 Empty!11119)))))

(declare-fun print!2026 (LexerInterface!4961 BalanceConc!21854) BalanceConc!21852)

(assert (=> b!3381018 (= lt!1148030 (print!2026 thiss!18206 lt!1148034))))

(declare-fun singletonSeq!2468 (Token!10110) BalanceConc!21854)

(assert (=> b!3381018 (= lt!1148034 (singletonSeq!2468 (h!42279 tokens!494)))))

(declare-fun b!3381019 () Bool)

(assert (=> b!3381019 (= e!2098843 e!2098847)))

(declare-fun res!1367827 () Bool)

(assert (=> b!3381019 (=> (not res!1367827) (not e!2098847))))

(assert (=> b!3381019 (= res!1367827 (matchR!4723 (regex!5372 lt!1148013) lt!1148015))))

(assert (=> b!3381019 (= lt!1148013 (get!11765 lt!1148026))))

(declare-fun b!3381020 () Bool)

(declare-fun e!2098849 () Bool)

(declare-fun tp!1057016 () Bool)

(assert (=> b!3381020 (= e!2098844 (and (inv!49929 (h!42279 tokens!494)) e!2098849 tp!1057016))))

(declare-fun b!3381021 () Bool)

(declare-fun res!1367837 () Bool)

(assert (=> b!3381021 (=> (not res!1367837) (not e!2098839))))

(assert (=> b!3381021 (= res!1367837 (and (not ((_ is Nil!36859) tokens!494)) ((_ is Nil!36859) (t!263186 tokens!494))))))

(declare-fun b!3381022 () Bool)

(declare-fun tp!1057019 () Bool)

(assert (=> b!3381022 (= e!2098849 (and (inv!21 (value!173562 (h!42279 tokens!494))) e!2098827 tp!1057019))))

(assert (=> b!3381023 (= e!2098856 (and tp!1057022 tp!1057023))))

(declare-fun b!3381024 () Bool)

(assert (=> b!3381024 (= e!2098853 e!2098839)))

(declare-fun res!1367823 () Bool)

(assert (=> b!3381024 (=> (not res!1367823) (not e!2098839))))

(declare-fun rulesProduceEachTokenIndividually!1412 (LexerInterface!4961 List!36982 BalanceConc!21854) Bool)

(assert (=> b!3381024 (= res!1367823 (rulesProduceEachTokenIndividually!1412 thiss!18206 rules!2135 lt!1148024))))

(declare-fun seqFromList!3797 (List!36983) BalanceConc!21854)

(assert (=> b!3381024 (= lt!1148024 (seqFromList!3797 tokens!494))))

(declare-fun b!3381025 () Bool)

(declare-fun res!1367819 () Bool)

(assert (=> b!3381025 (=> (not res!1367819) (not e!2098839))))

(declare-fun sepAndNonSepRulesDisjointChars!1566 (List!36982 List!36982) Bool)

(assert (=> b!3381025 (= res!1367819 (sepAndNonSepRulesDisjointChars!1566 rules!2135 rules!2135))))

(declare-fun b!3381026 () Bool)

(declare-fun tp!1057014 () Bool)

(assert (=> b!3381026 (= e!2098854 (and tp!1057014 (inv!49925 (tag!5948 (rule!7924 separatorToken!241))) (inv!49928 (transformation!5372 (rule!7924 separatorToken!241))) e!2098852))))

(declare-fun b!3381027 () Bool)

(declare-fun res!1367828 () Bool)

(assert (=> b!3381027 (=> (not res!1367828) (not e!2098839))))

(declare-fun forall!7755 (List!36983 Int) Bool)

(assert (=> b!3381027 (= res!1367828 (forall!7755 tokens!494 lambda!120475))))

(declare-fun b!3381028 () Bool)

(assert (=> b!3381028 (= e!2098841 e!2098845)))

(declare-fun res!1367824 () Bool)

(assert (=> b!3381028 (=> res!1367824 e!2098845)))

(declare-fun isEmpty!21099 (BalanceConc!21854) Bool)

(declare-datatypes ((tuple2!36446 0))(
  ( (tuple2!36447 (_1!21357 BalanceConc!21854) (_2!21357 BalanceConc!21852)) )
))
(declare-fun lex!2287 (LexerInterface!4961 List!36982 BalanceConc!21852) tuple2!36446)

(assert (=> b!3381028 (= res!1367824 (isEmpty!21099 (_1!21357 (lex!2287 thiss!18206 rules!2135 lt!1148022))))))

(declare-fun seqFromList!3798 (List!36981) BalanceConc!21852)

(assert (=> b!3381028 (= lt!1148022 (seqFromList!3798 lt!1148015))))

(assert (= (and start!315074 res!1367820) b!3381002))

(assert (= (and b!3381002 res!1367839) b!3381005))

(assert (= (and b!3381005 res!1367825) b!3381024))

(assert (= (and b!3381024 res!1367823) b!3380996))

(assert (= (and b!3380996 res!1367832) b!3381013))

(assert (= (and b!3381013 res!1367840) b!3381027))

(assert (= (and b!3381027 res!1367828) b!3381025))

(assert (= (and b!3381025 res!1367819) b!3381021))

(assert (= (and b!3381021 res!1367837) b!3381018))

(assert (= (and b!3381018 (not res!1367830)) b!3381004))

(assert (= (and b!3381004 (not res!1367834)) b!3381006))

(assert (= (and b!3381006 (not res!1367831)) b!3381028))

(assert (= (and b!3381028 (not res!1367824)) b!3381000))

(assert (= (and b!3381000 (not res!1367833)) b!3381015))

(assert (= (and b!3381015 (not res!1367836)) b!3381009))

(assert (= (and b!3381009 res!1367822) b!3381019))

(assert (= (and b!3381019 res!1367827) b!3380997))

(assert (= (and b!3381009 res!1367838) b!3380998))

(assert (= (and b!3380998 res!1367826) b!3381014))

(assert (= (and b!3381009 c!575683) b!3381008))

(assert (= (and b!3381009 (not c!575683)) b!3381016))

(assert (= (and b!3381008 res!1367829) b!3381010))

(assert (= (and b!3381009 (not res!1367835)) b!3381003))

(assert (= (and b!3381003 (not res!1367821)) b!3380995))

(assert (= b!3381011 b!3381012))

(assert (= b!3380999 b!3381011))

(assert (= (and start!315074 ((_ is Cons!36858) rules!2135)) b!3380999))

(assert (= b!3381026 b!3381007))

(assert (= b!3381017 b!3381026))

(assert (= start!315074 b!3381017))

(assert (= b!3381001 b!3381023))

(assert (= b!3381022 b!3381001))

(assert (= b!3381020 b!3381022))

(assert (= (and start!315074 ((_ is Cons!36859) tokens!494)) b!3381020))

(declare-fun m!3745049 () Bool)

(assert (=> b!3381008 m!3745049))

(declare-fun m!3745051 () Bool)

(assert (=> b!3381008 m!3745051))

(declare-fun m!3745053 () Bool)

(assert (=> b!3381026 m!3745053))

(declare-fun m!3745055 () Bool)

(assert (=> b!3381026 m!3745055))

(declare-fun m!3745057 () Bool)

(assert (=> b!3381006 m!3745057))

(declare-fun m!3745059 () Bool)

(assert (=> b!3381022 m!3745059))

(declare-fun m!3745061 () Bool)

(assert (=> b!3381020 m!3745061))

(declare-fun m!3745063 () Bool)

(assert (=> b!3381001 m!3745063))

(declare-fun m!3745065 () Bool)

(assert (=> b!3381001 m!3745065))

(declare-fun m!3745067 () Bool)

(assert (=> b!3381017 m!3745067))

(declare-fun m!3745069 () Bool)

(assert (=> start!315074 m!3745069))

(declare-fun m!3745071 () Bool)

(assert (=> b!3381002 m!3745071))

(declare-fun m!3745073 () Bool)

(assert (=> b!3381027 m!3745073))

(declare-fun m!3745075 () Bool)

(assert (=> b!3381025 m!3745075))

(declare-fun m!3745077 () Bool)

(assert (=> b!3381024 m!3745077))

(declare-fun m!3745079 () Bool)

(assert (=> b!3381024 m!3745079))

(declare-fun m!3745081 () Bool)

(assert (=> b!3381009 m!3745081))

(declare-fun m!3745083 () Bool)

(assert (=> b!3381009 m!3745083))

(assert (=> b!3381009 m!3745083))

(declare-fun m!3745085 () Bool)

(assert (=> b!3381009 m!3745085))

(declare-fun m!3745087 () Bool)

(assert (=> b!3381009 m!3745087))

(declare-fun m!3745089 () Bool)

(assert (=> b!3381009 m!3745089))

(declare-fun m!3745091 () Bool)

(assert (=> b!3381009 m!3745091))

(declare-fun m!3745093 () Bool)

(assert (=> b!3381009 m!3745093))

(declare-fun m!3745095 () Bool)

(assert (=> b!3381009 m!3745095))

(declare-fun m!3745097 () Bool)

(assert (=> b!3381009 m!3745097))

(declare-fun m!3745099 () Bool)

(assert (=> b!3381009 m!3745099))

(declare-fun m!3745101 () Bool)

(assert (=> b!3381009 m!3745101))

(declare-fun m!3745103 () Bool)

(assert (=> b!3381009 m!3745103))

(declare-fun m!3745105 () Bool)

(assert (=> b!3381009 m!3745105))

(declare-fun m!3745107 () Bool)

(assert (=> b!3381009 m!3745107))

(declare-fun m!3745109 () Bool)

(assert (=> b!3381009 m!3745109))

(assert (=> b!3381009 m!3745087))

(declare-fun m!3745111 () Bool)

(assert (=> b!3381009 m!3745111))

(declare-fun m!3745113 () Bool)

(assert (=> b!3381009 m!3745113))

(declare-fun m!3745115 () Bool)

(assert (=> b!3381019 m!3745115))

(declare-fun m!3745117 () Bool)

(assert (=> b!3381019 m!3745117))

(declare-fun m!3745119 () Bool)

(assert (=> b!3381015 m!3745119))

(declare-fun m!3745121 () Bool)

(assert (=> b!3381015 m!3745121))

(declare-fun m!3745123 () Bool)

(assert (=> b!3381015 m!3745123))

(declare-fun m!3745125 () Bool)

(assert (=> b!3381015 m!3745125))

(assert (=> b!3381015 m!3745121))

(declare-fun m!3745127 () Bool)

(assert (=> b!3381015 m!3745127))

(declare-fun m!3745129 () Bool)

(assert (=> b!3381018 m!3745129))

(declare-fun m!3745131 () Bool)

(assert (=> b!3381018 m!3745131))

(declare-fun m!3745133 () Bool)

(assert (=> b!3381018 m!3745133))

(declare-fun m!3745135 () Bool)

(assert (=> b!3381018 m!3745135))

(declare-fun m!3745137 () Bool)

(assert (=> b!3381018 m!3745137))

(declare-fun m!3745139 () Bool)

(assert (=> b!3381003 m!3745139))

(declare-fun m!3745141 () Bool)

(assert (=> b!3381003 m!3745141))

(assert (=> b!3381003 m!3745141))

(declare-fun m!3745143 () Bool)

(assert (=> b!3381003 m!3745143))

(declare-fun m!3745145 () Bool)

(assert (=> b!3381003 m!3745145))

(declare-fun m!3745147 () Bool)

(assert (=> b!3380996 m!3745147))

(declare-fun m!3745149 () Bool)

(assert (=> b!3381028 m!3745149))

(declare-fun m!3745151 () Bool)

(assert (=> b!3381028 m!3745151))

(declare-fun m!3745153 () Bool)

(assert (=> b!3381028 m!3745153))

(declare-fun m!3745155 () Bool)

(assert (=> b!3381004 m!3745155))

(assert (=> b!3381004 m!3745155))

(declare-fun m!3745157 () Bool)

(assert (=> b!3381004 m!3745157))

(declare-fun m!3745159 () Bool)

(assert (=> b!3381000 m!3745159))

(declare-fun m!3745161 () Bool)

(assert (=> b!3380995 m!3745161))

(declare-fun m!3745163 () Bool)

(assert (=> b!3381011 m!3745163))

(declare-fun m!3745165 () Bool)

(assert (=> b!3381011 m!3745165))

(declare-fun m!3745167 () Bool)

(assert (=> b!3381005 m!3745167))

(declare-fun m!3745169 () Bool)

(assert (=> b!3380998 m!3745169))

(declare-fun m!3745171 () Bool)

(assert (=> b!3380998 m!3745171))

(check-sat (not b!3381028) (not b!3380999) (not start!315074) (not b_next!89197) (not b!3381025) (not b!3380998) (not b!3381015) (not b!3381008) (not b_next!89195) (not b!3381017) (not b!3381003) (not b_next!89199) (not b!3381001) (not b!3381004) (not b!3381002) b_and!234905 (not b!3381005) (not b!3381027) (not b!3381006) (not b!3381026) (not b!3381024) (not b_next!89193) b_and!234911 (not b!3381000) (not b!3381022) b_and!234903 b_and!234909 (not b!3380995) b_and!234907 (not b_next!89201) (not b!3381018) (not b!3381019) (not b!3381020) (not b!3380996) (not b!3381011) b_and!234913 (not b_next!89203) (not b!3381009))
(check-sat (not b_next!89197) b_and!234905 (not b_next!89193) b_and!234911 (not b_next!89195) b_and!234907 (not b_next!89201) b_and!234913 (not b_next!89203) (not b_next!89199) b_and!234903 b_and!234909)
