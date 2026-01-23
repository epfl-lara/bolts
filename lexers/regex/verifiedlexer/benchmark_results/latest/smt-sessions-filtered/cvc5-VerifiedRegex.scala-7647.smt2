; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!403724 () Bool)

(assert start!403724)

(declare-fun b!4223593 () Bool)

(declare-fun b_free!124243 () Bool)

(declare-fun b_next!124947 () Bool)

(assert (=> b!4223593 (= b_free!124243 (not b_next!124947))))

(declare-fun tp!1292673 () Bool)

(declare-fun b_and!333453 () Bool)

(assert (=> b!4223593 (= tp!1292673 b_and!333453)))

(declare-fun b_free!124245 () Bool)

(declare-fun b_next!124949 () Bool)

(assert (=> b!4223593 (= b_free!124245 (not b_next!124949))))

(declare-fun tp!1292667 () Bool)

(declare-fun b_and!333455 () Bool)

(assert (=> b!4223593 (= tp!1292667 b_and!333455)))

(declare-fun b!4223585 () Bool)

(declare-fun b_free!124247 () Bool)

(declare-fun b_next!124951 () Bool)

(assert (=> b!4223585 (= b_free!124247 (not b_next!124951))))

(declare-fun tp!1292674 () Bool)

(declare-fun b_and!333457 () Bool)

(assert (=> b!4223585 (= tp!1292674 b_and!333457)))

(declare-fun b_free!124249 () Bool)

(declare-fun b_next!124953 () Bool)

(assert (=> b!4223585 (= b_free!124249 (not b_next!124953))))

(declare-fun tp!1292671 () Bool)

(declare-fun b_and!333459 () Bool)

(assert (=> b!4223585 (= tp!1292671 b_and!333459)))

(declare-fun b!4223581 () Bool)

(declare-fun res!1736346 () Bool)

(declare-fun e!2622281 () Bool)

(assert (=> b!4223581 (=> (not res!1736346) (not e!2622281))))

(declare-datatypes ((List!46624 0))(
  ( (Nil!46500) (Cons!46500 (h!51920 (_ BitVec 16)) (t!349209 List!46624)) )
))
(declare-datatypes ((TokenValue!8037 0))(
  ( (FloatLiteralValue!16074 (text!56704 List!46624)) (TokenValueExt!8036 (__x!28297 Int)) (Broken!40185 (value!243002 List!46624)) (Object!8160) (End!8037) (Def!8037) (Underscore!8037) (Match!8037) (Else!8037) (Error!8037) (Case!8037) (If!8037) (Extends!8037) (Abstract!8037) (Class!8037) (Val!8037) (DelimiterValue!16074 (del!8097 List!46624)) (KeywordValue!8043 (value!243003 List!46624)) (CommentValue!16074 (value!243004 List!46624)) (WhitespaceValue!16074 (value!243005 List!46624)) (IndentationValue!8037 (value!243006 List!46624)) (String!54056) (Int32!8037) (Broken!40186 (value!243007 List!46624)) (Boolean!8038) (Unit!65659) (OperatorValue!8040 (op!8097 List!46624)) (IdentifierValue!16074 (value!243008 List!46624)) (IdentifierValue!16075 (value!243009 List!46624)) (WhitespaceValue!16075 (value!243010 List!46624)) (True!16074) (False!16074) (Broken!40187 (value!243011 List!46624)) (Broken!40188 (value!243012 List!46624)) (True!16075) (RightBrace!8037) (RightBracket!8037) (Colon!8037) (Null!8037) (Comma!8037) (LeftBracket!8037) (False!16075) (LeftBrace!8037) (ImaginaryLiteralValue!8037 (text!56705 List!46624)) (StringLiteralValue!24111 (value!243013 List!46624)) (EOFValue!8037 (value!243014 List!46624)) (IdentValue!8037 (value!243015 List!46624)) (DelimiterValue!16075 (value!243016 List!46624)) (DedentValue!8037 (value!243017 List!46624)) (NewLineValue!8037 (value!243018 List!46624)) (IntegerValue!24111 (value!243019 (_ BitVec 32)) (text!56706 List!46624)) (IntegerValue!24112 (value!243020 Int) (text!56707 List!46624)) (Times!8037) (Or!8037) (Equal!8037) (Minus!8037) (Broken!40189 (value!243021 List!46624)) (And!8037) (Div!8037) (LessEqual!8037) (Mod!8037) (Concat!20749) (Not!8037) (Plus!8037) (SpaceValue!8037 (value!243022 List!46624)) (IntegerValue!24113 (value!243023 Int) (text!56708 List!46624)) (StringLiteralValue!24112 (text!56709 List!46624)) (FloatLiteralValue!16075 (text!56710 List!46624)) (BytesLiteralValue!8037 (value!243024 List!46624)) (CommentValue!16075 (value!243025 List!46624)) (StringLiteralValue!24113 (value!243026 List!46624)) (ErrorTokenValue!8037 (msg!8098 List!46624)) )
))
(declare-datatypes ((C!25618 0))(
  ( (C!25619 (val!14971 Int)) )
))
(declare-datatypes ((List!46625 0))(
  ( (Nil!46501) (Cons!46501 (h!51921 C!25618) (t!349210 List!46625)) )
))
(declare-datatypes ((IArray!28041 0))(
  ( (IArray!28042 (innerList!14078 List!46625)) )
))
(declare-datatypes ((Conc!14018 0))(
  ( (Node!14018 (left!34565 Conc!14018) (right!34895 Conc!14018) (csize!28266 Int) (cheight!14229 Int)) (Leaf!21666 (xs!17324 IArray!28041) (csize!28267 Int)) (Empty!14018) )
))
(declare-datatypes ((BalanceConc!27630 0))(
  ( (BalanceConc!27631 (c!718473 Conc!14018)) )
))
(declare-datatypes ((TokenValueInjection!15502 0))(
  ( (TokenValueInjection!15503 (toValue!10531 Int) (toChars!10390 Int)) )
))
(declare-datatypes ((Regex!12712 0))(
  ( (ElementMatch!12712 (c!718474 C!25618)) (Concat!20750 (regOne!25936 Regex!12712) (regTwo!25936 Regex!12712)) (EmptyExpr!12712) (Star!12712 (reg!13041 Regex!12712)) (EmptyLang!12712) (Union!12712 (regOne!25937 Regex!12712) (regTwo!25937 Regex!12712)) )
))
(declare-datatypes ((String!54057 0))(
  ( (String!54058 (value!243027 String)) )
))
(declare-datatypes ((Rule!15414 0))(
  ( (Rule!15415 (regex!7807 Regex!12712) (tag!8671 String!54057) (isSeparator!7807 Bool) (transformation!7807 TokenValueInjection!15502)) )
))
(declare-datatypes ((List!46626 0))(
  ( (Nil!46502) (Cons!46502 (h!51922 Rule!15414) (t!349211 List!46626)) )
))
(declare-fun rules!4013 () List!46626)

(declare-fun r!4313 () Rule!15414)

(declare-fun contains!9630 (List!46626 Rule!15414) Bool)

(assert (=> b!4223581 (= res!1736346 (contains!9630 rules!4013 r!4313))))

(declare-fun b!4223582 () Bool)

(declare-fun e!2622286 () Bool)

(assert (=> b!4223582 (= e!2622286 true)))

(declare-datatypes ((LexerInterface!7402 0))(
  ( (LexerInterfaceExt!7399 (__x!28298 Int)) (Lexer!7400) )
))
(declare-fun thiss!26728 () LexerInterface!7402)

(declare-fun input!3561 () List!46625)

(declare-datatypes ((Token!14312 0))(
  ( (Token!14313 (value!243028 TokenValue!8037) (rule!10947 Rule!15414) (size!34132 Int) (originalCharacters!8187 List!46625)) )
))
(declare-datatypes ((tuple2!44208 0))(
  ( (tuple2!44209 (_1!25238 Token!14312) (_2!25238 List!46625)) )
))
(declare-datatypes ((Option!9993 0))(
  ( (None!9992) (Some!9992 (v!40890 tuple2!44208)) )
))
(declare-fun isEmpty!27550 (Option!9993) Bool)

(declare-fun maxPrefixOneRule!3389 (LexerInterface!7402 Rule!15414 List!46625) Option!9993)

(assert (=> b!4223582 (isEmpty!27550 (maxPrefixOneRule!3389 thiss!26728 r!4313 input!3561))))

(declare-datatypes ((Unit!65660 0))(
  ( (Unit!65661) )
))
(declare-fun lt!1502529 () Unit!65660)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!641 (LexerInterface!7402 Rule!15414 List!46626 List!46625) Unit!65660)

(assert (=> b!4223582 (= lt!1502529 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!641 thiss!26728 r!4313 (t!349211 rules!4013) input!3561))))

(declare-fun b!4223583 () Bool)

(declare-fun res!1736352 () Bool)

(assert (=> b!4223583 (=> res!1736352 e!2622286)))

(assert (=> b!4223583 (= res!1736352 (not (contains!9630 (t!349211 rules!4013) r!4313)))))

(declare-fun b!4223584 () Bool)

(declare-fun res!1736345 () Bool)

(assert (=> b!4223584 (=> (not res!1736345) (not e!2622281))))

(declare-fun isEmpty!27551 (List!46626) Bool)

(assert (=> b!4223584 (= res!1736345 (not (isEmpty!27551 rules!4013)))))

(declare-fun e!2622279 () Bool)

(assert (=> b!4223585 (= e!2622279 (and tp!1292674 tp!1292671))))

(declare-fun b!4223586 () Bool)

(assert (=> b!4223586 (= e!2622281 (not e!2622286))))

(declare-fun res!1736354 () Bool)

(assert (=> b!4223586 (=> res!1736354 e!2622286)))

(assert (=> b!4223586 (= res!1736354 (or (and (is-Cons!46502 rules!4013) (= r!4313 (h!51922 rules!4013))) (not (is-Cons!46502 rules!4013)) (= r!4313 (h!51922 rules!4013))))))

(declare-fun ruleValid!3515 (LexerInterface!7402 Rule!15414) Bool)

(assert (=> b!4223586 (ruleValid!3515 thiss!26728 r!4313)))

(declare-fun lt!1502530 () Unit!65660)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2429 (LexerInterface!7402 Rule!15414 List!46626) Unit!65660)

(assert (=> b!4223586 (= lt!1502530 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2429 thiss!26728 r!4313 rules!4013))))

(declare-fun b!4223587 () Bool)

(declare-fun res!1736349 () Bool)

(assert (=> b!4223587 (=> (not res!1736349) (not e!2622281))))

(declare-fun maxPrefix!4440 (LexerInterface!7402 List!46626 List!46625) Option!9993)

(assert (=> b!4223587 (= res!1736349 (isEmpty!27550 (maxPrefix!4440 thiss!26728 rules!4013 input!3561)))))

(declare-fun tp!1292670 () Bool)

(declare-fun e!2622282 () Bool)

(declare-fun b!4223588 () Bool)

(declare-fun e!2622280 () Bool)

(declare-fun inv!61170 (String!54057) Bool)

(declare-fun inv!61173 (TokenValueInjection!15502) Bool)

(assert (=> b!4223588 (= e!2622282 (and tp!1292670 (inv!61170 (tag!8671 (h!51922 rules!4013))) (inv!61173 (transformation!7807 (h!51922 rules!4013))) e!2622280))))

(declare-fun b!4223589 () Bool)

(declare-fun e!2622287 () Bool)

(declare-fun tp!1292668 () Bool)

(assert (=> b!4223589 (= e!2622287 (and e!2622282 tp!1292668))))

(declare-fun b!4223590 () Bool)

(declare-fun tp!1292669 () Bool)

(declare-fun e!2622285 () Bool)

(assert (=> b!4223590 (= e!2622285 (and tp!1292669 (inv!61170 (tag!8671 r!4313)) (inv!61173 (transformation!7807 r!4313)) e!2622279))))

(declare-fun res!1736350 () Bool)

(assert (=> start!403724 (=> (not res!1736350) (not e!2622281))))

(assert (=> start!403724 (= res!1736350 (is-Lexer!7400 thiss!26728))))

(assert (=> start!403724 e!2622281))

(assert (=> start!403724 true))

(assert (=> start!403724 e!2622287))

(assert (=> start!403724 e!2622285))

(declare-fun e!2622283 () Bool)

(assert (=> start!403724 e!2622283))

(declare-fun b!4223591 () Bool)

(declare-fun tp_is_empty!22387 () Bool)

(declare-fun tp!1292672 () Bool)

(assert (=> b!4223591 (= e!2622283 (and tp_is_empty!22387 tp!1292672))))

(declare-fun b!4223592 () Bool)

(declare-fun res!1736347 () Bool)

(assert (=> b!4223592 (=> res!1736347 e!2622286)))

(declare-fun rulesValidInductive!2911 (LexerInterface!7402 List!46626) Bool)

(assert (=> b!4223592 (= res!1736347 (not (rulesValidInductive!2911 thiss!26728 (t!349211 rules!4013))))))

(assert (=> b!4223593 (= e!2622280 (and tp!1292673 tp!1292667))))

(declare-fun b!4223594 () Bool)

(declare-fun res!1736348 () Bool)

(assert (=> b!4223594 (=> res!1736348 e!2622286)))

(assert (=> b!4223594 (= res!1736348 (isEmpty!27551 (t!349211 rules!4013)))))

(declare-fun b!4223595 () Bool)

(declare-fun res!1736351 () Bool)

(assert (=> b!4223595 (=> res!1736351 e!2622286)))

(assert (=> b!4223595 (= res!1736351 (not (isEmpty!27550 (maxPrefix!4440 thiss!26728 (t!349211 rules!4013) input!3561))))))

(declare-fun b!4223596 () Bool)

(declare-fun res!1736353 () Bool)

(assert (=> b!4223596 (=> (not res!1736353) (not e!2622281))))

(assert (=> b!4223596 (= res!1736353 (rulesValidInductive!2911 thiss!26728 rules!4013))))

(assert (= (and start!403724 res!1736350) b!4223584))

(assert (= (and b!4223584 res!1736345) b!4223596))

(assert (= (and b!4223596 res!1736353) b!4223581))

(assert (= (and b!4223581 res!1736346) b!4223587))

(assert (= (and b!4223587 res!1736349) b!4223586))

(assert (= (and b!4223586 (not res!1736354)) b!4223594))

(assert (= (and b!4223594 (not res!1736348)) b!4223592))

(assert (= (and b!4223592 (not res!1736347)) b!4223583))

(assert (= (and b!4223583 (not res!1736352)) b!4223595))

(assert (= (and b!4223595 (not res!1736351)) b!4223582))

(assert (= b!4223588 b!4223593))

(assert (= b!4223589 b!4223588))

(assert (= (and start!403724 (is-Cons!46502 rules!4013)) b!4223589))

(assert (= b!4223590 b!4223585))

(assert (= start!403724 b!4223590))

(assert (= (and start!403724 (is-Cons!46501 input!3561)) b!4223591))

(declare-fun m!4812075 () Bool)

(assert (=> b!4223587 m!4812075))

(assert (=> b!4223587 m!4812075))

(declare-fun m!4812077 () Bool)

(assert (=> b!4223587 m!4812077))

(declare-fun m!4812079 () Bool)

(assert (=> b!4223586 m!4812079))

(declare-fun m!4812081 () Bool)

(assert (=> b!4223586 m!4812081))

(declare-fun m!4812083 () Bool)

(assert (=> b!4223594 m!4812083))

(declare-fun m!4812085 () Bool)

(assert (=> b!4223595 m!4812085))

(assert (=> b!4223595 m!4812085))

(declare-fun m!4812087 () Bool)

(assert (=> b!4223595 m!4812087))

(declare-fun m!4812089 () Bool)

(assert (=> b!4223584 m!4812089))

(declare-fun m!4812091 () Bool)

(assert (=> b!4223596 m!4812091))

(declare-fun m!4812093 () Bool)

(assert (=> b!4223583 m!4812093))

(declare-fun m!4812095 () Bool)

(assert (=> b!4223581 m!4812095))

(declare-fun m!4812097 () Bool)

(assert (=> b!4223588 m!4812097))

(declare-fun m!4812099 () Bool)

(assert (=> b!4223588 m!4812099))

(declare-fun m!4812101 () Bool)

(assert (=> b!4223592 m!4812101))

(declare-fun m!4812103 () Bool)

(assert (=> b!4223590 m!4812103))

(declare-fun m!4812105 () Bool)

(assert (=> b!4223590 m!4812105))

(declare-fun m!4812107 () Bool)

(assert (=> b!4223582 m!4812107))

(assert (=> b!4223582 m!4812107))

(declare-fun m!4812109 () Bool)

(assert (=> b!4223582 m!4812109))

(declare-fun m!4812111 () Bool)

(assert (=> b!4223582 m!4812111))

(push 1)

(assert (not b!4223581))

(assert (not b!4223586))

(assert (not b!4223592))

(assert (not b!4223589))

(assert b_and!333459)

(assert (not b!4223588))

(assert (not b_next!124953))

(assert tp_is_empty!22387)

(assert b_and!333453)

(assert (not b!4223595))

(assert (not b!4223594))

(assert (not b!4223590))

(assert (not b!4223582))

(assert b_and!333455)

(assert (not b_next!124951))

(assert (not b!4223583))

(assert (not b!4223587))

(assert b_and!333457)

(assert (not b_next!124947))

(assert (not b_next!124949))

(assert (not b!4223591))

(assert (not b!4223596))

(assert (not b!4223584))

(check-sat)

(pop 1)

(push 1)

(assert b_and!333459)

(assert (not b_next!124949))

(assert (not b_next!124953))

(assert b_and!333453)

(assert b_and!333455)

(assert (not b_next!124951))

(assert b_and!333457)

(assert (not b_next!124947))

(check-sat)

(pop 1)

