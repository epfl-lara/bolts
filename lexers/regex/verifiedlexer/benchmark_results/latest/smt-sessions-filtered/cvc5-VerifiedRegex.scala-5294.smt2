; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!271278 () Bool)

(assert start!271278)

(declare-fun b!2804958 () Bool)

(declare-fun b_free!79741 () Bool)

(declare-fun b_next!80445 () Bool)

(assert (=> b!2804958 (= b_free!79741 (not b_next!80445))))

(declare-fun tp!894758 () Bool)

(declare-fun b_and!204503 () Bool)

(assert (=> b!2804958 (= tp!894758 b_and!204503)))

(declare-fun b_free!79743 () Bool)

(declare-fun b_next!80447 () Bool)

(assert (=> b!2804958 (= b_free!79743 (not b_next!80447))))

(declare-fun tp!894760 () Bool)

(declare-fun b_and!204505 () Bool)

(assert (=> b!2804958 (= tp!894760 b_and!204505)))

(declare-fun b!2804968 () Bool)

(declare-fun b_free!79745 () Bool)

(declare-fun b_next!80449 () Bool)

(assert (=> b!2804968 (= b_free!79745 (not b_next!80449))))

(declare-fun tp!894754 () Bool)

(declare-fun b_and!204507 () Bool)

(assert (=> b!2804968 (= tp!894754 b_and!204507)))

(declare-fun b_free!79747 () Bool)

(declare-fun b_next!80451 () Bool)

(assert (=> b!2804968 (= b_free!79747 (not b_next!80451))))

(declare-fun tp!894751 () Bool)

(declare-fun b_and!204509 () Bool)

(assert (=> b!2804968 (= tp!894751 b_and!204509)))

(declare-fun b!2804964 () Bool)

(declare-fun b_free!79749 () Bool)

(declare-fun b_next!80453 () Bool)

(assert (=> b!2804964 (= b_free!79749 (not b_next!80453))))

(declare-fun tp!894761 () Bool)

(declare-fun b_and!204511 () Bool)

(assert (=> b!2804964 (= tp!894761 b_and!204511)))

(declare-fun b_free!79751 () Bool)

(declare-fun b_next!80455 () Bool)

(assert (=> b!2804964 (= b_free!79751 (not b_next!80455))))

(declare-fun tp!894757 () Bool)

(declare-fun b_and!204513 () Bool)

(assert (=> b!2804964 (= tp!894757 b_and!204513)))

(declare-fun b!2804955 () Bool)

(declare-fun e!1773114 () Bool)

(declare-fun e!1773119 () Bool)

(declare-fun tp!894753 () Bool)

(assert (=> b!2804955 (= e!1773114 (and e!1773119 tp!894753))))

(declare-fun b!2804956 () Bool)

(declare-fun e!1773117 () Bool)

(declare-fun e!1773124 () Bool)

(declare-datatypes ((List!32778 0))(
  ( (Nil!32678) (Cons!32678 (h!38098 (_ BitVec 16)) (t!229014 List!32778)) )
))
(declare-datatypes ((TokenValue!5104 0))(
  ( (FloatLiteralValue!10208 (text!36173 List!32778)) (TokenValueExt!5103 (__x!21865 Int)) (Broken!25520 (value!157022 List!32778)) (Object!5203) (End!5104) (Def!5104) (Underscore!5104) (Match!5104) (Else!5104) (Error!5104) (Case!5104) (If!5104) (Extends!5104) (Abstract!5104) (Class!5104) (Val!5104) (DelimiterValue!10208 (del!5164 List!32778)) (KeywordValue!5110 (value!157023 List!32778)) (CommentValue!10208 (value!157024 List!32778)) (WhitespaceValue!10208 (value!157025 List!32778)) (IndentationValue!5104 (value!157026 List!32778)) (String!35857) (Int32!5104) (Broken!25521 (value!157027 List!32778)) (Boolean!5105) (Unit!46758) (OperatorValue!5107 (op!5164 List!32778)) (IdentifierValue!10208 (value!157028 List!32778)) (IdentifierValue!10209 (value!157029 List!32778)) (WhitespaceValue!10209 (value!157030 List!32778)) (True!10208) (False!10208) (Broken!25522 (value!157031 List!32778)) (Broken!25523 (value!157032 List!32778)) (True!10209) (RightBrace!5104) (RightBracket!5104) (Colon!5104) (Null!5104) (Comma!5104) (LeftBracket!5104) (False!10209) (LeftBrace!5104) (ImaginaryLiteralValue!5104 (text!36174 List!32778)) (StringLiteralValue!15312 (value!157033 List!32778)) (EOFValue!5104 (value!157034 List!32778)) (IdentValue!5104 (value!157035 List!32778)) (DelimiterValue!10209 (value!157036 List!32778)) (DedentValue!5104 (value!157037 List!32778)) (NewLineValue!5104 (value!157038 List!32778)) (IntegerValue!15312 (value!157039 (_ BitVec 32)) (text!36175 List!32778)) (IntegerValue!15313 (value!157040 Int) (text!36176 List!32778)) (Times!5104) (Or!5104) (Equal!5104) (Minus!5104) (Broken!25524 (value!157041 List!32778)) (And!5104) (Div!5104) (LessEqual!5104) (Mod!5104) (Concat!13356) (Not!5104) (Plus!5104) (SpaceValue!5104 (value!157042 List!32778)) (IntegerValue!15314 (value!157043 Int) (text!36177 List!32778)) (StringLiteralValue!15313 (text!36178 List!32778)) (FloatLiteralValue!10209 (text!36179 List!32778)) (BytesLiteralValue!5104 (value!157044 List!32778)) (CommentValue!10209 (value!157045 List!32778)) (StringLiteralValue!15314 (value!157046 List!32778)) (ErrorTokenValue!5104 (msg!5165 List!32778)) )
))
(declare-datatypes ((C!16662 0))(
  ( (C!16663 (val!10265 Int)) )
))
(declare-datatypes ((List!32779 0))(
  ( (Nil!32679) (Cons!32679 (h!38099 C!16662) (t!229015 List!32779)) )
))
(declare-datatypes ((IArray!20227 0))(
  ( (IArray!20228 (innerList!10171 List!32779)) )
))
(declare-datatypes ((Conc!10111 0))(
  ( (Node!10111 (left!24659 Conc!10111) (right!24989 Conc!10111) (csize!20452 Int) (cheight!10322 Int)) (Leaf!15406 (xs!13223 IArray!20227) (csize!20453 Int)) (Empty!10111) )
))
(declare-datatypes ((BalanceConc!19836 0))(
  ( (BalanceConc!19837 (c!454580 Conc!10111)) )
))
(declare-datatypes ((Regex!8252 0))(
  ( (ElementMatch!8252 (c!454581 C!16662)) (Concat!13357 (regOne!17016 Regex!8252) (regTwo!17016 Regex!8252)) (EmptyExpr!8252) (Star!8252 (reg!8581 Regex!8252)) (EmptyLang!8252) (Union!8252 (regOne!17017 Regex!8252) (regTwo!17017 Regex!8252)) )
))
(declare-datatypes ((String!35858 0))(
  ( (String!35859 (value!157047 String)) )
))
(declare-datatypes ((TokenValueInjection!9648 0))(
  ( (TokenValueInjection!9649 (toValue!6880 Int) (toChars!6739 Int)) )
))
(declare-datatypes ((Rule!9564 0))(
  ( (Rule!9565 (regex!4882 Regex!8252) (tag!5386 String!35858) (isSeparator!4882 Bool) (transformation!4882 TokenValueInjection!9648)) )
))
(declare-datatypes ((Token!9166 0))(
  ( (Token!9167 (value!157048 TokenValue!5104) (rule!7310 Rule!9564) (size!25498 Int) (originalCharacters!5614 List!32779)) )
))
(declare-datatypes ((List!32780 0))(
  ( (Nil!32680) (Cons!32680 (h!38100 Token!9166) (t!229016 List!32780)) )
))
(declare-fun l!5055 () List!32780)

(declare-fun tp!894756 () Bool)

(declare-fun inv!44351 (String!35858) Bool)

(declare-fun inv!44354 (TokenValueInjection!9648) Bool)

(assert (=> b!2804956 (= e!1773117 (and tp!894756 (inv!44351 (tag!5386 (rule!7310 (h!38100 l!5055)))) (inv!44354 (transformation!4882 (rule!7310 (h!38100 l!5055)))) e!1773124))))

(declare-fun b!2804957 () Bool)

(declare-fun res!1168586 () Bool)

(declare-fun e!1773110 () Bool)

(assert (=> b!2804957 (=> (not res!1168586) (not e!1773110))))

(declare-datatypes ((List!32781 0))(
  ( (Nil!32681) (Cons!32681 (h!38101 Rule!9564) (t!229017 List!32781)) )
))
(declare-fun rules!2540 () List!32781)

(declare-fun isEmpty!18164 (List!32781) Bool)

(assert (=> b!2804957 (= res!1168586 (not (isEmpty!18164 rules!2540)))))

(declare-fun res!1168585 () Bool)

(assert (=> start!271278 (=> (not res!1168585) (not e!1773110))))

(declare-datatypes ((LexerInterface!4473 0))(
  ( (LexerInterfaceExt!4470 (__x!21866 Int)) (Lexer!4471) )
))
(declare-fun thiss!19710 () LexerInterface!4473)

(assert (=> start!271278 (= res!1168585 (is-Lexer!4471 thiss!19710))))

(assert (=> start!271278 e!1773110))

(assert (=> start!271278 true))

(assert (=> start!271278 e!1773114))

(declare-fun e!1773122 () Bool)

(assert (=> start!271278 e!1773122))

(declare-fun separatorToken!283 () Token!9166)

(declare-fun e!1773115 () Bool)

(declare-fun inv!44355 (Token!9166) Bool)

(assert (=> start!271278 (and (inv!44355 separatorToken!283) e!1773115)))

(declare-fun e!1773120 () Bool)

(assert (=> b!2804958 (= e!1773120 (and tp!894758 tp!894760))))

(declare-fun b!2804959 () Bool)

(declare-fun res!1168590 () Bool)

(assert (=> b!2804959 (=> (not res!1168590) (not e!1773110))))

(declare-fun rulesProduceIndividualToken!2037 (LexerInterface!4473 List!32781 Token!9166) Bool)

(assert (=> b!2804959 (= res!1168590 (rulesProduceIndividualToken!2037 thiss!19710 rules!2540 separatorToken!283))))

(declare-fun b!2804960 () Bool)

(declare-fun res!1168588 () Bool)

(assert (=> b!2804960 (=> (not res!1168588) (not e!1773110))))

(declare-fun rulesInvariant!3913 (LexerInterface!4473 List!32781) Bool)

(assert (=> b!2804960 (= res!1168588 (rulesInvariant!3913 thiss!19710 rules!2540))))

(declare-fun tp!894759 () Bool)

(declare-fun e!1773116 () Bool)

(declare-fun b!2804961 () Bool)

(declare-fun inv!21 (TokenValue!5104) Bool)

(assert (=> b!2804961 (= e!1773116 (and (inv!21 (value!157048 (h!38100 l!5055))) e!1773117 tp!894759))))

(declare-fun e!1773112 () Bool)

(declare-fun b!2804962 () Bool)

(declare-fun tp!894749 () Bool)

(assert (=> b!2804962 (= e!1773115 (and (inv!21 (value!157048 separatorToken!283)) e!1773112 tp!894749))))

(declare-fun e!1773123 () Bool)

(declare-fun tp!894750 () Bool)

(declare-fun b!2804963 () Bool)

(assert (=> b!2804963 (= e!1773112 (and tp!894750 (inv!44351 (tag!5386 (rule!7310 separatorToken!283))) (inv!44354 (transformation!4882 (rule!7310 separatorToken!283))) e!1773123))))

(assert (=> b!2804964 (= e!1773123 (and tp!894761 tp!894757))))

(declare-fun b!2804965 () Bool)

(declare-fun tp!894755 () Bool)

(assert (=> b!2804965 (= e!1773122 (and (inv!44355 (h!38100 l!5055)) e!1773116 tp!894755))))

(declare-fun b!2804966 () Bool)

(declare-fun contains!6034 (List!32780 Token!9166) Bool)

(assert (=> b!2804966 (= e!1773110 (not (contains!6034 l!5055 (h!38100 l!5055))))))

(declare-fun tp!894752 () Bool)

(declare-fun b!2804967 () Bool)

(assert (=> b!2804967 (= e!1773119 (and tp!894752 (inv!44351 (tag!5386 (h!38101 rules!2540))) (inv!44354 (transformation!4882 (h!38101 rules!2540))) e!1773120))))

(assert (=> b!2804968 (= e!1773124 (and tp!894754 tp!894751))))

(declare-fun b!2804969 () Bool)

(declare-fun res!1168589 () Bool)

(assert (=> b!2804969 (=> (not res!1168589) (not e!1773110))))

(assert (=> b!2804969 (= res!1168589 (and (isSeparator!4882 (rule!7310 separatorToken!283)) (is-Cons!32680 l!5055)))))

(declare-fun b!2804970 () Bool)

(declare-fun res!1168587 () Bool)

(assert (=> b!2804970 (=> (not res!1168587) (not e!1773110))))

(declare-fun rulesProduceEachTokenIndividuallyList!1547 (LexerInterface!4473 List!32781 List!32780) Bool)

(assert (=> b!2804970 (= res!1168587 (rulesProduceEachTokenIndividuallyList!1547 thiss!19710 rules!2540 l!5055))))

(assert (= (and start!271278 res!1168585) b!2804957))

(assert (= (and b!2804957 res!1168586) b!2804960))

(assert (= (and b!2804960 res!1168588) b!2804970))

(assert (= (and b!2804970 res!1168587) b!2804959))

(assert (= (and b!2804959 res!1168590) b!2804969))

(assert (= (and b!2804969 res!1168589) b!2804966))

(assert (= b!2804967 b!2804958))

(assert (= b!2804955 b!2804967))

(assert (= (and start!271278 (is-Cons!32681 rules!2540)) b!2804955))

(assert (= b!2804956 b!2804968))

(assert (= b!2804961 b!2804956))

(assert (= b!2804965 b!2804961))

(assert (= (and start!271278 (is-Cons!32680 l!5055)) b!2804965))

(assert (= b!2804963 b!2804964))

(assert (= b!2804962 b!2804963))

(assert (= start!271278 b!2804962))

(declare-fun m!3234273 () Bool)

(assert (=> b!2804963 m!3234273))

(declare-fun m!3234275 () Bool)

(assert (=> b!2804963 m!3234275))

(declare-fun m!3234277 () Bool)

(assert (=> b!2804962 m!3234277))

(declare-fun m!3234279 () Bool)

(assert (=> start!271278 m!3234279))

(declare-fun m!3234281 () Bool)

(assert (=> b!2804966 m!3234281))

(declare-fun m!3234283 () Bool)

(assert (=> b!2804960 m!3234283))

(declare-fun m!3234285 () Bool)

(assert (=> b!2804970 m!3234285))

(declare-fun m!3234287 () Bool)

(assert (=> b!2804959 m!3234287))

(declare-fun m!3234289 () Bool)

(assert (=> b!2804957 m!3234289))

(declare-fun m!3234291 () Bool)

(assert (=> b!2804961 m!3234291))

(declare-fun m!3234293 () Bool)

(assert (=> b!2804965 m!3234293))

(declare-fun m!3234295 () Bool)

(assert (=> b!2804967 m!3234295))

(declare-fun m!3234297 () Bool)

(assert (=> b!2804967 m!3234297))

(declare-fun m!3234299 () Bool)

(assert (=> b!2804956 m!3234299))

(declare-fun m!3234301 () Bool)

(assert (=> b!2804956 m!3234301))

(push 1)

(assert (not b_next!80449))

(assert (not b!2804966))

(assert (not start!271278))

(assert (not b_next!80447))

(assert b_and!204509)

(assert (not b!2804962))

(assert (not b_next!80453))

(assert (not b!2804965))

(assert (not b_next!80445))

(assert (not b!2804956))

(assert (not b_next!80451))

(assert (not b!2804967))

(assert (not b!2804963))

(assert (not b!2804959))

(assert (not b!2804957))

(assert b_and!204505)

(assert (not b!2804955))

(assert (not b!2804961))

(assert (not b!2804970))

(assert b_and!204513)

(assert b_and!204511)

(assert (not b!2804960))

(assert (not b_next!80455))

(assert b_and!204507)

(assert b_and!204503)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!80449))

(assert (not b_next!80447))

(assert b_and!204505)

(assert b_and!204509)

(assert (not b_next!80453))

(assert (not b_next!80445))

(assert (not b_next!80455))

(assert (not b_next!80451))

(assert b_and!204513)

(assert b_and!204511)

(assert b_and!204507)

(assert b_and!204503)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!814349 () Bool)

(assert (=> d!814349 (= (inv!44351 (tag!5386 (rule!7310 (h!38100 l!5055)))) (= (mod (str.len (value!157047 (tag!5386 (rule!7310 (h!38100 l!5055))))) 2) 0))))

(assert (=> b!2804956 d!814349))

(declare-fun d!814351 () Bool)

(declare-fun res!1168619 () Bool)

(declare-fun e!1773175 () Bool)

(assert (=> d!814351 (=> (not res!1168619) (not e!1773175))))

(declare-fun semiInverseModEq!2012 (Int Int) Bool)

(assert (=> d!814351 (= res!1168619 (semiInverseModEq!2012 (toChars!6739 (transformation!4882 (rule!7310 (h!38100 l!5055)))) (toValue!6880 (transformation!4882 (rule!7310 (h!38100 l!5055))))))))

(assert (=> d!814351 (= (inv!44354 (transformation!4882 (rule!7310 (h!38100 l!5055)))) e!1773175)))

(declare-fun b!2805021 () Bool)

(declare-fun equivClasses!1913 (Int Int) Bool)

(assert (=> b!2805021 (= e!1773175 (equivClasses!1913 (toChars!6739 (transformation!4882 (rule!7310 (h!38100 l!5055)))) (toValue!6880 (transformation!4882 (rule!7310 (h!38100 l!5055))))))))

(assert (= (and d!814351 res!1168619) b!2805021))

(declare-fun m!3234333 () Bool)

(assert (=> d!814351 m!3234333))

(declare-fun m!3234335 () Bool)

(assert (=> b!2805021 m!3234335))

(assert (=> b!2804956 d!814351))

(declare-fun d!814353 () Bool)

(declare-fun res!1168624 () Bool)

(declare-fun e!1773178 () Bool)

(assert (=> d!814353 (=> (not res!1168624) (not e!1773178))))

(declare-fun isEmpty!18166 (List!32779) Bool)

(assert (=> d!814353 (= res!1168624 (not (isEmpty!18166 (originalCharacters!5614 separatorToken!283))))))

(assert (=> d!814353 (= (inv!44355 separatorToken!283) e!1773178)))

(declare-fun b!2805026 () Bool)

(declare-fun res!1168625 () Bool)

(assert (=> b!2805026 (=> (not res!1168625) (not e!1773178))))

(declare-fun list!12237 (BalanceConc!19836) List!32779)

(declare-fun dynLambda!13661 (Int TokenValue!5104) BalanceConc!19836)

(assert (=> b!2805026 (= res!1168625 (= (originalCharacters!5614 separatorToken!283) (list!12237 (dynLambda!13661 (toChars!6739 (transformation!4882 (rule!7310 separatorToken!283))) (value!157048 separatorToken!283)))))))

(declare-fun b!2805027 () Bool)

(declare-fun size!25500 (List!32779) Int)

(assert (=> b!2805027 (= e!1773178 (= (size!25498 separatorToken!283) (size!25500 (originalCharacters!5614 separatorToken!283))))))

(assert (= (and d!814353 res!1168624) b!2805026))

(assert (= (and b!2805026 res!1168625) b!2805027))

(declare-fun b_lambda!83779 () Bool)

(assert (=> (not b_lambda!83779) (not b!2805026)))

(declare-fun t!229023 () Bool)

(declare-fun tb!153021 () Bool)

(assert (=> (and b!2804958 (= (toChars!6739 (transformation!4882 (h!38101 rules!2540))) (toChars!6739 (transformation!4882 (rule!7310 separatorToken!283)))) t!229023) tb!153021))

(declare-fun b!2805032 () Bool)

(declare-fun e!1773181 () Bool)

(declare-fun tp!894803 () Bool)

(declare-fun inv!44358 (Conc!10111) Bool)

(assert (=> b!2805032 (= e!1773181 (and (inv!44358 (c!454580 (dynLambda!13661 (toChars!6739 (transformation!4882 (rule!7310 separatorToken!283))) (value!157048 separatorToken!283)))) tp!894803))))

(declare-fun result!190136 () Bool)

(declare-fun inv!44359 (BalanceConc!19836) Bool)

(assert (=> tb!153021 (= result!190136 (and (inv!44359 (dynLambda!13661 (toChars!6739 (transformation!4882 (rule!7310 separatorToken!283))) (value!157048 separatorToken!283))) e!1773181))))

(assert (= tb!153021 b!2805032))

(declare-fun m!3234337 () Bool)

(assert (=> b!2805032 m!3234337))

(declare-fun m!3234339 () Bool)

(assert (=> tb!153021 m!3234339))

(assert (=> b!2805026 t!229023))

(declare-fun b_and!204527 () Bool)

(assert (= b_and!204505 (and (=> t!229023 result!190136) b_and!204527)))

(declare-fun tb!153023 () Bool)

(declare-fun t!229025 () Bool)

(assert (=> (and b!2804968 (= (toChars!6739 (transformation!4882 (rule!7310 (h!38100 l!5055)))) (toChars!6739 (transformation!4882 (rule!7310 separatorToken!283)))) t!229025) tb!153023))

(declare-fun result!190140 () Bool)

(assert (= result!190140 result!190136))

(assert (=> b!2805026 t!229025))

(declare-fun b_and!204529 () Bool)

(assert (= b_and!204509 (and (=> t!229025 result!190140) b_and!204529)))

(declare-fun t!229027 () Bool)

(declare-fun tb!153025 () Bool)

(assert (=> (and b!2804964 (= (toChars!6739 (transformation!4882 (rule!7310 separatorToken!283))) (toChars!6739 (transformation!4882 (rule!7310 separatorToken!283)))) t!229027) tb!153025))

(declare-fun result!190142 () Bool)

(assert (= result!190142 result!190136))

(assert (=> b!2805026 t!229027))

(declare-fun b_and!204531 () Bool)

(assert (= b_and!204513 (and (=> t!229027 result!190142) b_and!204531)))

(declare-fun m!3234341 () Bool)

(assert (=> d!814353 m!3234341))

(declare-fun m!3234343 () Bool)

(assert (=> b!2805026 m!3234343))

(assert (=> b!2805026 m!3234343))

(declare-fun m!3234345 () Bool)

(assert (=> b!2805026 m!3234345))

(declare-fun m!3234347 () Bool)

(assert (=> b!2805027 m!3234347))

(assert (=> start!271278 d!814353))

(declare-fun d!814355 () Bool)

(assert (=> d!814355 (= (inv!44351 (tag!5386 (h!38101 rules!2540))) (= (mod (str.len (value!157047 (tag!5386 (h!38101 rules!2540)))) 2) 0))))

(assert (=> b!2804967 d!814355))

(declare-fun d!814357 () Bool)

(declare-fun res!1168626 () Bool)

(declare-fun e!1773182 () Bool)

(assert (=> d!814357 (=> (not res!1168626) (not e!1773182))))

(assert (=> d!814357 (= res!1168626 (semiInverseModEq!2012 (toChars!6739 (transformation!4882 (h!38101 rules!2540))) (toValue!6880 (transformation!4882 (h!38101 rules!2540)))))))

(assert (=> d!814357 (= (inv!44354 (transformation!4882 (h!38101 rules!2540))) e!1773182)))

(declare-fun b!2805033 () Bool)

(assert (=> b!2805033 (= e!1773182 (equivClasses!1913 (toChars!6739 (transformation!4882 (h!38101 rules!2540))) (toValue!6880 (transformation!4882 (h!38101 rules!2540)))))))

(assert (= (and d!814357 res!1168626) b!2805033))

(declare-fun m!3234349 () Bool)

(assert (=> d!814357 m!3234349))

(declare-fun m!3234351 () Bool)

(assert (=> b!2805033 m!3234351))

(assert (=> b!2804967 d!814357))

(declare-fun d!814359 () Bool)

(assert (=> d!814359 (= (isEmpty!18164 rules!2540) (is-Nil!32681 rules!2540))))

(assert (=> b!2804957 d!814359))

(declare-fun d!814361 () Bool)

(declare-fun res!1168627 () Bool)

(declare-fun e!1773183 () Bool)

(assert (=> d!814361 (=> (not res!1168627) (not e!1773183))))

(assert (=> d!814361 (= res!1168627 (not (isEmpty!18166 (originalCharacters!5614 (h!38100 l!5055)))))))

(assert (=> d!814361 (= (inv!44355 (h!38100 l!5055)) e!1773183)))

(declare-fun b!2805034 () Bool)

(declare-fun res!1168628 () Bool)

(assert (=> b!2805034 (=> (not res!1168628) (not e!1773183))))

(assert (=> b!2805034 (= res!1168628 (= (originalCharacters!5614 (h!38100 l!5055)) (list!12237 (dynLambda!13661 (toChars!6739 (transformation!4882 (rule!7310 (h!38100 l!5055)))) (value!157048 (h!38100 l!5055))))))))

(declare-fun b!2805035 () Bool)

(assert (=> b!2805035 (= e!1773183 (= (size!25498 (h!38100 l!5055)) (size!25500 (originalCharacters!5614 (h!38100 l!5055)))))))

(assert (= (and d!814361 res!1168627) b!2805034))

(assert (= (and b!2805034 res!1168628) b!2805035))

(declare-fun b_lambda!83781 () Bool)

(assert (=> (not b_lambda!83781) (not b!2805034)))

(declare-fun tb!153027 () Bool)

(declare-fun t!229029 () Bool)

(assert (=> (and b!2804958 (= (toChars!6739 (transformation!4882 (h!38101 rules!2540))) (toChars!6739 (transformation!4882 (rule!7310 (h!38100 l!5055))))) t!229029) tb!153027))

(declare-fun b!2805036 () Bool)

(declare-fun e!1773184 () Bool)

(declare-fun tp!894804 () Bool)

(assert (=> b!2805036 (= e!1773184 (and (inv!44358 (c!454580 (dynLambda!13661 (toChars!6739 (transformation!4882 (rule!7310 (h!38100 l!5055)))) (value!157048 (h!38100 l!5055))))) tp!894804))))

(declare-fun result!190144 () Bool)

(assert (=> tb!153027 (= result!190144 (and (inv!44359 (dynLambda!13661 (toChars!6739 (transformation!4882 (rule!7310 (h!38100 l!5055)))) (value!157048 (h!38100 l!5055)))) e!1773184))))

(assert (= tb!153027 b!2805036))

(declare-fun m!3234353 () Bool)

(assert (=> b!2805036 m!3234353))

(declare-fun m!3234355 () Bool)

(assert (=> tb!153027 m!3234355))

(assert (=> b!2805034 t!229029))

(declare-fun b_and!204533 () Bool)

(assert (= b_and!204527 (and (=> t!229029 result!190144) b_and!204533)))

(declare-fun t!229031 () Bool)

(declare-fun tb!153029 () Bool)

(assert (=> (and b!2804968 (= (toChars!6739 (transformation!4882 (rule!7310 (h!38100 l!5055)))) (toChars!6739 (transformation!4882 (rule!7310 (h!38100 l!5055))))) t!229031) tb!153029))

(declare-fun result!190146 () Bool)

(assert (= result!190146 result!190144))

(assert (=> b!2805034 t!229031))

(declare-fun b_and!204535 () Bool)

(assert (= b_and!204529 (and (=> t!229031 result!190146) b_and!204535)))

(declare-fun t!229033 () Bool)

(declare-fun tb!153031 () Bool)

(assert (=> (and b!2804964 (= (toChars!6739 (transformation!4882 (rule!7310 separatorToken!283))) (toChars!6739 (transformation!4882 (rule!7310 (h!38100 l!5055))))) t!229033) tb!153031))

(declare-fun result!190148 () Bool)

(assert (= result!190148 result!190144))

(assert (=> b!2805034 t!229033))

(declare-fun b_and!204537 () Bool)

(assert (= b_and!204531 (and (=> t!229033 result!190148) b_and!204537)))

(declare-fun m!3234357 () Bool)

(assert (=> d!814361 m!3234357))

(declare-fun m!3234359 () Bool)

(assert (=> b!2805034 m!3234359))

(assert (=> b!2805034 m!3234359))

(declare-fun m!3234361 () Bool)

(assert (=> b!2805034 m!3234361))

(declare-fun m!3234363 () Bool)

(assert (=> b!2805035 m!3234363))

(assert (=> b!2804965 d!814361))

(declare-fun d!814363 () Bool)

(declare-fun lt!1002931 () Bool)

(declare-fun content!4552 (List!32780) (Set Token!9166))

(assert (=> d!814363 (= lt!1002931 (set.member (h!38100 l!5055) (content!4552 l!5055)))))

(declare-fun e!1773190 () Bool)

(assert (=> d!814363 (= lt!1002931 e!1773190)))

(declare-fun res!1168633 () Bool)

(assert (=> d!814363 (=> (not res!1168633) (not e!1773190))))

(assert (=> d!814363 (= res!1168633 (is-Cons!32680 l!5055))))

(assert (=> d!814363 (= (contains!6034 l!5055 (h!38100 l!5055)) lt!1002931)))

(declare-fun b!2805041 () Bool)

(declare-fun e!1773189 () Bool)

(assert (=> b!2805041 (= e!1773190 e!1773189)))

(declare-fun res!1168634 () Bool)

(assert (=> b!2805041 (=> res!1168634 e!1773189)))

(assert (=> b!2805041 (= res!1168634 (= (h!38100 l!5055) (h!38100 l!5055)))))

(declare-fun b!2805042 () Bool)

(assert (=> b!2805042 (= e!1773189 (contains!6034 (t!229016 l!5055) (h!38100 l!5055)))))

(assert (= (and d!814363 res!1168633) b!2805041))

(assert (= (and b!2805041 (not res!1168634)) b!2805042))

(declare-fun m!3234365 () Bool)

(assert (=> d!814363 m!3234365))

(declare-fun m!3234367 () Bool)

(assert (=> d!814363 m!3234367))

(declare-fun m!3234369 () Bool)

(assert (=> b!2805042 m!3234369))

(assert (=> b!2804966 d!814363))

(declare-fun b!2805057 () Bool)

(declare-fun res!1168641 () Bool)

(declare-fun e!1773201 () Bool)

(assert (=> b!2805057 (=> res!1168641 e!1773201)))

(assert (=> b!2805057 (= res!1168641 (not (is-IntegerValue!15314 (value!157048 (h!38100 l!5055)))))))

(declare-fun e!1773200 () Bool)

(assert (=> b!2805057 (= e!1773200 e!1773201)))

(declare-fun b!2805058 () Bool)

(declare-fun inv!15 (TokenValue!5104) Bool)

(assert (=> b!2805058 (= e!1773201 (inv!15 (value!157048 (h!38100 l!5055))))))

(declare-fun d!814367 () Bool)

(declare-fun c!454588 () Bool)

(assert (=> d!814367 (= c!454588 (is-IntegerValue!15312 (value!157048 (h!38100 l!5055))))))

(declare-fun e!1773199 () Bool)

(assert (=> d!814367 (= (inv!21 (value!157048 (h!38100 l!5055))) e!1773199)))

(declare-fun b!2805059 () Bool)

(declare-fun inv!17 (TokenValue!5104) Bool)

(assert (=> b!2805059 (= e!1773200 (inv!17 (value!157048 (h!38100 l!5055))))))

(declare-fun b!2805060 () Bool)

(assert (=> b!2805060 (= e!1773199 e!1773200)))

(declare-fun c!454589 () Bool)

(assert (=> b!2805060 (= c!454589 (is-IntegerValue!15313 (value!157048 (h!38100 l!5055))))))

(declare-fun b!2805061 () Bool)

(declare-fun inv!16 (TokenValue!5104) Bool)

(assert (=> b!2805061 (= e!1773199 (inv!16 (value!157048 (h!38100 l!5055))))))

(assert (= (and d!814367 c!454588) b!2805061))

(assert (= (and d!814367 (not c!454588)) b!2805060))

(assert (= (and b!2805060 c!454589) b!2805059))

(assert (= (and b!2805060 (not c!454589)) b!2805057))

(assert (= (and b!2805057 (not res!1168641)) b!2805058))

(declare-fun m!3234371 () Bool)

(assert (=> b!2805058 m!3234371))

(declare-fun m!3234373 () Bool)

(assert (=> b!2805059 m!3234373))

(declare-fun m!3234375 () Bool)

(assert (=> b!2805061 m!3234375))

(assert (=> b!2804961 d!814367))

(declare-fun b!2805062 () Bool)

(declare-fun res!1168642 () Bool)

(declare-fun e!1773204 () Bool)

(assert (=> b!2805062 (=> res!1168642 e!1773204)))

(assert (=> b!2805062 (= res!1168642 (not (is-IntegerValue!15314 (value!157048 separatorToken!283))))))

(declare-fun e!1773203 () Bool)

(assert (=> b!2805062 (= e!1773203 e!1773204)))

(declare-fun b!2805063 () Bool)

(assert (=> b!2805063 (= e!1773204 (inv!15 (value!157048 separatorToken!283)))))

(declare-fun d!814369 () Bool)

(declare-fun c!454590 () Bool)

(assert (=> d!814369 (= c!454590 (is-IntegerValue!15312 (value!157048 separatorToken!283)))))

(declare-fun e!1773202 () Bool)

(assert (=> d!814369 (= (inv!21 (value!157048 separatorToken!283)) e!1773202)))

(declare-fun b!2805064 () Bool)

(assert (=> b!2805064 (= e!1773203 (inv!17 (value!157048 separatorToken!283)))))

(declare-fun b!2805065 () Bool)

(assert (=> b!2805065 (= e!1773202 e!1773203)))

(declare-fun c!454591 () Bool)

(assert (=> b!2805065 (= c!454591 (is-IntegerValue!15313 (value!157048 separatorToken!283)))))

(declare-fun b!2805066 () Bool)

(assert (=> b!2805066 (= e!1773202 (inv!16 (value!157048 separatorToken!283)))))

(assert (= (and d!814369 c!454590) b!2805066))

(assert (= (and d!814369 (not c!454590)) b!2805065))

(assert (= (and b!2805065 c!454591) b!2805064))

(assert (= (and b!2805065 (not c!454591)) b!2805062))

(assert (= (and b!2805062 (not res!1168642)) b!2805063))

(declare-fun m!3234377 () Bool)

(assert (=> b!2805063 m!3234377))

(declare-fun m!3234379 () Bool)

(assert (=> b!2805064 m!3234379))

(declare-fun m!3234381 () Bool)

(assert (=> b!2805066 m!3234381))

(assert (=> b!2804962 d!814369))

(declare-fun d!814371 () Bool)

(assert (=> d!814371 (= (inv!44351 (tag!5386 (rule!7310 separatorToken!283))) (= (mod (str.len (value!157047 (tag!5386 (rule!7310 separatorToken!283)))) 2) 0))))

(assert (=> b!2804963 d!814371))

(declare-fun d!814373 () Bool)

(declare-fun res!1168643 () Bool)

(declare-fun e!1773205 () Bool)

(assert (=> d!814373 (=> (not res!1168643) (not e!1773205))))

(assert (=> d!814373 (= res!1168643 (semiInverseModEq!2012 (toChars!6739 (transformation!4882 (rule!7310 separatorToken!283))) (toValue!6880 (transformation!4882 (rule!7310 separatorToken!283)))))))

(assert (=> d!814373 (= (inv!44354 (transformation!4882 (rule!7310 separatorToken!283))) e!1773205)))

(declare-fun b!2805067 () Bool)

(assert (=> b!2805067 (= e!1773205 (equivClasses!1913 (toChars!6739 (transformation!4882 (rule!7310 separatorToken!283))) (toValue!6880 (transformation!4882 (rule!7310 separatorToken!283)))))))

(assert (= (and d!814373 res!1168643) b!2805067))

(declare-fun m!3234383 () Bool)

(assert (=> d!814373 m!3234383))

(declare-fun m!3234385 () Bool)

(assert (=> b!2805067 m!3234385))

(assert (=> b!2804963 d!814373))

(declare-fun d!814375 () Bool)

(declare-fun lt!1002936 () Bool)

(declare-fun e!1773215 () Bool)

(assert (=> d!814375 (= lt!1002936 e!1773215)))

(declare-fun res!1168653 () Bool)

(assert (=> d!814375 (=> (not res!1168653) (not e!1773215))))

(declare-datatypes ((IArray!20231 0))(
  ( (IArray!20232 (innerList!10173 List!32780)) )
))
(declare-datatypes ((Conc!10113 0))(
  ( (Node!10113 (left!24665 Conc!10113) (right!24995 Conc!10113) (csize!20456 Int) (cheight!10324 Int)) (Leaf!15408 (xs!13225 IArray!20231) (csize!20457 Int)) (Empty!10113) )
))
(declare-datatypes ((BalanceConc!19840 0))(
  ( (BalanceConc!19841 (c!454600 Conc!10113)) )
))
(declare-fun list!12238 (BalanceConc!19840) List!32780)

(declare-datatypes ((tuple2!33298 0))(
  ( (tuple2!33299 (_1!19742 BalanceConc!19840) (_2!19742 BalanceConc!19836)) )
))
(declare-fun lex!1969 (LexerInterface!4473 List!32781 BalanceConc!19836) tuple2!33298)

(declare-fun print!1688 (LexerInterface!4473 BalanceConc!19840) BalanceConc!19836)

(declare-fun singletonSeq!2109 (Token!9166) BalanceConc!19840)

(assert (=> d!814375 (= res!1168653 (= (list!12238 (_1!19742 (lex!1969 thiss!19710 rules!2540 (print!1688 thiss!19710 (singletonSeq!2109 separatorToken!283))))) (list!12238 (singletonSeq!2109 separatorToken!283))))))

(declare-fun e!1773214 () Bool)

(assert (=> d!814375 (= lt!1002936 e!1773214)))

(declare-fun res!1168654 () Bool)

(assert (=> d!814375 (=> (not res!1168654) (not e!1773214))))

(declare-fun lt!1002937 () tuple2!33298)

(declare-fun size!25501 (BalanceConc!19840) Int)

(assert (=> d!814375 (= res!1168654 (= (size!25501 (_1!19742 lt!1002937)) 1))))

(assert (=> d!814375 (= lt!1002937 (lex!1969 thiss!19710 rules!2540 (print!1688 thiss!19710 (singletonSeq!2109 separatorToken!283))))))

(assert (=> d!814375 (not (isEmpty!18164 rules!2540))))

(assert (=> d!814375 (= (rulesProduceIndividualToken!2037 thiss!19710 rules!2540 separatorToken!283) lt!1002936)))

(declare-fun b!2805081 () Bool)

(declare-fun res!1168652 () Bool)

(assert (=> b!2805081 (=> (not res!1168652) (not e!1773214))))

(declare-fun apply!7636 (BalanceConc!19840 Int) Token!9166)

(assert (=> b!2805081 (= res!1168652 (= (apply!7636 (_1!19742 lt!1002937) 0) separatorToken!283))))

(declare-fun b!2805082 () Bool)

(declare-fun isEmpty!18167 (BalanceConc!19836) Bool)

(assert (=> b!2805082 (= e!1773214 (isEmpty!18167 (_2!19742 lt!1002937)))))

(declare-fun b!2805083 () Bool)

(assert (=> b!2805083 (= e!1773215 (isEmpty!18167 (_2!19742 (lex!1969 thiss!19710 rules!2540 (print!1688 thiss!19710 (singletonSeq!2109 separatorToken!283))))))))

(assert (= (and d!814375 res!1168654) b!2805081))

(assert (= (and b!2805081 res!1168652) b!2805082))

(assert (= (and d!814375 res!1168653) b!2805083))

(declare-fun m!3234399 () Bool)

(assert (=> d!814375 m!3234399))

(declare-fun m!3234401 () Bool)

(assert (=> d!814375 m!3234401))

(declare-fun m!3234403 () Bool)

(assert (=> d!814375 m!3234403))

(assert (=> d!814375 m!3234399))

(declare-fun m!3234405 () Bool)

(assert (=> d!814375 m!3234405))

(assert (=> d!814375 m!3234401))

(declare-fun m!3234407 () Bool)

(assert (=> d!814375 m!3234407))

(assert (=> d!814375 m!3234399))

(declare-fun m!3234409 () Bool)

(assert (=> d!814375 m!3234409))

(assert (=> d!814375 m!3234289))

(declare-fun m!3234411 () Bool)

(assert (=> b!2805081 m!3234411))

(declare-fun m!3234413 () Bool)

(assert (=> b!2805082 m!3234413))

(assert (=> b!2805083 m!3234399))

(assert (=> b!2805083 m!3234399))

(assert (=> b!2805083 m!3234401))

(assert (=> b!2805083 m!3234401))

(assert (=> b!2805083 m!3234407))

(declare-fun m!3234415 () Bool)

(assert (=> b!2805083 m!3234415))

(assert (=> b!2804959 d!814375))

(declare-fun b!2805104 () Bool)

(declare-fun e!1773234 () Bool)

(assert (=> b!2805104 (= e!1773234 true)))

(declare-fun b!2805103 () Bool)

(declare-fun e!1773233 () Bool)

(assert (=> b!2805103 (= e!1773233 e!1773234)))

(declare-fun b!2805102 () Bool)

(declare-fun e!1773232 () Bool)

(assert (=> b!2805102 (= e!1773232 e!1773233)))

(declare-fun d!814379 () Bool)

(assert (=> d!814379 e!1773232))

(assert (= b!2805103 b!2805104))

(assert (= b!2805102 b!2805103))

(assert (= (and d!814379 (is-Cons!32681 rules!2540)) b!2805102))

(declare-fun order!17315 () Int)

(declare-fun lambda!103048 () Int)

(declare-fun order!17313 () Int)

(declare-fun dynLambda!13662 (Int Int) Int)

(declare-fun dynLambda!13663 (Int Int) Int)

(assert (=> b!2805104 (< (dynLambda!13662 order!17313 (toValue!6880 (transformation!4882 (h!38101 rules!2540)))) (dynLambda!13663 order!17315 lambda!103048))))

(declare-fun order!17317 () Int)

(declare-fun dynLambda!13664 (Int Int) Int)

(assert (=> b!2805104 (< (dynLambda!13664 order!17317 (toChars!6739 (transformation!4882 (h!38101 rules!2540)))) (dynLambda!13663 order!17315 lambda!103048))))

(assert (=> d!814379 true))

(declare-fun lt!1002942 () Bool)

(declare-fun forall!6723 (List!32780 Int) Bool)

(assert (=> d!814379 (= lt!1002942 (forall!6723 l!5055 lambda!103048))))

(declare-fun e!1773225 () Bool)

(assert (=> d!814379 (= lt!1002942 e!1773225)))

(declare-fun res!1168664 () Bool)

(assert (=> d!814379 (=> res!1168664 e!1773225)))

(assert (=> d!814379 (= res!1168664 (not (is-Cons!32680 l!5055)))))

(assert (=> d!814379 (not (isEmpty!18164 rules!2540))))

(assert (=> d!814379 (= (rulesProduceEachTokenIndividuallyList!1547 thiss!19710 rules!2540 l!5055) lt!1002942)))

(declare-fun b!2805092 () Bool)

(declare-fun e!1773224 () Bool)

(assert (=> b!2805092 (= e!1773225 e!1773224)))

(declare-fun res!1168663 () Bool)

(assert (=> b!2805092 (=> (not res!1168663) (not e!1773224))))

(assert (=> b!2805092 (= res!1168663 (rulesProduceIndividualToken!2037 thiss!19710 rules!2540 (h!38100 l!5055)))))

(declare-fun b!2805093 () Bool)

(assert (=> b!2805093 (= e!1773224 (rulesProduceEachTokenIndividuallyList!1547 thiss!19710 rules!2540 (t!229016 l!5055)))))

(assert (= (and d!814379 (not res!1168664)) b!2805092))

(assert (= (and b!2805092 res!1168663) b!2805093))

(declare-fun m!3234417 () Bool)

(assert (=> d!814379 m!3234417))

(assert (=> d!814379 m!3234289))

(declare-fun m!3234419 () Bool)

(assert (=> b!2805092 m!3234419))

(declare-fun m!3234421 () Bool)

(assert (=> b!2805093 m!3234421))

(assert (=> b!2804970 d!814379))

(declare-fun d!814381 () Bool)

(declare-fun res!1168667 () Bool)

(declare-fun e!1773237 () Bool)

(assert (=> d!814381 (=> (not res!1168667) (not e!1773237))))

(declare-fun rulesValid!1801 (LexerInterface!4473 List!32781) Bool)

(assert (=> d!814381 (= res!1168667 (rulesValid!1801 thiss!19710 rules!2540))))

(assert (=> d!814381 (= (rulesInvariant!3913 thiss!19710 rules!2540) e!1773237)))

(declare-fun b!2805109 () Bool)

(declare-datatypes ((List!32786 0))(
  ( (Nil!32686) (Cons!32686 (h!38106 String!35858) (t!229053 List!32786)) )
))
(declare-fun noDuplicateTag!1797 (LexerInterface!4473 List!32781 List!32786) Bool)

(assert (=> b!2805109 (= e!1773237 (noDuplicateTag!1797 thiss!19710 rules!2540 Nil!32686))))

(assert (= (and d!814381 res!1168667) b!2805109))

(declare-fun m!3234423 () Bool)

(assert (=> d!814381 m!3234423))

(declare-fun m!3234425 () Bool)

(assert (=> b!2805109 m!3234425))

(assert (=> b!2804960 d!814381))

(declare-fun b!2805120 () Bool)

(declare-fun e!1773240 () Bool)

(declare-fun tp_is_empty!14289 () Bool)

(assert (=> b!2805120 (= e!1773240 tp_is_empty!14289)))

(declare-fun b!2805121 () Bool)

(declare-fun tp!894822 () Bool)

(declare-fun tp!894819 () Bool)

(assert (=> b!2805121 (= e!1773240 (and tp!894822 tp!894819))))

(declare-fun b!2805123 () Bool)

(declare-fun tp!894820 () Bool)

(declare-fun tp!894818 () Bool)

(assert (=> b!2805123 (= e!1773240 (and tp!894820 tp!894818))))

(declare-fun b!2805122 () Bool)

(declare-fun tp!894821 () Bool)

(assert (=> b!2805122 (= e!1773240 tp!894821)))

(assert (=> b!2804956 (= tp!894756 e!1773240)))

(assert (= (and b!2804956 (is-ElementMatch!8252 (regex!4882 (rule!7310 (h!38100 l!5055))))) b!2805120))

(assert (= (and b!2804956 (is-Concat!13357 (regex!4882 (rule!7310 (h!38100 l!5055))))) b!2805121))

(assert (= (and b!2804956 (is-Star!8252 (regex!4882 (rule!7310 (h!38100 l!5055))))) b!2805122))

(assert (= (and b!2804956 (is-Union!8252 (regex!4882 (rule!7310 (h!38100 l!5055))))) b!2805123))

(declare-fun b!2805128 () Bool)

(declare-fun e!1773243 () Bool)

(declare-fun tp!894825 () Bool)

(assert (=> b!2805128 (= e!1773243 (and tp_is_empty!14289 tp!894825))))

(assert (=> b!2804961 (= tp!894759 e!1773243)))

(assert (= (and b!2804961 (is-Cons!32679 (originalCharacters!5614 (h!38100 l!5055)))) b!2805128))

(declare-fun b!2805129 () Bool)

(declare-fun e!1773244 () Bool)

(declare-fun tp!894826 () Bool)

(assert (=> b!2805129 (= e!1773244 (and tp_is_empty!14289 tp!894826))))

(assert (=> b!2804962 (= tp!894749 e!1773244)))

(assert (= (and b!2804962 (is-Cons!32679 (originalCharacters!5614 separatorToken!283))) b!2805129))

(declare-fun b!2805130 () Bool)

(declare-fun e!1773245 () Bool)

(assert (=> b!2805130 (= e!1773245 tp_is_empty!14289)))

(declare-fun b!2805131 () Bool)

(declare-fun tp!894831 () Bool)

(declare-fun tp!894828 () Bool)

(assert (=> b!2805131 (= e!1773245 (and tp!894831 tp!894828))))

(declare-fun b!2805133 () Bool)

(declare-fun tp!894829 () Bool)

(declare-fun tp!894827 () Bool)

(assert (=> b!2805133 (= e!1773245 (and tp!894829 tp!894827))))

(declare-fun b!2805132 () Bool)

(declare-fun tp!894830 () Bool)

(assert (=> b!2805132 (= e!1773245 tp!894830)))

(assert (=> b!2804967 (= tp!894752 e!1773245)))

(assert (= (and b!2804967 (is-ElementMatch!8252 (regex!4882 (h!38101 rules!2540)))) b!2805130))

(assert (= (and b!2804967 (is-Concat!13357 (regex!4882 (h!38101 rules!2540)))) b!2805131))

(assert (= (and b!2804967 (is-Star!8252 (regex!4882 (h!38101 rules!2540)))) b!2805132))

(assert (= (and b!2804967 (is-Union!8252 (regex!4882 (h!38101 rules!2540)))) b!2805133))

(declare-fun b!2805134 () Bool)

(declare-fun e!1773246 () Bool)

(assert (=> b!2805134 (= e!1773246 tp_is_empty!14289)))

(declare-fun b!2805135 () Bool)

(declare-fun tp!894836 () Bool)

(declare-fun tp!894833 () Bool)

(assert (=> b!2805135 (= e!1773246 (and tp!894836 tp!894833))))

(declare-fun b!2805137 () Bool)

(declare-fun tp!894834 () Bool)

(declare-fun tp!894832 () Bool)

(assert (=> b!2805137 (= e!1773246 (and tp!894834 tp!894832))))

(declare-fun b!2805136 () Bool)

(declare-fun tp!894835 () Bool)

(assert (=> b!2805136 (= e!1773246 tp!894835)))

(assert (=> b!2804963 (= tp!894750 e!1773246)))

(assert (= (and b!2804963 (is-ElementMatch!8252 (regex!4882 (rule!7310 separatorToken!283)))) b!2805134))

(assert (= (and b!2804963 (is-Concat!13357 (regex!4882 (rule!7310 separatorToken!283)))) b!2805135))

(assert (= (and b!2804963 (is-Star!8252 (regex!4882 (rule!7310 separatorToken!283)))) b!2805136))

(assert (= (and b!2804963 (is-Union!8252 (regex!4882 (rule!7310 separatorToken!283)))) b!2805137))

(declare-fun b!2805151 () Bool)

(declare-fun b_free!79765 () Bool)

(declare-fun b_next!80469 () Bool)

(assert (=> b!2805151 (= b_free!79765 (not b_next!80469))))

(declare-fun tp!894850 () Bool)

(declare-fun b_and!204545 () Bool)

(assert (=> b!2805151 (= tp!894850 b_and!204545)))

(declare-fun b_free!79767 () Bool)

(declare-fun b_next!80471 () Bool)

(assert (=> b!2805151 (= b_free!79767 (not b_next!80471))))

(declare-fun t!229046 () Bool)

(declare-fun tb!153039 () Bool)

(assert (=> (and b!2805151 (= (toChars!6739 (transformation!4882 (rule!7310 (h!38100 (t!229016 l!5055))))) (toChars!6739 (transformation!4882 (rule!7310 separatorToken!283)))) t!229046) tb!153039))

(declare-fun result!190164 () Bool)

(assert (= result!190164 result!190136))

(assert (=> b!2805026 t!229046))

(declare-fun t!229048 () Bool)

(declare-fun tb!153041 () Bool)

(assert (=> (and b!2805151 (= (toChars!6739 (transformation!4882 (rule!7310 (h!38100 (t!229016 l!5055))))) (toChars!6739 (transformation!4882 (rule!7310 (h!38100 l!5055))))) t!229048) tb!153041))

(declare-fun result!190166 () Bool)

(assert (= result!190166 result!190144))

(assert (=> b!2805034 t!229048))

(declare-fun b_and!204547 () Bool)

(declare-fun tp!894849 () Bool)

(assert (=> b!2805151 (= tp!894849 (and (=> t!229046 result!190164) (=> t!229048 result!190166) b_and!204547))))

(declare-fun tp!894851 () Bool)

(declare-fun e!1773259 () Bool)

(declare-fun e!1773262 () Bool)

(declare-fun b!2805149 () Bool)

(assert (=> b!2805149 (= e!1773259 (and (inv!21 (value!157048 (h!38100 (t!229016 l!5055)))) e!1773262 tp!894851))))

(declare-fun e!1773260 () Bool)

(declare-fun b!2805150 () Bool)

(declare-fun tp!894847 () Bool)

(assert (=> b!2805150 (= e!1773262 (and tp!894847 (inv!44351 (tag!5386 (rule!7310 (h!38100 (t!229016 l!5055))))) (inv!44354 (transformation!4882 (rule!7310 (h!38100 (t!229016 l!5055))))) e!1773260))))

(declare-fun b!2805148 () Bool)

(declare-fun tp!894848 () Bool)

(declare-fun e!1773264 () Bool)

(assert (=> b!2805148 (= e!1773264 (and (inv!44355 (h!38100 (t!229016 l!5055))) e!1773259 tp!894848))))

(assert (=> b!2804965 (= tp!894755 e!1773264)))

(assert (=> b!2805151 (= e!1773260 (and tp!894850 tp!894849))))

(assert (= b!2805150 b!2805151))

(assert (= b!2805149 b!2805150))

(assert (= b!2805148 b!2805149))

(assert (= (and b!2804965 (is-Cons!32680 (t!229016 l!5055))) b!2805148))

(declare-fun m!3234427 () Bool)

(assert (=> b!2805149 m!3234427))

(declare-fun m!3234429 () Bool)

(assert (=> b!2805150 m!3234429))

(declare-fun m!3234431 () Bool)

(assert (=> b!2805150 m!3234431))

(declare-fun m!3234433 () Bool)

(assert (=> b!2805148 m!3234433))

(declare-fun b!2805162 () Bool)

(declare-fun b_free!79769 () Bool)

(declare-fun b_next!80473 () Bool)

(assert (=> b!2805162 (= b_free!79769 (not b_next!80473))))

(declare-fun tp!894860 () Bool)

(declare-fun b_and!204549 () Bool)

(assert (=> b!2805162 (= tp!894860 b_and!204549)))

(declare-fun b_free!79771 () Bool)

(declare-fun b_next!80475 () Bool)

(assert (=> b!2805162 (= b_free!79771 (not b_next!80475))))

(declare-fun tb!153043 () Bool)

(declare-fun t!229050 () Bool)

(assert (=> (and b!2805162 (= (toChars!6739 (transformation!4882 (h!38101 (t!229017 rules!2540)))) (toChars!6739 (transformation!4882 (rule!7310 separatorToken!283)))) t!229050) tb!153043))

(declare-fun result!190170 () Bool)

(assert (= result!190170 result!190136))

(assert (=> b!2805026 t!229050))

(declare-fun tb!153045 () Bool)

(declare-fun t!229052 () Bool)

(assert (=> (and b!2805162 (= (toChars!6739 (transformation!4882 (h!38101 (t!229017 rules!2540)))) (toChars!6739 (transformation!4882 (rule!7310 (h!38100 l!5055))))) t!229052) tb!153045))

(declare-fun result!190172 () Bool)

(assert (= result!190172 result!190144))

(assert (=> b!2805034 t!229052))

(declare-fun tp!894861 () Bool)

(declare-fun b_and!204551 () Bool)

(assert (=> b!2805162 (= tp!894861 (and (=> t!229050 result!190170) (=> t!229052 result!190172) b_and!204551))))

(declare-fun e!1773275 () Bool)

(assert (=> b!2805162 (= e!1773275 (and tp!894860 tp!894861))))

(declare-fun e!1773274 () Bool)

(declare-fun tp!894862 () Bool)

(declare-fun b!2805161 () Bool)

(assert (=> b!2805161 (= e!1773274 (and tp!894862 (inv!44351 (tag!5386 (h!38101 (t!229017 rules!2540)))) (inv!44354 (transformation!4882 (h!38101 (t!229017 rules!2540)))) e!1773275))))

(declare-fun b!2805160 () Bool)

(declare-fun e!1773276 () Bool)

(declare-fun tp!894863 () Bool)

(assert (=> b!2805160 (= e!1773276 (and e!1773274 tp!894863))))

(assert (=> b!2804955 (= tp!894753 e!1773276)))

(assert (= b!2805161 b!2805162))

(assert (= b!2805160 b!2805161))

(assert (= (and b!2804955 (is-Cons!32681 (t!229017 rules!2540))) b!2805160))

(declare-fun m!3234435 () Bool)

(assert (=> b!2805161 m!3234435))

(declare-fun m!3234437 () Bool)

(assert (=> b!2805161 m!3234437))

(declare-fun b_lambda!83785 () Bool)

(assert (= b_lambda!83781 (or (and b!2804958 b_free!79743 (= (toChars!6739 (transformation!4882 (h!38101 rules!2540))) (toChars!6739 (transformation!4882 (rule!7310 (h!38100 l!5055)))))) (and b!2805162 b_free!79771 (= (toChars!6739 (transformation!4882 (h!38101 (t!229017 rules!2540)))) (toChars!6739 (transformation!4882 (rule!7310 (h!38100 l!5055)))))) (and b!2805151 b_free!79767 (= (toChars!6739 (transformation!4882 (rule!7310 (h!38100 (t!229016 l!5055))))) (toChars!6739 (transformation!4882 (rule!7310 (h!38100 l!5055)))))) (and b!2804964 b_free!79751 (= (toChars!6739 (transformation!4882 (rule!7310 separatorToken!283))) (toChars!6739 (transformation!4882 (rule!7310 (h!38100 l!5055)))))) (and b!2804968 b_free!79747) b_lambda!83785)))

(declare-fun b_lambda!83787 () Bool)

(assert (= b_lambda!83779 (or (and b!2804958 b_free!79743 (= (toChars!6739 (transformation!4882 (h!38101 rules!2540))) (toChars!6739 (transformation!4882 (rule!7310 separatorToken!283))))) (and b!2805151 b_free!79767 (= (toChars!6739 (transformation!4882 (rule!7310 (h!38100 (t!229016 l!5055))))) (toChars!6739 (transformation!4882 (rule!7310 separatorToken!283))))) (and b!2804964 b_free!79751) (and b!2805162 b_free!79771 (= (toChars!6739 (transformation!4882 (h!38101 (t!229017 rules!2540)))) (toChars!6739 (transformation!4882 (rule!7310 separatorToken!283))))) (and b!2804968 b_free!79747 (= (toChars!6739 (transformation!4882 (rule!7310 (h!38100 l!5055)))) (toChars!6739 (transformation!4882 (rule!7310 separatorToken!283))))) b_lambda!83787)))

(push 1)

(assert (not b_next!80449))

(assert b_and!204533)

(assert (not b!2805128))

(assert (not b!2805036))

(assert b_and!204537)

(assert (not b!2805137))

(assert (not tb!153021))

(assert (not b!2805061))

(assert b_and!204545)

(assert (not b!2805161))

(assert (not b!2805129))

(assert (not b!2805122))

(assert (not b!2805042))

(assert (not d!814353))

(assert (not b!2805132))

(assert (not b!2805131))

(assert (not d!814361))

(assert (not b!2805035))

(assert (not b!2805032))

(assert (not b!2805102))

(assert (not b_next!80471))

(assert (not b!2805083))

(assert (not b!2805063))

(assert (not d!814379))

(assert (not b_next!80447))

(assert (not b!2805121))

(assert (not b!2805149))

(assert (not b!2805066))

(assert (not d!814381))

(assert (not b!2805150))

(assert (not d!814373))

(assert (not b!2805064))

(assert (not b!2805160))

(assert (not d!814375))

(assert (not b!2805093))

(assert (not b!2805027))

(assert (not d!814357))

(assert (not b_next!80469))

(assert (not b_lambda!83787))

(assert b_and!204511)

(assert (not b!2805034))

(assert (not b!2805026))

(assert (not b!2805109))

(assert (not b!2805067))

(assert (not b!2805123))

(assert tp_is_empty!14289)

(assert (not b_next!80453))

(assert (not b!2805136))

(assert (not b!2805021))

(assert (not b!2805092))

(assert (not b_next!80475))

(assert (not d!814351))

(assert (not b_next!80445))

(assert (not tb!153027))

(assert (not b!2805059))

(assert b_and!204551)

(assert (not b_next!80455))

(assert (not b!2805081))

(assert (not b_next!80473))

(assert (not b_next!80451))

(assert (not d!814363))

(assert (not b!2805082))

(assert b_and!204547)

(assert (not b_lambda!83785))

(assert b_and!204549)

(assert b_and!204507)

(assert b_and!204503)

(assert (not b!2805033))

(assert (not b!2805135))

(assert (not b!2805148))

(assert (not b!2805058))

(assert (not b!2805133))

(assert b_and!204535)

(check-sat)

(pop 1)

(push 1)

(assert b_and!204537)

(assert b_and!204545)

(assert (not b_next!80449))

(assert (not b_next!80471))

(assert (not b_next!80447))

(assert b_and!204533)

(assert (not b_next!80453))

(assert (not b_next!80475))

(assert (not b_next!80445))

(assert (not b_next!80473))

(assert b_and!204535)

(assert (not b_next!80469))

(assert b_and!204511)

(assert b_and!204551)

(assert (not b_next!80455))

(assert (not b_next!80451))

(assert b_and!204547)

(assert b_and!204549)

(assert b_and!204507)

(assert b_and!204503)

(check-sat)

(pop 1)

