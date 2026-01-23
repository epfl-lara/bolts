; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!384414 () Bool)

(assert start!384414)

(declare-fun b!4072553 () Bool)

(declare-fun b_free!113329 () Bool)

(declare-fun b_next!114033 () Bool)

(assert (=> b!4072553 (= b_free!113329 (not b_next!114033))))

(declare-fun tp!1232528 () Bool)

(declare-fun b_and!312955 () Bool)

(assert (=> b!4072553 (= tp!1232528 b_and!312955)))

(declare-fun b_free!113331 () Bool)

(declare-fun b_next!114035 () Bool)

(assert (=> b!4072553 (= b_free!113331 (not b_next!114035))))

(declare-fun tp!1232530 () Bool)

(declare-fun b_and!312957 () Bool)

(assert (=> b!4072553 (= tp!1232530 b_and!312957)))

(declare-fun b!4072543 () Bool)

(declare-fun b_free!113333 () Bool)

(declare-fun b_next!114037 () Bool)

(assert (=> b!4072543 (= b_free!113333 (not b_next!114037))))

(declare-fun tp!1232529 () Bool)

(declare-fun b_and!312959 () Bool)

(assert (=> b!4072543 (= tp!1232529 b_and!312959)))

(declare-fun b_free!113335 () Bool)

(declare-fun b_next!114039 () Bool)

(assert (=> b!4072543 (= b_free!113335 (not b_next!114039))))

(declare-fun tp!1232531 () Bool)

(declare-fun b_and!312961 () Bool)

(assert (=> b!4072543 (= tp!1232531 b_and!312961)))

(declare-fun e!2527568 () Bool)

(assert (=> b!4072543 (= e!2527568 (and tp!1232529 tp!1232531))))

(declare-fun e!2527561 () Bool)

(declare-datatypes ((List!43646 0))(
  ( (Nil!43522) (Cons!43522 (h!48942 (_ BitVec 16)) (t!337125 List!43646)) )
))
(declare-datatypes ((TokenValue!7227 0))(
  ( (FloatLiteralValue!14454 (text!51034 List!43646)) (TokenValueExt!7226 (__x!26671 Int)) (Broken!36135 (value!220042 List!43646)) (Object!7350) (End!7227) (Def!7227) (Underscore!7227) (Match!7227) (Else!7227) (Error!7227) (Case!7227) (If!7227) (Extends!7227) (Abstract!7227) (Class!7227) (Val!7227) (DelimiterValue!14454 (del!7287 List!43646)) (KeywordValue!7233 (value!220043 List!43646)) (CommentValue!14454 (value!220044 List!43646)) (WhitespaceValue!14454 (value!220045 List!43646)) (IndentationValue!7227 (value!220046 List!43646)) (String!49886) (Int32!7227) (Broken!36136 (value!220047 List!43646)) (Boolean!7228) (Unit!63075) (OperatorValue!7230 (op!7287 List!43646)) (IdentifierValue!14454 (value!220048 List!43646)) (IdentifierValue!14455 (value!220049 List!43646)) (WhitespaceValue!14455 (value!220050 List!43646)) (True!14454) (False!14454) (Broken!36137 (value!220051 List!43646)) (Broken!36138 (value!220052 List!43646)) (True!14455) (RightBrace!7227) (RightBracket!7227) (Colon!7227) (Null!7227) (Comma!7227) (LeftBracket!7227) (False!14455) (LeftBrace!7227) (ImaginaryLiteralValue!7227 (text!51035 List!43646)) (StringLiteralValue!21681 (value!220053 List!43646)) (EOFValue!7227 (value!220054 List!43646)) (IdentValue!7227 (value!220055 List!43646)) (DelimiterValue!14455 (value!220056 List!43646)) (DedentValue!7227 (value!220057 List!43646)) (NewLineValue!7227 (value!220058 List!43646)) (IntegerValue!21681 (value!220059 (_ BitVec 32)) (text!51036 List!43646)) (IntegerValue!21682 (value!220060 Int) (text!51037 List!43646)) (Times!7227) (Or!7227) (Equal!7227) (Minus!7227) (Broken!36139 (value!220061 List!43646)) (And!7227) (Div!7227) (LessEqual!7227) (Mod!7227) (Concat!19129) (Not!7227) (Plus!7227) (SpaceValue!7227 (value!220062 List!43646)) (IntegerValue!21683 (value!220063 Int) (text!51038 List!43646)) (StringLiteralValue!21682 (text!51039 List!43646)) (FloatLiteralValue!14455 (text!51040 List!43646)) (BytesLiteralValue!7227 (value!220064 List!43646)) (CommentValue!14455 (value!220065 List!43646)) (StringLiteralValue!21683 (value!220066 List!43646)) (ErrorTokenValue!7227 (msg!7288 List!43646)) )
))
(declare-datatypes ((C!23990 0))(
  ( (C!23991 (val!14105 Int)) )
))
(declare-datatypes ((Regex!11902 0))(
  ( (ElementMatch!11902 (c!702851 C!23990)) (Concat!19130 (regOne!24316 Regex!11902) (regTwo!24316 Regex!11902)) (EmptyExpr!11902) (Star!11902 (reg!12231 Regex!11902)) (EmptyLang!11902) (Union!11902 (regOne!24317 Regex!11902) (regTwo!24317 Regex!11902)) )
))
(declare-datatypes ((String!49887 0))(
  ( (String!49888 (value!220067 String)) )
))
(declare-datatypes ((List!43647 0))(
  ( (Nil!43523) (Cons!43523 (h!48943 C!23990) (t!337126 List!43647)) )
))
(declare-datatypes ((IArray!26421 0))(
  ( (IArray!26422 (innerList!13268 List!43647)) )
))
(declare-datatypes ((Conc!13208 0))(
  ( (Node!13208 (left!32725 Conc!13208) (right!33055 Conc!13208) (csize!26646 Int) (cheight!13419 Int)) (Leaf!20422 (xs!16514 IArray!26421) (csize!26647 Int)) (Empty!13208) )
))
(declare-datatypes ((BalanceConc!26010 0))(
  ( (BalanceConc!26011 (c!702852 Conc!13208)) )
))
(declare-datatypes ((TokenValueInjection!13882 0))(
  ( (TokenValueInjection!13883 (toValue!9561 Int) (toChars!9420 Int)) )
))
(declare-datatypes ((Rule!13794 0))(
  ( (Rule!13795 (regex!6997 Regex!11902) (tag!7857 String!49887) (isSeparator!6997 Bool) (transformation!6997 TokenValueInjection!13882)) )
))
(declare-fun r!4213 () Rule!13794)

(declare-fun b!4072544 () Bool)

(declare-fun e!2527558 () Bool)

(declare-fun tp!1232527 () Bool)

(declare-fun inv!58177 (String!49887) Bool)

(declare-fun inv!58180 (TokenValueInjection!13882) Bool)

(assert (=> b!4072544 (= e!2527558 (and tp!1232527 (inv!58177 (tag!7857 r!4213)) (inv!58180 (transformation!6997 r!4213)) e!2527561))))

(declare-fun b!4072545 () Bool)

(declare-fun res!1662965 () Bool)

(declare-fun e!2527560 () Bool)

(assert (=> b!4072545 (=> (not res!1662965) (not e!2527560))))

(declare-datatypes ((List!43648 0))(
  ( (Nil!43524) (Cons!43524 (h!48944 Rule!13794) (t!337127 List!43648)) )
))
(declare-fun rules!3870 () List!43648)

(declare-fun isEmpty!25970 (List!43648) Bool)

(assert (=> b!4072545 (= res!1662965 (not (isEmpty!25970 rules!3870)))))

(declare-fun b!4072546 () Bool)

(declare-fun e!2527557 () Bool)

(declare-fun tp_is_empty!20807 () Bool)

(declare-fun tp!1232526 () Bool)

(assert (=> b!4072546 (= e!2527557 (and tp_is_empty!20807 tp!1232526))))

(declare-fun b!4072547 () Bool)

(declare-fun e!2527562 () Bool)

(declare-fun tp!1232532 () Bool)

(assert (=> b!4072547 (= e!2527562 (and tp!1232532 (inv!58177 (tag!7857 (h!48944 rules!3870))) (inv!58180 (transformation!6997 (h!48944 rules!3870))) e!2527568))))

(declare-fun b!4072549 () Bool)

(declare-fun res!1662969 () Bool)

(assert (=> b!4072549 (=> (not res!1662969) (not e!2527560))))

(declare-fun p!2988 () List!43647)

(declare-fun isEmpty!25971 (List!43647) Bool)

(assert (=> b!4072549 (= res!1662969 (not (isEmpty!25971 p!2988)))))

(declare-fun b!4072550 () Bool)

(declare-fun e!2527567 () Bool)

(declare-fun tp!1232524 () Bool)

(assert (=> b!4072550 (= e!2527567 (and e!2527562 tp!1232524))))

(declare-fun b!4072551 () Bool)

(declare-fun res!1662968 () Bool)

(assert (=> b!4072551 (=> (not res!1662968) (not e!2527560))))

(declare-datatypes ((LexerInterface!6586 0))(
  ( (LexerInterfaceExt!6583 (__x!26672 Int)) (Lexer!6584) )
))
(declare-fun thiss!26199 () LexerInterface!6586)

(declare-fun rulesInvariant!5929 (LexerInterface!6586 List!43648) Bool)

(assert (=> b!4072551 (= res!1662968 (rulesInvariant!5929 thiss!26199 rules!3870))))

(declare-fun b!4072552 () Bool)

(declare-fun e!2527559 () Bool)

(assert (=> b!4072552 (= e!2527560 e!2527559)))

(declare-fun res!1662966 () Bool)

(assert (=> b!4072552 (=> (not res!1662966) (not e!2527559))))

(declare-fun suffix!1518 () List!43647)

(declare-fun lt!1457673 () BalanceConc!26010)

(declare-fun input!3411 () List!43647)

(declare-datatypes ((Token!13120 0))(
  ( (Token!13121 (value!220068 TokenValue!7227) (rule!10101 Rule!13794) (size!32525 Int) (originalCharacters!7591 List!43647)) )
))
(declare-datatypes ((tuple2!42536 0))(
  ( (tuple2!42537 (_1!24402 Token!13120) (_2!24402 List!43647)) )
))
(declare-datatypes ((Option!9405 0))(
  ( (None!9404) (Some!9404 (v!39840 tuple2!42536)) )
))
(declare-fun maxPrefix!3878 (LexerInterface!6586 List!43648 List!43647) Option!9405)

(declare-fun apply!10180 (TokenValueInjection!13882 BalanceConc!26010) TokenValue!7227)

(declare-fun size!32526 (List!43647) Int)

(assert (=> b!4072552 (= res!1662966 (= (maxPrefix!3878 thiss!26199 rules!3870 input!3411) (Some!9404 (tuple2!42537 (Token!13121 (apply!10180 (transformation!6997 r!4213) lt!1457673) r!4213 (size!32526 p!2988) p!2988) suffix!1518))))))

(declare-datatypes ((Unit!63076 0))(
  ( (Unit!63077) )
))
(declare-fun lt!1457672 () Unit!63076)

(declare-fun lemmaSemiInverse!1964 (TokenValueInjection!13882 BalanceConc!26010) Unit!63076)

(assert (=> b!4072552 (= lt!1457672 (lemmaSemiInverse!1964 (transformation!6997 r!4213) lt!1457673))))

(declare-fun seqFromList!5214 (List!43647) BalanceConc!26010)

(assert (=> b!4072552 (= lt!1457673 (seqFromList!5214 p!2988))))

(assert (=> b!4072553 (= e!2527561 (and tp!1232528 tp!1232530))))

(declare-fun b!4072554 () Bool)

(declare-fun res!1662971 () Bool)

(assert (=> b!4072554 (=> (not res!1662971) (not e!2527560))))

(declare-fun contains!8664 (List!43648 Rule!13794) Bool)

(assert (=> b!4072554 (= res!1662971 (contains!8664 rules!3870 r!4213))))

(declare-fun b!4072555 () Bool)

(declare-fun e!2527564 () Bool)

(declare-fun tp!1232523 () Bool)

(assert (=> b!4072555 (= e!2527564 (and tp_is_empty!20807 tp!1232523))))

(declare-fun res!1662967 () Bool)

(assert (=> start!384414 (=> (not res!1662967) (not e!2527560))))

(assert (=> start!384414 (= res!1662967 (is-Lexer!6584 thiss!26199))))

(assert (=> start!384414 e!2527560))

(assert (=> start!384414 true))

(assert (=> start!384414 e!2527564))

(assert (=> start!384414 e!2527567))

(declare-fun e!2527565 () Bool)

(assert (=> start!384414 e!2527565))

(assert (=> start!384414 e!2527557))

(assert (=> start!384414 e!2527558))

(declare-fun b!4072548 () Bool)

(declare-fun res!1662970 () Bool)

(assert (=> b!4072548 (=> (not res!1662970) (not e!2527560))))

(declare-fun ++!11403 (List!43647 List!43647) List!43647)

(assert (=> b!4072548 (= res!1662970 (= input!3411 (++!11403 p!2988 suffix!1518)))))

(declare-fun b!4072556 () Bool)

(declare-fun validRegex!5389 (Regex!11902) Bool)

(assert (=> b!4072556 (= e!2527559 (not (validRegex!5389 (regex!6997 r!4213))))))

(declare-fun ruleValid!2921 (LexerInterface!6586 Rule!13794) Bool)

(assert (=> b!4072556 (ruleValid!2921 thiss!26199 r!4213)))

(declare-fun lt!1457674 () Unit!63076)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1989 (LexerInterface!6586 Rule!13794 List!43648) Unit!63076)

(assert (=> b!4072556 (= lt!1457674 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1989 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4072557 () Bool)

(declare-fun tp!1232525 () Bool)

(assert (=> b!4072557 (= e!2527565 (and tp_is_empty!20807 tp!1232525))))

(assert (= (and start!384414 res!1662967) b!4072545))

(assert (= (and b!4072545 res!1662965) b!4072551))

(assert (= (and b!4072551 res!1662968) b!4072554))

(assert (= (and b!4072554 res!1662971) b!4072548))

(assert (= (and b!4072548 res!1662970) b!4072549))

(assert (= (and b!4072549 res!1662969) b!4072552))

(assert (= (and b!4072552 res!1662966) b!4072556))

(assert (= (and start!384414 (is-Cons!43523 suffix!1518)) b!4072555))

(assert (= b!4072547 b!4072543))

(assert (= b!4072550 b!4072547))

(assert (= (and start!384414 (is-Cons!43524 rules!3870)) b!4072550))

(assert (= (and start!384414 (is-Cons!43523 p!2988)) b!4072557))

(assert (= (and start!384414 (is-Cons!43523 input!3411)) b!4072546))

(assert (= b!4072544 b!4072553))

(assert (= start!384414 b!4072544))

(declare-fun m!4681549 () Bool)

(assert (=> b!4072552 m!4681549))

(declare-fun m!4681551 () Bool)

(assert (=> b!4072552 m!4681551))

(declare-fun m!4681553 () Bool)

(assert (=> b!4072552 m!4681553))

(declare-fun m!4681555 () Bool)

(assert (=> b!4072552 m!4681555))

(declare-fun m!4681557 () Bool)

(assert (=> b!4072552 m!4681557))

(declare-fun m!4681559 () Bool)

(assert (=> b!4072548 m!4681559))

(declare-fun m!4681561 () Bool)

(assert (=> b!4072549 m!4681561))

(declare-fun m!4681563 () Bool)

(assert (=> b!4072544 m!4681563))

(declare-fun m!4681565 () Bool)

(assert (=> b!4072544 m!4681565))

(declare-fun m!4681567 () Bool)

(assert (=> b!4072545 m!4681567))

(declare-fun m!4681569 () Bool)

(assert (=> b!4072554 m!4681569))

(declare-fun m!4681571 () Bool)

(assert (=> b!4072556 m!4681571))

(declare-fun m!4681573 () Bool)

(assert (=> b!4072556 m!4681573))

(declare-fun m!4681575 () Bool)

(assert (=> b!4072556 m!4681575))

(declare-fun m!4681577 () Bool)

(assert (=> b!4072551 m!4681577))

(declare-fun m!4681579 () Bool)

(assert (=> b!4072547 m!4681579))

(declare-fun m!4681581 () Bool)

(assert (=> b!4072547 m!4681581))

(push 1)

(assert (not b_next!114037))

(assert b_and!312961)

(assert b_and!312959)

(assert (not b!4072547))

(assert (not b!4072554))

(assert (not b!4072551))

(assert b_and!312957)

(assert (not b!4072549))

(assert tp_is_empty!20807)

(assert (not b!4072556))

(assert (not b_next!114033))

(assert (not b_next!114035))

(assert (not b!4072544))

(assert (not b!4072548))

(assert (not b!4072552))

(assert (not b!4072557))

(assert (not b!4072546))

(assert b_and!312955)

(assert (not b!4072545))

(assert (not b!4072555))

(assert (not b!4072550))

(assert (not b_next!114039))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!114037))

(assert b_and!312961)

(assert b_and!312959)

(assert b_and!312957)

(assert (not b_next!114033))

(assert (not b_next!114035))

(assert b_and!312955)

(assert (not b_next!114039))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1210538 () Bool)

(assert (=> d!1210538 (= (inv!58177 (tag!7857 (h!48944 rules!3870))) (= (mod (str.len (value!220067 (tag!7857 (h!48944 rules!3870)))) 2) 0))))

(assert (=> b!4072547 d!1210538))

(declare-fun d!1210540 () Bool)

(declare-fun res!1662999 () Bool)

(declare-fun e!2527607 () Bool)

(assert (=> d!1210540 (=> (not res!1662999) (not e!2527607))))

(declare-fun semiInverseModEq!2997 (Int Int) Bool)

(assert (=> d!1210540 (= res!1662999 (semiInverseModEq!2997 (toChars!9420 (transformation!6997 (h!48944 rules!3870))) (toValue!9561 (transformation!6997 (h!48944 rules!3870)))))))

(assert (=> d!1210540 (= (inv!58180 (transformation!6997 (h!48944 rules!3870))) e!2527607)))

(declare-fun b!4072605 () Bool)

(declare-fun equivClasses!2896 (Int Int) Bool)

(assert (=> b!4072605 (= e!2527607 (equivClasses!2896 (toChars!9420 (transformation!6997 (h!48944 rules!3870))) (toValue!9561 (transformation!6997 (h!48944 rules!3870)))))))

(assert (= (and d!1210540 res!1662999) b!4072605))

(declare-fun m!4681617 () Bool)

(assert (=> d!1210540 m!4681617))

(declare-fun m!4681619 () Bool)

(assert (=> b!4072605 m!4681619))

(assert (=> b!4072547 d!1210540))

(declare-fun b!4072648 () Bool)

(declare-fun e!2527631 () Bool)

(assert (=> b!4072648 (= e!2527631 true)))

(declare-fun d!1210546 () Bool)

(assert (=> d!1210546 e!2527631))

(assert (= d!1210546 b!4072648))

(declare-fun order!22735 () Int)

(declare-fun order!22737 () Int)

(declare-fun lambda!127636 () Int)

(declare-fun dynLambda!18487 (Int Int) Int)

(declare-fun dynLambda!18488 (Int Int) Int)

(assert (=> b!4072648 (< (dynLambda!18487 order!22735 (toValue!9561 (transformation!6997 r!4213))) (dynLambda!18488 order!22737 lambda!127636))))

(declare-fun order!22739 () Int)

(declare-fun dynLambda!18489 (Int Int) Int)

(assert (=> b!4072648 (< (dynLambda!18489 order!22739 (toChars!9420 (transformation!6997 r!4213))) (dynLambda!18488 order!22737 lambda!127636))))

(declare-fun list!16219 (BalanceConc!26010) List!43647)

(declare-fun dynLambda!18490 (Int TokenValue!7227) BalanceConc!26010)

(declare-fun dynLambda!18491 (Int BalanceConc!26010) TokenValue!7227)

(assert (=> d!1210546 (= (list!16219 (dynLambda!18490 (toChars!9420 (transformation!6997 r!4213)) (dynLambda!18491 (toValue!9561 (transformation!6997 r!4213)) lt!1457673))) (list!16219 lt!1457673))))

(declare-fun lt!1457706 () Unit!63076)

(declare-fun ForallOf!836 (Int BalanceConc!26010) Unit!63076)

(assert (=> d!1210546 (= lt!1457706 (ForallOf!836 lambda!127636 lt!1457673))))

(assert (=> d!1210546 (= (lemmaSemiInverse!1964 (transformation!6997 r!4213) lt!1457673) lt!1457706)))

(declare-fun b_lambda!118977 () Bool)

(assert (=> (not b_lambda!118977) (not d!1210546)))

(declare-fun t!337136 () Bool)

(declare-fun tb!244709 () Bool)

(assert (=> (and b!4072553 (= (toChars!9420 (transformation!6997 r!4213)) (toChars!9420 (transformation!6997 r!4213))) t!337136) tb!244709))

(declare-fun b!4072653 () Bool)

(declare-fun tp!1232565 () Bool)

(declare-fun e!2527634 () Bool)

(declare-fun inv!58182 (Conc!13208) Bool)

(assert (=> b!4072653 (= e!2527634 (and (inv!58182 (c!702852 (dynLambda!18490 (toChars!9420 (transformation!6997 r!4213)) (dynLambda!18491 (toValue!9561 (transformation!6997 r!4213)) lt!1457673)))) tp!1232565))))

(declare-fun result!296656 () Bool)

(declare-fun inv!58183 (BalanceConc!26010) Bool)

(assert (=> tb!244709 (= result!296656 (and (inv!58183 (dynLambda!18490 (toChars!9420 (transformation!6997 r!4213)) (dynLambda!18491 (toValue!9561 (transformation!6997 r!4213)) lt!1457673))) e!2527634))))

(assert (= tb!244709 b!4072653))

(declare-fun m!4681671 () Bool)

(assert (=> b!4072653 m!4681671))

(declare-fun m!4681673 () Bool)

(assert (=> tb!244709 m!4681673))

(assert (=> d!1210546 t!337136))

(declare-fun b_and!312975 () Bool)

(assert (= b_and!312957 (and (=> t!337136 result!296656) b_and!312975)))

(declare-fun t!337138 () Bool)

(declare-fun tb!244711 () Bool)

(assert (=> (and b!4072543 (= (toChars!9420 (transformation!6997 (h!48944 rules!3870))) (toChars!9420 (transformation!6997 r!4213))) t!337138) tb!244711))

(declare-fun result!296660 () Bool)

(assert (= result!296660 result!296656))

(assert (=> d!1210546 t!337138))

(declare-fun b_and!312977 () Bool)

(assert (= b_and!312961 (and (=> t!337138 result!296660) b_and!312977)))

(declare-fun b_lambda!118979 () Bool)

(assert (=> (not b_lambda!118979) (not d!1210546)))

(declare-fun t!337140 () Bool)

(declare-fun tb!244713 () Bool)

(assert (=> (and b!4072553 (= (toValue!9561 (transformation!6997 r!4213)) (toValue!9561 (transformation!6997 r!4213))) t!337140) tb!244713))

(declare-fun result!296662 () Bool)

(declare-fun inv!21 (TokenValue!7227) Bool)

(assert (=> tb!244713 (= result!296662 (inv!21 (dynLambda!18491 (toValue!9561 (transformation!6997 r!4213)) lt!1457673)))))

(declare-fun m!4681675 () Bool)

(assert (=> tb!244713 m!4681675))

(assert (=> d!1210546 t!337140))

(declare-fun b_and!312979 () Bool)

(assert (= b_and!312955 (and (=> t!337140 result!296662) b_and!312979)))

(declare-fun t!337142 () Bool)

(declare-fun tb!244715 () Bool)

(assert (=> (and b!4072543 (= (toValue!9561 (transformation!6997 (h!48944 rules!3870))) (toValue!9561 (transformation!6997 r!4213))) t!337142) tb!244715))

(declare-fun result!296666 () Bool)

(assert (= result!296666 result!296662))

(assert (=> d!1210546 t!337142))

(declare-fun b_and!312981 () Bool)

(assert (= b_and!312959 (and (=> t!337142 result!296666) b_and!312981)))

(declare-fun m!4681677 () Bool)

(assert (=> d!1210546 m!4681677))

(declare-fun m!4681679 () Bool)

(assert (=> d!1210546 m!4681679))

(declare-fun m!4681681 () Bool)

(assert (=> d!1210546 m!4681681))

(declare-fun m!4681683 () Bool)

(assert (=> d!1210546 m!4681683))

(declare-fun m!4681685 () Bool)

(assert (=> d!1210546 m!4681685))

(assert (=> d!1210546 m!4681683))

(assert (=> d!1210546 m!4681677))

(assert (=> b!4072552 d!1210546))

(declare-fun b!4072674 () Bool)

(declare-fun e!2527646 () Option!9405)

(declare-fun call!288374 () Option!9405)

(assert (=> b!4072674 (= e!2527646 call!288374)))

(declare-fun bm!288369 () Bool)

(declare-fun maxPrefixOneRule!2888 (LexerInterface!6586 Rule!13794 List!43647) Option!9405)

(assert (=> bm!288369 (= call!288374 (maxPrefixOneRule!2888 thiss!26199 (h!48944 rules!3870) input!3411))))

(declare-fun b!4072675 () Bool)

(declare-fun e!2527645 () Bool)

(declare-fun lt!1457717 () Option!9405)

(declare-fun get!14272 (Option!9405) tuple2!42536)

(assert (=> b!4072675 (= e!2527645 (contains!8664 rules!3870 (rule!10101 (_1!24402 (get!14272 lt!1457717)))))))

(declare-fun d!1210558 () Bool)

(declare-fun e!2527644 () Bool)

(assert (=> d!1210558 e!2527644))

(declare-fun res!1663048 () Bool)

(assert (=> d!1210558 (=> res!1663048 e!2527644)))

(declare-fun isEmpty!25974 (Option!9405) Bool)

(assert (=> d!1210558 (= res!1663048 (isEmpty!25974 lt!1457717))))

(assert (=> d!1210558 (= lt!1457717 e!2527646)))

(declare-fun c!702863 () Bool)

(assert (=> d!1210558 (= c!702863 (and (is-Cons!43524 rules!3870) (is-Nil!43524 (t!337127 rules!3870))))))

(declare-fun lt!1457719 () Unit!63076)

(declare-fun lt!1457720 () Unit!63076)

(assert (=> d!1210558 (= lt!1457719 lt!1457720)))

(declare-fun isPrefix!4092 (List!43647 List!43647) Bool)

(assert (=> d!1210558 (isPrefix!4092 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2643 (List!43647 List!43647) Unit!63076)

(assert (=> d!1210558 (= lt!1457720 (lemmaIsPrefixRefl!2643 input!3411 input!3411))))

(declare-fun rulesValidInductive!2568 (LexerInterface!6586 List!43648) Bool)

(assert (=> d!1210558 (rulesValidInductive!2568 thiss!26199 rules!3870)))

(assert (=> d!1210558 (= (maxPrefix!3878 thiss!26199 rules!3870 input!3411) lt!1457717)))

(declare-fun b!4072676 () Bool)

(declare-fun res!1663047 () Bool)

(assert (=> b!4072676 (=> (not res!1663047) (not e!2527645))))

(declare-fun charsOf!4805 (Token!13120) BalanceConc!26010)

(assert (=> b!4072676 (= res!1663047 (= (list!16219 (charsOf!4805 (_1!24402 (get!14272 lt!1457717)))) (originalCharacters!7591 (_1!24402 (get!14272 lt!1457717)))))))

(declare-fun b!4072677 () Bool)

(declare-fun res!1663044 () Bool)

(assert (=> b!4072677 (=> (not res!1663044) (not e!2527645))))

(assert (=> b!4072677 (= res!1663044 (= (++!11403 (list!16219 (charsOf!4805 (_1!24402 (get!14272 lt!1457717)))) (_2!24402 (get!14272 lt!1457717))) input!3411))))

(declare-fun b!4072678 () Bool)

(assert (=> b!4072678 (= e!2527644 e!2527645)))

(declare-fun res!1663049 () Bool)

(assert (=> b!4072678 (=> (not res!1663049) (not e!2527645))))

(declare-fun isDefined!7141 (Option!9405) Bool)

(assert (=> b!4072678 (= res!1663049 (isDefined!7141 lt!1457717))))

(declare-fun b!4072679 () Bool)

(declare-fun res!1663046 () Bool)

(assert (=> b!4072679 (=> (not res!1663046) (not e!2527645))))

(declare-fun matchR!5847 (Regex!11902 List!43647) Bool)

(assert (=> b!4072679 (= res!1663046 (matchR!5847 (regex!6997 (rule!10101 (_1!24402 (get!14272 lt!1457717)))) (list!16219 (charsOf!4805 (_1!24402 (get!14272 lt!1457717))))))))

(declare-fun b!4072680 () Bool)

(declare-fun lt!1457721 () Option!9405)

(declare-fun lt!1457718 () Option!9405)

(assert (=> b!4072680 (= e!2527646 (ite (and (is-None!9404 lt!1457721) (is-None!9404 lt!1457718)) None!9404 (ite (is-None!9404 lt!1457718) lt!1457721 (ite (is-None!9404 lt!1457721) lt!1457718 (ite (>= (size!32525 (_1!24402 (v!39840 lt!1457721))) (size!32525 (_1!24402 (v!39840 lt!1457718)))) lt!1457721 lt!1457718)))))))

(assert (=> b!4072680 (= lt!1457721 call!288374)))

(assert (=> b!4072680 (= lt!1457718 (maxPrefix!3878 thiss!26199 (t!337127 rules!3870) input!3411))))

(declare-fun b!4072681 () Bool)

(declare-fun res!1663050 () Bool)

(assert (=> b!4072681 (=> (not res!1663050) (not e!2527645))))

(assert (=> b!4072681 (= res!1663050 (= (value!220068 (_1!24402 (get!14272 lt!1457717))) (apply!10180 (transformation!6997 (rule!10101 (_1!24402 (get!14272 lt!1457717)))) (seqFromList!5214 (originalCharacters!7591 (_1!24402 (get!14272 lt!1457717)))))))))

(declare-fun b!4072682 () Bool)

(declare-fun res!1663045 () Bool)

(assert (=> b!4072682 (=> (not res!1663045) (not e!2527645))))

(assert (=> b!4072682 (= res!1663045 (< (size!32526 (_2!24402 (get!14272 lt!1457717))) (size!32526 input!3411)))))

(assert (= (and d!1210558 c!702863) b!4072674))

(assert (= (and d!1210558 (not c!702863)) b!4072680))

(assert (= (or b!4072674 b!4072680) bm!288369))

(assert (= (and d!1210558 (not res!1663048)) b!4072678))

(assert (= (and b!4072678 res!1663049) b!4072676))

(assert (= (and b!4072676 res!1663047) b!4072682))

(assert (= (and b!4072682 res!1663045) b!4072677))

(assert (= (and b!4072677 res!1663044) b!4072681))

(assert (= (and b!4072681 res!1663050) b!4072679))

(assert (= (and b!4072679 res!1663046) b!4072675))

(declare-fun m!4681687 () Bool)

(assert (=> d!1210558 m!4681687))

(declare-fun m!4681689 () Bool)

(assert (=> d!1210558 m!4681689))

(declare-fun m!4681691 () Bool)

(assert (=> d!1210558 m!4681691))

(declare-fun m!4681693 () Bool)

(assert (=> d!1210558 m!4681693))

(declare-fun m!4681695 () Bool)

(assert (=> b!4072677 m!4681695))

(declare-fun m!4681697 () Bool)

(assert (=> b!4072677 m!4681697))

(assert (=> b!4072677 m!4681697))

(declare-fun m!4681699 () Bool)

(assert (=> b!4072677 m!4681699))

(assert (=> b!4072677 m!4681699))

(declare-fun m!4681701 () Bool)

(assert (=> b!4072677 m!4681701))

(declare-fun m!4681703 () Bool)

(assert (=> bm!288369 m!4681703))

(declare-fun m!4681705 () Bool)

(assert (=> b!4072678 m!4681705))

(assert (=> b!4072679 m!4681695))

(assert (=> b!4072679 m!4681697))

(assert (=> b!4072679 m!4681697))

(assert (=> b!4072679 m!4681699))

(assert (=> b!4072679 m!4681699))

(declare-fun m!4681707 () Bool)

(assert (=> b!4072679 m!4681707))

(assert (=> b!4072676 m!4681695))

(assert (=> b!4072676 m!4681697))

(assert (=> b!4072676 m!4681697))

(assert (=> b!4072676 m!4681699))

(assert (=> b!4072675 m!4681695))

(declare-fun m!4681709 () Bool)

(assert (=> b!4072675 m!4681709))

(assert (=> b!4072681 m!4681695))

(declare-fun m!4681711 () Bool)

(assert (=> b!4072681 m!4681711))

(assert (=> b!4072681 m!4681711))

(declare-fun m!4681713 () Bool)

(assert (=> b!4072681 m!4681713))

(assert (=> b!4072682 m!4681695))

(declare-fun m!4681715 () Bool)

(assert (=> b!4072682 m!4681715))

(declare-fun m!4681717 () Bool)

(assert (=> b!4072682 m!4681717))

(declare-fun m!4681719 () Bool)

(assert (=> b!4072680 m!4681719))

(assert (=> b!4072552 d!1210558))

(declare-fun d!1210560 () Bool)

(declare-fun lt!1457724 () Int)

(assert (=> d!1210560 (>= lt!1457724 0)))

(declare-fun e!2527649 () Int)

(assert (=> d!1210560 (= lt!1457724 e!2527649)))

(declare-fun c!702866 () Bool)

(assert (=> d!1210560 (= c!702866 (is-Nil!43523 p!2988))))

(assert (=> d!1210560 (= (size!32526 p!2988) lt!1457724)))

(declare-fun b!4072687 () Bool)

(assert (=> b!4072687 (= e!2527649 0)))

(declare-fun b!4072688 () Bool)

(assert (=> b!4072688 (= e!2527649 (+ 1 (size!32526 (t!337126 p!2988))))))

(assert (= (and d!1210560 c!702866) b!4072687))

(assert (= (and d!1210560 (not c!702866)) b!4072688))

(declare-fun m!4681721 () Bool)

(assert (=> b!4072688 m!4681721))

(assert (=> b!4072552 d!1210560))

(declare-fun d!1210562 () Bool)

(declare-fun fromListB!2383 (List!43647) BalanceConc!26010)

(assert (=> d!1210562 (= (seqFromList!5214 p!2988) (fromListB!2383 p!2988))))

(declare-fun bs!592650 () Bool)

(assert (= bs!592650 d!1210562))

(declare-fun m!4681723 () Bool)

(assert (=> bs!592650 m!4681723))

(assert (=> b!4072552 d!1210562))

(declare-fun d!1210564 () Bool)

(assert (=> d!1210564 (= (apply!10180 (transformation!6997 r!4213) lt!1457673) (dynLambda!18491 (toValue!9561 (transformation!6997 r!4213)) lt!1457673))))

(declare-fun b_lambda!118981 () Bool)

(assert (=> (not b_lambda!118981) (not d!1210564)))

(assert (=> d!1210564 t!337140))

(declare-fun b_and!312983 () Bool)

(assert (= b_and!312979 (and (=> t!337140 result!296662) b_and!312983)))

(assert (=> d!1210564 t!337142))

(declare-fun b_and!312985 () Bool)

(assert (= b_and!312981 (and (=> t!337142 result!296666) b_and!312985)))

(assert (=> d!1210564 m!4681683))

(assert (=> b!4072552 d!1210564))

(declare-fun d!1210566 () Bool)

(declare-fun res!1663053 () Bool)

(declare-fun e!2527652 () Bool)

(assert (=> d!1210566 (=> (not res!1663053) (not e!2527652))))

(declare-fun rulesValid!2731 (LexerInterface!6586 List!43648) Bool)

(assert (=> d!1210566 (= res!1663053 (rulesValid!2731 thiss!26199 rules!3870))))

(assert (=> d!1210566 (= (rulesInvariant!5929 thiss!26199 rules!3870) e!2527652)))

(declare-fun b!4072691 () Bool)

(declare-datatypes ((List!43652 0))(
  ( (Nil!43528) (Cons!43528 (h!48948 String!49887) (t!337151 List!43652)) )
))
(declare-fun noDuplicateTag!2732 (LexerInterface!6586 List!43648 List!43652) Bool)

(assert (=> b!4072691 (= e!2527652 (noDuplicateTag!2732 thiss!26199 rules!3870 Nil!43528))))

(assert (= (and d!1210566 res!1663053) b!4072691))

(declare-fun m!4681725 () Bool)

(assert (=> d!1210566 m!4681725))

(declare-fun m!4681727 () Bool)

(assert (=> b!4072691 m!4681727))

(assert (=> b!4072551 d!1210566))

(declare-fun b!4072710 () Bool)

(declare-fun res!1663065 () Bool)

(declare-fun e!2527668 () Bool)

(assert (=> b!4072710 (=> (not res!1663065) (not e!2527668))))

(declare-fun call!288381 () Bool)

(assert (=> b!4072710 (= res!1663065 call!288381)))

(declare-fun e!2527672 () Bool)

(assert (=> b!4072710 (= e!2527672 e!2527668)))

(declare-fun b!4072711 () Bool)

(declare-fun call!288383 () Bool)

(assert (=> b!4072711 (= e!2527668 call!288383)))

(declare-fun b!4072712 () Bool)

(declare-fun e!2527667 () Bool)

(declare-fun e!2527669 () Bool)

(assert (=> b!4072712 (= e!2527667 e!2527669)))

(declare-fun c!702872 () Bool)

(assert (=> b!4072712 (= c!702872 (is-Star!11902 (regex!6997 r!4213)))))

(declare-fun b!4072713 () Bool)

(declare-fun e!2527670 () Bool)

(assert (=> b!4072713 (= e!2527669 e!2527670)))

(declare-fun res!1663068 () Bool)

(declare-fun nullable!4189 (Regex!11902) Bool)

(assert (=> b!4072713 (= res!1663068 (not (nullable!4189 (reg!12231 (regex!6997 r!4213)))))))

(assert (=> b!4072713 (=> (not res!1663068) (not e!2527670))))

(declare-fun b!4072714 () Bool)

(declare-fun e!2527673 () Bool)

(assert (=> b!4072714 (= e!2527673 call!288383)))

(declare-fun bm!288377 () Bool)

(declare-fun call!288382 () Bool)

(declare-fun c!702871 () Bool)

(assert (=> bm!288377 (= call!288382 (validRegex!5389 (ite c!702872 (reg!12231 (regex!6997 r!4213)) (ite c!702871 (regOne!24317 (regex!6997 r!4213)) (regOne!24316 (regex!6997 r!4213))))))))

(declare-fun b!4072715 () Bool)

(assert (=> b!4072715 (= e!2527669 e!2527672)))

(assert (=> b!4072715 (= c!702871 (is-Union!11902 (regex!6997 r!4213)))))

(declare-fun d!1210568 () Bool)

(declare-fun res!1663067 () Bool)

(assert (=> d!1210568 (=> res!1663067 e!2527667)))

(assert (=> d!1210568 (= res!1663067 (is-ElementMatch!11902 (regex!6997 r!4213)))))

(assert (=> d!1210568 (= (validRegex!5389 (regex!6997 r!4213)) e!2527667)))

(declare-fun bm!288376 () Bool)

(assert (=> bm!288376 (= call!288383 (validRegex!5389 (ite c!702871 (regTwo!24317 (regex!6997 r!4213)) (regTwo!24316 (regex!6997 r!4213)))))))

(declare-fun b!4072716 () Bool)

(assert (=> b!4072716 (= e!2527670 call!288382)))

(declare-fun bm!288378 () Bool)

(assert (=> bm!288378 (= call!288381 call!288382)))

(declare-fun b!4072717 () Bool)

(declare-fun res!1663066 () Bool)

(declare-fun e!2527671 () Bool)

(assert (=> b!4072717 (=> res!1663066 e!2527671)))

(assert (=> b!4072717 (= res!1663066 (not (is-Concat!19130 (regex!6997 r!4213))))))

(assert (=> b!4072717 (= e!2527672 e!2527671)))

(declare-fun b!4072718 () Bool)

(assert (=> b!4072718 (= e!2527671 e!2527673)))

(declare-fun res!1663064 () Bool)

(assert (=> b!4072718 (=> (not res!1663064) (not e!2527673))))

(assert (=> b!4072718 (= res!1663064 call!288381)))

(assert (= (and d!1210568 (not res!1663067)) b!4072712))

(assert (= (and b!4072712 c!702872) b!4072713))

(assert (= (and b!4072712 (not c!702872)) b!4072715))

(assert (= (and b!4072713 res!1663068) b!4072716))

(assert (= (and b!4072715 c!702871) b!4072710))

(assert (= (and b!4072715 (not c!702871)) b!4072717))

(assert (= (and b!4072710 res!1663065) b!4072711))

(assert (= (and b!4072717 (not res!1663066)) b!4072718))

(assert (= (and b!4072718 res!1663064) b!4072714))

(assert (= (or b!4072711 b!4072714) bm!288376))

(assert (= (or b!4072710 b!4072718) bm!288378))

(assert (= (or b!4072716 bm!288378) bm!288377))

(declare-fun m!4681729 () Bool)

(assert (=> b!4072713 m!4681729))

(declare-fun m!4681731 () Bool)

(assert (=> bm!288377 m!4681731))

(declare-fun m!4681733 () Bool)

(assert (=> bm!288376 m!4681733))

(assert (=> b!4072556 d!1210568))

(declare-fun d!1210570 () Bool)

(declare-fun res!1663073 () Bool)

(declare-fun e!2527676 () Bool)

(assert (=> d!1210570 (=> (not res!1663073) (not e!2527676))))

(assert (=> d!1210570 (= res!1663073 (validRegex!5389 (regex!6997 r!4213)))))

(assert (=> d!1210570 (= (ruleValid!2921 thiss!26199 r!4213) e!2527676)))

(declare-fun b!4072723 () Bool)

(declare-fun res!1663074 () Bool)

(assert (=> b!4072723 (=> (not res!1663074) (not e!2527676))))

(assert (=> b!4072723 (= res!1663074 (not (nullable!4189 (regex!6997 r!4213))))))

(declare-fun b!4072724 () Bool)

(assert (=> b!4072724 (= e!2527676 (not (= (tag!7857 r!4213) (String!49888 ""))))))

(assert (= (and d!1210570 res!1663073) b!4072723))

(assert (= (and b!4072723 res!1663074) b!4072724))

(assert (=> d!1210570 m!4681571))

(declare-fun m!4681735 () Bool)

(assert (=> b!4072723 m!4681735))

(assert (=> b!4072556 d!1210570))

(declare-fun d!1210572 () Bool)

(assert (=> d!1210572 (ruleValid!2921 thiss!26199 r!4213)))

(declare-fun lt!1457727 () Unit!63076)

(declare-fun choose!24857 (LexerInterface!6586 Rule!13794 List!43648) Unit!63076)

(assert (=> d!1210572 (= lt!1457727 (choose!24857 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1210572 (contains!8664 rules!3870 r!4213)))

(assert (=> d!1210572 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1989 thiss!26199 r!4213 rules!3870) lt!1457727)))

(declare-fun bs!592651 () Bool)

(assert (= bs!592651 d!1210572))

(assert (=> bs!592651 m!4681573))

(declare-fun m!4681737 () Bool)

(assert (=> bs!592651 m!4681737))

(assert (=> bs!592651 m!4681569))

(assert (=> b!4072556 d!1210572))

(declare-fun d!1210574 () Bool)

(assert (=> d!1210574 (= (inv!58177 (tag!7857 r!4213)) (= (mod (str.len (value!220067 (tag!7857 r!4213))) 2) 0))))

(assert (=> b!4072544 d!1210574))

(declare-fun d!1210576 () Bool)

(declare-fun res!1663075 () Bool)

(declare-fun e!2527677 () Bool)

(assert (=> d!1210576 (=> (not res!1663075) (not e!2527677))))

(assert (=> d!1210576 (= res!1663075 (semiInverseModEq!2997 (toChars!9420 (transformation!6997 r!4213)) (toValue!9561 (transformation!6997 r!4213))))))

(assert (=> d!1210576 (= (inv!58180 (transformation!6997 r!4213)) e!2527677)))

(declare-fun b!4072725 () Bool)

(assert (=> b!4072725 (= e!2527677 (equivClasses!2896 (toChars!9420 (transformation!6997 r!4213)) (toValue!9561 (transformation!6997 r!4213))))))

(assert (= (and d!1210576 res!1663075) b!4072725))

(declare-fun m!4681739 () Bool)

(assert (=> d!1210576 m!4681739))

(declare-fun m!4681741 () Bool)

(assert (=> b!4072725 m!4681741))

(assert (=> b!4072544 d!1210576))

(declare-fun d!1210578 () Bool)

(assert (=> d!1210578 (= (isEmpty!25970 rules!3870) (is-Nil!43524 rules!3870))))

(assert (=> b!4072545 d!1210578))

(declare-fun b!4072735 () Bool)

(declare-fun e!2527682 () List!43647)

(assert (=> b!4072735 (= e!2527682 (Cons!43523 (h!48943 p!2988) (++!11403 (t!337126 p!2988) suffix!1518)))))

(declare-fun d!1210580 () Bool)

(declare-fun e!2527683 () Bool)

(assert (=> d!1210580 e!2527683))

(declare-fun res!1663080 () Bool)

(assert (=> d!1210580 (=> (not res!1663080) (not e!2527683))))

(declare-fun lt!1457730 () List!43647)

(declare-fun content!6656 (List!43647) (Set C!23990))

(assert (=> d!1210580 (= res!1663080 (= (content!6656 lt!1457730) (set.union (content!6656 p!2988) (content!6656 suffix!1518))))))

(assert (=> d!1210580 (= lt!1457730 e!2527682)))

(declare-fun c!702875 () Bool)

(assert (=> d!1210580 (= c!702875 (is-Nil!43523 p!2988))))

(assert (=> d!1210580 (= (++!11403 p!2988 suffix!1518) lt!1457730)))

(declare-fun b!4072737 () Bool)

(assert (=> b!4072737 (= e!2527683 (or (not (= suffix!1518 Nil!43523)) (= lt!1457730 p!2988)))))

(declare-fun b!4072736 () Bool)

(declare-fun res!1663081 () Bool)

(assert (=> b!4072736 (=> (not res!1663081) (not e!2527683))))

(assert (=> b!4072736 (= res!1663081 (= (size!32526 lt!1457730) (+ (size!32526 p!2988) (size!32526 suffix!1518))))))

(declare-fun b!4072734 () Bool)

(assert (=> b!4072734 (= e!2527682 suffix!1518)))

(assert (= (and d!1210580 c!702875) b!4072734))

(assert (= (and d!1210580 (not c!702875)) b!4072735))

(assert (= (and d!1210580 res!1663080) b!4072736))

(assert (= (and b!4072736 res!1663081) b!4072737))

(declare-fun m!4681743 () Bool)

(assert (=> b!4072735 m!4681743))

(declare-fun m!4681745 () Bool)

(assert (=> d!1210580 m!4681745))

(declare-fun m!4681747 () Bool)

(assert (=> d!1210580 m!4681747))

(declare-fun m!4681749 () Bool)

(assert (=> d!1210580 m!4681749))

(declare-fun m!4681751 () Bool)

(assert (=> b!4072736 m!4681751))

(assert (=> b!4072736 m!4681557))

(declare-fun m!4681753 () Bool)

(assert (=> b!4072736 m!4681753))

(assert (=> b!4072548 d!1210580))

(declare-fun d!1210582 () Bool)

(assert (=> d!1210582 (= (isEmpty!25971 p!2988) (is-Nil!43523 p!2988))))

(assert (=> b!4072549 d!1210582))

(declare-fun d!1210584 () Bool)

(declare-fun lt!1457733 () Bool)

(declare-fun content!6657 (List!43648) (Set Rule!13794))

(assert (=> d!1210584 (= lt!1457733 (set.member r!4213 (content!6657 rules!3870)))))

(declare-fun e!2527689 () Bool)

(assert (=> d!1210584 (= lt!1457733 e!2527689)))

(declare-fun res!1663086 () Bool)

(assert (=> d!1210584 (=> (not res!1663086) (not e!2527689))))

(assert (=> d!1210584 (= res!1663086 (is-Cons!43524 rules!3870))))

(assert (=> d!1210584 (= (contains!8664 rules!3870 r!4213) lt!1457733)))

(declare-fun b!4072742 () Bool)

(declare-fun e!2527688 () Bool)

(assert (=> b!4072742 (= e!2527689 e!2527688)))

(declare-fun res!1663087 () Bool)

(assert (=> b!4072742 (=> res!1663087 e!2527688)))

(assert (=> b!4072742 (= res!1663087 (= (h!48944 rules!3870) r!4213))))

(declare-fun b!4072743 () Bool)

(assert (=> b!4072743 (= e!2527688 (contains!8664 (t!337127 rules!3870) r!4213))))

(assert (= (and d!1210584 res!1663086) b!4072742))

(assert (= (and b!4072742 (not res!1663087)) b!4072743))

(declare-fun m!4681755 () Bool)

(assert (=> d!1210584 m!4681755))

(declare-fun m!4681757 () Bool)

(assert (=> d!1210584 m!4681757))

(declare-fun m!4681759 () Bool)

(assert (=> b!4072743 m!4681759))

(assert (=> b!4072554 d!1210584))

(declare-fun e!2527692 () Bool)

(assert (=> b!4072547 (= tp!1232532 e!2527692)))

(declare-fun b!4072757 () Bool)

(declare-fun tp!1232578 () Bool)

(declare-fun tp!1232580 () Bool)

(assert (=> b!4072757 (= e!2527692 (and tp!1232578 tp!1232580))))

(declare-fun b!4072754 () Bool)

(assert (=> b!4072754 (= e!2527692 tp_is_empty!20807)))

(declare-fun b!4072756 () Bool)

(declare-fun tp!1232579 () Bool)

(assert (=> b!4072756 (= e!2527692 tp!1232579)))

(declare-fun b!4072755 () Bool)

(declare-fun tp!1232577 () Bool)

(declare-fun tp!1232576 () Bool)

(assert (=> b!4072755 (= e!2527692 (and tp!1232577 tp!1232576))))

(assert (= (and b!4072547 (is-ElementMatch!11902 (regex!6997 (h!48944 rules!3870)))) b!4072754))

(assert (= (and b!4072547 (is-Concat!19130 (regex!6997 (h!48944 rules!3870)))) b!4072755))

(assert (= (and b!4072547 (is-Star!11902 (regex!6997 (h!48944 rules!3870)))) b!4072756))

(assert (= (and b!4072547 (is-Union!11902 (regex!6997 (h!48944 rules!3870)))) b!4072757))

(declare-fun b!4072762 () Bool)

(declare-fun e!2527695 () Bool)

(declare-fun tp!1232583 () Bool)

(assert (=> b!4072762 (= e!2527695 (and tp_is_empty!20807 tp!1232583))))

(assert (=> b!4072557 (= tp!1232525 e!2527695)))

(assert (= (and b!4072557 (is-Cons!43523 (t!337126 p!2988))) b!4072762))

(declare-fun b!4072763 () Bool)

(declare-fun e!2527696 () Bool)

(declare-fun tp!1232584 () Bool)

(assert (=> b!4072763 (= e!2527696 (and tp_is_empty!20807 tp!1232584))))

(assert (=> b!4072546 (= tp!1232526 e!2527696)))

(assert (= (and b!4072546 (is-Cons!43523 (t!337126 input!3411))) b!4072763))

(declare-fun b!4072764 () Bool)

(declare-fun e!2527697 () Bool)

(declare-fun tp!1232585 () Bool)

(assert (=> b!4072764 (= e!2527697 (and tp_is_empty!20807 tp!1232585))))

(assert (=> b!4072555 (= tp!1232523 e!2527697)))

(assert (= (and b!4072555 (is-Cons!43523 (t!337126 suffix!1518))) b!4072764))

(declare-fun e!2527698 () Bool)

(assert (=> b!4072544 (= tp!1232527 e!2527698)))

(declare-fun b!4072768 () Bool)

(declare-fun tp!1232588 () Bool)

(declare-fun tp!1232590 () Bool)

(assert (=> b!4072768 (= e!2527698 (and tp!1232588 tp!1232590))))

(declare-fun b!4072765 () Bool)

(assert (=> b!4072765 (= e!2527698 tp_is_empty!20807)))

(declare-fun b!4072767 () Bool)

(declare-fun tp!1232589 () Bool)

(assert (=> b!4072767 (= e!2527698 tp!1232589)))

(declare-fun b!4072766 () Bool)

(declare-fun tp!1232587 () Bool)

(declare-fun tp!1232586 () Bool)

(assert (=> b!4072766 (= e!2527698 (and tp!1232587 tp!1232586))))

(assert (= (and b!4072544 (is-ElementMatch!11902 (regex!6997 r!4213))) b!4072765))

(assert (= (and b!4072544 (is-Concat!19130 (regex!6997 r!4213))) b!4072766))

(assert (= (and b!4072544 (is-Star!11902 (regex!6997 r!4213))) b!4072767))

(assert (= (and b!4072544 (is-Union!11902 (regex!6997 r!4213))) b!4072768))

(declare-fun b!4072779 () Bool)

(declare-fun b_free!113345 () Bool)

(declare-fun b_next!114049 () Bool)

(assert (=> b!4072779 (= b_free!113345 (not b_next!114049))))

(declare-fun t!337144 () Bool)

(declare-fun tb!244717 () Bool)

(assert (=> (and b!4072779 (= (toValue!9561 (transformation!6997 (h!48944 (t!337127 rules!3870)))) (toValue!9561 (transformation!6997 r!4213))) t!337144) tb!244717))

(declare-fun result!296674 () Bool)

(assert (= result!296674 result!296662))

(assert (=> d!1210546 t!337144))

(assert (=> d!1210564 t!337144))

(declare-fun b_and!312987 () Bool)

(declare-fun tp!1232602 () Bool)

(assert (=> b!4072779 (= tp!1232602 (and (=> t!337144 result!296674) b_and!312987))))

(declare-fun b_free!113347 () Bool)

(declare-fun b_next!114051 () Bool)

(assert (=> b!4072779 (= b_free!113347 (not b_next!114051))))

(declare-fun tb!244719 () Bool)

(declare-fun t!337146 () Bool)

(assert (=> (and b!4072779 (= (toChars!9420 (transformation!6997 (h!48944 (t!337127 rules!3870)))) (toChars!9420 (transformation!6997 r!4213))) t!337146) tb!244719))

(declare-fun result!296676 () Bool)

(assert (= result!296676 result!296656))

(assert (=> d!1210546 t!337146))

(declare-fun tp!1232599 () Bool)

(declare-fun b_and!312989 () Bool)

(assert (=> b!4072779 (= tp!1232599 (and (=> t!337146 result!296676) b_and!312989))))

(declare-fun e!2527707 () Bool)

(assert (=> b!4072779 (= e!2527707 (and tp!1232602 tp!1232599))))

(declare-fun e!2527709 () Bool)

(declare-fun b!4072778 () Bool)

(declare-fun tp!1232601 () Bool)

(assert (=> b!4072778 (= e!2527709 (and tp!1232601 (inv!58177 (tag!7857 (h!48944 (t!337127 rules!3870)))) (inv!58180 (transformation!6997 (h!48944 (t!337127 rules!3870)))) e!2527707))))

(declare-fun b!4072777 () Bool)

(declare-fun e!2527710 () Bool)

(declare-fun tp!1232600 () Bool)

(assert (=> b!4072777 (= e!2527710 (and e!2527709 tp!1232600))))

(assert (=> b!4072550 (= tp!1232524 e!2527710)))

(assert (= b!4072778 b!4072779))

(assert (= b!4072777 b!4072778))

(assert (= (and b!4072550 (is-Cons!43524 (t!337127 rules!3870))) b!4072777))

(declare-fun m!4681761 () Bool)

(assert (=> b!4072778 m!4681761))

(declare-fun m!4681763 () Bool)

(assert (=> b!4072778 m!4681763))

(declare-fun b_lambda!118983 () Bool)

(assert (= b_lambda!118981 (or (and b!4072553 b_free!113329) (and b!4072543 b_free!113333 (= (toValue!9561 (transformation!6997 (h!48944 rules!3870))) (toValue!9561 (transformation!6997 r!4213)))) (and b!4072779 b_free!113345 (= (toValue!9561 (transformation!6997 (h!48944 (t!337127 rules!3870)))) (toValue!9561 (transformation!6997 r!4213)))) b_lambda!118983)))

(declare-fun b_lambda!118985 () Bool)

(assert (= b_lambda!118979 (or (and b!4072553 b_free!113329) (and b!4072543 b_free!113333 (= (toValue!9561 (transformation!6997 (h!48944 rules!3870))) (toValue!9561 (transformation!6997 r!4213)))) (and b!4072779 b_free!113345 (= (toValue!9561 (transformation!6997 (h!48944 (t!337127 rules!3870)))) (toValue!9561 (transformation!6997 r!4213)))) b_lambda!118985)))

(declare-fun b_lambda!118987 () Bool)

(assert (= b_lambda!118977 (or (and b!4072553 b_free!113331) (and b!4072543 b_free!113335 (= (toChars!9420 (transformation!6997 (h!48944 rules!3870))) (toChars!9420 (transformation!6997 r!4213)))) (and b!4072779 b_free!113347 (= (toChars!9420 (transformation!6997 (h!48944 (t!337127 rules!3870)))) (toChars!9420 (transformation!6997 r!4213)))) b_lambda!118987)))

(push 1)

(assert (not d!1210546))

(assert (not b!4072605))

(assert (not b!4072725))

(assert (not b!4072677))

(assert (not d!1210584))

(assert (not d!1210576))

(assert (not d!1210572))

(assert (not b!4072743))

(assert (not b!4072757))

(assert (not b!4072764))

(assert (not d!1210540))

(assert b_and!312977)

(assert (not b!4072723))

(assert (not b!4072682))

(assert (not bm!288376))

(assert (not b!4072688))

(assert (not b_next!114037))

(assert (not b!4072653))

(assert (not b!4072713))

(assert (not d!1210562))

(assert (not b_lambda!118985))

(assert (not b!4072735))

(assert (not b!4072681))

(assert (not b!4072755))

(assert b_and!312985)

(assert (not b!4072675))

(assert (not d!1210570))

(assert (not b!4072679))

(assert (not tb!244713))

(assert (not b!4072678))

(assert (not bm!288377))

(assert (not b!4072768))

(assert (not b!4072763))

(assert (not b!4072766))

(assert (not b!4072767))

(assert b_and!312983)

(assert tp_is_empty!20807)

(assert b_and!312975)

(assert (not b!4072680))

(assert (not d!1210580))

(assert (not b_next!114033))

(assert (not tb!244709))

(assert (not bm!288369))

(assert (not d!1210558))

(assert (not b!4072676))

(assert (not b!4072762))

(assert (not b!4072691))

(assert b_and!312987)

(assert (not b_lambda!118983))

(assert (not d!1210566))

(assert (not b!4072778))

(assert (not b_next!114035))

(assert (not b_next!114049))

(assert (not b!4072777))

(assert (not b!4072736))

(assert b_and!312989)

(assert (not b_next!114051))

(assert (not b!4072756))

(assert (not b_lambda!118987))

(assert (not b_next!114039))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!114037))

(assert b_and!312985)

(assert b_and!312983)

(assert b_and!312975)

(assert (not b_next!114033))

(assert (not b_next!114049))

(assert b_and!312977)

(assert (not b_next!114039))

(assert b_and!312987)

(assert (not b_next!114035))

(assert b_and!312989)

(assert (not b_next!114051))

(check-sat)

(pop 1)

