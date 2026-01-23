; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128054 () Bool)

(assert start!128054)

(declare-fun b!1404685 () Bool)

(declare-fun b_free!34275 () Bool)

(declare-fun b_next!34979 () Bool)

(assert (=> b!1404685 (= b_free!34275 (not b_next!34979))))

(declare-fun tp!399261 () Bool)

(declare-fun b_and!94051 () Bool)

(assert (=> b!1404685 (= tp!399261 b_and!94051)))

(declare-fun b_free!34277 () Bool)

(declare-fun b_next!34981 () Bool)

(assert (=> b!1404685 (= b_free!34277 (not b_next!34981))))

(declare-fun tp!399252 () Bool)

(declare-fun b_and!94053 () Bool)

(assert (=> b!1404685 (= tp!399252 b_and!94053)))

(declare-fun b!1404665 () Bool)

(declare-fun b_free!34279 () Bool)

(declare-fun b_next!34983 () Bool)

(assert (=> b!1404665 (= b_free!34279 (not b_next!34983))))

(declare-fun tp!399255 () Bool)

(declare-fun b_and!94055 () Bool)

(assert (=> b!1404665 (= tp!399255 b_and!94055)))

(declare-fun b_free!34281 () Bool)

(declare-fun b_next!34985 () Bool)

(assert (=> b!1404665 (= b_free!34281 (not b_next!34985))))

(declare-fun tp!399253 () Bool)

(declare-fun b_and!94057 () Bool)

(assert (=> b!1404665 (= tp!399253 b_and!94057)))

(declare-fun b!1404663 () Bool)

(declare-fun b_free!34283 () Bool)

(declare-fun b_next!34987 () Bool)

(assert (=> b!1404663 (= b_free!34283 (not b_next!34987))))

(declare-fun tp!399254 () Bool)

(declare-fun b_and!94059 () Bool)

(assert (=> b!1404663 (= tp!399254 b_and!94059)))

(declare-fun b_free!34285 () Bool)

(declare-fun b_next!34989 () Bool)

(assert (=> b!1404663 (= b_free!34285 (not b_next!34989))))

(declare-fun tp!399260 () Bool)

(declare-fun b_and!94061 () Bool)

(assert (=> b!1404663 (= tp!399260 b_and!94061)))

(declare-fun b!1404669 () Bool)

(assert (=> b!1404669 true))

(assert (=> b!1404669 true))

(declare-fun b!1404680 () Bool)

(assert (=> b!1404680 true))

(declare-fun b!1404649 () Bool)

(assert (=> b!1404649 true))

(declare-fun bs!338434 () Bool)

(declare-fun b!1404660 () Bool)

(assert (= bs!338434 (and b!1404660 b!1404649)))

(declare-fun lambda!61863 () Int)

(declare-fun lambda!61862 () Int)

(assert (=> bs!338434 (not (= lambda!61863 lambda!61862))))

(assert (=> b!1404660 true))

(declare-fun b!1404641 () Bool)

(declare-fun e!896753 () Bool)

(declare-fun e!896754 () Bool)

(assert (=> b!1404641 (= e!896753 e!896754)))

(declare-fun res!635740 () Bool)

(assert (=> b!1404641 (=> res!635740 e!896754)))

(declare-datatypes ((C!7872 0))(
  ( (C!7873 (val!4496 Int)) )
))
(declare-datatypes ((List!14360 0))(
  ( (Nil!14294) (Cons!14294 (h!19695 C!7872) (t!122993 List!14360)) )
))
(declare-fun lt!468672 () List!14360)

(declare-fun lt!468676 () C!7872)

(declare-fun contains!2813 (List!14360 C!7872) Bool)

(assert (=> b!1404641 (= res!635740 (not (contains!2813 lt!468672 lt!468676)))))

(declare-datatypes ((IArray!9433 0))(
  ( (IArray!9434 (innerList!4774 List!14360)) )
))
(declare-datatypes ((Conc!4714 0))(
  ( (Node!4714 (left!12206 Conc!4714) (right!12536 Conc!4714) (csize!9658 Int) (cheight!4925 Int)) (Leaf!7149 (xs!7441 IArray!9433) (csize!9659 Int)) (Empty!4714) )
))
(declare-datatypes ((BalanceConc!9368 0))(
  ( (BalanceConc!9369 (c!230984 Conc!4714)) )
))
(declare-fun lt!468664 () BalanceConc!9368)

(declare-fun apply!3653 (BalanceConc!9368 Int) C!7872)

(assert (=> b!1404641 (= lt!468676 (apply!3653 lt!468664 0))))

(declare-fun b!1404642 () Bool)

(declare-fun e!896768 () Bool)

(declare-fun e!896755 () Bool)

(assert (=> b!1404642 (= e!896768 e!896755)))

(declare-fun res!635725 () Bool)

(assert (=> b!1404642 (=> (not res!635725) (not e!896755))))

(declare-fun lt!468674 () BalanceConc!9368)

(declare-fun size!11761 (BalanceConc!9368) Int)

(assert (=> b!1404642 (= res!635725 (> (size!11761 lt!468674) 0))))

(declare-datatypes ((List!14361 0))(
  ( (Nil!14295) (Cons!14295 (h!19696 (_ BitVec 16)) (t!122994 List!14361)) )
))
(declare-datatypes ((TokenValue!2567 0))(
  ( (FloatLiteralValue!5134 (text!18414 List!14361)) (TokenValueExt!2566 (__x!8963 Int)) (Broken!12835 (value!80201 List!14361)) (Object!2632) (End!2567) (Def!2567) (Underscore!2567) (Match!2567) (Else!2567) (Error!2567) (Case!2567) (If!2567) (Extends!2567) (Abstract!2567) (Class!2567) (Val!2567) (DelimiterValue!5134 (del!2627 List!14361)) (KeywordValue!2573 (value!80202 List!14361)) (CommentValue!5134 (value!80203 List!14361)) (WhitespaceValue!5134 (value!80204 List!14361)) (IndentationValue!2567 (value!80205 List!14361)) (String!17070) (Int32!2567) (Broken!12836 (value!80206 List!14361)) (Boolean!2568) (Unit!20646) (OperatorValue!2570 (op!2627 List!14361)) (IdentifierValue!5134 (value!80207 List!14361)) (IdentifierValue!5135 (value!80208 List!14361)) (WhitespaceValue!5135 (value!80209 List!14361)) (True!5134) (False!5134) (Broken!12837 (value!80210 List!14361)) (Broken!12838 (value!80211 List!14361)) (True!5135) (RightBrace!2567) (RightBracket!2567) (Colon!2567) (Null!2567) (Comma!2567) (LeftBracket!2567) (False!5135) (LeftBrace!2567) (ImaginaryLiteralValue!2567 (text!18415 List!14361)) (StringLiteralValue!7701 (value!80212 List!14361)) (EOFValue!2567 (value!80213 List!14361)) (IdentValue!2567 (value!80214 List!14361)) (DelimiterValue!5135 (value!80215 List!14361)) (DedentValue!2567 (value!80216 List!14361)) (NewLineValue!2567 (value!80217 List!14361)) (IntegerValue!7701 (value!80218 (_ BitVec 32)) (text!18416 List!14361)) (IntegerValue!7702 (value!80219 Int) (text!18417 List!14361)) (Times!2567) (Or!2567) (Equal!2567) (Minus!2567) (Broken!12839 (value!80220 List!14361)) (And!2567) (Div!2567) (LessEqual!2567) (Mod!2567) (Concat!6358) (Not!2567) (Plus!2567) (SpaceValue!2567 (value!80221 List!14361)) (IntegerValue!7703 (value!80222 Int) (text!18418 List!14361)) (StringLiteralValue!7702 (text!18419 List!14361)) (FloatLiteralValue!5135 (text!18420 List!14361)) (BytesLiteralValue!2567 (value!80223 List!14361)) (CommentValue!5135 (value!80224 List!14361)) (StringLiteralValue!7703 (value!80225 List!14361)) (ErrorTokenValue!2567 (msg!2628 List!14361)) )
))
(declare-datatypes ((String!17071 0))(
  ( (String!17072 (value!80226 String)) )
))
(declare-datatypes ((Regex!3791 0))(
  ( (ElementMatch!3791 (c!230985 C!7872)) (Concat!6359 (regOne!8094 Regex!3791) (regTwo!8094 Regex!3791)) (EmptyExpr!3791) (Star!3791 (reg!4120 Regex!3791)) (EmptyLang!3791) (Union!3791 (regOne!8095 Regex!3791) (regTwo!8095 Regex!3791)) )
))
(declare-datatypes ((TokenValueInjection!4794 0))(
  ( (TokenValueInjection!4795 (toValue!3768 Int) (toChars!3627 Int)) )
))
(declare-datatypes ((Rule!4754 0))(
  ( (Rule!4755 (regex!2477 Regex!3791) (tag!2739 String!17071) (isSeparator!2477 Bool) (transformation!2477 TokenValueInjection!4794)) )
))
(declare-datatypes ((Token!4616 0))(
  ( (Token!4617 (value!80227 TokenValue!2567) (rule!4240 Rule!4754) (size!11762 Int) (originalCharacters!3339 List!14360)) )
))
(declare-fun t2!34 () Token!4616)

(declare-fun charsOf!1449 (Token!4616) BalanceConc!9368)

(assert (=> b!1404642 (= lt!468674 (charsOf!1449 t2!34))))

(declare-fun b!1404644 () Bool)

(declare-fun res!635721 () Bool)

(assert (=> b!1404644 (=> (not res!635721) (not e!896768))))

(declare-datatypes ((LexerInterface!2172 0))(
  ( (LexerInterfaceExt!2169 (__x!8964 Int)) (Lexer!2170) )
))
(declare-fun thiss!19762 () LexerInterface!2172)

(declare-datatypes ((List!14362 0))(
  ( (Nil!14296) (Cons!14296 (h!19697 Rule!4754) (t!122995 List!14362)) )
))
(declare-fun rules!2550 () List!14362)

(declare-fun rulesProduceIndividualToken!1141 (LexerInterface!2172 List!14362 Token!4616) Bool)

(assert (=> b!1404644 (= res!635721 (rulesProduceIndividualToken!1141 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1404645 () Bool)

(declare-fun e!896772 () Bool)

(assert (=> b!1404645 (= e!896772 e!896753)))

(declare-fun res!635733 () Bool)

(assert (=> b!1404645 (=> res!635733 e!896753)))

(declare-fun lt!468657 () List!14360)

(declare-fun ++!3718 (List!14360 List!14360) List!14360)

(declare-fun getSuffix!637 (List!14360 List!14360) List!14360)

(assert (=> b!1404645 (= res!635733 (not (= lt!468657 (++!3718 lt!468672 (getSuffix!637 lt!468657 lt!468672)))))))

(declare-fun lambda!61859 () Int)

(declare-fun pickWitness!244 (Int) List!14360)

(assert (=> b!1404645 (= lt!468657 (pickWitness!244 lambda!61859))))

(declare-fun b!1404646 () Bool)

(declare-datatypes ((Unit!20647 0))(
  ( (Unit!20648) )
))
(declare-fun e!896763 () Unit!20647)

(declare-fun Unit!20649 () Unit!20647)

(assert (=> b!1404646 (= e!896763 Unit!20649)))

(declare-fun b!1404647 () Bool)

(declare-fun e!896759 () Bool)

(declare-fun e!896777 () Bool)

(assert (=> b!1404647 (= e!896759 e!896777)))

(declare-fun res!635735 () Bool)

(assert (=> b!1404647 (=> res!635735 e!896777)))

(declare-fun lt!468659 () Rule!4754)

(declare-fun t1!34 () Token!4616)

(assert (=> b!1404647 (= res!635735 (or (isSeparator!2477 lt!468659) (isSeparator!2477 (rule!4240 t1!34))))))

(declare-fun lt!468668 () Regex!3791)

(assert (=> b!1404647 (= (regex!2477 lt!468659) lt!468668)))

(declare-fun b!1404648 () Bool)

(declare-fun e!896750 () Bool)

(assert (=> b!1404648 (= e!896750 e!896759)))

(declare-fun res!635743 () Bool)

(assert (=> b!1404648 (=> res!635743 e!896759)))

(declare-fun lt!468648 () Bool)

(assert (=> b!1404648 (= res!635743 lt!468648)))

(declare-fun lt!468663 () Unit!20647)

(declare-fun e!896756 () Unit!20647)

(assert (=> b!1404648 (= lt!468663 e!896756)))

(declare-fun c!230983 () Bool)

(assert (=> b!1404648 (= c!230983 lt!468648)))

(declare-fun lt!468675 () C!7872)

(declare-fun usedCharacters!288 (Regex!3791) List!14360)

(assert (=> b!1404648 (= lt!468648 (not (contains!2813 (usedCharacters!288 (regex!2477 (rule!4240 t2!34))) lt!468675)))))

(declare-fun e!896766 () Bool)

(declare-fun e!896767 () Bool)

(assert (=> b!1404649 (= e!896766 e!896767)))

(declare-fun res!635728 () Bool)

(assert (=> b!1404649 (=> res!635728 e!896767)))

(declare-fun exists!598 (List!14362 Int) Bool)

(assert (=> b!1404649 (= res!635728 (not (exists!598 rules!2550 lambda!61862)))))

(assert (=> b!1404649 (exists!598 rules!2550 lambda!61862)))

(declare-fun lt!468665 () Unit!20647)

(declare-fun lambda!61860 () Int)

(declare-fun lemmaMapContains!188 (List!14362 Int Regex!3791) Unit!20647)

(assert (=> b!1404649 (= lt!468665 (lemmaMapContains!188 rules!2550 lambda!61860 lt!468668))))

(declare-fun b!1404650 () Bool)

(declare-fun res!635727 () Bool)

(assert (=> b!1404650 (=> (not res!635727) (not e!896755))))

(declare-fun separableTokensPredicate!455 (LexerInterface!2172 Token!4616 Token!4616 List!14362) Bool)

(assert (=> b!1404650 (= res!635727 (not (separableTokensPredicate!455 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1404651 () Bool)

(declare-fun res!635714 () Bool)

(assert (=> b!1404651 (=> (not res!635714) (not e!896768))))

(assert (=> b!1404651 (= res!635714 (rulesProduceIndividualToken!1141 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1404652 () Bool)

(declare-fun res!635729 () Bool)

(declare-fun e!896764 () Bool)

(assert (=> b!1404652 (=> res!635729 e!896764)))

(declare-fun contains!2814 (List!14362 Rule!4754) Bool)

(assert (=> b!1404652 (= res!635729 (not (contains!2814 rules!2550 (rule!4240 t2!34))))))

(declare-fun b!1404643 () Bool)

(declare-fun Unit!20650 () Unit!20647)

(assert (=> b!1404643 (= e!896756 Unit!20650)))

(declare-fun lt!468646 () Unit!20647)

(declare-fun lt!468661 () List!14360)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!222 (Regex!3791 List!14360 C!7872) Unit!20647)

(declare-fun head!2611 (List!14360) C!7872)

(assert (=> b!1404643 (= lt!468646 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!222 (regex!2477 (rule!4240 t2!34)) lt!468661 (head!2611 lt!468661)))))

(assert (=> b!1404643 false))

(declare-fun res!635745 () Bool)

(assert (=> start!128054 (=> (not res!635745) (not e!896768))))

(get-info :version)

(assert (=> start!128054 (= res!635745 ((_ is Lexer!2170) thiss!19762))))

(assert (=> start!128054 e!896768))

(assert (=> start!128054 true))

(declare-fun e!896774 () Bool)

(assert (=> start!128054 e!896774))

(declare-fun e!896771 () Bool)

(declare-fun inv!18600 (Token!4616) Bool)

(assert (=> start!128054 (and (inv!18600 t1!34) e!896771)))

(declare-fun e!896751 () Bool)

(assert (=> start!128054 (and (inv!18600 t2!34) e!896751)))

(declare-fun b!1404653 () Bool)

(declare-fun Unit!20651 () Unit!20647)

(assert (=> b!1404653 (= e!896763 Unit!20651)))

(declare-fun lt!468655 () Unit!20647)

(declare-fun lt!468670 () List!14360)

(assert (=> b!1404653 (= lt!468655 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!222 (regex!2477 (rule!4240 t1!34)) lt!468670 (head!2611 lt!468670)))))

(assert (=> b!1404653 false))

(declare-fun b!1404654 () Bool)

(declare-fun Unit!20652 () Unit!20647)

(assert (=> b!1404654 (= e!896756 Unit!20652)))

(declare-fun b!1404655 () Bool)

(declare-fun res!635736 () Bool)

(declare-fun e!896752 () Bool)

(assert (=> b!1404655 (=> res!635736 e!896752)))

(declare-fun matchR!1782 (Regex!3791 List!14360) Bool)

(assert (=> b!1404655 (= res!635736 (not (matchR!1782 (regex!2477 (rule!4240 t2!34)) lt!468661)))))

(declare-fun e!896762 () Bool)

(declare-fun b!1404656 () Bool)

(declare-fun e!896769 () Bool)

(declare-fun tp!399257 () Bool)

(declare-fun inv!18597 (String!17071) Bool)

(declare-fun inv!18601 (TokenValueInjection!4794) Bool)

(assert (=> b!1404656 (= e!896769 (and tp!399257 (inv!18597 (tag!2739 (rule!4240 t2!34))) (inv!18601 (transformation!2477 (rule!4240 t2!34))) e!896762))))

(declare-fun b!1404657 () Bool)

(declare-fun e!896765 () Bool)

(declare-fun tp!399262 () Bool)

(declare-fun e!896779 () Bool)

(assert (=> b!1404657 (= e!896765 (and tp!399262 (inv!18597 (tag!2739 (rule!4240 t1!34))) (inv!18601 (transformation!2477 (rule!4240 t1!34))) e!896779))))

(declare-fun b!1404658 () Bool)

(declare-fun res!635718 () Bool)

(assert (=> b!1404658 (=> res!635718 e!896754)))

(declare-fun lt!468667 () Regex!3791)

(assert (=> b!1404658 (= res!635718 (not (matchR!1782 lt!468667 lt!468657)))))

(declare-fun b!1404659 () Bool)

(declare-fun res!635744 () Bool)

(declare-fun e!896758 () Bool)

(assert (=> b!1404659 (=> res!635744 e!896758)))

(declare-datatypes ((List!14363 0))(
  ( (Nil!14297) (Cons!14297 (h!19698 Token!4616) (t!122996 List!14363)) )
))
(declare-fun lt!468660 () List!14363)

(declare-fun lt!468650 () BalanceConc!9368)

(declare-datatypes ((tuple2!13922 0))(
  ( (tuple2!13923 (_1!7847 List!14363) (_2!7847 List!14360)) )
))
(declare-fun lexList!686 (LexerInterface!2172 List!14362 List!14360) tuple2!13922)

(declare-fun list!5581 (BalanceConc!9368) List!14360)

(assert (=> b!1404659 (= res!635744 (not (= (lexList!686 thiss!19762 rules!2550 (list!5581 lt!468650)) (tuple2!13923 lt!468660 Nil!14294))))))

(assert (=> b!1404660 (= e!896764 e!896752)))

(declare-fun res!635746 () Bool)

(assert (=> b!1404660 (=> res!635746 e!896752)))

(assert (=> b!1404660 (= res!635746 (not (matchR!1782 (regex!2477 (rule!4240 t1!34)) lt!468670)))))

(declare-fun lt!468649 () Unit!20647)

(declare-fun forallContained!672 (List!14362 Int Rule!4754) Unit!20647)

(assert (=> b!1404660 (= lt!468649 (forallContained!672 rules!2550 lambda!61863 (rule!4240 t2!34)))))

(declare-fun lt!468658 () Unit!20647)

(assert (=> b!1404660 (= lt!468658 (forallContained!672 rules!2550 lambda!61863 (rule!4240 t1!34)))))

(declare-fun lt!468669 () Unit!20647)

(assert (=> b!1404660 (= lt!468669 (forallContained!672 rules!2550 lambda!61863 lt!468659))))

(declare-fun b!1404661 () Bool)

(declare-fun validRegex!1661 (Regex!3791) Bool)

(assert (=> b!1404661 (= e!896777 (validRegex!1661 lt!468668))))

(assert (=> b!1404661 (not (contains!2813 (usedCharacters!288 (regex!2477 lt!468659)) lt!468675))))

(declare-fun lt!468654 () Unit!20647)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!24 (LexerInterface!2172 List!14362 List!14362 Rule!4754 Rule!4754 C!7872) Unit!20647)

(assert (=> b!1404661 (= lt!468654 (lemmaNonSepRuleNotContainsCharContainedInASepRule!24 thiss!19762 rules!2550 rules!2550 lt!468659 (rule!4240 t2!34) lt!468675))))

(declare-fun b!1404662 () Bool)

(declare-fun res!635717 () Bool)

(declare-fun e!896770 () Bool)

(assert (=> b!1404662 (=> res!635717 e!896770)))

(declare-fun lt!468662 () List!14363)

(declare-fun lt!468666 () BalanceConc!9368)

(assert (=> b!1404662 (= res!635717 (not (= (lexList!686 thiss!19762 rules!2550 (list!5581 lt!468666)) (tuple2!13923 lt!468662 Nil!14294))))))

(declare-fun e!896775 () Bool)

(assert (=> b!1404663 (= e!896775 (and tp!399254 tp!399260))))

(declare-fun b!1404664 () Bool)

(declare-fun res!635720 () Bool)

(assert (=> b!1404664 (=> res!635720 e!896754)))

(assert (=> b!1404664 (= res!635720 (not (contains!2813 lt!468657 lt!468676)))))

(assert (=> b!1404665 (= e!896762 (and tp!399255 tp!399253))))

(declare-fun b!1404666 () Bool)

(declare-fun tp!399251 () Bool)

(declare-fun inv!21 (TokenValue!2567) Bool)

(assert (=> b!1404666 (= e!896751 (and (inv!21 (value!80227 t2!34)) e!896769 tp!399251))))

(declare-fun b!1404667 () Bool)

(declare-fun res!635737 () Bool)

(assert (=> b!1404667 (=> res!635737 e!896770)))

(declare-datatypes ((tuple2!13924 0))(
  ( (tuple2!13925 (_1!7848 Token!4616) (_2!7848 List!14360)) )
))
(declare-datatypes ((Option!2740 0))(
  ( (None!2739) (Some!2739 (v!21691 tuple2!13924)) )
))
(declare-fun maxPrefix!1146 (LexerInterface!2172 List!14362 List!14360) Option!2740)

(assert (=> b!1404667 (= res!635737 (not (= (maxPrefix!1146 thiss!19762 rules!2550 lt!468670) (Some!2739 (tuple2!13925 t1!34 Nil!14294)))))))

(declare-fun b!1404668 () Bool)

(declare-fun e!896760 () Bool)

(declare-fun tp!399256 () Bool)

(assert (=> b!1404668 (= e!896774 (and e!896760 tp!399256))))

(declare-fun e!896749 () Bool)

(assert (=> b!1404669 (= e!896749 (not e!896772))))

(declare-fun res!635739 () Bool)

(assert (=> b!1404669 (=> res!635739 e!896772)))

(declare-fun Exists!941 (Int) Bool)

(assert (=> b!1404669 (= res!635739 (not (Exists!941 lambda!61859)))))

(assert (=> b!1404669 (Exists!941 lambda!61859)))

(declare-fun lt!468652 () Unit!20647)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!259 (Regex!3791 List!14360) Unit!20647)

(assert (=> b!1404669 (= lt!468652 (lemmaPrefixMatchThenExistsStringThatMatches!259 lt!468667 lt!468672))))

(declare-fun b!1404670 () Bool)

(declare-fun tp!399258 () Bool)

(assert (=> b!1404670 (= e!896771 (and (inv!21 (value!80227 t1!34)) e!896765 tp!399258))))

(declare-fun b!1404671 () Bool)

(assert (=> b!1404671 (= e!896755 e!896749)))

(declare-fun res!635734 () Bool)

(assert (=> b!1404671 (=> (not res!635734) (not e!896749))))

(declare-fun prefixMatch!300 (Regex!3791 List!14360) Bool)

(assert (=> b!1404671 (= res!635734 (prefixMatch!300 lt!468667 lt!468672))))

(declare-fun rulesRegex!360 (LexerInterface!2172 List!14362) Regex!3791)

(assert (=> b!1404671 (= lt!468667 (rulesRegex!360 thiss!19762 rules!2550))))

(assert (=> b!1404671 (= lt!468672 (++!3718 lt!468670 (Cons!14294 lt!468675 Nil!14294)))))

(assert (=> b!1404671 (= lt!468675 (apply!3653 lt!468674 0))))

(assert (=> b!1404671 (= lt!468670 (list!5581 lt!468664))))

(assert (=> b!1404671 (= lt!468664 (charsOf!1449 t1!34))))

(declare-fun b!1404672 () Bool)

(declare-fun e!896761 () Bool)

(assert (=> b!1404672 (= e!896761 e!896766)))

(declare-fun res!635747 () Bool)

(assert (=> b!1404672 (=> res!635747 e!896766)))

(declare-datatypes ((List!14364 0))(
  ( (Nil!14298) (Cons!14298 (h!19699 Regex!3791) (t!122997 List!14364)) )
))
(declare-fun contains!2815 (List!14364 Regex!3791) Bool)

(declare-fun map!3176 (List!14362 Int) List!14364)

(assert (=> b!1404672 (= res!635747 (not (contains!2815 (map!3176 rules!2550 lambda!61860) lt!468668)))))

(declare-fun lambda!61861 () Int)

(declare-fun getWitness!486 (List!14364 Int) Regex!3791)

(assert (=> b!1404672 (= lt!468668 (getWitness!486 (map!3176 rules!2550 lambda!61860) lambda!61861))))

(declare-fun b!1404673 () Bool)

(assert (=> b!1404673 (= e!896758 e!896764)))

(declare-fun res!635730 () Bool)

(assert (=> b!1404673 (=> res!635730 e!896764)))

(assert (=> b!1404673 (= res!635730 (not (= (maxPrefix!1146 thiss!19762 rules!2550 lt!468661) (Some!2739 (tuple2!13925 t2!34 Nil!14294)))))))

(assert (=> b!1404673 (= lt!468661 (list!5581 lt!468674))))

(declare-fun b!1404674 () Bool)

(assert (=> b!1404674 (= e!896752 e!896750)))

(declare-fun res!635724 () Bool)

(assert (=> b!1404674 (=> res!635724 e!896750)))

(declare-fun lt!468647 () Bool)

(assert (=> b!1404674 (= res!635724 lt!468647)))

(declare-fun lt!468651 () Unit!20647)

(assert (=> b!1404674 (= lt!468651 e!896763)))

(declare-fun c!230982 () Bool)

(assert (=> b!1404674 (= c!230982 lt!468647)))

(assert (=> b!1404674 (= lt!468647 (not (contains!2813 (usedCharacters!288 (regex!2477 (rule!4240 t1!34))) lt!468676)))))

(declare-fun b!1404675 () Bool)

(declare-fun res!635719 () Bool)

(assert (=> b!1404675 (=> res!635719 e!896754)))

(assert (=> b!1404675 (= res!635719 (not (contains!2813 lt!468672 lt!468675)))))

(declare-fun b!1404676 () Bool)

(declare-fun res!635726 () Bool)

(assert (=> b!1404676 (=> (not res!635726) (not e!896768))))

(declare-fun rulesInvariant!2042 (LexerInterface!2172 List!14362) Bool)

(assert (=> b!1404676 (= res!635726 (rulesInvariant!2042 thiss!19762 rules!2550))))

(declare-fun b!1404677 () Bool)

(declare-fun res!635742 () Bool)

(assert (=> b!1404677 (=> res!635742 e!896770)))

(declare-datatypes ((IArray!9435 0))(
  ( (IArray!9436 (innerList!4775 List!14363)) )
))
(declare-datatypes ((Conc!4715 0))(
  ( (Node!4715 (left!12207 Conc!4715) (right!12537 Conc!4715) (csize!9660 Int) (cheight!4926 Int)) (Leaf!7150 (xs!7442 IArray!9435) (csize!9661 Int)) (Empty!4715) )
))
(declare-datatypes ((BalanceConc!9370 0))(
  ( (BalanceConc!9371 (c!230986 Conc!4715)) )
))
(declare-datatypes ((tuple2!13926 0))(
  ( (tuple2!13927 (_1!7849 BalanceConc!9370) (_2!7849 BalanceConc!9368)) )
))
(declare-fun lt!468656 () tuple2!13926)

(declare-fun isEmpty!8698 (BalanceConc!9368) Bool)

(assert (=> b!1404677 (= res!635742 (not (isEmpty!8698 (_2!7849 lt!468656))))))

(declare-fun b!1404678 () Bool)

(declare-fun res!635731 () Bool)

(assert (=> b!1404678 (=> (not res!635731) (not e!896768))))

(assert (=> b!1404678 (= res!635731 (not (= (isSeparator!2477 (rule!4240 t1!34)) (isSeparator!2477 (rule!4240 t2!34)))))))

(declare-fun b!1404679 () Bool)

(assert (=> b!1404679 (= e!896767 e!896770)))

(declare-fun res!635732 () Bool)

(assert (=> b!1404679 (=> res!635732 e!896770)))

(declare-fun list!5582 (BalanceConc!9370) List!14363)

(assert (=> b!1404679 (= res!635732 (not (= (list!5582 (_1!7849 lt!468656)) lt!468662)))))

(assert (=> b!1404679 (= lt!468662 (Cons!14297 t1!34 Nil!14297))))

(declare-fun lex!997 (LexerInterface!2172 List!14362 BalanceConc!9368) tuple2!13926)

(assert (=> b!1404679 (= lt!468656 (lex!997 thiss!19762 rules!2550 lt!468666))))

(declare-fun print!936 (LexerInterface!2172 BalanceConc!9370) BalanceConc!9368)

(declare-fun singletonSeq!1142 (Token!4616) BalanceConc!9370)

(assert (=> b!1404679 (= lt!468666 (print!936 thiss!19762 (singletonSeq!1142 t1!34)))))

(declare-fun getWitness!487 (List!14362 Int) Rule!4754)

(assert (=> b!1404679 (= lt!468659 (getWitness!487 rules!2550 lambda!61862))))

(assert (=> b!1404680 (= e!896754 e!896761)))

(declare-fun res!635722 () Bool)

(assert (=> b!1404680 (=> res!635722 e!896761)))

(declare-fun exists!599 (List!14364 Int) Bool)

(assert (=> b!1404680 (= res!635722 (not (exists!599 (map!3176 rules!2550 lambda!61860) lambda!61861)))))

(declare-fun lt!468673 () List!14364)

(assert (=> b!1404680 (exists!599 lt!468673 lambda!61861)))

(declare-fun lt!468653 () Unit!20647)

(declare-fun matchRGenUnionSpec!202 (Regex!3791 List!14364 List!14360) Unit!20647)

(assert (=> b!1404680 (= lt!468653 (matchRGenUnionSpec!202 lt!468667 lt!468673 lt!468657))))

(assert (=> b!1404680 (= lt!468673 (map!3176 rules!2550 lambda!61860))))

(declare-fun b!1404681 () Bool)

(declare-fun res!635715 () Bool)

(assert (=> b!1404681 (=> res!635715 e!896764)))

(assert (=> b!1404681 (= res!635715 (not (contains!2814 rules!2550 lt!468659)))))

(declare-fun b!1404682 () Bool)

(declare-fun res!635741 () Bool)

(assert (=> b!1404682 (=> (not res!635741) (not e!896755))))

(declare-fun sepAndNonSepRulesDisjointChars!850 (List!14362 List!14362) Bool)

(assert (=> b!1404682 (= res!635741 (sepAndNonSepRulesDisjointChars!850 rules!2550 rules!2550))))

(declare-fun tp!399259 () Bool)

(declare-fun b!1404683 () Bool)

(assert (=> b!1404683 (= e!896760 (and tp!399259 (inv!18597 (tag!2739 (h!19697 rules!2550))) (inv!18601 (transformation!2477 (h!19697 rules!2550))) e!896775))))

(declare-fun b!1404684 () Bool)

(declare-fun res!635738 () Bool)

(assert (=> b!1404684 (=> res!635738 e!896758)))

(declare-fun lt!468671 () tuple2!13926)

(assert (=> b!1404684 (= res!635738 (not (isEmpty!8698 (_2!7849 lt!468671))))))

(assert (=> b!1404685 (= e!896779 (and tp!399261 tp!399252))))

(declare-fun b!1404686 () Bool)

(declare-fun res!635716 () Bool)

(assert (=> b!1404686 (=> (not res!635716) (not e!896768))))

(declare-fun isEmpty!8699 (List!14362) Bool)

(assert (=> b!1404686 (= res!635716 (not (isEmpty!8699 rules!2550)))))

(declare-fun b!1404687 () Bool)

(declare-fun res!635723 () Bool)

(assert (=> b!1404687 (=> res!635723 e!896754)))

(assert (=> b!1404687 (= res!635723 (not (contains!2813 lt!468657 lt!468675)))))

(declare-fun b!1404688 () Bool)

(declare-fun res!635749 () Bool)

(assert (=> b!1404688 (=> res!635749 e!896770)))

(assert (=> b!1404688 (= res!635749 (not (contains!2814 rules!2550 (rule!4240 t1!34))))))

(declare-fun b!1404689 () Bool)

(assert (=> b!1404689 (= e!896770 e!896758)))

(declare-fun res!635748 () Bool)

(assert (=> b!1404689 (=> res!635748 e!896758)))

(assert (=> b!1404689 (= res!635748 (not (= (list!5582 (_1!7849 lt!468671)) lt!468660)))))

(assert (=> b!1404689 (= lt!468660 (Cons!14297 t2!34 Nil!14297))))

(assert (=> b!1404689 (= lt!468671 (lex!997 thiss!19762 rules!2550 lt!468650))))

(assert (=> b!1404689 (= lt!468650 (print!936 thiss!19762 (singletonSeq!1142 t2!34)))))

(assert (= (and start!128054 res!635745) b!1404686))

(assert (= (and b!1404686 res!635716) b!1404676))

(assert (= (and b!1404676 res!635726) b!1404651))

(assert (= (and b!1404651 res!635714) b!1404644))

(assert (= (and b!1404644 res!635721) b!1404678))

(assert (= (and b!1404678 res!635731) b!1404642))

(assert (= (and b!1404642 res!635725) b!1404682))

(assert (= (and b!1404682 res!635741) b!1404650))

(assert (= (and b!1404650 res!635727) b!1404671))

(assert (= (and b!1404671 res!635734) b!1404669))

(assert (= (and b!1404669 (not res!635739)) b!1404645))

(assert (= (and b!1404645 (not res!635733)) b!1404641))

(assert (= (and b!1404641 (not res!635740)) b!1404664))

(assert (= (and b!1404664 (not res!635720)) b!1404675))

(assert (= (and b!1404675 (not res!635719)) b!1404687))

(assert (= (and b!1404687 (not res!635723)) b!1404658))

(assert (= (and b!1404658 (not res!635718)) b!1404680))

(assert (= (and b!1404680 (not res!635722)) b!1404672))

(assert (= (and b!1404672 (not res!635747)) b!1404649))

(assert (= (and b!1404649 (not res!635728)) b!1404679))

(assert (= (and b!1404679 (not res!635732)) b!1404677))

(assert (= (and b!1404677 (not res!635742)) b!1404662))

(assert (= (and b!1404662 (not res!635717)) b!1404667))

(assert (= (and b!1404667 (not res!635737)) b!1404688))

(assert (= (and b!1404688 (not res!635749)) b!1404689))

(assert (= (and b!1404689 (not res!635748)) b!1404684))

(assert (= (and b!1404684 (not res!635738)) b!1404659))

(assert (= (and b!1404659 (not res!635744)) b!1404673))

(assert (= (and b!1404673 (not res!635730)) b!1404652))

(assert (= (and b!1404652 (not res!635729)) b!1404681))

(assert (= (and b!1404681 (not res!635715)) b!1404660))

(assert (= (and b!1404660 (not res!635746)) b!1404655))

(assert (= (and b!1404655 (not res!635736)) b!1404674))

(assert (= (and b!1404674 c!230982) b!1404653))

(assert (= (and b!1404674 (not c!230982)) b!1404646))

(assert (= (and b!1404674 (not res!635724)) b!1404648))

(assert (= (and b!1404648 c!230983) b!1404643))

(assert (= (and b!1404648 (not c!230983)) b!1404654))

(assert (= (and b!1404648 (not res!635743)) b!1404647))

(assert (= (and b!1404647 (not res!635735)) b!1404661))

(assert (= b!1404683 b!1404663))

(assert (= b!1404668 b!1404683))

(assert (= (and start!128054 ((_ is Cons!14296) rules!2550)) b!1404668))

(assert (= b!1404657 b!1404685))

(assert (= b!1404670 b!1404657))

(assert (= start!128054 b!1404670))

(assert (= b!1404656 b!1404665))

(assert (= b!1404666 b!1404656))

(assert (= start!128054 b!1404666))

(declare-fun m!1582009 () Bool)

(assert (=> b!1404641 m!1582009))

(declare-fun m!1582011 () Bool)

(assert (=> b!1404641 m!1582011))

(declare-fun m!1582013 () Bool)

(assert (=> b!1404653 m!1582013))

(assert (=> b!1404653 m!1582013))

(declare-fun m!1582015 () Bool)

(assert (=> b!1404653 m!1582015))

(declare-fun m!1582017 () Bool)

(assert (=> b!1404688 m!1582017))

(declare-fun m!1582019 () Bool)

(assert (=> b!1404660 m!1582019))

(declare-fun m!1582021 () Bool)

(assert (=> b!1404660 m!1582021))

(declare-fun m!1582023 () Bool)

(assert (=> b!1404660 m!1582023))

(declare-fun m!1582025 () Bool)

(assert (=> b!1404660 m!1582025))

(declare-fun m!1582027 () Bool)

(assert (=> b!1404643 m!1582027))

(assert (=> b!1404643 m!1582027))

(declare-fun m!1582029 () Bool)

(assert (=> b!1404643 m!1582029))

(declare-fun m!1582031 () Bool)

(assert (=> b!1404645 m!1582031))

(assert (=> b!1404645 m!1582031))

(declare-fun m!1582033 () Bool)

(assert (=> b!1404645 m!1582033))

(declare-fun m!1582035 () Bool)

(assert (=> b!1404645 m!1582035))

(declare-fun m!1582037 () Bool)

(assert (=> b!1404656 m!1582037))

(declare-fun m!1582039 () Bool)

(assert (=> b!1404656 m!1582039))

(declare-fun m!1582041 () Bool)

(assert (=> b!1404659 m!1582041))

(assert (=> b!1404659 m!1582041))

(declare-fun m!1582043 () Bool)

(assert (=> b!1404659 m!1582043))

(declare-fun m!1582045 () Bool)

(assert (=> b!1404649 m!1582045))

(assert (=> b!1404649 m!1582045))

(declare-fun m!1582047 () Bool)

(assert (=> b!1404649 m!1582047))

(declare-fun m!1582049 () Bool)

(assert (=> b!1404679 m!1582049))

(declare-fun m!1582051 () Bool)

(assert (=> b!1404679 m!1582051))

(declare-fun m!1582053 () Bool)

(assert (=> b!1404679 m!1582053))

(assert (=> b!1404679 m!1582051))

(declare-fun m!1582055 () Bool)

(assert (=> b!1404679 m!1582055))

(declare-fun m!1582057 () Bool)

(assert (=> b!1404679 m!1582057))

(declare-fun m!1582059 () Bool)

(assert (=> b!1404642 m!1582059))

(declare-fun m!1582061 () Bool)

(assert (=> b!1404642 m!1582061))

(declare-fun m!1582063 () Bool)

(assert (=> b!1404671 m!1582063))

(declare-fun m!1582065 () Bool)

(assert (=> b!1404671 m!1582065))

(declare-fun m!1582067 () Bool)

(assert (=> b!1404671 m!1582067))

(declare-fun m!1582069 () Bool)

(assert (=> b!1404671 m!1582069))

(declare-fun m!1582071 () Bool)

(assert (=> b!1404671 m!1582071))

(declare-fun m!1582073 () Bool)

(assert (=> b!1404671 m!1582073))

(declare-fun m!1582075 () Bool)

(assert (=> b!1404677 m!1582075))

(declare-fun m!1582077 () Bool)

(assert (=> b!1404684 m!1582077))

(declare-fun m!1582079 () Bool)

(assert (=> b!1404658 m!1582079))

(declare-fun m!1582081 () Bool)

(assert (=> b!1404650 m!1582081))

(declare-fun m!1582083 () Bool)

(assert (=> b!1404673 m!1582083))

(declare-fun m!1582085 () Bool)

(assert (=> b!1404673 m!1582085))

(declare-fun m!1582087 () Bool)

(assert (=> b!1404667 m!1582087))

(declare-fun m!1582089 () Bool)

(assert (=> b!1404687 m!1582089))

(declare-fun m!1582091 () Bool)

(assert (=> b!1404675 m!1582091))

(declare-fun m!1582093 () Bool)

(assert (=> b!1404666 m!1582093))

(declare-fun m!1582095 () Bool)

(assert (=> b!1404686 m!1582095))

(declare-fun m!1582097 () Bool)

(assert (=> b!1404651 m!1582097))

(declare-fun m!1582099 () Bool)

(assert (=> b!1404689 m!1582099))

(declare-fun m!1582101 () Bool)

(assert (=> b!1404689 m!1582101))

(declare-fun m!1582103 () Bool)

(assert (=> b!1404689 m!1582103))

(assert (=> b!1404689 m!1582103))

(declare-fun m!1582105 () Bool)

(assert (=> b!1404689 m!1582105))

(declare-fun m!1582107 () Bool)

(assert (=> b!1404644 m!1582107))

(declare-fun m!1582109 () Bool)

(assert (=> b!1404680 m!1582109))

(declare-fun m!1582111 () Bool)

(assert (=> b!1404680 m!1582111))

(declare-fun m!1582113 () Bool)

(assert (=> b!1404680 m!1582113))

(assert (=> b!1404680 m!1582113))

(assert (=> b!1404680 m!1582113))

(declare-fun m!1582115 () Bool)

(assert (=> b!1404680 m!1582115))

(declare-fun m!1582117 () Bool)

(assert (=> b!1404652 m!1582117))

(declare-fun m!1582119 () Bool)

(assert (=> b!1404676 m!1582119))

(declare-fun m!1582121 () Bool)

(assert (=> b!1404648 m!1582121))

(assert (=> b!1404648 m!1582121))

(declare-fun m!1582123 () Bool)

(assert (=> b!1404648 m!1582123))

(declare-fun m!1582125 () Bool)

(assert (=> b!1404681 m!1582125))

(declare-fun m!1582127 () Bool)

(assert (=> b!1404670 m!1582127))

(declare-fun m!1582129 () Bool)

(assert (=> b!1404657 m!1582129))

(declare-fun m!1582131 () Bool)

(assert (=> b!1404657 m!1582131))

(assert (=> b!1404672 m!1582113))

(assert (=> b!1404672 m!1582113))

(declare-fun m!1582133 () Bool)

(assert (=> b!1404672 m!1582133))

(assert (=> b!1404672 m!1582113))

(assert (=> b!1404672 m!1582113))

(declare-fun m!1582135 () Bool)

(assert (=> b!1404672 m!1582135))

(declare-fun m!1582137 () Bool)

(assert (=> b!1404669 m!1582137))

(assert (=> b!1404669 m!1582137))

(declare-fun m!1582139 () Bool)

(assert (=> b!1404669 m!1582139))

(declare-fun m!1582141 () Bool)

(assert (=> b!1404682 m!1582141))

(declare-fun m!1582143 () Bool)

(assert (=> b!1404664 m!1582143))

(declare-fun m!1582145 () Bool)

(assert (=> b!1404674 m!1582145))

(assert (=> b!1404674 m!1582145))

(declare-fun m!1582147 () Bool)

(assert (=> b!1404674 m!1582147))

(declare-fun m!1582149 () Bool)

(assert (=> b!1404683 m!1582149))

(declare-fun m!1582151 () Bool)

(assert (=> b!1404683 m!1582151))

(declare-fun m!1582153 () Bool)

(assert (=> b!1404655 m!1582153))

(declare-fun m!1582155 () Bool)

(assert (=> b!1404661 m!1582155))

(declare-fun m!1582157 () Bool)

(assert (=> b!1404661 m!1582157))

(assert (=> b!1404661 m!1582157))

(declare-fun m!1582159 () Bool)

(assert (=> b!1404661 m!1582159))

(declare-fun m!1582161 () Bool)

(assert (=> b!1404661 m!1582161))

(declare-fun m!1582163 () Bool)

(assert (=> b!1404662 m!1582163))

(assert (=> b!1404662 m!1582163))

(declare-fun m!1582165 () Bool)

(assert (=> b!1404662 m!1582165))

(declare-fun m!1582167 () Bool)

(assert (=> start!128054 m!1582167))

(declare-fun m!1582169 () Bool)

(assert (=> start!128054 m!1582169))

(check-sat (not b!1404648) (not b!1404684) (not b!1404668) (not b!1404683) (not b!1404682) (not b!1404643) (not b!1404689) (not b!1404675) (not b_next!34989) (not b_next!34981) (not b!1404652) (not b!1404687) (not b!1404688) (not b!1404676) (not b!1404677) (not b!1404664) (not b!1404670) (not b!1404660) (not b!1404641) (not b!1404679) (not b!1404659) (not b!1404650) (not b!1404662) (not b!1404669) (not start!128054) (not b!1404667) (not b!1404657) b_and!94055 (not b!1404658) (not b_next!34985) (not b!1404655) (not b_next!34979) (not b!1404672) (not b!1404644) b_and!94061 (not b!1404680) (not b!1404686) (not b!1404645) (not b_next!34983) (not b!1404666) (not b!1404656) (not b!1404653) (not b!1404649) b_and!94057 (not b!1404681) (not b!1404642) (not b!1404671) b_and!94059 (not b!1404673) b_and!94053 b_and!94051 (not b_next!34987) (not b!1404651) (not b!1404674) (not b!1404661))
(check-sat (not b_next!34983) b_and!94057 (not b_next!34987) (not b_next!34989) (not b_next!34981) b_and!94055 (not b_next!34985) (not b_next!34979) b_and!94061 b_and!94059 b_and!94053 b_and!94051)
(get-model)

(declare-fun d!401271 () Bool)

(declare-fun lt!468679 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2126 (List!14362) (InoxSet Rule!4754))

(assert (=> d!401271 (= lt!468679 (select (content!2126 rules!2550) lt!468659))))

(declare-fun e!896785 () Bool)

(assert (=> d!401271 (= lt!468679 e!896785)))

(declare-fun res!635760 () Bool)

(assert (=> d!401271 (=> (not res!635760) (not e!896785))))

(assert (=> d!401271 (= res!635760 ((_ is Cons!14296) rules!2550))))

(assert (=> d!401271 (= (contains!2814 rules!2550 lt!468659) lt!468679)))

(declare-fun b!1404704 () Bool)

(declare-fun e!896786 () Bool)

(assert (=> b!1404704 (= e!896785 e!896786)))

(declare-fun res!635761 () Bool)

(assert (=> b!1404704 (=> res!635761 e!896786)))

(assert (=> b!1404704 (= res!635761 (= (h!19697 rules!2550) lt!468659))))

(declare-fun b!1404705 () Bool)

(assert (=> b!1404705 (= e!896786 (contains!2814 (t!122995 rules!2550) lt!468659))))

(assert (= (and d!401271 res!635760) b!1404704))

(assert (= (and b!1404704 (not res!635761)) b!1404705))

(declare-fun m!1582171 () Bool)

(assert (=> d!401271 m!1582171))

(declare-fun m!1582173 () Bool)

(assert (=> d!401271 m!1582173))

(declare-fun m!1582175 () Bool)

(assert (=> b!1404705 m!1582175))

(assert (=> b!1404681 d!401271))

(declare-fun b!1404740 () Bool)

(declare-fun res!635792 () Bool)

(declare-fun e!896807 () Bool)

(assert (=> b!1404740 (=> (not res!635792) (not e!896807))))

(declare-fun call!93640 () Bool)

(assert (=> b!1404740 (= res!635792 (not call!93640))))

(declare-fun b!1404741 () Bool)

(declare-fun e!896810 () Bool)

(declare-fun derivativeStep!993 (Regex!3791 C!7872) Regex!3791)

(declare-fun tail!2040 (List!14360) List!14360)

(assert (=> b!1404741 (= e!896810 (matchR!1782 (derivativeStep!993 (regex!2477 (rule!4240 t1!34)) (head!2611 lt!468670)) (tail!2040 lt!468670)))))

(declare-fun b!1404742 () Bool)

(declare-fun res!635791 () Bool)

(assert (=> b!1404742 (=> (not res!635791) (not e!896807))))

(declare-fun isEmpty!8703 (List!14360) Bool)

(assert (=> b!1404742 (= res!635791 (isEmpty!8703 (tail!2040 lt!468670)))))

(declare-fun b!1404743 () Bool)

(declare-fun e!896811 () Bool)

(declare-fun lt!468685 () Bool)

(assert (=> b!1404743 (= e!896811 (= lt!468685 call!93640))))

(declare-fun b!1404744 () Bool)

(declare-fun e!896812 () Bool)

(declare-fun e!896813 () Bool)

(assert (=> b!1404744 (= e!896812 e!896813)))

(declare-fun res!635796 () Bool)

(assert (=> b!1404744 (=> res!635796 e!896813)))

(assert (=> b!1404744 (= res!635796 call!93640)))

(declare-fun b!1404745 () Bool)

(declare-fun nullable!1234 (Regex!3791) Bool)

(assert (=> b!1404745 (= e!896810 (nullable!1234 (regex!2477 (rule!4240 t1!34))))))

(declare-fun b!1404746 () Bool)

(declare-fun res!635790 () Bool)

(declare-fun e!896808 () Bool)

(assert (=> b!1404746 (=> res!635790 e!896808)))

(assert (=> b!1404746 (= res!635790 (not ((_ is ElementMatch!3791) (regex!2477 (rule!4240 t1!34)))))))

(declare-fun e!896809 () Bool)

(assert (=> b!1404746 (= e!896809 e!896808)))

(declare-fun d!401273 () Bool)

(assert (=> d!401273 e!896811))

(declare-fun c!230995 () Bool)

(assert (=> d!401273 (= c!230995 ((_ is EmptyExpr!3791) (regex!2477 (rule!4240 t1!34))))))

(assert (=> d!401273 (= lt!468685 e!896810)))

(declare-fun c!230993 () Bool)

(assert (=> d!401273 (= c!230993 (isEmpty!8703 lt!468670))))

(assert (=> d!401273 (validRegex!1661 (regex!2477 (rule!4240 t1!34)))))

(assert (=> d!401273 (= (matchR!1782 (regex!2477 (rule!4240 t1!34)) lt!468670) lt!468685)))

(declare-fun b!1404747 () Bool)

(assert (=> b!1404747 (= e!896811 e!896809)))

(declare-fun c!230994 () Bool)

(assert (=> b!1404747 (= c!230994 ((_ is EmptyLang!3791) (regex!2477 (rule!4240 t1!34))))))

(declare-fun b!1404748 () Bool)

(declare-fun res!635793 () Bool)

(assert (=> b!1404748 (=> res!635793 e!896813)))

(assert (=> b!1404748 (= res!635793 (not (isEmpty!8703 (tail!2040 lt!468670))))))

(declare-fun b!1404749 () Bool)

(assert (=> b!1404749 (= e!896809 (not lt!468685))))

(declare-fun b!1404750 () Bool)

(assert (=> b!1404750 (= e!896807 (= (head!2611 lt!468670) (c!230985 (regex!2477 (rule!4240 t1!34)))))))

(declare-fun b!1404751 () Bool)

(declare-fun res!635794 () Bool)

(assert (=> b!1404751 (=> res!635794 e!896808)))

(assert (=> b!1404751 (= res!635794 e!896807)))

(declare-fun res!635795 () Bool)

(assert (=> b!1404751 (=> (not res!635795) (not e!896807))))

(assert (=> b!1404751 (= res!635795 lt!468685)))

(declare-fun b!1404752 () Bool)

(assert (=> b!1404752 (= e!896808 e!896812)))

(declare-fun res!635789 () Bool)

(assert (=> b!1404752 (=> (not res!635789) (not e!896812))))

(assert (=> b!1404752 (= res!635789 (not lt!468685))))

(declare-fun bm!93635 () Bool)

(assert (=> bm!93635 (= call!93640 (isEmpty!8703 lt!468670))))

(declare-fun b!1404753 () Bool)

(assert (=> b!1404753 (= e!896813 (not (= (head!2611 lt!468670) (c!230985 (regex!2477 (rule!4240 t1!34))))))))

(assert (= (and d!401273 c!230993) b!1404745))

(assert (= (and d!401273 (not c!230993)) b!1404741))

(assert (= (and d!401273 c!230995) b!1404743))

(assert (= (and d!401273 (not c!230995)) b!1404747))

(assert (= (and b!1404747 c!230994) b!1404749))

(assert (= (and b!1404747 (not c!230994)) b!1404746))

(assert (= (and b!1404746 (not res!635790)) b!1404751))

(assert (= (and b!1404751 res!635795) b!1404740))

(assert (= (and b!1404740 res!635792) b!1404742))

(assert (= (and b!1404742 res!635791) b!1404750))

(assert (= (and b!1404751 (not res!635794)) b!1404752))

(assert (= (and b!1404752 res!635789) b!1404744))

(assert (= (and b!1404744 (not res!635796)) b!1404748))

(assert (= (and b!1404748 (not res!635793)) b!1404753))

(assert (= (or b!1404743 b!1404740 b!1404744) bm!93635))

(declare-fun m!1582183 () Bool)

(assert (=> bm!93635 m!1582183))

(assert (=> b!1404741 m!1582013))

(assert (=> b!1404741 m!1582013))

(declare-fun m!1582185 () Bool)

(assert (=> b!1404741 m!1582185))

(declare-fun m!1582187 () Bool)

(assert (=> b!1404741 m!1582187))

(assert (=> b!1404741 m!1582185))

(assert (=> b!1404741 m!1582187))

(declare-fun m!1582189 () Bool)

(assert (=> b!1404741 m!1582189))

(assert (=> b!1404750 m!1582013))

(assert (=> b!1404753 m!1582013))

(assert (=> b!1404742 m!1582187))

(assert (=> b!1404742 m!1582187))

(declare-fun m!1582191 () Bool)

(assert (=> b!1404742 m!1582191))

(declare-fun m!1582193 () Bool)

(assert (=> b!1404745 m!1582193))

(assert (=> d!401273 m!1582183))

(declare-fun m!1582195 () Bool)

(assert (=> d!401273 m!1582195))

(assert (=> b!1404748 m!1582187))

(assert (=> b!1404748 m!1582187))

(assert (=> b!1404748 m!1582191))

(assert (=> b!1404660 d!401273))

(declare-fun d!401279 () Bool)

(declare-fun dynLambda!6618 (Int Rule!4754) Bool)

(assert (=> d!401279 (dynLambda!6618 lambda!61863 (rule!4240 t2!34))))

(declare-fun lt!468693 () Unit!20647)

(declare-fun choose!8673 (List!14362 Int Rule!4754) Unit!20647)

(assert (=> d!401279 (= lt!468693 (choose!8673 rules!2550 lambda!61863 (rule!4240 t2!34)))))

(declare-fun e!896824 () Bool)

(assert (=> d!401279 e!896824))

(declare-fun res!635807 () Bool)

(assert (=> d!401279 (=> (not res!635807) (not e!896824))))

(declare-fun forall!3464 (List!14362 Int) Bool)

(assert (=> d!401279 (= res!635807 (forall!3464 rules!2550 lambda!61863))))

(assert (=> d!401279 (= (forallContained!672 rules!2550 lambda!61863 (rule!4240 t2!34)) lt!468693)))

(declare-fun b!1404770 () Bool)

(assert (=> b!1404770 (= e!896824 (contains!2814 rules!2550 (rule!4240 t2!34)))))

(assert (= (and d!401279 res!635807) b!1404770))

(declare-fun b_lambda!44227 () Bool)

(assert (=> (not b_lambda!44227) (not d!401279)))

(declare-fun m!1582217 () Bool)

(assert (=> d!401279 m!1582217))

(declare-fun m!1582219 () Bool)

(assert (=> d!401279 m!1582219))

(declare-fun m!1582221 () Bool)

(assert (=> d!401279 m!1582221))

(assert (=> b!1404770 m!1582117))

(assert (=> b!1404660 d!401279))

(declare-fun d!401287 () Bool)

(assert (=> d!401287 (dynLambda!6618 lambda!61863 (rule!4240 t1!34))))

(declare-fun lt!468695 () Unit!20647)

(assert (=> d!401287 (= lt!468695 (choose!8673 rules!2550 lambda!61863 (rule!4240 t1!34)))))

(declare-fun e!896826 () Bool)

(assert (=> d!401287 e!896826))

(declare-fun res!635809 () Bool)

(assert (=> d!401287 (=> (not res!635809) (not e!896826))))

(assert (=> d!401287 (= res!635809 (forall!3464 rules!2550 lambda!61863))))

(assert (=> d!401287 (= (forallContained!672 rules!2550 lambda!61863 (rule!4240 t1!34)) lt!468695)))

(declare-fun b!1404772 () Bool)

(assert (=> b!1404772 (= e!896826 (contains!2814 rules!2550 (rule!4240 t1!34)))))

(assert (= (and d!401287 res!635809) b!1404772))

(declare-fun b_lambda!44229 () Bool)

(assert (=> (not b_lambda!44229) (not d!401287)))

(declare-fun m!1582223 () Bool)

(assert (=> d!401287 m!1582223))

(declare-fun m!1582225 () Bool)

(assert (=> d!401287 m!1582225))

(assert (=> d!401287 m!1582221))

(assert (=> b!1404772 m!1582017))

(assert (=> b!1404660 d!401287))

(declare-fun d!401289 () Bool)

(assert (=> d!401289 (dynLambda!6618 lambda!61863 lt!468659)))

(declare-fun lt!468698 () Unit!20647)

(assert (=> d!401289 (= lt!468698 (choose!8673 rules!2550 lambda!61863 lt!468659))))

(declare-fun e!896827 () Bool)

(assert (=> d!401289 e!896827))

(declare-fun res!635810 () Bool)

(assert (=> d!401289 (=> (not res!635810) (not e!896827))))

(assert (=> d!401289 (= res!635810 (forall!3464 rules!2550 lambda!61863))))

(assert (=> d!401289 (= (forallContained!672 rules!2550 lambda!61863 lt!468659) lt!468698)))

(declare-fun b!1404773 () Bool)

(assert (=> b!1404773 (= e!896827 (contains!2814 rules!2550 lt!468659))))

(assert (= (and d!401289 res!635810) b!1404773))

(declare-fun b_lambda!44231 () Bool)

(assert (=> (not b_lambda!44231) (not d!401289)))

(declare-fun m!1582227 () Bool)

(assert (=> d!401289 m!1582227))

(declare-fun m!1582229 () Bool)

(assert (=> d!401289 m!1582229))

(assert (=> d!401289 m!1582221))

(assert (=> b!1404773 m!1582125))

(assert (=> b!1404660 d!401289))

(declare-fun b!1404813 () Bool)

(declare-fun e!896854 () Bool)

(declare-fun lt!468718 () tuple2!13922)

(declare-fun isEmpty!8704 (List!14363) Bool)

(assert (=> b!1404813 (= e!896854 (not (isEmpty!8704 (_1!7847 lt!468718))))))

(declare-fun b!1404814 () Bool)

(declare-fun e!896852 () Bool)

(assert (=> b!1404814 (= e!896852 e!896854)))

(declare-fun res!635819 () Bool)

(declare-fun size!11766 (List!14360) Int)

(assert (=> b!1404814 (= res!635819 (< (size!11766 (_2!7847 lt!468718)) (size!11766 (list!5581 lt!468650))))))

(assert (=> b!1404814 (=> (not res!635819) (not e!896854))))

(declare-fun d!401291 () Bool)

(assert (=> d!401291 e!896852))

(declare-fun c!231012 () Bool)

(declare-fun size!11767 (List!14363) Int)

(assert (=> d!401291 (= c!231012 (> (size!11767 (_1!7847 lt!468718)) 0))))

(declare-fun e!896853 () tuple2!13922)

(assert (=> d!401291 (= lt!468718 e!896853)))

(declare-fun c!231013 () Bool)

(declare-fun lt!468719 () Option!2740)

(assert (=> d!401291 (= c!231013 ((_ is Some!2739) lt!468719))))

(assert (=> d!401291 (= lt!468719 (maxPrefix!1146 thiss!19762 rules!2550 (list!5581 lt!468650)))))

(assert (=> d!401291 (= (lexList!686 thiss!19762 rules!2550 (list!5581 lt!468650)) lt!468718)))

(declare-fun b!1404815 () Bool)

(assert (=> b!1404815 (= e!896852 (= (_2!7847 lt!468718) (list!5581 lt!468650)))))

(declare-fun b!1404816 () Bool)

(declare-fun lt!468720 () tuple2!13922)

(assert (=> b!1404816 (= e!896853 (tuple2!13923 (Cons!14297 (_1!7848 (v!21691 lt!468719)) (_1!7847 lt!468720)) (_2!7847 lt!468720)))))

(assert (=> b!1404816 (= lt!468720 (lexList!686 thiss!19762 rules!2550 (_2!7848 (v!21691 lt!468719))))))

(declare-fun b!1404817 () Bool)

(assert (=> b!1404817 (= e!896853 (tuple2!13923 Nil!14297 (list!5581 lt!468650)))))

(assert (= (and d!401291 c!231013) b!1404816))

(assert (= (and d!401291 (not c!231013)) b!1404817))

(assert (= (and d!401291 c!231012) b!1404814))

(assert (= (and d!401291 (not c!231012)) b!1404815))

(assert (= (and b!1404814 res!635819) b!1404813))

(declare-fun m!1582275 () Bool)

(assert (=> b!1404813 m!1582275))

(declare-fun m!1582277 () Bool)

(assert (=> b!1404814 m!1582277))

(assert (=> b!1404814 m!1582041))

(declare-fun m!1582279 () Bool)

(assert (=> b!1404814 m!1582279))

(declare-fun m!1582281 () Bool)

(assert (=> d!401291 m!1582281))

(assert (=> d!401291 m!1582041))

(declare-fun m!1582283 () Bool)

(assert (=> d!401291 m!1582283))

(declare-fun m!1582285 () Bool)

(assert (=> b!1404816 m!1582285))

(assert (=> b!1404659 d!401291))

(declare-fun d!401305 () Bool)

(declare-fun list!5584 (Conc!4714) List!14360)

(assert (=> d!401305 (= (list!5581 lt!468650) (list!5584 (c!230984 lt!468650)))))

(declare-fun bs!338439 () Bool)

(assert (= bs!338439 d!401305))

(declare-fun m!1582287 () Bool)

(assert (=> bs!338439 m!1582287))

(assert (=> b!1404659 d!401305))

(declare-fun b!1404843 () Bool)

(declare-fun e!896879 () Bool)

(declare-fun call!93648 () Bool)

(assert (=> b!1404843 (= e!896879 call!93648)))

(declare-fun bm!93642 () Bool)

(declare-fun call!93647 () Bool)

(declare-fun call!93649 () Bool)

(assert (=> bm!93642 (= call!93647 call!93649)))

(declare-fun b!1404844 () Bool)

(declare-fun e!896878 () Bool)

(assert (=> b!1404844 (= e!896878 e!896879)))

(declare-fun res!635838 () Bool)

(assert (=> b!1404844 (=> (not res!635838) (not e!896879))))

(assert (=> b!1404844 (= res!635838 call!93647)))

(declare-fun b!1404845 () Bool)

(declare-fun e!896877 () Bool)

(declare-fun e!896882 () Bool)

(assert (=> b!1404845 (= e!896877 e!896882)))

(declare-fun c!231018 () Bool)

(assert (=> b!1404845 (= c!231018 ((_ is Union!3791) lt!468668))))

(declare-fun bm!93643 () Bool)

(declare-fun c!231019 () Bool)

(assert (=> bm!93643 (= call!93649 (validRegex!1661 (ite c!231019 (reg!4120 lt!468668) (ite c!231018 (regOne!8095 lt!468668) (regOne!8094 lt!468668)))))))

(declare-fun d!401307 () Bool)

(declare-fun res!635837 () Bool)

(declare-fun e!896876 () Bool)

(assert (=> d!401307 (=> res!635837 e!896876)))

(assert (=> d!401307 (= res!635837 ((_ is ElementMatch!3791) lt!468668))))

(assert (=> d!401307 (= (validRegex!1661 lt!468668) e!896876)))

(declare-fun b!1404846 () Bool)

(declare-fun res!635839 () Bool)

(declare-fun e!896881 () Bool)

(assert (=> b!1404846 (=> (not res!635839) (not e!896881))))

(assert (=> b!1404846 (= res!635839 call!93647)))

(assert (=> b!1404846 (= e!896882 e!896881)))

(declare-fun b!1404847 () Bool)

(declare-fun res!635840 () Bool)

(assert (=> b!1404847 (=> res!635840 e!896878)))

(assert (=> b!1404847 (= res!635840 (not ((_ is Concat!6359) lt!468668)))))

(assert (=> b!1404847 (= e!896882 e!896878)))

(declare-fun b!1404848 () Bool)

(declare-fun e!896880 () Bool)

(assert (=> b!1404848 (= e!896880 call!93649)))

(declare-fun b!1404849 () Bool)

(assert (=> b!1404849 (= e!896877 e!896880)))

(declare-fun res!635841 () Bool)

(assert (=> b!1404849 (= res!635841 (not (nullable!1234 (reg!4120 lt!468668))))))

(assert (=> b!1404849 (=> (not res!635841) (not e!896880))))

(declare-fun bm!93644 () Bool)

(assert (=> bm!93644 (= call!93648 (validRegex!1661 (ite c!231018 (regTwo!8095 lt!468668) (regTwo!8094 lt!468668))))))

(declare-fun b!1404850 () Bool)

(assert (=> b!1404850 (= e!896881 call!93648)))

(declare-fun b!1404851 () Bool)

(assert (=> b!1404851 (= e!896876 e!896877)))

(assert (=> b!1404851 (= c!231019 ((_ is Star!3791) lt!468668))))

(assert (= (and d!401307 (not res!635837)) b!1404851))

(assert (= (and b!1404851 c!231019) b!1404849))

(assert (= (and b!1404851 (not c!231019)) b!1404845))

(assert (= (and b!1404849 res!635841) b!1404848))

(assert (= (and b!1404845 c!231018) b!1404846))

(assert (= (and b!1404845 (not c!231018)) b!1404847))

(assert (= (and b!1404846 res!635839) b!1404850))

(assert (= (and b!1404847 (not res!635840)) b!1404844))

(assert (= (and b!1404844 res!635838) b!1404843))

(assert (= (or b!1404846 b!1404844) bm!93642))

(assert (= (or b!1404850 b!1404843) bm!93644))

(assert (= (or b!1404848 bm!93642) bm!93643))

(declare-fun m!1582323 () Bool)

(assert (=> bm!93643 m!1582323))

(declare-fun m!1582325 () Bool)

(assert (=> b!1404849 m!1582325))

(declare-fun m!1582327 () Bool)

(assert (=> bm!93644 m!1582327))

(assert (=> b!1404661 d!401307))

(declare-fun d!401321 () Bool)

(declare-fun lt!468736 () Bool)

(declare-fun content!2127 (List!14360) (InoxSet C!7872))

(assert (=> d!401321 (= lt!468736 (select (content!2127 (usedCharacters!288 (regex!2477 lt!468659))) lt!468675))))

(declare-fun e!896894 () Bool)

(assert (=> d!401321 (= lt!468736 e!896894)))

(declare-fun res!635853 () Bool)

(assert (=> d!401321 (=> (not res!635853) (not e!896894))))

(assert (=> d!401321 (= res!635853 ((_ is Cons!14294) (usedCharacters!288 (regex!2477 lt!468659))))))

(assert (=> d!401321 (= (contains!2813 (usedCharacters!288 (regex!2477 lt!468659)) lt!468675) lt!468736)))

(declare-fun b!1404862 () Bool)

(declare-fun e!896893 () Bool)

(assert (=> b!1404862 (= e!896894 e!896893)))

(declare-fun res!635852 () Bool)

(assert (=> b!1404862 (=> res!635852 e!896893)))

(assert (=> b!1404862 (= res!635852 (= (h!19695 (usedCharacters!288 (regex!2477 lt!468659))) lt!468675))))

(declare-fun b!1404863 () Bool)

(assert (=> b!1404863 (= e!896893 (contains!2813 (t!122993 (usedCharacters!288 (regex!2477 lt!468659))) lt!468675))))

(assert (= (and d!401321 res!635853) b!1404862))

(assert (= (and b!1404862 (not res!635852)) b!1404863))

(assert (=> d!401321 m!1582157))

(declare-fun m!1582339 () Bool)

(assert (=> d!401321 m!1582339))

(declare-fun m!1582341 () Bool)

(assert (=> d!401321 m!1582341))

(declare-fun m!1582343 () Bool)

(assert (=> b!1404863 m!1582343))

(assert (=> b!1404661 d!401321))

(declare-fun b!1404891 () Bool)

(declare-fun e!896912 () List!14360)

(declare-fun e!896913 () List!14360)

(assert (=> b!1404891 (= e!896912 e!896913)))

(declare-fun c!231032 () Bool)

(assert (=> b!1404891 (= c!231032 ((_ is Union!3791) (regex!2477 lt!468659)))))

(declare-fun bm!93653 () Bool)

(declare-fun call!93658 () List!14360)

(assert (=> bm!93653 (= call!93658 (usedCharacters!288 (ite c!231032 (regOne!8095 (regex!2477 lt!468659)) (regTwo!8094 (regex!2477 lt!468659)))))))

(declare-fun b!1404892 () Bool)

(declare-fun call!93660 () List!14360)

(assert (=> b!1404892 (= e!896913 call!93660)))

(declare-fun call!93659 () List!14360)

(declare-fun bm!93654 () Bool)

(declare-fun c!231034 () Bool)

(assert (=> bm!93654 (= call!93659 (usedCharacters!288 (ite c!231034 (reg!4120 (regex!2477 lt!468659)) (ite c!231032 (regTwo!8095 (regex!2477 lt!468659)) (regOne!8094 (regex!2477 lt!468659))))))))

(declare-fun b!1404893 () Bool)

(assert (=> b!1404893 (= e!896912 call!93659)))

(declare-fun b!1404894 () Bool)

(declare-fun e!896915 () List!14360)

(assert (=> b!1404894 (= e!896915 (Cons!14294 (c!230985 (regex!2477 lt!468659)) Nil!14294))))

(declare-fun bm!93655 () Bool)

(declare-fun call!93661 () List!14360)

(assert (=> bm!93655 (= call!93661 call!93659)))

(declare-fun bm!93656 () Bool)

(assert (=> bm!93656 (= call!93660 (++!3718 (ite c!231032 call!93658 call!93661) (ite c!231032 call!93661 call!93658)))))

(declare-fun b!1404896 () Bool)

(assert (=> b!1404896 (= c!231034 ((_ is Star!3791) (regex!2477 lt!468659)))))

(assert (=> b!1404896 (= e!896915 e!896912)))

(declare-fun b!1404897 () Bool)

(declare-fun e!896914 () List!14360)

(assert (=> b!1404897 (= e!896914 Nil!14294)))

(declare-fun b!1404898 () Bool)

(assert (=> b!1404898 (= e!896913 call!93660)))

(declare-fun b!1404895 () Bool)

(assert (=> b!1404895 (= e!896914 e!896915)))

(declare-fun c!231033 () Bool)

(assert (=> b!1404895 (= c!231033 ((_ is ElementMatch!3791) (regex!2477 lt!468659)))))

(declare-fun d!401329 () Bool)

(declare-fun c!231031 () Bool)

(assert (=> d!401329 (= c!231031 (or ((_ is EmptyExpr!3791) (regex!2477 lt!468659)) ((_ is EmptyLang!3791) (regex!2477 lt!468659))))))

(assert (=> d!401329 (= (usedCharacters!288 (regex!2477 lt!468659)) e!896914)))

(assert (= (and d!401329 c!231031) b!1404897))

(assert (= (and d!401329 (not c!231031)) b!1404895))

(assert (= (and b!1404895 c!231033) b!1404894))

(assert (= (and b!1404895 (not c!231033)) b!1404896))

(assert (= (and b!1404896 c!231034) b!1404893))

(assert (= (and b!1404896 (not c!231034)) b!1404891))

(assert (= (and b!1404891 c!231032) b!1404898))

(assert (= (and b!1404891 (not c!231032)) b!1404892))

(assert (= (or b!1404898 b!1404892) bm!93653))

(assert (= (or b!1404898 b!1404892) bm!93655))

(assert (= (or b!1404898 b!1404892) bm!93656))

(assert (= (or b!1404893 bm!93655) bm!93654))

(declare-fun m!1582363 () Bool)

(assert (=> bm!93653 m!1582363))

(declare-fun m!1582365 () Bool)

(assert (=> bm!93654 m!1582365))

(declare-fun m!1582367 () Bool)

(assert (=> bm!93656 m!1582367))

(assert (=> b!1404661 d!401329))

(declare-fun d!401337 () Bool)

(assert (=> d!401337 (not (contains!2813 (usedCharacters!288 (regex!2477 lt!468659)) lt!468675))))

(declare-fun lt!468742 () Unit!20647)

(declare-fun choose!8676 (LexerInterface!2172 List!14362 List!14362 Rule!4754 Rule!4754 C!7872) Unit!20647)

(assert (=> d!401337 (= lt!468742 (choose!8676 thiss!19762 rules!2550 rules!2550 lt!468659 (rule!4240 t2!34) lt!468675))))

(assert (=> d!401337 (rulesInvariant!2042 thiss!19762 rules!2550)))

(assert (=> d!401337 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!24 thiss!19762 rules!2550 rules!2550 lt!468659 (rule!4240 t2!34) lt!468675) lt!468742)))

(declare-fun bs!338444 () Bool)

(assert (= bs!338444 d!401337))

(assert (=> bs!338444 m!1582157))

(assert (=> bs!338444 m!1582157))

(assert (=> bs!338444 m!1582159))

(declare-fun m!1582369 () Bool)

(assert (=> bs!338444 m!1582369))

(assert (=> bs!338444 m!1582119))

(assert (=> b!1404661 d!401337))

(declare-fun d!401339 () Bool)

(declare-fun res!635865 () Bool)

(declare-fun e!896920 () Bool)

(assert (=> d!401339 (=> res!635865 e!896920)))

(assert (=> d!401339 (= res!635865 (not ((_ is Cons!14296) rules!2550)))))

(assert (=> d!401339 (= (sepAndNonSepRulesDisjointChars!850 rules!2550 rules!2550) e!896920)))

(declare-fun b!1404903 () Bool)

(declare-fun e!896921 () Bool)

(assert (=> b!1404903 (= e!896920 e!896921)))

(declare-fun res!635866 () Bool)

(assert (=> b!1404903 (=> (not res!635866) (not e!896921))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!406 (Rule!4754 List!14362) Bool)

(assert (=> b!1404903 (= res!635866 (ruleDisjointCharsFromAllFromOtherType!406 (h!19697 rules!2550) rules!2550))))

(declare-fun b!1404904 () Bool)

(assert (=> b!1404904 (= e!896921 (sepAndNonSepRulesDisjointChars!850 rules!2550 (t!122995 rules!2550)))))

(assert (= (and d!401339 (not res!635865)) b!1404903))

(assert (= (and b!1404903 res!635866) b!1404904))

(declare-fun m!1582371 () Bool)

(assert (=> b!1404903 m!1582371))

(declare-fun m!1582373 () Bool)

(assert (=> b!1404904 m!1582373))

(assert (=> b!1404682 d!401339))

(declare-fun d!401341 () Bool)

(assert (=> d!401341 (= (inv!18597 (tag!2739 (rule!4240 t1!34))) (= (mod (str.len (value!80226 (tag!2739 (rule!4240 t1!34)))) 2) 0))))

(assert (=> b!1404657 d!401341))

(declare-fun d!401343 () Bool)

(declare-fun res!635869 () Bool)

(declare-fun e!896924 () Bool)

(assert (=> d!401343 (=> (not res!635869) (not e!896924))))

(declare-fun semiInverseModEq!964 (Int Int) Bool)

(assert (=> d!401343 (= res!635869 (semiInverseModEq!964 (toChars!3627 (transformation!2477 (rule!4240 t1!34))) (toValue!3768 (transformation!2477 (rule!4240 t1!34)))))))

(assert (=> d!401343 (= (inv!18601 (transformation!2477 (rule!4240 t1!34))) e!896924)))

(declare-fun b!1404907 () Bool)

(declare-fun equivClasses!923 (Int Int) Bool)

(assert (=> b!1404907 (= e!896924 (equivClasses!923 (toChars!3627 (transformation!2477 (rule!4240 t1!34))) (toValue!3768 (transformation!2477 (rule!4240 t1!34)))))))

(assert (= (and d!401343 res!635869) b!1404907))

(declare-fun m!1582375 () Bool)

(assert (=> d!401343 m!1582375))

(declare-fun m!1582377 () Bool)

(assert (=> b!1404907 m!1582377))

(assert (=> b!1404657 d!401343))

(declare-fun bs!338445 () Bool)

(declare-fun d!401345 () Bool)

(assert (= bs!338445 (and d!401345 b!1404680)))

(declare-fun lambda!61869 () Int)

(assert (=> bs!338445 (not (= lambda!61869 lambda!61861))))

(assert (=> d!401345 true))

(declare-fun order!8739 () Int)

(declare-fun dynLambda!6623 (Int Int) Int)

(assert (=> d!401345 (< (dynLambda!6623 order!8739 lambda!61861) (dynLambda!6623 order!8739 lambda!61869))))

(declare-fun forall!3467 (List!14364 Int) Bool)

(assert (=> d!401345 (= (exists!599 (map!3176 rules!2550 lambda!61860) lambda!61861) (not (forall!3467 (map!3176 rules!2550 lambda!61860) lambda!61869)))))

(declare-fun bs!338446 () Bool)

(assert (= bs!338446 d!401345))

(assert (=> bs!338446 m!1582113))

(declare-fun m!1582379 () Bool)

(assert (=> bs!338446 m!1582379))

(assert (=> b!1404680 d!401345))

(declare-fun bs!338447 () Bool)

(declare-fun d!401347 () Bool)

(assert (= bs!338447 (and d!401347 b!1404680)))

(declare-fun lambda!61870 () Int)

(assert (=> bs!338447 (not (= lambda!61870 lambda!61861))))

(declare-fun bs!338448 () Bool)

(assert (= bs!338448 (and d!401347 d!401345)))

(assert (=> bs!338448 (= lambda!61870 lambda!61869)))

(assert (=> d!401347 true))

(assert (=> d!401347 (< (dynLambda!6623 order!8739 lambda!61861) (dynLambda!6623 order!8739 lambda!61870))))

(assert (=> d!401347 (= (exists!599 lt!468673 lambda!61861) (not (forall!3467 lt!468673 lambda!61870)))))

(declare-fun bs!338449 () Bool)

(assert (= bs!338449 d!401347))

(declare-fun m!1582381 () Bool)

(assert (=> bs!338449 m!1582381))

(assert (=> b!1404680 d!401347))

(declare-fun bs!338450 () Bool)

(declare-fun d!401349 () Bool)

(assert (= bs!338450 (and d!401349 b!1404680)))

(declare-fun lambda!61875 () Int)

(assert (=> bs!338450 (not (= lambda!61875 lambda!61861))))

(declare-fun bs!338451 () Bool)

(assert (= bs!338451 (and d!401349 d!401345)))

(assert (=> bs!338451 (not (= lambda!61875 lambda!61869))))

(declare-fun bs!338452 () Bool)

(assert (= bs!338452 (and d!401349 d!401347)))

(assert (=> bs!338452 (not (= lambda!61875 lambda!61870))))

(declare-fun lambda!61876 () Int)

(assert (=> bs!338450 (= lambda!61876 lambda!61861)))

(assert (=> bs!338451 (not (= lambda!61876 lambda!61869))))

(assert (=> bs!338452 (not (= lambda!61876 lambda!61870))))

(declare-fun bs!338453 () Bool)

(assert (= bs!338453 d!401349))

(assert (=> bs!338453 (not (= lambda!61876 lambda!61875))))

(assert (=> d!401349 true))

(assert (=> d!401349 (= (matchR!1782 lt!468667 lt!468657) (exists!599 lt!468673 lambda!61876))))

(declare-fun lt!468745 () Unit!20647)

(declare-fun choose!8677 (Regex!3791 List!14364 List!14360) Unit!20647)

(assert (=> d!401349 (= lt!468745 (choose!8677 lt!468667 lt!468673 lt!468657))))

(assert (=> d!401349 (forall!3467 lt!468673 lambda!61875)))

(assert (=> d!401349 (= (matchRGenUnionSpec!202 lt!468667 lt!468673 lt!468657) lt!468745)))

(assert (=> bs!338453 m!1582079))

(declare-fun m!1582383 () Bool)

(assert (=> bs!338453 m!1582383))

(declare-fun m!1582385 () Bool)

(assert (=> bs!338453 m!1582385))

(declare-fun m!1582387 () Bool)

(assert (=> bs!338453 m!1582387))

(assert (=> b!1404680 d!401349))

(declare-fun d!401351 () Bool)

(declare-fun lt!468748 () List!14364)

(declare-fun size!11770 (List!14364) Int)

(declare-fun size!11771 (List!14362) Int)

(assert (=> d!401351 (= (size!11770 lt!468748) (size!11771 rules!2550))))

(declare-fun e!896929 () List!14364)

(assert (=> d!401351 (= lt!468748 e!896929)))

(declare-fun c!231038 () Bool)

(assert (=> d!401351 (= c!231038 ((_ is Nil!14296) rules!2550))))

(assert (=> d!401351 (= (map!3176 rules!2550 lambda!61860) lt!468748)))

(declare-fun b!1404916 () Bool)

(assert (=> b!1404916 (= e!896929 Nil!14298)))

(declare-fun b!1404917 () Bool)

(declare-fun $colon$colon!237 (List!14364 Regex!3791) List!14364)

(declare-fun dynLambda!6624 (Int Rule!4754) Regex!3791)

(assert (=> b!1404917 (= e!896929 ($colon$colon!237 (map!3176 (t!122995 rules!2550) lambda!61860) (dynLambda!6624 lambda!61860 (h!19697 rules!2550))))))

(assert (= (and d!401351 c!231038) b!1404916))

(assert (= (and d!401351 (not c!231038)) b!1404917))

(declare-fun b_lambda!44235 () Bool)

(assert (=> (not b_lambda!44235) (not b!1404917)))

(declare-fun m!1582389 () Bool)

(assert (=> d!401351 m!1582389))

(declare-fun m!1582391 () Bool)

(assert (=> d!401351 m!1582391))

(declare-fun m!1582393 () Bool)

(assert (=> b!1404917 m!1582393))

(declare-fun m!1582395 () Bool)

(assert (=> b!1404917 m!1582395))

(assert (=> b!1404917 m!1582393))

(assert (=> b!1404917 m!1582395))

(declare-fun m!1582397 () Bool)

(assert (=> b!1404917 m!1582397))

(assert (=> b!1404680 d!401351))

(declare-fun d!401353 () Bool)

(declare-fun lt!468751 () BalanceConc!9368)

(declare-fun printList!641 (LexerInterface!2172 List!14363) List!14360)

(assert (=> d!401353 (= (list!5581 lt!468751) (printList!641 thiss!19762 (list!5582 (singletonSeq!1142 t1!34))))))

(declare-fun printTailRec!623 (LexerInterface!2172 BalanceConc!9370 Int BalanceConc!9368) BalanceConc!9368)

(assert (=> d!401353 (= lt!468751 (printTailRec!623 thiss!19762 (singletonSeq!1142 t1!34) 0 (BalanceConc!9369 Empty!4714)))))

(assert (=> d!401353 (= (print!936 thiss!19762 (singletonSeq!1142 t1!34)) lt!468751)))

(declare-fun bs!338454 () Bool)

(assert (= bs!338454 d!401353))

(declare-fun m!1582399 () Bool)

(assert (=> bs!338454 m!1582399))

(assert (=> bs!338454 m!1582051))

(declare-fun m!1582401 () Bool)

(assert (=> bs!338454 m!1582401))

(assert (=> bs!338454 m!1582401))

(declare-fun m!1582403 () Bool)

(assert (=> bs!338454 m!1582403))

(assert (=> bs!338454 m!1582051))

(declare-fun m!1582405 () Bool)

(assert (=> bs!338454 m!1582405))

(assert (=> b!1404679 d!401353))

(declare-fun b!1404930 () Bool)

(declare-fun e!896939 () Rule!4754)

(declare-fun e!896938 () Rule!4754)

(assert (=> b!1404930 (= e!896939 e!896938)))

(declare-fun c!231043 () Bool)

(assert (=> b!1404930 (= c!231043 ((_ is Cons!14296) rules!2550))))

(declare-fun b!1404931 () Bool)

(declare-fun lt!468756 () Unit!20647)

(declare-fun Unit!20653 () Unit!20647)

(assert (=> b!1404931 (= lt!468756 Unit!20653)))

(assert (=> b!1404931 false))

(declare-fun head!2612 (List!14362) Rule!4754)

(assert (=> b!1404931 (= e!896938 (head!2612 rules!2550))))

(declare-fun b!1404933 () Bool)

(declare-fun e!896941 () Bool)

(declare-fun lt!468757 () Rule!4754)

(assert (=> b!1404933 (= e!896941 (contains!2814 rules!2550 lt!468757))))

(declare-fun b!1404934 () Bool)

(declare-fun e!896940 () Bool)

(assert (=> b!1404934 (= e!896940 (dynLambda!6618 lambda!61862 (h!19697 rules!2550)))))

(declare-fun b!1404935 () Bool)

(assert (=> b!1404935 (= e!896939 (h!19697 rules!2550))))

(declare-fun d!401355 () Bool)

(assert (=> d!401355 e!896941))

(declare-fun res!635876 () Bool)

(assert (=> d!401355 (=> (not res!635876) (not e!896941))))

(assert (=> d!401355 (= res!635876 (dynLambda!6618 lambda!61862 lt!468757))))

(assert (=> d!401355 (= lt!468757 e!896939)))

(declare-fun c!231044 () Bool)

(assert (=> d!401355 (= c!231044 e!896940)))

(declare-fun res!635877 () Bool)

(assert (=> d!401355 (=> (not res!635877) (not e!896940))))

(assert (=> d!401355 (= res!635877 ((_ is Cons!14296) rules!2550))))

(assert (=> d!401355 (exists!598 rules!2550 lambda!61862)))

(assert (=> d!401355 (= (getWitness!487 rules!2550 lambda!61862) lt!468757)))

(declare-fun b!1404932 () Bool)

(assert (=> b!1404932 (= e!896938 (getWitness!487 (t!122995 rules!2550) lambda!61862))))

(assert (= (and d!401355 res!635877) b!1404934))

(assert (= (and d!401355 c!231044) b!1404935))

(assert (= (and d!401355 (not c!231044)) b!1404930))

(assert (= (and b!1404930 c!231043) b!1404932))

(assert (= (and b!1404930 (not c!231043)) b!1404931))

(assert (= (and d!401355 res!635876) b!1404933))

(declare-fun b_lambda!44237 () Bool)

(assert (=> (not b_lambda!44237) (not b!1404934)))

(declare-fun b_lambda!44239 () Bool)

(assert (=> (not b_lambda!44239) (not d!401355)))

(declare-fun m!1582407 () Bool)

(assert (=> b!1404932 m!1582407))

(declare-fun m!1582409 () Bool)

(assert (=> d!401355 m!1582409))

(assert (=> d!401355 m!1582045))

(declare-fun m!1582411 () Bool)

(assert (=> b!1404931 m!1582411))

(declare-fun m!1582413 () Bool)

(assert (=> b!1404934 m!1582413))

(declare-fun m!1582415 () Bool)

(assert (=> b!1404933 m!1582415))

(assert (=> b!1404679 d!401355))

(declare-fun d!401357 () Bool)

(declare-fun e!896944 () Bool)

(assert (=> d!401357 e!896944))

(declare-fun res!635880 () Bool)

(assert (=> d!401357 (=> (not res!635880) (not e!896944))))

(declare-fun lt!468760 () BalanceConc!9370)

(assert (=> d!401357 (= res!635880 (= (list!5582 lt!468760) (Cons!14297 t1!34 Nil!14297)))))

(declare-fun singleton!497 (Token!4616) BalanceConc!9370)

(assert (=> d!401357 (= lt!468760 (singleton!497 t1!34))))

(assert (=> d!401357 (= (singletonSeq!1142 t1!34) lt!468760)))

(declare-fun b!1404938 () Bool)

(declare-fun isBalanced!1391 (Conc!4715) Bool)

(assert (=> b!1404938 (= e!896944 (isBalanced!1391 (c!230986 lt!468760)))))

(assert (= (and d!401357 res!635880) b!1404938))

(declare-fun m!1582417 () Bool)

(assert (=> d!401357 m!1582417))

(declare-fun m!1582419 () Bool)

(assert (=> d!401357 m!1582419))

(declare-fun m!1582421 () Bool)

(assert (=> b!1404938 m!1582421))

(assert (=> b!1404679 d!401357))

(declare-fun b!1405072 () Bool)

(declare-fun e!897017 () Bool)

(declare-fun lt!468784 () tuple2!13926)

(assert (=> b!1405072 (= e!897017 (= (_2!7849 lt!468784) lt!468666))))

(declare-fun b!1405073 () Bool)

(declare-fun res!635942 () Bool)

(declare-fun e!897016 () Bool)

(assert (=> b!1405073 (=> (not res!635942) (not e!897016))))

(assert (=> b!1405073 (= res!635942 (= (list!5582 (_1!7849 lt!468784)) (_1!7847 (lexList!686 thiss!19762 rules!2550 (list!5581 lt!468666)))))))

(declare-fun b!1405074 () Bool)

(declare-fun e!897018 () Bool)

(assert (=> b!1405074 (= e!897017 e!897018)))

(declare-fun res!635941 () Bool)

(assert (=> b!1405074 (= res!635941 (< (size!11761 (_2!7849 lt!468784)) (size!11761 lt!468666)))))

(assert (=> b!1405074 (=> (not res!635941) (not e!897018))))

(declare-fun d!401359 () Bool)

(assert (=> d!401359 e!897016))

(declare-fun res!635943 () Bool)

(assert (=> d!401359 (=> (not res!635943) (not e!897016))))

(assert (=> d!401359 (= res!635943 e!897017)))

(declare-fun c!231077 () Bool)

(declare-fun size!11772 (BalanceConc!9370) Int)

(assert (=> d!401359 (= c!231077 (> (size!11772 (_1!7849 lt!468784)) 0))))

(declare-fun lexTailRecV2!446 (LexerInterface!2172 List!14362 BalanceConc!9368 BalanceConc!9368 BalanceConc!9368 BalanceConc!9370) tuple2!13926)

(assert (=> d!401359 (= lt!468784 (lexTailRecV2!446 thiss!19762 rules!2550 lt!468666 (BalanceConc!9369 Empty!4714) lt!468666 (BalanceConc!9371 Empty!4715)))))

(assert (=> d!401359 (= (lex!997 thiss!19762 rules!2550 lt!468666) lt!468784)))

(declare-fun b!1405075 () Bool)

(assert (=> b!1405075 (= e!897016 (= (list!5581 (_2!7849 lt!468784)) (_2!7847 (lexList!686 thiss!19762 rules!2550 (list!5581 lt!468666)))))))

(declare-fun b!1405076 () Bool)

(declare-fun isEmpty!8705 (BalanceConc!9370) Bool)

(assert (=> b!1405076 (= e!897018 (not (isEmpty!8705 (_1!7849 lt!468784))))))

(assert (= (and d!401359 c!231077) b!1405074))

(assert (= (and d!401359 (not c!231077)) b!1405072))

(assert (= (and b!1405074 res!635941) b!1405076))

(assert (= (and d!401359 res!635943) b!1405073))

(assert (= (and b!1405073 res!635942) b!1405075))

(declare-fun m!1582533 () Bool)

(assert (=> b!1405075 m!1582533))

(assert (=> b!1405075 m!1582163))

(assert (=> b!1405075 m!1582163))

(assert (=> b!1405075 m!1582165))

(declare-fun m!1582535 () Bool)

(assert (=> d!401359 m!1582535))

(declare-fun m!1582537 () Bool)

(assert (=> d!401359 m!1582537))

(declare-fun m!1582539 () Bool)

(assert (=> b!1405073 m!1582539))

(assert (=> b!1405073 m!1582163))

(assert (=> b!1405073 m!1582163))

(assert (=> b!1405073 m!1582165))

(declare-fun m!1582541 () Bool)

(assert (=> b!1405074 m!1582541))

(declare-fun m!1582543 () Bool)

(assert (=> b!1405074 m!1582543))

(declare-fun m!1582545 () Bool)

(assert (=> b!1405076 m!1582545))

(assert (=> b!1404679 d!401359))

(declare-fun d!401395 () Bool)

(declare-fun list!5585 (Conc!4715) List!14363)

(assert (=> d!401395 (= (list!5582 (_1!7849 lt!468656)) (list!5585 (c!230986 (_1!7849 lt!468656))))))

(declare-fun bs!338471 () Bool)

(assert (= bs!338471 d!401395))

(declare-fun m!1582547 () Bool)

(assert (=> bs!338471 m!1582547))

(assert (=> b!1404679 d!401395))

(declare-fun b!1405077 () Bool)

(declare-fun res!635947 () Bool)

(declare-fun e!897019 () Bool)

(assert (=> b!1405077 (=> (not res!635947) (not e!897019))))

(declare-fun call!93677 () Bool)

(assert (=> b!1405077 (= res!635947 (not call!93677))))

(declare-fun b!1405078 () Bool)

(declare-fun e!897022 () Bool)

(assert (=> b!1405078 (= e!897022 (matchR!1782 (derivativeStep!993 lt!468667 (head!2611 lt!468657)) (tail!2040 lt!468657)))))

(declare-fun b!1405079 () Bool)

(declare-fun res!635946 () Bool)

(assert (=> b!1405079 (=> (not res!635946) (not e!897019))))

(assert (=> b!1405079 (= res!635946 (isEmpty!8703 (tail!2040 lt!468657)))))

(declare-fun b!1405080 () Bool)

(declare-fun e!897023 () Bool)

(declare-fun lt!468785 () Bool)

(assert (=> b!1405080 (= e!897023 (= lt!468785 call!93677))))

(declare-fun b!1405081 () Bool)

(declare-fun e!897024 () Bool)

(declare-fun e!897025 () Bool)

(assert (=> b!1405081 (= e!897024 e!897025)))

(declare-fun res!635951 () Bool)

(assert (=> b!1405081 (=> res!635951 e!897025)))

(assert (=> b!1405081 (= res!635951 call!93677)))

(declare-fun b!1405082 () Bool)

(assert (=> b!1405082 (= e!897022 (nullable!1234 lt!468667))))

(declare-fun b!1405083 () Bool)

(declare-fun res!635945 () Bool)

(declare-fun e!897020 () Bool)

(assert (=> b!1405083 (=> res!635945 e!897020)))

(assert (=> b!1405083 (= res!635945 (not ((_ is ElementMatch!3791) lt!468667)))))

(declare-fun e!897021 () Bool)

(assert (=> b!1405083 (= e!897021 e!897020)))

(declare-fun d!401397 () Bool)

(assert (=> d!401397 e!897023))

(declare-fun c!231080 () Bool)

(assert (=> d!401397 (= c!231080 ((_ is EmptyExpr!3791) lt!468667))))

(assert (=> d!401397 (= lt!468785 e!897022)))

(declare-fun c!231078 () Bool)

(assert (=> d!401397 (= c!231078 (isEmpty!8703 lt!468657))))

(assert (=> d!401397 (validRegex!1661 lt!468667)))

(assert (=> d!401397 (= (matchR!1782 lt!468667 lt!468657) lt!468785)))

(declare-fun b!1405084 () Bool)

(assert (=> b!1405084 (= e!897023 e!897021)))

(declare-fun c!231079 () Bool)

(assert (=> b!1405084 (= c!231079 ((_ is EmptyLang!3791) lt!468667))))

(declare-fun b!1405085 () Bool)

(declare-fun res!635948 () Bool)

(assert (=> b!1405085 (=> res!635948 e!897025)))

(assert (=> b!1405085 (= res!635948 (not (isEmpty!8703 (tail!2040 lt!468657))))))

(declare-fun b!1405086 () Bool)

(assert (=> b!1405086 (= e!897021 (not lt!468785))))

(declare-fun b!1405087 () Bool)

(assert (=> b!1405087 (= e!897019 (= (head!2611 lt!468657) (c!230985 lt!468667)))))

(declare-fun b!1405088 () Bool)

(declare-fun res!635949 () Bool)

(assert (=> b!1405088 (=> res!635949 e!897020)))

(assert (=> b!1405088 (= res!635949 e!897019)))

(declare-fun res!635950 () Bool)

(assert (=> b!1405088 (=> (not res!635950) (not e!897019))))

(assert (=> b!1405088 (= res!635950 lt!468785)))

(declare-fun b!1405089 () Bool)

(assert (=> b!1405089 (= e!897020 e!897024)))

(declare-fun res!635944 () Bool)

(assert (=> b!1405089 (=> (not res!635944) (not e!897024))))

(assert (=> b!1405089 (= res!635944 (not lt!468785))))

(declare-fun bm!93672 () Bool)

(assert (=> bm!93672 (= call!93677 (isEmpty!8703 lt!468657))))

(declare-fun b!1405090 () Bool)

(assert (=> b!1405090 (= e!897025 (not (= (head!2611 lt!468657) (c!230985 lt!468667))))))

(assert (= (and d!401397 c!231078) b!1405082))

(assert (= (and d!401397 (not c!231078)) b!1405078))

(assert (= (and d!401397 c!231080) b!1405080))

(assert (= (and d!401397 (not c!231080)) b!1405084))

(assert (= (and b!1405084 c!231079) b!1405086))

(assert (= (and b!1405084 (not c!231079)) b!1405083))

(assert (= (and b!1405083 (not res!635945)) b!1405088))

(assert (= (and b!1405088 res!635950) b!1405077))

(assert (= (and b!1405077 res!635947) b!1405079))

(assert (= (and b!1405079 res!635946) b!1405087))

(assert (= (and b!1405088 (not res!635949)) b!1405089))

(assert (= (and b!1405089 res!635944) b!1405081))

(assert (= (and b!1405081 (not res!635951)) b!1405085))

(assert (= (and b!1405085 (not res!635948)) b!1405090))

(assert (= (or b!1405080 b!1405077 b!1405081) bm!93672))

(declare-fun m!1582549 () Bool)

(assert (=> bm!93672 m!1582549))

(declare-fun m!1582551 () Bool)

(assert (=> b!1405078 m!1582551))

(assert (=> b!1405078 m!1582551))

(declare-fun m!1582553 () Bool)

(assert (=> b!1405078 m!1582553))

(declare-fun m!1582555 () Bool)

(assert (=> b!1405078 m!1582555))

(assert (=> b!1405078 m!1582553))

(assert (=> b!1405078 m!1582555))

(declare-fun m!1582557 () Bool)

(assert (=> b!1405078 m!1582557))

(assert (=> b!1405087 m!1582551))

(assert (=> b!1405090 m!1582551))

(assert (=> b!1405079 m!1582555))

(assert (=> b!1405079 m!1582555))

(declare-fun m!1582559 () Bool)

(assert (=> b!1405079 m!1582559))

(declare-fun m!1582561 () Bool)

(assert (=> b!1405082 m!1582561))

(assert (=> d!401397 m!1582549))

(declare-fun m!1582563 () Bool)

(assert (=> d!401397 m!1582563))

(assert (=> b!1405085 m!1582555))

(assert (=> b!1405085 m!1582555))

(assert (=> b!1405085 m!1582559))

(assert (=> b!1404658 d!401397))

(declare-fun d!401399 () Bool)

(declare-fun lt!468818 () Bool)

(declare-fun e!897056 () Bool)

(assert (=> d!401399 (= lt!468818 e!897056)))

(declare-fun res!635990 () Bool)

(assert (=> d!401399 (=> (not res!635990) (not e!897056))))

(assert (=> d!401399 (= res!635990 (= (list!5582 (_1!7849 (lex!997 thiss!19762 rules!2550 (print!936 thiss!19762 (singletonSeq!1142 t2!34))))) (list!5582 (singletonSeq!1142 t2!34))))))

(declare-fun e!897055 () Bool)

(assert (=> d!401399 (= lt!468818 e!897055)))

(declare-fun res!635991 () Bool)

(assert (=> d!401399 (=> (not res!635991) (not e!897055))))

(declare-fun lt!468819 () tuple2!13926)

(assert (=> d!401399 (= res!635991 (= (size!11772 (_1!7849 lt!468819)) 1))))

(assert (=> d!401399 (= lt!468819 (lex!997 thiss!19762 rules!2550 (print!936 thiss!19762 (singletonSeq!1142 t2!34))))))

(assert (=> d!401399 (not (isEmpty!8699 rules!2550))))

(assert (=> d!401399 (= (rulesProduceIndividualToken!1141 thiss!19762 rules!2550 t2!34) lt!468818)))

(declare-fun b!1405146 () Bool)

(declare-fun res!635989 () Bool)

(assert (=> b!1405146 (=> (not res!635989) (not e!897055))))

(declare-fun apply!3658 (BalanceConc!9370 Int) Token!4616)

(assert (=> b!1405146 (= res!635989 (= (apply!3658 (_1!7849 lt!468819) 0) t2!34))))

(declare-fun b!1405147 () Bool)

(assert (=> b!1405147 (= e!897055 (isEmpty!8698 (_2!7849 lt!468819)))))

(declare-fun b!1405148 () Bool)

(assert (=> b!1405148 (= e!897056 (isEmpty!8698 (_2!7849 (lex!997 thiss!19762 rules!2550 (print!936 thiss!19762 (singletonSeq!1142 t2!34))))))))

(assert (= (and d!401399 res!635991) b!1405146))

(assert (= (and b!1405146 res!635989) b!1405147))

(assert (= (and d!401399 res!635990) b!1405148))

(declare-fun m!1582629 () Bool)

(assert (=> d!401399 m!1582629))

(assert (=> d!401399 m!1582095))

(assert (=> d!401399 m!1582103))

(declare-fun m!1582631 () Bool)

(assert (=> d!401399 m!1582631))

(assert (=> d!401399 m!1582103))

(declare-fun m!1582633 () Bool)

(assert (=> d!401399 m!1582633))

(assert (=> d!401399 m!1582103))

(assert (=> d!401399 m!1582105))

(assert (=> d!401399 m!1582105))

(declare-fun m!1582635 () Bool)

(assert (=> d!401399 m!1582635))

(declare-fun m!1582637 () Bool)

(assert (=> b!1405146 m!1582637))

(declare-fun m!1582639 () Bool)

(assert (=> b!1405147 m!1582639))

(assert (=> b!1405148 m!1582103))

(assert (=> b!1405148 m!1582103))

(assert (=> b!1405148 m!1582105))

(assert (=> b!1405148 m!1582105))

(assert (=> b!1405148 m!1582635))

(declare-fun m!1582641 () Bool)

(assert (=> b!1405148 m!1582641))

(assert (=> b!1404644 d!401399))

(declare-fun d!401419 () Bool)

(declare-fun res!635996 () Bool)

(declare-fun e!897059 () Bool)

(assert (=> d!401419 (=> (not res!635996) (not e!897059))))

(assert (=> d!401419 (= res!635996 (not (isEmpty!8703 (originalCharacters!3339 t1!34))))))

(assert (=> d!401419 (= (inv!18600 t1!34) e!897059)))

(declare-fun b!1405153 () Bool)

(declare-fun res!635997 () Bool)

(assert (=> b!1405153 (=> (not res!635997) (not e!897059))))

(declare-fun dynLambda!6626 (Int TokenValue!2567) BalanceConc!9368)

(assert (=> b!1405153 (= res!635997 (= (originalCharacters!3339 t1!34) (list!5581 (dynLambda!6626 (toChars!3627 (transformation!2477 (rule!4240 t1!34))) (value!80227 t1!34)))))))

(declare-fun b!1405154 () Bool)

(assert (=> b!1405154 (= e!897059 (= (size!11762 t1!34) (size!11766 (originalCharacters!3339 t1!34))))))

(assert (= (and d!401419 res!635996) b!1405153))

(assert (= (and b!1405153 res!635997) b!1405154))

(declare-fun b_lambda!44251 () Bool)

(assert (=> (not b_lambda!44251) (not b!1405153)))

(declare-fun t!123015 () Bool)

(declare-fun tb!73157 () Bool)

(assert (=> (and b!1404685 (= (toChars!3627 (transformation!2477 (rule!4240 t1!34))) (toChars!3627 (transformation!2477 (rule!4240 t1!34)))) t!123015) tb!73157))

(declare-fun b!1405159 () Bool)

(declare-fun e!897062 () Bool)

(declare-fun tp!399269 () Bool)

(declare-fun inv!18604 (Conc!4714) Bool)

(assert (=> b!1405159 (= e!897062 (and (inv!18604 (c!230984 (dynLambda!6626 (toChars!3627 (transformation!2477 (rule!4240 t1!34))) (value!80227 t1!34)))) tp!399269))))

(declare-fun result!88956 () Bool)

(declare-fun inv!18605 (BalanceConc!9368) Bool)

(assert (=> tb!73157 (= result!88956 (and (inv!18605 (dynLambda!6626 (toChars!3627 (transformation!2477 (rule!4240 t1!34))) (value!80227 t1!34))) e!897062))))

(assert (= tb!73157 b!1405159))

(declare-fun m!1582643 () Bool)

(assert (=> b!1405159 m!1582643))

(declare-fun m!1582645 () Bool)

(assert (=> tb!73157 m!1582645))

(assert (=> b!1405153 t!123015))

(declare-fun b_and!94081 () Bool)

(assert (= b_and!94053 (and (=> t!123015 result!88956) b_and!94081)))

(declare-fun t!123017 () Bool)

(declare-fun tb!73159 () Bool)

(assert (=> (and b!1404665 (= (toChars!3627 (transformation!2477 (rule!4240 t2!34))) (toChars!3627 (transformation!2477 (rule!4240 t1!34)))) t!123017) tb!73159))

(declare-fun result!88960 () Bool)

(assert (= result!88960 result!88956))

(assert (=> b!1405153 t!123017))

(declare-fun b_and!94083 () Bool)

(assert (= b_and!94057 (and (=> t!123017 result!88960) b_and!94083)))

(declare-fun t!123019 () Bool)

(declare-fun tb!73161 () Bool)

(assert (=> (and b!1404663 (= (toChars!3627 (transformation!2477 (h!19697 rules!2550))) (toChars!3627 (transformation!2477 (rule!4240 t1!34)))) t!123019) tb!73161))

(declare-fun result!88962 () Bool)

(assert (= result!88962 result!88956))

(assert (=> b!1405153 t!123019))

(declare-fun b_and!94085 () Bool)

(assert (= b_and!94061 (and (=> t!123019 result!88962) b_and!94085)))

(declare-fun m!1582647 () Bool)

(assert (=> d!401419 m!1582647))

(declare-fun m!1582649 () Bool)

(assert (=> b!1405153 m!1582649))

(assert (=> b!1405153 m!1582649))

(declare-fun m!1582651 () Bool)

(assert (=> b!1405153 m!1582651))

(declare-fun m!1582653 () Bool)

(assert (=> b!1405154 m!1582653))

(assert (=> start!128054 d!401419))

(declare-fun d!401421 () Bool)

(declare-fun res!635998 () Bool)

(declare-fun e!897063 () Bool)

(assert (=> d!401421 (=> (not res!635998) (not e!897063))))

(assert (=> d!401421 (= res!635998 (not (isEmpty!8703 (originalCharacters!3339 t2!34))))))

(assert (=> d!401421 (= (inv!18600 t2!34) e!897063)))

(declare-fun b!1405160 () Bool)

(declare-fun res!635999 () Bool)

(assert (=> b!1405160 (=> (not res!635999) (not e!897063))))

(assert (=> b!1405160 (= res!635999 (= (originalCharacters!3339 t2!34) (list!5581 (dynLambda!6626 (toChars!3627 (transformation!2477 (rule!4240 t2!34))) (value!80227 t2!34)))))))

(declare-fun b!1405161 () Bool)

(assert (=> b!1405161 (= e!897063 (= (size!11762 t2!34) (size!11766 (originalCharacters!3339 t2!34))))))

(assert (= (and d!401421 res!635998) b!1405160))

(assert (= (and b!1405160 res!635999) b!1405161))

(declare-fun b_lambda!44253 () Bool)

(assert (=> (not b_lambda!44253) (not b!1405160)))

(declare-fun t!123021 () Bool)

(declare-fun tb!73163 () Bool)

(assert (=> (and b!1404685 (= (toChars!3627 (transformation!2477 (rule!4240 t1!34))) (toChars!3627 (transformation!2477 (rule!4240 t2!34)))) t!123021) tb!73163))

(declare-fun b!1405162 () Bool)

(declare-fun e!897064 () Bool)

(declare-fun tp!399270 () Bool)

(assert (=> b!1405162 (= e!897064 (and (inv!18604 (c!230984 (dynLambda!6626 (toChars!3627 (transformation!2477 (rule!4240 t2!34))) (value!80227 t2!34)))) tp!399270))))

(declare-fun result!88964 () Bool)

(assert (=> tb!73163 (= result!88964 (and (inv!18605 (dynLambda!6626 (toChars!3627 (transformation!2477 (rule!4240 t2!34))) (value!80227 t2!34))) e!897064))))

(assert (= tb!73163 b!1405162))

(declare-fun m!1582655 () Bool)

(assert (=> b!1405162 m!1582655))

(declare-fun m!1582657 () Bool)

(assert (=> tb!73163 m!1582657))

(assert (=> b!1405160 t!123021))

(declare-fun b_and!94087 () Bool)

(assert (= b_and!94081 (and (=> t!123021 result!88964) b_and!94087)))

(declare-fun t!123023 () Bool)

(declare-fun tb!73165 () Bool)

(assert (=> (and b!1404665 (= (toChars!3627 (transformation!2477 (rule!4240 t2!34))) (toChars!3627 (transformation!2477 (rule!4240 t2!34)))) t!123023) tb!73165))

(declare-fun result!88966 () Bool)

(assert (= result!88966 result!88964))

(assert (=> b!1405160 t!123023))

(declare-fun b_and!94089 () Bool)

(assert (= b_and!94083 (and (=> t!123023 result!88966) b_and!94089)))

(declare-fun tb!73167 () Bool)

(declare-fun t!123025 () Bool)

(assert (=> (and b!1404663 (= (toChars!3627 (transformation!2477 (h!19697 rules!2550))) (toChars!3627 (transformation!2477 (rule!4240 t2!34)))) t!123025) tb!73167))

(declare-fun result!88968 () Bool)

(assert (= result!88968 result!88964))

(assert (=> b!1405160 t!123025))

(declare-fun b_and!94091 () Bool)

(assert (= b_and!94085 (and (=> t!123025 result!88968) b_and!94091)))

(declare-fun m!1582659 () Bool)

(assert (=> d!401421 m!1582659))

(declare-fun m!1582661 () Bool)

(assert (=> b!1405160 m!1582661))

(assert (=> b!1405160 m!1582661))

(declare-fun m!1582663 () Bool)

(assert (=> b!1405160 m!1582663))

(declare-fun m!1582665 () Bool)

(assert (=> b!1405161 m!1582665))

(assert (=> start!128054 d!401421))

(declare-fun d!401423 () Bool)

(assert (=> d!401423 (not (matchR!1782 (regex!2477 (rule!4240 t2!34)) lt!468661))))

(declare-fun lt!468822 () Unit!20647)

(declare-fun choose!8678 (Regex!3791 List!14360 C!7872) Unit!20647)

(assert (=> d!401423 (= lt!468822 (choose!8678 (regex!2477 (rule!4240 t2!34)) lt!468661 (head!2611 lt!468661)))))

(assert (=> d!401423 (validRegex!1661 (regex!2477 (rule!4240 t2!34)))))

(assert (=> d!401423 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!222 (regex!2477 (rule!4240 t2!34)) lt!468661 (head!2611 lt!468661)) lt!468822)))

(declare-fun bs!338475 () Bool)

(assert (= bs!338475 d!401423))

(assert (=> bs!338475 m!1582153))

(assert (=> bs!338475 m!1582027))

(declare-fun m!1582667 () Bool)

(assert (=> bs!338475 m!1582667))

(declare-fun m!1582669 () Bool)

(assert (=> bs!338475 m!1582669))

(assert (=> b!1404643 d!401423))

(declare-fun d!401425 () Bool)

(assert (=> d!401425 (= (head!2611 lt!468661) (h!19695 lt!468661))))

(assert (=> b!1404643 d!401425))

(declare-fun d!401427 () Bool)

(assert (=> d!401427 (= (isEmpty!8699 rules!2550) ((_ is Nil!14296) rules!2550))))

(assert (=> b!1404686 d!401427))

(declare-fun b!1405187 () Bool)

(declare-fun e!897078 () List!14360)

(assert (=> b!1405187 (= e!897078 (Cons!14294 (h!19695 lt!468672) (++!3718 (t!122993 lt!468672) (getSuffix!637 lt!468657 lt!468672))))))

(declare-fun d!401429 () Bool)

(declare-fun e!897079 () Bool)

(assert (=> d!401429 e!897079))

(declare-fun res!636013 () Bool)

(assert (=> d!401429 (=> (not res!636013) (not e!897079))))

(declare-fun lt!468828 () List!14360)

(assert (=> d!401429 (= res!636013 (= (content!2127 lt!468828) ((_ map or) (content!2127 lt!468672) (content!2127 (getSuffix!637 lt!468657 lt!468672)))))))

(assert (=> d!401429 (= lt!468828 e!897078)))

(declare-fun c!231096 () Bool)

(assert (=> d!401429 (= c!231096 ((_ is Nil!14294) lt!468672))))

(assert (=> d!401429 (= (++!3718 lt!468672 (getSuffix!637 lt!468657 lt!468672)) lt!468828)))

(declare-fun b!1405186 () Bool)

(assert (=> b!1405186 (= e!897078 (getSuffix!637 lt!468657 lt!468672))))

(declare-fun b!1405188 () Bool)

(declare-fun res!636014 () Bool)

(assert (=> b!1405188 (=> (not res!636014) (not e!897079))))

(assert (=> b!1405188 (= res!636014 (= (size!11766 lt!468828) (+ (size!11766 lt!468672) (size!11766 (getSuffix!637 lt!468657 lt!468672)))))))

(declare-fun b!1405189 () Bool)

(assert (=> b!1405189 (= e!897079 (or (not (= (getSuffix!637 lt!468657 lt!468672) Nil!14294)) (= lt!468828 lt!468672)))))

(assert (= (and d!401429 c!231096) b!1405186))

(assert (= (and d!401429 (not c!231096)) b!1405187))

(assert (= (and d!401429 res!636013) b!1405188))

(assert (= (and b!1405188 res!636014) b!1405189))

(assert (=> b!1405187 m!1582031))

(declare-fun m!1582689 () Bool)

(assert (=> b!1405187 m!1582689))

(declare-fun m!1582691 () Bool)

(assert (=> d!401429 m!1582691))

(declare-fun m!1582693 () Bool)

(assert (=> d!401429 m!1582693))

(assert (=> d!401429 m!1582031))

(declare-fun m!1582695 () Bool)

(assert (=> d!401429 m!1582695))

(declare-fun m!1582697 () Bool)

(assert (=> b!1405188 m!1582697))

(declare-fun m!1582699 () Bool)

(assert (=> b!1405188 m!1582699))

(assert (=> b!1405188 m!1582031))

(declare-fun m!1582701 () Bool)

(assert (=> b!1405188 m!1582701))

(assert (=> b!1404645 d!401429))

(declare-fun d!401435 () Bool)

(declare-fun lt!468837 () List!14360)

(assert (=> d!401435 (= (++!3718 lt!468672 lt!468837) lt!468657)))

(declare-fun e!897091 () List!14360)

(assert (=> d!401435 (= lt!468837 e!897091)))

(declare-fun c!231102 () Bool)

(assert (=> d!401435 (= c!231102 ((_ is Cons!14294) lt!468672))))

(assert (=> d!401435 (>= (size!11766 lt!468657) (size!11766 lt!468672))))

(assert (=> d!401435 (= (getSuffix!637 lt!468657 lt!468672) lt!468837)))

(declare-fun b!1405210 () Bool)

(assert (=> b!1405210 (= e!897091 (getSuffix!637 (tail!2040 lt!468657) (t!122993 lt!468672)))))

(declare-fun b!1405211 () Bool)

(assert (=> b!1405211 (= e!897091 lt!468657)))

(assert (= (and d!401435 c!231102) b!1405210))

(assert (= (and d!401435 (not c!231102)) b!1405211))

(declare-fun m!1582709 () Bool)

(assert (=> d!401435 m!1582709))

(declare-fun m!1582711 () Bool)

(assert (=> d!401435 m!1582711))

(assert (=> d!401435 m!1582699))

(assert (=> b!1405210 m!1582555))

(assert (=> b!1405210 m!1582555))

(declare-fun m!1582717 () Bool)

(assert (=> b!1405210 m!1582717))

(assert (=> b!1404645 d!401435))

(declare-fun d!401441 () Bool)

(declare-fun lt!468840 () List!14360)

(declare-fun dynLambda!6627 (Int List!14360) Bool)

(assert (=> d!401441 (dynLambda!6627 lambda!61859 lt!468840)))

(declare-fun choose!8679 (Int) List!14360)

(assert (=> d!401441 (= lt!468840 (choose!8679 lambda!61859))))

(assert (=> d!401441 (Exists!941 lambda!61859)))

(assert (=> d!401441 (= (pickWitness!244 lambda!61859) lt!468840)))

(declare-fun b_lambda!44257 () Bool)

(assert (=> (not b_lambda!44257) (not d!401441)))

(declare-fun bs!338477 () Bool)

(assert (= bs!338477 d!401441))

(declare-fun m!1582727 () Bool)

(assert (=> bs!338477 m!1582727))

(declare-fun m!1582729 () Bool)

(assert (=> bs!338477 m!1582729))

(assert (=> bs!338477 m!1582137))

(assert (=> b!1404645 d!401441))

(declare-fun d!401445 () Bool)

(declare-fun lt!468841 () Bool)

(assert (=> d!401445 (= lt!468841 (select (content!2126 rules!2550) (rule!4240 t1!34)))))

(declare-fun e!897092 () Bool)

(assert (=> d!401445 (= lt!468841 e!897092)))

(declare-fun res!636025 () Bool)

(assert (=> d!401445 (=> (not res!636025) (not e!897092))))

(assert (=> d!401445 (= res!636025 ((_ is Cons!14296) rules!2550))))

(assert (=> d!401445 (= (contains!2814 rules!2550 (rule!4240 t1!34)) lt!468841)))

(declare-fun b!1405212 () Bool)

(declare-fun e!897093 () Bool)

(assert (=> b!1405212 (= e!897092 e!897093)))

(declare-fun res!636026 () Bool)

(assert (=> b!1405212 (=> res!636026 e!897093)))

(assert (=> b!1405212 (= res!636026 (= (h!19697 rules!2550) (rule!4240 t1!34)))))

(declare-fun b!1405213 () Bool)

(assert (=> b!1405213 (= e!897093 (contains!2814 (t!122995 rules!2550) (rule!4240 t1!34)))))

(assert (= (and d!401445 res!636025) b!1405212))

(assert (= (and b!1405212 (not res!636026)) b!1405213))

(assert (=> d!401445 m!1582171))

(declare-fun m!1582731 () Bool)

(assert (=> d!401445 m!1582731))

(declare-fun m!1582733 () Bool)

(assert (=> b!1405213 m!1582733))

(assert (=> b!1404688 d!401445))

(declare-fun d!401447 () Bool)

(declare-fun lt!468842 () Bool)

(assert (=> d!401447 (= lt!468842 (select (content!2127 lt!468657) lt!468675))))

(declare-fun e!897101 () Bool)

(assert (=> d!401447 (= lt!468842 e!897101)))

(declare-fun res!636032 () Bool)

(assert (=> d!401447 (=> (not res!636032) (not e!897101))))

(assert (=> d!401447 (= res!636032 ((_ is Cons!14294) lt!468657))))

(assert (=> d!401447 (= (contains!2813 lt!468657 lt!468675) lt!468842)))

(declare-fun b!1405222 () Bool)

(declare-fun e!897100 () Bool)

(assert (=> b!1405222 (= e!897101 e!897100)))

(declare-fun res!636031 () Bool)

(assert (=> b!1405222 (=> res!636031 e!897100)))

(assert (=> b!1405222 (= res!636031 (= (h!19695 lt!468657) lt!468675))))

(declare-fun b!1405223 () Bool)

(assert (=> b!1405223 (= e!897100 (contains!2813 (t!122993 lt!468657) lt!468675))))

(assert (= (and d!401447 res!636032) b!1405222))

(assert (= (and b!1405222 (not res!636031)) b!1405223))

(declare-fun m!1582735 () Bool)

(assert (=> d!401447 m!1582735))

(declare-fun m!1582737 () Bool)

(assert (=> d!401447 m!1582737))

(declare-fun m!1582739 () Bool)

(assert (=> b!1405223 m!1582739))

(assert (=> b!1404687 d!401447))

(declare-fun b!1405244 () Bool)

(declare-fun e!897116 () Bool)

(declare-fun e!897117 () Bool)

(assert (=> b!1405244 (= e!897116 e!897117)))

(declare-fun c!231112 () Bool)

(assert (=> b!1405244 (= c!231112 ((_ is IntegerValue!7702) (value!80227 t2!34)))))

(declare-fun b!1405245 () Bool)

(declare-fun inv!17 (TokenValue!2567) Bool)

(assert (=> b!1405245 (= e!897117 (inv!17 (value!80227 t2!34)))))

(declare-fun b!1405246 () Bool)

(declare-fun e!897118 () Bool)

(declare-fun inv!15 (TokenValue!2567) Bool)

(assert (=> b!1405246 (= e!897118 (inv!15 (value!80227 t2!34)))))

(declare-fun d!401449 () Bool)

(declare-fun c!231111 () Bool)

(assert (=> d!401449 (= c!231111 ((_ is IntegerValue!7701) (value!80227 t2!34)))))

(assert (=> d!401449 (= (inv!21 (value!80227 t2!34)) e!897116)))

(declare-fun b!1405247 () Bool)

(declare-fun inv!16 (TokenValue!2567) Bool)

(assert (=> b!1405247 (= e!897116 (inv!16 (value!80227 t2!34)))))

(declare-fun b!1405248 () Bool)

(declare-fun res!636041 () Bool)

(assert (=> b!1405248 (=> res!636041 e!897118)))

(assert (=> b!1405248 (= res!636041 (not ((_ is IntegerValue!7703) (value!80227 t2!34))))))

(assert (=> b!1405248 (= e!897117 e!897118)))

(assert (= (and d!401449 c!231111) b!1405247))

(assert (= (and d!401449 (not c!231111)) b!1405244))

(assert (= (and b!1405244 c!231112) b!1405245))

(assert (= (and b!1405244 (not c!231112)) b!1405248))

(assert (= (and b!1405248 (not res!636041)) b!1405246))

(declare-fun m!1582741 () Bool)

(assert (=> b!1405245 m!1582741))

(declare-fun m!1582743 () Bool)

(assert (=> b!1405246 m!1582743))

(declare-fun m!1582745 () Bool)

(assert (=> b!1405247 m!1582745))

(assert (=> b!1404666 d!401449))

(declare-fun d!401451 () Bool)

(declare-fun lt!468843 () Bool)

(assert (=> d!401451 (= lt!468843 (select (content!2127 lt!468672) lt!468676))))

(declare-fun e!897127 () Bool)

(assert (=> d!401451 (= lt!468843 e!897127)))

(declare-fun res!636048 () Bool)

(assert (=> d!401451 (=> (not res!636048) (not e!897127))))

(assert (=> d!401451 (= res!636048 ((_ is Cons!14294) lt!468672))))

(assert (=> d!401451 (= (contains!2813 lt!468672 lt!468676) lt!468843)))

(declare-fun b!1405258 () Bool)

(declare-fun e!897126 () Bool)

(assert (=> b!1405258 (= e!897127 e!897126)))

(declare-fun res!636047 () Bool)

(assert (=> b!1405258 (=> res!636047 e!897126)))

(assert (=> b!1405258 (= res!636047 (= (h!19695 lt!468672) lt!468676))))

(declare-fun b!1405259 () Bool)

(assert (=> b!1405259 (= e!897126 (contains!2813 (t!122993 lt!468672) lt!468676))))

(assert (= (and d!401451 res!636048) b!1405258))

(assert (= (and b!1405258 (not res!636047)) b!1405259))

(assert (=> d!401451 m!1582693))

(declare-fun m!1582747 () Bool)

(assert (=> d!401451 m!1582747))

(declare-fun m!1582749 () Bool)

(assert (=> b!1405259 m!1582749))

(assert (=> b!1404641 d!401451))

(declare-fun d!401453 () Bool)

(declare-fun lt!468847 () C!7872)

(declare-fun apply!3659 (List!14360 Int) C!7872)

(assert (=> d!401453 (= lt!468847 (apply!3659 (list!5581 lt!468664) 0))))

(declare-fun apply!3660 (Conc!4714 Int) C!7872)

(assert (=> d!401453 (= lt!468847 (apply!3660 (c!230984 lt!468664) 0))))

(declare-fun e!897136 () Bool)

(assert (=> d!401453 e!897136))

(declare-fun res!636053 () Bool)

(assert (=> d!401453 (=> (not res!636053) (not e!897136))))

(assert (=> d!401453 (= res!636053 (<= 0 0))))

(assert (=> d!401453 (= (apply!3653 lt!468664 0) lt!468847)))

(declare-fun b!1405272 () Bool)

(assert (=> b!1405272 (= e!897136 (< 0 (size!11761 lt!468664)))))

(assert (= (and d!401453 res!636053) b!1405272))

(assert (=> d!401453 m!1582067))

(assert (=> d!401453 m!1582067))

(declare-fun m!1582769 () Bool)

(assert (=> d!401453 m!1582769))

(declare-fun m!1582771 () Bool)

(assert (=> d!401453 m!1582771))

(declare-fun m!1582773 () Bool)

(assert (=> b!1405272 m!1582773))

(assert (=> b!1404641 d!401453))

(declare-fun d!401461 () Bool)

(declare-fun lt!468854 () Bool)

(assert (=> d!401461 (= lt!468854 (isEmpty!8703 (list!5581 (_2!7849 lt!468671))))))

(declare-fun isEmpty!8708 (Conc!4714) Bool)

(assert (=> d!401461 (= lt!468854 (isEmpty!8708 (c!230984 (_2!7849 lt!468671))))))

(assert (=> d!401461 (= (isEmpty!8698 (_2!7849 lt!468671)) lt!468854)))

(declare-fun bs!338480 () Bool)

(assert (= bs!338480 d!401461))

(declare-fun m!1582793 () Bool)

(assert (=> bs!338480 m!1582793))

(assert (=> bs!338480 m!1582793))

(declare-fun m!1582795 () Bool)

(assert (=> bs!338480 m!1582795))

(declare-fun m!1582797 () Bool)

(assert (=> bs!338480 m!1582797))

(assert (=> b!1404684 d!401461))

(declare-fun d!401469 () Bool)

(assert (=> d!401469 (= (inv!18597 (tag!2739 (h!19697 rules!2550))) (= (mod (str.len (value!80226 (tag!2739 (h!19697 rules!2550)))) 2) 0))))

(assert (=> b!1404683 d!401469))

(declare-fun d!401471 () Bool)

(declare-fun res!636057 () Bool)

(declare-fun e!897140 () Bool)

(assert (=> d!401471 (=> (not res!636057) (not e!897140))))

(assert (=> d!401471 (= res!636057 (semiInverseModEq!964 (toChars!3627 (transformation!2477 (h!19697 rules!2550))) (toValue!3768 (transformation!2477 (h!19697 rules!2550)))))))

(assert (=> d!401471 (= (inv!18601 (transformation!2477 (h!19697 rules!2550))) e!897140)))

(declare-fun b!1405278 () Bool)

(assert (=> b!1405278 (= e!897140 (equivClasses!923 (toChars!3627 (transformation!2477 (h!19697 rules!2550))) (toValue!3768 (transformation!2477 (h!19697 rules!2550)))))))

(assert (= (and d!401471 res!636057) b!1405278))

(declare-fun m!1582805 () Bool)

(assert (=> d!401471 m!1582805))

(declare-fun m!1582809 () Bool)

(assert (=> b!1405278 m!1582809))

(assert (=> b!1404683 d!401471))

(declare-fun b!1405280 () Bool)

(declare-fun e!897144 () Bool)

(declare-fun lt!468857 () tuple2!13922)

(assert (=> b!1405280 (= e!897144 (not (isEmpty!8704 (_1!7847 lt!468857))))))

(declare-fun b!1405281 () Bool)

(declare-fun e!897142 () Bool)

(assert (=> b!1405281 (= e!897142 e!897144)))

(declare-fun res!636059 () Bool)

(assert (=> b!1405281 (= res!636059 (< (size!11766 (_2!7847 lt!468857)) (size!11766 (list!5581 lt!468666))))))

(assert (=> b!1405281 (=> (not res!636059) (not e!897144))))

(declare-fun d!401475 () Bool)

(assert (=> d!401475 e!897142))

(declare-fun c!231121 () Bool)

(assert (=> d!401475 (= c!231121 (> (size!11767 (_1!7847 lt!468857)) 0))))

(declare-fun e!897143 () tuple2!13922)

(assert (=> d!401475 (= lt!468857 e!897143)))

(declare-fun c!231122 () Bool)

(declare-fun lt!468859 () Option!2740)

(assert (=> d!401475 (= c!231122 ((_ is Some!2739) lt!468859))))

(assert (=> d!401475 (= lt!468859 (maxPrefix!1146 thiss!19762 rules!2550 (list!5581 lt!468666)))))

(assert (=> d!401475 (= (lexList!686 thiss!19762 rules!2550 (list!5581 lt!468666)) lt!468857)))

(declare-fun b!1405282 () Bool)

(assert (=> b!1405282 (= e!897142 (= (_2!7847 lt!468857) (list!5581 lt!468666)))))

(declare-fun b!1405283 () Bool)

(declare-fun lt!468860 () tuple2!13922)

(assert (=> b!1405283 (= e!897143 (tuple2!13923 (Cons!14297 (_1!7848 (v!21691 lt!468859)) (_1!7847 lt!468860)) (_2!7847 lt!468860)))))

(assert (=> b!1405283 (= lt!468860 (lexList!686 thiss!19762 rules!2550 (_2!7848 (v!21691 lt!468859))))))

(declare-fun b!1405284 () Bool)

(assert (=> b!1405284 (= e!897143 (tuple2!13923 Nil!14297 (list!5581 lt!468666)))))

(assert (= (and d!401475 c!231122) b!1405283))

(assert (= (and d!401475 (not c!231122)) b!1405284))

(assert (= (and d!401475 c!231121) b!1405281))

(assert (= (and d!401475 (not c!231121)) b!1405282))

(assert (= (and b!1405281 res!636059) b!1405280))

(declare-fun m!1582821 () Bool)

(assert (=> b!1405280 m!1582821))

(declare-fun m!1582823 () Bool)

(assert (=> b!1405281 m!1582823))

(assert (=> b!1405281 m!1582163))

(declare-fun m!1582825 () Bool)

(assert (=> b!1405281 m!1582825))

(declare-fun m!1582827 () Bool)

(assert (=> d!401475 m!1582827))

(assert (=> d!401475 m!1582163))

(declare-fun m!1582829 () Bool)

(assert (=> d!401475 m!1582829))

(declare-fun m!1582831 () Bool)

(assert (=> b!1405283 m!1582831))

(assert (=> b!1404662 d!401475))

(declare-fun d!401481 () Bool)

(assert (=> d!401481 (= (list!5581 lt!468666) (list!5584 (c!230984 lt!468666)))))

(declare-fun bs!338483 () Bool)

(assert (= bs!338483 d!401481))

(declare-fun m!1582833 () Bool)

(assert (=> bs!338483 m!1582833))

(assert (=> b!1404662 d!401481))

(declare-fun d!401483 () Bool)

(declare-fun lt!468861 () Bool)

(assert (=> d!401483 (= lt!468861 (select (content!2127 lt!468657) lt!468676))))

(declare-fun e!897146 () Bool)

(assert (=> d!401483 (= lt!468861 e!897146)))

(declare-fun res!636061 () Bool)

(assert (=> d!401483 (=> (not res!636061) (not e!897146))))

(assert (=> d!401483 (= res!636061 ((_ is Cons!14294) lt!468657))))

(assert (=> d!401483 (= (contains!2813 lt!468657 lt!468676) lt!468861)))

(declare-fun b!1405285 () Bool)

(declare-fun e!897145 () Bool)

(assert (=> b!1405285 (= e!897146 e!897145)))

(declare-fun res!636060 () Bool)

(assert (=> b!1405285 (=> res!636060 e!897145)))

(assert (=> b!1405285 (= res!636060 (= (h!19695 lt!468657) lt!468676))))

(declare-fun b!1405286 () Bool)

(assert (=> b!1405286 (= e!897145 (contains!2813 (t!122993 lt!468657) lt!468676))))

(assert (= (and d!401483 res!636061) b!1405285))

(assert (= (and b!1405285 (not res!636060)) b!1405286))

(assert (=> d!401483 m!1582735))

(declare-fun m!1582835 () Bool)

(assert (=> d!401483 m!1582835))

(declare-fun m!1582837 () Bool)

(assert (=> b!1405286 m!1582837))

(assert (=> b!1404664 d!401483))

(declare-fun d!401485 () Bool)

(declare-fun lt!468867 () Int)

(assert (=> d!401485 (= lt!468867 (size!11766 (list!5581 lt!468674)))))

(declare-fun size!11774 (Conc!4714) Int)

(assert (=> d!401485 (= lt!468867 (size!11774 (c!230984 lt!468674)))))

(assert (=> d!401485 (= (size!11761 lt!468674) lt!468867)))

(declare-fun bs!338484 () Bool)

(assert (= bs!338484 d!401485))

(assert (=> bs!338484 m!1582085))

(assert (=> bs!338484 m!1582085))

(declare-fun m!1582845 () Bool)

(assert (=> bs!338484 m!1582845))

(declare-fun m!1582847 () Bool)

(assert (=> bs!338484 m!1582847))

(assert (=> b!1404642 d!401485))

(declare-fun d!401487 () Bool)

(declare-fun lt!468870 () BalanceConc!9368)

(assert (=> d!401487 (= (list!5581 lt!468870) (originalCharacters!3339 t2!34))))

(assert (=> d!401487 (= lt!468870 (dynLambda!6626 (toChars!3627 (transformation!2477 (rule!4240 t2!34))) (value!80227 t2!34)))))

(assert (=> d!401487 (= (charsOf!1449 t2!34) lt!468870)))

(declare-fun b_lambda!44259 () Bool)

(assert (=> (not b_lambda!44259) (not d!401487)))

(assert (=> d!401487 t!123021))

(declare-fun b_and!94099 () Bool)

(assert (= b_and!94087 (and (=> t!123021 result!88964) b_and!94099)))

(assert (=> d!401487 t!123023))

(declare-fun b_and!94101 () Bool)

(assert (= b_and!94089 (and (=> t!123023 result!88966) b_and!94101)))

(assert (=> d!401487 t!123025))

(declare-fun b_and!94103 () Bool)

(assert (= b_and!94091 (and (=> t!123025 result!88968) b_and!94103)))

(declare-fun m!1582849 () Bool)

(assert (=> d!401487 m!1582849))

(assert (=> d!401487 m!1582661))

(assert (=> b!1404642 d!401487))

(declare-fun bs!338485 () Bool)

(declare-fun d!401491 () Bool)

(assert (= bs!338485 (and d!401491 b!1404649)))

(declare-fun lambda!61895 () Int)

(assert (=> bs!338485 (not (= lambda!61895 lambda!61862))))

(declare-fun bs!338486 () Bool)

(assert (= bs!338486 (and d!401491 b!1404660)))

(assert (=> bs!338486 (not (= lambda!61895 lambda!61863))))

(assert (=> d!401491 true))

(declare-fun order!8747 () Int)

(declare-fun dynLambda!6628 (Int Int) Int)

(assert (=> d!401491 (< (dynLambda!6628 order!8747 lambda!61862) (dynLambda!6628 order!8747 lambda!61895))))

(assert (=> d!401491 (= (exists!598 rules!2550 lambda!61862) (not (forall!3464 rules!2550 lambda!61895)))))

(declare-fun bs!338487 () Bool)

(assert (= bs!338487 d!401491))

(declare-fun m!1582851 () Bool)

(assert (=> bs!338487 m!1582851))

(assert (=> b!1404649 d!401491))

(declare-fun bs!338488 () Bool)

(declare-fun d!401493 () Bool)

(assert (= bs!338488 (and d!401493 b!1404649)))

(declare-fun lambda!61898 () Int)

(assert (=> bs!338488 (not (= lambda!61898 lambda!61862))))

(declare-fun bs!338489 () Bool)

(assert (= bs!338489 (and d!401493 b!1404660)))

(assert (=> bs!338489 (not (= lambda!61898 lambda!61863))))

(declare-fun bs!338490 () Bool)

(assert (= bs!338490 (and d!401493 d!401491)))

(assert (=> bs!338490 (not (= lambda!61898 lambda!61895))))

(assert (=> d!401493 true))

(assert (=> d!401493 true))

(declare-fun order!8749 () Int)

(declare-fun dynLambda!6629 (Int Int) Int)

(assert (=> d!401493 (< (dynLambda!6629 order!8749 lambda!61860) (dynLambda!6628 order!8747 lambda!61898))))

(assert (=> d!401493 (exists!598 rules!2550 lambda!61898)))

(declare-fun lt!468881 () Unit!20647)

(declare-fun choose!8681 (List!14362 Int Regex!3791) Unit!20647)

(assert (=> d!401493 (= lt!468881 (choose!8681 rules!2550 lambda!61860 lt!468668))))

(assert (=> d!401493 (contains!2815 (map!3176 rules!2550 lambda!61860) lt!468668)))

(assert (=> d!401493 (= (lemmaMapContains!188 rules!2550 lambda!61860 lt!468668) lt!468881)))

(declare-fun bs!338491 () Bool)

(assert (= bs!338491 d!401493))

(declare-fun m!1582879 () Bool)

(assert (=> bs!338491 m!1582879))

(declare-fun m!1582881 () Bool)

(assert (=> bs!338491 m!1582881))

(assert (=> bs!338491 m!1582113))

(assert (=> bs!338491 m!1582113))

(assert (=> bs!338491 m!1582133))

(assert (=> b!1404649 d!401493))

(declare-fun b!1405333 () Bool)

(declare-fun e!897174 () Bool)

(declare-fun e!897175 () Bool)

(assert (=> b!1405333 (= e!897174 e!897175)))

(declare-fun c!231133 () Bool)

(assert (=> b!1405333 (= c!231133 ((_ is IntegerValue!7702) (value!80227 t1!34)))))

(declare-fun b!1405334 () Bool)

(assert (=> b!1405334 (= e!897175 (inv!17 (value!80227 t1!34)))))

(declare-fun b!1405335 () Bool)

(declare-fun e!897176 () Bool)

(assert (=> b!1405335 (= e!897176 (inv!15 (value!80227 t1!34)))))

(declare-fun d!401501 () Bool)

(declare-fun c!231132 () Bool)

(assert (=> d!401501 (= c!231132 ((_ is IntegerValue!7701) (value!80227 t1!34)))))

(assert (=> d!401501 (= (inv!21 (value!80227 t1!34)) e!897174)))

(declare-fun b!1405336 () Bool)

(assert (=> b!1405336 (= e!897174 (inv!16 (value!80227 t1!34)))))

(declare-fun b!1405337 () Bool)

(declare-fun res!636084 () Bool)

(assert (=> b!1405337 (=> res!636084 e!897176)))

(assert (=> b!1405337 (= res!636084 (not ((_ is IntegerValue!7703) (value!80227 t1!34))))))

(assert (=> b!1405337 (= e!897175 e!897176)))

(assert (= (and d!401501 c!231132) b!1405336))

(assert (= (and d!401501 (not c!231132)) b!1405333))

(assert (= (and b!1405333 c!231133) b!1405334))

(assert (= (and b!1405333 (not c!231133)) b!1405337))

(assert (= (and b!1405337 (not res!636084)) b!1405335))

(declare-fun m!1582883 () Bool)

(assert (=> b!1405334 m!1582883))

(declare-fun m!1582885 () Bool)

(assert (=> b!1405335 m!1582885))

(declare-fun m!1582887 () Bool)

(assert (=> b!1405336 m!1582887))

(assert (=> b!1404670 d!401501))

(declare-fun lt!468888 () Bool)

(declare-fun d!401503 () Bool)

(declare-fun content!2128 (List!14364) (InoxSet Regex!3791))

(assert (=> d!401503 (= lt!468888 (select (content!2128 (map!3176 rules!2550 lambda!61860)) lt!468668))))

(declare-fun e!897186 () Bool)

(assert (=> d!401503 (= lt!468888 e!897186)))

(declare-fun res!636093 () Bool)

(assert (=> d!401503 (=> (not res!636093) (not e!897186))))

(assert (=> d!401503 (= res!636093 ((_ is Cons!14298) (map!3176 rules!2550 lambda!61860)))))

(assert (=> d!401503 (= (contains!2815 (map!3176 rules!2550 lambda!61860) lt!468668) lt!468888)))

(declare-fun b!1405346 () Bool)

(declare-fun e!897185 () Bool)

(assert (=> b!1405346 (= e!897186 e!897185)))

(declare-fun res!636094 () Bool)

(assert (=> b!1405346 (=> res!636094 e!897185)))

(assert (=> b!1405346 (= res!636094 (= (h!19699 (map!3176 rules!2550 lambda!61860)) lt!468668))))

(declare-fun b!1405347 () Bool)

(assert (=> b!1405347 (= e!897185 (contains!2815 (t!122997 (map!3176 rules!2550 lambda!61860)) lt!468668))))

(assert (= (and d!401503 res!636093) b!1405346))

(assert (= (and b!1405346 (not res!636094)) b!1405347))

(assert (=> d!401503 m!1582113))

(declare-fun m!1582899 () Bool)

(assert (=> d!401503 m!1582899))

(declare-fun m!1582903 () Bool)

(assert (=> d!401503 m!1582903))

(declare-fun m!1582907 () Bool)

(assert (=> b!1405347 m!1582907))

(assert (=> b!1404672 d!401503))

(assert (=> b!1404672 d!401351))

(declare-fun b!1405377 () Bool)

(declare-fun e!897205 () Regex!3791)

(declare-fun e!897208 () Regex!3791)

(assert (=> b!1405377 (= e!897205 e!897208)))

(declare-fun c!231145 () Bool)

(assert (=> b!1405377 (= c!231145 ((_ is Cons!14298) (map!3176 rules!2550 lambda!61860)))))

(declare-fun d!401511 () Bool)

(declare-fun e!897207 () Bool)

(assert (=> d!401511 e!897207))

(declare-fun res!636105 () Bool)

(assert (=> d!401511 (=> (not res!636105) (not e!897207))))

(declare-fun lt!468901 () Regex!3791)

(declare-fun dynLambda!6630 (Int Regex!3791) Bool)

(assert (=> d!401511 (= res!636105 (dynLambda!6630 lambda!61861 lt!468901))))

(assert (=> d!401511 (= lt!468901 e!897205)))

(declare-fun c!231144 () Bool)

(declare-fun e!897206 () Bool)

(assert (=> d!401511 (= c!231144 e!897206)))

(declare-fun res!636104 () Bool)

(assert (=> d!401511 (=> (not res!636104) (not e!897206))))

(assert (=> d!401511 (= res!636104 ((_ is Cons!14298) (map!3176 rules!2550 lambda!61860)))))

(assert (=> d!401511 (exists!599 (map!3176 rules!2550 lambda!61860) lambda!61861)))

(assert (=> d!401511 (= (getWitness!486 (map!3176 rules!2550 lambda!61860) lambda!61861) lt!468901)))

(declare-fun b!1405378 () Bool)

(assert (=> b!1405378 (= e!897205 (h!19699 (map!3176 rules!2550 lambda!61860)))))

(declare-fun b!1405379 () Bool)

(declare-fun lt!468900 () Unit!20647)

(declare-fun Unit!20655 () Unit!20647)

(assert (=> b!1405379 (= lt!468900 Unit!20655)))

(assert (=> b!1405379 false))

(declare-fun head!2614 (List!14364) Regex!3791)

(assert (=> b!1405379 (= e!897208 (head!2614 (map!3176 rules!2550 lambda!61860)))))

(declare-fun b!1405380 () Bool)

(assert (=> b!1405380 (= e!897207 (contains!2815 (map!3176 rules!2550 lambda!61860) lt!468901))))

(declare-fun b!1405381 () Bool)

(assert (=> b!1405381 (= e!897206 (dynLambda!6630 lambda!61861 (h!19699 (map!3176 rules!2550 lambda!61860))))))

(declare-fun b!1405382 () Bool)

(assert (=> b!1405382 (= e!897208 (getWitness!486 (t!122997 (map!3176 rules!2550 lambda!61860)) lambda!61861))))

(assert (= (and d!401511 res!636104) b!1405381))

(assert (= (and d!401511 c!231144) b!1405378))

(assert (= (and d!401511 (not c!231144)) b!1405377))

(assert (= (and b!1405377 c!231145) b!1405382))

(assert (= (and b!1405377 (not c!231145)) b!1405379))

(assert (= (and d!401511 res!636105) b!1405380))

(declare-fun b_lambda!44273 () Bool)

(assert (=> (not b_lambda!44273) (not d!401511)))

(declare-fun b_lambda!44275 () Bool)

(assert (=> (not b_lambda!44275) (not b!1405381)))

(assert (=> b!1405380 m!1582113))

(declare-fun m!1582941 () Bool)

(assert (=> b!1405380 m!1582941))

(declare-fun m!1582943 () Bool)

(assert (=> b!1405381 m!1582943))

(declare-fun m!1582945 () Bool)

(assert (=> b!1405382 m!1582945))

(assert (=> b!1405379 m!1582113))

(declare-fun m!1582947 () Bool)

(assert (=> b!1405379 m!1582947))

(declare-fun m!1582951 () Bool)

(assert (=> d!401511 m!1582951))

(assert (=> d!401511 m!1582113))

(assert (=> d!401511 m!1582115))

(assert (=> b!1404672 d!401511))

(declare-fun b!1405394 () Bool)

(declare-fun e!897215 () List!14360)

(assert (=> b!1405394 (= e!897215 (Cons!14294 (h!19695 lt!468670) (++!3718 (t!122993 lt!468670) (Cons!14294 lt!468675 Nil!14294))))))

(declare-fun d!401527 () Bool)

(declare-fun e!897216 () Bool)

(assert (=> d!401527 e!897216))

(declare-fun res!636108 () Bool)

(assert (=> d!401527 (=> (not res!636108) (not e!897216))))

(declare-fun lt!468904 () List!14360)

(assert (=> d!401527 (= res!636108 (= (content!2127 lt!468904) ((_ map or) (content!2127 lt!468670) (content!2127 (Cons!14294 lt!468675 Nil!14294)))))))

(assert (=> d!401527 (= lt!468904 e!897215)))

(declare-fun c!231150 () Bool)

(assert (=> d!401527 (= c!231150 ((_ is Nil!14294) lt!468670))))

(assert (=> d!401527 (= (++!3718 lt!468670 (Cons!14294 lt!468675 Nil!14294)) lt!468904)))

(declare-fun b!1405393 () Bool)

(assert (=> b!1405393 (= e!897215 (Cons!14294 lt!468675 Nil!14294))))

(declare-fun b!1405395 () Bool)

(declare-fun res!636109 () Bool)

(assert (=> b!1405395 (=> (not res!636109) (not e!897216))))

(assert (=> b!1405395 (= res!636109 (= (size!11766 lt!468904) (+ (size!11766 lt!468670) (size!11766 (Cons!14294 lt!468675 Nil!14294)))))))

(declare-fun b!1405396 () Bool)

(assert (=> b!1405396 (= e!897216 (or (not (= (Cons!14294 lt!468675 Nil!14294) Nil!14294)) (= lt!468904 lt!468670)))))

(assert (= (and d!401527 c!231150) b!1405393))

(assert (= (and d!401527 (not c!231150)) b!1405394))

(assert (= (and d!401527 res!636108) b!1405395))

(assert (= (and b!1405395 res!636109) b!1405396))

(declare-fun m!1582957 () Bool)

(assert (=> b!1405394 m!1582957))

(declare-fun m!1582959 () Bool)

(assert (=> d!401527 m!1582959))

(declare-fun m!1582961 () Bool)

(assert (=> d!401527 m!1582961))

(declare-fun m!1582963 () Bool)

(assert (=> d!401527 m!1582963))

(declare-fun m!1582967 () Bool)

(assert (=> b!1405395 m!1582967))

(declare-fun m!1582969 () Bool)

(assert (=> b!1405395 m!1582969))

(declare-fun m!1582973 () Bool)

(assert (=> b!1405395 m!1582973))

(assert (=> b!1404671 d!401527))

(declare-fun d!401529 () Bool)

(declare-fun c!231154 () Bool)

(assert (=> d!401529 (= c!231154 (isEmpty!8703 lt!468672))))

(declare-fun e!897222 () Bool)

(assert (=> d!401529 (= (prefixMatch!300 lt!468667 lt!468672) e!897222)))

(declare-fun b!1405410 () Bool)

(declare-fun lostCause!369 (Regex!3791) Bool)

(assert (=> b!1405410 (= e!897222 (not (lostCause!369 lt!468667)))))

(declare-fun b!1405411 () Bool)

(assert (=> b!1405411 (= e!897222 (prefixMatch!300 (derivativeStep!993 lt!468667 (head!2611 lt!468672)) (tail!2040 lt!468672)))))

(assert (= (and d!401529 c!231154) b!1405410))

(assert (= (and d!401529 (not c!231154)) b!1405411))

(declare-fun m!1583011 () Bool)

(assert (=> d!401529 m!1583011))

(declare-fun m!1583013 () Bool)

(assert (=> b!1405410 m!1583013))

(declare-fun m!1583015 () Bool)

(assert (=> b!1405411 m!1583015))

(assert (=> b!1405411 m!1583015))

(declare-fun m!1583017 () Bool)

(assert (=> b!1405411 m!1583017))

(declare-fun m!1583019 () Bool)

(assert (=> b!1405411 m!1583019))

(assert (=> b!1405411 m!1583017))

(assert (=> b!1405411 m!1583019))

(declare-fun m!1583021 () Bool)

(assert (=> b!1405411 m!1583021))

(assert (=> b!1404671 d!401529))

(declare-fun d!401537 () Bool)

(declare-fun lt!468910 () C!7872)

(assert (=> d!401537 (= lt!468910 (apply!3659 (list!5581 lt!468674) 0))))

(assert (=> d!401537 (= lt!468910 (apply!3660 (c!230984 lt!468674) 0))))

(declare-fun e!897223 () Bool)

(assert (=> d!401537 e!897223))

(declare-fun res!636117 () Bool)

(assert (=> d!401537 (=> (not res!636117) (not e!897223))))

(assert (=> d!401537 (= res!636117 (<= 0 0))))

(assert (=> d!401537 (= (apply!3653 lt!468674 0) lt!468910)))

(declare-fun b!1405412 () Bool)

(assert (=> b!1405412 (= e!897223 (< 0 (size!11761 lt!468674)))))

(assert (= (and d!401537 res!636117) b!1405412))

(assert (=> d!401537 m!1582085))

(assert (=> d!401537 m!1582085))

(declare-fun m!1583025 () Bool)

(assert (=> d!401537 m!1583025))

(declare-fun m!1583027 () Bool)

(assert (=> d!401537 m!1583027))

(assert (=> b!1405412 m!1582059))

(assert (=> b!1404671 d!401537))

(declare-fun d!401541 () Bool)

(declare-fun lt!468911 () BalanceConc!9368)

(assert (=> d!401541 (= (list!5581 lt!468911) (originalCharacters!3339 t1!34))))

(assert (=> d!401541 (= lt!468911 (dynLambda!6626 (toChars!3627 (transformation!2477 (rule!4240 t1!34))) (value!80227 t1!34)))))

(assert (=> d!401541 (= (charsOf!1449 t1!34) lt!468911)))

(declare-fun b_lambda!44277 () Bool)

(assert (=> (not b_lambda!44277) (not d!401541)))

(assert (=> d!401541 t!123015))

(declare-fun b_and!94105 () Bool)

(assert (= b_and!94099 (and (=> t!123015 result!88956) b_and!94105)))

(assert (=> d!401541 t!123017))

(declare-fun b_and!94107 () Bool)

(assert (= b_and!94101 (and (=> t!123017 result!88960) b_and!94107)))

(assert (=> d!401541 t!123019))

(declare-fun b_and!94109 () Bool)

(assert (= b_and!94103 (and (=> t!123019 result!88962) b_and!94109)))

(declare-fun m!1583029 () Bool)

(assert (=> d!401541 m!1583029))

(assert (=> d!401541 m!1582649))

(assert (=> b!1404671 d!401541))

(declare-fun d!401543 () Bool)

(assert (=> d!401543 (= (list!5581 lt!468664) (list!5584 (c!230984 lt!468664)))))

(declare-fun bs!338495 () Bool)

(assert (= bs!338495 d!401543))

(declare-fun m!1583031 () Bool)

(assert (=> bs!338495 m!1583031))

(assert (=> b!1404671 d!401543))

(declare-fun bs!338496 () Bool)

(declare-fun d!401545 () Bool)

(assert (= bs!338496 (and d!401545 b!1404680)))

(declare-fun lambda!61903 () Int)

(assert (=> bs!338496 (= lambda!61903 lambda!61860)))

(declare-fun lt!468916 () Unit!20647)

(declare-fun lemma!163 (List!14362 LexerInterface!2172 List!14362) Unit!20647)

(assert (=> d!401545 (= lt!468916 (lemma!163 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!171 (List!14364) Regex!3791)

(assert (=> d!401545 (= (rulesRegex!360 thiss!19762 rules!2550) (generalisedUnion!171 (map!3176 rules!2550 lambda!61903)))))

(declare-fun bs!338497 () Bool)

(assert (= bs!338497 d!401545))

(declare-fun m!1583033 () Bool)

(assert (=> bs!338497 m!1583033))

(declare-fun m!1583035 () Bool)

(assert (=> bs!338497 m!1583035))

(assert (=> bs!338497 m!1583035))

(declare-fun m!1583037 () Bool)

(assert (=> bs!338497 m!1583037))

(assert (=> b!1404671 d!401545))

(declare-fun d!401547 () Bool)

(declare-fun prefixMatchZipperSequence!306 (Regex!3791 BalanceConc!9368) Bool)

(declare-fun ++!3720 (BalanceConc!9368 BalanceConc!9368) BalanceConc!9368)

(declare-fun singletonSeq!1144 (C!7872) BalanceConc!9368)

(assert (=> d!401547 (= (separableTokensPredicate!455 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!306 (rulesRegex!360 thiss!19762 rules!2550) (++!3720 (charsOf!1449 t1!34) (singletonSeq!1144 (apply!3653 (charsOf!1449 t2!34) 0))))))))

(declare-fun bs!338509 () Bool)

(assert (= bs!338509 d!401547))

(assert (=> bs!338509 m!1582061))

(assert (=> bs!338509 m!1582065))

(declare-fun m!1583065 () Bool)

(assert (=> bs!338509 m!1583065))

(declare-fun m!1583067 () Bool)

(assert (=> bs!338509 m!1583067))

(assert (=> bs!338509 m!1582065))

(assert (=> bs!338509 m!1582073))

(declare-fun m!1583069 () Bool)

(assert (=> bs!338509 m!1583069))

(assert (=> bs!338509 m!1583065))

(assert (=> bs!338509 m!1582073))

(assert (=> bs!338509 m!1583067))

(declare-fun m!1583071 () Bool)

(assert (=> bs!338509 m!1583071))

(assert (=> bs!338509 m!1582061))

(assert (=> bs!338509 m!1583069))

(assert (=> b!1404650 d!401547))

(declare-fun d!401567 () Bool)

(assert (=> d!401567 (= (list!5582 (_1!7849 lt!468671)) (list!5585 (c!230986 (_1!7849 lt!468671))))))

(declare-fun bs!338510 () Bool)

(assert (= bs!338510 d!401567))

(declare-fun m!1583073 () Bool)

(assert (=> bs!338510 m!1583073))

(assert (=> b!1404689 d!401567))

(declare-fun b!1405457 () Bool)

(declare-fun e!897251 () Bool)

(declare-fun lt!468918 () tuple2!13926)

(assert (=> b!1405457 (= e!897251 (= (_2!7849 lt!468918) lt!468650))))

(declare-fun b!1405458 () Bool)

(declare-fun res!636124 () Bool)

(declare-fun e!897250 () Bool)

(assert (=> b!1405458 (=> (not res!636124) (not e!897250))))

(assert (=> b!1405458 (= res!636124 (= (list!5582 (_1!7849 lt!468918)) (_1!7847 (lexList!686 thiss!19762 rules!2550 (list!5581 lt!468650)))))))

(declare-fun b!1405459 () Bool)

(declare-fun e!897252 () Bool)

(assert (=> b!1405459 (= e!897251 e!897252)))

(declare-fun res!636123 () Bool)

(assert (=> b!1405459 (= res!636123 (< (size!11761 (_2!7849 lt!468918)) (size!11761 lt!468650)))))

(assert (=> b!1405459 (=> (not res!636123) (not e!897252))))

(declare-fun d!401569 () Bool)

(assert (=> d!401569 e!897250))

(declare-fun res!636125 () Bool)

(assert (=> d!401569 (=> (not res!636125) (not e!897250))))

(assert (=> d!401569 (= res!636125 e!897251)))

(declare-fun c!231155 () Bool)

(assert (=> d!401569 (= c!231155 (> (size!11772 (_1!7849 lt!468918)) 0))))

(assert (=> d!401569 (= lt!468918 (lexTailRecV2!446 thiss!19762 rules!2550 lt!468650 (BalanceConc!9369 Empty!4714) lt!468650 (BalanceConc!9371 Empty!4715)))))

(assert (=> d!401569 (= (lex!997 thiss!19762 rules!2550 lt!468650) lt!468918)))

(declare-fun b!1405460 () Bool)

(assert (=> b!1405460 (= e!897250 (= (list!5581 (_2!7849 lt!468918)) (_2!7847 (lexList!686 thiss!19762 rules!2550 (list!5581 lt!468650)))))))

(declare-fun b!1405461 () Bool)

(assert (=> b!1405461 (= e!897252 (not (isEmpty!8705 (_1!7849 lt!468918))))))

(assert (= (and d!401569 c!231155) b!1405459))

(assert (= (and d!401569 (not c!231155)) b!1405457))

(assert (= (and b!1405459 res!636123) b!1405461))

(assert (= (and d!401569 res!636125) b!1405458))

(assert (= (and b!1405458 res!636124) b!1405460))

(declare-fun m!1583075 () Bool)

(assert (=> b!1405460 m!1583075))

(assert (=> b!1405460 m!1582041))

(assert (=> b!1405460 m!1582041))

(assert (=> b!1405460 m!1582043))

(declare-fun m!1583077 () Bool)

(assert (=> d!401569 m!1583077))

(declare-fun m!1583079 () Bool)

(assert (=> d!401569 m!1583079))

(declare-fun m!1583081 () Bool)

(assert (=> b!1405458 m!1583081))

(assert (=> b!1405458 m!1582041))

(assert (=> b!1405458 m!1582041))

(assert (=> b!1405458 m!1582043))

(declare-fun m!1583083 () Bool)

(assert (=> b!1405459 m!1583083))

(declare-fun m!1583085 () Bool)

(assert (=> b!1405459 m!1583085))

(declare-fun m!1583087 () Bool)

(assert (=> b!1405461 m!1583087))

(assert (=> b!1404689 d!401569))

(declare-fun d!401571 () Bool)

(declare-fun lt!468919 () BalanceConc!9368)

(assert (=> d!401571 (= (list!5581 lt!468919) (printList!641 thiss!19762 (list!5582 (singletonSeq!1142 t2!34))))))

(assert (=> d!401571 (= lt!468919 (printTailRec!623 thiss!19762 (singletonSeq!1142 t2!34) 0 (BalanceConc!9369 Empty!4714)))))

(assert (=> d!401571 (= (print!936 thiss!19762 (singletonSeq!1142 t2!34)) lt!468919)))

(declare-fun bs!338511 () Bool)

(assert (= bs!338511 d!401571))

(declare-fun m!1583089 () Bool)

(assert (=> bs!338511 m!1583089))

(assert (=> bs!338511 m!1582103))

(assert (=> bs!338511 m!1582633))

(assert (=> bs!338511 m!1582633))

(declare-fun m!1583091 () Bool)

(assert (=> bs!338511 m!1583091))

(assert (=> bs!338511 m!1582103))

(declare-fun m!1583093 () Bool)

(assert (=> bs!338511 m!1583093))

(assert (=> b!1404689 d!401571))

(declare-fun d!401573 () Bool)

(declare-fun e!897253 () Bool)

(assert (=> d!401573 e!897253))

(declare-fun res!636126 () Bool)

(assert (=> d!401573 (=> (not res!636126) (not e!897253))))

(declare-fun lt!468920 () BalanceConc!9370)

(assert (=> d!401573 (= res!636126 (= (list!5582 lt!468920) (Cons!14297 t2!34 Nil!14297)))))

(assert (=> d!401573 (= lt!468920 (singleton!497 t2!34))))

(assert (=> d!401573 (= (singletonSeq!1142 t2!34) lt!468920)))

(declare-fun b!1405462 () Bool)

(assert (=> b!1405462 (= e!897253 (isBalanced!1391 (c!230986 lt!468920)))))

(assert (= (and d!401573 res!636126) b!1405462))

(declare-fun m!1583095 () Bool)

(assert (=> d!401573 m!1583095))

(declare-fun m!1583097 () Bool)

(assert (=> d!401573 m!1583097))

(declare-fun m!1583099 () Bool)

(assert (=> b!1405462 m!1583099))

(assert (=> b!1404689 d!401573))

(declare-fun call!93703 () Option!2740)

(declare-fun bm!93698 () Bool)

(declare-fun maxPrefixOneRule!647 (LexerInterface!2172 Rule!4754 List!14360) Option!2740)

(assert (=> bm!93698 (= call!93703 (maxPrefixOneRule!647 thiss!19762 (h!19697 rules!2550) lt!468670))))

(declare-fun b!1405481 () Bool)

(declare-fun res!636144 () Bool)

(declare-fun e!897261 () Bool)

(assert (=> b!1405481 (=> (not res!636144) (not e!897261))))

(declare-fun lt!468934 () Option!2740)

(declare-fun get!4413 (Option!2740) tuple2!13924)

(assert (=> b!1405481 (= res!636144 (matchR!1782 (regex!2477 (rule!4240 (_1!7848 (get!4413 lt!468934)))) (list!5581 (charsOf!1449 (_1!7848 (get!4413 lt!468934))))))))

(declare-fun b!1405482 () Bool)

(assert (=> b!1405482 (= e!897261 (contains!2814 rules!2550 (rule!4240 (_1!7848 (get!4413 lt!468934)))))))

(declare-fun d!401575 () Bool)

(declare-fun e!897260 () Bool)

(assert (=> d!401575 e!897260))

(declare-fun res!636147 () Bool)

(assert (=> d!401575 (=> res!636147 e!897260)))

(declare-fun isEmpty!8709 (Option!2740) Bool)

(assert (=> d!401575 (= res!636147 (isEmpty!8709 lt!468934))))

(declare-fun e!897262 () Option!2740)

(assert (=> d!401575 (= lt!468934 e!897262)))

(declare-fun c!231158 () Bool)

(assert (=> d!401575 (= c!231158 (and ((_ is Cons!14296) rules!2550) ((_ is Nil!14296) (t!122995 rules!2550))))))

(declare-fun lt!468933 () Unit!20647)

(declare-fun lt!468931 () Unit!20647)

(assert (=> d!401575 (= lt!468933 lt!468931)))

(declare-fun isPrefix!1162 (List!14360 List!14360) Bool)

(assert (=> d!401575 (isPrefix!1162 lt!468670 lt!468670)))

(declare-fun lemmaIsPrefixRefl!821 (List!14360 List!14360) Unit!20647)

(assert (=> d!401575 (= lt!468931 (lemmaIsPrefixRefl!821 lt!468670 lt!468670))))

(declare-fun rulesValidInductive!804 (LexerInterface!2172 List!14362) Bool)

(assert (=> d!401575 (rulesValidInductive!804 thiss!19762 rules!2550)))

(assert (=> d!401575 (= (maxPrefix!1146 thiss!19762 rules!2550 lt!468670) lt!468934)))

(declare-fun b!1405483 () Bool)

(declare-fun res!636143 () Bool)

(assert (=> b!1405483 (=> (not res!636143) (not e!897261))))

(assert (=> b!1405483 (= res!636143 (= (list!5581 (charsOf!1449 (_1!7848 (get!4413 lt!468934)))) (originalCharacters!3339 (_1!7848 (get!4413 lt!468934)))))))

(declare-fun b!1405484 () Bool)

(declare-fun res!636141 () Bool)

(assert (=> b!1405484 (=> (not res!636141) (not e!897261))))

(assert (=> b!1405484 (= res!636141 (= (++!3718 (list!5581 (charsOf!1449 (_1!7848 (get!4413 lt!468934)))) (_2!7848 (get!4413 lt!468934))) lt!468670))))

(declare-fun b!1405485 () Bool)

(assert (=> b!1405485 (= e!897262 call!93703)))

(declare-fun b!1405486 () Bool)

(assert (=> b!1405486 (= e!897260 e!897261)))

(declare-fun res!636142 () Bool)

(assert (=> b!1405486 (=> (not res!636142) (not e!897261))))

(declare-fun isDefined!2249 (Option!2740) Bool)

(assert (=> b!1405486 (= res!636142 (isDefined!2249 lt!468934))))

(declare-fun b!1405487 () Bool)

(declare-fun res!636146 () Bool)

(assert (=> b!1405487 (=> (not res!636146) (not e!897261))))

(assert (=> b!1405487 (= res!636146 (< (size!11766 (_2!7848 (get!4413 lt!468934))) (size!11766 lt!468670)))))

(declare-fun b!1405488 () Bool)

(declare-fun res!636145 () Bool)

(assert (=> b!1405488 (=> (not res!636145) (not e!897261))))

(declare-fun apply!3661 (TokenValueInjection!4794 BalanceConc!9368) TokenValue!2567)

(declare-fun seqFromList!1665 (List!14360) BalanceConc!9368)

(assert (=> b!1405488 (= res!636145 (= (value!80227 (_1!7848 (get!4413 lt!468934))) (apply!3661 (transformation!2477 (rule!4240 (_1!7848 (get!4413 lt!468934)))) (seqFromList!1665 (originalCharacters!3339 (_1!7848 (get!4413 lt!468934)))))))))

(declare-fun b!1405489 () Bool)

(declare-fun lt!468932 () Option!2740)

(declare-fun lt!468935 () Option!2740)

(assert (=> b!1405489 (= e!897262 (ite (and ((_ is None!2739) lt!468932) ((_ is None!2739) lt!468935)) None!2739 (ite ((_ is None!2739) lt!468935) lt!468932 (ite ((_ is None!2739) lt!468932) lt!468935 (ite (>= (size!11762 (_1!7848 (v!21691 lt!468932))) (size!11762 (_1!7848 (v!21691 lt!468935)))) lt!468932 lt!468935)))))))

(assert (=> b!1405489 (= lt!468932 call!93703)))

(assert (=> b!1405489 (= lt!468935 (maxPrefix!1146 thiss!19762 (t!122995 rules!2550) lt!468670))))

(assert (= (and d!401575 c!231158) b!1405485))

(assert (= (and d!401575 (not c!231158)) b!1405489))

(assert (= (or b!1405485 b!1405489) bm!93698))

(assert (= (and d!401575 (not res!636147)) b!1405486))

(assert (= (and b!1405486 res!636142) b!1405483))

(assert (= (and b!1405483 res!636143) b!1405487))

(assert (= (and b!1405487 res!636146) b!1405484))

(assert (= (and b!1405484 res!636141) b!1405488))

(assert (= (and b!1405488 res!636145) b!1405481))

(assert (= (and b!1405481 res!636144) b!1405482))

(declare-fun m!1583101 () Bool)

(assert (=> b!1405484 m!1583101))

(declare-fun m!1583103 () Bool)

(assert (=> b!1405484 m!1583103))

(assert (=> b!1405484 m!1583103))

(declare-fun m!1583105 () Bool)

(assert (=> b!1405484 m!1583105))

(assert (=> b!1405484 m!1583105))

(declare-fun m!1583107 () Bool)

(assert (=> b!1405484 m!1583107))

(assert (=> b!1405487 m!1583101))

(declare-fun m!1583109 () Bool)

(assert (=> b!1405487 m!1583109))

(assert (=> b!1405487 m!1582969))

(assert (=> b!1405488 m!1583101))

(declare-fun m!1583111 () Bool)

(assert (=> b!1405488 m!1583111))

(assert (=> b!1405488 m!1583111))

(declare-fun m!1583113 () Bool)

(assert (=> b!1405488 m!1583113))

(declare-fun m!1583115 () Bool)

(assert (=> d!401575 m!1583115))

(declare-fun m!1583117 () Bool)

(assert (=> d!401575 m!1583117))

(declare-fun m!1583119 () Bool)

(assert (=> d!401575 m!1583119))

(declare-fun m!1583121 () Bool)

(assert (=> d!401575 m!1583121))

(assert (=> b!1405483 m!1583101))

(assert (=> b!1405483 m!1583103))

(assert (=> b!1405483 m!1583103))

(assert (=> b!1405483 m!1583105))

(declare-fun m!1583123 () Bool)

(assert (=> b!1405486 m!1583123))

(declare-fun m!1583125 () Bool)

(assert (=> bm!93698 m!1583125))

(assert (=> b!1405482 m!1583101))

(declare-fun m!1583127 () Bool)

(assert (=> b!1405482 m!1583127))

(assert (=> b!1405481 m!1583101))

(assert (=> b!1405481 m!1583103))

(assert (=> b!1405481 m!1583103))

(assert (=> b!1405481 m!1583105))

(assert (=> b!1405481 m!1583105))

(declare-fun m!1583129 () Bool)

(assert (=> b!1405481 m!1583129))

(declare-fun m!1583131 () Bool)

(assert (=> b!1405489 m!1583131))

(assert (=> b!1404667 d!401575))

(declare-fun d!401577 () Bool)

(declare-fun choose!8684 (Int) Bool)

(assert (=> d!401577 (= (Exists!941 lambda!61859) (choose!8684 lambda!61859))))

(declare-fun bs!338512 () Bool)

(assert (= bs!338512 d!401577))

(declare-fun m!1583133 () Bool)

(assert (=> bs!338512 m!1583133))

(assert (=> b!1404669 d!401577))

(declare-fun bs!338513 () Bool)

(declare-fun d!401579 () Bool)

(assert (= bs!338513 (and d!401579 b!1404669)))

(declare-fun lambda!61907 () Int)

(assert (=> bs!338513 (= lambda!61907 lambda!61859)))

(assert (=> d!401579 true))

(assert (=> d!401579 true))

(assert (=> d!401579 (Exists!941 lambda!61907)))

(declare-fun lt!468938 () Unit!20647)

(declare-fun choose!8685 (Regex!3791 List!14360) Unit!20647)

(assert (=> d!401579 (= lt!468938 (choose!8685 lt!468667 lt!468672))))

(assert (=> d!401579 (validRegex!1661 lt!468667)))

(assert (=> d!401579 (= (lemmaPrefixMatchThenExistsStringThatMatches!259 lt!468667 lt!468672) lt!468938)))

(declare-fun bs!338514 () Bool)

(assert (= bs!338514 d!401579))

(declare-fun m!1583135 () Bool)

(assert (=> bs!338514 m!1583135))

(declare-fun m!1583137 () Bool)

(assert (=> bs!338514 m!1583137))

(assert (=> bs!338514 m!1582563))

(assert (=> b!1404669 d!401579))

(declare-fun d!401581 () Bool)

(declare-fun lt!468939 () Bool)

(assert (=> d!401581 (= lt!468939 (select (content!2127 (usedCharacters!288 (regex!2477 (rule!4240 t2!34)))) lt!468675))))

(declare-fun e!897266 () Bool)

(assert (=> d!401581 (= lt!468939 e!897266)))

(declare-fun res!636151 () Bool)

(assert (=> d!401581 (=> (not res!636151) (not e!897266))))

(assert (=> d!401581 (= res!636151 ((_ is Cons!14294) (usedCharacters!288 (regex!2477 (rule!4240 t2!34)))))))

(assert (=> d!401581 (= (contains!2813 (usedCharacters!288 (regex!2477 (rule!4240 t2!34))) lt!468675) lt!468939)))

(declare-fun b!1405492 () Bool)

(declare-fun e!897265 () Bool)

(assert (=> b!1405492 (= e!897266 e!897265)))

(declare-fun res!636150 () Bool)

(assert (=> b!1405492 (=> res!636150 e!897265)))

(assert (=> b!1405492 (= res!636150 (= (h!19695 (usedCharacters!288 (regex!2477 (rule!4240 t2!34)))) lt!468675))))

(declare-fun b!1405493 () Bool)

(assert (=> b!1405493 (= e!897265 (contains!2813 (t!122993 (usedCharacters!288 (regex!2477 (rule!4240 t2!34)))) lt!468675))))

(assert (= (and d!401581 res!636151) b!1405492))

(assert (= (and b!1405492 (not res!636150)) b!1405493))

(assert (=> d!401581 m!1582121))

(declare-fun m!1583139 () Bool)

(assert (=> d!401581 m!1583139))

(declare-fun m!1583141 () Bool)

(assert (=> d!401581 m!1583141))

(declare-fun m!1583143 () Bool)

(assert (=> b!1405493 m!1583143))

(assert (=> b!1404648 d!401581))

(declare-fun b!1405494 () Bool)

(declare-fun e!897267 () List!14360)

(declare-fun e!897268 () List!14360)

(assert (=> b!1405494 (= e!897267 e!897268)))

(declare-fun c!231160 () Bool)

(assert (=> b!1405494 (= c!231160 ((_ is Union!3791) (regex!2477 (rule!4240 t2!34))))))

(declare-fun bm!93699 () Bool)

(declare-fun call!93704 () List!14360)

(assert (=> bm!93699 (= call!93704 (usedCharacters!288 (ite c!231160 (regOne!8095 (regex!2477 (rule!4240 t2!34))) (regTwo!8094 (regex!2477 (rule!4240 t2!34))))))))

(declare-fun b!1405495 () Bool)

(declare-fun call!93706 () List!14360)

(assert (=> b!1405495 (= e!897268 call!93706)))

(declare-fun bm!93700 () Bool)

(declare-fun call!93705 () List!14360)

(declare-fun c!231162 () Bool)

(assert (=> bm!93700 (= call!93705 (usedCharacters!288 (ite c!231162 (reg!4120 (regex!2477 (rule!4240 t2!34))) (ite c!231160 (regTwo!8095 (regex!2477 (rule!4240 t2!34))) (regOne!8094 (regex!2477 (rule!4240 t2!34)))))))))

(declare-fun b!1405496 () Bool)

(assert (=> b!1405496 (= e!897267 call!93705)))

(declare-fun b!1405497 () Bool)

(declare-fun e!897270 () List!14360)

(assert (=> b!1405497 (= e!897270 (Cons!14294 (c!230985 (regex!2477 (rule!4240 t2!34))) Nil!14294))))

(declare-fun bm!93701 () Bool)

(declare-fun call!93707 () List!14360)

(assert (=> bm!93701 (= call!93707 call!93705)))

(declare-fun bm!93702 () Bool)

(assert (=> bm!93702 (= call!93706 (++!3718 (ite c!231160 call!93704 call!93707) (ite c!231160 call!93707 call!93704)))))

(declare-fun b!1405499 () Bool)

(assert (=> b!1405499 (= c!231162 ((_ is Star!3791) (regex!2477 (rule!4240 t2!34))))))

(assert (=> b!1405499 (= e!897270 e!897267)))

(declare-fun b!1405500 () Bool)

(declare-fun e!897269 () List!14360)

(assert (=> b!1405500 (= e!897269 Nil!14294)))

(declare-fun b!1405501 () Bool)

(assert (=> b!1405501 (= e!897268 call!93706)))

(declare-fun b!1405498 () Bool)

(assert (=> b!1405498 (= e!897269 e!897270)))

(declare-fun c!231161 () Bool)

(assert (=> b!1405498 (= c!231161 ((_ is ElementMatch!3791) (regex!2477 (rule!4240 t2!34))))))

(declare-fun d!401583 () Bool)

(declare-fun c!231159 () Bool)

(assert (=> d!401583 (= c!231159 (or ((_ is EmptyExpr!3791) (regex!2477 (rule!4240 t2!34))) ((_ is EmptyLang!3791) (regex!2477 (rule!4240 t2!34)))))))

(assert (=> d!401583 (= (usedCharacters!288 (regex!2477 (rule!4240 t2!34))) e!897269)))

(assert (= (and d!401583 c!231159) b!1405500))

(assert (= (and d!401583 (not c!231159)) b!1405498))

(assert (= (and b!1405498 c!231161) b!1405497))

(assert (= (and b!1405498 (not c!231161)) b!1405499))

(assert (= (and b!1405499 c!231162) b!1405496))

(assert (= (and b!1405499 (not c!231162)) b!1405494))

(assert (= (and b!1405494 c!231160) b!1405501))

(assert (= (and b!1405494 (not c!231160)) b!1405495))

(assert (= (or b!1405501 b!1405495) bm!93699))

(assert (= (or b!1405501 b!1405495) bm!93701))

(assert (= (or b!1405501 b!1405495) bm!93702))

(assert (= (or b!1405496 bm!93701) bm!93700))

(declare-fun m!1583145 () Bool)

(assert (=> bm!93699 m!1583145))

(declare-fun m!1583147 () Bool)

(assert (=> bm!93700 m!1583147))

(declare-fun m!1583149 () Bool)

(assert (=> bm!93702 m!1583149))

(assert (=> b!1404648 d!401583))

(declare-fun d!401585 () Bool)

(declare-fun res!636154 () Bool)

(declare-fun e!897273 () Bool)

(assert (=> d!401585 (=> (not res!636154) (not e!897273))))

(declare-fun rulesValid!933 (LexerInterface!2172 List!14362) Bool)

(assert (=> d!401585 (= res!636154 (rulesValid!933 thiss!19762 rules!2550))))

(assert (=> d!401585 (= (rulesInvariant!2042 thiss!19762 rules!2550) e!897273)))

(declare-fun b!1405504 () Bool)

(declare-datatypes ((List!14366 0))(
  ( (Nil!14300) (Cons!14300 (h!19701 String!17071) (t!123035 List!14366)) )
))
(declare-fun noDuplicateTag!933 (LexerInterface!2172 List!14362 List!14366) Bool)

(assert (=> b!1405504 (= e!897273 (noDuplicateTag!933 thiss!19762 rules!2550 Nil!14300))))

(assert (= (and d!401585 res!636154) b!1405504))

(declare-fun m!1583151 () Bool)

(assert (=> d!401585 m!1583151))

(declare-fun m!1583153 () Bool)

(assert (=> b!1405504 m!1583153))

(assert (=> b!1404676 d!401585))

(declare-fun d!401587 () Bool)

(declare-fun lt!468940 () Bool)

(assert (=> d!401587 (= lt!468940 (select (content!2127 lt!468672) lt!468675))))

(declare-fun e!897275 () Bool)

(assert (=> d!401587 (= lt!468940 e!897275)))

(declare-fun res!636156 () Bool)

(assert (=> d!401587 (=> (not res!636156) (not e!897275))))

(assert (=> d!401587 (= res!636156 ((_ is Cons!14294) lt!468672))))

(assert (=> d!401587 (= (contains!2813 lt!468672 lt!468675) lt!468940)))

(declare-fun b!1405505 () Bool)

(declare-fun e!897274 () Bool)

(assert (=> b!1405505 (= e!897275 e!897274)))

(declare-fun res!636155 () Bool)

(assert (=> b!1405505 (=> res!636155 e!897274)))

(assert (=> b!1405505 (= res!636155 (= (h!19695 lt!468672) lt!468675))))

(declare-fun b!1405506 () Bool)

(assert (=> b!1405506 (= e!897274 (contains!2813 (t!122993 lt!468672) lt!468675))))

(assert (= (and d!401587 res!636156) b!1405505))

(assert (= (and b!1405505 (not res!636155)) b!1405506))

(assert (=> d!401587 m!1582693))

(declare-fun m!1583155 () Bool)

(assert (=> d!401587 m!1583155))

(declare-fun m!1583157 () Bool)

(assert (=> b!1405506 m!1583157))

(assert (=> b!1404675 d!401587))

(declare-fun d!401589 () Bool)

(declare-fun lt!468941 () Bool)

(assert (=> d!401589 (= lt!468941 (isEmpty!8703 (list!5581 (_2!7849 lt!468656))))))

(assert (=> d!401589 (= lt!468941 (isEmpty!8708 (c!230984 (_2!7849 lt!468656))))))

(assert (=> d!401589 (= (isEmpty!8698 (_2!7849 lt!468656)) lt!468941)))

(declare-fun bs!338515 () Bool)

(assert (= bs!338515 d!401589))

(declare-fun m!1583159 () Bool)

(assert (=> bs!338515 m!1583159))

(assert (=> bs!338515 m!1583159))

(declare-fun m!1583161 () Bool)

(assert (=> bs!338515 m!1583161))

(declare-fun m!1583163 () Bool)

(assert (=> bs!338515 m!1583163))

(assert (=> b!1404677 d!401589))

(declare-fun d!401591 () Bool)

(assert (=> d!401591 (= (inv!18597 (tag!2739 (rule!4240 t2!34))) (= (mod (str.len (value!80226 (tag!2739 (rule!4240 t2!34)))) 2) 0))))

(assert (=> b!1404656 d!401591))

(declare-fun d!401593 () Bool)

(declare-fun res!636157 () Bool)

(declare-fun e!897276 () Bool)

(assert (=> d!401593 (=> (not res!636157) (not e!897276))))

(assert (=> d!401593 (= res!636157 (semiInverseModEq!964 (toChars!3627 (transformation!2477 (rule!4240 t2!34))) (toValue!3768 (transformation!2477 (rule!4240 t2!34)))))))

(assert (=> d!401593 (= (inv!18601 (transformation!2477 (rule!4240 t2!34))) e!897276)))

(declare-fun b!1405507 () Bool)

(assert (=> b!1405507 (= e!897276 (equivClasses!923 (toChars!3627 (transformation!2477 (rule!4240 t2!34))) (toValue!3768 (transformation!2477 (rule!4240 t2!34)))))))

(assert (= (and d!401593 res!636157) b!1405507))

(declare-fun m!1583165 () Bool)

(assert (=> d!401593 m!1583165))

(declare-fun m!1583167 () Bool)

(assert (=> b!1405507 m!1583167))

(assert (=> b!1404656 d!401593))

(declare-fun b!1405508 () Bool)

(declare-fun res!636161 () Bool)

(declare-fun e!897277 () Bool)

(assert (=> b!1405508 (=> (not res!636161) (not e!897277))))

(declare-fun call!93708 () Bool)

(assert (=> b!1405508 (= res!636161 (not call!93708))))

(declare-fun b!1405509 () Bool)

(declare-fun e!897280 () Bool)

(assert (=> b!1405509 (= e!897280 (matchR!1782 (derivativeStep!993 (regex!2477 (rule!4240 t2!34)) (head!2611 lt!468661)) (tail!2040 lt!468661)))))

(declare-fun b!1405510 () Bool)

(declare-fun res!636160 () Bool)

(assert (=> b!1405510 (=> (not res!636160) (not e!897277))))

(assert (=> b!1405510 (= res!636160 (isEmpty!8703 (tail!2040 lt!468661)))))

(declare-fun b!1405511 () Bool)

(declare-fun e!897281 () Bool)

(declare-fun lt!468942 () Bool)

(assert (=> b!1405511 (= e!897281 (= lt!468942 call!93708))))

(declare-fun b!1405512 () Bool)

(declare-fun e!897282 () Bool)

(declare-fun e!897283 () Bool)

(assert (=> b!1405512 (= e!897282 e!897283)))

(declare-fun res!636165 () Bool)

(assert (=> b!1405512 (=> res!636165 e!897283)))

(assert (=> b!1405512 (= res!636165 call!93708)))

(declare-fun b!1405513 () Bool)

(assert (=> b!1405513 (= e!897280 (nullable!1234 (regex!2477 (rule!4240 t2!34))))))

(declare-fun b!1405514 () Bool)

(declare-fun res!636159 () Bool)

(declare-fun e!897278 () Bool)

(assert (=> b!1405514 (=> res!636159 e!897278)))

(assert (=> b!1405514 (= res!636159 (not ((_ is ElementMatch!3791) (regex!2477 (rule!4240 t2!34)))))))

(declare-fun e!897279 () Bool)

(assert (=> b!1405514 (= e!897279 e!897278)))

(declare-fun d!401595 () Bool)

(assert (=> d!401595 e!897281))

(declare-fun c!231165 () Bool)

(assert (=> d!401595 (= c!231165 ((_ is EmptyExpr!3791) (regex!2477 (rule!4240 t2!34))))))

(assert (=> d!401595 (= lt!468942 e!897280)))

(declare-fun c!231163 () Bool)

(assert (=> d!401595 (= c!231163 (isEmpty!8703 lt!468661))))

(assert (=> d!401595 (validRegex!1661 (regex!2477 (rule!4240 t2!34)))))

(assert (=> d!401595 (= (matchR!1782 (regex!2477 (rule!4240 t2!34)) lt!468661) lt!468942)))

(declare-fun b!1405515 () Bool)

(assert (=> b!1405515 (= e!897281 e!897279)))

(declare-fun c!231164 () Bool)

(assert (=> b!1405515 (= c!231164 ((_ is EmptyLang!3791) (regex!2477 (rule!4240 t2!34))))))

(declare-fun b!1405516 () Bool)

(declare-fun res!636162 () Bool)

(assert (=> b!1405516 (=> res!636162 e!897283)))

(assert (=> b!1405516 (= res!636162 (not (isEmpty!8703 (tail!2040 lt!468661))))))

(declare-fun b!1405517 () Bool)

(assert (=> b!1405517 (= e!897279 (not lt!468942))))

(declare-fun b!1405518 () Bool)

(assert (=> b!1405518 (= e!897277 (= (head!2611 lt!468661) (c!230985 (regex!2477 (rule!4240 t2!34)))))))

(declare-fun b!1405519 () Bool)

(declare-fun res!636163 () Bool)

(assert (=> b!1405519 (=> res!636163 e!897278)))

(assert (=> b!1405519 (= res!636163 e!897277)))

(declare-fun res!636164 () Bool)

(assert (=> b!1405519 (=> (not res!636164) (not e!897277))))

(assert (=> b!1405519 (= res!636164 lt!468942)))

(declare-fun b!1405520 () Bool)

(assert (=> b!1405520 (= e!897278 e!897282)))

(declare-fun res!636158 () Bool)

(assert (=> b!1405520 (=> (not res!636158) (not e!897282))))

(assert (=> b!1405520 (= res!636158 (not lt!468942))))

(declare-fun bm!93703 () Bool)

(assert (=> bm!93703 (= call!93708 (isEmpty!8703 lt!468661))))

(declare-fun b!1405521 () Bool)

(assert (=> b!1405521 (= e!897283 (not (= (head!2611 lt!468661) (c!230985 (regex!2477 (rule!4240 t2!34))))))))

(assert (= (and d!401595 c!231163) b!1405513))

(assert (= (and d!401595 (not c!231163)) b!1405509))

(assert (= (and d!401595 c!231165) b!1405511))

(assert (= (and d!401595 (not c!231165)) b!1405515))

(assert (= (and b!1405515 c!231164) b!1405517))

(assert (= (and b!1405515 (not c!231164)) b!1405514))

(assert (= (and b!1405514 (not res!636159)) b!1405519))

(assert (= (and b!1405519 res!636164) b!1405508))

(assert (= (and b!1405508 res!636161) b!1405510))

(assert (= (and b!1405510 res!636160) b!1405518))

(assert (= (and b!1405519 (not res!636163)) b!1405520))

(assert (= (and b!1405520 res!636158) b!1405512))

(assert (= (and b!1405512 (not res!636165)) b!1405516))

(assert (= (and b!1405516 (not res!636162)) b!1405521))

(assert (= (or b!1405511 b!1405508 b!1405512) bm!93703))

(declare-fun m!1583169 () Bool)

(assert (=> bm!93703 m!1583169))

(assert (=> b!1405509 m!1582027))

(assert (=> b!1405509 m!1582027))

(declare-fun m!1583171 () Bool)

(assert (=> b!1405509 m!1583171))

(declare-fun m!1583173 () Bool)

(assert (=> b!1405509 m!1583173))

(assert (=> b!1405509 m!1583171))

(assert (=> b!1405509 m!1583173))

(declare-fun m!1583175 () Bool)

(assert (=> b!1405509 m!1583175))

(assert (=> b!1405518 m!1582027))

(assert (=> b!1405521 m!1582027))

(assert (=> b!1405510 m!1583173))

(assert (=> b!1405510 m!1583173))

(declare-fun m!1583177 () Bool)

(assert (=> b!1405510 m!1583177))

(declare-fun m!1583179 () Bool)

(assert (=> b!1405513 m!1583179))

(assert (=> d!401595 m!1583169))

(assert (=> d!401595 m!1582669))

(assert (=> b!1405516 m!1583173))

(assert (=> b!1405516 m!1583173))

(assert (=> b!1405516 m!1583177))

(assert (=> b!1404655 d!401595))

(declare-fun call!93709 () Option!2740)

(declare-fun bm!93704 () Bool)

(assert (=> bm!93704 (= call!93709 (maxPrefixOneRule!647 thiss!19762 (h!19697 rules!2550) lt!468661))))

(declare-fun b!1405522 () Bool)

(declare-fun res!636169 () Bool)

(declare-fun e!897285 () Bool)

(assert (=> b!1405522 (=> (not res!636169) (not e!897285))))

(declare-fun lt!468946 () Option!2740)

(assert (=> b!1405522 (= res!636169 (matchR!1782 (regex!2477 (rule!4240 (_1!7848 (get!4413 lt!468946)))) (list!5581 (charsOf!1449 (_1!7848 (get!4413 lt!468946))))))))

(declare-fun b!1405523 () Bool)

(assert (=> b!1405523 (= e!897285 (contains!2814 rules!2550 (rule!4240 (_1!7848 (get!4413 lt!468946)))))))

(declare-fun d!401597 () Bool)

(declare-fun e!897284 () Bool)

(assert (=> d!401597 e!897284))

(declare-fun res!636172 () Bool)

(assert (=> d!401597 (=> res!636172 e!897284)))

(assert (=> d!401597 (= res!636172 (isEmpty!8709 lt!468946))))

(declare-fun e!897286 () Option!2740)

(assert (=> d!401597 (= lt!468946 e!897286)))

(declare-fun c!231166 () Bool)

(assert (=> d!401597 (= c!231166 (and ((_ is Cons!14296) rules!2550) ((_ is Nil!14296) (t!122995 rules!2550))))))

(declare-fun lt!468945 () Unit!20647)

(declare-fun lt!468943 () Unit!20647)

(assert (=> d!401597 (= lt!468945 lt!468943)))

(assert (=> d!401597 (isPrefix!1162 lt!468661 lt!468661)))

(assert (=> d!401597 (= lt!468943 (lemmaIsPrefixRefl!821 lt!468661 lt!468661))))

(assert (=> d!401597 (rulesValidInductive!804 thiss!19762 rules!2550)))

(assert (=> d!401597 (= (maxPrefix!1146 thiss!19762 rules!2550 lt!468661) lt!468946)))

(declare-fun b!1405524 () Bool)

(declare-fun res!636168 () Bool)

(assert (=> b!1405524 (=> (not res!636168) (not e!897285))))

(assert (=> b!1405524 (= res!636168 (= (list!5581 (charsOf!1449 (_1!7848 (get!4413 lt!468946)))) (originalCharacters!3339 (_1!7848 (get!4413 lt!468946)))))))

(declare-fun b!1405525 () Bool)

(declare-fun res!636166 () Bool)

(assert (=> b!1405525 (=> (not res!636166) (not e!897285))))

(assert (=> b!1405525 (= res!636166 (= (++!3718 (list!5581 (charsOf!1449 (_1!7848 (get!4413 lt!468946)))) (_2!7848 (get!4413 lt!468946))) lt!468661))))

(declare-fun b!1405526 () Bool)

(assert (=> b!1405526 (= e!897286 call!93709)))

(declare-fun b!1405527 () Bool)

(assert (=> b!1405527 (= e!897284 e!897285)))

(declare-fun res!636167 () Bool)

(assert (=> b!1405527 (=> (not res!636167) (not e!897285))))

(assert (=> b!1405527 (= res!636167 (isDefined!2249 lt!468946))))

(declare-fun b!1405528 () Bool)

(declare-fun res!636171 () Bool)

(assert (=> b!1405528 (=> (not res!636171) (not e!897285))))

(assert (=> b!1405528 (= res!636171 (< (size!11766 (_2!7848 (get!4413 lt!468946))) (size!11766 lt!468661)))))

(declare-fun b!1405529 () Bool)

(declare-fun res!636170 () Bool)

(assert (=> b!1405529 (=> (not res!636170) (not e!897285))))

(assert (=> b!1405529 (= res!636170 (= (value!80227 (_1!7848 (get!4413 lt!468946))) (apply!3661 (transformation!2477 (rule!4240 (_1!7848 (get!4413 lt!468946)))) (seqFromList!1665 (originalCharacters!3339 (_1!7848 (get!4413 lt!468946)))))))))

(declare-fun b!1405530 () Bool)

(declare-fun lt!468944 () Option!2740)

(declare-fun lt!468947 () Option!2740)

(assert (=> b!1405530 (= e!897286 (ite (and ((_ is None!2739) lt!468944) ((_ is None!2739) lt!468947)) None!2739 (ite ((_ is None!2739) lt!468947) lt!468944 (ite ((_ is None!2739) lt!468944) lt!468947 (ite (>= (size!11762 (_1!7848 (v!21691 lt!468944))) (size!11762 (_1!7848 (v!21691 lt!468947)))) lt!468944 lt!468947)))))))

(assert (=> b!1405530 (= lt!468944 call!93709)))

(assert (=> b!1405530 (= lt!468947 (maxPrefix!1146 thiss!19762 (t!122995 rules!2550) lt!468661))))

(assert (= (and d!401597 c!231166) b!1405526))

(assert (= (and d!401597 (not c!231166)) b!1405530))

(assert (= (or b!1405526 b!1405530) bm!93704))

(assert (= (and d!401597 (not res!636172)) b!1405527))

(assert (= (and b!1405527 res!636167) b!1405524))

(assert (= (and b!1405524 res!636168) b!1405528))

(assert (= (and b!1405528 res!636171) b!1405525))

(assert (= (and b!1405525 res!636166) b!1405529))

(assert (= (and b!1405529 res!636170) b!1405522))

(assert (= (and b!1405522 res!636169) b!1405523))

(declare-fun m!1583181 () Bool)

(assert (=> b!1405525 m!1583181))

(declare-fun m!1583183 () Bool)

(assert (=> b!1405525 m!1583183))

(assert (=> b!1405525 m!1583183))

(declare-fun m!1583185 () Bool)

(assert (=> b!1405525 m!1583185))

(assert (=> b!1405525 m!1583185))

(declare-fun m!1583187 () Bool)

(assert (=> b!1405525 m!1583187))

(assert (=> b!1405528 m!1583181))

(declare-fun m!1583189 () Bool)

(assert (=> b!1405528 m!1583189))

(declare-fun m!1583191 () Bool)

(assert (=> b!1405528 m!1583191))

(assert (=> b!1405529 m!1583181))

(declare-fun m!1583193 () Bool)

(assert (=> b!1405529 m!1583193))

(assert (=> b!1405529 m!1583193))

(declare-fun m!1583195 () Bool)

(assert (=> b!1405529 m!1583195))

(declare-fun m!1583197 () Bool)

(assert (=> d!401597 m!1583197))

(declare-fun m!1583199 () Bool)

(assert (=> d!401597 m!1583199))

(declare-fun m!1583201 () Bool)

(assert (=> d!401597 m!1583201))

(assert (=> d!401597 m!1583121))

(assert (=> b!1405524 m!1583181))

(assert (=> b!1405524 m!1583183))

(assert (=> b!1405524 m!1583183))

(assert (=> b!1405524 m!1583185))

(declare-fun m!1583203 () Bool)

(assert (=> b!1405527 m!1583203))

(declare-fun m!1583205 () Bool)

(assert (=> bm!93704 m!1583205))

(assert (=> b!1405523 m!1583181))

(declare-fun m!1583207 () Bool)

(assert (=> b!1405523 m!1583207))

(assert (=> b!1405522 m!1583181))

(assert (=> b!1405522 m!1583183))

(assert (=> b!1405522 m!1583183))

(assert (=> b!1405522 m!1583185))

(assert (=> b!1405522 m!1583185))

(declare-fun m!1583209 () Bool)

(assert (=> b!1405522 m!1583209))

(declare-fun m!1583211 () Bool)

(assert (=> b!1405530 m!1583211))

(assert (=> b!1404673 d!401597))

(declare-fun d!401599 () Bool)

(assert (=> d!401599 (= (list!5581 lt!468674) (list!5584 (c!230984 lt!468674)))))

(declare-fun bs!338516 () Bool)

(assert (= bs!338516 d!401599))

(declare-fun m!1583213 () Bool)

(assert (=> bs!338516 m!1583213))

(assert (=> b!1404673 d!401599))

(declare-fun d!401601 () Bool)

(declare-fun lt!468948 () Bool)

(assert (=> d!401601 (= lt!468948 (select (content!2126 rules!2550) (rule!4240 t2!34)))))

(declare-fun e!897287 () Bool)

(assert (=> d!401601 (= lt!468948 e!897287)))

(declare-fun res!636173 () Bool)

(assert (=> d!401601 (=> (not res!636173) (not e!897287))))

(assert (=> d!401601 (= res!636173 ((_ is Cons!14296) rules!2550))))

(assert (=> d!401601 (= (contains!2814 rules!2550 (rule!4240 t2!34)) lt!468948)))

(declare-fun b!1405531 () Bool)

(declare-fun e!897288 () Bool)

(assert (=> b!1405531 (= e!897287 e!897288)))

(declare-fun res!636174 () Bool)

(assert (=> b!1405531 (=> res!636174 e!897288)))

(assert (=> b!1405531 (= res!636174 (= (h!19697 rules!2550) (rule!4240 t2!34)))))

(declare-fun b!1405532 () Bool)

(assert (=> b!1405532 (= e!897288 (contains!2814 (t!122995 rules!2550) (rule!4240 t2!34)))))

(assert (= (and d!401601 res!636173) b!1405531))

(assert (= (and b!1405531 (not res!636174)) b!1405532))

(assert (=> d!401601 m!1582171))

(declare-fun m!1583215 () Bool)

(assert (=> d!401601 m!1583215))

(declare-fun m!1583217 () Bool)

(assert (=> b!1405532 m!1583217))

(assert (=> b!1404652 d!401601))

(declare-fun d!401603 () Bool)

(declare-fun lt!468949 () Bool)

(declare-fun e!897290 () Bool)

(assert (=> d!401603 (= lt!468949 e!897290)))

(declare-fun res!636176 () Bool)

(assert (=> d!401603 (=> (not res!636176) (not e!897290))))

(assert (=> d!401603 (= res!636176 (= (list!5582 (_1!7849 (lex!997 thiss!19762 rules!2550 (print!936 thiss!19762 (singletonSeq!1142 t1!34))))) (list!5582 (singletonSeq!1142 t1!34))))))

(declare-fun e!897289 () Bool)

(assert (=> d!401603 (= lt!468949 e!897289)))

(declare-fun res!636177 () Bool)

(assert (=> d!401603 (=> (not res!636177) (not e!897289))))

(declare-fun lt!468950 () tuple2!13926)

(assert (=> d!401603 (= res!636177 (= (size!11772 (_1!7849 lt!468950)) 1))))

(assert (=> d!401603 (= lt!468950 (lex!997 thiss!19762 rules!2550 (print!936 thiss!19762 (singletonSeq!1142 t1!34))))))

(assert (=> d!401603 (not (isEmpty!8699 rules!2550))))

(assert (=> d!401603 (= (rulesProduceIndividualToken!1141 thiss!19762 rules!2550 t1!34) lt!468949)))

(declare-fun b!1405533 () Bool)

(declare-fun res!636175 () Bool)

(assert (=> b!1405533 (=> (not res!636175) (not e!897289))))

(assert (=> b!1405533 (= res!636175 (= (apply!3658 (_1!7849 lt!468950) 0) t1!34))))

(declare-fun b!1405534 () Bool)

(assert (=> b!1405534 (= e!897289 (isEmpty!8698 (_2!7849 lt!468950)))))

(declare-fun b!1405535 () Bool)

(assert (=> b!1405535 (= e!897290 (isEmpty!8698 (_2!7849 (lex!997 thiss!19762 rules!2550 (print!936 thiss!19762 (singletonSeq!1142 t1!34))))))))

(assert (= (and d!401603 res!636177) b!1405533))

(assert (= (and b!1405533 res!636175) b!1405534))

(assert (= (and d!401603 res!636176) b!1405535))

(declare-fun m!1583219 () Bool)

(assert (=> d!401603 m!1583219))

(assert (=> d!401603 m!1582095))

(assert (=> d!401603 m!1582051))

(declare-fun m!1583221 () Bool)

(assert (=> d!401603 m!1583221))

(assert (=> d!401603 m!1582051))

(assert (=> d!401603 m!1582401))

(assert (=> d!401603 m!1582051))

(assert (=> d!401603 m!1582053))

(assert (=> d!401603 m!1582053))

(declare-fun m!1583223 () Bool)

(assert (=> d!401603 m!1583223))

(declare-fun m!1583225 () Bool)

(assert (=> b!1405533 m!1583225))

(declare-fun m!1583227 () Bool)

(assert (=> b!1405534 m!1583227))

(assert (=> b!1405535 m!1582051))

(assert (=> b!1405535 m!1582051))

(assert (=> b!1405535 m!1582053))

(assert (=> b!1405535 m!1582053))

(assert (=> b!1405535 m!1583223))

(declare-fun m!1583229 () Bool)

(assert (=> b!1405535 m!1583229))

(assert (=> b!1404651 d!401603))

(declare-fun d!401605 () Bool)

(assert (=> d!401605 (not (matchR!1782 (regex!2477 (rule!4240 t1!34)) lt!468670))))

(declare-fun lt!468951 () Unit!20647)

(assert (=> d!401605 (= lt!468951 (choose!8678 (regex!2477 (rule!4240 t1!34)) lt!468670 (head!2611 lt!468670)))))

(assert (=> d!401605 (validRegex!1661 (regex!2477 (rule!4240 t1!34)))))

(assert (=> d!401605 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!222 (regex!2477 (rule!4240 t1!34)) lt!468670 (head!2611 lt!468670)) lt!468951)))

(declare-fun bs!338517 () Bool)

(assert (= bs!338517 d!401605))

(assert (=> bs!338517 m!1582019))

(assert (=> bs!338517 m!1582013))

(declare-fun m!1583231 () Bool)

(assert (=> bs!338517 m!1583231))

(assert (=> bs!338517 m!1582195))

(assert (=> b!1404653 d!401605))

(declare-fun d!401607 () Bool)

(assert (=> d!401607 (= (head!2611 lt!468670) (h!19695 lt!468670))))

(assert (=> b!1404653 d!401607))

(declare-fun d!401609 () Bool)

(declare-fun lt!468952 () Bool)

(assert (=> d!401609 (= lt!468952 (select (content!2127 (usedCharacters!288 (regex!2477 (rule!4240 t1!34)))) lt!468676))))

(declare-fun e!897292 () Bool)

(assert (=> d!401609 (= lt!468952 e!897292)))

(declare-fun res!636179 () Bool)

(assert (=> d!401609 (=> (not res!636179) (not e!897292))))

(assert (=> d!401609 (= res!636179 ((_ is Cons!14294) (usedCharacters!288 (regex!2477 (rule!4240 t1!34)))))))

(assert (=> d!401609 (= (contains!2813 (usedCharacters!288 (regex!2477 (rule!4240 t1!34))) lt!468676) lt!468952)))

(declare-fun b!1405536 () Bool)

(declare-fun e!897291 () Bool)

(assert (=> b!1405536 (= e!897292 e!897291)))

(declare-fun res!636178 () Bool)

(assert (=> b!1405536 (=> res!636178 e!897291)))

(assert (=> b!1405536 (= res!636178 (= (h!19695 (usedCharacters!288 (regex!2477 (rule!4240 t1!34)))) lt!468676))))

(declare-fun b!1405537 () Bool)

(assert (=> b!1405537 (= e!897291 (contains!2813 (t!122993 (usedCharacters!288 (regex!2477 (rule!4240 t1!34)))) lt!468676))))

(assert (= (and d!401609 res!636179) b!1405536))

(assert (= (and b!1405536 (not res!636178)) b!1405537))

(assert (=> d!401609 m!1582145))

(declare-fun m!1583233 () Bool)

(assert (=> d!401609 m!1583233))

(declare-fun m!1583235 () Bool)

(assert (=> d!401609 m!1583235))

(declare-fun m!1583237 () Bool)

(assert (=> b!1405537 m!1583237))

(assert (=> b!1404674 d!401609))

(declare-fun b!1405538 () Bool)

(declare-fun e!897293 () List!14360)

(declare-fun e!897294 () List!14360)

(assert (=> b!1405538 (= e!897293 e!897294)))

(declare-fun c!231168 () Bool)

(assert (=> b!1405538 (= c!231168 ((_ is Union!3791) (regex!2477 (rule!4240 t1!34))))))

(declare-fun bm!93705 () Bool)

(declare-fun call!93710 () List!14360)

(assert (=> bm!93705 (= call!93710 (usedCharacters!288 (ite c!231168 (regOne!8095 (regex!2477 (rule!4240 t1!34))) (regTwo!8094 (regex!2477 (rule!4240 t1!34))))))))

(declare-fun b!1405539 () Bool)

(declare-fun call!93712 () List!14360)

(assert (=> b!1405539 (= e!897294 call!93712)))

(declare-fun c!231170 () Bool)

(declare-fun call!93711 () List!14360)

(declare-fun bm!93706 () Bool)

(assert (=> bm!93706 (= call!93711 (usedCharacters!288 (ite c!231170 (reg!4120 (regex!2477 (rule!4240 t1!34))) (ite c!231168 (regTwo!8095 (regex!2477 (rule!4240 t1!34))) (regOne!8094 (regex!2477 (rule!4240 t1!34)))))))))

(declare-fun b!1405540 () Bool)

(assert (=> b!1405540 (= e!897293 call!93711)))

(declare-fun b!1405541 () Bool)

(declare-fun e!897296 () List!14360)

(assert (=> b!1405541 (= e!897296 (Cons!14294 (c!230985 (regex!2477 (rule!4240 t1!34))) Nil!14294))))

(declare-fun bm!93707 () Bool)

(declare-fun call!93713 () List!14360)

(assert (=> bm!93707 (= call!93713 call!93711)))

(declare-fun bm!93708 () Bool)

(assert (=> bm!93708 (= call!93712 (++!3718 (ite c!231168 call!93710 call!93713) (ite c!231168 call!93713 call!93710)))))

(declare-fun b!1405543 () Bool)

(assert (=> b!1405543 (= c!231170 ((_ is Star!3791) (regex!2477 (rule!4240 t1!34))))))

(assert (=> b!1405543 (= e!897296 e!897293)))

(declare-fun b!1405544 () Bool)

(declare-fun e!897295 () List!14360)

(assert (=> b!1405544 (= e!897295 Nil!14294)))

(declare-fun b!1405545 () Bool)

(assert (=> b!1405545 (= e!897294 call!93712)))

(declare-fun b!1405542 () Bool)

(assert (=> b!1405542 (= e!897295 e!897296)))

(declare-fun c!231169 () Bool)

(assert (=> b!1405542 (= c!231169 ((_ is ElementMatch!3791) (regex!2477 (rule!4240 t1!34))))))

(declare-fun d!401611 () Bool)

(declare-fun c!231167 () Bool)

(assert (=> d!401611 (= c!231167 (or ((_ is EmptyExpr!3791) (regex!2477 (rule!4240 t1!34))) ((_ is EmptyLang!3791) (regex!2477 (rule!4240 t1!34)))))))

(assert (=> d!401611 (= (usedCharacters!288 (regex!2477 (rule!4240 t1!34))) e!897295)))

(assert (= (and d!401611 c!231167) b!1405544))

(assert (= (and d!401611 (not c!231167)) b!1405542))

(assert (= (and b!1405542 c!231169) b!1405541))

(assert (= (and b!1405542 (not c!231169)) b!1405543))

(assert (= (and b!1405543 c!231170) b!1405540))

(assert (= (and b!1405543 (not c!231170)) b!1405538))

(assert (= (and b!1405538 c!231168) b!1405545))

(assert (= (and b!1405538 (not c!231168)) b!1405539))

(assert (= (or b!1405545 b!1405539) bm!93705))

(assert (= (or b!1405545 b!1405539) bm!93707))

(assert (= (or b!1405545 b!1405539) bm!93708))

(assert (= (or b!1405540 bm!93707) bm!93706))

(declare-fun m!1583239 () Bool)

(assert (=> bm!93705 m!1583239))

(declare-fun m!1583241 () Bool)

(assert (=> bm!93706 m!1583241))

(declare-fun m!1583243 () Bool)

(assert (=> bm!93708 m!1583243))

(assert (=> b!1404674 d!401611))

(declare-fun b!1405550 () Bool)

(declare-fun e!897299 () Bool)

(declare-fun tp_is_empty!6819 () Bool)

(declare-fun tp!399314 () Bool)

(assert (=> b!1405550 (= e!897299 (and tp_is_empty!6819 tp!399314))))

(assert (=> b!1404670 (= tp!399258 e!897299)))

(assert (= (and b!1404670 ((_ is Cons!14294) (originalCharacters!3339 t1!34))) b!1405550))

(declare-fun b!1405563 () Bool)

(declare-fun e!897302 () Bool)

(declare-fun tp!399327 () Bool)

(assert (=> b!1405563 (= e!897302 tp!399327)))

(declare-fun b!1405564 () Bool)

(declare-fun tp!399328 () Bool)

(declare-fun tp!399325 () Bool)

(assert (=> b!1405564 (= e!897302 (and tp!399328 tp!399325))))

(assert (=> b!1404656 (= tp!399257 e!897302)))

(declare-fun b!1405561 () Bool)

(assert (=> b!1405561 (= e!897302 tp_is_empty!6819)))

(declare-fun b!1405562 () Bool)

(declare-fun tp!399326 () Bool)

(declare-fun tp!399329 () Bool)

(assert (=> b!1405562 (= e!897302 (and tp!399326 tp!399329))))

(assert (= (and b!1404656 ((_ is ElementMatch!3791) (regex!2477 (rule!4240 t2!34)))) b!1405561))

(assert (= (and b!1404656 ((_ is Concat!6359) (regex!2477 (rule!4240 t2!34)))) b!1405562))

(assert (= (and b!1404656 ((_ is Star!3791) (regex!2477 (rule!4240 t2!34)))) b!1405563))

(assert (= (and b!1404656 ((_ is Union!3791) (regex!2477 (rule!4240 t2!34)))) b!1405564))

(declare-fun b!1405565 () Bool)

(declare-fun e!897303 () Bool)

(declare-fun tp!399330 () Bool)

(assert (=> b!1405565 (= e!897303 (and tp_is_empty!6819 tp!399330))))

(assert (=> b!1404666 (= tp!399251 e!897303)))

(assert (= (and b!1404666 ((_ is Cons!14294) (originalCharacters!3339 t2!34))) b!1405565))

(declare-fun b!1405568 () Bool)

(declare-fun e!897304 () Bool)

(declare-fun tp!399333 () Bool)

(assert (=> b!1405568 (= e!897304 tp!399333)))

(declare-fun b!1405569 () Bool)

(declare-fun tp!399334 () Bool)

(declare-fun tp!399331 () Bool)

(assert (=> b!1405569 (= e!897304 (and tp!399334 tp!399331))))

(assert (=> b!1404657 (= tp!399262 e!897304)))

(declare-fun b!1405566 () Bool)

(assert (=> b!1405566 (= e!897304 tp_is_empty!6819)))

(declare-fun b!1405567 () Bool)

(declare-fun tp!399332 () Bool)

(declare-fun tp!399335 () Bool)

(assert (=> b!1405567 (= e!897304 (and tp!399332 tp!399335))))

(assert (= (and b!1404657 ((_ is ElementMatch!3791) (regex!2477 (rule!4240 t1!34)))) b!1405566))

(assert (= (and b!1404657 ((_ is Concat!6359) (regex!2477 (rule!4240 t1!34)))) b!1405567))

(assert (= (and b!1404657 ((_ is Star!3791) (regex!2477 (rule!4240 t1!34)))) b!1405568))

(assert (= (and b!1404657 ((_ is Union!3791) (regex!2477 (rule!4240 t1!34)))) b!1405569))

(declare-fun b!1405580 () Bool)

(declare-fun b_free!34291 () Bool)

(declare-fun b_next!34995 () Bool)

(assert (=> b!1405580 (= b_free!34291 (not b_next!34995))))

(declare-fun tp!399347 () Bool)

(declare-fun b_and!94115 () Bool)

(assert (=> b!1405580 (= tp!399347 b_and!94115)))

(declare-fun b_free!34293 () Bool)

(declare-fun b_next!34997 () Bool)

(assert (=> b!1405580 (= b_free!34293 (not b_next!34997))))

(declare-fun t!123032 () Bool)

(declare-fun tb!73173 () Bool)

(assert (=> (and b!1405580 (= (toChars!3627 (transformation!2477 (h!19697 (t!122995 rules!2550)))) (toChars!3627 (transformation!2477 (rule!4240 t1!34)))) t!123032) tb!73173))

(declare-fun result!88986 () Bool)

(assert (= result!88986 result!88956))

(assert (=> b!1405153 t!123032))

(declare-fun t!123034 () Bool)

(declare-fun tb!73175 () Bool)

(assert (=> (and b!1405580 (= (toChars!3627 (transformation!2477 (h!19697 (t!122995 rules!2550)))) (toChars!3627 (transformation!2477 (rule!4240 t2!34)))) t!123034) tb!73175))

(declare-fun result!88988 () Bool)

(assert (= result!88988 result!88964))

(assert (=> b!1405160 t!123034))

(assert (=> d!401487 t!123034))

(assert (=> d!401541 t!123032))

(declare-fun tp!399345 () Bool)

(declare-fun b_and!94117 () Bool)

(assert (=> b!1405580 (= tp!399345 (and (=> t!123032 result!88986) (=> t!123034 result!88988) b_and!94117))))

(declare-fun e!897316 () Bool)

(assert (=> b!1405580 (= e!897316 (and tp!399347 tp!399345))))

(declare-fun e!897313 () Bool)

(declare-fun tp!399346 () Bool)

(declare-fun b!1405579 () Bool)

(assert (=> b!1405579 (= e!897313 (and tp!399346 (inv!18597 (tag!2739 (h!19697 (t!122995 rules!2550)))) (inv!18601 (transformation!2477 (h!19697 (t!122995 rules!2550)))) e!897316))))

(declare-fun b!1405578 () Bool)

(declare-fun e!897315 () Bool)

(declare-fun tp!399344 () Bool)

(assert (=> b!1405578 (= e!897315 (and e!897313 tp!399344))))

(assert (=> b!1404668 (= tp!399256 e!897315)))

(assert (= b!1405579 b!1405580))

(assert (= b!1405578 b!1405579))

(assert (= (and b!1404668 ((_ is Cons!14296) (t!122995 rules!2550))) b!1405578))

(declare-fun m!1583245 () Bool)

(assert (=> b!1405579 m!1583245))

(declare-fun m!1583247 () Bool)

(assert (=> b!1405579 m!1583247))

(declare-fun b!1405583 () Bool)

(declare-fun e!897317 () Bool)

(declare-fun tp!399350 () Bool)

(assert (=> b!1405583 (= e!897317 tp!399350)))

(declare-fun b!1405584 () Bool)

(declare-fun tp!399351 () Bool)

(declare-fun tp!399348 () Bool)

(assert (=> b!1405584 (= e!897317 (and tp!399351 tp!399348))))

(assert (=> b!1404683 (= tp!399259 e!897317)))

(declare-fun b!1405581 () Bool)

(assert (=> b!1405581 (= e!897317 tp_is_empty!6819)))

(declare-fun b!1405582 () Bool)

(declare-fun tp!399349 () Bool)

(declare-fun tp!399352 () Bool)

(assert (=> b!1405582 (= e!897317 (and tp!399349 tp!399352))))

(assert (= (and b!1404683 ((_ is ElementMatch!3791) (regex!2477 (h!19697 rules!2550)))) b!1405581))

(assert (= (and b!1404683 ((_ is Concat!6359) (regex!2477 (h!19697 rules!2550)))) b!1405582))

(assert (= (and b!1404683 ((_ is Star!3791) (regex!2477 (h!19697 rules!2550)))) b!1405583))

(assert (= (and b!1404683 ((_ is Union!3791) (regex!2477 (h!19697 rules!2550)))) b!1405584))

(declare-fun b_lambda!44305 () Bool)

(assert (= b_lambda!44273 (or b!1404680 b_lambda!44305)))

(declare-fun bs!338518 () Bool)

(declare-fun d!401613 () Bool)

(assert (= bs!338518 (and d!401613 b!1404680)))

(declare-fun res!636180 () Bool)

(declare-fun e!897318 () Bool)

(assert (=> bs!338518 (=> (not res!636180) (not e!897318))))

(assert (=> bs!338518 (= res!636180 (validRegex!1661 lt!468901))))

(assert (=> bs!338518 (= (dynLambda!6630 lambda!61861 lt!468901) e!897318)))

(declare-fun b!1405585 () Bool)

(assert (=> b!1405585 (= e!897318 (matchR!1782 lt!468901 lt!468657))))

(assert (= (and bs!338518 res!636180) b!1405585))

(declare-fun m!1583249 () Bool)

(assert (=> bs!338518 m!1583249))

(declare-fun m!1583251 () Bool)

(assert (=> b!1405585 m!1583251))

(assert (=> d!401511 d!401613))

(declare-fun b_lambda!44307 () Bool)

(assert (= b_lambda!44227 (or b!1404660 b_lambda!44307)))

(declare-fun bs!338519 () Bool)

(declare-fun d!401615 () Bool)

(assert (= bs!338519 (and d!401615 b!1404660)))

(declare-fun ruleValid!622 (LexerInterface!2172 Rule!4754) Bool)

(assert (=> bs!338519 (= (dynLambda!6618 lambda!61863 (rule!4240 t2!34)) (ruleValid!622 thiss!19762 (rule!4240 t2!34)))))

(declare-fun m!1583253 () Bool)

(assert (=> bs!338519 m!1583253))

(assert (=> d!401279 d!401615))

(declare-fun b_lambda!44309 () Bool)

(assert (= b_lambda!44253 (or (and b!1404685 b_free!34277 (= (toChars!3627 (transformation!2477 (rule!4240 t1!34))) (toChars!3627 (transformation!2477 (rule!4240 t2!34))))) (and b!1404665 b_free!34281) (and b!1404663 b_free!34285 (= (toChars!3627 (transformation!2477 (h!19697 rules!2550))) (toChars!3627 (transformation!2477 (rule!4240 t2!34))))) (and b!1405580 b_free!34293 (= (toChars!3627 (transformation!2477 (h!19697 (t!122995 rules!2550)))) (toChars!3627 (transformation!2477 (rule!4240 t2!34))))) b_lambda!44309)))

(declare-fun b_lambda!44311 () Bool)

(assert (= b_lambda!44229 (or b!1404660 b_lambda!44311)))

(declare-fun bs!338520 () Bool)

(declare-fun d!401617 () Bool)

(assert (= bs!338520 (and d!401617 b!1404660)))

(assert (=> bs!338520 (= (dynLambda!6618 lambda!61863 (rule!4240 t1!34)) (ruleValid!622 thiss!19762 (rule!4240 t1!34)))))

(declare-fun m!1583255 () Bool)

(assert (=> bs!338520 m!1583255))

(assert (=> d!401287 d!401617))

(declare-fun b_lambda!44313 () Bool)

(assert (= b_lambda!44235 (or b!1404680 b_lambda!44313)))

(declare-fun bs!338521 () Bool)

(declare-fun d!401619 () Bool)

(assert (= bs!338521 (and d!401619 b!1404680)))

(assert (=> bs!338521 (= (dynLambda!6624 lambda!61860 (h!19697 rules!2550)) (regex!2477 (h!19697 rules!2550)))))

(assert (=> b!1404917 d!401619))

(declare-fun b_lambda!44315 () Bool)

(assert (= b_lambda!44259 (or (and b!1404685 b_free!34277 (= (toChars!3627 (transformation!2477 (rule!4240 t1!34))) (toChars!3627 (transformation!2477 (rule!4240 t2!34))))) (and b!1404665 b_free!34281) (and b!1404663 b_free!34285 (= (toChars!3627 (transformation!2477 (h!19697 rules!2550))) (toChars!3627 (transformation!2477 (rule!4240 t2!34))))) (and b!1405580 b_free!34293 (= (toChars!3627 (transformation!2477 (h!19697 (t!122995 rules!2550)))) (toChars!3627 (transformation!2477 (rule!4240 t2!34))))) b_lambda!44315)))

(declare-fun b_lambda!44317 () Bool)

(assert (= b_lambda!44239 (or b!1404649 b_lambda!44317)))

(declare-fun bs!338522 () Bool)

(declare-fun d!401621 () Bool)

(assert (= bs!338522 (and d!401621 b!1404649)))

(assert (=> bs!338522 (= (dynLambda!6618 lambda!61862 lt!468757) (= (regex!2477 lt!468757) lt!468668))))

(assert (=> d!401355 d!401621))

(declare-fun b_lambda!44319 () Bool)

(assert (= b_lambda!44257 (or b!1404669 b_lambda!44319)))

(declare-fun bs!338523 () Bool)

(declare-fun d!401623 () Bool)

(assert (= bs!338523 (and d!401623 b!1404669)))

(declare-fun res!636181 () Bool)

(declare-fun e!897319 () Bool)

(assert (=> bs!338523 (=> (not res!636181) (not e!897319))))

(assert (=> bs!338523 (= res!636181 (matchR!1782 lt!468667 lt!468840))))

(assert (=> bs!338523 (= (dynLambda!6627 lambda!61859 lt!468840) e!897319)))

(declare-fun b!1405586 () Bool)

(assert (=> b!1405586 (= e!897319 (isPrefix!1162 lt!468672 lt!468840))))

(assert (= (and bs!338523 res!636181) b!1405586))

(declare-fun m!1583257 () Bool)

(assert (=> bs!338523 m!1583257))

(declare-fun m!1583259 () Bool)

(assert (=> b!1405586 m!1583259))

(assert (=> d!401441 d!401623))

(declare-fun b_lambda!44321 () Bool)

(assert (= b_lambda!44277 (or (and b!1404685 b_free!34277) (and b!1404665 b_free!34281 (= (toChars!3627 (transformation!2477 (rule!4240 t2!34))) (toChars!3627 (transformation!2477 (rule!4240 t1!34))))) (and b!1404663 b_free!34285 (= (toChars!3627 (transformation!2477 (h!19697 rules!2550))) (toChars!3627 (transformation!2477 (rule!4240 t1!34))))) (and b!1405580 b_free!34293 (= (toChars!3627 (transformation!2477 (h!19697 (t!122995 rules!2550)))) (toChars!3627 (transformation!2477 (rule!4240 t1!34))))) b_lambda!44321)))

(declare-fun b_lambda!44323 () Bool)

(assert (= b_lambda!44251 (or (and b!1404685 b_free!34277) (and b!1404665 b_free!34281 (= (toChars!3627 (transformation!2477 (rule!4240 t2!34))) (toChars!3627 (transformation!2477 (rule!4240 t1!34))))) (and b!1404663 b_free!34285 (= (toChars!3627 (transformation!2477 (h!19697 rules!2550))) (toChars!3627 (transformation!2477 (rule!4240 t1!34))))) (and b!1405580 b_free!34293 (= (toChars!3627 (transformation!2477 (h!19697 (t!122995 rules!2550)))) (toChars!3627 (transformation!2477 (rule!4240 t1!34))))) b_lambda!44323)))

(declare-fun b_lambda!44325 () Bool)

(assert (= b_lambda!44275 (or b!1404680 b_lambda!44325)))

(declare-fun bs!338524 () Bool)

(declare-fun d!401625 () Bool)

(assert (= bs!338524 (and d!401625 b!1404680)))

(declare-fun res!636182 () Bool)

(declare-fun e!897320 () Bool)

(assert (=> bs!338524 (=> (not res!636182) (not e!897320))))

(assert (=> bs!338524 (= res!636182 (validRegex!1661 (h!19699 (map!3176 rules!2550 lambda!61860))))))

(assert (=> bs!338524 (= (dynLambda!6630 lambda!61861 (h!19699 (map!3176 rules!2550 lambda!61860))) e!897320)))

(declare-fun b!1405587 () Bool)

(assert (=> b!1405587 (= e!897320 (matchR!1782 (h!19699 (map!3176 rules!2550 lambda!61860)) lt!468657))))

(assert (= (and bs!338524 res!636182) b!1405587))

(declare-fun m!1583261 () Bool)

(assert (=> bs!338524 m!1583261))

(declare-fun m!1583263 () Bool)

(assert (=> b!1405587 m!1583263))

(assert (=> b!1405381 d!401625))

(declare-fun b_lambda!44327 () Bool)

(assert (= b_lambda!44237 (or b!1404649 b_lambda!44327)))

(declare-fun bs!338525 () Bool)

(declare-fun d!401627 () Bool)

(assert (= bs!338525 (and d!401627 b!1404649)))

(assert (=> bs!338525 (= (dynLambda!6618 lambda!61862 (h!19697 rules!2550)) (= (regex!2477 (h!19697 rules!2550)) lt!468668))))

(assert (=> b!1404934 d!401627))

(declare-fun b_lambda!44329 () Bool)

(assert (= b_lambda!44231 (or b!1404660 b_lambda!44329)))

(declare-fun bs!338526 () Bool)

(declare-fun d!401629 () Bool)

(assert (= bs!338526 (and d!401629 b!1404660)))

(assert (=> bs!338526 (= (dynLambda!6618 lambda!61863 lt!468659) (ruleValid!622 thiss!19762 lt!468659))))

(declare-fun m!1583265 () Bool)

(assert (=> bs!338526 m!1583265))

(assert (=> d!401289 d!401629))

(check-sat (not b_lambda!44311) (not b!1405507) (not b!1405567) (not b!1404904) (not d!401581) (not b_lambda!44329) (not d!401397) (not d!401545) (not tb!73163) (not b!1405160) (not b!1405410) (not b!1405481) (not d!401351) (not b!1405488) (not d!401567) (not d!401353) (not b!1405246) (not d!401485) (not b!1405085) (not b!1405562) (not bs!338518) (not b_next!34989) (not b!1405075) (not b_next!34981) (not b!1405525) b_and!94115 (not b!1405583) (not d!401511) (not b!1404932) (not b!1405153) (not b!1405533) (not d!401357) (not d!401575) (not b_lambda!44327) (not b!1405584) (not bm!93672) (not b!1405146) (not d!401305) (not b!1405563) (not b!1405245) (not b!1404748) (not b!1404849) (not b!1404931) (not d!401435) (not b!1405074) (not d!401543) (not bm!93706) (not b_lambda!44313) (not b!1405286) (not b!1405586) (not d!401347) (not b!1405528) (not bs!338520) b_and!94117 (not b!1404816) (not b!1405462) (not d!401541) (not d!401345) (not b_next!34997) (not b!1405283) (not b!1405482) (not d!401547) (not d!401483) (not b!1405087) (not b!1405161) (not b!1405380) (not b!1405522) (not d!401589) (not d!401601) (not b!1405147) (not d!401487) (not b!1405460) (not d!401471) (not d!401445) (not b!1405506) (not d!401605) (not b!1405582) (not b!1405076) (not b!1405079) (not b_lambda!44307) b_and!94109 (not b!1405223) (not b!1405336) (not b!1405493) (not d!401355) (not b!1405073) (not b!1405565) (not b!1405259) (not bm!93700) (not d!401271) (not b!1405527) (not d!401493) (not b!1404917) (not b!1405412) (not b!1405489) (not d!401399) (not d!401503) (not d!401447) (not b!1404750) (not b!1405510) (not bm!93702) (not bm!93705) (not b!1405395) (not b!1405247) (not b!1405530) (not bm!93703) (not b!1404770) (not b!1405090) (not d!401585) (not b!1405281) (not b!1405347) (not d!401441) (not b!1405154) (not d!401579) (not b!1405524) (not b!1404903) (not b!1405486) (not b!1404741) (not b!1405579) (not d!401587) (not b!1405187) (not d!401429) (not d!401337) b_and!94055 (not d!401481) (not b_next!34985) (not b_next!34979) (not b!1404814) (not b!1405082) (not bs!338526) tp_is_empty!6819 (not d!401321) (not bm!93635) (not d!401609) b_and!94107 (not b!1404813) (not b!1405564) (not b!1404705) (not d!401461) (not b!1405188) (not bm!93644) (not d!401349) (not b!1404938) (not b!1405529) (not bm!93654) (not d!401599) (not bm!93699) (not d!401475) (not b!1404933) (not b!1405278) (not d!401395) (not b_next!34983) (not b!1405504) (not b_lambda!44325) b_and!94105 (not b_lambda!44315) (not b!1405487) (not b!1405411) (not b!1404863) (not d!401423) (not b!1405394) (not d!401527) (not bs!338524) (not b!1405210) (not b!1404773) (not b!1405483) (not d!401529) (not b!1404772) (not d!401453) (not b!1405513) (not b!1405569) (not b!1405484) (not d!401273) (not b!1405585) (not bm!93643) (not b_lambda!44309) (not d!401595) (not bm!93698) (not b!1405280) (not d!401491) (not d!401603) (not d!401359) (not b_lambda!44319) (not b!1405459) (not b_lambda!44323) (not bm!93653) (not b!1404745) (not d!401421) (not d!401279) (not d!401289) (not b!1405587) (not b!1405518) (not b!1405516) (not b!1405534) (not b!1405382) (not b!1404907) (not d!401593) (not b!1404742) (not b!1405532) (not d!401291) (not d!401287) (not b!1405458) (not d!401597) (not b_lambda!44317) (not d!401569) (not d!401573) (not b!1404753) (not b!1405162) (not bs!338519) b_and!94051 (not tb!73157) b_and!94059 (not b_lambda!44321) (not b!1405078) (not b!1405523) (not b!1405568) (not d!401571) (not b_next!34995) (not d!401451) (not b_next!34987) (not b!1405213) (not b!1405272) (not b_lambda!44305) (not b!1405335) (not b!1405148) (not d!401537) (not b!1405334) (not b!1405461) (not b!1405535) (not d!401419) (not b!1405379) (not b!1405521) (not b!1405578) (not d!401343) (not bm!93656) (not b!1405537) (not b!1405509) (not bs!338523) (not b!1405159) (not bm!93704) (not b!1405550) (not d!401577) (not bm!93708))
(check-sat b_and!94117 (not b_next!34997) b_and!94109 (not b_next!34979) b_and!94107 (not b_next!34987) (not b_next!34989) (not b_next!34981) b_and!94115 b_and!94055 (not b_next!34985) (not b_next!34983) b_and!94105 b_and!94051 (not b_next!34995) b_and!94059)
