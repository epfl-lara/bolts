; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376788 () Bool)

(assert start!376788)

(declare-fun b!4003427 () Bool)

(declare-fun b_free!111353 () Bool)

(declare-fun b_next!112057 () Bool)

(assert (=> b!4003427 (= b_free!111353 (not b_next!112057))))

(declare-fun tp!1218599 () Bool)

(declare-fun b_and!307439 () Bool)

(assert (=> b!4003427 (= tp!1218599 b_and!307439)))

(declare-fun b_free!111355 () Bool)

(declare-fun b_next!112059 () Bool)

(assert (=> b!4003427 (= b_free!111355 (not b_next!112059))))

(declare-fun tp!1218598 () Bool)

(declare-fun b_and!307441 () Bool)

(assert (=> b!4003427 (= tp!1218598 b_and!307441)))

(declare-fun b!4003431 () Bool)

(declare-fun b_free!111357 () Bool)

(declare-fun b_next!112061 () Bool)

(assert (=> b!4003431 (= b_free!111357 (not b_next!112061))))

(declare-fun tp!1218588 () Bool)

(declare-fun b_and!307443 () Bool)

(assert (=> b!4003431 (= tp!1218588 b_and!307443)))

(declare-fun b_free!111359 () Bool)

(declare-fun b_next!112063 () Bool)

(assert (=> b!4003431 (= b_free!111359 (not b_next!112063))))

(declare-fun tp!1218589 () Bool)

(declare-fun b_and!307445 () Bool)

(assert (=> b!4003431 (= tp!1218589 b_and!307445)))

(declare-fun b!4003412 () Bool)

(declare-fun e!2482679 () Bool)

(declare-fun e!2482673 () Bool)

(assert (=> b!4003412 (= e!2482679 e!2482673)))

(declare-fun res!1626750 () Bool)

(assert (=> b!4003412 (=> res!1626750 e!2482673)))

(declare-datatypes ((C!23616 0))(
  ( (C!23617 (val!13902 Int)) )
))
(declare-datatypes ((List!42986 0))(
  ( (Nil!42862) (Cons!42862 (h!48282 C!23616) (t!332327 List!42986)) )
))
(declare-fun lt!1415905 () List!42986)

(declare-fun lt!1415910 () List!42986)

(declare-fun lt!1415902 () List!42986)

(assert (=> b!4003412 (= res!1626750 (or (not (= lt!1415905 lt!1415902)) (not (= lt!1415905 lt!1415910))))))

(assert (=> b!4003412 (= lt!1415902 lt!1415910)))

(declare-fun lt!1415912 () List!42986)

(declare-fun lt!1415909 () List!42986)

(declare-fun ++!11212 (List!42986 List!42986) List!42986)

(assert (=> b!4003412 (= lt!1415910 (++!11212 lt!1415912 lt!1415909))))

(declare-fun lt!1415911 () List!42986)

(declare-fun suffix!1299 () List!42986)

(assert (=> b!4003412 (= lt!1415902 (++!11212 lt!1415911 suffix!1299))))

(declare-fun lt!1415903 () List!42986)

(assert (=> b!4003412 (= lt!1415909 (++!11212 lt!1415903 suffix!1299))))

(declare-datatypes ((Unit!61851 0))(
  ( (Unit!61852) )
))
(declare-fun lt!1415898 () Unit!61851)

(declare-fun lemmaConcatAssociativity!2522 (List!42986 List!42986 List!42986) Unit!61851)

(assert (=> b!4003412 (= lt!1415898 (lemmaConcatAssociativity!2522 lt!1415912 lt!1415903 suffix!1299))))

(declare-fun b!4003413 () Bool)

(declare-fun res!1626752 () Bool)

(declare-fun e!2482666 () Bool)

(assert (=> b!4003413 (=> (not res!1626752) (not e!2482666))))

(declare-datatypes ((IArray!26047 0))(
  ( (IArray!26048 (innerList!13081 List!42986)) )
))
(declare-datatypes ((Conc!13021 0))(
  ( (Node!13021 (left!32344 Conc!13021) (right!32674 Conc!13021) (csize!26272 Int) (cheight!13232 Int)) (Leaf!20133 (xs!16327 IArray!26047) (csize!26273 Int)) (Empty!13021) )
))
(declare-datatypes ((BalanceConc!25636 0))(
  ( (BalanceConc!25637 (c!692242 Conc!13021)) )
))
(declare-datatypes ((String!48917 0))(
  ( (String!48918 (value!214693 String)) )
))
(declare-datatypes ((List!42987 0))(
  ( (Nil!42863) (Cons!42863 (h!48283 (_ BitVec 16)) (t!332328 List!42987)) )
))
(declare-datatypes ((TokenValue!7040 0))(
  ( (FloatLiteralValue!14080 (text!49725 List!42987)) (TokenValueExt!7039 (__x!26297 Int)) (Broken!35200 (value!214694 List!42987)) (Object!7163) (End!7040) (Def!7040) (Underscore!7040) (Match!7040) (Else!7040) (Error!7040) (Case!7040) (If!7040) (Extends!7040) (Abstract!7040) (Class!7040) (Val!7040) (DelimiterValue!14080 (del!7100 List!42987)) (KeywordValue!7046 (value!214695 List!42987)) (CommentValue!14080 (value!214696 List!42987)) (WhitespaceValue!14080 (value!214697 List!42987)) (IndentationValue!7040 (value!214698 List!42987)) (String!48919) (Int32!7040) (Broken!35201 (value!214699 List!42987)) (Boolean!7041) (Unit!61853) (OperatorValue!7043 (op!7100 List!42987)) (IdentifierValue!14080 (value!214700 List!42987)) (IdentifierValue!14081 (value!214701 List!42987)) (WhitespaceValue!14081 (value!214702 List!42987)) (True!14080) (False!14080) (Broken!35202 (value!214703 List!42987)) (Broken!35203 (value!214704 List!42987)) (True!14081) (RightBrace!7040) (RightBracket!7040) (Colon!7040) (Null!7040) (Comma!7040) (LeftBracket!7040) (False!14081) (LeftBrace!7040) (ImaginaryLiteralValue!7040 (text!49726 List!42987)) (StringLiteralValue!21120 (value!214705 List!42987)) (EOFValue!7040 (value!214706 List!42987)) (IdentValue!7040 (value!214707 List!42987)) (DelimiterValue!14081 (value!214708 List!42987)) (DedentValue!7040 (value!214709 List!42987)) (NewLineValue!7040 (value!214710 List!42987)) (IntegerValue!21120 (value!214711 (_ BitVec 32)) (text!49727 List!42987)) (IntegerValue!21121 (value!214712 Int) (text!49728 List!42987)) (Times!7040) (Or!7040) (Equal!7040) (Minus!7040) (Broken!35204 (value!214713 List!42987)) (And!7040) (Div!7040) (LessEqual!7040) (Mod!7040) (Concat!18755) (Not!7040) (Plus!7040) (SpaceValue!7040 (value!214714 List!42987)) (IntegerValue!21122 (value!214715 Int) (text!49729 List!42987)) (StringLiteralValue!21121 (text!49730 List!42987)) (FloatLiteralValue!14081 (text!49731 List!42987)) (BytesLiteralValue!7040 (value!214716 List!42987)) (CommentValue!14081 (value!214717 List!42987)) (StringLiteralValue!21122 (value!214718 List!42987)) (ErrorTokenValue!7040 (msg!7101 List!42987)) )
))
(declare-datatypes ((Regex!11715 0))(
  ( (ElementMatch!11715 (c!692243 C!23616)) (Concat!18756 (regOne!23942 Regex!11715) (regTwo!23942 Regex!11715)) (EmptyExpr!11715) (Star!11715 (reg!12044 Regex!11715)) (EmptyLang!11715) (Union!11715 (regOne!23943 Regex!11715) (regTwo!23943 Regex!11715)) )
))
(declare-datatypes ((TokenValueInjection!13508 0))(
  ( (TokenValueInjection!13509 (toValue!9302 Int) (toChars!9161 Int)) )
))
(declare-datatypes ((Rule!13420 0))(
  ( (Rule!13421 (regex!6810 Regex!11715) (tag!7670 String!48917) (isSeparator!6810 Bool) (transformation!6810 TokenValueInjection!13508)) )
))
(declare-datatypes ((List!42988 0))(
  ( (Nil!42864) (Cons!42864 (h!48284 Rule!13420) (t!332329 List!42988)) )
))
(declare-fun rules!2999 () List!42988)

(declare-fun isEmpty!25606 (List!42988) Bool)

(assert (=> b!4003413 (= res!1626752 (not (isEmpty!25606 rules!2999)))))

(declare-fun b!4003414 () Bool)

(declare-fun e!2482664 () Bool)

(declare-fun e!2482676 () Bool)

(declare-fun tp!1218596 () Bool)

(assert (=> b!4003414 (= e!2482664 (and e!2482676 tp!1218596))))

(declare-fun b!4003415 () Bool)

(declare-fun res!1626755 () Bool)

(assert (=> b!4003415 (=> (not res!1626755) (not e!2482666))))

(declare-fun newSuffix!27 () List!42986)

(declare-fun size!32045 (List!42986) Int)

(assert (=> b!4003415 (= res!1626755 (>= (size!32045 suffix!1299) (size!32045 newSuffix!27)))))

(declare-fun b!4003416 () Bool)

(declare-fun e!2482667 () Bool)

(declare-fun e!2482663 () Bool)

(assert (=> b!4003416 (= e!2482667 (not e!2482663))))

(declare-fun res!1626746 () Bool)

(assert (=> b!4003416 (=> res!1626746 e!2482663)))

(declare-fun lt!1415899 () List!42986)

(assert (=> b!4003416 (= res!1626746 (not (= lt!1415899 lt!1415905)))))

(declare-fun suffixResult!105 () List!42986)

(assert (=> b!4003416 (= lt!1415899 (++!11212 lt!1415912 suffixResult!105))))

(declare-fun lt!1415901 () Unit!61851)

(declare-datatypes ((Token!12758 0))(
  ( (Token!12759 (value!214719 TokenValue!7040) (rule!9844 Rule!13420) (size!32046 Int) (originalCharacters!7410 List!42986)) )
))
(declare-fun token!484 () Token!12758)

(declare-fun lemmaInv!1025 (TokenValueInjection!13508) Unit!61851)

(assert (=> b!4003416 (= lt!1415901 (lemmaInv!1025 (transformation!6810 (rule!9844 token!484))))))

(declare-datatypes ((LexerInterface!6399 0))(
  ( (LexerInterfaceExt!6396 (__x!26298 Int)) (Lexer!6397) )
))
(declare-fun thiss!21717 () LexerInterface!6399)

(declare-fun ruleValid!2742 (LexerInterface!6399 Rule!13420) Bool)

(assert (=> b!4003416 (ruleValid!2742 thiss!21717 (rule!9844 token!484))))

(declare-fun lt!1415900 () Unit!61851)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1816 (LexerInterface!6399 Rule!13420 List!42988) Unit!61851)

(assert (=> b!4003416 (= lt!1415900 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1816 thiss!21717 (rule!9844 token!484) rules!2999))))

(declare-fun b!4003417 () Bool)

(declare-fun e!2482675 () Bool)

(declare-fun tp_is_empty!20401 () Bool)

(declare-fun tp!1218592 () Bool)

(assert (=> b!4003417 (= e!2482675 (and tp_is_empty!20401 tp!1218592))))

(declare-fun b!4003418 () Bool)

(declare-fun e!2482672 () Bool)

(assert (=> b!4003418 (= e!2482672 e!2482667)))

(declare-fun res!1626745 () Bool)

(assert (=> b!4003418 (=> (not res!1626745) (not e!2482667))))

(declare-datatypes ((tuple2!42022 0))(
  ( (tuple2!42023 (_1!24145 Token!12758) (_2!24145 List!42986)) )
))
(declare-datatypes ((Option!9224 0))(
  ( (None!9223) (Some!9223 (v!39585 tuple2!42022)) )
))
(declare-fun maxPrefix!3697 (LexerInterface!6399 List!42988 List!42986) Option!9224)

(assert (=> b!4003418 (= res!1626745 (= (maxPrefix!3697 thiss!21717 rules!2999 lt!1415905) (Some!9223 (tuple2!42023 token!484 suffixResult!105))))))

(declare-fun prefix!494 () List!42986)

(assert (=> b!4003418 (= lt!1415905 (++!11212 prefix!494 suffix!1299))))

(declare-fun b!4003419 () Bool)

(declare-fun e!2482674 () Bool)

(declare-fun tp!1218600 () Bool)

(assert (=> b!4003419 (= e!2482674 (and tp_is_empty!20401 tp!1218600))))

(declare-fun b!4003420 () Bool)

(declare-fun e!2482669 () Bool)

(assert (=> b!4003420 (= e!2482663 e!2482669)))

(declare-fun res!1626753 () Bool)

(assert (=> b!4003420 (=> res!1626753 e!2482669)))

(declare-fun isPrefix!3897 (List!42986 List!42986) Bool)

(assert (=> b!4003420 (= res!1626753 (not (isPrefix!3897 lt!1415912 lt!1415905)))))

(assert (=> b!4003420 (isPrefix!3897 prefix!494 lt!1415905)))

(declare-fun lt!1415913 () Unit!61851)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2738 (List!42986 List!42986) Unit!61851)

(assert (=> b!4003420 (= lt!1415913 (lemmaConcatTwoListThenFirstIsPrefix!2738 prefix!494 suffix!1299))))

(assert (=> b!4003420 (isPrefix!3897 lt!1415912 lt!1415899)))

(declare-fun lt!1415906 () Unit!61851)

(assert (=> b!4003420 (= lt!1415906 (lemmaConcatTwoListThenFirstIsPrefix!2738 lt!1415912 suffixResult!105))))

(declare-fun b!4003421 () Bool)

(declare-fun e!2482668 () Bool)

(declare-fun tp!1218595 () Bool)

(assert (=> b!4003421 (= e!2482668 (and tp_is_empty!20401 tp!1218595))))

(declare-fun e!2482662 () Bool)

(declare-fun e!2482665 () Bool)

(declare-fun tp!1218591 () Bool)

(declare-fun b!4003422 () Bool)

(declare-fun inv!57234 (String!48917) Bool)

(declare-fun inv!57237 (TokenValueInjection!13508) Bool)

(assert (=> b!4003422 (= e!2482662 (and tp!1218591 (inv!57234 (tag!7670 (rule!9844 token!484))) (inv!57237 (transformation!6810 (rule!9844 token!484))) e!2482665))))

(declare-fun b!4003423 () Bool)

(assert (=> b!4003423 (= e!2482669 e!2482679)))

(declare-fun res!1626749 () Bool)

(assert (=> b!4003423 (=> res!1626749 e!2482679)))

(assert (=> b!4003423 (= res!1626749 (not (= lt!1415911 prefix!494)))))

(assert (=> b!4003423 (= lt!1415911 (++!11212 lt!1415912 lt!1415903))))

(declare-fun getSuffix!2322 (List!42986 List!42986) List!42986)

(assert (=> b!4003423 (= lt!1415903 (getSuffix!2322 prefix!494 lt!1415912))))

(assert (=> b!4003423 (isPrefix!3897 lt!1415912 prefix!494)))

(declare-fun lt!1415904 () Unit!61851)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!469 (List!42986 List!42986 List!42986) Unit!61851)

(assert (=> b!4003423 (= lt!1415904 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!469 prefix!494 lt!1415912 lt!1415905))))

(declare-fun b!4003424 () Bool)

(assert (=> b!4003424 (= e!2482666 e!2482672)))

(declare-fun res!1626748 () Bool)

(assert (=> b!4003424 (=> (not res!1626748) (not e!2482672))))

(assert (=> b!4003424 (= res!1626748 (>= (size!32045 prefix!494) (size!32045 lt!1415912)))))

(declare-fun list!15920 (BalanceConc!25636) List!42986)

(declare-fun charsOf!4626 (Token!12758) BalanceConc!25636)

(assert (=> b!4003424 (= lt!1415912 (list!15920 (charsOf!4626 token!484)))))

(declare-fun b!4003425 () Bool)

(declare-fun e!2482680 () Bool)

(declare-fun tp!1218594 () Bool)

(assert (=> b!4003425 (= e!2482680 (and tp_is_empty!20401 tp!1218594))))

(declare-fun tp!1218597 () Bool)

(declare-fun b!4003426 () Bool)

(declare-fun e!2482671 () Bool)

(assert (=> b!4003426 (= e!2482676 (and tp!1218597 (inv!57234 (tag!7670 (h!48284 rules!2999))) (inv!57237 (transformation!6810 (h!48284 rules!2999))) e!2482671))))

(assert (=> b!4003427 (= e!2482665 (and tp!1218599 tp!1218598))))

(declare-fun b!4003429 () Bool)

(declare-fun e!2482677 () Bool)

(declare-fun tp!1218593 () Bool)

(assert (=> b!4003429 (= e!2482677 (and tp_is_empty!20401 tp!1218593))))

(declare-fun b!4003430 () Bool)

(declare-fun tp!1218590 () Bool)

(declare-fun e!2482660 () Bool)

(declare-fun inv!21 (TokenValue!7040) Bool)

(assert (=> b!4003430 (= e!2482660 (and (inv!21 (value!214719 token!484)) e!2482662 tp!1218590))))

(assert (=> b!4003431 (= e!2482671 (and tp!1218588 tp!1218589))))

(declare-fun b!4003432 () Bool)

(assert (=> b!4003432 (= e!2482673 true)))

(assert (=> b!4003432 (= lt!1415909 suffixResult!105)))

(declare-fun lt!1415907 () Unit!61851)

(declare-fun lemmaSamePrefixThenSameSuffix!2068 (List!42986 List!42986 List!42986 List!42986 List!42986) Unit!61851)

(assert (=> b!4003432 (= lt!1415907 (lemmaSamePrefixThenSameSuffix!2068 lt!1415912 lt!1415909 lt!1415912 suffixResult!105 lt!1415905))))

(assert (=> b!4003432 (isPrefix!3897 lt!1415912 lt!1415910)))

(declare-fun lt!1415908 () Unit!61851)

(assert (=> b!4003432 (= lt!1415908 (lemmaConcatTwoListThenFirstIsPrefix!2738 lt!1415912 lt!1415909))))

(declare-fun b!4003433 () Bool)

(declare-fun res!1626747 () Bool)

(assert (=> b!4003433 (=> (not res!1626747) (not e!2482666))))

(declare-fun rulesInvariant!5742 (LexerInterface!6399 List!42988) Bool)

(assert (=> b!4003433 (= res!1626747 (rulesInvariant!5742 thiss!21717 rules!2999))))

(declare-fun b!4003434 () Bool)

(declare-fun res!1626751 () Bool)

(assert (=> b!4003434 (=> (not res!1626751) (not e!2482672))))

(declare-fun newSuffixResult!27 () List!42986)

(assert (=> b!4003434 (= res!1626751 (= (++!11212 lt!1415912 newSuffixResult!27) (++!11212 prefix!494 newSuffix!27)))))

(declare-fun b!4003428 () Bool)

(declare-fun res!1626754 () Bool)

(assert (=> b!4003428 (=> (not res!1626754) (not e!2482666))))

(assert (=> b!4003428 (= res!1626754 (isPrefix!3897 newSuffix!27 suffix!1299))))

(declare-fun res!1626744 () Bool)

(assert (=> start!376788 (=> (not res!1626744) (not e!2482666))))

(get-info :version)

(assert (=> start!376788 (= res!1626744 ((_ is Lexer!6397) thiss!21717))))

(assert (=> start!376788 e!2482666))

(assert (=> start!376788 e!2482677))

(declare-fun inv!57238 (Token!12758) Bool)

(assert (=> start!376788 (and (inv!57238 token!484) e!2482660)))

(assert (=> start!376788 e!2482675))

(assert (=> start!376788 e!2482680))

(assert (=> start!376788 e!2482674))

(assert (=> start!376788 true))

(assert (=> start!376788 e!2482664))

(assert (=> start!376788 e!2482668))

(assert (= (and start!376788 res!1626744) b!4003413))

(assert (= (and b!4003413 res!1626752) b!4003433))

(assert (= (and b!4003433 res!1626747) b!4003415))

(assert (= (and b!4003415 res!1626755) b!4003428))

(assert (= (and b!4003428 res!1626754) b!4003424))

(assert (= (and b!4003424 res!1626748) b!4003434))

(assert (= (and b!4003434 res!1626751) b!4003418))

(assert (= (and b!4003418 res!1626745) b!4003416))

(assert (= (and b!4003416 (not res!1626746)) b!4003420))

(assert (= (and b!4003420 (not res!1626753)) b!4003423))

(assert (= (and b!4003423 (not res!1626749)) b!4003412))

(assert (= (and b!4003412 (not res!1626750)) b!4003432))

(assert (= (and start!376788 ((_ is Cons!42862) prefix!494)) b!4003429))

(assert (= b!4003422 b!4003427))

(assert (= b!4003430 b!4003422))

(assert (= start!376788 b!4003430))

(assert (= (and start!376788 ((_ is Cons!42862) suffixResult!105)) b!4003417))

(assert (= (and start!376788 ((_ is Cons!42862) suffix!1299)) b!4003425))

(assert (= (and start!376788 ((_ is Cons!42862) newSuffix!27)) b!4003419))

(assert (= b!4003426 b!4003431))

(assert (= b!4003414 b!4003426))

(assert (= (and start!376788 ((_ is Cons!42864) rules!2999)) b!4003414))

(assert (= (and start!376788 ((_ is Cons!42862) newSuffixResult!27)) b!4003421))

(declare-fun m!4585867 () Bool)

(assert (=> b!4003434 m!4585867))

(declare-fun m!4585869 () Bool)

(assert (=> b!4003434 m!4585869))

(declare-fun m!4585871 () Bool)

(assert (=> b!4003432 m!4585871))

(declare-fun m!4585873 () Bool)

(assert (=> b!4003432 m!4585873))

(declare-fun m!4585875 () Bool)

(assert (=> b!4003432 m!4585875))

(declare-fun m!4585877 () Bool)

(assert (=> b!4003418 m!4585877))

(declare-fun m!4585879 () Bool)

(assert (=> b!4003418 m!4585879))

(declare-fun m!4585881 () Bool)

(assert (=> b!4003433 m!4585881))

(declare-fun m!4585883 () Bool)

(assert (=> b!4003416 m!4585883))

(declare-fun m!4585885 () Bool)

(assert (=> b!4003416 m!4585885))

(declare-fun m!4585887 () Bool)

(assert (=> b!4003416 m!4585887))

(declare-fun m!4585889 () Bool)

(assert (=> b!4003416 m!4585889))

(declare-fun m!4585891 () Bool)

(assert (=> b!4003428 m!4585891))

(declare-fun m!4585893 () Bool)

(assert (=> b!4003415 m!4585893))

(declare-fun m!4585895 () Bool)

(assert (=> b!4003415 m!4585895))

(declare-fun m!4585897 () Bool)

(assert (=> start!376788 m!4585897))

(declare-fun m!4585899 () Bool)

(assert (=> b!4003423 m!4585899))

(declare-fun m!4585901 () Bool)

(assert (=> b!4003423 m!4585901))

(declare-fun m!4585903 () Bool)

(assert (=> b!4003423 m!4585903))

(declare-fun m!4585905 () Bool)

(assert (=> b!4003423 m!4585905))

(declare-fun m!4585907 () Bool)

(assert (=> b!4003412 m!4585907))

(declare-fun m!4585909 () Bool)

(assert (=> b!4003412 m!4585909))

(declare-fun m!4585911 () Bool)

(assert (=> b!4003412 m!4585911))

(declare-fun m!4585913 () Bool)

(assert (=> b!4003412 m!4585913))

(declare-fun m!4585915 () Bool)

(assert (=> b!4003430 m!4585915))

(declare-fun m!4585917 () Bool)

(assert (=> b!4003426 m!4585917))

(declare-fun m!4585919 () Bool)

(assert (=> b!4003426 m!4585919))

(declare-fun m!4585921 () Bool)

(assert (=> b!4003420 m!4585921))

(declare-fun m!4585923 () Bool)

(assert (=> b!4003420 m!4585923))

(declare-fun m!4585925 () Bool)

(assert (=> b!4003420 m!4585925))

(declare-fun m!4585927 () Bool)

(assert (=> b!4003420 m!4585927))

(declare-fun m!4585929 () Bool)

(assert (=> b!4003420 m!4585929))

(declare-fun m!4585931 () Bool)

(assert (=> b!4003424 m!4585931))

(declare-fun m!4585933 () Bool)

(assert (=> b!4003424 m!4585933))

(declare-fun m!4585935 () Bool)

(assert (=> b!4003424 m!4585935))

(assert (=> b!4003424 m!4585935))

(declare-fun m!4585937 () Bool)

(assert (=> b!4003424 m!4585937))

(declare-fun m!4585939 () Bool)

(assert (=> b!4003413 m!4585939))

(declare-fun m!4585941 () Bool)

(assert (=> b!4003422 m!4585941))

(declare-fun m!4585943 () Bool)

(assert (=> b!4003422 m!4585943))

(check-sat (not b_next!112061) (not b_next!112059) (not b!4003433) (not b!4003432) (not b!4003424) (not b!4003425) (not b!4003426) b_and!307445 (not b!4003418) (not b_next!112057) tp_is_empty!20401 (not b!4003422) (not b!4003417) (not b!4003414) (not b!4003421) (not b_next!112063) (not start!376788) (not b!4003434) (not b!4003423) (not b!4003430) (not b!4003416) b_and!307439 (not b!4003412) b_and!307441 (not b!4003413) b_and!307443 (not b!4003428) (not b!4003415) (not b!4003420) (not b!4003429) (not b!4003419))
(check-sat (not b_next!112057) (not b_next!112063) (not b_next!112061) (not b_next!112059) b_and!307439 b_and!307441 b_and!307443 b_and!307445)
