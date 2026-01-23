; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!393574 () Bool)

(assert start!393574)

(declare-fun b!4140749 () Bool)

(declare-fun b_free!117923 () Bool)

(declare-fun b_next!118627 () Bool)

(assert (=> b!4140749 (= b_free!117923 (not b_next!118627))))

(declare-fun tp!1262242 () Bool)

(declare-fun b_and!321553 () Bool)

(assert (=> b!4140749 (= tp!1262242 b_and!321553)))

(declare-fun b_free!117925 () Bool)

(declare-fun b_next!118629 () Bool)

(assert (=> b!4140749 (= b_free!117925 (not b_next!118629))))

(declare-fun tp!1262244 () Bool)

(declare-fun b_and!321555 () Bool)

(assert (=> b!4140749 (= tp!1262244 b_and!321555)))

(declare-fun b!4140768 () Bool)

(declare-fun b_free!117927 () Bool)

(declare-fun b_next!118631 () Bool)

(assert (=> b!4140768 (= b_free!117927 (not b_next!118631))))

(declare-fun tp!1262240 () Bool)

(declare-fun b_and!321557 () Bool)

(assert (=> b!4140768 (= tp!1262240 b_and!321557)))

(declare-fun b_free!117929 () Bool)

(declare-fun b_next!118633 () Bool)

(assert (=> b!4140768 (= b_free!117929 (not b_next!118633))))

(declare-fun tp!1262237 () Bool)

(declare-fun b_and!321559 () Bool)

(assert (=> b!4140768 (= tp!1262237 b_and!321559)))

(declare-fun b!4140765 () Bool)

(declare-fun b_free!117931 () Bool)

(declare-fun b_next!118635 () Bool)

(assert (=> b!4140765 (= b_free!117931 (not b_next!118635))))

(declare-fun tp!1262243 () Bool)

(declare-fun b_and!321561 () Bool)

(assert (=> b!4140765 (= tp!1262243 b_and!321561)))

(declare-fun b_free!117933 () Bool)

(declare-fun b_next!118637 () Bool)

(assert (=> b!4140765 (= b_free!117933 (not b_next!118637))))

(declare-fun tp!1262238 () Bool)

(declare-fun b_and!321563 () Bool)

(assert (=> b!4140765 (= tp!1262238 b_and!321563)))

(declare-fun e!2569236 () Bool)

(assert (=> b!4140749 (= e!2569236 (and tp!1262242 tp!1262244))))

(declare-fun b!4140750 () Bool)

(declare-fun res!1694000 () Bool)

(declare-fun e!2569248 () Bool)

(assert (=> b!4140750 (=> (not res!1694000) (not e!2569248))))

(declare-datatypes ((List!45034 0))(
  ( (Nil!44910) (Cons!44910 (h!50330 (_ BitVec 16)) (t!342361 List!45034)) )
))
(declare-datatypes ((TokenValue!7606 0))(
  ( (FloatLiteralValue!15212 (text!53687 List!45034)) (TokenValueExt!7605 (__x!27429 Int)) (Broken!38030 (value!230744 List!45034)) (Object!7729) (End!7606) (Def!7606) (Underscore!7606) (Match!7606) (Else!7606) (Error!7606) (Case!7606) (If!7606) (Extends!7606) (Abstract!7606) (Class!7606) (Val!7606) (DelimiterValue!15212 (del!7666 List!45034)) (KeywordValue!7612 (value!230745 List!45034)) (CommentValue!15212 (value!230746 List!45034)) (WhitespaceValue!15212 (value!230747 List!45034)) (IndentationValue!7606 (value!230748 List!45034)) (String!51779) (Int32!7606) (Broken!38031 (value!230749 List!45034)) (Boolean!7607) (Unit!64210) (OperatorValue!7609 (op!7666 List!45034)) (IdentifierValue!15212 (value!230750 List!45034)) (IdentifierValue!15213 (value!230751 List!45034)) (WhitespaceValue!15213 (value!230752 List!45034)) (True!15212) (False!15212) (Broken!38032 (value!230753 List!45034)) (Broken!38033 (value!230754 List!45034)) (True!15213) (RightBrace!7606) (RightBracket!7606) (Colon!7606) (Null!7606) (Comma!7606) (LeftBracket!7606) (False!15213) (LeftBrace!7606) (ImaginaryLiteralValue!7606 (text!53688 List!45034)) (StringLiteralValue!22818 (value!230755 List!45034)) (EOFValue!7606 (value!230756 List!45034)) (IdentValue!7606 (value!230757 List!45034)) (DelimiterValue!15213 (value!230758 List!45034)) (DedentValue!7606 (value!230759 List!45034)) (NewLineValue!7606 (value!230760 List!45034)) (IntegerValue!22818 (value!230761 (_ BitVec 32)) (text!53689 List!45034)) (IntegerValue!22819 (value!230762 Int) (text!53690 List!45034)) (Times!7606) (Or!7606) (Equal!7606) (Minus!7606) (Broken!38034 (value!230763 List!45034)) (And!7606) (Div!7606) (LessEqual!7606) (Mod!7606) (Concat!19887) (Not!7606) (Plus!7606) (SpaceValue!7606 (value!230764 List!45034)) (IntegerValue!22820 (value!230765 Int) (text!53691 List!45034)) (StringLiteralValue!22819 (text!53692 List!45034)) (FloatLiteralValue!15213 (text!53693 List!45034)) (BytesLiteralValue!7606 (value!230766 List!45034)) (CommentValue!15213 (value!230767 List!45034)) (StringLiteralValue!22820 (value!230768 List!45034)) (ErrorTokenValue!7606 (msg!7667 List!45034)) )
))
(declare-datatypes ((C!24748 0))(
  ( (C!24749 (val!14484 Int)) )
))
(declare-datatypes ((List!45035 0))(
  ( (Nil!44911) (Cons!44911 (h!50331 C!24748) (t!342362 List!45035)) )
))
(declare-datatypes ((IArray!27179 0))(
  ( (IArray!27180 (innerList!13647 List!45035)) )
))
(declare-datatypes ((Conc!13587 0))(
  ( (Node!13587 (left!33629 Conc!13587) (right!33959 Conc!13587) (csize!27404 Int) (cheight!13798 Int)) (Leaf!20990 (xs!16893 IArray!27179) (csize!27405 Int)) (Empty!13587) )
))
(declare-datatypes ((BalanceConc!26768 0))(
  ( (BalanceConc!26769 (c!709832 Conc!13587)) )
))
(declare-datatypes ((Regex!12281 0))(
  ( (ElementMatch!12281 (c!709833 C!24748)) (Concat!19888 (regOne!25074 Regex!12281) (regTwo!25074 Regex!12281)) (EmptyExpr!12281) (Star!12281 (reg!12610 Regex!12281)) (EmptyLang!12281) (Union!12281 (regOne!25075 Regex!12281) (regTwo!25075 Regex!12281)) )
))
(declare-datatypes ((String!51780 0))(
  ( (String!51781 (value!230769 String)) )
))
(declare-datatypes ((TokenValueInjection!14640 0))(
  ( (TokenValueInjection!14641 (toValue!10040 Int) (toChars!9899 Int)) )
))
(declare-datatypes ((Rule!14552 0))(
  ( (Rule!14553 (regex!7376 Regex!12281) (tag!8236 String!51780) (isSeparator!7376 Bool) (transformation!7376 TokenValueInjection!14640)) )
))
(declare-fun r!4008 () Rule!14552)

(declare-fun p!2912 () List!45035)

(declare-fun matchR!6110 (Regex!12281 List!45035) Bool)

(assert (=> b!4140750 (= res!1694000 (matchR!6110 (regex!7376 r!4008) p!2912))))

(declare-fun b!4140751 () Bool)

(declare-fun res!1694004 () Bool)

(declare-fun e!2569245 () Bool)

(assert (=> b!4140751 (=> (not res!1694004) (not e!2569245))))

(declare-fun input!3238 () List!45035)

(declare-fun isPrefix!4311 (List!45035 List!45035) Bool)

(assert (=> b!4140751 (= res!1694004 (isPrefix!4311 p!2912 input!3238))))

(declare-fun b!4140752 () Bool)

(declare-fun res!1694007 () Bool)

(assert (=> b!4140752 (=> (not res!1694007) (not e!2569245))))

(declare-fun isEmpty!26781 (List!45035) Bool)

(assert (=> b!4140752 (= res!1694007 (not (isEmpty!26781 p!2912)))))

(declare-fun res!1694009 () Bool)

(assert (=> start!393574 (=> (not res!1694009) (not e!2569245))))

(declare-datatypes ((LexerInterface!6965 0))(
  ( (LexerInterfaceExt!6962 (__x!27430 Int)) (Lexer!6963) )
))
(declare-fun thiss!25645 () LexerInterface!6965)

(get-info :version)

(assert (=> start!393574 (= res!1694009 ((_ is Lexer!6963) thiss!25645))))

(assert (=> start!393574 e!2569245))

(declare-fun e!2569237 () Bool)

(assert (=> start!393574 e!2569237))

(declare-fun e!2569238 () Bool)

(assert (=> start!393574 e!2569238))

(assert (=> start!393574 true))

(declare-fun e!2569239 () Bool)

(assert (=> start!393574 e!2569239))

(declare-fun e!2569244 () Bool)

(assert (=> start!393574 e!2569244))

(declare-fun e!2569243 () Bool)

(assert (=> start!393574 e!2569243))

(declare-fun b!4140753 () Bool)

(declare-fun e!2569241 () Bool)

(assert (=> b!4140753 (= e!2569241 true)))

(declare-fun lt!1476738 () Bool)

(declare-fun lt!1476729 () List!45035)

(assert (=> b!4140753 (= lt!1476738 (isPrefix!4311 lt!1476729 input!3238))))

(declare-fun b!4140754 () Bool)

(declare-fun res!1693995 () Bool)

(assert (=> b!4140754 (=> (not res!1693995) (not e!2569248))))

(declare-datatypes ((List!45036 0))(
  ( (Nil!44912) (Cons!44912 (h!50332 Rule!14552) (t!342363 List!45036)) )
))
(declare-fun rules!3756 () List!45036)

(declare-fun rBis!149 () Rule!14552)

(declare-fun getIndex!722 (List!45036 Rule!14552) Int)

(assert (=> b!4140754 (= res!1693995 (< (getIndex!722 rules!3756 rBis!149) (getIndex!722 rules!3756 r!4008)))))

(declare-fun tp!1262239 () Bool)

(declare-fun b!4140755 () Bool)

(declare-fun e!2569246 () Bool)

(declare-fun inv!59515 (String!51780) Bool)

(declare-fun inv!59517 (TokenValueInjection!14640) Bool)

(assert (=> b!4140755 (= e!2569239 (and tp!1262239 (inv!59515 (tag!8236 r!4008)) (inv!59517 (transformation!7376 r!4008)) e!2569246))))

(declare-fun b!4140756 () Bool)

(declare-fun tp_is_empty!21485 () Bool)

(declare-fun tp!1262235 () Bool)

(assert (=> b!4140756 (= e!2569244 (and tp_is_empty!21485 tp!1262235))))

(declare-fun b!4140757 () Bool)

(declare-fun tp!1262241 () Bool)

(assert (=> b!4140757 (= e!2569238 (and tp_is_empty!21485 tp!1262241))))

(declare-fun b!4140758 () Bool)

(declare-fun e!2569250 () Bool)

(assert (=> b!4140758 (= e!2569250 e!2569241)))

(declare-fun res!1693996 () Bool)

(assert (=> b!4140758 (=> res!1693996 e!2569241)))

(declare-fun lt!1476727 () List!45035)

(assert (=> b!4140758 (= res!1693996 (not (= lt!1476727 input!3238)))))

(assert (=> b!4140758 (isPrefix!4311 lt!1476729 lt!1476727)))

(declare-datatypes ((Token!13682 0))(
  ( (Token!13683 (value!230770 TokenValue!7606) (rule!10486 Rule!14552) (size!33268 Int) (originalCharacters!7872 List!45035)) )
))
(declare-datatypes ((tuple2!43294 0))(
  ( (tuple2!43295 (_1!24781 Token!13682) (_2!24781 List!45035)) )
))
(declare-fun lt!1476731 () tuple2!43294)

(declare-fun ++!11616 (List!45035 List!45035) List!45035)

(assert (=> b!4140758 (= lt!1476727 (++!11616 lt!1476729 (_2!24781 lt!1476731)))))

(declare-datatypes ((Unit!64211 0))(
  ( (Unit!64212) )
))
(declare-fun lt!1476733 () Unit!64211)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2940 (List!45035 List!45035) Unit!64211)

(assert (=> b!4140758 (= lt!1476733 (lemmaConcatTwoListThenFirstIsPrefix!2940 lt!1476729 (_2!24781 lt!1476731)))))

(declare-fun lt!1476734 () BalanceConc!26768)

(declare-fun list!16449 (BalanceConc!26768) List!45035)

(assert (=> b!4140758 (= lt!1476729 (list!16449 lt!1476734))))

(declare-fun b!4140759 () Bool)

(declare-fun res!1694003 () Bool)

(assert (=> b!4140759 (=> (not res!1694003) (not e!2569245))))

(declare-fun contains!9056 (List!45036 Rule!14552) Bool)

(assert (=> b!4140759 (= res!1694003 (contains!9056 rules!3756 r!4008))))

(declare-fun e!2569240 () Bool)

(declare-fun e!2569235 () Bool)

(declare-fun tp!1262245 () Bool)

(declare-fun b!4140760 () Bool)

(assert (=> b!4140760 (= e!2569240 (and tp!1262245 (inv!59515 (tag!8236 (h!50332 rules!3756))) (inv!59517 (transformation!7376 (h!50332 rules!3756))) e!2569235))))

(declare-fun b!4140761 () Bool)

(assert (=> b!4140761 (= e!2569245 e!2569248)))

(declare-fun res!1694008 () Bool)

(assert (=> b!4140761 (=> (not res!1694008) (not e!2569248))))

(declare-fun lt!1476737 () TokenValue!7606)

(declare-fun lt!1476726 () Int)

(declare-datatypes ((Option!9682 0))(
  ( (None!9681) (Some!9681 (v!40319 tuple2!43294)) )
))
(declare-fun maxPrefix!4155 (LexerInterface!6965 List!45036 List!45035) Option!9682)

(declare-fun getSuffix!2638 (List!45035 List!45035) List!45035)

(assert (=> b!4140761 (= res!1694008 (= (maxPrefix!4155 thiss!25645 rules!3756 input!3238) (Some!9681 (tuple2!43295 (Token!13683 lt!1476737 r!4008 lt!1476726 p!2912) (getSuffix!2638 input!3238 p!2912)))))))

(declare-fun size!33269 (List!45035) Int)

(assert (=> b!4140761 (= lt!1476726 (size!33269 p!2912))))

(declare-fun lt!1476723 () BalanceConc!26768)

(declare-fun apply!10449 (TokenValueInjection!14640 BalanceConc!26768) TokenValue!7606)

(assert (=> b!4140761 (= lt!1476737 (apply!10449 (transformation!7376 r!4008) lt!1476723))))

(declare-fun lt!1476736 () Unit!64211)

(declare-fun lemmaSemiInverse!2234 (TokenValueInjection!14640 BalanceConc!26768) Unit!64211)

(assert (=> b!4140761 (= lt!1476736 (lemmaSemiInverse!2234 (transformation!7376 r!4008) lt!1476723))))

(declare-fun seqFromList!5493 (List!45035) BalanceConc!26768)

(assert (=> b!4140761 (= lt!1476723 (seqFromList!5493 p!2912))))

(declare-fun b!4140762 () Bool)

(declare-fun tp!1262246 () Bool)

(assert (=> b!4140762 (= e!2569237 (and e!2569240 tp!1262246))))

(declare-fun b!4140763 () Bool)

(declare-fun res!1694005 () Bool)

(assert (=> b!4140763 (=> (not res!1694005) (not e!2569245))))

(assert (=> b!4140763 (= res!1694005 (contains!9056 rules!3756 rBis!149))))

(declare-fun b!4140764 () Bool)

(declare-fun e!2569251 () Bool)

(assert (=> b!4140764 (= e!2569251 e!2569250)))

(declare-fun res!1693997 () Bool)

(assert (=> b!4140764 (=> res!1693997 e!2569250)))

(declare-fun lt!1476725 () Int)

(assert (=> b!4140764 (= res!1693997 (or (> lt!1476725 lt!1476726) (>= lt!1476725 lt!1476726)))))

(declare-fun size!33270 (BalanceConc!26768) Int)

(assert (=> b!4140764 (= lt!1476725 (size!33270 lt!1476734))))

(declare-fun charsOf!4975 (Token!13682) BalanceConc!26768)

(assert (=> b!4140764 (= lt!1476734 (charsOf!4975 (_1!24781 lt!1476731)))))

(declare-fun lt!1476730 () Option!9682)

(declare-fun get!14659 (Option!9682) tuple2!43294)

(assert (=> b!4140764 (= lt!1476731 (get!14659 lt!1476730))))

(assert (=> b!4140765 (= e!2569246 (and tp!1262243 tp!1262238))))

(declare-fun b!4140766 () Bool)

(declare-fun e!2569242 () Bool)

(assert (=> b!4140766 (= e!2569242 e!2569251)))

(declare-fun res!1693998 () Bool)

(assert (=> b!4140766 (=> res!1693998 e!2569251)))

(declare-fun isEmpty!26782 (Option!9682) Bool)

(assert (=> b!4140766 (= res!1693998 (isEmpty!26782 lt!1476730))))

(declare-fun maxPrefixOneRule!3094 (LexerInterface!6965 Rule!14552 List!45035) Option!9682)

(assert (=> b!4140766 (= lt!1476730 (maxPrefixOneRule!3094 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4140766 (not (= rBis!149 r!4008))))

(declare-fun lt!1476735 () Unit!64211)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!74 (LexerInterface!6965 List!45036 Rule!14552 Rule!14552) Unit!64211)

(assert (=> b!4140766 (= lt!1476735 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!74 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6547 (List!45036) List!45036)

(assert (=> b!4140766 (contains!9056 (tail!6547 rules!3756) r!4008)))

(declare-fun lt!1476728 () Unit!64211)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!80 (List!45036 Rule!14552 Rule!14552) Unit!64211)

(assert (=> b!4140766 (= lt!1476728 (lemmaGetIndexBiggerAndHeadEqThenTailContains!80 rules!3756 rBis!149 r!4008))))

(declare-fun b!4140767 () Bool)

(declare-fun res!1694001 () Bool)

(assert (=> b!4140767 (=> (not res!1694001) (not e!2569248))))

(declare-fun ruleValid!3182 (LexerInterface!6965 Rule!14552) Bool)

(assert (=> b!4140767 (= res!1694001 (ruleValid!3182 thiss!25645 r!4008))))

(assert (=> b!4140768 (= e!2569235 (and tp!1262240 tp!1262237))))

(declare-fun b!4140769 () Bool)

(declare-fun res!1694002 () Bool)

(assert (=> b!4140769 (=> (not res!1694002) (not e!2569245))))

(declare-fun isEmpty!26783 (List!45036) Bool)

(assert (=> b!4140769 (= res!1694002 (not (isEmpty!26783 rules!3756)))))

(declare-fun b!4140770 () Bool)

(declare-fun tp!1262236 () Bool)

(assert (=> b!4140770 (= e!2569243 (and tp!1262236 (inv!59515 (tag!8236 rBis!149)) (inv!59517 (transformation!7376 rBis!149)) e!2569236))))

(declare-fun b!4140771 () Bool)

(assert (=> b!4140771 (= e!2569248 (not e!2569242))))

(declare-fun res!1694006 () Bool)

(assert (=> b!4140771 (=> res!1694006 e!2569242)))

(assert (=> b!4140771 (= res!1694006 (or (not ((_ is Cons!44912) rules!3756)) (not (= (h!50332 rules!3756) rBis!149))))))

(declare-fun lt!1476724 () Unit!64211)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2222 (LexerInterface!6965 Rule!14552 List!45036) Unit!64211)

(assert (=> b!4140771 (= lt!1476724 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2222 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4140771 (ruleValid!3182 thiss!25645 rBis!149)))

(declare-fun lt!1476732 () Unit!64211)

(assert (=> b!4140771 (= lt!1476732 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2222 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4140772 () Bool)

(declare-fun res!1693999 () Bool)

(assert (=> b!4140772 (=> (not res!1693999) (not e!2569245))))

(declare-fun rulesInvariant!6262 (LexerInterface!6965 List!45036) Bool)

(assert (=> b!4140772 (= res!1693999 (rulesInvariant!6262 thiss!25645 rules!3756))))

(assert (= (and start!393574 res!1694009) b!4140751))

(assert (= (and b!4140751 res!1694004) b!4140769))

(assert (= (and b!4140769 res!1694002) b!4140772))

(assert (= (and b!4140772 res!1693999) b!4140759))

(assert (= (and b!4140759 res!1694003) b!4140763))

(assert (= (and b!4140763 res!1694005) b!4140752))

(assert (= (and b!4140752 res!1694007) b!4140761))

(assert (= (and b!4140761 res!1694008) b!4140750))

(assert (= (and b!4140750 res!1694000) b!4140754))

(assert (= (and b!4140754 res!1693995) b!4140767))

(assert (= (and b!4140767 res!1694001) b!4140771))

(assert (= (and b!4140771 (not res!1694006)) b!4140766))

(assert (= (and b!4140766 (not res!1693998)) b!4140764))

(assert (= (and b!4140764 (not res!1693997)) b!4140758))

(assert (= (and b!4140758 (not res!1693996)) b!4140753))

(assert (= b!4140760 b!4140768))

(assert (= b!4140762 b!4140760))

(assert (= (and start!393574 ((_ is Cons!44912) rules!3756)) b!4140762))

(assert (= (and start!393574 ((_ is Cons!44911) p!2912)) b!4140757))

(assert (= b!4140755 b!4140765))

(assert (= start!393574 b!4140755))

(assert (= (and start!393574 ((_ is Cons!44911) input!3238)) b!4140756))

(assert (= b!4140770 b!4140749))

(assert (= start!393574 b!4140770))

(declare-fun m!4737195 () Bool)

(assert (=> b!4140754 m!4737195))

(declare-fun m!4737197 () Bool)

(assert (=> b!4140754 m!4737197))

(declare-fun m!4737199 () Bool)

(assert (=> b!4140769 m!4737199))

(declare-fun m!4737201 () Bool)

(assert (=> b!4140750 m!4737201))

(declare-fun m!4737203 () Bool)

(assert (=> b!4140767 m!4737203))

(declare-fun m!4737205 () Bool)

(assert (=> b!4140752 m!4737205))

(declare-fun m!4737207 () Bool)

(assert (=> b!4140771 m!4737207))

(declare-fun m!4737209 () Bool)

(assert (=> b!4140771 m!4737209))

(declare-fun m!4737211 () Bool)

(assert (=> b!4140771 m!4737211))

(declare-fun m!4737213 () Bool)

(assert (=> b!4140755 m!4737213))

(declare-fun m!4737215 () Bool)

(assert (=> b!4140755 m!4737215))

(declare-fun m!4737217 () Bool)

(assert (=> b!4140758 m!4737217))

(declare-fun m!4737219 () Bool)

(assert (=> b!4140758 m!4737219))

(declare-fun m!4737221 () Bool)

(assert (=> b!4140758 m!4737221))

(declare-fun m!4737223 () Bool)

(assert (=> b!4140758 m!4737223))

(declare-fun m!4737225 () Bool)

(assert (=> b!4140753 m!4737225))

(declare-fun m!4737227 () Bool)

(assert (=> b!4140759 m!4737227))

(declare-fun m!4737229 () Bool)

(assert (=> b!4140761 m!4737229))

(declare-fun m!4737231 () Bool)

(assert (=> b!4140761 m!4737231))

(declare-fun m!4737233 () Bool)

(assert (=> b!4140761 m!4737233))

(declare-fun m!4737235 () Bool)

(assert (=> b!4140761 m!4737235))

(declare-fun m!4737237 () Bool)

(assert (=> b!4140761 m!4737237))

(declare-fun m!4737239 () Bool)

(assert (=> b!4140761 m!4737239))

(declare-fun m!4737241 () Bool)

(assert (=> b!4140760 m!4737241))

(declare-fun m!4737243 () Bool)

(assert (=> b!4140760 m!4737243))

(declare-fun m!4737245 () Bool)

(assert (=> b!4140772 m!4737245))

(declare-fun m!4737247 () Bool)

(assert (=> b!4140770 m!4737247))

(declare-fun m!4737249 () Bool)

(assert (=> b!4140770 m!4737249))

(declare-fun m!4737251 () Bool)

(assert (=> b!4140764 m!4737251))

(declare-fun m!4737253 () Bool)

(assert (=> b!4140764 m!4737253))

(declare-fun m!4737255 () Bool)

(assert (=> b!4140764 m!4737255))

(declare-fun m!4737257 () Bool)

(assert (=> b!4140763 m!4737257))

(declare-fun m!4737259 () Bool)

(assert (=> b!4140766 m!4737259))

(declare-fun m!4737261 () Bool)

(assert (=> b!4140766 m!4737261))

(declare-fun m!4737263 () Bool)

(assert (=> b!4140766 m!4737263))

(declare-fun m!4737265 () Bool)

(assert (=> b!4140766 m!4737265))

(declare-fun m!4737267 () Bool)

(assert (=> b!4140766 m!4737267))

(declare-fun m!4737269 () Bool)

(assert (=> b!4140766 m!4737269))

(assert (=> b!4140766 m!4737259))

(declare-fun m!4737271 () Bool)

(assert (=> b!4140751 m!4737271))

(check-sat (not b_next!118627) (not b_next!118635) b_and!321553 (not b!4140767) (not b!4140750) (not b!4140760) b_and!321557 (not b_next!118637) (not b!4140753) (not b!4140761) (not b!4140770) (not b_next!118629) (not b!4140751) (not b!4140755) tp_is_empty!21485 (not b_next!118633) (not b!4140759) (not b!4140756) (not b!4140758) (not b!4140766) (not b!4140754) b_and!321559 (not b!4140757) (not b!4140762) b_and!321555 (not b!4140769) (not b!4140764) (not b!4140763) (not b!4140772) b_and!321563 b_and!321561 (not b!4140752) (not b!4140771) (not b_next!118631))
(check-sat (not b_next!118629) (not b_next!118627) (not b_next!118635) b_and!321553 (not b_next!118633) b_and!321557 (not b_next!118637) b_and!321559 b_and!321555 b_and!321563 b_and!321561 (not b_next!118631))
