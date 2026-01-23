; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!176690 () Bool)

(assert start!176690)

(declare-fun b!1777910 () Bool)

(declare-fun b_free!49311 () Bool)

(declare-fun b_next!50015 () Bool)

(assert (=> b!1777910 (= b_free!49311 (not b_next!50015))))

(declare-fun tp!503646 () Bool)

(declare-fun b_and!135979 () Bool)

(assert (=> b!1777910 (= tp!503646 b_and!135979)))

(declare-fun b_free!49313 () Bool)

(declare-fun b_next!50017 () Bool)

(assert (=> b!1777910 (= b_free!49313 (not b_next!50017))))

(declare-fun tp!503641 () Bool)

(declare-fun b_and!135981 () Bool)

(assert (=> b!1777910 (= tp!503641 b_and!135981)))

(declare-fun b!1777917 () Bool)

(declare-fun b_free!49315 () Bool)

(declare-fun b_next!50019 () Bool)

(assert (=> b!1777917 (= b_free!49315 (not b_next!50019))))

(declare-fun tp!503644 () Bool)

(declare-fun b_and!135983 () Bool)

(assert (=> b!1777917 (= tp!503644 b_and!135983)))

(declare-fun b_free!49317 () Bool)

(declare-fun b_next!50021 () Bool)

(assert (=> b!1777917 (= b_free!49317 (not b_next!50021))))

(declare-fun tp!503638 () Bool)

(declare-fun b_and!135985 () Bool)

(assert (=> b!1777917 (= tp!503638 b_and!135985)))

(declare-fun b!1777928 () Bool)

(declare-fun b_free!49319 () Bool)

(declare-fun b_next!50023 () Bool)

(assert (=> b!1777928 (= b_free!49319 (not b_next!50023))))

(declare-fun tp!503636 () Bool)

(declare-fun b_and!135987 () Bool)

(assert (=> b!1777928 (= tp!503636 b_and!135987)))

(declare-fun b_free!49321 () Bool)

(declare-fun b_next!50025 () Bool)

(assert (=> b!1777928 (= b_free!49321 (not b_next!50025))))

(declare-fun tp!503640 () Bool)

(declare-fun b_and!135989 () Bool)

(assert (=> b!1777928 (= tp!503640 b_and!135989)))

(declare-fun b!1777942 () Bool)

(declare-fun e!1137825 () Bool)

(assert (=> b!1777942 (= e!1137825 true)))

(declare-fun b!1777941 () Bool)

(declare-fun e!1137824 () Bool)

(assert (=> b!1777941 (= e!1137824 e!1137825)))

(declare-fun b!1777940 () Bool)

(declare-fun e!1137823 () Bool)

(assert (=> b!1777940 (= e!1137823 e!1137824)))

(declare-fun b!1777916 () Bool)

(assert (=> b!1777916 e!1137823))

(assert (= b!1777941 b!1777942))

(assert (= b!1777940 b!1777941))

(assert (= b!1777916 b!1777940))

(declare-fun order!12597 () Int)

(declare-fun lambda!70596 () Int)

(declare-fun order!12595 () Int)

(declare-datatypes ((List!19655 0))(
  ( (Nil!19585) (Cons!19585 (h!24986 (_ BitVec 16)) (t!166202 List!19655)) )
))
(declare-datatypes ((TokenValue!3597 0))(
  ( (FloatLiteralValue!7194 (text!25624 List!19655)) (TokenValueExt!3596 (__x!12496 Int)) (Broken!17985 (value!109596 List!19655)) (Object!3666) (End!3597) (Def!3597) (Underscore!3597) (Match!3597) (Else!3597) (Error!3597) (Case!3597) (If!3597) (Extends!3597) (Abstract!3597) (Class!3597) (Val!3597) (DelimiterValue!7194 (del!3657 List!19655)) (KeywordValue!3603 (value!109597 List!19655)) (CommentValue!7194 (value!109598 List!19655)) (WhitespaceValue!7194 (value!109599 List!19655)) (IndentationValue!3597 (value!109600 List!19655)) (String!22316) (Int32!3597) (Broken!17986 (value!109601 List!19655)) (Boolean!3598) (Unit!33837) (OperatorValue!3600 (op!3657 List!19655)) (IdentifierValue!7194 (value!109602 List!19655)) (IdentifierValue!7195 (value!109603 List!19655)) (WhitespaceValue!7195 (value!109604 List!19655)) (True!7194) (False!7194) (Broken!17987 (value!109605 List!19655)) (Broken!17988 (value!109606 List!19655)) (True!7195) (RightBrace!3597) (RightBracket!3597) (Colon!3597) (Null!3597) (Comma!3597) (LeftBracket!3597) (False!7195) (LeftBrace!3597) (ImaginaryLiteralValue!3597 (text!25625 List!19655)) (StringLiteralValue!10791 (value!109607 List!19655)) (EOFValue!3597 (value!109608 List!19655)) (IdentValue!3597 (value!109609 List!19655)) (DelimiterValue!7195 (value!109610 List!19655)) (DedentValue!3597 (value!109611 List!19655)) (NewLineValue!3597 (value!109612 List!19655)) (IntegerValue!10791 (value!109613 (_ BitVec 32)) (text!25626 List!19655)) (IntegerValue!10792 (value!109614 Int) (text!25627 List!19655)) (Times!3597) (Or!3597) (Equal!3597) (Minus!3597) (Broken!17989 (value!109615 List!19655)) (And!3597) (Div!3597) (LessEqual!3597) (Mod!3597) (Concat!8432) (Not!3597) (Plus!3597) (SpaceValue!3597 (value!109616 List!19655)) (IntegerValue!10793 (value!109617 Int) (text!25628 List!19655)) (StringLiteralValue!10792 (text!25629 List!19655)) (FloatLiteralValue!7195 (text!25630 List!19655)) (BytesLiteralValue!3597 (value!109618 List!19655)) (CommentValue!7195 (value!109619 List!19655)) (StringLiteralValue!10793 (value!109620 List!19655)) (ErrorTokenValue!3597 (msg!3658 List!19655)) )
))
(declare-datatypes ((C!9844 0))(
  ( (C!9845 (val!5518 Int)) )
))
(declare-datatypes ((List!19656 0))(
  ( (Nil!19586) (Cons!19586 (h!24987 C!9844) (t!166203 List!19656)) )
))
(declare-datatypes ((Regex!4835 0))(
  ( (ElementMatch!4835 (c!289332 C!9844)) (Concat!8433 (regOne!10182 Regex!4835) (regTwo!10182 Regex!4835)) (EmptyExpr!4835) (Star!4835 (reg!5164 Regex!4835)) (EmptyLang!4835) (Union!4835 (regOne!10183 Regex!4835) (regTwo!10183 Regex!4835)) )
))
(declare-datatypes ((String!22317 0))(
  ( (String!22318 (value!109621 String)) )
))
(declare-datatypes ((IArray!13035 0))(
  ( (IArray!13036 (innerList!6575 List!19656)) )
))
(declare-datatypes ((Conc!6515 0))(
  ( (Node!6515 (left!15694 Conc!6515) (right!16024 Conc!6515) (csize!13260 Int) (cheight!6726 Int)) (Leaf!9489 (xs!9391 IArray!13035) (csize!13261 Int)) (Empty!6515) )
))
(declare-datatypes ((BalanceConc!12974 0))(
  ( (BalanceConc!12975 (c!289333 Conc!6515)) )
))
(declare-datatypes ((TokenValueInjection!6854 0))(
  ( (TokenValueInjection!6855 (toValue!5034 Int) (toChars!4893 Int)) )
))
(declare-datatypes ((Rule!6814 0))(
  ( (Rule!6815 (regex!3507 Regex!4835) (tag!3897 String!22317) (isSeparator!3507 Bool) (transformation!3507 TokenValueInjection!6854)) )
))
(declare-datatypes ((Token!6580 0))(
  ( (Token!6581 (value!109622 TokenValue!3597) (rule!5571 Rule!6814) (size!15560 Int) (originalCharacters!4321 List!19656)) )
))
(declare-datatypes ((tuple2!19182 0))(
  ( (tuple2!19183 (_1!10993 Token!6580) (_2!10993 List!19656)) )
))
(declare-fun lt!690098 () tuple2!19182)

(declare-fun dynLambda!9584 (Int Int) Int)

(declare-fun dynLambda!9585 (Int Int) Int)

(assert (=> b!1777942 (< (dynLambda!9584 order!12595 (toValue!5034 (transformation!3507 (rule!5571 (_1!10993 lt!690098))))) (dynLambda!9585 order!12597 lambda!70596))))

(declare-fun order!12599 () Int)

(declare-fun dynLambda!9586 (Int Int) Int)

(assert (=> b!1777942 (< (dynLambda!9586 order!12599 (toChars!4893 (transformation!3507 (rule!5571 (_1!10993 lt!690098))))) (dynLambda!9585 order!12597 lambda!70596))))

(declare-fun b!1777898 () Bool)

(declare-fun res!801155 () Bool)

(declare-fun e!1137814 () Bool)

(assert (=> b!1777898 (=> (not res!801155) (not e!1137814))))

(declare-datatypes ((LexerInterface!3136 0))(
  ( (LexerInterfaceExt!3133 (__x!12497 Int)) (Lexer!3134) )
))
(declare-fun thiss!24550 () LexerInterface!3136)

(declare-datatypes ((List!19657 0))(
  ( (Nil!19587) (Cons!19587 (h!24988 Rule!6814) (t!166204 List!19657)) )
))
(declare-fun rules!3447 () List!19657)

(declare-fun rulesInvariant!2805 (LexerInterface!3136 List!19657) Bool)

(assert (=> b!1777898 (= res!801155 (rulesInvariant!2805 thiss!24550 rules!3447))))

(declare-fun b!1777899 () Bool)

(declare-fun e!1137791 () Bool)

(declare-fun e!1137811 () Bool)

(assert (=> b!1777899 (= e!1137791 e!1137811)))

(declare-fun res!801154 () Bool)

(assert (=> b!1777899 (=> (not res!801154) (not e!1137811))))

(declare-fun lt!690110 () tuple2!19182)

(declare-fun token!523 () Token!6580)

(assert (=> b!1777899 (= res!801154 (= (_1!10993 lt!690110) token!523))))

(declare-datatypes ((Option!4036 0))(
  ( (None!4035) (Some!4035 (v!25520 tuple2!19182)) )
))
(declare-fun lt!690088 () Option!4036)

(declare-fun get!6007 (Option!4036) tuple2!19182)

(assert (=> b!1777899 (= lt!690110 (get!6007 lt!690088))))

(declare-fun b!1777900 () Bool)

(assert (=> b!1777900 (= e!1137814 e!1137791)))

(declare-fun res!801150 () Bool)

(assert (=> b!1777900 (=> (not res!801150) (not e!1137791))))

(declare-fun isDefined!3379 (Option!4036) Bool)

(assert (=> b!1777900 (= res!801150 (isDefined!3379 lt!690088))))

(declare-fun lt!690109 () List!19656)

(declare-fun maxPrefix!1690 (LexerInterface!3136 List!19657 List!19656) Option!4036)

(assert (=> b!1777900 (= lt!690088 (maxPrefix!1690 thiss!24550 rules!3447 lt!690109))))

(declare-fun lt!690084 () BalanceConc!12974)

(declare-fun list!7961 (BalanceConc!12974) List!19656)

(assert (=> b!1777900 (= lt!690109 (list!7961 lt!690084))))

(declare-fun charsOf!2156 (Token!6580) BalanceConc!12974)

(assert (=> b!1777900 (= lt!690084 (charsOf!2156 token!523))))

(declare-fun b!1777901 () Bool)

(declare-fun e!1137793 () Bool)

(declare-fun e!1137807 () Bool)

(assert (=> b!1777901 (= e!1137793 e!1137807)))

(declare-fun res!801141 () Bool)

(assert (=> b!1777901 (=> res!801141 e!1137807)))

(declare-fun lt!690100 () Regex!4835)

(declare-fun lt!690111 () List!19656)

(declare-fun prefixMatch!718 (Regex!4835 List!19656) Bool)

(assert (=> b!1777901 (= res!801141 (prefixMatch!718 lt!690100 lt!690111))))

(declare-fun suffix!1421 () List!19656)

(declare-fun ++!5331 (List!19656 List!19656) List!19656)

(declare-fun head!4148 (List!19656) C!9844)

(assert (=> b!1777901 (= lt!690111 (++!5331 lt!690109 (Cons!19586 (head!4148 suffix!1421) Nil!19586)))))

(declare-fun rulesRegex!863 (LexerInterface!3136 List!19657) Regex!4835)

(assert (=> b!1777901 (= lt!690100 (rulesRegex!863 thiss!24550 rules!3447))))

(declare-fun b!1777902 () Bool)

(declare-datatypes ((Unit!33838 0))(
  ( (Unit!33839) )
))
(declare-fun e!1137796 () Unit!33838)

(declare-fun Unit!33840 () Unit!33838)

(assert (=> b!1777902 (= e!1137796 Unit!33840)))

(declare-fun lt!690092 () Unit!33838)

(declare-fun lt!690107 () List!19656)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!214 (LexerInterface!3136 List!19657 List!19656 Token!6580 Rule!6814 List!19656) Unit!33838)

(assert (=> b!1777902 (= lt!690092 (lemmaMaxPrefixThenMatchesRulesRegex!214 thiss!24550 rules!3447 lt!690107 (_1!10993 lt!690098) (rule!5571 (_1!10993 lt!690098)) (_2!10993 lt!690098)))))

(declare-fun lt!690094 () List!19656)

(declare-fun matchR!2308 (Regex!4835 List!19656) Bool)

(assert (=> b!1777902 (matchR!2308 lt!690100 lt!690094)))

(declare-fun lt!690113 () List!19656)

(declare-fun getSuffix!914 (List!19656 List!19656) List!19656)

(assert (=> b!1777902 (= lt!690113 (getSuffix!914 lt!690107 lt!690109))))

(declare-fun lt!690082 () Unit!33838)

(declare-fun lemmaSamePrefixThenSameSuffix!858 (List!19656 List!19656 List!19656 List!19656 List!19656) Unit!33838)

(assert (=> b!1777902 (= lt!690082 (lemmaSamePrefixThenSameSuffix!858 lt!690109 suffix!1421 lt!690109 lt!690113 lt!690107))))

(assert (=> b!1777902 (= suffix!1421 lt!690113)))

(declare-fun lt!690114 () Unit!33838)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!283 (List!19656 List!19656) Unit!33838)

(assert (=> b!1777902 (= lt!690114 (lemmaAddHeadSuffixToPrefixStillPrefix!283 lt!690109 lt!690107))))

(declare-fun isPrefix!1747 (List!19656 List!19656) Bool)

(assert (=> b!1777902 (isPrefix!1747 (++!5331 lt!690109 (Cons!19586 (head!4148 lt!690113) Nil!19586)) lt!690107)))

(declare-fun lt!690096 () Unit!33838)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!155 (List!19656 List!19656 List!19656) Unit!33838)

(assert (=> b!1777902 (= lt!690096 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!155 lt!690094 lt!690111 lt!690107))))

(assert (=> b!1777902 (isPrefix!1747 lt!690111 lt!690094)))

(declare-fun lt!690089 () Unit!33838)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!146 (Regex!4835 List!19656 List!19656) Unit!33838)

(assert (=> b!1777902 (= lt!690089 (lemmaNotPrefixMatchThenCannotMatchLonger!146 lt!690100 lt!690111 lt!690094))))

(assert (=> b!1777902 false))

(declare-fun b!1777903 () Bool)

(declare-fun res!801148 () Bool)

(declare-fun e!1137799 () Bool)

(assert (=> b!1777903 (=> res!801148 e!1137799)))

(declare-fun lt!690085 () BalanceConc!12974)

(declare-fun dynLambda!9587 (Int TokenValue!3597) BalanceConc!12974)

(assert (=> b!1777903 (= res!801148 (not (= lt!690085 (dynLambda!9587 (toChars!4893 (transformation!3507 (rule!5571 (_1!10993 lt!690098)))) (value!109622 (_1!10993 lt!690098))))))))

(declare-fun b!1777904 () Bool)

(declare-fun res!801152 () Bool)

(assert (=> b!1777904 (=> res!801152 e!1137793)))

(declare-fun isEmpty!12374 (List!19656) Bool)

(assert (=> b!1777904 (= res!801152 (isEmpty!12374 suffix!1421))))

(declare-fun b!1777905 () Bool)

(declare-fun e!1137800 () Bool)

(assert (=> b!1777905 (= e!1137800 e!1137799)))

(declare-fun res!801142 () Bool)

(assert (=> b!1777905 (=> res!801142 e!1137799)))

(declare-fun dynLambda!9588 (Int BalanceConc!12974) TokenValue!3597)

(assert (=> b!1777905 (= res!801142 (not (= (list!7961 (dynLambda!9587 (toChars!4893 (transformation!3507 (rule!5571 (_1!10993 lt!690098)))) (dynLambda!9588 (toValue!5034 (transformation!3507 (rule!5571 (_1!10993 lt!690098)))) lt!690085))) lt!690094)))))

(declare-fun lt!690079 () Unit!33838)

(declare-fun lemmaSemiInverse!645 (TokenValueInjection!6854 BalanceConc!12974) Unit!33838)

(assert (=> b!1777905 (= lt!690079 (lemmaSemiInverse!645 (transformation!3507 (rule!5571 (_1!10993 lt!690098))) lt!690085))))

(declare-fun b!1777906 () Bool)

(declare-fun e!1137797 () Bool)

(declare-fun e!1137816 () Bool)

(assert (=> b!1777906 (= e!1137797 e!1137816)))

(declare-fun res!801146 () Bool)

(assert (=> b!1777906 (=> res!801146 e!1137816)))

(declare-fun lt!690083 () Option!4036)

(declare-fun lt!690101 () List!19656)

(assert (=> b!1777906 (= res!801146 (or (not (= lt!690101 (_2!10993 lt!690098))) (not (= lt!690083 (Some!4035 (tuple2!19183 (_1!10993 lt!690098) lt!690101))))))))

(assert (=> b!1777906 (= (_2!10993 lt!690098) lt!690101)))

(declare-fun lt!690104 () Unit!33838)

(assert (=> b!1777906 (= lt!690104 (lemmaSamePrefixThenSameSuffix!858 lt!690094 (_2!10993 lt!690098) lt!690094 lt!690101 lt!690107))))

(assert (=> b!1777906 (= lt!690101 (getSuffix!914 lt!690107 lt!690094))))

(declare-fun lt!690097 () TokenValue!3597)

(declare-fun lt!690095 () Int)

(assert (=> b!1777906 (= lt!690083 (Some!4035 (tuple2!19183 (Token!6581 lt!690097 (rule!5571 (_1!10993 lt!690098)) lt!690095 lt!690094) (_2!10993 lt!690098))))))

(declare-fun maxPrefixOneRule!1059 (LexerInterface!3136 Rule!6814 List!19656) Option!4036)

(assert (=> b!1777906 (= lt!690083 (maxPrefixOneRule!1059 thiss!24550 (rule!5571 (_1!10993 lt!690098)) lt!690107))))

(declare-fun size!15561 (List!19656) Int)

(assert (=> b!1777906 (= lt!690095 (size!15561 lt!690094))))

(declare-fun apply!5307 (TokenValueInjection!6854 BalanceConc!12974) TokenValue!3597)

(declare-fun seqFromList!2476 (List!19656) BalanceConc!12974)

(assert (=> b!1777906 (= lt!690097 (apply!5307 (transformation!3507 (rule!5571 (_1!10993 lt!690098))) (seqFromList!2476 lt!690094)))))

(declare-fun lt!690078 () Unit!33838)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!437 (LexerInterface!3136 List!19657 List!19656 List!19656 List!19656 Rule!6814) Unit!33838)

(assert (=> b!1777906 (= lt!690078 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!437 thiss!24550 rules!3447 lt!690094 lt!690107 (_2!10993 lt!690098) (rule!5571 (_1!10993 lt!690098))))))

(declare-fun b!1777907 () Bool)

(declare-fun e!1137802 () Bool)

(declare-fun lt!690106 () Rule!6814)

(assert (=> b!1777907 (= e!1137802 (= (rule!5571 (_1!10993 lt!690098)) lt!690106))))

(declare-fun b!1777908 () Bool)

(declare-fun rule!422 () Rule!6814)

(declare-fun e!1137813 () Bool)

(declare-fun tp!503642 () Bool)

(declare-fun e!1137810 () Bool)

(declare-fun inv!25475 (String!22317) Bool)

(declare-fun inv!25480 (TokenValueInjection!6854) Bool)

(assert (=> b!1777908 (= e!1137813 (and tp!503642 (inv!25475 (tag!3897 rule!422)) (inv!25480 (transformation!3507 rule!422)) e!1137810))))

(declare-fun b!1777909 () Bool)

(declare-fun res!801157 () Bool)

(declare-fun e!1137795 () Bool)

(assert (=> b!1777909 (=> res!801157 e!1137795)))

(assert (=> b!1777909 (= res!801157 (not (matchR!2308 (regex!3507 (rule!5571 (_1!10993 lt!690098))) lt!690094)))))

(declare-fun b!1777911 () Bool)

(assert (=> b!1777911 (= e!1137811 (not e!1137793))))

(declare-fun res!801145 () Bool)

(assert (=> b!1777911 (=> res!801145 e!1137793)))

(assert (=> b!1777911 (= res!801145 (not (matchR!2308 (regex!3507 rule!422) lt!690109)))))

(declare-fun ruleValid!1005 (LexerInterface!3136 Rule!6814) Bool)

(assert (=> b!1777911 (ruleValid!1005 thiss!24550 rule!422)))

(declare-fun lt!690091 () Unit!33838)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!528 (LexerInterface!3136 Rule!6814 List!19657) Unit!33838)

(assert (=> b!1777911 (= lt!690091 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!528 thiss!24550 rule!422 rules!3447))))

(declare-fun e!1137801 () Bool)

(declare-fun e!1137812 () Bool)

(declare-fun tp!503645 () Bool)

(declare-fun b!1777912 () Bool)

(assert (=> b!1777912 (= e!1137801 (and tp!503645 (inv!25475 (tag!3897 (h!24988 rules!3447))) (inv!25480 (transformation!3507 (h!24988 rules!3447))) e!1137812))))

(declare-fun b!1777913 () Bool)

(declare-fun e!1137805 () Bool)

(assert (=> b!1777913 (= e!1137805 true)))

(declare-fun lt!690087 () Unit!33838)

(declare-fun e!1137815 () Unit!33838)

(assert (=> b!1777913 (= lt!690087 e!1137815)))

(declare-fun c!289331 () Bool)

(declare-fun lt!690090 () Int)

(declare-fun lt!690099 () Int)

(assert (=> b!1777913 (= c!289331 (< lt!690090 lt!690099))))

(declare-fun b!1777914 () Bool)

(declare-fun Unit!33841 () Unit!33838)

(assert (=> b!1777914 (= e!1137796 Unit!33841)))

(declare-fun b!1777915 () Bool)

(declare-fun e!1137790 () Bool)

(declare-fun tp!503637 () Bool)

(declare-fun e!1137809 () Bool)

(assert (=> b!1777915 (= e!1137790 (and tp!503637 (inv!25475 (tag!3897 (rule!5571 token!523))) (inv!25480 (transformation!3507 (rule!5571 token!523))) e!1137809))))

(assert (=> b!1777916 (= e!1137795 e!1137800)))

(declare-fun res!801147 () Bool)

(assert (=> b!1777916 (=> res!801147 e!1137800)))

(declare-fun Forall!874 (Int) Bool)

(assert (=> b!1777916 (= res!801147 (not (Forall!874 lambda!70596)))))

(declare-fun lt!690086 () Unit!33838)

(declare-fun lemmaInv!706 (TokenValueInjection!6854) Unit!33838)

(assert (=> b!1777916 (= lt!690086 (lemmaInv!706 (transformation!3507 (rule!5571 (_1!10993 lt!690098)))))))

(assert (=> b!1777917 (= e!1137812 (and tp!503644 tp!503638))))

(declare-fun b!1777918 () Bool)

(declare-fun res!801149 () Bool)

(assert (=> b!1777918 (=> (not res!801149) (not e!1137814))))

(declare-fun contains!3539 (List!19657 Rule!6814) Bool)

(assert (=> b!1777918 (= res!801149 (contains!3539 rules!3447 rule!422))))

(declare-fun b!1777919 () Bool)

(declare-fun e!1137804 () Bool)

(declare-fun tp_is_empty!7913 () Bool)

(declare-fun tp!503635 () Bool)

(assert (=> b!1777919 (= e!1137804 (and tp_is_empty!7913 tp!503635))))

(declare-fun b!1777920 () Bool)

(declare-fun res!801140 () Bool)

(assert (=> b!1777920 (=> (not res!801140) (not e!1137811))))

(assert (=> b!1777920 (= res!801140 (= (rule!5571 token!523) rule!422))))

(declare-fun b!1777921 () Bool)

(declare-fun Unit!33842 () Unit!33838)

(assert (=> b!1777921 (= e!1137815 Unit!33842)))

(declare-fun b!1777922 () Bool)

(declare-fun Unit!33843 () Unit!33838)

(assert (=> b!1777922 (= e!1137815 Unit!33843)))

(declare-fun lt!690112 () Unit!33838)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!216 (LexerInterface!3136 List!19657 Rule!6814 List!19656 List!19656 List!19656 Rule!6814) Unit!33838)

(assert (=> b!1777922 (= lt!690112 (lemmaMaxPrefixOutputsMaxPrefix!216 thiss!24550 rules!3447 (rule!5571 (_1!10993 lt!690098)) lt!690094 lt!690107 lt!690109 rule!422))))

(assert (=> b!1777922 false))

(declare-fun b!1777923 () Bool)

(declare-fun e!1137792 () Bool)

(assert (=> b!1777923 (= e!1137792 e!1137802)))

(declare-fun res!801151 () Bool)

(assert (=> b!1777923 (=> (not res!801151) (not e!1137802))))

(assert (=> b!1777923 (= res!801151 (matchR!2308 (regex!3507 lt!690106) (list!7961 (charsOf!2156 (_1!10993 lt!690098)))))))

(declare-datatypes ((Option!4037 0))(
  ( (None!4036) (Some!4036 (v!25521 Rule!6814)) )
))
(declare-fun lt!690075 () Option!4037)

(declare-fun get!6008 (Option!4037) Rule!6814)

(assert (=> b!1777923 (= lt!690106 (get!6008 lt!690075))))

(declare-fun b!1777924 () Bool)

(assert (=> b!1777924 (= e!1137807 e!1137795)))

(declare-fun res!801159 () Bool)

(assert (=> b!1777924 (=> res!801159 e!1137795)))

(assert (=> b!1777924 (= res!801159 (not (isPrefix!1747 lt!690094 lt!690107)))))

(assert (=> b!1777924 (isPrefix!1747 lt!690094 (++!5331 lt!690094 (_2!10993 lt!690098)))))

(declare-fun lt!690076 () Unit!33838)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1256 (List!19656 List!19656) Unit!33838)

(assert (=> b!1777924 (= lt!690076 (lemmaConcatTwoListThenFirstIsPrefix!1256 lt!690094 (_2!10993 lt!690098)))))

(assert (=> b!1777924 (= lt!690094 (list!7961 lt!690085))))

(assert (=> b!1777924 (= lt!690085 (charsOf!2156 (_1!10993 lt!690098)))))

(assert (=> b!1777924 e!1137792))

(declare-fun res!801153 () Bool)

(assert (=> b!1777924 (=> (not res!801153) (not e!1137792))))

(declare-fun isDefined!3380 (Option!4037) Bool)

(assert (=> b!1777924 (= res!801153 (isDefined!3380 lt!690075))))

(declare-fun getRuleFromTag!555 (LexerInterface!3136 List!19657 String!22317) Option!4037)

(assert (=> b!1777924 (= lt!690075 (getRuleFromTag!555 thiss!24550 rules!3447 (tag!3897 (rule!5571 (_1!10993 lt!690098)))))))

(declare-fun lt!690073 () Unit!33838)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!555 (LexerInterface!3136 List!19657 List!19656 Token!6580) Unit!33838)

(assert (=> b!1777924 (= lt!690073 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!555 thiss!24550 rules!3447 lt!690107 (_1!10993 lt!690098)))))

(declare-fun lt!690081 () Option!4036)

(assert (=> b!1777924 (= lt!690098 (get!6007 lt!690081))))

(declare-fun lt!690080 () Unit!33838)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!658 (LexerInterface!3136 List!19657 List!19656 List!19656) Unit!33838)

(assert (=> b!1777924 (= lt!690080 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!658 thiss!24550 rules!3447 lt!690109 suffix!1421))))

(assert (=> b!1777924 (= lt!690081 (maxPrefix!1690 thiss!24550 rules!3447 lt!690107))))

(assert (=> b!1777924 (isPrefix!1747 lt!690109 lt!690107)))

(declare-fun lt!690077 () Unit!33838)

(assert (=> b!1777924 (= lt!690077 (lemmaConcatTwoListThenFirstIsPrefix!1256 lt!690109 suffix!1421))))

(assert (=> b!1777924 (= lt!690107 (++!5331 lt!690109 suffix!1421))))

(declare-fun b!1777925 () Bool)

(declare-fun res!801156 () Bool)

(assert (=> b!1777925 (=> (not res!801156) (not e!1137811))))

(assert (=> b!1777925 (= res!801156 (isEmpty!12374 (_2!10993 lt!690110)))))

(declare-fun b!1777926 () Bool)

(declare-fun res!801160 () Bool)

(assert (=> b!1777926 (=> (not res!801160) (not e!1137814))))

(declare-fun isEmpty!12375 (List!19657) Bool)

(assert (=> b!1777926 (= res!801160 (not (isEmpty!12375 rules!3447)))))

(assert (=> b!1777910 (= e!1137810 (and tp!503646 tp!503641))))

(declare-fun res!801158 () Bool)

(assert (=> start!176690 (=> (not res!801158) (not e!1137814))))

(get-info :version)

(assert (=> start!176690 (= res!801158 ((_ is Lexer!3134) thiss!24550))))

(assert (=> start!176690 e!1137814))

(assert (=> start!176690 e!1137804))

(assert (=> start!176690 e!1137813))

(assert (=> start!176690 true))

(declare-fun e!1137794 () Bool)

(declare-fun inv!25481 (Token!6580) Bool)

(assert (=> start!176690 (and (inv!25481 token!523) e!1137794)))

(declare-fun e!1137808 () Bool)

(assert (=> start!176690 e!1137808))

(declare-fun b!1777927 () Bool)

(assert (=> b!1777927 (= e!1137799 e!1137797)))

(declare-fun res!801143 () Bool)

(assert (=> b!1777927 (=> res!801143 e!1137797)))

(declare-fun lt!690105 () TokenValue!3597)

(assert (=> b!1777927 (= res!801143 (not (= lt!690081 (Some!4035 (tuple2!19183 (Token!6581 lt!690105 (rule!5571 (_1!10993 lt!690098)) lt!690090 lt!690094) (_2!10993 lt!690098))))))))

(declare-fun size!15562 (BalanceConc!12974) Int)

(assert (=> b!1777927 (= lt!690090 (size!15562 lt!690085))))

(assert (=> b!1777927 (= lt!690105 (apply!5307 (transformation!3507 (rule!5571 (_1!10993 lt!690098))) lt!690085))))

(declare-fun lt!690074 () Unit!33838)

(declare-fun lemmaCharactersSize!565 (Token!6580) Unit!33838)

(assert (=> b!1777927 (= lt!690074 (lemmaCharactersSize!565 (_1!10993 lt!690098)))))

(declare-fun lt!690103 () Unit!33838)

(declare-fun lemmaEqSameImage!418 (TokenValueInjection!6854 BalanceConc!12974 BalanceConc!12974) Unit!33838)

(assert (=> b!1777927 (= lt!690103 (lemmaEqSameImage!418 (transformation!3507 (rule!5571 (_1!10993 lt!690098))) lt!690085 (seqFromList!2476 (originalCharacters!4321 (_1!10993 lt!690098)))))))

(assert (=> b!1777928 (= e!1137809 (and tp!503636 tp!503640))))

(declare-fun b!1777929 () Bool)

(declare-fun tp!503643 () Bool)

(assert (=> b!1777929 (= e!1137808 (and e!1137801 tp!503643))))

(declare-fun b!1777930 () Bool)

(assert (=> b!1777930 (= e!1137816 e!1137805)))

(declare-fun res!801144 () Bool)

(assert (=> b!1777930 (=> res!801144 e!1137805)))

(declare-fun lt!690093 () Bool)

(assert (=> b!1777930 (= res!801144 lt!690093)))

(declare-fun lt!690108 () Unit!33838)

(assert (=> b!1777930 (= lt!690108 e!1137796)))

(declare-fun c!289330 () Bool)

(assert (=> b!1777930 (= c!289330 lt!690093)))

(assert (=> b!1777930 (= lt!690093 (> lt!690090 lt!690099))))

(assert (=> b!1777930 (= lt!690099 (size!15562 lt!690084))))

(assert (=> b!1777930 (matchR!2308 lt!690100 lt!690109)))

(declare-fun lt!690102 () Unit!33838)

(assert (=> b!1777930 (= lt!690102 (lemmaMaxPrefixThenMatchesRulesRegex!214 thiss!24550 rules!3447 lt!690109 token!523 rule!422 Nil!19586))))

(declare-fun tp!503639 () Bool)

(declare-fun b!1777931 () Bool)

(declare-fun inv!21 (TokenValue!3597) Bool)

(assert (=> b!1777931 (= e!1137794 (and (inv!21 (value!109622 token!523)) e!1137790 tp!503639))))

(assert (= (and start!176690 res!801158) b!1777926))

(assert (= (and b!1777926 res!801160) b!1777898))

(assert (= (and b!1777898 res!801155) b!1777918))

(assert (= (and b!1777918 res!801149) b!1777900))

(assert (= (and b!1777900 res!801150) b!1777899))

(assert (= (and b!1777899 res!801154) b!1777925))

(assert (= (and b!1777925 res!801156) b!1777920))

(assert (= (and b!1777920 res!801140) b!1777911))

(assert (= (and b!1777911 (not res!801145)) b!1777904))

(assert (= (and b!1777904 (not res!801152)) b!1777901))

(assert (= (and b!1777901 (not res!801141)) b!1777924))

(assert (= (and b!1777924 res!801153) b!1777923))

(assert (= (and b!1777923 res!801151) b!1777907))

(assert (= (and b!1777924 (not res!801159)) b!1777909))

(assert (= (and b!1777909 (not res!801157)) b!1777916))

(assert (= (and b!1777916 (not res!801147)) b!1777905))

(assert (= (and b!1777905 (not res!801142)) b!1777903))

(assert (= (and b!1777903 (not res!801148)) b!1777927))

(assert (= (and b!1777927 (not res!801143)) b!1777906))

(assert (= (and b!1777906 (not res!801146)) b!1777930))

(assert (= (and b!1777930 c!289330) b!1777902))

(assert (= (and b!1777930 (not c!289330)) b!1777914))

(assert (= (and b!1777930 (not res!801144)) b!1777913))

(assert (= (and b!1777913 c!289331) b!1777922))

(assert (= (and b!1777913 (not c!289331)) b!1777921))

(assert (= (and start!176690 ((_ is Cons!19586) suffix!1421)) b!1777919))

(assert (= b!1777908 b!1777910))

(assert (= start!176690 b!1777908))

(assert (= b!1777915 b!1777928))

(assert (= b!1777931 b!1777915))

(assert (= start!176690 b!1777931))

(assert (= b!1777912 b!1777917))

(assert (= b!1777929 b!1777912))

(assert (= (and start!176690 ((_ is Cons!19587) rules!3447)) b!1777929))

(declare-fun b_lambda!58111 () Bool)

(assert (=> (not b_lambda!58111) (not b!1777903)))

(declare-fun t!166185 () Bool)

(declare-fun tb!107939 () Bool)

(assert (=> (and b!1777910 (= (toChars!4893 (transformation!3507 rule!422)) (toChars!4893 (transformation!3507 (rule!5571 (_1!10993 lt!690098))))) t!166185) tb!107939))

(declare-fun b!1777947 () Bool)

(declare-fun e!1137828 () Bool)

(declare-fun tp!503649 () Bool)

(declare-fun inv!25482 (Conc!6515) Bool)

(assert (=> b!1777947 (= e!1137828 (and (inv!25482 (c!289333 (dynLambda!9587 (toChars!4893 (transformation!3507 (rule!5571 (_1!10993 lt!690098)))) (value!109622 (_1!10993 lt!690098))))) tp!503649))))

(declare-fun result!129846 () Bool)

(declare-fun inv!25483 (BalanceConc!12974) Bool)

(assert (=> tb!107939 (= result!129846 (and (inv!25483 (dynLambda!9587 (toChars!4893 (transformation!3507 (rule!5571 (_1!10993 lt!690098)))) (value!109622 (_1!10993 lt!690098)))) e!1137828))))

(assert (= tb!107939 b!1777947))

(declare-fun m!2199067 () Bool)

(assert (=> b!1777947 m!2199067))

(declare-fun m!2199069 () Bool)

(assert (=> tb!107939 m!2199069))

(assert (=> b!1777903 t!166185))

(declare-fun b_and!135991 () Bool)

(assert (= b_and!135981 (and (=> t!166185 result!129846) b_and!135991)))

(declare-fun t!166187 () Bool)

(declare-fun tb!107941 () Bool)

(assert (=> (and b!1777917 (= (toChars!4893 (transformation!3507 (h!24988 rules!3447))) (toChars!4893 (transformation!3507 (rule!5571 (_1!10993 lt!690098))))) t!166187) tb!107941))

(declare-fun result!129850 () Bool)

(assert (= result!129850 result!129846))

(assert (=> b!1777903 t!166187))

(declare-fun b_and!135993 () Bool)

(assert (= b_and!135985 (and (=> t!166187 result!129850) b_and!135993)))

(declare-fun t!166189 () Bool)

(declare-fun tb!107943 () Bool)

(assert (=> (and b!1777928 (= (toChars!4893 (transformation!3507 (rule!5571 token!523))) (toChars!4893 (transformation!3507 (rule!5571 (_1!10993 lt!690098))))) t!166189) tb!107943))

(declare-fun result!129852 () Bool)

(assert (= result!129852 result!129846))

(assert (=> b!1777903 t!166189))

(declare-fun b_and!135995 () Bool)

(assert (= b_and!135989 (and (=> t!166189 result!129852) b_and!135995)))

(declare-fun b_lambda!58113 () Bool)

(assert (=> (not b_lambda!58113) (not b!1777905)))

(declare-fun t!166191 () Bool)

(declare-fun tb!107945 () Bool)

(assert (=> (and b!1777910 (= (toChars!4893 (transformation!3507 rule!422)) (toChars!4893 (transformation!3507 (rule!5571 (_1!10993 lt!690098))))) t!166191) tb!107945))

(declare-fun tp!503650 () Bool)

(declare-fun b!1777948 () Bool)

(declare-fun e!1137829 () Bool)

(assert (=> b!1777948 (= e!1137829 (and (inv!25482 (c!289333 (dynLambda!9587 (toChars!4893 (transformation!3507 (rule!5571 (_1!10993 lt!690098)))) (dynLambda!9588 (toValue!5034 (transformation!3507 (rule!5571 (_1!10993 lt!690098)))) lt!690085)))) tp!503650))))

(declare-fun result!129854 () Bool)

(assert (=> tb!107945 (= result!129854 (and (inv!25483 (dynLambda!9587 (toChars!4893 (transformation!3507 (rule!5571 (_1!10993 lt!690098)))) (dynLambda!9588 (toValue!5034 (transformation!3507 (rule!5571 (_1!10993 lt!690098)))) lt!690085))) e!1137829))))

(assert (= tb!107945 b!1777948))

(declare-fun m!2199071 () Bool)

(assert (=> b!1777948 m!2199071))

(declare-fun m!2199073 () Bool)

(assert (=> tb!107945 m!2199073))

(assert (=> b!1777905 t!166191))

(declare-fun b_and!135997 () Bool)

(assert (= b_and!135991 (and (=> t!166191 result!129854) b_and!135997)))

(declare-fun tb!107947 () Bool)

(declare-fun t!166193 () Bool)

(assert (=> (and b!1777917 (= (toChars!4893 (transformation!3507 (h!24988 rules!3447))) (toChars!4893 (transformation!3507 (rule!5571 (_1!10993 lt!690098))))) t!166193) tb!107947))

(declare-fun result!129856 () Bool)

(assert (= result!129856 result!129854))

(assert (=> b!1777905 t!166193))

(declare-fun b_and!135999 () Bool)

(assert (= b_and!135993 (and (=> t!166193 result!129856) b_and!135999)))

(declare-fun t!166195 () Bool)

(declare-fun tb!107949 () Bool)

(assert (=> (and b!1777928 (= (toChars!4893 (transformation!3507 (rule!5571 token!523))) (toChars!4893 (transformation!3507 (rule!5571 (_1!10993 lt!690098))))) t!166195) tb!107949))

(declare-fun result!129858 () Bool)

(assert (= result!129858 result!129854))

(assert (=> b!1777905 t!166195))

(declare-fun b_and!136001 () Bool)

(assert (= b_and!135995 (and (=> t!166195 result!129858) b_and!136001)))

(declare-fun b_lambda!58115 () Bool)

(assert (=> (not b_lambda!58115) (not b!1777905)))

(declare-fun tb!107951 () Bool)

(declare-fun t!166197 () Bool)

(assert (=> (and b!1777910 (= (toValue!5034 (transformation!3507 rule!422)) (toValue!5034 (transformation!3507 (rule!5571 (_1!10993 lt!690098))))) t!166197) tb!107951))

(declare-fun result!129860 () Bool)

(assert (=> tb!107951 (= result!129860 (inv!21 (dynLambda!9588 (toValue!5034 (transformation!3507 (rule!5571 (_1!10993 lt!690098)))) lt!690085)))))

(declare-fun m!2199075 () Bool)

(assert (=> tb!107951 m!2199075))

(assert (=> b!1777905 t!166197))

(declare-fun b_and!136003 () Bool)

(assert (= b_and!135979 (and (=> t!166197 result!129860) b_and!136003)))

(declare-fun t!166199 () Bool)

(declare-fun tb!107953 () Bool)

(assert (=> (and b!1777917 (= (toValue!5034 (transformation!3507 (h!24988 rules!3447))) (toValue!5034 (transformation!3507 (rule!5571 (_1!10993 lt!690098))))) t!166199) tb!107953))

(declare-fun result!129864 () Bool)

(assert (= result!129864 result!129860))

(assert (=> b!1777905 t!166199))

(declare-fun b_and!136005 () Bool)

(assert (= b_and!135983 (and (=> t!166199 result!129864) b_and!136005)))

(declare-fun t!166201 () Bool)

(declare-fun tb!107955 () Bool)

(assert (=> (and b!1777928 (= (toValue!5034 (transformation!3507 (rule!5571 token!523))) (toValue!5034 (transformation!3507 (rule!5571 (_1!10993 lt!690098))))) t!166201) tb!107955))

(declare-fun result!129866 () Bool)

(assert (= result!129866 result!129860))

(assert (=> b!1777905 t!166201))

(declare-fun b_and!136007 () Bool)

(assert (= b_and!135987 (and (=> t!166201 result!129866) b_and!136007)))

(declare-fun m!2199077 () Bool)

(assert (=> b!1777909 m!2199077))

(declare-fun m!2199079 () Bool)

(assert (=> b!1777916 m!2199079))

(declare-fun m!2199081 () Bool)

(assert (=> b!1777916 m!2199081))

(declare-fun m!2199083 () Bool)

(assert (=> b!1777905 m!2199083))

(assert (=> b!1777905 m!2199083))

(declare-fun m!2199085 () Bool)

(assert (=> b!1777905 m!2199085))

(assert (=> b!1777905 m!2199085))

(declare-fun m!2199087 () Bool)

(assert (=> b!1777905 m!2199087))

(declare-fun m!2199089 () Bool)

(assert (=> b!1777905 m!2199089))

(declare-fun m!2199091 () Bool)

(assert (=> b!1777898 m!2199091))

(declare-fun m!2199093 () Bool)

(assert (=> b!1777923 m!2199093))

(assert (=> b!1777923 m!2199093))

(declare-fun m!2199095 () Bool)

(assert (=> b!1777923 m!2199095))

(assert (=> b!1777923 m!2199095))

(declare-fun m!2199097 () Bool)

(assert (=> b!1777923 m!2199097))

(declare-fun m!2199099 () Bool)

(assert (=> b!1777923 m!2199099))

(declare-fun m!2199101 () Bool)

(assert (=> b!1777918 m!2199101))

(declare-fun m!2199103 () Bool)

(assert (=> b!1777922 m!2199103))

(declare-fun m!2199105 () Bool)

(assert (=> b!1777902 m!2199105))

(declare-fun m!2199107 () Bool)

(assert (=> b!1777902 m!2199107))

(declare-fun m!2199109 () Bool)

(assert (=> b!1777902 m!2199109))

(declare-fun m!2199111 () Bool)

(assert (=> b!1777902 m!2199111))

(declare-fun m!2199113 () Bool)

(assert (=> b!1777902 m!2199113))

(assert (=> b!1777902 m!2199105))

(declare-fun m!2199115 () Bool)

(assert (=> b!1777902 m!2199115))

(declare-fun m!2199117 () Bool)

(assert (=> b!1777902 m!2199117))

(declare-fun m!2199119 () Bool)

(assert (=> b!1777902 m!2199119))

(declare-fun m!2199121 () Bool)

(assert (=> b!1777902 m!2199121))

(declare-fun m!2199123 () Bool)

(assert (=> b!1777902 m!2199123))

(declare-fun m!2199125 () Bool)

(assert (=> b!1777902 m!2199125))

(declare-fun m!2199127 () Bool)

(assert (=> b!1777915 m!2199127))

(declare-fun m!2199129 () Bool)

(assert (=> b!1777915 m!2199129))

(declare-fun m!2199131 () Bool)

(assert (=> b!1777904 m!2199131))

(declare-fun m!2199133 () Bool)

(assert (=> start!176690 m!2199133))

(declare-fun m!2199135 () Bool)

(assert (=> b!1777906 m!2199135))

(declare-fun m!2199137 () Bool)

(assert (=> b!1777906 m!2199137))

(declare-fun m!2199139 () Bool)

(assert (=> b!1777906 m!2199139))

(assert (=> b!1777906 m!2199135))

(declare-fun m!2199141 () Bool)

(assert (=> b!1777906 m!2199141))

(declare-fun m!2199143 () Bool)

(assert (=> b!1777906 m!2199143))

(declare-fun m!2199145 () Bool)

(assert (=> b!1777906 m!2199145))

(declare-fun m!2199147 () Bool)

(assert (=> b!1777906 m!2199147))

(declare-fun m!2199149 () Bool)

(assert (=> b!1777931 m!2199149))

(declare-fun m!2199151 () Bool)

(assert (=> b!1777927 m!2199151))

(declare-fun m!2199153 () Bool)

(assert (=> b!1777927 m!2199153))

(declare-fun m!2199155 () Bool)

(assert (=> b!1777927 m!2199155))

(declare-fun m!2199157 () Bool)

(assert (=> b!1777927 m!2199157))

(assert (=> b!1777927 m!2199151))

(declare-fun m!2199159 () Bool)

(assert (=> b!1777927 m!2199159))

(declare-fun m!2199161 () Bool)

(assert (=> b!1777908 m!2199161))

(declare-fun m!2199163 () Bool)

(assert (=> b!1777908 m!2199163))

(declare-fun m!2199165 () Bool)

(assert (=> b!1777911 m!2199165))

(declare-fun m!2199167 () Bool)

(assert (=> b!1777911 m!2199167))

(declare-fun m!2199169 () Bool)

(assert (=> b!1777911 m!2199169))

(declare-fun m!2199171 () Bool)

(assert (=> b!1777901 m!2199171))

(declare-fun m!2199173 () Bool)

(assert (=> b!1777901 m!2199173))

(declare-fun m!2199175 () Bool)

(assert (=> b!1777901 m!2199175))

(declare-fun m!2199177 () Bool)

(assert (=> b!1777901 m!2199177))

(declare-fun m!2199179 () Bool)

(assert (=> b!1777926 m!2199179))

(declare-fun m!2199181 () Bool)

(assert (=> b!1777900 m!2199181))

(declare-fun m!2199183 () Bool)

(assert (=> b!1777900 m!2199183))

(declare-fun m!2199185 () Bool)

(assert (=> b!1777900 m!2199185))

(declare-fun m!2199187 () Bool)

(assert (=> b!1777900 m!2199187))

(declare-fun m!2199189 () Bool)

(assert (=> b!1777925 m!2199189))

(declare-fun m!2199191 () Bool)

(assert (=> b!1777899 m!2199191))

(declare-fun m!2199193 () Bool)

(assert (=> b!1777930 m!2199193))

(declare-fun m!2199195 () Bool)

(assert (=> b!1777930 m!2199195))

(declare-fun m!2199197 () Bool)

(assert (=> b!1777930 m!2199197))

(declare-fun m!2199199 () Bool)

(assert (=> b!1777912 m!2199199))

(declare-fun m!2199201 () Bool)

(assert (=> b!1777912 m!2199201))

(declare-fun m!2199203 () Bool)

(assert (=> b!1777924 m!2199203))

(declare-fun m!2199205 () Bool)

(assert (=> b!1777924 m!2199205))

(declare-fun m!2199207 () Bool)

(assert (=> b!1777924 m!2199207))

(declare-fun m!2199209 () Bool)

(assert (=> b!1777924 m!2199209))

(declare-fun m!2199211 () Bool)

(assert (=> b!1777924 m!2199211))

(declare-fun m!2199213 () Bool)

(assert (=> b!1777924 m!2199213))

(declare-fun m!2199215 () Bool)

(assert (=> b!1777924 m!2199215))

(declare-fun m!2199217 () Bool)

(assert (=> b!1777924 m!2199217))

(declare-fun m!2199219 () Bool)

(assert (=> b!1777924 m!2199219))

(declare-fun m!2199221 () Bool)

(assert (=> b!1777924 m!2199221))

(declare-fun m!2199223 () Bool)

(assert (=> b!1777924 m!2199223))

(declare-fun m!2199225 () Bool)

(assert (=> b!1777924 m!2199225))

(declare-fun m!2199227 () Bool)

(assert (=> b!1777924 m!2199227))

(assert (=> b!1777924 m!2199225))

(assert (=> b!1777924 m!2199093))

(declare-fun m!2199229 () Bool)

(assert (=> b!1777924 m!2199229))

(declare-fun m!2199231 () Bool)

(assert (=> b!1777903 m!2199231))

(check-sat (not b_next!50015) b_and!136003 (not b_next!50019) (not b!1777947) (not b!1777929) (not b_next!50021) (not b!1777904) (not b!1777927) b_and!135997 b_and!136001 (not b!1777902) b_and!136005 (not start!176690) (not b!1777922) (not b!1777915) (not b!1777930) (not tb!107945) (not b!1777931) b_and!135999 (not b!1777925) (not b!1777911) (not b!1777908) (not b!1777924) (not b_lambda!58115) (not tb!107939) (not b!1777912) (not b_lambda!58111) (not b!1777901) (not b!1777926) (not b!1777918) (not b!1777909) tp_is_empty!7913 (not b_next!50025) (not b!1777898) (not tb!107951) (not b!1777923) (not b!1777905) (not b!1777948) (not b!1777899) (not b_lambda!58113) (not b!1777900) b_and!136007 (not b!1777919) (not b_next!50023) (not b!1777916) (not b!1777906) (not b_next!50017))
(check-sat (not b_next!50015) b_and!135997 b_and!136003 b_and!135999 (not b_next!50019) (not b_next!50025) b_and!136007 (not b_next!50021) b_and!136001 b_and!136005 (not b_next!50023) (not b_next!50017))
