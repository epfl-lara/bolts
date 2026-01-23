; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!137552 () Bool)

(assert start!137552)

(declare-fun b!1469335 () Bool)

(declare-fun e!938025 () Bool)

(declare-datatypes ((List!15438 0))(
  ( (Nil!15372) (Cons!15372 (h!20773 (_ BitVec 16)) (t!135365 List!15438)) )
))
(declare-datatypes ((TokenValue!2820 0))(
  ( (FloatLiteralValue!5640 (text!20185 List!15438)) (TokenValueExt!2819 (__x!9430 Int)) (Broken!14100 (value!87428 List!15438)) (Object!2885) (End!2820) (Def!2820) (Underscore!2820) (Match!2820) (Else!2820) (Error!2820) (Case!2820) (If!2820) (Extends!2820) (Abstract!2820) (Class!2820) (Val!2820) (DelimiterValue!5640 (del!2880 List!15438)) (KeywordValue!2826 (value!87429 List!15438)) (CommentValue!5640 (value!87430 List!15438)) (WhitespaceValue!5640 (value!87431 List!15438)) (IndentationValue!2820 (value!87432 List!15438)) (String!18357) (Int32!2820) (Broken!14101 (value!87433 List!15438)) (Boolean!2821) (Unit!25091) (OperatorValue!2823 (op!2880 List!15438)) (IdentifierValue!5640 (value!87434 List!15438)) (IdentifierValue!5641 (value!87435 List!15438)) (WhitespaceValue!5641 (value!87436 List!15438)) (True!5640) (False!5640) (Broken!14102 (value!87437 List!15438)) (Broken!14103 (value!87438 List!15438)) (True!5641) (RightBrace!2820) (RightBracket!2820) (Colon!2820) (Null!2820) (Comma!2820) (LeftBracket!2820) (False!5641) (LeftBrace!2820) (ImaginaryLiteralValue!2820 (text!20186 List!15438)) (StringLiteralValue!8460 (value!87439 List!15438)) (EOFValue!2820 (value!87440 List!15438)) (IdentValue!2820 (value!87441 List!15438)) (DelimiterValue!5641 (value!87442 List!15438)) (DedentValue!2820 (value!87443 List!15438)) (NewLineValue!2820 (value!87444 List!15438)) (IntegerValue!8460 (value!87445 (_ BitVec 32)) (text!20187 List!15438)) (IntegerValue!8461 (value!87446 Int) (text!20188 List!15438)) (Times!2820) (Or!2820) (Equal!2820) (Minus!2820) (Broken!14104 (value!87447 List!15438)) (And!2820) (Div!2820) (LessEqual!2820) (Mod!2820) (Concat!6864) (Not!2820) (Plus!2820) (SpaceValue!2820 (value!87448 List!15438)) (IntegerValue!8462 (value!87449 Int) (text!20189 List!15438)) (StringLiteralValue!8461 (text!20190 List!15438)) (FloatLiteralValue!5641 (text!20191 List!15438)) (BytesLiteralValue!2820 (value!87450 List!15438)) (CommentValue!5641 (value!87451 List!15438)) (StringLiteralValue!8462 (value!87452 List!15438)) (ErrorTokenValue!2820 (msg!2881 List!15438)) )
))
(declare-datatypes ((C!8266 0))(
  ( (C!8267 (val!4703 Int)) )
))
(declare-datatypes ((Regex!4044 0))(
  ( (ElementMatch!4044 (c!242158 C!8266)) (Concat!6865 (regOne!8600 Regex!4044) (regTwo!8600 Regex!4044)) (EmptyExpr!4044) (Star!4044 (reg!4373 Regex!4044)) (EmptyLang!4044) (Union!4044 (regOne!8601 Regex!4044) (regTwo!8601 Regex!4044)) )
))
(declare-datatypes ((String!18358 0))(
  ( (String!18359 (value!87453 String)) )
))
(declare-datatypes ((List!15439 0))(
  ( (Nil!15373) (Cons!15373 (h!20774 C!8266) (t!135366 List!15439)) )
))
(declare-datatypes ((IArray!10493 0))(
  ( (IArray!10494 (innerList!5304 List!15439)) )
))
(declare-datatypes ((Conc!5244 0))(
  ( (Node!5244 (left!13020 Conc!5244) (right!13350 Conc!5244) (csize!10718 Int) (cheight!5455 Int)) (Leaf!7811 (xs!7999 IArray!10493) (csize!10719 Int)) (Empty!5244) )
))
(declare-datatypes ((BalanceConc!10428 0))(
  ( (BalanceConc!10429 (c!242159 Conc!5244)) )
))
(declare-datatypes ((TokenValueInjection!5300 0))(
  ( (TokenValueInjection!5301 (toValue!4049 Int) (toChars!3908 Int)) )
))
(declare-datatypes ((Rule!5260 0))(
  ( (Rule!5261 (regex!2730 Regex!4044) (tag!2994 String!18358) (isSeparator!2730 Bool) (transformation!2730 TokenValueInjection!5300)) )
))
(declare-datatypes ((Token!5122 0))(
  ( (Token!5123 (value!87454 TokenValue!2820) (rule!4507 Rule!5260) (size!12513 Int) (originalCharacters!3592 List!15439)) )
))
(declare-datatypes ((List!15440 0))(
  ( (Nil!15374) (Cons!15374 (h!20775 Token!5122) (t!135367 List!15440)) )
))
(declare-datatypes ((IArray!10495 0))(
  ( (IArray!10496 (innerList!5305 List!15440)) )
))
(declare-datatypes ((Conc!5245 0))(
  ( (Node!5245 (left!13021 Conc!5245) (right!13351 Conc!5245) (csize!10720 Int) (cheight!5456 Int)) (Leaf!7812 (xs!8000 IArray!10495) (csize!10721 Int)) (Empty!5245) )
))
(declare-datatypes ((BalanceConc!10430 0))(
  ( (BalanceConc!10431 (c!242160 Conc!5245)) )
))
(declare-datatypes ((List!15441 0))(
  ( (Nil!15375) (Cons!15375 (h!20776 Rule!5260) (t!135368 List!15441)) )
))
(declare-datatypes ((PrintableTokens!1158 0))(
  ( (PrintableTokens!1159 (rules!11775 List!15441) (tokens!2139 BalanceConc!10430)) )
))
(declare-fun thiss!9992 () PrintableTokens!1158)

(declare-fun tp!414149 () Bool)

(declare-fun inv!20569 (Conc!5245) Bool)

(assert (=> b!1469335 (= e!938025 (and (inv!20569 (c!242160 (tokens!2139 thiss!9992))) tp!414149))))

(declare-fun b!1469332 () Bool)

(declare-fun res!664525 () Bool)

(declare-fun e!938026 () Bool)

(assert (=> b!1469332 (=> res!664525 e!938026)))

(declare-datatypes ((LexerInterface!2386 0))(
  ( (LexerInterfaceExt!2383 (__x!9431 Int)) (Lexer!2384) )
))
(declare-fun rulesProduceEachTokenIndividually!889 (LexerInterface!2386 List!15441 BalanceConc!10430) Bool)

(assert (=> b!1469332 (= res!664525 (not (rulesProduceEachTokenIndividually!889 Lexer!2384 (rules!11775 thiss!9992) (tokens!2139 thiss!9992))))))

(declare-fun res!664524 () Bool)

(assert (=> start!137552 (=> res!664524 e!938026)))

(declare-fun rulesInvariant!2175 (LexerInterface!2386 List!15441) Bool)

(assert (=> start!137552 (= res!664524 (not (rulesInvariant!2175 Lexer!2384 (rules!11775 thiss!9992))))))

(assert (=> start!137552 e!938026))

(declare-fun e!938027 () Bool)

(declare-fun inv!20570 (PrintableTokens!1158) Bool)

(assert (=> start!137552 (and (inv!20570 thiss!9992) e!938027)))

(declare-fun tp!414150 () Bool)

(declare-fun b!1469334 () Bool)

(declare-fun inv!20571 (BalanceConc!10430) Bool)

(assert (=> b!1469334 (= e!938027 (and tp!414150 (inv!20571 (tokens!2139 thiss!9992)) e!938025))))

(declare-fun b!1469333 () Bool)

(declare-fun separableTokens!270 (LexerInterface!2386 BalanceConc!10430 List!15441) Bool)

(assert (=> b!1469333 (= e!938026 (not (separableTokens!270 Lexer!2384 (tokens!2139 thiss!9992) (rules!11775 thiss!9992))))))

(assert (= (and start!137552 (not res!664524)) b!1469332))

(assert (= (and b!1469332 (not res!664525)) b!1469333))

(assert (= b!1469334 b!1469335))

(assert (= start!137552 b!1469334))

(declare-fun m!1713783 () Bool)

(assert (=> start!137552 m!1713783))

(declare-fun m!1713785 () Bool)

(assert (=> start!137552 m!1713785))

(declare-fun m!1713787 () Bool)

(assert (=> b!1469335 m!1713787))

(declare-fun m!1713789 () Bool)

(assert (=> b!1469332 m!1713789))

(declare-fun m!1713791 () Bool)

(assert (=> b!1469334 m!1713791))

(declare-fun m!1713793 () Bool)

(assert (=> b!1469333 m!1713793))

(push 1)

(assert (not b!1469332))

(assert (not b!1469335))

(assert (not b!1469334))

(assert (not b!1469333))

(assert (not start!137552))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!430959 () Bool)

(declare-fun c!242166 () Bool)

(assert (=> d!430959 (= c!242166 (is-Node!5245 (c!242160 (tokens!2139 thiss!9992))))))

(declare-fun e!938041 () Bool)

(assert (=> d!430959 (= (inv!20569 (c!242160 (tokens!2139 thiss!9992))) e!938041)))

(declare-fun b!1469354 () Bool)

(declare-fun inv!20575 (Conc!5245) Bool)

(assert (=> b!1469354 (= e!938041 (inv!20575 (c!242160 (tokens!2139 thiss!9992))))))

(declare-fun b!1469355 () Bool)

(declare-fun e!938042 () Bool)

(assert (=> b!1469355 (= e!938041 e!938042)))

(declare-fun res!664534 () Bool)

(assert (=> b!1469355 (= res!664534 (not (is-Leaf!7812 (c!242160 (tokens!2139 thiss!9992)))))))

(assert (=> b!1469355 (=> res!664534 e!938042)))

(declare-fun b!1469356 () Bool)

(declare-fun inv!20576 (Conc!5245) Bool)

(assert (=> b!1469356 (= e!938042 (inv!20576 (c!242160 (tokens!2139 thiss!9992))))))

(assert (= (and d!430959 c!242166) b!1469354))

(assert (= (and d!430959 (not c!242166)) b!1469355))

(assert (= (and b!1469355 (not res!664534)) b!1469356))

(declare-fun m!1713807 () Bool)

(assert (=> b!1469354 m!1713807))

(declare-fun m!1713809 () Bool)

(assert (=> b!1469356 m!1713809))

(assert (=> b!1469335 d!430959))

(declare-fun b!1469370 () Bool)

(declare-fun e!938054 () Bool)

(assert (=> b!1469370 (= e!938054 true)))

(declare-fun b!1469369 () Bool)

(declare-fun e!938053 () Bool)

(assert (=> b!1469369 (= e!938053 e!938054)))

(declare-fun b!1469368 () Bool)

(declare-fun e!938052 () Bool)

(assert (=> b!1469368 (= e!938052 e!938053)))

(declare-fun d!430963 () Bool)

(assert (=> d!430963 e!938052))

(assert (= b!1469369 b!1469370))

(assert (= b!1469368 b!1469369))

(assert (= (and d!430963 (is-Cons!15375 (rules!11775 thiss!9992))) b!1469368))

(declare-fun order!9219 () Int)

(declare-fun order!9221 () Int)

(declare-fun lambda!63410 () Int)

(declare-fun dynLambda!6976 (Int Int) Int)

(declare-fun dynLambda!6977 (Int Int) Int)

(assert (=> b!1469370 (< (dynLambda!6976 order!9219 (toValue!4049 (transformation!2730 (h!20776 (rules!11775 thiss!9992))))) (dynLambda!6977 order!9221 lambda!63410))))

(declare-fun order!9223 () Int)

(declare-fun dynLambda!6978 (Int Int) Int)

(assert (=> b!1469370 (< (dynLambda!6978 order!9223 (toChars!3908 (transformation!2730 (h!20776 (rules!11775 thiss!9992))))) (dynLambda!6977 order!9221 lambda!63410))))

(assert (=> d!430963 true))

(declare-fun e!938045 () Bool)

(assert (=> d!430963 e!938045))

(declare-fun res!664537 () Bool)

(assert (=> d!430963 (=> (not res!664537) (not e!938045))))

(declare-fun lt!511236 () Bool)

(declare-fun forall!3751 (List!15440 Int) Bool)

(declare-fun list!6150 (BalanceConc!10430) List!15440)

(assert (=> d!430963 (= res!664537 (= lt!511236 (forall!3751 (list!6150 (tokens!2139 thiss!9992)) lambda!63410)))))

(declare-fun forall!3752 (BalanceConc!10430 Int) Bool)

(assert (=> d!430963 (= lt!511236 (forall!3752 (tokens!2139 thiss!9992) lambda!63410))))

(declare-fun isEmpty!9615 (List!15441) Bool)

(assert (=> d!430963 (not (isEmpty!9615 (rules!11775 thiss!9992)))))

(assert (=> d!430963 (= (rulesProduceEachTokenIndividually!889 Lexer!2384 (rules!11775 thiss!9992) (tokens!2139 thiss!9992)) lt!511236)))

(declare-fun b!1469359 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!754 (LexerInterface!2386 List!15441 List!15440) Bool)

(assert (=> b!1469359 (= e!938045 (= lt!511236 (rulesProduceEachTokenIndividuallyList!754 Lexer!2384 (rules!11775 thiss!9992) (list!6150 (tokens!2139 thiss!9992)))))))

(assert (= (and d!430963 res!664537) b!1469359))

(declare-fun m!1713813 () Bool)

(assert (=> d!430963 m!1713813))

(assert (=> d!430963 m!1713813))

(declare-fun m!1713815 () Bool)

(assert (=> d!430963 m!1713815))

(declare-fun m!1713817 () Bool)

(assert (=> d!430963 m!1713817))

(declare-fun m!1713819 () Bool)

(assert (=> d!430963 m!1713819))

(assert (=> b!1469359 m!1713813))

(assert (=> b!1469359 m!1713813))

(declare-fun m!1713821 () Bool)

(assert (=> b!1469359 m!1713821))

(assert (=> b!1469332 d!430963))

(declare-fun d!430967 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!141 (LexerInterface!2386 BalanceConc!10430 Int List!15441) Bool)

(assert (=> d!430967 (= (separableTokens!270 Lexer!2384 (tokens!2139 thiss!9992) (rules!11775 thiss!9992)) (tokensListTwoByTwoPredicateSeparable!141 Lexer!2384 (tokens!2139 thiss!9992) 0 (rules!11775 thiss!9992)))))

(declare-fun bs!344948 () Bool)

(assert (= bs!344948 d!430967))

(declare-fun m!1713823 () Bool)

(assert (=> bs!344948 m!1713823))

(assert (=> b!1469333 d!430967))

(declare-fun d!430969 () Bool)

(declare-fun res!664540 () Bool)

(declare-fun e!938057 () Bool)

(assert (=> d!430969 (=> (not res!664540) (not e!938057))))

(declare-fun rulesValid!995 (LexerInterface!2386 List!15441) Bool)

(assert (=> d!430969 (= res!664540 (rulesValid!995 Lexer!2384 (rules!11775 thiss!9992)))))

(assert (=> d!430969 (= (rulesInvariant!2175 Lexer!2384 (rules!11775 thiss!9992)) e!938057)))

(declare-fun b!1469375 () Bool)

(declare-datatypes ((List!15446 0))(
  ( (Nil!15380) (Cons!15380 (h!20781 String!18358) (t!135379 List!15446)) )
))
(declare-fun noDuplicateTag!995 (LexerInterface!2386 List!15441 List!15446) Bool)

(assert (=> b!1469375 (= e!938057 (noDuplicateTag!995 Lexer!2384 (rules!11775 thiss!9992) Nil!15380))))

(assert (= (and d!430969 res!664540) b!1469375))

(declare-fun m!1713825 () Bool)

(assert (=> d!430969 m!1713825))

(declare-fun m!1713827 () Bool)

(assert (=> b!1469375 m!1713827))

(assert (=> start!137552 d!430969))

(declare-fun d!430971 () Bool)

(declare-fun res!664547 () Bool)

(declare-fun e!938060 () Bool)

(assert (=> d!430971 (=> (not res!664547) (not e!938060))))

(assert (=> d!430971 (= res!664547 (not (isEmpty!9615 (rules!11775 thiss!9992))))))

(assert (=> d!430971 (= (inv!20570 thiss!9992) e!938060)))

(declare-fun b!1469382 () Bool)

(declare-fun res!664548 () Bool)

(assert (=> b!1469382 (=> (not res!664548) (not e!938060))))

(assert (=> b!1469382 (= res!664548 (rulesInvariant!2175 Lexer!2384 (rules!11775 thiss!9992)))))

(declare-fun b!1469383 () Bool)

(declare-fun res!664549 () Bool)

(assert (=> b!1469383 (=> (not res!664549) (not e!938060))))

(assert (=> b!1469383 (= res!664549 (rulesProduceEachTokenIndividually!889 Lexer!2384 (rules!11775 thiss!9992) (tokens!2139 thiss!9992)))))

(declare-fun b!1469384 () Bool)

(assert (=> b!1469384 (= e!938060 (separableTokens!270 Lexer!2384 (tokens!2139 thiss!9992) (rules!11775 thiss!9992)))))

(assert (= (and d!430971 res!664547) b!1469382))

(assert (= (and b!1469382 res!664548) b!1469383))

(assert (= (and b!1469383 res!664549) b!1469384))

(assert (=> d!430971 m!1713819))

(assert (=> b!1469382 m!1713783))

(assert (=> b!1469383 m!1713789))

(assert (=> b!1469384 m!1713793))

(assert (=> start!137552 d!430971))

(declare-fun d!430973 () Bool)

(declare-fun isBalanced!1566 (Conc!5245) Bool)

(assert (=> d!430973 (= (inv!20571 (tokens!2139 thiss!9992)) (isBalanced!1566 (c!242160 (tokens!2139 thiss!9992))))))

(declare-fun bs!344949 () Bool)

(assert (= bs!344949 d!430973))

(declare-fun m!1713829 () Bool)

(assert (=> bs!344949 m!1713829))

(assert (=> b!1469334 d!430973))

(declare-fun tp!414164 () Bool)

(declare-fun b!1469393 () Bool)

(declare-fun e!938065 () Bool)

(declare-fun tp!414165 () Bool)

(assert (=> b!1469393 (= e!938065 (and (inv!20569 (left!13021 (c!242160 (tokens!2139 thiss!9992)))) tp!414164 (inv!20569 (right!13351 (c!242160 (tokens!2139 thiss!9992)))) tp!414165))))

(declare-fun b!1469395 () Bool)

(declare-fun e!938066 () Bool)

(declare-fun tp!414163 () Bool)

(assert (=> b!1469395 (= e!938066 tp!414163)))

(declare-fun b!1469394 () Bool)

(declare-fun inv!20577 (IArray!10495) Bool)

(assert (=> b!1469394 (= e!938065 (and (inv!20577 (xs!8000 (c!242160 (tokens!2139 thiss!9992)))) e!938066))))

(assert (=> b!1469335 (= tp!414149 (and (inv!20569 (c!242160 (tokens!2139 thiss!9992))) e!938065))))

(assert (= (and b!1469335 (is-Node!5245 (c!242160 (tokens!2139 thiss!9992)))) b!1469393))

(assert (= b!1469394 b!1469395))

(assert (= (and b!1469335 (is-Leaf!7812 (c!242160 (tokens!2139 thiss!9992)))) b!1469394))

(declare-fun m!1713831 () Bool)

(assert (=> b!1469393 m!1713831))

(declare-fun m!1713833 () Bool)

(assert (=> b!1469393 m!1713833))

(declare-fun m!1713835 () Bool)

(assert (=> b!1469394 m!1713835))

(assert (=> b!1469335 m!1713787))

(declare-fun b!1469406 () Bool)

(declare-fun b_free!36983 () Bool)

(declare-fun b_next!37687 () Bool)

(assert (=> b!1469406 (= b_free!36983 (not b_next!37687))))

(declare-fun tp!414177 () Bool)

(declare-fun b_and!100585 () Bool)

(assert (=> b!1469406 (= tp!414177 b_and!100585)))

(declare-fun b_free!36985 () Bool)

(declare-fun b_next!37689 () Bool)

(assert (=> b!1469406 (= b_free!36985 (not b_next!37689))))

(declare-fun tp!414175 () Bool)

(declare-fun b_and!100587 () Bool)

(assert (=> b!1469406 (= tp!414175 b_and!100587)))

(declare-fun e!938078 () Bool)

(assert (=> b!1469406 (= e!938078 (and tp!414177 tp!414175))))

(declare-fun b!1469405 () Bool)

(declare-fun e!938075 () Bool)

(declare-fun tp!414174 () Bool)

(declare-fun inv!20566 (String!18358) Bool)

(declare-fun inv!20578 (TokenValueInjection!5300) Bool)

(assert (=> b!1469405 (= e!938075 (and tp!414174 (inv!20566 (tag!2994 (h!20776 (rules!11775 thiss!9992)))) (inv!20578 (transformation!2730 (h!20776 (rules!11775 thiss!9992)))) e!938078))))

(declare-fun b!1469404 () Bool)

(declare-fun e!938076 () Bool)

(declare-fun tp!414176 () Bool)

(assert (=> b!1469404 (= e!938076 (and e!938075 tp!414176))))

(assert (=> b!1469334 (= tp!414150 e!938076)))

(assert (= b!1469405 b!1469406))

(assert (= b!1469404 b!1469405))

(assert (= (and b!1469334 (is-Cons!15375 (rules!11775 thiss!9992))) b!1469404))

(declare-fun m!1713837 () Bool)

(assert (=> b!1469405 m!1713837))

(declare-fun m!1713839 () Bool)

(assert (=> b!1469405 m!1713839))

(push 1)

(assert (not b!1469404))

(assert (not b!1469394))

(assert (not b!1469395))

(assert (not b!1469356))

(assert (not b_next!37687))

(assert b_and!100587)

(assert (not b!1469368))

(assert (not d!430967))

(assert (not b!1469359))

(assert (not b!1469384))

(assert (not d!430973))

(assert (not b!1469393))

(assert (not b!1469335))

(assert (not b!1469383))

(assert (not d!430969))

(assert (not b!1469375))

(assert (not b!1469405))

(assert (not b!1469354))

(assert b_and!100585)

(assert (not d!430963))

(assert (not b_next!37689))

(assert (not b!1469382))

(assert (not d!430971))

(check-sat)

(pop 1)

(push 1)

(assert b_and!100585)

(assert b_and!100587)

(assert (not b_next!37687))

(assert (not b_next!37689))

(check-sat)

(pop 1)

