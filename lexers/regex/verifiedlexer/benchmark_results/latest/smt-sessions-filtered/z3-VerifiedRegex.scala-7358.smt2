; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390994 () Bool)

(assert start!390994)

(declare-fun b!4122782 () Bool)

(declare-fun b_free!116651 () Bool)

(declare-fun b_next!117355 () Bool)

(assert (=> b!4122782 (= b_free!116651 (not b_next!117355))))

(declare-fun tp!1256345 () Bool)

(declare-fun b_and!318997 () Bool)

(assert (=> b!4122782 (= tp!1256345 b_and!318997)))

(declare-fun b_free!116653 () Bool)

(declare-fun b_next!117357 () Bool)

(assert (=> b!4122782 (= b_free!116653 (not b_next!117357))))

(declare-fun tp!1256355 () Bool)

(declare-fun b_and!318999 () Bool)

(assert (=> b!4122782 (= tp!1256355 b_and!318999)))

(declare-fun b!4122789 () Bool)

(declare-fun b_free!116655 () Bool)

(declare-fun b_next!117359 () Bool)

(assert (=> b!4122789 (= b_free!116655 (not b_next!117359))))

(declare-fun tp!1256352 () Bool)

(declare-fun b_and!319001 () Bool)

(assert (=> b!4122789 (= tp!1256352 b_and!319001)))

(declare-fun b_free!116657 () Bool)

(declare-fun b_next!117361 () Bool)

(assert (=> b!4122789 (= b_free!116657 (not b_next!117361))))

(declare-fun tp!1256348 () Bool)

(declare-fun b_and!319003 () Bool)

(assert (=> b!4122789 (= tp!1256348 b_and!319003)))

(declare-fun b!4122795 () Bool)

(declare-fun b_free!116659 () Bool)

(declare-fun b_next!117363 () Bool)

(assert (=> b!4122795 (= b_free!116659 (not b_next!117363))))

(declare-fun tp!1256347 () Bool)

(declare-fun b_and!319005 () Bool)

(assert (=> b!4122795 (= tp!1256347 b_and!319005)))

(declare-fun b_free!116661 () Bool)

(declare-fun b_next!117365 () Bool)

(assert (=> b!4122795 (= b_free!116661 (not b_next!117365))))

(declare-fun tp!1256356 () Bool)

(declare-fun b_and!319007 () Bool)

(assert (=> b!4122795 (= tp!1256356 b_and!319007)))

(declare-fun e!2558208 () Bool)

(assert (=> b!4122782 (= e!2558208 (and tp!1256345 tp!1256355))))

(declare-fun b!4122783 () Bool)

(declare-fun e!2558217 () Bool)

(assert (=> b!4122783 (= e!2558217 true)))

(declare-fun lt!1470927 () Bool)

(declare-datatypes ((LexerInterface!6877 0))(
  ( (LexerInterfaceExt!6874 (__x!27253 Int)) (Lexer!6875) )
))
(declare-fun thiss!25645 () LexerInterface!6877)

(declare-datatypes ((List!44720 0))(
  ( (Nil!44596) (Cons!44596 (h!50016 (_ BitVec 16)) (t!340881 List!44720)) )
))
(declare-datatypes ((TokenValue!7518 0))(
  ( (FloatLiteralValue!15036 (text!53071 List!44720)) (TokenValueExt!7517 (__x!27254 Int)) (Broken!37590 (value!228236 List!44720)) (Object!7641) (End!7518) (Def!7518) (Underscore!7518) (Match!7518) (Else!7518) (Error!7518) (Case!7518) (If!7518) (Extends!7518) (Abstract!7518) (Class!7518) (Val!7518) (DelimiterValue!15036 (del!7578 List!44720)) (KeywordValue!7524 (value!228237 List!44720)) (CommentValue!15036 (value!228238 List!44720)) (WhitespaceValue!15036 (value!228239 List!44720)) (IndentationValue!7518 (value!228240 List!44720)) (String!51339) (Int32!7518) (Broken!37591 (value!228241 List!44720)) (Boolean!7519) (Unit!63940) (OperatorValue!7521 (op!7578 List!44720)) (IdentifierValue!15036 (value!228242 List!44720)) (IdentifierValue!15037 (value!228243 List!44720)) (WhitespaceValue!15037 (value!228244 List!44720)) (True!15036) (False!15036) (Broken!37592 (value!228245 List!44720)) (Broken!37593 (value!228246 List!44720)) (True!15037) (RightBrace!7518) (RightBracket!7518) (Colon!7518) (Null!7518) (Comma!7518) (LeftBracket!7518) (False!15037) (LeftBrace!7518) (ImaginaryLiteralValue!7518 (text!53072 List!44720)) (StringLiteralValue!22554 (value!228247 List!44720)) (EOFValue!7518 (value!228248 List!44720)) (IdentValue!7518 (value!228249 List!44720)) (DelimiterValue!15037 (value!228250 List!44720)) (DedentValue!7518 (value!228251 List!44720)) (NewLineValue!7518 (value!228252 List!44720)) (IntegerValue!22554 (value!228253 (_ BitVec 32)) (text!53073 List!44720)) (IntegerValue!22555 (value!228254 Int) (text!53074 List!44720)) (Times!7518) (Or!7518) (Equal!7518) (Minus!7518) (Broken!37594 (value!228255 List!44720)) (And!7518) (Div!7518) (LessEqual!7518) (Mod!7518) (Concat!19711) (Not!7518) (Plus!7518) (SpaceValue!7518 (value!228256 List!44720)) (IntegerValue!22556 (value!228257 Int) (text!53075 List!44720)) (StringLiteralValue!22555 (text!53076 List!44720)) (FloatLiteralValue!15037 (text!53077 List!44720)) (BytesLiteralValue!7518 (value!228258 List!44720)) (CommentValue!15037 (value!228259 List!44720)) (StringLiteralValue!22556 (value!228260 List!44720)) (ErrorTokenValue!7518 (msg!7579 List!44720)) )
))
(declare-datatypes ((C!24572 0))(
  ( (C!24573 (val!14396 Int)) )
))
(declare-datatypes ((List!44721 0))(
  ( (Nil!44597) (Cons!44597 (h!50017 C!24572) (t!340882 List!44721)) )
))
(declare-datatypes ((IArray!27003 0))(
  ( (IArray!27004 (innerList!13559 List!44721)) )
))
(declare-datatypes ((Conc!13499 0))(
  ( (Node!13499 (left!33401 Conc!13499) (right!33731 Conc!13499) (csize!27228 Int) (cheight!13710 Int)) (Leaf!20858 (xs!16805 IArray!27003) (csize!27229 Int)) (Empty!13499) )
))
(declare-datatypes ((BalanceConc!26592 0))(
  ( (BalanceConc!26593 (c!707786 Conc!13499)) )
))
(declare-datatypes ((String!51340 0))(
  ( (String!51341 (value!228261 String)) )
))
(declare-datatypes ((Regex!12193 0))(
  ( (ElementMatch!12193 (c!707787 C!24572)) (Concat!19712 (regOne!24898 Regex!12193) (regTwo!24898 Regex!12193)) (EmptyExpr!12193) (Star!12193 (reg!12522 Regex!12193)) (EmptyLang!12193) (Union!12193 (regOne!24899 Regex!12193) (regTwo!24899 Regex!12193)) )
))
(declare-datatypes ((TokenValueInjection!14464 0))(
  ( (TokenValueInjection!14465 (toValue!9940 Int) (toChars!9799 Int)) )
))
(declare-datatypes ((Rule!14376 0))(
  ( (Rule!14377 (regex!7288 Regex!12193) (tag!8148 String!51340) (isSeparator!7288 Bool) (transformation!7288 TokenValueInjection!14464)) )
))
(declare-datatypes ((List!44722 0))(
  ( (Nil!44598) (Cons!44598 (h!50018 Rule!14376) (t!340883 List!44722)) )
))
(declare-fun rules!3756 () List!44722)

(declare-datatypes ((List!44723 0))(
  ( (Nil!44599) (Cons!44599 (h!50019 String!51340) (t!340884 List!44723)) )
))
(declare-fun noDuplicateTag!2933 (LexerInterface!6877 List!44722 List!44723) Bool)

(declare-fun noDuplicateTag$default$2!10 (LexerInterface!6877) List!44723)

(assert (=> b!4122783 (= lt!1470927 (noDuplicateTag!2933 thiss!25645 rules!3756 (noDuplicateTag$default$2!10 thiss!25645)))))

(declare-fun b!4122784 () Bool)

(declare-fun e!2558216 () Bool)

(declare-fun tp_is_empty!21309 () Bool)

(declare-fun tp!1256349 () Bool)

(assert (=> b!4122784 (= e!2558216 (and tp_is_empty!21309 tp!1256349))))

(declare-fun res!1684692 () Bool)

(declare-fun e!2558215 () Bool)

(assert (=> start!390994 (=> (not res!1684692) (not e!2558215))))

(get-info :version)

(assert (=> start!390994 (= res!1684692 ((_ is Lexer!6875) thiss!25645))))

(assert (=> start!390994 e!2558215))

(declare-fun e!2558207 () Bool)

(assert (=> start!390994 e!2558207))

(declare-fun e!2558212 () Bool)

(assert (=> start!390994 e!2558212))

(assert (=> start!390994 true))

(declare-fun e!2558214 () Bool)

(assert (=> start!390994 e!2558214))

(assert (=> start!390994 e!2558216))

(declare-fun e!2558210 () Bool)

(assert (=> start!390994 e!2558210))

(declare-fun b!4122785 () Bool)

(declare-fun res!1684693 () Bool)

(declare-fun e!2558203 () Bool)

(assert (=> b!4122785 (=> (not res!1684693) (not e!2558203))))

(declare-fun r!4008 () Rule!14376)

(declare-fun p!2912 () List!44721)

(declare-fun matchR!6024 (Regex!12193 List!44721) Bool)

(assert (=> b!4122785 (= res!1684693 (matchR!6024 (regex!7288 r!4008) p!2912))))

(declare-fun e!2558205 () Bool)

(declare-fun tp!1256351 () Bool)

(declare-fun b!4122786 () Bool)

(declare-fun inv!59177 (String!51340) Bool)

(declare-fun inv!59179 (TokenValueInjection!14464) Bool)

(assert (=> b!4122786 (= e!2558205 (and tp!1256351 (inv!59177 (tag!8148 (h!50018 rules!3756))) (inv!59179 (transformation!7288 (h!50018 rules!3756))) e!2558208))))

(declare-fun b!4122787 () Bool)

(declare-fun res!1684697 () Bool)

(assert (=> b!4122787 (=> (not res!1684697) (not e!2558215))))

(declare-fun contains!8960 (List!44722 Rule!14376) Bool)

(assert (=> b!4122787 (= res!1684697 (contains!8960 rules!3756 r!4008))))

(declare-fun b!4122788 () Bool)

(declare-fun e!2558213 () Bool)

(declare-fun e!2558202 () Bool)

(assert (=> b!4122788 (= e!2558213 e!2558202)))

(declare-fun res!1684699 () Bool)

(assert (=> b!4122788 (=> res!1684699 e!2558202)))

(declare-datatypes ((Token!13506 0))(
  ( (Token!13507 (value!228262 TokenValue!7518) (rule!10366 Rule!14376) (size!33016 Int) (originalCharacters!7784 List!44721)) )
))
(declare-datatypes ((tuple2!43058 0))(
  ( (tuple2!43059 (_1!24663 Token!13506) (_2!24663 List!44721)) )
))
(declare-datatypes ((Option!9596 0))(
  ( (None!9595) (Some!9595 (v!40185 tuple2!43058)) )
))
(declare-fun lt!1470935 () Option!9596)

(declare-fun isEmpty!26538 (Option!9596) Bool)

(assert (=> b!4122788 (= res!1684699 (isEmpty!26538 lt!1470935))))

(declare-fun input!3238 () List!44721)

(declare-fun rBis!149 () Rule!14376)

(declare-fun maxPrefixOneRule!3019 (LexerInterface!6877 Rule!14376 List!44721) Option!9596)

(assert (=> b!4122788 (= lt!1470935 (maxPrefixOneRule!3019 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4122788 (not (= rBis!149 r!4008))))

(declare-datatypes ((Unit!63941 0))(
  ( (Unit!63942) )
))
(declare-fun lt!1470926 () Unit!63941)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!28 (LexerInterface!6877 List!44722 Rule!14376 Rule!14376) Unit!63941)

(assert (=> b!4122788 (= lt!1470926 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!28 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6449 (List!44722) List!44722)

(assert (=> b!4122788 (contains!8960 (tail!6449 rules!3756) r!4008)))

(declare-fun lt!1470928 () Unit!63941)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!30 (List!44722 Rule!14376 Rule!14376) Unit!63941)

(assert (=> b!4122788 (= lt!1470928 (lemmaGetIndexBiggerAndHeadEqThenTailContains!30 rules!3756 rBis!149 r!4008))))

(declare-fun e!2558206 () Bool)

(assert (=> b!4122789 (= e!2558206 (and tp!1256352 tp!1256348))))

(declare-fun b!4122790 () Bool)

(declare-fun res!1684689 () Bool)

(assert (=> b!4122790 (=> (not res!1684689) (not e!2558203))))

(declare-fun getIndex!636 (List!44722 Rule!14376) Int)

(assert (=> b!4122790 (= res!1684689 (< (getIndex!636 rules!3756 rBis!149) (getIndex!636 rules!3756 r!4008)))))

(declare-fun b!4122791 () Bool)

(declare-fun res!1684694 () Bool)

(assert (=> b!4122791 (=> (not res!1684694) (not e!2558215))))

(assert (=> b!4122791 (= res!1684694 (contains!8960 rules!3756 rBis!149))))

(declare-fun b!4122792 () Bool)

(declare-fun res!1684695 () Bool)

(assert (=> b!4122792 (=> (not res!1684695) (not e!2558215))))

(declare-fun isEmpty!26539 (List!44722) Bool)

(assert (=> b!4122792 (= res!1684695 (not (isEmpty!26539 rules!3756)))))

(declare-fun tp!1256350 () Bool)

(declare-fun b!4122793 () Bool)

(declare-fun e!2558211 () Bool)

(assert (=> b!4122793 (= e!2558210 (and tp!1256350 (inv!59177 (tag!8148 rBis!149)) (inv!59179 (transformation!7288 rBis!149)) e!2558211))))

(declare-fun b!4122794 () Bool)

(declare-fun res!1684690 () Bool)

(assert (=> b!4122794 (=> (not res!1684690) (not e!2558203))))

(declare-fun ruleValid!3096 (LexerInterface!6877 Rule!14376) Bool)

(assert (=> b!4122794 (= res!1684690 (ruleValid!3096 thiss!25645 r!4008))))

(assert (=> b!4122795 (= e!2558211 (and tp!1256347 tp!1256356))))

(declare-fun b!4122796 () Bool)

(declare-fun res!1684701 () Bool)

(assert (=> b!4122796 (=> (not res!1684701) (not e!2558215))))

(declare-fun rulesInvariant!6174 (LexerInterface!6877 List!44722) Bool)

(assert (=> b!4122796 (= res!1684701 (rulesInvariant!6174 thiss!25645 rules!3756))))

(declare-fun b!4122797 () Bool)

(assert (=> b!4122797 (= e!2558202 e!2558217)))

(declare-fun res!1684700 () Bool)

(assert (=> b!4122797 (=> res!1684700 e!2558217)))

(declare-fun lt!1470930 () Int)

(declare-fun lt!1470936 () Int)

(assert (=> b!4122797 (= res!1684700 (or (> lt!1470930 lt!1470936) (< lt!1470930 lt!1470936)))))

(declare-fun size!33017 (BalanceConc!26592) Int)

(declare-fun charsOf!4910 (Token!13506) BalanceConc!26592)

(declare-fun get!14550 (Option!9596) tuple2!43058)

(assert (=> b!4122797 (= lt!1470930 (size!33017 (charsOf!4910 (_1!24663 (get!14550 lt!1470935)))))))

(declare-fun b!4122798 () Bool)

(declare-fun res!1684688 () Bool)

(assert (=> b!4122798 (=> (not res!1684688) (not e!2558215))))

(declare-fun isPrefix!4223 (List!44721 List!44721) Bool)

(assert (=> b!4122798 (= res!1684688 (isPrefix!4223 p!2912 input!3238))))

(declare-fun b!4122799 () Bool)

(declare-fun tp!1256346 () Bool)

(assert (=> b!4122799 (= e!2558214 (and tp!1256346 (inv!59177 (tag!8148 r!4008)) (inv!59179 (transformation!7288 r!4008)) e!2558206))))

(declare-fun b!4122800 () Bool)

(assert (=> b!4122800 (= e!2558203 (not e!2558213))))

(declare-fun res!1684691 () Bool)

(assert (=> b!4122800 (=> res!1684691 e!2558213)))

(assert (=> b!4122800 (= res!1684691 (or (not ((_ is Cons!44598) rules!3756)) (not (= (h!50018 rules!3756) rBis!149))))))

(declare-fun lt!1470932 () Unit!63941)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2140 (LexerInterface!6877 Rule!14376 List!44722) Unit!63941)

(assert (=> b!4122800 (= lt!1470932 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2140 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4122800 (ruleValid!3096 thiss!25645 rBis!149)))

(declare-fun lt!1470929 () Unit!63941)

(assert (=> b!4122800 (= lt!1470929 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2140 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4122801 () Bool)

(assert (=> b!4122801 (= e!2558215 e!2558203)))

(declare-fun res!1684696 () Bool)

(assert (=> b!4122801 (=> (not res!1684696) (not e!2558203))))

(declare-fun lt!1470934 () TokenValue!7518)

(declare-fun maxPrefix!4069 (LexerInterface!6877 List!44722 List!44721) Option!9596)

(declare-fun getSuffix!2552 (List!44721 List!44721) List!44721)

(assert (=> b!4122801 (= res!1684696 (= (maxPrefix!4069 thiss!25645 rules!3756 input!3238) (Some!9595 (tuple2!43059 (Token!13507 lt!1470934 r!4008 lt!1470936 p!2912) (getSuffix!2552 input!3238 p!2912)))))))

(declare-fun size!33018 (List!44721) Int)

(assert (=> b!4122801 (= lt!1470936 (size!33018 p!2912))))

(declare-fun lt!1470933 () BalanceConc!26592)

(declare-fun apply!10361 (TokenValueInjection!14464 BalanceConc!26592) TokenValue!7518)

(assert (=> b!4122801 (= lt!1470934 (apply!10361 (transformation!7288 r!4008) lt!1470933))))

(declare-fun lt!1470931 () Unit!63941)

(declare-fun lemmaSemiInverse!2146 (TokenValueInjection!14464 BalanceConc!26592) Unit!63941)

(assert (=> b!4122801 (= lt!1470931 (lemmaSemiInverse!2146 (transformation!7288 r!4008) lt!1470933))))

(declare-fun seqFromList!5405 (List!44721) BalanceConc!26592)

(assert (=> b!4122801 (= lt!1470933 (seqFromList!5405 p!2912))))

(declare-fun b!4122802 () Bool)

(declare-fun res!1684698 () Bool)

(assert (=> b!4122802 (=> (not res!1684698) (not e!2558215))))

(declare-fun isEmpty!26540 (List!44721) Bool)

(assert (=> b!4122802 (= res!1684698 (not (isEmpty!26540 p!2912)))))

(declare-fun b!4122803 () Bool)

(declare-fun tp!1256354 () Bool)

(assert (=> b!4122803 (= e!2558207 (and e!2558205 tp!1256354))))

(declare-fun b!4122804 () Bool)

(declare-fun tp!1256353 () Bool)

(assert (=> b!4122804 (= e!2558212 (and tp_is_empty!21309 tp!1256353))))

(assert (= (and start!390994 res!1684692) b!4122798))

(assert (= (and b!4122798 res!1684688) b!4122792))

(assert (= (and b!4122792 res!1684695) b!4122796))

(assert (= (and b!4122796 res!1684701) b!4122787))

(assert (= (and b!4122787 res!1684697) b!4122791))

(assert (= (and b!4122791 res!1684694) b!4122802))

(assert (= (and b!4122802 res!1684698) b!4122801))

(assert (= (and b!4122801 res!1684696) b!4122785))

(assert (= (and b!4122785 res!1684693) b!4122790))

(assert (= (and b!4122790 res!1684689) b!4122794))

(assert (= (and b!4122794 res!1684690) b!4122800))

(assert (= (and b!4122800 (not res!1684691)) b!4122788))

(assert (= (and b!4122788 (not res!1684699)) b!4122797))

(assert (= (and b!4122797 (not res!1684700)) b!4122783))

(assert (= b!4122786 b!4122782))

(assert (= b!4122803 b!4122786))

(assert (= (and start!390994 ((_ is Cons!44598) rules!3756)) b!4122803))

(assert (= (and start!390994 ((_ is Cons!44597) p!2912)) b!4122804))

(assert (= b!4122799 b!4122789))

(assert (= start!390994 b!4122799))

(assert (= (and start!390994 ((_ is Cons!44597) input!3238)) b!4122784))

(assert (= b!4122793 b!4122795))

(assert (= start!390994 b!4122793))

(declare-fun m!4721825 () Bool)

(assert (=> b!4122794 m!4721825))

(declare-fun m!4721827 () Bool)

(assert (=> b!4122799 m!4721827))

(declare-fun m!4721829 () Bool)

(assert (=> b!4122799 m!4721829))

(declare-fun m!4721831 () Bool)

(assert (=> b!4122800 m!4721831))

(declare-fun m!4721833 () Bool)

(assert (=> b!4122800 m!4721833))

(declare-fun m!4721835 () Bool)

(assert (=> b!4122800 m!4721835))

(declare-fun m!4721837 () Bool)

(assert (=> b!4122797 m!4721837))

(declare-fun m!4721839 () Bool)

(assert (=> b!4122797 m!4721839))

(assert (=> b!4122797 m!4721839))

(declare-fun m!4721841 () Bool)

(assert (=> b!4122797 m!4721841))

(declare-fun m!4721843 () Bool)

(assert (=> b!4122791 m!4721843))

(declare-fun m!4721845 () Bool)

(assert (=> b!4122790 m!4721845))

(declare-fun m!4721847 () Bool)

(assert (=> b!4122790 m!4721847))

(declare-fun m!4721849 () Bool)

(assert (=> b!4122783 m!4721849))

(assert (=> b!4122783 m!4721849))

(declare-fun m!4721851 () Bool)

(assert (=> b!4122783 m!4721851))

(declare-fun m!4721853 () Bool)

(assert (=> b!4122796 m!4721853))

(declare-fun m!4721855 () Bool)

(assert (=> b!4122785 m!4721855))

(declare-fun m!4721857 () Bool)

(assert (=> b!4122792 m!4721857))

(declare-fun m!4721859 () Bool)

(assert (=> b!4122787 m!4721859))

(declare-fun m!4721861 () Bool)

(assert (=> b!4122801 m!4721861))

(declare-fun m!4721863 () Bool)

(assert (=> b!4122801 m!4721863))

(declare-fun m!4721865 () Bool)

(assert (=> b!4122801 m!4721865))

(declare-fun m!4721867 () Bool)

(assert (=> b!4122801 m!4721867))

(declare-fun m!4721869 () Bool)

(assert (=> b!4122801 m!4721869))

(declare-fun m!4721871 () Bool)

(assert (=> b!4122801 m!4721871))

(declare-fun m!4721873 () Bool)

(assert (=> b!4122798 m!4721873))

(declare-fun m!4721875 () Bool)

(assert (=> b!4122802 m!4721875))

(declare-fun m!4721877 () Bool)

(assert (=> b!4122786 m!4721877))

(declare-fun m!4721879 () Bool)

(assert (=> b!4122786 m!4721879))

(declare-fun m!4721881 () Bool)

(assert (=> b!4122788 m!4721881))

(declare-fun m!4721883 () Bool)

(assert (=> b!4122788 m!4721883))

(declare-fun m!4721885 () Bool)

(assert (=> b!4122788 m!4721885))

(assert (=> b!4122788 m!4721881))

(declare-fun m!4721887 () Bool)

(assert (=> b!4122788 m!4721887))

(declare-fun m!4721889 () Bool)

(assert (=> b!4122788 m!4721889))

(declare-fun m!4721891 () Bool)

(assert (=> b!4122788 m!4721891))

(declare-fun m!4721893 () Bool)

(assert (=> b!4122793 m!4721893))

(declare-fun m!4721895 () Bool)

(assert (=> b!4122793 m!4721895))

(check-sat (not b!4122788) (not b!4122801) (not b_next!117365) (not b_next!117363) (not b!4122785) tp_is_empty!21309 (not b!4122794) (not b!4122786) (not b!4122787) (not b_next!117355) b_and!319005 b_and!319007 (not b!4122783) (not b!4122799) (not b_next!117359) (not b!4122791) (not b!4122793) (not b!4122784) (not b!4122798) (not b!4122802) b_and!319001 b_and!318999 (not b!4122797) (not b!4122792) (not b_next!117361) (not b!4122804) (not b_next!117357) (not b!4122790) b_and!319003 (not b!4122796) (not b!4122803) b_and!318997 (not b!4122800))
(check-sat (not b_next!117365) (not b_next!117363) (not b_next!117359) (not b_next!117361) (not b_next!117357) (not b_next!117355) b_and!319005 b_and!319007 b_and!319003 b_and!318997 b_and!319001 b_and!318999)
