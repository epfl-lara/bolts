; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349482 () Bool)

(assert start!349482)

(declare-fun b!3705639 () Bool)

(declare-fun b_free!99113 () Bool)

(declare-fun b_next!99817 () Bool)

(assert (=> b!3705639 (= b_free!99113 (not b_next!99817))))

(declare-fun tp!1127207 () Bool)

(declare-fun b_and!277347 () Bool)

(assert (=> b!3705639 (= tp!1127207 b_and!277347)))

(declare-fun b_free!99115 () Bool)

(declare-fun b_next!99819 () Bool)

(assert (=> b!3705639 (= b_free!99115 (not b_next!99819))))

(declare-fun tp!1127206 () Bool)

(declare-fun b_and!277349 () Bool)

(assert (=> b!3705639 (= tp!1127206 b_and!277349)))

(declare-fun res!1507497 () Bool)

(declare-fun e!2295530 () Bool)

(assert (=> start!349482 (=> (not res!1507497) (not e!2295530))))

(declare-datatypes ((LexerInterface!5623 0))(
  ( (LexerInterfaceExt!5620 (__x!24745 Int)) (Lexer!5621) )
))
(declare-fun thiss!19663 () LexerInterface!5623)

(get-info :version)

(assert (=> start!349482 (= res!1507497 ((_ is Lexer!5621) thiss!19663))))

(assert (=> start!349482 e!2295530))

(assert (=> start!349482 true))

(declare-fun e!2295535 () Bool)

(assert (=> start!349482 e!2295535))

(declare-datatypes ((String!44653 0))(
  ( (String!44654 (value!192348 String)) )
))
(declare-fun tag!164 () String!44653)

(declare-fun inv!53023 (String!44653) Bool)

(assert (=> start!349482 (inv!53023 tag!164)))

(declare-fun b!3705633 () Bool)

(declare-fun e!2295533 () Bool)

(assert (=> b!3705633 (= e!2295530 (not e!2295533))))

(declare-fun res!1507495 () Bool)

(assert (=> b!3705633 (=> res!1507495 e!2295533)))

(declare-datatypes ((List!39658 0))(
  ( (Nil!39534) (Cons!39534 (h!44954 (_ BitVec 16)) (t!302341 List!39658)) )
))
(declare-datatypes ((TokenValue!6264 0))(
  ( (FloatLiteralValue!12528 (text!44293 List!39658)) (TokenValueExt!6263 (__x!24746 Int)) (Broken!31320 (value!192349 List!39658)) (Object!6387) (End!6264) (Def!6264) (Underscore!6264) (Match!6264) (Else!6264) (Error!6264) (Case!6264) (If!6264) (Extends!6264) (Abstract!6264) (Class!6264) (Val!6264) (DelimiterValue!12528 (del!6324 List!39658)) (KeywordValue!6270 (value!192350 List!39658)) (CommentValue!12528 (value!192351 List!39658)) (WhitespaceValue!12528 (value!192352 List!39658)) (IndentationValue!6264 (value!192353 List!39658)) (String!44655) (Int32!6264) (Broken!31321 (value!192354 List!39658)) (Boolean!6265) (Unit!57429) (OperatorValue!6267 (op!6324 List!39658)) (IdentifierValue!12528 (value!192355 List!39658)) (IdentifierValue!12529 (value!192356 List!39658)) (WhitespaceValue!12529 (value!192357 List!39658)) (True!12528) (False!12528) (Broken!31322 (value!192358 List!39658)) (Broken!31323 (value!192359 List!39658)) (True!12529) (RightBrace!6264) (RightBracket!6264) (Colon!6264) (Null!6264) (Comma!6264) (LeftBracket!6264) (False!12529) (LeftBrace!6264) (ImaginaryLiteralValue!6264 (text!44294 List!39658)) (StringLiteralValue!18792 (value!192360 List!39658)) (EOFValue!6264 (value!192361 List!39658)) (IdentValue!6264 (value!192362 List!39658)) (DelimiterValue!12529 (value!192363 List!39658)) (DedentValue!6264 (value!192364 List!39658)) (NewLineValue!6264 (value!192365 List!39658)) (IntegerValue!18792 (value!192366 (_ BitVec 32)) (text!44295 List!39658)) (IntegerValue!18793 (value!192367 Int) (text!44296 List!39658)) (Times!6264) (Or!6264) (Equal!6264) (Minus!6264) (Broken!31324 (value!192368 List!39658)) (And!6264) (Div!6264) (LessEqual!6264) (Mod!6264) (Concat!17057) (Not!6264) (Plus!6264) (SpaceValue!6264 (value!192369 List!39658)) (IntegerValue!18794 (value!192370 Int) (text!44297 List!39658)) (StringLiteralValue!18793 (text!44298 List!39658)) (FloatLiteralValue!12529 (text!44299 List!39658)) (BytesLiteralValue!6264 (value!192371 List!39658)) (CommentValue!12529 (value!192372 List!39658)) (StringLiteralValue!18794 (value!192373 List!39658)) (ErrorTokenValue!6264 (msg!6325 List!39658)) )
))
(declare-datatypes ((C!21772 0))(
  ( (C!21773 (val!12934 Int)) )
))
(declare-datatypes ((List!39659 0))(
  ( (Nil!39535) (Cons!39535 (h!44955 C!21772) (t!302342 List!39659)) )
))
(declare-datatypes ((IArray!24267 0))(
  ( (IArray!24268 (innerList!12191 List!39659)) )
))
(declare-datatypes ((Conc!12131 0))(
  ( (Node!12131 (left!30706 Conc!12131) (right!31036 Conc!12131) (csize!24492 Int) (cheight!12342 Int)) (Leaf!18759 (xs!15333 IArray!24267) (csize!24493 Int)) (Empty!12131) )
))
(declare-datatypes ((BalanceConc!23876 0))(
  ( (BalanceConc!23877 (c!640026 Conc!12131)) )
))
(declare-datatypes ((Regex!10793 0))(
  ( (ElementMatch!10793 (c!640027 C!21772)) (Concat!17058 (regOne!22098 Regex!10793) (regTwo!22098 Regex!10793)) (EmptyExpr!10793) (Star!10793 (reg!11122 Regex!10793)) (EmptyLang!10793) (Union!10793 (regOne!22099 Regex!10793) (regTwo!22099 Regex!10793)) )
))
(declare-datatypes ((TokenValueInjection!11956 0))(
  ( (TokenValueInjection!11957 (toValue!8378 Int) (toChars!8237 Int)) )
))
(declare-datatypes ((Rule!11868 0))(
  ( (Rule!11869 (regex!6034 Regex!10793) (tag!6892 String!44653) (isSeparator!6034 Bool) (transformation!6034 TokenValueInjection!11956)) )
))
(declare-datatypes ((Option!8564 0))(
  ( (None!8563) (Some!8563 (v!38549 Rule!11868)) )
))
(declare-fun lt!1296345 () Option!8564)

(declare-fun isEmpty!23486 (Option!8564) Bool)

(assert (=> b!3705633 (= res!1507495 (isEmpty!23486 lt!1296345))))

(declare-datatypes ((List!39660 0))(
  ( (Nil!39536) (Cons!39536 (h!44956 Rule!11868) (t!302343 List!39660)) )
))
(declare-fun rules!2525 () List!39660)

(declare-fun getRuleFromTag!1544 (LexerInterface!5623 List!39660 String!44653) Option!8564)

(assert (=> b!3705633 (= lt!1296345 (getRuleFromTag!1544 thiss!19663 (t!302343 rules!2525) tag!164))))

(declare-fun rulesInvariant!5020 (LexerInterface!5623 List!39660) Bool)

(assert (=> b!3705633 (rulesInvariant!5020 thiss!19663 (t!302343 rules!2525))))

(declare-datatypes ((Unit!57430 0))(
  ( (Unit!57431) )
))
(declare-fun lt!1296344 () Unit!57430)

(declare-fun lemmaInvariantOnRulesThenOnTail!706 (LexerInterface!5623 Rule!11868 List!39660) Unit!57430)

(assert (=> b!3705633 (= lt!1296344 (lemmaInvariantOnRulesThenOnTail!706 thiss!19663 (h!44956 rules!2525) (t!302343 rules!2525)))))

(declare-fun b!3705634 () Bool)

(declare-fun e!2295536 () Bool)

(declare-fun tp!1127205 () Bool)

(assert (=> b!3705634 (= e!2295535 (and e!2295536 tp!1127205))))

(declare-fun b!3705635 () Bool)

(declare-fun e!2295532 () Bool)

(assert (=> b!3705635 (= e!2295533 e!2295532)))

(declare-fun res!1507494 () Bool)

(assert (=> b!3705635 (=> (not res!1507494) (not e!2295532))))

(declare-fun lt!1296346 () Rule!11868)

(declare-fun contains!7888 (List!39660 Rule!11868) Bool)

(assert (=> b!3705635 (= res!1507494 (contains!7888 rules!2525 lt!1296346))))

(declare-fun get!13161 (Option!8564) Rule!11868)

(assert (=> b!3705635 (= lt!1296346 (get!13161 lt!1296345))))

(declare-fun b!3705636 () Bool)

(declare-fun res!1507496 () Bool)

(assert (=> b!3705636 (=> (not res!1507496) (not e!2295530))))

(assert (=> b!3705636 (= res!1507496 (rulesInvariant!5020 thiss!19663 rules!2525))))

(declare-fun b!3705637 () Bool)

(assert (=> b!3705637 (= e!2295532 (= (tag!6892 lt!1296346) tag!164))))

(declare-fun e!2295534 () Bool)

(declare-fun b!3705638 () Bool)

(declare-fun tp!1127208 () Bool)

(declare-fun inv!53025 (TokenValueInjection!11956) Bool)

(assert (=> b!3705638 (= e!2295536 (and tp!1127208 (inv!53023 (tag!6892 (h!44956 rules!2525))) (inv!53025 (transformation!6034 (h!44956 rules!2525))) e!2295534))))

(assert (=> b!3705639 (= e!2295534 (and tp!1127207 tp!1127206))))

(declare-fun b!3705640 () Bool)

(declare-fun res!1507493 () Bool)

(assert (=> b!3705640 (=> (not res!1507493) (not e!2295530))))

(assert (=> b!3705640 (= res!1507493 (and (or (not ((_ is Cons!39536) rules!2525)) (not (= (tag!6892 (h!44956 rules!2525)) tag!164))) ((_ is Cons!39536) rules!2525) (not (= (tag!6892 (h!44956 rules!2525)) tag!164))))))

(assert (= (and start!349482 res!1507497) b!3705636))

(assert (= (and b!3705636 res!1507496) b!3705640))

(assert (= (and b!3705640 res!1507493) b!3705633))

(assert (= (and b!3705633 (not res!1507495)) b!3705635))

(assert (= (and b!3705635 res!1507494) b!3705637))

(assert (= b!3705638 b!3705639))

(assert (= b!3705634 b!3705638))

(assert (= (and start!349482 ((_ is Cons!39536) rules!2525)) b!3705634))

(declare-fun m!4215877 () Bool)

(assert (=> b!3705635 m!4215877))

(declare-fun m!4215879 () Bool)

(assert (=> b!3705635 m!4215879))

(declare-fun m!4215881 () Bool)

(assert (=> start!349482 m!4215881))

(declare-fun m!4215883 () Bool)

(assert (=> b!3705638 m!4215883))

(declare-fun m!4215885 () Bool)

(assert (=> b!3705638 m!4215885))

(declare-fun m!4215887 () Bool)

(assert (=> b!3705636 m!4215887))

(declare-fun m!4215889 () Bool)

(assert (=> b!3705633 m!4215889))

(declare-fun m!4215891 () Bool)

(assert (=> b!3705633 m!4215891))

(declare-fun m!4215893 () Bool)

(assert (=> b!3705633 m!4215893))

(declare-fun m!4215895 () Bool)

(assert (=> b!3705633 m!4215895))

(check-sat (not b!3705635) (not b_next!99817) (not b!3705638) (not b!3705633) (not b!3705636) (not b_next!99819) (not b!3705634) b_and!277347 b_and!277349 (not start!349482))
(check-sat b_and!277349 b_and!277347 (not b_next!99819) (not b_next!99817))
(get-model)

(declare-fun d!1086408 () Bool)

(assert (=> d!1086408 (= (inv!53023 tag!164) (= (mod (str.len (value!192348 tag!164)) 2) 0))))

(assert (=> start!349482 d!1086408))

(declare-fun d!1086412 () Bool)

(declare-fun res!1507510 () Bool)

(declare-fun e!2295542 () Bool)

(assert (=> d!1086412 (=> (not res!1507510) (not e!2295542))))

(declare-fun rulesValid!2339 (LexerInterface!5623 List!39660) Bool)

(assert (=> d!1086412 (= res!1507510 (rulesValid!2339 thiss!19663 rules!2525))))

(assert (=> d!1086412 (= (rulesInvariant!5020 thiss!19663 rules!2525) e!2295542)))

(declare-fun b!3705646 () Bool)

(declare-datatypes ((List!39662 0))(
  ( (Nil!39538) (Cons!39538 (h!44958 String!44653) (t!302345 List!39662)) )
))
(declare-fun noDuplicateTag!2340 (LexerInterface!5623 List!39660 List!39662) Bool)

(assert (=> b!3705646 (= e!2295542 (noDuplicateTag!2340 thiss!19663 rules!2525 Nil!39538))))

(assert (= (and d!1086412 res!1507510) b!3705646))

(declare-fun m!4215901 () Bool)

(assert (=> d!1086412 m!4215901))

(declare-fun m!4215903 () Bool)

(assert (=> b!3705646 m!4215903))

(assert (=> b!3705636 d!1086412))

(declare-fun d!1086418 () Bool)

(declare-fun lt!1296349 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5706 (List!39660) (InoxSet Rule!11868))

(assert (=> d!1086418 (= lt!1296349 (select (content!5706 rules!2525) lt!1296346))))

(declare-fun e!2295548 () Bool)

(assert (=> d!1086418 (= lt!1296349 e!2295548)))

(declare-fun res!1507515 () Bool)

(assert (=> d!1086418 (=> (not res!1507515) (not e!2295548))))

(assert (=> d!1086418 (= res!1507515 ((_ is Cons!39536) rules!2525))))

(assert (=> d!1086418 (= (contains!7888 rules!2525 lt!1296346) lt!1296349)))

(declare-fun b!3705651 () Bool)

(declare-fun e!2295547 () Bool)

(assert (=> b!3705651 (= e!2295548 e!2295547)))

(declare-fun res!1507516 () Bool)

(assert (=> b!3705651 (=> res!1507516 e!2295547)))

(assert (=> b!3705651 (= res!1507516 (= (h!44956 rules!2525) lt!1296346))))

(declare-fun b!3705652 () Bool)

(assert (=> b!3705652 (= e!2295547 (contains!7888 (t!302343 rules!2525) lt!1296346))))

(assert (= (and d!1086418 res!1507515) b!3705651))

(assert (= (and b!3705651 (not res!1507516)) b!3705652))

(declare-fun m!4215905 () Bool)

(assert (=> d!1086418 m!4215905))

(declare-fun m!4215907 () Bool)

(assert (=> d!1086418 m!4215907))

(declare-fun m!4215909 () Bool)

(assert (=> b!3705652 m!4215909))

(assert (=> b!3705635 d!1086418))

(declare-fun d!1086420 () Bool)

(assert (=> d!1086420 (= (get!13161 lt!1296345) (v!38549 lt!1296345))))

(assert (=> b!3705635 d!1086420))

(declare-fun d!1086422 () Bool)

(assert (=> d!1086422 (= (isEmpty!23486 lt!1296345) (not ((_ is Some!8563) lt!1296345)))))

(assert (=> b!3705633 d!1086422))

(declare-fun b!3705688 () Bool)

(declare-fun e!2295575 () Option!8564)

(assert (=> b!3705688 (= e!2295575 None!8563)))

(declare-fun d!1086424 () Bool)

(declare-fun e!2295576 () Bool)

(assert (=> d!1086424 e!2295576))

(declare-fun res!1507530 () Bool)

(assert (=> d!1086424 (=> res!1507530 e!2295576)))

(declare-fun lt!1296371 () Option!8564)

(assert (=> d!1086424 (= res!1507530 (isEmpty!23486 lt!1296371))))

(declare-fun e!2295577 () Option!8564)

(assert (=> d!1086424 (= lt!1296371 e!2295577)))

(declare-fun c!640038 () Bool)

(assert (=> d!1086424 (= c!640038 (and ((_ is Cons!39536) (t!302343 rules!2525)) (= (tag!6892 (h!44956 (t!302343 rules!2525))) tag!164)))))

(assert (=> d!1086424 (rulesInvariant!5020 thiss!19663 (t!302343 rules!2525))))

(assert (=> d!1086424 (= (getRuleFromTag!1544 thiss!19663 (t!302343 rules!2525) tag!164) lt!1296371)))

(declare-fun b!3705689 () Bool)

(assert (=> b!3705689 (= e!2295577 (Some!8563 (h!44956 (t!302343 rules!2525))))))

(declare-fun b!3705690 () Bool)

(declare-fun lt!1296370 () Unit!57430)

(declare-fun lt!1296372 () Unit!57430)

(assert (=> b!3705690 (= lt!1296370 lt!1296372)))

(assert (=> b!3705690 (rulesInvariant!5020 thiss!19663 (t!302343 (t!302343 rules!2525)))))

(assert (=> b!3705690 (= lt!1296372 (lemmaInvariantOnRulesThenOnTail!706 thiss!19663 (h!44956 (t!302343 rules!2525)) (t!302343 (t!302343 rules!2525))))))

(assert (=> b!3705690 (= e!2295575 (getRuleFromTag!1544 thiss!19663 (t!302343 (t!302343 rules!2525)) tag!164))))

(declare-fun b!3705691 () Bool)

(declare-fun e!2295574 () Bool)

(assert (=> b!3705691 (= e!2295576 e!2295574)))

(declare-fun res!1507533 () Bool)

(assert (=> b!3705691 (=> (not res!1507533) (not e!2295574))))

(assert (=> b!3705691 (= res!1507533 (contains!7888 (t!302343 rules!2525) (get!13161 lt!1296371)))))

(declare-fun b!3705692 () Bool)

(assert (=> b!3705692 (= e!2295577 e!2295575)))

(declare-fun c!640039 () Bool)

(assert (=> b!3705692 (= c!640039 (and ((_ is Cons!39536) (t!302343 rules!2525)) (not (= (tag!6892 (h!44956 (t!302343 rules!2525))) tag!164))))))

(declare-fun b!3705693 () Bool)

(assert (=> b!3705693 (= e!2295574 (= (tag!6892 (get!13161 lt!1296371)) tag!164))))

(assert (= (and d!1086424 c!640038) b!3705689))

(assert (= (and d!1086424 (not c!640038)) b!3705692))

(assert (= (and b!3705692 c!640039) b!3705690))

(assert (= (and b!3705692 (not c!640039)) b!3705688))

(assert (= (and d!1086424 (not res!1507530)) b!3705691))

(assert (= (and b!3705691 res!1507533) b!3705693))

(declare-fun m!4215931 () Bool)

(assert (=> d!1086424 m!4215931))

(assert (=> d!1086424 m!4215893))

(declare-fun m!4215933 () Bool)

(assert (=> b!3705690 m!4215933))

(declare-fun m!4215935 () Bool)

(assert (=> b!3705690 m!4215935))

(declare-fun m!4215937 () Bool)

(assert (=> b!3705690 m!4215937))

(declare-fun m!4215939 () Bool)

(assert (=> b!3705691 m!4215939))

(assert (=> b!3705691 m!4215939))

(declare-fun m!4215941 () Bool)

(assert (=> b!3705691 m!4215941))

(assert (=> b!3705693 m!4215939))

(assert (=> b!3705633 d!1086424))

(declare-fun d!1086432 () Bool)

(declare-fun res!1507534 () Bool)

(declare-fun e!2295578 () Bool)

(assert (=> d!1086432 (=> (not res!1507534) (not e!2295578))))

(assert (=> d!1086432 (= res!1507534 (rulesValid!2339 thiss!19663 (t!302343 rules!2525)))))

(assert (=> d!1086432 (= (rulesInvariant!5020 thiss!19663 (t!302343 rules!2525)) e!2295578)))

(declare-fun b!3705694 () Bool)

(assert (=> b!3705694 (= e!2295578 (noDuplicateTag!2340 thiss!19663 (t!302343 rules!2525) Nil!39538))))

(assert (= (and d!1086432 res!1507534) b!3705694))

(declare-fun m!4215943 () Bool)

(assert (=> d!1086432 m!4215943))

(declare-fun m!4215945 () Bool)

(assert (=> b!3705694 m!4215945))

(assert (=> b!3705633 d!1086432))

(declare-fun d!1086434 () Bool)

(assert (=> d!1086434 (rulesInvariant!5020 thiss!19663 (t!302343 rules!2525))))

(declare-fun lt!1296376 () Unit!57430)

(declare-fun choose!22158 (LexerInterface!5623 Rule!11868 List!39660) Unit!57430)

(assert (=> d!1086434 (= lt!1296376 (choose!22158 thiss!19663 (h!44956 rules!2525) (t!302343 rules!2525)))))

(assert (=> d!1086434 (rulesInvariant!5020 thiss!19663 (Cons!39536 (h!44956 rules!2525) (t!302343 rules!2525)))))

(assert (=> d!1086434 (= (lemmaInvariantOnRulesThenOnTail!706 thiss!19663 (h!44956 rules!2525) (t!302343 rules!2525)) lt!1296376)))

(declare-fun bs!574649 () Bool)

(assert (= bs!574649 d!1086434))

(assert (=> bs!574649 m!4215893))

(declare-fun m!4215953 () Bool)

(assert (=> bs!574649 m!4215953))

(declare-fun m!4215955 () Bool)

(assert (=> bs!574649 m!4215955))

(assert (=> b!3705633 d!1086434))

(declare-fun d!1086442 () Bool)

(assert (=> d!1086442 (= (inv!53023 (tag!6892 (h!44956 rules!2525))) (= (mod (str.len (value!192348 (tag!6892 (h!44956 rules!2525)))) 2) 0))))

(assert (=> b!3705638 d!1086442))

(declare-fun d!1086444 () Bool)

(declare-fun res!1507542 () Bool)

(declare-fun e!2295600 () Bool)

(assert (=> d!1086444 (=> (not res!1507542) (not e!2295600))))

(declare-fun semiInverseModEq!2583 (Int Int) Bool)

(assert (=> d!1086444 (= res!1507542 (semiInverseModEq!2583 (toChars!8237 (transformation!6034 (h!44956 rules!2525))) (toValue!8378 (transformation!6034 (h!44956 rules!2525)))))))

(assert (=> d!1086444 (= (inv!53025 (transformation!6034 (h!44956 rules!2525))) e!2295600)))

(declare-fun b!3705719 () Bool)

(declare-fun equivClasses!2482 (Int Int) Bool)

(assert (=> b!3705719 (= e!2295600 (equivClasses!2482 (toChars!8237 (transformation!6034 (h!44956 rules!2525))) (toValue!8378 (transformation!6034 (h!44956 rules!2525)))))))

(assert (= (and d!1086444 res!1507542) b!3705719))

(declare-fun m!4215965 () Bool)

(assert (=> d!1086444 m!4215965))

(declare-fun m!4215967 () Bool)

(assert (=> b!3705719 m!4215967))

(assert (=> b!3705638 d!1086444))

(declare-fun b!3705738 () Bool)

(declare-fun b_free!99121 () Bool)

(declare-fun b_next!99825 () Bool)

(assert (=> b!3705738 (= b_free!99121 (not b_next!99825))))

(declare-fun tp!1127245 () Bool)

(declare-fun b_and!277355 () Bool)

(assert (=> b!3705738 (= tp!1127245 b_and!277355)))

(declare-fun b_free!99123 () Bool)

(declare-fun b_next!99827 () Bool)

(assert (=> b!3705738 (= b_free!99123 (not b_next!99827))))

(declare-fun tp!1127247 () Bool)

(declare-fun b_and!277357 () Bool)

(assert (=> b!3705738 (= tp!1127247 b_and!277357)))

(declare-fun e!2295612 () Bool)

(assert (=> b!3705738 (= e!2295612 (and tp!1127245 tp!1127247))))

(declare-fun e!2295610 () Bool)

(declare-fun tp!1127244 () Bool)

(declare-fun b!3705737 () Bool)

(assert (=> b!3705737 (= e!2295610 (and tp!1127244 (inv!53023 (tag!6892 (h!44956 (t!302343 rules!2525)))) (inv!53025 (transformation!6034 (h!44956 (t!302343 rules!2525)))) e!2295612))))

(declare-fun b!3705736 () Bool)

(declare-fun e!2295613 () Bool)

(declare-fun tp!1127246 () Bool)

(assert (=> b!3705736 (= e!2295613 (and e!2295610 tp!1127246))))

(assert (=> b!3705634 (= tp!1127205 e!2295613)))

(assert (= b!3705737 b!3705738))

(assert (= b!3705736 b!3705737))

(assert (= (and b!3705634 ((_ is Cons!39536) (t!302343 rules!2525))) b!3705736))

(declare-fun m!4215969 () Bool)

(assert (=> b!3705737 m!4215969))

(declare-fun m!4215971 () Bool)

(assert (=> b!3705737 m!4215971))

(declare-fun b!3705751 () Bool)

(declare-fun e!2295616 () Bool)

(declare-fun tp!1127261 () Bool)

(assert (=> b!3705751 (= e!2295616 tp!1127261)))

(declare-fun b!3705752 () Bool)

(declare-fun tp!1127262 () Bool)

(declare-fun tp!1127259 () Bool)

(assert (=> b!3705752 (= e!2295616 (and tp!1127262 tp!1127259))))

(declare-fun b!3705749 () Bool)

(declare-fun tp_is_empty!18613 () Bool)

(assert (=> b!3705749 (= e!2295616 tp_is_empty!18613)))

(assert (=> b!3705638 (= tp!1127208 e!2295616)))

(declare-fun b!3705750 () Bool)

(declare-fun tp!1127260 () Bool)

(declare-fun tp!1127258 () Bool)

(assert (=> b!3705750 (= e!2295616 (and tp!1127260 tp!1127258))))

(assert (= (and b!3705638 ((_ is ElementMatch!10793) (regex!6034 (h!44956 rules!2525)))) b!3705749))

(assert (= (and b!3705638 ((_ is Concat!17058) (regex!6034 (h!44956 rules!2525)))) b!3705750))

(assert (= (and b!3705638 ((_ is Star!10793) (regex!6034 (h!44956 rules!2525)))) b!3705751))

(assert (= (and b!3705638 ((_ is Union!10793) (regex!6034 (h!44956 rules!2525)))) b!3705752))

(check-sat (not b!3705693) (not b!3705752) (not b!3705719) (not b!3705694) (not b!3705737) (not b!3705751) b_and!277357 (not d!1086418) (not b_next!99819) (not b!3705652) (not b_next!99825) b_and!277347 (not b_next!99827) (not b_next!99817) tp_is_empty!18613 (not d!1086412) (not b!3705691) (not b!3705736) (not d!1086432) (not d!1086444) b_and!277355 (not b!3705750) b_and!277349 (not d!1086424) (not b!3705646) (not d!1086434) (not b!3705690))
(check-sat (not b_next!99817) b_and!277355 b_and!277349 b_and!277357 (not b_next!99819) (not b_next!99825) b_and!277347 (not b_next!99827))
