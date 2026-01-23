; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!200338 () Bool)

(assert start!200338)

(declare-fun b!2034165 () Bool)

(declare-fun b_free!56741 () Bool)

(declare-fun b_next!57445 () Bool)

(assert (=> b!2034165 (= b_free!56741 (not b_next!57445))))

(declare-fun tp!604197 () Bool)

(declare-fun b_and!162453 () Bool)

(assert (=> b!2034165 (= tp!604197 b_and!162453)))

(declare-fun b_free!56743 () Bool)

(declare-fun b_next!57447 () Bool)

(assert (=> b!2034165 (= b_free!56743 (not b_next!57447))))

(declare-fun tp!604199 () Bool)

(declare-fun b_and!162455 () Bool)

(assert (=> b!2034165 (= tp!604199 b_and!162455)))

(declare-fun b!2034169 () Bool)

(declare-fun b_free!56745 () Bool)

(declare-fun b_next!57449 () Bool)

(assert (=> b!2034169 (= b_free!56745 (not b_next!57449))))

(declare-fun tp!604204 () Bool)

(declare-fun b_and!162457 () Bool)

(assert (=> b!2034169 (= tp!604204 b_and!162457)))

(declare-fun b_free!56747 () Bool)

(declare-fun b_next!57451 () Bool)

(assert (=> b!2034169 (= b_free!56747 (not b_next!57451))))

(declare-fun tp!604201 () Bool)

(declare-fun b_and!162459 () Bool)

(assert (=> b!2034169 (= tp!604201 b_and!162459)))

(declare-fun b!2034182 () Bool)

(declare-fun b_free!56749 () Bool)

(declare-fun b_next!57453 () Bool)

(assert (=> b!2034182 (= b_free!56749 (not b_next!57453))))

(declare-fun tp!604200 () Bool)

(declare-fun b_and!162461 () Bool)

(assert (=> b!2034182 (= tp!604200 b_and!162461)))

(declare-fun b_free!56751 () Bool)

(declare-fun b_next!57455 () Bool)

(assert (=> b!2034182 (= b_free!56751 (not b_next!57455))))

(declare-fun tp!604208 () Bool)

(declare-fun b_and!162463 () Bool)

(assert (=> b!2034182 (= tp!604208 b_and!162463)))

(declare-fun tp!604207 () Bool)

(declare-datatypes ((List!22324 0))(
  ( (Nil!22242) (Cons!22242 (h!27643 (_ BitVec 16)) (t!191095 List!22324)) )
))
(declare-datatypes ((TokenValue!4135 0))(
  ( (FloatLiteralValue!8270 (text!29390 List!22324)) (TokenValueExt!4134 (__x!13768 Int)) (Broken!20675 (value!125538 List!22324)) (Object!4216) (End!4135) (Def!4135) (Underscore!4135) (Match!4135) (Else!4135) (Error!4135) (Case!4135) (If!4135) (Extends!4135) (Abstract!4135) (Class!4135) (Val!4135) (DelimiterValue!8270 (del!4195 List!22324)) (KeywordValue!4141 (value!125539 List!22324)) (CommentValue!8270 (value!125540 List!22324)) (WhitespaceValue!8270 (value!125541 List!22324)) (IndentationValue!4135 (value!125542 List!22324)) (String!25794) (Int32!4135) (Broken!20676 (value!125543 List!22324)) (Boolean!4136) (Unit!36936) (OperatorValue!4138 (op!4195 List!22324)) (IdentifierValue!8270 (value!125544 List!22324)) (IdentifierValue!8271 (value!125545 List!22324)) (WhitespaceValue!8271 (value!125546 List!22324)) (True!8270) (False!8270) (Broken!20677 (value!125547 List!22324)) (Broken!20678 (value!125548 List!22324)) (True!8271) (RightBrace!4135) (RightBracket!4135) (Colon!4135) (Null!4135) (Comma!4135) (LeftBracket!4135) (False!8271) (LeftBrace!4135) (ImaginaryLiteralValue!4135 (text!29391 List!22324)) (StringLiteralValue!12405 (value!125549 List!22324)) (EOFValue!4135 (value!125550 List!22324)) (IdentValue!4135 (value!125551 List!22324)) (DelimiterValue!8271 (value!125552 List!22324)) (DedentValue!4135 (value!125553 List!22324)) (NewLineValue!4135 (value!125554 List!22324)) (IntegerValue!12405 (value!125555 (_ BitVec 32)) (text!29392 List!22324)) (IntegerValue!12406 (value!125556 Int) (text!29393 List!22324)) (Times!4135) (Or!4135) (Equal!4135) (Minus!4135) (Broken!20679 (value!125557 List!22324)) (And!4135) (Div!4135) (LessEqual!4135) (Mod!4135) (Concat!9559) (Not!4135) (Plus!4135) (SpaceValue!4135 (value!125558 List!22324)) (IntegerValue!12407 (value!125559 Int) (text!29394 List!22324)) (StringLiteralValue!12406 (text!29395 List!22324)) (FloatLiteralValue!8271 (text!29396 List!22324)) (BytesLiteralValue!4135 (value!125560 List!22324)) (CommentValue!8271 (value!125561 List!22324)) (StringLiteralValue!12407 (value!125562 List!22324)) (ErrorTokenValue!4135 (msg!4196 List!22324)) )
))
(declare-datatypes ((C!10994 0))(
  ( (C!10995 (val!6449 Int)) )
))
(declare-datatypes ((List!22325 0))(
  ( (Nil!22243) (Cons!22243 (h!27644 C!10994) (t!191096 List!22325)) )
))
(declare-datatypes ((String!25795 0))(
  ( (String!25796 (value!125563 String)) )
))
(declare-datatypes ((IArray!14885 0))(
  ( (IArray!14886 (innerList!7500 List!22325)) )
))
(declare-datatypes ((Conc!7440 0))(
  ( (Node!7440 (left!17694 Conc!7440) (right!18024 Conc!7440) (csize!15110 Int) (cheight!7651 Int)) (Leaf!10903 (xs!10342 IArray!14885) (csize!15111 Int)) (Empty!7440) )
))
(declare-datatypes ((BalanceConc!14696 0))(
  ( (BalanceConc!14697 (c!329367 Conc!7440)) )
))
(declare-datatypes ((TokenValueInjection!7854 0))(
  ( (TokenValueInjection!7855 (toValue!5680 Int) (toChars!5539 Int)) )
))
(declare-datatypes ((Regex!5424 0))(
  ( (ElementMatch!5424 (c!329368 C!10994)) (Concat!9560 (regOne!11360 Regex!5424) (regTwo!11360 Regex!5424)) (EmptyExpr!5424) (Star!5424 (reg!5753 Regex!5424)) (EmptyLang!5424) (Union!5424 (regOne!11361 Regex!5424) (regTwo!11361 Regex!5424)) )
))
(declare-datatypes ((Rule!7798 0))(
  ( (Rule!7799 (regex!3999 Regex!5424) (tag!4489 String!25795) (isSeparator!3999 Bool) (transformation!3999 TokenValueInjection!7854)) )
))
(declare-datatypes ((List!22326 0))(
  ( (Nil!22244) (Cons!22244 (h!27645 Rule!7798) (t!191097 List!22326)) )
))
(declare-fun rules!3198 () List!22326)

(declare-fun e!1284764 () Bool)

(declare-fun b!2034166 () Bool)

(declare-fun e!1284758 () Bool)

(declare-fun inv!29433 (String!25795) Bool)

(declare-fun inv!29436 (TokenValueInjection!7854) Bool)

(assert (=> b!2034166 (= e!1284758 (and tp!604207 (inv!29433 (tag!4489 (h!27645 rules!3198))) (inv!29436 (transformation!3999 (h!27645 rules!3198))) e!1284764))))

(declare-fun b!2034167 () Bool)

(declare-fun res!892041 () Bool)

(declare-fun e!1284760 () Bool)

(assert (=> b!2034167 (=> (not res!892041) (not e!1284760))))

(declare-datatypes ((Token!7550 0))(
  ( (Token!7551 (value!125564 TokenValue!4135) (rule!6236 Rule!7798) (size!17379 Int) (originalCharacters!4806 List!22325)) )
))
(declare-fun separatorToken!354 () Token!7550)

(assert (=> b!2034167 (= res!892041 (isSeparator!3999 (rule!6236 separatorToken!354)))))

(declare-fun e!1284766 () Bool)

(declare-fun tp!604209 () Bool)

(declare-fun e!1284755 () Bool)

(declare-fun b!2034168 () Bool)

(assert (=> b!2034168 (= e!1284766 (and tp!604209 (inv!29433 (tag!4489 (rule!6236 separatorToken!354))) (inv!29436 (transformation!3999 (rule!6236 separatorToken!354))) e!1284755))))

(declare-fun e!1284769 () Bool)

(assert (=> b!2034169 (= e!1284769 (and tp!604204 tp!604201))))

(declare-fun b!2034170 () Bool)

(declare-fun e!1284768 () Bool)

(declare-datatypes ((tuple2!20936 0))(
  ( (tuple2!20937 (_1!11937 Token!7550) (_2!11937 List!22325)) )
))
(declare-datatypes ((Option!4685 0))(
  ( (None!4684) (Some!4684 (v!27023 tuple2!20936)) )
))
(declare-fun lt!764419 () Option!4685)

(declare-datatypes ((List!22327 0))(
  ( (Nil!22245) (Cons!22245 (h!27646 Token!7550) (t!191098 List!22327)) )
))
(declare-fun tokens!598 () List!22327)

(declare-fun get!7072 (Option!4685) tuple2!20936)

(declare-fun head!4593 (List!22327) Token!7550)

(assert (=> b!2034170 (= e!1284768 (not (= (_1!11937 (get!7072 lt!764419)) (head!4593 tokens!598))))))

(declare-fun b!2034171 () Bool)

(declare-fun res!892049 () Bool)

(assert (=> b!2034171 (=> (not res!892049) (not e!1284760))))

(declare-fun sepAndNonSepRulesDisjointChars!1097 (List!22326 List!22326) Bool)

(assert (=> b!2034171 (= res!892049 (sepAndNonSepRulesDisjointChars!1097 rules!3198 rules!3198))))

(declare-fun b!2034172 () Bool)

(declare-fun res!892045 () Bool)

(assert (=> b!2034172 (=> (not res!892045) (not e!1284760))))

(declare-datatypes ((LexerInterface!3612 0))(
  ( (LexerInterfaceExt!3609 (__x!13769 Int)) (Lexer!3610) )
))
(declare-fun thiss!23328 () LexerInterface!3612)

(declare-fun rulesProduceIndividualToken!1784 (LexerInterface!3612 List!22326 Token!7550) Bool)

(assert (=> b!2034172 (= res!892045 (rulesProduceIndividualToken!1784 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!2034173 () Bool)

(declare-fun res!892048 () Bool)

(assert (=> b!2034173 (=> (not res!892048) (not e!1284760))))

(declare-fun rulesProduceEachTokenIndividuallyList!1343 (LexerInterface!3612 List!22326 List!22327) Bool)

(assert (=> b!2034173 (= res!892048 (rulesProduceEachTokenIndividuallyList!1343 thiss!23328 rules!3198 tokens!598))))

(assert (=> b!2034165 (= e!1284764 (and tp!604197 tp!604199))))

(declare-fun res!892042 () Bool)

(assert (=> start!200338 (=> (not res!892042) (not e!1284760))))

(assert (=> start!200338 (= res!892042 (is-Lexer!3610 thiss!23328))))

(assert (=> start!200338 e!1284760))

(assert (=> start!200338 true))

(declare-fun e!1284765 () Bool)

(assert (=> start!200338 e!1284765))

(declare-fun e!1284754 () Bool)

(assert (=> start!200338 e!1284754))

(declare-fun e!1284756 () Bool)

(declare-fun inv!29437 (Token!7550) Bool)

(assert (=> start!200338 (and (inv!29437 separatorToken!354) e!1284756)))

(declare-fun b!2034174 () Bool)

(declare-fun res!892043 () Bool)

(assert (=> b!2034174 (=> (not res!892043) (not e!1284760))))

(declare-fun isEmpty!13895 (List!22327) Bool)

(assert (=> b!2034174 (= res!892043 (not (isEmpty!13895 tokens!598)))))

(declare-fun b!2034175 () Bool)

(declare-fun res!892046 () Bool)

(assert (=> b!2034175 (=> (not res!892046) (not e!1284760))))

(declare-fun isEmpty!13896 (List!22326) Bool)

(assert (=> b!2034175 (= res!892046 (not (isEmpty!13896 rules!3198)))))

(declare-fun b!2034176 () Bool)

(declare-fun res!892044 () Bool)

(assert (=> b!2034176 (=> (not res!892044) (not e!1284760))))

(declare-fun lambda!76626 () Int)

(declare-fun forall!4735 (List!22327 Int) Bool)

(assert (=> b!2034176 (= res!892044 (forall!4735 tokens!598 lambda!76626))))

(declare-fun b!2034177 () Bool)

(declare-fun tp!604202 () Bool)

(assert (=> b!2034177 (= e!1284765 (and e!1284758 tp!604202))))

(declare-fun b!2034178 () Bool)

(declare-fun e!1284763 () Bool)

(declare-fun e!1284759 () Bool)

(declare-fun tp!604203 () Bool)

(declare-fun inv!21 (TokenValue!4135) Bool)

(assert (=> b!2034178 (= e!1284759 (and (inv!21 (value!125564 (h!27646 tokens!598))) e!1284763 tp!604203))))

(declare-fun tp!604198 () Bool)

(declare-fun b!2034179 () Bool)

(assert (=> b!2034179 (= e!1284763 (and tp!604198 (inv!29433 (tag!4489 (rule!6236 (h!27646 tokens!598)))) (inv!29436 (transformation!3999 (rule!6236 (h!27646 tokens!598)))) e!1284769))))

(declare-fun b!2034180 () Bool)

(declare-fun tp!604206 () Bool)

(assert (=> b!2034180 (= e!1284756 (and (inv!21 (value!125564 separatorToken!354)) e!1284766 tp!604206))))

(declare-fun b!2034181 () Bool)

(declare-fun res!892050 () Bool)

(assert (=> b!2034181 (=> (not res!892050) (not e!1284760))))

(assert (=> b!2034181 (= res!892050 (not (is-Cons!22245 tokens!598)))))

(assert (=> b!2034182 (= e!1284755 (and tp!604200 tp!604208))))

(declare-fun b!2034183 () Bool)

(declare-fun res!892047 () Bool)

(assert (=> b!2034183 (=> (not res!892047) (not e!1284760))))

(declare-fun rulesInvariant!3219 (LexerInterface!3612 List!22326) Bool)

(assert (=> b!2034183 (= res!892047 (rulesInvariant!3219 thiss!23328 rules!3198))))

(declare-fun b!2034184 () Bool)

(assert (=> b!2034184 (= e!1284760 e!1284768)))

(declare-fun res!892040 () Bool)

(assert (=> b!2034184 (=> res!892040 e!1284768)))

(declare-fun isDefined!3969 (Option!4685) Bool)

(assert (=> b!2034184 (= res!892040 (not (isDefined!3969 lt!764419)))))

(declare-fun maxPrefix!2048 (LexerInterface!3612 List!22326 List!22325) Option!4685)

(declare-fun printWithSeparatorTokenWhenNeededList!641 (LexerInterface!3612 List!22326 List!22327 Token!7550) List!22325)

(assert (=> b!2034184 (= lt!764419 (maxPrefix!2048 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!641 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!2034185 () Bool)

(declare-fun tp!604205 () Bool)

(assert (=> b!2034185 (= e!1284754 (and (inv!29437 (h!27646 tokens!598)) e!1284759 tp!604205))))

(assert (= (and start!200338 res!892042) b!2034175))

(assert (= (and b!2034175 res!892046) b!2034183))

(assert (= (and b!2034183 res!892047) b!2034173))

(assert (= (and b!2034173 res!892048) b!2034172))

(assert (= (and b!2034172 res!892045) b!2034167))

(assert (= (and b!2034167 res!892041) b!2034176))

(assert (= (and b!2034176 res!892044) b!2034171))

(assert (= (and b!2034171 res!892049) b!2034181))

(assert (= (and b!2034181 res!892050) b!2034174))

(assert (= (and b!2034174 res!892043) b!2034184))

(assert (= (and b!2034184 (not res!892040)) b!2034170))

(assert (= b!2034166 b!2034165))

(assert (= b!2034177 b!2034166))

(assert (= (and start!200338 (is-Cons!22244 rules!3198)) b!2034177))

(assert (= b!2034179 b!2034169))

(assert (= b!2034178 b!2034179))

(assert (= b!2034185 b!2034178))

(assert (= (and start!200338 (is-Cons!22245 tokens!598)) b!2034185))

(assert (= b!2034168 b!2034182))

(assert (= b!2034180 b!2034168))

(assert (= start!200338 b!2034180))

(declare-fun m!2476837 () Bool)

(assert (=> b!2034173 m!2476837))

(declare-fun m!2476839 () Bool)

(assert (=> b!2034183 m!2476839))

(declare-fun m!2476841 () Bool)

(assert (=> b!2034168 m!2476841))

(declare-fun m!2476843 () Bool)

(assert (=> b!2034168 m!2476843))

(declare-fun m!2476845 () Bool)

(assert (=> b!2034179 m!2476845))

(declare-fun m!2476847 () Bool)

(assert (=> b!2034179 m!2476847))

(declare-fun m!2476849 () Bool)

(assert (=> b!2034185 m!2476849))

(declare-fun m!2476851 () Bool)

(assert (=> b!2034184 m!2476851))

(declare-fun m!2476853 () Bool)

(assert (=> b!2034184 m!2476853))

(assert (=> b!2034184 m!2476853))

(declare-fun m!2476855 () Bool)

(assert (=> b!2034184 m!2476855))

(declare-fun m!2476857 () Bool)

(assert (=> b!2034175 m!2476857))

(declare-fun m!2476859 () Bool)

(assert (=> b!2034166 m!2476859))

(declare-fun m!2476861 () Bool)

(assert (=> b!2034166 m!2476861))

(declare-fun m!2476863 () Bool)

(assert (=> b!2034176 m!2476863))

(declare-fun m!2476865 () Bool)

(assert (=> b!2034170 m!2476865))

(declare-fun m!2476867 () Bool)

(assert (=> b!2034170 m!2476867))

(declare-fun m!2476869 () Bool)

(assert (=> b!2034180 m!2476869))

(declare-fun m!2476871 () Bool)

(assert (=> start!200338 m!2476871))

(declare-fun m!2476873 () Bool)

(assert (=> b!2034172 m!2476873))

(declare-fun m!2476875 () Bool)

(assert (=> b!2034171 m!2476875))

(declare-fun m!2476877 () Bool)

(assert (=> b!2034178 m!2476877))

(declare-fun m!2476879 () Bool)

(assert (=> b!2034174 m!2476879))

(push 1)

(assert (not b!2034170))

(assert (not b!2034171))

(assert b_and!162457)

(assert (not b!2034166))

(assert (not b!2034180))

(assert (not b!2034176))

(assert (not b_next!57455))

(assert (not b_next!57445))

(assert (not b!2034178))

(assert (not b_next!57447))

(assert b_and!162461)

(assert (not b!2034177))

(assert (not b!2034172))

(assert (not start!200338))

(assert (not b!2034185))

(assert (not b!2034179))

(assert (not b!2034174))

(assert (not b_next!57453))

(assert (not b!2034183))

(assert (not b!2034184))

(assert (not b!2034168))

(assert (not b!2034175))

(assert b_and!162455)

(assert b_and!162463)

(assert (not b!2034173))

(assert b_and!162453)

(assert (not b_next!57451))

(assert (not b_next!57449))

(assert b_and!162459)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!57453))

(assert b_and!162457)

(assert (not b_next!57455))

(assert (not b_next!57445))

(assert (not b_next!57447))

(assert b_and!162461)

(assert b_and!162455)

(assert b_and!162463)

(assert b_and!162453)

(assert (not b_next!57451))

(assert (not b_next!57449))

(assert b_and!162459)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!622811 () Bool)

(declare-fun res!892092 () Bool)

(declare-fun e!1284826 () Bool)

(assert (=> d!622811 (=> res!892092 e!1284826)))

(assert (=> d!622811 (= res!892092 (not (is-Cons!22244 rules!3198)))))

(assert (=> d!622811 (= (sepAndNonSepRulesDisjointChars!1097 rules!3198 rules!3198) e!1284826)))

(declare-fun b!2034253 () Bool)

(declare-fun e!1284827 () Bool)

(assert (=> b!2034253 (= e!1284826 e!1284827)))

(declare-fun res!892093 () Bool)

(assert (=> b!2034253 (=> (not res!892093) (not e!1284827))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!496 (Rule!7798 List!22326) Bool)

(assert (=> b!2034253 (= res!892093 (ruleDisjointCharsFromAllFromOtherType!496 (h!27645 rules!3198) rules!3198))))

(declare-fun b!2034254 () Bool)

(assert (=> b!2034254 (= e!1284827 (sepAndNonSepRulesDisjointChars!1097 rules!3198 (t!191097 rules!3198)))))

(assert (= (and d!622811 (not res!892092)) b!2034253))

(assert (= (and b!2034253 res!892093) b!2034254))

(declare-fun m!2476925 () Bool)

(assert (=> b!2034253 m!2476925))

(declare-fun m!2476927 () Bool)

(assert (=> b!2034254 m!2476927))

(assert (=> b!2034171 d!622811))

(declare-fun d!622813 () Bool)

(declare-fun lt!764428 () Bool)

(declare-fun e!1284867 () Bool)

(assert (=> d!622813 (= lt!764428 e!1284867)))

(declare-fun res!892128 () Bool)

(assert (=> d!622813 (=> (not res!892128) (not e!1284867))))

(declare-datatypes ((IArray!14889 0))(
  ( (IArray!14890 (innerList!7502 List!22327)) )
))
(declare-datatypes ((Conc!7442 0))(
  ( (Node!7442 (left!17700 Conc!7442) (right!18030 Conc!7442) (csize!15114 Int) (cheight!7653 Int)) (Leaf!10905 (xs!10344 IArray!14889) (csize!15115 Int)) (Empty!7442) )
))
(declare-datatypes ((BalanceConc!14700 0))(
  ( (BalanceConc!14701 (c!329406 Conc!7442)) )
))
(declare-fun list!9090 (BalanceConc!14700) List!22327)

(declare-datatypes ((tuple2!20940 0))(
  ( (tuple2!20941 (_1!11939 BalanceConc!14700) (_2!11939 BalanceConc!14696)) )
))
(declare-fun lex!1624 (LexerInterface!3612 List!22326 BalanceConc!14696) tuple2!20940)

(declare-fun print!1570 (LexerInterface!3612 BalanceConc!14700) BalanceConc!14696)

(declare-fun singletonSeq!1971 (Token!7550) BalanceConc!14700)

(assert (=> d!622813 (= res!892128 (= (list!9090 (_1!11939 (lex!1624 thiss!23328 rules!3198 (print!1570 thiss!23328 (singletonSeq!1971 separatorToken!354))))) (list!9090 (singletonSeq!1971 separatorToken!354))))))

(declare-fun e!1284866 () Bool)

(assert (=> d!622813 (= lt!764428 e!1284866)))

(declare-fun res!892127 () Bool)

(assert (=> d!622813 (=> (not res!892127) (not e!1284866))))

(declare-fun lt!764427 () tuple2!20940)

(declare-fun size!17381 (BalanceConc!14700) Int)

(assert (=> d!622813 (= res!892127 (= (size!17381 (_1!11939 lt!764427)) 1))))

(assert (=> d!622813 (= lt!764427 (lex!1624 thiss!23328 rules!3198 (print!1570 thiss!23328 (singletonSeq!1971 separatorToken!354))))))

(assert (=> d!622813 (not (isEmpty!13896 rules!3198))))

(assert (=> d!622813 (= (rulesProduceIndividualToken!1784 thiss!23328 rules!3198 separatorToken!354) lt!764428)))

(declare-fun b!2034309 () Bool)

(declare-fun res!892126 () Bool)

(assert (=> b!2034309 (=> (not res!892126) (not e!1284866))))

(declare-fun apply!5862 (BalanceConc!14700 Int) Token!7550)

(assert (=> b!2034309 (= res!892126 (= (apply!5862 (_1!11939 lt!764427) 0) separatorToken!354))))

(declare-fun b!2034310 () Bool)

(declare-fun isEmpty!13899 (BalanceConc!14696) Bool)

(assert (=> b!2034310 (= e!1284866 (isEmpty!13899 (_2!11939 lt!764427)))))

(declare-fun b!2034311 () Bool)

(assert (=> b!2034311 (= e!1284867 (isEmpty!13899 (_2!11939 (lex!1624 thiss!23328 rules!3198 (print!1570 thiss!23328 (singletonSeq!1971 separatorToken!354))))))))

(assert (= (and d!622813 res!892127) b!2034309))

(assert (= (and b!2034309 res!892126) b!2034310))

(assert (= (and d!622813 res!892128) b!2034311))

(declare-fun m!2476985 () Bool)

(assert (=> d!622813 m!2476985))

(declare-fun m!2476987 () Bool)

(assert (=> d!622813 m!2476987))

(declare-fun m!2476989 () Bool)

(assert (=> d!622813 m!2476989))

(declare-fun m!2476991 () Bool)

(assert (=> d!622813 m!2476991))

(declare-fun m!2476993 () Bool)

(assert (=> d!622813 m!2476993))

(assert (=> d!622813 m!2476989))

(declare-fun m!2476995 () Bool)

(assert (=> d!622813 m!2476995))

(assert (=> d!622813 m!2476989))

(assert (=> d!622813 m!2476985))

(assert (=> d!622813 m!2476857))

(declare-fun m!2476997 () Bool)

(assert (=> b!2034309 m!2476997))

(declare-fun m!2476999 () Bool)

(assert (=> b!2034310 m!2476999))

(assert (=> b!2034311 m!2476989))

(assert (=> b!2034311 m!2476989))

(assert (=> b!2034311 m!2476985))

(assert (=> b!2034311 m!2476985))

(assert (=> b!2034311 m!2476987))

(declare-fun m!2477001 () Bool)

(assert (=> b!2034311 m!2477001))

(assert (=> b!2034172 d!622813))

(declare-fun d!622847 () Bool)

(declare-fun res!892131 () Bool)

(declare-fun e!1284870 () Bool)

(assert (=> d!622847 (=> (not res!892131) (not e!1284870))))

(declare-fun rulesValid!1499 (LexerInterface!3612 List!22326) Bool)

(assert (=> d!622847 (= res!892131 (rulesValid!1499 thiss!23328 rules!3198))))

(assert (=> d!622847 (= (rulesInvariant!3219 thiss!23328 rules!3198) e!1284870)))

(declare-fun b!2034314 () Bool)

(declare-datatypes ((List!22332 0))(
  ( (Nil!22250) (Cons!22250 (h!27651 String!25795) (t!191144 List!22332)) )
))
(declare-fun noDuplicateTag!1497 (LexerInterface!3612 List!22326 List!22332) Bool)

(assert (=> b!2034314 (= e!1284870 (noDuplicateTag!1497 thiss!23328 rules!3198 Nil!22250))))

(assert (= (and d!622847 res!892131) b!2034314))

(declare-fun m!2477003 () Bool)

(assert (=> d!622847 m!2477003))

(declare-fun m!2477005 () Bool)

(assert (=> b!2034314 m!2477005))

(assert (=> b!2034183 d!622847))

(declare-fun bs!421287 () Bool)

(declare-fun d!622849 () Bool)

(assert (= bs!421287 (and d!622849 b!2034176)))

(declare-fun lambda!76632 () Int)

(assert (=> bs!421287 (not (= lambda!76632 lambda!76626))))

(declare-fun b!2034335 () Bool)

(declare-fun e!1284889 () Bool)

(assert (=> b!2034335 (= e!1284889 true)))

(declare-fun b!2034334 () Bool)

(declare-fun e!1284888 () Bool)

(assert (=> b!2034334 (= e!1284888 e!1284889)))

(declare-fun b!2034333 () Bool)

(declare-fun e!1284887 () Bool)

(assert (=> b!2034333 (= e!1284887 e!1284888)))

(assert (=> d!622849 e!1284887))

(assert (= b!2034334 b!2034335))

(assert (= b!2034333 b!2034334))

(assert (= (and d!622849 (is-Cons!22244 rules!3198)) b!2034333))

(declare-fun order!14259 () Int)

(declare-fun order!14257 () Int)

(declare-fun dynLambda!11077 (Int Int) Int)

(declare-fun dynLambda!11078 (Int Int) Int)

(assert (=> b!2034335 (< (dynLambda!11077 order!14257 (toValue!5680 (transformation!3999 (h!27645 rules!3198)))) (dynLambda!11078 order!14259 lambda!76632))))

(declare-fun order!14261 () Int)

(declare-fun dynLambda!11079 (Int Int) Int)

(assert (=> b!2034335 (< (dynLambda!11079 order!14261 (toChars!5539 (transformation!3999 (h!27645 rules!3198)))) (dynLambda!11078 order!14259 lambda!76632))))

(assert (=> d!622849 true))

(declare-fun lt!764433 () Bool)

(assert (=> d!622849 (= lt!764433 (forall!4735 tokens!598 lambda!76632))))

(declare-fun e!1284879 () Bool)

(assert (=> d!622849 (= lt!764433 e!1284879)))

(declare-fun res!892141 () Bool)

(assert (=> d!622849 (=> res!892141 e!1284879)))

(assert (=> d!622849 (= res!892141 (not (is-Cons!22245 tokens!598)))))

(assert (=> d!622849 (not (isEmpty!13896 rules!3198))))

(assert (=> d!622849 (= (rulesProduceEachTokenIndividuallyList!1343 thiss!23328 rules!3198 tokens!598) lt!764433)))

(declare-fun b!2034323 () Bool)

(declare-fun e!1284880 () Bool)

(assert (=> b!2034323 (= e!1284879 e!1284880)))

(declare-fun res!892140 () Bool)

(assert (=> b!2034323 (=> (not res!892140) (not e!1284880))))

(assert (=> b!2034323 (= res!892140 (rulesProduceIndividualToken!1784 thiss!23328 rules!3198 (h!27646 tokens!598)))))

(declare-fun b!2034324 () Bool)

(assert (=> b!2034324 (= e!1284880 (rulesProduceEachTokenIndividuallyList!1343 thiss!23328 rules!3198 (t!191098 tokens!598)))))

(assert (= (and d!622849 (not res!892141)) b!2034323))

(assert (= (and b!2034323 res!892140) b!2034324))

(declare-fun m!2477007 () Bool)

(assert (=> d!622849 m!2477007))

(assert (=> d!622849 m!2476857))

(declare-fun m!2477009 () Bool)

(assert (=> b!2034323 m!2477009))

(declare-fun m!2477011 () Bool)

(assert (=> b!2034324 m!2477011))

(assert (=> b!2034173 d!622849))

(declare-fun d!622851 () Bool)

(declare-fun isEmpty!13900 (Option!4685) Bool)

(assert (=> d!622851 (= (isDefined!3969 lt!764419) (not (isEmpty!13900 lt!764419)))))

(declare-fun bs!421288 () Bool)

(assert (= bs!421288 d!622851))

(declare-fun m!2477013 () Bool)

(assert (=> bs!421288 m!2477013))

(assert (=> b!2034184 d!622851))

(declare-fun b!2034356 () Bool)

(declare-fun e!1284898 () Option!4685)

(declare-fun call!124841 () Option!4685)

(assert (=> b!2034356 (= e!1284898 call!124841)))

(declare-fun b!2034357 () Bool)

(declare-fun lt!764447 () Option!4685)

(declare-fun lt!764445 () Option!4685)

(assert (=> b!2034357 (= e!1284898 (ite (and (is-None!4684 lt!764447) (is-None!4684 lt!764445)) None!4684 (ite (is-None!4684 lt!764445) lt!764447 (ite (is-None!4684 lt!764447) lt!764445 (ite (>= (size!17379 (_1!11937 (v!27023 lt!764447))) (size!17379 (_1!11937 (v!27023 lt!764445)))) lt!764447 lt!764445)))))))

(assert (=> b!2034357 (= lt!764447 call!124841)))

(assert (=> b!2034357 (= lt!764445 (maxPrefix!2048 thiss!23328 (t!191097 rules!3198) (printWithSeparatorTokenWhenNeededList!641 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!2034358 () Bool)

(declare-fun res!892157 () Bool)

(declare-fun e!1284896 () Bool)

(assert (=> b!2034358 (=> (not res!892157) (not e!1284896))))

(declare-fun lt!764444 () Option!4685)

(declare-fun size!17382 (List!22325) Int)

(assert (=> b!2034358 (= res!892157 (< (size!17382 (_2!11937 (get!7072 lt!764444))) (size!17382 (printWithSeparatorTokenWhenNeededList!641 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun b!2034359 () Bool)

(declare-fun res!892159 () Bool)

(assert (=> b!2034359 (=> (not res!892159) (not e!1284896))))

(declare-fun list!9091 (BalanceConc!14696) List!22325)

(declare-fun charsOf!2539 (Token!7550) BalanceConc!14696)

(assert (=> b!2034359 (= res!892159 (= (list!9091 (charsOf!2539 (_1!11937 (get!7072 lt!764444)))) (originalCharacters!4806 (_1!11937 (get!7072 lt!764444)))))))

(declare-fun b!2034360 () Bool)

(declare-fun e!1284897 () Bool)

(assert (=> b!2034360 (= e!1284897 e!1284896)))

(declare-fun res!892161 () Bool)

(assert (=> b!2034360 (=> (not res!892161) (not e!1284896))))

(assert (=> b!2034360 (= res!892161 (isDefined!3969 lt!764444))))

(declare-fun b!2034361 () Bool)

(declare-fun res!892162 () Bool)

(assert (=> b!2034361 (=> (not res!892162) (not e!1284896))))

(declare-fun ++!6024 (List!22325 List!22325) List!22325)

(assert (=> b!2034361 (= res!892162 (= (++!6024 (list!9091 (charsOf!2539 (_1!11937 (get!7072 lt!764444)))) (_2!11937 (get!7072 lt!764444))) (printWithSeparatorTokenWhenNeededList!641 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!2034362 () Bool)

(declare-fun res!892156 () Bool)

(assert (=> b!2034362 (=> (not res!892156) (not e!1284896))))

(declare-fun apply!5863 (TokenValueInjection!7854 BalanceConc!14696) TokenValue!4135)

(declare-fun seqFromList!2853 (List!22325) BalanceConc!14696)

(assert (=> b!2034362 (= res!892156 (= (value!125564 (_1!11937 (get!7072 lt!764444))) (apply!5863 (transformation!3999 (rule!6236 (_1!11937 (get!7072 lt!764444)))) (seqFromList!2853 (originalCharacters!4806 (_1!11937 (get!7072 lt!764444)))))))))

(declare-fun d!622853 () Bool)

(assert (=> d!622853 e!1284897))

(declare-fun res!892160 () Bool)

(assert (=> d!622853 (=> res!892160 e!1284897)))

(assert (=> d!622853 (= res!892160 (isEmpty!13900 lt!764444))))

(assert (=> d!622853 (= lt!764444 e!1284898)))

(declare-fun c!329382 () Bool)

(assert (=> d!622853 (= c!329382 (and (is-Cons!22244 rules!3198) (is-Nil!22244 (t!191097 rules!3198))))))

(declare-datatypes ((Unit!36938 0))(
  ( (Unit!36939) )
))
(declare-fun lt!764446 () Unit!36938)

(declare-fun lt!764448 () Unit!36938)

(assert (=> d!622853 (= lt!764446 lt!764448)))

(declare-fun isPrefix!1988 (List!22325 List!22325) Bool)

(assert (=> d!622853 (isPrefix!1988 (printWithSeparatorTokenWhenNeededList!641 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!641 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(declare-fun lemmaIsPrefixRefl!1306 (List!22325 List!22325) Unit!36938)

(assert (=> d!622853 (= lt!764448 (lemmaIsPrefixRefl!1306 (printWithSeparatorTokenWhenNeededList!641 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!641 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun rulesValidInductive!1387 (LexerInterface!3612 List!22326) Bool)

(assert (=> d!622853 (rulesValidInductive!1387 thiss!23328 rules!3198)))

(assert (=> d!622853 (= (maxPrefix!2048 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!641 thiss!23328 rules!3198 tokens!598 separatorToken!354)) lt!764444)))

(declare-fun b!2034363 () Bool)

(declare-fun res!892158 () Bool)

(assert (=> b!2034363 (=> (not res!892158) (not e!1284896))))

(declare-fun matchR!2690 (Regex!5424 List!22325) Bool)

(assert (=> b!2034363 (= res!892158 (matchR!2690 (regex!3999 (rule!6236 (_1!11937 (get!7072 lt!764444)))) (list!9091 (charsOf!2539 (_1!11937 (get!7072 lt!764444))))))))

(declare-fun b!2034364 () Bool)

(declare-fun contains!4111 (List!22326 Rule!7798) Bool)

(assert (=> b!2034364 (= e!1284896 (contains!4111 rules!3198 (rule!6236 (_1!11937 (get!7072 lt!764444)))))))

(declare-fun bm!124836 () Bool)

(declare-fun maxPrefixOneRule!1270 (LexerInterface!3612 Rule!7798 List!22325) Option!4685)

(assert (=> bm!124836 (= call!124841 (maxPrefixOneRule!1270 thiss!23328 (h!27645 rules!3198) (printWithSeparatorTokenWhenNeededList!641 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (= (and d!622853 c!329382) b!2034356))

(assert (= (and d!622853 (not c!329382)) b!2034357))

(assert (= (or b!2034356 b!2034357) bm!124836))

(assert (= (and d!622853 (not res!892160)) b!2034360))

(assert (= (and b!2034360 res!892161) b!2034359))

(assert (= (and b!2034359 res!892159) b!2034358))

(assert (= (and b!2034358 res!892157) b!2034361))

(assert (= (and b!2034361 res!892162) b!2034362))

(assert (= (and b!2034362 res!892156) b!2034363))

(assert (= (and b!2034363 res!892158) b!2034364))

(declare-fun m!2477015 () Bool)

(assert (=> b!2034362 m!2477015))

(declare-fun m!2477017 () Bool)

(assert (=> b!2034362 m!2477017))

(assert (=> b!2034362 m!2477017))

(declare-fun m!2477019 () Bool)

(assert (=> b!2034362 m!2477019))

(declare-fun m!2477021 () Bool)

(assert (=> d!622853 m!2477021))

(assert (=> d!622853 m!2476853))

(assert (=> d!622853 m!2476853))

(declare-fun m!2477023 () Bool)

(assert (=> d!622853 m!2477023))

(assert (=> d!622853 m!2476853))

(assert (=> d!622853 m!2476853))

(declare-fun m!2477025 () Bool)

(assert (=> d!622853 m!2477025))

(declare-fun m!2477027 () Bool)

(assert (=> d!622853 m!2477027))

(assert (=> b!2034359 m!2477015))

(declare-fun m!2477029 () Bool)

(assert (=> b!2034359 m!2477029))

(assert (=> b!2034359 m!2477029))

(declare-fun m!2477031 () Bool)

(assert (=> b!2034359 m!2477031))

(assert (=> bm!124836 m!2476853))

(declare-fun m!2477033 () Bool)

(assert (=> bm!124836 m!2477033))

(assert (=> b!2034358 m!2477015))

(declare-fun m!2477035 () Bool)

(assert (=> b!2034358 m!2477035))

(assert (=> b!2034358 m!2476853))

(declare-fun m!2477037 () Bool)

(assert (=> b!2034358 m!2477037))

(declare-fun m!2477039 () Bool)

(assert (=> b!2034360 m!2477039))

(assert (=> b!2034363 m!2477015))

(assert (=> b!2034363 m!2477029))

(assert (=> b!2034363 m!2477029))

(assert (=> b!2034363 m!2477031))

(assert (=> b!2034363 m!2477031))

(declare-fun m!2477041 () Bool)

(assert (=> b!2034363 m!2477041))

(assert (=> b!2034364 m!2477015))

(declare-fun m!2477043 () Bool)

(assert (=> b!2034364 m!2477043))

(assert (=> b!2034357 m!2476853))

(declare-fun m!2477045 () Bool)

(assert (=> b!2034357 m!2477045))

(assert (=> b!2034361 m!2477015))

(assert (=> b!2034361 m!2477029))

(assert (=> b!2034361 m!2477029))

(assert (=> b!2034361 m!2477031))

(assert (=> b!2034361 m!2477031))

(declare-fun m!2477047 () Bool)

(assert (=> b!2034361 m!2477047))

(assert (=> b!2034184 d!622853))

(declare-fun bs!421291 () Bool)

(declare-fun b!2034431 () Bool)

(assert (= bs!421291 (and b!2034431 b!2034176)))

(declare-fun lambda!76638 () Int)

(assert (=> bs!421291 (not (= lambda!76638 lambda!76626))))

(declare-fun bs!421292 () Bool)

(assert (= bs!421292 (and b!2034431 d!622849)))

(assert (=> bs!421292 (= lambda!76638 lambda!76632)))

(declare-fun b!2034439 () Bool)

(declare-fun e!1284939 () Bool)

(assert (=> b!2034439 (= e!1284939 true)))

(declare-fun b!2034438 () Bool)

(declare-fun e!1284938 () Bool)

(assert (=> b!2034438 (= e!1284938 e!1284939)))

(declare-fun b!2034437 () Bool)

(declare-fun e!1284937 () Bool)

(assert (=> b!2034437 (= e!1284937 e!1284938)))

(assert (=> b!2034431 e!1284937))

(assert (= b!2034438 b!2034439))

(assert (= b!2034437 b!2034438))

(assert (= (and b!2034431 (is-Cons!22244 rules!3198)) b!2034437))

(assert (=> b!2034439 (< (dynLambda!11077 order!14257 (toValue!5680 (transformation!3999 (h!27645 rules!3198)))) (dynLambda!11078 order!14259 lambda!76638))))

(assert (=> b!2034439 (< (dynLambda!11079 order!14261 (toChars!5539 (transformation!3999 (h!27645 rules!3198)))) (dynLambda!11078 order!14259 lambda!76638))))

(assert (=> b!2034431 true))

(declare-fun c!329396 () Bool)

(declare-fun c!329394 () Bool)

(declare-fun bm!124850 () Bool)

(declare-fun call!124855 () BalanceConc!14696)

(assert (=> bm!124850 (= call!124855 (charsOf!2539 (ite c!329396 (h!27646 tokens!598) (ite c!329394 separatorToken!354 (h!27646 tokens!598)))))))

(declare-fun b!2034429 () Bool)

(declare-fun e!1284935 () List!22325)

(assert (=> b!2034429 (= e!1284935 (list!9091 (charsOf!2539 (h!27646 tokens!598))))))

(declare-fun bm!124851 () Bool)

(declare-fun call!124858 () List!22325)

(declare-fun call!124859 () List!22325)

(assert (=> bm!124851 (= call!124858 call!124859)))

(declare-fun bm!124852 () Bool)

(declare-fun call!124856 () BalanceConc!14696)

(assert (=> bm!124852 (= call!124856 call!124855)))

(declare-fun bm!124853 () Bool)

(assert (=> bm!124853 (= call!124859 (list!9091 (ite c!329396 call!124855 call!124856)))))

(declare-fun b!2034430 () Bool)

(declare-fun e!1284936 () List!22325)

(declare-fun call!124857 () List!22325)

(assert (=> b!2034430 (= e!1284936 call!124857)))

(declare-fun e!1284933 () List!22325)

(assert (=> b!2034431 (= e!1284933 e!1284936)))

(declare-fun lt!764479 () Unit!36938)

(declare-fun forallContained!751 (List!22327 Int Token!7550) Unit!36938)

(assert (=> b!2034431 (= lt!764479 (forallContained!751 tokens!598 lambda!76638 (h!27646 tokens!598)))))

(declare-fun lt!764480 () List!22325)

(assert (=> b!2034431 (= lt!764480 (printWithSeparatorTokenWhenNeededList!641 thiss!23328 rules!3198 (t!191098 tokens!598) separatorToken!354))))

(declare-fun lt!764478 () Option!4685)

(assert (=> b!2034431 (= lt!764478 (maxPrefix!2048 thiss!23328 rules!3198 (++!6024 (list!9091 (charsOf!2539 (h!27646 tokens!598))) lt!764480)))))

(assert (=> b!2034431 (= c!329396 (and (is-Some!4684 lt!764478) (= (_1!11937 (v!27023 lt!764478)) (h!27646 tokens!598))))))

(declare-fun b!2034432 () Bool)

(declare-fun e!1284934 () List!22325)

(assert (=> b!2034432 (= e!1284934 (++!6024 call!124857 lt!764480))))

(declare-fun b!2034433 () Bool)

(assert (=> b!2034433 (= c!329394 (and (is-Some!4684 lt!764478) (not (= (_1!11937 (v!27023 lt!764478)) (h!27646 tokens!598)))))))

(assert (=> b!2034433 (= e!1284936 e!1284934)))

(declare-fun bm!124854 () Bool)

(declare-fun c!329397 () Bool)

(assert (=> bm!124854 (= c!329397 c!329396)))

(assert (=> bm!124854 (= call!124857 (++!6024 e!1284935 (ite c!329396 lt!764480 call!124858)))))

(declare-fun b!2034434 () Bool)

(assert (=> b!2034434 (= e!1284934 Nil!22243)))

(declare-fun printTailRec!1076 (LexerInterface!3612 BalanceConc!14700 Int BalanceConc!14696) BalanceConc!14696)

(assert (=> b!2034434 (= (print!1570 thiss!23328 (singletonSeq!1971 (h!27646 tokens!598))) (printTailRec!1076 thiss!23328 (singletonSeq!1971 (h!27646 tokens!598)) 0 (BalanceConc!14697 Empty!7440)))))

(declare-fun lt!764481 () Unit!36938)

(declare-fun Unit!36940 () Unit!36938)

(assert (=> b!2034434 (= lt!764481 Unit!36940)))

(declare-fun lt!764482 () Unit!36938)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!782 (LexerInterface!3612 List!22326 List!22325 List!22325) Unit!36938)

(assert (=> b!2034434 (= lt!764482 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!782 thiss!23328 rules!3198 call!124858 lt!764480))))

(assert (=> b!2034434 false))

(declare-fun lt!764477 () Unit!36938)

(declare-fun Unit!36941 () Unit!36938)

(assert (=> b!2034434 (= lt!764477 Unit!36941)))

(declare-fun d!622855 () Bool)

(declare-fun c!329395 () Bool)

(assert (=> d!622855 (= c!329395 (is-Cons!22245 tokens!598))))

(assert (=> d!622855 (= (printWithSeparatorTokenWhenNeededList!641 thiss!23328 rules!3198 tokens!598 separatorToken!354) e!1284933)))

(declare-fun b!2034435 () Bool)

(assert (=> b!2034435 (= e!1284935 call!124859)))

(declare-fun b!2034436 () Bool)

(assert (=> b!2034436 (= e!1284933 Nil!22243)))

(assert (= (and d!622855 c!329395) b!2034431))

(assert (= (and d!622855 (not c!329395)) b!2034436))

(assert (= (and b!2034431 c!329396) b!2034430))

(assert (= (and b!2034431 (not c!329396)) b!2034433))

(assert (= (and b!2034433 c!329394) b!2034432))

(assert (= (and b!2034433 (not c!329394)) b!2034434))

(assert (= (or b!2034432 b!2034434) bm!124852))

(assert (= (or b!2034432 b!2034434) bm!124851))

(assert (= (or b!2034430 bm!124852) bm!124850))

(assert (= (or b!2034430 bm!124851) bm!124853))

(assert (= (or b!2034430 b!2034432) bm!124854))

(assert (= (and bm!124854 c!329397) b!2034435))

(assert (= (and bm!124854 (not c!329397)) b!2034429))

(declare-fun m!2477095 () Bool)

(assert (=> b!2034431 m!2477095))

(declare-fun m!2477097 () Bool)

(assert (=> b!2034431 m!2477097))

(declare-fun m!2477099 () Bool)

(assert (=> b!2034431 m!2477099))

(declare-fun m!2477101 () Bool)

(assert (=> b!2034431 m!2477101))

(assert (=> b!2034431 m!2477095))

(declare-fun m!2477103 () Bool)

(assert (=> b!2034431 m!2477103))

(assert (=> b!2034431 m!2477101))

(assert (=> b!2034431 m!2477103))

(declare-fun m!2477105 () Bool)

(assert (=> b!2034431 m!2477105))

(assert (=> b!2034429 m!2477103))

(assert (=> b!2034429 m!2477103))

(assert (=> b!2034429 m!2477101))

(declare-fun m!2477107 () Bool)

(assert (=> b!2034434 m!2477107))

(assert (=> b!2034434 m!2477107))

(declare-fun m!2477109 () Bool)

(assert (=> b!2034434 m!2477109))

(assert (=> b!2034434 m!2477107))

(declare-fun m!2477111 () Bool)

(assert (=> b!2034434 m!2477111))

(declare-fun m!2477113 () Bool)

(assert (=> b!2034434 m!2477113))

(declare-fun m!2477115 () Bool)

(assert (=> bm!124854 m!2477115))

(declare-fun m!2477117 () Bool)

(assert (=> bm!124853 m!2477117))

(declare-fun m!2477119 () Bool)

(assert (=> b!2034432 m!2477119))

(declare-fun m!2477121 () Bool)

(assert (=> bm!124850 m!2477121))

(assert (=> b!2034184 d!622855))

(declare-fun d!622865 () Bool)

(assert (=> d!622865 (= (isEmpty!13895 tokens!598) (is-Nil!22245 tokens!598))))

(assert (=> b!2034174 d!622865))

(declare-fun d!622867 () Bool)

(declare-fun res!892196 () Bool)

(declare-fun e!1284942 () Bool)

(assert (=> d!622867 (=> (not res!892196) (not e!1284942))))

(declare-fun isEmpty!13901 (List!22325) Bool)

(assert (=> d!622867 (= res!892196 (not (isEmpty!13901 (originalCharacters!4806 (h!27646 tokens!598)))))))

(assert (=> d!622867 (= (inv!29437 (h!27646 tokens!598)) e!1284942)))

(declare-fun b!2034444 () Bool)

(declare-fun res!892197 () Bool)

(assert (=> b!2034444 (=> (not res!892197) (not e!1284942))))

(declare-fun dynLambda!11080 (Int TokenValue!4135) BalanceConc!14696)

(assert (=> b!2034444 (= res!892197 (= (originalCharacters!4806 (h!27646 tokens!598)) (list!9091 (dynLambda!11080 (toChars!5539 (transformation!3999 (rule!6236 (h!27646 tokens!598)))) (value!125564 (h!27646 tokens!598))))))))

(declare-fun b!2034445 () Bool)

(assert (=> b!2034445 (= e!1284942 (= (size!17379 (h!27646 tokens!598)) (size!17382 (originalCharacters!4806 (h!27646 tokens!598)))))))

(assert (= (and d!622867 res!892196) b!2034444))

(assert (= (and b!2034444 res!892197) b!2034445))

(declare-fun b_lambda!68627 () Bool)

(assert (=> (not b_lambda!68627) (not b!2034444)))

(declare-fun tb!128749 () Bool)

(declare-fun t!191123 () Bool)

(assert (=> (and b!2034165 (= (toChars!5539 (transformation!3999 (h!27645 rules!3198))) (toChars!5539 (transformation!3999 (rule!6236 (h!27646 tokens!598))))) t!191123) tb!128749))

(declare-fun b!2034450 () Bool)

(declare-fun e!1284945 () Bool)

(declare-fun tp!604255 () Bool)

(declare-fun inv!29440 (Conc!7440) Bool)

(assert (=> b!2034450 (= e!1284945 (and (inv!29440 (c!329367 (dynLambda!11080 (toChars!5539 (transformation!3999 (rule!6236 (h!27646 tokens!598)))) (value!125564 (h!27646 tokens!598))))) tp!604255))))

(declare-fun result!153946 () Bool)

(declare-fun inv!29441 (BalanceConc!14696) Bool)

(assert (=> tb!128749 (= result!153946 (and (inv!29441 (dynLambda!11080 (toChars!5539 (transformation!3999 (rule!6236 (h!27646 tokens!598)))) (value!125564 (h!27646 tokens!598)))) e!1284945))))

(assert (= tb!128749 b!2034450))

(declare-fun m!2477123 () Bool)

(assert (=> b!2034450 m!2477123))

(declare-fun m!2477125 () Bool)

(assert (=> tb!128749 m!2477125))

(assert (=> b!2034444 t!191123))

(declare-fun b_and!162489 () Bool)

(assert (= b_and!162455 (and (=> t!191123 result!153946) b_and!162489)))

(declare-fun t!191125 () Bool)

(declare-fun tb!128751 () Bool)

(assert (=> (and b!2034169 (= (toChars!5539 (transformation!3999 (rule!6236 (h!27646 tokens!598)))) (toChars!5539 (transformation!3999 (rule!6236 (h!27646 tokens!598))))) t!191125) tb!128751))

(declare-fun result!153950 () Bool)

(assert (= result!153950 result!153946))

(assert (=> b!2034444 t!191125))

(declare-fun b_and!162491 () Bool)

(assert (= b_and!162459 (and (=> t!191125 result!153950) b_and!162491)))

(declare-fun t!191127 () Bool)

(declare-fun tb!128753 () Bool)

(assert (=> (and b!2034182 (= (toChars!5539 (transformation!3999 (rule!6236 separatorToken!354))) (toChars!5539 (transformation!3999 (rule!6236 (h!27646 tokens!598))))) t!191127) tb!128753))

(declare-fun result!153952 () Bool)

(assert (= result!153952 result!153946))

(assert (=> b!2034444 t!191127))

(declare-fun b_and!162493 () Bool)

(assert (= b_and!162463 (and (=> t!191127 result!153952) b_and!162493)))

(declare-fun m!2477127 () Bool)

(assert (=> d!622867 m!2477127))

(declare-fun m!2477129 () Bool)

(assert (=> b!2034444 m!2477129))

(assert (=> b!2034444 m!2477129))

(declare-fun m!2477131 () Bool)

(assert (=> b!2034444 m!2477131))

(declare-fun m!2477133 () Bool)

(assert (=> b!2034445 m!2477133))

(assert (=> b!2034185 d!622867))

(declare-fun d!622869 () Bool)

(assert (=> d!622869 (= (isEmpty!13896 rules!3198) (is-Nil!22244 rules!3198))))

(assert (=> b!2034175 d!622869))

(declare-fun d!622871 () Bool)

(declare-fun res!892202 () Bool)

(declare-fun e!1284950 () Bool)

(assert (=> d!622871 (=> res!892202 e!1284950)))

(assert (=> d!622871 (= res!892202 (is-Nil!22245 tokens!598))))

(assert (=> d!622871 (= (forall!4735 tokens!598 lambda!76626) e!1284950)))

(declare-fun b!2034455 () Bool)

(declare-fun e!1284951 () Bool)

(assert (=> b!2034455 (= e!1284950 e!1284951)))

(declare-fun res!892203 () Bool)

(assert (=> b!2034455 (=> (not res!892203) (not e!1284951))))

(declare-fun dynLambda!11081 (Int Token!7550) Bool)

(assert (=> b!2034455 (= res!892203 (dynLambda!11081 lambda!76626 (h!27646 tokens!598)))))

(declare-fun b!2034456 () Bool)

(assert (=> b!2034456 (= e!1284951 (forall!4735 (t!191098 tokens!598) lambda!76626))))

(assert (= (and d!622871 (not res!892202)) b!2034455))

(assert (= (and b!2034455 res!892203) b!2034456))

(declare-fun b_lambda!68629 () Bool)

(assert (=> (not b_lambda!68629) (not b!2034455)))

(declare-fun m!2477135 () Bool)

(assert (=> b!2034455 m!2477135))

(declare-fun m!2477137 () Bool)

(assert (=> b!2034456 m!2477137))

(assert (=> b!2034176 d!622871))

(declare-fun d!622873 () Bool)

(assert (=> d!622873 (= (inv!29433 (tag!4489 (h!27645 rules!3198))) (= (mod (str.len (value!125563 (tag!4489 (h!27645 rules!3198)))) 2) 0))))

(assert (=> b!2034166 d!622873))

(declare-fun d!622875 () Bool)

(declare-fun res!892206 () Bool)

(declare-fun e!1284954 () Bool)

(assert (=> d!622875 (=> (not res!892206) (not e!1284954))))

(declare-fun semiInverseModEq!1612 (Int Int) Bool)

(assert (=> d!622875 (= res!892206 (semiInverseModEq!1612 (toChars!5539 (transformation!3999 (h!27645 rules!3198))) (toValue!5680 (transformation!3999 (h!27645 rules!3198)))))))

(assert (=> d!622875 (= (inv!29436 (transformation!3999 (h!27645 rules!3198))) e!1284954)))

(declare-fun b!2034459 () Bool)

(declare-fun equivClasses!1539 (Int Int) Bool)

(assert (=> b!2034459 (= e!1284954 (equivClasses!1539 (toChars!5539 (transformation!3999 (h!27645 rules!3198))) (toValue!5680 (transformation!3999 (h!27645 rules!3198)))))))

(assert (= (and d!622875 res!892206) b!2034459))

(declare-fun m!2477139 () Bool)

(assert (=> d!622875 m!2477139))

(declare-fun m!2477141 () Bool)

(assert (=> b!2034459 m!2477141))

(assert (=> b!2034166 d!622875))

(declare-fun b!2034470 () Bool)

(declare-fun e!1284962 () Bool)

(declare-fun inv!16 (TokenValue!4135) Bool)

(assert (=> b!2034470 (= e!1284962 (inv!16 (value!125564 (h!27646 tokens!598))))))

(declare-fun b!2034471 () Bool)

(declare-fun e!1284961 () Bool)

(declare-fun inv!15 (TokenValue!4135) Bool)

(assert (=> b!2034471 (= e!1284961 (inv!15 (value!125564 (h!27646 tokens!598))))))

(declare-fun b!2034472 () Bool)

(declare-fun e!1284963 () Bool)

(declare-fun inv!17 (TokenValue!4135) Bool)

(assert (=> b!2034472 (= e!1284963 (inv!17 (value!125564 (h!27646 tokens!598))))))

(declare-fun b!2034473 () Bool)

(assert (=> b!2034473 (= e!1284962 e!1284963)))

(declare-fun c!329403 () Bool)

(assert (=> b!2034473 (= c!329403 (is-IntegerValue!12406 (value!125564 (h!27646 tokens!598))))))

(declare-fun d!622877 () Bool)

(declare-fun c!329402 () Bool)

(assert (=> d!622877 (= c!329402 (is-IntegerValue!12405 (value!125564 (h!27646 tokens!598))))))

(assert (=> d!622877 (= (inv!21 (value!125564 (h!27646 tokens!598))) e!1284962)))

(declare-fun b!2034474 () Bool)

(declare-fun res!892209 () Bool)

(assert (=> b!2034474 (=> res!892209 e!1284961)))

(assert (=> b!2034474 (= res!892209 (not (is-IntegerValue!12407 (value!125564 (h!27646 tokens!598)))))))

(assert (=> b!2034474 (= e!1284963 e!1284961)))

(assert (= (and d!622877 c!329402) b!2034470))

(assert (= (and d!622877 (not c!329402)) b!2034473))

(assert (= (and b!2034473 c!329403) b!2034472))

(assert (= (and b!2034473 (not c!329403)) b!2034474))

(assert (= (and b!2034474 (not res!892209)) b!2034471))

(declare-fun m!2477143 () Bool)

(assert (=> b!2034470 m!2477143))

(declare-fun m!2477145 () Bool)

(assert (=> b!2034471 m!2477145))

(declare-fun m!2477147 () Bool)

(assert (=> b!2034472 m!2477147))

(assert (=> b!2034178 d!622877))

(declare-fun d!622879 () Bool)

(assert (=> d!622879 (= (inv!29433 (tag!4489 (rule!6236 separatorToken!354))) (= (mod (str.len (value!125563 (tag!4489 (rule!6236 separatorToken!354)))) 2) 0))))

(assert (=> b!2034168 d!622879))

(declare-fun d!622881 () Bool)

(declare-fun res!892210 () Bool)

(declare-fun e!1284964 () Bool)

(assert (=> d!622881 (=> (not res!892210) (not e!1284964))))

(assert (=> d!622881 (= res!892210 (semiInverseModEq!1612 (toChars!5539 (transformation!3999 (rule!6236 separatorToken!354))) (toValue!5680 (transformation!3999 (rule!6236 separatorToken!354)))))))

(assert (=> d!622881 (= (inv!29436 (transformation!3999 (rule!6236 separatorToken!354))) e!1284964)))

(declare-fun b!2034475 () Bool)

(assert (=> b!2034475 (= e!1284964 (equivClasses!1539 (toChars!5539 (transformation!3999 (rule!6236 separatorToken!354))) (toValue!5680 (transformation!3999 (rule!6236 separatorToken!354)))))))

(assert (= (and d!622881 res!892210) b!2034475))

(declare-fun m!2477149 () Bool)

(assert (=> d!622881 m!2477149))

(declare-fun m!2477151 () Bool)

(assert (=> b!2034475 m!2477151))

(assert (=> b!2034168 d!622881))

(declare-fun d!622883 () Bool)

(declare-fun res!892211 () Bool)

(declare-fun e!1284965 () Bool)

(assert (=> d!622883 (=> (not res!892211) (not e!1284965))))

(assert (=> d!622883 (= res!892211 (not (isEmpty!13901 (originalCharacters!4806 separatorToken!354))))))

(assert (=> d!622883 (= (inv!29437 separatorToken!354) e!1284965)))

(declare-fun b!2034476 () Bool)

(declare-fun res!892212 () Bool)

(assert (=> b!2034476 (=> (not res!892212) (not e!1284965))))

(assert (=> b!2034476 (= res!892212 (= (originalCharacters!4806 separatorToken!354) (list!9091 (dynLambda!11080 (toChars!5539 (transformation!3999 (rule!6236 separatorToken!354))) (value!125564 separatorToken!354)))))))

(declare-fun b!2034477 () Bool)

(assert (=> b!2034477 (= e!1284965 (= (size!17379 separatorToken!354) (size!17382 (originalCharacters!4806 separatorToken!354))))))

(assert (= (and d!622883 res!892211) b!2034476))

(assert (= (and b!2034476 res!892212) b!2034477))

(declare-fun b_lambda!68631 () Bool)

(assert (=> (not b_lambda!68631) (not b!2034476)))

(declare-fun tb!128755 () Bool)

(declare-fun t!191129 () Bool)

(assert (=> (and b!2034165 (= (toChars!5539 (transformation!3999 (h!27645 rules!3198))) (toChars!5539 (transformation!3999 (rule!6236 separatorToken!354)))) t!191129) tb!128755))

(declare-fun b!2034478 () Bool)

(declare-fun e!1284966 () Bool)

(declare-fun tp!604256 () Bool)

(assert (=> b!2034478 (= e!1284966 (and (inv!29440 (c!329367 (dynLambda!11080 (toChars!5539 (transformation!3999 (rule!6236 separatorToken!354))) (value!125564 separatorToken!354)))) tp!604256))))

(declare-fun result!153954 () Bool)

(assert (=> tb!128755 (= result!153954 (and (inv!29441 (dynLambda!11080 (toChars!5539 (transformation!3999 (rule!6236 separatorToken!354))) (value!125564 separatorToken!354))) e!1284966))))

(assert (= tb!128755 b!2034478))

(declare-fun m!2477153 () Bool)

(assert (=> b!2034478 m!2477153))

(declare-fun m!2477155 () Bool)

(assert (=> tb!128755 m!2477155))

(assert (=> b!2034476 t!191129))

(declare-fun b_and!162495 () Bool)

(assert (= b_and!162489 (and (=> t!191129 result!153954) b_and!162495)))

(declare-fun t!191131 () Bool)

(declare-fun tb!128757 () Bool)

(assert (=> (and b!2034169 (= (toChars!5539 (transformation!3999 (rule!6236 (h!27646 tokens!598)))) (toChars!5539 (transformation!3999 (rule!6236 separatorToken!354)))) t!191131) tb!128757))

(declare-fun result!153956 () Bool)

(assert (= result!153956 result!153954))

(assert (=> b!2034476 t!191131))

(declare-fun b_and!162497 () Bool)

(assert (= b_and!162491 (and (=> t!191131 result!153956) b_and!162497)))

(declare-fun t!191133 () Bool)

(declare-fun tb!128759 () Bool)

(assert (=> (and b!2034182 (= (toChars!5539 (transformation!3999 (rule!6236 separatorToken!354))) (toChars!5539 (transformation!3999 (rule!6236 separatorToken!354)))) t!191133) tb!128759))

(declare-fun result!153958 () Bool)

(assert (= result!153958 result!153954))

(assert (=> b!2034476 t!191133))

(declare-fun b_and!162499 () Bool)

(assert (= b_and!162493 (and (=> t!191133 result!153958) b_and!162499)))

(declare-fun m!2477157 () Bool)

(assert (=> d!622883 m!2477157))

(declare-fun m!2477159 () Bool)

(assert (=> b!2034476 m!2477159))

(assert (=> b!2034476 m!2477159))

(declare-fun m!2477161 () Bool)

(assert (=> b!2034476 m!2477161))

(declare-fun m!2477163 () Bool)

(assert (=> b!2034477 m!2477163))

(assert (=> start!200338 d!622883))

(declare-fun d!622885 () Bool)

(assert (=> d!622885 (= (inv!29433 (tag!4489 (rule!6236 (h!27646 tokens!598)))) (= (mod (str.len (value!125563 (tag!4489 (rule!6236 (h!27646 tokens!598))))) 2) 0))))

(assert (=> b!2034179 d!622885))

(declare-fun d!622887 () Bool)

(declare-fun res!892213 () Bool)

(declare-fun e!1284967 () Bool)

(assert (=> d!622887 (=> (not res!892213) (not e!1284967))))

(assert (=> d!622887 (= res!892213 (semiInverseModEq!1612 (toChars!5539 (transformation!3999 (rule!6236 (h!27646 tokens!598)))) (toValue!5680 (transformation!3999 (rule!6236 (h!27646 tokens!598))))))))

(assert (=> d!622887 (= (inv!29436 (transformation!3999 (rule!6236 (h!27646 tokens!598)))) e!1284967)))

(declare-fun b!2034479 () Bool)

(assert (=> b!2034479 (= e!1284967 (equivClasses!1539 (toChars!5539 (transformation!3999 (rule!6236 (h!27646 tokens!598)))) (toValue!5680 (transformation!3999 (rule!6236 (h!27646 tokens!598))))))))

(assert (= (and d!622887 res!892213) b!2034479))

(declare-fun m!2477165 () Bool)

(assert (=> d!622887 m!2477165))

(declare-fun m!2477167 () Bool)

(assert (=> b!2034479 m!2477167))

(assert (=> b!2034179 d!622887))

(declare-fun b!2034480 () Bool)

(declare-fun e!1284969 () Bool)

(assert (=> b!2034480 (= e!1284969 (inv!16 (value!125564 separatorToken!354)))))

(declare-fun b!2034481 () Bool)

(declare-fun e!1284968 () Bool)

(assert (=> b!2034481 (= e!1284968 (inv!15 (value!125564 separatorToken!354)))))

(declare-fun b!2034482 () Bool)

(declare-fun e!1284970 () Bool)

(assert (=> b!2034482 (= e!1284970 (inv!17 (value!125564 separatorToken!354)))))

(declare-fun b!2034483 () Bool)

(assert (=> b!2034483 (= e!1284969 e!1284970)))

(declare-fun c!329405 () Bool)

(assert (=> b!2034483 (= c!329405 (is-IntegerValue!12406 (value!125564 separatorToken!354)))))

(declare-fun d!622889 () Bool)

(declare-fun c!329404 () Bool)

(assert (=> d!622889 (= c!329404 (is-IntegerValue!12405 (value!125564 separatorToken!354)))))

(assert (=> d!622889 (= (inv!21 (value!125564 separatorToken!354)) e!1284969)))

(declare-fun b!2034484 () Bool)

(declare-fun res!892214 () Bool)

(assert (=> b!2034484 (=> res!892214 e!1284968)))

(assert (=> b!2034484 (= res!892214 (not (is-IntegerValue!12407 (value!125564 separatorToken!354))))))

(assert (=> b!2034484 (= e!1284970 e!1284968)))

(assert (= (and d!622889 c!329404) b!2034480))

(assert (= (and d!622889 (not c!329404)) b!2034483))

(assert (= (and b!2034483 c!329405) b!2034482))

(assert (= (and b!2034483 (not c!329405)) b!2034484))

(assert (= (and b!2034484 (not res!892214)) b!2034481))

(declare-fun m!2477169 () Bool)

(assert (=> b!2034480 m!2477169))

(declare-fun m!2477171 () Bool)

(assert (=> b!2034481 m!2477171))

(declare-fun m!2477173 () Bool)

(assert (=> b!2034482 m!2477173))

(assert (=> b!2034180 d!622889))

(declare-fun d!622891 () Bool)

(assert (=> d!622891 (= (get!7072 lt!764419) (v!27023 lt!764419))))

(assert (=> b!2034170 d!622891))

(declare-fun d!622893 () Bool)

(assert (=> d!622893 (= (head!4593 tokens!598) (h!27646 tokens!598))))

(assert (=> b!2034170 d!622893))

(declare-fun b!2034497 () Bool)

(declare-fun e!1284973 () Bool)

(declare-fun tp!604268 () Bool)

(assert (=> b!2034497 (= e!1284973 tp!604268)))

(assert (=> b!2034166 (= tp!604207 e!1284973)))

(declare-fun b!2034495 () Bool)

(declare-fun tp_is_empty!9231 () Bool)

(assert (=> b!2034495 (= e!1284973 tp_is_empty!9231)))

(declare-fun b!2034496 () Bool)

(declare-fun tp!604271 () Bool)

(declare-fun tp!604270 () Bool)

(assert (=> b!2034496 (= e!1284973 (and tp!604271 tp!604270))))

(declare-fun b!2034498 () Bool)

(declare-fun tp!604267 () Bool)

(declare-fun tp!604269 () Bool)

(assert (=> b!2034498 (= e!1284973 (and tp!604267 tp!604269))))

(assert (= (and b!2034166 (is-ElementMatch!5424 (regex!3999 (h!27645 rules!3198)))) b!2034495))

(assert (= (and b!2034166 (is-Concat!9560 (regex!3999 (h!27645 rules!3198)))) b!2034496))

(assert (= (and b!2034166 (is-Star!5424 (regex!3999 (h!27645 rules!3198)))) b!2034497))

(assert (= (and b!2034166 (is-Union!5424 (regex!3999 (h!27645 rules!3198)))) b!2034498))

(declare-fun b!2034509 () Bool)

(declare-fun b_free!56765 () Bool)

(declare-fun b_next!57469 () Bool)

(assert (=> b!2034509 (= b_free!56765 (not b_next!57469))))

(declare-fun tp!604280 () Bool)

(declare-fun b_and!162501 () Bool)

(assert (=> b!2034509 (= tp!604280 b_and!162501)))

(declare-fun b_free!56767 () Bool)

(declare-fun b_next!57471 () Bool)

(assert (=> b!2034509 (= b_free!56767 (not b_next!57471))))

(declare-fun t!191135 () Bool)

(declare-fun tb!128761 () Bool)

(assert (=> (and b!2034509 (= (toChars!5539 (transformation!3999 (h!27645 (t!191097 rules!3198)))) (toChars!5539 (transformation!3999 (rule!6236 (h!27646 tokens!598))))) t!191135) tb!128761))

(declare-fun result!153964 () Bool)

(assert (= result!153964 result!153946))

(assert (=> b!2034444 t!191135))

(declare-fun tb!128763 () Bool)

(declare-fun t!191137 () Bool)

(assert (=> (and b!2034509 (= (toChars!5539 (transformation!3999 (h!27645 (t!191097 rules!3198)))) (toChars!5539 (transformation!3999 (rule!6236 separatorToken!354)))) t!191137) tb!128763))

(declare-fun result!153966 () Bool)

(assert (= result!153966 result!153954))

(assert (=> b!2034476 t!191137))

(declare-fun b_and!162503 () Bool)

(declare-fun tp!604283 () Bool)

(assert (=> b!2034509 (= tp!604283 (and (=> t!191135 result!153964) (=> t!191137 result!153966) b_and!162503))))

(declare-fun e!1284984 () Bool)

(assert (=> b!2034509 (= e!1284984 (and tp!604280 tp!604283))))

(declare-fun tp!604282 () Bool)

(declare-fun e!1284982 () Bool)

(declare-fun b!2034508 () Bool)

(assert (=> b!2034508 (= e!1284982 (and tp!604282 (inv!29433 (tag!4489 (h!27645 (t!191097 rules!3198)))) (inv!29436 (transformation!3999 (h!27645 (t!191097 rules!3198)))) e!1284984))))

(declare-fun b!2034507 () Bool)

(declare-fun e!1284985 () Bool)

(declare-fun tp!604281 () Bool)

(assert (=> b!2034507 (= e!1284985 (and e!1284982 tp!604281))))

(assert (=> b!2034177 (= tp!604202 e!1284985)))

(assert (= b!2034508 b!2034509))

(assert (= b!2034507 b!2034508))

(assert (= (and b!2034177 (is-Cons!22244 (t!191097 rules!3198))) b!2034507))

(declare-fun m!2477175 () Bool)

(assert (=> b!2034508 m!2477175))

(declare-fun m!2477177 () Bool)

(assert (=> b!2034508 m!2477177))

(declare-fun b!2034514 () Bool)

(declare-fun e!1284988 () Bool)

(declare-fun tp!604286 () Bool)

(assert (=> b!2034514 (= e!1284988 (and tp_is_empty!9231 tp!604286))))

(assert (=> b!2034178 (= tp!604203 e!1284988)))

(assert (= (and b!2034178 (is-Cons!22243 (originalCharacters!4806 (h!27646 tokens!598)))) b!2034514))

(declare-fun b!2034517 () Bool)

(declare-fun e!1284989 () Bool)

(declare-fun tp!604288 () Bool)

(assert (=> b!2034517 (= e!1284989 tp!604288)))

(assert (=> b!2034168 (= tp!604209 e!1284989)))

(declare-fun b!2034515 () Bool)

(assert (=> b!2034515 (= e!1284989 tp_is_empty!9231)))

(declare-fun b!2034516 () Bool)

(declare-fun tp!604291 () Bool)

(declare-fun tp!604290 () Bool)

(assert (=> b!2034516 (= e!1284989 (and tp!604291 tp!604290))))

(declare-fun b!2034518 () Bool)

(declare-fun tp!604287 () Bool)

(declare-fun tp!604289 () Bool)

(assert (=> b!2034518 (= e!1284989 (and tp!604287 tp!604289))))

(assert (= (and b!2034168 (is-ElementMatch!5424 (regex!3999 (rule!6236 separatorToken!354)))) b!2034515))

(assert (= (and b!2034168 (is-Concat!9560 (regex!3999 (rule!6236 separatorToken!354)))) b!2034516))

(assert (= (and b!2034168 (is-Star!5424 (regex!3999 (rule!6236 separatorToken!354)))) b!2034517))

(assert (= (and b!2034168 (is-Union!5424 (regex!3999 (rule!6236 separatorToken!354)))) b!2034518))

(declare-fun b!2034521 () Bool)

(declare-fun e!1284990 () Bool)

(declare-fun tp!604293 () Bool)

(assert (=> b!2034521 (= e!1284990 tp!604293)))

(assert (=> b!2034179 (= tp!604198 e!1284990)))

(declare-fun b!2034519 () Bool)

(assert (=> b!2034519 (= e!1284990 tp_is_empty!9231)))

(declare-fun b!2034520 () Bool)

(declare-fun tp!604296 () Bool)

(declare-fun tp!604295 () Bool)

(assert (=> b!2034520 (= e!1284990 (and tp!604296 tp!604295))))

(declare-fun b!2034522 () Bool)

(declare-fun tp!604292 () Bool)

(declare-fun tp!604294 () Bool)

(assert (=> b!2034522 (= e!1284990 (and tp!604292 tp!604294))))

(assert (= (and b!2034179 (is-ElementMatch!5424 (regex!3999 (rule!6236 (h!27646 tokens!598))))) b!2034519))

(assert (= (and b!2034179 (is-Concat!9560 (regex!3999 (rule!6236 (h!27646 tokens!598))))) b!2034520))

(assert (= (and b!2034179 (is-Star!5424 (regex!3999 (rule!6236 (h!27646 tokens!598))))) b!2034521))

(assert (= (and b!2034179 (is-Union!5424 (regex!3999 (rule!6236 (h!27646 tokens!598))))) b!2034522))

(declare-fun b!2034536 () Bool)

(declare-fun b_free!56769 () Bool)

(declare-fun b_next!57473 () Bool)

(assert (=> b!2034536 (= b_free!56769 (not b_next!57473))))

(declare-fun tp!604308 () Bool)

(declare-fun b_and!162505 () Bool)

(assert (=> b!2034536 (= tp!604308 b_and!162505)))

(declare-fun b_free!56771 () Bool)

(declare-fun b_next!57475 () Bool)

(assert (=> b!2034536 (= b_free!56771 (not b_next!57475))))

(declare-fun t!191139 () Bool)

(declare-fun tb!128765 () Bool)

(assert (=> (and b!2034536 (= (toChars!5539 (transformation!3999 (rule!6236 (h!27646 (t!191098 tokens!598))))) (toChars!5539 (transformation!3999 (rule!6236 (h!27646 tokens!598))))) t!191139) tb!128765))

(declare-fun result!153972 () Bool)

(assert (= result!153972 result!153946))

(assert (=> b!2034444 t!191139))

(declare-fun t!191141 () Bool)

(declare-fun tb!128767 () Bool)

(assert (=> (and b!2034536 (= (toChars!5539 (transformation!3999 (rule!6236 (h!27646 (t!191098 tokens!598))))) (toChars!5539 (transformation!3999 (rule!6236 separatorToken!354)))) t!191141) tb!128767))

(declare-fun result!153974 () Bool)

(assert (= result!153974 result!153954))

(assert (=> b!2034476 t!191141))

(declare-fun tp!604310 () Bool)

(declare-fun b_and!162507 () Bool)

(assert (=> b!2034536 (= tp!604310 (and (=> t!191139 result!153972) (=> t!191141 result!153974) b_and!162507))))

(declare-fun e!1285005 () Bool)

(assert (=> b!2034536 (= e!1285005 (and tp!604308 tp!604310))))

(declare-fun e!1285004 () Bool)

(declare-fun b!2034533 () Bool)

(declare-fun tp!604307 () Bool)

(declare-fun e!1285008 () Bool)

(assert (=> b!2034533 (= e!1285004 (and (inv!29437 (h!27646 (t!191098 tokens!598))) e!1285008 tp!604307))))

(assert (=> b!2034185 (= tp!604205 e!1285004)))

(declare-fun tp!604309 () Bool)

(declare-fun e!1285003 () Bool)

(declare-fun b!2034534 () Bool)

(assert (=> b!2034534 (= e!1285008 (and (inv!21 (value!125564 (h!27646 (t!191098 tokens!598)))) e!1285003 tp!604309))))

(declare-fun b!2034535 () Bool)

(declare-fun tp!604311 () Bool)

(assert (=> b!2034535 (= e!1285003 (and tp!604311 (inv!29433 (tag!4489 (rule!6236 (h!27646 (t!191098 tokens!598))))) (inv!29436 (transformation!3999 (rule!6236 (h!27646 (t!191098 tokens!598))))) e!1285005))))

(assert (= b!2034535 b!2034536))

(assert (= b!2034534 b!2034535))

(assert (= b!2034533 b!2034534))

(assert (= (and b!2034185 (is-Cons!22245 (t!191098 tokens!598))) b!2034533))

(declare-fun m!2477179 () Bool)

(assert (=> b!2034533 m!2477179))

(declare-fun m!2477181 () Bool)

(assert (=> b!2034534 m!2477181))

(declare-fun m!2477183 () Bool)

(assert (=> b!2034535 m!2477183))

(declare-fun m!2477185 () Bool)

(assert (=> b!2034535 m!2477185))

(declare-fun b!2034537 () Bool)

(declare-fun e!1285009 () Bool)

(declare-fun tp!604312 () Bool)

(assert (=> b!2034537 (= e!1285009 (and tp_is_empty!9231 tp!604312))))

(assert (=> b!2034180 (= tp!604206 e!1285009)))

(assert (= (and b!2034180 (is-Cons!22243 (originalCharacters!4806 separatorToken!354))) b!2034537))

(declare-fun b_lambda!68633 () Bool)

(assert (= b_lambda!68629 (or b!2034176 b_lambda!68633)))

(declare-fun bs!421293 () Bool)

(declare-fun d!622895 () Bool)

(assert (= bs!421293 (and d!622895 b!2034176)))

(assert (=> bs!421293 (= (dynLambda!11081 lambda!76626 (h!27646 tokens!598)) (not (isSeparator!3999 (rule!6236 (h!27646 tokens!598)))))))

(assert (=> b!2034455 d!622895))

(declare-fun b_lambda!68635 () Bool)

(assert (= b_lambda!68627 (or (and b!2034169 b_free!56747) (and b!2034165 b_free!56743 (= (toChars!5539 (transformation!3999 (h!27645 rules!3198))) (toChars!5539 (transformation!3999 (rule!6236 (h!27646 tokens!598)))))) (and b!2034536 b_free!56771 (= (toChars!5539 (transformation!3999 (rule!6236 (h!27646 (t!191098 tokens!598))))) (toChars!5539 (transformation!3999 (rule!6236 (h!27646 tokens!598)))))) (and b!2034182 b_free!56751 (= (toChars!5539 (transformation!3999 (rule!6236 separatorToken!354))) (toChars!5539 (transformation!3999 (rule!6236 (h!27646 tokens!598)))))) (and b!2034509 b_free!56767 (= (toChars!5539 (transformation!3999 (h!27645 (t!191097 rules!3198)))) (toChars!5539 (transformation!3999 (rule!6236 (h!27646 tokens!598)))))) b_lambda!68635)))

(declare-fun b_lambda!68637 () Bool)

(assert (= b_lambda!68631 (or (and b!2034509 b_free!56767 (= (toChars!5539 (transformation!3999 (h!27645 (t!191097 rules!3198)))) (toChars!5539 (transformation!3999 (rule!6236 separatorToken!354))))) (and b!2034536 b_free!56771 (= (toChars!5539 (transformation!3999 (rule!6236 (h!27646 (t!191098 tokens!598))))) (toChars!5539 (transformation!3999 (rule!6236 separatorToken!354))))) (and b!2034165 b_free!56743 (= (toChars!5539 (transformation!3999 (h!27645 rules!3198))) (toChars!5539 (transformation!3999 (rule!6236 separatorToken!354))))) (and b!2034169 b_free!56747 (= (toChars!5539 (transformation!3999 (rule!6236 (h!27646 tokens!598)))) (toChars!5539 (transformation!3999 (rule!6236 separatorToken!354))))) (and b!2034182 b_free!56751) b_lambda!68637)))

(push 1)

(assert (not b!2034517))

(assert b_and!162461)

(assert b_and!162497)

(assert (not b!2034521))

(assert (not b!2034360))

(assert (not b!2034429))

(assert (not b!2034470))

(assert (not b!2034437))

(assert (not b_next!57471))

(assert (not b!2034459))

(assert (not bm!124854))

(assert (not b!2034254))

(assert (not b!2034310))

(assert (not b!2034522))

(assert (not b!2034358))

(assert (not b!2034478))

(assert (not b_next!57453))

(assert (not b!2034537))

(assert (not b!2034450))

(assert (not b!2034507))

(assert (not b!2034471))

(assert (not b!2034476))

(assert (not b!2034482))

(assert (not b!2034357))

(assert (not b!2034534))

(assert b_and!162499)

(assert (not tb!128749))

(assert (not d!622849))

(assert (not b!2034480))

(assert (not b!2034481))

(assert (not d!622813))

(assert b_and!162495)

(assert b_and!162457)

(assert (not bm!124850))

(assert (not d!622851))

(assert (not b!2034323))

(assert (not b!2034309))

(assert (not tb!128755))

(assert (not b_lambda!68635))

(assert (not b!2034508))

(assert b_and!162503)

(assert (not b!2034445))

(assert (not d!622883))

(assert (not bm!124836))

(assert (not b!2034361))

(assert (not b_next!57455))

(assert (not b!2034333))

(assert (not b!2034363))

(assert (not b!2034520))

(assert (not b_lambda!68633))

(assert (not b_next!57445))

(assert b_and!162453)

(assert (not b_next!57451))

(assert (not b!2034324))

(assert (not b!2034364))

(assert (not d!622853))

(assert (not b!2034498))

(assert (not b!2034516))

(assert (not d!622881))

(assert b_and!162501)

(assert b_and!162507)

(assert (not b!2034444))

(assert (not b_next!57469))

(assert (not b!2034431))

(assert (not b!2034533))

(assert (not b!2034359))

(assert (not b!2034497))

(assert (not b_next!57473))

(assert (not b!2034518))

(assert (not b!2034311))

(assert (not b_next!57449))

(assert (not bm!124853))

(assert b_and!162505)

(assert (not b_next!57475))

(assert (not b!2034472))

(assert (not b_lambda!68637))

(assert (not b!2034475))

(assert (not b!2034434))

(assert (not b!2034535))

(assert (not b!2034514))

(assert tp_is_empty!9231)

(assert (not b!2034456))

(assert (not b!2034432))

(assert (not b_next!57447))

(assert (not b!2034314))

(assert (not d!622887))

(assert (not b!2034496))

(assert (not b!2034477))

(assert (not d!622847))

(assert (not b!2034362))

(assert (not d!622875))

(assert (not d!622867))

(assert (not b!2034253))

(assert (not b!2034479))

(check-sat)

(pop 1)

(push 1)

(assert b_and!162497)

(assert (not b_next!57471))

(assert (not b_next!57453))

(assert b_and!162499)

(assert b_and!162503)

(assert (not b_next!57455))

(assert (not b_next!57445))

(assert (not b_next!57473))

(assert (not b_next!57447))

(assert b_and!162461)

(assert b_and!162495)

(assert b_and!162457)

(assert b_and!162453)

(assert (not b_next!57451))

(assert b_and!162501)

(assert b_and!162507)

(assert (not b_next!57469))

(assert (not b_next!57449))

(assert b_and!162505)

(assert (not b_next!57475))

(check-sat)

(pop 1)

