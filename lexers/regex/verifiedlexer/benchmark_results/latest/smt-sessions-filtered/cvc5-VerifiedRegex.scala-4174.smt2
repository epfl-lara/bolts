; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!225626 () Bool)

(assert start!225626)

(declare-fun b!2296413 () Bool)

(declare-fun b_free!69149 () Bool)

(declare-fun b_next!69853 () Bool)

(assert (=> b!2296413 (= b_free!69149 (not b_next!69853))))

(declare-fun tp!728327 () Bool)

(declare-fun b_and!182681 () Bool)

(assert (=> b!2296413 (= tp!728327 b_and!182681)))

(declare-fun b_free!69151 () Bool)

(declare-fun b_next!69855 () Bool)

(assert (=> b!2296413 (= b_free!69151 (not b_next!69855))))

(declare-fun tp!728328 () Bool)

(declare-fun b_and!182683 () Bool)

(assert (=> b!2296413 (= tp!728328 b_and!182683)))

(declare-fun b!2296431 () Bool)

(declare-fun b_free!69153 () Bool)

(declare-fun b_next!69857 () Bool)

(assert (=> b!2296431 (= b_free!69153 (not b_next!69857))))

(declare-fun tp!728321 () Bool)

(declare-fun b_and!182685 () Bool)

(assert (=> b!2296431 (= tp!728321 b_and!182685)))

(declare-fun b_free!69155 () Bool)

(declare-fun b_next!69859 () Bool)

(assert (=> b!2296431 (= b_free!69155 (not b_next!69859))))

(declare-fun tp!728319 () Bool)

(declare-fun b_and!182687 () Bool)

(assert (=> b!2296431 (= tp!728319 b_and!182687)))

(declare-fun b!2296430 () Bool)

(declare-fun b_free!69157 () Bool)

(declare-fun b_next!69861 () Bool)

(assert (=> b!2296430 (= b_free!69157 (not b_next!69861))))

(declare-fun tp!728325 () Bool)

(declare-fun b_and!182689 () Bool)

(assert (=> b!2296430 (= tp!728325 b_and!182689)))

(declare-fun b_free!69159 () Bool)

(declare-fun b_next!69863 () Bool)

(assert (=> b!2296430 (= b_free!69159 (not b_next!69863))))

(declare-fun tp!728329 () Bool)

(declare-fun b_and!182691 () Bool)

(assert (=> b!2296430 (= tp!728329 b_and!182691)))

(declare-fun b!2296417 () Bool)

(declare-fun b_free!69161 () Bool)

(declare-fun b_next!69865 () Bool)

(assert (=> b!2296417 (= b_free!69161 (not b_next!69865))))

(declare-fun tp!728334 () Bool)

(declare-fun b_and!182693 () Bool)

(assert (=> b!2296417 (= tp!728334 b_and!182693)))

(declare-fun b_free!69163 () Bool)

(declare-fun b_next!69867 () Bool)

(assert (=> b!2296417 (= b_free!69163 (not b_next!69867))))

(declare-fun tp!728330 () Bool)

(declare-fun b_and!182695 () Bool)

(assert (=> b!2296417 (= tp!728330 b_and!182695)))

(declare-fun b!2296403 () Bool)

(declare-fun e!1471531 () Bool)

(declare-fun e!1471514 () Bool)

(assert (=> b!2296403 (= e!1471531 e!1471514)))

(declare-fun res!981800 () Bool)

(assert (=> b!2296403 (=> (not res!981800) (not e!1471514))))

(declare-datatypes ((List!27429 0))(
  ( (Nil!27335) (Cons!27335 (h!32736 (_ BitVec 16)) (t!205379 List!27429)) )
))
(declare-datatypes ((TokenValue!4540 0))(
  ( (FloatLiteralValue!9080 (text!32225 List!27429)) (TokenValueExt!4539 (__x!18140 Int)) (Broken!22700 (value!138568 List!27429)) (Object!4633) (End!4540) (Def!4540) (Underscore!4540) (Match!4540) (Else!4540) (Error!4540) (Case!4540) (If!4540) (Extends!4540) (Abstract!4540) (Class!4540) (Val!4540) (DelimiterValue!9080 (del!4600 List!27429)) (KeywordValue!4546 (value!138569 List!27429)) (CommentValue!9080 (value!138570 List!27429)) (WhitespaceValue!9080 (value!138571 List!27429)) (IndentationValue!4540 (value!138572 List!27429)) (String!29805) (Int32!4540) (Broken!22701 (value!138573 List!27429)) (Boolean!4541) (Unit!40226) (OperatorValue!4543 (op!4600 List!27429)) (IdentifierValue!9080 (value!138574 List!27429)) (IdentifierValue!9081 (value!138575 List!27429)) (WhitespaceValue!9081 (value!138576 List!27429)) (True!9080) (False!9080) (Broken!22702 (value!138577 List!27429)) (Broken!22703 (value!138578 List!27429)) (True!9081) (RightBrace!4540) (RightBracket!4540) (Colon!4540) (Null!4540) (Comma!4540) (LeftBracket!4540) (False!9081) (LeftBrace!4540) (ImaginaryLiteralValue!4540 (text!32226 List!27429)) (StringLiteralValue!13620 (value!138579 List!27429)) (EOFValue!4540 (value!138580 List!27429)) (IdentValue!4540 (value!138581 List!27429)) (DelimiterValue!9081 (value!138582 List!27429)) (DedentValue!4540 (value!138583 List!27429)) (NewLineValue!4540 (value!138584 List!27429)) (IntegerValue!13620 (value!138585 (_ BitVec 32)) (text!32227 List!27429)) (IntegerValue!13621 (value!138586 Int) (text!32228 List!27429)) (Times!4540) (Or!4540) (Equal!4540) (Minus!4540) (Broken!22704 (value!138587 List!27429)) (And!4540) (Div!4540) (LessEqual!4540) (Mod!4540) (Concat!11266) (Not!4540) (Plus!4540) (SpaceValue!4540 (value!138588 List!27429)) (IntegerValue!13622 (value!138589 Int) (text!32229 List!27429)) (StringLiteralValue!13621 (text!32230 List!27429)) (FloatLiteralValue!9081 (text!32231 List!27429)) (BytesLiteralValue!4540 (value!138590 List!27429)) (CommentValue!9081 (value!138591 List!27429)) (StringLiteralValue!13622 (value!138592 List!27429)) (ErrorTokenValue!4540 (msg!4601 List!27429)) )
))
(declare-datatypes ((C!13598 0))(
  ( (C!13599 (val!7847 Int)) )
))
(declare-datatypes ((List!27430 0))(
  ( (Nil!27336) (Cons!27336 (h!32737 C!13598) (t!205380 List!27430)) )
))
(declare-datatypes ((IArray!17813 0))(
  ( (IArray!17814 (innerList!8964 List!27430)) )
))
(declare-datatypes ((Conc!8904 0))(
  ( (Node!8904 (left!20722 Conc!8904) (right!21052 Conc!8904) (csize!18038 Int) (cheight!9115 Int)) (Leaf!13079 (xs!11846 IArray!17813) (csize!18039 Int)) (Empty!8904) )
))
(declare-datatypes ((BalanceConc!17536 0))(
  ( (BalanceConc!17537 (c!364121 Conc!8904)) )
))
(declare-datatypes ((Regex!6726 0))(
  ( (ElementMatch!6726 (c!364122 C!13598)) (Concat!11267 (regOne!13964 Regex!6726) (regTwo!13964 Regex!6726)) (EmptyExpr!6726) (Star!6726 (reg!7055 Regex!6726)) (EmptyLang!6726) (Union!6726 (regOne!13965 Regex!6726) (regTwo!13965 Regex!6726)) )
))
(declare-datatypes ((String!29806 0))(
  ( (String!29807 (value!138593 String)) )
))
(declare-datatypes ((TokenValueInjection!8620 0))(
  ( (TokenValueInjection!8621 (toValue!6180 Int) (toChars!6039 Int)) )
))
(declare-datatypes ((Rule!8556 0))(
  ( (Rule!8557 (regex!4378 Regex!6726) (tag!4868 String!29806) (isSeparator!4378 Bool) (transformation!4378 TokenValueInjection!8620)) )
))
(declare-datatypes ((Token!8234 0))(
  ( (Token!8235 (value!138594 TokenValue!4540) (rule!6718 Rule!8556) (size!21539 Int) (originalCharacters!5148 List!27430)) )
))
(declare-datatypes ((List!27431 0))(
  ( (Nil!27337) (Cons!27337 (h!32738 Token!8234) (t!205381 List!27431)) )
))
(declare-datatypes ((IArray!17815 0))(
  ( (IArray!17816 (innerList!8965 List!27431)) )
))
(declare-datatypes ((Conc!8905 0))(
  ( (Node!8905 (left!20723 Conc!8905) (right!21053 Conc!8905) (csize!18040 Int) (cheight!9116 Int)) (Leaf!13080 (xs!11847 IArray!17815) (csize!18041 Int)) (Empty!8905) )
))
(declare-datatypes ((BalanceConc!17538 0))(
  ( (BalanceConc!17539 (c!364123 Conc!8905)) )
))
(declare-datatypes ((tuple2!27180 0))(
  ( (tuple2!27181 (_1!16100 BalanceConc!17538) (_2!16100 BalanceConc!17536)) )
))
(declare-fun lt!851992 () tuple2!27180)

(declare-fun tokens!456 () List!27431)

(declare-fun suffix!886 () List!27430)

(declare-datatypes ((tuple2!27182 0))(
  ( (tuple2!27183 (_1!16101 List!27431) (_2!16101 List!27430)) )
))
(declare-fun list!10734 (BalanceConc!17538) List!27431)

(declare-fun list!10735 (BalanceConc!17536) List!27430)

(assert (=> b!2296403 (= res!981800 (= (tuple2!27183 (list!10734 (_1!16100 lt!851992)) (list!10735 (_2!16100 lt!851992))) (tuple2!27183 tokens!456 suffix!886)))))

(declare-datatypes ((LexerInterface!3975 0))(
  ( (LexerInterfaceExt!3972 (__x!18141 Int)) (Lexer!3973) )
))
(declare-fun thiss!16613 () LexerInterface!3975)

(declare-fun input!1722 () List!27430)

(declare-datatypes ((List!27432 0))(
  ( (Nil!27338) (Cons!27338 (h!32739 Rule!8556) (t!205382 List!27432)) )
))
(declare-fun rules!1750 () List!27432)

(declare-fun lex!1814 (LexerInterface!3975 List!27432 BalanceConc!17536) tuple2!27180)

(declare-fun seqFromList!3082 (List!27430) BalanceConc!17536)

(assert (=> b!2296403 (= lt!851992 (lex!1814 thiss!16613 rules!1750 (seqFromList!3082 input!1722)))))

(declare-fun b!2296404 () Bool)

(declare-fun e!1471523 () Bool)

(declare-fun tp_is_empty!10673 () Bool)

(declare-fun tp!728331 () Bool)

(assert (=> b!2296404 (= e!1471523 (and tp_is_empty!10673 tp!728331))))

(declare-fun b!2296405 () Bool)

(declare-fun e!1471520 () Bool)

(declare-fun e!1471517 () Bool)

(assert (=> b!2296405 (= e!1471520 e!1471517)))

(declare-fun res!981811 () Bool)

(assert (=> b!2296405 (=> res!981811 e!1471517)))

(declare-fun lt!851998 () Int)

(declare-fun lt!851999 () Int)

(assert (=> b!2296405 (= res!981811 (> lt!851998 lt!851999))))

(declare-fun otherR!12 () Rule!8556)

(declare-fun getIndex!391 (List!27432 Rule!8556) Int)

(assert (=> b!2296405 (= lt!851999 (getIndex!391 rules!1750 otherR!12))))

(declare-fun r!2363 () Rule!8556)

(assert (=> b!2296405 (= lt!851998 (getIndex!391 rules!1750 r!2363))))

(declare-fun ruleValid!1468 (LexerInterface!3975 Rule!8556) Bool)

(assert (=> b!2296405 (ruleValid!1468 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!40227 0))(
  ( (Unit!40228) )
))
(declare-fun lt!851995 () Unit!40227)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!873 (LexerInterface!3975 Rule!8556 List!27432) Unit!40227)

(assert (=> b!2296405 (= lt!851995 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!873 thiss!16613 otherR!12 rules!1750))))

(declare-fun e!1471509 () Bool)

(declare-fun tp!728335 () Bool)

(declare-fun e!1471529 () Bool)

(declare-fun b!2296406 () Bool)

(declare-fun inv!21 (TokenValue!4540) Bool)

(assert (=> b!2296406 (= e!1471529 (and (inv!21 (value!138594 (h!32738 tokens!456))) e!1471509 tp!728335))))

(declare-fun b!2296407 () Bool)

(declare-fun e!1471525 () Bool)

(declare-datatypes ((tuple2!27184 0))(
  ( (tuple2!27185 (_1!16102 Token!8234) (_2!16102 List!27430)) )
))
(declare-datatypes ((Option!5370 0))(
  ( (None!5369) (Some!5369 (v!30457 tuple2!27184)) )
))
(declare-fun lt!851993 () Option!5370)

(assert (=> b!2296407 (= e!1471525 (= lt!851993 None!5369))))

(declare-fun isEmpty!15583 (Option!5370) Bool)

(assert (=> b!2296407 (isEmpty!15583 lt!851993)))

(declare-fun maxPrefixOneRule!1403 (LexerInterface!3975 Rule!8556 List!27430) Option!5370)

(assert (=> b!2296407 (= lt!851993 (maxPrefixOneRule!1403 thiss!16613 otherR!12 input!1722))))

(declare-fun lt!852000 () Unit!40227)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!414 (LexerInterface!3975 Rule!8556 List!27432 List!27430) Unit!40227)

(assert (=> b!2296407 (= lt!852000 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!414 thiss!16613 otherR!12 rules!1750 input!1722))))

(declare-fun e!1471527 () Bool)

(declare-fun b!2296408 () Bool)

(declare-fun e!1471512 () Bool)

(declare-fun tp!728318 () Bool)

(declare-fun inv!36952 (String!29806) Bool)

(declare-fun inv!36955 (TokenValueInjection!8620) Bool)

(assert (=> b!2296408 (= e!1471527 (and tp!728318 (inv!36952 (tag!4868 (h!32739 rules!1750))) (inv!36955 (transformation!4378 (h!32739 rules!1750))) e!1471512))))

(declare-fun b!2296409 () Bool)

(declare-fun e!1471533 () Bool)

(declare-fun otherP!12 () List!27430)

(declare-fun size!21540 (BalanceConc!17536) Int)

(declare-fun charsOf!2766 (Token!8234) BalanceConc!17536)

(declare-fun head!5013 (List!27431) Token!8234)

(declare-fun size!21541 (List!27430) Int)

(assert (=> b!2296409 (= e!1471533 (<= (size!21540 (charsOf!2766 (head!5013 tokens!456))) (size!21541 otherP!12)))))

(declare-fun e!1471530 () Bool)

(declare-fun tp!728333 () Bool)

(declare-fun e!1471506 () Bool)

(declare-fun b!2296410 () Bool)

(assert (=> b!2296410 (= e!1471506 (and tp!728333 (inv!36952 (tag!4868 r!2363)) (inv!36955 (transformation!4378 r!2363)) e!1471530))))

(declare-fun b!2296411 () Bool)

(declare-fun e!1471515 () Bool)

(assert (=> b!2296411 (= e!1471514 e!1471515)))

(declare-fun res!981801 () Bool)

(assert (=> b!2296411 (=> (not res!981801) (not e!1471515))))

(assert (=> b!2296411 (= res!981801 e!1471533)))

(declare-fun res!981806 () Bool)

(assert (=> b!2296411 (=> res!981806 e!1471533)))

(declare-fun lt!851997 () Bool)

(assert (=> b!2296411 (= res!981806 lt!851997)))

(declare-fun isEmpty!15584 (List!27431) Bool)

(assert (=> b!2296411 (= lt!851997 (isEmpty!15584 tokens!456))))

(declare-fun e!1471528 () Bool)

(assert (=> b!2296413 (= e!1471528 (and tp!728327 tp!728328))))

(declare-fun b!2296414 () Bool)

(declare-fun e!1471521 () Bool)

(declare-fun tp!728322 () Bool)

(assert (=> b!2296414 (= e!1471521 (and tp_is_empty!10673 tp!728322))))

(declare-fun b!2296415 () Bool)

(declare-fun res!981799 () Bool)

(assert (=> b!2296415 (=> (not res!981799) (not e!1471531))))

(declare-fun contains!4760 (List!27432 Rule!8556) Bool)

(assert (=> b!2296415 (= res!981799 (contains!4760 rules!1750 r!2363))))

(declare-fun b!2296416 () Bool)

(declare-fun e!1471524 () Bool)

(declare-fun matchR!2983 (Regex!6726 List!27430) Bool)

(assert (=> b!2296416 (= e!1471524 (not (matchR!2983 (regex!4378 r!2363) (list!10735 (charsOf!2766 (head!5013 tokens!456))))))))

(declare-fun e!1471507 () Bool)

(assert (=> b!2296417 (= e!1471507 (and tp!728334 tp!728330))))

(declare-fun b!2296418 () Bool)

(declare-fun res!981807 () Bool)

(assert (=> b!2296418 (=> (not res!981807) (not e!1471515))))

(declare-fun isPrefix!2368 (List!27430 List!27430) Bool)

(assert (=> b!2296418 (= res!981807 (isPrefix!2368 otherP!12 input!1722))))

(declare-fun b!2296419 () Bool)

(declare-fun res!981802 () Bool)

(assert (=> b!2296419 (=> (not res!981802) (not e!1471531))))

(assert (=> b!2296419 (= res!981802 (contains!4760 rules!1750 otherR!12))))

(declare-fun b!2296420 () Bool)

(declare-fun res!981805 () Bool)

(assert (=> b!2296420 (=> (not res!981805) (not e!1471531))))

(declare-fun rulesInvariant!3477 (LexerInterface!3975 List!27432) Bool)

(assert (=> b!2296420 (= res!981805 (rulesInvariant!3477 thiss!16613 rules!1750))))

(declare-fun b!2296421 () Bool)

(declare-fun e!1471508 () Bool)

(declare-fun tp!728326 () Bool)

(assert (=> b!2296421 (= e!1471508 (and e!1471527 tp!728326))))

(declare-fun b!2296422 () Bool)

(declare-fun res!981809 () Bool)

(assert (=> b!2296422 (=> (not res!981809) (not e!1471515))))

(assert (=> b!2296422 (= res!981809 (not (= r!2363 otherR!12)))))

(declare-fun b!2296423 () Bool)

(declare-fun res!981810 () Bool)

(assert (=> b!2296423 (=> (not res!981810) (not e!1471515))))

(declare-fun e!1471513 () Bool)

(assert (=> b!2296423 (= res!981810 e!1471513)))

(declare-fun res!981798 () Bool)

(assert (=> b!2296423 (=> res!981798 e!1471513)))

(assert (=> b!2296423 (= res!981798 lt!851997)))

(declare-fun tp!728320 () Bool)

(declare-fun e!1471526 () Bool)

(declare-fun b!2296424 () Bool)

(assert (=> b!2296424 (= e!1471526 (and tp!728320 (inv!36952 (tag!4868 otherR!12)) (inv!36955 (transformation!4378 otherR!12)) e!1471528))))

(declare-fun b!2296425 () Bool)

(declare-fun tp!728324 () Bool)

(assert (=> b!2296425 (= e!1471509 (and tp!728324 (inv!36952 (tag!4868 (rule!6718 (h!32738 tokens!456)))) (inv!36955 (transformation!4378 (rule!6718 (h!32738 tokens!456)))) e!1471507))))

(declare-fun e!1471519 () Bool)

(declare-fun b!2296426 () Bool)

(declare-fun tp!728323 () Bool)

(declare-fun inv!36956 (Token!8234) Bool)

(assert (=> b!2296426 (= e!1471519 (and (inv!36956 (h!32738 tokens!456)) e!1471529 tp!728323))))

(declare-fun res!981797 () Bool)

(assert (=> start!225626 (=> (not res!981797) (not e!1471531))))

(assert (=> start!225626 (= res!981797 (is-Lexer!3973 thiss!16613))))

(assert (=> start!225626 e!1471531))

(assert (=> start!225626 true))

(declare-fun e!1471518 () Bool)

(assert (=> start!225626 e!1471518))

(assert (=> start!225626 e!1471526))

(assert (=> start!225626 e!1471523))

(assert (=> start!225626 e!1471521))

(assert (=> start!225626 e!1471508))

(assert (=> start!225626 e!1471506))

(assert (=> start!225626 e!1471519))

(declare-fun b!2296412 () Bool)

(declare-fun e!1471532 () Unit!40227)

(declare-fun Unit!40229 () Unit!40227)

(assert (=> b!2296412 (= e!1471532 Unit!40229)))

(declare-fun b!2296427 () Bool)

(assert (=> b!2296427 (= e!1471513 (= (rule!6718 (head!5013 tokens!456)) r!2363))))

(declare-fun b!2296428 () Bool)

(assert (=> b!2296428 (= e!1471515 (not e!1471520))))

(declare-fun res!981796 () Bool)

(assert (=> b!2296428 (=> res!981796 e!1471520)))

(assert (=> b!2296428 (= res!981796 e!1471524)))

(declare-fun res!981803 () Bool)

(assert (=> b!2296428 (=> (not res!981803) (not e!1471524))))

(assert (=> b!2296428 (= res!981803 (not lt!851997))))

(assert (=> b!2296428 (ruleValid!1468 thiss!16613 r!2363)))

(declare-fun lt!851996 () Unit!40227)

(assert (=> b!2296428 (= lt!851996 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!873 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2296429 () Bool)

(assert (=> b!2296429 (= e!1471517 e!1471525)))

(declare-fun res!981808 () Bool)

(assert (=> b!2296429 (=> res!981808 e!1471525)))

(assert (=> b!2296429 (= res!981808 (not (is-Nil!27337 tokens!456)))))

(declare-fun lt!851994 () Unit!40227)

(assert (=> b!2296429 (= lt!851994 e!1471532)))

(declare-fun c!364120 () Bool)

(assert (=> b!2296429 (= c!364120 (= lt!851998 lt!851999))))

(assert (=> b!2296430 (= e!1471512 (and tp!728325 tp!728329))))

(assert (=> b!2296431 (= e!1471530 (and tp!728321 tp!728319))))

(declare-fun b!2296432 () Bool)

(declare-fun tp!728332 () Bool)

(assert (=> b!2296432 (= e!1471518 (and tp_is_empty!10673 tp!728332))))

(declare-fun b!2296433 () Bool)

(declare-fun res!981804 () Bool)

(assert (=> b!2296433 (=> (not res!981804) (not e!1471531))))

(declare-fun isEmpty!15585 (List!27432) Bool)

(assert (=> b!2296433 (= res!981804 (not (isEmpty!15585 rules!1750)))))

(declare-fun b!2296434 () Bool)

(declare-fun Unit!40230 () Unit!40227)

(assert (=> b!2296434 (= e!1471532 Unit!40230)))

(declare-fun lt!851991 () Unit!40227)

(declare-fun lemmaSameIndexThenSameElement!171 (List!27432 Rule!8556 Rule!8556) Unit!40227)

(assert (=> b!2296434 (= lt!851991 (lemmaSameIndexThenSameElement!171 rules!1750 r!2363 otherR!12))))

(assert (=> b!2296434 false))

(assert (= (and start!225626 res!981797) b!2296433))

(assert (= (and b!2296433 res!981804) b!2296420))

(assert (= (and b!2296420 res!981805) b!2296415))

(assert (= (and b!2296415 res!981799) b!2296419))

(assert (= (and b!2296419 res!981802) b!2296403))

(assert (= (and b!2296403 res!981800) b!2296411))

(assert (= (and b!2296411 (not res!981806)) b!2296409))

(assert (= (and b!2296411 res!981801) b!2296423))

(assert (= (and b!2296423 (not res!981798)) b!2296427))

(assert (= (and b!2296423 res!981810) b!2296418))

(assert (= (and b!2296418 res!981807) b!2296422))

(assert (= (and b!2296422 res!981809) b!2296428))

(assert (= (and b!2296428 res!981803) b!2296416))

(assert (= (and b!2296428 (not res!981796)) b!2296405))

(assert (= (and b!2296405 (not res!981811)) b!2296429))

(assert (= (and b!2296429 c!364120) b!2296434))

(assert (= (and b!2296429 (not c!364120)) b!2296412))

(assert (= (and b!2296429 (not res!981808)) b!2296407))

(assert (= (and start!225626 (is-Cons!27336 input!1722)) b!2296432))

(assert (= b!2296424 b!2296413))

(assert (= start!225626 b!2296424))

(assert (= (and start!225626 (is-Cons!27336 suffix!886)) b!2296404))

(assert (= (and start!225626 (is-Cons!27336 otherP!12)) b!2296414))

(assert (= b!2296408 b!2296430))

(assert (= b!2296421 b!2296408))

(assert (= (and start!225626 (is-Cons!27338 rules!1750)) b!2296421))

(assert (= b!2296410 b!2296431))

(assert (= start!225626 b!2296410))

(assert (= b!2296425 b!2296417))

(assert (= b!2296406 b!2296425))

(assert (= b!2296426 b!2296406))

(assert (= (and start!225626 (is-Cons!27337 tokens!456)) b!2296426))

(declare-fun m!2723903 () Bool)

(assert (=> b!2296403 m!2723903))

(declare-fun m!2723905 () Bool)

(assert (=> b!2296403 m!2723905))

(declare-fun m!2723907 () Bool)

(assert (=> b!2296403 m!2723907))

(assert (=> b!2296403 m!2723907))

(declare-fun m!2723909 () Bool)

(assert (=> b!2296403 m!2723909))

(declare-fun m!2723911 () Bool)

(assert (=> b!2296407 m!2723911))

(declare-fun m!2723913 () Bool)

(assert (=> b!2296407 m!2723913))

(declare-fun m!2723915 () Bool)

(assert (=> b!2296407 m!2723915))

(declare-fun m!2723917 () Bool)

(assert (=> b!2296418 m!2723917))

(declare-fun m!2723919 () Bool)

(assert (=> b!2296416 m!2723919))

(assert (=> b!2296416 m!2723919))

(declare-fun m!2723921 () Bool)

(assert (=> b!2296416 m!2723921))

(assert (=> b!2296416 m!2723921))

(declare-fun m!2723923 () Bool)

(assert (=> b!2296416 m!2723923))

(assert (=> b!2296416 m!2723923))

(declare-fun m!2723925 () Bool)

(assert (=> b!2296416 m!2723925))

(declare-fun m!2723927 () Bool)

(assert (=> b!2296426 m!2723927))

(declare-fun m!2723929 () Bool)

(assert (=> b!2296424 m!2723929))

(declare-fun m!2723931 () Bool)

(assert (=> b!2296424 m!2723931))

(declare-fun m!2723933 () Bool)

(assert (=> b!2296428 m!2723933))

(declare-fun m!2723935 () Bool)

(assert (=> b!2296428 m!2723935))

(declare-fun m!2723937 () Bool)

(assert (=> b!2296434 m!2723937))

(assert (=> b!2296409 m!2723919))

(assert (=> b!2296409 m!2723919))

(assert (=> b!2296409 m!2723921))

(assert (=> b!2296409 m!2723921))

(declare-fun m!2723939 () Bool)

(assert (=> b!2296409 m!2723939))

(declare-fun m!2723941 () Bool)

(assert (=> b!2296409 m!2723941))

(assert (=> b!2296427 m!2723919))

(declare-fun m!2723943 () Bool)

(assert (=> b!2296419 m!2723943))

(declare-fun m!2723945 () Bool)

(assert (=> b!2296425 m!2723945))

(declare-fun m!2723947 () Bool)

(assert (=> b!2296425 m!2723947))

(declare-fun m!2723949 () Bool)

(assert (=> b!2296415 m!2723949))

(declare-fun m!2723951 () Bool)

(assert (=> b!2296420 m!2723951))

(declare-fun m!2723953 () Bool)

(assert (=> b!2296405 m!2723953))

(declare-fun m!2723955 () Bool)

(assert (=> b!2296405 m!2723955))

(declare-fun m!2723957 () Bool)

(assert (=> b!2296405 m!2723957))

(declare-fun m!2723959 () Bool)

(assert (=> b!2296405 m!2723959))

(declare-fun m!2723961 () Bool)

(assert (=> b!2296406 m!2723961))

(declare-fun m!2723963 () Bool)

(assert (=> b!2296433 m!2723963))

(declare-fun m!2723965 () Bool)

(assert (=> b!2296408 m!2723965))

(declare-fun m!2723967 () Bool)

(assert (=> b!2296408 m!2723967))

(declare-fun m!2723969 () Bool)

(assert (=> b!2296410 m!2723969))

(declare-fun m!2723971 () Bool)

(assert (=> b!2296410 m!2723971))

(declare-fun m!2723973 () Bool)

(assert (=> b!2296411 m!2723973))

(push 1)

(assert (not b!2296414))

(assert (not b!2296406))

(assert (not b!2296415))

(assert b_and!182695)

(assert (not b!2296427))

(assert (not b_next!69853))

(assert (not b!2296407))

(assert b_and!182691)

(assert (not b!2296410))

(assert (not b!2296416))

(assert (not b_next!69855))

(assert b_and!182683)

(assert b_and!182685)

(assert (not b!2296411))

(assert (not b_next!69861))

(assert (not b!2296404))

(assert b_and!182687)

(assert (not b!2296434))

(assert b_and!182689)

(assert b_and!182693)

(assert (not b!2296428))

(assert (not b!2296408))

(assert (not b_next!69857))

(assert tp_is_empty!10673)

(assert (not b!2296418))

(assert (not b!2296419))

(assert (not b!2296433))

(assert (not b!2296426))

(assert (not b!2296424))

(assert (not b!2296421))

(assert (not b_next!69863))

(assert (not b!2296432))

(assert (not b!2296420))

(assert b_and!182681)

(assert (not b_next!69859))

(assert (not b!2296409))

(assert (not b_next!69867))

(assert (not b!2296425))

(assert (not b!2296405))

(assert (not b_next!69865))

(assert (not b!2296403))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!69861))

(assert b_and!182693)

(assert b_and!182695)

(assert (not b_next!69853))

(assert b_and!182691)

(assert (not b_next!69857))

(assert (not b_next!69855))

(assert (not b_next!69863))

(assert b_and!182683)

(assert b_and!182685)

(assert (not b_next!69867))

(assert (not b_next!69865))

(assert b_and!182687)

(assert b_and!182689)

(assert b_and!182681)

(assert (not b_next!69859))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!679323 () Bool)

(declare-fun lt!852033 () Bool)

(declare-fun content!3674 (List!27432) (Set Rule!8556))

(assert (=> d!679323 (= lt!852033 (set.member otherR!12 (content!3674 rules!1750)))))

(declare-fun e!1471627 () Bool)

(assert (=> d!679323 (= lt!852033 e!1471627)))

(declare-fun res!981873 () Bool)

(assert (=> d!679323 (=> (not res!981873) (not e!1471627))))

(assert (=> d!679323 (= res!981873 (is-Cons!27338 rules!1750))))

(assert (=> d!679323 (= (contains!4760 rules!1750 otherR!12) lt!852033)))

(declare-fun b!2296535 () Bool)

(declare-fun e!1471626 () Bool)

(assert (=> b!2296535 (= e!1471627 e!1471626)))

(declare-fun res!981874 () Bool)

(assert (=> b!2296535 (=> res!981874 e!1471626)))

(assert (=> b!2296535 (= res!981874 (= (h!32739 rules!1750) otherR!12))))

(declare-fun b!2296536 () Bool)

(assert (=> b!2296536 (= e!1471626 (contains!4760 (t!205382 rules!1750) otherR!12))))

(assert (= (and d!679323 res!981873) b!2296535))

(assert (= (and b!2296535 (not res!981874)) b!2296536))

(declare-fun m!2724047 () Bool)

(assert (=> d!679323 m!2724047))

(declare-fun m!2724049 () Bool)

(assert (=> d!679323 m!2724049))

(declare-fun m!2724051 () Bool)

(assert (=> b!2296536 m!2724051))

(assert (=> b!2296419 d!679323))

(declare-fun d!679327 () Bool)

(assert (=> d!679327 (= (inv!36952 (tag!4868 (h!32739 rules!1750))) (= (mod (str.len (value!138593 (tag!4868 (h!32739 rules!1750)))) 2) 0))))

(assert (=> b!2296408 d!679327))

(declare-fun d!679331 () Bool)

(declare-fun res!981879 () Bool)

(declare-fun e!1471636 () Bool)

(assert (=> d!679331 (=> (not res!981879) (not e!1471636))))

(declare-fun semiInverseModEq!1775 (Int Int) Bool)

(assert (=> d!679331 (= res!981879 (semiInverseModEq!1775 (toChars!6039 (transformation!4378 (h!32739 rules!1750))) (toValue!6180 (transformation!4378 (h!32739 rules!1750)))))))

(assert (=> d!679331 (= (inv!36955 (transformation!4378 (h!32739 rules!1750))) e!1471636)))

(declare-fun b!2296549 () Bool)

(declare-fun equivClasses!1694 (Int Int) Bool)

(assert (=> b!2296549 (= e!1471636 (equivClasses!1694 (toChars!6039 (transformation!4378 (h!32739 rules!1750))) (toValue!6180 (transformation!4378 (h!32739 rules!1750)))))))

(assert (= (and d!679331 res!981879) b!2296549))

(declare-fun m!2724053 () Bool)

(assert (=> d!679331 m!2724053))

(declare-fun m!2724055 () Bool)

(assert (=> b!2296549 m!2724055))

(assert (=> b!2296408 d!679331))

(declare-fun b!2296563 () Bool)

(declare-fun e!1471648 () Bool)

(declare-fun e!1471646 () Bool)

(assert (=> b!2296563 (= e!1471648 e!1471646)))

(declare-fun res!981891 () Bool)

(assert (=> b!2296563 (=> (not res!981891) (not e!1471646))))

(assert (=> b!2296563 (= res!981891 (not (is-Nil!27336 input!1722)))))

(declare-fun b!2296564 () Bool)

(declare-fun res!981889 () Bool)

(assert (=> b!2296564 (=> (not res!981889) (not e!1471646))))

(declare-fun head!5015 (List!27430) C!13598)

(assert (=> b!2296564 (= res!981889 (= (head!5015 otherP!12) (head!5015 input!1722)))))

(declare-fun d!679333 () Bool)

(declare-fun e!1471647 () Bool)

(assert (=> d!679333 e!1471647))

(declare-fun res!981890 () Bool)

(assert (=> d!679333 (=> res!981890 e!1471647)))

(declare-fun lt!852036 () Bool)

(assert (=> d!679333 (= res!981890 (not lt!852036))))

(assert (=> d!679333 (= lt!852036 e!1471648)))

(declare-fun res!981892 () Bool)

(assert (=> d!679333 (=> res!981892 e!1471648)))

(assert (=> d!679333 (= res!981892 (is-Nil!27336 otherP!12))))

(assert (=> d!679333 (= (isPrefix!2368 otherP!12 input!1722) lt!852036)))

(declare-fun b!2296565 () Bool)

(declare-fun tail!3316 (List!27430) List!27430)

(assert (=> b!2296565 (= e!1471646 (isPrefix!2368 (tail!3316 otherP!12) (tail!3316 input!1722)))))

(declare-fun b!2296566 () Bool)

(assert (=> b!2296566 (= e!1471647 (>= (size!21541 input!1722) (size!21541 otherP!12)))))

(assert (= (and d!679333 (not res!981892)) b!2296563))

(assert (= (and b!2296563 res!981891) b!2296564))

(assert (= (and b!2296564 res!981889) b!2296565))

(assert (= (and d!679333 (not res!981890)) b!2296566))

(declare-fun m!2724063 () Bool)

(assert (=> b!2296564 m!2724063))

(declare-fun m!2724065 () Bool)

(assert (=> b!2296564 m!2724065))

(declare-fun m!2724067 () Bool)

(assert (=> b!2296565 m!2724067))

(declare-fun m!2724069 () Bool)

(assert (=> b!2296565 m!2724069))

(assert (=> b!2296565 m!2724067))

(assert (=> b!2296565 m!2724069))

(declare-fun m!2724071 () Bool)

(assert (=> b!2296565 m!2724071))

(declare-fun m!2724073 () Bool)

(assert (=> b!2296566 m!2724073))

(assert (=> b!2296566 m!2723941))

(assert (=> b!2296418 d!679333))

(declare-fun d!679337 () Bool)

(assert (=> d!679337 (= (isEmpty!15583 lt!851993) (not (is-Some!5369 lt!851993)))))

(assert (=> b!2296407 d!679337))

(declare-fun b!2296596 () Bool)

(declare-fun res!981910 () Bool)

(declare-fun e!1471663 () Bool)

(assert (=> b!2296596 (=> (not res!981910) (not e!1471663))))

(declare-fun lt!852056 () Option!5370)

(declare-fun ++!6686 (List!27430 List!27430) List!27430)

(declare-fun get!8241 (Option!5370) tuple2!27184)

(assert (=> b!2296596 (= res!981910 (= (++!6686 (list!10735 (charsOf!2766 (_1!16102 (get!8241 lt!852056)))) (_2!16102 (get!8241 lt!852056))) input!1722))))

(declare-fun b!2296597 () Bool)

(declare-fun e!1471665 () Option!5370)

(assert (=> b!2296597 (= e!1471665 None!5369)))

(declare-fun b!2296598 () Bool)

(declare-fun e!1471664 () Bool)

(assert (=> b!2296598 (= e!1471664 e!1471663)))

(declare-fun res!981912 () Bool)

(assert (=> b!2296598 (=> (not res!981912) (not e!1471663))))

(assert (=> b!2296598 (= res!981912 (matchR!2983 (regex!4378 otherR!12) (list!10735 (charsOf!2766 (_1!16102 (get!8241 lt!852056))))))))

(declare-fun d!679339 () Bool)

(assert (=> d!679339 e!1471664))

(declare-fun res!981911 () Bool)

(assert (=> d!679339 (=> res!981911 e!1471664)))

(assert (=> d!679339 (= res!981911 (isEmpty!15583 lt!852056))))

(assert (=> d!679339 (= lt!852056 e!1471665)))

(declare-fun c!364142 () Bool)

(declare-datatypes ((tuple2!27192 0))(
  ( (tuple2!27193 (_1!16106 List!27430) (_2!16106 List!27430)) )
))
(declare-fun lt!852059 () tuple2!27192)

(declare-fun isEmpty!15589 (List!27430) Bool)

(assert (=> d!679339 (= c!364142 (isEmpty!15589 (_1!16106 lt!852059)))))

(declare-fun findLongestMatch!655 (Regex!6726 List!27430) tuple2!27192)

(assert (=> d!679339 (= lt!852059 (findLongestMatch!655 (regex!4378 otherR!12) input!1722))))

(assert (=> d!679339 (ruleValid!1468 thiss!16613 otherR!12)))

(assert (=> d!679339 (= (maxPrefixOneRule!1403 thiss!16613 otherR!12 input!1722) lt!852056)))

(declare-fun b!2296599 () Bool)

(declare-fun res!981907 () Bool)

(assert (=> b!2296599 (=> (not res!981907) (not e!1471663))))

(assert (=> b!2296599 (= res!981907 (= (rule!6718 (_1!16102 (get!8241 lt!852056))) otherR!12))))

(declare-fun b!2296600 () Bool)

(assert (=> b!2296600 (= e!1471663 (= (size!21539 (_1!16102 (get!8241 lt!852056))) (size!21541 (originalCharacters!5148 (_1!16102 (get!8241 lt!852056))))))))

(declare-fun b!2296601 () Bool)

(declare-fun apply!6644 (TokenValueInjection!8620 BalanceConc!17536) TokenValue!4540)

(assert (=> b!2296601 (= e!1471665 (Some!5369 (tuple2!27185 (Token!8235 (apply!6644 (transformation!4378 otherR!12) (seqFromList!3082 (_1!16106 lt!852059))) otherR!12 (size!21540 (seqFromList!3082 (_1!16106 lt!852059))) (_1!16106 lt!852059)) (_2!16106 lt!852059))))))

(declare-fun lt!852057 () Unit!40227)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!699 (Regex!6726 List!27430) Unit!40227)

(assert (=> b!2296601 (= lt!852057 (longestMatchIsAcceptedByMatchOrIsEmpty!699 (regex!4378 otherR!12) input!1722))))

(declare-fun res!981913 () Bool)

(declare-fun findLongestMatchInner!726 (Regex!6726 List!27430 Int List!27430 List!27430 Int) tuple2!27192)

(assert (=> b!2296601 (= res!981913 (isEmpty!15589 (_1!16106 (findLongestMatchInner!726 (regex!4378 otherR!12) Nil!27336 (size!21541 Nil!27336) input!1722 input!1722 (size!21541 input!1722)))))))

(declare-fun e!1471666 () Bool)

(assert (=> b!2296601 (=> res!981913 e!1471666)))

(assert (=> b!2296601 e!1471666))

(declare-fun lt!852060 () Unit!40227)

(assert (=> b!2296601 (= lt!852060 lt!852057)))

(declare-fun lt!852058 () Unit!40227)

(declare-fun lemmaSemiInverse!1071 (TokenValueInjection!8620 BalanceConc!17536) Unit!40227)

(assert (=> b!2296601 (= lt!852058 (lemmaSemiInverse!1071 (transformation!4378 otherR!12) (seqFromList!3082 (_1!16106 lt!852059))))))

(declare-fun b!2296602 () Bool)

(declare-fun res!981909 () Bool)

(assert (=> b!2296602 (=> (not res!981909) (not e!1471663))))

(assert (=> b!2296602 (= res!981909 (< (size!21541 (_2!16102 (get!8241 lt!852056))) (size!21541 input!1722)))))

(declare-fun b!2296603 () Bool)

(assert (=> b!2296603 (= e!1471666 (matchR!2983 (regex!4378 otherR!12) (_1!16106 (findLongestMatchInner!726 (regex!4378 otherR!12) Nil!27336 (size!21541 Nil!27336) input!1722 input!1722 (size!21541 input!1722)))))))

(declare-fun b!2296604 () Bool)

(declare-fun res!981908 () Bool)

(assert (=> b!2296604 (=> (not res!981908) (not e!1471663))))

(assert (=> b!2296604 (= res!981908 (= (value!138594 (_1!16102 (get!8241 lt!852056))) (apply!6644 (transformation!4378 (rule!6718 (_1!16102 (get!8241 lt!852056)))) (seqFromList!3082 (originalCharacters!5148 (_1!16102 (get!8241 lt!852056)))))))))

(assert (= (and d!679339 c!364142) b!2296597))

(assert (= (and d!679339 (not c!364142)) b!2296601))

(assert (= (and b!2296601 (not res!981913)) b!2296603))

(assert (= (and d!679339 (not res!981911)) b!2296598))

(assert (= (and b!2296598 res!981912) b!2296596))

(assert (= (and b!2296596 res!981910) b!2296602))

(assert (= (and b!2296602 res!981909) b!2296599))

(assert (= (and b!2296599 res!981907) b!2296604))

(assert (= (and b!2296604 res!981908) b!2296600))

(declare-fun m!2724093 () Bool)

(assert (=> d!679339 m!2724093))

(declare-fun m!2724095 () Bool)

(assert (=> d!679339 m!2724095))

(declare-fun m!2724097 () Bool)

(assert (=> d!679339 m!2724097))

(assert (=> d!679339 m!2723957))

(declare-fun m!2724099 () Bool)

(assert (=> b!2296598 m!2724099))

(declare-fun m!2724101 () Bool)

(assert (=> b!2296598 m!2724101))

(assert (=> b!2296598 m!2724101))

(declare-fun m!2724103 () Bool)

(assert (=> b!2296598 m!2724103))

(assert (=> b!2296598 m!2724103))

(declare-fun m!2724105 () Bool)

(assert (=> b!2296598 m!2724105))

(assert (=> b!2296604 m!2724099))

(declare-fun m!2724107 () Bool)

(assert (=> b!2296604 m!2724107))

(assert (=> b!2296604 m!2724107))

(declare-fun m!2724109 () Bool)

(assert (=> b!2296604 m!2724109))

(declare-fun m!2724111 () Bool)

(assert (=> b!2296601 m!2724111))

(declare-fun m!2724113 () Bool)

(assert (=> b!2296601 m!2724113))

(assert (=> b!2296601 m!2724113))

(declare-fun m!2724115 () Bool)

(assert (=> b!2296601 m!2724115))

(assert (=> b!2296601 m!2724113))

(declare-fun m!2724117 () Bool)

(assert (=> b!2296601 m!2724117))

(declare-fun m!2724119 () Bool)

(assert (=> b!2296601 m!2724119))

(assert (=> b!2296601 m!2724073))

(assert (=> b!2296601 m!2724113))

(declare-fun m!2724121 () Bool)

(assert (=> b!2296601 m!2724121))

(declare-fun m!2724123 () Bool)

(assert (=> b!2296601 m!2724123))

(assert (=> b!2296601 m!2724111))

(assert (=> b!2296601 m!2724073))

(declare-fun m!2724125 () Bool)

(assert (=> b!2296601 m!2724125))

(assert (=> b!2296596 m!2724099))

(assert (=> b!2296596 m!2724101))

(assert (=> b!2296596 m!2724101))

(assert (=> b!2296596 m!2724103))

(assert (=> b!2296596 m!2724103))

(declare-fun m!2724127 () Bool)

(assert (=> b!2296596 m!2724127))

(assert (=> b!2296599 m!2724099))

(assert (=> b!2296603 m!2724111))

(assert (=> b!2296603 m!2724073))

(assert (=> b!2296603 m!2724111))

(assert (=> b!2296603 m!2724073))

(assert (=> b!2296603 m!2724125))

(declare-fun m!2724129 () Bool)

(assert (=> b!2296603 m!2724129))

(assert (=> b!2296600 m!2724099))

(declare-fun m!2724131 () Bool)

(assert (=> b!2296600 m!2724131))

(assert (=> b!2296602 m!2724099))

(declare-fun m!2724133 () Bool)

(assert (=> b!2296602 m!2724133))

(assert (=> b!2296602 m!2724073))

(assert (=> b!2296407 d!679339))

(declare-fun d!679353 () Bool)

(assert (=> d!679353 (isEmpty!15583 (maxPrefixOneRule!1403 thiss!16613 otherR!12 input!1722))))

(declare-fun lt!852063 () Unit!40227)

(declare-fun choose!13404 (LexerInterface!3975 Rule!8556 List!27432 List!27430) Unit!40227)

(assert (=> d!679353 (= lt!852063 (choose!13404 thiss!16613 otherR!12 rules!1750 input!1722))))

(assert (=> d!679353 (not (isEmpty!15585 rules!1750))))

(assert (=> d!679353 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!414 thiss!16613 otherR!12 rules!1750 input!1722) lt!852063)))

(declare-fun bs!457433 () Bool)

(assert (= bs!457433 d!679353))

(assert (=> bs!457433 m!2723913))

(assert (=> bs!457433 m!2723913))

(declare-fun m!2724135 () Bool)

(assert (=> bs!457433 m!2724135))

(declare-fun m!2724137 () Bool)

(assert (=> bs!457433 m!2724137))

(assert (=> bs!457433 m!2723963))

(assert (=> b!2296407 d!679353))

(declare-fun d!679355 () Bool)

(declare-fun res!981918 () Bool)

(declare-fun e!1471669 () Bool)

(assert (=> d!679355 (=> (not res!981918) (not e!1471669))))

(declare-fun validRegex!2535 (Regex!6726) Bool)

(assert (=> d!679355 (= res!981918 (validRegex!2535 (regex!4378 r!2363)))))

(assert (=> d!679355 (= (ruleValid!1468 thiss!16613 r!2363) e!1471669)))

(declare-fun b!2296609 () Bool)

(declare-fun res!981919 () Bool)

(assert (=> b!2296609 (=> (not res!981919) (not e!1471669))))

(declare-fun nullable!1873 (Regex!6726) Bool)

(assert (=> b!2296609 (= res!981919 (not (nullable!1873 (regex!4378 r!2363))))))

(declare-fun b!2296610 () Bool)

(assert (=> b!2296610 (= e!1471669 (not (= (tag!4868 r!2363) (String!29807 ""))))))

(assert (= (and d!679355 res!981918) b!2296609))

(assert (= (and b!2296609 res!981919) b!2296610))

(declare-fun m!2724139 () Bool)

(assert (=> d!679355 m!2724139))

(declare-fun m!2724141 () Bool)

(assert (=> b!2296609 m!2724141))

(assert (=> b!2296428 d!679355))

(declare-fun d!679357 () Bool)

(assert (=> d!679357 (ruleValid!1468 thiss!16613 r!2363)))

(declare-fun lt!852066 () Unit!40227)

(declare-fun choose!13405 (LexerInterface!3975 Rule!8556 List!27432) Unit!40227)

(assert (=> d!679357 (= lt!852066 (choose!13405 thiss!16613 r!2363 rules!1750))))

(assert (=> d!679357 (contains!4760 rules!1750 r!2363)))

(assert (=> d!679357 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!873 thiss!16613 r!2363 rules!1750) lt!852066)))

(declare-fun bs!457434 () Bool)

(assert (= bs!457434 d!679357))

(assert (=> bs!457434 m!2723933))

(declare-fun m!2724143 () Bool)

(assert (=> bs!457434 m!2724143))

(assert (=> bs!457434 m!2723949))

(assert (=> b!2296428 d!679357))

(declare-fun b!2296621 () Bool)

(declare-fun e!1471677 () Bool)

(declare-fun inv!16 (TokenValue!4540) Bool)

(assert (=> b!2296621 (= e!1471677 (inv!16 (value!138594 (h!32738 tokens!456))))))

(declare-fun b!2296622 () Bool)

(declare-fun e!1471678 () Bool)

(declare-fun inv!17 (TokenValue!4540) Bool)

(assert (=> b!2296622 (= e!1471678 (inv!17 (value!138594 (h!32738 tokens!456))))))

(declare-fun b!2296623 () Bool)

(declare-fun e!1471676 () Bool)

(declare-fun inv!15 (TokenValue!4540) Bool)

(assert (=> b!2296623 (= e!1471676 (inv!15 (value!138594 (h!32738 tokens!456))))))

(declare-fun b!2296624 () Bool)

(assert (=> b!2296624 (= e!1471677 e!1471678)))

(declare-fun c!364147 () Bool)

(assert (=> b!2296624 (= c!364147 (is-IntegerValue!13621 (value!138594 (h!32738 tokens!456))))))

(declare-fun b!2296625 () Bool)

(declare-fun res!981922 () Bool)

(assert (=> b!2296625 (=> res!981922 e!1471676)))

(assert (=> b!2296625 (= res!981922 (not (is-IntegerValue!13622 (value!138594 (h!32738 tokens!456)))))))

(assert (=> b!2296625 (= e!1471678 e!1471676)))

(declare-fun d!679359 () Bool)

(declare-fun c!364148 () Bool)

(assert (=> d!679359 (= c!364148 (is-IntegerValue!13620 (value!138594 (h!32738 tokens!456))))))

(assert (=> d!679359 (= (inv!21 (value!138594 (h!32738 tokens!456))) e!1471677)))

(assert (= (and d!679359 c!364148) b!2296621))

(assert (= (and d!679359 (not c!364148)) b!2296624))

(assert (= (and b!2296624 c!364147) b!2296622))

(assert (= (and b!2296624 (not c!364147)) b!2296625))

(assert (= (and b!2296625 (not res!981922)) b!2296623))

(declare-fun m!2724145 () Bool)

(assert (=> b!2296621 m!2724145))

(declare-fun m!2724147 () Bool)

(assert (=> b!2296622 m!2724147))

(declare-fun m!2724149 () Bool)

(assert (=> b!2296623 m!2724149))

(assert (=> b!2296406 d!679359))

(declare-fun d!679361 () Bool)

(assert (=> d!679361 (= (head!5013 tokens!456) (h!32738 tokens!456))))

(assert (=> b!2296427 d!679361))

(declare-fun b!2296654 () Bool)

(declare-fun e!1471699 () Bool)

(declare-fun e!1471697 () Bool)

(assert (=> b!2296654 (= e!1471699 e!1471697)))

(declare-fun res!981940 () Bool)

(assert (=> b!2296654 (=> (not res!981940) (not e!1471697))))

(declare-fun lt!852069 () Bool)

(assert (=> b!2296654 (= res!981940 (not lt!852069))))

(declare-fun b!2296655 () Bool)

(declare-fun e!1471693 () Bool)

(declare-fun call!136903 () Bool)

(assert (=> b!2296655 (= e!1471693 (= lt!852069 call!136903))))

(declare-fun b!2296656 () Bool)

(declare-fun e!1471696 () Bool)

(assert (=> b!2296656 (= e!1471696 (not (= (head!5015 (list!10735 (charsOf!2766 (head!5013 tokens!456)))) (c!364122 (regex!4378 r!2363)))))))

(declare-fun b!2296657 () Bool)

(assert (=> b!2296657 (= e!1471697 e!1471696)))

(declare-fun res!981943 () Bool)

(assert (=> b!2296657 (=> res!981943 e!1471696)))

(assert (=> b!2296657 (= res!981943 call!136903)))

(declare-fun b!2296658 () Bool)

(declare-fun e!1471694 () Bool)

(assert (=> b!2296658 (= e!1471694 (= (head!5015 (list!10735 (charsOf!2766 (head!5013 tokens!456)))) (c!364122 (regex!4378 r!2363))))))

(declare-fun b!2296659 () Bool)

(declare-fun e!1471698 () Bool)

(assert (=> b!2296659 (= e!1471698 (nullable!1873 (regex!4378 r!2363)))))

(declare-fun b!2296660 () Bool)

(declare-fun res!981939 () Bool)

(assert (=> b!2296660 (=> (not res!981939) (not e!1471694))))

(assert (=> b!2296660 (= res!981939 (isEmpty!15589 (tail!3316 (list!10735 (charsOf!2766 (head!5013 tokens!456))))))))

(declare-fun b!2296661 () Bool)

(declare-fun res!981946 () Bool)

(assert (=> b!2296661 (=> (not res!981946) (not e!1471694))))

(assert (=> b!2296661 (= res!981946 (not call!136903))))

(declare-fun b!2296662 () Bool)

(declare-fun res!981941 () Bool)

(assert (=> b!2296662 (=> res!981941 e!1471699)))

(assert (=> b!2296662 (= res!981941 e!1471694)))

(declare-fun res!981944 () Bool)

(assert (=> b!2296662 (=> (not res!981944) (not e!1471694))))

(assert (=> b!2296662 (= res!981944 lt!852069)))

(declare-fun b!2296663 () Bool)

(declare-fun res!981942 () Bool)

(assert (=> b!2296663 (=> res!981942 e!1471696)))

(assert (=> b!2296663 (= res!981942 (not (isEmpty!15589 (tail!3316 (list!10735 (charsOf!2766 (head!5013 tokens!456)))))))))

(declare-fun b!2296664 () Bool)

(declare-fun e!1471695 () Bool)

(assert (=> b!2296664 (= e!1471693 e!1471695)))

(declare-fun c!364155 () Bool)

(assert (=> b!2296664 (= c!364155 (is-EmptyLang!6726 (regex!4378 r!2363)))))

(declare-fun bm!136898 () Bool)

(assert (=> bm!136898 (= call!136903 (isEmpty!15589 (list!10735 (charsOf!2766 (head!5013 tokens!456)))))))

(declare-fun b!2296666 () Bool)

(declare-fun derivativeStep!1533 (Regex!6726 C!13598) Regex!6726)

(assert (=> b!2296666 (= e!1471698 (matchR!2983 (derivativeStep!1533 (regex!4378 r!2363) (head!5015 (list!10735 (charsOf!2766 (head!5013 tokens!456))))) (tail!3316 (list!10735 (charsOf!2766 (head!5013 tokens!456))))))))

(declare-fun b!2296667 () Bool)

(assert (=> b!2296667 (= e!1471695 (not lt!852069))))

(declare-fun b!2296665 () Bool)

(declare-fun res!981945 () Bool)

(assert (=> b!2296665 (=> res!981945 e!1471699)))

(assert (=> b!2296665 (= res!981945 (not (is-ElementMatch!6726 (regex!4378 r!2363))))))

(assert (=> b!2296665 (= e!1471695 e!1471699)))

(declare-fun d!679363 () Bool)

(assert (=> d!679363 e!1471693))

(declare-fun c!364156 () Bool)

(assert (=> d!679363 (= c!364156 (is-EmptyExpr!6726 (regex!4378 r!2363)))))

(assert (=> d!679363 (= lt!852069 e!1471698)))

(declare-fun c!364157 () Bool)

(assert (=> d!679363 (= c!364157 (isEmpty!15589 (list!10735 (charsOf!2766 (head!5013 tokens!456)))))))

(assert (=> d!679363 (validRegex!2535 (regex!4378 r!2363))))

(assert (=> d!679363 (= (matchR!2983 (regex!4378 r!2363) (list!10735 (charsOf!2766 (head!5013 tokens!456)))) lt!852069)))

(assert (= (and d!679363 c!364157) b!2296659))

(assert (= (and d!679363 (not c!364157)) b!2296666))

(assert (= (and d!679363 c!364156) b!2296655))

(assert (= (and d!679363 (not c!364156)) b!2296664))

(assert (= (and b!2296664 c!364155) b!2296667))

(assert (= (and b!2296664 (not c!364155)) b!2296665))

(assert (= (and b!2296665 (not res!981945)) b!2296662))

(assert (= (and b!2296662 res!981944) b!2296661))

(assert (= (and b!2296661 res!981946) b!2296660))

(assert (= (and b!2296660 res!981939) b!2296658))

(assert (= (and b!2296662 (not res!981941)) b!2296654))

(assert (= (and b!2296654 res!981940) b!2296657))

(assert (= (and b!2296657 (not res!981943)) b!2296663))

(assert (= (and b!2296663 (not res!981942)) b!2296656))

(assert (= (or b!2296655 b!2296657 b!2296661) bm!136898))

(assert (=> b!2296658 m!2723923))

(declare-fun m!2724151 () Bool)

(assert (=> b!2296658 m!2724151))

(assert (=> b!2296659 m!2724141))

(assert (=> b!2296660 m!2723923))

(declare-fun m!2724153 () Bool)

(assert (=> b!2296660 m!2724153))

(assert (=> b!2296660 m!2724153))

(declare-fun m!2724155 () Bool)

(assert (=> b!2296660 m!2724155))

(assert (=> bm!136898 m!2723923))

(declare-fun m!2724157 () Bool)

(assert (=> bm!136898 m!2724157))

(assert (=> d!679363 m!2723923))

(assert (=> d!679363 m!2724157))

(assert (=> d!679363 m!2724139))

(assert (=> b!2296666 m!2723923))

(assert (=> b!2296666 m!2724151))

(assert (=> b!2296666 m!2724151))

(declare-fun m!2724159 () Bool)

(assert (=> b!2296666 m!2724159))

(assert (=> b!2296666 m!2723923))

(assert (=> b!2296666 m!2724153))

(assert (=> b!2296666 m!2724159))

(assert (=> b!2296666 m!2724153))

(declare-fun m!2724161 () Bool)

(assert (=> b!2296666 m!2724161))

(assert (=> b!2296656 m!2723923))

(assert (=> b!2296656 m!2724151))

(assert (=> b!2296663 m!2723923))

(assert (=> b!2296663 m!2724153))

(assert (=> b!2296663 m!2724153))

(assert (=> b!2296663 m!2724155))

(assert (=> b!2296416 d!679363))

(declare-fun d!679365 () Bool)

(declare-fun list!10738 (Conc!8904) List!27430)

(assert (=> d!679365 (= (list!10735 (charsOf!2766 (head!5013 tokens!456))) (list!10738 (c!364121 (charsOf!2766 (head!5013 tokens!456)))))))

(declare-fun bs!457435 () Bool)

(assert (= bs!457435 d!679365))

(declare-fun m!2724163 () Bool)

(assert (=> bs!457435 m!2724163))

(assert (=> b!2296416 d!679365))

(declare-fun d!679367 () Bool)

(declare-fun lt!852072 () BalanceConc!17536)

(assert (=> d!679367 (= (list!10735 lt!852072) (originalCharacters!5148 (head!5013 tokens!456)))))

(declare-fun dynLambda!11882 (Int TokenValue!4540) BalanceConc!17536)

(assert (=> d!679367 (= lt!852072 (dynLambda!11882 (toChars!6039 (transformation!4378 (rule!6718 (head!5013 tokens!456)))) (value!138594 (head!5013 tokens!456))))))

(assert (=> d!679367 (= (charsOf!2766 (head!5013 tokens!456)) lt!852072)))

(declare-fun b_lambda!73183 () Bool)

(assert (=> (not b_lambda!73183) (not d!679367)))

(declare-fun tb!137191 () Bool)

(declare-fun t!205396 () Bool)

(assert (=> (and b!2296413 (= (toChars!6039 (transformation!4378 otherR!12)) (toChars!6039 (transformation!4378 (rule!6718 (head!5013 tokens!456))))) t!205396) tb!137191))

(declare-fun b!2296672 () Bool)

(declare-fun e!1471702 () Bool)

(declare-fun tp!728395 () Bool)

(declare-fun inv!36959 (Conc!8904) Bool)

(assert (=> b!2296672 (= e!1471702 (and (inv!36959 (c!364121 (dynLambda!11882 (toChars!6039 (transformation!4378 (rule!6718 (head!5013 tokens!456)))) (value!138594 (head!5013 tokens!456))))) tp!728395))))

(declare-fun result!167232 () Bool)

(declare-fun inv!36960 (BalanceConc!17536) Bool)

(assert (=> tb!137191 (= result!167232 (and (inv!36960 (dynLambda!11882 (toChars!6039 (transformation!4378 (rule!6718 (head!5013 tokens!456)))) (value!138594 (head!5013 tokens!456)))) e!1471702))))

(assert (= tb!137191 b!2296672))

(declare-fun m!2724165 () Bool)

(assert (=> b!2296672 m!2724165))

(declare-fun m!2724167 () Bool)

(assert (=> tb!137191 m!2724167))

(assert (=> d!679367 t!205396))

(declare-fun b_and!182721 () Bool)

(assert (= b_and!182683 (and (=> t!205396 result!167232) b_and!182721)))

(declare-fun t!205398 () Bool)

(declare-fun tb!137193 () Bool)

(assert (=> (and b!2296431 (= (toChars!6039 (transformation!4378 r!2363)) (toChars!6039 (transformation!4378 (rule!6718 (head!5013 tokens!456))))) t!205398) tb!137193))

(declare-fun result!167236 () Bool)

(assert (= result!167236 result!167232))

(assert (=> d!679367 t!205398))

(declare-fun b_and!182723 () Bool)

(assert (= b_and!182687 (and (=> t!205398 result!167236) b_and!182723)))

(declare-fun t!205400 () Bool)

(declare-fun tb!137195 () Bool)

(assert (=> (and b!2296430 (= (toChars!6039 (transformation!4378 (h!32739 rules!1750))) (toChars!6039 (transformation!4378 (rule!6718 (head!5013 tokens!456))))) t!205400) tb!137195))

(declare-fun result!167238 () Bool)

(assert (= result!167238 result!167232))

(assert (=> d!679367 t!205400))

(declare-fun b_and!182725 () Bool)

(assert (= b_and!182691 (and (=> t!205400 result!167238) b_and!182725)))

(declare-fun t!205402 () Bool)

(declare-fun tb!137197 () Bool)

(assert (=> (and b!2296417 (= (toChars!6039 (transformation!4378 (rule!6718 (h!32738 tokens!456)))) (toChars!6039 (transformation!4378 (rule!6718 (head!5013 tokens!456))))) t!205402) tb!137197))

(declare-fun result!167240 () Bool)

(assert (= result!167240 result!167232))

(assert (=> d!679367 t!205402))

(declare-fun b_and!182727 () Bool)

(assert (= b_and!182695 (and (=> t!205402 result!167240) b_and!182727)))

(declare-fun m!2724169 () Bool)

(assert (=> d!679367 m!2724169))

(declare-fun m!2724171 () Bool)

(assert (=> d!679367 m!2724171))

(assert (=> b!2296416 d!679367))

(assert (=> b!2296416 d!679361))

(declare-fun b!2296683 () Bool)

(declare-fun e!1471708 () Int)

(assert (=> b!2296683 (= e!1471708 (+ 1 (getIndex!391 (t!205382 rules!1750) otherR!12)))))

(declare-fun b!2296682 () Bool)

(declare-fun e!1471709 () Int)

(assert (=> b!2296682 (= e!1471709 e!1471708)))

(declare-fun c!364162 () Bool)

(assert (=> b!2296682 (= c!364162 (and (is-Cons!27338 rules!1750) (not (= (h!32739 rules!1750) otherR!12))))))

(declare-fun b!2296681 () Bool)

(assert (=> b!2296681 (= e!1471709 0)))

(declare-fun b!2296684 () Bool)

(assert (=> b!2296684 (= e!1471708 (- 1))))

(declare-fun d!679369 () Bool)

(declare-fun lt!852075 () Int)

(assert (=> d!679369 (>= lt!852075 0)))

(assert (=> d!679369 (= lt!852075 e!1471709)))

(declare-fun c!364163 () Bool)

(assert (=> d!679369 (= c!364163 (and (is-Cons!27338 rules!1750) (= (h!32739 rules!1750) otherR!12)))))

(assert (=> d!679369 (contains!4760 rules!1750 otherR!12)))

(assert (=> d!679369 (= (getIndex!391 rules!1750 otherR!12) lt!852075)))

(assert (= (and d!679369 c!364163) b!2296681))

(assert (= (and d!679369 (not c!364163)) b!2296682))

(assert (= (and b!2296682 c!364162) b!2296683))

(assert (= (and b!2296682 (not c!364162)) b!2296684))

(declare-fun m!2724173 () Bool)

(assert (=> b!2296683 m!2724173))

(assert (=> d!679369 m!2723943))

(assert (=> b!2296405 d!679369))

(declare-fun b!2296687 () Bool)

(declare-fun e!1471710 () Int)

(assert (=> b!2296687 (= e!1471710 (+ 1 (getIndex!391 (t!205382 rules!1750) r!2363)))))

(declare-fun b!2296686 () Bool)

(declare-fun e!1471711 () Int)

(assert (=> b!2296686 (= e!1471711 e!1471710)))

(declare-fun c!364164 () Bool)

(assert (=> b!2296686 (= c!364164 (and (is-Cons!27338 rules!1750) (not (= (h!32739 rules!1750) r!2363))))))

(declare-fun b!2296685 () Bool)

(assert (=> b!2296685 (= e!1471711 0)))

(declare-fun b!2296688 () Bool)

(assert (=> b!2296688 (= e!1471710 (- 1))))

(declare-fun d!679371 () Bool)

(declare-fun lt!852076 () Int)

(assert (=> d!679371 (>= lt!852076 0)))

(assert (=> d!679371 (= lt!852076 e!1471711)))

(declare-fun c!364165 () Bool)

(assert (=> d!679371 (= c!364165 (and (is-Cons!27338 rules!1750) (= (h!32739 rules!1750) r!2363)))))

(assert (=> d!679371 (contains!4760 rules!1750 r!2363)))

(assert (=> d!679371 (= (getIndex!391 rules!1750 r!2363) lt!852076)))

(assert (= (and d!679371 c!364165) b!2296685))

(assert (= (and d!679371 (not c!364165)) b!2296686))

(assert (= (and b!2296686 c!364164) b!2296687))

(assert (= (and b!2296686 (not c!364164)) b!2296688))

(declare-fun m!2724175 () Bool)

(assert (=> b!2296687 m!2724175))

(assert (=> d!679371 m!2723949))

(assert (=> b!2296405 d!679371))

(declare-fun d!679373 () Bool)

(declare-fun res!981947 () Bool)

(declare-fun e!1471712 () Bool)

(assert (=> d!679373 (=> (not res!981947) (not e!1471712))))

(assert (=> d!679373 (= res!981947 (validRegex!2535 (regex!4378 otherR!12)))))

(assert (=> d!679373 (= (ruleValid!1468 thiss!16613 otherR!12) e!1471712)))

(declare-fun b!2296689 () Bool)

(declare-fun res!981948 () Bool)

(assert (=> b!2296689 (=> (not res!981948) (not e!1471712))))

(assert (=> b!2296689 (= res!981948 (not (nullable!1873 (regex!4378 otherR!12))))))

(declare-fun b!2296690 () Bool)

(assert (=> b!2296690 (= e!1471712 (not (= (tag!4868 otherR!12) (String!29807 ""))))))

(assert (= (and d!679373 res!981947) b!2296689))

(assert (= (and b!2296689 res!981948) b!2296690))

(declare-fun m!2724177 () Bool)

(assert (=> d!679373 m!2724177))

(declare-fun m!2724179 () Bool)

(assert (=> b!2296689 m!2724179))

(assert (=> b!2296405 d!679373))

(declare-fun d!679375 () Bool)

(assert (=> d!679375 (ruleValid!1468 thiss!16613 otherR!12)))

(declare-fun lt!852077 () Unit!40227)

(assert (=> d!679375 (= lt!852077 (choose!13405 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!679375 (contains!4760 rules!1750 otherR!12)))

(assert (=> d!679375 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!873 thiss!16613 otherR!12 rules!1750) lt!852077)))

(declare-fun bs!457436 () Bool)

(assert (= bs!457436 d!679375))

(assert (=> bs!457436 m!2723957))

(declare-fun m!2724181 () Bool)

(assert (=> bs!457436 m!2724181))

(assert (=> bs!457436 m!2723943))

(assert (=> b!2296405 d!679375))

(declare-fun d!679377 () Bool)

(declare-fun res!981953 () Bool)

(declare-fun e!1471715 () Bool)

(assert (=> d!679377 (=> (not res!981953) (not e!1471715))))

(assert (=> d!679377 (= res!981953 (not (isEmpty!15589 (originalCharacters!5148 (h!32738 tokens!456)))))))

(assert (=> d!679377 (= (inv!36956 (h!32738 tokens!456)) e!1471715)))

(declare-fun b!2296695 () Bool)

(declare-fun res!981954 () Bool)

(assert (=> b!2296695 (=> (not res!981954) (not e!1471715))))

(assert (=> b!2296695 (= res!981954 (= (originalCharacters!5148 (h!32738 tokens!456)) (list!10735 (dynLambda!11882 (toChars!6039 (transformation!4378 (rule!6718 (h!32738 tokens!456)))) (value!138594 (h!32738 tokens!456))))))))

(declare-fun b!2296696 () Bool)

(assert (=> b!2296696 (= e!1471715 (= (size!21539 (h!32738 tokens!456)) (size!21541 (originalCharacters!5148 (h!32738 tokens!456)))))))

(assert (= (and d!679377 res!981953) b!2296695))

(assert (= (and b!2296695 res!981954) b!2296696))

(declare-fun b_lambda!73185 () Bool)

(assert (=> (not b_lambda!73185) (not b!2296695)))

(declare-fun tb!137199 () Bool)

(declare-fun t!205404 () Bool)

(assert (=> (and b!2296413 (= (toChars!6039 (transformation!4378 otherR!12)) (toChars!6039 (transformation!4378 (rule!6718 (h!32738 tokens!456))))) t!205404) tb!137199))

(declare-fun b!2296697 () Bool)

(declare-fun e!1471716 () Bool)

(declare-fun tp!728396 () Bool)

(assert (=> b!2296697 (= e!1471716 (and (inv!36959 (c!364121 (dynLambda!11882 (toChars!6039 (transformation!4378 (rule!6718 (h!32738 tokens!456)))) (value!138594 (h!32738 tokens!456))))) tp!728396))))

(declare-fun result!167242 () Bool)

(assert (=> tb!137199 (= result!167242 (and (inv!36960 (dynLambda!11882 (toChars!6039 (transformation!4378 (rule!6718 (h!32738 tokens!456)))) (value!138594 (h!32738 tokens!456)))) e!1471716))))

(assert (= tb!137199 b!2296697))

(declare-fun m!2724183 () Bool)

(assert (=> b!2296697 m!2724183))

(declare-fun m!2724185 () Bool)

(assert (=> tb!137199 m!2724185))

(assert (=> b!2296695 t!205404))

(declare-fun b_and!182729 () Bool)

(assert (= b_and!182721 (and (=> t!205404 result!167242) b_and!182729)))

(declare-fun t!205406 () Bool)

(declare-fun tb!137201 () Bool)

(assert (=> (and b!2296431 (= (toChars!6039 (transformation!4378 r!2363)) (toChars!6039 (transformation!4378 (rule!6718 (h!32738 tokens!456))))) t!205406) tb!137201))

(declare-fun result!167244 () Bool)

(assert (= result!167244 result!167242))

(assert (=> b!2296695 t!205406))

(declare-fun b_and!182731 () Bool)

(assert (= b_and!182723 (and (=> t!205406 result!167244) b_and!182731)))

(declare-fun t!205408 () Bool)

(declare-fun tb!137203 () Bool)

(assert (=> (and b!2296430 (= (toChars!6039 (transformation!4378 (h!32739 rules!1750))) (toChars!6039 (transformation!4378 (rule!6718 (h!32738 tokens!456))))) t!205408) tb!137203))

(declare-fun result!167246 () Bool)

(assert (= result!167246 result!167242))

(assert (=> b!2296695 t!205408))

(declare-fun b_and!182733 () Bool)

(assert (= b_and!182725 (and (=> t!205408 result!167246) b_and!182733)))

(declare-fun t!205410 () Bool)

(declare-fun tb!137205 () Bool)

(assert (=> (and b!2296417 (= (toChars!6039 (transformation!4378 (rule!6718 (h!32738 tokens!456)))) (toChars!6039 (transformation!4378 (rule!6718 (h!32738 tokens!456))))) t!205410) tb!137205))

(declare-fun result!167248 () Bool)

(assert (= result!167248 result!167242))

(assert (=> b!2296695 t!205410))

(declare-fun b_and!182735 () Bool)

(assert (= b_and!182727 (and (=> t!205410 result!167248) b_and!182735)))

(declare-fun m!2724187 () Bool)

(assert (=> d!679377 m!2724187))

(declare-fun m!2724189 () Bool)

(assert (=> b!2296695 m!2724189))

(assert (=> b!2296695 m!2724189))

(declare-fun m!2724191 () Bool)

(assert (=> b!2296695 m!2724191))

(declare-fun m!2724193 () Bool)

(assert (=> b!2296696 m!2724193))

(assert (=> b!2296426 d!679377))

(declare-fun d!679379 () Bool)

(declare-fun lt!852078 () Bool)

(assert (=> d!679379 (= lt!852078 (set.member r!2363 (content!3674 rules!1750)))))

(declare-fun e!1471718 () Bool)

(assert (=> d!679379 (= lt!852078 e!1471718)))

(declare-fun res!981955 () Bool)

(assert (=> d!679379 (=> (not res!981955) (not e!1471718))))

(assert (=> d!679379 (= res!981955 (is-Cons!27338 rules!1750))))

(assert (=> d!679379 (= (contains!4760 rules!1750 r!2363) lt!852078)))

(declare-fun b!2296698 () Bool)

(declare-fun e!1471717 () Bool)

(assert (=> b!2296698 (= e!1471718 e!1471717)))

(declare-fun res!981956 () Bool)

(assert (=> b!2296698 (=> res!981956 e!1471717)))

(assert (=> b!2296698 (= res!981956 (= (h!32739 rules!1750) r!2363))))

(declare-fun b!2296699 () Bool)

(assert (=> b!2296699 (= e!1471717 (contains!4760 (t!205382 rules!1750) r!2363))))

(assert (= (and d!679379 res!981955) b!2296698))

(assert (= (and b!2296698 (not res!981956)) b!2296699))

(assert (=> d!679379 m!2724047))

(declare-fun m!2724195 () Bool)

(assert (=> d!679379 m!2724195))

(declare-fun m!2724197 () Bool)

(assert (=> b!2296699 m!2724197))

(assert (=> b!2296415 d!679379))

(declare-fun d!679381 () Bool)

(assert (=> d!679381 (= (inv!36952 (tag!4868 (rule!6718 (h!32738 tokens!456)))) (= (mod (str.len (value!138593 (tag!4868 (rule!6718 (h!32738 tokens!456))))) 2) 0))))

(assert (=> b!2296425 d!679381))

(declare-fun d!679383 () Bool)

(declare-fun res!981957 () Bool)

(declare-fun e!1471719 () Bool)

(assert (=> d!679383 (=> (not res!981957) (not e!1471719))))

(assert (=> d!679383 (= res!981957 (semiInverseModEq!1775 (toChars!6039 (transformation!4378 (rule!6718 (h!32738 tokens!456)))) (toValue!6180 (transformation!4378 (rule!6718 (h!32738 tokens!456))))))))

(assert (=> d!679383 (= (inv!36955 (transformation!4378 (rule!6718 (h!32738 tokens!456)))) e!1471719)))

(declare-fun b!2296700 () Bool)

(assert (=> b!2296700 (= e!1471719 (equivClasses!1694 (toChars!6039 (transformation!4378 (rule!6718 (h!32738 tokens!456)))) (toValue!6180 (transformation!4378 (rule!6718 (h!32738 tokens!456))))))))

(assert (= (and d!679383 res!981957) b!2296700))

(declare-fun m!2724199 () Bool)

(assert (=> d!679383 m!2724199))

(declare-fun m!2724201 () Bool)

(assert (=> b!2296700 m!2724201))

(assert (=> b!2296425 d!679383))

(declare-fun d!679385 () Bool)

(declare-fun list!10739 (Conc!8905) List!27431)

(assert (=> d!679385 (= (list!10734 (_1!16100 lt!851992)) (list!10739 (c!364123 (_1!16100 lt!851992))))))

(declare-fun bs!457437 () Bool)

(assert (= bs!457437 d!679385))

(declare-fun m!2724203 () Bool)

(assert (=> bs!457437 m!2724203))

(assert (=> b!2296403 d!679385))

(declare-fun d!679387 () Bool)

(assert (=> d!679387 (= (list!10735 (_2!16100 lt!851992)) (list!10738 (c!364121 (_2!16100 lt!851992))))))

(declare-fun bs!457438 () Bool)

(assert (= bs!457438 d!679387))

(declare-fun m!2724205 () Bool)

(assert (=> bs!457438 m!2724205))

(assert (=> b!2296403 d!679387))

(declare-fun b!2296726 () Bool)

(declare-fun e!1471735 () Bool)

(declare-fun lt!852084 () tuple2!27180)

(declare-fun isEmpty!15590 (BalanceConc!17538) Bool)

(assert (=> b!2296726 (= e!1471735 (not (isEmpty!15590 (_1!16100 lt!852084))))))

(declare-fun b!2296727 () Bool)

(declare-fun e!1471736 () Bool)

(assert (=> b!2296727 (= e!1471736 e!1471735)))

(declare-fun res!981975 () Bool)

(assert (=> b!2296727 (= res!981975 (< (size!21540 (_2!16100 lt!852084)) (size!21540 (seqFromList!3082 input!1722))))))

(assert (=> b!2296727 (=> (not res!981975) (not e!1471735))))

(declare-fun b!2296728 () Bool)

(declare-fun res!981973 () Bool)

(declare-fun e!1471737 () Bool)

(assert (=> b!2296728 (=> (not res!981973) (not e!1471737))))

(declare-fun lexList!1119 (LexerInterface!3975 List!27432 List!27430) tuple2!27182)

(assert (=> b!2296728 (= res!981973 (= (list!10734 (_1!16100 lt!852084)) (_1!16101 (lexList!1119 thiss!16613 rules!1750 (list!10735 (seqFromList!3082 input!1722))))))))

(declare-fun b!2296729 () Bool)

(assert (=> b!2296729 (= e!1471737 (= (list!10735 (_2!16100 lt!852084)) (_2!16101 (lexList!1119 thiss!16613 rules!1750 (list!10735 (seqFromList!3082 input!1722))))))))

(declare-fun b!2296730 () Bool)

(assert (=> b!2296730 (= e!1471736 (= (_2!16100 lt!852084) (seqFromList!3082 input!1722)))))

(declare-fun d!679389 () Bool)

(assert (=> d!679389 e!1471737))

(declare-fun res!981974 () Bool)

(assert (=> d!679389 (=> (not res!981974) (not e!1471737))))

(assert (=> d!679389 (= res!981974 e!1471736)))

(declare-fun c!364171 () Bool)

(declare-fun size!21546 (BalanceConc!17538) Int)

(assert (=> d!679389 (= c!364171 (> (size!21546 (_1!16100 lt!852084)) 0))))

(declare-fun lexTailRecV2!794 (LexerInterface!3975 List!27432 BalanceConc!17536 BalanceConc!17536 BalanceConc!17536 BalanceConc!17538) tuple2!27180)

(assert (=> d!679389 (= lt!852084 (lexTailRecV2!794 thiss!16613 rules!1750 (seqFromList!3082 input!1722) (BalanceConc!17537 Empty!8904) (seqFromList!3082 input!1722) (BalanceConc!17539 Empty!8905)))))

(assert (=> d!679389 (= (lex!1814 thiss!16613 rules!1750 (seqFromList!3082 input!1722)) lt!852084)))

(assert (= (and d!679389 c!364171) b!2296727))

(assert (= (and d!679389 (not c!364171)) b!2296730))

(assert (= (and b!2296727 res!981975) b!2296726))

(assert (= (and d!679389 res!981974) b!2296728))

(assert (= (and b!2296728 res!981973) b!2296729))

(declare-fun m!2724225 () Bool)

(assert (=> b!2296727 m!2724225))

(assert (=> b!2296727 m!2723907))

(declare-fun m!2724227 () Bool)

(assert (=> b!2296727 m!2724227))

(declare-fun m!2724229 () Bool)

(assert (=> b!2296726 m!2724229))

(declare-fun m!2724231 () Bool)

(assert (=> b!2296728 m!2724231))

(assert (=> b!2296728 m!2723907))

(declare-fun m!2724233 () Bool)

(assert (=> b!2296728 m!2724233))

(assert (=> b!2296728 m!2724233))

(declare-fun m!2724235 () Bool)

(assert (=> b!2296728 m!2724235))

(declare-fun m!2724237 () Bool)

(assert (=> d!679389 m!2724237))

(assert (=> d!679389 m!2723907))

(assert (=> d!679389 m!2723907))

(declare-fun m!2724239 () Bool)

(assert (=> d!679389 m!2724239))

(declare-fun m!2724241 () Bool)

(assert (=> b!2296729 m!2724241))

(assert (=> b!2296729 m!2723907))

(assert (=> b!2296729 m!2724233))

(assert (=> b!2296729 m!2724233))

(assert (=> b!2296729 m!2724235))

(assert (=> b!2296403 d!679389))

(declare-fun d!679393 () Bool)

(declare-fun fromListB!1385 (List!27430) BalanceConc!17536)

(assert (=> d!679393 (= (seqFromList!3082 input!1722) (fromListB!1385 input!1722))))

(declare-fun bs!457440 () Bool)

(assert (= bs!457440 d!679393))

(declare-fun m!2724245 () Bool)

(assert (=> bs!457440 m!2724245))

(assert (=> b!2296403 d!679393))

(declare-fun d!679397 () Bool)

(assert (=> d!679397 (= (inv!36952 (tag!4868 otherR!12)) (= (mod (str.len (value!138593 (tag!4868 otherR!12))) 2) 0))))

(assert (=> b!2296424 d!679397))

(declare-fun d!679399 () Bool)

(declare-fun res!981976 () Bool)

(declare-fun e!1471738 () Bool)

(assert (=> d!679399 (=> (not res!981976) (not e!1471738))))

(assert (=> d!679399 (= res!981976 (semiInverseModEq!1775 (toChars!6039 (transformation!4378 otherR!12)) (toValue!6180 (transformation!4378 otherR!12))))))

(assert (=> d!679399 (= (inv!36955 (transformation!4378 otherR!12)) e!1471738)))

(declare-fun b!2296731 () Bool)

(assert (=> b!2296731 (= e!1471738 (equivClasses!1694 (toChars!6039 (transformation!4378 otherR!12)) (toValue!6180 (transformation!4378 otherR!12))))))

(assert (= (and d!679399 res!981976) b!2296731))

(declare-fun m!2724247 () Bool)

(assert (=> d!679399 m!2724247))

(declare-fun m!2724249 () Bool)

(assert (=> b!2296731 m!2724249))

(assert (=> b!2296424 d!679399))

(declare-fun d!679401 () Bool)

(assert (=> d!679401 (= r!2363 otherR!12)))

(declare-fun lt!852087 () Unit!40227)

(declare-fun choose!13406 (List!27432 Rule!8556 Rule!8556) Unit!40227)

(assert (=> d!679401 (= lt!852087 (choose!13406 rules!1750 r!2363 otherR!12))))

(assert (=> d!679401 (contains!4760 rules!1750 r!2363)))

(assert (=> d!679401 (= (lemmaSameIndexThenSameElement!171 rules!1750 r!2363 otherR!12) lt!852087)))

(declare-fun bs!457441 () Bool)

(assert (= bs!457441 d!679401))

(declare-fun m!2724251 () Bool)

(assert (=> bs!457441 m!2724251))

(assert (=> bs!457441 m!2723949))

(assert (=> b!2296434 d!679401))

(declare-fun d!679403 () Bool)

(assert (=> d!679403 (= (isEmpty!15585 rules!1750) (is-Nil!27338 rules!1750))))

(assert (=> b!2296433 d!679403))

(declare-fun d!679405 () Bool)

(assert (=> d!679405 (= (isEmpty!15584 tokens!456) (is-Nil!27337 tokens!456))))

(assert (=> b!2296411 d!679405))

(declare-fun d!679407 () Bool)

(assert (=> d!679407 (= (inv!36952 (tag!4868 r!2363)) (= (mod (str.len (value!138593 (tag!4868 r!2363))) 2) 0))))

(assert (=> b!2296410 d!679407))

(declare-fun d!679409 () Bool)

(declare-fun res!981977 () Bool)

(declare-fun e!1471739 () Bool)

(assert (=> d!679409 (=> (not res!981977) (not e!1471739))))

(assert (=> d!679409 (= res!981977 (semiInverseModEq!1775 (toChars!6039 (transformation!4378 r!2363)) (toValue!6180 (transformation!4378 r!2363))))))

(assert (=> d!679409 (= (inv!36955 (transformation!4378 r!2363)) e!1471739)))

(declare-fun b!2296732 () Bool)

(assert (=> b!2296732 (= e!1471739 (equivClasses!1694 (toChars!6039 (transformation!4378 r!2363)) (toValue!6180 (transformation!4378 r!2363))))))

(assert (= (and d!679409 res!981977) b!2296732))

(declare-fun m!2724253 () Bool)

(assert (=> d!679409 m!2724253))

(declare-fun m!2724255 () Bool)

(assert (=> b!2296732 m!2724255))

(assert (=> b!2296410 d!679409))

(declare-fun d!679411 () Bool)

(declare-fun res!981986 () Bool)

(declare-fun e!1471752 () Bool)

(assert (=> d!679411 (=> (not res!981986) (not e!1471752))))

(declare-fun rulesValid!1619 (LexerInterface!3975 List!27432) Bool)

(assert (=> d!679411 (= res!981986 (rulesValid!1619 thiss!16613 rules!1750))))

(assert (=> d!679411 (= (rulesInvariant!3477 thiss!16613 rules!1750) e!1471752)))

(declare-fun b!2296751 () Bool)

(declare-datatypes ((List!27437 0))(
  ( (Nil!27343) (Cons!27343 (h!32744 String!29806) (t!205435 List!27437)) )
))
(declare-fun noDuplicateTag!1617 (LexerInterface!3975 List!27432 List!27437) Bool)

(assert (=> b!2296751 (= e!1471752 (noDuplicateTag!1617 thiss!16613 rules!1750 Nil!27343))))

(assert (= (and d!679411 res!981986) b!2296751))

(declare-fun m!2724257 () Bool)

(assert (=> d!679411 m!2724257))

(declare-fun m!2724259 () Bool)

(assert (=> b!2296751 m!2724259))

(assert (=> b!2296420 d!679411))

(declare-fun d!679413 () Bool)

(declare-fun lt!852092 () Int)

(assert (=> d!679413 (= lt!852092 (size!21541 (list!10735 (charsOf!2766 (head!5013 tokens!456)))))))

(declare-fun size!21547 (Conc!8904) Int)

(assert (=> d!679413 (= lt!852092 (size!21547 (c!364121 (charsOf!2766 (head!5013 tokens!456)))))))

(assert (=> d!679413 (= (size!21540 (charsOf!2766 (head!5013 tokens!456))) lt!852092)))

(declare-fun bs!457442 () Bool)

(assert (= bs!457442 d!679413))

(assert (=> bs!457442 m!2723921))

(assert (=> bs!457442 m!2723923))

(assert (=> bs!457442 m!2723923))

(declare-fun m!2724261 () Bool)

(assert (=> bs!457442 m!2724261))

(declare-fun m!2724263 () Bool)

(assert (=> bs!457442 m!2724263))

(assert (=> b!2296409 d!679413))

(assert (=> b!2296409 d!679367))

(assert (=> b!2296409 d!679361))

(declare-fun d!679415 () Bool)

(declare-fun lt!852095 () Int)

(assert (=> d!679415 (>= lt!852095 0)))

(declare-fun e!1471759 () Int)

(assert (=> d!679415 (= lt!852095 e!1471759)))

(declare-fun c!364180 () Bool)

(assert (=> d!679415 (= c!364180 (is-Nil!27336 otherP!12))))

(assert (=> d!679415 (= (size!21541 otherP!12) lt!852095)))

(declare-fun b!2296768 () Bool)

(assert (=> b!2296768 (= e!1471759 0)))

(declare-fun b!2296769 () Bool)

(assert (=> b!2296769 (= e!1471759 (+ 1 (size!21541 (t!205380 otherP!12))))))

(assert (= (and d!679415 c!364180) b!2296768))

(assert (= (and d!679415 (not c!364180)) b!2296769))

(declare-fun m!2724265 () Bool)

(assert (=> b!2296769 m!2724265))

(assert (=> b!2296409 d!679415))

(declare-fun b!2296796 () Bool)

(declare-fun e!1471769 () Bool)

(declare-fun tp!728407 () Bool)

(assert (=> b!2296796 (= e!1471769 tp!728407)))

(declare-fun b!2296795 () Bool)

(declare-fun tp!728408 () Bool)

(declare-fun tp!728410 () Bool)

(assert (=> b!2296795 (= e!1471769 (and tp!728408 tp!728410))))

(declare-fun b!2296794 () Bool)

(assert (=> b!2296794 (= e!1471769 tp_is_empty!10673)))

(assert (=> b!2296408 (= tp!728318 e!1471769)))

(declare-fun b!2296797 () Bool)

(declare-fun tp!728409 () Bool)

(declare-fun tp!728411 () Bool)

(assert (=> b!2296797 (= e!1471769 (and tp!728409 tp!728411))))

(assert (= (and b!2296408 (is-ElementMatch!6726 (regex!4378 (h!32739 rules!1750)))) b!2296794))

(assert (= (and b!2296408 (is-Concat!11267 (regex!4378 (h!32739 rules!1750)))) b!2296795))

(assert (= (and b!2296408 (is-Star!6726 (regex!4378 (h!32739 rules!1750)))) b!2296796))

(assert (= (and b!2296408 (is-Union!6726 (regex!4378 (h!32739 rules!1750)))) b!2296797))

(declare-fun b!2296802 () Bool)

(declare-fun e!1471772 () Bool)

(declare-fun tp!728414 () Bool)

(assert (=> b!2296802 (= e!1471772 (and tp_is_empty!10673 tp!728414))))

(assert (=> b!2296406 (= tp!728335 e!1471772)))

(assert (= (and b!2296406 (is-Cons!27336 (originalCharacters!5148 (h!32738 tokens!456)))) b!2296802))

(declare-fun b!2296816 () Bool)

(declare-fun b_free!69181 () Bool)

(declare-fun b_next!69885 () Bool)

(assert (=> b!2296816 (= b_free!69181 (not b_next!69885))))

(declare-fun tp!728426 () Bool)

(declare-fun b_and!182737 () Bool)

(assert (=> b!2296816 (= tp!728426 b_and!182737)))

(declare-fun b_free!69183 () Bool)

(declare-fun b_next!69887 () Bool)

(assert (=> b!2296816 (= b_free!69183 (not b_next!69887))))

(declare-fun t!205412 () Bool)

(declare-fun tb!137207 () Bool)

(assert (=> (and b!2296816 (= (toChars!6039 (transformation!4378 (rule!6718 (h!32738 (t!205381 tokens!456))))) (toChars!6039 (transformation!4378 (rule!6718 (head!5013 tokens!456))))) t!205412) tb!137207))

(declare-fun result!167256 () Bool)

(assert (= result!167256 result!167232))

(assert (=> d!679367 t!205412))

(declare-fun t!205414 () Bool)

(declare-fun tb!137209 () Bool)

(assert (=> (and b!2296816 (= (toChars!6039 (transformation!4378 (rule!6718 (h!32738 (t!205381 tokens!456))))) (toChars!6039 (transformation!4378 (rule!6718 (h!32738 tokens!456))))) t!205414) tb!137209))

(declare-fun result!167258 () Bool)

(assert (= result!167258 result!167242))

(assert (=> b!2296695 t!205414))

(declare-fun b_and!182739 () Bool)

(declare-fun tp!728428 () Bool)

(assert (=> b!2296816 (= tp!728428 (and (=> t!205412 result!167256) (=> t!205414 result!167258) b_and!182739))))

(declare-fun e!1471786 () Bool)

(declare-fun b!2296814 () Bool)

(declare-fun e!1471788 () Bool)

(declare-fun tp!728429 () Bool)

(assert (=> b!2296814 (= e!1471786 (and (inv!21 (value!138594 (h!32738 (t!205381 tokens!456)))) e!1471788 tp!728429))))

(declare-fun e!1471785 () Bool)

(assert (=> b!2296816 (= e!1471785 (and tp!728426 tp!728428))))

(declare-fun tp!728425 () Bool)

(declare-fun b!2296813 () Bool)

(declare-fun e!1471787 () Bool)

(assert (=> b!2296813 (= e!1471787 (and (inv!36956 (h!32738 (t!205381 tokens!456))) e!1471786 tp!728425))))

(declare-fun tp!728427 () Bool)

(declare-fun b!2296815 () Bool)

(assert (=> b!2296815 (= e!1471788 (and tp!728427 (inv!36952 (tag!4868 (rule!6718 (h!32738 (t!205381 tokens!456))))) (inv!36955 (transformation!4378 (rule!6718 (h!32738 (t!205381 tokens!456))))) e!1471785))))

(assert (=> b!2296426 (= tp!728323 e!1471787)))

(assert (= b!2296815 b!2296816))

(assert (= b!2296814 b!2296815))

(assert (= b!2296813 b!2296814))

(assert (= (and b!2296426 (is-Cons!27337 (t!205381 tokens!456))) b!2296813))

(declare-fun m!2724285 () Bool)

(assert (=> b!2296814 m!2724285))

(declare-fun m!2724287 () Bool)

(assert (=> b!2296813 m!2724287))

(declare-fun m!2724289 () Bool)

(assert (=> b!2296815 m!2724289))

(declare-fun m!2724291 () Bool)

(assert (=> b!2296815 m!2724291))

(declare-fun b!2296817 () Bool)

(declare-fun e!1471791 () Bool)

(declare-fun tp!728430 () Bool)

(assert (=> b!2296817 (= e!1471791 (and tp_is_empty!10673 tp!728430))))

(assert (=> b!2296404 (= tp!728331 e!1471791)))

(assert (= (and b!2296404 (is-Cons!27336 (t!205380 suffix!886))) b!2296817))

(declare-fun b!2296820 () Bool)

(declare-fun e!1471792 () Bool)

(declare-fun tp!728431 () Bool)

(assert (=> b!2296820 (= e!1471792 tp!728431)))

(declare-fun b!2296819 () Bool)

(declare-fun tp!728432 () Bool)

(declare-fun tp!728434 () Bool)

(assert (=> b!2296819 (= e!1471792 (and tp!728432 tp!728434))))

(declare-fun b!2296818 () Bool)

(assert (=> b!2296818 (= e!1471792 tp_is_empty!10673)))

(assert (=> b!2296425 (= tp!728324 e!1471792)))

(declare-fun b!2296821 () Bool)

(declare-fun tp!728433 () Bool)

(declare-fun tp!728435 () Bool)

(assert (=> b!2296821 (= e!1471792 (and tp!728433 tp!728435))))

(assert (= (and b!2296425 (is-ElementMatch!6726 (regex!4378 (rule!6718 (h!32738 tokens!456))))) b!2296818))

(assert (= (and b!2296425 (is-Concat!11267 (regex!4378 (rule!6718 (h!32738 tokens!456))))) b!2296819))

(assert (= (and b!2296425 (is-Star!6726 (regex!4378 (rule!6718 (h!32738 tokens!456))))) b!2296820))

(assert (= (and b!2296425 (is-Union!6726 (regex!4378 (rule!6718 (h!32738 tokens!456))))) b!2296821))

(declare-fun b!2296822 () Bool)

(declare-fun e!1471793 () Bool)

(declare-fun tp!728436 () Bool)

(assert (=> b!2296822 (= e!1471793 (and tp_is_empty!10673 tp!728436))))

(assert (=> b!2296414 (= tp!728322 e!1471793)))

(assert (= (and b!2296414 (is-Cons!27336 (t!205380 otherP!12))) b!2296822))

(declare-fun b!2296825 () Bool)

(declare-fun e!1471794 () Bool)

(declare-fun tp!728437 () Bool)

(assert (=> b!2296825 (= e!1471794 tp!728437)))

(declare-fun b!2296824 () Bool)

(declare-fun tp!728438 () Bool)

(declare-fun tp!728440 () Bool)

(assert (=> b!2296824 (= e!1471794 (and tp!728438 tp!728440))))

(declare-fun b!2296823 () Bool)

(assert (=> b!2296823 (= e!1471794 tp_is_empty!10673)))

(assert (=> b!2296424 (= tp!728320 e!1471794)))

(declare-fun b!2296826 () Bool)

(declare-fun tp!728439 () Bool)

(declare-fun tp!728441 () Bool)

(assert (=> b!2296826 (= e!1471794 (and tp!728439 tp!728441))))

(assert (= (and b!2296424 (is-ElementMatch!6726 (regex!4378 otherR!12))) b!2296823))

(assert (= (and b!2296424 (is-Concat!11267 (regex!4378 otherR!12))) b!2296824))

(assert (= (and b!2296424 (is-Star!6726 (regex!4378 otherR!12))) b!2296825))

(assert (= (and b!2296424 (is-Union!6726 (regex!4378 otherR!12))) b!2296826))

(declare-fun b!2296827 () Bool)

(declare-fun e!1471795 () Bool)

(declare-fun tp!728442 () Bool)

(assert (=> b!2296827 (= e!1471795 (and tp_is_empty!10673 tp!728442))))

(assert (=> b!2296432 (= tp!728332 e!1471795)))

(assert (= (and b!2296432 (is-Cons!27336 (t!205380 input!1722))) b!2296827))

(declare-fun b!2296838 () Bool)

(declare-fun b_free!69185 () Bool)

(declare-fun b_next!69889 () Bool)

(assert (=> b!2296838 (= b_free!69185 (not b_next!69889))))

(declare-fun tp!728453 () Bool)

(declare-fun b_and!182741 () Bool)

(assert (=> b!2296838 (= tp!728453 b_and!182741)))

(declare-fun b_free!69187 () Bool)

(declare-fun b_next!69891 () Bool)

(assert (=> b!2296838 (= b_free!69187 (not b_next!69891))))

(declare-fun t!205416 () Bool)

(declare-fun tb!137211 () Bool)

(assert (=> (and b!2296838 (= (toChars!6039 (transformation!4378 (h!32739 (t!205382 rules!1750)))) (toChars!6039 (transformation!4378 (rule!6718 (head!5013 tokens!456))))) t!205416) tb!137211))

(declare-fun result!167262 () Bool)

(assert (= result!167262 result!167232))

(assert (=> d!679367 t!205416))

(declare-fun tb!137213 () Bool)

(declare-fun t!205418 () Bool)

(assert (=> (and b!2296838 (= (toChars!6039 (transformation!4378 (h!32739 (t!205382 rules!1750)))) (toChars!6039 (transformation!4378 (rule!6718 (h!32738 tokens!456))))) t!205418) tb!137213))

(declare-fun result!167264 () Bool)

(assert (= result!167264 result!167242))

(assert (=> b!2296695 t!205418))

(declare-fun tp!728451 () Bool)

(declare-fun b_and!182743 () Bool)

(assert (=> b!2296838 (= tp!728451 (and (=> t!205416 result!167262) (=> t!205418 result!167264) b_and!182743))))

(declare-fun e!1471804 () Bool)

(assert (=> b!2296838 (= e!1471804 (and tp!728453 tp!728451))))

(declare-fun b!2296837 () Bool)

(declare-fun tp!728454 () Bool)

(declare-fun e!1471806 () Bool)

(assert (=> b!2296837 (= e!1471806 (and tp!728454 (inv!36952 (tag!4868 (h!32739 (t!205382 rules!1750)))) (inv!36955 (transformation!4378 (h!32739 (t!205382 rules!1750)))) e!1471804))))

(declare-fun b!2296836 () Bool)

(declare-fun e!1471807 () Bool)

(declare-fun tp!728452 () Bool)

(assert (=> b!2296836 (= e!1471807 (and e!1471806 tp!728452))))

(assert (=> b!2296421 (= tp!728326 e!1471807)))

(assert (= b!2296837 b!2296838))

(assert (= b!2296836 b!2296837))

(assert (= (and b!2296421 (is-Cons!27338 (t!205382 rules!1750))) b!2296836))

(declare-fun m!2724293 () Bool)

(assert (=> b!2296837 m!2724293))

(declare-fun m!2724295 () Bool)

(assert (=> b!2296837 m!2724295))

(declare-fun b!2296841 () Bool)

(declare-fun e!1471808 () Bool)

(declare-fun tp!728455 () Bool)

(assert (=> b!2296841 (= e!1471808 tp!728455)))

(declare-fun b!2296840 () Bool)

(declare-fun tp!728456 () Bool)

(declare-fun tp!728458 () Bool)

(assert (=> b!2296840 (= e!1471808 (and tp!728456 tp!728458))))

(declare-fun b!2296839 () Bool)

(assert (=> b!2296839 (= e!1471808 tp_is_empty!10673)))

(assert (=> b!2296410 (= tp!728333 e!1471808)))

(declare-fun b!2296842 () Bool)

(declare-fun tp!728457 () Bool)

(declare-fun tp!728459 () Bool)

(assert (=> b!2296842 (= e!1471808 (and tp!728457 tp!728459))))

(assert (= (and b!2296410 (is-ElementMatch!6726 (regex!4378 r!2363))) b!2296839))

(assert (= (and b!2296410 (is-Concat!11267 (regex!4378 r!2363))) b!2296840))

(assert (= (and b!2296410 (is-Star!6726 (regex!4378 r!2363))) b!2296841))

(assert (= (and b!2296410 (is-Union!6726 (regex!4378 r!2363))) b!2296842))

(declare-fun b_lambda!73187 () Bool)

(assert (= b_lambda!73185 (or (and b!2296417 b_free!69163) (and b!2296816 b_free!69183 (= (toChars!6039 (transformation!4378 (rule!6718 (h!32738 (t!205381 tokens!456))))) (toChars!6039 (transformation!4378 (rule!6718 (h!32738 tokens!456)))))) (and b!2296838 b_free!69187 (= (toChars!6039 (transformation!4378 (h!32739 (t!205382 rules!1750)))) (toChars!6039 (transformation!4378 (rule!6718 (h!32738 tokens!456)))))) (and b!2296413 b_free!69151 (= (toChars!6039 (transformation!4378 otherR!12)) (toChars!6039 (transformation!4378 (rule!6718 (h!32738 tokens!456)))))) (and b!2296431 b_free!69155 (= (toChars!6039 (transformation!4378 r!2363)) (toChars!6039 (transformation!4378 (rule!6718 (h!32738 tokens!456)))))) (and b!2296430 b_free!69159 (= (toChars!6039 (transformation!4378 (h!32739 rules!1750))) (toChars!6039 (transformation!4378 (rule!6718 (h!32738 tokens!456)))))) b_lambda!73187)))

(push 1)

(assert (not b!2296824))

(assert (not d!679323))

(assert (not b!2296622))

(assert (not b_next!69861))

(assert (not b!2296687))

(assert (not b!2296827))

(assert (not b!2296727))

(assert (not d!679373))

(assert (not d!679399))

(assert (not b!2296814))

(assert (not b_lambda!73187))

(assert (not b!2296769))

(assert (not b!2296840))

(assert b_and!182741)

(assert (not b_lambda!73183))

(assert (not b!2296565))

(assert (not d!679369))

(assert (not b!2296696))

(assert (not b!2296596))

(assert (not b_next!69887))

(assert b_and!182689)

(assert (not b!2296836))

(assert (not b!2296599))

(assert (not b!2296817))

(assert (not b!2296842))

(assert (not b!2296826))

(assert (not b!2296666))

(assert (not b!2296815))

(assert (not d!679385))

(assert b_and!182693)

(assert (not b!2296601))

(assert (not b!2296841))

(assert (not d!679357))

(assert (not d!679413))

(assert (not d!679409))

(assert (not b!2296700))

(assert (not b_next!69853))

(assert (not b!2296729))

(assert b_and!182737)

(assert (not d!679331))

(assert (not b!2296837))

(assert (not b!2296813))

(assert (not b!2296603))

(assert b_and!182729)

(assert (not b!2296695))

(assert (not d!679411))

(assert (not b!2296797))

(assert (not b!2296602))

(assert (not b!2296621))

(assert (not b!2296600))

(assert (not d!679355))

(assert (not d!679339))

(assert (not b!2296822))

(assert (not b_next!69889))

(assert (not b!2296731))

(assert (not b!2296604))

(assert (not b!2296751))

(assert (not b_next!69857))

(assert tp_is_empty!10673)

(assert (not d!679383))

(assert (not b!2296726))

(assert (not d!679371))

(assert (not d!679387))

(assert (not b!2296683))

(assert (not b!2296732))

(assert (not d!679377))

(assert (not b_next!69855))

(assert (not b!2296796))

(assert (not b!2296663))

(assert (not b!2296821))

(assert (not d!679375))

(assert (not tb!137191))

(assert (not d!679363))

(assert (not d!679379))

(assert (not b!2296697))

(assert (not b!2296825))

(assert b_and!182735)

(assert (not b!2296820))

(assert (not b_next!69863))

(assert b_and!182681)

(assert (not b!2296819))

(assert (not d!679367))

(assert (not b!2296660))

(assert (not b_next!69859))

(assert (not b!2296609))

(assert (not b!2296566))

(assert (not d!679365))

(assert (not b!2296549))

(assert (not d!679353))

(assert (not b!2296689))

(assert (not b!2296795))

(assert (not b_next!69885))

(assert (not b!2296564))

(assert b_and!182685)

(assert b_and!182733)

(assert (not b!2296536))

(assert (not b!2296728))

(assert (not b!2296656))

(assert b_and!182731)

(assert (not b!2296699))

(assert (not b!2296598))

(assert b_and!182739)

(assert (not b!2296623))

(assert (not b_next!69867))

(assert b_and!182743)

(assert (not d!679389))

(assert (not bm!136898))

(assert (not b!2296802))

(assert (not d!679401))

(assert (not b_next!69865))

(assert (not b!2296658))

(assert (not d!679393))

(assert (not b!2296659))

(assert (not tb!137199))

(assert (not b_next!69891))

(assert (not b!2296672))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!69861))

(assert b_and!182741)

(assert b_and!182693)

(assert (not b_next!69853))

(assert b_and!182737)

(assert b_and!182729)

(assert (not b_next!69889))

(assert (not b_next!69857))

(assert (not b_next!69855))

(assert (not b_next!69885))

(assert (not b_next!69865))

(assert (not b_next!69891))

(assert (not b_next!69887))

(assert b_and!182689)

(assert b_and!182735)

(assert (not b_next!69863))

(assert b_and!182681)

(assert (not b_next!69859))

(assert b_and!182685)

(assert b_and!182733)

(assert b_and!182739)

(assert b_and!182731)

(assert (not b_next!69867))

(assert b_and!182743)

(check-sat)

(pop 1)

