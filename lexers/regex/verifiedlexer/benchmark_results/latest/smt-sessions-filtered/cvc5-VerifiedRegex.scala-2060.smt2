; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!104896 () Bool)

(assert start!104896)

(declare-fun b!1183104 () Bool)

(declare-fun b_free!28277 () Bool)

(declare-fun b_next!28981 () Bool)

(assert (=> b!1183104 (= b_free!28277 (not b_next!28981))))

(declare-fun tp!337184 () Bool)

(declare-fun b_and!81317 () Bool)

(assert (=> b!1183104 (= tp!337184 b_and!81317)))

(declare-fun b_free!28279 () Bool)

(declare-fun b_next!28983 () Bool)

(assert (=> b!1183104 (= b_free!28279 (not b_next!28983))))

(declare-fun tp!337189 () Bool)

(declare-fun b_and!81319 () Bool)

(assert (=> b!1183104 (= tp!337189 b_and!81319)))

(declare-fun b!1183105 () Bool)

(declare-fun b_free!28281 () Bool)

(declare-fun b_next!28985 () Bool)

(assert (=> b!1183105 (= b_free!28281 (not b_next!28985))))

(declare-fun tp!337187 () Bool)

(declare-fun b_and!81321 () Bool)

(assert (=> b!1183105 (= tp!337187 b_and!81321)))

(declare-fun b_free!28283 () Bool)

(declare-fun b_next!28987 () Bool)

(assert (=> b!1183105 (= b_free!28283 (not b_next!28987))))

(declare-fun tp!337188 () Bool)

(declare-fun b_and!81323 () Bool)

(assert (=> b!1183105 (= tp!337188 b_and!81323)))

(declare-fun e!759608 () Bool)

(declare-datatypes ((C!6978 0))(
  ( (C!6979 (val!3785 Int)) )
))
(declare-datatypes ((List!11832 0))(
  ( (Nil!11808) (Cons!11808 (h!17209 C!6978) (t!111602 List!11832)) )
))
(declare-datatypes ((IArray!7745 0))(
  ( (IArray!7746 (innerList!3930 List!11832)) )
))
(declare-datatypes ((Conc!3870 0))(
  ( (Node!3870 (left!10286 Conc!3870) (right!10616 Conc!3870) (csize!7970 Int) (cheight!4081 Int)) (Leaf!5931 (xs!6575 IArray!7745) (csize!7971 Int)) (Empty!3870) )
))
(declare-datatypes ((List!11833 0))(
  ( (Nil!11809) (Cons!11809 (h!17210 (_ BitVec 16)) (t!111603 List!11833)) )
))
(declare-datatypes ((BalanceConc!7762 0))(
  ( (BalanceConc!7763 (c!196944 Conc!3870)) )
))
(declare-datatypes ((TokenValue!2126 0))(
  ( (FloatLiteralValue!4252 (text!15327 List!11833)) (TokenValueExt!2125 (__x!7963 Int)) (Broken!10630 (value!66742 List!11833)) (Object!2149) (End!2126) (Def!2126) (Underscore!2126) (Match!2126) (Else!2126) (Error!2126) (Case!2126) (If!2126) (Extends!2126) (Abstract!2126) (Class!2126) (Val!2126) (DelimiterValue!4252 (del!2186 List!11833)) (KeywordValue!2132 (value!66743 List!11833)) (CommentValue!4252 (value!66744 List!11833)) (WhitespaceValue!4252 (value!66745 List!11833)) (IndentationValue!2126 (value!66746 List!11833)) (String!14299) (Int32!2126) (Broken!10631 (value!66747 List!11833)) (Boolean!2127) (Unit!18134) (OperatorValue!2129 (op!2186 List!11833)) (IdentifierValue!4252 (value!66748 List!11833)) (IdentifierValue!4253 (value!66749 List!11833)) (WhitespaceValue!4253 (value!66750 List!11833)) (True!4252) (False!4252) (Broken!10632 (value!66751 List!11833)) (Broken!10633 (value!66752 List!11833)) (True!4253) (RightBrace!2126) (RightBracket!2126) (Colon!2126) (Null!2126) (Comma!2126) (LeftBracket!2126) (False!4253) (LeftBrace!2126) (ImaginaryLiteralValue!2126 (text!15328 List!11833)) (StringLiteralValue!6378 (value!66753 List!11833)) (EOFValue!2126 (value!66754 List!11833)) (IdentValue!2126 (value!66755 List!11833)) (DelimiterValue!4253 (value!66756 List!11833)) (DedentValue!2126 (value!66757 List!11833)) (NewLineValue!2126 (value!66758 List!11833)) (IntegerValue!6378 (value!66759 (_ BitVec 32)) (text!15329 List!11833)) (IntegerValue!6379 (value!66760 Int) (text!15330 List!11833)) (Times!2126) (Or!2126) (Equal!2126) (Minus!2126) (Broken!10634 (value!66761 List!11833)) (And!2126) (Div!2126) (LessEqual!2126) (Mod!2126) (Concat!5456) (Not!2126) (Plus!2126) (SpaceValue!2126 (value!66762 List!11833)) (IntegerValue!6380 (value!66763 Int) (text!15331 List!11833)) (StringLiteralValue!6379 (text!15332 List!11833)) (FloatLiteralValue!4253 (text!15333 List!11833)) (BytesLiteralValue!2126 (value!66764 List!11833)) (CommentValue!4253 (value!66765 List!11833)) (StringLiteralValue!6380 (value!66766 List!11833)) (ErrorTokenValue!2126 (msg!2187 List!11833)) )
))
(declare-datatypes ((Regex!3330 0))(
  ( (ElementMatch!3330 (c!196945 C!6978)) (Concat!5457 (regOne!7172 Regex!3330) (regTwo!7172 Regex!3330)) (EmptyExpr!3330) (Star!3330 (reg!3659 Regex!3330)) (EmptyLang!3330) (Union!3330 (regOne!7173 Regex!3330) (regTwo!7173 Regex!3330)) )
))
(declare-datatypes ((String!14300 0))(
  ( (String!14301 (value!66767 String)) )
))
(declare-datatypes ((TokenValueInjection!3952 0))(
  ( (TokenValueInjection!3953 (toValue!3173 Int) (toChars!3032 Int)) )
))
(declare-datatypes ((Rule!3920 0))(
  ( (Rule!3921 (regex!2060 Regex!3330) (tag!2322 String!14300) (isSeparator!2060 Bool) (transformation!2060 TokenValueInjection!3952)) )
))
(declare-datatypes ((List!11834 0))(
  ( (Nil!11810) (Cons!11810 (h!17211 Rule!3920) (t!111604 List!11834)) )
))
(declare-fun rules!4386 () List!11834)

(declare-fun b!1183092 () Bool)

(declare-fun e!759617 () Bool)

(declare-fun tp!337190 () Bool)

(declare-fun inv!15635 (String!14300) Bool)

(declare-fun inv!15638 (TokenValueInjection!3952) Bool)

(assert (=> b!1183092 (= e!759608 (and tp!337190 (inv!15635 (tag!2322 (h!17211 rules!4386))) (inv!15638 (transformation!2060 (h!17211 rules!4386))) e!759617))))

(declare-fun b!1183093 () Bool)

(declare-fun res!534641 () Bool)

(declare-fun e!759609 () Bool)

(assert (=> b!1183093 (=> (not res!534641) (not e!759609))))

(declare-fun isEmpty!7125 (List!11834) Bool)

(assert (=> b!1183093 (= res!534641 (not (isEmpty!7125 rules!4386)))))

(declare-fun b!1183094 () Bool)

(declare-fun e!759614 () Bool)

(declare-fun tp!337183 () Bool)

(assert (=> b!1183094 (= e!759614 (and e!759608 tp!337183))))

(declare-fun b!1183095 () Bool)

(assert (=> b!1183095 (= e!759609 false)))

(declare-datatypes ((Token!3782 0))(
  ( (Token!3783 (value!66768 TokenValue!2126) (rule!3481 Rule!3920) (size!9332 Int) (originalCharacters!2614 List!11832)) )
))
(declare-datatypes ((List!11835 0))(
  ( (Nil!11811) (Cons!11811 (h!17212 Token!3782) (t!111605 List!11835)) )
))
(declare-fun l!6534 () List!11835)

(declare-datatypes ((LexerInterface!1755 0))(
  ( (LexerInterfaceExt!1752 (__x!7964 Int)) (Lexer!1753) )
))
(declare-fun thiss!27592 () LexerInterface!1755)

(declare-fun lt!407155 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!149 (LexerInterface!1755 List!11835 List!11834) Bool)

(assert (=> b!1183095 (= lt!407155 (tokensListTwoByTwoPredicateSeparableList!149 thiss!27592 (t!111605 l!6534) rules!4386))))

(declare-fun e!759615 () Bool)

(declare-fun b!1183096 () Bool)

(declare-fun tp!337185 () Bool)

(declare-fun e!759618 () Bool)

(declare-fun inv!21 (TokenValue!2126) Bool)

(assert (=> b!1183096 (= e!759618 (and (inv!21 (value!66768 (h!17212 l!6534))) e!759615 tp!337185))))

(declare-fun b!1183097 () Bool)

(declare-fun res!534643 () Bool)

(assert (=> b!1183097 (=> (not res!534643) (not e!759609))))

(declare-fun rulesProduceEachTokenIndividuallyList!621 (LexerInterface!1755 List!11834 List!11835) Bool)

(assert (=> b!1183097 (= res!534643 (rulesProduceEachTokenIndividuallyList!621 thiss!27592 rules!4386 (t!111605 l!6534)))))

(declare-fun res!534647 () Bool)

(assert (=> start!104896 (=> (not res!534647) (not e!759609))))

(assert (=> start!104896 (= res!534647 (is-Lexer!1753 thiss!27592))))

(assert (=> start!104896 e!759609))

(assert (=> start!104896 true))

(assert (=> start!104896 e!759614))

(declare-fun e!759610 () Bool)

(assert (=> start!104896 e!759610))

(declare-fun b!1183098 () Bool)

(declare-fun res!534645 () Bool)

(assert (=> b!1183098 (=> (not res!534645) (not e!759609))))

(declare-fun rulesInvariant!1629 (LexerInterface!1755 List!11834) Bool)

(assert (=> b!1183098 (= res!534645 (rulesInvariant!1629 thiss!27592 rules!4386))))

(declare-fun e!759613 () Bool)

(declare-fun b!1183099 () Bool)

(declare-fun tp!337186 () Bool)

(assert (=> b!1183099 (= e!759615 (and tp!337186 (inv!15635 (tag!2322 (rule!3481 (h!17212 l!6534)))) (inv!15638 (transformation!2060 (rule!3481 (h!17212 l!6534)))) e!759613))))

(declare-fun b!1183100 () Bool)

(declare-fun res!534644 () Bool)

(assert (=> b!1183100 (=> (not res!534644) (not e!759609))))

(assert (=> b!1183100 (= res!534644 (tokensListTwoByTwoPredicateSeparableList!149 thiss!27592 l!6534 rules!4386))))

(declare-fun tp!337191 () Bool)

(declare-fun b!1183101 () Bool)

(declare-fun inv!15639 (Token!3782) Bool)

(assert (=> b!1183101 (= e!759610 (and (inv!15639 (h!17212 l!6534)) e!759618 tp!337191))))

(declare-fun b!1183102 () Bool)

(declare-fun res!534642 () Bool)

(assert (=> b!1183102 (=> (not res!534642) (not e!759609))))

(declare-fun i!1621 () Int)

(assert (=> b!1183102 (= res!534642 (and (not (is-Nil!11811 l!6534)) (> i!1621 0)))))

(declare-fun b!1183103 () Bool)

(declare-fun res!534646 () Bool)

(assert (=> b!1183103 (=> (not res!534646) (not e!759609))))

(assert (=> b!1183103 (= res!534646 (rulesProduceEachTokenIndividuallyList!621 thiss!27592 rules!4386 l!6534))))

(assert (=> b!1183104 (= e!759617 (and tp!337184 tp!337189))))

(assert (=> b!1183105 (= e!759613 (and tp!337187 tp!337188))))

(assert (= (and start!104896 res!534647) b!1183093))

(assert (= (and b!1183093 res!534641) b!1183098))

(assert (= (and b!1183098 res!534645) b!1183103))

(assert (= (and b!1183103 res!534646) b!1183100))

(assert (= (and b!1183100 res!534644) b!1183102))

(assert (= (and b!1183102 res!534642) b!1183097))

(assert (= (and b!1183097 res!534643) b!1183095))

(assert (= b!1183092 b!1183104))

(assert (= b!1183094 b!1183092))

(assert (= (and start!104896 (is-Cons!11810 rules!4386)) b!1183094))

(assert (= b!1183099 b!1183105))

(assert (= b!1183096 b!1183099))

(assert (= b!1183101 b!1183096))

(assert (= (and start!104896 (is-Cons!11811 l!6534)) b!1183101))

(declare-fun m!1359069 () Bool)

(assert (=> b!1183103 m!1359069))

(declare-fun m!1359071 () Bool)

(assert (=> b!1183097 m!1359071))

(declare-fun m!1359073 () Bool)

(assert (=> b!1183099 m!1359073))

(declare-fun m!1359075 () Bool)

(assert (=> b!1183099 m!1359075))

(declare-fun m!1359077 () Bool)

(assert (=> b!1183093 m!1359077))

(declare-fun m!1359079 () Bool)

(assert (=> b!1183098 m!1359079))

(declare-fun m!1359081 () Bool)

(assert (=> b!1183101 m!1359081))

(declare-fun m!1359083 () Bool)

(assert (=> b!1183100 m!1359083))

(declare-fun m!1359085 () Bool)

(assert (=> b!1183092 m!1359085))

(declare-fun m!1359087 () Bool)

(assert (=> b!1183092 m!1359087))

(declare-fun m!1359089 () Bool)

(assert (=> b!1183095 m!1359089))

(declare-fun m!1359091 () Bool)

(assert (=> b!1183096 m!1359091))

(push 1)

(assert (not b_next!28987))

(assert (not b!1183103))

(assert b_and!81321)

(assert b_and!81317)

(assert (not b!1183096))

(assert (not b!1183101))

(assert b_and!81323)

(assert (not b!1183100))

(assert (not b!1183093))

(assert (not b_next!28981))

(assert (not b_next!28983))

(assert (not b!1183095))

(assert (not b!1183097))

(assert (not b!1183094))

(assert (not b!1183099))

(assert (not b!1183092))

(assert b_and!81319)

(assert (not b!1183098))

(assert (not b_next!28985))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!28983))

(assert (not b_next!28987))

(assert b_and!81321)

(assert b_and!81317)

(assert b_and!81319)

(assert (not b_next!28985))

(assert b_and!81323)

(assert (not b_next!28981))

(check-sat)

(pop 1)

