; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!274970 () Bool)

(assert start!274970)

(declare-fun b!2831139 () Bool)

(declare-fun b_free!81365 () Bool)

(declare-fun b_next!82069 () Bool)

(assert (=> b!2831139 (= b_free!81365 (not b_next!82069))))

(declare-fun tp!904691 () Bool)

(declare-fun b_and!207027 () Bool)

(assert (=> b!2831139 (= tp!904691 b_and!207027)))

(declare-fun b_free!81367 () Bool)

(declare-fun b_next!82071 () Bool)

(assert (=> b!2831139 (= b_free!81367 (not b_next!82071))))

(declare-fun tp!904697 () Bool)

(declare-fun b_and!207029 () Bool)

(assert (=> b!2831139 (= tp!904697 b_and!207029)))

(declare-fun b!2831127 () Bool)

(declare-fun b_free!81369 () Bool)

(declare-fun b_next!82073 () Bool)

(assert (=> b!2831127 (= b_free!81369 (not b_next!82073))))

(declare-fun tp!904696 () Bool)

(declare-fun b_and!207031 () Bool)

(assert (=> b!2831127 (= tp!904696 b_and!207031)))

(declare-fun b_free!81371 () Bool)

(declare-fun b_next!82075 () Bool)

(assert (=> b!2831127 (= b_free!81371 (not b_next!82075))))

(declare-fun tp!904695 () Bool)

(declare-fun b_and!207033 () Bool)

(assert (=> b!2831127 (= tp!904695 b_and!207033)))

(declare-fun e!1792390 () Bool)

(assert (=> b!2831127 (= e!1792390 (and tp!904696 tp!904695))))

(declare-fun res!1178539 () Bool)

(declare-fun e!1792394 () Bool)

(assert (=> start!274970 (=> (not res!1178539) (not e!1792394))))

(declare-datatypes ((LexerInterface!4589 0))(
  ( (LexerInterfaceExt!4586 (__x!22196 Int)) (Lexer!4587) )
))
(declare-fun thiss!11007 () LexerInterface!4589)

(assert (=> start!274970 (= res!1178539 (is-Lexer!4587 thiss!11007))))

(assert (=> start!274970 e!1792394))

(assert (=> start!274970 true))

(declare-fun e!1792393 () Bool)

(assert (=> start!274970 e!1792393))

(declare-fun e!1792398 () Bool)

(assert (=> start!274970 e!1792398))

(declare-fun b!2831128 () Bool)

(declare-fun res!1178535 () Bool)

(assert (=> b!2831128 (=> (not res!1178535) (not e!1792394))))

(declare-datatypes ((List!33483 0))(
  ( (Nil!33359) (Cons!33359 (h!38779 (_ BitVec 16)) (t!231360 List!33483)) )
))
(declare-datatypes ((TokenValue!5229 0))(
  ( (FloatLiteralValue!10458 (text!37048 List!33483)) (TokenValueExt!5228 (__x!22197 Int)) (Broken!26145 (value!160816 List!33483)) (Object!5352) (End!5229) (Def!5229) (Underscore!5229) (Match!5229) (Else!5229) (Error!5229) (Case!5229) (If!5229) (Extends!5229) (Abstract!5229) (Class!5229) (Val!5229) (DelimiterValue!10458 (del!5289 List!33483)) (KeywordValue!5235 (value!160817 List!33483)) (CommentValue!10458 (value!160818 List!33483)) (WhitespaceValue!10458 (value!160819 List!33483)) (IndentationValue!5229 (value!160820 List!33483)) (String!36668) (Int32!5229) (Broken!26146 (value!160821 List!33483)) (Boolean!5230) (Unit!47353) (OperatorValue!5232 (op!5289 List!33483)) (IdentifierValue!10458 (value!160822 List!33483)) (IdentifierValue!10459 (value!160823 List!33483)) (WhitespaceValue!10459 (value!160824 List!33483)) (True!10458) (False!10458) (Broken!26147 (value!160825 List!33483)) (Broken!26148 (value!160826 List!33483)) (True!10459) (RightBrace!5229) (RightBracket!5229) (Colon!5229) (Null!5229) (Comma!5229) (LeftBracket!5229) (False!10459) (LeftBrace!5229) (ImaginaryLiteralValue!5229 (text!37049 List!33483)) (StringLiteralValue!15687 (value!160827 List!33483)) (EOFValue!5229 (value!160828 List!33483)) (IdentValue!5229 (value!160829 List!33483)) (DelimiterValue!10459 (value!160830 List!33483)) (DedentValue!5229 (value!160831 List!33483)) (NewLineValue!5229 (value!160832 List!33483)) (IntegerValue!15687 (value!160833 (_ BitVec 32)) (text!37050 List!33483)) (IntegerValue!15688 (value!160834 Int) (text!37051 List!33483)) (Times!5229) (Or!5229) (Equal!5229) (Minus!5229) (Broken!26149 (value!160835 List!33483)) (And!5229) (Div!5229) (LessEqual!5229) (Mod!5229) (Concat!13619) (Not!5229) (Plus!5229) (SpaceValue!5229 (value!160836 List!33483)) (IntegerValue!15689 (value!160837 Int) (text!37052 List!33483)) (StringLiteralValue!15688 (text!37053 List!33483)) (FloatLiteralValue!10459 (text!37054 List!33483)) (BytesLiteralValue!5229 (value!160838 List!33483)) (CommentValue!10459 (value!160839 List!33483)) (StringLiteralValue!15689 (value!160840 List!33483)) (ErrorTokenValue!5229 (msg!5290 List!33483)) )
))
(declare-datatypes ((C!16962 0))(
  ( (C!16963 (val!10493 Int)) )
))
(declare-datatypes ((List!33484 0))(
  ( (Nil!33360) (Cons!33360 (h!38780 C!16962) (t!231361 List!33484)) )
))
(declare-datatypes ((IArray!20711 0))(
  ( (IArray!20712 (innerList!10413 List!33484)) )
))
(declare-datatypes ((Conc!10353 0))(
  ( (Node!10353 (left!25172 Conc!10353) (right!25502 Conc!10353) (csize!20936 Int) (cheight!10564 Int)) (Leaf!15761 (xs!13465 IArray!20711) (csize!20937 Int)) (Empty!10353) )
))
(declare-datatypes ((Regex!8390 0))(
  ( (ElementMatch!8390 (c!457875 C!16962)) (Concat!13620 (regOne!17292 Regex!8390) (regTwo!17292 Regex!8390)) (EmptyExpr!8390) (Star!8390 (reg!8719 Regex!8390)) (EmptyLang!8390) (Union!8390 (regOne!17293 Regex!8390) (regTwo!17293 Regex!8390)) )
))
(declare-datatypes ((String!36669 0))(
  ( (String!36670 (value!160841 String)) )
))
(declare-datatypes ((BalanceConc!20344 0))(
  ( (BalanceConc!20345 (c!457876 Conc!10353)) )
))
(declare-datatypes ((TokenValueInjection!9886 0))(
  ( (TokenValueInjection!9887 (toValue!7025 Int) (toChars!6884 Int)) )
))
(declare-datatypes ((Rule!9798 0))(
  ( (Rule!9799 (regex!4999 Regex!8390) (tag!5503 String!36669) (isSeparator!4999 Bool) (transformation!4999 TokenValueInjection!9886)) )
))
(declare-datatypes ((Token!9400 0))(
  ( (Token!9401 (value!160842 TokenValue!5229) (rule!7427 Rule!9798) (size!25962 Int) (originalCharacters!5731 List!33484)) )
))
(declare-datatypes ((List!33485 0))(
  ( (Nil!33361) (Cons!33361 (h!38781 Token!9400) (t!231362 List!33485)) )
))
(declare-fun l!4019 () List!33485)

(declare-datatypes ((List!33486 0))(
  ( (Nil!33362) (Cons!33362 (h!38782 Rule!9798) (t!231363 List!33486)) )
))
(declare-fun rules!1047 () List!33486)

(declare-fun rulesProduceEachTokenIndividuallyList!1632 (LexerInterface!4589 List!33486 List!33485) Bool)

(assert (=> b!2831128 (= res!1178535 (rulesProduceEachTokenIndividuallyList!1632 thiss!11007 rules!1047 l!4019))))

(declare-fun b!2831129 () Bool)

(declare-fun res!1178537 () Bool)

(assert (=> b!2831129 (=> (not res!1178537) (not e!1792394))))

(assert (=> b!2831129 (= res!1178537 (and (is-Cons!33361 l!4019) (is-Cons!33361 (t!231362 l!4019))))))

(declare-fun b!2831130 () Bool)

(declare-fun res!1178538 () Bool)

(assert (=> b!2831130 (=> (not res!1178538) (not e!1792394))))

(declare-datatypes ((IArray!20713 0))(
  ( (IArray!20714 (innerList!10414 List!33485)) )
))
(declare-datatypes ((Conc!10354 0))(
  ( (Node!10354 (left!25173 Conc!10354) (right!25503 Conc!10354) (csize!20938 Int) (cheight!10565 Int)) (Leaf!15762 (xs!13466 IArray!20713) (csize!20939 Int)) (Empty!10354) )
))
(declare-datatypes ((BalanceConc!20346 0))(
  ( (BalanceConc!20347 (c!457877 Conc!10354)) )
))
(declare-fun rulesProduceEachTokenIndividually!1105 (LexerInterface!4589 List!33486 BalanceConc!20346) Bool)

(declare-fun seqFromList!3245 (List!33485) BalanceConc!20346)

(assert (=> b!2831130 (= res!1178538 (rulesProduceEachTokenIndividually!1105 thiss!11007 rules!1047 (seqFromList!3245 l!4019)))))

(declare-fun b!2831131 () Bool)

(declare-fun res!1178536 () Bool)

(assert (=> b!2831131 (=> (not res!1178536) (not e!1792394))))

(declare-fun rulesInvariant!4005 (LexerInterface!4589 List!33486) Bool)

(assert (=> b!2831131 (= res!1178536 (rulesInvariant!4005 thiss!11007 rules!1047))))

(declare-fun b!2831132 () Bool)

(declare-fun e!1792395 () Bool)

(declare-fun tp!904692 () Bool)

(declare-fun e!1792392 () Bool)

(declare-fun inv!45310 (String!36669) Bool)

(declare-fun inv!45313 (TokenValueInjection!9886) Bool)

(assert (=> b!2831132 (= e!1792395 (and tp!904692 (inv!45310 (tag!5503 (h!38782 rules!1047))) (inv!45313 (transformation!4999 (h!38782 rules!1047))) e!1792392))))

(declare-fun b!2831133 () Bool)

(assert (=> b!2831133 (= e!1792394 (not true))))

(declare-fun rulesProduceIndividualToken!2121 (LexerInterface!4589 List!33486 Token!9400) Bool)

(assert (=> b!2831133 (rulesProduceIndividualToken!2121 thiss!11007 rules!1047 (h!38781 (t!231362 l!4019)))))

(declare-datatypes ((Unit!47354 0))(
  ( (Unit!47355) )
))
(declare-fun lt!1010093 () Unit!47354)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!739 (LexerInterface!4589 List!33486 List!33485 Token!9400) Unit!47354)

(assert (=> b!2831133 (= lt!1010093 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!739 thiss!11007 rules!1047 l!4019 (h!38781 (t!231362 l!4019))))))

(assert (=> b!2831133 (rulesProduceIndividualToken!2121 thiss!11007 rules!1047 (h!38781 l!4019))))

(declare-fun lt!1010092 () Unit!47354)

(assert (=> b!2831133 (= lt!1010092 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!739 thiss!11007 rules!1047 l!4019 (h!38781 l!4019)))))

(declare-fun b!2831134 () Bool)

(declare-fun e!1792391 () Bool)

(declare-fun tp!904699 () Bool)

(declare-fun e!1792397 () Bool)

(declare-fun inv!21 (TokenValue!5229) Bool)

(assert (=> b!2831134 (= e!1792391 (and (inv!21 (value!160842 (h!38781 l!4019))) e!1792397 tp!904699))))

(declare-fun tp!904698 () Bool)

(declare-fun b!2831135 () Bool)

(declare-fun inv!45314 (Token!9400) Bool)

(assert (=> b!2831135 (= e!1792398 (and (inv!45314 (h!38781 l!4019)) e!1792391 tp!904698))))

(declare-fun b!2831136 () Bool)

(declare-fun tp!904693 () Bool)

(assert (=> b!2831136 (= e!1792397 (and tp!904693 (inv!45310 (tag!5503 (rule!7427 (h!38781 l!4019)))) (inv!45313 (transformation!4999 (rule!7427 (h!38781 l!4019)))) e!1792390))))

(declare-fun b!2831137 () Bool)

(declare-fun tp!904694 () Bool)

(assert (=> b!2831137 (= e!1792393 (and e!1792395 tp!904694))))

(declare-fun b!2831138 () Bool)

(declare-fun res!1178534 () Bool)

(assert (=> b!2831138 (=> (not res!1178534) (not e!1792394))))

(declare-fun isEmpty!18396 (List!33486) Bool)

(assert (=> b!2831138 (= res!1178534 (not (isEmpty!18396 rules!1047)))))

(assert (=> b!2831139 (= e!1792392 (and tp!904691 tp!904697))))

(assert (= (and start!274970 res!1178539) b!2831138))

(assert (= (and b!2831138 res!1178534) b!2831131))

(assert (= (and b!2831131 res!1178536) b!2831128))

(assert (= (and b!2831128 res!1178535) b!2831130))

(assert (= (and b!2831130 res!1178538) b!2831129))

(assert (= (and b!2831129 res!1178537) b!2831133))

(assert (= b!2831132 b!2831139))

(assert (= b!2831137 b!2831132))

(assert (= (and start!274970 (is-Cons!33362 rules!1047)) b!2831137))

(assert (= b!2831136 b!2831127))

(assert (= b!2831134 b!2831136))

(assert (= b!2831135 b!2831134))

(assert (= (and start!274970 (is-Cons!33361 l!4019)) b!2831135))

(declare-fun m!3260703 () Bool)

(assert (=> b!2831132 m!3260703))

(declare-fun m!3260705 () Bool)

(assert (=> b!2831132 m!3260705))

(declare-fun m!3260707 () Bool)

(assert (=> b!2831130 m!3260707))

(assert (=> b!2831130 m!3260707))

(declare-fun m!3260709 () Bool)

(assert (=> b!2831130 m!3260709))

(declare-fun m!3260711 () Bool)

(assert (=> b!2831138 m!3260711))

(declare-fun m!3260713 () Bool)

(assert (=> b!2831134 m!3260713))

(declare-fun m!3260715 () Bool)

(assert (=> b!2831131 m!3260715))

(declare-fun m!3260717 () Bool)

(assert (=> b!2831128 m!3260717))

(declare-fun m!3260719 () Bool)

(assert (=> b!2831136 m!3260719))

(declare-fun m!3260721 () Bool)

(assert (=> b!2831136 m!3260721))

(declare-fun m!3260723 () Bool)

(assert (=> b!2831133 m!3260723))

(declare-fun m!3260725 () Bool)

(assert (=> b!2831133 m!3260725))

(declare-fun m!3260727 () Bool)

(assert (=> b!2831133 m!3260727))

(declare-fun m!3260729 () Bool)

(assert (=> b!2831133 m!3260729))

(declare-fun m!3260731 () Bool)

(assert (=> b!2831135 m!3260731))

(push 1)

(assert (not b!2831133))

(assert (not b!2831136))

(assert b_and!207031)

(assert (not b!2831137))

(assert (not b!2831130))

(assert b_and!207033)

(assert (not b!2831128))

(assert (not b!2831138))

(assert (not b!2831134))

(assert (not b!2831135))

(assert b_and!207027)

(assert (not b_next!82073))

(assert (not b!2831131))

(assert (not b_next!82069))

(assert (not b_next!82071))

(assert (not b_next!82075))

(assert b_and!207029)

(assert (not b!2831132))

(check-sat)

(pop 1)

(push 1)

(assert b_and!207031)

(assert (not b_next!82069))

(assert b_and!207033)

(assert b_and!207029)

(assert b_and!207027)

(assert (not b_next!82073))

(assert (not b_next!82071))

(assert (not b_next!82075))

(check-sat)

(pop 1)

