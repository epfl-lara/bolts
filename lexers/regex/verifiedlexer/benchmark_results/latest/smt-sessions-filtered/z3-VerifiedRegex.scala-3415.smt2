; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192288 () Bool)

(assert start!192288)

(declare-fun b!1919676 () Bool)

(declare-fun b_free!54769 () Bool)

(declare-fun b_next!55473 () Bool)

(assert (=> b!1919676 (= b_free!54769 (not b_next!55473))))

(declare-fun tp!548399 () Bool)

(declare-fun b_and!149975 () Bool)

(assert (=> b!1919676 (= tp!548399 b_and!149975)))

(declare-fun b_free!54771 () Bool)

(declare-fun b_next!55475 () Bool)

(assert (=> b!1919676 (= b_free!54771 (not b_next!55475))))

(declare-fun tp!548390 () Bool)

(declare-fun b_and!149977 () Bool)

(assert (=> b!1919676 (= tp!548390 b_and!149977)))

(declare-fun b!1919681 () Bool)

(declare-fun b_free!54773 () Bool)

(declare-fun b_next!55477 () Bool)

(assert (=> b!1919681 (= b_free!54773 (not b_next!55477))))

(declare-fun tp!548397 () Bool)

(declare-fun b_and!149979 () Bool)

(assert (=> b!1919681 (= tp!548397 b_and!149979)))

(declare-fun b_free!54775 () Bool)

(declare-fun b_next!55479 () Bool)

(assert (=> b!1919681 (= b_free!54775 (not b_next!55479))))

(declare-fun tp!548396 () Bool)

(declare-fun b_and!149981 () Bool)

(assert (=> b!1919681 (= tp!548396 b_and!149981)))

(declare-fun b!1919685 () Bool)

(declare-fun b_free!54777 () Bool)

(declare-fun b_next!55481 () Bool)

(assert (=> b!1919685 (= b_free!54777 (not b_next!55481))))

(declare-fun tp!548394 () Bool)

(declare-fun b_and!149983 () Bool)

(assert (=> b!1919685 (= tp!548394 b_and!149983)))

(declare-fun b_free!54779 () Bool)

(declare-fun b_next!55483 () Bool)

(assert (=> b!1919685 (= b_free!54779 (not b_next!55483))))

(declare-fun tp!548393 () Bool)

(declare-fun b_and!149985 () Bool)

(assert (=> b!1919685 (= tp!548393 b_and!149985)))

(declare-fun b!1919673 () Bool)

(declare-fun res!858500 () Bool)

(declare-fun e!1226976 () Bool)

(assert (=> b!1919673 (=> (not res!858500) (not e!1226976))))

(declare-datatypes ((List!21892 0))(
  ( (Nil!21810) (Cons!21810 (h!27211 (_ BitVec 16)) (t!178685 List!21892)) )
))
(declare-datatypes ((TokenValue!4042 0))(
  ( (FloatLiteralValue!8084 (text!28739 List!21892)) (TokenValueExt!4041 (__x!13582 Int)) (Broken!20210 (value!122886 List!21892)) (Object!4123) (End!4042) (Def!4042) (Underscore!4042) (Match!4042) (Else!4042) (Error!4042) (Case!4042) (If!4042) (Extends!4042) (Abstract!4042) (Class!4042) (Val!4042) (DelimiterValue!8084 (del!4102 List!21892)) (KeywordValue!4048 (value!122887 List!21892)) (CommentValue!8084 (value!122888 List!21892)) (WhitespaceValue!8084 (value!122889 List!21892)) (IndentationValue!4042 (value!122890 List!21892)) (String!25327) (Int32!4042) (Broken!20211 (value!122891 List!21892)) (Boolean!4043) (Unit!36171) (OperatorValue!4045 (op!4102 List!21892)) (IdentifierValue!8084 (value!122892 List!21892)) (IdentifierValue!8085 (value!122893 List!21892)) (WhitespaceValue!8085 (value!122894 List!21892)) (True!8084) (False!8084) (Broken!20212 (value!122895 List!21892)) (Broken!20213 (value!122896 List!21892)) (True!8085) (RightBrace!4042) (RightBracket!4042) (Colon!4042) (Null!4042) (Comma!4042) (LeftBracket!4042) (False!8085) (LeftBrace!4042) (ImaginaryLiteralValue!4042 (text!28740 List!21892)) (StringLiteralValue!12126 (value!122897 List!21892)) (EOFValue!4042 (value!122898 List!21892)) (IdentValue!4042 (value!122899 List!21892)) (DelimiterValue!8085 (value!122900 List!21892)) (DedentValue!4042 (value!122901 List!21892)) (NewLineValue!4042 (value!122902 List!21892)) (IntegerValue!12126 (value!122903 (_ BitVec 32)) (text!28741 List!21892)) (IntegerValue!12127 (value!122904 Int) (text!28742 List!21892)) (Times!4042) (Or!4042) (Equal!4042) (Minus!4042) (Broken!20214 (value!122905 List!21892)) (And!4042) (Div!4042) (LessEqual!4042) (Mod!4042) (Concat!9373) (Not!4042) (Plus!4042) (SpaceValue!4042 (value!122906 List!21892)) (IntegerValue!12128 (value!122907 Int) (text!28743 List!21892)) (StringLiteralValue!12127 (text!28744 List!21892)) (FloatLiteralValue!8085 (text!28745 List!21892)) (BytesLiteralValue!4042 (value!122908 List!21892)) (CommentValue!8085 (value!122909 List!21892)) (StringLiteralValue!12128 (value!122910 List!21892)) (ErrorTokenValue!4042 (msg!4103 List!21892)) )
))
(declare-datatypes ((C!10808 0))(
  ( (C!10809 (val!6356 Int)) )
))
(declare-datatypes ((List!21893 0))(
  ( (Nil!21811) (Cons!21811 (h!27212 C!10808) (t!178686 List!21893)) )
))
(declare-datatypes ((Regex!5331 0))(
  ( (ElementMatch!5331 (c!312139 C!10808)) (Concat!9374 (regOne!11174 Regex!5331) (regTwo!11174 Regex!5331)) (EmptyExpr!5331) (Star!5331 (reg!5660 Regex!5331)) (EmptyLang!5331) (Union!5331 (regOne!11175 Regex!5331) (regTwo!11175 Regex!5331)) )
))
(declare-datatypes ((String!25328 0))(
  ( (String!25329 (value!122911 String)) )
))
(declare-datatypes ((IArray!14563 0))(
  ( (IArray!14564 (innerList!7339 List!21893)) )
))
(declare-datatypes ((Conc!7279 0))(
  ( (Node!7279 (left!17366 Conc!7279) (right!17696 Conc!7279) (csize!14788 Int) (cheight!7490 Int)) (Leaf!10695 (xs!10173 IArray!14563) (csize!14789 Int)) (Empty!7279) )
))
(declare-datatypes ((BalanceConc!14374 0))(
  ( (BalanceConc!14375 (c!312140 Conc!7279)) )
))
(declare-datatypes ((TokenValueInjection!7668 0))(
  ( (TokenValueInjection!7669 (toValue!5535 Int) (toChars!5394 Int)) )
))
(declare-datatypes ((Rule!7612 0))(
  ( (Rule!7613 (regex!3906 Regex!5331) (tag!4346 String!25328) (isSeparator!3906 Bool) (transformation!3906 TokenValueInjection!7668)) )
))
(declare-datatypes ((Token!7364 0))(
  ( (Token!7365 (value!122912 TokenValue!4042) (rule!6109 Rule!7612) (size!17052 Int) (originalCharacters!4713 List!21893)) )
))
(declare-fun separatorToken!354 () Token!7364)

(assert (=> b!1919673 (= res!858500 (isSeparator!3906 (rule!6109 separatorToken!354)))))

(declare-fun b!1919674 () Bool)

(declare-fun res!858498 () Bool)

(assert (=> b!1919674 (=> (not res!858498) (not e!1226976))))

(declare-datatypes ((LexerInterface!3519 0))(
  ( (LexerInterfaceExt!3516 (__x!13583 Int)) (Lexer!3517) )
))
(declare-fun thiss!23328 () LexerInterface!3519)

(declare-datatypes ((List!21894 0))(
  ( (Nil!21812) (Cons!21812 (h!27213 Rule!7612) (t!178687 List!21894)) )
))
(declare-fun rules!3198 () List!21894)

(declare-datatypes ((List!21895 0))(
  ( (Nil!21813) (Cons!21813 (h!27214 Token!7364) (t!178688 List!21895)) )
))
(declare-fun tokens!598 () List!21895)

(declare-fun rulesProduceEachTokenIndividuallyList!1250 (LexerInterface!3519 List!21894 List!21895) Bool)

(assert (=> b!1919674 (= res!858498 (rulesProduceEachTokenIndividuallyList!1250 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1919675 () Bool)

(declare-fun e!1226972 () Bool)

(declare-fun e!1226975 () Bool)

(declare-fun tp!548395 () Bool)

(assert (=> b!1919675 (= e!1226972 (and e!1226975 tp!548395))))

(declare-fun e!1226981 () Bool)

(assert (=> b!1919676 (= e!1226981 (and tp!548399 tp!548390))))

(declare-fun b!1919677 () Bool)

(declare-fun res!858503 () Bool)

(assert (=> b!1919677 (=> (not res!858503) (not e!1226976))))

(declare-fun lambda!74929 () Int)

(declare-fun forall!4602 (List!21895 Int) Bool)

(assert (=> b!1919677 (= res!858503 (forall!4602 tokens!598 lambda!74929))))

(declare-fun b!1919678 () Bool)

(assert (=> b!1919678 (= e!1226976 false)))

(declare-fun tp!548398 () Bool)

(declare-fun e!1226986 () Bool)

(declare-fun b!1919679 () Bool)

(declare-fun e!1226971 () Bool)

(declare-fun inv!21 (TokenValue!4042) Bool)

(assert (=> b!1919679 (= e!1226971 (and (inv!21 (value!122912 separatorToken!354)) e!1226986 tp!548398))))

(declare-fun b!1919680 () Bool)

(declare-fun res!858499 () Bool)

(assert (=> b!1919680 (=> (not res!858499) (not e!1226976))))

(declare-fun rulesProduceIndividualToken!1691 (LexerInterface!3519 List!21894 Token!7364) Bool)

(assert (=> b!1919680 (= res!858499 (rulesProduceIndividualToken!1691 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun e!1226985 () Bool)

(assert (=> b!1919681 (= e!1226985 (and tp!548397 tp!548396))))

(declare-fun tp!548400 () Bool)

(declare-fun b!1919682 () Bool)

(declare-fun inv!28886 (String!25328) Bool)

(declare-fun inv!28889 (TokenValueInjection!7668) Bool)

(assert (=> b!1919682 (= e!1226975 (and tp!548400 (inv!28886 (tag!4346 (h!27213 rules!3198))) (inv!28889 (transformation!3906 (h!27213 rules!3198))) e!1226981))))

(declare-fun tp!548392 () Bool)

(declare-fun b!1919683 () Bool)

(declare-fun e!1226974 () Bool)

(assert (=> b!1919683 (= e!1226974 (and tp!548392 (inv!28886 (tag!4346 (rule!6109 (h!27214 tokens!598)))) (inv!28889 (transformation!3906 (rule!6109 (h!27214 tokens!598)))) e!1226985))))

(declare-fun b!1919684 () Bool)

(declare-fun tp!548389 () Bool)

(declare-fun e!1226978 () Bool)

(assert (=> b!1919684 (= e!1226978 (and (inv!21 (value!122912 (h!27214 tokens!598))) e!1226974 tp!548389))))

(declare-fun e!1226983 () Bool)

(assert (=> b!1919685 (= e!1226983 (and tp!548394 tp!548393))))

(declare-fun res!858497 () Bool)

(assert (=> start!192288 (=> (not res!858497) (not e!1226976))))

(get-info :version)

(assert (=> start!192288 (= res!858497 ((_ is Lexer!3517) thiss!23328))))

(assert (=> start!192288 e!1226976))

(assert (=> start!192288 true))

(assert (=> start!192288 e!1226972))

(declare-fun e!1226982 () Bool)

(assert (=> start!192288 e!1226982))

(declare-fun inv!28890 (Token!7364) Bool)

(assert (=> start!192288 (and (inv!28890 separatorToken!354) e!1226971)))

(declare-fun b!1919686 () Bool)

(declare-fun tp!548391 () Bool)

(assert (=> b!1919686 (= e!1226982 (and (inv!28890 (h!27214 tokens!598)) e!1226978 tp!548391))))

(declare-fun tp!548388 () Bool)

(declare-fun b!1919687 () Bool)

(assert (=> b!1919687 (= e!1226986 (and tp!548388 (inv!28886 (tag!4346 (rule!6109 separatorToken!354))) (inv!28889 (transformation!3906 (rule!6109 separatorToken!354))) e!1226983))))

(declare-fun b!1919688 () Bool)

(declare-fun res!858504 () Bool)

(assert (=> b!1919688 (=> (not res!858504) (not e!1226976))))

(declare-fun rulesInvariant!3126 (LexerInterface!3519 List!21894) Bool)

(assert (=> b!1919688 (= res!858504 (rulesInvariant!3126 thiss!23328 rules!3198))))

(declare-fun b!1919689 () Bool)

(declare-fun res!858501 () Bool)

(assert (=> b!1919689 (=> (not res!858501) (not e!1226976))))

(declare-fun isEmpty!13416 (List!21894) Bool)

(assert (=> b!1919689 (= res!858501 (not (isEmpty!13416 rules!3198)))))

(declare-fun b!1919690 () Bool)

(declare-fun res!858502 () Bool)

(assert (=> b!1919690 (=> (not res!858502) (not e!1226976))))

(declare-fun sepAndNonSepRulesDisjointChars!1004 (List!21894 List!21894) Bool)

(assert (=> b!1919690 (= res!858502 (sepAndNonSepRulesDisjointChars!1004 rules!3198 rules!3198))))

(assert (= (and start!192288 res!858497) b!1919689))

(assert (= (and b!1919689 res!858501) b!1919688))

(assert (= (and b!1919688 res!858504) b!1919674))

(assert (= (and b!1919674 res!858498) b!1919680))

(assert (= (and b!1919680 res!858499) b!1919673))

(assert (= (and b!1919673 res!858500) b!1919677))

(assert (= (and b!1919677 res!858503) b!1919690))

(assert (= (and b!1919690 res!858502) b!1919678))

(assert (= b!1919682 b!1919676))

(assert (= b!1919675 b!1919682))

(assert (= (and start!192288 ((_ is Cons!21812) rules!3198)) b!1919675))

(assert (= b!1919683 b!1919681))

(assert (= b!1919684 b!1919683))

(assert (= b!1919686 b!1919684))

(assert (= (and start!192288 ((_ is Cons!21813) tokens!598)) b!1919686))

(assert (= b!1919687 b!1919685))

(assert (= b!1919679 b!1919687))

(assert (= start!192288 b!1919679))

(declare-fun m!2355091 () Bool)

(assert (=> b!1919682 m!2355091))

(declare-fun m!2355093 () Bool)

(assert (=> b!1919682 m!2355093))

(declare-fun m!2355095 () Bool)

(assert (=> b!1919674 m!2355095))

(declare-fun m!2355097 () Bool)

(assert (=> b!1919683 m!2355097))

(declare-fun m!2355099 () Bool)

(assert (=> b!1919683 m!2355099))

(declare-fun m!2355101 () Bool)

(assert (=> b!1919689 m!2355101))

(declare-fun m!2355103 () Bool)

(assert (=> b!1919677 m!2355103))

(declare-fun m!2355105 () Bool)

(assert (=> b!1919690 m!2355105))

(declare-fun m!2355107 () Bool)

(assert (=> b!1919679 m!2355107))

(declare-fun m!2355109 () Bool)

(assert (=> b!1919687 m!2355109))

(declare-fun m!2355111 () Bool)

(assert (=> b!1919687 m!2355111))

(declare-fun m!2355113 () Bool)

(assert (=> b!1919680 m!2355113))

(declare-fun m!2355115 () Bool)

(assert (=> start!192288 m!2355115))

(declare-fun m!2355117 () Bool)

(assert (=> b!1919684 m!2355117))

(declare-fun m!2355119 () Bool)

(assert (=> b!1919688 m!2355119))

(declare-fun m!2355121 () Bool)

(assert (=> b!1919686 m!2355121))

(check-sat b_and!149975 (not b!1919684) b_and!149979 (not b!1919688) b_and!149983 (not start!192288) (not b_next!55479) (not b!1919680) (not b!1919675) (not b!1919687) (not b_next!55481) b_and!149977 (not b!1919690) (not b_next!55473) (not b!1919686) (not b_next!55477) (not b_next!55483) b_and!149981 (not b!1919682) (not b!1919677) (not b!1919683) (not b!1919689) (not b!1919679) (not b!1919674) (not b_next!55475) b_and!149985)
(check-sat (not b_next!55473) b_and!149975 b_and!149979 b_and!149983 b_and!149981 (not b_next!55479) (not b_next!55481) b_and!149977 (not b_next!55477) (not b_next!55483) (not b_next!55475) b_and!149985)
