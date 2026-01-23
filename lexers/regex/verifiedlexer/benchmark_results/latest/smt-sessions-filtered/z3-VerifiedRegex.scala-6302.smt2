; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!316610 () Bool)

(assert start!316610)

(declare-fun b!3394142 () Bool)

(declare-fun b_free!88745 () Bool)

(declare-fun b_next!89449 () Bool)

(assert (=> b!3394142 (= b_free!88745 (not b_next!89449))))

(declare-fun tp!1059529 () Bool)

(declare-fun b_and!236491 () Bool)

(assert (=> b!3394142 (= tp!1059529 b_and!236491)))

(declare-fun b_free!88747 () Bool)

(declare-fun b_next!89451 () Bool)

(assert (=> b!3394142 (= b_free!88747 (not b_next!89451))))

(declare-fun tp!1059525 () Bool)

(declare-fun b_and!236493 () Bool)

(assert (=> b!3394142 (= tp!1059525 b_and!236493)))

(declare-fun b!3394127 () Bool)

(declare-fun b_free!88749 () Bool)

(declare-fun b_next!89453 () Bool)

(assert (=> b!3394127 (= b_free!88749 (not b_next!89453))))

(declare-fun tp!1059527 () Bool)

(declare-fun b_and!236495 () Bool)

(assert (=> b!3394127 (= tp!1059527 b_and!236495)))

(declare-fun b_free!88751 () Bool)

(declare-fun b_next!89455 () Bool)

(assert (=> b!3394127 (= b_free!88751 (not b_next!89455))))

(declare-fun tp!1059524 () Bool)

(declare-fun b_and!236497 () Bool)

(assert (=> b!3394127 (= tp!1059524 b_and!236497)))

(declare-fun b!3394135 () Bool)

(declare-fun b_free!88753 () Bool)

(declare-fun b_next!89457 () Bool)

(assert (=> b!3394135 (= b_free!88753 (not b_next!89457))))

(declare-fun tp!1059518 () Bool)

(declare-fun b_and!236499 () Bool)

(assert (=> b!3394135 (= tp!1059518 b_and!236499)))

(declare-fun b_free!88755 () Bool)

(declare-fun b_next!89459 () Bool)

(assert (=> b!3394135 (= b_free!88755 (not b_next!89459))))

(declare-fun tp!1059530 () Bool)

(declare-fun b_and!236501 () Bool)

(assert (=> b!3394135 (= tp!1059530 b_and!236501)))

(declare-fun b!3394116 () Bool)

(declare-fun e!2106717 () Bool)

(declare-fun e!2106714 () Bool)

(assert (=> b!3394116 (= e!2106717 e!2106714)))

(declare-fun res!1373017 () Bool)

(assert (=> b!3394116 (=> (not res!1373017) (not e!2106714))))

(declare-datatypes ((C!20472 0))(
  ( (C!20473 (val!12284 Int)) )
))
(declare-datatypes ((List!37034 0))(
  ( (Nil!36910) (Cons!36910 (h!42330 (_ BitVec 16)) (t!265065 List!37034)) )
))
(declare-datatypes ((TokenValue!5614 0))(
  ( (FloatLiteralValue!11228 (text!39743 List!37034)) (TokenValueExt!5613 (__x!23445 Int)) (Broken!28070 (value!173878 List!37034)) (Object!5737) (End!5614) (Def!5614) (Underscore!5614) (Match!5614) (Else!5614) (Error!5614) (Case!5614) (If!5614) (Extends!5614) (Abstract!5614) (Class!5614) (Val!5614) (DelimiterValue!11228 (del!5674 List!37034)) (KeywordValue!5620 (value!173879 List!37034)) (CommentValue!11228 (value!173880 List!37034)) (WhitespaceValue!11228 (value!173881 List!37034)) (IndentationValue!5614 (value!173882 List!37034)) (String!41403) (Int32!5614) (Broken!28071 (value!173883 List!37034)) (Boolean!5615) (Unit!52081) (OperatorValue!5617 (op!5674 List!37034)) (IdentifierValue!11228 (value!173884 List!37034)) (IdentifierValue!11229 (value!173885 List!37034)) (WhitespaceValue!11229 (value!173886 List!37034)) (True!11228) (False!11228) (Broken!28072 (value!173887 List!37034)) (Broken!28073 (value!173888 List!37034)) (True!11229) (RightBrace!5614) (RightBracket!5614) (Colon!5614) (Null!5614) (Comma!5614) (LeftBracket!5614) (False!11229) (LeftBrace!5614) (ImaginaryLiteralValue!5614 (text!39744 List!37034)) (StringLiteralValue!16842 (value!173889 List!37034)) (EOFValue!5614 (value!173890 List!37034)) (IdentValue!5614 (value!173891 List!37034)) (DelimiterValue!11229 (value!173892 List!37034)) (DedentValue!5614 (value!173893 List!37034)) (NewLineValue!5614 (value!173894 List!37034)) (IntegerValue!16842 (value!173895 (_ BitVec 32)) (text!39745 List!37034)) (IntegerValue!16843 (value!173896 Int) (text!39746 List!37034)) (Times!5614) (Or!5614) (Equal!5614) (Minus!5614) (Broken!28074 (value!173897 List!37034)) (And!5614) (Div!5614) (LessEqual!5614) (Mod!5614) (Concat!15757) (Not!5614) (Plus!5614) (SpaceValue!5614 (value!173898 List!37034)) (IntegerValue!16844 (value!173899 Int) (text!39747 List!37034)) (StringLiteralValue!16843 (text!39748 List!37034)) (FloatLiteralValue!11229 (text!39749 List!37034)) (BytesLiteralValue!5614 (value!173900 List!37034)) (CommentValue!11229 (value!173901 List!37034)) (StringLiteralValue!16844 (value!173902 List!37034)) (ErrorTokenValue!5614 (msg!5675 List!37034)) )
))
(declare-datatypes ((List!37035 0))(
  ( (Nil!36911) (Cons!36911 (h!42331 C!20472) (t!265066 List!37035)) )
))
(declare-datatypes ((IArray!22291 0))(
  ( (IArray!22292 (innerList!11203 List!37035)) )
))
(declare-datatypes ((Conc!11143 0))(
  ( (Node!11143 (left!28777 Conc!11143) (right!29107 Conc!11143) (csize!22516 Int) (cheight!11354 Int)) (Leaf!17446 (xs!14301 IArray!22291) (csize!22517 Int)) (Empty!11143) )
))
(declare-datatypes ((BalanceConc!21900 0))(
  ( (BalanceConc!21901 (c!578610 Conc!11143)) )
))
(declare-datatypes ((Regex!10143 0))(
  ( (ElementMatch!10143 (c!578611 C!20472)) (Concat!15758 (regOne!20798 Regex!10143) (regTwo!20798 Regex!10143)) (EmptyExpr!10143) (Star!10143 (reg!10472 Regex!10143)) (EmptyLang!10143) (Union!10143 (regOne!20799 Regex!10143) (regTwo!20799 Regex!10143)) )
))
(declare-datatypes ((String!41404 0))(
  ( (String!41405 (value!173903 String)) )
))
(declare-datatypes ((TokenValueInjection!10656 0))(
  ( (TokenValueInjection!10657 (toValue!7580 Int) (toChars!7439 Int)) )
))
(declare-datatypes ((Rule!10568 0))(
  ( (Rule!10569 (regex!5384 Regex!10143) (tag!5966 String!41404) (isSeparator!5384 Bool) (transformation!5384 TokenValueInjection!10656)) )
))
(declare-fun lt!1153526 () Rule!10568)

(declare-fun lt!1153537 () List!37035)

(declare-fun matchR!4735 (Regex!10143 List!37035) Bool)

(assert (=> b!3394116 (= res!1373017 (matchR!4735 (regex!5384 lt!1153526) lt!1153537))))

(declare-datatypes ((Option!7421 0))(
  ( (None!7420) (Some!7420 (v!36562 Rule!10568)) )
))
(declare-fun lt!1153542 () Option!7421)

(declare-fun get!11794 (Option!7421) Rule!10568)

(assert (=> b!3394116 (= lt!1153526 (get!11794 lt!1153542))))

(declare-fun b!3394117 () Bool)

(declare-fun e!2106695 () Bool)

(declare-fun e!2106707 () Bool)

(assert (=> b!3394117 (= e!2106695 e!2106707)))

(declare-fun res!1373034 () Bool)

(assert (=> b!3394117 (=> res!1373034 e!2106707)))

(declare-datatypes ((Token!10134 0))(
  ( (Token!10135 (value!173904 TokenValue!5614) (rule!7942 Rule!10568) (size!27944 Int) (originalCharacters!6098 List!37035)) )
))
(declare-datatypes ((tuple2!36528 0))(
  ( (tuple2!36529 (_1!21398 Token!10134) (_2!21398 List!37035)) )
))
(declare-datatypes ((Option!7422 0))(
  ( (None!7421) (Some!7421 (v!36563 tuple2!36528)) )
))
(declare-fun lt!1153544 () Option!7422)

(declare-fun isDefined!5733 (Option!7422) Bool)

(assert (=> b!3394117 (= res!1373034 (not (isDefined!5733 lt!1153544)))))

(declare-datatypes ((List!37036 0))(
  ( (Nil!36912) (Cons!36912 (h!42332 Rule!10568) (t!265067 List!37036)) )
))
(declare-fun rules!2135 () List!37036)

(declare-datatypes ((LexerInterface!4973 0))(
  ( (LexerInterfaceExt!4970 (__x!23446 Int)) (Lexer!4971) )
))
(declare-fun thiss!18206 () LexerInterface!4973)

(declare-fun maxPrefix!2545 (LexerInterface!4973 List!37036 List!37035) Option!7422)

(assert (=> b!3394117 (= lt!1153544 (maxPrefix!2545 thiss!18206 rules!2135 lt!1153537))))

(declare-fun b!3394118 () Bool)

(declare-fun res!1373030 () Bool)

(declare-fun e!2106712 () Bool)

(assert (=> b!3394118 (=> (not res!1373030) (not e!2106712))))

(declare-datatypes ((List!37037 0))(
  ( (Nil!36913) (Cons!36913 (h!42333 Token!10134) (t!265068 List!37037)) )
))
(declare-fun tokens!494 () List!37037)

(declare-fun lambda!120723 () Int)

(declare-fun forall!7789 (List!37037 Int) Bool)

(assert (=> b!3394118 (= res!1373030 (forall!7789 tokens!494 lambda!120723))))

(declare-fun b!3394119 () Bool)

(declare-fun e!2106696 () Bool)

(declare-fun e!2106693 () Bool)

(assert (=> b!3394119 (= e!2106696 e!2106693)))

(declare-fun res!1373037 () Bool)

(assert (=> b!3394119 (=> res!1373037 e!2106693)))

(declare-fun lt!1153547 () BalanceConc!21900)

(declare-datatypes ((IArray!22293 0))(
  ( (IArray!22294 (innerList!11204 List!37037)) )
))
(declare-datatypes ((Conc!11144 0))(
  ( (Node!11144 (left!28778 Conc!11144) (right!29108 Conc!11144) (csize!22518 Int) (cheight!11355 Int)) (Leaf!17447 (xs!14302 IArray!22293) (csize!22519 Int)) (Empty!11144) )
))
(declare-datatypes ((BalanceConc!21902 0))(
  ( (BalanceConc!21903 (c!578612 Conc!11144)) )
))
(declare-fun isEmpty!21169 (BalanceConc!21902) Bool)

(declare-datatypes ((tuple2!36530 0))(
  ( (tuple2!36531 (_1!21399 BalanceConc!21902) (_2!21399 BalanceConc!21900)) )
))
(declare-fun lex!2299 (LexerInterface!4973 List!37036 BalanceConc!21900) tuple2!36530)

(assert (=> b!3394119 (= res!1373037 (isEmpty!21169 (_1!21399 (lex!2299 thiss!18206 rules!2135 lt!1153547))))))

(declare-fun seqFromList!3821 (List!37035) BalanceConc!21900)

(assert (=> b!3394119 (= lt!1153547 (seqFromList!3821 lt!1153537))))

(declare-fun e!2106705 () Bool)

(declare-fun e!2106698 () Bool)

(declare-fun b!3394120 () Bool)

(declare-fun tp!1059522 () Bool)

(declare-fun inv!50004 (Token!10134) Bool)

(assert (=> b!3394120 (= e!2106698 (and (inv!50004 (h!42333 tokens!494)) e!2106705 tp!1059522))))

(declare-fun res!1373027 () Bool)

(declare-fun e!2106703 () Bool)

(assert (=> start!316610 (=> (not res!1373027) (not e!2106703))))

(get-info :version)

(assert (=> start!316610 (= res!1373027 ((_ is Lexer!4971) thiss!18206))))

(assert (=> start!316610 e!2106703))

(assert (=> start!316610 true))

(declare-fun e!2106721 () Bool)

(assert (=> start!316610 e!2106721))

(declare-fun separatorToken!241 () Token!10134)

(declare-fun e!2106700 () Bool)

(assert (=> start!316610 (and (inv!50004 separatorToken!241) e!2106700)))

(assert (=> start!316610 e!2106698))

(declare-fun b!3394121 () Bool)

(declare-datatypes ((Unit!52082 0))(
  ( (Unit!52083) )
))
(declare-fun e!2106718 () Unit!52082)

(declare-fun Unit!52084 () Unit!52082)

(assert (=> b!3394121 (= e!2106718 Unit!52084)))

(declare-fun b!3394122 () Bool)

(declare-fun e!2106719 () Bool)

(declare-fun e!2106708 () Bool)

(assert (=> b!3394122 (= e!2106719 e!2106708)))

(declare-fun res!1373023 () Bool)

(assert (=> b!3394122 (=> (not res!1373023) (not e!2106708))))

(declare-fun lt!1153527 () Rule!10568)

(declare-fun lt!1153525 () List!37035)

(assert (=> b!3394122 (= res!1373023 (matchR!4735 (regex!5384 lt!1153527) lt!1153525))))

(declare-fun lt!1153545 () Option!7421)

(assert (=> b!3394122 (= lt!1153527 (get!11794 lt!1153545))))

(declare-fun tp!1059521 () Bool)

(declare-fun b!3394123 () Bool)

(declare-fun e!2106710 () Bool)

(declare-fun e!2106691 () Bool)

(declare-fun inv!50001 (String!41404) Bool)

(declare-fun inv!50005 (TokenValueInjection!10656) Bool)

(assert (=> b!3394123 (= e!2106710 (and tp!1059521 (inv!50001 (tag!5966 (h!42332 rules!2135))) (inv!50005 (transformation!5384 (h!42332 rules!2135))) e!2106691))))

(declare-fun b!3394124 () Bool)

(declare-fun res!1373033 () Bool)

(assert (=> b!3394124 (=> res!1373033 e!2106695)))

(declare-fun contains!6774 (List!37036 Rule!10568) Bool)

(assert (=> b!3394124 (= res!1373033 (not (contains!6774 rules!2135 (rule!7942 separatorToken!241))))))

(declare-fun b!3394125 () Bool)

(declare-fun res!1373013 () Bool)

(assert (=> b!3394125 (=> (not res!1373013) (not e!2106703))))

(declare-fun rulesInvariant!4370 (LexerInterface!4973 List!37036) Bool)

(assert (=> b!3394125 (= res!1373013 (rulesInvariant!4370 thiss!18206 rules!2135))))

(declare-fun b!3394126 () Bool)

(declare-fun e!2106701 () Bool)

(assert (=> b!3394126 (= e!2106693 e!2106701)))

(declare-fun res!1373019 () Bool)

(assert (=> b!3394126 (=> res!1373019 e!2106701)))

(assert (=> b!3394126 (= res!1373019 (isSeparator!5384 (rule!7942 (h!42333 tokens!494))))))

(declare-fun lt!1153524 () Unit!52082)

(declare-fun forallContained!1331 (List!37037 Int Token!10134) Unit!52082)

(assert (=> b!3394126 (= lt!1153524 (forallContained!1331 tokens!494 lambda!120723 (h!42333 tokens!494)))))

(assert (=> b!3394127 (= e!2106691 (and tp!1059527 tp!1059524))))

(declare-fun e!2106715 () Bool)

(declare-fun e!2106711 () Bool)

(declare-fun b!3394128 () Bool)

(declare-fun tp!1059523 () Bool)

(assert (=> b!3394128 (= e!2106711 (and tp!1059523 (inv!50001 (tag!5966 (rule!7942 (h!42333 tokens!494)))) (inv!50005 (transformation!5384 (rule!7942 (h!42333 tokens!494)))) e!2106715))))

(declare-fun b!3394129 () Bool)

(assert (=> b!3394129 (= e!2106714 (= (rule!7942 (h!42333 tokens!494)) lt!1153526))))

(declare-fun b!3394130 () Bool)

(declare-fun res!1373028 () Bool)

(declare-fun e!2106690 () Bool)

(assert (=> b!3394130 (=> res!1373028 e!2106690)))

(declare-fun lt!1153541 () tuple2!36528)

(declare-fun isEmpty!21170 (List!37035) Bool)

(assert (=> b!3394130 (= res!1373028 (not (isEmpty!21170 (_2!21398 lt!1153541))))))

(declare-fun tp!1059528 () Bool)

(declare-fun b!3394131 () Bool)

(declare-fun inv!21 (TokenValue!5614) Bool)

(assert (=> b!3394131 (= e!2106705 (and (inv!21 (value!173904 (h!42333 tokens!494))) e!2106711 tp!1059528))))

(declare-fun b!3394132 () Bool)

(assert (=> b!3394132 (= e!2106708 (= (rule!7942 separatorToken!241) lt!1153527))))

(declare-fun b!3394133 () Bool)

(declare-fun e!2106713 () Bool)

(declare-fun e!2106692 () Bool)

(assert (=> b!3394133 (= e!2106713 e!2106692)))

(declare-fun res!1373018 () Bool)

(assert (=> b!3394133 (=> res!1373018 e!2106692)))

(declare-fun lt!1153528 () Bool)

(assert (=> b!3394133 (= res!1373018 lt!1153528)))

(declare-fun lt!1153538 () Unit!52082)

(assert (=> b!3394133 (= lt!1153538 e!2106718)))

(declare-fun c!578609 () Bool)

(assert (=> b!3394133 (= c!578609 lt!1153528)))

(declare-fun lt!1153543 () C!20472)

(declare-fun contains!6775 (List!37035 C!20472) Bool)

(declare-fun usedCharacters!640 (Regex!10143) List!37035)

(assert (=> b!3394133 (= lt!1153528 (not (contains!6775 (usedCharacters!640 (regex!5384 (rule!7942 separatorToken!241))) lt!1153543)))))

(declare-fun head!7241 (List!37035) C!20472)

(assert (=> b!3394133 (= lt!1153543 (head!7241 lt!1153525))))

(declare-fun maxPrefixOneRule!1696 (LexerInterface!4973 Rule!10568 List!37035) Option!7422)

(declare-fun apply!8603 (TokenValueInjection!10656 BalanceConc!21900) TokenValue!5614)

(declare-fun size!27945 (List!37035) Int)

(assert (=> b!3394133 (= (maxPrefixOneRule!1696 thiss!18206 (rule!7942 (h!42333 tokens!494)) lt!1153537) (Some!7421 (tuple2!36529 (Token!10135 (apply!8603 (transformation!5384 (rule!7942 (h!42333 tokens!494))) lt!1153547) (rule!7942 (h!42333 tokens!494)) (size!27945 lt!1153537) lt!1153537) Nil!36911)))))

(declare-fun lt!1153532 () Unit!52082)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!795 (LexerInterface!4973 List!37036 List!37035 List!37035 List!37035 Rule!10568) Unit!52082)

(assert (=> b!3394133 (= lt!1153532 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!795 thiss!18206 rules!2135 lt!1153537 lt!1153537 Nil!36911 (rule!7942 (h!42333 tokens!494))))))

(assert (=> b!3394133 e!2106719))

(declare-fun res!1373032 () Bool)

(assert (=> b!3394133 (=> (not res!1373032) (not e!2106719))))

(declare-fun isDefined!5734 (Option!7421) Bool)

(assert (=> b!3394133 (= res!1373032 (isDefined!5734 lt!1153545))))

(declare-fun getRuleFromTag!1039 (LexerInterface!4973 List!37036 String!41404) Option!7421)

(assert (=> b!3394133 (= lt!1153545 (getRuleFromTag!1039 thiss!18206 rules!2135 (tag!5966 (rule!7942 separatorToken!241))))))

(declare-fun lt!1153533 () Unit!52082)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1039 (LexerInterface!4973 List!37036 List!37035 Token!10134) Unit!52082)

(assert (=> b!3394133 (= lt!1153533 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1039 thiss!18206 rules!2135 lt!1153525 separatorToken!241))))

(assert (=> b!3394133 e!2106717))

(declare-fun res!1373025 () Bool)

(assert (=> b!3394133 (=> (not res!1373025) (not e!2106717))))

(assert (=> b!3394133 (= res!1373025 (isDefined!5734 lt!1153542))))

(assert (=> b!3394133 (= lt!1153542 (getRuleFromTag!1039 thiss!18206 rules!2135 (tag!5966 (rule!7942 (h!42333 tokens!494)))))))

(declare-fun lt!1153540 () Unit!52082)

(assert (=> b!3394133 (= lt!1153540 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1039 thiss!18206 rules!2135 lt!1153537 (h!42333 tokens!494)))))

(declare-fun lt!1153523 () Unit!52082)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!968 (LexerInterface!4973 List!37036 List!37037 Token!10134) Unit!52082)

(assert (=> b!3394133 (= lt!1153523 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!968 thiss!18206 rules!2135 tokens!494 (h!42333 tokens!494)))))

(declare-fun getSuffix!1478 (List!37035 List!37035) List!37035)

(assert (=> b!3394133 (isEmpty!21170 (getSuffix!1478 lt!1153537 lt!1153537))))

(declare-fun lt!1153534 () Unit!52082)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!136 (List!37035) Unit!52082)

(assert (=> b!3394133 (= lt!1153534 (lemmaGetSuffixOnListWithItSelfIsEmpty!136 lt!1153537))))

(declare-fun b!3394134 () Bool)

(declare-fun res!1373012 () Bool)

(assert (=> b!3394134 (=> (not res!1373012) (not e!2106712))))

(assert (=> b!3394134 (= res!1373012 (isSeparator!5384 (rule!7942 separatorToken!241)))))

(assert (=> b!3394135 (= e!2106715 (and tp!1059518 tp!1059530))))

(declare-fun b!3394136 () Bool)

(assert (=> b!3394136 (= e!2106692 e!2106695)))

(declare-fun res!1373016 () Bool)

(assert (=> b!3394136 (=> res!1373016 e!2106695)))

(assert (=> b!3394136 (= res!1373016 (not (contains!6774 rules!2135 (rule!7942 (h!42333 tokens!494)))))))

(assert (=> b!3394136 (not (contains!6775 (usedCharacters!640 (regex!5384 (rule!7942 (h!42333 tokens!494)))) lt!1153543))))

(declare-fun lt!1153529 () Unit!52082)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!224 (LexerInterface!4973 List!37036 List!37036 Rule!10568 Rule!10568 C!20472) Unit!52082)

(assert (=> b!3394136 (= lt!1153529 (lemmaNonSepRuleNotContainsCharContainedInASepRule!224 thiss!18206 rules!2135 rules!2135 (rule!7942 (h!42333 tokens!494)) (rule!7942 separatorToken!241) lt!1153543))))

(declare-fun b!3394137 () Bool)

(declare-fun e!2106720 () Bool)

(assert (=> b!3394137 (= e!2106720 e!2106696)))

(declare-fun res!1373020 () Bool)

(assert (=> b!3394137 (=> res!1373020 e!2106696)))

(declare-fun lt!1153535 () List!37035)

(declare-fun lt!1153546 () List!37035)

(assert (=> b!3394137 (= res!1373020 (or (not (= lt!1153546 lt!1153537)) (not (= lt!1153535 lt!1153537))))))

(declare-fun list!13367 (BalanceConc!21900) List!37035)

(declare-fun charsOf!3398 (Token!10134) BalanceConc!21900)

(assert (=> b!3394137 (= lt!1153537 (list!13367 (charsOf!3398 (h!42333 tokens!494))))))

(declare-fun b!3394138 () Bool)

(declare-fun e!2106709 () Bool)

(assert (=> b!3394138 (= e!2106709 false)))

(declare-fun b!3394139 () Bool)

(declare-fun tp!1059526 () Bool)

(declare-fun e!2106697 () Bool)

(declare-fun e!2106704 () Bool)

(assert (=> b!3394139 (= e!2106704 (and tp!1059526 (inv!50001 (tag!5966 (rule!7942 separatorToken!241))) (inv!50005 (transformation!5384 (rule!7942 separatorToken!241))) e!2106697))))

(declare-fun b!3394140 () Bool)

(declare-fun res!1373029 () Bool)

(assert (=> b!3394140 (=> (not res!1373029) (not e!2106703))))

(declare-fun isEmpty!21171 (List!37036) Bool)

(assert (=> b!3394140 (= res!1373029 (not (isEmpty!21171 rules!2135)))))

(declare-fun b!3394141 () Bool)

(declare-fun res!1373014 () Bool)

(assert (=> b!3394141 (=> (not res!1373014) (not e!2106712))))

(declare-fun sepAndNonSepRulesDisjointChars!1578 (List!37036 List!37036) Bool)

(assert (=> b!3394141 (= res!1373014 (sepAndNonSepRulesDisjointChars!1578 rules!2135 rules!2135))))

(assert (=> b!3394142 (= e!2106697 (and tp!1059529 tp!1059525))))

(declare-fun b!3394143 () Bool)

(declare-fun res!1373036 () Bool)

(assert (=> b!3394143 (=> (not res!1373036) (not e!2106712))))

(declare-fun rulesProduceIndividualToken!2465 (LexerInterface!4973 List!37036 Token!10134) Bool)

(assert (=> b!3394143 (= res!1373036 (rulesProduceIndividualToken!2465 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3394144 () Bool)

(assert (=> b!3394144 (= e!2106701 e!2106713)))

(declare-fun res!1373022 () Bool)

(assert (=> b!3394144 (=> res!1373022 e!2106713)))

(declare-fun lt!1153548 () BalanceConc!21900)

(declare-fun ++!9037 (List!37035 List!37035) List!37035)

(assert (=> b!3394144 (= res!1373022 (not (= (list!13367 lt!1153548) (++!9037 lt!1153537 lt!1153525))))))

(assert (=> b!3394144 (= lt!1153525 (list!13367 (charsOf!3398 separatorToken!241)))))

(declare-fun lt!1153536 () BalanceConc!21902)

(declare-fun printWithSeparatorToken!164 (LexerInterface!4973 BalanceConc!21902 Token!10134) BalanceConc!21900)

(assert (=> b!3394144 (= lt!1153548 (printWithSeparatorToken!164 thiss!18206 lt!1153536 separatorToken!241))))

(declare-fun b!3394145 () Bool)

(declare-fun e!2106716 () Bool)

(assert (=> b!3394145 (= e!2106716 (not (isEmpty!21170 lt!1153525)))))

(declare-fun b!3394146 () Bool)

(declare-fun res!1373035 () Bool)

(assert (=> b!3394146 (=> (not res!1373035) (not e!2106712))))

(assert (=> b!3394146 (= res!1373035 (and (not ((_ is Nil!36913) tokens!494)) ((_ is Nil!36913) (t!265068 tokens!494))))))

(declare-fun b!3394147 () Bool)

(assert (=> b!3394147 (= e!2106712 (not e!2106720))))

(declare-fun res!1373021 () Bool)

(assert (=> b!3394147 (=> res!1373021 e!2106720)))

(assert (=> b!3394147 (= res!1373021 (not (= lt!1153535 lt!1153546)))))

(declare-fun printList!1521 (LexerInterface!4973 List!37037) List!37035)

(assert (=> b!3394147 (= lt!1153546 (printList!1521 thiss!18206 (Cons!36913 (h!42333 tokens!494) Nil!36913)))))

(declare-fun lt!1153522 () BalanceConc!21900)

(assert (=> b!3394147 (= lt!1153535 (list!13367 lt!1153522))))

(declare-fun lt!1153530 () BalanceConc!21902)

(declare-fun printTailRec!1468 (LexerInterface!4973 BalanceConc!21902 Int BalanceConc!21900) BalanceConc!21900)

(assert (=> b!3394147 (= lt!1153522 (printTailRec!1468 thiss!18206 lt!1153530 0 (BalanceConc!21901 Empty!11143)))))

(declare-fun print!2038 (LexerInterface!4973 BalanceConc!21902) BalanceConc!21900)

(assert (=> b!3394147 (= lt!1153522 (print!2038 thiss!18206 lt!1153530))))

(declare-fun singletonSeq!2480 (Token!10134) BalanceConc!21902)

(assert (=> b!3394147 (= lt!1153530 (singletonSeq!2480 (h!42333 tokens!494)))))

(declare-fun b!3394148 () Bool)

(assert (=> b!3394148 (= e!2106703 e!2106712)))

(declare-fun res!1373031 () Bool)

(assert (=> b!3394148 (=> (not res!1373031) (not e!2106712))))

(declare-fun rulesProduceEachTokenIndividually!1424 (LexerInterface!4973 List!37036 BalanceConc!21902) Bool)

(assert (=> b!3394148 (= res!1373031 (rulesProduceEachTokenIndividually!1424 thiss!18206 rules!2135 lt!1153536))))

(declare-fun seqFromList!3822 (List!37037) BalanceConc!21902)

(assert (=> b!3394148 (= lt!1153536 (seqFromList!3822 tokens!494))))

(declare-fun b!3394149 () Bool)

(declare-fun Unit!52085 () Unit!52082)

(assert (=> b!3394149 (= e!2106718 Unit!52085)))

(declare-fun lt!1153531 () Unit!52082)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!474 (Regex!10143 List!37035 C!20472) Unit!52082)

(assert (=> b!3394149 (= lt!1153531 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!474 (regex!5384 (rule!7942 separatorToken!241)) lt!1153525 lt!1153543))))

(declare-fun res!1373024 () Bool)

(assert (=> b!3394149 (= res!1373024 (not (matchR!4735 (regex!5384 (rule!7942 separatorToken!241)) lt!1153525)))))

(assert (=> b!3394149 (=> (not res!1373024) (not e!2106709))))

(assert (=> b!3394149 e!2106709))

(declare-fun b!3394150 () Bool)

(declare-fun tp!1059519 () Bool)

(assert (=> b!3394150 (= e!2106721 (and e!2106710 tp!1059519))))

(declare-fun b!3394151 () Bool)

(declare-fun res!1373026 () Bool)

(assert (=> b!3394151 (=> res!1373026 e!2106696)))

(assert (=> b!3394151 (= res!1373026 (not (rulesProduceIndividualToken!2465 thiss!18206 rules!2135 (h!42333 tokens!494))))))

(declare-fun b!3394152 () Bool)

(assert (=> b!3394152 (= e!2106707 e!2106690)))

(declare-fun res!1373038 () Bool)

(assert (=> b!3394152 (=> res!1373038 e!2106690)))

(assert (=> b!3394152 (= res!1373038 (not (= (_1!21398 lt!1153541) (h!42333 tokens!494))))))

(declare-fun get!11795 (Option!7422) tuple2!36528)

(assert (=> b!3394152 (= lt!1153541 (get!11795 lt!1153544))))

(declare-fun b!3394153 () Bool)

(declare-fun tp!1059520 () Bool)

(assert (=> b!3394153 (= e!2106700 (and (inv!21 (value!173904 separatorToken!241)) e!2106704 tp!1059520))))

(declare-fun b!3394154 () Bool)

(assert (=> b!3394154 (= e!2106690 e!2106716)))

(declare-fun res!1373015 () Bool)

(assert (=> b!3394154 (=> res!1373015 e!2106716)))

(assert (=> b!3394154 (= res!1373015 (not (matchR!4735 (regex!5384 (rule!7942 (h!42333 tokens!494))) lt!1153537)))))

(declare-fun ruleValid!1712 (LexerInterface!4973 Rule!10568) Bool)

(assert (=> b!3394154 (ruleValid!1712 thiss!18206 (rule!7942 (h!42333 tokens!494)))))

(declare-fun lt!1153539 () Unit!52082)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!940 (LexerInterface!4973 Rule!10568 List!37036) Unit!52082)

(assert (=> b!3394154 (= lt!1153539 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!940 thiss!18206 (rule!7942 (h!42333 tokens!494)) rules!2135))))

(assert (= (and start!316610 res!1373027) b!3394140))

(assert (= (and b!3394140 res!1373029) b!3394125))

(assert (= (and b!3394125 res!1373013) b!3394148))

(assert (= (and b!3394148 res!1373031) b!3394143))

(assert (= (and b!3394143 res!1373036) b!3394134))

(assert (= (and b!3394134 res!1373012) b!3394118))

(assert (= (and b!3394118 res!1373030) b!3394141))

(assert (= (and b!3394141 res!1373014) b!3394146))

(assert (= (and b!3394146 res!1373035) b!3394147))

(assert (= (and b!3394147 (not res!1373021)) b!3394137))

(assert (= (and b!3394137 (not res!1373020)) b!3394151))

(assert (= (and b!3394151 (not res!1373026)) b!3394119))

(assert (= (and b!3394119 (not res!1373037)) b!3394126))

(assert (= (and b!3394126 (not res!1373019)) b!3394144))

(assert (= (and b!3394144 (not res!1373022)) b!3394133))

(assert (= (and b!3394133 res!1373025) b!3394116))

(assert (= (and b!3394116 res!1373017) b!3394129))

(assert (= (and b!3394133 res!1373032) b!3394122))

(assert (= (and b!3394122 res!1373023) b!3394132))

(assert (= (and b!3394133 c!578609) b!3394149))

(assert (= (and b!3394133 (not c!578609)) b!3394121))

(assert (= (and b!3394149 res!1373024) b!3394138))

(assert (= (and b!3394133 (not res!1373018)) b!3394136))

(assert (= (and b!3394136 (not res!1373016)) b!3394124))

(assert (= (and b!3394124 (not res!1373033)) b!3394117))

(assert (= (and b!3394117 (not res!1373034)) b!3394152))

(assert (= (and b!3394152 (not res!1373038)) b!3394130))

(assert (= (and b!3394130 (not res!1373028)) b!3394154))

(assert (= (and b!3394154 (not res!1373015)) b!3394145))

(assert (= b!3394123 b!3394127))

(assert (= b!3394150 b!3394123))

(assert (= (and start!316610 ((_ is Cons!36912) rules!2135)) b!3394150))

(assert (= b!3394139 b!3394142))

(assert (= b!3394153 b!3394139))

(assert (= start!316610 b!3394153))

(assert (= b!3394128 b!3394135))

(assert (= b!3394131 b!3394128))

(assert (= b!3394120 b!3394131))

(assert (= (and start!316610 ((_ is Cons!36913) tokens!494)) b!3394120))

(declare-fun m!3763797 () Bool)

(assert (=> b!3394153 m!3763797))

(declare-fun m!3763799 () Bool)

(assert (=> b!3394126 m!3763799))

(declare-fun m!3763801 () Bool)

(assert (=> b!3394124 m!3763801))

(declare-fun m!3763803 () Bool)

(assert (=> b!3394144 m!3763803))

(declare-fun m!3763805 () Bool)

(assert (=> b!3394144 m!3763805))

(declare-fun m!3763807 () Bool)

(assert (=> b!3394144 m!3763807))

(assert (=> b!3394144 m!3763805))

(declare-fun m!3763809 () Bool)

(assert (=> b!3394144 m!3763809))

(declare-fun m!3763811 () Bool)

(assert (=> b!3394144 m!3763811))

(declare-fun m!3763813 () Bool)

(assert (=> b!3394128 m!3763813))

(declare-fun m!3763815 () Bool)

(assert (=> b!3394128 m!3763815))

(declare-fun m!3763817 () Bool)

(assert (=> b!3394152 m!3763817))

(declare-fun m!3763819 () Bool)

(assert (=> b!3394122 m!3763819))

(declare-fun m!3763821 () Bool)

(assert (=> b!3394122 m!3763821))

(declare-fun m!3763823 () Bool)

(assert (=> b!3394151 m!3763823))

(declare-fun m!3763825 () Bool)

(assert (=> start!316610 m!3763825))

(declare-fun m!3763827 () Bool)

(assert (=> b!3394141 m!3763827))

(declare-fun m!3763829 () Bool)

(assert (=> b!3394136 m!3763829))

(declare-fun m!3763831 () Bool)

(assert (=> b!3394136 m!3763831))

(assert (=> b!3394136 m!3763831))

(declare-fun m!3763833 () Bool)

(assert (=> b!3394136 m!3763833))

(declare-fun m!3763835 () Bool)

(assert (=> b!3394136 m!3763835))

(declare-fun m!3763837 () Bool)

(assert (=> b!3394116 m!3763837))

(declare-fun m!3763839 () Bool)

(assert (=> b!3394116 m!3763839))

(declare-fun m!3763841 () Bool)

(assert (=> b!3394123 m!3763841))

(declare-fun m!3763843 () Bool)

(assert (=> b!3394123 m!3763843))

(declare-fun m!3763845 () Bool)

(assert (=> b!3394130 m!3763845))

(declare-fun m!3763847 () Bool)

(assert (=> b!3394137 m!3763847))

(assert (=> b!3394137 m!3763847))

(declare-fun m!3763849 () Bool)

(assert (=> b!3394137 m!3763849))

(declare-fun m!3763851 () Bool)

(assert (=> b!3394145 m!3763851))

(declare-fun m!3763853 () Bool)

(assert (=> b!3394148 m!3763853))

(declare-fun m!3763855 () Bool)

(assert (=> b!3394148 m!3763855))

(declare-fun m!3763857 () Bool)

(assert (=> b!3394149 m!3763857))

(declare-fun m!3763859 () Bool)

(assert (=> b!3394149 m!3763859))

(declare-fun m!3763861 () Bool)

(assert (=> b!3394131 m!3763861))

(declare-fun m!3763863 () Bool)

(assert (=> b!3394117 m!3763863))

(declare-fun m!3763865 () Bool)

(assert (=> b!3394117 m!3763865))

(declare-fun m!3763867 () Bool)

(assert (=> b!3394139 m!3763867))

(declare-fun m!3763869 () Bool)

(assert (=> b!3394139 m!3763869))

(declare-fun m!3763871 () Bool)

(assert (=> b!3394133 m!3763871))

(assert (=> b!3394133 m!3763871))

(declare-fun m!3763873 () Bool)

(assert (=> b!3394133 m!3763873))

(declare-fun m!3763875 () Bool)

(assert (=> b!3394133 m!3763875))

(declare-fun m!3763877 () Bool)

(assert (=> b!3394133 m!3763877))

(declare-fun m!3763879 () Bool)

(assert (=> b!3394133 m!3763879))

(declare-fun m!3763881 () Bool)

(assert (=> b!3394133 m!3763881))

(declare-fun m!3763883 () Bool)

(assert (=> b!3394133 m!3763883))

(declare-fun m!3763885 () Bool)

(assert (=> b!3394133 m!3763885))

(declare-fun m!3763887 () Bool)

(assert (=> b!3394133 m!3763887))

(declare-fun m!3763889 () Bool)

(assert (=> b!3394133 m!3763889))

(assert (=> b!3394133 m!3763877))

(declare-fun m!3763891 () Bool)

(assert (=> b!3394133 m!3763891))

(declare-fun m!3763893 () Bool)

(assert (=> b!3394133 m!3763893))

(declare-fun m!3763895 () Bool)

(assert (=> b!3394133 m!3763895))

(declare-fun m!3763897 () Bool)

(assert (=> b!3394133 m!3763897))

(declare-fun m!3763899 () Bool)

(assert (=> b!3394133 m!3763899))

(declare-fun m!3763901 () Bool)

(assert (=> b!3394133 m!3763901))

(declare-fun m!3763903 () Bool)

(assert (=> b!3394133 m!3763903))

(declare-fun m!3763905 () Bool)

(assert (=> b!3394120 m!3763905))

(declare-fun m!3763907 () Bool)

(assert (=> b!3394119 m!3763907))

(declare-fun m!3763909 () Bool)

(assert (=> b!3394119 m!3763909))

(declare-fun m!3763911 () Bool)

(assert (=> b!3394119 m!3763911))

(declare-fun m!3763913 () Bool)

(assert (=> b!3394143 m!3763913))

(declare-fun m!3763915 () Bool)

(assert (=> b!3394118 m!3763915))

(declare-fun m!3763917 () Bool)

(assert (=> b!3394125 m!3763917))

(declare-fun m!3763919 () Bool)

(assert (=> b!3394154 m!3763919))

(declare-fun m!3763921 () Bool)

(assert (=> b!3394154 m!3763921))

(declare-fun m!3763923 () Bool)

(assert (=> b!3394154 m!3763923))

(declare-fun m!3763925 () Bool)

(assert (=> b!3394140 m!3763925))

(declare-fun m!3763927 () Bool)

(assert (=> b!3394147 m!3763927))

(declare-fun m!3763929 () Bool)

(assert (=> b!3394147 m!3763929))

(declare-fun m!3763931 () Bool)

(assert (=> b!3394147 m!3763931))

(declare-fun m!3763933 () Bool)

(assert (=> b!3394147 m!3763933))

(declare-fun m!3763935 () Bool)

(assert (=> b!3394147 m!3763935))

(check-sat (not b!3394144) (not b_next!89457) (not b!3394143) (not b!3394137) b_and!236491 (not b!3394133) (not b_next!89453) (not b!3394140) (not b!3394154) (not b!3394120) (not b!3394153) (not b_next!89455) (not b!3394141) (not b_next!89451) (not b!3394151) (not b!3394123) (not start!316610) (not b!3394119) (not b!3394152) (not b!3394131) (not b!3394150) (not b!3394130) (not b!3394122) (not b!3394145) b_and!236495 (not b!3394148) (not b!3394126) (not b!3394139) (not b!3394136) (not b_next!89449) b_and!236493 (not b!3394118) (not b!3394124) (not b!3394117) (not b!3394147) (not b!3394149) b_and!236497 (not b_next!89459) (not b!3394128) b_and!236499 (not b!3394125) (not b!3394116) b_and!236501)
(check-sat (not b_next!89455) (not b_next!89451) (not b_next!89457) b_and!236495 b_and!236491 (not b_next!89453) b_and!236497 (not b_next!89459) (not b_next!89449) b_and!236493 b_and!236499 b_and!236501)
(get-model)

(declare-fun d!964875 () Bool)

(assert (=> d!964875 (= (isEmpty!21171 rules!2135) ((_ is Nil!36912) rules!2135))))

(assert (=> b!3394140 d!964875))

(declare-fun lt!1153554 () Bool)

(declare-fun d!964877 () Bool)

(declare-fun isEmpty!21174 (List!37037) Bool)

(declare-fun list!13369 (BalanceConc!21902) List!37037)

(assert (=> d!964877 (= lt!1153554 (isEmpty!21174 (list!13369 (_1!21399 (lex!2299 thiss!18206 rules!2135 lt!1153547)))))))

(declare-fun isEmpty!21175 (Conc!11144) Bool)

(assert (=> d!964877 (= lt!1153554 (isEmpty!21175 (c!578612 (_1!21399 (lex!2299 thiss!18206 rules!2135 lt!1153547)))))))

(assert (=> d!964877 (= (isEmpty!21169 (_1!21399 (lex!2299 thiss!18206 rules!2135 lt!1153547))) lt!1153554)))

(declare-fun bs!555761 () Bool)

(assert (= bs!555761 d!964877))

(declare-fun m!3763953 () Bool)

(assert (=> bs!555761 m!3763953))

(assert (=> bs!555761 m!3763953))

(declare-fun m!3763955 () Bool)

(assert (=> bs!555761 m!3763955))

(declare-fun m!3763957 () Bool)

(assert (=> bs!555761 m!3763957))

(assert (=> b!3394119 d!964877))

(declare-fun b!3394233 () Bool)

(declare-fun e!2106770 () Bool)

(declare-fun lt!1153593 () tuple2!36530)

(declare-datatypes ((tuple2!36534 0))(
  ( (tuple2!36535 (_1!21401 List!37037) (_2!21401 List!37035)) )
))
(declare-fun lexList!1411 (LexerInterface!4973 List!37036 List!37035) tuple2!36534)

(assert (=> b!3394233 (= e!2106770 (= (list!13367 (_2!21399 lt!1153593)) (_2!21401 (lexList!1411 thiss!18206 rules!2135 (list!13367 lt!1153547)))))))

(declare-fun b!3394234 () Bool)

(declare-fun res!1373100 () Bool)

(assert (=> b!3394234 (=> (not res!1373100) (not e!2106770))))

(assert (=> b!3394234 (= res!1373100 (= (list!13369 (_1!21399 lt!1153593)) (_1!21401 (lexList!1411 thiss!18206 rules!2135 (list!13367 lt!1153547)))))))

(declare-fun b!3394235 () Bool)

(declare-fun e!2106769 () Bool)

(assert (=> b!3394235 (= e!2106769 (not (isEmpty!21169 (_1!21399 lt!1153593))))))

(declare-fun b!3394236 () Bool)

(declare-fun e!2106768 () Bool)

(assert (=> b!3394236 (= e!2106768 e!2106769)))

(declare-fun res!1373098 () Bool)

(declare-fun size!27947 (BalanceConc!21900) Int)

(assert (=> b!3394236 (= res!1373098 (< (size!27947 (_2!21399 lt!1153593)) (size!27947 lt!1153547)))))

(assert (=> b!3394236 (=> (not res!1373098) (not e!2106769))))

(declare-fun b!3394237 () Bool)

(assert (=> b!3394237 (= e!2106768 (= (_2!21399 lt!1153593) lt!1153547))))

(declare-fun d!964879 () Bool)

(assert (=> d!964879 e!2106770))

(declare-fun res!1373099 () Bool)

(assert (=> d!964879 (=> (not res!1373099) (not e!2106770))))

(assert (=> d!964879 (= res!1373099 e!2106768)))

(declare-fun c!578624 () Bool)

(declare-fun size!27948 (BalanceConc!21902) Int)

(assert (=> d!964879 (= c!578624 (> (size!27948 (_1!21399 lt!1153593)) 0))))

(declare-fun lexTailRecV2!1021 (LexerInterface!4973 List!37036 BalanceConc!21900 BalanceConc!21900 BalanceConc!21900 BalanceConc!21902) tuple2!36530)

(assert (=> d!964879 (= lt!1153593 (lexTailRecV2!1021 thiss!18206 rules!2135 lt!1153547 (BalanceConc!21901 Empty!11143) lt!1153547 (BalanceConc!21903 Empty!11144)))))

(assert (=> d!964879 (= (lex!2299 thiss!18206 rules!2135 lt!1153547) lt!1153593)))

(assert (= (and d!964879 c!578624) b!3394236))

(assert (= (and d!964879 (not c!578624)) b!3394237))

(assert (= (and b!3394236 res!1373098) b!3394235))

(assert (= (and d!964879 res!1373099) b!3394234))

(assert (= (and b!3394234 res!1373100) b!3394233))

(declare-fun m!3764019 () Bool)

(assert (=> b!3394234 m!3764019))

(declare-fun m!3764023 () Bool)

(assert (=> b!3394234 m!3764023))

(assert (=> b!3394234 m!3764023))

(declare-fun m!3764025 () Bool)

(assert (=> b!3394234 m!3764025))

(declare-fun m!3764027 () Bool)

(assert (=> b!3394236 m!3764027))

(declare-fun m!3764029 () Bool)

(assert (=> b!3394236 m!3764029))

(declare-fun m!3764033 () Bool)

(assert (=> d!964879 m!3764033))

(declare-fun m!3764035 () Bool)

(assert (=> d!964879 m!3764035))

(declare-fun m!3764037 () Bool)

(assert (=> b!3394235 m!3764037))

(declare-fun m!3764041 () Bool)

(assert (=> b!3394233 m!3764041))

(assert (=> b!3394233 m!3764023))

(assert (=> b!3394233 m!3764023))

(assert (=> b!3394233 m!3764025))

(assert (=> b!3394119 d!964879))

(declare-fun d!964893 () Bool)

(declare-fun fromListB!1712 (List!37035) BalanceConc!21900)

(assert (=> d!964893 (= (seqFromList!3821 lt!1153537) (fromListB!1712 lt!1153537))))

(declare-fun bs!555764 () Bool)

(assert (= bs!555764 d!964893))

(declare-fun m!3764049 () Bool)

(assert (=> bs!555764 m!3764049))

(assert (=> b!3394119 d!964893))

(declare-fun d!964897 () Bool)

(declare-fun isEmpty!21176 (Option!7422) Bool)

(assert (=> d!964897 (= (isDefined!5733 lt!1153544) (not (isEmpty!21176 lt!1153544)))))

(declare-fun bs!555765 () Bool)

(assert (= bs!555765 d!964897))

(declare-fun m!3764051 () Bool)

(assert (=> bs!555765 m!3764051))

(assert (=> b!3394117 d!964897))

(declare-fun d!964899 () Bool)

(declare-fun e!2106811 () Bool)

(assert (=> d!964899 e!2106811))

(declare-fun res!1373129 () Bool)

(assert (=> d!964899 (=> res!1373129 e!2106811)))

(declare-fun lt!1153619 () Option!7422)

(assert (=> d!964899 (= res!1373129 (isEmpty!21176 lt!1153619))))

(declare-fun e!2106809 () Option!7422)

(assert (=> d!964899 (= lt!1153619 e!2106809)))

(declare-fun c!578647 () Bool)

(assert (=> d!964899 (= c!578647 (and ((_ is Cons!36912) rules!2135) ((_ is Nil!36912) (t!265067 rules!2135))))))

(declare-fun lt!1153617 () Unit!52082)

(declare-fun lt!1153620 () Unit!52082)

(assert (=> d!964899 (= lt!1153617 lt!1153620)))

(declare-fun isPrefix!2829 (List!37035 List!37035) Bool)

(assert (=> d!964899 (isPrefix!2829 lt!1153537 lt!1153537)))

(declare-fun lemmaIsPrefixRefl!1788 (List!37035 List!37035) Unit!52082)

(assert (=> d!964899 (= lt!1153620 (lemmaIsPrefixRefl!1788 lt!1153537 lt!1153537))))

(declare-fun rulesValidInductive!1836 (LexerInterface!4973 List!37036) Bool)

(assert (=> d!964899 (rulesValidInductive!1836 thiss!18206 rules!2135)))

(assert (=> d!964899 (= (maxPrefix!2545 thiss!18206 rules!2135 lt!1153537) lt!1153619)))

(declare-fun b!3394309 () Bool)

(declare-fun e!2106810 () Bool)

(assert (=> b!3394309 (= e!2106810 (contains!6774 rules!2135 (rule!7942 (_1!21398 (get!11795 lt!1153619)))))))

(declare-fun b!3394310 () Bool)

(declare-fun res!1373131 () Bool)

(assert (=> b!3394310 (=> (not res!1373131) (not e!2106810))))

(assert (=> b!3394310 (= res!1373131 (= (list!13367 (charsOf!3398 (_1!21398 (get!11795 lt!1153619)))) (originalCharacters!6098 (_1!21398 (get!11795 lt!1153619)))))))

(declare-fun bm!245744 () Bool)

(declare-fun call!245749 () Option!7422)

(assert (=> bm!245744 (= call!245749 (maxPrefixOneRule!1696 thiss!18206 (h!42332 rules!2135) lt!1153537))))

(declare-fun b!3394311 () Bool)

(declare-fun lt!1153618 () Option!7422)

(declare-fun lt!1153621 () Option!7422)

(assert (=> b!3394311 (= e!2106809 (ite (and ((_ is None!7421) lt!1153618) ((_ is None!7421) lt!1153621)) None!7421 (ite ((_ is None!7421) lt!1153621) lt!1153618 (ite ((_ is None!7421) lt!1153618) lt!1153621 (ite (>= (size!27944 (_1!21398 (v!36563 lt!1153618))) (size!27944 (_1!21398 (v!36563 lt!1153621)))) lt!1153618 lt!1153621)))))))

(assert (=> b!3394311 (= lt!1153618 call!245749)))

(assert (=> b!3394311 (= lt!1153621 (maxPrefix!2545 thiss!18206 (t!265067 rules!2135) lt!1153537))))

(declare-fun b!3394312 () Bool)

(assert (=> b!3394312 (= e!2106811 e!2106810)))

(declare-fun res!1373125 () Bool)

(assert (=> b!3394312 (=> (not res!1373125) (not e!2106810))))

(assert (=> b!3394312 (= res!1373125 (isDefined!5733 lt!1153619))))

(declare-fun b!3394313 () Bool)

(declare-fun res!1373126 () Bool)

(assert (=> b!3394313 (=> (not res!1373126) (not e!2106810))))

(assert (=> b!3394313 (= res!1373126 (matchR!4735 (regex!5384 (rule!7942 (_1!21398 (get!11795 lt!1153619)))) (list!13367 (charsOf!3398 (_1!21398 (get!11795 lt!1153619))))))))

(declare-fun b!3394314 () Bool)

(declare-fun res!1373130 () Bool)

(assert (=> b!3394314 (=> (not res!1373130) (not e!2106810))))

(assert (=> b!3394314 (= res!1373130 (= (++!9037 (list!13367 (charsOf!3398 (_1!21398 (get!11795 lt!1153619)))) (_2!21398 (get!11795 lt!1153619))) lt!1153537))))

(declare-fun b!3394315 () Bool)

(assert (=> b!3394315 (= e!2106809 call!245749)))

(declare-fun b!3394316 () Bool)

(declare-fun res!1373127 () Bool)

(assert (=> b!3394316 (=> (not res!1373127) (not e!2106810))))

(assert (=> b!3394316 (= res!1373127 (< (size!27945 (_2!21398 (get!11795 lt!1153619))) (size!27945 lt!1153537)))))

(declare-fun b!3394317 () Bool)

(declare-fun res!1373128 () Bool)

(assert (=> b!3394317 (=> (not res!1373128) (not e!2106810))))

(assert (=> b!3394317 (= res!1373128 (= (value!173904 (_1!21398 (get!11795 lt!1153619))) (apply!8603 (transformation!5384 (rule!7942 (_1!21398 (get!11795 lt!1153619)))) (seqFromList!3821 (originalCharacters!6098 (_1!21398 (get!11795 lt!1153619)))))))))

(assert (= (and d!964899 c!578647) b!3394315))

(assert (= (and d!964899 (not c!578647)) b!3394311))

(assert (= (or b!3394315 b!3394311) bm!245744))

(assert (= (and d!964899 (not res!1373129)) b!3394312))

(assert (= (and b!3394312 res!1373125) b!3394310))

(assert (= (and b!3394310 res!1373131) b!3394316))

(assert (= (and b!3394316 res!1373127) b!3394314))

(assert (= (and b!3394314 res!1373130) b!3394317))

(assert (= (and b!3394317 res!1373128) b!3394313))

(assert (= (and b!3394313 res!1373126) b!3394309))

(declare-fun m!3764111 () Bool)

(assert (=> b!3394316 m!3764111))

(declare-fun m!3764113 () Bool)

(assert (=> b!3394316 m!3764113))

(assert (=> b!3394316 m!3763895))

(declare-fun m!3764115 () Bool)

(assert (=> b!3394311 m!3764115))

(declare-fun m!3764117 () Bool)

(assert (=> bm!245744 m!3764117))

(assert (=> b!3394317 m!3764111))

(declare-fun m!3764119 () Bool)

(assert (=> b!3394317 m!3764119))

(assert (=> b!3394317 m!3764119))

(declare-fun m!3764121 () Bool)

(assert (=> b!3394317 m!3764121))

(assert (=> b!3394313 m!3764111))

(declare-fun m!3764123 () Bool)

(assert (=> b!3394313 m!3764123))

(assert (=> b!3394313 m!3764123))

(declare-fun m!3764125 () Bool)

(assert (=> b!3394313 m!3764125))

(assert (=> b!3394313 m!3764125))

(declare-fun m!3764127 () Bool)

(assert (=> b!3394313 m!3764127))

(declare-fun m!3764129 () Bool)

(assert (=> d!964899 m!3764129))

(declare-fun m!3764131 () Bool)

(assert (=> d!964899 m!3764131))

(declare-fun m!3764133 () Bool)

(assert (=> d!964899 m!3764133))

(declare-fun m!3764135 () Bool)

(assert (=> d!964899 m!3764135))

(declare-fun m!3764137 () Bool)

(assert (=> b!3394312 m!3764137))

(assert (=> b!3394314 m!3764111))

(assert (=> b!3394314 m!3764123))

(assert (=> b!3394314 m!3764123))

(assert (=> b!3394314 m!3764125))

(assert (=> b!3394314 m!3764125))

(declare-fun m!3764139 () Bool)

(assert (=> b!3394314 m!3764139))

(assert (=> b!3394310 m!3764111))

(assert (=> b!3394310 m!3764123))

(assert (=> b!3394310 m!3764123))

(assert (=> b!3394310 m!3764125))

(assert (=> b!3394309 m!3764111))

(declare-fun m!3764141 () Bool)

(assert (=> b!3394309 m!3764141))

(assert (=> b!3394117 d!964899))

(declare-fun d!964929 () Bool)

(assert (=> d!964929 (= (inv!50001 (tag!5966 (rule!7942 separatorToken!241))) (= (mod (str.len (value!173903 (tag!5966 (rule!7942 separatorToken!241)))) 2) 0))))

(assert (=> b!3394139 d!964929))

(declare-fun d!964931 () Bool)

(declare-fun res!1373142 () Bool)

(declare-fun e!2106822 () Bool)

(assert (=> d!964931 (=> (not res!1373142) (not e!2106822))))

(declare-fun semiInverseModEq!2248 (Int Int) Bool)

(assert (=> d!964931 (= res!1373142 (semiInverseModEq!2248 (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241))) (toValue!7580 (transformation!5384 (rule!7942 separatorToken!241)))))))

(assert (=> d!964931 (= (inv!50005 (transformation!5384 (rule!7942 separatorToken!241))) e!2106822)))

(declare-fun b!3394328 () Bool)

(declare-fun equivClasses!2147 (Int Int) Bool)

(assert (=> b!3394328 (= e!2106822 (equivClasses!2147 (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241))) (toValue!7580 (transformation!5384 (rule!7942 separatorToken!241)))))))

(assert (= (and d!964931 res!1373142) b!3394328))

(declare-fun m!3764149 () Bool)

(assert (=> d!964931 m!3764149))

(declare-fun m!3764151 () Bool)

(assert (=> b!3394328 m!3764151))

(assert (=> b!3394139 d!964931))

(declare-fun d!964935 () Bool)

(declare-fun res!1373147 () Bool)

(declare-fun e!2106827 () Bool)

(assert (=> d!964935 (=> res!1373147 e!2106827)))

(assert (=> d!964935 (= res!1373147 ((_ is Nil!36913) tokens!494))))

(assert (=> d!964935 (= (forall!7789 tokens!494 lambda!120723) e!2106827)))

(declare-fun b!3394333 () Bool)

(declare-fun e!2106828 () Bool)

(assert (=> b!3394333 (= e!2106827 e!2106828)))

(declare-fun res!1373148 () Bool)

(assert (=> b!3394333 (=> (not res!1373148) (not e!2106828))))

(declare-fun dynLambda!15386 (Int Token!10134) Bool)

(assert (=> b!3394333 (= res!1373148 (dynLambda!15386 lambda!120723 (h!42333 tokens!494)))))

(declare-fun b!3394334 () Bool)

(assert (=> b!3394334 (= e!2106828 (forall!7789 (t!265068 tokens!494) lambda!120723))))

(assert (= (and d!964935 (not res!1373147)) b!3394333))

(assert (= (and b!3394333 res!1373148) b!3394334))

(declare-fun b_lambda!96595 () Bool)

(assert (=> (not b_lambda!96595) (not b!3394333)))

(declare-fun m!3764153 () Bool)

(assert (=> b!3394333 m!3764153))

(declare-fun m!3764155 () Bool)

(assert (=> b!3394334 m!3764155))

(assert (=> b!3394118 d!964935))

(declare-fun d!964937 () Bool)

(declare-fun lt!1153641 () Bool)

(declare-fun e!2106884 () Bool)

(assert (=> d!964937 (= lt!1153641 e!2106884)))

(declare-fun res!1373215 () Bool)

(assert (=> d!964937 (=> (not res!1373215) (not e!2106884))))

(assert (=> d!964937 (= res!1373215 (= (list!13369 (_1!21399 (lex!2299 thiss!18206 rules!2135 (print!2038 thiss!18206 (singletonSeq!2480 separatorToken!241))))) (list!13369 (singletonSeq!2480 separatorToken!241))))))

(declare-fun e!2106883 () Bool)

(assert (=> d!964937 (= lt!1153641 e!2106883)))

(declare-fun res!1373213 () Bool)

(assert (=> d!964937 (=> (not res!1373213) (not e!2106883))))

(declare-fun lt!1153640 () tuple2!36530)

(assert (=> d!964937 (= res!1373213 (= (size!27948 (_1!21399 lt!1153640)) 1))))

(assert (=> d!964937 (= lt!1153640 (lex!2299 thiss!18206 rules!2135 (print!2038 thiss!18206 (singletonSeq!2480 separatorToken!241))))))

(assert (=> d!964937 (not (isEmpty!21171 rules!2135))))

(assert (=> d!964937 (= (rulesProduceIndividualToken!2465 thiss!18206 rules!2135 separatorToken!241) lt!1153641)))

(declare-fun b!3394429 () Bool)

(declare-fun res!1373214 () Bool)

(assert (=> b!3394429 (=> (not res!1373214) (not e!2106883))))

(declare-fun apply!8604 (BalanceConc!21902 Int) Token!10134)

(assert (=> b!3394429 (= res!1373214 (= (apply!8604 (_1!21399 lt!1153640) 0) separatorToken!241))))

(declare-fun b!3394430 () Bool)

(declare-fun isEmpty!21177 (BalanceConc!21900) Bool)

(assert (=> b!3394430 (= e!2106883 (isEmpty!21177 (_2!21399 lt!1153640)))))

(declare-fun b!3394431 () Bool)

(assert (=> b!3394431 (= e!2106884 (isEmpty!21177 (_2!21399 (lex!2299 thiss!18206 rules!2135 (print!2038 thiss!18206 (singletonSeq!2480 separatorToken!241))))))))

(assert (= (and d!964937 res!1373213) b!3394429))

(assert (= (and b!3394429 res!1373214) b!3394430))

(assert (= (and d!964937 res!1373215) b!3394431))

(assert (=> d!964937 m!3763925))

(declare-fun m!3764205 () Bool)

(assert (=> d!964937 m!3764205))

(declare-fun m!3764207 () Bool)

(assert (=> d!964937 m!3764207))

(declare-fun m!3764209 () Bool)

(assert (=> d!964937 m!3764209))

(declare-fun m!3764211 () Bool)

(assert (=> d!964937 m!3764211))

(assert (=> d!964937 m!3764209))

(declare-fun m!3764213 () Bool)

(assert (=> d!964937 m!3764213))

(assert (=> d!964937 m!3764207))

(assert (=> d!964937 m!3764207))

(declare-fun m!3764215 () Bool)

(assert (=> d!964937 m!3764215))

(declare-fun m!3764217 () Bool)

(assert (=> b!3394429 m!3764217))

(declare-fun m!3764219 () Bool)

(assert (=> b!3394430 m!3764219))

(assert (=> b!3394431 m!3764207))

(assert (=> b!3394431 m!3764207))

(assert (=> b!3394431 m!3764209))

(assert (=> b!3394431 m!3764209))

(assert (=> b!3394431 m!3764213))

(declare-fun m!3764221 () Bool)

(assert (=> b!3394431 m!3764221))

(assert (=> b!3394143 d!964937))

(declare-fun b!3394460 () Bool)

(declare-fun res!1373233 () Bool)

(declare-fun e!2106901 () Bool)

(assert (=> b!3394460 (=> (not res!1373233) (not e!2106901))))

(declare-fun call!245757 () Bool)

(assert (=> b!3394460 (= res!1373233 (not call!245757))))

(declare-fun b!3394461 () Bool)

(declare-fun res!1373232 () Bool)

(declare-fun e!2106903 () Bool)

(assert (=> b!3394461 (=> res!1373232 e!2106903)))

(declare-fun tail!5367 (List!37035) List!37035)

(assert (=> b!3394461 (= res!1373232 (not (isEmpty!21170 (tail!5367 lt!1153525))))))

(declare-fun b!3394462 () Bool)

(declare-fun res!1373238 () Bool)

(declare-fun e!2106905 () Bool)

(assert (=> b!3394462 (=> res!1373238 e!2106905)))

(assert (=> b!3394462 (= res!1373238 (not ((_ is ElementMatch!10143) (regex!5384 lt!1153527))))))

(declare-fun e!2106900 () Bool)

(assert (=> b!3394462 (= e!2106900 e!2106905)))

(declare-fun bm!245752 () Bool)

(assert (=> bm!245752 (= call!245757 (isEmpty!21170 lt!1153525))))

(declare-fun b!3394464 () Bool)

(declare-fun e!2106902 () Bool)

(assert (=> b!3394464 (= e!2106905 e!2106902)))

(declare-fun res!1373237 () Bool)

(assert (=> b!3394464 (=> (not res!1373237) (not e!2106902))))

(declare-fun lt!1153644 () Bool)

(assert (=> b!3394464 (= res!1373237 (not lt!1153644))))

(declare-fun b!3394465 () Bool)

(declare-fun e!2106899 () Bool)

(declare-fun derivativeStep!3011 (Regex!10143 C!20472) Regex!10143)

(assert (=> b!3394465 (= e!2106899 (matchR!4735 (derivativeStep!3011 (regex!5384 lt!1153527) (head!7241 lt!1153525)) (tail!5367 lt!1153525)))))

(declare-fun b!3394466 () Bool)

(assert (=> b!3394466 (= e!2106902 e!2106903)))

(declare-fun res!1373234 () Bool)

(assert (=> b!3394466 (=> res!1373234 e!2106903)))

(assert (=> b!3394466 (= res!1373234 call!245757)))

(declare-fun b!3394467 () Bool)

(assert (=> b!3394467 (= e!2106900 (not lt!1153644))))

(declare-fun b!3394468 () Bool)

(declare-fun e!2106904 () Bool)

(assert (=> b!3394468 (= e!2106904 (= lt!1153644 call!245757))))

(declare-fun b!3394469 () Bool)

(declare-fun nullable!3458 (Regex!10143) Bool)

(assert (=> b!3394469 (= e!2106899 (nullable!3458 (regex!5384 lt!1153527)))))

(declare-fun b!3394470 () Bool)

(declare-fun res!1373236 () Bool)

(assert (=> b!3394470 (=> res!1373236 e!2106905)))

(assert (=> b!3394470 (= res!1373236 e!2106901)))

(declare-fun res!1373235 () Bool)

(assert (=> b!3394470 (=> (not res!1373235) (not e!2106901))))

(assert (=> b!3394470 (= res!1373235 lt!1153644)))

(declare-fun b!3394471 () Bool)

(assert (=> b!3394471 (= e!2106901 (= (head!7241 lt!1153525) (c!578611 (regex!5384 lt!1153527))))))

(declare-fun d!964961 () Bool)

(assert (=> d!964961 e!2106904))

(declare-fun c!578670 () Bool)

(assert (=> d!964961 (= c!578670 ((_ is EmptyExpr!10143) (regex!5384 lt!1153527)))))

(assert (=> d!964961 (= lt!1153644 e!2106899)))

(declare-fun c!578669 () Bool)

(assert (=> d!964961 (= c!578669 (isEmpty!21170 lt!1153525))))

(declare-fun validRegex!4614 (Regex!10143) Bool)

(assert (=> d!964961 (validRegex!4614 (regex!5384 lt!1153527))))

(assert (=> d!964961 (= (matchR!4735 (regex!5384 lt!1153527) lt!1153525) lt!1153644)))

(declare-fun b!3394463 () Bool)

(assert (=> b!3394463 (= e!2106903 (not (= (head!7241 lt!1153525) (c!578611 (regex!5384 lt!1153527)))))))

(declare-fun b!3394472 () Bool)

(declare-fun res!1373239 () Bool)

(assert (=> b!3394472 (=> (not res!1373239) (not e!2106901))))

(assert (=> b!3394472 (= res!1373239 (isEmpty!21170 (tail!5367 lt!1153525)))))

(declare-fun b!3394473 () Bool)

(assert (=> b!3394473 (= e!2106904 e!2106900)))

(declare-fun c!578671 () Bool)

(assert (=> b!3394473 (= c!578671 ((_ is EmptyLang!10143) (regex!5384 lt!1153527)))))

(assert (= (and d!964961 c!578669) b!3394469))

(assert (= (and d!964961 (not c!578669)) b!3394465))

(assert (= (and d!964961 c!578670) b!3394468))

(assert (= (and d!964961 (not c!578670)) b!3394473))

(assert (= (and b!3394473 c!578671) b!3394467))

(assert (= (and b!3394473 (not c!578671)) b!3394462))

(assert (= (and b!3394462 (not res!1373238)) b!3394470))

(assert (= (and b!3394470 res!1373235) b!3394460))

(assert (= (and b!3394460 res!1373233) b!3394472))

(assert (= (and b!3394472 res!1373239) b!3394471))

(assert (= (and b!3394470 (not res!1373236)) b!3394464))

(assert (= (and b!3394464 res!1373237) b!3394466))

(assert (= (and b!3394466 (not res!1373234)) b!3394461))

(assert (= (and b!3394461 (not res!1373232)) b!3394463))

(assert (= (or b!3394468 b!3394460 b!3394466) bm!245752))

(assert (=> b!3394463 m!3763875))

(declare-fun m!3764223 () Bool)

(assert (=> b!3394469 m!3764223))

(assert (=> d!964961 m!3763851))

(declare-fun m!3764225 () Bool)

(assert (=> d!964961 m!3764225))

(assert (=> bm!245752 m!3763851))

(declare-fun m!3764227 () Bool)

(assert (=> b!3394472 m!3764227))

(assert (=> b!3394472 m!3764227))

(declare-fun m!3764229 () Bool)

(assert (=> b!3394472 m!3764229))

(assert (=> b!3394465 m!3763875))

(assert (=> b!3394465 m!3763875))

(declare-fun m!3764231 () Bool)

(assert (=> b!3394465 m!3764231))

(assert (=> b!3394465 m!3764227))

(assert (=> b!3394465 m!3764231))

(assert (=> b!3394465 m!3764227))

(declare-fun m!3764233 () Bool)

(assert (=> b!3394465 m!3764233))

(assert (=> b!3394471 m!3763875))

(assert (=> b!3394461 m!3764227))

(assert (=> b!3394461 m!3764227))

(assert (=> b!3394461 m!3764229))

(assert (=> b!3394122 d!964961))

(declare-fun d!964963 () Bool)

(assert (=> d!964963 (= (get!11794 lt!1153545) (v!36562 lt!1153545))))

(assert (=> b!3394122 d!964963))

(declare-fun d!964965 () Bool)

(declare-fun res!1373244 () Bool)

(declare-fun e!2106910 () Bool)

(assert (=> d!964965 (=> res!1373244 e!2106910)))

(assert (=> d!964965 (= res!1373244 (not ((_ is Cons!36912) rules!2135)))))

(assert (=> d!964965 (= (sepAndNonSepRulesDisjointChars!1578 rules!2135 rules!2135) e!2106910)))

(declare-fun b!3394478 () Bool)

(declare-fun e!2106911 () Bool)

(assert (=> b!3394478 (= e!2106910 e!2106911)))

(declare-fun res!1373245 () Bool)

(assert (=> b!3394478 (=> (not res!1373245) (not e!2106911))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!685 (Rule!10568 List!37036) Bool)

(assert (=> b!3394478 (= res!1373245 (ruleDisjointCharsFromAllFromOtherType!685 (h!42332 rules!2135) rules!2135))))

(declare-fun b!3394479 () Bool)

(assert (=> b!3394479 (= e!2106911 (sepAndNonSepRulesDisjointChars!1578 rules!2135 (t!265067 rules!2135)))))

(assert (= (and d!964965 (not res!1373244)) b!3394478))

(assert (= (and b!3394478 res!1373245) b!3394479))

(declare-fun m!3764235 () Bool)

(assert (=> b!3394478 m!3764235))

(declare-fun m!3764237 () Bool)

(assert (=> b!3394479 m!3764237))

(assert (=> b!3394141 d!964965))

(declare-fun d!964967 () Bool)

(declare-fun res!1373250 () Bool)

(declare-fun e!2106914 () Bool)

(assert (=> d!964967 (=> (not res!1373250) (not e!2106914))))

(assert (=> d!964967 (= res!1373250 (not (isEmpty!21170 (originalCharacters!6098 (h!42333 tokens!494)))))))

(assert (=> d!964967 (= (inv!50004 (h!42333 tokens!494)) e!2106914)))

(declare-fun b!3394484 () Bool)

(declare-fun res!1373251 () Bool)

(assert (=> b!3394484 (=> (not res!1373251) (not e!2106914))))

(declare-fun dynLambda!15387 (Int TokenValue!5614) BalanceConc!21900)

(assert (=> b!3394484 (= res!1373251 (= (originalCharacters!6098 (h!42333 tokens!494)) (list!13367 (dynLambda!15387 (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494)))) (value!173904 (h!42333 tokens!494))))))))

(declare-fun b!3394485 () Bool)

(assert (=> b!3394485 (= e!2106914 (= (size!27944 (h!42333 tokens!494)) (size!27945 (originalCharacters!6098 (h!42333 tokens!494)))))))

(assert (= (and d!964967 res!1373250) b!3394484))

(assert (= (and b!3394484 res!1373251) b!3394485))

(declare-fun b_lambda!96601 () Bool)

(assert (=> (not b_lambda!96601) (not b!3394484)))

(declare-fun t!265090 () Bool)

(declare-fun tb!181717 () Bool)

(assert (=> (and b!3394142 (= (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241))) (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494))))) t!265090) tb!181717))

(declare-fun b!3394490 () Bool)

(declare-fun e!2106917 () Bool)

(declare-fun tp!1059537 () Bool)

(declare-fun inv!50008 (Conc!11143) Bool)

(assert (=> b!3394490 (= e!2106917 (and (inv!50008 (c!578610 (dynLambda!15387 (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494)))) (value!173904 (h!42333 tokens!494))))) tp!1059537))))

(declare-fun result!225258 () Bool)

(declare-fun inv!50009 (BalanceConc!21900) Bool)

(assert (=> tb!181717 (= result!225258 (and (inv!50009 (dynLambda!15387 (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494)))) (value!173904 (h!42333 tokens!494)))) e!2106917))))

(assert (= tb!181717 b!3394490))

(declare-fun m!3764239 () Bool)

(assert (=> b!3394490 m!3764239))

(declare-fun m!3764241 () Bool)

(assert (=> tb!181717 m!3764241))

(assert (=> b!3394484 t!265090))

(declare-fun b_and!236527 () Bool)

(assert (= b_and!236493 (and (=> t!265090 result!225258) b_and!236527)))

(declare-fun tb!181719 () Bool)

(declare-fun t!265092 () Bool)

(assert (=> (and b!3394127 (= (toChars!7439 (transformation!5384 (h!42332 rules!2135))) (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494))))) t!265092) tb!181719))

(declare-fun result!225262 () Bool)

(assert (= result!225262 result!225258))

(assert (=> b!3394484 t!265092))

(declare-fun b_and!236529 () Bool)

(assert (= b_and!236497 (and (=> t!265092 result!225262) b_and!236529)))

(declare-fun t!265094 () Bool)

(declare-fun tb!181721 () Bool)

(assert (=> (and b!3394135 (= (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494)))) (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494))))) t!265094) tb!181721))

(declare-fun result!225264 () Bool)

(assert (= result!225264 result!225258))

(assert (=> b!3394484 t!265094))

(declare-fun b_and!236531 () Bool)

(assert (= b_and!236501 (and (=> t!265094 result!225264) b_and!236531)))

(declare-fun m!3764243 () Bool)

(assert (=> d!964967 m!3764243))

(declare-fun m!3764245 () Bool)

(assert (=> b!3394484 m!3764245))

(assert (=> b!3394484 m!3764245))

(declare-fun m!3764247 () Bool)

(assert (=> b!3394484 m!3764247))

(declare-fun m!3764249 () Bool)

(assert (=> b!3394485 m!3764249))

(assert (=> b!3394120 d!964967))

(declare-fun d!964969 () Bool)

(assert (=> d!964969 (= (isEmpty!21170 (getSuffix!1478 lt!1153537 lt!1153537)) ((_ is Nil!36911) (getSuffix!1478 lt!1153537 lt!1153537)))))

(assert (=> b!3394133 d!964969))

(declare-fun d!964971 () Bool)

(declare-fun lt!1153653 () List!37035)

(assert (=> d!964971 (= (++!9037 lt!1153537 lt!1153653) lt!1153537)))

(declare-fun e!2106926 () List!37035)

(assert (=> d!964971 (= lt!1153653 e!2106926)))

(declare-fun c!578674 () Bool)

(assert (=> d!964971 (= c!578674 ((_ is Cons!36911) lt!1153537))))

(assert (=> d!964971 (>= (size!27945 lt!1153537) (size!27945 lt!1153537))))

(assert (=> d!964971 (= (getSuffix!1478 lt!1153537 lt!1153537) lt!1153653)))

(declare-fun b!3394504 () Bool)

(assert (=> b!3394504 (= e!2106926 (getSuffix!1478 (tail!5367 lt!1153537) (t!265066 lt!1153537)))))

(declare-fun b!3394505 () Bool)

(assert (=> b!3394505 (= e!2106926 lt!1153537)))

(assert (= (and d!964971 c!578674) b!3394504))

(assert (= (and d!964971 (not c!578674)) b!3394505))

(declare-fun m!3764251 () Bool)

(assert (=> d!964971 m!3764251))

(assert (=> d!964971 m!3763895))

(assert (=> d!964971 m!3763895))

(declare-fun m!3764253 () Bool)

(assert (=> b!3394504 m!3764253))

(assert (=> b!3394504 m!3764253))

(declare-fun m!3764255 () Bool)

(assert (=> b!3394504 m!3764255))

(assert (=> b!3394133 d!964971))

(declare-fun d!964973 () Bool)

(declare-fun e!2106946 () Bool)

(assert (=> d!964973 e!2106946))

(declare-fun res!1373272 () Bool)

(assert (=> d!964973 (=> (not res!1373272) (not e!2106946))))

(assert (=> d!964973 (= res!1373272 (isDefined!5734 (getRuleFromTag!1039 thiss!18206 rules!2135 (tag!5966 (rule!7942 (h!42333 tokens!494))))))))

(declare-fun lt!1153658 () Unit!52082)

(declare-fun choose!19679 (LexerInterface!4973 List!37036 List!37035 Token!10134) Unit!52082)

(assert (=> d!964973 (= lt!1153658 (choose!19679 thiss!18206 rules!2135 lt!1153537 (h!42333 tokens!494)))))

(assert (=> d!964973 (rulesInvariant!4370 thiss!18206 rules!2135)))

(assert (=> d!964973 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1039 thiss!18206 rules!2135 lt!1153537 (h!42333 tokens!494)) lt!1153658)))

(declare-fun b!3394537 () Bool)

(declare-fun res!1373273 () Bool)

(assert (=> b!3394537 (=> (not res!1373273) (not e!2106946))))

(assert (=> b!3394537 (= res!1373273 (matchR!4735 (regex!5384 (get!11794 (getRuleFromTag!1039 thiss!18206 rules!2135 (tag!5966 (rule!7942 (h!42333 tokens!494)))))) (list!13367 (charsOf!3398 (h!42333 tokens!494)))))))

(declare-fun b!3394538 () Bool)

(assert (=> b!3394538 (= e!2106946 (= (rule!7942 (h!42333 tokens!494)) (get!11794 (getRuleFromTag!1039 thiss!18206 rules!2135 (tag!5966 (rule!7942 (h!42333 tokens!494)))))))))

(assert (= (and d!964973 res!1373272) b!3394537))

(assert (= (and b!3394537 res!1373273) b!3394538))

(assert (=> d!964973 m!3763893))

(assert (=> d!964973 m!3763893))

(declare-fun m!3764295 () Bool)

(assert (=> d!964973 m!3764295))

(declare-fun m!3764297 () Bool)

(assert (=> d!964973 m!3764297))

(assert (=> d!964973 m!3763917))

(assert (=> b!3394537 m!3763893))

(declare-fun m!3764299 () Bool)

(assert (=> b!3394537 m!3764299))

(assert (=> b!3394537 m!3763847))

(assert (=> b!3394537 m!3763849))

(assert (=> b!3394537 m!3763849))

(declare-fun m!3764301 () Bool)

(assert (=> b!3394537 m!3764301))

(assert (=> b!3394537 m!3763847))

(assert (=> b!3394537 m!3763893))

(assert (=> b!3394538 m!3763893))

(assert (=> b!3394538 m!3763893))

(assert (=> b!3394538 m!3764299))

(assert (=> b!3394133 d!964973))

(declare-fun d!964985 () Bool)

(assert (=> d!964985 (= (maxPrefixOneRule!1696 thiss!18206 (rule!7942 (h!42333 tokens!494)) lt!1153537) (Some!7421 (tuple2!36529 (Token!10135 (apply!8603 (transformation!5384 (rule!7942 (h!42333 tokens!494))) (seqFromList!3821 lt!1153537)) (rule!7942 (h!42333 tokens!494)) (size!27945 lt!1153537) lt!1153537) Nil!36911)))))

(declare-fun lt!1153664 () Unit!52082)

(declare-fun choose!19680 (LexerInterface!4973 List!37036 List!37035 List!37035 List!37035 Rule!10568) Unit!52082)

(assert (=> d!964985 (= lt!1153664 (choose!19680 thiss!18206 rules!2135 lt!1153537 lt!1153537 Nil!36911 (rule!7942 (h!42333 tokens!494))))))

(assert (=> d!964985 (not (isEmpty!21171 rules!2135))))

(assert (=> d!964985 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!795 thiss!18206 rules!2135 lt!1153537 lt!1153537 Nil!36911 (rule!7942 (h!42333 tokens!494))) lt!1153664)))

(declare-fun bs!555771 () Bool)

(assert (= bs!555771 d!964985))

(assert (=> bs!555771 m!3763885))

(assert (=> bs!555771 m!3763911))

(assert (=> bs!555771 m!3763911))

(declare-fun m!3764309 () Bool)

(assert (=> bs!555771 m!3764309))

(assert (=> bs!555771 m!3763895))

(declare-fun m!3764311 () Bool)

(assert (=> bs!555771 m!3764311))

(assert (=> bs!555771 m!3763925))

(assert (=> b!3394133 d!964985))

(declare-fun d!964991 () Bool)

(assert (=> d!964991 (= (head!7241 lt!1153525) (h!42331 lt!1153525))))

(assert (=> b!3394133 d!964991))

(declare-fun d!964993 () Bool)

(declare-fun lt!1153667 () Int)

(assert (=> d!964993 (>= lt!1153667 0)))

(declare-fun e!2106952 () Int)

(assert (=> d!964993 (= lt!1153667 e!2106952)))

(declare-fun c!578688 () Bool)

(assert (=> d!964993 (= c!578688 ((_ is Nil!36911) lt!1153537))))

(assert (=> d!964993 (= (size!27945 lt!1153537) lt!1153667)))

(declare-fun b!3394546 () Bool)

(assert (=> b!3394546 (= e!2106952 0)))

(declare-fun b!3394547 () Bool)

(assert (=> b!3394547 (= e!2106952 (+ 1 (size!27945 (t!265066 lt!1153537))))))

(assert (= (and d!964993 c!578688) b!3394546))

(assert (= (and d!964993 (not c!578688)) b!3394547))

(declare-fun m!3764313 () Bool)

(assert (=> b!3394547 m!3764313))

(assert (=> b!3394133 d!964993))

(declare-fun b!3394566 () Bool)

(declare-fun res!1373294 () Bool)

(declare-fun e!2106963 () Bool)

(assert (=> b!3394566 (=> (not res!1373294) (not e!2106963))))

(declare-fun lt!1153678 () Option!7422)

(assert (=> b!3394566 (= res!1373294 (= (value!173904 (_1!21398 (get!11795 lt!1153678))) (apply!8603 (transformation!5384 (rule!7942 (_1!21398 (get!11795 lt!1153678)))) (seqFromList!3821 (originalCharacters!6098 (_1!21398 (get!11795 lt!1153678)))))))))

(declare-fun b!3394567 () Bool)

(assert (=> b!3394567 (= e!2106963 (= (size!27944 (_1!21398 (get!11795 lt!1153678))) (size!27945 (originalCharacters!6098 (_1!21398 (get!11795 lt!1153678))))))))

(declare-fun d!964995 () Bool)

(declare-fun e!2106961 () Bool)

(assert (=> d!964995 e!2106961))

(declare-fun res!1373291 () Bool)

(assert (=> d!964995 (=> res!1373291 e!2106961)))

(assert (=> d!964995 (= res!1373291 (isEmpty!21176 lt!1153678))))

(declare-fun e!2106962 () Option!7422)

(assert (=> d!964995 (= lt!1153678 e!2106962)))

(declare-fun c!578691 () Bool)

(declare-datatypes ((tuple2!36536 0))(
  ( (tuple2!36537 (_1!21402 List!37035) (_2!21402 List!37035)) )
))
(declare-fun lt!1153682 () tuple2!36536)

(assert (=> d!964995 (= c!578691 (isEmpty!21170 (_1!21402 lt!1153682)))))

(declare-fun findLongestMatch!800 (Regex!10143 List!37035) tuple2!36536)

(assert (=> d!964995 (= lt!1153682 (findLongestMatch!800 (regex!5384 (rule!7942 (h!42333 tokens!494))) lt!1153537))))

(assert (=> d!964995 (ruleValid!1712 thiss!18206 (rule!7942 (h!42333 tokens!494)))))

(assert (=> d!964995 (= (maxPrefixOneRule!1696 thiss!18206 (rule!7942 (h!42333 tokens!494)) lt!1153537) lt!1153678)))

(declare-fun b!3394568 () Bool)

(assert (=> b!3394568 (= e!2106962 None!7421)))

(declare-fun b!3394569 () Bool)

(assert (=> b!3394569 (= e!2106962 (Some!7421 (tuple2!36529 (Token!10135 (apply!8603 (transformation!5384 (rule!7942 (h!42333 tokens!494))) (seqFromList!3821 (_1!21402 lt!1153682))) (rule!7942 (h!42333 tokens!494)) (size!27947 (seqFromList!3821 (_1!21402 lt!1153682))) (_1!21402 lt!1153682)) (_2!21402 lt!1153682))))))

(declare-fun lt!1153680 () Unit!52082)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!858 (Regex!10143 List!37035) Unit!52082)

(assert (=> b!3394569 (= lt!1153680 (longestMatchIsAcceptedByMatchOrIsEmpty!858 (regex!5384 (rule!7942 (h!42333 tokens!494))) lt!1153537))))

(declare-fun res!1373292 () Bool)

(declare-fun findLongestMatchInner!885 (Regex!10143 List!37035 Int List!37035 List!37035 Int) tuple2!36536)

(assert (=> b!3394569 (= res!1373292 (isEmpty!21170 (_1!21402 (findLongestMatchInner!885 (regex!5384 (rule!7942 (h!42333 tokens!494))) Nil!36911 (size!27945 Nil!36911) lt!1153537 lt!1153537 (size!27945 lt!1153537)))))))

(declare-fun e!2106964 () Bool)

(assert (=> b!3394569 (=> res!1373292 e!2106964)))

(assert (=> b!3394569 e!2106964))

(declare-fun lt!1153679 () Unit!52082)

(assert (=> b!3394569 (= lt!1153679 lt!1153680)))

(declare-fun lt!1153681 () Unit!52082)

(declare-fun lemmaSemiInverse!1233 (TokenValueInjection!10656 BalanceConc!21900) Unit!52082)

(assert (=> b!3394569 (= lt!1153681 (lemmaSemiInverse!1233 (transformation!5384 (rule!7942 (h!42333 tokens!494))) (seqFromList!3821 (_1!21402 lt!1153682))))))

(declare-fun b!3394570 () Bool)

(assert (=> b!3394570 (= e!2106961 e!2106963)))

(declare-fun res!1373296 () Bool)

(assert (=> b!3394570 (=> (not res!1373296) (not e!2106963))))

(assert (=> b!3394570 (= res!1373296 (matchR!4735 (regex!5384 (rule!7942 (h!42333 tokens!494))) (list!13367 (charsOf!3398 (_1!21398 (get!11795 lt!1153678))))))))

(declare-fun b!3394571 () Bool)

(declare-fun res!1373297 () Bool)

(assert (=> b!3394571 (=> (not res!1373297) (not e!2106963))))

(assert (=> b!3394571 (= res!1373297 (= (++!9037 (list!13367 (charsOf!3398 (_1!21398 (get!11795 lt!1153678)))) (_2!21398 (get!11795 lt!1153678))) lt!1153537))))

(declare-fun b!3394572 () Bool)

(declare-fun res!1373295 () Bool)

(assert (=> b!3394572 (=> (not res!1373295) (not e!2106963))))

(assert (=> b!3394572 (= res!1373295 (< (size!27945 (_2!21398 (get!11795 lt!1153678))) (size!27945 lt!1153537)))))

(declare-fun b!3394573 () Bool)

(declare-fun res!1373293 () Bool)

(assert (=> b!3394573 (=> (not res!1373293) (not e!2106963))))

(assert (=> b!3394573 (= res!1373293 (= (rule!7942 (_1!21398 (get!11795 lt!1153678))) (rule!7942 (h!42333 tokens!494))))))

(declare-fun b!3394574 () Bool)

(assert (=> b!3394574 (= e!2106964 (matchR!4735 (regex!5384 (rule!7942 (h!42333 tokens!494))) (_1!21402 (findLongestMatchInner!885 (regex!5384 (rule!7942 (h!42333 tokens!494))) Nil!36911 (size!27945 Nil!36911) lt!1153537 lt!1153537 (size!27945 lt!1153537)))))))

(assert (= (and d!964995 c!578691) b!3394568))

(assert (= (and d!964995 (not c!578691)) b!3394569))

(assert (= (and b!3394569 (not res!1373292)) b!3394574))

(assert (= (and d!964995 (not res!1373291)) b!3394570))

(assert (= (and b!3394570 res!1373296) b!3394571))

(assert (= (and b!3394571 res!1373297) b!3394572))

(assert (= (and b!3394572 res!1373295) b!3394573))

(assert (= (and b!3394573 res!1373293) b!3394566))

(assert (= (and b!3394566 res!1373294) b!3394567))

(declare-fun m!3764315 () Bool)

(assert (=> b!3394574 m!3764315))

(assert (=> b!3394574 m!3763895))

(assert (=> b!3394574 m!3764315))

(assert (=> b!3394574 m!3763895))

(declare-fun m!3764317 () Bool)

(assert (=> b!3394574 m!3764317))

(declare-fun m!3764319 () Bool)

(assert (=> b!3394574 m!3764319))

(declare-fun m!3764321 () Bool)

(assert (=> b!3394571 m!3764321))

(declare-fun m!3764323 () Bool)

(assert (=> b!3394571 m!3764323))

(assert (=> b!3394571 m!3764323))

(declare-fun m!3764325 () Bool)

(assert (=> b!3394571 m!3764325))

(assert (=> b!3394571 m!3764325))

(declare-fun m!3764327 () Bool)

(assert (=> b!3394571 m!3764327))

(assert (=> b!3394566 m!3764321))

(declare-fun m!3764329 () Bool)

(assert (=> b!3394566 m!3764329))

(assert (=> b!3394566 m!3764329))

(declare-fun m!3764331 () Bool)

(assert (=> b!3394566 m!3764331))

(assert (=> b!3394572 m!3764321))

(declare-fun m!3764333 () Bool)

(assert (=> b!3394572 m!3764333))

(assert (=> b!3394572 m!3763895))

(declare-fun m!3764335 () Bool)

(assert (=> b!3394569 m!3764335))

(declare-fun m!3764337 () Bool)

(assert (=> b!3394569 m!3764337))

(assert (=> b!3394569 m!3763895))

(declare-fun m!3764339 () Bool)

(assert (=> b!3394569 m!3764339))

(assert (=> b!3394569 m!3764335))

(declare-fun m!3764341 () Bool)

(assert (=> b!3394569 m!3764341))

(assert (=> b!3394569 m!3764315))

(assert (=> b!3394569 m!3764335))

(declare-fun m!3764343 () Bool)

(assert (=> b!3394569 m!3764343))

(assert (=> b!3394569 m!3764315))

(assert (=> b!3394569 m!3763895))

(assert (=> b!3394569 m!3764317))

(declare-fun m!3764345 () Bool)

(assert (=> b!3394569 m!3764345))

(assert (=> b!3394569 m!3764335))

(assert (=> b!3394573 m!3764321))

(declare-fun m!3764347 () Bool)

(assert (=> d!964995 m!3764347))

(declare-fun m!3764349 () Bool)

(assert (=> d!964995 m!3764349))

(declare-fun m!3764351 () Bool)

(assert (=> d!964995 m!3764351))

(assert (=> d!964995 m!3763921))

(assert (=> b!3394567 m!3764321))

(declare-fun m!3764353 () Bool)

(assert (=> b!3394567 m!3764353))

(assert (=> b!3394570 m!3764321))

(assert (=> b!3394570 m!3764323))

(assert (=> b!3394570 m!3764323))

(assert (=> b!3394570 m!3764325))

(assert (=> b!3394570 m!3764325))

(declare-fun m!3764355 () Bool)

(assert (=> b!3394570 m!3764355))

(assert (=> b!3394133 d!964995))

(declare-fun d!964997 () Bool)

(declare-fun lt!1153685 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5100 (List!37035) (InoxSet C!20472))

(assert (=> d!964997 (= lt!1153685 (select (content!5100 (usedCharacters!640 (regex!5384 (rule!7942 separatorToken!241)))) lt!1153543))))

(declare-fun e!2106970 () Bool)

(assert (=> d!964997 (= lt!1153685 e!2106970)))

(declare-fun res!1373303 () Bool)

(assert (=> d!964997 (=> (not res!1373303) (not e!2106970))))

(assert (=> d!964997 (= res!1373303 ((_ is Cons!36911) (usedCharacters!640 (regex!5384 (rule!7942 separatorToken!241)))))))

(assert (=> d!964997 (= (contains!6775 (usedCharacters!640 (regex!5384 (rule!7942 separatorToken!241))) lt!1153543) lt!1153685)))

(declare-fun b!3394579 () Bool)

(declare-fun e!2106969 () Bool)

(assert (=> b!3394579 (= e!2106970 e!2106969)))

(declare-fun res!1373302 () Bool)

(assert (=> b!3394579 (=> res!1373302 e!2106969)))

(assert (=> b!3394579 (= res!1373302 (= (h!42331 (usedCharacters!640 (regex!5384 (rule!7942 separatorToken!241)))) lt!1153543))))

(declare-fun b!3394580 () Bool)

(assert (=> b!3394580 (= e!2106969 (contains!6775 (t!265066 (usedCharacters!640 (regex!5384 (rule!7942 separatorToken!241)))) lt!1153543))))

(assert (= (and d!964997 res!1373303) b!3394579))

(assert (= (and b!3394579 (not res!1373302)) b!3394580))

(assert (=> d!964997 m!3763871))

(declare-fun m!3764357 () Bool)

(assert (=> d!964997 m!3764357))

(declare-fun m!3764359 () Bool)

(assert (=> d!964997 m!3764359))

(declare-fun m!3764361 () Bool)

(assert (=> b!3394580 m!3764361))

(assert (=> b!3394133 d!964997))

(declare-fun d!964999 () Bool)

(assert (=> d!964999 (isEmpty!21170 (getSuffix!1478 lt!1153537 lt!1153537))))

(declare-fun lt!1153688 () Unit!52082)

(declare-fun choose!19682 (List!37035) Unit!52082)

(assert (=> d!964999 (= lt!1153688 (choose!19682 lt!1153537))))

(assert (=> d!964999 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!136 lt!1153537) lt!1153688)))

(declare-fun bs!555772 () Bool)

(assert (= bs!555772 d!964999))

(assert (=> bs!555772 m!3763877))

(assert (=> bs!555772 m!3763877))

(assert (=> bs!555772 m!3763891))

(declare-fun m!3764363 () Bool)

(assert (=> bs!555772 m!3764363))

(assert (=> b!3394133 d!964999))

(declare-fun b!3394597 () Bool)

(declare-fun e!2106979 () List!37035)

(declare-fun call!245770 () List!37035)

(assert (=> b!3394597 (= e!2106979 call!245770)))

(declare-fun b!3394598 () Bool)

(declare-fun e!2106981 () List!37035)

(assert (=> b!3394598 (= e!2106981 e!2106979)))

(declare-fun c!578700 () Bool)

(assert (=> b!3394598 (= c!578700 ((_ is Union!10143) (regex!5384 (rule!7942 separatorToken!241))))))

(declare-fun bm!245765 () Bool)

(declare-fun call!245773 () List!37035)

(assert (=> bm!245765 (= call!245773 (usedCharacters!640 (ite c!578700 (regTwo!20799 (regex!5384 (rule!7942 separatorToken!241))) (regOne!20798 (regex!5384 (rule!7942 separatorToken!241))))))))

(declare-fun b!3394599 () Bool)

(declare-fun e!2106980 () List!37035)

(assert (=> b!3394599 (= e!2106980 (Cons!36911 (c!578611 (regex!5384 (rule!7942 separatorToken!241))) Nil!36911))))

(declare-fun d!965001 () Bool)

(declare-fun c!578702 () Bool)

(assert (=> d!965001 (= c!578702 (or ((_ is EmptyExpr!10143) (regex!5384 (rule!7942 separatorToken!241))) ((_ is EmptyLang!10143) (regex!5384 (rule!7942 separatorToken!241)))))))

(declare-fun e!2106982 () List!37035)

(assert (=> d!965001 (= (usedCharacters!640 (regex!5384 (rule!7942 separatorToken!241))) e!2106982)))

(declare-fun b!3394600 () Bool)

(declare-fun call!245772 () List!37035)

(assert (=> b!3394600 (= e!2106981 call!245772)))

(declare-fun b!3394601 () Bool)

(assert (=> b!3394601 (= e!2106982 e!2106980)))

(declare-fun c!578703 () Bool)

(assert (=> b!3394601 (= c!578703 ((_ is ElementMatch!10143) (regex!5384 (rule!7942 separatorToken!241))))))

(declare-fun bm!245766 () Bool)

(declare-fun call!245771 () List!37035)

(assert (=> bm!245766 (= call!245771 call!245772)))

(declare-fun b!3394602 () Bool)

(assert (=> b!3394602 (= e!2106982 Nil!36911)))

(declare-fun b!3394603 () Bool)

(assert (=> b!3394603 (= e!2106979 call!245770)))

(declare-fun bm!245767 () Bool)

(declare-fun c!578701 () Bool)

(assert (=> bm!245767 (= call!245772 (usedCharacters!640 (ite c!578701 (reg!10472 (regex!5384 (rule!7942 separatorToken!241))) (ite c!578700 (regOne!20799 (regex!5384 (rule!7942 separatorToken!241))) (regTwo!20798 (regex!5384 (rule!7942 separatorToken!241)))))))))

(declare-fun bm!245768 () Bool)

(assert (=> bm!245768 (= call!245770 (++!9037 (ite c!578700 call!245771 call!245773) (ite c!578700 call!245773 call!245771)))))

(declare-fun b!3394604 () Bool)

(assert (=> b!3394604 (= c!578701 ((_ is Star!10143) (regex!5384 (rule!7942 separatorToken!241))))))

(assert (=> b!3394604 (= e!2106980 e!2106981)))

(assert (= (and d!965001 c!578702) b!3394602))

(assert (= (and d!965001 (not c!578702)) b!3394601))

(assert (= (and b!3394601 c!578703) b!3394599))

(assert (= (and b!3394601 (not c!578703)) b!3394604))

(assert (= (and b!3394604 c!578701) b!3394600))

(assert (= (and b!3394604 (not c!578701)) b!3394598))

(assert (= (and b!3394598 c!578700) b!3394597))

(assert (= (and b!3394598 (not c!578700)) b!3394603))

(assert (= (or b!3394597 b!3394603) bm!245765))

(assert (= (or b!3394597 b!3394603) bm!245766))

(assert (= (or b!3394597 b!3394603) bm!245768))

(assert (= (or b!3394600 bm!245766) bm!245767))

(declare-fun m!3764365 () Bool)

(assert (=> bm!245765 m!3764365))

(declare-fun m!3764367 () Bool)

(assert (=> bm!245767 m!3764367))

(declare-fun m!3764369 () Bool)

(assert (=> bm!245768 m!3764369))

(assert (=> b!3394133 d!965001))

(declare-fun d!965003 () Bool)

(declare-fun e!2106983 () Bool)

(assert (=> d!965003 e!2106983))

(declare-fun res!1373304 () Bool)

(assert (=> d!965003 (=> (not res!1373304) (not e!2106983))))

(assert (=> d!965003 (= res!1373304 (isDefined!5734 (getRuleFromTag!1039 thiss!18206 rules!2135 (tag!5966 (rule!7942 separatorToken!241)))))))

(declare-fun lt!1153691 () Unit!52082)

(assert (=> d!965003 (= lt!1153691 (choose!19679 thiss!18206 rules!2135 lt!1153525 separatorToken!241))))

(assert (=> d!965003 (rulesInvariant!4370 thiss!18206 rules!2135)))

(assert (=> d!965003 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1039 thiss!18206 rules!2135 lt!1153525 separatorToken!241) lt!1153691)))

(declare-fun b!3394605 () Bool)

(declare-fun res!1373305 () Bool)

(assert (=> b!3394605 (=> (not res!1373305) (not e!2106983))))

(assert (=> b!3394605 (= res!1373305 (matchR!4735 (regex!5384 (get!11794 (getRuleFromTag!1039 thiss!18206 rules!2135 (tag!5966 (rule!7942 separatorToken!241))))) (list!13367 (charsOf!3398 separatorToken!241))))))

(declare-fun b!3394606 () Bool)

(assert (=> b!3394606 (= e!2106983 (= (rule!7942 separatorToken!241) (get!11794 (getRuleFromTag!1039 thiss!18206 rules!2135 (tag!5966 (rule!7942 separatorToken!241))))))))

(assert (= (and d!965003 res!1373304) b!3394605))

(assert (= (and b!3394605 res!1373305) b!3394606))

(assert (=> d!965003 m!3763903))

(assert (=> d!965003 m!3763903))

(declare-fun m!3764371 () Bool)

(assert (=> d!965003 m!3764371))

(declare-fun m!3764373 () Bool)

(assert (=> d!965003 m!3764373))

(assert (=> d!965003 m!3763917))

(assert (=> b!3394605 m!3763903))

(declare-fun m!3764375 () Bool)

(assert (=> b!3394605 m!3764375))

(assert (=> b!3394605 m!3763805))

(assert (=> b!3394605 m!3763809))

(assert (=> b!3394605 m!3763809))

(declare-fun m!3764377 () Bool)

(assert (=> b!3394605 m!3764377))

(assert (=> b!3394605 m!3763805))

(assert (=> b!3394605 m!3763903))

(assert (=> b!3394606 m!3763903))

(assert (=> b!3394606 m!3763903))

(assert (=> b!3394606 m!3764375))

(assert (=> b!3394133 d!965003))

(declare-fun d!965005 () Bool)

(assert (=> d!965005 (rulesProduceIndividualToken!2465 thiss!18206 rules!2135 (h!42333 tokens!494))))

(declare-fun lt!1153694 () Unit!52082)

(declare-fun choose!19684 (LexerInterface!4973 List!37036 List!37037 Token!10134) Unit!52082)

(assert (=> d!965005 (= lt!1153694 (choose!19684 thiss!18206 rules!2135 tokens!494 (h!42333 tokens!494)))))

(assert (=> d!965005 (not (isEmpty!21171 rules!2135))))

(assert (=> d!965005 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!968 thiss!18206 rules!2135 tokens!494 (h!42333 tokens!494)) lt!1153694)))

(declare-fun bs!555773 () Bool)

(assert (= bs!555773 d!965005))

(assert (=> bs!555773 m!3763823))

(declare-fun m!3764379 () Bool)

(assert (=> bs!555773 m!3764379))

(assert (=> bs!555773 m!3763925))

(assert (=> b!3394133 d!965005))

(declare-fun d!965007 () Bool)

(declare-fun isEmpty!21179 (Option!7421) Bool)

(assert (=> d!965007 (= (isDefined!5734 lt!1153542) (not (isEmpty!21179 lt!1153542)))))

(declare-fun bs!555774 () Bool)

(assert (= bs!555774 d!965007))

(declare-fun m!3764381 () Bool)

(assert (=> bs!555774 m!3764381))

(assert (=> b!3394133 d!965007))

(declare-fun b!3394619 () Bool)

(declare-fun e!2106994 () Bool)

(declare-fun e!2106993 () Bool)

(assert (=> b!3394619 (= e!2106994 e!2106993)))

(declare-fun res!1373310 () Bool)

(assert (=> b!3394619 (=> (not res!1373310) (not e!2106993))))

(declare-fun lt!1153702 () Option!7421)

(assert (=> b!3394619 (= res!1373310 (contains!6774 rules!2135 (get!11794 lt!1153702)))))

(declare-fun d!965009 () Bool)

(assert (=> d!965009 e!2106994))

(declare-fun res!1373311 () Bool)

(assert (=> d!965009 (=> res!1373311 e!2106994)))

(assert (=> d!965009 (= res!1373311 (isEmpty!21179 lt!1153702))))

(declare-fun e!2106992 () Option!7421)

(assert (=> d!965009 (= lt!1153702 e!2106992)))

(declare-fun c!578709 () Bool)

(assert (=> d!965009 (= c!578709 (and ((_ is Cons!36912) rules!2135) (= (tag!5966 (h!42332 rules!2135)) (tag!5966 (rule!7942 (h!42333 tokens!494))))))))

(assert (=> d!965009 (rulesInvariant!4370 thiss!18206 rules!2135)))

(assert (=> d!965009 (= (getRuleFromTag!1039 thiss!18206 rules!2135 (tag!5966 (rule!7942 (h!42333 tokens!494)))) lt!1153702)))

(declare-fun b!3394620 () Bool)

(declare-fun lt!1153701 () Unit!52082)

(declare-fun lt!1153703 () Unit!52082)

(assert (=> b!3394620 (= lt!1153701 lt!1153703)))

(assert (=> b!3394620 (rulesInvariant!4370 thiss!18206 (t!265067 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!406 (LexerInterface!4973 Rule!10568 List!37036) Unit!52082)

(assert (=> b!3394620 (= lt!1153703 (lemmaInvariantOnRulesThenOnTail!406 thiss!18206 (h!42332 rules!2135) (t!265067 rules!2135)))))

(declare-fun e!2106995 () Option!7421)

(assert (=> b!3394620 (= e!2106995 (getRuleFromTag!1039 thiss!18206 (t!265067 rules!2135) (tag!5966 (rule!7942 (h!42333 tokens!494)))))))

(declare-fun b!3394621 () Bool)

(assert (=> b!3394621 (= e!2106992 (Some!7420 (h!42332 rules!2135)))))

(declare-fun b!3394622 () Bool)

(assert (=> b!3394622 (= e!2106993 (= (tag!5966 (get!11794 lt!1153702)) (tag!5966 (rule!7942 (h!42333 tokens!494)))))))

(declare-fun b!3394623 () Bool)

(assert (=> b!3394623 (= e!2106992 e!2106995)))

(declare-fun c!578708 () Bool)

(assert (=> b!3394623 (= c!578708 (and ((_ is Cons!36912) rules!2135) (not (= (tag!5966 (h!42332 rules!2135)) (tag!5966 (rule!7942 (h!42333 tokens!494)))))))))

(declare-fun b!3394624 () Bool)

(assert (=> b!3394624 (= e!2106995 None!7420)))

(assert (= (and d!965009 c!578709) b!3394621))

(assert (= (and d!965009 (not c!578709)) b!3394623))

(assert (= (and b!3394623 c!578708) b!3394620))

(assert (= (and b!3394623 (not c!578708)) b!3394624))

(assert (= (and d!965009 (not res!1373311)) b!3394619))

(assert (= (and b!3394619 res!1373310) b!3394622))

(declare-fun m!3764383 () Bool)

(assert (=> b!3394619 m!3764383))

(assert (=> b!3394619 m!3764383))

(declare-fun m!3764385 () Bool)

(assert (=> b!3394619 m!3764385))

(declare-fun m!3764387 () Bool)

(assert (=> d!965009 m!3764387))

(assert (=> d!965009 m!3763917))

(declare-fun m!3764389 () Bool)

(assert (=> b!3394620 m!3764389))

(declare-fun m!3764391 () Bool)

(assert (=> b!3394620 m!3764391))

(declare-fun m!3764393 () Bool)

(assert (=> b!3394620 m!3764393))

(assert (=> b!3394622 m!3764383))

(assert (=> b!3394133 d!965009))

(declare-fun d!965011 () Bool)

(assert (=> d!965011 (= (isDefined!5734 lt!1153545) (not (isEmpty!21179 lt!1153545)))))

(declare-fun bs!555775 () Bool)

(assert (= bs!555775 d!965011))

(declare-fun m!3764395 () Bool)

(assert (=> bs!555775 m!3764395))

(assert (=> b!3394133 d!965011))

(declare-fun d!965013 () Bool)

(declare-fun dynLambda!15391 (Int BalanceConc!21900) TokenValue!5614)

(assert (=> d!965013 (= (apply!8603 (transformation!5384 (rule!7942 (h!42333 tokens!494))) lt!1153547) (dynLambda!15391 (toValue!7580 (transformation!5384 (rule!7942 (h!42333 tokens!494)))) lt!1153547))))

(declare-fun b_lambda!96603 () Bool)

(assert (=> (not b_lambda!96603) (not d!965013)))

(declare-fun t!265100 () Bool)

(declare-fun tb!181723 () Bool)

(assert (=> (and b!3394142 (= (toValue!7580 (transformation!5384 (rule!7942 separatorToken!241))) (toValue!7580 (transformation!5384 (rule!7942 (h!42333 tokens!494))))) t!265100) tb!181723))

(declare-fun result!225266 () Bool)

(assert (=> tb!181723 (= result!225266 (inv!21 (dynLambda!15391 (toValue!7580 (transformation!5384 (rule!7942 (h!42333 tokens!494)))) lt!1153547)))))

(declare-fun m!3764397 () Bool)

(assert (=> tb!181723 m!3764397))

(assert (=> d!965013 t!265100))

(declare-fun b_and!236533 () Bool)

(assert (= b_and!236491 (and (=> t!265100 result!225266) b_and!236533)))

(declare-fun tb!181725 () Bool)

(declare-fun t!265102 () Bool)

(assert (=> (and b!3394127 (= (toValue!7580 (transformation!5384 (h!42332 rules!2135))) (toValue!7580 (transformation!5384 (rule!7942 (h!42333 tokens!494))))) t!265102) tb!181725))

(declare-fun result!225270 () Bool)

(assert (= result!225270 result!225266))

(assert (=> d!965013 t!265102))

(declare-fun b_and!236535 () Bool)

(assert (= b_and!236495 (and (=> t!265102 result!225270) b_and!236535)))

(declare-fun t!265104 () Bool)

(declare-fun tb!181727 () Bool)

(assert (=> (and b!3394135 (= (toValue!7580 (transformation!5384 (rule!7942 (h!42333 tokens!494)))) (toValue!7580 (transformation!5384 (rule!7942 (h!42333 tokens!494))))) t!265104) tb!181727))

(declare-fun result!225272 () Bool)

(assert (= result!225272 result!225266))

(assert (=> d!965013 t!265104))

(declare-fun b_and!236537 () Bool)

(assert (= b_and!236499 (and (=> t!265104 result!225272) b_and!236537)))

(declare-fun m!3764399 () Bool)

(assert (=> d!965013 m!3764399))

(assert (=> b!3394133 d!965013))

(declare-fun b!3394627 () Bool)

(declare-fun e!2107001 () Bool)

(declare-fun e!2107000 () Bool)

(assert (=> b!3394627 (= e!2107001 e!2107000)))

(declare-fun res!1373312 () Bool)

(assert (=> b!3394627 (=> (not res!1373312) (not e!2107000))))

(declare-fun lt!1153705 () Option!7421)

(assert (=> b!3394627 (= res!1373312 (contains!6774 rules!2135 (get!11794 lt!1153705)))))

(declare-fun d!965015 () Bool)

(assert (=> d!965015 e!2107001))

(declare-fun res!1373313 () Bool)

(assert (=> d!965015 (=> res!1373313 e!2107001)))

(assert (=> d!965015 (= res!1373313 (isEmpty!21179 lt!1153705))))

(declare-fun e!2106999 () Option!7421)

(assert (=> d!965015 (= lt!1153705 e!2106999)))

(declare-fun c!578711 () Bool)

(assert (=> d!965015 (= c!578711 (and ((_ is Cons!36912) rules!2135) (= (tag!5966 (h!42332 rules!2135)) (tag!5966 (rule!7942 separatorToken!241)))))))

(assert (=> d!965015 (rulesInvariant!4370 thiss!18206 rules!2135)))

(assert (=> d!965015 (= (getRuleFromTag!1039 thiss!18206 rules!2135 (tag!5966 (rule!7942 separatorToken!241))) lt!1153705)))

(declare-fun b!3394628 () Bool)

(declare-fun lt!1153704 () Unit!52082)

(declare-fun lt!1153706 () Unit!52082)

(assert (=> b!3394628 (= lt!1153704 lt!1153706)))

(assert (=> b!3394628 (rulesInvariant!4370 thiss!18206 (t!265067 rules!2135))))

(assert (=> b!3394628 (= lt!1153706 (lemmaInvariantOnRulesThenOnTail!406 thiss!18206 (h!42332 rules!2135) (t!265067 rules!2135)))))

(declare-fun e!2107002 () Option!7421)

(assert (=> b!3394628 (= e!2107002 (getRuleFromTag!1039 thiss!18206 (t!265067 rules!2135) (tag!5966 (rule!7942 separatorToken!241))))))

(declare-fun b!3394629 () Bool)

(assert (=> b!3394629 (= e!2106999 (Some!7420 (h!42332 rules!2135)))))

(declare-fun b!3394630 () Bool)

(assert (=> b!3394630 (= e!2107000 (= (tag!5966 (get!11794 lt!1153705)) (tag!5966 (rule!7942 separatorToken!241))))))

(declare-fun b!3394631 () Bool)

(assert (=> b!3394631 (= e!2106999 e!2107002)))

(declare-fun c!578710 () Bool)

(assert (=> b!3394631 (= c!578710 (and ((_ is Cons!36912) rules!2135) (not (= (tag!5966 (h!42332 rules!2135)) (tag!5966 (rule!7942 separatorToken!241))))))))

(declare-fun b!3394632 () Bool)

(assert (=> b!3394632 (= e!2107002 None!7420)))

(assert (= (and d!965015 c!578711) b!3394629))

(assert (= (and d!965015 (not c!578711)) b!3394631))

(assert (= (and b!3394631 c!578710) b!3394628))

(assert (= (and b!3394631 (not c!578710)) b!3394632))

(assert (= (and d!965015 (not res!1373313)) b!3394627))

(assert (= (and b!3394627 res!1373312) b!3394630))

(declare-fun m!3764401 () Bool)

(assert (=> b!3394627 m!3764401))

(assert (=> b!3394627 m!3764401))

(declare-fun m!3764403 () Bool)

(assert (=> b!3394627 m!3764403))

(declare-fun m!3764405 () Bool)

(assert (=> d!965015 m!3764405))

(assert (=> d!965015 m!3763917))

(assert (=> b!3394628 m!3764389))

(assert (=> b!3394628 m!3764391))

(declare-fun m!3764407 () Bool)

(assert (=> b!3394628 m!3764407))

(assert (=> b!3394630 m!3764401))

(assert (=> b!3394133 d!965015))

(declare-fun d!965017 () Bool)

(declare-fun list!13371 (Conc!11143) List!37035)

(assert (=> d!965017 (= (list!13367 (charsOf!3398 (h!42333 tokens!494))) (list!13371 (c!578610 (charsOf!3398 (h!42333 tokens!494)))))))

(declare-fun bs!555776 () Bool)

(assert (= bs!555776 d!965017))

(declare-fun m!3764409 () Bool)

(assert (=> bs!555776 m!3764409))

(assert (=> b!3394137 d!965017))

(declare-fun d!965019 () Bool)

(declare-fun lt!1153709 () BalanceConc!21900)

(assert (=> d!965019 (= (list!13367 lt!1153709) (originalCharacters!6098 (h!42333 tokens!494)))))

(assert (=> d!965019 (= lt!1153709 (dynLambda!15387 (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494)))) (value!173904 (h!42333 tokens!494))))))

(assert (=> d!965019 (= (charsOf!3398 (h!42333 tokens!494)) lt!1153709)))

(declare-fun b_lambda!96605 () Bool)

(assert (=> (not b_lambda!96605) (not d!965019)))

(assert (=> d!965019 t!265090))

(declare-fun b_and!236539 () Bool)

(assert (= b_and!236527 (and (=> t!265090 result!225258) b_and!236539)))

(assert (=> d!965019 t!265092))

(declare-fun b_and!236541 () Bool)

(assert (= b_and!236529 (and (=> t!265092 result!225262) b_and!236541)))

(assert (=> d!965019 t!265094))

(declare-fun b_and!236543 () Bool)

(assert (= b_and!236531 (and (=> t!265094 result!225264) b_and!236543)))

(declare-fun m!3764411 () Bool)

(assert (=> d!965019 m!3764411))

(assert (=> d!965019 m!3764245))

(assert (=> b!3394137 d!965019))

(declare-fun b!3394633 () Bool)

(declare-fun res!1373315 () Bool)

(declare-fun e!2107005 () Bool)

(assert (=> b!3394633 (=> (not res!1373315) (not e!2107005))))

(declare-fun call!245774 () Bool)

(assert (=> b!3394633 (= res!1373315 (not call!245774))))

(declare-fun b!3394634 () Bool)

(declare-fun res!1373314 () Bool)

(declare-fun e!2107007 () Bool)

(assert (=> b!3394634 (=> res!1373314 e!2107007)))

(assert (=> b!3394634 (= res!1373314 (not (isEmpty!21170 (tail!5367 lt!1153537))))))

(declare-fun b!3394635 () Bool)

(declare-fun res!1373320 () Bool)

(declare-fun e!2107009 () Bool)

(assert (=> b!3394635 (=> res!1373320 e!2107009)))

(assert (=> b!3394635 (= res!1373320 (not ((_ is ElementMatch!10143) (regex!5384 lt!1153526))))))

(declare-fun e!2107004 () Bool)

(assert (=> b!3394635 (= e!2107004 e!2107009)))

(declare-fun bm!245769 () Bool)

(assert (=> bm!245769 (= call!245774 (isEmpty!21170 lt!1153537))))

(declare-fun b!3394637 () Bool)

(declare-fun e!2107006 () Bool)

(assert (=> b!3394637 (= e!2107009 e!2107006)))

(declare-fun res!1373319 () Bool)

(assert (=> b!3394637 (=> (not res!1373319) (not e!2107006))))

(declare-fun lt!1153710 () Bool)

(assert (=> b!3394637 (= res!1373319 (not lt!1153710))))

(declare-fun b!3394638 () Bool)

(declare-fun e!2107003 () Bool)

(assert (=> b!3394638 (= e!2107003 (matchR!4735 (derivativeStep!3011 (regex!5384 lt!1153526) (head!7241 lt!1153537)) (tail!5367 lt!1153537)))))

(declare-fun b!3394639 () Bool)

(assert (=> b!3394639 (= e!2107006 e!2107007)))

(declare-fun res!1373316 () Bool)

(assert (=> b!3394639 (=> res!1373316 e!2107007)))

(assert (=> b!3394639 (= res!1373316 call!245774)))

(declare-fun b!3394640 () Bool)

(assert (=> b!3394640 (= e!2107004 (not lt!1153710))))

(declare-fun b!3394641 () Bool)

(declare-fun e!2107008 () Bool)

(assert (=> b!3394641 (= e!2107008 (= lt!1153710 call!245774))))

(declare-fun b!3394642 () Bool)

(assert (=> b!3394642 (= e!2107003 (nullable!3458 (regex!5384 lt!1153526)))))

(declare-fun b!3394643 () Bool)

(declare-fun res!1373318 () Bool)

(assert (=> b!3394643 (=> res!1373318 e!2107009)))

(assert (=> b!3394643 (= res!1373318 e!2107005)))

(declare-fun res!1373317 () Bool)

(assert (=> b!3394643 (=> (not res!1373317) (not e!2107005))))

(assert (=> b!3394643 (= res!1373317 lt!1153710)))

(declare-fun b!3394644 () Bool)

(assert (=> b!3394644 (= e!2107005 (= (head!7241 lt!1153537) (c!578611 (regex!5384 lt!1153526))))))

(declare-fun d!965021 () Bool)

(assert (=> d!965021 e!2107008))

(declare-fun c!578713 () Bool)

(assert (=> d!965021 (= c!578713 ((_ is EmptyExpr!10143) (regex!5384 lt!1153526)))))

(assert (=> d!965021 (= lt!1153710 e!2107003)))

(declare-fun c!578712 () Bool)

(assert (=> d!965021 (= c!578712 (isEmpty!21170 lt!1153537))))

(assert (=> d!965021 (validRegex!4614 (regex!5384 lt!1153526))))

(assert (=> d!965021 (= (matchR!4735 (regex!5384 lt!1153526) lt!1153537) lt!1153710)))

(declare-fun b!3394636 () Bool)

(assert (=> b!3394636 (= e!2107007 (not (= (head!7241 lt!1153537) (c!578611 (regex!5384 lt!1153526)))))))

(declare-fun b!3394645 () Bool)

(declare-fun res!1373321 () Bool)

(assert (=> b!3394645 (=> (not res!1373321) (not e!2107005))))

(assert (=> b!3394645 (= res!1373321 (isEmpty!21170 (tail!5367 lt!1153537)))))

(declare-fun b!3394646 () Bool)

(assert (=> b!3394646 (= e!2107008 e!2107004)))

(declare-fun c!578714 () Bool)

(assert (=> b!3394646 (= c!578714 ((_ is EmptyLang!10143) (regex!5384 lt!1153526)))))

(assert (= (and d!965021 c!578712) b!3394642))

(assert (= (and d!965021 (not c!578712)) b!3394638))

(assert (= (and d!965021 c!578713) b!3394641))

(assert (= (and d!965021 (not c!578713)) b!3394646))

(assert (= (and b!3394646 c!578714) b!3394640))

(assert (= (and b!3394646 (not c!578714)) b!3394635))

(assert (= (and b!3394635 (not res!1373320)) b!3394643))

(assert (= (and b!3394643 res!1373317) b!3394633))

(assert (= (and b!3394633 res!1373315) b!3394645))

(assert (= (and b!3394645 res!1373321) b!3394644))

(assert (= (and b!3394643 (not res!1373318)) b!3394637))

(assert (= (and b!3394637 res!1373319) b!3394639))

(assert (= (and b!3394639 (not res!1373316)) b!3394634))

(assert (= (and b!3394634 (not res!1373314)) b!3394636))

(assert (= (or b!3394641 b!3394633 b!3394639) bm!245769))

(declare-fun m!3764413 () Bool)

(assert (=> b!3394636 m!3764413))

(declare-fun m!3764415 () Bool)

(assert (=> b!3394642 m!3764415))

(declare-fun m!3764417 () Bool)

(assert (=> d!965021 m!3764417))

(declare-fun m!3764419 () Bool)

(assert (=> d!965021 m!3764419))

(assert (=> bm!245769 m!3764417))

(assert (=> b!3394645 m!3764253))

(assert (=> b!3394645 m!3764253))

(declare-fun m!3764421 () Bool)

(assert (=> b!3394645 m!3764421))

(assert (=> b!3394638 m!3764413))

(assert (=> b!3394638 m!3764413))

(declare-fun m!3764423 () Bool)

(assert (=> b!3394638 m!3764423))

(assert (=> b!3394638 m!3764253))

(assert (=> b!3394638 m!3764423))

(assert (=> b!3394638 m!3764253))

(declare-fun m!3764425 () Bool)

(assert (=> b!3394638 m!3764425))

(assert (=> b!3394644 m!3764413))

(assert (=> b!3394634 m!3764253))

(assert (=> b!3394634 m!3764253))

(assert (=> b!3394634 m!3764421))

(assert (=> b!3394116 d!965021))

(declare-fun d!965023 () Bool)

(assert (=> d!965023 (= (get!11794 lt!1153542) (v!36562 lt!1153542))))

(assert (=> b!3394116 d!965023))

(declare-fun d!965025 () Bool)

(declare-fun lt!1153713 () Bool)

(declare-fun content!5101 (List!37036) (InoxSet Rule!10568))

(assert (=> d!965025 (= lt!1153713 (select (content!5101 rules!2135) (rule!7942 (h!42333 tokens!494))))))

(declare-fun e!2107015 () Bool)

(assert (=> d!965025 (= lt!1153713 e!2107015)))

(declare-fun res!1373327 () Bool)

(assert (=> d!965025 (=> (not res!1373327) (not e!2107015))))

(assert (=> d!965025 (= res!1373327 ((_ is Cons!36912) rules!2135))))

(assert (=> d!965025 (= (contains!6774 rules!2135 (rule!7942 (h!42333 tokens!494))) lt!1153713)))

(declare-fun b!3394651 () Bool)

(declare-fun e!2107014 () Bool)

(assert (=> b!3394651 (= e!2107015 e!2107014)))

(declare-fun res!1373326 () Bool)

(assert (=> b!3394651 (=> res!1373326 e!2107014)))

(assert (=> b!3394651 (= res!1373326 (= (h!42332 rules!2135) (rule!7942 (h!42333 tokens!494))))))

(declare-fun b!3394652 () Bool)

(assert (=> b!3394652 (= e!2107014 (contains!6774 (t!265067 rules!2135) (rule!7942 (h!42333 tokens!494))))))

(assert (= (and d!965025 res!1373327) b!3394651))

(assert (= (and b!3394651 (not res!1373326)) b!3394652))

(declare-fun m!3764427 () Bool)

(assert (=> d!965025 m!3764427))

(declare-fun m!3764429 () Bool)

(assert (=> d!965025 m!3764429))

(declare-fun m!3764431 () Bool)

(assert (=> b!3394652 m!3764431))

(assert (=> b!3394136 d!965025))

(declare-fun d!965027 () Bool)

(declare-fun lt!1153714 () Bool)

(assert (=> d!965027 (= lt!1153714 (select (content!5100 (usedCharacters!640 (regex!5384 (rule!7942 (h!42333 tokens!494))))) lt!1153543))))

(declare-fun e!2107017 () Bool)

(assert (=> d!965027 (= lt!1153714 e!2107017)))

(declare-fun res!1373329 () Bool)

(assert (=> d!965027 (=> (not res!1373329) (not e!2107017))))

(assert (=> d!965027 (= res!1373329 ((_ is Cons!36911) (usedCharacters!640 (regex!5384 (rule!7942 (h!42333 tokens!494))))))))

(assert (=> d!965027 (= (contains!6775 (usedCharacters!640 (regex!5384 (rule!7942 (h!42333 tokens!494)))) lt!1153543) lt!1153714)))

(declare-fun b!3394653 () Bool)

(declare-fun e!2107016 () Bool)

(assert (=> b!3394653 (= e!2107017 e!2107016)))

(declare-fun res!1373328 () Bool)

(assert (=> b!3394653 (=> res!1373328 e!2107016)))

(assert (=> b!3394653 (= res!1373328 (= (h!42331 (usedCharacters!640 (regex!5384 (rule!7942 (h!42333 tokens!494))))) lt!1153543))))

(declare-fun b!3394654 () Bool)

(assert (=> b!3394654 (= e!2107016 (contains!6775 (t!265066 (usedCharacters!640 (regex!5384 (rule!7942 (h!42333 tokens!494))))) lt!1153543))))

(assert (= (and d!965027 res!1373329) b!3394653))

(assert (= (and b!3394653 (not res!1373328)) b!3394654))

(assert (=> d!965027 m!3763831))

(declare-fun m!3764433 () Bool)

(assert (=> d!965027 m!3764433))

(declare-fun m!3764435 () Bool)

(assert (=> d!965027 m!3764435))

(declare-fun m!3764437 () Bool)

(assert (=> b!3394654 m!3764437))

(assert (=> b!3394136 d!965027))

(declare-fun b!3394655 () Bool)

(declare-fun e!2107018 () List!37035)

(declare-fun call!245775 () List!37035)

(assert (=> b!3394655 (= e!2107018 call!245775)))

(declare-fun b!3394656 () Bool)

(declare-fun e!2107020 () List!37035)

(assert (=> b!3394656 (= e!2107020 e!2107018)))

(declare-fun c!578715 () Bool)

(assert (=> b!3394656 (= c!578715 ((_ is Union!10143) (regex!5384 (rule!7942 (h!42333 tokens!494)))))))

(declare-fun bm!245770 () Bool)

(declare-fun call!245778 () List!37035)

(assert (=> bm!245770 (= call!245778 (usedCharacters!640 (ite c!578715 (regTwo!20799 (regex!5384 (rule!7942 (h!42333 tokens!494)))) (regOne!20798 (regex!5384 (rule!7942 (h!42333 tokens!494)))))))))

(declare-fun b!3394657 () Bool)

(declare-fun e!2107019 () List!37035)

(assert (=> b!3394657 (= e!2107019 (Cons!36911 (c!578611 (regex!5384 (rule!7942 (h!42333 tokens!494)))) Nil!36911))))

(declare-fun d!965029 () Bool)

(declare-fun c!578717 () Bool)

(assert (=> d!965029 (= c!578717 (or ((_ is EmptyExpr!10143) (regex!5384 (rule!7942 (h!42333 tokens!494)))) ((_ is EmptyLang!10143) (regex!5384 (rule!7942 (h!42333 tokens!494))))))))

(declare-fun e!2107021 () List!37035)

(assert (=> d!965029 (= (usedCharacters!640 (regex!5384 (rule!7942 (h!42333 tokens!494)))) e!2107021)))

(declare-fun b!3394658 () Bool)

(declare-fun call!245777 () List!37035)

(assert (=> b!3394658 (= e!2107020 call!245777)))

(declare-fun b!3394659 () Bool)

(assert (=> b!3394659 (= e!2107021 e!2107019)))

(declare-fun c!578718 () Bool)

(assert (=> b!3394659 (= c!578718 ((_ is ElementMatch!10143) (regex!5384 (rule!7942 (h!42333 tokens!494)))))))

(declare-fun bm!245771 () Bool)

(declare-fun call!245776 () List!37035)

(assert (=> bm!245771 (= call!245776 call!245777)))

(declare-fun b!3394660 () Bool)

(assert (=> b!3394660 (= e!2107021 Nil!36911)))

(declare-fun b!3394661 () Bool)

(assert (=> b!3394661 (= e!2107018 call!245775)))

(declare-fun bm!245772 () Bool)

(declare-fun c!578716 () Bool)

(assert (=> bm!245772 (= call!245777 (usedCharacters!640 (ite c!578716 (reg!10472 (regex!5384 (rule!7942 (h!42333 tokens!494)))) (ite c!578715 (regOne!20799 (regex!5384 (rule!7942 (h!42333 tokens!494)))) (regTwo!20798 (regex!5384 (rule!7942 (h!42333 tokens!494))))))))))

(declare-fun bm!245773 () Bool)

(assert (=> bm!245773 (= call!245775 (++!9037 (ite c!578715 call!245776 call!245778) (ite c!578715 call!245778 call!245776)))))

(declare-fun b!3394662 () Bool)

(assert (=> b!3394662 (= c!578716 ((_ is Star!10143) (regex!5384 (rule!7942 (h!42333 tokens!494)))))))

(assert (=> b!3394662 (= e!2107019 e!2107020)))

(assert (= (and d!965029 c!578717) b!3394660))

(assert (= (and d!965029 (not c!578717)) b!3394659))

(assert (= (and b!3394659 c!578718) b!3394657))

(assert (= (and b!3394659 (not c!578718)) b!3394662))

(assert (= (and b!3394662 c!578716) b!3394658))

(assert (= (and b!3394662 (not c!578716)) b!3394656))

(assert (= (and b!3394656 c!578715) b!3394655))

(assert (= (and b!3394656 (not c!578715)) b!3394661))

(assert (= (or b!3394655 b!3394661) bm!245770))

(assert (= (or b!3394655 b!3394661) bm!245771))

(assert (= (or b!3394655 b!3394661) bm!245773))

(assert (= (or b!3394658 bm!245771) bm!245772))

(declare-fun m!3764439 () Bool)

(assert (=> bm!245770 m!3764439))

(declare-fun m!3764441 () Bool)

(assert (=> bm!245772 m!3764441))

(declare-fun m!3764443 () Bool)

(assert (=> bm!245773 m!3764443))

(assert (=> b!3394136 d!965029))

(declare-fun d!965031 () Bool)

(assert (=> d!965031 (not (contains!6775 (usedCharacters!640 (regex!5384 (rule!7942 (h!42333 tokens!494)))) lt!1153543))))

(declare-fun lt!1153717 () Unit!52082)

(declare-fun choose!19685 (LexerInterface!4973 List!37036 List!37036 Rule!10568 Rule!10568 C!20472) Unit!52082)

(assert (=> d!965031 (= lt!1153717 (choose!19685 thiss!18206 rules!2135 rules!2135 (rule!7942 (h!42333 tokens!494)) (rule!7942 separatorToken!241) lt!1153543))))

(assert (=> d!965031 (rulesInvariant!4370 thiss!18206 rules!2135)))

(assert (=> d!965031 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!224 thiss!18206 rules!2135 rules!2135 (rule!7942 (h!42333 tokens!494)) (rule!7942 separatorToken!241) lt!1153543) lt!1153717)))

(declare-fun bs!555777 () Bool)

(assert (= bs!555777 d!965031))

(assert (=> bs!555777 m!3763831))

(assert (=> bs!555777 m!3763831))

(assert (=> bs!555777 m!3763833))

(declare-fun m!3764445 () Bool)

(assert (=> bs!555777 m!3764445))

(assert (=> bs!555777 m!3763917))

(assert (=> b!3394136 d!965031))

(declare-fun d!965033 () Bool)

(declare-fun lt!1153719 () Bool)

(declare-fun e!2107023 () Bool)

(assert (=> d!965033 (= lt!1153719 e!2107023)))

(declare-fun res!1373332 () Bool)

(assert (=> d!965033 (=> (not res!1373332) (not e!2107023))))

(assert (=> d!965033 (= res!1373332 (= (list!13369 (_1!21399 (lex!2299 thiss!18206 rules!2135 (print!2038 thiss!18206 (singletonSeq!2480 (h!42333 tokens!494)))))) (list!13369 (singletonSeq!2480 (h!42333 tokens!494)))))))

(declare-fun e!2107022 () Bool)

(assert (=> d!965033 (= lt!1153719 e!2107022)))

(declare-fun res!1373330 () Bool)

(assert (=> d!965033 (=> (not res!1373330) (not e!2107022))))

(declare-fun lt!1153718 () tuple2!36530)

(assert (=> d!965033 (= res!1373330 (= (size!27948 (_1!21399 lt!1153718)) 1))))

(assert (=> d!965033 (= lt!1153718 (lex!2299 thiss!18206 rules!2135 (print!2038 thiss!18206 (singletonSeq!2480 (h!42333 tokens!494)))))))

(assert (=> d!965033 (not (isEmpty!21171 rules!2135))))

(assert (=> d!965033 (= (rulesProduceIndividualToken!2465 thiss!18206 rules!2135 (h!42333 tokens!494)) lt!1153719)))

(declare-fun b!3394663 () Bool)

(declare-fun res!1373331 () Bool)

(assert (=> b!3394663 (=> (not res!1373331) (not e!2107022))))

(assert (=> b!3394663 (= res!1373331 (= (apply!8604 (_1!21399 lt!1153718) 0) (h!42333 tokens!494)))))

(declare-fun b!3394664 () Bool)

(assert (=> b!3394664 (= e!2107022 (isEmpty!21177 (_2!21399 lt!1153718)))))

(declare-fun b!3394665 () Bool)

(assert (=> b!3394665 (= e!2107023 (isEmpty!21177 (_2!21399 (lex!2299 thiss!18206 rules!2135 (print!2038 thiss!18206 (singletonSeq!2480 (h!42333 tokens!494)))))))))

(assert (= (and d!965033 res!1373330) b!3394663))

(assert (= (and b!3394663 res!1373331) b!3394664))

(assert (= (and d!965033 res!1373332) b!3394665))

(assert (=> d!965033 m!3763925))

(declare-fun m!3764447 () Bool)

(assert (=> d!965033 m!3764447))

(assert (=> d!965033 m!3763931))

(declare-fun m!3764449 () Bool)

(assert (=> d!965033 m!3764449))

(declare-fun m!3764451 () Bool)

(assert (=> d!965033 m!3764451))

(assert (=> d!965033 m!3764449))

(declare-fun m!3764453 () Bool)

(assert (=> d!965033 m!3764453))

(assert (=> d!965033 m!3763931))

(assert (=> d!965033 m!3763931))

(declare-fun m!3764455 () Bool)

(assert (=> d!965033 m!3764455))

(declare-fun m!3764457 () Bool)

(assert (=> b!3394663 m!3764457))

(declare-fun m!3764459 () Bool)

(assert (=> b!3394664 m!3764459))

(assert (=> b!3394665 m!3763931))

(assert (=> b!3394665 m!3763931))

(assert (=> b!3394665 m!3764449))

(assert (=> b!3394665 m!3764449))

(assert (=> b!3394665 m!3764453))

(declare-fun m!3764461 () Bool)

(assert (=> b!3394665 m!3764461))

(assert (=> b!3394151 d!965033))

(declare-fun d!965035 () Bool)

(assert (=> d!965035 (= (isEmpty!21170 (_2!21398 lt!1153541)) ((_ is Nil!36911) (_2!21398 lt!1153541)))))

(assert (=> b!3394130 d!965035))

(declare-fun d!965037 () Bool)

(assert (=> d!965037 (not (matchR!4735 (regex!5384 (rule!7942 separatorToken!241)) lt!1153525))))

(declare-fun lt!1153722 () Unit!52082)

(declare-fun choose!19686 (Regex!10143 List!37035 C!20472) Unit!52082)

(assert (=> d!965037 (= lt!1153722 (choose!19686 (regex!5384 (rule!7942 separatorToken!241)) lt!1153525 lt!1153543))))

(assert (=> d!965037 (validRegex!4614 (regex!5384 (rule!7942 separatorToken!241)))))

(assert (=> d!965037 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!474 (regex!5384 (rule!7942 separatorToken!241)) lt!1153525 lt!1153543) lt!1153722)))

(declare-fun bs!555778 () Bool)

(assert (= bs!555778 d!965037))

(assert (=> bs!555778 m!3763859))

(declare-fun m!3764463 () Bool)

(assert (=> bs!555778 m!3764463))

(declare-fun m!3764465 () Bool)

(assert (=> bs!555778 m!3764465))

(assert (=> b!3394149 d!965037))

(declare-fun b!3394666 () Bool)

(declare-fun res!1373334 () Bool)

(declare-fun e!2107026 () Bool)

(assert (=> b!3394666 (=> (not res!1373334) (not e!2107026))))

(declare-fun call!245779 () Bool)

(assert (=> b!3394666 (= res!1373334 (not call!245779))))

(declare-fun b!3394667 () Bool)

(declare-fun res!1373333 () Bool)

(declare-fun e!2107028 () Bool)

(assert (=> b!3394667 (=> res!1373333 e!2107028)))

(assert (=> b!3394667 (= res!1373333 (not (isEmpty!21170 (tail!5367 lt!1153525))))))

(declare-fun b!3394668 () Bool)

(declare-fun res!1373339 () Bool)

(declare-fun e!2107030 () Bool)

(assert (=> b!3394668 (=> res!1373339 e!2107030)))

(assert (=> b!3394668 (= res!1373339 (not ((_ is ElementMatch!10143) (regex!5384 (rule!7942 separatorToken!241)))))))

(declare-fun e!2107025 () Bool)

(assert (=> b!3394668 (= e!2107025 e!2107030)))

(declare-fun bm!245774 () Bool)

(assert (=> bm!245774 (= call!245779 (isEmpty!21170 lt!1153525))))

(declare-fun b!3394670 () Bool)

(declare-fun e!2107027 () Bool)

(assert (=> b!3394670 (= e!2107030 e!2107027)))

(declare-fun res!1373338 () Bool)

(assert (=> b!3394670 (=> (not res!1373338) (not e!2107027))))

(declare-fun lt!1153723 () Bool)

(assert (=> b!3394670 (= res!1373338 (not lt!1153723))))

(declare-fun b!3394671 () Bool)

(declare-fun e!2107024 () Bool)

(assert (=> b!3394671 (= e!2107024 (matchR!4735 (derivativeStep!3011 (regex!5384 (rule!7942 separatorToken!241)) (head!7241 lt!1153525)) (tail!5367 lt!1153525)))))

(declare-fun b!3394672 () Bool)

(assert (=> b!3394672 (= e!2107027 e!2107028)))

(declare-fun res!1373335 () Bool)

(assert (=> b!3394672 (=> res!1373335 e!2107028)))

(assert (=> b!3394672 (= res!1373335 call!245779)))

(declare-fun b!3394673 () Bool)

(assert (=> b!3394673 (= e!2107025 (not lt!1153723))))

(declare-fun b!3394674 () Bool)

(declare-fun e!2107029 () Bool)

(assert (=> b!3394674 (= e!2107029 (= lt!1153723 call!245779))))

(declare-fun b!3394675 () Bool)

(assert (=> b!3394675 (= e!2107024 (nullable!3458 (regex!5384 (rule!7942 separatorToken!241))))))

(declare-fun b!3394676 () Bool)

(declare-fun res!1373337 () Bool)

(assert (=> b!3394676 (=> res!1373337 e!2107030)))

(assert (=> b!3394676 (= res!1373337 e!2107026)))

(declare-fun res!1373336 () Bool)

(assert (=> b!3394676 (=> (not res!1373336) (not e!2107026))))

(assert (=> b!3394676 (= res!1373336 lt!1153723)))

(declare-fun b!3394677 () Bool)

(assert (=> b!3394677 (= e!2107026 (= (head!7241 lt!1153525) (c!578611 (regex!5384 (rule!7942 separatorToken!241)))))))

(declare-fun d!965039 () Bool)

(assert (=> d!965039 e!2107029))

(declare-fun c!578722 () Bool)

(assert (=> d!965039 (= c!578722 ((_ is EmptyExpr!10143) (regex!5384 (rule!7942 separatorToken!241))))))

(assert (=> d!965039 (= lt!1153723 e!2107024)))

(declare-fun c!578721 () Bool)

(assert (=> d!965039 (= c!578721 (isEmpty!21170 lt!1153525))))

(assert (=> d!965039 (validRegex!4614 (regex!5384 (rule!7942 separatorToken!241)))))

(assert (=> d!965039 (= (matchR!4735 (regex!5384 (rule!7942 separatorToken!241)) lt!1153525) lt!1153723)))

(declare-fun b!3394669 () Bool)

(assert (=> b!3394669 (= e!2107028 (not (= (head!7241 lt!1153525) (c!578611 (regex!5384 (rule!7942 separatorToken!241))))))))

(declare-fun b!3394678 () Bool)

(declare-fun res!1373340 () Bool)

(assert (=> b!3394678 (=> (not res!1373340) (not e!2107026))))

(assert (=> b!3394678 (= res!1373340 (isEmpty!21170 (tail!5367 lt!1153525)))))

(declare-fun b!3394679 () Bool)

(assert (=> b!3394679 (= e!2107029 e!2107025)))

(declare-fun c!578723 () Bool)

(assert (=> b!3394679 (= c!578723 ((_ is EmptyLang!10143) (regex!5384 (rule!7942 separatorToken!241))))))

(assert (= (and d!965039 c!578721) b!3394675))

(assert (= (and d!965039 (not c!578721)) b!3394671))

(assert (= (and d!965039 c!578722) b!3394674))

(assert (= (and d!965039 (not c!578722)) b!3394679))

(assert (= (and b!3394679 c!578723) b!3394673))

(assert (= (and b!3394679 (not c!578723)) b!3394668))

(assert (= (and b!3394668 (not res!1373339)) b!3394676))

(assert (= (and b!3394676 res!1373336) b!3394666))

(assert (= (and b!3394666 res!1373334) b!3394678))

(assert (= (and b!3394678 res!1373340) b!3394677))

(assert (= (and b!3394676 (not res!1373337)) b!3394670))

(assert (= (and b!3394670 res!1373338) b!3394672))

(assert (= (and b!3394672 (not res!1373335)) b!3394667))

(assert (= (and b!3394667 (not res!1373333)) b!3394669))

(assert (= (or b!3394674 b!3394666 b!3394672) bm!245774))

(assert (=> b!3394669 m!3763875))

(declare-fun m!3764467 () Bool)

(assert (=> b!3394675 m!3764467))

(assert (=> d!965039 m!3763851))

(assert (=> d!965039 m!3764465))

(assert (=> bm!245774 m!3763851))

(assert (=> b!3394678 m!3764227))

(assert (=> b!3394678 m!3764227))

(assert (=> b!3394678 m!3764229))

(assert (=> b!3394671 m!3763875))

(assert (=> b!3394671 m!3763875))

(declare-fun m!3764469 () Bool)

(assert (=> b!3394671 m!3764469))

(assert (=> b!3394671 m!3764227))

(assert (=> b!3394671 m!3764469))

(assert (=> b!3394671 m!3764227))

(declare-fun m!3764471 () Bool)

(assert (=> b!3394671 m!3764471))

(assert (=> b!3394677 m!3763875))

(assert (=> b!3394667 m!3764227))

(assert (=> b!3394667 m!3764227))

(assert (=> b!3394667 m!3764229))

(assert (=> b!3394149 d!965039))

(declare-fun d!965041 () Bool)

(assert (=> d!965041 (= (inv!50001 (tag!5966 (rule!7942 (h!42333 tokens!494)))) (= (mod (str.len (value!173903 (tag!5966 (rule!7942 (h!42333 tokens!494))))) 2) 0))))

(assert (=> b!3394128 d!965041))

(declare-fun d!965043 () Bool)

(declare-fun res!1373341 () Bool)

(declare-fun e!2107031 () Bool)

(assert (=> d!965043 (=> (not res!1373341) (not e!2107031))))

(assert (=> d!965043 (= res!1373341 (semiInverseModEq!2248 (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494)))) (toValue!7580 (transformation!5384 (rule!7942 (h!42333 tokens!494))))))))

(assert (=> d!965043 (= (inv!50005 (transformation!5384 (rule!7942 (h!42333 tokens!494)))) e!2107031)))

(declare-fun b!3394680 () Bool)

(assert (=> b!3394680 (= e!2107031 (equivClasses!2147 (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494)))) (toValue!7580 (transformation!5384 (rule!7942 (h!42333 tokens!494))))))))

(assert (= (and d!965043 res!1373341) b!3394680))

(declare-fun m!3764473 () Bool)

(assert (=> d!965043 m!3764473))

(declare-fun m!3764475 () Bool)

(assert (=> b!3394680 m!3764475))

(assert (=> b!3394128 d!965043))

(declare-fun b!3394691 () Bool)

(declare-fun e!2107039 () Bool)

(declare-fun e!2107040 () Bool)

(assert (=> b!3394691 (= e!2107039 e!2107040)))

(declare-fun c!578729 () Bool)

(assert (=> b!3394691 (= c!578729 ((_ is IntegerValue!16843) (value!173904 separatorToken!241)))))

(declare-fun b!3394692 () Bool)

(declare-fun inv!17 (TokenValue!5614) Bool)

(assert (=> b!3394692 (= e!2107040 (inv!17 (value!173904 separatorToken!241)))))

(declare-fun b!3394693 () Bool)

(declare-fun e!2107038 () Bool)

(declare-fun inv!15 (TokenValue!5614) Bool)

(assert (=> b!3394693 (= e!2107038 (inv!15 (value!173904 separatorToken!241)))))

(declare-fun d!965045 () Bool)

(declare-fun c!578728 () Bool)

(assert (=> d!965045 (= c!578728 ((_ is IntegerValue!16842) (value!173904 separatorToken!241)))))

(assert (=> d!965045 (= (inv!21 (value!173904 separatorToken!241)) e!2107039)))

(declare-fun b!3394694 () Bool)

(declare-fun res!1373344 () Bool)

(assert (=> b!3394694 (=> res!1373344 e!2107038)))

(assert (=> b!3394694 (= res!1373344 (not ((_ is IntegerValue!16844) (value!173904 separatorToken!241))))))

(assert (=> b!3394694 (= e!2107040 e!2107038)))

(declare-fun b!3394695 () Bool)

(declare-fun inv!16 (TokenValue!5614) Bool)

(assert (=> b!3394695 (= e!2107039 (inv!16 (value!173904 separatorToken!241)))))

(assert (= (and d!965045 c!578728) b!3394695))

(assert (= (and d!965045 (not c!578728)) b!3394691))

(assert (= (and b!3394691 c!578729) b!3394692))

(assert (= (and b!3394691 (not c!578729)) b!3394694))

(assert (= (and b!3394694 (not res!1373344)) b!3394693))

(declare-fun m!3764477 () Bool)

(assert (=> b!3394692 m!3764477))

(declare-fun m!3764479 () Bool)

(assert (=> b!3394693 m!3764479))

(declare-fun m!3764481 () Bool)

(assert (=> b!3394695 m!3764481))

(assert (=> b!3394153 d!965045))

(declare-fun b!3394696 () Bool)

(declare-fun res!1373346 () Bool)

(declare-fun e!2107043 () Bool)

(assert (=> b!3394696 (=> (not res!1373346) (not e!2107043))))

(declare-fun call!245780 () Bool)

(assert (=> b!3394696 (= res!1373346 (not call!245780))))

(declare-fun b!3394697 () Bool)

(declare-fun res!1373345 () Bool)

(declare-fun e!2107045 () Bool)

(assert (=> b!3394697 (=> res!1373345 e!2107045)))

(assert (=> b!3394697 (= res!1373345 (not (isEmpty!21170 (tail!5367 lt!1153537))))))

(declare-fun b!3394698 () Bool)

(declare-fun res!1373351 () Bool)

(declare-fun e!2107047 () Bool)

(assert (=> b!3394698 (=> res!1373351 e!2107047)))

(assert (=> b!3394698 (= res!1373351 (not ((_ is ElementMatch!10143) (regex!5384 (rule!7942 (h!42333 tokens!494))))))))

(declare-fun e!2107042 () Bool)

(assert (=> b!3394698 (= e!2107042 e!2107047)))

(declare-fun bm!245775 () Bool)

(assert (=> bm!245775 (= call!245780 (isEmpty!21170 lt!1153537))))

(declare-fun b!3394700 () Bool)

(declare-fun e!2107044 () Bool)

(assert (=> b!3394700 (= e!2107047 e!2107044)))

(declare-fun res!1373350 () Bool)

(assert (=> b!3394700 (=> (not res!1373350) (not e!2107044))))

(declare-fun lt!1153724 () Bool)

(assert (=> b!3394700 (= res!1373350 (not lt!1153724))))

(declare-fun b!3394701 () Bool)

(declare-fun e!2107041 () Bool)

(assert (=> b!3394701 (= e!2107041 (matchR!4735 (derivativeStep!3011 (regex!5384 (rule!7942 (h!42333 tokens!494))) (head!7241 lt!1153537)) (tail!5367 lt!1153537)))))

(declare-fun b!3394702 () Bool)

(assert (=> b!3394702 (= e!2107044 e!2107045)))

(declare-fun res!1373347 () Bool)

(assert (=> b!3394702 (=> res!1373347 e!2107045)))

(assert (=> b!3394702 (= res!1373347 call!245780)))

(declare-fun b!3394703 () Bool)

(assert (=> b!3394703 (= e!2107042 (not lt!1153724))))

(declare-fun b!3394704 () Bool)

(declare-fun e!2107046 () Bool)

(assert (=> b!3394704 (= e!2107046 (= lt!1153724 call!245780))))

(declare-fun b!3394705 () Bool)

(assert (=> b!3394705 (= e!2107041 (nullable!3458 (regex!5384 (rule!7942 (h!42333 tokens!494)))))))

(declare-fun b!3394706 () Bool)

(declare-fun res!1373349 () Bool)

(assert (=> b!3394706 (=> res!1373349 e!2107047)))

(assert (=> b!3394706 (= res!1373349 e!2107043)))

(declare-fun res!1373348 () Bool)

(assert (=> b!3394706 (=> (not res!1373348) (not e!2107043))))

(assert (=> b!3394706 (= res!1373348 lt!1153724)))

(declare-fun b!3394707 () Bool)

(assert (=> b!3394707 (= e!2107043 (= (head!7241 lt!1153537) (c!578611 (regex!5384 (rule!7942 (h!42333 tokens!494))))))))

(declare-fun d!965047 () Bool)

(assert (=> d!965047 e!2107046))

(declare-fun c!578731 () Bool)

(assert (=> d!965047 (= c!578731 ((_ is EmptyExpr!10143) (regex!5384 (rule!7942 (h!42333 tokens!494)))))))

(assert (=> d!965047 (= lt!1153724 e!2107041)))

(declare-fun c!578730 () Bool)

(assert (=> d!965047 (= c!578730 (isEmpty!21170 lt!1153537))))

(assert (=> d!965047 (validRegex!4614 (regex!5384 (rule!7942 (h!42333 tokens!494))))))

(assert (=> d!965047 (= (matchR!4735 (regex!5384 (rule!7942 (h!42333 tokens!494))) lt!1153537) lt!1153724)))

(declare-fun b!3394699 () Bool)

(assert (=> b!3394699 (= e!2107045 (not (= (head!7241 lt!1153537) (c!578611 (regex!5384 (rule!7942 (h!42333 tokens!494)))))))))

(declare-fun b!3394708 () Bool)

(declare-fun res!1373352 () Bool)

(assert (=> b!3394708 (=> (not res!1373352) (not e!2107043))))

(assert (=> b!3394708 (= res!1373352 (isEmpty!21170 (tail!5367 lt!1153537)))))

(declare-fun b!3394709 () Bool)

(assert (=> b!3394709 (= e!2107046 e!2107042)))

(declare-fun c!578732 () Bool)

(assert (=> b!3394709 (= c!578732 ((_ is EmptyLang!10143) (regex!5384 (rule!7942 (h!42333 tokens!494)))))))

(assert (= (and d!965047 c!578730) b!3394705))

(assert (= (and d!965047 (not c!578730)) b!3394701))

(assert (= (and d!965047 c!578731) b!3394704))

(assert (= (and d!965047 (not c!578731)) b!3394709))

(assert (= (and b!3394709 c!578732) b!3394703))

(assert (= (and b!3394709 (not c!578732)) b!3394698))

(assert (= (and b!3394698 (not res!1373351)) b!3394706))

(assert (= (and b!3394706 res!1373348) b!3394696))

(assert (= (and b!3394696 res!1373346) b!3394708))

(assert (= (and b!3394708 res!1373352) b!3394707))

(assert (= (and b!3394706 (not res!1373349)) b!3394700))

(assert (= (and b!3394700 res!1373350) b!3394702))

(assert (= (and b!3394702 (not res!1373347)) b!3394697))

(assert (= (and b!3394697 (not res!1373345)) b!3394699))

(assert (= (or b!3394704 b!3394696 b!3394702) bm!245775))

(assert (=> b!3394699 m!3764413))

(declare-fun m!3764483 () Bool)

(assert (=> b!3394705 m!3764483))

(assert (=> d!965047 m!3764417))

(declare-fun m!3764485 () Bool)

(assert (=> d!965047 m!3764485))

(assert (=> bm!245775 m!3764417))

(assert (=> b!3394708 m!3764253))

(assert (=> b!3394708 m!3764253))

(assert (=> b!3394708 m!3764421))

(assert (=> b!3394701 m!3764413))

(assert (=> b!3394701 m!3764413))

(declare-fun m!3764487 () Bool)

(assert (=> b!3394701 m!3764487))

(assert (=> b!3394701 m!3764253))

(assert (=> b!3394701 m!3764487))

(assert (=> b!3394701 m!3764253))

(declare-fun m!3764489 () Bool)

(assert (=> b!3394701 m!3764489))

(assert (=> b!3394707 m!3764413))

(assert (=> b!3394697 m!3764253))

(assert (=> b!3394697 m!3764253))

(assert (=> b!3394697 m!3764421))

(assert (=> b!3394154 d!965047))

(declare-fun d!965049 () Bool)

(declare-fun res!1373357 () Bool)

(declare-fun e!2107050 () Bool)

(assert (=> d!965049 (=> (not res!1373357) (not e!2107050))))

(assert (=> d!965049 (= res!1373357 (validRegex!4614 (regex!5384 (rule!7942 (h!42333 tokens!494)))))))

(assert (=> d!965049 (= (ruleValid!1712 thiss!18206 (rule!7942 (h!42333 tokens!494))) e!2107050)))

(declare-fun b!3394714 () Bool)

(declare-fun res!1373358 () Bool)

(assert (=> b!3394714 (=> (not res!1373358) (not e!2107050))))

(assert (=> b!3394714 (= res!1373358 (not (nullable!3458 (regex!5384 (rule!7942 (h!42333 tokens!494))))))))

(declare-fun b!3394715 () Bool)

(assert (=> b!3394715 (= e!2107050 (not (= (tag!5966 (rule!7942 (h!42333 tokens!494))) (String!41405 ""))))))

(assert (= (and d!965049 res!1373357) b!3394714))

(assert (= (and b!3394714 res!1373358) b!3394715))

(assert (=> d!965049 m!3764485))

(assert (=> b!3394714 m!3764483))

(assert (=> b!3394154 d!965049))

(declare-fun d!965051 () Bool)

(assert (=> d!965051 (ruleValid!1712 thiss!18206 (rule!7942 (h!42333 tokens!494)))))

(declare-fun lt!1153727 () Unit!52082)

(declare-fun choose!19687 (LexerInterface!4973 Rule!10568 List!37036) Unit!52082)

(assert (=> d!965051 (= lt!1153727 (choose!19687 thiss!18206 (rule!7942 (h!42333 tokens!494)) rules!2135))))

(assert (=> d!965051 (contains!6774 rules!2135 (rule!7942 (h!42333 tokens!494)))))

(assert (=> d!965051 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!940 thiss!18206 (rule!7942 (h!42333 tokens!494)) rules!2135) lt!1153727)))

(declare-fun bs!555779 () Bool)

(assert (= bs!555779 d!965051))

(assert (=> bs!555779 m!3763921))

(declare-fun m!3764491 () Bool)

(assert (=> bs!555779 m!3764491))

(assert (=> bs!555779 m!3763829))

(assert (=> b!3394154 d!965051))

(declare-fun d!965053 () Bool)

(assert (=> d!965053 (= (get!11795 lt!1153544) (v!36563 lt!1153544))))

(assert (=> b!3394152 d!965053))

(declare-fun b!3394716 () Bool)

(declare-fun e!2107052 () Bool)

(declare-fun e!2107053 () Bool)

(assert (=> b!3394716 (= e!2107052 e!2107053)))

(declare-fun c!578734 () Bool)

(assert (=> b!3394716 (= c!578734 ((_ is IntegerValue!16843) (value!173904 (h!42333 tokens!494))))))

(declare-fun b!3394717 () Bool)

(assert (=> b!3394717 (= e!2107053 (inv!17 (value!173904 (h!42333 tokens!494))))))

(declare-fun b!3394718 () Bool)

(declare-fun e!2107051 () Bool)

(assert (=> b!3394718 (= e!2107051 (inv!15 (value!173904 (h!42333 tokens!494))))))

(declare-fun d!965055 () Bool)

(declare-fun c!578733 () Bool)

(assert (=> d!965055 (= c!578733 ((_ is IntegerValue!16842) (value!173904 (h!42333 tokens!494))))))

(assert (=> d!965055 (= (inv!21 (value!173904 (h!42333 tokens!494))) e!2107052)))

(declare-fun b!3394719 () Bool)

(declare-fun res!1373359 () Bool)

(assert (=> b!3394719 (=> res!1373359 e!2107051)))

(assert (=> b!3394719 (= res!1373359 (not ((_ is IntegerValue!16844) (value!173904 (h!42333 tokens!494)))))))

(assert (=> b!3394719 (= e!2107053 e!2107051)))

(declare-fun b!3394720 () Bool)

(assert (=> b!3394720 (= e!2107052 (inv!16 (value!173904 (h!42333 tokens!494))))))

(assert (= (and d!965055 c!578733) b!3394720))

(assert (= (and d!965055 (not c!578733)) b!3394716))

(assert (= (and b!3394716 c!578734) b!3394717))

(assert (= (and b!3394716 (not c!578734)) b!3394719))

(assert (= (and b!3394719 (not res!1373359)) b!3394718))

(declare-fun m!3764493 () Bool)

(assert (=> b!3394717 m!3764493))

(declare-fun m!3764495 () Bool)

(assert (=> b!3394718 m!3764495))

(declare-fun m!3764497 () Bool)

(assert (=> b!3394720 m!3764497))

(assert (=> b!3394131 d!965055))

(declare-fun d!965057 () Bool)

(assert (=> d!965057 (= (isEmpty!21170 lt!1153525) ((_ is Nil!36911) lt!1153525))))

(assert (=> b!3394145 d!965057))

(declare-fun d!965059 () Bool)

(declare-fun lt!1153728 () Bool)

(assert (=> d!965059 (= lt!1153728 (select (content!5101 rules!2135) (rule!7942 separatorToken!241)))))

(declare-fun e!2107055 () Bool)

(assert (=> d!965059 (= lt!1153728 e!2107055)))

(declare-fun res!1373361 () Bool)

(assert (=> d!965059 (=> (not res!1373361) (not e!2107055))))

(assert (=> d!965059 (= res!1373361 ((_ is Cons!36912) rules!2135))))

(assert (=> d!965059 (= (contains!6774 rules!2135 (rule!7942 separatorToken!241)) lt!1153728)))

(declare-fun b!3394721 () Bool)

(declare-fun e!2107054 () Bool)

(assert (=> b!3394721 (= e!2107055 e!2107054)))

(declare-fun res!1373360 () Bool)

(assert (=> b!3394721 (=> res!1373360 e!2107054)))

(assert (=> b!3394721 (= res!1373360 (= (h!42332 rules!2135) (rule!7942 separatorToken!241)))))

(declare-fun b!3394722 () Bool)

(assert (=> b!3394722 (= e!2107054 (contains!6774 (t!265067 rules!2135) (rule!7942 separatorToken!241)))))

(assert (= (and d!965059 res!1373361) b!3394721))

(assert (= (and b!3394721 (not res!1373360)) b!3394722))

(assert (=> d!965059 m!3764427))

(declare-fun m!3764499 () Bool)

(assert (=> d!965059 m!3764499))

(declare-fun m!3764501 () Bool)

(assert (=> b!3394722 m!3764501))

(assert (=> b!3394124 d!965059))

(declare-fun d!965061 () Bool)

(declare-fun res!1373362 () Bool)

(declare-fun e!2107056 () Bool)

(assert (=> d!965061 (=> (not res!1373362) (not e!2107056))))

(assert (=> d!965061 (= res!1373362 (not (isEmpty!21170 (originalCharacters!6098 separatorToken!241))))))

(assert (=> d!965061 (= (inv!50004 separatorToken!241) e!2107056)))

(declare-fun b!3394723 () Bool)

(declare-fun res!1373363 () Bool)

(assert (=> b!3394723 (=> (not res!1373363) (not e!2107056))))

(assert (=> b!3394723 (= res!1373363 (= (originalCharacters!6098 separatorToken!241) (list!13367 (dynLambda!15387 (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241))) (value!173904 separatorToken!241)))))))

(declare-fun b!3394724 () Bool)

(assert (=> b!3394724 (= e!2107056 (= (size!27944 separatorToken!241) (size!27945 (originalCharacters!6098 separatorToken!241))))))

(assert (= (and d!965061 res!1373362) b!3394723))

(assert (= (and b!3394723 res!1373363) b!3394724))

(declare-fun b_lambda!96607 () Bool)

(assert (=> (not b_lambda!96607) (not b!3394723)))

(declare-fun t!265106 () Bool)

(declare-fun tb!181729 () Bool)

(assert (=> (and b!3394142 (= (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241))) (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241)))) t!265106) tb!181729))

(declare-fun b!3394725 () Bool)

(declare-fun e!2107057 () Bool)

(declare-fun tp!1059538 () Bool)

(assert (=> b!3394725 (= e!2107057 (and (inv!50008 (c!578610 (dynLambda!15387 (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241))) (value!173904 separatorToken!241)))) tp!1059538))))

(declare-fun result!225274 () Bool)

(assert (=> tb!181729 (= result!225274 (and (inv!50009 (dynLambda!15387 (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241))) (value!173904 separatorToken!241))) e!2107057))))

(assert (= tb!181729 b!3394725))

(declare-fun m!3764503 () Bool)

(assert (=> b!3394725 m!3764503))

(declare-fun m!3764505 () Bool)

(assert (=> tb!181729 m!3764505))

(assert (=> b!3394723 t!265106))

(declare-fun b_and!236545 () Bool)

(assert (= b_and!236539 (and (=> t!265106 result!225274) b_and!236545)))

(declare-fun tb!181731 () Bool)

(declare-fun t!265108 () Bool)

(assert (=> (and b!3394127 (= (toChars!7439 (transformation!5384 (h!42332 rules!2135))) (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241)))) t!265108) tb!181731))

(declare-fun result!225276 () Bool)

(assert (= result!225276 result!225274))

(assert (=> b!3394723 t!265108))

(declare-fun b_and!236547 () Bool)

(assert (= b_and!236541 (and (=> t!265108 result!225276) b_and!236547)))

(declare-fun t!265110 () Bool)

(declare-fun tb!181733 () Bool)

(assert (=> (and b!3394135 (= (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494)))) (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241)))) t!265110) tb!181733))

(declare-fun result!225278 () Bool)

(assert (= result!225278 result!225274))

(assert (=> b!3394723 t!265110))

(declare-fun b_and!236549 () Bool)

(assert (= b_and!236543 (and (=> t!265110 result!225278) b_and!236549)))

(declare-fun m!3764507 () Bool)

(assert (=> d!965061 m!3764507))

(declare-fun m!3764509 () Bool)

(assert (=> b!3394723 m!3764509))

(assert (=> b!3394723 m!3764509))

(declare-fun m!3764511 () Bool)

(assert (=> b!3394723 m!3764511))

(declare-fun m!3764513 () Bool)

(assert (=> b!3394724 m!3764513))

(assert (=> start!316610 d!965061))

(declare-fun d!965063 () Bool)

(declare-fun lt!1153731 () BalanceConc!21900)

(declare-fun printWithSeparatorTokenList!262 (LexerInterface!4973 List!37037 Token!10134) List!37035)

(assert (=> d!965063 (= (list!13367 lt!1153731) (printWithSeparatorTokenList!262 thiss!18206 (list!13369 lt!1153536) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!78 (LexerInterface!4973 BalanceConc!21902 Token!10134 Int BalanceConc!21900) BalanceConc!21900)

(assert (=> d!965063 (= lt!1153731 (printWithSeparatorTokenTailRec!78 thiss!18206 lt!1153536 separatorToken!241 0 (BalanceConc!21901 Empty!11143)))))

(assert (=> d!965063 (isSeparator!5384 (rule!7942 separatorToken!241))))

(assert (=> d!965063 (= (printWithSeparatorToken!164 thiss!18206 lt!1153536 separatorToken!241) lt!1153731)))

(declare-fun bs!555780 () Bool)

(assert (= bs!555780 d!965063))

(declare-fun m!3764515 () Bool)

(assert (=> bs!555780 m!3764515))

(declare-fun m!3764517 () Bool)

(assert (=> bs!555780 m!3764517))

(assert (=> bs!555780 m!3764517))

(declare-fun m!3764519 () Bool)

(assert (=> bs!555780 m!3764519))

(declare-fun m!3764521 () Bool)

(assert (=> bs!555780 m!3764521))

(assert (=> b!3394144 d!965063))

(declare-fun d!965065 () Bool)

(assert (=> d!965065 (= (list!13367 lt!1153548) (list!13371 (c!578610 lt!1153548)))))

(declare-fun bs!555781 () Bool)

(assert (= bs!555781 d!965065))

(declare-fun m!3764523 () Bool)

(assert (=> bs!555781 m!3764523))

(assert (=> b!3394144 d!965065))

(declare-fun d!965067 () Bool)

(declare-fun lt!1153732 () BalanceConc!21900)

(assert (=> d!965067 (= (list!13367 lt!1153732) (originalCharacters!6098 separatorToken!241))))

(assert (=> d!965067 (= lt!1153732 (dynLambda!15387 (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241))) (value!173904 separatorToken!241)))))

(assert (=> d!965067 (= (charsOf!3398 separatorToken!241) lt!1153732)))

(declare-fun b_lambda!96609 () Bool)

(assert (=> (not b_lambda!96609) (not d!965067)))

(assert (=> d!965067 t!265106))

(declare-fun b_and!236551 () Bool)

(assert (= b_and!236545 (and (=> t!265106 result!225274) b_and!236551)))

(assert (=> d!965067 t!265108))

(declare-fun b_and!236553 () Bool)

(assert (= b_and!236547 (and (=> t!265108 result!225276) b_and!236553)))

(assert (=> d!965067 t!265110))

(declare-fun b_and!236555 () Bool)

(assert (= b_and!236549 (and (=> t!265110 result!225278) b_and!236555)))

(declare-fun m!3764525 () Bool)

(assert (=> d!965067 m!3764525))

(assert (=> d!965067 m!3764509))

(assert (=> b!3394144 d!965067))

(declare-fun d!965069 () Bool)

(assert (=> d!965069 (= (list!13367 (charsOf!3398 separatorToken!241)) (list!13371 (c!578610 (charsOf!3398 separatorToken!241))))))

(declare-fun bs!555782 () Bool)

(assert (= bs!555782 d!965069))

(declare-fun m!3764527 () Bool)

(assert (=> bs!555782 m!3764527))

(assert (=> b!3394144 d!965069))

(declare-fun b!3394737 () Bool)

(declare-fun e!2107062 () Bool)

(declare-fun lt!1153735 () List!37035)

(assert (=> b!3394737 (= e!2107062 (or (not (= lt!1153525 Nil!36911)) (= lt!1153735 lt!1153537)))))

(declare-fun b!3394735 () Bool)

(declare-fun e!2107063 () List!37035)

(assert (=> b!3394735 (= e!2107063 (Cons!36911 (h!42331 lt!1153537) (++!9037 (t!265066 lt!1153537) lt!1153525)))))

(declare-fun b!3394734 () Bool)

(assert (=> b!3394734 (= e!2107063 lt!1153525)))

(declare-fun b!3394736 () Bool)

(declare-fun res!1373369 () Bool)

(assert (=> b!3394736 (=> (not res!1373369) (not e!2107062))))

(assert (=> b!3394736 (= res!1373369 (= (size!27945 lt!1153735) (+ (size!27945 lt!1153537) (size!27945 lt!1153525))))))

(declare-fun d!965071 () Bool)

(assert (=> d!965071 e!2107062))

(declare-fun res!1373368 () Bool)

(assert (=> d!965071 (=> (not res!1373368) (not e!2107062))))

(assert (=> d!965071 (= res!1373368 (= (content!5100 lt!1153735) ((_ map or) (content!5100 lt!1153537) (content!5100 lt!1153525))))))

(assert (=> d!965071 (= lt!1153735 e!2107063)))

(declare-fun c!578737 () Bool)

(assert (=> d!965071 (= c!578737 ((_ is Nil!36911) lt!1153537))))

(assert (=> d!965071 (= (++!9037 lt!1153537 lt!1153525) lt!1153735)))

(assert (= (and d!965071 c!578737) b!3394734))

(assert (= (and d!965071 (not c!578737)) b!3394735))

(assert (= (and d!965071 res!1373368) b!3394736))

(assert (= (and b!3394736 res!1373369) b!3394737))

(declare-fun m!3764529 () Bool)

(assert (=> b!3394735 m!3764529))

(declare-fun m!3764531 () Bool)

(assert (=> b!3394736 m!3764531))

(assert (=> b!3394736 m!3763895))

(declare-fun m!3764533 () Bool)

(assert (=> b!3394736 m!3764533))

(declare-fun m!3764535 () Bool)

(assert (=> d!965071 m!3764535))

(declare-fun m!3764537 () Bool)

(assert (=> d!965071 m!3764537))

(declare-fun m!3764539 () Bool)

(assert (=> d!965071 m!3764539))

(assert (=> b!3394144 d!965071))

(declare-fun d!965073 () Bool)

(assert (=> d!965073 (= (inv!50001 (tag!5966 (h!42332 rules!2135))) (= (mod (str.len (value!173903 (tag!5966 (h!42332 rules!2135)))) 2) 0))))

(assert (=> b!3394123 d!965073))

(declare-fun d!965075 () Bool)

(declare-fun res!1373370 () Bool)

(declare-fun e!2107064 () Bool)

(assert (=> d!965075 (=> (not res!1373370) (not e!2107064))))

(assert (=> d!965075 (= res!1373370 (semiInverseModEq!2248 (toChars!7439 (transformation!5384 (h!42332 rules!2135))) (toValue!7580 (transformation!5384 (h!42332 rules!2135)))))))

(assert (=> d!965075 (= (inv!50005 (transformation!5384 (h!42332 rules!2135))) e!2107064)))

(declare-fun b!3394738 () Bool)

(assert (=> b!3394738 (= e!2107064 (equivClasses!2147 (toChars!7439 (transformation!5384 (h!42332 rules!2135))) (toValue!7580 (transformation!5384 (h!42332 rules!2135)))))))

(assert (= (and d!965075 res!1373370) b!3394738))

(declare-fun m!3764541 () Bool)

(assert (=> d!965075 m!3764541))

(declare-fun m!3764543 () Bool)

(assert (=> b!3394738 m!3764543))

(assert (=> b!3394123 d!965075))

(declare-fun bs!555795 () Bool)

(declare-fun d!965077 () Bool)

(assert (= bs!555795 (and d!965077 b!3394118)))

(declare-fun lambda!120733 () Int)

(assert (=> bs!555795 (not (= lambda!120733 lambda!120723))))

(declare-fun b!3394917 () Bool)

(declare-fun e!2107177 () Bool)

(assert (=> b!3394917 (= e!2107177 true)))

(declare-fun b!3394916 () Bool)

(declare-fun e!2107176 () Bool)

(assert (=> b!3394916 (= e!2107176 e!2107177)))

(declare-fun b!3394915 () Bool)

(declare-fun e!2107175 () Bool)

(assert (=> b!3394915 (= e!2107175 e!2107176)))

(assert (=> d!965077 e!2107175))

(assert (= b!3394916 b!3394917))

(assert (= b!3394915 b!3394916))

(assert (= (and d!965077 ((_ is Cons!36912) rules!2135)) b!3394915))

(declare-fun order!19479 () Int)

(declare-fun order!19477 () Int)

(declare-fun dynLambda!15392 (Int Int) Int)

(declare-fun dynLambda!15393 (Int Int) Int)

(assert (=> b!3394917 (< (dynLambda!15392 order!19477 (toValue!7580 (transformation!5384 (h!42332 rules!2135)))) (dynLambda!15393 order!19479 lambda!120733))))

(declare-fun order!19481 () Int)

(declare-fun dynLambda!15394 (Int Int) Int)

(assert (=> b!3394917 (< (dynLambda!15394 order!19481 (toChars!7439 (transformation!5384 (h!42332 rules!2135)))) (dynLambda!15393 order!19479 lambda!120733))))

(assert (=> d!965077 true))

(declare-fun e!2107168 () Bool)

(assert (=> d!965077 e!2107168))

(declare-fun res!1373432 () Bool)

(assert (=> d!965077 (=> (not res!1373432) (not e!2107168))))

(declare-fun lt!1153800 () Bool)

(assert (=> d!965077 (= res!1373432 (= lt!1153800 (forall!7789 (list!13369 lt!1153536) lambda!120733)))))

(declare-fun forall!7791 (BalanceConc!21902 Int) Bool)

(assert (=> d!965077 (= lt!1153800 (forall!7791 lt!1153536 lambda!120733))))

(assert (=> d!965077 (not (isEmpty!21171 rules!2135))))

(assert (=> d!965077 (= (rulesProduceEachTokenIndividually!1424 thiss!18206 rules!2135 lt!1153536) lt!1153800)))

(declare-fun b!3394906 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1821 (LexerInterface!4973 List!37036 List!37037) Bool)

(assert (=> b!3394906 (= e!2107168 (= lt!1153800 (rulesProduceEachTokenIndividuallyList!1821 thiss!18206 rules!2135 (list!13369 lt!1153536))))))

(assert (= (and d!965077 res!1373432) b!3394906))

(assert (=> d!965077 m!3764517))

(assert (=> d!965077 m!3764517))

(declare-fun m!3764749 () Bool)

(assert (=> d!965077 m!3764749))

(declare-fun m!3764751 () Bool)

(assert (=> d!965077 m!3764751))

(assert (=> d!965077 m!3763925))

(assert (=> b!3394906 m!3764517))

(assert (=> b!3394906 m!3764517))

(declare-fun m!3764753 () Bool)

(assert (=> b!3394906 m!3764753))

(assert (=> b!3394148 d!965077))

(declare-fun d!965131 () Bool)

(declare-fun fromListB!1715 (List!37037) BalanceConc!21902)

(assert (=> d!965131 (= (seqFromList!3822 tokens!494) (fromListB!1715 tokens!494))))

(declare-fun bs!555796 () Bool)

(assert (= bs!555796 d!965131))

(declare-fun m!3764755 () Bool)

(assert (=> bs!555796 m!3764755))

(assert (=> b!3394148 d!965131))

(declare-fun d!965133 () Bool)

(declare-fun res!1373435 () Bool)

(declare-fun e!2107180 () Bool)

(assert (=> d!965133 (=> (not res!1373435) (not e!2107180))))

(declare-fun rulesValid!2009 (LexerInterface!4973 List!37036) Bool)

(assert (=> d!965133 (= res!1373435 (rulesValid!2009 thiss!18206 rules!2135))))

(assert (=> d!965133 (= (rulesInvariant!4370 thiss!18206 rules!2135) e!2107180)))

(declare-fun b!3394922 () Bool)

(declare-datatypes ((List!37039 0))(
  ( (Nil!36915) (Cons!36915 (h!42335 String!41404) (t!265144 List!37039)) )
))
(declare-fun noDuplicateTag!2005 (LexerInterface!4973 List!37036 List!37039) Bool)

(assert (=> b!3394922 (= e!2107180 (noDuplicateTag!2005 thiss!18206 rules!2135 Nil!36915))))

(assert (= (and d!965133 res!1373435) b!3394922))

(declare-fun m!3764757 () Bool)

(assert (=> d!965133 m!3764757))

(declare-fun m!3764759 () Bool)

(assert (=> b!3394922 m!3764759))

(assert (=> b!3394125 d!965133))

(declare-fun d!965135 () Bool)

(assert (=> d!965135 (= (list!13367 lt!1153522) (list!13371 (c!578610 lt!1153522)))))

(declare-fun bs!555797 () Bool)

(assert (= bs!555797 d!965135))

(declare-fun m!3764761 () Bool)

(assert (=> bs!555797 m!3764761))

(assert (=> b!3394147 d!965135))

(declare-fun d!965137 () Bool)

(declare-fun lt!1153821 () BalanceConc!21900)

(declare-fun printListTailRec!654 (LexerInterface!4973 List!37037 List!37035) List!37035)

(declare-fun dropList!1171 (BalanceConc!21902 Int) List!37037)

(assert (=> d!965137 (= (list!13367 lt!1153821) (printListTailRec!654 thiss!18206 (dropList!1171 lt!1153530 0) (list!13367 (BalanceConc!21901 Empty!11143))))))

(declare-fun e!2107185 () BalanceConc!21900)

(assert (=> d!965137 (= lt!1153821 e!2107185)))

(declare-fun c!578761 () Bool)

(assert (=> d!965137 (= c!578761 (>= 0 (size!27948 lt!1153530)))))

(declare-fun e!2107186 () Bool)

(assert (=> d!965137 e!2107186))

(declare-fun res!1373438 () Bool)

(assert (=> d!965137 (=> (not res!1373438) (not e!2107186))))

(assert (=> d!965137 (= res!1373438 (>= 0 0))))

(assert (=> d!965137 (= (printTailRec!1468 thiss!18206 lt!1153530 0 (BalanceConc!21901 Empty!11143)) lt!1153821)))

(declare-fun b!3394929 () Bool)

(assert (=> b!3394929 (= e!2107186 (<= 0 (size!27948 lt!1153530)))))

(declare-fun b!3394930 () Bool)

(assert (=> b!3394930 (= e!2107185 (BalanceConc!21901 Empty!11143))))

(declare-fun b!3394931 () Bool)

(declare-fun ++!9039 (BalanceConc!21900 BalanceConc!21900) BalanceConc!21900)

(assert (=> b!3394931 (= e!2107185 (printTailRec!1468 thiss!18206 lt!1153530 (+ 0 1) (++!9039 (BalanceConc!21901 Empty!11143) (charsOf!3398 (apply!8604 lt!1153530 0)))))))

(declare-fun lt!1153815 () List!37037)

(assert (=> b!3394931 (= lt!1153815 (list!13369 lt!1153530))))

(declare-fun lt!1153816 () Unit!52082)

(declare-fun lemmaDropApply!1129 (List!37037 Int) Unit!52082)

(assert (=> b!3394931 (= lt!1153816 (lemmaDropApply!1129 lt!1153815 0))))

(declare-fun head!7243 (List!37037) Token!10134)

(declare-fun drop!1971 (List!37037 Int) List!37037)

(declare-fun apply!8607 (List!37037 Int) Token!10134)

(assert (=> b!3394931 (= (head!7243 (drop!1971 lt!1153815 0)) (apply!8607 lt!1153815 0))))

(declare-fun lt!1153820 () Unit!52082)

(assert (=> b!3394931 (= lt!1153820 lt!1153816)))

(declare-fun lt!1153817 () List!37037)

(assert (=> b!3394931 (= lt!1153817 (list!13369 lt!1153530))))

(declare-fun lt!1153818 () Unit!52082)

(declare-fun lemmaDropTail!1013 (List!37037 Int) Unit!52082)

(assert (=> b!3394931 (= lt!1153818 (lemmaDropTail!1013 lt!1153817 0))))

(declare-fun tail!5369 (List!37037) List!37037)

(assert (=> b!3394931 (= (tail!5369 (drop!1971 lt!1153817 0)) (drop!1971 lt!1153817 (+ 0 1)))))

(declare-fun lt!1153819 () Unit!52082)

(assert (=> b!3394931 (= lt!1153819 lt!1153818)))

(assert (= (and d!965137 res!1373438) b!3394929))

(assert (= (and d!965137 c!578761) b!3394930))

(assert (= (and d!965137 (not c!578761)) b!3394931))

(declare-fun m!3764763 () Bool)

(assert (=> d!965137 m!3764763))

(declare-fun m!3764765 () Bool)

(assert (=> d!965137 m!3764765))

(assert (=> d!965137 m!3764765))

(declare-fun m!3764767 () Bool)

(assert (=> d!965137 m!3764767))

(declare-fun m!3764769 () Bool)

(assert (=> d!965137 m!3764769))

(assert (=> d!965137 m!3764767))

(declare-fun m!3764771 () Bool)

(assert (=> d!965137 m!3764771))

(assert (=> b!3394929 m!3764763))

(declare-fun m!3764773 () Bool)

(assert (=> b!3394931 m!3764773))

(declare-fun m!3764775 () Bool)

(assert (=> b!3394931 m!3764775))

(declare-fun m!3764777 () Bool)

(assert (=> b!3394931 m!3764777))

(declare-fun m!3764779 () Bool)

(assert (=> b!3394931 m!3764779))

(assert (=> b!3394931 m!3764773))

(declare-fun m!3764781 () Bool)

(assert (=> b!3394931 m!3764781))

(assert (=> b!3394931 m!3764781))

(declare-fun m!3764783 () Bool)

(assert (=> b!3394931 m!3764783))

(declare-fun m!3764785 () Bool)

(assert (=> b!3394931 m!3764785))

(assert (=> b!3394931 m!3764783))

(declare-fun m!3764787 () Bool)

(assert (=> b!3394931 m!3764787))

(declare-fun m!3764789 () Bool)

(assert (=> b!3394931 m!3764789))

(declare-fun m!3764791 () Bool)

(assert (=> b!3394931 m!3764791))

(declare-fun m!3764793 () Bool)

(assert (=> b!3394931 m!3764793))

(declare-fun m!3764795 () Bool)

(assert (=> b!3394931 m!3764795))

(assert (=> b!3394931 m!3764789))

(assert (=> b!3394931 m!3764777))

(declare-fun m!3764797 () Bool)

(assert (=> b!3394931 m!3764797))

(assert (=> b!3394147 d!965137))

(declare-fun d!965139 () Bool)

(declare-fun lt!1153824 () BalanceConc!21900)

(assert (=> d!965139 (= (list!13367 lt!1153824) (printList!1521 thiss!18206 (list!13369 lt!1153530)))))

(assert (=> d!965139 (= lt!1153824 (printTailRec!1468 thiss!18206 lt!1153530 0 (BalanceConc!21901 Empty!11143)))))

(assert (=> d!965139 (= (print!2038 thiss!18206 lt!1153530) lt!1153824)))

(declare-fun bs!555798 () Bool)

(assert (= bs!555798 d!965139))

(declare-fun m!3764799 () Bool)

(assert (=> bs!555798 m!3764799))

(assert (=> bs!555798 m!3764793))

(assert (=> bs!555798 m!3764793))

(declare-fun m!3764801 () Bool)

(assert (=> bs!555798 m!3764801))

(assert (=> bs!555798 m!3763929))

(assert (=> b!3394147 d!965139))

(declare-fun d!965141 () Bool)

(declare-fun e!2107189 () Bool)

(assert (=> d!965141 e!2107189))

(declare-fun res!1373441 () Bool)

(assert (=> d!965141 (=> (not res!1373441) (not e!2107189))))

(declare-fun lt!1153827 () BalanceConc!21902)

(assert (=> d!965141 (= res!1373441 (= (list!13369 lt!1153827) (Cons!36913 (h!42333 tokens!494) Nil!36913)))))

(declare-fun singleton!1086 (Token!10134) BalanceConc!21902)

(assert (=> d!965141 (= lt!1153827 (singleton!1086 (h!42333 tokens!494)))))

(assert (=> d!965141 (= (singletonSeq!2480 (h!42333 tokens!494)) lt!1153827)))

(declare-fun b!3394934 () Bool)

(declare-fun isBalanced!3365 (Conc!11144) Bool)

(assert (=> b!3394934 (= e!2107189 (isBalanced!3365 (c!578612 lt!1153827)))))

(assert (= (and d!965141 res!1373441) b!3394934))

(declare-fun m!3764803 () Bool)

(assert (=> d!965141 m!3764803))

(declare-fun m!3764805 () Bool)

(assert (=> d!965141 m!3764805))

(declare-fun m!3764807 () Bool)

(assert (=> b!3394934 m!3764807))

(assert (=> b!3394147 d!965141))

(declare-fun d!965143 () Bool)

(declare-fun c!578764 () Bool)

(assert (=> d!965143 (= c!578764 ((_ is Cons!36913) (Cons!36913 (h!42333 tokens!494) Nil!36913)))))

(declare-fun e!2107192 () List!37035)

(assert (=> d!965143 (= (printList!1521 thiss!18206 (Cons!36913 (h!42333 tokens!494) Nil!36913)) e!2107192)))

(declare-fun b!3394939 () Bool)

(assert (=> b!3394939 (= e!2107192 (++!9037 (list!13367 (charsOf!3398 (h!42333 (Cons!36913 (h!42333 tokens!494) Nil!36913)))) (printList!1521 thiss!18206 (t!265068 (Cons!36913 (h!42333 tokens!494) Nil!36913)))))))

(declare-fun b!3394940 () Bool)

(assert (=> b!3394940 (= e!2107192 Nil!36911)))

(assert (= (and d!965143 c!578764) b!3394939))

(assert (= (and d!965143 (not c!578764)) b!3394940))

(declare-fun m!3764809 () Bool)

(assert (=> b!3394939 m!3764809))

(assert (=> b!3394939 m!3764809))

(declare-fun m!3764811 () Bool)

(assert (=> b!3394939 m!3764811))

(declare-fun m!3764813 () Bool)

(assert (=> b!3394939 m!3764813))

(assert (=> b!3394939 m!3764811))

(assert (=> b!3394939 m!3764813))

(declare-fun m!3764815 () Bool)

(assert (=> b!3394939 m!3764815))

(assert (=> b!3394147 d!965143))

(declare-fun d!965145 () Bool)

(assert (=> d!965145 (dynLambda!15386 lambda!120723 (h!42333 tokens!494))))

(declare-fun lt!1153830 () Unit!52082)

(declare-fun choose!19688 (List!37037 Int Token!10134) Unit!52082)

(assert (=> d!965145 (= lt!1153830 (choose!19688 tokens!494 lambda!120723 (h!42333 tokens!494)))))

(declare-fun e!2107195 () Bool)

(assert (=> d!965145 e!2107195))

(declare-fun res!1373444 () Bool)

(assert (=> d!965145 (=> (not res!1373444) (not e!2107195))))

(assert (=> d!965145 (= res!1373444 (forall!7789 tokens!494 lambda!120723))))

(assert (=> d!965145 (= (forallContained!1331 tokens!494 lambda!120723 (h!42333 tokens!494)) lt!1153830)))

(declare-fun b!3394943 () Bool)

(declare-fun contains!6777 (List!37037 Token!10134) Bool)

(assert (=> b!3394943 (= e!2107195 (contains!6777 tokens!494 (h!42333 tokens!494)))))

(assert (= (and d!965145 res!1373444) b!3394943))

(declare-fun b_lambda!96627 () Bool)

(assert (=> (not b_lambda!96627) (not d!965145)))

(assert (=> d!965145 m!3764153))

(declare-fun m!3764817 () Bool)

(assert (=> d!965145 m!3764817))

(assert (=> d!965145 m!3763915))

(declare-fun m!3764819 () Bool)

(assert (=> b!3394943 m!3764819))

(assert (=> b!3394126 d!965145))

(declare-fun b!3394954 () Bool)

(declare-fun e!2107198 () Bool)

(declare-fun tp_is_empty!17489 () Bool)

(assert (=> b!3394954 (= e!2107198 tp_is_empty!17489)))

(declare-fun b!3394956 () Bool)

(declare-fun tp!1059608 () Bool)

(assert (=> b!3394956 (= e!2107198 tp!1059608)))

(declare-fun b!3394955 () Bool)

(declare-fun tp!1059607 () Bool)

(declare-fun tp!1059609 () Bool)

(assert (=> b!3394955 (= e!2107198 (and tp!1059607 tp!1059609))))

(declare-fun b!3394957 () Bool)

(declare-fun tp!1059605 () Bool)

(declare-fun tp!1059606 () Bool)

(assert (=> b!3394957 (= e!2107198 (and tp!1059605 tp!1059606))))

(assert (=> b!3394128 (= tp!1059523 e!2107198)))

(assert (= (and b!3394128 ((_ is ElementMatch!10143) (regex!5384 (rule!7942 (h!42333 tokens!494))))) b!3394954))

(assert (= (and b!3394128 ((_ is Concat!15758) (regex!5384 (rule!7942 (h!42333 tokens!494))))) b!3394955))

(assert (= (and b!3394128 ((_ is Star!10143) (regex!5384 (rule!7942 (h!42333 tokens!494))))) b!3394956))

(assert (= (and b!3394128 ((_ is Union!10143) (regex!5384 (rule!7942 (h!42333 tokens!494))))) b!3394957))

(declare-fun b!3394958 () Bool)

(declare-fun e!2107199 () Bool)

(assert (=> b!3394958 (= e!2107199 tp_is_empty!17489)))

(declare-fun b!3394960 () Bool)

(declare-fun tp!1059613 () Bool)

(assert (=> b!3394960 (= e!2107199 tp!1059613)))

(declare-fun b!3394959 () Bool)

(declare-fun tp!1059612 () Bool)

(declare-fun tp!1059614 () Bool)

(assert (=> b!3394959 (= e!2107199 (and tp!1059612 tp!1059614))))

(declare-fun b!3394961 () Bool)

(declare-fun tp!1059610 () Bool)

(declare-fun tp!1059611 () Bool)

(assert (=> b!3394961 (= e!2107199 (and tp!1059610 tp!1059611))))

(assert (=> b!3394139 (= tp!1059526 e!2107199)))

(assert (= (and b!3394139 ((_ is ElementMatch!10143) (regex!5384 (rule!7942 separatorToken!241)))) b!3394958))

(assert (= (and b!3394139 ((_ is Concat!15758) (regex!5384 (rule!7942 separatorToken!241)))) b!3394959))

(assert (= (and b!3394139 ((_ is Star!10143) (regex!5384 (rule!7942 separatorToken!241)))) b!3394960))

(assert (= (and b!3394139 ((_ is Union!10143) (regex!5384 (rule!7942 separatorToken!241)))) b!3394961))

(declare-fun b!3394962 () Bool)

(declare-fun e!2107200 () Bool)

(assert (=> b!3394962 (= e!2107200 tp_is_empty!17489)))

(declare-fun b!3394964 () Bool)

(declare-fun tp!1059618 () Bool)

(assert (=> b!3394964 (= e!2107200 tp!1059618)))

(declare-fun b!3394963 () Bool)

(declare-fun tp!1059617 () Bool)

(declare-fun tp!1059619 () Bool)

(assert (=> b!3394963 (= e!2107200 (and tp!1059617 tp!1059619))))

(declare-fun b!3394965 () Bool)

(declare-fun tp!1059615 () Bool)

(declare-fun tp!1059616 () Bool)

(assert (=> b!3394965 (= e!2107200 (and tp!1059615 tp!1059616))))

(assert (=> b!3394123 (= tp!1059521 e!2107200)))

(assert (= (and b!3394123 ((_ is ElementMatch!10143) (regex!5384 (h!42332 rules!2135)))) b!3394962))

(assert (= (and b!3394123 ((_ is Concat!15758) (regex!5384 (h!42332 rules!2135)))) b!3394963))

(assert (= (and b!3394123 ((_ is Star!10143) (regex!5384 (h!42332 rules!2135)))) b!3394964))

(assert (= (and b!3394123 ((_ is Union!10143) (regex!5384 (h!42332 rules!2135)))) b!3394965))

(declare-fun b!3394976 () Bool)

(declare-fun b_free!88765 () Bool)

(declare-fun b_next!89469 () Bool)

(assert (=> b!3394976 (= b_free!88765 (not b_next!89469))))

(declare-fun tb!181747 () Bool)

(declare-fun t!265132 () Bool)

(assert (=> (and b!3394976 (= (toValue!7580 (transformation!5384 (h!42332 (t!265067 rules!2135)))) (toValue!7580 (transformation!5384 (rule!7942 (h!42333 tokens!494))))) t!265132) tb!181747))

(declare-fun result!225304 () Bool)

(assert (= result!225304 result!225266))

(assert (=> d!965013 t!265132))

(declare-fun b_and!236571 () Bool)

(declare-fun tp!1059630 () Bool)

(assert (=> b!3394976 (= tp!1059630 (and (=> t!265132 result!225304) b_and!236571))))

(declare-fun b_free!88767 () Bool)

(declare-fun b_next!89471 () Bool)

(assert (=> b!3394976 (= b_free!88767 (not b_next!89471))))

(declare-fun t!265134 () Bool)

(declare-fun tb!181749 () Bool)

(assert (=> (and b!3394976 (= (toChars!7439 (transformation!5384 (h!42332 (t!265067 rules!2135)))) (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494))))) t!265134) tb!181749))

(declare-fun result!225306 () Bool)

(assert (= result!225306 result!225258))

(assert (=> b!3394484 t!265134))

(assert (=> d!965019 t!265134))

(declare-fun tb!181751 () Bool)

(declare-fun t!265136 () Bool)

(assert (=> (and b!3394976 (= (toChars!7439 (transformation!5384 (h!42332 (t!265067 rules!2135)))) (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241)))) t!265136) tb!181751))

(declare-fun result!225308 () Bool)

(assert (= result!225308 result!225274))

(assert (=> b!3394723 t!265136))

(assert (=> d!965067 t!265136))

(declare-fun b_and!236573 () Bool)

(declare-fun tp!1059631 () Bool)

(assert (=> b!3394976 (= tp!1059631 (and (=> t!265134 result!225306) (=> t!265136 result!225308) b_and!236573))))

(declare-fun e!2107211 () Bool)

(assert (=> b!3394976 (= e!2107211 (and tp!1059630 tp!1059631))))

(declare-fun tp!1059628 () Bool)

(declare-fun b!3394975 () Bool)

(declare-fun e!2107210 () Bool)

(assert (=> b!3394975 (= e!2107210 (and tp!1059628 (inv!50001 (tag!5966 (h!42332 (t!265067 rules!2135)))) (inv!50005 (transformation!5384 (h!42332 (t!265067 rules!2135)))) e!2107211))))

(declare-fun b!3394974 () Bool)

(declare-fun e!2107212 () Bool)

(declare-fun tp!1059629 () Bool)

(assert (=> b!3394974 (= e!2107212 (and e!2107210 tp!1059629))))

(assert (=> b!3394150 (= tp!1059519 e!2107212)))

(assert (= b!3394975 b!3394976))

(assert (= b!3394974 b!3394975))

(assert (= (and b!3394150 ((_ is Cons!36912) (t!265067 rules!2135))) b!3394974))

(declare-fun m!3764821 () Bool)

(assert (=> b!3394975 m!3764821))

(declare-fun m!3764823 () Bool)

(assert (=> b!3394975 m!3764823))

(declare-fun b!3394981 () Bool)

(declare-fun e!2107215 () Bool)

(declare-fun tp!1059634 () Bool)

(assert (=> b!3394981 (= e!2107215 (and tp_is_empty!17489 tp!1059634))))

(assert (=> b!3394153 (= tp!1059520 e!2107215)))

(assert (= (and b!3394153 ((_ is Cons!36911) (originalCharacters!6098 separatorToken!241))) b!3394981))

(declare-fun b!3394995 () Bool)

(declare-fun b_free!88769 () Bool)

(declare-fun b_next!89473 () Bool)

(assert (=> b!3394995 (= b_free!88769 (not b_next!89473))))

(declare-fun t!265138 () Bool)

(declare-fun tb!181753 () Bool)

(assert (=> (and b!3394995 (= (toValue!7580 (transformation!5384 (rule!7942 (h!42333 (t!265068 tokens!494))))) (toValue!7580 (transformation!5384 (rule!7942 (h!42333 tokens!494))))) t!265138) tb!181753))

(declare-fun result!225314 () Bool)

(assert (= result!225314 result!225266))

(assert (=> d!965013 t!265138))

(declare-fun b_and!236575 () Bool)

(declare-fun tp!1059645 () Bool)

(assert (=> b!3394995 (= tp!1059645 (and (=> t!265138 result!225314) b_and!236575))))

(declare-fun b_free!88771 () Bool)

(declare-fun b_next!89475 () Bool)

(assert (=> b!3394995 (= b_free!88771 (not b_next!89475))))

(declare-fun t!265140 () Bool)

(declare-fun tb!181755 () Bool)

(assert (=> (and b!3394995 (= (toChars!7439 (transformation!5384 (rule!7942 (h!42333 (t!265068 tokens!494))))) (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494))))) t!265140) tb!181755))

(declare-fun result!225316 () Bool)

(assert (= result!225316 result!225258))

(assert (=> b!3394484 t!265140))

(assert (=> d!965019 t!265140))

(declare-fun tb!181757 () Bool)

(declare-fun t!265142 () Bool)

(assert (=> (and b!3394995 (= (toChars!7439 (transformation!5384 (rule!7942 (h!42333 (t!265068 tokens!494))))) (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241)))) t!265142) tb!181757))

(declare-fun result!225318 () Bool)

(assert (= result!225318 result!225274))

(assert (=> b!3394723 t!265142))

(assert (=> d!965067 t!265142))

(declare-fun tp!1059647 () Bool)

(declare-fun b_and!236577 () Bool)

(assert (=> b!3394995 (= tp!1059647 (and (=> t!265140 result!225316) (=> t!265142 result!225318) b_and!236577))))

(declare-fun e!2107229 () Bool)

(declare-fun e!2107232 () Bool)

(declare-fun tp!1059648 () Bool)

(declare-fun b!3394993 () Bool)

(assert (=> b!3394993 (= e!2107229 (and (inv!21 (value!173904 (h!42333 (t!265068 tokens!494)))) e!2107232 tp!1059648))))

(declare-fun e!2107230 () Bool)

(declare-fun tp!1059646 () Bool)

(declare-fun b!3394992 () Bool)

(assert (=> b!3394992 (= e!2107230 (and (inv!50004 (h!42333 (t!265068 tokens!494))) e!2107229 tp!1059646))))

(declare-fun tp!1059649 () Bool)

(declare-fun e!2107231 () Bool)

(declare-fun b!3394994 () Bool)

(assert (=> b!3394994 (= e!2107232 (and tp!1059649 (inv!50001 (tag!5966 (rule!7942 (h!42333 (t!265068 tokens!494))))) (inv!50005 (transformation!5384 (rule!7942 (h!42333 (t!265068 tokens!494))))) e!2107231))))

(assert (=> b!3394995 (= e!2107231 (and tp!1059645 tp!1059647))))

(assert (=> b!3394120 (= tp!1059522 e!2107230)))

(assert (= b!3394994 b!3394995))

(assert (= b!3394993 b!3394994))

(assert (= b!3394992 b!3394993))

(assert (= (and b!3394120 ((_ is Cons!36913) (t!265068 tokens!494))) b!3394992))

(declare-fun m!3764825 () Bool)

(assert (=> b!3394993 m!3764825))

(declare-fun m!3764827 () Bool)

(assert (=> b!3394992 m!3764827))

(declare-fun m!3764829 () Bool)

(assert (=> b!3394994 m!3764829))

(declare-fun m!3764831 () Bool)

(assert (=> b!3394994 m!3764831))

(declare-fun b!3394996 () Bool)

(declare-fun e!2107234 () Bool)

(declare-fun tp!1059650 () Bool)

(assert (=> b!3394996 (= e!2107234 (and tp_is_empty!17489 tp!1059650))))

(assert (=> b!3394131 (= tp!1059528 e!2107234)))

(assert (= (and b!3394131 ((_ is Cons!36911) (originalCharacters!6098 (h!42333 tokens!494)))) b!3394996))

(declare-fun b_lambda!96629 () Bool)

(assert (= b_lambda!96601 (or (and b!3394127 b_free!88751 (= (toChars!7439 (transformation!5384 (h!42332 rules!2135))) (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494)))))) (and b!3394995 b_free!88771 (= (toChars!7439 (transformation!5384 (rule!7942 (h!42333 (t!265068 tokens!494))))) (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494)))))) (and b!3394142 b_free!88747 (= (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241))) (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494)))))) (and b!3394135 b_free!88755) (and b!3394976 b_free!88767 (= (toChars!7439 (transformation!5384 (h!42332 (t!265067 rules!2135)))) (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494)))))) b_lambda!96629)))

(declare-fun b_lambda!96631 () Bool)

(assert (= b_lambda!96609 (or (and b!3394127 b_free!88751 (= (toChars!7439 (transformation!5384 (h!42332 rules!2135))) (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241))))) (and b!3394976 b_free!88767 (= (toChars!7439 (transformation!5384 (h!42332 (t!265067 rules!2135)))) (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241))))) (and b!3394995 b_free!88771 (= (toChars!7439 (transformation!5384 (rule!7942 (h!42333 (t!265068 tokens!494))))) (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241))))) (and b!3394142 b_free!88747) (and b!3394135 b_free!88755 (= (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494)))) (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241))))) b_lambda!96631)))

(declare-fun b_lambda!96633 () Bool)

(assert (= b_lambda!96607 (or (and b!3394127 b_free!88751 (= (toChars!7439 (transformation!5384 (h!42332 rules!2135))) (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241))))) (and b!3394976 b_free!88767 (= (toChars!7439 (transformation!5384 (h!42332 (t!265067 rules!2135)))) (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241))))) (and b!3394995 b_free!88771 (= (toChars!7439 (transformation!5384 (rule!7942 (h!42333 (t!265068 tokens!494))))) (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241))))) (and b!3394142 b_free!88747) (and b!3394135 b_free!88755 (= (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494)))) (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241))))) b_lambda!96633)))

(declare-fun b_lambda!96635 () Bool)

(assert (= b_lambda!96627 (or b!3394118 b_lambda!96635)))

(declare-fun bs!555799 () Bool)

(declare-fun d!965147 () Bool)

(assert (= bs!555799 (and d!965147 b!3394118)))

(assert (=> bs!555799 (= (dynLambda!15386 lambda!120723 (h!42333 tokens!494)) (not (isSeparator!5384 (rule!7942 (h!42333 tokens!494)))))))

(assert (=> d!965145 d!965147))

(declare-fun b_lambda!96637 () Bool)

(assert (= b_lambda!96595 (or b!3394118 b_lambda!96637)))

(assert (=> b!3394333 d!965147))

(declare-fun b_lambda!96639 () Bool)

(assert (= b_lambda!96605 (or (and b!3394127 b_free!88751 (= (toChars!7439 (transformation!5384 (h!42332 rules!2135))) (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494)))))) (and b!3394995 b_free!88771 (= (toChars!7439 (transformation!5384 (rule!7942 (h!42333 (t!265068 tokens!494))))) (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494)))))) (and b!3394142 b_free!88747 (= (toChars!7439 (transformation!5384 (rule!7942 separatorToken!241))) (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494)))))) (and b!3394135 b_free!88755) (and b!3394976 b_free!88767 (= (toChars!7439 (transformation!5384 (h!42332 (t!265067 rules!2135)))) (toChars!7439 (transformation!5384 (rule!7942 (h!42333 tokens!494)))))) b_lambda!96639)))

(declare-fun b_lambda!96641 () Bool)

(assert (= b_lambda!96603 (or (and b!3394976 b_free!88765 (= (toValue!7580 (transformation!5384 (h!42332 (t!265067 rules!2135)))) (toValue!7580 (transformation!5384 (rule!7942 (h!42333 tokens!494)))))) (and b!3394995 b_free!88769 (= (toValue!7580 (transformation!5384 (rule!7942 (h!42333 (t!265068 tokens!494))))) (toValue!7580 (transformation!5384 (rule!7942 (h!42333 tokens!494)))))) (and b!3394142 b_free!88745 (= (toValue!7580 (transformation!5384 (rule!7942 separatorToken!241))) (toValue!7580 (transformation!5384 (rule!7942 (h!42333 tokens!494)))))) (and b!3394127 b_free!88749 (= (toValue!7580 (transformation!5384 (h!42332 rules!2135))) (toValue!7580 (transformation!5384 (rule!7942 (h!42333 tokens!494)))))) (and b!3394135 b_free!88753) b_lambda!96641)))

(check-sat (not d!965027) (not b!3394693) (not b!3394960) (not b!3394722) (not d!964997) (not d!964893) (not b!3394723) (not b!3394634) (not b_next!89455) (not b!3394915) (not b!3394708) (not b!3394234) (not b_next!89469) (not b_next!89451) (not b!3394580) (not b!3394956) (not d!965021) (not d!965061) (not b!3394471) (not d!965145) (not b!3394929) (not bm!245775) (not b!3394312) (not b_next!89457) (not b!3394638) (not b!3394463) (not b!3394720) (not b!3394547) (not b!3394310) (not d!965135) (not d!965051) (not b!3394939) (not d!964967) (not b!3394461) (not d!965069) (not d!965017) (not d!964973) (not b!3394566) (not bm!245769) (not d!964999) (not d!965039) (not bm!245774) (not b!3394478) (not b!3394311) (not b!3394993) (not b!3394628) (not d!964937) (not b!3394636) (not d!965037) (not b!3394313) (not b!3394571) (not d!965011) (not bm!245744) (not d!965137) (not b!3394663) (not b!3394906) (not b!3394574) (not b!3394695) (not d!964877) (not b!3394707) (not b!3394465) (not d!965049) (not b!3394680) (not tb!181723) (not b!3394472) (not b!3394724) (not b!3394961) (not b!3394957) b_and!236535 (not bm!245772) b_and!236575 (not d!965071) (not d!964931) (not d!964971) (not b_lambda!96639) (not b!3394537) b_and!236553 (not tb!181729) (not b!3394235) (not b!3394233) b_and!236533 (not b!3394981) (not bm!245770) (not b!3394974) (not b!3394630) (not b!3394701) (not bm!245767) (not b!3394975) (not b!3394627) (not bm!245768) (not d!965047) (not b!3394678) (not b!3394736) (not b!3394714) (not b!3394955) (not d!965075) (not b!3394334) (not bm!245773) (not b_next!89473) (not b!3394469) (not b!3394570) (not b_next!89471) (not b!3394619) (not b_lambda!96641) (not d!965033) (not b!3394431) (not d!965003) (not b!3394620) (not b_next!89449) (not b!3394718) (not b!3394725) (not b!3394652) (not b!3394328) (not b!3394675) b_and!236555 (not b!3394316) (not b!3394606) (not b!3394569) (not b!3394504) (not b!3394931) (not bm!245752) (not b!3394994) b_and!236577 (not b!3394963) (not b!3394934) (not d!965031) (not d!965019) (not b!3394665) (not b!3394664) b_and!236571 (not b!3394642) (not d!965063) (not d!965015) (not d!965067) (not b!3394964) b_and!236537 (not b_next!89475) (not b_next!89453) (not d!964995) (not b!3394605) (not d!965005) (not b!3394943) (not b!3394484) (not b!3394692) (not d!964879) (not b_lambda!96635) (not b!3394996) (not b!3394959) (not b!3394699) (not d!965007) (not d!965139) (not d!965131) (not d!965141) (not b!3394705) (not d!965043) (not d!964961) (not b!3394429) (not b_lambda!96637) (not b!3394669) (not d!965077) (not b!3394697) (not b!3394965) (not b!3394236) (not d!964899) (not b!3394317) (not b!3394645) (not b!3394573) (not d!965059) (not b_lambda!96629) (not b!3394922) (not b!3394567) (not d!965009) (not d!964897) (not b!3394485) (not tb!181717) (not b!3394572) (not b!3394490) (not d!964985) (not b!3394667) tp_is_empty!17489 (not b!3394644) (not b_lambda!96633) (not b!3394677) (not b!3394309) (not d!965133) (not b_next!89459) (not b!3394992) (not d!965065) (not b!3394671) (not b!3394738) (not b!3394538) (not b!3394622) b_and!236573 (not b!3394479) b_and!236551 (not b!3394717) (not bm!245765) (not b!3394654) (not b!3394430) (not b!3394314) (not b_lambda!96631) (not b!3394735) (not d!965025))
(check-sat (not b_next!89455) (not b_next!89469) (not b_next!89451) (not b_next!89457) b_and!236553 b_and!236533 (not b_next!89473) b_and!236555 b_and!236577 b_and!236571 b_and!236535 b_and!236575 (not b_next!89471) (not b_next!89449) b_and!236537 (not b_next!89475) (not b_next!89453) (not b_next!89459) b_and!236573 b_and!236551)
