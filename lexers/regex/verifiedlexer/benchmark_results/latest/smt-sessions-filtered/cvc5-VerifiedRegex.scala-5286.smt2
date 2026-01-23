; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!271206 () Bool)

(assert start!271206)

(declare-fun b!2803772 () Bool)

(declare-fun b_free!79533 () Bool)

(declare-fun b_next!80237 () Bool)

(assert (=> b!2803772 (= b_free!79533 (not b_next!80237))))

(declare-fun tp!894007 () Bool)

(declare-fun b_and!204271 () Bool)

(assert (=> b!2803772 (= tp!894007 b_and!204271)))

(declare-fun b_free!79535 () Bool)

(declare-fun b_next!80239 () Bool)

(assert (=> b!2803772 (= b_free!79535 (not b_next!80239))))

(declare-fun tp!894016 () Bool)

(declare-fun b_and!204273 () Bool)

(assert (=> b!2803772 (= tp!894016 b_and!204273)))

(declare-fun b!2803785 () Bool)

(declare-fun b_free!79537 () Bool)

(declare-fun b_next!80241 () Bool)

(assert (=> b!2803785 (= b_free!79537 (not b_next!80241))))

(declare-fun tp!894010 () Bool)

(declare-fun b_and!204275 () Bool)

(assert (=> b!2803785 (= tp!894010 b_and!204275)))

(declare-fun b_free!79539 () Bool)

(declare-fun b_next!80243 () Bool)

(assert (=> b!2803785 (= b_free!79539 (not b_next!80243))))

(declare-fun tp!894017 () Bool)

(declare-fun b_and!204277 () Bool)

(assert (=> b!2803785 (= tp!894017 b_and!204277)))

(declare-fun b!2803775 () Bool)

(declare-fun b_free!79541 () Bool)

(declare-fun b_next!80245 () Bool)

(assert (=> b!2803775 (= b_free!79541 (not b_next!80245))))

(declare-fun tp!894011 () Bool)

(declare-fun b_and!204279 () Bool)

(assert (=> b!2803775 (= tp!894011 b_and!204279)))

(declare-fun b_free!79543 () Bool)

(declare-fun b_next!80247 () Bool)

(assert (=> b!2803775 (= b_free!79543 (not b_next!80247))))

(declare-fun tp!894014 () Bool)

(declare-fun b_and!204281 () Bool)

(assert (=> b!2803775 (= tp!894014 b_and!204281)))

(declare-datatypes ((List!32712 0))(
  ( (Nil!32612) (Cons!32612 (h!38032 (_ BitVec 16)) (t!228882 List!32712)) )
))
(declare-datatypes ((TokenValue!5088 0))(
  ( (FloatLiteralValue!10176 (text!36061 List!32712)) (TokenValueExt!5087 (__x!21833 Int)) (Broken!25440 (value!156566 List!32712)) (Object!5187) (End!5088) (Def!5088) (Underscore!5088) (Match!5088) (Else!5088) (Error!5088) (Case!5088) (If!5088) (Extends!5088) (Abstract!5088) (Class!5088) (Val!5088) (DelimiterValue!10176 (del!5148 List!32712)) (KeywordValue!5094 (value!156567 List!32712)) (CommentValue!10176 (value!156568 List!32712)) (WhitespaceValue!10176 (value!156569 List!32712)) (IndentationValue!5088 (value!156570 List!32712)) (String!35777) (Int32!5088) (Broken!25441 (value!156571 List!32712)) (Boolean!5089) (Unit!46726) (OperatorValue!5091 (op!5148 List!32712)) (IdentifierValue!10176 (value!156572 List!32712)) (IdentifierValue!10177 (value!156573 List!32712)) (WhitespaceValue!10177 (value!156574 List!32712)) (True!10176) (False!10176) (Broken!25442 (value!156575 List!32712)) (Broken!25443 (value!156576 List!32712)) (True!10177) (RightBrace!5088) (RightBracket!5088) (Colon!5088) (Null!5088) (Comma!5088) (LeftBracket!5088) (False!10177) (LeftBrace!5088) (ImaginaryLiteralValue!5088 (text!36062 List!32712)) (StringLiteralValue!15264 (value!156577 List!32712)) (EOFValue!5088 (value!156578 List!32712)) (IdentValue!5088 (value!156579 List!32712)) (DelimiterValue!10177 (value!156580 List!32712)) (DedentValue!5088 (value!156581 List!32712)) (NewLineValue!5088 (value!156582 List!32712)) (IntegerValue!15264 (value!156583 (_ BitVec 32)) (text!36063 List!32712)) (IntegerValue!15265 (value!156584 Int) (text!36064 List!32712)) (Times!5088) (Or!5088) (Equal!5088) (Minus!5088) (Broken!25444 (value!156585 List!32712)) (And!5088) (Div!5088) (LessEqual!5088) (Mod!5088) (Concat!13324) (Not!5088) (Plus!5088) (SpaceValue!5088 (value!156586 List!32712)) (IntegerValue!15266 (value!156587 Int) (text!36065 List!32712)) (StringLiteralValue!15265 (text!36066 List!32712)) (FloatLiteralValue!10177 (text!36067 List!32712)) (BytesLiteralValue!5088 (value!156588 List!32712)) (CommentValue!10177 (value!156589 List!32712)) (StringLiteralValue!15266 (value!156590 List!32712)) (ErrorTokenValue!5088 (msg!5149 List!32712)) )
))
(declare-datatypes ((C!16630 0))(
  ( (C!16631 (val!10249 Int)) )
))
(declare-datatypes ((List!32713 0))(
  ( (Nil!32613) (Cons!32613 (h!38033 C!16630) (t!228883 List!32713)) )
))
(declare-datatypes ((IArray!20191 0))(
  ( (IArray!20192 (innerList!10153 List!32713)) )
))
(declare-datatypes ((Conc!10093 0))(
  ( (Node!10093 (left!24613 Conc!10093) (right!24943 Conc!10093) (csize!20416 Int) (cheight!10304 Int)) (Leaf!15380 (xs!13205 IArray!20191) (csize!20417 Int)) (Empty!10093) )
))
(declare-datatypes ((BalanceConc!19800 0))(
  ( (BalanceConc!19801 (c!454530 Conc!10093)) )
))
(declare-datatypes ((Regex!8236 0))(
  ( (ElementMatch!8236 (c!454531 C!16630)) (Concat!13325 (regOne!16984 Regex!8236) (regTwo!16984 Regex!8236)) (EmptyExpr!8236) (Star!8236 (reg!8565 Regex!8236)) (EmptyLang!8236) (Union!8236 (regOne!16985 Regex!8236) (regTwo!16985 Regex!8236)) )
))
(declare-datatypes ((String!35778 0))(
  ( (String!35779 (value!156591 String)) )
))
(declare-datatypes ((TokenValueInjection!9616 0))(
  ( (TokenValueInjection!9617 (toValue!6864 Int) (toChars!6723 Int)) )
))
(declare-datatypes ((Rule!9532 0))(
  ( (Rule!9533 (regex!4866 Regex!8236) (tag!5370 String!35778) (isSeparator!4866 Bool) (transformation!4866 TokenValueInjection!9616)) )
))
(declare-datatypes ((Token!9134 0))(
  ( (Token!9135 (value!156592 TokenValue!5088) (rule!7294 Rule!9532) (size!25478 Int) (originalCharacters!5598 List!32713)) )
))
(declare-datatypes ((List!32714 0))(
  ( (Nil!32614) (Cons!32614 (h!38034 Token!9134) (t!228884 List!32714)) )
))
(declare-fun l!5055 () List!32714)

(declare-fun e!1772052 () Bool)

(declare-fun e!1772045 () Bool)

(declare-fun tp!894013 () Bool)

(declare-fun b!2803771 () Bool)

(declare-fun inv!21 (TokenValue!5088) Bool)

(assert (=> b!2803771 (= e!1772045 (and (inv!21 (value!156592 (h!38034 l!5055))) e!1772052 tp!894013))))

(declare-fun e!1772054 () Bool)

(declare-fun b!2803773 () Bool)

(declare-fun e!1772047 () Bool)

(declare-fun separatorToken!283 () Token!9134)

(declare-fun tp!894006 () Bool)

(assert (=> b!2803773 (= e!1772047 (and (inv!21 (value!156592 separatorToken!283)) e!1772054 tp!894006))))

(declare-fun b!2803774 () Bool)

(declare-fun res!1168165 () Bool)

(declare-fun e!1772048 () Bool)

(assert (=> b!2803774 (=> (not res!1168165) (not e!1772048))))

(declare-datatypes ((List!32715 0))(
  ( (Nil!32615) (Cons!32615 (h!38035 Rule!9532) (t!228885 List!32715)) )
))
(declare-fun rules!2540 () List!32715)

(declare-datatypes ((LexerInterface!4457 0))(
  ( (LexerInterfaceExt!4454 (__x!21834 Int)) (Lexer!4455) )
))
(declare-fun thiss!19710 () LexerInterface!4457)

(declare-fun rulesProduceEachTokenIndividuallyList!1531 (LexerInterface!4457 List!32715 List!32714) Bool)

(assert (=> b!2803774 (= res!1168165 (rulesProduceEachTokenIndividuallyList!1531 thiss!19710 rules!2540 l!5055))))

(declare-fun e!1772050 () Bool)

(assert (=> b!2803775 (= e!1772050 (and tp!894011 tp!894014))))

(declare-fun e!1772060 () Bool)

(declare-fun b!2803776 () Bool)

(declare-fun tp!894005 () Bool)

(declare-fun inv!44291 (String!35778) Bool)

(declare-fun inv!44294 (TokenValueInjection!9616) Bool)

(assert (=> b!2803776 (= e!1772060 (and tp!894005 (inv!44291 (tag!5370 (h!38035 rules!2540))) (inv!44294 (transformation!4866 (h!38035 rules!2540))) e!1772050))))

(declare-fun e!1772057 () Bool)

(declare-fun tp!894015 () Bool)

(declare-fun b!2803777 () Bool)

(assert (=> b!2803777 (= e!1772054 (and tp!894015 (inv!44291 (tag!5370 (rule!7294 separatorToken!283))) (inv!44294 (transformation!4866 (rule!7294 separatorToken!283))) e!1772057))))

(declare-fun b!2803778 () Bool)

(assert (=> b!2803778 (= e!1772048 false)))

(declare-fun lt!1002823 () Bool)

(declare-fun contains!6022 (List!32714 Token!9134) Bool)

(assert (=> b!2803778 (= lt!1002823 (contains!6022 l!5055 (h!38034 l!5055)))))

(declare-fun e!1772051 () Bool)

(declare-fun b!2803779 () Bool)

(declare-fun tp!894012 () Bool)

(declare-fun inv!44295 (Token!9134) Bool)

(assert (=> b!2803779 (= e!1772051 (and (inv!44295 (h!38034 l!5055)) e!1772045 tp!894012))))

(declare-fun tp!894009 () Bool)

(declare-fun b!2803780 () Bool)

(declare-fun e!1772059 () Bool)

(assert (=> b!2803780 (= e!1772052 (and tp!894009 (inv!44291 (tag!5370 (rule!7294 (h!38034 l!5055)))) (inv!44294 (transformation!4866 (rule!7294 (h!38034 l!5055)))) e!1772059))))

(declare-fun b!2803781 () Bool)

(declare-fun e!1772056 () Bool)

(declare-fun tp!894008 () Bool)

(assert (=> b!2803781 (= e!1772056 (and e!1772060 tp!894008))))

(declare-fun b!2803782 () Bool)

(declare-fun res!1168167 () Bool)

(assert (=> b!2803782 (=> (not res!1168167) (not e!1772048))))

(declare-fun rulesProduceIndividualToken!2021 (LexerInterface!4457 List!32715 Token!9134) Bool)

(assert (=> b!2803782 (= res!1168167 (rulesProduceIndividualToken!2021 thiss!19710 rules!2540 separatorToken!283))))

(assert (=> b!2803772 (= e!1772059 (and tp!894007 tp!894016))))

(declare-fun res!1168168 () Bool)

(assert (=> start!271206 (=> (not res!1168168) (not e!1772048))))

(assert (=> start!271206 (= res!1168168 (is-Lexer!4455 thiss!19710))))

(assert (=> start!271206 e!1772048))

(assert (=> start!271206 true))

(assert (=> start!271206 e!1772056))

(assert (=> start!271206 e!1772051))

(assert (=> start!271206 (and (inv!44295 separatorToken!283) e!1772047)))

(declare-fun b!2803783 () Bool)

(declare-fun res!1168170 () Bool)

(assert (=> b!2803783 (=> (not res!1168170) (not e!1772048))))

(declare-fun rulesInvariant!3897 (LexerInterface!4457 List!32715) Bool)

(assert (=> b!2803783 (= res!1168170 (rulesInvariant!3897 thiss!19710 rules!2540))))

(declare-fun b!2803784 () Bool)

(declare-fun res!1168166 () Bool)

(assert (=> b!2803784 (=> (not res!1168166) (not e!1772048))))

(declare-fun isEmpty!18144 (List!32715) Bool)

(assert (=> b!2803784 (= res!1168166 (not (isEmpty!18144 rules!2540)))))

(assert (=> b!2803785 (= e!1772057 (and tp!894010 tp!894017))))

(declare-fun b!2803786 () Bool)

(declare-fun res!1168169 () Bool)

(assert (=> b!2803786 (=> (not res!1168169) (not e!1772048))))

(assert (=> b!2803786 (= res!1168169 (and (isSeparator!4866 (rule!7294 separatorToken!283)) (is-Cons!32614 l!5055)))))

(assert (= (and start!271206 res!1168168) b!2803784))

(assert (= (and b!2803784 res!1168166) b!2803783))

(assert (= (and b!2803783 res!1168170) b!2803774))

(assert (= (and b!2803774 res!1168165) b!2803782))

(assert (= (and b!2803782 res!1168167) b!2803786))

(assert (= (and b!2803786 res!1168169) b!2803778))

(assert (= b!2803776 b!2803775))

(assert (= b!2803781 b!2803776))

(assert (= (and start!271206 (is-Cons!32615 rules!2540)) b!2803781))

(assert (= b!2803780 b!2803772))

(assert (= b!2803771 b!2803780))

(assert (= b!2803779 b!2803771))

(assert (= (and start!271206 (is-Cons!32614 l!5055)) b!2803779))

(assert (= b!2803777 b!2803785))

(assert (= b!2803773 b!2803777))

(assert (= start!271206 b!2803773))

(declare-fun m!3233529 () Bool)

(assert (=> b!2803780 m!3233529))

(declare-fun m!3233531 () Bool)

(assert (=> b!2803780 m!3233531))

(declare-fun m!3233533 () Bool)

(assert (=> b!2803783 m!3233533))

(declare-fun m!3233535 () Bool)

(assert (=> b!2803778 m!3233535))

(declare-fun m!3233537 () Bool)

(assert (=> b!2803782 m!3233537))

(declare-fun m!3233539 () Bool)

(assert (=> b!2803779 m!3233539))

(declare-fun m!3233541 () Bool)

(assert (=> start!271206 m!3233541))

(declare-fun m!3233543 () Bool)

(assert (=> b!2803774 m!3233543))

(declare-fun m!3233545 () Bool)

(assert (=> b!2803776 m!3233545))

(declare-fun m!3233547 () Bool)

(assert (=> b!2803776 m!3233547))

(declare-fun m!3233549 () Bool)

(assert (=> b!2803784 m!3233549))

(declare-fun m!3233551 () Bool)

(assert (=> b!2803771 m!3233551))

(declare-fun m!3233553 () Bool)

(assert (=> b!2803777 m!3233553))

(declare-fun m!3233555 () Bool)

(assert (=> b!2803777 m!3233555))

(declare-fun m!3233557 () Bool)

(assert (=> b!2803773 m!3233557))

(push 1)

(assert (not b!2803777))

(assert (not b_next!80241))

(assert (not b!2803783))

(assert (not b!2803780))

(assert (not b!2803773))

(assert (not b_next!80239))

(assert (not b!2803781))

(assert (not b_next!80243))

(assert (not b!2803776))

(assert (not b!2803778))

(assert (not b!2803782))

(assert b_and!204277)

(assert (not b!2803779))

(assert (not b_next!80237))

(assert (not b!2803774))

(assert b_and!204273)

(assert (not b_next!80245))

(assert b_and!204271)

(assert (not b!2803771))

(assert b_and!204281)

(assert b_and!204279)

(assert (not b!2803784))

(assert (not start!271206))

(assert b_and!204275)

(assert (not b_next!80247))

(check-sat)

(pop 1)

(push 1)

(assert b_and!204277)

(assert (not b_next!80241))

(assert (not b_next!80239))

(assert (not b_next!80243))

(assert b_and!204279)

(assert (not b_next!80237))

(assert b_and!204273)

(assert (not b_next!80245))

(assert b_and!204271)

(assert b_and!204281)

(assert b_and!204275)

(assert (not b_next!80247))

(check-sat)

(pop 1)

