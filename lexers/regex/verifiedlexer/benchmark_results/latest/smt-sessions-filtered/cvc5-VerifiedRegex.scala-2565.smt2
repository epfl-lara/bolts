; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!137526 () Bool)

(assert start!137526)

(declare-fun tp!414096 () Bool)

(declare-fun b!1469192 () Bool)

(declare-datatypes ((List!15429 0))(
  ( (Nil!15363) (Cons!15363 (h!20764 (_ BitVec 16)) (t!135348 List!15429)) )
))
(declare-datatypes ((TokenValue!2818 0))(
  ( (FloatLiteralValue!5636 (text!20171 List!15429)) (TokenValueExt!2817 (__x!9426 Int)) (Broken!14090 (value!87371 List!15429)) (Object!2883) (End!2818) (Def!2818) (Underscore!2818) (Match!2818) (Else!2818) (Error!2818) (Case!2818) (If!2818) (Extends!2818) (Abstract!2818) (Class!2818) (Val!2818) (DelimiterValue!5636 (del!2878 List!15429)) (KeywordValue!2824 (value!87372 List!15429)) (CommentValue!5636 (value!87373 List!15429)) (WhitespaceValue!5636 (value!87374 List!15429)) (IndentationValue!2818 (value!87375 List!15429)) (String!18347) (Int32!2818) (Broken!14091 (value!87376 List!15429)) (Boolean!2819) (Unit!25089) (OperatorValue!2821 (op!2878 List!15429)) (IdentifierValue!5636 (value!87377 List!15429)) (IdentifierValue!5637 (value!87378 List!15429)) (WhitespaceValue!5637 (value!87379 List!15429)) (True!5636) (False!5636) (Broken!14092 (value!87380 List!15429)) (Broken!14093 (value!87381 List!15429)) (True!5637) (RightBrace!2818) (RightBracket!2818) (Colon!2818) (Null!2818) (Comma!2818) (LeftBracket!2818) (False!5637) (LeftBrace!2818) (ImaginaryLiteralValue!2818 (text!20172 List!15429)) (StringLiteralValue!8454 (value!87382 List!15429)) (EOFValue!2818 (value!87383 List!15429)) (IdentValue!2818 (value!87384 List!15429)) (DelimiterValue!5637 (value!87385 List!15429)) (DedentValue!2818 (value!87386 List!15429)) (NewLineValue!2818 (value!87387 List!15429)) (IntegerValue!8454 (value!87388 (_ BitVec 32)) (text!20173 List!15429)) (IntegerValue!8455 (value!87389 Int) (text!20174 List!15429)) (Times!2818) (Or!2818) (Equal!2818) (Minus!2818) (Broken!14094 (value!87390 List!15429)) (And!2818) (Div!2818) (LessEqual!2818) (Mod!2818) (Concat!6860) (Not!2818) (Plus!2818) (SpaceValue!2818 (value!87391 List!15429)) (IntegerValue!8456 (value!87392 Int) (text!20175 List!15429)) (StringLiteralValue!8455 (text!20176 List!15429)) (FloatLiteralValue!5637 (text!20177 List!15429)) (BytesLiteralValue!2818 (value!87393 List!15429)) (CommentValue!5637 (value!87394 List!15429)) (StringLiteralValue!8456 (value!87395 List!15429)) (ErrorTokenValue!2818 (msg!2879 List!15429)) )
))
(declare-datatypes ((C!8262 0))(
  ( (C!8263 (val!4701 Int)) )
))
(declare-datatypes ((Regex!4042 0))(
  ( (ElementMatch!4042 (c!242146 C!8262)) (Concat!6861 (regOne!8596 Regex!4042) (regTwo!8596 Regex!4042)) (EmptyExpr!4042) (Star!4042 (reg!4371 Regex!4042)) (EmptyLang!4042) (Union!4042 (regOne!8597 Regex!4042) (regTwo!8597 Regex!4042)) )
))
(declare-datatypes ((String!18348 0))(
  ( (String!18349 (value!87396 String)) )
))
(declare-datatypes ((List!15430 0))(
  ( (Nil!15364) (Cons!15364 (h!20765 C!8262) (t!135349 List!15430)) )
))
(declare-datatypes ((IArray!10485 0))(
  ( (IArray!10486 (innerList!5300 List!15430)) )
))
(declare-datatypes ((Conc!5240 0))(
  ( (Node!5240 (left!13011 Conc!5240) (right!13341 Conc!5240) (csize!10710 Int) (cheight!5451 Int)) (Leaf!7806 (xs!7995 IArray!10485) (csize!10711 Int)) (Empty!5240) )
))
(declare-datatypes ((BalanceConc!10420 0))(
  ( (BalanceConc!10421 (c!242147 Conc!5240)) )
))
(declare-datatypes ((TokenValueInjection!5296 0))(
  ( (TokenValueInjection!5297 (toValue!4047 Int) (toChars!3906 Int)) )
))
(declare-datatypes ((Rule!5256 0))(
  ( (Rule!5257 (regex!2728 Regex!4042) (tag!2992 String!18348) (isSeparator!2728 Bool) (transformation!2728 TokenValueInjection!5296)) )
))
(declare-datatypes ((Token!5118 0))(
  ( (Token!5119 (value!87397 TokenValue!2818) (rule!4505 Rule!5256) (size!12511 Int) (originalCharacters!3590 List!15430)) )
))
(declare-datatypes ((List!15431 0))(
  ( (Nil!15365) (Cons!15365 (h!20766 Token!5118) (t!135350 List!15431)) )
))
(declare-datatypes ((IArray!10487 0))(
  ( (IArray!10488 (innerList!5301 List!15431)) )
))
(declare-datatypes ((Conc!5241 0))(
  ( (Node!5241 (left!13012 Conc!5241) (right!13342 Conc!5241) (csize!10712 Int) (cheight!5452 Int)) (Leaf!7807 (xs!7996 IArray!10487) (csize!10713 Int)) (Empty!5241) )
))
(declare-datatypes ((BalanceConc!10422 0))(
  ( (BalanceConc!10423 (c!242148 Conc!5241)) )
))
(declare-datatypes ((List!15432 0))(
  ( (Nil!15366) (Cons!15366 (h!20767 Rule!5256) (t!135351 List!15432)) )
))
(declare-datatypes ((PrintableTokens!1154 0))(
  ( (PrintableTokens!1155 (rules!11771 List!15432) (tokens!2137 BalanceConc!10422)) )
))
(declare-fun thiss!9992 () PrintableTokens!1154)

(declare-fun e!937923 () Bool)

(declare-fun e!937924 () Bool)

(declare-fun inv!20556 (BalanceConc!10422) Bool)

(assert (=> b!1469192 (= e!937924 (and tp!414096 (inv!20556 (tokens!2137 thiss!9992)) e!937923))))

(declare-fun b!1469190 () Bool)

(declare-fun res!664476 () Bool)

(declare-fun e!937925 () Bool)

(assert (=> b!1469190 (=> (not res!664476) (not e!937925))))

(declare-datatypes ((LexerInterface!2384 0))(
  ( (LexerInterfaceExt!2381 (__x!9427 Int)) (Lexer!2382) )
))
(declare-fun rulesProduceEachTokenIndividually!887 (LexerInterface!2384 List!15432 BalanceConc!10422) Bool)

(assert (=> b!1469190 (= res!664476 (rulesProduceEachTokenIndividually!887 Lexer!2382 (rules!11771 thiss!9992) (tokens!2137 thiss!9992)))))

(declare-fun b!1469191 () Bool)

(declare-fun isEmpty!9613 (List!15432) Bool)

(assert (=> b!1469191 (= e!937925 (isEmpty!9613 (rules!11771 thiss!9992)))))

(declare-fun b!1469193 () Bool)

(declare-fun tp!414095 () Bool)

(declare-fun inv!20557 (Conc!5241) Bool)

(assert (=> b!1469193 (= e!937923 (and (inv!20557 (c!242148 (tokens!2137 thiss!9992))) tp!414095))))

(declare-fun res!664477 () Bool)

(assert (=> start!137526 (=> (not res!664477) (not e!937925))))

(declare-fun rulesInvariant!2173 (LexerInterface!2384 List!15432) Bool)

(assert (=> start!137526 (= res!664477 (rulesInvariant!2173 Lexer!2382 (rules!11771 thiss!9992)))))

(assert (=> start!137526 e!937925))

(declare-fun inv!20558 (PrintableTokens!1154) Bool)

(assert (=> start!137526 (and (inv!20558 thiss!9992) e!937924)))

(assert (= (and start!137526 res!664477) b!1469190))

(assert (= (and b!1469190 res!664476) b!1469191))

(assert (= b!1469192 b!1469193))

(assert (= start!137526 b!1469192))

(declare-fun m!1713717 () Bool)

(assert (=> b!1469191 m!1713717))

(declare-fun m!1713719 () Bool)

(assert (=> b!1469193 m!1713719))

(declare-fun m!1713721 () Bool)

(assert (=> start!137526 m!1713721))

(declare-fun m!1713723 () Bool)

(assert (=> start!137526 m!1713723))

(declare-fun m!1713725 () Bool)

(assert (=> b!1469192 m!1713725))

(declare-fun m!1713727 () Bool)

(assert (=> b!1469190 m!1713727))

(push 1)

(assert (not b!1469190))

(assert (not b!1469192))

(assert (not b!1469193))

(assert (not b!1469191))

(assert (not start!137526))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!430936 () Bool)

(declare-fun c!242154 () Bool)

(assert (=> d!430936 (= c!242154 (is-Node!5241 (c!242148 (tokens!2137 thiss!9992))))))

(declare-fun e!937939 () Bool)

(assert (=> d!430936 (= (inv!20557 (c!242148 (tokens!2137 thiss!9992))) e!937939)))

(declare-fun b!1469212 () Bool)

(declare-fun inv!20562 (Conc!5241) Bool)

(assert (=> b!1469212 (= e!937939 (inv!20562 (c!242148 (tokens!2137 thiss!9992))))))

(declare-fun b!1469213 () Bool)

(declare-fun e!937940 () Bool)

(assert (=> b!1469213 (= e!937939 e!937940)))

(declare-fun res!664486 () Bool)

(assert (=> b!1469213 (= res!664486 (not (is-Leaf!7807 (c!242148 (tokens!2137 thiss!9992)))))))

(assert (=> b!1469213 (=> res!664486 e!937940)))

(declare-fun b!1469214 () Bool)

(declare-fun inv!20563 (Conc!5241) Bool)

(assert (=> b!1469214 (= e!937940 (inv!20563 (c!242148 (tokens!2137 thiss!9992))))))

(assert (= (and d!430936 c!242154) b!1469212))

(assert (= (and d!430936 (not c!242154)) b!1469213))

(assert (= (and b!1469213 (not res!664486)) b!1469214))

(declare-fun m!1713741 () Bool)

(assert (=> b!1469212 m!1713741))

(declare-fun m!1713743 () Bool)

(assert (=> b!1469214 m!1713743))

(assert (=> b!1469193 d!430936))

(declare-fun b!1469249 () Bool)

(declare-fun e!937964 () Bool)

(assert (=> b!1469249 (= e!937964 true)))

(declare-fun b!1469248 () Bool)

(declare-fun e!937963 () Bool)

(assert (=> b!1469248 (= e!937963 e!937964)))

(declare-fun b!1469247 () Bool)

(declare-fun e!937962 () Bool)

(assert (=> b!1469247 (= e!937962 e!937963)))

(declare-fun d!430940 () Bool)

(assert (=> d!430940 e!937962))

(assert (= b!1469248 b!1469249))

(assert (= b!1469247 b!1469248))

(assert (= (and d!430940 (is-Cons!15366 (rules!11771 thiss!9992))) b!1469247))

(declare-fun order!9207 () Int)

(declare-fun order!9209 () Int)

(declare-fun lambda!63400 () Int)

(declare-fun dynLambda!6973 (Int Int) Int)

(declare-fun dynLambda!6974 (Int Int) Int)

(assert (=> b!1469249 (< (dynLambda!6973 order!9207 (toValue!4047 (transformation!2728 (h!20767 (rules!11771 thiss!9992))))) (dynLambda!6974 order!9209 lambda!63400))))

(declare-fun order!9211 () Int)

(declare-fun dynLambda!6975 (Int Int) Int)

(assert (=> b!1469249 (< (dynLambda!6975 order!9211 (toChars!3906 (transformation!2728 (h!20767 (rules!11771 thiss!9992))))) (dynLambda!6974 order!9209 lambda!63400))))

(assert (=> d!430940 true))

(declare-fun e!937955 () Bool)

(assert (=> d!430940 e!937955))

(declare-fun res!664504 () Bool)

(assert (=> d!430940 (=> (not res!664504) (not e!937955))))

(declare-fun lt!511230 () Bool)

(declare-fun forall!3749 (List!15431 Int) Bool)

(declare-fun list!6149 (BalanceConc!10422) List!15431)

(assert (=> d!430940 (= res!664504 (= lt!511230 (forall!3749 (list!6149 (tokens!2137 thiss!9992)) lambda!63400)))))

(declare-fun forall!3750 (BalanceConc!10422 Int) Bool)

(assert (=> d!430940 (= lt!511230 (forall!3750 (tokens!2137 thiss!9992) lambda!63400))))

(assert (=> d!430940 (not (isEmpty!9613 (rules!11771 thiss!9992)))))

(assert (=> d!430940 (= (rulesProduceEachTokenIndividually!887 Lexer!2382 (rules!11771 thiss!9992) (tokens!2137 thiss!9992)) lt!511230)))

(declare-fun b!1469238 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!753 (LexerInterface!2384 List!15432 List!15431) Bool)

(assert (=> b!1469238 (= e!937955 (= lt!511230 (rulesProduceEachTokenIndividuallyList!753 Lexer!2382 (rules!11771 thiss!9992) (list!6149 (tokens!2137 thiss!9992)))))))

(assert (= (and d!430940 res!664504) b!1469238))

(declare-fun m!1713757 () Bool)

(assert (=> d!430940 m!1713757))

(assert (=> d!430940 m!1713757))

(declare-fun m!1713759 () Bool)

(assert (=> d!430940 m!1713759))

(declare-fun m!1713761 () Bool)

(assert (=> d!430940 m!1713761))

(assert (=> d!430940 m!1713717))

(assert (=> b!1469238 m!1713757))

(assert (=> b!1469238 m!1713757))

(declare-fun m!1713763 () Bool)

(assert (=> b!1469238 m!1713763))

(assert (=> b!1469190 d!430940))

(declare-fun d!430950 () Bool)

(assert (=> d!430950 (= (isEmpty!9613 (rules!11771 thiss!9992)) (is-Nil!15366 (rules!11771 thiss!9992)))))

(assert (=> b!1469191 d!430950))

(declare-fun d!430952 () Bool)

(declare-fun isBalanced!1565 (Conc!5241) Bool)

(assert (=> d!430952 (= (inv!20556 (tokens!2137 thiss!9992)) (isBalanced!1565 (c!242148 (tokens!2137 thiss!9992))))))

(declare-fun bs!344944 () Bool)

(assert (= bs!344944 d!430952))

(declare-fun m!1713765 () Bool)

(assert (=> bs!344944 m!1713765))

(assert (=> b!1469192 d!430952))

(declare-fun d!430954 () Bool)

(declare-fun res!664507 () Bool)

(declare-fun e!937967 () Bool)

(assert (=> d!430954 (=> (not res!664507) (not e!937967))))

(declare-fun rulesValid!994 (LexerInterface!2384 List!15432) Bool)

(assert (=> d!430954 (= res!664507 (rulesValid!994 Lexer!2382 (rules!11771 thiss!9992)))))

(assert (=> d!430954 (= (rulesInvariant!2173 Lexer!2382 (rules!11771 thiss!9992)) e!937967)))

(declare-fun b!1469254 () Bool)

(declare-datatypes ((List!15437 0))(
  ( (Nil!15371) (Cons!15371 (h!20772 String!18348) (t!135362 List!15437)) )
))
(declare-fun noDuplicateTag!994 (LexerInterface!2384 List!15432 List!15437) Bool)

(assert (=> b!1469254 (= e!937967 (noDuplicateTag!994 Lexer!2382 (rules!11771 thiss!9992) Nil!15371))))

(assert (= (and d!430954 res!664507) b!1469254))

(declare-fun m!1713767 () Bool)

(assert (=> d!430954 m!1713767))

(declare-fun m!1713769 () Bool)

(assert (=> b!1469254 m!1713769))

(assert (=> start!137526 d!430954))

(declare-fun d!430956 () Bool)

(declare-fun res!664514 () Bool)

(declare-fun e!937970 () Bool)

(assert (=> d!430956 (=> (not res!664514) (not e!937970))))

(assert (=> d!430956 (= res!664514 (not (isEmpty!9613 (rules!11771 thiss!9992))))))

(assert (=> d!430956 (= (inv!20558 thiss!9992) e!937970)))

(declare-fun b!1469261 () Bool)

(declare-fun res!664515 () Bool)

(assert (=> b!1469261 (=> (not res!664515) (not e!937970))))

(assert (=> b!1469261 (= res!664515 (rulesInvariant!2173 Lexer!2382 (rules!11771 thiss!9992)))))

(declare-fun b!1469262 () Bool)

(declare-fun res!664516 () Bool)

(assert (=> b!1469262 (=> (not res!664516) (not e!937970))))

(assert (=> b!1469262 (= res!664516 (rulesProduceEachTokenIndividually!887 Lexer!2382 (rules!11771 thiss!9992) (tokens!2137 thiss!9992)))))

(declare-fun b!1469263 () Bool)

(declare-fun separableTokens!269 (LexerInterface!2384 BalanceConc!10422 List!15432) Bool)

(assert (=> b!1469263 (= e!937970 (separableTokens!269 Lexer!2382 (tokens!2137 thiss!9992) (rules!11771 thiss!9992)))))

(assert (= (and d!430956 res!664514) b!1469261))

(assert (= (and b!1469261 res!664515) b!1469262))

(assert (= (and b!1469262 res!664516) b!1469263))

(assert (=> d!430956 m!1713717))

(assert (=> b!1469261 m!1713721))

(assert (=> b!1469262 m!1713727))

(declare-fun m!1713771 () Bool)

(assert (=> b!1469263 m!1713771))

(assert (=> start!137526 d!430956))

(declare-fun tp!414110 () Bool)

(declare-fun b!1469272 () Bool)

(declare-fun tp!414109 () Bool)

(declare-fun e!937976 () Bool)

(assert (=> b!1469272 (= e!937976 (and (inv!20557 (left!13012 (c!242148 (tokens!2137 thiss!9992)))) tp!414110 (inv!20557 (right!13342 (c!242148 (tokens!2137 thiss!9992)))) tp!414109))))

(declare-fun b!1469274 () Bool)

(declare-fun e!937975 () Bool)

(declare-fun tp!414111 () Bool)

(assert (=> b!1469274 (= e!937975 tp!414111)))

(declare-fun b!1469273 () Bool)

(declare-fun inv!20564 (IArray!10487) Bool)

(assert (=> b!1469273 (= e!937976 (and (inv!20564 (xs!7996 (c!242148 (tokens!2137 thiss!9992)))) e!937975))))

(assert (=> b!1469193 (= tp!414095 (and (inv!20557 (c!242148 (tokens!2137 thiss!9992))) e!937976))))

(assert (= (and b!1469193 (is-Node!5241 (c!242148 (tokens!2137 thiss!9992)))) b!1469272))

(assert (= b!1469273 b!1469274))

(assert (= (and b!1469193 (is-Leaf!7807 (c!242148 (tokens!2137 thiss!9992)))) b!1469273))

(declare-fun m!1713773 () Bool)

(assert (=> b!1469272 m!1713773))

(declare-fun m!1713775 () Bool)

(assert (=> b!1469272 m!1713775))

(declare-fun m!1713777 () Bool)

(assert (=> b!1469273 m!1713777))

(assert (=> b!1469193 m!1713719))

(declare-fun b!1469285 () Bool)

(declare-fun b_free!36979 () Bool)

(declare-fun b_next!37683 () Bool)

(assert (=> b!1469285 (= b_free!36979 (not b_next!37683))))

(declare-fun tp!414120 () Bool)

(declare-fun b_and!100581 () Bool)

(assert (=> b!1469285 (= tp!414120 b_and!100581)))

(declare-fun b_free!36981 () Bool)

(declare-fun b_next!37685 () Bool)

(assert (=> b!1469285 (= b_free!36981 (not b_next!37685))))

(declare-fun tp!414121 () Bool)

(declare-fun b_and!100583 () Bool)

(assert (=> b!1469285 (= tp!414121 b_and!100583)))

(declare-fun e!937987 () Bool)

(assert (=> b!1469285 (= e!937987 (and tp!414120 tp!414121))))

(declare-fun e!937988 () Bool)

(declare-fun tp!414123 () Bool)

(declare-fun b!1469284 () Bool)

(declare-fun inv!20553 (String!18348) Bool)

(declare-fun inv!20565 (TokenValueInjection!5296) Bool)

(assert (=> b!1469284 (= e!937988 (and tp!414123 (inv!20553 (tag!2992 (h!20767 (rules!11771 thiss!9992)))) (inv!20565 (transformation!2728 (h!20767 (rules!11771 thiss!9992)))) e!937987))))

(declare-fun b!1469283 () Bool)

(declare-fun e!937986 () Bool)

(declare-fun tp!414122 () Bool)

(assert (=> b!1469283 (= e!937986 (and e!937988 tp!414122))))

(assert (=> b!1469192 (= tp!414096 e!937986)))

(assert (= b!1469284 b!1469285))

(assert (= b!1469283 b!1469284))

(assert (= (and b!1469192 (is-Cons!15366 (rules!11771 thiss!9992))) b!1469283))

(declare-fun m!1713779 () Bool)

(assert (=> b!1469284 m!1713779))

(declare-fun m!1713781 () Bool)

(assert (=> b!1469284 m!1713781))

(push 1)

(assert (not b!1469261))

(assert (not d!430940))

(assert (not b!1469254))

(assert b_and!100583)

(assert (not b!1469214))

(assert (not d!430952))

(assert (not b!1469272))

(assert (not b!1469284))

(assert (not b_next!37683))

(assert (not d!430956))

(assert (not b!1469262))

(assert (not b!1469238))

(assert (not b!1469274))

(assert (not b!1469212))

(assert (not d!430954))

(assert (not b!1469263))

(assert (not b!1469193))

(assert b_and!100581)

(assert (not b!1469283))

(assert (not b!1469273))

(assert (not b!1469247))

(assert (not b_next!37685))

(check-sat)

(pop 1)

(push 1)

(assert b_and!100581)

(assert b_and!100583)

(assert (not b_next!37683))

(assert (not b_next!37685))

(check-sat)

(pop 1)

