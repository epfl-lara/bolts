; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15990 () Bool)

(assert start!15990)

(declare-fun b!149846 () Bool)

(declare-fun b_free!5377 () Bool)

(declare-fun b_next!5377 () Bool)

(assert (=> b!149846 (= b_free!5377 (not b_next!5377))))

(declare-fun tp!78244 () Bool)

(declare-fun b_and!8489 () Bool)

(assert (=> b!149846 (= tp!78244 b_and!8489)))

(declare-fun b_free!5379 () Bool)

(declare-fun b_next!5379 () Bool)

(assert (=> b!149846 (= b_free!5379 (not b_next!5379))))

(declare-fun tp!78239 () Bool)

(declare-fun b_and!8491 () Bool)

(assert (=> b!149846 (= tp!78239 b_and!8491)))

(declare-fun b!149835 () Bool)

(declare-fun b_free!5381 () Bool)

(declare-fun b_next!5381 () Bool)

(assert (=> b!149835 (= b_free!5381 (not b_next!5381))))

(declare-fun tp!78237 () Bool)

(declare-fun b_and!8493 () Bool)

(assert (=> b!149835 (= tp!78237 b_and!8493)))

(declare-fun b_free!5383 () Bool)

(declare-fun b_next!5383 () Bool)

(assert (=> b!149835 (= b_free!5383 (not b_next!5383))))

(declare-fun tp!78236 () Bool)

(declare-fun b_and!8495 () Bool)

(assert (=> b!149835 (= tp!78236 b_and!8495)))

(declare-fun b!149826 () Bool)

(declare-fun b_free!5385 () Bool)

(declare-fun b_next!5385 () Bool)

(assert (=> b!149826 (= b_free!5385 (not b_next!5385))))

(declare-fun tp!78243 () Bool)

(declare-fun b_and!8497 () Bool)

(assert (=> b!149826 (= tp!78243 b_and!8497)))

(declare-fun b_free!5387 () Bool)

(declare-fun b_next!5387 () Bool)

(assert (=> b!149826 (= b_free!5387 (not b_next!5387))))

(declare-fun tp!78240 () Bool)

(declare-fun b_and!8499 () Bool)

(assert (=> b!149826 (= tp!78240 b_and!8499)))

(declare-fun e!89293 () Bool)

(assert (=> b!149826 (= e!89293 (and tp!78243 tp!78240))))

(declare-fun b!149827 () Bool)

(declare-fun res!68742 () Bool)

(declare-fun e!89298 () Bool)

(assert (=> b!149827 (=> (not res!68742) (not e!89298))))

(declare-datatypes ((List!2597 0))(
  ( (Nil!2587) (Cons!2587 (h!7984 (_ BitVec 16)) (t!24667 List!2597)) )
))
(declare-datatypes ((TokenValue!469 0))(
  ( (FloatLiteralValue!938 (text!3728 List!2597)) (TokenValueExt!468 (__x!2425 Int)) (Broken!2345 (value!17029 List!2597)) (Object!478) (End!469) (Def!469) (Underscore!469) (Match!469) (Else!469) (Error!469) (Case!469) (If!469) (Extends!469) (Abstract!469) (Class!469) (Val!469) (DelimiterValue!938 (del!529 List!2597)) (KeywordValue!475 (value!17030 List!2597)) (CommentValue!938 (value!17031 List!2597)) (WhitespaceValue!938 (value!17032 List!2597)) (IndentationValue!469 (value!17033 List!2597)) (String!3424) (Int32!469) (Broken!2346 (value!17034 List!2597)) (Boolean!470) (Unit!1965) (OperatorValue!472 (op!529 List!2597)) (IdentifierValue!938 (value!17035 List!2597)) (IdentifierValue!939 (value!17036 List!2597)) (WhitespaceValue!939 (value!17037 List!2597)) (True!938) (False!938) (Broken!2347 (value!17038 List!2597)) (Broken!2348 (value!17039 List!2597)) (True!939) (RightBrace!469) (RightBracket!469) (Colon!469) (Null!469) (Comma!469) (LeftBracket!469) (False!939) (LeftBrace!469) (ImaginaryLiteralValue!469 (text!3729 List!2597)) (StringLiteralValue!1407 (value!17040 List!2597)) (EOFValue!469 (value!17041 List!2597)) (IdentValue!469 (value!17042 List!2597)) (DelimiterValue!939 (value!17043 List!2597)) (DedentValue!469 (value!17044 List!2597)) (NewLineValue!469 (value!17045 List!2597)) (IntegerValue!1407 (value!17046 (_ BitVec 32)) (text!3730 List!2597)) (IntegerValue!1408 (value!17047 Int) (text!3731 List!2597)) (Times!469) (Or!469) (Equal!469) (Minus!469) (Broken!2349 (value!17048 List!2597)) (And!469) (Div!469) (LessEqual!469) (Mod!469) (Concat!1140) (Not!469) (Plus!469) (SpaceValue!469 (value!17049 List!2597)) (IntegerValue!1409 (value!17050 Int) (text!3732 List!2597)) (StringLiteralValue!1408 (text!3733 List!2597)) (FloatLiteralValue!939 (text!3734 List!2597)) (BytesLiteralValue!469 (value!17051 List!2597)) (CommentValue!939 (value!17052 List!2597)) (StringLiteralValue!1409 (value!17053 List!2597)) (ErrorTokenValue!469 (msg!530 List!2597)) )
))
(declare-datatypes ((C!2264 0))(
  ( (C!2265 (val!1018 Int)) )
))
(declare-datatypes ((List!2598 0))(
  ( (Nil!2588) (Cons!2588 (h!7985 C!2264) (t!24668 List!2598)) )
))
(declare-datatypes ((IArray!1433 0))(
  ( (IArray!1434 (innerList!774 List!2598)) )
))
(declare-datatypes ((Conc!716 0))(
  ( (Node!716 (left!1954 Conc!716) (right!2284 Conc!716) (csize!1662 Int) (cheight!927 Int)) (Leaf!1279 (xs!3311 IArray!1433) (csize!1663 Int)) (Empty!716) )
))
(declare-datatypes ((BalanceConc!1440 0))(
  ( (BalanceConc!1441 (c!30397 Conc!716)) )
))
(declare-datatypes ((TokenValueInjection!710 0))(
  ( (TokenValueInjection!711 (toValue!1082 Int) (toChars!941 Int)) )
))
(declare-datatypes ((Regex!671 0))(
  ( (ElementMatch!671 (c!30398 C!2264)) (Concat!1141 (regOne!1854 Regex!671) (regTwo!1854 Regex!671)) (EmptyExpr!671) (Star!671 (reg!1000 Regex!671)) (EmptyLang!671) (Union!671 (regOne!1855 Regex!671) (regTwo!1855 Regex!671)) )
))
(declare-datatypes ((String!3425 0))(
  ( (String!3426 (value!17054 String)) )
))
(declare-datatypes ((Rule!694 0))(
  ( (Rule!695 (regex!447 Regex!671) (tag!625 String!3425) (isSeparator!447 Bool) (transformation!447 TokenValueInjection!710)) )
))
(declare-datatypes ((List!2599 0))(
  ( (Nil!2589) (Cons!2589 (h!7986 Rule!694) (t!24669 List!2599)) )
))
(declare-fun rules!1920 () List!2599)

(declare-fun isEmpty!1020 (List!2599) Bool)

(assert (=> b!149827 (= res!68742 (not (isEmpty!1020 rules!1920)))))

(declare-fun b!149828 () Bool)

(declare-fun res!68734 () Bool)

(declare-fun e!89302 () Bool)

(assert (=> b!149828 (=> (not res!68734) (not e!89302))))

(declare-datatypes ((Token!638 0))(
  ( (Token!639 (value!17055 TokenValue!469) (rule!954 Rule!694) (size!2225 Int) (originalCharacters!490 List!2598)) )
))
(declare-fun separatorToken!170 () Token!638)

(declare-datatypes ((LexerInterface!333 0))(
  ( (LexerInterfaceExt!330 (__x!2426 Int)) (Lexer!331) )
))
(declare-fun thiss!17480 () LexerInterface!333)

(declare-fun rulesProduceIndividualToken!82 (LexerInterface!333 List!2599 Token!638) Bool)

(assert (=> b!149828 (= res!68734 (rulesProduceIndividualToken!82 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun res!68740 () Bool)

(assert (=> start!15990 (=> (not res!68740) (not e!89298))))

(get-info :version)

(assert (=> start!15990 (= res!68740 ((_ is Lexer!331) thiss!17480))))

(assert (=> start!15990 e!89298))

(assert (=> start!15990 true))

(declare-fun e!89288 () Bool)

(assert (=> start!15990 e!89288))

(declare-fun e!89292 () Bool)

(declare-fun inv!3383 (Token!638) Bool)

(assert (=> start!15990 (and (inv!3383 separatorToken!170) e!89292)))

(declare-fun e!89286 () Bool)

(assert (=> start!15990 e!89286))

(declare-fun b!149829 () Bool)

(declare-fun e!89291 () Bool)

(assert (=> b!149829 (= e!89291 false)))

(declare-fun lt!43663 () Bool)

(declare-datatypes ((List!2600 0))(
  ( (Nil!2590) (Cons!2590 (h!7987 Token!638) (t!24670 List!2600)) )
))
(declare-fun tokens!465 () List!2600)

(declare-fun rulesProduceEachTokenIndividuallyList!75 (LexerInterface!333 List!2599 List!2600) Bool)

(assert (=> b!149829 (= lt!43663 (rulesProduceEachTokenIndividuallyList!75 thiss!17480 rules!1920 (t!24670 tokens!465)))))

(declare-fun lt!43661 () List!2598)

(declare-fun list!905 (BalanceConc!1440) List!2598)

(declare-fun charsOf!102 (Token!638) BalanceConc!1440)

(assert (=> b!149829 (= lt!43661 (list!905 (charsOf!102 separatorToken!170)))))

(declare-fun b!149830 () Bool)

(declare-fun res!68739 () Bool)

(assert (=> b!149830 (=> (not res!68739) (not e!89302))))

(declare-fun lambda!3800 () Int)

(declare-fun forall!433 (List!2600 Int) Bool)

(assert (=> b!149830 (= res!68739 (forall!433 tokens!465 lambda!3800))))

(declare-fun b!149831 () Bool)

(declare-fun tp!78245 () Bool)

(declare-fun e!89295 () Bool)

(declare-fun e!89290 () Bool)

(declare-fun inv!21 (TokenValue!469) Bool)

(assert (=> b!149831 (= e!89290 (and (inv!21 (value!17055 (h!7987 tokens!465))) e!89295 tp!78245))))

(declare-fun b!149832 () Bool)

(declare-fun tp!78242 () Bool)

(assert (=> b!149832 (= e!89286 (and (inv!3383 (h!7987 tokens!465)) e!89290 tp!78242))))

(declare-fun b!149833 () Bool)

(assert (=> b!149833 (= e!89298 e!89302)))

(declare-fun res!68743 () Bool)

(assert (=> b!149833 (=> (not res!68743) (not e!89302))))

(declare-datatypes ((IArray!1435 0))(
  ( (IArray!1436 (innerList!775 List!2600)) )
))
(declare-datatypes ((Conc!717 0))(
  ( (Node!717 (left!1955 Conc!717) (right!2285 Conc!717) (csize!1664 Int) (cheight!928 Int)) (Leaf!1280 (xs!3312 IArray!1435) (csize!1665 Int)) (Empty!717) )
))
(declare-datatypes ((BalanceConc!1442 0))(
  ( (BalanceConc!1443 (c!30399 Conc!717)) )
))
(declare-fun lt!43662 () BalanceConc!1442)

(declare-fun rulesProduceEachTokenIndividually!125 (LexerInterface!333 List!2599 BalanceConc!1442) Bool)

(assert (=> b!149833 (= res!68743 (rulesProduceEachTokenIndividually!125 thiss!17480 rules!1920 lt!43662))))

(declare-fun seqFromList!271 (List!2600) BalanceConc!1442)

(assert (=> b!149833 (= lt!43662 (seqFromList!271 tokens!465))))

(declare-fun b!149834 () Bool)

(declare-fun e!89294 () Bool)

(declare-fun tp!78241 () Bool)

(declare-fun inv!3380 (String!3425) Bool)

(declare-fun inv!3384 (TokenValueInjection!710) Bool)

(assert (=> b!149834 (= e!89294 (and tp!78241 (inv!3380 (tag!625 (h!7986 rules!1920))) (inv!3384 (transformation!447 (h!7986 rules!1920))) e!89293))))

(declare-fun e!89299 () Bool)

(assert (=> b!149835 (= e!89299 (and tp!78237 tp!78236))))

(declare-fun tp!78238 () Bool)

(declare-fun b!149836 () Bool)

(declare-fun e!89301 () Bool)

(assert (=> b!149836 (= e!89295 (and tp!78238 (inv!3380 (tag!625 (rule!954 (h!7987 tokens!465)))) (inv!3384 (transformation!447 (rule!954 (h!7987 tokens!465)))) e!89301))))

(declare-fun tp!78247 () Bool)

(declare-fun e!89303 () Bool)

(declare-fun b!149837 () Bool)

(assert (=> b!149837 (= e!89303 (and tp!78247 (inv!3380 (tag!625 (rule!954 separatorToken!170))) (inv!3384 (transformation!447 (rule!954 separatorToken!170))) e!89299))))

(declare-fun b!149838 () Bool)

(declare-fun tp!78246 () Bool)

(assert (=> b!149838 (= e!89288 (and e!89294 tp!78246))))

(declare-fun b!149839 () Bool)

(declare-fun res!68738 () Bool)

(assert (=> b!149839 (=> (not res!68738) (not e!89302))))

(assert (=> b!149839 (= res!68738 ((_ is Cons!2590) tokens!465))))

(declare-fun b!149840 () Bool)

(declare-fun res!68733 () Bool)

(assert (=> b!149840 (=> (not res!68733) (not e!89302))))

(assert (=> b!149840 (= res!68733 (isSeparator!447 (rule!954 separatorToken!170)))))

(declare-fun b!149841 () Bool)

(declare-fun tp!78235 () Bool)

(assert (=> b!149841 (= e!89292 (and (inv!21 (value!17055 separatorToken!170)) e!89303 tp!78235))))

(declare-fun b!149842 () Bool)

(declare-fun res!68735 () Bool)

(assert (=> b!149842 (=> (not res!68735) (not e!89298))))

(declare-fun rulesInvariant!299 (LexerInterface!333 List!2599) Bool)

(assert (=> b!149842 (= res!68735 (rulesInvariant!299 thiss!17480 rules!1920))))

(declare-fun b!149843 () Bool)

(assert (=> b!149843 (= e!89302 e!89291)))

(declare-fun res!68736 () Bool)

(assert (=> b!149843 (=> (not res!68736) (not e!89291))))

(declare-fun lt!43664 () List!2598)

(declare-fun lt!43660 () List!2598)

(assert (=> b!149843 (= res!68736 (= lt!43664 lt!43660))))

(declare-fun printWithSeparatorTokenWhenNeededRec!16 (LexerInterface!333 List!2599 BalanceConc!1442 Token!638 Int) BalanceConc!1440)

(assert (=> b!149843 (= lt!43660 (list!905 (printWithSeparatorTokenWhenNeededRec!16 thiss!17480 rules!1920 lt!43662 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!26 (LexerInterface!333 List!2599 List!2600 Token!638) List!2598)

(assert (=> b!149843 (= lt!43664 (printWithSeparatorTokenWhenNeededList!26 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!149844 () Bool)

(declare-fun res!68737 () Bool)

(assert (=> b!149844 (=> (not res!68737) (not e!89302))))

(declare-fun sepAndNonSepRulesDisjointChars!36 (List!2599 List!2599) Bool)

(assert (=> b!149844 (= res!68737 (sepAndNonSepRulesDisjointChars!36 rules!1920 rules!1920))))

(declare-fun b!149845 () Bool)

(declare-fun res!68741 () Bool)

(assert (=> b!149845 (=> (not res!68741) (not e!89291))))

(declare-fun seqFromList!272 (List!2598) BalanceConc!1440)

(assert (=> b!149845 (= res!68741 (= (list!905 (seqFromList!272 lt!43664)) lt!43660))))

(assert (=> b!149846 (= e!89301 (and tp!78244 tp!78239))))

(assert (= (and start!15990 res!68740) b!149827))

(assert (= (and b!149827 res!68742) b!149842))

(assert (= (and b!149842 res!68735) b!149833))

(assert (= (and b!149833 res!68743) b!149828))

(assert (= (and b!149828 res!68734) b!149840))

(assert (= (and b!149840 res!68733) b!149830))

(assert (= (and b!149830 res!68739) b!149844))

(assert (= (and b!149844 res!68737) b!149839))

(assert (= (and b!149839 res!68738) b!149843))

(assert (= (and b!149843 res!68736) b!149845))

(assert (= (and b!149845 res!68741) b!149829))

(assert (= b!149834 b!149826))

(assert (= b!149838 b!149834))

(assert (= (and start!15990 ((_ is Cons!2589) rules!1920)) b!149838))

(assert (= b!149837 b!149835))

(assert (= b!149841 b!149837))

(assert (= start!15990 b!149841))

(assert (= b!149836 b!149846))

(assert (= b!149831 b!149836))

(assert (= b!149832 b!149831))

(assert (= (and start!15990 ((_ is Cons!2590) tokens!465)) b!149832))

(declare-fun m!133773 () Bool)

(assert (=> b!149828 m!133773))

(declare-fun m!133775 () Bool)

(assert (=> b!149830 m!133775))

(declare-fun m!133777 () Bool)

(assert (=> b!149836 m!133777))

(declare-fun m!133779 () Bool)

(assert (=> b!149836 m!133779))

(declare-fun m!133781 () Bool)

(assert (=> b!149827 m!133781))

(declare-fun m!133783 () Bool)

(assert (=> b!149843 m!133783))

(assert (=> b!149843 m!133783))

(declare-fun m!133785 () Bool)

(assert (=> b!149843 m!133785))

(declare-fun m!133787 () Bool)

(assert (=> b!149843 m!133787))

(declare-fun m!133789 () Bool)

(assert (=> b!149832 m!133789))

(declare-fun m!133791 () Bool)

(assert (=> b!149831 m!133791))

(declare-fun m!133793 () Bool)

(assert (=> b!149845 m!133793))

(assert (=> b!149845 m!133793))

(declare-fun m!133795 () Bool)

(assert (=> b!149845 m!133795))

(declare-fun m!133797 () Bool)

(assert (=> b!149829 m!133797))

(declare-fun m!133799 () Bool)

(assert (=> b!149829 m!133799))

(assert (=> b!149829 m!133799))

(declare-fun m!133801 () Bool)

(assert (=> b!149829 m!133801))

(declare-fun m!133803 () Bool)

(assert (=> b!149842 m!133803))

(declare-fun m!133805 () Bool)

(assert (=> b!149834 m!133805))

(declare-fun m!133807 () Bool)

(assert (=> b!149834 m!133807))

(declare-fun m!133809 () Bool)

(assert (=> b!149844 m!133809))

(declare-fun m!133811 () Bool)

(assert (=> b!149837 m!133811))

(declare-fun m!133813 () Bool)

(assert (=> b!149837 m!133813))

(declare-fun m!133815 () Bool)

(assert (=> b!149833 m!133815))

(declare-fun m!133817 () Bool)

(assert (=> b!149833 m!133817))

(declare-fun m!133819 () Bool)

(assert (=> b!149841 m!133819))

(declare-fun m!133821 () Bool)

(assert (=> start!15990 m!133821))

(check-sat (not b_next!5379) (not b!149834) (not b!149841) b_and!8499 (not b_next!5377) (not b!149845) (not b!149833) (not b!149843) b_and!8493 (not b!149842) (not b!149831) (not b_next!5383) (not b!149827) (not b!149844) (not start!15990) (not b!149832) (not b!149838) (not b!149837) (not b_next!5387) (not b!149829) (not b!149836) b_and!8497 b_and!8495 (not b_next!5385) (not b!149828) b_and!8491 b_and!8489 (not b!149830) (not b_next!5381))
(check-sat (not b_next!5379) b_and!8499 (not b_next!5377) (not b_next!5387) b_and!8493 (not b_next!5385) (not b_next!5383) (not b_next!5381) b_and!8497 b_and!8495 b_and!8491 b_and!8489)
