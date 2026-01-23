; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!271270 () Bool)

(assert start!271270)

(declare-fun b!2804777 () Bool)

(declare-fun b_free!79693 () Bool)

(declare-fun b_next!80397 () Bool)

(assert (=> b!2804777 (= b_free!79693 (not b_next!80397))))

(declare-fun tp!894598 () Bool)

(declare-fun b_and!204455 () Bool)

(assert (=> b!2804777 (= tp!894598 b_and!204455)))

(declare-fun b_free!79695 () Bool)

(declare-fun b_next!80399 () Bool)

(assert (=> b!2804777 (= b_free!79695 (not b_next!80399))))

(declare-fun tp!894605 () Bool)

(declare-fun b_and!204457 () Bool)

(assert (=> b!2804777 (= tp!894605 b_and!204457)))

(declare-fun b!2804781 () Bool)

(declare-fun b_free!79697 () Bool)

(declare-fun b_next!80401 () Bool)

(assert (=> b!2804781 (= b_free!79697 (not b_next!80401))))

(declare-fun tp!894593 () Bool)

(declare-fun b_and!204459 () Bool)

(assert (=> b!2804781 (= tp!894593 b_and!204459)))

(declare-fun b_free!79699 () Bool)

(declare-fun b_next!80403 () Bool)

(assert (=> b!2804781 (= b_free!79699 (not b_next!80403))))

(declare-fun tp!894604 () Bool)

(declare-fun b_and!204461 () Bool)

(assert (=> b!2804781 (= tp!894604 b_and!204461)))

(declare-fun b!2804772 () Bool)

(declare-fun b_free!79701 () Bool)

(declare-fun b_next!80405 () Bool)

(assert (=> b!2804772 (= b_free!79701 (not b_next!80405))))

(declare-fun tp!894601 () Bool)

(declare-fun b_and!204463 () Bool)

(assert (=> b!2804772 (= tp!894601 b_and!204463)))

(declare-fun b_free!79703 () Bool)

(declare-fun b_next!80407 () Bool)

(assert (=> b!2804772 (= b_free!79703 (not b_next!80407))))

(declare-fun tp!894596 () Bool)

(declare-fun b_and!204465 () Bool)

(assert (=> b!2804772 (= tp!894596 b_and!204465)))

(declare-fun res!1168521 () Bool)

(declare-fun e!1772926 () Bool)

(assert (=> start!271270 (=> (not res!1168521) (not e!1772926))))

(declare-datatypes ((LexerInterface!4469 0))(
  ( (LexerInterfaceExt!4466 (__x!21857 Int)) (Lexer!4467) )
))
(declare-fun thiss!19710 () LexerInterface!4469)

(assert (=> start!271270 (= res!1168521 (is-Lexer!4467 thiss!19710))))

(assert (=> start!271270 e!1772926))

(assert (=> start!271270 true))

(declare-fun e!1772932 () Bool)

(assert (=> start!271270 e!1772932))

(declare-fun e!1772922 () Bool)

(assert (=> start!271270 e!1772922))

(declare-datatypes ((C!16654 0))(
  ( (C!16655 (val!10261 Int)) )
))
(declare-datatypes ((List!32762 0))(
  ( (Nil!32662) (Cons!32662 (h!38082 C!16654) (t!228998 List!32762)) )
))
(declare-datatypes ((IArray!20219 0))(
  ( (IArray!20220 (innerList!10167 List!32762)) )
))
(declare-datatypes ((Conc!10107 0))(
  ( (Node!10107 (left!24653 Conc!10107) (right!24983 Conc!10107) (csize!20444 Int) (cheight!10318 Int)) (Leaf!15400 (xs!13219 IArray!20219) (csize!20445 Int)) (Empty!10107) )
))
(declare-datatypes ((BalanceConc!19828 0))(
  ( (BalanceConc!19829 (c!454572 Conc!10107)) )
))
(declare-datatypes ((List!32763 0))(
  ( (Nil!32663) (Cons!32663 (h!38083 (_ BitVec 16)) (t!228999 List!32763)) )
))
(declare-datatypes ((TokenValue!5100 0))(
  ( (FloatLiteralValue!10200 (text!36145 List!32763)) (TokenValueExt!5099 (__x!21858 Int)) (Broken!25500 (value!156908 List!32763)) (Object!5199) (End!5100) (Def!5100) (Underscore!5100) (Match!5100) (Else!5100) (Error!5100) (Case!5100) (If!5100) (Extends!5100) (Abstract!5100) (Class!5100) (Val!5100) (DelimiterValue!10200 (del!5160 List!32763)) (KeywordValue!5106 (value!156909 List!32763)) (CommentValue!10200 (value!156910 List!32763)) (WhitespaceValue!10200 (value!156911 List!32763)) (IndentationValue!5100 (value!156912 List!32763)) (String!35837) (Int32!5100) (Broken!25501 (value!156913 List!32763)) (Boolean!5101) (Unit!46754) (OperatorValue!5103 (op!5160 List!32763)) (IdentifierValue!10200 (value!156914 List!32763)) (IdentifierValue!10201 (value!156915 List!32763)) (WhitespaceValue!10201 (value!156916 List!32763)) (True!10200) (False!10200) (Broken!25502 (value!156917 List!32763)) (Broken!25503 (value!156918 List!32763)) (True!10201) (RightBrace!5100) (RightBracket!5100) (Colon!5100) (Null!5100) (Comma!5100) (LeftBracket!5100) (False!10201) (LeftBrace!5100) (ImaginaryLiteralValue!5100 (text!36146 List!32763)) (StringLiteralValue!15300 (value!156919 List!32763)) (EOFValue!5100 (value!156920 List!32763)) (IdentValue!5100 (value!156921 List!32763)) (DelimiterValue!10201 (value!156922 List!32763)) (DedentValue!5100 (value!156923 List!32763)) (NewLineValue!5100 (value!156924 List!32763)) (IntegerValue!15300 (value!156925 (_ BitVec 32)) (text!36147 List!32763)) (IntegerValue!15301 (value!156926 Int) (text!36148 List!32763)) (Times!5100) (Or!5100) (Equal!5100) (Minus!5100) (Broken!25504 (value!156927 List!32763)) (And!5100) (Div!5100) (LessEqual!5100) (Mod!5100) (Concat!13348) (Not!5100) (Plus!5100) (SpaceValue!5100 (value!156928 List!32763)) (IntegerValue!15302 (value!156929 Int) (text!36149 List!32763)) (StringLiteralValue!15301 (text!36150 List!32763)) (FloatLiteralValue!10201 (text!36151 List!32763)) (BytesLiteralValue!5100 (value!156930 List!32763)) (CommentValue!10201 (value!156931 List!32763)) (StringLiteralValue!15302 (value!156932 List!32763)) (ErrorTokenValue!5100 (msg!5161 List!32763)) )
))
(declare-datatypes ((TokenValueInjection!9640 0))(
  ( (TokenValueInjection!9641 (toValue!6876 Int) (toChars!6735 Int)) )
))
(declare-datatypes ((Regex!8248 0))(
  ( (ElementMatch!8248 (c!454573 C!16654)) (Concat!13349 (regOne!17008 Regex!8248) (regTwo!17008 Regex!8248)) (EmptyExpr!8248) (Star!8248 (reg!8577 Regex!8248)) (EmptyLang!8248) (Union!8248 (regOne!17009 Regex!8248) (regTwo!17009 Regex!8248)) )
))
(declare-datatypes ((String!35838 0))(
  ( (String!35839 (value!156933 String)) )
))
(declare-datatypes ((Rule!9556 0))(
  ( (Rule!9557 (regex!4878 Regex!8248) (tag!5382 String!35838) (isSeparator!4878 Bool) (transformation!4878 TokenValueInjection!9640)) )
))
(declare-datatypes ((Token!9158 0))(
  ( (Token!9159 (value!156934 TokenValue!5100) (rule!7306 Rule!9556) (size!25494 Int) (originalCharacters!5610 List!32762)) )
))
(declare-fun separatorToken!283 () Token!9158)

(declare-fun e!1772925 () Bool)

(declare-fun inv!44340 (Token!9158) Bool)

(assert (=> start!271270 (and (inv!44340 separatorToken!283) e!1772925)))

(declare-fun b!2804771 () Bool)

(declare-fun res!1168524 () Bool)

(assert (=> b!2804771 (=> (not res!1168524) (not e!1772926))))

(declare-datatypes ((List!32764 0))(
  ( (Nil!32664) (Cons!32664 (h!38084 Rule!9556) (t!229000 List!32764)) )
))
(declare-fun rules!2540 () List!32764)

(declare-fun isEmpty!18160 (List!32764) Bool)

(assert (=> b!2804771 (= res!1168524 (not (isEmpty!18160 rules!2540)))))

(declare-fun e!1772930 () Bool)

(assert (=> b!2804772 (= e!1772930 (and tp!894601 tp!894596))))

(declare-fun b!2804773 () Bool)

(declare-fun res!1168523 () Bool)

(assert (=> b!2804773 (=> (not res!1168523) (not e!1772926))))

(declare-fun rulesInvariant!3909 (LexerInterface!4469 List!32764) Bool)

(assert (=> b!2804773 (= res!1168523 (rulesInvariant!3909 thiss!19710 rules!2540))))

(declare-datatypes ((List!32765 0))(
  ( (Nil!32665) (Cons!32665 (h!38085 Token!9158) (t!229001 List!32765)) )
))
(declare-fun l!5055 () List!32765)

(declare-fun e!1772931 () Bool)

(declare-fun tp!894595 () Bool)

(declare-fun b!2804774 () Bool)

(declare-fun e!1772919 () Bool)

(declare-fun inv!21 (TokenValue!5100) Bool)

(assert (=> b!2804774 (= e!1772919 (and (inv!21 (value!156934 (h!38085 l!5055))) e!1772931 tp!894595))))

(declare-fun b!2804775 () Bool)

(declare-fun tp!894600 () Bool)

(declare-fun inv!44337 (String!35838) Bool)

(declare-fun inv!44341 (TokenValueInjection!9640) Bool)

(assert (=> b!2804775 (= e!1772931 (and tp!894600 (inv!44337 (tag!5382 (rule!7306 (h!38085 l!5055)))) (inv!44341 (transformation!4878 (rule!7306 (h!38085 l!5055)))) e!1772930))))

(declare-fun b!2804776 () Bool)

(assert (=> b!2804776 (= e!1772926 false)))

(declare-fun lt!1002919 () Bool)

(declare-fun rulesProduceIndividualToken!2033 (LexerInterface!4469 List!32764 Token!9158) Bool)

(assert (=> b!2804776 (= lt!1002919 (rulesProduceIndividualToken!2033 thiss!19710 rules!2540 separatorToken!283))))

(declare-fun e!1772920 () Bool)

(assert (=> b!2804777 (= e!1772920 (and tp!894598 tp!894605))))

(declare-fun e!1772927 () Bool)

(declare-fun e!1772917 () Bool)

(declare-fun tp!894597 () Bool)

(declare-fun b!2804778 () Bool)

(assert (=> b!2804778 (= e!1772917 (and tp!894597 (inv!44337 (tag!5382 (rule!7306 separatorToken!283))) (inv!44341 (transformation!4878 (rule!7306 separatorToken!283))) e!1772927))))

(declare-fun tp!894599 () Bool)

(declare-fun b!2804779 () Bool)

(assert (=> b!2804779 (= e!1772922 (and (inv!44340 (h!38085 l!5055)) e!1772919 tp!894599))))

(declare-fun tp!894603 () Bool)

(declare-fun b!2804780 () Bool)

(assert (=> b!2804780 (= e!1772925 (and (inv!21 (value!156934 separatorToken!283)) e!1772917 tp!894603))))

(assert (=> b!2804781 (= e!1772927 (and tp!894593 tp!894604))))

(declare-fun e!1772923 () Bool)

(declare-fun b!2804782 () Bool)

(declare-fun tp!894602 () Bool)

(assert (=> b!2804782 (= e!1772923 (and tp!894602 (inv!44337 (tag!5382 (h!38084 rules!2540))) (inv!44341 (transformation!4878 (h!38084 rules!2540))) e!1772920))))

(declare-fun b!2804783 () Bool)

(declare-fun res!1168522 () Bool)

(assert (=> b!2804783 (=> (not res!1168522) (not e!1772926))))

(declare-fun rulesProduceEachTokenIndividuallyList!1543 (LexerInterface!4469 List!32764 List!32765) Bool)

(assert (=> b!2804783 (= res!1168522 (rulesProduceEachTokenIndividuallyList!1543 thiss!19710 rules!2540 l!5055))))

(declare-fun b!2804784 () Bool)

(declare-fun tp!894594 () Bool)

(assert (=> b!2804784 (= e!1772932 (and e!1772923 tp!894594))))

(assert (= (and start!271270 res!1168521) b!2804771))

(assert (= (and b!2804771 res!1168524) b!2804773))

(assert (= (and b!2804773 res!1168523) b!2804783))

(assert (= (and b!2804783 res!1168522) b!2804776))

(assert (= b!2804782 b!2804777))

(assert (= b!2804784 b!2804782))

(assert (= (and start!271270 (is-Cons!32664 rules!2540)) b!2804784))

(assert (= b!2804775 b!2804772))

(assert (= b!2804774 b!2804775))

(assert (= b!2804779 b!2804774))

(assert (= (and start!271270 (is-Cons!32665 l!5055)) b!2804779))

(assert (= b!2804778 b!2804781))

(assert (= b!2804780 b!2804778))

(assert (= start!271270 b!2804780))

(declare-fun m!3234157 () Bool)

(assert (=> b!2804775 m!3234157))

(declare-fun m!3234159 () Bool)

(assert (=> b!2804775 m!3234159))

(declare-fun m!3234161 () Bool)

(assert (=> b!2804783 m!3234161))

(declare-fun m!3234163 () Bool)

(assert (=> b!2804778 m!3234163))

(declare-fun m!3234165 () Bool)

(assert (=> b!2804778 m!3234165))

(declare-fun m!3234167 () Bool)

(assert (=> b!2804776 m!3234167))

(declare-fun m!3234169 () Bool)

(assert (=> b!2804773 m!3234169))

(declare-fun m!3234171 () Bool)

(assert (=> b!2804780 m!3234171))

(declare-fun m!3234173 () Bool)

(assert (=> start!271270 m!3234173))

(declare-fun m!3234175 () Bool)

(assert (=> b!2804774 m!3234175))

(declare-fun m!3234177 () Bool)

(assert (=> b!2804779 m!3234177))

(declare-fun m!3234179 () Bool)

(assert (=> b!2804782 m!3234179))

(declare-fun m!3234181 () Bool)

(assert (=> b!2804782 m!3234181))

(declare-fun m!3234183 () Bool)

(assert (=> b!2804771 m!3234183))

(push 1)

(assert (not b_next!80397))

(assert (not b!2804776))

(assert (not b_next!80403))

(assert (not start!271270))

(assert (not b!2804773))

(assert (not b_next!80405))

(assert (not b_next!80407))

(assert b_and!204463)

(assert (not b!2804774))

(assert b_and!204461)

(assert (not b_next!80401))

(assert (not b!2804778))

(assert b_and!204457)

(assert (not b_next!80399))

(assert (not b!2804780))

(assert (not b!2804775))

(assert b_and!204465)

(assert (not b!2804782))

(assert b_and!204455)

(assert b_and!204459)

(assert (not b!2804779))

(assert (not b!2804783))

(assert (not b!2804784))

(assert (not b!2804771))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!80397))

(assert (not b_next!80403))

(assert b_and!204457)

(assert (not b_next!80399))

(assert (not b_next!80405))

(assert b_and!204465)

(assert (not b_next!80407))

(assert b_and!204463)

(assert b_and!204461)

(assert (not b_next!80401))

(assert b_and!204455)

(assert b_and!204459)

(check-sat)

(pop 1)

