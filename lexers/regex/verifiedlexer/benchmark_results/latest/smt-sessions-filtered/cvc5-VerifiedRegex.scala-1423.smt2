; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!74376 () Bool)

(assert start!74376)

(declare-fun b!838288 () Bool)

(declare-fun b_free!24805 () Bool)

(declare-fun b_next!24869 () Bool)

(assert (=> b!838288 (= b_free!24805 (not b_next!24869))))

(declare-fun tp!263268 () Bool)

(declare-fun b_and!72285 () Bool)

(assert (=> b!838288 (= tp!263268 b_and!72285)))

(declare-fun b_free!24807 () Bool)

(declare-fun b_next!24871 () Bool)

(assert (=> b!838288 (= b_free!24807 (not b_next!24871))))

(declare-fun tp!263274 () Bool)

(declare-fun b_and!72287 () Bool)

(assert (=> b!838288 (= tp!263274 b_and!72287)))

(declare-fun b!838276 () Bool)

(declare-fun b_free!24809 () Bool)

(declare-fun b_next!24873 () Bool)

(assert (=> b!838276 (= b_free!24809 (not b_next!24873))))

(declare-fun tp!263272 () Bool)

(declare-fun b_and!72289 () Bool)

(assert (=> b!838276 (= tp!263272 b_and!72289)))

(declare-fun b_free!24811 () Bool)

(declare-fun b_next!24875 () Bool)

(assert (=> b!838276 (= b_free!24811 (not b_next!24875))))

(declare-fun tp!263269 () Bool)

(declare-fun b_and!72291 () Bool)

(assert (=> b!838276 (= tp!263269 b_and!72291)))

(declare-fun b!838278 () Bool)

(declare-fun b_free!24813 () Bool)

(declare-fun b_next!24877 () Bool)

(assert (=> b!838278 (= b_free!24813 (not b_next!24877))))

(declare-fun tp!263276 () Bool)

(declare-fun b_and!72293 () Bool)

(assert (=> b!838278 (= tp!263276 b_and!72293)))

(declare-fun b_free!24815 () Bool)

(declare-fun b_next!24879 () Bool)

(assert (=> b!838278 (= b_free!24815 (not b_next!24879))))

(declare-fun tp!263273 () Bool)

(declare-fun b_and!72295 () Bool)

(assert (=> b!838278 (= tp!263273 b_and!72295)))

(declare-fun b!838272 () Bool)

(declare-fun res!383182 () Bool)

(declare-fun e!551072 () Bool)

(assert (=> b!838272 (=> (not res!383182) (not e!551072))))

(declare-datatypes ((LexerInterface!1473 0))(
  ( (LexerInterfaceExt!1470 (__x!7205 Int)) (Lexer!1471) )
))
(declare-fun thiss!20117 () LexerInterface!1473)

(declare-datatypes ((List!8948 0))(
  ( (Nil!8932) (Cons!8932 (h!14333 (_ BitVec 16)) (t!93240 List!8948)) )
))
(declare-datatypes ((TokenValue!1737 0))(
  ( (FloatLiteralValue!3474 (text!12604 List!8948)) (TokenValueExt!1736 (__x!7206 Int)) (Broken!8685 (value!54298 List!8948)) (Object!1752) (End!1737) (Def!1737) (Underscore!1737) (Match!1737) (Else!1737) (Error!1737) (Case!1737) (If!1737) (Extends!1737) (Abstract!1737) (Class!1737) (Val!1737) (DelimiterValue!3474 (del!1797 List!8948)) (KeywordValue!1743 (value!54299 List!8948)) (CommentValue!3474 (value!54300 List!8948)) (WhitespaceValue!3474 (value!54301 List!8948)) (IndentationValue!1737 (value!54302 List!8948)) (String!10584) (Int32!1737) (Broken!8686 (value!54303 List!8948)) (Boolean!1738) (Unit!13403) (OperatorValue!1740 (op!1797 List!8948)) (IdentifierValue!3474 (value!54304 List!8948)) (IdentifierValue!3475 (value!54305 List!8948)) (WhitespaceValue!3475 (value!54306 List!8948)) (True!3474) (False!3474) (Broken!8687 (value!54307 List!8948)) (Broken!8688 (value!54308 List!8948)) (True!3475) (RightBrace!1737) (RightBracket!1737) (Colon!1737) (Null!1737) (Comma!1737) (LeftBracket!1737) (False!3475) (LeftBrace!1737) (ImaginaryLiteralValue!1737 (text!12605 List!8948)) (StringLiteralValue!5211 (value!54309 List!8948)) (EOFValue!1737 (value!54310 List!8948)) (IdentValue!1737 (value!54311 List!8948)) (DelimiterValue!3475 (value!54312 List!8948)) (DedentValue!1737 (value!54313 List!8948)) (NewLineValue!1737 (value!54314 List!8948)) (IntegerValue!5211 (value!54315 (_ BitVec 32)) (text!12606 List!8948)) (IntegerValue!5212 (value!54316 Int) (text!12607 List!8948)) (Times!1737) (Or!1737) (Equal!1737) (Minus!1737) (Broken!8689 (value!54317 List!8948)) (And!1737) (Div!1737) (LessEqual!1737) (Mod!1737) (Concat!3841) (Not!1737) (Plus!1737) (SpaceValue!1737 (value!54318 List!8948)) (IntegerValue!5213 (value!54319 Int) (text!12608 List!8948)) (StringLiteralValue!5212 (text!12609 List!8948)) (FloatLiteralValue!3475 (text!12610 List!8948)) (BytesLiteralValue!1737 (value!54320 List!8948)) (CommentValue!3475 (value!54321 List!8948)) (StringLiteralValue!5213 (value!54322 List!8948)) (ErrorTokenValue!1737 (msg!1798 List!8948)) )
))
(declare-datatypes ((C!4778 0))(
  ( (C!4779 (val!2637 Int)) )
))
(declare-datatypes ((Regex!2104 0))(
  ( (ElementMatch!2104 (c!136907 C!4778)) (Concat!3842 (regOne!4720 Regex!2104) (regTwo!4720 Regex!2104)) (EmptyExpr!2104) (Star!2104 (reg!2433 Regex!2104)) (EmptyLang!2104) (Union!2104 (regOne!4721 Regex!2104) (regTwo!4721 Regex!2104)) )
))
(declare-datatypes ((String!10585 0))(
  ( (String!10586 (value!54323 String)) )
))
(declare-datatypes ((List!8949 0))(
  ( (Nil!8933) (Cons!8933 (h!14334 C!4778) (t!93241 List!8949)) )
))
(declare-datatypes ((IArray!5933 0))(
  ( (IArray!5934 (innerList!3024 List!8949)) )
))
(declare-datatypes ((Conc!2964 0))(
  ( (Node!2964 (left!6637 Conc!2964) (right!6967 Conc!2964) (csize!6158 Int) (cheight!3175 Int)) (Leaf!4388 (xs!5653 IArray!5933) (csize!6159 Int)) (Empty!2964) )
))
(declare-datatypes ((BalanceConc!5942 0))(
  ( (BalanceConc!5943 (c!136908 Conc!2964)) )
))
(declare-datatypes ((TokenValueInjection!3174 0))(
  ( (TokenValueInjection!3175 (toValue!2688 Int) (toChars!2547 Int)) )
))
(declare-datatypes ((Rule!3142 0))(
  ( (Rule!3143 (regex!1671 Regex!2104) (tag!1933 String!10585) (isSeparator!1671 Bool) (transformation!1671 TokenValueInjection!3174)) )
))
(declare-datatypes ((List!8950 0))(
  ( (Nil!8934) (Cons!8934 (h!14335 Rule!3142) (t!93242 List!8950)) )
))
(declare-fun rules!2621 () List!8950)

(declare-fun rulesInvariant!1349 (LexerInterface!1473 List!8950) Bool)

(assert (=> b!838272 (= res!383182 (rulesInvariant!1349 thiss!20117 rules!2621))))

(declare-fun b!838273 () Bool)

(declare-datatypes ((Token!3008 0))(
  ( (Token!3009 (value!54324 TokenValue!1737) (rule!3094 Rule!3142) (size!7498 Int) (originalCharacters!2227 List!8949)) )
))
(declare-datatypes ((List!8951 0))(
  ( (Nil!8935) (Cons!8935 (h!14336 Token!3008) (t!93243 List!8951)) )
))
(declare-fun lt!318025 () List!8951)

(declare-fun l!5107 () List!8951)

(assert (=> b!838273 (= e!551072 (not (or (not (is-Cons!8935 lt!318025)) (not (is-Cons!8935 (t!93243 lt!318025))) (not (= l!5107 Nil!8935)))))))

(declare-fun rulesProduceEachTokenIndividuallyList!361 (LexerInterface!1473 List!8950 List!8951) Bool)

(assert (=> b!838273 (rulesProduceEachTokenIndividuallyList!361 thiss!20117 rules!2621 lt!318025)))

(declare-fun separatorToken!297 () Token!3008)

(declare-fun withSeparatorTokenList!3 (LexerInterface!1473 List!8951 Token!3008) List!8951)

(assert (=> b!838273 (= lt!318025 (withSeparatorTokenList!3 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13404 0))(
  ( (Unit!13405) )
))
(declare-fun lt!318024 () Unit!13404)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!3 (LexerInterface!1473 List!8950 List!8951 Token!3008) Unit!13404)

(assert (=> b!838273 (= lt!318024 (withSeparatorTokenListPreservesRulesProduceTokens!3 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!838274 () Bool)

(declare-fun res!383177 () Bool)

(assert (=> b!838274 (=> (not res!383177) (not e!551072))))

(assert (=> b!838274 (= res!383177 (rulesProduceEachTokenIndividuallyList!361 thiss!20117 rules!2621 l!5107))))

(declare-fun e!551074 () Bool)

(declare-fun b!838275 () Bool)

(declare-fun tp!263267 () Bool)

(declare-fun e!551079 () Bool)

(declare-fun inv!11409 (Token!3008) Bool)

(assert (=> b!838275 (= e!551079 (and (inv!11409 (h!14336 l!5107)) e!551074 tp!263267))))

(declare-fun e!551067 () Bool)

(assert (=> b!838276 (= e!551067 (and tp!263272 tp!263269))))

(declare-fun b!838277 () Bool)

(declare-fun res!383179 () Bool)

(assert (=> b!838277 (=> (not res!383179) (not e!551072))))

(declare-fun isEmpty!5276 (List!8950) Bool)

(assert (=> b!838277 (= res!383179 (not (isEmpty!5276 rules!2621)))))

(declare-fun e!551068 () Bool)

(assert (=> b!838278 (= e!551068 (and tp!263276 tp!263273))))

(declare-fun e!551073 () Bool)

(declare-fun b!838279 () Bool)

(declare-fun e!551077 () Bool)

(declare-fun tp!263275 () Bool)

(declare-fun inv!11406 (String!10585) Bool)

(declare-fun inv!11410 (TokenValueInjection!3174) Bool)

(assert (=> b!838279 (= e!551077 (and tp!263275 (inv!11406 (tag!1933 (rule!3094 (h!14336 l!5107)))) (inv!11410 (transformation!1671 (rule!3094 (h!14336 l!5107)))) e!551073))))

(declare-fun b!838280 () Bool)

(declare-fun res!383178 () Bool)

(assert (=> b!838280 (=> (not res!383178) (not e!551072))))

(assert (=> b!838280 (= res!383178 (isSeparator!1671 (rule!3094 separatorToken!297)))))

(declare-fun b!838282 () Bool)

(declare-fun e!551069 () Bool)

(declare-fun e!551078 () Bool)

(declare-fun tp!263277 () Bool)

(assert (=> b!838282 (= e!551069 (and e!551078 tp!263277))))

(declare-fun e!551081 () Bool)

(declare-fun tp!263266 () Bool)

(declare-fun b!838283 () Bool)

(declare-fun e!551066 () Bool)

(declare-fun inv!21 (TokenValue!1737) Bool)

(assert (=> b!838283 (= e!551081 (and (inv!21 (value!54324 separatorToken!297)) e!551066 tp!263266))))

(declare-fun tp!263271 () Bool)

(declare-fun b!838284 () Bool)

(assert (=> b!838284 (= e!551078 (and tp!263271 (inv!11406 (tag!1933 (h!14335 rules!2621))) (inv!11410 (transformation!1671 (h!14335 rules!2621))) e!551067))))

(declare-fun b!838285 () Bool)

(declare-fun res!383176 () Bool)

(assert (=> b!838285 (=> (not res!383176) (not e!551072))))

(declare-fun lambda!24881 () Int)

(declare-fun forall!2086 (List!8951 Int) Bool)

(assert (=> b!838285 (= res!383176 (forall!2086 l!5107 lambda!24881))))

(declare-fun b!838286 () Bool)

(declare-fun res!383181 () Bool)

(assert (=> b!838286 (=> (not res!383181) (not e!551072))))

(declare-fun sepAndNonSepRulesDisjointChars!471 (List!8950 List!8950) Bool)

(assert (=> b!838286 (= res!383181 (sepAndNonSepRulesDisjointChars!471 rules!2621 rules!2621))))

(declare-fun tp!263265 () Bool)

(declare-fun b!838287 () Bool)

(assert (=> b!838287 (= e!551066 (and tp!263265 (inv!11406 (tag!1933 (rule!3094 separatorToken!297))) (inv!11410 (transformation!1671 (rule!3094 separatorToken!297))) e!551068))))

(assert (=> b!838288 (= e!551073 (and tp!263268 tp!263274))))

(declare-fun tp!263270 () Bool)

(declare-fun b!838289 () Bool)

(assert (=> b!838289 (= e!551074 (and (inv!21 (value!54324 (h!14336 l!5107))) e!551077 tp!263270))))

(declare-fun b!838281 () Bool)

(declare-fun res!383183 () Bool)

(assert (=> b!838281 (=> (not res!383183) (not e!551072))))

(declare-fun rulesProduceIndividualToken!537 (LexerInterface!1473 List!8950 Token!3008) Bool)

(assert (=> b!838281 (= res!383183 (rulesProduceIndividualToken!537 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun res!383180 () Bool)

(assert (=> start!74376 (=> (not res!383180) (not e!551072))))

(assert (=> start!74376 (= res!383180 (is-Lexer!1471 thiss!20117))))

(assert (=> start!74376 e!551072))

(assert (=> start!74376 true))

(assert (=> start!74376 e!551069))

(assert (=> start!74376 e!551079))

(assert (=> start!74376 (and (inv!11409 separatorToken!297) e!551081)))

(assert (= (and start!74376 res!383180) b!838277))

(assert (= (and b!838277 res!383179) b!838272))

(assert (= (and b!838272 res!383182) b!838274))

(assert (= (and b!838274 res!383177) b!838281))

(assert (= (and b!838281 res!383183) b!838280))

(assert (= (and b!838280 res!383178) b!838285))

(assert (= (and b!838285 res!383176) b!838286))

(assert (= (and b!838286 res!383181) b!838273))

(assert (= b!838284 b!838276))

(assert (= b!838282 b!838284))

(assert (= (and start!74376 (is-Cons!8934 rules!2621)) b!838282))

(assert (= b!838279 b!838288))

(assert (= b!838289 b!838279))

(assert (= b!838275 b!838289))

(assert (= (and start!74376 (is-Cons!8935 l!5107)) b!838275))

(assert (= b!838287 b!838278))

(assert (= b!838283 b!838287))

(assert (= start!74376 b!838283))

(declare-fun m!1071317 () Bool)

(assert (=> start!74376 m!1071317))

(declare-fun m!1071319 () Bool)

(assert (=> b!838277 m!1071319))

(declare-fun m!1071321 () Bool)

(assert (=> b!838284 m!1071321))

(declare-fun m!1071323 () Bool)

(assert (=> b!838284 m!1071323))

(declare-fun m!1071325 () Bool)

(assert (=> b!838279 m!1071325))

(declare-fun m!1071327 () Bool)

(assert (=> b!838279 m!1071327))

(declare-fun m!1071329 () Bool)

(assert (=> b!838273 m!1071329))

(declare-fun m!1071331 () Bool)

(assert (=> b!838273 m!1071331))

(declare-fun m!1071333 () Bool)

(assert (=> b!838273 m!1071333))

(declare-fun m!1071335 () Bool)

(assert (=> b!838286 m!1071335))

(declare-fun m!1071337 () Bool)

(assert (=> b!838289 m!1071337))

(declare-fun m!1071339 () Bool)

(assert (=> b!838285 m!1071339))

(declare-fun m!1071341 () Bool)

(assert (=> b!838272 m!1071341))

(declare-fun m!1071343 () Bool)

(assert (=> b!838281 m!1071343))

(declare-fun m!1071345 () Bool)

(assert (=> b!838283 m!1071345))

(declare-fun m!1071347 () Bool)

(assert (=> b!838287 m!1071347))

(declare-fun m!1071349 () Bool)

(assert (=> b!838287 m!1071349))

(declare-fun m!1071351 () Bool)

(assert (=> b!838275 m!1071351))

(declare-fun m!1071353 () Bool)

(assert (=> b!838274 m!1071353))

(push 1)

(assert (not b!838289))

(assert (not b!838287))

(assert (not b_next!24875))

(assert (not b!838285))

(assert (not b!838279))

(assert b_and!72285)

(assert b_and!72289)

(assert (not b!838281))

(assert (not b_next!24869))

(assert (not b!838283))

(assert (not b!838275))

(assert b_and!72295)

(assert (not b_next!24879))

(assert (not b_next!24871))

(assert (not b!838284))

(assert (not b!838277))

(assert (not b!838273))

(assert b_and!72287)

(assert b_and!72293)

(assert (not b_next!24873))

(assert (not b!838272))

(assert (not b!838282))

(assert b_and!72291)

(assert (not start!74376))

(assert (not b_next!24877))

(assert (not b!838286))

(assert (not b!838274))

(check-sat)

(pop 1)

(push 1)

(assert b_and!72295)

(assert (not b_next!24873))

(assert (not b_next!24875))

(assert b_and!72285)

(assert b_and!72291)

(assert (not b_next!24877))

(assert b_and!72289)

(assert (not b_next!24869))

(assert (not b_next!24879))

(assert (not b_next!24871))

(assert b_and!72287)

(assert b_and!72293)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!838354 () Bool)

(declare-fun e!551137 () Bool)

(declare-fun inv!16 (TokenValue!1737) Bool)

(assert (=> b!838354 (= e!551137 (inv!16 (value!54324 (h!14336 l!5107))))))

(declare-fun b!838355 () Bool)

(declare-fun res!383214 () Bool)

(declare-fun e!551136 () Bool)

(assert (=> b!838355 (=> res!383214 e!551136)))

(assert (=> b!838355 (= res!383214 (not (is-IntegerValue!5213 (value!54324 (h!14336 l!5107)))))))

(declare-fun e!551138 () Bool)

(assert (=> b!838355 (= e!551138 e!551136)))

(declare-fun b!838357 () Bool)

(declare-fun inv!15 (TokenValue!1737) Bool)

(assert (=> b!838357 (= e!551136 (inv!15 (value!54324 (h!14336 l!5107))))))

(declare-fun b!838358 () Bool)

(assert (=> b!838358 (= e!551137 e!551138)))

(declare-fun c!136915 () Bool)

(assert (=> b!838358 (= c!136915 (is-IntegerValue!5212 (value!54324 (h!14336 l!5107))))))

(declare-fun d!261248 () Bool)

(declare-fun c!136916 () Bool)

(assert (=> d!261248 (= c!136916 (is-IntegerValue!5211 (value!54324 (h!14336 l!5107))))))

(assert (=> d!261248 (= (inv!21 (value!54324 (h!14336 l!5107))) e!551137)))

(declare-fun b!838356 () Bool)

(declare-fun inv!17 (TokenValue!1737) Bool)

(assert (=> b!838356 (= e!551138 (inv!17 (value!54324 (h!14336 l!5107))))))

(assert (= (and d!261248 c!136916) b!838354))

(assert (= (and d!261248 (not c!136916)) b!838358))

(assert (= (and b!838358 c!136915) b!838356))

(assert (= (and b!838358 (not c!136915)) b!838355))

(assert (= (and b!838355 (not res!383214)) b!838357))

(declare-fun m!1071393 () Bool)

(assert (=> b!838354 m!1071393))

(declare-fun m!1071395 () Bool)

(assert (=> b!838357 m!1071395))

(declare-fun m!1071397 () Bool)

(assert (=> b!838356 m!1071397))

(assert (=> b!838289 d!261248))

(declare-fun d!261250 () Bool)

(assert (=> d!261250 (= (isEmpty!5276 rules!2621) (is-Nil!8934 rules!2621))))

(assert (=> b!838277 d!261250))

(declare-fun d!261252 () Bool)

(assert (=> d!261252 (= (inv!11406 (tag!1933 (rule!3094 separatorToken!297))) (= (mod (str.len (value!54323 (tag!1933 (rule!3094 separatorToken!297)))) 2) 0))))

(assert (=> b!838287 d!261252))

(declare-fun d!261254 () Bool)

(declare-fun res!383220 () Bool)

(declare-fun e!551141 () Bool)

(assert (=> d!261254 (=> (not res!383220) (not e!551141))))

(declare-fun semiInverseModEq!643 (Int Int) Bool)

(assert (=> d!261254 (= res!383220 (semiInverseModEq!643 (toChars!2547 (transformation!1671 (rule!3094 separatorToken!297))) (toValue!2688 (transformation!1671 (rule!3094 separatorToken!297)))))))

(assert (=> d!261254 (= (inv!11410 (transformation!1671 (rule!3094 separatorToken!297))) e!551141)))

(declare-fun b!838361 () Bool)

(declare-fun equivClasses!610 (Int Int) Bool)

(assert (=> b!838361 (= e!551141 (equivClasses!610 (toChars!2547 (transformation!1671 (rule!3094 separatorToken!297))) (toValue!2688 (transformation!1671 (rule!3094 separatorToken!297)))))))

(assert (= (and d!261254 res!383220) b!838361))

(declare-fun m!1071399 () Bool)

(assert (=> d!261254 m!1071399))

(declare-fun m!1071401 () Bool)

(assert (=> b!838361 m!1071401))

(assert (=> b!838287 d!261254))

(declare-fun d!261256 () Bool)

(declare-fun res!383227 () Bool)

(declare-fun e!551144 () Bool)

(assert (=> d!261256 (=> (not res!383227) (not e!551144))))

(declare-fun isEmpty!5278 (List!8949) Bool)

(assert (=> d!261256 (= res!383227 (not (isEmpty!5278 (originalCharacters!2227 (h!14336 l!5107)))))))

(assert (=> d!261256 (= (inv!11409 (h!14336 l!5107)) e!551144)))

(declare-fun b!838366 () Bool)

(declare-fun res!383228 () Bool)

(assert (=> b!838366 (=> (not res!383228) (not e!551144))))

(declare-fun list!3531 (BalanceConc!5942) List!8949)

(declare-fun dynLambda!4122 (Int TokenValue!1737) BalanceConc!5942)

(assert (=> b!838366 (= res!383228 (= (originalCharacters!2227 (h!14336 l!5107)) (list!3531 (dynLambda!4122 (toChars!2547 (transformation!1671 (rule!3094 (h!14336 l!5107)))) (value!54324 (h!14336 l!5107))))))))

(declare-fun b!838367 () Bool)

(declare-fun size!7500 (List!8949) Int)

(assert (=> b!838367 (= e!551144 (= (size!7498 (h!14336 l!5107)) (size!7500 (originalCharacters!2227 (h!14336 l!5107)))))))

(assert (= (and d!261256 res!383227) b!838366))

(assert (= (and b!838366 res!383228) b!838367))

(declare-fun b_lambda!27555 () Bool)

(assert (=> (not b_lambda!27555) (not b!838366)))

(declare-fun t!93249 () Bool)

(declare-fun tb!57813 () Bool)

(assert (=> (and b!838288 (= (toChars!2547 (transformation!1671 (rule!3094 (h!14336 l!5107)))) (toChars!2547 (transformation!1671 (rule!3094 (h!14336 l!5107))))) t!93249) tb!57813))

(declare-fun b!838372 () Bool)

(declare-fun e!551147 () Bool)

(declare-fun tp!263319 () Bool)

(declare-fun inv!11413 (Conc!2964) Bool)

(assert (=> b!838372 (= e!551147 (and (inv!11413 (c!136908 (dynLambda!4122 (toChars!2547 (transformation!1671 (rule!3094 (h!14336 l!5107)))) (value!54324 (h!14336 l!5107))))) tp!263319))))

(declare-fun result!66994 () Bool)

(declare-fun inv!11414 (BalanceConc!5942) Bool)

(assert (=> tb!57813 (= result!66994 (and (inv!11414 (dynLambda!4122 (toChars!2547 (transformation!1671 (rule!3094 (h!14336 l!5107)))) (value!54324 (h!14336 l!5107)))) e!551147))))

(assert (= tb!57813 b!838372))

(declare-fun m!1071403 () Bool)

(assert (=> b!838372 m!1071403))

(declare-fun m!1071405 () Bool)

(assert (=> tb!57813 m!1071405))

(assert (=> b!838366 t!93249))

(declare-fun b_and!72309 () Bool)

(assert (= b_and!72287 (and (=> t!93249 result!66994) b_and!72309)))

(declare-fun tb!57815 () Bool)

(declare-fun t!93251 () Bool)

(assert (=> (and b!838276 (= (toChars!2547 (transformation!1671 (h!14335 rules!2621))) (toChars!2547 (transformation!1671 (rule!3094 (h!14336 l!5107))))) t!93251) tb!57815))

(declare-fun result!66998 () Bool)

(assert (= result!66998 result!66994))

(assert (=> b!838366 t!93251))

(declare-fun b_and!72311 () Bool)

(assert (= b_and!72291 (and (=> t!93251 result!66998) b_and!72311)))

(declare-fun tb!57817 () Bool)

(declare-fun t!93253 () Bool)

(assert (=> (and b!838278 (= (toChars!2547 (transformation!1671 (rule!3094 separatorToken!297))) (toChars!2547 (transformation!1671 (rule!3094 (h!14336 l!5107))))) t!93253) tb!57817))

(declare-fun result!67000 () Bool)

(assert (= result!67000 result!66994))

(assert (=> b!838366 t!93253))

(declare-fun b_and!72313 () Bool)

(assert (= b_and!72295 (and (=> t!93253 result!67000) b_and!72313)))

(declare-fun m!1071407 () Bool)

(assert (=> d!261256 m!1071407))

(declare-fun m!1071409 () Bool)

(assert (=> b!838366 m!1071409))

(assert (=> b!838366 m!1071409))

(declare-fun m!1071411 () Bool)

(assert (=> b!838366 m!1071411))

(declare-fun m!1071413 () Bool)

(assert (=> b!838367 m!1071413))

(assert (=> b!838275 d!261256))

(declare-fun d!261258 () Bool)

(declare-fun res!383233 () Bool)

(declare-fun e!551152 () Bool)

(assert (=> d!261258 (=> res!383233 e!551152)))

(assert (=> d!261258 (= res!383233 (not (is-Cons!8934 rules!2621)))))

(assert (=> d!261258 (= (sepAndNonSepRulesDisjointChars!471 rules!2621 rules!2621) e!551152)))

(declare-fun b!838377 () Bool)

(declare-fun e!551153 () Bool)

(assert (=> b!838377 (= e!551152 e!551153)))

(declare-fun res!383234 () Bool)

(assert (=> b!838377 (=> (not res!383234) (not e!551153))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!210 (Rule!3142 List!8950) Bool)

(assert (=> b!838377 (= res!383234 (ruleDisjointCharsFromAllFromOtherType!210 (h!14335 rules!2621) rules!2621))))

(declare-fun b!838378 () Bool)

(assert (=> b!838378 (= e!551153 (sepAndNonSepRulesDisjointChars!471 rules!2621 (t!93242 rules!2621)))))

(assert (= (and d!261258 (not res!383233)) b!838377))

(assert (= (and b!838377 res!383234) b!838378))

(declare-fun m!1071415 () Bool)

(assert (=> b!838377 m!1071415))

(declare-fun m!1071417 () Bool)

(assert (=> b!838378 m!1071417))

(assert (=> b!838286 d!261258))

(declare-fun d!261260 () Bool)

(declare-fun res!383239 () Bool)

(declare-fun e!551158 () Bool)

(assert (=> d!261260 (=> res!383239 e!551158)))

(assert (=> d!261260 (= res!383239 (is-Nil!8935 l!5107))))

(assert (=> d!261260 (= (forall!2086 l!5107 lambda!24881) e!551158)))

(declare-fun b!838383 () Bool)

(declare-fun e!551159 () Bool)

(assert (=> b!838383 (= e!551158 e!551159)))

(declare-fun res!383240 () Bool)

(assert (=> b!838383 (=> (not res!383240) (not e!551159))))

(declare-fun dynLambda!4123 (Int Token!3008) Bool)

(assert (=> b!838383 (= res!383240 (dynLambda!4123 lambda!24881 (h!14336 l!5107)))))

(declare-fun b!838384 () Bool)

(assert (=> b!838384 (= e!551159 (forall!2086 (t!93243 l!5107) lambda!24881))))

(assert (= (and d!261260 (not res!383239)) b!838383))

(assert (= (and b!838383 res!383240) b!838384))

(declare-fun b_lambda!27557 () Bool)

(assert (=> (not b_lambda!27557) (not b!838383)))

(declare-fun m!1071419 () Bool)

(assert (=> b!838383 m!1071419))

(declare-fun m!1071421 () Bool)

(assert (=> b!838384 m!1071421))

(assert (=> b!838285 d!261260))

(declare-fun bs!229758 () Bool)

(declare-fun d!261262 () Bool)

(assert (= bs!229758 (and d!261262 b!838285)))

(declare-fun lambda!24887 () Int)

(assert (=> bs!229758 (not (= lambda!24887 lambda!24881))))

(declare-fun b!838464 () Bool)

(declare-fun e!551220 () Bool)

(assert (=> b!838464 (= e!551220 true)))

(declare-fun b!838463 () Bool)

(declare-fun e!551219 () Bool)

(assert (=> b!838463 (= e!551219 e!551220)))

(declare-fun b!838462 () Bool)

(declare-fun e!551218 () Bool)

(assert (=> b!838462 (= e!551218 e!551219)))

(assert (=> d!261262 e!551218))

(assert (= b!838463 b!838464))

(assert (= b!838462 b!838463))

(assert (= (and d!261262 (is-Cons!8934 rules!2621)) b!838462))

(declare-fun order!5683 () Int)

(declare-fun order!5681 () Int)

(declare-fun dynLambda!4124 (Int Int) Int)

(declare-fun dynLambda!4125 (Int Int) Int)

(assert (=> b!838464 (< (dynLambda!4124 order!5681 (toValue!2688 (transformation!1671 (h!14335 rules!2621)))) (dynLambda!4125 order!5683 lambda!24887))))

(declare-fun order!5685 () Int)

(declare-fun dynLambda!4126 (Int Int) Int)

(assert (=> b!838464 (< (dynLambda!4126 order!5685 (toChars!2547 (transformation!1671 (h!14335 rules!2621)))) (dynLambda!4125 order!5683 lambda!24887))))

(assert (=> d!261262 true))

(declare-fun lt!318040 () Bool)

(assert (=> d!261262 (= lt!318040 (forall!2086 l!5107 lambda!24887))))

(declare-fun e!551211 () Bool)

(assert (=> d!261262 (= lt!318040 e!551211)))

(declare-fun res!383287 () Bool)

(assert (=> d!261262 (=> res!383287 e!551211)))

(assert (=> d!261262 (= res!383287 (not (is-Cons!8935 l!5107)))))

(assert (=> d!261262 (not (isEmpty!5276 rules!2621))))

(assert (=> d!261262 (= (rulesProduceEachTokenIndividuallyList!361 thiss!20117 rules!2621 l!5107) lt!318040)))

(declare-fun b!838452 () Bool)

(declare-fun e!551210 () Bool)

(assert (=> b!838452 (= e!551211 e!551210)))

(declare-fun res!383286 () Bool)

(assert (=> b!838452 (=> (not res!383286) (not e!551210))))

(assert (=> b!838452 (= res!383286 (rulesProduceIndividualToken!537 thiss!20117 rules!2621 (h!14336 l!5107)))))

(declare-fun b!838453 () Bool)

(assert (=> b!838453 (= e!551210 (rulesProduceEachTokenIndividuallyList!361 thiss!20117 rules!2621 (t!93243 l!5107)))))

(assert (= (and d!261262 (not res!383287)) b!838452))

(assert (= (and b!838452 res!383286) b!838453))

(declare-fun m!1071501 () Bool)

(assert (=> d!261262 m!1071501))

(assert (=> d!261262 m!1071319))

(declare-fun m!1071503 () Bool)

(assert (=> b!838452 m!1071503))

(declare-fun m!1071505 () Bool)

(assert (=> b!838453 m!1071505))

(assert (=> b!838274 d!261262))

(declare-fun bs!229759 () Bool)

(declare-fun d!261296 () Bool)

(assert (= bs!229759 (and d!261296 b!838285)))

(declare-fun lambda!24888 () Int)

(assert (=> bs!229759 (not (= lambda!24888 lambda!24881))))

(declare-fun bs!229760 () Bool)

(assert (= bs!229760 (and d!261296 d!261262)))

(assert (=> bs!229760 (= lambda!24888 lambda!24887)))

(declare-fun b!838471 () Bool)

(declare-fun e!551225 () Bool)

(assert (=> b!838471 (= e!551225 true)))

(declare-fun b!838470 () Bool)

(declare-fun e!551224 () Bool)

(assert (=> b!838470 (= e!551224 e!551225)))

(declare-fun b!838469 () Bool)

(declare-fun e!551223 () Bool)

(assert (=> b!838469 (= e!551223 e!551224)))

(assert (=> d!261296 e!551223))

(assert (= b!838470 b!838471))

(assert (= b!838469 b!838470))

(assert (= (and d!261296 (is-Cons!8934 rules!2621)) b!838469))

(assert (=> b!838471 (< (dynLambda!4124 order!5681 (toValue!2688 (transformation!1671 (h!14335 rules!2621)))) (dynLambda!4125 order!5683 lambda!24888))))

(assert (=> b!838471 (< (dynLambda!4126 order!5685 (toChars!2547 (transformation!1671 (h!14335 rules!2621)))) (dynLambda!4125 order!5683 lambda!24888))))

(assert (=> d!261296 true))

(declare-fun lt!318041 () Bool)

(assert (=> d!261296 (= lt!318041 (forall!2086 lt!318025 lambda!24888))))

(declare-fun e!551222 () Bool)

(assert (=> d!261296 (= lt!318041 e!551222)))

(declare-fun res!383289 () Bool)

(assert (=> d!261296 (=> res!383289 e!551222)))

(assert (=> d!261296 (= res!383289 (not (is-Cons!8935 lt!318025)))))

(assert (=> d!261296 (not (isEmpty!5276 rules!2621))))

(assert (=> d!261296 (= (rulesProduceEachTokenIndividuallyList!361 thiss!20117 rules!2621 lt!318025) lt!318041)))

(declare-fun b!838467 () Bool)

(declare-fun e!551221 () Bool)

(assert (=> b!838467 (= e!551222 e!551221)))

(declare-fun res!383288 () Bool)

(assert (=> b!838467 (=> (not res!383288) (not e!551221))))

(assert (=> b!838467 (= res!383288 (rulesProduceIndividualToken!537 thiss!20117 rules!2621 (h!14336 lt!318025)))))

(declare-fun b!838468 () Bool)

(assert (=> b!838468 (= e!551221 (rulesProduceEachTokenIndividuallyList!361 thiss!20117 rules!2621 (t!93243 lt!318025)))))

(assert (= (and d!261296 (not res!383289)) b!838467))

(assert (= (and b!838467 res!383288) b!838468))

(declare-fun m!1071507 () Bool)

(assert (=> d!261296 m!1071507))

(assert (=> d!261296 m!1071319))

(declare-fun m!1071509 () Bool)

(assert (=> b!838467 m!1071509))

(declare-fun m!1071511 () Bool)

(assert (=> b!838468 m!1071511))

(assert (=> b!838273 d!261296))

(declare-fun e!551245 () Bool)

(declare-fun e!551243 () List!8949)

(declare-fun b!838496 () Bool)

(declare-fun printList!447 (LexerInterface!1473 List!8951) List!8949)

(declare-fun $colon$colon!60 (List!8951 Token!3008) List!8951)

(assert (=> b!838496 (= e!551245 (= (printList!447 thiss!20117 ($colon$colon!60 (withSeparatorTokenList!3 thiss!20117 (t!93243 l!5107) separatorToken!297) separatorToken!297)) e!551243))))

(declare-fun c!136931 () Bool)

(declare-fun lt!318064 () List!8951)

(assert (=> b!838496 (= c!136931 (is-Cons!8935 lt!318064))))

(assert (=> b!838496 (= lt!318064 ($colon$colon!60 (withSeparatorTokenList!3 thiss!20117 (t!93243 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!838497 () Bool)

(declare-fun e!551247 () List!8949)

(assert (=> b!838497 (= e!551247 Nil!8933)))

(declare-fun b!838498 () Bool)

(declare-fun e!551244 () Bool)

(assert (=> b!838498 (= e!551244 e!551245)))

(declare-fun res!383305 () Bool)

(assert (=> b!838498 (=> res!383305 e!551245)))

(assert (=> b!838498 (= res!383305 (not (is-Cons!8935 l!5107)))))

(declare-fun e!551246 () List!8951)

(declare-fun b!838499 () Bool)

(assert (=> b!838499 (= e!551246 ($colon$colon!60 ($colon$colon!60 (withSeparatorTokenList!3 thiss!20117 (t!93243 l!5107) separatorToken!297) separatorToken!297) (h!14336 l!5107)))))

(declare-fun lt!318066 () List!8949)

(declare-fun charsOf!960 (Token!3008) BalanceConc!5942)

(assert (=> b!838499 (= lt!318066 (list!3531 (charsOf!960 (h!14336 l!5107))))))

(declare-fun lt!318065 () List!8949)

(assert (=> b!838499 (= lt!318065 (list!3531 (charsOf!960 separatorToken!297)))))

(declare-fun lt!318060 () List!8949)

(assert (=> b!838499 (= lt!318060 (printList!447 thiss!20117 (withSeparatorTokenList!3 thiss!20117 (t!93243 l!5107) separatorToken!297)))))

(declare-fun lt!318061 () Unit!13404)

(declare-fun lemmaConcatAssociativity!722 (List!8949 List!8949 List!8949) Unit!13404)

(assert (=> b!838499 (= lt!318061 (lemmaConcatAssociativity!722 lt!318066 lt!318065 lt!318060))))

(declare-fun ++!2321 (List!8949 List!8949) List!8949)

(assert (=> b!838499 (= (++!2321 (++!2321 lt!318066 lt!318065) lt!318060) (++!2321 lt!318066 (++!2321 lt!318065 lt!318060)))))

(declare-fun lt!318062 () Unit!13404)

(assert (=> b!838499 (= lt!318062 lt!318061)))

(declare-fun b!838500 () Bool)

(assert (=> b!838500 (= e!551243 Nil!8933)))

(declare-fun b!838501 () Bool)

(declare-fun e!551242 () Bool)

(assert (=> b!838501 (= e!551242 (= (printList!447 thiss!20117 ($colon$colon!60 ($colon$colon!60 (withSeparatorTokenList!3 thiss!20117 (t!93243 l!5107) separatorToken!297) separatorToken!297) (h!14336 l!5107))) e!551247))))

(declare-fun c!136932 () Bool)

(declare-fun lt!318063 () List!8951)

(assert (=> b!838501 (= c!136932 (is-Cons!8935 lt!318063))))

(assert (=> b!838501 (= lt!318063 ($colon$colon!60 ($colon$colon!60 (withSeparatorTokenList!3 thiss!20117 (t!93243 l!5107) separatorToken!297) separatorToken!297) (h!14336 l!5107)))))

(declare-fun lt!318067 () List!8951)

(declare-fun d!261298 () Bool)

(declare-fun printWithSeparatorTokenList!5 (LexerInterface!1473 List!8951 Token!3008) List!8949)

(assert (=> d!261298 (= (printList!447 thiss!20117 lt!318067) (printWithSeparatorTokenList!5 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!261298 (= lt!318067 e!551246)))

(declare-fun c!136933 () Bool)

(assert (=> d!261298 (= c!136933 (is-Cons!8935 l!5107))))

(assert (=> d!261298 e!551244))

(declare-fun res!383304 () Bool)

(assert (=> d!261298 (=> (not res!383304) (not e!551244))))

(assert (=> d!261298 (= res!383304 (isSeparator!1671 (rule!3094 separatorToken!297)))))

(assert (=> d!261298 (= (withSeparatorTokenList!3 thiss!20117 l!5107 separatorToken!297) lt!318067)))

(declare-fun b!838502 () Bool)

(declare-fun res!383302 () Bool)

(assert (=> b!838502 (=> (not res!383302) (not e!551244))))

(assert (=> b!838502 (= res!383302 e!551242)))

(declare-fun res!383303 () Bool)

(assert (=> b!838502 (=> res!383303 e!551242)))

(assert (=> b!838502 (= res!383303 (not (is-Cons!8935 l!5107)))))

(declare-fun b!838503 () Bool)

(assert (=> b!838503 (= e!551247 (++!2321 (list!3531 (charsOf!960 (h!14336 lt!318063))) (printList!447 thiss!20117 (t!93243 lt!318063))))))

(declare-fun b!838504 () Bool)

(assert (=> b!838504 (= e!551243 (++!2321 (list!3531 (charsOf!960 (h!14336 lt!318064))) (printList!447 thiss!20117 (t!93243 lt!318064))))))

(declare-fun b!838505 () Bool)

(assert (=> b!838505 (= e!551246 Nil!8935)))

(assert (= (and d!261298 res!383304) b!838502))

(assert (= (and b!838502 (not res!383303)) b!838501))

(assert (= (and b!838501 c!136932) b!838503))

(assert (= (and b!838501 (not c!136932)) b!838497))

(assert (= (and b!838502 res!383302) b!838498))

(assert (= (and b!838498 (not res!383305)) b!838496))

(assert (= (and b!838496 c!136931) b!838504))

(assert (= (and b!838496 (not c!136931)) b!838500))

(assert (= (and d!261298 c!136933) b!838499))

(assert (= (and d!261298 (not c!136933)) b!838505))

(declare-fun m!1071513 () Bool)

(assert (=> b!838503 m!1071513))

(assert (=> b!838503 m!1071513))

(declare-fun m!1071515 () Bool)

(assert (=> b!838503 m!1071515))

(declare-fun m!1071517 () Bool)

(assert (=> b!838503 m!1071517))

(assert (=> b!838503 m!1071515))

(assert (=> b!838503 m!1071517))

(declare-fun m!1071519 () Bool)

(assert (=> b!838503 m!1071519))

(declare-fun m!1071521 () Bool)

(assert (=> b!838496 m!1071521))

(assert (=> b!838496 m!1071521))

(declare-fun m!1071523 () Bool)

(assert (=> b!838496 m!1071523))

(assert (=> b!838496 m!1071523))

(declare-fun m!1071525 () Bool)

(assert (=> b!838496 m!1071525))

(assert (=> b!838501 m!1071521))

(assert (=> b!838501 m!1071521))

(assert (=> b!838501 m!1071523))

(assert (=> b!838501 m!1071523))

(declare-fun m!1071527 () Bool)

(assert (=> b!838501 m!1071527))

(assert (=> b!838501 m!1071527))

(declare-fun m!1071529 () Bool)

(assert (=> b!838501 m!1071529))

(declare-fun m!1071531 () Bool)

(assert (=> b!838499 m!1071531))

(declare-fun m!1071533 () Bool)

(assert (=> b!838499 m!1071533))

(assert (=> b!838499 m!1071531))

(declare-fun m!1071535 () Bool)

(assert (=> b!838499 m!1071535))

(declare-fun m!1071537 () Bool)

(assert (=> b!838499 m!1071537))

(declare-fun m!1071539 () Bool)

(assert (=> b!838499 m!1071539))

(assert (=> b!838499 m!1071521))

(assert (=> b!838499 m!1071523))

(declare-fun m!1071541 () Bool)

(assert (=> b!838499 m!1071541))

(assert (=> b!838499 m!1071541))

(declare-fun m!1071543 () Bool)

(assert (=> b!838499 m!1071543))

(declare-fun m!1071545 () Bool)

(assert (=> b!838499 m!1071545))

(assert (=> b!838499 m!1071535))

(assert (=> b!838499 m!1071521))

(declare-fun m!1071547 () Bool)

(assert (=> b!838499 m!1071547))

(assert (=> b!838499 m!1071521))

(assert (=> b!838499 m!1071545))

(declare-fun m!1071549 () Bool)

(assert (=> b!838499 m!1071549))

(assert (=> b!838499 m!1071523))

(assert (=> b!838499 m!1071527))

(declare-fun m!1071551 () Bool)

(assert (=> b!838504 m!1071551))

(assert (=> b!838504 m!1071551))

(declare-fun m!1071553 () Bool)

(assert (=> b!838504 m!1071553))

(declare-fun m!1071555 () Bool)

(assert (=> b!838504 m!1071555))

(assert (=> b!838504 m!1071553))

(assert (=> b!838504 m!1071555))

(declare-fun m!1071557 () Bool)

(assert (=> b!838504 m!1071557))

(declare-fun m!1071559 () Bool)

(assert (=> d!261298 m!1071559))

(declare-fun m!1071561 () Bool)

(assert (=> d!261298 m!1071561))

(assert (=> b!838273 d!261298))

(declare-fun d!261300 () Bool)

(assert (=> d!261300 (rulesProduceEachTokenIndividuallyList!361 thiss!20117 rules!2621 (withSeparatorTokenList!3 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!318070 () Unit!13404)

(declare-fun choose!4941 (LexerInterface!1473 List!8950 List!8951 Token!3008) Unit!13404)

(assert (=> d!261300 (= lt!318070 (choose!4941 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!261300 (not (isEmpty!5276 rules!2621))))

(assert (=> d!261300 (= (withSeparatorTokenListPreservesRulesProduceTokens!3 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!318070)))

(declare-fun bs!229761 () Bool)

(assert (= bs!229761 d!261300))

(assert (=> bs!229761 m!1071331))

(assert (=> bs!229761 m!1071331))

(declare-fun m!1071563 () Bool)

(assert (=> bs!229761 m!1071563))

(declare-fun m!1071565 () Bool)

(assert (=> bs!229761 m!1071565))

(assert (=> bs!229761 m!1071319))

(assert (=> b!838273 d!261300))

(declare-fun d!261302 () Bool)

(assert (=> d!261302 (= (inv!11406 (tag!1933 (h!14335 rules!2621))) (= (mod (str.len (value!54323 (tag!1933 (h!14335 rules!2621)))) 2) 0))))

(assert (=> b!838284 d!261302))

(declare-fun d!261304 () Bool)

(declare-fun res!383306 () Bool)

(declare-fun e!551248 () Bool)

(assert (=> d!261304 (=> (not res!383306) (not e!551248))))

(assert (=> d!261304 (= res!383306 (semiInverseModEq!643 (toChars!2547 (transformation!1671 (h!14335 rules!2621))) (toValue!2688 (transformation!1671 (h!14335 rules!2621)))))))

(assert (=> d!261304 (= (inv!11410 (transformation!1671 (h!14335 rules!2621))) e!551248)))

(declare-fun b!838506 () Bool)

(assert (=> b!838506 (= e!551248 (equivClasses!610 (toChars!2547 (transformation!1671 (h!14335 rules!2621))) (toValue!2688 (transformation!1671 (h!14335 rules!2621)))))))

(assert (= (and d!261304 res!383306) b!838506))

(declare-fun m!1071567 () Bool)

(assert (=> d!261304 m!1071567))

(declare-fun m!1071569 () Bool)

(assert (=> b!838506 m!1071569))

(assert (=> b!838284 d!261304))

(declare-fun b!838507 () Bool)

(declare-fun e!551250 () Bool)

(assert (=> b!838507 (= e!551250 (inv!16 (value!54324 separatorToken!297)))))

(declare-fun b!838508 () Bool)

(declare-fun res!383307 () Bool)

(declare-fun e!551249 () Bool)

(assert (=> b!838508 (=> res!383307 e!551249)))

(assert (=> b!838508 (= res!383307 (not (is-IntegerValue!5213 (value!54324 separatorToken!297))))))

(declare-fun e!551251 () Bool)

(assert (=> b!838508 (= e!551251 e!551249)))

(declare-fun b!838510 () Bool)

(assert (=> b!838510 (= e!551249 (inv!15 (value!54324 separatorToken!297)))))

(declare-fun b!838511 () Bool)

(assert (=> b!838511 (= e!551250 e!551251)))

(declare-fun c!136934 () Bool)

(assert (=> b!838511 (= c!136934 (is-IntegerValue!5212 (value!54324 separatorToken!297)))))

(declare-fun d!261306 () Bool)

(declare-fun c!136935 () Bool)

(assert (=> d!261306 (= c!136935 (is-IntegerValue!5211 (value!54324 separatorToken!297)))))

(assert (=> d!261306 (= (inv!21 (value!54324 separatorToken!297)) e!551250)))

(declare-fun b!838509 () Bool)

(assert (=> b!838509 (= e!551251 (inv!17 (value!54324 separatorToken!297)))))

(assert (= (and d!261306 c!136935) b!838507))

(assert (= (and d!261306 (not c!136935)) b!838511))

(assert (= (and b!838511 c!136934) b!838509))

(assert (= (and b!838511 (not c!136934)) b!838508))

(assert (= (and b!838508 (not res!383307)) b!838510))

(declare-fun m!1071571 () Bool)

(assert (=> b!838507 m!1071571))

(declare-fun m!1071573 () Bool)

(assert (=> b!838510 m!1071573))

(declare-fun m!1071575 () Bool)

(assert (=> b!838509 m!1071575))

(assert (=> b!838283 d!261306))

(declare-fun d!261308 () Bool)

(declare-fun res!383310 () Bool)

(declare-fun e!551254 () Bool)

(assert (=> d!261308 (=> (not res!383310) (not e!551254))))

(declare-fun rulesValid!574 (LexerInterface!1473 List!8950) Bool)

(assert (=> d!261308 (= res!383310 (rulesValid!574 thiss!20117 rules!2621))))

(assert (=> d!261308 (= (rulesInvariant!1349 thiss!20117 rules!2621) e!551254)))

(declare-fun b!838514 () Bool)

(declare-datatypes ((List!8956 0))(
  ( (Nil!8940) (Cons!8940 (h!14341 String!10585) (t!93286 List!8956)) )
))
(declare-fun noDuplicateTag!574 (LexerInterface!1473 List!8950 List!8956) Bool)

(assert (=> b!838514 (= e!551254 (noDuplicateTag!574 thiss!20117 rules!2621 Nil!8940))))

(assert (= (and d!261308 res!383310) b!838514))

(declare-fun m!1071577 () Bool)

(assert (=> d!261308 m!1071577))

(declare-fun m!1071579 () Bool)

(assert (=> b!838514 m!1071579))

(assert (=> b!838272 d!261308))

(declare-fun d!261310 () Bool)

(declare-fun lt!318075 () Bool)

(declare-fun e!551260 () Bool)

(assert (=> d!261310 (= lt!318075 e!551260)))

(declare-fun res!383317 () Bool)

(assert (=> d!261310 (=> (not res!383317) (not e!551260))))

(declare-datatypes ((IArray!5937 0))(
  ( (IArray!5938 (innerList!3026 List!8951)) )
))
(declare-datatypes ((Conc!2966 0))(
  ( (Node!2966 (left!6643 Conc!2966) (right!6973 Conc!2966) (csize!6162 Int) (cheight!3177 Int)) (Leaf!4390 (xs!5655 IArray!5937) (csize!6163 Int)) (Empty!2966) )
))
(declare-datatypes ((BalanceConc!5946 0))(
  ( (BalanceConc!5947 (c!136945 Conc!2966)) )
))
(declare-fun list!3532 (BalanceConc!5946) List!8951)

(declare-datatypes ((tuple2!10306 0))(
  ( (tuple2!10307 (_1!5979 BalanceConc!5946) (_2!5979 BalanceConc!5942)) )
))
(declare-fun lex!591 (LexerInterface!1473 List!8950 BalanceConc!5942) tuple2!10306)

(declare-fun print!528 (LexerInterface!1473 BalanceConc!5946) BalanceConc!5942)

(declare-fun singletonSeq!490 (Token!3008) BalanceConc!5946)

(assert (=> d!261310 (= res!383317 (= (list!3532 (_1!5979 (lex!591 thiss!20117 rules!2621 (print!528 thiss!20117 (singletonSeq!490 separatorToken!297))))) (list!3532 (singletonSeq!490 separatorToken!297))))))

(declare-fun e!551259 () Bool)

(assert (=> d!261310 (= lt!318075 e!551259)))

(declare-fun res!383319 () Bool)

(assert (=> d!261310 (=> (not res!383319) (not e!551259))))

(declare-fun lt!318076 () tuple2!10306)

(declare-fun size!7501 (BalanceConc!5946) Int)

(assert (=> d!261310 (= res!383319 (= (size!7501 (_1!5979 lt!318076)) 1))))

(assert (=> d!261310 (= lt!318076 (lex!591 thiss!20117 rules!2621 (print!528 thiss!20117 (singletonSeq!490 separatorToken!297))))))

(assert (=> d!261310 (not (isEmpty!5276 rules!2621))))

(assert (=> d!261310 (= (rulesProduceIndividualToken!537 thiss!20117 rules!2621 separatorToken!297) lt!318075)))

(declare-fun b!838521 () Bool)

(declare-fun res!383318 () Bool)

(assert (=> b!838521 (=> (not res!383318) (not e!551259))))

(declare-fun apply!1800 (BalanceConc!5946 Int) Token!3008)

(assert (=> b!838521 (= res!383318 (= (apply!1800 (_1!5979 lt!318076) 0) separatorToken!297))))

(declare-fun b!838522 () Bool)

(declare-fun isEmpty!5279 (BalanceConc!5942) Bool)

(assert (=> b!838522 (= e!551259 (isEmpty!5279 (_2!5979 lt!318076)))))

(declare-fun b!838523 () Bool)

(assert (=> b!838523 (= e!551260 (isEmpty!5279 (_2!5979 (lex!591 thiss!20117 rules!2621 (print!528 thiss!20117 (singletonSeq!490 separatorToken!297))))))))

(assert (= (and d!261310 res!383319) b!838521))

(assert (= (and b!838521 res!383318) b!838522))

(assert (= (and d!261310 res!383317) b!838523))

(assert (=> d!261310 m!1071319))

(declare-fun m!1071581 () Bool)

(assert (=> d!261310 m!1071581))

(declare-fun m!1071583 () Bool)

(assert (=> d!261310 m!1071583))

(declare-fun m!1071585 () Bool)

(assert (=> d!261310 m!1071585))

(assert (=> d!261310 m!1071585))

(declare-fun m!1071587 () Bool)

(assert (=> d!261310 m!1071587))

(assert (=> d!261310 m!1071583))

(declare-fun m!1071589 () Bool)

(assert (=> d!261310 m!1071589))

(assert (=> d!261310 m!1071583))

(declare-fun m!1071591 () Bool)

(assert (=> d!261310 m!1071591))

(declare-fun m!1071593 () Bool)

(assert (=> b!838521 m!1071593))

(declare-fun m!1071595 () Bool)

(assert (=> b!838522 m!1071595))

(assert (=> b!838523 m!1071583))

(assert (=> b!838523 m!1071583))

(assert (=> b!838523 m!1071585))

(assert (=> b!838523 m!1071585))

(assert (=> b!838523 m!1071587))

(declare-fun m!1071597 () Bool)

(assert (=> b!838523 m!1071597))

(assert (=> b!838281 d!261310))

(declare-fun d!261312 () Bool)

(declare-fun res!383320 () Bool)

(declare-fun e!551261 () Bool)

(assert (=> d!261312 (=> (not res!383320) (not e!551261))))

(assert (=> d!261312 (= res!383320 (not (isEmpty!5278 (originalCharacters!2227 separatorToken!297))))))

(assert (=> d!261312 (= (inv!11409 separatorToken!297) e!551261)))

(declare-fun b!838524 () Bool)

(declare-fun res!383321 () Bool)

(assert (=> b!838524 (=> (not res!383321) (not e!551261))))

(assert (=> b!838524 (= res!383321 (= (originalCharacters!2227 separatorToken!297) (list!3531 (dynLambda!4122 (toChars!2547 (transformation!1671 (rule!3094 separatorToken!297))) (value!54324 separatorToken!297)))))))

(declare-fun b!838525 () Bool)

(assert (=> b!838525 (= e!551261 (= (size!7498 separatorToken!297) (size!7500 (originalCharacters!2227 separatorToken!297))))))

(assert (= (and d!261312 res!383320) b!838524))

(assert (= (and b!838524 res!383321) b!838525))

(declare-fun b_lambda!27565 () Bool)

(assert (=> (not b_lambda!27565) (not b!838524)))

(declare-fun tb!57831 () Bool)

(declare-fun t!93273 () Bool)

(assert (=> (and b!838288 (= (toChars!2547 (transformation!1671 (rule!3094 (h!14336 l!5107)))) (toChars!2547 (transformation!1671 (rule!3094 separatorToken!297)))) t!93273) tb!57831))

(declare-fun b!838526 () Bool)

(declare-fun e!551262 () Bool)

(declare-fun tp!263324 () Bool)

(assert (=> b!838526 (= e!551262 (and (inv!11413 (c!136908 (dynLambda!4122 (toChars!2547 (transformation!1671 (rule!3094 separatorToken!297))) (value!54324 separatorToken!297)))) tp!263324))))

(declare-fun result!67016 () Bool)

(assert (=> tb!57831 (= result!67016 (and (inv!11414 (dynLambda!4122 (toChars!2547 (transformation!1671 (rule!3094 separatorToken!297))) (value!54324 separatorToken!297))) e!551262))))

(assert (= tb!57831 b!838526))

(declare-fun m!1071599 () Bool)

(assert (=> b!838526 m!1071599))

(declare-fun m!1071601 () Bool)

(assert (=> tb!57831 m!1071601))

(assert (=> b!838524 t!93273))

(declare-fun b_and!72327 () Bool)

(assert (= b_and!72309 (and (=> t!93273 result!67016) b_and!72327)))

(declare-fun t!93275 () Bool)

(declare-fun tb!57833 () Bool)

(assert (=> (and b!838276 (= (toChars!2547 (transformation!1671 (h!14335 rules!2621))) (toChars!2547 (transformation!1671 (rule!3094 separatorToken!297)))) t!93275) tb!57833))

(declare-fun result!67018 () Bool)

(assert (= result!67018 result!67016))

(assert (=> b!838524 t!93275))

(declare-fun b_and!72329 () Bool)

(assert (= b_and!72311 (and (=> t!93275 result!67018) b_and!72329)))

(declare-fun t!93277 () Bool)

(declare-fun tb!57835 () Bool)

(assert (=> (and b!838278 (= (toChars!2547 (transformation!1671 (rule!3094 separatorToken!297))) (toChars!2547 (transformation!1671 (rule!3094 separatorToken!297)))) t!93277) tb!57835))

(declare-fun result!67020 () Bool)

(assert (= result!67020 result!67016))

(assert (=> b!838524 t!93277))

(declare-fun b_and!72331 () Bool)

(assert (= b_and!72313 (and (=> t!93277 result!67020) b_and!72331)))

(declare-fun m!1071603 () Bool)

(assert (=> d!261312 m!1071603))

(declare-fun m!1071605 () Bool)

(assert (=> b!838524 m!1071605))

(assert (=> b!838524 m!1071605))

(declare-fun m!1071607 () Bool)

(assert (=> b!838524 m!1071607))

(declare-fun m!1071609 () Bool)

(assert (=> b!838525 m!1071609))

(assert (=> start!74376 d!261312))

(declare-fun d!261314 () Bool)

(assert (=> d!261314 (= (inv!11406 (tag!1933 (rule!3094 (h!14336 l!5107)))) (= (mod (str.len (value!54323 (tag!1933 (rule!3094 (h!14336 l!5107))))) 2) 0))))

(assert (=> b!838279 d!261314))

(declare-fun d!261316 () Bool)

(declare-fun res!383322 () Bool)

(declare-fun e!551263 () Bool)

(assert (=> d!261316 (=> (not res!383322) (not e!551263))))

(assert (=> d!261316 (= res!383322 (semiInverseModEq!643 (toChars!2547 (transformation!1671 (rule!3094 (h!14336 l!5107)))) (toValue!2688 (transformation!1671 (rule!3094 (h!14336 l!5107))))))))

(assert (=> d!261316 (= (inv!11410 (transformation!1671 (rule!3094 (h!14336 l!5107)))) e!551263)))

(declare-fun b!838527 () Bool)

(assert (=> b!838527 (= e!551263 (equivClasses!610 (toChars!2547 (transformation!1671 (rule!3094 (h!14336 l!5107)))) (toValue!2688 (transformation!1671 (rule!3094 (h!14336 l!5107))))))))

(assert (= (and d!261316 res!383322) b!838527))

(declare-fun m!1071611 () Bool)

(assert (=> d!261316 m!1071611))

(declare-fun m!1071613 () Bool)

(assert (=> b!838527 m!1071613))

(assert (=> b!838279 d!261316))

(declare-fun b!838532 () Bool)

(declare-fun e!551266 () Bool)

(declare-fun tp_is_empty!3919 () Bool)

(declare-fun tp!263327 () Bool)

(assert (=> b!838532 (= e!551266 (and tp_is_empty!3919 tp!263327))))

(assert (=> b!838289 (= tp!263270 e!551266)))

(assert (= (and b!838289 (is-Cons!8933 (originalCharacters!2227 (h!14336 l!5107)))) b!838532))

(declare-fun e!551269 () Bool)

(assert (=> b!838284 (= tp!263271 e!551269)))

(declare-fun b!838545 () Bool)

(declare-fun tp!263338 () Bool)

(assert (=> b!838545 (= e!551269 tp!263338)))

(declare-fun b!838543 () Bool)

(assert (=> b!838543 (= e!551269 tp_is_empty!3919)))

(declare-fun b!838544 () Bool)

(declare-fun tp!263340 () Bool)

(declare-fun tp!263339 () Bool)

(assert (=> b!838544 (= e!551269 (and tp!263340 tp!263339))))

(declare-fun b!838546 () Bool)

(declare-fun tp!263341 () Bool)

(declare-fun tp!263342 () Bool)

(assert (=> b!838546 (= e!551269 (and tp!263341 tp!263342))))

(assert (= (and b!838284 (is-ElementMatch!2104 (regex!1671 (h!14335 rules!2621)))) b!838543))

(assert (= (and b!838284 (is-Concat!3842 (regex!1671 (h!14335 rules!2621)))) b!838544))

(assert (= (and b!838284 (is-Star!2104 (regex!1671 (h!14335 rules!2621)))) b!838545))

(assert (= (and b!838284 (is-Union!2104 (regex!1671 (h!14335 rules!2621)))) b!838546))

(declare-fun b!838547 () Bool)

(declare-fun e!551270 () Bool)

(declare-fun tp!263343 () Bool)

(assert (=> b!838547 (= e!551270 (and tp_is_empty!3919 tp!263343))))

(assert (=> b!838283 (= tp!263266 e!551270)))

(assert (= (and b!838283 (is-Cons!8933 (originalCharacters!2227 separatorToken!297))) b!838547))

(declare-fun e!551271 () Bool)

(assert (=> b!838287 (= tp!263265 e!551271)))

(declare-fun b!838550 () Bool)

(declare-fun tp!263344 () Bool)

(assert (=> b!838550 (= e!551271 tp!263344)))

(declare-fun b!838548 () Bool)

(assert (=> b!838548 (= e!551271 tp_is_empty!3919)))

(declare-fun b!838549 () Bool)

(declare-fun tp!263346 () Bool)

(declare-fun tp!263345 () Bool)

(assert (=> b!838549 (= e!551271 (and tp!263346 tp!263345))))

(declare-fun b!838551 () Bool)

(declare-fun tp!263347 () Bool)

(declare-fun tp!263348 () Bool)

(assert (=> b!838551 (= e!551271 (and tp!263347 tp!263348))))

(assert (= (and b!838287 (is-ElementMatch!2104 (regex!1671 (rule!3094 separatorToken!297)))) b!838548))

(assert (= (and b!838287 (is-Concat!3842 (regex!1671 (rule!3094 separatorToken!297)))) b!838549))

(assert (= (and b!838287 (is-Star!2104 (regex!1671 (rule!3094 separatorToken!297)))) b!838550))

(assert (= (and b!838287 (is-Union!2104 (regex!1671 (rule!3094 separatorToken!297)))) b!838551))

(declare-fun b!838562 () Bool)

(declare-fun b_free!24829 () Bool)

(declare-fun b_next!24893 () Bool)

(assert (=> b!838562 (= b_free!24829 (not b_next!24893))))

(declare-fun tp!263360 () Bool)

(declare-fun b_and!72333 () Bool)

(assert (=> b!838562 (= tp!263360 b_and!72333)))

(declare-fun b_free!24831 () Bool)

(declare-fun b_next!24895 () Bool)

(assert (=> b!838562 (= b_free!24831 (not b_next!24895))))

(declare-fun t!93279 () Bool)

(declare-fun tb!57837 () Bool)

(assert (=> (and b!838562 (= (toChars!2547 (transformation!1671 (h!14335 (t!93242 rules!2621)))) (toChars!2547 (transformation!1671 (rule!3094 (h!14336 l!5107))))) t!93279) tb!57837))

(declare-fun result!67028 () Bool)

(assert (= result!67028 result!66994))

(assert (=> b!838366 t!93279))

(declare-fun tb!57839 () Bool)

(declare-fun t!93281 () Bool)

(assert (=> (and b!838562 (= (toChars!2547 (transformation!1671 (h!14335 (t!93242 rules!2621)))) (toChars!2547 (transformation!1671 (rule!3094 separatorToken!297)))) t!93281) tb!57839))

(declare-fun result!67030 () Bool)

(assert (= result!67030 result!67016))

(assert (=> b!838524 t!93281))

(declare-fun b_and!72335 () Bool)

(declare-fun tp!263358 () Bool)

(assert (=> b!838562 (= tp!263358 (and (=> t!93279 result!67028) (=> t!93281 result!67030) b_and!72335))))

(declare-fun e!551282 () Bool)

(assert (=> b!838562 (= e!551282 (and tp!263360 tp!263358))))

(declare-fun b!838561 () Bool)

(declare-fun e!551280 () Bool)

(declare-fun tp!263357 () Bool)

(assert (=> b!838561 (= e!551280 (and tp!263357 (inv!11406 (tag!1933 (h!14335 (t!93242 rules!2621)))) (inv!11410 (transformation!1671 (h!14335 (t!93242 rules!2621)))) e!551282))))

(declare-fun b!838560 () Bool)

(declare-fun e!551283 () Bool)

(declare-fun tp!263359 () Bool)

(assert (=> b!838560 (= e!551283 (and e!551280 tp!263359))))

(assert (=> b!838282 (= tp!263277 e!551283)))

(assert (= b!838561 b!838562))

(assert (= b!838560 b!838561))

(assert (= (and b!838282 (is-Cons!8934 (t!93242 rules!2621))) b!838560))

(declare-fun m!1071615 () Bool)

(assert (=> b!838561 m!1071615))

(declare-fun m!1071617 () Bool)

(assert (=> b!838561 m!1071617))

(declare-fun b!838576 () Bool)

(declare-fun b_free!24833 () Bool)

(declare-fun b_next!24897 () Bool)

(assert (=> b!838576 (= b_free!24833 (not b_next!24897))))

(declare-fun tp!263373 () Bool)

(declare-fun b_and!72337 () Bool)

(assert (=> b!838576 (= tp!263373 b_and!72337)))

(declare-fun b_free!24835 () Bool)

(declare-fun b_next!24899 () Bool)

(assert (=> b!838576 (= b_free!24835 (not b_next!24899))))

(declare-fun t!93283 () Bool)

(declare-fun tb!57841 () Bool)

(assert (=> (and b!838576 (= (toChars!2547 (transformation!1671 (rule!3094 (h!14336 (t!93243 l!5107))))) (toChars!2547 (transformation!1671 (rule!3094 (h!14336 l!5107))))) t!93283) tb!57841))

(declare-fun result!67034 () Bool)

(assert (= result!67034 result!66994))

(assert (=> b!838366 t!93283))

(declare-fun t!93285 () Bool)

(declare-fun tb!57843 () Bool)

(assert (=> (and b!838576 (= (toChars!2547 (transformation!1671 (rule!3094 (h!14336 (t!93243 l!5107))))) (toChars!2547 (transformation!1671 (rule!3094 separatorToken!297)))) t!93285) tb!57843))

(declare-fun result!67036 () Bool)

(assert (= result!67036 result!67016))

(assert (=> b!838524 t!93285))

(declare-fun tp!263371 () Bool)

(declare-fun b_and!72339 () Bool)

(assert (=> b!838576 (= tp!263371 (and (=> t!93283 result!67034) (=> t!93285 result!67036) b_and!72339))))

(declare-fun e!551300 () Bool)

(assert (=> b!838576 (= e!551300 (and tp!263373 tp!263371))))

(declare-fun tp!263375 () Bool)

(declare-fun e!551296 () Bool)

(declare-fun b!838575 () Bool)

(assert (=> b!838575 (= e!551296 (and tp!263375 (inv!11406 (tag!1933 (rule!3094 (h!14336 (t!93243 l!5107))))) (inv!11410 (transformation!1671 (rule!3094 (h!14336 (t!93243 l!5107))))) e!551300))))

(declare-fun e!551298 () Bool)

(assert (=> b!838275 (= tp!263267 e!551298)))

(declare-fun tp!263372 () Bool)

(declare-fun e!551301 () Bool)

(declare-fun b!838574 () Bool)

(assert (=> b!838574 (= e!551301 (and (inv!21 (value!54324 (h!14336 (t!93243 l!5107)))) e!551296 tp!263372))))

(declare-fun b!838573 () Bool)

(declare-fun tp!263374 () Bool)

(assert (=> b!838573 (= e!551298 (and (inv!11409 (h!14336 (t!93243 l!5107))) e!551301 tp!263374))))

(assert (= b!838575 b!838576))

(assert (= b!838574 b!838575))

(assert (= b!838573 b!838574))

(assert (= (and b!838275 (is-Cons!8935 (t!93243 l!5107))) b!838573))

(declare-fun m!1071619 () Bool)

(assert (=> b!838575 m!1071619))

(declare-fun m!1071621 () Bool)

(assert (=> b!838575 m!1071621))

(declare-fun m!1071623 () Bool)

(assert (=> b!838574 m!1071623))

(declare-fun m!1071625 () Bool)

(assert (=> b!838573 m!1071625))

(declare-fun e!551302 () Bool)

(assert (=> b!838279 (= tp!263275 e!551302)))

(declare-fun b!838579 () Bool)

(declare-fun tp!263376 () Bool)

(assert (=> b!838579 (= e!551302 tp!263376)))

(declare-fun b!838577 () Bool)

(assert (=> b!838577 (= e!551302 tp_is_empty!3919)))

(declare-fun b!838578 () Bool)

(declare-fun tp!263378 () Bool)

(declare-fun tp!263377 () Bool)

(assert (=> b!838578 (= e!551302 (and tp!263378 tp!263377))))

(declare-fun b!838580 () Bool)

(declare-fun tp!263379 () Bool)

(declare-fun tp!263380 () Bool)

(assert (=> b!838580 (= e!551302 (and tp!263379 tp!263380))))

(assert (= (and b!838279 (is-ElementMatch!2104 (regex!1671 (rule!3094 (h!14336 l!5107))))) b!838577))

(assert (= (and b!838279 (is-Concat!3842 (regex!1671 (rule!3094 (h!14336 l!5107))))) b!838578))

(assert (= (and b!838279 (is-Star!2104 (regex!1671 (rule!3094 (h!14336 l!5107))))) b!838579))

(assert (= (and b!838279 (is-Union!2104 (regex!1671 (rule!3094 (h!14336 l!5107))))) b!838580))

(declare-fun b_lambda!27567 () Bool)

(assert (= b_lambda!27565 (or (and b!838288 b_free!24807 (= (toChars!2547 (transformation!1671 (rule!3094 (h!14336 l!5107)))) (toChars!2547 (transformation!1671 (rule!3094 separatorToken!297))))) (and b!838278 b_free!24815) (and b!838576 b_free!24835 (= (toChars!2547 (transformation!1671 (rule!3094 (h!14336 (t!93243 l!5107))))) (toChars!2547 (transformation!1671 (rule!3094 separatorToken!297))))) (and b!838276 b_free!24811 (= (toChars!2547 (transformation!1671 (h!14335 rules!2621))) (toChars!2547 (transformation!1671 (rule!3094 separatorToken!297))))) (and b!838562 b_free!24831 (= (toChars!2547 (transformation!1671 (h!14335 (t!93242 rules!2621)))) (toChars!2547 (transformation!1671 (rule!3094 separatorToken!297))))) b_lambda!27567)))

(declare-fun b_lambda!27569 () Bool)

(assert (= b_lambda!27555 (or (and b!838562 b_free!24831 (= (toChars!2547 (transformation!1671 (h!14335 (t!93242 rules!2621)))) (toChars!2547 (transformation!1671 (rule!3094 (h!14336 l!5107)))))) (and b!838576 b_free!24835 (= (toChars!2547 (transformation!1671 (rule!3094 (h!14336 (t!93243 l!5107))))) (toChars!2547 (transformation!1671 (rule!3094 (h!14336 l!5107)))))) (and b!838278 b_free!24815 (= (toChars!2547 (transformation!1671 (rule!3094 separatorToken!297))) (toChars!2547 (transformation!1671 (rule!3094 (h!14336 l!5107)))))) (and b!838276 b_free!24811 (= (toChars!2547 (transformation!1671 (h!14335 rules!2621))) (toChars!2547 (transformation!1671 (rule!3094 (h!14336 l!5107)))))) (and b!838288 b_free!24807) b_lambda!27569)))

(declare-fun b_lambda!27571 () Bool)

(assert (= b_lambda!27557 (or b!838285 b_lambda!27571)))

(declare-fun bs!229762 () Bool)

(declare-fun d!261318 () Bool)

(assert (= bs!229762 (and d!261318 b!838285)))

(assert (=> bs!229762 (= (dynLambda!4123 lambda!24881 (h!14336 l!5107)) (not (isSeparator!1671 (rule!3094 (h!14336 l!5107)))))))

(assert (=> b!838383 d!261318))

(push 1)

(assert (not b!838523))

(assert (not b!838453))

(assert (not b!838525))

(assert (not b_next!24875))

(assert (not b!838547))

(assert (not b!838527))

(assert (not b!838367))

(assert (not b!838504))

(assert (not b!838551))

(assert b_and!72329)

(assert (not b!838514))

(assert (not b!838573))

(assert (not b!838532))

(assert (not b!838499))

(assert (not d!261256))

(assert (not b_next!24893))

(assert (not b!838550))

(assert (not b!838468))

(assert (not b!838521))

(assert (not b!838384))

(assert (not b!838469))

(assert (not b!838574))

(assert (not b!838378))

(assert (not b!838560))

(assert (not b!838526))

(assert (not b!838377))

(assert (not b!838452))

(assert (not d!261304))

(assert (not b_next!24879))

(assert (not b!838510))

(assert (not b_next!24871))

(assert (not d!261300))

(assert b_and!72327)

(assert (not b_lambda!27569))

(assert (not d!261310))

(assert (not b!838580))

(assert (not tb!57831))

(assert b_and!72339)

(assert b_and!72293)

(assert (not d!261298))

(assert (not b_next!24873))

(assert (not b!838361))

(assert (not b!838509))

(assert (not d!261312))

(assert (not b!838506))

(assert (not d!261254))

(assert (not b!838561))

(assert (not b_next!24897))

(assert tp_is_empty!3919)

(assert (not b!838544))

(assert (not b!838501))

(assert (not b!838546))

(assert (not b_next!24899))

(assert (not b!838496))

(assert (not b_lambda!27567))

(assert b_and!72285)

(assert (not b!838545))

(assert b_and!72333)

(assert b_and!72331)

(assert (not b!838366))

(assert (not d!261316))

(assert (not b!838462))

(assert (not d!261262))

(assert b_and!72335)

(assert (not b!838575))

(assert (not b!838522))

(assert (not b!838549))

(assert (not b!838578))

(assert (not b!838503))

(assert (not b_next!24877))

(assert b_and!72289)

(assert (not b!838524))

(assert (not b_lambda!27571))

(assert (not b!838354))

(assert (not b_next!24895))

(assert (not b!838357))

(assert (not tb!57813))

(assert (not d!261296))

(assert (not d!261308))

(assert (not b!838372))

(assert (not b!838467))

(assert (not b!838356))

(assert b_and!72337)

(assert (not b!838579))

(assert (not b!838507))

(assert (not b_next!24869))

(check-sat)

(pop 1)

(push 1)

(assert b_and!72329)

(assert (not b_next!24893))

(assert b_and!72327)

(assert (not b_next!24873))

(assert (not b_next!24875))

(assert (not b_next!24897))

(assert b_and!72335)

(assert (not b_next!24877))

(assert b_and!72289)

(assert (not b_next!24895))

(assert (not b_next!24879))

(assert (not b_next!24871))

(assert b_and!72339)

(assert b_and!72293)

(assert (not b_next!24899))

(assert b_and!72285)

(assert b_and!72333)

(assert b_and!72331)

(assert b_and!72337)

(assert (not b_next!24869))

(check-sat)

(pop 1)

