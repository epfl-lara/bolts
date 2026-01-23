; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!392368 () Bool)

(assert start!392368)

(declare-fun b!4132812 () Bool)

(declare-fun b_free!117319 () Bool)

(declare-fun b_next!118023 () Bool)

(assert (=> b!4132812 (= b_free!117319 (not b_next!118023))))

(declare-fun tp!1259707 () Bool)

(declare-fun b_and!320445 () Bool)

(assert (=> b!4132812 (= tp!1259707 b_and!320445)))

(declare-fun b_free!117321 () Bool)

(declare-fun b_next!118025 () Bool)

(assert (=> b!4132812 (= b_free!117321 (not b_next!118025))))

(declare-fun tp!1259702 () Bool)

(declare-fun b_and!320447 () Bool)

(assert (=> b!4132812 (= tp!1259702 b_and!320447)))

(declare-fun b!4132827 () Bool)

(declare-fun b_free!117323 () Bool)

(declare-fun b_next!118027 () Bool)

(assert (=> b!4132827 (= b_free!117323 (not b_next!118027))))

(declare-fun tp!1259705 () Bool)

(declare-fun b_and!320449 () Bool)

(assert (=> b!4132827 (= tp!1259705 b_and!320449)))

(declare-fun b_free!117325 () Bool)

(declare-fun b_next!118029 () Bool)

(assert (=> b!4132827 (= b_free!117325 (not b_next!118029))))

(declare-fun tp!1259703 () Bool)

(declare-fun b_and!320451 () Bool)

(assert (=> b!4132827 (= tp!1259703 b_and!320451)))

(declare-fun b!4132817 () Bool)

(declare-fun b_free!117327 () Bool)

(declare-fun b_next!118031 () Bool)

(assert (=> b!4132817 (= b_free!117327 (not b_next!118031))))

(declare-fun tp!1259706 () Bool)

(declare-fun b_and!320453 () Bool)

(assert (=> b!4132817 (= tp!1259706 b_and!320453)))

(declare-fun b_free!117329 () Bool)

(declare-fun b_next!118033 () Bool)

(assert (=> b!4132817 (= b_free!117329 (not b_next!118033))))

(declare-fun tp!1259701 () Bool)

(declare-fun b_and!320455 () Bool)

(assert (=> b!4132817 (= tp!1259701 b_and!320455)))

(declare-fun b!4132811 () Bool)

(declare-fun e!2564262 () Bool)

(declare-datatypes ((List!44884 0))(
  ( (Nil!44760) (Cons!44760 (h!50180 (_ BitVec 16)) (t!341713 List!44884)) )
))
(declare-datatypes ((TokenValue!7563 0))(
  ( (FloatLiteralValue!15126 (text!53386 List!44884)) (TokenValueExt!7562 (__x!27343 Int)) (Broken!37815 (value!229520 List!44884)) (Object!7686) (End!7563) (Def!7563) (Underscore!7563) (Match!7563) (Else!7563) (Error!7563) (Case!7563) (If!7563) (Extends!7563) (Abstract!7563) (Class!7563) (Val!7563) (DelimiterValue!15126 (del!7623 List!44884)) (KeywordValue!7569 (value!229521 List!44884)) (CommentValue!15126 (value!229522 List!44884)) (WhitespaceValue!15126 (value!229523 List!44884)) (IndentationValue!7563 (value!229524 List!44884)) (String!51566) (Int32!7563) (Broken!37816 (value!229525 List!44884)) (Boolean!7564) (Unit!64081) (OperatorValue!7566 (op!7623 List!44884)) (IdentifierValue!15126 (value!229526 List!44884)) (IdentifierValue!15127 (value!229527 List!44884)) (WhitespaceValue!15127 (value!229528 List!44884)) (True!15126) (False!15126) (Broken!37817 (value!229529 List!44884)) (Broken!37818 (value!229530 List!44884)) (True!15127) (RightBrace!7563) (RightBracket!7563) (Colon!7563) (Null!7563) (Comma!7563) (LeftBracket!7563) (False!15127) (LeftBrace!7563) (ImaginaryLiteralValue!7563 (text!53387 List!44884)) (StringLiteralValue!22689 (value!229531 List!44884)) (EOFValue!7563 (value!229532 List!44884)) (IdentValue!7563 (value!229533 List!44884)) (DelimiterValue!15127 (value!229534 List!44884)) (DedentValue!7563 (value!229535 List!44884)) (NewLineValue!7563 (value!229536 List!44884)) (IntegerValue!22689 (value!229537 (_ BitVec 32)) (text!53388 List!44884)) (IntegerValue!22690 (value!229538 Int) (text!53389 List!44884)) (Times!7563) (Or!7563) (Equal!7563) (Minus!7563) (Broken!37819 (value!229539 List!44884)) (And!7563) (Div!7563) (LessEqual!7563) (Mod!7563) (Concat!19801) (Not!7563) (Plus!7563) (SpaceValue!7563 (value!229540 List!44884)) (IntegerValue!22691 (value!229541 Int) (text!53390 List!44884)) (StringLiteralValue!22690 (text!53391 List!44884)) (FloatLiteralValue!15127 (text!53392 List!44884)) (BytesLiteralValue!7563 (value!229542 List!44884)) (CommentValue!15127 (value!229543 List!44884)) (StringLiteralValue!22691 (value!229544 List!44884)) (ErrorTokenValue!7563 (msg!7624 List!44884)) )
))
(declare-datatypes ((C!24662 0))(
  ( (C!24663 (val!14441 Int)) )
))
(declare-datatypes ((List!44885 0))(
  ( (Nil!44761) (Cons!44761 (h!50181 C!24662) (t!341714 List!44885)) )
))
(declare-datatypes ((IArray!27093 0))(
  ( (IArray!27094 (innerList!13604 List!44885)) )
))
(declare-datatypes ((Conc!13544 0))(
  ( (Node!13544 (left!33521 Conc!13544) (right!33851 Conc!13544) (csize!27318 Int) (cheight!13755 Int)) (Leaf!20926 (xs!16850 IArray!27093) (csize!27319 Int)) (Empty!13544) )
))
(declare-datatypes ((BalanceConc!26682 0))(
  ( (BalanceConc!26683 (c!709003 Conc!13544)) )
))
(declare-datatypes ((String!51567 0))(
  ( (String!51568 (value!229545 String)) )
))
(declare-datatypes ((Regex!12238 0))(
  ( (ElementMatch!12238 (c!709004 C!24662)) (Concat!19802 (regOne!24988 Regex!12238) (regTwo!24988 Regex!12238)) (EmptyExpr!12238) (Star!12238 (reg!12567 Regex!12238)) (EmptyLang!12238) (Union!12238 (regOne!24989 Regex!12238) (regTwo!24989 Regex!12238)) )
))
(declare-datatypes ((TokenValueInjection!14554 0))(
  ( (TokenValueInjection!14555 (toValue!9997 Int) (toChars!9856 Int)) )
))
(declare-datatypes ((Rule!14466 0))(
  ( (Rule!14467 (regex!7333 Regex!12238) (tag!8193 String!51567) (isSeparator!7333 Bool) (transformation!7333 TokenValueInjection!14554)) )
))
(declare-datatypes ((List!44886 0))(
  ( (Nil!44762) (Cons!44762 (h!50182 Rule!14466) (t!341715 List!44886)) )
))
(declare-fun rules!3756 () List!44886)

(declare-fun rBis!149 () Rule!14466)

(declare-fun head!8711 (List!44886) Rule!14466)

(assert (=> b!4132811 (= e!2564262 (= (head!8711 rules!3756) rBis!149))))

(declare-fun e!2564260 () Bool)

(assert (=> b!4132812 (= e!2564260 (and tp!1259707 tp!1259702))))

(declare-fun b!4132813 () Bool)

(declare-fun res!1689635 () Bool)

(declare-fun e!2564261 () Bool)

(assert (=> b!4132813 (=> (not res!1689635) (not e!2564261))))

(declare-datatypes ((LexerInterface!6922 0))(
  ( (LexerInterfaceExt!6919 (__x!27344 Int)) (Lexer!6920) )
))
(declare-fun thiss!25645 () LexerInterface!6922)

(declare-fun rulesInvariant!6219 (LexerInterface!6922 List!44886) Bool)

(assert (=> b!4132813 (= res!1689635 (rulesInvariant!6219 thiss!25645 rules!3756))))

(declare-fun e!2564249 () Bool)

(declare-fun b!4132814 () Bool)

(declare-fun e!2564251 () Bool)

(declare-fun r!4008 () Rule!14466)

(declare-fun tp!1259708 () Bool)

(declare-fun inv!59362 (String!51567) Bool)

(declare-fun inv!59365 (TokenValueInjection!14554) Bool)

(assert (=> b!4132814 (= e!2564249 (and tp!1259708 (inv!59362 (tag!8193 r!4008)) (inv!59365 (transformation!7333 r!4008)) e!2564251))))

(declare-fun b!4132815 () Bool)

(declare-fun res!1689636 () Bool)

(declare-fun e!2564263 () Bool)

(assert (=> b!4132815 (=> (not res!1689636) (not e!2564263))))

(declare-fun ruleValid!3139 (LexerInterface!6922 Rule!14466) Bool)

(assert (=> b!4132815 (= res!1689636 (ruleValid!3139 thiss!25645 r!4008))))

(declare-fun b!4132816 () Bool)

(declare-fun e!2564256 () Bool)

(declare-fun e!2564252 () Bool)

(declare-fun tp!1259712 () Bool)

(assert (=> b!4132816 (= e!2564256 (and e!2564252 tp!1259712))))

(assert (=> b!4132817 (= e!2564251 (and tp!1259706 tp!1259701))))

(declare-fun b!4132818 () Bool)

(declare-fun res!1689639 () Bool)

(assert (=> b!4132818 (=> (not res!1689639) (not e!2564261))))

(declare-fun p!2912 () List!44885)

(declare-fun input!3238 () List!44885)

(declare-fun isPrefix!4268 (List!44885 List!44885) Bool)

(assert (=> b!4132818 (= res!1689639 (isPrefix!4268 p!2912 input!3238))))

(declare-fun b!4132819 () Bool)

(declare-fun res!1689638 () Bool)

(assert (=> b!4132819 (=> (not res!1689638) (not e!2564263))))

(declare-fun getIndex!679 (List!44886 Rule!14466) Int)

(assert (=> b!4132819 (= res!1689638 (< (getIndex!679 rules!3756 rBis!149) (getIndex!679 rules!3756 r!4008)))))

(declare-fun tp!1259710 () Bool)

(declare-fun b!4132820 () Bool)

(declare-fun e!2564253 () Bool)

(declare-fun e!2564255 () Bool)

(assert (=> b!4132820 (= e!2564255 (and tp!1259710 (inv!59362 (tag!8193 rBis!149)) (inv!59365 (transformation!7333 rBis!149)) e!2564253))))

(declare-fun b!4132821 () Bool)

(declare-fun res!1689629 () Bool)

(assert (=> b!4132821 (=> (not res!1689629) (not e!2564263))))

(declare-fun matchR!6067 (Regex!12238 List!44885) Bool)

(assert (=> b!4132821 (= res!1689629 (matchR!6067 (regex!7333 r!4008) p!2912))))

(declare-fun b!4132822 () Bool)

(assert (=> b!4132822 (= e!2564261 e!2564263)))

(declare-fun res!1689637 () Bool)

(assert (=> b!4132822 (=> (not res!1689637) (not e!2564263))))

(declare-fun lt!1473625 () BalanceConc!26682)

(declare-datatypes ((Token!13596 0))(
  ( (Token!13597 (value!229546 TokenValue!7563) (rule!10425 Rule!14466) (size!33131 Int) (originalCharacters!7829 List!44885)) )
))
(declare-datatypes ((tuple2!43172 0))(
  ( (tuple2!43173 (_1!24720 Token!13596) (_2!24720 List!44885)) )
))
(declare-datatypes ((Option!9639 0))(
  ( (None!9638) (Some!9638 (v!40254 tuple2!43172)) )
))
(declare-fun maxPrefix!4112 (LexerInterface!6922 List!44886 List!44885) Option!9639)

(declare-fun apply!10406 (TokenValueInjection!14554 BalanceConc!26682) TokenValue!7563)

(declare-fun size!33132 (List!44885) Int)

(declare-fun getSuffix!2595 (List!44885 List!44885) List!44885)

(assert (=> b!4132822 (= res!1689637 (= (maxPrefix!4112 thiss!25645 rules!3756 input!3238) (Some!9638 (tuple2!43173 (Token!13597 (apply!10406 (transformation!7333 r!4008) lt!1473625) r!4008 (size!33132 p!2912) p!2912) (getSuffix!2595 input!3238 p!2912)))))))

(declare-datatypes ((Unit!64082 0))(
  ( (Unit!64083) )
))
(declare-fun lt!1473623 () Unit!64082)

(declare-fun lemmaSemiInverse!2191 (TokenValueInjection!14554 BalanceConc!26682) Unit!64082)

(assert (=> b!4132822 (= lt!1473623 (lemmaSemiInverse!2191 (transformation!7333 r!4008) lt!1473625))))

(declare-fun seqFromList!5450 (List!44885) BalanceConc!26682)

(assert (=> b!4132822 (= lt!1473625 (seqFromList!5450 p!2912))))

(declare-fun b!4132823 () Bool)

(declare-fun res!1689631 () Bool)

(assert (=> b!4132823 (=> (not res!1689631) (not e!2564261))))

(declare-fun contains!9011 (List!44886 Rule!14466) Bool)

(assert (=> b!4132823 (= res!1689631 (contains!9011 rules!3756 r!4008))))

(declare-fun b!4132824 () Bool)

(declare-fun res!1689633 () Bool)

(assert (=> b!4132824 (=> (not res!1689633) (not e!2564261))))

(declare-fun isEmpty!26654 (List!44886) Bool)

(assert (=> b!4132824 (= res!1689633 (not (isEmpty!26654 rules!3756)))))

(declare-fun b!4132825 () Bool)

(declare-fun res!1689640 () Bool)

(assert (=> b!4132825 (=> (not res!1689640) (not e!2564261))))

(assert (=> b!4132825 (= res!1689640 (contains!9011 rules!3756 rBis!149))))

(declare-fun b!4132826 () Bool)

(declare-fun e!2564254 () Bool)

(declare-fun tp_is_empty!21399 () Bool)

(declare-fun tp!1259711 () Bool)

(assert (=> b!4132826 (= e!2564254 (and tp_is_empty!21399 tp!1259711))))

(assert (=> b!4132827 (= e!2564253 (and tp!1259705 tp!1259703))))

(declare-fun b!4132828 () Bool)

(declare-fun res!1689630 () Bool)

(assert (=> b!4132828 (=> (not res!1689630) (not e!2564261))))

(declare-fun isEmpty!26655 (List!44885) Bool)

(assert (=> b!4132828 (= res!1689630 (not (isEmpty!26655 p!2912)))))

(declare-fun res!1689634 () Bool)

(assert (=> start!392368 (=> (not res!1689634) (not e!2564261))))

(assert (=> start!392368 (= res!1689634 (is-Lexer!6920 thiss!25645))))

(assert (=> start!392368 e!2564261))

(assert (=> start!392368 e!2564256))

(declare-fun e!2564258 () Bool)

(assert (=> start!392368 e!2564258))

(assert (=> start!392368 true))

(assert (=> start!392368 e!2564249))

(assert (=> start!392368 e!2564254))

(assert (=> start!392368 e!2564255))

(declare-fun b!4132829 () Bool)

(declare-fun tp!1259709 () Bool)

(assert (=> b!4132829 (= e!2564252 (and tp!1259709 (inv!59362 (tag!8193 (h!50182 rules!3756))) (inv!59365 (transformation!7333 (h!50182 rules!3756))) e!2564260))))

(declare-fun b!4132830 () Bool)

(assert (=> b!4132830 (= e!2564263 (not e!2564262))))

(declare-fun res!1689632 () Bool)

(assert (=> b!4132830 (=> res!1689632 e!2564262)))

(assert (=> b!4132830 (= res!1689632 (or (not (is-Cons!44762 rules!3756)) (not (= (h!50182 rules!3756) rBis!149)) (= rBis!149 r!4008)))))

(declare-fun lt!1473624 () Unit!64082)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2179 (LexerInterface!6922 Rule!14466 List!44886) Unit!64082)

(assert (=> b!4132830 (= lt!1473624 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2179 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4132830 (ruleValid!3139 thiss!25645 rBis!149)))

(declare-fun lt!1473626 () Unit!64082)

(assert (=> b!4132830 (= lt!1473626 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2179 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4132831 () Bool)

(declare-fun tp!1259704 () Bool)

(assert (=> b!4132831 (= e!2564258 (and tp_is_empty!21399 tp!1259704))))

(assert (= (and start!392368 res!1689634) b!4132818))

(assert (= (and b!4132818 res!1689639) b!4132824))

(assert (= (and b!4132824 res!1689633) b!4132813))

(assert (= (and b!4132813 res!1689635) b!4132823))

(assert (= (and b!4132823 res!1689631) b!4132825))

(assert (= (and b!4132825 res!1689640) b!4132828))

(assert (= (and b!4132828 res!1689630) b!4132822))

(assert (= (and b!4132822 res!1689637) b!4132821))

(assert (= (and b!4132821 res!1689629) b!4132819))

(assert (= (and b!4132819 res!1689638) b!4132815))

(assert (= (and b!4132815 res!1689636) b!4132830))

(assert (= (and b!4132830 (not res!1689632)) b!4132811))

(assert (= b!4132829 b!4132812))

(assert (= b!4132816 b!4132829))

(assert (= (and start!392368 (is-Cons!44762 rules!3756)) b!4132816))

(assert (= (and start!392368 (is-Cons!44761 p!2912)) b!4132831))

(assert (= b!4132814 b!4132817))

(assert (= start!392368 b!4132814))

(assert (= (and start!392368 (is-Cons!44761 input!3238)) b!4132826))

(assert (= b!4132820 b!4132827))

(assert (= start!392368 b!4132820))

(declare-fun m!4729901 () Bool)

(assert (=> b!4132822 m!4729901))

(declare-fun m!4729903 () Bool)

(assert (=> b!4132822 m!4729903))

(declare-fun m!4729905 () Bool)

(assert (=> b!4132822 m!4729905))

(declare-fun m!4729907 () Bool)

(assert (=> b!4132822 m!4729907))

(declare-fun m!4729909 () Bool)

(assert (=> b!4132822 m!4729909))

(declare-fun m!4729911 () Bool)

(assert (=> b!4132822 m!4729911))

(declare-fun m!4729913 () Bool)

(assert (=> b!4132811 m!4729913))

(declare-fun m!4729915 () Bool)

(assert (=> b!4132815 m!4729915))

(declare-fun m!4729917 () Bool)

(assert (=> b!4132824 m!4729917))

(declare-fun m!4729919 () Bool)

(assert (=> b!4132825 m!4729919))

(declare-fun m!4729921 () Bool)

(assert (=> b!4132828 m!4729921))

(declare-fun m!4729923 () Bool)

(assert (=> b!4132820 m!4729923))

(declare-fun m!4729925 () Bool)

(assert (=> b!4132820 m!4729925))

(declare-fun m!4729927 () Bool)

(assert (=> b!4132830 m!4729927))

(declare-fun m!4729929 () Bool)

(assert (=> b!4132830 m!4729929))

(declare-fun m!4729931 () Bool)

(assert (=> b!4132830 m!4729931))

(declare-fun m!4729933 () Bool)

(assert (=> b!4132813 m!4729933))

(declare-fun m!4729935 () Bool)

(assert (=> b!4132823 m!4729935))

(declare-fun m!4729937 () Bool)

(assert (=> b!4132818 m!4729937))

(declare-fun m!4729939 () Bool)

(assert (=> b!4132821 m!4729939))

(declare-fun m!4729941 () Bool)

(assert (=> b!4132819 m!4729941))

(declare-fun m!4729943 () Bool)

(assert (=> b!4132819 m!4729943))

(declare-fun m!4729945 () Bool)

(assert (=> b!4132814 m!4729945))

(declare-fun m!4729947 () Bool)

(assert (=> b!4132814 m!4729947))

(declare-fun m!4729949 () Bool)

(assert (=> b!4132829 m!4729949))

(declare-fun m!4729951 () Bool)

(assert (=> b!4132829 m!4729951))

(push 1)

(assert (not b!4132820))

(assert b_and!320451)

(assert (not b!4132822))

(assert (not b!4132831))

(assert (not b!4132829))

(assert (not b!4132819))

(assert b_and!320445)

(assert (not b!4132830))

(assert (not b!4132816))

(assert b_and!320455)

(assert (not b_next!118027))

(assert (not b!4132811))

(assert (not b!4132821))

(assert (not b!4132828))

(assert (not b!4132814))

(assert (not b!4132813))

(assert (not b!4132818))

(assert b_and!320449)

(assert (not b!4132815))

(assert (not b!4132826))

(assert (not b_next!118025))

(assert (not b!4132823))

(assert (not b_next!118023))

(assert (not b!4132825))

(assert b_and!320447)

(assert (not b!4132824))

(assert (not b_next!118033))

(assert tp_is_empty!21399)

(assert b_and!320453)

(assert (not b_next!118031))

(assert (not b_next!118029))

(check-sat)

(pop 1)

(push 1)

(assert b_and!320451)

(assert b_and!320449)

(assert b_and!320445)

(assert (not b_next!118025))

(assert b_and!320455)

(assert (not b_next!118023))

(assert (not b_next!118027))

(assert b_and!320447)

(assert (not b_next!118033))

(assert b_and!320453)

(assert (not b_next!118031))

(assert (not b_next!118029))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1224254 () Bool)

(assert (=> d!1224254 (= (isEmpty!26655 p!2912) (is-Nil!44761 p!2912))))

(assert (=> b!4132828 d!1224254))

(declare-fun b!4132904 () Bool)

(declare-fun res!1689692 () Bool)

(declare-fun e!2564316 () Bool)

(assert (=> b!4132904 (=> (not res!1689692) (not e!2564316))))

(declare-fun head!8713 (List!44885) C!24662)

(assert (=> b!4132904 (= res!1689692 (= (head!8713 p!2912) (head!8713 input!3238)))))

(declare-fun b!4132903 () Bool)

(declare-fun e!2564315 () Bool)

(assert (=> b!4132903 (= e!2564315 e!2564316)))

(declare-fun res!1689693 () Bool)

(assert (=> b!4132903 (=> (not res!1689693) (not e!2564316))))

(assert (=> b!4132903 (= res!1689693 (not (is-Nil!44761 input!3238)))))

(declare-fun d!1224256 () Bool)

(declare-fun e!2564317 () Bool)

(assert (=> d!1224256 e!2564317))

(declare-fun res!1689695 () Bool)

(assert (=> d!1224256 (=> res!1689695 e!2564317)))

(declare-fun lt!1473641 () Bool)

(assert (=> d!1224256 (= res!1689695 (not lt!1473641))))

(assert (=> d!1224256 (= lt!1473641 e!2564315)))

(declare-fun res!1689694 () Bool)

(assert (=> d!1224256 (=> res!1689694 e!2564315)))

(assert (=> d!1224256 (= res!1689694 (is-Nil!44761 p!2912))))

(assert (=> d!1224256 (= (isPrefix!4268 p!2912 input!3238) lt!1473641)))

(declare-fun b!4132906 () Bool)

(assert (=> b!4132906 (= e!2564317 (>= (size!33132 input!3238) (size!33132 p!2912)))))

(declare-fun b!4132905 () Bool)

(declare-fun tail!6484 (List!44885) List!44885)

(assert (=> b!4132905 (= e!2564316 (isPrefix!4268 (tail!6484 p!2912) (tail!6484 input!3238)))))

(assert (= (and d!1224256 (not res!1689694)) b!4132903))

(assert (= (and b!4132903 res!1689693) b!4132904))

(assert (= (and b!4132904 res!1689692) b!4132905))

(assert (= (and d!1224256 (not res!1689695)) b!4132906))

(declare-fun m!4730005 () Bool)

(assert (=> b!4132904 m!4730005))

(declare-fun m!4730007 () Bool)

(assert (=> b!4132904 m!4730007))

(declare-fun m!4730009 () Bool)

(assert (=> b!4132906 m!4730009))

(assert (=> b!4132906 m!4729901))

(declare-fun m!4730011 () Bool)

(assert (=> b!4132905 m!4730011))

(declare-fun m!4730013 () Bool)

(assert (=> b!4132905 m!4730013))

(assert (=> b!4132905 m!4730011))

(assert (=> b!4132905 m!4730013))

(declare-fun m!4730015 () Bool)

(assert (=> b!4132905 m!4730015))

(assert (=> b!4132818 d!1224256))

(declare-fun d!1224258 () Bool)

(assert (=> d!1224258 (= (inv!59362 (tag!8193 (h!50182 rules!3756))) (= (mod (str.len (value!229545 (tag!8193 (h!50182 rules!3756)))) 2) 0))))

(assert (=> b!4132829 d!1224258))

(declare-fun d!1224260 () Bool)

(declare-fun res!1689698 () Bool)

(declare-fun e!2564320 () Bool)

(assert (=> d!1224260 (=> (not res!1689698) (not e!2564320))))

(declare-fun semiInverseModEq!3164 (Int Int) Bool)

(assert (=> d!1224260 (= res!1689698 (semiInverseModEq!3164 (toChars!9856 (transformation!7333 (h!50182 rules!3756))) (toValue!9997 (transformation!7333 (h!50182 rules!3756)))))))

(assert (=> d!1224260 (= (inv!59365 (transformation!7333 (h!50182 rules!3756))) e!2564320)))

(declare-fun b!4132909 () Bool)

(declare-fun equivClasses!3063 (Int Int) Bool)

(assert (=> b!4132909 (= e!2564320 (equivClasses!3063 (toChars!9856 (transformation!7333 (h!50182 rules!3756))) (toValue!9997 (transformation!7333 (h!50182 rules!3756)))))))

(assert (= (and d!1224260 res!1689698) b!4132909))

(declare-fun m!4730017 () Bool)

(assert (=> d!1224260 m!4730017))

(declare-fun m!4730019 () Bool)

(assert (=> b!4132909 m!4730019))

(assert (=> b!4132829 d!1224260))

(declare-fun d!1224264 () Bool)

(assert (=> d!1224264 (ruleValid!3139 thiss!25645 r!4008)))

(declare-fun lt!1473644 () Unit!64082)

(declare-fun choose!25256 (LexerInterface!6922 Rule!14466 List!44886) Unit!64082)

(assert (=> d!1224264 (= lt!1473644 (choose!25256 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1224264 (contains!9011 rules!3756 r!4008)))

(assert (=> d!1224264 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2179 thiss!25645 r!4008 rules!3756) lt!1473644)))

(declare-fun bs!595066 () Bool)

(assert (= bs!595066 d!1224264))

(assert (=> bs!595066 m!4729915))

(declare-fun m!4730021 () Bool)

(assert (=> bs!595066 m!4730021))

(assert (=> bs!595066 m!4729935))

(assert (=> b!4132830 d!1224264))

(declare-fun d!1224268 () Bool)

(declare-fun res!1689705 () Bool)

(declare-fun e!2564325 () Bool)

(assert (=> d!1224268 (=> (not res!1689705) (not e!2564325))))

(declare-fun validRegex!5509 (Regex!12238) Bool)

(assert (=> d!1224268 (= res!1689705 (validRegex!5509 (regex!7333 rBis!149)))))

(assert (=> d!1224268 (= (ruleValid!3139 thiss!25645 rBis!149) e!2564325)))

(declare-fun b!4132916 () Bool)

(declare-fun res!1689706 () Bool)

(assert (=> b!4132916 (=> (not res!1689706) (not e!2564325))))

(declare-fun nullable!4301 (Regex!12238) Bool)

(assert (=> b!4132916 (= res!1689706 (not (nullable!4301 (regex!7333 rBis!149))))))

(declare-fun b!4132917 () Bool)

(assert (=> b!4132917 (= e!2564325 (not (= (tag!8193 rBis!149) (String!51568 ""))))))

(assert (= (and d!1224268 res!1689705) b!4132916))

(assert (= (and b!4132916 res!1689706) b!4132917))

(declare-fun m!4730023 () Bool)

(assert (=> d!1224268 m!4730023))

(declare-fun m!4730025 () Bool)

(assert (=> b!4132916 m!4730025))

(assert (=> b!4132830 d!1224268))

(declare-fun d!1224270 () Bool)

(assert (=> d!1224270 (ruleValid!3139 thiss!25645 rBis!149)))

(declare-fun lt!1473645 () Unit!64082)

(assert (=> d!1224270 (= lt!1473645 (choose!25256 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1224270 (contains!9011 rules!3756 rBis!149)))

(assert (=> d!1224270 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2179 thiss!25645 rBis!149 rules!3756) lt!1473645)))

(declare-fun bs!595067 () Bool)

(assert (= bs!595067 d!1224270))

(assert (=> bs!595067 m!4729929))

(declare-fun m!4730027 () Bool)

(assert (=> bs!595067 m!4730027))

(assert (=> bs!595067 m!4729919))

(assert (=> b!4132830 d!1224270))

(declare-fun d!1224272 () Bool)

(declare-fun lt!1473650 () Int)

(assert (=> d!1224272 (>= lt!1473650 0)))

(declare-fun e!2564339 () Int)

(assert (=> d!1224272 (= lt!1473650 e!2564339)))

(declare-fun c!709013 () Bool)

(assert (=> d!1224272 (= c!709013 (and (is-Cons!44762 rules!3756) (= (h!50182 rules!3756) rBis!149)))))

(assert (=> d!1224272 (contains!9011 rules!3756 rBis!149)))

(assert (=> d!1224272 (= (getIndex!679 rules!3756 rBis!149) lt!1473650)))

(declare-fun b!4132936 () Bool)

(declare-fun e!2564338 () Int)

(assert (=> b!4132936 (= e!2564339 e!2564338)))

(declare-fun c!709012 () Bool)

(assert (=> b!4132936 (= c!709012 (and (is-Cons!44762 rules!3756) (not (= (h!50182 rules!3756) rBis!149))))))

(declare-fun b!4132938 () Bool)

(assert (=> b!4132938 (= e!2564338 (- 1))))

(declare-fun b!4132935 () Bool)

(assert (=> b!4132935 (= e!2564339 0)))

(declare-fun b!4132937 () Bool)

(assert (=> b!4132937 (= e!2564338 (+ 1 (getIndex!679 (t!341715 rules!3756) rBis!149)))))

(assert (= (and d!1224272 c!709013) b!4132935))

(assert (= (and d!1224272 (not c!709013)) b!4132936))

(assert (= (and b!4132936 c!709012) b!4132937))

(assert (= (and b!4132936 (not c!709012)) b!4132938))

(assert (=> d!1224272 m!4729919))

(declare-fun m!4730033 () Bool)

(assert (=> b!4132937 m!4730033))

(assert (=> b!4132819 d!1224272))

(declare-fun d!1224276 () Bool)

(declare-fun lt!1473651 () Int)

(assert (=> d!1224276 (>= lt!1473651 0)))

(declare-fun e!2564341 () Int)

(assert (=> d!1224276 (= lt!1473651 e!2564341)))

(declare-fun c!709015 () Bool)

(assert (=> d!1224276 (= c!709015 (and (is-Cons!44762 rules!3756) (= (h!50182 rules!3756) r!4008)))))

(assert (=> d!1224276 (contains!9011 rules!3756 r!4008)))

(assert (=> d!1224276 (= (getIndex!679 rules!3756 r!4008) lt!1473651)))

(declare-fun b!4132940 () Bool)

(declare-fun e!2564340 () Int)

(assert (=> b!4132940 (= e!2564341 e!2564340)))

(declare-fun c!709014 () Bool)

(assert (=> b!4132940 (= c!709014 (and (is-Cons!44762 rules!3756) (not (= (h!50182 rules!3756) r!4008))))))

(declare-fun b!4132942 () Bool)

(assert (=> b!4132942 (= e!2564340 (- 1))))

(declare-fun b!4132939 () Bool)

(assert (=> b!4132939 (= e!2564341 0)))

(declare-fun b!4132941 () Bool)

(assert (=> b!4132941 (= e!2564340 (+ 1 (getIndex!679 (t!341715 rules!3756) r!4008)))))

(assert (= (and d!1224276 c!709015) b!4132939))

(assert (= (and d!1224276 (not c!709015)) b!4132940))

(assert (= (and b!4132940 c!709014) b!4132941))

(assert (= (and b!4132940 (not c!709014)) b!4132942))

(assert (=> d!1224276 m!4729935))

(declare-fun m!4730035 () Bool)

(assert (=> b!4132941 m!4730035))

(assert (=> b!4132819 d!1224276))

(declare-fun d!1224278 () Bool)

(assert (=> d!1224278 (= (inv!59362 (tag!8193 rBis!149)) (= (mod (str.len (value!229545 (tag!8193 rBis!149))) 2) 0))))

(assert (=> b!4132820 d!1224278))

(declare-fun d!1224280 () Bool)

(declare-fun res!1689716 () Bool)

(declare-fun e!2564342 () Bool)

(assert (=> d!1224280 (=> (not res!1689716) (not e!2564342))))

(assert (=> d!1224280 (= res!1689716 (semiInverseModEq!3164 (toChars!9856 (transformation!7333 rBis!149)) (toValue!9997 (transformation!7333 rBis!149))))))

(assert (=> d!1224280 (= (inv!59365 (transformation!7333 rBis!149)) e!2564342)))

(declare-fun b!4132943 () Bool)

(assert (=> b!4132943 (= e!2564342 (equivClasses!3063 (toChars!9856 (transformation!7333 rBis!149)) (toValue!9997 (transformation!7333 rBis!149))))))

(assert (= (and d!1224280 res!1689716) b!4132943))

(declare-fun m!4730037 () Bool)

(assert (=> d!1224280 m!4730037))

(declare-fun m!4730039 () Bool)

(assert (=> b!4132943 m!4730039))

(assert (=> b!4132820 d!1224280))

(declare-fun b!4132977 () Bool)

(declare-fun e!2564365 () Bool)

(declare-fun lt!1473657 () Bool)

(assert (=> b!4132977 (= e!2564365 (not lt!1473657))))

(declare-fun b!4132978 () Bool)

(declare-fun res!1689745 () Bool)

(declare-fun e!2564366 () Bool)

(assert (=> b!4132978 (=> res!1689745 e!2564366)))

(declare-fun e!2564361 () Bool)

(assert (=> b!4132978 (= res!1689745 e!2564361)))

(declare-fun res!1689744 () Bool)

(assert (=> b!4132978 (=> (not res!1689744) (not e!2564361))))

(assert (=> b!4132978 (= res!1689744 lt!1473657)))

(declare-fun b!4132979 () Bool)

(declare-fun res!1689741 () Bool)

(declare-fun e!2564367 () Bool)

(assert (=> b!4132979 (=> res!1689741 e!2564367)))

(assert (=> b!4132979 (= res!1689741 (not (isEmpty!26655 (tail!6484 p!2912))))))

(declare-fun b!4132980 () Bool)

(assert (=> b!4132980 (= e!2564361 (= (head!8713 p!2912) (c!709004 (regex!7333 r!4008))))))

(declare-fun b!4132981 () Bool)

(declare-fun e!2564362 () Bool)

(declare-fun derivativeStep!3696 (Regex!12238 C!24662) Regex!12238)

(assert (=> b!4132981 (= e!2564362 (matchR!6067 (derivativeStep!3696 (regex!7333 r!4008) (head!8713 p!2912)) (tail!6484 p!2912)))))

(declare-fun bm!290366 () Bool)

(declare-fun call!290371 () Bool)

(assert (=> bm!290366 (= call!290371 (isEmpty!26655 p!2912))))

(declare-fun b!4132982 () Bool)

(declare-fun e!2564363 () Bool)

(assert (=> b!4132982 (= e!2564363 (= lt!1473657 call!290371))))

(declare-fun b!4132983 () Bool)

(declare-fun res!1689743 () Bool)

(assert (=> b!4132983 (=> res!1689743 e!2564366)))

(assert (=> b!4132983 (= res!1689743 (not (is-ElementMatch!12238 (regex!7333 r!4008))))))

(assert (=> b!4132983 (= e!2564365 e!2564366)))

(declare-fun d!1224282 () Bool)

(assert (=> d!1224282 e!2564363))

(declare-fun c!709025 () Bool)

(assert (=> d!1224282 (= c!709025 (is-EmptyExpr!12238 (regex!7333 r!4008)))))

(assert (=> d!1224282 (= lt!1473657 e!2564362)))

(declare-fun c!709024 () Bool)

(assert (=> d!1224282 (= c!709024 (isEmpty!26655 p!2912))))

(assert (=> d!1224282 (validRegex!5509 (regex!7333 r!4008))))

(assert (=> d!1224282 (= (matchR!6067 (regex!7333 r!4008) p!2912) lt!1473657)))

(declare-fun b!4132984 () Bool)

(declare-fun e!2564364 () Bool)

(assert (=> b!4132984 (= e!2564366 e!2564364)))

(declare-fun res!1689742 () Bool)

(assert (=> b!4132984 (=> (not res!1689742) (not e!2564364))))

(assert (=> b!4132984 (= res!1689742 (not lt!1473657))))

(declare-fun b!4132985 () Bool)

(assert (=> b!4132985 (= e!2564364 e!2564367)))

(declare-fun res!1689739 () Bool)

(assert (=> b!4132985 (=> res!1689739 e!2564367)))

(assert (=> b!4132985 (= res!1689739 call!290371)))

(declare-fun b!4132986 () Bool)

(declare-fun res!1689740 () Bool)

(assert (=> b!4132986 (=> (not res!1689740) (not e!2564361))))

(assert (=> b!4132986 (= res!1689740 (isEmpty!26655 (tail!6484 p!2912)))))

(declare-fun b!4132987 () Bool)

(assert (=> b!4132987 (= e!2564362 (nullable!4301 (regex!7333 r!4008)))))

(declare-fun b!4132988 () Bool)

(assert (=> b!4132988 (= e!2564363 e!2564365)))

(declare-fun c!709023 () Bool)

(assert (=> b!4132988 (= c!709023 (is-EmptyLang!12238 (regex!7333 r!4008)))))

(declare-fun b!4132989 () Bool)

(assert (=> b!4132989 (= e!2564367 (not (= (head!8713 p!2912) (c!709004 (regex!7333 r!4008)))))))

(declare-fun b!4132990 () Bool)

(declare-fun res!1689738 () Bool)

(assert (=> b!4132990 (=> (not res!1689738) (not e!2564361))))

(assert (=> b!4132990 (= res!1689738 (not call!290371))))

(assert (= (and d!1224282 c!709024) b!4132987))

(assert (= (and d!1224282 (not c!709024)) b!4132981))

(assert (= (and d!1224282 c!709025) b!4132982))

(assert (= (and d!1224282 (not c!709025)) b!4132988))

(assert (= (and b!4132988 c!709023) b!4132977))

(assert (= (and b!4132988 (not c!709023)) b!4132983))

(assert (= (and b!4132983 (not res!1689743)) b!4132978))

(assert (= (and b!4132978 res!1689744) b!4132990))

(assert (= (and b!4132990 res!1689738) b!4132986))

(assert (= (and b!4132986 res!1689740) b!4132980))

(assert (= (and b!4132978 (not res!1689745)) b!4132984))

(assert (= (and b!4132984 res!1689742) b!4132985))

(assert (= (and b!4132985 (not res!1689739)) b!4132979))

(assert (= (and b!4132979 (not res!1689741)) b!4132989))

(assert (= (or b!4132982 b!4132985 b!4132990) bm!290366))

(assert (=> b!4132986 m!4730011))

(assert (=> b!4132986 m!4730011))

(declare-fun m!4730057 () Bool)

(assert (=> b!4132986 m!4730057))

(assert (=> b!4132989 m!4730005))

(assert (=> bm!290366 m!4729921))

(declare-fun m!4730059 () Bool)

(assert (=> b!4132987 m!4730059))

(assert (=> b!4132981 m!4730005))

(assert (=> b!4132981 m!4730005))

(declare-fun m!4730061 () Bool)

(assert (=> b!4132981 m!4730061))

(assert (=> b!4132981 m!4730011))

(assert (=> b!4132981 m!4730061))

(assert (=> b!4132981 m!4730011))

(declare-fun m!4730063 () Bool)

(assert (=> b!4132981 m!4730063))

(assert (=> d!1224282 m!4729921))

(declare-fun m!4730065 () Bool)

(assert (=> d!1224282 m!4730065))

(assert (=> b!4132980 m!4730005))

(assert (=> b!4132979 m!4730011))

(assert (=> b!4132979 m!4730011))

(assert (=> b!4132979 m!4730057))

(assert (=> b!4132821 d!1224282))

(declare-fun b!4132995 () Bool)

(declare-fun e!2564370 () Bool)

(assert (=> b!4132995 (= e!2564370 true)))

(declare-fun d!1224292 () Bool)

(assert (=> d!1224292 e!2564370))

(assert (= d!1224292 b!4132995))

(declare-fun order!23627 () Int)

(declare-fun order!23629 () Int)

(declare-fun lambda!128880 () Int)

(declare-fun dynLambda!19198 (Int Int) Int)

(declare-fun dynLambda!19199 (Int Int) Int)

(assert (=> b!4132995 (< (dynLambda!19198 order!23627 (toValue!9997 (transformation!7333 r!4008))) (dynLambda!19199 order!23629 lambda!128880))))

(declare-fun order!23631 () Int)

(declare-fun dynLambda!19200 (Int Int) Int)

(assert (=> b!4132995 (< (dynLambda!19200 order!23631 (toChars!9856 (transformation!7333 r!4008))) (dynLambda!19199 order!23629 lambda!128880))))

(declare-fun list!16396 (BalanceConc!26682) List!44885)

(declare-fun dynLambda!19201 (Int TokenValue!7563) BalanceConc!26682)

(declare-fun dynLambda!19202 (Int BalanceConc!26682) TokenValue!7563)

(assert (=> d!1224292 (= (list!16396 (dynLambda!19201 (toChars!9856 (transformation!7333 r!4008)) (dynLambda!19202 (toValue!9997 (transformation!7333 r!4008)) lt!1473625))) (list!16396 lt!1473625))))

(declare-fun lt!1473660 () Unit!64082)

(declare-fun ForallOf!947 (Int BalanceConc!26682) Unit!64082)

(assert (=> d!1224292 (= lt!1473660 (ForallOf!947 lambda!128880 lt!1473625))))

(assert (=> d!1224292 (= (lemmaSemiInverse!2191 (transformation!7333 r!4008) lt!1473625) lt!1473660)))

(declare-fun b_lambda!121411 () Bool)

(assert (=> (not b_lambda!121411) (not d!1224292)))

(declare-fun t!341720 () Bool)

(declare-fun tb!248051 () Bool)

(assert (=> (and b!4132812 (= (toChars!9856 (transformation!7333 (h!50182 rules!3756))) (toChars!9856 (transformation!7333 r!4008))) t!341720) tb!248051))

(declare-fun tp!1259751 () Bool)

(declare-fun b!4133000 () Bool)

(declare-fun e!2564373 () Bool)

(declare-fun inv!59367 (Conc!13544) Bool)

(assert (=> b!4133000 (= e!2564373 (and (inv!59367 (c!709003 (dynLambda!19201 (toChars!9856 (transformation!7333 r!4008)) (dynLambda!19202 (toValue!9997 (transformation!7333 r!4008)) lt!1473625)))) tp!1259751))))

(declare-fun result!301508 () Bool)

(declare-fun inv!59368 (BalanceConc!26682) Bool)

(assert (=> tb!248051 (= result!301508 (and (inv!59368 (dynLambda!19201 (toChars!9856 (transformation!7333 r!4008)) (dynLambda!19202 (toValue!9997 (transformation!7333 r!4008)) lt!1473625))) e!2564373))))

(assert (= tb!248051 b!4133000))

(declare-fun m!4730067 () Bool)

(assert (=> b!4133000 m!4730067))

(declare-fun m!4730069 () Bool)

(assert (=> tb!248051 m!4730069))

(assert (=> d!1224292 t!341720))

(declare-fun b_and!320469 () Bool)

(assert (= b_and!320447 (and (=> t!341720 result!301508) b_and!320469)))

(declare-fun t!341722 () Bool)

(declare-fun tb!248053 () Bool)

(assert (=> (and b!4132827 (= (toChars!9856 (transformation!7333 rBis!149)) (toChars!9856 (transformation!7333 r!4008))) t!341722) tb!248053))

(declare-fun result!301512 () Bool)

(assert (= result!301512 result!301508))

(assert (=> d!1224292 t!341722))

(declare-fun b_and!320471 () Bool)

(assert (= b_and!320451 (and (=> t!341722 result!301512) b_and!320471)))

(declare-fun t!341724 () Bool)

(declare-fun tb!248055 () Bool)

(assert (=> (and b!4132817 (= (toChars!9856 (transformation!7333 r!4008)) (toChars!9856 (transformation!7333 r!4008))) t!341724) tb!248055))

(declare-fun result!301514 () Bool)

(assert (= result!301514 result!301508))

(assert (=> d!1224292 t!341724))

(declare-fun b_and!320473 () Bool)

(assert (= b_and!320455 (and (=> t!341724 result!301514) b_and!320473)))

(declare-fun b_lambda!121413 () Bool)

(assert (=> (not b_lambda!121413) (not d!1224292)))

(declare-fun t!341726 () Bool)

(declare-fun tb!248057 () Bool)

(assert (=> (and b!4132812 (= (toValue!9997 (transformation!7333 (h!50182 rules!3756))) (toValue!9997 (transformation!7333 r!4008))) t!341726) tb!248057))

(declare-fun result!301516 () Bool)

(declare-fun inv!21 (TokenValue!7563) Bool)

(assert (=> tb!248057 (= result!301516 (inv!21 (dynLambda!19202 (toValue!9997 (transformation!7333 r!4008)) lt!1473625)))))

(declare-fun m!4730071 () Bool)

(assert (=> tb!248057 m!4730071))

(assert (=> d!1224292 t!341726))

(declare-fun b_and!320475 () Bool)

(assert (= b_and!320445 (and (=> t!341726 result!301516) b_and!320475)))

(declare-fun tb!248059 () Bool)

(declare-fun t!341728 () Bool)

(assert (=> (and b!4132827 (= (toValue!9997 (transformation!7333 rBis!149)) (toValue!9997 (transformation!7333 r!4008))) t!341728) tb!248059))

(declare-fun result!301520 () Bool)

(assert (= result!301520 result!301516))

(assert (=> d!1224292 t!341728))

(declare-fun b_and!320477 () Bool)

(assert (= b_and!320449 (and (=> t!341728 result!301520) b_and!320477)))

(declare-fun t!341730 () Bool)

(declare-fun tb!248061 () Bool)

(assert (=> (and b!4132817 (= (toValue!9997 (transformation!7333 r!4008)) (toValue!9997 (transformation!7333 r!4008))) t!341730) tb!248061))

(declare-fun result!301522 () Bool)

(assert (= result!301522 result!301516))

(assert (=> d!1224292 t!341730))

(declare-fun b_and!320479 () Bool)

(assert (= b_and!320453 (and (=> t!341730 result!301522) b_and!320479)))

(declare-fun m!4730073 () Bool)

(assert (=> d!1224292 m!4730073))

(declare-fun m!4730075 () Bool)

(assert (=> d!1224292 m!4730075))

(declare-fun m!4730077 () Bool)

(assert (=> d!1224292 m!4730077))

(declare-fun m!4730079 () Bool)

(assert (=> d!1224292 m!4730079))

(declare-fun m!4730081 () Bool)

(assert (=> d!1224292 m!4730081))

(assert (=> d!1224292 m!4730077))

(assert (=> d!1224292 m!4730073))

(assert (=> b!4132822 d!1224292))

(declare-fun d!1224294 () Bool)

(assert (=> d!1224294 (= (apply!10406 (transformation!7333 r!4008) lt!1473625) (dynLambda!19202 (toValue!9997 (transformation!7333 r!4008)) lt!1473625))))

(declare-fun b_lambda!121415 () Bool)

(assert (=> (not b_lambda!121415) (not d!1224294)))

(assert (=> d!1224294 t!341726))

(declare-fun b_and!320481 () Bool)

(assert (= b_and!320475 (and (=> t!341726 result!301516) b_and!320481)))

(assert (=> d!1224294 t!341728))

(declare-fun b_and!320483 () Bool)

(assert (= b_and!320477 (and (=> t!341728 result!301520) b_and!320483)))

(assert (=> d!1224294 t!341730))

(declare-fun b_and!320485 () Bool)

(assert (= b_and!320479 (and (=> t!341730 result!301522) b_and!320485)))

(assert (=> d!1224294 m!4730077))

(assert (=> b!4132822 d!1224294))

(declare-fun d!1224296 () Bool)

(declare-fun lt!1473663 () List!44885)

(declare-fun ++!11583 (List!44885 List!44885) List!44885)

(assert (=> d!1224296 (= (++!11583 p!2912 lt!1473663) input!3238)))

(declare-fun e!2564379 () List!44885)

(assert (=> d!1224296 (= lt!1473663 e!2564379)))

(declare-fun c!709029 () Bool)

(assert (=> d!1224296 (= c!709029 (is-Cons!44761 p!2912))))

(assert (=> d!1224296 (>= (size!33132 input!3238) (size!33132 p!2912))))

(assert (=> d!1224296 (= (getSuffix!2595 input!3238 p!2912) lt!1473663)))

(declare-fun b!4133007 () Bool)

(assert (=> b!4133007 (= e!2564379 (getSuffix!2595 (tail!6484 input!3238) (t!341714 p!2912)))))

(declare-fun b!4133008 () Bool)

(assert (=> b!4133008 (= e!2564379 input!3238)))

(assert (= (and d!1224296 c!709029) b!4133007))

(assert (= (and d!1224296 (not c!709029)) b!4133008))

(declare-fun m!4730083 () Bool)

(assert (=> d!1224296 m!4730083))

(assert (=> d!1224296 m!4730009))

(assert (=> d!1224296 m!4729901))

(assert (=> b!4133007 m!4730013))

(assert (=> b!4133007 m!4730013))

(declare-fun m!4730085 () Bool)

(assert (=> b!4133007 m!4730085))

(assert (=> b!4132822 d!1224296))

(declare-fun b!4133027 () Bool)

(declare-fun e!2564386 () Option!9639)

(declare-fun lt!1473677 () Option!9639)

(declare-fun lt!1473674 () Option!9639)

(assert (=> b!4133027 (= e!2564386 (ite (and (is-None!9638 lt!1473677) (is-None!9638 lt!1473674)) None!9638 (ite (is-None!9638 lt!1473674) lt!1473677 (ite (is-None!9638 lt!1473677) lt!1473674 (ite (>= (size!33131 (_1!24720 (v!40254 lt!1473677))) (size!33131 (_1!24720 (v!40254 lt!1473674)))) lt!1473677 lt!1473674)))))))

(declare-fun call!290374 () Option!9639)

(assert (=> b!4133027 (= lt!1473677 call!290374)))

(assert (=> b!4133027 (= lt!1473674 (maxPrefix!4112 thiss!25645 (t!341715 rules!3756) input!3238))))

(declare-fun bm!290369 () Bool)

(declare-fun maxPrefixOneRule!3053 (LexerInterface!6922 Rule!14466 List!44885) Option!9639)

(assert (=> bm!290369 (= call!290374 (maxPrefixOneRule!3053 thiss!25645 (h!50182 rules!3756) input!3238))))

(declare-fun b!4133028 () Bool)

(assert (=> b!4133028 (= e!2564386 call!290374)))

(declare-fun b!4133029 () Bool)

(declare-fun res!1689763 () Bool)

(declare-fun e!2564388 () Bool)

(assert (=> b!4133029 (=> (not res!1689763) (not e!2564388))))

(declare-fun lt!1473675 () Option!9639)

(declare-fun charsOf!4936 (Token!13596) BalanceConc!26682)

(declare-fun get!14599 (Option!9639) tuple2!43172)

(assert (=> b!4133029 (= res!1689763 (= (list!16396 (charsOf!4936 (_1!24720 (get!14599 lt!1473675)))) (originalCharacters!7829 (_1!24720 (get!14599 lt!1473675)))))))

(declare-fun b!4133030 () Bool)

(declare-fun e!2564387 () Bool)

(assert (=> b!4133030 (= e!2564387 e!2564388)))

(declare-fun res!1689765 () Bool)

(assert (=> b!4133030 (=> (not res!1689765) (not e!2564388))))

(declare-fun isDefined!7255 (Option!9639) Bool)

(assert (=> b!4133030 (= res!1689765 (isDefined!7255 lt!1473675))))

(declare-fun b!4133031 () Bool)

(assert (=> b!4133031 (= e!2564388 (contains!9011 rules!3756 (rule!10425 (_1!24720 (get!14599 lt!1473675)))))))

(declare-fun b!4133032 () Bool)

(declare-fun res!1689760 () Bool)

(assert (=> b!4133032 (=> (not res!1689760) (not e!2564388))))

(assert (=> b!4133032 (= res!1689760 (= (++!11583 (list!16396 (charsOf!4936 (_1!24720 (get!14599 lt!1473675)))) (_2!24720 (get!14599 lt!1473675))) input!3238))))

(declare-fun b!4133033 () Bool)

(declare-fun res!1689766 () Bool)

(assert (=> b!4133033 (=> (not res!1689766) (not e!2564388))))

(assert (=> b!4133033 (= res!1689766 (< (size!33132 (_2!24720 (get!14599 lt!1473675))) (size!33132 input!3238)))))

(declare-fun d!1224298 () Bool)

(assert (=> d!1224298 e!2564387))

(declare-fun res!1689761 () Bool)

(assert (=> d!1224298 (=> res!1689761 e!2564387)))

(declare-fun isEmpty!26658 (Option!9639) Bool)

(assert (=> d!1224298 (= res!1689761 (isEmpty!26658 lt!1473675))))

(assert (=> d!1224298 (= lt!1473675 e!2564386)))

(declare-fun c!709032 () Bool)

(assert (=> d!1224298 (= c!709032 (and (is-Cons!44762 rules!3756) (is-Nil!44762 (t!341715 rules!3756))))))

(declare-fun lt!1473676 () Unit!64082)

(declare-fun lt!1473678 () Unit!64082)

(assert (=> d!1224298 (= lt!1473676 lt!1473678)))

(assert (=> d!1224298 (isPrefix!4268 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2761 (List!44885 List!44885) Unit!64082)

(assert (=> d!1224298 (= lt!1473678 (lemmaIsPrefixRefl!2761 input!3238 input!3238))))

(declare-fun rulesValidInductive!2715 (LexerInterface!6922 List!44886) Bool)

(assert (=> d!1224298 (rulesValidInductive!2715 thiss!25645 rules!3756)))

(assert (=> d!1224298 (= (maxPrefix!4112 thiss!25645 rules!3756 input!3238) lt!1473675)))

(declare-fun b!4133034 () Bool)

(declare-fun res!1689762 () Bool)

(assert (=> b!4133034 (=> (not res!1689762) (not e!2564388))))

(assert (=> b!4133034 (= res!1689762 (matchR!6067 (regex!7333 (rule!10425 (_1!24720 (get!14599 lt!1473675)))) (list!16396 (charsOf!4936 (_1!24720 (get!14599 lt!1473675))))))))

(declare-fun b!4133035 () Bool)

(declare-fun res!1689764 () Bool)

(assert (=> b!4133035 (=> (not res!1689764) (not e!2564388))))

(assert (=> b!4133035 (= res!1689764 (= (value!229546 (_1!24720 (get!14599 lt!1473675))) (apply!10406 (transformation!7333 (rule!10425 (_1!24720 (get!14599 lt!1473675)))) (seqFromList!5450 (originalCharacters!7829 (_1!24720 (get!14599 lt!1473675)))))))))

(assert (= (and d!1224298 c!709032) b!4133028))

(assert (= (and d!1224298 (not c!709032)) b!4133027))

(assert (= (or b!4133028 b!4133027) bm!290369))

(assert (= (and d!1224298 (not res!1689761)) b!4133030))

(assert (= (and b!4133030 res!1689765) b!4133029))

(assert (= (and b!4133029 res!1689763) b!4133033))

(assert (= (and b!4133033 res!1689766) b!4133032))

(assert (= (and b!4133032 res!1689760) b!4133035))

(assert (= (and b!4133035 res!1689764) b!4133034))

(assert (= (and b!4133034 res!1689762) b!4133031))

(declare-fun m!4730087 () Bool)

(assert (=> b!4133032 m!4730087))

(declare-fun m!4730089 () Bool)

(assert (=> b!4133032 m!4730089))

(assert (=> b!4133032 m!4730089))

(declare-fun m!4730091 () Bool)

(assert (=> b!4133032 m!4730091))

(assert (=> b!4133032 m!4730091))

(declare-fun m!4730093 () Bool)

(assert (=> b!4133032 m!4730093))

(assert (=> b!4133029 m!4730087))

(assert (=> b!4133029 m!4730089))

(assert (=> b!4133029 m!4730089))

(assert (=> b!4133029 m!4730091))

(declare-fun m!4730095 () Bool)

(assert (=> bm!290369 m!4730095))

(assert (=> b!4133033 m!4730087))

(declare-fun m!4730097 () Bool)

(assert (=> b!4133033 m!4730097))

(assert (=> b!4133033 m!4730009))

(assert (=> b!4133035 m!4730087))

(declare-fun m!4730099 () Bool)

(assert (=> b!4133035 m!4730099))

(assert (=> b!4133035 m!4730099))

(declare-fun m!4730101 () Bool)

(assert (=> b!4133035 m!4730101))

(declare-fun m!4730103 () Bool)

(assert (=> d!1224298 m!4730103))

(declare-fun m!4730105 () Bool)

(assert (=> d!1224298 m!4730105))

(declare-fun m!4730107 () Bool)

(assert (=> d!1224298 m!4730107))

(declare-fun m!4730109 () Bool)

(assert (=> d!1224298 m!4730109))

(declare-fun m!4730111 () Bool)

(assert (=> b!4133027 m!4730111))

(assert (=> b!4133031 m!4730087))

(declare-fun m!4730113 () Bool)

(assert (=> b!4133031 m!4730113))

(assert (=> b!4133034 m!4730087))

(assert (=> b!4133034 m!4730089))

(assert (=> b!4133034 m!4730089))

(assert (=> b!4133034 m!4730091))

(assert (=> b!4133034 m!4730091))

(declare-fun m!4730115 () Bool)

(assert (=> b!4133034 m!4730115))

(declare-fun m!4730117 () Bool)

(assert (=> b!4133030 m!4730117))

(assert (=> b!4132822 d!1224298))

(declare-fun d!1224300 () Bool)

(declare-fun fromListB!2496 (List!44885) BalanceConc!26682)

(assert (=> d!1224300 (= (seqFromList!5450 p!2912) (fromListB!2496 p!2912))))

(declare-fun bs!595068 () Bool)

(assert (= bs!595068 d!1224300))

(declare-fun m!4730119 () Bool)

(assert (=> bs!595068 m!4730119))

(assert (=> b!4132822 d!1224300))

(declare-fun d!1224302 () Bool)

(declare-fun lt!1473681 () Int)

(assert (=> d!1224302 (>= lt!1473681 0)))

(declare-fun e!2564391 () Int)

(assert (=> d!1224302 (= lt!1473681 e!2564391)))

(declare-fun c!709035 () Bool)

(assert (=> d!1224302 (= c!709035 (is-Nil!44761 p!2912))))

(assert (=> d!1224302 (= (size!33132 p!2912) lt!1473681)))

(declare-fun b!4133040 () Bool)

(assert (=> b!4133040 (= e!2564391 0)))

(declare-fun b!4133041 () Bool)

(assert (=> b!4133041 (= e!2564391 (+ 1 (size!33132 (t!341714 p!2912))))))

(assert (= (and d!1224302 c!709035) b!4133040))

(assert (= (and d!1224302 (not c!709035)) b!4133041))

(declare-fun m!4730121 () Bool)

(assert (=> b!4133041 m!4730121))

(assert (=> b!4132822 d!1224302))

(declare-fun d!1224304 () Bool)

(assert (=> d!1224304 (= (head!8711 rules!3756) (h!50182 rules!3756))))

(assert (=> b!4132811 d!1224304))

(declare-fun d!1224306 () Bool)

(declare-fun lt!1473684 () Bool)

(declare-fun content!6905 (List!44886) (Set Rule!14466))

(assert (=> d!1224306 (= lt!1473684 (set.member r!4008 (content!6905 rules!3756)))))

(declare-fun e!2564396 () Bool)

(assert (=> d!1224306 (= lt!1473684 e!2564396)))

(declare-fun res!1689771 () Bool)

(assert (=> d!1224306 (=> (not res!1689771) (not e!2564396))))

(assert (=> d!1224306 (= res!1689771 (is-Cons!44762 rules!3756))))

(assert (=> d!1224306 (= (contains!9011 rules!3756 r!4008) lt!1473684)))

(declare-fun b!4133046 () Bool)

(declare-fun e!2564397 () Bool)

(assert (=> b!4133046 (= e!2564396 e!2564397)))

(declare-fun res!1689772 () Bool)

(assert (=> b!4133046 (=> res!1689772 e!2564397)))

(assert (=> b!4133046 (= res!1689772 (= (h!50182 rules!3756) r!4008))))

(declare-fun b!4133047 () Bool)

(assert (=> b!4133047 (= e!2564397 (contains!9011 (t!341715 rules!3756) r!4008))))

(assert (= (and d!1224306 res!1689771) b!4133046))

(assert (= (and b!4133046 (not res!1689772)) b!4133047))

(declare-fun m!4730123 () Bool)

(assert (=> d!1224306 m!4730123))

(declare-fun m!4730125 () Bool)

(assert (=> d!1224306 m!4730125))

(declare-fun m!4730127 () Bool)

(assert (=> b!4133047 m!4730127))

(assert (=> b!4132823 d!1224306))

(declare-fun d!1224308 () Bool)

(assert (=> d!1224308 (= (isEmpty!26654 rules!3756) (is-Nil!44762 rules!3756))))

(assert (=> b!4132824 d!1224308))

(declare-fun d!1224310 () Bool)

(declare-fun res!1689775 () Bool)

(declare-fun e!2564400 () Bool)

(assert (=> d!1224310 (=> (not res!1689775) (not e!2564400))))

(declare-fun rulesValid!2879 (LexerInterface!6922 List!44886) Bool)

(assert (=> d!1224310 (= res!1689775 (rulesValid!2879 thiss!25645 rules!3756))))

(assert (=> d!1224310 (= (rulesInvariant!6219 thiss!25645 rules!3756) e!2564400)))

(declare-fun b!4133050 () Bool)

(declare-datatypes ((List!44890 0))(
  ( (Nil!44766) (Cons!44766 (h!50186 String!51567) (t!341747 List!44890)) )
))
(declare-fun noDuplicateTag!2962 (LexerInterface!6922 List!44886 List!44890) Bool)

(assert (=> b!4133050 (= e!2564400 (noDuplicateTag!2962 thiss!25645 rules!3756 Nil!44766))))

(assert (= (and d!1224310 res!1689775) b!4133050))

(declare-fun m!4730129 () Bool)

(assert (=> d!1224310 m!4730129))

(declare-fun m!4730131 () Bool)

(assert (=> b!4133050 m!4730131))

(assert (=> b!4132813 d!1224310))

(declare-fun d!1224312 () Bool)

(assert (=> d!1224312 (= (inv!59362 (tag!8193 r!4008)) (= (mod (str.len (value!229545 (tag!8193 r!4008))) 2) 0))))

(assert (=> b!4132814 d!1224312))

(declare-fun d!1224314 () Bool)

(declare-fun res!1689776 () Bool)

(declare-fun e!2564401 () Bool)

(assert (=> d!1224314 (=> (not res!1689776) (not e!2564401))))

(assert (=> d!1224314 (= res!1689776 (semiInverseModEq!3164 (toChars!9856 (transformation!7333 r!4008)) (toValue!9997 (transformation!7333 r!4008))))))

(assert (=> d!1224314 (= (inv!59365 (transformation!7333 r!4008)) e!2564401)))

(declare-fun b!4133051 () Bool)

(assert (=> b!4133051 (= e!2564401 (equivClasses!3063 (toChars!9856 (transformation!7333 r!4008)) (toValue!9997 (transformation!7333 r!4008))))))

(assert (= (and d!1224314 res!1689776) b!4133051))

(declare-fun m!4730133 () Bool)

(assert (=> d!1224314 m!4730133))

(declare-fun m!4730135 () Bool)

(assert (=> b!4133051 m!4730135))

(assert (=> b!4132814 d!1224314))

(declare-fun d!1224316 () Bool)

(declare-fun lt!1473685 () Bool)

(assert (=> d!1224316 (= lt!1473685 (set.member rBis!149 (content!6905 rules!3756)))))

(declare-fun e!2564402 () Bool)

(assert (=> d!1224316 (= lt!1473685 e!2564402)))

(declare-fun res!1689777 () Bool)

(assert (=> d!1224316 (=> (not res!1689777) (not e!2564402))))

(assert (=> d!1224316 (= res!1689777 (is-Cons!44762 rules!3756))))

(assert (=> d!1224316 (= (contains!9011 rules!3756 rBis!149) lt!1473685)))

(declare-fun b!4133052 () Bool)

(declare-fun e!2564403 () Bool)

(assert (=> b!4133052 (= e!2564402 e!2564403)))

(declare-fun res!1689778 () Bool)

(assert (=> b!4133052 (=> res!1689778 e!2564403)))

(assert (=> b!4133052 (= res!1689778 (= (h!50182 rules!3756) rBis!149))))

(declare-fun b!4133053 () Bool)

(assert (=> b!4133053 (= e!2564403 (contains!9011 (t!341715 rules!3756) rBis!149))))

(assert (= (and d!1224316 res!1689777) b!4133052))

(assert (= (and b!4133052 (not res!1689778)) b!4133053))

(assert (=> d!1224316 m!4730123))

(declare-fun m!4730137 () Bool)

(assert (=> d!1224316 m!4730137))

(declare-fun m!4730139 () Bool)

(assert (=> b!4133053 m!4730139))

(assert (=> b!4132825 d!1224316))

(declare-fun d!1224318 () Bool)

(declare-fun res!1689779 () Bool)

(declare-fun e!2564404 () Bool)

(assert (=> d!1224318 (=> (not res!1689779) (not e!2564404))))

(assert (=> d!1224318 (= res!1689779 (validRegex!5509 (regex!7333 r!4008)))))

(assert (=> d!1224318 (= (ruleValid!3139 thiss!25645 r!4008) e!2564404)))

(declare-fun b!4133054 () Bool)

(declare-fun res!1689780 () Bool)

(assert (=> b!4133054 (=> (not res!1689780) (not e!2564404))))

(assert (=> b!4133054 (= res!1689780 (not (nullable!4301 (regex!7333 r!4008))))))

(declare-fun b!4133055 () Bool)

(assert (=> b!4133055 (= e!2564404 (not (= (tag!8193 r!4008) (String!51568 ""))))))

(assert (= (and d!1224318 res!1689779) b!4133054))

(assert (= (and b!4133054 res!1689780) b!4133055))

(assert (=> d!1224318 m!4730065))

(assert (=> b!4133054 m!4730059))

(assert (=> b!4132815 d!1224318))

(declare-fun b!4133067 () Bool)

(declare-fun e!2564407 () Bool)

(declare-fun tp!1259766 () Bool)

(declare-fun tp!1259762 () Bool)

(assert (=> b!4133067 (= e!2564407 (and tp!1259766 tp!1259762))))

(declare-fun b!4133069 () Bool)

(declare-fun tp!1259765 () Bool)

(declare-fun tp!1259763 () Bool)

(assert (=> b!4133069 (= e!2564407 (and tp!1259765 tp!1259763))))

(declare-fun b!4133068 () Bool)

(declare-fun tp!1259764 () Bool)

(assert (=> b!4133068 (= e!2564407 tp!1259764)))

(assert (=> b!4132829 (= tp!1259709 e!2564407)))

(declare-fun b!4133066 () Bool)

(assert (=> b!4133066 (= e!2564407 tp_is_empty!21399)))

(assert (= (and b!4132829 (is-ElementMatch!12238 (regex!7333 (h!50182 rules!3756)))) b!4133066))

(assert (= (and b!4132829 (is-Concat!19802 (regex!7333 (h!50182 rules!3756)))) b!4133067))

(assert (= (and b!4132829 (is-Star!12238 (regex!7333 (h!50182 rules!3756)))) b!4133068))

(assert (= (and b!4132829 (is-Union!12238 (regex!7333 (h!50182 rules!3756)))) b!4133069))

(declare-fun b!4133071 () Bool)

(declare-fun e!2564408 () Bool)

(declare-fun tp!1259771 () Bool)

(declare-fun tp!1259767 () Bool)

(assert (=> b!4133071 (= e!2564408 (and tp!1259771 tp!1259767))))

(declare-fun b!4133073 () Bool)

(declare-fun tp!1259770 () Bool)

(declare-fun tp!1259768 () Bool)

(assert (=> b!4133073 (= e!2564408 (and tp!1259770 tp!1259768))))

(declare-fun b!4133072 () Bool)

(declare-fun tp!1259769 () Bool)

(assert (=> b!4133072 (= e!2564408 tp!1259769)))

(assert (=> b!4132814 (= tp!1259708 e!2564408)))

(declare-fun b!4133070 () Bool)

(assert (=> b!4133070 (= e!2564408 tp_is_empty!21399)))

(assert (= (and b!4132814 (is-ElementMatch!12238 (regex!7333 r!4008))) b!4133070))

(assert (= (and b!4132814 (is-Concat!19802 (regex!7333 r!4008))) b!4133071))

(assert (= (and b!4132814 (is-Star!12238 (regex!7333 r!4008))) b!4133072))

(assert (= (and b!4132814 (is-Union!12238 (regex!7333 r!4008))) b!4133073))

(declare-fun b!4133075 () Bool)

(declare-fun e!2564409 () Bool)

(declare-fun tp!1259776 () Bool)

(declare-fun tp!1259772 () Bool)

(assert (=> b!4133075 (= e!2564409 (and tp!1259776 tp!1259772))))

(declare-fun b!4133077 () Bool)

(declare-fun tp!1259775 () Bool)

(declare-fun tp!1259773 () Bool)

(assert (=> b!4133077 (= e!2564409 (and tp!1259775 tp!1259773))))

(declare-fun b!4133076 () Bool)

(declare-fun tp!1259774 () Bool)

(assert (=> b!4133076 (= e!2564409 tp!1259774)))

(assert (=> b!4132820 (= tp!1259710 e!2564409)))

(declare-fun b!4133074 () Bool)

(assert (=> b!4133074 (= e!2564409 tp_is_empty!21399)))

(assert (= (and b!4132820 (is-ElementMatch!12238 (regex!7333 rBis!149))) b!4133074))

(assert (= (and b!4132820 (is-Concat!19802 (regex!7333 rBis!149))) b!4133075))

(assert (= (and b!4132820 (is-Star!12238 (regex!7333 rBis!149))) b!4133076))

(assert (= (and b!4132820 (is-Union!12238 (regex!7333 rBis!149))) b!4133077))

(declare-fun b!4133082 () Bool)

(declare-fun e!2564412 () Bool)

(declare-fun tp!1259779 () Bool)

(assert (=> b!4133082 (= e!2564412 (and tp_is_empty!21399 tp!1259779))))

(assert (=> b!4132826 (= tp!1259711 e!2564412)))

(assert (= (and b!4132826 (is-Cons!44761 (t!341714 input!3238))) b!4133082))

(declare-fun b!4133083 () Bool)

(declare-fun e!2564413 () Bool)

(declare-fun tp!1259780 () Bool)

(assert (=> b!4133083 (= e!2564413 (and tp_is_empty!21399 tp!1259780))))

(assert (=> b!4132831 (= tp!1259704 e!2564413)))

(assert (= (and b!4132831 (is-Cons!44761 (t!341714 p!2912))) b!4133083))

(declare-fun b!4133094 () Bool)

(declare-fun b_free!117343 () Bool)

(declare-fun b_next!118047 () Bool)

(assert (=> b!4133094 (= b_free!117343 (not b_next!118047))))

(declare-fun tb!248063 () Bool)

(declare-fun t!341732 () Bool)

(assert (=> (and b!4133094 (= (toValue!9997 (transformation!7333 (h!50182 (t!341715 rules!3756)))) (toValue!9997 (transformation!7333 r!4008))) t!341732) tb!248063))

(declare-fun result!301530 () Bool)

(assert (= result!301530 result!301516))

(assert (=> d!1224292 t!341732))

(assert (=> d!1224294 t!341732))

(declare-fun b_and!320487 () Bool)

(declare-fun tp!1259790 () Bool)

(assert (=> b!4133094 (= tp!1259790 (and (=> t!341732 result!301530) b_and!320487))))

(declare-fun b_free!117345 () Bool)

(declare-fun b_next!118049 () Bool)

(assert (=> b!4133094 (= b_free!117345 (not b_next!118049))))

(declare-fun tb!248065 () Bool)

(declare-fun t!341734 () Bool)

(assert (=> (and b!4133094 (= (toChars!9856 (transformation!7333 (h!50182 (t!341715 rules!3756)))) (toChars!9856 (transformation!7333 r!4008))) t!341734) tb!248065))

(declare-fun result!301532 () Bool)

(assert (= result!301532 result!301508))

(assert (=> d!1224292 t!341734))

(declare-fun tp!1259791 () Bool)

(declare-fun b_and!320489 () Bool)

(assert (=> b!4133094 (= tp!1259791 (and (=> t!341734 result!301532) b_and!320489))))

(declare-fun e!2564425 () Bool)

(assert (=> b!4133094 (= e!2564425 (and tp!1259790 tp!1259791))))

(declare-fun b!4133093 () Bool)

(declare-fun e!2564424 () Bool)

(declare-fun tp!1259789 () Bool)

(assert (=> b!4133093 (= e!2564424 (and tp!1259789 (inv!59362 (tag!8193 (h!50182 (t!341715 rules!3756)))) (inv!59365 (transformation!7333 (h!50182 (t!341715 rules!3756)))) e!2564425))))

(declare-fun b!4133092 () Bool)

(declare-fun e!2564422 () Bool)

(declare-fun tp!1259792 () Bool)

(assert (=> b!4133092 (= e!2564422 (and e!2564424 tp!1259792))))

(assert (=> b!4132816 (= tp!1259712 e!2564422)))

(assert (= b!4133093 b!4133094))

(assert (= b!4133092 b!4133093))

(assert (= (and b!4132816 (is-Cons!44762 (t!341715 rules!3756))) b!4133092))

(declare-fun m!4730141 () Bool)

(assert (=> b!4133093 m!4730141))

(declare-fun m!4730143 () Bool)

(assert (=> b!4133093 m!4730143))

(declare-fun b_lambda!121417 () Bool)

(assert (= b_lambda!121411 (or (and b!4132812 b_free!117321 (= (toChars!9856 (transformation!7333 (h!50182 rules!3756))) (toChars!9856 (transformation!7333 r!4008)))) (and b!4132827 b_free!117325 (= (toChars!9856 (transformation!7333 rBis!149)) (toChars!9856 (transformation!7333 r!4008)))) (and b!4132817 b_free!117329) (and b!4133094 b_free!117345 (= (toChars!9856 (transformation!7333 (h!50182 (t!341715 rules!3756)))) (toChars!9856 (transformation!7333 r!4008)))) b_lambda!121417)))

(declare-fun b_lambda!121419 () Bool)

(assert (= b_lambda!121415 (or (and b!4132812 b_free!117319 (= (toValue!9997 (transformation!7333 (h!50182 rules!3756))) (toValue!9997 (transformation!7333 r!4008)))) (and b!4132827 b_free!117323 (= (toValue!9997 (transformation!7333 rBis!149)) (toValue!9997 (transformation!7333 r!4008)))) (and b!4132817 b_free!117327) (and b!4133094 b_free!117343 (= (toValue!9997 (transformation!7333 (h!50182 (t!341715 rules!3756)))) (toValue!9997 (transformation!7333 r!4008)))) b_lambda!121419)))

(declare-fun b_lambda!121421 () Bool)

(assert (= b_lambda!121413 (or (and b!4132812 b_free!117319 (= (toValue!9997 (transformation!7333 (h!50182 rules!3756))) (toValue!9997 (transformation!7333 r!4008)))) (and b!4132827 b_free!117323 (= (toValue!9997 (transformation!7333 rBis!149)) (toValue!9997 (transformation!7333 r!4008)))) (and b!4132817 b_free!117327) (and b!4133094 b_free!117343 (= (toValue!9997 (transformation!7333 (h!50182 (t!341715 rules!3756)))) (toValue!9997 (transformation!7333 r!4008)))) b_lambda!121421)))

(push 1)

(assert (not d!1224292))

(assert (not b!4133034))

(assert (not b!4133050))

(assert (not b!4133035))

(assert (not b!4133077))

(assert (not b!4133027))

(assert (not b!4132941))

(assert (not d!1224276))

(assert (not d!1224270))

(assert (not b!4133007))

(assert (not d!1224310))

(assert (not d!1224298))

(assert (not b!4133073))

(assert (not b!4132979))

(assert (not d!1224318))

(assert (not d!1224314))

(assert (not b!4133053))

(assert (not b_lambda!121421))

(assert (not b!4133000))

(assert (not b!4133030))

(assert (not b_next!118047))

(assert (not d!1224316))

(assert (not b!4133033))

(assert (not d!1224264))

(assert (not d!1224300))

(assert (not bm!290366))

(assert (not b!4132906))

(assert b_and!320481)

(assert b_and!320489)

(assert (not b!4133047))

(assert (not b!4132989))

(assert (not b!4133082))

(assert (not b!4133076))

(assert (not b_next!118049))

(assert (not b_next!118025))

(assert (not b!4133054))

(assert (not b!4133083))

(assert (not b!4132905))

(assert (not b!4133041))

(assert (not b!4133051))

(assert (not b!4132937))

(assert (not d!1224260))

(assert (not b!4132981))

(assert (not d!1224296))

(assert (not b_next!118023))

(assert b_and!320487)

(assert (not bm!290369))

(assert (not b!4132987))

(assert b_and!320469)

(assert (not b!4133072))

(assert (not d!1224280))

(assert (not b!4133031))

(assert (not b_next!118027))

(assert b_and!320473)

(assert (not b!4133067))

(assert (not d!1224282))

(assert b_and!320471)

(assert (not b!4133068))

(assert (not d!1224272))

(assert (not b!4132916))

(assert (not b!4133071))

(assert (not b!4133093))

(assert b_and!320485)

(assert (not d!1224268))

(assert (not b!4133075))

(assert (not tb!248057))

(assert (not b_next!118033))

(assert (not b_lambda!121419))

(assert (not tb!248051))

(assert (not b_lambda!121417))

(assert (not b!4132943))

(assert (not b!4133029))

(assert tp_is_empty!21399)

(assert (not b!4132980))

(assert b_and!320483)

(assert (not b!4132986))

(assert (not b!4133092))

(assert (not b!4132909))

(assert (not b_next!118031))

(assert (not b_next!118029))

(assert (not b!4133032))

(assert (not b!4132904))

(assert (not d!1224306))

(assert (not b!4133069))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!118047))

(assert b_and!320481)

(assert b_and!320489)

(assert b_and!320469)

(assert b_and!320471)

(assert b_and!320485)

(assert (not b_next!118033))

(assert b_and!320483)

(assert (not b_next!118049))

(assert (not b_next!118025))

(assert (not b_next!118023))

(assert b_and!320487)

(assert (not b_next!118027))

(assert b_and!320473)

(assert (not b_next!118031))

(assert (not b_next!118029))

(check-sat)

(pop 1)

