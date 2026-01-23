; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!336430 () Bool)

(assert start!336430)

(declare-fun b!3612912 () Bool)

(declare-fun b_free!93881 () Bool)

(declare-fun b_next!94585 () Bool)

(assert (=> b!3612912 (= b_free!93881 (not b_next!94585))))

(declare-fun tp!1104230 () Bool)

(declare-fun b_and!263643 () Bool)

(assert (=> b!3612912 (= tp!1104230 b_and!263643)))

(declare-fun b_free!93883 () Bool)

(declare-fun b_next!94587 () Bool)

(assert (=> b!3612912 (= b_free!93883 (not b_next!94587))))

(declare-fun tp!1104219 () Bool)

(declare-fun b_and!263645 () Bool)

(assert (=> b!3612912 (= tp!1104219 b_and!263645)))

(declare-fun b!3612935 () Bool)

(declare-fun b_free!93885 () Bool)

(declare-fun b_next!94589 () Bool)

(assert (=> b!3612935 (= b_free!93885 (not b_next!94589))))

(declare-fun tp!1104225 () Bool)

(declare-fun b_and!263647 () Bool)

(assert (=> b!3612935 (= tp!1104225 b_and!263647)))

(declare-fun b_free!93887 () Bool)

(declare-fun b_next!94591 () Bool)

(assert (=> b!3612935 (= b_free!93887 (not b_next!94591))))

(declare-fun tp!1104229 () Bool)

(declare-fun b_and!263649 () Bool)

(assert (=> b!3612935 (= tp!1104229 b_and!263649)))

(declare-fun b!3612928 () Bool)

(declare-fun b_free!93889 () Bool)

(declare-fun b_next!94593 () Bool)

(assert (=> b!3612928 (= b_free!93889 (not b_next!94593))))

(declare-fun tp!1104223 () Bool)

(declare-fun b_and!263651 () Bool)

(assert (=> b!3612928 (= tp!1104223 b_and!263651)))

(declare-fun b_free!93891 () Bool)

(declare-fun b_next!94595 () Bool)

(assert (=> b!3612928 (= b_free!93891 (not b_next!94595))))

(declare-fun tp!1104232 () Bool)

(declare-fun b_and!263653 () Bool)

(assert (=> b!3612928 (= tp!1104232 b_and!263653)))

(declare-fun b!3612916 () Bool)

(declare-fun b_free!93893 () Bool)

(declare-fun b_next!94597 () Bool)

(assert (=> b!3612916 (= b_free!93893 (not b_next!94597))))

(declare-fun tp!1104227 () Bool)

(declare-fun b_and!263655 () Bool)

(assert (=> b!3612916 (= tp!1104227 b_and!263655)))

(declare-fun b_free!93895 () Bool)

(declare-fun b_next!94599 () Bool)

(assert (=> b!3612916 (= b_free!93895 (not b_next!94599))))

(declare-fun tp!1104226 () Bool)

(declare-fun b_and!263657 () Bool)

(assert (=> b!3612916 (= tp!1104226 b_and!263657)))

(declare-fun b!3612902 () Bool)

(declare-fun res!1461604 () Bool)

(declare-fun e!2236068 () Bool)

(assert (=> b!3612902 (=> res!1461604 e!2236068)))

(declare-datatypes ((List!38155 0))(
  ( (Nil!38031) (Cons!38031 (h!43451 (_ BitVec 16)) (t!293566 List!38155)) )
))
(declare-datatypes ((TokenValue!5876 0))(
  ( (FloatLiteralValue!11752 (text!41577 List!38155)) (TokenValueExt!5875 (__x!23969 Int)) (Broken!29380 (value!181345 List!38155)) (Object!5999) (End!5876) (Def!5876) (Underscore!5876) (Match!5876) (Else!5876) (Error!5876) (Case!5876) (If!5876) (Extends!5876) (Abstract!5876) (Class!5876) (Val!5876) (DelimiterValue!11752 (del!5936 List!38155)) (KeywordValue!5882 (value!181346 List!38155)) (CommentValue!11752 (value!181347 List!38155)) (WhitespaceValue!11752 (value!181348 List!38155)) (IndentationValue!5876 (value!181349 List!38155)) (String!42713) (Int32!5876) (Broken!29381 (value!181350 List!38155)) (Boolean!5877) (Unit!54298) (OperatorValue!5879 (op!5936 List!38155)) (IdentifierValue!11752 (value!181351 List!38155)) (IdentifierValue!11753 (value!181352 List!38155)) (WhitespaceValue!11753 (value!181353 List!38155)) (True!11752) (False!11752) (Broken!29382 (value!181354 List!38155)) (Broken!29383 (value!181355 List!38155)) (True!11753) (RightBrace!5876) (RightBracket!5876) (Colon!5876) (Null!5876) (Comma!5876) (LeftBracket!5876) (False!11753) (LeftBrace!5876) (ImaginaryLiteralValue!5876 (text!41578 List!38155)) (StringLiteralValue!17628 (value!181356 List!38155)) (EOFValue!5876 (value!181357 List!38155)) (IdentValue!5876 (value!181358 List!38155)) (DelimiterValue!11753 (value!181359 List!38155)) (DedentValue!5876 (value!181360 List!38155)) (NewLineValue!5876 (value!181361 List!38155)) (IntegerValue!17628 (value!181362 (_ BitVec 32)) (text!41579 List!38155)) (IntegerValue!17629 (value!181363 Int) (text!41580 List!38155)) (Times!5876) (Or!5876) (Equal!5876) (Minus!5876) (Broken!29384 (value!181364 List!38155)) (And!5876) (Div!5876) (LessEqual!5876) (Mod!5876) (Concat!16281) (Not!5876) (Plus!5876) (SpaceValue!5876 (value!181365 List!38155)) (IntegerValue!17630 (value!181366 Int) (text!41581 List!38155)) (StringLiteralValue!17629 (text!41582 List!38155)) (FloatLiteralValue!11753 (text!41583 List!38155)) (BytesLiteralValue!5876 (value!181367 List!38155)) (CommentValue!11753 (value!181368 List!38155)) (StringLiteralValue!17630 (value!181369 List!38155)) (ErrorTokenValue!5876 (msg!5937 List!38155)) )
))
(declare-datatypes ((C!20996 0))(
  ( (C!20997 (val!12546 Int)) )
))
(declare-datatypes ((Regex!10405 0))(
  ( (ElementMatch!10405 (c!625060 C!20996)) (Concat!16282 (regOne!21322 Regex!10405) (regTwo!21322 Regex!10405)) (EmptyExpr!10405) (Star!10405 (reg!10734 Regex!10405)) (EmptyLang!10405) (Union!10405 (regOne!21323 Regex!10405) (regTwo!21323 Regex!10405)) )
))
(declare-datatypes ((String!42714 0))(
  ( (String!42715 (value!181370 String)) )
))
(declare-datatypes ((List!38156 0))(
  ( (Nil!38032) (Cons!38032 (h!43452 C!20996) (t!293567 List!38156)) )
))
(declare-datatypes ((IArray!23187 0))(
  ( (IArray!23188 (innerList!11651 List!38156)) )
))
(declare-datatypes ((Conc!11591 0))(
  ( (Node!11591 (left!29712 Conc!11591) (right!30042 Conc!11591) (csize!23412 Int) (cheight!11802 Int)) (Leaf!18025 (xs!14793 IArray!23187) (csize!23413 Int)) (Empty!11591) )
))
(declare-datatypes ((BalanceConc!22796 0))(
  ( (BalanceConc!22797 (c!625061 Conc!11591)) )
))
(declare-datatypes ((TokenValueInjection!11180 0))(
  ( (TokenValueInjection!11181 (toValue!7930 Int) (toChars!7789 Int)) )
))
(declare-datatypes ((Rule!11092 0))(
  ( (Rule!11093 (regex!5646 Regex!10405) (tag!6356 String!42714) (isSeparator!5646 Bool) (transformation!5646 TokenValueInjection!11180)) )
))
(declare-datatypes ((List!38157 0))(
  ( (Nil!38033) (Cons!38033 (h!43453 Rule!11092) (t!293568 List!38157)) )
))
(declare-fun rules!3307 () List!38157)

(declare-fun sepAndNonSepRulesDisjointChars!1816 (List!38157 List!38157) Bool)

(assert (=> b!3612902 (= res!1461604 (not (sepAndNonSepRulesDisjointChars!1816 rules!3307 rules!3307)))))

(declare-fun b!3612903 () Bool)

(declare-fun res!1461603 () Bool)

(declare-fun e!2236065 () Bool)

(assert (=> b!3612903 (=> (not res!1461603) (not e!2236065))))

(declare-datatypes ((Token!10658 0))(
  ( (Token!10659 (value!181371 TokenValue!5876) (rule!8400 Rule!11092) (size!28999 Int) (originalCharacters!6360 List!38156)) )
))
(declare-datatypes ((tuple2!37924 0))(
  ( (tuple2!37925 (_1!22096 Token!10658) (_2!22096 List!38156)) )
))
(declare-fun lt!1244716 () tuple2!37924)

(declare-fun isEmpty!22462 (List!38156) Bool)

(assert (=> b!3612903 (= res!1461603 (isEmpty!22462 (_2!22096 lt!1244716)))))

(declare-fun b!3612904 () Bool)

(declare-fun res!1461601 () Bool)

(assert (=> b!3612904 (=> res!1461601 e!2236068)))

(declare-fun anOtherTypeRule!33 () Rule!11092)

(declare-fun lt!1244726 () C!20996)

(declare-fun contains!7355 (List!38156 C!20996) Bool)

(declare-fun usedCharacters!860 (Regex!10405) List!38156)

(assert (=> b!3612904 (= res!1461601 (not (contains!7355 (usedCharacters!860 (regex!5646 anOtherTypeRule!33)) lt!1244726)))))

(declare-fun b!3612905 () Bool)

(declare-fun res!1461602 () Bool)

(declare-fun e!2236066 () Bool)

(assert (=> b!3612905 (=> (not res!1461602) (not e!2236066))))

(declare-fun contains!7356 (List!38157 Rule!11092) Bool)

(assert (=> b!3612905 (= res!1461602 (contains!7356 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3612906 () Bool)

(declare-fun res!1461590 () Bool)

(assert (=> b!3612906 (=> (not res!1461590) (not e!2236066))))

(declare-fun rule!403 () Rule!11092)

(assert (=> b!3612906 (= res!1461590 (not (= (isSeparator!5646 anOtherTypeRule!33) (isSeparator!5646 rule!403))))))

(declare-fun b!3612907 () Bool)

(declare-datatypes ((Unit!54299 0))(
  ( (Unit!54300) )
))
(declare-fun e!2236049 () Unit!54299)

(declare-fun Unit!54301 () Unit!54299)

(assert (=> b!3612907 (= e!2236049 Unit!54301)))

(declare-fun lt!1244730 () tuple2!37924)

(declare-fun lt!1244704 () List!38156)

(declare-fun lt!1244701 () List!38156)

(declare-fun lt!1244718 () List!38156)

(declare-datatypes ((LexerInterface!5235 0))(
  ( (LexerInterfaceExt!5232 (__x!23970 Int)) (Lexer!5233) )
))
(declare-fun thiss!23823 () LexerInterface!5235)

(declare-fun lt!1244727 () Unit!54299)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!294 (LexerInterface!5235 List!38157 Rule!11092 List!38156 List!38156 List!38156 Rule!11092) Unit!54299)

(assert (=> b!3612907 (= lt!1244727 (lemmaMaxPrefixOutputsMaxPrefix!294 thiss!23823 rules!3307 (rule!8400 (_1!22096 lt!1244730)) lt!1244704 lt!1244701 lt!1244718 rule!403))))

(assert (=> b!3612907 false))

(declare-fun b!3612908 () Bool)

(declare-fun e!2236043 () Bool)

(assert (=> b!3612908 (= e!2236068 e!2236043)))

(declare-fun res!1461600 () Bool)

(assert (=> b!3612908 (=> res!1461600 e!2236043)))

(declare-fun isPrefix!3009 (List!38156 List!38156) Bool)

(assert (=> b!3612908 (= res!1461600 (not (isPrefix!3009 lt!1244704 lt!1244701)))))

(declare-fun ++!9462 (List!38156 List!38156) List!38156)

(assert (=> b!3612908 (isPrefix!3009 lt!1244704 (++!9462 lt!1244704 (_2!22096 lt!1244730)))))

(declare-fun lt!1244733 () Unit!54299)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1930 (List!38156 List!38156) Unit!54299)

(assert (=> b!3612908 (= lt!1244733 (lemmaConcatTwoListThenFirstIsPrefix!1930 lt!1244704 (_2!22096 lt!1244730)))))

(declare-fun lt!1244710 () BalanceConc!22796)

(declare-fun list!14030 (BalanceConc!22796) List!38156)

(assert (=> b!3612908 (= lt!1244704 (list!14030 lt!1244710))))

(declare-fun charsOf!3660 (Token!10658) BalanceConc!22796)

(assert (=> b!3612908 (= lt!1244710 (charsOf!3660 (_1!22096 lt!1244730)))))

(declare-fun e!2236069 () Bool)

(assert (=> b!3612908 e!2236069))

(declare-fun res!1461591 () Bool)

(assert (=> b!3612908 (=> (not res!1461591) (not e!2236069))))

(declare-datatypes ((Option!7922 0))(
  ( (None!7921) (Some!7921 (v!37671 Rule!11092)) )
))
(declare-fun lt!1244715 () Option!7922)

(declare-fun isDefined!6154 (Option!7922) Bool)

(assert (=> b!3612908 (= res!1461591 (isDefined!6154 lt!1244715))))

(declare-fun getRuleFromTag!1252 (LexerInterface!5235 List!38157 String!42714) Option!7922)

(assert (=> b!3612908 (= lt!1244715 (getRuleFromTag!1252 thiss!23823 rules!3307 (tag!6356 (rule!8400 (_1!22096 lt!1244730)))))))

(declare-fun lt!1244740 () Unit!54299)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1252 (LexerInterface!5235 List!38157 List!38156 Token!10658) Unit!54299)

(assert (=> b!3612908 (= lt!1244740 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1252 thiss!23823 rules!3307 lt!1244701 (_1!22096 lt!1244730)))))

(declare-datatypes ((Option!7923 0))(
  ( (None!7922) (Some!7922 (v!37672 tuple2!37924)) )
))
(declare-fun lt!1244708 () Option!7923)

(declare-fun get!12355 (Option!7923) tuple2!37924)

(assert (=> b!3612908 (= lt!1244730 (get!12355 lt!1244708))))

(declare-fun suffix!1395 () List!38156)

(declare-fun lt!1244695 () Unit!54299)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!915 (LexerInterface!5235 List!38157 List!38156 List!38156) Unit!54299)

(assert (=> b!3612908 (= lt!1244695 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!915 thiss!23823 rules!3307 lt!1244718 suffix!1395))))

(declare-fun maxPrefix!2769 (LexerInterface!5235 List!38157 List!38156) Option!7923)

(assert (=> b!3612908 (= lt!1244708 (maxPrefix!2769 thiss!23823 rules!3307 lt!1244701))))

(assert (=> b!3612908 (isPrefix!3009 lt!1244718 lt!1244701)))

(declare-fun lt!1244703 () Unit!54299)

(assert (=> b!3612908 (= lt!1244703 (lemmaConcatTwoListThenFirstIsPrefix!1930 lt!1244718 suffix!1395))))

(assert (=> b!3612908 (= lt!1244701 (++!9462 lt!1244718 suffix!1395))))

(declare-fun res!1461595 () Bool)

(assert (=> start!336430 (=> (not res!1461595) (not e!2236066))))

(get-info :version)

(assert (=> start!336430 (= res!1461595 ((_ is Lexer!5233) thiss!23823))))

(assert (=> start!336430 e!2236066))

(declare-fun e!2236042 () Bool)

(assert (=> start!336430 e!2236042))

(declare-fun e!2236064 () Bool)

(assert (=> start!336430 e!2236064))

(assert (=> start!336430 true))

(declare-fun token!511 () Token!10658)

(declare-fun e!2236048 () Bool)

(declare-fun inv!51410 (Token!10658) Bool)

(assert (=> start!336430 (and (inv!51410 token!511) e!2236048)))

(declare-fun e!2236062 () Bool)

(assert (=> start!336430 e!2236062))

(declare-fun e!2236070 () Bool)

(assert (=> start!336430 e!2236070))

(declare-fun b!3612909 () Bool)

(declare-fun e!2236045 () Unit!54299)

(declare-fun e!2236053 () Unit!54299)

(assert (=> b!3612909 (= e!2236045 e!2236053)))

(declare-fun c!625053 () Bool)

(assert (=> b!3612909 (= c!625053 (isSeparator!5646 (rule!8400 (_1!22096 lt!1244730))))))

(declare-fun b!3612910 () Bool)

(declare-fun res!1461609 () Bool)

(assert (=> b!3612910 (=> (not res!1461609) (not e!2236066))))

(declare-fun rulesInvariant!4632 (LexerInterface!5235 List!38157) Bool)

(assert (=> b!3612910 (= res!1461609 (rulesInvariant!4632 thiss!23823 rules!3307))))

(declare-fun bm!261218 () Bool)

(declare-fun call!261226 () List!38156)

(assert (=> bm!261218 (= call!261226 (usedCharacters!860 (regex!5646 (rule!8400 (_1!22096 lt!1244730)))))))

(declare-fun b!3612911 () Bool)

(declare-fun e!2236047 () Unit!54299)

(declare-fun Unit!54302 () Unit!54299)

(assert (=> b!3612911 (= e!2236047 Unit!54302)))

(declare-fun e!2236063 () Bool)

(assert (=> b!3612912 (= e!2236063 (and tp!1104230 tp!1104219))))

(declare-fun b!3612913 () Bool)

(assert (=> b!3612913 false))

(declare-fun lt!1244732 () Unit!54299)

(declare-fun call!261224 () Unit!54299)

(assert (=> b!3612913 (= lt!1244732 call!261224)))

(declare-fun call!261223 () Bool)

(assert (=> b!3612913 (not call!261223)))

(declare-fun lt!1244742 () Unit!54299)

(declare-fun lt!1244731 () C!20996)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!352 (LexerInterface!5235 List!38157 List!38157 Rule!11092 Rule!11092 C!20996) Unit!54299)

(assert (=> b!3612913 (= lt!1244742 (lemmaNonSepRuleNotContainsCharContainedInASepRule!352 thiss!23823 rules!3307 rules!3307 (rule!8400 (_1!22096 lt!1244730)) rule!403 lt!1244731))))

(declare-fun e!2236051 () Unit!54299)

(declare-fun Unit!54303 () Unit!54299)

(assert (=> b!3612913 (= e!2236051 Unit!54303)))

(declare-fun b!3612914 () Bool)

(declare-fun tp_is_empty!17893 () Bool)

(declare-fun tp!1104218 () Bool)

(assert (=> b!3612914 (= e!2236064 (and tp_is_empty!17893 tp!1104218))))

(declare-fun e!2236072 () Bool)

(declare-fun b!3612915 () Bool)

(declare-fun tp!1104220 () Bool)

(declare-fun e!2236054 () Bool)

(declare-fun inv!51407 (String!42714) Bool)

(declare-fun inv!51411 (TokenValueInjection!11180) Bool)

(assert (=> b!3612915 (= e!2236054 (and tp!1104220 (inv!51407 (tag!6356 (rule!8400 token!511))) (inv!51411 (transformation!5646 (rule!8400 token!511))) e!2236072))))

(declare-fun e!2236039 () Bool)

(assert (=> b!3612916 (= e!2236039 (and tp!1104227 tp!1104226))))

(declare-fun b!3612917 () Bool)

(declare-fun e!2236055 () Unit!54299)

(declare-fun Unit!54304 () Unit!54299)

(assert (=> b!3612917 (= e!2236055 Unit!54304)))

(declare-fun b!3612918 () Bool)

(declare-fun res!1461599 () Bool)

(declare-fun e!2236040 () Bool)

(assert (=> b!3612918 (=> res!1461599 e!2236040)))

(assert (=> b!3612918 (= res!1461599 (isEmpty!22462 suffix!1395))))

(declare-fun b!3612919 () Bool)

(assert (=> b!3612919 (= e!2236065 (not e!2236040))))

(declare-fun res!1461606 () Bool)

(assert (=> b!3612919 (=> res!1461606 e!2236040)))

(declare-fun matchR!4974 (Regex!10405 List!38156) Bool)

(assert (=> b!3612919 (= res!1461606 (not (matchR!4974 (regex!5646 rule!403) lt!1244718)))))

(declare-fun ruleValid!1911 (LexerInterface!5235 Rule!11092) Bool)

(assert (=> b!3612919 (ruleValid!1911 thiss!23823 rule!403)))

(declare-fun lt!1244736 () Unit!54299)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1066 (LexerInterface!5235 Rule!11092 List!38157) Unit!54299)

(assert (=> b!3612919 (= lt!1244736 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1066 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3612920 () Bool)

(declare-fun tp!1104221 () Bool)

(assert (=> b!3612920 (= e!2236070 (and tp!1104221 (inv!51407 (tag!6356 anOtherTypeRule!33)) (inv!51411 (transformation!5646 anOtherTypeRule!33)) e!2236063))))

(declare-fun b!3612921 () Bool)

(declare-fun e!2236059 () Bool)

(assert (=> b!3612921 (= e!2236043 e!2236059)))

(declare-fun res!1461608 () Bool)

(assert (=> b!3612921 (=> res!1461608 e!2236059)))

(declare-fun lt!1244739 () Int)

(declare-fun lt!1244721 () TokenValue!5876)

(assert (=> b!3612921 (= res!1461608 (not (= lt!1244708 (Some!7922 (tuple2!37925 (Token!10659 lt!1244721 (rule!8400 (_1!22096 lt!1244730)) lt!1244739 lt!1244704) (_2!22096 lt!1244730))))))))

(declare-fun size!29000 (BalanceConc!22796) Int)

(assert (=> b!3612921 (= lt!1244739 (size!29000 lt!1244710))))

(declare-fun apply!9152 (TokenValueInjection!11180 BalanceConc!22796) TokenValue!5876)

(assert (=> b!3612921 (= lt!1244721 (apply!9152 (transformation!5646 (rule!8400 (_1!22096 lt!1244730))) lt!1244710))))

(declare-fun lt!1244700 () Unit!54299)

(declare-fun lemmaCharactersSize!699 (Token!10658) Unit!54299)

(assert (=> b!3612921 (= lt!1244700 (lemmaCharactersSize!699 (_1!22096 lt!1244730)))))

(declare-fun lt!1244724 () Unit!54299)

(declare-fun lemmaEqSameImage!837 (TokenValueInjection!11180 BalanceConc!22796 BalanceConc!22796) Unit!54299)

(declare-fun seqFromList!4199 (List!38156) BalanceConc!22796)

(assert (=> b!3612921 (= lt!1244724 (lemmaEqSameImage!837 (transformation!5646 (rule!8400 (_1!22096 lt!1244730))) lt!1244710 (seqFromList!4199 (originalCharacters!6360 (_1!22096 lt!1244730)))))))

(declare-fun lt!1244723 () Unit!54299)

(declare-fun lemmaSemiInverse!1403 (TokenValueInjection!11180 BalanceConc!22796) Unit!54299)

(assert (=> b!3612921 (= lt!1244723 (lemmaSemiInverse!1403 (transformation!5646 (rule!8400 (_1!22096 lt!1244730))) lt!1244710))))

(declare-fun tp!1104222 () Bool)

(declare-fun b!3612922 () Bool)

(declare-fun inv!21 (TokenValue!5876) Bool)

(assert (=> b!3612922 (= e!2236048 (and (inv!21 (value!181371 token!511)) e!2236054 tp!1104222))))

(declare-fun bm!261219 () Bool)

(assert (=> bm!261219 (= call!261223 (contains!7355 call!261226 lt!1244731))))

(declare-fun tp!1104231 () Bool)

(declare-fun b!3612923 () Bool)

(assert (=> b!3612923 (= e!2236062 (and tp!1104231 (inv!51407 (tag!6356 rule!403)) (inv!51411 (transformation!5646 rule!403)) e!2236039))))

(declare-fun b!3612924 () Bool)

(declare-fun e!2236056 () Bool)

(declare-fun lt!1244720 () Rule!11092)

(assert (=> b!3612924 (= e!2236056 (= (rule!8400 (_1!22096 lt!1244730)) lt!1244720))))

(declare-fun bm!261220 () Bool)

(declare-fun call!261227 () Unit!54299)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!630 (Regex!10405 List!38156 C!20996) Unit!54299)

(assert (=> bm!261220 (= call!261227 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!630 (regex!5646 (rule!8400 (_1!22096 lt!1244730))) lt!1244704 lt!1244726))))

(declare-fun b!3612925 () Bool)

(declare-fun res!1461594 () Bool)

(assert (=> b!3612925 (=> (not res!1461594) (not e!2236066))))

(assert (=> b!3612925 (= res!1461594 (contains!7356 rules!3307 rule!403))))

(declare-fun b!3612926 () Bool)

(declare-fun res!1461596 () Bool)

(assert (=> b!3612926 (=> res!1461596 e!2236043)))

(assert (=> b!3612926 (= res!1461596 (not (matchR!4974 (regex!5646 (rule!8400 (_1!22096 lt!1244730))) lt!1244704)))))

(declare-fun bm!261221 () Bool)

(assert (=> bm!261221 (= call!261224 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!630 (regex!5646 (rule!8400 (_1!22096 lt!1244730))) lt!1244704 lt!1244731))))

(declare-fun b!3612927 () Bool)

(assert (=> b!3612927 false))

(declare-fun lt!1244729 () Unit!54299)

(assert (=> b!3612927 (= lt!1244729 call!261224)))

(assert (=> b!3612927 (not call!261223)))

(declare-fun lt!1244719 () Unit!54299)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!234 (LexerInterface!5235 List!38157 List!38157 Rule!11092 Rule!11092 C!20996) Unit!54299)

(assert (=> b!3612927 (= lt!1244719 (lemmaSepRuleNotContainsCharContainedInANonSepRule!234 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8400 (_1!22096 lt!1244730)) lt!1244731))))

(declare-fun Unit!54305 () Unit!54299)

(assert (=> b!3612927 (= e!2236053 Unit!54305)))

(declare-fun e!2236060 () Bool)

(assert (=> b!3612928 (= e!2236060 (and tp!1104223 tp!1104232))))

(declare-fun bm!261222 () Bool)

(declare-fun call!261225 () List!38156)

(assert (=> bm!261222 (= call!261225 (usedCharacters!860 (regex!5646 (rule!8400 (_1!22096 lt!1244730)))))))

(declare-fun b!3612929 () Bool)

(declare-fun e!2236071 () Bool)

(declare-fun e!2236052 () Bool)

(assert (=> b!3612929 (= e!2236071 e!2236052)))

(declare-fun res!1461607 () Bool)

(assert (=> b!3612929 (=> res!1461607 e!2236052)))

(assert (=> b!3612929 (= res!1461607 (= (rule!8400 (_1!22096 lt!1244730)) (rule!8400 token!511)))))

(assert (=> b!3612929 (= lt!1244704 lt!1244718)))

(declare-fun lt!1244707 () Unit!54299)

(declare-fun lemmaIsPrefixSameLengthThenSameList!583 (List!38156 List!38156 List!38156) Unit!54299)

(assert (=> b!3612929 (= lt!1244707 (lemmaIsPrefixSameLengthThenSameList!583 lt!1244704 lt!1244718 lt!1244701))))

(declare-fun lt!1244735 () Unit!54299)

(assert (=> b!3612929 (= lt!1244735 e!2236049)))

(declare-fun c!625058 () Bool)

(declare-fun lt!1244713 () Int)

(assert (=> b!3612929 (= c!625058 (< lt!1244739 lt!1244713))))

(declare-fun lt!1244696 () Unit!54299)

(assert (=> b!3612929 (= lt!1244696 e!2236055)))

(declare-fun c!625057 () Bool)

(assert (=> b!3612929 (= c!625057 (> lt!1244739 lt!1244713))))

(declare-fun lt!1244697 () BalanceConc!22796)

(assert (=> b!3612929 (= lt!1244713 (size!29000 lt!1244697))))

(declare-fun lt!1244725 () Unit!54299)

(assert (=> b!3612929 (= lt!1244725 e!2236045)))

(declare-fun c!625056 () Bool)

(assert (=> b!3612929 (= c!625056 (isSeparator!5646 rule!403))))

(declare-fun lt!1244728 () Unit!54299)

(assert (=> b!3612929 (= lt!1244728 e!2236047)))

(declare-fun c!625054 () Bool)

(declare-fun lt!1244717 () List!38156)

(assert (=> b!3612929 (= c!625054 (not (contains!7355 lt!1244717 lt!1244731)))))

(declare-fun head!7608 (List!38156) C!20996)

(assert (=> b!3612929 (= lt!1244731 (head!7608 lt!1244704))))

(declare-fun b!3612930 () Bool)

(declare-fun e!2236067 () Bool)

(declare-fun tp!1104228 () Bool)

(assert (=> b!3612930 (= e!2236042 (and e!2236067 tp!1104228))))

(declare-fun b!3612931 () Bool)

(declare-fun e!2236061 () Bool)

(assert (=> b!3612931 (= e!2236066 e!2236061)))

(declare-fun res!1461598 () Bool)

(assert (=> b!3612931 (=> (not res!1461598) (not e!2236061))))

(declare-fun lt!1244712 () Option!7923)

(declare-fun isDefined!6155 (Option!7923) Bool)

(assert (=> b!3612931 (= res!1461598 (isDefined!6155 lt!1244712))))

(assert (=> b!3612931 (= lt!1244712 (maxPrefix!2769 thiss!23823 rules!3307 lt!1244718))))

(assert (=> b!3612931 (= lt!1244718 (list!14030 lt!1244697))))

(assert (=> b!3612931 (= lt!1244697 (charsOf!3660 token!511))))

(declare-fun b!3612932 () Bool)

(assert (=> b!3612932 (= e!2236052 true)))

(declare-fun lt!1244722 () Int)

(declare-fun getIndex!428 (List!38157 Rule!11092) Int)

(assert (=> b!3612932 (= lt!1244722 (getIndex!428 rules!3307 (rule!8400 (_1!22096 lt!1244730))))))

(declare-fun b!3612933 () Bool)

(assert (=> b!3612933 (= e!2236045 e!2236051)))

(declare-fun c!625059 () Bool)

(assert (=> b!3612933 (= c!625059 (not (isSeparator!5646 (rule!8400 (_1!22096 lt!1244730)))))))

(declare-fun b!3612934 () Bool)

(declare-fun Unit!54306 () Unit!54299)

(assert (=> b!3612934 (= e!2236047 Unit!54306)))

(declare-fun lt!1244714 () Unit!54299)

(assert (=> b!3612934 (= lt!1244714 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!630 (regex!5646 rule!403) lt!1244718 lt!1244731))))

(assert (=> b!3612934 false))

(declare-fun bm!261223 () Bool)

(declare-fun call!261228 () Bool)

(assert (=> bm!261223 (= call!261228 (contains!7355 call!261225 lt!1244726))))

(assert (=> b!3612935 (= e!2236072 (and tp!1104225 tp!1104229))))

(declare-fun b!3612936 () Bool)

(declare-fun Unit!54307 () Unit!54299)

(assert (=> b!3612936 (= e!2236051 Unit!54307)))

(declare-fun b!3612937 () Bool)

(assert (=> b!3612937 (= e!2236059 e!2236071)))

(declare-fun res!1461592 () Bool)

(assert (=> b!3612937 (=> res!1461592 e!2236071)))

(declare-fun lt!1244737 () Option!7923)

(declare-fun lt!1244741 () List!38156)

(assert (=> b!3612937 (= res!1461592 (or (not (= lt!1244741 (_2!22096 lt!1244730))) (not (= lt!1244737 (Some!7922 (tuple2!37925 (_1!22096 lt!1244730) lt!1244741))))))))

(assert (=> b!3612937 (= (_2!22096 lt!1244730) lt!1244741)))

(declare-fun lt!1244705 () Unit!54299)

(declare-fun lemmaSamePrefixThenSameSuffix!1364 (List!38156 List!38156 List!38156 List!38156 List!38156) Unit!54299)

(assert (=> b!3612937 (= lt!1244705 (lemmaSamePrefixThenSameSuffix!1364 lt!1244704 (_2!22096 lt!1244730) lt!1244704 lt!1244741 lt!1244701))))

(declare-fun getSuffix!1584 (List!38156 List!38156) List!38156)

(assert (=> b!3612937 (= lt!1244741 (getSuffix!1584 lt!1244701 lt!1244704))))

(declare-fun lt!1244709 () TokenValue!5876)

(declare-fun lt!1244711 () Int)

(assert (=> b!3612937 (= lt!1244737 (Some!7922 (tuple2!37925 (Token!10659 lt!1244709 (rule!8400 (_1!22096 lt!1244730)) lt!1244711 lt!1244704) (_2!22096 lt!1244730))))))

(declare-fun maxPrefixOneRule!1913 (LexerInterface!5235 Rule!11092 List!38156) Option!7923)

(assert (=> b!3612937 (= lt!1244737 (maxPrefixOneRule!1913 thiss!23823 (rule!8400 (_1!22096 lt!1244730)) lt!1244701))))

(declare-fun size!29001 (List!38156) Int)

(assert (=> b!3612937 (= lt!1244711 (size!29001 lt!1244704))))

(assert (=> b!3612937 (= lt!1244709 (apply!9152 (transformation!5646 (rule!8400 (_1!22096 lt!1244730))) (seqFromList!4199 lt!1244704)))))

(declare-fun lt!1244698 () Unit!54299)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!985 (LexerInterface!5235 List!38157 List!38156 List!38156 List!38156 Rule!11092) Unit!54299)

(assert (=> b!3612937 (= lt!1244698 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!985 thiss!23823 rules!3307 lt!1244704 lt!1244701 (_2!22096 lt!1244730) (rule!8400 (_1!22096 lt!1244730))))))

(declare-fun b!3612938 () Bool)

(declare-fun res!1461605 () Bool)

(assert (=> b!3612938 (=> (not res!1461605) (not e!2236065))))

(assert (=> b!3612938 (= res!1461605 (= (rule!8400 token!511) rule!403))))

(declare-fun b!3612939 () Bool)

(assert (=> b!3612939 false))

(declare-fun lt!1244702 () Unit!54299)

(assert (=> b!3612939 (= lt!1244702 call!261227)))

(assert (=> b!3612939 (not call!261228)))

(declare-fun lt!1244734 () Unit!54299)

(assert (=> b!3612939 (= lt!1244734 (lemmaNonSepRuleNotContainsCharContainedInASepRule!352 thiss!23823 rules!3307 rules!3307 (rule!8400 (_1!22096 lt!1244730)) anOtherTypeRule!33 lt!1244726))))

(declare-fun e!2236044 () Unit!54299)

(declare-fun Unit!54308 () Unit!54299)

(assert (=> b!3612939 (= e!2236044 Unit!54308)))

(declare-fun b!3612940 () Bool)

(assert (=> b!3612940 (= e!2236061 e!2236065)))

(declare-fun res!1461611 () Bool)

(assert (=> b!3612940 (=> (not res!1461611) (not e!2236065))))

(assert (=> b!3612940 (= res!1461611 (= (_1!22096 lt!1244716) token!511))))

(assert (=> b!3612940 (= lt!1244716 (get!12355 lt!1244712))))

(declare-fun b!3612941 () Bool)

(assert (=> b!3612941 (= e!2236040 e!2236068)))

(declare-fun res!1461610 () Bool)

(assert (=> b!3612941 (=> res!1461610 e!2236068)))

(assert (=> b!3612941 (= res!1461610 (contains!7355 lt!1244717 lt!1244726))))

(assert (=> b!3612941 (= lt!1244726 (head!7608 suffix!1395))))

(assert (=> b!3612941 (= lt!1244717 (usedCharacters!860 (regex!5646 rule!403)))))

(declare-fun b!3612942 () Bool)

(assert (=> b!3612942 (= e!2236069 e!2236056)))

(declare-fun res!1461597 () Bool)

(assert (=> b!3612942 (=> (not res!1461597) (not e!2236056))))

(assert (=> b!3612942 (= res!1461597 (matchR!4974 (regex!5646 lt!1244720) (list!14030 (charsOf!3660 (_1!22096 lt!1244730)))))))

(declare-fun get!12356 (Option!7922) Rule!11092)

(assert (=> b!3612942 (= lt!1244720 (get!12356 lt!1244715))))

(declare-fun b!3612943 () Bool)

(declare-fun Unit!54309 () Unit!54299)

(assert (=> b!3612943 (= e!2236049 Unit!54309)))

(declare-fun b!3612944 () Bool)

(assert (=> b!3612944 false))

(declare-fun lt!1244738 () Unit!54299)

(assert (=> b!3612944 (= lt!1244738 call!261227)))

(assert (=> b!3612944 (not call!261228)))

(declare-fun lt!1244699 () Unit!54299)

(assert (=> b!3612944 (= lt!1244699 (lemmaSepRuleNotContainsCharContainedInANonSepRule!234 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8400 (_1!22096 lt!1244730)) lt!1244726))))

(declare-fun Unit!54310 () Unit!54299)

(assert (=> b!3612944 (= e!2236044 Unit!54310)))

(declare-fun b!3612945 () Bool)

(assert (=> b!3612945 (= e!2236055 e!2236044)))

(declare-fun lt!1244706 () Unit!54299)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!24 (List!38156 List!38156 List!38156 List!38156) Unit!54299)

(assert (=> b!3612945 (= lt!1244706 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!24 lt!1244718 suffix!1395 lt!1244704 lt!1244701))))

(assert (=> b!3612945 (contains!7355 lt!1244704 lt!1244726)))

(declare-fun c!625055 () Bool)

(assert (=> b!3612945 (= c!625055 (isSeparator!5646 rule!403))))

(declare-fun b!3612946 () Bool)

(declare-fun res!1461593 () Bool)

(assert (=> b!3612946 (=> (not res!1461593) (not e!2236066))))

(declare-fun isEmpty!22463 (List!38157) Bool)

(assert (=> b!3612946 (= res!1461593 (not (isEmpty!22463 rules!3307)))))

(declare-fun b!3612947 () Bool)

(declare-fun tp!1104224 () Bool)

(assert (=> b!3612947 (= e!2236067 (and tp!1104224 (inv!51407 (tag!6356 (h!43453 rules!3307))) (inv!51411 (transformation!5646 (h!43453 rules!3307))) e!2236060))))

(declare-fun b!3612948 () Bool)

(declare-fun Unit!54311 () Unit!54299)

(assert (=> b!3612948 (= e!2236053 Unit!54311)))

(assert (= (and start!336430 res!1461595) b!3612946))

(assert (= (and b!3612946 res!1461593) b!3612910))

(assert (= (and b!3612910 res!1461609) b!3612925))

(assert (= (and b!3612925 res!1461594) b!3612905))

(assert (= (and b!3612905 res!1461602) b!3612906))

(assert (= (and b!3612906 res!1461590) b!3612931))

(assert (= (and b!3612931 res!1461598) b!3612940))

(assert (= (and b!3612940 res!1461611) b!3612903))

(assert (= (and b!3612903 res!1461603) b!3612938))

(assert (= (and b!3612938 res!1461605) b!3612919))

(assert (= (and b!3612919 (not res!1461606)) b!3612918))

(assert (= (and b!3612918 (not res!1461599)) b!3612941))

(assert (= (and b!3612941 (not res!1461610)) b!3612904))

(assert (= (and b!3612904 (not res!1461601)) b!3612902))

(assert (= (and b!3612902 (not res!1461604)) b!3612908))

(assert (= (and b!3612908 res!1461591) b!3612942))

(assert (= (and b!3612942 res!1461597) b!3612924))

(assert (= (and b!3612908 (not res!1461600)) b!3612926))

(assert (= (and b!3612926 (not res!1461596)) b!3612921))

(assert (= (and b!3612921 (not res!1461608)) b!3612937))

(assert (= (and b!3612937 (not res!1461592)) b!3612929))

(assert (= (and b!3612929 c!625054) b!3612934))

(assert (= (and b!3612929 (not c!625054)) b!3612911))

(assert (= (and b!3612929 c!625056) b!3612933))

(assert (= (and b!3612929 (not c!625056)) b!3612909))

(assert (= (and b!3612933 c!625059) b!3612913))

(assert (= (and b!3612933 (not c!625059)) b!3612936))

(assert (= (and b!3612909 c!625053) b!3612927))

(assert (= (and b!3612909 (not c!625053)) b!3612948))

(assert (= (or b!3612913 b!3612927) bm!261221))

(assert (= (or b!3612913 b!3612927) bm!261218))

(assert (= (or b!3612913 b!3612927) bm!261219))

(assert (= (and b!3612929 c!625057) b!3612945))

(assert (= (and b!3612929 (not c!625057)) b!3612917))

(assert (= (and b!3612945 c!625055) b!3612944))

(assert (= (and b!3612945 (not c!625055)) b!3612939))

(assert (= (or b!3612944 b!3612939) bm!261220))

(assert (= (or b!3612944 b!3612939) bm!261222))

(assert (= (or b!3612944 b!3612939) bm!261223))

(assert (= (and b!3612929 c!625058) b!3612907))

(assert (= (and b!3612929 (not c!625058)) b!3612943))

(assert (= (and b!3612929 (not res!1461607)) b!3612932))

(assert (= b!3612947 b!3612928))

(assert (= b!3612930 b!3612947))

(assert (= (and start!336430 ((_ is Cons!38033) rules!3307)) b!3612930))

(assert (= (and start!336430 ((_ is Cons!38032) suffix!1395)) b!3612914))

(assert (= b!3612915 b!3612935))

(assert (= b!3612922 b!3612915))

(assert (= start!336430 b!3612922))

(assert (= b!3612923 b!3612916))

(assert (= start!336430 b!3612923))

(assert (= b!3612920 b!3612912))

(assert (= start!336430 b!3612920))

(declare-fun m!4110973 () Bool)

(assert (=> b!3612945 m!4110973))

(declare-fun m!4110975 () Bool)

(assert (=> b!3612945 m!4110975))

(declare-fun m!4110977 () Bool)

(assert (=> bm!261218 m!4110977))

(declare-fun m!4110979 () Bool)

(assert (=> bm!261220 m!4110979))

(declare-fun m!4110981 () Bool)

(assert (=> bm!261223 m!4110981))

(declare-fun m!4110983 () Bool)

(assert (=> b!3612939 m!4110983))

(declare-fun m!4110985 () Bool)

(assert (=> b!3612913 m!4110985))

(declare-fun m!4110987 () Bool)

(assert (=> b!3612946 m!4110987))

(declare-fun m!4110989 () Bool)

(assert (=> b!3612908 m!4110989))

(declare-fun m!4110991 () Bool)

(assert (=> b!3612908 m!4110991))

(declare-fun m!4110993 () Bool)

(assert (=> b!3612908 m!4110993))

(declare-fun m!4110995 () Bool)

(assert (=> b!3612908 m!4110995))

(declare-fun m!4110997 () Bool)

(assert (=> b!3612908 m!4110997))

(declare-fun m!4110999 () Bool)

(assert (=> b!3612908 m!4110999))

(declare-fun m!4111001 () Bool)

(assert (=> b!3612908 m!4111001))

(declare-fun m!4111003 () Bool)

(assert (=> b!3612908 m!4111003))

(declare-fun m!4111005 () Bool)

(assert (=> b!3612908 m!4111005))

(declare-fun m!4111007 () Bool)

(assert (=> b!3612908 m!4111007))

(assert (=> b!3612908 m!4110991))

(declare-fun m!4111009 () Bool)

(assert (=> b!3612908 m!4111009))

(declare-fun m!4111011 () Bool)

(assert (=> b!3612908 m!4111011))

(declare-fun m!4111013 () Bool)

(assert (=> b!3612908 m!4111013))

(declare-fun m!4111015 () Bool)

(assert (=> b!3612908 m!4111015))

(declare-fun m!4111017 () Bool)

(assert (=> b!3612908 m!4111017))

(declare-fun m!4111019 () Bool)

(assert (=> b!3612919 m!4111019))

(declare-fun m!4111021 () Bool)

(assert (=> b!3612919 m!4111021))

(declare-fun m!4111023 () Bool)

(assert (=> b!3612919 m!4111023))

(declare-fun m!4111025 () Bool)

(assert (=> b!3612902 m!4111025))

(declare-fun m!4111027 () Bool)

(assert (=> b!3612947 m!4111027))

(declare-fun m!4111029 () Bool)

(assert (=> b!3612947 m!4111029))

(declare-fun m!4111031 () Bool)

(assert (=> b!3612931 m!4111031))

(declare-fun m!4111033 () Bool)

(assert (=> b!3612931 m!4111033))

(declare-fun m!4111035 () Bool)

(assert (=> b!3612931 m!4111035))

(declare-fun m!4111037 () Bool)

(assert (=> b!3612931 m!4111037))

(assert (=> bm!261222 m!4110977))

(declare-fun m!4111039 () Bool)

(assert (=> b!3612920 m!4111039))

(declare-fun m!4111041 () Bool)

(assert (=> b!3612920 m!4111041))

(declare-fun m!4111043 () Bool)

(assert (=> b!3612907 m!4111043))

(declare-fun m!4111045 () Bool)

(assert (=> b!3612941 m!4111045))

(declare-fun m!4111047 () Bool)

(assert (=> b!3612941 m!4111047))

(declare-fun m!4111049 () Bool)

(assert (=> b!3612941 m!4111049))

(declare-fun m!4111051 () Bool)

(assert (=> b!3612927 m!4111051))

(declare-fun m!4111053 () Bool)

(assert (=> b!3612905 m!4111053))

(declare-fun m!4111055 () Bool)

(assert (=> b!3612925 m!4111055))

(declare-fun m!4111057 () Bool)

(assert (=> b!3612921 m!4111057))

(declare-fun m!4111059 () Bool)

(assert (=> b!3612921 m!4111059))

(declare-fun m!4111061 () Bool)

(assert (=> b!3612921 m!4111061))

(declare-fun m!4111063 () Bool)

(assert (=> b!3612921 m!4111063))

(assert (=> b!3612921 m!4111059))

(declare-fun m!4111065 () Bool)

(assert (=> b!3612921 m!4111065))

(declare-fun m!4111067 () Bool)

(assert (=> b!3612921 m!4111067))

(declare-fun m!4111069 () Bool)

(assert (=> b!3612932 m!4111069))

(declare-fun m!4111071 () Bool)

(assert (=> b!3612918 m!4111071))

(assert (=> b!3612942 m!4110989))

(assert (=> b!3612942 m!4110989))

(declare-fun m!4111073 () Bool)

(assert (=> b!3612942 m!4111073))

(assert (=> b!3612942 m!4111073))

(declare-fun m!4111075 () Bool)

(assert (=> b!3612942 m!4111075))

(declare-fun m!4111077 () Bool)

(assert (=> b!3612942 m!4111077))

(declare-fun m!4111079 () Bool)

(assert (=> b!3612915 m!4111079))

(declare-fun m!4111081 () Bool)

(assert (=> b!3612915 m!4111081))

(declare-fun m!4111083 () Bool)

(assert (=> b!3612940 m!4111083))

(declare-fun m!4111085 () Bool)

(assert (=> b!3612923 m!4111085))

(declare-fun m!4111087 () Bool)

(assert (=> b!3612923 m!4111087))

(declare-fun m!4111089 () Bool)

(assert (=> b!3612904 m!4111089))

(assert (=> b!3612904 m!4111089))

(declare-fun m!4111091 () Bool)

(assert (=> b!3612904 m!4111091))

(declare-fun m!4111093 () Bool)

(assert (=> b!3612903 m!4111093))

(declare-fun m!4111095 () Bool)

(assert (=> b!3612910 m!4111095))

(declare-fun m!4111097 () Bool)

(assert (=> b!3612929 m!4111097))

(declare-fun m!4111099 () Bool)

(assert (=> b!3612929 m!4111099))

(declare-fun m!4111101 () Bool)

(assert (=> b!3612929 m!4111101))

(declare-fun m!4111103 () Bool)

(assert (=> b!3612929 m!4111103))

(declare-fun m!4111105 () Bool)

(assert (=> b!3612944 m!4111105))

(declare-fun m!4111107 () Bool)

(assert (=> bm!261221 m!4111107))

(declare-fun m!4111109 () Bool)

(assert (=> b!3612922 m!4111109))

(declare-fun m!4111111 () Bool)

(assert (=> b!3612926 m!4111111))

(declare-fun m!4111113 () Bool)

(assert (=> bm!261219 m!4111113))

(declare-fun m!4111115 () Bool)

(assert (=> b!3612937 m!4111115))

(declare-fun m!4111117 () Bool)

(assert (=> b!3612937 m!4111117))

(declare-fun m!4111119 () Bool)

(assert (=> b!3612937 m!4111119))

(declare-fun m!4111121 () Bool)

(assert (=> b!3612937 m!4111121))

(declare-fun m!4111123 () Bool)

(assert (=> b!3612937 m!4111123))

(declare-fun m!4111125 () Bool)

(assert (=> b!3612937 m!4111125))

(assert (=> b!3612937 m!4111119))

(declare-fun m!4111127 () Bool)

(assert (=> b!3612937 m!4111127))

(declare-fun m!4111129 () Bool)

(assert (=> b!3612934 m!4111129))

(declare-fun m!4111131 () Bool)

(assert (=> start!336430 m!4111131))

(check-sat (not b_next!94587) (not bm!261219) (not b_next!94595) b_and!263643 (not b_next!94593) (not b!3612902) (not b!3612944) (not b!3612930) (not b_next!94599) (not b!3612929) (not b!3612904) b_and!263649 (not b!3612910) (not b!3612920) (not b_next!94597) (not b_next!94591) b_and!263657 (not b!3612907) (not b!3612946) (not b!3612922) (not b!3612927) (not b!3612926) b_and!263655 b_and!263651 (not b!3612918) (not b!3612905) (not b!3612919) (not b!3612945) (not bm!261220) (not start!336430) tp_is_empty!17893 (not b!3612921) (not b!3612947) (not b!3612937) (not b!3612931) (not b!3612925) (not b!3612908) (not b!3612915) (not bm!261221) (not b_next!94589) (not b!3612941) (not b!3612940) b_and!263645 (not b!3612934) (not b!3612913) (not bm!261222) (not b!3612914) (not b_next!94585) (not bm!261223) (not b!3612942) (not b!3612939) b_and!263647 (not b!3612923) b_and!263653 (not bm!261218) (not b!3612932) (not b!3612903))
(check-sat (not b_next!94587) b_and!263649 b_and!263657 (not b_next!94595) b_and!263643 (not b_next!94593) (not b_next!94589) b_and!263645 (not b_next!94585) b_and!263647 b_and!263653 (not b_next!94599) (not b_next!94597) (not b_next!94591) b_and!263655 b_and!263651)
