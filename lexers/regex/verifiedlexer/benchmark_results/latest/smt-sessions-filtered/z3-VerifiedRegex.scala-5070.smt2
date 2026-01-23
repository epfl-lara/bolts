; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!259526 () Bool)

(assert start!259526)

(declare-fun b!2667984 () Bool)

(declare-fun b_free!74765 () Bool)

(declare-fun b_next!75469 () Bool)

(assert (=> b!2667984 (= b_free!74765 (not b_next!75469))))

(declare-fun tp!843065 () Bool)

(declare-fun b_and!196725 () Bool)

(assert (=> b!2667984 (= tp!843065 b_and!196725)))

(declare-fun b_free!74767 () Bool)

(declare-fun b_next!75471 () Bool)

(assert (=> b!2667984 (= b_free!74767 (not b_next!75471))))

(declare-fun tp!843067 () Bool)

(declare-fun b_and!196727 () Bool)

(assert (=> b!2667984 (= tp!843067 b_and!196727)))

(declare-fun b!2667991 () Bool)

(declare-fun b_free!74769 () Bool)

(declare-fun b_next!75473 () Bool)

(assert (=> b!2667991 (= b_free!74769 (not b_next!75473))))

(declare-fun tp!843062 () Bool)

(declare-fun b_and!196729 () Bool)

(assert (=> b!2667991 (= tp!843062 b_and!196729)))

(declare-fun b_free!74771 () Bool)

(declare-fun b_next!75475 () Bool)

(assert (=> b!2667991 (= b_free!74771 (not b_next!75475))))

(declare-fun tp!843066 () Bool)

(declare-fun b_and!196731 () Bool)

(assert (=> b!2667991 (= tp!843066 b_and!196731)))

(declare-fun bs!479344 () Bool)

(declare-fun b!2667978 () Bool)

(declare-fun b!2667987 () Bool)

(assert (= bs!479344 (and b!2667978 b!2667987)))

(declare-fun lambda!99548 () Int)

(declare-fun lambda!99547 () Int)

(assert (=> bs!479344 (not (= lambda!99548 lambda!99547))))

(declare-fun b!2668009 () Bool)

(declare-fun e!1681140 () Bool)

(assert (=> b!2668009 (= e!1681140 true)))

(declare-fun b!2668008 () Bool)

(declare-fun e!1681139 () Bool)

(assert (=> b!2668008 (= e!1681139 e!1681140)))

(declare-fun b!2668007 () Bool)

(declare-fun e!1681138 () Bool)

(assert (=> b!2668007 (= e!1681138 e!1681139)))

(assert (=> b!2667978 e!1681138))

(assert (= b!2668008 b!2668009))

(assert (= b!2668007 b!2668008))

(declare-datatypes ((List!30705 0))(
  ( (Nil!30605) (Cons!30605 (h!36025 (_ BitVec 16)) (t!222888 List!30705)) )
))
(declare-datatypes ((C!15768 0))(
  ( (C!15769 (val!9818 Int)) )
))
(declare-datatypes ((Regex!7805 0))(
  ( (ElementMatch!7805 (c!430354 C!15768)) (Concat!12688 (regOne!16122 Regex!7805) (regTwo!16122 Regex!7805)) (EmptyExpr!7805) (Star!7805 (reg!8134 Regex!7805)) (EmptyLang!7805) (Union!7805 (regOne!16123 Regex!7805) (regTwo!16123 Regex!7805)) )
))
(declare-datatypes ((TokenValue!4883 0))(
  ( (FloatLiteralValue!9766 (text!34626 List!30705)) (TokenValueExt!4882 (__x!19599 Int)) (Broken!24415 (value!150417 List!30705)) (Object!4982) (End!4883) (Def!4883) (Underscore!4883) (Match!4883) (Else!4883) (Error!4883) (Case!4883) (If!4883) (Extends!4883) (Abstract!4883) (Class!4883) (Val!4883) (DelimiterValue!9766 (del!4943 List!30705)) (KeywordValue!4889 (value!150418 List!30705)) (CommentValue!9766 (value!150419 List!30705)) (WhitespaceValue!9766 (value!150420 List!30705)) (IndentationValue!4883 (value!150421 List!30705)) (String!34298) (Int32!4883) (Broken!24416 (value!150422 List!30705)) (Boolean!4884) (Unit!44858) (OperatorValue!4886 (op!4943 List!30705)) (IdentifierValue!9766 (value!150423 List!30705)) (IdentifierValue!9767 (value!150424 List!30705)) (WhitespaceValue!9767 (value!150425 List!30705)) (True!9766) (False!9766) (Broken!24417 (value!150426 List!30705)) (Broken!24418 (value!150427 List!30705)) (True!9767) (RightBrace!4883) (RightBracket!4883) (Colon!4883) (Null!4883) (Comma!4883) (LeftBracket!4883) (False!9767) (LeftBrace!4883) (ImaginaryLiteralValue!4883 (text!34627 List!30705)) (StringLiteralValue!14649 (value!150428 List!30705)) (EOFValue!4883 (value!150429 List!30705)) (IdentValue!4883 (value!150430 List!30705)) (DelimiterValue!9767 (value!150431 List!30705)) (DedentValue!4883 (value!150432 List!30705)) (NewLineValue!4883 (value!150433 List!30705)) (IntegerValue!14649 (value!150434 (_ BitVec 32)) (text!34628 List!30705)) (IntegerValue!14650 (value!150435 Int) (text!34629 List!30705)) (Times!4883) (Or!4883) (Equal!4883) (Minus!4883) (Broken!24419 (value!150436 List!30705)) (And!4883) (Div!4883) (LessEqual!4883) (Mod!4883) (Concat!12689) (Not!4883) (Plus!4883) (SpaceValue!4883 (value!150437 List!30705)) (IntegerValue!14651 (value!150438 Int) (text!34630 List!30705)) (StringLiteralValue!14650 (text!34631 List!30705)) (FloatLiteralValue!9767 (text!34632 List!30705)) (BytesLiteralValue!4883 (value!150439 List!30705)) (CommentValue!9767 (value!150440 List!30705)) (StringLiteralValue!14651 (value!150441 List!30705)) (ErrorTokenValue!4883 (msg!4944 List!30705)) )
))
(declare-datatypes ((List!30706 0))(
  ( (Nil!30606) (Cons!30606 (h!36026 C!15768) (t!222889 List!30706)) )
))
(declare-datatypes ((IArray!19133 0))(
  ( (IArray!19134 (innerList!9624 List!30706)) )
))
(declare-datatypes ((Conc!9564 0))(
  ( (Node!9564 (left!23658 Conc!9564) (right!23988 Conc!9564) (csize!19358 Int) (cheight!9775 Int)) (Leaf!14635 (xs!12594 IArray!19133) (csize!19359 Int)) (Empty!9564) )
))
(declare-datatypes ((BalanceConc!18742 0))(
  ( (BalanceConc!18743 (c!430355 Conc!9564)) )
))
(declare-datatypes ((TokenValueInjection!9206 0))(
  ( (TokenValueInjection!9207 (toValue!6599 Int) (toChars!6458 Int)) )
))
(declare-datatypes ((String!34299 0))(
  ( (String!34300 (value!150442 String)) )
))
(declare-datatypes ((Rule!9122 0))(
  ( (Rule!9123 (regex!4661 Regex!7805) (tag!5163 String!34299) (isSeparator!4661 Bool) (transformation!4661 TokenValueInjection!9206)) )
))
(declare-datatypes ((List!30707 0))(
  ( (Nil!30607) (Cons!30607 (h!36027 Rule!9122) (t!222890 List!30707)) )
))
(declare-fun rules!1726 () List!30707)

(get-info :version)

(assert (= (and b!2667978 ((_ is Cons!30607) rules!1726)) b!2668007))

(declare-fun order!16721 () Int)

(declare-fun order!16719 () Int)

(declare-fun dynLambda!13212 (Int Int) Int)

(declare-fun dynLambda!13213 (Int Int) Int)

(assert (=> b!2668009 (< (dynLambda!13212 order!16719 (toValue!6599 (transformation!4661 (h!36027 rules!1726)))) (dynLambda!13213 order!16721 lambda!99548))))

(declare-fun order!16723 () Int)

(declare-fun dynLambda!13214 (Int Int) Int)

(assert (=> b!2668009 (< (dynLambda!13214 order!16723 (toChars!6458 (transformation!4661 (h!36027 rules!1726)))) (dynLambda!13213 order!16721 lambda!99548))))

(assert (=> b!2667978 true))

(declare-fun b!2667975 () Bool)

(declare-fun e!1681124 () Bool)

(declare-datatypes ((Token!8792 0))(
  ( (Token!8793 (value!150443 TokenValue!4883) (rule!7067 Rule!9122) (size!23706 Int) (originalCharacters!5427 List!30706)) )
))
(declare-datatypes ((List!30708 0))(
  ( (Nil!30608) (Cons!30608 (h!36028 Token!8792) (t!222891 List!30708)) )
))
(declare-datatypes ((IArray!19135 0))(
  ( (IArray!19136 (innerList!9625 List!30708)) )
))
(declare-datatypes ((Conc!9565 0))(
  ( (Node!9565 (left!23659 Conc!9565) (right!23989 Conc!9565) (csize!19360 Int) (cheight!9776 Int)) (Leaf!14636 (xs!12595 IArray!19135) (csize!19361 Int)) (Empty!9565) )
))
(declare-datatypes ((BalanceConc!18744 0))(
  ( (BalanceConc!18745 (c!430356 Conc!9565)) )
))
(declare-fun v!6381 () BalanceConc!18744)

(declare-fun tp!843064 () Bool)

(declare-fun inv!41601 (Conc!9565) Bool)

(assert (=> b!2667975 (= e!1681124 (and (inv!41601 (c!430356 v!6381)) tp!843064))))

(declare-fun b!2667976 () Bool)

(declare-fun res!1121686 () Bool)

(declare-fun e!1681128 () Bool)

(assert (=> b!2667976 (=> (not res!1121686) (not e!1681128))))

(declare-datatypes ((LexerInterface!4258 0))(
  ( (LexerInterfaceExt!4255 (__x!19600 Int)) (Lexer!4256) )
))
(declare-fun thiss!14197 () LexerInterface!4258)

(declare-fun rulesProduceEachTokenIndividually!1078 (LexerInterface!4258 List!30707 BalanceConc!18744) Bool)

(assert (=> b!2667976 (= res!1121686 (rulesProduceEachTokenIndividually!1078 thiss!14197 rules!1726 v!6381))))

(declare-fun tp!843068 () Bool)

(declare-fun b!2667977 () Bool)

(declare-fun separatorToken!156 () Token!8792)

(declare-fun e!1681118 () Bool)

(declare-fun e!1681126 () Bool)

(declare-fun inv!21 (TokenValue!4883) Bool)

(assert (=> b!2667977 (= e!1681118 (and (inv!21 (value!150443 separatorToken!156)) e!1681126 tp!843068))))

(declare-fun e!1681127 () Bool)

(declare-fun e!1681131 () Bool)

(assert (=> b!2667978 (= e!1681127 e!1681131)))

(declare-fun res!1121680 () Bool)

(assert (=> b!2667978 (=> res!1121680 e!1681131)))

(declare-datatypes ((tuple2!30152 0))(
  ( (tuple2!30153 (_1!17618 Token!8792) (_2!17618 BalanceConc!18742)) )
))
(declare-datatypes ((Option!6068 0))(
  ( (None!6067) (Some!6067 (v!32590 tuple2!30152)) )
))
(declare-fun lt!940200 () Option!6068)

(declare-fun lt!940196 () Bool)

(declare-fun lt!940210 () Token!8792)

(assert (=> b!2667978 (= res!1121680 (or (and (not lt!940196) (= (_1!17618 (v!32590 lt!940200)) lt!940210)) (and (not lt!940196) (not (= (_1!17618 (v!32590 lt!940200)) lt!940210))) (not ((_ is None!6067) lt!940200))))))

(assert (=> b!2667978 (= lt!940196 (not ((_ is Some!6067) lt!940200)))))

(declare-fun lt!940192 () BalanceConc!18742)

(declare-fun lt!940206 () BalanceConc!18742)

(declare-fun maxPrefixZipperSequence!976 (LexerInterface!4258 List!30707 BalanceConc!18742) Option!6068)

(declare-fun ++!7479 (BalanceConc!18742 BalanceConc!18742) BalanceConc!18742)

(assert (=> b!2667978 (= lt!940200 (maxPrefixZipperSequence!976 thiss!14197 rules!1726 (++!7479 lt!940192 lt!940206)))))

(declare-fun charsOf!2940 (Token!8792) BalanceConc!18742)

(assert (=> b!2667978 (= lt!940192 (charsOf!2940 lt!940210))))

(declare-fun from!862 () Int)

(declare-fun printWithSeparatorTokenWhenNeededRec!522 (LexerInterface!4258 List!30707 BalanceConc!18744 Token!8792 Int) BalanceConc!18742)

(assert (=> b!2667978 (= lt!940206 (printWithSeparatorTokenWhenNeededRec!522 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))

(declare-fun lt!940204 () List!30708)

(declare-datatypes ((Unit!44859 0))(
  ( (Unit!44860) )
))
(declare-fun lt!940197 () Unit!44859)

(declare-fun forallContained!1007 (List!30708 Int Token!8792) Unit!44859)

(assert (=> b!2667978 (= lt!940197 (forallContained!1007 lt!940204 lambda!99548 lt!940210))))

(declare-fun b!2667979 () Bool)

(declare-fun res!1121687 () Bool)

(assert (=> b!2667979 (=> (not res!1121687) (not e!1681128))))

(declare-fun rulesInvariant!3758 (LexerInterface!4258 List!30707) Bool)

(assert (=> b!2667979 (= res!1121687 (rulesInvariant!3758 thiss!14197 rules!1726))))

(declare-fun b!2667980 () Bool)

(declare-fun res!1121673 () Bool)

(declare-fun e!1681130 () Bool)

(assert (=> b!2667980 (=> res!1121673 e!1681130)))

(declare-fun lt!940205 () List!30706)

(declare-fun isEmpty!17524 (BalanceConc!18744) Bool)

(declare-datatypes ((tuple2!30154 0))(
  ( (tuple2!30155 (_1!17619 BalanceConc!18744) (_2!17619 BalanceConc!18742)) )
))
(declare-fun lex!1917 (LexerInterface!4258 List!30707 BalanceConc!18742) tuple2!30154)

(declare-fun seqFromList!3193 (List!30706) BalanceConc!18742)

(assert (=> b!2667980 (= res!1121673 (isEmpty!17524 (_1!17619 (lex!1917 thiss!14197 rules!1726 (seqFromList!3193 lt!940205)))))))

(declare-fun b!2667981 () Bool)

(declare-fun tp!843063 () Bool)

(declare-fun e!1681115 () Bool)

(declare-fun e!1681122 () Bool)

(declare-fun inv!41596 (String!34299) Bool)

(declare-fun inv!41602 (TokenValueInjection!9206) Bool)

(assert (=> b!2667981 (= e!1681122 (and tp!843063 (inv!41596 (tag!5163 (h!36027 rules!1726))) (inv!41602 (transformation!4661 (h!36027 rules!1726))) e!1681115))))

(declare-fun b!2667982 () Bool)

(declare-fun e!1681120 () Bool)

(assert (=> b!2667982 (= e!1681120 e!1681130)))

(declare-fun res!1121685 () Bool)

(assert (=> b!2667982 (=> res!1121685 e!1681130)))

(declare-fun lt!940207 () List!30706)

(assert (=> b!2667982 (= res!1121685 (not (= lt!940207 lt!940205)))))

(declare-fun list!11564 (BalanceConc!18742) List!30706)

(assert (=> b!2667982 (= lt!940205 (list!11564 lt!940192))))

(declare-fun b!2667983 () Bool)

(declare-fun e!1681121 () Bool)

(declare-fun tp!843069 () Bool)

(assert (=> b!2667983 (= e!1681121 (and e!1681122 tp!843069))))

(declare-fun e!1681119 () Bool)

(assert (=> b!2667984 (= e!1681119 (and tp!843065 tp!843067))))

(declare-fun lt!940202 () List!30708)

(declare-fun b!2667985 () Bool)

(declare-fun printWithSeparatorTokenWhenNeededList!670 (LexerInterface!4258 List!30707 List!30708 Token!8792) List!30706)

(assert (=> b!2667985 (= e!1681130 (= (list!11564 (BalanceConc!18743 Empty!9564)) (printWithSeparatorTokenWhenNeededList!670 thiss!14197 rules!1726 lt!940202 separatorToken!156)))))

(assert (=> b!2667985 false))

(declare-fun lt!940194 () Unit!44859)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!813 (LexerInterface!4258 List!30707 List!30706 List!30706) Unit!44859)

(assert (=> b!2667985 (= lt!940194 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!813 thiss!14197 rules!1726 lt!940205 (list!11564 lt!940206)))))

(declare-fun b!2667986 () Bool)

(assert (=> b!2667986 (= e!1681131 e!1681120)))

(declare-fun res!1121688 () Bool)

(assert (=> b!2667986 (=> res!1121688 e!1681120)))

(declare-fun lt!940209 () List!30706)

(assert (=> b!2667986 (= res!1121688 (not (= lt!940209 lt!940207)))))

(declare-fun printList!1178 (LexerInterface!4258 List!30708) List!30706)

(assert (=> b!2667986 (= lt!940207 (printList!1178 thiss!14197 (Cons!30608 lt!940210 Nil!30608)))))

(declare-fun lt!940199 () BalanceConc!18742)

(assert (=> b!2667986 (= lt!940209 (list!11564 lt!940199))))

(declare-fun lt!940201 () BalanceConc!18744)

(declare-fun printTailRec!1137 (LexerInterface!4258 BalanceConc!18744 Int BalanceConc!18742) BalanceConc!18742)

(assert (=> b!2667986 (= lt!940199 (printTailRec!1137 thiss!14197 lt!940201 0 (BalanceConc!18743 Empty!9564)))))

(declare-fun print!1655 (LexerInterface!4258 BalanceConc!18744) BalanceConc!18742)

(assert (=> b!2667986 (= lt!940199 (print!1655 thiss!14197 lt!940201))))

(declare-fun singletonSeq!2074 (Token!8792) BalanceConc!18744)

(assert (=> b!2667986 (= lt!940201 (singletonSeq!2074 lt!940210))))

(declare-fun res!1121677 () Bool)

(declare-fun e!1681125 () Bool)

(assert (=> start!259526 (=> (not res!1121677) (not e!1681125))))

(assert (=> start!259526 (= res!1121677 (and ((_ is Lexer!4256) thiss!14197) (>= from!862 0)))))

(assert (=> start!259526 e!1681125))

(assert (=> start!259526 true))

(assert (=> start!259526 e!1681121))

(declare-fun inv!41603 (Token!8792) Bool)

(assert (=> start!259526 (and (inv!41603 separatorToken!156) e!1681118)))

(declare-fun inv!41604 (BalanceConc!18744) Bool)

(assert (=> start!259526 (and (inv!41604 v!6381) e!1681124)))

(declare-fun res!1121681 () Bool)

(assert (=> b!2667987 (=> (not res!1121681) (not e!1681128))))

(declare-fun forall!6474 (BalanceConc!18744 Int) Bool)

(assert (=> b!2667987 (= res!1121681 (forall!6474 v!6381 lambda!99547))))

(declare-fun b!2667988 () Bool)

(assert (=> b!2667988 (= e!1681125 e!1681128)))

(declare-fun res!1121672 () Bool)

(assert (=> b!2667988 (=> (not res!1121672) (not e!1681128))))

(declare-fun lt!940195 () Int)

(assert (=> b!2667988 (= res!1121672 (<= from!862 lt!940195))))

(declare-fun size!23707 (BalanceConc!18744) Int)

(assert (=> b!2667988 (= lt!940195 (size!23707 v!6381))))

(declare-fun b!2667989 () Bool)

(declare-fun res!1121678 () Bool)

(assert (=> b!2667989 (=> (not res!1121678) (not e!1681128))))

(declare-fun rulesProduceIndividualToken!1970 (LexerInterface!4258 List!30707 Token!8792) Bool)

(assert (=> b!2667989 (= res!1121678 (rulesProduceIndividualToken!1970 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2667990 () Bool)

(declare-fun e!1681117 () Bool)

(assert (=> b!2667990 (= e!1681117 (not e!1681127))))

(declare-fun res!1121679 () Bool)

(assert (=> b!2667990 (=> res!1121679 e!1681127)))

(declare-fun contains!5864 (BalanceConc!18744 Token!8792) Bool)

(assert (=> b!2667990 (= res!1121679 (not (contains!5864 v!6381 lt!940210)))))

(declare-fun apply!7341 (BalanceConc!18744 Int) Token!8792)

(assert (=> b!2667990 (= lt!940210 (apply!7341 v!6381 from!862))))

(declare-fun lt!940208 () List!30708)

(declare-fun tail!4305 (List!30708) List!30708)

(declare-fun drop!1659 (List!30708 Int) List!30708)

(assert (=> b!2667990 (= (tail!4305 lt!940208) (drop!1659 lt!940204 (+ 1 from!862)))))

(declare-fun lt!940193 () Unit!44859)

(declare-fun lemmaDropTail!840 (List!30708 Int) Unit!44859)

(assert (=> b!2667990 (= lt!940193 (lemmaDropTail!840 lt!940204 from!862))))

(declare-fun head!6067 (List!30708) Token!8792)

(declare-fun apply!7342 (List!30708 Int) Token!8792)

(assert (=> b!2667990 (= (head!6067 lt!940208) (apply!7342 lt!940204 from!862))))

(assert (=> b!2667990 (= lt!940208 (drop!1659 lt!940204 from!862))))

(declare-fun lt!940198 () Unit!44859)

(declare-fun lemmaDropApply!868 (List!30708 Int) Unit!44859)

(assert (=> b!2667990 (= lt!940198 (lemmaDropApply!868 lt!940204 from!862))))

(assert (=> b!2667991 (= e!1681115 (and tp!843062 tp!843066))))

(declare-fun b!2667992 () Bool)

(declare-fun res!1121674 () Bool)

(assert (=> b!2667992 (=> (not res!1121674) (not e!1681128))))

(assert (=> b!2667992 (= res!1121674 (isSeparator!4661 (rule!7067 separatorToken!156)))))

(declare-fun b!2667993 () Bool)

(assert (=> b!2667993 (= e!1681128 e!1681117)))

(declare-fun res!1121676 () Bool)

(assert (=> b!2667993 (=> (not res!1121676) (not e!1681117))))

(assert (=> b!2667993 (= res!1121676 (< from!862 lt!940195))))

(declare-fun lt!940203 () Unit!44859)

(declare-fun lemmaContentSubsetPreservesForall!328 (List!30708 List!30708 Int) Unit!44859)

(assert (=> b!2667993 (= lt!940203 (lemmaContentSubsetPreservesForall!328 lt!940204 lt!940202 lambda!99547))))

(declare-fun dropList!962 (BalanceConc!18744 Int) List!30708)

(assert (=> b!2667993 (= lt!940202 (dropList!962 v!6381 from!862))))

(declare-fun list!11565 (BalanceConc!18744) List!30708)

(assert (=> b!2667993 (= lt!940204 (list!11565 v!6381))))

(declare-fun b!2667994 () Bool)

(declare-fun tp!843070 () Bool)

(assert (=> b!2667994 (= e!1681126 (and tp!843070 (inv!41596 (tag!5163 (rule!7067 separatorToken!156))) (inv!41602 (transformation!4661 (rule!7067 separatorToken!156))) e!1681119))))

(declare-fun b!2667995 () Bool)

(declare-fun res!1121684 () Bool)

(assert (=> b!2667995 (=> res!1121684 e!1681127)))

(declare-fun contains!5865 (List!30708 Token!8792) Bool)

(assert (=> b!2667995 (= res!1121684 (not (contains!5865 lt!940204 lt!940210)))))

(declare-fun b!2667996 () Bool)

(declare-fun res!1121683 () Bool)

(assert (=> b!2667996 (=> (not res!1121683) (not e!1681128))))

(declare-fun isEmpty!17525 (List!30707) Bool)

(assert (=> b!2667996 (= res!1121683 (not (isEmpty!17525 rules!1726)))))

(declare-fun b!2667997 () Bool)

(declare-fun res!1121682 () Bool)

(assert (=> b!2667997 (=> res!1121682 e!1681130)))

(assert (=> b!2667997 (= res!1121682 (not (rulesProduceIndividualToken!1970 thiss!14197 rules!1726 lt!940210)))))

(declare-fun b!2667998 () Bool)

(declare-fun res!1121675 () Bool)

(assert (=> b!2667998 (=> (not res!1121675) (not e!1681128))))

(declare-fun sepAndNonSepRulesDisjointChars!1234 (List!30707 List!30707) Bool)

(assert (=> b!2667998 (= res!1121675 (sepAndNonSepRulesDisjointChars!1234 rules!1726 rules!1726))))

(assert (= (and start!259526 res!1121677) b!2667988))

(assert (= (and b!2667988 res!1121672) b!2667996))

(assert (= (and b!2667996 res!1121683) b!2667979))

(assert (= (and b!2667979 res!1121687) b!2667976))

(assert (= (and b!2667976 res!1121686) b!2667989))

(assert (= (and b!2667989 res!1121678) b!2667992))

(assert (= (and b!2667992 res!1121674) b!2667987))

(assert (= (and b!2667987 res!1121681) b!2667998))

(assert (= (and b!2667998 res!1121675) b!2667993))

(assert (= (and b!2667993 res!1121676) b!2667990))

(assert (= (and b!2667990 (not res!1121679)) b!2667995))

(assert (= (and b!2667995 (not res!1121684)) b!2667978))

(assert (= (and b!2667978 (not res!1121680)) b!2667986))

(assert (= (and b!2667986 (not res!1121688)) b!2667982))

(assert (= (and b!2667982 (not res!1121685)) b!2667997))

(assert (= (and b!2667997 (not res!1121682)) b!2667980))

(assert (= (and b!2667980 (not res!1121673)) b!2667985))

(assert (= b!2667981 b!2667991))

(assert (= b!2667983 b!2667981))

(assert (= (and start!259526 ((_ is Cons!30607) rules!1726)) b!2667983))

(assert (= b!2667994 b!2667984))

(assert (= b!2667977 b!2667994))

(assert (= start!259526 b!2667977))

(assert (= start!259526 b!2667975))

(declare-fun m!3034813 () Bool)

(assert (=> b!2667977 m!3034813))

(declare-fun m!3034815 () Bool)

(assert (=> b!2667988 m!3034815))

(declare-fun m!3034817 () Bool)

(assert (=> b!2667989 m!3034817))

(declare-fun m!3034819 () Bool)

(assert (=> b!2667979 m!3034819))

(declare-fun m!3034821 () Bool)

(assert (=> b!2667980 m!3034821))

(assert (=> b!2667980 m!3034821))

(declare-fun m!3034823 () Bool)

(assert (=> b!2667980 m!3034823))

(declare-fun m!3034825 () Bool)

(assert (=> b!2667980 m!3034825))

(declare-fun m!3034827 () Bool)

(assert (=> b!2667997 m!3034827))

(declare-fun m!3034829 () Bool)

(assert (=> b!2667994 m!3034829))

(declare-fun m!3034831 () Bool)

(assert (=> b!2667994 m!3034831))

(declare-fun m!3034833 () Bool)

(assert (=> b!2667985 m!3034833))

(declare-fun m!3034835 () Bool)

(assert (=> b!2667985 m!3034835))

(declare-fun m!3034837 () Bool)

(assert (=> b!2667985 m!3034837))

(assert (=> b!2667985 m!3034837))

(declare-fun m!3034839 () Bool)

(assert (=> b!2667985 m!3034839))

(declare-fun m!3034841 () Bool)

(assert (=> b!2667998 m!3034841))

(declare-fun m!3034843 () Bool)

(assert (=> start!259526 m!3034843))

(declare-fun m!3034845 () Bool)

(assert (=> start!259526 m!3034845))

(declare-fun m!3034847 () Bool)

(assert (=> b!2667995 m!3034847))

(declare-fun m!3034849 () Bool)

(assert (=> b!2667975 m!3034849))

(declare-fun m!3034851 () Bool)

(assert (=> b!2667976 m!3034851))

(declare-fun m!3034853 () Bool)

(assert (=> b!2667987 m!3034853))

(declare-fun m!3034855 () Bool)

(assert (=> b!2667982 m!3034855))

(declare-fun m!3034857 () Bool)

(assert (=> b!2667993 m!3034857))

(declare-fun m!3034859 () Bool)

(assert (=> b!2667993 m!3034859))

(declare-fun m!3034861 () Bool)

(assert (=> b!2667993 m!3034861))

(declare-fun m!3034863 () Bool)

(assert (=> b!2667986 m!3034863))

(declare-fun m!3034865 () Bool)

(assert (=> b!2667986 m!3034865))

(declare-fun m!3034867 () Bool)

(assert (=> b!2667986 m!3034867))

(declare-fun m!3034869 () Bool)

(assert (=> b!2667986 m!3034869))

(declare-fun m!3034871 () Bool)

(assert (=> b!2667986 m!3034871))

(declare-fun m!3034873 () Bool)

(assert (=> b!2667978 m!3034873))

(declare-fun m!3034875 () Bool)

(assert (=> b!2667978 m!3034875))

(declare-fun m!3034877 () Bool)

(assert (=> b!2667978 m!3034877))

(declare-fun m!3034879 () Bool)

(assert (=> b!2667978 m!3034879))

(declare-fun m!3034881 () Bool)

(assert (=> b!2667978 m!3034881))

(assert (=> b!2667978 m!3034873))

(declare-fun m!3034883 () Bool)

(assert (=> b!2667996 m!3034883))

(declare-fun m!3034885 () Bool)

(assert (=> b!2667981 m!3034885))

(declare-fun m!3034887 () Bool)

(assert (=> b!2667981 m!3034887))

(declare-fun m!3034889 () Bool)

(assert (=> b!2667990 m!3034889))

(declare-fun m!3034891 () Bool)

(assert (=> b!2667990 m!3034891))

(declare-fun m!3034893 () Bool)

(assert (=> b!2667990 m!3034893))

(declare-fun m!3034895 () Bool)

(assert (=> b!2667990 m!3034895))

(declare-fun m!3034897 () Bool)

(assert (=> b!2667990 m!3034897))

(declare-fun m!3034899 () Bool)

(assert (=> b!2667990 m!3034899))

(declare-fun m!3034901 () Bool)

(assert (=> b!2667990 m!3034901))

(declare-fun m!3034903 () Bool)

(assert (=> b!2667990 m!3034903))

(declare-fun m!3034905 () Bool)

(assert (=> b!2667990 m!3034905))

(check-sat (not b_next!75475) b_and!196727 (not b!2667988) (not b!2667980) (not b!2667997) (not b!2667978) (not b!2667981) (not b!2667995) (not b!2667987) (not b!2668007) (not b!2667993) (not b_next!75471) b_and!196729 b_and!196725 (not b!2667986) (not b!2667990) (not b!2667977) (not b!2667994) (not b_next!75473) (not b_next!75469) (not b!2667976) (not b!2667998) (not b!2667983) (not b!2667982) (not start!259526) (not b!2667985) (not b!2667989) b_and!196731 (not b!2667975) (not b!2667979) (not b!2667996))
(check-sat (not b_next!75475) b_and!196727 (not b_next!75471) b_and!196731 b_and!196729 b_and!196725 (not b_next!75473) (not b_next!75469))
