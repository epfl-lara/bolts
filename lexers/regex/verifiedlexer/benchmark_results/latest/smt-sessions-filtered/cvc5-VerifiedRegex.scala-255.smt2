; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!4116 () Bool)

(assert start!4116)

(declare-fun b!53386 () Bool)

(declare-fun b_free!1729 () Bool)

(declare-fun b_next!1729 () Bool)

(assert (=> b!53386 (= b_free!1729 (not b_next!1729))))

(declare-fun tp!34421 () Bool)

(declare-fun b_and!1779 () Bool)

(assert (=> b!53386 (= tp!34421 b_and!1779)))

(declare-fun b_free!1731 () Bool)

(declare-fun b_next!1731 () Bool)

(assert (=> b!53386 (= b_free!1731 (not b_next!1731))))

(declare-fun tp!34417 () Bool)

(declare-fun b_and!1781 () Bool)

(assert (=> b!53386 (= tp!34417 b_and!1781)))

(declare-fun b!53385 () Bool)

(declare-fun e!31532 () Bool)

(declare-fun e!31535 () Bool)

(declare-fun tp!34419 () Bool)

(assert (=> b!53385 (= e!31532 (and e!31535 tp!34419))))

(declare-fun e!31533 () Bool)

(assert (=> b!53386 (= e!31533 (and tp!34421 tp!34417))))

(declare-fun b!53387 () Bool)

(declare-fun e!31537 () Bool)

(declare-fun e!31534 () Bool)

(assert (=> b!53387 (= e!31537 (not e!31534))))

(declare-fun res!34406 () Bool)

(assert (=> b!53387 (=> (not res!34406) (not e!31534))))

(declare-fun from!821 () Int)

(assert (=> b!53387 (= res!34406 (>= (+ 1 from!821) 0))))

(declare-datatypes ((List!1117 0))(
  ( (Nil!1111) (Cons!1111 (h!6508 (_ BitVec 16)) (t!17384 List!1117)) )
))
(declare-datatypes ((TokenValue!230 0))(
  ( (FloatLiteralValue!460 (text!2055 List!1117)) (TokenValueExt!229 (__x!1555 Int)) (Broken!1150 (value!9713 List!1117)) (Object!235) (End!230) (Def!230) (Underscore!230) (Match!230) (Else!230) (Error!230) (Case!230) (If!230) (Extends!230) (Abstract!230) (Class!230) (Val!230) (DelimiterValue!460 (del!290 List!1117)) (KeywordValue!236 (value!9714 List!1117)) (CommentValue!460 (value!9715 List!1117)) (WhitespaceValue!460 (value!9716 List!1117)) (IndentationValue!230 (value!9717 List!1117)) (String!1543) (Int32!230) (Broken!1151 (value!9718 List!1117)) (Boolean!231) (Unit!628) (OperatorValue!233 (op!290 List!1117)) (IdentifierValue!460 (value!9719 List!1117)) (IdentifierValue!461 (value!9720 List!1117)) (WhitespaceValue!461 (value!9721 List!1117)) (True!460) (False!460) (Broken!1152 (value!9722 List!1117)) (Broken!1153 (value!9723 List!1117)) (True!461) (RightBrace!230) (RightBracket!230) (Colon!230) (Null!230) (Comma!230) (LeftBracket!230) (False!461) (LeftBrace!230) (ImaginaryLiteralValue!230 (text!2056 List!1117)) (StringLiteralValue!690 (value!9724 List!1117)) (EOFValue!230 (value!9725 List!1117)) (IdentValue!230 (value!9726 List!1117)) (DelimiterValue!461 (value!9727 List!1117)) (DedentValue!230 (value!9728 List!1117)) (NewLineValue!230 (value!9729 List!1117)) (IntegerValue!690 (value!9730 (_ BitVec 32)) (text!2057 List!1117)) (IntegerValue!691 (value!9731 Int) (text!2058 List!1117)) (Times!230) (Or!230) (Equal!230) (Minus!230) (Broken!1154 (value!9732 List!1117)) (And!230) (Div!230) (LessEqual!230) (Mod!230) (Concat!538) (Not!230) (Plus!230) (SpaceValue!230 (value!9733 List!1117)) (IntegerValue!692 (value!9734 Int) (text!2059 List!1117)) (StringLiteralValue!691 (text!2060 List!1117)) (FloatLiteralValue!461 (text!2061 List!1117)) (BytesLiteralValue!230 (value!9735 List!1117)) (CommentValue!461 (value!9736 List!1117)) (StringLiteralValue!692 (value!9737 List!1117)) (ErrorTokenValue!230 (msg!291 List!1117)) )
))
(declare-datatypes ((C!1538 0))(
  ( (C!1539 (val!376 Int)) )
))
(declare-datatypes ((List!1118 0))(
  ( (Nil!1112) (Cons!1112 (h!6509 C!1538) (t!17385 List!1118)) )
))
(declare-datatypes ((IArray!569 0))(
  ( (IArray!570 (innerList!342 List!1118)) )
))
(declare-datatypes ((Conc!284 0))(
  ( (Node!284 (left!845 Conc!284) (right!1175 Conc!284) (csize!798 Int) (cheight!495 Int)) (Leaf!540 (xs!2863 IArray!569) (csize!799 Int)) (Empty!284) )
))
(declare-datatypes ((Regex!308 0))(
  ( (ElementMatch!308 (c!17021 C!1538)) (Concat!539 (regOne!1128 Regex!308) (regTwo!1128 Regex!308)) (EmptyExpr!308) (Star!308 (reg!637 Regex!308)) (EmptyLang!308) (Union!308 (regOne!1129 Regex!308) (regTwo!1129 Regex!308)) )
))
(declare-datatypes ((String!1544 0))(
  ( (String!1545 (value!9738 String)) )
))
(declare-datatypes ((BalanceConc!572 0))(
  ( (BalanceConc!573 (c!17022 Conc!284)) )
))
(declare-datatypes ((TokenValueInjection!284 0))(
  ( (TokenValueInjection!285 (toValue!719 Int) (toChars!578 Int)) )
))
(declare-datatypes ((Rule!280 0))(
  ( (Rule!281 (regex!240 Regex!308) (tag!418 String!1544) (isSeparator!240 Bool) (transformation!240 TokenValueInjection!284)) )
))
(declare-datatypes ((Token!244 0))(
  ( (Token!245 (value!9739 TokenValue!230) (rule!715 Rule!280) (size!1011 Int) (originalCharacters!293 List!1118)) )
))
(declare-datatypes ((List!1119 0))(
  ( (Nil!1113) (Cons!1113 (h!6510 Token!244) (t!17386 List!1119)) )
))
(declare-fun lt!9598 () List!1119)

(declare-fun lt!9600 () List!1119)

(declare-fun tail!75 (List!1119) List!1119)

(assert (=> b!53387 (= (tail!75 lt!9598) lt!9600)))

(declare-datatypes ((Unit!629 0))(
  ( (Unit!630) )
))
(declare-fun lt!9601 () Unit!629)

(declare-fun lt!9596 () List!1119)

(declare-fun lemmaDropTail!43 (List!1119 Int) Unit!629)

(assert (=> b!53387 (= lt!9601 (lemmaDropTail!43 lt!9596 from!821))))

(declare-fun head!391 (List!1119) Token!244)

(declare-fun apply!120 (List!1119 Int) Token!244)

(assert (=> b!53387 (= (head!391 lt!9600) (apply!120 lt!9596 (+ 1 from!821)))))

(declare-fun drop!51 (List!1119 Int) List!1119)

(assert (=> b!53387 (= lt!9600 (drop!51 lt!9596 (+ 1 from!821)))))

(declare-fun lt!9597 () Unit!629)

(declare-fun lemmaDropApply!51 (List!1119 Int) Unit!629)

(assert (=> b!53387 (= lt!9597 (lemmaDropApply!51 lt!9596 (+ 1 from!821)))))

(assert (=> b!53387 (= (head!391 lt!9598) (apply!120 lt!9596 from!821))))

(assert (=> b!53387 (= lt!9598 (drop!51 lt!9596 from!821))))

(declare-fun lt!9599 () Unit!629)

(assert (=> b!53387 (= lt!9599 (lemmaDropApply!51 lt!9596 from!821))))

(declare-datatypes ((IArray!571 0))(
  ( (IArray!572 (innerList!343 List!1119)) )
))
(declare-datatypes ((Conc!285 0))(
  ( (Node!285 (left!846 Conc!285) (right!1176 Conc!285) (csize!800 Int) (cheight!496 Int)) (Leaf!541 (xs!2864 IArray!571) (csize!801 Int)) (Empty!285) )
))
(declare-datatypes ((BalanceConc!574 0))(
  ( (BalanceConc!575 (c!17023 Conc!285)) )
))
(declare-fun v!6227 () BalanceConc!574)

(declare-fun list!288 (BalanceConc!574) List!1119)

(assert (=> b!53387 (= lt!9596 (list!288 v!6227))))

(declare-fun b!53388 () Bool)

(declare-fun e!31536 () Bool)

(declare-fun tp!34420 () Bool)

(declare-fun inv!1469 (Conc!285) Bool)

(assert (=> b!53388 (= e!31536 (and (inv!1469 (c!17023 v!6227)) tp!34420))))

(declare-fun b!53389 () Bool)

(declare-fun res!34409 () Bool)

(assert (=> b!53389 (=> (not res!34409) (not e!31537))))

(declare-datatypes ((List!1120 0))(
  ( (Nil!1114) (Cons!1114 (h!6511 Rule!280) (t!17387 List!1120)) )
))
(declare-fun rules!1069 () List!1120)

(declare-fun isEmpty!226 (List!1120) Bool)

(assert (=> b!53389 (= res!34409 (not (isEmpty!226 rules!1069)))))

(declare-fun res!34408 () Bool)

(declare-fun e!31531 () Bool)

(assert (=> start!4116 (=> (not res!34408) (not e!31531))))

(declare-datatypes ((LexerInterface!132 0))(
  ( (LexerInterfaceExt!129 (__x!1556 Int)) (Lexer!130) )
))
(declare-fun thiss!11059 () LexerInterface!132)

(assert (=> start!4116 (= res!34408 (and (is-Lexer!130 thiss!11059) (>= from!821 0)))))

(assert (=> start!4116 e!31531))

(assert (=> start!4116 true))

(declare-fun inv!1470 (BalanceConc!574) Bool)

(assert (=> start!4116 (and (inv!1470 v!6227) e!31536)))

(assert (=> start!4116 e!31532))

(declare-fun b!53390 () Bool)

(assert (=> b!53390 (= e!31531 e!31537)))

(declare-fun res!34404 () Bool)

(assert (=> b!53390 (=> (not res!34404) (not e!31537))))

(declare-fun lt!9595 () Int)

(assert (=> b!53390 (= res!34404 (<= from!821 lt!9595))))

(declare-fun size!1012 (BalanceConc!574) Int)

(assert (=> b!53390 (= lt!9595 (size!1012 v!6227))))

(declare-fun b!53391 () Bool)

(declare-fun res!34405 () Bool)

(assert (=> b!53391 (=> (not res!34405) (not e!31537))))

(assert (=> b!53391 (= res!34405 (< from!821 (- lt!9595 1)))))

(declare-fun b!53392 () Bool)

(declare-fun size!1013 (List!1119) Int)

(assert (=> b!53392 (= e!31534 (< (+ 1 from!821) (size!1013 lt!9596)))))

(declare-fun b!53393 () Bool)

(declare-fun res!34403 () Bool)

(assert (=> b!53393 (=> (not res!34403) (not e!31537))))

(declare-fun rulesProduceEachTokenIndividually!70 (LexerInterface!132 List!1120 BalanceConc!574) Bool)

(assert (=> b!53393 (= res!34403 (rulesProduceEachTokenIndividually!70 thiss!11059 rules!1069 v!6227))))

(declare-fun tp!34418 () Bool)

(declare-fun b!53394 () Bool)

(declare-fun inv!1466 (String!1544) Bool)

(declare-fun inv!1471 (TokenValueInjection!284) Bool)

(assert (=> b!53394 (= e!31535 (and tp!34418 (inv!1466 (tag!418 (h!6511 rules!1069))) (inv!1471 (transformation!240 (h!6511 rules!1069))) e!31533))))

(declare-fun b!53395 () Bool)

(declare-fun res!34407 () Bool)

(assert (=> b!53395 (=> (not res!34407) (not e!31537))))

(declare-fun rulesInvariant!126 (LexerInterface!132 List!1120) Bool)

(assert (=> b!53395 (= res!34407 (rulesInvariant!126 thiss!11059 rules!1069))))

(assert (= (and start!4116 res!34408) b!53390))

(assert (= (and b!53390 res!34404) b!53389))

(assert (= (and b!53389 res!34409) b!53395))

(assert (= (and b!53395 res!34407) b!53393))

(assert (= (and b!53393 res!34403) b!53391))

(assert (= (and b!53391 res!34405) b!53387))

(assert (= (and b!53387 res!34406) b!53392))

(assert (= start!4116 b!53388))

(assert (= b!53394 b!53386))

(assert (= b!53385 b!53394))

(assert (= (and start!4116 (is-Cons!1114 rules!1069)) b!53385))

(declare-fun m!27294 () Bool)

(assert (=> start!4116 m!27294))

(declare-fun m!27296 () Bool)

(assert (=> b!53394 m!27296))

(declare-fun m!27298 () Bool)

(assert (=> b!53394 m!27298))

(declare-fun m!27300 () Bool)

(assert (=> b!53392 m!27300))

(declare-fun m!27302 () Bool)

(assert (=> b!53390 m!27302))

(declare-fun m!27304 () Bool)

(assert (=> b!53395 m!27304))

(declare-fun m!27306 () Bool)

(assert (=> b!53388 m!27306))

(declare-fun m!27308 () Bool)

(assert (=> b!53387 m!27308))

(declare-fun m!27310 () Bool)

(assert (=> b!53387 m!27310))

(declare-fun m!27312 () Bool)

(assert (=> b!53387 m!27312))

(declare-fun m!27314 () Bool)

(assert (=> b!53387 m!27314))

(declare-fun m!27316 () Bool)

(assert (=> b!53387 m!27316))

(declare-fun m!27318 () Bool)

(assert (=> b!53387 m!27318))

(declare-fun m!27320 () Bool)

(assert (=> b!53387 m!27320))

(declare-fun m!27322 () Bool)

(assert (=> b!53387 m!27322))

(declare-fun m!27324 () Bool)

(assert (=> b!53387 m!27324))

(declare-fun m!27326 () Bool)

(assert (=> b!53387 m!27326))

(declare-fun m!27328 () Bool)

(assert (=> b!53387 m!27328))

(declare-fun m!27330 () Bool)

(assert (=> b!53389 m!27330))

(declare-fun m!27332 () Bool)

(assert (=> b!53393 m!27332))

(push 1)

(assert (not b_next!1731))

(assert (not start!4116))

(assert (not b!53392))

(assert b_and!1781)

(assert (not b!53390))

(assert (not b_next!1729))

(assert (not b!53388))

(assert (not b!53393))

(assert b_and!1779)

(assert (not b!53389))

(assert (not b!53385))

(assert (not b!53394))

(assert (not b!53387))

(assert (not b!53395))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1781)

(assert b_and!1779)

(assert (not b_next!1729))

(assert (not b_next!1731))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6632 () Bool)

(declare-fun lt!9625 () Int)

(assert (=> d!6632 (= lt!9625 (size!1013 (list!288 v!6227)))))

(declare-fun size!1017 (Conc!285) Int)

(assert (=> d!6632 (= lt!9625 (size!1017 (c!17023 v!6227)))))

(assert (=> d!6632 (= (size!1012 v!6227) lt!9625)))

(declare-fun bs!6723 () Bool)

(assert (= bs!6723 d!6632))

(assert (=> bs!6723 m!27308))

(assert (=> bs!6723 m!27308))

(declare-fun m!27374 () Bool)

(assert (=> bs!6723 m!27374))

(declare-fun m!27376 () Bool)

(assert (=> bs!6723 m!27376))

(assert (=> b!53390 d!6632))

(declare-fun d!6636 () Bool)

(declare-fun res!34437 () Bool)

(declare-fun e!31565 () Bool)

(assert (=> d!6636 (=> (not res!34437) (not e!31565))))

(declare-fun rulesValid!35 (LexerInterface!132 List!1120) Bool)

(assert (=> d!6636 (= res!34437 (rulesValid!35 thiss!11059 rules!1069))))

(assert (=> d!6636 (= (rulesInvariant!126 thiss!11059 rules!1069) e!31565)))

(declare-fun b!53431 () Bool)

(declare-datatypes ((List!1125 0))(
  ( (Nil!1119) (Cons!1119 (h!6516 String!1544) (t!17398 List!1125)) )
))
(declare-fun noDuplicateTag!35 (LexerInterface!132 List!1120 List!1125) Bool)

(assert (=> b!53431 (= e!31565 (noDuplicateTag!35 thiss!11059 rules!1069 Nil!1119))))

(assert (= (and d!6636 res!34437) b!53431))

(declare-fun m!27378 () Bool)

(assert (=> d!6636 m!27378))

(declare-fun m!27380 () Bool)

(assert (=> b!53431 m!27380))

(assert (=> b!53395 d!6636))

(declare-fun d!6638 () Bool)

(assert (=> d!6638 (= (inv!1466 (tag!418 (h!6511 rules!1069))) (= (mod (str.len (value!9738 (tag!418 (h!6511 rules!1069)))) 2) 0))))

(assert (=> b!53394 d!6638))

(declare-fun d!6640 () Bool)

(declare-fun res!34440 () Bool)

(declare-fun e!31568 () Bool)

(assert (=> d!6640 (=> (not res!34440) (not e!31568))))

(declare-fun semiInverseModEq!26 (Int Int) Bool)

(assert (=> d!6640 (= res!34440 (semiInverseModEq!26 (toChars!578 (transformation!240 (h!6511 rules!1069))) (toValue!719 (transformation!240 (h!6511 rules!1069)))))))

(assert (=> d!6640 (= (inv!1471 (transformation!240 (h!6511 rules!1069))) e!31568)))

(declare-fun b!53434 () Bool)

(declare-fun equivClasses!22 (Int Int) Bool)

(assert (=> b!53434 (= e!31568 (equivClasses!22 (toChars!578 (transformation!240 (h!6511 rules!1069))) (toValue!719 (transformation!240 (h!6511 rules!1069)))))))

(assert (= (and d!6640 res!34440) b!53434))

(declare-fun m!27382 () Bool)

(assert (=> d!6640 m!27382))

(declare-fun m!27384 () Bool)

(assert (=> b!53434 m!27384))

(assert (=> b!53394 d!6640))

(declare-fun d!6642 () Bool)

(assert (=> d!6642 (= (isEmpty!226 rules!1069) (is-Nil!1114 rules!1069))))

(assert (=> b!53389 d!6642))

(declare-fun d!6644 () Bool)

(assert (=> d!6644 (= (head!391 lt!9598) (h!6510 lt!9598))))

(assert (=> b!53387 d!6644))

(declare-fun d!6646 () Bool)

(assert (=> d!6646 (= (tail!75 (drop!51 lt!9596 from!821)) (drop!51 lt!9596 (+ from!821 1)))))

(declare-fun lt!9628 () Unit!629)

(declare-fun choose!1194 (List!1119 Int) Unit!629)

(assert (=> d!6646 (= lt!9628 (choose!1194 lt!9596 from!821))))

(declare-fun e!31571 () Bool)

(assert (=> d!6646 e!31571))

(declare-fun res!34443 () Bool)

(assert (=> d!6646 (=> (not res!34443) (not e!31571))))

(assert (=> d!6646 (= res!34443 (>= from!821 0))))

(assert (=> d!6646 (= (lemmaDropTail!43 lt!9596 from!821) lt!9628)))

(declare-fun b!53437 () Bool)

(assert (=> b!53437 (= e!31571 (< from!821 (size!1013 lt!9596)))))

(assert (= (and d!6646 res!34443) b!53437))

(assert (=> d!6646 m!27324))

(assert (=> d!6646 m!27324))

(declare-fun m!27386 () Bool)

(assert (=> d!6646 m!27386))

(declare-fun m!27388 () Bool)

(assert (=> d!6646 m!27388))

(declare-fun m!27390 () Bool)

(assert (=> d!6646 m!27390))

(assert (=> b!53437 m!27300))

(assert (=> b!53387 d!6646))

(declare-fun d!6648 () Bool)

(declare-fun lt!9631 () Token!244)

(declare-fun contains!134 (List!1119 Token!244) Bool)

(assert (=> d!6648 (contains!134 lt!9596 lt!9631)))

(declare-fun e!31576 () Token!244)

(assert (=> d!6648 (= lt!9631 e!31576)))

(declare-fun c!17029 () Bool)

(assert (=> d!6648 (= c!17029 (= from!821 0))))

(declare-fun e!31577 () Bool)

(assert (=> d!6648 e!31577))

(declare-fun res!34446 () Bool)

(assert (=> d!6648 (=> (not res!34446) (not e!31577))))

(assert (=> d!6648 (= res!34446 (<= 0 from!821))))

(assert (=> d!6648 (= (apply!120 lt!9596 from!821) lt!9631)))

(declare-fun b!53444 () Bool)

(assert (=> b!53444 (= e!31577 (< from!821 (size!1013 lt!9596)))))

(declare-fun b!53445 () Bool)

(assert (=> b!53445 (= e!31576 (head!391 lt!9596))))

(declare-fun b!53446 () Bool)

(assert (=> b!53446 (= e!31576 (apply!120 (tail!75 lt!9596) (- from!821 1)))))

(assert (= (and d!6648 res!34446) b!53444))

(assert (= (and d!6648 c!17029) b!53445))

(assert (= (and d!6648 (not c!17029)) b!53446))

(declare-fun m!27392 () Bool)

(assert (=> d!6648 m!27392))

(assert (=> b!53444 m!27300))

(declare-fun m!27394 () Bool)

(assert (=> b!53445 m!27394))

(declare-fun m!27396 () Bool)

(assert (=> b!53446 m!27396))

(assert (=> b!53446 m!27396))

(declare-fun m!27398 () Bool)

(assert (=> b!53446 m!27398))

(assert (=> b!53387 d!6648))

(declare-fun d!6650 () Bool)

(assert (=> d!6650 (= (head!391 (drop!51 lt!9596 from!821)) (apply!120 lt!9596 from!821))))

(declare-fun lt!9634 () Unit!629)

(declare-fun choose!1195 (List!1119 Int) Unit!629)

(assert (=> d!6650 (= lt!9634 (choose!1195 lt!9596 from!821))))

(declare-fun e!31580 () Bool)

(assert (=> d!6650 e!31580))

(declare-fun res!34449 () Bool)

(assert (=> d!6650 (=> (not res!34449) (not e!31580))))

(assert (=> d!6650 (= res!34449 (>= from!821 0))))

(assert (=> d!6650 (= (lemmaDropApply!51 lt!9596 from!821) lt!9634)))

(declare-fun b!53449 () Bool)

(assert (=> b!53449 (= e!31580 (< from!821 (size!1013 lt!9596)))))

(assert (= (and d!6650 res!34449) b!53449))

(assert (=> d!6650 m!27324))

(assert (=> d!6650 m!27324))

(declare-fun m!27400 () Bool)

(assert (=> d!6650 m!27400))

(assert (=> d!6650 m!27326))

(declare-fun m!27402 () Bool)

(assert (=> d!6650 m!27402))

(assert (=> b!53449 m!27300))

(assert (=> b!53387 d!6650))

(declare-fun d!6652 () Bool)

(assert (=> d!6652 (= (head!391 lt!9600) (h!6510 lt!9600))))

(assert (=> b!53387 d!6652))

(declare-fun d!6654 () Bool)

(assert (=> d!6654 (= (tail!75 lt!9598) (t!17386 lt!9598))))

(assert (=> b!53387 d!6654))

(declare-fun d!6656 () Bool)

(declare-fun lt!9635 () Token!244)

(assert (=> d!6656 (contains!134 lt!9596 lt!9635)))

(declare-fun e!31581 () Token!244)

(assert (=> d!6656 (= lt!9635 e!31581)))

(declare-fun c!17030 () Bool)

(assert (=> d!6656 (= c!17030 (= (+ 1 from!821) 0))))

(declare-fun e!31582 () Bool)

(assert (=> d!6656 e!31582))

(declare-fun res!34450 () Bool)

(assert (=> d!6656 (=> (not res!34450) (not e!31582))))

(assert (=> d!6656 (= res!34450 (<= 0 (+ 1 from!821)))))

(assert (=> d!6656 (= (apply!120 lt!9596 (+ 1 from!821)) lt!9635)))

(declare-fun b!53450 () Bool)

(assert (=> b!53450 (= e!31582 (< (+ 1 from!821) (size!1013 lt!9596)))))

(declare-fun b!53451 () Bool)

(assert (=> b!53451 (= e!31581 (head!391 lt!9596))))

(declare-fun b!53452 () Bool)

(assert (=> b!53452 (= e!31581 (apply!120 (tail!75 lt!9596) (- (+ 1 from!821) 1)))))

(assert (= (and d!6656 res!34450) b!53450))

(assert (= (and d!6656 c!17030) b!53451))

(assert (= (and d!6656 (not c!17030)) b!53452))

(declare-fun m!27404 () Bool)

(assert (=> d!6656 m!27404))

(assert (=> b!53450 m!27300))

(assert (=> b!53451 m!27394))

(assert (=> b!53452 m!27396))

(assert (=> b!53452 m!27396))

(declare-fun m!27406 () Bool)

(assert (=> b!53452 m!27406))

(assert (=> b!53387 d!6656))

(declare-fun d!6658 () Bool)

(declare-fun list!290 (Conc!285) List!1119)

(assert (=> d!6658 (= (list!288 v!6227) (list!290 (c!17023 v!6227)))))

(declare-fun bs!6724 () Bool)

(assert (= bs!6724 d!6658))

(declare-fun m!27408 () Bool)

(assert (=> bs!6724 m!27408))

(assert (=> b!53387 d!6658))

(declare-fun b!53471 () Bool)

(declare-fun e!31595 () Int)

(declare-fun call!3393 () Int)

(assert (=> b!53471 (= e!31595 call!3393)))

(declare-fun d!6660 () Bool)

(declare-fun e!31596 () Bool)

(assert (=> d!6660 e!31596))

(declare-fun res!34453 () Bool)

(assert (=> d!6660 (=> (not res!34453) (not e!31596))))

(declare-fun lt!9638 () List!1119)

(declare-fun content!35 (List!1119) (Set Token!244))

(assert (=> d!6660 (= res!34453 (set.subset (content!35 lt!9638) (content!35 lt!9596)))))

(declare-fun e!31594 () List!1119)

(assert (=> d!6660 (= lt!9638 e!31594)))

(declare-fun c!17039 () Bool)

(assert (=> d!6660 (= c!17039 (is-Nil!1113 lt!9596))))

(assert (=> d!6660 (= (drop!51 lt!9596 from!821) lt!9638)))

(declare-fun b!53472 () Bool)

(assert (=> b!53472 (= e!31594 Nil!1113)))

(declare-fun b!53473 () Bool)

(declare-fun e!31597 () Int)

(assert (=> b!53473 (= e!31597 (- call!3393 from!821))))

(declare-fun b!53474 () Bool)

(declare-fun e!31593 () List!1119)

(assert (=> b!53474 (= e!31593 lt!9596)))

(declare-fun bm!3388 () Bool)

(assert (=> bm!3388 (= call!3393 (size!1013 lt!9596))))

(declare-fun b!53475 () Bool)

(assert (=> b!53475 (= e!31595 e!31597)))

(declare-fun c!17041 () Bool)

(assert (=> b!53475 (= c!17041 (>= from!821 call!3393))))

(declare-fun b!53476 () Bool)

(assert (=> b!53476 (= e!31594 e!31593)))

(declare-fun c!17040 () Bool)

(assert (=> b!53476 (= c!17040 (<= from!821 0))))

(declare-fun b!53477 () Bool)

(assert (=> b!53477 (= e!31596 (= (size!1013 lt!9638) e!31595))))

(declare-fun c!17042 () Bool)

(assert (=> b!53477 (= c!17042 (<= from!821 0))))

(declare-fun b!53478 () Bool)

(assert (=> b!53478 (= e!31597 0)))

(declare-fun b!53479 () Bool)

(assert (=> b!53479 (= e!31593 (drop!51 (t!17386 lt!9596) (- from!821 1)))))

(assert (= (and d!6660 c!17039) b!53472))

(assert (= (and d!6660 (not c!17039)) b!53476))

(assert (= (and b!53476 c!17040) b!53474))

(assert (= (and b!53476 (not c!17040)) b!53479))

(assert (= (and d!6660 res!34453) b!53477))

(assert (= (and b!53477 c!17042) b!53471))

(assert (= (and b!53477 (not c!17042)) b!53475))

(assert (= (and b!53475 c!17041) b!53478))

(assert (= (and b!53475 (not c!17041)) b!53473))

(assert (= (or b!53471 b!53475 b!53473) bm!3388))

(declare-fun m!27410 () Bool)

(assert (=> d!6660 m!27410))

(declare-fun m!27412 () Bool)

(assert (=> d!6660 m!27412))

(assert (=> bm!3388 m!27300))

(declare-fun m!27414 () Bool)

(assert (=> b!53477 m!27414))

(declare-fun m!27416 () Bool)

(assert (=> b!53479 m!27416))

(assert (=> b!53387 d!6660))

(declare-fun b!53480 () Bool)

(declare-fun e!31600 () Int)

(declare-fun call!3394 () Int)

(assert (=> b!53480 (= e!31600 call!3394)))

(declare-fun d!6662 () Bool)

(declare-fun e!31601 () Bool)

(assert (=> d!6662 e!31601))

(declare-fun res!34454 () Bool)

(assert (=> d!6662 (=> (not res!34454) (not e!31601))))

(declare-fun lt!9639 () List!1119)

(assert (=> d!6662 (= res!34454 (set.subset (content!35 lt!9639) (content!35 lt!9596)))))

(declare-fun e!31599 () List!1119)

(assert (=> d!6662 (= lt!9639 e!31599)))

(declare-fun c!17043 () Bool)

(assert (=> d!6662 (= c!17043 (is-Nil!1113 lt!9596))))

(assert (=> d!6662 (= (drop!51 lt!9596 (+ 1 from!821)) lt!9639)))

(declare-fun b!53481 () Bool)

(assert (=> b!53481 (= e!31599 Nil!1113)))

(declare-fun b!53482 () Bool)

(declare-fun e!31602 () Int)

(assert (=> b!53482 (= e!31602 (- call!3394 (+ 1 from!821)))))

(declare-fun b!53483 () Bool)

(declare-fun e!31598 () List!1119)

(assert (=> b!53483 (= e!31598 lt!9596)))

(declare-fun bm!3389 () Bool)

(assert (=> bm!3389 (= call!3394 (size!1013 lt!9596))))

(declare-fun b!53484 () Bool)

(assert (=> b!53484 (= e!31600 e!31602)))

(declare-fun c!17045 () Bool)

(assert (=> b!53484 (= c!17045 (>= (+ 1 from!821) call!3394))))

(declare-fun b!53485 () Bool)

(assert (=> b!53485 (= e!31599 e!31598)))

(declare-fun c!17044 () Bool)

(assert (=> b!53485 (= c!17044 (<= (+ 1 from!821) 0))))

(declare-fun b!53486 () Bool)

(assert (=> b!53486 (= e!31601 (= (size!1013 lt!9639) e!31600))))

(declare-fun c!17046 () Bool)

(assert (=> b!53486 (= c!17046 (<= (+ 1 from!821) 0))))

(declare-fun b!53487 () Bool)

(assert (=> b!53487 (= e!31602 0)))

(declare-fun b!53488 () Bool)

(assert (=> b!53488 (= e!31598 (drop!51 (t!17386 lt!9596) (- (+ 1 from!821) 1)))))

(assert (= (and d!6662 c!17043) b!53481))

(assert (= (and d!6662 (not c!17043)) b!53485))

(assert (= (and b!53485 c!17044) b!53483))

(assert (= (and b!53485 (not c!17044)) b!53488))

(assert (= (and d!6662 res!34454) b!53486))

(assert (= (and b!53486 c!17046) b!53480))

(assert (= (and b!53486 (not c!17046)) b!53484))

(assert (= (and b!53484 c!17045) b!53487))

(assert (= (and b!53484 (not c!17045)) b!53482))

(assert (= (or b!53480 b!53484 b!53482) bm!3389))

(declare-fun m!27418 () Bool)

(assert (=> d!6662 m!27418))

(assert (=> d!6662 m!27412))

(assert (=> bm!3389 m!27300))

(declare-fun m!27420 () Bool)

(assert (=> b!53486 m!27420))

(declare-fun m!27422 () Bool)

(assert (=> b!53488 m!27422))

(assert (=> b!53387 d!6662))

(declare-fun d!6664 () Bool)

(assert (=> d!6664 (= (head!391 (drop!51 lt!9596 (+ 1 from!821))) (apply!120 lt!9596 (+ 1 from!821)))))

(declare-fun lt!9640 () Unit!629)

(assert (=> d!6664 (= lt!9640 (choose!1195 lt!9596 (+ 1 from!821)))))

(declare-fun e!31603 () Bool)

(assert (=> d!6664 e!31603))

(declare-fun res!34455 () Bool)

(assert (=> d!6664 (=> (not res!34455) (not e!31603))))

(assert (=> d!6664 (= res!34455 (>= (+ 1 from!821) 0))))

(assert (=> d!6664 (= (lemmaDropApply!51 lt!9596 (+ 1 from!821)) lt!9640)))

(declare-fun b!53489 () Bool)

(assert (=> b!53489 (= e!31603 (< (+ 1 from!821) (size!1013 lt!9596)))))

(assert (= (and d!6664 res!34455) b!53489))

(assert (=> d!6664 m!27312))

(assert (=> d!6664 m!27312))

(declare-fun m!27424 () Bool)

(assert (=> d!6664 m!27424))

(assert (=> d!6664 m!27328))

(declare-fun m!27426 () Bool)

(assert (=> d!6664 m!27426))

(assert (=> b!53489 m!27300))

(assert (=> b!53387 d!6664))

(declare-fun d!6666 () Bool)

(declare-fun c!17049 () Bool)

(assert (=> d!6666 (= c!17049 (is-Node!285 (c!17023 v!6227)))))

(declare-fun e!31608 () Bool)

(assert (=> d!6666 (= (inv!1469 (c!17023 v!6227)) e!31608)))

(declare-fun b!53496 () Bool)

(declare-fun inv!1475 (Conc!285) Bool)

(assert (=> b!53496 (= e!31608 (inv!1475 (c!17023 v!6227)))))

(declare-fun b!53497 () Bool)

(declare-fun e!31609 () Bool)

(assert (=> b!53497 (= e!31608 e!31609)))

(declare-fun res!34458 () Bool)

(assert (=> b!53497 (= res!34458 (not (is-Leaf!541 (c!17023 v!6227))))))

(assert (=> b!53497 (=> res!34458 e!31609)))

(declare-fun b!53498 () Bool)

(declare-fun inv!1476 (Conc!285) Bool)

(assert (=> b!53498 (= e!31609 (inv!1476 (c!17023 v!6227)))))

(assert (= (and d!6666 c!17049) b!53496))

(assert (= (and d!6666 (not c!17049)) b!53497))

(assert (= (and b!53497 (not res!34458)) b!53498))

(declare-fun m!27428 () Bool)

(assert (=> b!53496 m!27428))

(declare-fun m!27430 () Bool)

(assert (=> b!53498 m!27430))

(assert (=> b!53388 d!6666))

(declare-fun d!6668 () Bool)

(declare-fun isBalanced!42 (Conc!285) Bool)

(assert (=> d!6668 (= (inv!1470 v!6227) (isBalanced!42 (c!17023 v!6227)))))

(declare-fun bs!6725 () Bool)

(assert (= bs!6725 d!6668))

(declare-fun m!27432 () Bool)

(assert (=> bs!6725 m!27432))

(assert (=> start!4116 d!6668))

(declare-fun b!53512 () Bool)

(declare-fun e!31621 () Bool)

(assert (=> b!53512 (= e!31621 true)))

(declare-fun b!53511 () Bool)

(declare-fun e!31620 () Bool)

(assert (=> b!53511 (= e!31620 e!31621)))

(declare-fun b!53510 () Bool)

(declare-fun e!31619 () Bool)

(assert (=> b!53510 (= e!31619 e!31620)))

(declare-fun d!6670 () Bool)

(assert (=> d!6670 e!31619))

(assert (= b!53511 b!53512))

(assert (= b!53510 b!53511))

(assert (= (and d!6670 (is-Cons!1114 rules!1069)) b!53510))

(declare-fun order!349 () Int)

(declare-fun lambda!1094 () Int)

(declare-fun order!351 () Int)

(declare-fun dynLambda!201 (Int Int) Int)

(declare-fun dynLambda!202 (Int Int) Int)

(assert (=> b!53512 (< (dynLambda!201 order!349 (toValue!719 (transformation!240 (h!6511 rules!1069)))) (dynLambda!202 order!351 lambda!1094))))

(declare-fun order!353 () Int)

(declare-fun dynLambda!203 (Int Int) Int)

(assert (=> b!53512 (< (dynLambda!203 order!353 (toChars!578 (transformation!240 (h!6511 rules!1069)))) (dynLambda!202 order!351 lambda!1094))))

(assert (=> d!6670 true))

(declare-fun e!31612 () Bool)

(assert (=> d!6670 e!31612))

(declare-fun res!34461 () Bool)

(assert (=> d!6670 (=> (not res!34461) (not e!31612))))

(declare-fun lt!9645 () Bool)

(declare-fun forall!135 (List!1119 Int) Bool)

(assert (=> d!6670 (= res!34461 (= lt!9645 (forall!135 (list!288 v!6227) lambda!1094)))))

(declare-fun forall!136 (BalanceConc!574 Int) Bool)

(assert (=> d!6670 (= lt!9645 (forall!136 v!6227 lambda!1094))))

(assert (=> d!6670 (not (isEmpty!226 rules!1069))))

(assert (=> d!6670 (= (rulesProduceEachTokenIndividually!70 thiss!11059 rules!1069 v!6227) lt!9645)))

(declare-fun b!53501 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!44 (LexerInterface!132 List!1120 List!1119) Bool)

(assert (=> b!53501 (= e!31612 (= lt!9645 (rulesProduceEachTokenIndividuallyList!44 thiss!11059 rules!1069 (list!288 v!6227))))))

(assert (= (and d!6670 res!34461) b!53501))

(assert (=> d!6670 m!27308))

(assert (=> d!6670 m!27308))

(declare-fun m!27434 () Bool)

(assert (=> d!6670 m!27434))

(declare-fun m!27436 () Bool)

(assert (=> d!6670 m!27436))

(assert (=> d!6670 m!27330))

(assert (=> b!53501 m!27308))

(assert (=> b!53501 m!27308))

(declare-fun m!27438 () Bool)

(assert (=> b!53501 m!27438))

(assert (=> b!53393 d!6670))

(declare-fun d!6672 () Bool)

(declare-fun lt!9648 () Int)

(assert (=> d!6672 (>= lt!9648 0)))

(declare-fun e!31624 () Int)

(assert (=> d!6672 (= lt!9648 e!31624)))

(declare-fun c!17052 () Bool)

(assert (=> d!6672 (= c!17052 (is-Nil!1113 lt!9596))))

(assert (=> d!6672 (= (size!1013 lt!9596) lt!9648)))

(declare-fun b!53519 () Bool)

(assert (=> b!53519 (= e!31624 0)))

(declare-fun b!53520 () Bool)

(assert (=> b!53520 (= e!31624 (+ 1 (size!1013 (t!17386 lt!9596))))))

(assert (= (and d!6672 c!17052) b!53519))

(assert (= (and d!6672 (not c!17052)) b!53520))

(declare-fun m!27440 () Bool)

(assert (=> b!53520 m!27440))

(assert (=> b!53392 d!6672))

(declare-fun b!53531 () Bool)

(declare-fun b_free!1737 () Bool)

(declare-fun b_next!1737 () Bool)

(assert (=> b!53531 (= b_free!1737 (not b_next!1737))))

(declare-fun tp!34447 () Bool)

(declare-fun b_and!1787 () Bool)

(assert (=> b!53531 (= tp!34447 b_and!1787)))

(declare-fun b_free!1739 () Bool)

(declare-fun b_next!1739 () Bool)

(assert (=> b!53531 (= b_free!1739 (not b_next!1739))))

(declare-fun tp!34445 () Bool)

(declare-fun b_and!1789 () Bool)

(assert (=> b!53531 (= tp!34445 b_and!1789)))

(declare-fun e!31636 () Bool)

(assert (=> b!53531 (= e!31636 (and tp!34447 tp!34445))))

(declare-fun b!53530 () Bool)

(declare-fun e!31635 () Bool)

(declare-fun tp!34446 () Bool)

(assert (=> b!53530 (= e!31635 (and tp!34446 (inv!1466 (tag!418 (h!6511 (t!17387 rules!1069)))) (inv!1471 (transformation!240 (h!6511 (t!17387 rules!1069)))) e!31636))))

(declare-fun b!53529 () Bool)

(declare-fun e!31633 () Bool)

(declare-fun tp!34448 () Bool)

(assert (=> b!53529 (= e!31633 (and e!31635 tp!34448))))

(assert (=> b!53385 (= tp!34419 e!31633)))

(assert (= b!53530 b!53531))

(assert (= b!53529 b!53530))

(assert (= (and b!53385 (is-Cons!1114 (t!17387 rules!1069))) b!53529))

(declare-fun m!27442 () Bool)

(assert (=> b!53530 m!27442))

(declare-fun m!27444 () Bool)

(assert (=> b!53530 m!27444))

(declare-fun e!31639 () Bool)

(assert (=> b!53394 (= tp!34418 e!31639)))

(declare-fun b!53544 () Bool)

(declare-fun tp!34462 () Bool)

(assert (=> b!53544 (= e!31639 tp!34462)))

(declare-fun b!53543 () Bool)

(declare-fun tp!34461 () Bool)

(declare-fun tp!34463 () Bool)

(assert (=> b!53543 (= e!31639 (and tp!34461 tp!34463))))

(declare-fun b!53542 () Bool)

(declare-fun tp_is_empty!551 () Bool)

(assert (=> b!53542 (= e!31639 tp_is_empty!551)))

(declare-fun b!53545 () Bool)

(declare-fun tp!34459 () Bool)

(declare-fun tp!34460 () Bool)

(assert (=> b!53545 (= e!31639 (and tp!34459 tp!34460))))

(assert (= (and b!53394 (is-ElementMatch!308 (regex!240 (h!6511 rules!1069)))) b!53542))

(assert (= (and b!53394 (is-Concat!539 (regex!240 (h!6511 rules!1069)))) b!53543))

(assert (= (and b!53394 (is-Star!308 (regex!240 (h!6511 rules!1069)))) b!53544))

(assert (= (and b!53394 (is-Union!308 (regex!240 (h!6511 rules!1069)))) b!53545))

(declare-fun tp!34472 () Bool)

(declare-fun e!31645 () Bool)

(declare-fun b!53554 () Bool)

(declare-fun tp!34471 () Bool)

(assert (=> b!53554 (= e!31645 (and (inv!1469 (left!846 (c!17023 v!6227))) tp!34472 (inv!1469 (right!1176 (c!17023 v!6227))) tp!34471))))

(declare-fun b!53556 () Bool)

(declare-fun e!31644 () Bool)

(declare-fun tp!34470 () Bool)

(assert (=> b!53556 (= e!31644 tp!34470)))

(declare-fun b!53555 () Bool)

(declare-fun inv!1477 (IArray!571) Bool)

(assert (=> b!53555 (= e!31645 (and (inv!1477 (xs!2864 (c!17023 v!6227))) e!31644))))

(assert (=> b!53388 (= tp!34420 (and (inv!1469 (c!17023 v!6227)) e!31645))))

(assert (= (and b!53388 (is-Node!285 (c!17023 v!6227))) b!53554))

(assert (= b!53555 b!53556))

(assert (= (and b!53388 (is-Leaf!541 (c!17023 v!6227))) b!53555))

(declare-fun m!27446 () Bool)

(assert (=> b!53554 m!27446))

(declare-fun m!27448 () Bool)

(assert (=> b!53554 m!27448))

(declare-fun m!27450 () Bool)

(assert (=> b!53555 m!27450))

(assert (=> b!53388 m!27306))

(push 1)

(assert (not d!6668))

(assert (not d!6670))

(assert (not b_next!1731))

(assert (not b_next!1737))

(assert (not b!53445))

(assert b_and!1781)

(assert (not b!53431))

(assert (not d!6640))

(assert (not b!53489))

(assert (not b!53501))

(assert (not b!53444))

(assert (not d!6664))

(assert (not b!53496))

(assert (not d!6646))

(assert (not b_next!1739))

(assert (not b!53530))

(assert (not b!53434))

(assert (not b!53437))

(assert (not b!53479))

(assert (not b!53488))

(assert (not b!53554))

(assert (not d!6662))

(assert (not d!6658))

(assert (not b!53452))

(assert (not b!53477))

(assert (not b!53498))

(assert (not b!53520))

(assert b_and!1787)

(assert (not b!53543))

(assert (not b!53451))

(assert (not b!53529))

(assert (not d!6650))

(assert (not b!53545))

(assert (not b!53544))

(assert (not b!53388))

(assert (not b!53555))

(assert (not b!53449))

(assert (not b!53486))

(assert (not d!6648))

(assert (not b!53510))

(assert (not d!6632))

(assert (not b!53556))

(assert (not bm!3389))

(assert b_and!1779)

(assert (not bm!3388))

(assert b_and!1789)

(assert (not d!6636))

(assert (not b!53450))

(assert (not d!6656))

(assert tp_is_empty!551)

(assert (not b_next!1729))

(assert (not d!6660))

(assert (not b!53446))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1739))

(assert (not b_next!1731))

(assert (not b_next!1737))

(assert b_and!1787)

(assert b_and!1781)

(assert (not b_next!1729))

(assert b_and!1779)

(assert b_and!1789)

(check-sat)

(pop 1)

