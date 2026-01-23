; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!510866 () Bool)

(assert start!510866)

(declare-fun b!4882394 () Bool)

(declare-fun b_free!130967 () Bool)

(declare-fun b_next!131757 () Bool)

(assert (=> b!4882394 (= b_free!130967 (not b_next!131757))))

(declare-fun tp!1373669 () Bool)

(declare-fun b_and!343799 () Bool)

(assert (=> b!4882394 (= tp!1373669 b_and!343799)))

(declare-fun b_free!130969 () Bool)

(declare-fun b_next!131759 () Bool)

(assert (=> b!4882394 (= b_free!130969 (not b_next!131759))))

(declare-fun tp!1373667 () Bool)

(declare-fun b_and!343801 () Bool)

(assert (=> b!4882394 (= tp!1373667 b_and!343801)))

(declare-fun b!4882392 () Bool)

(declare-fun res!2084245 () Bool)

(declare-fun e!3051415 () Bool)

(assert (=> b!4882392 (=> (not res!2084245) (not e!3051415))))

(declare-datatypes ((C!26494 0))(
  ( (C!26495 (val!22581 Int)) )
))
(declare-datatypes ((List!56224 0))(
  ( (Nil!56100) (Cons!56100 (h!62548 C!26494) (t!364870 List!56224)) )
))
(declare-datatypes ((IArray!29343 0))(
  ( (IArray!29344 (innerList!14729 List!56224)) )
))
(declare-datatypes ((Conc!14641 0))(
  ( (Node!14641 (left!40760 Conc!14641) (right!41090 Conc!14641) (csize!29512 Int) (cheight!14852 Int)) (Leaf!24395 (xs!17957 IArray!29343) (csize!29513 Int)) (Empty!14641) )
))
(declare-datatypes ((BalanceConc!28712 0))(
  ( (BalanceConc!28713 (c!830375 Conc!14641)) )
))
(declare-datatypes ((List!56225 0))(
  ( (Nil!56101) (Cons!56101 (h!62549 (_ BitVec 16)) (t!364871 List!56225)) )
))
(declare-datatypes ((TokenValue!8383 0))(
  ( (FloatLiteralValue!16766 (text!59126 List!56225)) (TokenValueExt!8382 (__x!34059 Int)) (Broken!41915 (value!259210 List!56225)) (Object!8506) (End!8383) (Def!8383) (Underscore!8383) (Match!8383) (Else!8383) (Error!8383) (Case!8383) (If!8383) (Extends!8383) (Abstract!8383) (Class!8383) (Val!8383) (DelimiterValue!16766 (del!8443 List!56225)) (KeywordValue!8389 (value!259211 List!56225)) (CommentValue!16766 (value!259212 List!56225)) (WhitespaceValue!16766 (value!259213 List!56225)) (IndentationValue!8383 (value!259214 List!56225)) (String!63358) (Int32!8383) (Broken!41916 (value!259215 List!56225)) (Boolean!8384) (Unit!146090) (OperatorValue!8386 (op!8443 List!56225)) (IdentifierValue!16766 (value!259216 List!56225)) (IdentifierValue!16767 (value!259217 List!56225)) (WhitespaceValue!16767 (value!259218 List!56225)) (True!16766) (False!16766) (Broken!41917 (value!259219 List!56225)) (Broken!41918 (value!259220 List!56225)) (True!16767) (RightBrace!8383) (RightBracket!8383) (Colon!8383) (Null!8383) (Comma!8383) (LeftBracket!8383) (False!16767) (LeftBrace!8383) (ImaginaryLiteralValue!8383 (text!59127 List!56225)) (StringLiteralValue!25149 (value!259221 List!56225)) (EOFValue!8383 (value!259222 List!56225)) (IdentValue!8383 (value!259223 List!56225)) (DelimiterValue!16767 (value!259224 List!56225)) (DedentValue!8383 (value!259225 List!56225)) (NewLineValue!8383 (value!259226 List!56225)) (IntegerValue!25149 (value!259227 (_ BitVec 32)) (text!59128 List!56225)) (IntegerValue!25150 (value!259228 Int) (text!59129 List!56225)) (Times!8383) (Or!8383) (Equal!8383) (Minus!8383) (Broken!41919 (value!259229 List!56225)) (And!8383) (Div!8383) (LessEqual!8383) (Mod!8383) (Concat!21531) (Not!8383) (Plus!8383) (SpaceValue!8383 (value!259230 List!56225)) (IntegerValue!25151 (value!259231 Int) (text!59130 List!56225)) (StringLiteralValue!25150 (text!59131 List!56225)) (FloatLiteralValue!16767 (text!59132 List!56225)) (BytesLiteralValue!8383 (value!259232 List!56225)) (CommentValue!16767 (value!259233 List!56225)) (StringLiteralValue!25151 (value!259234 List!56225)) (ErrorTokenValue!8383 (msg!8444 List!56225)) )
))
(declare-datatypes ((Regex!13148 0))(
  ( (ElementMatch!13148 (c!830376 C!26494)) (Concat!21532 (regOne!26808 Regex!13148) (regTwo!26808 Regex!13148)) (EmptyExpr!13148) (Star!13148 (reg!13477 Regex!13148)) (EmptyLang!13148) (Union!13148 (regOne!26809 Regex!13148) (regTwo!26809 Regex!13148)) )
))
(declare-datatypes ((String!63359 0))(
  ( (String!63360 (value!259235 String)) )
))
(declare-datatypes ((TokenValueInjection!16074 0))(
  ( (TokenValueInjection!16075 (toValue!10960 Int) (toChars!10819 Int)) )
))
(declare-datatypes ((Rule!15946 0))(
  ( (Rule!15947 (regex!8073 Regex!13148) (tag!8937 String!63359) (isSeparator!8073 Bool) (transformation!8073 TokenValueInjection!16074)) )
))
(declare-datatypes ((List!56226 0))(
  ( (Nil!56102) (Cons!56102 (h!62550 Rule!15946) (t!364872 List!56226)) )
))
(declare-fun rulesArg!165 () List!56226)

(declare-fun isEmpty!30068 (List!56226) Bool)

(assert (=> b!4882392 (= res!2084245 (not (isEmpty!30068 rulesArg!165)))))

(declare-fun b!4882393 () Bool)

(declare-fun e!3051414 () Bool)

(declare-fun input!1236 () BalanceConc!28712)

(declare-fun tp!1373668 () Bool)

(declare-fun inv!72142 (Conc!14641) Bool)

(assert (=> b!4882393 (= e!3051414 (and (inv!72142 (c!830375 input!1236)) tp!1373668))))

(declare-fun e!3051411 () Bool)

(assert (=> b!4882394 (= e!3051411 (and tp!1373669 tp!1373667))))

(declare-fun res!2084243 () Bool)

(assert (=> start!510866 (=> (not res!2084243) (not e!3051415))))

(declare-datatypes ((LexerInterface!7665 0))(
  ( (LexerInterfaceExt!7662 (__x!34060 Int)) (Lexer!7663) )
))
(declare-fun thiss!14805 () LexerInterface!7665)

(assert (=> start!510866 (= res!2084243 (is-Lexer!7663 thiss!14805))))

(assert (=> start!510866 e!3051415))

(assert (=> start!510866 true))

(declare-fun e!3051416 () Bool)

(assert (=> start!510866 e!3051416))

(declare-fun inv!72143 (BalanceConc!28712) Bool)

(assert (=> start!510866 (and (inv!72143 input!1236) e!3051414)))

(declare-fun b!4882395 () Bool)

(declare-fun e!3051413 () Bool)

(declare-fun tp!1373670 () Bool)

(assert (=> b!4882395 (= e!3051416 (and e!3051413 tp!1373670))))

(declare-fun b!4882396 () Bool)

(declare-fun e!3051410 () Bool)

(assert (=> b!4882396 (= e!3051415 (not e!3051410))))

(declare-fun res!2084246 () Bool)

(assert (=> b!4882396 (=> res!2084246 e!3051410)))

(assert (=> b!4882396 (= res!2084246 (or (and (is-Cons!56102 rulesArg!165) (is-Nil!56102 (t!364872 rulesArg!165))) (not (is-Cons!56102 rulesArg!165))))))

(declare-fun lt!2000010 () List!56224)

(declare-fun isPrefix!4795 (List!56224 List!56224) Bool)

(assert (=> b!4882396 (isPrefix!4795 lt!2000010 lt!2000010)))

(declare-datatypes ((Unit!146091 0))(
  ( (Unit!146092) )
))
(declare-fun lt!2000009 () Unit!146091)

(declare-fun lemmaIsPrefixRefl!3192 (List!56224 List!56224) Unit!146091)

(assert (=> b!4882396 (= lt!2000009 (lemmaIsPrefixRefl!3192 lt!2000010 lt!2000010))))

(declare-fun list!17594 (BalanceConc!28712) List!56224)

(assert (=> b!4882396 (= lt!2000010 (list!17594 input!1236))))

(declare-fun b!4882397 () Bool)

(declare-fun res!2084244 () Bool)

(assert (=> b!4882397 (=> (not res!2084244) (not e!3051415))))

(declare-fun rulesValidInductive!3052 (LexerInterface!7665 List!56226) Bool)

(assert (=> b!4882397 (= res!2084244 (rulesValidInductive!3052 thiss!14805 rulesArg!165))))

(declare-fun tp!1373666 () Bool)

(declare-fun b!4882398 () Bool)

(declare-fun inv!72139 (String!63359) Bool)

(declare-fun inv!72144 (TokenValueInjection!16074) Bool)

(assert (=> b!4882398 (= e!3051413 (and tp!1373666 (inv!72139 (tag!8937 (h!62550 rulesArg!165))) (inv!72144 (transformation!8073 (h!62550 rulesArg!165))) e!3051411))))

(declare-fun b!4882399 () Bool)

(declare-fun ruleValid!3644 (LexerInterface!7665 Rule!15946) Bool)

(assert (=> b!4882399 (= e!3051410 (ruleValid!3644 thiss!14805 (h!62550 rulesArg!165)))))

(assert (= (and start!510866 res!2084243) b!4882397))

(assert (= (and b!4882397 res!2084244) b!4882392))

(assert (= (and b!4882392 res!2084245) b!4882396))

(assert (= (and b!4882396 (not res!2084246)) b!4882399))

(assert (= b!4882398 b!4882394))

(assert (= b!4882395 b!4882398))

(assert (= (and start!510866 (is-Cons!56102 rulesArg!165)) b!4882395))

(assert (= start!510866 b!4882393))

(declare-fun m!5886580 () Bool)

(assert (=> b!4882399 m!5886580))

(declare-fun m!5886582 () Bool)

(assert (=> b!4882396 m!5886582))

(declare-fun m!5886584 () Bool)

(assert (=> b!4882396 m!5886584))

(declare-fun m!5886586 () Bool)

(assert (=> b!4882396 m!5886586))

(declare-fun m!5886588 () Bool)

(assert (=> b!4882397 m!5886588))

(declare-fun m!5886590 () Bool)

(assert (=> b!4882392 m!5886590))

(declare-fun m!5886592 () Bool)

(assert (=> b!4882398 m!5886592))

(declare-fun m!5886594 () Bool)

(assert (=> b!4882398 m!5886594))

(declare-fun m!5886596 () Bool)

(assert (=> start!510866 m!5886596))

(declare-fun m!5886598 () Bool)

(assert (=> b!4882393 m!5886598))

(push 1)

(assert b_and!343799)

(assert (not b!4882396))

(assert (not b_next!131759))

(assert (not start!510866))

(assert (not b!4882392))

(assert (not b_next!131757))

(assert (not b!4882399))

(assert (not b!4882398))

(assert (not b!4882393))

(assert b_and!343801)

(assert (not b!4882397))

(assert (not b!4882395))

(check-sat)

(pop 1)

(push 1)

(assert b_and!343801)

(assert b_and!343799)

(assert (not b_next!131757))

(assert (not b_next!131759))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1569080 () Bool)

(declare-fun c!830381 () Bool)

(assert (=> d!1569080 (= c!830381 (is-Node!14641 (c!830375 input!1236)))))

(declare-fun e!3051442 () Bool)

(assert (=> d!1569080 (= (inv!72142 (c!830375 input!1236)) e!3051442)))

(declare-fun b!4882430 () Bool)

(declare-fun inv!72148 (Conc!14641) Bool)

(assert (=> b!4882430 (= e!3051442 (inv!72148 (c!830375 input!1236)))))

(declare-fun b!4882431 () Bool)

(declare-fun e!3051443 () Bool)

(assert (=> b!4882431 (= e!3051442 e!3051443)))

(declare-fun res!2084267 () Bool)

(assert (=> b!4882431 (= res!2084267 (not (is-Leaf!24395 (c!830375 input!1236))))))

(assert (=> b!4882431 (=> res!2084267 e!3051443)))

(declare-fun b!4882432 () Bool)

(declare-fun inv!72149 (Conc!14641) Bool)

(assert (=> b!4882432 (= e!3051443 (inv!72149 (c!830375 input!1236)))))

(assert (= (and d!1569080 c!830381) b!4882430))

(assert (= (and d!1569080 (not c!830381)) b!4882431))

(assert (= (and b!4882431 (not res!2084267)) b!4882432))

(declare-fun m!5886620 () Bool)

(assert (=> b!4882430 m!5886620))

(declare-fun m!5886622 () Bool)

(assert (=> b!4882432 m!5886622))

(assert (=> b!4882393 d!1569080))

(declare-fun d!1569082 () Bool)

(declare-fun res!2084272 () Bool)

(declare-fun e!3051446 () Bool)

(assert (=> d!1569082 (=> (not res!2084272) (not e!3051446))))

(declare-fun validRegex!5878 (Regex!13148) Bool)

(assert (=> d!1569082 (= res!2084272 (validRegex!5878 (regex!8073 (h!62550 rulesArg!165))))))

(assert (=> d!1569082 (= (ruleValid!3644 thiss!14805 (h!62550 rulesArg!165)) e!3051446)))

(declare-fun b!4882437 () Bool)

(declare-fun res!2084273 () Bool)

(assert (=> b!4882437 (=> (not res!2084273) (not e!3051446))))

(declare-fun nullable!4551 (Regex!13148) Bool)

(assert (=> b!4882437 (= res!2084273 (not (nullable!4551 (regex!8073 (h!62550 rulesArg!165)))))))

(declare-fun b!4882438 () Bool)

(assert (=> b!4882438 (= e!3051446 (not (= (tag!8937 (h!62550 rulesArg!165)) (String!63360 ""))))))

(assert (= (and d!1569082 res!2084272) b!4882437))

(assert (= (and b!4882437 res!2084273) b!4882438))

(declare-fun m!5886624 () Bool)

(assert (=> d!1569082 m!5886624))

(declare-fun m!5886626 () Bool)

(assert (=> b!4882437 m!5886626))

(assert (=> b!4882399 d!1569082))

(declare-fun d!1569084 () Bool)

(assert (=> d!1569084 (= (isEmpty!30068 rulesArg!165) (is-Nil!56102 rulesArg!165))))

(assert (=> b!4882392 d!1569084))

(declare-fun d!1569086 () Bool)

(assert (=> d!1569086 true))

(declare-fun lt!2000021 () Bool)

(declare-fun lambda!243728 () Int)

(declare-fun forall!13063 (List!56226 Int) Bool)

(assert (=> d!1569086 (= lt!2000021 (forall!13063 rulesArg!165 lambda!243728))))

(declare-fun e!3051462 () Bool)

(assert (=> d!1569086 (= lt!2000021 e!3051462)))

(declare-fun res!2084285 () Bool)

(assert (=> d!1569086 (=> res!2084285 e!3051462)))

(assert (=> d!1569086 (= res!2084285 (not (is-Cons!56102 rulesArg!165)))))

(assert (=> d!1569086 (= (rulesValidInductive!3052 thiss!14805 rulesArg!165) lt!2000021)))

(declare-fun b!4882456 () Bool)

(declare-fun e!3051461 () Bool)

(assert (=> b!4882456 (= e!3051462 e!3051461)))

(declare-fun res!2084286 () Bool)

(assert (=> b!4882456 (=> (not res!2084286) (not e!3051461))))

(assert (=> b!4882456 (= res!2084286 (ruleValid!3644 thiss!14805 (h!62550 rulesArg!165)))))

(declare-fun b!4882457 () Bool)

(assert (=> b!4882457 (= e!3051461 (rulesValidInductive!3052 thiss!14805 (t!364872 rulesArg!165)))))

(assert (= (and d!1569086 (not res!2084285)) b!4882456))

(assert (= (and b!4882456 res!2084286) b!4882457))

(declare-fun m!5886632 () Bool)

(assert (=> d!1569086 m!5886632))

(assert (=> b!4882456 m!5886580))

(declare-fun m!5886634 () Bool)

(assert (=> b!4882457 m!5886634))

(assert (=> b!4882397 d!1569086))

(declare-fun d!1569092 () Bool)

(assert (=> d!1569092 (= (inv!72139 (tag!8937 (h!62550 rulesArg!165))) (= (mod (str.len (value!259235 (tag!8937 (h!62550 rulesArg!165)))) 2) 0))))

(assert (=> b!4882398 d!1569092))

(declare-fun d!1569094 () Bool)

(declare-fun res!2084289 () Bool)

(declare-fun e!3051465 () Bool)

(assert (=> d!1569094 (=> (not res!2084289) (not e!3051465))))

(declare-fun semiInverseModEq!3559 (Int Int) Bool)

(assert (=> d!1569094 (= res!2084289 (semiInverseModEq!3559 (toChars!10819 (transformation!8073 (h!62550 rulesArg!165))) (toValue!10960 (transformation!8073 (h!62550 rulesArg!165)))))))

(assert (=> d!1569094 (= (inv!72144 (transformation!8073 (h!62550 rulesArg!165))) e!3051465)))

(declare-fun b!4882462 () Bool)

(declare-fun equivClasses!3438 (Int Int) Bool)

(assert (=> b!4882462 (= e!3051465 (equivClasses!3438 (toChars!10819 (transformation!8073 (h!62550 rulesArg!165))) (toValue!10960 (transformation!8073 (h!62550 rulesArg!165)))))))

(assert (= (and d!1569094 res!2084289) b!4882462))

(declare-fun m!5886636 () Bool)

(assert (=> d!1569094 m!5886636))

(declare-fun m!5886638 () Bool)

(assert (=> b!4882462 m!5886638))

(assert (=> b!4882398 d!1569094))

(declare-fun d!1569096 () Bool)

(declare-fun e!3051473 () Bool)

(assert (=> d!1569096 e!3051473))

(declare-fun res!2084300 () Bool)

(assert (=> d!1569096 (=> res!2084300 e!3051473)))

(declare-fun lt!2000024 () Bool)

(assert (=> d!1569096 (= res!2084300 (not lt!2000024))))

(declare-fun e!3051472 () Bool)

(assert (=> d!1569096 (= lt!2000024 e!3051472)))

(declare-fun res!2084299 () Bool)

(assert (=> d!1569096 (=> res!2084299 e!3051472)))

(assert (=> d!1569096 (= res!2084299 (is-Nil!56100 lt!2000010))))

(assert (=> d!1569096 (= (isPrefix!4795 lt!2000010 lt!2000010) lt!2000024)))

(declare-fun b!4882473 () Bool)

(declare-fun e!3051474 () Bool)

(declare-fun tail!9573 (List!56224) List!56224)

(assert (=> b!4882473 (= e!3051474 (isPrefix!4795 (tail!9573 lt!2000010) (tail!9573 lt!2000010)))))

(declare-fun b!4882471 () Bool)

(assert (=> b!4882471 (= e!3051472 e!3051474)))

(declare-fun res!2084298 () Bool)

(assert (=> b!4882471 (=> (not res!2084298) (not e!3051474))))

(assert (=> b!4882471 (= res!2084298 (not (is-Nil!56100 lt!2000010)))))

(declare-fun b!4882472 () Bool)

(declare-fun res!2084301 () Bool)

(assert (=> b!4882472 (=> (not res!2084301) (not e!3051474))))

(declare-fun head!10427 (List!56224) C!26494)

(assert (=> b!4882472 (= res!2084301 (= (head!10427 lt!2000010) (head!10427 lt!2000010)))))

(declare-fun b!4882474 () Bool)

(declare-fun size!36987 (List!56224) Int)

(assert (=> b!4882474 (= e!3051473 (>= (size!36987 lt!2000010) (size!36987 lt!2000010)))))

(assert (= (and d!1569096 (not res!2084299)) b!4882471))

(assert (= (and b!4882471 res!2084298) b!4882472))

(assert (= (and b!4882472 res!2084301) b!4882473))

(assert (= (and d!1569096 (not res!2084300)) b!4882474))

(declare-fun m!5886640 () Bool)

(assert (=> b!4882473 m!5886640))

(assert (=> b!4882473 m!5886640))

(assert (=> b!4882473 m!5886640))

(assert (=> b!4882473 m!5886640))

(declare-fun m!5886642 () Bool)

(assert (=> b!4882473 m!5886642))

(declare-fun m!5886644 () Bool)

(assert (=> b!4882472 m!5886644))

(assert (=> b!4882472 m!5886644))

(declare-fun m!5886646 () Bool)

(assert (=> b!4882474 m!5886646))

(assert (=> b!4882474 m!5886646))

(assert (=> b!4882396 d!1569096))

(declare-fun d!1569098 () Bool)

(assert (=> d!1569098 (isPrefix!4795 lt!2000010 lt!2000010)))

(declare-fun lt!2000027 () Unit!146091)

(declare-fun choose!35665 (List!56224 List!56224) Unit!146091)

(assert (=> d!1569098 (= lt!2000027 (choose!35665 lt!2000010 lt!2000010))))

(assert (=> d!1569098 (= (lemmaIsPrefixRefl!3192 lt!2000010 lt!2000010) lt!2000027)))

(declare-fun bs!1175463 () Bool)

(assert (= bs!1175463 d!1569098))

(assert (=> bs!1175463 m!5886582))

(declare-fun m!5886648 () Bool)

(assert (=> bs!1175463 m!5886648))

(assert (=> b!4882396 d!1569098))

(declare-fun d!1569100 () Bool)

(declare-fun list!17596 (Conc!14641) List!56224)

(assert (=> d!1569100 (= (list!17594 input!1236) (list!17596 (c!830375 input!1236)))))

(declare-fun bs!1175464 () Bool)

(assert (= bs!1175464 d!1569100))

(declare-fun m!5886650 () Bool)

(assert (=> bs!1175464 m!5886650))

(assert (=> b!4882396 d!1569100))

(declare-fun d!1569102 () Bool)

(declare-fun isBalanced!3985 (Conc!14641) Bool)

(assert (=> d!1569102 (= (inv!72143 input!1236) (isBalanced!3985 (c!830375 input!1236)))))

(declare-fun bs!1175465 () Bool)

(assert (= bs!1175465 d!1569102))

(declare-fun m!5886652 () Bool)

(assert (=> bs!1175465 m!5886652))

(assert (=> start!510866 d!1569102))

(declare-fun b!4882485 () Bool)

(declare-fun b_free!130975 () Bool)

(declare-fun b_next!131765 () Bool)

(assert (=> b!4882485 (= b_free!130975 (not b_next!131765))))

(declare-fun tp!1373694 () Bool)

(declare-fun b_and!343807 () Bool)

(assert (=> b!4882485 (= tp!1373694 b_and!343807)))

(declare-fun b_free!130977 () Bool)

(declare-fun b_next!131767 () Bool)

(assert (=> b!4882485 (= b_free!130977 (not b_next!131767))))

(declare-fun tp!1373697 () Bool)

(declare-fun b_and!343809 () Bool)

(assert (=> b!4882485 (= tp!1373697 b_and!343809)))

(declare-fun e!3051486 () Bool)

(assert (=> b!4882485 (= e!3051486 (and tp!1373694 tp!1373697))))

(declare-fun b!4882484 () Bool)

(declare-fun e!3051485 () Bool)

(declare-fun tp!1373695 () Bool)

(assert (=> b!4882484 (= e!3051485 (and tp!1373695 (inv!72139 (tag!8937 (h!62550 (t!364872 rulesArg!165)))) (inv!72144 (transformation!8073 (h!62550 (t!364872 rulesArg!165)))) e!3051486))))

(declare-fun b!4882483 () Bool)

(declare-fun e!3051483 () Bool)

(declare-fun tp!1373696 () Bool)

(assert (=> b!4882483 (= e!3051483 (and e!3051485 tp!1373696))))

(assert (=> b!4882395 (= tp!1373670 e!3051483)))

(assert (= b!4882484 b!4882485))

(assert (= b!4882483 b!4882484))

(assert (= (and b!4882395 (is-Cons!56102 (t!364872 rulesArg!165))) b!4882483))

(declare-fun m!5886654 () Bool)

(assert (=> b!4882484 m!5886654))

(declare-fun m!5886656 () Bool)

(assert (=> b!4882484 m!5886656))

(declare-fun tp!1373706 () Bool)

(declare-fun b!4882494 () Bool)

(declare-fun tp!1373705 () Bool)

(declare-fun e!3051492 () Bool)

(assert (=> b!4882494 (= e!3051492 (and (inv!72142 (left!40760 (c!830375 input!1236))) tp!1373706 (inv!72142 (right!41090 (c!830375 input!1236))) tp!1373705))))

(declare-fun b!4882496 () Bool)

(declare-fun e!3051491 () Bool)

(declare-fun tp!1373704 () Bool)

(assert (=> b!4882496 (= e!3051491 tp!1373704)))

(declare-fun b!4882495 () Bool)

(declare-fun inv!72150 (IArray!29343) Bool)

(assert (=> b!4882495 (= e!3051492 (and (inv!72150 (xs!17957 (c!830375 input!1236))) e!3051491))))

(assert (=> b!4882393 (= tp!1373668 (and (inv!72142 (c!830375 input!1236)) e!3051492))))

(assert (= (and b!4882393 (is-Node!14641 (c!830375 input!1236))) b!4882494))

(assert (= b!4882495 b!4882496))

(assert (= (and b!4882393 (is-Leaf!24395 (c!830375 input!1236))) b!4882495))

(declare-fun m!5886658 () Bool)

(assert (=> b!4882494 m!5886658))

(declare-fun m!5886660 () Bool)

(assert (=> b!4882494 m!5886660))

(declare-fun m!5886662 () Bool)

(assert (=> b!4882495 m!5886662))

(assert (=> b!4882393 m!5886598))

(declare-fun e!3051495 () Bool)

(assert (=> b!4882398 (= tp!1373666 e!3051495)))

(declare-fun b!4882510 () Bool)

(declare-fun tp!1373720 () Bool)

(declare-fun tp!1373717 () Bool)

(assert (=> b!4882510 (= e!3051495 (and tp!1373720 tp!1373717))))

(declare-fun b!4882508 () Bool)

(declare-fun tp!1373718 () Bool)

(declare-fun tp!1373719 () Bool)

(assert (=> b!4882508 (= e!3051495 (and tp!1373718 tp!1373719))))

(declare-fun b!4882507 () Bool)

(declare-fun tp_is_empty!35713 () Bool)

(assert (=> b!4882507 (= e!3051495 tp_is_empty!35713)))

(declare-fun b!4882509 () Bool)

(declare-fun tp!1373721 () Bool)

(assert (=> b!4882509 (= e!3051495 tp!1373721)))

(assert (= (and b!4882398 (is-ElementMatch!13148 (regex!8073 (h!62550 rulesArg!165)))) b!4882507))

(assert (= (and b!4882398 (is-Concat!21532 (regex!8073 (h!62550 rulesArg!165)))) b!4882508))

(assert (= (and b!4882398 (is-Star!13148 (regex!8073 (h!62550 rulesArg!165)))) b!4882509))

(assert (= (and b!4882398 (is-Union!13148 (regex!8073 (h!62550 rulesArg!165)))) b!4882510))

(push 1)

(assert (not d!1569094))

(assert (not b!4882474))

(assert b_and!343807)

(assert (not b!4882462))

(assert (not b!4882484))

(assert (not b!4882496))

(assert (not b_next!131767))

(assert (not b!4882432))

(assert (not b!4882510))

(assert (not b!4882473))

(assert (not b!4882509))

(assert (not d!1569100))

(assert (not b!4882494))

(assert (not d!1569098))

(assert (not b!4882472))

(assert (not b_next!131765))

(assert b_and!343799)

(assert tp_is_empty!35713)

(assert (not b!4882393))

(assert b_and!343801)

(assert b_and!343809)

(assert (not d!1569082))

(assert (not b!4882437))

(assert (not b!4882456))

(assert (not b_next!131759))

(assert (not b!4882457))

(assert (not d!1569102))

(assert (not b!4882508))

(assert (not b!4882495))

(assert (not b!4882430))

(assert (not d!1569086))

(assert (not b!4882483))

(assert (not b_next!131757))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!131765))

(assert b_and!343807)

(assert b_and!343799)

(assert (not b_next!131767))

(assert (not b_next!131759))

(assert (not b_next!131757))

(assert b_and!343801)

(assert b_and!343809)

(check-sat)

(pop 1)

