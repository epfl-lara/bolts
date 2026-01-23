; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19662 () Bool)

(assert start!19662)

(declare-fun b!181651 () Bool)

(declare-fun b_free!7057 () Bool)

(declare-fun b_next!7057 () Bool)

(assert (=> b!181651 (= b_free!7057 (not b_next!7057))))

(declare-fun tp!86538 () Bool)

(declare-fun b_and!12421 () Bool)

(assert (=> b!181651 (= tp!86538 b_and!12421)))

(declare-fun b_free!7059 () Bool)

(declare-fun b_next!7059 () Bool)

(assert (=> b!181651 (= b_free!7059 (not b_next!7059))))

(declare-fun tp!86541 () Bool)

(declare-fun b_and!12423 () Bool)

(assert (=> b!181651 (= tp!86541 b_and!12423)))

(declare-fun b!181664 () Bool)

(declare-fun b_free!7061 () Bool)

(declare-fun b_next!7061 () Bool)

(assert (=> b!181664 (= b_free!7061 (not b_next!7061))))

(declare-fun tp!86533 () Bool)

(declare-fun b_and!12425 () Bool)

(assert (=> b!181664 (= tp!86533 b_and!12425)))

(declare-fun b_free!7063 () Bool)

(declare-fun b_next!7063 () Bool)

(assert (=> b!181664 (= b_free!7063 (not b_next!7063))))

(declare-fun tp!86539 () Bool)

(declare-fun b_and!12427 () Bool)

(assert (=> b!181664 (= tp!86539 b_and!12427)))

(declare-fun b!181666 () Bool)

(declare-fun b_free!7065 () Bool)

(declare-fun b_next!7065 () Bool)

(assert (=> b!181666 (= b_free!7065 (not b_next!7065))))

(declare-fun tp!86531 () Bool)

(declare-fun b_and!12429 () Bool)

(assert (=> b!181666 (= tp!86531 b_and!12429)))

(declare-fun b_free!7067 () Bool)

(declare-fun b_next!7067 () Bool)

(assert (=> b!181666 (= b_free!7067 (not b_next!7067))))

(declare-fun tp!86532 () Bool)

(declare-fun b_and!12431 () Bool)

(assert (=> b!181666 (= tp!86532 b_and!12431)))

(declare-fun bs!18078 () Bool)

(declare-fun b!181654 () Bool)

(declare-fun b!181668 () Bool)

(assert (= bs!18078 (and b!181654 b!181668)))

(declare-fun lambda!5382 () Int)

(declare-fun lambda!5381 () Int)

(assert (=> bs!18078 (not (= lambda!5382 lambda!5381))))

(declare-fun b!181692 () Bool)

(declare-fun e!110743 () Bool)

(assert (=> b!181692 (= e!110743 true)))

(declare-fun b!181691 () Bool)

(declare-fun e!110742 () Bool)

(assert (=> b!181691 (= e!110742 e!110743)))

(declare-fun b!181690 () Bool)

(declare-fun e!110741 () Bool)

(assert (=> b!181690 (= e!110741 e!110742)))

(assert (=> b!181654 e!110741))

(assert (= b!181691 b!181692))

(assert (= b!181690 b!181691))

(declare-datatypes ((List!3049 0))(
  ( (Nil!3039) (Cons!3039 (h!8436 (_ BitVec 16)) (t!28331 List!3049)) )
))
(declare-datatypes ((TokenValue!573 0))(
  ( (FloatLiteralValue!1146 (text!4456 List!3049)) (TokenValueExt!572 (__x!2633 Int)) (Broken!2865 (value!19993 List!3049)) (Object!582) (End!573) (Def!573) (Underscore!573) (Match!573) (Else!573) (Error!573) (Case!573) (If!573) (Extends!573) (Abstract!573) (Class!573) (Val!573) (DelimiterValue!1146 (del!633 List!3049)) (KeywordValue!579 (value!19994 List!3049)) (CommentValue!1146 (value!19995 List!3049)) (WhitespaceValue!1146 (value!19996 List!3049)) (IndentationValue!573 (value!19997 List!3049)) (String!3944) (Int32!573) (Broken!2866 (value!19998 List!3049)) (Boolean!574) (Unit!2791) (OperatorValue!576 (op!633 List!3049)) (IdentifierValue!1146 (value!19999 List!3049)) (IdentifierValue!1147 (value!20000 List!3049)) (WhitespaceValue!1147 (value!20001 List!3049)) (True!1146) (False!1146) (Broken!2867 (value!20002 List!3049)) (Broken!2868 (value!20003 List!3049)) (True!1147) (RightBrace!573) (RightBracket!573) (Colon!573) (Null!573) (Comma!573) (LeftBracket!573) (False!1147) (LeftBrace!573) (ImaginaryLiteralValue!573 (text!4457 List!3049)) (StringLiteralValue!1719 (value!20004 List!3049)) (EOFValue!573 (value!20005 List!3049)) (IdentValue!573 (value!20006 List!3049)) (DelimiterValue!1147 (value!20007 List!3049)) (DedentValue!573 (value!20008 List!3049)) (NewLineValue!573 (value!20009 List!3049)) (IntegerValue!1719 (value!20010 (_ BitVec 32)) (text!4458 List!3049)) (IntegerValue!1720 (value!20011 Int) (text!4459 List!3049)) (Times!573) (Or!573) (Equal!573) (Minus!573) (Broken!2869 (value!20012 List!3049)) (And!573) (Div!573) (LessEqual!573) (Mod!573) (Concat!1348) (Not!573) (Plus!573) (SpaceValue!573 (value!20013 List!3049)) (IntegerValue!1721 (value!20014 Int) (text!4460 List!3049)) (StringLiteralValue!1720 (text!4461 List!3049)) (FloatLiteralValue!1147 (text!4462 List!3049)) (BytesLiteralValue!573 (value!20015 List!3049)) (CommentValue!1147 (value!20016 List!3049)) (StringLiteralValue!1721 (value!20017 List!3049)) (ErrorTokenValue!573 (msg!634 List!3049)) )
))
(declare-datatypes ((C!2472 0))(
  ( (C!2473 (val!1122 Int)) )
))
(declare-datatypes ((List!3050 0))(
  ( (Nil!3040) (Cons!3040 (h!8437 C!2472) (t!28332 List!3050)) )
))
(declare-datatypes ((IArray!1849 0))(
  ( (IArray!1850 (innerList!982 List!3050)) )
))
(declare-datatypes ((Conc!924 0))(
  ( (Node!924 (left!2358 Conc!924) (right!2688 Conc!924) (csize!2078 Int) (cheight!1135 Int)) (Leaf!1539 (xs!3519 IArray!1849) (csize!2079 Int)) (Empty!924) )
))
(declare-datatypes ((BalanceConc!1856 0))(
  ( (BalanceConc!1857 (c!35465 Conc!924)) )
))
(declare-datatypes ((TokenValueInjection!918 0))(
  ( (TokenValueInjection!919 (toValue!1222 Int) (toChars!1081 Int)) )
))
(declare-datatypes ((Regex!775 0))(
  ( (ElementMatch!775 (c!35466 C!2472)) (Concat!1349 (regOne!2062 Regex!775) (regTwo!2062 Regex!775)) (EmptyExpr!775) (Star!775 (reg!1104 Regex!775)) (EmptyLang!775) (Union!775 (regOne!2063 Regex!775) (regTwo!2063 Regex!775)) )
))
(declare-datatypes ((String!3945 0))(
  ( (String!3946 (value!20018 String)) )
))
(declare-datatypes ((Rule!902 0))(
  ( (Rule!903 (regex!551 Regex!775) (tag!729 String!3945) (isSeparator!551 Bool) (transformation!551 TokenValueInjection!918)) )
))
(declare-datatypes ((List!3051 0))(
  ( (Nil!3041) (Cons!3041 (h!8438 Rule!902) (t!28333 List!3051)) )
))
(declare-fun rules!1920 () List!3051)

(get-info :version)

(assert (= (and b!181654 ((_ is Cons!3041) rules!1920)) b!181690))

(declare-fun order!1783 () Int)

(declare-fun order!1781 () Int)

(declare-fun dynLambda!1223 (Int Int) Int)

(declare-fun dynLambda!1224 (Int Int) Int)

(assert (=> b!181692 (< (dynLambda!1223 order!1781 (toValue!1222 (transformation!551 (h!8438 rules!1920)))) (dynLambda!1224 order!1783 lambda!5382))))

(declare-fun order!1785 () Int)

(declare-fun dynLambda!1225 (Int Int) Int)

(assert (=> b!181692 (< (dynLambda!1225 order!1785 (toChars!1081 (transformation!551 (h!8438 rules!1920)))) (dynLambda!1224 order!1783 lambda!5382))))

(assert (=> b!181654 true))

(declare-fun b!181649 () Bool)

(declare-fun e!110726 () Bool)

(declare-fun e!110711 () Bool)

(declare-fun tp!86540 () Bool)

(declare-datatypes ((Token!846 0))(
  ( (Token!847 (value!20019 TokenValue!573) (rule!1066 Rule!902) (size!2481 Int) (originalCharacters!594 List!3050)) )
))
(declare-datatypes ((List!3052 0))(
  ( (Nil!3042) (Cons!3042 (h!8439 Token!846) (t!28334 List!3052)) )
))
(declare-fun tokens!465 () List!3052)

(declare-fun inv!3873 (Token!846) Bool)

(assert (=> b!181649 (= e!110726 (and (inv!3873 (h!8439 tokens!465)) e!110711 tp!86540))))

(declare-fun b!181650 () Bool)

(declare-fun res!82385 () Bool)

(declare-fun e!110723 () Bool)

(assert (=> b!181650 (=> res!82385 e!110723)))

(declare-datatypes ((LexerInterface!437 0))(
  ( (LexerInterfaceExt!434 (__x!2634 Int)) (Lexer!435) )
))
(declare-fun thiss!17480 () LexerInterface!437)

(declare-fun rulesProduceIndividualToken!186 (LexerInterface!437 List!3051 Token!846) Bool)

(assert (=> b!181650 (= res!82385 (not (rulesProduceIndividualToken!186 thiss!17480 rules!1920 (h!8439 tokens!465))))))

(declare-fun e!110727 () Bool)

(assert (=> b!181651 (= e!110727 (and tp!86538 tp!86541))))

(declare-fun b!181652 () Bool)

(declare-fun res!82395 () Bool)

(declare-fun e!110733 () Bool)

(assert (=> b!181652 (=> (not res!82395) (not e!110733))))

(assert (=> b!181652 (= res!82395 ((_ is Cons!3042) tokens!465))))

(declare-fun res!82374 () Bool)

(declare-fun e!110716 () Bool)

(assert (=> start!19662 (=> (not res!82374) (not e!110716))))

(assert (=> start!19662 (= res!82374 ((_ is Lexer!435) thiss!17480))))

(assert (=> start!19662 e!110716))

(assert (=> start!19662 true))

(declare-fun e!110715 () Bool)

(assert (=> start!19662 e!110715))

(declare-fun separatorToken!170 () Token!846)

(declare-fun e!110709 () Bool)

(assert (=> start!19662 (and (inv!3873 separatorToken!170) e!110709)))

(assert (=> start!19662 e!110726))

(declare-fun b!181653 () Bool)

(declare-fun res!82378 () Bool)

(assert (=> b!181653 (=> (not res!82378) (not e!110733))))

(assert (=> b!181653 (= res!82378 (isSeparator!551 (rule!1066 separatorToken!170)))))

(declare-fun e!110718 () Bool)

(assert (=> b!181654 (= e!110723 e!110718)))

(declare-fun res!82388 () Bool)

(assert (=> b!181654 (=> res!82388 e!110718)))

(declare-datatypes ((tuple2!3030 0))(
  ( (tuple2!3031 (_1!1731 Token!846) (_2!1731 BalanceConc!1856)) )
))
(declare-datatypes ((Option!380 0))(
  ( (None!379) (Some!379 (v!13860 tuple2!3030)) )
))
(declare-fun isDefined!231 (Option!380) Bool)

(declare-fun maxPrefixZipperSequence!130 (LexerInterface!437 List!3051 BalanceConc!1856) Option!380)

(declare-fun seqFromList!479 (List!3050) BalanceConc!1856)

(assert (=> b!181654 (= res!82388 (not (isDefined!231 (maxPrefixZipperSequence!130 thiss!17480 rules!1920 (seqFromList!479 (originalCharacters!594 (h!8439 tokens!465)))))))))

(declare-datatypes ((Unit!2792 0))(
  ( (Unit!2793) )
))
(declare-fun lt!59922 () Unit!2792)

(declare-fun forallContained!118 (List!3052 Int Token!846) Unit!2792)

(assert (=> b!181654 (= lt!59922 (forallContained!118 tokens!465 lambda!5382 (h!8439 tokens!465)))))

(declare-fun lt!59918 () List!3050)

(assert (=> b!181654 (= lt!59918 (originalCharacters!594 (h!8439 tokens!465)))))

(declare-fun lt!59916 () List!3050)

(declare-fun lt!59924 () List!3050)

(declare-fun b!181655 () Bool)

(declare-fun e!110721 () Bool)

(declare-fun ++!716 (List!3050 List!3050) List!3050)

(assert (=> b!181655 (= e!110721 (not (= lt!59916 (++!716 lt!59918 lt!59924))))))

(declare-fun b!181656 () Bool)

(declare-fun e!110719 () Bool)

(declare-fun matchR!113 (Regex!775 List!3050) Bool)

(assert (=> b!181656 (= e!110719 (matchR!113 (regex!551 (rule!1066 (h!8439 tokens!465))) lt!59918))))

(declare-fun b!181657 () Bool)

(declare-fun tp!86536 () Bool)

(declare-fun e!110734 () Bool)

(declare-fun inv!3870 (String!3945) Bool)

(declare-fun inv!3874 (TokenValueInjection!918) Bool)

(assert (=> b!181657 (= e!110734 (and tp!86536 (inv!3870 (tag!729 (h!8438 rules!1920))) (inv!3874 (transformation!551 (h!8438 rules!1920))) e!110727))))

(declare-fun b!181658 () Bool)

(declare-fun e!110708 () Bool)

(assert (=> b!181658 (= e!110708 e!110723)))

(declare-fun res!82393 () Bool)

(assert (=> b!181658 (=> res!82393 e!110723)))

(declare-fun lt!59928 () List!3050)

(declare-fun lt!59930 () List!3050)

(assert (=> b!181658 (= res!82393 (or (not (= lt!59930 lt!59928)) (not (= lt!59928 lt!59918)) (not (= lt!59930 lt!59918))))))

(declare-fun printList!121 (LexerInterface!437 List!3052) List!3050)

(assert (=> b!181658 (= lt!59928 (printList!121 thiss!17480 (Cons!3042 (h!8439 tokens!465) Nil!3042)))))

(declare-fun lt!59919 () BalanceConc!1856)

(declare-fun list!1117 (BalanceConc!1856) List!3050)

(assert (=> b!181658 (= lt!59930 (list!1117 lt!59919))))

(declare-datatypes ((IArray!1851 0))(
  ( (IArray!1852 (innerList!983 List!3052)) )
))
(declare-datatypes ((Conc!925 0))(
  ( (Node!925 (left!2359 Conc!925) (right!2689 Conc!925) (csize!2080 Int) (cheight!1136 Int)) (Leaf!1540 (xs!3520 IArray!1851) (csize!2081 Int)) (Empty!925) )
))
(declare-datatypes ((BalanceConc!1858 0))(
  ( (BalanceConc!1859 (c!35467 Conc!925)) )
))
(declare-fun lt!59921 () BalanceConc!1858)

(declare-fun printTailRec!131 (LexerInterface!437 BalanceConc!1858 Int BalanceConc!1856) BalanceConc!1856)

(assert (=> b!181658 (= lt!59919 (printTailRec!131 thiss!17480 lt!59921 0 (BalanceConc!1857 Empty!924)))))

(declare-fun print!168 (LexerInterface!437 BalanceConc!1858) BalanceConc!1856)

(assert (=> b!181658 (= lt!59919 (print!168 thiss!17480 lt!59921))))

(declare-fun singletonSeq!103 (Token!846) BalanceConc!1858)

(assert (=> b!181658 (= lt!59921 (singletonSeq!103 (h!8439 tokens!465)))))

(declare-fun b!181659 () Bool)

(declare-fun tp!86537 () Bool)

(assert (=> b!181659 (= e!110715 (and e!110734 tp!86537))))

(declare-fun b!181660 () Bool)

(assert (=> b!181660 (= e!110716 e!110733)))

(declare-fun res!82392 () Bool)

(assert (=> b!181660 (=> (not res!82392) (not e!110733))))

(declare-fun lt!59920 () BalanceConc!1858)

(declare-fun rulesProduceEachTokenIndividually!229 (LexerInterface!437 List!3051 BalanceConc!1858) Bool)

(assert (=> b!181660 (= res!82392 (rulesProduceEachTokenIndividually!229 thiss!17480 rules!1920 lt!59920))))

(declare-fun seqFromList!480 (List!3052) BalanceConc!1858)

(assert (=> b!181660 (= lt!59920 (seqFromList!480 tokens!465))))

(declare-fun b!181661 () Bool)

(declare-fun res!82387 () Bool)

(assert (=> b!181661 (=> (not res!82387) (not e!110719))))

(declare-datatypes ((tuple2!3032 0))(
  ( (tuple2!3033 (_1!1732 Token!846) (_2!1732 List!3050)) )
))
(declare-fun lt!59934 () tuple2!3032)

(declare-fun isEmpty!1391 (List!3050) Bool)

(assert (=> b!181661 (= res!82387 (isEmpty!1391 (_2!1732 lt!59934)))))

(declare-fun b!181662 () Bool)

(declare-fun e!110728 () Bool)

(assert (=> b!181662 (= e!110728 e!110708)))

(declare-fun res!82389 () Bool)

(assert (=> b!181662 (=> res!82389 e!110708)))

(assert (=> b!181662 (= res!82389 e!110721)))

(declare-fun res!82380 () Bool)

(assert (=> b!181662 (=> (not res!82380) (not e!110721))))

(declare-fun lt!59926 () Bool)

(assert (=> b!181662 (= res!82380 (not lt!59926))))

(declare-fun lt!59936 () List!3050)

(assert (=> b!181662 (= lt!59926 (= lt!59916 lt!59936))))

(declare-fun e!110729 () Bool)

(declare-fun b!181663 () Bool)

(declare-fun tp!86535 () Bool)

(declare-fun inv!21 (TokenValue!573) Bool)

(assert (=> b!181663 (= e!110709 (and (inv!21 (value!20019 separatorToken!170)) e!110729 tp!86535))))

(declare-fun e!110713 () Bool)

(assert (=> b!181664 (= e!110713 (and tp!86533 tp!86539))))

(declare-fun b!181665 () Bool)

(declare-fun tp!86542 () Bool)

(declare-fun e!110714 () Bool)

(assert (=> b!181665 (= e!110711 (and (inv!21 (value!20019 (h!8439 tokens!465))) e!110714 tp!86542))))

(declare-fun e!110720 () Bool)

(assert (=> b!181666 (= e!110720 (and tp!86531 tp!86532))))

(declare-fun b!181667 () Bool)

(declare-fun res!82396 () Bool)

(assert (=> b!181667 (=> (not res!82396) (not e!110716))))

(declare-fun isEmpty!1392 (List!3051) Bool)

(assert (=> b!181667 (= res!82396 (not (isEmpty!1392 rules!1920)))))

(declare-fun res!82384 () Bool)

(assert (=> b!181668 (=> (not res!82384) (not e!110733))))

(declare-fun forall!621 (List!3052 Int) Bool)

(assert (=> b!181668 (= res!82384 (forall!621 tokens!465 lambda!5381))))

(declare-fun b!181669 () Bool)

(declare-fun e!110725 () Bool)

(declare-fun e!110717 () Bool)

(assert (=> b!181669 (= e!110725 e!110717)))

(declare-fun res!82376 () Bool)

(assert (=> b!181669 (=> (not res!82376) (not e!110717))))

(declare-datatypes ((Option!381 0))(
  ( (None!380) (Some!380 (v!13861 tuple2!3032)) )
))
(declare-fun lt!59933 () Option!381)

(declare-fun isDefined!232 (Option!381) Bool)

(assert (=> b!181669 (= res!82376 (isDefined!232 lt!59933))))

(declare-fun maxPrefix!167 (LexerInterface!437 List!3051 List!3050) Option!381)

(assert (=> b!181669 (= lt!59933 (maxPrefix!167 thiss!17480 rules!1920 lt!59916))))

(declare-fun b!181670 () Bool)

(declare-fun res!82394 () Bool)

(assert (=> b!181670 (=> (not res!82394) (not e!110733))))

(assert (=> b!181670 (= res!82394 (rulesProduceIndividualToken!186 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!181671 () Bool)

(declare-fun tp!86534 () Bool)

(assert (=> b!181671 (= e!110729 (and tp!86534 (inv!3870 (tag!729 (rule!1066 separatorToken!170))) (inv!3874 (transformation!551 (rule!1066 separatorToken!170))) e!110713))))

(declare-fun b!181672 () Bool)

(declare-fun e!110730 () Bool)

(assert (=> b!181672 (= e!110718 e!110730)))

(declare-fun res!82391 () Bool)

(assert (=> b!181672 (=> res!82391 e!110730)))

(assert (=> b!181672 (= res!82391 (not lt!59926))))

(assert (=> b!181672 e!110719))

(declare-fun res!82379 () Bool)

(assert (=> b!181672 (=> (not res!82379) (not e!110719))))

(assert (=> b!181672 (= res!82379 (= (_1!1732 lt!59934) (h!8439 tokens!465)))))

(declare-fun lt!59929 () Option!381)

(declare-fun get!857 (Option!381) tuple2!3032)

(assert (=> b!181672 (= lt!59934 (get!857 lt!59929))))

(assert (=> b!181672 (isDefined!232 lt!59929)))

(assert (=> b!181672 (= lt!59929 (maxPrefix!167 thiss!17480 rules!1920 lt!59918))))

(declare-fun b!181673 () Bool)

(declare-fun res!82381 () Bool)

(assert (=> b!181673 (=> (not res!82381) (not e!110716))))

(declare-fun rulesInvariant!403 (LexerInterface!437 List!3051) Bool)

(assert (=> b!181673 (= res!82381 (rulesInvariant!403 thiss!17480 rules!1920))))

(declare-fun b!181674 () Bool)

(declare-fun res!82390 () Bool)

(assert (=> b!181674 (=> (not res!82390) (not e!110733))))

(declare-fun sepAndNonSepRulesDisjointChars!140 (List!3051 List!3051) Bool)

(assert (=> b!181674 (= res!82390 (sepAndNonSepRulesDisjointChars!140 rules!1920 rules!1920))))

(declare-fun b!181675 () Bool)

(declare-fun tp!86543 () Bool)

(assert (=> b!181675 (= e!110714 (and tp!86543 (inv!3870 (tag!729 (rule!1066 (h!8439 tokens!465)))) (inv!3874 (transformation!551 (rule!1066 (h!8439 tokens!465)))) e!110720))))

(declare-fun b!181676 () Bool)

(declare-fun res!82375 () Bool)

(declare-fun e!110732 () Bool)

(assert (=> b!181676 (=> (not res!82375) (not e!110732))))

(declare-fun lt!59925 () List!3050)

(assert (=> b!181676 (= res!82375 (= (list!1117 (seqFromList!479 lt!59916)) lt!59925))))

(declare-fun b!181677 () Bool)

(assert (=> b!181677 (= e!110732 (not e!110728))))

(declare-fun res!82383 () Bool)

(assert (=> b!181677 (=> res!82383 e!110728)))

(declare-fun printWithSeparatorTokenWhenNeededRec!120 (LexerInterface!437 List!3051 BalanceConc!1858 Token!846 Int) BalanceConc!1856)

(assert (=> b!181677 (= res!82383 (not (= lt!59924 (list!1117 (printWithSeparatorTokenWhenNeededRec!120 thiss!17480 rules!1920 (seqFromList!480 (t!28334 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!59923 () List!3050)

(assert (=> b!181677 (= lt!59923 lt!59936)))

(declare-fun lt!59917 () List!3050)

(assert (=> b!181677 (= lt!59936 (++!716 lt!59918 lt!59917))))

(declare-fun lt!59938 () List!3050)

(assert (=> b!181677 (= lt!59923 (++!716 (++!716 lt!59918 lt!59938) lt!59924))))

(declare-fun lt!59935 () Unit!2792)

(declare-fun lemmaConcatAssociativity!240 (List!3050 List!3050 List!3050) Unit!2792)

(assert (=> b!181677 (= lt!59935 (lemmaConcatAssociativity!240 lt!59918 lt!59938 lt!59924))))

(declare-fun charsOf!206 (Token!846) BalanceConc!1856)

(assert (=> b!181677 (= lt!59918 (list!1117 (charsOf!206 (h!8439 tokens!465))))))

(assert (=> b!181677 (= lt!59917 (++!716 lt!59938 lt!59924))))

(declare-fun printWithSeparatorTokenWhenNeededList!130 (LexerInterface!437 List!3051 List!3052 Token!846) List!3050)

(assert (=> b!181677 (= lt!59924 (printWithSeparatorTokenWhenNeededList!130 thiss!17480 rules!1920 (t!28334 tokens!465) separatorToken!170))))

(assert (=> b!181677 (= lt!59938 (list!1117 (charsOf!206 separatorToken!170)))))

(declare-fun b!181678 () Bool)

(assert (=> b!181678 (= e!110733 e!110732)))

(declare-fun res!82382 () Bool)

(assert (=> b!181678 (=> (not res!82382) (not e!110732))))

(assert (=> b!181678 (= res!82382 (= lt!59916 lt!59925))))

(assert (=> b!181678 (= lt!59925 (list!1117 (printWithSeparatorTokenWhenNeededRec!120 thiss!17480 rules!1920 lt!59920 separatorToken!170 0)))))

(assert (=> b!181678 (= lt!59916 (printWithSeparatorTokenWhenNeededList!130 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!181679 () Bool)

(assert (=> b!181679 (= e!110730 true)))

(declare-fun lt!59931 () tuple2!3032)

(assert (=> b!181679 (= lt!59917 (_2!1732 lt!59931))))

(declare-fun lt!59937 () Unit!2792)

(declare-fun lemmaSamePrefixThenSameSuffix!72 (List!3050 List!3050 List!3050 List!3050 List!3050) Unit!2792)

(assert (=> b!181679 (= lt!59937 (lemmaSamePrefixThenSameSuffix!72 lt!59918 lt!59917 lt!59918 (_2!1732 lt!59931) lt!59916))))

(assert (=> b!181679 (= lt!59931 (get!857 (maxPrefix!167 thiss!17480 rules!1920 lt!59916)))))

(declare-fun isPrefix!247 (List!3050 List!3050) Bool)

(assert (=> b!181679 (isPrefix!247 lt!59918 lt!59936)))

(declare-fun lt!59927 () Unit!2792)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!142 (List!3050 List!3050) Unit!2792)

(assert (=> b!181679 (= lt!59927 (lemmaConcatTwoListThenFirstIsPrefix!142 lt!59918 lt!59917))))

(assert (=> b!181679 e!110725))

(declare-fun res!82377 () Bool)

(assert (=> b!181679 (=> res!82377 e!110725)))

(declare-fun isEmpty!1393 (List!3052) Bool)

(assert (=> b!181679 (= res!82377 (isEmpty!1393 tokens!465))))

(declare-fun lt!59932 () Unit!2792)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!12 (LexerInterface!437 List!3051 List!3052 Token!846) Unit!2792)

(assert (=> b!181679 (= lt!59932 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!12 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!181680 () Bool)

(declare-fun res!82386 () Bool)

(assert (=> b!181680 (=> res!82386 e!110723)))

(declare-fun isEmpty!1394 (BalanceConc!1858) Bool)

(declare-datatypes ((tuple2!3034 0))(
  ( (tuple2!3035 (_1!1733 BalanceConc!1858) (_2!1733 BalanceConc!1856)) )
))
(declare-fun lex!237 (LexerInterface!437 List!3051 BalanceConc!1856) tuple2!3034)

(assert (=> b!181680 (= res!82386 (isEmpty!1394 (_1!1733 (lex!237 thiss!17480 rules!1920 (seqFromList!479 lt!59918)))))))

(declare-fun b!181681 () Bool)

(declare-fun head!630 (List!3052) Token!846)

(assert (=> b!181681 (= e!110717 (= (_1!1732 (get!857 lt!59933)) (head!630 tokens!465)))))

(assert (= (and start!19662 res!82374) b!181667))

(assert (= (and b!181667 res!82396) b!181673))

(assert (= (and b!181673 res!82381) b!181660))

(assert (= (and b!181660 res!82392) b!181670))

(assert (= (and b!181670 res!82394) b!181653))

(assert (= (and b!181653 res!82378) b!181668))

(assert (= (and b!181668 res!82384) b!181674))

(assert (= (and b!181674 res!82390) b!181652))

(assert (= (and b!181652 res!82395) b!181678))

(assert (= (and b!181678 res!82382) b!181676))

(assert (= (and b!181676 res!82375) b!181677))

(assert (= (and b!181677 (not res!82383)) b!181662))

(assert (= (and b!181662 res!82380) b!181655))

(assert (= (and b!181662 (not res!82389)) b!181658))

(assert (= (and b!181658 (not res!82393)) b!181650))

(assert (= (and b!181650 (not res!82385)) b!181680))

(assert (= (and b!181680 (not res!82386)) b!181654))

(assert (= (and b!181654 (not res!82388)) b!181672))

(assert (= (and b!181672 res!82379) b!181661))

(assert (= (and b!181661 res!82387) b!181656))

(assert (= (and b!181672 (not res!82391)) b!181679))

(assert (= (and b!181679 (not res!82377)) b!181669))

(assert (= (and b!181669 res!82376) b!181681))

(assert (= b!181657 b!181651))

(assert (= b!181659 b!181657))

(assert (= (and start!19662 ((_ is Cons!3041) rules!1920)) b!181659))

(assert (= b!181671 b!181664))

(assert (= b!181663 b!181671))

(assert (= start!19662 b!181663))

(assert (= b!181675 b!181666))

(assert (= b!181665 b!181675))

(assert (= b!181649 b!181665))

(assert (= (and start!19662 ((_ is Cons!3042) tokens!465)) b!181649))

(declare-fun m!184359 () Bool)

(assert (=> b!181674 m!184359))

(declare-fun m!184361 () Bool)

(assert (=> b!181679 m!184361))

(declare-fun m!184363 () Bool)

(assert (=> b!181679 m!184363))

(declare-fun m!184365 () Bool)

(assert (=> b!181679 m!184365))

(declare-fun m!184367 () Bool)

(assert (=> b!181679 m!184367))

(assert (=> b!181679 m!184363))

(declare-fun m!184369 () Bool)

(assert (=> b!181679 m!184369))

(declare-fun m!184371 () Bool)

(assert (=> b!181679 m!184371))

(declare-fun m!184373 () Bool)

(assert (=> b!181679 m!184373))

(declare-fun m!184375 () Bool)

(assert (=> b!181660 m!184375))

(declare-fun m!184377 () Bool)

(assert (=> b!181660 m!184377))

(declare-fun m!184379 () Bool)

(assert (=> b!181665 m!184379))

(declare-fun m!184381 () Bool)

(assert (=> b!181675 m!184381))

(declare-fun m!184383 () Bool)

(assert (=> b!181675 m!184383))

(declare-fun m!184385 () Bool)

(assert (=> b!181676 m!184385))

(assert (=> b!181676 m!184385))

(declare-fun m!184387 () Bool)

(assert (=> b!181676 m!184387))

(declare-fun m!184389 () Bool)

(assert (=> b!181681 m!184389))

(declare-fun m!184391 () Bool)

(assert (=> b!181681 m!184391))

(declare-fun m!184393 () Bool)

(assert (=> b!181650 m!184393))

(declare-fun m!184395 () Bool)

(assert (=> b!181668 m!184395))

(declare-fun m!184397 () Bool)

(assert (=> b!181673 m!184397))

(declare-fun m!184399 () Bool)

(assert (=> b!181661 m!184399))

(declare-fun m!184401 () Bool)

(assert (=> start!19662 m!184401))

(declare-fun m!184403 () Bool)

(assert (=> b!181670 m!184403))

(declare-fun m!184405 () Bool)

(assert (=> b!181656 m!184405))

(declare-fun m!184407 () Bool)

(assert (=> b!181654 m!184407))

(assert (=> b!181654 m!184407))

(declare-fun m!184409 () Bool)

(assert (=> b!181654 m!184409))

(assert (=> b!181654 m!184409))

(declare-fun m!184411 () Bool)

(assert (=> b!181654 m!184411))

(declare-fun m!184413 () Bool)

(assert (=> b!181654 m!184413))

(declare-fun m!184415 () Bool)

(assert (=> b!181657 m!184415))

(declare-fun m!184417 () Bool)

(assert (=> b!181657 m!184417))

(declare-fun m!184419 () Bool)

(assert (=> b!181655 m!184419))

(declare-fun m!184421 () Bool)

(assert (=> b!181671 m!184421))

(declare-fun m!184423 () Bool)

(assert (=> b!181671 m!184423))

(declare-fun m!184425 () Bool)

(assert (=> b!181669 m!184425))

(assert (=> b!181669 m!184363))

(declare-fun m!184427 () Bool)

(assert (=> b!181677 m!184427))

(declare-fun m!184429 () Bool)

(assert (=> b!181677 m!184429))

(declare-fun m!184431 () Bool)

(assert (=> b!181677 m!184431))

(declare-fun m!184433 () Bool)

(assert (=> b!181677 m!184433))

(declare-fun m!184435 () Bool)

(assert (=> b!181677 m!184435))

(declare-fun m!184437 () Bool)

(assert (=> b!181677 m!184437))

(assert (=> b!181677 m!184435))

(declare-fun m!184439 () Bool)

(assert (=> b!181677 m!184439))

(declare-fun m!184441 () Bool)

(assert (=> b!181677 m!184441))

(declare-fun m!184443 () Bool)

(assert (=> b!181677 m!184443))

(assert (=> b!181677 m!184439))

(declare-fun m!184445 () Bool)

(assert (=> b!181677 m!184445))

(declare-fun m!184447 () Bool)

(assert (=> b!181677 m!184447))

(declare-fun m!184449 () Bool)

(assert (=> b!181677 m!184449))

(assert (=> b!181677 m!184443))

(declare-fun m!184451 () Bool)

(assert (=> b!181677 m!184451))

(assert (=> b!181677 m!184429))

(assert (=> b!181677 m!184447))

(declare-fun m!184453 () Bool)

(assert (=> b!181649 m!184453))

(declare-fun m!184455 () Bool)

(assert (=> b!181680 m!184455))

(assert (=> b!181680 m!184455))

(declare-fun m!184457 () Bool)

(assert (=> b!181680 m!184457))

(declare-fun m!184459 () Bool)

(assert (=> b!181680 m!184459))

(declare-fun m!184461 () Bool)

(assert (=> b!181663 m!184461))

(declare-fun m!184463 () Bool)

(assert (=> b!181672 m!184463))

(declare-fun m!184465 () Bool)

(assert (=> b!181672 m!184465))

(declare-fun m!184467 () Bool)

(assert (=> b!181672 m!184467))

(declare-fun m!184469 () Bool)

(assert (=> b!181678 m!184469))

(assert (=> b!181678 m!184469))

(declare-fun m!184471 () Bool)

(assert (=> b!181678 m!184471))

(declare-fun m!184473 () Bool)

(assert (=> b!181678 m!184473))

(declare-fun m!184475 () Bool)

(assert (=> b!181667 m!184475))

(declare-fun m!184477 () Bool)

(assert (=> b!181658 m!184477))

(declare-fun m!184479 () Bool)

(assert (=> b!181658 m!184479))

(declare-fun m!184481 () Bool)

(assert (=> b!181658 m!184481))

(declare-fun m!184483 () Bool)

(assert (=> b!181658 m!184483))

(declare-fun m!184485 () Bool)

(assert (=> b!181658 m!184485))

(check-sat (not b!181679) (not b!181654) (not b!181668) (not b!181663) (not b!181670) (not b!181669) (not b!181655) (not b!181681) b_and!12427 b_and!12425 (not b!181659) (not b!181649) b_and!12431 (not b!181672) (not b!181675) b_and!12423 (not start!19662) (not b!181680) (not b_next!7063) (not b!181657) (not b!181661) (not b!181660) b_and!12421 (not b_next!7061) (not b_next!7057) (not b_next!7059) (not b!181677) (not b!181674) (not b!181690) (not b!181673) (not b!181665) (not b!181667) (not b_next!7065) (not b_next!7067) (not b!181650) (not b!181656) (not b!181658) (not b!181671) b_and!12429 (not b!181678) (not b!181676))
(check-sat b_and!12423 (not b_next!7063) b_and!12421 (not b_next!7065) b_and!12427 b_and!12425 (not b_next!7067) b_and!12431 b_and!12429 (not b_next!7061) (not b_next!7057) (not b_next!7059))
