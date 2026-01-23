; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!393810 () Bool)

(assert start!393810)

(declare-fun b!4142184 () Bool)

(declare-fun b_free!118011 () Bool)

(declare-fun b_next!118715 () Bool)

(assert (=> b!4142184 (= b_free!118011 (not b_next!118715))))

(declare-fun tp!1262642 () Bool)

(declare-fun b_and!321737 () Bool)

(assert (=> b!4142184 (= tp!1262642 b_and!321737)))

(declare-fun b_free!118013 () Bool)

(declare-fun b_next!118717 () Bool)

(assert (=> b!4142184 (= b_free!118013 (not b_next!118717))))

(declare-fun tp!1262639 () Bool)

(declare-fun b_and!321739 () Bool)

(assert (=> b!4142184 (= tp!1262639 b_and!321739)))

(declare-fun b!4142171 () Bool)

(declare-fun b_free!118015 () Bool)

(declare-fun b_next!118719 () Bool)

(assert (=> b!4142171 (= b_free!118015 (not b_next!118719))))

(declare-fun tp!1262641 () Bool)

(declare-fun b_and!321741 () Bool)

(assert (=> b!4142171 (= tp!1262641 b_and!321741)))

(declare-fun b_free!118017 () Bool)

(declare-fun b_next!118721 () Bool)

(assert (=> b!4142171 (= b_free!118017 (not b_next!118721))))

(declare-fun tp!1262640 () Bool)

(declare-fun b_and!321743 () Bool)

(assert (=> b!4142171 (= tp!1262640 b_and!321743)))

(declare-fun b!4142186 () Bool)

(declare-fun b_free!118019 () Bool)

(declare-fun b_next!118723 () Bool)

(assert (=> b!4142186 (= b_free!118019 (not b_next!118723))))

(declare-fun tp!1262634 () Bool)

(declare-fun b_and!321745 () Bool)

(assert (=> b!4142186 (= tp!1262634 b_and!321745)))

(declare-fun b_free!118021 () Bool)

(declare-fun b_next!118725 () Bool)

(assert (=> b!4142186 (= b_free!118021 (not b_next!118725))))

(declare-fun tp!1262631 () Bool)

(declare-fun b_and!321747 () Bool)

(assert (=> b!4142186 (= tp!1262631 b_and!321747)))

(declare-fun b!4142169 () Bool)

(declare-fun e!2570112 () Bool)

(declare-fun tp_is_empty!21497 () Bool)

(declare-fun tp!1262638 () Bool)

(assert (=> b!4142169 (= e!2570112 (and tp_is_empty!21497 tp!1262638))))

(declare-fun b!4142170 () Bool)

(declare-fun res!1694809 () Bool)

(declare-fun e!2570111 () Bool)

(assert (=> b!4142170 (=> (not res!1694809) (not e!2570111))))

(declare-datatypes ((C!24760 0))(
  ( (C!24761 (val!14490 Int)) )
))
(declare-datatypes ((List!45056 0))(
  ( (Nil!44932) (Cons!44932 (h!50352 C!24760) (t!342479 List!45056)) )
))
(declare-fun p!2912 () List!45056)

(declare-fun isEmpty!26799 (List!45056) Bool)

(assert (=> b!4142170 (= res!1694809 (not (isEmpty!26799 p!2912)))))

(declare-fun e!2570109 () Bool)

(assert (=> b!4142171 (= e!2570109 (and tp!1262641 tp!1262640))))

(declare-datatypes ((List!45057 0))(
  ( (Nil!44933) (Cons!44933 (h!50353 (_ BitVec 16)) (t!342480 List!45057)) )
))
(declare-datatypes ((TokenValue!7612 0))(
  ( (FloatLiteralValue!15224 (text!53729 List!45057)) (TokenValueExt!7611 (__x!27441 Int)) (Broken!38060 (value!230915 List!45057)) (Object!7735) (End!7612) (Def!7612) (Underscore!7612) (Match!7612) (Else!7612) (Error!7612) (Case!7612) (If!7612) (Extends!7612) (Abstract!7612) (Class!7612) (Val!7612) (DelimiterValue!15224 (del!7672 List!45057)) (KeywordValue!7618 (value!230916 List!45057)) (CommentValue!15224 (value!230917 List!45057)) (WhitespaceValue!15224 (value!230918 List!45057)) (IndentationValue!7612 (value!230919 List!45057)) (String!51809) (Int32!7612) (Broken!38061 (value!230920 List!45057)) (Boolean!7613) (Unit!64228) (OperatorValue!7615 (op!7672 List!45057)) (IdentifierValue!15224 (value!230921 List!45057)) (IdentifierValue!15225 (value!230922 List!45057)) (WhitespaceValue!15225 (value!230923 List!45057)) (True!15224) (False!15224) (Broken!38062 (value!230924 List!45057)) (Broken!38063 (value!230925 List!45057)) (True!15225) (RightBrace!7612) (RightBracket!7612) (Colon!7612) (Null!7612) (Comma!7612) (LeftBracket!7612) (False!15225) (LeftBrace!7612) (ImaginaryLiteralValue!7612 (text!53730 List!45057)) (StringLiteralValue!22836 (value!230926 List!45057)) (EOFValue!7612 (value!230927 List!45057)) (IdentValue!7612 (value!230928 List!45057)) (DelimiterValue!15225 (value!230929 List!45057)) (DedentValue!7612 (value!230930 List!45057)) (NewLineValue!7612 (value!230931 List!45057)) (IntegerValue!22836 (value!230932 (_ BitVec 32)) (text!53731 List!45057)) (IntegerValue!22837 (value!230933 Int) (text!53732 List!45057)) (Times!7612) (Or!7612) (Equal!7612) (Minus!7612) (Broken!38064 (value!230934 List!45057)) (And!7612) (Div!7612) (LessEqual!7612) (Mod!7612) (Concat!19899) (Not!7612) (Plus!7612) (SpaceValue!7612 (value!230935 List!45057)) (IntegerValue!22838 (value!230936 Int) (text!53733 List!45057)) (StringLiteralValue!22837 (text!53734 List!45057)) (FloatLiteralValue!15225 (text!53735 List!45057)) (BytesLiteralValue!7612 (value!230937 List!45057)) (CommentValue!15225 (value!230938 List!45057)) (StringLiteralValue!22838 (value!230939 List!45057)) (ErrorTokenValue!7612 (msg!7673 List!45057)) )
))
(declare-datatypes ((IArray!27191 0))(
  ( (IArray!27192 (innerList!13653 List!45056)) )
))
(declare-datatypes ((Conc!13593 0))(
  ( (Node!13593 (left!33646 Conc!13593) (right!33976 Conc!13593) (csize!27416 Int) (cheight!13804 Int)) (Leaf!20999 (xs!16899 IArray!27191) (csize!27417 Int)) (Empty!13593) )
))
(declare-datatypes ((BalanceConc!26780 0))(
  ( (BalanceConc!26781 (c!709988 Conc!13593)) )
))
(declare-datatypes ((String!51810 0))(
  ( (String!51811 (value!230940 String)) )
))
(declare-datatypes ((Regex!12287 0))(
  ( (ElementMatch!12287 (c!709989 C!24760)) (Concat!19900 (regOne!25086 Regex!12287) (regTwo!25086 Regex!12287)) (EmptyExpr!12287) (Star!12287 (reg!12616 Regex!12287)) (EmptyLang!12287) (Union!12287 (regOne!25087 Regex!12287) (regTwo!25087 Regex!12287)) )
))
(declare-datatypes ((TokenValueInjection!14652 0))(
  ( (TokenValueInjection!14653 (toValue!10046 Int) (toChars!9905 Int)) )
))
(declare-datatypes ((Rule!14564 0))(
  ( (Rule!14565 (regex!7382 Regex!12287) (tag!8242 String!51810) (isSeparator!7382 Bool) (transformation!7382 TokenValueInjection!14652)) )
))
(declare-fun rBis!149 () Rule!14564)

(declare-fun e!2570104 () Bool)

(declare-fun b!4142172 () Bool)

(declare-fun tp!1262636 () Bool)

(declare-fun e!2570101 () Bool)

(declare-fun inv!59538 (String!51810) Bool)

(declare-fun inv!59540 (TokenValueInjection!14652) Bool)

(assert (=> b!4142172 (= e!2570101 (and tp!1262636 (inv!59538 (tag!8242 rBis!149)) (inv!59540 (transformation!7382 rBis!149)) e!2570104))))

(declare-fun b!4142173 () Bool)

(declare-fun e!2570108 () Bool)

(declare-fun e!2570115 () Bool)

(assert (=> b!4142173 (= e!2570108 e!2570115)))

(declare-fun res!1694808 () Bool)

(assert (=> b!4142173 (=> res!1694808 e!2570115)))

(declare-fun lt!1477325 () List!45056)

(declare-fun input!3238 () List!45056)

(assert (=> b!4142173 (= res!1694808 (not (= lt!1477325 input!3238)))))

(declare-fun lt!1477332 () List!45056)

(declare-fun isPrefix!4317 (List!45056 List!45056) Bool)

(assert (=> b!4142173 (isPrefix!4317 lt!1477332 lt!1477325)))

(declare-datatypes ((Token!13694 0))(
  ( (Token!13695 (value!230941 TokenValue!7612) (rule!10496 Rule!14564) (size!33290 Int) (originalCharacters!7878 List!45056)) )
))
(declare-datatypes ((tuple2!43314 0))(
  ( (tuple2!43315 (_1!24791 Token!13694) (_2!24791 List!45056)) )
))
(declare-fun lt!1477326 () tuple2!43314)

(declare-fun ++!11622 (List!45056 List!45056) List!45056)

(assert (=> b!4142173 (= lt!1477325 (++!11622 lt!1477332 (_2!24791 lt!1477326)))))

(declare-datatypes ((Unit!64229 0))(
  ( (Unit!64230) )
))
(declare-fun lt!1477318 () Unit!64229)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2946 (List!45056 List!45056) Unit!64229)

(assert (=> b!4142173 (= lt!1477318 (lemmaConcatTwoListThenFirstIsPrefix!2946 lt!1477332 (_2!24791 lt!1477326)))))

(declare-fun lt!1477330 () BalanceConc!26780)

(declare-fun list!16459 (BalanceConc!26780) List!45056)

(assert (=> b!4142173 (= lt!1477332 (list!16459 lt!1477330))))

(declare-fun b!4142174 () Bool)

(declare-fun res!1694807 () Bool)

(assert (=> b!4142174 (=> (not res!1694807) (not e!2570111))))

(declare-datatypes ((List!45058 0))(
  ( (Nil!44934) (Cons!44934 (h!50354 Rule!14564) (t!342481 List!45058)) )
))
(declare-fun rules!3756 () List!45058)

(declare-fun r!4008 () Rule!14564)

(declare-fun contains!9062 (List!45058 Rule!14564) Bool)

(assert (=> b!4142174 (= res!1694807 (contains!9062 rules!3756 r!4008))))

(declare-fun b!4142175 () Bool)

(declare-fun e!2570113 () Bool)

(declare-fun e!2570117 () Bool)

(assert (=> b!4142175 (= e!2570113 e!2570117)))

(declare-fun res!1694810 () Bool)

(assert (=> b!4142175 (=> res!1694810 e!2570117)))

(declare-datatypes ((Option!9688 0))(
  ( (None!9687) (Some!9687 (v!40329 tuple2!43314)) )
))
(declare-fun lt!1477320 () Option!9688)

(declare-fun isEmpty!26800 (Option!9688) Bool)

(assert (=> b!4142175 (= res!1694810 (isEmpty!26800 lt!1477320))))

(declare-datatypes ((LexerInterface!6971 0))(
  ( (LexerInterfaceExt!6968 (__x!27442 Int)) (Lexer!6969) )
))
(declare-fun thiss!25645 () LexerInterface!6971)

(declare-fun maxPrefixOneRule!3100 (LexerInterface!6971 Rule!14564 List!45056) Option!9688)

(assert (=> b!4142175 (= lt!1477320 (maxPrefixOneRule!3100 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4142175 (not (= rBis!149 r!4008))))

(declare-fun lt!1477321 () Unit!64229)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!80 (LexerInterface!6971 List!45058 Rule!14564 Rule!14564) Unit!64229)

(assert (=> b!4142175 (= lt!1477321 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!80 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6557 (List!45058) List!45058)

(assert (=> b!4142175 (contains!9062 (tail!6557 rules!3756) r!4008)))

(declare-fun lt!1477317 () Unit!64229)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!86 (List!45058 Rule!14564 Rule!14564) Unit!64229)

(assert (=> b!4142175 (= lt!1477317 (lemmaGetIndexBiggerAndHeadEqThenTailContains!86 rules!3756 rBis!149 r!4008))))

(declare-fun b!4142176 () Bool)

(declare-fun e!2570118 () Bool)

(assert (=> b!4142176 (= e!2570118 (not e!2570113))))

(declare-fun res!1694801 () Bool)

(assert (=> b!4142176 (=> res!1694801 e!2570113)))

(get-info :version)

(assert (=> b!4142176 (= res!1694801 (or (not ((_ is Cons!44934) rules!3756)) (not (= (h!50354 rules!3756) rBis!149))))))

(declare-fun lt!1477331 () Unit!64229)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2228 (LexerInterface!6971 Rule!14564 List!45058) Unit!64229)

(assert (=> b!4142176 (= lt!1477331 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2228 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3188 (LexerInterface!6971 Rule!14564) Bool)

(assert (=> b!4142176 (ruleValid!3188 thiss!25645 rBis!149)))

(declare-fun lt!1477328 () Unit!64229)

(assert (=> b!4142176 (= lt!1477328 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2228 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4142177 () Bool)

(declare-fun e!2570105 () Bool)

(declare-fun e!2570116 () Bool)

(declare-fun tp!1262632 () Bool)

(assert (=> b!4142177 (= e!2570105 (and e!2570116 tp!1262632))))

(declare-fun b!4142178 () Bool)

(declare-fun res!1694805 () Bool)

(assert (=> b!4142178 (=> (not res!1694805) (not e!2570111))))

(assert (=> b!4142178 (= res!1694805 (isPrefix!4317 p!2912 input!3238))))

(declare-fun b!4142179 () Bool)

(assert (=> b!4142179 (= e!2570111 e!2570118)))

(declare-fun res!1694802 () Bool)

(assert (=> b!4142179 (=> (not res!1694802) (not e!2570118))))

(declare-fun lt!1477323 () TokenValue!7612)

(declare-fun lt!1477319 () Int)

(declare-fun maxPrefix!4161 (LexerInterface!6971 List!45058 List!45056) Option!9688)

(declare-fun getSuffix!2644 (List!45056 List!45056) List!45056)

(assert (=> b!4142179 (= res!1694802 (= (maxPrefix!4161 thiss!25645 rules!3756 input!3238) (Some!9687 (tuple2!43315 (Token!13695 lt!1477323 r!4008 lt!1477319 p!2912) (getSuffix!2644 input!3238 p!2912)))))))

(declare-fun size!33291 (List!45056) Int)

(assert (=> b!4142179 (= lt!1477319 (size!33291 p!2912))))

(declare-fun lt!1477327 () BalanceConc!26780)

(declare-fun apply!10455 (TokenValueInjection!14652 BalanceConc!26780) TokenValue!7612)

(assert (=> b!4142179 (= lt!1477323 (apply!10455 (transformation!7382 r!4008) lt!1477327))))

(declare-fun lt!1477329 () Unit!64229)

(declare-fun lemmaSemiInverse!2240 (TokenValueInjection!14652 BalanceConc!26780) Unit!64229)

(assert (=> b!4142179 (= lt!1477329 (lemmaSemiInverse!2240 (transformation!7382 r!4008) lt!1477327))))

(declare-fun seqFromList!5499 (List!45056) BalanceConc!26780)

(assert (=> b!4142179 (= lt!1477327 (seqFromList!5499 p!2912))))

(declare-fun b!4142181 () Bool)

(assert (=> b!4142181 (= e!2570117 e!2570108)))

(declare-fun res!1694797 () Bool)

(assert (=> b!4142181 (=> res!1694797 e!2570108)))

(declare-fun lt!1477324 () Int)

(assert (=> b!4142181 (= res!1694797 (or (> lt!1477324 lt!1477319) (>= lt!1477324 lt!1477319)))))

(declare-fun size!33292 (BalanceConc!26780) Int)

(assert (=> b!4142181 (= lt!1477324 (size!33292 lt!1477330))))

(declare-fun charsOf!4981 (Token!13694) BalanceConc!26780)

(assert (=> b!4142181 (= lt!1477330 (charsOf!4981 (_1!24791 lt!1477326)))))

(declare-fun get!14668 (Option!9688) tuple2!43314)

(assert (=> b!4142181 (= lt!1477326 (get!14668 lt!1477320))))

(declare-fun b!4142182 () Bool)

(declare-fun res!1694804 () Bool)

(assert (=> b!4142182 (=> (not res!1694804) (not e!2570111))))

(declare-fun rulesInvariant!6268 (LexerInterface!6971 List!45058) Bool)

(assert (=> b!4142182 (= res!1694804 (rulesInvariant!6268 thiss!25645 rules!3756))))

(declare-fun b!4142183 () Bool)

(declare-fun tp!1262635 () Bool)

(declare-fun e!2570114 () Bool)

(declare-fun e!2570110 () Bool)

(assert (=> b!4142183 (= e!2570114 (and tp!1262635 (inv!59538 (tag!8242 r!4008)) (inv!59540 (transformation!7382 r!4008)) e!2570110))))

(assert (=> b!4142184 (= e!2570104 (and tp!1262642 tp!1262639))))

(declare-fun b!4142185 () Bool)

(declare-fun res!1694803 () Bool)

(assert (=> b!4142185 (=> (not res!1694803) (not e!2570118))))

(declare-fun matchR!6116 (Regex!12287 List!45056) Bool)

(assert (=> b!4142185 (= res!1694803 (matchR!6116 (regex!7382 r!4008) p!2912))))

(assert (=> b!4142186 (= e!2570110 (and tp!1262634 tp!1262631))))

(declare-fun b!4142187 () Bool)

(declare-fun res!1694800 () Bool)

(assert (=> b!4142187 (=> res!1694800 e!2570115)))

(assert (=> b!4142187 (= res!1694800 (not (isPrefix!4317 lt!1477332 input!3238)))))

(declare-fun b!4142188 () Bool)

(declare-fun res!1694795 () Bool)

(assert (=> b!4142188 (=> res!1694795 e!2570115)))

(assert (=> b!4142188 (= res!1694795 (> lt!1477319 (size!33291 input!3238)))))

(declare-fun b!4142189 () Bool)

(declare-fun res!1694796 () Bool)

(assert (=> b!4142189 (=> (not res!1694796) (not e!2570118))))

(declare-fun getIndex!728 (List!45058 Rule!14564) Int)

(assert (=> b!4142189 (= res!1694796 (< (getIndex!728 rules!3756 rBis!149) (getIndex!728 rules!3756 r!4008)))))

(declare-fun b!4142190 () Bool)

(declare-fun res!1694799 () Bool)

(assert (=> b!4142190 (=> (not res!1694799) (not e!2570111))))

(declare-fun isEmpty!26801 (List!45058) Bool)

(assert (=> b!4142190 (= res!1694799 (not (isEmpty!26801 rules!3756)))))

(declare-fun tp!1262633 () Bool)

(declare-fun b!4142191 () Bool)

(assert (=> b!4142191 (= e!2570116 (and tp!1262633 (inv!59538 (tag!8242 (h!50354 rules!3756))) (inv!59540 (transformation!7382 (h!50354 rules!3756))) e!2570109))))

(declare-fun b!4142192 () Bool)

(declare-fun res!1694811 () Bool)

(assert (=> b!4142192 (=> (not res!1694811) (not e!2570111))))

(assert (=> b!4142192 (= res!1694811 (contains!9062 rules!3756 rBis!149))))

(declare-fun b!4142180 () Bool)

(assert (=> b!4142180 (= e!2570115 true)))

(declare-fun lt!1477322 () Int)

(assert (=> b!4142180 (= lt!1477322 (size!33291 lt!1477332))))

(declare-fun res!1694806 () Bool)

(assert (=> start!393810 (=> (not res!1694806) (not e!2570111))))

(assert (=> start!393810 (= res!1694806 ((_ is Lexer!6969) thiss!25645))))

(assert (=> start!393810 e!2570111))

(assert (=> start!393810 e!2570105))

(declare-fun e!2570106 () Bool)

(assert (=> start!393810 e!2570106))

(assert (=> start!393810 true))

(assert (=> start!393810 e!2570114))

(assert (=> start!393810 e!2570112))

(assert (=> start!393810 e!2570101))

(declare-fun b!4142193 () Bool)

(declare-fun res!1694798 () Bool)

(assert (=> b!4142193 (=> (not res!1694798) (not e!2570118))))

(assert (=> b!4142193 (= res!1694798 (ruleValid!3188 thiss!25645 r!4008))))

(declare-fun b!4142194 () Bool)

(declare-fun tp!1262637 () Bool)

(assert (=> b!4142194 (= e!2570106 (and tp_is_empty!21497 tp!1262637))))

(assert (= (and start!393810 res!1694806) b!4142178))

(assert (= (and b!4142178 res!1694805) b!4142190))

(assert (= (and b!4142190 res!1694799) b!4142182))

(assert (= (and b!4142182 res!1694804) b!4142174))

(assert (= (and b!4142174 res!1694807) b!4142192))

(assert (= (and b!4142192 res!1694811) b!4142170))

(assert (= (and b!4142170 res!1694809) b!4142179))

(assert (= (and b!4142179 res!1694802) b!4142185))

(assert (= (and b!4142185 res!1694803) b!4142189))

(assert (= (and b!4142189 res!1694796) b!4142193))

(assert (= (and b!4142193 res!1694798) b!4142176))

(assert (= (and b!4142176 (not res!1694801)) b!4142175))

(assert (= (and b!4142175 (not res!1694810)) b!4142181))

(assert (= (and b!4142181 (not res!1694797)) b!4142173))

(assert (= (and b!4142173 (not res!1694808)) b!4142187))

(assert (= (and b!4142187 (not res!1694800)) b!4142188))

(assert (= (and b!4142188 (not res!1694795)) b!4142180))

(assert (= b!4142191 b!4142171))

(assert (= b!4142177 b!4142191))

(assert (= (and start!393810 ((_ is Cons!44934) rules!3756)) b!4142177))

(assert (= (and start!393810 ((_ is Cons!44932) p!2912)) b!4142194))

(assert (= b!4142183 b!4142186))

(assert (= start!393810 b!4142183))

(assert (= (and start!393810 ((_ is Cons!44932) input!3238)) b!4142169))

(assert (= b!4142172 b!4142184))

(assert (= start!393810 b!4142172))

(declare-fun m!4738551 () Bool)

(assert (=> b!4142182 m!4738551))

(declare-fun m!4738553 () Bool)

(assert (=> b!4142175 m!4738553))

(declare-fun m!4738555 () Bool)

(assert (=> b!4142175 m!4738555))

(declare-fun m!4738557 () Bool)

(assert (=> b!4142175 m!4738557))

(declare-fun m!4738559 () Bool)

(assert (=> b!4142175 m!4738559))

(assert (=> b!4142175 m!4738555))

(declare-fun m!4738561 () Bool)

(assert (=> b!4142175 m!4738561))

(declare-fun m!4738563 () Bool)

(assert (=> b!4142175 m!4738563))

(declare-fun m!4738565 () Bool)

(assert (=> b!4142180 m!4738565))

(declare-fun m!4738567 () Bool)

(assert (=> b!4142185 m!4738567))

(declare-fun m!4738569 () Bool)

(assert (=> b!4142178 m!4738569))

(declare-fun m!4738571 () Bool)

(assert (=> b!4142170 m!4738571))

(declare-fun m!4738573 () Bool)

(assert (=> b!4142181 m!4738573))

(declare-fun m!4738575 () Bool)

(assert (=> b!4142181 m!4738575))

(declare-fun m!4738577 () Bool)

(assert (=> b!4142181 m!4738577))

(declare-fun m!4738579 () Bool)

(assert (=> b!4142187 m!4738579))

(declare-fun m!4738581 () Bool)

(assert (=> b!4142193 m!4738581))

(declare-fun m!4738583 () Bool)

(assert (=> b!4142191 m!4738583))

(declare-fun m!4738585 () Bool)

(assert (=> b!4142191 m!4738585))

(declare-fun m!4738587 () Bool)

(assert (=> b!4142174 m!4738587))

(declare-fun m!4738589 () Bool)

(assert (=> b!4142183 m!4738589))

(declare-fun m!4738591 () Bool)

(assert (=> b!4142183 m!4738591))

(declare-fun m!4738593 () Bool)

(assert (=> b!4142176 m!4738593))

(declare-fun m!4738595 () Bool)

(assert (=> b!4142176 m!4738595))

(declare-fun m!4738597 () Bool)

(assert (=> b!4142176 m!4738597))

(declare-fun m!4738599 () Bool)

(assert (=> b!4142190 m!4738599))

(declare-fun m!4738601 () Bool)

(assert (=> b!4142172 m!4738601))

(declare-fun m!4738603 () Bool)

(assert (=> b!4142172 m!4738603))

(declare-fun m!4738605 () Bool)

(assert (=> b!4142192 m!4738605))

(declare-fun m!4738607 () Bool)

(assert (=> b!4142188 m!4738607))

(declare-fun m!4738609 () Bool)

(assert (=> b!4142173 m!4738609))

(declare-fun m!4738611 () Bool)

(assert (=> b!4142173 m!4738611))

(declare-fun m!4738613 () Bool)

(assert (=> b!4142173 m!4738613))

(declare-fun m!4738615 () Bool)

(assert (=> b!4142173 m!4738615))

(declare-fun m!4738617 () Bool)

(assert (=> b!4142179 m!4738617))

(declare-fun m!4738619 () Bool)

(assert (=> b!4142179 m!4738619))

(declare-fun m!4738621 () Bool)

(assert (=> b!4142179 m!4738621))

(declare-fun m!4738623 () Bool)

(assert (=> b!4142179 m!4738623))

(declare-fun m!4738625 () Bool)

(assert (=> b!4142179 m!4738625))

(declare-fun m!4738627 () Bool)

(assert (=> b!4142179 m!4738627))

(declare-fun m!4738629 () Bool)

(assert (=> b!4142189 m!4738629))

(declare-fun m!4738631 () Bool)

(assert (=> b!4142189 m!4738631))

(check-sat (not b!4142181) (not b_next!118721) b_and!321743 (not b!4142172) b_and!321745 b_and!321747 (not b!4142183) (not b_next!118719) (not b_next!118725) (not b!4142182) (not b!4142169) (not b!4142170) (not b!4142188) b_and!321739 (not b!4142185) (not b!4142190) (not b!4142178) (not b!4142174) (not b!4142173) (not b!4142175) (not b_next!118723) (not b!4142176) (not b!4142194) b_and!321741 tp_is_empty!21497 (not b!4142187) (not b!4142189) (not b!4142179) (not b_next!118715) (not b!4142191) (not b!4142193) (not b_next!118717) (not b!4142180) b_and!321737 (not b!4142192) (not b!4142177))
(check-sat (not b_next!118721) b_and!321739 b_and!321743 (not b_next!118723) b_and!321741 (not b_next!118715) b_and!321745 b_and!321747 (not b_next!118717) b_and!321737 (not b_next!118719) (not b_next!118725))
