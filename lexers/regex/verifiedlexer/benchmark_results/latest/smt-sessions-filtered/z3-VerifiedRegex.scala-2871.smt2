; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!167378 () Bool)

(assert start!167378)

(declare-fun b!1711638 () Bool)

(declare-fun b_free!46435 () Bool)

(declare-fun b_next!47139 () Bool)

(assert (=> b!1711638 (= b_free!46435 (not b_next!47139))))

(declare-fun tp!489156 () Bool)

(declare-fun b_and!123937 () Bool)

(assert (=> b!1711638 (= tp!489156 b_and!123937)))

(declare-fun b_free!46437 () Bool)

(declare-fun b_next!47141 () Bool)

(assert (=> b!1711638 (= b_free!46437 (not b_next!47141))))

(declare-fun tp!489147 () Bool)

(declare-fun b_and!123939 () Bool)

(assert (=> b!1711638 (= tp!489147 b_and!123939)))

(declare-fun b!1711631 () Bool)

(declare-fun b_free!46439 () Bool)

(declare-fun b_next!47143 () Bool)

(assert (=> b!1711631 (= b_free!46439 (not b_next!47143))))

(declare-fun tp!489158 () Bool)

(declare-fun b_and!123941 () Bool)

(assert (=> b!1711631 (= tp!489158 b_and!123941)))

(declare-fun b_free!46441 () Bool)

(declare-fun b_next!47145 () Bool)

(assert (=> b!1711631 (= b_free!46441 (not b_next!47145))))

(declare-fun tp!489151 () Bool)

(declare-fun b_and!123943 () Bool)

(assert (=> b!1711631 (= tp!489151 b_and!123943)))

(declare-fun b!1711642 () Bool)

(declare-fun b_free!46443 () Bool)

(declare-fun b_next!47147 () Bool)

(assert (=> b!1711642 (= b_free!46443 (not b_next!47147))))

(declare-fun tp!489157 () Bool)

(declare-fun b_and!123945 () Bool)

(assert (=> b!1711642 (= tp!489157 b_and!123945)))

(declare-fun b_free!46445 () Bool)

(declare-fun b_next!47149 () Bool)

(assert (=> b!1711642 (= b_free!46445 (not b_next!47149))))

(declare-fun tp!489149 () Bool)

(declare-fun b_and!123947 () Bool)

(assert (=> b!1711642 (= tp!489149 b_and!123947)))

(declare-fun b!1711629 () Bool)

(declare-fun res!767292 () Bool)

(declare-fun e!1094690 () Bool)

(assert (=> b!1711629 (=> (not res!767292) (not e!1094690))))

(declare-datatypes ((LexerInterface!2932 0))(
  ( (LexerInterfaceExt!2929 (__x!12088 Int)) (Lexer!2930) )
))
(declare-fun thiss!24550 () LexerInterface!2932)

(declare-datatypes ((List!18763 0))(
  ( (Nil!18693) (Cons!18693 (h!24094 (_ BitVec 16)) (t!158326 List!18763)) )
))
(declare-datatypes ((TokenValue!3393 0))(
  ( (FloatLiteralValue!6786 (text!24196 List!18763)) (TokenValueExt!3392 (__x!12089 Int)) (Broken!16965 (value!103782 List!18763)) (Object!3462) (End!3393) (Def!3393) (Underscore!3393) (Match!3393) (Else!3393) (Error!3393) (Case!3393) (If!3393) (Extends!3393) (Abstract!3393) (Class!3393) (Val!3393) (DelimiterValue!6786 (del!3453 List!18763)) (KeywordValue!3399 (value!103783 List!18763)) (CommentValue!6786 (value!103784 List!18763)) (WhitespaceValue!6786 (value!103785 List!18763)) (IndentationValue!3393 (value!103786 List!18763)) (String!21296) (Int32!3393) (Broken!16966 (value!103787 List!18763)) (Boolean!3394) (Unit!32522) (OperatorValue!3396 (op!3453 List!18763)) (IdentifierValue!6786 (value!103788 List!18763)) (IdentifierValue!6787 (value!103789 List!18763)) (WhitespaceValue!6787 (value!103790 List!18763)) (True!6786) (False!6786) (Broken!16967 (value!103791 List!18763)) (Broken!16968 (value!103792 List!18763)) (True!6787) (RightBrace!3393) (RightBracket!3393) (Colon!3393) (Null!3393) (Comma!3393) (LeftBracket!3393) (False!6787) (LeftBrace!3393) (ImaginaryLiteralValue!3393 (text!24197 List!18763)) (StringLiteralValue!10179 (value!103793 List!18763)) (EOFValue!3393 (value!103794 List!18763)) (IdentValue!3393 (value!103795 List!18763)) (DelimiterValue!6787 (value!103796 List!18763)) (DedentValue!3393 (value!103797 List!18763)) (NewLineValue!3393 (value!103798 List!18763)) (IntegerValue!10179 (value!103799 (_ BitVec 32)) (text!24198 List!18763)) (IntegerValue!10180 (value!103800 Int) (text!24199 List!18763)) (Times!3393) (Or!3393) (Equal!3393) (Minus!3393) (Broken!16969 (value!103801 List!18763)) (And!3393) (Div!3393) (LessEqual!3393) (Mod!3393) (Concat!8024) (Not!3393) (Plus!3393) (SpaceValue!3393 (value!103802 List!18763)) (IntegerValue!10181 (value!103803 Int) (text!24200 List!18763)) (StringLiteralValue!10180 (text!24201 List!18763)) (FloatLiteralValue!6787 (text!24202 List!18763)) (BytesLiteralValue!3393 (value!103804 List!18763)) (CommentValue!6787 (value!103805 List!18763)) (StringLiteralValue!10181 (value!103806 List!18763)) (ErrorTokenValue!3393 (msg!3454 List!18763)) )
))
(declare-datatypes ((C!9436 0))(
  ( (C!9437 (val!5314 Int)) )
))
(declare-datatypes ((Regex!4631 0))(
  ( (ElementMatch!4631 (c!280446 C!9436)) (Concat!8025 (regOne!9774 Regex!4631) (regTwo!9774 Regex!4631)) (EmptyExpr!4631) (Star!4631 (reg!4960 Regex!4631)) (EmptyLang!4631) (Union!4631 (regOne!9775 Regex!4631) (regTwo!9775 Regex!4631)) )
))
(declare-datatypes ((String!21297 0))(
  ( (String!21298 (value!103807 String)) )
))
(declare-datatypes ((List!18764 0))(
  ( (Nil!18694) (Cons!18694 (h!24095 C!9436) (t!158327 List!18764)) )
))
(declare-datatypes ((IArray!12439 0))(
  ( (IArray!12440 (innerList!6277 List!18764)) )
))
(declare-datatypes ((Conc!6217 0))(
  ( (Node!6217 (left!14902 Conc!6217) (right!15232 Conc!6217) (csize!12664 Int) (cheight!6428 Int)) (Leaf!9089 (xs!9093 IArray!12439) (csize!12665 Int)) (Empty!6217) )
))
(declare-datatypes ((BalanceConc!12378 0))(
  ( (BalanceConc!12379 (c!280447 Conc!6217)) )
))
(declare-datatypes ((TokenValueInjection!6446 0))(
  ( (TokenValueInjection!6447 (toValue!4806 Int) (toChars!4665 Int)) )
))
(declare-datatypes ((Rule!6406 0))(
  ( (Rule!6407 (regex!3303 Regex!4631) (tag!3599 String!21297) (isSeparator!3303 Bool) (transformation!3303 TokenValueInjection!6446)) )
))
(declare-datatypes ((List!18765 0))(
  ( (Nil!18695) (Cons!18695 (h!24096 Rule!6406) (t!158328 List!18765)) )
))
(declare-fun rules!3447 () List!18765)

(declare-fun rulesInvariant!2601 (LexerInterface!2932 List!18765) Bool)

(assert (=> b!1711629 (= res!767292 (rulesInvariant!2601 thiss!24550 rules!3447))))

(declare-fun res!767287 () Bool)

(assert (=> start!167378 (=> (not res!767287) (not e!1094690))))

(get-info :version)

(assert (=> start!167378 (= res!767287 ((_ is Lexer!2930) thiss!24550))))

(assert (=> start!167378 e!1094690))

(declare-fun e!1094697 () Bool)

(assert (=> start!167378 e!1094697))

(declare-fun e!1094693 () Bool)

(assert (=> start!167378 e!1094693))

(assert (=> start!167378 true))

(declare-datatypes ((Token!6172 0))(
  ( (Token!6173 (value!103808 TokenValue!3393) (rule!5239 Rule!6406) (size!14864 Int) (originalCharacters!4117 List!18764)) )
))
(declare-fun token!523 () Token!6172)

(declare-fun e!1094696 () Bool)

(declare-fun inv!24111 (Token!6172) Bool)

(assert (=> start!167378 (and (inv!24111 token!523) e!1094696)))

(declare-fun e!1094684 () Bool)

(assert (=> start!167378 e!1094684))

(declare-fun b!1711630 () Bool)

(declare-fun e!1094687 () Bool)

(declare-fun e!1094691 () Bool)

(declare-fun tp!489153 () Bool)

(declare-fun inv!24108 (String!21297) Bool)

(declare-fun inv!24112 (TokenValueInjection!6446) Bool)

(assert (=> b!1711630 (= e!1094691 (and tp!489153 (inv!24108 (tag!3599 (h!24096 rules!3447))) (inv!24112 (transformation!3303 (h!24096 rules!3447))) e!1094687))))

(declare-fun e!1094688 () Bool)

(assert (=> b!1711631 (= e!1094688 (and tp!489158 tp!489151))))

(declare-fun b!1711632 () Bool)

(declare-fun res!767291 () Bool)

(declare-fun e!1094689 () Bool)

(assert (=> b!1711632 (=> (not res!767291) (not e!1094689))))

(declare-datatypes ((tuple2!18410 0))(
  ( (tuple2!18411 (_1!10607 Token!6172) (_2!10607 List!18764)) )
))
(declare-fun lt!653972 () tuple2!18410)

(declare-fun isEmpty!11743 (List!18764) Bool)

(assert (=> b!1711632 (= res!767291 (isEmpty!11743 (_2!10607 lt!653972)))))

(declare-fun b!1711633 () Bool)

(declare-fun res!767288 () Bool)

(declare-fun e!1094692 () Bool)

(assert (=> b!1711633 (=> res!767288 e!1094692)))

(declare-fun suffix!1421 () List!18764)

(assert (=> b!1711633 (= res!767288 (isEmpty!11743 suffix!1421))))

(declare-fun b!1711634 () Bool)

(assert (=> b!1711634 (= e!1094689 (not e!1094692))))

(declare-fun res!767290 () Bool)

(assert (=> b!1711634 (=> res!767290 e!1094692)))

(declare-fun rule!422 () Rule!6406)

(declare-fun lt!653971 () List!18764)

(declare-fun matchR!2105 (Regex!4631 List!18764) Bool)

(assert (=> b!1711634 (= res!767290 (not (matchR!2105 (regex!3303 rule!422) lt!653971)))))

(declare-fun ruleValid!802 (LexerInterface!2932 Rule!6406) Bool)

(assert (=> b!1711634 (ruleValid!802 thiss!24550 rule!422)))

(declare-datatypes ((Unit!32523 0))(
  ( (Unit!32524) )
))
(declare-fun lt!653967 () Unit!32523)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!326 (LexerInterface!2932 Rule!6406 List!18765) Unit!32523)

(assert (=> b!1711634 (= lt!653967 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!326 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1711635 () Bool)

(declare-fun res!767294 () Bool)

(assert (=> b!1711635 (=> res!767294 e!1094692)))

(declare-fun prefixMatch!516 (Regex!4631 List!18764) Bool)

(declare-fun rulesRegex!661 (LexerInterface!2932 List!18765) Regex!4631)

(declare-fun ++!5128 (List!18764 List!18764) List!18764)

(declare-fun head!3840 (List!18764) C!9436)

(assert (=> b!1711635 (= res!767294 (prefixMatch!516 (rulesRegex!661 thiss!24550 rules!3447) (++!5128 lt!653971 (Cons!18694 (head!3840 suffix!1421) Nil!18694))))))

(declare-fun b!1711636 () Bool)

(declare-fun e!1094682 () Bool)

(assert (=> b!1711636 (= e!1094682 e!1094689)))

(declare-fun res!767295 () Bool)

(assert (=> b!1711636 (=> (not res!767295) (not e!1094689))))

(assert (=> b!1711636 (= res!767295 (= (_1!10607 lt!653972) token!523))))

(declare-datatypes ((Option!3631 0))(
  ( (None!3630) (Some!3630 (v!25019 tuple2!18410)) )
))
(declare-fun lt!653968 () Option!3631)

(declare-fun get!5500 (Option!3631) tuple2!18410)

(assert (=> b!1711636 (= lt!653972 (get!5500 lt!653968))))

(declare-fun tp!489150 () Bool)

(declare-fun e!1094686 () Bool)

(declare-fun b!1711637 () Bool)

(declare-fun inv!21 (TokenValue!3393) Bool)

(assert (=> b!1711637 (= e!1094696 (and (inv!21 (value!103808 token!523)) e!1094686 tp!489150))))

(assert (=> b!1711638 (= e!1094687 (and tp!489156 tp!489147))))

(declare-fun b!1711639 () Bool)

(declare-fun res!767297 () Bool)

(assert (=> b!1711639 (=> (not res!767297) (not e!1094690))))

(declare-fun contains!3323 (List!18765 Rule!6406) Bool)

(assert (=> b!1711639 (= res!767297 (contains!3323 rules!3447 rule!422))))

(declare-fun b!1711640 () Bool)

(declare-fun tp!489148 () Bool)

(assert (=> b!1711640 (= e!1094684 (and e!1094691 tp!489148))))

(declare-fun b!1711641 () Bool)

(declare-fun res!767296 () Bool)

(assert (=> b!1711641 (=> (not res!767296) (not e!1094689))))

(assert (=> b!1711641 (= res!767296 (= (rule!5239 token!523) rule!422))))

(declare-fun e!1094695 () Bool)

(assert (=> b!1711642 (= e!1094695 (and tp!489157 tp!489149))))

(declare-fun b!1711643 () Bool)

(assert (=> b!1711643 (= e!1094692 true)))

(declare-fun lt!653973 () Unit!32523)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!456 (LexerInterface!2932 List!18765 List!18764 List!18764) Unit!32523)

(assert (=> b!1711643 (= lt!653973 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!456 thiss!24550 rules!3447 lt!653971 suffix!1421))))

(declare-fun lt!653970 () Option!3631)

(declare-fun lt!653969 () List!18764)

(declare-fun maxPrefix!1486 (LexerInterface!2932 List!18765 List!18764) Option!3631)

(assert (=> b!1711643 (= lt!653970 (maxPrefix!1486 thiss!24550 rules!3447 lt!653969))))

(declare-fun isPrefix!1544 (List!18764 List!18764) Bool)

(assert (=> b!1711643 (isPrefix!1544 lt!653971 lt!653969)))

(declare-fun lt!653974 () Unit!32523)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1054 (List!18764 List!18764) Unit!32523)

(assert (=> b!1711643 (= lt!653974 (lemmaConcatTwoListThenFirstIsPrefix!1054 lt!653971 suffix!1421))))

(assert (=> b!1711643 (= lt!653969 (++!5128 lt!653971 suffix!1421))))

(declare-fun b!1711644 () Bool)

(declare-fun tp_is_empty!7505 () Bool)

(declare-fun tp!489155 () Bool)

(assert (=> b!1711644 (= e!1094697 (and tp_is_empty!7505 tp!489155))))

(declare-fun tp!489154 () Bool)

(declare-fun b!1711645 () Bool)

(assert (=> b!1711645 (= e!1094693 (and tp!489154 (inv!24108 (tag!3599 rule!422)) (inv!24112 (transformation!3303 rule!422)) e!1094688))))

(declare-fun b!1711646 () Bool)

(declare-fun res!767293 () Bool)

(assert (=> b!1711646 (=> (not res!767293) (not e!1094690))))

(declare-fun isEmpty!11744 (List!18765) Bool)

(assert (=> b!1711646 (= res!767293 (not (isEmpty!11744 rules!3447)))))

(declare-fun b!1711647 () Bool)

(assert (=> b!1711647 (= e!1094690 e!1094682)))

(declare-fun res!767289 () Bool)

(assert (=> b!1711647 (=> (not res!767289) (not e!1094682))))

(declare-fun isDefined!2974 (Option!3631) Bool)

(assert (=> b!1711647 (= res!767289 (isDefined!2974 lt!653968))))

(assert (=> b!1711647 (= lt!653968 (maxPrefix!1486 thiss!24550 rules!3447 lt!653971))))

(declare-fun list!7544 (BalanceConc!12378) List!18764)

(declare-fun charsOf!1952 (Token!6172) BalanceConc!12378)

(assert (=> b!1711647 (= lt!653971 (list!7544 (charsOf!1952 token!523)))))

(declare-fun tp!489152 () Bool)

(declare-fun b!1711648 () Bool)

(assert (=> b!1711648 (= e!1094686 (and tp!489152 (inv!24108 (tag!3599 (rule!5239 token!523))) (inv!24112 (transformation!3303 (rule!5239 token!523))) e!1094695))))

(assert (= (and start!167378 res!767287) b!1711646))

(assert (= (and b!1711646 res!767293) b!1711629))

(assert (= (and b!1711629 res!767292) b!1711639))

(assert (= (and b!1711639 res!767297) b!1711647))

(assert (= (and b!1711647 res!767289) b!1711636))

(assert (= (and b!1711636 res!767295) b!1711632))

(assert (= (and b!1711632 res!767291) b!1711641))

(assert (= (and b!1711641 res!767296) b!1711634))

(assert (= (and b!1711634 (not res!767290)) b!1711633))

(assert (= (and b!1711633 (not res!767288)) b!1711635))

(assert (= (and b!1711635 (not res!767294)) b!1711643))

(assert (= (and start!167378 ((_ is Cons!18694) suffix!1421)) b!1711644))

(assert (= b!1711645 b!1711631))

(assert (= start!167378 b!1711645))

(assert (= b!1711648 b!1711642))

(assert (= b!1711637 b!1711648))

(assert (= start!167378 b!1711637))

(assert (= b!1711630 b!1711638))

(assert (= b!1711640 b!1711630))

(assert (= (and start!167378 ((_ is Cons!18695) rules!3447)) b!1711640))

(declare-fun m!2114993 () Bool)

(assert (=> b!1711633 m!2114993))

(declare-fun m!2114995 () Bool)

(assert (=> b!1711634 m!2114995))

(declare-fun m!2114997 () Bool)

(assert (=> b!1711634 m!2114997))

(declare-fun m!2114999 () Bool)

(assert (=> b!1711634 m!2114999))

(declare-fun m!2115001 () Bool)

(assert (=> b!1711636 m!2115001))

(declare-fun m!2115003 () Bool)

(assert (=> b!1711632 m!2115003))

(declare-fun m!2115005 () Bool)

(assert (=> b!1711647 m!2115005))

(declare-fun m!2115007 () Bool)

(assert (=> b!1711647 m!2115007))

(declare-fun m!2115009 () Bool)

(assert (=> b!1711647 m!2115009))

(assert (=> b!1711647 m!2115009))

(declare-fun m!2115011 () Bool)

(assert (=> b!1711647 m!2115011))

(declare-fun m!2115013 () Bool)

(assert (=> b!1711639 m!2115013))

(declare-fun m!2115015 () Bool)

(assert (=> b!1711630 m!2115015))

(declare-fun m!2115017 () Bool)

(assert (=> b!1711630 m!2115017))

(declare-fun m!2115019 () Bool)

(assert (=> start!167378 m!2115019))

(declare-fun m!2115021 () Bool)

(assert (=> b!1711635 m!2115021))

(declare-fun m!2115023 () Bool)

(assert (=> b!1711635 m!2115023))

(declare-fun m!2115025 () Bool)

(assert (=> b!1711635 m!2115025))

(assert (=> b!1711635 m!2115021))

(assert (=> b!1711635 m!2115025))

(declare-fun m!2115027 () Bool)

(assert (=> b!1711635 m!2115027))

(declare-fun m!2115029 () Bool)

(assert (=> b!1711629 m!2115029))

(declare-fun m!2115031 () Bool)

(assert (=> b!1711648 m!2115031))

(declare-fun m!2115033 () Bool)

(assert (=> b!1711648 m!2115033))

(declare-fun m!2115035 () Bool)

(assert (=> b!1711643 m!2115035))

(declare-fun m!2115037 () Bool)

(assert (=> b!1711643 m!2115037))

(declare-fun m!2115039 () Bool)

(assert (=> b!1711643 m!2115039))

(declare-fun m!2115041 () Bool)

(assert (=> b!1711643 m!2115041))

(declare-fun m!2115043 () Bool)

(assert (=> b!1711643 m!2115043))

(declare-fun m!2115045 () Bool)

(assert (=> b!1711637 m!2115045))

(declare-fun m!2115047 () Bool)

(assert (=> b!1711645 m!2115047))

(declare-fun m!2115049 () Bool)

(assert (=> b!1711645 m!2115049))

(declare-fun m!2115051 () Bool)

(assert (=> b!1711646 m!2115051))

(check-sat (not b!1711629) (not b!1711632) b_and!123937 (not b!1711646) (not b!1711636) (not b!1711647) b_and!123947 (not b!1711645) (not b_next!47145) (not b!1711634) (not b!1711630) b_and!123941 (not b!1711648) (not b_next!47139) b_and!123939 (not b_next!47141) b_and!123943 (not start!167378) tp_is_empty!7505 (not b!1711633) (not b!1711644) (not b_next!47143) (not b_next!47149) b_and!123945 (not b!1711635) (not b!1711640) (not b!1711639) (not b!1711643) (not b!1711637) (not b_next!47147))
(check-sat b_and!123937 b_and!123947 b_and!123943 (not b_next!47143) (not b_next!47145) (not b_next!47147) b_and!123941 (not b_next!47139) b_and!123939 (not b_next!47141) (not b_next!47149) b_and!123945)
