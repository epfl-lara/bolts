; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15458 () Bool)

(assert start!15458)

(declare-fun b!145946 () Bool)

(declare-fun b_free!5129 () Bool)

(declare-fun b_next!5129 () Bool)

(assert (=> b!145946 (= b_free!5129 (not b_next!5129))))

(declare-fun tp!76885 () Bool)

(declare-fun b_and!7937 () Bool)

(assert (=> b!145946 (= tp!76885 b_and!7937)))

(declare-fun b_free!5131 () Bool)

(declare-fun b_next!5131 () Bool)

(assert (=> b!145946 (= b_free!5131 (not b_next!5131))))

(declare-fun tp!76886 () Bool)

(declare-fun b_and!7939 () Bool)

(assert (=> b!145946 (= tp!76886 b_and!7939)))

(declare-fun b!145964 () Bool)

(declare-fun b_free!5133 () Bool)

(declare-fun b_next!5133 () Bool)

(assert (=> b!145964 (= b_free!5133 (not b_next!5133))))

(declare-fun tp!76883 () Bool)

(declare-fun b_and!7941 () Bool)

(assert (=> b!145964 (= tp!76883 b_and!7941)))

(declare-fun b_free!5135 () Bool)

(declare-fun b_next!5135 () Bool)

(assert (=> b!145964 (= b_free!5135 (not b_next!5135))))

(declare-fun tp!76877 () Bool)

(declare-fun b_and!7943 () Bool)

(assert (=> b!145964 (= tp!76877 b_and!7943)))

(declare-fun b!145951 () Bool)

(declare-fun b_free!5137 () Bool)

(declare-fun b_next!5137 () Bool)

(assert (=> b!145951 (= b_free!5137 (not b_next!5137))))

(declare-fun tp!76878 () Bool)

(declare-fun b_and!7945 () Bool)

(assert (=> b!145951 (= tp!76878 b_and!7945)))

(declare-fun b_free!5139 () Bool)

(declare-fun b_next!5139 () Bool)

(assert (=> b!145951 (= b_free!5139 (not b_next!5139))))

(declare-fun tp!76881 () Bool)

(declare-fun b_and!7947 () Bool)

(assert (=> b!145951 (= tp!76881 b_and!7947)))

(declare-fun e!86664 () Bool)

(assert (=> b!145946 (= e!86664 (and tp!76885 tp!76886))))

(declare-fun b!145947 () Bool)

(declare-fun res!67259 () Bool)

(declare-fun e!86670 () Bool)

(assert (=> b!145947 (=> (not res!67259) (not e!86670))))

(declare-datatypes ((List!2535 0))(
  ( (Nil!2525) (Cons!2525 (h!7922 (_ BitVec 16)) (t!24143 List!2535)) )
))
(declare-datatypes ((TokenValue!455 0))(
  ( (FloatLiteralValue!910 (text!3630 List!2535)) (TokenValueExt!454 (__x!2397 Int)) (Broken!2275 (value!16630 List!2535)) (Object!464) (End!455) (Def!455) (Underscore!455) (Match!455) (Else!455) (Error!455) (Case!455) (If!455) (Extends!455) (Abstract!455) (Class!455) (Val!455) (DelimiterValue!910 (del!515 List!2535)) (KeywordValue!461 (value!16631 List!2535)) (CommentValue!910 (value!16632 List!2535)) (WhitespaceValue!910 (value!16633 List!2535)) (IndentationValue!455 (value!16634 List!2535)) (String!3354) (Int32!455) (Broken!2276 (value!16635 List!2535)) (Boolean!456) (Unit!1875) (OperatorValue!458 (op!515 List!2535)) (IdentifierValue!910 (value!16636 List!2535)) (IdentifierValue!911 (value!16637 List!2535)) (WhitespaceValue!911 (value!16638 List!2535)) (True!910) (False!910) (Broken!2277 (value!16639 List!2535)) (Broken!2278 (value!16640 List!2535)) (True!911) (RightBrace!455) (RightBracket!455) (Colon!455) (Null!455) (Comma!455) (LeftBracket!455) (False!911) (LeftBrace!455) (ImaginaryLiteralValue!455 (text!3631 List!2535)) (StringLiteralValue!1365 (value!16641 List!2535)) (EOFValue!455 (value!16642 List!2535)) (IdentValue!455 (value!16643 List!2535)) (DelimiterValue!911 (value!16644 List!2535)) (DedentValue!455 (value!16645 List!2535)) (NewLineValue!455 (value!16646 List!2535)) (IntegerValue!1365 (value!16647 (_ BitVec 32)) (text!3632 List!2535)) (IntegerValue!1366 (value!16648 Int) (text!3633 List!2535)) (Times!455) (Or!455) (Equal!455) (Minus!455) (Broken!2279 (value!16649 List!2535)) (And!455) (Div!455) (LessEqual!455) (Mod!455) (Concat!1112) (Not!455) (Plus!455) (SpaceValue!455 (value!16650 List!2535)) (IntegerValue!1367 (value!16651 Int) (text!3634 List!2535)) (StringLiteralValue!1366 (text!3635 List!2535)) (FloatLiteralValue!911 (text!3636 List!2535)) (BytesLiteralValue!455 (value!16652 List!2535)) (CommentValue!911 (value!16653 List!2535)) (StringLiteralValue!1367 (value!16654 List!2535)) (ErrorTokenValue!455 (msg!516 List!2535)) )
))
(declare-datatypes ((C!2236 0))(
  ( (C!2237 (val!1004 Int)) )
))
(declare-datatypes ((List!2536 0))(
  ( (Nil!2526) (Cons!2526 (h!7923 C!2236) (t!24144 List!2536)) )
))
(declare-datatypes ((IArray!1377 0))(
  ( (IArray!1378 (innerList!746 List!2536)) )
))
(declare-datatypes ((Conc!688 0))(
  ( (Node!688 (left!1907 Conc!688) (right!2237 Conc!688) (csize!1606 Int) (cheight!899 Int)) (Leaf!1244 (xs!3283 IArray!1377) (csize!1607 Int)) (Empty!688) )
))
(declare-datatypes ((BalanceConc!1384 0))(
  ( (BalanceConc!1385 (c!29805 Conc!688)) )
))
(declare-datatypes ((String!3355 0))(
  ( (String!3356 (value!16655 String)) )
))
(declare-datatypes ((TokenValueInjection!682 0))(
  ( (TokenValueInjection!683 (toValue!1060 Int) (toChars!919 Int)) )
))
(declare-datatypes ((Regex!657 0))(
  ( (ElementMatch!657 (c!29806 C!2236)) (Concat!1113 (regOne!1826 Regex!657) (regTwo!1826 Regex!657)) (EmptyExpr!657) (Star!657 (reg!986 Regex!657)) (EmptyLang!657) (Union!657 (regOne!1827 Regex!657) (regTwo!1827 Regex!657)) )
))
(declare-datatypes ((Rule!666 0))(
  ( (Rule!667 (regex!433 Regex!657) (tag!611 String!3355) (isSeparator!433 Bool) (transformation!433 TokenValueInjection!682)) )
))
(declare-datatypes ((Token!610 0))(
  ( (Token!611 (value!16656 TokenValue!455) (rule!940 Rule!666) (size!2179 Int) (originalCharacters!476 List!2536)) )
))
(declare-fun separatorToken!170 () Token!610)

(declare-datatypes ((List!2537 0))(
  ( (Nil!2527) (Cons!2527 (h!7924 Rule!666) (t!24145 List!2537)) )
))
(declare-fun rules!1920 () List!2537)

(declare-datatypes ((LexerInterface!319 0))(
  ( (LexerInterfaceExt!316 (__x!2398 Int)) (Lexer!317) )
))
(declare-fun thiss!17480 () LexerInterface!319)

(declare-fun rulesProduceIndividualToken!68 (LexerInterface!319 List!2537 Token!610) Bool)

(assert (=> b!145947 (= res!67259 (rulesProduceIndividualToken!68 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!145948 () Bool)

(declare-fun res!67257 () Bool)

(assert (=> b!145948 (=> (not res!67257) (not e!86670))))

(declare-datatypes ((List!2538 0))(
  ( (Nil!2528) (Cons!2528 (h!7925 Token!610) (t!24146 List!2538)) )
))
(declare-fun tokens!465 () List!2538)

(declare-fun lambda!3582 () Int)

(declare-fun forall!401 (List!2538 Int) Bool)

(assert (=> b!145948 (= res!67257 (forall!401 tokens!465 lambda!3582))))

(declare-fun e!86660 () Bool)

(declare-fun b!145949 () Bool)

(declare-fun tp!76884 () Bool)

(declare-fun inv!3307 (String!3355) Bool)

(declare-fun inv!3310 (TokenValueInjection!682) Bool)

(assert (=> b!145949 (= e!86660 (and tp!76884 (inv!3307 (tag!611 (rule!940 separatorToken!170))) (inv!3310 (transformation!433 (rule!940 separatorToken!170))) e!86664))))

(declare-fun e!86661 () Bool)

(assert (=> b!145951 (= e!86661 (and tp!76878 tp!76881))))

(declare-fun e!86669 () Bool)

(declare-fun tp!76882 () Bool)

(declare-fun e!86672 () Bool)

(declare-fun b!145952 () Bool)

(declare-fun inv!21 (TokenValue!455) Bool)

(assert (=> b!145952 (= e!86669 (and (inv!21 (value!16656 (h!7925 tokens!465))) e!86672 tp!76882))))

(declare-fun b!145953 () Bool)

(declare-fun res!67254 () Bool)

(declare-fun e!86673 () Bool)

(assert (=> b!145953 (=> (not res!67254) (not e!86673))))

(declare-fun rulesInvariant!285 (LexerInterface!319 List!2537) Bool)

(assert (=> b!145953 (= res!67254 (rulesInvariant!285 thiss!17480 rules!1920))))

(declare-fun b!145954 () Bool)

(declare-fun res!67260 () Bool)

(assert (=> b!145954 (=> (not res!67260) (not e!86670))))

(declare-fun sepAndNonSepRulesDisjointChars!22 (List!2537 List!2537) Bool)

(assert (=> b!145954 (= res!67260 (sepAndNonSepRulesDisjointChars!22 rules!1920 rules!1920))))

(declare-fun b!145955 () Bool)

(assert (=> b!145955 (= e!86670 false)))

(declare-datatypes ((IArray!1379 0))(
  ( (IArray!1380 (innerList!747 List!2538)) )
))
(declare-datatypes ((Conc!689 0))(
  ( (Node!689 (left!1908 Conc!689) (right!2238 Conc!689) (csize!1608 Int) (cheight!900 Int)) (Leaf!1245 (xs!3284 IArray!1379) (csize!1609 Int)) (Empty!689) )
))
(declare-datatypes ((BalanceConc!1386 0))(
  ( (BalanceConc!1387 (c!29807 Conc!689)) )
))
(declare-fun lt!42141 () BalanceConc!1386)

(declare-fun lt!42140 () List!2536)

(declare-fun list!871 (BalanceConc!1384) List!2536)

(declare-fun printWithSeparatorTokenWhenNeededRec!2 (LexerInterface!319 List!2537 BalanceConc!1386 Token!610 Int) BalanceConc!1384)

(assert (=> b!145955 (= lt!42140 (list!871 (printWithSeparatorTokenWhenNeededRec!2 thiss!17480 rules!1920 lt!42141 separatorToken!170 0)))))

(declare-fun lt!42142 () List!2536)

(declare-fun printWithSeparatorTokenWhenNeededList!12 (LexerInterface!319 List!2537 List!2538 Token!610) List!2536)

(assert (=> b!145955 (= lt!42142 (printWithSeparatorTokenWhenNeededList!12 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!145956 () Bool)

(declare-fun e!86667 () Bool)

(declare-fun e!86657 () Bool)

(declare-fun tp!76879 () Bool)

(assert (=> b!145956 (= e!86667 (and e!86657 tp!76879))))

(declare-fun b!145957 () Bool)

(declare-fun res!67262 () Bool)

(assert (=> b!145957 (=> (not res!67262) (not e!86670))))

(assert (=> b!145957 (= res!67262 (isSeparator!433 (rule!940 separatorToken!170)))))

(declare-fun tp!76889 () Bool)

(declare-fun b!145958 () Bool)

(declare-fun e!86668 () Bool)

(assert (=> b!145958 (= e!86668 (and (inv!21 (value!16656 separatorToken!170)) e!86660 tp!76889))))

(declare-fun e!86659 () Bool)

(declare-fun b!145959 () Bool)

(declare-fun tp!76880 () Bool)

(assert (=> b!145959 (= e!86672 (and tp!76880 (inv!3307 (tag!611 (rule!940 (h!7925 tokens!465)))) (inv!3310 (transformation!433 (rule!940 (h!7925 tokens!465)))) e!86659))))

(declare-fun tp!76888 () Bool)

(declare-fun b!145960 () Bool)

(assert (=> b!145960 (= e!86657 (and tp!76888 (inv!3307 (tag!611 (h!7924 rules!1920))) (inv!3310 (transformation!433 (h!7924 rules!1920))) e!86661))))

(declare-fun res!67258 () Bool)

(assert (=> start!15458 (=> (not res!67258) (not e!86673))))

(get-info :version)

(assert (=> start!15458 (= res!67258 ((_ is Lexer!317) thiss!17480))))

(assert (=> start!15458 e!86673))

(assert (=> start!15458 true))

(assert (=> start!15458 e!86667))

(declare-fun inv!3311 (Token!610) Bool)

(assert (=> start!15458 (and (inv!3311 separatorToken!170) e!86668)))

(declare-fun e!86662 () Bool)

(assert (=> start!15458 e!86662))

(declare-fun b!145950 () Bool)

(declare-fun res!67261 () Bool)

(assert (=> b!145950 (=> (not res!67261) (not e!86670))))

(assert (=> b!145950 (= res!67261 ((_ is Cons!2528) tokens!465))))

(declare-fun tp!76887 () Bool)

(declare-fun b!145961 () Bool)

(assert (=> b!145961 (= e!86662 (and (inv!3311 (h!7925 tokens!465)) e!86669 tp!76887))))

(declare-fun b!145962 () Bool)

(assert (=> b!145962 (= e!86673 e!86670)))

(declare-fun res!67256 () Bool)

(assert (=> b!145962 (=> (not res!67256) (not e!86670))))

(declare-fun rulesProduceEachTokenIndividually!111 (LexerInterface!319 List!2537 BalanceConc!1386) Bool)

(assert (=> b!145962 (= res!67256 (rulesProduceEachTokenIndividually!111 thiss!17480 rules!1920 lt!42141))))

(declare-fun seqFromList!250 (List!2538) BalanceConc!1386)

(assert (=> b!145962 (= lt!42141 (seqFromList!250 tokens!465))))

(declare-fun b!145963 () Bool)

(declare-fun res!67255 () Bool)

(assert (=> b!145963 (=> (not res!67255) (not e!86673))))

(declare-fun isEmpty!982 (List!2537) Bool)

(assert (=> b!145963 (= res!67255 (not (isEmpty!982 rules!1920)))))

(assert (=> b!145964 (= e!86659 (and tp!76883 tp!76877))))

(assert (= (and start!15458 res!67258) b!145963))

(assert (= (and b!145963 res!67255) b!145953))

(assert (= (and b!145953 res!67254) b!145962))

(assert (= (and b!145962 res!67256) b!145947))

(assert (= (and b!145947 res!67259) b!145957))

(assert (= (and b!145957 res!67262) b!145948))

(assert (= (and b!145948 res!67257) b!145954))

(assert (= (and b!145954 res!67260) b!145950))

(assert (= (and b!145950 res!67261) b!145955))

(assert (= b!145960 b!145951))

(assert (= b!145956 b!145960))

(assert (= (and start!15458 ((_ is Cons!2527) rules!1920)) b!145956))

(assert (= b!145949 b!145946))

(assert (= b!145958 b!145949))

(assert (= start!15458 b!145958))

(assert (= b!145959 b!145964))

(assert (= b!145952 b!145959))

(assert (= b!145961 b!145952))

(assert (= (and start!15458 ((_ is Cons!2528) tokens!465)) b!145961))

(declare-fun m!128723 () Bool)

(assert (=> b!145961 m!128723))

(declare-fun m!128725 () Bool)

(assert (=> b!145947 m!128725))

(declare-fun m!128727 () Bool)

(assert (=> b!145959 m!128727))

(declare-fun m!128729 () Bool)

(assert (=> b!145959 m!128729))

(declare-fun m!128731 () Bool)

(assert (=> start!15458 m!128731))

(declare-fun m!128733 () Bool)

(assert (=> b!145949 m!128733))

(declare-fun m!128735 () Bool)

(assert (=> b!145949 m!128735))

(declare-fun m!128737 () Bool)

(assert (=> b!145952 m!128737))

(declare-fun m!128739 () Bool)

(assert (=> b!145955 m!128739))

(assert (=> b!145955 m!128739))

(declare-fun m!128741 () Bool)

(assert (=> b!145955 m!128741))

(declare-fun m!128743 () Bool)

(assert (=> b!145955 m!128743))

(declare-fun m!128745 () Bool)

(assert (=> b!145960 m!128745))

(declare-fun m!128747 () Bool)

(assert (=> b!145960 m!128747))

(declare-fun m!128749 () Bool)

(assert (=> b!145963 m!128749))

(declare-fun m!128751 () Bool)

(assert (=> b!145954 m!128751))

(declare-fun m!128753 () Bool)

(assert (=> b!145962 m!128753))

(declare-fun m!128755 () Bool)

(assert (=> b!145962 m!128755))

(declare-fun m!128757 () Bool)

(assert (=> b!145948 m!128757))

(declare-fun m!128759 () Bool)

(assert (=> b!145953 m!128759))

(declare-fun m!128761 () Bool)

(assert (=> b!145958 m!128761))

(check-sat (not b!145959) (not b_next!5131) (not b_next!5137) (not b_next!5133) (not b_next!5139) (not b!145954) b_and!7937 (not b!145948) (not b!145960) (not b!145955) (not b!145958) (not b_next!5129) b_and!7947 b_and!7943 (not b!145963) (not b!145961) b_and!7941 (not b!145962) (not b!145956) b_and!7939 (not b!145953) (not start!15458) (not b!145952) b_and!7945 (not b_next!5135) (not b!145949) (not b!145947))
(check-sat b_and!7941 (not b_next!5131) b_and!7939 (not b_next!5137) (not b_next!5133) (not b_next!5139) b_and!7937 (not b_next!5129) b_and!7947 b_and!7943 b_and!7945 (not b_next!5135))
