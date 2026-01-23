; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!134476 () Bool)

(assert start!134476)

(declare-datatypes ((String!17917 0))(
  ( (String!17918 (value!84920 String)) )
))
(declare-datatypes ((C!8090 0))(
  ( (C!8091 (val!4615 Int)) )
))
(declare-datatypes ((List!15086 0))(
  ( (Nil!15020) (Cons!15020 (h!20421 C!8090) (t!130377 List!15086)) )
))
(declare-datatypes ((IArray!10225 0))(
  ( (IArray!10226 (innerList!5170 List!15086)) )
))
(declare-datatypes ((Conc!5110 0))(
  ( (Node!5110 (left!12786 Conc!5110) (right!13116 Conc!5110) (csize!10450 Int) (cheight!5321 Int)) (Leaf!7633 (xs!7851 IArray!10225) (csize!10451 Int)) (Empty!5110) )
))
(declare-datatypes ((BalanceConc!10160 0))(
  ( (BalanceConc!10161 (c!238507 Conc!5110)) )
))
(declare-datatypes ((List!15087 0))(
  ( (Nil!15021) (Cons!15021 (h!20422 (_ BitVec 16)) (t!130378 List!15087)) )
))
(declare-datatypes ((TokenValue!2732 0))(
  ( (FloatLiteralValue!5464 (text!19569 List!15087)) (TokenValueExt!2731 (__x!9254 Int)) (Broken!13660 (value!84921 List!15087)) (Object!2797) (End!2732) (Def!2732) (Underscore!2732) (Match!2732) (Else!2732) (Error!2732) (Case!2732) (If!2732) (Extends!2732) (Abstract!2732) (Class!2732) (Val!2732) (DelimiterValue!5464 (del!2792 List!15087)) (KeywordValue!2738 (value!84922 List!15087)) (CommentValue!5464 (value!84923 List!15087)) (WhitespaceValue!5464 (value!84924 List!15087)) (IndentationValue!2732 (value!84925 List!15087)) (String!17919) (Int32!2732) (Broken!13661 (value!84926 List!15087)) (Boolean!2733) (Unit!23933) (OperatorValue!2735 (op!2792 List!15087)) (IdentifierValue!5464 (value!84927 List!15087)) (IdentifierValue!5465 (value!84928 List!15087)) (WhitespaceValue!5465 (value!84929 List!15087)) (True!5464) (False!5464) (Broken!13662 (value!84930 List!15087)) (Broken!13663 (value!84931 List!15087)) (True!5465) (RightBrace!2732) (RightBracket!2732) (Colon!2732) (Null!2732) (Comma!2732) (LeftBracket!2732) (False!5465) (LeftBrace!2732) (ImaginaryLiteralValue!2732 (text!19570 List!15087)) (StringLiteralValue!8196 (value!84932 List!15087)) (EOFValue!2732 (value!84933 List!15087)) (IdentValue!2732 (value!84934 List!15087)) (DelimiterValue!5465 (value!84935 List!15087)) (DedentValue!2732 (value!84936 List!15087)) (NewLineValue!2732 (value!84937 List!15087)) (IntegerValue!8196 (value!84938 (_ BitVec 32)) (text!19571 List!15087)) (IntegerValue!8197 (value!84939 Int) (text!19572 List!15087)) (Times!2732) (Or!2732) (Equal!2732) (Minus!2732) (Broken!13664 (value!84940 List!15087)) (And!2732) (Div!2732) (LessEqual!2732) (Mod!2732) (Concat!6688) (Not!2732) (Plus!2732) (SpaceValue!2732 (value!84941 List!15087)) (IntegerValue!8198 (value!84942 Int) (text!19573 List!15087)) (StringLiteralValue!8197 (text!19574 List!15087)) (FloatLiteralValue!5465 (text!19575 List!15087)) (BytesLiteralValue!2732 (value!84943 List!15087)) (CommentValue!5465 (value!84944 List!15087)) (StringLiteralValue!8198 (value!84945 List!15087)) (ErrorTokenValue!2732 (msg!2793 List!15087)) )
))
(declare-datatypes ((Regex!3956 0))(
  ( (ElementMatch!3956 (c!238508 C!8090)) (Concat!6689 (regOne!8424 Regex!3956) (regTwo!8424 Regex!3956)) (EmptyExpr!3956) (Star!3956 (reg!4285 Regex!3956)) (EmptyLang!3956) (Union!3956 (regOne!8425 Regex!3956) (regTwo!8425 Regex!3956)) )
))
(declare-datatypes ((TokenValueInjection!5124 0))(
  ( (TokenValueInjection!5125 (toValue!3949 Int) (toChars!3808 Int)) )
))
(declare-datatypes ((Rule!5084 0))(
  ( (Rule!5085 (regex!2642 Regex!3956) (tag!2906 String!17917) (isSeparator!2642 Bool) (transformation!2642 TokenValueInjection!5124)) )
))
(declare-datatypes ((Token!4946 0))(
  ( (Token!4947 (value!84946 TokenValue!2732) (rule!4415 Rule!5084) (size!12308 Int) (originalCharacters!3504 List!15086)) )
))
(declare-datatypes ((List!15088 0))(
  ( (Nil!15022) (Cons!15022 (h!20423 Token!4946) (t!130379 List!15088)) )
))
(declare-datatypes ((IArray!10227 0))(
  ( (IArray!10228 (innerList!5171 List!15088)) )
))
(declare-datatypes ((Conc!5111 0))(
  ( (Node!5111 (left!12787 Conc!5111) (right!13117 Conc!5111) (csize!10452 Int) (cheight!5322 Int)) (Leaf!7634 (xs!7852 IArray!10227) (csize!10453 Int)) (Empty!5111) )
))
(declare-datatypes ((BalanceConc!10162 0))(
  ( (BalanceConc!10163 (c!238509 Conc!5111)) )
))
(declare-datatypes ((List!15089 0))(
  ( (Nil!15023) (Cons!15023 (h!20424 Rule!5084) (t!130380 List!15089)) )
))
(declare-datatypes ((PrintableTokens!1066 0))(
  ( (PrintableTokens!1067 (rules!11519 List!15089) (tokens!2027 BalanceConc!10162)) )
))
(declare-fun thiss!10022 () PrintableTokens!1066)

(declare-fun e!923308 () Bool)

(declare-fun b!1447319 () Bool)

(declare-fun e!923310 () Bool)

(declare-fun tp!408157 () Bool)

(declare-fun inv!20019 (BalanceConc!10162) Bool)

(assert (=> b!1447319 (= e!923310 (and tp!408157 (inv!20019 (tokens!2027 thiss!10022)) e!923308))))

(declare-fun b!1447320 () Bool)

(declare-fun e!923304 () Bool)

(declare-fun other!32 () PrintableTokens!1066)

(declare-fun tp!408156 () Bool)

(declare-fun inv!20020 (Conc!5111) Bool)

(assert (=> b!1447320 (= e!923304 (and (inv!20020 (c!238509 (tokens!2027 other!32))) tp!408156))))

(declare-fun b!1447321 () Bool)

(declare-fun e!923305 () Bool)

(declare-datatypes ((LexerInterface!2298 0))(
  ( (LexerInterfaceExt!2295 (__x!9255 Int)) (Lexer!2296) )
))
(declare-fun rulesInvariant!2136 (LexerInterface!2298 List!15089) Bool)

(assert (=> b!1447321 (= e!923305 (not (rulesInvariant!2136 Lexer!2296 (rules!11519 thiss!10022))))))

(declare-fun b!1447322 () Bool)

(declare-fun tp!408155 () Bool)

(assert (=> b!1447322 (= e!923308 (and (inv!20020 (c!238509 (tokens!2027 thiss!10022))) tp!408155))))

(declare-fun b!1447323 () Bool)

(declare-fun e!923306 () Bool)

(declare-fun e!923309 () Bool)

(assert (=> b!1447323 (= e!923306 e!923309)))

(declare-fun res!655246 () Bool)

(assert (=> b!1447323 (=> (not res!655246) (not e!923309))))

(declare-fun isEmpty!9372 (BalanceConc!10162) Bool)

(assert (=> b!1447323 (= res!655246 (not (isEmpty!9372 (tokens!2027 other!32))))))

(declare-datatypes ((Unit!23934 0))(
  ( (Unit!23935) )
))
(declare-fun lt!499123 () Unit!23934)

(declare-fun lemmaInvariant!338 (PrintableTokens!1066) Unit!23934)

(assert (=> b!1447323 (= lt!499123 (lemmaInvariant!338 thiss!10022))))

(declare-fun lt!499122 () Unit!23934)

(assert (=> b!1447323 (= lt!499122 (lemmaInvariant!338 other!32))))

(declare-fun res!655247 () Bool)

(assert (=> start!134476 (=> (not res!655247) (not e!923306))))

(assert (=> start!134476 (= res!655247 (= (rules!11519 thiss!10022) (rules!11519 other!32)))))

(assert (=> start!134476 e!923306))

(declare-fun inv!20021 (PrintableTokens!1066) Bool)

(assert (=> start!134476 (and (inv!20021 thiss!10022) e!923310)))

(declare-fun e!923307 () Bool)

(assert (=> start!134476 (and (inv!20021 other!32) e!923307)))

(declare-fun b!1447324 () Bool)

(declare-fun res!655245 () Bool)

(assert (=> b!1447324 (=> (not res!655245) (not e!923309))))

(assert (=> b!1447324 (= res!655245 (not (isEmpty!9372 (tokens!2027 thiss!10022))))))

(declare-fun tp!408158 () Bool)

(declare-fun b!1447325 () Bool)

(assert (=> b!1447325 (= e!923307 (and tp!408158 (inv!20019 (tokens!2027 other!32)) e!923304))))

(declare-fun b!1447326 () Bool)

(assert (=> b!1447326 (= e!923309 e!923305)))

(declare-fun res!655248 () Bool)

(assert (=> b!1447326 (=> (not res!655248) (not e!923305))))

(declare-fun isEmpty!9373 (List!15089) Bool)

(assert (=> b!1447326 (= res!655248 (not (isEmpty!9373 (rules!11519 thiss!10022))))))

(declare-fun lt!499121 () Token!4946)

(declare-fun last!188 (BalanceConc!10162) Token!4946)

(assert (=> b!1447326 (= lt!499121 (last!188 (tokens!2027 thiss!10022)))))

(declare-fun lt!499120 () List!15088)

(declare-fun list!5995 (BalanceConc!10162) List!15088)

(assert (=> b!1447326 (= lt!499120 (list!5995 (tokens!2027 thiss!10022)))))

(assert (= (and start!134476 res!655247) b!1447323))

(assert (= (and b!1447323 res!655246) b!1447324))

(assert (= (and b!1447324 res!655245) b!1447326))

(assert (= (and b!1447326 res!655248) b!1447321))

(assert (= b!1447319 b!1447322))

(assert (= start!134476 b!1447319))

(assert (= b!1447325 b!1447320))

(assert (= start!134476 b!1447325))

(declare-fun m!1670141 () Bool)

(assert (=> b!1447326 m!1670141))

(declare-fun m!1670143 () Bool)

(assert (=> b!1447326 m!1670143))

(declare-fun m!1670145 () Bool)

(assert (=> b!1447326 m!1670145))

(declare-fun m!1670147 () Bool)

(assert (=> b!1447322 m!1670147))

(declare-fun m!1670149 () Bool)

(assert (=> b!1447319 m!1670149))

(declare-fun m!1670151 () Bool)

(assert (=> b!1447323 m!1670151))

(declare-fun m!1670153 () Bool)

(assert (=> b!1447323 m!1670153))

(declare-fun m!1670155 () Bool)

(assert (=> b!1447323 m!1670155))

(declare-fun m!1670157 () Bool)

(assert (=> b!1447321 m!1670157))

(declare-fun m!1670159 () Bool)

(assert (=> start!134476 m!1670159))

(declare-fun m!1670161 () Bool)

(assert (=> start!134476 m!1670161))

(declare-fun m!1670163 () Bool)

(assert (=> b!1447325 m!1670163))

(declare-fun m!1670165 () Bool)

(assert (=> b!1447320 m!1670165))

(declare-fun m!1670167 () Bool)

(assert (=> b!1447324 m!1670167))

(push 1)

(assert (not start!134476))

(assert (not b!1447324))

(assert (not b!1447322))

(assert (not b!1447325))

(assert (not b!1447326))

(assert (not b!1447321))

(assert (not b!1447320))

(assert (not b!1447323))

(assert (not b!1447319))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!420145 () Bool)

(assert (=> d!420145 (= (isEmpty!9373 (rules!11519 thiss!10022)) (is-Nil!15023 (rules!11519 thiss!10022)))))

(assert (=> b!1447326 d!420145))

(declare-fun d!420147 () Bool)

(declare-fun lt!499138 () Token!4946)

(declare-fun last!190 (List!15088) Token!4946)

(assert (=> d!420147 (= lt!499138 (last!190 (list!5995 (tokens!2027 thiss!10022))))))

(declare-fun last!191 (Conc!5111) Token!4946)

(assert (=> d!420147 (= lt!499138 (last!191 (c!238509 (tokens!2027 thiss!10022))))))

(assert (=> d!420147 (not (isEmpty!9372 (tokens!2027 thiss!10022)))))

(assert (=> d!420147 (= (last!188 (tokens!2027 thiss!10022)) lt!499138)))

(declare-fun bs!342314 () Bool)

(assert (= bs!342314 d!420147))

(assert (=> bs!342314 m!1670145))

(assert (=> bs!342314 m!1670145))

(declare-fun m!1670197 () Bool)

(assert (=> bs!342314 m!1670197))

(declare-fun m!1670199 () Bool)

(assert (=> bs!342314 m!1670199))

(assert (=> bs!342314 m!1670167))

(assert (=> b!1447326 d!420147))

(declare-fun d!420151 () Bool)

(declare-fun list!5997 (Conc!5111) List!15088)

(assert (=> d!420151 (= (list!5995 (tokens!2027 thiss!10022)) (list!5997 (c!238509 (tokens!2027 thiss!10022))))))

(declare-fun bs!342315 () Bool)

(assert (= bs!342315 d!420151))

(declare-fun m!1670201 () Bool)

(assert (=> bs!342315 m!1670201))

(assert (=> b!1447326 d!420151))

(declare-fun d!420153 () Bool)

(declare-fun res!655267 () Bool)

(declare-fun e!923334 () Bool)

(assert (=> d!420153 (=> (not res!655267) (not e!923334))))

(declare-fun rulesValid!969 (LexerInterface!2298 List!15089) Bool)

(assert (=> d!420153 (= res!655267 (rulesValid!969 Lexer!2296 (rules!11519 thiss!10022)))))

(assert (=> d!420153 (= (rulesInvariant!2136 Lexer!2296 (rules!11519 thiss!10022)) e!923334)))

(declare-fun b!1447353 () Bool)

(declare-datatypes ((List!15094 0))(
  ( (Nil!15028) (Cons!15028 (h!20429 String!17917) (t!130385 List!15094)) )
))
(declare-fun noDuplicateTag!969 (LexerInterface!2298 List!15089 List!15094) Bool)

(assert (=> b!1447353 (= e!923334 (noDuplicateTag!969 Lexer!2296 (rules!11519 thiss!10022) Nil!15028))))

(assert (= (and d!420153 res!655267) b!1447353))

(declare-fun m!1670205 () Bool)

(assert (=> d!420153 m!1670205))

(declare-fun m!1670207 () Bool)

(assert (=> b!1447353 m!1670207))

(assert (=> b!1447321 d!420153))

(declare-fun d!420157 () Bool)

(declare-fun lt!499141 () Bool)

(declare-fun isEmpty!9376 (List!15088) Bool)

(assert (=> d!420157 (= lt!499141 (isEmpty!9376 (list!5995 (tokens!2027 other!32))))))

(declare-fun isEmpty!9377 (Conc!5111) Bool)

(assert (=> d!420157 (= lt!499141 (isEmpty!9377 (c!238509 (tokens!2027 other!32))))))

(assert (=> d!420157 (= (isEmpty!9372 (tokens!2027 other!32)) lt!499141)))

(declare-fun bs!342318 () Bool)

(assert (= bs!342318 d!420157))

(declare-fun m!1670211 () Bool)

(assert (=> bs!342318 m!1670211))

(assert (=> bs!342318 m!1670211))

(declare-fun m!1670213 () Bool)

(assert (=> bs!342318 m!1670213))

(declare-fun m!1670215 () Bool)

(assert (=> bs!342318 m!1670215))

(assert (=> b!1447323 d!420157))

(declare-fun d!420161 () Bool)

(declare-fun e!923346 () Bool)

(assert (=> d!420161 e!923346))

(declare-fun res!655278 () Bool)

(assert (=> d!420161 (=> (not res!655278) (not e!923346))))

(assert (=> d!420161 (= res!655278 (rulesInvariant!2136 Lexer!2296 (rules!11519 thiss!10022)))))

(declare-fun Unit!23939 () Unit!23934)

(assert (=> d!420161 (= (lemmaInvariant!338 thiss!10022) Unit!23939)))

(declare-fun b!1447370 () Bool)

(declare-fun res!655279 () Bool)

(assert (=> b!1447370 (=> (not res!655279) (not e!923346))))

(declare-fun rulesProduceEachTokenIndividually!854 (LexerInterface!2298 List!15089 BalanceConc!10162) Bool)

(assert (=> b!1447370 (= res!655279 (rulesProduceEachTokenIndividually!854 Lexer!2296 (rules!11519 thiss!10022) (tokens!2027 thiss!10022)))))

(declare-fun b!1447371 () Bool)

(declare-fun separableTokens!238 (LexerInterface!2298 BalanceConc!10162 List!15089) Bool)

(assert (=> b!1447371 (= e!923346 (separableTokens!238 Lexer!2296 (tokens!2027 thiss!10022) (rules!11519 thiss!10022)))))

(assert (= (and d!420161 res!655278) b!1447370))

(assert (= (and b!1447370 res!655279) b!1447371))

(assert (=> d!420161 m!1670157))

(declare-fun m!1670229 () Bool)

(assert (=> b!1447370 m!1670229))

(declare-fun m!1670231 () Bool)

(assert (=> b!1447371 m!1670231))

(assert (=> b!1447323 d!420161))

(declare-fun d!420169 () Bool)

(declare-fun e!923347 () Bool)

(assert (=> d!420169 e!923347))

(declare-fun res!655280 () Bool)

(assert (=> d!420169 (=> (not res!655280) (not e!923347))))

(assert (=> d!420169 (= res!655280 (rulesInvariant!2136 Lexer!2296 (rules!11519 other!32)))))

(declare-fun Unit!23940 () Unit!23934)

(assert (=> d!420169 (= (lemmaInvariant!338 other!32) Unit!23940)))

(declare-fun b!1447372 () Bool)

(declare-fun res!655281 () Bool)

(assert (=> b!1447372 (=> (not res!655281) (not e!923347))))

(assert (=> b!1447372 (= res!655281 (rulesProduceEachTokenIndividually!854 Lexer!2296 (rules!11519 other!32) (tokens!2027 other!32)))))

(declare-fun b!1447373 () Bool)

(assert (=> b!1447373 (= e!923347 (separableTokens!238 Lexer!2296 (tokens!2027 other!32) (rules!11519 other!32)))))

(assert (= (and d!420169 res!655280) b!1447372))

(assert (= (and b!1447372 res!655281) b!1447373))

(declare-fun m!1670233 () Bool)

(assert (=> d!420169 m!1670233))

(declare-fun m!1670235 () Bool)

(assert (=> b!1447372 m!1670235))

(declare-fun m!1670237 () Bool)

(assert (=> b!1447373 m!1670237))

(assert (=> b!1447323 d!420169))

(declare-fun d!420171 () Bool)

(declare-fun c!238518 () Bool)

(assert (=> d!420171 (= c!238518 (is-Node!5111 (c!238509 (tokens!2027 thiss!10022))))))

(declare-fun e!923352 () Bool)

(assert (=> d!420171 (= (inv!20020 (c!238509 (tokens!2027 thiss!10022))) e!923352)))

(declare-fun b!1447380 () Bool)

(declare-fun inv!20025 (Conc!5111) Bool)

(assert (=> b!1447380 (= e!923352 (inv!20025 (c!238509 (tokens!2027 thiss!10022))))))

(declare-fun b!1447381 () Bool)

(declare-fun e!923353 () Bool)

(assert (=> b!1447381 (= e!923352 e!923353)))

(declare-fun res!655284 () Bool)

(assert (=> b!1447381 (= res!655284 (not (is-Leaf!7634 (c!238509 (tokens!2027 thiss!10022)))))))

(assert (=> b!1447381 (=> res!655284 e!923353)))

(declare-fun b!1447382 () Bool)

(declare-fun inv!20026 (Conc!5111) Bool)

(assert (=> b!1447382 (= e!923353 (inv!20026 (c!238509 (tokens!2027 thiss!10022))))))

(assert (= (and d!420171 c!238518) b!1447380))

(assert (= (and d!420171 (not c!238518)) b!1447381))

(assert (= (and b!1447381 (not res!655284)) b!1447382))

(declare-fun m!1670239 () Bool)

(assert (=> b!1447380 m!1670239))

(declare-fun m!1670241 () Bool)

(assert (=> b!1447382 m!1670241))

(assert (=> b!1447322 d!420171))

(declare-fun d!420173 () Bool)

(declare-fun lt!499145 () Bool)

(assert (=> d!420173 (= lt!499145 (isEmpty!9376 (list!5995 (tokens!2027 thiss!10022))))))

(assert (=> d!420173 (= lt!499145 (isEmpty!9377 (c!238509 (tokens!2027 thiss!10022))))))

(assert (=> d!420173 (= (isEmpty!9372 (tokens!2027 thiss!10022)) lt!499145)))

(declare-fun bs!342320 () Bool)

(assert (= bs!342320 d!420173))

(assert (=> bs!342320 m!1670145))

(assert (=> bs!342320 m!1670145))

(declare-fun m!1670243 () Bool)

(assert (=> bs!342320 m!1670243))

(declare-fun m!1670245 () Bool)

(assert (=> bs!342320 m!1670245))

(assert (=> b!1447324 d!420173))

(declare-fun d!420175 () Bool)

(declare-fun isBalanced!1524 (Conc!5111) Bool)

(assert (=> d!420175 (= (inv!20019 (tokens!2027 thiss!10022)) (isBalanced!1524 (c!238509 (tokens!2027 thiss!10022))))))

(declare-fun bs!342321 () Bool)

(assert (= bs!342321 d!420175))

(declare-fun m!1670247 () Bool)

(assert (=> bs!342321 m!1670247))

(assert (=> b!1447319 d!420175))

(declare-fun d!420177 () Bool)

(declare-fun c!238519 () Bool)

(assert (=> d!420177 (= c!238519 (is-Node!5111 (c!238509 (tokens!2027 other!32))))))

(declare-fun e!923354 () Bool)

(assert (=> d!420177 (= (inv!20020 (c!238509 (tokens!2027 other!32))) e!923354)))

(declare-fun b!1447383 () Bool)

(assert (=> b!1447383 (= e!923354 (inv!20025 (c!238509 (tokens!2027 other!32))))))

(declare-fun b!1447384 () Bool)

(declare-fun e!923355 () Bool)

(assert (=> b!1447384 (= e!923354 e!923355)))

(declare-fun res!655285 () Bool)

(assert (=> b!1447384 (= res!655285 (not (is-Leaf!7634 (c!238509 (tokens!2027 other!32)))))))

(assert (=> b!1447384 (=> res!655285 e!923355)))

(declare-fun b!1447385 () Bool)

(assert (=> b!1447385 (= e!923355 (inv!20026 (c!238509 (tokens!2027 other!32))))))

(assert (= (and d!420177 c!238519) b!1447383))

(assert (= (and d!420177 (not c!238519)) b!1447384))

(assert (= (and b!1447384 (not res!655285)) b!1447385))

(declare-fun m!1670249 () Bool)

(assert (=> b!1447383 m!1670249))

(declare-fun m!1670251 () Bool)

(assert (=> b!1447385 m!1670251))

(assert (=> b!1447320 d!420177))

(declare-fun d!420179 () Bool)

(declare-fun res!655292 () Bool)

(declare-fun e!923358 () Bool)

(assert (=> d!420179 (=> (not res!655292) (not e!923358))))

(assert (=> d!420179 (= res!655292 (not (isEmpty!9373 (rules!11519 thiss!10022))))))

(assert (=> d!420179 (= (inv!20021 thiss!10022) e!923358)))

(declare-fun b!1447392 () Bool)

(declare-fun res!655293 () Bool)

(assert (=> b!1447392 (=> (not res!655293) (not e!923358))))

(assert (=> b!1447392 (= res!655293 (rulesInvariant!2136 Lexer!2296 (rules!11519 thiss!10022)))))

(declare-fun b!1447393 () Bool)

(declare-fun res!655294 () Bool)

(assert (=> b!1447393 (=> (not res!655294) (not e!923358))))

(assert (=> b!1447393 (= res!655294 (rulesProduceEachTokenIndividually!854 Lexer!2296 (rules!11519 thiss!10022) (tokens!2027 thiss!10022)))))

(declare-fun b!1447394 () Bool)

(assert (=> b!1447394 (= e!923358 (separableTokens!238 Lexer!2296 (tokens!2027 thiss!10022) (rules!11519 thiss!10022)))))

(assert (= (and d!420179 res!655292) b!1447392))

(assert (= (and b!1447392 res!655293) b!1447393))

(assert (= (and b!1447393 res!655294) b!1447394))

(assert (=> d!420179 m!1670141))

(assert (=> b!1447392 m!1670157))

(assert (=> b!1447393 m!1670229))

(assert (=> b!1447394 m!1670231))

(assert (=> start!134476 d!420179))

(declare-fun d!420181 () Bool)

(declare-fun res!655295 () Bool)

(declare-fun e!923359 () Bool)

(assert (=> d!420181 (=> (not res!655295) (not e!923359))))

(assert (=> d!420181 (= res!655295 (not (isEmpty!9373 (rules!11519 other!32))))))

(assert (=> d!420181 (= (inv!20021 other!32) e!923359)))

(declare-fun b!1447395 () Bool)

(declare-fun res!655296 () Bool)

(assert (=> b!1447395 (=> (not res!655296) (not e!923359))))

(assert (=> b!1447395 (= res!655296 (rulesInvariant!2136 Lexer!2296 (rules!11519 other!32)))))

(declare-fun b!1447396 () Bool)

(declare-fun res!655297 () Bool)

(assert (=> b!1447396 (=> (not res!655297) (not e!923359))))

(assert (=> b!1447396 (= res!655297 (rulesProduceEachTokenIndividually!854 Lexer!2296 (rules!11519 other!32) (tokens!2027 other!32)))))

(declare-fun b!1447397 () Bool)

(assert (=> b!1447397 (= e!923359 (separableTokens!238 Lexer!2296 (tokens!2027 other!32) (rules!11519 other!32)))))

(assert (= (and d!420181 res!655295) b!1447395))

(assert (= (and b!1447395 res!655296) b!1447396))

(assert (= (and b!1447396 res!655297) b!1447397))

(declare-fun m!1670253 () Bool)

(assert (=> d!420181 m!1670253))

(assert (=> b!1447395 m!1670233))

(assert (=> b!1447396 m!1670235))

(assert (=> b!1447397 m!1670237))

(assert (=> start!134476 d!420181))

(declare-fun d!420183 () Bool)

(assert (=> d!420183 (= (inv!20019 (tokens!2027 other!32)) (isBalanced!1524 (c!238509 (tokens!2027 other!32))))))

(declare-fun bs!342322 () Bool)

(assert (= bs!342322 d!420183))

(declare-fun m!1670255 () Bool)

(assert (=> bs!342322 m!1670255))

(assert (=> b!1447325 d!420183))

(declare-fun tp!408177 () Bool)

(declare-fun b!1447406 () Bool)

(declare-fun tp!408178 () Bool)

(declare-fun e!923364 () Bool)

(assert (=> b!1447406 (= e!923364 (and (inv!20020 (left!12787 (c!238509 (tokens!2027 thiss!10022)))) tp!408177 (inv!20020 (right!13117 (c!238509 (tokens!2027 thiss!10022)))) tp!408178))))

(declare-fun b!1447408 () Bool)

(declare-fun e!923365 () Bool)

(declare-fun tp!408179 () Bool)

(assert (=> b!1447408 (= e!923365 tp!408179)))

(declare-fun b!1447407 () Bool)

(declare-fun inv!20027 (IArray!10227) Bool)

(assert (=> b!1447407 (= e!923364 (and (inv!20027 (xs!7852 (c!238509 (tokens!2027 thiss!10022)))) e!923365))))

(assert (=> b!1447322 (= tp!408155 (and (inv!20020 (c!238509 (tokens!2027 thiss!10022))) e!923364))))

(assert (= (and b!1447322 (is-Node!5111 (c!238509 (tokens!2027 thiss!10022)))) b!1447406))

(assert (= b!1447407 b!1447408))

(assert (= (and b!1447322 (is-Leaf!7634 (c!238509 (tokens!2027 thiss!10022)))) b!1447407))

(declare-fun m!1670257 () Bool)

(assert (=> b!1447406 m!1670257))

(declare-fun m!1670259 () Bool)

(assert (=> b!1447406 m!1670259))

(declare-fun m!1670261 () Bool)

(assert (=> b!1447407 m!1670261))

(assert (=> b!1447322 m!1670147))

(declare-fun b!1447419 () Bool)

(declare-fun b_free!35871 () Bool)

(declare-fun b_next!36575 () Bool)

(assert (=> b!1447419 (= b_free!35871 (not b_next!36575))))

(declare-fun tp!408188 () Bool)

(declare-fun b_and!97935 () Bool)

(assert (=> b!1447419 (= tp!408188 b_and!97935)))

(declare-fun b_free!35873 () Bool)

(declare-fun b_next!36577 () Bool)

(assert (=> b!1447419 (= b_free!35873 (not b_next!36577))))

(declare-fun tp!408191 () Bool)

(declare-fun b_and!97937 () Bool)

(assert (=> b!1447419 (= tp!408191 b_and!97937)))

(declare-fun e!923374 () Bool)

(assert (=> b!1447419 (= e!923374 (and tp!408188 tp!408191))))

(declare-fun b!1447418 () Bool)

(declare-fun tp!408190 () Bool)

(declare-fun e!923377 () Bool)

(declare-fun inv!20016 (String!17917) Bool)

(declare-fun inv!20028 (TokenValueInjection!5124) Bool)

(assert (=> b!1447418 (= e!923377 (and tp!408190 (inv!20016 (tag!2906 (h!20424 (rules!11519 thiss!10022)))) (inv!20028 (transformation!2642 (h!20424 (rules!11519 thiss!10022)))) e!923374))))

(declare-fun b!1447417 () Bool)

(declare-fun e!923376 () Bool)

(declare-fun tp!408189 () Bool)

(assert (=> b!1447417 (= e!923376 (and e!923377 tp!408189))))

(assert (=> b!1447319 (= tp!408157 e!923376)))

(assert (= b!1447418 b!1447419))

(assert (= b!1447417 b!1447418))

(assert (= (and b!1447319 (is-Cons!15023 (rules!11519 thiss!10022))) b!1447417))

(declare-fun m!1670263 () Bool)

(assert (=> b!1447418 m!1670263))

(declare-fun m!1670265 () Bool)

(assert (=> b!1447418 m!1670265))

(declare-fun e!923378 () Bool)

(declare-fun tp!408192 () Bool)

(declare-fun tp!408193 () Bool)

(declare-fun b!1447420 () Bool)

(assert (=> b!1447420 (= e!923378 (and (inv!20020 (left!12787 (c!238509 (tokens!2027 other!32)))) tp!408192 (inv!20020 (right!13117 (c!238509 (tokens!2027 other!32)))) tp!408193))))

(declare-fun b!1447422 () Bool)

(declare-fun e!923379 () Bool)

(declare-fun tp!408194 () Bool)

(assert (=> b!1447422 (= e!923379 tp!408194)))

(declare-fun b!1447421 () Bool)

(assert (=> b!1447421 (= e!923378 (and (inv!20027 (xs!7852 (c!238509 (tokens!2027 other!32)))) e!923379))))

(assert (=> b!1447320 (= tp!408156 (and (inv!20020 (c!238509 (tokens!2027 other!32))) e!923378))))

(assert (= (and b!1447320 (is-Node!5111 (c!238509 (tokens!2027 other!32)))) b!1447420))

(assert (= b!1447421 b!1447422))

(assert (= (and b!1447320 (is-Leaf!7634 (c!238509 (tokens!2027 other!32)))) b!1447421))

(declare-fun m!1670267 () Bool)

(assert (=> b!1447420 m!1670267))

(declare-fun m!1670269 () Bool)

(assert (=> b!1447420 m!1670269))

(declare-fun m!1670271 () Bool)

(assert (=> b!1447421 m!1670271))

(assert (=> b!1447320 m!1670165))

(declare-fun b!1447425 () Bool)

(declare-fun b_free!35875 () Bool)

(declare-fun b_next!36579 () Bool)

(assert (=> b!1447425 (= b_free!35875 (not b_next!36579))))

(declare-fun tp!408195 () Bool)

(declare-fun b_and!97939 () Bool)

(assert (=> b!1447425 (= tp!408195 b_and!97939)))

(declare-fun b_free!35877 () Bool)

(declare-fun b_next!36581 () Bool)

(assert (=> b!1447425 (= b_free!35877 (not b_next!36581))))

(declare-fun tp!408198 () Bool)

(declare-fun b_and!97941 () Bool)

(assert (=> b!1447425 (= tp!408198 b_and!97941)))

(declare-fun e!923380 () Bool)

(assert (=> b!1447425 (= e!923380 (and tp!408195 tp!408198))))

(declare-fun b!1447424 () Bool)

(declare-fun e!923383 () Bool)

(declare-fun tp!408197 () Bool)

(assert (=> b!1447424 (= e!923383 (and tp!408197 (inv!20016 (tag!2906 (h!20424 (rules!11519 other!32)))) (inv!20028 (transformation!2642 (h!20424 (rules!11519 other!32)))) e!923380))))

(declare-fun b!1447423 () Bool)

(declare-fun e!923382 () Bool)

(declare-fun tp!408196 () Bool)

(assert (=> b!1447423 (= e!923382 (and e!923383 tp!408196))))

(assert (=> b!1447325 (= tp!408158 e!923382)))

(assert (= b!1447424 b!1447425))

(assert (= b!1447423 b!1447424))

(assert (= (and b!1447325 (is-Cons!15023 (rules!11519 other!32))) b!1447423))

(declare-fun m!1670273 () Bool)

(assert (=> b!1447424 m!1670273))

(declare-fun m!1670275 () Bool)

(assert (=> b!1447424 m!1670275))

(push 1)

(assert (not d!420181))

(assert b_and!97937)

(assert (not b!1447420))

(assert (not b!1447372))

(assert (not b!1447385))

(assert (not d!420173))

(assert (not b!1447380))

(assert (not b!1447394))

(assert (not b!1447373))

(assert (not d!420157))

(assert (not d!420153))

(assert (not b!1447421))

(assert (not b!1447353))

(assert (not d!420147))

(assert (not d!420161))

(assert (not b!1447382))

(assert (not b!1447408))

(assert (not d!420169))

(assert (not b_next!36575))

(assert (not b!1447397))

(assert (not d!420151))

(assert (not b!1447418))

(assert (not b!1447422))

(assert (not b!1447393))

(assert b_and!97939)

(assert (not b!1447371))

(assert (not b!1447406))

(assert (not b!1447322))

(assert (not b!1447370))

(assert (not b!1447407))

(assert (not b!1447396))

(assert (not b_next!36577))

(assert (not d!420179))

(assert (not b_next!36581))

(assert b_and!97935)

(assert (not b!1447383))

(assert (not b!1447423))

(assert (not b!1447424))

(assert (not b!1447320))

(assert (not b!1447417))

(assert (not d!420183))

(assert (not b_next!36579))

(assert (not b!1447392))

(assert (not d!420175))

(assert b_and!97941)

(assert (not b!1447395))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!36575))

(assert b_and!97937)

(assert b_and!97939)

(assert (not b_next!36577))

(assert (not b_next!36579))

(assert b_and!97941)

(assert (not b_next!36581))

(assert b_and!97935)

(check-sat)

(pop 1)

