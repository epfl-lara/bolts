; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!77492 () Bool)

(assert start!77492)

(declare-fun b!859186 () Bool)

(declare-fun b_free!26109 () Bool)

(declare-fun b_next!26173 () Bool)

(assert (=> b!859186 (= b_free!26109 (not b_next!26173))))

(declare-fun tp!271052 () Bool)

(declare-fun b_and!76393 () Bool)

(assert (=> b!859186 (= tp!271052 b_and!76393)))

(declare-fun b_free!26111 () Bool)

(declare-fun b_next!26175 () Bool)

(assert (=> b!859186 (= b_free!26111 (not b_next!26175))))

(declare-fun tp!271048 () Bool)

(declare-fun b_and!76395 () Bool)

(assert (=> b!859186 (= tp!271048 b_and!76395)))

(declare-fun b!859187 () Bool)

(declare-fun b_free!26113 () Bool)

(declare-fun b_next!26177 () Bool)

(assert (=> b!859187 (= b_free!26113 (not b_next!26177))))

(declare-fun tp!271056 () Bool)

(declare-fun b_and!76397 () Bool)

(assert (=> b!859187 (= tp!271056 b_and!76397)))

(declare-fun b_free!26115 () Bool)

(declare-fun b_next!26179 () Bool)

(assert (=> b!859187 (= b_free!26115 (not b_next!26179))))

(declare-fun tp!271051 () Bool)

(declare-fun b_and!76399 () Bool)

(assert (=> b!859187 (= tp!271051 b_and!76399)))

(declare-fun b!859177 () Bool)

(declare-fun b_free!26117 () Bool)

(declare-fun b_next!26181 () Bool)

(assert (=> b!859177 (= b_free!26117 (not b_next!26181))))

(declare-fun tp!271049 () Bool)

(declare-fun b_and!76401 () Bool)

(assert (=> b!859177 (= tp!271049 b_and!76401)))

(declare-fun b_free!26119 () Bool)

(declare-fun b_next!26183 () Bool)

(assert (=> b!859177 (= b_free!26119 (not b_next!26183))))

(declare-fun tp!271047 () Bool)

(declare-fun b_and!76403 () Bool)

(assert (=> b!859177 (= tp!271047 b_and!76403)))

(declare-fun b!859174 () Bool)

(declare-fun res!392010 () Bool)

(declare-fun e!565478 () Bool)

(assert (=> b!859174 (=> (not res!392010) (not e!565478))))

(declare-datatypes ((List!9280 0))(
  ( (Nil!9264) (Cons!9264 (h!14665 (_ BitVec 16)) (t!97408 List!9280)) )
))
(declare-datatypes ((TokenValue!1803 0))(
  ( (FloatLiteralValue!3606 (text!13066 List!9280)) (TokenValueExt!1802 (__x!7337 Int)) (Broken!9015 (value!56179 List!9280)) (Object!1818) (End!1803) (Def!1803) (Underscore!1803) (Match!1803) (Else!1803) (Error!1803) (Case!1803) (If!1803) (Extends!1803) (Abstract!1803) (Class!1803) (Val!1803) (DelimiterValue!3606 (del!1863 List!9280)) (KeywordValue!1809 (value!56180 List!9280)) (CommentValue!3606 (value!56181 List!9280)) (WhitespaceValue!3606 (value!56182 List!9280)) (IndentationValue!1803 (value!56183 List!9280)) (String!10914) (Int32!1803) (Broken!9016 (value!56184 List!9280)) (Boolean!1804) (Unit!13805) (OperatorValue!1806 (op!1863 List!9280)) (IdentifierValue!3606 (value!56185 List!9280)) (IdentifierValue!3607 (value!56186 List!9280)) (WhitespaceValue!3607 (value!56187 List!9280)) (True!3606) (False!3606) (Broken!9017 (value!56188 List!9280)) (Broken!9018 (value!56189 List!9280)) (True!3607) (RightBrace!1803) (RightBracket!1803) (Colon!1803) (Null!1803) (Comma!1803) (LeftBracket!1803) (False!3607) (LeftBrace!1803) (ImaginaryLiteralValue!1803 (text!13067 List!9280)) (StringLiteralValue!5409 (value!56190 List!9280)) (EOFValue!1803 (value!56191 List!9280)) (IdentValue!1803 (value!56192 List!9280)) (DelimiterValue!3607 (value!56193 List!9280)) (DedentValue!1803 (value!56194 List!9280)) (NewLineValue!1803 (value!56195 List!9280)) (IntegerValue!5409 (value!56196 (_ BitVec 32)) (text!13068 List!9280)) (IntegerValue!5410 (value!56197 Int) (text!13069 List!9280)) (Times!1803) (Or!1803) (Equal!1803) (Minus!1803) (Broken!9019 (value!56198 List!9280)) (And!1803) (Div!1803) (LessEqual!1803) (Mod!1803) (Concat!3973) (Not!1803) (Plus!1803) (SpaceValue!1803 (value!56199 List!9280)) (IntegerValue!5411 (value!56200 Int) (text!13070 List!9280)) (StringLiteralValue!5410 (text!13071 List!9280)) (FloatLiteralValue!3607 (text!13072 List!9280)) (BytesLiteralValue!1803 (value!56201 List!9280)) (CommentValue!3607 (value!56202 List!9280)) (StringLiteralValue!5411 (value!56203 List!9280)) (ErrorTokenValue!1803 (msg!1864 List!9280)) )
))
(declare-datatypes ((C!4910 0))(
  ( (C!4911 (val!2703 Int)) )
))
(declare-datatypes ((Regex!2170 0))(
  ( (ElementMatch!2170 (c!139177 C!4910)) (Concat!3974 (regOne!4852 Regex!2170) (regTwo!4852 Regex!2170)) (EmptyExpr!2170) (Star!2170 (reg!2499 Regex!2170)) (EmptyLang!2170) (Union!2170 (regOne!4853 Regex!2170) (regTwo!4853 Regex!2170)) )
))
(declare-datatypes ((String!10915 0))(
  ( (String!10916 (value!56204 String)) )
))
(declare-datatypes ((List!9281 0))(
  ( (Nil!9265) (Cons!9265 (h!14666 C!4910) (t!97409 List!9281)) )
))
(declare-datatypes ((IArray!6145 0))(
  ( (IArray!6146 (innerList!3130 List!9281)) )
))
(declare-datatypes ((Conc!3070 0))(
  ( (Node!3070 (left!6856 Conc!3070) (right!7186 Conc!3070) (csize!6370 Int) (cheight!3281 Int)) (Leaf!4527 (xs!5759 IArray!6145) (csize!6371 Int)) (Empty!3070) )
))
(declare-datatypes ((BalanceConc!6154 0))(
  ( (BalanceConc!6155 (c!139178 Conc!3070)) )
))
(declare-datatypes ((TokenValueInjection!3306 0))(
  ( (TokenValueInjection!3307 (toValue!2802 Int) (toChars!2661 Int)) )
))
(declare-datatypes ((Rule!3274 0))(
  ( (Rule!3275 (regex!1737 Regex!2170) (tag!1999 String!10915) (isSeparator!1737 Bool) (transformation!1737 TokenValueInjection!3306)) )
))
(declare-datatypes ((List!9282 0))(
  ( (Nil!9266) (Cons!9266 (h!14667 Rule!3274) (t!97410 List!9282)) )
))
(declare-fun rules!2621 () List!9282)

(declare-fun isEmpty!5502 (List!9282) Bool)

(assert (=> b!859174 (= res!392010 (not (isEmpty!5502 rules!2621)))))

(declare-fun b!859175 () Bool)

(declare-fun res!392013 () Bool)

(assert (=> b!859175 (=> (not res!392013) (not e!565478))))

(declare-fun sepAndNonSepRulesDisjointChars!537 (List!9282 List!9282) Bool)

(assert (=> b!859175 (= res!392013 (sepAndNonSepRulesDisjointChars!537 rules!2621 rules!2621))))

(declare-fun res!392012 () Bool)

(assert (=> start!77492 (=> (not res!392012) (not e!565478))))

(declare-datatypes ((LexerInterface!1539 0))(
  ( (LexerInterfaceExt!1536 (__x!7338 Int)) (Lexer!1537) )
))
(declare-fun thiss!20117 () LexerInterface!1539)

(assert (=> start!77492 (= res!392012 (is-Lexer!1537 thiss!20117))))

(assert (=> start!77492 e!565478))

(assert (=> start!77492 true))

(declare-fun e!565471 () Bool)

(assert (=> start!77492 e!565471))

(declare-fun e!565469 () Bool)

(assert (=> start!77492 e!565469))

(declare-datatypes ((Token!3140 0))(
  ( (Token!3141 (value!56205 TokenValue!1803) (rule!3160 Rule!3274) (size!7742 Int) (originalCharacters!2293 List!9281)) )
))
(declare-fun separatorToken!297 () Token!3140)

(declare-fun e!565466 () Bool)

(declare-fun inv!11791 (Token!3140) Bool)

(assert (=> start!77492 (and (inv!11791 separatorToken!297) e!565466)))

(declare-fun tp!271050 () Bool)

(declare-fun e!565476 () Bool)

(declare-fun e!565472 () Bool)

(declare-fun b!859176 () Bool)

(declare-fun inv!11788 (String!10915) Bool)

(declare-fun inv!11792 (TokenValueInjection!3306) Bool)

(assert (=> b!859176 (= e!565476 (and tp!271050 (inv!11788 (tag!1999 (rule!3160 separatorToken!297))) (inv!11792 (transformation!1737 (rule!3160 separatorToken!297))) e!565472))))

(declare-fun e!565465 () Bool)

(assert (=> b!859177 (= e!565465 (and tp!271049 tp!271047))))

(declare-fun tp!271054 () Bool)

(declare-fun b!859178 () Bool)

(declare-fun inv!21 (TokenValue!1803) Bool)

(assert (=> b!859178 (= e!565466 (and (inv!21 (value!56205 separatorToken!297)) e!565476 tp!271054))))

(declare-fun b!859179 () Bool)

(declare-fun res!392008 () Bool)

(assert (=> b!859179 (=> (not res!392008) (not e!565478))))

(declare-datatypes ((List!9283 0))(
  ( (Nil!9267) (Cons!9267 (h!14668 Token!3140) (t!97411 List!9283)) )
))
(declare-fun l!5107 () List!9283)

(declare-fun lambda!25807 () Int)

(declare-fun forall!2200 (List!9283 Int) Bool)

(assert (=> b!859179 (= res!392008 (forall!2200 l!5107 lambda!25807))))

(declare-fun e!565475 () Bool)

(declare-fun lt!324986 () List!9283)

(declare-fun b!859180 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!53 (LexerInterface!1539 List!9283 List!9282) Bool)

(assert (=> b!859180 (= e!565475 (tokensListTwoByTwoPredicateSeparableList!53 thiss!20117 lt!324986 rules!2621))))

(declare-fun b!859181 () Bool)

(declare-fun res!392011 () Bool)

(assert (=> b!859181 (=> (not res!392011) (not e!565478))))

(declare-fun rulesProduceIndividualToken!603 (LexerInterface!1539 List!9282 Token!3140) Bool)

(assert (=> b!859181 (= res!392011 (rulesProduceIndividualToken!603 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!859182 () Bool)

(declare-fun res!392005 () Bool)

(assert (=> b!859182 (=> (not res!392005) (not e!565478))))

(declare-fun rulesProduceEachTokenIndividuallyList!427 (LexerInterface!1539 List!9282 List!9283) Bool)

(assert (=> b!859182 (= res!392005 (rulesProduceEachTokenIndividuallyList!427 thiss!20117 rules!2621 l!5107))))

(declare-fun b!859183 () Bool)

(declare-fun e!565470 () Bool)

(declare-fun tp!271057 () Bool)

(assert (=> b!859183 (= e!565471 (and e!565470 tp!271057))))

(declare-fun e!565464 () Bool)

(declare-fun b!859184 () Bool)

(declare-fun e!565467 () Bool)

(declare-fun tp!271058 () Bool)

(assert (=> b!859184 (= e!565464 (and tp!271058 (inv!11788 (tag!1999 (rule!3160 (h!14668 l!5107)))) (inv!11792 (transformation!1737 (rule!3160 (h!14668 l!5107)))) e!565467))))

(declare-fun tp!271053 () Bool)

(declare-fun b!859185 () Bool)

(assert (=> b!859185 (= e!565470 (and tp!271053 (inv!11788 (tag!1999 (h!14667 rules!2621))) (inv!11792 (transformation!1737 (h!14667 rules!2621))) e!565465))))

(assert (=> b!859186 (= e!565467 (and tp!271052 tp!271048))))

(assert (=> b!859187 (= e!565472 (and tp!271056 tp!271051))))

(declare-fun b!859188 () Bool)

(assert (=> b!859188 (= e!565478 (not e!565475))))

(declare-fun res!392009 () Bool)

(assert (=> b!859188 (=> res!392009 e!565475)))

(assert (=> b!859188 (= res!392009 (and (is-Cons!9267 lt!324986) (is-Cons!9267 (t!97411 lt!324986))))))

(assert (=> b!859188 (rulesProduceEachTokenIndividuallyList!427 thiss!20117 rules!2621 lt!324986)))

(declare-fun withSeparatorTokenList!69 (LexerInterface!1539 List!9283 Token!3140) List!9283)

(assert (=> b!859188 (= lt!324986 (withSeparatorTokenList!69 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13806 0))(
  ( (Unit!13807) )
))
(declare-fun lt!324987 () Unit!13806)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!69 (LexerInterface!1539 List!9282 List!9283 Token!3140) Unit!13806)

(assert (=> b!859188 (= lt!324987 (withSeparatorTokenListPreservesRulesProduceTokens!69 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun e!565468 () Bool)

(declare-fun b!859189 () Bool)

(declare-fun tp!271055 () Bool)

(assert (=> b!859189 (= e!565468 (and (inv!21 (value!56205 (h!14668 l!5107))) e!565464 tp!271055))))

(declare-fun b!859190 () Bool)

(declare-fun tp!271059 () Bool)

(assert (=> b!859190 (= e!565469 (and (inv!11791 (h!14668 l!5107)) e!565468 tp!271059))))

(declare-fun b!859191 () Bool)

(declare-fun res!392006 () Bool)

(assert (=> b!859191 (=> (not res!392006) (not e!565478))))

(declare-fun rulesInvariant!1415 (LexerInterface!1539 List!9282) Bool)

(assert (=> b!859191 (= res!392006 (rulesInvariant!1415 thiss!20117 rules!2621))))

(declare-fun b!859192 () Bool)

(declare-fun res!392007 () Bool)

(assert (=> b!859192 (=> (not res!392007) (not e!565478))))

(assert (=> b!859192 (= res!392007 (isSeparator!1737 (rule!3160 separatorToken!297)))))

(assert (= (and start!77492 res!392012) b!859174))

(assert (= (and b!859174 res!392010) b!859191))

(assert (= (and b!859191 res!392006) b!859182))

(assert (= (and b!859182 res!392005) b!859181))

(assert (= (and b!859181 res!392011) b!859192))

(assert (= (and b!859192 res!392007) b!859179))

(assert (= (and b!859179 res!392008) b!859175))

(assert (= (and b!859175 res!392013) b!859188))

(assert (= (and b!859188 (not res!392009)) b!859180))

(assert (= b!859185 b!859177))

(assert (= b!859183 b!859185))

(assert (= (and start!77492 (is-Cons!9266 rules!2621)) b!859183))

(assert (= b!859184 b!859186))

(assert (= b!859189 b!859184))

(assert (= b!859190 b!859189))

(assert (= (and start!77492 (is-Cons!9267 l!5107)) b!859190))

(assert (= b!859176 b!859187))

(assert (= b!859178 b!859176))

(assert (= start!77492 b!859178))

(declare-fun m!1103037 () Bool)

(assert (=> b!859191 m!1103037))

(declare-fun m!1103039 () Bool)

(assert (=> b!859182 m!1103039))

(declare-fun m!1103041 () Bool)

(assert (=> b!859174 m!1103041))

(declare-fun m!1103043 () Bool)

(assert (=> start!77492 m!1103043))

(declare-fun m!1103045 () Bool)

(assert (=> b!859190 m!1103045))

(declare-fun m!1103047 () Bool)

(assert (=> b!859185 m!1103047))

(declare-fun m!1103049 () Bool)

(assert (=> b!859185 m!1103049))

(declare-fun m!1103051 () Bool)

(assert (=> b!859184 m!1103051))

(declare-fun m!1103053 () Bool)

(assert (=> b!859184 m!1103053))

(declare-fun m!1103055 () Bool)

(assert (=> b!859178 m!1103055))

(declare-fun m!1103057 () Bool)

(assert (=> b!859175 m!1103057))

(declare-fun m!1103059 () Bool)

(assert (=> b!859189 m!1103059))

(declare-fun m!1103061 () Bool)

(assert (=> b!859181 m!1103061))

(declare-fun m!1103063 () Bool)

(assert (=> b!859176 m!1103063))

(declare-fun m!1103065 () Bool)

(assert (=> b!859176 m!1103065))

(declare-fun m!1103067 () Bool)

(assert (=> b!859179 m!1103067))

(declare-fun m!1103069 () Bool)

(assert (=> b!859188 m!1103069))

(declare-fun m!1103071 () Bool)

(assert (=> b!859188 m!1103071))

(declare-fun m!1103073 () Bool)

(assert (=> b!859188 m!1103073))

(declare-fun m!1103075 () Bool)

(assert (=> b!859180 m!1103075))

(push 1)

(assert (not b_next!26177))

(assert b_and!76397)

(assert (not start!77492))

(assert (not b!859185))

(assert (not b_next!26181))

(assert b_and!76401)

(assert (not b!859182))

(assert (not b_next!26173))

(assert (not b_next!26175))

(assert (not b!859179))

(assert (not b!859191))

(assert (not b!859188))

(assert b_and!76393)

(assert b_and!76403)

(assert b_and!76399)

(assert (not b!859178))

(assert (not b!859181))

(assert (not b!859176))

(assert (not b!859175))

(assert (not b!859183))

(assert (not b!859184))

(assert (not b!859174))

(assert (not b!859180))

(assert (not b!859190))

(assert (not b_next!26179))

(assert (not b_next!26183))

(assert b_and!76395)

(assert (not b!859189))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!26177))

(assert b_and!76397)

(assert b_and!76399)

(assert (not b_next!26181))

(assert b_and!76401)

(assert (not b_next!26173))

(assert (not b_next!26175))

(assert b_and!76393)

(assert b_and!76403)

(assert (not b_next!26179))

(assert (not b_next!26183))

(assert b_and!76395)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!269343 () Bool)

(assert (=> d!269343 (= (inv!11788 (tag!1999 (rule!3160 separatorToken!297))) (= (mod (str.len (value!56204 (tag!1999 (rule!3160 separatorToken!297)))) 2) 0))))

(assert (=> b!859176 d!269343))

(declare-fun d!269347 () Bool)

(declare-fun res!392053 () Bool)

(declare-fun e!565538 () Bool)

(assert (=> d!269347 (=> (not res!392053) (not e!565538))))

(declare-fun semiInverseModEq!683 (Int Int) Bool)

(assert (=> d!269347 (= res!392053 (semiInverseModEq!683 (toChars!2661 (transformation!1737 (rule!3160 separatorToken!297))) (toValue!2802 (transformation!1737 (rule!3160 separatorToken!297)))))))

(assert (=> d!269347 (= (inv!11792 (transformation!1737 (rule!3160 separatorToken!297))) e!565538)))

(declare-fun b!859258 () Bool)

(declare-fun equivClasses!650 (Int Int) Bool)

(assert (=> b!859258 (= e!565538 (equivClasses!650 (toChars!2661 (transformation!1737 (rule!3160 separatorToken!297))) (toValue!2802 (transformation!1737 (rule!3160 separatorToken!297)))))))

(assert (= (and d!269347 res!392053) b!859258))

(declare-fun m!1103121 () Bool)

(assert (=> d!269347 m!1103121))

(declare-fun m!1103123 () Bool)

(assert (=> b!859258 m!1103123))

(assert (=> b!859176 d!269347))

(declare-fun d!269349 () Bool)

(declare-fun c!139186 () Bool)

(assert (=> d!269349 (= c!139186 (is-IntegerValue!5409 (value!56205 separatorToken!297)))))

(declare-fun e!565547 () Bool)

(assert (=> d!269349 (= (inv!21 (value!56205 separatorToken!297)) e!565547)))

(declare-fun b!859269 () Bool)

(declare-fun e!565545 () Bool)

(declare-fun inv!17 (TokenValue!1803) Bool)

(assert (=> b!859269 (= e!565545 (inv!17 (value!56205 separatorToken!297)))))

(declare-fun b!859270 () Bool)

(assert (=> b!859270 (= e!565547 e!565545)))

(declare-fun c!139185 () Bool)

(assert (=> b!859270 (= c!139185 (is-IntegerValue!5410 (value!56205 separatorToken!297)))))

(declare-fun b!859271 () Bool)

(declare-fun inv!16 (TokenValue!1803) Bool)

(assert (=> b!859271 (= e!565547 (inv!16 (value!56205 separatorToken!297)))))

(declare-fun b!859272 () Bool)

(declare-fun res!392056 () Bool)

(declare-fun e!565546 () Bool)

(assert (=> b!859272 (=> res!392056 e!565546)))

(assert (=> b!859272 (= res!392056 (not (is-IntegerValue!5411 (value!56205 separatorToken!297))))))

(assert (=> b!859272 (= e!565545 e!565546)))

(declare-fun b!859273 () Bool)

(declare-fun inv!15 (TokenValue!1803) Bool)

(assert (=> b!859273 (= e!565546 (inv!15 (value!56205 separatorToken!297)))))

(assert (= (and d!269349 c!139186) b!859271))

(assert (= (and d!269349 (not c!139186)) b!859270))

(assert (= (and b!859270 c!139185) b!859269))

(assert (= (and b!859270 (not c!139185)) b!859272))

(assert (= (and b!859272 (not res!392056)) b!859273))

(declare-fun m!1103125 () Bool)

(assert (=> b!859269 m!1103125))

(declare-fun m!1103127 () Bool)

(assert (=> b!859271 m!1103127))

(declare-fun m!1103129 () Bool)

(assert (=> b!859273 m!1103129))

(assert (=> b!859178 d!269349))

(declare-fun d!269351 () Bool)

(declare-fun c!139188 () Bool)

(assert (=> d!269351 (= c!139188 (is-IntegerValue!5409 (value!56205 (h!14668 l!5107))))))

(declare-fun e!565550 () Bool)

(assert (=> d!269351 (= (inv!21 (value!56205 (h!14668 l!5107))) e!565550)))

(declare-fun b!859274 () Bool)

(declare-fun e!565548 () Bool)

(assert (=> b!859274 (= e!565548 (inv!17 (value!56205 (h!14668 l!5107))))))

(declare-fun b!859275 () Bool)

(assert (=> b!859275 (= e!565550 e!565548)))

(declare-fun c!139187 () Bool)

(assert (=> b!859275 (= c!139187 (is-IntegerValue!5410 (value!56205 (h!14668 l!5107))))))

(declare-fun b!859276 () Bool)

(assert (=> b!859276 (= e!565550 (inv!16 (value!56205 (h!14668 l!5107))))))

(declare-fun b!859277 () Bool)

(declare-fun res!392057 () Bool)

(declare-fun e!565549 () Bool)

(assert (=> b!859277 (=> res!392057 e!565549)))

(assert (=> b!859277 (= res!392057 (not (is-IntegerValue!5411 (value!56205 (h!14668 l!5107)))))))

(assert (=> b!859277 (= e!565548 e!565549)))

(declare-fun b!859278 () Bool)

(assert (=> b!859278 (= e!565549 (inv!15 (value!56205 (h!14668 l!5107))))))

(assert (= (and d!269351 c!139188) b!859276))

(assert (= (and d!269351 (not c!139188)) b!859275))

(assert (= (and b!859275 c!139187) b!859274))

(assert (= (and b!859275 (not c!139187)) b!859277))

(assert (= (and b!859277 (not res!392057)) b!859278))

(declare-fun m!1103131 () Bool)

(assert (=> b!859274 m!1103131))

(declare-fun m!1103133 () Bool)

(assert (=> b!859276 m!1103133))

(declare-fun m!1103135 () Bool)

(assert (=> b!859278 m!1103135))

(assert (=> b!859189 d!269351))

(declare-fun bs!232330 () Bool)

(declare-fun d!269353 () Bool)

(assert (= bs!232330 (and d!269353 b!859179)))

(declare-fun lambda!25813 () Int)

(assert (=> bs!232330 (not (= lambda!25813 lambda!25807))))

(declare-fun b!859342 () Bool)

(declare-fun e!565596 () Bool)

(assert (=> b!859342 (= e!565596 true)))

(declare-fun b!859341 () Bool)

(declare-fun e!565595 () Bool)

(assert (=> b!859341 (= e!565595 e!565596)))

(declare-fun b!859340 () Bool)

(declare-fun e!565594 () Bool)

(assert (=> b!859340 (= e!565594 e!565595)))

(assert (=> d!269353 e!565594))

(assert (= b!859341 b!859342))

(assert (= b!859340 b!859341))

(assert (= (and d!269353 (is-Cons!9266 rules!2621)) b!859340))

(declare-fun order!6017 () Int)

(declare-fun order!6019 () Int)

(declare-fun dynLambda!4370 (Int Int) Int)

(declare-fun dynLambda!4371 (Int Int) Int)

(assert (=> b!859342 (< (dynLambda!4370 order!6017 (toValue!2802 (transformation!1737 (h!14667 rules!2621)))) (dynLambda!4371 order!6019 lambda!25813))))

(declare-fun order!6021 () Int)

(declare-fun dynLambda!4372 (Int Int) Int)

(assert (=> b!859342 (< (dynLambda!4372 order!6021 (toChars!2661 (transformation!1737 (h!14667 rules!2621)))) (dynLambda!4371 order!6019 lambda!25813))))

(assert (=> d!269353 true))

(declare-fun lt!325002 () Bool)

(assert (=> d!269353 (= lt!325002 (forall!2200 lt!324986 lambda!25813))))

(declare-fun e!565582 () Bool)

(assert (=> d!269353 (= lt!325002 e!565582)))

(declare-fun res!392085 () Bool)

(assert (=> d!269353 (=> res!392085 e!565582)))

(assert (=> d!269353 (= res!392085 (not (is-Cons!9267 lt!324986)))))

(assert (=> d!269353 (not (isEmpty!5502 rules!2621))))

(assert (=> d!269353 (= (rulesProduceEachTokenIndividuallyList!427 thiss!20117 rules!2621 lt!324986) lt!325002)))

(declare-fun b!859326 () Bool)

(declare-fun e!565583 () Bool)

(assert (=> b!859326 (= e!565582 e!565583)))

(declare-fun res!392084 () Bool)

(assert (=> b!859326 (=> (not res!392084) (not e!565583))))

(assert (=> b!859326 (= res!392084 (rulesProduceIndividualToken!603 thiss!20117 rules!2621 (h!14668 lt!324986)))))

(declare-fun b!859327 () Bool)

(assert (=> b!859327 (= e!565583 (rulesProduceEachTokenIndividuallyList!427 thiss!20117 rules!2621 (t!97411 lt!324986)))))

(assert (= (and d!269353 (not res!392085)) b!859326))

(assert (= (and b!859326 res!392084) b!859327))

(declare-fun m!1103183 () Bool)

(assert (=> d!269353 m!1103183))

(assert (=> d!269353 m!1103041))

(declare-fun m!1103185 () Bool)

(assert (=> b!859326 m!1103185))

(declare-fun m!1103187 () Bool)

(assert (=> b!859327 m!1103187))

(assert (=> b!859188 d!269353))

(declare-fun b!859372 () Bool)

(declare-fun e!565619 () List!9281)

(declare-fun lt!325047 () List!9283)

(declare-fun ++!2403 (List!9281 List!9281) List!9281)

(declare-fun list!3659 (BalanceConc!6154) List!9281)

(declare-fun charsOf!1004 (Token!3140) BalanceConc!6154)

(declare-fun printList!487 (LexerInterface!1539 List!9283) List!9281)

(assert (=> b!859372 (= e!565619 (++!2403 (list!3659 (charsOf!1004 (h!14668 lt!325047))) (printList!487 thiss!20117 (t!97411 lt!325047))))))

(declare-fun b!859373 () Bool)

(assert (=> b!859373 (= e!565619 Nil!9265)))

(declare-fun b!859374 () Bool)

(declare-fun e!565617 () List!9283)

(assert (=> b!859374 (= e!565617 Nil!9267)))

(declare-fun b!859375 () Bool)

(declare-fun e!565618 () List!9281)

(declare-fun lt!325046 () List!9283)

(assert (=> b!859375 (= e!565618 (++!2403 (list!3659 (charsOf!1004 (h!14668 lt!325046))) (printList!487 thiss!20117 (t!97411 lt!325046))))))

(declare-fun b!859376 () Bool)

(declare-fun res!392105 () Bool)

(declare-fun e!565621 () Bool)

(assert (=> b!859376 (=> (not res!392105) (not e!565621))))

(declare-fun e!565620 () Bool)

(assert (=> b!859376 (= res!392105 e!565620)))

(declare-fun res!392107 () Bool)

(assert (=> b!859376 (=> res!392107 e!565620)))

(assert (=> b!859376 (= res!392107 (not (is-Cons!9267 l!5107)))))

(declare-fun d!269369 () Bool)

(declare-fun lt!325041 () List!9283)

(declare-fun printWithSeparatorTokenList!45 (LexerInterface!1539 List!9283 Token!3140) List!9281)

(assert (=> d!269369 (= (printList!487 thiss!20117 lt!325041) (printWithSeparatorTokenList!45 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!269369 (= lt!325041 e!565617)))

(declare-fun c!139204 () Bool)

(assert (=> d!269369 (= c!139204 (is-Cons!9267 l!5107))))

(assert (=> d!269369 e!565621))

(declare-fun res!392108 () Bool)

(assert (=> d!269369 (=> (not res!392108) (not e!565621))))

(assert (=> d!269369 (= res!392108 (isSeparator!1737 (rule!3160 separatorToken!297)))))

(assert (=> d!269369 (= (withSeparatorTokenList!69 thiss!20117 l!5107 separatorToken!297) lt!325041)))

(declare-fun b!859377 () Bool)

(assert (=> b!859377 (= e!565618 Nil!9265)))

(declare-fun b!859378 () Bool)

(declare-fun e!565616 () Bool)

(assert (=> b!859378 (= e!565621 e!565616)))

(declare-fun res!392106 () Bool)

(assert (=> b!859378 (=> res!392106 e!565616)))

(assert (=> b!859378 (= res!392106 (not (is-Cons!9267 l!5107)))))

(declare-fun b!859379 () Bool)

(declare-fun $colon$colon!100 (List!9283 Token!3140) List!9283)

(assert (=> b!859379 (= e!565616 (= (printList!487 thiss!20117 ($colon$colon!100 (withSeparatorTokenList!69 thiss!20117 (t!97411 l!5107) separatorToken!297) separatorToken!297)) e!565618))))

(declare-fun c!139205 () Bool)

(assert (=> b!859379 (= c!139205 (is-Cons!9267 lt!325046))))

(assert (=> b!859379 (= lt!325046 ($colon$colon!100 (withSeparatorTokenList!69 thiss!20117 (t!97411 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!859380 () Bool)

(assert (=> b!859380 (= e!565620 (= (printList!487 thiss!20117 ($colon$colon!100 ($colon$colon!100 (withSeparatorTokenList!69 thiss!20117 (t!97411 l!5107) separatorToken!297) separatorToken!297) (h!14668 l!5107))) e!565619))))

(declare-fun c!139203 () Bool)

(assert (=> b!859380 (= c!139203 (is-Cons!9267 lt!325047))))

(assert (=> b!859380 (= lt!325047 ($colon$colon!100 ($colon$colon!100 (withSeparatorTokenList!69 thiss!20117 (t!97411 l!5107) separatorToken!297) separatorToken!297) (h!14668 l!5107)))))

(declare-fun b!859381 () Bool)

(assert (=> b!859381 (= e!565617 ($colon$colon!100 ($colon$colon!100 (withSeparatorTokenList!69 thiss!20117 (t!97411 l!5107) separatorToken!297) separatorToken!297) (h!14668 l!5107)))))

(declare-fun lt!325040 () List!9281)

(assert (=> b!859381 (= lt!325040 (list!3659 (charsOf!1004 (h!14668 l!5107))))))

(declare-fun lt!325044 () List!9281)

(assert (=> b!859381 (= lt!325044 (list!3659 (charsOf!1004 separatorToken!297)))))

(declare-fun lt!325043 () List!9281)

(assert (=> b!859381 (= lt!325043 (printList!487 thiss!20117 (withSeparatorTokenList!69 thiss!20117 (t!97411 l!5107) separatorToken!297)))))

(declare-fun lt!325042 () Unit!13806)

(declare-fun lemmaConcatAssociativity!762 (List!9281 List!9281 List!9281) Unit!13806)

(assert (=> b!859381 (= lt!325042 (lemmaConcatAssociativity!762 lt!325040 lt!325044 lt!325043))))

(assert (=> b!859381 (= (++!2403 (++!2403 lt!325040 lt!325044) lt!325043) (++!2403 lt!325040 (++!2403 lt!325044 lt!325043)))))

(declare-fun lt!325045 () Unit!13806)

(assert (=> b!859381 (= lt!325045 lt!325042)))

(assert (= (and d!269369 res!392108) b!859376))

(assert (= (and b!859376 (not res!392107)) b!859380))

(assert (= (and b!859380 c!139203) b!859372))

(assert (= (and b!859380 (not c!139203)) b!859373))

(assert (= (and b!859376 res!392105) b!859378))

(assert (= (and b!859378 (not res!392106)) b!859379))

(assert (= (and b!859379 c!139205) b!859375))

(assert (= (and b!859379 (not c!139205)) b!859377))

(assert (= (and d!269369 c!139204) b!859381))

(assert (= (and d!269369 (not c!139204)) b!859374))

(declare-fun m!1103217 () Bool)

(assert (=> b!859379 m!1103217))

(assert (=> b!859379 m!1103217))

(declare-fun m!1103219 () Bool)

(assert (=> b!859379 m!1103219))

(assert (=> b!859379 m!1103219))

(declare-fun m!1103221 () Bool)

(assert (=> b!859379 m!1103221))

(assert (=> b!859380 m!1103217))

(assert (=> b!859380 m!1103217))

(assert (=> b!859380 m!1103219))

(assert (=> b!859380 m!1103219))

(declare-fun m!1103223 () Bool)

(assert (=> b!859380 m!1103223))

(assert (=> b!859380 m!1103223))

(declare-fun m!1103225 () Bool)

(assert (=> b!859380 m!1103225))

(declare-fun m!1103227 () Bool)

(assert (=> b!859372 m!1103227))

(assert (=> b!859372 m!1103227))

(declare-fun m!1103229 () Bool)

(assert (=> b!859372 m!1103229))

(declare-fun m!1103231 () Bool)

(assert (=> b!859372 m!1103231))

(assert (=> b!859372 m!1103229))

(assert (=> b!859372 m!1103231))

(declare-fun m!1103233 () Bool)

(assert (=> b!859372 m!1103233))

(declare-fun m!1103235 () Bool)

(assert (=> d!269369 m!1103235))

(declare-fun m!1103237 () Bool)

(assert (=> d!269369 m!1103237))

(declare-fun m!1103239 () Bool)

(assert (=> b!859375 m!1103239))

(assert (=> b!859375 m!1103239))

(declare-fun m!1103241 () Bool)

(assert (=> b!859375 m!1103241))

(declare-fun m!1103243 () Bool)

(assert (=> b!859375 m!1103243))

(assert (=> b!859375 m!1103241))

(assert (=> b!859375 m!1103243))

(declare-fun m!1103245 () Bool)

(assert (=> b!859375 m!1103245))

(assert (=> b!859381 m!1103217))

(assert (=> b!859381 m!1103219))

(declare-fun m!1103247 () Bool)

(assert (=> b!859381 m!1103247))

(declare-fun m!1103249 () Bool)

(assert (=> b!859381 m!1103249))

(assert (=> b!859381 m!1103217))

(declare-fun m!1103251 () Bool)

(assert (=> b!859381 m!1103251))

(declare-fun m!1103253 () Bool)

(assert (=> b!859381 m!1103253))

(declare-fun m!1103255 () Bool)

(assert (=> b!859381 m!1103255))

(assert (=> b!859381 m!1103247))

(declare-fun m!1103257 () Bool)

(assert (=> b!859381 m!1103257))

(assert (=> b!859381 m!1103217))

(assert (=> b!859381 m!1103219))

(assert (=> b!859381 m!1103223))

(assert (=> b!859381 m!1103253))

(assert (=> b!859381 m!1103249))

(declare-fun m!1103259 () Bool)

(assert (=> b!859381 m!1103259))

(declare-fun m!1103261 () Bool)

(assert (=> b!859381 m!1103261))

(declare-fun m!1103263 () Bool)

(assert (=> b!859381 m!1103263))

(declare-fun m!1103265 () Bool)

(assert (=> b!859381 m!1103265))

(assert (=> b!859381 m!1103261))

(assert (=> b!859188 d!269369))

(declare-fun d!269383 () Bool)

(assert (=> d!269383 (rulesProduceEachTokenIndividuallyList!427 thiss!20117 rules!2621 (withSeparatorTokenList!69 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!325052 () Unit!13806)

(declare-fun choose!5067 (LexerInterface!1539 List!9282 List!9283 Token!3140) Unit!13806)

(assert (=> d!269383 (= lt!325052 (choose!5067 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!269383 (not (isEmpty!5502 rules!2621))))

(assert (=> d!269383 (= (withSeparatorTokenListPreservesRulesProduceTokens!69 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!325052)))

(declare-fun bs!232331 () Bool)

(assert (= bs!232331 d!269383))

(assert (=> bs!232331 m!1103071))

(assert (=> bs!232331 m!1103071))

(declare-fun m!1103267 () Bool)

(assert (=> bs!232331 m!1103267))

(declare-fun m!1103269 () Bool)

(assert (=> bs!232331 m!1103269))

(assert (=> bs!232331 m!1103041))

(assert (=> b!859188 d!269383))

(declare-fun d!269385 () Bool)

(assert (=> d!269385 (= (isEmpty!5502 rules!2621) (is-Nil!9266 rules!2621))))

(assert (=> b!859174 d!269385))

(declare-fun d!269387 () Bool)

(assert (=> d!269387 (= (inv!11788 (tag!1999 (h!14667 rules!2621))) (= (mod (str.len (value!56204 (tag!1999 (h!14667 rules!2621)))) 2) 0))))

(assert (=> b!859185 d!269387))

(declare-fun d!269389 () Bool)

(declare-fun res!392113 () Bool)

(declare-fun e!565626 () Bool)

(assert (=> d!269389 (=> (not res!392113) (not e!565626))))

(assert (=> d!269389 (= res!392113 (semiInverseModEq!683 (toChars!2661 (transformation!1737 (h!14667 rules!2621))) (toValue!2802 (transformation!1737 (h!14667 rules!2621)))))))

(assert (=> d!269389 (= (inv!11792 (transformation!1737 (h!14667 rules!2621))) e!565626)))

(declare-fun b!859386 () Bool)

(assert (=> b!859386 (= e!565626 (equivClasses!650 (toChars!2661 (transformation!1737 (h!14667 rules!2621))) (toValue!2802 (transformation!1737 (h!14667 rules!2621)))))))

(assert (= (and d!269389 res!392113) b!859386))

(declare-fun m!1103271 () Bool)

(assert (=> d!269389 m!1103271))

(declare-fun m!1103273 () Bool)

(assert (=> b!859386 m!1103273))

(assert (=> b!859185 d!269389))

(declare-fun d!269391 () Bool)

(assert (=> d!269391 (= (inv!11788 (tag!1999 (rule!3160 (h!14668 l!5107)))) (= (mod (str.len (value!56204 (tag!1999 (rule!3160 (h!14668 l!5107))))) 2) 0))))

(assert (=> b!859184 d!269391))

(declare-fun d!269393 () Bool)

(declare-fun res!392114 () Bool)

(declare-fun e!565627 () Bool)

(assert (=> d!269393 (=> (not res!392114) (not e!565627))))

(assert (=> d!269393 (= res!392114 (semiInverseModEq!683 (toChars!2661 (transformation!1737 (rule!3160 (h!14668 l!5107)))) (toValue!2802 (transformation!1737 (rule!3160 (h!14668 l!5107))))))))

(assert (=> d!269393 (= (inv!11792 (transformation!1737 (rule!3160 (h!14668 l!5107)))) e!565627)))

(declare-fun b!859387 () Bool)

(assert (=> b!859387 (= e!565627 (equivClasses!650 (toChars!2661 (transformation!1737 (rule!3160 (h!14668 l!5107)))) (toValue!2802 (transformation!1737 (rule!3160 (h!14668 l!5107))))))))

(assert (= (and d!269393 res!392114) b!859387))

(declare-fun m!1103275 () Bool)

(assert (=> d!269393 m!1103275))

(declare-fun m!1103277 () Bool)

(assert (=> b!859387 m!1103277))

(assert (=> b!859184 d!269393))

(declare-fun d!269395 () Bool)

(declare-fun res!392119 () Bool)

(declare-fun e!565630 () Bool)

(assert (=> d!269395 (=> (not res!392119) (not e!565630))))

(declare-fun isEmpty!5504 (List!9281) Bool)

(assert (=> d!269395 (= res!392119 (not (isEmpty!5504 (originalCharacters!2293 separatorToken!297))))))

(assert (=> d!269395 (= (inv!11791 separatorToken!297) e!565630)))

(declare-fun b!859392 () Bool)

(declare-fun res!392120 () Bool)

(assert (=> b!859392 (=> (not res!392120) (not e!565630))))

(declare-fun dynLambda!4373 (Int TokenValue!1803) BalanceConc!6154)

(assert (=> b!859392 (= res!392120 (= (originalCharacters!2293 separatorToken!297) (list!3659 (dynLambda!4373 (toChars!2661 (transformation!1737 (rule!3160 separatorToken!297))) (value!56205 separatorToken!297)))))))

(declare-fun b!859393 () Bool)

(declare-fun size!7744 (List!9281) Int)

(assert (=> b!859393 (= e!565630 (= (size!7742 separatorToken!297) (size!7744 (originalCharacters!2293 separatorToken!297))))))

(assert (= (and d!269395 res!392119) b!859392))

(assert (= (and b!859392 res!392120) b!859393))

(declare-fun b_lambda!29045 () Bool)

(assert (=> (not b_lambda!29045) (not b!859392)))

(declare-fun tb!61407 () Bool)

(declare-fun t!97428 () Bool)

(assert (=> (and b!859186 (= (toChars!2661 (transformation!1737 (rule!3160 (h!14668 l!5107)))) (toChars!2661 (transformation!1737 (rule!3160 separatorToken!297)))) t!97428) tb!61407))

(declare-fun b!859398 () Bool)

(declare-fun e!565633 () Bool)

(declare-fun tp!271104 () Bool)

(declare-fun inv!11795 (Conc!3070) Bool)

(assert (=> b!859398 (= e!565633 (and (inv!11795 (c!139178 (dynLambda!4373 (toChars!2661 (transformation!1737 (rule!3160 separatorToken!297))) (value!56205 separatorToken!297)))) tp!271104))))

(declare-fun result!71038 () Bool)

(declare-fun inv!11796 (BalanceConc!6154) Bool)

(assert (=> tb!61407 (= result!71038 (and (inv!11796 (dynLambda!4373 (toChars!2661 (transformation!1737 (rule!3160 separatorToken!297))) (value!56205 separatorToken!297))) e!565633))))

(assert (= tb!61407 b!859398))

(declare-fun m!1103279 () Bool)

(assert (=> b!859398 m!1103279))

(declare-fun m!1103281 () Bool)

(assert (=> tb!61407 m!1103281))

(assert (=> b!859392 t!97428))

(declare-fun b_and!76423 () Bool)

(assert (= b_and!76395 (and (=> t!97428 result!71038) b_and!76423)))

(declare-fun t!97430 () Bool)

(declare-fun tb!61409 () Bool)

(assert (=> (and b!859187 (= (toChars!2661 (transformation!1737 (rule!3160 separatorToken!297))) (toChars!2661 (transformation!1737 (rule!3160 separatorToken!297)))) t!97430) tb!61409))

(declare-fun result!71042 () Bool)

(assert (= result!71042 result!71038))

(assert (=> b!859392 t!97430))

(declare-fun b_and!76425 () Bool)

(assert (= b_and!76399 (and (=> t!97430 result!71042) b_and!76425)))

(declare-fun tb!61411 () Bool)

(declare-fun t!97432 () Bool)

(assert (=> (and b!859177 (= (toChars!2661 (transformation!1737 (h!14667 rules!2621))) (toChars!2661 (transformation!1737 (rule!3160 separatorToken!297)))) t!97432) tb!61411))

(declare-fun result!71044 () Bool)

(assert (= result!71044 result!71038))

(assert (=> b!859392 t!97432))

(declare-fun b_and!76427 () Bool)

(assert (= b_and!76403 (and (=> t!97432 result!71044) b_and!76427)))

(declare-fun m!1103283 () Bool)

(assert (=> d!269395 m!1103283))

(declare-fun m!1103285 () Bool)

(assert (=> b!859392 m!1103285))

(assert (=> b!859392 m!1103285))

(declare-fun m!1103287 () Bool)

(assert (=> b!859392 m!1103287))

(declare-fun m!1103289 () Bool)

(assert (=> b!859393 m!1103289))

(assert (=> start!77492 d!269395))

(declare-fun d!269397 () Bool)

(declare-fun res!392125 () Bool)

(declare-fun e!565638 () Bool)

(assert (=> d!269397 (=> res!392125 e!565638)))

(assert (=> d!269397 (= res!392125 (not (is-Cons!9266 rules!2621)))))

(assert (=> d!269397 (= (sepAndNonSepRulesDisjointChars!537 rules!2621 rules!2621) e!565638)))

(declare-fun b!859403 () Bool)

(declare-fun e!565639 () Bool)

(assert (=> b!859403 (= e!565638 e!565639)))

(declare-fun res!392126 () Bool)

(assert (=> b!859403 (=> (not res!392126) (not e!565639))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!250 (Rule!3274 List!9282) Bool)

(assert (=> b!859403 (= res!392126 (ruleDisjointCharsFromAllFromOtherType!250 (h!14667 rules!2621) rules!2621))))

(declare-fun b!859404 () Bool)

(assert (=> b!859404 (= e!565639 (sepAndNonSepRulesDisjointChars!537 rules!2621 (t!97410 rules!2621)))))

(assert (= (and d!269397 (not res!392125)) b!859403))

(assert (= (and b!859403 res!392126) b!859404))

(declare-fun m!1103291 () Bool)

(assert (=> b!859403 m!1103291))

(declare-fun m!1103293 () Bool)

(assert (=> b!859404 m!1103293))

(assert (=> b!859175 d!269397))

(declare-fun bs!232332 () Bool)

(declare-fun d!269399 () Bool)

(assert (= bs!232332 (and d!269399 b!859179)))

(declare-fun lambda!25814 () Int)

(assert (=> bs!232332 (not (= lambda!25814 lambda!25807))))

(declare-fun bs!232333 () Bool)

(assert (= bs!232333 (and d!269399 d!269353)))

(assert (=> bs!232333 (= lambda!25814 lambda!25813)))

(declare-fun b!859409 () Bool)

(declare-fun e!565644 () Bool)

(assert (=> b!859409 (= e!565644 true)))

(declare-fun b!859408 () Bool)

(declare-fun e!565643 () Bool)

(assert (=> b!859408 (= e!565643 e!565644)))

(declare-fun b!859407 () Bool)

(declare-fun e!565642 () Bool)

(assert (=> b!859407 (= e!565642 e!565643)))

(assert (=> d!269399 e!565642))

(assert (= b!859408 b!859409))

(assert (= b!859407 b!859408))

(assert (= (and d!269399 (is-Cons!9266 rules!2621)) b!859407))

(assert (=> b!859409 (< (dynLambda!4370 order!6017 (toValue!2802 (transformation!1737 (h!14667 rules!2621)))) (dynLambda!4371 order!6019 lambda!25814))))

(assert (=> b!859409 (< (dynLambda!4372 order!6021 (toChars!2661 (transformation!1737 (h!14667 rules!2621)))) (dynLambda!4371 order!6019 lambda!25814))))

(assert (=> d!269399 true))

(declare-fun lt!325053 () Bool)

(assert (=> d!269399 (= lt!325053 (forall!2200 l!5107 lambda!25814))))

(declare-fun e!565640 () Bool)

(assert (=> d!269399 (= lt!325053 e!565640)))

(declare-fun res!392128 () Bool)

(assert (=> d!269399 (=> res!392128 e!565640)))

(assert (=> d!269399 (= res!392128 (not (is-Cons!9267 l!5107)))))

(assert (=> d!269399 (not (isEmpty!5502 rules!2621))))

(assert (=> d!269399 (= (rulesProduceEachTokenIndividuallyList!427 thiss!20117 rules!2621 l!5107) lt!325053)))

(declare-fun b!859405 () Bool)

(declare-fun e!565641 () Bool)

(assert (=> b!859405 (= e!565640 e!565641)))

(declare-fun res!392127 () Bool)

(assert (=> b!859405 (=> (not res!392127) (not e!565641))))

(assert (=> b!859405 (= res!392127 (rulesProduceIndividualToken!603 thiss!20117 rules!2621 (h!14668 l!5107)))))

(declare-fun b!859406 () Bool)

(assert (=> b!859406 (= e!565641 (rulesProduceEachTokenIndividuallyList!427 thiss!20117 rules!2621 (t!97411 l!5107)))))

(assert (= (and d!269399 (not res!392128)) b!859405))

(assert (= (and b!859405 res!392127) b!859406))

(declare-fun m!1103295 () Bool)

(assert (=> d!269399 m!1103295))

(assert (=> d!269399 m!1103041))

(declare-fun m!1103297 () Bool)

(assert (=> b!859405 m!1103297))

(declare-fun m!1103299 () Bool)

(assert (=> b!859406 m!1103299))

(assert (=> b!859182 d!269399))

(declare-fun d!269401 () Bool)

(declare-fun res!392129 () Bool)

(declare-fun e!565645 () Bool)

(assert (=> d!269401 (=> (not res!392129) (not e!565645))))

(assert (=> d!269401 (= res!392129 (not (isEmpty!5504 (originalCharacters!2293 (h!14668 l!5107)))))))

(assert (=> d!269401 (= (inv!11791 (h!14668 l!5107)) e!565645)))

(declare-fun b!859410 () Bool)

(declare-fun res!392130 () Bool)

(assert (=> b!859410 (=> (not res!392130) (not e!565645))))

(assert (=> b!859410 (= res!392130 (= (originalCharacters!2293 (h!14668 l!5107)) (list!3659 (dynLambda!4373 (toChars!2661 (transformation!1737 (rule!3160 (h!14668 l!5107)))) (value!56205 (h!14668 l!5107))))))))

(declare-fun b!859411 () Bool)

(assert (=> b!859411 (= e!565645 (= (size!7742 (h!14668 l!5107)) (size!7744 (originalCharacters!2293 (h!14668 l!5107)))))))

(assert (= (and d!269401 res!392129) b!859410))

(assert (= (and b!859410 res!392130) b!859411))

(declare-fun b_lambda!29047 () Bool)

(assert (=> (not b_lambda!29047) (not b!859410)))

(declare-fun t!97434 () Bool)

(declare-fun tb!61413 () Bool)

(assert (=> (and b!859186 (= (toChars!2661 (transformation!1737 (rule!3160 (h!14668 l!5107)))) (toChars!2661 (transformation!1737 (rule!3160 (h!14668 l!5107))))) t!97434) tb!61413))

(declare-fun b!859412 () Bool)

(declare-fun e!565646 () Bool)

(declare-fun tp!271105 () Bool)

(assert (=> b!859412 (= e!565646 (and (inv!11795 (c!139178 (dynLambda!4373 (toChars!2661 (transformation!1737 (rule!3160 (h!14668 l!5107)))) (value!56205 (h!14668 l!5107))))) tp!271105))))

(declare-fun result!71046 () Bool)

(assert (=> tb!61413 (= result!71046 (and (inv!11796 (dynLambda!4373 (toChars!2661 (transformation!1737 (rule!3160 (h!14668 l!5107)))) (value!56205 (h!14668 l!5107)))) e!565646))))

(assert (= tb!61413 b!859412))

(declare-fun m!1103301 () Bool)

(assert (=> b!859412 m!1103301))

(declare-fun m!1103303 () Bool)

(assert (=> tb!61413 m!1103303))

(assert (=> b!859410 t!97434))

(declare-fun b_and!76429 () Bool)

(assert (= b_and!76423 (and (=> t!97434 result!71046) b_and!76429)))

(declare-fun t!97436 () Bool)

(declare-fun tb!61415 () Bool)

(assert (=> (and b!859187 (= (toChars!2661 (transformation!1737 (rule!3160 separatorToken!297))) (toChars!2661 (transformation!1737 (rule!3160 (h!14668 l!5107))))) t!97436) tb!61415))

(declare-fun result!71048 () Bool)

(assert (= result!71048 result!71046))

(assert (=> b!859410 t!97436))

(declare-fun b_and!76431 () Bool)

(assert (= b_and!76425 (and (=> t!97436 result!71048) b_and!76431)))

(declare-fun t!97438 () Bool)

(declare-fun tb!61417 () Bool)

(assert (=> (and b!859177 (= (toChars!2661 (transformation!1737 (h!14667 rules!2621))) (toChars!2661 (transformation!1737 (rule!3160 (h!14668 l!5107))))) t!97438) tb!61417))

(declare-fun result!71050 () Bool)

(assert (= result!71050 result!71046))

(assert (=> b!859410 t!97438))

(declare-fun b_and!76433 () Bool)

(assert (= b_and!76427 (and (=> t!97438 result!71050) b_and!76433)))

(declare-fun m!1103305 () Bool)

(assert (=> d!269401 m!1103305))

(declare-fun m!1103307 () Bool)

(assert (=> b!859410 m!1103307))

(assert (=> b!859410 m!1103307))

(declare-fun m!1103309 () Bool)

(assert (=> b!859410 m!1103309))

(declare-fun m!1103311 () Bool)

(assert (=> b!859411 m!1103311))

(assert (=> b!859190 d!269401))

(declare-fun d!269403 () Bool)

(declare-fun res!392135 () Bool)

(declare-fun e!565651 () Bool)

(assert (=> d!269403 (=> res!392135 e!565651)))

(assert (=> d!269403 (= res!392135 (is-Nil!9267 l!5107))))

(assert (=> d!269403 (= (forall!2200 l!5107 lambda!25807) e!565651)))

(declare-fun b!859417 () Bool)

(declare-fun e!565652 () Bool)

(assert (=> b!859417 (= e!565651 e!565652)))

(declare-fun res!392136 () Bool)

(assert (=> b!859417 (=> (not res!392136) (not e!565652))))

(declare-fun dynLambda!4374 (Int Token!3140) Bool)

(assert (=> b!859417 (= res!392136 (dynLambda!4374 lambda!25807 (h!14668 l!5107)))))

(declare-fun b!859418 () Bool)

(assert (=> b!859418 (= e!565652 (forall!2200 (t!97411 l!5107) lambda!25807))))

(assert (= (and d!269403 (not res!392135)) b!859417))

(assert (= (and b!859417 res!392136) b!859418))

(declare-fun b_lambda!29049 () Bool)

(assert (=> (not b_lambda!29049) (not b!859417)))

(declare-fun m!1103313 () Bool)

(assert (=> b!859417 m!1103313))

(declare-fun m!1103315 () Bool)

(assert (=> b!859418 m!1103315))

(assert (=> b!859179 d!269403))

(declare-fun d!269405 () Bool)

(declare-fun lt!325058 () Bool)

(declare-fun e!565658 () Bool)

(assert (=> d!269405 (= lt!325058 e!565658)))

(declare-fun res!392145 () Bool)

(assert (=> d!269405 (=> (not res!392145) (not e!565658))))

(declare-datatypes ((IArray!6149 0))(
  ( (IArray!6150 (innerList!3132 List!9283)) )
))
(declare-datatypes ((Conc!3072 0))(
  ( (Node!3072 (left!6862 Conc!3072) (right!7192 Conc!3072) (csize!6374 Int) (cheight!3283 Int)) (Leaf!4529 (xs!5761 IArray!6149) (csize!6375 Int)) (Empty!3072) )
))
(declare-datatypes ((BalanceConc!6158 0))(
  ( (BalanceConc!6159 (c!139215 Conc!3072)) )
))
(declare-fun list!3660 (BalanceConc!6158) List!9283)

(declare-datatypes ((tuple2!10434 0))(
  ( (tuple2!10435 (_1!6043 BalanceConc!6158) (_2!6043 BalanceConc!6154)) )
))
(declare-fun lex!631 (LexerInterface!1539 List!9282 BalanceConc!6154) tuple2!10434)

(declare-fun print!568 (LexerInterface!1539 BalanceConc!6158) BalanceConc!6154)

(declare-fun singletonSeq!558 (Token!3140) BalanceConc!6158)

(assert (=> d!269405 (= res!392145 (= (list!3660 (_1!6043 (lex!631 thiss!20117 rules!2621 (print!568 thiss!20117 (singletonSeq!558 separatorToken!297))))) (list!3660 (singletonSeq!558 separatorToken!297))))))

(declare-fun e!565657 () Bool)

(assert (=> d!269405 (= lt!325058 e!565657)))

(declare-fun res!392143 () Bool)

(assert (=> d!269405 (=> (not res!392143) (not e!565657))))

(declare-fun lt!325059 () tuple2!10434)

(declare-fun size!7745 (BalanceConc!6158) Int)

(assert (=> d!269405 (= res!392143 (= (size!7745 (_1!6043 lt!325059)) 1))))

(assert (=> d!269405 (= lt!325059 (lex!631 thiss!20117 rules!2621 (print!568 thiss!20117 (singletonSeq!558 separatorToken!297))))))

(assert (=> d!269405 (not (isEmpty!5502 rules!2621))))

(assert (=> d!269405 (= (rulesProduceIndividualToken!603 thiss!20117 rules!2621 separatorToken!297) lt!325058)))

(declare-fun b!859425 () Bool)

(declare-fun res!392144 () Bool)

(assert (=> b!859425 (=> (not res!392144) (not e!565657))))

(declare-fun apply!1944 (BalanceConc!6158 Int) Token!3140)

(assert (=> b!859425 (= res!392144 (= (apply!1944 (_1!6043 lt!325059) 0) separatorToken!297))))

(declare-fun b!859426 () Bool)

(declare-fun isEmpty!5505 (BalanceConc!6154) Bool)

(assert (=> b!859426 (= e!565657 (isEmpty!5505 (_2!6043 lt!325059)))))

(declare-fun b!859427 () Bool)

(assert (=> b!859427 (= e!565658 (isEmpty!5505 (_2!6043 (lex!631 thiss!20117 rules!2621 (print!568 thiss!20117 (singletonSeq!558 separatorToken!297))))))))

(assert (= (and d!269405 res!392143) b!859425))

(assert (= (and b!859425 res!392144) b!859426))

(assert (= (and d!269405 res!392145) b!859427))

(declare-fun m!1103317 () Bool)

(assert (=> d!269405 m!1103317))

(declare-fun m!1103319 () Bool)

(assert (=> d!269405 m!1103319))

(assert (=> d!269405 m!1103317))

(assert (=> d!269405 m!1103041))

(assert (=> d!269405 m!1103319))

(declare-fun m!1103321 () Bool)

(assert (=> d!269405 m!1103321))

(declare-fun m!1103323 () Bool)

(assert (=> d!269405 m!1103323))

(declare-fun m!1103325 () Bool)

(assert (=> d!269405 m!1103325))

(assert (=> d!269405 m!1103317))

(declare-fun m!1103327 () Bool)

(assert (=> d!269405 m!1103327))

(declare-fun m!1103329 () Bool)

(assert (=> b!859425 m!1103329))

(declare-fun m!1103331 () Bool)

(assert (=> b!859426 m!1103331))

(assert (=> b!859427 m!1103317))

(assert (=> b!859427 m!1103317))

(assert (=> b!859427 m!1103319))

(assert (=> b!859427 m!1103319))

(assert (=> b!859427 m!1103321))

(declare-fun m!1103333 () Bool)

(assert (=> b!859427 m!1103333))

(assert (=> b!859181 d!269405))

(declare-fun d!269407 () Bool)

(declare-fun res!392150 () Bool)

(declare-fun e!565664 () Bool)

(assert (=> d!269407 (=> res!392150 e!565664)))

(assert (=> d!269407 (= res!392150 (or (not (is-Cons!9267 lt!324986)) (not (is-Cons!9267 (t!97411 lt!324986)))))))

(assert (=> d!269407 (= (tokensListTwoByTwoPredicateSeparableList!53 thiss!20117 lt!324986 rules!2621) e!565664)))

(declare-fun b!859432 () Bool)

(declare-fun e!565663 () Bool)

(assert (=> b!859432 (= e!565664 e!565663)))

(declare-fun res!392151 () Bool)

(assert (=> b!859432 (=> (not res!392151) (not e!565663))))

(declare-fun separableTokensPredicate!69 (LexerInterface!1539 Token!3140 Token!3140 List!9282) Bool)

(assert (=> b!859432 (= res!392151 (separableTokensPredicate!69 thiss!20117 (h!14668 lt!324986) (h!14668 (t!97411 lt!324986)) rules!2621))))

(declare-fun lt!325078 () Unit!13806)

(declare-fun Unit!13811 () Unit!13806)

(assert (=> b!859432 (= lt!325078 Unit!13811)))

(declare-fun size!7746 (BalanceConc!6154) Int)

(assert (=> b!859432 (> (size!7746 (charsOf!1004 (h!14668 (t!97411 lt!324986)))) 0)))

(declare-fun lt!325079 () Unit!13806)

(declare-fun Unit!13812 () Unit!13806)

(assert (=> b!859432 (= lt!325079 Unit!13812)))

(assert (=> b!859432 (rulesProduceIndividualToken!603 thiss!20117 rules!2621 (h!14668 (t!97411 lt!324986)))))

(declare-fun lt!325080 () Unit!13806)

(declare-fun Unit!13813 () Unit!13806)

(assert (=> b!859432 (= lt!325080 Unit!13813)))

(assert (=> b!859432 (rulesProduceIndividualToken!603 thiss!20117 rules!2621 (h!14668 lt!324986))))

(declare-fun lt!325077 () Unit!13806)

(declare-fun lt!325076 () Unit!13806)

(assert (=> b!859432 (= lt!325077 lt!325076)))

(assert (=> b!859432 (rulesProduceIndividualToken!603 thiss!20117 rules!2621 (h!14668 (t!97411 lt!324986)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!237 (LexerInterface!1539 List!9282 List!9283 Token!3140) Unit!13806)

(assert (=> b!859432 (= lt!325076 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!237 thiss!20117 rules!2621 lt!324986 (h!14668 (t!97411 lt!324986))))))

(declare-fun lt!325074 () Unit!13806)

(declare-fun lt!325075 () Unit!13806)

(assert (=> b!859432 (= lt!325074 lt!325075)))

(assert (=> b!859432 (rulesProduceIndividualToken!603 thiss!20117 rules!2621 (h!14668 lt!324986))))

(assert (=> b!859432 (= lt!325075 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!237 thiss!20117 rules!2621 lt!324986 (h!14668 lt!324986)))))

(declare-fun b!859433 () Bool)

(assert (=> b!859433 (= e!565663 (tokensListTwoByTwoPredicateSeparableList!53 thiss!20117 (Cons!9267 (h!14668 (t!97411 lt!324986)) (t!97411 (t!97411 lt!324986))) rules!2621))))

(assert (= (and d!269407 (not res!392150)) b!859432))

(assert (= (and b!859432 res!392151) b!859433))

(declare-fun m!1103335 () Bool)

(assert (=> b!859432 m!1103335))

(declare-fun m!1103337 () Bool)

(assert (=> b!859432 m!1103337))

(declare-fun m!1103339 () Bool)

(assert (=> b!859432 m!1103339))

(assert (=> b!859432 m!1103335))

(declare-fun m!1103341 () Bool)

(assert (=> b!859432 m!1103341))

(assert (=> b!859432 m!1103185))

(declare-fun m!1103343 () Bool)

(assert (=> b!859432 m!1103343))

(declare-fun m!1103345 () Bool)

(assert (=> b!859432 m!1103345))

(declare-fun m!1103347 () Bool)

(assert (=> b!859433 m!1103347))

(assert (=> b!859180 d!269407))

(declare-fun d!269409 () Bool)

(declare-fun res!392154 () Bool)

(declare-fun e!565667 () Bool)

(assert (=> d!269409 (=> (not res!392154) (not e!565667))))

(declare-fun rulesValid!614 (LexerInterface!1539 List!9282) Bool)

(assert (=> d!269409 (= res!392154 (rulesValid!614 thiss!20117 rules!2621))))

(assert (=> d!269409 (= (rulesInvariant!1415 thiss!20117 rules!2621) e!565667)))

(declare-fun b!859436 () Bool)

(declare-datatypes ((List!9288 0))(
  ( (Nil!9272) (Cons!9272 (h!14673 String!10915) (t!97462 List!9288)) )
))
(declare-fun noDuplicateTag!614 (LexerInterface!1539 List!9282 List!9288) Bool)

(assert (=> b!859436 (= e!565667 (noDuplicateTag!614 thiss!20117 rules!2621 Nil!9272))))

(assert (= (and d!269409 res!392154) b!859436))

(declare-fun m!1103349 () Bool)

(assert (=> d!269409 m!1103349))

(declare-fun m!1103351 () Bool)

(assert (=> b!859436 m!1103351))

(assert (=> b!859191 d!269409))

(declare-fun b!859447 () Bool)

(declare-fun e!565670 () Bool)

(declare-fun tp_is_empty!3999 () Bool)

(assert (=> b!859447 (= e!565670 tp_is_empty!3999)))

(assert (=> b!859176 (= tp!271050 e!565670)))

(declare-fun b!859450 () Bool)

(declare-fun tp!271120 () Bool)

(declare-fun tp!271116 () Bool)

(assert (=> b!859450 (= e!565670 (and tp!271120 tp!271116))))

(declare-fun b!859449 () Bool)

(declare-fun tp!271118 () Bool)

(assert (=> b!859449 (= e!565670 tp!271118)))

(declare-fun b!859448 () Bool)

(declare-fun tp!271119 () Bool)

(declare-fun tp!271117 () Bool)

(assert (=> b!859448 (= e!565670 (and tp!271119 tp!271117))))

(assert (= (and b!859176 (is-ElementMatch!2170 (regex!1737 (rule!3160 separatorToken!297)))) b!859447))

(assert (= (and b!859176 (is-Concat!3974 (regex!1737 (rule!3160 separatorToken!297)))) b!859448))

(assert (= (and b!859176 (is-Star!2170 (regex!1737 (rule!3160 separatorToken!297)))) b!859449))

(assert (= (and b!859176 (is-Union!2170 (regex!1737 (rule!3160 separatorToken!297)))) b!859450))

(declare-fun b!859455 () Bool)

(declare-fun e!565673 () Bool)

(declare-fun tp!271123 () Bool)

(assert (=> b!859455 (= e!565673 (and tp_is_empty!3999 tp!271123))))

(assert (=> b!859178 (= tp!271054 e!565673)))

(assert (= (and b!859178 (is-Cons!9265 (originalCharacters!2293 separatorToken!297))) b!859455))

(declare-fun b!859456 () Bool)

(declare-fun e!565674 () Bool)

(declare-fun tp!271124 () Bool)

(assert (=> b!859456 (= e!565674 (and tp_is_empty!3999 tp!271124))))

(assert (=> b!859189 (= tp!271055 e!565674)))

(assert (= (and b!859189 (is-Cons!9265 (originalCharacters!2293 (h!14668 l!5107)))) b!859456))

(declare-fun b!859473 () Bool)

(declare-fun b_free!26133 () Bool)

(declare-fun b_next!26197 () Bool)

(assert (=> b!859473 (= b_free!26133 (not b_next!26197))))

(declare-fun tp!271133 () Bool)

(declare-fun b_and!76435 () Bool)

(assert (=> b!859473 (= tp!271133 b_and!76435)))

(declare-fun b_free!26135 () Bool)

(declare-fun b_next!26199 () Bool)

(assert (=> b!859473 (= b_free!26135 (not b_next!26199))))

(declare-fun tb!61419 () Bool)

(declare-fun t!97441 () Bool)

(assert (=> (and b!859473 (= (toChars!2661 (transformation!1737 (h!14667 (t!97410 rules!2621)))) (toChars!2661 (transformation!1737 (rule!3160 separatorToken!297)))) t!97441) tb!61419))

(declare-fun result!71058 () Bool)

(assert (= result!71058 result!71038))

(assert (=> b!859392 t!97441))

(declare-fun tb!61421 () Bool)

(declare-fun t!97443 () Bool)

(assert (=> (and b!859473 (= (toChars!2661 (transformation!1737 (h!14667 (t!97410 rules!2621)))) (toChars!2661 (transformation!1737 (rule!3160 (h!14668 l!5107))))) t!97443) tb!61421))

(declare-fun result!71060 () Bool)

(assert (= result!71060 result!71046))

(assert (=> b!859410 t!97443))

(declare-fun tp!271136 () Bool)

(declare-fun b_and!76437 () Bool)

(assert (=> b!859473 (= tp!271136 (and (=> t!97441 result!71058) (=> t!97443 result!71060) b_and!76437))))

(declare-fun e!565688 () Bool)

(assert (=> b!859473 (= e!565688 (and tp!271133 tp!271136))))

(declare-fun tp!271135 () Bool)

(declare-fun b!859472 () Bool)

(declare-fun e!565690 () Bool)

(assert (=> b!859472 (= e!565690 (and tp!271135 (inv!11788 (tag!1999 (h!14667 (t!97410 rules!2621)))) (inv!11792 (transformation!1737 (h!14667 (t!97410 rules!2621)))) e!565688))))

(declare-fun b!859471 () Bool)

(declare-fun e!565687 () Bool)

(declare-fun tp!271134 () Bool)

(assert (=> b!859471 (= e!565687 (and e!565690 tp!271134))))

(assert (=> b!859183 (= tp!271057 e!565687)))

(assert (= b!859472 b!859473))

(assert (= b!859471 b!859472))

(assert (= (and b!859183 (is-Cons!9266 (t!97410 rules!2621))) b!859471))

(declare-fun m!1103353 () Bool)

(assert (=> b!859472 m!1103353))

(declare-fun m!1103355 () Bool)

(assert (=> b!859472 m!1103355))

(declare-fun b!859496 () Bool)

(declare-fun b_free!26137 () Bool)

(declare-fun b_next!26201 () Bool)

(assert (=> b!859496 (= b_free!26137 (not b_next!26201))))

(declare-fun tp!271151 () Bool)

(declare-fun b_and!76439 () Bool)

(assert (=> b!859496 (= tp!271151 b_and!76439)))

(declare-fun b_free!26139 () Bool)

(declare-fun b_next!26203 () Bool)

(assert (=> b!859496 (= b_free!26139 (not b_next!26203))))

(declare-fun tb!61423 () Bool)

(declare-fun t!97445 () Bool)

(assert (=> (and b!859496 (= (toChars!2661 (transformation!1737 (rule!3160 (h!14668 (t!97411 l!5107))))) (toChars!2661 (transformation!1737 (rule!3160 separatorToken!297)))) t!97445) tb!61423))

(declare-fun result!71064 () Bool)

(assert (= result!71064 result!71038))

(assert (=> b!859392 t!97445))

(declare-fun t!97447 () Bool)

(declare-fun tb!61425 () Bool)

(assert (=> (and b!859496 (= (toChars!2661 (transformation!1737 (rule!3160 (h!14668 (t!97411 l!5107))))) (toChars!2661 (transformation!1737 (rule!3160 (h!14668 l!5107))))) t!97447) tb!61425))

(declare-fun result!71066 () Bool)

(assert (= result!71066 result!71046))

(assert (=> b!859410 t!97447))

(declare-fun b_and!76441 () Bool)

(declare-fun tp!271149 () Bool)

(assert (=> b!859496 (= tp!271149 (and (=> t!97445 result!71064) (=> t!97447 result!71066) b_and!76441))))

(declare-fun e!565714 () Bool)

(assert (=> b!859496 (= e!565714 (and tp!271151 tp!271149))))

(declare-fun e!565713 () Bool)

(declare-fun e!565711 () Bool)

(declare-fun tp!271150 () Bool)

(declare-fun b!859494 () Bool)

(assert (=> b!859494 (= e!565713 (and (inv!21 (value!56205 (h!14668 (t!97411 l!5107)))) e!565711 tp!271150))))

(declare-fun tp!271148 () Bool)

(declare-fun b!859495 () Bool)

(assert (=> b!859495 (= e!565711 (and tp!271148 (inv!11788 (tag!1999 (rule!3160 (h!14668 (t!97411 l!5107))))) (inv!11792 (transformation!1737 (rule!3160 (h!14668 (t!97411 l!5107))))) e!565714))))

(declare-fun b!859493 () Bool)

(declare-fun tp!271147 () Bool)

(declare-fun e!565715 () Bool)

(assert (=> b!859493 (= e!565715 (and (inv!11791 (h!14668 (t!97411 l!5107))) e!565713 tp!271147))))

(assert (=> b!859190 (= tp!271059 e!565715)))

(assert (= b!859495 b!859496))

(assert (= b!859494 b!859495))

(assert (= b!859493 b!859494))

(assert (= (and b!859190 (is-Cons!9267 (t!97411 l!5107))) b!859493))

(declare-fun m!1103361 () Bool)

(assert (=> b!859494 m!1103361))

(declare-fun m!1103363 () Bool)

(assert (=> b!859495 m!1103363))

(declare-fun m!1103365 () Bool)

(assert (=> b!859495 m!1103365))

(declare-fun m!1103367 () Bool)

(assert (=> b!859493 m!1103367))

(declare-fun b!859497 () Bool)

(declare-fun e!565716 () Bool)

(assert (=> b!859497 (= e!565716 tp_is_empty!3999)))

(assert (=> b!859185 (= tp!271053 e!565716)))

(declare-fun b!859500 () Bool)

(declare-fun tp!271156 () Bool)

(declare-fun tp!271152 () Bool)

(assert (=> b!859500 (= e!565716 (and tp!271156 tp!271152))))

(declare-fun b!859499 () Bool)

(declare-fun tp!271154 () Bool)

(assert (=> b!859499 (= e!565716 tp!271154)))

(declare-fun b!859498 () Bool)

(declare-fun tp!271155 () Bool)

(declare-fun tp!271153 () Bool)

(assert (=> b!859498 (= e!565716 (and tp!271155 tp!271153))))

(assert (= (and b!859185 (is-ElementMatch!2170 (regex!1737 (h!14667 rules!2621)))) b!859497))

(assert (= (and b!859185 (is-Concat!3974 (regex!1737 (h!14667 rules!2621)))) b!859498))

(assert (= (and b!859185 (is-Star!2170 (regex!1737 (h!14667 rules!2621)))) b!859499))

(assert (= (and b!859185 (is-Union!2170 (regex!1737 (h!14667 rules!2621)))) b!859500))

(declare-fun b!859501 () Bool)

(declare-fun e!565717 () Bool)

(assert (=> b!859501 (= e!565717 tp_is_empty!3999)))

(assert (=> b!859184 (= tp!271058 e!565717)))

(declare-fun b!859504 () Bool)

(declare-fun tp!271161 () Bool)

(declare-fun tp!271157 () Bool)

(assert (=> b!859504 (= e!565717 (and tp!271161 tp!271157))))

(declare-fun b!859503 () Bool)

(declare-fun tp!271159 () Bool)

(assert (=> b!859503 (= e!565717 tp!271159)))

(declare-fun b!859502 () Bool)

(declare-fun tp!271160 () Bool)

(declare-fun tp!271158 () Bool)

(assert (=> b!859502 (= e!565717 (and tp!271160 tp!271158))))

(assert (= (and b!859184 (is-ElementMatch!2170 (regex!1737 (rule!3160 (h!14668 l!5107))))) b!859501))

(assert (= (and b!859184 (is-Concat!3974 (regex!1737 (rule!3160 (h!14668 l!5107))))) b!859502))

(assert (= (and b!859184 (is-Star!2170 (regex!1737 (rule!3160 (h!14668 l!5107))))) b!859503))

(assert (= (and b!859184 (is-Union!2170 (regex!1737 (rule!3160 (h!14668 l!5107))))) b!859504))

(declare-fun b_lambda!29051 () Bool)

(assert (= b_lambda!29045 (or (and b!859496 b_free!26139 (= (toChars!2661 (transformation!1737 (rule!3160 (h!14668 (t!97411 l!5107))))) (toChars!2661 (transformation!1737 (rule!3160 separatorToken!297))))) (and b!859473 b_free!26135 (= (toChars!2661 (transformation!1737 (h!14667 (t!97410 rules!2621)))) (toChars!2661 (transformation!1737 (rule!3160 separatorToken!297))))) (and b!859186 b_free!26111 (= (toChars!2661 (transformation!1737 (rule!3160 (h!14668 l!5107)))) (toChars!2661 (transformation!1737 (rule!3160 separatorToken!297))))) (and b!859177 b_free!26119 (= (toChars!2661 (transformation!1737 (h!14667 rules!2621))) (toChars!2661 (transformation!1737 (rule!3160 separatorToken!297))))) (and b!859187 b_free!26115) b_lambda!29051)))

(declare-fun b_lambda!29053 () Bool)

(assert (= b_lambda!29049 (or b!859179 b_lambda!29053)))

(declare-fun bs!232335 () Bool)

(declare-fun d!269413 () Bool)

(assert (= bs!232335 (and d!269413 b!859179)))

(assert (=> bs!232335 (= (dynLambda!4374 lambda!25807 (h!14668 l!5107)) (not (isSeparator!1737 (rule!3160 (h!14668 l!5107)))))))

(assert (=> b!859417 d!269413))

(declare-fun b_lambda!29055 () Bool)

(assert (= b_lambda!29047 (or (and b!859496 b_free!26139 (= (toChars!2661 (transformation!1737 (rule!3160 (h!14668 (t!97411 l!5107))))) (toChars!2661 (transformation!1737 (rule!3160 (h!14668 l!5107)))))) (and b!859177 b_free!26119 (= (toChars!2661 (transformation!1737 (h!14667 rules!2621))) (toChars!2661 (transformation!1737 (rule!3160 (h!14668 l!5107)))))) (and b!859473 b_free!26135 (= (toChars!2661 (transformation!1737 (h!14667 (t!97410 rules!2621)))) (toChars!2661 (transformation!1737 (rule!3160 (h!14668 l!5107)))))) (and b!859187 b_free!26115 (= (toChars!2661 (transformation!1737 (rule!3160 separatorToken!297))) (toChars!2661 (transformation!1737 (rule!3160 (h!14668 l!5107)))))) (and b!859186 b_free!26111) b_lambda!29055)))

(push 1)

(assert (not b!859393))

(assert b_and!76397)

(assert (not b!859450))

(assert (not b_next!26201))

(assert (not b!859372))

(assert (not b!859405))

(assert (not b!859448))

(assert (not b!859498))

(assert (not b!859404))

(assert (not b_lambda!29053))

(assert (not b!859411))

(assert (not b_next!26203))

(assert (not b_next!26177))

(assert (not b!859425))

(assert b_and!76393)

(assert (not b!859278))

(assert (not b!859375))

(assert (not b!859340))

(assert (not d!269399))

(assert (not d!269409))

(assert (not b!859271))

(assert b_and!76435)

(assert (not b!859449))

(assert (not b!859407))

(assert (not d!269347))

(assert (not d!269369))

(assert (not b!859403))

(assert (not d!269401))

(assert (not b!859386))

(assert (not b!859274))

(assert (not b!859326))

(assert b_and!76439)

(assert (not d!269393))

(assert (not b!859504))

(assert (not b!859455))

(assert (not b!859456))

(assert (not d!269353))

(assert b_and!76441)

(assert (not b!859494))

(assert (not tb!61407))

(assert (not b!859495))

(assert (not b_next!26197))

(assert (not b!859410))

(assert b_and!76433)

(assert (not b!859276))

(assert tp_is_empty!3999)

(assert (not b_next!26181))

(assert (not b!859380))

(assert (not b!859426))

(assert (not b!859398))

(assert (not b_next!26199))

(assert (not b!859500))

(assert (not b!859387))

(assert (not b_lambda!29055))

(assert (not b!859379))

(assert (not b!859381))

(assert (not b!859427))

(assert (not b_next!26179))

(assert (not b!859472))

(assert (not b_next!26183))

(assert (not b!859436))

(assert (not d!269405))

(assert (not b!859418))

(assert b_and!76429)

(assert (not b!859499))

(assert (not b!859433))

(assert b_and!76401)

(assert (not tb!61413))

(assert (not b!859471))

(assert (not b!859503))

(assert (not b_lambda!29051))

(assert b_and!76437)

(assert (not b!859412))

(assert b_and!76431)

(assert (not b!859392))

(assert (not b!859327))

(assert (not b!859493))

(assert (not b!859406))

(assert (not b!859502))

(assert (not d!269383))

(assert (not b!859432))

(assert (not b_next!26173))

(assert (not b_next!26175))

(assert (not b!859258))

(assert (not b!859269))

(assert (not d!269389))

(assert (not d!269395))

(assert (not b!859273))

(check-sat)

(pop 1)

(push 1)

(assert b_and!76397)

(assert b_and!76393)

(assert b_and!76435)

(assert b_and!76439)

(assert b_and!76441)

(assert (not b_next!26197))

(assert b_and!76433)

(assert (not b_next!26181))

(assert (not b_next!26201))

(assert (not b_next!26199))

(assert b_and!76429)

(assert b_and!76401)

(assert b_and!76437)

(assert b_and!76431)

(assert (not b_next!26173))

(assert (not b_next!26175))

(assert (not b_next!26203))

(assert (not b_next!26177))

(assert (not b_next!26179))

(assert (not b_next!26183))

(check-sat)

(pop 1)

