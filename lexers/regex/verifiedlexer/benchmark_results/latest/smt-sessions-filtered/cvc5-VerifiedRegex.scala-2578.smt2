; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!138012 () Bool)

(assert start!138012)

(declare-fun b!1472981 () Bool)

(declare-fun b_free!37419 () Bool)

(declare-fun b_next!38123 () Bool)

(assert (=> b!1472981 (= b_free!37419 (not b_next!38123))))

(declare-fun tp!416292 () Bool)

(declare-fun b_and!101273 () Bool)

(assert (=> b!1472981 (= tp!416292 b_and!101273)))

(declare-fun b_free!37421 () Bool)

(declare-fun b_next!38125 () Bool)

(assert (=> b!1472981 (= b_free!37421 (not b_next!38125))))

(declare-fun tp!416301 () Bool)

(declare-fun b_and!101275 () Bool)

(assert (=> b!1472981 (= tp!416301 b_and!101275)))

(declare-fun b!1472971 () Bool)

(declare-fun b_free!37423 () Bool)

(declare-fun b_next!38127 () Bool)

(assert (=> b!1472971 (= b_free!37423 (not b_next!38127))))

(declare-fun tp!416304 () Bool)

(declare-fun b_and!101277 () Bool)

(assert (=> b!1472971 (= tp!416304 b_and!101277)))

(declare-fun b_free!37425 () Bool)

(declare-fun b_next!38129 () Bool)

(assert (=> b!1472971 (= b_free!37425 (not b_next!38129))))

(declare-fun tp!416295 () Bool)

(declare-fun b_and!101279 () Bool)

(assert (=> b!1472971 (= tp!416295 b_and!101279)))

(declare-fun b!1472982 () Bool)

(declare-fun b_free!37427 () Bool)

(declare-fun b_next!38131 () Bool)

(assert (=> b!1472982 (= b_free!37427 (not b_next!38131))))

(declare-fun tp!416299 () Bool)

(declare-fun b_and!101281 () Bool)

(assert (=> b!1472982 (= tp!416299 b_and!101281)))

(declare-fun b_free!37429 () Bool)

(declare-fun b_next!38133 () Bool)

(assert (=> b!1472982 (= b_free!37429 (not b_next!38133))))

(declare-fun tp!416294 () Bool)

(declare-fun b_and!101283 () Bool)

(assert (=> b!1472982 (= tp!416294 b_and!101283)))

(declare-fun b!1472970 () Bool)

(declare-fun res!665739 () Bool)

(declare-fun e!940868 () Bool)

(assert (=> b!1472970 (=> res!665739 e!940868)))

(declare-datatypes ((List!15544 0))(
  ( (Nil!15478) (Cons!15478 (h!20879 (_ BitVec 16)) (t!135989 List!15544)) )
))
(declare-datatypes ((C!8314 0))(
  ( (C!8315 (val!4727 Int)) )
))
(declare-datatypes ((List!15545 0))(
  ( (Nil!15479) (Cons!15479 (h!20880 C!8314) (t!135990 List!15545)) )
))
(declare-datatypes ((Regex!4068 0))(
  ( (ElementMatch!4068 (c!242377 C!8314)) (Concat!6912 (regOne!8648 Regex!4068) (regTwo!8648 Regex!4068)) (EmptyExpr!4068) (Star!4068 (reg!4397 Regex!4068)) (EmptyLang!4068) (Union!4068 (regOne!8649 Regex!4068) (regTwo!8649 Regex!4068)) )
))
(declare-datatypes ((TokenValue!2844 0))(
  ( (FloatLiteralValue!5688 (text!20353 List!15544)) (TokenValueExt!2843 (__x!9478 Int)) (Broken!14220 (value!88112 List!15544)) (Object!2909) (End!2844) (Def!2844) (Underscore!2844) (Match!2844) (Else!2844) (Error!2844) (Case!2844) (If!2844) (Extends!2844) (Abstract!2844) (Class!2844) (Val!2844) (DelimiterValue!5688 (del!2904 List!15544)) (KeywordValue!2850 (value!88113 List!15544)) (CommentValue!5688 (value!88114 List!15544)) (WhitespaceValue!5688 (value!88115 List!15544)) (IndentationValue!2844 (value!88116 List!15544)) (String!18477) (Int32!2844) (Broken!14221 (value!88117 List!15544)) (Boolean!2845) (Unit!25187) (OperatorValue!2847 (op!2904 List!15544)) (IdentifierValue!5688 (value!88118 List!15544)) (IdentifierValue!5689 (value!88119 List!15544)) (WhitespaceValue!5689 (value!88120 List!15544)) (True!5688) (False!5688) (Broken!14222 (value!88121 List!15544)) (Broken!14223 (value!88122 List!15544)) (True!5689) (RightBrace!2844) (RightBracket!2844) (Colon!2844) (Null!2844) (Comma!2844) (LeftBracket!2844) (False!5689) (LeftBrace!2844) (ImaginaryLiteralValue!2844 (text!20354 List!15544)) (StringLiteralValue!8532 (value!88123 List!15544)) (EOFValue!2844 (value!88124 List!15544)) (IdentValue!2844 (value!88125 List!15544)) (DelimiterValue!5689 (value!88126 List!15544)) (DedentValue!2844 (value!88127 List!15544)) (NewLineValue!2844 (value!88128 List!15544)) (IntegerValue!8532 (value!88129 (_ BitVec 32)) (text!20355 List!15544)) (IntegerValue!8533 (value!88130 Int) (text!20356 List!15544)) (Times!2844) (Or!2844) (Equal!2844) (Minus!2844) (Broken!14224 (value!88131 List!15544)) (And!2844) (Div!2844) (LessEqual!2844) (Mod!2844) (Concat!6913) (Not!2844) (Plus!2844) (SpaceValue!2844 (value!88132 List!15544)) (IntegerValue!8534 (value!88133 Int) (text!20357 List!15544)) (StringLiteralValue!8533 (text!20358 List!15544)) (FloatLiteralValue!5689 (text!20359 List!15544)) (BytesLiteralValue!2844 (value!88134 List!15544)) (CommentValue!5689 (value!88135 List!15544)) (StringLiteralValue!8534 (value!88136 List!15544)) (ErrorTokenValue!2844 (msg!2905 List!15544)) )
))
(declare-datatypes ((IArray!10563 0))(
  ( (IArray!10564 (innerList!5339 List!15545)) )
))
(declare-datatypes ((Conc!5279 0))(
  ( (Node!5279 (left!13091 Conc!5279) (right!13421 Conc!5279) (csize!10788 Int) (cheight!5490 Int)) (Leaf!7858 (xs!8034 IArray!10563) (csize!10789 Int)) (Empty!5279) )
))
(declare-datatypes ((BalanceConc!10498 0))(
  ( (BalanceConc!10499 (c!242378 Conc!5279)) )
))
(declare-datatypes ((TokenValueInjection!5348 0))(
  ( (TokenValueInjection!5349 (toValue!4081 Int) (toChars!3940 Int)) )
))
(declare-datatypes ((String!18478 0))(
  ( (String!18479 (value!88137 String)) )
))
(declare-datatypes ((Rule!5308 0))(
  ( (Rule!5309 (regex!2754 Regex!4068) (tag!3018 String!18478) (isSeparator!2754 Bool) (transformation!2754 TokenValueInjection!5348)) )
))
(declare-datatypes ((List!15546 0))(
  ( (Nil!15480) (Cons!15480 (h!20881 Rule!5308) (t!135991 List!15546)) )
))
(declare-fun rules!4290 () List!15546)

(declare-datatypes ((LexerInterface!2410 0))(
  ( (LexerInterfaceExt!2407 (__x!9479 Int)) (Lexer!2408) )
))
(declare-fun thiss!27374 () LexerInterface!2410)

(declare-datatypes ((Token!5170 0))(
  ( (Token!5171 (value!88138 TokenValue!2844) (rule!4531 Rule!5308) (size!12566 Int) (originalCharacters!3616 List!15545)) )
))
(declare-datatypes ((List!15547 0))(
  ( (Nil!15481) (Cons!15481 (h!20882 Token!5170) (t!135992 List!15547)) )
))
(declare-fun l1!3136 () List!15547)

(declare-fun tokensListTwoByTwoPredicateSeparableList!270 (LexerInterface!2410 List!15547 List!15546) Bool)

(assert (=> b!1472970 (= res!665739 (not (tokensListTwoByTwoPredicateSeparableList!270 thiss!27374 (t!135992 l1!3136) rules!4290)))))

(declare-fun e!940875 () Bool)

(assert (=> b!1472971 (= e!940875 (and tp!416304 tp!416295))))

(declare-fun e!940869 () Bool)

(declare-fun tp!416296 () Bool)

(declare-fun e!940867 () Bool)

(declare-fun b!1472972 () Bool)

(declare-fun inv!20691 (Token!5170) Bool)

(assert (=> b!1472972 (= e!940867 (and (inv!20691 (h!20882 l1!3136)) e!940869 tp!416296))))

(declare-fun res!665731 () Bool)

(declare-fun e!940863 () Bool)

(assert (=> start!138012 (=> (not res!665731) (not e!940863))))

(assert (=> start!138012 (= res!665731 (is-Lexer!2408 thiss!27374))))

(assert (=> start!138012 e!940863))

(assert (=> start!138012 true))

(declare-fun e!940876 () Bool)

(assert (=> start!138012 e!940876))

(assert (=> start!138012 e!940867))

(declare-fun e!940871 () Bool)

(assert (=> start!138012 e!940871))

(declare-fun b!1472973 () Bool)

(declare-fun res!665738 () Bool)

(assert (=> b!1472973 (=> (not res!665738) (not e!940863))))

(declare-fun l2!3105 () List!15547)

(declare-fun isEmpty!9671 (List!15547) Bool)

(assert (=> b!1472973 (= res!665738 (not (isEmpty!9671 l2!3105)))))

(declare-fun b!1472974 () Bool)

(assert (=> b!1472974 (= e!940868 true)))

(declare-fun lt!511872 () Token!5170)

(declare-fun lt!511874 () Bool)

(declare-fun lt!511878 () Token!5170)

(declare-fun separableTokensPredicate!553 (LexerInterface!2410 Token!5170 Token!5170 List!15546) Bool)

(assert (=> b!1472974 (= lt!511874 (separableTokensPredicate!553 thiss!27374 lt!511878 lt!511872 rules!4290))))

(declare-fun rulesProduceIndividualToken!1269 (LexerInterface!2410 List!15546 Token!5170) Bool)

(assert (=> b!1472974 (rulesProduceIndividualToken!1269 thiss!27374 rules!4290 lt!511878)))

(declare-datatypes ((Unit!25188 0))(
  ( (Unit!25189) )
))
(declare-fun lt!511873 () Unit!25188)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!450 (LexerInterface!2410 List!15546 List!15547 Token!5170) Unit!25188)

(assert (=> b!1472974 (= lt!511873 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!450 thiss!27374 rules!4290 (t!135992 l1!3136) lt!511878))))

(declare-fun last!312 (List!15547) Token!5170)

(assert (=> b!1472974 (= lt!511878 (last!312 (t!135992 l1!3136)))))

(declare-fun e!940866 () Bool)

(declare-fun e!940861 () Bool)

(declare-fun tp!416293 () Bool)

(declare-fun b!1472975 () Bool)

(declare-fun inv!20688 (String!18478) Bool)

(declare-fun inv!20692 (TokenValueInjection!5348) Bool)

(assert (=> b!1472975 (= e!940861 (and tp!416293 (inv!20688 (tag!3018 (h!20881 rules!4290))) (inv!20692 (transformation!2754 (h!20881 rules!4290))) e!940866))))

(declare-fun b!1472976 () Bool)

(declare-fun res!665730 () Bool)

(assert (=> b!1472976 (=> (not res!665730) (not e!940863))))

(assert (=> b!1472976 (= res!665730 (tokensListTwoByTwoPredicateSeparableList!270 thiss!27374 l1!3136 rules!4290))))

(declare-fun b!1472977 () Bool)

(declare-fun res!665740 () Bool)

(assert (=> b!1472977 (=> res!665740 e!940868)))

(assert (=> b!1472977 (= res!665740 (not (is-Cons!15481 l1!3136)))))

(declare-fun b!1472978 () Bool)

(declare-fun res!665737 () Bool)

(assert (=> b!1472978 (=> res!665737 e!940868)))

(declare-fun rulesProduceEachTokenIndividuallyList!777 (LexerInterface!2410 List!15546 List!15547) Bool)

(assert (=> b!1472978 (= res!665737 (not (rulesProduceEachTokenIndividuallyList!777 thiss!27374 rules!4290 (t!135992 l1!3136))))))

(declare-fun tp!416300 () Bool)

(declare-fun e!940874 () Bool)

(declare-fun b!1472979 () Bool)

(assert (=> b!1472979 (= e!940874 (and tp!416300 (inv!20688 (tag!3018 (rule!4531 (h!20882 l1!3136)))) (inv!20692 (transformation!2754 (rule!4531 (h!20882 l1!3136)))) e!940875))))

(declare-fun b!1472980 () Bool)

(declare-fun res!665733 () Bool)

(assert (=> b!1472980 (=> (not res!665733) (not e!940863))))

(declare-fun rulesInvariant!2199 (LexerInterface!2410 List!15546) Bool)

(assert (=> b!1472980 (= res!665733 (rulesInvariant!2199 thiss!27374 rules!4290))))

(declare-fun e!940862 () Bool)

(assert (=> b!1472981 (= e!940862 (and tp!416292 tp!416301))))

(assert (=> b!1472982 (= e!940866 (and tp!416299 tp!416294))))

(declare-fun b!1472983 () Bool)

(declare-fun e!940865 () Bool)

(declare-fun tp!416298 () Bool)

(declare-fun e!940877 () Bool)

(declare-fun inv!21 (TokenValue!2844) Bool)

(assert (=> b!1472983 (= e!940877 (and (inv!21 (value!88138 (h!20882 l2!3105))) e!940865 tp!416298))))

(declare-fun b!1472984 () Bool)

(declare-fun tp!416297 () Bool)

(assert (=> b!1472984 (= e!940869 (and (inv!21 (value!88138 (h!20882 l1!3136))) e!940874 tp!416297))))

(declare-fun b!1472985 () Bool)

(declare-fun tp!416291 () Bool)

(assert (=> b!1472985 (= e!940876 (and e!940861 tp!416291))))

(declare-fun b!1472986 () Bool)

(assert (=> b!1472986 (= e!940863 (not e!940868))))

(declare-fun res!665728 () Bool)

(assert (=> b!1472986 (=> res!665728 e!940868)))

(declare-fun lt!511876 () Token!5170)

(assert (=> b!1472986 (= res!665728 (not (separableTokensPredicate!553 thiss!27374 lt!511876 lt!511872 rules!4290)))))

(assert (=> b!1472986 (rulesProduceIndividualToken!1269 thiss!27374 rules!4290 lt!511872)))

(declare-fun lt!511875 () Unit!25188)

(assert (=> b!1472986 (= lt!511875 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!450 thiss!27374 rules!4290 l2!3105 lt!511872))))

(declare-fun head!3048 (List!15547) Token!5170)

(assert (=> b!1472986 (= lt!511872 (head!3048 l2!3105))))

(assert (=> b!1472986 (rulesProduceIndividualToken!1269 thiss!27374 rules!4290 lt!511876)))

(declare-fun lt!511877 () Unit!25188)

(assert (=> b!1472986 (= lt!511877 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!450 thiss!27374 rules!4290 l1!3136 lt!511876))))

(assert (=> b!1472986 (= lt!511876 (last!312 l1!3136))))

(declare-fun b!1472987 () Bool)

(declare-fun res!665732 () Bool)

(assert (=> b!1472987 (=> (not res!665732) (not e!940863))))

(assert (=> b!1472987 (= res!665732 (rulesProduceEachTokenIndividuallyList!777 thiss!27374 rules!4290 l1!3136))))

(declare-fun b!1472988 () Bool)

(declare-fun res!665729 () Bool)

(assert (=> b!1472988 (=> res!665729 e!940868)))

(assert (=> b!1472988 (= res!665729 (isEmpty!9671 (t!135992 l1!3136)))))

(declare-fun b!1472989 () Bool)

(declare-fun tp!416302 () Bool)

(assert (=> b!1472989 (= e!940871 (and (inv!20691 (h!20882 l2!3105)) e!940877 tp!416302))))

(declare-fun b!1472990 () Bool)

(declare-fun res!665735 () Bool)

(assert (=> b!1472990 (=> (not res!665735) (not e!940863))))

(declare-fun isEmpty!9672 (List!15546) Bool)

(assert (=> b!1472990 (= res!665735 (not (isEmpty!9672 rules!4290)))))

(declare-fun b!1472991 () Bool)

(declare-fun tp!416303 () Bool)

(assert (=> b!1472991 (= e!940865 (and tp!416303 (inv!20688 (tag!3018 (rule!4531 (h!20882 l2!3105)))) (inv!20692 (transformation!2754 (rule!4531 (h!20882 l2!3105)))) e!940862))))

(declare-fun b!1472992 () Bool)

(declare-fun res!665736 () Bool)

(assert (=> b!1472992 (=> (not res!665736) (not e!940863))))

(assert (=> b!1472992 (= res!665736 (not (isEmpty!9671 l1!3136)))))

(declare-fun b!1472993 () Bool)

(declare-fun res!665734 () Bool)

(assert (=> b!1472993 (=> (not res!665734) (not e!940863))))

(assert (=> b!1472993 (= res!665734 (rulesProduceEachTokenIndividuallyList!777 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1472994 () Bool)

(declare-fun res!665741 () Bool)

(assert (=> b!1472994 (=> (not res!665741) (not e!940863))))

(assert (=> b!1472994 (= res!665741 (tokensListTwoByTwoPredicateSeparableList!270 thiss!27374 l2!3105 rules!4290))))

(assert (= (and start!138012 res!665731) b!1472990))

(assert (= (and b!1472990 res!665735) b!1472980))

(assert (= (and b!1472980 res!665733) b!1472987))

(assert (= (and b!1472987 res!665732) b!1472993))

(assert (= (and b!1472993 res!665734) b!1472976))

(assert (= (and b!1472976 res!665730) b!1472994))

(assert (= (and b!1472994 res!665741) b!1472992))

(assert (= (and b!1472992 res!665736) b!1472973))

(assert (= (and b!1472973 res!665738) b!1472986))

(assert (= (and b!1472986 (not res!665728)) b!1472977))

(assert (= (and b!1472977 (not res!665740)) b!1472988))

(assert (= (and b!1472988 (not res!665729)) b!1472978))

(assert (= (and b!1472978 (not res!665737)) b!1472970))

(assert (= (and b!1472970 (not res!665739)) b!1472974))

(assert (= b!1472975 b!1472982))

(assert (= b!1472985 b!1472975))

(assert (= (and start!138012 (is-Cons!15480 rules!4290)) b!1472985))

(assert (= b!1472979 b!1472971))

(assert (= b!1472984 b!1472979))

(assert (= b!1472972 b!1472984))

(assert (= (and start!138012 (is-Cons!15481 l1!3136)) b!1472972))

(assert (= b!1472991 b!1472981))

(assert (= b!1472983 b!1472991))

(assert (= b!1472989 b!1472983))

(assert (= (and start!138012 (is-Cons!15481 l2!3105)) b!1472989))

(declare-fun m!1716997 () Bool)

(assert (=> b!1472970 m!1716997))

(declare-fun m!1716999 () Bool)

(assert (=> b!1472983 m!1716999))

(declare-fun m!1717001 () Bool)

(assert (=> b!1472993 m!1717001))

(declare-fun m!1717003 () Bool)

(assert (=> b!1472994 m!1717003))

(declare-fun m!1717005 () Bool)

(assert (=> b!1472974 m!1717005))

(declare-fun m!1717007 () Bool)

(assert (=> b!1472974 m!1717007))

(declare-fun m!1717009 () Bool)

(assert (=> b!1472974 m!1717009))

(declare-fun m!1717011 () Bool)

(assert (=> b!1472974 m!1717011))

(declare-fun m!1717013 () Bool)

(assert (=> b!1472991 m!1717013))

(declare-fun m!1717015 () Bool)

(assert (=> b!1472991 m!1717015))

(declare-fun m!1717017 () Bool)

(assert (=> b!1472978 m!1717017))

(declare-fun m!1717019 () Bool)

(assert (=> b!1472989 m!1717019))

(declare-fun m!1717021 () Bool)

(assert (=> b!1472992 m!1717021))

(declare-fun m!1717023 () Bool)

(assert (=> b!1472979 m!1717023))

(declare-fun m!1717025 () Bool)

(assert (=> b!1472979 m!1717025))

(declare-fun m!1717027 () Bool)

(assert (=> b!1472986 m!1717027))

(declare-fun m!1717029 () Bool)

(assert (=> b!1472986 m!1717029))

(declare-fun m!1717031 () Bool)

(assert (=> b!1472986 m!1717031))

(declare-fun m!1717033 () Bool)

(assert (=> b!1472986 m!1717033))

(declare-fun m!1717035 () Bool)

(assert (=> b!1472986 m!1717035))

(declare-fun m!1717037 () Bool)

(assert (=> b!1472986 m!1717037))

(declare-fun m!1717039 () Bool)

(assert (=> b!1472986 m!1717039))

(declare-fun m!1717041 () Bool)

(assert (=> b!1472990 m!1717041))

(declare-fun m!1717043 () Bool)

(assert (=> b!1472975 m!1717043))

(declare-fun m!1717045 () Bool)

(assert (=> b!1472975 m!1717045))

(declare-fun m!1717047 () Bool)

(assert (=> b!1472973 m!1717047))

(declare-fun m!1717049 () Bool)

(assert (=> b!1472976 m!1717049))

(declare-fun m!1717051 () Bool)

(assert (=> b!1472972 m!1717051))

(declare-fun m!1717053 () Bool)

(assert (=> b!1472988 m!1717053))

(declare-fun m!1717055 () Bool)

(assert (=> b!1472984 m!1717055))

(declare-fun m!1717057 () Bool)

(assert (=> b!1472987 m!1717057))

(declare-fun m!1717059 () Bool)

(assert (=> b!1472980 m!1717059))

(push 1)

(assert (not b!1472988))

(assert (not b!1472984))

(assert (not b!1472975))

(assert (not b_next!38125))

(assert (not b!1472990))

(assert b_and!101275)

(assert (not b_next!38131))

(assert (not b!1472974))

(assert (not b!1472983))

(assert (not b!1472978))

(assert (not b!1472992))

(assert (not b_next!38127))

(assert b_and!101283)

(assert b_and!101281)

(assert (not b!1472970))

(assert (not b_next!38123))

(assert (not b!1472979))

(assert (not b!1472991))

(assert b_and!101277)

(assert (not b!1472987))

(assert (not b_next!38133))

(assert (not b!1472985))

(assert (not b!1472993))

(assert (not b!1472976))

(assert (not b!1472986))

(assert (not b!1472972))

(assert b_and!101273)

(assert (not b!1472973))

(assert (not b!1472980))

(assert (not b_next!38129))

(assert b_and!101279)

(assert (not b!1472994))

(assert (not b!1472989))

(check-sat)

(pop 1)

(push 1)

(assert b_and!101281)

(assert (not b_next!38125))

(assert (not b_next!38123))

(assert b_and!101275)

(assert (not b_next!38131))

(assert b_and!101273)

(assert (not b_next!38127))

(assert b_and!101283)

(assert b_and!101277)

(assert (not b_next!38133))

(assert (not b_next!38129))

(assert b_and!101279)

(check-sat)

(pop 1)

