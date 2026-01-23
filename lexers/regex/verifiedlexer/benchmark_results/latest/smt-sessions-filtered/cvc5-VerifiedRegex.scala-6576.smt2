; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!347896 () Bool)

(assert start!347896)

(declare-fun b!3694544 () Bool)

(declare-fun b_free!98169 () Bool)

(declare-fun b_next!98873 () Bool)

(assert (=> b!3694544 (= b_free!98169 (not b_next!98873))))

(declare-fun tp!1122836 () Bool)

(declare-fun b_and!276075 () Bool)

(assert (=> b!3694544 (= tp!1122836 b_and!276075)))

(declare-fun b_free!98171 () Bool)

(declare-fun b_next!98875 () Bool)

(assert (=> b!3694544 (= b_free!98171 (not b_next!98875))))

(declare-fun tp!1122837 () Bool)

(declare-fun b_and!276077 () Bool)

(assert (=> b!3694544 (= tp!1122837 b_and!276077)))

(declare-fun b!3694541 () Bool)

(declare-fun b_free!98173 () Bool)

(declare-fun b_next!98877 () Bool)

(assert (=> b!3694541 (= b_free!98173 (not b_next!98877))))

(declare-fun tp!1122834 () Bool)

(declare-fun b_and!276079 () Bool)

(assert (=> b!3694541 (= tp!1122834 b_and!276079)))

(declare-fun b_free!98175 () Bool)

(declare-fun b_next!98879 () Bool)

(assert (=> b!3694541 (= b_free!98175 (not b_next!98879))))

(declare-fun tp!1122833 () Bool)

(declare-fun b_and!276081 () Bool)

(assert (=> b!3694541 (= tp!1122833 b_and!276081)))

(declare-fun b!3694539 () Bool)

(declare-fun res!1502118 () Bool)

(declare-fun e!2287763 () Bool)

(assert (=> b!3694539 (=> (not res!1502118) (not e!2287763))))

(declare-datatypes ((List!39296 0))(
  ( (Nil!39172) (Cons!39172 (h!44592 (_ BitVec 16)) (t!301619 List!39296)) )
))
(declare-datatypes ((TokenValue!6161 0))(
  ( (FloatLiteralValue!12322 (text!43572 List!39296)) (TokenValueExt!6160 (__x!24539 Int)) (Broken!30805 (value!189463 List!39296)) (Object!6284) (End!6161) (Def!6161) (Underscore!6161) (Match!6161) (Else!6161) (Error!6161) (Case!6161) (If!6161) (Extends!6161) (Abstract!6161) (Class!6161) (Val!6161) (DelimiterValue!12322 (del!6221 List!39296)) (KeywordValue!6167 (value!189464 List!39296)) (CommentValue!12322 (value!189465 List!39296)) (WhitespaceValue!12322 (value!189466 List!39296)) (IndentationValue!6161 (value!189467 List!39296)) (String!44140) (Int32!6161) (Broken!30806 (value!189468 List!39296)) (Boolean!6162) (Unit!57172) (OperatorValue!6164 (op!6221 List!39296)) (IdentifierValue!12322 (value!189469 List!39296)) (IdentifierValue!12323 (value!189470 List!39296)) (WhitespaceValue!12323 (value!189471 List!39296)) (True!12322) (False!12322) (Broken!30807 (value!189472 List!39296)) (Broken!30808 (value!189473 List!39296)) (True!12323) (RightBrace!6161) (RightBracket!6161) (Colon!6161) (Null!6161) (Comma!6161) (LeftBracket!6161) (False!12323) (LeftBrace!6161) (ImaginaryLiteralValue!6161 (text!43573 List!39296)) (StringLiteralValue!18483 (value!189474 List!39296)) (EOFValue!6161 (value!189475 List!39296)) (IdentValue!6161 (value!189476 List!39296)) (DelimiterValue!12323 (value!189477 List!39296)) (DedentValue!6161 (value!189478 List!39296)) (NewLineValue!6161 (value!189479 List!39296)) (IntegerValue!18483 (value!189480 (_ BitVec 32)) (text!43574 List!39296)) (IntegerValue!18484 (value!189481 Int) (text!43575 List!39296)) (Times!6161) (Or!6161) (Equal!6161) (Minus!6161) (Broken!30809 (value!189482 List!39296)) (And!6161) (Div!6161) (LessEqual!6161) (Mod!6161) (Concat!16851) (Not!6161) (Plus!6161) (SpaceValue!6161 (value!189483 List!39296)) (IntegerValue!18485 (value!189484 Int) (text!43576 List!39296)) (StringLiteralValue!18484 (text!43577 List!39296)) (FloatLiteralValue!12323 (text!43578 List!39296)) (BytesLiteralValue!6161 (value!189485 List!39296)) (CommentValue!12323 (value!189486 List!39296)) (StringLiteralValue!18485 (value!189487 List!39296)) (ErrorTokenValue!6161 (msg!6222 List!39296)) )
))
(declare-datatypes ((C!21566 0))(
  ( (C!21567 (val!12831 Int)) )
))
(declare-datatypes ((Regex!10690 0))(
  ( (ElementMatch!10690 (c!638735 C!21566)) (Concat!16852 (regOne!21892 Regex!10690) (regTwo!21892 Regex!10690)) (EmptyExpr!10690) (Star!10690 (reg!11019 Regex!10690)) (EmptyLang!10690) (Union!10690 (regOne!21893 Regex!10690) (regTwo!21893 Regex!10690)) )
))
(declare-datatypes ((String!44141 0))(
  ( (String!44142 (value!189488 String)) )
))
(declare-datatypes ((List!39297 0))(
  ( (Nil!39173) (Cons!39173 (h!44593 C!21566) (t!301620 List!39297)) )
))
(declare-datatypes ((IArray!24061 0))(
  ( (IArray!24062 (innerList!12088 List!39297)) )
))
(declare-datatypes ((Conc!12028 0))(
  ( (Node!12028 (left!30540 Conc!12028) (right!30870 Conc!12028) (csize!24286 Int) (cheight!12239 Int)) (Leaf!18605 (xs!15230 IArray!24061) (csize!24287 Int)) (Empty!12028) )
))
(declare-datatypes ((BalanceConc!23670 0))(
  ( (BalanceConc!23671 (c!638736 Conc!12028)) )
))
(declare-datatypes ((TokenValueInjection!11750 0))(
  ( (TokenValueInjection!11751 (toValue!8263 Int) (toChars!8122 Int)) )
))
(declare-datatypes ((Rule!11662 0))(
  ( (Rule!11663 (regex!5931 Regex!10690) (tag!6753 String!44141) (isSeparator!5931 Bool) (transformation!5931 TokenValueInjection!11750)) )
))
(declare-datatypes ((List!39298 0))(
  ( (Nil!39174) (Cons!39174 (h!44594 Rule!11662) (t!301621 List!39298)) )
))
(declare-fun rules!3598 () List!39298)

(declare-datatypes ((Token!11216 0))(
  ( (Token!11217 (value!189489 TokenValue!6161) (rule!8783 Rule!11662) (size!29906 Int) (originalCharacters!6639 List!39297)) )
))
(declare-fun token!544 () Token!11216)

(declare-fun matchR!5233 (Regex!10690 List!39297) Bool)

(declare-fun list!14642 (BalanceConc!23670) List!39297)

(declare-fun charsOf!3930 (Token!11216) BalanceConc!23670)

(assert (=> b!3694539 (= res!1502118 (matchR!5233 (regex!5931 (h!44594 rules!3598)) (list!14642 (charsOf!3930 token!544))))))

(declare-fun b!3694540 () Bool)

(declare-fun res!1502116 () Bool)

(assert (=> b!3694540 (=> (not res!1502116) (not e!2287763))))

(assert (=> b!3694540 (= res!1502116 (= (h!44594 rules!3598) (rule!8783 token!544)))))

(declare-fun e!2287770 () Bool)

(assert (=> b!3694541 (= e!2287770 (and tp!1122834 tp!1122833))))

(declare-fun b!3694542 () Bool)

(declare-fun e!2287765 () Bool)

(declare-fun tp_is_empty!18455 () Bool)

(declare-fun tp!1122835 () Bool)

(assert (=> b!3694542 (= e!2287765 (and tp_is_empty!18455 tp!1122835))))

(declare-fun b!3694543 () Bool)

(declare-fun e!2287771 () Bool)

(declare-datatypes ((Option!8445 0))(
  ( (None!8444) (Some!8444 (v!38402 Rule!11662)) )
))
(declare-fun lt!1293287 () Option!8445)

(declare-fun validRegex!4893 (Regex!10690) Bool)

(declare-fun get!13000 (Option!8445) Rule!11662)

(assert (=> b!3694543 (= e!2287771 (not (validRegex!4893 (regex!5931 (get!13000 lt!1293287)))))))

(declare-fun e!2287776 () Bool)

(assert (=> b!3694544 (= e!2287776 (and tp!1122836 tp!1122837))))

(declare-fun b!3694546 () Bool)

(declare-fun e!2287766 () Bool)

(assert (=> b!3694546 (= e!2287766 e!2287763)))

(declare-fun res!1502113 () Bool)

(assert (=> b!3694546 (=> (not res!1502113) (not e!2287763))))

(declare-datatypes ((tuple2!39068 0))(
  ( (tuple2!39069 (_1!22668 Token!11216) (_2!22668 List!39297)) )
))
(declare-datatypes ((Option!8446 0))(
  ( (None!8445) (Some!8445 (v!38403 tuple2!39068)) )
))
(declare-fun lt!1293286 () Option!8446)

(declare-fun isDefined!6636 (Option!8446) Bool)

(assert (=> b!3694546 (= res!1502113 (isDefined!6636 lt!1293286))))

(declare-fun input!3172 () List!39297)

(declare-datatypes ((LexerInterface!5520 0))(
  ( (LexerInterfaceExt!5517 (__x!24540 Int)) (Lexer!5518) )
))
(declare-fun thiss!25322 () LexerInterface!5520)

(declare-fun maxPrefixOneRule!2156 (LexerInterface!5520 Rule!11662 List!39297) Option!8446)

(assert (=> b!3694546 (= lt!1293286 (maxPrefixOneRule!2156 thiss!25322 (h!44594 rules!3598) input!3172))))

(declare-fun b!3694547 () Bool)

(declare-fun e!2287768 () Bool)

(declare-fun tp!1122832 () Bool)

(declare-fun inv!52651 (String!44141) Bool)

(declare-fun inv!52654 (TokenValueInjection!11750) Bool)

(assert (=> b!3694547 (= e!2287768 (and tp!1122832 (inv!52651 (tag!6753 (h!44594 rules!3598))) (inv!52654 (transformation!5931 (h!44594 rules!3598))) e!2287770))))

(declare-fun b!3694548 () Bool)

(declare-fun tp!1122831 () Bool)

(declare-fun e!2287767 () Bool)

(assert (=> b!3694548 (= e!2287767 (and tp!1122831 (inv!52651 (tag!6753 (rule!8783 token!544))) (inv!52654 (transformation!5931 (rule!8783 token!544))) e!2287776))))

(declare-fun b!3694549 () Bool)

(declare-fun e!2287769 () Bool)

(assert (=> b!3694549 (= e!2287769 e!2287766)))

(declare-fun res!1502112 () Bool)

(assert (=> b!3694549 (=> (not res!1502112) (not e!2287766))))

(declare-fun lt!1293285 () Option!8446)

(assert (=> b!3694549 (= res!1502112 (isDefined!6636 lt!1293285))))

(declare-fun maxPrefix!3042 (LexerInterface!5520 List!39298 List!39297) Option!8446)

(assert (=> b!3694549 (= lt!1293285 (maxPrefix!3042 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3694550 () Bool)

(declare-fun e!2287774 () Bool)

(declare-fun tp!1122838 () Bool)

(assert (=> b!3694550 (= e!2287774 (and e!2287768 tp!1122838))))

(declare-fun b!3694551 () Bool)

(declare-fun res!1502114 () Bool)

(assert (=> b!3694551 (=> (not res!1502114) (not e!2287769))))

(declare-fun isEmpty!23347 (List!39298) Bool)

(assert (=> b!3694551 (= res!1502114 (not (isEmpty!23347 rules!3598)))))

(declare-fun b!3694552 () Bool)

(declare-fun res!1502119 () Bool)

(assert (=> b!3694552 (=> (not res!1502119) (not e!2287763))))

(declare-fun get!13001 (Option!8446) tuple2!39068)

(assert (=> b!3694552 (= res!1502119 (= (_1!22668 (get!13001 lt!1293286)) token!544))))

(declare-fun b!3694553 () Bool)

(declare-fun res!1502122 () Bool)

(assert (=> b!3694553 (=> (not res!1502122) (not e!2287769))))

(declare-fun rulesInvariant!4917 (LexerInterface!5520 List!39298) Bool)

(assert (=> b!3694553 (= res!1502122 (rulesInvariant!4917 thiss!25322 rules!3598))))

(declare-fun tp!1122839 () Bool)

(declare-fun b!3694554 () Bool)

(declare-fun e!2287773 () Bool)

(declare-fun inv!21 (TokenValue!6161) Bool)

(assert (=> b!3694554 (= e!2287773 (and (inv!21 (value!189489 token!544)) e!2287767 tp!1122839))))

(declare-fun b!3694545 () Bool)

(declare-fun res!1502121 () Bool)

(assert (=> b!3694545 (=> (not res!1502121) (not e!2287766))))

(assert (=> b!3694545 (= res!1502121 (= (_1!22668 (get!13001 lt!1293285)) token!544))))

(declare-fun res!1502117 () Bool)

(assert (=> start!347896 (=> (not res!1502117) (not e!2287769))))

(assert (=> start!347896 (= res!1502117 (is-Lexer!5518 thiss!25322))))

(assert (=> start!347896 e!2287769))

(assert (=> start!347896 true))

(assert (=> start!347896 e!2287774))

(declare-fun inv!52655 (Token!11216) Bool)

(assert (=> start!347896 (and (inv!52655 token!544) e!2287773)))

(assert (=> start!347896 e!2287765))

(declare-fun b!3694555 () Bool)

(declare-fun res!1502120 () Bool)

(assert (=> b!3694555 (=> (not res!1502120) (not e!2287766))))

(assert (=> b!3694555 (= res!1502120 (is-Cons!39174 rules!3598))))

(declare-fun b!3694556 () Bool)

(assert (=> b!3694556 (= e!2287763 e!2287771)))

(declare-fun res!1502115 () Bool)

(assert (=> b!3694556 (=> (not res!1502115) (not e!2287771))))

(declare-fun isDefined!6637 (Option!8445) Bool)

(assert (=> b!3694556 (= res!1502115 (isDefined!6637 lt!1293287))))

(declare-fun getRuleFromTag!1491 (LexerInterface!5520 List!39298 String!44141) Option!8445)

(assert (=> b!3694556 (= lt!1293287 (getRuleFromTag!1491 thiss!25322 rules!3598 (tag!6753 (rule!8783 token!544))))))

(assert (= (and start!347896 res!1502117) b!3694553))

(assert (= (and b!3694553 res!1502122) b!3694551))

(assert (= (and b!3694551 res!1502114) b!3694549))

(assert (= (and b!3694549 res!1502112) b!3694545))

(assert (= (and b!3694545 res!1502121) b!3694555))

(assert (= (and b!3694555 res!1502120) b!3694546))

(assert (= (and b!3694546 res!1502113) b!3694552))

(assert (= (and b!3694552 res!1502119) b!3694540))

(assert (= (and b!3694540 res!1502116) b!3694539))

(assert (= (and b!3694539 res!1502118) b!3694556))

(assert (= (and b!3694556 res!1502115) b!3694543))

(assert (= b!3694547 b!3694541))

(assert (= b!3694550 b!3694547))

(assert (= (and start!347896 (is-Cons!39174 rules!3598)) b!3694550))

(assert (= b!3694548 b!3694544))

(assert (= b!3694554 b!3694548))

(assert (= start!347896 b!3694554))

(assert (= (and start!347896 (is-Cons!39173 input!3172)) b!3694542))

(declare-fun m!4206529 () Bool)

(assert (=> b!3694543 m!4206529))

(declare-fun m!4206531 () Bool)

(assert (=> b!3694543 m!4206531))

(declare-fun m!4206533 () Bool)

(assert (=> b!3694549 m!4206533))

(declare-fun m!4206535 () Bool)

(assert (=> b!3694549 m!4206535))

(declare-fun m!4206537 () Bool)

(assert (=> b!3694545 m!4206537))

(declare-fun m!4206539 () Bool)

(assert (=> b!3694547 m!4206539))

(declare-fun m!4206541 () Bool)

(assert (=> b!3694547 m!4206541))

(declare-fun m!4206543 () Bool)

(assert (=> b!3694556 m!4206543))

(declare-fun m!4206545 () Bool)

(assert (=> b!3694556 m!4206545))

(declare-fun m!4206547 () Bool)

(assert (=> b!3694552 m!4206547))

(declare-fun m!4206549 () Bool)

(assert (=> b!3694551 m!4206549))

(declare-fun m!4206551 () Bool)

(assert (=> b!3694546 m!4206551))

(declare-fun m!4206553 () Bool)

(assert (=> b!3694546 m!4206553))

(declare-fun m!4206555 () Bool)

(assert (=> b!3694554 m!4206555))

(declare-fun m!4206557 () Bool)

(assert (=> start!347896 m!4206557))

(declare-fun m!4206559 () Bool)

(assert (=> b!3694553 m!4206559))

(declare-fun m!4206561 () Bool)

(assert (=> b!3694539 m!4206561))

(assert (=> b!3694539 m!4206561))

(declare-fun m!4206563 () Bool)

(assert (=> b!3694539 m!4206563))

(assert (=> b!3694539 m!4206563))

(declare-fun m!4206565 () Bool)

(assert (=> b!3694539 m!4206565))

(declare-fun m!4206567 () Bool)

(assert (=> b!3694548 m!4206567))

(declare-fun m!4206569 () Bool)

(assert (=> b!3694548 m!4206569))

(push 1)

(assert (not b!3694546))

(assert (not b!3694550))

(assert (not b!3694549))

(assert (not b!3694552))

(assert b_and!276077)

(assert b_and!276075)

(assert (not start!347896))

(assert (not b!3694551))

(assert b_and!276079)

(assert (not b!3694545))

(assert (not b!3694556))

(assert (not b!3694542))

(assert (not b_next!98873))

(assert (not b!3694548))

(assert (not b!3694554))

(assert (not b!3694539))

(assert (not b!3694553))

(assert (not b!3694547))

(assert (not b!3694543))

(assert (not b_next!98879))

(assert (not b_next!98877))

(assert tp_is_empty!18455)

(assert b_and!276081)

(assert (not b_next!98875))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!98873))

(assert b_and!276077)

(assert b_and!276075)

(assert (not b_next!98879))

(assert b_and!276079)

(assert (not b_next!98877))

(assert b_and!276081)

(assert (not b_next!98875))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1084027 () Bool)

(declare-fun isEmpty!23349 (Option!8446) Bool)

(assert (=> d!1084027 (= (isDefined!6636 lt!1293286) (not (isEmpty!23349 lt!1293286)))))

(declare-fun bs!574254 () Bool)

(assert (= bs!574254 d!1084027))

(declare-fun m!4206613 () Bool)

(assert (=> bs!574254 m!4206613))

(assert (=> b!3694546 d!1084027))

(declare-fun b!3694629 () Bool)

(declare-fun res!1502180 () Bool)

(declare-fun e!2287827 () Bool)

(assert (=> b!3694629 (=> (not res!1502180) (not e!2287827))))

(declare-fun lt!1293311 () Option!8446)

(declare-fun apply!9385 (TokenValueInjection!11750 BalanceConc!23670) TokenValue!6161)

(declare-fun seqFromList!4464 (List!39297) BalanceConc!23670)

(assert (=> b!3694629 (= res!1502180 (= (value!189489 (_1!22668 (get!13001 lt!1293311))) (apply!9385 (transformation!5931 (rule!8783 (_1!22668 (get!13001 lt!1293311)))) (seqFromList!4464 (originalCharacters!6639 (_1!22668 (get!13001 lt!1293311)))))))))

(declare-fun b!3694630 () Bool)

(declare-fun res!1502182 () Bool)

(assert (=> b!3694630 (=> (not res!1502182) (not e!2287827))))

(assert (=> b!3694630 (= res!1502182 (= (rule!8783 (_1!22668 (get!13001 lt!1293311))) (h!44594 rules!3598)))))

(declare-fun b!3694631 () Bool)

(declare-fun res!1502176 () Bool)

(assert (=> b!3694631 (=> (not res!1502176) (not e!2287827))))

(declare-fun ++!9745 (List!39297 List!39297) List!39297)

(assert (=> b!3694631 (= res!1502176 (= (++!9745 (list!14642 (charsOf!3930 (_1!22668 (get!13001 lt!1293311)))) (_2!22668 (get!13001 lt!1293311))) input!3172))))

(declare-fun b!3694632 () Bool)

(declare-fun e!2287830 () Option!8446)

(declare-datatypes ((tuple2!39072 0))(
  ( (tuple2!39073 (_1!22670 List!39297) (_2!22670 List!39297)) )
))
(declare-fun lt!1293309 () tuple2!39072)

(declare-fun size!29908 (BalanceConc!23670) Int)

(assert (=> b!3694632 (= e!2287830 (Some!8445 (tuple2!39069 (Token!11217 (apply!9385 (transformation!5931 (h!44594 rules!3598)) (seqFromList!4464 (_1!22670 lt!1293309))) (h!44594 rules!3598) (size!29908 (seqFromList!4464 (_1!22670 lt!1293309))) (_1!22670 lt!1293309)) (_2!22670 lt!1293309))))))

(declare-datatypes ((Unit!57174 0))(
  ( (Unit!57175) )
))
(declare-fun lt!1293307 () Unit!57174)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1083 (Regex!10690 List!39297) Unit!57174)

(assert (=> b!3694632 (= lt!1293307 (longestMatchIsAcceptedByMatchOrIsEmpty!1083 (regex!5931 (h!44594 rules!3598)) input!3172))))

(declare-fun res!1502178 () Bool)

(declare-fun isEmpty!23350 (List!39297) Bool)

(declare-fun findLongestMatchInner!1110 (Regex!10690 List!39297 Int List!39297 List!39297 Int) tuple2!39072)

(declare-fun size!29909 (List!39297) Int)

(assert (=> b!3694632 (= res!1502178 (isEmpty!23350 (_1!22670 (findLongestMatchInner!1110 (regex!5931 (h!44594 rules!3598)) Nil!39173 (size!29909 Nil!39173) input!3172 input!3172 (size!29909 input!3172)))))))

(declare-fun e!2287829 () Bool)

(assert (=> b!3694632 (=> res!1502178 e!2287829)))

(assert (=> b!3694632 e!2287829))

(declare-fun lt!1293310 () Unit!57174)

(assert (=> b!3694632 (= lt!1293310 lt!1293307)))

(declare-fun lt!1293308 () Unit!57174)

(declare-fun lemmaSemiInverse!1616 (TokenValueInjection!11750 BalanceConc!23670) Unit!57174)

(assert (=> b!3694632 (= lt!1293308 (lemmaSemiInverse!1616 (transformation!5931 (h!44594 rules!3598)) (seqFromList!4464 (_1!22670 lt!1293309))))))

(declare-fun b!3694633 () Bool)

(assert (=> b!3694633 (= e!2287829 (matchR!5233 (regex!5931 (h!44594 rules!3598)) (_1!22670 (findLongestMatchInner!1110 (regex!5931 (h!44594 rules!3598)) Nil!39173 (size!29909 Nil!39173) input!3172 input!3172 (size!29909 input!3172)))))))

(declare-fun d!1084029 () Bool)

(declare-fun e!2287828 () Bool)

(assert (=> d!1084029 e!2287828))

(declare-fun res!1502179 () Bool)

(assert (=> d!1084029 (=> res!1502179 e!2287828)))

(assert (=> d!1084029 (= res!1502179 (isEmpty!23349 lt!1293311))))

(assert (=> d!1084029 (= lt!1293311 e!2287830)))

(declare-fun c!638742 () Bool)

(assert (=> d!1084029 (= c!638742 (isEmpty!23350 (_1!22670 lt!1293309)))))

(declare-fun findLongestMatch!1025 (Regex!10690 List!39297) tuple2!39072)

(assert (=> d!1084029 (= lt!1293309 (findLongestMatch!1025 (regex!5931 (h!44594 rules!3598)) input!3172))))

(declare-fun ruleValid!2148 (LexerInterface!5520 Rule!11662) Bool)

(assert (=> d!1084029 (ruleValid!2148 thiss!25322 (h!44594 rules!3598))))

(assert (=> d!1084029 (= (maxPrefixOneRule!2156 thiss!25322 (h!44594 rules!3598) input!3172) lt!1293311)))

(declare-fun b!3694634 () Bool)

(assert (=> b!3694634 (= e!2287828 e!2287827)))

(declare-fun res!1502181 () Bool)

(assert (=> b!3694634 (=> (not res!1502181) (not e!2287827))))

(assert (=> b!3694634 (= res!1502181 (matchR!5233 (regex!5931 (h!44594 rules!3598)) (list!14642 (charsOf!3930 (_1!22668 (get!13001 lt!1293311))))))))

(declare-fun b!3694635 () Bool)

(declare-fun res!1502177 () Bool)

(assert (=> b!3694635 (=> (not res!1502177) (not e!2287827))))

(assert (=> b!3694635 (= res!1502177 (< (size!29909 (_2!22668 (get!13001 lt!1293311))) (size!29909 input!3172)))))

(declare-fun b!3694636 () Bool)

(assert (=> b!3694636 (= e!2287827 (= (size!29906 (_1!22668 (get!13001 lt!1293311))) (size!29909 (originalCharacters!6639 (_1!22668 (get!13001 lt!1293311))))))))

(declare-fun b!3694637 () Bool)

(assert (=> b!3694637 (= e!2287830 None!8445)))

(assert (= (and d!1084029 c!638742) b!3694637))

(assert (= (and d!1084029 (not c!638742)) b!3694632))

(assert (= (and b!3694632 (not res!1502178)) b!3694633))

(assert (= (and d!1084029 (not res!1502179)) b!3694634))

(assert (= (and b!3694634 res!1502181) b!3694631))

(assert (= (and b!3694631 res!1502176) b!3694635))

(assert (= (and b!3694635 res!1502177) b!3694630))

(assert (= (and b!3694630 res!1502182) b!3694629))

(assert (= (and b!3694629 res!1502180) b!3694636))

(declare-fun m!4206617 () Bool)

(assert (=> b!3694631 m!4206617))

(declare-fun m!4206619 () Bool)

(assert (=> b!3694631 m!4206619))

(assert (=> b!3694631 m!4206619))

(declare-fun m!4206621 () Bool)

(assert (=> b!3694631 m!4206621))

(assert (=> b!3694631 m!4206621))

(declare-fun m!4206623 () Bool)

(assert (=> b!3694631 m!4206623))

(assert (=> b!3694634 m!4206617))

(assert (=> b!3694634 m!4206619))

(assert (=> b!3694634 m!4206619))

(assert (=> b!3694634 m!4206621))

(assert (=> b!3694634 m!4206621))

(declare-fun m!4206625 () Bool)

(assert (=> b!3694634 m!4206625))

(declare-fun m!4206627 () Bool)

(assert (=> d!1084029 m!4206627))

(declare-fun m!4206629 () Bool)

(assert (=> d!1084029 m!4206629))

(declare-fun m!4206631 () Bool)

(assert (=> d!1084029 m!4206631))

(declare-fun m!4206633 () Bool)

(assert (=> d!1084029 m!4206633))

(assert (=> b!3694635 m!4206617))

(declare-fun m!4206635 () Bool)

(assert (=> b!3694635 m!4206635))

(declare-fun m!4206637 () Bool)

(assert (=> b!3694635 m!4206637))

(assert (=> b!3694630 m!4206617))

(declare-fun m!4206639 () Bool)

(assert (=> b!3694632 m!4206639))

(declare-fun m!4206641 () Bool)

(assert (=> b!3694632 m!4206641))

(assert (=> b!3694632 m!4206637))

(declare-fun m!4206643 () Bool)

(assert (=> b!3694632 m!4206643))

(assert (=> b!3694632 m!4206639))

(declare-fun m!4206645 () Bool)

(assert (=> b!3694632 m!4206645))

(assert (=> b!3694632 m!4206639))

(declare-fun m!4206647 () Bool)

(assert (=> b!3694632 m!4206647))

(assert (=> b!3694632 m!4206639))

(declare-fun m!4206649 () Bool)

(assert (=> b!3694632 m!4206649))

(declare-fun m!4206651 () Bool)

(assert (=> b!3694632 m!4206651))

(assert (=> b!3694632 m!4206651))

(assert (=> b!3694632 m!4206637))

(declare-fun m!4206653 () Bool)

(assert (=> b!3694632 m!4206653))

(assert (=> b!3694633 m!4206651))

(assert (=> b!3694633 m!4206637))

(assert (=> b!3694633 m!4206651))

(assert (=> b!3694633 m!4206637))

(assert (=> b!3694633 m!4206653))

(declare-fun m!4206655 () Bool)

(assert (=> b!3694633 m!4206655))

(assert (=> b!3694636 m!4206617))

(declare-fun m!4206657 () Bool)

(assert (=> b!3694636 m!4206657))

(assert (=> b!3694629 m!4206617))

(declare-fun m!4206659 () Bool)

(assert (=> b!3694629 m!4206659))

(assert (=> b!3694629 m!4206659))

(declare-fun m!4206661 () Bool)

(assert (=> b!3694629 m!4206661))

(assert (=> b!3694546 d!1084029))

(declare-fun d!1084035 () Bool)

(declare-fun isEmpty!23351 (Option!8445) Bool)

(assert (=> d!1084035 (= (isDefined!6637 lt!1293287) (not (isEmpty!23351 lt!1293287)))))

(declare-fun bs!574256 () Bool)

(assert (= bs!574256 d!1084035))

(declare-fun m!4206663 () Bool)

(assert (=> bs!574256 m!4206663))

(assert (=> b!3694556 d!1084035))

(declare-fun b!3694650 () Bool)

(declare-fun e!2287841 () Option!8445)

(assert (=> b!3694650 (= e!2287841 None!8444)))

(declare-fun b!3694651 () Bool)

(declare-fun e!2287842 () Option!8445)

(assert (=> b!3694651 (= e!2287842 e!2287841)))

(declare-fun c!638748 () Bool)

(assert (=> b!3694651 (= c!638748 (and (is-Cons!39174 rules!3598) (not (= (tag!6753 (h!44594 rules!3598)) (tag!6753 (rule!8783 token!544))))))))

(declare-fun b!3694652 () Bool)

(declare-fun e!2287839 () Bool)

(declare-fun e!2287840 () Bool)

(assert (=> b!3694652 (= e!2287839 e!2287840)))

(declare-fun res!1502188 () Bool)

(assert (=> b!3694652 (=> (not res!1502188) (not e!2287840))))

(declare-fun lt!1293319 () Option!8445)

(declare-fun contains!7819 (List!39298 Rule!11662) Bool)

(assert (=> b!3694652 (= res!1502188 (contains!7819 rules!3598 (get!13000 lt!1293319)))))

(declare-fun b!3694653 () Bool)

(assert (=> b!3694653 (= e!2287842 (Some!8444 (h!44594 rules!3598)))))

(declare-fun d!1084037 () Bool)

(assert (=> d!1084037 e!2287839))

(declare-fun res!1502187 () Bool)

(assert (=> d!1084037 (=> res!1502187 e!2287839)))

(assert (=> d!1084037 (= res!1502187 (isEmpty!23351 lt!1293319))))

(assert (=> d!1084037 (= lt!1293319 e!2287842)))

(declare-fun c!638747 () Bool)

(assert (=> d!1084037 (= c!638747 (and (is-Cons!39174 rules!3598) (= (tag!6753 (h!44594 rules!3598)) (tag!6753 (rule!8783 token!544)))))))

(assert (=> d!1084037 (rulesInvariant!4917 thiss!25322 rules!3598)))

(assert (=> d!1084037 (= (getRuleFromTag!1491 thiss!25322 rules!3598 (tag!6753 (rule!8783 token!544))) lt!1293319)))

(declare-fun b!3694654 () Bool)

(declare-fun lt!1293318 () Unit!57174)

(declare-fun lt!1293320 () Unit!57174)

(assert (=> b!3694654 (= lt!1293318 lt!1293320)))

(assert (=> b!3694654 (rulesInvariant!4917 thiss!25322 (t!301621 rules!3598))))

(declare-fun lemmaInvariantOnRulesThenOnTail!644 (LexerInterface!5520 Rule!11662 List!39298) Unit!57174)

(assert (=> b!3694654 (= lt!1293320 (lemmaInvariantOnRulesThenOnTail!644 thiss!25322 (h!44594 rules!3598) (t!301621 rules!3598)))))

(assert (=> b!3694654 (= e!2287841 (getRuleFromTag!1491 thiss!25322 (t!301621 rules!3598) (tag!6753 (rule!8783 token!544))))))

(declare-fun b!3694655 () Bool)

(assert (=> b!3694655 (= e!2287840 (= (tag!6753 (get!13000 lt!1293319)) (tag!6753 (rule!8783 token!544))))))

(assert (= (and d!1084037 c!638747) b!3694653))

(assert (= (and d!1084037 (not c!638747)) b!3694651))

(assert (= (and b!3694651 c!638748) b!3694654))

(assert (= (and b!3694651 (not c!638748)) b!3694650))

(assert (= (and d!1084037 (not res!1502187)) b!3694652))

(assert (= (and b!3694652 res!1502188) b!3694655))

(declare-fun m!4206665 () Bool)

(assert (=> b!3694652 m!4206665))

(assert (=> b!3694652 m!4206665))

(declare-fun m!4206667 () Bool)

(assert (=> b!3694652 m!4206667))

(declare-fun m!4206669 () Bool)

(assert (=> d!1084037 m!4206669))

(assert (=> d!1084037 m!4206559))

(declare-fun m!4206671 () Bool)

(assert (=> b!3694654 m!4206671))

(declare-fun m!4206673 () Bool)

(assert (=> b!3694654 m!4206673))

(declare-fun m!4206675 () Bool)

(assert (=> b!3694654 m!4206675))

(assert (=> b!3694655 m!4206665))

(assert (=> b!3694556 d!1084037))

(declare-fun d!1084039 () Bool)

(assert (=> d!1084039 (= (get!13001 lt!1293285) (v!38403 lt!1293285))))

(assert (=> b!3694545 d!1084039))

(declare-fun d!1084041 () Bool)

(assert (=> d!1084041 (= (isDefined!6636 lt!1293285) (not (isEmpty!23349 lt!1293285)))))

(declare-fun bs!574257 () Bool)

(assert (= bs!574257 d!1084041))

(declare-fun m!4206677 () Bool)

(assert (=> bs!574257 m!4206677))

(assert (=> b!3694549 d!1084041))

(declare-fun b!3694692 () Bool)

(declare-fun e!2287856 () Option!8446)

(declare-fun lt!1293343 () Option!8446)

(declare-fun lt!1293345 () Option!8446)

(assert (=> b!3694692 (= e!2287856 (ite (and (is-None!8445 lt!1293343) (is-None!8445 lt!1293345)) None!8445 (ite (is-None!8445 lt!1293345) lt!1293343 (ite (is-None!8445 lt!1293343) lt!1293345 (ite (>= (size!29906 (_1!22668 (v!38403 lt!1293343))) (size!29906 (_1!22668 (v!38403 lt!1293345)))) lt!1293343 lt!1293345)))))))

(declare-fun call!267109 () Option!8446)

(assert (=> b!3694692 (= lt!1293343 call!267109)))

(assert (=> b!3694692 (= lt!1293345 (maxPrefix!3042 thiss!25322 (t!301621 rules!3598) input!3172))))

(declare-fun b!3694693 () Bool)

(declare-fun res!1502220 () Bool)

(declare-fun e!2287855 () Bool)

(assert (=> b!3694693 (=> (not res!1502220) (not e!2287855))))

(declare-fun lt!1293341 () Option!8446)

(assert (=> b!3694693 (= res!1502220 (= (++!9745 (list!14642 (charsOf!3930 (_1!22668 (get!13001 lt!1293341)))) (_2!22668 (get!13001 lt!1293341))) input!3172))))

(declare-fun b!3694694 () Bool)

(declare-fun res!1502219 () Bool)

(assert (=> b!3694694 (=> (not res!1502219) (not e!2287855))))

(assert (=> b!3694694 (= res!1502219 (= (value!189489 (_1!22668 (get!13001 lt!1293341))) (apply!9385 (transformation!5931 (rule!8783 (_1!22668 (get!13001 lt!1293341)))) (seqFromList!4464 (originalCharacters!6639 (_1!22668 (get!13001 lt!1293341)))))))))

(declare-fun bm!267104 () Bool)

(assert (=> bm!267104 (= call!267109 (maxPrefixOneRule!2156 thiss!25322 (h!44594 rules!3598) input!3172))))

(declare-fun d!1084043 () Bool)

(declare-fun e!2287857 () Bool)

(assert (=> d!1084043 e!2287857))

(declare-fun res!1502221 () Bool)

(assert (=> d!1084043 (=> res!1502221 e!2287857)))

(assert (=> d!1084043 (= res!1502221 (isEmpty!23349 lt!1293341))))

(assert (=> d!1084043 (= lt!1293341 e!2287856)))

(declare-fun c!638753 () Bool)

(assert (=> d!1084043 (= c!638753 (and (is-Cons!39174 rules!3598) (is-Nil!39174 (t!301621 rules!3598))))))

(declare-fun lt!1293344 () Unit!57174)

(declare-fun lt!1293342 () Unit!57174)

(assert (=> d!1084043 (= lt!1293344 lt!1293342)))

(declare-fun isPrefix!3267 (List!39297 List!39297) Bool)

(assert (=> d!1084043 (isPrefix!3267 input!3172 input!3172)))

(declare-fun lemmaIsPrefixRefl!2052 (List!39297 List!39297) Unit!57174)

(assert (=> d!1084043 (= lt!1293342 (lemmaIsPrefixRefl!2052 input!3172 input!3172))))

(declare-fun rulesValidInductive!2133 (LexerInterface!5520 List!39298) Bool)

(assert (=> d!1084043 (rulesValidInductive!2133 thiss!25322 rules!3598)))

(assert (=> d!1084043 (= (maxPrefix!3042 thiss!25322 rules!3598 input!3172) lt!1293341)))

(declare-fun b!3694695 () Bool)

(declare-fun res!1502222 () Bool)

(assert (=> b!3694695 (=> (not res!1502222) (not e!2287855))))

(assert (=> b!3694695 (= res!1502222 (= (list!14642 (charsOf!3930 (_1!22668 (get!13001 lt!1293341)))) (originalCharacters!6639 (_1!22668 (get!13001 lt!1293341)))))))

(declare-fun b!3694696 () Bool)

(assert (=> b!3694696 (= e!2287855 (contains!7819 rules!3598 (rule!8783 (_1!22668 (get!13001 lt!1293341)))))))

(declare-fun b!3694697 () Bool)

(assert (=> b!3694697 (= e!2287857 e!2287855)))

(declare-fun res!1502223 () Bool)

(assert (=> b!3694697 (=> (not res!1502223) (not e!2287855))))

(assert (=> b!3694697 (= res!1502223 (isDefined!6636 lt!1293341))))

(declare-fun b!3694698 () Bool)

(declare-fun res!1502217 () Bool)

(assert (=> b!3694698 (=> (not res!1502217) (not e!2287855))))

(assert (=> b!3694698 (= res!1502217 (< (size!29909 (_2!22668 (get!13001 lt!1293341))) (size!29909 input!3172)))))

(declare-fun b!3694699 () Bool)

(assert (=> b!3694699 (= e!2287856 call!267109)))

(declare-fun b!3694700 () Bool)

(declare-fun res!1502218 () Bool)

(assert (=> b!3694700 (=> (not res!1502218) (not e!2287855))))

(assert (=> b!3694700 (= res!1502218 (matchR!5233 (regex!5931 (rule!8783 (_1!22668 (get!13001 lt!1293341)))) (list!14642 (charsOf!3930 (_1!22668 (get!13001 lt!1293341))))))))

(assert (= (and d!1084043 c!638753) b!3694699))

(assert (= (and d!1084043 (not c!638753)) b!3694692))

(assert (= (or b!3694699 b!3694692) bm!267104))

(assert (= (and d!1084043 (not res!1502221)) b!3694697))

(assert (= (and b!3694697 res!1502223) b!3694695))

(assert (= (and b!3694695 res!1502222) b!3694698))

(assert (= (and b!3694698 res!1502217) b!3694693))

(assert (= (and b!3694693 res!1502220) b!3694694))

(assert (= (and b!3694694 res!1502219) b!3694700))

(assert (= (and b!3694700 res!1502218) b!3694696))

(declare-fun m!4206679 () Bool)

(assert (=> d!1084043 m!4206679))

(declare-fun m!4206681 () Bool)

(assert (=> d!1084043 m!4206681))

(declare-fun m!4206683 () Bool)

(assert (=> d!1084043 m!4206683))

(declare-fun m!4206685 () Bool)

(assert (=> d!1084043 m!4206685))

(declare-fun m!4206687 () Bool)

(assert (=> b!3694696 m!4206687))

(declare-fun m!4206689 () Bool)

(assert (=> b!3694696 m!4206689))

(assert (=> b!3694700 m!4206687))

(declare-fun m!4206691 () Bool)

(assert (=> b!3694700 m!4206691))

(assert (=> b!3694700 m!4206691))

(declare-fun m!4206693 () Bool)

(assert (=> b!3694700 m!4206693))

(assert (=> b!3694700 m!4206693))

(declare-fun m!4206695 () Bool)

(assert (=> b!3694700 m!4206695))

(assert (=> bm!267104 m!4206553))

(declare-fun m!4206697 () Bool)

(assert (=> b!3694692 m!4206697))

(assert (=> b!3694693 m!4206687))

(assert (=> b!3694693 m!4206691))

(assert (=> b!3694693 m!4206691))

(assert (=> b!3694693 m!4206693))

(assert (=> b!3694693 m!4206693))

(declare-fun m!4206699 () Bool)

(assert (=> b!3694693 m!4206699))

(assert (=> b!3694695 m!4206687))

(assert (=> b!3694695 m!4206691))

(assert (=> b!3694695 m!4206691))

(assert (=> b!3694695 m!4206693))

(assert (=> b!3694698 m!4206687))

(declare-fun m!4206701 () Bool)

(assert (=> b!3694698 m!4206701))

(assert (=> b!3694698 m!4206637))

(declare-fun m!4206703 () Bool)

(assert (=> b!3694697 m!4206703))

(assert (=> b!3694694 m!4206687))

(declare-fun m!4206705 () Bool)

(assert (=> b!3694694 m!4206705))

(assert (=> b!3694694 m!4206705))

(declare-fun m!4206707 () Bool)

(assert (=> b!3694694 m!4206707))

(assert (=> b!3694549 d!1084043))

(declare-fun d!1084045 () Bool)

(declare-fun res!1502235 () Bool)

(declare-fun e!2287863 () Bool)

(assert (=> d!1084045 (=> (not res!1502235) (not e!2287863))))

(assert (=> d!1084045 (= res!1502235 (not (isEmpty!23350 (originalCharacters!6639 token!544))))))

(assert (=> d!1084045 (= (inv!52655 token!544) e!2287863)))

(declare-fun b!3694714 () Bool)

(declare-fun res!1502236 () Bool)

(assert (=> b!3694714 (=> (not res!1502236) (not e!2287863))))

(declare-fun dynLambda!17154 (Int TokenValue!6161) BalanceConc!23670)

(assert (=> b!3694714 (= res!1502236 (= (originalCharacters!6639 token!544) (list!14642 (dynLambda!17154 (toChars!8122 (transformation!5931 (rule!8783 token!544))) (value!189489 token!544)))))))

(declare-fun b!3694715 () Bool)

(assert (=> b!3694715 (= e!2287863 (= (size!29906 token!544) (size!29909 (originalCharacters!6639 token!544))))))

(assert (= (and d!1084045 res!1502235) b!3694714))

(assert (= (and b!3694714 res!1502236) b!3694715))

(declare-fun b_lambda!109603 () Bool)

(assert (=> (not b_lambda!109603) (not b!3694714)))

(declare-fun t!301626 () Bool)

(declare-fun tb!214041 () Bool)

(assert (=> (and b!3694544 (= (toChars!8122 (transformation!5931 (rule!8783 token!544))) (toChars!8122 (transformation!5931 (rule!8783 token!544)))) t!301626) tb!214041))

(declare-fun b!3694720 () Bool)

(declare-fun e!2287866 () Bool)

(declare-fun tp!1122869 () Bool)

(declare-fun inv!52658 (Conc!12028) Bool)

(assert (=> b!3694720 (= e!2287866 (and (inv!52658 (c!638736 (dynLambda!17154 (toChars!8122 (transformation!5931 (rule!8783 token!544))) (value!189489 token!544)))) tp!1122869))))

(declare-fun result!260666 () Bool)

(declare-fun inv!52659 (BalanceConc!23670) Bool)

(assert (=> tb!214041 (= result!260666 (and (inv!52659 (dynLambda!17154 (toChars!8122 (transformation!5931 (rule!8783 token!544))) (value!189489 token!544))) e!2287866))))

(assert (= tb!214041 b!3694720))

(declare-fun m!4206729 () Bool)

(assert (=> b!3694720 m!4206729))

(declare-fun m!4206731 () Bool)

(assert (=> tb!214041 m!4206731))

(assert (=> b!3694714 t!301626))

(declare-fun b_and!276091 () Bool)

(assert (= b_and!276077 (and (=> t!301626 result!260666) b_and!276091)))

(declare-fun t!301628 () Bool)

(declare-fun tb!214043 () Bool)

(assert (=> (and b!3694541 (= (toChars!8122 (transformation!5931 (h!44594 rules!3598))) (toChars!8122 (transformation!5931 (rule!8783 token!544)))) t!301628) tb!214043))

(declare-fun result!260670 () Bool)

(assert (= result!260670 result!260666))

(assert (=> b!3694714 t!301628))

(declare-fun b_and!276093 () Bool)

(assert (= b_and!276081 (and (=> t!301628 result!260670) b_and!276093)))

(declare-fun m!4206735 () Bool)

(assert (=> d!1084045 m!4206735))

(declare-fun m!4206737 () Bool)

(assert (=> b!3694714 m!4206737))

(assert (=> b!3694714 m!4206737))

(declare-fun m!4206741 () Bool)

(assert (=> b!3694714 m!4206741))

(declare-fun m!4206743 () Bool)

(assert (=> b!3694715 m!4206743))

(assert (=> start!347896 d!1084045))

(declare-fun d!1084047 () Bool)

(assert (=> d!1084047 (= (inv!52651 (tag!6753 (rule!8783 token!544))) (= (mod (str.len (value!189488 (tag!6753 (rule!8783 token!544)))) 2) 0))))

(assert (=> b!3694548 d!1084047))

(declare-fun d!1084049 () Bool)

(declare-fun res!1502239 () Bool)

(declare-fun e!2287869 () Bool)

(assert (=> d!1084049 (=> (not res!1502239) (not e!2287869))))

(declare-fun semiInverseModEq!2534 (Int Int) Bool)

(assert (=> d!1084049 (= res!1502239 (semiInverseModEq!2534 (toChars!8122 (transformation!5931 (rule!8783 token!544))) (toValue!8263 (transformation!5931 (rule!8783 token!544)))))))

(assert (=> d!1084049 (= (inv!52654 (transformation!5931 (rule!8783 token!544))) e!2287869)))

(declare-fun b!3694723 () Bool)

(declare-fun equivClasses!2433 (Int Int) Bool)

(assert (=> b!3694723 (= e!2287869 (equivClasses!2433 (toChars!8122 (transformation!5931 (rule!8783 token!544))) (toValue!8263 (transformation!5931 (rule!8783 token!544)))))))

(assert (= (and d!1084049 res!1502239) b!3694723))

(declare-fun m!4206755 () Bool)

(assert (=> d!1084049 m!4206755))

(declare-fun m!4206757 () Bool)

(assert (=> b!3694723 m!4206757))

(assert (=> b!3694548 d!1084049))

(declare-fun d!1084055 () Bool)

(assert (=> d!1084055 (= (inv!52651 (tag!6753 (h!44594 rules!3598))) (= (mod (str.len (value!189488 (tag!6753 (h!44594 rules!3598)))) 2) 0))))

(assert (=> b!3694547 d!1084055))

(declare-fun d!1084057 () Bool)

(declare-fun res!1502240 () Bool)

(declare-fun e!2287870 () Bool)

(assert (=> d!1084057 (=> (not res!1502240) (not e!2287870))))

(assert (=> d!1084057 (= res!1502240 (semiInverseModEq!2534 (toChars!8122 (transformation!5931 (h!44594 rules!3598))) (toValue!8263 (transformation!5931 (h!44594 rules!3598)))))))

(assert (=> d!1084057 (= (inv!52654 (transformation!5931 (h!44594 rules!3598))) e!2287870)))

(declare-fun b!3694724 () Bool)

(assert (=> b!3694724 (= e!2287870 (equivClasses!2433 (toChars!8122 (transformation!5931 (h!44594 rules!3598))) (toValue!8263 (transformation!5931 (h!44594 rules!3598)))))))

(assert (= (and d!1084057 res!1502240) b!3694724))

(declare-fun m!4206759 () Bool)

(assert (=> d!1084057 m!4206759))

(declare-fun m!4206761 () Bool)

(assert (=> b!3694724 m!4206761))

(assert (=> b!3694547 d!1084057))

(declare-fun d!1084059 () Bool)

(assert (=> d!1084059 (= (isEmpty!23347 rules!3598) (is-Nil!39174 rules!3598))))

(assert (=> b!3694551 d!1084059))

(declare-fun bm!267108 () Bool)

(declare-fun call!267113 () Bool)

(assert (=> bm!267108 (= call!267113 (isEmpty!23350 (list!14642 (charsOf!3930 token!544))))))

(declare-fun b!3694753 () Bool)

(declare-fun e!2287885 () Bool)

(declare-fun lt!1293353 () Bool)

(assert (=> b!3694753 (= e!2287885 (not lt!1293353))))

(declare-fun b!3694754 () Bool)

(declare-fun res!1502263 () Bool)

(declare-fun e!2287889 () Bool)

(assert (=> b!3694754 (=> (not res!1502263) (not e!2287889))))

(declare-fun tail!5724 (List!39297) List!39297)

(assert (=> b!3694754 (= res!1502263 (isEmpty!23350 (tail!5724 (list!14642 (charsOf!3930 token!544)))))))

(declare-fun b!3694755 () Bool)

(declare-fun e!2287890 () Bool)

(assert (=> b!3694755 (= e!2287890 (= lt!1293353 call!267113))))

(declare-fun b!3694756 () Bool)

(declare-fun head!7987 (List!39297) C!21566)

(assert (=> b!3694756 (= e!2287889 (= (head!7987 (list!14642 (charsOf!3930 token!544))) (c!638735 (regex!5931 (h!44594 rules!3598)))))))

(declare-fun b!3694757 () Bool)

(declare-fun e!2287891 () Bool)

(assert (=> b!3694757 (= e!2287891 (not (= (head!7987 (list!14642 (charsOf!3930 token!544))) (c!638735 (regex!5931 (h!44594 rules!3598))))))))

(declare-fun b!3694758 () Bool)

(declare-fun res!1502258 () Bool)

(assert (=> b!3694758 (=> res!1502258 e!2287891)))

(assert (=> b!3694758 (= res!1502258 (not (isEmpty!23350 (tail!5724 (list!14642 (charsOf!3930 token!544))))))))

(declare-fun b!3694759 () Bool)

(declare-fun e!2287886 () Bool)

(declare-fun derivativeStep!3274 (Regex!10690 C!21566) Regex!10690)

(assert (=> b!3694759 (= e!2287886 (matchR!5233 (derivativeStep!3274 (regex!5931 (h!44594 rules!3598)) (head!7987 (list!14642 (charsOf!3930 token!544)))) (tail!5724 (list!14642 (charsOf!3930 token!544)))))))

(declare-fun b!3694760 () Bool)

(assert (=> b!3694760 (= e!2287890 e!2287885)))

(declare-fun c!638761 () Bool)

(assert (=> b!3694760 (= c!638761 (is-EmptyLang!10690 (regex!5931 (h!44594 rules!3598))))))

(declare-fun b!3694761 () Bool)

(declare-fun nullable!3731 (Regex!10690) Bool)

(assert (=> b!3694761 (= e!2287886 (nullable!3731 (regex!5931 (h!44594 rules!3598))))))

(declare-fun b!3694762 () Bool)

(declare-fun res!1502260 () Bool)

(declare-fun e!2287888 () Bool)

(assert (=> b!3694762 (=> res!1502260 e!2287888)))

(assert (=> b!3694762 (= res!1502260 e!2287889)))

(declare-fun res!1502259 () Bool)

(assert (=> b!3694762 (=> (not res!1502259) (not e!2287889))))

(assert (=> b!3694762 (= res!1502259 lt!1293353)))

(declare-fun d!1084061 () Bool)

(assert (=> d!1084061 e!2287890))

(declare-fun c!638762 () Bool)

(assert (=> d!1084061 (= c!638762 (is-EmptyExpr!10690 (regex!5931 (h!44594 rules!3598))))))

(assert (=> d!1084061 (= lt!1293353 e!2287886)))

(declare-fun c!638763 () Bool)

(assert (=> d!1084061 (= c!638763 (isEmpty!23350 (list!14642 (charsOf!3930 token!544))))))

(assert (=> d!1084061 (validRegex!4893 (regex!5931 (h!44594 rules!3598)))))

(assert (=> d!1084061 (= (matchR!5233 (regex!5931 (h!44594 rules!3598)) (list!14642 (charsOf!3930 token!544))) lt!1293353)))

(declare-fun b!3694763 () Bool)

(declare-fun e!2287887 () Bool)

(assert (=> b!3694763 (= e!2287887 e!2287891)))

(declare-fun res!1502262 () Bool)

(assert (=> b!3694763 (=> res!1502262 e!2287891)))

(assert (=> b!3694763 (= res!1502262 call!267113)))

(declare-fun b!3694764 () Bool)

(assert (=> b!3694764 (= e!2287888 e!2287887)))

(declare-fun res!1502264 () Bool)

(assert (=> b!3694764 (=> (not res!1502264) (not e!2287887))))

(assert (=> b!3694764 (= res!1502264 (not lt!1293353))))

(declare-fun b!3694765 () Bool)

(declare-fun res!1502257 () Bool)

(assert (=> b!3694765 (=> (not res!1502257) (not e!2287889))))

(assert (=> b!3694765 (= res!1502257 (not call!267113))))

(declare-fun b!3694766 () Bool)

(declare-fun res!1502261 () Bool)

(assert (=> b!3694766 (=> res!1502261 e!2287888)))

(assert (=> b!3694766 (= res!1502261 (not (is-ElementMatch!10690 (regex!5931 (h!44594 rules!3598)))))))

(assert (=> b!3694766 (= e!2287885 e!2287888)))

(assert (= (and d!1084061 c!638763) b!3694761))

(assert (= (and d!1084061 (not c!638763)) b!3694759))

(assert (= (and d!1084061 c!638762) b!3694755))

(assert (= (and d!1084061 (not c!638762)) b!3694760))

(assert (= (and b!3694760 c!638761) b!3694753))

(assert (= (and b!3694760 (not c!638761)) b!3694766))

(assert (= (and b!3694766 (not res!1502261)) b!3694762))

(assert (= (and b!3694762 res!1502259) b!3694765))

(assert (= (and b!3694765 res!1502257) b!3694754))

(assert (= (and b!3694754 res!1502263) b!3694756))

(assert (= (and b!3694762 (not res!1502260)) b!3694764))

(assert (= (and b!3694764 res!1502264) b!3694763))

(assert (= (and b!3694763 (not res!1502262)) b!3694758))

(assert (= (and b!3694758 (not res!1502258)) b!3694757))

(assert (= (or b!3694755 b!3694763 b!3694765) bm!267108))

(assert (=> b!3694757 m!4206563))

(declare-fun m!4206763 () Bool)

(assert (=> b!3694757 m!4206763))

(assert (=> b!3694758 m!4206563))

(declare-fun m!4206765 () Bool)

(assert (=> b!3694758 m!4206765))

(assert (=> b!3694758 m!4206765))

(declare-fun m!4206767 () Bool)

(assert (=> b!3694758 m!4206767))

(assert (=> b!3694756 m!4206563))

(assert (=> b!3694756 m!4206763))

(assert (=> b!3694754 m!4206563))

(assert (=> b!3694754 m!4206765))

(assert (=> b!3694754 m!4206765))

(assert (=> b!3694754 m!4206767))

(assert (=> b!3694759 m!4206563))

(assert (=> b!3694759 m!4206763))

(assert (=> b!3694759 m!4206763))

(declare-fun m!4206769 () Bool)

(assert (=> b!3694759 m!4206769))

(assert (=> b!3694759 m!4206563))

(assert (=> b!3694759 m!4206765))

(assert (=> b!3694759 m!4206769))

(assert (=> b!3694759 m!4206765))

(declare-fun m!4206771 () Bool)

(assert (=> b!3694759 m!4206771))

(assert (=> d!1084061 m!4206563))

(declare-fun m!4206773 () Bool)

(assert (=> d!1084061 m!4206773))

(declare-fun m!4206775 () Bool)

(assert (=> d!1084061 m!4206775))

(declare-fun m!4206777 () Bool)

(assert (=> b!3694761 m!4206777))

(assert (=> bm!267108 m!4206563))

(assert (=> bm!267108 m!4206773))

(assert (=> b!3694539 d!1084061))

(declare-fun d!1084063 () Bool)

(declare-fun list!14644 (Conc!12028) List!39297)

(assert (=> d!1084063 (= (list!14642 (charsOf!3930 token!544)) (list!14644 (c!638736 (charsOf!3930 token!544))))))

(declare-fun bs!574259 () Bool)

(assert (= bs!574259 d!1084063))

(declare-fun m!4206779 () Bool)

(assert (=> bs!574259 m!4206779))

(assert (=> b!3694539 d!1084063))

(declare-fun d!1084065 () Bool)

(declare-fun lt!1293356 () BalanceConc!23670)

(assert (=> d!1084065 (= (list!14642 lt!1293356) (originalCharacters!6639 token!544))))

(assert (=> d!1084065 (= lt!1293356 (dynLambda!17154 (toChars!8122 (transformation!5931 (rule!8783 token!544))) (value!189489 token!544)))))

(assert (=> d!1084065 (= (charsOf!3930 token!544) lt!1293356)))

(declare-fun b_lambda!109605 () Bool)

(assert (=> (not b_lambda!109605) (not d!1084065)))

(assert (=> d!1084065 t!301626))

(declare-fun b_and!276095 () Bool)

(assert (= b_and!276091 (and (=> t!301626 result!260666) b_and!276095)))

(assert (=> d!1084065 t!301628))

(declare-fun b_and!276097 () Bool)

(assert (= b_and!276093 (and (=> t!301628 result!260670) b_and!276097)))

(declare-fun m!4206781 () Bool)

(assert (=> d!1084065 m!4206781))

(assert (=> d!1084065 m!4206737))

(assert (=> b!3694539 d!1084065))

(declare-fun b!3694778 () Bool)

(declare-fun e!2287898 () Bool)

(declare-fun inv!16 (TokenValue!6161) Bool)

(assert (=> b!3694778 (= e!2287898 (inv!16 (value!189489 token!544)))))

(declare-fun b!3694779 () Bool)

(declare-fun e!2287900 () Bool)

(declare-fun inv!15 (TokenValue!6161) Bool)

(assert (=> b!3694779 (= e!2287900 (inv!15 (value!189489 token!544)))))

(declare-fun b!3694777 () Bool)

(declare-fun e!2287899 () Bool)

(declare-fun inv!17 (TokenValue!6161) Bool)

(assert (=> b!3694777 (= e!2287899 (inv!17 (value!189489 token!544)))))

(declare-fun d!1084067 () Bool)

(declare-fun c!638768 () Bool)

(assert (=> d!1084067 (= c!638768 (is-IntegerValue!18483 (value!189489 token!544)))))

(assert (=> d!1084067 (= (inv!21 (value!189489 token!544)) e!2287898)))

(declare-fun b!3694780 () Bool)

(assert (=> b!3694780 (= e!2287898 e!2287899)))

(declare-fun c!638769 () Bool)

(assert (=> b!3694780 (= c!638769 (is-IntegerValue!18484 (value!189489 token!544)))))

(declare-fun b!3694781 () Bool)

(declare-fun res!1502267 () Bool)

(assert (=> b!3694781 (=> res!1502267 e!2287900)))

(assert (=> b!3694781 (= res!1502267 (not (is-IntegerValue!18485 (value!189489 token!544))))))

(assert (=> b!3694781 (= e!2287899 e!2287900)))

(assert (= (and d!1084067 c!638768) b!3694778))

(assert (= (and d!1084067 (not c!638768)) b!3694780))

(assert (= (and b!3694780 c!638769) b!3694777))

(assert (= (and b!3694780 (not c!638769)) b!3694781))

(assert (= (and b!3694781 (not res!1502267)) b!3694779))

(declare-fun m!4206783 () Bool)

(assert (=> b!3694778 m!4206783))

(declare-fun m!4206785 () Bool)

(assert (=> b!3694779 m!4206785))

(declare-fun m!4206787 () Bool)

(assert (=> b!3694777 m!4206787))

(assert (=> b!3694554 d!1084067))

(declare-fun bm!267115 () Bool)

(declare-fun c!638775 () Bool)

(declare-fun call!267121 () Bool)

(declare-fun c!638774 () Bool)

(assert (=> bm!267115 (= call!267121 (validRegex!4893 (ite c!638774 (reg!11019 (regex!5931 (get!13000 lt!1293287))) (ite c!638775 (regTwo!21893 (regex!5931 (get!13000 lt!1293287))) (regTwo!21892 (regex!5931 (get!13000 lt!1293287)))))))))

(declare-fun d!1084069 () Bool)

(declare-fun res!1502278 () Bool)

(declare-fun e!2287919 () Bool)

(assert (=> d!1084069 (=> res!1502278 e!2287919)))

(assert (=> d!1084069 (= res!1502278 (is-ElementMatch!10690 (regex!5931 (get!13000 lt!1293287))))))

(assert (=> d!1084069 (= (validRegex!4893 (regex!5931 (get!13000 lt!1293287))) e!2287919)))

(declare-fun b!3694800 () Bool)

(declare-fun e!2287918 () Bool)

(declare-fun e!2287920 () Bool)

(assert (=> b!3694800 (= e!2287918 e!2287920)))

(assert (=> b!3694800 (= c!638775 (is-Union!10690 (regex!5931 (get!13000 lt!1293287))))))

(declare-fun bm!267116 () Bool)

(declare-fun call!267122 () Bool)

(assert (=> bm!267116 (= call!267122 call!267121)))

(declare-fun b!3694801 () Bool)

(assert (=> b!3694801 (= e!2287919 e!2287918)))

(assert (=> b!3694801 (= c!638774 (is-Star!10690 (regex!5931 (get!13000 lt!1293287))))))

(declare-fun b!3694802 () Bool)

(declare-fun e!2287917 () Bool)

(assert (=> b!3694802 (= e!2287917 call!267121)))

(declare-fun b!3694803 () Bool)

(assert (=> b!3694803 (= e!2287918 e!2287917)))

(declare-fun res!1502282 () Bool)

(assert (=> b!3694803 (= res!1502282 (not (nullable!3731 (reg!11019 (regex!5931 (get!13000 lt!1293287))))))))

(assert (=> b!3694803 (=> (not res!1502282) (not e!2287917))))

(declare-fun b!3694804 () Bool)

(declare-fun res!1502280 () Bool)

(declare-fun e!2287916 () Bool)

(assert (=> b!3694804 (=> (not res!1502280) (not e!2287916))))

(declare-fun call!267120 () Bool)

(assert (=> b!3694804 (= res!1502280 call!267120)))

(assert (=> b!3694804 (= e!2287920 e!2287916)))

(declare-fun b!3694805 () Bool)

(declare-fun e!2287915 () Bool)

(assert (=> b!3694805 (= e!2287915 call!267122)))

(declare-fun b!3694806 () Bool)

(assert (=> b!3694806 (= e!2287916 call!267122)))

(declare-fun b!3694807 () Bool)

(declare-fun res!1502279 () Bool)

(declare-fun e!2287921 () Bool)

(assert (=> b!3694807 (=> res!1502279 e!2287921)))

(assert (=> b!3694807 (= res!1502279 (not (is-Concat!16852 (regex!5931 (get!13000 lt!1293287)))))))

(assert (=> b!3694807 (= e!2287920 e!2287921)))

(declare-fun bm!267117 () Bool)

(assert (=> bm!267117 (= call!267120 (validRegex!4893 (ite c!638775 (regOne!21893 (regex!5931 (get!13000 lt!1293287))) (regOne!21892 (regex!5931 (get!13000 lt!1293287))))))))

(declare-fun b!3694808 () Bool)

(assert (=> b!3694808 (= e!2287921 e!2287915)))

(declare-fun res!1502281 () Bool)

(assert (=> b!3694808 (=> (not res!1502281) (not e!2287915))))

(assert (=> b!3694808 (= res!1502281 call!267120)))

(assert (= (and d!1084069 (not res!1502278)) b!3694801))

(assert (= (and b!3694801 c!638774) b!3694803))

(assert (= (and b!3694801 (not c!638774)) b!3694800))

(assert (= (and b!3694803 res!1502282) b!3694802))

(assert (= (and b!3694800 c!638775) b!3694804))

(assert (= (and b!3694800 (not c!638775)) b!3694807))

(assert (= (and b!3694804 res!1502280) b!3694806))

(assert (= (and b!3694807 (not res!1502279)) b!3694808))

(assert (= (and b!3694808 res!1502281) b!3694805))

(assert (= (or b!3694806 b!3694805) bm!267116))

(assert (= (or b!3694804 b!3694808) bm!267117))

(assert (= (or b!3694802 bm!267116) bm!267115))

(declare-fun m!4206789 () Bool)

(assert (=> bm!267115 m!4206789))

(declare-fun m!4206791 () Bool)

(assert (=> b!3694803 m!4206791))

(declare-fun m!4206793 () Bool)

(assert (=> bm!267117 m!4206793))

(assert (=> b!3694543 d!1084069))

(declare-fun d!1084071 () Bool)

(assert (=> d!1084071 (= (get!13000 lt!1293287) (v!38402 lt!1293287))))

(assert (=> b!3694543 d!1084071))

(declare-fun d!1084073 () Bool)

(declare-fun res!1502285 () Bool)

(declare-fun e!2287924 () Bool)

(assert (=> d!1084073 (=> (not res!1502285) (not e!2287924))))

(declare-fun rulesValid!2291 (LexerInterface!5520 List!39298) Bool)

(assert (=> d!1084073 (= res!1502285 (rulesValid!2291 thiss!25322 rules!3598))))

(assert (=> d!1084073 (= (rulesInvariant!4917 thiss!25322 rules!3598) e!2287924)))

(declare-fun b!3694811 () Bool)

(declare-datatypes ((List!39302 0))(
  ( (Nil!39178) (Cons!39178 (h!44598 String!44141) (t!301631 List!39302)) )
))
(declare-fun noDuplicateTag!2287 (LexerInterface!5520 List!39298 List!39302) Bool)

(assert (=> b!3694811 (= e!2287924 (noDuplicateTag!2287 thiss!25322 rules!3598 Nil!39178))))

(assert (= (and d!1084073 res!1502285) b!3694811))

(declare-fun m!4206795 () Bool)

(assert (=> d!1084073 m!4206795))

(declare-fun m!4206797 () Bool)

(assert (=> b!3694811 m!4206797))

(assert (=> b!3694553 d!1084073))

(declare-fun d!1084075 () Bool)

(assert (=> d!1084075 (= (get!13001 lt!1293286) (v!38403 lt!1293286))))

(assert (=> b!3694552 d!1084075))

(declare-fun b!3694822 () Bool)

(declare-fun b_free!98185 () Bool)

(declare-fun b_next!98889 () Bool)

(assert (=> b!3694822 (= b_free!98185 (not b_next!98889))))

(declare-fun tp!1122880 () Bool)

(declare-fun b_and!276099 () Bool)

(assert (=> b!3694822 (= tp!1122880 b_and!276099)))

(declare-fun b_free!98187 () Bool)

(declare-fun b_next!98891 () Bool)

(assert (=> b!3694822 (= b_free!98187 (not b_next!98891))))

(declare-fun tb!214045 () Bool)

(declare-fun t!301630 () Bool)

(assert (=> (and b!3694822 (= (toChars!8122 (transformation!5931 (h!44594 (t!301621 rules!3598)))) (toChars!8122 (transformation!5931 (rule!8783 token!544)))) t!301630) tb!214045))

(declare-fun result!260674 () Bool)

(assert (= result!260674 result!260666))

(assert (=> b!3694714 t!301630))

(assert (=> d!1084065 t!301630))

(declare-fun tp!1122878 () Bool)

(declare-fun b_and!276101 () Bool)

(assert (=> b!3694822 (= tp!1122878 (and (=> t!301630 result!260674) b_and!276101))))

(declare-fun e!2287935 () Bool)

(assert (=> b!3694822 (= e!2287935 (and tp!1122880 tp!1122878))))

(declare-fun b!3694821 () Bool)

(declare-fun tp!1122881 () Bool)

(declare-fun e!2287936 () Bool)

(assert (=> b!3694821 (= e!2287936 (and tp!1122881 (inv!52651 (tag!6753 (h!44594 (t!301621 rules!3598)))) (inv!52654 (transformation!5931 (h!44594 (t!301621 rules!3598)))) e!2287935))))

(declare-fun b!3694820 () Bool)

(declare-fun e!2287934 () Bool)

(declare-fun tp!1122879 () Bool)

(assert (=> b!3694820 (= e!2287934 (and e!2287936 tp!1122879))))

(assert (=> b!3694550 (= tp!1122838 e!2287934)))

(assert (= b!3694821 b!3694822))

(assert (= b!3694820 b!3694821))

(assert (= (and b!3694550 (is-Cons!39174 (t!301621 rules!3598))) b!3694820))

(declare-fun m!4206799 () Bool)

(assert (=> b!3694821 m!4206799))

(declare-fun m!4206801 () Bool)

(assert (=> b!3694821 m!4206801))

(declare-fun b!3694827 () Bool)

(declare-fun e!2287939 () Bool)

(declare-fun tp!1122884 () Bool)

(assert (=> b!3694827 (= e!2287939 (and tp_is_empty!18455 tp!1122884))))

(assert (=> b!3694554 (= tp!1122839 e!2287939)))

(assert (= (and b!3694554 (is-Cons!39173 (originalCharacters!6639 token!544))) b!3694827))

(declare-fun b!3694841 () Bool)

(declare-fun e!2287942 () Bool)

(declare-fun tp!1122896 () Bool)

(declare-fun tp!1122898 () Bool)

(assert (=> b!3694841 (= e!2287942 (and tp!1122896 tp!1122898))))

(declare-fun b!3694839 () Bool)

(declare-fun tp!1122895 () Bool)

(declare-fun tp!1122899 () Bool)

(assert (=> b!3694839 (= e!2287942 (and tp!1122895 tp!1122899))))

(declare-fun b!3694838 () Bool)

(assert (=> b!3694838 (= e!2287942 tp_is_empty!18455)))

(assert (=> b!3694548 (= tp!1122831 e!2287942)))

(declare-fun b!3694840 () Bool)

(declare-fun tp!1122897 () Bool)

(assert (=> b!3694840 (= e!2287942 tp!1122897)))

(assert (= (and b!3694548 (is-ElementMatch!10690 (regex!5931 (rule!8783 token!544)))) b!3694838))

(assert (= (and b!3694548 (is-Concat!16852 (regex!5931 (rule!8783 token!544)))) b!3694839))

(assert (= (and b!3694548 (is-Star!10690 (regex!5931 (rule!8783 token!544)))) b!3694840))

(assert (= (and b!3694548 (is-Union!10690 (regex!5931 (rule!8783 token!544)))) b!3694841))

(declare-fun b!3694842 () Bool)

(declare-fun e!2287943 () Bool)

(declare-fun tp!1122900 () Bool)

(assert (=> b!3694842 (= e!2287943 (and tp_is_empty!18455 tp!1122900))))

(assert (=> b!3694542 (= tp!1122835 e!2287943)))

(assert (= (and b!3694542 (is-Cons!39173 (t!301620 input!3172))) b!3694842))

(declare-fun b!3694846 () Bool)

(declare-fun e!2287944 () Bool)

(declare-fun tp!1122902 () Bool)

(declare-fun tp!1122904 () Bool)

(assert (=> b!3694846 (= e!2287944 (and tp!1122902 tp!1122904))))

(declare-fun b!3694844 () Bool)

(declare-fun tp!1122901 () Bool)

(declare-fun tp!1122905 () Bool)

(assert (=> b!3694844 (= e!2287944 (and tp!1122901 tp!1122905))))

(declare-fun b!3694843 () Bool)

(assert (=> b!3694843 (= e!2287944 tp_is_empty!18455)))

(assert (=> b!3694547 (= tp!1122832 e!2287944)))

(declare-fun b!3694845 () Bool)

(declare-fun tp!1122903 () Bool)

(assert (=> b!3694845 (= e!2287944 tp!1122903)))

(assert (= (and b!3694547 (is-ElementMatch!10690 (regex!5931 (h!44594 rules!3598)))) b!3694843))

(assert (= (and b!3694547 (is-Concat!16852 (regex!5931 (h!44594 rules!3598)))) b!3694844))

(assert (= (and b!3694547 (is-Star!10690 (regex!5931 (h!44594 rules!3598)))) b!3694845))

(assert (= (and b!3694547 (is-Union!10690 (regex!5931 (h!44594 rules!3598)))) b!3694846))

(declare-fun b_lambda!109607 () Bool)

(assert (= b_lambda!109605 (or (and b!3694544 b_free!98171) (and b!3694541 b_free!98175 (= (toChars!8122 (transformation!5931 (h!44594 rules!3598))) (toChars!8122 (transformation!5931 (rule!8783 token!544))))) (and b!3694822 b_free!98187 (= (toChars!8122 (transformation!5931 (h!44594 (t!301621 rules!3598)))) (toChars!8122 (transformation!5931 (rule!8783 token!544))))) b_lambda!109607)))

(declare-fun b_lambda!109609 () Bool)

(assert (= b_lambda!109603 (or (and b!3694544 b_free!98171) (and b!3694541 b_free!98175 (= (toChars!8122 (transformation!5931 (h!44594 rules!3598))) (toChars!8122 (transformation!5931 (rule!8783 token!544))))) (and b!3694822 b_free!98187 (= (toChars!8122 (transformation!5931 (h!44594 (t!301621 rules!3598)))) (toChars!8122 (transformation!5931 (rule!8783 token!544))))) b_lambda!109609)))

(push 1)

(assert (not b_next!98873))

(assert (not b!3694840))

(assert (not b!3694720))

(assert (not b!3694844))

(assert b_and!276099)

(assert (not d!1084063))

(assert (not b!3694842))

(assert (not d!1084057))

(assert (not bm!267108))

(assert (not bm!267104))

(assert (not d!1084061))

(assert (not b!3694811))

(assert (not d!1084035))

(assert (not b!3694634))

(assert (not b!3694654))

(assert (not b_lambda!109607))

(assert (not d!1084043))

(assert (not b!3694714))

(assert (not b!3694629))

(assert (not b!3694821))

(assert (not d!1084065))

(assert (not d!1084037))

(assert (not b!3694633))

(assert (not b!3694846))

(assert (not d!1084029))

(assert (not b!3694779))

(assert (not d!1084027))

(assert (not b!3694777))

(assert b_and!276075)

(assert (not d!1084041))

(assert (not b!3694696))

(assert (not b!3694761))

(assert (not b_lambda!109609))

(assert (not b!3694756))

(assert b_and!276095)

(assert (not b!3694820))

(assert (not d!1084049))

(assert (not b_next!98889))

(assert (not b!3694652))

(assert (not b!3694694))

(assert b_and!276101)

(assert (not b_next!98891))

(assert (not tb!214041))

(assert (not b!3694692))

(assert (not b!3694724))

(assert (not bm!267117))

(assert (not b!3694723))

(assert (not b!3694700))

(assert (not b!3694655))

(assert (not b!3694698))

(assert (not b!3694759))

(assert (not b!3694636))

(assert (not b!3694631))

(assert (not d!1084073))

(assert (not b!3694827))

(assert (not b!3694778))

(assert (not b!3694758))

(assert (not b_next!98879))

(assert (not b!3694839))

(assert (not b_next!98877))

(assert (not b_next!98875))

(assert (not b!3694845))

(assert tp_is_empty!18455)

(assert (not b!3694803))

(assert (not bm!267115))

(assert b_and!276079)

(assert (not b!3694697))

(assert (not b!3694757))

(assert b_and!276097)

(assert (not b!3694695))

(assert (not b!3694693))

(assert (not b!3694841))

(assert (not b!3694632))

(assert (not b!3694754))

(assert (not b!3694715))

(assert (not d!1084045))

(assert (not b!3694630))

(assert (not b!3694635))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!98873))

(assert b_and!276099)

(assert b_and!276075)

(assert (not b_next!98879))

(assert b_and!276079)

(assert b_and!276097)

(assert b_and!276095)

(assert (not b_next!98889))

(assert b_and!276101)

(assert (not b_next!98891))

(assert (not b_next!98877))

(assert (not b_next!98875))

(check-sat)

(pop 1)

