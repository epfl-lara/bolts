; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353632 () Bool)

(assert start!353632)

(declare-fun b!3765342 () Bool)

(declare-fun b_free!100853 () Bool)

(declare-fun b_next!101557 () Bool)

(assert (=> b!3765342 (= b_free!100853 (not b_next!101557))))

(declare-fun tp!1150262 () Bool)

(declare-fun b_and!279647 () Bool)

(assert (=> b!3765342 (= tp!1150262 b_and!279647)))

(declare-fun b_free!100855 () Bool)

(declare-fun b_next!101559 () Bool)

(assert (=> b!3765342 (= b_free!100855 (not b_next!101559))))

(declare-fun tp!1150266 () Bool)

(declare-fun b_and!279649 () Bool)

(assert (=> b!3765342 (= tp!1150266 b_and!279649)))

(declare-fun e!2328765 () Bool)

(declare-fun b!3765341 () Bool)

(declare-datatypes ((C!22332 0))(
  ( (C!22333 (val!13242 Int)) )
))
(declare-datatypes ((List!40299 0))(
  ( (Nil!40175) (Cons!40175 (h!45595 (_ BitVec 16)) (t!304302 List!40299)) )
))
(declare-datatypes ((Regex!11073 0))(
  ( (ElementMatch!11073 (c!652286 C!22332)) (Concat!17471 (regOne!22658 Regex!11073) (regTwo!22658 Regex!11073)) (EmptyExpr!11073) (Star!11073 (reg!11402 Regex!11073)) (EmptyLang!11073) (Union!11073 (regOne!22659 Regex!11073) (regTwo!22659 Regex!11073)) )
))
(declare-datatypes ((String!45671 0))(
  ( (String!45672 (value!196369 String)) )
))
(declare-datatypes ((TokenValue!6398 0))(
  ( (FloatLiteralValue!12796 (text!45231 List!40299)) (TokenValueExt!6397 (__x!25013 Int)) (Broken!31990 (value!196370 List!40299)) (Object!6521) (End!6398) (Def!6398) (Underscore!6398) (Match!6398) (Else!6398) (Error!6398) (Case!6398) (If!6398) (Extends!6398) (Abstract!6398) (Class!6398) (Val!6398) (DelimiterValue!12796 (del!6458 List!40299)) (KeywordValue!6404 (value!196371 List!40299)) (CommentValue!12796 (value!196372 List!40299)) (WhitespaceValue!12796 (value!196373 List!40299)) (IndentationValue!6398 (value!196374 List!40299)) (String!45673) (Int32!6398) (Broken!31991 (value!196375 List!40299)) (Boolean!6399) (Unit!57895) (OperatorValue!6401 (op!6458 List!40299)) (IdentifierValue!12796 (value!196376 List!40299)) (IdentifierValue!12797 (value!196377 List!40299)) (WhitespaceValue!12797 (value!196378 List!40299)) (True!12796) (False!12796) (Broken!31992 (value!196379 List!40299)) (Broken!31993 (value!196380 List!40299)) (True!12797) (RightBrace!6398) (RightBracket!6398) (Colon!6398) (Null!6398) (Comma!6398) (LeftBracket!6398) (False!12797) (LeftBrace!6398) (ImaginaryLiteralValue!6398 (text!45232 List!40299)) (StringLiteralValue!19194 (value!196381 List!40299)) (EOFValue!6398 (value!196382 List!40299)) (IdentValue!6398 (value!196383 List!40299)) (DelimiterValue!12797 (value!196384 List!40299)) (DedentValue!6398 (value!196385 List!40299)) (NewLineValue!6398 (value!196386 List!40299)) (IntegerValue!19194 (value!196387 (_ BitVec 32)) (text!45233 List!40299)) (IntegerValue!19195 (value!196388 Int) (text!45234 List!40299)) (Times!6398) (Or!6398) (Equal!6398) (Minus!6398) (Broken!31994 (value!196389 List!40299)) (And!6398) (Div!6398) (LessEqual!6398) (Mod!6398) (Concat!17472) (Not!6398) (Plus!6398) (SpaceValue!6398 (value!196390 List!40299)) (IntegerValue!19196 (value!196391 Int) (text!45235 List!40299)) (StringLiteralValue!19195 (text!45236 List!40299)) (FloatLiteralValue!12797 (text!45237 List!40299)) (BytesLiteralValue!6398 (value!196392 List!40299)) (CommentValue!12797 (value!196393 List!40299)) (StringLiteralValue!19196 (value!196394 List!40299)) (ErrorTokenValue!6398 (msg!6459 List!40299)) )
))
(declare-datatypes ((List!40300 0))(
  ( (Nil!40176) (Cons!40176 (h!45596 C!22332) (t!304303 List!40300)) )
))
(declare-datatypes ((IArray!24635 0))(
  ( (IArray!24636 (innerList!12375 List!40300)) )
))
(declare-datatypes ((Conc!12315 0))(
  ( (Node!12315 (left!31100 Conc!12315) (right!31430 Conc!12315) (csize!24860 Int) (cheight!12526 Int)) (Leaf!19097 (xs!15525 IArray!24635) (csize!24861 Int)) (Empty!12315) )
))
(declare-datatypes ((BalanceConc!24224 0))(
  ( (BalanceConc!24225 (c!652287 Conc!12315)) )
))
(declare-datatypes ((TokenValueInjection!12224 0))(
  ( (TokenValueInjection!12225 (toValue!8528 Int) (toChars!8387 Int)) )
))
(declare-datatypes ((Rule!12136 0))(
  ( (Rule!12137 (regex!6168 Regex!11073) (tag!7028 String!45671) (isSeparator!6168 Bool) (transformation!6168 TokenValueInjection!12224)) )
))
(declare-datatypes ((Token!11474 0))(
  ( (Token!11475 (value!196395 TokenValue!6398) (rule!8932 Rule!12136) (size!30239 Int) (originalCharacters!6768 List!40300)) )
))
(declare-datatypes ((List!40301 0))(
  ( (Nil!40177) (Cons!40177 (h!45597 Token!11474) (t!304304 List!40301)) )
))
(declare-fun l!4168 () List!40301)

(declare-fun e!2328764 () Bool)

(declare-fun tp!1150261 () Bool)

(declare-fun inv!53932 (String!45671) Bool)

(declare-fun inv!53935 (TokenValueInjection!12224) Bool)

(assert (=> b!3765341 (= e!2328765 (and tp!1150261 (inv!53932 (tag!7028 (rule!8932 (h!45597 l!4168)))) (inv!53935 (transformation!6168 (rule!8932 (h!45597 l!4168)))) e!2328764))))

(assert (=> b!3765342 (= e!2328764 (and tp!1150262 tp!1150266))))

(declare-fun b!3765343 () Bool)

(declare-fun e!2328763 () Bool)

(declare-fun tp_is_empty!19141 () Bool)

(declare-fun tp!1150264 () Bool)

(assert (=> b!3765343 (= e!2328763 (and tp_is_empty!19141 tp!1150264))))

(declare-fun e!2328762 () Bool)

(declare-fun e!2328766 () Bool)

(declare-fun tp!1150263 () Bool)

(declare-fun b!3765344 () Bool)

(declare-fun inv!53936 (Token!11474) Bool)

(assert (=> b!3765344 (= e!2328762 (and (inv!53936 (h!45597 l!4168)) e!2328766 tp!1150263))))

(declare-fun b!3765345 () Bool)

(declare-fun e!2328760 () Bool)

(declare-fun ListPrimitiveSize!271 (List!40301) Int)

(assert (=> b!3765345 (= e!2328760 (not (< (ListPrimitiveSize!271 (t!304304 l!4168)) (ListPrimitiveSize!271 l!4168))))))

(declare-fun acc!396 () List!40300)

(declare-fun lt!1302899 () List!40300)

(declare-fun lt!1302898 () List!40300)

(declare-fun ++!9972 (List!40300 List!40300) List!40300)

(assert (=> b!3765345 (= (++!9972 (++!9972 acc!396 lt!1302899) lt!1302898) (++!9972 acc!396 (++!9972 lt!1302899 lt!1302898)))))

(declare-datatypes ((Unit!57896 0))(
  ( (Unit!57897) )
))
(declare-fun lt!1302897 () Unit!57896)

(declare-fun lemmaConcatAssociativity!2112 (List!40300 List!40300 List!40300) Unit!57896)

(assert (=> b!3765345 (= lt!1302897 (lemmaConcatAssociativity!2112 acc!396 lt!1302899 lt!1302898))))

(declare-datatypes ((LexerInterface!5757 0))(
  ( (LexerInterfaceExt!5754 (__x!25014 Int)) (Lexer!5755) )
))
(declare-fun thiss!13564 () LexerInterface!5757)

(declare-fun printList!1669 (LexerInterface!5757 List!40301) List!40300)

(assert (=> b!3765345 (= lt!1302898 (printList!1669 thiss!13564 (t!304304 l!4168)))))

(declare-fun list!14848 (BalanceConc!24224) List!40300)

(declare-fun charsOf!4018 (Token!11474) BalanceConc!24224)

(assert (=> b!3765345 (= lt!1302899 (list!14848 (charsOf!4018 (h!45597 l!4168))))))

(declare-fun res!1524406 () Bool)

(assert (=> start!353632 (=> (not res!1524406) (not e!2328760))))

(get-info :version)

(assert (=> start!353632 (= res!1524406 (and ((_ is Lexer!5755) thiss!13564) ((_ is Cons!40177) l!4168)))))

(assert (=> start!353632 e!2328760))

(assert (=> start!353632 true))

(assert (=> start!353632 e!2328762))

(assert (=> start!353632 e!2328763))

(declare-fun b!3765346 () Bool)

(declare-fun tp!1150265 () Bool)

(declare-fun inv!21 (TokenValue!6398) Bool)

(assert (=> b!3765346 (= e!2328766 (and (inv!21 (value!196395 (h!45597 l!4168))) e!2328765 tp!1150265))))

(assert (= (and start!353632 res!1524406) b!3765345))

(assert (= b!3765341 b!3765342))

(assert (= b!3765346 b!3765341))

(assert (= b!3765344 b!3765346))

(assert (= (and start!353632 ((_ is Cons!40177) l!4168)) b!3765344))

(assert (= (and start!353632 ((_ is Cons!40176) acc!396)) b!3765343))

(declare-fun m!4261421 () Bool)

(assert (=> b!3765341 m!4261421))

(declare-fun m!4261423 () Bool)

(assert (=> b!3765341 m!4261423))

(declare-fun m!4261425 () Bool)

(assert (=> b!3765344 m!4261425))

(declare-fun m!4261427 () Bool)

(assert (=> b!3765345 m!4261427))

(declare-fun m!4261429 () Bool)

(assert (=> b!3765345 m!4261429))

(assert (=> b!3765345 m!4261427))

(declare-fun m!4261431 () Bool)

(assert (=> b!3765345 m!4261431))

(declare-fun m!4261433 () Bool)

(assert (=> b!3765345 m!4261433))

(declare-fun m!4261435 () Bool)

(assert (=> b!3765345 m!4261435))

(declare-fun m!4261437 () Bool)

(assert (=> b!3765345 m!4261437))

(declare-fun m!4261439 () Bool)

(assert (=> b!3765345 m!4261439))

(assert (=> b!3765345 m!4261429))

(declare-fun m!4261441 () Bool)

(assert (=> b!3765345 m!4261441))

(declare-fun m!4261443 () Bool)

(assert (=> b!3765345 m!4261443))

(declare-fun m!4261445 () Bool)

(assert (=> b!3765345 m!4261445))

(assert (=> b!3765345 m!4261437))

(declare-fun m!4261447 () Bool)

(assert (=> b!3765346 m!4261447))

(check-sat (not b!3765345) b_and!279649 (not b!3765341) (not b_next!101559) (not b!3765344) (not b!3765343) tp_is_empty!19141 b_and!279647 (not b!3765346) (not b_next!101557))
(check-sat b_and!279649 b_and!279647 (not b_next!101557) (not b_next!101559))
(get-model)

(declare-fun d!1100750 () Bool)

(assert (=> d!1100750 (= (inv!53932 (tag!7028 (rule!8932 (h!45597 l!4168)))) (= (mod (str.len (value!196369 (tag!7028 (rule!8932 (h!45597 l!4168))))) 2) 0))))

(assert (=> b!3765341 d!1100750))

(declare-fun d!1100754 () Bool)

(declare-fun res!1524423 () Bool)

(declare-fun e!2328779 () Bool)

(assert (=> d!1100754 (=> (not res!1524423) (not e!2328779))))

(declare-fun semiInverseModEq!2636 (Int Int) Bool)

(assert (=> d!1100754 (= res!1524423 (semiInverseModEq!2636 (toChars!8387 (transformation!6168 (rule!8932 (h!45597 l!4168)))) (toValue!8528 (transformation!6168 (rule!8932 (h!45597 l!4168))))))))

(assert (=> d!1100754 (= (inv!53935 (transformation!6168 (rule!8932 (h!45597 l!4168)))) e!2328779)))

(declare-fun b!3765368 () Bool)

(declare-fun equivClasses!2535 (Int Int) Bool)

(assert (=> b!3765368 (= e!2328779 (equivClasses!2535 (toChars!8387 (transformation!6168 (rule!8932 (h!45597 l!4168)))) (toValue!8528 (transformation!6168 (rule!8932 (h!45597 l!4168))))))))

(assert (= (and d!1100754 res!1524423) b!3765368))

(declare-fun m!4261461 () Bool)

(assert (=> d!1100754 m!4261461))

(declare-fun m!4261463 () Bool)

(assert (=> b!3765368 m!4261463))

(assert (=> b!3765341 d!1100754))

(declare-fun b!3765395 () Bool)

(declare-fun e!2328796 () Bool)

(declare-fun e!2328794 () Bool)

(assert (=> b!3765395 (= e!2328796 e!2328794)))

(declare-fun c!652299 () Bool)

(assert (=> b!3765395 (= c!652299 ((_ is IntegerValue!19195) (value!196395 (h!45597 l!4168))))))

(declare-fun b!3765396 () Bool)

(declare-fun inv!16 (TokenValue!6398) Bool)

(assert (=> b!3765396 (= e!2328796 (inv!16 (value!196395 (h!45597 l!4168))))))

(declare-fun b!3765397 () Bool)

(declare-fun e!2328795 () Bool)

(declare-fun inv!15 (TokenValue!6398) Bool)

(assert (=> b!3765397 (= e!2328795 (inv!15 (value!196395 (h!45597 l!4168))))))

(declare-fun b!3765398 () Bool)

(declare-fun res!1524434 () Bool)

(assert (=> b!3765398 (=> res!1524434 e!2328795)))

(assert (=> b!3765398 (= res!1524434 (not ((_ is IntegerValue!19196) (value!196395 (h!45597 l!4168)))))))

(assert (=> b!3765398 (= e!2328794 e!2328795)))

(declare-fun b!3765399 () Bool)

(declare-fun inv!17 (TokenValue!6398) Bool)

(assert (=> b!3765399 (= e!2328794 (inv!17 (value!196395 (h!45597 l!4168))))))

(declare-fun d!1100756 () Bool)

(declare-fun c!652298 () Bool)

(assert (=> d!1100756 (= c!652298 ((_ is IntegerValue!19194) (value!196395 (h!45597 l!4168))))))

(assert (=> d!1100756 (= (inv!21 (value!196395 (h!45597 l!4168))) e!2328796)))

(assert (= (and d!1100756 c!652298) b!3765396))

(assert (= (and d!1100756 (not c!652298)) b!3765395))

(assert (= (and b!3765395 c!652299) b!3765399))

(assert (= (and b!3765395 (not c!652299)) b!3765398))

(assert (= (and b!3765398 (not res!1524434)) b!3765397))

(declare-fun m!4261509 () Bool)

(assert (=> b!3765396 m!4261509))

(declare-fun m!4261511 () Bool)

(assert (=> b!3765397 m!4261511))

(declare-fun m!4261513 () Bool)

(assert (=> b!3765399 m!4261513))

(assert (=> b!3765346 d!1100756))

(declare-fun d!1100766 () Bool)

(declare-fun c!652305 () Bool)

(assert (=> d!1100766 (= c!652305 ((_ is Cons!40177) (t!304304 l!4168)))))

(declare-fun e!2328802 () List!40300)

(assert (=> d!1100766 (= (printList!1669 thiss!13564 (t!304304 l!4168)) e!2328802)))

(declare-fun b!3765410 () Bool)

(assert (=> b!3765410 (= e!2328802 (++!9972 (list!14848 (charsOf!4018 (h!45597 (t!304304 l!4168)))) (printList!1669 thiss!13564 (t!304304 (t!304304 l!4168)))))))

(declare-fun b!3765411 () Bool)

(assert (=> b!3765411 (= e!2328802 Nil!40176)))

(assert (= (and d!1100766 c!652305) b!3765410))

(assert (= (and d!1100766 (not c!652305)) b!3765411))

(declare-fun m!4261519 () Bool)

(assert (=> b!3765410 m!4261519))

(assert (=> b!3765410 m!4261519))

(declare-fun m!4261521 () Bool)

(assert (=> b!3765410 m!4261521))

(declare-fun m!4261523 () Bool)

(assert (=> b!3765410 m!4261523))

(assert (=> b!3765410 m!4261521))

(assert (=> b!3765410 m!4261523))

(declare-fun m!4261525 () Bool)

(assert (=> b!3765410 m!4261525))

(assert (=> b!3765345 d!1100766))

(declare-fun b!3765428 () Bool)

(declare-fun e!2328812 () List!40300)

(assert (=> b!3765428 (= e!2328812 (++!9972 lt!1302899 lt!1302898))))

(declare-fun b!3765430 () Bool)

(declare-fun res!1524439 () Bool)

(declare-fun e!2328811 () Bool)

(assert (=> b!3765430 (=> (not res!1524439) (not e!2328811))))

(declare-fun lt!1302915 () List!40300)

(declare-fun size!30241 (List!40300) Int)

(assert (=> b!3765430 (= res!1524439 (= (size!30241 lt!1302915) (+ (size!30241 acc!396) (size!30241 (++!9972 lt!1302899 lt!1302898)))))))

(declare-fun d!1100772 () Bool)

(assert (=> d!1100772 e!2328811))

(declare-fun res!1524440 () Bool)

(assert (=> d!1100772 (=> (not res!1524440) (not e!2328811))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5900 (List!40300) (InoxSet C!22332))

(assert (=> d!1100772 (= res!1524440 (= (content!5900 lt!1302915) ((_ map or) (content!5900 acc!396) (content!5900 (++!9972 lt!1302899 lt!1302898)))))))

(assert (=> d!1100772 (= lt!1302915 e!2328812)))

(declare-fun c!652312 () Bool)

(assert (=> d!1100772 (= c!652312 ((_ is Nil!40176) acc!396))))

(assert (=> d!1100772 (= (++!9972 acc!396 (++!9972 lt!1302899 lt!1302898)) lt!1302915)))

(declare-fun b!3765431 () Bool)

(assert (=> b!3765431 (= e!2328811 (or (not (= (++!9972 lt!1302899 lt!1302898) Nil!40176)) (= lt!1302915 acc!396)))))

(declare-fun b!3765429 () Bool)

(assert (=> b!3765429 (= e!2328812 (Cons!40176 (h!45596 acc!396) (++!9972 (t!304303 acc!396) (++!9972 lt!1302899 lt!1302898))))))

(assert (= (and d!1100772 c!652312) b!3765428))

(assert (= (and d!1100772 (not c!652312)) b!3765429))

(assert (= (and d!1100772 res!1524440) b!3765430))

(assert (= (and b!3765430 res!1524439) b!3765431))

(declare-fun m!4261537 () Bool)

(assert (=> b!3765430 m!4261537))

(declare-fun m!4261539 () Bool)

(assert (=> b!3765430 m!4261539))

(assert (=> b!3765430 m!4261429))

(declare-fun m!4261541 () Bool)

(assert (=> b!3765430 m!4261541))

(declare-fun m!4261543 () Bool)

(assert (=> d!1100772 m!4261543))

(declare-fun m!4261545 () Bool)

(assert (=> d!1100772 m!4261545))

(assert (=> d!1100772 m!4261429))

(declare-fun m!4261547 () Bool)

(assert (=> d!1100772 m!4261547))

(assert (=> b!3765429 m!4261429))

(declare-fun m!4261549 () Bool)

(assert (=> b!3765429 m!4261549))

(assert (=> b!3765345 d!1100772))

(declare-fun b!3765432 () Bool)

(declare-fun e!2328814 () List!40300)

(assert (=> b!3765432 (= e!2328814 lt!1302898)))

(declare-fun b!3765434 () Bool)

(declare-fun res!1524441 () Bool)

(declare-fun e!2328813 () Bool)

(assert (=> b!3765434 (=> (not res!1524441) (not e!2328813))))

(declare-fun lt!1302916 () List!40300)

(assert (=> b!3765434 (= res!1524441 (= (size!30241 lt!1302916) (+ (size!30241 (++!9972 acc!396 lt!1302899)) (size!30241 lt!1302898))))))

(declare-fun d!1100780 () Bool)

(assert (=> d!1100780 e!2328813))

(declare-fun res!1524442 () Bool)

(assert (=> d!1100780 (=> (not res!1524442) (not e!2328813))))

(assert (=> d!1100780 (= res!1524442 (= (content!5900 lt!1302916) ((_ map or) (content!5900 (++!9972 acc!396 lt!1302899)) (content!5900 lt!1302898))))))

(assert (=> d!1100780 (= lt!1302916 e!2328814)))

(declare-fun c!652313 () Bool)

(assert (=> d!1100780 (= c!652313 ((_ is Nil!40176) (++!9972 acc!396 lt!1302899)))))

(assert (=> d!1100780 (= (++!9972 (++!9972 acc!396 lt!1302899) lt!1302898) lt!1302916)))

(declare-fun b!3765435 () Bool)

(assert (=> b!3765435 (= e!2328813 (or (not (= lt!1302898 Nil!40176)) (= lt!1302916 (++!9972 acc!396 lt!1302899))))))

(declare-fun b!3765433 () Bool)

(assert (=> b!3765433 (= e!2328814 (Cons!40176 (h!45596 (++!9972 acc!396 lt!1302899)) (++!9972 (t!304303 (++!9972 acc!396 lt!1302899)) lt!1302898)))))

(assert (= (and d!1100780 c!652313) b!3765432))

(assert (= (and d!1100780 (not c!652313)) b!3765433))

(assert (= (and d!1100780 res!1524442) b!3765434))

(assert (= (and b!3765434 res!1524441) b!3765435))

(declare-fun m!4261551 () Bool)

(assert (=> b!3765434 m!4261551))

(assert (=> b!3765434 m!4261437))

(declare-fun m!4261553 () Bool)

(assert (=> b!3765434 m!4261553))

(declare-fun m!4261555 () Bool)

(assert (=> b!3765434 m!4261555))

(declare-fun m!4261557 () Bool)

(assert (=> d!1100780 m!4261557))

(assert (=> d!1100780 m!4261437))

(declare-fun m!4261559 () Bool)

(assert (=> d!1100780 m!4261559))

(declare-fun m!4261561 () Bool)

(assert (=> d!1100780 m!4261561))

(declare-fun m!4261563 () Bool)

(assert (=> b!3765433 m!4261563))

(assert (=> b!3765345 d!1100780))

(declare-fun b!3765436 () Bool)

(declare-fun e!2328816 () List!40300)

(assert (=> b!3765436 (= e!2328816 lt!1302898)))

(declare-fun b!3765438 () Bool)

(declare-fun res!1524443 () Bool)

(declare-fun e!2328815 () Bool)

(assert (=> b!3765438 (=> (not res!1524443) (not e!2328815))))

(declare-fun lt!1302919 () List!40300)

(assert (=> b!3765438 (= res!1524443 (= (size!30241 lt!1302919) (+ (size!30241 lt!1302899) (size!30241 lt!1302898))))))

(declare-fun d!1100782 () Bool)

(assert (=> d!1100782 e!2328815))

(declare-fun res!1524444 () Bool)

(assert (=> d!1100782 (=> (not res!1524444) (not e!2328815))))

(assert (=> d!1100782 (= res!1524444 (= (content!5900 lt!1302919) ((_ map or) (content!5900 lt!1302899) (content!5900 lt!1302898))))))

(assert (=> d!1100782 (= lt!1302919 e!2328816)))

(declare-fun c!652314 () Bool)

(assert (=> d!1100782 (= c!652314 ((_ is Nil!40176) lt!1302899))))

(assert (=> d!1100782 (= (++!9972 lt!1302899 lt!1302898) lt!1302919)))

(declare-fun b!3765439 () Bool)

(assert (=> b!3765439 (= e!2328815 (or (not (= lt!1302898 Nil!40176)) (= lt!1302919 lt!1302899)))))

(declare-fun b!3765437 () Bool)

(assert (=> b!3765437 (= e!2328816 (Cons!40176 (h!45596 lt!1302899) (++!9972 (t!304303 lt!1302899) lt!1302898)))))

(assert (= (and d!1100782 c!652314) b!3765436))

(assert (= (and d!1100782 (not c!652314)) b!3765437))

(assert (= (and d!1100782 res!1524444) b!3765438))

(assert (= (and b!3765438 res!1524443) b!3765439))

(declare-fun m!4261565 () Bool)

(assert (=> b!3765438 m!4261565))

(declare-fun m!4261567 () Bool)

(assert (=> b!3765438 m!4261567))

(assert (=> b!3765438 m!4261555))

(declare-fun m!4261569 () Bool)

(assert (=> d!1100782 m!4261569))

(declare-fun m!4261571 () Bool)

(assert (=> d!1100782 m!4261571))

(assert (=> d!1100782 m!4261561))

(declare-fun m!4261573 () Bool)

(assert (=> b!3765437 m!4261573))

(assert (=> b!3765345 d!1100782))

(declare-fun d!1100784 () Bool)

(declare-fun lt!1302923 () Int)

(assert (=> d!1100784 (>= lt!1302923 0)))

(declare-fun e!2328821 () Int)

(assert (=> d!1100784 (= lt!1302923 e!2328821)))

(declare-fun c!652319 () Bool)

(assert (=> d!1100784 (= c!652319 ((_ is Nil!40177) (t!304304 l!4168)))))

(assert (=> d!1100784 (= (ListPrimitiveSize!271 (t!304304 l!4168)) lt!1302923)))

(declare-fun b!3765448 () Bool)

(assert (=> b!3765448 (= e!2328821 0)))

(declare-fun b!3765449 () Bool)

(assert (=> b!3765449 (= e!2328821 (+ 1 (ListPrimitiveSize!271 (t!304304 (t!304304 l!4168)))))))

(assert (= (and d!1100784 c!652319) b!3765448))

(assert (= (and d!1100784 (not c!652319)) b!3765449))

(declare-fun m!4261577 () Bool)

(assert (=> b!3765449 m!4261577))

(assert (=> b!3765345 d!1100784))

(declare-fun d!1100788 () Bool)

(declare-fun list!14850 (Conc!12315) List!40300)

(assert (=> d!1100788 (= (list!14848 (charsOf!4018 (h!45597 l!4168))) (list!14850 (c!652287 (charsOf!4018 (h!45597 l!4168)))))))

(declare-fun bs!575993 () Bool)

(assert (= bs!575993 d!1100788))

(declare-fun m!4261579 () Bool)

(assert (=> bs!575993 m!4261579))

(assert (=> b!3765345 d!1100788))

(declare-fun b!3765456 () Bool)

(declare-fun e!2328827 () List!40300)

(assert (=> b!3765456 (= e!2328827 lt!1302899)))

(declare-fun b!3765458 () Bool)

(declare-fun res!1524447 () Bool)

(declare-fun e!2328826 () Bool)

(assert (=> b!3765458 (=> (not res!1524447) (not e!2328826))))

(declare-fun lt!1302924 () List!40300)

(assert (=> b!3765458 (= res!1524447 (= (size!30241 lt!1302924) (+ (size!30241 acc!396) (size!30241 lt!1302899))))))

(declare-fun d!1100790 () Bool)

(assert (=> d!1100790 e!2328826))

(declare-fun res!1524448 () Bool)

(assert (=> d!1100790 (=> (not res!1524448) (not e!2328826))))

(assert (=> d!1100790 (= res!1524448 (= (content!5900 lt!1302924) ((_ map or) (content!5900 acc!396) (content!5900 lt!1302899))))))

(assert (=> d!1100790 (= lt!1302924 e!2328827)))

(declare-fun c!652322 () Bool)

(assert (=> d!1100790 (= c!652322 ((_ is Nil!40176) acc!396))))

(assert (=> d!1100790 (= (++!9972 acc!396 lt!1302899) lt!1302924)))

(declare-fun b!3765459 () Bool)

(assert (=> b!3765459 (= e!2328826 (or (not (= lt!1302899 Nil!40176)) (= lt!1302924 acc!396)))))

(declare-fun b!3765457 () Bool)

(assert (=> b!3765457 (= e!2328827 (Cons!40176 (h!45596 acc!396) (++!9972 (t!304303 acc!396) lt!1302899)))))

(assert (= (and d!1100790 c!652322) b!3765456))

(assert (= (and d!1100790 (not c!652322)) b!3765457))

(assert (= (and d!1100790 res!1524448) b!3765458))

(assert (= (and b!3765458 res!1524447) b!3765459))

(declare-fun m!4261581 () Bool)

(assert (=> b!3765458 m!4261581))

(assert (=> b!3765458 m!4261539))

(assert (=> b!3765458 m!4261567))

(declare-fun m!4261583 () Bool)

(assert (=> d!1100790 m!4261583))

(assert (=> d!1100790 m!4261545))

(assert (=> d!1100790 m!4261571))

(declare-fun m!4261585 () Bool)

(assert (=> b!3765457 m!4261585))

(assert (=> b!3765345 d!1100790))

(declare-fun d!1100792 () Bool)

(assert (=> d!1100792 (= (++!9972 (++!9972 acc!396 lt!1302899) lt!1302898) (++!9972 acc!396 (++!9972 lt!1302899 lt!1302898)))))

(declare-fun lt!1302927 () Unit!57896)

(declare-fun choose!22295 (List!40300 List!40300 List!40300) Unit!57896)

(assert (=> d!1100792 (= lt!1302927 (choose!22295 acc!396 lt!1302899 lt!1302898))))

(assert (=> d!1100792 (= (lemmaConcatAssociativity!2112 acc!396 lt!1302899 lt!1302898) lt!1302927)))

(declare-fun bs!575994 () Bool)

(assert (= bs!575994 d!1100792))

(assert (=> bs!575994 m!4261429))

(assert (=> bs!575994 m!4261441))

(assert (=> bs!575994 m!4261437))

(assert (=> bs!575994 m!4261439))

(assert (=> bs!575994 m!4261437))

(declare-fun m!4261593 () Bool)

(assert (=> bs!575994 m!4261593))

(assert (=> bs!575994 m!4261429))

(assert (=> b!3765345 d!1100792))

(declare-fun d!1100798 () Bool)

(declare-fun lt!1302928 () Int)

(assert (=> d!1100798 (>= lt!1302928 0)))

(declare-fun e!2328831 () Int)

(assert (=> d!1100798 (= lt!1302928 e!2328831)))

(declare-fun c!652325 () Bool)

(assert (=> d!1100798 (= c!652325 ((_ is Nil!40177) l!4168))))

(assert (=> d!1100798 (= (ListPrimitiveSize!271 l!4168) lt!1302928)))

(declare-fun b!3765465 () Bool)

(assert (=> b!3765465 (= e!2328831 0)))

(declare-fun b!3765466 () Bool)

(assert (=> b!3765466 (= e!2328831 (+ 1 (ListPrimitiveSize!271 (t!304304 l!4168))))))

(assert (= (and d!1100798 c!652325) b!3765465))

(assert (= (and d!1100798 (not c!652325)) b!3765466))

(assert (=> b!3765466 m!4261435))

(assert (=> b!3765345 d!1100798))

(declare-fun d!1100800 () Bool)

(declare-fun lt!1302931 () BalanceConc!24224)

(assert (=> d!1100800 (= (list!14848 lt!1302931) (originalCharacters!6768 (h!45597 l!4168)))))

(declare-fun dynLambda!17350 (Int TokenValue!6398) BalanceConc!24224)

(assert (=> d!1100800 (= lt!1302931 (dynLambda!17350 (toChars!8387 (transformation!6168 (rule!8932 (h!45597 l!4168)))) (value!196395 (h!45597 l!4168))))))

(assert (=> d!1100800 (= (charsOf!4018 (h!45597 l!4168)) lt!1302931)))

(declare-fun b_lambda!110463 () Bool)

(assert (=> (not b_lambda!110463) (not d!1100800)))

(declare-fun t!304308 () Bool)

(declare-fun tb!215575 () Bool)

(assert (=> (and b!3765342 (= (toChars!8387 (transformation!6168 (rule!8932 (h!45597 l!4168)))) (toChars!8387 (transformation!6168 (rule!8932 (h!45597 l!4168))))) t!304308) tb!215575))

(declare-fun b!3765484 () Bool)

(declare-fun e!2328849 () Bool)

(declare-fun tp!1150278 () Bool)

(declare-fun inv!53939 (Conc!12315) Bool)

(assert (=> b!3765484 (= e!2328849 (and (inv!53939 (c!652287 (dynLambda!17350 (toChars!8387 (transformation!6168 (rule!8932 (h!45597 l!4168)))) (value!196395 (h!45597 l!4168))))) tp!1150278))))

(declare-fun result!263252 () Bool)

(declare-fun inv!53940 (BalanceConc!24224) Bool)

(assert (=> tb!215575 (= result!263252 (and (inv!53940 (dynLambda!17350 (toChars!8387 (transformation!6168 (rule!8932 (h!45597 l!4168)))) (value!196395 (h!45597 l!4168)))) e!2328849))))

(assert (= tb!215575 b!3765484))

(declare-fun m!4261599 () Bool)

(assert (=> b!3765484 m!4261599))

(declare-fun m!4261601 () Bool)

(assert (=> tb!215575 m!4261601))

(assert (=> d!1100800 t!304308))

(declare-fun b_and!279655 () Bool)

(assert (= b_and!279649 (and (=> t!304308 result!263252) b_and!279655)))

(declare-fun m!4261603 () Bool)

(assert (=> d!1100800 m!4261603))

(declare-fun m!4261605 () Bool)

(assert (=> d!1100800 m!4261605))

(assert (=> b!3765345 d!1100800))

(declare-fun d!1100802 () Bool)

(declare-fun res!1524457 () Bool)

(declare-fun e!2328865 () Bool)

(assert (=> d!1100802 (=> (not res!1524457) (not e!2328865))))

(declare-fun isEmpty!23596 (List!40300) Bool)

(assert (=> d!1100802 (= res!1524457 (not (isEmpty!23596 (originalCharacters!6768 (h!45597 l!4168)))))))

(assert (=> d!1100802 (= (inv!53936 (h!45597 l!4168)) e!2328865)))

(declare-fun b!3765510 () Bool)

(declare-fun res!1524458 () Bool)

(assert (=> b!3765510 (=> (not res!1524458) (not e!2328865))))

(assert (=> b!3765510 (= res!1524458 (= (originalCharacters!6768 (h!45597 l!4168)) (list!14848 (dynLambda!17350 (toChars!8387 (transformation!6168 (rule!8932 (h!45597 l!4168)))) (value!196395 (h!45597 l!4168))))))))

(declare-fun b!3765512 () Bool)

(assert (=> b!3765512 (= e!2328865 (= (size!30239 (h!45597 l!4168)) (size!30241 (originalCharacters!6768 (h!45597 l!4168)))))))

(assert (= (and d!1100802 res!1524457) b!3765510))

(assert (= (and b!3765510 res!1524458) b!3765512))

(declare-fun b_lambda!110469 () Bool)

(assert (=> (not b_lambda!110469) (not b!3765510)))

(assert (=> b!3765510 t!304308))

(declare-fun b_and!279661 () Bool)

(assert (= b_and!279655 (and (=> t!304308 result!263252) b_and!279661)))

(declare-fun m!4261615 () Bool)

(assert (=> d!1100802 m!4261615))

(assert (=> b!3765510 m!4261605))

(assert (=> b!3765510 m!4261605))

(declare-fun m!4261617 () Bool)

(assert (=> b!3765510 m!4261617))

(declare-fun m!4261619 () Bool)

(assert (=> b!3765512 m!4261619))

(assert (=> b!3765344 d!1100802))

(declare-fun b!3765526 () Bool)

(declare-fun e!2328868 () Bool)

(declare-fun tp!1150320 () Bool)

(declare-fun tp!1150319 () Bool)

(assert (=> b!3765526 (= e!2328868 (and tp!1150320 tp!1150319))))

(declare-fun b!3765527 () Bool)

(declare-fun tp!1150318 () Bool)

(assert (=> b!3765527 (= e!2328868 tp!1150318)))

(assert (=> b!3765341 (= tp!1150261 e!2328868)))

(declare-fun b!3765528 () Bool)

(declare-fun tp!1150317 () Bool)

(declare-fun tp!1150321 () Bool)

(assert (=> b!3765528 (= e!2328868 (and tp!1150317 tp!1150321))))

(declare-fun b!3765525 () Bool)

(assert (=> b!3765525 (= e!2328868 tp_is_empty!19141)))

(assert (= (and b!3765341 ((_ is ElementMatch!11073) (regex!6168 (rule!8932 (h!45597 l!4168))))) b!3765525))

(assert (= (and b!3765341 ((_ is Concat!17471) (regex!6168 (rule!8932 (h!45597 l!4168))))) b!3765526))

(assert (= (and b!3765341 ((_ is Star!11073) (regex!6168 (rule!8932 (h!45597 l!4168))))) b!3765527))

(assert (= (and b!3765341 ((_ is Union!11073) (regex!6168 (rule!8932 (h!45597 l!4168))))) b!3765528))

(declare-fun b!3765533 () Bool)

(declare-fun e!2328871 () Bool)

(declare-fun tp!1150324 () Bool)

(assert (=> b!3765533 (= e!2328871 (and tp_is_empty!19141 tp!1150324))))

(assert (=> b!3765346 (= tp!1150265 e!2328871)))

(assert (= (and b!3765346 ((_ is Cons!40176) (originalCharacters!6768 (h!45597 l!4168)))) b!3765533))

(declare-fun b!3765547 () Bool)

(declare-fun b_free!100861 () Bool)

(declare-fun b_next!101565 () Bool)

(assert (=> b!3765547 (= b_free!100861 (not b_next!101565))))

(declare-fun tp!1150335 () Bool)

(declare-fun b_and!279663 () Bool)

(assert (=> b!3765547 (= tp!1150335 b_and!279663)))

(declare-fun b_free!100863 () Bool)

(declare-fun b_next!101567 () Bool)

(assert (=> b!3765547 (= b_free!100863 (not b_next!101567))))

(declare-fun t!304312 () Bool)

(declare-fun tb!215579 () Bool)

(assert (=> (and b!3765547 (= (toChars!8387 (transformation!6168 (rule!8932 (h!45597 (t!304304 l!4168))))) (toChars!8387 (transformation!6168 (rule!8932 (h!45597 l!4168))))) t!304312) tb!215579))

(declare-fun result!263268 () Bool)

(assert (= result!263268 result!263252))

(assert (=> d!1100800 t!304312))

(assert (=> b!3765510 t!304312))

(declare-fun b_and!279665 () Bool)

(declare-fun tp!1150339 () Bool)

(assert (=> b!3765547 (= tp!1150339 (and (=> t!304312 result!263268) b_and!279665))))

(declare-fun e!2328887 () Bool)

(assert (=> b!3765344 (= tp!1150263 e!2328887)))

(declare-fun b!3765545 () Bool)

(declare-fun e!2328889 () Bool)

(declare-fun e!2328885 () Bool)

(declare-fun tp!1150338 () Bool)

(assert (=> b!3765545 (= e!2328885 (and (inv!21 (value!196395 (h!45597 (t!304304 l!4168)))) e!2328889 tp!1150338))))

(declare-fun e!2328886 () Bool)

(assert (=> b!3765547 (= e!2328886 (and tp!1150335 tp!1150339))))

(declare-fun b!3765544 () Bool)

(declare-fun tp!1150336 () Bool)

(assert (=> b!3765544 (= e!2328887 (and (inv!53936 (h!45597 (t!304304 l!4168))) e!2328885 tp!1150336))))

(declare-fun tp!1150337 () Bool)

(declare-fun b!3765546 () Bool)

(assert (=> b!3765546 (= e!2328889 (and tp!1150337 (inv!53932 (tag!7028 (rule!8932 (h!45597 (t!304304 l!4168))))) (inv!53935 (transformation!6168 (rule!8932 (h!45597 (t!304304 l!4168))))) e!2328886))))

(assert (= b!3765546 b!3765547))

(assert (= b!3765545 b!3765546))

(assert (= b!3765544 b!3765545))

(assert (= (and b!3765344 ((_ is Cons!40177) (t!304304 l!4168))) b!3765544))

(declare-fun m!4261621 () Bool)

(assert (=> b!3765545 m!4261621))

(declare-fun m!4261623 () Bool)

(assert (=> b!3765544 m!4261623))

(declare-fun m!4261625 () Bool)

(assert (=> b!3765546 m!4261625))

(declare-fun m!4261627 () Bool)

(assert (=> b!3765546 m!4261627))

(declare-fun b!3765548 () Bool)

(declare-fun e!2328890 () Bool)

(declare-fun tp!1150340 () Bool)

(assert (=> b!3765548 (= e!2328890 (and tp_is_empty!19141 tp!1150340))))

(assert (=> b!3765343 (= tp!1150264 e!2328890)))

(assert (= (and b!3765343 ((_ is Cons!40176) (t!304303 acc!396))) b!3765548))

(declare-fun b_lambda!110471 () Bool)

(assert (= b_lambda!110463 (or (and b!3765342 b_free!100855) (and b!3765547 b_free!100863 (= (toChars!8387 (transformation!6168 (rule!8932 (h!45597 (t!304304 l!4168))))) (toChars!8387 (transformation!6168 (rule!8932 (h!45597 l!4168)))))) b_lambda!110471)))

(declare-fun b_lambda!110473 () Bool)

(assert (= b_lambda!110469 (or (and b!3765342 b_free!100855) (and b!3765547 b_free!100863 (= (toChars!8387 (transformation!6168 (rule!8932 (h!45597 (t!304304 l!4168))))) (toChars!8387 (transformation!6168 (rule!8932 (h!45597 l!4168)))))) b_lambda!110473)))

(check-sat (not b!3765433) (not d!1100772) (not b!3765533) (not b!3765466) (not b!3765527) (not b_next!101565) (not b!3765484) (not b!3765434) (not b!3765368) b_and!279647 (not b!3765526) (not b!3765430) (not b_next!101557) (not b_lambda!110471) (not b!3765546) (not b!3765544) (not d!1100800) b_and!279661 b_and!279663 (not b!3765437) (not b!3765429) (not d!1100782) (not b!3765397) (not b_next!101567) b_and!279665 (not b!3765410) (not b!3765457) (not b!3765438) (not d!1100754) (not b!3765528) (not d!1100802) (not b_lambda!110473) (not b!3765449) (not b_next!101559) (not tb!215575) (not b!3765545) (not d!1100792) (not d!1100780) (not b!3765396) tp_is_empty!19141 (not b!3765458) (not b!3765510) (not b!3765548) (not b!3765399) (not b!3765512) (not d!1100790) (not d!1100788))
(check-sat (not b_next!101557) b_and!279661 b_and!279663 (not b_next!101565) (not b_next!101567) b_and!279665 (not b_next!101559) b_and!279647)
