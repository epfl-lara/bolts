; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!102780 () Bool)

(assert start!102780)

(declare-fun b!1169222 () Bool)

(declare-fun e!749567 () Bool)

(assert (=> b!1169222 (= e!749567 true)))

(declare-fun b!1169221 () Bool)

(declare-fun e!749566 () Bool)

(assert (=> b!1169221 (= e!749566 e!749567)))

(declare-fun b!1169213 () Bool)

(assert (=> b!1169213 e!749566))

(assert (= b!1169221 b!1169222))

(assert (= b!1169213 b!1169221))

(declare-fun b!1169206 () Bool)

(declare-fun e!749554 () Bool)

(declare-datatypes ((List!11570 0))(
  ( (Nil!11546) (Cons!11546 (h!16947 (_ BitVec 16)) (t!110550 List!11570)) )
))
(declare-datatypes ((TokenValue!2078 0))(
  ( (FloatLiteralValue!4156 (text!14991 List!11570)) (TokenValueExt!2077 (__x!7867 Int)) (Broken!10390 (value!65314 List!11570)) (Object!2101) (End!2078) (Def!2078) (Underscore!2078) (Match!2078) (Else!2078) (Error!2078) (Case!2078) (If!2078) (Extends!2078) (Abstract!2078) (Class!2078) (Val!2078) (DelimiterValue!4156 (del!2138 List!11570)) (KeywordValue!2084 (value!65315 List!11570)) (CommentValue!4156 (value!65316 List!11570)) (WhitespaceValue!4156 (value!65317 List!11570)) (IndentationValue!2078 (value!65318 List!11570)) (String!13979) (Int32!2078) (Broken!10391 (value!65319 List!11570)) (Boolean!2079) (Unit!17718) (OperatorValue!2081 (op!2138 List!11570)) (IdentifierValue!4156 (value!65320 List!11570)) (IdentifierValue!4157 (value!65321 List!11570)) (WhitespaceValue!4157 (value!65322 List!11570)) (True!4156) (False!4156) (Broken!10392 (value!65323 List!11570)) (Broken!10393 (value!65324 List!11570)) (True!4157) (RightBrace!2078) (RightBracket!2078) (Colon!2078) (Null!2078) (Comma!2078) (LeftBracket!2078) (False!4157) (LeftBrace!2078) (ImaginaryLiteralValue!2078 (text!14992 List!11570)) (StringLiteralValue!6234 (value!65325 List!11570)) (EOFValue!2078 (value!65326 List!11570)) (IdentValue!2078 (value!65327 List!11570)) (DelimiterValue!4157 (value!65328 List!11570)) (DedentValue!2078 (value!65329 List!11570)) (NewLineValue!2078 (value!65330 List!11570)) (IntegerValue!6234 (value!65331 (_ BitVec 32)) (text!14993 List!11570)) (IntegerValue!6235 (value!65332 Int) (text!14994 List!11570)) (Times!2078) (Or!2078) (Equal!2078) (Minus!2078) (Broken!10394 (value!65333 List!11570)) (And!2078) (Div!2078) (LessEqual!2078) (Mod!2078) (Concat!5360) (Not!2078) (Plus!2078) (SpaceValue!2078 (value!65334 List!11570)) (IntegerValue!6236 (value!65335 Int) (text!14995 List!11570)) (StringLiteralValue!6235 (text!14996 List!11570)) (FloatLiteralValue!4157 (text!14997 List!11570)) (BytesLiteralValue!2078 (value!65336 List!11570)) (CommentValue!4157 (value!65337 List!11570)) (StringLiteralValue!6236 (value!65338 List!11570)) (ErrorTokenValue!2078 (msg!2139 List!11570)) )
))
(declare-datatypes ((C!6882 0))(
  ( (C!6883 (val!3697 Int)) )
))
(declare-datatypes ((Regex!3282 0))(
  ( (ElementMatch!3282 (c!195178 C!6882)) (Concat!5361 (regOne!7076 Regex!3282) (regTwo!7076 Regex!3282)) (EmptyExpr!3282) (Star!3282 (reg!3611 Regex!3282)) (EmptyLang!3282) (Union!3282 (regOne!7077 Regex!3282) (regTwo!7077 Regex!3282)) )
))
(declare-datatypes ((String!13980 0))(
  ( (String!13981 (value!65339 String)) )
))
(declare-datatypes ((List!11571 0))(
  ( (Nil!11547) (Cons!11547 (h!16948 C!6882) (t!110551 List!11571)) )
))
(declare-datatypes ((IArray!7577 0))(
  ( (IArray!7578 (innerList!3846 List!11571)) )
))
(declare-datatypes ((Conc!3786 0))(
  ( (Node!3786 (left!10096 Conc!3786) (right!10426 Conc!3786) (csize!7802 Int) (cheight!3997 Int)) (Leaf!5803 (xs!6491 IArray!7577) (csize!7803 Int)) (Empty!3786) )
))
(declare-datatypes ((BalanceConc!7594 0))(
  ( (BalanceConc!7595 (c!195179 Conc!3786)) )
))
(declare-datatypes ((TokenValueInjection!3856 0))(
  ( (TokenValueInjection!3857 (toValue!3113 Int) (toChars!2972 Int)) )
))
(declare-datatypes ((Rule!3824 0))(
  ( (Rule!3825 (regex!2012 Regex!3282) (tag!2274 String!13980) (isSeparator!2012 Bool) (transformation!2012 TokenValueInjection!3856)) )
))
(declare-datatypes ((Token!3686 0))(
  ( (Token!3687 (value!65340 TokenValue!2078) (rule!3433 Rule!3824) (size!9090 Int) (originalCharacters!2566 List!11571)) )
))
(declare-datatypes ((List!11572 0))(
  ( (Nil!11548) (Cons!11548 (h!16949 Token!3686) (t!110552 List!11572)) )
))
(declare-fun lt!400357 () List!11572)

(declare-fun lt!400355 () List!11572)

(declare-fun subseq!262 (List!11572 List!11572) Bool)

(assert (=> b!1169206 (= e!749554 (subseq!262 lt!400357 lt!400355))))

(declare-fun b!1169207 () Bool)

(declare-fun e!749560 () Bool)

(assert (=> b!1169207 (= e!749560 e!749554)))

(declare-fun res!527900 () Bool)

(assert (=> b!1169207 (=> res!527900 e!749554)))

(declare-fun lambda!48026 () Int)

(declare-fun forall!3041 (List!11572 Int) Bool)

(assert (=> b!1169207 (= res!527900 (not (forall!3041 lt!400355 lambda!48026)))))

(declare-datatypes ((IArray!7579 0))(
  ( (IArray!7580 (innerList!3847 List!11572)) )
))
(declare-datatypes ((Conc!3787 0))(
  ( (Node!3787 (left!10097 Conc!3787) (right!10427 Conc!3787) (csize!7804 Int) (cheight!3998 Int)) (Leaf!5804 (xs!6492 IArray!7579) (csize!7805 Int)) (Empty!3787) )
))
(declare-datatypes ((BalanceConc!7596 0))(
  ( (BalanceConc!7597 (c!195180 Conc!3787)) )
))
(declare-datatypes ((List!11573 0))(
  ( (Nil!11549) (Cons!11549 (h!16950 Rule!3824) (t!110553 List!11573)) )
))
(declare-datatypes ((PrintableTokens!710 0))(
  ( (PrintableTokens!711 (rules!9611 List!11573) (tokens!1637 BalanceConc!7596)) )
))
(declare-fun thiss!10527 () PrintableTokens!710)

(declare-fun to!267 () Int)

(declare-fun from!787 () Int)

(declare-fun list!4255 (BalanceConc!7596) List!11572)

(declare-fun slice!324 (BalanceConc!7596 Int Int) BalanceConc!7596)

(assert (=> b!1169207 (= lt!400357 (list!4255 (slice!324 (tokens!1637 thiss!10527) from!787 to!267)))))

(declare-fun slice!325 (List!11572 Int Int) List!11572)

(assert (=> b!1169207 (subseq!262 (slice!325 lt!400355 from!787 to!267) lt!400355)))

(declare-datatypes ((Unit!17719 0))(
  ( (Unit!17720) )
))
(declare-fun lt!400358 () Unit!17719)

(declare-fun lemmaSliceSubseq!103 (List!11572 Int Int) Unit!17719)

(assert (=> b!1169207 (= lt!400358 (lemmaSliceSubseq!103 lt!400355 from!787 to!267))))

(declare-fun b!1169208 () Bool)

(declare-fun e!749559 () Bool)

(declare-datatypes ((LexerInterface!1707 0))(
  ( (LexerInterfaceExt!1704 (__x!7868 Int)) (Lexer!1705) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!573 (LexerInterface!1707 List!11573 List!11572) Bool)

(assert (=> b!1169208 (= e!749559 (rulesProduceEachTokenIndividuallyList!573 Lexer!1705 (rules!9611 thiss!10527) (t!110552 lt!400355)))))

(declare-fun b!1169209 () Bool)

(declare-fun e!749556 () Bool)

(declare-fun tp!334495 () Bool)

(declare-fun inv!15217 (Conc!3787) Bool)

(assert (=> b!1169209 (= e!749556 (and (inv!15217 (c!195180 (tokens!1637 thiss!10527))) tp!334495))))

(declare-fun b!1169210 () Bool)

(declare-fun tp!334496 () Bool)

(declare-fun e!749558 () Bool)

(declare-fun inv!15218 (BalanceConc!7596) Bool)

(assert (=> b!1169210 (= e!749558 (and tp!334496 (inv!15218 (tokens!1637 thiss!10527)) e!749556))))

(declare-fun b!1169211 () Bool)

(declare-fun res!527901 () Bool)

(declare-fun e!749561 () Bool)

(assert (=> b!1169211 (=> (not res!527901) (not e!749561))))

(declare-fun size!9091 (BalanceConc!7596) Int)

(assert (=> b!1169211 (= res!527901 (<= to!267 (size!9091 (tokens!1637 thiss!10527))))))

(declare-fun b!1169212 () Bool)

(declare-fun e!749555 () Bool)

(assert (=> b!1169212 (= e!749555 e!749559)))

(declare-fun res!527905 () Bool)

(assert (=> b!1169212 (=> (not res!527905) (not e!749559))))

(declare-fun rulesProduceIndividualToken!742 (LexerInterface!1707 List!11573 Token!3686) Bool)

(assert (=> b!1169212 (= res!527905 (rulesProduceIndividualToken!742 Lexer!1705 (rules!9611 thiss!10527) (h!16949 lt!400355)))))

(declare-fun e!749557 () Bool)

(assert (=> b!1169213 (= e!749557 (not e!749560))))

(declare-fun res!527902 () Bool)

(assert (=> b!1169213 (=> res!527902 e!749560)))

(declare-fun forall!3042 (BalanceConc!7596 Int) Bool)

(assert (=> b!1169213 (= res!527902 (not (forall!3042 (tokens!1637 thiss!10527) lambda!48026)))))

(assert (=> b!1169213 (= (rulesProduceEachTokenIndividuallyList!573 Lexer!1705 (rules!9611 thiss!10527) lt!400355) e!749555)))

(declare-fun res!527904 () Bool)

(assert (=> b!1169213 (=> res!527904 e!749555)))

(assert (=> b!1169213 (= res!527904 (not (is-Cons!11548 lt!400355)))))

(assert (=> b!1169213 (= lt!400355 (list!4255 (tokens!1637 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!745 (LexerInterface!1707 List!11573 BalanceConc!7596) Bool)

(assert (=> b!1169213 (= (rulesProduceEachTokenIndividually!745 Lexer!1705 (rules!9611 thiss!10527) (tokens!1637 thiss!10527)) (forall!3042 (tokens!1637 thiss!10527) lambda!48026))))

(declare-fun b!1169214 () Bool)

(assert (=> b!1169214 (= e!749561 e!749557)))

(declare-fun res!527906 () Bool)

(assert (=> b!1169214 (=> (not res!527906) (not e!749557))))

(declare-fun rulesInvariant!1581 (LexerInterface!1707 List!11573) Bool)

(assert (=> b!1169214 (= res!527906 (rulesInvariant!1581 Lexer!1705 (rules!9611 thiss!10527)))))

(declare-fun lt!400356 () Unit!17719)

(declare-fun lemmaInvariant!199 (PrintableTokens!710) Unit!17719)

(assert (=> b!1169214 (= lt!400356 (lemmaInvariant!199 thiss!10527))))

(declare-fun res!527903 () Bool)

(assert (=> start!102780 (=> (not res!527903) (not e!749561))))

(assert (=> start!102780 (= res!527903 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!102780 e!749561))

(assert (=> start!102780 true))

(declare-fun inv!15219 (PrintableTokens!710) Bool)

(assert (=> start!102780 (and (inv!15219 thiss!10527) e!749558)))

(assert (= (and start!102780 res!527903) b!1169211))

(assert (= (and b!1169211 res!527901) b!1169214))

(assert (= (and b!1169214 res!527906) b!1169213))

(assert (= (and b!1169213 (not res!527904)) b!1169212))

(assert (= (and b!1169212 res!527905) b!1169208))

(assert (= (and b!1169213 (not res!527902)) b!1169207))

(assert (= (and b!1169207 (not res!527900)) b!1169206))

(assert (= b!1169210 b!1169209))

(assert (= start!102780 b!1169210))

(declare-fun m!1341259 () Bool)

(assert (=> b!1169211 m!1341259))

(declare-fun m!1341261 () Bool)

(assert (=> b!1169213 m!1341261))

(declare-fun m!1341263 () Bool)

(assert (=> b!1169213 m!1341263))

(declare-fun m!1341265 () Bool)

(assert (=> b!1169213 m!1341265))

(declare-fun m!1341267 () Bool)

(assert (=> b!1169213 m!1341267))

(assert (=> b!1169213 m!1341261))

(declare-fun m!1341269 () Bool)

(assert (=> b!1169212 m!1341269))

(declare-fun m!1341271 () Bool)

(assert (=> b!1169207 m!1341271))

(declare-fun m!1341273 () Bool)

(assert (=> b!1169207 m!1341273))

(declare-fun m!1341275 () Bool)

(assert (=> b!1169207 m!1341275))

(declare-fun m!1341277 () Bool)

(assert (=> b!1169207 m!1341277))

(declare-fun m!1341279 () Bool)

(assert (=> b!1169207 m!1341279))

(assert (=> b!1169207 m!1341277))

(declare-fun m!1341281 () Bool)

(assert (=> b!1169207 m!1341281))

(assert (=> b!1169207 m!1341273))

(declare-fun m!1341283 () Bool)

(assert (=> b!1169210 m!1341283))

(declare-fun m!1341285 () Bool)

(assert (=> b!1169206 m!1341285))

(declare-fun m!1341287 () Bool)

(assert (=> start!102780 m!1341287))

(declare-fun m!1341289 () Bool)

(assert (=> b!1169208 m!1341289))

(declare-fun m!1341291 () Bool)

(assert (=> b!1169209 m!1341291))

(declare-fun m!1341293 () Bool)

(assert (=> b!1169214 m!1341293))

(declare-fun m!1341295 () Bool)

(assert (=> b!1169214 m!1341295))

(push 1)

(assert (not b!1169221))

(assert (not b!1169208))

(assert (not b!1169210))

(assert (not b!1169211))

(assert (not b!1169209))

(assert (not b!1169207))

(assert (not b!1169222))

(assert (not b!1169214))

(assert (not b!1169206))

(assert (not start!102780))

(assert (not b!1169212))

(assert (not b!1169213))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!334387 () Bool)

(declare-fun lt!400373 () Int)

(declare-fun size!9094 (List!11572) Int)

(assert (=> d!334387 (= lt!400373 (size!9094 (list!4255 (tokens!1637 thiss!10527))))))

(declare-fun size!9095 (Conc!3787) Int)

(assert (=> d!334387 (= lt!400373 (size!9095 (c!195180 (tokens!1637 thiss!10527))))))

(assert (=> d!334387 (= (size!9091 (tokens!1637 thiss!10527)) lt!400373)))

(declare-fun bs!285482 () Bool)

(assert (= bs!285482 d!334387))

(assert (=> bs!285482 m!1341265))

(assert (=> bs!285482 m!1341265))

(declare-fun m!1341335 () Bool)

(assert (=> bs!285482 m!1341335))

(declare-fun m!1341337 () Bool)

(assert (=> bs!285482 m!1341337))

(assert (=> b!1169211 d!334387))

(declare-fun d!334389 () Bool)

(declare-fun res!527941 () Bool)

(declare-fun e!749607 () Bool)

(assert (=> d!334389 (=> res!527941 e!749607)))

(assert (=> d!334389 (= res!527941 (is-Nil!11548 lt!400357))))

(assert (=> d!334389 (= (subseq!262 lt!400357 lt!400355) e!749607)))

(declare-fun b!1169267 () Bool)

(declare-fun e!749608 () Bool)

(declare-fun e!749609 () Bool)

(assert (=> b!1169267 (= e!749608 e!749609)))

(declare-fun res!527940 () Bool)

(assert (=> b!1169267 (=> res!527940 e!749609)))

(declare-fun e!749606 () Bool)

(assert (=> b!1169267 (= res!527940 e!749606)))

(declare-fun res!527943 () Bool)

(assert (=> b!1169267 (=> (not res!527943) (not e!749606))))

(assert (=> b!1169267 (= res!527943 (= (h!16949 lt!400357) (h!16949 lt!400355)))))

(declare-fun b!1169269 () Bool)

(assert (=> b!1169269 (= e!749609 (subseq!262 lt!400357 (t!110552 lt!400355)))))

(declare-fun b!1169266 () Bool)

(assert (=> b!1169266 (= e!749607 e!749608)))

(declare-fun res!527942 () Bool)

(assert (=> b!1169266 (=> (not res!527942) (not e!749608))))

(assert (=> b!1169266 (= res!527942 (is-Cons!11548 lt!400355))))

(declare-fun b!1169268 () Bool)

(assert (=> b!1169268 (= e!749606 (subseq!262 (t!110552 lt!400357) (t!110552 lt!400355)))))

(assert (= (and d!334389 (not res!527941)) b!1169266))

(assert (= (and b!1169266 res!527942) b!1169267))

(assert (= (and b!1169267 res!527943) b!1169268))

(assert (= (and b!1169267 (not res!527940)) b!1169269))

(declare-fun m!1341339 () Bool)

(assert (=> b!1169269 m!1341339))

(declare-fun m!1341341 () Bool)

(assert (=> b!1169268 m!1341341))

(assert (=> b!1169206 d!334389))

(declare-fun d!334393 () Bool)

(declare-fun c!195188 () Bool)

(assert (=> d!334393 (= c!195188 (is-Node!3787 (c!195180 (tokens!1637 thiss!10527))))))

(declare-fun e!749616 () Bool)

(assert (=> d!334393 (= (inv!15217 (c!195180 (tokens!1637 thiss!10527))) e!749616)))

(declare-fun b!1169280 () Bool)

(declare-fun inv!15223 (Conc!3787) Bool)

(assert (=> b!1169280 (= e!749616 (inv!15223 (c!195180 (tokens!1637 thiss!10527))))))

(declare-fun b!1169281 () Bool)

(declare-fun e!749617 () Bool)

(assert (=> b!1169281 (= e!749616 e!749617)))

(declare-fun res!527946 () Bool)

(assert (=> b!1169281 (= res!527946 (not (is-Leaf!5804 (c!195180 (tokens!1637 thiss!10527)))))))

(assert (=> b!1169281 (=> res!527946 e!749617)))

(declare-fun b!1169282 () Bool)

(declare-fun inv!15224 (Conc!3787) Bool)

(assert (=> b!1169282 (= e!749617 (inv!15224 (c!195180 (tokens!1637 thiss!10527))))))

(assert (= (and d!334393 c!195188) b!1169280))

(assert (= (and d!334393 (not c!195188)) b!1169281))

(assert (= (and b!1169281 (not res!527946)) b!1169282))

(declare-fun m!1341343 () Bool)

(assert (=> b!1169280 m!1341343))

(declare-fun m!1341345 () Bool)

(assert (=> b!1169282 m!1341345))

(assert (=> b!1169209 d!334393))

(declare-fun d!334395 () Bool)

(declare-fun isBalanced!1066 (Conc!3787) Bool)

(assert (=> d!334395 (= (inv!15218 (tokens!1637 thiss!10527)) (isBalanced!1066 (c!195180 (tokens!1637 thiss!10527))))))

(declare-fun bs!285483 () Bool)

(assert (= bs!285483 d!334395))

(declare-fun m!1341347 () Bool)

(assert (=> bs!285483 m!1341347))

(assert (=> b!1169210 d!334395))

(declare-fun bs!285486 () Bool)

(declare-fun d!334397 () Bool)

(assert (= bs!285486 (and d!334397 b!1169213)))

(declare-fun lambda!48036 () Int)

(assert (=> bs!285486 (= lambda!48036 lambda!48026)))

(declare-fun b!1169316 () Bool)

(declare-fun e!749648 () Bool)

(assert (=> b!1169316 (= e!749648 true)))

(declare-fun b!1169315 () Bool)

(declare-fun e!749647 () Bool)

(assert (=> b!1169315 (= e!749647 e!749648)))

(declare-fun b!1169314 () Bool)

(declare-fun e!749646 () Bool)

(assert (=> b!1169314 (= e!749646 e!749647)))

(assert (=> d!334397 e!749646))

(assert (= b!1169315 b!1169316))

(assert (= b!1169314 b!1169315))

(assert (= (and d!334397 (is-Cons!11549 (rules!9611 thiss!10527))) b!1169314))

(declare-fun order!7083 () Int)

(declare-fun order!7085 () Int)

(declare-fun dynLambda!5090 (Int Int) Int)

(declare-fun dynLambda!5091 (Int Int) Int)

(assert (=> b!1169316 (< (dynLambda!5090 order!7083 (toValue!3113 (transformation!2012 (h!16950 (rules!9611 thiss!10527))))) (dynLambda!5091 order!7085 lambda!48036))))

(declare-fun order!7087 () Int)

(declare-fun dynLambda!5092 (Int Int) Int)

(assert (=> b!1169316 (< (dynLambda!5092 order!7087 (toChars!2972 (transformation!2012 (h!16950 (rules!9611 thiss!10527))))) (dynLambda!5091 order!7085 lambda!48036))))

(assert (=> d!334397 true))

(declare-fun lt!400379 () Bool)

(assert (=> d!334397 (= lt!400379 (forall!3041 lt!400355 lambda!48036))))

(declare-fun e!749639 () Bool)

(assert (=> d!334397 (= lt!400379 e!749639)))

(declare-fun res!527967 () Bool)

(assert (=> d!334397 (=> res!527967 e!749639)))

(assert (=> d!334397 (= res!527967 (not (is-Cons!11548 lt!400355)))))

(declare-fun isEmpty!7019 (List!11573) Bool)

(assert (=> d!334397 (not (isEmpty!7019 (rules!9611 thiss!10527)))))

(assert (=> d!334397 (= (rulesProduceEachTokenIndividuallyList!573 Lexer!1705 (rules!9611 thiss!10527) lt!400355) lt!400379)))

(declare-fun b!1169304 () Bool)

(declare-fun e!749638 () Bool)

(assert (=> b!1169304 (= e!749639 e!749638)))

(declare-fun res!527966 () Bool)

(assert (=> b!1169304 (=> (not res!527966) (not e!749638))))

(assert (=> b!1169304 (= res!527966 (rulesProduceIndividualToken!742 Lexer!1705 (rules!9611 thiss!10527) (h!16949 lt!400355)))))

(declare-fun b!1169305 () Bool)

(assert (=> b!1169305 (= e!749638 (rulesProduceEachTokenIndividuallyList!573 Lexer!1705 (rules!9611 thiss!10527) (t!110552 lt!400355)))))

(assert (= (and d!334397 (not res!527967)) b!1169304))

(assert (= (and b!1169304 res!527966) b!1169305))

(declare-fun m!1341363 () Bool)

(assert (=> d!334397 m!1341363))

(declare-fun m!1341365 () Bool)

(assert (=> d!334397 m!1341365))

(assert (=> b!1169304 m!1341269))

(assert (=> b!1169305 m!1341289))

(assert (=> b!1169213 d!334397))

(declare-fun bs!285487 () Bool)

(declare-fun d!334407 () Bool)

(assert (= bs!285487 (and d!334407 b!1169213)))

(declare-fun lambda!48041 () Int)

(assert (=> bs!285487 (= lambda!48041 lambda!48026)))

(declare-fun bs!285488 () Bool)

(assert (= bs!285488 (and d!334407 d!334397)))

(assert (=> bs!285488 (= lambda!48041 lambda!48036)))

(declare-fun b!1169324 () Bool)

(declare-fun e!749654 () Bool)

(assert (=> b!1169324 (= e!749654 true)))

(declare-fun b!1169323 () Bool)

(declare-fun e!749653 () Bool)

(assert (=> b!1169323 (= e!749653 e!749654)))

(declare-fun b!1169322 () Bool)

(declare-fun e!749652 () Bool)

(assert (=> b!1169322 (= e!749652 e!749653)))

(assert (=> d!334407 e!749652))

(assert (= b!1169323 b!1169324))

(assert (= b!1169322 b!1169323))

(assert (= (and d!334407 (is-Cons!11549 (rules!9611 thiss!10527))) b!1169322))

(assert (=> b!1169324 (< (dynLambda!5090 order!7083 (toValue!3113 (transformation!2012 (h!16950 (rules!9611 thiss!10527))))) (dynLambda!5091 order!7085 lambda!48041))))

(assert (=> b!1169324 (< (dynLambda!5092 order!7087 (toChars!2972 (transformation!2012 (h!16950 (rules!9611 thiss!10527))))) (dynLambda!5091 order!7085 lambda!48041))))

(assert (=> d!334407 true))

(declare-fun e!749651 () Bool)

(assert (=> d!334407 e!749651))

(declare-fun res!527970 () Bool)

(assert (=> d!334407 (=> (not res!527970) (not e!749651))))

(declare-fun lt!400382 () Bool)

(assert (=> d!334407 (= res!527970 (= lt!400382 (forall!3041 (list!4255 (tokens!1637 thiss!10527)) lambda!48041)))))

(assert (=> d!334407 (= lt!400382 (forall!3042 (tokens!1637 thiss!10527) lambda!48041))))

(assert (=> d!334407 (not (isEmpty!7019 (rules!9611 thiss!10527)))))

(assert (=> d!334407 (= (rulesProduceEachTokenIndividually!745 Lexer!1705 (rules!9611 thiss!10527) (tokens!1637 thiss!10527)) lt!400382)))

(declare-fun b!1169321 () Bool)

(assert (=> b!1169321 (= e!749651 (= lt!400382 (rulesProduceEachTokenIndividuallyList!573 Lexer!1705 (rules!9611 thiss!10527) (list!4255 (tokens!1637 thiss!10527)))))))

(assert (= (and d!334407 res!527970) b!1169321))

(assert (=> d!334407 m!1341265))

(assert (=> d!334407 m!1341265))

(declare-fun m!1341367 () Bool)

(assert (=> d!334407 m!1341367))

(declare-fun m!1341369 () Bool)

(assert (=> d!334407 m!1341369))

(assert (=> d!334407 m!1341365))

(assert (=> b!1169321 m!1341265))

(assert (=> b!1169321 m!1341265))

(declare-fun m!1341371 () Bool)

(assert (=> b!1169321 m!1341371))

(assert (=> b!1169213 d!334407))

(declare-fun d!334409 () Bool)

(declare-fun lt!400385 () Bool)

(assert (=> d!334409 (= lt!400385 (forall!3041 (list!4255 (tokens!1637 thiss!10527)) lambda!48026))))

(declare-fun forall!3045 (Conc!3787 Int) Bool)

(assert (=> d!334409 (= lt!400385 (forall!3045 (c!195180 (tokens!1637 thiss!10527)) lambda!48026))))

(assert (=> d!334409 (= (forall!3042 (tokens!1637 thiss!10527) lambda!48026) lt!400385)))

(declare-fun bs!285489 () Bool)

(assert (= bs!285489 d!334409))

(assert (=> bs!285489 m!1341265))

(assert (=> bs!285489 m!1341265))

(declare-fun m!1341373 () Bool)

(assert (=> bs!285489 m!1341373))

(declare-fun m!1341375 () Bool)

(assert (=> bs!285489 m!1341375))

(assert (=> b!1169213 d!334409))

(declare-fun d!334411 () Bool)

(declare-fun list!4257 (Conc!3787) List!11572)

(assert (=> d!334411 (= (list!4255 (tokens!1637 thiss!10527)) (list!4257 (c!195180 (tokens!1637 thiss!10527))))))

(declare-fun bs!285490 () Bool)

(assert (= bs!285490 d!334411))

(declare-fun m!1341377 () Bool)

(assert (=> bs!285490 m!1341377))

(assert (=> b!1169213 d!334411))

(declare-fun bs!285491 () Bool)

(declare-fun d!334413 () Bool)

(assert (= bs!285491 (and d!334413 b!1169213)))

(declare-fun lambda!48042 () Int)

(assert (=> bs!285491 (= lambda!48042 lambda!48026)))

(declare-fun bs!285492 () Bool)

(assert (= bs!285492 (and d!334413 d!334397)))

(assert (=> bs!285492 (= lambda!48042 lambda!48036)))

(declare-fun bs!285493 () Bool)

(assert (= bs!285493 (and d!334413 d!334407)))

(assert (=> bs!285493 (= lambda!48042 lambda!48041)))

(declare-fun b!1169329 () Bool)

(declare-fun e!749659 () Bool)

(assert (=> b!1169329 (= e!749659 true)))

(declare-fun b!1169328 () Bool)

(declare-fun e!749658 () Bool)

(assert (=> b!1169328 (= e!749658 e!749659)))

(declare-fun b!1169327 () Bool)

(declare-fun e!749657 () Bool)

(assert (=> b!1169327 (= e!749657 e!749658)))

(assert (=> d!334413 e!749657))

(assert (= b!1169328 b!1169329))

(assert (= b!1169327 b!1169328))

(assert (= (and d!334413 (is-Cons!11549 (rules!9611 thiss!10527))) b!1169327))

(assert (=> b!1169329 (< (dynLambda!5090 order!7083 (toValue!3113 (transformation!2012 (h!16950 (rules!9611 thiss!10527))))) (dynLambda!5091 order!7085 lambda!48042))))

(assert (=> b!1169329 (< (dynLambda!5092 order!7087 (toChars!2972 (transformation!2012 (h!16950 (rules!9611 thiss!10527))))) (dynLambda!5091 order!7085 lambda!48042))))

(assert (=> d!334413 true))

(declare-fun lt!400386 () Bool)

(assert (=> d!334413 (= lt!400386 (forall!3041 (t!110552 lt!400355) lambda!48042))))

(declare-fun e!749656 () Bool)

(assert (=> d!334413 (= lt!400386 e!749656)))

(declare-fun res!527972 () Bool)

(assert (=> d!334413 (=> res!527972 e!749656)))

(assert (=> d!334413 (= res!527972 (not (is-Cons!11548 (t!110552 lt!400355))))))

(assert (=> d!334413 (not (isEmpty!7019 (rules!9611 thiss!10527)))))

(assert (=> d!334413 (= (rulesProduceEachTokenIndividuallyList!573 Lexer!1705 (rules!9611 thiss!10527) (t!110552 lt!400355)) lt!400386)))

(declare-fun b!1169325 () Bool)

(declare-fun e!749655 () Bool)

(assert (=> b!1169325 (= e!749656 e!749655)))

(declare-fun res!527971 () Bool)

(assert (=> b!1169325 (=> (not res!527971) (not e!749655))))

(assert (=> b!1169325 (= res!527971 (rulesProduceIndividualToken!742 Lexer!1705 (rules!9611 thiss!10527) (h!16949 (t!110552 lt!400355))))))

(declare-fun b!1169326 () Bool)

(assert (=> b!1169326 (= e!749655 (rulesProduceEachTokenIndividuallyList!573 Lexer!1705 (rules!9611 thiss!10527) (t!110552 (t!110552 lt!400355))))))

(assert (= (and d!334413 (not res!527972)) b!1169325))

(assert (= (and b!1169325 res!527971) b!1169326))

(declare-fun m!1341379 () Bool)

(assert (=> d!334413 m!1341379))

(assert (=> d!334413 m!1341365))

(declare-fun m!1341381 () Bool)

(assert (=> b!1169325 m!1341381))

(declare-fun m!1341383 () Bool)

(assert (=> b!1169326 m!1341383))

(assert (=> b!1169208 d!334413))

(declare-fun d!334415 () Bool)

(declare-fun res!527985 () Bool)

(declare-fun e!749677 () Bool)

(assert (=> d!334415 (=> (not res!527985) (not e!749677))))

(assert (=> d!334415 (= res!527985 (not (isEmpty!7019 (rules!9611 thiss!10527))))))

(assert (=> d!334415 (= (inv!15219 thiss!10527) e!749677)))

(declare-fun b!1169355 () Bool)

(declare-fun res!527986 () Bool)

(assert (=> b!1169355 (=> (not res!527986) (not e!749677))))

(assert (=> b!1169355 (= res!527986 (rulesInvariant!1581 Lexer!1705 (rules!9611 thiss!10527)))))

(declare-fun b!1169356 () Bool)

(declare-fun res!527987 () Bool)

(assert (=> b!1169356 (=> (not res!527987) (not e!749677))))

(assert (=> b!1169356 (= res!527987 (rulesProduceEachTokenIndividually!745 Lexer!1705 (rules!9611 thiss!10527) (tokens!1637 thiss!10527)))))

(declare-fun b!1169357 () Bool)

(declare-fun separableTokens!143 (LexerInterface!1707 BalanceConc!7596 List!11573) Bool)

(assert (=> b!1169357 (= e!749677 (separableTokens!143 Lexer!1705 (tokens!1637 thiss!10527) (rules!9611 thiss!10527)))))

(assert (= (and d!334415 res!527985) b!1169355))

(assert (= (and b!1169355 res!527986) b!1169356))

(assert (= (and b!1169356 res!527987) b!1169357))

(assert (=> d!334415 m!1341365))

(assert (=> b!1169355 m!1341293))

(assert (=> b!1169356 m!1341267))

(declare-fun m!1341391 () Bool)

(assert (=> b!1169357 m!1341391))

(assert (=> start!102780 d!334415))

(declare-fun d!334421 () Bool)

(declare-fun res!527990 () Bool)

(declare-fun e!749680 () Bool)

(assert (=> d!334421 (=> (not res!527990) (not e!749680))))

(declare-fun rulesValid!706 (LexerInterface!1707 List!11573) Bool)

(assert (=> d!334421 (= res!527990 (rulesValid!706 Lexer!1705 (rules!9611 thiss!10527)))))

(assert (=> d!334421 (= (rulesInvariant!1581 Lexer!1705 (rules!9611 thiss!10527)) e!749680)))

(declare-fun b!1169360 () Bool)

(declare-datatypes ((List!11578 0))(
  ( (Nil!11554) (Cons!11554 (h!16955 String!13980) (t!110577 List!11578)) )
))
(declare-fun noDuplicateTag!706 (LexerInterface!1707 List!11573 List!11578) Bool)

(assert (=> b!1169360 (= e!749680 (noDuplicateTag!706 Lexer!1705 (rules!9611 thiss!10527) Nil!11554))))

(assert (= (and d!334421 res!527990) b!1169360))

(declare-fun m!1341393 () Bool)

(assert (=> d!334421 m!1341393))

(declare-fun m!1341395 () Bool)

(assert (=> b!1169360 m!1341395))

(assert (=> b!1169214 d!334421))

(declare-fun d!334423 () Bool)

(declare-fun e!749692 () Bool)

(assert (=> d!334423 e!749692))

(declare-fun res!528001 () Bool)

(assert (=> d!334423 (=> (not res!528001) (not e!749692))))

(assert (=> d!334423 (= res!528001 (rulesInvariant!1581 Lexer!1705 (rules!9611 thiss!10527)))))

(declare-fun Unit!17724 () Unit!17719)

(assert (=> d!334423 (= (lemmaInvariant!199 thiss!10527) Unit!17724)))

(declare-fun b!1169374 () Bool)

(declare-fun res!528002 () Bool)

(assert (=> b!1169374 (=> (not res!528002) (not e!749692))))

(assert (=> b!1169374 (= res!528002 (rulesProduceEachTokenIndividually!745 Lexer!1705 (rules!9611 thiss!10527) (tokens!1637 thiss!10527)))))

(declare-fun b!1169375 () Bool)

(assert (=> b!1169375 (= e!749692 (separableTokens!143 Lexer!1705 (tokens!1637 thiss!10527) (rules!9611 thiss!10527)))))

(assert (= (and d!334423 res!528001) b!1169374))

(assert (= (and b!1169374 res!528002) b!1169375))

(assert (=> d!334423 m!1341293))

(assert (=> b!1169374 m!1341267))

(assert (=> b!1169375 m!1341391))

(assert (=> b!1169214 d!334423))

(declare-fun d!334429 () Bool)

(declare-fun lt!400402 () Bool)

(declare-fun e!749706 () Bool)

(assert (=> d!334429 (= lt!400402 e!749706)))

(declare-fun res!528018 () Bool)

(assert (=> d!334429 (=> (not res!528018) (not e!749706))))

(declare-datatypes ((tuple2!12034 0))(
  ( (tuple2!12035 (_1!6864 BalanceConc!7596) (_2!6864 BalanceConc!7594)) )
))
(declare-fun lex!707 (LexerInterface!1707 List!11573 BalanceConc!7594) tuple2!12034)

(declare-fun print!644 (LexerInterface!1707 BalanceConc!7596) BalanceConc!7594)

(declare-fun singletonSeq!672 (Token!3686) BalanceConc!7596)

(assert (=> d!334429 (= res!528018 (= (list!4255 (_1!6864 (lex!707 Lexer!1705 (rules!9611 thiss!10527) (print!644 Lexer!1705 (singletonSeq!672 (h!16949 lt!400355)))))) (list!4255 (singletonSeq!672 (h!16949 lt!400355)))))))

(declare-fun e!749705 () Bool)

(assert (=> d!334429 (= lt!400402 e!749705)))

(declare-fun res!528017 () Bool)

(assert (=> d!334429 (=> (not res!528017) (not e!749705))))

(declare-fun lt!400401 () tuple2!12034)

(assert (=> d!334429 (= res!528017 (= (size!9091 (_1!6864 lt!400401)) 1))))

(assert (=> d!334429 (= lt!400401 (lex!707 Lexer!1705 (rules!9611 thiss!10527) (print!644 Lexer!1705 (singletonSeq!672 (h!16949 lt!400355)))))))

(assert (=> d!334429 (not (isEmpty!7019 (rules!9611 thiss!10527)))))

(assert (=> d!334429 (= (rulesProduceIndividualToken!742 Lexer!1705 (rules!9611 thiss!10527) (h!16949 lt!400355)) lt!400402)))

(declare-fun b!1169393 () Bool)

(declare-fun res!528019 () Bool)

(assert (=> b!1169393 (=> (not res!528019) (not e!749705))))

(declare-fun apply!2493 (BalanceConc!7596 Int) Token!3686)

(assert (=> b!1169393 (= res!528019 (= (apply!2493 (_1!6864 lt!400401) 0) (h!16949 lt!400355)))))

(declare-fun b!1169394 () Bool)

(declare-fun isEmpty!7020 (BalanceConc!7594) Bool)

(assert (=> b!1169394 (= e!749705 (isEmpty!7020 (_2!6864 lt!400401)))))

(declare-fun b!1169395 () Bool)

(assert (=> b!1169395 (= e!749706 (isEmpty!7020 (_2!6864 (lex!707 Lexer!1705 (rules!9611 thiss!10527) (print!644 Lexer!1705 (singletonSeq!672 (h!16949 lt!400355)))))))))

(assert (= (and d!334429 res!528017) b!1169393))

(assert (= (and b!1169393 res!528019) b!1169394))

(assert (= (and d!334429 res!528018) b!1169395))

(declare-fun m!1341419 () Bool)

(assert (=> d!334429 m!1341419))

(declare-fun m!1341421 () Bool)

(assert (=> d!334429 m!1341421))

(declare-fun m!1341423 () Bool)

(assert (=> d!334429 m!1341423))

(declare-fun m!1341425 () Bool)

(assert (=> d!334429 m!1341425))

(assert (=> d!334429 m!1341365))

(declare-fun m!1341427 () Bool)

(assert (=> d!334429 m!1341427))

(assert (=> d!334429 m!1341427))

(declare-fun m!1341429 () Bool)

(assert (=> d!334429 m!1341429))

(assert (=> d!334429 m!1341427))

(assert (=> d!334429 m!1341421))

(declare-fun m!1341431 () Bool)

(assert (=> b!1169393 m!1341431))

(declare-fun m!1341433 () Bool)

(assert (=> b!1169394 m!1341433))

(assert (=> b!1169395 m!1341427))

(assert (=> b!1169395 m!1341427))

(assert (=> b!1169395 m!1341421))

(assert (=> b!1169395 m!1341421))

(assert (=> b!1169395 m!1341423))

(declare-fun m!1341435 () Bool)

(assert (=> b!1169395 m!1341435))

(assert (=> b!1169212 d!334429))

(declare-fun d!334437 () Bool)

(assert (=> d!334437 (subseq!262 (slice!325 lt!400355 from!787 to!267) lt!400355)))

(declare-fun lt!400405 () Unit!17719)

(declare-fun choose!7538 (List!11572 Int Int) Unit!17719)

(assert (=> d!334437 (= lt!400405 (choose!7538 lt!400355 from!787 to!267))))

(declare-fun e!749709 () Bool)

(assert (=> d!334437 e!749709))

(declare-fun res!528022 () Bool)

(assert (=> d!334437 (=> (not res!528022) (not e!749709))))

(assert (=> d!334437 (= res!528022 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!334437 (= (lemmaSliceSubseq!103 lt!400355 from!787 to!267) lt!400405)))

(declare-fun b!1169398 () Bool)

(assert (=> b!1169398 (= e!749709 (<= to!267 (size!9094 lt!400355)))))

(assert (= (and d!334437 res!528022) b!1169398))

(assert (=> d!334437 m!1341277))

(assert (=> d!334437 m!1341277))

(assert (=> d!334437 m!1341279))

(declare-fun m!1341437 () Bool)

(assert (=> d!334437 m!1341437))

(declare-fun m!1341439 () Bool)

(assert (=> b!1169398 m!1341439))

(assert (=> b!1169207 d!334437))

(declare-fun d!334439 () Bool)

(declare-fun res!528024 () Bool)

(declare-fun e!749711 () Bool)

(assert (=> d!334439 (=> res!528024 e!749711)))

(assert (=> d!334439 (= res!528024 (is-Nil!11548 (slice!325 lt!400355 from!787 to!267)))))

(assert (=> d!334439 (= (subseq!262 (slice!325 lt!400355 from!787 to!267) lt!400355) e!749711)))

(declare-fun b!1169400 () Bool)

(declare-fun e!749712 () Bool)

(declare-fun e!749713 () Bool)

(assert (=> b!1169400 (= e!749712 e!749713)))

(declare-fun res!528023 () Bool)

(assert (=> b!1169400 (=> res!528023 e!749713)))

(declare-fun e!749710 () Bool)

(assert (=> b!1169400 (= res!528023 e!749710)))

(declare-fun res!528026 () Bool)

(assert (=> b!1169400 (=> (not res!528026) (not e!749710))))

(assert (=> b!1169400 (= res!528026 (= (h!16949 (slice!325 lt!400355 from!787 to!267)) (h!16949 lt!400355)))))

(declare-fun b!1169402 () Bool)

(assert (=> b!1169402 (= e!749713 (subseq!262 (slice!325 lt!400355 from!787 to!267) (t!110552 lt!400355)))))

(declare-fun b!1169399 () Bool)

(assert (=> b!1169399 (= e!749711 e!749712)))

(declare-fun res!528025 () Bool)

(assert (=> b!1169399 (=> (not res!528025) (not e!749712))))

(assert (=> b!1169399 (= res!528025 (is-Cons!11548 lt!400355))))

(declare-fun b!1169401 () Bool)

(assert (=> b!1169401 (= e!749710 (subseq!262 (t!110552 (slice!325 lt!400355 from!787 to!267)) (t!110552 lt!400355)))))

(assert (= (and d!334439 (not res!528024)) b!1169399))

(assert (= (and b!1169399 res!528025) b!1169400))

(assert (= (and b!1169400 res!528026) b!1169401))

(assert (= (and b!1169400 (not res!528023)) b!1169402))

(assert (=> b!1169402 m!1341277))

(declare-fun m!1341441 () Bool)

(assert (=> b!1169402 m!1341441))

(declare-fun m!1341443 () Bool)

(assert (=> b!1169401 m!1341443))

(assert (=> b!1169207 d!334439))

(declare-fun d!334441 () Bool)

(declare-fun res!528031 () Bool)

(declare-fun e!749718 () Bool)

(assert (=> d!334441 (=> res!528031 e!749718)))

(assert (=> d!334441 (= res!528031 (is-Nil!11548 lt!400355))))

(assert (=> d!334441 (= (forall!3041 lt!400355 lambda!48026) e!749718)))

(declare-fun b!1169407 () Bool)

(declare-fun e!749719 () Bool)

(assert (=> b!1169407 (= e!749718 e!749719)))

(declare-fun res!528032 () Bool)

(assert (=> b!1169407 (=> (not res!528032) (not e!749719))))

(declare-fun dynLambda!5093 (Int Token!3686) Bool)

(assert (=> b!1169407 (= res!528032 (dynLambda!5093 lambda!48026 (h!16949 lt!400355)))))

(declare-fun b!1169408 () Bool)

(assert (=> b!1169408 (= e!749719 (forall!3041 (t!110552 lt!400355) lambda!48026))))

(assert (= (and d!334441 (not res!528031)) b!1169407))

(assert (= (and b!1169407 res!528032) b!1169408))

(declare-fun b_lambda!34951 () Bool)

(assert (=> (not b_lambda!34951) (not b!1169407)))

(declare-fun m!1341445 () Bool)

(assert (=> b!1169407 m!1341445))

(declare-fun m!1341447 () Bool)

(assert (=> b!1169408 m!1341447))

(assert (=> b!1169207 d!334441))

(declare-fun d!334443 () Bool)

(declare-fun e!749724 () Bool)

(assert (=> d!334443 e!749724))

(declare-fun res!528040 () Bool)

(assert (=> d!334443 (=> (not res!528040) (not e!749724))))

(declare-fun slice!328 (Conc!3787 Int Int) Conc!3787)

(assert (=> d!334443 (= res!528040 (isBalanced!1066 (slice!328 (c!195180 (tokens!1637 thiss!10527)) from!787 to!267)))))

(declare-fun lt!400408 () BalanceConc!7596)

(assert (=> d!334443 (= lt!400408 (BalanceConc!7597 (slice!328 (c!195180 (tokens!1637 thiss!10527)) from!787 to!267)))))

(declare-fun e!749725 () Bool)

(assert (=> d!334443 e!749725))

(declare-fun res!528039 () Bool)

(assert (=> d!334443 (=> (not res!528039) (not e!749725))))

(assert (=> d!334443 (= res!528039 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!334443 (= (slice!324 (tokens!1637 thiss!10527) from!787 to!267) lt!400408)))

(declare-fun b!1169415 () Bool)

(declare-fun res!528041 () Bool)

(assert (=> b!1169415 (=> (not res!528041) (not e!749725))))

(assert (=> b!1169415 (= res!528041 (<= to!267 (size!9091 (tokens!1637 thiss!10527))))))

(declare-fun b!1169416 () Bool)

(assert (=> b!1169416 (= e!749725 (isBalanced!1066 (c!195180 (tokens!1637 thiss!10527))))))

(declare-fun b!1169417 () Bool)

(assert (=> b!1169417 (= e!749724 (= (list!4255 lt!400408) (slice!325 (list!4255 (tokens!1637 thiss!10527)) from!787 to!267)))))

(assert (= (and d!334443 res!528039) b!1169415))

(assert (= (and b!1169415 res!528041) b!1169416))

(assert (= (and d!334443 res!528040) b!1169417))

(declare-fun m!1341449 () Bool)

(assert (=> d!334443 m!1341449))

(assert (=> d!334443 m!1341449))

(declare-fun m!1341451 () Bool)

(assert (=> d!334443 m!1341451))

(assert (=> b!1169415 m!1341259))

(assert (=> b!1169416 m!1341347))

(declare-fun m!1341453 () Bool)

(assert (=> b!1169417 m!1341453))

(assert (=> b!1169417 m!1341265))

(assert (=> b!1169417 m!1341265))

(declare-fun m!1341455 () Bool)

(assert (=> b!1169417 m!1341455))

(assert (=> b!1169207 d!334443))

(declare-fun d!334445 () Bool)

(declare-fun take!75 (List!11572 Int) List!11572)

(declare-fun drop!485 (List!11572 Int) List!11572)

(assert (=> d!334445 (= (slice!325 lt!400355 from!787 to!267) (take!75 (drop!485 lt!400355 from!787) (- to!267 from!787)))))

(declare-fun bs!285502 () Bool)

(assert (= bs!285502 d!334445))

(declare-fun m!1341457 () Bool)

(assert (=> bs!285502 m!1341457))

(assert (=> bs!285502 m!1341457))

(declare-fun m!1341459 () Bool)

(assert (=> bs!285502 m!1341459))

(assert (=> b!1169207 d!334445))

(declare-fun d!334447 () Bool)

(assert (=> d!334447 (= (list!4255 (slice!324 (tokens!1637 thiss!10527) from!787 to!267)) (list!4257 (c!195180 (slice!324 (tokens!1637 thiss!10527) from!787 to!267))))))

(declare-fun bs!285503 () Bool)

(assert (= bs!285503 d!334447))

(declare-fun m!1341461 () Bool)

(assert (=> bs!285503 m!1341461))

(assert (=> b!1169207 d!334447))

(declare-fun b!1169426 () Bool)

(declare-fun e!749730 () Bool)

(assert (=> b!1169426 (= e!749730 true)))

(declare-fun b!1169428 () Bool)

(declare-fun e!749731 () Bool)

(assert (=> b!1169428 (= e!749731 true)))

(declare-fun b!1169427 () Bool)

(assert (=> b!1169427 (= e!749730 e!749731)))

(assert (=> b!1169222 e!749730))

(assert (= (and b!1169222 (is-Node!3787 (c!195180 (tokens!1637 thiss!10527)))) b!1169426))

(assert (= b!1169427 b!1169428))

(assert (= (and b!1169222 (is-Leaf!5804 (c!195180 (tokens!1637 thiss!10527)))) b!1169427))

(declare-fun tp!334511 () Bool)

(declare-fun b!1169437 () Bool)

(declare-fun e!749737 () Bool)

(declare-fun tp!334510 () Bool)

(assert (=> b!1169437 (= e!749737 (and (inv!15217 (left!10097 (c!195180 (tokens!1637 thiss!10527)))) tp!334510 (inv!15217 (right!10427 (c!195180 (tokens!1637 thiss!10527)))) tp!334511))))

(declare-fun b!1169439 () Bool)

(declare-fun e!749736 () Bool)

(declare-fun tp!334509 () Bool)

(assert (=> b!1169439 (= e!749736 tp!334509)))

(declare-fun b!1169438 () Bool)

(declare-fun inv!15225 (IArray!7579) Bool)

(assert (=> b!1169438 (= e!749737 (and (inv!15225 (xs!6492 (c!195180 (tokens!1637 thiss!10527)))) e!749736))))

(assert (=> b!1169209 (= tp!334495 (and (inv!15217 (c!195180 (tokens!1637 thiss!10527))) e!749737))))

(assert (= (and b!1169209 (is-Node!3787 (c!195180 (tokens!1637 thiss!10527)))) b!1169437))

(assert (= b!1169438 b!1169439))

(assert (= (and b!1169209 (is-Leaf!5804 (c!195180 (tokens!1637 thiss!10527)))) b!1169438))

(declare-fun m!1341463 () Bool)

(assert (=> b!1169437 m!1341463))

(declare-fun m!1341465 () Bool)

(assert (=> b!1169437 m!1341465))

(declare-fun m!1341467 () Bool)

(assert (=> b!1169438 m!1341467))

(assert (=> b!1169209 m!1341291))

(declare-fun b!1169442 () Bool)

(declare-fun e!749740 () Bool)

(assert (=> b!1169442 (= e!749740 true)))

(declare-fun b!1169441 () Bool)

(declare-fun e!749739 () Bool)

(assert (=> b!1169441 (= e!749739 e!749740)))

(declare-fun b!1169440 () Bool)

(declare-fun e!749738 () Bool)

(assert (=> b!1169440 (= e!749738 e!749739)))

(assert (=> b!1169221 e!749738))

(assert (= b!1169441 b!1169442))

(assert (= b!1169440 b!1169441))

(assert (= (and b!1169221 (is-Cons!11549 (rules!9611 thiss!10527))) b!1169440))

(assert (=> b!1169442 (< (dynLambda!5090 order!7083 (toValue!3113 (transformation!2012 (h!16950 (rules!9611 thiss!10527))))) (dynLambda!5091 order!7085 lambda!48026))))

(assert (=> b!1169442 (< (dynLambda!5092 order!7087 (toChars!2972 (transformation!2012 (h!16950 (rules!9611 thiss!10527))))) (dynLambda!5091 order!7085 lambda!48026))))

(declare-fun b!1169459 () Bool)

(declare-fun b_free!27829 () Bool)

(declare-fun b_next!28533 () Bool)

(assert (=> b!1169459 (= b_free!27829 (not b_next!28533))))

(declare-fun tp!334520 () Bool)

(declare-fun b_and!80729 () Bool)

(assert (=> b!1169459 (= tp!334520 b_and!80729)))

(declare-fun b_free!27831 () Bool)

(declare-fun b_next!28535 () Bool)

(assert (=> b!1169459 (= b_free!27831 (not b_next!28535))))

(declare-fun tp!334522 () Bool)

(declare-fun b_and!80731 () Bool)

(assert (=> b!1169459 (= tp!334522 b_and!80731)))

(declare-fun e!749753 () Bool)

(assert (=> b!1169459 (= e!749753 (and tp!334520 tp!334522))))

(declare-fun tp!334523 () Bool)

(declare-fun b!1169458 () Bool)

(declare-fun e!749751 () Bool)

(declare-fun inv!15214 (String!13980) Bool)

(declare-fun inv!15226 (TokenValueInjection!3856) Bool)

(assert (=> b!1169458 (= e!749751 (and tp!334523 (inv!15214 (tag!2274 (h!16950 (rules!9611 thiss!10527)))) (inv!15226 (transformation!2012 (h!16950 (rules!9611 thiss!10527)))) e!749753))))

(declare-fun b!1169457 () Bool)

(declare-fun e!749752 () Bool)

(declare-fun tp!334521 () Bool)

(assert (=> b!1169457 (= e!749752 (and e!749751 tp!334521))))

(assert (=> b!1169210 (= tp!334496 e!749752)))

(assert (= b!1169458 b!1169459))

(assert (= b!1169457 b!1169458))

(assert (= (and b!1169210 (is-Cons!11549 (rules!9611 thiss!10527))) b!1169457))

(declare-fun m!1341469 () Bool)

(assert (=> b!1169458 m!1341469))

(declare-fun m!1341471 () Bool)

(assert (=> b!1169458 m!1341471))

(declare-fun b_lambda!34953 () Bool)

(assert (= b_lambda!34951 (or b!1169213 b_lambda!34953)))

(declare-fun bs!285504 () Bool)

(declare-fun d!334449 () Bool)

(assert (= bs!285504 (and d!334449 b!1169213)))

(assert (=> bs!285504 (= (dynLambda!5093 lambda!48026 (h!16949 lt!400355)) (rulesProduceIndividualToken!742 Lexer!1705 (rules!9611 thiss!10527) (h!16949 lt!400355)))))

(assert (=> bs!285504 m!1341269))

(assert (=> b!1169407 d!334449))

(push 1)

(assert (not d!334437))

(assert (not d!334423))

(assert (not b!1169426))

(assert (not d!334407))

(assert (not b!1169280))

(assert (not b!1169437))

(assert (not d!334397))

(assert (not b!1169326))

(assert (not b!1169375))

(assert (not b!1169355))

(assert (not b!1169356))

(assert (not b!1169305))

(assert (not b_next!28535))

(assert (not b_next!28533))

(assert (not d!334421))

(assert (not b!1169416))

(assert (not b!1169457))

(assert (not d!334415))

(assert (not b!1169402))

(assert (not d!334387))

(assert (not b!1169325))

(assert (not b!1169357))

(assert (not b!1169428))

(assert (not b!1169268))

(assert (not b!1169314))

(assert (not bs!285504))

(assert (not b!1169304))

(assert (not d!334447))

(assert (not b!1169438))

(assert (not d!334443))

(assert (not b!1169209))

(assert (not b!1169394))

(assert (not d!334445))

(assert (not b!1169269))

(assert (not b_lambda!34953))

(assert (not b!1169401))

(assert b_and!80729)

(assert (not d!334413))

(assert (not b!1169415))

(assert (not b!1169440))

(assert (not b!1169458))

(assert (not d!334429))

(assert b_and!80731)

(assert (not b!1169360))

(assert (not b!1169408))

(assert (not d!334411))

(assert (not d!334395))

(assert (not b!1169327))

(assert (not b!1169321))

(assert (not b!1169282))

(assert (not b!1169417))

(assert (not b!1169393))

(assert (not d!334409))

(assert (not b!1169398))

(assert (not b!1169439))

(assert (not b!1169395))

(assert (not b!1169374))

(assert (not b!1169322))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80729)

(assert b_and!80731)

(assert (not b_next!28533))

(assert (not b_next!28535))

(check-sat)

(pop 1)

