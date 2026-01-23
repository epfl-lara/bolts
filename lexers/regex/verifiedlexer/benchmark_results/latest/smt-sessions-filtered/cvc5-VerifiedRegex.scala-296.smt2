; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!7264 () Bool)

(assert start!7264)

(declare-fun b!82289 () Bool)

(declare-fun b_free!2661 () Bool)

(declare-fun b_next!2661 () Bool)

(assert (=> b!82289 (= b_free!2661 (not b_next!2661))))

(declare-fun tp!50939 () Bool)

(declare-fun b_and!3807 () Bool)

(assert (=> b!82289 (= tp!50939 b_and!3807)))

(declare-fun b_free!2663 () Bool)

(declare-fun b_next!2663 () Bool)

(assert (=> b!82289 (= b_free!2663 (not b_next!2663))))

(declare-fun tp!50937 () Bool)

(declare-fun b_and!3809 () Bool)

(assert (=> b!82289 (= tp!50937 b_and!3809)))

(declare-fun b!82279 () Bool)

(declare-fun e!46208 () Bool)

(declare-fun e!46207 () Bool)

(assert (=> b!82279 (= e!46208 e!46207)))

(declare-fun res!42701 () Bool)

(assert (=> b!82279 (=> (not res!42701) (not e!46207))))

(declare-datatypes ((C!1702 0))(
  ( (C!1703 (val!458 Int)) )
))
(declare-datatypes ((List!1478 0))(
  ( (Nil!1472) (Cons!1472 (h!6869 C!1702) (t!20461 List!1478)) )
))
(declare-datatypes ((IArray!893 0))(
  ( (IArray!894 (innerList!504 List!1478)) )
))
(declare-datatypes ((Conc!446 0))(
  ( (Node!446 (left!1120 Conc!446) (right!1450 Conc!446) (csize!1122 Int) (cheight!657 Int)) (Leaf!743 (xs!3025 IArray!893) (csize!1123 Int)) (Empty!446) )
))
(declare-datatypes ((BalanceConc!896 0))(
  ( (BalanceConc!897 (c!20760 Conc!446)) )
))
(declare-datatypes ((List!1479 0))(
  ( (Nil!1473) (Cons!1473 (h!6870 (_ BitVec 16)) (t!20462 List!1479)) )
))
(declare-datatypes ((TokenValue!312 0))(
  ( (FloatLiteralValue!624 (text!2629 List!1479)) (TokenValueExt!311 (__x!1719 Int)) (Broken!1560 (value!12048 List!1479)) (Object!317) (End!312) (Def!312) (Underscore!312) (Match!312) (Else!312) (Error!312) (Case!312) (If!312) (Extends!312) (Abstract!312) (Class!312) (Val!312) (DelimiterValue!624 (del!372 List!1479)) (KeywordValue!318 (value!12049 List!1479)) (CommentValue!624 (value!12050 List!1479)) (WhitespaceValue!624 (value!12051 List!1479)) (IndentationValue!312 (value!12052 List!1479)) (String!1953) (Int32!312) (Broken!1561 (value!12053 List!1479)) (Boolean!313) (Unit!924) (OperatorValue!315 (op!372 List!1479)) (IdentifierValue!624 (value!12054 List!1479)) (IdentifierValue!625 (value!12055 List!1479)) (WhitespaceValue!625 (value!12056 List!1479)) (True!624) (False!624) (Broken!1562 (value!12057 List!1479)) (Broken!1563 (value!12058 List!1479)) (True!625) (RightBrace!312) (RightBracket!312) (Colon!312) (Null!312) (Comma!312) (LeftBracket!312) (False!625) (LeftBrace!312) (ImaginaryLiteralValue!312 (text!2630 List!1479)) (StringLiteralValue!936 (value!12059 List!1479)) (EOFValue!312 (value!12060 List!1479)) (IdentValue!312 (value!12061 List!1479)) (DelimiterValue!625 (value!12062 List!1479)) (DedentValue!312 (value!12063 List!1479)) (NewLineValue!312 (value!12064 List!1479)) (IntegerValue!936 (value!12065 (_ BitVec 32)) (text!2631 List!1479)) (IntegerValue!937 (value!12066 Int) (text!2632 List!1479)) (Times!312) (Or!312) (Equal!312) (Minus!312) (Broken!1564 (value!12067 List!1479)) (And!312) (Div!312) (LessEqual!312) (Mod!312) (Concat!702) (Not!312) (Plus!312) (SpaceValue!312 (value!12068 List!1479)) (IntegerValue!938 (value!12069 Int) (text!2633 List!1479)) (StringLiteralValue!937 (text!2634 List!1479)) (FloatLiteralValue!625 (text!2635 List!1479)) (BytesLiteralValue!312 (value!12070 List!1479)) (CommentValue!625 (value!12071 List!1479)) (StringLiteralValue!938 (value!12072 List!1479)) (ErrorTokenValue!312 (msg!373 List!1479)) )
))
(declare-datatypes ((Regex!390 0))(
  ( (ElementMatch!390 (c!20761 C!1702)) (Concat!703 (regOne!1292 Regex!390) (regTwo!1292 Regex!390)) (EmptyExpr!390) (Star!390 (reg!719 Regex!390)) (EmptyLang!390) (Union!390 (regOne!1293 Regex!390) (regTwo!1293 Regex!390)) )
))
(declare-datatypes ((String!1954 0))(
  ( (String!1955 (value!12073 String)) )
))
(declare-datatypes ((TokenValueInjection!448 0))(
  ( (TokenValueInjection!449 (toValue!845 Int) (toChars!704 Int)) )
))
(declare-datatypes ((Rule!444 0))(
  ( (Rule!445 (regex!322 Regex!390) (tag!500 String!1954) (isSeparator!322 Bool) (transformation!322 TokenValueInjection!448)) )
))
(declare-datatypes ((Token!404 0))(
  ( (Token!405 (value!12074 TokenValue!312) (rule!807 Rule!444) (size!1274 Int) (originalCharacters!373 List!1478)) )
))
(declare-datatypes ((List!1480 0))(
  ( (Nil!1474) (Cons!1474 (h!6871 Token!404) (t!20463 List!1480)) )
))
(declare-datatypes ((IArray!895 0))(
  ( (IArray!896 (innerList!505 List!1480)) )
))
(declare-datatypes ((Conc!447 0))(
  ( (Node!447 (left!1121 Conc!447) (right!1451 Conc!447) (csize!1124 Int) (cheight!658 Int)) (Leaf!744 (xs!3026 IArray!895) (csize!1125 Int)) (Empty!447) )
))
(declare-datatypes ((BalanceConc!898 0))(
  ( (BalanceConc!899 (c!20762 Conc!447)) )
))
(declare-datatypes ((tuple2!1528 0))(
  ( (tuple2!1529 (_1!971 BalanceConc!898) (_2!971 BalanceConc!896)) )
))
(declare-fun lt!19285 () tuple2!1528)

(declare-fun isEmpty!529 (BalanceConc!896) Bool)

(assert (=> b!82279 (= res!42701 (not (isEmpty!529 (_2!971 lt!19285))))))

(declare-datatypes ((LexerInterface!214 0))(
  ( (LexerInterfaceExt!211 (__x!1720 Int)) (Lexer!212) )
))
(declare-fun thiss!19403 () LexerInterface!214)

(declare-datatypes ((List!1481 0))(
  ( (Nil!1475) (Cons!1475 (h!6872 Rule!444) (t!20464 List!1481)) )
))
(declare-fun rules!2471 () List!1481)

(declare-fun input!2238 () List!1478)

(declare-fun lex!122 (LexerInterface!214 List!1481 BalanceConc!896) tuple2!1528)

(declare-fun seqFromList!156 (List!1478) BalanceConc!896)

(assert (=> b!82279 (= lt!19285 (lex!122 thiss!19403 rules!2471 (seqFromList!156 input!2238)))))

(declare-fun b!82280 () Bool)

(declare-fun e!46203 () Bool)

(assert (=> b!82280 (= e!46203 true)))

(declare-fun lt!19289 () List!1478)

(declare-fun lt!19281 () List!1478)

(declare-fun lt!19284 () List!1478)

(declare-fun lt!19291 () List!1478)

(declare-fun ++!165 (List!1478 List!1478) List!1478)

(assert (=> b!82280 (= (++!165 (++!165 lt!19281 lt!19284) lt!19291) lt!19289)))

(declare-datatypes ((Unit!925 0))(
  ( (Unit!926) )
))
(declare-fun lt!19282 () Unit!925)

(declare-fun lemmaConcatAssociativity!52 (List!1478 List!1478 List!1478) Unit!925)

(assert (=> b!82280 (= lt!19282 (lemmaConcatAssociativity!52 lt!19281 lt!19284 lt!19291))))

(declare-fun b!82281 () Bool)

(declare-fun e!46201 () Bool)

(assert (=> b!82281 (= e!46207 e!46201)))

(declare-fun res!42703 () Bool)

(assert (=> b!82281 (=> (not res!42703) (not e!46201))))

(declare-fun lt!19294 () Bool)

(declare-fun lt!19287 () List!1480)

(assert (=> b!82281 (= res!42703 (and (or lt!19294 (not (is-Nil!1474 (t!20463 lt!19287)))) (not lt!19294)))))

(assert (=> b!82281 (= lt!19294 (not (is-Cons!1474 lt!19287)))))

(declare-fun list!519 (BalanceConc!898) List!1480)

(assert (=> b!82281 (= lt!19287 (list!519 (_1!971 lt!19285)))))

(declare-fun b!82282 () Bool)

(declare-fun e!46204 () Bool)

(declare-fun e!46210 () Bool)

(declare-fun tp!50940 () Bool)

(declare-fun inv!1825 (String!1954) Bool)

(declare-fun inv!1828 (TokenValueInjection!448) Bool)

(assert (=> b!82282 (= e!46204 (and tp!50940 (inv!1825 (tag!500 (h!6872 rules!2471))) (inv!1828 (transformation!322 (h!6872 rules!2471))) e!46210))))

(declare-fun b!82283 () Bool)

(declare-fun e!46205 () Bool)

(assert (=> b!82283 (= e!46205 e!46203)))

(declare-fun res!42706 () Bool)

(assert (=> b!82283 (=> res!42706 e!46203)))

(assert (=> b!82283 (= res!42706 (not (= input!2238 lt!19289)))))

(assert (=> b!82283 (= lt!19289 (++!165 lt!19281 (++!165 lt!19284 lt!19291)))))

(declare-fun lt!19288 () BalanceConc!898)

(declare-fun list!520 (BalanceConc!896) List!1478)

(declare-fun print!53 (LexerInterface!214 BalanceConc!898) BalanceConc!896)

(assert (=> b!82283 (= lt!19284 (list!520 (print!53 thiss!19403 lt!19288)))))

(declare-fun b!82284 () Bool)

(assert (=> b!82284 (= e!46201 (not e!46205))))

(declare-fun res!42704 () Bool)

(assert (=> b!82284 (=> res!42704 e!46205)))

(declare-datatypes ((tuple2!1530 0))(
  ( (tuple2!1531 (_1!972 Token!404) (_2!972 List!1478)) )
))
(declare-fun lt!19283 () tuple2!1530)

(assert (=> b!82284 (= res!42704 (not (= input!2238 (++!165 lt!19281 (_2!972 lt!19283)))))))

(declare-fun charsOf!59 (Token!404) BalanceConc!896)

(assert (=> b!82284 (= lt!19281 (list!520 (charsOf!59 (_1!972 lt!19283))))))

(declare-fun lt!19292 () tuple2!1528)

(declare-fun lt!19296 () List!1478)

(declare-datatypes ((tuple2!1532 0))(
  ( (tuple2!1533 (_1!973 List!1480) (_2!973 List!1478)) )
))
(declare-fun tail!137 (List!1480) List!1480)

(assert (=> b!82284 (= (tuple2!1533 (list!519 (_1!971 lt!19292)) lt!19296) (tuple2!1533 (tail!137 lt!19287) lt!19291))))

(declare-fun lt!19295 () Unit!925)

(declare-fun lemmaRemovingFirstTokensCharactersPreservesLexSuffix!33 (LexerInterface!214 List!1481 List!1478 List!1480 List!1478) Unit!925)

(assert (=> b!82284 (= lt!19295 (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!33 thiss!19403 rules!2471 input!2238 lt!19287 lt!19291))))

(assert (=> b!82284 (= lt!19291 (list!520 (_2!971 lt!19285)))))

(declare-fun lt!19293 () List!1478)

(assert (=> b!82284 (= (++!165 lt!19293 lt!19296) (_2!972 lt!19283))))

(assert (=> b!82284 (= lt!19296 (list!520 (_2!971 lt!19292)))))

(assert (=> b!82284 (= lt!19293 (list!520 (print!53 thiss!19403 (_1!971 lt!19292))))))

(assert (=> b!82284 (= lt!19292 (lex!122 thiss!19403 rules!2471 (seqFromList!156 (_2!972 lt!19283))))))

(declare-fun lt!19286 () Unit!925)

(declare-fun theoremInvertFromString!37 (LexerInterface!214 List!1481 List!1478) Unit!925)

(assert (=> b!82284 (= lt!19286 (theoremInvertFromString!37 thiss!19403 rules!2471 (_2!972 lt!19283)))))

(declare-datatypes ((Option!133 0))(
  ( (None!132) (Some!132 (v!12839 tuple2!1530)) )
))
(declare-fun get!372 (Option!133) tuple2!1530)

(declare-fun maxPrefix!58 (LexerInterface!214 List!1481 List!1478) Option!133)

(assert (=> b!82284 (= lt!19283 (get!372 (maxPrefix!58 thiss!19403 rules!2471 input!2238)))))

(declare-fun prepend!86 (BalanceConc!898 Token!404) BalanceConc!898)

(assert (=> b!82284 (= lt!19287 (list!519 (prepend!86 lt!19288 (h!6871 lt!19287))))))

(declare-fun seqFromList!157 (List!1480) BalanceConc!898)

(assert (=> b!82284 (= lt!19288 (seqFromList!157 (t!20463 lt!19287)))))

(declare-fun lt!19290 () Unit!925)

(declare-fun seqFromListBHdTlConstructive!45 (Token!404 List!1480 BalanceConc!898) Unit!925)

(assert (=> b!82284 (= lt!19290 (seqFromListBHdTlConstructive!45 (h!6871 lt!19287) (t!20463 lt!19287) (_1!971 lt!19285)))))

(declare-fun b!82285 () Bool)

(declare-fun e!46209 () Bool)

(declare-fun tp!50941 () Bool)

(assert (=> b!82285 (= e!46209 (and e!46204 tp!50941))))

(declare-fun b!82286 () Bool)

(declare-fun res!42702 () Bool)

(assert (=> b!82286 (=> (not res!42702) (not e!46208))))

(declare-fun rulesInvariant!208 (LexerInterface!214 List!1481) Bool)

(assert (=> b!82286 (= res!42702 (rulesInvariant!208 thiss!19403 rules!2471))))

(declare-fun res!42707 () Bool)

(assert (=> start!7264 (=> (not res!42707) (not e!46208))))

(assert (=> start!7264 (= res!42707 (is-Lexer!212 thiss!19403))))

(assert (=> start!7264 e!46208))

(assert (=> start!7264 true))

(assert (=> start!7264 e!46209))

(declare-fun e!46206 () Bool)

(assert (=> start!7264 e!46206))

(declare-fun b!82287 () Bool)

(declare-fun tp_is_empty!703 () Bool)

(declare-fun tp!50938 () Bool)

(assert (=> b!82287 (= e!46206 (and tp_is_empty!703 tp!50938))))

(declare-fun b!82288 () Bool)

(declare-fun res!42705 () Bool)

(assert (=> b!82288 (=> (not res!42705) (not e!46208))))

(declare-fun isEmpty!530 (List!1481) Bool)

(assert (=> b!82288 (= res!42705 (not (isEmpty!530 rules!2471)))))

(assert (=> b!82289 (= e!46210 (and tp!50939 tp!50937))))

(assert (= (and start!7264 res!42707) b!82288))

(assert (= (and b!82288 res!42705) b!82286))

(assert (= (and b!82286 res!42702) b!82279))

(assert (= (and b!82279 res!42701) b!82281))

(assert (= (and b!82281 res!42703) b!82284))

(assert (= (and b!82284 (not res!42704)) b!82283))

(assert (= (and b!82283 (not res!42706)) b!82280))

(assert (= b!82282 b!82289))

(assert (= b!82285 b!82282))

(assert (= (and start!7264 (is-Cons!1475 rules!2471)) b!82285))

(assert (= (and start!7264 (is-Cons!1472 input!2238)) b!82287))

(declare-fun m!59070 () Bool)

(assert (=> b!82284 m!59070))

(declare-fun m!59072 () Bool)

(assert (=> b!82284 m!59072))

(declare-fun m!59074 () Bool)

(assert (=> b!82284 m!59074))

(declare-fun m!59076 () Bool)

(assert (=> b!82284 m!59076))

(declare-fun m!59078 () Bool)

(assert (=> b!82284 m!59078))

(declare-fun m!59080 () Bool)

(assert (=> b!82284 m!59080))

(declare-fun m!59082 () Bool)

(assert (=> b!82284 m!59082))

(declare-fun m!59084 () Bool)

(assert (=> b!82284 m!59084))

(declare-fun m!59086 () Bool)

(assert (=> b!82284 m!59086))

(declare-fun m!59088 () Bool)

(assert (=> b!82284 m!59088))

(assert (=> b!82284 m!59080))

(declare-fun m!59090 () Bool)

(assert (=> b!82284 m!59090))

(declare-fun m!59092 () Bool)

(assert (=> b!82284 m!59092))

(declare-fun m!59094 () Bool)

(assert (=> b!82284 m!59094))

(declare-fun m!59096 () Bool)

(assert (=> b!82284 m!59096))

(assert (=> b!82284 m!59070))

(declare-fun m!59098 () Bool)

(assert (=> b!82284 m!59098))

(assert (=> b!82284 m!59098))

(declare-fun m!59100 () Bool)

(assert (=> b!82284 m!59100))

(declare-fun m!59102 () Bool)

(assert (=> b!82284 m!59102))

(declare-fun m!59104 () Bool)

(assert (=> b!82284 m!59104))

(declare-fun m!59106 () Bool)

(assert (=> b!82284 m!59106))

(assert (=> b!82284 m!59088))

(declare-fun m!59108 () Bool)

(assert (=> b!82284 m!59108))

(assert (=> b!82284 m!59092))

(declare-fun m!59110 () Bool)

(assert (=> b!82286 m!59110))

(declare-fun m!59112 () Bool)

(assert (=> b!82281 m!59112))

(declare-fun m!59114 () Bool)

(assert (=> b!82279 m!59114))

(declare-fun m!59116 () Bool)

(assert (=> b!82279 m!59116))

(assert (=> b!82279 m!59116))

(declare-fun m!59118 () Bool)

(assert (=> b!82279 m!59118))

(declare-fun m!59120 () Bool)

(assert (=> b!82288 m!59120))

(declare-fun m!59122 () Bool)

(assert (=> b!82283 m!59122))

(assert (=> b!82283 m!59122))

(declare-fun m!59124 () Bool)

(assert (=> b!82283 m!59124))

(declare-fun m!59126 () Bool)

(assert (=> b!82283 m!59126))

(assert (=> b!82283 m!59126))

(declare-fun m!59128 () Bool)

(assert (=> b!82283 m!59128))

(declare-fun m!59130 () Bool)

(assert (=> b!82280 m!59130))

(assert (=> b!82280 m!59130))

(declare-fun m!59132 () Bool)

(assert (=> b!82280 m!59132))

(declare-fun m!59134 () Bool)

(assert (=> b!82280 m!59134))

(declare-fun m!59136 () Bool)

(assert (=> b!82282 m!59136))

(declare-fun m!59138 () Bool)

(assert (=> b!82282 m!59138))

(push 1)

(assert b_and!3807)

(assert (not b!82288))

(assert (not b!82281))

(assert (not b!82287))

(assert (not b!82283))

(assert (not b!82282))

(assert (not b_next!2661))

(assert (not b!82280))

(assert b_and!3809)

(assert (not b!82279))

(assert (not b_next!2663))

(assert (not b!82285))

(assert tp_is_empty!703)

(assert (not b!82286))

(assert (not b!82284))

(check-sat)

(pop 1)

(push 1)

(assert b_and!3809)

(assert b_and!3807)

(assert (not b_next!2663))

(assert (not b_next!2661))

(check-sat)

(pop 1)

