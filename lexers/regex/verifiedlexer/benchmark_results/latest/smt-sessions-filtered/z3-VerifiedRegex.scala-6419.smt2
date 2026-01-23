; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!335342 () Bool)

(assert start!335342)

(declare-fun b!3604710 () Bool)

(declare-fun b_free!93385 () Bool)

(declare-fun b_next!94089 () Bool)

(assert (=> b!3604710 (= b_free!93385 (not b_next!94089))))

(declare-fun tp!1102350 () Bool)

(declare-fun b_and!262283 () Bool)

(assert (=> b!3604710 (= tp!1102350 b_and!262283)))

(declare-fun b_free!93387 () Bool)

(declare-fun b_next!94091 () Bool)

(assert (=> b!3604710 (= b_free!93387 (not b_next!94091))))

(declare-fun tp!1102353 () Bool)

(declare-fun b_and!262285 () Bool)

(assert (=> b!3604710 (= tp!1102353 b_and!262285)))

(declare-fun b!3604711 () Bool)

(declare-fun b_free!93389 () Bool)

(declare-fun b_next!94093 () Bool)

(assert (=> b!3604711 (= b_free!93389 (not b_next!94093))))

(declare-fun tp!1102360 () Bool)

(declare-fun b_and!262287 () Bool)

(assert (=> b!3604711 (= tp!1102360 b_and!262287)))

(declare-fun b_free!93391 () Bool)

(declare-fun b_next!94095 () Bool)

(assert (=> b!3604711 (= b_free!93391 (not b_next!94095))))

(declare-fun tp!1102346 () Bool)

(declare-fun b_and!262289 () Bool)

(assert (=> b!3604711 (= tp!1102346 b_and!262289)))

(declare-fun b!3604707 () Bool)

(declare-fun b_free!93393 () Bool)

(declare-fun b_next!94097 () Bool)

(assert (=> b!3604707 (= b_free!93393 (not b_next!94097))))

(declare-fun tp!1102357 () Bool)

(declare-fun b_and!262291 () Bool)

(assert (=> b!3604707 (= tp!1102357 b_and!262291)))

(declare-fun b_free!93395 () Bool)

(declare-fun b_next!94099 () Bool)

(assert (=> b!3604707 (= b_free!93395 (not b_next!94099))))

(declare-fun tp!1102352 () Bool)

(declare-fun b_and!262293 () Bool)

(assert (=> b!3604707 (= tp!1102352 b_and!262293)))

(declare-fun b!3604700 () Bool)

(declare-fun b_free!93397 () Bool)

(declare-fun b_next!94101 () Bool)

(assert (=> b!3604700 (= b_free!93397 (not b_next!94101))))

(declare-fun tp!1102351 () Bool)

(declare-fun b_and!262295 () Bool)

(assert (=> b!3604700 (= tp!1102351 b_and!262295)))

(declare-fun b_free!93399 () Bool)

(declare-fun b_next!94103 () Bool)

(assert (=> b!3604700 (= b_free!93399 (not b_next!94103))))

(declare-fun tp!1102349 () Bool)

(declare-fun b_and!262297 () Bool)

(assert (=> b!3604700 (= tp!1102349 b_and!262297)))

(declare-fun b!3604676 () Bool)

(declare-fun e!2230705 () Bool)

(declare-fun e!2230684 () Bool)

(assert (=> b!3604676 (= e!2230705 e!2230684)))

(declare-fun res!1457351 () Bool)

(assert (=> b!3604676 (=> res!1457351 e!2230684)))

(declare-datatypes ((C!20940 0))(
  ( (C!20941 (val!12518 Int)) )
))
(declare-datatypes ((List!38047 0))(
  ( (Nil!37923) (Cons!37923 (h!43343 C!20940) (t!292738 List!38047)) )
))
(declare-datatypes ((IArray!23107 0))(
  ( (IArray!23108 (innerList!11611 List!38047)) )
))
(declare-datatypes ((Conc!11551 0))(
  ( (Node!11551 (left!29634 Conc!11551) (right!29964 Conc!11551) (csize!23332 Int) (cheight!11762 Int)) (Leaf!17971 (xs!14753 IArray!23107) (csize!23333 Int)) (Empty!11551) )
))
(declare-datatypes ((BalanceConc!22716 0))(
  ( (BalanceConc!22717 (c!623730 Conc!11551)) )
))
(declare-fun lt!1239257 () BalanceConc!22716)

(declare-datatypes ((List!38048 0))(
  ( (Nil!37924) (Cons!37924 (h!43344 (_ BitVec 16)) (t!292739 List!38048)) )
))
(declare-datatypes ((TokenValue!5848 0))(
  ( (FloatLiteralValue!11696 (text!41381 List!38048)) (TokenValueExt!5847 (__x!23913 Int)) (Broken!29240 (value!180547 List!38048)) (Object!5971) (End!5848) (Def!5848) (Underscore!5848) (Match!5848) (Else!5848) (Error!5848) (Case!5848) (If!5848) (Extends!5848) (Abstract!5848) (Class!5848) (Val!5848) (DelimiterValue!11696 (del!5908 List!38048)) (KeywordValue!5854 (value!180548 List!38048)) (CommentValue!11696 (value!180549 List!38048)) (WhitespaceValue!11696 (value!180550 List!38048)) (IndentationValue!5848 (value!180551 List!38048)) (String!42573) (Int32!5848) (Broken!29241 (value!180552 List!38048)) (Boolean!5849) (Unit!53991) (OperatorValue!5851 (op!5908 List!38048)) (IdentifierValue!11696 (value!180553 List!38048)) (IdentifierValue!11697 (value!180554 List!38048)) (WhitespaceValue!11697 (value!180555 List!38048)) (True!11696) (False!11696) (Broken!29242 (value!180556 List!38048)) (Broken!29243 (value!180557 List!38048)) (True!11697) (RightBrace!5848) (RightBracket!5848) (Colon!5848) (Null!5848) (Comma!5848) (LeftBracket!5848) (False!11697) (LeftBrace!5848) (ImaginaryLiteralValue!5848 (text!41382 List!38048)) (StringLiteralValue!17544 (value!180558 List!38048)) (EOFValue!5848 (value!180559 List!38048)) (IdentValue!5848 (value!180560 List!38048)) (DelimiterValue!11697 (value!180561 List!38048)) (DedentValue!5848 (value!180562 List!38048)) (NewLineValue!5848 (value!180563 List!38048)) (IntegerValue!17544 (value!180564 (_ BitVec 32)) (text!41383 List!38048)) (IntegerValue!17545 (value!180565 Int) (text!41384 List!38048)) (Times!5848) (Or!5848) (Equal!5848) (Minus!5848) (Broken!29244 (value!180566 List!38048)) (And!5848) (Div!5848) (LessEqual!5848) (Mod!5848) (Concat!16225) (Not!5848) (Plus!5848) (SpaceValue!5848 (value!180567 List!38048)) (IntegerValue!17546 (value!180568 Int) (text!41385 List!38048)) (StringLiteralValue!17545 (text!41386 List!38048)) (FloatLiteralValue!11697 (text!41387 List!38048)) (BytesLiteralValue!5848 (value!180569 List!38048)) (CommentValue!11697 (value!180570 List!38048)) (StringLiteralValue!17546 (value!180571 List!38048)) (ErrorTokenValue!5848 (msg!5909 List!38048)) )
))
(declare-datatypes ((Regex!10377 0))(
  ( (ElementMatch!10377 (c!623731 C!20940)) (Concat!16226 (regOne!21266 Regex!10377) (regTwo!21266 Regex!10377)) (EmptyExpr!10377) (Star!10377 (reg!10706 Regex!10377)) (EmptyLang!10377) (Union!10377 (regOne!21267 Regex!10377) (regTwo!21267 Regex!10377)) )
))
(declare-datatypes ((String!42574 0))(
  ( (String!42575 (value!180572 String)) )
))
(declare-datatypes ((TokenValueInjection!11124 0))(
  ( (TokenValueInjection!11125 (toValue!7902 Int) (toChars!7761 Int)) )
))
(declare-datatypes ((Rule!11036 0))(
  ( (Rule!11037 (regex!5618 Regex!10377) (tag!6316 String!42574) (isSeparator!5618 Bool) (transformation!5618 TokenValueInjection!11124)) )
))
(declare-datatypes ((Token!10602 0))(
  ( (Token!10603 (value!180573 TokenValue!5848) (rule!8360 Rule!11036) (size!28903 Int) (originalCharacters!6332 List!38047)) )
))
(declare-datatypes ((tuple2!37820 0))(
  ( (tuple2!37821 (_1!22044 Token!10602) (_2!22044 List!38047)) )
))
(declare-datatypes ((Option!7866 0))(
  ( (None!7865) (Some!7865 (v!37591 tuple2!37820)) )
))
(declare-fun lt!1239254 () Option!7866)

(declare-fun lt!1239279 () List!38047)

(declare-fun lt!1239280 () tuple2!37820)

(declare-fun apply!9124 (TokenValueInjection!11124 BalanceConc!22716) TokenValue!5848)

(declare-fun size!28904 (BalanceConc!22716) Int)

(assert (=> b!3604676 (= res!1457351 (not (= lt!1239254 (Some!7865 (tuple2!37821 (Token!10603 (apply!9124 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))) lt!1239257) (rule!8360 (_1!22044 lt!1239280)) (size!28904 lt!1239257) lt!1239279) (_2!22044 lt!1239280))))))))

(declare-datatypes ((Unit!53992 0))(
  ( (Unit!53993) )
))
(declare-fun lt!1239275 () Unit!53992)

(declare-fun lemmaCharactersSize!671 (Token!10602) Unit!53992)

(assert (=> b!3604676 (= lt!1239275 (lemmaCharactersSize!671 (_1!22044 lt!1239280)))))

(declare-fun lt!1239262 () Unit!53992)

(declare-fun lemmaEqSameImage!809 (TokenValueInjection!11124 BalanceConc!22716 BalanceConc!22716) Unit!53992)

(declare-fun seqFromList!4171 (List!38047) BalanceConc!22716)

(assert (=> b!3604676 (= lt!1239262 (lemmaEqSameImage!809 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))) lt!1239257 (seqFromList!4171 (originalCharacters!6332 (_1!22044 lt!1239280)))))))

(declare-fun lt!1239251 () Unit!53992)

(declare-fun lemmaSemiInverse!1375 (TokenValueInjection!11124 BalanceConc!22716) Unit!53992)

(assert (=> b!3604676 (= lt!1239251 (lemmaSemiInverse!1375 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))) lt!1239257))))

(declare-fun e!2230692 () Bool)

(declare-fun b!3604677 () Bool)

(declare-fun tp!1102358 () Bool)

(declare-fun rule!403 () Rule!11036)

(declare-fun e!2230689 () Bool)

(declare-fun inv!51285 (String!42574) Bool)

(declare-fun inv!51288 (TokenValueInjection!11124) Bool)

(assert (=> b!3604677 (= e!2230689 (and tp!1102358 (inv!51285 (tag!6316 rule!403)) (inv!51288 (transformation!5618 rule!403)) e!2230692))))

(declare-fun b!3604678 () Bool)

(declare-fun res!1457343 () Bool)

(declare-fun e!2230687 () Bool)

(assert (=> b!3604678 (=> (not res!1457343) (not e!2230687))))

(declare-datatypes ((List!38049 0))(
  ( (Nil!37925) (Cons!37925 (h!43345 Rule!11036) (t!292740 List!38049)) )
))
(declare-fun rules!3307 () List!38049)

(declare-fun isEmpty!22382 (List!38049) Bool)

(assert (=> b!3604678 (= res!1457343 (not (isEmpty!22382 rules!3307)))))

(declare-fun b!3604679 () Bool)

(declare-fun e!2230685 () Bool)

(assert (=> b!3604679 (= e!2230684 e!2230685)))

(declare-fun res!1457335 () Bool)

(assert (=> b!3604679 (=> res!1457335 e!2230685)))

(declare-fun lt!1239260 () List!38047)

(declare-fun lt!1239278 () Option!7866)

(assert (=> b!3604679 (= res!1457335 (or (not (= lt!1239260 (_2!22044 lt!1239280))) (not (= lt!1239278 (Some!7865 (tuple2!37821 (_1!22044 lt!1239280) lt!1239260))))))))

(assert (=> b!3604679 (= (_2!22044 lt!1239280) lt!1239260)))

(declare-fun lt!1239265 () List!38047)

(declare-fun lt!1239261 () Unit!53992)

(declare-fun lemmaSamePrefixThenSameSuffix!1336 (List!38047 List!38047 List!38047 List!38047 List!38047) Unit!53992)

(assert (=> b!3604679 (= lt!1239261 (lemmaSamePrefixThenSameSuffix!1336 lt!1239279 (_2!22044 lt!1239280) lt!1239279 lt!1239260 lt!1239265))))

(declare-fun getSuffix!1556 (List!38047 List!38047) List!38047)

(assert (=> b!3604679 (= lt!1239260 (getSuffix!1556 lt!1239265 lt!1239279))))

(declare-fun lt!1239276 () TokenValue!5848)

(declare-fun lt!1239252 () Int)

(assert (=> b!3604679 (= lt!1239278 (Some!7865 (tuple2!37821 (Token!10603 lt!1239276 (rule!8360 (_1!22044 lt!1239280)) lt!1239252 lt!1239279) (_2!22044 lt!1239280))))))

(declare-datatypes ((LexerInterface!5207 0))(
  ( (LexerInterfaceExt!5204 (__x!23914 Int)) (Lexer!5205) )
))
(declare-fun thiss!23823 () LexerInterface!5207)

(declare-fun maxPrefixOneRule!1885 (LexerInterface!5207 Rule!11036 List!38047) Option!7866)

(assert (=> b!3604679 (= lt!1239278 (maxPrefixOneRule!1885 thiss!23823 (rule!8360 (_1!22044 lt!1239280)) lt!1239265))))

(declare-fun size!28905 (List!38047) Int)

(assert (=> b!3604679 (= lt!1239252 (size!28905 lt!1239279))))

(assert (=> b!3604679 (= lt!1239276 (apply!9124 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))) (seqFromList!4171 lt!1239279)))))

(declare-fun lt!1239274 () Unit!53992)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!957 (LexerInterface!5207 List!38049 List!38047 List!38047 List!38047 Rule!11036) Unit!53992)

(assert (=> b!3604679 (= lt!1239274 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!957 thiss!23823 rules!3307 lt!1239279 lt!1239265 (_2!22044 lt!1239280) (rule!8360 (_1!22044 lt!1239280))))))

(declare-fun b!3604680 () Bool)

(declare-fun e!2230702 () Bool)

(declare-fun e!2230704 () Bool)

(assert (=> b!3604680 (= e!2230702 e!2230704)))

(declare-fun res!1457349 () Bool)

(assert (=> b!3604680 (=> (not res!1457349) (not e!2230704))))

(declare-fun lt!1239250 () tuple2!37820)

(declare-fun token!511 () Token!10602)

(assert (=> b!3604680 (= res!1457349 (= (_1!22044 lt!1239250) token!511))))

(declare-fun lt!1239255 () Option!7866)

(declare-fun get!12285 (Option!7866) tuple2!37820)

(assert (=> b!3604680 (= lt!1239250 (get!12285 lt!1239255))))

(declare-fun b!3604681 () Bool)

(declare-fun e!2230688 () Bool)

(declare-fun tp_is_empty!17837 () Bool)

(declare-fun tp!1102347 () Bool)

(assert (=> b!3604681 (= e!2230688 (and tp_is_empty!17837 tp!1102347))))

(declare-fun e!2230695 () Bool)

(declare-fun tp!1102348 () Bool)

(declare-fun b!3604682 () Bool)

(declare-fun e!2230697 () Bool)

(declare-fun inv!21 (TokenValue!5848) Bool)

(assert (=> b!3604682 (= e!2230695 (and (inv!21 (value!180573 token!511)) e!2230697 tp!1102348))))

(declare-fun b!3604684 () Bool)

(declare-fun res!1457344 () Bool)

(declare-fun e!2230683 () Bool)

(assert (=> b!3604684 (=> res!1457344 e!2230683)))

(declare-fun lt!1239269 () List!38047)

(declare-fun lt!1239277 () C!20940)

(declare-fun contains!7299 (List!38047 C!20940) Bool)

(assert (=> b!3604684 (= res!1457344 (not (contains!7299 lt!1239269 lt!1239277)))))

(declare-fun b!3604685 () Bool)

(declare-fun e!2230707 () Bool)

(assert (=> b!3604685 (= e!2230707 e!2230705)))

(declare-fun res!1457355 () Bool)

(assert (=> b!3604685 (=> res!1457355 e!2230705)))

(declare-fun isPrefix!2981 (List!38047 List!38047) Bool)

(assert (=> b!3604685 (= res!1457355 (not (isPrefix!2981 lt!1239279 lt!1239265)))))

(declare-fun ++!9434 (List!38047 List!38047) List!38047)

(assert (=> b!3604685 (isPrefix!2981 lt!1239279 (++!9434 lt!1239279 (_2!22044 lt!1239280)))))

(declare-fun lt!1239258 () Unit!53992)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1902 (List!38047 List!38047) Unit!53992)

(assert (=> b!3604685 (= lt!1239258 (lemmaConcatTwoListThenFirstIsPrefix!1902 lt!1239279 (_2!22044 lt!1239280)))))

(declare-fun list!13978 (BalanceConc!22716) List!38047)

(assert (=> b!3604685 (= lt!1239279 (list!13978 lt!1239257))))

(declare-fun charsOf!3632 (Token!10602) BalanceConc!22716)

(assert (=> b!3604685 (= lt!1239257 (charsOf!3632 (_1!22044 lt!1239280)))))

(declare-fun e!2230694 () Bool)

(assert (=> b!3604685 e!2230694))

(declare-fun res!1457346 () Bool)

(assert (=> b!3604685 (=> (not res!1457346) (not e!2230694))))

(declare-datatypes ((Option!7867 0))(
  ( (None!7866) (Some!7866 (v!37592 Rule!11036)) )
))
(declare-fun lt!1239253 () Option!7867)

(declare-fun isDefined!6098 (Option!7867) Bool)

(assert (=> b!3604685 (= res!1457346 (isDefined!6098 lt!1239253))))

(declare-fun getRuleFromTag!1224 (LexerInterface!5207 List!38049 String!42574) Option!7867)

(assert (=> b!3604685 (= lt!1239253 (getRuleFromTag!1224 thiss!23823 rules!3307 (tag!6316 (rule!8360 (_1!22044 lt!1239280)))))))

(declare-fun lt!1239273 () Unit!53992)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1224 (LexerInterface!5207 List!38049 List!38047 Token!10602) Unit!53992)

(assert (=> b!3604685 (= lt!1239273 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1224 thiss!23823 rules!3307 lt!1239265 (_1!22044 lt!1239280)))))

(assert (=> b!3604685 (= lt!1239280 (get!12285 lt!1239254))))

(declare-fun suffix!1395 () List!38047)

(declare-fun lt!1239264 () Unit!53992)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!887 (LexerInterface!5207 List!38049 List!38047 List!38047) Unit!53992)

(assert (=> b!3604685 (= lt!1239264 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!887 thiss!23823 rules!3307 lt!1239269 suffix!1395))))

(declare-fun maxPrefix!2741 (LexerInterface!5207 List!38049 List!38047) Option!7866)

(assert (=> b!3604685 (= lt!1239254 (maxPrefix!2741 thiss!23823 rules!3307 lt!1239265))))

(assert (=> b!3604685 (isPrefix!2981 lt!1239269 lt!1239265)))

(declare-fun lt!1239268 () Unit!53992)

(assert (=> b!3604685 (= lt!1239268 (lemmaConcatTwoListThenFirstIsPrefix!1902 lt!1239269 suffix!1395))))

(assert (=> b!3604685 (= lt!1239265 (++!9434 lt!1239269 suffix!1395))))

(declare-fun b!3604686 () Bool)

(declare-fun e!2230690 () Bool)

(assert (=> b!3604686 (= e!2230694 e!2230690)))

(declare-fun res!1457338 () Bool)

(assert (=> b!3604686 (=> (not res!1457338) (not e!2230690))))

(declare-fun lt!1239272 () Rule!11036)

(declare-fun matchR!4946 (Regex!10377 List!38047) Bool)

(assert (=> b!3604686 (= res!1457338 (matchR!4946 (regex!5618 lt!1239272) (list!13978 (charsOf!3632 (_1!22044 lt!1239280)))))))

(declare-fun get!12286 (Option!7867) Rule!11036)

(assert (=> b!3604686 (= lt!1239272 (get!12286 lt!1239253))))

(declare-fun b!3604687 () Bool)

(declare-fun res!1457353 () Bool)

(assert (=> b!3604687 (=> (not res!1457353) (not e!2230687))))

(declare-fun contains!7300 (List!38049 Rule!11036) Bool)

(assert (=> b!3604687 (= res!1457353 (contains!7300 rules!3307 rule!403))))

(declare-fun b!3604688 () Bool)

(declare-fun res!1457339 () Bool)

(declare-fun e!2230701 () Bool)

(assert (=> b!3604688 (=> res!1457339 e!2230701)))

(declare-fun isEmpty!22383 (List!38047) Bool)

(assert (=> b!3604688 (= res!1457339 (isEmpty!22383 suffix!1395))))

(declare-fun b!3604689 () Bool)

(declare-fun res!1457352 () Bool)

(assert (=> b!3604689 (=> res!1457352 e!2230705)))

(assert (=> b!3604689 (= res!1457352 (not (matchR!4946 (regex!5618 (rule!8360 (_1!22044 lt!1239280))) lt!1239279)))))

(declare-fun b!3604690 () Bool)

(declare-fun res!1457336 () Bool)

(assert (=> b!3604690 (=> (not res!1457336) (not e!2230704))))

(assert (=> b!3604690 (= res!1457336 (isEmpty!22383 (_2!22044 lt!1239250)))))

(declare-fun b!3604691 () Bool)

(assert (=> b!3604691 (= e!2230683 (not (= lt!1239279 Nil!37923)))))

(declare-fun usedCharacters!832 (Regex!10377) List!38047)

(assert (=> b!3604691 (not (contains!7299 (usedCharacters!832 (regex!5618 (rule!8360 (_1!22044 lt!1239280)))) lt!1239277))))

(declare-fun lt!1239263 () Unit!53992)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!206 (LexerInterface!5207 List!38049 List!38049 Rule!11036 Rule!11036 C!20940) Unit!53992)

(assert (=> b!3604691 (= lt!1239263 (lemmaSepRuleNotContainsCharContainedInANonSepRule!206 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8360 (_1!22044 lt!1239280)) lt!1239277))))

(declare-fun res!1457342 () Bool)

(assert (=> start!335342 (=> (not res!1457342) (not e!2230687))))

(get-info :version)

(assert (=> start!335342 (= res!1457342 ((_ is Lexer!5205) thiss!23823))))

(assert (=> start!335342 e!2230687))

(declare-fun e!2230696 () Bool)

(assert (=> start!335342 e!2230696))

(assert (=> start!335342 e!2230688))

(assert (=> start!335342 true))

(declare-fun inv!51289 (Token!10602) Bool)

(assert (=> start!335342 (and (inv!51289 token!511) e!2230695)))

(assert (=> start!335342 e!2230689))

(declare-fun e!2230693 () Bool)

(assert (=> start!335342 e!2230693))

(declare-fun b!3604683 () Bool)

(declare-fun res!1457341 () Bool)

(assert (=> b!3604683 (=> (not res!1457341) (not e!2230704))))

(assert (=> b!3604683 (= res!1457341 (= (rule!8360 token!511) rule!403))))

(declare-fun tp!1102354 () Bool)

(declare-fun b!3604692 () Bool)

(declare-fun e!2230691 () Bool)

(declare-fun e!2230710 () Bool)

(assert (=> b!3604692 (= e!2230691 (and tp!1102354 (inv!51285 (tag!6316 (h!43345 rules!3307))) (inv!51288 (transformation!5618 (h!43345 rules!3307))) e!2230710))))

(declare-fun b!3604693 () Bool)

(declare-fun res!1457337 () Bool)

(assert (=> b!3604693 (=> res!1457337 e!2230707)))

(declare-fun sepAndNonSepRulesDisjointChars!1788 (List!38049 List!38049) Bool)

(assert (=> b!3604693 (= res!1457337 (not (sepAndNonSepRulesDisjointChars!1788 rules!3307 rules!3307)))))

(declare-fun b!3604694 () Bool)

(assert (=> b!3604694 (= e!2230690 (= (rule!8360 (_1!22044 lt!1239280)) lt!1239272))))

(declare-fun b!3604695 () Bool)

(declare-fun e!2230698 () Unit!53992)

(declare-fun Unit!53994 () Unit!53992)

(assert (=> b!3604695 (= e!2230698 Unit!53994)))

(declare-fun b!3604696 () Bool)

(declare-fun tp!1102356 () Bool)

(assert (=> b!3604696 (= e!2230696 (and e!2230691 tp!1102356))))

(declare-fun b!3604697 () Bool)

(declare-fun res!1457350 () Bool)

(assert (=> b!3604697 (=> res!1457350 e!2230683)))

(declare-fun lt!1239267 () Bool)

(assert (=> b!3604697 (= res!1457350 lt!1239267)))

(declare-fun b!3604698 () Bool)

(assert (=> b!3604698 (= e!2230687 e!2230702)))

(declare-fun res!1457340 () Bool)

(assert (=> b!3604698 (=> (not res!1457340) (not e!2230702))))

(declare-fun isDefined!6099 (Option!7866) Bool)

(assert (=> b!3604698 (= res!1457340 (isDefined!6099 lt!1239255))))

(assert (=> b!3604698 (= lt!1239255 (maxPrefix!2741 thiss!23823 rules!3307 lt!1239269))))

(assert (=> b!3604698 (= lt!1239269 (list!13978 (charsOf!3632 token!511)))))

(declare-fun b!3604699 () Bool)

(declare-fun Unit!53995 () Unit!53992)

(assert (=> b!3604699 (= e!2230698 Unit!53995)))

(declare-fun lt!1239271 () Unit!53992)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!602 (Regex!10377 List!38047 C!20940) Unit!53992)

(assert (=> b!3604699 (= lt!1239271 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!602 (regex!5618 rule!403) lt!1239269 lt!1239277))))

(assert (=> b!3604699 false))

(declare-fun e!2230699 () Bool)

(assert (=> b!3604700 (= e!2230699 (and tp!1102351 tp!1102349))))

(declare-fun b!3604701 () Bool)

(declare-fun res!1457348 () Bool)

(assert (=> b!3604701 (=> (not res!1457348) (not e!2230687))))

(declare-fun rulesInvariant!4604 (LexerInterface!5207 List!38049) Bool)

(assert (=> b!3604701 (= res!1457348 (rulesInvariant!4604 thiss!23823 rules!3307))))

(declare-fun b!3604702 () Bool)

(assert (=> b!3604702 (= e!2230685 e!2230683)))

(declare-fun res!1457354 () Bool)

(assert (=> b!3604702 (=> res!1457354 e!2230683)))

(assert (=> b!3604702 (= res!1457354 (or (isSeparator!5618 rule!403) (not (isSeparator!5618 (rule!8360 (_1!22044 lt!1239280))))))))

(declare-fun lt!1239256 () Unit!53992)

(assert (=> b!3604702 (= lt!1239256 e!2230698)))

(declare-fun c!623729 () Bool)

(assert (=> b!3604702 (= c!623729 lt!1239267)))

(declare-fun lt!1239270 () List!38047)

(assert (=> b!3604702 (= lt!1239267 (not (contains!7299 lt!1239270 lt!1239277)))))

(declare-fun head!7568 (List!38047) C!20940)

(assert (=> b!3604702 (= lt!1239277 (head!7568 lt!1239279))))

(declare-fun b!3604703 () Bool)

(declare-fun res!1457347 () Bool)

(assert (=> b!3604703 (=> (not res!1457347) (not e!2230687))))

(declare-fun anOtherTypeRule!33 () Rule!11036)

(assert (=> b!3604703 (= res!1457347 (contains!7300 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3604704 () Bool)

(assert (=> b!3604704 (= e!2230701 e!2230707)))

(declare-fun res!1457334 () Bool)

(assert (=> b!3604704 (=> res!1457334 e!2230707)))

(declare-fun lt!1239266 () C!20940)

(assert (=> b!3604704 (= res!1457334 (contains!7299 lt!1239270 lt!1239266))))

(assert (=> b!3604704 (= lt!1239266 (head!7568 suffix!1395))))

(assert (=> b!3604704 (= lt!1239270 (usedCharacters!832 (regex!5618 rule!403)))))

(declare-fun b!3604705 () Bool)

(declare-fun res!1457345 () Bool)

(assert (=> b!3604705 (=> (not res!1457345) (not e!2230687))))

(assert (=> b!3604705 (= res!1457345 (not (= (isSeparator!5618 anOtherTypeRule!33) (isSeparator!5618 rule!403))))))

(declare-fun b!3604706 () Bool)

(declare-fun tp!1102359 () Bool)

(assert (=> b!3604706 (= e!2230693 (and tp!1102359 (inv!51285 (tag!6316 anOtherTypeRule!33)) (inv!51288 (transformation!5618 anOtherTypeRule!33)) e!2230699))))

(declare-fun e!2230706 () Bool)

(assert (=> b!3604707 (= e!2230706 (and tp!1102357 tp!1102352))))

(declare-fun b!3604708 () Bool)

(declare-fun tp!1102355 () Bool)

(assert (=> b!3604708 (= e!2230697 (and tp!1102355 (inv!51285 (tag!6316 (rule!8360 token!511))) (inv!51288 (transformation!5618 (rule!8360 token!511))) e!2230706))))

(declare-fun b!3604709 () Bool)

(declare-fun res!1457333 () Bool)

(assert (=> b!3604709 (=> res!1457333 e!2230707)))

(assert (=> b!3604709 (= res!1457333 (not (contains!7299 (usedCharacters!832 (regex!5618 anOtherTypeRule!33)) lt!1239266)))))

(assert (=> b!3604710 (= e!2230692 (and tp!1102350 tp!1102353))))

(assert (=> b!3604711 (= e!2230710 (and tp!1102360 tp!1102346))))

(declare-fun b!3604712 () Bool)

(assert (=> b!3604712 (= e!2230704 (not e!2230701))))

(declare-fun res!1457332 () Bool)

(assert (=> b!3604712 (=> res!1457332 e!2230701)))

(assert (=> b!3604712 (= res!1457332 (not (matchR!4946 (regex!5618 rule!403) lt!1239269)))))

(declare-fun ruleValid!1883 (LexerInterface!5207 Rule!11036) Bool)

(assert (=> b!3604712 (ruleValid!1883 thiss!23823 rule!403)))

(declare-fun lt!1239259 () Unit!53992)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1038 (LexerInterface!5207 Rule!11036 List!38049) Unit!53992)

(assert (=> b!3604712 (= lt!1239259 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1038 thiss!23823 rule!403 rules!3307))))

(assert (= (and start!335342 res!1457342) b!3604678))

(assert (= (and b!3604678 res!1457343) b!3604701))

(assert (= (and b!3604701 res!1457348) b!3604687))

(assert (= (and b!3604687 res!1457353) b!3604703))

(assert (= (and b!3604703 res!1457347) b!3604705))

(assert (= (and b!3604705 res!1457345) b!3604698))

(assert (= (and b!3604698 res!1457340) b!3604680))

(assert (= (and b!3604680 res!1457349) b!3604690))

(assert (= (and b!3604690 res!1457336) b!3604683))

(assert (= (and b!3604683 res!1457341) b!3604712))

(assert (= (and b!3604712 (not res!1457332)) b!3604688))

(assert (= (and b!3604688 (not res!1457339)) b!3604704))

(assert (= (and b!3604704 (not res!1457334)) b!3604709))

(assert (= (and b!3604709 (not res!1457333)) b!3604693))

(assert (= (and b!3604693 (not res!1457337)) b!3604685))

(assert (= (and b!3604685 res!1457346) b!3604686))

(assert (= (and b!3604686 res!1457338) b!3604694))

(assert (= (and b!3604685 (not res!1457355)) b!3604689))

(assert (= (and b!3604689 (not res!1457352)) b!3604676))

(assert (= (and b!3604676 (not res!1457351)) b!3604679))

(assert (= (and b!3604679 (not res!1457335)) b!3604702))

(assert (= (and b!3604702 c!623729) b!3604699))

(assert (= (and b!3604702 (not c!623729)) b!3604695))

(assert (= (and b!3604702 (not res!1457354)) b!3604684))

(assert (= (and b!3604684 (not res!1457344)) b!3604697))

(assert (= (and b!3604697 (not res!1457350)) b!3604691))

(assert (= b!3604692 b!3604711))

(assert (= b!3604696 b!3604692))

(assert (= (and start!335342 ((_ is Cons!37925) rules!3307)) b!3604696))

(assert (= (and start!335342 ((_ is Cons!37923) suffix!1395)) b!3604681))

(assert (= b!3604708 b!3604707))

(assert (= b!3604682 b!3604708))

(assert (= start!335342 b!3604682))

(assert (= b!3604677 b!3604710))

(assert (= start!335342 b!3604677))

(assert (= b!3604706 b!3604700))

(assert (= start!335342 b!3604706))

(declare-fun m!4101211 () Bool)

(assert (=> b!3604684 m!4101211))

(declare-fun m!4101213 () Bool)

(assert (=> b!3604686 m!4101213))

(assert (=> b!3604686 m!4101213))

(declare-fun m!4101215 () Bool)

(assert (=> b!3604686 m!4101215))

(assert (=> b!3604686 m!4101215))

(declare-fun m!4101217 () Bool)

(assert (=> b!3604686 m!4101217))

(declare-fun m!4101219 () Bool)

(assert (=> b!3604686 m!4101219))

(declare-fun m!4101221 () Bool)

(assert (=> b!3604676 m!4101221))

(declare-fun m!4101223 () Bool)

(assert (=> b!3604676 m!4101223))

(declare-fun m!4101225 () Bool)

(assert (=> b!3604676 m!4101225))

(assert (=> b!3604676 m!4101221))

(declare-fun m!4101227 () Bool)

(assert (=> b!3604676 m!4101227))

(declare-fun m!4101229 () Bool)

(assert (=> b!3604676 m!4101229))

(declare-fun m!4101231 () Bool)

(assert (=> b!3604676 m!4101231))

(declare-fun m!4101233 () Bool)

(assert (=> b!3604701 m!4101233))

(declare-fun m!4101235 () Bool)

(assert (=> b!3604679 m!4101235))

(declare-fun m!4101237 () Bool)

(assert (=> b!3604679 m!4101237))

(declare-fun m!4101239 () Bool)

(assert (=> b!3604679 m!4101239))

(declare-fun m!4101241 () Bool)

(assert (=> b!3604679 m!4101241))

(declare-fun m!4101243 () Bool)

(assert (=> b!3604679 m!4101243))

(declare-fun m!4101245 () Bool)

(assert (=> b!3604679 m!4101245))

(assert (=> b!3604679 m!4101241))

(declare-fun m!4101247 () Bool)

(assert (=> b!3604679 m!4101247))

(declare-fun m!4101249 () Bool)

(assert (=> b!3604706 m!4101249))

(declare-fun m!4101251 () Bool)

(assert (=> b!3604706 m!4101251))

(declare-fun m!4101253 () Bool)

(assert (=> b!3604703 m!4101253))

(declare-fun m!4101255 () Bool)

(assert (=> b!3604702 m!4101255))

(declare-fun m!4101257 () Bool)

(assert (=> b!3604702 m!4101257))

(declare-fun m!4101259 () Bool)

(assert (=> b!3604699 m!4101259))

(declare-fun m!4101261 () Bool)

(assert (=> b!3604692 m!4101261))

(declare-fun m!4101263 () Bool)

(assert (=> b!3604692 m!4101263))

(declare-fun m!4101265 () Bool)

(assert (=> b!3604687 m!4101265))

(declare-fun m!4101267 () Bool)

(assert (=> b!3604704 m!4101267))

(declare-fun m!4101269 () Bool)

(assert (=> b!3604704 m!4101269))

(declare-fun m!4101271 () Bool)

(assert (=> b!3604704 m!4101271))

(declare-fun m!4101273 () Bool)

(assert (=> b!3604712 m!4101273))

(declare-fun m!4101275 () Bool)

(assert (=> b!3604712 m!4101275))

(declare-fun m!4101277 () Bool)

(assert (=> b!3604712 m!4101277))

(declare-fun m!4101279 () Bool)

(assert (=> b!3604691 m!4101279))

(assert (=> b!3604691 m!4101279))

(declare-fun m!4101281 () Bool)

(assert (=> b!3604691 m!4101281))

(declare-fun m!4101283 () Bool)

(assert (=> b!3604691 m!4101283))

(declare-fun m!4101285 () Bool)

(assert (=> b!3604690 m!4101285))

(declare-fun m!4101287 () Bool)

(assert (=> b!3604688 m!4101287))

(declare-fun m!4101289 () Bool)

(assert (=> b!3604689 m!4101289))

(declare-fun m!4101291 () Bool)

(assert (=> b!3604698 m!4101291))

(declare-fun m!4101293 () Bool)

(assert (=> b!3604698 m!4101293))

(declare-fun m!4101295 () Bool)

(assert (=> b!3604698 m!4101295))

(assert (=> b!3604698 m!4101295))

(declare-fun m!4101297 () Bool)

(assert (=> b!3604698 m!4101297))

(declare-fun m!4101299 () Bool)

(assert (=> b!3604693 m!4101299))

(declare-fun m!4101301 () Bool)

(assert (=> b!3604685 m!4101301))

(declare-fun m!4101303 () Bool)

(assert (=> b!3604685 m!4101303))

(declare-fun m!4101305 () Bool)

(assert (=> b!3604685 m!4101305))

(declare-fun m!4101307 () Bool)

(assert (=> b!3604685 m!4101307))

(declare-fun m!4101309 () Bool)

(assert (=> b!3604685 m!4101309))

(declare-fun m!4101311 () Bool)

(assert (=> b!3604685 m!4101311))

(assert (=> b!3604685 m!4101213))

(declare-fun m!4101313 () Bool)

(assert (=> b!3604685 m!4101313))

(declare-fun m!4101315 () Bool)

(assert (=> b!3604685 m!4101315))

(declare-fun m!4101317 () Bool)

(assert (=> b!3604685 m!4101317))

(declare-fun m!4101319 () Bool)

(assert (=> b!3604685 m!4101319))

(declare-fun m!4101321 () Bool)

(assert (=> b!3604685 m!4101321))

(declare-fun m!4101323 () Bool)

(assert (=> b!3604685 m!4101323))

(declare-fun m!4101325 () Bool)

(assert (=> b!3604685 m!4101325))

(assert (=> b!3604685 m!4101323))

(declare-fun m!4101327 () Bool)

(assert (=> b!3604685 m!4101327))

(declare-fun m!4101329 () Bool)

(assert (=> b!3604709 m!4101329))

(assert (=> b!3604709 m!4101329))

(declare-fun m!4101331 () Bool)

(assert (=> b!3604709 m!4101331))

(declare-fun m!4101333 () Bool)

(assert (=> b!3604678 m!4101333))

(declare-fun m!4101335 () Bool)

(assert (=> b!3604682 m!4101335))

(declare-fun m!4101337 () Bool)

(assert (=> b!3604708 m!4101337))

(declare-fun m!4101339 () Bool)

(assert (=> b!3604708 m!4101339))

(declare-fun m!4101341 () Bool)

(assert (=> b!3604680 m!4101341))

(declare-fun m!4101343 () Bool)

(assert (=> b!3604677 m!4101343))

(declare-fun m!4101345 () Bool)

(assert (=> b!3604677 m!4101345))

(declare-fun m!4101347 () Bool)

(assert (=> start!335342 m!4101347))

(check-sat (not b!3604702) (not start!335342) b_and!262295 (not b!3604685) (not b!3604686) b_and!262287 (not b!3604677) (not b_next!94101) (not b!3604706) (not b!3604681) (not b!3604687) (not b!3604701) (not b_next!94093) (not b!3604679) (not b_next!94089) (not b!3604691) (not b!3604708) (not b_next!94091) (not b!3604693) (not b!3604678) (not b_next!94095) (not b!3604692) (not b!3604698) (not b!3604709) (not b!3604696) (not b!3604699) (not b!3604703) (not b!3604690) (not b!3604704) (not b_next!94097) (not b!3604688) b_and!262285 tp_is_empty!17837 (not b_next!94103) (not b!3604676) (not b!3604680) b_and!262283 b_and!262293 (not b!3604712) b_and!262297 (not b!3604689) (not b_next!94099) b_and!262289 (not b!3604682) (not b!3604684) b_and!262291)
(check-sat (not b_next!94093) b_and!262295 (not b_next!94089) (not b_next!94091) b_and!262287 (not b_next!94095) (not b_next!94101) (not b_next!94097) b_and!262285 (not b_next!94103) b_and!262293 b_and!262283 b_and!262297 (not b_next!94099) b_and!262289 b_and!262291)
(get-model)

(declare-fun d!1061908 () Bool)

(declare-fun dynLambda!16387 (Int BalanceConc!22716) TokenValue!5848)

(assert (=> d!1061908 (= (apply!9124 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))) lt!1239257) (dynLambda!16387 (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280)))) lt!1239257))))

(declare-fun b_lambda!106645 () Bool)

(assert (=> (not b_lambda!106645) (not d!1061908)))

(declare-fun t!292750 () Bool)

(declare-fun tb!206465 () Bool)

(assert (=> (and b!3604710 (= (toValue!7902 (transformation!5618 rule!403)) (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292750) tb!206465))

(declare-fun result!251648 () Bool)

(assert (=> tb!206465 (= result!251648 (inv!21 (dynLambda!16387 (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280)))) lt!1239257)))))

(declare-fun m!4101387 () Bool)

(assert (=> tb!206465 m!4101387))

(assert (=> d!1061908 t!292750))

(declare-fun b_and!262307 () Bool)

(assert (= b_and!262283 (and (=> t!292750 result!251648) b_and!262307)))

(declare-fun tb!206467 () Bool)

(declare-fun t!292752 () Bool)

(assert (=> (and b!3604711 (= (toValue!7902 (transformation!5618 (h!43345 rules!3307))) (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292752) tb!206467))

(declare-fun result!251652 () Bool)

(assert (= result!251652 result!251648))

(assert (=> d!1061908 t!292752))

(declare-fun b_and!262309 () Bool)

(assert (= b_and!262287 (and (=> t!292752 result!251652) b_and!262309)))

(declare-fun tb!206469 () Bool)

(declare-fun t!292754 () Bool)

(assert (=> (and b!3604707 (= (toValue!7902 (transformation!5618 (rule!8360 token!511))) (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292754) tb!206469))

(declare-fun result!251654 () Bool)

(assert (= result!251654 result!251648))

(assert (=> d!1061908 t!292754))

(declare-fun b_and!262311 () Bool)

(assert (= b_and!262291 (and (=> t!292754 result!251654) b_and!262311)))

(declare-fun tb!206471 () Bool)

(declare-fun t!292756 () Bool)

(assert (=> (and b!3604700 (= (toValue!7902 (transformation!5618 anOtherTypeRule!33)) (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292756) tb!206471))

(declare-fun result!251656 () Bool)

(assert (= result!251656 result!251648))

(assert (=> d!1061908 t!292756))

(declare-fun b_and!262313 () Bool)

(assert (= b_and!262295 (and (=> t!292756 result!251656) b_and!262313)))

(declare-fun m!4101389 () Bool)

(assert (=> d!1061908 m!4101389))

(assert (=> b!3604676 d!1061908))

(declare-fun d!1061916 () Bool)

(declare-fun lt!1239292 () Int)

(assert (=> d!1061916 (= lt!1239292 (size!28905 (list!13978 lt!1239257)))))

(declare-fun size!28906 (Conc!11551) Int)

(assert (=> d!1061916 (= lt!1239292 (size!28906 (c!623730 lt!1239257)))))

(assert (=> d!1061916 (= (size!28904 lt!1239257) lt!1239292)))

(declare-fun bs!570660 () Bool)

(assert (= bs!570660 d!1061916))

(assert (=> bs!570660 m!4101303))

(assert (=> bs!570660 m!4101303))

(declare-fun m!4101401 () Bool)

(assert (=> bs!570660 m!4101401))

(declare-fun m!4101403 () Bool)

(assert (=> bs!570660 m!4101403))

(assert (=> b!3604676 d!1061916))

(declare-fun d!1061926 () Bool)

(assert (=> d!1061926 (= (size!28903 (_1!22044 lt!1239280)) (size!28905 (originalCharacters!6332 (_1!22044 lt!1239280))))))

(declare-fun Unit!53996 () Unit!53992)

(assert (=> d!1061926 (= (lemmaCharactersSize!671 (_1!22044 lt!1239280)) Unit!53996)))

(declare-fun bs!570661 () Bool)

(assert (= bs!570661 d!1061926))

(declare-fun m!4101405 () Bool)

(assert (=> bs!570661 m!4101405))

(assert (=> b!3604676 d!1061926))

(declare-fun d!1061928 () Bool)

(declare-fun fromListB!1928 (List!38047) BalanceConc!22716)

(assert (=> d!1061928 (= (seqFromList!4171 (originalCharacters!6332 (_1!22044 lt!1239280))) (fromListB!1928 (originalCharacters!6332 (_1!22044 lt!1239280))))))

(declare-fun bs!570662 () Bool)

(assert (= bs!570662 d!1061928))

(declare-fun m!4101407 () Bool)

(assert (=> bs!570662 m!4101407))

(assert (=> b!3604676 d!1061928))

(declare-fun b!3604915 () Bool)

(declare-fun e!2230834 () Bool)

(assert (=> b!3604915 (= e!2230834 true)))

(declare-fun d!1061930 () Bool)

(assert (=> d!1061930 e!2230834))

(assert (= d!1061930 b!3604915))

(declare-fun order!20701 () Int)

(declare-fun order!20699 () Int)

(declare-fun lambda!124014 () Int)

(declare-fun dynLambda!16388 (Int Int) Int)

(declare-fun dynLambda!16389 (Int Int) Int)

(assert (=> b!3604915 (< (dynLambda!16388 order!20699 (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) (dynLambda!16389 order!20701 lambda!124014))))

(declare-fun order!20703 () Int)

(declare-fun dynLambda!16390 (Int Int) Int)

(assert (=> b!3604915 (< (dynLambda!16390 order!20703 (toChars!7761 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) (dynLambda!16389 order!20701 lambda!124014))))

(assert (=> d!1061930 (= (dynLambda!16387 (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280)))) lt!1239257) (dynLambda!16387 (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280)))) (seqFromList!4171 (originalCharacters!6332 (_1!22044 lt!1239280)))))))

(declare-fun lt!1239333 () Unit!53992)

(declare-fun Forall2of!307 (Int BalanceConc!22716 BalanceConc!22716) Unit!53992)

(assert (=> d!1061930 (= lt!1239333 (Forall2of!307 lambda!124014 lt!1239257 (seqFromList!4171 (originalCharacters!6332 (_1!22044 lt!1239280)))))))

(assert (=> d!1061930 (= (list!13978 lt!1239257) (list!13978 (seqFromList!4171 (originalCharacters!6332 (_1!22044 lt!1239280)))))))

(assert (=> d!1061930 (= (lemmaEqSameImage!809 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))) lt!1239257 (seqFromList!4171 (originalCharacters!6332 (_1!22044 lt!1239280)))) lt!1239333)))

(declare-fun b_lambda!106661 () Bool)

(assert (=> (not b_lambda!106661) (not d!1061930)))

(assert (=> d!1061930 t!292750))

(declare-fun b_and!262371 () Bool)

(assert (= b_and!262307 (and (=> t!292750 result!251648) b_and!262371)))

(assert (=> d!1061930 t!292752))

(declare-fun b_and!262373 () Bool)

(assert (= b_and!262309 (and (=> t!292752 result!251652) b_and!262373)))

(assert (=> d!1061930 t!292754))

(declare-fun b_and!262375 () Bool)

(assert (= b_and!262311 (and (=> t!292754 result!251654) b_and!262375)))

(assert (=> d!1061930 t!292756))

(declare-fun b_and!262377 () Bool)

(assert (= b_and!262313 (and (=> t!292756 result!251656) b_and!262377)))

(declare-fun b_lambda!106663 () Bool)

(assert (=> (not b_lambda!106663) (not d!1061930)))

(declare-fun tb!206505 () Bool)

(declare-fun t!292790 () Bool)

(assert (=> (and b!3604710 (= (toValue!7902 (transformation!5618 rule!403)) (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292790) tb!206505))

(declare-fun result!251692 () Bool)

(assert (=> tb!206505 (= result!251692 (inv!21 (dynLambda!16387 (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280)))) (seqFromList!4171 (originalCharacters!6332 (_1!22044 lt!1239280))))))))

(declare-fun m!4101561 () Bool)

(assert (=> tb!206505 m!4101561))

(assert (=> d!1061930 t!292790))

(declare-fun b_and!262379 () Bool)

(assert (= b_and!262371 (and (=> t!292790 result!251692) b_and!262379)))

(declare-fun t!292792 () Bool)

(declare-fun tb!206507 () Bool)

(assert (=> (and b!3604711 (= (toValue!7902 (transformation!5618 (h!43345 rules!3307))) (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292792) tb!206507))

(declare-fun result!251694 () Bool)

(assert (= result!251694 result!251692))

(assert (=> d!1061930 t!292792))

(declare-fun b_and!262381 () Bool)

(assert (= b_and!262373 (and (=> t!292792 result!251694) b_and!262381)))

(declare-fun tb!206509 () Bool)

(declare-fun t!292794 () Bool)

(assert (=> (and b!3604707 (= (toValue!7902 (transformation!5618 (rule!8360 token!511))) (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292794) tb!206509))

(declare-fun result!251696 () Bool)

(assert (= result!251696 result!251692))

(assert (=> d!1061930 t!292794))

(declare-fun b_and!262383 () Bool)

(assert (= b_and!262375 (and (=> t!292794 result!251696) b_and!262383)))

(declare-fun tb!206511 () Bool)

(declare-fun t!292796 () Bool)

(assert (=> (and b!3604700 (= (toValue!7902 (transformation!5618 anOtherTypeRule!33)) (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292796) tb!206511))

(declare-fun result!251698 () Bool)

(assert (= result!251698 result!251692))

(assert (=> d!1061930 t!292796))

(declare-fun b_and!262385 () Bool)

(assert (= b_and!262377 (and (=> t!292796 result!251698) b_and!262385)))

(assert (=> d!1061930 m!4101221))

(declare-fun m!4101563 () Bool)

(assert (=> d!1061930 m!4101563))

(assert (=> d!1061930 m!4101221))

(declare-fun m!4101565 () Bool)

(assert (=> d!1061930 m!4101565))

(assert (=> d!1061930 m!4101303))

(assert (=> d!1061930 m!4101389))

(assert (=> d!1061930 m!4101221))

(declare-fun m!4101567 () Bool)

(assert (=> d!1061930 m!4101567))

(assert (=> b!3604676 d!1061930))

(declare-fun b!3604932 () Bool)

(declare-fun e!2230844 () Bool)

(assert (=> b!3604932 (= e!2230844 true)))

(declare-fun d!1061980 () Bool)

(assert (=> d!1061980 e!2230844))

(assert (= d!1061980 b!3604932))

(declare-fun order!20705 () Int)

(declare-fun lambda!124017 () Int)

(declare-fun dynLambda!16395 (Int Int) Int)

(assert (=> b!3604932 (< (dynLambda!16388 order!20699 (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) (dynLambda!16395 order!20705 lambda!124017))))

(assert (=> b!3604932 (< (dynLambda!16390 order!20703 (toChars!7761 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) (dynLambda!16395 order!20705 lambda!124017))))

(declare-fun dynLambda!16396 (Int TokenValue!5848) BalanceConc!22716)

(assert (=> d!1061980 (= (list!13978 (dynLambda!16396 (toChars!7761 (transformation!5618 (rule!8360 (_1!22044 lt!1239280)))) (dynLambda!16387 (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280)))) lt!1239257))) (list!13978 lt!1239257))))

(declare-fun lt!1239340 () Unit!53992)

(declare-fun ForallOf!650 (Int BalanceConc!22716) Unit!53992)

(assert (=> d!1061980 (= lt!1239340 (ForallOf!650 lambda!124017 lt!1239257))))

(assert (=> d!1061980 (= (lemmaSemiInverse!1375 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))) lt!1239257) lt!1239340)))

(declare-fun b_lambda!106665 () Bool)

(assert (=> (not b_lambda!106665) (not d!1061980)))

(declare-fun t!292798 () Bool)

(declare-fun tb!206513 () Bool)

(assert (=> (and b!3604710 (= (toChars!7761 (transformation!5618 rule!403)) (toChars!7761 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292798) tb!206513))

(declare-fun tp!1102368 () Bool)

(declare-fun e!2230847 () Bool)

(declare-fun b!3604937 () Bool)

(declare-fun inv!51292 (Conc!11551) Bool)

(assert (=> b!3604937 (= e!2230847 (and (inv!51292 (c!623730 (dynLambda!16396 (toChars!7761 (transformation!5618 (rule!8360 (_1!22044 lt!1239280)))) (dynLambda!16387 (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280)))) lt!1239257)))) tp!1102368))))

(declare-fun result!251700 () Bool)

(declare-fun inv!51293 (BalanceConc!22716) Bool)

(assert (=> tb!206513 (= result!251700 (and (inv!51293 (dynLambda!16396 (toChars!7761 (transformation!5618 (rule!8360 (_1!22044 lt!1239280)))) (dynLambda!16387 (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280)))) lt!1239257))) e!2230847))))

(assert (= tb!206513 b!3604937))

(declare-fun m!4101583 () Bool)

(assert (=> b!3604937 m!4101583))

(declare-fun m!4101585 () Bool)

(assert (=> tb!206513 m!4101585))

(assert (=> d!1061980 t!292798))

(declare-fun b_and!262387 () Bool)

(assert (= b_and!262285 (and (=> t!292798 result!251700) b_and!262387)))

(declare-fun tb!206515 () Bool)

(declare-fun t!292800 () Bool)

(assert (=> (and b!3604711 (= (toChars!7761 (transformation!5618 (h!43345 rules!3307))) (toChars!7761 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292800) tb!206515))

(declare-fun result!251704 () Bool)

(assert (= result!251704 result!251700))

(assert (=> d!1061980 t!292800))

(declare-fun b_and!262389 () Bool)

(assert (= b_and!262289 (and (=> t!292800 result!251704) b_and!262389)))

(declare-fun tb!206517 () Bool)

(declare-fun t!292802 () Bool)

(assert (=> (and b!3604707 (= (toChars!7761 (transformation!5618 (rule!8360 token!511))) (toChars!7761 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292802) tb!206517))

(declare-fun result!251706 () Bool)

(assert (= result!251706 result!251700))

(assert (=> d!1061980 t!292802))

(declare-fun b_and!262391 () Bool)

(assert (= b_and!262293 (and (=> t!292802 result!251706) b_and!262391)))

(declare-fun tb!206519 () Bool)

(declare-fun t!292804 () Bool)

(assert (=> (and b!3604700 (= (toChars!7761 (transformation!5618 anOtherTypeRule!33)) (toChars!7761 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292804) tb!206519))

(declare-fun result!251708 () Bool)

(assert (= result!251708 result!251700))

(assert (=> d!1061980 t!292804))

(declare-fun b_and!262393 () Bool)

(assert (= b_and!262297 (and (=> t!292804 result!251708) b_and!262393)))

(declare-fun b_lambda!106667 () Bool)

(assert (=> (not b_lambda!106667) (not d!1061980)))

(assert (=> d!1061980 t!292750))

(declare-fun b_and!262395 () Bool)

(assert (= b_and!262379 (and (=> t!292750 result!251648) b_and!262395)))

(assert (=> d!1061980 t!292752))

(declare-fun b_and!262397 () Bool)

(assert (= b_and!262381 (and (=> t!292752 result!251652) b_and!262397)))

(assert (=> d!1061980 t!292754))

(declare-fun b_and!262399 () Bool)

(assert (= b_and!262383 (and (=> t!292754 result!251654) b_and!262399)))

(assert (=> d!1061980 t!292756))

(declare-fun b_and!262401 () Bool)

(assert (= b_and!262385 (and (=> t!292756 result!251656) b_and!262401)))

(declare-fun m!4101587 () Bool)

(assert (=> d!1061980 m!4101587))

(declare-fun m!4101589 () Bool)

(assert (=> d!1061980 m!4101589))

(assert (=> d!1061980 m!4101389))

(assert (=> d!1061980 m!4101303))

(declare-fun m!4101591 () Bool)

(assert (=> d!1061980 m!4101591))

(assert (=> d!1061980 m!4101389))

(assert (=> d!1061980 m!4101587))

(assert (=> b!3604676 d!1061980))

(declare-fun d!1061986 () Bool)

(declare-fun res!1457496 () Bool)

(declare-fun e!2230864 () Bool)

(assert (=> d!1061986 (=> res!1457496 e!2230864)))

(assert (=> d!1061986 (= res!1457496 (not ((_ is Cons!37925) rules!3307)))))

(assert (=> d!1061986 (= (sepAndNonSepRulesDisjointChars!1788 rules!3307 rules!3307) e!2230864)))

(declare-fun b!3604958 () Bool)

(declare-fun e!2230865 () Bool)

(assert (=> b!3604958 (= e!2230864 e!2230865)))

(declare-fun res!1457497 () Bool)

(assert (=> b!3604958 (=> (not res!1457497) (not e!2230865))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!815 (Rule!11036 List!38049) Bool)

(assert (=> b!3604958 (= res!1457497 (ruleDisjointCharsFromAllFromOtherType!815 (h!43345 rules!3307) rules!3307))))

(declare-fun b!3604959 () Bool)

(assert (=> b!3604959 (= e!2230865 (sepAndNonSepRulesDisjointChars!1788 rules!3307 (t!292740 rules!3307)))))

(assert (= (and d!1061986 (not res!1457496)) b!3604958))

(assert (= (and b!3604958 res!1457497) b!3604959))

(declare-fun m!4101613 () Bool)

(assert (=> b!3604958 m!4101613))

(declare-fun m!4101615 () Bool)

(assert (=> b!3604959 m!4101615))

(assert (=> b!3604693 d!1061986))

(declare-fun d!1061992 () Bool)

(declare-fun lt!1239350 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5419 (List!38049) (InoxSet Rule!11036))

(assert (=> d!1061992 (= lt!1239350 (select (content!5419 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2230870 () Bool)

(assert (=> d!1061992 (= lt!1239350 e!2230870)))

(declare-fun res!1457503 () Bool)

(assert (=> d!1061992 (=> (not res!1457503) (not e!2230870))))

(assert (=> d!1061992 (= res!1457503 ((_ is Cons!37925) rules!3307))))

(assert (=> d!1061992 (= (contains!7300 rules!3307 anOtherTypeRule!33) lt!1239350)))

(declare-fun b!3604964 () Bool)

(declare-fun e!2230871 () Bool)

(assert (=> b!3604964 (= e!2230870 e!2230871)))

(declare-fun res!1457502 () Bool)

(assert (=> b!3604964 (=> res!1457502 e!2230871)))

(assert (=> b!3604964 (= res!1457502 (= (h!43345 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3604965 () Bool)

(assert (=> b!3604965 (= e!2230871 (contains!7300 (t!292740 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1061992 res!1457503) b!3604964))

(assert (= (and b!3604964 (not res!1457502)) b!3604965))

(declare-fun m!4101617 () Bool)

(assert (=> d!1061992 m!4101617))

(declare-fun m!4101619 () Bool)

(assert (=> d!1061992 m!4101619))

(declare-fun m!4101621 () Bool)

(assert (=> b!3604965 m!4101621))

(assert (=> b!3604703 d!1061992))

(declare-fun d!1061994 () Bool)

(declare-fun lt!1239353 () Bool)

(declare-fun content!5420 (List!38047) (InoxSet C!20940))

(assert (=> d!1061994 (= lt!1239353 (select (content!5420 lt!1239270) lt!1239277))))

(declare-fun e!2230877 () Bool)

(assert (=> d!1061994 (= lt!1239353 e!2230877)))

(declare-fun res!1457509 () Bool)

(assert (=> d!1061994 (=> (not res!1457509) (not e!2230877))))

(assert (=> d!1061994 (= res!1457509 ((_ is Cons!37923) lt!1239270))))

(assert (=> d!1061994 (= (contains!7299 lt!1239270 lt!1239277) lt!1239353)))

(declare-fun b!3604970 () Bool)

(declare-fun e!2230876 () Bool)

(assert (=> b!3604970 (= e!2230877 e!2230876)))

(declare-fun res!1457508 () Bool)

(assert (=> b!3604970 (=> res!1457508 e!2230876)))

(assert (=> b!3604970 (= res!1457508 (= (h!43343 lt!1239270) lt!1239277))))

(declare-fun b!3604971 () Bool)

(assert (=> b!3604971 (= e!2230876 (contains!7299 (t!292738 lt!1239270) lt!1239277))))

(assert (= (and d!1061994 res!1457509) b!3604970))

(assert (= (and b!3604970 (not res!1457508)) b!3604971))

(declare-fun m!4101623 () Bool)

(assert (=> d!1061994 m!4101623))

(declare-fun m!4101625 () Bool)

(assert (=> d!1061994 m!4101625))

(declare-fun m!4101627 () Bool)

(assert (=> b!3604971 m!4101627))

(assert (=> b!3604702 d!1061994))

(declare-fun d!1061996 () Bool)

(assert (=> d!1061996 (= (head!7568 lt!1239279) (h!43343 lt!1239279))))

(assert (=> b!3604702 d!1061996))

(declare-fun d!1061998 () Bool)

(assert (=> d!1061998 (= (get!12285 lt!1239255) (v!37591 lt!1239255))))

(assert (=> b!3604680 d!1061998))

(declare-fun d!1062000 () Bool)

(declare-fun res!1457516 () Bool)

(declare-fun e!2230888 () Bool)

(assert (=> d!1062000 (=> (not res!1457516) (not e!2230888))))

(declare-fun rulesValid!2145 (LexerInterface!5207 List!38049) Bool)

(assert (=> d!1062000 (= res!1457516 (rulesValid!2145 thiss!23823 rules!3307))))

(assert (=> d!1062000 (= (rulesInvariant!4604 thiss!23823 rules!3307) e!2230888)))

(declare-fun b!3604986 () Bool)

(declare-datatypes ((List!38050 0))(
  ( (Nil!37926) (Cons!37926 (h!43346 String!42574) (t!292861 List!38050)) )
))
(declare-fun noDuplicateTag!2141 (LexerInterface!5207 List!38049 List!38050) Bool)

(assert (=> b!3604986 (= e!2230888 (noDuplicateTag!2141 thiss!23823 rules!3307 Nil!37926))))

(assert (= (and d!1062000 res!1457516) b!3604986))

(declare-fun m!4101629 () Bool)

(assert (=> d!1062000 m!4101629))

(declare-fun m!4101631 () Bool)

(assert (=> b!3604986 m!4101631))

(assert (=> b!3604701 d!1062000))

(declare-fun d!1062002 () Bool)

(declare-fun lt!1239370 () Int)

(assert (=> d!1062002 (>= lt!1239370 0)))

(declare-fun e!2230899 () Int)

(assert (=> d!1062002 (= lt!1239370 e!2230899)))

(declare-fun c!623785 () Bool)

(assert (=> d!1062002 (= c!623785 ((_ is Nil!37923) lt!1239279))))

(assert (=> d!1062002 (= (size!28905 lt!1239279) lt!1239370)))

(declare-fun b!3605001 () Bool)

(assert (=> b!3605001 (= e!2230899 0)))

(declare-fun b!3605002 () Bool)

(assert (=> b!3605002 (= e!2230899 (+ 1 (size!28905 (t!292738 lt!1239279))))))

(assert (= (and d!1062002 c!623785) b!3605001))

(assert (= (and d!1062002 (not c!623785)) b!3605002))

(declare-fun m!4101657 () Bool)

(assert (=> b!3605002 m!4101657))

(assert (=> b!3604679 d!1062002))

(declare-fun d!1062008 () Bool)

(assert (=> d!1062008 (= (seqFromList!4171 lt!1239279) (fromListB!1928 lt!1239279))))

(declare-fun bs!570669 () Bool)

(assert (= bs!570669 d!1062008))

(declare-fun m!4101659 () Bool)

(assert (=> bs!570669 m!4101659))

(assert (=> b!3604679 d!1062008))

(declare-fun d!1062010 () Bool)

(declare-fun lt!1239374 () List!38047)

(assert (=> d!1062010 (= (++!9434 lt!1239279 lt!1239374) lt!1239265)))

(declare-fun e!2230903 () List!38047)

(assert (=> d!1062010 (= lt!1239374 e!2230903)))

(declare-fun c!623788 () Bool)

(assert (=> d!1062010 (= c!623788 ((_ is Cons!37923) lt!1239279))))

(assert (=> d!1062010 (>= (size!28905 lt!1239265) (size!28905 lt!1239279))))

(assert (=> d!1062010 (= (getSuffix!1556 lt!1239265 lt!1239279) lt!1239374)))

(declare-fun b!3605016 () Bool)

(declare-fun tail!5589 (List!38047) List!38047)

(assert (=> b!3605016 (= e!2230903 (getSuffix!1556 (tail!5589 lt!1239265) (t!292738 lt!1239279)))))

(declare-fun b!3605017 () Bool)

(assert (=> b!3605017 (= e!2230903 lt!1239265)))

(assert (= (and d!1062010 c!623788) b!3605016))

(assert (= (and d!1062010 (not c!623788)) b!3605017))

(declare-fun m!4101693 () Bool)

(assert (=> d!1062010 m!4101693))

(declare-fun m!4101695 () Bool)

(assert (=> d!1062010 m!4101695))

(assert (=> d!1062010 m!4101245))

(declare-fun m!4101697 () Bool)

(assert (=> b!3605016 m!4101697))

(assert (=> b!3605016 m!4101697))

(declare-fun m!4101699 () Bool)

(assert (=> b!3605016 m!4101699))

(assert (=> b!3604679 d!1062010))

(declare-fun d!1062016 () Bool)

(assert (=> d!1062016 (= (apply!9124 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))) (seqFromList!4171 lt!1239279)) (dynLambda!16387 (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280)))) (seqFromList!4171 lt!1239279)))))

(declare-fun b_lambda!106669 () Bool)

(assert (=> (not b_lambda!106669) (not d!1062016)))

(declare-fun tb!206521 () Bool)

(declare-fun t!292806 () Bool)

(assert (=> (and b!3604710 (= (toValue!7902 (transformation!5618 rule!403)) (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292806) tb!206521))

(declare-fun result!251710 () Bool)

(assert (=> tb!206521 (= result!251710 (inv!21 (dynLambda!16387 (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280)))) (seqFromList!4171 lt!1239279))))))

(declare-fun m!4101703 () Bool)

(assert (=> tb!206521 m!4101703))

(assert (=> d!1062016 t!292806))

(declare-fun b_and!262403 () Bool)

(assert (= b_and!262395 (and (=> t!292806 result!251710) b_and!262403)))

(declare-fun tb!206523 () Bool)

(declare-fun t!292808 () Bool)

(assert (=> (and b!3604711 (= (toValue!7902 (transformation!5618 (h!43345 rules!3307))) (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292808) tb!206523))

(declare-fun result!251712 () Bool)

(assert (= result!251712 result!251710))

(assert (=> d!1062016 t!292808))

(declare-fun b_and!262405 () Bool)

(assert (= b_and!262397 (and (=> t!292808 result!251712) b_and!262405)))

(declare-fun tb!206525 () Bool)

(declare-fun t!292810 () Bool)

(assert (=> (and b!3604707 (= (toValue!7902 (transformation!5618 (rule!8360 token!511))) (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292810) tb!206525))

(declare-fun result!251714 () Bool)

(assert (= result!251714 result!251710))

(assert (=> d!1062016 t!292810))

(declare-fun b_and!262407 () Bool)

(assert (= b_and!262399 (and (=> t!292810 result!251714) b_and!262407)))

(declare-fun t!292812 () Bool)

(declare-fun tb!206527 () Bool)

(assert (=> (and b!3604700 (= (toValue!7902 (transformation!5618 anOtherTypeRule!33)) (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292812) tb!206527))

(declare-fun result!251716 () Bool)

(assert (= result!251716 result!251710))

(assert (=> d!1062016 t!292812))

(declare-fun b_and!262409 () Bool)

(assert (= b_and!262401 (and (=> t!292812 result!251716) b_and!262409)))

(assert (=> d!1062016 m!4101241))

(declare-fun m!4101705 () Bool)

(assert (=> d!1062016 m!4101705))

(assert (=> b!3604679 d!1062016))

(declare-fun d!1062020 () Bool)

(assert (=> d!1062020 (= (maxPrefixOneRule!1885 thiss!23823 (rule!8360 (_1!22044 lt!1239280)) lt!1239265) (Some!7865 (tuple2!37821 (Token!10603 (apply!9124 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))) (seqFromList!4171 lt!1239279)) (rule!8360 (_1!22044 lt!1239280)) (size!28905 lt!1239279) lt!1239279) (_2!22044 lt!1239280))))))

(declare-fun lt!1239378 () Unit!53992)

(declare-fun choose!21033 (LexerInterface!5207 List!38049 List!38047 List!38047 List!38047 Rule!11036) Unit!53992)

(assert (=> d!1062020 (= lt!1239378 (choose!21033 thiss!23823 rules!3307 lt!1239279 lt!1239265 (_2!22044 lt!1239280) (rule!8360 (_1!22044 lt!1239280))))))

(assert (=> d!1062020 (not (isEmpty!22382 rules!3307))))

(assert (=> d!1062020 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!957 thiss!23823 rules!3307 lt!1239279 lt!1239265 (_2!22044 lt!1239280) (rule!8360 (_1!22044 lt!1239280))) lt!1239378)))

(declare-fun bs!570672 () Bool)

(assert (= bs!570672 d!1062020))

(assert (=> bs!570672 m!4101241))

(assert (=> bs!570672 m!4101243))

(assert (=> bs!570672 m!4101237))

(declare-fun m!4101707 () Bool)

(assert (=> bs!570672 m!4101707))

(assert (=> bs!570672 m!4101333))

(assert (=> bs!570672 m!4101241))

(assert (=> bs!570672 m!4101245))

(assert (=> b!3604679 d!1062020))

(declare-fun b!3605036 () Bool)

(declare-fun res!1457543 () Bool)

(declare-fun e!2230914 () Bool)

(assert (=> b!3605036 (=> (not res!1457543) (not e!2230914))))

(declare-fun lt!1239391 () Option!7866)

(assert (=> b!3605036 (= res!1457543 (< (size!28905 (_2!22044 (get!12285 lt!1239391))) (size!28905 lt!1239265)))))

(declare-fun b!3605037 () Bool)

(declare-fun e!2230913 () Option!7866)

(declare-datatypes ((tuple2!37822 0))(
  ( (tuple2!37823 (_1!22045 List!38047) (_2!22045 List!38047)) )
))
(declare-fun lt!1239393 () tuple2!37822)

(assert (=> b!3605037 (= e!2230913 (Some!7865 (tuple2!37821 (Token!10603 (apply!9124 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))) (seqFromList!4171 (_1!22045 lt!1239393))) (rule!8360 (_1!22044 lt!1239280)) (size!28904 (seqFromList!4171 (_1!22045 lt!1239393))) (_1!22045 lt!1239393)) (_2!22045 lt!1239393))))))

(declare-fun lt!1239390 () Unit!53992)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!969 (Regex!10377 List!38047) Unit!53992)

(assert (=> b!3605037 (= lt!1239390 (longestMatchIsAcceptedByMatchOrIsEmpty!969 (regex!5618 (rule!8360 (_1!22044 lt!1239280))) lt!1239265))))

(declare-fun res!1457547 () Bool)

(declare-fun findLongestMatchInner!996 (Regex!10377 List!38047 Int List!38047 List!38047 Int) tuple2!37822)

(assert (=> b!3605037 (= res!1457547 (isEmpty!22383 (_1!22045 (findLongestMatchInner!996 (regex!5618 (rule!8360 (_1!22044 lt!1239280))) Nil!37923 (size!28905 Nil!37923) lt!1239265 lt!1239265 (size!28905 lt!1239265)))))))

(declare-fun e!2230915 () Bool)

(assert (=> b!3605037 (=> res!1457547 e!2230915)))

(assert (=> b!3605037 e!2230915))

(declare-fun lt!1239389 () Unit!53992)

(assert (=> b!3605037 (= lt!1239389 lt!1239390)))

(declare-fun lt!1239392 () Unit!53992)

(assert (=> b!3605037 (= lt!1239392 (lemmaSemiInverse!1375 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))) (seqFromList!4171 (_1!22045 lt!1239393))))))

(declare-fun b!3605038 () Bool)

(declare-fun res!1457542 () Bool)

(assert (=> b!3605038 (=> (not res!1457542) (not e!2230914))))

(assert (=> b!3605038 (= res!1457542 (= (++!9434 (list!13978 (charsOf!3632 (_1!22044 (get!12285 lt!1239391)))) (_2!22044 (get!12285 lt!1239391))) lt!1239265))))

(declare-fun b!3605039 () Bool)

(declare-fun res!1457545 () Bool)

(assert (=> b!3605039 (=> (not res!1457545) (not e!2230914))))

(assert (=> b!3605039 (= res!1457545 (= (value!180573 (_1!22044 (get!12285 lt!1239391))) (apply!9124 (transformation!5618 (rule!8360 (_1!22044 (get!12285 lt!1239391)))) (seqFromList!4171 (originalCharacters!6332 (_1!22044 (get!12285 lt!1239391)))))))))

(declare-fun b!3605040 () Bool)

(assert (=> b!3605040 (= e!2230913 None!7865)))

(declare-fun d!1062022 () Bool)

(declare-fun e!2230916 () Bool)

(assert (=> d!1062022 e!2230916))

(declare-fun res!1457544 () Bool)

(assert (=> d!1062022 (=> res!1457544 e!2230916)))

(declare-fun isEmpty!22385 (Option!7866) Bool)

(assert (=> d!1062022 (= res!1457544 (isEmpty!22385 lt!1239391))))

(assert (=> d!1062022 (= lt!1239391 e!2230913)))

(declare-fun c!623791 () Bool)

(assert (=> d!1062022 (= c!623791 (isEmpty!22383 (_1!22045 lt!1239393)))))

(declare-fun findLongestMatch!911 (Regex!10377 List!38047) tuple2!37822)

(assert (=> d!1062022 (= lt!1239393 (findLongestMatch!911 (regex!5618 (rule!8360 (_1!22044 lt!1239280))) lt!1239265))))

(assert (=> d!1062022 (ruleValid!1883 thiss!23823 (rule!8360 (_1!22044 lt!1239280)))))

(assert (=> d!1062022 (= (maxPrefixOneRule!1885 thiss!23823 (rule!8360 (_1!22044 lt!1239280)) lt!1239265) lt!1239391)))

(declare-fun b!3605041 () Bool)

(assert (=> b!3605041 (= e!2230915 (matchR!4946 (regex!5618 (rule!8360 (_1!22044 lt!1239280))) (_1!22045 (findLongestMatchInner!996 (regex!5618 (rule!8360 (_1!22044 lt!1239280))) Nil!37923 (size!28905 Nil!37923) lt!1239265 lt!1239265 (size!28905 lt!1239265)))))))

(declare-fun b!3605042 () Bool)

(assert (=> b!3605042 (= e!2230914 (= (size!28903 (_1!22044 (get!12285 lt!1239391))) (size!28905 (originalCharacters!6332 (_1!22044 (get!12285 lt!1239391))))))))

(declare-fun b!3605043 () Bool)

(assert (=> b!3605043 (= e!2230916 e!2230914)))

(declare-fun res!1457548 () Bool)

(assert (=> b!3605043 (=> (not res!1457548) (not e!2230914))))

(assert (=> b!3605043 (= res!1457548 (matchR!4946 (regex!5618 (rule!8360 (_1!22044 lt!1239280))) (list!13978 (charsOf!3632 (_1!22044 (get!12285 lt!1239391))))))))

(declare-fun b!3605044 () Bool)

(declare-fun res!1457546 () Bool)

(assert (=> b!3605044 (=> (not res!1457546) (not e!2230914))))

(assert (=> b!3605044 (= res!1457546 (= (rule!8360 (_1!22044 (get!12285 lt!1239391))) (rule!8360 (_1!22044 lt!1239280))))))

(assert (= (and d!1062022 c!623791) b!3605040))

(assert (= (and d!1062022 (not c!623791)) b!3605037))

(assert (= (and b!3605037 (not res!1457547)) b!3605041))

(assert (= (and d!1062022 (not res!1457544)) b!3605043))

(assert (= (and b!3605043 res!1457548) b!3605038))

(assert (= (and b!3605038 res!1457542) b!3605036))

(assert (= (and b!3605036 res!1457543) b!3605044))

(assert (= (and b!3605044 res!1457546) b!3605039))

(assert (= (and b!3605039 res!1457545) b!3605042))

(declare-fun m!4101709 () Bool)

(assert (=> b!3605036 m!4101709))

(declare-fun m!4101711 () Bool)

(assert (=> b!3605036 m!4101711))

(assert (=> b!3605036 m!4101695))

(assert (=> b!3605042 m!4101709))

(declare-fun m!4101713 () Bool)

(assert (=> b!3605042 m!4101713))

(declare-fun m!4101715 () Bool)

(assert (=> b!3605041 m!4101715))

(assert (=> b!3605041 m!4101695))

(assert (=> b!3605041 m!4101715))

(assert (=> b!3605041 m!4101695))

(declare-fun m!4101717 () Bool)

(assert (=> b!3605041 m!4101717))

(declare-fun m!4101719 () Bool)

(assert (=> b!3605041 m!4101719))

(assert (=> b!3605038 m!4101709))

(declare-fun m!4101721 () Bool)

(assert (=> b!3605038 m!4101721))

(assert (=> b!3605038 m!4101721))

(declare-fun m!4101723 () Bool)

(assert (=> b!3605038 m!4101723))

(assert (=> b!3605038 m!4101723))

(declare-fun m!4101725 () Bool)

(assert (=> b!3605038 m!4101725))

(declare-fun m!4101727 () Bool)

(assert (=> d!1062022 m!4101727))

(declare-fun m!4101729 () Bool)

(assert (=> d!1062022 m!4101729))

(declare-fun m!4101731 () Bool)

(assert (=> d!1062022 m!4101731))

(declare-fun m!4101733 () Bool)

(assert (=> d!1062022 m!4101733))

(declare-fun m!4101735 () Bool)

(assert (=> b!3605037 m!4101735))

(declare-fun m!4101737 () Bool)

(assert (=> b!3605037 m!4101737))

(assert (=> b!3605037 m!4101715))

(assert (=> b!3605037 m!4101695))

(assert (=> b!3605037 m!4101717))

(assert (=> b!3605037 m!4101737))

(declare-fun m!4101739 () Bool)

(assert (=> b!3605037 m!4101739))

(assert (=> b!3605037 m!4101695))

(assert (=> b!3605037 m!4101737))

(declare-fun m!4101741 () Bool)

(assert (=> b!3605037 m!4101741))

(declare-fun m!4101743 () Bool)

(assert (=> b!3605037 m!4101743))

(assert (=> b!3605037 m!4101737))

(declare-fun m!4101745 () Bool)

(assert (=> b!3605037 m!4101745))

(assert (=> b!3605037 m!4101715))

(assert (=> b!3605044 m!4101709))

(assert (=> b!3605043 m!4101709))

(assert (=> b!3605043 m!4101721))

(assert (=> b!3605043 m!4101721))

(assert (=> b!3605043 m!4101723))

(assert (=> b!3605043 m!4101723))

(declare-fun m!4101747 () Bool)

(assert (=> b!3605043 m!4101747))

(assert (=> b!3605039 m!4101709))

(declare-fun m!4101749 () Bool)

(assert (=> b!3605039 m!4101749))

(assert (=> b!3605039 m!4101749))

(declare-fun m!4101751 () Bool)

(assert (=> b!3605039 m!4101751))

(assert (=> b!3604679 d!1062022))

(declare-fun d!1062024 () Bool)

(assert (=> d!1062024 (= (_2!22044 lt!1239280) lt!1239260)))

(declare-fun lt!1239396 () Unit!53992)

(declare-fun choose!21035 (List!38047 List!38047 List!38047 List!38047 List!38047) Unit!53992)

(assert (=> d!1062024 (= lt!1239396 (choose!21035 lt!1239279 (_2!22044 lt!1239280) lt!1239279 lt!1239260 lt!1239265))))

(assert (=> d!1062024 (isPrefix!2981 lt!1239279 lt!1239265)))

(assert (=> d!1062024 (= (lemmaSamePrefixThenSameSuffix!1336 lt!1239279 (_2!22044 lt!1239280) lt!1239279 lt!1239260 lt!1239265) lt!1239396)))

(declare-fun bs!570673 () Bool)

(assert (= bs!570673 d!1062024))

(declare-fun m!4101753 () Bool)

(assert (=> bs!570673 m!4101753))

(assert (=> bs!570673 m!4101327))

(assert (=> b!3604679 d!1062024))

(declare-fun d!1062026 () Bool)

(assert (=> d!1062026 (= (isEmpty!22382 rules!3307) ((_ is Nil!37925) rules!3307))))

(assert (=> b!3604678 d!1062026))

(declare-fun d!1062028 () Bool)

(assert (=> d!1062028 (not (matchR!4946 (regex!5618 rule!403) lt!1239269))))

(declare-fun lt!1239399 () Unit!53992)

(declare-fun choose!21036 (Regex!10377 List!38047 C!20940) Unit!53992)

(assert (=> d!1062028 (= lt!1239399 (choose!21036 (regex!5618 rule!403) lt!1239269 lt!1239277))))

(declare-fun validRegex!4751 (Regex!10377) Bool)

(assert (=> d!1062028 (validRegex!4751 (regex!5618 rule!403))))

(assert (=> d!1062028 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!602 (regex!5618 rule!403) lt!1239269 lt!1239277) lt!1239399)))

(declare-fun bs!570674 () Bool)

(assert (= bs!570674 d!1062028))

(assert (=> bs!570674 m!4101273))

(declare-fun m!4101755 () Bool)

(assert (=> bs!570674 m!4101755))

(declare-fun m!4101757 () Bool)

(assert (=> bs!570674 m!4101757))

(assert (=> b!3604699 d!1062028))

(declare-fun d!1062030 () Bool)

(assert (=> d!1062030 (= (isDefined!6099 lt!1239255) (not (isEmpty!22385 lt!1239255)))))

(declare-fun bs!570675 () Bool)

(assert (= bs!570675 d!1062030))

(declare-fun m!4101759 () Bool)

(assert (=> bs!570675 m!4101759))

(assert (=> b!3604698 d!1062030))

(declare-fun b!3605071 () Bool)

(declare-fun res!1457567 () Bool)

(declare-fun e!2230928 () Bool)

(assert (=> b!3605071 (=> (not res!1457567) (not e!2230928))))

(declare-fun lt!1239447 () Option!7866)

(assert (=> b!3605071 (= res!1457567 (matchR!4946 (regex!5618 (rule!8360 (_1!22044 (get!12285 lt!1239447)))) (list!13978 (charsOf!3632 (_1!22044 (get!12285 lt!1239447))))))))

(declare-fun b!3605072 () Bool)

(declare-fun e!2230927 () Bool)

(assert (=> b!3605072 (= e!2230927 e!2230928)))

(declare-fun res!1457572 () Bool)

(assert (=> b!3605072 (=> (not res!1457572) (not e!2230928))))

(assert (=> b!3605072 (= res!1457572 (isDefined!6099 lt!1239447))))

(declare-fun bm!260596 () Bool)

(declare-fun call!260601 () Option!7866)

(assert (=> bm!260596 (= call!260601 (maxPrefixOneRule!1885 thiss!23823 (h!43345 rules!3307) lt!1239269))))

(declare-fun d!1062032 () Bool)

(assert (=> d!1062032 e!2230927))

(declare-fun res!1457569 () Bool)

(assert (=> d!1062032 (=> res!1457569 e!2230927)))

(assert (=> d!1062032 (= res!1457569 (isEmpty!22385 lt!1239447))))

(declare-fun e!2230929 () Option!7866)

(assert (=> d!1062032 (= lt!1239447 e!2230929)))

(declare-fun c!623797 () Bool)

(assert (=> d!1062032 (= c!623797 (and ((_ is Cons!37925) rules!3307) ((_ is Nil!37925) (t!292740 rules!3307))))))

(declare-fun lt!1239446 () Unit!53992)

(declare-fun lt!1239444 () Unit!53992)

(assert (=> d!1062032 (= lt!1239446 lt!1239444)))

(assert (=> d!1062032 (isPrefix!2981 lt!1239269 lt!1239269)))

(declare-fun lemmaIsPrefixRefl!1908 (List!38047 List!38047) Unit!53992)

(assert (=> d!1062032 (= lt!1239444 (lemmaIsPrefixRefl!1908 lt!1239269 lt!1239269))))

(declare-fun rulesValidInductive!1973 (LexerInterface!5207 List!38049) Bool)

(assert (=> d!1062032 (rulesValidInductive!1973 thiss!23823 rules!3307)))

(assert (=> d!1062032 (= (maxPrefix!2741 thiss!23823 rules!3307 lt!1239269) lt!1239447)))

(declare-fun b!3605073 () Bool)

(declare-fun res!1457573 () Bool)

(assert (=> b!3605073 (=> (not res!1457573) (not e!2230928))))

(assert (=> b!3605073 (= res!1457573 (< (size!28905 (_2!22044 (get!12285 lt!1239447))) (size!28905 lt!1239269)))))

(declare-fun b!3605074 () Bool)

(assert (=> b!3605074 (= e!2230928 (contains!7300 rules!3307 (rule!8360 (_1!22044 (get!12285 lt!1239447)))))))

(declare-fun b!3605075 () Bool)

(declare-fun res!1457570 () Bool)

(assert (=> b!3605075 (=> (not res!1457570) (not e!2230928))))

(assert (=> b!3605075 (= res!1457570 (= (++!9434 (list!13978 (charsOf!3632 (_1!22044 (get!12285 lt!1239447)))) (_2!22044 (get!12285 lt!1239447))) lt!1239269))))

(declare-fun b!3605076 () Bool)

(assert (=> b!3605076 (= e!2230929 call!260601)))

(declare-fun b!3605077 () Bool)

(declare-fun lt!1239448 () Option!7866)

(declare-fun lt!1239445 () Option!7866)

(assert (=> b!3605077 (= e!2230929 (ite (and ((_ is None!7865) lt!1239448) ((_ is None!7865) lt!1239445)) None!7865 (ite ((_ is None!7865) lt!1239445) lt!1239448 (ite ((_ is None!7865) lt!1239448) lt!1239445 (ite (>= (size!28903 (_1!22044 (v!37591 lt!1239448))) (size!28903 (_1!22044 (v!37591 lt!1239445)))) lt!1239448 lt!1239445)))))))

(assert (=> b!3605077 (= lt!1239448 call!260601)))

(assert (=> b!3605077 (= lt!1239445 (maxPrefix!2741 thiss!23823 (t!292740 rules!3307) lt!1239269))))

(declare-fun b!3605078 () Bool)

(declare-fun res!1457568 () Bool)

(assert (=> b!3605078 (=> (not res!1457568) (not e!2230928))))

(assert (=> b!3605078 (= res!1457568 (= (list!13978 (charsOf!3632 (_1!22044 (get!12285 lt!1239447)))) (originalCharacters!6332 (_1!22044 (get!12285 lt!1239447)))))))

(declare-fun b!3605079 () Bool)

(declare-fun res!1457571 () Bool)

(assert (=> b!3605079 (=> (not res!1457571) (not e!2230928))))

(assert (=> b!3605079 (= res!1457571 (= (value!180573 (_1!22044 (get!12285 lt!1239447))) (apply!9124 (transformation!5618 (rule!8360 (_1!22044 (get!12285 lt!1239447)))) (seqFromList!4171 (originalCharacters!6332 (_1!22044 (get!12285 lt!1239447)))))))))

(assert (= (and d!1062032 c!623797) b!3605076))

(assert (= (and d!1062032 (not c!623797)) b!3605077))

(assert (= (or b!3605076 b!3605077) bm!260596))

(assert (= (and d!1062032 (not res!1457569)) b!3605072))

(assert (= (and b!3605072 res!1457572) b!3605078))

(assert (= (and b!3605078 res!1457568) b!3605073))

(assert (= (and b!3605073 res!1457573) b!3605075))

(assert (= (and b!3605075 res!1457570) b!3605079))

(assert (= (and b!3605079 res!1457571) b!3605071))

(assert (= (and b!3605071 res!1457567) b!3605074))

(declare-fun m!4101761 () Bool)

(assert (=> b!3605078 m!4101761))

(declare-fun m!4101763 () Bool)

(assert (=> b!3605078 m!4101763))

(assert (=> b!3605078 m!4101763))

(declare-fun m!4101765 () Bool)

(assert (=> b!3605078 m!4101765))

(assert (=> b!3605073 m!4101761))

(declare-fun m!4101767 () Bool)

(assert (=> b!3605073 m!4101767))

(declare-fun m!4101769 () Bool)

(assert (=> b!3605073 m!4101769))

(declare-fun m!4101771 () Bool)

(assert (=> bm!260596 m!4101771))

(assert (=> b!3605075 m!4101761))

(assert (=> b!3605075 m!4101763))

(assert (=> b!3605075 m!4101763))

(assert (=> b!3605075 m!4101765))

(assert (=> b!3605075 m!4101765))

(declare-fun m!4101773 () Bool)

(assert (=> b!3605075 m!4101773))

(assert (=> b!3605074 m!4101761))

(declare-fun m!4101775 () Bool)

(assert (=> b!3605074 m!4101775))

(declare-fun m!4101777 () Bool)

(assert (=> d!1062032 m!4101777))

(declare-fun m!4101779 () Bool)

(assert (=> d!1062032 m!4101779))

(declare-fun m!4101781 () Bool)

(assert (=> d!1062032 m!4101781))

(declare-fun m!4101783 () Bool)

(assert (=> d!1062032 m!4101783))

(assert (=> b!3605071 m!4101761))

(assert (=> b!3605071 m!4101763))

(assert (=> b!3605071 m!4101763))

(assert (=> b!3605071 m!4101765))

(assert (=> b!3605071 m!4101765))

(declare-fun m!4101785 () Bool)

(assert (=> b!3605071 m!4101785))

(declare-fun m!4101787 () Bool)

(assert (=> b!3605072 m!4101787))

(assert (=> b!3605079 m!4101761))

(declare-fun m!4101789 () Bool)

(assert (=> b!3605079 m!4101789))

(assert (=> b!3605079 m!4101789))

(declare-fun m!4101791 () Bool)

(assert (=> b!3605079 m!4101791))

(declare-fun m!4101793 () Bool)

(assert (=> b!3605077 m!4101793))

(assert (=> b!3604698 d!1062032))

(declare-fun d!1062034 () Bool)

(declare-fun list!13980 (Conc!11551) List!38047)

(assert (=> d!1062034 (= (list!13978 (charsOf!3632 token!511)) (list!13980 (c!623730 (charsOf!3632 token!511))))))

(declare-fun bs!570676 () Bool)

(assert (= bs!570676 d!1062034))

(declare-fun m!4101795 () Bool)

(assert (=> bs!570676 m!4101795))

(assert (=> b!3604698 d!1062034))

(declare-fun d!1062036 () Bool)

(declare-fun lt!1239468 () BalanceConc!22716)

(assert (=> d!1062036 (= (list!13978 lt!1239468) (originalCharacters!6332 token!511))))

(assert (=> d!1062036 (= lt!1239468 (dynLambda!16396 (toChars!7761 (transformation!5618 (rule!8360 token!511))) (value!180573 token!511)))))

(assert (=> d!1062036 (= (charsOf!3632 token!511) lt!1239468)))

(declare-fun b_lambda!106671 () Bool)

(assert (=> (not b_lambda!106671) (not d!1062036)))

(declare-fun t!292814 () Bool)

(declare-fun tb!206529 () Bool)

(assert (=> (and b!3604710 (= (toChars!7761 (transformation!5618 rule!403)) (toChars!7761 (transformation!5618 (rule!8360 token!511)))) t!292814) tb!206529))

(declare-fun b!3605084 () Bool)

(declare-fun e!2230932 () Bool)

(declare-fun tp!1102369 () Bool)

(assert (=> b!3605084 (= e!2230932 (and (inv!51292 (c!623730 (dynLambda!16396 (toChars!7761 (transformation!5618 (rule!8360 token!511))) (value!180573 token!511)))) tp!1102369))))

(declare-fun result!251718 () Bool)

(assert (=> tb!206529 (= result!251718 (and (inv!51293 (dynLambda!16396 (toChars!7761 (transformation!5618 (rule!8360 token!511))) (value!180573 token!511))) e!2230932))))

(assert (= tb!206529 b!3605084))

(declare-fun m!4101847 () Bool)

(assert (=> b!3605084 m!4101847))

(declare-fun m!4101849 () Bool)

(assert (=> tb!206529 m!4101849))

(assert (=> d!1062036 t!292814))

(declare-fun b_and!262411 () Bool)

(assert (= b_and!262387 (and (=> t!292814 result!251718) b_and!262411)))

(declare-fun tb!206531 () Bool)

(declare-fun t!292816 () Bool)

(assert (=> (and b!3604711 (= (toChars!7761 (transformation!5618 (h!43345 rules!3307))) (toChars!7761 (transformation!5618 (rule!8360 token!511)))) t!292816) tb!206531))

(declare-fun result!251720 () Bool)

(assert (= result!251720 result!251718))

(assert (=> d!1062036 t!292816))

(declare-fun b_and!262413 () Bool)

(assert (= b_and!262389 (and (=> t!292816 result!251720) b_and!262413)))

(declare-fun t!292818 () Bool)

(declare-fun tb!206533 () Bool)

(assert (=> (and b!3604707 (= (toChars!7761 (transformation!5618 (rule!8360 token!511))) (toChars!7761 (transformation!5618 (rule!8360 token!511)))) t!292818) tb!206533))

(declare-fun result!251722 () Bool)

(assert (= result!251722 result!251718))

(assert (=> d!1062036 t!292818))

(declare-fun b_and!262415 () Bool)

(assert (= b_and!262391 (and (=> t!292818 result!251722) b_and!262415)))

(declare-fun tb!206535 () Bool)

(declare-fun t!292820 () Bool)

(assert (=> (and b!3604700 (= (toChars!7761 (transformation!5618 anOtherTypeRule!33)) (toChars!7761 (transformation!5618 (rule!8360 token!511)))) t!292820) tb!206535))

(declare-fun result!251724 () Bool)

(assert (= result!251724 result!251718))

(assert (=> d!1062036 t!292820))

(declare-fun b_and!262417 () Bool)

(assert (= b_and!262393 (and (=> t!292820 result!251724) b_and!262417)))

(declare-fun m!4101851 () Bool)

(assert (=> d!1062036 m!4101851))

(declare-fun m!4101853 () Bool)

(assert (=> d!1062036 m!4101853))

(assert (=> b!3604698 d!1062036))

(declare-fun d!1062040 () Bool)

(assert (=> d!1062040 (= (inv!51285 (tag!6316 rule!403)) (= (mod (str.len (value!180572 (tag!6316 rule!403))) 2) 0))))

(assert (=> b!3604677 d!1062040))

(declare-fun d!1062046 () Bool)

(declare-fun res!1457590 () Bool)

(declare-fun e!2230945 () Bool)

(assert (=> d!1062046 (=> (not res!1457590) (not e!2230945))))

(declare-fun semiInverseModEq!2389 (Int Int) Bool)

(assert (=> d!1062046 (= res!1457590 (semiInverseModEq!2389 (toChars!7761 (transformation!5618 rule!403)) (toValue!7902 (transformation!5618 rule!403))))))

(assert (=> d!1062046 (= (inv!51288 (transformation!5618 rule!403)) e!2230945)))

(declare-fun b!3605105 () Bool)

(declare-fun equivClasses!2288 (Int Int) Bool)

(assert (=> b!3605105 (= e!2230945 (equivClasses!2288 (toChars!7761 (transformation!5618 rule!403)) (toValue!7902 (transformation!5618 rule!403))))))

(assert (= (and d!1062046 res!1457590) b!3605105))

(declare-fun m!4101869 () Bool)

(assert (=> d!1062046 m!4101869))

(declare-fun m!4101871 () Bool)

(assert (=> b!3605105 m!4101871))

(assert (=> b!3604677 d!1062046))

(declare-fun d!1062052 () Bool)

(assert (=> d!1062052 (= (inv!51285 (tag!6316 (rule!8360 token!511))) (= (mod (str.len (value!180572 (tag!6316 (rule!8360 token!511)))) 2) 0))))

(assert (=> b!3604708 d!1062052))

(declare-fun d!1062054 () Bool)

(declare-fun res!1457595 () Bool)

(declare-fun e!2230948 () Bool)

(assert (=> d!1062054 (=> (not res!1457595) (not e!2230948))))

(assert (=> d!1062054 (= res!1457595 (semiInverseModEq!2389 (toChars!7761 (transformation!5618 (rule!8360 token!511))) (toValue!7902 (transformation!5618 (rule!8360 token!511)))))))

(assert (=> d!1062054 (= (inv!51288 (transformation!5618 (rule!8360 token!511))) e!2230948)))

(declare-fun b!3605110 () Bool)

(assert (=> b!3605110 (= e!2230948 (equivClasses!2288 (toChars!7761 (transformation!5618 (rule!8360 token!511))) (toValue!7902 (transformation!5618 (rule!8360 token!511)))))))

(assert (= (and d!1062054 res!1457595) b!3605110))

(declare-fun m!4101873 () Bool)

(assert (=> d!1062054 m!4101873))

(declare-fun m!4101875 () Bool)

(assert (=> b!3605110 m!4101875))

(assert (=> b!3604708 d!1062054))

(declare-fun d!1062056 () Bool)

(declare-fun lt!1239471 () Bool)

(assert (=> d!1062056 (= lt!1239471 (select (content!5419 rules!3307) rule!403))))

(declare-fun e!2230949 () Bool)

(assert (=> d!1062056 (= lt!1239471 e!2230949)))

(declare-fun res!1457597 () Bool)

(assert (=> d!1062056 (=> (not res!1457597) (not e!2230949))))

(assert (=> d!1062056 (= res!1457597 ((_ is Cons!37925) rules!3307))))

(assert (=> d!1062056 (= (contains!7300 rules!3307 rule!403) lt!1239471)))

(declare-fun b!3605111 () Bool)

(declare-fun e!2230950 () Bool)

(assert (=> b!3605111 (= e!2230949 e!2230950)))

(declare-fun res!1457596 () Bool)

(assert (=> b!3605111 (=> res!1457596 e!2230950)))

(assert (=> b!3605111 (= res!1457596 (= (h!43345 rules!3307) rule!403))))

(declare-fun b!3605112 () Bool)

(assert (=> b!3605112 (= e!2230950 (contains!7300 (t!292740 rules!3307) rule!403))))

(assert (= (and d!1062056 res!1457597) b!3605111))

(assert (= (and b!3605111 (not res!1457596)) b!3605112))

(assert (=> d!1062056 m!4101617))

(declare-fun m!4101877 () Bool)

(assert (=> d!1062056 m!4101877))

(declare-fun m!4101879 () Bool)

(assert (=> b!3605112 m!4101879))

(assert (=> b!3604687 d!1062056))

(declare-fun b!3605157 () Bool)

(declare-fun e!2230978 () Bool)

(declare-fun derivativeStep!3140 (Regex!10377 C!20940) Regex!10377)

(assert (=> b!3605157 (= e!2230978 (matchR!4946 (derivativeStep!3140 (regex!5618 lt!1239272) (head!7568 (list!13978 (charsOf!3632 (_1!22044 lt!1239280))))) (tail!5589 (list!13978 (charsOf!3632 (_1!22044 lt!1239280))))))))

(declare-fun b!3605158 () Bool)

(declare-fun e!2230977 () Bool)

(assert (=> b!3605158 (= e!2230977 (not (= (head!7568 (list!13978 (charsOf!3632 (_1!22044 lt!1239280)))) (c!623731 (regex!5618 lt!1239272)))))))

(declare-fun b!3605159 () Bool)

(declare-fun res!1457627 () Bool)

(declare-fun e!2230981 () Bool)

(assert (=> b!3605159 (=> res!1457627 e!2230981)))

(assert (=> b!3605159 (= res!1457627 (not ((_ is ElementMatch!10377) (regex!5618 lt!1239272))))))

(declare-fun e!2230979 () Bool)

(assert (=> b!3605159 (= e!2230979 e!2230981)))

(declare-fun b!3605160 () Bool)

(declare-fun e!2230982 () Bool)

(assert (=> b!3605160 (= e!2230982 e!2230977)))

(declare-fun res!1457626 () Bool)

(assert (=> b!3605160 (=> res!1457626 e!2230977)))

(declare-fun call!260609 () Bool)

(assert (=> b!3605160 (= res!1457626 call!260609)))

(declare-fun b!3605161 () Bool)

(declare-fun res!1457624 () Bool)

(declare-fun e!2230980 () Bool)

(assert (=> b!3605161 (=> (not res!1457624) (not e!2230980))))

(assert (=> b!3605161 (= res!1457624 (isEmpty!22383 (tail!5589 (list!13978 (charsOf!3632 (_1!22044 lt!1239280))))))))

(declare-fun b!3605163 () Bool)

(declare-fun e!2230976 () Bool)

(declare-fun lt!1239478 () Bool)

(assert (=> b!3605163 (= e!2230976 (= lt!1239478 call!260609))))

(declare-fun b!3605164 () Bool)

(declare-fun res!1457628 () Bool)

(assert (=> b!3605164 (=> res!1457628 e!2230981)))

(assert (=> b!3605164 (= res!1457628 e!2230980)))

(declare-fun res!1457625 () Bool)

(assert (=> b!3605164 (=> (not res!1457625) (not e!2230980))))

(assert (=> b!3605164 (= res!1457625 lt!1239478)))

(declare-fun b!3605165 () Bool)

(assert (=> b!3605165 (= e!2230976 e!2230979)))

(declare-fun c!623813 () Bool)

(assert (=> b!3605165 (= c!623813 ((_ is EmptyLang!10377) (regex!5618 lt!1239272)))))

(declare-fun d!1062058 () Bool)

(assert (=> d!1062058 e!2230976))

(declare-fun c!623812 () Bool)

(assert (=> d!1062058 (= c!623812 ((_ is EmptyExpr!10377) (regex!5618 lt!1239272)))))

(assert (=> d!1062058 (= lt!1239478 e!2230978)))

(declare-fun c!623814 () Bool)

(assert (=> d!1062058 (= c!623814 (isEmpty!22383 (list!13978 (charsOf!3632 (_1!22044 lt!1239280)))))))

(assert (=> d!1062058 (validRegex!4751 (regex!5618 lt!1239272))))

(assert (=> d!1062058 (= (matchR!4946 (regex!5618 lt!1239272) (list!13978 (charsOf!3632 (_1!22044 lt!1239280)))) lt!1239478)))

(declare-fun b!3605162 () Bool)

(declare-fun res!1457623 () Bool)

(assert (=> b!3605162 (=> (not res!1457623) (not e!2230980))))

(assert (=> b!3605162 (= res!1457623 (not call!260609))))

(declare-fun b!3605166 () Bool)

(declare-fun res!1457629 () Bool)

(assert (=> b!3605166 (=> res!1457629 e!2230977)))

(assert (=> b!3605166 (= res!1457629 (not (isEmpty!22383 (tail!5589 (list!13978 (charsOf!3632 (_1!22044 lt!1239280)))))))))

(declare-fun b!3605167 () Bool)

(assert (=> b!3605167 (= e!2230981 e!2230982)))

(declare-fun res!1457622 () Bool)

(assert (=> b!3605167 (=> (not res!1457622) (not e!2230982))))

(assert (=> b!3605167 (= res!1457622 (not lt!1239478))))

(declare-fun b!3605168 () Bool)

(declare-fun nullable!3591 (Regex!10377) Bool)

(assert (=> b!3605168 (= e!2230978 (nullable!3591 (regex!5618 lt!1239272)))))

(declare-fun b!3605169 () Bool)

(assert (=> b!3605169 (= e!2230980 (= (head!7568 (list!13978 (charsOf!3632 (_1!22044 lt!1239280)))) (c!623731 (regex!5618 lt!1239272))))))

(declare-fun bm!260604 () Bool)

(assert (=> bm!260604 (= call!260609 (isEmpty!22383 (list!13978 (charsOf!3632 (_1!22044 lt!1239280)))))))

(declare-fun b!3605170 () Bool)

(assert (=> b!3605170 (= e!2230979 (not lt!1239478))))

(assert (= (and d!1062058 c!623814) b!3605168))

(assert (= (and d!1062058 (not c!623814)) b!3605157))

(assert (= (and d!1062058 c!623812) b!3605163))

(assert (= (and d!1062058 (not c!623812)) b!3605165))

(assert (= (and b!3605165 c!623813) b!3605170))

(assert (= (and b!3605165 (not c!623813)) b!3605159))

(assert (= (and b!3605159 (not res!1457627)) b!3605164))

(assert (= (and b!3605164 res!1457625) b!3605162))

(assert (= (and b!3605162 res!1457623) b!3605161))

(assert (= (and b!3605161 res!1457624) b!3605169))

(assert (= (and b!3605164 (not res!1457628)) b!3605167))

(assert (= (and b!3605167 res!1457622) b!3605160))

(assert (= (and b!3605160 (not res!1457626)) b!3605166))

(assert (= (and b!3605166 (not res!1457629)) b!3605158))

(assert (= (or b!3605163 b!3605160 b!3605162) bm!260604))

(assert (=> b!3605166 m!4101215))

(declare-fun m!4101903 () Bool)

(assert (=> b!3605166 m!4101903))

(assert (=> b!3605166 m!4101903))

(declare-fun m!4101905 () Bool)

(assert (=> b!3605166 m!4101905))

(assert (=> b!3605158 m!4101215))

(declare-fun m!4101907 () Bool)

(assert (=> b!3605158 m!4101907))

(assert (=> b!3605157 m!4101215))

(assert (=> b!3605157 m!4101907))

(assert (=> b!3605157 m!4101907))

(declare-fun m!4101911 () Bool)

(assert (=> b!3605157 m!4101911))

(assert (=> b!3605157 m!4101215))

(assert (=> b!3605157 m!4101903))

(assert (=> b!3605157 m!4101911))

(assert (=> b!3605157 m!4101903))

(declare-fun m!4101913 () Bool)

(assert (=> b!3605157 m!4101913))

(assert (=> d!1062058 m!4101215))

(declare-fun m!4101915 () Bool)

(assert (=> d!1062058 m!4101915))

(declare-fun m!4101917 () Bool)

(assert (=> d!1062058 m!4101917))

(assert (=> b!3605161 m!4101215))

(assert (=> b!3605161 m!4101903))

(assert (=> b!3605161 m!4101903))

(assert (=> b!3605161 m!4101905))

(assert (=> b!3605169 m!4101215))

(assert (=> b!3605169 m!4101907))

(declare-fun m!4101919 () Bool)

(assert (=> b!3605168 m!4101919))

(assert (=> bm!260604 m!4101215))

(assert (=> bm!260604 m!4101915))

(assert (=> b!3604686 d!1062058))

(declare-fun d!1062082 () Bool)

(assert (=> d!1062082 (= (list!13978 (charsOf!3632 (_1!22044 lt!1239280))) (list!13980 (c!623730 (charsOf!3632 (_1!22044 lt!1239280)))))))

(declare-fun bs!570680 () Bool)

(assert (= bs!570680 d!1062082))

(declare-fun m!4101921 () Bool)

(assert (=> bs!570680 m!4101921))

(assert (=> b!3604686 d!1062082))

(declare-fun d!1062084 () Bool)

(declare-fun lt!1239482 () BalanceConc!22716)

(assert (=> d!1062084 (= (list!13978 lt!1239482) (originalCharacters!6332 (_1!22044 lt!1239280)))))

(assert (=> d!1062084 (= lt!1239482 (dynLambda!16396 (toChars!7761 (transformation!5618 (rule!8360 (_1!22044 lt!1239280)))) (value!180573 (_1!22044 lt!1239280))))))

(assert (=> d!1062084 (= (charsOf!3632 (_1!22044 lt!1239280)) lt!1239482)))

(declare-fun b_lambda!106673 () Bool)

(assert (=> (not b_lambda!106673) (not d!1062084)))

(declare-fun t!292822 () Bool)

(declare-fun tb!206537 () Bool)

(assert (=> (and b!3604710 (= (toChars!7761 (transformation!5618 rule!403)) (toChars!7761 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292822) tb!206537))

(declare-fun b!3605171 () Bool)

(declare-fun e!2230983 () Bool)

(declare-fun tp!1102370 () Bool)

(assert (=> b!3605171 (= e!2230983 (and (inv!51292 (c!623730 (dynLambda!16396 (toChars!7761 (transformation!5618 (rule!8360 (_1!22044 lt!1239280)))) (value!180573 (_1!22044 lt!1239280))))) tp!1102370))))

(declare-fun result!251726 () Bool)

(assert (=> tb!206537 (= result!251726 (and (inv!51293 (dynLambda!16396 (toChars!7761 (transformation!5618 (rule!8360 (_1!22044 lt!1239280)))) (value!180573 (_1!22044 lt!1239280)))) e!2230983))))

(assert (= tb!206537 b!3605171))

(declare-fun m!4101923 () Bool)

(assert (=> b!3605171 m!4101923))

(declare-fun m!4101925 () Bool)

(assert (=> tb!206537 m!4101925))

(assert (=> d!1062084 t!292822))

(declare-fun b_and!262419 () Bool)

(assert (= b_and!262411 (and (=> t!292822 result!251726) b_and!262419)))

(declare-fun tb!206539 () Bool)

(declare-fun t!292824 () Bool)

(assert (=> (and b!3604711 (= (toChars!7761 (transformation!5618 (h!43345 rules!3307))) (toChars!7761 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292824) tb!206539))

(declare-fun result!251728 () Bool)

(assert (= result!251728 result!251726))

(assert (=> d!1062084 t!292824))

(declare-fun b_and!262421 () Bool)

(assert (= b_and!262413 (and (=> t!292824 result!251728) b_and!262421)))

(declare-fun t!292826 () Bool)

(declare-fun tb!206541 () Bool)

(assert (=> (and b!3604707 (= (toChars!7761 (transformation!5618 (rule!8360 token!511))) (toChars!7761 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292826) tb!206541))

(declare-fun result!251730 () Bool)

(assert (= result!251730 result!251726))

(assert (=> d!1062084 t!292826))

(declare-fun b_and!262423 () Bool)

(assert (= b_and!262415 (and (=> t!292826 result!251730) b_and!262423)))

(declare-fun t!292828 () Bool)

(declare-fun tb!206543 () Bool)

(assert (=> (and b!3604700 (= (toChars!7761 (transformation!5618 anOtherTypeRule!33)) (toChars!7761 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292828) tb!206543))

(declare-fun result!251732 () Bool)

(assert (= result!251732 result!251726))

(assert (=> d!1062084 t!292828))

(declare-fun b_and!262425 () Bool)

(assert (= b_and!262417 (and (=> t!292828 result!251732) b_and!262425)))

(declare-fun m!4101927 () Bool)

(assert (=> d!1062084 m!4101927))

(declare-fun m!4101929 () Bool)

(assert (=> d!1062084 m!4101929))

(assert (=> b!3604686 d!1062084))

(declare-fun d!1062086 () Bool)

(assert (=> d!1062086 (= (get!12286 lt!1239253) (v!37592 lt!1239253))))

(assert (=> b!3604686 d!1062086))

(declare-fun d!1062088 () Bool)

(declare-fun res!1457634 () Bool)

(declare-fun e!2230989 () Bool)

(assert (=> d!1062088 (=> (not res!1457634) (not e!2230989))))

(assert (=> d!1062088 (= res!1457634 (not (isEmpty!22383 (originalCharacters!6332 token!511))))))

(assert (=> d!1062088 (= (inv!51289 token!511) e!2230989)))

(declare-fun b!3605182 () Bool)

(declare-fun res!1457635 () Bool)

(assert (=> b!3605182 (=> (not res!1457635) (not e!2230989))))

(assert (=> b!3605182 (= res!1457635 (= (originalCharacters!6332 token!511) (list!13978 (dynLambda!16396 (toChars!7761 (transformation!5618 (rule!8360 token!511))) (value!180573 token!511)))))))

(declare-fun b!3605183 () Bool)

(assert (=> b!3605183 (= e!2230989 (= (size!28903 token!511) (size!28905 (originalCharacters!6332 token!511))))))

(assert (= (and d!1062088 res!1457634) b!3605182))

(assert (= (and b!3605182 res!1457635) b!3605183))

(declare-fun b_lambda!106675 () Bool)

(assert (=> (not b_lambda!106675) (not b!3605182)))

(assert (=> b!3605182 t!292814))

(declare-fun b_and!262427 () Bool)

(assert (= b_and!262419 (and (=> t!292814 result!251718) b_and!262427)))

(assert (=> b!3605182 t!292816))

(declare-fun b_and!262429 () Bool)

(assert (= b_and!262421 (and (=> t!292816 result!251720) b_and!262429)))

(assert (=> b!3605182 t!292818))

(declare-fun b_and!262431 () Bool)

(assert (= b_and!262423 (and (=> t!292818 result!251722) b_and!262431)))

(assert (=> b!3605182 t!292820))

(declare-fun b_and!262433 () Bool)

(assert (= b_and!262425 (and (=> t!292820 result!251724) b_and!262433)))

(declare-fun m!4101935 () Bool)

(assert (=> d!1062088 m!4101935))

(assert (=> b!3605182 m!4101853))

(assert (=> b!3605182 m!4101853))

(declare-fun m!4101937 () Bool)

(assert (=> b!3605182 m!4101937))

(declare-fun m!4101939 () Bool)

(assert (=> b!3605183 m!4101939))

(assert (=> start!335342 d!1062088))

(declare-fun d!1062092 () Bool)

(assert (=> d!1062092 (= (inv!51285 (tag!6316 anOtherTypeRule!33)) (= (mod (str.len (value!180572 (tag!6316 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3604706 d!1062092))

(declare-fun d!1062094 () Bool)

(declare-fun res!1457636 () Bool)

(declare-fun e!2230990 () Bool)

(assert (=> d!1062094 (=> (not res!1457636) (not e!2230990))))

(assert (=> d!1062094 (= res!1457636 (semiInverseModEq!2389 (toChars!7761 (transformation!5618 anOtherTypeRule!33)) (toValue!7902 (transformation!5618 anOtherTypeRule!33))))))

(assert (=> d!1062094 (= (inv!51288 (transformation!5618 anOtherTypeRule!33)) e!2230990)))

(declare-fun b!3605184 () Bool)

(assert (=> b!3605184 (= e!2230990 (equivClasses!2288 (toChars!7761 (transformation!5618 anOtherTypeRule!33)) (toValue!7902 (transformation!5618 anOtherTypeRule!33))))))

(assert (= (and d!1062094 res!1457636) b!3605184))

(declare-fun m!4101941 () Bool)

(assert (=> d!1062094 m!4101941))

(declare-fun m!4101943 () Bool)

(assert (=> b!3605184 m!4101943))

(assert (=> b!3604706 d!1062094))

(declare-fun b!3605185 () Bool)

(declare-fun res!1457637 () Bool)

(declare-fun e!2230992 () Bool)

(assert (=> b!3605185 (=> (not res!1457637) (not e!2230992))))

(declare-fun lt!1239489 () Option!7866)

(assert (=> b!3605185 (= res!1457637 (matchR!4946 (regex!5618 (rule!8360 (_1!22044 (get!12285 lt!1239489)))) (list!13978 (charsOf!3632 (_1!22044 (get!12285 lt!1239489))))))))

(declare-fun b!3605186 () Bool)

(declare-fun e!2230991 () Bool)

(assert (=> b!3605186 (= e!2230991 e!2230992)))

(declare-fun res!1457642 () Bool)

(assert (=> b!3605186 (=> (not res!1457642) (not e!2230992))))

(assert (=> b!3605186 (= res!1457642 (isDefined!6099 lt!1239489))))

(declare-fun call!260610 () Option!7866)

(declare-fun bm!260605 () Bool)

(assert (=> bm!260605 (= call!260610 (maxPrefixOneRule!1885 thiss!23823 (h!43345 rules!3307) lt!1239265))))

(declare-fun d!1062096 () Bool)

(assert (=> d!1062096 e!2230991))

(declare-fun res!1457639 () Bool)

(assert (=> d!1062096 (=> res!1457639 e!2230991)))

(assert (=> d!1062096 (= res!1457639 (isEmpty!22385 lt!1239489))))

(declare-fun e!2230993 () Option!7866)

(assert (=> d!1062096 (= lt!1239489 e!2230993)))

(declare-fun c!623819 () Bool)

(assert (=> d!1062096 (= c!623819 (and ((_ is Cons!37925) rules!3307) ((_ is Nil!37925) (t!292740 rules!3307))))))

(declare-fun lt!1239488 () Unit!53992)

(declare-fun lt!1239486 () Unit!53992)

(assert (=> d!1062096 (= lt!1239488 lt!1239486)))

(assert (=> d!1062096 (isPrefix!2981 lt!1239265 lt!1239265)))

(assert (=> d!1062096 (= lt!1239486 (lemmaIsPrefixRefl!1908 lt!1239265 lt!1239265))))

(assert (=> d!1062096 (rulesValidInductive!1973 thiss!23823 rules!3307)))

(assert (=> d!1062096 (= (maxPrefix!2741 thiss!23823 rules!3307 lt!1239265) lt!1239489)))

(declare-fun b!3605187 () Bool)

(declare-fun res!1457643 () Bool)

(assert (=> b!3605187 (=> (not res!1457643) (not e!2230992))))

(assert (=> b!3605187 (= res!1457643 (< (size!28905 (_2!22044 (get!12285 lt!1239489))) (size!28905 lt!1239265)))))

(declare-fun b!3605188 () Bool)

(assert (=> b!3605188 (= e!2230992 (contains!7300 rules!3307 (rule!8360 (_1!22044 (get!12285 lt!1239489)))))))

(declare-fun b!3605189 () Bool)

(declare-fun res!1457640 () Bool)

(assert (=> b!3605189 (=> (not res!1457640) (not e!2230992))))

(assert (=> b!3605189 (= res!1457640 (= (++!9434 (list!13978 (charsOf!3632 (_1!22044 (get!12285 lt!1239489)))) (_2!22044 (get!12285 lt!1239489))) lt!1239265))))

(declare-fun b!3605190 () Bool)

(assert (=> b!3605190 (= e!2230993 call!260610)))

(declare-fun b!3605191 () Bool)

(declare-fun lt!1239490 () Option!7866)

(declare-fun lt!1239487 () Option!7866)

(assert (=> b!3605191 (= e!2230993 (ite (and ((_ is None!7865) lt!1239490) ((_ is None!7865) lt!1239487)) None!7865 (ite ((_ is None!7865) lt!1239487) lt!1239490 (ite ((_ is None!7865) lt!1239490) lt!1239487 (ite (>= (size!28903 (_1!22044 (v!37591 lt!1239490))) (size!28903 (_1!22044 (v!37591 lt!1239487)))) lt!1239490 lt!1239487)))))))

(assert (=> b!3605191 (= lt!1239490 call!260610)))

(assert (=> b!3605191 (= lt!1239487 (maxPrefix!2741 thiss!23823 (t!292740 rules!3307) lt!1239265))))

(declare-fun b!3605192 () Bool)

(declare-fun res!1457638 () Bool)

(assert (=> b!3605192 (=> (not res!1457638) (not e!2230992))))

(assert (=> b!3605192 (= res!1457638 (= (list!13978 (charsOf!3632 (_1!22044 (get!12285 lt!1239489)))) (originalCharacters!6332 (_1!22044 (get!12285 lt!1239489)))))))

(declare-fun b!3605193 () Bool)

(declare-fun res!1457641 () Bool)

(assert (=> b!3605193 (=> (not res!1457641) (not e!2230992))))

(assert (=> b!3605193 (= res!1457641 (= (value!180573 (_1!22044 (get!12285 lt!1239489))) (apply!9124 (transformation!5618 (rule!8360 (_1!22044 (get!12285 lt!1239489)))) (seqFromList!4171 (originalCharacters!6332 (_1!22044 (get!12285 lt!1239489)))))))))

(assert (= (and d!1062096 c!623819) b!3605190))

(assert (= (and d!1062096 (not c!623819)) b!3605191))

(assert (= (or b!3605190 b!3605191) bm!260605))

(assert (= (and d!1062096 (not res!1457639)) b!3605186))

(assert (= (and b!3605186 res!1457642) b!3605192))

(assert (= (and b!3605192 res!1457638) b!3605187))

(assert (= (and b!3605187 res!1457643) b!3605189))

(assert (= (and b!3605189 res!1457640) b!3605193))

(assert (= (and b!3605193 res!1457641) b!3605185))

(assert (= (and b!3605185 res!1457637) b!3605188))

(declare-fun m!4101945 () Bool)

(assert (=> b!3605192 m!4101945))

(declare-fun m!4101947 () Bool)

(assert (=> b!3605192 m!4101947))

(assert (=> b!3605192 m!4101947))

(declare-fun m!4101949 () Bool)

(assert (=> b!3605192 m!4101949))

(assert (=> b!3605187 m!4101945))

(declare-fun m!4101951 () Bool)

(assert (=> b!3605187 m!4101951))

(assert (=> b!3605187 m!4101695))

(declare-fun m!4101953 () Bool)

(assert (=> bm!260605 m!4101953))

(assert (=> b!3605189 m!4101945))

(assert (=> b!3605189 m!4101947))

(assert (=> b!3605189 m!4101947))

(assert (=> b!3605189 m!4101949))

(assert (=> b!3605189 m!4101949))

(declare-fun m!4101955 () Bool)

(assert (=> b!3605189 m!4101955))

(assert (=> b!3605188 m!4101945))

(declare-fun m!4101957 () Bool)

(assert (=> b!3605188 m!4101957))

(declare-fun m!4101959 () Bool)

(assert (=> d!1062096 m!4101959))

(declare-fun m!4101961 () Bool)

(assert (=> d!1062096 m!4101961))

(declare-fun m!4101963 () Bool)

(assert (=> d!1062096 m!4101963))

(assert (=> d!1062096 m!4101783))

(assert (=> b!3605185 m!4101945))

(assert (=> b!3605185 m!4101947))

(assert (=> b!3605185 m!4101947))

(assert (=> b!3605185 m!4101949))

(assert (=> b!3605185 m!4101949))

(declare-fun m!4101965 () Bool)

(assert (=> b!3605185 m!4101965))

(declare-fun m!4101967 () Bool)

(assert (=> b!3605186 m!4101967))

(assert (=> b!3605193 m!4101945))

(declare-fun m!4101969 () Bool)

(assert (=> b!3605193 m!4101969))

(assert (=> b!3605193 m!4101969))

(declare-fun m!4101971 () Bool)

(assert (=> b!3605193 m!4101971))

(declare-fun m!4101973 () Bool)

(assert (=> b!3605191 m!4101973))

(assert (=> b!3604685 d!1062096))

(declare-fun b!3605206 () Bool)

(declare-fun lt!1239498 () Unit!53992)

(declare-fun lt!1239497 () Unit!53992)

(assert (=> b!3605206 (= lt!1239498 lt!1239497)))

(assert (=> b!3605206 (rulesInvariant!4604 thiss!23823 (t!292740 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!521 (LexerInterface!5207 Rule!11036 List!38049) Unit!53992)

(assert (=> b!3605206 (= lt!1239497 (lemmaInvariantOnRulesThenOnTail!521 thiss!23823 (h!43345 rules!3307) (t!292740 rules!3307)))))

(declare-fun e!2231002 () Option!7867)

(assert (=> b!3605206 (= e!2231002 (getRuleFromTag!1224 thiss!23823 (t!292740 rules!3307) (tag!6316 (rule!8360 (_1!22044 lt!1239280)))))))

(declare-fun b!3605207 () Bool)

(declare-fun e!2231004 () Bool)

(declare-fun e!2231005 () Bool)

(assert (=> b!3605207 (= e!2231004 e!2231005)))

(declare-fun res!1457649 () Bool)

(assert (=> b!3605207 (=> (not res!1457649) (not e!2231005))))

(declare-fun lt!1239499 () Option!7867)

(assert (=> b!3605207 (= res!1457649 (contains!7300 rules!3307 (get!12286 lt!1239499)))))

(declare-fun b!3605208 () Bool)

(assert (=> b!3605208 (= e!2231005 (= (tag!6316 (get!12286 lt!1239499)) (tag!6316 (rule!8360 (_1!22044 lt!1239280)))))))

(declare-fun b!3605209 () Bool)

(declare-fun e!2231003 () Option!7867)

(assert (=> b!3605209 (= e!2231003 e!2231002)))

(declare-fun c!623824 () Bool)

(assert (=> b!3605209 (= c!623824 (and ((_ is Cons!37925) rules!3307) (not (= (tag!6316 (h!43345 rules!3307)) (tag!6316 (rule!8360 (_1!22044 lt!1239280)))))))))

(declare-fun b!3605210 () Bool)

(assert (=> b!3605210 (= e!2231002 None!7866)))

(declare-fun b!3605211 () Bool)

(assert (=> b!3605211 (= e!2231003 (Some!7866 (h!43345 rules!3307)))))

(declare-fun d!1062098 () Bool)

(assert (=> d!1062098 e!2231004))

(declare-fun res!1457648 () Bool)

(assert (=> d!1062098 (=> res!1457648 e!2231004)))

(declare-fun isEmpty!22387 (Option!7867) Bool)

(assert (=> d!1062098 (= res!1457648 (isEmpty!22387 lt!1239499))))

(assert (=> d!1062098 (= lt!1239499 e!2231003)))

(declare-fun c!623825 () Bool)

(assert (=> d!1062098 (= c!623825 (and ((_ is Cons!37925) rules!3307) (= (tag!6316 (h!43345 rules!3307)) (tag!6316 (rule!8360 (_1!22044 lt!1239280))))))))

(assert (=> d!1062098 (rulesInvariant!4604 thiss!23823 rules!3307)))

(assert (=> d!1062098 (= (getRuleFromTag!1224 thiss!23823 rules!3307 (tag!6316 (rule!8360 (_1!22044 lt!1239280)))) lt!1239499)))

(assert (= (and d!1062098 c!623825) b!3605211))

(assert (= (and d!1062098 (not c!623825)) b!3605209))

(assert (= (and b!3605209 c!623824) b!3605206))

(assert (= (and b!3605209 (not c!623824)) b!3605210))

(assert (= (and d!1062098 (not res!1457648)) b!3605207))

(assert (= (and b!3605207 res!1457649) b!3605208))

(declare-fun m!4101975 () Bool)

(assert (=> b!3605206 m!4101975))

(declare-fun m!4101977 () Bool)

(assert (=> b!3605206 m!4101977))

(declare-fun m!4101979 () Bool)

(assert (=> b!3605206 m!4101979))

(declare-fun m!4101981 () Bool)

(assert (=> b!3605207 m!4101981))

(assert (=> b!3605207 m!4101981))

(declare-fun m!4101983 () Bool)

(assert (=> b!3605207 m!4101983))

(assert (=> b!3605208 m!4101981))

(declare-fun m!4101985 () Bool)

(assert (=> d!1062098 m!4101985))

(assert (=> d!1062098 m!4101233))

(assert (=> b!3604685 d!1062098))

(declare-fun d!1062100 () Bool)

(assert (=> d!1062100 (= (get!12285 lt!1239254) (v!37591 lt!1239254))))

(assert (=> b!3604685 d!1062100))

(assert (=> b!3604685 d!1062084))

(declare-fun d!1062102 () Bool)

(declare-fun e!2231010 () Bool)

(assert (=> d!1062102 e!2231010))

(declare-fun res!1457654 () Bool)

(assert (=> d!1062102 (=> (not res!1457654) (not e!2231010))))

(declare-fun lt!1239502 () List!38047)

(assert (=> d!1062102 (= res!1457654 (= (content!5420 lt!1239502) ((_ map or) (content!5420 lt!1239279) (content!5420 (_2!22044 lt!1239280)))))))

(declare-fun e!2231011 () List!38047)

(assert (=> d!1062102 (= lt!1239502 e!2231011)))

(declare-fun c!623828 () Bool)

(assert (=> d!1062102 (= c!623828 ((_ is Nil!37923) lt!1239279))))

(assert (=> d!1062102 (= (++!9434 lt!1239279 (_2!22044 lt!1239280)) lt!1239502)))

(declare-fun b!3605220 () Bool)

(assert (=> b!3605220 (= e!2231011 (_2!22044 lt!1239280))))

(declare-fun b!3605222 () Bool)

(declare-fun res!1457655 () Bool)

(assert (=> b!3605222 (=> (not res!1457655) (not e!2231010))))

(assert (=> b!3605222 (= res!1457655 (= (size!28905 lt!1239502) (+ (size!28905 lt!1239279) (size!28905 (_2!22044 lt!1239280)))))))

(declare-fun b!3605223 () Bool)

(assert (=> b!3605223 (= e!2231010 (or (not (= (_2!22044 lt!1239280) Nil!37923)) (= lt!1239502 lt!1239279)))))

(declare-fun b!3605221 () Bool)

(assert (=> b!3605221 (= e!2231011 (Cons!37923 (h!43343 lt!1239279) (++!9434 (t!292738 lt!1239279) (_2!22044 lt!1239280))))))

(assert (= (and d!1062102 c!623828) b!3605220))

(assert (= (and d!1062102 (not c!623828)) b!3605221))

(assert (= (and d!1062102 res!1457654) b!3605222))

(assert (= (and b!3605222 res!1457655) b!3605223))

(declare-fun m!4101987 () Bool)

(assert (=> d!1062102 m!4101987))

(declare-fun m!4101989 () Bool)

(assert (=> d!1062102 m!4101989))

(declare-fun m!4101991 () Bool)

(assert (=> d!1062102 m!4101991))

(declare-fun m!4101993 () Bool)

(assert (=> b!3605222 m!4101993))

(assert (=> b!3605222 m!4101245))

(declare-fun m!4101995 () Bool)

(assert (=> b!3605222 m!4101995))

(declare-fun m!4101997 () Bool)

(assert (=> b!3605221 m!4101997))

(assert (=> b!3604685 d!1062102))

(declare-fun d!1062104 () Bool)

(declare-fun e!2231020 () Bool)

(assert (=> d!1062104 e!2231020))

(declare-fun res!1457667 () Bool)

(assert (=> d!1062104 (=> res!1457667 e!2231020)))

(declare-fun lt!1239505 () Bool)

(assert (=> d!1062104 (= res!1457667 (not lt!1239505))))

(declare-fun e!2231018 () Bool)

(assert (=> d!1062104 (= lt!1239505 e!2231018)))

(declare-fun res!1457666 () Bool)

(assert (=> d!1062104 (=> res!1457666 e!2231018)))

(assert (=> d!1062104 (= res!1457666 ((_ is Nil!37923) lt!1239279))))

(assert (=> d!1062104 (= (isPrefix!2981 lt!1239279 lt!1239265) lt!1239505)))

(declare-fun b!3605233 () Bool)

(declare-fun res!1457665 () Bool)

(declare-fun e!2231019 () Bool)

(assert (=> b!3605233 (=> (not res!1457665) (not e!2231019))))

(assert (=> b!3605233 (= res!1457665 (= (head!7568 lt!1239279) (head!7568 lt!1239265)))))

(declare-fun b!3605235 () Bool)

(assert (=> b!3605235 (= e!2231020 (>= (size!28905 lt!1239265) (size!28905 lt!1239279)))))

(declare-fun b!3605232 () Bool)

(assert (=> b!3605232 (= e!2231018 e!2231019)))

(declare-fun res!1457664 () Bool)

(assert (=> b!3605232 (=> (not res!1457664) (not e!2231019))))

(assert (=> b!3605232 (= res!1457664 (not ((_ is Nil!37923) lt!1239265)))))

(declare-fun b!3605234 () Bool)

(assert (=> b!3605234 (= e!2231019 (isPrefix!2981 (tail!5589 lt!1239279) (tail!5589 lt!1239265)))))

(assert (= (and d!1062104 (not res!1457666)) b!3605232))

(assert (= (and b!3605232 res!1457664) b!3605233))

(assert (= (and b!3605233 res!1457665) b!3605234))

(assert (= (and d!1062104 (not res!1457667)) b!3605235))

(assert (=> b!3605233 m!4101257))

(declare-fun m!4101999 () Bool)

(assert (=> b!3605233 m!4101999))

(assert (=> b!3605235 m!4101695))

(assert (=> b!3605235 m!4101245))

(declare-fun m!4102001 () Bool)

(assert (=> b!3605234 m!4102001))

(assert (=> b!3605234 m!4101697))

(assert (=> b!3605234 m!4102001))

(assert (=> b!3605234 m!4101697))

(declare-fun m!4102003 () Bool)

(assert (=> b!3605234 m!4102003))

(assert (=> b!3604685 d!1062104))

(declare-fun d!1062106 () Bool)

(assert (=> d!1062106 (= (isDefined!6098 lt!1239253) (not (isEmpty!22387 lt!1239253)))))

(declare-fun bs!570681 () Bool)

(assert (= bs!570681 d!1062106))

(declare-fun m!4102005 () Bool)

(assert (=> bs!570681 m!4102005))

(assert (=> b!3604685 d!1062106))

(declare-fun d!1062108 () Bool)

(declare-fun e!2231023 () Bool)

(assert (=> d!1062108 e!2231023))

(declare-fun res!1457672 () Bool)

(assert (=> d!1062108 (=> (not res!1457672) (not e!2231023))))

(assert (=> d!1062108 (= res!1457672 (isDefined!6098 (getRuleFromTag!1224 thiss!23823 rules!3307 (tag!6316 (rule!8360 (_1!22044 lt!1239280))))))))

(declare-fun lt!1239508 () Unit!53992)

(declare-fun choose!21038 (LexerInterface!5207 List!38049 List!38047 Token!10602) Unit!53992)

(assert (=> d!1062108 (= lt!1239508 (choose!21038 thiss!23823 rules!3307 lt!1239265 (_1!22044 lt!1239280)))))

(assert (=> d!1062108 (rulesInvariant!4604 thiss!23823 rules!3307)))

(assert (=> d!1062108 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1224 thiss!23823 rules!3307 lt!1239265 (_1!22044 lt!1239280)) lt!1239508)))

(declare-fun b!3605240 () Bool)

(declare-fun res!1457673 () Bool)

(assert (=> b!3605240 (=> (not res!1457673) (not e!2231023))))

(assert (=> b!3605240 (= res!1457673 (matchR!4946 (regex!5618 (get!12286 (getRuleFromTag!1224 thiss!23823 rules!3307 (tag!6316 (rule!8360 (_1!22044 lt!1239280)))))) (list!13978 (charsOf!3632 (_1!22044 lt!1239280)))))))

(declare-fun b!3605241 () Bool)

(assert (=> b!3605241 (= e!2231023 (= (rule!8360 (_1!22044 lt!1239280)) (get!12286 (getRuleFromTag!1224 thiss!23823 rules!3307 (tag!6316 (rule!8360 (_1!22044 lt!1239280)))))))))

(assert (= (and d!1062108 res!1457672) b!3605240))

(assert (= (and b!3605240 res!1457673) b!3605241))

(assert (=> d!1062108 m!4101313))

(assert (=> d!1062108 m!4101313))

(declare-fun m!4102007 () Bool)

(assert (=> d!1062108 m!4102007))

(declare-fun m!4102009 () Bool)

(assert (=> d!1062108 m!4102009))

(assert (=> d!1062108 m!4101233))

(assert (=> b!3605240 m!4101313))

(declare-fun m!4102011 () Bool)

(assert (=> b!3605240 m!4102011))

(assert (=> b!3605240 m!4101213))

(assert (=> b!3605240 m!4101215))

(assert (=> b!3605240 m!4101215))

(declare-fun m!4102013 () Bool)

(assert (=> b!3605240 m!4102013))

(assert (=> b!3605240 m!4101313))

(assert (=> b!3605240 m!4101213))

(assert (=> b!3605241 m!4101313))

(assert (=> b!3605241 m!4101313))

(assert (=> b!3605241 m!4102011))

(assert (=> b!3604685 d!1062108))

(declare-fun d!1062110 () Bool)

(assert (=> d!1062110 (isPrefix!2981 lt!1239269 (++!9434 lt!1239269 suffix!1395))))

(declare-fun lt!1239511 () Unit!53992)

(declare-fun choose!21040 (List!38047 List!38047) Unit!53992)

(assert (=> d!1062110 (= lt!1239511 (choose!21040 lt!1239269 suffix!1395))))

(assert (=> d!1062110 (= (lemmaConcatTwoListThenFirstIsPrefix!1902 lt!1239269 suffix!1395) lt!1239511)))

(declare-fun bs!570682 () Bool)

(assert (= bs!570682 d!1062110))

(assert (=> bs!570682 m!4101311))

(assert (=> bs!570682 m!4101311))

(declare-fun m!4102015 () Bool)

(assert (=> bs!570682 m!4102015))

(declare-fun m!4102017 () Bool)

(assert (=> bs!570682 m!4102017))

(assert (=> b!3604685 d!1062110))

(declare-fun d!1062112 () Bool)

(assert (=> d!1062112 (isPrefix!2981 lt!1239279 (++!9434 lt!1239279 (_2!22044 lt!1239280)))))

(declare-fun lt!1239512 () Unit!53992)

(assert (=> d!1062112 (= lt!1239512 (choose!21040 lt!1239279 (_2!22044 lt!1239280)))))

(assert (=> d!1062112 (= (lemmaConcatTwoListThenFirstIsPrefix!1902 lt!1239279 (_2!22044 lt!1239280)) lt!1239512)))

(declare-fun bs!570683 () Bool)

(assert (= bs!570683 d!1062112))

(assert (=> bs!570683 m!4101323))

(assert (=> bs!570683 m!4101323))

(assert (=> bs!570683 m!4101325))

(declare-fun m!4102019 () Bool)

(assert (=> bs!570683 m!4102019))

(assert (=> b!3604685 d!1062112))

(declare-fun d!1062114 () Bool)

(declare-fun e!2231024 () Bool)

(assert (=> d!1062114 e!2231024))

(declare-fun res!1457674 () Bool)

(assert (=> d!1062114 (=> (not res!1457674) (not e!2231024))))

(declare-fun lt!1239513 () List!38047)

(assert (=> d!1062114 (= res!1457674 (= (content!5420 lt!1239513) ((_ map or) (content!5420 lt!1239269) (content!5420 suffix!1395))))))

(declare-fun e!2231025 () List!38047)

(assert (=> d!1062114 (= lt!1239513 e!2231025)))

(declare-fun c!623829 () Bool)

(assert (=> d!1062114 (= c!623829 ((_ is Nil!37923) lt!1239269))))

(assert (=> d!1062114 (= (++!9434 lt!1239269 suffix!1395) lt!1239513)))

(declare-fun b!3605242 () Bool)

(assert (=> b!3605242 (= e!2231025 suffix!1395)))

(declare-fun b!3605244 () Bool)

(declare-fun res!1457675 () Bool)

(assert (=> b!3605244 (=> (not res!1457675) (not e!2231024))))

(assert (=> b!3605244 (= res!1457675 (= (size!28905 lt!1239513) (+ (size!28905 lt!1239269) (size!28905 suffix!1395))))))

(declare-fun b!3605245 () Bool)

(assert (=> b!3605245 (= e!2231024 (or (not (= suffix!1395 Nil!37923)) (= lt!1239513 lt!1239269)))))

(declare-fun b!3605243 () Bool)

(assert (=> b!3605243 (= e!2231025 (Cons!37923 (h!43343 lt!1239269) (++!9434 (t!292738 lt!1239269) suffix!1395)))))

(assert (= (and d!1062114 c!623829) b!3605242))

(assert (= (and d!1062114 (not c!623829)) b!3605243))

(assert (= (and d!1062114 res!1457674) b!3605244))

(assert (= (and b!3605244 res!1457675) b!3605245))

(declare-fun m!4102021 () Bool)

(assert (=> d!1062114 m!4102021))

(declare-fun m!4102023 () Bool)

(assert (=> d!1062114 m!4102023))

(declare-fun m!4102025 () Bool)

(assert (=> d!1062114 m!4102025))

(declare-fun m!4102027 () Bool)

(assert (=> b!3605244 m!4102027))

(assert (=> b!3605244 m!4101769))

(declare-fun m!4102029 () Bool)

(assert (=> b!3605244 m!4102029))

(declare-fun m!4102031 () Bool)

(assert (=> b!3605243 m!4102031))

(assert (=> b!3604685 d!1062114))

(declare-fun d!1062116 () Bool)

(declare-fun e!2231028 () Bool)

(assert (=> d!1062116 e!2231028))

(declare-fun res!1457679 () Bool)

(assert (=> d!1062116 (=> res!1457679 e!2231028)))

(declare-fun lt!1239514 () Bool)

(assert (=> d!1062116 (= res!1457679 (not lt!1239514))))

(declare-fun e!2231026 () Bool)

(assert (=> d!1062116 (= lt!1239514 e!2231026)))

(declare-fun res!1457678 () Bool)

(assert (=> d!1062116 (=> res!1457678 e!2231026)))

(assert (=> d!1062116 (= res!1457678 ((_ is Nil!37923) lt!1239279))))

(assert (=> d!1062116 (= (isPrefix!2981 lt!1239279 (++!9434 lt!1239279 (_2!22044 lt!1239280))) lt!1239514)))

(declare-fun b!3605247 () Bool)

(declare-fun res!1457677 () Bool)

(declare-fun e!2231027 () Bool)

(assert (=> b!3605247 (=> (not res!1457677) (not e!2231027))))

(assert (=> b!3605247 (= res!1457677 (= (head!7568 lt!1239279) (head!7568 (++!9434 lt!1239279 (_2!22044 lt!1239280)))))))

(declare-fun b!3605249 () Bool)

(assert (=> b!3605249 (= e!2231028 (>= (size!28905 (++!9434 lt!1239279 (_2!22044 lt!1239280))) (size!28905 lt!1239279)))))

(declare-fun b!3605246 () Bool)

(assert (=> b!3605246 (= e!2231026 e!2231027)))

(declare-fun res!1457676 () Bool)

(assert (=> b!3605246 (=> (not res!1457676) (not e!2231027))))

(assert (=> b!3605246 (= res!1457676 (not ((_ is Nil!37923) (++!9434 lt!1239279 (_2!22044 lt!1239280)))))))

(declare-fun b!3605248 () Bool)

(assert (=> b!3605248 (= e!2231027 (isPrefix!2981 (tail!5589 lt!1239279) (tail!5589 (++!9434 lt!1239279 (_2!22044 lt!1239280)))))))

(assert (= (and d!1062116 (not res!1457678)) b!3605246))

(assert (= (and b!3605246 res!1457676) b!3605247))

(assert (= (and b!3605247 res!1457677) b!3605248))

(assert (= (and d!1062116 (not res!1457679)) b!3605249))

(assert (=> b!3605247 m!4101257))

(assert (=> b!3605247 m!4101323))

(declare-fun m!4102033 () Bool)

(assert (=> b!3605247 m!4102033))

(assert (=> b!3605249 m!4101323))

(declare-fun m!4102035 () Bool)

(assert (=> b!3605249 m!4102035))

(assert (=> b!3605249 m!4101245))

(assert (=> b!3605248 m!4102001))

(assert (=> b!3605248 m!4101323))

(declare-fun m!4102037 () Bool)

(assert (=> b!3605248 m!4102037))

(assert (=> b!3605248 m!4102001))

(assert (=> b!3605248 m!4102037))

(declare-fun m!4102039 () Bool)

(assert (=> b!3605248 m!4102039))

(assert (=> b!3604685 d!1062116))

(declare-fun b!3605337 () Bool)

(declare-fun e!2231072 () Unit!53992)

(declare-fun Unit!54000 () Unit!53992)

(assert (=> b!3605337 (= e!2231072 Unit!54000)))

(declare-fun b!3605336 () Bool)

(declare-fun Unit!54001 () Unit!53992)

(assert (=> b!3605336 (= e!2231072 Unit!54001)))

(declare-fun lt!1239577 () List!38047)

(assert (=> b!3605336 (= lt!1239577 (++!9434 lt!1239269 suffix!1395))))

(declare-fun lt!1239580 () Unit!53992)

(declare-fun lt!1239588 () Token!10602)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!478 (LexerInterface!5207 Rule!11036 List!38049 List!38047) Unit!53992)

(assert (=> b!3605336 (= lt!1239580 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!478 thiss!23823 (rule!8360 lt!1239588) rules!3307 lt!1239577))))

(assert (=> b!3605336 (isEmpty!22385 (maxPrefixOneRule!1885 thiss!23823 (rule!8360 lt!1239588) lt!1239577))))

(declare-fun lt!1239586 () Unit!53992)

(assert (=> b!3605336 (= lt!1239586 lt!1239580)))

(declare-fun lt!1239587 () List!38047)

(assert (=> b!3605336 (= lt!1239587 (list!13978 (charsOf!3632 lt!1239588)))))

(declare-fun lt!1239589 () Unit!53992)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!466 (LexerInterface!5207 Rule!11036 List!38047 List!38047) Unit!53992)

(assert (=> b!3605336 (= lt!1239589 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!466 thiss!23823 (rule!8360 lt!1239588) lt!1239587 (++!9434 lt!1239269 suffix!1395)))))

(assert (=> b!3605336 (not (matchR!4946 (regex!5618 (rule!8360 lt!1239588)) lt!1239587))))

(declare-fun lt!1239575 () Unit!53992)

(assert (=> b!3605336 (= lt!1239575 lt!1239589)))

(assert (=> b!3605336 false))

(declare-fun b!3605335 () Bool)

(declare-fun e!2231071 () Bool)

(assert (=> b!3605335 (= e!2231071 (= (rule!8360 lt!1239588) (get!12286 (getRuleFromTag!1224 thiss!23823 rules!3307 (tag!6316 (rule!8360 lt!1239588))))))))

(declare-fun d!1062118 () Bool)

(assert (=> d!1062118 (isDefined!6099 (maxPrefix!2741 thiss!23823 rules!3307 (++!9434 lt!1239269 suffix!1395)))))

(declare-fun lt!1239583 () Unit!53992)

(assert (=> d!1062118 (= lt!1239583 e!2231072)))

(declare-fun c!623838 () Bool)

(assert (=> d!1062118 (= c!623838 (isEmpty!22385 (maxPrefix!2741 thiss!23823 rules!3307 (++!9434 lt!1239269 suffix!1395))))))

(declare-fun lt!1239578 () Unit!53992)

(declare-fun lt!1239582 () Unit!53992)

(assert (=> d!1062118 (= lt!1239578 lt!1239582)))

(assert (=> d!1062118 e!2231071))

(declare-fun res!1457705 () Bool)

(assert (=> d!1062118 (=> (not res!1457705) (not e!2231071))))

(assert (=> d!1062118 (= res!1457705 (isDefined!6098 (getRuleFromTag!1224 thiss!23823 rules!3307 (tag!6316 (rule!8360 lt!1239588)))))))

(assert (=> d!1062118 (= lt!1239582 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1224 thiss!23823 rules!3307 lt!1239269 lt!1239588))))

(declare-fun lt!1239573 () Unit!53992)

(declare-fun lt!1239579 () Unit!53992)

(assert (=> d!1062118 (= lt!1239573 lt!1239579)))

(declare-fun lt!1239574 () List!38047)

(assert (=> d!1062118 (isPrefix!2981 lt!1239574 (++!9434 lt!1239269 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!442 (List!38047 List!38047 List!38047) Unit!53992)

(assert (=> d!1062118 (= lt!1239579 (lemmaPrefixStaysPrefixWhenAddingToSuffix!442 lt!1239574 lt!1239269 suffix!1395))))

(assert (=> d!1062118 (= lt!1239574 (list!13978 (charsOf!3632 lt!1239588)))))

(declare-fun lt!1239584 () Unit!53992)

(declare-fun lt!1239585 () Unit!53992)

(assert (=> d!1062118 (= lt!1239584 lt!1239585)))

(declare-fun lt!1239581 () List!38047)

(declare-fun lt!1239576 () List!38047)

(assert (=> d!1062118 (isPrefix!2981 lt!1239581 (++!9434 lt!1239581 lt!1239576))))

(assert (=> d!1062118 (= lt!1239585 (lemmaConcatTwoListThenFirstIsPrefix!1902 lt!1239581 lt!1239576))))

(assert (=> d!1062118 (= lt!1239576 (_2!22044 (get!12285 (maxPrefix!2741 thiss!23823 rules!3307 lt!1239269))))))

(assert (=> d!1062118 (= lt!1239581 (list!13978 (charsOf!3632 lt!1239588)))))

(declare-datatypes ((List!38053 0))(
  ( (Nil!37929) (Cons!37929 (h!43349 Token!10602) (t!292864 List!38053)) )
))
(declare-fun head!7570 (List!38053) Token!10602)

(declare-datatypes ((IArray!23111 0))(
  ( (IArray!23112 (innerList!11613 List!38053)) )
))
(declare-datatypes ((Conc!11553 0))(
  ( (Node!11553 (left!29640 Conc!11553) (right!29970 Conc!11553) (csize!23336 Int) (cheight!11764 Int)) (Leaf!17973 (xs!14755 IArray!23111) (csize!23337 Int)) (Empty!11553) )
))
(declare-datatypes ((BalanceConc!22720 0))(
  ( (BalanceConc!22721 (c!623873 Conc!11553)) )
))
(declare-fun list!13982 (BalanceConc!22720) List!38053)

(declare-datatypes ((tuple2!37828 0))(
  ( (tuple2!37829 (_1!22048 BalanceConc!22720) (_2!22048 BalanceConc!22716)) )
))
(declare-fun lex!2474 (LexerInterface!5207 List!38049 BalanceConc!22716) tuple2!37828)

(assert (=> d!1062118 (= lt!1239588 (head!7570 (list!13982 (_1!22048 (lex!2474 thiss!23823 rules!3307 (seqFromList!4171 lt!1239269))))))))

(assert (=> d!1062118 (not (isEmpty!22382 rules!3307))))

(assert (=> d!1062118 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!887 thiss!23823 rules!3307 lt!1239269 suffix!1395) lt!1239583)))

(declare-fun b!3605334 () Bool)

(declare-fun res!1457706 () Bool)

(assert (=> b!3605334 (=> (not res!1457706) (not e!2231071))))

(assert (=> b!3605334 (= res!1457706 (matchR!4946 (regex!5618 (get!12286 (getRuleFromTag!1224 thiss!23823 rules!3307 (tag!6316 (rule!8360 lt!1239588))))) (list!13978 (charsOf!3632 lt!1239588))))))

(assert (= (and d!1062118 res!1457705) b!3605334))

(assert (= (and b!3605334 res!1457706) b!3605335))

(assert (= (and d!1062118 c!623838) b!3605336))

(assert (= (and d!1062118 (not c!623838)) b!3605337))

(declare-fun m!4102101 () Bool)

(assert (=> b!3605336 m!4102101))

(assert (=> b!3605336 m!4101311))

(declare-fun m!4102103 () Bool)

(assert (=> b!3605336 m!4102103))

(assert (=> b!3605336 m!4101311))

(assert (=> b!3605336 m!4102101))

(declare-fun m!4102105 () Bool)

(assert (=> b!3605336 m!4102105))

(declare-fun m!4102107 () Bool)

(assert (=> b!3605336 m!4102107))

(declare-fun m!4102109 () Bool)

(assert (=> b!3605336 m!4102109))

(assert (=> b!3605336 m!4102107))

(declare-fun m!4102111 () Bool)

(assert (=> b!3605336 m!4102111))

(declare-fun m!4102113 () Bool)

(assert (=> b!3605336 m!4102113))

(declare-fun m!4102115 () Bool)

(assert (=> b!3605335 m!4102115))

(assert (=> b!3605335 m!4102115))

(declare-fun m!4102117 () Bool)

(assert (=> b!3605335 m!4102117))

(declare-fun m!4102119 () Bool)

(assert (=> d!1062118 m!4102119))

(declare-fun m!4102121 () Bool)

(assert (=> d!1062118 m!4102121))

(assert (=> d!1062118 m!4101293))

(declare-fun m!4102123 () Bool)

(assert (=> d!1062118 m!4102123))

(declare-fun m!4102125 () Bool)

(assert (=> d!1062118 m!4102125))

(assert (=> d!1062118 m!4102115))

(declare-fun m!4102127 () Bool)

(assert (=> d!1062118 m!4102127))

(declare-fun m!4102129 () Bool)

(assert (=> d!1062118 m!4102129))

(declare-fun m!4102131 () Bool)

(assert (=> d!1062118 m!4102131))

(assert (=> d!1062118 m!4101311))

(declare-fun m!4102133 () Bool)

(assert (=> d!1062118 m!4102133))

(declare-fun m!4102135 () Bool)

(assert (=> d!1062118 m!4102135))

(assert (=> d!1062118 m!4102115))

(assert (=> d!1062118 m!4102101))

(assert (=> d!1062118 m!4102105))

(assert (=> d!1062118 m!4101311))

(assert (=> d!1062118 m!4102119))

(assert (=> d!1062118 m!4101333))

(assert (=> d!1062118 m!4102101))

(assert (=> d!1062118 m!4102131))

(declare-fun m!4102137 () Bool)

(assert (=> d!1062118 m!4102137))

(assert (=> d!1062118 m!4101293))

(assert (=> d!1062118 m!4102119))

(declare-fun m!4102139 () Bool)

(assert (=> d!1062118 m!4102139))

(assert (=> d!1062118 m!4101311))

(declare-fun m!4102141 () Bool)

(assert (=> d!1062118 m!4102141))

(declare-fun m!4102143 () Bool)

(assert (=> d!1062118 m!4102143))

(assert (=> d!1062118 m!4102133))

(declare-fun m!4102145 () Bool)

(assert (=> d!1062118 m!4102145))

(assert (=> d!1062118 m!4102143))

(declare-fun m!4102147 () Bool)

(assert (=> d!1062118 m!4102147))

(assert (=> b!3605334 m!4102101))

(assert (=> b!3605334 m!4102105))

(declare-fun m!4102149 () Bool)

(assert (=> b!3605334 m!4102149))

(assert (=> b!3605334 m!4102115))

(assert (=> b!3605334 m!4102117))

(assert (=> b!3605334 m!4102115))

(assert (=> b!3605334 m!4102101))

(assert (=> b!3605334 m!4102105))

(assert (=> b!3604685 d!1062118))

(declare-fun d!1062130 () Bool)

(assert (=> d!1062130 (= (list!13978 lt!1239257) (list!13980 (c!623730 lt!1239257)))))

(declare-fun bs!570687 () Bool)

(assert (= bs!570687 d!1062130))

(declare-fun m!4102151 () Bool)

(assert (=> bs!570687 m!4102151))

(assert (=> b!3604685 d!1062130))

(declare-fun d!1062132 () Bool)

(declare-fun e!2231075 () Bool)

(assert (=> d!1062132 e!2231075))

(declare-fun res!1457710 () Bool)

(assert (=> d!1062132 (=> res!1457710 e!2231075)))

(declare-fun lt!1239590 () Bool)

(assert (=> d!1062132 (= res!1457710 (not lt!1239590))))

(declare-fun e!2231073 () Bool)

(assert (=> d!1062132 (= lt!1239590 e!2231073)))

(declare-fun res!1457709 () Bool)

(assert (=> d!1062132 (=> res!1457709 e!2231073)))

(assert (=> d!1062132 (= res!1457709 ((_ is Nil!37923) lt!1239269))))

(assert (=> d!1062132 (= (isPrefix!2981 lt!1239269 lt!1239265) lt!1239590)))

(declare-fun b!3605339 () Bool)

(declare-fun res!1457708 () Bool)

(declare-fun e!2231074 () Bool)

(assert (=> b!3605339 (=> (not res!1457708) (not e!2231074))))

(assert (=> b!3605339 (= res!1457708 (= (head!7568 lt!1239269) (head!7568 lt!1239265)))))

(declare-fun b!3605341 () Bool)

(assert (=> b!3605341 (= e!2231075 (>= (size!28905 lt!1239265) (size!28905 lt!1239269)))))

(declare-fun b!3605338 () Bool)

(assert (=> b!3605338 (= e!2231073 e!2231074)))

(declare-fun res!1457707 () Bool)

(assert (=> b!3605338 (=> (not res!1457707) (not e!2231074))))

(assert (=> b!3605338 (= res!1457707 (not ((_ is Nil!37923) lt!1239265)))))

(declare-fun b!3605340 () Bool)

(assert (=> b!3605340 (= e!2231074 (isPrefix!2981 (tail!5589 lt!1239269) (tail!5589 lt!1239265)))))

(assert (= (and d!1062132 (not res!1457709)) b!3605338))

(assert (= (and b!3605338 res!1457707) b!3605339))

(assert (= (and b!3605339 res!1457708) b!3605340))

(assert (= (and d!1062132 (not res!1457710)) b!3605341))

(declare-fun m!4102153 () Bool)

(assert (=> b!3605339 m!4102153))

(assert (=> b!3605339 m!4101999))

(assert (=> b!3605341 m!4101695))

(assert (=> b!3605341 m!4101769))

(declare-fun m!4102155 () Bool)

(assert (=> b!3605340 m!4102155))

(assert (=> b!3605340 m!4101697))

(assert (=> b!3605340 m!4102155))

(assert (=> b!3605340 m!4101697))

(declare-fun m!4102157 () Bool)

(assert (=> b!3605340 m!4102157))

(assert (=> b!3604685 d!1062132))

(declare-fun d!1062134 () Bool)

(declare-fun lt!1239591 () Bool)

(assert (=> d!1062134 (= lt!1239591 (select (content!5420 lt!1239269) lt!1239277))))

(declare-fun e!2231077 () Bool)

(assert (=> d!1062134 (= lt!1239591 e!2231077)))

(declare-fun res!1457712 () Bool)

(assert (=> d!1062134 (=> (not res!1457712) (not e!2231077))))

(assert (=> d!1062134 (= res!1457712 ((_ is Cons!37923) lt!1239269))))

(assert (=> d!1062134 (= (contains!7299 lt!1239269 lt!1239277) lt!1239591)))

(declare-fun b!3605342 () Bool)

(declare-fun e!2231076 () Bool)

(assert (=> b!3605342 (= e!2231077 e!2231076)))

(declare-fun res!1457711 () Bool)

(assert (=> b!3605342 (=> res!1457711 e!2231076)))

(assert (=> b!3605342 (= res!1457711 (= (h!43343 lt!1239269) lt!1239277))))

(declare-fun b!3605343 () Bool)

(assert (=> b!3605343 (= e!2231076 (contains!7299 (t!292738 lt!1239269) lt!1239277))))

(assert (= (and d!1062134 res!1457712) b!3605342))

(assert (= (and b!3605342 (not res!1457711)) b!3605343))

(assert (=> d!1062134 m!4102023))

(declare-fun m!4102159 () Bool)

(assert (=> d!1062134 m!4102159))

(declare-fun m!4102161 () Bool)

(assert (=> b!3605343 m!4102161))

(assert (=> b!3604684 d!1062134))

(declare-fun d!1062136 () Bool)

(declare-fun lt!1239592 () Bool)

(assert (=> d!1062136 (= lt!1239592 (select (content!5420 lt!1239270) lt!1239266))))

(declare-fun e!2231079 () Bool)

(assert (=> d!1062136 (= lt!1239592 e!2231079)))

(declare-fun res!1457714 () Bool)

(assert (=> d!1062136 (=> (not res!1457714) (not e!2231079))))

(assert (=> d!1062136 (= res!1457714 ((_ is Cons!37923) lt!1239270))))

(assert (=> d!1062136 (= (contains!7299 lt!1239270 lt!1239266) lt!1239592)))

(declare-fun b!3605344 () Bool)

(declare-fun e!2231078 () Bool)

(assert (=> b!3605344 (= e!2231079 e!2231078)))

(declare-fun res!1457713 () Bool)

(assert (=> b!3605344 (=> res!1457713 e!2231078)))

(assert (=> b!3605344 (= res!1457713 (= (h!43343 lt!1239270) lt!1239266))))

(declare-fun b!3605345 () Bool)

(assert (=> b!3605345 (= e!2231078 (contains!7299 (t!292738 lt!1239270) lt!1239266))))

(assert (= (and d!1062136 res!1457714) b!3605344))

(assert (= (and b!3605344 (not res!1457713)) b!3605345))

(assert (=> d!1062136 m!4101623))

(declare-fun m!4102163 () Bool)

(assert (=> d!1062136 m!4102163))

(declare-fun m!4102165 () Bool)

(assert (=> b!3605345 m!4102165))

(assert (=> b!3604704 d!1062136))

(declare-fun d!1062138 () Bool)

(assert (=> d!1062138 (= (head!7568 suffix!1395) (h!43343 suffix!1395))))

(assert (=> b!3604704 d!1062138))

(declare-fun bm!260614 () Bool)

(declare-fun c!623848 () Bool)

(declare-fun c!623850 () Bool)

(declare-fun call!260622 () List!38047)

(assert (=> bm!260614 (= call!260622 (usedCharacters!832 (ite c!623850 (reg!10706 (regex!5618 rule!403)) (ite c!623848 (regTwo!21267 (regex!5618 rule!403)) (regOne!21266 (regex!5618 rule!403))))))))

(declare-fun call!260621 () List!38047)

(declare-fun call!260620 () List!38047)

(declare-fun bm!260616 () Bool)

(declare-fun call!260619 () List!38047)

(assert (=> bm!260616 (= call!260621 (++!9434 (ite c!623848 call!260619 call!260620) (ite c!623848 call!260620 call!260619)))))

(declare-fun b!3605362 () Bool)

(declare-fun e!2231091 () List!38047)

(assert (=> b!3605362 (= e!2231091 call!260621)))

(declare-fun b!3605363 () Bool)

(declare-fun e!2231089 () List!38047)

(assert (=> b!3605363 (= e!2231089 call!260622)))

(declare-fun b!3605364 () Bool)

(declare-fun e!2231090 () List!38047)

(assert (=> b!3605364 (= e!2231090 (Cons!37923 (c!623731 (regex!5618 rule!403)) Nil!37923))))

(declare-fun bm!260617 () Bool)

(assert (=> bm!260617 (= call!260619 (usedCharacters!832 (ite c!623848 (regOne!21267 (regex!5618 rule!403)) (regTwo!21266 (regex!5618 rule!403)))))))

(declare-fun b!3605365 () Bool)

(declare-fun e!2231088 () List!38047)

(assert (=> b!3605365 (= e!2231088 Nil!37923)))

(declare-fun b!3605366 () Bool)

(assert (=> b!3605366 (= c!623850 ((_ is Star!10377) (regex!5618 rule!403)))))

(assert (=> b!3605366 (= e!2231090 e!2231089)))

(declare-fun b!3605367 () Bool)

(assert (=> b!3605367 (= e!2231088 e!2231090)))

(declare-fun c!623847 () Bool)

(assert (=> b!3605367 (= c!623847 ((_ is ElementMatch!10377) (regex!5618 rule!403)))))

(declare-fun bm!260615 () Bool)

(assert (=> bm!260615 (= call!260620 call!260622)))

(declare-fun d!1062140 () Bool)

(declare-fun c!623849 () Bool)

(assert (=> d!1062140 (= c!623849 (or ((_ is EmptyExpr!10377) (regex!5618 rule!403)) ((_ is EmptyLang!10377) (regex!5618 rule!403))))))

(assert (=> d!1062140 (= (usedCharacters!832 (regex!5618 rule!403)) e!2231088)))

(declare-fun b!3605368 () Bool)

(assert (=> b!3605368 (= e!2231089 e!2231091)))

(assert (=> b!3605368 (= c!623848 ((_ is Union!10377) (regex!5618 rule!403)))))

(declare-fun b!3605369 () Bool)

(assert (=> b!3605369 (= e!2231091 call!260621)))

(assert (= (and d!1062140 c!623849) b!3605365))

(assert (= (and d!1062140 (not c!623849)) b!3605367))

(assert (= (and b!3605367 c!623847) b!3605364))

(assert (= (and b!3605367 (not c!623847)) b!3605366))

(assert (= (and b!3605366 c!623850) b!3605363))

(assert (= (and b!3605366 (not c!623850)) b!3605368))

(assert (= (and b!3605368 c!623848) b!3605369))

(assert (= (and b!3605368 (not c!623848)) b!3605362))

(assert (= (or b!3605369 b!3605362) bm!260617))

(assert (= (or b!3605369 b!3605362) bm!260615))

(assert (= (or b!3605369 b!3605362) bm!260616))

(assert (= (or b!3605363 bm!260615) bm!260614))

(declare-fun m!4102167 () Bool)

(assert (=> bm!260614 m!4102167))

(declare-fun m!4102169 () Bool)

(assert (=> bm!260616 m!4102169))

(declare-fun m!4102171 () Bool)

(assert (=> bm!260617 m!4102171))

(assert (=> b!3604704 d!1062140))

(declare-fun d!1062142 () Bool)

(declare-fun c!623856 () Bool)

(assert (=> d!1062142 (= c!623856 ((_ is IntegerValue!17544) (value!180573 token!511)))))

(declare-fun e!2231098 () Bool)

(assert (=> d!1062142 (= (inv!21 (value!180573 token!511)) e!2231098)))

(declare-fun b!3605380 () Bool)

(declare-fun inv!16 (TokenValue!5848) Bool)

(assert (=> b!3605380 (= e!2231098 (inv!16 (value!180573 token!511)))))

(declare-fun b!3605381 () Bool)

(declare-fun e!2231099 () Bool)

(declare-fun inv!17 (TokenValue!5848) Bool)

(assert (=> b!3605381 (= e!2231099 (inv!17 (value!180573 token!511)))))

(declare-fun b!3605382 () Bool)

(assert (=> b!3605382 (= e!2231098 e!2231099)))

(declare-fun c!623855 () Bool)

(assert (=> b!3605382 (= c!623855 ((_ is IntegerValue!17545) (value!180573 token!511)))))

(declare-fun b!3605383 () Bool)

(declare-fun res!1457717 () Bool)

(declare-fun e!2231100 () Bool)

(assert (=> b!3605383 (=> res!1457717 e!2231100)))

(assert (=> b!3605383 (= res!1457717 (not ((_ is IntegerValue!17546) (value!180573 token!511))))))

(assert (=> b!3605383 (= e!2231099 e!2231100)))

(declare-fun b!3605384 () Bool)

(declare-fun inv!15 (TokenValue!5848) Bool)

(assert (=> b!3605384 (= e!2231100 (inv!15 (value!180573 token!511)))))

(assert (= (and d!1062142 c!623856) b!3605380))

(assert (= (and d!1062142 (not c!623856)) b!3605382))

(assert (= (and b!3605382 c!623855) b!3605381))

(assert (= (and b!3605382 (not c!623855)) b!3605383))

(assert (= (and b!3605383 (not res!1457717)) b!3605384))

(declare-fun m!4102173 () Bool)

(assert (=> b!3605380 m!4102173))

(declare-fun m!4102175 () Bool)

(assert (=> b!3605381 m!4102175))

(declare-fun m!4102177 () Bool)

(assert (=> b!3605384 m!4102177))

(assert (=> b!3604682 d!1062142))

(declare-fun d!1062144 () Bool)

(assert (=> d!1062144 (= (inv!51285 (tag!6316 (h!43345 rules!3307))) (= (mod (str.len (value!180572 (tag!6316 (h!43345 rules!3307)))) 2) 0))))

(assert (=> b!3604692 d!1062144))

(declare-fun d!1062146 () Bool)

(declare-fun res!1457718 () Bool)

(declare-fun e!2231101 () Bool)

(assert (=> d!1062146 (=> (not res!1457718) (not e!2231101))))

(assert (=> d!1062146 (= res!1457718 (semiInverseModEq!2389 (toChars!7761 (transformation!5618 (h!43345 rules!3307))) (toValue!7902 (transformation!5618 (h!43345 rules!3307)))))))

(assert (=> d!1062146 (= (inv!51288 (transformation!5618 (h!43345 rules!3307))) e!2231101)))

(declare-fun b!3605385 () Bool)

(assert (=> b!3605385 (= e!2231101 (equivClasses!2288 (toChars!7761 (transformation!5618 (h!43345 rules!3307))) (toValue!7902 (transformation!5618 (h!43345 rules!3307)))))))

(assert (= (and d!1062146 res!1457718) b!3605385))

(declare-fun m!4102179 () Bool)

(assert (=> d!1062146 m!4102179))

(declare-fun m!4102181 () Bool)

(assert (=> b!3605385 m!4102181))

(assert (=> b!3604692 d!1062146))

(declare-fun b!3605386 () Bool)

(declare-fun e!2231104 () Bool)

(assert (=> b!3605386 (= e!2231104 (matchR!4946 (derivativeStep!3140 (regex!5618 rule!403) (head!7568 lt!1239269)) (tail!5589 lt!1239269)))))

(declare-fun b!3605387 () Bool)

(declare-fun e!2231103 () Bool)

(assert (=> b!3605387 (= e!2231103 (not (= (head!7568 lt!1239269) (c!623731 (regex!5618 rule!403)))))))

(declare-fun b!3605388 () Bool)

(declare-fun res!1457724 () Bool)

(declare-fun e!2231107 () Bool)

(assert (=> b!3605388 (=> res!1457724 e!2231107)))

(assert (=> b!3605388 (= res!1457724 (not ((_ is ElementMatch!10377) (regex!5618 rule!403))))))

(declare-fun e!2231105 () Bool)

(assert (=> b!3605388 (= e!2231105 e!2231107)))

(declare-fun b!3605389 () Bool)

(declare-fun e!2231108 () Bool)

(assert (=> b!3605389 (= e!2231108 e!2231103)))

(declare-fun res!1457723 () Bool)

(assert (=> b!3605389 (=> res!1457723 e!2231103)))

(declare-fun call!260623 () Bool)

(assert (=> b!3605389 (= res!1457723 call!260623)))

(declare-fun b!3605390 () Bool)

(declare-fun res!1457721 () Bool)

(declare-fun e!2231106 () Bool)

(assert (=> b!3605390 (=> (not res!1457721) (not e!2231106))))

(assert (=> b!3605390 (= res!1457721 (isEmpty!22383 (tail!5589 lt!1239269)))))

(declare-fun b!3605392 () Bool)

(declare-fun e!2231102 () Bool)

(declare-fun lt!1239593 () Bool)

(assert (=> b!3605392 (= e!2231102 (= lt!1239593 call!260623))))

(declare-fun b!3605393 () Bool)

(declare-fun res!1457725 () Bool)

(assert (=> b!3605393 (=> res!1457725 e!2231107)))

(assert (=> b!3605393 (= res!1457725 e!2231106)))

(declare-fun res!1457722 () Bool)

(assert (=> b!3605393 (=> (not res!1457722) (not e!2231106))))

(assert (=> b!3605393 (= res!1457722 lt!1239593)))

(declare-fun b!3605394 () Bool)

(assert (=> b!3605394 (= e!2231102 e!2231105)))

(declare-fun c!623858 () Bool)

(assert (=> b!3605394 (= c!623858 ((_ is EmptyLang!10377) (regex!5618 rule!403)))))

(declare-fun d!1062148 () Bool)

(assert (=> d!1062148 e!2231102))

(declare-fun c!623857 () Bool)

(assert (=> d!1062148 (= c!623857 ((_ is EmptyExpr!10377) (regex!5618 rule!403)))))

(assert (=> d!1062148 (= lt!1239593 e!2231104)))

(declare-fun c!623859 () Bool)

(assert (=> d!1062148 (= c!623859 (isEmpty!22383 lt!1239269))))

(assert (=> d!1062148 (validRegex!4751 (regex!5618 rule!403))))

(assert (=> d!1062148 (= (matchR!4946 (regex!5618 rule!403) lt!1239269) lt!1239593)))

(declare-fun b!3605391 () Bool)

(declare-fun res!1457720 () Bool)

(assert (=> b!3605391 (=> (not res!1457720) (not e!2231106))))

(assert (=> b!3605391 (= res!1457720 (not call!260623))))

(declare-fun b!3605395 () Bool)

(declare-fun res!1457726 () Bool)

(assert (=> b!3605395 (=> res!1457726 e!2231103)))

(assert (=> b!3605395 (= res!1457726 (not (isEmpty!22383 (tail!5589 lt!1239269))))))

(declare-fun b!3605396 () Bool)

(assert (=> b!3605396 (= e!2231107 e!2231108)))

(declare-fun res!1457719 () Bool)

(assert (=> b!3605396 (=> (not res!1457719) (not e!2231108))))

(assert (=> b!3605396 (= res!1457719 (not lt!1239593))))

(declare-fun b!3605397 () Bool)

(assert (=> b!3605397 (= e!2231104 (nullable!3591 (regex!5618 rule!403)))))

(declare-fun b!3605398 () Bool)

(assert (=> b!3605398 (= e!2231106 (= (head!7568 lt!1239269) (c!623731 (regex!5618 rule!403))))))

(declare-fun bm!260618 () Bool)

(assert (=> bm!260618 (= call!260623 (isEmpty!22383 lt!1239269))))

(declare-fun b!3605399 () Bool)

(assert (=> b!3605399 (= e!2231105 (not lt!1239593))))

(assert (= (and d!1062148 c!623859) b!3605397))

(assert (= (and d!1062148 (not c!623859)) b!3605386))

(assert (= (and d!1062148 c!623857) b!3605392))

(assert (= (and d!1062148 (not c!623857)) b!3605394))

(assert (= (and b!3605394 c!623858) b!3605399))

(assert (= (and b!3605394 (not c!623858)) b!3605388))

(assert (= (and b!3605388 (not res!1457724)) b!3605393))

(assert (= (and b!3605393 res!1457722) b!3605391))

(assert (= (and b!3605391 res!1457720) b!3605390))

(assert (= (and b!3605390 res!1457721) b!3605398))

(assert (= (and b!3605393 (not res!1457725)) b!3605396))

(assert (= (and b!3605396 res!1457719) b!3605389))

(assert (= (and b!3605389 (not res!1457723)) b!3605395))

(assert (= (and b!3605395 (not res!1457726)) b!3605387))

(assert (= (or b!3605392 b!3605389 b!3605391) bm!260618))

(assert (=> b!3605395 m!4102155))

(assert (=> b!3605395 m!4102155))

(declare-fun m!4102183 () Bool)

(assert (=> b!3605395 m!4102183))

(assert (=> b!3605387 m!4102153))

(assert (=> b!3605386 m!4102153))

(assert (=> b!3605386 m!4102153))

(declare-fun m!4102185 () Bool)

(assert (=> b!3605386 m!4102185))

(assert (=> b!3605386 m!4102155))

(assert (=> b!3605386 m!4102185))

(assert (=> b!3605386 m!4102155))

(declare-fun m!4102187 () Bool)

(assert (=> b!3605386 m!4102187))

(declare-fun m!4102189 () Bool)

(assert (=> d!1062148 m!4102189))

(assert (=> d!1062148 m!4101757))

(assert (=> b!3605390 m!4102155))

(assert (=> b!3605390 m!4102155))

(assert (=> b!3605390 m!4102183))

(assert (=> b!3605398 m!4102153))

(declare-fun m!4102191 () Bool)

(assert (=> b!3605397 m!4102191))

(assert (=> bm!260618 m!4102189))

(assert (=> b!3604712 d!1062148))

(declare-fun d!1062150 () Bool)

(declare-fun res!1457731 () Bool)

(declare-fun e!2231111 () Bool)

(assert (=> d!1062150 (=> (not res!1457731) (not e!2231111))))

(assert (=> d!1062150 (= res!1457731 (validRegex!4751 (regex!5618 rule!403)))))

(assert (=> d!1062150 (= (ruleValid!1883 thiss!23823 rule!403) e!2231111)))

(declare-fun b!3605404 () Bool)

(declare-fun res!1457732 () Bool)

(assert (=> b!3605404 (=> (not res!1457732) (not e!2231111))))

(assert (=> b!3605404 (= res!1457732 (not (nullable!3591 (regex!5618 rule!403))))))

(declare-fun b!3605405 () Bool)

(assert (=> b!3605405 (= e!2231111 (not (= (tag!6316 rule!403) (String!42575 ""))))))

(assert (= (and d!1062150 res!1457731) b!3605404))

(assert (= (and b!3605404 res!1457732) b!3605405))

(assert (=> d!1062150 m!4101757))

(assert (=> b!3605404 m!4102191))

(assert (=> b!3604712 d!1062150))

(declare-fun d!1062152 () Bool)

(assert (=> d!1062152 (ruleValid!1883 thiss!23823 rule!403)))

(declare-fun lt!1239596 () Unit!53992)

(declare-fun choose!21044 (LexerInterface!5207 Rule!11036 List!38049) Unit!53992)

(assert (=> d!1062152 (= lt!1239596 (choose!21044 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1062152 (contains!7300 rules!3307 rule!403)))

(assert (=> d!1062152 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1038 thiss!23823 rule!403 rules!3307) lt!1239596)))

(declare-fun bs!570688 () Bool)

(assert (= bs!570688 d!1062152))

(assert (=> bs!570688 m!4101275))

(declare-fun m!4102193 () Bool)

(assert (=> bs!570688 m!4102193))

(assert (=> bs!570688 m!4101265))

(assert (=> b!3604712 d!1062152))

(declare-fun d!1062154 () Bool)

(declare-fun lt!1239597 () Bool)

(assert (=> d!1062154 (= lt!1239597 (select (content!5420 (usedCharacters!832 (regex!5618 (rule!8360 (_1!22044 lt!1239280))))) lt!1239277))))

(declare-fun e!2231113 () Bool)

(assert (=> d!1062154 (= lt!1239597 e!2231113)))

(declare-fun res!1457734 () Bool)

(assert (=> d!1062154 (=> (not res!1457734) (not e!2231113))))

(assert (=> d!1062154 (= res!1457734 ((_ is Cons!37923) (usedCharacters!832 (regex!5618 (rule!8360 (_1!22044 lt!1239280))))))))

(assert (=> d!1062154 (= (contains!7299 (usedCharacters!832 (regex!5618 (rule!8360 (_1!22044 lt!1239280)))) lt!1239277) lt!1239597)))

(declare-fun b!3605406 () Bool)

(declare-fun e!2231112 () Bool)

(assert (=> b!3605406 (= e!2231113 e!2231112)))

(declare-fun res!1457733 () Bool)

(assert (=> b!3605406 (=> res!1457733 e!2231112)))

(assert (=> b!3605406 (= res!1457733 (= (h!43343 (usedCharacters!832 (regex!5618 (rule!8360 (_1!22044 lt!1239280))))) lt!1239277))))

(declare-fun b!3605407 () Bool)

(assert (=> b!3605407 (= e!2231112 (contains!7299 (t!292738 (usedCharacters!832 (regex!5618 (rule!8360 (_1!22044 lt!1239280))))) lt!1239277))))

(assert (= (and d!1062154 res!1457734) b!3605406))

(assert (= (and b!3605406 (not res!1457733)) b!3605407))

(assert (=> d!1062154 m!4101279))

(declare-fun m!4102195 () Bool)

(assert (=> d!1062154 m!4102195))

(declare-fun m!4102197 () Bool)

(assert (=> d!1062154 m!4102197))

(declare-fun m!4102199 () Bool)

(assert (=> b!3605407 m!4102199))

(assert (=> b!3604691 d!1062154))

(declare-fun call!260627 () List!38047)

(declare-fun c!623861 () Bool)

(declare-fun c!623863 () Bool)

(declare-fun bm!260619 () Bool)

(assert (=> bm!260619 (= call!260627 (usedCharacters!832 (ite c!623863 (reg!10706 (regex!5618 (rule!8360 (_1!22044 lt!1239280)))) (ite c!623861 (regTwo!21267 (regex!5618 (rule!8360 (_1!22044 lt!1239280)))) (regOne!21266 (regex!5618 (rule!8360 (_1!22044 lt!1239280))))))))))

(declare-fun call!260626 () List!38047)

(declare-fun call!260624 () List!38047)

(declare-fun bm!260621 () Bool)

(declare-fun call!260625 () List!38047)

(assert (=> bm!260621 (= call!260626 (++!9434 (ite c!623861 call!260624 call!260625) (ite c!623861 call!260625 call!260624)))))

(declare-fun b!3605408 () Bool)

(declare-fun e!2231117 () List!38047)

(assert (=> b!3605408 (= e!2231117 call!260626)))

(declare-fun b!3605409 () Bool)

(declare-fun e!2231115 () List!38047)

(assert (=> b!3605409 (= e!2231115 call!260627)))

(declare-fun b!3605410 () Bool)

(declare-fun e!2231116 () List!38047)

(assert (=> b!3605410 (= e!2231116 (Cons!37923 (c!623731 (regex!5618 (rule!8360 (_1!22044 lt!1239280)))) Nil!37923))))

(declare-fun bm!260622 () Bool)

(assert (=> bm!260622 (= call!260624 (usedCharacters!832 (ite c!623861 (regOne!21267 (regex!5618 (rule!8360 (_1!22044 lt!1239280)))) (regTwo!21266 (regex!5618 (rule!8360 (_1!22044 lt!1239280)))))))))

(declare-fun b!3605411 () Bool)

(declare-fun e!2231114 () List!38047)

(assert (=> b!3605411 (= e!2231114 Nil!37923)))

(declare-fun b!3605412 () Bool)

(assert (=> b!3605412 (= c!623863 ((_ is Star!10377) (regex!5618 (rule!8360 (_1!22044 lt!1239280)))))))

(assert (=> b!3605412 (= e!2231116 e!2231115)))

(declare-fun b!3605413 () Bool)

(assert (=> b!3605413 (= e!2231114 e!2231116)))

(declare-fun c!623860 () Bool)

(assert (=> b!3605413 (= c!623860 ((_ is ElementMatch!10377) (regex!5618 (rule!8360 (_1!22044 lt!1239280)))))))

(declare-fun bm!260620 () Bool)

(assert (=> bm!260620 (= call!260625 call!260627)))

(declare-fun d!1062156 () Bool)

(declare-fun c!623862 () Bool)

(assert (=> d!1062156 (= c!623862 (or ((_ is EmptyExpr!10377) (regex!5618 (rule!8360 (_1!22044 lt!1239280)))) ((_ is EmptyLang!10377) (regex!5618 (rule!8360 (_1!22044 lt!1239280))))))))

(assert (=> d!1062156 (= (usedCharacters!832 (regex!5618 (rule!8360 (_1!22044 lt!1239280)))) e!2231114)))

(declare-fun b!3605414 () Bool)

(assert (=> b!3605414 (= e!2231115 e!2231117)))

(assert (=> b!3605414 (= c!623861 ((_ is Union!10377) (regex!5618 (rule!8360 (_1!22044 lt!1239280)))))))

(declare-fun b!3605415 () Bool)

(assert (=> b!3605415 (= e!2231117 call!260626)))

(assert (= (and d!1062156 c!623862) b!3605411))

(assert (= (and d!1062156 (not c!623862)) b!3605413))

(assert (= (and b!3605413 c!623860) b!3605410))

(assert (= (and b!3605413 (not c!623860)) b!3605412))

(assert (= (and b!3605412 c!623863) b!3605409))

(assert (= (and b!3605412 (not c!623863)) b!3605414))

(assert (= (and b!3605414 c!623861) b!3605415))

(assert (= (and b!3605414 (not c!623861)) b!3605408))

(assert (= (or b!3605415 b!3605408) bm!260622))

(assert (= (or b!3605415 b!3605408) bm!260620))

(assert (= (or b!3605415 b!3605408) bm!260621))

(assert (= (or b!3605409 bm!260620) bm!260619))

(declare-fun m!4102201 () Bool)

(assert (=> bm!260619 m!4102201))

(declare-fun m!4102203 () Bool)

(assert (=> bm!260621 m!4102203))

(declare-fun m!4102205 () Bool)

(assert (=> bm!260622 m!4102205))

(assert (=> b!3604691 d!1062156))

(declare-fun d!1062158 () Bool)

(assert (=> d!1062158 (not (contains!7299 (usedCharacters!832 (regex!5618 (rule!8360 (_1!22044 lt!1239280)))) lt!1239277))))

(declare-fun lt!1239600 () Unit!53992)

(declare-fun choose!21045 (LexerInterface!5207 List!38049 List!38049 Rule!11036 Rule!11036 C!20940) Unit!53992)

(assert (=> d!1062158 (= lt!1239600 (choose!21045 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8360 (_1!22044 lt!1239280)) lt!1239277))))

(assert (=> d!1062158 (rulesInvariant!4604 thiss!23823 rules!3307)))

(assert (=> d!1062158 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!206 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8360 (_1!22044 lt!1239280)) lt!1239277) lt!1239600)))

(declare-fun bs!570689 () Bool)

(assert (= bs!570689 d!1062158))

(assert (=> bs!570689 m!4101279))

(assert (=> bs!570689 m!4101279))

(assert (=> bs!570689 m!4101281))

(declare-fun m!4102207 () Bool)

(assert (=> bs!570689 m!4102207))

(assert (=> bs!570689 m!4101233))

(assert (=> b!3604691 d!1062158))

(declare-fun d!1062160 () Bool)

(assert (=> d!1062160 (= (isEmpty!22383 (_2!22044 lt!1239250)) ((_ is Nil!37923) (_2!22044 lt!1239250)))))

(assert (=> b!3604690 d!1062160))

(declare-fun b!3605416 () Bool)

(declare-fun e!2231120 () Bool)

(assert (=> b!3605416 (= e!2231120 (matchR!4946 (derivativeStep!3140 (regex!5618 (rule!8360 (_1!22044 lt!1239280))) (head!7568 lt!1239279)) (tail!5589 lt!1239279)))))

(declare-fun b!3605417 () Bool)

(declare-fun e!2231119 () Bool)

(assert (=> b!3605417 (= e!2231119 (not (= (head!7568 lt!1239279) (c!623731 (regex!5618 (rule!8360 (_1!22044 lt!1239280)))))))))

(declare-fun b!3605418 () Bool)

(declare-fun res!1457740 () Bool)

(declare-fun e!2231123 () Bool)

(assert (=> b!3605418 (=> res!1457740 e!2231123)))

(assert (=> b!3605418 (= res!1457740 (not ((_ is ElementMatch!10377) (regex!5618 (rule!8360 (_1!22044 lt!1239280))))))))

(declare-fun e!2231121 () Bool)

(assert (=> b!3605418 (= e!2231121 e!2231123)))

(declare-fun b!3605419 () Bool)

(declare-fun e!2231124 () Bool)

(assert (=> b!3605419 (= e!2231124 e!2231119)))

(declare-fun res!1457739 () Bool)

(assert (=> b!3605419 (=> res!1457739 e!2231119)))

(declare-fun call!260628 () Bool)

(assert (=> b!3605419 (= res!1457739 call!260628)))

(declare-fun b!3605420 () Bool)

(declare-fun res!1457737 () Bool)

(declare-fun e!2231122 () Bool)

(assert (=> b!3605420 (=> (not res!1457737) (not e!2231122))))

(assert (=> b!3605420 (= res!1457737 (isEmpty!22383 (tail!5589 lt!1239279)))))

(declare-fun b!3605422 () Bool)

(declare-fun e!2231118 () Bool)

(declare-fun lt!1239601 () Bool)

(assert (=> b!3605422 (= e!2231118 (= lt!1239601 call!260628))))

(declare-fun b!3605423 () Bool)

(declare-fun res!1457741 () Bool)

(assert (=> b!3605423 (=> res!1457741 e!2231123)))

(assert (=> b!3605423 (= res!1457741 e!2231122)))

(declare-fun res!1457738 () Bool)

(assert (=> b!3605423 (=> (not res!1457738) (not e!2231122))))

(assert (=> b!3605423 (= res!1457738 lt!1239601)))

(declare-fun b!3605424 () Bool)

(assert (=> b!3605424 (= e!2231118 e!2231121)))

(declare-fun c!623866 () Bool)

(assert (=> b!3605424 (= c!623866 ((_ is EmptyLang!10377) (regex!5618 (rule!8360 (_1!22044 lt!1239280)))))))

(declare-fun d!1062162 () Bool)

(assert (=> d!1062162 e!2231118))

(declare-fun c!623865 () Bool)

(assert (=> d!1062162 (= c!623865 ((_ is EmptyExpr!10377) (regex!5618 (rule!8360 (_1!22044 lt!1239280)))))))

(assert (=> d!1062162 (= lt!1239601 e!2231120)))

(declare-fun c!623867 () Bool)

(assert (=> d!1062162 (= c!623867 (isEmpty!22383 lt!1239279))))

(assert (=> d!1062162 (validRegex!4751 (regex!5618 (rule!8360 (_1!22044 lt!1239280))))))

(assert (=> d!1062162 (= (matchR!4946 (regex!5618 (rule!8360 (_1!22044 lt!1239280))) lt!1239279) lt!1239601)))

(declare-fun b!3605421 () Bool)

(declare-fun res!1457736 () Bool)

(assert (=> b!3605421 (=> (not res!1457736) (not e!2231122))))

(assert (=> b!3605421 (= res!1457736 (not call!260628))))

(declare-fun b!3605425 () Bool)

(declare-fun res!1457742 () Bool)

(assert (=> b!3605425 (=> res!1457742 e!2231119)))

(assert (=> b!3605425 (= res!1457742 (not (isEmpty!22383 (tail!5589 lt!1239279))))))

(declare-fun b!3605426 () Bool)

(assert (=> b!3605426 (= e!2231123 e!2231124)))

(declare-fun res!1457735 () Bool)

(assert (=> b!3605426 (=> (not res!1457735) (not e!2231124))))

(assert (=> b!3605426 (= res!1457735 (not lt!1239601))))

(declare-fun b!3605427 () Bool)

(assert (=> b!3605427 (= e!2231120 (nullable!3591 (regex!5618 (rule!8360 (_1!22044 lt!1239280)))))))

(declare-fun b!3605428 () Bool)

(assert (=> b!3605428 (= e!2231122 (= (head!7568 lt!1239279) (c!623731 (regex!5618 (rule!8360 (_1!22044 lt!1239280))))))))

(declare-fun bm!260623 () Bool)

(assert (=> bm!260623 (= call!260628 (isEmpty!22383 lt!1239279))))

(declare-fun b!3605429 () Bool)

(assert (=> b!3605429 (= e!2231121 (not lt!1239601))))

(assert (= (and d!1062162 c!623867) b!3605427))

(assert (= (and d!1062162 (not c!623867)) b!3605416))

(assert (= (and d!1062162 c!623865) b!3605422))

(assert (= (and d!1062162 (not c!623865)) b!3605424))

(assert (= (and b!3605424 c!623866) b!3605429))

(assert (= (and b!3605424 (not c!623866)) b!3605418))

(assert (= (and b!3605418 (not res!1457740)) b!3605423))

(assert (= (and b!3605423 res!1457738) b!3605421))

(assert (= (and b!3605421 res!1457736) b!3605420))

(assert (= (and b!3605420 res!1457737) b!3605428))

(assert (= (and b!3605423 (not res!1457741)) b!3605426))

(assert (= (and b!3605426 res!1457735) b!3605419))

(assert (= (and b!3605419 (not res!1457739)) b!3605425))

(assert (= (and b!3605425 (not res!1457742)) b!3605417))

(assert (= (or b!3605422 b!3605419 b!3605421) bm!260623))

(assert (=> b!3605425 m!4102001))

(assert (=> b!3605425 m!4102001))

(declare-fun m!4102209 () Bool)

(assert (=> b!3605425 m!4102209))

(assert (=> b!3605417 m!4101257))

(assert (=> b!3605416 m!4101257))

(assert (=> b!3605416 m!4101257))

(declare-fun m!4102211 () Bool)

(assert (=> b!3605416 m!4102211))

(assert (=> b!3605416 m!4102001))

(assert (=> b!3605416 m!4102211))

(assert (=> b!3605416 m!4102001))

(declare-fun m!4102213 () Bool)

(assert (=> b!3605416 m!4102213))

(declare-fun m!4102215 () Bool)

(assert (=> d!1062162 m!4102215))

(declare-fun m!4102217 () Bool)

(assert (=> d!1062162 m!4102217))

(assert (=> b!3605420 m!4102001))

(assert (=> b!3605420 m!4102001))

(assert (=> b!3605420 m!4102209))

(assert (=> b!3605428 m!4101257))

(declare-fun m!4102219 () Bool)

(assert (=> b!3605427 m!4102219))

(assert (=> bm!260623 m!4102215))

(assert (=> b!3604689 d!1062162))

(declare-fun d!1062164 () Bool)

(assert (=> d!1062164 (= (isEmpty!22383 suffix!1395) ((_ is Nil!37923) suffix!1395))))

(assert (=> b!3604688 d!1062164))

(declare-fun d!1062166 () Bool)

(declare-fun lt!1239602 () Bool)

(assert (=> d!1062166 (= lt!1239602 (select (content!5420 (usedCharacters!832 (regex!5618 anOtherTypeRule!33))) lt!1239266))))

(declare-fun e!2231126 () Bool)

(assert (=> d!1062166 (= lt!1239602 e!2231126)))

(declare-fun res!1457744 () Bool)

(assert (=> d!1062166 (=> (not res!1457744) (not e!2231126))))

(assert (=> d!1062166 (= res!1457744 ((_ is Cons!37923) (usedCharacters!832 (regex!5618 anOtherTypeRule!33))))))

(assert (=> d!1062166 (= (contains!7299 (usedCharacters!832 (regex!5618 anOtherTypeRule!33)) lt!1239266) lt!1239602)))

(declare-fun b!3605430 () Bool)

(declare-fun e!2231125 () Bool)

(assert (=> b!3605430 (= e!2231126 e!2231125)))

(declare-fun res!1457743 () Bool)

(assert (=> b!3605430 (=> res!1457743 e!2231125)))

(assert (=> b!3605430 (= res!1457743 (= (h!43343 (usedCharacters!832 (regex!5618 anOtherTypeRule!33))) lt!1239266))))

(declare-fun b!3605431 () Bool)

(assert (=> b!3605431 (= e!2231125 (contains!7299 (t!292738 (usedCharacters!832 (regex!5618 anOtherTypeRule!33))) lt!1239266))))

(assert (= (and d!1062166 res!1457744) b!3605430))

(assert (= (and b!3605430 (not res!1457743)) b!3605431))

(assert (=> d!1062166 m!4101329))

(declare-fun m!4102221 () Bool)

(assert (=> d!1062166 m!4102221))

(declare-fun m!4102223 () Bool)

(assert (=> d!1062166 m!4102223))

(declare-fun m!4102225 () Bool)

(assert (=> b!3605431 m!4102225))

(assert (=> b!3604709 d!1062166))

(declare-fun c!623871 () Bool)

(declare-fun call!260632 () List!38047)

(declare-fun bm!260624 () Bool)

(declare-fun c!623869 () Bool)

(assert (=> bm!260624 (= call!260632 (usedCharacters!832 (ite c!623871 (reg!10706 (regex!5618 anOtherTypeRule!33)) (ite c!623869 (regTwo!21267 (regex!5618 anOtherTypeRule!33)) (regOne!21266 (regex!5618 anOtherTypeRule!33))))))))

(declare-fun call!260631 () List!38047)

(declare-fun bm!260626 () Bool)

(declare-fun call!260629 () List!38047)

(declare-fun call!260630 () List!38047)

(assert (=> bm!260626 (= call!260631 (++!9434 (ite c!623869 call!260629 call!260630) (ite c!623869 call!260630 call!260629)))))

(declare-fun b!3605432 () Bool)

(declare-fun e!2231130 () List!38047)

(assert (=> b!3605432 (= e!2231130 call!260631)))

(declare-fun b!3605433 () Bool)

(declare-fun e!2231128 () List!38047)

(assert (=> b!3605433 (= e!2231128 call!260632)))

(declare-fun b!3605434 () Bool)

(declare-fun e!2231129 () List!38047)

(assert (=> b!3605434 (= e!2231129 (Cons!37923 (c!623731 (regex!5618 anOtherTypeRule!33)) Nil!37923))))

(declare-fun bm!260627 () Bool)

(assert (=> bm!260627 (= call!260629 (usedCharacters!832 (ite c!623869 (regOne!21267 (regex!5618 anOtherTypeRule!33)) (regTwo!21266 (regex!5618 anOtherTypeRule!33)))))))

(declare-fun b!3605435 () Bool)

(declare-fun e!2231127 () List!38047)

(assert (=> b!3605435 (= e!2231127 Nil!37923)))

(declare-fun b!3605436 () Bool)

(assert (=> b!3605436 (= c!623871 ((_ is Star!10377) (regex!5618 anOtherTypeRule!33)))))

(assert (=> b!3605436 (= e!2231129 e!2231128)))

(declare-fun b!3605437 () Bool)

(assert (=> b!3605437 (= e!2231127 e!2231129)))

(declare-fun c!623868 () Bool)

(assert (=> b!3605437 (= c!623868 ((_ is ElementMatch!10377) (regex!5618 anOtherTypeRule!33)))))

(declare-fun bm!260625 () Bool)

(assert (=> bm!260625 (= call!260630 call!260632)))

(declare-fun d!1062168 () Bool)

(declare-fun c!623870 () Bool)

(assert (=> d!1062168 (= c!623870 (or ((_ is EmptyExpr!10377) (regex!5618 anOtherTypeRule!33)) ((_ is EmptyLang!10377) (regex!5618 anOtherTypeRule!33))))))

(assert (=> d!1062168 (= (usedCharacters!832 (regex!5618 anOtherTypeRule!33)) e!2231127)))

(declare-fun b!3605438 () Bool)

(assert (=> b!3605438 (= e!2231128 e!2231130)))

(assert (=> b!3605438 (= c!623869 ((_ is Union!10377) (regex!5618 anOtherTypeRule!33)))))

(declare-fun b!3605439 () Bool)

(assert (=> b!3605439 (= e!2231130 call!260631)))

(assert (= (and d!1062168 c!623870) b!3605435))

(assert (= (and d!1062168 (not c!623870)) b!3605437))

(assert (= (and b!3605437 c!623868) b!3605434))

(assert (= (and b!3605437 (not c!623868)) b!3605436))

(assert (= (and b!3605436 c!623871) b!3605433))

(assert (= (and b!3605436 (not c!623871)) b!3605438))

(assert (= (and b!3605438 c!623869) b!3605439))

(assert (= (and b!3605438 (not c!623869)) b!3605432))

(assert (= (or b!3605439 b!3605432) bm!260627))

(assert (= (or b!3605439 b!3605432) bm!260625))

(assert (= (or b!3605439 b!3605432) bm!260626))

(assert (= (or b!3605433 bm!260625) bm!260624))

(declare-fun m!4102227 () Bool)

(assert (=> bm!260624 m!4102227))

(declare-fun m!4102229 () Bool)

(assert (=> bm!260626 m!4102229))

(declare-fun m!4102231 () Bool)

(assert (=> bm!260627 m!4102231))

(assert (=> b!3604709 d!1062168))

(declare-fun b!3605450 () Bool)

(declare-fun e!2231133 () Bool)

(assert (=> b!3605450 (= e!2231133 tp_is_empty!17837)))

(declare-fun b!3605451 () Bool)

(declare-fun tp!1102427 () Bool)

(declare-fun tp!1102429 () Bool)

(assert (=> b!3605451 (= e!2231133 (and tp!1102427 tp!1102429))))

(assert (=> b!3604692 (= tp!1102354 e!2231133)))

(declare-fun b!3605453 () Bool)

(declare-fun tp!1102431 () Bool)

(declare-fun tp!1102428 () Bool)

(assert (=> b!3605453 (= e!2231133 (and tp!1102431 tp!1102428))))

(declare-fun b!3605452 () Bool)

(declare-fun tp!1102430 () Bool)

(assert (=> b!3605452 (= e!2231133 tp!1102430)))

(assert (= (and b!3604692 ((_ is ElementMatch!10377) (regex!5618 (h!43345 rules!3307)))) b!3605450))

(assert (= (and b!3604692 ((_ is Concat!16226) (regex!5618 (h!43345 rules!3307)))) b!3605451))

(assert (= (and b!3604692 ((_ is Star!10377) (regex!5618 (h!43345 rules!3307)))) b!3605452))

(assert (= (and b!3604692 ((_ is Union!10377) (regex!5618 (h!43345 rules!3307)))) b!3605453))

(declare-fun b!3605454 () Bool)

(declare-fun e!2231134 () Bool)

(assert (=> b!3605454 (= e!2231134 tp_is_empty!17837)))

(declare-fun b!3605455 () Bool)

(declare-fun tp!1102432 () Bool)

(declare-fun tp!1102434 () Bool)

(assert (=> b!3605455 (= e!2231134 (and tp!1102432 tp!1102434))))

(assert (=> b!3604708 (= tp!1102355 e!2231134)))

(declare-fun b!3605457 () Bool)

(declare-fun tp!1102436 () Bool)

(declare-fun tp!1102433 () Bool)

(assert (=> b!3605457 (= e!2231134 (and tp!1102436 tp!1102433))))

(declare-fun b!3605456 () Bool)

(declare-fun tp!1102435 () Bool)

(assert (=> b!3605456 (= e!2231134 tp!1102435)))

(assert (= (and b!3604708 ((_ is ElementMatch!10377) (regex!5618 (rule!8360 token!511)))) b!3605454))

(assert (= (and b!3604708 ((_ is Concat!16226) (regex!5618 (rule!8360 token!511)))) b!3605455))

(assert (= (and b!3604708 ((_ is Star!10377) (regex!5618 (rule!8360 token!511)))) b!3605456))

(assert (= (and b!3604708 ((_ is Union!10377) (regex!5618 (rule!8360 token!511)))) b!3605457))

(declare-fun b!3605462 () Bool)

(declare-fun e!2231137 () Bool)

(declare-fun tp!1102439 () Bool)

(assert (=> b!3605462 (= e!2231137 (and tp_is_empty!17837 tp!1102439))))

(assert (=> b!3604681 (= tp!1102347 e!2231137)))

(assert (= (and b!3604681 ((_ is Cons!37923) (t!292738 suffix!1395))) b!3605462))

(declare-fun b!3605473 () Bool)

(declare-fun b_free!93405 () Bool)

(declare-fun b_next!94109 () Bool)

(assert (=> b!3605473 (= b_free!93405 (not b_next!94109))))

(declare-fun tb!206565 () Bool)

(declare-fun t!292850 () Bool)

(assert (=> (and b!3605473 (= (toValue!7902 (transformation!5618 (h!43345 (t!292740 rules!3307)))) (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292850) tb!206565))

(declare-fun result!251766 () Bool)

(assert (= result!251766 result!251692))

(assert (=> d!1061930 t!292850))

(declare-fun tb!206567 () Bool)

(declare-fun t!292852 () Bool)

(assert (=> (and b!3605473 (= (toValue!7902 (transformation!5618 (h!43345 (t!292740 rules!3307)))) (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292852) tb!206567))

(declare-fun result!251768 () Bool)

(assert (= result!251768 result!251648))

(assert (=> d!1061980 t!292852))

(assert (=> d!1061930 t!292852))

(declare-fun t!292854 () Bool)

(declare-fun tb!206569 () Bool)

(assert (=> (and b!3605473 (= (toValue!7902 (transformation!5618 (h!43345 (t!292740 rules!3307)))) (toValue!7902 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292854) tb!206569))

(declare-fun result!251770 () Bool)

(assert (= result!251770 result!251710))

(assert (=> d!1062016 t!292854))

(assert (=> d!1061908 t!292852))

(declare-fun b_and!262447 () Bool)

(declare-fun tp!1102448 () Bool)

(assert (=> b!3605473 (= tp!1102448 (and (=> t!292854 result!251770) (=> t!292850 result!251766) (=> t!292852 result!251768) b_and!262447))))

(declare-fun b_free!93407 () Bool)

(declare-fun b_next!94111 () Bool)

(assert (=> b!3605473 (= b_free!93407 (not b_next!94111))))

(declare-fun t!292856 () Bool)

(declare-fun tb!206571 () Bool)

(assert (=> (and b!3605473 (= (toChars!7761 (transformation!5618 (h!43345 (t!292740 rules!3307)))) (toChars!7761 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292856) tb!206571))

(declare-fun result!251772 () Bool)

(assert (= result!251772 result!251700))

(assert (=> d!1061980 t!292856))

(declare-fun tb!206573 () Bool)

(declare-fun t!292858 () Bool)

(assert (=> (and b!3605473 (= (toChars!7761 (transformation!5618 (h!43345 (t!292740 rules!3307)))) (toChars!7761 (transformation!5618 (rule!8360 token!511)))) t!292858) tb!206573))

(declare-fun result!251774 () Bool)

(assert (= result!251774 result!251718))

(assert (=> d!1062036 t!292858))

(declare-fun t!292860 () Bool)

(declare-fun tb!206575 () Bool)

(assert (=> (and b!3605473 (= (toChars!7761 (transformation!5618 (h!43345 (t!292740 rules!3307)))) (toChars!7761 (transformation!5618 (rule!8360 (_1!22044 lt!1239280))))) t!292860) tb!206575))

(declare-fun result!251776 () Bool)

(assert (= result!251776 result!251726))

(assert (=> d!1062084 t!292860))

(assert (=> b!3605182 t!292858))

(declare-fun tp!1102450 () Bool)

(declare-fun b_and!262449 () Bool)

(assert (=> b!3605473 (= tp!1102450 (and (=> t!292856 result!251772) (=> t!292858 result!251774) (=> t!292860 result!251776) b_and!262449))))

(declare-fun e!2231146 () Bool)

(assert (=> b!3605473 (= e!2231146 (and tp!1102448 tp!1102450))))

(declare-fun e!2231149 () Bool)

(declare-fun b!3605472 () Bool)

(declare-fun tp!1102451 () Bool)

(assert (=> b!3605472 (= e!2231149 (and tp!1102451 (inv!51285 (tag!6316 (h!43345 (t!292740 rules!3307)))) (inv!51288 (transformation!5618 (h!43345 (t!292740 rules!3307)))) e!2231146))))

(declare-fun b!3605471 () Bool)

(declare-fun e!2231148 () Bool)

(declare-fun tp!1102449 () Bool)

(assert (=> b!3605471 (= e!2231148 (and e!2231149 tp!1102449))))

(assert (=> b!3604696 (= tp!1102356 e!2231148)))

(assert (= b!3605472 b!3605473))

(assert (= b!3605471 b!3605472))

(assert (= (and b!3604696 ((_ is Cons!37925) (t!292740 rules!3307))) b!3605471))

(declare-fun m!4102233 () Bool)

(assert (=> b!3605472 m!4102233))

(declare-fun m!4102235 () Bool)

(assert (=> b!3605472 m!4102235))

(declare-fun b!3605474 () Bool)

(declare-fun e!2231150 () Bool)

(assert (=> b!3605474 (= e!2231150 tp_is_empty!17837)))

(declare-fun b!3605475 () Bool)

(declare-fun tp!1102452 () Bool)

(declare-fun tp!1102454 () Bool)

(assert (=> b!3605475 (= e!2231150 (and tp!1102452 tp!1102454))))

(assert (=> b!3604706 (= tp!1102359 e!2231150)))

(declare-fun b!3605477 () Bool)

(declare-fun tp!1102456 () Bool)

(declare-fun tp!1102453 () Bool)

(assert (=> b!3605477 (= e!2231150 (and tp!1102456 tp!1102453))))

(declare-fun b!3605476 () Bool)

(declare-fun tp!1102455 () Bool)

(assert (=> b!3605476 (= e!2231150 tp!1102455)))

(assert (= (and b!3604706 ((_ is ElementMatch!10377) (regex!5618 anOtherTypeRule!33))) b!3605474))

(assert (= (and b!3604706 ((_ is Concat!16226) (regex!5618 anOtherTypeRule!33))) b!3605475))

(assert (= (and b!3604706 ((_ is Star!10377) (regex!5618 anOtherTypeRule!33))) b!3605476))

(assert (= (and b!3604706 ((_ is Union!10377) (regex!5618 anOtherTypeRule!33))) b!3605477))

(declare-fun b!3605478 () Bool)

(declare-fun e!2231151 () Bool)

(declare-fun tp!1102457 () Bool)

(assert (=> b!3605478 (= e!2231151 (and tp_is_empty!17837 tp!1102457))))

(assert (=> b!3604682 (= tp!1102348 e!2231151)))

(assert (= (and b!3604682 ((_ is Cons!37923) (originalCharacters!6332 token!511))) b!3605478))

(declare-fun b!3605479 () Bool)

(declare-fun e!2231152 () Bool)

(assert (=> b!3605479 (= e!2231152 tp_is_empty!17837)))

(declare-fun b!3605480 () Bool)

(declare-fun tp!1102458 () Bool)

(declare-fun tp!1102460 () Bool)

(assert (=> b!3605480 (= e!2231152 (and tp!1102458 tp!1102460))))

(assert (=> b!3604677 (= tp!1102358 e!2231152)))

(declare-fun b!3605482 () Bool)

(declare-fun tp!1102462 () Bool)

(declare-fun tp!1102459 () Bool)

(assert (=> b!3605482 (= e!2231152 (and tp!1102462 tp!1102459))))

(declare-fun b!3605481 () Bool)

(declare-fun tp!1102461 () Bool)

(assert (=> b!3605481 (= e!2231152 tp!1102461)))

(assert (= (and b!3604677 ((_ is ElementMatch!10377) (regex!5618 rule!403))) b!3605479))

(assert (= (and b!3604677 ((_ is Concat!16226) (regex!5618 rule!403))) b!3605480))

(assert (= (and b!3604677 ((_ is Star!10377) (regex!5618 rule!403))) b!3605481))

(assert (= (and b!3604677 ((_ is Union!10377) (regex!5618 rule!403))) b!3605482))

(declare-fun b_lambda!106683 () Bool)

(assert (= b_lambda!106671 (or (and b!3604707 b_free!93395) (and b!3604710 b_free!93387 (= (toChars!7761 (transformation!5618 rule!403)) (toChars!7761 (transformation!5618 (rule!8360 token!511))))) (and b!3604711 b_free!93391 (= (toChars!7761 (transformation!5618 (h!43345 rules!3307))) (toChars!7761 (transformation!5618 (rule!8360 token!511))))) (and b!3604700 b_free!93399 (= (toChars!7761 (transformation!5618 anOtherTypeRule!33)) (toChars!7761 (transformation!5618 (rule!8360 token!511))))) (and b!3605473 b_free!93407 (= (toChars!7761 (transformation!5618 (h!43345 (t!292740 rules!3307)))) (toChars!7761 (transformation!5618 (rule!8360 token!511))))) b_lambda!106683)))

(declare-fun b_lambda!106685 () Bool)

(assert (= b_lambda!106675 (or (and b!3604707 b_free!93395) (and b!3604710 b_free!93387 (= (toChars!7761 (transformation!5618 rule!403)) (toChars!7761 (transformation!5618 (rule!8360 token!511))))) (and b!3604711 b_free!93391 (= (toChars!7761 (transformation!5618 (h!43345 rules!3307))) (toChars!7761 (transformation!5618 (rule!8360 token!511))))) (and b!3604700 b_free!93399 (= (toChars!7761 (transformation!5618 anOtherTypeRule!33)) (toChars!7761 (transformation!5618 (rule!8360 token!511))))) (and b!3605473 b_free!93407 (= (toChars!7761 (transformation!5618 (h!43345 (t!292740 rules!3307)))) (toChars!7761 (transformation!5618 (rule!8360 token!511))))) b_lambda!106685)))

(check-sat (not tb!206465) (not b!3605222) (not b!3605191) (not b!3605192) (not d!1061992) (not d!1062020) (not bm!260622) (not d!1062054) (not b!3605457) (not bm!260605) (not d!1062148) (not b!3605427) (not b!3605477) (not b_lambda!106661) b_and!262429 (not b!3605168) (not b_lambda!106645) (not b!3605171) (not b!3605431) (not d!1062136) (not b_lambda!106685) (not b!3605334) (not b!3605207) (not b_next!94093) (not b!3605044) (not b!3605036) (not d!1062034) (not d!1062102) (not b!3604937) (not b!3605462) (not b!3605343) (not b_lambda!106669) (not b!3605193) (not b!3605480) (not b_next!94089) (not b!3605453) (not b!3605385) (not b!3605184) (not b!3605476) (not b!3605041) (not d!1062152) (not d!1062150) (not b!3605475) (not b!3605247) (not b!3605071) (not b!3605016) (not b!3605390) (not b!3605472) (not b!3605240) (not d!1062036) (not tb!206537) (not b!3605420) (not b!3605384) (not b!3605386) (not b!3605072) (not b!3605340) (not b_next!94091) (not b!3605077) b_and!262409 (not b!3605248) (not d!1062118) (not b!3605158) (not b!3605249) (not d!1062098) (not b!3605341) (not d!1062032) (not b!3605380) (not tb!206505) (not bm!260604) (not d!1061926) (not b!3604965) (not b!3605482) (not b!3605428) (not d!1062056) (not b_next!94095) (not tb!206529) (not b!3605244) (not d!1062082) (not b!3605387) (not d!1062154) (not b!3605169) (not b!3605452) (not b!3605185) (not d!1062130) (not b!3605187) (not b!3605398) b_and!262447 (not b!3605339) (not b_lambda!106683) (not d!1062008) (not b_next!94101) (not b_lambda!106665) (not b!3605478) (not d!1062110) (not bm!260619) (not b!3605112) (not bm!260621) (not b!3605166) (not d!1062046) (not bm!260626) (not b!3605407) (not b!3605186) (not b!3605161) (not d!1062106) (not b!3605084) (not b!3605345) (not b!3605241) b_and!262433 (not bm!260624) (not b!3605188) (not b!3605456) (not d!1062108) (not b!3605037) (not b!3604986) (not d!1062146) (not b_next!94097) (not b!3605395) (not b!3605002) (not b!3605078) (not b_lambda!106663) b_and!262405 (not b!3604958) (not b!3605074) tp_is_empty!17837 (not b_next!94103) (not b!3605183) (not b!3605073) (not d!1061916) (not b!3605425) (not b_next!94109) (not b!3605182) (not d!1062030) (not d!1061928) (not bm!260618) (not d!1061994) (not b!3605336) (not b!3605079) (not bm!260614) b_and!262403 (not d!1061930) b_and!262431 (not d!1062028) (not b!3605455) (not b!3605206) (not bm!260596) (not d!1062084) (not d!1062094) (not bm!260623) (not b!3605335) (not b!3605039) (not b!3605233) (not d!1062010) (not b_lambda!106673) (not b!3605234) (not b!3605404) b_and!262449 (not bm!260617) (not b_lambda!106667) (not b!3605397) (not d!1062158) (not b!3605471) (not d!1062112) (not b!3605221) (not b!3605481) (not d!1062088) (not d!1062022) (not b!3605075) (not d!1062114) (not b!3605381) (not b!3605243) (not b!3605451) (not d!1062166) (not b!3605157) (not b!3605042) (not b!3605043) (not b!3605416) (not d!1062134) (not d!1062024) b_and!262427 (not b!3605038) b_and!262407 (not b!3605208) (not b_next!94099) (not d!1061980) (not b!3605417) (not d!1062000) (not b!3605189) (not b!3605105) (not b_next!94111) (not b!3605110) (not d!1062162) (not bm!260616) (not bm!260627) (not d!1062096) (not b!3605235) (not tb!206521) (not tb!206513) (not b!3604971) (not d!1062058) (not b!3604959))
(check-sat b_and!262429 (not b_next!94093) (not b_next!94089) (not b_next!94095) b_and!262447 (not b_next!94101) b_and!262433 (not b_next!94097) (not b_next!94109) b_and!262449 b_and!262427 (not b_next!94111) (not b_next!94091) b_and!262409 b_and!262405 (not b_next!94103) b_and!262403 b_and!262431 b_and!262407 (not b_next!94099))
