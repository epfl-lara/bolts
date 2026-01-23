; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!389980 () Bool)

(assert start!389980)

(declare-fun b!4115160 () Bool)

(declare-fun b_free!115927 () Bool)

(declare-fun b_next!116631 () Bool)

(assert (=> b!4115160 (= b_free!115927 (not b_next!116631))))

(declare-fun tp!1253266 () Bool)

(declare-fun b_and!317813 () Bool)

(assert (=> b!4115160 (= tp!1253266 b_and!317813)))

(declare-fun b_free!115929 () Bool)

(declare-fun b_next!116633 () Bool)

(assert (=> b!4115160 (= b_free!115929 (not b_next!116633))))

(declare-fun tp!1253265 () Bool)

(declare-fun b_and!317815 () Bool)

(assert (=> b!4115160 (= tp!1253265 b_and!317815)))

(declare-fun b!4115149 () Bool)

(declare-fun b_free!115931 () Bool)

(declare-fun b_next!116635 () Bool)

(assert (=> b!4115149 (= b_free!115931 (not b_next!116635))))

(declare-fun tp!1253262 () Bool)

(declare-fun b_and!317817 () Bool)

(assert (=> b!4115149 (= tp!1253262 b_and!317817)))

(declare-fun b_free!115933 () Bool)

(declare-fun b_next!116637 () Bool)

(assert (=> b!4115149 (= b_free!115933 (not b_next!116637))))

(declare-fun tp!1253261 () Bool)

(declare-fun b_and!317819 () Bool)

(assert (=> b!4115149 (= tp!1253261 b_and!317819)))

(declare-fun b!4115148 () Bool)

(declare-fun b_free!115935 () Bool)

(declare-fun b_next!116639 () Bool)

(assert (=> b!4115148 (= b_free!115935 (not b_next!116639))))

(declare-fun tp!1253263 () Bool)

(declare-fun b_and!317821 () Bool)

(assert (=> b!4115148 (= tp!1253263 b_and!317821)))

(declare-fun b_free!115937 () Bool)

(declare-fun b_next!116641 () Bool)

(assert (=> b!4115148 (= b_free!115937 (not b_next!116641))))

(declare-fun tp!1253257 () Bool)

(declare-fun b_and!317823 () Bool)

(assert (=> b!4115148 (= tp!1253257 b_and!317823)))

(declare-fun b!4115145 () Bool)

(declare-fun e!2553289 () Bool)

(assert (=> b!4115145 (= e!2553289 false)))

(declare-datatypes ((Unit!63781 0))(
  ( (Unit!63782) )
))
(declare-fun lt!1468665 () Unit!63781)

(declare-datatypes ((List!44540 0))(
  ( (Nil!44416) (Cons!44416 (h!49836 (_ BitVec 16)) (t!340291 List!44540)) )
))
(declare-datatypes ((TokenValue!7465 0))(
  ( (FloatLiteralValue!14930 (text!52700 List!44540)) (TokenValueExt!7464 (__x!27147 Int)) (Broken!37325 (value!226737 List!44540)) (Object!7588) (End!7465) (Def!7465) (Underscore!7465) (Match!7465) (Else!7465) (Error!7465) (Case!7465) (If!7465) (Extends!7465) (Abstract!7465) (Class!7465) (Val!7465) (DelimiterValue!14930 (del!7525 List!44540)) (KeywordValue!7471 (value!226738 List!44540)) (CommentValue!14930 (value!226739 List!44540)) (WhitespaceValue!14930 (value!226740 List!44540)) (IndentationValue!7465 (value!226741 List!44540)) (String!51076) (Int32!7465) (Broken!37326 (value!226742 List!44540)) (Boolean!7466) (Unit!63783) (OperatorValue!7468 (op!7525 List!44540)) (IdentifierValue!14930 (value!226743 List!44540)) (IdentifierValue!14931 (value!226744 List!44540)) (WhitespaceValue!14931 (value!226745 List!44540)) (True!14930) (False!14930) (Broken!37327 (value!226746 List!44540)) (Broken!37328 (value!226747 List!44540)) (True!14931) (RightBrace!7465) (RightBracket!7465) (Colon!7465) (Null!7465) (Comma!7465) (LeftBracket!7465) (False!14931) (LeftBrace!7465) (ImaginaryLiteralValue!7465 (text!52701 List!44540)) (StringLiteralValue!22395 (value!226748 List!44540)) (EOFValue!7465 (value!226749 List!44540)) (IdentValue!7465 (value!226750 List!44540)) (DelimiterValue!14931 (value!226751 List!44540)) (DedentValue!7465 (value!226752 List!44540)) (NewLineValue!7465 (value!226753 List!44540)) (IntegerValue!22395 (value!226754 (_ BitVec 32)) (text!52702 List!44540)) (IntegerValue!22396 (value!226755 Int) (text!52703 List!44540)) (Times!7465) (Or!7465) (Equal!7465) (Minus!7465) (Broken!37329 (value!226756 List!44540)) (And!7465) (Div!7465) (LessEqual!7465) (Mod!7465) (Concat!19605) (Not!7465) (Plus!7465) (SpaceValue!7465 (value!226757 List!44540)) (IntegerValue!22397 (value!226758 Int) (text!52704 List!44540)) (StringLiteralValue!22396 (text!52705 List!44540)) (FloatLiteralValue!14931 (text!52706 List!44540)) (BytesLiteralValue!7465 (value!226759 List!44540)) (CommentValue!14931 (value!226760 List!44540)) (StringLiteralValue!22397 (value!226761 List!44540)) (ErrorTokenValue!7465 (msg!7526 List!44540)) )
))
(declare-datatypes ((C!24466 0))(
  ( (C!24467 (val!14343 Int)) )
))
(declare-datatypes ((List!44541 0))(
  ( (Nil!44417) (Cons!44417 (h!49837 C!24466) (t!340292 List!44541)) )
))
(declare-datatypes ((IArray!26897 0))(
  ( (IArray!26898 (innerList!13506 List!44541)) )
))
(declare-datatypes ((Conc!13446 0))(
  ( (Node!13446 (left!33286 Conc!13446) (right!33616 Conc!13446) (csize!27122 Int) (cheight!13657 Int)) (Leaf!20779 (xs!16752 IArray!26897) (csize!27123 Int)) (Empty!13446) )
))
(declare-datatypes ((BalanceConc!26486 0))(
  ( (BalanceConc!26487 (c!707061 Conc!13446)) )
))
(declare-datatypes ((String!51077 0))(
  ( (String!51078 (value!226762 String)) )
))
(declare-datatypes ((Regex!12140 0))(
  ( (ElementMatch!12140 (c!707062 C!24466)) (Concat!19606 (regOne!24792 Regex!12140) (regTwo!24792 Regex!12140)) (EmptyExpr!12140) (Star!12140 (reg!12469 Regex!12140)) (EmptyLang!12140) (Union!12140 (regOne!24793 Regex!12140) (regTwo!24793 Regex!12140)) )
))
(declare-datatypes ((TokenValueInjection!14358 0))(
  ( (TokenValueInjection!14359 (toValue!9879 Int) (toChars!9738 Int)) )
))
(declare-datatypes ((Rule!14270 0))(
  ( (Rule!14271 (regex!7235 Regex!12140) (tag!8095 String!51077) (isSeparator!7235 Bool) (transformation!7235 TokenValueInjection!14358)) )
))
(declare-fun r!4008 () Rule!14270)

(declare-fun p!2912 () List!44541)

(declare-fun lemmaSemiInverse!2093 (TokenValueInjection!14358 BalanceConc!26486) Unit!63781)

(declare-fun seqFromList!5352 (List!44541) BalanceConc!26486)

(assert (=> b!4115145 (= lt!1468665 (lemmaSemiInverse!2093 (transformation!7235 r!4008) (seqFromList!5352 p!2912)))))

(declare-fun b!4115146 () Bool)

(declare-fun res!1680783 () Bool)

(assert (=> b!4115146 (=> (not res!1680783) (not e!2553289))))

(declare-fun isEmpty!26407 (List!44541) Bool)

(assert (=> b!4115146 (= res!1680783 (not (isEmpty!26407 p!2912)))))

(declare-fun rBis!149 () Rule!14270)

(declare-fun b!4115147 () Bool)

(declare-fun e!2553291 () Bool)

(declare-fun e!2553294 () Bool)

(declare-fun tp!1253259 () Bool)

(declare-fun inv!58997 (String!51077) Bool)

(declare-fun inv!59000 (TokenValueInjection!14358) Bool)

(assert (=> b!4115147 (= e!2553291 (and tp!1253259 (inv!58997 (tag!8095 rBis!149)) (inv!59000 (transformation!7235 rBis!149)) e!2553294))))

(declare-fun e!2553287 () Bool)

(assert (=> b!4115148 (= e!2553287 (and tp!1253263 tp!1253257))))

(declare-fun e!2553288 () Bool)

(assert (=> b!4115149 (= e!2553288 (and tp!1253262 tp!1253261))))

(declare-fun b!4115150 () Bool)

(declare-fun res!1680787 () Bool)

(assert (=> b!4115150 (=> (not res!1680787) (not e!2553289))))

(declare-fun input!3238 () List!44541)

(declare-fun isPrefix!4170 (List!44541 List!44541) Bool)

(assert (=> b!4115150 (= res!1680787 (isPrefix!4170 p!2912 input!3238))))

(declare-fun b!4115151 () Bool)

(declare-fun res!1680786 () Bool)

(assert (=> b!4115151 (=> (not res!1680786) (not e!2553289))))

(declare-datatypes ((List!44542 0))(
  ( (Nil!44418) (Cons!44418 (h!49838 Rule!14270) (t!340293 List!44542)) )
))
(declare-fun rules!3756 () List!44542)

(declare-fun isEmpty!26408 (List!44542) Bool)

(assert (=> b!4115151 (= res!1680786 (not (isEmpty!26408 rules!3756)))))

(declare-fun e!2553292 () Bool)

(declare-fun tp!1253256 () Bool)

(declare-fun b!4115153 () Bool)

(assert (=> b!4115153 (= e!2553292 (and tp!1253256 (inv!58997 (tag!8095 r!4008)) (inv!59000 (transformation!7235 r!4008)) e!2553287))))

(declare-fun b!4115154 () Bool)

(declare-fun e!2553290 () Bool)

(declare-fun tp_is_empty!21203 () Bool)

(declare-fun tp!1253264 () Bool)

(assert (=> b!4115154 (= e!2553290 (and tp_is_empty!21203 tp!1253264))))

(declare-fun b!4115155 () Bool)

(declare-fun e!2553298 () Bool)

(declare-fun e!2553293 () Bool)

(declare-fun tp!1253255 () Bool)

(assert (=> b!4115155 (= e!2553298 (and e!2553293 tp!1253255))))

(declare-fun b!4115156 () Bool)

(declare-fun e!2553297 () Bool)

(declare-fun tp!1253260 () Bool)

(assert (=> b!4115156 (= e!2553297 (and tp_is_empty!21203 tp!1253260))))

(declare-fun b!4115157 () Bool)

(declare-fun res!1680784 () Bool)

(assert (=> b!4115157 (=> (not res!1680784) (not e!2553289))))

(declare-fun contains!8903 (List!44542 Rule!14270) Bool)

(assert (=> b!4115157 (= res!1680784 (contains!8903 rules!3756 rBis!149))))

(declare-fun b!4115158 () Bool)

(declare-fun res!1680782 () Bool)

(assert (=> b!4115158 (=> (not res!1680782) (not e!2553289))))

(assert (=> b!4115158 (= res!1680782 (contains!8903 rules!3756 r!4008))))

(declare-fun tp!1253258 () Bool)

(declare-fun b!4115152 () Bool)

(assert (=> b!4115152 (= e!2553293 (and tp!1253258 (inv!58997 (tag!8095 (h!49838 rules!3756))) (inv!59000 (transformation!7235 (h!49838 rules!3756))) e!2553288))))

(declare-fun res!1680788 () Bool)

(assert (=> start!389980 (=> (not res!1680788) (not e!2553289))))

(declare-datatypes ((LexerInterface!6824 0))(
  ( (LexerInterfaceExt!6821 (__x!27148 Int)) (Lexer!6822) )
))
(declare-fun thiss!25645 () LexerInterface!6824)

(assert (=> start!389980 (= res!1680788 (is-Lexer!6822 thiss!25645))))

(assert (=> start!389980 e!2553289))

(assert (=> start!389980 e!2553298))

(assert (=> start!389980 e!2553297))

(assert (=> start!389980 true))

(assert (=> start!389980 e!2553292))

(assert (=> start!389980 e!2553290))

(assert (=> start!389980 e!2553291))

(declare-fun b!4115159 () Bool)

(declare-fun res!1680785 () Bool)

(assert (=> b!4115159 (=> (not res!1680785) (not e!2553289))))

(declare-fun rulesInvariant!6121 (LexerInterface!6824 List!44542) Bool)

(assert (=> b!4115159 (= res!1680785 (rulesInvariant!6121 thiss!25645 rules!3756))))

(assert (=> b!4115160 (= e!2553294 (and tp!1253266 tp!1253265))))

(assert (= (and start!389980 res!1680788) b!4115150))

(assert (= (and b!4115150 res!1680787) b!4115151))

(assert (= (and b!4115151 res!1680786) b!4115159))

(assert (= (and b!4115159 res!1680785) b!4115158))

(assert (= (and b!4115158 res!1680782) b!4115157))

(assert (= (and b!4115157 res!1680784) b!4115146))

(assert (= (and b!4115146 res!1680783) b!4115145))

(assert (= b!4115152 b!4115149))

(assert (= b!4115155 b!4115152))

(assert (= (and start!389980 (is-Cons!44418 rules!3756)) b!4115155))

(assert (= (and start!389980 (is-Cons!44417 p!2912)) b!4115156))

(assert (= b!4115153 b!4115148))

(assert (= start!389980 b!4115153))

(assert (= (and start!389980 (is-Cons!44417 input!3238)) b!4115154))

(assert (= b!4115147 b!4115160))

(assert (= start!389980 b!4115147))

(declare-fun m!4715349 () Bool)

(assert (=> b!4115152 m!4715349))

(declare-fun m!4715351 () Bool)

(assert (=> b!4115152 m!4715351))

(declare-fun m!4715353 () Bool)

(assert (=> b!4115159 m!4715353))

(declare-fun m!4715355 () Bool)

(assert (=> b!4115151 m!4715355))

(declare-fun m!4715357 () Bool)

(assert (=> b!4115145 m!4715357))

(assert (=> b!4115145 m!4715357))

(declare-fun m!4715359 () Bool)

(assert (=> b!4115145 m!4715359))

(declare-fun m!4715361 () Bool)

(assert (=> b!4115150 m!4715361))

(declare-fun m!4715363 () Bool)

(assert (=> b!4115147 m!4715363))

(declare-fun m!4715365 () Bool)

(assert (=> b!4115147 m!4715365))

(declare-fun m!4715367 () Bool)

(assert (=> b!4115157 m!4715367))

(declare-fun m!4715369 () Bool)

(assert (=> b!4115158 m!4715369))

(declare-fun m!4715371 () Bool)

(assert (=> b!4115153 m!4715371))

(declare-fun m!4715373 () Bool)

(assert (=> b!4115153 m!4715373))

(declare-fun m!4715375 () Bool)

(assert (=> b!4115146 m!4715375))

(push 1)

(assert (not b!4115155))

(assert (not b!4115153))

(assert (not b_next!116641))

(assert (not b_next!116635))

(assert tp_is_empty!21203)

(assert b_and!317819)

(assert b_and!317821)

(assert (not b_next!116639))

(assert (not b!4115154))

(assert (not b!4115151))

(assert (not b!4115145))

(assert (not b!4115158))

(assert (not b_next!116637))

(assert (not b!4115147))

(assert b_and!317823)

(assert (not b!4115156))

(assert b_and!317815)

(assert (not b!4115157))

(assert (not b!4115146))

(assert (not b!4115150))

(assert b_and!317813)

(assert b_and!317817)

(assert (not b!4115152))

(assert (not b_next!116631))

(assert (not b!4115159))

(assert (not b_next!116633))

(check-sat)

(pop 1)

(push 1)

(assert b_and!317823)

(assert b_and!317815)

(assert (not b_next!116641))

(assert (not b_next!116635))

(assert b_and!317819)

(assert b_and!317821)

(assert (not b_next!116639))

(assert (not b_next!116637))

(assert (not b_next!116631))

(assert (not b_next!116633))

(assert b_and!317813)

(assert b_and!317817)

(check-sat)

(pop 1)

