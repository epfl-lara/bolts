; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!338018 () Bool)

(assert start!338018)

(declare-fun b!3626900 () Bool)

(declare-fun b_free!94721 () Bool)

(declare-fun b_next!95425 () Bool)

(assert (=> b!3626900 (= b_free!94721 (not b_next!95425))))

(declare-fun tp!1107454 () Bool)

(declare-fun b_and!265751 () Bool)

(assert (=> b!3626900 (= tp!1107454 b_and!265751)))

(declare-fun b_free!94723 () Bool)

(declare-fun b_next!95427 () Bool)

(assert (=> b!3626900 (= b_free!94723 (not b_next!95427))))

(declare-fun tp!1107456 () Bool)

(declare-fun b_and!265753 () Bool)

(assert (=> b!3626900 (= tp!1107456 b_and!265753)))

(declare-fun b!3626876 () Bool)

(declare-fun b_free!94725 () Bool)

(declare-fun b_next!95429 () Bool)

(assert (=> b!3626876 (= b_free!94725 (not b_next!95429))))

(declare-fun tp!1107452 () Bool)

(declare-fun b_and!265755 () Bool)

(assert (=> b!3626876 (= tp!1107452 b_and!265755)))

(declare-fun b_free!94727 () Bool)

(declare-fun b_next!95431 () Bool)

(assert (=> b!3626876 (= b_free!94727 (not b_next!95431))))

(declare-fun tp!1107463 () Bool)

(declare-fun b_and!265757 () Bool)

(assert (=> b!3626876 (= tp!1107463 b_and!265757)))

(declare-fun b!3626879 () Bool)

(declare-fun b_free!94729 () Bool)

(declare-fun b_next!95433 () Bool)

(assert (=> b!3626879 (= b_free!94729 (not b_next!95433))))

(declare-fun tp!1107455 () Bool)

(declare-fun b_and!265759 () Bool)

(assert (=> b!3626879 (= tp!1107455 b_and!265759)))

(declare-fun b_free!94731 () Bool)

(declare-fun b_next!95435 () Bool)

(assert (=> b!3626879 (= b_free!94731 (not b_next!95435))))

(declare-fun tp!1107459 () Bool)

(declare-fun b_and!265761 () Bool)

(assert (=> b!3626879 (= tp!1107459 b_and!265761)))

(declare-fun b!3626893 () Bool)

(declare-fun b_free!94733 () Bool)

(declare-fun b_next!95437 () Bool)

(assert (=> b!3626893 (= b_free!94733 (not b_next!95437))))

(declare-fun tp!1107460 () Bool)

(declare-fun b_and!265763 () Bool)

(assert (=> b!3626893 (= tp!1107460 b_and!265763)))

(declare-fun b_free!94735 () Bool)

(declare-fun b_next!95439 () Bool)

(assert (=> b!3626893 (= b_free!94735 (not b_next!95439))))

(declare-fun tp!1107453 () Bool)

(declare-fun b_and!265765 () Bool)

(assert (=> b!3626893 (= tp!1107453 b_and!265765)))

(declare-fun e!2245005 () Bool)

(assert (=> b!3626876 (= e!2245005 (and tp!1107452 tp!1107463))))

(declare-fun b!3626877 () Bool)

(declare-fun res!1468357 () Bool)

(declare-fun e!2245002 () Bool)

(assert (=> b!3626877 (=> res!1468357 e!2245002)))

(declare-datatypes ((C!21092 0))(
  ( (C!21093 (val!12594 Int)) )
))
(declare-datatypes ((List!38331 0))(
  ( (Nil!38207) (Cons!38207 (h!43627 C!21092) (t!294786 List!38331)) )
))
(declare-fun suffix!1395 () List!38331)

(declare-fun isEmpty!22592 (List!38331) Bool)

(assert (=> b!3626877 (= res!1468357 (isEmpty!22592 suffix!1395))))

(declare-fun b!3626878 () Bool)

(declare-datatypes ((Unit!54971 0))(
  ( (Unit!54972) )
))
(declare-fun e!2245000 () Unit!54971)

(declare-fun Unit!54973 () Unit!54971)

(assert (=> b!3626878 (= e!2245000 Unit!54973)))

(declare-fun lt!1254016 () List!38331)

(declare-fun lt!1254034 () Unit!54971)

(declare-datatypes ((List!38332 0))(
  ( (Nil!38208) (Cons!38208 (h!43628 (_ BitVec 16)) (t!294787 List!38332)) )
))
(declare-datatypes ((TokenValue!5924 0))(
  ( (FloatLiteralValue!11848 (text!41913 List!38332)) (TokenValueExt!5923 (__x!24065 Int)) (Broken!29620 (value!182713 List!38332)) (Object!6047) (End!5924) (Def!5924) (Underscore!5924) (Match!5924) (Else!5924) (Error!5924) (Case!5924) (If!5924) (Extends!5924) (Abstract!5924) (Class!5924) (Val!5924) (DelimiterValue!11848 (del!5984 List!38332)) (KeywordValue!5930 (value!182714 List!38332)) (CommentValue!11848 (value!182715 List!38332)) (WhitespaceValue!11848 (value!182716 List!38332)) (IndentationValue!5924 (value!182717 List!38332)) (String!42953) (Int32!5924) (Broken!29621 (value!182718 List!38332)) (Boolean!5925) (Unit!54974) (OperatorValue!5927 (op!5984 List!38332)) (IdentifierValue!11848 (value!182719 List!38332)) (IdentifierValue!11849 (value!182720 List!38332)) (WhitespaceValue!11849 (value!182721 List!38332)) (True!11848) (False!11848) (Broken!29622 (value!182722 List!38332)) (Broken!29623 (value!182723 List!38332)) (True!11849) (RightBrace!5924) (RightBracket!5924) (Colon!5924) (Null!5924) (Comma!5924) (LeftBracket!5924) (False!11849) (LeftBrace!5924) (ImaginaryLiteralValue!5924 (text!41914 List!38332)) (StringLiteralValue!17772 (value!182724 List!38332)) (EOFValue!5924 (value!182725 List!38332)) (IdentValue!5924 (value!182726 List!38332)) (DelimiterValue!11849 (value!182727 List!38332)) (DedentValue!5924 (value!182728 List!38332)) (NewLineValue!5924 (value!182729 List!38332)) (IntegerValue!17772 (value!182730 (_ BitVec 32)) (text!41915 List!38332)) (IntegerValue!17773 (value!182731 Int) (text!41916 List!38332)) (Times!5924) (Or!5924) (Equal!5924) (Minus!5924) (Broken!29624 (value!182732 List!38332)) (And!5924) (Div!5924) (LessEqual!5924) (Mod!5924) (Concat!16377) (Not!5924) (Plus!5924) (SpaceValue!5924 (value!182733 List!38332)) (IntegerValue!17774 (value!182734 Int) (text!41917 List!38332)) (StringLiteralValue!17773 (text!41918 List!38332)) (FloatLiteralValue!11849 (text!41919 List!38332)) (BytesLiteralValue!5924 (value!182735 List!38332)) (CommentValue!11849 (value!182736 List!38332)) (StringLiteralValue!17774 (value!182737 List!38332)) (ErrorTokenValue!5924 (msg!5985 List!38332)) )
))
(declare-datatypes ((Regex!10453 0))(
  ( (ElementMatch!10453 (c!627510 C!21092)) (Concat!16378 (regOne!21418 Regex!10453) (regTwo!21418 Regex!10453)) (EmptyExpr!10453) (Star!10453 (reg!10782 Regex!10453)) (EmptyLang!10453) (Union!10453 (regOne!21419 Regex!10453) (regTwo!21419 Regex!10453)) )
))
(declare-datatypes ((String!42954 0))(
  ( (String!42955 (value!182738 String)) )
))
(declare-datatypes ((IArray!23315 0))(
  ( (IArray!23316 (innerList!11715 List!38331)) )
))
(declare-datatypes ((Conc!11655 0))(
  ( (Node!11655 (left!29828 Conc!11655) (right!30158 Conc!11655) (csize!23540 Int) (cheight!11866 Int)) (Leaf!18113 (xs!14857 IArray!23315) (csize!23541 Int)) (Empty!11655) )
))
(declare-datatypes ((BalanceConc!22924 0))(
  ( (BalanceConc!22925 (c!627511 Conc!11655)) )
))
(declare-datatypes ((TokenValueInjection!11276 0))(
  ( (TokenValueInjection!11277 (toValue!7982 Int) (toChars!7841 Int)) )
))
(declare-datatypes ((Rule!11188 0))(
  ( (Rule!11189 (regex!5694 Regex!10453) (tag!6420 String!42954) (isSeparator!5694 Bool) (transformation!5694 TokenValueInjection!11276)) )
))
(declare-fun rule!403 () Rule!11188)

(declare-fun lt!1254018 () C!21092)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!666 (Regex!10453 List!38331 C!21092) Unit!54971)

(assert (=> b!3626878 (= lt!1254034 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!666 (regex!5694 rule!403) lt!1254016 lt!1254018))))

(assert (=> b!3626878 false))

(declare-fun e!2245017 () Bool)

(assert (=> b!3626879 (= e!2245017 (and tp!1107455 tp!1107459))))

(declare-fun b!3626880 () Bool)

(declare-fun e!2245006 () Bool)

(declare-fun e!2245001 () Bool)

(assert (=> b!3626880 (= e!2245006 e!2245001)))

(declare-fun res!1468350 () Bool)

(assert (=> b!3626880 (=> res!1468350 e!2245001)))

(declare-fun lt!1254040 () List!38331)

(declare-datatypes ((Token!10754 0))(
  ( (Token!10755 (value!182739 TokenValue!5924) (rule!8462 Rule!11188) (size!29149 Int) (originalCharacters!6408 List!38331)) )
))
(declare-datatypes ((tuple2!38084 0))(
  ( (tuple2!38085 (_1!22176 Token!10754) (_2!22176 List!38331)) )
))
(declare-datatypes ((Option!8018 0))(
  ( (None!8017) (Some!8017 (v!37799 tuple2!38084)) )
))
(declare-fun lt!1254023 () Option!8018)

(declare-fun lt!1254036 () BalanceConc!22924)

(declare-fun lt!1254035 () tuple2!38084)

(declare-fun apply!9196 (TokenValueInjection!11276 BalanceConc!22924) TokenValue!5924)

(declare-fun size!29150 (BalanceConc!22924) Int)

(assert (=> b!3626880 (= res!1468350 (not (= lt!1254023 (Some!8017 (tuple2!38085 (Token!10755 (apply!9196 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))) lt!1254036) (rule!8462 (_1!22176 lt!1254035)) (size!29150 lt!1254036) lt!1254040) (_2!22176 lt!1254035))))))))

(declare-fun lt!1254038 () Unit!54971)

(declare-fun lemmaCharactersSize!741 (Token!10754) Unit!54971)

(assert (=> b!3626880 (= lt!1254038 (lemmaCharactersSize!741 (_1!22176 lt!1254035)))))

(declare-fun lt!1254020 () Unit!54971)

(declare-fun lemmaEqSameImage!879 (TokenValueInjection!11276 BalanceConc!22924 BalanceConc!22924) Unit!54971)

(declare-fun seqFromList!4243 (List!38331) BalanceConc!22924)

(assert (=> b!3626880 (= lt!1254020 (lemmaEqSameImage!879 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))) lt!1254036 (seqFromList!4243 (originalCharacters!6408 (_1!22176 lt!1254035)))))))

(declare-fun lt!1254029 () Unit!54971)

(declare-fun lemmaSemiInverse!1445 (TokenValueInjection!11276 BalanceConc!22924) Unit!54971)

(assert (=> b!3626880 (= lt!1254029 (lemmaSemiInverse!1445 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))) lt!1254036))))

(declare-datatypes ((List!38333 0))(
  ( (Nil!38209) (Cons!38209 (h!43629 Rule!11188) (t!294788 List!38333)) )
))
(declare-fun rules!3307 () List!38333)

(declare-fun e!2244995 () Bool)

(declare-fun tp!1107464 () Bool)

(declare-fun b!3626881 () Bool)

(declare-fun e!2245008 () Bool)

(declare-fun inv!51613 (String!42954) Bool)

(declare-fun inv!51616 (TokenValueInjection!11276) Bool)

(assert (=> b!3626881 (= e!2245008 (and tp!1107464 (inv!51613 (tag!6420 (h!43629 rules!3307))) (inv!51616 (transformation!5694 (h!43629 rules!3307))) e!2244995))))

(declare-fun b!3626882 () Bool)

(declare-fun e!2245003 () Bool)

(declare-fun tp_is_empty!17989 () Bool)

(declare-fun tp!1107458 () Bool)

(assert (=> b!3626882 (= e!2245003 (and tp_is_empty!17989 tp!1107458))))

(declare-fun b!3626883 () Bool)

(declare-fun e!2245013 () Bool)

(assert (=> b!3626883 (= e!2245013 e!2245006)))

(declare-fun res!1468358 () Bool)

(assert (=> b!3626883 (=> res!1468358 e!2245006)))

(declare-fun lt!1254026 () List!38331)

(declare-fun isPrefix!3057 (List!38331 List!38331) Bool)

(assert (=> b!3626883 (= res!1468358 (not (isPrefix!3057 lt!1254040 lt!1254026)))))

(declare-fun ++!9510 (List!38331 List!38331) List!38331)

(assert (=> b!3626883 (isPrefix!3057 lt!1254040 (++!9510 lt!1254040 (_2!22176 lt!1254035)))))

(declare-fun lt!1254033 () Unit!54971)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1978 (List!38331 List!38331) Unit!54971)

(assert (=> b!3626883 (= lt!1254033 (lemmaConcatTwoListThenFirstIsPrefix!1978 lt!1254040 (_2!22176 lt!1254035)))))

(declare-fun list!14114 (BalanceConc!22924) List!38331)

(assert (=> b!3626883 (= lt!1254040 (list!14114 lt!1254036))))

(declare-fun charsOf!3708 (Token!10754) BalanceConc!22924)

(assert (=> b!3626883 (= lt!1254036 (charsOf!3708 (_1!22176 lt!1254035)))))

(declare-fun e!2245010 () Bool)

(assert (=> b!3626883 e!2245010))

(declare-fun res!1468361 () Bool)

(assert (=> b!3626883 (=> (not res!1468361) (not e!2245010))))

(declare-datatypes ((Option!8019 0))(
  ( (None!8018) (Some!8018 (v!37800 Rule!11188)) )
))
(declare-fun lt!1254022 () Option!8019)

(declare-fun isDefined!6250 (Option!8019) Bool)

(assert (=> b!3626883 (= res!1468361 (isDefined!6250 lt!1254022))))

(declare-datatypes ((LexerInterface!5283 0))(
  ( (LexerInterfaceExt!5280 (__x!24066 Int)) (Lexer!5281) )
))
(declare-fun thiss!23823 () LexerInterface!5283)

(declare-fun getRuleFromTag!1300 (LexerInterface!5283 List!38333 String!42954) Option!8019)

(assert (=> b!3626883 (= lt!1254022 (getRuleFromTag!1300 thiss!23823 rules!3307 (tag!6420 (rule!8462 (_1!22176 lt!1254035)))))))

(declare-fun lt!1254028 () Unit!54971)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1300 (LexerInterface!5283 List!38333 List!38331 Token!10754) Unit!54971)

(assert (=> b!3626883 (= lt!1254028 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1300 thiss!23823 rules!3307 lt!1254026 (_1!22176 lt!1254035)))))

(declare-fun get!12475 (Option!8018) tuple2!38084)

(assert (=> b!3626883 (= lt!1254035 (get!12475 lt!1254023))))

(declare-fun lt!1254015 () Unit!54971)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!963 (LexerInterface!5283 List!38333 List!38331 List!38331) Unit!54971)

(assert (=> b!3626883 (= lt!1254015 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!963 thiss!23823 rules!3307 lt!1254016 suffix!1395))))

(declare-fun maxPrefix!2817 (LexerInterface!5283 List!38333 List!38331) Option!8018)

(assert (=> b!3626883 (= lt!1254023 (maxPrefix!2817 thiss!23823 rules!3307 lt!1254026))))

(assert (=> b!3626883 (isPrefix!3057 lt!1254016 lt!1254026)))

(declare-fun lt!1254039 () Unit!54971)

(assert (=> b!3626883 (= lt!1254039 (lemmaConcatTwoListThenFirstIsPrefix!1978 lt!1254016 suffix!1395))))

(assert (=> b!3626883 (= lt!1254026 (++!9510 lt!1254016 suffix!1395))))

(declare-fun b!3626884 () Bool)

(declare-fun res!1468348 () Bool)

(declare-fun e!2245015 () Bool)

(assert (=> b!3626884 (=> (not res!1468348) (not e!2245015))))

(declare-fun anOtherTypeRule!33 () Rule!11188)

(assert (=> b!3626884 (= res!1468348 (not (= (isSeparator!5694 anOtherTypeRule!33) (isSeparator!5694 rule!403))))))

(declare-fun b!3626885 () Bool)

(declare-fun e!2244993 () Bool)

(declare-fun e!2245016 () Bool)

(assert (=> b!3626885 (= e!2244993 e!2245016)))

(declare-fun res!1468363 () Bool)

(assert (=> b!3626885 (=> (not res!1468363) (not e!2245016))))

(declare-fun lt!1254042 () tuple2!38084)

(declare-fun token!511 () Token!10754)

(assert (=> b!3626885 (= res!1468363 (= (_1!22176 lt!1254042) token!511))))

(declare-fun lt!1254017 () Option!8018)

(assert (=> b!3626885 (= lt!1254042 (get!12475 lt!1254017))))

(declare-fun b!3626886 () Bool)

(declare-fun res!1468346 () Bool)

(assert (=> b!3626886 (=> (not res!1468346) (not e!2245015))))

(declare-fun rulesInvariant!4680 (LexerInterface!5283 List!38333) Bool)

(assert (=> b!3626886 (= res!1468346 (rulesInvariant!4680 thiss!23823 rules!3307))))

(declare-fun b!3626887 () Bool)

(declare-fun res!1468347 () Bool)

(assert (=> b!3626887 (=> res!1468347 e!2245006)))

(declare-fun matchR!5022 (Regex!10453 List!38331) Bool)

(assert (=> b!3626887 (= res!1468347 (not (matchR!5022 (regex!5694 (rule!8462 (_1!22176 lt!1254035))) lt!1254040)))))

(declare-fun b!3626888 () Bool)

(declare-fun res!1468355 () Bool)

(assert (=> b!3626888 (=> (not res!1468355) (not e!2245016))))

(assert (=> b!3626888 (= res!1468355 (isEmpty!22592 (_2!22176 lt!1254042)))))

(declare-fun b!3626889 () Bool)

(declare-fun e!2245009 () Bool)

(assert (=> b!3626889 (= e!2245001 e!2245009)))

(declare-fun res!1468366 () Bool)

(assert (=> b!3626889 (=> res!1468366 e!2245009)))

(declare-fun lt!1254030 () List!38331)

(declare-fun lt!1254032 () Option!8018)

(assert (=> b!3626889 (= res!1468366 (or (not (= lt!1254030 (_2!22176 lt!1254035))) (not (= lt!1254032 (Some!8017 (tuple2!38085 (_1!22176 lt!1254035) lt!1254030))))))))

(assert (=> b!3626889 (= (_2!22176 lt!1254035) lt!1254030)))

(declare-fun lt!1254041 () Unit!54971)

(declare-fun lemmaSamePrefixThenSameSuffix!1404 (List!38331 List!38331 List!38331 List!38331 List!38331) Unit!54971)

(assert (=> b!3626889 (= lt!1254041 (lemmaSamePrefixThenSameSuffix!1404 lt!1254040 (_2!22176 lt!1254035) lt!1254040 lt!1254030 lt!1254026))))

(declare-fun getSuffix!1624 (List!38331 List!38331) List!38331)

(assert (=> b!3626889 (= lt!1254030 (getSuffix!1624 lt!1254026 lt!1254040))))

(declare-fun lt!1254019 () Int)

(declare-fun lt!1254024 () TokenValue!5924)

(assert (=> b!3626889 (= lt!1254032 (Some!8017 (tuple2!38085 (Token!10755 lt!1254024 (rule!8462 (_1!22176 lt!1254035)) lt!1254019 lt!1254040) (_2!22176 lt!1254035))))))

(declare-fun maxPrefixOneRule!1957 (LexerInterface!5283 Rule!11188 List!38331) Option!8018)

(assert (=> b!3626889 (= lt!1254032 (maxPrefixOneRule!1957 thiss!23823 (rule!8462 (_1!22176 lt!1254035)) lt!1254026))))

(declare-fun size!29151 (List!38331) Int)

(assert (=> b!3626889 (= lt!1254019 (size!29151 lt!1254040))))

(assert (=> b!3626889 (= lt!1254024 (apply!9196 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))) (seqFromList!4243 lt!1254040)))))

(declare-fun lt!1254027 () Unit!54971)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1025 (LexerInterface!5283 List!38333 List!38331 List!38331 List!38331 Rule!11188) Unit!54971)

(assert (=> b!3626889 (= lt!1254027 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1025 thiss!23823 rules!3307 lt!1254040 lt!1254026 (_2!22176 lt!1254035) (rule!8462 (_1!22176 lt!1254035))))))

(declare-fun b!3626890 () Bool)

(assert (=> b!3626890 (= e!2245002 e!2245013)))

(declare-fun res!1468360 () Bool)

(assert (=> b!3626890 (=> res!1468360 e!2245013)))

(declare-fun lt!1254021 () List!38331)

(declare-fun lt!1254014 () C!21092)

(declare-fun contains!7453 (List!38331 C!21092) Bool)

(assert (=> b!3626890 (= res!1468360 (contains!7453 lt!1254021 lt!1254014))))

(declare-fun head!7672 (List!38331) C!21092)

(assert (=> b!3626890 (= lt!1254014 (head!7672 suffix!1395))))

(declare-fun usedCharacters!908 (Regex!10453) List!38331)

(assert (=> b!3626890 (= lt!1254021 (usedCharacters!908 (regex!5694 rule!403)))))

(declare-fun res!1468359 () Bool)

(assert (=> start!338018 (=> (not res!1468359) (not e!2245015))))

(get-info :version)

(assert (=> start!338018 (= res!1468359 ((_ is Lexer!5281) thiss!23823))))

(assert (=> start!338018 e!2245015))

(declare-fun e!2245004 () Bool)

(assert (=> start!338018 e!2245004))

(assert (=> start!338018 e!2245003))

(assert (=> start!338018 true))

(declare-fun e!2245018 () Bool)

(declare-fun inv!51617 (Token!10754) Bool)

(assert (=> start!338018 (and (inv!51617 token!511) e!2245018)))

(declare-fun e!2245011 () Bool)

(assert (=> start!338018 e!2245011))

(declare-fun e!2244994 () Bool)

(assert (=> start!338018 e!2244994))

(declare-fun b!3626891 () Bool)

(declare-fun Unit!54975 () Unit!54971)

(assert (=> b!3626891 (= e!2245000 Unit!54975)))

(declare-fun b!3626892 () Bool)

(declare-fun e!2245019 () Bool)

(declare-fun lt!1254037 () Rule!11188)

(assert (=> b!3626892 (= e!2245019 (= (rule!8462 (_1!22176 lt!1254035)) lt!1254037))))

(assert (=> b!3626893 (= e!2244995 (and tp!1107460 tp!1107453))))

(declare-fun b!3626894 () Bool)

(assert (=> b!3626894 (= e!2245010 e!2245019)))

(declare-fun res!1468351 () Bool)

(assert (=> b!3626894 (=> (not res!1468351) (not e!2245019))))

(assert (=> b!3626894 (= res!1468351 (matchR!5022 (regex!5694 lt!1254037) (list!14114 (charsOf!3708 (_1!22176 lt!1254035)))))))

(declare-fun get!12476 (Option!8019) Rule!11188)

(assert (=> b!3626894 (= lt!1254037 (get!12476 lt!1254022))))

(declare-fun b!3626895 () Bool)

(assert (=> b!3626895 (= e!2245015 e!2244993)))

(declare-fun res!1468356 () Bool)

(assert (=> b!3626895 (=> (not res!1468356) (not e!2244993))))

(declare-fun isDefined!6251 (Option!8018) Bool)

(assert (=> b!3626895 (= res!1468356 (isDefined!6251 lt!1254017))))

(assert (=> b!3626895 (= lt!1254017 (maxPrefix!2817 thiss!23823 rules!3307 lt!1254016))))

(assert (=> b!3626895 (= lt!1254016 (list!14114 (charsOf!3708 token!511)))))

(declare-fun tp!1107461 () Bool)

(declare-fun e!2245007 () Bool)

(declare-fun b!3626896 () Bool)

(declare-fun inv!21 (TokenValue!5924) Bool)

(assert (=> b!3626896 (= e!2245018 (and (inv!21 (value!182739 token!511)) e!2245007 tp!1107461))))

(declare-fun b!3626897 () Bool)

(declare-fun res!1468354 () Bool)

(assert (=> b!3626897 (=> (not res!1468354) (not e!2245016))))

(assert (=> b!3626897 (= res!1468354 (= (rule!8462 token!511) rule!403))))

(declare-fun b!3626898 () Bool)

(declare-fun res!1468364 () Bool)

(assert (=> b!3626898 (=> res!1468364 e!2245013)))

(assert (=> b!3626898 (= res!1468364 (not (contains!7453 (usedCharacters!908 (regex!5694 anOtherTypeRule!33)) lt!1254014)))))

(declare-fun b!3626899 () Bool)

(declare-fun tp!1107462 () Bool)

(assert (=> b!3626899 (= e!2244994 (and tp!1107462 (inv!51613 (tag!6420 anOtherTypeRule!33)) (inv!51616 (transformation!5694 anOtherTypeRule!33)) e!2245005))))

(declare-fun e!2245014 () Bool)

(assert (=> b!3626900 (= e!2245014 (and tp!1107454 tp!1107456))))

(declare-fun b!3626901 () Bool)

(declare-fun tp!1107450 () Bool)

(assert (=> b!3626901 (= e!2245004 (and e!2245008 tp!1107450))))

(declare-fun b!3626902 () Bool)

(declare-fun res!1468345 () Bool)

(assert (=> b!3626902 (=> (not res!1468345) (not e!2245015))))

(declare-fun contains!7454 (List!38333 Rule!11188) Bool)

(assert (=> b!3626902 (= res!1468345 (contains!7454 rules!3307 rule!403))))

(declare-fun b!3626903 () Bool)

(declare-fun res!1468349 () Bool)

(assert (=> b!3626903 (=> res!1468349 e!2245013)))

(declare-fun sepAndNonSepRulesDisjointChars!1864 (List!38333 List!38333) Bool)

(assert (=> b!3626903 (= res!1468349 (not (sepAndNonSepRulesDisjointChars!1864 rules!3307 rules!3307)))))

(declare-fun tp!1107451 () Bool)

(declare-fun b!3626904 () Bool)

(assert (=> b!3626904 (= e!2245011 (and tp!1107451 (inv!51613 (tag!6420 rule!403)) (inv!51616 (transformation!5694 rule!403)) e!2245014))))

(declare-fun b!3626905 () Bool)

(assert (=> b!3626905 (= e!2245016 (not e!2245002))))

(declare-fun res!1468362 () Bool)

(assert (=> b!3626905 (=> res!1468362 e!2245002)))

(assert (=> b!3626905 (= res!1468362 (not (matchR!5022 (regex!5694 rule!403) lt!1254016)))))

(declare-fun ruleValid!1959 (LexerInterface!5283 Rule!11188) Bool)

(assert (=> b!3626905 (ruleValid!1959 thiss!23823 rule!403)))

(declare-fun lt!1254025 () Unit!54971)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1114 (LexerInterface!5283 Rule!11188 List!38333) Unit!54971)

(assert (=> b!3626905 (= lt!1254025 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1114 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3626906 () Bool)

(declare-fun tp!1107457 () Bool)

(assert (=> b!3626906 (= e!2245007 (and tp!1107457 (inv!51613 (tag!6420 (rule!8462 token!511))) (inv!51616 (transformation!5694 (rule!8462 token!511))) e!2245017))))

(declare-fun b!3626907 () Bool)

(declare-fun e!2244998 () Bool)

(assert (=> b!3626907 (= e!2245009 e!2244998)))

(declare-fun res!1468352 () Bool)

(assert (=> b!3626907 (=> res!1468352 e!2244998)))

(assert (=> b!3626907 (= res!1468352 (or (isSeparator!5694 rule!403) (not (isSeparator!5694 (rule!8462 (_1!22176 lt!1254035))))))))

(declare-fun lt!1254031 () Unit!54971)

(assert (=> b!3626907 (= lt!1254031 e!2245000)))

(declare-fun c!627509 () Bool)

(assert (=> b!3626907 (= c!627509 (not (contains!7453 lt!1254021 lt!1254018)))))

(assert (=> b!3626907 (= lt!1254018 (head!7672 lt!1254040))))

(declare-fun b!3626908 () Bool)

(declare-fun res!1468365 () Bool)

(assert (=> b!3626908 (=> (not res!1468365) (not e!2245015))))

(declare-fun isEmpty!22593 (List!38333) Bool)

(assert (=> b!3626908 (= res!1468365 (not (isEmpty!22593 rules!3307)))))

(declare-fun b!3626909 () Bool)

(assert (=> b!3626909 (= e!2244998 (contains!7453 lt!1254016 lt!1254018))))

(declare-fun b!3626910 () Bool)

(declare-fun res!1468353 () Bool)

(assert (=> b!3626910 (=> (not res!1468353) (not e!2245015))))

(assert (=> b!3626910 (= res!1468353 (contains!7454 rules!3307 anOtherTypeRule!33))))

(assert (= (and start!338018 res!1468359) b!3626908))

(assert (= (and b!3626908 res!1468365) b!3626886))

(assert (= (and b!3626886 res!1468346) b!3626902))

(assert (= (and b!3626902 res!1468345) b!3626910))

(assert (= (and b!3626910 res!1468353) b!3626884))

(assert (= (and b!3626884 res!1468348) b!3626895))

(assert (= (and b!3626895 res!1468356) b!3626885))

(assert (= (and b!3626885 res!1468363) b!3626888))

(assert (= (and b!3626888 res!1468355) b!3626897))

(assert (= (and b!3626897 res!1468354) b!3626905))

(assert (= (and b!3626905 (not res!1468362)) b!3626877))

(assert (= (and b!3626877 (not res!1468357)) b!3626890))

(assert (= (and b!3626890 (not res!1468360)) b!3626898))

(assert (= (and b!3626898 (not res!1468364)) b!3626903))

(assert (= (and b!3626903 (not res!1468349)) b!3626883))

(assert (= (and b!3626883 res!1468361) b!3626894))

(assert (= (and b!3626894 res!1468351) b!3626892))

(assert (= (and b!3626883 (not res!1468358)) b!3626887))

(assert (= (and b!3626887 (not res!1468347)) b!3626880))

(assert (= (and b!3626880 (not res!1468350)) b!3626889))

(assert (= (and b!3626889 (not res!1468366)) b!3626907))

(assert (= (and b!3626907 c!627509) b!3626878))

(assert (= (and b!3626907 (not c!627509)) b!3626891))

(assert (= (and b!3626907 (not res!1468352)) b!3626909))

(assert (= b!3626881 b!3626893))

(assert (= b!3626901 b!3626881))

(assert (= (and start!338018 ((_ is Cons!38209) rules!3307)) b!3626901))

(assert (= (and start!338018 ((_ is Cons!38207) suffix!1395)) b!3626882))

(assert (= b!3626906 b!3626879))

(assert (= b!3626896 b!3626906))

(assert (= start!338018 b!3626896))

(assert (= b!3626904 b!3626900))

(assert (= start!338018 b!3626904))

(assert (= b!3626899 b!3626876))

(assert (= start!338018 b!3626899))

(declare-fun m!4127657 () Bool)

(assert (=> b!3626899 m!4127657))

(declare-fun m!4127659 () Bool)

(assert (=> b!3626899 m!4127659))

(declare-fun m!4127661 () Bool)

(assert (=> b!3626889 m!4127661))

(declare-fun m!4127663 () Bool)

(assert (=> b!3626889 m!4127663))

(declare-fun m!4127665 () Bool)

(assert (=> b!3626889 m!4127665))

(declare-fun m!4127667 () Bool)

(assert (=> b!3626889 m!4127667))

(declare-fun m!4127669 () Bool)

(assert (=> b!3626889 m!4127669))

(declare-fun m!4127671 () Bool)

(assert (=> b!3626889 m!4127671))

(assert (=> b!3626889 m!4127671))

(declare-fun m!4127673 () Bool)

(assert (=> b!3626889 m!4127673))

(declare-fun m!4127675 () Bool)

(assert (=> b!3626877 m!4127675))

(declare-fun m!4127677 () Bool)

(assert (=> b!3626880 m!4127677))

(declare-fun m!4127679 () Bool)

(assert (=> b!3626880 m!4127679))

(declare-fun m!4127681 () Bool)

(assert (=> b!3626880 m!4127681))

(assert (=> b!3626880 m!4127679))

(declare-fun m!4127683 () Bool)

(assert (=> b!3626880 m!4127683))

(declare-fun m!4127685 () Bool)

(assert (=> b!3626880 m!4127685))

(declare-fun m!4127687 () Bool)

(assert (=> b!3626880 m!4127687))

(declare-fun m!4127689 () Bool)

(assert (=> b!3626903 m!4127689))

(declare-fun m!4127691 () Bool)

(assert (=> b!3626886 m!4127691))

(declare-fun m!4127693 () Bool)

(assert (=> b!3626906 m!4127693))

(declare-fun m!4127695 () Bool)

(assert (=> b!3626906 m!4127695))

(declare-fun m!4127697 () Bool)

(assert (=> b!3626895 m!4127697))

(declare-fun m!4127699 () Bool)

(assert (=> b!3626895 m!4127699))

(declare-fun m!4127701 () Bool)

(assert (=> b!3626895 m!4127701))

(assert (=> b!3626895 m!4127701))

(declare-fun m!4127703 () Bool)

(assert (=> b!3626895 m!4127703))

(declare-fun m!4127705 () Bool)

(assert (=> b!3626902 m!4127705))

(declare-fun m!4127707 () Bool)

(assert (=> b!3626908 m!4127707))

(declare-fun m!4127709 () Bool)

(assert (=> b!3626888 m!4127709))

(declare-fun m!4127711 () Bool)

(assert (=> b!3626894 m!4127711))

(assert (=> b!3626894 m!4127711))

(declare-fun m!4127713 () Bool)

(assert (=> b!3626894 m!4127713))

(assert (=> b!3626894 m!4127713))

(declare-fun m!4127715 () Bool)

(assert (=> b!3626894 m!4127715))

(declare-fun m!4127717 () Bool)

(assert (=> b!3626894 m!4127717))

(declare-fun m!4127719 () Bool)

(assert (=> b!3626883 m!4127719))

(declare-fun m!4127721 () Bool)

(assert (=> b!3626883 m!4127721))

(assert (=> b!3626883 m!4127719))

(declare-fun m!4127723 () Bool)

(assert (=> b!3626883 m!4127723))

(declare-fun m!4127725 () Bool)

(assert (=> b!3626883 m!4127725))

(declare-fun m!4127727 () Bool)

(assert (=> b!3626883 m!4127727))

(declare-fun m!4127729 () Bool)

(assert (=> b!3626883 m!4127729))

(declare-fun m!4127731 () Bool)

(assert (=> b!3626883 m!4127731))

(declare-fun m!4127733 () Bool)

(assert (=> b!3626883 m!4127733))

(declare-fun m!4127735 () Bool)

(assert (=> b!3626883 m!4127735))

(assert (=> b!3626883 m!4127711))

(declare-fun m!4127737 () Bool)

(assert (=> b!3626883 m!4127737))

(declare-fun m!4127739 () Bool)

(assert (=> b!3626883 m!4127739))

(declare-fun m!4127741 () Bool)

(assert (=> b!3626883 m!4127741))

(declare-fun m!4127743 () Bool)

(assert (=> b!3626883 m!4127743))

(declare-fun m!4127745 () Bool)

(assert (=> b!3626883 m!4127745))

(declare-fun m!4127747 () Bool)

(assert (=> b!3626890 m!4127747))

(declare-fun m!4127749 () Bool)

(assert (=> b!3626890 m!4127749))

(declare-fun m!4127751 () Bool)

(assert (=> b!3626890 m!4127751))

(declare-fun m!4127753 () Bool)

(assert (=> b!3626878 m!4127753))

(declare-fun m!4127755 () Bool)

(assert (=> b!3626910 m!4127755))

(declare-fun m!4127757 () Bool)

(assert (=> b!3626905 m!4127757))

(declare-fun m!4127759 () Bool)

(assert (=> b!3626905 m!4127759))

(declare-fun m!4127761 () Bool)

(assert (=> b!3626905 m!4127761))

(declare-fun m!4127763 () Bool)

(assert (=> b!3626904 m!4127763))

(declare-fun m!4127765 () Bool)

(assert (=> b!3626904 m!4127765))

(declare-fun m!4127767 () Bool)

(assert (=> b!3626909 m!4127767))

(declare-fun m!4127769 () Bool)

(assert (=> b!3626885 m!4127769))

(declare-fun m!4127771 () Bool)

(assert (=> b!3626896 m!4127771))

(declare-fun m!4127773 () Bool)

(assert (=> b!3626898 m!4127773))

(assert (=> b!3626898 m!4127773))

(declare-fun m!4127775 () Bool)

(assert (=> b!3626898 m!4127775))

(declare-fun m!4127777 () Bool)

(assert (=> start!338018 m!4127777))

(declare-fun m!4127779 () Bool)

(assert (=> b!3626887 m!4127779))

(declare-fun m!4127781 () Bool)

(assert (=> b!3626907 m!4127781))

(declare-fun m!4127783 () Bool)

(assert (=> b!3626907 m!4127783))

(declare-fun m!4127785 () Bool)

(assert (=> b!3626881 m!4127785))

(declare-fun m!4127787 () Bool)

(assert (=> b!3626881 m!4127787))

(check-sat (not b_next!95435) (not b_next!95425) (not start!338018) b_and!265751 (not b!3626906) (not b!3626889) b_and!265753 (not b!3626905) (not b!3626898) (not b!3626894) (not b!3626881) b_and!265755 (not b_next!95433) (not b_next!95437) (not b!3626901) (not b_next!95439) (not b!3626903) (not b!3626908) b_and!265759 (not b!3626883) (not b!3626888) (not b!3626902) (not b!3626907) (not b!3626886) (not b!3626890) b_and!265761 b_and!265763 (not b!3626910) (not b!3626895) (not b!3626882) (not b!3626896) (not b!3626904) (not b!3626878) b_and!265765 (not b!3626885) (not b!3626899) (not b_next!95427) b_and!265757 (not b_next!95431) (not b_next!95429) tp_is_empty!17989 (not b!3626887) (not b!3626877) (not b!3626880) (not b!3626909))
(check-sat (not b_next!95435) (not b_next!95425) b_and!265751 (not b_next!95439) b_and!265759 b_and!265761 b_and!265763 b_and!265753 b_and!265765 b_and!265755 (not b_next!95433) (not b_next!95437) (not b_next!95427) b_and!265757 (not b_next!95431) (not b_next!95429))
(get-model)

(declare-fun d!1066812 () Bool)

(declare-fun lt!1254051 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5475 (List!38331) (InoxSet C!21092))

(assert (=> d!1066812 (= lt!1254051 (select (content!5475 lt!1254016) lt!1254018))))

(declare-fun e!2245062 () Bool)

(assert (=> d!1066812 (= lt!1254051 e!2245062)))

(declare-fun res!1468419 () Bool)

(assert (=> d!1066812 (=> (not res!1468419) (not e!2245062))))

(assert (=> d!1066812 (= res!1468419 ((_ is Cons!38207) lt!1254016))))

(assert (=> d!1066812 (= (contains!7453 lt!1254016 lt!1254018) lt!1254051)))

(declare-fun b!3626981 () Bool)

(declare-fun e!2245061 () Bool)

(assert (=> b!3626981 (= e!2245062 e!2245061)))

(declare-fun res!1468418 () Bool)

(assert (=> b!3626981 (=> res!1468418 e!2245061)))

(assert (=> b!3626981 (= res!1468418 (= (h!43627 lt!1254016) lt!1254018))))

(declare-fun b!3626982 () Bool)

(assert (=> b!3626982 (= e!2245061 (contains!7453 (t!294786 lt!1254016) lt!1254018))))

(assert (= (and d!1066812 res!1468419) b!3626981))

(assert (= (and b!3626981 (not res!1468418)) b!3626982))

(declare-fun m!4127817 () Bool)

(assert (=> d!1066812 m!4127817))

(declare-fun m!4127819 () Bool)

(assert (=> d!1066812 m!4127819))

(declare-fun m!4127821 () Bool)

(assert (=> b!3626982 m!4127821))

(assert (=> b!3626909 d!1066812))

(declare-fun d!1066820 () Bool)

(assert (=> d!1066820 (= (isEmpty!22592 (_2!22176 lt!1254042)) ((_ is Nil!38207) (_2!22176 lt!1254042)))))

(assert (=> b!3626888 d!1066820))

(declare-fun d!1066828 () Bool)

(declare-fun lt!1254061 () Bool)

(declare-fun content!5476 (List!38333) (InoxSet Rule!11188))

(assert (=> d!1066828 (= lt!1254061 (select (content!5476 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2245081 () Bool)

(assert (=> d!1066828 (= lt!1254061 e!2245081)))

(declare-fun res!1468440 () Bool)

(assert (=> d!1066828 (=> (not res!1468440) (not e!2245081))))

(assert (=> d!1066828 (= res!1468440 ((_ is Cons!38209) rules!3307))))

(assert (=> d!1066828 (= (contains!7454 rules!3307 anOtherTypeRule!33) lt!1254061)))

(declare-fun b!3627008 () Bool)

(declare-fun e!2245082 () Bool)

(assert (=> b!3627008 (= e!2245081 e!2245082)))

(declare-fun res!1468439 () Bool)

(assert (=> b!3627008 (=> res!1468439 e!2245082)))

(assert (=> b!3627008 (= res!1468439 (= (h!43629 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3627009 () Bool)

(assert (=> b!3627009 (= e!2245082 (contains!7454 (t!294788 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1066828 res!1468440) b!3627008))

(assert (= (and b!3627008 (not res!1468439)) b!3627009))

(declare-fun m!4127849 () Bool)

(assert (=> d!1066828 m!4127849))

(declare-fun m!4127851 () Bool)

(assert (=> d!1066828 m!4127851))

(declare-fun m!4127853 () Bool)

(assert (=> b!3627009 m!4127853))

(assert (=> b!3626910 d!1066828))

(declare-fun d!1066836 () Bool)

(assert (=> d!1066836 (= (isEmpty!22593 rules!3307) ((_ is Nil!38209) rules!3307))))

(assert (=> b!3626908 d!1066836))

(declare-fun b!3627061 () Bool)

(declare-fun e!2245118 () Bool)

(declare-fun e!2245115 () Bool)

(assert (=> b!3627061 (= e!2245118 e!2245115)))

(declare-fun c!627537 () Bool)

(assert (=> b!3627061 (= c!627537 ((_ is EmptyLang!10453) (regex!5694 (rule!8462 (_1!22176 lt!1254035)))))))

(declare-fun b!3627062 () Bool)

(declare-fun lt!1254067 () Bool)

(assert (=> b!3627062 (= e!2245115 (not lt!1254067))))

(declare-fun b!3627063 () Bool)

(declare-fun e!2245112 () Bool)

(declare-fun e!2245114 () Bool)

(assert (=> b!3627063 (= e!2245112 e!2245114)))

(declare-fun res!1468482 () Bool)

(assert (=> b!3627063 (=> res!1468482 e!2245114)))

(declare-fun call!262341 () Bool)

(assert (=> b!3627063 (= res!1468482 call!262341)))

(declare-fun b!3627064 () Bool)

(declare-fun res!1468477 () Bool)

(declare-fun e!2245117 () Bool)

(assert (=> b!3627064 (=> (not res!1468477) (not e!2245117))))

(assert (=> b!3627064 (= res!1468477 (not call!262341))))

(declare-fun b!3627065 () Bool)

(declare-fun res!1468475 () Bool)

(declare-fun e!2245113 () Bool)

(assert (=> b!3627065 (=> res!1468475 e!2245113)))

(assert (=> b!3627065 (= res!1468475 e!2245117)))

(declare-fun res!1468479 () Bool)

(assert (=> b!3627065 (=> (not res!1468479) (not e!2245117))))

(assert (=> b!3627065 (= res!1468479 lt!1254067)))

(declare-fun bm!262336 () Bool)

(assert (=> bm!262336 (= call!262341 (isEmpty!22592 lt!1254040))))

(declare-fun b!3627067 () Bool)

(declare-fun e!2245116 () Bool)

(declare-fun nullable!3619 (Regex!10453) Bool)

(assert (=> b!3627067 (= e!2245116 (nullable!3619 (regex!5694 (rule!8462 (_1!22176 lt!1254035)))))))

(declare-fun b!3627068 () Bool)

(declare-fun res!1468478 () Bool)

(assert (=> b!3627068 (=> (not res!1468478) (not e!2245117))))

(declare-fun tail!5617 (List!38331) List!38331)

(assert (=> b!3627068 (= res!1468478 (isEmpty!22592 (tail!5617 lt!1254040)))))

(declare-fun b!3627069 () Bool)

(assert (=> b!3627069 (= e!2245117 (= (head!7672 lt!1254040) (c!627510 (regex!5694 (rule!8462 (_1!22176 lt!1254035))))))))

(declare-fun b!3627070 () Bool)

(declare-fun res!1468476 () Bool)

(assert (=> b!3627070 (=> res!1468476 e!2245113)))

(assert (=> b!3627070 (= res!1468476 (not ((_ is ElementMatch!10453) (regex!5694 (rule!8462 (_1!22176 lt!1254035))))))))

(assert (=> b!3627070 (= e!2245115 e!2245113)))

(declare-fun b!3627071 () Bool)

(assert (=> b!3627071 (= e!2245114 (not (= (head!7672 lt!1254040) (c!627510 (regex!5694 (rule!8462 (_1!22176 lt!1254035)))))))))

(declare-fun b!3627072 () Bool)

(assert (=> b!3627072 (= e!2245113 e!2245112)))

(declare-fun res!1468481 () Bool)

(assert (=> b!3627072 (=> (not res!1468481) (not e!2245112))))

(assert (=> b!3627072 (= res!1468481 (not lt!1254067))))

(declare-fun b!3627073 () Bool)

(declare-fun res!1468480 () Bool)

(assert (=> b!3627073 (=> res!1468480 e!2245114)))

(assert (=> b!3627073 (= res!1468480 (not (isEmpty!22592 (tail!5617 lt!1254040))))))

(declare-fun b!3627074 () Bool)

(declare-fun derivativeStep!3168 (Regex!10453 C!21092) Regex!10453)

(assert (=> b!3627074 (= e!2245116 (matchR!5022 (derivativeStep!3168 (regex!5694 (rule!8462 (_1!22176 lt!1254035))) (head!7672 lt!1254040)) (tail!5617 lt!1254040)))))

(declare-fun b!3627066 () Bool)

(assert (=> b!3627066 (= e!2245118 (= lt!1254067 call!262341))))

(declare-fun d!1066838 () Bool)

(assert (=> d!1066838 e!2245118))

(declare-fun c!627538 () Bool)

(assert (=> d!1066838 (= c!627538 ((_ is EmptyExpr!10453) (regex!5694 (rule!8462 (_1!22176 lt!1254035)))))))

(assert (=> d!1066838 (= lt!1254067 e!2245116)))

(declare-fun c!627539 () Bool)

(assert (=> d!1066838 (= c!627539 (isEmpty!22592 lt!1254040))))

(declare-fun validRegex!4781 (Regex!10453) Bool)

(assert (=> d!1066838 (validRegex!4781 (regex!5694 (rule!8462 (_1!22176 lt!1254035))))))

(assert (=> d!1066838 (= (matchR!5022 (regex!5694 (rule!8462 (_1!22176 lt!1254035))) lt!1254040) lt!1254067)))

(assert (= (and d!1066838 c!627539) b!3627067))

(assert (= (and d!1066838 (not c!627539)) b!3627074))

(assert (= (and d!1066838 c!627538) b!3627066))

(assert (= (and d!1066838 (not c!627538)) b!3627061))

(assert (= (and b!3627061 c!627537) b!3627062))

(assert (= (and b!3627061 (not c!627537)) b!3627070))

(assert (= (and b!3627070 (not res!1468476)) b!3627065))

(assert (= (and b!3627065 res!1468479) b!3627064))

(assert (= (and b!3627064 res!1468477) b!3627068))

(assert (= (and b!3627068 res!1468478) b!3627069))

(assert (= (and b!3627065 (not res!1468475)) b!3627072))

(assert (= (and b!3627072 res!1468481) b!3627063))

(assert (= (and b!3627063 (not res!1468482)) b!3627073))

(assert (= (and b!3627073 (not res!1468480)) b!3627071))

(assert (= (or b!3627066 b!3627063 b!3627064) bm!262336))

(declare-fun m!4127877 () Bool)

(assert (=> b!3627068 m!4127877))

(assert (=> b!3627068 m!4127877))

(declare-fun m!4127879 () Bool)

(assert (=> b!3627068 m!4127879))

(declare-fun m!4127881 () Bool)

(assert (=> b!3627067 m!4127881))

(declare-fun m!4127883 () Bool)

(assert (=> bm!262336 m!4127883))

(assert (=> b!3627074 m!4127783))

(assert (=> b!3627074 m!4127783))

(declare-fun m!4127885 () Bool)

(assert (=> b!3627074 m!4127885))

(assert (=> b!3627074 m!4127877))

(assert (=> b!3627074 m!4127885))

(assert (=> b!3627074 m!4127877))

(declare-fun m!4127887 () Bool)

(assert (=> b!3627074 m!4127887))

(assert (=> d!1066838 m!4127883))

(declare-fun m!4127889 () Bool)

(assert (=> d!1066838 m!4127889))

(assert (=> b!3627071 m!4127783))

(assert (=> b!3627069 m!4127783))

(assert (=> b!3627073 m!4127877))

(assert (=> b!3627073 m!4127877))

(assert (=> b!3627073 m!4127879))

(assert (=> b!3626887 d!1066838))

(declare-fun d!1066848 () Bool)

(assert (=> d!1066848 (= (get!12475 lt!1254017) (v!37799 lt!1254017))))

(assert (=> b!3626885 d!1066848))

(declare-fun d!1066850 () Bool)

(declare-fun lt!1254068 () Bool)

(assert (=> d!1066850 (= lt!1254068 (select (content!5475 lt!1254021) lt!1254018))))

(declare-fun e!2245120 () Bool)

(assert (=> d!1066850 (= lt!1254068 e!2245120)))

(declare-fun res!1468484 () Bool)

(assert (=> d!1066850 (=> (not res!1468484) (not e!2245120))))

(assert (=> d!1066850 (= res!1468484 ((_ is Cons!38207) lt!1254021))))

(assert (=> d!1066850 (= (contains!7453 lt!1254021 lt!1254018) lt!1254068)))

(declare-fun b!3627075 () Bool)

(declare-fun e!2245119 () Bool)

(assert (=> b!3627075 (= e!2245120 e!2245119)))

(declare-fun res!1468483 () Bool)

(assert (=> b!3627075 (=> res!1468483 e!2245119)))

(assert (=> b!3627075 (= res!1468483 (= (h!43627 lt!1254021) lt!1254018))))

(declare-fun b!3627076 () Bool)

(assert (=> b!3627076 (= e!2245119 (contains!7453 (t!294786 lt!1254021) lt!1254018))))

(assert (= (and d!1066850 res!1468484) b!3627075))

(assert (= (and b!3627075 (not res!1468483)) b!3627076))

(declare-fun m!4127891 () Bool)

(assert (=> d!1066850 m!4127891))

(declare-fun m!4127893 () Bool)

(assert (=> d!1066850 m!4127893))

(declare-fun m!4127895 () Bool)

(assert (=> b!3627076 m!4127895))

(assert (=> b!3626907 d!1066850))

(declare-fun d!1066852 () Bool)

(assert (=> d!1066852 (= (head!7672 lt!1254040) (h!43627 lt!1254040))))

(assert (=> b!3626907 d!1066852))

(declare-fun d!1066854 () Bool)

(declare-fun res!1468501 () Bool)

(declare-fun e!2245129 () Bool)

(assert (=> d!1066854 (=> (not res!1468501) (not e!2245129))))

(declare-fun rulesValid!2173 (LexerInterface!5283 List!38333) Bool)

(assert (=> d!1066854 (= res!1468501 (rulesValid!2173 thiss!23823 rules!3307))))

(assert (=> d!1066854 (= (rulesInvariant!4680 thiss!23823 rules!3307) e!2245129)))

(declare-fun b!3627097 () Bool)

(declare-datatypes ((List!38335 0))(
  ( (Nil!38211) (Cons!38211 (h!43631 String!42954) (t!294910 List!38335)) )
))
(declare-fun noDuplicateTag!2169 (LexerInterface!5283 List!38333 List!38335) Bool)

(assert (=> b!3627097 (= e!2245129 (noDuplicateTag!2169 thiss!23823 rules!3307 Nil!38211))))

(assert (= (and d!1066854 res!1468501) b!3627097))

(declare-fun m!4127897 () Bool)

(assert (=> d!1066854 m!4127897))

(declare-fun m!4127899 () Bool)

(assert (=> b!3627097 m!4127899))

(assert (=> b!3626886 d!1066854))

(declare-fun b!3627098 () Bool)

(declare-fun e!2245136 () Bool)

(declare-fun e!2245133 () Bool)

(assert (=> b!3627098 (= e!2245136 e!2245133)))

(declare-fun c!627542 () Bool)

(assert (=> b!3627098 (= c!627542 ((_ is EmptyLang!10453) (regex!5694 rule!403)))))

(declare-fun b!3627099 () Bool)

(declare-fun lt!1254079 () Bool)

(assert (=> b!3627099 (= e!2245133 (not lt!1254079))))

(declare-fun b!3627100 () Bool)

(declare-fun e!2245130 () Bool)

(declare-fun e!2245132 () Bool)

(assert (=> b!3627100 (= e!2245130 e!2245132)))

(declare-fun res!1468509 () Bool)

(assert (=> b!3627100 (=> res!1468509 e!2245132)))

(declare-fun call!262344 () Bool)

(assert (=> b!3627100 (= res!1468509 call!262344)))

(declare-fun b!3627101 () Bool)

(declare-fun res!1468504 () Bool)

(declare-fun e!2245135 () Bool)

(assert (=> b!3627101 (=> (not res!1468504) (not e!2245135))))

(assert (=> b!3627101 (= res!1468504 (not call!262344))))

(declare-fun b!3627102 () Bool)

(declare-fun res!1468502 () Bool)

(declare-fun e!2245131 () Bool)

(assert (=> b!3627102 (=> res!1468502 e!2245131)))

(assert (=> b!3627102 (= res!1468502 e!2245135)))

(declare-fun res!1468506 () Bool)

(assert (=> b!3627102 (=> (not res!1468506) (not e!2245135))))

(assert (=> b!3627102 (= res!1468506 lt!1254079)))

(declare-fun bm!262339 () Bool)

(assert (=> bm!262339 (= call!262344 (isEmpty!22592 lt!1254016))))

(declare-fun b!3627104 () Bool)

(declare-fun e!2245134 () Bool)

(assert (=> b!3627104 (= e!2245134 (nullable!3619 (regex!5694 rule!403)))))

(declare-fun b!3627105 () Bool)

(declare-fun res!1468505 () Bool)

(assert (=> b!3627105 (=> (not res!1468505) (not e!2245135))))

(assert (=> b!3627105 (= res!1468505 (isEmpty!22592 (tail!5617 lt!1254016)))))

(declare-fun b!3627106 () Bool)

(assert (=> b!3627106 (= e!2245135 (= (head!7672 lt!1254016) (c!627510 (regex!5694 rule!403))))))

(declare-fun b!3627107 () Bool)

(declare-fun res!1468503 () Bool)

(assert (=> b!3627107 (=> res!1468503 e!2245131)))

(assert (=> b!3627107 (= res!1468503 (not ((_ is ElementMatch!10453) (regex!5694 rule!403))))))

(assert (=> b!3627107 (= e!2245133 e!2245131)))

(declare-fun b!3627108 () Bool)

(assert (=> b!3627108 (= e!2245132 (not (= (head!7672 lt!1254016) (c!627510 (regex!5694 rule!403)))))))

(declare-fun b!3627109 () Bool)

(assert (=> b!3627109 (= e!2245131 e!2245130)))

(declare-fun res!1468508 () Bool)

(assert (=> b!3627109 (=> (not res!1468508) (not e!2245130))))

(assert (=> b!3627109 (= res!1468508 (not lt!1254079))))

(declare-fun b!3627110 () Bool)

(declare-fun res!1468507 () Bool)

(assert (=> b!3627110 (=> res!1468507 e!2245132)))

(assert (=> b!3627110 (= res!1468507 (not (isEmpty!22592 (tail!5617 lt!1254016))))))

(declare-fun b!3627111 () Bool)

(assert (=> b!3627111 (= e!2245134 (matchR!5022 (derivativeStep!3168 (regex!5694 rule!403) (head!7672 lt!1254016)) (tail!5617 lt!1254016)))))

(declare-fun b!3627103 () Bool)

(assert (=> b!3627103 (= e!2245136 (= lt!1254079 call!262344))))

(declare-fun d!1066856 () Bool)

(assert (=> d!1066856 e!2245136))

(declare-fun c!627543 () Bool)

(assert (=> d!1066856 (= c!627543 ((_ is EmptyExpr!10453) (regex!5694 rule!403)))))

(assert (=> d!1066856 (= lt!1254079 e!2245134)))

(declare-fun c!627544 () Bool)

(assert (=> d!1066856 (= c!627544 (isEmpty!22592 lt!1254016))))

(assert (=> d!1066856 (validRegex!4781 (regex!5694 rule!403))))

(assert (=> d!1066856 (= (matchR!5022 (regex!5694 rule!403) lt!1254016) lt!1254079)))

(assert (= (and d!1066856 c!627544) b!3627104))

(assert (= (and d!1066856 (not c!627544)) b!3627111))

(assert (= (and d!1066856 c!627543) b!3627103))

(assert (= (and d!1066856 (not c!627543)) b!3627098))

(assert (= (and b!3627098 c!627542) b!3627099))

(assert (= (and b!3627098 (not c!627542)) b!3627107))

(assert (= (and b!3627107 (not res!1468503)) b!3627102))

(assert (= (and b!3627102 res!1468506) b!3627101))

(assert (= (and b!3627101 res!1468504) b!3627105))

(assert (= (and b!3627105 res!1468505) b!3627106))

(assert (= (and b!3627102 (not res!1468502)) b!3627109))

(assert (= (and b!3627109 res!1468508) b!3627100))

(assert (= (and b!3627100 (not res!1468509)) b!3627110))

(assert (= (and b!3627110 (not res!1468507)) b!3627108))

(assert (= (or b!3627103 b!3627100 b!3627101) bm!262339))

(declare-fun m!4127901 () Bool)

(assert (=> b!3627105 m!4127901))

(assert (=> b!3627105 m!4127901))

(declare-fun m!4127903 () Bool)

(assert (=> b!3627105 m!4127903))

(declare-fun m!4127905 () Bool)

(assert (=> b!3627104 m!4127905))

(declare-fun m!4127907 () Bool)

(assert (=> bm!262339 m!4127907))

(declare-fun m!4127909 () Bool)

(assert (=> b!3627111 m!4127909))

(assert (=> b!3627111 m!4127909))

(declare-fun m!4127911 () Bool)

(assert (=> b!3627111 m!4127911))

(assert (=> b!3627111 m!4127901))

(assert (=> b!3627111 m!4127911))

(assert (=> b!3627111 m!4127901))

(declare-fun m!4127913 () Bool)

(assert (=> b!3627111 m!4127913))

(assert (=> d!1066856 m!4127907))

(declare-fun m!4127915 () Bool)

(assert (=> d!1066856 m!4127915))

(assert (=> b!3627108 m!4127909))

(assert (=> b!3627106 m!4127909))

(assert (=> b!3627110 m!4127901))

(assert (=> b!3627110 m!4127901))

(assert (=> b!3627110 m!4127903))

(assert (=> b!3626905 d!1066856))

(declare-fun d!1066858 () Bool)

(declare-fun res!1468521 () Bool)

(declare-fun e!2245143 () Bool)

(assert (=> d!1066858 (=> (not res!1468521) (not e!2245143))))

(assert (=> d!1066858 (= res!1468521 (validRegex!4781 (regex!5694 rule!403)))))

(assert (=> d!1066858 (= (ruleValid!1959 thiss!23823 rule!403) e!2245143)))

(declare-fun b!3627126 () Bool)

(declare-fun res!1468522 () Bool)

(assert (=> b!3627126 (=> (not res!1468522) (not e!2245143))))

(assert (=> b!3627126 (= res!1468522 (not (nullable!3619 (regex!5694 rule!403))))))

(declare-fun b!3627127 () Bool)

(assert (=> b!3627127 (= e!2245143 (not (= (tag!6420 rule!403) (String!42955 ""))))))

(assert (= (and d!1066858 res!1468521) b!3627126))

(assert (= (and b!3627126 res!1468522) b!3627127))

(assert (=> d!1066858 m!4127915))

(assert (=> b!3627126 m!4127905))

(assert (=> b!3626905 d!1066858))

(declare-fun d!1066864 () Bool)

(assert (=> d!1066864 (ruleValid!1959 thiss!23823 rule!403)))

(declare-fun lt!1254090 () Unit!54971)

(declare-fun choose!21297 (LexerInterface!5283 Rule!11188 List!38333) Unit!54971)

(assert (=> d!1066864 (= lt!1254090 (choose!21297 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1066864 (contains!7454 rules!3307 rule!403)))

(assert (=> d!1066864 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1114 thiss!23823 rule!403 rules!3307) lt!1254090)))

(declare-fun bs!571457 () Bool)

(assert (= bs!571457 d!1066864))

(assert (=> bs!571457 m!4127759))

(declare-fun m!4127959 () Bool)

(assert (=> bs!571457 m!4127959))

(assert (=> bs!571457 m!4127705))

(assert (=> b!3626905 d!1066864))

(declare-fun d!1066866 () Bool)

(assert (=> d!1066866 (= (inv!51613 (tag!6420 (rule!8462 token!511))) (= (mod (str.len (value!182738 (tag!6420 (rule!8462 token!511)))) 2) 0))))

(assert (=> b!3626906 d!1066866))

(declare-fun d!1066868 () Bool)

(declare-fun res!1468525 () Bool)

(declare-fun e!2245146 () Bool)

(assert (=> d!1066868 (=> (not res!1468525) (not e!2245146))))

(declare-fun semiInverseModEq!2417 (Int Int) Bool)

(assert (=> d!1066868 (= res!1468525 (semiInverseModEq!2417 (toChars!7841 (transformation!5694 (rule!8462 token!511))) (toValue!7982 (transformation!5694 (rule!8462 token!511)))))))

(assert (=> d!1066868 (= (inv!51616 (transformation!5694 (rule!8462 token!511))) e!2245146)))

(declare-fun b!3627130 () Bool)

(declare-fun equivClasses!2316 (Int Int) Bool)

(assert (=> b!3627130 (= e!2245146 (equivClasses!2316 (toChars!7841 (transformation!5694 (rule!8462 token!511))) (toValue!7982 (transformation!5694 (rule!8462 token!511)))))))

(assert (= (and d!1066868 res!1468525) b!3627130))

(declare-fun m!4127961 () Bool)

(assert (=> d!1066868 m!4127961))

(declare-fun m!4127963 () Bool)

(assert (=> b!3627130 m!4127963))

(assert (=> b!3626906 d!1066868))

(declare-fun d!1066870 () Bool)

(assert (=> d!1066870 (= (inv!51613 (tag!6420 rule!403)) (= (mod (str.len (value!182738 (tag!6420 rule!403))) 2) 0))))

(assert (=> b!3626904 d!1066870))

(declare-fun d!1066872 () Bool)

(declare-fun res!1468526 () Bool)

(declare-fun e!2245147 () Bool)

(assert (=> d!1066872 (=> (not res!1468526) (not e!2245147))))

(assert (=> d!1066872 (= res!1468526 (semiInverseModEq!2417 (toChars!7841 (transformation!5694 rule!403)) (toValue!7982 (transformation!5694 rule!403))))))

(assert (=> d!1066872 (= (inv!51616 (transformation!5694 rule!403)) e!2245147)))

(declare-fun b!3627131 () Bool)

(assert (=> b!3627131 (= e!2245147 (equivClasses!2316 (toChars!7841 (transformation!5694 rule!403)) (toValue!7982 (transformation!5694 rule!403))))))

(assert (= (and d!1066872 res!1468526) b!3627131))

(declare-fun m!4127965 () Bool)

(assert (=> d!1066872 m!4127965))

(declare-fun m!4127967 () Bool)

(assert (=> b!3627131 m!4127967))

(assert (=> b!3626904 d!1066872))

(declare-fun b!3627144 () Bool)

(declare-fun lt!1254098 () Unit!54971)

(declare-fun lt!1254097 () Unit!54971)

(assert (=> b!3627144 (= lt!1254098 lt!1254097)))

(assert (=> b!3627144 (rulesInvariant!4680 thiss!23823 (t!294788 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!548 (LexerInterface!5283 Rule!11188 List!38333) Unit!54971)

(assert (=> b!3627144 (= lt!1254097 (lemmaInvariantOnRulesThenOnTail!548 thiss!23823 (h!43629 rules!3307) (t!294788 rules!3307)))))

(declare-fun e!2245158 () Option!8019)

(assert (=> b!3627144 (= e!2245158 (getRuleFromTag!1300 thiss!23823 (t!294788 rules!3307) (tag!6420 (rule!8462 (_1!22176 lt!1254035)))))))

(declare-fun b!3627145 () Bool)

(declare-fun e!2245157 () Option!8019)

(assert (=> b!3627145 (= e!2245157 (Some!8018 (h!43629 rules!3307)))))

(declare-fun b!3627146 () Bool)

(assert (=> b!3627146 (= e!2245157 e!2245158)))

(declare-fun c!627551 () Bool)

(assert (=> b!3627146 (= c!627551 (and ((_ is Cons!38209) rules!3307) (not (= (tag!6420 (h!43629 rules!3307)) (tag!6420 (rule!8462 (_1!22176 lt!1254035)))))))))

(declare-fun d!1066874 () Bool)

(declare-fun e!2245156 () Bool)

(assert (=> d!1066874 e!2245156))

(declare-fun res!1468531 () Bool)

(assert (=> d!1066874 (=> res!1468531 e!2245156)))

(declare-fun lt!1254099 () Option!8019)

(declare-fun isEmpty!22595 (Option!8019) Bool)

(assert (=> d!1066874 (= res!1468531 (isEmpty!22595 lt!1254099))))

(assert (=> d!1066874 (= lt!1254099 e!2245157)))

(declare-fun c!627550 () Bool)

(assert (=> d!1066874 (= c!627550 (and ((_ is Cons!38209) rules!3307) (= (tag!6420 (h!43629 rules!3307)) (tag!6420 (rule!8462 (_1!22176 lt!1254035))))))))

(assert (=> d!1066874 (rulesInvariant!4680 thiss!23823 rules!3307)))

(assert (=> d!1066874 (= (getRuleFromTag!1300 thiss!23823 rules!3307 (tag!6420 (rule!8462 (_1!22176 lt!1254035)))) lt!1254099)))

(declare-fun b!3627147 () Bool)

(assert (=> b!3627147 (= e!2245158 None!8018)))

(declare-fun b!3627148 () Bool)

(declare-fun e!2245159 () Bool)

(assert (=> b!3627148 (= e!2245159 (= (tag!6420 (get!12476 lt!1254099)) (tag!6420 (rule!8462 (_1!22176 lt!1254035)))))))

(declare-fun b!3627149 () Bool)

(assert (=> b!3627149 (= e!2245156 e!2245159)))

(declare-fun res!1468532 () Bool)

(assert (=> b!3627149 (=> (not res!1468532) (not e!2245159))))

(assert (=> b!3627149 (= res!1468532 (contains!7454 rules!3307 (get!12476 lt!1254099)))))

(assert (= (and d!1066874 c!627550) b!3627145))

(assert (= (and d!1066874 (not c!627550)) b!3627146))

(assert (= (and b!3627146 c!627551) b!3627144))

(assert (= (and b!3627146 (not c!627551)) b!3627147))

(assert (= (and d!1066874 (not res!1468531)) b!3627149))

(assert (= (and b!3627149 res!1468532) b!3627148))

(declare-fun m!4127969 () Bool)

(assert (=> b!3627144 m!4127969))

(declare-fun m!4127971 () Bool)

(assert (=> b!3627144 m!4127971))

(declare-fun m!4127973 () Bool)

(assert (=> b!3627144 m!4127973))

(declare-fun m!4127975 () Bool)

(assert (=> d!1066874 m!4127975))

(assert (=> d!1066874 m!4127691))

(declare-fun m!4127977 () Bool)

(assert (=> b!3627148 m!4127977))

(assert (=> b!3627149 m!4127977))

(assert (=> b!3627149 m!4127977))

(declare-fun m!4127979 () Bool)

(assert (=> b!3627149 m!4127979))

(assert (=> b!3626883 d!1066874))

(declare-fun b!3627161 () Bool)

(declare-fun e!2245166 () Bool)

(assert (=> b!3627161 (= e!2245166 (>= (size!29151 lt!1254026) (size!29151 lt!1254016)))))

(declare-fun b!3627159 () Bool)

(declare-fun res!1468541 () Bool)

(declare-fun e!2245168 () Bool)

(assert (=> b!3627159 (=> (not res!1468541) (not e!2245168))))

(assert (=> b!3627159 (= res!1468541 (= (head!7672 lt!1254016) (head!7672 lt!1254026)))))

(declare-fun b!3627160 () Bool)

(assert (=> b!3627160 (= e!2245168 (isPrefix!3057 (tail!5617 lt!1254016) (tail!5617 lt!1254026)))))

(declare-fun b!3627158 () Bool)

(declare-fun e!2245167 () Bool)

(assert (=> b!3627158 (= e!2245167 e!2245168)))

(declare-fun res!1468544 () Bool)

(assert (=> b!3627158 (=> (not res!1468544) (not e!2245168))))

(assert (=> b!3627158 (= res!1468544 (not ((_ is Nil!38207) lt!1254026)))))

(declare-fun d!1066876 () Bool)

(assert (=> d!1066876 e!2245166))

(declare-fun res!1468543 () Bool)

(assert (=> d!1066876 (=> res!1468543 e!2245166)))

(declare-fun lt!1254102 () Bool)

(assert (=> d!1066876 (= res!1468543 (not lt!1254102))))

(assert (=> d!1066876 (= lt!1254102 e!2245167)))

(declare-fun res!1468542 () Bool)

(assert (=> d!1066876 (=> res!1468542 e!2245167)))

(assert (=> d!1066876 (= res!1468542 ((_ is Nil!38207) lt!1254016))))

(assert (=> d!1066876 (= (isPrefix!3057 lt!1254016 lt!1254026) lt!1254102)))

(assert (= (and d!1066876 (not res!1468542)) b!3627158))

(assert (= (and b!3627158 res!1468544) b!3627159))

(assert (= (and b!3627159 res!1468541) b!3627160))

(assert (= (and d!1066876 (not res!1468543)) b!3627161))

(declare-fun m!4127981 () Bool)

(assert (=> b!3627161 m!4127981))

(declare-fun m!4127983 () Bool)

(assert (=> b!3627161 m!4127983))

(assert (=> b!3627159 m!4127909))

(declare-fun m!4127985 () Bool)

(assert (=> b!3627159 m!4127985))

(assert (=> b!3627160 m!4127901))

(declare-fun m!4127987 () Bool)

(assert (=> b!3627160 m!4127987))

(assert (=> b!3627160 m!4127901))

(assert (=> b!3627160 m!4127987))

(declare-fun m!4127989 () Bool)

(assert (=> b!3627160 m!4127989))

(assert (=> b!3626883 d!1066876))

(declare-fun d!1066878 () Bool)

(declare-fun list!14117 (Conc!11655) List!38331)

(assert (=> d!1066878 (= (list!14114 lt!1254036) (list!14117 (c!627511 lt!1254036)))))

(declare-fun bs!571458 () Bool)

(assert (= bs!571458 d!1066878))

(declare-fun m!4127991 () Bool)

(assert (=> bs!571458 m!4127991))

(assert (=> b!3626883 d!1066878))

(declare-fun b!3627310 () Bool)

(declare-fun e!2245257 () Unit!54971)

(declare-fun Unit!54978 () Unit!54971)

(assert (=> b!3627310 (= e!2245257 Unit!54978)))

(declare-fun b!3627309 () Bool)

(declare-fun Unit!54979 () Unit!54971)

(assert (=> b!3627309 (= e!2245257 Unit!54979)))

(declare-fun lt!1254226 () List!38331)

(assert (=> b!3627309 (= lt!1254226 (++!9510 lt!1254016 suffix!1395))))

(declare-fun lt!1254235 () Unit!54971)

(declare-fun lt!1254234 () Token!10754)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!506 (LexerInterface!5283 Rule!11188 List!38333 List!38331) Unit!54971)

(assert (=> b!3627309 (= lt!1254235 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!506 thiss!23823 (rule!8462 lt!1254234) rules!3307 lt!1254226))))

(declare-fun isEmpty!22596 (Option!8018) Bool)

(assert (=> b!3627309 (isEmpty!22596 (maxPrefixOneRule!1957 thiss!23823 (rule!8462 lt!1254234) lt!1254226))))

(declare-fun lt!1254228 () Unit!54971)

(assert (=> b!3627309 (= lt!1254228 lt!1254235)))

(declare-fun lt!1254225 () List!38331)

(assert (=> b!3627309 (= lt!1254225 (list!14114 (charsOf!3708 lt!1254234)))))

(declare-fun lt!1254229 () Unit!54971)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!494 (LexerInterface!5283 Rule!11188 List!38331 List!38331) Unit!54971)

(assert (=> b!3627309 (= lt!1254229 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!494 thiss!23823 (rule!8462 lt!1254234) lt!1254225 (++!9510 lt!1254016 suffix!1395)))))

(assert (=> b!3627309 (not (matchR!5022 (regex!5694 (rule!8462 lt!1254234)) lt!1254225))))

(declare-fun lt!1254227 () Unit!54971)

(assert (=> b!3627309 (= lt!1254227 lt!1254229)))

(assert (=> b!3627309 false))

(declare-fun b!3627305 () Bool)

(declare-fun res!1468620 () Bool)

(declare-fun e!2245256 () Bool)

(assert (=> b!3627305 (=> (not res!1468620) (not e!2245256))))

(assert (=> b!3627305 (= res!1468620 (matchR!5022 (regex!5694 (get!12476 (getRuleFromTag!1300 thiss!23823 rules!3307 (tag!6420 (rule!8462 lt!1254234))))) (list!14114 (charsOf!3708 lt!1254234))))))

(declare-fun b!3627307 () Bool)

(assert (=> b!3627307 (= e!2245256 (= (rule!8462 lt!1254234) (get!12476 (getRuleFromTag!1300 thiss!23823 rules!3307 (tag!6420 (rule!8462 lt!1254234))))))))

(declare-fun d!1066880 () Bool)

(assert (=> d!1066880 (isDefined!6251 (maxPrefix!2817 thiss!23823 rules!3307 (++!9510 lt!1254016 suffix!1395)))))

(declare-fun lt!1254237 () Unit!54971)

(assert (=> d!1066880 (= lt!1254237 e!2245257)))

(declare-fun c!627587 () Bool)

(assert (=> d!1066880 (= c!627587 (isEmpty!22596 (maxPrefix!2817 thiss!23823 rules!3307 (++!9510 lt!1254016 suffix!1395))))))

(declare-fun lt!1254240 () Unit!54971)

(declare-fun lt!1254233 () Unit!54971)

(assert (=> d!1066880 (= lt!1254240 lt!1254233)))

(assert (=> d!1066880 e!2245256))

(declare-fun res!1468621 () Bool)

(assert (=> d!1066880 (=> (not res!1468621) (not e!2245256))))

(assert (=> d!1066880 (= res!1468621 (isDefined!6250 (getRuleFromTag!1300 thiss!23823 rules!3307 (tag!6420 (rule!8462 lt!1254234)))))))

(assert (=> d!1066880 (= lt!1254233 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1300 thiss!23823 rules!3307 lt!1254016 lt!1254234))))

(declare-fun lt!1254231 () Unit!54971)

(declare-fun lt!1254232 () Unit!54971)

(assert (=> d!1066880 (= lt!1254231 lt!1254232)))

(declare-fun lt!1254230 () List!38331)

(assert (=> d!1066880 (isPrefix!3057 lt!1254230 (++!9510 lt!1254016 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!470 (List!38331 List!38331 List!38331) Unit!54971)

(assert (=> d!1066880 (= lt!1254232 (lemmaPrefixStaysPrefixWhenAddingToSuffix!470 lt!1254230 lt!1254016 suffix!1395))))

(assert (=> d!1066880 (= lt!1254230 (list!14114 (charsOf!3708 lt!1254234)))))

(declare-fun lt!1254236 () Unit!54971)

(declare-fun lt!1254238 () Unit!54971)

(assert (=> d!1066880 (= lt!1254236 lt!1254238)))

(declare-fun lt!1254224 () List!38331)

(declare-fun lt!1254239 () List!38331)

(assert (=> d!1066880 (isPrefix!3057 lt!1254224 (++!9510 lt!1254224 lt!1254239))))

(assert (=> d!1066880 (= lt!1254238 (lemmaConcatTwoListThenFirstIsPrefix!1978 lt!1254224 lt!1254239))))

(assert (=> d!1066880 (= lt!1254239 (_2!22176 (get!12475 (maxPrefix!2817 thiss!23823 rules!3307 lt!1254016))))))

(assert (=> d!1066880 (= lt!1254224 (list!14114 (charsOf!3708 lt!1254234)))))

(declare-datatypes ((List!38336 0))(
  ( (Nil!38212) (Cons!38212 (h!43632 Token!10754) (t!294911 List!38336)) )
))
(declare-fun head!7674 (List!38336) Token!10754)

(declare-datatypes ((IArray!23319 0))(
  ( (IArray!23320 (innerList!11717 List!38336)) )
))
(declare-datatypes ((Conc!11657 0))(
  ( (Node!11657 (left!29834 Conc!11657) (right!30164 Conc!11657) (csize!23544 Int) (cheight!11868 Int)) (Leaf!18115 (xs!14859 IArray!23319) (csize!23545 Int)) (Empty!11657) )
))
(declare-datatypes ((BalanceConc!22928 0))(
  ( (BalanceConc!22929 (c!627643 Conc!11657)) )
))
(declare-fun list!14118 (BalanceConc!22928) List!38336)

(declare-datatypes ((tuple2!38088 0))(
  ( (tuple2!38089 (_1!22178 BalanceConc!22928) (_2!22178 BalanceConc!22924)) )
))
(declare-fun lex!2502 (LexerInterface!5283 List!38333 BalanceConc!22924) tuple2!38088)

(assert (=> d!1066880 (= lt!1254234 (head!7674 (list!14118 (_1!22178 (lex!2502 thiss!23823 rules!3307 (seqFromList!4243 lt!1254016))))))))

(assert (=> d!1066880 (not (isEmpty!22593 rules!3307))))

(assert (=> d!1066880 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!963 thiss!23823 rules!3307 lt!1254016 suffix!1395) lt!1254237)))

(assert (= (and d!1066880 res!1468621) b!3627305))

(assert (= (and b!3627305 res!1468620) b!3627307))

(assert (= (and d!1066880 c!627587) b!3627309))

(assert (= (and d!1066880 (not c!627587)) b!3627310))

(declare-fun m!4128207 () Bool)

(assert (=> b!3627309 m!4128207))

(declare-fun m!4128209 () Bool)

(assert (=> b!3627309 m!4128209))

(declare-fun m!4128211 () Bool)

(assert (=> b!3627309 m!4128211))

(declare-fun m!4128213 () Bool)

(assert (=> b!3627309 m!4128213))

(declare-fun m!4128215 () Bool)

(assert (=> b!3627309 m!4128215))

(assert (=> b!3627309 m!4128211))

(assert (=> b!3627309 m!4127731))

(declare-fun m!4128217 () Bool)

(assert (=> b!3627309 m!4128217))

(assert (=> b!3627309 m!4128207))

(assert (=> b!3627309 m!4127731))

(declare-fun m!4128219 () Bool)

(assert (=> b!3627309 m!4128219))

(assert (=> b!3627305 m!4128211))

(assert (=> b!3627305 m!4128213))

(assert (=> b!3627305 m!4128213))

(declare-fun m!4128221 () Bool)

(assert (=> b!3627305 m!4128221))

(declare-fun m!4128223 () Bool)

(assert (=> b!3627305 m!4128223))

(declare-fun m!4128225 () Bool)

(assert (=> b!3627305 m!4128225))

(assert (=> b!3627305 m!4128211))

(assert (=> b!3627305 m!4128223))

(assert (=> b!3627307 m!4128223))

(assert (=> b!3627307 m!4128223))

(assert (=> b!3627307 m!4128225))

(declare-fun m!4128227 () Bool)

(assert (=> d!1066880 m!4128227))

(assert (=> d!1066880 m!4128227))

(declare-fun m!4128229 () Bool)

(assert (=> d!1066880 m!4128229))

(assert (=> d!1066880 m!4127699))

(declare-fun m!4128231 () Bool)

(assert (=> d!1066880 m!4128231))

(declare-fun m!4128233 () Bool)

(assert (=> d!1066880 m!4128233))

(declare-fun m!4128235 () Bool)

(assert (=> d!1066880 m!4128235))

(assert (=> d!1066880 m!4127731))

(declare-fun m!4128237 () Bool)

(assert (=> d!1066880 m!4128237))

(declare-fun m!4128239 () Bool)

(assert (=> d!1066880 m!4128239))

(declare-fun m!4128241 () Bool)

(assert (=> d!1066880 m!4128241))

(assert (=> d!1066880 m!4128211))

(assert (=> d!1066880 m!4128213))

(assert (=> d!1066880 m!4128223))

(declare-fun m!4128243 () Bool)

(assert (=> d!1066880 m!4128243))

(assert (=> d!1066880 m!4128239))

(assert (=> d!1066880 m!4128211))

(assert (=> d!1066880 m!4127707))

(declare-fun m!4128245 () Bool)

(assert (=> d!1066880 m!4128245))

(declare-fun m!4128247 () Bool)

(assert (=> d!1066880 m!4128247))

(declare-fun m!4128249 () Bool)

(assert (=> d!1066880 m!4128249))

(assert (=> d!1066880 m!4128233))

(declare-fun m!4128251 () Bool)

(assert (=> d!1066880 m!4128251))

(assert (=> d!1066880 m!4127699))

(declare-fun m!4128253 () Bool)

(assert (=> d!1066880 m!4128253))

(assert (=> d!1066880 m!4127731))

(assert (=> d!1066880 m!4128245))

(declare-fun m!4128255 () Bool)

(assert (=> d!1066880 m!4128255))

(assert (=> d!1066880 m!4127731))

(assert (=> d!1066880 m!4128233))

(assert (=> d!1066880 m!4128223))

(assert (=> b!3626883 d!1066880))

(declare-fun d!1066950 () Bool)

(declare-fun e!2245263 () Bool)

(assert (=> d!1066950 e!2245263))

(declare-fun res!1468629 () Bool)

(assert (=> d!1066950 (=> (not res!1468629) (not e!2245263))))

(assert (=> d!1066950 (= res!1468629 (isDefined!6250 (getRuleFromTag!1300 thiss!23823 rules!3307 (tag!6420 (rule!8462 (_1!22176 lt!1254035))))))))

(declare-fun lt!1254245 () Unit!54971)

(declare-fun choose!21300 (LexerInterface!5283 List!38333 List!38331 Token!10754) Unit!54971)

(assert (=> d!1066950 (= lt!1254245 (choose!21300 thiss!23823 rules!3307 lt!1254026 (_1!22176 lt!1254035)))))

(assert (=> d!1066950 (rulesInvariant!4680 thiss!23823 rules!3307)))

(assert (=> d!1066950 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1300 thiss!23823 rules!3307 lt!1254026 (_1!22176 lt!1254035)) lt!1254245)))

(declare-fun b!3627318 () Bool)

(declare-fun res!1468630 () Bool)

(assert (=> b!3627318 (=> (not res!1468630) (not e!2245263))))

(assert (=> b!3627318 (= res!1468630 (matchR!5022 (regex!5694 (get!12476 (getRuleFromTag!1300 thiss!23823 rules!3307 (tag!6420 (rule!8462 (_1!22176 lt!1254035)))))) (list!14114 (charsOf!3708 (_1!22176 lt!1254035)))))))

(declare-fun b!3627319 () Bool)

(assert (=> b!3627319 (= e!2245263 (= (rule!8462 (_1!22176 lt!1254035)) (get!12476 (getRuleFromTag!1300 thiss!23823 rules!3307 (tag!6420 (rule!8462 (_1!22176 lt!1254035)))))))))

(assert (= (and d!1066950 res!1468629) b!3627318))

(assert (= (and b!3627318 res!1468630) b!3627319))

(assert (=> d!1066950 m!4127735))

(assert (=> d!1066950 m!4127735))

(declare-fun m!4128261 () Bool)

(assert (=> d!1066950 m!4128261))

(declare-fun m!4128263 () Bool)

(assert (=> d!1066950 m!4128263))

(assert (=> d!1066950 m!4127691))

(assert (=> b!3627318 m!4127735))

(declare-fun m!4128265 () Bool)

(assert (=> b!3627318 m!4128265))

(assert (=> b!3627318 m!4127735))

(assert (=> b!3627318 m!4127711))

(assert (=> b!3627318 m!4127713))

(declare-fun m!4128267 () Bool)

(assert (=> b!3627318 m!4128267))

(assert (=> b!3627318 m!4127711))

(assert (=> b!3627318 m!4127713))

(assert (=> b!3627319 m!4127735))

(assert (=> b!3627319 m!4127735))

(assert (=> b!3627319 m!4128265))

(assert (=> b!3626883 d!1066950))

(declare-fun b!3627329 () Bool)

(declare-fun e!2245269 () List!38331)

(assert (=> b!3627329 (= e!2245269 (Cons!38207 (h!43627 lt!1254016) (++!9510 (t!294786 lt!1254016) suffix!1395)))))

(declare-fun e!2245268 () Bool)

(declare-fun lt!1254248 () List!38331)

(declare-fun b!3627331 () Bool)

(assert (=> b!3627331 (= e!2245268 (or (not (= suffix!1395 Nil!38207)) (= lt!1254248 lt!1254016)))))

(declare-fun d!1066954 () Bool)

(assert (=> d!1066954 e!2245268))

(declare-fun res!1468635 () Bool)

(assert (=> d!1066954 (=> (not res!1468635) (not e!2245268))))

(assert (=> d!1066954 (= res!1468635 (= (content!5475 lt!1254248) ((_ map or) (content!5475 lt!1254016) (content!5475 suffix!1395))))))

(assert (=> d!1066954 (= lt!1254248 e!2245269)))

(declare-fun c!627590 () Bool)

(assert (=> d!1066954 (= c!627590 ((_ is Nil!38207) lt!1254016))))

(assert (=> d!1066954 (= (++!9510 lt!1254016 suffix!1395) lt!1254248)))

(declare-fun b!3627328 () Bool)

(assert (=> b!3627328 (= e!2245269 suffix!1395)))

(declare-fun b!3627330 () Bool)

(declare-fun res!1468636 () Bool)

(assert (=> b!3627330 (=> (not res!1468636) (not e!2245268))))

(assert (=> b!3627330 (= res!1468636 (= (size!29151 lt!1254248) (+ (size!29151 lt!1254016) (size!29151 suffix!1395))))))

(assert (= (and d!1066954 c!627590) b!3627328))

(assert (= (and d!1066954 (not c!627590)) b!3627329))

(assert (= (and d!1066954 res!1468635) b!3627330))

(assert (= (and b!3627330 res!1468636) b!3627331))

(declare-fun m!4128269 () Bool)

(assert (=> b!3627329 m!4128269))

(declare-fun m!4128271 () Bool)

(assert (=> d!1066954 m!4128271))

(assert (=> d!1066954 m!4127817))

(declare-fun m!4128273 () Bool)

(assert (=> d!1066954 m!4128273))

(declare-fun m!4128275 () Bool)

(assert (=> b!3627330 m!4128275))

(assert (=> b!3627330 m!4127983))

(declare-fun m!4128277 () Bool)

(assert (=> b!3627330 m!4128277))

(assert (=> b!3626883 d!1066954))

(declare-fun b!3627333 () Bool)

(declare-fun e!2245271 () List!38331)

(assert (=> b!3627333 (= e!2245271 (Cons!38207 (h!43627 lt!1254040) (++!9510 (t!294786 lt!1254040) (_2!22176 lt!1254035))))))

(declare-fun b!3627335 () Bool)

(declare-fun lt!1254249 () List!38331)

(declare-fun e!2245270 () Bool)

(assert (=> b!3627335 (= e!2245270 (or (not (= (_2!22176 lt!1254035) Nil!38207)) (= lt!1254249 lt!1254040)))))

(declare-fun d!1066956 () Bool)

(assert (=> d!1066956 e!2245270))

(declare-fun res!1468637 () Bool)

(assert (=> d!1066956 (=> (not res!1468637) (not e!2245270))))

(assert (=> d!1066956 (= res!1468637 (= (content!5475 lt!1254249) ((_ map or) (content!5475 lt!1254040) (content!5475 (_2!22176 lt!1254035)))))))

(assert (=> d!1066956 (= lt!1254249 e!2245271)))

(declare-fun c!627591 () Bool)

(assert (=> d!1066956 (= c!627591 ((_ is Nil!38207) lt!1254040))))

(assert (=> d!1066956 (= (++!9510 lt!1254040 (_2!22176 lt!1254035)) lt!1254249)))

(declare-fun b!3627332 () Bool)

(assert (=> b!3627332 (= e!2245271 (_2!22176 lt!1254035))))

(declare-fun b!3627334 () Bool)

(declare-fun res!1468638 () Bool)

(assert (=> b!3627334 (=> (not res!1468638) (not e!2245270))))

(assert (=> b!3627334 (= res!1468638 (= (size!29151 lt!1254249) (+ (size!29151 lt!1254040) (size!29151 (_2!22176 lt!1254035)))))))

(assert (= (and d!1066956 c!627591) b!3627332))

(assert (= (and d!1066956 (not c!627591)) b!3627333))

(assert (= (and d!1066956 res!1468637) b!3627334))

(assert (= (and b!3627334 res!1468638) b!3627335))

(declare-fun m!4128279 () Bool)

(assert (=> b!3627333 m!4128279))

(declare-fun m!4128281 () Bool)

(assert (=> d!1066956 m!4128281))

(declare-fun m!4128283 () Bool)

(assert (=> d!1066956 m!4128283))

(declare-fun m!4128285 () Bool)

(assert (=> d!1066956 m!4128285))

(declare-fun m!4128287 () Bool)

(assert (=> b!3627334 m!4128287))

(assert (=> b!3627334 m!4127667))

(declare-fun m!4128289 () Bool)

(assert (=> b!3627334 m!4128289))

(assert (=> b!3626883 d!1066956))

(declare-fun b!3627339 () Bool)

(declare-fun e!2245272 () Bool)

(assert (=> b!3627339 (= e!2245272 (>= (size!29151 lt!1254026) (size!29151 lt!1254040)))))

(declare-fun b!3627337 () Bool)

(declare-fun res!1468639 () Bool)

(declare-fun e!2245274 () Bool)

(assert (=> b!3627337 (=> (not res!1468639) (not e!2245274))))

(assert (=> b!3627337 (= res!1468639 (= (head!7672 lt!1254040) (head!7672 lt!1254026)))))

(declare-fun b!3627338 () Bool)

(assert (=> b!3627338 (= e!2245274 (isPrefix!3057 (tail!5617 lt!1254040) (tail!5617 lt!1254026)))))

(declare-fun b!3627336 () Bool)

(declare-fun e!2245273 () Bool)

(assert (=> b!3627336 (= e!2245273 e!2245274)))

(declare-fun res!1468642 () Bool)

(assert (=> b!3627336 (=> (not res!1468642) (not e!2245274))))

(assert (=> b!3627336 (= res!1468642 (not ((_ is Nil!38207) lt!1254026)))))

(declare-fun d!1066958 () Bool)

(assert (=> d!1066958 e!2245272))

(declare-fun res!1468641 () Bool)

(assert (=> d!1066958 (=> res!1468641 e!2245272)))

(declare-fun lt!1254250 () Bool)

(assert (=> d!1066958 (= res!1468641 (not lt!1254250))))

(assert (=> d!1066958 (= lt!1254250 e!2245273)))

(declare-fun res!1468640 () Bool)

(assert (=> d!1066958 (=> res!1468640 e!2245273)))

(assert (=> d!1066958 (= res!1468640 ((_ is Nil!38207) lt!1254040))))

(assert (=> d!1066958 (= (isPrefix!3057 lt!1254040 lt!1254026) lt!1254250)))

(assert (= (and d!1066958 (not res!1468640)) b!3627336))

(assert (= (and b!3627336 res!1468642) b!3627337))

(assert (= (and b!3627337 res!1468639) b!3627338))

(assert (= (and d!1066958 (not res!1468641)) b!3627339))

(assert (=> b!3627339 m!4127981))

(assert (=> b!3627339 m!4127667))

(assert (=> b!3627337 m!4127783))

(assert (=> b!3627337 m!4127985))

(assert (=> b!3627338 m!4127877))

(assert (=> b!3627338 m!4127987))

(assert (=> b!3627338 m!4127877))

(assert (=> b!3627338 m!4127987))

(declare-fun m!4128291 () Bool)

(assert (=> b!3627338 m!4128291))

(assert (=> b!3626883 d!1066958))

(declare-fun d!1066960 () Bool)

(declare-fun lt!1254253 () BalanceConc!22924)

(assert (=> d!1066960 (= (list!14114 lt!1254253) (originalCharacters!6408 (_1!22176 lt!1254035)))))

(declare-fun dynLambda!16549 (Int TokenValue!5924) BalanceConc!22924)

(assert (=> d!1066960 (= lt!1254253 (dynLambda!16549 (toChars!7841 (transformation!5694 (rule!8462 (_1!22176 lt!1254035)))) (value!182739 (_1!22176 lt!1254035))))))

(assert (=> d!1066960 (= (charsOf!3708 (_1!22176 lt!1254035)) lt!1254253)))

(declare-fun b_lambda!107329 () Bool)

(assert (=> (not b_lambda!107329) (not d!1066960)))

(declare-fun tb!208233 () Bool)

(declare-fun t!294806 () Bool)

(assert (=> (and b!3626900 (= (toChars!7841 (transformation!5694 rule!403)) (toChars!7841 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294806) tb!208233))

(declare-fun b!3627344 () Bool)

(declare-fun e!2245277 () Bool)

(declare-fun tp!1107471 () Bool)

(declare-fun inv!51620 (Conc!11655) Bool)

(assert (=> b!3627344 (= e!2245277 (and (inv!51620 (c!627511 (dynLambda!16549 (toChars!7841 (transformation!5694 (rule!8462 (_1!22176 lt!1254035)))) (value!182739 (_1!22176 lt!1254035))))) tp!1107471))))

(declare-fun result!253696 () Bool)

(declare-fun inv!51621 (BalanceConc!22924) Bool)

(assert (=> tb!208233 (= result!253696 (and (inv!51621 (dynLambda!16549 (toChars!7841 (transformation!5694 (rule!8462 (_1!22176 lt!1254035)))) (value!182739 (_1!22176 lt!1254035)))) e!2245277))))

(assert (= tb!208233 b!3627344))

(declare-fun m!4128293 () Bool)

(assert (=> b!3627344 m!4128293))

(declare-fun m!4128295 () Bool)

(assert (=> tb!208233 m!4128295))

(assert (=> d!1066960 t!294806))

(declare-fun b_and!265791 () Bool)

(assert (= b_and!265753 (and (=> t!294806 result!253696) b_and!265791)))

(declare-fun tb!208235 () Bool)

(declare-fun t!294808 () Bool)

(assert (=> (and b!3626876 (= (toChars!7841 (transformation!5694 anOtherTypeRule!33)) (toChars!7841 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294808) tb!208235))

(declare-fun result!253700 () Bool)

(assert (= result!253700 result!253696))

(assert (=> d!1066960 t!294808))

(declare-fun b_and!265793 () Bool)

(assert (= b_and!265757 (and (=> t!294808 result!253700) b_and!265793)))

(declare-fun tb!208237 () Bool)

(declare-fun t!294810 () Bool)

(assert (=> (and b!3626879 (= (toChars!7841 (transformation!5694 (rule!8462 token!511))) (toChars!7841 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294810) tb!208237))

(declare-fun result!253702 () Bool)

(assert (= result!253702 result!253696))

(assert (=> d!1066960 t!294810))

(declare-fun b_and!265795 () Bool)

(assert (= b_and!265761 (and (=> t!294810 result!253702) b_and!265795)))

(declare-fun t!294812 () Bool)

(declare-fun tb!208239 () Bool)

(assert (=> (and b!3626893 (= (toChars!7841 (transformation!5694 (h!43629 rules!3307))) (toChars!7841 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294812) tb!208239))

(declare-fun result!253704 () Bool)

(assert (= result!253704 result!253696))

(assert (=> d!1066960 t!294812))

(declare-fun b_and!265797 () Bool)

(assert (= b_and!265765 (and (=> t!294812 result!253704) b_and!265797)))

(declare-fun m!4128297 () Bool)

(assert (=> d!1066960 m!4128297))

(declare-fun m!4128299 () Bool)

(assert (=> d!1066960 m!4128299))

(assert (=> b!3626883 d!1066960))

(declare-fun d!1066962 () Bool)

(assert (=> d!1066962 (= (get!12475 lt!1254023) (v!37799 lt!1254023))))

(assert (=> b!3626883 d!1066962))

(declare-fun d!1066964 () Bool)

(assert (=> d!1066964 (isPrefix!3057 lt!1254016 (++!9510 lt!1254016 suffix!1395))))

(declare-fun lt!1254256 () Unit!54971)

(declare-fun choose!21301 (List!38331 List!38331) Unit!54971)

(assert (=> d!1066964 (= lt!1254256 (choose!21301 lt!1254016 suffix!1395))))

(assert (=> d!1066964 (= (lemmaConcatTwoListThenFirstIsPrefix!1978 lt!1254016 suffix!1395) lt!1254256)))

(declare-fun bs!571465 () Bool)

(assert (= bs!571465 d!1066964))

(assert (=> bs!571465 m!4127731))

(assert (=> bs!571465 m!4127731))

(declare-fun m!4128301 () Bool)

(assert (=> bs!571465 m!4128301))

(declare-fun m!4128303 () Bool)

(assert (=> bs!571465 m!4128303))

(assert (=> b!3626883 d!1066964))

(declare-fun d!1066966 () Bool)

(assert (=> d!1066966 (isPrefix!3057 lt!1254040 (++!9510 lt!1254040 (_2!22176 lt!1254035)))))

(declare-fun lt!1254257 () Unit!54971)

(assert (=> d!1066966 (= lt!1254257 (choose!21301 lt!1254040 (_2!22176 lt!1254035)))))

(assert (=> d!1066966 (= (lemmaConcatTwoListThenFirstIsPrefix!1978 lt!1254040 (_2!22176 lt!1254035)) lt!1254257)))

(declare-fun bs!571466 () Bool)

(assert (= bs!571466 d!1066966))

(assert (=> bs!571466 m!4127719))

(assert (=> bs!571466 m!4127719))

(assert (=> bs!571466 m!4127723))

(declare-fun m!4128305 () Bool)

(assert (=> bs!571466 m!4128305))

(assert (=> b!3626883 d!1066966))

(declare-fun b!3627363 () Bool)

(declare-fun e!2245286 () Option!8018)

(declare-fun lt!1254272 () Option!8018)

(declare-fun lt!1254269 () Option!8018)

(assert (=> b!3627363 (= e!2245286 (ite (and ((_ is None!8017) lt!1254272) ((_ is None!8017) lt!1254269)) None!8017 (ite ((_ is None!8017) lt!1254269) lt!1254272 (ite ((_ is None!8017) lt!1254272) lt!1254269 (ite (>= (size!29149 (_1!22176 (v!37799 lt!1254272))) (size!29149 (_1!22176 (v!37799 lt!1254269)))) lt!1254272 lt!1254269)))))))

(declare-fun call!262366 () Option!8018)

(assert (=> b!3627363 (= lt!1254272 call!262366)))

(assert (=> b!3627363 (= lt!1254269 (maxPrefix!2817 thiss!23823 (t!294788 rules!3307) lt!1254026))))

(declare-fun b!3627364 () Bool)

(declare-fun res!1468662 () Bool)

(declare-fun e!2245284 () Bool)

(assert (=> b!3627364 (=> (not res!1468662) (not e!2245284))))

(declare-fun lt!1254270 () Option!8018)

(assert (=> b!3627364 (= res!1468662 (matchR!5022 (regex!5694 (rule!8462 (_1!22176 (get!12475 lt!1254270)))) (list!14114 (charsOf!3708 (_1!22176 (get!12475 lt!1254270))))))))

(declare-fun b!3627365 () Bool)

(declare-fun res!1468659 () Bool)

(assert (=> b!3627365 (=> (not res!1468659) (not e!2245284))))

(assert (=> b!3627365 (= res!1468659 (= (++!9510 (list!14114 (charsOf!3708 (_1!22176 (get!12475 lt!1254270)))) (_2!22176 (get!12475 lt!1254270))) lt!1254026))))

(declare-fun bm!262361 () Bool)

(assert (=> bm!262361 (= call!262366 (maxPrefixOneRule!1957 thiss!23823 (h!43629 rules!3307) lt!1254026))))

(declare-fun b!3627366 () Bool)

(assert (=> b!3627366 (= e!2245286 call!262366)))

(declare-fun b!3627367 () Bool)

(declare-fun res!1468661 () Bool)

(assert (=> b!3627367 (=> (not res!1468661) (not e!2245284))))

(assert (=> b!3627367 (= res!1468661 (< (size!29151 (_2!22176 (get!12475 lt!1254270))) (size!29151 lt!1254026)))))

(declare-fun b!3627368 () Bool)

(declare-fun e!2245285 () Bool)

(assert (=> b!3627368 (= e!2245285 e!2245284)))

(declare-fun res!1468663 () Bool)

(assert (=> b!3627368 (=> (not res!1468663) (not e!2245284))))

(assert (=> b!3627368 (= res!1468663 (isDefined!6251 lt!1254270))))

(declare-fun b!3627370 () Bool)

(declare-fun res!1468658 () Bool)

(assert (=> b!3627370 (=> (not res!1468658) (not e!2245284))))

(assert (=> b!3627370 (= res!1468658 (= (list!14114 (charsOf!3708 (_1!22176 (get!12475 lt!1254270)))) (originalCharacters!6408 (_1!22176 (get!12475 lt!1254270)))))))

(declare-fun b!3627371 () Bool)

(assert (=> b!3627371 (= e!2245284 (contains!7454 rules!3307 (rule!8462 (_1!22176 (get!12475 lt!1254270)))))))

(declare-fun d!1066968 () Bool)

(assert (=> d!1066968 e!2245285))

(declare-fun res!1468657 () Bool)

(assert (=> d!1066968 (=> res!1468657 e!2245285)))

(assert (=> d!1066968 (= res!1468657 (isEmpty!22596 lt!1254270))))

(assert (=> d!1066968 (= lt!1254270 e!2245286)))

(declare-fun c!627594 () Bool)

(assert (=> d!1066968 (= c!627594 (and ((_ is Cons!38209) rules!3307) ((_ is Nil!38209) (t!294788 rules!3307))))))

(declare-fun lt!1254268 () Unit!54971)

(declare-fun lt!1254271 () Unit!54971)

(assert (=> d!1066968 (= lt!1254268 lt!1254271)))

(assert (=> d!1066968 (isPrefix!3057 lt!1254026 lt!1254026)))

(declare-fun lemmaIsPrefixRefl!1938 (List!38331 List!38331) Unit!54971)

(assert (=> d!1066968 (= lt!1254271 (lemmaIsPrefixRefl!1938 lt!1254026 lt!1254026))))

(declare-fun rulesValidInductive!2003 (LexerInterface!5283 List!38333) Bool)

(assert (=> d!1066968 (rulesValidInductive!2003 thiss!23823 rules!3307)))

(assert (=> d!1066968 (= (maxPrefix!2817 thiss!23823 rules!3307 lt!1254026) lt!1254270)))

(declare-fun b!3627369 () Bool)

(declare-fun res!1468660 () Bool)

(assert (=> b!3627369 (=> (not res!1468660) (not e!2245284))))

(assert (=> b!3627369 (= res!1468660 (= (value!182739 (_1!22176 (get!12475 lt!1254270))) (apply!9196 (transformation!5694 (rule!8462 (_1!22176 (get!12475 lt!1254270)))) (seqFromList!4243 (originalCharacters!6408 (_1!22176 (get!12475 lt!1254270)))))))))

(assert (= (and d!1066968 c!627594) b!3627366))

(assert (= (and d!1066968 (not c!627594)) b!3627363))

(assert (= (or b!3627366 b!3627363) bm!262361))

(assert (= (and d!1066968 (not res!1468657)) b!3627368))

(assert (= (and b!3627368 res!1468663) b!3627370))

(assert (= (and b!3627370 res!1468658) b!3627367))

(assert (= (and b!3627367 res!1468661) b!3627365))

(assert (= (and b!3627365 res!1468659) b!3627369))

(assert (= (and b!3627369 res!1468660) b!3627364))

(assert (= (and b!3627364 res!1468662) b!3627371))

(declare-fun m!4128307 () Bool)

(assert (=> b!3627370 m!4128307))

(declare-fun m!4128309 () Bool)

(assert (=> b!3627370 m!4128309))

(assert (=> b!3627370 m!4128309))

(declare-fun m!4128311 () Bool)

(assert (=> b!3627370 m!4128311))

(assert (=> b!3627367 m!4128307))

(declare-fun m!4128313 () Bool)

(assert (=> b!3627367 m!4128313))

(assert (=> b!3627367 m!4127981))

(declare-fun m!4128315 () Bool)

(assert (=> bm!262361 m!4128315))

(declare-fun m!4128317 () Bool)

(assert (=> b!3627368 m!4128317))

(declare-fun m!4128319 () Bool)

(assert (=> d!1066968 m!4128319))

(declare-fun m!4128321 () Bool)

(assert (=> d!1066968 m!4128321))

(declare-fun m!4128323 () Bool)

(assert (=> d!1066968 m!4128323))

(declare-fun m!4128325 () Bool)

(assert (=> d!1066968 m!4128325))

(assert (=> b!3627364 m!4128307))

(assert (=> b!3627364 m!4128309))

(assert (=> b!3627364 m!4128309))

(assert (=> b!3627364 m!4128311))

(assert (=> b!3627364 m!4128311))

(declare-fun m!4128327 () Bool)

(assert (=> b!3627364 m!4128327))

(assert (=> b!3627371 m!4128307))

(declare-fun m!4128329 () Bool)

(assert (=> b!3627371 m!4128329))

(assert (=> b!3627369 m!4128307))

(declare-fun m!4128331 () Bool)

(assert (=> b!3627369 m!4128331))

(assert (=> b!3627369 m!4128331))

(declare-fun m!4128333 () Bool)

(assert (=> b!3627369 m!4128333))

(declare-fun m!4128335 () Bool)

(assert (=> b!3627363 m!4128335))

(assert (=> b!3627365 m!4128307))

(assert (=> b!3627365 m!4128309))

(assert (=> b!3627365 m!4128309))

(assert (=> b!3627365 m!4128311))

(assert (=> b!3627365 m!4128311))

(declare-fun m!4128337 () Bool)

(assert (=> b!3627365 m!4128337))

(assert (=> b!3626883 d!1066968))

(declare-fun b!3627375 () Bool)

(declare-fun e!2245287 () Bool)

(assert (=> b!3627375 (= e!2245287 (>= (size!29151 (++!9510 lt!1254040 (_2!22176 lt!1254035))) (size!29151 lt!1254040)))))

(declare-fun b!3627373 () Bool)

(declare-fun res!1468664 () Bool)

(declare-fun e!2245289 () Bool)

(assert (=> b!3627373 (=> (not res!1468664) (not e!2245289))))

(assert (=> b!3627373 (= res!1468664 (= (head!7672 lt!1254040) (head!7672 (++!9510 lt!1254040 (_2!22176 lt!1254035)))))))

(declare-fun b!3627374 () Bool)

(assert (=> b!3627374 (= e!2245289 (isPrefix!3057 (tail!5617 lt!1254040) (tail!5617 (++!9510 lt!1254040 (_2!22176 lt!1254035)))))))

(declare-fun b!3627372 () Bool)

(declare-fun e!2245288 () Bool)

(assert (=> b!3627372 (= e!2245288 e!2245289)))

(declare-fun res!1468667 () Bool)

(assert (=> b!3627372 (=> (not res!1468667) (not e!2245289))))

(assert (=> b!3627372 (= res!1468667 (not ((_ is Nil!38207) (++!9510 lt!1254040 (_2!22176 lt!1254035)))))))

(declare-fun d!1066970 () Bool)

(assert (=> d!1066970 e!2245287))

(declare-fun res!1468666 () Bool)

(assert (=> d!1066970 (=> res!1468666 e!2245287)))

(declare-fun lt!1254273 () Bool)

(assert (=> d!1066970 (= res!1468666 (not lt!1254273))))

(assert (=> d!1066970 (= lt!1254273 e!2245288)))

(declare-fun res!1468665 () Bool)

(assert (=> d!1066970 (=> res!1468665 e!2245288)))

(assert (=> d!1066970 (= res!1468665 ((_ is Nil!38207) lt!1254040))))

(assert (=> d!1066970 (= (isPrefix!3057 lt!1254040 (++!9510 lt!1254040 (_2!22176 lt!1254035))) lt!1254273)))

(assert (= (and d!1066970 (not res!1468665)) b!3627372))

(assert (= (and b!3627372 res!1468667) b!3627373))

(assert (= (and b!3627373 res!1468664) b!3627374))

(assert (= (and d!1066970 (not res!1468666)) b!3627375))

(assert (=> b!3627375 m!4127719))

(declare-fun m!4128339 () Bool)

(assert (=> b!3627375 m!4128339))

(assert (=> b!3627375 m!4127667))

(assert (=> b!3627373 m!4127783))

(assert (=> b!3627373 m!4127719))

(declare-fun m!4128341 () Bool)

(assert (=> b!3627373 m!4128341))

(assert (=> b!3627374 m!4127877))

(assert (=> b!3627374 m!4127719))

(declare-fun m!4128343 () Bool)

(assert (=> b!3627374 m!4128343))

(assert (=> b!3627374 m!4127877))

(assert (=> b!3627374 m!4128343))

(declare-fun m!4128345 () Bool)

(assert (=> b!3627374 m!4128345))

(assert (=> b!3626883 d!1066970))

(declare-fun d!1066972 () Bool)

(assert (=> d!1066972 (= (isDefined!6250 lt!1254022) (not (isEmpty!22595 lt!1254022)))))

(declare-fun bs!571467 () Bool)

(assert (= bs!571467 d!1066972))

(declare-fun m!4128347 () Bool)

(assert (=> bs!571467 m!4128347))

(assert (=> b!3626883 d!1066972))

(declare-fun d!1066974 () Bool)

(assert (=> d!1066974 (= (inv!51613 (tag!6420 (h!43629 rules!3307))) (= (mod (str.len (value!182738 (tag!6420 (h!43629 rules!3307)))) 2) 0))))

(assert (=> b!3626881 d!1066974))

(declare-fun d!1066976 () Bool)

(declare-fun res!1468668 () Bool)

(declare-fun e!2245290 () Bool)

(assert (=> d!1066976 (=> (not res!1468668) (not e!2245290))))

(assert (=> d!1066976 (= res!1468668 (semiInverseModEq!2417 (toChars!7841 (transformation!5694 (h!43629 rules!3307))) (toValue!7982 (transformation!5694 (h!43629 rules!3307)))))))

(assert (=> d!1066976 (= (inv!51616 (transformation!5694 (h!43629 rules!3307))) e!2245290)))

(declare-fun b!3627376 () Bool)

(assert (=> b!3627376 (= e!2245290 (equivClasses!2316 (toChars!7841 (transformation!5694 (h!43629 rules!3307))) (toValue!7982 (transformation!5694 (h!43629 rules!3307)))))))

(assert (= (and d!1066976 res!1468668) b!3627376))

(declare-fun m!4128349 () Bool)

(assert (=> d!1066976 m!4128349))

(declare-fun m!4128351 () Bool)

(assert (=> b!3627376 m!4128351))

(assert (=> b!3626881 d!1066976))

(declare-fun d!1066978 () Bool)

(declare-fun res!1468673 () Bool)

(declare-fun e!2245295 () Bool)

(assert (=> d!1066978 (=> res!1468673 e!2245295)))

(assert (=> d!1066978 (= res!1468673 (not ((_ is Cons!38209) rules!3307)))))

(assert (=> d!1066978 (= (sepAndNonSepRulesDisjointChars!1864 rules!3307 rules!3307) e!2245295)))

(declare-fun b!3627381 () Bool)

(declare-fun e!2245296 () Bool)

(assert (=> b!3627381 (= e!2245295 e!2245296)))

(declare-fun res!1468674 () Bool)

(assert (=> b!3627381 (=> (not res!1468674) (not e!2245296))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!843 (Rule!11188 List!38333) Bool)

(assert (=> b!3627381 (= res!1468674 (ruleDisjointCharsFromAllFromOtherType!843 (h!43629 rules!3307) rules!3307))))

(declare-fun b!3627382 () Bool)

(assert (=> b!3627382 (= e!2245296 (sepAndNonSepRulesDisjointChars!1864 rules!3307 (t!294788 rules!3307)))))

(assert (= (and d!1066978 (not res!1468673)) b!3627381))

(assert (= (and b!3627381 res!1468674) b!3627382))

(declare-fun m!4128353 () Bool)

(assert (=> b!3627381 m!4128353))

(declare-fun m!4128355 () Bool)

(assert (=> b!3627382 m!4128355))

(assert (=> b!3626903 d!1066978))

(declare-fun d!1066980 () Bool)

(declare-fun res!1468679 () Bool)

(declare-fun e!2245299 () Bool)

(assert (=> d!1066980 (=> (not res!1468679) (not e!2245299))))

(assert (=> d!1066980 (= res!1468679 (not (isEmpty!22592 (originalCharacters!6408 token!511))))))

(assert (=> d!1066980 (= (inv!51617 token!511) e!2245299)))

(declare-fun b!3627387 () Bool)

(declare-fun res!1468680 () Bool)

(assert (=> b!3627387 (=> (not res!1468680) (not e!2245299))))

(assert (=> b!3627387 (= res!1468680 (= (originalCharacters!6408 token!511) (list!14114 (dynLambda!16549 (toChars!7841 (transformation!5694 (rule!8462 token!511))) (value!182739 token!511)))))))

(declare-fun b!3627388 () Bool)

(assert (=> b!3627388 (= e!2245299 (= (size!29149 token!511) (size!29151 (originalCharacters!6408 token!511))))))

(assert (= (and d!1066980 res!1468679) b!3627387))

(assert (= (and b!3627387 res!1468680) b!3627388))

(declare-fun b_lambda!107331 () Bool)

(assert (=> (not b_lambda!107331) (not b!3627387)))

(declare-fun tb!208241 () Bool)

(declare-fun t!294814 () Bool)

(assert (=> (and b!3626900 (= (toChars!7841 (transformation!5694 rule!403)) (toChars!7841 (transformation!5694 (rule!8462 token!511)))) t!294814) tb!208241))

(declare-fun b!3627389 () Bool)

(declare-fun e!2245300 () Bool)

(declare-fun tp!1107472 () Bool)

(assert (=> b!3627389 (= e!2245300 (and (inv!51620 (c!627511 (dynLambda!16549 (toChars!7841 (transformation!5694 (rule!8462 token!511))) (value!182739 token!511)))) tp!1107472))))

(declare-fun result!253706 () Bool)

(assert (=> tb!208241 (= result!253706 (and (inv!51621 (dynLambda!16549 (toChars!7841 (transformation!5694 (rule!8462 token!511))) (value!182739 token!511))) e!2245300))))

(assert (= tb!208241 b!3627389))

(declare-fun m!4128357 () Bool)

(assert (=> b!3627389 m!4128357))

(declare-fun m!4128359 () Bool)

(assert (=> tb!208241 m!4128359))

(assert (=> b!3627387 t!294814))

(declare-fun b_and!265799 () Bool)

(assert (= b_and!265791 (and (=> t!294814 result!253706) b_and!265799)))

(declare-fun t!294816 () Bool)

(declare-fun tb!208243 () Bool)

(assert (=> (and b!3626876 (= (toChars!7841 (transformation!5694 anOtherTypeRule!33)) (toChars!7841 (transformation!5694 (rule!8462 token!511)))) t!294816) tb!208243))

(declare-fun result!253708 () Bool)

(assert (= result!253708 result!253706))

(assert (=> b!3627387 t!294816))

(declare-fun b_and!265801 () Bool)

(assert (= b_and!265793 (and (=> t!294816 result!253708) b_and!265801)))

(declare-fun t!294818 () Bool)

(declare-fun tb!208245 () Bool)

(assert (=> (and b!3626879 (= (toChars!7841 (transformation!5694 (rule!8462 token!511))) (toChars!7841 (transformation!5694 (rule!8462 token!511)))) t!294818) tb!208245))

(declare-fun result!253710 () Bool)

(assert (= result!253710 result!253706))

(assert (=> b!3627387 t!294818))

(declare-fun b_and!265803 () Bool)

(assert (= b_and!265795 (and (=> t!294818 result!253710) b_and!265803)))

(declare-fun tb!208247 () Bool)

(declare-fun t!294820 () Bool)

(assert (=> (and b!3626893 (= (toChars!7841 (transformation!5694 (h!43629 rules!3307))) (toChars!7841 (transformation!5694 (rule!8462 token!511)))) t!294820) tb!208247))

(declare-fun result!253712 () Bool)

(assert (= result!253712 result!253706))

(assert (=> b!3627387 t!294820))

(declare-fun b_and!265805 () Bool)

(assert (= b_and!265797 (and (=> t!294820 result!253712) b_and!265805)))

(declare-fun m!4128361 () Bool)

(assert (=> d!1066980 m!4128361))

(declare-fun m!4128363 () Bool)

(assert (=> b!3627387 m!4128363))

(assert (=> b!3627387 m!4128363))

(declare-fun m!4128365 () Bool)

(assert (=> b!3627387 m!4128365))

(declare-fun m!4128367 () Bool)

(assert (=> b!3627388 m!4128367))

(assert (=> start!338018 d!1066980))

(declare-fun b!3627427 () Bool)

(declare-fun e!2245325 () Bool)

(assert (=> b!3627427 (= e!2245325 true)))

(declare-fun d!1066982 () Bool)

(assert (=> d!1066982 e!2245325))

(assert (= d!1066982 b!3627427))

(declare-fun lambda!124212 () Int)

(declare-fun order!20909 () Int)

(declare-fun order!20907 () Int)

(declare-fun dynLambda!16550 (Int Int) Int)

(declare-fun dynLambda!16551 (Int Int) Int)

(assert (=> b!3627427 (< (dynLambda!16550 order!20907 (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) (dynLambda!16551 order!20909 lambda!124212))))

(declare-fun order!20911 () Int)

(declare-fun dynLambda!16552 (Int Int) Int)

(assert (=> b!3627427 (< (dynLambda!16552 order!20911 (toChars!7841 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) (dynLambda!16551 order!20909 lambda!124212))))

(declare-fun dynLambda!16553 (Int BalanceConc!22924) TokenValue!5924)

(assert (=> d!1066982 (= (list!14114 (dynLambda!16549 (toChars!7841 (transformation!5694 (rule!8462 (_1!22176 lt!1254035)))) (dynLambda!16553 (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035)))) lt!1254036))) (list!14114 lt!1254036))))

(declare-fun lt!1254287 () Unit!54971)

(declare-fun ForallOf!675 (Int BalanceConc!22924) Unit!54971)

(assert (=> d!1066982 (= lt!1254287 (ForallOf!675 lambda!124212 lt!1254036))))

(assert (=> d!1066982 (= (lemmaSemiInverse!1445 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))) lt!1254036) lt!1254287)))

(declare-fun b_lambda!107345 () Bool)

(assert (=> (not b_lambda!107345) (not d!1066982)))

(declare-fun t!294854 () Bool)

(declare-fun tb!208281 () Bool)

(assert (=> (and b!3626900 (= (toChars!7841 (transformation!5694 rule!403)) (toChars!7841 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294854) tb!208281))

(declare-fun tp!1107474 () Bool)

(declare-fun e!2245326 () Bool)

(declare-fun b!3627428 () Bool)

(assert (=> b!3627428 (= e!2245326 (and (inv!51620 (c!627511 (dynLambda!16549 (toChars!7841 (transformation!5694 (rule!8462 (_1!22176 lt!1254035)))) (dynLambda!16553 (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035)))) lt!1254036)))) tp!1107474))))

(declare-fun result!253748 () Bool)

(assert (=> tb!208281 (= result!253748 (and (inv!51621 (dynLambda!16549 (toChars!7841 (transformation!5694 (rule!8462 (_1!22176 lt!1254035)))) (dynLambda!16553 (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035)))) lt!1254036))) e!2245326))))

(assert (= tb!208281 b!3627428))

(declare-fun m!4128403 () Bool)

(assert (=> b!3627428 m!4128403))

(declare-fun m!4128405 () Bool)

(assert (=> tb!208281 m!4128405))

(assert (=> d!1066982 t!294854))

(declare-fun b_and!265855 () Bool)

(assert (= b_and!265799 (and (=> t!294854 result!253748) b_and!265855)))

(declare-fun t!294856 () Bool)

(declare-fun tb!208283 () Bool)

(assert (=> (and b!3626876 (= (toChars!7841 (transformation!5694 anOtherTypeRule!33)) (toChars!7841 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294856) tb!208283))

(declare-fun result!253750 () Bool)

(assert (= result!253750 result!253748))

(assert (=> d!1066982 t!294856))

(declare-fun b_and!265857 () Bool)

(assert (= b_and!265801 (and (=> t!294856 result!253750) b_and!265857)))

(declare-fun t!294858 () Bool)

(declare-fun tb!208285 () Bool)

(assert (=> (and b!3626879 (= (toChars!7841 (transformation!5694 (rule!8462 token!511))) (toChars!7841 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294858) tb!208285))

(declare-fun result!253752 () Bool)

(assert (= result!253752 result!253748))

(assert (=> d!1066982 t!294858))

(declare-fun b_and!265859 () Bool)

(assert (= b_and!265803 (and (=> t!294858 result!253752) b_and!265859)))

(declare-fun t!294860 () Bool)

(declare-fun tb!208287 () Bool)

(assert (=> (and b!3626893 (= (toChars!7841 (transformation!5694 (h!43629 rules!3307))) (toChars!7841 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294860) tb!208287))

(declare-fun result!253754 () Bool)

(assert (= result!253754 result!253748))

(assert (=> d!1066982 t!294860))

(declare-fun b_and!265861 () Bool)

(assert (= b_and!265805 (and (=> t!294860 result!253754) b_and!265861)))

(declare-fun b_lambda!107347 () Bool)

(assert (=> (not b_lambda!107347) (not d!1066982)))

(declare-fun tb!208289 () Bool)

(declare-fun t!294862 () Bool)

(assert (=> (and b!3626900 (= (toValue!7982 (transformation!5694 rule!403)) (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294862) tb!208289))

(declare-fun result!253756 () Bool)

(assert (=> tb!208289 (= result!253756 (inv!21 (dynLambda!16553 (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035)))) lt!1254036)))))

(declare-fun m!4128407 () Bool)

(assert (=> tb!208289 m!4128407))

(assert (=> d!1066982 t!294862))

(declare-fun b_and!265863 () Bool)

(assert (= b_and!265751 (and (=> t!294862 result!253756) b_and!265863)))

(declare-fun t!294864 () Bool)

(declare-fun tb!208291 () Bool)

(assert (=> (and b!3626876 (= (toValue!7982 (transformation!5694 anOtherTypeRule!33)) (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294864) tb!208291))

(declare-fun result!253760 () Bool)

(assert (= result!253760 result!253756))

(assert (=> d!1066982 t!294864))

(declare-fun b_and!265865 () Bool)

(assert (= b_and!265755 (and (=> t!294864 result!253760) b_and!265865)))

(declare-fun tb!208293 () Bool)

(declare-fun t!294866 () Bool)

(assert (=> (and b!3626879 (= (toValue!7982 (transformation!5694 (rule!8462 token!511))) (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294866) tb!208293))

(declare-fun result!253762 () Bool)

(assert (= result!253762 result!253756))

(assert (=> d!1066982 t!294866))

(declare-fun b_and!265867 () Bool)

(assert (= b_and!265759 (and (=> t!294866 result!253762) b_and!265867)))

(declare-fun tb!208295 () Bool)

(declare-fun t!294868 () Bool)

(assert (=> (and b!3626893 (= (toValue!7982 (transformation!5694 (h!43629 rules!3307))) (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294868) tb!208295))

(declare-fun result!253764 () Bool)

(assert (= result!253764 result!253756))

(assert (=> d!1066982 t!294868))

(declare-fun b_and!265869 () Bool)

(assert (= b_and!265763 (and (=> t!294868 result!253764) b_and!265869)))

(declare-fun m!4128409 () Bool)

(assert (=> d!1066982 m!4128409))

(declare-fun m!4128411 () Bool)

(assert (=> d!1066982 m!4128411))

(declare-fun m!4128413 () Bool)

(assert (=> d!1066982 m!4128413))

(declare-fun m!4128415 () Bool)

(assert (=> d!1066982 m!4128415))

(assert (=> d!1066982 m!4127733))

(assert (=> d!1066982 m!4128411))

(assert (=> d!1066982 m!4128413))

(assert (=> b!3626880 d!1066982))

(declare-fun d!1066998 () Bool)

(declare-fun fromListB!1954 (List!38331) BalanceConc!22924)

(assert (=> d!1066998 (= (seqFromList!4243 (originalCharacters!6408 (_1!22176 lt!1254035))) (fromListB!1954 (originalCharacters!6408 (_1!22176 lt!1254035))))))

(declare-fun bs!571471 () Bool)

(assert (= bs!571471 d!1066998))

(declare-fun m!4128417 () Bool)

(assert (=> bs!571471 m!4128417))

(assert (=> b!3626880 d!1066998))

(declare-fun d!1067000 () Bool)

(assert (=> d!1067000 (= (apply!9196 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))) lt!1254036) (dynLambda!16553 (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035)))) lt!1254036))))

(declare-fun b_lambda!107349 () Bool)

(assert (=> (not b_lambda!107349) (not d!1067000)))

(assert (=> d!1067000 t!294862))

(declare-fun b_and!265871 () Bool)

(assert (= b_and!265863 (and (=> t!294862 result!253756) b_and!265871)))

(assert (=> d!1067000 t!294864))

(declare-fun b_and!265873 () Bool)

(assert (= b_and!265865 (and (=> t!294864 result!253760) b_and!265873)))

(assert (=> d!1067000 t!294866))

(declare-fun b_and!265875 () Bool)

(assert (= b_and!265867 (and (=> t!294866 result!253762) b_and!265875)))

(assert (=> d!1067000 t!294868))

(declare-fun b_and!265877 () Bool)

(assert (= b_and!265869 (and (=> t!294868 result!253764) b_and!265877)))

(assert (=> d!1067000 m!4128411))

(assert (=> b!3626880 d!1067000))

(declare-fun d!1067002 () Bool)

(assert (=> d!1067002 (= (size!29149 (_1!22176 lt!1254035)) (size!29151 (originalCharacters!6408 (_1!22176 lt!1254035))))))

(declare-fun Unit!54980 () Unit!54971)

(assert (=> d!1067002 (= (lemmaCharactersSize!741 (_1!22176 lt!1254035)) Unit!54980)))

(declare-fun bs!571472 () Bool)

(assert (= bs!571472 d!1067002))

(declare-fun m!4128419 () Bool)

(assert (=> bs!571472 m!4128419))

(assert (=> b!3626880 d!1067002))

(declare-fun d!1067004 () Bool)

(declare-fun lt!1254301 () Int)

(assert (=> d!1067004 (= lt!1254301 (size!29151 (list!14114 lt!1254036)))))

(declare-fun size!29152 (Conc!11655) Int)

(assert (=> d!1067004 (= lt!1254301 (size!29152 (c!627511 lt!1254036)))))

(assert (=> d!1067004 (= (size!29150 lt!1254036) lt!1254301)))

(declare-fun bs!571473 () Bool)

(assert (= bs!571473 d!1067004))

(assert (=> bs!571473 m!4127733))

(assert (=> bs!571473 m!4127733))

(declare-fun m!4128459 () Bool)

(assert (=> bs!571473 m!4128459))

(declare-fun m!4128461 () Bool)

(assert (=> bs!571473 m!4128461))

(assert (=> b!3626880 d!1067004))

(declare-fun b!3627458 () Bool)

(declare-fun e!2245344 () Bool)

(assert (=> b!3627458 (= e!2245344 true)))

(declare-fun d!1067006 () Bool)

(assert (=> d!1067006 e!2245344))

(assert (= d!1067006 b!3627458))

(declare-fun lambda!124215 () Int)

(declare-fun order!20913 () Int)

(declare-fun dynLambda!16558 (Int Int) Int)

(assert (=> b!3627458 (< (dynLambda!16550 order!20907 (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) (dynLambda!16558 order!20913 lambda!124215))))

(assert (=> b!3627458 (< (dynLambda!16552 order!20911 (toChars!7841 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) (dynLambda!16558 order!20913 lambda!124215))))

(assert (=> d!1067006 (= (dynLambda!16553 (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035)))) lt!1254036) (dynLambda!16553 (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035)))) (seqFromList!4243 (originalCharacters!6408 (_1!22176 lt!1254035)))))))

(declare-fun lt!1254310 () Unit!54971)

(declare-fun Forall2of!334 (Int BalanceConc!22924 BalanceConc!22924) Unit!54971)

(assert (=> d!1067006 (= lt!1254310 (Forall2of!334 lambda!124215 lt!1254036 (seqFromList!4243 (originalCharacters!6408 (_1!22176 lt!1254035)))))))

(assert (=> d!1067006 (= (list!14114 lt!1254036) (list!14114 (seqFromList!4243 (originalCharacters!6408 (_1!22176 lt!1254035)))))))

(assert (=> d!1067006 (= (lemmaEqSameImage!879 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))) lt!1254036 (seqFromList!4243 (originalCharacters!6408 (_1!22176 lt!1254035)))) lt!1254310)))

(declare-fun b_lambda!107351 () Bool)

(assert (=> (not b_lambda!107351) (not d!1067006)))

(assert (=> d!1067006 t!294862))

(declare-fun b_and!265879 () Bool)

(assert (= b_and!265871 (and (=> t!294862 result!253756) b_and!265879)))

(assert (=> d!1067006 t!294864))

(declare-fun b_and!265881 () Bool)

(assert (= b_and!265873 (and (=> t!294864 result!253760) b_and!265881)))

(assert (=> d!1067006 t!294866))

(declare-fun b_and!265883 () Bool)

(assert (= b_and!265875 (and (=> t!294866 result!253762) b_and!265883)))

(assert (=> d!1067006 t!294868))

(declare-fun b_and!265885 () Bool)

(assert (= b_and!265877 (and (=> t!294868 result!253764) b_and!265885)))

(declare-fun b_lambda!107353 () Bool)

(assert (=> (not b_lambda!107353) (not d!1067006)))

(declare-fun t!294870 () Bool)

(declare-fun tb!208297 () Bool)

(assert (=> (and b!3626900 (= (toValue!7982 (transformation!5694 rule!403)) (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294870) tb!208297))

(declare-fun result!253766 () Bool)

(assert (=> tb!208297 (= result!253766 (inv!21 (dynLambda!16553 (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035)))) (seqFromList!4243 (originalCharacters!6408 (_1!22176 lt!1254035))))))))

(declare-fun m!4128475 () Bool)

(assert (=> tb!208297 m!4128475))

(assert (=> d!1067006 t!294870))

(declare-fun b_and!265887 () Bool)

(assert (= b_and!265879 (and (=> t!294870 result!253766) b_and!265887)))

(declare-fun tb!208299 () Bool)

(declare-fun t!294872 () Bool)

(assert (=> (and b!3626876 (= (toValue!7982 (transformation!5694 anOtherTypeRule!33)) (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294872) tb!208299))

(declare-fun result!253768 () Bool)

(assert (= result!253768 result!253766))

(assert (=> d!1067006 t!294872))

(declare-fun b_and!265889 () Bool)

(assert (= b_and!265881 (and (=> t!294872 result!253768) b_and!265889)))

(declare-fun tb!208301 () Bool)

(declare-fun t!294874 () Bool)

(assert (=> (and b!3626879 (= (toValue!7982 (transformation!5694 (rule!8462 token!511))) (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294874) tb!208301))

(declare-fun result!253770 () Bool)

(assert (= result!253770 result!253766))

(assert (=> d!1067006 t!294874))

(declare-fun b_and!265891 () Bool)

(assert (= b_and!265883 (and (=> t!294874 result!253770) b_and!265891)))

(declare-fun t!294876 () Bool)

(declare-fun tb!208303 () Bool)

(assert (=> (and b!3626893 (= (toValue!7982 (transformation!5694 (h!43629 rules!3307))) (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294876) tb!208303))

(declare-fun result!253772 () Bool)

(assert (= result!253772 result!253766))

(assert (=> d!1067006 t!294876))

(declare-fun b_and!265893 () Bool)

(assert (= b_and!265885 (and (=> t!294876 result!253772) b_and!265893)))

(assert (=> d!1067006 m!4127679))

(declare-fun m!4128477 () Bool)

(assert (=> d!1067006 m!4128477))

(assert (=> d!1067006 m!4127733))

(assert (=> d!1067006 m!4127679))

(declare-fun m!4128479 () Bool)

(assert (=> d!1067006 m!4128479))

(assert (=> d!1067006 m!4128411))

(assert (=> d!1067006 m!4127679))

(declare-fun m!4128481 () Bool)

(assert (=> d!1067006 m!4128481))

(assert (=> b!3626880 d!1067006))

(declare-fun d!1067014 () Bool)

(declare-fun lt!1254311 () Bool)

(assert (=> d!1067014 (= lt!1254311 (select (content!5476 rules!3307) rule!403))))

(declare-fun e!2245346 () Bool)

(assert (=> d!1067014 (= lt!1254311 e!2245346)))

(declare-fun res!1468707 () Bool)

(assert (=> d!1067014 (=> (not res!1468707) (not e!2245346))))

(assert (=> d!1067014 (= res!1468707 ((_ is Cons!38209) rules!3307))))

(assert (=> d!1067014 (= (contains!7454 rules!3307 rule!403) lt!1254311)))

(declare-fun b!3627459 () Bool)

(declare-fun e!2245347 () Bool)

(assert (=> b!3627459 (= e!2245346 e!2245347)))

(declare-fun res!1468706 () Bool)

(assert (=> b!3627459 (=> res!1468706 e!2245347)))

(assert (=> b!3627459 (= res!1468706 (= (h!43629 rules!3307) rule!403))))

(declare-fun b!3627460 () Bool)

(assert (=> b!3627460 (= e!2245347 (contains!7454 (t!294788 rules!3307) rule!403))))

(assert (= (and d!1067014 res!1468707) b!3627459))

(assert (= (and b!3627459 (not res!1468706)) b!3627460))

(assert (=> d!1067014 m!4127849))

(declare-fun m!4128483 () Bool)

(assert (=> d!1067014 m!4128483))

(declare-fun m!4128485 () Bool)

(assert (=> b!3627460 m!4128485))

(assert (=> b!3626902 d!1067014))

(declare-fun d!1067016 () Bool)

(assert (=> d!1067016 (= (isEmpty!22592 suffix!1395) ((_ is Nil!38207) suffix!1395))))

(assert (=> b!3626877 d!1067016))

(declare-fun d!1067018 () Bool)

(assert (=> d!1067018 (= (inv!51613 (tag!6420 anOtherTypeRule!33)) (= (mod (str.len (value!182738 (tag!6420 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3626899 d!1067018))

(declare-fun d!1067020 () Bool)

(declare-fun res!1468708 () Bool)

(declare-fun e!2245348 () Bool)

(assert (=> d!1067020 (=> (not res!1468708) (not e!2245348))))

(assert (=> d!1067020 (= res!1468708 (semiInverseModEq!2417 (toChars!7841 (transformation!5694 anOtherTypeRule!33)) (toValue!7982 (transformation!5694 anOtherTypeRule!33))))))

(assert (=> d!1067020 (= (inv!51616 (transformation!5694 anOtherTypeRule!33)) e!2245348)))

(declare-fun b!3627461 () Bool)

(assert (=> b!3627461 (= e!2245348 (equivClasses!2316 (toChars!7841 (transformation!5694 anOtherTypeRule!33)) (toValue!7982 (transformation!5694 anOtherTypeRule!33))))))

(assert (= (and d!1067020 res!1468708) b!3627461))

(declare-fun m!4128487 () Bool)

(assert (=> d!1067020 m!4128487))

(declare-fun m!4128489 () Bool)

(assert (=> b!3627461 m!4128489))

(assert (=> b!3626899 d!1067020))

(declare-fun d!1067022 () Bool)

(assert (=> d!1067022 (not (matchR!5022 (regex!5694 rule!403) lt!1254016))))

(declare-fun lt!1254314 () Unit!54971)

(declare-fun choose!21302 (Regex!10453 List!38331 C!21092) Unit!54971)

(assert (=> d!1067022 (= lt!1254314 (choose!21302 (regex!5694 rule!403) lt!1254016 lt!1254018))))

(assert (=> d!1067022 (validRegex!4781 (regex!5694 rule!403))))

(assert (=> d!1067022 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!666 (regex!5694 rule!403) lt!1254016 lt!1254018) lt!1254314)))

(declare-fun bs!571474 () Bool)

(assert (= bs!571474 d!1067022))

(assert (=> bs!571474 m!4127757))

(declare-fun m!4128491 () Bool)

(assert (=> bs!571474 m!4128491))

(assert (=> bs!571474 m!4127915))

(assert (=> b!3626878 d!1067022))

(declare-fun d!1067024 () Bool)

(declare-fun lt!1254315 () Bool)

(assert (=> d!1067024 (= lt!1254315 (select (content!5475 (usedCharacters!908 (regex!5694 anOtherTypeRule!33))) lt!1254014))))

(declare-fun e!2245350 () Bool)

(assert (=> d!1067024 (= lt!1254315 e!2245350)))

(declare-fun res!1468710 () Bool)

(assert (=> d!1067024 (=> (not res!1468710) (not e!2245350))))

(assert (=> d!1067024 (= res!1468710 ((_ is Cons!38207) (usedCharacters!908 (regex!5694 anOtherTypeRule!33))))))

(assert (=> d!1067024 (= (contains!7453 (usedCharacters!908 (regex!5694 anOtherTypeRule!33)) lt!1254014) lt!1254315)))

(declare-fun b!3627462 () Bool)

(declare-fun e!2245349 () Bool)

(assert (=> b!3627462 (= e!2245350 e!2245349)))

(declare-fun res!1468709 () Bool)

(assert (=> b!3627462 (=> res!1468709 e!2245349)))

(assert (=> b!3627462 (= res!1468709 (= (h!43627 (usedCharacters!908 (regex!5694 anOtherTypeRule!33))) lt!1254014))))

(declare-fun b!3627463 () Bool)

(assert (=> b!3627463 (= e!2245349 (contains!7453 (t!294786 (usedCharacters!908 (regex!5694 anOtherTypeRule!33))) lt!1254014))))

(assert (= (and d!1067024 res!1468710) b!3627462))

(assert (= (and b!3627462 (not res!1468709)) b!3627463))

(assert (=> d!1067024 m!4127773))

(declare-fun m!4128493 () Bool)

(assert (=> d!1067024 m!4128493))

(declare-fun m!4128495 () Bool)

(assert (=> d!1067024 m!4128495))

(declare-fun m!4128497 () Bool)

(assert (=> b!3627463 m!4128497))

(assert (=> b!3626898 d!1067024))

(declare-fun b!3627480 () Bool)

(declare-fun e!2245360 () List!38331)

(declare-fun e!2245359 () List!38331)

(assert (=> b!3627480 (= e!2245360 e!2245359)))

(declare-fun c!627615 () Bool)

(assert (=> b!3627480 (= c!627615 ((_ is Union!10453) (regex!5694 anOtherTypeRule!33)))))

(declare-fun b!3627481 () Bool)

(declare-fun call!262375 () List!38331)

(assert (=> b!3627481 (= e!2245359 call!262375)))

(declare-fun bm!262370 () Bool)

(declare-fun c!627618 () Bool)

(declare-fun call!262376 () List!38331)

(assert (=> bm!262370 (= call!262376 (usedCharacters!908 (ite c!627618 (reg!10782 (regex!5694 anOtherTypeRule!33)) (ite c!627615 (regOne!21419 (regex!5694 anOtherTypeRule!33)) (regTwo!21418 (regex!5694 anOtherTypeRule!33))))))))

(declare-fun b!3627482 () Bool)

(declare-fun e!2245361 () List!38331)

(assert (=> b!3627482 (= e!2245361 (Cons!38207 (c!627510 (regex!5694 anOtherTypeRule!33)) Nil!38207))))

(declare-fun b!3627483 () Bool)

(declare-fun e!2245362 () List!38331)

(assert (=> b!3627483 (= e!2245362 Nil!38207)))

(declare-fun bm!262371 () Bool)

(declare-fun call!262378 () List!38331)

(assert (=> bm!262371 (= call!262378 call!262376)))

(declare-fun bm!262372 () Bool)

(declare-fun call!262377 () List!38331)

(assert (=> bm!262372 (= call!262375 (++!9510 (ite c!627615 call!262378 call!262377) (ite c!627615 call!262377 call!262378)))))

(declare-fun b!3627484 () Bool)

(assert (=> b!3627484 (= e!2245359 call!262375)))

(declare-fun b!3627485 () Bool)

(assert (=> b!3627485 (= c!627618 ((_ is Star!10453) (regex!5694 anOtherTypeRule!33)))))

(assert (=> b!3627485 (= e!2245361 e!2245360)))

(declare-fun b!3627487 () Bool)

(assert (=> b!3627487 (= e!2245360 call!262376)))

(declare-fun bm!262373 () Bool)

(assert (=> bm!262373 (= call!262377 (usedCharacters!908 (ite c!627615 (regTwo!21419 (regex!5694 anOtherTypeRule!33)) (regOne!21418 (regex!5694 anOtherTypeRule!33)))))))

(declare-fun d!1067026 () Bool)

(declare-fun c!627617 () Bool)

(assert (=> d!1067026 (= c!627617 (or ((_ is EmptyExpr!10453) (regex!5694 anOtherTypeRule!33)) ((_ is EmptyLang!10453) (regex!5694 anOtherTypeRule!33))))))

(assert (=> d!1067026 (= (usedCharacters!908 (regex!5694 anOtherTypeRule!33)) e!2245362)))

(declare-fun b!3627486 () Bool)

(assert (=> b!3627486 (= e!2245362 e!2245361)))

(declare-fun c!627616 () Bool)

(assert (=> b!3627486 (= c!627616 ((_ is ElementMatch!10453) (regex!5694 anOtherTypeRule!33)))))

(assert (= (and d!1067026 c!627617) b!3627483))

(assert (= (and d!1067026 (not c!627617)) b!3627486))

(assert (= (and b!3627486 c!627616) b!3627482))

(assert (= (and b!3627486 (not c!627616)) b!3627485))

(assert (= (and b!3627485 c!627618) b!3627487))

(assert (= (and b!3627485 (not c!627618)) b!3627480))

(assert (= (and b!3627480 c!627615) b!3627481))

(assert (= (and b!3627480 (not c!627615)) b!3627484))

(assert (= (or b!3627481 b!3627484) bm!262371))

(assert (= (or b!3627481 b!3627484) bm!262373))

(assert (= (or b!3627481 b!3627484) bm!262372))

(assert (= (or b!3627487 bm!262371) bm!262370))

(declare-fun m!4128501 () Bool)

(assert (=> bm!262370 m!4128501))

(declare-fun m!4128503 () Bool)

(assert (=> bm!262372 m!4128503))

(declare-fun m!4128505 () Bool)

(assert (=> bm!262373 m!4128505))

(assert (=> b!3626898 d!1067026))

(declare-fun b!3627526 () Bool)

(declare-fun e!2245379 () Bool)

(declare-fun inv!16 (TokenValue!5924) Bool)

(assert (=> b!3627526 (= e!2245379 (inv!16 (value!182739 token!511)))))

(declare-fun b!3627527 () Bool)

(declare-fun e!2245381 () Bool)

(declare-fun inv!17 (TokenValue!5924) Bool)

(assert (=> b!3627527 (= e!2245381 (inv!17 (value!182739 token!511)))))

(declare-fun b!3627528 () Bool)

(declare-fun res!1468713 () Bool)

(declare-fun e!2245380 () Bool)

(assert (=> b!3627528 (=> res!1468713 e!2245380)))

(assert (=> b!3627528 (= res!1468713 (not ((_ is IntegerValue!17774) (value!182739 token!511))))))

(assert (=> b!3627528 (= e!2245381 e!2245380)))

(declare-fun b!3627529 () Bool)

(assert (=> b!3627529 (= e!2245379 e!2245381)))

(declare-fun c!627623 () Bool)

(assert (=> b!3627529 (= c!627623 ((_ is IntegerValue!17773) (value!182739 token!511)))))

(declare-fun b!3627530 () Bool)

(declare-fun inv!15 (TokenValue!5924) Bool)

(assert (=> b!3627530 (= e!2245380 (inv!15 (value!182739 token!511)))))

(declare-fun d!1067030 () Bool)

(declare-fun c!627624 () Bool)

(assert (=> d!1067030 (= c!627624 ((_ is IntegerValue!17772) (value!182739 token!511)))))

(assert (=> d!1067030 (= (inv!21 (value!182739 token!511)) e!2245379)))

(assert (= (and d!1067030 c!627624) b!3627526))

(assert (= (and d!1067030 (not c!627624)) b!3627529))

(assert (= (and b!3627529 c!627623) b!3627527))

(assert (= (and b!3627529 (not c!627623)) b!3627528))

(assert (= (and b!3627528 (not res!1468713)) b!3627530))

(declare-fun m!4128511 () Bool)

(assert (=> b!3627526 m!4128511))

(declare-fun m!4128513 () Bool)

(assert (=> b!3627527 m!4128513))

(declare-fun m!4128515 () Bool)

(assert (=> b!3627530 m!4128515))

(assert (=> b!3626896 d!1067030))

(declare-fun d!1067034 () Bool)

(assert (=> d!1067034 (= (isDefined!6251 lt!1254017) (not (isEmpty!22596 lt!1254017)))))

(declare-fun bs!571478 () Bool)

(assert (= bs!571478 d!1067034))

(declare-fun m!4128517 () Bool)

(assert (=> bs!571478 m!4128517))

(assert (=> b!3626895 d!1067034))

(declare-fun b!3627535 () Bool)

(declare-fun e!2245390 () Option!8018)

(declare-fun lt!1254326 () Option!8018)

(declare-fun lt!1254323 () Option!8018)

(assert (=> b!3627535 (= e!2245390 (ite (and ((_ is None!8017) lt!1254326) ((_ is None!8017) lt!1254323)) None!8017 (ite ((_ is None!8017) lt!1254323) lt!1254326 (ite ((_ is None!8017) lt!1254326) lt!1254323 (ite (>= (size!29149 (_1!22176 (v!37799 lt!1254326))) (size!29149 (_1!22176 (v!37799 lt!1254323)))) lt!1254326 lt!1254323)))))))

(declare-fun call!262379 () Option!8018)

(assert (=> b!3627535 (= lt!1254326 call!262379)))

(assert (=> b!3627535 (= lt!1254323 (maxPrefix!2817 thiss!23823 (t!294788 rules!3307) lt!1254016))))

(declare-fun b!3627536 () Bool)

(declare-fun res!1468719 () Bool)

(declare-fun e!2245388 () Bool)

(assert (=> b!3627536 (=> (not res!1468719) (not e!2245388))))

(declare-fun lt!1254324 () Option!8018)

(assert (=> b!3627536 (= res!1468719 (matchR!5022 (regex!5694 (rule!8462 (_1!22176 (get!12475 lt!1254324)))) (list!14114 (charsOf!3708 (_1!22176 (get!12475 lt!1254324))))))))

(declare-fun b!3627537 () Bool)

(declare-fun res!1468716 () Bool)

(assert (=> b!3627537 (=> (not res!1468716) (not e!2245388))))

(assert (=> b!3627537 (= res!1468716 (= (++!9510 (list!14114 (charsOf!3708 (_1!22176 (get!12475 lt!1254324)))) (_2!22176 (get!12475 lt!1254324))) lt!1254016))))

(declare-fun bm!262374 () Bool)

(assert (=> bm!262374 (= call!262379 (maxPrefixOneRule!1957 thiss!23823 (h!43629 rules!3307) lt!1254016))))

(declare-fun b!3627538 () Bool)

(assert (=> b!3627538 (= e!2245390 call!262379)))

(declare-fun b!3627539 () Bool)

(declare-fun res!1468718 () Bool)

(assert (=> b!3627539 (=> (not res!1468718) (not e!2245388))))

(assert (=> b!3627539 (= res!1468718 (< (size!29151 (_2!22176 (get!12475 lt!1254324))) (size!29151 lt!1254016)))))

(declare-fun b!3627540 () Bool)

(declare-fun e!2245389 () Bool)

(assert (=> b!3627540 (= e!2245389 e!2245388)))

(declare-fun res!1468720 () Bool)

(assert (=> b!3627540 (=> (not res!1468720) (not e!2245388))))

(assert (=> b!3627540 (= res!1468720 (isDefined!6251 lt!1254324))))

(declare-fun b!3627542 () Bool)

(declare-fun res!1468715 () Bool)

(assert (=> b!3627542 (=> (not res!1468715) (not e!2245388))))

(assert (=> b!3627542 (= res!1468715 (= (list!14114 (charsOf!3708 (_1!22176 (get!12475 lt!1254324)))) (originalCharacters!6408 (_1!22176 (get!12475 lt!1254324)))))))

(declare-fun b!3627543 () Bool)

(assert (=> b!3627543 (= e!2245388 (contains!7454 rules!3307 (rule!8462 (_1!22176 (get!12475 lt!1254324)))))))

(declare-fun d!1067036 () Bool)

(assert (=> d!1067036 e!2245389))

(declare-fun res!1468714 () Bool)

(assert (=> d!1067036 (=> res!1468714 e!2245389)))

(assert (=> d!1067036 (= res!1468714 (isEmpty!22596 lt!1254324))))

(assert (=> d!1067036 (= lt!1254324 e!2245390)))

(declare-fun c!627625 () Bool)

(assert (=> d!1067036 (= c!627625 (and ((_ is Cons!38209) rules!3307) ((_ is Nil!38209) (t!294788 rules!3307))))))

(declare-fun lt!1254322 () Unit!54971)

(declare-fun lt!1254325 () Unit!54971)

(assert (=> d!1067036 (= lt!1254322 lt!1254325)))

(assert (=> d!1067036 (isPrefix!3057 lt!1254016 lt!1254016)))

(assert (=> d!1067036 (= lt!1254325 (lemmaIsPrefixRefl!1938 lt!1254016 lt!1254016))))

(assert (=> d!1067036 (rulesValidInductive!2003 thiss!23823 rules!3307)))

(assert (=> d!1067036 (= (maxPrefix!2817 thiss!23823 rules!3307 lt!1254016) lt!1254324)))

(declare-fun b!3627541 () Bool)

(declare-fun res!1468717 () Bool)

(assert (=> b!3627541 (=> (not res!1468717) (not e!2245388))))

(assert (=> b!3627541 (= res!1468717 (= (value!182739 (_1!22176 (get!12475 lt!1254324))) (apply!9196 (transformation!5694 (rule!8462 (_1!22176 (get!12475 lt!1254324)))) (seqFromList!4243 (originalCharacters!6408 (_1!22176 (get!12475 lt!1254324)))))))))

(assert (= (and d!1067036 c!627625) b!3627538))

(assert (= (and d!1067036 (not c!627625)) b!3627535))

(assert (= (or b!3627538 b!3627535) bm!262374))

(assert (= (and d!1067036 (not res!1468714)) b!3627540))

(assert (= (and b!3627540 res!1468720) b!3627542))

(assert (= (and b!3627542 res!1468715) b!3627539))

(assert (= (and b!3627539 res!1468718) b!3627537))

(assert (= (and b!3627537 res!1468716) b!3627541))

(assert (= (and b!3627541 res!1468717) b!3627536))

(assert (= (and b!3627536 res!1468719) b!3627543))

(declare-fun m!4128521 () Bool)

(assert (=> b!3627542 m!4128521))

(declare-fun m!4128525 () Bool)

(assert (=> b!3627542 m!4128525))

(assert (=> b!3627542 m!4128525))

(declare-fun m!4128527 () Bool)

(assert (=> b!3627542 m!4128527))

(assert (=> b!3627539 m!4128521))

(declare-fun m!4128529 () Bool)

(assert (=> b!3627539 m!4128529))

(assert (=> b!3627539 m!4127983))

(declare-fun m!4128531 () Bool)

(assert (=> bm!262374 m!4128531))

(declare-fun m!4128533 () Bool)

(assert (=> b!3627540 m!4128533))

(declare-fun m!4128535 () Bool)

(assert (=> d!1067036 m!4128535))

(declare-fun m!4128537 () Bool)

(assert (=> d!1067036 m!4128537))

(declare-fun m!4128539 () Bool)

(assert (=> d!1067036 m!4128539))

(assert (=> d!1067036 m!4128325))

(assert (=> b!3627536 m!4128521))

(assert (=> b!3627536 m!4128525))

(assert (=> b!3627536 m!4128525))

(assert (=> b!3627536 m!4128527))

(assert (=> b!3627536 m!4128527))

(declare-fun m!4128541 () Bool)

(assert (=> b!3627536 m!4128541))

(assert (=> b!3627543 m!4128521))

(declare-fun m!4128543 () Bool)

(assert (=> b!3627543 m!4128543))

(assert (=> b!3627541 m!4128521))

(declare-fun m!4128545 () Bool)

(assert (=> b!3627541 m!4128545))

(assert (=> b!3627541 m!4128545))

(declare-fun m!4128547 () Bool)

(assert (=> b!3627541 m!4128547))

(declare-fun m!4128549 () Bool)

(assert (=> b!3627535 m!4128549))

(assert (=> b!3627537 m!4128521))

(assert (=> b!3627537 m!4128525))

(assert (=> b!3627537 m!4128525))

(assert (=> b!3627537 m!4128527))

(assert (=> b!3627537 m!4128527))

(declare-fun m!4128551 () Bool)

(assert (=> b!3627537 m!4128551))

(assert (=> b!3626895 d!1067036))

(declare-fun d!1067038 () Bool)

(assert (=> d!1067038 (= (list!14114 (charsOf!3708 token!511)) (list!14117 (c!627511 (charsOf!3708 token!511))))))

(declare-fun bs!571479 () Bool)

(assert (= bs!571479 d!1067038))

(declare-fun m!4128553 () Bool)

(assert (=> bs!571479 m!4128553))

(assert (=> b!3626895 d!1067038))

(declare-fun d!1067040 () Bool)

(declare-fun lt!1254327 () BalanceConc!22924)

(assert (=> d!1067040 (= (list!14114 lt!1254327) (originalCharacters!6408 token!511))))

(assert (=> d!1067040 (= lt!1254327 (dynLambda!16549 (toChars!7841 (transformation!5694 (rule!8462 token!511))) (value!182739 token!511)))))

(assert (=> d!1067040 (= (charsOf!3708 token!511) lt!1254327)))

(declare-fun b_lambda!107359 () Bool)

(assert (=> (not b_lambda!107359) (not d!1067040)))

(assert (=> d!1067040 t!294814))

(declare-fun b_and!265899 () Bool)

(assert (= b_and!265855 (and (=> t!294814 result!253706) b_and!265899)))

(assert (=> d!1067040 t!294816))

(declare-fun b_and!265901 () Bool)

(assert (= b_and!265857 (and (=> t!294816 result!253708) b_and!265901)))

(assert (=> d!1067040 t!294818))

(declare-fun b_and!265903 () Bool)

(assert (= b_and!265859 (and (=> t!294818 result!253710) b_and!265903)))

(assert (=> d!1067040 t!294820))

(declare-fun b_and!265905 () Bool)

(assert (= b_and!265861 (and (=> t!294820 result!253712) b_and!265905)))

(declare-fun m!4128555 () Bool)

(assert (=> d!1067040 m!4128555))

(assert (=> d!1067040 m!4128363))

(assert (=> b!3626895 d!1067040))

(declare-fun b!3627555 () Bool)

(declare-fun e!2245403 () Bool)

(declare-fun e!2245400 () Bool)

(assert (=> b!3627555 (= e!2245403 e!2245400)))

(declare-fun c!627626 () Bool)

(assert (=> b!3627555 (= c!627626 ((_ is EmptyLang!10453) (regex!5694 lt!1254037)))))

(declare-fun b!3627556 () Bool)

(declare-fun lt!1254328 () Bool)

(assert (=> b!3627556 (= e!2245400 (not lt!1254328))))

(declare-fun b!3627557 () Bool)

(declare-fun e!2245397 () Bool)

(declare-fun e!2245399 () Bool)

(assert (=> b!3627557 (= e!2245397 e!2245399)))

(declare-fun res!1468728 () Bool)

(assert (=> b!3627557 (=> res!1468728 e!2245399)))

(declare-fun call!262380 () Bool)

(assert (=> b!3627557 (= res!1468728 call!262380)))

(declare-fun b!3627558 () Bool)

(declare-fun res!1468723 () Bool)

(declare-fun e!2245402 () Bool)

(assert (=> b!3627558 (=> (not res!1468723) (not e!2245402))))

(assert (=> b!3627558 (= res!1468723 (not call!262380))))

(declare-fun b!3627559 () Bool)

(declare-fun res!1468721 () Bool)

(declare-fun e!2245398 () Bool)

(assert (=> b!3627559 (=> res!1468721 e!2245398)))

(assert (=> b!3627559 (= res!1468721 e!2245402)))

(declare-fun res!1468725 () Bool)

(assert (=> b!3627559 (=> (not res!1468725) (not e!2245402))))

(assert (=> b!3627559 (= res!1468725 lt!1254328)))

(declare-fun bm!262375 () Bool)

(assert (=> bm!262375 (= call!262380 (isEmpty!22592 (list!14114 (charsOf!3708 (_1!22176 lt!1254035)))))))

(declare-fun b!3627561 () Bool)

(declare-fun e!2245401 () Bool)

(assert (=> b!3627561 (= e!2245401 (nullable!3619 (regex!5694 lt!1254037)))))

(declare-fun b!3627562 () Bool)

(declare-fun res!1468724 () Bool)

(assert (=> b!3627562 (=> (not res!1468724) (not e!2245402))))

(assert (=> b!3627562 (= res!1468724 (isEmpty!22592 (tail!5617 (list!14114 (charsOf!3708 (_1!22176 lt!1254035))))))))

(declare-fun b!3627563 () Bool)

(assert (=> b!3627563 (= e!2245402 (= (head!7672 (list!14114 (charsOf!3708 (_1!22176 lt!1254035)))) (c!627510 (regex!5694 lt!1254037))))))

(declare-fun b!3627564 () Bool)

(declare-fun res!1468722 () Bool)

(assert (=> b!3627564 (=> res!1468722 e!2245398)))

(assert (=> b!3627564 (= res!1468722 (not ((_ is ElementMatch!10453) (regex!5694 lt!1254037))))))

(assert (=> b!3627564 (= e!2245400 e!2245398)))

(declare-fun b!3627565 () Bool)

(assert (=> b!3627565 (= e!2245399 (not (= (head!7672 (list!14114 (charsOf!3708 (_1!22176 lt!1254035)))) (c!627510 (regex!5694 lt!1254037)))))))

(declare-fun b!3627566 () Bool)

(assert (=> b!3627566 (= e!2245398 e!2245397)))

(declare-fun res!1468727 () Bool)

(assert (=> b!3627566 (=> (not res!1468727) (not e!2245397))))

(assert (=> b!3627566 (= res!1468727 (not lt!1254328))))

(declare-fun b!3627567 () Bool)

(declare-fun res!1468726 () Bool)

(assert (=> b!3627567 (=> res!1468726 e!2245399)))

(assert (=> b!3627567 (= res!1468726 (not (isEmpty!22592 (tail!5617 (list!14114 (charsOf!3708 (_1!22176 lt!1254035)))))))))

(declare-fun b!3627568 () Bool)

(assert (=> b!3627568 (= e!2245401 (matchR!5022 (derivativeStep!3168 (regex!5694 lt!1254037) (head!7672 (list!14114 (charsOf!3708 (_1!22176 lt!1254035))))) (tail!5617 (list!14114 (charsOf!3708 (_1!22176 lt!1254035))))))))

(declare-fun b!3627560 () Bool)

(assert (=> b!3627560 (= e!2245403 (= lt!1254328 call!262380))))

(declare-fun d!1067042 () Bool)

(assert (=> d!1067042 e!2245403))

(declare-fun c!627627 () Bool)

(assert (=> d!1067042 (= c!627627 ((_ is EmptyExpr!10453) (regex!5694 lt!1254037)))))

(assert (=> d!1067042 (= lt!1254328 e!2245401)))

(declare-fun c!627628 () Bool)

(assert (=> d!1067042 (= c!627628 (isEmpty!22592 (list!14114 (charsOf!3708 (_1!22176 lt!1254035)))))))

(assert (=> d!1067042 (validRegex!4781 (regex!5694 lt!1254037))))

(assert (=> d!1067042 (= (matchR!5022 (regex!5694 lt!1254037) (list!14114 (charsOf!3708 (_1!22176 lt!1254035)))) lt!1254328)))

(assert (= (and d!1067042 c!627628) b!3627561))

(assert (= (and d!1067042 (not c!627628)) b!3627568))

(assert (= (and d!1067042 c!627627) b!3627560))

(assert (= (and d!1067042 (not c!627627)) b!3627555))

(assert (= (and b!3627555 c!627626) b!3627556))

(assert (= (and b!3627555 (not c!627626)) b!3627564))

(assert (= (and b!3627564 (not res!1468722)) b!3627559))

(assert (= (and b!3627559 res!1468725) b!3627558))

(assert (= (and b!3627558 res!1468723) b!3627562))

(assert (= (and b!3627562 res!1468724) b!3627563))

(assert (= (and b!3627559 (not res!1468721)) b!3627566))

(assert (= (and b!3627566 res!1468727) b!3627557))

(assert (= (and b!3627557 (not res!1468728)) b!3627567))

(assert (= (and b!3627567 (not res!1468726)) b!3627565))

(assert (= (or b!3627560 b!3627557 b!3627558) bm!262375))

(assert (=> b!3627562 m!4127713))

(declare-fun m!4128557 () Bool)

(assert (=> b!3627562 m!4128557))

(assert (=> b!3627562 m!4128557))

(declare-fun m!4128559 () Bool)

(assert (=> b!3627562 m!4128559))

(declare-fun m!4128561 () Bool)

(assert (=> b!3627561 m!4128561))

(assert (=> bm!262375 m!4127713))

(declare-fun m!4128563 () Bool)

(assert (=> bm!262375 m!4128563))

(assert (=> b!3627568 m!4127713))

(declare-fun m!4128565 () Bool)

(assert (=> b!3627568 m!4128565))

(assert (=> b!3627568 m!4128565))

(declare-fun m!4128567 () Bool)

(assert (=> b!3627568 m!4128567))

(assert (=> b!3627568 m!4127713))

(assert (=> b!3627568 m!4128557))

(assert (=> b!3627568 m!4128567))

(assert (=> b!3627568 m!4128557))

(declare-fun m!4128569 () Bool)

(assert (=> b!3627568 m!4128569))

(assert (=> d!1067042 m!4127713))

(assert (=> d!1067042 m!4128563))

(declare-fun m!4128571 () Bool)

(assert (=> d!1067042 m!4128571))

(assert (=> b!3627565 m!4127713))

(assert (=> b!3627565 m!4128565))

(assert (=> b!3627563 m!4127713))

(assert (=> b!3627563 m!4128565))

(assert (=> b!3627567 m!4127713))

(assert (=> b!3627567 m!4128557))

(assert (=> b!3627567 m!4128557))

(assert (=> b!3627567 m!4128559))

(assert (=> b!3626894 d!1067042))

(declare-fun d!1067044 () Bool)

(assert (=> d!1067044 (= (list!14114 (charsOf!3708 (_1!22176 lt!1254035))) (list!14117 (c!627511 (charsOf!3708 (_1!22176 lt!1254035)))))))

(declare-fun bs!571480 () Bool)

(assert (= bs!571480 d!1067044))

(declare-fun m!4128573 () Bool)

(assert (=> bs!571480 m!4128573))

(assert (=> b!3626894 d!1067044))

(assert (=> b!3626894 d!1066960))

(declare-fun d!1067046 () Bool)

(assert (=> d!1067046 (= (get!12476 lt!1254022) (v!37800 lt!1254022))))

(assert (=> b!3626894 d!1067046))

(declare-fun d!1067048 () Bool)

(declare-fun lt!1254331 () Int)

(assert (=> d!1067048 (>= lt!1254331 0)))

(declare-fun e!2245406 () Int)

(assert (=> d!1067048 (= lt!1254331 e!2245406)))

(declare-fun c!627631 () Bool)

(assert (=> d!1067048 (= c!627631 ((_ is Nil!38207) lt!1254040))))

(assert (=> d!1067048 (= (size!29151 lt!1254040) lt!1254331)))

(declare-fun b!3627573 () Bool)

(assert (=> b!3627573 (= e!2245406 0)))

(declare-fun b!3627574 () Bool)

(assert (=> b!3627574 (= e!2245406 (+ 1 (size!29151 (t!294786 lt!1254040))))))

(assert (= (and d!1067048 c!627631) b!3627573))

(assert (= (and d!1067048 (not c!627631)) b!3627574))

(declare-fun m!4128575 () Bool)

(assert (=> b!3627574 m!4128575))

(assert (=> b!3626889 d!1067048))

(declare-fun b!3627593 () Bool)

(declare-fun e!2245418 () Option!8018)

(assert (=> b!3627593 (= e!2245418 None!8017)))

(declare-fun b!3627594 () Bool)

(declare-fun e!2245416 () Bool)

(declare-fun lt!1254345 () Option!8018)

(assert (=> b!3627594 (= e!2245416 (= (size!29149 (_1!22176 (get!12475 lt!1254345))) (size!29151 (originalCharacters!6408 (_1!22176 (get!12475 lt!1254345))))))))

(declare-fun b!3627595 () Bool)

(declare-datatypes ((tuple2!38092 0))(
  ( (tuple2!38093 (_1!22180 List!38331) (_2!22180 List!38331)) )
))
(declare-fun lt!1254343 () tuple2!38092)

(assert (=> b!3627595 (= e!2245418 (Some!8017 (tuple2!38085 (Token!10755 (apply!9196 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))) (seqFromList!4243 (_1!22180 lt!1254343))) (rule!8462 (_1!22176 lt!1254035)) (size!29150 (seqFromList!4243 (_1!22180 lt!1254343))) (_1!22180 lt!1254343)) (_2!22180 lt!1254343))))))

(declare-fun lt!1254346 () Unit!54971)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!996 (Regex!10453 List!38331) Unit!54971)

(assert (=> b!3627595 (= lt!1254346 (longestMatchIsAcceptedByMatchOrIsEmpty!996 (regex!5694 (rule!8462 (_1!22176 lt!1254035))) lt!1254026))))

(declare-fun res!1468747 () Bool)

(declare-fun findLongestMatchInner!1023 (Regex!10453 List!38331 Int List!38331 List!38331 Int) tuple2!38092)

(assert (=> b!3627595 (= res!1468747 (isEmpty!22592 (_1!22180 (findLongestMatchInner!1023 (regex!5694 (rule!8462 (_1!22176 lt!1254035))) Nil!38207 (size!29151 Nil!38207) lt!1254026 lt!1254026 (size!29151 lt!1254026)))))))

(declare-fun e!2245417 () Bool)

(assert (=> b!3627595 (=> res!1468747 e!2245417)))

(assert (=> b!3627595 e!2245417))

(declare-fun lt!1254344 () Unit!54971)

(assert (=> b!3627595 (= lt!1254344 lt!1254346)))

(declare-fun lt!1254342 () Unit!54971)

(assert (=> b!3627595 (= lt!1254342 (lemmaSemiInverse!1445 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))) (seqFromList!4243 (_1!22180 lt!1254343))))))

(declare-fun b!3627596 () Bool)

(declare-fun res!1468743 () Bool)

(assert (=> b!3627596 (=> (not res!1468743) (not e!2245416))))

(assert (=> b!3627596 (= res!1468743 (= (++!9510 (list!14114 (charsOf!3708 (_1!22176 (get!12475 lt!1254345)))) (_2!22176 (get!12475 lt!1254345))) lt!1254026))))

(declare-fun d!1067050 () Bool)

(declare-fun e!2245415 () Bool)

(assert (=> d!1067050 e!2245415))

(declare-fun res!1468745 () Bool)

(assert (=> d!1067050 (=> res!1468745 e!2245415)))

(assert (=> d!1067050 (= res!1468745 (isEmpty!22596 lt!1254345))))

(assert (=> d!1067050 (= lt!1254345 e!2245418)))

(declare-fun c!627634 () Bool)

(assert (=> d!1067050 (= c!627634 (isEmpty!22592 (_1!22180 lt!1254343)))))

(declare-fun findLongestMatch!938 (Regex!10453 List!38331) tuple2!38092)

(assert (=> d!1067050 (= lt!1254343 (findLongestMatch!938 (regex!5694 (rule!8462 (_1!22176 lt!1254035))) lt!1254026))))

(assert (=> d!1067050 (ruleValid!1959 thiss!23823 (rule!8462 (_1!22176 lt!1254035)))))

(assert (=> d!1067050 (= (maxPrefixOneRule!1957 thiss!23823 (rule!8462 (_1!22176 lt!1254035)) lt!1254026) lt!1254345)))

(declare-fun b!3627597 () Bool)

(declare-fun res!1468746 () Bool)

(assert (=> b!3627597 (=> (not res!1468746) (not e!2245416))))

(assert (=> b!3627597 (= res!1468746 (= (rule!8462 (_1!22176 (get!12475 lt!1254345))) (rule!8462 (_1!22176 lt!1254035))))))

(declare-fun b!3627598 () Bool)

(declare-fun res!1468749 () Bool)

(assert (=> b!3627598 (=> (not res!1468749) (not e!2245416))))

(assert (=> b!3627598 (= res!1468749 (< (size!29151 (_2!22176 (get!12475 lt!1254345))) (size!29151 lt!1254026)))))

(declare-fun b!3627599 () Bool)

(assert (=> b!3627599 (= e!2245415 e!2245416)))

(declare-fun res!1468748 () Bool)

(assert (=> b!3627599 (=> (not res!1468748) (not e!2245416))))

(assert (=> b!3627599 (= res!1468748 (matchR!5022 (regex!5694 (rule!8462 (_1!22176 lt!1254035))) (list!14114 (charsOf!3708 (_1!22176 (get!12475 lt!1254345))))))))

(declare-fun b!3627600 () Bool)

(assert (=> b!3627600 (= e!2245417 (matchR!5022 (regex!5694 (rule!8462 (_1!22176 lt!1254035))) (_1!22180 (findLongestMatchInner!1023 (regex!5694 (rule!8462 (_1!22176 lt!1254035))) Nil!38207 (size!29151 Nil!38207) lt!1254026 lt!1254026 (size!29151 lt!1254026)))))))

(declare-fun b!3627601 () Bool)

(declare-fun res!1468744 () Bool)

(assert (=> b!3627601 (=> (not res!1468744) (not e!2245416))))

(assert (=> b!3627601 (= res!1468744 (= (value!182739 (_1!22176 (get!12475 lt!1254345))) (apply!9196 (transformation!5694 (rule!8462 (_1!22176 (get!12475 lt!1254345)))) (seqFromList!4243 (originalCharacters!6408 (_1!22176 (get!12475 lt!1254345)))))))))

(assert (= (and d!1067050 c!627634) b!3627593))

(assert (= (and d!1067050 (not c!627634)) b!3627595))

(assert (= (and b!3627595 (not res!1468747)) b!3627600))

(assert (= (and d!1067050 (not res!1468745)) b!3627599))

(assert (= (and b!3627599 res!1468748) b!3627596))

(assert (= (and b!3627596 res!1468743) b!3627598))

(assert (= (and b!3627598 res!1468749) b!3627597))

(assert (= (and b!3627597 res!1468746) b!3627601))

(assert (= (and b!3627601 res!1468744) b!3627594))

(declare-fun m!4128577 () Bool)

(assert (=> b!3627595 m!4128577))

(declare-fun m!4128579 () Bool)

(assert (=> b!3627595 m!4128579))

(declare-fun m!4128581 () Bool)

(assert (=> b!3627595 m!4128581))

(declare-fun m!4128583 () Bool)

(assert (=> b!3627595 m!4128583))

(assert (=> b!3627595 m!4128581))

(declare-fun m!4128585 () Bool)

(assert (=> b!3627595 m!4128585))

(assert (=> b!3627595 m!4127981))

(declare-fun m!4128587 () Bool)

(assert (=> b!3627595 m!4128587))

(assert (=> b!3627595 m!4128581))

(assert (=> b!3627595 m!4128587))

(assert (=> b!3627595 m!4127981))

(declare-fun m!4128589 () Bool)

(assert (=> b!3627595 m!4128589))

(assert (=> b!3627595 m!4128581))

(declare-fun m!4128591 () Bool)

(assert (=> b!3627595 m!4128591))

(declare-fun m!4128593 () Bool)

(assert (=> b!3627594 m!4128593))

(declare-fun m!4128595 () Bool)

(assert (=> b!3627594 m!4128595))

(assert (=> b!3627596 m!4128593))

(declare-fun m!4128597 () Bool)

(assert (=> b!3627596 m!4128597))

(assert (=> b!3627596 m!4128597))

(declare-fun m!4128599 () Bool)

(assert (=> b!3627596 m!4128599))

(assert (=> b!3627596 m!4128599))

(declare-fun m!4128601 () Bool)

(assert (=> b!3627596 m!4128601))

(assert (=> b!3627601 m!4128593))

(declare-fun m!4128603 () Bool)

(assert (=> b!3627601 m!4128603))

(assert (=> b!3627601 m!4128603))

(declare-fun m!4128605 () Bool)

(assert (=> b!3627601 m!4128605))

(assert (=> b!3627597 m!4128593))

(assert (=> b!3627599 m!4128593))

(assert (=> b!3627599 m!4128597))

(assert (=> b!3627599 m!4128597))

(assert (=> b!3627599 m!4128599))

(assert (=> b!3627599 m!4128599))

(declare-fun m!4128607 () Bool)

(assert (=> b!3627599 m!4128607))

(assert (=> b!3627600 m!4128587))

(assert (=> b!3627600 m!4127981))

(assert (=> b!3627600 m!4128587))

(assert (=> b!3627600 m!4127981))

(assert (=> b!3627600 m!4128589))

(declare-fun m!4128609 () Bool)

(assert (=> b!3627600 m!4128609))

(declare-fun m!4128611 () Bool)

(assert (=> d!1067050 m!4128611))

(declare-fun m!4128613 () Bool)

(assert (=> d!1067050 m!4128613))

(declare-fun m!4128615 () Bool)

(assert (=> d!1067050 m!4128615))

(declare-fun m!4128617 () Bool)

(assert (=> d!1067050 m!4128617))

(assert (=> b!3627598 m!4128593))

(declare-fun m!4128619 () Bool)

(assert (=> b!3627598 m!4128619))

(assert (=> b!3627598 m!4127981))

(assert (=> b!3626889 d!1067050))

(declare-fun d!1067052 () Bool)

(assert (=> d!1067052 (= (maxPrefixOneRule!1957 thiss!23823 (rule!8462 (_1!22176 lt!1254035)) lt!1254026) (Some!8017 (tuple2!38085 (Token!10755 (apply!9196 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))) (seqFromList!4243 lt!1254040)) (rule!8462 (_1!22176 lt!1254035)) (size!29151 lt!1254040) lt!1254040) (_2!22176 lt!1254035))))))

(declare-fun lt!1254349 () Unit!54971)

(declare-fun choose!21305 (LexerInterface!5283 List!38333 List!38331 List!38331 List!38331 Rule!11188) Unit!54971)

(assert (=> d!1067052 (= lt!1254349 (choose!21305 thiss!23823 rules!3307 lt!1254040 lt!1254026 (_2!22176 lt!1254035) (rule!8462 (_1!22176 lt!1254035))))))

(assert (=> d!1067052 (not (isEmpty!22593 rules!3307))))

(assert (=> d!1067052 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1025 thiss!23823 rules!3307 lt!1254040 lt!1254026 (_2!22176 lt!1254035) (rule!8462 (_1!22176 lt!1254035))) lt!1254349)))

(declare-fun bs!571481 () Bool)

(assert (= bs!571481 d!1067052))

(assert (=> bs!571481 m!4127707))

(assert (=> bs!571481 m!4127671))

(assert (=> bs!571481 m!4127673))

(assert (=> bs!571481 m!4127671))

(assert (=> bs!571481 m!4127665))

(assert (=> bs!571481 m!4127667))

(declare-fun m!4128621 () Bool)

(assert (=> bs!571481 m!4128621))

(assert (=> b!3626889 d!1067052))

(declare-fun d!1067054 () Bool)

(assert (=> d!1067054 (= (_2!22176 lt!1254035) lt!1254030)))

(declare-fun lt!1254352 () Unit!54971)

(declare-fun choose!21306 (List!38331 List!38331 List!38331 List!38331 List!38331) Unit!54971)

(assert (=> d!1067054 (= lt!1254352 (choose!21306 lt!1254040 (_2!22176 lt!1254035) lt!1254040 lt!1254030 lt!1254026))))

(assert (=> d!1067054 (isPrefix!3057 lt!1254040 lt!1254026)))

(assert (=> d!1067054 (= (lemmaSamePrefixThenSameSuffix!1404 lt!1254040 (_2!22176 lt!1254035) lt!1254040 lt!1254030 lt!1254026) lt!1254352)))

(declare-fun bs!571482 () Bool)

(assert (= bs!571482 d!1067054))

(declare-fun m!4128623 () Bool)

(assert (=> bs!571482 m!4128623))

(assert (=> bs!571482 m!4127741))

(assert (=> b!3626889 d!1067054))

(declare-fun d!1067056 () Bool)

(assert (=> d!1067056 (= (seqFromList!4243 lt!1254040) (fromListB!1954 lt!1254040))))

(declare-fun bs!571483 () Bool)

(assert (= bs!571483 d!1067056))

(declare-fun m!4128625 () Bool)

(assert (=> bs!571483 m!4128625))

(assert (=> b!3626889 d!1067056))

(declare-fun d!1067058 () Bool)

(assert (=> d!1067058 (= (apply!9196 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))) (seqFromList!4243 lt!1254040)) (dynLambda!16553 (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035)))) (seqFromList!4243 lt!1254040)))))

(declare-fun b_lambda!107361 () Bool)

(assert (=> (not b_lambda!107361) (not d!1067058)))

(declare-fun t!294890 () Bool)

(declare-fun tb!208317 () Bool)

(assert (=> (and b!3626900 (= (toValue!7982 (transformation!5694 rule!403)) (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294890) tb!208317))

(declare-fun result!253792 () Bool)

(assert (=> tb!208317 (= result!253792 (inv!21 (dynLambda!16553 (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035)))) (seqFromList!4243 lt!1254040))))))

(declare-fun m!4128627 () Bool)

(assert (=> tb!208317 m!4128627))

(assert (=> d!1067058 t!294890))

(declare-fun b_and!265907 () Bool)

(assert (= b_and!265887 (and (=> t!294890 result!253792) b_and!265907)))

(declare-fun t!294892 () Bool)

(declare-fun tb!208319 () Bool)

(assert (=> (and b!3626876 (= (toValue!7982 (transformation!5694 anOtherTypeRule!33)) (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294892) tb!208319))

(declare-fun result!253794 () Bool)

(assert (= result!253794 result!253792))

(assert (=> d!1067058 t!294892))

(declare-fun b_and!265909 () Bool)

(assert (= b_and!265889 (and (=> t!294892 result!253794) b_and!265909)))

(declare-fun tb!208321 () Bool)

(declare-fun t!294894 () Bool)

(assert (=> (and b!3626879 (= (toValue!7982 (transformation!5694 (rule!8462 token!511))) (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294894) tb!208321))

(declare-fun result!253796 () Bool)

(assert (= result!253796 result!253792))

(assert (=> d!1067058 t!294894))

(declare-fun b_and!265911 () Bool)

(assert (= b_and!265891 (and (=> t!294894 result!253796) b_and!265911)))

(declare-fun t!294896 () Bool)

(declare-fun tb!208323 () Bool)

(assert (=> (and b!3626893 (= (toValue!7982 (transformation!5694 (h!43629 rules!3307))) (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294896) tb!208323))

(declare-fun result!253798 () Bool)

(assert (= result!253798 result!253792))

(assert (=> d!1067058 t!294896))

(declare-fun b_and!265913 () Bool)

(assert (= b_and!265893 (and (=> t!294896 result!253798) b_and!265913)))

(assert (=> d!1067058 m!4127671))

(declare-fun m!4128629 () Bool)

(assert (=> d!1067058 m!4128629))

(assert (=> b!3626889 d!1067058))

(declare-fun d!1067060 () Bool)

(declare-fun lt!1254355 () List!38331)

(assert (=> d!1067060 (= (++!9510 lt!1254040 lt!1254355) lt!1254026)))

(declare-fun e!2245422 () List!38331)

(assert (=> d!1067060 (= lt!1254355 e!2245422)))

(declare-fun c!627637 () Bool)

(assert (=> d!1067060 (= c!627637 ((_ is Cons!38207) lt!1254040))))

(assert (=> d!1067060 (>= (size!29151 lt!1254026) (size!29151 lt!1254040))))

(assert (=> d!1067060 (= (getSuffix!1624 lt!1254026 lt!1254040) lt!1254355)))

(declare-fun b!3627606 () Bool)

(assert (=> b!3627606 (= e!2245422 (getSuffix!1624 (tail!5617 lt!1254026) (t!294786 lt!1254040)))))

(declare-fun b!3627607 () Bool)

(assert (=> b!3627607 (= e!2245422 lt!1254026)))

(assert (= (and d!1067060 c!627637) b!3627606))

(assert (= (and d!1067060 (not c!627637)) b!3627607))

(declare-fun m!4128631 () Bool)

(assert (=> d!1067060 m!4128631))

(assert (=> d!1067060 m!4127981))

(assert (=> d!1067060 m!4127667))

(assert (=> b!3627606 m!4127987))

(assert (=> b!3627606 m!4127987))

(declare-fun m!4128633 () Bool)

(assert (=> b!3627606 m!4128633))

(assert (=> b!3626889 d!1067060))

(declare-fun d!1067062 () Bool)

(declare-fun lt!1254356 () Bool)

(assert (=> d!1067062 (= lt!1254356 (select (content!5475 lt!1254021) lt!1254014))))

(declare-fun e!2245424 () Bool)

(assert (=> d!1067062 (= lt!1254356 e!2245424)))

(declare-fun res!1468751 () Bool)

(assert (=> d!1067062 (=> (not res!1468751) (not e!2245424))))

(assert (=> d!1067062 (= res!1468751 ((_ is Cons!38207) lt!1254021))))

(assert (=> d!1067062 (= (contains!7453 lt!1254021 lt!1254014) lt!1254356)))

(declare-fun b!3627608 () Bool)

(declare-fun e!2245423 () Bool)

(assert (=> b!3627608 (= e!2245424 e!2245423)))

(declare-fun res!1468750 () Bool)

(assert (=> b!3627608 (=> res!1468750 e!2245423)))

(assert (=> b!3627608 (= res!1468750 (= (h!43627 lt!1254021) lt!1254014))))

(declare-fun b!3627609 () Bool)

(assert (=> b!3627609 (= e!2245423 (contains!7453 (t!294786 lt!1254021) lt!1254014))))

(assert (= (and d!1067062 res!1468751) b!3627608))

(assert (= (and b!3627608 (not res!1468750)) b!3627609))

(assert (=> d!1067062 m!4127891))

(declare-fun m!4128635 () Bool)

(assert (=> d!1067062 m!4128635))

(declare-fun m!4128637 () Bool)

(assert (=> b!3627609 m!4128637))

(assert (=> b!3626890 d!1067062))

(declare-fun d!1067064 () Bool)

(assert (=> d!1067064 (= (head!7672 suffix!1395) (h!43627 suffix!1395))))

(assert (=> b!3626890 d!1067064))

(declare-fun b!3627610 () Bool)

(declare-fun e!2245426 () List!38331)

(declare-fun e!2245425 () List!38331)

(assert (=> b!3627610 (= e!2245426 e!2245425)))

(declare-fun c!627638 () Bool)

(assert (=> b!3627610 (= c!627638 ((_ is Union!10453) (regex!5694 rule!403)))))

(declare-fun b!3627611 () Bool)

(declare-fun call!262381 () List!38331)

(assert (=> b!3627611 (= e!2245425 call!262381)))

(declare-fun c!627641 () Bool)

(declare-fun call!262382 () List!38331)

(declare-fun bm!262376 () Bool)

(assert (=> bm!262376 (= call!262382 (usedCharacters!908 (ite c!627641 (reg!10782 (regex!5694 rule!403)) (ite c!627638 (regOne!21419 (regex!5694 rule!403)) (regTwo!21418 (regex!5694 rule!403))))))))

(declare-fun b!3627612 () Bool)

(declare-fun e!2245427 () List!38331)

(assert (=> b!3627612 (= e!2245427 (Cons!38207 (c!627510 (regex!5694 rule!403)) Nil!38207))))

(declare-fun b!3627613 () Bool)

(declare-fun e!2245428 () List!38331)

(assert (=> b!3627613 (= e!2245428 Nil!38207)))

(declare-fun bm!262377 () Bool)

(declare-fun call!262384 () List!38331)

(assert (=> bm!262377 (= call!262384 call!262382)))

(declare-fun call!262383 () List!38331)

(declare-fun bm!262378 () Bool)

(assert (=> bm!262378 (= call!262381 (++!9510 (ite c!627638 call!262384 call!262383) (ite c!627638 call!262383 call!262384)))))

(declare-fun b!3627614 () Bool)

(assert (=> b!3627614 (= e!2245425 call!262381)))

(declare-fun b!3627615 () Bool)

(assert (=> b!3627615 (= c!627641 ((_ is Star!10453) (regex!5694 rule!403)))))

(assert (=> b!3627615 (= e!2245427 e!2245426)))

(declare-fun b!3627617 () Bool)

(assert (=> b!3627617 (= e!2245426 call!262382)))

(declare-fun bm!262379 () Bool)

(assert (=> bm!262379 (= call!262383 (usedCharacters!908 (ite c!627638 (regTwo!21419 (regex!5694 rule!403)) (regOne!21418 (regex!5694 rule!403)))))))

(declare-fun d!1067066 () Bool)

(declare-fun c!627640 () Bool)

(assert (=> d!1067066 (= c!627640 (or ((_ is EmptyExpr!10453) (regex!5694 rule!403)) ((_ is EmptyLang!10453) (regex!5694 rule!403))))))

(assert (=> d!1067066 (= (usedCharacters!908 (regex!5694 rule!403)) e!2245428)))

(declare-fun b!3627616 () Bool)

(assert (=> b!3627616 (= e!2245428 e!2245427)))

(declare-fun c!627639 () Bool)

(assert (=> b!3627616 (= c!627639 ((_ is ElementMatch!10453) (regex!5694 rule!403)))))

(assert (= (and d!1067066 c!627640) b!3627613))

(assert (= (and d!1067066 (not c!627640)) b!3627616))

(assert (= (and b!3627616 c!627639) b!3627612))

(assert (= (and b!3627616 (not c!627639)) b!3627615))

(assert (= (and b!3627615 c!627641) b!3627617))

(assert (= (and b!3627615 (not c!627641)) b!3627610))

(assert (= (and b!3627610 c!627638) b!3627611))

(assert (= (and b!3627610 (not c!627638)) b!3627614))

(assert (= (or b!3627611 b!3627614) bm!262377))

(assert (= (or b!3627611 b!3627614) bm!262379))

(assert (= (or b!3627611 b!3627614) bm!262378))

(assert (= (or b!3627617 bm!262377) bm!262376))

(declare-fun m!4128639 () Bool)

(assert (=> bm!262376 m!4128639))

(declare-fun m!4128641 () Bool)

(assert (=> bm!262378 m!4128641))

(declare-fun m!4128643 () Bool)

(assert (=> bm!262379 m!4128643))

(assert (=> b!3626890 d!1067066))

(declare-fun b!3627631 () Bool)

(declare-fun e!2245431 () Bool)

(declare-fun tp!1107533 () Bool)

(declare-fun tp!1107532 () Bool)

(assert (=> b!3627631 (= e!2245431 (and tp!1107533 tp!1107532))))

(declare-fun b!3627628 () Bool)

(assert (=> b!3627628 (= e!2245431 tp_is_empty!17989)))

(declare-fun b!3627630 () Bool)

(declare-fun tp!1107531 () Bool)

(assert (=> b!3627630 (= e!2245431 tp!1107531)))

(assert (=> b!3626904 (= tp!1107451 e!2245431)))

(declare-fun b!3627629 () Bool)

(declare-fun tp!1107534 () Bool)

(declare-fun tp!1107535 () Bool)

(assert (=> b!3627629 (= e!2245431 (and tp!1107534 tp!1107535))))

(assert (= (and b!3626904 ((_ is ElementMatch!10453) (regex!5694 rule!403))) b!3627628))

(assert (= (and b!3626904 ((_ is Concat!16378) (regex!5694 rule!403))) b!3627629))

(assert (= (and b!3626904 ((_ is Star!10453) (regex!5694 rule!403))) b!3627630))

(assert (= (and b!3626904 ((_ is Union!10453) (regex!5694 rule!403))) b!3627631))

(declare-fun b!3627635 () Bool)

(declare-fun e!2245432 () Bool)

(declare-fun tp!1107538 () Bool)

(declare-fun tp!1107537 () Bool)

(assert (=> b!3627635 (= e!2245432 (and tp!1107538 tp!1107537))))

(declare-fun b!3627632 () Bool)

(assert (=> b!3627632 (= e!2245432 tp_is_empty!17989)))

(declare-fun b!3627634 () Bool)

(declare-fun tp!1107536 () Bool)

(assert (=> b!3627634 (= e!2245432 tp!1107536)))

(assert (=> b!3626899 (= tp!1107462 e!2245432)))

(declare-fun b!3627633 () Bool)

(declare-fun tp!1107539 () Bool)

(declare-fun tp!1107540 () Bool)

(assert (=> b!3627633 (= e!2245432 (and tp!1107539 tp!1107540))))

(assert (= (and b!3626899 ((_ is ElementMatch!10453) (regex!5694 anOtherTypeRule!33))) b!3627632))

(assert (= (and b!3626899 ((_ is Concat!16378) (regex!5694 anOtherTypeRule!33))) b!3627633))

(assert (= (and b!3626899 ((_ is Star!10453) (regex!5694 anOtherTypeRule!33))) b!3627634))

(assert (= (and b!3626899 ((_ is Union!10453) (regex!5694 anOtherTypeRule!33))) b!3627635))

(declare-fun b!3627639 () Bool)

(declare-fun e!2245433 () Bool)

(declare-fun tp!1107543 () Bool)

(declare-fun tp!1107542 () Bool)

(assert (=> b!3627639 (= e!2245433 (and tp!1107543 tp!1107542))))

(declare-fun b!3627636 () Bool)

(assert (=> b!3627636 (= e!2245433 tp_is_empty!17989)))

(declare-fun b!3627638 () Bool)

(declare-fun tp!1107541 () Bool)

(assert (=> b!3627638 (= e!2245433 tp!1107541)))

(assert (=> b!3626881 (= tp!1107464 e!2245433)))

(declare-fun b!3627637 () Bool)

(declare-fun tp!1107544 () Bool)

(declare-fun tp!1107545 () Bool)

(assert (=> b!3627637 (= e!2245433 (and tp!1107544 tp!1107545))))

(assert (= (and b!3626881 ((_ is ElementMatch!10453) (regex!5694 (h!43629 rules!3307)))) b!3627636))

(assert (= (and b!3626881 ((_ is Concat!16378) (regex!5694 (h!43629 rules!3307)))) b!3627637))

(assert (= (and b!3626881 ((_ is Star!10453) (regex!5694 (h!43629 rules!3307)))) b!3627638))

(assert (= (and b!3626881 ((_ is Union!10453) (regex!5694 (h!43629 rules!3307)))) b!3627639))

(declare-fun b!3627644 () Bool)

(declare-fun e!2245436 () Bool)

(declare-fun tp!1107548 () Bool)

(assert (=> b!3627644 (= e!2245436 (and tp_is_empty!17989 tp!1107548))))

(assert (=> b!3626882 (= tp!1107458 e!2245436)))

(assert (= (and b!3626882 ((_ is Cons!38207) (t!294786 suffix!1395))) b!3627644))

(declare-fun b!3627655 () Bool)

(declare-fun b_free!94741 () Bool)

(declare-fun b_next!95445 () Bool)

(assert (=> b!3627655 (= b_free!94741 (not b_next!95445))))

(declare-fun t!294898 () Bool)

(declare-fun tb!208325 () Bool)

(assert (=> (and b!3627655 (= (toValue!7982 (transformation!5694 (h!43629 (t!294788 rules!3307)))) (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294898) tb!208325))

(declare-fun result!253806 () Bool)

(assert (= result!253806 result!253766))

(assert (=> d!1067006 t!294898))

(declare-fun tb!208327 () Bool)

(declare-fun t!294900 () Bool)

(assert (=> (and b!3627655 (= (toValue!7982 (transformation!5694 (h!43629 (t!294788 rules!3307)))) (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294900) tb!208327))

(declare-fun result!253808 () Bool)

(assert (= result!253808 result!253792))

(assert (=> d!1067058 t!294900))

(declare-fun t!294902 () Bool)

(declare-fun tb!208329 () Bool)

(assert (=> (and b!3627655 (= (toValue!7982 (transformation!5694 (h!43629 (t!294788 rules!3307)))) (toValue!7982 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294902) tb!208329))

(declare-fun result!253810 () Bool)

(assert (= result!253810 result!253756))

(assert (=> d!1066982 t!294902))

(assert (=> d!1067006 t!294902))

(assert (=> d!1067000 t!294902))

(declare-fun b_and!265915 () Bool)

(declare-fun tp!1107557 () Bool)

(assert (=> b!3627655 (= tp!1107557 (and (=> t!294900 result!253808) (=> t!294902 result!253810) (=> t!294898 result!253806) b_and!265915))))

(declare-fun b_free!94743 () Bool)

(declare-fun b_next!95447 () Bool)

(assert (=> b!3627655 (= b_free!94743 (not b_next!95447))))

(declare-fun tb!208331 () Bool)

(declare-fun t!294904 () Bool)

(assert (=> (and b!3627655 (= (toChars!7841 (transformation!5694 (h!43629 (t!294788 rules!3307)))) (toChars!7841 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294904) tb!208331))

(declare-fun result!253812 () Bool)

(assert (= result!253812 result!253696))

(assert (=> d!1066960 t!294904))

(declare-fun tb!208333 () Bool)

(declare-fun t!294906 () Bool)

(assert (=> (and b!3627655 (= (toChars!7841 (transformation!5694 (h!43629 (t!294788 rules!3307)))) (toChars!7841 (transformation!5694 (rule!8462 token!511)))) t!294906) tb!208333))

(declare-fun result!253814 () Bool)

(assert (= result!253814 result!253706))

(assert (=> b!3627387 t!294906))

(declare-fun tb!208335 () Bool)

(declare-fun t!294908 () Bool)

(assert (=> (and b!3627655 (= (toChars!7841 (transformation!5694 (h!43629 (t!294788 rules!3307)))) (toChars!7841 (transformation!5694 (rule!8462 (_1!22176 lt!1254035))))) t!294908) tb!208335))

(declare-fun result!253816 () Bool)

(assert (= result!253816 result!253748))

(assert (=> d!1066982 t!294908))

(assert (=> d!1067040 t!294906))

(declare-fun b_and!265917 () Bool)

(declare-fun tp!1107559 () Bool)

(assert (=> b!3627655 (= tp!1107559 (and (=> t!294904 result!253812) (=> t!294906 result!253814) (=> t!294908 result!253816) b_and!265917))))

(declare-fun e!2245446 () Bool)

(assert (=> b!3627655 (= e!2245446 (and tp!1107557 tp!1107559))))

(declare-fun b!3627654 () Bool)

(declare-fun tp!1107560 () Bool)

(declare-fun e!2245445 () Bool)

(assert (=> b!3627654 (= e!2245445 (and tp!1107560 (inv!51613 (tag!6420 (h!43629 (t!294788 rules!3307)))) (inv!51616 (transformation!5694 (h!43629 (t!294788 rules!3307)))) e!2245446))))

(declare-fun b!3627653 () Bool)

(declare-fun e!2245448 () Bool)

(declare-fun tp!1107558 () Bool)

(assert (=> b!3627653 (= e!2245448 (and e!2245445 tp!1107558))))

(assert (=> b!3626901 (= tp!1107450 e!2245448)))

(assert (= b!3627654 b!3627655))

(assert (= b!3627653 b!3627654))

(assert (= (and b!3626901 ((_ is Cons!38209) (t!294788 rules!3307))) b!3627653))

(declare-fun m!4128645 () Bool)

(assert (=> b!3627654 m!4128645))

(declare-fun m!4128647 () Bool)

(assert (=> b!3627654 m!4128647))

(declare-fun b!3627656 () Bool)

(declare-fun e!2245449 () Bool)

(declare-fun tp!1107561 () Bool)

(assert (=> b!3627656 (= e!2245449 (and tp_is_empty!17989 tp!1107561))))

(assert (=> b!3626896 (= tp!1107461 e!2245449)))

(assert (= (and b!3626896 ((_ is Cons!38207) (originalCharacters!6408 token!511))) b!3627656))

(declare-fun b!3627660 () Bool)

(declare-fun e!2245450 () Bool)

(declare-fun tp!1107564 () Bool)

(declare-fun tp!1107563 () Bool)

(assert (=> b!3627660 (= e!2245450 (and tp!1107564 tp!1107563))))

(declare-fun b!3627657 () Bool)

(assert (=> b!3627657 (= e!2245450 tp_is_empty!17989)))

(declare-fun b!3627659 () Bool)

(declare-fun tp!1107562 () Bool)

(assert (=> b!3627659 (= e!2245450 tp!1107562)))

(assert (=> b!3626906 (= tp!1107457 e!2245450)))

(declare-fun b!3627658 () Bool)

(declare-fun tp!1107565 () Bool)

(declare-fun tp!1107566 () Bool)

(assert (=> b!3627658 (= e!2245450 (and tp!1107565 tp!1107566))))

(assert (= (and b!3626906 ((_ is ElementMatch!10453) (regex!5694 (rule!8462 token!511)))) b!3627657))

(assert (= (and b!3626906 ((_ is Concat!16378) (regex!5694 (rule!8462 token!511)))) b!3627658))

(assert (= (and b!3626906 ((_ is Star!10453) (regex!5694 (rule!8462 token!511)))) b!3627659))

(assert (= (and b!3626906 ((_ is Union!10453) (regex!5694 (rule!8462 token!511)))) b!3627660))

(declare-fun b_lambda!107363 () Bool)

(assert (= b_lambda!107331 (or (and b!3627655 b_free!94743 (= (toChars!7841 (transformation!5694 (h!43629 (t!294788 rules!3307)))) (toChars!7841 (transformation!5694 (rule!8462 token!511))))) (and b!3626900 b_free!94723 (= (toChars!7841 (transformation!5694 rule!403)) (toChars!7841 (transformation!5694 (rule!8462 token!511))))) (and b!3626876 b_free!94727 (= (toChars!7841 (transformation!5694 anOtherTypeRule!33)) (toChars!7841 (transformation!5694 (rule!8462 token!511))))) (and b!3626879 b_free!94731) (and b!3626893 b_free!94735 (= (toChars!7841 (transformation!5694 (h!43629 rules!3307))) (toChars!7841 (transformation!5694 (rule!8462 token!511))))) b_lambda!107363)))

(declare-fun b_lambda!107365 () Bool)

(assert (= b_lambda!107359 (or (and b!3627655 b_free!94743 (= (toChars!7841 (transformation!5694 (h!43629 (t!294788 rules!3307)))) (toChars!7841 (transformation!5694 (rule!8462 token!511))))) (and b!3626900 b_free!94723 (= (toChars!7841 (transformation!5694 rule!403)) (toChars!7841 (transformation!5694 (rule!8462 token!511))))) (and b!3626876 b_free!94727 (= (toChars!7841 (transformation!5694 anOtherTypeRule!33)) (toChars!7841 (transformation!5694 (rule!8462 token!511))))) (and b!3626879 b_free!94731) (and b!3626893 b_free!94735 (= (toChars!7841 (transformation!5694 (h!43629 rules!3307))) (toChars!7841 (transformation!5694 (rule!8462 token!511))))) b_lambda!107365)))

(check-sat (not b_next!95435) (not b!3627595) (not d!1067062) (not d!1067022) (not b!3627339) (not d!1067024) (not b!3627159) (not b!3627600) (not b_next!95433) (not b_next!95437) (not b!3627382) (not b!3627461) (not b_next!95425) (not b!3627375) (not b!3627330) (not b!3627601) (not d!1066968) (not b!3627567) (not d!1067050) (not b_lambda!107345) b_and!265905 (not bm!262378) (not bm!262339) (not bm!262376) b_and!265913 (not tb!208317) (not b!3627381) (not b!3627161) (not d!1066956) (not b!3627634) (not b!3627598) b_and!265915 b_and!265917 (not b!3627653) (not d!1066950) (not b!3627069) (not d!1067044) (not d!1067036) (not d!1067052) (not b!3627076) (not d!1066812) (not b!3627460) (not b!3627463) (not b!3627338) (not b!3627568) (not b!3627307) (not b!3627639) (not b_next!95439) (not b!3627305) (not d!1066972) (not b!3627387) (not bm!262370) (not b!3627309) (not b!3627097) (not b_next!95447) b_and!265907 (not d!1067004) (not d!1066874) (not b!3627596) b_and!265909 (not bm!262361) (not d!1066980) (not b!3627631) (not b!3627660) (not bm!262379) (not b!3627318) (not b!3627329) b_and!265901 (not b!3627374) (not b!3627106) (not b!3627574) b_and!265903 (not d!1067034) (not b!3627373) (not b!3627536) (not b!3627526) (not d!1066850) (not b!3627071) (not d!1066976) (not b!3627644) (not b!3627389) (not b!3627638) (not b!3627130) (not b!3627535) (not b_lambda!107351) (not b!3627635) (not b!3627110) (not b!3627594) (not b!3627073) (not b!3627539) (not b!3627530) (not b!3627149) (not tb!208289) (not d!1066828) (not b!3627656) (not b!3627344) (not bm!262336) (not b!3627337) (not d!1067002) (not b!3627364) (not d!1066880) (not b!3627148) (not b!3627428) (not d!1066960) (not b!3627537) (not b!3627563) (not b!3627334) (not b!3627630) (not b!3627606) (not b_lambda!107353) (not d!1066872) (not d!1066982) (not b!3627654) (not b!3627659) (not bm!262372) (not b!3627108) (not d!1066998) (not tb!208297) (not b!3627363) (not d!1067056) b_and!265899 (not b_lambda!107363) (not b_lambda!107365) (not b!3627561) (not d!1066966) b_and!265911 (not b!3627160) (not b!3627368) (not d!1067014) (not b!3627369) (not b!3627376) (not b!3627126) (not b!3627371) (not bm!262374) (not b!3627565) (not b!3627104) (not d!1067060) (not b_lambda!107349) (not bm!262375) (not b!3627144) (not d!1066964) (not tb!208241) (not b_next!95445) (not d!1066856) (not d!1066954) (not b_next!95427) (not tb!208281) (not b!3627541) (not d!1067042) (not d!1067054) (not b!3627609) (not b!3627633) (not d!1066864) (not b!3627365) (not b!3627599) (not b!3627333) (not b!3627074) (not b!3627527) (not b!3627131) (not b!3627637) (not b!3627540) (not b!3627105) (not b!3627367) (not b!3627067) (not b!3627542) (not b_lambda!107329) (not b_next!95431) (not bm!262373) (not b_next!95429) (not b!3627658) (not b!3627068) (not d!1066868) (not b!3627597) (not d!1066854) (not d!1066878) (not b!3627629) (not tb!208233) (not b!3627370) (not d!1067020) (not b!3627388) tp_is_empty!17989 (not b!3627111) (not d!1066858) (not b!3627543) (not d!1067038) (not b!3626982) (not d!1067006) (not d!1066838) (not b!3627319) (not b!3627562) (not b_lambda!107347) (not b_lambda!107361) (not d!1067040) (not b!3627009))
(check-sat (not b_next!95435) (not b_next!95425) (not b_next!95439) b_and!265909 b_and!265901 b_and!265903 b_and!265899 b_and!265911 (not b_next!95445) (not b_next!95427) (not b_next!95433) (not b_next!95437) b_and!265905 b_and!265913 b_and!265915 b_and!265917 (not b_next!95447) b_and!265907 (not b_next!95431) (not b_next!95429))
