; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!146980 () Bool)

(assert start!146980)

(declare-fun b!1574870 () Bool)

(declare-fun b_free!42367 () Bool)

(declare-fun b_next!43071 () Bool)

(assert (=> b!1574870 (= b_free!42367 (not b_next!43071))))

(declare-fun tp!463638 () Bool)

(declare-fun b_and!110205 () Bool)

(assert (=> b!1574870 (= tp!463638 b_and!110205)))

(declare-fun b_free!42369 () Bool)

(declare-fun b_next!43073 () Bool)

(assert (=> b!1574870 (= b_free!42369 (not b_next!43073))))

(declare-fun tp!463641 () Bool)

(declare-fun b_and!110207 () Bool)

(assert (=> b!1574870 (= tp!463641 b_and!110207)))

(declare-fun b!1574864 () Bool)

(declare-fun b_free!42371 () Bool)

(declare-fun b_next!43075 () Bool)

(assert (=> b!1574864 (= b_free!42371 (not b_next!43075))))

(declare-fun tp!463636 () Bool)

(declare-fun b_and!110209 () Bool)

(assert (=> b!1574864 (= tp!463636 b_and!110209)))

(declare-fun b_free!42373 () Bool)

(declare-fun b_next!43077 () Bool)

(assert (=> b!1574864 (= b_free!42373 (not b_next!43077))))

(declare-fun tp!463635 () Bool)

(declare-fun b_and!110211 () Bool)

(assert (=> b!1574864 (= tp!463635 b_and!110211)))

(declare-fun b!1574859 () Bool)

(declare-fun e!1011566 () Bool)

(declare-fun e!1011568 () Bool)

(assert (=> b!1574859 (= e!1011566 e!1011568)))

(declare-fun res!701914 () Bool)

(assert (=> b!1574859 (=> (not res!701914) (not e!1011568))))

(declare-datatypes ((C!8898 0))(
  ( (C!8899 (val!5045 Int)) )
))
(declare-datatypes ((List!17319 0))(
  ( (Nil!17249) (Cons!17249 (h!22650 C!8898) (t!143262 List!17319)) )
))
(declare-fun lt!547621 () List!17319)

(declare-fun lt!547622 () List!17319)

(assert (=> b!1574859 (= res!701914 (= lt!547621 lt!547622))))

(declare-fun lt!547626 () List!17319)

(declare-fun lt!547625 () List!17319)

(declare-fun ++!4470 (List!17319 List!17319) List!17319)

(assert (=> b!1574859 (= lt!547622 (++!4470 lt!547626 lt!547625))))

(declare-datatypes ((IArray!11437 0))(
  ( (IArray!11438 (innerList!5776 List!17319)) )
))
(declare-datatypes ((Conc!5716 0))(
  ( (Node!5716 (left!13947 Conc!5716) (right!14277 Conc!5716) (csize!11662 Int) (cheight!5927 Int)) (Leaf!8454 (xs!8520 IArray!11437) (csize!11663 Int)) (Empty!5716) )
))
(declare-datatypes ((BalanceConc!11376 0))(
  ( (BalanceConc!11377 (c!255307 Conc!5716)) )
))
(declare-fun lt!547623 () BalanceConc!11376)

(declare-fun list!6633 (BalanceConc!11376) List!17319)

(assert (=> b!1574859 (= lt!547621 (list!6633 lt!547623))))

(declare-fun lt!547619 () BalanceConc!11376)

(assert (=> b!1574859 (= lt!547625 (list!6633 lt!547619))))

(declare-datatypes ((List!17320 0))(
  ( (Nil!17250) (Cons!17250 (h!22651 (_ BitVec 16)) (t!143263 List!17320)) )
))
(declare-datatypes ((TokenValue!3124 0))(
  ( (FloatLiteralValue!6248 (text!22313 List!17320)) (TokenValueExt!3123 (__x!11550 Int)) (Broken!15620 (value!96117 List!17320)) (Object!3193) (End!3124) (Def!3124) (Underscore!3124) (Match!3124) (Else!3124) (Error!3124) (Case!3124) (If!3124) (Extends!3124) (Abstract!3124) (Class!3124) (Val!3124) (DelimiterValue!6248 (del!3184 List!17320)) (KeywordValue!3130 (value!96118 List!17320)) (CommentValue!6248 (value!96119 List!17320)) (WhitespaceValue!6248 (value!96120 List!17320)) (IndentationValue!3124 (value!96121 List!17320)) (String!19953) (Int32!3124) (Broken!15621 (value!96122 List!17320)) (Boolean!3125) (Unit!26623) (OperatorValue!3127 (op!3184 List!17320)) (IdentifierValue!6248 (value!96123 List!17320)) (IdentifierValue!6249 (value!96124 List!17320)) (WhitespaceValue!6249 (value!96125 List!17320)) (True!6248) (False!6248) (Broken!15622 (value!96126 List!17320)) (Broken!15623 (value!96127 List!17320)) (True!6249) (RightBrace!3124) (RightBracket!3124) (Colon!3124) (Null!3124) (Comma!3124) (LeftBracket!3124) (False!6249) (LeftBrace!3124) (ImaginaryLiteralValue!3124 (text!22314 List!17320)) (StringLiteralValue!9372 (value!96128 List!17320)) (EOFValue!3124 (value!96129 List!17320)) (IdentValue!3124 (value!96130 List!17320)) (DelimiterValue!6249 (value!96131 List!17320)) (DedentValue!3124 (value!96132 List!17320)) (NewLineValue!3124 (value!96133 List!17320)) (IntegerValue!9372 (value!96134 (_ BitVec 32)) (text!22315 List!17320)) (IntegerValue!9373 (value!96135 Int) (text!22316 List!17320)) (Times!3124) (Or!3124) (Equal!3124) (Minus!3124) (Broken!15624 (value!96136 List!17320)) (And!3124) (Div!3124) (LessEqual!3124) (Mod!3124) (Concat!7486) (Not!3124) (Plus!3124) (SpaceValue!3124 (value!96137 List!17320)) (IntegerValue!9374 (value!96138 Int) (text!22317 List!17320)) (StringLiteralValue!9373 (text!22318 List!17320)) (FloatLiteralValue!6249 (text!22319 List!17320)) (BytesLiteralValue!3124 (value!96139 List!17320)) (CommentValue!6249 (value!96140 List!17320)) (StringLiteralValue!9374 (value!96141 List!17320)) (ErrorTokenValue!3124 (msg!3185 List!17320)) )
))
(declare-datatypes ((Regex!4362 0))(
  ( (ElementMatch!4362 (c!255308 C!8898)) (Concat!7487 (regOne!9236 Regex!4362) (regTwo!9236 Regex!4362)) (EmptyExpr!4362) (Star!4362 (reg!4691 Regex!4362)) (EmptyLang!4362) (Union!4362 (regOne!9237 Regex!4362) (regTwo!9237 Regex!4362)) )
))
(declare-datatypes ((String!19954 0))(
  ( (String!19955 (value!96142 String)) )
))
(declare-datatypes ((TokenValueInjection!5908 0))(
  ( (TokenValueInjection!5909 (toValue!4429 Int) (toChars!4288 Int)) )
))
(declare-datatypes ((Rule!5868 0))(
  ( (Rule!5869 (regex!3034 Regex!4362) (tag!3300 String!19954) (isSeparator!3034 Bool) (transformation!3034 TokenValueInjection!5908)) )
))
(declare-datatypes ((Token!5634 0))(
  ( (Token!5635 (value!96143 TokenValue!3124) (rule!4826 Rule!5868) (size!13899 Int) (originalCharacters!3848 List!17319)) )
))
(declare-datatypes ((List!17321 0))(
  ( (Nil!17251) (Cons!17251 (h!22652 Token!5634) (t!143264 List!17321)) )
))
(declare-fun tokens!457 () List!17321)

(declare-fun charsOf!1683 (Token!5634) BalanceConc!11376)

(assert (=> b!1574859 (= lt!547626 (list!6633 (charsOf!1683 (h!22652 tokens!457))))))

(declare-datatypes ((List!17322 0))(
  ( (Nil!17252) (Cons!17252 (h!22653 Rule!5868) (t!143265 List!17322)) )
))
(declare-fun rules!1846 () List!17322)

(declare-datatypes ((LexerInterface!2663 0))(
  ( (LexerInterfaceExt!2660 (__x!11551 Int)) (Lexer!2661) )
))
(declare-fun thiss!17113 () LexerInterface!2663)

(declare-datatypes ((IArray!11439 0))(
  ( (IArray!11440 (innerList!5777 List!17321)) )
))
(declare-datatypes ((Conc!5717 0))(
  ( (Node!5717 (left!13948 Conc!5717) (right!14278 Conc!5717) (csize!11664 Int) (cheight!5928 Int)) (Leaf!8455 (xs!8521 IArray!11439) (csize!11665 Int)) (Empty!5717) )
))
(declare-datatypes ((BalanceConc!11378 0))(
  ( (BalanceConc!11379 (c!255309 Conc!5717)) )
))
(declare-datatypes ((tuple2!16712 0))(
  ( (tuple2!16713 (_1!9758 BalanceConc!11378) (_2!9758 BalanceConc!11376)) )
))
(declare-fun lt!547624 () tuple2!16712)

(declare-fun lex!1147 (LexerInterface!2663 List!17322 BalanceConc!11376) tuple2!16712)

(assert (=> b!1574859 (= lt!547624 (lex!1147 thiss!17113 rules!1846 lt!547619))))

(declare-fun lt!547620 () BalanceConc!11378)

(declare-fun print!1194 (LexerInterface!2663 BalanceConc!11378) BalanceConc!11376)

(assert (=> b!1574859 (= lt!547619 (print!1194 thiss!17113 lt!547620))))

(declare-fun seqFromList!1831 (List!17321) BalanceConc!11378)

(assert (=> b!1574859 (= lt!547620 (seqFromList!1831 (t!143264 tokens!457)))))

(assert (=> b!1574859 (= lt!547623 (print!1194 thiss!17113 (seqFromList!1831 tokens!457)))))

(declare-fun res!701919 () Bool)

(assert (=> start!146980 (=> (not res!701919) (not e!1011566))))

(assert (=> start!146980 (= res!701919 (is-Lexer!2661 thiss!17113))))

(assert (=> start!146980 e!1011566))

(assert (=> start!146980 true))

(declare-fun e!1011558 () Bool)

(assert (=> start!146980 e!1011558))

(declare-fun e!1011563 () Bool)

(assert (=> start!146980 e!1011563))

(declare-fun b!1574860 () Bool)

(declare-fun res!701917 () Bool)

(assert (=> b!1574860 (=> (not res!701917) (not e!1011566))))

(assert (=> b!1574860 (= res!701917 (and (not (is-Nil!17251 tokens!457)) (not (is-Nil!17251 (t!143264 tokens!457)))))))

(declare-fun b!1574861 () Bool)

(declare-fun e!1011564 () Bool)

(declare-fun rulesProduceIndividualToken!1325 (LexerInterface!2663 List!17322 Token!5634) Bool)

(assert (=> b!1574861 (= e!1011564 (rulesProduceIndividualToken!1325 thiss!17113 rules!1846 (h!22652 tokens!457)))))

(declare-fun tp!463633 () Bool)

(declare-fun b!1574862 () Bool)

(declare-fun e!1011565 () Bool)

(declare-fun e!1011567 () Bool)

(declare-fun inv!22656 (String!19954) Bool)

(declare-fun inv!22659 (TokenValueInjection!5908) Bool)

(assert (=> b!1574862 (= e!1011567 (and tp!463633 (inv!22656 (tag!3300 (h!22653 rules!1846))) (inv!22659 (transformation!3034 (h!22653 rules!1846))) e!1011565))))

(declare-fun b!1574863 () Bool)

(declare-fun res!701915 () Bool)

(assert (=> b!1574863 (=> (not res!701915) (not e!1011566))))

(declare-fun rulesProduceEachTokenIndividuallyList!865 (LexerInterface!2663 List!17322 List!17321) Bool)

(assert (=> b!1574863 (= res!701915 (rulesProduceEachTokenIndividuallyList!865 thiss!17113 rules!1846 tokens!457))))

(declare-fun e!1011556 () Bool)

(assert (=> b!1574864 (= e!1011556 (and tp!463636 tp!463635))))

(declare-fun tp!463634 () Bool)

(declare-fun e!1011557 () Bool)

(declare-fun e!1011561 () Bool)

(declare-fun b!1574865 () Bool)

(declare-fun inv!21 (TokenValue!3124) Bool)

(assert (=> b!1574865 (= e!1011557 (and (inv!21 (value!96143 (h!22652 tokens!457))) e!1011561 tp!463634))))

(declare-fun b!1574866 () Bool)

(declare-fun e!1011555 () Bool)

(assert (=> b!1574866 (= e!1011568 (not e!1011555))))

(declare-fun res!701916 () Bool)

(assert (=> b!1574866 (=> res!701916 e!1011555)))

(declare-fun lt!547628 () List!17321)

(assert (=> b!1574866 (= res!701916 (not (= lt!547628 (t!143264 tokens!457))))))

(declare-fun list!6634 (BalanceConc!11378) List!17321)

(assert (=> b!1574866 (= lt!547628 (list!6634 (_1!9758 lt!547624)))))

(declare-datatypes ((Unit!26624 0))(
  ( (Unit!26625) )
))
(declare-fun lt!547617 () Unit!26624)

(declare-fun theoremInvertabilityWhenTokenListSeparable!108 (LexerInterface!2663 List!17322 List!17321) Unit!26624)

(assert (=> b!1574866 (= lt!547617 (theoremInvertabilityWhenTokenListSeparable!108 thiss!17113 rules!1846 (t!143264 tokens!457)))))

(declare-fun isPrefix!1294 (List!17319 List!17319) Bool)

(assert (=> b!1574866 (isPrefix!1294 lt!547626 lt!547622)))

(declare-fun lt!547618 () Unit!26624)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!819 (List!17319 List!17319) Unit!26624)

(assert (=> b!1574866 (= lt!547618 (lemmaConcatTwoListThenFirstIsPrefix!819 lt!547626 lt!547625))))

(declare-fun b!1574867 () Bool)

(declare-fun res!701918 () Bool)

(assert (=> b!1574867 (=> (not res!701918) (not e!1011566))))

(declare-fun isEmpty!10292 (List!17322) Bool)

(assert (=> b!1574867 (= res!701918 (not (isEmpty!10292 rules!1846)))))

(declare-fun tp!463637 () Bool)

(declare-fun b!1574868 () Bool)

(assert (=> b!1574868 (= e!1011561 (and tp!463637 (inv!22656 (tag!3300 (rule!4826 (h!22652 tokens!457)))) (inv!22659 (transformation!3034 (rule!4826 (h!22652 tokens!457)))) e!1011556))))

(declare-fun b!1574869 () Bool)

(declare-fun res!701913 () Bool)

(assert (=> b!1574869 (=> (not res!701913) (not e!1011566))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!356 (LexerInterface!2663 List!17321 List!17322) Bool)

(assert (=> b!1574869 (= res!701913 (tokensListTwoByTwoPredicateSeparableList!356 thiss!17113 tokens!457 rules!1846))))

(assert (=> b!1574870 (= e!1011565 (and tp!463638 tp!463641))))

(declare-fun b!1574871 () Bool)

(declare-fun tp!463640 () Bool)

(assert (=> b!1574871 (= e!1011558 (and e!1011567 tp!463640))))

(declare-fun b!1574872 () Bool)

(declare-fun res!701921 () Bool)

(assert (=> b!1574872 (=> (not res!701921) (not e!1011566))))

(declare-fun rulesInvariant!2332 (LexerInterface!2663 List!17322) Bool)

(assert (=> b!1574872 (= res!701921 (rulesInvariant!2332 thiss!17113 rules!1846))))

(declare-fun b!1574873 () Bool)

(assert (=> b!1574873 (= e!1011555 e!1011564)))

(declare-fun res!701920 () Bool)

(assert (=> b!1574873 (=> res!701920 e!1011564)))

(declare-fun lt!547629 () List!17321)

(declare-fun lt!547630 () List!17321)

(assert (=> b!1574873 (= res!701920 (or (not (= lt!547628 lt!547629)) (not (= lt!547629 lt!547630))))))

(assert (=> b!1574873 (= lt!547629 (list!6634 lt!547620))))

(assert (=> b!1574873 (= lt!547628 lt!547630)))

(declare-fun prepend!500 (BalanceConc!11378 Token!5634) BalanceConc!11378)

(assert (=> b!1574873 (= lt!547630 (list!6634 (prepend!500 (seqFromList!1831 (t!143264 (t!143264 tokens!457))) (h!22652 (t!143264 tokens!457)))))))

(declare-fun lt!547627 () Unit!26624)

(declare-fun seqFromListBHdTlConstructive!111 (Token!5634 List!17321 BalanceConc!11378) Unit!26624)

(assert (=> b!1574873 (= lt!547627 (seqFromListBHdTlConstructive!111 (h!22652 (t!143264 tokens!457)) (t!143264 (t!143264 tokens!457)) (_1!9758 lt!547624)))))

(declare-fun b!1574874 () Bool)

(declare-fun tp!463639 () Bool)

(declare-fun inv!22660 (Token!5634) Bool)

(assert (=> b!1574874 (= e!1011563 (and (inv!22660 (h!22652 tokens!457)) e!1011557 tp!463639))))

(assert (= (and start!146980 res!701919) b!1574867))

(assert (= (and b!1574867 res!701918) b!1574872))

(assert (= (and b!1574872 res!701921) b!1574863))

(assert (= (and b!1574863 res!701915) b!1574869))

(assert (= (and b!1574869 res!701913) b!1574860))

(assert (= (and b!1574860 res!701917) b!1574859))

(assert (= (and b!1574859 res!701914) b!1574866))

(assert (= (and b!1574866 (not res!701916)) b!1574873))

(assert (= (and b!1574873 (not res!701920)) b!1574861))

(assert (= b!1574862 b!1574870))

(assert (= b!1574871 b!1574862))

(assert (= (and start!146980 (is-Cons!17252 rules!1846)) b!1574871))

(assert (= b!1574868 b!1574864))

(assert (= b!1574865 b!1574868))

(assert (= b!1574874 b!1574865))

(assert (= (and start!146980 (is-Cons!17251 tokens!457)) b!1574874))

(declare-fun m!1853849 () Bool)

(assert (=> b!1574874 m!1853849))

(declare-fun m!1853851 () Bool)

(assert (=> b!1574869 m!1853851))

(declare-fun m!1853853 () Bool)

(assert (=> b!1574867 m!1853853))

(declare-fun m!1853855 () Bool)

(assert (=> b!1574861 m!1853855))

(declare-fun m!1853857 () Bool)

(assert (=> b!1574862 m!1853857))

(declare-fun m!1853859 () Bool)

(assert (=> b!1574862 m!1853859))

(declare-fun m!1853861 () Bool)

(assert (=> b!1574865 m!1853861))

(declare-fun m!1853863 () Bool)

(assert (=> b!1574859 m!1853863))

(declare-fun m!1853865 () Bool)

(assert (=> b!1574859 m!1853865))

(declare-fun m!1853867 () Bool)

(assert (=> b!1574859 m!1853867))

(declare-fun m!1853869 () Bool)

(assert (=> b!1574859 m!1853869))

(declare-fun m!1853871 () Bool)

(assert (=> b!1574859 m!1853871))

(declare-fun m!1853873 () Bool)

(assert (=> b!1574859 m!1853873))

(declare-fun m!1853875 () Bool)

(assert (=> b!1574859 m!1853875))

(declare-fun m!1853877 () Bool)

(assert (=> b!1574859 m!1853877))

(declare-fun m!1853879 () Bool)

(assert (=> b!1574859 m!1853879))

(assert (=> b!1574859 m!1853867))

(declare-fun m!1853881 () Bool)

(assert (=> b!1574859 m!1853881))

(assert (=> b!1574859 m!1853873))

(declare-fun m!1853883 () Bool)

(assert (=> b!1574863 m!1853883))

(declare-fun m!1853885 () Bool)

(assert (=> b!1574872 m!1853885))

(declare-fun m!1853887 () Bool)

(assert (=> b!1574873 m!1853887))

(declare-fun m!1853889 () Bool)

(assert (=> b!1574873 m!1853889))

(declare-fun m!1853891 () Bool)

(assert (=> b!1574873 m!1853891))

(declare-fun m!1853893 () Bool)

(assert (=> b!1574873 m!1853893))

(declare-fun m!1853895 () Bool)

(assert (=> b!1574873 m!1853895))

(assert (=> b!1574873 m!1853891))

(assert (=> b!1574873 m!1853893))

(declare-fun m!1853897 () Bool)

(assert (=> b!1574866 m!1853897))

(declare-fun m!1853899 () Bool)

(assert (=> b!1574866 m!1853899))

(declare-fun m!1853901 () Bool)

(assert (=> b!1574866 m!1853901))

(declare-fun m!1853903 () Bool)

(assert (=> b!1574866 m!1853903))

(declare-fun m!1853905 () Bool)

(assert (=> b!1574868 m!1853905))

(declare-fun m!1853907 () Bool)

(assert (=> b!1574868 m!1853907))

(push 1)

(assert (not b_next!43071))

(assert b_and!110209)

(assert (not b_next!43075))

(assert (not b!1574871))

(assert b_and!110207)

(assert (not b!1574863))

(assert (not b!1574867))

(assert (not b!1574873))

(assert (not b!1574866))

(assert (not b!1574874))

(assert (not b!1574862))

(assert (not b!1574868))

(assert b_and!110205)

(assert (not b!1574865))

(assert (not b_next!43077))

(assert (not b_next!43073))

(assert (not b!1574869))

(assert (not b!1574872))

(assert b_and!110211)

(assert (not b!1574859))

(assert (not b!1574861))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!43071))

(assert b_and!110209)

(assert (not b_next!43075))

(assert b_and!110205)

(assert b_and!110207)

(assert (not b_next!43077))

(assert (not b_next!43073))

(assert b_and!110211)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!467604 () Bool)

(declare-fun list!6637 (Conc!5717) List!17321)

(assert (=> d!467604 (= (list!6634 (prepend!500 (seqFromList!1831 (t!143264 (t!143264 tokens!457))) (h!22652 (t!143264 tokens!457)))) (list!6637 (c!255309 (prepend!500 (seqFromList!1831 (t!143264 (t!143264 tokens!457))) (h!22652 (t!143264 tokens!457))))))))

(declare-fun bs!390432 () Bool)

(assert (= bs!390432 d!467604))

(declare-fun m!1853969 () Bool)

(assert (=> bs!390432 m!1853969))

(assert (=> b!1574873 d!467604))

(declare-fun d!467606 () Bool)

(declare-fun fromListB!780 (List!17321) BalanceConc!11378)

(assert (=> d!467606 (= (seqFromList!1831 (t!143264 (t!143264 tokens!457))) (fromListB!780 (t!143264 (t!143264 tokens!457))))))

(declare-fun bs!390433 () Bool)

(assert (= bs!390433 d!467606))

(declare-fun m!1853971 () Bool)

(assert (=> bs!390433 m!1853971))

(assert (=> b!1574873 d!467606))

(declare-fun d!467608 () Bool)

(assert (=> d!467608 (= (list!6634 lt!547620) (list!6637 (c!255309 lt!547620)))))

(declare-fun bs!390434 () Bool)

(assert (= bs!390434 d!467608))

(declare-fun m!1853973 () Bool)

(assert (=> bs!390434 m!1853973))

(assert (=> b!1574873 d!467608))

(declare-fun d!467610 () Bool)

(assert (=> d!467610 (= (list!6634 (_1!9758 lt!547624)) (list!6634 (prepend!500 (seqFromList!1831 (t!143264 (t!143264 tokens!457))) (h!22652 (t!143264 tokens!457)))))))

(declare-fun lt!547675 () Unit!26624)

(declare-fun choose!9420 (Token!5634 List!17321 BalanceConc!11378) Unit!26624)

(assert (=> d!467610 (= lt!547675 (choose!9420 (h!22652 (t!143264 tokens!457)) (t!143264 (t!143264 tokens!457)) (_1!9758 lt!547624)))))

(declare-fun $colon$colon!258 (List!17321 Token!5634) List!17321)

(assert (=> d!467610 (= (list!6634 (_1!9758 lt!547624)) (list!6634 (seqFromList!1831 ($colon$colon!258 (t!143264 (t!143264 tokens!457)) (h!22652 (t!143264 tokens!457))))))))

(assert (=> d!467610 (= (seqFromListBHdTlConstructive!111 (h!22652 (t!143264 tokens!457)) (t!143264 (t!143264 tokens!457)) (_1!9758 lt!547624)) lt!547675)))

(declare-fun bs!390435 () Bool)

(assert (= bs!390435 d!467610))

(declare-fun m!1853975 () Bool)

(assert (=> bs!390435 m!1853975))

(declare-fun m!1853977 () Bool)

(assert (=> bs!390435 m!1853977))

(declare-fun m!1853979 () Bool)

(assert (=> bs!390435 m!1853979))

(assert (=> bs!390435 m!1853891))

(assert (=> bs!390435 m!1853977))

(declare-fun m!1853981 () Bool)

(assert (=> bs!390435 m!1853981))

(assert (=> bs!390435 m!1853891))

(assert (=> bs!390435 m!1853893))

(assert (=> bs!390435 m!1853893))

(assert (=> bs!390435 m!1853895))

(assert (=> bs!390435 m!1853975))

(assert (=> bs!390435 m!1853897))

(assert (=> b!1574873 d!467610))

(declare-fun d!467612 () Bool)

(declare-fun e!1011613 () Bool)

(assert (=> d!467612 e!1011613))

(declare-fun res!701958 () Bool)

(assert (=> d!467612 (=> (not res!701958) (not e!1011613))))

(declare-fun isBalanced!1677 (Conc!5717) Bool)

(declare-fun prepend!502 (Conc!5717 Token!5634) Conc!5717)

(assert (=> d!467612 (= res!701958 (isBalanced!1677 (prepend!502 (c!255309 (seqFromList!1831 (t!143264 (t!143264 tokens!457)))) (h!22652 (t!143264 tokens!457)))))))

(declare-fun lt!547678 () BalanceConc!11378)

(assert (=> d!467612 (= lt!547678 (BalanceConc!11379 (prepend!502 (c!255309 (seqFromList!1831 (t!143264 (t!143264 tokens!457)))) (h!22652 (t!143264 tokens!457)))))))

(assert (=> d!467612 (= (prepend!500 (seqFromList!1831 (t!143264 (t!143264 tokens!457))) (h!22652 (t!143264 tokens!457))) lt!547678)))

(declare-fun b!1574925 () Bool)

(assert (=> b!1574925 (= e!1011613 (= (list!6634 lt!547678) (Cons!17251 (h!22652 (t!143264 tokens!457)) (list!6634 (seqFromList!1831 (t!143264 (t!143264 tokens!457)))))))))

(assert (= (and d!467612 res!701958) b!1574925))

(declare-fun m!1853983 () Bool)

(assert (=> d!467612 m!1853983))

(assert (=> d!467612 m!1853983))

(declare-fun m!1853985 () Bool)

(assert (=> d!467612 m!1853985))

(declare-fun m!1853987 () Bool)

(assert (=> b!1574925 m!1853987))

(assert (=> b!1574925 m!1853891))

(declare-fun m!1853989 () Bool)

(assert (=> b!1574925 m!1853989))

(assert (=> b!1574873 d!467612))

(declare-fun d!467614 () Bool)

(declare-fun res!701963 () Bool)

(declare-fun e!1011616 () Bool)

(assert (=> d!467614 (=> (not res!701963) (not e!1011616))))

(declare-fun isEmpty!10294 (List!17319) Bool)

(assert (=> d!467614 (= res!701963 (not (isEmpty!10294 (originalCharacters!3848 (h!22652 tokens!457)))))))

(assert (=> d!467614 (= (inv!22660 (h!22652 tokens!457)) e!1011616)))

(declare-fun b!1574930 () Bool)

(declare-fun res!701964 () Bool)

(assert (=> b!1574930 (=> (not res!701964) (not e!1011616))))

(declare-fun dynLambda!7636 (Int TokenValue!3124) BalanceConc!11376)

(assert (=> b!1574930 (= res!701964 (= (originalCharacters!3848 (h!22652 tokens!457)) (list!6633 (dynLambda!7636 (toChars!4288 (transformation!3034 (rule!4826 (h!22652 tokens!457)))) (value!96143 (h!22652 tokens!457))))))))

(declare-fun b!1574931 () Bool)

(declare-fun size!13901 (List!17319) Int)

(assert (=> b!1574931 (= e!1011616 (= (size!13899 (h!22652 tokens!457)) (size!13901 (originalCharacters!3848 (h!22652 tokens!457)))))))

(assert (= (and d!467614 res!701963) b!1574930))

(assert (= (and b!1574930 res!701964) b!1574931))

(declare-fun b_lambda!49561 () Bool)

(assert (=> (not b_lambda!49561) (not b!1574930)))

(declare-fun t!143271 () Bool)

(declare-fun tb!88647 () Bool)

(assert (=> (and b!1574870 (= (toChars!4288 (transformation!3034 (h!22653 rules!1846))) (toChars!4288 (transformation!3034 (rule!4826 (h!22652 tokens!457))))) t!143271) tb!88647))

(declare-fun b!1574936 () Bool)

(declare-fun e!1011619 () Bool)

(declare-fun tp!463671 () Bool)

(declare-fun inv!22663 (Conc!5716) Bool)

(assert (=> b!1574936 (= e!1011619 (and (inv!22663 (c!255307 (dynLambda!7636 (toChars!4288 (transformation!3034 (rule!4826 (h!22652 tokens!457)))) (value!96143 (h!22652 tokens!457))))) tp!463671))))

(declare-fun result!107210 () Bool)

(declare-fun inv!22664 (BalanceConc!11376) Bool)

(assert (=> tb!88647 (= result!107210 (and (inv!22664 (dynLambda!7636 (toChars!4288 (transformation!3034 (rule!4826 (h!22652 tokens!457)))) (value!96143 (h!22652 tokens!457)))) e!1011619))))

(assert (= tb!88647 b!1574936))

(declare-fun m!1853991 () Bool)

(assert (=> b!1574936 m!1853991))

(declare-fun m!1853993 () Bool)

(assert (=> tb!88647 m!1853993))

(assert (=> b!1574930 t!143271))

(declare-fun b_and!110221 () Bool)

(assert (= b_and!110207 (and (=> t!143271 result!107210) b_and!110221)))

(declare-fun t!143273 () Bool)

(declare-fun tb!88649 () Bool)

(assert (=> (and b!1574864 (= (toChars!4288 (transformation!3034 (rule!4826 (h!22652 tokens!457)))) (toChars!4288 (transformation!3034 (rule!4826 (h!22652 tokens!457))))) t!143273) tb!88649))

(declare-fun result!107214 () Bool)

(assert (= result!107214 result!107210))

(assert (=> b!1574930 t!143273))

(declare-fun b_and!110223 () Bool)

(assert (= b_and!110211 (and (=> t!143273 result!107214) b_and!110223)))

(declare-fun m!1853995 () Bool)

(assert (=> d!467614 m!1853995))

(declare-fun m!1853997 () Bool)

(assert (=> b!1574930 m!1853997))

(assert (=> b!1574930 m!1853997))

(declare-fun m!1853999 () Bool)

(assert (=> b!1574930 m!1853999))

(declare-fun m!1854001 () Bool)

(assert (=> b!1574931 m!1854001))

(assert (=> b!1574874 d!467614))

(declare-fun b!1574997 () Bool)

(declare-fun e!1011661 () Bool)

(assert (=> b!1574997 (= e!1011661 true)))

(declare-fun b!1574996 () Bool)

(declare-fun e!1011660 () Bool)

(assert (=> b!1574996 (= e!1011660 e!1011661)))

(declare-fun b!1574995 () Bool)

(declare-fun e!1011659 () Bool)

(assert (=> b!1574995 (= e!1011659 e!1011660)))

(declare-fun d!467616 () Bool)

(assert (=> d!467616 e!1011659))

(assert (= b!1574996 b!1574997))

(assert (= b!1574995 b!1574996))

(assert (= (and d!467616 (is-Cons!17252 rules!1846)) b!1574995))

(declare-fun lambda!66359 () Int)

(declare-fun order!10149 () Int)

(declare-fun order!10151 () Int)

(declare-fun dynLambda!7637 (Int Int) Int)

(declare-fun dynLambda!7638 (Int Int) Int)

(assert (=> b!1574997 (< (dynLambda!7637 order!10149 (toValue!4429 (transformation!3034 (h!22653 rules!1846)))) (dynLambda!7638 order!10151 lambda!66359))))

(declare-fun order!10153 () Int)

(declare-fun dynLambda!7639 (Int Int) Int)

(assert (=> b!1574997 (< (dynLambda!7639 order!10153 (toChars!4288 (transformation!3034 (h!22653 rules!1846)))) (dynLambda!7638 order!10151 lambda!66359))))

(assert (=> d!467616 true))

(declare-fun lt!547694 () Bool)

(declare-fun forall!3975 (List!17321 Int) Bool)

(assert (=> d!467616 (= lt!547694 (forall!3975 tokens!457 lambda!66359))))

(declare-fun e!1011652 () Bool)

(assert (=> d!467616 (= lt!547694 e!1011652)))

(declare-fun res!701997 () Bool)

(assert (=> d!467616 (=> res!701997 e!1011652)))

(assert (=> d!467616 (= res!701997 (not (is-Cons!17251 tokens!457)))))

(assert (=> d!467616 (not (isEmpty!10292 rules!1846))))

(assert (=> d!467616 (= (rulesProduceEachTokenIndividuallyList!865 thiss!17113 rules!1846 tokens!457) lt!547694)))

(declare-fun b!1574985 () Bool)

(declare-fun e!1011651 () Bool)

(assert (=> b!1574985 (= e!1011652 e!1011651)))

(declare-fun res!701996 () Bool)

(assert (=> b!1574985 (=> (not res!701996) (not e!1011651))))

(assert (=> b!1574985 (= res!701996 (rulesProduceIndividualToken!1325 thiss!17113 rules!1846 (h!22652 tokens!457)))))

(declare-fun b!1574986 () Bool)

(assert (=> b!1574986 (= e!1011651 (rulesProduceEachTokenIndividuallyList!865 thiss!17113 rules!1846 (t!143264 tokens!457)))))

(assert (= (and d!467616 (not res!701997)) b!1574985))

(assert (= (and b!1574985 res!701996) b!1574986))

(declare-fun m!1854079 () Bool)

(assert (=> d!467616 m!1854079))

(assert (=> d!467616 m!1853853))

(assert (=> b!1574985 m!1853855))

(declare-fun m!1854081 () Bool)

(assert (=> b!1574986 m!1854081))

(assert (=> b!1574863 d!467616))

(declare-fun d!467650 () Bool)

(declare-fun res!702000 () Bool)

(declare-fun e!1011664 () Bool)

(assert (=> d!467650 (=> (not res!702000) (not e!1011664))))

(declare-fun rulesValid!1067 (LexerInterface!2663 List!17322) Bool)

(assert (=> d!467650 (= res!702000 (rulesValid!1067 thiss!17113 rules!1846))))

(assert (=> d!467650 (= (rulesInvariant!2332 thiss!17113 rules!1846) e!1011664)))

(declare-fun b!1575002 () Bool)

(declare-datatypes ((List!17327 0))(
  ( (Nil!17257) (Cons!17257 (h!22658 String!19954) (t!143287 List!17327)) )
))
(declare-fun noDuplicateTag!1067 (LexerInterface!2663 List!17322 List!17327) Bool)

(assert (=> b!1575002 (= e!1011664 (noDuplicateTag!1067 thiss!17113 rules!1846 Nil!17257))))

(assert (= (and d!467650 res!702000) b!1575002))

(declare-fun m!1854083 () Bool)

(assert (=> d!467650 m!1854083))

(declare-fun m!1854085 () Bool)

(assert (=> b!1575002 m!1854085))

(assert (=> b!1574872 d!467650))

(declare-fun d!467652 () Bool)

(declare-fun lt!547727 () Bool)

(declare-fun e!1011680 () Bool)

(assert (=> d!467652 (= lt!547727 e!1011680)))

(declare-fun res!702018 () Bool)

(assert (=> d!467652 (=> (not res!702018) (not e!1011680))))

(declare-fun singletonSeq!1366 (Token!5634) BalanceConc!11378)

(assert (=> d!467652 (= res!702018 (= (list!6634 (_1!9758 (lex!1147 thiss!17113 rules!1846 (print!1194 thiss!17113 (singletonSeq!1366 (h!22652 tokens!457)))))) (list!6634 (singletonSeq!1366 (h!22652 tokens!457)))))))

(declare-fun e!1011679 () Bool)

(assert (=> d!467652 (= lt!547727 e!1011679)))

(declare-fun res!702019 () Bool)

(assert (=> d!467652 (=> (not res!702019) (not e!1011679))))

(declare-fun lt!547726 () tuple2!16712)

(declare-fun size!13902 (BalanceConc!11378) Int)

(assert (=> d!467652 (= res!702019 (= (size!13902 (_1!9758 lt!547726)) 1))))

(assert (=> d!467652 (= lt!547726 (lex!1147 thiss!17113 rules!1846 (print!1194 thiss!17113 (singletonSeq!1366 (h!22652 tokens!457)))))))

(assert (=> d!467652 (not (isEmpty!10292 rules!1846))))

(assert (=> d!467652 (= (rulesProduceIndividualToken!1325 thiss!17113 rules!1846 (h!22652 tokens!457)) lt!547727)))

(declare-fun b!1575019 () Bool)

(declare-fun res!702017 () Bool)

(assert (=> b!1575019 (=> (not res!702017) (not e!1011679))))

(declare-fun apply!4167 (BalanceConc!11378 Int) Token!5634)

(assert (=> b!1575019 (= res!702017 (= (apply!4167 (_1!9758 lt!547726) 0) (h!22652 tokens!457)))))

(declare-fun b!1575020 () Bool)

(declare-fun isEmpty!10295 (BalanceConc!11376) Bool)

(assert (=> b!1575020 (= e!1011679 (isEmpty!10295 (_2!9758 lt!547726)))))

(declare-fun b!1575021 () Bool)

(assert (=> b!1575021 (= e!1011680 (isEmpty!10295 (_2!9758 (lex!1147 thiss!17113 rules!1846 (print!1194 thiss!17113 (singletonSeq!1366 (h!22652 tokens!457)))))))))

(assert (= (and d!467652 res!702019) b!1575019))

(assert (= (and b!1575019 res!702017) b!1575020))

(assert (= (and d!467652 res!702018) b!1575021))

(declare-fun m!1854129 () Bool)

(assert (=> d!467652 m!1854129))

(declare-fun m!1854131 () Bool)

(assert (=> d!467652 m!1854131))

(declare-fun m!1854133 () Bool)

(assert (=> d!467652 m!1854133))

(assert (=> d!467652 m!1854131))

(assert (=> d!467652 m!1854131))

(declare-fun m!1854135 () Bool)

(assert (=> d!467652 m!1854135))

(assert (=> d!467652 m!1854133))

(declare-fun m!1854137 () Bool)

(assert (=> d!467652 m!1854137))

(declare-fun m!1854139 () Bool)

(assert (=> d!467652 m!1854139))

(assert (=> d!467652 m!1853853))

(declare-fun m!1854141 () Bool)

(assert (=> b!1575019 m!1854141))

(declare-fun m!1854143 () Bool)

(assert (=> b!1575020 m!1854143))

(assert (=> b!1575021 m!1854131))

(assert (=> b!1575021 m!1854131))

(assert (=> b!1575021 m!1854133))

(assert (=> b!1575021 m!1854133))

(assert (=> b!1575021 m!1854137))

(declare-fun m!1854145 () Bool)

(assert (=> b!1575021 m!1854145))

(assert (=> b!1574861 d!467652))

(declare-fun d!467672 () Bool)

(assert (=> d!467672 (= (inv!22656 (tag!3300 (h!22653 rules!1846))) (= (mod (str.len (value!96142 (tag!3300 (h!22653 rules!1846)))) 2) 0))))

(assert (=> b!1574862 d!467672))

(declare-fun d!467674 () Bool)

(declare-fun res!702022 () Bool)

(declare-fun e!1011683 () Bool)

(assert (=> d!467674 (=> (not res!702022) (not e!1011683))))

(declare-fun semiInverseModEq!1139 (Int Int) Bool)

(assert (=> d!467674 (= res!702022 (semiInverseModEq!1139 (toChars!4288 (transformation!3034 (h!22653 rules!1846))) (toValue!4429 (transformation!3034 (h!22653 rules!1846)))))))

(assert (=> d!467674 (= (inv!22659 (transformation!3034 (h!22653 rules!1846))) e!1011683)))

(declare-fun b!1575024 () Bool)

(declare-fun equivClasses!1080 (Int Int) Bool)

(assert (=> b!1575024 (= e!1011683 (equivClasses!1080 (toChars!4288 (transformation!3034 (h!22653 rules!1846))) (toValue!4429 (transformation!3034 (h!22653 rules!1846)))))))

(assert (= (and d!467674 res!702022) b!1575024))

(declare-fun m!1854147 () Bool)

(assert (=> d!467674 m!1854147))

(declare-fun m!1854149 () Bool)

(assert (=> b!1575024 m!1854149))

(assert (=> b!1574862 d!467674))

(declare-fun d!467676 () Bool)

(declare-fun res!702027 () Bool)

(declare-fun e!1011689 () Bool)

(assert (=> d!467676 (=> res!702027 e!1011689)))

(assert (=> d!467676 (= res!702027 (or (not (is-Cons!17251 tokens!457)) (not (is-Cons!17251 (t!143264 tokens!457)))))))

(assert (=> d!467676 (= (tokensListTwoByTwoPredicateSeparableList!356 thiss!17113 tokens!457 rules!1846) e!1011689)))

(declare-fun b!1575029 () Bool)

(declare-fun e!1011688 () Bool)

(assert (=> b!1575029 (= e!1011689 e!1011688)))

(declare-fun res!702028 () Bool)

(assert (=> b!1575029 (=> (not res!702028) (not e!1011688))))

(declare-fun separableTokensPredicate!605 (LexerInterface!2663 Token!5634 Token!5634 List!17322) Bool)

(assert (=> b!1575029 (= res!702028 (separableTokensPredicate!605 thiss!17113 (h!22652 tokens!457) (h!22652 (t!143264 tokens!457)) rules!1846))))

(declare-fun lt!547744 () Unit!26624)

(declare-fun Unit!26629 () Unit!26624)

(assert (=> b!1575029 (= lt!547744 Unit!26629)))

(declare-fun size!13903 (BalanceConc!11376) Int)

(assert (=> b!1575029 (> (size!13903 (charsOf!1683 (h!22652 (t!143264 tokens!457)))) 0)))

(declare-fun lt!547745 () Unit!26624)

(declare-fun Unit!26630 () Unit!26624)

(assert (=> b!1575029 (= lt!547745 Unit!26630)))

(assert (=> b!1575029 (rulesProduceIndividualToken!1325 thiss!17113 rules!1846 (h!22652 (t!143264 tokens!457)))))

(declare-fun lt!547743 () Unit!26624)

(declare-fun Unit!26631 () Unit!26624)

(assert (=> b!1575029 (= lt!547743 Unit!26631)))

(assert (=> b!1575029 (rulesProduceIndividualToken!1325 thiss!17113 rules!1846 (h!22652 tokens!457))))

(declare-fun lt!547748 () Unit!26624)

(declare-fun lt!547746 () Unit!26624)

(assert (=> b!1575029 (= lt!547748 lt!547746)))

(assert (=> b!1575029 (rulesProduceIndividualToken!1325 thiss!17113 rules!1846 (h!22652 (t!143264 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!504 (LexerInterface!2663 List!17322 List!17321 Token!5634) Unit!26624)

(assert (=> b!1575029 (= lt!547746 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!504 thiss!17113 rules!1846 tokens!457 (h!22652 (t!143264 tokens!457))))))

(declare-fun lt!547747 () Unit!26624)

(declare-fun lt!547742 () Unit!26624)

(assert (=> b!1575029 (= lt!547747 lt!547742)))

(assert (=> b!1575029 (rulesProduceIndividualToken!1325 thiss!17113 rules!1846 (h!22652 tokens!457))))

(assert (=> b!1575029 (= lt!547742 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!504 thiss!17113 rules!1846 tokens!457 (h!22652 tokens!457)))))

(declare-fun b!1575030 () Bool)

(assert (=> b!1575030 (= e!1011688 (tokensListTwoByTwoPredicateSeparableList!356 thiss!17113 (Cons!17251 (h!22652 (t!143264 tokens!457)) (t!143264 (t!143264 tokens!457))) rules!1846))))

(assert (= (and d!467676 (not res!702027)) b!1575029))

(assert (= (and b!1575029 res!702028) b!1575030))

(declare-fun m!1854151 () Bool)

(assert (=> b!1575029 m!1854151))

(declare-fun m!1854153 () Bool)

(assert (=> b!1575029 m!1854153))

(declare-fun m!1854155 () Bool)

(assert (=> b!1575029 m!1854155))

(assert (=> b!1575029 m!1854155))

(declare-fun m!1854157 () Bool)

(assert (=> b!1575029 m!1854157))

(declare-fun m!1854159 () Bool)

(assert (=> b!1575029 m!1854159))

(assert (=> b!1575029 m!1853855))

(declare-fun m!1854161 () Bool)

(assert (=> b!1575029 m!1854161))

(declare-fun m!1854163 () Bool)

(assert (=> b!1575030 m!1854163))

(assert (=> b!1574869 d!467676))

(declare-fun d!467678 () Bool)

(declare-fun lt!547751 () BalanceConc!11376)

(declare-fun printList!786 (LexerInterface!2663 List!17321) List!17319)

(assert (=> d!467678 (= (list!6633 lt!547751) (printList!786 thiss!17113 (list!6634 (seqFromList!1831 tokens!457))))))

(declare-fun printTailRec!722 (LexerInterface!2663 BalanceConc!11378 Int BalanceConc!11376) BalanceConc!11376)

(assert (=> d!467678 (= lt!547751 (printTailRec!722 thiss!17113 (seqFromList!1831 tokens!457) 0 (BalanceConc!11377 Empty!5716)))))

(assert (=> d!467678 (= (print!1194 thiss!17113 (seqFromList!1831 tokens!457)) lt!547751)))

(declare-fun bs!390448 () Bool)

(assert (= bs!390448 d!467678))

(declare-fun m!1854165 () Bool)

(assert (=> bs!390448 m!1854165))

(assert (=> bs!390448 m!1853867))

(declare-fun m!1854167 () Bool)

(assert (=> bs!390448 m!1854167))

(assert (=> bs!390448 m!1854167))

(declare-fun m!1854169 () Bool)

(assert (=> bs!390448 m!1854169))

(assert (=> bs!390448 m!1853867))

(declare-fun m!1854171 () Bool)

(assert (=> bs!390448 m!1854171))

(assert (=> b!1574859 d!467678))

(declare-fun d!467680 () Bool)

(declare-fun list!6638 (Conc!5716) List!17319)

(assert (=> d!467680 (= (list!6633 lt!547623) (list!6638 (c!255307 lt!547623)))))

(declare-fun bs!390449 () Bool)

(assert (= bs!390449 d!467680))

(declare-fun m!1854173 () Bool)

(assert (=> bs!390449 m!1854173))

(assert (=> b!1574859 d!467680))

(declare-fun d!467682 () Bool)

(declare-fun e!1011694 () Bool)

(assert (=> d!467682 e!1011694))

(declare-fun res!702034 () Bool)

(assert (=> d!467682 (=> (not res!702034) (not e!1011694))))

(declare-fun lt!547754 () List!17319)

(declare-fun content!2374 (List!17319) (Set C!8898))

(assert (=> d!467682 (= res!702034 (= (content!2374 lt!547754) (set.union (content!2374 lt!547626) (content!2374 lt!547625))))))

(declare-fun e!1011695 () List!17319)

(assert (=> d!467682 (= lt!547754 e!1011695)))

(declare-fun c!255324 () Bool)

(assert (=> d!467682 (= c!255324 (is-Nil!17249 lt!547626))))

(assert (=> d!467682 (= (++!4470 lt!547626 lt!547625) lt!547754)))

(declare-fun b!1575041 () Bool)

(declare-fun res!702033 () Bool)

(assert (=> b!1575041 (=> (not res!702033) (not e!1011694))))

(assert (=> b!1575041 (= res!702033 (= (size!13901 lt!547754) (+ (size!13901 lt!547626) (size!13901 lt!547625))))))

(declare-fun b!1575039 () Bool)

(assert (=> b!1575039 (= e!1011695 lt!547625)))

(declare-fun b!1575042 () Bool)

(assert (=> b!1575042 (= e!1011694 (or (not (= lt!547625 Nil!17249)) (= lt!547754 lt!547626)))))

(declare-fun b!1575040 () Bool)

(assert (=> b!1575040 (= e!1011695 (Cons!17249 (h!22650 lt!547626) (++!4470 (t!143262 lt!547626) lt!547625)))))

(assert (= (and d!467682 c!255324) b!1575039))

(assert (= (and d!467682 (not c!255324)) b!1575040))

(assert (= (and d!467682 res!702034) b!1575041))

(assert (= (and b!1575041 res!702033) b!1575042))

(declare-fun m!1854175 () Bool)

(assert (=> d!467682 m!1854175))

(declare-fun m!1854177 () Bool)

(assert (=> d!467682 m!1854177))

(declare-fun m!1854179 () Bool)

(assert (=> d!467682 m!1854179))

(declare-fun m!1854181 () Bool)

(assert (=> b!1575041 m!1854181))

(declare-fun m!1854183 () Bool)

(assert (=> b!1575041 m!1854183))

(declare-fun m!1854185 () Bool)

(assert (=> b!1575041 m!1854185))

(declare-fun m!1854187 () Bool)

(assert (=> b!1575040 m!1854187))

(assert (=> b!1574859 d!467682))

(declare-fun d!467684 () Bool)

(assert (=> d!467684 (= (seqFromList!1831 tokens!457) (fromListB!780 tokens!457))))

(declare-fun bs!390450 () Bool)

(assert (= bs!390450 d!467684))

(declare-fun m!1854189 () Bool)

(assert (=> bs!390450 m!1854189))

(assert (=> b!1574859 d!467684))

(declare-fun d!467686 () Bool)

(assert (=> d!467686 (= (list!6633 lt!547619) (list!6638 (c!255307 lt!547619)))))

(declare-fun bs!390451 () Bool)

(assert (= bs!390451 d!467686))

(declare-fun m!1854191 () Bool)

(assert (=> bs!390451 m!1854191))

(assert (=> b!1574859 d!467686))

(declare-fun d!467688 () Bool)

(declare-fun lt!547757 () BalanceConc!11376)

(assert (=> d!467688 (= (list!6633 lt!547757) (originalCharacters!3848 (h!22652 tokens!457)))))

(assert (=> d!467688 (= lt!547757 (dynLambda!7636 (toChars!4288 (transformation!3034 (rule!4826 (h!22652 tokens!457)))) (value!96143 (h!22652 tokens!457))))))

(assert (=> d!467688 (= (charsOf!1683 (h!22652 tokens!457)) lt!547757)))

(declare-fun b_lambda!49567 () Bool)

(assert (=> (not b_lambda!49567) (not d!467688)))

(assert (=> d!467688 t!143271))

(declare-fun b_and!110233 () Bool)

(assert (= b_and!110221 (and (=> t!143271 result!107210) b_and!110233)))

(assert (=> d!467688 t!143273))

(declare-fun b_and!110235 () Bool)

(assert (= b_and!110223 (and (=> t!143273 result!107214) b_and!110235)))

(declare-fun m!1854193 () Bool)

(assert (=> d!467688 m!1854193))

(assert (=> d!467688 m!1853997))

(assert (=> b!1574859 d!467688))

(declare-fun d!467690 () Bool)

(assert (=> d!467690 (= (seqFromList!1831 (t!143264 tokens!457)) (fromListB!780 (t!143264 tokens!457)))))

(declare-fun bs!390452 () Bool)

(assert (= bs!390452 d!467690))

(declare-fun m!1854195 () Bool)

(assert (=> bs!390452 m!1854195))

(assert (=> b!1574859 d!467690))

(declare-fun d!467692 () Bool)

(assert (=> d!467692 (= (list!6633 (charsOf!1683 (h!22652 tokens!457))) (list!6638 (c!255307 (charsOf!1683 (h!22652 tokens!457)))))))

(declare-fun bs!390453 () Bool)

(assert (= bs!390453 d!467692))

(declare-fun m!1854197 () Bool)

(assert (=> bs!390453 m!1854197))

(assert (=> b!1574859 d!467692))

(declare-fun d!467694 () Bool)

(declare-fun lt!547758 () BalanceConc!11376)

(assert (=> d!467694 (= (list!6633 lt!547758) (printList!786 thiss!17113 (list!6634 lt!547620)))))

(assert (=> d!467694 (= lt!547758 (printTailRec!722 thiss!17113 lt!547620 0 (BalanceConc!11377 Empty!5716)))))

(assert (=> d!467694 (= (print!1194 thiss!17113 lt!547620) lt!547758)))

(declare-fun bs!390454 () Bool)

(assert (= bs!390454 d!467694))

(declare-fun m!1854199 () Bool)

(assert (=> bs!390454 m!1854199))

(assert (=> bs!390454 m!1853889))

(assert (=> bs!390454 m!1853889))

(declare-fun m!1854201 () Bool)

(assert (=> bs!390454 m!1854201))

(declare-fun m!1854203 () Bool)

(assert (=> bs!390454 m!1854203))

(assert (=> b!1574859 d!467694))

(declare-fun b!1575059 () Bool)

(declare-fun res!702043 () Bool)

(declare-fun e!1011707 () Bool)

(assert (=> b!1575059 (=> (not res!702043) (not e!1011707))))

(declare-fun lt!547813 () tuple2!16712)

(declare-datatypes ((tuple2!16716 0))(
  ( (tuple2!16717 (_1!9760 List!17321) (_2!9760 List!17319)) )
))
(declare-fun lexList!768 (LexerInterface!2663 List!17322 List!17319) tuple2!16716)

(assert (=> b!1575059 (= res!702043 (= (list!6634 (_1!9758 lt!547813)) (_1!9760 (lexList!768 thiss!17113 rules!1846 (list!6633 lt!547619)))))))

(declare-fun b!1575060 () Bool)

(declare-fun e!1011708 () Bool)

(declare-fun isEmpty!10296 (BalanceConc!11378) Bool)

(assert (=> b!1575060 (= e!1011708 (not (isEmpty!10296 (_1!9758 lt!547813))))))

(declare-fun d!467696 () Bool)

(assert (=> d!467696 e!1011707))

(declare-fun res!702045 () Bool)

(assert (=> d!467696 (=> (not res!702045) (not e!1011707))))

(declare-fun e!1011706 () Bool)

(assert (=> d!467696 (= res!702045 e!1011706)))

(declare-fun c!255329 () Bool)

(assert (=> d!467696 (= c!255329 (> (size!13902 (_1!9758 lt!547813)) 0))))

(declare-fun lexTailRecV2!491 (LexerInterface!2663 List!17322 BalanceConc!11376 BalanceConc!11376 BalanceConc!11376 BalanceConc!11378) tuple2!16712)

(assert (=> d!467696 (= lt!547813 (lexTailRecV2!491 thiss!17113 rules!1846 lt!547619 (BalanceConc!11377 Empty!5716) lt!547619 (BalanceConc!11379 Empty!5717)))))

(assert (=> d!467696 (= (lex!1147 thiss!17113 rules!1846 lt!547619) lt!547813)))

(declare-fun b!1575061 () Bool)

(assert (=> b!1575061 (= e!1011707 (= (list!6633 (_2!9758 lt!547813)) (_2!9760 (lexList!768 thiss!17113 rules!1846 (list!6633 lt!547619)))))))

(declare-fun b!1575062 () Bool)

(assert (=> b!1575062 (= e!1011706 (= (_2!9758 lt!547813) lt!547619))))

(declare-fun b!1575063 () Bool)

(assert (=> b!1575063 (= e!1011706 e!1011708)))

(declare-fun res!702044 () Bool)

(assert (=> b!1575063 (= res!702044 (< (size!13903 (_2!9758 lt!547813)) (size!13903 lt!547619)))))

(assert (=> b!1575063 (=> (not res!702044) (not e!1011708))))

(assert (= (and d!467696 c!255329) b!1575063))

(assert (= (and d!467696 (not c!255329)) b!1575062))

(assert (= (and b!1575063 res!702044) b!1575060))

(assert (= (and d!467696 res!702045) b!1575059))

(assert (= (and b!1575059 res!702043) b!1575061))

(declare-fun m!1854205 () Bool)

(assert (=> b!1575063 m!1854205))

(declare-fun m!1854207 () Bool)

(assert (=> b!1575063 m!1854207))

(declare-fun m!1854209 () Bool)

(assert (=> b!1575061 m!1854209))

(assert (=> b!1575061 m!1853877))

(assert (=> b!1575061 m!1853877))

(declare-fun m!1854211 () Bool)

(assert (=> b!1575061 m!1854211))

(declare-fun m!1854213 () Bool)

(assert (=> d!467696 m!1854213))

(declare-fun m!1854215 () Bool)

(assert (=> d!467696 m!1854215))

(declare-fun m!1854217 () Bool)

(assert (=> b!1575060 m!1854217))

(declare-fun m!1854219 () Bool)

(assert (=> b!1575059 m!1854219))

(assert (=> b!1575059 m!1853877))

(assert (=> b!1575059 m!1853877))

(assert (=> b!1575059 m!1854211))

(assert (=> b!1574859 d!467696))

(declare-fun d!467698 () Bool)

(assert (=> d!467698 (= (inv!22656 (tag!3300 (rule!4826 (h!22652 tokens!457)))) (= (mod (str.len (value!96142 (tag!3300 (rule!4826 (h!22652 tokens!457))))) 2) 0))))

(assert (=> b!1574868 d!467698))

(declare-fun d!467700 () Bool)

(declare-fun res!702046 () Bool)

(declare-fun e!1011709 () Bool)

(assert (=> d!467700 (=> (not res!702046) (not e!1011709))))

(assert (=> d!467700 (= res!702046 (semiInverseModEq!1139 (toChars!4288 (transformation!3034 (rule!4826 (h!22652 tokens!457)))) (toValue!4429 (transformation!3034 (rule!4826 (h!22652 tokens!457))))))))

(assert (=> d!467700 (= (inv!22659 (transformation!3034 (rule!4826 (h!22652 tokens!457)))) e!1011709)))

(declare-fun b!1575064 () Bool)

(assert (=> b!1575064 (= e!1011709 (equivClasses!1080 (toChars!4288 (transformation!3034 (rule!4826 (h!22652 tokens!457)))) (toValue!4429 (transformation!3034 (rule!4826 (h!22652 tokens!457))))))))

(assert (= (and d!467700 res!702046) b!1575064))

(declare-fun m!1854221 () Bool)

(assert (=> d!467700 m!1854221))

(declare-fun m!1854223 () Bool)

(assert (=> b!1575064 m!1854223))

(assert (=> b!1574868 d!467700))

(declare-fun d!467702 () Bool)

(assert (=> d!467702 (= (isEmpty!10292 rules!1846) (is-Nil!17252 rules!1846))))

(assert (=> b!1574867 d!467702))

(declare-fun b!1575078 () Bool)

(declare-fun res!702050 () Bool)

(declare-fun e!1011720 () Bool)

(assert (=> b!1575078 (=> res!702050 e!1011720)))

(assert (=> b!1575078 (= res!702050 (not (is-IntegerValue!9374 (value!96143 (h!22652 tokens!457)))))))

(declare-fun e!1011718 () Bool)

(assert (=> b!1575078 (= e!1011718 e!1011720)))

(declare-fun b!1575079 () Bool)

(declare-fun inv!17 (TokenValue!3124) Bool)

(assert (=> b!1575079 (= e!1011718 (inv!17 (value!96143 (h!22652 tokens!457))))))

(declare-fun b!1575080 () Bool)

(declare-fun e!1011719 () Bool)

(assert (=> b!1575080 (= e!1011719 e!1011718)))

(declare-fun c!255335 () Bool)

(assert (=> b!1575080 (= c!255335 (is-IntegerValue!9373 (value!96143 (h!22652 tokens!457))))))

(declare-fun b!1575081 () Bool)

(declare-fun inv!15 (TokenValue!3124) Bool)

(assert (=> b!1575081 (= e!1011720 (inv!15 (value!96143 (h!22652 tokens!457))))))

(declare-fun d!467704 () Bool)

(declare-fun c!255336 () Bool)

(assert (=> d!467704 (= c!255336 (is-IntegerValue!9372 (value!96143 (h!22652 tokens!457))))))

(assert (=> d!467704 (= (inv!21 (value!96143 (h!22652 tokens!457))) e!1011719)))

(declare-fun b!1575082 () Bool)

(declare-fun inv!16 (TokenValue!3124) Bool)

(assert (=> b!1575082 (= e!1011719 (inv!16 (value!96143 (h!22652 tokens!457))))))

(assert (= (and d!467704 c!255336) b!1575082))

(assert (= (and d!467704 (not c!255336)) b!1575080))

(assert (= (and b!1575080 c!255335) b!1575079))

(assert (= (and b!1575080 (not c!255335)) b!1575078))

(assert (= (and b!1575078 (not res!702050)) b!1575081))

(declare-fun m!1854225 () Bool)

(assert (=> b!1575079 m!1854225))

(declare-fun m!1854227 () Bool)

(assert (=> b!1575081 m!1854227))

(declare-fun m!1854229 () Bool)

(assert (=> b!1575082 m!1854229))

(assert (=> b!1574865 d!467704))

(declare-fun d!467706 () Bool)

(assert (=> d!467706 (= (list!6634 (_1!9758 lt!547624)) (list!6637 (c!255309 (_1!9758 lt!547624))))))

(declare-fun bs!390455 () Bool)

(assert (= bs!390455 d!467706))

(declare-fun m!1854231 () Bool)

(assert (=> bs!390455 m!1854231))

(assert (=> b!1574866 d!467706))

(declare-fun d!467708 () Bool)

(declare-fun e!1011738 () Bool)

(assert (=> d!467708 e!1011738))

(declare-fun res!702069 () Bool)

(assert (=> d!467708 (=> (not res!702069) (not e!1011738))))

(assert (=> d!467708 (= res!702069 (= (list!6634 (_1!9758 (lex!1147 thiss!17113 rules!1846 (print!1194 thiss!17113 (seqFromList!1831 (t!143264 tokens!457)))))) (t!143264 tokens!457)))))

(declare-fun lt!547908 () Unit!26624)

(declare-fun e!1011739 () Unit!26624)

(assert (=> d!467708 (= lt!547908 e!1011739)))

(declare-fun c!255339 () Bool)

(assert (=> d!467708 (= c!255339 (or (is-Nil!17251 (t!143264 tokens!457)) (is-Nil!17251 (t!143264 (t!143264 tokens!457)))))))

(assert (=> d!467708 (not (isEmpty!10292 rules!1846))))

(assert (=> d!467708 (= (theoremInvertabilityWhenTokenListSeparable!108 thiss!17113 rules!1846 (t!143264 tokens!457)) lt!547908)))

(declare-fun b!1575105 () Bool)

(declare-fun Unit!26632 () Unit!26624)

(assert (=> b!1575105 (= e!1011739 Unit!26632)))

(declare-fun b!1575106 () Bool)

(declare-fun Unit!26633 () Unit!26624)

(assert (=> b!1575106 (= e!1011739 Unit!26633)))

(declare-fun lt!547902 () BalanceConc!11376)

(assert (=> b!1575106 (= lt!547902 (print!1194 thiss!17113 (seqFromList!1831 (t!143264 tokens!457))))))

(declare-fun lt!547918 () BalanceConc!11376)

(assert (=> b!1575106 (= lt!547918 (print!1194 thiss!17113 (seqFromList!1831 (t!143264 (t!143264 tokens!457)))))))

(declare-fun lt!547920 () tuple2!16712)

(assert (=> b!1575106 (= lt!547920 (lex!1147 thiss!17113 rules!1846 lt!547918))))

(declare-fun lt!547907 () List!17319)

(assert (=> b!1575106 (= lt!547907 (list!6633 (charsOf!1683 (h!22652 (t!143264 tokens!457)))))))

(declare-fun lt!547919 () List!17319)

(assert (=> b!1575106 (= lt!547919 (list!6633 lt!547918))))

(declare-fun lt!547909 () Unit!26624)

(assert (=> b!1575106 (= lt!547909 (lemmaConcatTwoListThenFirstIsPrefix!819 lt!547907 lt!547919))))

(assert (=> b!1575106 (isPrefix!1294 lt!547907 (++!4470 lt!547907 lt!547919))))

(declare-fun lt!547916 () Unit!26624)

(assert (=> b!1575106 (= lt!547916 lt!547909)))

(declare-fun lt!547921 () Unit!26624)

(assert (=> b!1575106 (= lt!547921 (theoremInvertabilityWhenTokenListSeparable!108 thiss!17113 rules!1846 (t!143264 (t!143264 tokens!457))))))

(declare-fun lt!547924 () Unit!26624)

(assert (=> b!1575106 (= lt!547924 (seqFromListBHdTlConstructive!111 (h!22652 (t!143264 (t!143264 tokens!457))) (t!143264 (t!143264 (t!143264 tokens!457))) (_1!9758 lt!547920)))))

(assert (=> b!1575106 (= (list!6634 (_1!9758 lt!547920)) (list!6634 (prepend!500 (seqFromList!1831 (t!143264 (t!143264 (t!143264 tokens!457)))) (h!22652 (t!143264 (t!143264 tokens!457))))))))

(declare-fun lt!547904 () Unit!26624)

(assert (=> b!1575106 (= lt!547904 lt!547924)))

(declare-datatypes ((tuple2!16718 0))(
  ( (tuple2!16719 (_1!9761 Token!5634) (_2!9761 List!17319)) )
))
(declare-datatypes ((Option!3081 0))(
  ( (None!3080) (Some!3080 (v!23891 tuple2!16718)) )
))
(declare-fun lt!547901 () Option!3081)

(declare-fun maxPrefix!1231 (LexerInterface!2663 List!17322 List!17319) Option!3081)

(assert (=> b!1575106 (= lt!547901 (maxPrefix!1231 thiss!17113 rules!1846 (list!6633 lt!547902)))))

(assert (=> b!1575106 (= (print!1194 thiss!17113 (singletonSeq!1366 (h!22652 (t!143264 tokens!457)))) (printTailRec!722 thiss!17113 (singletonSeq!1366 (h!22652 (t!143264 tokens!457))) 0 (BalanceConc!11377 Empty!5716)))))

(declare-fun lt!547900 () Unit!26624)

(declare-fun Unit!26634 () Unit!26624)

(assert (=> b!1575106 (= lt!547900 Unit!26634)))

(declare-fun lt!547911 () Unit!26624)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!251 (LexerInterface!2663 List!17322 List!17319 List!17319) Unit!26624)

(assert (=> b!1575106 (= lt!547911 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!251 thiss!17113 rules!1846 (list!6633 (charsOf!1683 (h!22652 (t!143264 tokens!457)))) (list!6633 lt!547918)))))

(assert (=> b!1575106 (= (list!6633 (charsOf!1683 (h!22652 (t!143264 tokens!457)))) (originalCharacters!3848 (h!22652 (t!143264 tokens!457))))))

(declare-fun lt!547923 () Unit!26624)

(declare-fun Unit!26635 () Unit!26624)

(assert (=> b!1575106 (= lt!547923 Unit!26635)))

(declare-fun singletonSeq!1367 (C!8898) BalanceConc!11376)

(declare-fun apply!4168 (BalanceConc!11376 Int) C!8898)

(declare-fun head!3154 (List!17319) C!8898)

(assert (=> b!1575106 (= (list!6633 (singletonSeq!1367 (apply!4168 (charsOf!1683 (h!22652 (t!143264 (t!143264 tokens!457)))) 0))) (Cons!17249 (head!3154 (originalCharacters!3848 (h!22652 (t!143264 (t!143264 tokens!457))))) Nil!17249))))

(declare-fun lt!547910 () Unit!26624)

(declare-fun Unit!26636 () Unit!26624)

(assert (=> b!1575106 (= lt!547910 Unit!26636)))

(assert (=> b!1575106 (= (list!6633 (singletonSeq!1367 (apply!4168 (charsOf!1683 (h!22652 (t!143264 (t!143264 tokens!457)))) 0))) (Cons!17249 (head!3154 (list!6633 lt!547918)) Nil!17249))))

(declare-fun lt!547913 () Unit!26624)

(declare-fun Unit!26637 () Unit!26624)

(assert (=> b!1575106 (= lt!547913 Unit!26637)))

(declare-fun head!3155 (BalanceConc!11376) C!8898)

(assert (=> b!1575106 (= (list!6633 (singletonSeq!1367 (apply!4168 (charsOf!1683 (h!22652 (t!143264 (t!143264 tokens!457)))) 0))) (Cons!17249 (head!3155 lt!547918) Nil!17249))))

(declare-fun lt!547915 () Unit!26624)

(declare-fun Unit!26638 () Unit!26624)

(assert (=> b!1575106 (= lt!547915 Unit!26638)))

(declare-fun isDefined!2476 (Option!3081) Bool)

(assert (=> b!1575106 (isDefined!2476 (maxPrefix!1231 thiss!17113 rules!1846 (originalCharacters!3848 (h!22652 (t!143264 tokens!457)))))))

(declare-fun lt!547905 () Unit!26624)

(declare-fun Unit!26639 () Unit!26624)

(assert (=> b!1575106 (= lt!547905 Unit!26639)))

(assert (=> b!1575106 (isDefined!2476 (maxPrefix!1231 thiss!17113 rules!1846 (list!6633 (charsOf!1683 (h!22652 (t!143264 tokens!457))))))))

(declare-fun lt!547914 () Unit!26624)

(declare-fun Unit!26640 () Unit!26624)

(assert (=> b!1575106 (= lt!547914 Unit!26640)))

(declare-fun lt!547906 () Unit!26624)

(declare-fun Unit!26641 () Unit!26624)

(assert (=> b!1575106 (= lt!547906 Unit!26641)))

(declare-fun get!4932 (Option!3081) tuple2!16718)

(assert (=> b!1575106 (= (_1!9761 (get!4932 (maxPrefix!1231 thiss!17113 rules!1846 (list!6633 (charsOf!1683 (h!22652 (t!143264 tokens!457))))))) (h!22652 (t!143264 tokens!457)))))

(declare-fun lt!547903 () Unit!26624)

(declare-fun Unit!26642 () Unit!26624)

(assert (=> b!1575106 (= lt!547903 Unit!26642)))

(assert (=> b!1575106 (isEmpty!10294 (_2!9761 (get!4932 (maxPrefix!1231 thiss!17113 rules!1846 (list!6633 (charsOf!1683 (h!22652 (t!143264 tokens!457))))))))))

(declare-fun lt!547925 () Unit!26624)

(declare-fun Unit!26643 () Unit!26624)

(assert (=> b!1575106 (= lt!547925 Unit!26643)))

(declare-fun matchR!1899 (Regex!4362 List!17319) Bool)

(assert (=> b!1575106 (matchR!1899 (regex!3034 (rule!4826 (h!22652 (t!143264 tokens!457)))) (list!6633 (charsOf!1683 (h!22652 (t!143264 tokens!457)))))))

(declare-fun lt!547912 () Unit!26624)

(declare-fun Unit!26644 () Unit!26624)

(assert (=> b!1575106 (= lt!547912 Unit!26644)))

(assert (=> b!1575106 (= (rule!4826 (h!22652 (t!143264 tokens!457))) (rule!4826 (h!22652 (t!143264 tokens!457))))))

(declare-fun lt!547917 () Unit!26624)

(declare-fun Unit!26645 () Unit!26624)

(assert (=> b!1575106 (= lt!547917 Unit!26645)))

(declare-fun lt!547922 () Unit!26624)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!49 (LexerInterface!2663 List!17322 Token!5634 Rule!5868 List!17319) Unit!26624)

(assert (=> b!1575106 (= lt!547922 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!49 thiss!17113 rules!1846 (h!22652 (t!143264 tokens!457)) (rule!4826 (h!22652 (t!143264 tokens!457))) (list!6633 lt!547918)))))

(declare-fun b!1575107 () Bool)

(assert (=> b!1575107 (= e!1011738 (isEmpty!10295 (_2!9758 (lex!1147 thiss!17113 rules!1846 (print!1194 thiss!17113 (seqFromList!1831 (t!143264 tokens!457)))))))))

(assert (= (and d!467708 c!255339) b!1575105))

(assert (= (and d!467708 (not c!255339)) b!1575106))

(assert (= (and d!467708 res!702069) b!1575107))

(declare-fun m!1854325 () Bool)

(assert (=> d!467708 m!1854325))

(assert (=> d!467708 m!1853865))

(declare-fun m!1854327 () Bool)

(assert (=> d!467708 m!1854327))

(assert (=> d!467708 m!1853853))

(assert (=> d!467708 m!1854327))

(declare-fun m!1854329 () Bool)

(assert (=> d!467708 m!1854329))

(assert (=> d!467708 m!1853865))

(declare-fun m!1854331 () Bool)

(assert (=> b!1575106 m!1854331))

(declare-fun m!1854333 () Bool)

(assert (=> b!1575106 m!1854333))

(declare-fun m!1854335 () Bool)

(assert (=> b!1575106 m!1854335))

(declare-fun m!1854337 () Bool)

(assert (=> b!1575106 m!1854337))

(declare-fun m!1854339 () Bool)

(assert (=> b!1575106 m!1854339))

(assert (=> b!1575106 m!1854337))

(declare-fun m!1854341 () Bool)

(assert (=> b!1575106 m!1854341))

(assert (=> b!1575106 m!1854155))

(declare-fun m!1854343 () Bool)

(assert (=> b!1575106 m!1854343))

(assert (=> b!1575106 m!1853865))

(assert (=> b!1575106 m!1854327))

(assert (=> b!1575106 m!1853891))

(declare-fun m!1854345 () Bool)

(assert (=> b!1575106 m!1854345))

(declare-fun m!1854347 () Bool)

(assert (=> b!1575106 m!1854347))

(assert (=> b!1575106 m!1853891))

(declare-fun m!1854349 () Bool)

(assert (=> b!1575106 m!1854349))

(assert (=> b!1575106 m!1854333))

(declare-fun m!1854351 () Bool)

(assert (=> b!1575106 m!1854351))

(declare-fun m!1854353 () Bool)

(assert (=> b!1575106 m!1854353))

(declare-fun m!1854355 () Bool)

(assert (=> b!1575106 m!1854355))

(declare-fun m!1854357 () Bool)

(assert (=> b!1575106 m!1854357))

(assert (=> b!1575106 m!1854337))

(declare-fun m!1854359 () Bool)

(assert (=> b!1575106 m!1854359))

(declare-fun m!1854361 () Bool)

(assert (=> b!1575106 m!1854361))

(declare-fun m!1854363 () Bool)

(assert (=> b!1575106 m!1854363))

(assert (=> b!1575106 m!1854345))

(declare-fun m!1854365 () Bool)

(assert (=> b!1575106 m!1854365))

(declare-fun m!1854367 () Bool)

(assert (=> b!1575106 m!1854367))

(declare-fun m!1854369 () Bool)

(assert (=> b!1575106 m!1854369))

(declare-fun m!1854371 () Bool)

(assert (=> b!1575106 m!1854371))

(assert (=> b!1575106 m!1854331))

(assert (=> b!1575106 m!1854343))

(declare-fun m!1854373 () Bool)

(assert (=> b!1575106 m!1854373))

(declare-fun m!1854375 () Bool)

(assert (=> b!1575106 m!1854375))

(declare-fun m!1854377 () Bool)

(assert (=> b!1575106 m!1854377))

(assert (=> b!1575106 m!1854353))

(assert (=> b!1575106 m!1854375))

(declare-fun m!1854379 () Bool)

(assert (=> b!1575106 m!1854379))

(declare-fun m!1854381 () Bool)

(assert (=> b!1575106 m!1854381))

(declare-fun m!1854383 () Bool)

(assert (=> b!1575106 m!1854383))

(declare-fun m!1854385 () Bool)

(assert (=> b!1575106 m!1854385))

(assert (=> b!1575106 m!1854369))

(assert (=> b!1575106 m!1854377))

(declare-fun m!1854387 () Bool)

(assert (=> b!1575106 m!1854387))

(declare-fun m!1854389 () Bool)

(assert (=> b!1575106 m!1854389))

(declare-fun m!1854391 () Bool)

(assert (=> b!1575106 m!1854391))

(assert (=> b!1575106 m!1853865))

(assert (=> b!1575106 m!1854155))

(assert (=> b!1575106 m!1854345))

(assert (=> b!1575106 m!1854381))

(declare-fun m!1854393 () Bool)

(assert (=> b!1575106 m!1854393))

(assert (=> b!1575106 m!1854343))

(assert (=> b!1575106 m!1854337))

(declare-fun m!1854395 () Bool)

(assert (=> b!1575106 m!1854395))

(assert (=> b!1575106 m!1854343))

(assert (=> b!1575106 m!1854381))

(declare-fun m!1854397 () Bool)

(assert (=> b!1575106 m!1854397))

(assert (=> b!1575106 m!1854387))

(assert (=> b!1575106 m!1854361))

(assert (=> b!1575107 m!1853865))

(assert (=> b!1575107 m!1853865))

(assert (=> b!1575107 m!1854327))

(assert (=> b!1575107 m!1854327))

(assert (=> b!1575107 m!1854329))

(declare-fun m!1854399 () Bool)

(assert (=> b!1575107 m!1854399))

(assert (=> b!1574866 d!467708))

(declare-fun b!1575117 () Bool)

(declare-fun res!702081 () Bool)

(declare-fun e!1011746 () Bool)

(assert (=> b!1575117 (=> (not res!702081) (not e!1011746))))

(assert (=> b!1575117 (= res!702081 (= (head!3154 lt!547626) (head!3154 lt!547622)))))

(declare-fun b!1575118 () Bool)

(declare-fun tail!2235 (List!17319) List!17319)

(assert (=> b!1575118 (= e!1011746 (isPrefix!1294 (tail!2235 lt!547626) (tail!2235 lt!547622)))))

(declare-fun b!1575116 () Bool)

(declare-fun e!1011748 () Bool)

(assert (=> b!1575116 (= e!1011748 e!1011746)))

(declare-fun res!702080 () Bool)

(assert (=> b!1575116 (=> (not res!702080) (not e!1011746))))

(assert (=> b!1575116 (= res!702080 (not (is-Nil!17249 lt!547622)))))

(declare-fun d!467716 () Bool)

(declare-fun e!1011747 () Bool)

(assert (=> d!467716 e!1011747))

(declare-fun res!702079 () Bool)

(assert (=> d!467716 (=> res!702079 e!1011747)))

(declare-fun lt!547928 () Bool)

(assert (=> d!467716 (= res!702079 (not lt!547928))))

(assert (=> d!467716 (= lt!547928 e!1011748)))

(declare-fun res!702078 () Bool)

(assert (=> d!467716 (=> res!702078 e!1011748)))

(assert (=> d!467716 (= res!702078 (is-Nil!17249 lt!547626))))

(assert (=> d!467716 (= (isPrefix!1294 lt!547626 lt!547622) lt!547928)))

(declare-fun b!1575119 () Bool)

(assert (=> b!1575119 (= e!1011747 (>= (size!13901 lt!547622) (size!13901 lt!547626)))))

(assert (= (and d!467716 (not res!702078)) b!1575116))

(assert (= (and b!1575116 res!702080) b!1575117))

(assert (= (and b!1575117 res!702081) b!1575118))

(assert (= (and d!467716 (not res!702079)) b!1575119))

(declare-fun m!1854401 () Bool)

(assert (=> b!1575117 m!1854401))

(declare-fun m!1854403 () Bool)

(assert (=> b!1575117 m!1854403))

(declare-fun m!1854405 () Bool)

(assert (=> b!1575118 m!1854405))

(declare-fun m!1854407 () Bool)

(assert (=> b!1575118 m!1854407))

(assert (=> b!1575118 m!1854405))

(assert (=> b!1575118 m!1854407))

(declare-fun m!1854409 () Bool)

(assert (=> b!1575118 m!1854409))

(declare-fun m!1854411 () Bool)

(assert (=> b!1575119 m!1854411))

(assert (=> b!1575119 m!1854183))

(assert (=> b!1574866 d!467716))

(declare-fun d!467718 () Bool)

(assert (=> d!467718 (isPrefix!1294 lt!547626 (++!4470 lt!547626 lt!547625))))

(declare-fun lt!547931 () Unit!26624)

(declare-fun choose!9421 (List!17319 List!17319) Unit!26624)

(assert (=> d!467718 (= lt!547931 (choose!9421 lt!547626 lt!547625))))

(assert (=> d!467718 (= (lemmaConcatTwoListThenFirstIsPrefix!819 lt!547626 lt!547625) lt!547931)))

(declare-fun bs!390457 () Bool)

(assert (= bs!390457 d!467718))

(assert (=> bs!390457 m!1853879))

(assert (=> bs!390457 m!1853879))

(declare-fun m!1854413 () Bool)

(assert (=> bs!390457 m!1854413))

(declare-fun m!1854415 () Bool)

(assert (=> bs!390457 m!1854415))

(assert (=> b!1574866 d!467718))

(declare-fun b!1575133 () Bool)

(declare-fun e!1011751 () Bool)

(declare-fun tp!463685 () Bool)

(declare-fun tp!463689 () Bool)

(assert (=> b!1575133 (= e!1011751 (and tp!463685 tp!463689))))

(declare-fun b!1575132 () Bool)

(declare-fun tp!463688 () Bool)

(assert (=> b!1575132 (= e!1011751 tp!463688)))

(declare-fun b!1575130 () Bool)

(declare-fun tp_is_empty!7159 () Bool)

(assert (=> b!1575130 (= e!1011751 tp_is_empty!7159)))

(assert (=> b!1574868 (= tp!463637 e!1011751)))

(declare-fun b!1575131 () Bool)

(declare-fun tp!463686 () Bool)

(declare-fun tp!463687 () Bool)

(assert (=> b!1575131 (= e!1011751 (and tp!463686 tp!463687))))

(assert (= (and b!1574868 (is-ElementMatch!4362 (regex!3034 (rule!4826 (h!22652 tokens!457))))) b!1575130))

(assert (= (and b!1574868 (is-Concat!7487 (regex!3034 (rule!4826 (h!22652 tokens!457))))) b!1575131))

(assert (= (and b!1574868 (is-Star!4362 (regex!3034 (rule!4826 (h!22652 tokens!457))))) b!1575132))

(assert (= (and b!1574868 (is-Union!4362 (regex!3034 (rule!4826 (h!22652 tokens!457))))) b!1575133))

(declare-fun b!1575147 () Bool)

(declare-fun b_free!42383 () Bool)

(declare-fun b_next!43087 () Bool)

(assert (=> b!1575147 (= b_free!42383 (not b_next!43087))))

(declare-fun tp!463700 () Bool)

(declare-fun b_and!110237 () Bool)

(assert (=> b!1575147 (= tp!463700 b_and!110237)))

(declare-fun b_free!42385 () Bool)

(declare-fun b_next!43089 () Bool)

(assert (=> b!1575147 (= b_free!42385 (not b_next!43089))))

(declare-fun t!143284 () Bool)

(declare-fun tb!88655 () Bool)

(assert (=> (and b!1575147 (= (toChars!4288 (transformation!3034 (rule!4826 (h!22652 (t!143264 tokens!457))))) (toChars!4288 (transformation!3034 (rule!4826 (h!22652 tokens!457))))) t!143284) tb!88655))

(declare-fun result!107226 () Bool)

(assert (= result!107226 result!107210))

(assert (=> b!1574930 t!143284))

(assert (=> d!467688 t!143284))

(declare-fun b_and!110239 () Bool)

(declare-fun tp!463702 () Bool)

(assert (=> b!1575147 (= tp!463702 (and (=> t!143284 result!107226) b_and!110239))))

(declare-fun e!1011764 () Bool)

(assert (=> b!1575147 (= e!1011764 (and tp!463700 tp!463702))))

(declare-fun b!1575144 () Bool)

(declare-fun e!1011769 () Bool)

(declare-fun tp!463701 () Bool)

(declare-fun e!1011766 () Bool)

(assert (=> b!1575144 (= e!1011766 (and (inv!22660 (h!22652 (t!143264 tokens!457))) e!1011769 tp!463701))))

(declare-fun e!1011767 () Bool)

(declare-fun tp!463704 () Bool)

(declare-fun b!1575145 () Bool)

(assert (=> b!1575145 (= e!1011769 (and (inv!21 (value!96143 (h!22652 (t!143264 tokens!457)))) e!1011767 tp!463704))))

(declare-fun tp!463703 () Bool)

(declare-fun b!1575146 () Bool)

(assert (=> b!1575146 (= e!1011767 (and tp!463703 (inv!22656 (tag!3300 (rule!4826 (h!22652 (t!143264 tokens!457))))) (inv!22659 (transformation!3034 (rule!4826 (h!22652 (t!143264 tokens!457))))) e!1011764))))

(assert (=> b!1574874 (= tp!463639 e!1011766)))

(assert (= b!1575146 b!1575147))

(assert (= b!1575145 b!1575146))

(assert (= b!1575144 b!1575145))

(assert (= (and b!1574874 (is-Cons!17251 (t!143264 tokens!457))) b!1575144))

(declare-fun m!1854417 () Bool)

(assert (=> b!1575144 m!1854417))

(declare-fun m!1854419 () Bool)

(assert (=> b!1575145 m!1854419))

(declare-fun m!1854421 () Bool)

(assert (=> b!1575146 m!1854421))

(declare-fun m!1854423 () Bool)

(assert (=> b!1575146 m!1854423))

(declare-fun b!1575151 () Bool)

(declare-fun e!1011770 () Bool)

(declare-fun tp!463705 () Bool)

(declare-fun tp!463709 () Bool)

(assert (=> b!1575151 (= e!1011770 (and tp!463705 tp!463709))))

(declare-fun b!1575150 () Bool)

(declare-fun tp!463708 () Bool)

(assert (=> b!1575150 (= e!1011770 tp!463708)))

(declare-fun b!1575148 () Bool)

(assert (=> b!1575148 (= e!1011770 tp_is_empty!7159)))

(assert (=> b!1574862 (= tp!463633 e!1011770)))

(declare-fun b!1575149 () Bool)

(declare-fun tp!463706 () Bool)

(declare-fun tp!463707 () Bool)

(assert (=> b!1575149 (= e!1011770 (and tp!463706 tp!463707))))

(assert (= (and b!1574862 (is-ElementMatch!4362 (regex!3034 (h!22653 rules!1846)))) b!1575148))

(assert (= (and b!1574862 (is-Concat!7487 (regex!3034 (h!22653 rules!1846)))) b!1575149))

(assert (= (and b!1574862 (is-Star!4362 (regex!3034 (h!22653 rules!1846)))) b!1575150))

(assert (= (and b!1574862 (is-Union!4362 (regex!3034 (h!22653 rules!1846)))) b!1575151))

(declare-fun b!1575156 () Bool)

(declare-fun e!1011773 () Bool)

(declare-fun tp!463712 () Bool)

(assert (=> b!1575156 (= e!1011773 (and tp_is_empty!7159 tp!463712))))

(assert (=> b!1574865 (= tp!463634 e!1011773)))

(assert (= (and b!1574865 (is-Cons!17249 (originalCharacters!3848 (h!22652 tokens!457)))) b!1575156))

(declare-fun b!1575167 () Bool)

(declare-fun b_free!42387 () Bool)

(declare-fun b_next!43091 () Bool)

(assert (=> b!1575167 (= b_free!42387 (not b_next!43091))))

(declare-fun tp!463723 () Bool)

(declare-fun b_and!110241 () Bool)

(assert (=> b!1575167 (= tp!463723 b_and!110241)))

(declare-fun b_free!42389 () Bool)

(declare-fun b_next!43093 () Bool)

(assert (=> b!1575167 (= b_free!42389 (not b_next!43093))))

(declare-fun t!143286 () Bool)

(declare-fun tb!88657 () Bool)

(assert (=> (and b!1575167 (= (toChars!4288 (transformation!3034 (h!22653 (t!143265 rules!1846)))) (toChars!4288 (transformation!3034 (rule!4826 (h!22652 tokens!457))))) t!143286) tb!88657))

(declare-fun result!107232 () Bool)

(assert (= result!107232 result!107210))

(assert (=> b!1574930 t!143286))

(assert (=> d!467688 t!143286))

(declare-fun b_and!110243 () Bool)

(declare-fun tp!463721 () Bool)

(assert (=> b!1575167 (= tp!463721 (and (=> t!143286 result!107232) b_and!110243))))

(declare-fun e!1011785 () Bool)

(assert (=> b!1575167 (= e!1011785 (and tp!463723 tp!463721))))

(declare-fun e!1011783 () Bool)

(declare-fun tp!463724 () Bool)

(declare-fun b!1575166 () Bool)

(assert (=> b!1575166 (= e!1011783 (and tp!463724 (inv!22656 (tag!3300 (h!22653 (t!143265 rules!1846)))) (inv!22659 (transformation!3034 (h!22653 (t!143265 rules!1846)))) e!1011785))))

(declare-fun b!1575165 () Bool)

(declare-fun e!1011784 () Bool)

(declare-fun tp!463722 () Bool)

(assert (=> b!1575165 (= e!1011784 (and e!1011783 tp!463722))))

(assert (=> b!1574871 (= tp!463640 e!1011784)))

(assert (= b!1575166 b!1575167))

(assert (= b!1575165 b!1575166))

(assert (= (and b!1574871 (is-Cons!17252 (t!143265 rules!1846))) b!1575165))

(declare-fun m!1854425 () Bool)

(assert (=> b!1575166 m!1854425))

(declare-fun m!1854427 () Bool)

(assert (=> b!1575166 m!1854427))

(declare-fun b_lambda!49569 () Bool)

(assert (= b_lambda!49567 (or (and b!1574870 b_free!42369 (= (toChars!4288 (transformation!3034 (h!22653 rules!1846))) (toChars!4288 (transformation!3034 (rule!4826 (h!22652 tokens!457)))))) (and b!1574864 b_free!42373) (and b!1575147 b_free!42385 (= (toChars!4288 (transformation!3034 (rule!4826 (h!22652 (t!143264 tokens!457))))) (toChars!4288 (transformation!3034 (rule!4826 (h!22652 tokens!457)))))) (and b!1575167 b_free!42389 (= (toChars!4288 (transformation!3034 (h!22653 (t!143265 rules!1846)))) (toChars!4288 (transformation!3034 (rule!4826 (h!22652 tokens!457)))))) b_lambda!49569)))

(declare-fun b_lambda!49571 () Bool)

(assert (= b_lambda!49561 (or (and b!1574870 b_free!42369 (= (toChars!4288 (transformation!3034 (h!22653 rules!1846))) (toChars!4288 (transformation!3034 (rule!4826 (h!22652 tokens!457)))))) (and b!1574864 b_free!42373) (and b!1575147 b_free!42385 (= (toChars!4288 (transformation!3034 (rule!4826 (h!22652 (t!143264 tokens!457))))) (toChars!4288 (transformation!3034 (rule!4826 (h!22652 tokens!457)))))) (and b!1575167 b_free!42389 (= (toChars!4288 (transformation!3034 (h!22653 (t!143265 rules!1846)))) (toChars!4288 (transformation!3034 (rule!4826 (h!22652 tokens!457)))))) b_lambda!49571)))

(push 1)

(assert (not b!1574930))

(assert (not b!1575146))

(assert b_and!110241)

(assert (not b!1575165))

(assert (not b!1575020))

(assert (not b_next!43091))

(assert (not b!1575082))

(assert (not d!467610))

(assert b_and!110237)

(assert (not b_next!43071))

(assert (not b!1575041))

(assert (not b!1574925))

(assert (not b!1575060))

(assert b_and!110209)

(assert (not d!467696))

(assert (not d!467652))

(assert (not d!467616))

(assert (not b!1575156))

(assert b_and!110239)

(assert (not b_next!43075))

(assert (not b!1575151))

(assert (not b!1575019))

(assert (not d!467718))

(assert (not b!1574931))

(assert (not b!1575059))

(assert (not b!1575030))

(assert (not d!467706))

(assert (not b_next!43087))

(assert (not b!1575118))

(assert (not b!1574985))

(assert (not d!467708))

(assert (not b!1575133))

(assert (not d!467692))

(assert (not b!1575144))

(assert (not d!467608))

(assert (not d!467606))

(assert b_and!110205)

(assert (not b!1575166))

(assert (not b_lambda!49571))

(assert (not b!1575106))

(assert (not b!1575063))

(assert (not d!467674))

(assert (not d!467686))

(assert (not b!1575061))

(assert (not b!1575149))

(assert (not d!467612))

(assert (not b!1574936))

(assert (not d!467678))

(assert (not d!467690))

(assert (not b!1575024))

(assert (not d!467700))

(assert (not b_next!43089))

(assert tp_is_empty!7159)

(assert (not b!1575145))

(assert (not b!1575002))

(assert (not d!467682))

(assert (not b_next!43077))

(assert (not d!467680))

(assert (not tb!88647))

(assert (not b_next!43073))

(assert (not b_next!43093))

(assert (not b!1575117))

(assert (not d!467604))

(assert (not b!1575040))

(assert (not b!1575029))

(assert (not b!1574995))

(assert b_and!110233)

(assert (not d!467650))

(assert (not d!467684))

(assert b_and!110243)

(assert (not b!1574986))

(assert (not d!467694))

(assert (not b!1575150))

(assert (not b!1575064))

(assert (not b!1575119))

(assert (not b!1575079))

(assert (not b!1575107))

(assert (not d!467614))

(assert b_and!110235)

(assert (not b_lambda!49569))

(assert (not b!1575132))

(assert (not d!467688))

(assert (not b!1575081))

(assert (not b!1575131))

(assert (not b!1575021))

(check-sat)

(pop 1)

(push 1)

(assert b_and!110209)

(assert (not b_next!43087))

(assert b_and!110241)

(assert b_and!110205)

(assert (not b_next!43089))

(assert (not b_next!43091))

(assert (not b_next!43077))

(assert b_and!110233)

(assert b_and!110243)

(assert b_and!110235)

(assert b_and!110237)

(assert (not b_next!43071))

(assert b_and!110239)

(assert (not b_next!43075))

(assert (not b_next!43073))

(assert (not b_next!43093))

(check-sat)

(pop 1)

