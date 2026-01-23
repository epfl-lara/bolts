; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!146796 () Bool)

(assert start!146796)

(declare-fun b!1573090 () Bool)

(declare-fun b_free!42111 () Bool)

(declare-fun b_next!42815 () Bool)

(assert (=> b!1573090 (= b_free!42111 (not b_next!42815))))

(declare-fun tp!462670 () Bool)

(declare-fun b_and!109917 () Bool)

(assert (=> b!1573090 (= tp!462670 b_and!109917)))

(declare-fun b_free!42113 () Bool)

(declare-fun b_next!42817 () Bool)

(assert (=> b!1573090 (= b_free!42113 (not b_next!42817))))

(declare-fun tp!462667 () Bool)

(declare-fun b_and!109919 () Bool)

(assert (=> b!1573090 (= tp!462667 b_and!109919)))

(declare-fun b!1573094 () Bool)

(declare-fun b_free!42115 () Bool)

(declare-fun b_next!42819 () Bool)

(assert (=> b!1573094 (= b_free!42115 (not b_next!42819))))

(declare-fun tp!462673 () Bool)

(declare-fun b_and!109921 () Bool)

(assert (=> b!1573094 (= tp!462673 b_and!109921)))

(declare-fun b_free!42117 () Bool)

(declare-fun b_next!42821 () Bool)

(assert (=> b!1573094 (= b_free!42117 (not b_next!42821))))

(declare-fun tp!462672 () Bool)

(declare-fun b_and!109923 () Bool)

(assert (=> b!1573094 (= tp!462672 b_and!109923)))

(declare-fun b!1573085 () Bool)

(declare-fun res!701085 () Bool)

(declare-fun e!1010115 () Bool)

(assert (=> b!1573085 (=> (not res!701085) (not e!1010115))))

(declare-datatypes ((List!17203 0))(
  ( (Nil!17133) (Cons!17133 (h!22534 (_ BitVec 16)) (t!143106 List!17203)) )
))
(declare-datatypes ((TokenValue!3096 0))(
  ( (FloatLiteralValue!6192 (text!22117 List!17203)) (TokenValueExt!3095 (__x!11494 Int)) (Broken!15480 (value!95319 List!17203)) (Object!3165) (End!3096) (Def!3096) (Underscore!3096) (Match!3096) (Else!3096) (Error!3096) (Case!3096) (If!3096) (Extends!3096) (Abstract!3096) (Class!3096) (Val!3096) (DelimiterValue!6192 (del!3156 List!17203)) (KeywordValue!3102 (value!95320 List!17203)) (CommentValue!6192 (value!95321 List!17203)) (WhitespaceValue!6192 (value!95322 List!17203)) (IndentationValue!3096 (value!95323 List!17203)) (String!19813) (Int32!3096) (Broken!15481 (value!95324 List!17203)) (Boolean!3097) (Unit!26545) (OperatorValue!3099 (op!3156 List!17203)) (IdentifierValue!6192 (value!95325 List!17203)) (IdentifierValue!6193 (value!95326 List!17203)) (WhitespaceValue!6193 (value!95327 List!17203)) (True!6192) (False!6192) (Broken!15482 (value!95328 List!17203)) (Broken!15483 (value!95329 List!17203)) (True!6193) (RightBrace!3096) (RightBracket!3096) (Colon!3096) (Null!3096) (Comma!3096) (LeftBracket!3096) (False!6193) (LeftBrace!3096) (ImaginaryLiteralValue!3096 (text!22118 List!17203)) (StringLiteralValue!9288 (value!95330 List!17203)) (EOFValue!3096 (value!95331 List!17203)) (IdentValue!3096 (value!95332 List!17203)) (DelimiterValue!6193 (value!95333 List!17203)) (DedentValue!3096 (value!95334 List!17203)) (NewLineValue!3096 (value!95335 List!17203)) (IntegerValue!9288 (value!95336 (_ BitVec 32)) (text!22119 List!17203)) (IntegerValue!9289 (value!95337 Int) (text!22120 List!17203)) (Times!3096) (Or!3096) (Equal!3096) (Minus!3096) (Broken!15484 (value!95338 List!17203)) (And!3096) (Div!3096) (LessEqual!3096) (Mod!3096) (Concat!7430) (Not!3096) (Plus!3096) (SpaceValue!3096 (value!95339 List!17203)) (IntegerValue!9290 (value!95340 Int) (text!22121 List!17203)) (StringLiteralValue!9289 (text!22122 List!17203)) (FloatLiteralValue!6193 (text!22123 List!17203)) (BytesLiteralValue!3096 (value!95341 List!17203)) (CommentValue!6193 (value!95342 List!17203)) (StringLiteralValue!9290 (value!95343 List!17203)) (ErrorTokenValue!3096 (msg!3157 List!17203)) )
))
(declare-datatypes ((C!8842 0))(
  ( (C!8843 (val!5017 Int)) )
))
(declare-datatypes ((List!17204 0))(
  ( (Nil!17134) (Cons!17134 (h!22535 C!8842) (t!143107 List!17204)) )
))
(declare-datatypes ((IArray!11325 0))(
  ( (IArray!11326 (innerList!5720 List!17204)) )
))
(declare-datatypes ((Conc!5660 0))(
  ( (Node!5660 (left!13869 Conc!5660) (right!14199 Conc!5660) (csize!11550 Int) (cheight!5871 Int)) (Leaf!8384 (xs!8464 IArray!11325) (csize!11551 Int)) (Empty!5660) )
))
(declare-datatypes ((BalanceConc!11264 0))(
  ( (BalanceConc!11265 (c!255147 Conc!5660)) )
))
(declare-datatypes ((Regex!4334 0))(
  ( (ElementMatch!4334 (c!255148 C!8842)) (Concat!7431 (regOne!9180 Regex!4334) (regTwo!9180 Regex!4334)) (EmptyExpr!4334) (Star!4334 (reg!4663 Regex!4334)) (EmptyLang!4334) (Union!4334 (regOne!9181 Regex!4334) (regTwo!9181 Regex!4334)) )
))
(declare-datatypes ((String!19814 0))(
  ( (String!19815 (value!95344 String)) )
))
(declare-datatypes ((TokenValueInjection!5852 0))(
  ( (TokenValueInjection!5853 (toValue!4401 Int) (toChars!4260 Int)) )
))
(declare-datatypes ((Rule!5812 0))(
  ( (Rule!5813 (regex!3006 Regex!4334) (tag!3272 String!19814) (isSeparator!3006 Bool) (transformation!3006 TokenValueInjection!5852)) )
))
(declare-datatypes ((Token!5578 0))(
  ( (Token!5579 (value!95345 TokenValue!3096) (rule!4798 Rule!5812) (size!13859 Int) (originalCharacters!3820 List!17204)) )
))
(declare-datatypes ((List!17205 0))(
  ( (Nil!17135) (Cons!17135 (h!22536 Token!5578) (t!143108 List!17205)) )
))
(declare-fun tokens!457 () List!17205)

(assert (=> b!1573085 (= res!701085 (and (not (is-Nil!17135 tokens!457)) (is-Nil!17135 (t!143108 tokens!457))))))

(declare-fun b!1573086 () Bool)

(declare-fun e!1010114 () Bool)

(declare-fun e!1010119 () Bool)

(declare-fun tp!462665 () Bool)

(assert (=> b!1573086 (= e!1010114 (and e!1010119 tp!462665))))

(declare-fun e!1010113 () Bool)

(declare-fun b!1573087 () Bool)

(declare-fun e!1010116 () Bool)

(declare-fun tp!462671 () Bool)

(declare-fun inv!22550 (String!19814) Bool)

(declare-fun inv!22553 (TokenValueInjection!5852) Bool)

(assert (=> b!1573087 (= e!1010113 (and tp!462671 (inv!22550 (tag!3272 (rule!4798 (h!22536 tokens!457)))) (inv!22553 (transformation!3006 (rule!4798 (h!22536 tokens!457)))) e!1010116))))

(declare-fun b!1573088 () Bool)

(declare-fun res!701087 () Bool)

(assert (=> b!1573088 (=> (not res!701087) (not e!1010115))))

(declare-datatypes ((List!17206 0))(
  ( (Nil!17136) (Cons!17136 (h!22537 Rule!5812) (t!143109 List!17206)) )
))
(declare-fun rules!1846 () List!17206)

(declare-datatypes ((LexerInterface!2635 0))(
  ( (LexerInterfaceExt!2632 (__x!11495 Int)) (Lexer!2633) )
))
(declare-fun thiss!17113 () LexerInterface!2635)

(declare-fun rulesProduceEachTokenIndividuallyList!837 (LexerInterface!2635 List!17206 List!17205) Bool)

(assert (=> b!1573088 (= res!701087 (rulesProduceEachTokenIndividuallyList!837 thiss!17113 rules!1846 tokens!457))))

(declare-fun res!701089 () Bool)

(assert (=> start!146796 (=> (not res!701089) (not e!1010115))))

(assert (=> start!146796 (= res!701089 (is-Lexer!2633 thiss!17113))))

(assert (=> start!146796 e!1010115))

(assert (=> start!146796 true))

(assert (=> start!146796 e!1010114))

(declare-fun e!1010118 () Bool)

(assert (=> start!146796 e!1010118))

(declare-fun b!1573089 () Bool)

(declare-fun res!701086 () Bool)

(assert (=> b!1573089 (=> (not res!701086) (not e!1010115))))

(declare-fun rulesInvariant!2304 (LexerInterface!2635 List!17206) Bool)

(assert (=> b!1573089 (= res!701086 (rulesInvariant!2304 thiss!17113 rules!1846))))

(assert (=> b!1573090 (= e!1010116 (and tp!462670 tp!462667))))

(declare-fun b!1573091 () Bool)

(declare-fun res!701090 () Bool)

(assert (=> b!1573091 (=> (not res!701090) (not e!1010115))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!328 (LexerInterface!2635 List!17205 List!17206) Bool)

(assert (=> b!1573091 (= res!701090 (tokensListTwoByTwoPredicateSeparableList!328 thiss!17113 tokens!457 rules!1846))))

(declare-fun e!1010121 () Bool)

(declare-fun b!1573092 () Bool)

(declare-fun tp!462666 () Bool)

(declare-fun inv!21 (TokenValue!3096) Bool)

(assert (=> b!1573092 (= e!1010121 (and (inv!21 (value!95345 (h!22536 tokens!457))) e!1010113 tp!462666))))

(declare-fun b!1573093 () Bool)

(assert (=> b!1573093 (= e!1010115 false)))

(declare-datatypes ((IArray!11327 0))(
  ( (IArray!11328 (innerList!5721 List!17205)) )
))
(declare-datatypes ((Conc!5661 0))(
  ( (Node!5661 (left!13870 Conc!5661) (right!14200 Conc!5661) (csize!11552 Int) (cheight!5872 Int)) (Leaf!8385 (xs!8465 IArray!11327) (csize!11553 Int)) (Empty!5661) )
))
(declare-datatypes ((BalanceConc!11266 0))(
  ( (BalanceConc!11267 (c!255149 Conc!5661)) )
))
(declare-fun lt!546891 () BalanceConc!11266)

(declare-fun seqFromList!1803 (List!17205) BalanceConc!11266)

(assert (=> b!1573093 (= lt!546891 (seqFromList!1803 tokens!457))))

(declare-fun e!1010123 () Bool)

(assert (=> b!1573094 (= e!1010123 (and tp!462673 tp!462672))))

(declare-fun tp!462668 () Bool)

(declare-fun b!1573095 () Bool)

(declare-fun inv!22554 (Token!5578) Bool)

(assert (=> b!1573095 (= e!1010118 (and (inv!22554 (h!22536 tokens!457)) e!1010121 tp!462668))))

(declare-fun b!1573096 () Bool)

(declare-fun res!701088 () Bool)

(assert (=> b!1573096 (=> (not res!701088) (not e!1010115))))

(declare-fun isEmpty!10256 (List!17206) Bool)

(assert (=> b!1573096 (= res!701088 (not (isEmpty!10256 rules!1846)))))

(declare-fun tp!462669 () Bool)

(declare-fun b!1573097 () Bool)

(assert (=> b!1573097 (= e!1010119 (and tp!462669 (inv!22550 (tag!3272 (h!22537 rules!1846))) (inv!22553 (transformation!3006 (h!22537 rules!1846))) e!1010123))))

(assert (= (and start!146796 res!701089) b!1573096))

(assert (= (and b!1573096 res!701088) b!1573089))

(assert (= (and b!1573089 res!701086) b!1573088))

(assert (= (and b!1573088 res!701087) b!1573091))

(assert (= (and b!1573091 res!701090) b!1573085))

(assert (= (and b!1573085 res!701085) b!1573093))

(assert (= b!1573097 b!1573094))

(assert (= b!1573086 b!1573097))

(assert (= (and start!146796 (is-Cons!17136 rules!1846)) b!1573086))

(assert (= b!1573087 b!1573090))

(assert (= b!1573092 b!1573087))

(assert (= b!1573095 b!1573092))

(assert (= (and start!146796 (is-Cons!17135 tokens!457)) b!1573095))

(declare-fun m!1852169 () Bool)

(assert (=> b!1573092 m!1852169))

(declare-fun m!1852171 () Bool)

(assert (=> b!1573095 m!1852171))

(declare-fun m!1852173 () Bool)

(assert (=> b!1573091 m!1852173))

(declare-fun m!1852175 () Bool)

(assert (=> b!1573087 m!1852175))

(declare-fun m!1852177 () Bool)

(assert (=> b!1573087 m!1852177))

(declare-fun m!1852179 () Bool)

(assert (=> b!1573088 m!1852179))

(declare-fun m!1852181 () Bool)

(assert (=> b!1573097 m!1852181))

(declare-fun m!1852183 () Bool)

(assert (=> b!1573097 m!1852183))

(declare-fun m!1852185 () Bool)

(assert (=> b!1573093 m!1852185))

(declare-fun m!1852187 () Bool)

(assert (=> b!1573089 m!1852187))

(declare-fun m!1852189 () Bool)

(assert (=> b!1573096 m!1852189))

(push 1)

(assert (not b!1573095))

(assert (not b!1573092))

(assert b_and!109919)

(assert (not b!1573089))

(assert (not b_next!42815))

(assert (not b!1573086))

(assert (not b_next!42821))

(assert (not b!1573093))

(assert (not b!1573096))

(assert (not b!1573091))

(assert (not b_next!42819))

(assert (not b!1573088))

(assert (not b_next!42817))

(assert (not b!1573097))

(assert b_and!109923)

(assert (not b!1573087))

(assert b_and!109921)

(assert b_and!109917)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!42819))

(assert (not b_next!42817))

(assert b_and!109923)

(assert b_and!109919)

(assert (not b_next!42815))

(assert (not b_next!42821))

(assert b_and!109921)

(assert b_and!109917)

(check-sat)

(pop 1)

