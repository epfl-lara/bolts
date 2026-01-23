; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!179860 () Bool)

(assert start!179860)

(declare-fun b!1817609 () Bool)

(declare-fun b_free!50267 () Bool)

(declare-fun b_next!50971 () Bool)

(assert (=> b!1817609 (= b_free!50267 (not b_next!50971))))

(declare-fun tp!513556 () Bool)

(declare-fun b_and!140773 () Bool)

(assert (=> b!1817609 (= tp!513556 b_and!140773)))

(declare-fun b_free!50269 () Bool)

(declare-fun b_next!50973 () Bool)

(assert (=> b!1817609 (= b_free!50269 (not b_next!50973))))

(declare-fun tp!513547 () Bool)

(declare-fun b_and!140775 () Bool)

(assert (=> b!1817609 (= tp!513547 b_and!140775)))

(declare-fun b!1817605 () Bool)

(declare-fun b_free!50271 () Bool)

(declare-fun b_next!50975 () Bool)

(assert (=> b!1817605 (= b_free!50271 (not b_next!50975))))

(declare-fun tp!513550 () Bool)

(declare-fun b_and!140777 () Bool)

(assert (=> b!1817605 (= tp!513550 b_and!140777)))

(declare-fun b_free!50273 () Bool)

(declare-fun b_next!50977 () Bool)

(assert (=> b!1817605 (= b_free!50273 (not b_next!50977))))

(declare-fun tp!513554 () Bool)

(declare-fun b_and!140779 () Bool)

(assert (=> b!1817605 (= tp!513554 b_and!140779)))

(declare-fun b!1817617 () Bool)

(declare-fun b_free!50275 () Bool)

(declare-fun b_next!50979 () Bool)

(assert (=> b!1817617 (= b_free!50275 (not b_next!50979))))

(declare-fun tp!513559 () Bool)

(declare-fun b_and!140781 () Bool)

(assert (=> b!1817617 (= tp!513559 b_and!140781)))

(declare-fun b_free!50277 () Bool)

(declare-fun b_next!50981 () Bool)

(assert (=> b!1817617 (= b_free!50277 (not b_next!50981))))

(declare-fun tp!513549 () Bool)

(declare-fun b_and!140783 () Bool)

(assert (=> b!1817617 (= tp!513549 b_and!140783)))

(declare-fun e!1161343 () Bool)

(declare-fun e!1161346 () Bool)

(declare-datatypes ((List!19938 0))(
  ( (Nil!19868) (Cons!19868 (h!25269 (_ BitVec 16)) (t!169655 List!19938)) )
))
(declare-datatypes ((TokenValue!3666 0))(
  ( (FloatLiteralValue!7332 (text!26107 List!19938)) (TokenValueExt!3665 (__x!12634 Int)) (Broken!18330 (value!111558 List!19938)) (Object!3735) (End!3666) (Def!3666) (Underscore!3666) (Match!3666) (Else!3666) (Error!3666) (Case!3666) (If!3666) (Extends!3666) (Abstract!3666) (Class!3666) (Val!3666) (DelimiterValue!7332 (del!3726 List!19938)) (KeywordValue!3672 (value!111559 List!19938)) (CommentValue!7332 (value!111560 List!19938)) (WhitespaceValue!7332 (value!111561 List!19938)) (IndentationValue!3666 (value!111562 List!19938)) (String!22663) (Int32!3666) (Broken!18331 (value!111563 List!19938)) (Boolean!3667) (Unit!34553) (OperatorValue!3669 (op!3726 List!19938)) (IdentifierValue!7332 (value!111564 List!19938)) (IdentifierValue!7333 (value!111565 List!19938)) (WhitespaceValue!7333 (value!111566 List!19938)) (True!7332) (False!7332) (Broken!18332 (value!111567 List!19938)) (Broken!18333 (value!111568 List!19938)) (True!7333) (RightBrace!3666) (RightBracket!3666) (Colon!3666) (Null!3666) (Comma!3666) (LeftBracket!3666) (False!7333) (LeftBrace!3666) (ImaginaryLiteralValue!3666 (text!26108 List!19938)) (StringLiteralValue!10998 (value!111569 List!19938)) (EOFValue!3666 (value!111570 List!19938)) (IdentValue!3666 (value!111571 List!19938)) (DelimiterValue!7333 (value!111572 List!19938)) (DedentValue!3666 (value!111573 List!19938)) (NewLineValue!3666 (value!111574 List!19938)) (IntegerValue!10998 (value!111575 (_ BitVec 32)) (text!26109 List!19938)) (IntegerValue!10999 (value!111576 Int) (text!26110 List!19938)) (Times!3666) (Or!3666) (Equal!3666) (Minus!3666) (Broken!18334 (value!111577 List!19938)) (And!3666) (Div!3666) (LessEqual!3666) (Mod!3666) (Concat!8570) (Not!3666) (Plus!3666) (SpaceValue!3666 (value!111578 List!19938)) (IntegerValue!11000 (value!111579 Int) (text!26111 List!19938)) (StringLiteralValue!10999 (text!26112 List!19938)) (FloatLiteralValue!7333 (text!26113 List!19938)) (BytesLiteralValue!3666 (value!111580 List!19938)) (CommentValue!7333 (value!111581 List!19938)) (StringLiteralValue!11000 (value!111582 List!19938)) (ErrorTokenValue!3666 (msg!3727 List!19938)) )
))
(declare-datatypes ((C!9982 0))(
  ( (C!9983 (val!5587 Int)) )
))
(declare-datatypes ((List!19939 0))(
  ( (Nil!19869) (Cons!19869 (h!25270 C!9982) (t!169656 List!19939)) )
))
(declare-datatypes ((IArray!13221 0))(
  ( (IArray!13222 (innerList!6668 List!19939)) )
))
(declare-datatypes ((Conc!6608 0))(
  ( (Node!6608 (left!15930 Conc!6608) (right!16260 Conc!6608) (csize!13446 Int) (cheight!6819 Int)) (Leaf!9617 (xs!9484 IArray!13221) (csize!13447 Int)) (Empty!6608) )
))
(declare-datatypes ((BalanceConc!13160 0))(
  ( (BalanceConc!13161 (c!296749 Conc!6608)) )
))
(declare-datatypes ((TokenValueInjection!6992 0))(
  ( (TokenValueInjection!6993 (toValue!5111 Int) (toChars!4970 Int)) )
))
(declare-datatypes ((String!22664 0))(
  ( (String!22665 (value!111583 String)) )
))
(declare-datatypes ((Regex!4904 0))(
  ( (ElementMatch!4904 (c!296750 C!9982)) (Concat!8571 (regOne!10320 Regex!4904) (regTwo!10320 Regex!4904)) (EmptyExpr!4904) (Star!4904 (reg!5233 Regex!4904)) (EmptyLang!4904) (Union!4904 (regOne!10321 Regex!4904) (regTwo!10321 Regex!4904)) )
))
(declare-datatypes ((Rule!6952 0))(
  ( (Rule!6953 (regex!3576 Regex!4904) (tag!3990 String!22664) (isSeparator!3576 Bool) (transformation!3576 TokenValueInjection!6992)) )
))
(declare-datatypes ((Token!6706 0))(
  ( (Token!6707 (value!111584 TokenValue!3666) (rule!5686 Rule!6952) (size!15773 Int) (originalCharacters!4384 List!19939)) )
))
(declare-fun token!556 () Token!6706)

(declare-fun b!1817599 () Bool)

(declare-fun tp!513555 () Bool)

(declare-fun inv!21 (TokenValue!3666) Bool)

(assert (=> b!1817599 (= e!1161346 (and (inv!21 (value!111584 token!556)) e!1161343 tp!513555))))

(declare-datatypes ((List!19940 0))(
  ( (Nil!19870) (Cons!19870 (h!25271 Rule!6952) (t!169657 List!19940)) )
))
(declare-fun rules!4538 () List!19940)

(declare-fun e!1161348 () Bool)

(declare-fun tp!513553 () Bool)

(declare-fun b!1817600 () Bool)

(declare-fun e!1161354 () Bool)

(declare-fun inv!25898 (String!22664) Bool)

(declare-fun inv!25901 (TokenValueInjection!6992) Bool)

(assert (=> b!1817600 (= e!1161354 (and tp!513553 (inv!25898 (tag!3990 (h!25271 rules!4538))) (inv!25901 (transformation!3576 (h!25271 rules!4538))) e!1161348))))

(declare-fun b!1817601 () Bool)

(declare-fun e!1161350 () Bool)

(declare-fun e!1161358 () Bool)

(assert (=> b!1817601 (= e!1161350 (not e!1161358))))

(declare-fun res!817246 () Bool)

(assert (=> b!1817601 (=> res!817246 e!1161358)))

(declare-fun rule!559 () Rule!6952)

(declare-fun lt!706271 () List!19939)

(declare-fun matchR!2369 (Regex!4904 List!19939) Bool)

(assert (=> b!1817601 (= res!817246 (not (matchR!2369 (regex!3576 rule!559) lt!706271)))))

(declare-datatypes ((LexerInterface!3205 0))(
  ( (LexerInterfaceExt!3202 (__x!12635 Int)) (Lexer!3203) )
))
(declare-fun thiss!28068 () LexerInterface!3205)

(declare-fun ruleValid!1068 (LexerInterface!3205 Rule!6952) Bool)

(assert (=> b!1817601 (ruleValid!1068 thiss!28068 rule!559)))

(declare-datatypes ((Unit!34554 0))(
  ( (Unit!34555) )
))
(declare-fun lt!706270 () Unit!34554)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!589 (LexerInterface!3205 Rule!6952 List!19940) Unit!34554)

(assert (=> b!1817601 (= lt!706270 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!589 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1817602 () Bool)

(declare-fun e!1161353 () Bool)

(declare-fun tp!513558 () Bool)

(assert (=> b!1817602 (= e!1161353 (and e!1161354 tp!513558))))

(declare-fun res!817245 () Bool)

(declare-fun e!1161361 () Bool)

(assert (=> start!179860 (=> (not res!817245) (not e!1161361))))

(assert (=> start!179860 (= res!817245 (is-Lexer!3203 thiss!28068))))

(assert (=> start!179860 e!1161361))

(declare-fun e!1161351 () Bool)

(assert (=> start!179860 e!1161351))

(assert (=> start!179860 true))

(assert (=> start!179860 e!1161353))

(declare-fun inv!25902 (Token!6706) Bool)

(assert (=> start!179860 (and (inv!25902 token!556) e!1161346)))

(declare-fun e!1161360 () Bool)

(assert (=> start!179860 e!1161360))

(declare-fun e!1161356 () Bool)

(assert (=> start!179860 e!1161356))

(declare-fun b!1817603 () Bool)

(declare-fun res!817244 () Bool)

(assert (=> b!1817603 (=> (not res!817244) (not e!1161361))))

(declare-fun isEmpty!12566 (List!19940) Bool)

(assert (=> b!1817603 (= res!817244 (not (isEmpty!12566 rules!4538)))))

(declare-fun b!1817604 () Bool)

(declare-fun res!817247 () Bool)

(declare-fun e!1161352 () Bool)

(assert (=> b!1817604 (=> (not res!817247) (not e!1161352))))

(assert (=> b!1817604 (= res!817247 (= (rule!5686 token!556) rule!559))))

(declare-fun e!1161349 () Bool)

(assert (=> b!1817605 (= e!1161349 (and tp!513550 tp!513554))))

(declare-fun b!1817606 () Bool)

(declare-fun e!1161357 () Bool)

(declare-fun tp!513551 () Bool)

(assert (=> b!1817606 (= e!1161360 (and tp!513551 (inv!25898 (tag!3990 rule!559)) (inv!25901 (transformation!3576 rule!559)) e!1161357))))

(declare-fun b!1817607 () Bool)

(declare-fun tp_is_empty!8043 () Bool)

(declare-fun tp!513552 () Bool)

(assert (=> b!1817607 (= e!1161356 (and tp_is_empty!8043 tp!513552))))

(declare-fun tp!513548 () Bool)

(declare-fun b!1817608 () Bool)

(assert (=> b!1817608 (= e!1161343 (and tp!513548 (inv!25898 (tag!3990 (rule!5686 token!556))) (inv!25901 (transformation!3576 (rule!5686 token!556))) e!1161349))))

(assert (=> b!1817609 (= e!1161357 (and tp!513556 tp!513547))))

(declare-fun b!1817610 () Bool)

(declare-fun tp!513557 () Bool)

(assert (=> b!1817610 (= e!1161351 (and tp_is_empty!8043 tp!513557))))

(declare-fun b!1817611 () Bool)

(assert (=> b!1817611 (= e!1161352 e!1161350)))

(declare-fun res!817251 () Bool)

(assert (=> b!1817611 (=> (not res!817251) (not e!1161350))))

(declare-fun suffix!1667 () List!19939)

(declare-fun input!3612 () List!19939)

(declare-fun ++!5400 (List!19939 List!19939) List!19939)

(assert (=> b!1817611 (= res!817251 (= input!3612 (++!5400 lt!706271 suffix!1667)))))

(declare-fun list!8082 (BalanceConc!13160) List!19939)

(declare-fun charsOf!2219 (Token!6706) BalanceConc!13160)

(assert (=> b!1817611 (= lt!706271 (list!8082 (charsOf!2219 token!556)))))

(declare-fun b!1817612 () Bool)

(assert (=> b!1817612 (= e!1161361 e!1161352)))

(declare-fun res!817249 () Bool)

(assert (=> b!1817612 (=> (not res!817249) (not e!1161352))))

(declare-datatypes ((tuple2!19416 0))(
  ( (tuple2!19417 (_1!11110 Token!6706) (_2!11110 List!19939)) )
))
(declare-datatypes ((Option!4156 0))(
  ( (None!4155) (Some!4155 (v!25684 tuple2!19416)) )
))
(declare-fun lt!706269 () Option!4156)

(declare-fun maxPrefix!1753 (LexerInterface!3205 List!19940 List!19939) Option!4156)

(assert (=> b!1817612 (= res!817249 (= (maxPrefix!1753 thiss!28068 rules!4538 input!3612) lt!706269))))

(assert (=> b!1817612 (= lt!706269 (Some!4155 (tuple2!19417 token!556 suffix!1667)))))

(declare-fun b!1817613 () Bool)

(declare-fun res!817250 () Bool)

(assert (=> b!1817613 (=> (not res!817250) (not e!1161361))))

(declare-fun contains!3612 (List!19940 Rule!6952) Bool)

(assert (=> b!1817613 (= res!817250 (contains!3612 rules!4538 rule!559))))

(declare-fun b!1817614 () Bool)

(declare-fun e!1161359 () Bool)

(assert (=> b!1817614 (= e!1161358 e!1161359)))

(declare-fun res!817248 () Bool)

(assert (=> b!1817614 (=> res!817248 e!1161359)))

(declare-fun lt!706268 () Option!4156)

(assert (=> b!1817614 (= res!817248 (not (= lt!706268 lt!706269)))))

(declare-fun lt!706272 () Int)

(declare-fun lt!706267 () TokenValue!3666)

(assert (=> b!1817614 (= lt!706268 (Some!4155 (tuple2!19417 (Token!6707 lt!706267 rule!559 lt!706272 lt!706271) suffix!1667)))))

(declare-fun maxPrefixOneRule!1118 (LexerInterface!3205 Rule!6952 List!19939) Option!4156)

(assert (=> b!1817614 (= lt!706268 (maxPrefixOneRule!1118 thiss!28068 rule!559 input!3612))))

(declare-fun size!15774 (List!19939) Int)

(assert (=> b!1817614 (= lt!706272 (size!15774 lt!706271))))

(declare-fun apply!5368 (TokenValueInjection!6992 BalanceConc!13160) TokenValue!3666)

(declare-fun seqFromList!2537 (List!19939) BalanceConc!13160)

(assert (=> b!1817614 (= lt!706267 (apply!5368 (transformation!3576 rule!559) (seqFromList!2537 lt!706271)))))

(declare-fun lt!706273 () Unit!34554)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!494 (LexerInterface!3205 List!19940 List!19939 List!19939 List!19939 Rule!6952) Unit!34554)

(assert (=> b!1817614 (= lt!706273 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!494 thiss!28068 rules!4538 lt!706271 input!3612 suffix!1667 rule!559))))

(declare-fun b!1817615 () Bool)

(declare-fun rulesValid!1354 (LexerInterface!3205 List!19940) Bool)

(assert (=> b!1817615 (= e!1161359 (rulesValid!1354 thiss!28068 rules!4538))))

(declare-fun b!1817616 () Bool)

(declare-fun res!817243 () Bool)

(assert (=> b!1817616 (=> (not res!817243) (not e!1161361))))

(declare-fun rulesInvariant!2874 (LexerInterface!3205 List!19940) Bool)

(assert (=> b!1817616 (= res!817243 (rulesInvariant!2874 thiss!28068 rules!4538))))

(assert (=> b!1817617 (= e!1161348 (and tp!513559 tp!513549))))

(assert (= (and start!179860 res!817245) b!1817603))

(assert (= (and b!1817603 res!817244) b!1817616))

(assert (= (and b!1817616 res!817243) b!1817613))

(assert (= (and b!1817613 res!817250) b!1817612))

(assert (= (and b!1817612 res!817249) b!1817604))

(assert (= (and b!1817604 res!817247) b!1817611))

(assert (= (and b!1817611 res!817251) b!1817601))

(assert (= (and b!1817601 (not res!817246)) b!1817614))

(assert (= (and b!1817614 (not res!817248)) b!1817615))

(assert (= (and start!179860 (is-Cons!19869 suffix!1667)) b!1817610))

(assert (= b!1817600 b!1817617))

(assert (= b!1817602 b!1817600))

(assert (= (and start!179860 (is-Cons!19870 rules!4538)) b!1817602))

(assert (= b!1817608 b!1817605))

(assert (= b!1817599 b!1817608))

(assert (= start!179860 b!1817599))

(assert (= b!1817606 b!1817609))

(assert (= start!179860 b!1817606))

(assert (= (and start!179860 (is-Cons!19869 input!3612)) b!1817607))

(declare-fun m!2246885 () Bool)

(assert (=> b!1817616 m!2246885))

(declare-fun m!2246887 () Bool)

(assert (=> b!1817615 m!2246887))

(declare-fun m!2246889 () Bool)

(assert (=> b!1817611 m!2246889))

(declare-fun m!2246891 () Bool)

(assert (=> b!1817611 m!2246891))

(assert (=> b!1817611 m!2246891))

(declare-fun m!2246893 () Bool)

(assert (=> b!1817611 m!2246893))

(declare-fun m!2246895 () Bool)

(assert (=> b!1817613 m!2246895))

(declare-fun m!2246897 () Bool)

(assert (=> b!1817608 m!2246897))

(declare-fun m!2246899 () Bool)

(assert (=> b!1817608 m!2246899))

(declare-fun m!2246901 () Bool)

(assert (=> b!1817601 m!2246901))

(declare-fun m!2246903 () Bool)

(assert (=> b!1817601 m!2246903))

(declare-fun m!2246905 () Bool)

(assert (=> b!1817601 m!2246905))

(declare-fun m!2246907 () Bool)

(assert (=> start!179860 m!2246907))

(declare-fun m!2246909 () Bool)

(assert (=> b!1817603 m!2246909))

(declare-fun m!2246911 () Bool)

(assert (=> b!1817599 m!2246911))

(declare-fun m!2246913 () Bool)

(assert (=> b!1817606 m!2246913))

(declare-fun m!2246915 () Bool)

(assert (=> b!1817606 m!2246915))

(declare-fun m!2246917 () Bool)

(assert (=> b!1817600 m!2246917))

(declare-fun m!2246919 () Bool)

(assert (=> b!1817600 m!2246919))

(declare-fun m!2246921 () Bool)

(assert (=> b!1817614 m!2246921))

(declare-fun m!2246923 () Bool)

(assert (=> b!1817614 m!2246923))

(assert (=> b!1817614 m!2246921))

(declare-fun m!2246925 () Bool)

(assert (=> b!1817614 m!2246925))

(declare-fun m!2246927 () Bool)

(assert (=> b!1817614 m!2246927))

(declare-fun m!2246929 () Bool)

(assert (=> b!1817614 m!2246929))

(declare-fun m!2246931 () Bool)

(assert (=> b!1817612 m!2246931))

(push 1)

(assert (not b!1817614))

(assert (not b_next!50981))

(assert (not b!1817613))

(assert (not b!1817600))

(assert (not b!1817610))

(assert (not b_next!50977))

(assert b_and!140773)

(assert (not b!1817606))

(assert (not b_next!50979))

(assert (not b!1817615))

(assert (not b_next!50971))

(assert b_and!140775)

(assert (not b!1817601))

(assert (not b!1817603))

(assert (not b!1817611))

(assert b_and!140783)

(assert (not b_next!50975))

(assert (not start!179860))

(assert (not b!1817616))

(assert (not b!1817602))

(assert (not b!1817612))

(assert (not b!1817599))

(assert tp_is_empty!8043)

(assert (not b_next!50973))

(assert b_and!140779)

(assert (not b!1817608))

(assert b_and!140777)

(assert (not b!1817607))

(assert b_and!140781)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!50981))

(assert (not b_next!50977))

(assert b_and!140773)

(assert b_and!140777)

(assert (not b_next!50979))

(assert b_and!140781)

(assert (not b_next!50971))

(assert b_and!140775)

(assert b_and!140783)

(assert (not b_next!50975))

(assert (not b_next!50973))

(assert b_and!140779)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!557215 () Bool)

(assert (=> d!557215 (= (inv!25898 (tag!3990 (rule!5686 token!556))) (= (mod (str.len (value!111583 (tag!3990 (rule!5686 token!556)))) 2) 0))))

(assert (=> b!1817608 d!557215))

(declare-fun d!557217 () Bool)

(declare-fun res!817285 () Bool)

(declare-fun e!1161421 () Bool)

(assert (=> d!557217 (=> (not res!817285) (not e!1161421))))

(declare-fun semiInverseModEq!1429 (Int Int) Bool)

(assert (=> d!557217 (= res!817285 (semiInverseModEq!1429 (toChars!4970 (transformation!3576 (rule!5686 token!556))) (toValue!5111 (transformation!3576 (rule!5686 token!556)))))))

(assert (=> d!557217 (= (inv!25901 (transformation!3576 (rule!5686 token!556))) e!1161421)))

(declare-fun b!1817677 () Bool)

(declare-fun equivClasses!1370 (Int Int) Bool)

(assert (=> b!1817677 (= e!1161421 (equivClasses!1370 (toChars!4970 (transformation!3576 (rule!5686 token!556))) (toValue!5111 (transformation!3576 (rule!5686 token!556)))))))

(assert (= (and d!557217 res!817285) b!1817677))

(declare-fun m!2246981 () Bool)

(assert (=> d!557217 m!2246981))

(declare-fun m!2246983 () Bool)

(assert (=> b!1817677 m!2246983))

(assert (=> b!1817608 d!557217))

(declare-fun b!1817688 () Bool)

(declare-fun e!1161429 () Bool)

(declare-fun inv!15 (TokenValue!3666) Bool)

(assert (=> b!1817688 (= e!1161429 (inv!15 (value!111584 token!556)))))

(declare-fun b!1817689 () Bool)

(declare-fun e!1161428 () Bool)

(declare-fun e!1161430 () Bool)

(assert (=> b!1817689 (= e!1161428 e!1161430)))

(declare-fun c!296759 () Bool)

(assert (=> b!1817689 (= c!296759 (is-IntegerValue!10999 (value!111584 token!556)))))

(declare-fun d!557221 () Bool)

(declare-fun c!296758 () Bool)

(assert (=> d!557221 (= c!296758 (is-IntegerValue!10998 (value!111584 token!556)))))

(assert (=> d!557221 (= (inv!21 (value!111584 token!556)) e!1161428)))

(declare-fun b!1817690 () Bool)

(declare-fun inv!17 (TokenValue!3666) Bool)

(assert (=> b!1817690 (= e!1161430 (inv!17 (value!111584 token!556)))))

(declare-fun b!1817691 () Bool)

(declare-fun res!817288 () Bool)

(assert (=> b!1817691 (=> res!817288 e!1161429)))

(assert (=> b!1817691 (= res!817288 (not (is-IntegerValue!11000 (value!111584 token!556))))))

(assert (=> b!1817691 (= e!1161430 e!1161429)))

(declare-fun b!1817692 () Bool)

(declare-fun inv!16 (TokenValue!3666) Bool)

(assert (=> b!1817692 (= e!1161428 (inv!16 (value!111584 token!556)))))

(assert (= (and d!557221 c!296758) b!1817692))

(assert (= (and d!557221 (not c!296758)) b!1817689))

(assert (= (and b!1817689 c!296759) b!1817690))

(assert (= (and b!1817689 (not c!296759)) b!1817691))

(assert (= (and b!1817691 (not res!817288)) b!1817688))

(declare-fun m!2246987 () Bool)

(assert (=> b!1817688 m!2246987))

(declare-fun m!2246989 () Bool)

(assert (=> b!1817690 m!2246989))

(declare-fun m!2246991 () Bool)

(assert (=> b!1817692 m!2246991))

(assert (=> b!1817599 d!557221))

(declare-fun d!557225 () Bool)

(declare-fun res!817291 () Bool)

(declare-fun e!1161433 () Bool)

(assert (=> d!557225 (=> (not res!817291) (not e!1161433))))

(assert (=> d!557225 (= res!817291 (rulesValid!1354 thiss!28068 rules!4538))))

(assert (=> d!557225 (= (rulesInvariant!2874 thiss!28068 rules!4538) e!1161433)))

(declare-fun b!1817695 () Bool)

(declare-datatypes ((List!19944 0))(
  ( (Nil!19874) (Cons!19874 (h!25275 String!22664) (t!169689 List!19944)) )
))
(declare-fun noDuplicateTag!1354 (LexerInterface!3205 List!19940 List!19944) Bool)

(assert (=> b!1817695 (= e!1161433 (noDuplicateTag!1354 thiss!28068 rules!4538 Nil!19874))))

(assert (= (and d!557225 res!817291) b!1817695))

(assert (=> d!557225 m!2246887))

(declare-fun m!2246993 () Bool)

(assert (=> b!1817695 m!2246993))

(assert (=> b!1817616 d!557225))

(declare-fun d!557227 () Bool)

(declare-fun res!817296 () Bool)

(declare-fun e!1161436 () Bool)

(assert (=> d!557227 (=> (not res!817296) (not e!1161436))))

(declare-fun isEmpty!12568 (List!19939) Bool)

(assert (=> d!557227 (= res!817296 (not (isEmpty!12568 (originalCharacters!4384 token!556))))))

(assert (=> d!557227 (= (inv!25902 token!556) e!1161436)))

(declare-fun b!1817700 () Bool)

(declare-fun res!817297 () Bool)

(assert (=> b!1817700 (=> (not res!817297) (not e!1161436))))

(declare-fun dynLambda!9898 (Int TokenValue!3666) BalanceConc!13160)

(assert (=> b!1817700 (= res!817297 (= (originalCharacters!4384 token!556) (list!8082 (dynLambda!9898 (toChars!4970 (transformation!3576 (rule!5686 token!556))) (value!111584 token!556)))))))

(declare-fun b!1817701 () Bool)

(assert (=> b!1817701 (= e!1161436 (= (size!15773 token!556) (size!15774 (originalCharacters!4384 token!556))))))

(assert (= (and d!557227 res!817296) b!1817700))

(assert (= (and b!1817700 res!817297) b!1817701))

(declare-fun b_lambda!59977 () Bool)

(assert (=> (not b_lambda!59977) (not b!1817700)))

(declare-fun t!169662 () Bool)

(declare-fun tb!111109 () Bool)

(assert (=> (and b!1817609 (= (toChars!4970 (transformation!3576 rule!559)) (toChars!4970 (transformation!3576 (rule!5686 token!556)))) t!169662) tb!111109))

(declare-fun b!1817706 () Bool)

(declare-fun e!1161439 () Bool)

(declare-fun tp!513601 () Bool)

(declare-fun inv!25905 (Conc!6608) Bool)

(assert (=> b!1817706 (= e!1161439 (and (inv!25905 (c!296749 (dynLambda!9898 (toChars!4970 (transformation!3576 (rule!5686 token!556))) (value!111584 token!556)))) tp!513601))))

(declare-fun result!133464 () Bool)

(declare-fun inv!25906 (BalanceConc!13160) Bool)

(assert (=> tb!111109 (= result!133464 (and (inv!25906 (dynLambda!9898 (toChars!4970 (transformation!3576 (rule!5686 token!556))) (value!111584 token!556))) e!1161439))))

(assert (= tb!111109 b!1817706))

(declare-fun m!2246995 () Bool)

(assert (=> b!1817706 m!2246995))

(declare-fun m!2246997 () Bool)

(assert (=> tb!111109 m!2246997))

(assert (=> b!1817700 t!169662))

(declare-fun b_and!140797 () Bool)

(assert (= b_and!140775 (and (=> t!169662 result!133464) b_and!140797)))

(declare-fun t!169664 () Bool)

(declare-fun tb!111111 () Bool)

(assert (=> (and b!1817605 (= (toChars!4970 (transformation!3576 (rule!5686 token!556))) (toChars!4970 (transformation!3576 (rule!5686 token!556)))) t!169664) tb!111111))

(declare-fun result!133468 () Bool)

(assert (= result!133468 result!133464))

(assert (=> b!1817700 t!169664))

(declare-fun b_and!140799 () Bool)

(assert (= b_and!140779 (and (=> t!169664 result!133468) b_and!140799)))

(declare-fun t!169666 () Bool)

(declare-fun tb!111113 () Bool)

(assert (=> (and b!1817617 (= (toChars!4970 (transformation!3576 (h!25271 rules!4538))) (toChars!4970 (transformation!3576 (rule!5686 token!556)))) t!169666) tb!111113))

(declare-fun result!133470 () Bool)

(assert (= result!133470 result!133464))

(assert (=> b!1817700 t!169666))

(declare-fun b_and!140801 () Bool)

(assert (= b_and!140783 (and (=> t!169666 result!133470) b_and!140801)))

(declare-fun m!2246999 () Bool)

(assert (=> d!557227 m!2246999))

(declare-fun m!2247001 () Bool)

(assert (=> b!1817700 m!2247001))

(assert (=> b!1817700 m!2247001))

(declare-fun m!2247003 () Bool)

(assert (=> b!1817700 m!2247003))

(declare-fun m!2247005 () Bool)

(assert (=> b!1817701 m!2247005))

(assert (=> start!179860 d!557227))

(declare-fun d!557229 () Bool)

(assert (=> d!557229 (= (inv!25898 (tag!3990 rule!559)) (= (mod (str.len (value!111583 (tag!3990 rule!559))) 2) 0))))

(assert (=> b!1817606 d!557229))

(declare-fun d!557231 () Bool)

(declare-fun res!817298 () Bool)

(declare-fun e!1161440 () Bool)

(assert (=> d!557231 (=> (not res!817298) (not e!1161440))))

(assert (=> d!557231 (= res!817298 (semiInverseModEq!1429 (toChars!4970 (transformation!3576 rule!559)) (toValue!5111 (transformation!3576 rule!559))))))

(assert (=> d!557231 (= (inv!25901 (transformation!3576 rule!559)) e!1161440)))

(declare-fun b!1817707 () Bool)

(assert (=> b!1817707 (= e!1161440 (equivClasses!1370 (toChars!4970 (transformation!3576 rule!559)) (toValue!5111 (transformation!3576 rule!559))))))

(assert (= (and d!557231 res!817298) b!1817707))

(declare-fun m!2247007 () Bool)

(assert (=> d!557231 m!2247007))

(declare-fun m!2247009 () Bool)

(assert (=> b!1817707 m!2247009))

(assert (=> b!1817606 d!557231))

(declare-fun d!557233 () Bool)

(declare-fun lt!706297 () Bool)

(declare-fun content!2906 (List!19940) (Set Rule!6952))

(assert (=> d!557233 (= lt!706297 (set.member rule!559 (content!2906 rules!4538)))))

(declare-fun e!1161445 () Bool)

(assert (=> d!557233 (= lt!706297 e!1161445)))

(declare-fun res!817303 () Bool)

(assert (=> d!557233 (=> (not res!817303) (not e!1161445))))

(assert (=> d!557233 (= res!817303 (is-Cons!19870 rules!4538))))

(assert (=> d!557233 (= (contains!3612 rules!4538 rule!559) lt!706297)))

(declare-fun b!1817712 () Bool)

(declare-fun e!1161446 () Bool)

(assert (=> b!1817712 (= e!1161445 e!1161446)))

(declare-fun res!817304 () Bool)

(assert (=> b!1817712 (=> res!817304 e!1161446)))

(assert (=> b!1817712 (= res!817304 (= (h!25271 rules!4538) rule!559))))

(declare-fun b!1817713 () Bool)

(assert (=> b!1817713 (= e!1161446 (contains!3612 (t!169657 rules!4538) rule!559))))

(assert (= (and d!557233 res!817303) b!1817712))

(assert (= (and b!1817712 (not res!817304)) b!1817713))

(declare-fun m!2247011 () Bool)

(assert (=> d!557233 m!2247011))

(declare-fun m!2247013 () Bool)

(assert (=> d!557233 m!2247013))

(declare-fun m!2247015 () Bool)

(assert (=> b!1817713 m!2247015))

(assert (=> b!1817613 d!557233))

(declare-fun d!557235 () Bool)

(declare-fun lt!706300 () Int)

(assert (=> d!557235 (>= lt!706300 0)))

(declare-fun e!1161449 () Int)

(assert (=> d!557235 (= lt!706300 e!1161449)))

(declare-fun c!296762 () Bool)

(assert (=> d!557235 (= c!296762 (is-Nil!19869 lt!706271))))

(assert (=> d!557235 (= (size!15774 lt!706271) lt!706300)))

(declare-fun b!1817718 () Bool)

(assert (=> b!1817718 (= e!1161449 0)))

(declare-fun b!1817719 () Bool)

(assert (=> b!1817719 (= e!1161449 (+ 1 (size!15774 (t!169656 lt!706271))))))

(assert (= (and d!557235 c!296762) b!1817718))

(assert (= (and d!557235 (not c!296762)) b!1817719))

(declare-fun m!2247017 () Bool)

(assert (=> b!1817719 m!2247017))

(assert (=> b!1817614 d!557235))

(declare-fun b!1817738 () Bool)

(declare-fun e!1161461 () Option!4156)

(declare-datatypes ((tuple2!19420 0))(
  ( (tuple2!19421 (_1!11112 List!19939) (_2!11112 List!19939)) )
))
(declare-fun lt!706315 () tuple2!19420)

(declare-fun size!15777 (BalanceConc!13160) Int)

(assert (=> b!1817738 (= e!1161461 (Some!4155 (tuple2!19417 (Token!6707 (apply!5368 (transformation!3576 rule!559) (seqFromList!2537 (_1!11112 lt!706315))) rule!559 (size!15777 (seqFromList!2537 (_1!11112 lt!706315))) (_1!11112 lt!706315)) (_2!11112 lt!706315))))))

(declare-fun lt!706313 () Unit!34554)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!472 (Regex!4904 List!19939) Unit!34554)

(assert (=> b!1817738 (= lt!706313 (longestMatchIsAcceptedByMatchOrIsEmpty!472 (regex!3576 rule!559) input!3612))))

(declare-fun res!817322 () Bool)

(declare-fun findLongestMatchInner!488 (Regex!4904 List!19939 Int List!19939 List!19939 Int) tuple2!19420)

(assert (=> b!1817738 (= res!817322 (isEmpty!12568 (_1!11112 (findLongestMatchInner!488 (regex!3576 rule!559) Nil!19869 (size!15774 Nil!19869) input!3612 input!3612 (size!15774 input!3612)))))))

(declare-fun e!1161459 () Bool)

(assert (=> b!1817738 (=> res!817322 e!1161459)))

(assert (=> b!1817738 e!1161459))

(declare-fun lt!706314 () Unit!34554)

(assert (=> b!1817738 (= lt!706314 lt!706313)))

(declare-fun lt!706311 () Unit!34554)

(declare-fun lemmaSemiInverse!702 (TokenValueInjection!6992 BalanceConc!13160) Unit!34554)

(assert (=> b!1817738 (= lt!706311 (lemmaSemiInverse!702 (transformation!3576 rule!559) (seqFromList!2537 (_1!11112 lt!706315))))))

(declare-fun b!1817739 () Bool)

(declare-fun e!1161458 () Bool)

(declare-fun lt!706312 () Option!4156)

(declare-fun get!6154 (Option!4156) tuple2!19416)

(assert (=> b!1817739 (= e!1161458 (= (size!15773 (_1!11110 (get!6154 lt!706312))) (size!15774 (originalCharacters!4384 (_1!11110 (get!6154 lt!706312))))))))

(declare-fun b!1817740 () Bool)

(declare-fun e!1161460 () Bool)

(assert (=> b!1817740 (= e!1161460 e!1161458)))

(declare-fun res!817320 () Bool)

(assert (=> b!1817740 (=> (not res!817320) (not e!1161458))))

(assert (=> b!1817740 (= res!817320 (matchR!2369 (regex!3576 rule!559) (list!8082 (charsOf!2219 (_1!11110 (get!6154 lt!706312))))))))

(declare-fun b!1817741 () Bool)

(declare-fun res!817325 () Bool)

(assert (=> b!1817741 (=> (not res!817325) (not e!1161458))))

(assert (=> b!1817741 (= res!817325 (= (++!5400 (list!8082 (charsOf!2219 (_1!11110 (get!6154 lt!706312)))) (_2!11110 (get!6154 lt!706312))) input!3612))))

(declare-fun b!1817742 () Bool)

(assert (=> b!1817742 (= e!1161461 None!4155)))

(declare-fun b!1817743 () Bool)

(declare-fun res!817319 () Bool)

(assert (=> b!1817743 (=> (not res!817319) (not e!1161458))))

(assert (=> b!1817743 (= res!817319 (< (size!15774 (_2!11110 (get!6154 lt!706312))) (size!15774 input!3612)))))

(declare-fun b!1817744 () Bool)

(declare-fun res!817323 () Bool)

(assert (=> b!1817744 (=> (not res!817323) (not e!1161458))))

(assert (=> b!1817744 (= res!817323 (= (rule!5686 (_1!11110 (get!6154 lt!706312))) rule!559))))

(declare-fun d!557237 () Bool)

(assert (=> d!557237 e!1161460))

(declare-fun res!817321 () Bool)

(assert (=> d!557237 (=> res!817321 e!1161460)))

(declare-fun isEmpty!12569 (Option!4156) Bool)

(assert (=> d!557237 (= res!817321 (isEmpty!12569 lt!706312))))

(assert (=> d!557237 (= lt!706312 e!1161461)))

(declare-fun c!296765 () Bool)

(assert (=> d!557237 (= c!296765 (isEmpty!12568 (_1!11112 lt!706315)))))

(declare-fun findLongestMatch!415 (Regex!4904 List!19939) tuple2!19420)

(assert (=> d!557237 (= lt!706315 (findLongestMatch!415 (regex!3576 rule!559) input!3612))))

(assert (=> d!557237 (ruleValid!1068 thiss!28068 rule!559)))

(assert (=> d!557237 (= (maxPrefixOneRule!1118 thiss!28068 rule!559 input!3612) lt!706312)))

(declare-fun b!1817745 () Bool)

(declare-fun res!817324 () Bool)

(assert (=> b!1817745 (=> (not res!817324) (not e!1161458))))

(assert (=> b!1817745 (= res!817324 (= (value!111584 (_1!11110 (get!6154 lt!706312))) (apply!5368 (transformation!3576 (rule!5686 (_1!11110 (get!6154 lt!706312)))) (seqFromList!2537 (originalCharacters!4384 (_1!11110 (get!6154 lt!706312)))))))))

(declare-fun b!1817746 () Bool)

(assert (=> b!1817746 (= e!1161459 (matchR!2369 (regex!3576 rule!559) (_1!11112 (findLongestMatchInner!488 (regex!3576 rule!559) Nil!19869 (size!15774 Nil!19869) input!3612 input!3612 (size!15774 input!3612)))))))

(assert (= (and d!557237 c!296765) b!1817742))

(assert (= (and d!557237 (not c!296765)) b!1817738))

(assert (= (and b!1817738 (not res!817322)) b!1817746))

(assert (= (and d!557237 (not res!817321)) b!1817740))

(assert (= (and b!1817740 res!817320) b!1817741))

(assert (= (and b!1817741 res!817325) b!1817743))

(assert (= (and b!1817743 res!817319) b!1817744))

(assert (= (and b!1817744 res!817323) b!1817745))

(assert (= (and b!1817745 res!817324) b!1817739))

(declare-fun m!2247019 () Bool)

(assert (=> b!1817738 m!2247019))

(declare-fun m!2247021 () Bool)

(assert (=> b!1817738 m!2247021))

(declare-fun m!2247023 () Bool)

(assert (=> b!1817738 m!2247023))

(declare-fun m!2247025 () Bool)

(assert (=> b!1817738 m!2247025))

(assert (=> b!1817738 m!2247023))

(declare-fun m!2247027 () Bool)

(assert (=> b!1817738 m!2247027))

(declare-fun m!2247029 () Bool)

(assert (=> b!1817738 m!2247029))

(assert (=> b!1817738 m!2247025))

(declare-fun m!2247031 () Bool)

(assert (=> b!1817738 m!2247031))

(assert (=> b!1817738 m!2247019))

(assert (=> b!1817738 m!2247019))

(declare-fun m!2247033 () Bool)

(assert (=> b!1817738 m!2247033))

(assert (=> b!1817738 m!2247019))

(declare-fun m!2247035 () Bool)

(assert (=> b!1817738 m!2247035))

(declare-fun m!2247037 () Bool)

(assert (=> d!557237 m!2247037))

(declare-fun m!2247039 () Bool)

(assert (=> d!557237 m!2247039))

(declare-fun m!2247041 () Bool)

(assert (=> d!557237 m!2247041))

(assert (=> d!557237 m!2246903))

(declare-fun m!2247043 () Bool)

(assert (=> b!1817740 m!2247043))

(declare-fun m!2247045 () Bool)

(assert (=> b!1817740 m!2247045))

(assert (=> b!1817740 m!2247045))

(declare-fun m!2247047 () Bool)

(assert (=> b!1817740 m!2247047))

(assert (=> b!1817740 m!2247047))

(declare-fun m!2247049 () Bool)

(assert (=> b!1817740 m!2247049))

(assert (=> b!1817745 m!2247043))

(declare-fun m!2247051 () Bool)

(assert (=> b!1817745 m!2247051))

(assert (=> b!1817745 m!2247051))

(declare-fun m!2247053 () Bool)

(assert (=> b!1817745 m!2247053))

(assert (=> b!1817744 m!2247043))

(assert (=> b!1817741 m!2247043))

(assert (=> b!1817741 m!2247045))

(assert (=> b!1817741 m!2247045))

(assert (=> b!1817741 m!2247047))

(assert (=> b!1817741 m!2247047))

(declare-fun m!2247055 () Bool)

(assert (=> b!1817741 m!2247055))

(assert (=> b!1817746 m!2247025))

(assert (=> b!1817746 m!2247023))

(assert (=> b!1817746 m!2247025))

(assert (=> b!1817746 m!2247023))

(assert (=> b!1817746 m!2247027))

(declare-fun m!2247057 () Bool)

(assert (=> b!1817746 m!2247057))

(assert (=> b!1817739 m!2247043))

(declare-fun m!2247059 () Bool)

(assert (=> b!1817739 m!2247059))

(assert (=> b!1817743 m!2247043))

(declare-fun m!2247061 () Bool)

(assert (=> b!1817743 m!2247061))

(assert (=> b!1817743 m!2247023))

(assert (=> b!1817614 d!557237))

(declare-fun d!557239 () Bool)

(assert (=> d!557239 (= (maxPrefixOneRule!1118 thiss!28068 rule!559 input!3612) (Some!4155 (tuple2!19417 (Token!6707 (apply!5368 (transformation!3576 rule!559) (seqFromList!2537 lt!706271)) rule!559 (size!15774 lt!706271) lt!706271) suffix!1667)))))

(declare-fun lt!706318 () Unit!34554)

(declare-fun choose!11456 (LexerInterface!3205 List!19940 List!19939 List!19939 List!19939 Rule!6952) Unit!34554)

(assert (=> d!557239 (= lt!706318 (choose!11456 thiss!28068 rules!4538 lt!706271 input!3612 suffix!1667 rule!559))))

(assert (=> d!557239 (not (isEmpty!12566 rules!4538))))

(assert (=> d!557239 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!494 thiss!28068 rules!4538 lt!706271 input!3612 suffix!1667 rule!559) lt!706318)))

(declare-fun bs!407239 () Bool)

(assert (= bs!407239 d!557239))

(assert (=> bs!407239 m!2246929))

(assert (=> bs!407239 m!2246909))

(declare-fun m!2247063 () Bool)

(assert (=> bs!407239 m!2247063))

(assert (=> bs!407239 m!2246921))

(assert (=> bs!407239 m!2246923))

(assert (=> bs!407239 m!2246921))

(assert (=> bs!407239 m!2246925))

(assert (=> b!1817614 d!557239))

(declare-fun d!557241 () Bool)

(declare-fun fromListB!1159 (List!19939) BalanceConc!13160)

(assert (=> d!557241 (= (seqFromList!2537 lt!706271) (fromListB!1159 lt!706271))))

(declare-fun bs!407240 () Bool)

(assert (= bs!407240 d!557241))

(declare-fun m!2247065 () Bool)

(assert (=> bs!407240 m!2247065))

(assert (=> b!1817614 d!557241))

(declare-fun d!557243 () Bool)

(declare-fun dynLambda!9899 (Int BalanceConc!13160) TokenValue!3666)

(assert (=> d!557243 (= (apply!5368 (transformation!3576 rule!559) (seqFromList!2537 lt!706271)) (dynLambda!9899 (toValue!5111 (transformation!3576 rule!559)) (seqFromList!2537 lt!706271)))))

(declare-fun b_lambda!59979 () Bool)

(assert (=> (not b_lambda!59979) (not d!557243)))

(declare-fun t!169668 () Bool)

(declare-fun tb!111115 () Bool)

(assert (=> (and b!1817609 (= (toValue!5111 (transformation!3576 rule!559)) (toValue!5111 (transformation!3576 rule!559))) t!169668) tb!111115))

(declare-fun result!133472 () Bool)

(assert (=> tb!111115 (= result!133472 (inv!21 (dynLambda!9899 (toValue!5111 (transformation!3576 rule!559)) (seqFromList!2537 lt!706271))))))

(declare-fun m!2247067 () Bool)

(assert (=> tb!111115 m!2247067))

(assert (=> d!557243 t!169668))

(declare-fun b_and!140803 () Bool)

(assert (= b_and!140773 (and (=> t!169668 result!133472) b_and!140803)))

(declare-fun t!169670 () Bool)

(declare-fun tb!111117 () Bool)

(assert (=> (and b!1817605 (= (toValue!5111 (transformation!3576 (rule!5686 token!556))) (toValue!5111 (transformation!3576 rule!559))) t!169670) tb!111117))

(declare-fun result!133476 () Bool)

(assert (= result!133476 result!133472))

(assert (=> d!557243 t!169670))

(declare-fun b_and!140805 () Bool)

(assert (= b_and!140777 (and (=> t!169670 result!133476) b_and!140805)))

(declare-fun tb!111119 () Bool)

(declare-fun t!169672 () Bool)

(assert (=> (and b!1817617 (= (toValue!5111 (transformation!3576 (h!25271 rules!4538))) (toValue!5111 (transformation!3576 rule!559))) t!169672) tb!111119))

(declare-fun result!133478 () Bool)

(assert (= result!133478 result!133472))

(assert (=> d!557243 t!169672))

(declare-fun b_and!140807 () Bool)

(assert (= b_and!140781 (and (=> t!169672 result!133478) b_and!140807)))

(assert (=> d!557243 m!2246921))

(declare-fun m!2247069 () Bool)

(assert (=> d!557243 m!2247069))

(assert (=> b!1817614 d!557243))

(declare-fun d!557245 () Bool)

(assert (=> d!557245 (= (isEmpty!12566 rules!4538) (is-Nil!19870 rules!4538))))

(assert (=> b!1817603 d!557245))

(declare-fun d!557247 () Bool)

(assert (=> d!557247 true))

(declare-fun lt!706374 () Bool)

(declare-fun rulesValidInductive!1223 (LexerInterface!3205 List!19940) Bool)

(assert (=> d!557247 (= lt!706374 (rulesValidInductive!1223 thiss!28068 rules!4538))))

(declare-fun lambda!71105 () Int)

(declare-fun forall!4288 (List!19940 Int) Bool)

(assert (=> d!557247 (= lt!706374 (forall!4288 rules!4538 lambda!71105))))

(assert (=> d!557247 (= (rulesValid!1354 thiss!28068 rules!4538) lt!706374)))

(declare-fun bs!407244 () Bool)

(assert (= bs!407244 d!557247))

(declare-fun m!2247227 () Bool)

(assert (=> bs!407244 m!2247227))

(declare-fun m!2247229 () Bool)

(assert (=> bs!407244 m!2247229))

(assert (=> b!1817615 d!557247))

(declare-fun d!557293 () Bool)

(assert (=> d!557293 (= (inv!25898 (tag!3990 (h!25271 rules!4538))) (= (mod (str.len (value!111583 (tag!3990 (h!25271 rules!4538)))) 2) 0))))

(assert (=> b!1817600 d!557293))

(declare-fun d!557295 () Bool)

(declare-fun res!817427 () Bool)

(declare-fun e!1161551 () Bool)

(assert (=> d!557295 (=> (not res!817427) (not e!1161551))))

(assert (=> d!557295 (= res!817427 (semiInverseModEq!1429 (toChars!4970 (transformation!3576 (h!25271 rules!4538))) (toValue!5111 (transformation!3576 (h!25271 rules!4538)))))))

(assert (=> d!557295 (= (inv!25901 (transformation!3576 (h!25271 rules!4538))) e!1161551)))

(declare-fun b!1817913 () Bool)

(assert (=> b!1817913 (= e!1161551 (equivClasses!1370 (toChars!4970 (transformation!3576 (h!25271 rules!4538))) (toValue!5111 (transformation!3576 (h!25271 rules!4538)))))))

(assert (= (and d!557295 res!817427) b!1817913))

(declare-fun m!2247231 () Bool)

(assert (=> d!557295 m!2247231))

(declare-fun m!2247233 () Bool)

(assert (=> b!1817913 m!2247233))

(assert (=> b!1817600 d!557295))

(declare-fun b!1817922 () Bool)

(declare-fun e!1161556 () List!19939)

(assert (=> b!1817922 (= e!1161556 suffix!1667)))

(declare-fun b!1817925 () Bool)

(declare-fun e!1161557 () Bool)

(declare-fun lt!706377 () List!19939)

(assert (=> b!1817925 (= e!1161557 (or (not (= suffix!1667 Nil!19869)) (= lt!706377 lt!706271)))))

(declare-fun d!557297 () Bool)

(assert (=> d!557297 e!1161557))

(declare-fun res!817432 () Bool)

(assert (=> d!557297 (=> (not res!817432) (not e!1161557))))

(declare-fun content!2907 (List!19939) (Set C!9982))

(assert (=> d!557297 (= res!817432 (= (content!2907 lt!706377) (set.union (content!2907 lt!706271) (content!2907 suffix!1667))))))

(assert (=> d!557297 (= lt!706377 e!1161556)))

(declare-fun c!296795 () Bool)

(assert (=> d!557297 (= c!296795 (is-Nil!19869 lt!706271))))

(assert (=> d!557297 (= (++!5400 lt!706271 suffix!1667) lt!706377)))

(declare-fun b!1817924 () Bool)

(declare-fun res!817433 () Bool)

(assert (=> b!1817924 (=> (not res!817433) (not e!1161557))))

(assert (=> b!1817924 (= res!817433 (= (size!15774 lt!706377) (+ (size!15774 lt!706271) (size!15774 suffix!1667))))))

(declare-fun b!1817923 () Bool)

(assert (=> b!1817923 (= e!1161556 (Cons!19869 (h!25270 lt!706271) (++!5400 (t!169656 lt!706271) suffix!1667)))))

(assert (= (and d!557297 c!296795) b!1817922))

(assert (= (and d!557297 (not c!296795)) b!1817923))

(assert (= (and d!557297 res!817432) b!1817924))

(assert (= (and b!1817924 res!817433) b!1817925))

(declare-fun m!2247235 () Bool)

(assert (=> d!557297 m!2247235))

(declare-fun m!2247237 () Bool)

(assert (=> d!557297 m!2247237))

(declare-fun m!2247239 () Bool)

(assert (=> d!557297 m!2247239))

(declare-fun m!2247241 () Bool)

(assert (=> b!1817924 m!2247241))

(assert (=> b!1817924 m!2246929))

(declare-fun m!2247243 () Bool)

(assert (=> b!1817924 m!2247243))

(declare-fun m!2247245 () Bool)

(assert (=> b!1817923 m!2247245))

(assert (=> b!1817611 d!557297))

(declare-fun d!557299 () Bool)

(declare-fun list!8084 (Conc!6608) List!19939)

(assert (=> d!557299 (= (list!8082 (charsOf!2219 token!556)) (list!8084 (c!296749 (charsOf!2219 token!556))))))

(declare-fun bs!407245 () Bool)

(assert (= bs!407245 d!557299))

(declare-fun m!2247247 () Bool)

(assert (=> bs!407245 m!2247247))

(assert (=> b!1817611 d!557299))

(declare-fun d!557301 () Bool)

(declare-fun lt!706380 () BalanceConc!13160)

(assert (=> d!557301 (= (list!8082 lt!706380) (originalCharacters!4384 token!556))))

(assert (=> d!557301 (= lt!706380 (dynLambda!9898 (toChars!4970 (transformation!3576 (rule!5686 token!556))) (value!111584 token!556)))))

(assert (=> d!557301 (= (charsOf!2219 token!556) lt!706380)))

(declare-fun b_lambda!59987 () Bool)

(assert (=> (not b_lambda!59987) (not d!557301)))

(assert (=> d!557301 t!169662))

(declare-fun b_and!140827 () Bool)

(assert (= b_and!140797 (and (=> t!169662 result!133464) b_and!140827)))

(assert (=> d!557301 t!169664))

(declare-fun b_and!140829 () Bool)

(assert (= b_and!140799 (and (=> t!169664 result!133468) b_and!140829)))

(assert (=> d!557301 t!169666))

(declare-fun b_and!140831 () Bool)

(assert (= b_and!140801 (and (=> t!169666 result!133470) b_and!140831)))

(declare-fun m!2247249 () Bool)

(assert (=> d!557301 m!2247249))

(assert (=> d!557301 m!2247001))

(assert (=> b!1817611 d!557301))

(declare-fun b!1817944 () Bool)

(declare-fun e!1161566 () Option!4156)

(declare-fun lt!706393 () Option!4156)

(declare-fun lt!706392 () Option!4156)

(assert (=> b!1817944 (= e!1161566 (ite (and (is-None!4155 lt!706393) (is-None!4155 lt!706392)) None!4155 (ite (is-None!4155 lt!706392) lt!706393 (ite (is-None!4155 lt!706393) lt!706392 (ite (>= (size!15773 (_1!11110 (v!25684 lt!706393))) (size!15773 (_1!11110 (v!25684 lt!706392)))) lt!706393 lt!706392)))))))

(declare-fun call!114255 () Option!4156)

(assert (=> b!1817944 (= lt!706393 call!114255)))

(assert (=> b!1817944 (= lt!706392 (maxPrefix!1753 thiss!28068 (t!169657 rules!4538) input!3612))))

(declare-fun b!1817945 () Bool)

(declare-fun res!817453 () Bool)

(declare-fun e!1161565 () Bool)

(assert (=> b!1817945 (=> (not res!817453) (not e!1161565))))

(declare-fun lt!706395 () Option!4156)

(assert (=> b!1817945 (= res!817453 (matchR!2369 (regex!3576 (rule!5686 (_1!11110 (get!6154 lt!706395)))) (list!8082 (charsOf!2219 (_1!11110 (get!6154 lt!706395))))))))

(declare-fun b!1817946 () Bool)

(declare-fun res!817448 () Bool)

(assert (=> b!1817946 (=> (not res!817448) (not e!1161565))))

(assert (=> b!1817946 (= res!817448 (= (++!5400 (list!8082 (charsOf!2219 (_1!11110 (get!6154 lt!706395)))) (_2!11110 (get!6154 lt!706395))) input!3612))))

(declare-fun b!1817947 () Bool)

(declare-fun res!817454 () Bool)

(assert (=> b!1817947 (=> (not res!817454) (not e!1161565))))

(assert (=> b!1817947 (= res!817454 (= (value!111584 (_1!11110 (get!6154 lt!706395))) (apply!5368 (transformation!3576 (rule!5686 (_1!11110 (get!6154 lt!706395)))) (seqFromList!2537 (originalCharacters!4384 (_1!11110 (get!6154 lt!706395)))))))))

(declare-fun d!557303 () Bool)

(declare-fun e!1161564 () Bool)

(assert (=> d!557303 e!1161564))

(declare-fun res!817449 () Bool)

(assert (=> d!557303 (=> res!817449 e!1161564)))

(assert (=> d!557303 (= res!817449 (isEmpty!12569 lt!706395))))

(assert (=> d!557303 (= lt!706395 e!1161566)))

(declare-fun c!296798 () Bool)

(assert (=> d!557303 (= c!296798 (and (is-Cons!19870 rules!4538) (is-Nil!19870 (t!169657 rules!4538))))))

(declare-fun lt!706394 () Unit!34554)

(declare-fun lt!706391 () Unit!34554)

(assert (=> d!557303 (= lt!706394 lt!706391)))

(declare-fun isPrefix!1804 (List!19939 List!19939) Bool)

(assert (=> d!557303 (isPrefix!1804 input!3612 input!3612)))

(declare-fun lemmaIsPrefixRefl!1181 (List!19939 List!19939) Unit!34554)

(assert (=> d!557303 (= lt!706391 (lemmaIsPrefixRefl!1181 input!3612 input!3612))))

(assert (=> d!557303 (rulesValidInductive!1223 thiss!28068 rules!4538)))

(assert (=> d!557303 (= (maxPrefix!1753 thiss!28068 rules!4538 input!3612) lt!706395)))

(declare-fun b!1817948 () Bool)

(assert (=> b!1817948 (= e!1161566 call!114255)))

(declare-fun b!1817949 () Bool)

(assert (=> b!1817949 (= e!1161565 (contains!3612 rules!4538 (rule!5686 (_1!11110 (get!6154 lt!706395)))))))

(declare-fun b!1817950 () Bool)

(declare-fun res!817451 () Bool)

(assert (=> b!1817950 (=> (not res!817451) (not e!1161565))))

(assert (=> b!1817950 (= res!817451 (< (size!15774 (_2!11110 (get!6154 lt!706395))) (size!15774 input!3612)))))

(declare-fun b!1817951 () Bool)

(assert (=> b!1817951 (= e!1161564 e!1161565)))

(declare-fun res!817450 () Bool)

(assert (=> b!1817951 (=> (not res!817450) (not e!1161565))))

(declare-fun isDefined!3491 (Option!4156) Bool)

(assert (=> b!1817951 (= res!817450 (isDefined!3491 lt!706395))))

(declare-fun bm!114250 () Bool)

(assert (=> bm!114250 (= call!114255 (maxPrefixOneRule!1118 thiss!28068 (h!25271 rules!4538) input!3612))))

(declare-fun b!1817952 () Bool)

(declare-fun res!817452 () Bool)

(assert (=> b!1817952 (=> (not res!817452) (not e!1161565))))

(assert (=> b!1817952 (= res!817452 (= (list!8082 (charsOf!2219 (_1!11110 (get!6154 lt!706395)))) (originalCharacters!4384 (_1!11110 (get!6154 lt!706395)))))))

(assert (= (and d!557303 c!296798) b!1817948))

(assert (= (and d!557303 (not c!296798)) b!1817944))

(assert (= (or b!1817948 b!1817944) bm!114250))

(assert (= (and d!557303 (not res!817449)) b!1817951))

(assert (= (and b!1817951 res!817450) b!1817952))

(assert (= (and b!1817952 res!817452) b!1817950))

(assert (= (and b!1817950 res!817451) b!1817946))

(assert (= (and b!1817946 res!817448) b!1817947))

(assert (= (and b!1817947 res!817454) b!1817945))

(assert (= (and b!1817945 res!817453) b!1817949))

(declare-fun m!2247251 () Bool)

(assert (=> d!557303 m!2247251))

(declare-fun m!2247253 () Bool)

(assert (=> d!557303 m!2247253))

(declare-fun m!2247255 () Bool)

(assert (=> d!557303 m!2247255))

(assert (=> d!557303 m!2247227))

(declare-fun m!2247257 () Bool)

(assert (=> b!1817951 m!2247257))

(declare-fun m!2247259 () Bool)

(assert (=> b!1817949 m!2247259))

(declare-fun m!2247261 () Bool)

(assert (=> b!1817949 m!2247261))

(assert (=> b!1817945 m!2247259))

(declare-fun m!2247263 () Bool)

(assert (=> b!1817945 m!2247263))

(assert (=> b!1817945 m!2247263))

(declare-fun m!2247265 () Bool)

(assert (=> b!1817945 m!2247265))

(assert (=> b!1817945 m!2247265))

(declare-fun m!2247267 () Bool)

(assert (=> b!1817945 m!2247267))

(assert (=> b!1817946 m!2247259))

(assert (=> b!1817946 m!2247263))

(assert (=> b!1817946 m!2247263))

(assert (=> b!1817946 m!2247265))

(assert (=> b!1817946 m!2247265))

(declare-fun m!2247269 () Bool)

(assert (=> b!1817946 m!2247269))

(assert (=> b!1817947 m!2247259))

(declare-fun m!2247271 () Bool)

(assert (=> b!1817947 m!2247271))

(assert (=> b!1817947 m!2247271))

(declare-fun m!2247273 () Bool)

(assert (=> b!1817947 m!2247273))

(declare-fun m!2247275 () Bool)

(assert (=> bm!114250 m!2247275))

(assert (=> b!1817952 m!2247259))

(assert (=> b!1817952 m!2247263))

(assert (=> b!1817952 m!2247263))

(assert (=> b!1817952 m!2247265))

(declare-fun m!2247277 () Bool)

(assert (=> b!1817944 m!2247277))

(assert (=> b!1817950 m!2247259))

(declare-fun m!2247279 () Bool)

(assert (=> b!1817950 m!2247279))

(assert (=> b!1817950 m!2247023))

(assert (=> b!1817612 d!557303))

(declare-fun b!1817981 () Bool)

(declare-fun e!1161587 () Bool)

(declare-fun derivativeStep!1279 (Regex!4904 C!9982) Regex!4904)

(declare-fun head!4229 (List!19939) C!9982)

(declare-fun tail!2688 (List!19939) List!19939)

(assert (=> b!1817981 (= e!1161587 (matchR!2369 (derivativeStep!1279 (regex!3576 rule!559) (head!4229 lt!706271)) (tail!2688 lt!706271)))))

(declare-fun b!1817982 () Bool)

(declare-fun e!1161586 () Bool)

(declare-fun e!1161582 () Bool)

(assert (=> b!1817982 (= e!1161586 e!1161582)))

(declare-fun res!817474 () Bool)

(assert (=> b!1817982 (=> (not res!817474) (not e!1161582))))

(declare-fun lt!706398 () Bool)

(assert (=> b!1817982 (= res!817474 (not lt!706398))))

(declare-fun b!1817983 () Bool)

(declare-fun e!1161581 () Bool)

(assert (=> b!1817983 (= e!1161581 (not (= (head!4229 lt!706271) (c!296750 (regex!3576 rule!559)))))))

(declare-fun b!1817984 () Bool)

(declare-fun e!1161585 () Bool)

(assert (=> b!1817984 (= e!1161585 (not lt!706398))))

(declare-fun bm!114253 () Bool)

(declare-fun call!114258 () Bool)

(assert (=> bm!114253 (= call!114258 (isEmpty!12568 lt!706271))))

(declare-fun b!1817985 () Bool)

(declare-fun nullable!1514 (Regex!4904) Bool)

(assert (=> b!1817985 (= e!1161587 (nullable!1514 (regex!3576 rule!559)))))

(declare-fun b!1817986 () Bool)

(declare-fun e!1161583 () Bool)

(assert (=> b!1817986 (= e!1161583 (= lt!706398 call!114258))))

(declare-fun b!1817987 () Bool)

(declare-fun res!817477 () Bool)

(declare-fun e!1161584 () Bool)

(assert (=> b!1817987 (=> (not res!817477) (not e!1161584))))

(assert (=> b!1817987 (= res!817477 (isEmpty!12568 (tail!2688 lt!706271)))))

(declare-fun b!1817988 () Bool)

(declare-fun res!817473 () Bool)

(assert (=> b!1817988 (=> res!817473 e!1161586)))

(assert (=> b!1817988 (= res!817473 e!1161584)))

(declare-fun res!817472 () Bool)

(assert (=> b!1817988 (=> (not res!817472) (not e!1161584))))

(assert (=> b!1817988 (= res!817472 lt!706398)))

(declare-fun b!1817990 () Bool)

(declare-fun res!817478 () Bool)

(assert (=> b!1817990 (=> (not res!817478) (not e!1161584))))

(assert (=> b!1817990 (= res!817478 (not call!114258))))

(declare-fun b!1817991 () Bool)

(assert (=> b!1817991 (= e!1161584 (= (head!4229 lt!706271) (c!296750 (regex!3576 rule!559))))))

(declare-fun b!1817992 () Bool)

(declare-fun res!817471 () Bool)

(assert (=> b!1817992 (=> res!817471 e!1161586)))

(assert (=> b!1817992 (= res!817471 (not (is-ElementMatch!4904 (regex!3576 rule!559))))))

(assert (=> b!1817992 (= e!1161585 e!1161586)))

(declare-fun b!1817993 () Bool)

(declare-fun res!817476 () Bool)

(assert (=> b!1817993 (=> res!817476 e!1161581)))

(assert (=> b!1817993 (= res!817476 (not (isEmpty!12568 (tail!2688 lt!706271))))))

(declare-fun b!1817994 () Bool)

(assert (=> b!1817994 (= e!1161583 e!1161585)))

(declare-fun c!296806 () Bool)

(assert (=> b!1817994 (= c!296806 (is-EmptyLang!4904 (regex!3576 rule!559)))))

(declare-fun b!1817989 () Bool)

(assert (=> b!1817989 (= e!1161582 e!1161581)))

(declare-fun res!817475 () Bool)

(assert (=> b!1817989 (=> res!817475 e!1161581)))

(assert (=> b!1817989 (= res!817475 call!114258)))

(declare-fun d!557305 () Bool)

(assert (=> d!557305 e!1161583))

(declare-fun c!296805 () Bool)

(assert (=> d!557305 (= c!296805 (is-EmptyExpr!4904 (regex!3576 rule!559)))))

(assert (=> d!557305 (= lt!706398 e!1161587)))

(declare-fun c!296807 () Bool)

(assert (=> d!557305 (= c!296807 (isEmpty!12568 lt!706271))))

(declare-fun validRegex!1988 (Regex!4904) Bool)

(assert (=> d!557305 (validRegex!1988 (regex!3576 rule!559))))

(assert (=> d!557305 (= (matchR!2369 (regex!3576 rule!559) lt!706271) lt!706398)))

(assert (= (and d!557305 c!296807) b!1817985))

(assert (= (and d!557305 (not c!296807)) b!1817981))

(assert (= (and d!557305 c!296805) b!1817986))

(assert (= (and d!557305 (not c!296805)) b!1817994))

(assert (= (and b!1817994 c!296806) b!1817984))

(assert (= (and b!1817994 (not c!296806)) b!1817992))

(assert (= (and b!1817992 (not res!817471)) b!1817988))

(assert (= (and b!1817988 res!817472) b!1817990))

(assert (= (and b!1817990 res!817478) b!1817987))

(assert (= (and b!1817987 res!817477) b!1817991))

(assert (= (and b!1817988 (not res!817473)) b!1817982))

(assert (= (and b!1817982 res!817474) b!1817989))

(assert (= (and b!1817989 (not res!817475)) b!1817993))

(assert (= (and b!1817993 (not res!817476)) b!1817983))

(assert (= (or b!1817986 b!1817989 b!1817990) bm!114253))

(declare-fun m!2247281 () Bool)

(assert (=> b!1817991 m!2247281))

(assert (=> b!1817981 m!2247281))

(assert (=> b!1817981 m!2247281))

(declare-fun m!2247283 () Bool)

(assert (=> b!1817981 m!2247283))

(declare-fun m!2247285 () Bool)

(assert (=> b!1817981 m!2247285))

(assert (=> b!1817981 m!2247283))

(assert (=> b!1817981 m!2247285))

(declare-fun m!2247287 () Bool)

(assert (=> b!1817981 m!2247287))

(assert (=> b!1817983 m!2247281))

(assert (=> b!1817993 m!2247285))

(assert (=> b!1817993 m!2247285))

(declare-fun m!2247289 () Bool)

(assert (=> b!1817993 m!2247289))

(declare-fun m!2247291 () Bool)

(assert (=> bm!114253 m!2247291))

(assert (=> d!557305 m!2247291))

(declare-fun m!2247293 () Bool)

(assert (=> d!557305 m!2247293))

(assert (=> b!1817987 m!2247285))

(assert (=> b!1817987 m!2247285))

(assert (=> b!1817987 m!2247289))

(declare-fun m!2247295 () Bool)

(assert (=> b!1817985 m!2247295))

(assert (=> b!1817601 d!557305))

(declare-fun d!557307 () Bool)

(declare-fun res!817483 () Bool)

(declare-fun e!1161590 () Bool)

(assert (=> d!557307 (=> (not res!817483) (not e!1161590))))

(assert (=> d!557307 (= res!817483 (validRegex!1988 (regex!3576 rule!559)))))

(assert (=> d!557307 (= (ruleValid!1068 thiss!28068 rule!559) e!1161590)))

(declare-fun b!1817999 () Bool)

(declare-fun res!817484 () Bool)

(assert (=> b!1817999 (=> (not res!817484) (not e!1161590))))

(assert (=> b!1817999 (= res!817484 (not (nullable!1514 (regex!3576 rule!559))))))

(declare-fun b!1818000 () Bool)

(assert (=> b!1818000 (= e!1161590 (not (= (tag!3990 rule!559) (String!22665 ""))))))

(assert (= (and d!557307 res!817483) b!1817999))

(assert (= (and b!1817999 res!817484) b!1818000))

(assert (=> d!557307 m!2247293))

(assert (=> b!1817999 m!2247295))

(assert (=> b!1817601 d!557307))

(declare-fun d!557309 () Bool)

(assert (=> d!557309 (ruleValid!1068 thiss!28068 rule!559)))

(declare-fun lt!706401 () Unit!34554)

(declare-fun choose!11457 (LexerInterface!3205 Rule!6952 List!19940) Unit!34554)

(assert (=> d!557309 (= lt!706401 (choose!11457 thiss!28068 rule!559 rules!4538))))

(assert (=> d!557309 (contains!3612 rules!4538 rule!559)))

(assert (=> d!557309 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!589 thiss!28068 rule!559 rules!4538) lt!706401)))

(declare-fun bs!407246 () Bool)

(assert (= bs!407246 d!557309))

(assert (=> bs!407246 m!2246903))

(declare-fun m!2247297 () Bool)

(assert (=> bs!407246 m!2247297))

(assert (=> bs!407246 m!2246895))

(assert (=> b!1817601 d!557309))

(declare-fun b!1818013 () Bool)

(declare-fun e!1161593 () Bool)

(declare-fun tp!513615 () Bool)

(assert (=> b!1818013 (= e!1161593 tp!513615)))

(assert (=> b!1817608 (= tp!513548 e!1161593)))

(declare-fun b!1818011 () Bool)

(assert (=> b!1818011 (= e!1161593 tp_is_empty!8043)))

(declare-fun b!1818014 () Bool)

(declare-fun tp!513617 () Bool)

(declare-fun tp!513619 () Bool)

(assert (=> b!1818014 (= e!1161593 (and tp!513617 tp!513619))))

(declare-fun b!1818012 () Bool)

(declare-fun tp!513618 () Bool)

(declare-fun tp!513616 () Bool)

(assert (=> b!1818012 (= e!1161593 (and tp!513618 tp!513616))))

(assert (= (and b!1817608 (is-ElementMatch!4904 (regex!3576 (rule!5686 token!556)))) b!1818011))

(assert (= (and b!1817608 (is-Concat!8571 (regex!3576 (rule!5686 token!556)))) b!1818012))

(assert (= (and b!1817608 (is-Star!4904 (regex!3576 (rule!5686 token!556)))) b!1818013))

(assert (= (and b!1817608 (is-Union!4904 (regex!3576 (rule!5686 token!556)))) b!1818014))

(declare-fun b!1818019 () Bool)

(declare-fun e!1161596 () Bool)

(declare-fun tp!513622 () Bool)

(assert (=> b!1818019 (= e!1161596 (and tp_is_empty!8043 tp!513622))))

(assert (=> b!1817610 (= tp!513557 e!1161596)))

(assert (= (and b!1817610 (is-Cons!19869 (t!169656 suffix!1667))) b!1818019))

(declare-fun b!1818020 () Bool)

(declare-fun e!1161597 () Bool)

(declare-fun tp!513623 () Bool)

(assert (=> b!1818020 (= e!1161597 (and tp_is_empty!8043 tp!513623))))

(assert (=> b!1817599 (= tp!513555 e!1161597)))

(assert (= (and b!1817599 (is-Cons!19869 (originalCharacters!4384 token!556))) b!1818020))

(declare-fun b!1818023 () Bool)

(declare-fun e!1161598 () Bool)

(declare-fun tp!513624 () Bool)

(assert (=> b!1818023 (= e!1161598 tp!513624)))

(assert (=> b!1817600 (= tp!513553 e!1161598)))

(declare-fun b!1818021 () Bool)

(assert (=> b!1818021 (= e!1161598 tp_is_empty!8043)))

(declare-fun b!1818024 () Bool)

(declare-fun tp!513626 () Bool)

(declare-fun tp!513628 () Bool)

(assert (=> b!1818024 (= e!1161598 (and tp!513626 tp!513628))))

(declare-fun b!1818022 () Bool)

(declare-fun tp!513627 () Bool)

(declare-fun tp!513625 () Bool)

(assert (=> b!1818022 (= e!1161598 (and tp!513627 tp!513625))))

(assert (= (and b!1817600 (is-ElementMatch!4904 (regex!3576 (h!25271 rules!4538)))) b!1818021))

(assert (= (and b!1817600 (is-Concat!8571 (regex!3576 (h!25271 rules!4538)))) b!1818022))

(assert (= (and b!1817600 (is-Star!4904 (regex!3576 (h!25271 rules!4538)))) b!1818023))

(assert (= (and b!1817600 (is-Union!4904 (regex!3576 (h!25271 rules!4538)))) b!1818024))

(declare-fun b!1818027 () Bool)

(declare-fun e!1161599 () Bool)

(declare-fun tp!513629 () Bool)

(assert (=> b!1818027 (= e!1161599 tp!513629)))

(assert (=> b!1817606 (= tp!513551 e!1161599)))

(declare-fun b!1818025 () Bool)

(assert (=> b!1818025 (= e!1161599 tp_is_empty!8043)))

(declare-fun b!1818028 () Bool)

(declare-fun tp!513631 () Bool)

(declare-fun tp!513633 () Bool)

(assert (=> b!1818028 (= e!1161599 (and tp!513631 tp!513633))))

(declare-fun b!1818026 () Bool)

(declare-fun tp!513632 () Bool)

(declare-fun tp!513630 () Bool)

(assert (=> b!1818026 (= e!1161599 (and tp!513632 tp!513630))))

(assert (= (and b!1817606 (is-ElementMatch!4904 (regex!3576 rule!559))) b!1818025))

(assert (= (and b!1817606 (is-Concat!8571 (regex!3576 rule!559))) b!1818026))

(assert (= (and b!1817606 (is-Star!4904 (regex!3576 rule!559))) b!1818027))

(assert (= (and b!1817606 (is-Union!4904 (regex!3576 rule!559))) b!1818028))

(declare-fun b!1818039 () Bool)

(declare-fun b_free!50291 () Bool)

(declare-fun b_next!50995 () Bool)

(assert (=> b!1818039 (= b_free!50291 (not b_next!50995))))

(declare-fun tb!111133 () Bool)

(declare-fun t!169686 () Bool)

(assert (=> (and b!1818039 (= (toValue!5111 (transformation!3576 (h!25271 (t!169657 rules!4538)))) (toValue!5111 (transformation!3576 rule!559))) t!169686) tb!111133))

(declare-fun result!133502 () Bool)

(assert (= result!133502 result!133472))

(assert (=> d!557243 t!169686))

(declare-fun tp!513643 () Bool)

(declare-fun b_and!140833 () Bool)

(assert (=> b!1818039 (= tp!513643 (and (=> t!169686 result!133502) b_and!140833))))

(declare-fun b_free!50293 () Bool)

(declare-fun b_next!50997 () Bool)

(assert (=> b!1818039 (= b_free!50293 (not b_next!50997))))

(declare-fun tb!111135 () Bool)

(declare-fun t!169688 () Bool)

(assert (=> (and b!1818039 (= (toChars!4970 (transformation!3576 (h!25271 (t!169657 rules!4538)))) (toChars!4970 (transformation!3576 (rule!5686 token!556)))) t!169688) tb!111135))

(declare-fun result!133504 () Bool)

(assert (= result!133504 result!133464))

(assert (=> b!1817700 t!169688))

(assert (=> d!557301 t!169688))

(declare-fun b_and!140835 () Bool)

(declare-fun tp!513642 () Bool)

(assert (=> b!1818039 (= tp!513642 (and (=> t!169688 result!133504) b_and!140835))))

(declare-fun e!1161610 () Bool)

(assert (=> b!1818039 (= e!1161610 (and tp!513643 tp!513642))))

(declare-fun b!1818038 () Bool)

(declare-fun tp!513645 () Bool)

(declare-fun e!1161609 () Bool)

(assert (=> b!1818038 (= e!1161609 (and tp!513645 (inv!25898 (tag!3990 (h!25271 (t!169657 rules!4538)))) (inv!25901 (transformation!3576 (h!25271 (t!169657 rules!4538)))) e!1161610))))

(declare-fun b!1818037 () Bool)

(declare-fun e!1161608 () Bool)

(declare-fun tp!513644 () Bool)

(assert (=> b!1818037 (= e!1161608 (and e!1161609 tp!513644))))

(assert (=> b!1817602 (= tp!513558 e!1161608)))

(assert (= b!1818038 b!1818039))

(assert (= b!1818037 b!1818038))

(assert (= (and b!1817602 (is-Cons!19870 (t!169657 rules!4538))) b!1818037))

(declare-fun m!2247299 () Bool)

(assert (=> b!1818038 m!2247299))

(declare-fun m!2247301 () Bool)

(assert (=> b!1818038 m!2247301))

(declare-fun b!1818040 () Bool)

(declare-fun e!1161612 () Bool)

(declare-fun tp!513646 () Bool)

(assert (=> b!1818040 (= e!1161612 (and tp_is_empty!8043 tp!513646))))

(assert (=> b!1817607 (= tp!513552 e!1161612)))

(assert (= (and b!1817607 (is-Cons!19869 (t!169656 input!3612))) b!1818040))

(declare-fun b_lambda!59989 () Bool)

(assert (= b_lambda!59979 (or (and b!1817609 b_free!50267) (and b!1817605 b_free!50271 (= (toValue!5111 (transformation!3576 (rule!5686 token!556))) (toValue!5111 (transformation!3576 rule!559)))) (and b!1817617 b_free!50275 (= (toValue!5111 (transformation!3576 (h!25271 rules!4538))) (toValue!5111 (transformation!3576 rule!559)))) (and b!1818039 b_free!50291 (= (toValue!5111 (transformation!3576 (h!25271 (t!169657 rules!4538)))) (toValue!5111 (transformation!3576 rule!559)))) b_lambda!59989)))

(declare-fun b_lambda!59991 () Bool)

(assert (= b_lambda!59987 (or (and b!1817609 b_free!50269 (= (toChars!4970 (transformation!3576 rule!559)) (toChars!4970 (transformation!3576 (rule!5686 token!556))))) (and b!1817605 b_free!50273) (and b!1817617 b_free!50277 (= (toChars!4970 (transformation!3576 (h!25271 rules!4538))) (toChars!4970 (transformation!3576 (rule!5686 token!556))))) (and b!1818039 b_free!50293 (= (toChars!4970 (transformation!3576 (h!25271 (t!169657 rules!4538)))) (toChars!4970 (transformation!3576 (rule!5686 token!556))))) b_lambda!59991)))

(declare-fun b_lambda!59993 () Bool)

(assert (= b_lambda!59977 (or (and b!1817609 b_free!50269 (= (toChars!4970 (transformation!3576 rule!559)) (toChars!4970 (transformation!3576 (rule!5686 token!556))))) (and b!1817605 b_free!50273) (and b!1817617 b_free!50277 (= (toChars!4970 (transformation!3576 (h!25271 rules!4538))) (toChars!4970 (transformation!3576 (rule!5686 token!556))))) (and b!1818039 b_free!50293 (= (toChars!4970 (transformation!3576 (h!25271 (t!169657 rules!4538)))) (toChars!4970 (transformation!3576 (rule!5686 token!556))))) b_lambda!59993)))

(push 1)

(assert (not b!1818028))

(assert (not b_next!50977))

(assert (not b!1817713))

(assert (not b!1817740))

(assert (not d!557303))

(assert (not b_next!50971))

(assert (not b_lambda!59993))

(assert (not b!1817949))

(assert (not d!557241))

(assert (not d!557301))

(assert (not bm!114253))

(assert (not b!1818040))

(assert (not b!1817987))

(assert (not b_next!50997))

(assert (not b!1818014))

(assert (not d!557227))

(assert (not b!1817700))

(assert (not d!557309))

(assert (not b!1818024))

(assert (not b_next!50981))

(assert (not b_lambda!59991))

(assert (not d!557225))

(assert (not b!1817947))

(assert (not b!1817999))

(assert b_and!140803)

(assert (not d!557233))

(assert (not b!1817985))

(assert (not b!1818012))

(assert (not b!1817738))

(assert (not b!1818019))

(assert b_and!140829)

(assert (not b!1817946))

(assert (not d!557239))

(assert (not b_next!50975))

(assert (not tb!111109))

(assert (not b!1817924))

(assert b_and!140835)

(assert (not b!1817945))

(assert b_and!140807)

(assert (not b!1818027))

(assert (not b!1818037))

(assert (not b!1817707))

(assert (not b!1817739))

(assert (not b_next!50995))

(assert (not b!1818013))

(assert (not b!1817690))

(assert (not b!1817983))

(assert (not b!1817950))

(assert (not b!1817706))

(assert (not b!1817746))

(assert b_and!140827)

(assert (not d!557231))

(assert (not b!1817741))

(assert (not b!1817991))

(assert (not d!557237))

(assert (not b!1817952))

(assert (not b!1817677))

(assert (not b!1817993))

(assert (not b!1818038))

(assert (not b!1817743))

(assert (not b!1817688))

(assert tp_is_empty!8043)

(assert (not b!1817745))

(assert b_and!140805)

(assert (not d!557307))

(assert (not b!1817744))

(assert (not b_next!50973))

(assert (not b_lambda!59989))

(assert (not b!1817981))

(assert (not b!1817701))

(assert (not b!1818023))

(assert (not b!1817695))

(assert (not d!557305))

(assert b_and!140831)

(assert (not d!557299))

(assert (not b!1817923))

(assert (not b!1817719))

(assert (not d!557217))

(assert (not b!1817944))

(assert (not d!557247))

(assert b_and!140833)

(assert (not b!1818020))

(assert (not b!1817913))

(assert (not b_next!50979))

(assert (not b!1818022))

(assert (not bm!114250))

(assert (not d!557295))

(assert (not b!1818026))

(assert (not d!557297))

(assert (not b!1817692))

(assert (not b!1817951))

(assert (not tb!111115))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!50971))

(assert (not b_next!50997))

(assert (not b_next!50981))

(assert b_and!140803)

(assert b_and!140829)

(assert (not b_next!50975))

(assert (not b_next!50995))

(assert b_and!140827)

(assert b_and!140805)

(assert (not b_next!50973))

(assert (not b_next!50977))

(assert b_and!140831)

(assert b_and!140833)

(assert (not b_next!50979))

(assert b_and!140835)

(assert b_and!140807)

(check-sat)

(pop 1)

