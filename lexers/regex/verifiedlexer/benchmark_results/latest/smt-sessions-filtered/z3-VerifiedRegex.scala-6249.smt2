; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!304918 () Bool)

(assert start!304918)

(declare-fun b!3257963 () Bool)

(declare-fun b_free!86401 () Bool)

(declare-fun b_next!87105 () Bool)

(assert (=> b!3257963 (= b_free!86401 (not b_next!87105))))

(declare-fun tp!1025273 () Bool)

(declare-fun b_and!219867 () Bool)

(assert (=> b!3257963 (= tp!1025273 b_and!219867)))

(declare-fun b_free!86403 () Bool)

(declare-fun b_next!87107 () Bool)

(assert (=> b!3257963 (= b_free!86403 (not b_next!87107))))

(declare-fun tp!1025276 () Bool)

(declare-fun b_and!219869 () Bool)

(assert (=> b!3257963 (= tp!1025276 b_and!219869)))

(declare-fun b!3257966 () Bool)

(declare-fun b_free!86405 () Bool)

(declare-fun b_next!87109 () Bool)

(assert (=> b!3257966 (= b_free!86405 (not b_next!87109))))

(declare-fun tp!1025269 () Bool)

(declare-fun b_and!219871 () Bool)

(assert (=> b!3257966 (= tp!1025269 b_and!219871)))

(declare-fun b_free!86407 () Bool)

(declare-fun b_next!87111 () Bool)

(assert (=> b!3257966 (= b_free!86407 (not b_next!87111))))

(declare-fun tp!1025268 () Bool)

(declare-fun b_and!219873 () Bool)

(assert (=> b!3257966 (= tp!1025268 b_and!219873)))

(declare-fun b!3257991 () Bool)

(declare-fun b_free!86409 () Bool)

(declare-fun b_next!87113 () Bool)

(assert (=> b!3257991 (= b_free!86409 (not b_next!87113))))

(declare-fun tp!1025280 () Bool)

(declare-fun b_and!219875 () Bool)

(assert (=> b!3257991 (= tp!1025280 b_and!219875)))

(declare-fun b_free!86411 () Bool)

(declare-fun b_next!87115 () Bool)

(assert (=> b!3257991 (= b_free!86411 (not b_next!87115))))

(declare-fun tp!1025274 () Bool)

(declare-fun b_and!219877 () Bool)

(assert (=> b!3257991 (= tp!1025274 b_and!219877)))

(declare-fun b!3257962 () Bool)

(declare-fun e!2029480 () Bool)

(declare-fun e!2029477 () Bool)

(assert (=> b!3257962 (= e!2029480 e!2029477)))

(declare-fun res!1324254 () Bool)

(assert (=> b!3257962 (=> (not res!1324254) (not e!2029477))))

(declare-datatypes ((C!20260 0))(
  ( (C!20261 (val!12178 Int)) )
))
(declare-datatypes ((List!36538 0))(
  ( (Nil!36414) (Cons!36414 (h!41834 (_ BitVec 16)) (t!245699 List!36538)) )
))
(declare-datatypes ((TokenValue!5508 0))(
  ( (FloatLiteralValue!11016 (text!39001 List!36538)) (TokenValueExt!5507 (__x!23233 Int)) (Broken!27540 (value!170857 List!36538)) (Object!5631) (End!5508) (Def!5508) (Underscore!5508) (Match!5508) (Else!5508) (Error!5508) (Case!5508) (If!5508) (Extends!5508) (Abstract!5508) (Class!5508) (Val!5508) (DelimiterValue!11016 (del!5568 List!36538)) (KeywordValue!5514 (value!170858 List!36538)) (CommentValue!11016 (value!170859 List!36538)) (WhitespaceValue!11016 (value!170860 List!36538)) (IndentationValue!5508 (value!170861 List!36538)) (String!40873) (Int32!5508) (Broken!27541 (value!170862 List!36538)) (Boolean!5509) (Unit!51133) (OperatorValue!5511 (op!5568 List!36538)) (IdentifierValue!11016 (value!170863 List!36538)) (IdentifierValue!11017 (value!170864 List!36538)) (WhitespaceValue!11017 (value!170865 List!36538)) (True!11016) (False!11016) (Broken!27542 (value!170866 List!36538)) (Broken!27543 (value!170867 List!36538)) (True!11017) (RightBrace!5508) (RightBracket!5508) (Colon!5508) (Null!5508) (Comma!5508) (LeftBracket!5508) (False!11017) (LeftBrace!5508) (ImaginaryLiteralValue!5508 (text!39002 List!36538)) (StringLiteralValue!16524 (value!170868 List!36538)) (EOFValue!5508 (value!170869 List!36538)) (IdentValue!5508 (value!170870 List!36538)) (DelimiterValue!11017 (value!170871 List!36538)) (DedentValue!5508 (value!170872 List!36538)) (NewLineValue!5508 (value!170873 List!36538)) (IntegerValue!16524 (value!170874 (_ BitVec 32)) (text!39003 List!36538)) (IntegerValue!16525 (value!170875 Int) (text!39004 List!36538)) (Times!5508) (Or!5508) (Equal!5508) (Minus!5508) (Broken!27544 (value!170876 List!36538)) (And!5508) (Div!5508) (LessEqual!5508) (Mod!5508) (Concat!15545) (Not!5508) (Plus!5508) (SpaceValue!5508 (value!170877 List!36538)) (IntegerValue!16526 (value!170878 Int) (text!39005 List!36538)) (StringLiteralValue!16525 (text!39006 List!36538)) (FloatLiteralValue!11017 (text!39007 List!36538)) (BytesLiteralValue!5508 (value!170879 List!36538)) (CommentValue!11017 (value!170880 List!36538)) (StringLiteralValue!16526 (value!170881 List!36538)) (ErrorTokenValue!5508 (msg!5569 List!36538)) )
))
(declare-datatypes ((List!36539 0))(
  ( (Nil!36415) (Cons!36415 (h!41835 C!20260) (t!245700 List!36539)) )
))
(declare-datatypes ((IArray!21867 0))(
  ( (IArray!21868 (innerList!10991 List!36539)) )
))
(declare-datatypes ((Conc!10931 0))(
  ( (Node!10931 (left!28356 Conc!10931) (right!28686 Conc!10931) (csize!22092 Int) (cheight!11142 Int)) (Leaf!17181 (xs!14059 IArray!21867) (csize!22093 Int)) (Empty!10931) )
))
(declare-datatypes ((BalanceConc!21476 0))(
  ( (BalanceConc!21477 (c!549288 Conc!10931)) )
))
(declare-datatypes ((Regex!10037 0))(
  ( (ElementMatch!10037 (c!549289 C!20260)) (Concat!15546 (regOne!20586 Regex!10037) (regTwo!20586 Regex!10037)) (EmptyExpr!10037) (Star!10037 (reg!10366 Regex!10037)) (EmptyLang!10037) (Union!10037 (regOne!20587 Regex!10037) (regTwo!20587 Regex!10037)) )
))
(declare-datatypes ((String!40874 0))(
  ( (String!40875 (value!170882 String)) )
))
(declare-datatypes ((TokenValueInjection!10444 0))(
  ( (TokenValueInjection!10445 (toValue!7394 Int) (toChars!7253 Int)) )
))
(declare-datatypes ((Rule!10356 0))(
  ( (Rule!10357 (regex!5278 Regex!10037) (tag!5814 String!40874) (isSeparator!5278 Bool) (transformation!5278 TokenValueInjection!10444)) )
))
(declare-fun lt!1104131 () Rule!10356)

(declare-fun lt!1104126 () List!36539)

(declare-fun matchR!4659 (Regex!10037 List!36539) Bool)

(assert (=> b!3257962 (= res!1324254 (matchR!4659 (regex!5278 lt!1104131) lt!1104126))))

(declare-datatypes ((Option!7243 0))(
  ( (None!7242) (Some!7242 (v!35904 Rule!10356)) )
))
(declare-fun lt!1104119 () Option!7243)

(declare-fun get!11607 (Option!7243) Rule!10356)

(assert (=> b!3257962 (= lt!1104131 (get!11607 lt!1104119))))

(declare-fun e!2029465 () Bool)

(assert (=> b!3257963 (= e!2029465 (and tp!1025273 tp!1025276))))

(declare-fun b!3257964 () Bool)

(declare-fun res!1324235 () Bool)

(declare-fun e!2029456 () Bool)

(assert (=> b!3257964 (=> (not res!1324235) (not e!2029456))))

(declare-datatypes ((List!36540 0))(
  ( (Nil!36416) (Cons!36416 (h!41836 Rule!10356) (t!245701 List!36540)) )
))
(declare-fun rules!2135 () List!36540)

(declare-fun isEmpty!20519 (List!36540) Bool)

(assert (=> b!3257964 (= res!1324235 (not (isEmpty!20519 rules!2135)))))

(declare-fun b!3257965 () Bool)

(declare-fun res!1324247 () Bool)

(declare-fun e!2029455 () Bool)

(assert (=> b!3257965 (=> (not res!1324247) (not e!2029455))))

(declare-fun sepAndNonSepRulesDisjointChars!1472 (List!36540 List!36540) Bool)

(assert (=> b!3257965 (= res!1324247 (sepAndNonSepRulesDisjointChars!1472 rules!2135 rules!2135))))

(declare-fun e!2029462 () Bool)

(assert (=> b!3257966 (= e!2029462 (and tp!1025269 tp!1025268))))

(declare-fun b!3257967 () Bool)

(assert (=> b!3257967 (= e!2029456 e!2029455)))

(declare-fun res!1324246 () Bool)

(assert (=> b!3257967 (=> (not res!1324246) (not e!2029455))))

(declare-datatypes ((LexerInterface!4867 0))(
  ( (LexerInterfaceExt!4864 (__x!23234 Int)) (Lexer!4865) )
))
(declare-fun thiss!18206 () LexerInterface!4867)

(declare-datatypes ((Token!9922 0))(
  ( (Token!9923 (value!170883 TokenValue!5508) (rule!7750 Rule!10356) (size!27474 Int) (originalCharacters!5992 List!36539)) )
))
(declare-datatypes ((List!36541 0))(
  ( (Nil!36417) (Cons!36417 (h!41837 Token!9922) (t!245702 List!36541)) )
))
(declare-datatypes ((IArray!21869 0))(
  ( (IArray!21870 (innerList!10992 List!36541)) )
))
(declare-datatypes ((Conc!10932 0))(
  ( (Node!10932 (left!28357 Conc!10932) (right!28687 Conc!10932) (csize!22094 Int) (cheight!11143 Int)) (Leaf!17182 (xs!14060 IArray!21869) (csize!22095 Int)) (Empty!10932) )
))
(declare-datatypes ((BalanceConc!21478 0))(
  ( (BalanceConc!21479 (c!549290 Conc!10932)) )
))
(declare-fun lt!1104120 () BalanceConc!21478)

(declare-fun rulesProduceEachTokenIndividually!1318 (LexerInterface!4867 List!36540 BalanceConc!21478) Bool)

(assert (=> b!3257967 (= res!1324246 (rulesProduceEachTokenIndividually!1318 thiss!18206 rules!2135 lt!1104120))))

(declare-fun tokens!494 () List!36541)

(declare-fun seqFromList!3619 (List!36541) BalanceConc!21478)

(assert (=> b!3257967 (= lt!1104120 (seqFromList!3619 tokens!494))))

(declare-fun b!3257968 () Bool)

(declare-fun e!2029453 () Bool)

(declare-fun separatorToken!241 () Token!9922)

(declare-fun lt!1104111 () Rule!10356)

(assert (=> b!3257968 (= e!2029453 (= (rule!7750 separatorToken!241) lt!1104111))))

(declare-fun tp!1025275 () Bool)

(declare-fun e!2029454 () Bool)

(declare-fun b!3257969 () Bool)

(declare-fun e!2029466 () Bool)

(declare-fun inv!49326 (String!40874) Bool)

(declare-fun inv!49329 (TokenValueInjection!10444) Bool)

(assert (=> b!3257969 (= e!2029466 (and tp!1025275 (inv!49326 (tag!5814 (rule!7750 (h!41837 tokens!494)))) (inv!49329 (transformation!5278 (rule!7750 (h!41837 tokens!494)))) e!2029454))))

(declare-fun res!1324239 () Bool)

(assert (=> start!304918 (=> (not res!1324239) (not e!2029456))))

(get-info :version)

(assert (=> start!304918 (= res!1324239 ((_ is Lexer!4865) thiss!18206))))

(assert (=> start!304918 e!2029456))

(assert (=> start!304918 true))

(declare-fun e!2029476 () Bool)

(assert (=> start!304918 e!2029476))

(declare-fun e!2029459 () Bool)

(declare-fun inv!49330 (Token!9922) Bool)

(assert (=> start!304918 (and (inv!49330 separatorToken!241) e!2029459)))

(declare-fun e!2029458 () Bool)

(assert (=> start!304918 e!2029458))

(declare-fun b!3257970 () Bool)

(declare-fun e!2029470 () Bool)

(declare-datatypes ((tuple2!35868 0))(
  ( (tuple2!35869 (_1!21068 Token!9922) (_2!21068 List!36539)) )
))
(declare-datatypes ((Option!7244 0))(
  ( (None!7243) (Some!7243 (v!35905 tuple2!35868)) )
))
(declare-fun lt!1104134 () Option!7244)

(declare-fun lt!1104122 () List!36539)

(declare-fun ++!8784 (List!36539 List!36539) List!36539)

(declare-fun list!13011 (BalanceConc!21476) List!36539)

(declare-fun charsOf!3294 (Token!9922) BalanceConc!21476)

(assert (=> b!3257970 (= e!2029470 (= (++!8784 (list!13011 (charsOf!3294 (_1!21068 (v!35905 lt!1104134)))) (_2!21068 (v!35905 lt!1104134))) lt!1104122))))

(declare-fun b!3257971 () Bool)

(declare-fun e!2029474 () Bool)

(declare-fun e!2029473 () Bool)

(assert (=> b!3257971 (= e!2029474 e!2029473)))

(declare-fun res!1324252 () Bool)

(assert (=> b!3257971 (=> res!1324252 e!2029473)))

(declare-fun lt!1104107 () BalanceConc!21476)

(declare-fun isEmpty!20520 (BalanceConc!21478) Bool)

(declare-datatypes ((tuple2!35870 0))(
  ( (tuple2!35871 (_1!21069 BalanceConc!21478) (_2!21069 BalanceConc!21476)) )
))
(declare-fun lex!2195 (LexerInterface!4867 List!36540 BalanceConc!21476) tuple2!35870)

(assert (=> b!3257971 (= res!1324252 (isEmpty!20520 (_1!21069 (lex!2195 thiss!18206 rules!2135 lt!1104107))))))

(declare-fun seqFromList!3620 (List!36539) BalanceConc!21476)

(assert (=> b!3257971 (= lt!1104107 (seqFromList!3620 lt!1104126))))

(declare-fun b!3257972 () Bool)

(declare-fun e!2029460 () Bool)

(assert (=> b!3257972 (= e!2029460 e!2029470)))

(declare-fun res!1324248 () Bool)

(assert (=> b!3257972 (=> res!1324248 e!2029470)))

(assert (=> b!3257972 (= res!1324248 (not ((_ is Some!7243) lt!1104134)))))

(declare-fun maxPrefix!2495 (LexerInterface!4867 List!36540 List!36539) Option!7244)

(assert (=> b!3257972 (= lt!1104134 (maxPrefix!2495 thiss!18206 rules!2135 lt!1104122))))

(declare-fun lt!1104125 () List!36539)

(declare-fun lt!1104113 () List!36539)

(assert (=> b!3257972 (= (maxPrefix!2495 thiss!18206 rules!2135 lt!1104113) (Some!7243 (tuple2!35869 (h!41837 tokens!494) lt!1104125)))))

(declare-datatypes ((Unit!51134 0))(
  ( (Unit!51135) )
))
(declare-fun lt!1104124 () Unit!51134)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!184 (LexerInterface!4867 List!36540 Token!9922 Rule!10356 List!36539 Rule!10356) Unit!51134)

(assert (=> b!3257972 (= lt!1104124 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!184 thiss!18206 rules!2135 (h!41837 tokens!494) (rule!7750 (h!41837 tokens!494)) lt!1104125 (rule!7750 separatorToken!241)))))

(declare-fun lt!1104133 () C!20260)

(declare-fun contains!6551 (List!36539 C!20260) Bool)

(declare-fun usedCharacters!580 (Regex!10037) List!36539)

(assert (=> b!3257972 (not (contains!6551 (usedCharacters!580 (regex!5278 (rule!7750 (h!41837 tokens!494)))) lt!1104133))))

(declare-fun lt!1104118 () Unit!51134)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!184 (LexerInterface!4867 List!36540 List!36540 Rule!10356 Rule!10356 C!20260) Unit!51134)

(assert (=> b!3257972 (= lt!1104118 (lemmaNonSepRuleNotContainsCharContainedInASepRule!184 thiss!18206 rules!2135 rules!2135 (rule!7750 (h!41837 tokens!494)) (rule!7750 separatorToken!241) lt!1104133))))

(declare-fun b!3257973 () Bool)

(declare-fun e!2029471 () Bool)

(assert (=> b!3257973 (= e!2029473 e!2029471)))

(declare-fun res!1324236 () Bool)

(assert (=> b!3257973 (=> res!1324236 e!2029471)))

(assert (=> b!3257973 (= res!1324236 (isSeparator!5278 (rule!7750 (h!41837 tokens!494))))))

(declare-fun lt!1104130 () Unit!51134)

(declare-fun lambda!118481 () Int)

(declare-fun forallContained!1239 (List!36541 Int Token!9922) Unit!51134)

(assert (=> b!3257973 (= lt!1104130 (forallContained!1239 tokens!494 lambda!118481 (h!41837 tokens!494)))))

(declare-fun b!3257974 () Bool)

(declare-fun e!2029451 () Unit!51134)

(declare-fun Unit!51136 () Unit!51134)

(assert (=> b!3257974 (= e!2029451 Unit!51136)))

(declare-fun lt!1104108 () Unit!51134)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!426 (Regex!10037 List!36539 C!20260) Unit!51134)

(assert (=> b!3257974 (= lt!1104108 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!426 (regex!5278 (rule!7750 separatorToken!241)) lt!1104125 lt!1104133))))

(declare-fun res!1324232 () Bool)

(assert (=> b!3257974 (= res!1324232 (not (matchR!4659 (regex!5278 (rule!7750 separatorToken!241)) lt!1104125)))))

(declare-fun e!2029468 () Bool)

(assert (=> b!3257974 (=> (not res!1324232) (not e!2029468))))

(assert (=> b!3257974 e!2029468))

(declare-fun b!3257975 () Bool)

(declare-fun e!2029479 () Bool)

(assert (=> b!3257975 (= e!2029479 e!2029474)))

(declare-fun res!1324255 () Bool)

(assert (=> b!3257975 (=> res!1324255 e!2029474)))

(declare-fun lt!1104110 () List!36539)

(declare-fun lt!1104114 () List!36539)

(assert (=> b!3257975 (= res!1324255 (or (not (= lt!1104110 lt!1104126)) (not (= lt!1104114 lt!1104126))))))

(assert (=> b!3257975 (= lt!1104126 (list!13011 (charsOf!3294 (h!41837 tokens!494))))))

(declare-fun b!3257976 () Bool)

(declare-fun e!2029475 () Bool)

(assert (=> b!3257976 (= e!2029471 e!2029475)))

(declare-fun res!1324238 () Bool)

(assert (=> b!3257976 (=> res!1324238 e!2029475)))

(assert (=> b!3257976 (= res!1324238 (not (= lt!1104122 lt!1104113)))))

(assert (=> b!3257976 (= lt!1104113 (++!8784 lt!1104126 lt!1104125))))

(declare-fun lt!1104117 () BalanceConc!21476)

(assert (=> b!3257976 (= lt!1104122 (list!13011 lt!1104117))))

(assert (=> b!3257976 (= lt!1104125 (list!13011 (charsOf!3294 separatorToken!241)))))

(declare-fun printWithSeparatorToken!84 (LexerInterface!4867 BalanceConc!21478 Token!9922) BalanceConc!21476)

(assert (=> b!3257976 (= lt!1104117 (printWithSeparatorToken!84 thiss!18206 lt!1104120 separatorToken!241))))

(declare-fun b!3257977 () Bool)

(declare-fun tp!1025278 () Bool)

(declare-fun e!2029478 () Bool)

(declare-fun inv!21 (TokenValue!5508) Bool)

(assert (=> b!3257977 (= e!2029478 (and (inv!21 (value!170883 (h!41837 tokens!494))) e!2029466 tp!1025278))))

(declare-fun b!3257978 () Bool)

(assert (=> b!3257978 (= e!2029475 e!2029460)))

(declare-fun res!1324234 () Bool)

(assert (=> b!3257978 (=> res!1324234 e!2029460)))

(declare-fun lt!1104112 () Bool)

(assert (=> b!3257978 (= res!1324234 lt!1104112)))

(declare-fun lt!1104128 () Unit!51134)

(assert (=> b!3257978 (= lt!1104128 e!2029451)))

(declare-fun c!549287 () Bool)

(assert (=> b!3257978 (= c!549287 lt!1104112)))

(assert (=> b!3257978 (= lt!1104112 (not (contains!6551 (usedCharacters!580 (regex!5278 (rule!7750 separatorToken!241))) lt!1104133)))))

(declare-fun head!7103 (List!36539) C!20260)

(assert (=> b!3257978 (= lt!1104133 (head!7103 lt!1104125))))

(declare-fun maxPrefixOneRule!1632 (LexerInterface!4867 Rule!10356 List!36539) Option!7244)

(declare-fun apply!8330 (TokenValueInjection!10444 BalanceConc!21476) TokenValue!5508)

(declare-fun size!27475 (List!36539) Int)

(assert (=> b!3257978 (= (maxPrefixOneRule!1632 thiss!18206 (rule!7750 (h!41837 tokens!494)) lt!1104126) (Some!7243 (tuple2!35869 (Token!9923 (apply!8330 (transformation!5278 (rule!7750 (h!41837 tokens!494))) lt!1104107) (rule!7750 (h!41837 tokens!494)) (size!27475 lt!1104126) lt!1104126) Nil!36415)))))

(declare-fun lt!1104115 () Unit!51134)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!743 (LexerInterface!4867 List!36540 List!36539 List!36539 List!36539 Rule!10356) Unit!51134)

(assert (=> b!3257978 (= lt!1104115 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!743 thiss!18206 rules!2135 lt!1104126 lt!1104126 Nil!36415 (rule!7750 (h!41837 tokens!494))))))

(declare-fun e!2029463 () Bool)

(assert (=> b!3257978 e!2029463))

(declare-fun res!1324241 () Bool)

(assert (=> b!3257978 (=> (not res!1324241) (not e!2029463))))

(declare-fun lt!1104129 () Option!7243)

(declare-fun isDefined!5612 (Option!7243) Bool)

(assert (=> b!3257978 (= res!1324241 (isDefined!5612 lt!1104129))))

(declare-fun getRuleFromTag!969 (LexerInterface!4867 List!36540 String!40874) Option!7243)

(assert (=> b!3257978 (= lt!1104129 (getRuleFromTag!969 thiss!18206 rules!2135 (tag!5814 (rule!7750 separatorToken!241))))))

(declare-fun lt!1104121 () Unit!51134)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!969 (LexerInterface!4867 List!36540 List!36539 Token!9922) Unit!51134)

(assert (=> b!3257978 (= lt!1104121 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!969 thiss!18206 rules!2135 lt!1104125 separatorToken!241))))

(assert (=> b!3257978 e!2029480))

(declare-fun res!1324249 () Bool)

(assert (=> b!3257978 (=> (not res!1324249) (not e!2029480))))

(assert (=> b!3257978 (= res!1324249 (isDefined!5612 lt!1104119))))

(assert (=> b!3257978 (= lt!1104119 (getRuleFromTag!969 thiss!18206 rules!2135 (tag!5814 (rule!7750 (h!41837 tokens!494)))))))

(declare-fun lt!1104127 () Unit!51134)

(assert (=> b!3257978 (= lt!1104127 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!969 thiss!18206 rules!2135 lt!1104126 (h!41837 tokens!494)))))

(declare-fun lt!1104109 () Unit!51134)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!892 (LexerInterface!4867 List!36540 List!36541 Token!9922) Unit!51134)

(assert (=> b!3257978 (= lt!1104109 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!892 thiss!18206 rules!2135 tokens!494 (h!41837 tokens!494)))))

(declare-fun isEmpty!20521 (List!36539) Bool)

(declare-fun getSuffix!1402 (List!36539 List!36539) List!36539)

(assert (=> b!3257978 (isEmpty!20521 (getSuffix!1402 lt!1104126 lt!1104126))))

(declare-fun lt!1104123 () Unit!51134)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!66 (List!36539) Unit!51134)

(assert (=> b!3257978 (= lt!1104123 (lemmaGetSuffixOnListWithItSelfIsEmpty!66 lt!1104126))))

(declare-fun b!3257979 () Bool)

(declare-fun res!1324244 () Bool)

(assert (=> b!3257979 (=> res!1324244 e!2029470)))

(declare-fun get!11608 (Option!7244) tuple2!35868)

(assert (=> b!3257979 (= res!1324244 (not (= (_2!21068 (v!35905 lt!1104134)) (_2!21068 (get!11608 lt!1104134)))))))

(declare-fun b!3257980 () Bool)

(assert (=> b!3257980 (= e!2029463 e!2029453)))

(declare-fun res!1324237 () Bool)

(assert (=> b!3257980 (=> (not res!1324237) (not e!2029453))))

(assert (=> b!3257980 (= res!1324237 (matchR!4659 (regex!5278 lt!1104111) lt!1104125))))

(assert (=> b!3257980 (= lt!1104111 (get!11607 lt!1104129))))

(declare-fun b!3257981 () Bool)

(declare-fun res!1324245 () Bool)

(assert (=> b!3257981 (=> res!1324245 e!2029470)))

(assert (=> b!3257981 (= res!1324245 (not (= (_1!21068 (v!35905 lt!1104134)) (h!41837 tokens!494))))))

(declare-fun b!3257982 () Bool)

(declare-fun res!1324243 () Bool)

(assert (=> b!3257982 (=> (not res!1324243) (not e!2029456))))

(declare-fun rulesInvariant!4264 (LexerInterface!4867 List!36540) Bool)

(assert (=> b!3257982 (= res!1324243 (rulesInvariant!4264 thiss!18206 rules!2135))))

(declare-fun tp!1025271 () Bool)

(declare-fun b!3257983 () Bool)

(assert (=> b!3257983 (= e!2029458 (and (inv!49330 (h!41837 tokens!494)) e!2029478 tp!1025271))))

(declare-fun b!3257984 () Bool)

(declare-fun tp!1025272 () Bool)

(declare-fun e!2029457 () Bool)

(assert (=> b!3257984 (= e!2029457 (and tp!1025272 (inv!49326 (tag!5814 (h!41836 rules!2135))) (inv!49329 (transformation!5278 (h!41836 rules!2135))) e!2029462))))

(declare-fun b!3257985 () Bool)

(assert (=> b!3257985 (= e!2029477 (= (rule!7750 (h!41837 tokens!494)) lt!1104131))))

(declare-fun b!3257986 () Bool)

(declare-fun res!1324251 () Bool)

(assert (=> b!3257986 (=> (not res!1324251) (not e!2029455))))

(declare-fun rulesProduceIndividualToken!2359 (LexerInterface!4867 List!36540 Token!9922) Bool)

(assert (=> b!3257986 (= res!1324251 (rulesProduceIndividualToken!2359 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3257987 () Bool)

(declare-fun res!1324242 () Bool)

(assert (=> b!3257987 (=> (not res!1324242) (not e!2029455))))

(declare-fun forall!7504 (List!36541 Int) Bool)

(assert (=> b!3257987 (= res!1324242 (forall!7504 tokens!494 lambda!118481))))

(declare-fun b!3257988 () Bool)

(assert (=> b!3257988 (= e!2029468 false)))

(declare-fun b!3257989 () Bool)

(declare-fun res!1324240 () Bool)

(assert (=> b!3257989 (=> res!1324240 e!2029470)))

(declare-datatypes ((tuple2!35872 0))(
  ( (tuple2!35873 (_1!21070 List!36541) (_2!21070 List!36539)) )
))
(declare-fun lexList!1341 (LexerInterface!4867 List!36540 List!36539) tuple2!35872)

(assert (=> b!3257989 (= res!1324240 (not (isEmpty!20521 (_2!21070 (lexList!1341 thiss!18206 rules!2135 (_2!21068 (v!35905 lt!1104134)))))))))

(declare-fun b!3257990 () Bool)

(declare-fun res!1324253 () Bool)

(assert (=> b!3257990 (=> (not res!1324253) (not e!2029455))))

(assert (=> b!3257990 (= res!1324253 (isSeparator!5278 (rule!7750 separatorToken!241)))))

(assert (=> b!3257991 (= e!2029454 (and tp!1025280 tp!1025274))))

(declare-fun b!3257992 () Bool)

(declare-fun Unit!51137 () Unit!51134)

(assert (=> b!3257992 (= e!2029451 Unit!51137)))

(declare-fun b!3257993 () Bool)

(declare-fun e!2029461 () Bool)

(declare-fun tp!1025270 () Bool)

(assert (=> b!3257993 (= e!2029461 (and tp!1025270 (inv!49326 (tag!5814 (rule!7750 separatorToken!241))) (inv!49329 (transformation!5278 (rule!7750 separatorToken!241))) e!2029465))))

(declare-fun b!3257994 () Bool)

(assert (=> b!3257994 (= e!2029455 (not e!2029479))))

(declare-fun res!1324250 () Bool)

(assert (=> b!3257994 (=> res!1324250 e!2029479)))

(assert (=> b!3257994 (= res!1324250 (not (= lt!1104114 lt!1104110)))))

(declare-fun printList!1417 (LexerInterface!4867 List!36541) List!36539)

(assert (=> b!3257994 (= lt!1104110 (printList!1417 thiss!18206 (Cons!36417 (h!41837 tokens!494) Nil!36417)))))

(declare-fun lt!1104132 () BalanceConc!21476)

(assert (=> b!3257994 (= lt!1104114 (list!13011 lt!1104132))))

(declare-fun lt!1104116 () BalanceConc!21478)

(declare-fun printTailRec!1364 (LexerInterface!4867 BalanceConc!21478 Int BalanceConc!21476) BalanceConc!21476)

(assert (=> b!3257994 (= lt!1104132 (printTailRec!1364 thiss!18206 lt!1104116 0 (BalanceConc!21477 Empty!10931)))))

(declare-fun print!1932 (LexerInterface!4867 BalanceConc!21478) BalanceConc!21476)

(assert (=> b!3257994 (= lt!1104132 (print!1932 thiss!18206 lt!1104116))))

(declare-fun singletonSeq!2374 (Token!9922) BalanceConc!21478)

(assert (=> b!3257994 (= lt!1104116 (singletonSeq!2374 (h!41837 tokens!494)))))

(declare-fun b!3257995 () Bool)

(declare-fun tp!1025277 () Bool)

(assert (=> b!3257995 (= e!2029476 (and e!2029457 tp!1025277))))

(declare-fun b!3257996 () Bool)

(declare-fun res!1324231 () Bool)

(assert (=> b!3257996 (=> res!1324231 e!2029474)))

(assert (=> b!3257996 (= res!1324231 (not (rulesProduceIndividualToken!2359 thiss!18206 rules!2135 (h!41837 tokens!494))))))

(declare-fun b!3257997 () Bool)

(declare-fun tp!1025279 () Bool)

(assert (=> b!3257997 (= e!2029459 (and (inv!21 (value!170883 separatorToken!241)) e!2029461 tp!1025279))))

(declare-fun b!3257998 () Bool)

(declare-fun res!1324233 () Bool)

(assert (=> b!3257998 (=> (not res!1324233) (not e!2029455))))

(assert (=> b!3257998 (= res!1324233 (and (not ((_ is Nil!36417) tokens!494)) ((_ is Nil!36417) (t!245702 tokens!494))))))

(assert (= (and start!304918 res!1324239) b!3257964))

(assert (= (and b!3257964 res!1324235) b!3257982))

(assert (= (and b!3257982 res!1324243) b!3257967))

(assert (= (and b!3257967 res!1324246) b!3257986))

(assert (= (and b!3257986 res!1324251) b!3257990))

(assert (= (and b!3257990 res!1324253) b!3257987))

(assert (= (and b!3257987 res!1324242) b!3257965))

(assert (= (and b!3257965 res!1324247) b!3257998))

(assert (= (and b!3257998 res!1324233) b!3257994))

(assert (= (and b!3257994 (not res!1324250)) b!3257975))

(assert (= (and b!3257975 (not res!1324255)) b!3257996))

(assert (= (and b!3257996 (not res!1324231)) b!3257971))

(assert (= (and b!3257971 (not res!1324252)) b!3257973))

(assert (= (and b!3257973 (not res!1324236)) b!3257976))

(assert (= (and b!3257976 (not res!1324238)) b!3257978))

(assert (= (and b!3257978 res!1324249) b!3257962))

(assert (= (and b!3257962 res!1324254) b!3257985))

(assert (= (and b!3257978 res!1324241) b!3257980))

(assert (= (and b!3257980 res!1324237) b!3257968))

(assert (= (and b!3257978 c!549287) b!3257974))

(assert (= (and b!3257978 (not c!549287)) b!3257992))

(assert (= (and b!3257974 res!1324232) b!3257988))

(assert (= (and b!3257978 (not res!1324234)) b!3257972))

(assert (= (and b!3257972 (not res!1324248)) b!3257979))

(assert (= (and b!3257979 (not res!1324244)) b!3257981))

(assert (= (and b!3257981 (not res!1324245)) b!3257989))

(assert (= (and b!3257989 (not res!1324240)) b!3257970))

(assert (= b!3257984 b!3257966))

(assert (= b!3257995 b!3257984))

(assert (= (and start!304918 ((_ is Cons!36416) rules!2135)) b!3257995))

(assert (= b!3257993 b!3257963))

(assert (= b!3257997 b!3257993))

(assert (= start!304918 b!3257997))

(assert (= b!3257969 b!3257991))

(assert (= b!3257977 b!3257969))

(assert (= b!3257983 b!3257977))

(assert (= (and start!304918 ((_ is Cons!36417) tokens!494)) b!3257983))

(declare-fun m!3552909 () Bool)

(assert (=> b!3257974 m!3552909))

(declare-fun m!3552911 () Bool)

(assert (=> b!3257974 m!3552911))

(declare-fun m!3552913 () Bool)

(assert (=> start!304918 m!3552913))

(declare-fun m!3552915 () Bool)

(assert (=> b!3257964 m!3552915))

(declare-fun m!3552917 () Bool)

(assert (=> b!3257984 m!3552917))

(declare-fun m!3552919 () Bool)

(assert (=> b!3257984 m!3552919))

(declare-fun m!3552921 () Bool)

(assert (=> b!3257982 m!3552921))

(declare-fun m!3552923 () Bool)

(assert (=> b!3257975 m!3552923))

(assert (=> b!3257975 m!3552923))

(declare-fun m!3552925 () Bool)

(assert (=> b!3257975 m!3552925))

(declare-fun m!3552927 () Bool)

(assert (=> b!3257997 m!3552927))

(declare-fun m!3552929 () Bool)

(assert (=> b!3257969 m!3552929))

(declare-fun m!3552931 () Bool)

(assert (=> b!3257969 m!3552931))

(declare-fun m!3552933 () Bool)

(assert (=> b!3257967 m!3552933))

(declare-fun m!3552935 () Bool)

(assert (=> b!3257967 m!3552935))

(declare-fun m!3552937 () Bool)

(assert (=> b!3257965 m!3552937))

(declare-fun m!3552939 () Bool)

(assert (=> b!3257971 m!3552939))

(declare-fun m!3552941 () Bool)

(assert (=> b!3257971 m!3552941))

(declare-fun m!3552943 () Bool)

(assert (=> b!3257971 m!3552943))

(declare-fun m!3552945 () Bool)

(assert (=> b!3257979 m!3552945))

(declare-fun m!3552947 () Bool)

(assert (=> b!3257976 m!3552947))

(declare-fun m!3552949 () Bool)

(assert (=> b!3257976 m!3552949))

(declare-fun m!3552951 () Bool)

(assert (=> b!3257976 m!3552951))

(declare-fun m!3552953 () Bool)

(assert (=> b!3257976 m!3552953))

(assert (=> b!3257976 m!3552947))

(declare-fun m!3552955 () Bool)

(assert (=> b!3257976 m!3552955))

(declare-fun m!3552957 () Bool)

(assert (=> b!3257977 m!3552957))

(declare-fun m!3552959 () Bool)

(assert (=> b!3257987 m!3552959))

(declare-fun m!3552961 () Bool)

(assert (=> b!3257970 m!3552961))

(assert (=> b!3257970 m!3552961))

(declare-fun m!3552963 () Bool)

(assert (=> b!3257970 m!3552963))

(assert (=> b!3257970 m!3552963))

(declare-fun m!3552965 () Bool)

(assert (=> b!3257970 m!3552965))

(declare-fun m!3552967 () Bool)

(assert (=> b!3257980 m!3552967))

(declare-fun m!3552969 () Bool)

(assert (=> b!3257980 m!3552969))

(declare-fun m!3552971 () Bool)

(assert (=> b!3257994 m!3552971))

(declare-fun m!3552973 () Bool)

(assert (=> b!3257994 m!3552973))

(declare-fun m!3552975 () Bool)

(assert (=> b!3257994 m!3552975))

(declare-fun m!3552977 () Bool)

(assert (=> b!3257994 m!3552977))

(declare-fun m!3552979 () Bool)

(assert (=> b!3257994 m!3552979))

(declare-fun m!3552981 () Bool)

(assert (=> b!3257986 m!3552981))

(declare-fun m!3552983 () Bool)

(assert (=> b!3257993 m!3552983))

(declare-fun m!3552985 () Bool)

(assert (=> b!3257993 m!3552985))

(declare-fun m!3552987 () Bool)

(assert (=> b!3257972 m!3552987))

(declare-fun m!3552989 () Bool)

(assert (=> b!3257972 m!3552989))

(assert (=> b!3257972 m!3552989))

(declare-fun m!3552991 () Bool)

(assert (=> b!3257972 m!3552991))

(declare-fun m!3552993 () Bool)

(assert (=> b!3257972 m!3552993))

(declare-fun m!3552995 () Bool)

(assert (=> b!3257972 m!3552995))

(declare-fun m!3552997 () Bool)

(assert (=> b!3257972 m!3552997))

(declare-fun m!3552999 () Bool)

(assert (=> b!3257978 m!3552999))

(declare-fun m!3553001 () Bool)

(assert (=> b!3257978 m!3553001))

(assert (=> b!3257978 m!3553001))

(declare-fun m!3553003 () Bool)

(assert (=> b!3257978 m!3553003))

(declare-fun m!3553005 () Bool)

(assert (=> b!3257978 m!3553005))

(declare-fun m!3553007 () Bool)

(assert (=> b!3257978 m!3553007))

(declare-fun m!3553009 () Bool)

(assert (=> b!3257978 m!3553009))

(declare-fun m!3553011 () Bool)

(assert (=> b!3257978 m!3553011))

(declare-fun m!3553013 () Bool)

(assert (=> b!3257978 m!3553013))

(declare-fun m!3553015 () Bool)

(assert (=> b!3257978 m!3553015))

(declare-fun m!3553017 () Bool)

(assert (=> b!3257978 m!3553017))

(declare-fun m!3553019 () Bool)

(assert (=> b!3257978 m!3553019))

(declare-fun m!3553021 () Bool)

(assert (=> b!3257978 m!3553021))

(declare-fun m!3553023 () Bool)

(assert (=> b!3257978 m!3553023))

(assert (=> b!3257978 m!3553017))

(declare-fun m!3553025 () Bool)

(assert (=> b!3257978 m!3553025))

(declare-fun m!3553027 () Bool)

(assert (=> b!3257978 m!3553027))

(declare-fun m!3553029 () Bool)

(assert (=> b!3257978 m!3553029))

(declare-fun m!3553031 () Bool)

(assert (=> b!3257978 m!3553031))

(declare-fun m!3553033 () Bool)

(assert (=> b!3257996 m!3553033))

(declare-fun m!3553035 () Bool)

(assert (=> b!3257973 m!3553035))

(declare-fun m!3553037 () Bool)

(assert (=> b!3257962 m!3553037))

(declare-fun m!3553039 () Bool)

(assert (=> b!3257962 m!3553039))

(declare-fun m!3553041 () Bool)

(assert (=> b!3257983 m!3553041))

(declare-fun m!3553043 () Bool)

(assert (=> b!3257989 m!3553043))

(declare-fun m!3553045 () Bool)

(assert (=> b!3257989 m!3553045))

(check-sat (not b!3257971) b_and!219875 (not b!3257993) (not b_next!87111) (not b!3257974) (not b!3257982) b_and!219877 b_and!219867 (not b!3257972) (not b!3257975) (not b!3257997) (not b!3257980) (not b!3257965) (not b!3257989) (not b!3257962) b_and!219873 (not b!3257976) (not b!3257994) b_and!219871 (not b!3257996) (not b!3257970) (not b!3257967) (not b!3257964) (not b_next!87113) (not b!3257987) (not b!3257984) (not b!3257978) (not b!3257977) (not b_next!87115) (not b_next!87109) (not b!3257979) (not b!3257986) (not start!304918) (not b!3257995) (not b_next!87105) b_and!219869 (not b!3257969) (not b_next!87107) (not b!3257983) (not b!3257973))
(check-sat b_and!219873 b_and!219871 b_and!219875 (not b_next!87113) (not b_next!87115) (not b_next!87109) (not b_next!87111) (not b_next!87107) b_and!219877 b_and!219867 (not b_next!87105) b_and!219869)
