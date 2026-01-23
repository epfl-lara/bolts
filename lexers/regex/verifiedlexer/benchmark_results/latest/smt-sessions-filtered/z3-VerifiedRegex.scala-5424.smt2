; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!275964 () Bool)

(assert start!275964)

(declare-fun b!2837236 () Bool)

(declare-fun b_free!81889 () Bool)

(declare-fun b_next!82593 () Bool)

(assert (=> b!2837236 (= b_free!81889 (not b_next!82593))))

(declare-fun tp!907973 () Bool)

(declare-fun b_and!207759 () Bool)

(assert (=> b!2837236 (= tp!907973 b_and!207759)))

(declare-fun b_free!81891 () Bool)

(declare-fun b_next!82595 () Bool)

(assert (=> b!2837236 (= b_free!81891 (not b_next!82595))))

(declare-fun tp!907980 () Bool)

(declare-fun b_and!207761 () Bool)

(assert (=> b!2837236 (= tp!907980 b_and!207761)))

(declare-fun b!2837246 () Bool)

(declare-fun b_free!81893 () Bool)

(declare-fun b_next!82597 () Bool)

(assert (=> b!2837246 (= b_free!81893 (not b_next!82597))))

(declare-fun tp!907986 () Bool)

(declare-fun b_and!207763 () Bool)

(assert (=> b!2837246 (= tp!907986 b_and!207763)))

(declare-fun b_free!81895 () Bool)

(declare-fun b_next!82599 () Bool)

(assert (=> b!2837246 (= b_free!81895 (not b_next!82599))))

(declare-fun tp!907981 () Bool)

(declare-fun b_and!207765 () Bool)

(assert (=> b!2837246 (= tp!907981 b_and!207765)))

(declare-fun b!2837245 () Bool)

(declare-fun b_free!81897 () Bool)

(declare-fun b_next!82601 () Bool)

(assert (=> b!2837245 (= b_free!81897 (not b_next!82601))))

(declare-fun tp!907979 () Bool)

(declare-fun b_and!207767 () Bool)

(assert (=> b!2837245 (= tp!907979 b_and!207767)))

(declare-fun b_free!81899 () Bool)

(declare-fun b_next!82603 () Bool)

(assert (=> b!2837245 (= b_free!81899 (not b_next!82603))))

(declare-fun tp!907977 () Bool)

(declare-fun b_and!207769 () Bool)

(assert (=> b!2837245 (= tp!907977 b_and!207769)))

(declare-fun b!2837231 () Bool)

(declare-fun res!1180616 () Bool)

(declare-fun e!1796704 () Bool)

(assert (=> b!2837231 (=> (not res!1180616) (not e!1796704))))

(declare-datatypes ((C!17032 0))(
  ( (C!17033 (val!10528 Int)) )
))
(declare-datatypes ((List!33642 0))(
  ( (Nil!33518) (Cons!33518 (h!38938 C!17032) (t!232019 List!33642)) )
))
(declare-datatypes ((IArray!20833 0))(
  ( (IArray!20834 (innerList!10474 List!33642)) )
))
(declare-datatypes ((Conc!10414 0))(
  ( (Node!10414 (left!25282 Conc!10414) (right!25612 Conc!10414) (csize!21058 Int) (cheight!10625 Int)) (Leaf!15839 (xs!13526 IArray!20833) (csize!21059 Int)) (Empty!10414) )
))
(declare-datatypes ((BalanceConc!20466 0))(
  ( (BalanceConc!20467 (c!458408 Conc!10414)) )
))
(declare-datatypes ((List!33643 0))(
  ( (Nil!33519) (Cons!33519 (h!38939 (_ BitVec 16)) (t!232020 List!33643)) )
))
(declare-datatypes ((Regex!8425 0))(
  ( (ElementMatch!8425 (c!458409 C!17032)) (Concat!13689 (regOne!17362 Regex!8425) (regTwo!17362 Regex!8425)) (EmptyExpr!8425) (Star!8425 (reg!8754 Regex!8425)) (EmptyLang!8425) (Union!8425 (regOne!17363 Regex!8425) (regTwo!17363 Regex!8425)) )
))
(declare-datatypes ((String!36841 0))(
  ( (String!36842 (value!161812 String)) )
))
(declare-datatypes ((TokenValue!5264 0))(
  ( (FloatLiteralValue!10528 (text!37293 List!33643)) (TokenValueExt!5263 (__x!22266 Int)) (Broken!26320 (value!161813 List!33643)) (Object!5387) (End!5264) (Def!5264) (Underscore!5264) (Match!5264) (Else!5264) (Error!5264) (Case!5264) (If!5264) (Extends!5264) (Abstract!5264) (Class!5264) (Val!5264) (DelimiterValue!10528 (del!5324 List!33643)) (KeywordValue!5270 (value!161814 List!33643)) (CommentValue!10528 (value!161815 List!33643)) (WhitespaceValue!10528 (value!161816 List!33643)) (IndentationValue!5264 (value!161817 List!33643)) (String!36843) (Int32!5264) (Broken!26321 (value!161818 List!33643)) (Boolean!5265) (Unit!47440) (OperatorValue!5267 (op!5324 List!33643)) (IdentifierValue!10528 (value!161819 List!33643)) (IdentifierValue!10529 (value!161820 List!33643)) (WhitespaceValue!10529 (value!161821 List!33643)) (True!10528) (False!10528) (Broken!26322 (value!161822 List!33643)) (Broken!26323 (value!161823 List!33643)) (True!10529) (RightBrace!5264) (RightBracket!5264) (Colon!5264) (Null!5264) (Comma!5264) (LeftBracket!5264) (False!10529) (LeftBrace!5264) (ImaginaryLiteralValue!5264 (text!37294 List!33643)) (StringLiteralValue!15792 (value!161824 List!33643)) (EOFValue!5264 (value!161825 List!33643)) (IdentValue!5264 (value!161826 List!33643)) (DelimiterValue!10529 (value!161827 List!33643)) (DedentValue!5264 (value!161828 List!33643)) (NewLineValue!5264 (value!161829 List!33643)) (IntegerValue!15792 (value!161830 (_ BitVec 32)) (text!37295 List!33643)) (IntegerValue!15793 (value!161831 Int) (text!37296 List!33643)) (Times!5264) (Or!5264) (Equal!5264) (Minus!5264) (Broken!26324 (value!161832 List!33643)) (And!5264) (Div!5264) (LessEqual!5264) (Mod!5264) (Concat!13690) (Not!5264) (Plus!5264) (SpaceValue!5264 (value!161833 List!33643)) (IntegerValue!15794 (value!161834 Int) (text!37297 List!33643)) (StringLiteralValue!15793 (text!37298 List!33643)) (FloatLiteralValue!10529 (text!37299 List!33643)) (BytesLiteralValue!5264 (value!161835 List!33643)) (CommentValue!10529 (value!161836 List!33643)) (StringLiteralValue!15794 (value!161837 List!33643)) (ErrorTokenValue!5264 (msg!5325 List!33643)) )
))
(declare-datatypes ((TokenValueInjection!9956 0))(
  ( (TokenValueInjection!9957 (toValue!7076 Int) (toChars!6935 Int)) )
))
(declare-datatypes ((Rule!9868 0))(
  ( (Rule!9869 (regex!5034 Regex!8425) (tag!5538 String!36841) (isSeparator!5034 Bool) (transformation!5034 TokenValueInjection!9956)) )
))
(declare-datatypes ((List!33644 0))(
  ( (Nil!33520) (Cons!33520 (h!38940 Rule!9868) (t!232021 List!33644)) )
))
(declare-fun rules!4246 () List!33644)

(declare-fun isEmpty!18479 (List!33644) Bool)

(assert (=> b!2837231 (= res!1180616 (not (isEmpty!18479 rules!4246)))))

(declare-fun e!1796696 () Bool)

(declare-fun tp!907984 () Bool)

(declare-fun e!1796698 () Bool)

(declare-fun b!2837233 () Bool)

(declare-datatypes ((Token!9470 0))(
  ( (Token!9471 (value!161838 TokenValue!5264) (rule!7462 Rule!9868) (size!26067 Int) (originalCharacters!5766 List!33642)) )
))
(declare-datatypes ((List!33645 0))(
  ( (Nil!33521) (Cons!33521 (h!38941 Token!9470) (t!232022 List!33645)) )
))
(declare-fun tokensBis!14 () List!33645)

(declare-fun inv!21 (TokenValue!5264) Bool)

(assert (=> b!2837233 (= e!1796698 (and (inv!21 (value!161838 (h!38941 tokensBis!14))) e!1796696 tp!907984))))

(declare-fun e!1796694 () Bool)

(declare-fun e!1796700 () Bool)

(declare-fun tokens!612 () List!33645)

(declare-fun tp!907978 () Bool)

(declare-fun b!2837234 () Bool)

(declare-fun inv!45486 (String!36841) Bool)

(declare-fun inv!45489 (TokenValueInjection!9956) Bool)

(assert (=> b!2837234 (= e!1796700 (and tp!907978 (inv!45486 (tag!5538 (rule!7462 (h!38941 tokens!612)))) (inv!45489 (transformation!5034 (rule!7462 (h!38941 tokens!612)))) e!1796694))))

(declare-fun e!1796692 () Bool)

(declare-fun tp!907983 () Bool)

(declare-fun b!2837235 () Bool)

(assert (=> b!2837235 (= e!1796692 (and (inv!21 (value!161838 (h!38941 tokens!612))) e!1796700 tp!907983))))

(assert (=> b!2837236 (= e!1796694 (and tp!907973 tp!907980))))

(declare-fun e!1796703 () Bool)

(declare-fun tp!907976 () Bool)

(declare-fun b!2837237 () Bool)

(declare-fun inv!45490 (Token!9470) Bool)

(assert (=> b!2837237 (= e!1796703 (and (inv!45490 (h!38941 tokens!612)) e!1796692 tp!907976))))

(declare-fun tp!907985 () Bool)

(declare-fun e!1796701 () Bool)

(declare-fun b!2837238 () Bool)

(assert (=> b!2837238 (= e!1796701 (and (inv!45490 (h!38941 tokensBis!14)) e!1796698 tp!907985))))

(declare-fun b!2837239 () Bool)

(declare-fun e!1796702 () Bool)

(declare-fun e!1796689 () Bool)

(declare-fun tp!907975 () Bool)

(assert (=> b!2837239 (= e!1796702 (and e!1796689 tp!907975))))

(declare-fun b!2837240 () Bool)

(declare-fun e!1796693 () Bool)

(declare-fun subseq!500 (List!33645 List!33645) Bool)

(assert (=> b!2837240 (= e!1796693 (not (subseq!500 (t!232022 tokensBis!14) (t!232022 tokens!612))))))

(declare-fun res!1180615 () Bool)

(assert (=> start!275964 (=> (not res!1180615) (not e!1796704))))

(declare-datatypes ((LexerInterface!4624 0))(
  ( (LexerInterfaceExt!4621 (__x!22267 Int)) (Lexer!4622) )
))
(declare-fun thiss!27264 () LexerInterface!4624)

(get-info :version)

(assert (=> start!275964 (= res!1180615 ((_ is Lexer!4622) thiss!27264))))

(assert (=> start!275964 e!1796704))

(assert (=> start!275964 true))

(assert (=> start!275964 e!1796702))

(assert (=> start!275964 e!1796701))

(assert (=> start!275964 e!1796703))

(declare-fun tp!907974 () Bool)

(declare-fun e!1796697 () Bool)

(declare-fun b!2837232 () Bool)

(assert (=> b!2837232 (= e!1796696 (and tp!907974 (inv!45486 (tag!5538 (rule!7462 (h!38941 tokensBis!14)))) (inv!45489 (transformation!5034 (rule!7462 (h!38941 tokensBis!14)))) e!1796697))))

(declare-fun b!2837241 () Bool)

(declare-fun res!1180621 () Bool)

(assert (=> b!2837241 (=> (not res!1180621) (not e!1796704))))

(declare-fun rulesInvariant!4040 (LexerInterface!4624 List!33644) Bool)

(assert (=> b!2837241 (= res!1180621 (rulesInvariant!4040 thiss!27264 rules!4246))))

(declare-fun b!2837242 () Bool)

(declare-fun res!1180623 () Bool)

(assert (=> b!2837242 (=> (not res!1180623) (not e!1796704))))

(assert (=> b!2837242 (= res!1180623 (subseq!500 tokensBis!14 (t!232022 tokens!612)))))

(declare-fun b!2837243 () Bool)

(assert (=> b!2837243 (= e!1796704 false)))

(declare-fun lt!1011473 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1665 (LexerInterface!4624 List!33644 List!33645) Bool)

(assert (=> b!2837243 (= lt!1011473 (rulesProduceEachTokenIndividuallyList!1665 thiss!27264 rules!4246 (t!232022 tokens!612)))))

(declare-fun b!2837244 () Bool)

(declare-fun res!1180618 () Bool)

(assert (=> b!2837244 (=> (not res!1180618) (not e!1796704))))

(assert (=> b!2837244 (= res!1180618 (subseq!500 tokensBis!14 tokens!612))))

(assert (=> b!2837245 (= e!1796697 (and tp!907979 tp!907977))))

(declare-fun e!1796699 () Bool)

(assert (=> b!2837246 (= e!1796699 (and tp!907986 tp!907981))))

(declare-fun b!2837247 () Bool)

(declare-fun res!1180620 () Bool)

(assert (=> b!2837247 (=> (not res!1180620) (not e!1796704))))

(assert (=> b!2837247 (= res!1180620 e!1796693)))

(declare-fun res!1180617 () Bool)

(assert (=> b!2837247 (=> res!1180617 e!1796693)))

(assert (=> b!2837247 (= res!1180617 (not (= (h!38941 tokensBis!14) (h!38941 tokens!612))))))

(declare-fun b!2837248 () Bool)

(declare-fun res!1180622 () Bool)

(assert (=> b!2837248 (=> (not res!1180622) (not e!1796704))))

(assert (=> b!2837248 (= res!1180622 (and (not ((_ is Nil!33521) tokensBis!14)) ((_ is Cons!33521) tokens!612)))))

(declare-fun b!2837249 () Bool)

(declare-fun tp!907982 () Bool)

(assert (=> b!2837249 (= e!1796689 (and tp!907982 (inv!45486 (tag!5538 (h!38940 rules!4246))) (inv!45489 (transformation!5034 (h!38940 rules!4246))) e!1796699))))

(declare-fun b!2837250 () Bool)

(declare-fun res!1180619 () Bool)

(assert (=> b!2837250 (=> (not res!1180619) (not e!1796704))))

(assert (=> b!2837250 (= res!1180619 (rulesProduceEachTokenIndividuallyList!1665 thiss!27264 rules!4246 tokens!612))))

(assert (= (and start!275964 res!1180615) b!2837231))

(assert (= (and b!2837231 res!1180616) b!2837241))

(assert (= (and b!2837241 res!1180621) b!2837244))

(assert (= (and b!2837244 res!1180618) b!2837250))

(assert (= (and b!2837250 res!1180619) b!2837248))

(assert (= (and b!2837248 res!1180622) b!2837247))

(assert (= (and b!2837247 (not res!1180617)) b!2837240))

(assert (= (and b!2837247 res!1180620) b!2837242))

(assert (= (and b!2837242 res!1180623) b!2837243))

(assert (= b!2837249 b!2837246))

(assert (= b!2837239 b!2837249))

(assert (= (and start!275964 ((_ is Cons!33520) rules!4246)) b!2837239))

(assert (= b!2837232 b!2837245))

(assert (= b!2837233 b!2837232))

(assert (= b!2837238 b!2837233))

(assert (= (and start!275964 ((_ is Cons!33521) tokensBis!14)) b!2837238))

(assert (= b!2837234 b!2837236))

(assert (= b!2837235 b!2837234))

(assert (= b!2837237 b!2837235))

(assert (= (and start!275964 ((_ is Cons!33521) tokens!612)) b!2837237))

(declare-fun m!3266873 () Bool)

(assert (=> b!2837232 m!3266873))

(declare-fun m!3266875 () Bool)

(assert (=> b!2837232 m!3266875))

(declare-fun m!3266877 () Bool)

(assert (=> b!2837235 m!3266877))

(declare-fun m!3266879 () Bool)

(assert (=> b!2837242 m!3266879))

(declare-fun m!3266881 () Bool)

(assert (=> b!2837237 m!3266881))

(declare-fun m!3266883 () Bool)

(assert (=> b!2837250 m!3266883))

(declare-fun m!3266885 () Bool)

(assert (=> b!2837249 m!3266885))

(declare-fun m!3266887 () Bool)

(assert (=> b!2837249 m!3266887))

(declare-fun m!3266889 () Bool)

(assert (=> b!2837244 m!3266889))

(declare-fun m!3266891 () Bool)

(assert (=> b!2837240 m!3266891))

(declare-fun m!3266893 () Bool)

(assert (=> b!2837241 m!3266893))

(declare-fun m!3266895 () Bool)

(assert (=> b!2837243 m!3266895))

(declare-fun m!3266897 () Bool)

(assert (=> b!2837234 m!3266897))

(declare-fun m!3266899 () Bool)

(assert (=> b!2837234 m!3266899))

(declare-fun m!3266901 () Bool)

(assert (=> b!2837233 m!3266901))

(declare-fun m!3266903 () Bool)

(assert (=> b!2837238 m!3266903))

(declare-fun m!3266905 () Bool)

(assert (=> b!2837231 m!3266905))

(check-sat b_and!207759 (not b!2837238) (not b!2837237) (not b!2837250) b_and!207763 (not b_next!82601) b_and!207767 b_and!207765 (not b_next!82599) (not b_next!82603) (not b!2837239) (not b!2837231) (not b!2837241) b_and!207769 (not b_next!82595) (not b!2837243) (not b!2837232) (not b_next!82593) (not b!2837235) (not b!2837242) (not b!2837233) (not b_next!82597) b_and!207761 (not b!2837240) (not b!2837249) (not b!2837234) (not b!2837244))
(check-sat b_and!207759 b_and!207763 (not b_next!82601) b_and!207767 b_and!207765 (not b_next!82599) (not b_next!82603) (not b_next!82593) b_and!207769 (not b_next!82595) (not b_next!82597) b_and!207761)
