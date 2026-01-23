; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!515012 () Bool)

(assert start!515012)

(declare-fun b!4909377 () Bool)

(declare-fun b_free!131955 () Bool)

(declare-fun b_next!132745 () Bool)

(assert (=> b!4909377 (= b_free!131955 (not b_next!132745))))

(declare-fun tp!1380629 () Bool)

(declare-fun b_and!346627 () Bool)

(assert (=> b!4909377 (= tp!1380629 b_and!346627)))

(declare-fun b_free!131957 () Bool)

(declare-fun b_next!132747 () Bool)

(assert (=> b!4909377 (= b_free!131957 (not b_next!132747))))

(declare-fun tp!1380630 () Bool)

(declare-fun b_and!346629 () Bool)

(assert (=> b!4909377 (= tp!1380630 b_and!346629)))

(declare-fun b!4909387 () Bool)

(declare-fun e!3068688 () Bool)

(assert (=> b!4909387 (= e!3068688 true)))

(declare-fun b!4909386 () Bool)

(declare-fun e!3068687 () Bool)

(assert (=> b!4909386 (= e!3068687 e!3068688)))

(declare-fun b!4909378 () Bool)

(assert (=> b!4909378 e!3068687))

(assert (= b!4909386 b!4909387))

(assert (= b!4909378 b!4909386))

(declare-fun lambda!244660 () Int)

(declare-fun order!25857 () Int)

(declare-fun order!25859 () Int)

(declare-datatypes ((C!26840 0))(
  ( (C!26841 (val!22754 Int)) )
))
(declare-datatypes ((Regex!13321 0))(
  ( (ElementMatch!13321 (c!834497 C!26840)) (Concat!21877 (regOne!27154 Regex!13321) (regTwo!27154 Regex!13321)) (EmptyExpr!13321) (Star!13321 (reg!13650 Regex!13321)) (EmptyLang!13321) (Union!13321 (regOne!27155 Regex!13321) (regTwo!27155 Regex!13321)) )
))
(declare-datatypes ((String!64221 0))(
  ( (String!64222 (value!264117 String)) )
))
(declare-datatypes ((List!56690 0))(
  ( (Nil!56566) (Cons!56566 (h!63014 (_ BitVec 16)) (t!366982 List!56690)) )
))
(declare-datatypes ((TokenValue!8556 0))(
  ( (FloatLiteralValue!17112 (text!60337 List!56690)) (TokenValueExt!8555 (__x!34405 Int)) (Broken!42780 (value!264118 List!56690)) (Object!8679) (End!8556) (Def!8556) (Underscore!8556) (Match!8556) (Else!8556) (Error!8556) (Case!8556) (If!8556) (Extends!8556) (Abstract!8556) (Class!8556) (Val!8556) (DelimiterValue!17112 (del!8616 List!56690)) (KeywordValue!8562 (value!264119 List!56690)) (CommentValue!17112 (value!264120 List!56690)) (WhitespaceValue!17112 (value!264121 List!56690)) (IndentationValue!8556 (value!264122 List!56690)) (String!64223) (Int32!8556) (Broken!42781 (value!264123 List!56690)) (Boolean!8557) (Unit!146803) (OperatorValue!8559 (op!8616 List!56690)) (IdentifierValue!17112 (value!264124 List!56690)) (IdentifierValue!17113 (value!264125 List!56690)) (WhitespaceValue!17113 (value!264126 List!56690)) (True!17112) (False!17112) (Broken!42782 (value!264127 List!56690)) (Broken!42783 (value!264128 List!56690)) (True!17113) (RightBrace!8556) (RightBracket!8556) (Colon!8556) (Null!8556) (Comma!8556) (LeftBracket!8556) (False!17113) (LeftBrace!8556) (ImaginaryLiteralValue!8556 (text!60338 List!56690)) (StringLiteralValue!25668 (value!264129 List!56690)) (EOFValue!8556 (value!264130 List!56690)) (IdentValue!8556 (value!264131 List!56690)) (DelimiterValue!17113 (value!264132 List!56690)) (DedentValue!8556 (value!264133 List!56690)) (NewLineValue!8556 (value!264134 List!56690)) (IntegerValue!25668 (value!264135 (_ BitVec 32)) (text!60339 List!56690)) (IntegerValue!25669 (value!264136 Int) (text!60340 List!56690)) (Times!8556) (Or!8556) (Equal!8556) (Minus!8556) (Broken!42784 (value!264137 List!56690)) (And!8556) (Div!8556) (LessEqual!8556) (Mod!8556) (Concat!21878) (Not!8556) (Plus!8556) (SpaceValue!8556 (value!264138 List!56690)) (IntegerValue!25670 (value!264139 Int) (text!60341 List!56690)) (StringLiteralValue!25669 (text!60342 List!56690)) (FloatLiteralValue!17113 (text!60343 List!56690)) (BytesLiteralValue!8556 (value!264140 List!56690)) (CommentValue!17113 (value!264141 List!56690)) (StringLiteralValue!25670 (value!264142 List!56690)) (ErrorTokenValue!8556 (msg!8617 List!56690)) )
))
(declare-datatypes ((List!56691 0))(
  ( (Nil!56567) (Cons!56567 (h!63015 C!26840) (t!366983 List!56691)) )
))
(declare-datatypes ((IArray!29689 0))(
  ( (IArray!29690 (innerList!14902 List!56691)) )
))
(declare-datatypes ((Conc!14814 0))(
  ( (Node!14814 (left!41207 Conc!14814) (right!41537 Conc!14814) (csize!29858 Int) (cheight!15025 Int)) (Leaf!24654 (xs!18130 IArray!29689) (csize!29859 Int)) (Empty!14814) )
))
(declare-datatypes ((BalanceConc!29058 0))(
  ( (BalanceConc!29059 (c!834498 Conc!14814)) )
))
(declare-datatypes ((TokenValueInjection!16420 0))(
  ( (TokenValueInjection!16421 (toValue!11183 Int) (toChars!11042 Int)) )
))
(declare-datatypes ((Rule!16292 0))(
  ( (Rule!16293 (regex!8246 Regex!13321) (tag!9110 String!64221) (isSeparator!8246 Bool) (transformation!8246 TokenValueInjection!16420)) )
))
(declare-fun rule!164 () Rule!16292)

(declare-fun dynLambda!22907 (Int Int) Int)

(declare-fun dynLambda!22908 (Int Int) Int)

(assert (=> b!4909387 (< (dynLambda!22907 order!25857 (toValue!11183 (transformation!8246 rule!164))) (dynLambda!22908 order!25859 lambda!244660))))

(declare-fun order!25861 () Int)

(declare-fun dynLambda!22909 (Int Int) Int)

(assert (=> b!4909387 (< (dynLambda!22909 order!25861 (toChars!11042 (transformation!8246 rule!164))) (dynLambda!22908 order!25859 lambda!244660))))

(declare-fun b!4909367 () Bool)

(declare-fun res!2097089 () Bool)

(declare-fun e!3068674 () Bool)

(assert (=> b!4909367 (=> (not res!2097089) (not e!3068674))))

(declare-datatypes ((LexerInterface!7838 0))(
  ( (LexerInterfaceExt!7835 (__x!34406 Int)) (Lexer!7836) )
))
(declare-fun thiss!15943 () LexerInterface!7838)

(declare-fun ruleValid!3743 (LexerInterface!7838 Rule!16292) Bool)

(assert (=> b!4909367 (= res!2097089 (ruleValid!3743 thiss!15943 rule!164))))

(declare-fun b!4909368 () Bool)

(declare-datatypes ((Token!15020 0))(
  ( (Token!15021 (value!264143 TokenValue!8556) (rule!11458 Rule!16292) (size!37325 Int) (originalCharacters!8541 List!56691)) )
))
(declare-fun lt!2014897 () Token!15020)

(declare-fun lt!2014899 () Int)

(declare-fun lt!2014893 () TokenValue!8556)

(declare-datatypes ((tuple2!60900 0))(
  ( (tuple2!60901 (_1!33753 Token!15020) (_2!33753 List!56691)) )
))
(declare-fun lt!2014907 () tuple2!60900)

(declare-fun e!3068676 () Bool)

(declare-fun lt!2014906 () List!56691)

(assert (=> b!4909368 (= e!3068676 (or (not (= (value!264143 (_1!33753 lt!2014907)) lt!2014893)) (not (= (rule!11458 (_1!33753 lt!2014907)) rule!164)) (not (= (size!37325 (_1!33753 lt!2014907)) lt!2014899)) (not (= (originalCharacters!8541 (_1!33753 lt!2014907)) lt!2014906)) (= lt!2014897 (_1!33753 lt!2014907))))))

(declare-datatypes ((Option!14129 0))(
  ( (None!14128) (Some!14128 (v!50090 tuple2!60900)) )
))
(declare-fun lt!2014892 () Option!14129)

(declare-fun get!19575 (Option!14129) tuple2!60900)

(assert (=> b!4909368 (= lt!2014907 (get!19575 lt!2014892))))

(declare-fun b!4909369 () Bool)

(declare-fun res!2097083 () Bool)

(declare-fun e!3068682 () Bool)

(assert (=> b!4909369 (=> res!2097083 e!3068682)))

(declare-fun lt!2014896 () Bool)

(assert (=> b!4909369 (= res!2097083 (not lt!2014896))))

(declare-fun b!4909370 () Bool)

(declare-fun res!2097090 () Bool)

(assert (=> b!4909370 (=> res!2097090 e!3068682)))

(declare-fun lt!2014902 () BalanceConc!29058)

(declare-fun list!17842 (BalanceConc!29058) List!56691)

(assert (=> b!4909370 (= res!2097090 (not (= (list!17842 lt!2014902) lt!2014906)))))

(declare-fun b!4909371 () Bool)

(declare-fun e!3068675 () Bool)

(assert (=> b!4909371 (= e!3068674 e!3068675)))

(declare-fun res!2097084 () Bool)

(assert (=> b!4909371 (=> (not res!2097084) (not e!3068675))))

(declare-datatypes ((tuple2!60902 0))(
  ( (tuple2!60903 (_1!33754 BalanceConc!29058) (_2!33754 BalanceConc!29058)) )
))
(declare-fun lt!2014905 () tuple2!60902)

(declare-fun isEmpty!30477 (BalanceConc!29058) Bool)

(assert (=> b!4909371 (= res!2097084 (not (isEmpty!30477 (_1!33754 lt!2014905))))))

(declare-fun input!1509 () BalanceConc!29058)

(declare-fun findLongestMatchWithZipperSequence!334 (Regex!13321 BalanceConc!29058) tuple2!60902)

(assert (=> b!4909371 (= lt!2014905 (findLongestMatchWithZipperSequence!334 (regex!8246 rule!164) input!1509))))

(declare-fun res!2097091 () Bool)

(assert (=> start!515012 (=> (not res!2097091) (not e!3068674))))

(get-info :version)

(assert (=> start!515012 (= res!2097091 ((_ is Lexer!7836) thiss!15943))))

(assert (=> start!515012 e!3068674))

(assert (=> start!515012 true))

(declare-fun e!3068673 () Bool)

(assert (=> start!515012 e!3068673))

(declare-fun e!3068678 () Bool)

(declare-fun inv!73095 (BalanceConc!29058) Bool)

(assert (=> start!515012 (and (inv!73095 input!1509) e!3068678)))

(declare-fun b!4909372 () Bool)

(assert (=> b!4909372 (= e!3068682 e!3068676)))

(declare-fun res!2097086 () Bool)

(assert (=> b!4909372 (=> res!2097086 e!3068676)))

(declare-fun apply!13590 (TokenValueInjection!16420 BalanceConc!29058) TokenValue!8556)

(assert (=> b!4909372 (= res!2097086 (not (= (apply!13590 (transformation!8246 rule!164) lt!2014902) lt!2014893)))))

(declare-datatypes ((Unit!146804 0))(
  ( (Unit!146805) )
))
(declare-fun lt!2014898 () Unit!146804)

(declare-fun lemmaEqSameImage!1128 (TokenValueInjection!16420 BalanceConc!29058 BalanceConc!29058) Unit!146804)

(assert (=> b!4909372 (= lt!2014898 (lemmaEqSameImage!1128 (transformation!8246 rule!164) (_1!33754 lt!2014905) lt!2014902))))

(declare-fun b!4909373 () Bool)

(declare-fun e!3068677 () Bool)

(assert (=> b!4909373 (= e!3068677 e!3068682)))

(declare-fun res!2097092 () Bool)

(assert (=> b!4909373 (=> res!2097092 e!3068682)))

(declare-fun isDefined!11138 (Option!14129) Bool)

(assert (=> b!4909373 (= res!2097092 (not (= lt!2014896 (isDefined!11138 lt!2014892))))))

(declare-datatypes ((tuple2!60904 0))(
  ( (tuple2!60905 (_1!33755 Token!15020) (_2!33755 BalanceConc!29058)) )
))
(declare-datatypes ((Option!14130 0))(
  ( (None!14129) (Some!14129 (v!50091 tuple2!60904)) )
))
(declare-fun isDefined!11139 (Option!14130) Bool)

(assert (=> b!4909373 (= lt!2014896 (isDefined!11139 (Some!14129 (tuple2!60905 lt!2014897 (_2!33754 lt!2014905)))))))

(declare-fun lt!2014904 () List!56691)

(declare-fun maxPrefixOneRule!3583 (LexerInterface!7838 Rule!16292 List!56691) Option!14129)

(assert (=> b!4909373 (= lt!2014892 (maxPrefixOneRule!3583 thiss!15943 rule!164 lt!2014904))))

(assert (=> b!4909373 (= lt!2014897 (Token!15021 lt!2014893 rule!164 lt!2014899 lt!2014906))))

(declare-fun size!37326 (BalanceConc!29058) Int)

(assert (=> b!4909373 (= lt!2014899 (size!37326 (_1!33754 lt!2014905)))))

(assert (=> b!4909373 (= lt!2014893 (apply!13590 (transformation!8246 rule!164) (_1!33754 lt!2014905)))))

(declare-fun lt!2014900 () Unit!146804)

(declare-fun ForallOf!1183 (Int BalanceConc!29058) Unit!146804)

(assert (=> b!4909373 (= lt!2014900 (ForallOf!1183 lambda!244660 lt!2014902))))

(declare-fun seqFromList!5988 (List!56691) BalanceConc!29058)

(assert (=> b!4909373 (= lt!2014902 (seqFromList!5988 lt!2014906))))

(assert (=> b!4909373 (= lt!2014906 (list!17842 (_1!33754 lt!2014905)))))

(declare-fun lt!2014903 () Unit!146804)

(assert (=> b!4909373 (= lt!2014903 (ForallOf!1183 lambda!244660 (_1!33754 lt!2014905)))))

(declare-fun b!4909374 () Bool)

(declare-fun tp!1380631 () Bool)

(declare-fun inv!73096 (Conc!14814) Bool)

(assert (=> b!4909374 (= e!3068678 (and (inv!73096 (c!834498 input!1509)) tp!1380631))))

(declare-fun b!4909375 () Bool)

(declare-fun e!3068679 () Bool)

(declare-fun tp!1380628 () Bool)

(declare-fun inv!73091 (String!64221) Bool)

(declare-fun inv!73097 (TokenValueInjection!16420) Bool)

(assert (=> b!4909375 (= e!3068673 (and tp!1380628 (inv!73091 (tag!9110 rule!164)) (inv!73097 (transformation!8246 rule!164)) e!3068679))))

(declare-fun b!4909376 () Bool)

(declare-fun e!3068680 () Bool)

(declare-datatypes ((tuple2!60906 0))(
  ( (tuple2!60907 (_1!33756 List!56691) (_2!33756 List!56691)) )
))
(declare-fun lt!2014895 () tuple2!60906)

(declare-fun matchR!6588 (Regex!13321 List!56691) Bool)

(assert (=> b!4909376 (= e!3068680 (matchR!6588 (regex!8246 rule!164) (_1!33756 lt!2014895)))))

(assert (=> b!4909377 (= e!3068679 (and tp!1380629 tp!1380630))))

(declare-fun res!2097085 () Bool)

(assert (=> b!4909378 (=> res!2097085 e!3068677)))

(declare-fun Forall!1743 (Int) Bool)

(assert (=> b!4909378 (= res!2097085 (not (Forall!1743 lambda!244660)))))

(declare-fun b!4909379 () Bool)

(assert (=> b!4909379 (= e!3068675 (not e!3068677))))

(declare-fun res!2097087 () Bool)

(assert (=> b!4909379 (=> res!2097087 e!3068677)))

(declare-fun semiInverseModEq!3647 (Int Int) Bool)

(assert (=> b!4909379 (= res!2097087 (not (semiInverseModEq!3647 (toChars!11042 (transformation!8246 rule!164)) (toValue!11183 (transformation!8246 rule!164)))))))

(declare-fun lt!2014894 () Unit!146804)

(declare-fun lemmaInv!1292 (TokenValueInjection!16420) Unit!146804)

(assert (=> b!4909379 (= lt!2014894 (lemmaInv!1292 (transformation!8246 rule!164)))))

(assert (=> b!4909379 e!3068680))

(declare-fun res!2097088 () Bool)

(assert (=> b!4909379 (=> res!2097088 e!3068680)))

(declare-fun isEmpty!30478 (List!56691) Bool)

(assert (=> b!4909379 (= res!2097088 (isEmpty!30478 (_1!33756 lt!2014895)))))

(declare-fun findLongestMatchInner!1809 (Regex!13321 List!56691 Int List!56691 List!56691 Int) tuple2!60906)

(declare-fun size!37327 (List!56691) Int)

(assert (=> b!4909379 (= lt!2014895 (findLongestMatchInner!1809 (regex!8246 rule!164) Nil!56567 (size!37327 Nil!56567) lt!2014904 lt!2014904 (size!37327 lt!2014904)))))

(declare-fun lt!2014901 () Unit!146804)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1772 (Regex!13321 List!56691) Unit!146804)

(assert (=> b!4909379 (= lt!2014901 (longestMatchIsAcceptedByMatchOrIsEmpty!1772 (regex!8246 rule!164) lt!2014904))))

(assert (=> b!4909379 (= lt!2014904 (list!17842 input!1509))))

(assert (= (and start!515012 res!2097091) b!4909367))

(assert (= (and b!4909367 res!2097089) b!4909371))

(assert (= (and b!4909371 res!2097084) b!4909379))

(assert (= (and b!4909379 (not res!2097088)) b!4909376))

(assert (= (and b!4909379 (not res!2097087)) b!4909378))

(assert (= (and b!4909378 (not res!2097085)) b!4909373))

(assert (= (and b!4909373 (not res!2097092)) b!4909369))

(assert (= (and b!4909369 (not res!2097083)) b!4909370))

(assert (= (and b!4909370 (not res!2097090)) b!4909372))

(assert (= (and b!4909372 (not res!2097086)) b!4909368))

(assert (= b!4909375 b!4909377))

(assert (= start!515012 b!4909375))

(assert (= start!515012 b!4909374))

(declare-fun m!5919142 () Bool)

(assert (=> b!4909371 m!5919142))

(declare-fun m!5919144 () Bool)

(assert (=> b!4909371 m!5919144))

(declare-fun m!5919146 () Bool)

(assert (=> start!515012 m!5919146))

(declare-fun m!5919148 () Bool)

(assert (=> b!4909372 m!5919148))

(declare-fun m!5919150 () Bool)

(assert (=> b!4909372 m!5919150))

(declare-fun m!5919152 () Bool)

(assert (=> b!4909375 m!5919152))

(declare-fun m!5919154 () Bool)

(assert (=> b!4909375 m!5919154))

(declare-fun m!5919156 () Bool)

(assert (=> b!4909376 m!5919156))

(declare-fun m!5919158 () Bool)

(assert (=> b!4909370 m!5919158))

(declare-fun m!5919160 () Bool)

(assert (=> b!4909378 m!5919160))

(declare-fun m!5919162 () Bool)

(assert (=> b!4909368 m!5919162))

(declare-fun m!5919164 () Bool)

(assert (=> b!4909367 m!5919164))

(declare-fun m!5919166 () Bool)

(assert (=> b!4909374 m!5919166))

(declare-fun m!5919168 () Bool)

(assert (=> b!4909373 m!5919168))

(declare-fun m!5919170 () Bool)

(assert (=> b!4909373 m!5919170))

(declare-fun m!5919172 () Bool)

(assert (=> b!4909373 m!5919172))

(declare-fun m!5919174 () Bool)

(assert (=> b!4909373 m!5919174))

(declare-fun m!5919176 () Bool)

(assert (=> b!4909373 m!5919176))

(declare-fun m!5919178 () Bool)

(assert (=> b!4909373 m!5919178))

(declare-fun m!5919180 () Bool)

(assert (=> b!4909373 m!5919180))

(declare-fun m!5919182 () Bool)

(assert (=> b!4909373 m!5919182))

(declare-fun m!5919184 () Bool)

(assert (=> b!4909373 m!5919184))

(declare-fun m!5919186 () Bool)

(assert (=> b!4909379 m!5919186))

(declare-fun m!5919188 () Bool)

(assert (=> b!4909379 m!5919188))

(declare-fun m!5919190 () Bool)

(assert (=> b!4909379 m!5919190))

(declare-fun m!5919192 () Bool)

(assert (=> b!4909379 m!5919192))

(declare-fun m!5919194 () Bool)

(assert (=> b!4909379 m!5919194))

(assert (=> b!4909379 m!5919188))

(assert (=> b!4909379 m!5919194))

(declare-fun m!5919196 () Bool)

(assert (=> b!4909379 m!5919196))

(declare-fun m!5919198 () Bool)

(assert (=> b!4909379 m!5919198))

(declare-fun m!5919200 () Bool)

(assert (=> b!4909379 m!5919200))

(check-sat (not b!4909372) (not b!4909370) (not b!4909375) b_and!346627 (not b_next!132747) (not b!4909378) (not b!4909368) b_and!346629 (not b!4909371) (not b!4909374) (not b!4909376) (not b!4909379) (not b!4909373) (not start!515012) (not b!4909367) (not b_next!132745))
(check-sat b_and!346629 b_and!346627 (not b_next!132747) (not b_next!132745))
