; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!137948 () Bool)

(assert start!137948)

(declare-fun b!1472547 () Bool)

(declare-fun b_free!37371 () Bool)

(declare-fun b_next!38075 () Bool)

(assert (=> b!1472547 (= b_free!37371 (not b_next!38075))))

(declare-fun tp!416086 () Bool)

(declare-fun b_and!101189 () Bool)

(assert (=> b!1472547 (= tp!416086 b_and!101189)))

(declare-fun b_free!37373 () Bool)

(declare-fun b_next!38077 () Bool)

(assert (=> b!1472547 (= b_free!37373 (not b_next!38077))))

(declare-fun tp!416076 () Bool)

(declare-fun b_and!101191 () Bool)

(assert (=> b!1472547 (= tp!416076 b_and!101191)))

(declare-fun b!1472541 () Bool)

(declare-fun b_free!37375 () Bool)

(declare-fun b_next!38079 () Bool)

(assert (=> b!1472541 (= b_free!37375 (not b_next!38079))))

(declare-fun tp!416079 () Bool)

(declare-fun b_and!101193 () Bool)

(assert (=> b!1472541 (= tp!416079 b_and!101193)))

(declare-fun b_free!37377 () Bool)

(declare-fun b_next!38081 () Bool)

(assert (=> b!1472541 (= b_free!37377 (not b_next!38081))))

(declare-fun tp!416081 () Bool)

(declare-fun b_and!101195 () Bool)

(assert (=> b!1472541 (= tp!416081 b_and!101195)))

(declare-fun b!1472554 () Bool)

(declare-fun b_free!37379 () Bool)

(declare-fun b_next!38083 () Bool)

(assert (=> b!1472554 (= b_free!37379 (not b_next!38083))))

(declare-fun tp!416080 () Bool)

(declare-fun b_and!101197 () Bool)

(assert (=> b!1472554 (= tp!416080 b_and!101197)))

(declare-fun b_free!37381 () Bool)

(declare-fun b_next!38085 () Bool)

(assert (=> b!1472554 (= b_free!37381 (not b_next!38085))))

(declare-fun tp!416085 () Bool)

(declare-fun b_and!101199 () Bool)

(assert (=> b!1472554 (= tp!416085 b_and!101199)))

(declare-fun e!940532 () Bool)

(declare-datatypes ((List!15535 0))(
  ( (Nil!15469) (Cons!15469 (h!20870 (_ BitVec 16)) (t!135900 List!15535)) )
))
(declare-datatypes ((TokenValue!2842 0))(
  ( (FloatLiteralValue!5684 (text!20339 List!15535)) (TokenValueExt!2841 (__x!9474 Int)) (Broken!14210 (value!88055 List!15535)) (Object!2907) (End!2842) (Def!2842) (Underscore!2842) (Match!2842) (Else!2842) (Error!2842) (Case!2842) (If!2842) (Extends!2842) (Abstract!2842) (Class!2842) (Val!2842) (DelimiterValue!5684 (del!2902 List!15535)) (KeywordValue!2848 (value!88056 List!15535)) (CommentValue!5684 (value!88057 List!15535)) (WhitespaceValue!5684 (value!88058 List!15535)) (IndentationValue!2842 (value!88059 List!15535)) (String!18467) (Int32!2842) (Broken!14211 (value!88060 List!15535)) (Boolean!2843) (Unit!25169) (OperatorValue!2845 (op!2902 List!15535)) (IdentifierValue!5684 (value!88061 List!15535)) (IdentifierValue!5685 (value!88062 List!15535)) (WhitespaceValue!5685 (value!88063 List!15535)) (True!5684) (False!5684) (Broken!14212 (value!88064 List!15535)) (Broken!14213 (value!88065 List!15535)) (True!5685) (RightBrace!2842) (RightBracket!2842) (Colon!2842) (Null!2842) (Comma!2842) (LeftBracket!2842) (False!5685) (LeftBrace!2842) (ImaginaryLiteralValue!2842 (text!20340 List!15535)) (StringLiteralValue!8526 (value!88066 List!15535)) (EOFValue!2842 (value!88067 List!15535)) (IdentValue!2842 (value!88068 List!15535)) (DelimiterValue!5685 (value!88069 List!15535)) (DedentValue!2842 (value!88070 List!15535)) (NewLineValue!2842 (value!88071 List!15535)) (IntegerValue!8526 (value!88072 (_ BitVec 32)) (text!20341 List!15535)) (IntegerValue!8527 (value!88073 Int) (text!20342 List!15535)) (Times!2842) (Or!2842) (Equal!2842) (Minus!2842) (Broken!14214 (value!88074 List!15535)) (And!2842) (Div!2842) (LessEqual!2842) (Mod!2842) (Concat!6908) (Not!2842) (Plus!2842) (SpaceValue!2842 (value!88075 List!15535)) (IntegerValue!8528 (value!88076 Int) (text!20343 List!15535)) (StringLiteralValue!8527 (text!20344 List!15535)) (FloatLiteralValue!5685 (text!20345 List!15535)) (BytesLiteralValue!2842 (value!88077 List!15535)) (CommentValue!5685 (value!88078 List!15535)) (StringLiteralValue!8528 (value!88079 List!15535)) (ErrorTokenValue!2842 (msg!2903 List!15535)) )
))
(declare-datatypes ((C!8310 0))(
  ( (C!8311 (val!4725 Int)) )
))
(declare-datatypes ((Regex!4066 0))(
  ( (ElementMatch!4066 (c!242350 C!8310)) (Concat!6909 (regOne!8644 Regex!4066) (regTwo!8644 Regex!4066)) (EmptyExpr!4066) (Star!4066 (reg!4395 Regex!4066)) (EmptyLang!4066) (Union!4066 (regOne!8645 Regex!4066) (regTwo!8645 Regex!4066)) )
))
(declare-datatypes ((String!18468 0))(
  ( (String!18469 (value!88080 String)) )
))
(declare-datatypes ((List!15536 0))(
  ( (Nil!15470) (Cons!15470 (h!20871 C!8310) (t!135901 List!15536)) )
))
(declare-datatypes ((IArray!10557 0))(
  ( (IArray!10558 (innerList!5336 List!15536)) )
))
(declare-datatypes ((Conc!5276 0))(
  ( (Node!5276 (left!13083 Conc!5276) (right!13413 Conc!5276) (csize!10782 Int) (cheight!5487 Int)) (Leaf!7854 (xs!8031 IArray!10557) (csize!10783 Int)) (Empty!5276) )
))
(declare-datatypes ((BalanceConc!10492 0))(
  ( (BalanceConc!10493 (c!242351 Conc!5276)) )
))
(declare-datatypes ((TokenValueInjection!5344 0))(
  ( (TokenValueInjection!5345 (toValue!4079 Int) (toChars!3938 Int)) )
))
(declare-datatypes ((Rule!5304 0))(
  ( (Rule!5305 (regex!2752 Regex!4066) (tag!3016 String!18468) (isSeparator!2752 Bool) (transformation!2752 TokenValueInjection!5344)) )
))
(declare-datatypes ((Token!5166 0))(
  ( (Token!5167 (value!88081 TokenValue!2842) (rule!4529 Rule!5304) (size!12559 Int) (originalCharacters!3614 List!15536)) )
))
(declare-datatypes ((List!15537 0))(
  ( (Nil!15471) (Cons!15471 (h!20872 Token!5166) (t!135902 List!15537)) )
))
(declare-fun l2!3105 () List!15537)

(declare-fun b!1472540 () Bool)

(declare-fun e!940546 () Bool)

(declare-fun tp!416082 () Bool)

(declare-fun inv!21 (TokenValue!2842) Bool)

(assert (=> b!1472540 (= e!940532 (and (inv!21 (value!88081 (h!20872 l2!3105))) e!940546 tp!416082))))

(declare-fun e!940542 () Bool)

(assert (=> b!1472541 (= e!940542 (and tp!416079 tp!416081))))

(declare-fun b!1472542 () Bool)

(declare-fun e!940535 () Bool)

(declare-fun e!940536 () Bool)

(declare-fun tp!416075 () Bool)

(assert (=> b!1472542 (= e!940535 (and e!940536 tp!416075))))

(declare-fun b!1472543 () Bool)

(declare-fun l1!3136 () List!15537)

(declare-fun tp!416083 () Bool)

(declare-fun e!940539 () Bool)

(declare-fun e!940547 () Bool)

(declare-fun inv!20680 (Token!5166) Bool)

(assert (=> b!1472543 (= e!940547 (and (inv!20680 (h!20872 l1!3136)) e!940539 tp!416083))))

(declare-fun b!1472544 () Bool)

(declare-fun res!665570 () Bool)

(declare-fun e!940533 () Bool)

(assert (=> b!1472544 (=> (not res!665570) (not e!940533))))

(declare-datatypes ((LexerInterface!2408 0))(
  ( (LexerInterfaceExt!2405 (__x!9475 Int)) (Lexer!2406) )
))
(declare-fun thiss!27374 () LexerInterface!2408)

(declare-datatypes ((List!15538 0))(
  ( (Nil!15472) (Cons!15472 (h!20873 Rule!5304) (t!135903 List!15538)) )
))
(declare-fun rules!4290 () List!15538)

(declare-fun rulesInvariant!2197 (LexerInterface!2408 List!15538) Bool)

(assert (=> b!1472544 (= res!665570 (rulesInvariant!2197 thiss!27374 rules!4290))))

(declare-fun b!1472545 () Bool)

(declare-fun res!665565 () Bool)

(assert (=> b!1472545 (=> (not res!665565) (not e!940533))))

(declare-fun isEmpty!9662 (List!15537) Bool)

(assert (=> b!1472545 (= res!665565 (not (isEmpty!9662 l1!3136)))))

(declare-fun b!1472546 () Bool)

(declare-fun res!665572 () Bool)

(assert (=> b!1472546 (=> (not res!665572) (not e!940533))))

(declare-fun isEmpty!9663 (List!15538) Bool)

(assert (=> b!1472546 (= res!665572 (not (isEmpty!9663 rules!4290)))))

(declare-fun e!940538 () Bool)

(assert (=> b!1472547 (= e!940538 (and tp!416086 tp!416076))))

(declare-fun b!1472548 () Bool)

(declare-fun res!665567 () Bool)

(assert (=> b!1472548 (=> (not res!665567) (not e!940533))))

(declare-fun rulesProduceEachTokenIndividuallyList!775 (LexerInterface!2408 List!15538 List!15537) Bool)

(assert (=> b!1472548 (= res!665567 (rulesProduceEachTokenIndividuallyList!775 thiss!27374 rules!4290 l2!3105))))

(declare-fun res!665564 () Bool)

(assert (=> start!137948 (=> (not res!665564) (not e!940533))))

(assert (=> start!137948 (= res!665564 (is-Lexer!2406 thiss!27374))))

(assert (=> start!137948 e!940533))

(assert (=> start!137948 true))

(assert (=> start!137948 e!940535))

(assert (=> start!137948 e!940547))

(declare-fun e!940545 () Bool)

(assert (=> start!137948 e!940545))

(declare-fun b!1472549 () Bool)

(declare-fun res!665571 () Bool)

(assert (=> b!1472549 (=> (not res!665571) (not e!940533))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!268 (LexerInterface!2408 List!15537 List!15538) Bool)

(assert (=> b!1472549 (= res!665571 (tokensListTwoByTwoPredicateSeparableList!268 thiss!27374 l1!3136 rules!4290))))

(declare-fun b!1472550 () Bool)

(declare-fun tp!416087 () Bool)

(declare-fun inv!20677 (String!18468) Bool)

(declare-fun inv!20681 (TokenValueInjection!5344) Bool)

(assert (=> b!1472550 (= e!940546 (and tp!416087 (inv!20677 (tag!3016 (rule!4529 (h!20872 l2!3105)))) (inv!20681 (transformation!2752 (rule!4529 (h!20872 l2!3105)))) e!940538))))

(declare-fun tp!416078 () Bool)

(declare-fun e!940544 () Bool)

(declare-fun b!1472551 () Bool)

(assert (=> b!1472551 (= e!940539 (and (inv!21 (value!88081 (h!20872 l1!3136))) e!940544 tp!416078))))

(declare-fun tp!416077 () Bool)

(declare-fun b!1472552 () Bool)

(assert (=> b!1472552 (= e!940544 (and tp!416077 (inv!20677 (tag!3016 (rule!4529 (h!20872 l1!3136)))) (inv!20681 (transformation!2752 (rule!4529 (h!20872 l1!3136)))) e!940542))))

(declare-fun b!1472553 () Bool)

(declare-fun res!665569 () Bool)

(assert (=> b!1472553 (=> (not res!665569) (not e!940533))))

(assert (=> b!1472553 (= res!665569 (not (isEmpty!9662 l2!3105)))))

(declare-fun e!940540 () Bool)

(assert (=> b!1472554 (= e!940540 (and tp!416080 tp!416085))))

(declare-fun b!1472555 () Bool)

(declare-fun res!665566 () Bool)

(assert (=> b!1472555 (=> (not res!665566) (not e!940533))))

(assert (=> b!1472555 (= res!665566 (rulesProduceEachTokenIndividuallyList!775 thiss!27374 rules!4290 l1!3136))))

(declare-fun b!1472556 () Bool)

(declare-fun res!665568 () Bool)

(assert (=> b!1472556 (=> (not res!665568) (not e!940533))))

(assert (=> b!1472556 (= res!665568 (tokensListTwoByTwoPredicateSeparableList!268 thiss!27374 l2!3105 rules!4290))))

(declare-fun b!1472557 () Bool)

(declare-fun lt!511739 () Token!5166)

(declare-fun isEmpty!9664 (BalanceConc!10492) Bool)

(declare-fun charsOf!1579 (Token!5166) BalanceConc!10492)

(assert (=> b!1472557 (= e!940533 (not (not (isEmpty!9664 (charsOf!1579 lt!511739)))))))

(declare-fun rulesProduceIndividualToken!1267 (LexerInterface!2408 List!15538 Token!5166) Bool)

(assert (=> b!1472557 (rulesProduceIndividualToken!1267 thiss!27374 rules!4290 lt!511739)))

(declare-datatypes ((Unit!25170 0))(
  ( (Unit!25171) )
))
(declare-fun lt!511737 () Unit!25170)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!448 (LexerInterface!2408 List!15538 List!15537 Token!5166) Unit!25170)

(assert (=> b!1472557 (= lt!511737 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!448 thiss!27374 rules!4290 l2!3105 lt!511739))))

(declare-fun head!3046 (List!15537) Token!5166)

(assert (=> b!1472557 (= lt!511739 (head!3046 l2!3105))))

(declare-fun lt!511736 () Token!5166)

(assert (=> b!1472557 (rulesProduceIndividualToken!1267 thiss!27374 rules!4290 lt!511736)))

(declare-fun lt!511738 () Unit!25170)

(assert (=> b!1472557 (= lt!511738 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!448 thiss!27374 rules!4290 l1!3136 lt!511736))))

(declare-fun last!310 (List!15537) Token!5166)

(assert (=> b!1472557 (= lt!511736 (last!310 l1!3136))))

(declare-fun b!1472558 () Bool)

(declare-fun tp!416084 () Bool)

(assert (=> b!1472558 (= e!940545 (and (inv!20680 (h!20872 l2!3105)) e!940532 tp!416084))))

(declare-fun b!1472559 () Bool)

(declare-fun tp!416088 () Bool)

(assert (=> b!1472559 (= e!940536 (and tp!416088 (inv!20677 (tag!3016 (h!20873 rules!4290))) (inv!20681 (transformation!2752 (h!20873 rules!4290))) e!940540))))

(assert (= (and start!137948 res!665564) b!1472546))

(assert (= (and b!1472546 res!665572) b!1472544))

(assert (= (and b!1472544 res!665570) b!1472555))

(assert (= (and b!1472555 res!665566) b!1472548))

(assert (= (and b!1472548 res!665567) b!1472549))

(assert (= (and b!1472549 res!665571) b!1472556))

(assert (= (and b!1472556 res!665568) b!1472545))

(assert (= (and b!1472545 res!665565) b!1472553))

(assert (= (and b!1472553 res!665569) b!1472557))

(assert (= b!1472559 b!1472554))

(assert (= b!1472542 b!1472559))

(assert (= (and start!137948 (is-Cons!15472 rules!4290)) b!1472542))

(assert (= b!1472552 b!1472541))

(assert (= b!1472551 b!1472552))

(assert (= b!1472543 b!1472551))

(assert (= (and start!137948 (is-Cons!15471 l1!3136)) b!1472543))

(assert (= b!1472550 b!1472547))

(assert (= b!1472540 b!1472550))

(assert (= b!1472558 b!1472540))

(assert (= (and start!137948 (is-Cons!15471 l2!3105)) b!1472558))

(declare-fun m!1716553 () Bool)

(assert (=> b!1472546 m!1716553))

(declare-fun m!1716555 () Bool)

(assert (=> b!1472549 m!1716555))

(declare-fun m!1716557 () Bool)

(assert (=> b!1472544 m!1716557))

(declare-fun m!1716559 () Bool)

(assert (=> b!1472545 m!1716559))

(declare-fun m!1716561 () Bool)

(assert (=> b!1472557 m!1716561))

(declare-fun m!1716563 () Bool)

(assert (=> b!1472557 m!1716563))

(declare-fun m!1716565 () Bool)

(assert (=> b!1472557 m!1716565))

(declare-fun m!1716567 () Bool)

(assert (=> b!1472557 m!1716567))

(declare-fun m!1716569 () Bool)

(assert (=> b!1472557 m!1716569))

(declare-fun m!1716571 () Bool)

(assert (=> b!1472557 m!1716571))

(assert (=> b!1472557 m!1716569))

(declare-fun m!1716573 () Bool)

(assert (=> b!1472557 m!1716573))

(declare-fun m!1716575 () Bool)

(assert (=> b!1472557 m!1716575))

(declare-fun m!1716577 () Bool)

(assert (=> b!1472555 m!1716577))

(declare-fun m!1716579 () Bool)

(assert (=> b!1472553 m!1716579))

(declare-fun m!1716581 () Bool)

(assert (=> b!1472559 m!1716581))

(declare-fun m!1716583 () Bool)

(assert (=> b!1472559 m!1716583))

(declare-fun m!1716585 () Bool)

(assert (=> b!1472558 m!1716585))

(declare-fun m!1716587 () Bool)

(assert (=> b!1472548 m!1716587))

(declare-fun m!1716589 () Bool)

(assert (=> b!1472552 m!1716589))

(declare-fun m!1716591 () Bool)

(assert (=> b!1472552 m!1716591))

(declare-fun m!1716593 () Bool)

(assert (=> b!1472540 m!1716593))

(declare-fun m!1716595 () Bool)

(assert (=> b!1472556 m!1716595))

(declare-fun m!1716597 () Bool)

(assert (=> b!1472551 m!1716597))

(declare-fun m!1716599 () Bool)

(assert (=> b!1472550 m!1716599))

(declare-fun m!1716601 () Bool)

(assert (=> b!1472550 m!1716601))

(declare-fun m!1716603 () Bool)

(assert (=> b!1472543 m!1716603))

(push 1)

(assert (not b!1472551))

(assert (not b!1472546))

(assert (not b!1472552))

(assert (not b_next!38083))

(assert (not b!1472543))

(assert (not b!1472557))

(assert (not b!1472544))

(assert (not b!1472553))

(assert (not b_next!38085))

(assert (not b!1472549))

(assert (not b!1472550))

(assert (not b_next!38075))

(assert (not b!1472545))

(assert (not b_next!38077))

(assert b_and!101191)

(assert (not b!1472559))

(assert (not b!1472548))

(assert (not b_next!38081))

(assert (not b_next!38079))

(assert b_and!101199)

(assert (not b!1472555))

(assert (not b!1472542))

(assert b_and!101189)

(assert b_and!101197)

(assert (not b!1472540))

(assert b_and!101195)

(assert (not b!1472558))

(assert b_and!101193)

(assert (not b!1472556))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!38077))

(assert b_and!101191)

(assert (not b_next!38083))

(assert b_and!101199)

(assert (not b_next!38085))

(assert b_and!101189)

(assert b_and!101197)

(assert (not b_next!38075))

(assert (not b_next!38081))

(assert (not b_next!38079))

(assert b_and!101195)

(assert b_and!101193)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!431718 () Bool)

(declare-fun res!665608 () Bool)

(declare-fun e!940601 () Bool)

(assert (=> d!431718 (=> (not res!665608) (not e!940601))))

(declare-fun isEmpty!9668 (List!15536) Bool)

(assert (=> d!431718 (= res!665608 (not (isEmpty!9668 (originalCharacters!3614 (h!20872 l1!3136)))))))

(assert (=> d!431718 (= (inv!20680 (h!20872 l1!3136)) e!940601)))

(declare-fun b!1472624 () Bool)

(declare-fun res!665609 () Bool)

(assert (=> b!1472624 (=> (not res!665609) (not e!940601))))

(declare-fun list!6175 (BalanceConc!10492) List!15536)

(declare-fun dynLambda!7023 (Int TokenValue!2842) BalanceConc!10492)

(assert (=> b!1472624 (= res!665609 (= (originalCharacters!3614 (h!20872 l1!3136)) (list!6175 (dynLambda!7023 (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l1!3136)))) (value!88081 (h!20872 l1!3136))))))))

(declare-fun b!1472625 () Bool)

(declare-fun size!12561 (List!15536) Int)

(assert (=> b!1472625 (= e!940601 (= (size!12559 (h!20872 l1!3136)) (size!12561 (originalCharacters!3614 (h!20872 l1!3136)))))))

(assert (= (and d!431718 res!665608) b!1472624))

(assert (= (and b!1472624 res!665609) b!1472625))

(declare-fun b_lambda!45983 () Bool)

(assert (=> (not b_lambda!45983) (not b!1472624)))

(declare-fun tb!83513 () Bool)

(declare-fun t!135909 () Bool)

(assert (=> (and b!1472547 (= (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l2!3105)))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l1!3136))))) t!135909) tb!83513))

(declare-fun b!1472630 () Bool)

(declare-fun e!940604 () Bool)

(declare-fun tp!416133 () Bool)

(declare-fun inv!20684 (Conc!5276) Bool)

(assert (=> b!1472630 (= e!940604 (and (inv!20684 (c!242351 (dynLambda!7023 (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l1!3136)))) (value!88081 (h!20872 l1!3136))))) tp!416133))))

(declare-fun result!100398 () Bool)

(declare-fun inv!20685 (BalanceConc!10492) Bool)

(assert (=> tb!83513 (= result!100398 (and (inv!20685 (dynLambda!7023 (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l1!3136)))) (value!88081 (h!20872 l1!3136)))) e!940604))))

(assert (= tb!83513 b!1472630))

(declare-fun m!1716657 () Bool)

(assert (=> b!1472630 m!1716657))

(declare-fun m!1716659 () Bool)

(assert (=> tb!83513 m!1716659))

(assert (=> b!1472624 t!135909))

(declare-fun b_and!101213 () Bool)

(assert (= b_and!101191 (and (=> t!135909 result!100398) b_and!101213)))

(declare-fun t!135911 () Bool)

(declare-fun tb!83515 () Bool)

(assert (=> (and b!1472541 (= (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l1!3136)))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l1!3136))))) t!135911) tb!83515))

(declare-fun result!100402 () Bool)

(assert (= result!100402 result!100398))

(assert (=> b!1472624 t!135911))

(declare-fun b_and!101215 () Bool)

(assert (= b_and!101195 (and (=> t!135911 result!100402) b_and!101215)))

(declare-fun t!135913 () Bool)

(declare-fun tb!83517 () Bool)

(assert (=> (and b!1472554 (= (toChars!3938 (transformation!2752 (h!20873 rules!4290))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l1!3136))))) t!135913) tb!83517))

(declare-fun result!100404 () Bool)

(assert (= result!100404 result!100398))

(assert (=> b!1472624 t!135913))

(declare-fun b_and!101217 () Bool)

(assert (= b_and!101199 (and (=> t!135913 result!100404) b_and!101217)))

(declare-fun m!1716661 () Bool)

(assert (=> d!431718 m!1716661))

(declare-fun m!1716663 () Bool)

(assert (=> b!1472624 m!1716663))

(assert (=> b!1472624 m!1716663))

(declare-fun m!1716665 () Bool)

(assert (=> b!1472624 m!1716665))

(declare-fun m!1716667 () Bool)

(assert (=> b!1472625 m!1716667))

(assert (=> b!1472543 d!431718))

(declare-fun d!431720 () Bool)

(assert (=> d!431720 (= (isEmpty!9662 l2!3105) (is-Nil!15471 l2!3105))))

(assert (=> b!1472553 d!431720))

(declare-fun b!1472651 () Bool)

(declare-fun e!940623 () Bool)

(assert (=> b!1472651 (= e!940623 true)))

(declare-fun b!1472650 () Bool)

(declare-fun e!940622 () Bool)

(assert (=> b!1472650 (= e!940622 e!940623)))

(declare-fun b!1472649 () Bool)

(declare-fun e!940621 () Bool)

(assert (=> b!1472649 (= e!940621 e!940622)))

(declare-fun d!431722 () Bool)

(assert (=> d!431722 e!940621))

(assert (= b!1472650 b!1472651))

(assert (= b!1472649 b!1472650))

(assert (= (and d!431722 (is-Cons!15472 rules!4290)) b!1472649))

(declare-fun order!9297 () Int)

(declare-fun lambda!63534 () Int)

(declare-fun order!9295 () Int)

(declare-fun dynLambda!7024 (Int Int) Int)

(declare-fun dynLambda!7025 (Int Int) Int)

(assert (=> b!1472651 (< (dynLambda!7024 order!9295 (toValue!4079 (transformation!2752 (h!20873 rules!4290)))) (dynLambda!7025 order!9297 lambda!63534))))

(declare-fun order!9299 () Int)

(declare-fun dynLambda!7026 (Int Int) Int)

(assert (=> b!1472651 (< (dynLambda!7026 order!9299 (toChars!3938 (transformation!2752 (h!20873 rules!4290)))) (dynLambda!7025 order!9297 lambda!63534))))

(assert (=> d!431722 true))

(declare-fun lt!511756 () Bool)

(declare-fun forall!3773 (List!15537 Int) Bool)

(assert (=> d!431722 (= lt!511756 (forall!3773 l1!3136 lambda!63534))))

(declare-fun e!940613 () Bool)

(assert (=> d!431722 (= lt!511756 e!940613)))

(declare-fun res!665618 () Bool)

(assert (=> d!431722 (=> res!665618 e!940613)))

(assert (=> d!431722 (= res!665618 (not (is-Cons!15471 l1!3136)))))

(assert (=> d!431722 (not (isEmpty!9663 rules!4290))))

(assert (=> d!431722 (= (rulesProduceEachTokenIndividuallyList!775 thiss!27374 rules!4290 l1!3136) lt!511756)))

(declare-fun b!1472639 () Bool)

(declare-fun e!940614 () Bool)

(assert (=> b!1472639 (= e!940613 e!940614)))

(declare-fun res!665619 () Bool)

(assert (=> b!1472639 (=> (not res!665619) (not e!940614))))

(assert (=> b!1472639 (= res!665619 (rulesProduceIndividualToken!1267 thiss!27374 rules!4290 (h!20872 l1!3136)))))

(declare-fun b!1472640 () Bool)

(assert (=> b!1472640 (= e!940614 (rulesProduceEachTokenIndividuallyList!775 thiss!27374 rules!4290 (t!135902 l1!3136)))))

(assert (= (and d!431722 (not res!665618)) b!1472639))

(assert (= (and b!1472639 res!665619) b!1472640))

(declare-fun m!1716669 () Bool)

(assert (=> d!431722 m!1716669))

(assert (=> d!431722 m!1716553))

(declare-fun m!1716671 () Bool)

(assert (=> b!1472639 m!1716671))

(declare-fun m!1716673 () Bool)

(assert (=> b!1472640 m!1716673))

(assert (=> b!1472555 d!431722))

(declare-fun d!431726 () Bool)

(declare-fun res!665622 () Bool)

(declare-fun e!940626 () Bool)

(assert (=> d!431726 (=> (not res!665622) (not e!940626))))

(declare-fun rulesValid!1004 (LexerInterface!2408 List!15538) Bool)

(assert (=> d!431726 (= res!665622 (rulesValid!1004 thiss!27374 rules!4290))))

(assert (=> d!431726 (= (rulesInvariant!2197 thiss!27374 rules!4290) e!940626)))

(declare-fun b!1472656 () Bool)

(declare-datatypes ((List!15543 0))(
  ( (Nil!15477) (Cons!15477 (h!20878 String!18468) (t!135963 List!15543)) )
))
(declare-fun noDuplicateTag!1004 (LexerInterface!2408 List!15538 List!15543) Bool)

(assert (=> b!1472656 (= e!940626 (noDuplicateTag!1004 thiss!27374 rules!4290 Nil!15477))))

(assert (= (and d!431726 res!665622) b!1472656))

(declare-fun m!1716675 () Bool)

(assert (=> d!431726 m!1716675))

(declare-fun m!1716677 () Bool)

(assert (=> b!1472656 m!1716677))

(assert (=> b!1472544 d!431726))

(declare-fun b!1472667 () Bool)

(declare-fun e!940633 () Bool)

(declare-fun e!940635 () Bool)

(assert (=> b!1472667 (= e!940633 e!940635)))

(declare-fun c!242358 () Bool)

(assert (=> b!1472667 (= c!242358 (is-IntegerValue!8527 (value!88081 (h!20872 l1!3136))))))

(declare-fun d!431728 () Bool)

(declare-fun c!242359 () Bool)

(assert (=> d!431728 (= c!242359 (is-IntegerValue!8526 (value!88081 (h!20872 l1!3136))))))

(assert (=> d!431728 (= (inv!21 (value!88081 (h!20872 l1!3136))) e!940633)))

(declare-fun b!1472668 () Bool)

(declare-fun inv!17 (TokenValue!2842) Bool)

(assert (=> b!1472668 (= e!940635 (inv!17 (value!88081 (h!20872 l1!3136))))))

(declare-fun b!1472669 () Bool)

(declare-fun e!940634 () Bool)

(declare-fun inv!15 (TokenValue!2842) Bool)

(assert (=> b!1472669 (= e!940634 (inv!15 (value!88081 (h!20872 l1!3136))))))

(declare-fun b!1472670 () Bool)

(declare-fun inv!16 (TokenValue!2842) Bool)

(assert (=> b!1472670 (= e!940633 (inv!16 (value!88081 (h!20872 l1!3136))))))

(declare-fun b!1472671 () Bool)

(declare-fun res!665625 () Bool)

(assert (=> b!1472671 (=> res!665625 e!940634)))

(assert (=> b!1472671 (= res!665625 (not (is-IntegerValue!8528 (value!88081 (h!20872 l1!3136)))))))

(assert (=> b!1472671 (= e!940635 e!940634)))

(assert (= (and d!431728 c!242359) b!1472670))

(assert (= (and d!431728 (not c!242359)) b!1472667))

(assert (= (and b!1472667 c!242358) b!1472668))

(assert (= (and b!1472667 (not c!242358)) b!1472671))

(assert (= (and b!1472671 (not res!665625)) b!1472669))

(declare-fun m!1716679 () Bool)

(assert (=> b!1472668 m!1716679))

(declare-fun m!1716681 () Bool)

(assert (=> b!1472669 m!1716681))

(declare-fun m!1716683 () Bool)

(assert (=> b!1472670 m!1716683))

(assert (=> b!1472551 d!431728))

(declare-fun b!1472672 () Bool)

(declare-fun e!940636 () Bool)

(declare-fun e!940638 () Bool)

(assert (=> b!1472672 (= e!940636 e!940638)))

(declare-fun c!242360 () Bool)

(assert (=> b!1472672 (= c!242360 (is-IntegerValue!8527 (value!88081 (h!20872 l2!3105))))))

(declare-fun d!431730 () Bool)

(declare-fun c!242361 () Bool)

(assert (=> d!431730 (= c!242361 (is-IntegerValue!8526 (value!88081 (h!20872 l2!3105))))))

(assert (=> d!431730 (= (inv!21 (value!88081 (h!20872 l2!3105))) e!940636)))

(declare-fun b!1472673 () Bool)

(assert (=> b!1472673 (= e!940638 (inv!17 (value!88081 (h!20872 l2!3105))))))

(declare-fun b!1472674 () Bool)

(declare-fun e!940637 () Bool)

(assert (=> b!1472674 (= e!940637 (inv!15 (value!88081 (h!20872 l2!3105))))))

(declare-fun b!1472675 () Bool)

(assert (=> b!1472675 (= e!940636 (inv!16 (value!88081 (h!20872 l2!3105))))))

(declare-fun b!1472676 () Bool)

(declare-fun res!665626 () Bool)

(assert (=> b!1472676 (=> res!665626 e!940637)))

(assert (=> b!1472676 (= res!665626 (not (is-IntegerValue!8528 (value!88081 (h!20872 l2!3105)))))))

(assert (=> b!1472676 (= e!940638 e!940637)))

(assert (= (and d!431730 c!242361) b!1472675))

(assert (= (and d!431730 (not c!242361)) b!1472672))

(assert (= (and b!1472672 c!242360) b!1472673))

(assert (= (and b!1472672 (not c!242360)) b!1472676))

(assert (= (and b!1472676 (not res!665626)) b!1472674))

(declare-fun m!1716685 () Bool)

(assert (=> b!1472673 m!1716685))

(declare-fun m!1716687 () Bool)

(assert (=> b!1472674 m!1716687))

(declare-fun m!1716689 () Bool)

(assert (=> b!1472675 m!1716689))

(assert (=> b!1472540 d!431730))

(declare-fun d!431732 () Bool)

(assert (=> d!431732 (= (inv!20677 (tag!3016 (rule!4529 (h!20872 l1!3136)))) (= (mod (str.len (value!88080 (tag!3016 (rule!4529 (h!20872 l1!3136))))) 2) 0))))

(assert (=> b!1472552 d!431732))

(declare-fun d!431734 () Bool)

(declare-fun res!665629 () Bool)

(declare-fun e!940641 () Bool)

(assert (=> d!431734 (=> (not res!665629) (not e!940641))))

(declare-fun semiInverseModEq!1030 (Int Int) Bool)

(assert (=> d!431734 (= res!665629 (semiInverseModEq!1030 (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l1!3136)))) (toValue!4079 (transformation!2752 (rule!4529 (h!20872 l1!3136))))))))

(assert (=> d!431734 (= (inv!20681 (transformation!2752 (rule!4529 (h!20872 l1!3136)))) e!940641)))

(declare-fun b!1472679 () Bool)

(declare-fun equivClasses!989 (Int Int) Bool)

(assert (=> b!1472679 (= e!940641 (equivClasses!989 (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l1!3136)))) (toValue!4079 (transformation!2752 (rule!4529 (h!20872 l1!3136))))))))

(assert (= (and d!431734 res!665629) b!1472679))

(declare-fun m!1716691 () Bool)

(assert (=> d!431734 m!1716691))

(declare-fun m!1716693 () Bool)

(assert (=> b!1472679 m!1716693))

(assert (=> b!1472552 d!431734))

(declare-fun d!431736 () Bool)

(assert (=> d!431736 (= (inv!20677 (tag!3016 (h!20873 rules!4290))) (= (mod (str.len (value!88080 (tag!3016 (h!20873 rules!4290)))) 2) 0))))

(assert (=> b!1472559 d!431736))

(declare-fun d!431738 () Bool)

(declare-fun res!665630 () Bool)

(declare-fun e!940642 () Bool)

(assert (=> d!431738 (=> (not res!665630) (not e!940642))))

(assert (=> d!431738 (= res!665630 (semiInverseModEq!1030 (toChars!3938 (transformation!2752 (h!20873 rules!4290))) (toValue!4079 (transformation!2752 (h!20873 rules!4290)))))))

(assert (=> d!431738 (= (inv!20681 (transformation!2752 (h!20873 rules!4290))) e!940642)))

(declare-fun b!1472680 () Bool)

(assert (=> b!1472680 (= e!940642 (equivClasses!989 (toChars!3938 (transformation!2752 (h!20873 rules!4290))) (toValue!4079 (transformation!2752 (h!20873 rules!4290)))))))

(assert (= (and d!431738 res!665630) b!1472680))

(declare-fun m!1716695 () Bool)

(assert (=> d!431738 m!1716695))

(declare-fun m!1716697 () Bool)

(assert (=> b!1472680 m!1716697))

(assert (=> b!1472559 d!431738))

(declare-fun bs!345167 () Bool)

(declare-fun d!431740 () Bool)

(assert (= bs!345167 (and d!431740 d!431722)))

(declare-fun lambda!63535 () Int)

(assert (=> bs!345167 (= lambda!63535 lambda!63534)))

(declare-fun b!1472685 () Bool)

(declare-fun e!940647 () Bool)

(assert (=> b!1472685 (= e!940647 true)))

(declare-fun b!1472684 () Bool)

(declare-fun e!940646 () Bool)

(assert (=> b!1472684 (= e!940646 e!940647)))

(declare-fun b!1472683 () Bool)

(declare-fun e!940645 () Bool)

(assert (=> b!1472683 (= e!940645 e!940646)))

(assert (=> d!431740 e!940645))

(assert (= b!1472684 b!1472685))

(assert (= b!1472683 b!1472684))

(assert (= (and d!431740 (is-Cons!15472 rules!4290)) b!1472683))

(assert (=> b!1472685 (< (dynLambda!7024 order!9295 (toValue!4079 (transformation!2752 (h!20873 rules!4290)))) (dynLambda!7025 order!9297 lambda!63535))))

(assert (=> b!1472685 (< (dynLambda!7026 order!9299 (toChars!3938 (transformation!2752 (h!20873 rules!4290)))) (dynLambda!7025 order!9297 lambda!63535))))

(assert (=> d!431740 true))

(declare-fun lt!511757 () Bool)

(assert (=> d!431740 (= lt!511757 (forall!3773 l2!3105 lambda!63535))))

(declare-fun e!940643 () Bool)

(assert (=> d!431740 (= lt!511757 e!940643)))

(declare-fun res!665631 () Bool)

(assert (=> d!431740 (=> res!665631 e!940643)))

(assert (=> d!431740 (= res!665631 (not (is-Cons!15471 l2!3105)))))

(assert (=> d!431740 (not (isEmpty!9663 rules!4290))))

(assert (=> d!431740 (= (rulesProduceEachTokenIndividuallyList!775 thiss!27374 rules!4290 l2!3105) lt!511757)))

(declare-fun b!1472681 () Bool)

(declare-fun e!940644 () Bool)

(assert (=> b!1472681 (= e!940643 e!940644)))

(declare-fun res!665632 () Bool)

(assert (=> b!1472681 (=> (not res!665632) (not e!940644))))

(assert (=> b!1472681 (= res!665632 (rulesProduceIndividualToken!1267 thiss!27374 rules!4290 (h!20872 l2!3105)))))

(declare-fun b!1472682 () Bool)

(assert (=> b!1472682 (= e!940644 (rulesProduceEachTokenIndividuallyList!775 thiss!27374 rules!4290 (t!135902 l2!3105)))))

(assert (= (and d!431740 (not res!665631)) b!1472681))

(assert (= (and b!1472681 res!665632) b!1472682))

(declare-fun m!1716699 () Bool)

(assert (=> d!431740 m!1716699))

(assert (=> d!431740 m!1716553))

(declare-fun m!1716701 () Bool)

(assert (=> b!1472681 m!1716701))

(declare-fun m!1716703 () Bool)

(assert (=> b!1472682 m!1716703))

(assert (=> b!1472548 d!431740))

(declare-fun d!431742 () Bool)

(assert (=> d!431742 (= (inv!20677 (tag!3016 (rule!4529 (h!20872 l2!3105)))) (= (mod (str.len (value!88080 (tag!3016 (rule!4529 (h!20872 l2!3105))))) 2) 0))))

(assert (=> b!1472550 d!431742))

(declare-fun d!431744 () Bool)

(declare-fun res!665633 () Bool)

(declare-fun e!940648 () Bool)

(assert (=> d!431744 (=> (not res!665633) (not e!940648))))

(assert (=> d!431744 (= res!665633 (semiInverseModEq!1030 (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l2!3105)))) (toValue!4079 (transformation!2752 (rule!4529 (h!20872 l2!3105))))))))

(assert (=> d!431744 (= (inv!20681 (transformation!2752 (rule!4529 (h!20872 l2!3105)))) e!940648)))

(declare-fun b!1472686 () Bool)

(assert (=> b!1472686 (= e!940648 (equivClasses!989 (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l2!3105)))) (toValue!4079 (transformation!2752 (rule!4529 (h!20872 l2!3105))))))))

(assert (= (and d!431744 res!665633) b!1472686))

(declare-fun m!1716705 () Bool)

(assert (=> d!431744 m!1716705))

(declare-fun m!1716707 () Bool)

(assert (=> b!1472686 m!1716707))

(assert (=> b!1472550 d!431744))

(declare-fun d!431746 () Bool)

(declare-fun res!665638 () Bool)

(declare-fun e!940653 () Bool)

(assert (=> d!431746 (=> res!665638 e!940653)))

(assert (=> d!431746 (= res!665638 (or (not (is-Cons!15471 l1!3136)) (not (is-Cons!15471 (t!135902 l1!3136)))))))

(assert (=> d!431746 (= (tokensListTwoByTwoPredicateSeparableList!268 thiss!27374 l1!3136 rules!4290) e!940653)))

(declare-fun b!1472691 () Bool)

(declare-fun e!940654 () Bool)

(assert (=> b!1472691 (= e!940653 e!940654)))

(declare-fun res!665639 () Bool)

(assert (=> b!1472691 (=> (not res!665639) (not e!940654))))

(declare-fun separableTokensPredicate!551 (LexerInterface!2408 Token!5166 Token!5166 List!15538) Bool)

(assert (=> b!1472691 (= res!665639 (separableTokensPredicate!551 thiss!27374 (h!20872 l1!3136) (h!20872 (t!135902 l1!3136)) rules!4290))))

(declare-fun lt!511773 () Unit!25170)

(declare-fun Unit!25175 () Unit!25170)

(assert (=> b!1472691 (= lt!511773 Unit!25175)))

(declare-fun size!12562 (BalanceConc!10492) Int)

(assert (=> b!1472691 (> (size!12562 (charsOf!1579 (h!20872 (t!135902 l1!3136)))) 0)))

(declare-fun lt!511774 () Unit!25170)

(declare-fun Unit!25176 () Unit!25170)

(assert (=> b!1472691 (= lt!511774 Unit!25176)))

(assert (=> b!1472691 (rulesProduceIndividualToken!1267 thiss!27374 rules!4290 (h!20872 (t!135902 l1!3136)))))

(declare-fun lt!511776 () Unit!25170)

(declare-fun Unit!25177 () Unit!25170)

(assert (=> b!1472691 (= lt!511776 Unit!25177)))

(assert (=> b!1472691 (rulesProduceIndividualToken!1267 thiss!27374 rules!4290 (h!20872 l1!3136))))

(declare-fun lt!511778 () Unit!25170)

(declare-fun lt!511777 () Unit!25170)

(assert (=> b!1472691 (= lt!511778 lt!511777)))

(assert (=> b!1472691 (rulesProduceIndividualToken!1267 thiss!27374 rules!4290 (h!20872 (t!135902 l1!3136)))))

(assert (=> b!1472691 (= lt!511777 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!448 thiss!27374 rules!4290 l1!3136 (h!20872 (t!135902 l1!3136))))))

(declare-fun lt!511772 () Unit!25170)

(declare-fun lt!511775 () Unit!25170)

(assert (=> b!1472691 (= lt!511772 lt!511775)))

(assert (=> b!1472691 (rulesProduceIndividualToken!1267 thiss!27374 rules!4290 (h!20872 l1!3136))))

(assert (=> b!1472691 (= lt!511775 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!448 thiss!27374 rules!4290 l1!3136 (h!20872 l1!3136)))))

(declare-fun b!1472692 () Bool)

(assert (=> b!1472692 (= e!940654 (tokensListTwoByTwoPredicateSeparableList!268 thiss!27374 (Cons!15471 (h!20872 (t!135902 l1!3136)) (t!135902 (t!135902 l1!3136))) rules!4290))))

(assert (= (and d!431746 (not res!665638)) b!1472691))

(assert (= (and b!1472691 res!665639) b!1472692))

(declare-fun m!1716709 () Bool)

(assert (=> b!1472691 m!1716709))

(declare-fun m!1716711 () Bool)

(assert (=> b!1472691 m!1716711))

(declare-fun m!1716713 () Bool)

(assert (=> b!1472691 m!1716713))

(declare-fun m!1716715 () Bool)

(assert (=> b!1472691 m!1716715))

(assert (=> b!1472691 m!1716713))

(assert (=> b!1472691 m!1716671))

(declare-fun m!1716717 () Bool)

(assert (=> b!1472691 m!1716717))

(declare-fun m!1716719 () Bool)

(assert (=> b!1472691 m!1716719))

(declare-fun m!1716721 () Bool)

(assert (=> b!1472692 m!1716721))

(assert (=> b!1472549 d!431746))

(declare-fun d!431748 () Bool)

(assert (=> d!431748 (= (isEmpty!9663 rules!4290) (is-Nil!15472 rules!4290))))

(assert (=> b!1472546 d!431748))

(declare-fun d!431750 () Bool)

(assert (=> d!431750 (= (isEmpty!9662 l1!3136) (is-Nil!15471 l1!3136))))

(assert (=> b!1472545 d!431750))

(declare-fun d!431752 () Bool)

(declare-fun res!665640 () Bool)

(declare-fun e!940655 () Bool)

(assert (=> d!431752 (=> res!665640 e!940655)))

(assert (=> d!431752 (= res!665640 (or (not (is-Cons!15471 l2!3105)) (not (is-Cons!15471 (t!135902 l2!3105)))))))

(assert (=> d!431752 (= (tokensListTwoByTwoPredicateSeparableList!268 thiss!27374 l2!3105 rules!4290) e!940655)))

(declare-fun b!1472693 () Bool)

(declare-fun e!940656 () Bool)

(assert (=> b!1472693 (= e!940655 e!940656)))

(declare-fun res!665641 () Bool)

(assert (=> b!1472693 (=> (not res!665641) (not e!940656))))

(assert (=> b!1472693 (= res!665641 (separableTokensPredicate!551 thiss!27374 (h!20872 l2!3105) (h!20872 (t!135902 l2!3105)) rules!4290))))

(declare-fun lt!511780 () Unit!25170)

(declare-fun Unit!25178 () Unit!25170)

(assert (=> b!1472693 (= lt!511780 Unit!25178)))

(assert (=> b!1472693 (> (size!12562 (charsOf!1579 (h!20872 (t!135902 l2!3105)))) 0)))

(declare-fun lt!511781 () Unit!25170)

(declare-fun Unit!25179 () Unit!25170)

(assert (=> b!1472693 (= lt!511781 Unit!25179)))

(assert (=> b!1472693 (rulesProduceIndividualToken!1267 thiss!27374 rules!4290 (h!20872 (t!135902 l2!3105)))))

(declare-fun lt!511783 () Unit!25170)

(declare-fun Unit!25180 () Unit!25170)

(assert (=> b!1472693 (= lt!511783 Unit!25180)))

(assert (=> b!1472693 (rulesProduceIndividualToken!1267 thiss!27374 rules!4290 (h!20872 l2!3105))))

(declare-fun lt!511785 () Unit!25170)

(declare-fun lt!511784 () Unit!25170)

(assert (=> b!1472693 (= lt!511785 lt!511784)))

(assert (=> b!1472693 (rulesProduceIndividualToken!1267 thiss!27374 rules!4290 (h!20872 (t!135902 l2!3105)))))

(assert (=> b!1472693 (= lt!511784 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!448 thiss!27374 rules!4290 l2!3105 (h!20872 (t!135902 l2!3105))))))

(declare-fun lt!511779 () Unit!25170)

(declare-fun lt!511782 () Unit!25170)

(assert (=> b!1472693 (= lt!511779 lt!511782)))

(assert (=> b!1472693 (rulesProduceIndividualToken!1267 thiss!27374 rules!4290 (h!20872 l2!3105))))

(assert (=> b!1472693 (= lt!511782 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!448 thiss!27374 rules!4290 l2!3105 (h!20872 l2!3105)))))

(declare-fun b!1472694 () Bool)

(assert (=> b!1472694 (= e!940656 (tokensListTwoByTwoPredicateSeparableList!268 thiss!27374 (Cons!15471 (h!20872 (t!135902 l2!3105)) (t!135902 (t!135902 l2!3105))) rules!4290))))

(assert (= (and d!431752 (not res!665640)) b!1472693))

(assert (= (and b!1472693 res!665641) b!1472694))

(declare-fun m!1716723 () Bool)

(assert (=> b!1472693 m!1716723))

(declare-fun m!1716725 () Bool)

(assert (=> b!1472693 m!1716725))

(declare-fun m!1716727 () Bool)

(assert (=> b!1472693 m!1716727))

(declare-fun m!1716729 () Bool)

(assert (=> b!1472693 m!1716729))

(assert (=> b!1472693 m!1716727))

(assert (=> b!1472693 m!1716701))

(declare-fun m!1716731 () Bool)

(assert (=> b!1472693 m!1716731))

(declare-fun m!1716733 () Bool)

(assert (=> b!1472693 m!1716733))

(declare-fun m!1716735 () Bool)

(assert (=> b!1472694 m!1716735))

(assert (=> b!1472556 d!431752))

(declare-fun d!431754 () Bool)

(declare-fun res!665642 () Bool)

(declare-fun e!940657 () Bool)

(assert (=> d!431754 (=> (not res!665642) (not e!940657))))

(assert (=> d!431754 (= res!665642 (not (isEmpty!9668 (originalCharacters!3614 (h!20872 l2!3105)))))))

(assert (=> d!431754 (= (inv!20680 (h!20872 l2!3105)) e!940657)))

(declare-fun b!1472695 () Bool)

(declare-fun res!665643 () Bool)

(assert (=> b!1472695 (=> (not res!665643) (not e!940657))))

(assert (=> b!1472695 (= res!665643 (= (originalCharacters!3614 (h!20872 l2!3105)) (list!6175 (dynLambda!7023 (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l2!3105)))) (value!88081 (h!20872 l2!3105))))))))

(declare-fun b!1472696 () Bool)

(assert (=> b!1472696 (= e!940657 (= (size!12559 (h!20872 l2!3105)) (size!12561 (originalCharacters!3614 (h!20872 l2!3105)))))))

(assert (= (and d!431754 res!665642) b!1472695))

(assert (= (and b!1472695 res!665643) b!1472696))

(declare-fun b_lambda!45985 () Bool)

(assert (=> (not b_lambda!45985) (not b!1472695)))

(declare-fun t!135919 () Bool)

(declare-fun tb!83519 () Bool)

(assert (=> (and b!1472547 (= (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l2!3105)))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l2!3105))))) t!135919) tb!83519))

(declare-fun b!1472697 () Bool)

(declare-fun e!940658 () Bool)

(declare-fun tp!416134 () Bool)

(assert (=> b!1472697 (= e!940658 (and (inv!20684 (c!242351 (dynLambda!7023 (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l2!3105)))) (value!88081 (h!20872 l2!3105))))) tp!416134))))

(declare-fun result!100406 () Bool)

(assert (=> tb!83519 (= result!100406 (and (inv!20685 (dynLambda!7023 (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l2!3105)))) (value!88081 (h!20872 l2!3105)))) e!940658))))

(assert (= tb!83519 b!1472697))

(declare-fun m!1716737 () Bool)

(assert (=> b!1472697 m!1716737))

(declare-fun m!1716739 () Bool)

(assert (=> tb!83519 m!1716739))

(assert (=> b!1472695 t!135919))

(declare-fun b_and!101219 () Bool)

(assert (= b_and!101213 (and (=> t!135919 result!100406) b_and!101219)))

(declare-fun t!135921 () Bool)

(declare-fun tb!83521 () Bool)

(assert (=> (and b!1472541 (= (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l1!3136)))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l2!3105))))) t!135921) tb!83521))

(declare-fun result!100408 () Bool)

(assert (= result!100408 result!100406))

(assert (=> b!1472695 t!135921))

(declare-fun b_and!101221 () Bool)

(assert (= b_and!101215 (and (=> t!135921 result!100408) b_and!101221)))

(declare-fun t!135923 () Bool)

(declare-fun tb!83523 () Bool)

(assert (=> (and b!1472554 (= (toChars!3938 (transformation!2752 (h!20873 rules!4290))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l2!3105))))) t!135923) tb!83523))

(declare-fun result!100410 () Bool)

(assert (= result!100410 result!100406))

(assert (=> b!1472695 t!135923))

(declare-fun b_and!101223 () Bool)

(assert (= b_and!101217 (and (=> t!135923 result!100410) b_and!101223)))

(declare-fun m!1716741 () Bool)

(assert (=> d!431754 m!1716741))

(declare-fun m!1716743 () Bool)

(assert (=> b!1472695 m!1716743))

(assert (=> b!1472695 m!1716743))

(declare-fun m!1716745 () Bool)

(assert (=> b!1472695 m!1716745))

(declare-fun m!1716747 () Bool)

(assert (=> b!1472696 m!1716747))

(assert (=> b!1472558 d!431754))

(declare-fun d!431756 () Bool)

(assert (=> d!431756 (rulesProduceIndividualToken!1267 thiss!27374 rules!4290 lt!511736)))

(declare-fun lt!511789 () Unit!25170)

(declare-fun choose!9033 (LexerInterface!2408 List!15538 List!15537 Token!5166) Unit!25170)

(assert (=> d!431756 (= lt!511789 (choose!9033 thiss!27374 rules!4290 l1!3136 lt!511736))))

(assert (=> d!431756 (not (isEmpty!9663 rules!4290))))

(assert (=> d!431756 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!448 thiss!27374 rules!4290 l1!3136 lt!511736) lt!511789)))

(declare-fun bs!345168 () Bool)

(assert (= bs!345168 d!431756))

(assert (=> bs!345168 m!1716575))

(declare-fun m!1716787 () Bool)

(assert (=> bs!345168 m!1716787))

(assert (=> bs!345168 m!1716553))

(assert (=> b!1472557 d!431756))

(declare-fun d!431776 () Bool)

(declare-fun lt!511792 () BalanceConc!10492)

(assert (=> d!431776 (= (list!6175 lt!511792) (originalCharacters!3614 lt!511739))))

(assert (=> d!431776 (= lt!511792 (dynLambda!7023 (toChars!3938 (transformation!2752 (rule!4529 lt!511739))) (value!88081 lt!511739)))))

(assert (=> d!431776 (= (charsOf!1579 lt!511739) lt!511792)))

(declare-fun b_lambda!45989 () Bool)

(assert (=> (not b_lambda!45989) (not d!431776)))

(declare-fun tb!83531 () Bool)

(declare-fun t!135932 () Bool)

(assert (=> (and b!1472547 (= (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l2!3105)))) (toChars!3938 (transformation!2752 (rule!4529 lt!511739)))) t!135932) tb!83531))

(declare-fun b!1472748 () Bool)

(declare-fun e!940692 () Bool)

(declare-fun tp!416138 () Bool)

(assert (=> b!1472748 (= e!940692 (and (inv!20684 (c!242351 (dynLambda!7023 (toChars!3938 (transformation!2752 (rule!4529 lt!511739))) (value!88081 lt!511739)))) tp!416138))))

(declare-fun result!100420 () Bool)

(assert (=> tb!83531 (= result!100420 (and (inv!20685 (dynLambda!7023 (toChars!3938 (transformation!2752 (rule!4529 lt!511739))) (value!88081 lt!511739))) e!940692))))

(assert (= tb!83531 b!1472748))

(declare-fun m!1716789 () Bool)

(assert (=> b!1472748 m!1716789))

(declare-fun m!1716791 () Bool)

(assert (=> tb!83531 m!1716791))

(assert (=> d!431776 t!135932))

(declare-fun b_and!101231 () Bool)

(assert (= b_and!101219 (and (=> t!135932 result!100420) b_and!101231)))

(declare-fun t!135934 () Bool)

(declare-fun tb!83533 () Bool)

(assert (=> (and b!1472541 (= (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l1!3136)))) (toChars!3938 (transformation!2752 (rule!4529 lt!511739)))) t!135934) tb!83533))

(declare-fun result!100422 () Bool)

(assert (= result!100422 result!100420))

(assert (=> d!431776 t!135934))

(declare-fun b_and!101233 () Bool)

(assert (= b_and!101221 (and (=> t!135934 result!100422) b_and!101233)))

(declare-fun tb!83535 () Bool)

(declare-fun t!135936 () Bool)

(assert (=> (and b!1472554 (= (toChars!3938 (transformation!2752 (h!20873 rules!4290))) (toChars!3938 (transformation!2752 (rule!4529 lt!511739)))) t!135936) tb!83535))

(declare-fun result!100424 () Bool)

(assert (= result!100424 result!100420))

(assert (=> d!431776 t!135936))

(declare-fun b_and!101235 () Bool)

(assert (= b_and!101223 (and (=> t!135936 result!100424) b_and!101235)))

(declare-fun m!1716793 () Bool)

(assert (=> d!431776 m!1716793))

(declare-fun m!1716795 () Bool)

(assert (=> d!431776 m!1716795))

(assert (=> b!1472557 d!431776))

(declare-fun d!431778 () Bool)

(declare-fun lt!511827 () Bool)

(declare-fun e!940715 () Bool)

(assert (=> d!431778 (= lt!511827 e!940715)))

(declare-fun res!665681 () Bool)

(assert (=> d!431778 (=> (not res!665681) (not e!940715))))

(declare-datatypes ((IArray!10561 0))(
  ( (IArray!10562 (innerList!5338 List!15537)) )
))
(declare-datatypes ((Conc!5278 0))(
  ( (Node!5278 (left!13089 Conc!5278) (right!13419 Conc!5278) (csize!10786 Int) (cheight!5489 Int)) (Leaf!7856 (xs!8033 IArray!10561) (csize!10787 Int)) (Empty!5278) )
))
(declare-datatypes ((BalanceConc!10496 0))(
  ( (BalanceConc!10497 (c!242376 Conc!5278)) )
))
(declare-fun list!6176 (BalanceConc!10496) List!15537)

(declare-datatypes ((tuple2!14288 0))(
  ( (tuple2!14289 (_1!8030 BalanceConc!10496) (_2!8030 BalanceConc!10492)) )
))
(declare-fun lex!1087 (LexerInterface!2408 List!15538 BalanceConc!10492) tuple2!14288)

(declare-fun print!1122 (LexerInterface!2408 BalanceConc!10496) BalanceConc!10492)

(declare-fun singletonSeq!1297 (Token!5166) BalanceConc!10496)

(assert (=> d!431778 (= res!665681 (= (list!6176 (_1!8030 (lex!1087 thiss!27374 rules!4290 (print!1122 thiss!27374 (singletonSeq!1297 lt!511736))))) (list!6176 (singletonSeq!1297 lt!511736))))))

(declare-fun e!940716 () Bool)

(assert (=> d!431778 (= lt!511827 e!940716)))

(declare-fun res!665682 () Bool)

(assert (=> d!431778 (=> (not res!665682) (not e!940716))))

(declare-fun lt!511826 () tuple2!14288)

(declare-fun size!12563 (BalanceConc!10496) Int)

(assert (=> d!431778 (= res!665682 (= (size!12563 (_1!8030 lt!511826)) 1))))

(assert (=> d!431778 (= lt!511826 (lex!1087 thiss!27374 rules!4290 (print!1122 thiss!27374 (singletonSeq!1297 lt!511736))))))

(assert (=> d!431778 (not (isEmpty!9663 rules!4290))))

(assert (=> d!431778 (= (rulesProduceIndividualToken!1267 thiss!27374 rules!4290 lt!511736) lt!511827)))

(declare-fun b!1472774 () Bool)

(declare-fun res!665683 () Bool)

(assert (=> b!1472774 (=> (not res!665683) (not e!940716))))

(declare-fun apply!3996 (BalanceConc!10496 Int) Token!5166)

(assert (=> b!1472774 (= res!665683 (= (apply!3996 (_1!8030 lt!511826) 0) lt!511736))))

(declare-fun b!1472775 () Bool)

(assert (=> b!1472775 (= e!940716 (isEmpty!9664 (_2!8030 lt!511826)))))

(declare-fun b!1472776 () Bool)

(assert (=> b!1472776 (= e!940715 (isEmpty!9664 (_2!8030 (lex!1087 thiss!27374 rules!4290 (print!1122 thiss!27374 (singletonSeq!1297 lt!511736))))))))

(assert (= (and d!431778 res!665682) b!1472774))

(assert (= (and b!1472774 res!665683) b!1472775))

(assert (= (and d!431778 res!665681) b!1472776))

(declare-fun m!1716847 () Bool)

(assert (=> d!431778 m!1716847))

(declare-fun m!1716849 () Bool)

(assert (=> d!431778 m!1716849))

(declare-fun m!1716851 () Bool)

(assert (=> d!431778 m!1716851))

(assert (=> d!431778 m!1716553))

(declare-fun m!1716853 () Bool)

(assert (=> d!431778 m!1716853))

(assert (=> d!431778 m!1716849))

(declare-fun m!1716855 () Bool)

(assert (=> d!431778 m!1716855))

(assert (=> d!431778 m!1716849))

(assert (=> d!431778 m!1716855))

(declare-fun m!1716857 () Bool)

(assert (=> d!431778 m!1716857))

(declare-fun m!1716859 () Bool)

(assert (=> b!1472774 m!1716859))

(declare-fun m!1716861 () Bool)

(assert (=> b!1472775 m!1716861))

(assert (=> b!1472776 m!1716849))

(assert (=> b!1472776 m!1716849))

(assert (=> b!1472776 m!1716855))

(assert (=> b!1472776 m!1716855))

(assert (=> b!1472776 m!1716857))

(declare-fun m!1716863 () Bool)

(assert (=> b!1472776 m!1716863))

(assert (=> b!1472557 d!431778))

(declare-fun d!431792 () Bool)

(declare-fun lt!511830 () Token!5166)

(declare-fun contains!2926 (List!15537 Token!5166) Bool)

(assert (=> d!431792 (contains!2926 l1!3136 lt!511830)))

(declare-fun e!940719 () Token!5166)

(assert (=> d!431792 (= lt!511830 e!940719)))

(declare-fun c!242372 () Bool)

(assert (=> d!431792 (= c!242372 (and (is-Cons!15471 l1!3136) (is-Nil!15471 (t!135902 l1!3136))))))

(assert (=> d!431792 (not (isEmpty!9662 l1!3136))))

(assert (=> d!431792 (= (last!310 l1!3136) lt!511830)))

(declare-fun b!1472781 () Bool)

(assert (=> b!1472781 (= e!940719 (h!20872 l1!3136))))

(declare-fun b!1472782 () Bool)

(assert (=> b!1472782 (= e!940719 (last!310 (t!135902 l1!3136)))))

(assert (= (and d!431792 c!242372) b!1472781))

(assert (= (and d!431792 (not c!242372)) b!1472782))

(declare-fun m!1716865 () Bool)

(assert (=> d!431792 m!1716865))

(assert (=> d!431792 m!1716559))

(declare-fun m!1716867 () Bool)

(assert (=> b!1472782 m!1716867))

(assert (=> b!1472557 d!431792))

(declare-fun d!431794 () Bool)

(declare-fun lt!511833 () Bool)

(assert (=> d!431794 (= lt!511833 (isEmpty!9668 (list!6175 (charsOf!1579 lt!511739))))))

(declare-fun isEmpty!9669 (Conc!5276) Bool)

(assert (=> d!431794 (= lt!511833 (isEmpty!9669 (c!242351 (charsOf!1579 lt!511739))))))

(assert (=> d!431794 (= (isEmpty!9664 (charsOf!1579 lt!511739)) lt!511833)))

(declare-fun bs!345170 () Bool)

(assert (= bs!345170 d!431794))

(assert (=> bs!345170 m!1716569))

(declare-fun m!1716869 () Bool)

(assert (=> bs!345170 m!1716869))

(assert (=> bs!345170 m!1716869))

(declare-fun m!1716871 () Bool)

(assert (=> bs!345170 m!1716871))

(declare-fun m!1716873 () Bool)

(assert (=> bs!345170 m!1716873))

(assert (=> b!1472557 d!431794))

(declare-fun d!431796 () Bool)

(assert (=> d!431796 (rulesProduceIndividualToken!1267 thiss!27374 rules!4290 lt!511739)))

(declare-fun lt!511834 () Unit!25170)

(assert (=> d!431796 (= lt!511834 (choose!9033 thiss!27374 rules!4290 l2!3105 lt!511739))))

(assert (=> d!431796 (not (isEmpty!9663 rules!4290))))

(assert (=> d!431796 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!448 thiss!27374 rules!4290 l2!3105 lt!511739) lt!511834)))

(declare-fun bs!345171 () Bool)

(assert (= bs!345171 d!431796))

(assert (=> bs!345171 m!1716563))

(declare-fun m!1716875 () Bool)

(assert (=> bs!345171 m!1716875))

(assert (=> bs!345171 m!1716553))

(assert (=> b!1472557 d!431796))

(declare-fun d!431798 () Bool)

(declare-fun lt!511836 () Bool)

(declare-fun e!940720 () Bool)

(assert (=> d!431798 (= lt!511836 e!940720)))

(declare-fun res!665684 () Bool)

(assert (=> d!431798 (=> (not res!665684) (not e!940720))))

(assert (=> d!431798 (= res!665684 (= (list!6176 (_1!8030 (lex!1087 thiss!27374 rules!4290 (print!1122 thiss!27374 (singletonSeq!1297 lt!511739))))) (list!6176 (singletonSeq!1297 lt!511739))))))

(declare-fun e!940721 () Bool)

(assert (=> d!431798 (= lt!511836 e!940721)))

(declare-fun res!665685 () Bool)

(assert (=> d!431798 (=> (not res!665685) (not e!940721))))

(declare-fun lt!511835 () tuple2!14288)

(assert (=> d!431798 (= res!665685 (= (size!12563 (_1!8030 lt!511835)) 1))))

(assert (=> d!431798 (= lt!511835 (lex!1087 thiss!27374 rules!4290 (print!1122 thiss!27374 (singletonSeq!1297 lt!511739))))))

(assert (=> d!431798 (not (isEmpty!9663 rules!4290))))

(assert (=> d!431798 (= (rulesProduceIndividualToken!1267 thiss!27374 rules!4290 lt!511739) lt!511836)))

(declare-fun b!1472783 () Bool)

(declare-fun res!665686 () Bool)

(assert (=> b!1472783 (=> (not res!665686) (not e!940721))))

(assert (=> b!1472783 (= res!665686 (= (apply!3996 (_1!8030 lt!511835) 0) lt!511739))))

(declare-fun b!1472784 () Bool)

(assert (=> b!1472784 (= e!940721 (isEmpty!9664 (_2!8030 lt!511835)))))

(declare-fun b!1472785 () Bool)

(assert (=> b!1472785 (= e!940720 (isEmpty!9664 (_2!8030 (lex!1087 thiss!27374 rules!4290 (print!1122 thiss!27374 (singletonSeq!1297 lt!511739))))))))

(assert (= (and d!431798 res!665685) b!1472783))

(assert (= (and b!1472783 res!665686) b!1472784))

(assert (= (and d!431798 res!665684) b!1472785))

(declare-fun m!1716877 () Bool)

(assert (=> d!431798 m!1716877))

(declare-fun m!1716879 () Bool)

(assert (=> d!431798 m!1716879))

(declare-fun m!1716881 () Bool)

(assert (=> d!431798 m!1716881))

(assert (=> d!431798 m!1716553))

(declare-fun m!1716883 () Bool)

(assert (=> d!431798 m!1716883))

(assert (=> d!431798 m!1716879))

(declare-fun m!1716885 () Bool)

(assert (=> d!431798 m!1716885))

(assert (=> d!431798 m!1716879))

(assert (=> d!431798 m!1716885))

(declare-fun m!1716887 () Bool)

(assert (=> d!431798 m!1716887))

(declare-fun m!1716889 () Bool)

(assert (=> b!1472783 m!1716889))

(declare-fun m!1716891 () Bool)

(assert (=> b!1472784 m!1716891))

(assert (=> b!1472785 m!1716879))

(assert (=> b!1472785 m!1716879))

(assert (=> b!1472785 m!1716885))

(assert (=> b!1472785 m!1716885))

(assert (=> b!1472785 m!1716887))

(declare-fun m!1716893 () Bool)

(assert (=> b!1472785 m!1716893))

(assert (=> b!1472557 d!431798))

(declare-fun d!431800 () Bool)

(assert (=> d!431800 (= (head!3046 l2!3105) (h!20872 l2!3105))))

(assert (=> b!1472557 d!431800))

(declare-fun b!1472799 () Bool)

(declare-fun b_free!37395 () Bool)

(declare-fun b_next!38099 () Bool)

(assert (=> b!1472799 (= b_free!37395 (not b_next!38099))))

(declare-fun tp!416153 () Bool)

(declare-fun b_and!101243 () Bool)

(assert (=> b!1472799 (= tp!416153 b_and!101243)))

(declare-fun b_free!37397 () Bool)

(declare-fun b_next!38101 () Bool)

(assert (=> b!1472799 (= b_free!37397 (not b_next!38101))))

(declare-fun t!135945 () Bool)

(declare-fun tb!83543 () Bool)

(assert (=> (and b!1472799 (= (toChars!3938 (transformation!2752 (rule!4529 (h!20872 (t!135902 l1!3136))))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l1!3136))))) t!135945) tb!83543))

(declare-fun result!100434 () Bool)

(assert (= result!100434 result!100398))

(assert (=> b!1472624 t!135945))

(declare-fun t!135947 () Bool)

(declare-fun tb!83545 () Bool)

(assert (=> (and b!1472799 (= (toChars!3938 (transformation!2752 (rule!4529 (h!20872 (t!135902 l1!3136))))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l2!3105))))) t!135947) tb!83545))

(declare-fun result!100436 () Bool)

(assert (= result!100436 result!100406))

(assert (=> b!1472695 t!135947))

(declare-fun tb!83547 () Bool)

(declare-fun t!135949 () Bool)

(assert (=> (and b!1472799 (= (toChars!3938 (transformation!2752 (rule!4529 (h!20872 (t!135902 l1!3136))))) (toChars!3938 (transformation!2752 (rule!4529 lt!511739)))) t!135949) tb!83547))

(declare-fun result!100438 () Bool)

(assert (= result!100438 result!100420))

(assert (=> d!431776 t!135949))

(declare-fun tp!416150 () Bool)

(declare-fun b_and!101245 () Bool)

(assert (=> b!1472799 (= tp!416150 (and (=> t!135945 result!100434) (=> t!135947 result!100436) (=> t!135949 result!100438) b_and!101245))))

(declare-fun e!940738 () Bool)

(declare-fun b!1472796 () Bool)

(declare-fun e!940735 () Bool)

(declare-fun tp!416154 () Bool)

(assert (=> b!1472796 (= e!940738 (and (inv!20680 (h!20872 (t!135902 l1!3136))) e!940735 tp!416154))))

(assert (=> b!1472543 (= tp!416083 e!940738)))

(declare-fun e!940737 () Bool)

(declare-fun tp!416152 () Bool)

(declare-fun b!1472797 () Bool)

(assert (=> b!1472797 (= e!940735 (and (inv!21 (value!88081 (h!20872 (t!135902 l1!3136)))) e!940737 tp!416152))))

(declare-fun e!940736 () Bool)

(assert (=> b!1472799 (= e!940736 (and tp!416153 tp!416150))))

(declare-fun b!1472798 () Bool)

(declare-fun tp!416151 () Bool)

(assert (=> b!1472798 (= e!940737 (and tp!416151 (inv!20677 (tag!3016 (rule!4529 (h!20872 (t!135902 l1!3136))))) (inv!20681 (transformation!2752 (rule!4529 (h!20872 (t!135902 l1!3136))))) e!940736))))

(assert (= b!1472798 b!1472799))

(assert (= b!1472797 b!1472798))

(assert (= b!1472796 b!1472797))

(assert (= (and b!1472543 (is-Cons!15471 (t!135902 l1!3136))) b!1472796))

(declare-fun m!1716895 () Bool)

(assert (=> b!1472796 m!1716895))

(declare-fun m!1716897 () Bool)

(assert (=> b!1472797 m!1716897))

(declare-fun m!1716899 () Bool)

(assert (=> b!1472798 m!1716899))

(declare-fun m!1716901 () Bool)

(assert (=> b!1472798 m!1716901))

(declare-fun b!1472804 () Bool)

(declare-fun e!940742 () Bool)

(declare-fun tp_is_empty!6929 () Bool)

(declare-fun tp!416157 () Bool)

(assert (=> b!1472804 (= e!940742 (and tp_is_empty!6929 tp!416157))))

(assert (=> b!1472551 (= tp!416078 e!940742)))

(assert (= (and b!1472551 (is-Cons!15470 (originalCharacters!3614 (h!20872 l1!3136)))) b!1472804))

(declare-fun b!1472805 () Bool)

(declare-fun e!940743 () Bool)

(declare-fun tp!416158 () Bool)

(assert (=> b!1472805 (= e!940743 (and tp_is_empty!6929 tp!416158))))

(assert (=> b!1472540 (= tp!416082 e!940743)))

(assert (= (and b!1472540 (is-Cons!15470 (originalCharacters!3614 (h!20872 l2!3105)))) b!1472805))

(declare-fun b!1472816 () Bool)

(declare-fun b_free!37399 () Bool)

(declare-fun b_next!38103 () Bool)

(assert (=> b!1472816 (= b_free!37399 (not b_next!38103))))

(declare-fun tp!416168 () Bool)

(declare-fun b_and!101247 () Bool)

(assert (=> b!1472816 (= tp!416168 b_and!101247)))

(declare-fun b_free!37401 () Bool)

(declare-fun b_next!38105 () Bool)

(assert (=> b!1472816 (= b_free!37401 (not b_next!38105))))

(declare-fun t!135951 () Bool)

(declare-fun tb!83549 () Bool)

(assert (=> (and b!1472816 (= (toChars!3938 (transformation!2752 (h!20873 (t!135903 rules!4290)))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l1!3136))))) t!135951) tb!83549))

(declare-fun result!100444 () Bool)

(assert (= result!100444 result!100398))

(assert (=> b!1472624 t!135951))

(declare-fun tb!83551 () Bool)

(declare-fun t!135953 () Bool)

(assert (=> (and b!1472816 (= (toChars!3938 (transformation!2752 (h!20873 (t!135903 rules!4290)))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l2!3105))))) t!135953) tb!83551))

(declare-fun result!100446 () Bool)

(assert (= result!100446 result!100406))

(assert (=> b!1472695 t!135953))

(declare-fun t!135955 () Bool)

(declare-fun tb!83553 () Bool)

(assert (=> (and b!1472816 (= (toChars!3938 (transformation!2752 (h!20873 (t!135903 rules!4290)))) (toChars!3938 (transformation!2752 (rule!4529 lt!511739)))) t!135955) tb!83553))

(declare-fun result!100448 () Bool)

(assert (= result!100448 result!100420))

(assert (=> d!431776 t!135955))

(declare-fun tp!416170 () Bool)

(declare-fun b_and!101249 () Bool)

(assert (=> b!1472816 (= tp!416170 (and (=> t!135951 result!100444) (=> t!135953 result!100446) (=> t!135955 result!100448) b_and!101249))))

(declare-fun e!940754 () Bool)

(assert (=> b!1472816 (= e!940754 (and tp!416168 tp!416170))))

(declare-fun tp!416169 () Bool)

(declare-fun e!940753 () Bool)

(declare-fun b!1472815 () Bool)

(assert (=> b!1472815 (= e!940753 (and tp!416169 (inv!20677 (tag!3016 (h!20873 (t!135903 rules!4290)))) (inv!20681 (transformation!2752 (h!20873 (t!135903 rules!4290)))) e!940754))))

(declare-fun b!1472814 () Bool)

(declare-fun e!940752 () Bool)

(declare-fun tp!416167 () Bool)

(assert (=> b!1472814 (= e!940752 (and e!940753 tp!416167))))

(assert (=> b!1472542 (= tp!416075 e!940752)))

(assert (= b!1472815 b!1472816))

(assert (= b!1472814 b!1472815))

(assert (= (and b!1472542 (is-Cons!15472 (t!135903 rules!4290))) b!1472814))

(declare-fun m!1716903 () Bool)

(assert (=> b!1472815 m!1716903))

(declare-fun m!1716905 () Bool)

(assert (=> b!1472815 m!1716905))

(declare-fun b!1472827 () Bool)

(declare-fun e!940758 () Bool)

(assert (=> b!1472827 (= e!940758 tp_is_empty!6929)))

(assert (=> b!1472552 (= tp!416077 e!940758)))

(declare-fun b!1472828 () Bool)

(declare-fun tp!416185 () Bool)

(declare-fun tp!416182 () Bool)

(assert (=> b!1472828 (= e!940758 (and tp!416185 tp!416182))))

(declare-fun b!1472830 () Bool)

(declare-fun tp!416184 () Bool)

(declare-fun tp!416183 () Bool)

(assert (=> b!1472830 (= e!940758 (and tp!416184 tp!416183))))

(declare-fun b!1472829 () Bool)

(declare-fun tp!416181 () Bool)

(assert (=> b!1472829 (= e!940758 tp!416181)))

(assert (= (and b!1472552 (is-ElementMatch!4066 (regex!2752 (rule!4529 (h!20872 l1!3136))))) b!1472827))

(assert (= (and b!1472552 (is-Concat!6909 (regex!2752 (rule!4529 (h!20872 l1!3136))))) b!1472828))

(assert (= (and b!1472552 (is-Star!4066 (regex!2752 (rule!4529 (h!20872 l1!3136))))) b!1472829))

(assert (= (and b!1472552 (is-Union!4066 (regex!2752 (rule!4529 (h!20872 l1!3136))))) b!1472830))

(declare-fun b!1472831 () Bool)

(declare-fun e!940759 () Bool)

(assert (=> b!1472831 (= e!940759 tp_is_empty!6929)))

(assert (=> b!1472559 (= tp!416088 e!940759)))

(declare-fun b!1472832 () Bool)

(declare-fun tp!416190 () Bool)

(declare-fun tp!416187 () Bool)

(assert (=> b!1472832 (= e!940759 (and tp!416190 tp!416187))))

(declare-fun b!1472834 () Bool)

(declare-fun tp!416189 () Bool)

(declare-fun tp!416188 () Bool)

(assert (=> b!1472834 (= e!940759 (and tp!416189 tp!416188))))

(declare-fun b!1472833 () Bool)

(declare-fun tp!416186 () Bool)

(assert (=> b!1472833 (= e!940759 tp!416186)))

(assert (= (and b!1472559 (is-ElementMatch!4066 (regex!2752 (h!20873 rules!4290)))) b!1472831))

(assert (= (and b!1472559 (is-Concat!6909 (regex!2752 (h!20873 rules!4290)))) b!1472832))

(assert (= (and b!1472559 (is-Star!4066 (regex!2752 (h!20873 rules!4290)))) b!1472833))

(assert (= (and b!1472559 (is-Union!4066 (regex!2752 (h!20873 rules!4290)))) b!1472834))

(declare-fun b!1472835 () Bool)

(declare-fun e!940760 () Bool)

(assert (=> b!1472835 (= e!940760 tp_is_empty!6929)))

(assert (=> b!1472550 (= tp!416087 e!940760)))

(declare-fun b!1472836 () Bool)

(declare-fun tp!416195 () Bool)

(declare-fun tp!416192 () Bool)

(assert (=> b!1472836 (= e!940760 (and tp!416195 tp!416192))))

(declare-fun b!1472838 () Bool)

(declare-fun tp!416194 () Bool)

(declare-fun tp!416193 () Bool)

(assert (=> b!1472838 (= e!940760 (and tp!416194 tp!416193))))

(declare-fun b!1472837 () Bool)

(declare-fun tp!416191 () Bool)

(assert (=> b!1472837 (= e!940760 tp!416191)))

(assert (= (and b!1472550 (is-ElementMatch!4066 (regex!2752 (rule!4529 (h!20872 l2!3105))))) b!1472835))

(assert (= (and b!1472550 (is-Concat!6909 (regex!2752 (rule!4529 (h!20872 l2!3105))))) b!1472836))

(assert (= (and b!1472550 (is-Star!4066 (regex!2752 (rule!4529 (h!20872 l2!3105))))) b!1472837))

(assert (= (and b!1472550 (is-Union!4066 (regex!2752 (rule!4529 (h!20872 l2!3105))))) b!1472838))

(declare-fun b!1472842 () Bool)

(declare-fun b_free!37403 () Bool)

(declare-fun b_next!38107 () Bool)

(assert (=> b!1472842 (= b_free!37403 (not b_next!38107))))

(declare-fun tp!416199 () Bool)

(declare-fun b_and!101251 () Bool)

(assert (=> b!1472842 (= tp!416199 b_and!101251)))

(declare-fun b_free!37405 () Bool)

(declare-fun b_next!38109 () Bool)

(assert (=> b!1472842 (= b_free!37405 (not b_next!38109))))

(declare-fun tb!83555 () Bool)

(declare-fun t!135957 () Bool)

(assert (=> (and b!1472842 (= (toChars!3938 (transformation!2752 (rule!4529 (h!20872 (t!135902 l2!3105))))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l1!3136))))) t!135957) tb!83555))

(declare-fun result!100452 () Bool)

(assert (= result!100452 result!100398))

(assert (=> b!1472624 t!135957))

(declare-fun t!135959 () Bool)

(declare-fun tb!83557 () Bool)

(assert (=> (and b!1472842 (= (toChars!3938 (transformation!2752 (rule!4529 (h!20872 (t!135902 l2!3105))))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l2!3105))))) t!135959) tb!83557))

(declare-fun result!100454 () Bool)

(assert (= result!100454 result!100406))

(assert (=> b!1472695 t!135959))

(declare-fun t!135961 () Bool)

(declare-fun tb!83559 () Bool)

(assert (=> (and b!1472842 (= (toChars!3938 (transformation!2752 (rule!4529 (h!20872 (t!135902 l2!3105))))) (toChars!3938 (transformation!2752 (rule!4529 lt!511739)))) t!135961) tb!83559))

(declare-fun result!100456 () Bool)

(assert (= result!100456 result!100420))

(assert (=> d!431776 t!135961))

(declare-fun tp!416196 () Bool)

(declare-fun b_and!101253 () Bool)

(assert (=> b!1472842 (= tp!416196 (and (=> t!135957 result!100452) (=> t!135959 result!100454) (=> t!135961 result!100456) b_and!101253))))

(declare-fun e!940762 () Bool)

(declare-fun e!940765 () Bool)

(declare-fun b!1472839 () Bool)

(declare-fun tp!416200 () Bool)

(assert (=> b!1472839 (= e!940765 (and (inv!20680 (h!20872 (t!135902 l2!3105))) e!940762 tp!416200))))

(assert (=> b!1472558 (= tp!416084 e!940765)))

(declare-fun tp!416198 () Bool)

(declare-fun e!940764 () Bool)

(declare-fun b!1472840 () Bool)

(assert (=> b!1472840 (= e!940762 (and (inv!21 (value!88081 (h!20872 (t!135902 l2!3105)))) e!940764 tp!416198))))

(declare-fun e!940763 () Bool)

(assert (=> b!1472842 (= e!940763 (and tp!416199 tp!416196))))

(declare-fun b!1472841 () Bool)

(declare-fun tp!416197 () Bool)

(assert (=> b!1472841 (= e!940764 (and tp!416197 (inv!20677 (tag!3016 (rule!4529 (h!20872 (t!135902 l2!3105))))) (inv!20681 (transformation!2752 (rule!4529 (h!20872 (t!135902 l2!3105))))) e!940763))))

(assert (= b!1472841 b!1472842))

(assert (= b!1472840 b!1472841))

(assert (= b!1472839 b!1472840))

(assert (= (and b!1472558 (is-Cons!15471 (t!135902 l2!3105))) b!1472839))

(declare-fun m!1716907 () Bool)

(assert (=> b!1472839 m!1716907))

(declare-fun m!1716909 () Bool)

(assert (=> b!1472840 m!1716909))

(declare-fun m!1716911 () Bool)

(assert (=> b!1472841 m!1716911))

(declare-fun m!1716913 () Bool)

(assert (=> b!1472841 m!1716913))

(declare-fun b_lambda!45993 () Bool)

(assert (= b_lambda!45983 (or (and b!1472842 b_free!37405 (= (toChars!3938 (transformation!2752 (rule!4529 (h!20872 (t!135902 l2!3105))))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l1!3136)))))) (and b!1472547 b_free!37373 (= (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l2!3105)))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l1!3136)))))) (and b!1472816 b_free!37401 (= (toChars!3938 (transformation!2752 (h!20873 (t!135903 rules!4290)))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l1!3136)))))) (and b!1472554 b_free!37381 (= (toChars!3938 (transformation!2752 (h!20873 rules!4290))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l1!3136)))))) (and b!1472541 b_free!37377) (and b!1472799 b_free!37397 (= (toChars!3938 (transformation!2752 (rule!4529 (h!20872 (t!135902 l1!3136))))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l1!3136)))))) b_lambda!45993)))

(declare-fun b_lambda!45995 () Bool)

(assert (= b_lambda!45985 (or (and b!1472554 b_free!37381 (= (toChars!3938 (transformation!2752 (h!20873 rules!4290))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l2!3105)))))) (and b!1472541 b_free!37377 (= (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l1!3136)))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l2!3105)))))) (and b!1472816 b_free!37401 (= (toChars!3938 (transformation!2752 (h!20873 (t!135903 rules!4290)))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l2!3105)))))) (and b!1472799 b_free!37397 (= (toChars!3938 (transformation!2752 (rule!4529 (h!20872 (t!135902 l1!3136))))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l2!3105)))))) (and b!1472547 b_free!37373) (and b!1472842 b_free!37405 (= (toChars!3938 (transformation!2752 (rule!4529 (h!20872 (t!135902 l2!3105))))) (toChars!3938 (transformation!2752 (rule!4529 (h!20872 l2!3105)))))) b_lambda!45995)))

(push 1)

(assert (not b_next!38083))

(assert (not b!1472679))

(assert (not b!1472697))

(assert (not b!1472782))

(assert (not b!1472640))

(assert b_and!101249)

(assert (not b_next!38077))

(assert (not b!1472649))

(assert (not d!431776))

(assert (not b!1472680))

(assert (not d!431718))

(assert (not b!1472828))

(assert (not b!1472670))

(assert (not b!1472674))

(assert (not d!431798))

(assert b_and!101233)

(assert (not b!1472834))

(assert b_and!101245)

(assert (not b!1472693))

(assert (not b!1472694))

(assert (not b!1472691))

(assert (not b!1472748))

(assert (not b_next!38081))

(assert (not b_next!38079))

(assert (not b!1472669))

(assert (not b!1472630))

(assert (not b!1472668))

(assert (not tb!83513))

(assert (not b!1472836))

(assert (not d!431792))

(assert (not d!431756))

(assert (not b!1472774))

(assert (not b_next!38103))

(assert (not b!1472682))

(assert (not b!1472841))

(assert (not b!1472839))

(assert (not b!1472796))

(assert (not b!1472681))

(assert b_and!101251)

(assert (not b_next!38105))

(assert (not b!1472692))

(assert (not b!1472639))

(assert (not b_next!38107))

(assert b_and!101235)

(assert b_and!101247)

(assert (not b!1472840))

(assert (not d!431722))

(assert (not d!431794))

(assert (not b!1472624))

(assert (not d!431734))

(assert (not b!1472775))

(assert (not b!1472797))

(assert (not b!1472829))

(assert (not b!1472776))

(assert (not b!1472830))

(assert (not d!431726))

(assert (not b!1472673))

(assert (not b_lambda!45995))

(assert (not b!1472695))

(assert (not d!431754))

(assert tp_is_empty!6929)

(assert (not b_next!38109))

(assert (not b_next!38101))

(assert (not b!1472783))

(assert (not b_next!38099))

(assert (not b!1472837))

(assert (not b!1472815))

(assert (not b!1472805))

(assert (not b!1472683))

(assert (not d!431778))

(assert (not b_next!38085))

(assert (not b!1472798))

(assert b_and!101253)

(assert (not b!1472686))

(assert (not d!431738))

(assert (not b!1472696))

(assert (not b!1472833))

(assert (not b!1472804))

(assert b_and!101189)

(assert (not d!431744))

(assert (not b!1472656))

(assert b_and!101231)

(assert (not b!1472625))

(assert (not b!1472832))

(assert (not b_lambda!45989))

(assert (not b!1472784))

(assert (not d!431796))

(assert b_and!101243)

(assert (not b!1472785))

(assert (not d!431740))

(assert b_and!101197)

(assert (not tb!83519))

(assert (not b!1472675))

(assert b_and!101193)

(assert (not b_lambda!45993))

(assert (not b!1472814))

(assert (not b!1472838))

(assert (not tb!83531))

(assert (not b_next!38075))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!38077))

(assert b_and!101233)

(assert (not b_next!38103))

(assert (not b_next!38083))

(assert (not b_next!38109))

(assert (not b_next!38085))

(assert b_and!101253)

(assert b_and!101243)

(assert b_and!101197)

(assert b_and!101193)

(assert b_and!101249)

(assert (not b_next!38075))

(assert b_and!101245)

(assert (not b_next!38081))

(assert (not b_next!38079))

(assert b_and!101251)

(assert (not b_next!38105))

(assert (not b_next!38107))

(assert b_and!101235)

(assert b_and!101247)

(assert (not b_next!38101))

(assert (not b_next!38099))

(assert b_and!101189)

(assert b_and!101231)

(check-sat)

(pop 1)

