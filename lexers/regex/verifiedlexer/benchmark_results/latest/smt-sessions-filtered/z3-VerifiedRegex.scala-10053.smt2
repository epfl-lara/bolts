; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!526178 () Bool)

(assert start!526178)

(declare-fun b!4983104 () Bool)

(declare-fun b_free!133131 () Bool)

(declare-fun b_next!133921 () Bool)

(assert (=> b!4983104 (= b_free!133131 (not b_next!133921))))

(declare-fun tp!1396837 () Bool)

(declare-fun b_and!349695 () Bool)

(assert (=> b!4983104 (= tp!1396837 b_and!349695)))

(declare-fun b_free!133133 () Bool)

(declare-fun b_next!133923 () Bool)

(assert (=> b!4983104 (= b_free!133133 (not b_next!133923))))

(declare-fun tp!1396836 () Bool)

(declare-fun b_and!349697 () Bool)

(assert (=> b!4983104 (= tp!1396836 b_and!349697)))

(declare-fun b!4983112 () Bool)

(declare-fun e!3114433 () Bool)

(assert (=> b!4983112 (= e!3114433 true)))

(declare-fun b!4983111 () Bool)

(declare-fun e!3114432 () Bool)

(assert (=> b!4983111 (= e!3114432 e!3114433)))

(declare-fun b!4983101 () Bool)

(assert (=> b!4983101 e!3114432))

(assert (= b!4983111 b!4983112))

(assert (= b!4983101 b!4983111))

(declare-fun order!26519 () Int)

(declare-fun lambda!247892 () Int)

(declare-fun order!26517 () Int)

(declare-datatypes ((C!27632 0))(
  ( (C!27633 (val!23182 Int)) )
))
(declare-datatypes ((List!57712 0))(
  ( (Nil!57588) (Cons!57588 (h!64036 C!27632) (t!369860 List!57712)) )
))
(declare-datatypes ((IArray!30481 0))(
  ( (IArray!30482 (innerList!15298 List!57712)) )
))
(declare-datatypes ((List!57713 0))(
  ( (Nil!57589) (Cons!57589 (h!64037 (_ BitVec 16)) (t!369861 List!57713)) )
))
(declare-datatypes ((String!65713 0))(
  ( (String!65714 (value!270447 String)) )
))
(declare-datatypes ((Regex!13691 0))(
  ( (ElementMatch!13691 (c!850347 C!27632)) (Concat!22459 (regOne!27894 Regex!13691) (regTwo!27894 Regex!13691)) (EmptyExpr!13691) (Star!13691 (reg!14020 Regex!13691)) (EmptyLang!13691) (Union!13691 (regOne!27895 Regex!13691) (regTwo!27895 Regex!13691)) )
))
(declare-datatypes ((Conc!15210 0))(
  ( (Node!15210 (left!42101 Conc!15210) (right!42431 Conc!15210) (csize!30650 Int) (cheight!15421 Int)) (Leaf!25264 (xs!18536 IArray!30481) (csize!30651 Int)) (Empty!15210) )
))
(declare-datatypes ((BalanceConc!29850 0))(
  ( (BalanceConc!29851 (c!850348 Conc!15210)) )
))
(declare-datatypes ((TokenValue!8768 0))(
  ( (FloatLiteralValue!17536 (text!61821 List!57713)) (TokenValueExt!8767 (__x!34829 Int)) (Broken!43840 (value!270448 List!57713)) (Object!8891) (End!8768) (Def!8768) (Underscore!8768) (Match!8768) (Else!8768) (Error!8768) (Case!8768) (If!8768) (Extends!8768) (Abstract!8768) (Class!8768) (Val!8768) (DelimiterValue!17536 (del!8828 List!57713)) (KeywordValue!8774 (value!270449 List!57713)) (CommentValue!17536 (value!270450 List!57713)) (WhitespaceValue!17536 (value!270451 List!57713)) (IndentationValue!8768 (value!270452 List!57713)) (String!65715) (Int32!8768) (Broken!43841 (value!270453 List!57713)) (Boolean!8769) (Unit!148671) (OperatorValue!8771 (op!8828 List!57713)) (IdentifierValue!17536 (value!270454 List!57713)) (IdentifierValue!17537 (value!270455 List!57713)) (WhitespaceValue!17537 (value!270456 List!57713)) (True!17536) (False!17536) (Broken!43842 (value!270457 List!57713)) (Broken!43843 (value!270458 List!57713)) (True!17537) (RightBrace!8768) (RightBracket!8768) (Colon!8768) (Null!8768) (Comma!8768) (LeftBracket!8768) (False!17537) (LeftBrace!8768) (ImaginaryLiteralValue!8768 (text!61822 List!57713)) (StringLiteralValue!26304 (value!270459 List!57713)) (EOFValue!8768 (value!270460 List!57713)) (IdentValue!8768 (value!270461 List!57713)) (DelimiterValue!17537 (value!270462 List!57713)) (DedentValue!8768 (value!270463 List!57713)) (NewLineValue!8768 (value!270464 List!57713)) (IntegerValue!26304 (value!270465 (_ BitVec 32)) (text!61823 List!57713)) (IntegerValue!26305 (value!270466 Int) (text!61824 List!57713)) (Times!8768) (Or!8768) (Equal!8768) (Minus!8768) (Broken!43844 (value!270467 List!57713)) (And!8768) (Div!8768) (LessEqual!8768) (Mod!8768) (Concat!22460) (Not!8768) (Plus!8768) (SpaceValue!8768 (value!270468 List!57713)) (IntegerValue!26306 (value!270469 Int) (text!61825 List!57713)) (StringLiteralValue!26305 (text!61826 List!57713)) (FloatLiteralValue!17537 (text!61827 List!57713)) (BytesLiteralValue!8768 (value!270470 List!57713)) (CommentValue!17537 (value!270471 List!57713)) (StringLiteralValue!26306 (value!270472 List!57713)) (ErrorTokenValue!8768 (msg!8829 List!57713)) )
))
(declare-datatypes ((TokenValueInjection!16844 0))(
  ( (TokenValueInjection!16845 (toValue!11451 Int) (toChars!11310 Int)) )
))
(declare-datatypes ((Rule!16716 0))(
  ( (Rule!16717 (regex!8458 Regex!13691) (tag!9322 String!65713) (isSeparator!8458 Bool) (transformation!8458 TokenValueInjection!16844)) )
))
(declare-fun rule!200 () Rule!16716)

(declare-fun dynLambda!23373 (Int Int) Int)

(declare-fun dynLambda!23374 (Int Int) Int)

(assert (=> b!4983112 (< (dynLambda!23373 order!26517 (toValue!11451 (transformation!8458 rule!200))) (dynLambda!23374 order!26519 lambda!247892))))

(declare-fun order!26521 () Int)

(declare-fun dynLambda!23375 (Int Int) Int)

(assert (=> b!4983112 (< (dynLambda!23375 order!26521 (toChars!11310 (transformation!8458 rule!200))) (dynLambda!23374 order!26519 lambda!247892))))

(declare-fun b!4983090 () Bool)

(declare-fun e!3114418 () Bool)

(declare-fun input!1580 () BalanceConc!29850)

(declare-fun tp!1396838 () Bool)

(declare-fun inv!75439 (Conc!15210) Bool)

(assert (=> b!4983090 (= e!3114418 (and (inv!75439 (c!850348 input!1580)) tp!1396838))))

(declare-fun b!4983091 () Bool)

(declare-fun e!3114420 () Bool)

(declare-fun totalInput!520 () BalanceConc!29850)

(declare-fun tp!1396835 () Bool)

(assert (=> b!4983091 (= e!3114420 (and (inv!75439 (c!850348 totalInput!520)) tp!1396835))))

(declare-fun b!4983092 () Bool)

(declare-fun res!2127180 () Bool)

(declare-fun e!3114417 () Bool)

(assert (=> b!4983092 (=> res!2127180 e!3114417)))

(declare-fun lt!2058821 () BalanceConc!29850)

(declare-fun lt!2058822 () List!57712)

(declare-fun list!18468 (BalanceConc!29850) List!57712)

(assert (=> b!4983092 (= res!2127180 (not (= (list!18468 lt!2058821) lt!2058822)))))

(declare-fun b!4983093 () Bool)

(declare-fun e!3114421 () Bool)

(declare-fun e!3114416 () Bool)

(assert (=> b!4983093 (= e!3114421 (not e!3114416))))

(declare-fun res!2127176 () Bool)

(assert (=> b!4983093 (=> res!2127176 e!3114416)))

(declare-fun semiInverseModEq!3751 (Int Int) Bool)

(assert (=> b!4983093 (= res!2127176 (not (semiInverseModEq!3751 (toChars!11310 (transformation!8458 rule!200)) (toValue!11451 (transformation!8458 rule!200)))))))

(declare-datatypes ((Unit!148672 0))(
  ( (Unit!148673) )
))
(declare-fun lt!2058825 () Unit!148672)

(declare-fun lemmaInv!1381 (TokenValueInjection!16844) Unit!148672)

(assert (=> b!4983093 (= lt!2058825 (lemmaInv!1381 (transformation!8458 rule!200)))))

(declare-fun e!3114427 () Bool)

(assert (=> b!4983093 e!3114427))

(declare-fun res!2127171 () Bool)

(assert (=> b!4983093 (=> res!2127171 e!3114427)))

(declare-datatypes ((tuple2!62544 0))(
  ( (tuple2!62545 (_1!34575 List!57712) (_2!34575 List!57712)) )
))
(declare-fun lt!2058830 () tuple2!62544)

(declare-fun isEmpty!31105 (List!57712) Bool)

(assert (=> b!4983093 (= res!2127171 (isEmpty!31105 (_1!34575 lt!2058830)))))

(declare-fun lt!2058833 () List!57712)

(declare-fun findLongestMatchInner!1902 (Regex!13691 List!57712 Int List!57712 List!57712 Int) tuple2!62544)

(declare-fun size!38221 (List!57712) Int)

(assert (=> b!4983093 (= lt!2058830 (findLongestMatchInner!1902 (regex!8458 rule!200) Nil!57588 (size!38221 Nil!57588) lt!2058833 lt!2058833 (size!38221 lt!2058833)))))

(declare-fun lt!2058831 () Unit!148672)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1863 (Regex!13691 List!57712) Unit!148672)

(assert (=> b!4983093 (= lt!2058831 (longestMatchIsAcceptedByMatchOrIsEmpty!1863 (regex!8458 rule!200) lt!2058833))))

(declare-fun b!4983094 () Bool)

(declare-fun e!3114424 () Bool)

(assert (=> b!4983094 (= e!3114424 e!3114421)))

(declare-fun res!2127179 () Bool)

(assert (=> b!4983094 (=> (not res!2127179) (not e!3114421))))

(declare-datatypes ((tuple2!62546 0))(
  ( (tuple2!62547 (_1!34576 BalanceConc!29850) (_2!34576 BalanceConc!29850)) )
))
(declare-fun lt!2058826 () tuple2!62546)

(declare-fun isEmpty!31106 (BalanceConc!29850) Bool)

(assert (=> b!4983094 (= res!2127179 (not (isEmpty!31106 (_1!34576 lt!2058826))))))

(declare-fun findLongestMatchWithZipperSequenceV2!221 (Regex!13691 BalanceConc!29850 BalanceConc!29850) tuple2!62546)

(assert (=> b!4983094 (= lt!2058826 (findLongestMatchWithZipperSequenceV2!221 (regex!8458 rule!200) input!1580 totalInput!520))))

(declare-fun res!2127177 () Bool)

(declare-fun e!3114419 () Bool)

(assert (=> start!526178 (=> (not res!2127177) (not e!3114419))))

(declare-datatypes ((LexerInterface!8050 0))(
  ( (LexerInterfaceExt!8047 (__x!34830 Int)) (Lexer!8048) )
))
(declare-fun thiss!16165 () LexerInterface!8050)

(get-info :version)

(assert (=> start!526178 (= res!2127177 ((_ is Lexer!8048) thiss!16165))))

(assert (=> start!526178 e!3114419))

(assert (=> start!526178 true))

(declare-fun e!3114422 () Bool)

(assert (=> start!526178 e!3114422))

(declare-fun inv!75440 (BalanceConc!29850) Bool)

(assert (=> start!526178 (and (inv!75440 totalInput!520) e!3114420)))

(assert (=> start!526178 (and (inv!75440 input!1580) e!3114418)))

(declare-fun b!4983095 () Bool)

(declare-fun matchR!6685 (Regex!13691 List!57712) Bool)

(assert (=> b!4983095 (= e!3114427 (matchR!6685 (regex!8458 rule!200) (_1!34575 lt!2058830)))))

(declare-fun b!4983096 () Bool)

(declare-fun e!3114425 () Bool)

(declare-datatypes ((Token!15372 0))(
  ( (Token!15373 (value!270473 TokenValue!8768) (rule!11714 Rule!16716) (size!38222 Int) (originalCharacters!8717 List!57712)) )
))
(declare-datatypes ((tuple2!62548 0))(
  ( (tuple2!62549 (_1!34577 Token!15372) (_2!34577 List!57712)) )
))
(declare-datatypes ((Option!14535 0))(
  ( (None!14534) (Some!14534 (v!50531 tuple2!62548)) )
))
(declare-fun lt!2058828 () Option!14535)

(declare-fun lt!2058824 () TokenValue!8768)

(declare-fun get!20023 (Option!14535) tuple2!62548)

(assert (=> b!4983096 (= e!3114425 (= (value!270473 (_1!34577 (get!20023 lt!2058828))) lt!2058824))))

(declare-fun b!4983097 () Bool)

(assert (=> b!4983097 (= e!3114417 e!3114425)))

(declare-fun res!2127173 () Bool)

(assert (=> b!4983097 (=> res!2127173 e!3114425)))

(declare-fun apply!13945 (TokenValueInjection!16844 BalanceConc!29850) TokenValue!8768)

(assert (=> b!4983097 (= res!2127173 (not (= (apply!13945 (transformation!8458 rule!200) lt!2058821) lt!2058824)))))

(declare-fun lt!2058823 () Unit!148672)

(declare-fun lemmaEqSameImage!1197 (TokenValueInjection!16844 BalanceConc!29850 BalanceConc!29850) Unit!148672)

(assert (=> b!4983097 (= lt!2058823 (lemmaEqSameImage!1197 (transformation!8458 rule!200) (_1!34576 lt!2058826) lt!2058821))))

(declare-fun b!4983098 () Bool)

(assert (=> b!4983098 (= e!3114419 e!3114424)))

(declare-fun res!2127181 () Bool)

(assert (=> b!4983098 (=> (not res!2127181) (not e!3114424))))

(declare-fun isSuffix!1257 (List!57712 List!57712) Bool)

(assert (=> b!4983098 (= res!2127181 (isSuffix!1257 lt!2058833 (list!18468 totalInput!520)))))

(assert (=> b!4983098 (= lt!2058833 (list!18468 input!1580))))

(declare-fun b!4983099 () Bool)

(declare-fun res!2127172 () Bool)

(assert (=> b!4983099 (=> (not res!2127172) (not e!3114419))))

(declare-fun ruleValid!3866 (LexerInterface!8050 Rule!16716) Bool)

(assert (=> b!4983099 (= res!2127172 (ruleValid!3866 thiss!16165 rule!200))))

(declare-fun e!3114426 () Bool)

(declare-fun b!4983100 () Bool)

(declare-fun tp!1396834 () Bool)

(declare-fun inv!75435 (String!65713) Bool)

(declare-fun inv!75441 (TokenValueInjection!16844) Bool)

(assert (=> b!4983100 (= e!3114422 (and tp!1396834 (inv!75435 (tag!9322 rule!200)) (inv!75441 (transformation!8458 rule!200)) e!3114426))))

(declare-fun res!2127178 () Bool)

(assert (=> b!4983101 (=> res!2127178 e!3114416)))

(declare-fun Forall!1808 (Int) Bool)

(assert (=> b!4983101 (= res!2127178 (not (Forall!1808 lambda!247892)))))

(declare-fun b!4983102 () Bool)

(declare-fun res!2127174 () Bool)

(assert (=> b!4983102 (=> res!2127174 e!3114417)))

(declare-fun lt!2058834 () Bool)

(assert (=> b!4983102 (= res!2127174 (not lt!2058834))))

(declare-fun b!4983103 () Bool)

(assert (=> b!4983103 (= e!3114416 e!3114417)))

(declare-fun res!2127175 () Bool)

(assert (=> b!4983103 (=> res!2127175 e!3114417)))

(declare-fun isDefined!11444 (Option!14535) Bool)

(assert (=> b!4983103 (= res!2127175 (not (= lt!2058834 (isDefined!11444 lt!2058828))))))

(declare-fun lt!2058827 () Int)

(declare-datatypes ((tuple2!62550 0))(
  ( (tuple2!62551 (_1!34578 Token!15372) (_2!34578 BalanceConc!29850)) )
))
(declare-datatypes ((Option!14536 0))(
  ( (None!14535) (Some!14535 (v!50532 tuple2!62550)) )
))
(declare-fun isDefined!11445 (Option!14536) Bool)

(assert (=> b!4983103 (= lt!2058834 (isDefined!11445 (Some!14535 (tuple2!62551 (Token!15373 lt!2058824 rule!200 lt!2058827 lt!2058822) (_2!34576 lt!2058826)))))))

(declare-fun maxPrefixOneRule!3674 (LexerInterface!8050 Rule!16716 List!57712) Option!14535)

(assert (=> b!4983103 (= lt!2058828 (maxPrefixOneRule!3674 thiss!16165 rule!200 lt!2058833))))

(declare-fun size!38223 (BalanceConc!29850) Int)

(assert (=> b!4983103 (= lt!2058827 (size!38223 (_1!34576 lt!2058826)))))

(assert (=> b!4983103 (= lt!2058824 (apply!13945 (transformation!8458 rule!200) (_1!34576 lt!2058826)))))

(declare-fun lt!2058832 () Unit!148672)

(declare-fun ForallOf!1268 (Int BalanceConc!29850) Unit!148672)

(assert (=> b!4983103 (= lt!2058832 (ForallOf!1268 lambda!247892 lt!2058821))))

(declare-fun seqFromList!6079 (List!57712) BalanceConc!29850)

(assert (=> b!4983103 (= lt!2058821 (seqFromList!6079 lt!2058822))))

(assert (=> b!4983103 (= lt!2058822 (list!18468 (_1!34576 lt!2058826)))))

(declare-fun lt!2058829 () Unit!148672)

(assert (=> b!4983103 (= lt!2058829 (ForallOf!1268 lambda!247892 (_1!34576 lt!2058826)))))

(assert (=> b!4983104 (= e!3114426 (and tp!1396837 tp!1396836))))

(assert (= (and start!526178 res!2127177) b!4983099))

(assert (= (and b!4983099 res!2127172) b!4983098))

(assert (= (and b!4983098 res!2127181) b!4983094))

(assert (= (and b!4983094 res!2127179) b!4983093))

(assert (= (and b!4983093 (not res!2127171)) b!4983095))

(assert (= (and b!4983093 (not res!2127176)) b!4983101))

(assert (= (and b!4983101 (not res!2127178)) b!4983103))

(assert (= (and b!4983103 (not res!2127175)) b!4983102))

(assert (= (and b!4983102 (not res!2127174)) b!4983092))

(assert (= (and b!4983092 (not res!2127180)) b!4983097))

(assert (= (and b!4983097 (not res!2127173)) b!4983096))

(assert (= b!4983100 b!4983104))

(assert (= start!526178 b!4983100))

(assert (= start!526178 b!4983091))

(assert (= start!526178 b!4983090))

(declare-fun m!6014534 () Bool)

(assert (=> b!4983091 m!6014534))

(declare-fun m!6014536 () Bool)

(assert (=> start!526178 m!6014536))

(declare-fun m!6014538 () Bool)

(assert (=> start!526178 m!6014538))

(declare-fun m!6014540 () Bool)

(assert (=> b!4983093 m!6014540))

(declare-fun m!6014542 () Bool)

(assert (=> b!4983093 m!6014542))

(declare-fun m!6014544 () Bool)

(assert (=> b!4983093 m!6014544))

(declare-fun m!6014546 () Bool)

(assert (=> b!4983093 m!6014546))

(declare-fun m!6014548 () Bool)

(assert (=> b!4983093 m!6014548))

(declare-fun m!6014550 () Bool)

(assert (=> b!4983093 m!6014550))

(assert (=> b!4983093 m!6014542))

(declare-fun m!6014552 () Bool)

(assert (=> b!4983093 m!6014552))

(assert (=> b!4983093 m!6014544))

(declare-fun m!6014554 () Bool)

(assert (=> b!4983090 m!6014554))

(declare-fun m!6014556 () Bool)

(assert (=> b!4983092 m!6014556))

(declare-fun m!6014558 () Bool)

(assert (=> b!4983099 m!6014558))

(declare-fun m!6014560 () Bool)

(assert (=> b!4983094 m!6014560))

(declare-fun m!6014562 () Bool)

(assert (=> b!4983094 m!6014562))

(declare-fun m!6014564 () Bool)

(assert (=> b!4983097 m!6014564))

(declare-fun m!6014566 () Bool)

(assert (=> b!4983097 m!6014566))

(declare-fun m!6014568 () Bool)

(assert (=> b!4983095 m!6014568))

(declare-fun m!6014570 () Bool)

(assert (=> b!4983100 m!6014570))

(declare-fun m!6014572 () Bool)

(assert (=> b!4983100 m!6014572))

(declare-fun m!6014574 () Bool)

(assert (=> b!4983096 m!6014574))

(declare-fun m!6014576 () Bool)

(assert (=> b!4983098 m!6014576))

(assert (=> b!4983098 m!6014576))

(declare-fun m!6014578 () Bool)

(assert (=> b!4983098 m!6014578))

(declare-fun m!6014580 () Bool)

(assert (=> b!4983098 m!6014580))

(declare-fun m!6014582 () Bool)

(assert (=> b!4983103 m!6014582))

(declare-fun m!6014584 () Bool)

(assert (=> b!4983103 m!6014584))

(declare-fun m!6014586 () Bool)

(assert (=> b!4983103 m!6014586))

(declare-fun m!6014588 () Bool)

(assert (=> b!4983103 m!6014588))

(declare-fun m!6014590 () Bool)

(assert (=> b!4983103 m!6014590))

(declare-fun m!6014592 () Bool)

(assert (=> b!4983103 m!6014592))

(declare-fun m!6014594 () Bool)

(assert (=> b!4983103 m!6014594))

(declare-fun m!6014596 () Bool)

(assert (=> b!4983103 m!6014596))

(declare-fun m!6014598 () Bool)

(assert (=> b!4983103 m!6014598))

(declare-fun m!6014600 () Bool)

(assert (=> b!4983101 m!6014600))

(check-sat (not b!4983103) (not b!4983099) (not b!4983101) (not b!4983096) (not b!4983097) (not b!4983093) (not b!4983094) (not b!4983092) (not b_next!133921) (not start!526178) (not b!4983091) (not b!4983098) (not b_next!133923) (not b!4983095) (not b!4983100) (not b!4983090) b_and!349695 b_and!349697)
(check-sat b_and!349697 b_and!349695 (not b_next!133923) (not b_next!133921))
(get-model)

(declare-fun d!1604786 () Bool)

(assert (=> d!1604786 (= (get!20023 lt!2058828) (v!50531 lt!2058828))))

(assert (=> b!4983096 d!1604786))

(declare-fun d!1604788 () Bool)

(declare-fun dynLambda!23379 (Int BalanceConc!29850) TokenValue!8768)

(assert (=> d!1604788 (= (apply!13945 (transformation!8458 rule!200) lt!2058821) (dynLambda!23379 (toValue!11451 (transformation!8458 rule!200)) lt!2058821))))

(declare-fun b_lambda!197975 () Bool)

(assert (=> (not b_lambda!197975) (not d!1604788)))

(declare-fun t!369865 () Bool)

(declare-fun tb!261649 () Bool)

(assert (=> (and b!4983104 (= (toValue!11451 (transformation!8458 rule!200)) (toValue!11451 (transformation!8458 rule!200))) t!369865) tb!261649))

(declare-fun result!326974 () Bool)

(declare-fun inv!21 (TokenValue!8768) Bool)

(assert (=> tb!261649 (= result!326974 (inv!21 (dynLambda!23379 (toValue!11451 (transformation!8458 rule!200)) lt!2058821)))))

(declare-fun m!6014606 () Bool)

(assert (=> tb!261649 m!6014606))

(assert (=> d!1604788 t!369865))

(declare-fun b_and!349701 () Bool)

(assert (= b_and!349695 (and (=> t!369865 result!326974) b_and!349701)))

(declare-fun m!6014608 () Bool)

(assert (=> d!1604788 m!6014608))

(assert (=> b!4983097 d!1604788))

(declare-fun b!4983151 () Bool)

(declare-fun e!3114465 () Bool)

(assert (=> b!4983151 (= e!3114465 true)))

(declare-fun d!1604790 () Bool)

(assert (=> d!1604790 e!3114465))

(assert (= d!1604790 b!4983151))

(declare-fun order!26525 () Int)

(declare-fun lambda!247898 () Int)

(declare-fun dynLambda!23380 (Int Int) Int)

(assert (=> b!4983151 (< (dynLambda!23373 order!26517 (toValue!11451 (transformation!8458 rule!200))) (dynLambda!23380 order!26525 lambda!247898))))

(assert (=> b!4983151 (< (dynLambda!23375 order!26521 (toChars!11310 (transformation!8458 rule!200))) (dynLambda!23380 order!26525 lambda!247898))))

(assert (=> d!1604790 (= (dynLambda!23379 (toValue!11451 (transformation!8458 rule!200)) (_1!34576 lt!2058826)) (dynLambda!23379 (toValue!11451 (transformation!8458 rule!200)) lt!2058821))))

(declare-fun lt!2058840 () Unit!148672)

(declare-fun Forall2of!487 (Int BalanceConc!29850 BalanceConc!29850) Unit!148672)

(assert (=> d!1604790 (= lt!2058840 (Forall2of!487 lambda!247898 (_1!34576 lt!2058826) lt!2058821))))

(assert (=> d!1604790 (= (list!18468 (_1!34576 lt!2058826)) (list!18468 lt!2058821))))

(assert (=> d!1604790 (= (lemmaEqSameImage!1197 (transformation!8458 rule!200) (_1!34576 lt!2058826) lt!2058821) lt!2058840)))

(declare-fun b_lambda!197983 () Bool)

(assert (=> (not b_lambda!197983) (not d!1604790)))

(declare-fun t!369869 () Bool)

(declare-fun tb!261653 () Bool)

(assert (=> (and b!4983104 (= (toValue!11451 (transformation!8458 rule!200)) (toValue!11451 (transformation!8458 rule!200))) t!369869) tb!261653))

(declare-fun result!326980 () Bool)

(assert (=> tb!261653 (= result!326980 (inv!21 (dynLambda!23379 (toValue!11451 (transformation!8458 rule!200)) (_1!34576 lt!2058826))))))

(declare-fun m!6014646 () Bool)

(assert (=> tb!261653 m!6014646))

(assert (=> d!1604790 t!369869))

(declare-fun b_and!349709 () Bool)

(assert (= b_and!349701 (and (=> t!369869 result!326980) b_and!349709)))

(declare-fun b_lambda!197987 () Bool)

(assert (=> (not b_lambda!197987) (not d!1604790)))

(assert (=> d!1604790 t!369865))

(declare-fun b_and!349711 () Bool)

(assert (= b_and!349709 (and (=> t!369865 result!326974) b_and!349711)))

(declare-fun m!6014650 () Bool)

(assert (=> d!1604790 m!6014650))

(assert (=> d!1604790 m!6014556))

(assert (=> d!1604790 m!6014582))

(assert (=> d!1604790 m!6014608))

(declare-fun m!6014652 () Bool)

(assert (=> d!1604790 m!6014652))

(assert (=> b!4983097 d!1604790))

(declare-fun d!1604824 () Bool)

(declare-fun e!3114469 () Bool)

(assert (=> d!1604824 e!3114469))

(declare-fun res!2127207 () Bool)

(assert (=> d!1604824 (=> res!2127207 e!3114469)))

(declare-fun lt!2058849 () Bool)

(assert (=> d!1604824 (= res!2127207 (not lt!2058849))))

(declare-fun drop!2374 (List!57712 Int) List!57712)

(assert (=> d!1604824 (= lt!2058849 (= lt!2058833 (drop!2374 (list!18468 totalInput!520) (- (size!38221 (list!18468 totalInput!520)) (size!38221 lt!2058833)))))))

(assert (=> d!1604824 (= (isSuffix!1257 lt!2058833 (list!18468 totalInput!520)) lt!2058849)))

(declare-fun b!4983154 () Bool)

(assert (=> b!4983154 (= e!3114469 (>= (size!38221 (list!18468 totalInput!520)) (size!38221 lt!2058833)))))

(assert (= (and d!1604824 (not res!2127207)) b!4983154))

(assert (=> d!1604824 m!6014576))

(declare-fun m!6014660 () Bool)

(assert (=> d!1604824 m!6014660))

(assert (=> d!1604824 m!6014544))

(assert (=> d!1604824 m!6014576))

(declare-fun m!6014662 () Bool)

(assert (=> d!1604824 m!6014662))

(assert (=> b!4983154 m!6014576))

(assert (=> b!4983154 m!6014660))

(assert (=> b!4983154 m!6014544))

(assert (=> b!4983098 d!1604824))

(declare-fun d!1604832 () Bool)

(declare-fun list!18470 (Conc!15210) List!57712)

(assert (=> d!1604832 (= (list!18468 totalInput!520) (list!18470 (c!850348 totalInput!520)))))

(declare-fun bs!1184416 () Bool)

(assert (= bs!1184416 d!1604832))

(declare-fun m!6014664 () Bool)

(assert (=> bs!1184416 m!6014664))

(assert (=> b!4983098 d!1604832))

(declare-fun d!1604834 () Bool)

(assert (=> d!1604834 (= (list!18468 input!1580) (list!18470 (c!850348 input!1580)))))

(declare-fun bs!1184417 () Bool)

(assert (= bs!1184417 d!1604834))

(declare-fun m!6014666 () Bool)

(assert (=> bs!1184417 m!6014666))

(assert (=> b!4983098 d!1604834))

(declare-fun d!1604836 () Bool)

(declare-fun res!2127212 () Bool)

(declare-fun e!3114472 () Bool)

(assert (=> d!1604836 (=> (not res!2127212) (not e!3114472))))

(declare-fun validRegex!5992 (Regex!13691) Bool)

(assert (=> d!1604836 (= res!2127212 (validRegex!5992 (regex!8458 rule!200)))))

(assert (=> d!1604836 (= (ruleValid!3866 thiss!16165 rule!200) e!3114472)))

(declare-fun b!4983159 () Bool)

(declare-fun res!2127213 () Bool)

(assert (=> b!4983159 (=> (not res!2127213) (not e!3114472))))

(declare-fun nullable!4643 (Regex!13691) Bool)

(assert (=> b!4983159 (= res!2127213 (not (nullable!4643 (regex!8458 rule!200))))))

(declare-fun b!4983160 () Bool)

(assert (=> b!4983160 (= e!3114472 (not (= (tag!9322 rule!200) (String!65714 ""))))))

(assert (= (and d!1604836 res!2127212) b!4983159))

(assert (= (and b!4983159 res!2127213) b!4983160))

(declare-fun m!6014668 () Bool)

(assert (=> d!1604836 m!6014668))

(declare-fun m!6014670 () Bool)

(assert (=> b!4983159 m!6014670))

(assert (=> b!4983099 d!1604836))

(declare-fun d!1604838 () Bool)

(assert (=> d!1604838 (= (inv!75435 (tag!9322 rule!200)) (= (mod (str.len (value!270447 (tag!9322 rule!200))) 2) 0))))

(assert (=> b!4983100 d!1604838))

(declare-fun d!1604840 () Bool)

(declare-fun res!2127216 () Bool)

(declare-fun e!3114475 () Bool)

(assert (=> d!1604840 (=> (not res!2127216) (not e!3114475))))

(assert (=> d!1604840 (= res!2127216 (semiInverseModEq!3751 (toChars!11310 (transformation!8458 rule!200)) (toValue!11451 (transformation!8458 rule!200))))))

(assert (=> d!1604840 (= (inv!75441 (transformation!8458 rule!200)) e!3114475)))

(declare-fun b!4983163 () Bool)

(declare-fun equivClasses!3573 (Int Int) Bool)

(assert (=> b!4983163 (= e!3114475 (equivClasses!3573 (toChars!11310 (transformation!8458 rule!200)) (toValue!11451 (transformation!8458 rule!200))))))

(assert (= (and d!1604840 res!2127216) b!4983163))

(assert (=> d!1604840 m!6014552))

(declare-fun m!6014672 () Bool)

(assert (=> b!4983163 m!6014672))

(assert (=> b!4983100 d!1604840))

(declare-fun d!1604842 () Bool)

(declare-fun choose!36820 (Int) Bool)

(assert (=> d!1604842 (= (Forall!1808 lambda!247892) (choose!36820 lambda!247892))))

(declare-fun bs!1184418 () Bool)

(assert (= bs!1184418 d!1604842))

(declare-fun m!6014674 () Bool)

(assert (=> bs!1184418 m!6014674))

(assert (=> b!4983101 d!1604842))

(declare-fun d!1604844 () Bool)

(declare-fun c!850356 () Bool)

(assert (=> d!1604844 (= c!850356 ((_ is Node!15210) (c!850348 input!1580)))))

(declare-fun e!3114488 () Bool)

(assert (=> d!1604844 (= (inv!75439 (c!850348 input!1580)) e!3114488)))

(declare-fun b!4983188 () Bool)

(declare-fun inv!75444 (Conc!15210) Bool)

(assert (=> b!4983188 (= e!3114488 (inv!75444 (c!850348 input!1580)))))

(declare-fun b!4983189 () Bool)

(declare-fun e!3114489 () Bool)

(assert (=> b!4983189 (= e!3114488 e!3114489)))

(declare-fun res!2127233 () Bool)

(assert (=> b!4983189 (= res!2127233 (not ((_ is Leaf!25264) (c!850348 input!1580))))))

(assert (=> b!4983189 (=> res!2127233 e!3114489)))

(declare-fun b!4983190 () Bool)

(declare-fun inv!75445 (Conc!15210) Bool)

(assert (=> b!4983190 (= e!3114489 (inv!75445 (c!850348 input!1580)))))

(assert (= (and d!1604844 c!850356) b!4983188))

(assert (= (and d!1604844 (not c!850356)) b!4983189))

(assert (= (and b!4983189 (not res!2127233)) b!4983190))

(declare-fun m!6014676 () Bool)

(assert (=> b!4983188 m!6014676))

(declare-fun m!6014678 () Bool)

(assert (=> b!4983190 m!6014678))

(assert (=> b!4983090 d!1604844))

(declare-fun d!1604846 () Bool)

(declare-fun isBalanced!4228 (Conc!15210) Bool)

(assert (=> d!1604846 (= (inv!75440 totalInput!520) (isBalanced!4228 (c!850348 totalInput!520)))))

(declare-fun bs!1184419 () Bool)

(assert (= bs!1184419 d!1604846))

(declare-fun m!6014692 () Bool)

(assert (=> bs!1184419 m!6014692))

(assert (=> start!526178 d!1604846))

(declare-fun d!1604848 () Bool)

(assert (=> d!1604848 (= (inv!75440 input!1580) (isBalanced!4228 (c!850348 input!1580)))))

(declare-fun bs!1184420 () Bool)

(assert (= bs!1184420 d!1604848))

(declare-fun m!6014702 () Bool)

(assert (=> bs!1184420 m!6014702))

(assert (=> start!526178 d!1604848))

(declare-fun d!1604850 () Bool)

(declare-fun c!850358 () Bool)

(assert (=> d!1604850 (= c!850358 ((_ is Node!15210) (c!850348 totalInput!520)))))

(declare-fun e!3114494 () Bool)

(assert (=> d!1604850 (= (inv!75439 (c!850348 totalInput!520)) e!3114494)))

(declare-fun b!4983200 () Bool)

(assert (=> b!4983200 (= e!3114494 (inv!75444 (c!850348 totalInput!520)))))

(declare-fun b!4983201 () Bool)

(declare-fun e!3114495 () Bool)

(assert (=> b!4983201 (= e!3114494 e!3114495)))

(declare-fun res!2127241 () Bool)

(assert (=> b!4983201 (= res!2127241 (not ((_ is Leaf!25264) (c!850348 totalInput!520))))))

(assert (=> b!4983201 (=> res!2127241 e!3114495)))

(declare-fun b!4983202 () Bool)

(assert (=> b!4983202 (= e!3114495 (inv!75445 (c!850348 totalInput!520)))))

(assert (= (and d!1604850 c!850358) b!4983200))

(assert (= (and d!1604850 (not c!850358)) b!4983201))

(assert (= (and b!4983201 (not res!2127241)) b!4983202))

(declare-fun m!6014720 () Bool)

(assert (=> b!4983200 m!6014720))

(declare-fun m!6014722 () Bool)

(assert (=> b!4983202 m!6014722))

(assert (=> b!4983091 d!1604850))

(declare-fun d!1604854 () Bool)

(assert (=> d!1604854 (= (list!18468 (_1!34576 lt!2058826)) (list!18470 (c!850348 (_1!34576 lt!2058826))))))

(declare-fun bs!1184422 () Bool)

(assert (= bs!1184422 d!1604854))

(declare-fun m!6014726 () Bool)

(assert (=> bs!1184422 m!6014726))

(assert (=> b!4983103 d!1604854))

(declare-fun b!4983275 () Bool)

(declare-fun res!2127291 () Bool)

(declare-fun e!3114535 () Bool)

(assert (=> b!4983275 (=> (not res!2127291) (not e!3114535))))

(declare-fun lt!2058892 () Option!14535)

(assert (=> b!4983275 (= res!2127291 (< (size!38221 (_2!34577 (get!20023 lt!2058892))) (size!38221 lt!2058833)))))

(declare-fun b!4983276 () Bool)

(declare-fun res!2127287 () Bool)

(assert (=> b!4983276 (=> (not res!2127287) (not e!3114535))))

(assert (=> b!4983276 (= res!2127287 (= (rule!11714 (_1!34577 (get!20023 lt!2058892))) rule!200))))

(declare-fun b!4983277 () Bool)

(declare-fun e!3114536 () Bool)

(assert (=> b!4983277 (= e!3114536 (matchR!6685 (regex!8458 rule!200) (_1!34575 (findLongestMatchInner!1902 (regex!8458 rule!200) Nil!57588 (size!38221 Nil!57588) lt!2058833 lt!2058833 (size!38221 lt!2058833)))))))

(declare-fun b!4983278 () Bool)

(declare-fun res!2127289 () Bool)

(assert (=> b!4983278 (=> (not res!2127289) (not e!3114535))))

(assert (=> b!4983278 (= res!2127289 (= (value!270473 (_1!34577 (get!20023 lt!2058892))) (apply!13945 (transformation!8458 (rule!11714 (_1!34577 (get!20023 lt!2058892)))) (seqFromList!6079 (originalCharacters!8717 (_1!34577 (get!20023 lt!2058892)))))))))

(declare-fun b!4983279 () Bool)

(declare-fun e!3114534 () Option!14535)

(declare-fun lt!2058890 () tuple2!62544)

(assert (=> b!4983279 (= e!3114534 (Some!14534 (tuple2!62549 (Token!15373 (apply!13945 (transformation!8458 rule!200) (seqFromList!6079 (_1!34575 lt!2058890))) rule!200 (size!38223 (seqFromList!6079 (_1!34575 lt!2058890))) (_1!34575 lt!2058890)) (_2!34575 lt!2058890))))))

(declare-fun lt!2058889 () Unit!148672)

(assert (=> b!4983279 (= lt!2058889 (longestMatchIsAcceptedByMatchOrIsEmpty!1863 (regex!8458 rule!200) lt!2058833))))

(declare-fun res!2127286 () Bool)

(assert (=> b!4983279 (= res!2127286 (isEmpty!31105 (_1!34575 (findLongestMatchInner!1902 (regex!8458 rule!200) Nil!57588 (size!38221 Nil!57588) lt!2058833 lt!2058833 (size!38221 lt!2058833)))))))

(assert (=> b!4983279 (=> res!2127286 e!3114536)))

(assert (=> b!4983279 e!3114536))

(declare-fun lt!2058888 () Unit!148672)

(assert (=> b!4983279 (= lt!2058888 lt!2058889)))

(declare-fun lt!2058891 () Unit!148672)

(declare-fun lemmaSemiInverse!2619 (TokenValueInjection!16844 BalanceConc!29850) Unit!148672)

(assert (=> b!4983279 (= lt!2058891 (lemmaSemiInverse!2619 (transformation!8458 rule!200) (seqFromList!6079 (_1!34575 lt!2058890))))))

(declare-fun b!4983280 () Bool)

(assert (=> b!4983280 (= e!3114535 (= (size!38222 (_1!34577 (get!20023 lt!2058892))) (size!38221 (originalCharacters!8717 (_1!34577 (get!20023 lt!2058892))))))))

(declare-fun b!4983281 () Bool)

(assert (=> b!4983281 (= e!3114534 None!14534)))

(declare-fun b!4983282 () Bool)

(declare-fun res!2127288 () Bool)

(assert (=> b!4983282 (=> (not res!2127288) (not e!3114535))))

(declare-fun ++!12555 (List!57712 List!57712) List!57712)

(declare-fun charsOf!5456 (Token!15372) BalanceConc!29850)

(assert (=> b!4983282 (= res!2127288 (= (++!12555 (list!18468 (charsOf!5456 (_1!34577 (get!20023 lt!2058892)))) (_2!34577 (get!20023 lt!2058892))) lt!2058833))))

(declare-fun b!4983283 () Bool)

(declare-fun e!3114537 () Bool)

(assert (=> b!4983283 (= e!3114537 e!3114535)))

(declare-fun res!2127290 () Bool)

(assert (=> b!4983283 (=> (not res!2127290) (not e!3114535))))

(assert (=> b!4983283 (= res!2127290 (matchR!6685 (regex!8458 rule!200) (list!18468 (charsOf!5456 (_1!34577 (get!20023 lt!2058892))))))))

(declare-fun d!1604856 () Bool)

(assert (=> d!1604856 e!3114537))

(declare-fun res!2127292 () Bool)

(assert (=> d!1604856 (=> res!2127292 e!3114537)))

(declare-fun isEmpty!31109 (Option!14535) Bool)

(assert (=> d!1604856 (= res!2127292 (isEmpty!31109 lt!2058892))))

(assert (=> d!1604856 (= lt!2058892 e!3114534)))

(declare-fun c!850373 () Bool)

(assert (=> d!1604856 (= c!850373 (isEmpty!31105 (_1!34575 lt!2058890)))))

(declare-fun findLongestMatch!1718 (Regex!13691 List!57712) tuple2!62544)

(assert (=> d!1604856 (= lt!2058890 (findLongestMatch!1718 (regex!8458 rule!200) lt!2058833))))

(assert (=> d!1604856 (ruleValid!3866 thiss!16165 rule!200)))

(assert (=> d!1604856 (= (maxPrefixOneRule!3674 thiss!16165 rule!200 lt!2058833) lt!2058892)))

(assert (= (and d!1604856 c!850373) b!4983281))

(assert (= (and d!1604856 (not c!850373)) b!4983279))

(assert (= (and b!4983279 (not res!2127286)) b!4983277))

(assert (= (and d!1604856 (not res!2127292)) b!4983283))

(assert (= (and b!4983283 res!2127290) b!4983282))

(assert (= (and b!4983282 res!2127288) b!4983275))

(assert (= (and b!4983275 res!2127291) b!4983276))

(assert (= (and b!4983276 res!2127287) b!4983278))

(assert (= (and b!4983278 res!2127289) b!4983280))

(assert (=> b!4983277 m!6014542))

(assert (=> b!4983277 m!6014544))

(assert (=> b!4983277 m!6014542))

(assert (=> b!4983277 m!6014544))

(assert (=> b!4983277 m!6014546))

(declare-fun m!6014748 () Bool)

(assert (=> b!4983277 m!6014748))

(declare-fun m!6014750 () Bool)

(assert (=> d!1604856 m!6014750))

(declare-fun m!6014752 () Bool)

(assert (=> d!1604856 m!6014752))

(declare-fun m!6014754 () Bool)

(assert (=> d!1604856 m!6014754))

(assert (=> d!1604856 m!6014558))

(declare-fun m!6014756 () Bool)

(assert (=> b!4983280 m!6014756))

(declare-fun m!6014758 () Bool)

(assert (=> b!4983280 m!6014758))

(assert (=> b!4983283 m!6014756))

(declare-fun m!6014760 () Bool)

(assert (=> b!4983283 m!6014760))

(assert (=> b!4983283 m!6014760))

(declare-fun m!6014762 () Bool)

(assert (=> b!4983283 m!6014762))

(assert (=> b!4983283 m!6014762))

(declare-fun m!6014764 () Bool)

(assert (=> b!4983283 m!6014764))

(assert (=> b!4983278 m!6014756))

(declare-fun m!6014766 () Bool)

(assert (=> b!4983278 m!6014766))

(assert (=> b!4983278 m!6014766))

(declare-fun m!6014768 () Bool)

(assert (=> b!4983278 m!6014768))

(assert (=> b!4983275 m!6014756))

(declare-fun m!6014770 () Bool)

(assert (=> b!4983275 m!6014770))

(assert (=> b!4983275 m!6014544))

(declare-fun m!6014772 () Bool)

(assert (=> b!4983279 m!6014772))

(declare-fun m!6014774 () Bool)

(assert (=> b!4983279 m!6014774))

(assert (=> b!4983279 m!6014772))

(assert (=> b!4983279 m!6014550))

(assert (=> b!4983279 m!6014542))

(assert (=> b!4983279 m!6014772))

(declare-fun m!6014776 () Bool)

(assert (=> b!4983279 m!6014776))

(declare-fun m!6014778 () Bool)

(assert (=> b!4983279 m!6014778))

(assert (=> b!4983279 m!6014772))

(declare-fun m!6014780 () Bool)

(assert (=> b!4983279 m!6014780))

(assert (=> b!4983279 m!6014544))

(assert (=> b!4983279 m!6014542))

(assert (=> b!4983279 m!6014544))

(assert (=> b!4983279 m!6014546))

(assert (=> b!4983282 m!6014756))

(assert (=> b!4983282 m!6014760))

(assert (=> b!4983282 m!6014760))

(assert (=> b!4983282 m!6014762))

(assert (=> b!4983282 m!6014762))

(declare-fun m!6014782 () Bool)

(assert (=> b!4983282 m!6014782))

(assert (=> b!4983276 m!6014756))

(assert (=> b!4983103 d!1604856))

(declare-fun d!1604872 () Bool)

(assert (=> d!1604872 (= (isDefined!11444 lt!2058828) (not (isEmpty!31109 lt!2058828)))))

(declare-fun bs!1184424 () Bool)

(assert (= bs!1184424 d!1604872))

(declare-fun m!6014784 () Bool)

(assert (=> bs!1184424 m!6014784))

(assert (=> b!4983103 d!1604872))

(declare-fun d!1604874 () Bool)

(declare-fun fromListB!2748 (List!57712) BalanceConc!29850)

(assert (=> d!1604874 (= (seqFromList!6079 lt!2058822) (fromListB!2748 lt!2058822))))

(declare-fun bs!1184425 () Bool)

(assert (= bs!1184425 d!1604874))

(declare-fun m!6014786 () Bool)

(assert (=> bs!1184425 m!6014786))

(assert (=> b!4983103 d!1604874))

(declare-fun d!1604876 () Bool)

(declare-fun dynLambda!23381 (Int BalanceConc!29850) Bool)

(assert (=> d!1604876 (dynLambda!23381 lambda!247892 (_1!34576 lt!2058826))))

(declare-fun lt!2058895 () Unit!148672)

(declare-fun choose!36821 (Int BalanceConc!29850) Unit!148672)

(assert (=> d!1604876 (= lt!2058895 (choose!36821 lambda!247892 (_1!34576 lt!2058826)))))

(assert (=> d!1604876 (Forall!1808 lambda!247892)))

(assert (=> d!1604876 (= (ForallOf!1268 lambda!247892 (_1!34576 lt!2058826)) lt!2058895)))

(declare-fun b_lambda!197991 () Bool)

(assert (=> (not b_lambda!197991) (not d!1604876)))

(declare-fun bs!1184426 () Bool)

(assert (= bs!1184426 d!1604876))

(declare-fun m!6014788 () Bool)

(assert (=> bs!1184426 m!6014788))

(declare-fun m!6014790 () Bool)

(assert (=> bs!1184426 m!6014790))

(assert (=> bs!1184426 m!6014600))

(assert (=> b!4983103 d!1604876))

(declare-fun d!1604878 () Bool)

(declare-fun isEmpty!31110 (Option!14536) Bool)

(assert (=> d!1604878 (= (isDefined!11445 (Some!14535 (tuple2!62551 (Token!15373 lt!2058824 rule!200 lt!2058827 lt!2058822) (_2!34576 lt!2058826)))) (not (isEmpty!31110 (Some!14535 (tuple2!62551 (Token!15373 lt!2058824 rule!200 lt!2058827 lt!2058822) (_2!34576 lt!2058826))))))))

(declare-fun bs!1184427 () Bool)

(assert (= bs!1184427 d!1604878))

(declare-fun m!6014792 () Bool)

(assert (=> bs!1184427 m!6014792))

(assert (=> b!4983103 d!1604878))

(declare-fun d!1604880 () Bool)

(declare-fun lt!2058898 () Int)

(assert (=> d!1604880 (= lt!2058898 (size!38221 (list!18468 (_1!34576 lt!2058826))))))

(declare-fun size!38225 (Conc!15210) Int)

(assert (=> d!1604880 (= lt!2058898 (size!38225 (c!850348 (_1!34576 lt!2058826))))))

(assert (=> d!1604880 (= (size!38223 (_1!34576 lt!2058826)) lt!2058898)))

(declare-fun bs!1184428 () Bool)

(assert (= bs!1184428 d!1604880))

(assert (=> bs!1184428 m!6014582))

(assert (=> bs!1184428 m!6014582))

(declare-fun m!6014794 () Bool)

(assert (=> bs!1184428 m!6014794))

(declare-fun m!6014796 () Bool)

(assert (=> bs!1184428 m!6014796))

(assert (=> b!4983103 d!1604880))

(declare-fun d!1604882 () Bool)

(assert (=> d!1604882 (dynLambda!23381 lambda!247892 lt!2058821)))

(declare-fun lt!2058899 () Unit!148672)

(assert (=> d!1604882 (= lt!2058899 (choose!36821 lambda!247892 lt!2058821))))

(assert (=> d!1604882 (Forall!1808 lambda!247892)))

(assert (=> d!1604882 (= (ForallOf!1268 lambda!247892 lt!2058821) lt!2058899)))

(declare-fun b_lambda!197993 () Bool)

(assert (=> (not b_lambda!197993) (not d!1604882)))

(declare-fun bs!1184429 () Bool)

(assert (= bs!1184429 d!1604882))

(declare-fun m!6014798 () Bool)

(assert (=> bs!1184429 m!6014798))

(declare-fun m!6014800 () Bool)

(assert (=> bs!1184429 m!6014800))

(assert (=> bs!1184429 m!6014600))

(assert (=> b!4983103 d!1604882))

(declare-fun d!1604884 () Bool)

(assert (=> d!1604884 (= (apply!13945 (transformation!8458 rule!200) (_1!34576 lt!2058826)) (dynLambda!23379 (toValue!11451 (transformation!8458 rule!200)) (_1!34576 lt!2058826)))))

(declare-fun b_lambda!197995 () Bool)

(assert (=> (not b_lambda!197995) (not d!1604884)))

(assert (=> d!1604884 t!369869))

(declare-fun b_and!349713 () Bool)

(assert (= b_and!349711 (and (=> t!369869 result!326980) b_and!349713)))

(assert (=> d!1604884 m!6014650))

(assert (=> b!4983103 d!1604884))

(declare-fun d!1604886 () Bool)

(assert (=> d!1604886 (= (list!18468 lt!2058821) (list!18470 (c!850348 lt!2058821)))))

(declare-fun bs!1184430 () Bool)

(assert (= bs!1184430 d!1604886))

(declare-fun m!6014802 () Bool)

(assert (=> bs!1184430 m!6014802))

(assert (=> b!4983092 d!1604886))

(declare-fun b!4983397 () Bool)

(declare-fun c!850406 () Bool)

(declare-fun call!347687 () Bool)

(assert (=> b!4983397 (= c!850406 call!347687)))

(declare-fun lt!2059060 () Unit!148672)

(declare-fun lt!2059050 () Unit!148672)

(assert (=> b!4983397 (= lt!2059060 lt!2059050)))

(declare-fun lt!2059049 () C!27632)

(declare-fun lt!2059059 () List!57712)

(assert (=> b!4983397 (= (++!12555 (++!12555 Nil!57588 (Cons!57588 lt!2059049 Nil!57588)) lt!2059059) lt!2058833)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1465 (List!57712 C!27632 List!57712 List!57712) Unit!148672)

(assert (=> b!4983397 (= lt!2059050 (lemmaMoveElementToOtherListKeepsConcatEq!1465 Nil!57588 lt!2059049 lt!2059059 lt!2058833))))

(declare-fun tail!9825 (List!57712) List!57712)

(assert (=> b!4983397 (= lt!2059059 (tail!9825 lt!2058833))))

(declare-fun head!10692 (List!57712) C!27632)

(assert (=> b!4983397 (= lt!2059049 (head!10692 lt!2058833))))

(declare-fun lt!2059054 () Unit!148672)

(declare-fun lt!2059058 () Unit!148672)

(assert (=> b!4983397 (= lt!2059054 lt!2059058)))

(declare-fun isPrefix!5268 (List!57712 List!57712) Bool)

(declare-fun getSuffix!3108 (List!57712 List!57712) List!57712)

(assert (=> b!4983397 (isPrefix!5268 (++!12555 Nil!57588 (Cons!57588 (head!10692 (getSuffix!3108 lt!2058833 Nil!57588)) Nil!57588)) lt!2058833)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!855 (List!57712 List!57712) Unit!148672)

(assert (=> b!4983397 (= lt!2059058 (lemmaAddHeadSuffixToPrefixStillPrefix!855 Nil!57588 lt!2058833))))

(declare-fun lt!2059053 () Unit!148672)

(declare-fun lt!2059047 () Unit!148672)

(assert (=> b!4983397 (= lt!2059053 lt!2059047)))

(assert (=> b!4983397 (= lt!2059047 (lemmaAddHeadSuffixToPrefixStillPrefix!855 Nil!57588 lt!2058833))))

(declare-fun lt!2059063 () List!57712)

(assert (=> b!4983397 (= lt!2059063 (++!12555 Nil!57588 (Cons!57588 (head!10692 lt!2058833) Nil!57588)))))

(declare-fun lt!2059074 () Unit!148672)

(declare-fun e!3114596 () Unit!148672)

(assert (=> b!4983397 (= lt!2059074 e!3114596)))

(declare-fun c!850411 () Bool)

(assert (=> b!4983397 (= c!850411 (= (size!38221 Nil!57588) (size!38221 lt!2058833)))))

(declare-fun lt!2059055 () Unit!148672)

(declare-fun lt!2059057 () Unit!148672)

(assert (=> b!4983397 (= lt!2059055 lt!2059057)))

(assert (=> b!4983397 (<= (size!38221 Nil!57588) (size!38221 lt!2058833))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!781 (List!57712 List!57712) Unit!148672)

(assert (=> b!4983397 (= lt!2059057 (lemmaIsPrefixThenSmallerEqSize!781 Nil!57588 lt!2058833))))

(declare-fun e!3114602 () tuple2!62544)

(declare-fun e!3114601 () tuple2!62544)

(assert (=> b!4983397 (= e!3114602 e!3114601)))

(declare-fun b!4983398 () Bool)

(declare-fun e!3114603 () tuple2!62544)

(assert (=> b!4983398 (= e!3114603 (tuple2!62545 Nil!57588 lt!2058833))))

(declare-fun bm!347680 () Bool)

(assert (=> bm!347680 (= call!347687 (nullable!4643 (regex!8458 rule!200)))))

(declare-fun bm!347681 () Bool)

(declare-fun call!347691 () Unit!148672)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1228 (List!57712 List!57712 List!57712) Unit!148672)

(assert (=> bm!347681 (= call!347691 (lemmaIsPrefixSameLengthThenSameList!1228 lt!2058833 Nil!57588 lt!2058833))))

(declare-fun b!4983399 () Bool)

(declare-fun e!3114598 () tuple2!62544)

(assert (=> b!4983399 (= e!3114598 (tuple2!62545 Nil!57588 lt!2058833))))

(declare-fun b!4983400 () Bool)

(declare-fun e!3114600 () tuple2!62544)

(assert (=> b!4983400 (= e!3114600 (tuple2!62545 Nil!57588 lt!2058833))))

(declare-fun b!4983401 () Bool)

(declare-fun e!3114599 () Bool)

(declare-fun e!3114597 () Bool)

(assert (=> b!4983401 (= e!3114599 e!3114597)))

(declare-fun res!2127305 () Bool)

(assert (=> b!4983401 (=> res!2127305 e!3114597)))

(declare-fun lt!2059061 () tuple2!62544)

(assert (=> b!4983401 (= res!2127305 (isEmpty!31105 (_1!34575 lt!2059061)))))

(declare-fun b!4983402 () Bool)

(assert (=> b!4983402 (= e!3114601 e!3114598)))

(declare-fun lt!2059066 () tuple2!62544)

(declare-fun call!347690 () tuple2!62544)

(assert (=> b!4983402 (= lt!2059066 call!347690)))

(declare-fun c!850410 () Bool)

(assert (=> b!4983402 (= c!850410 (isEmpty!31105 (_1!34575 lt!2059066)))))

(declare-fun bm!347682 () Bool)

(declare-fun call!347689 () C!27632)

(assert (=> bm!347682 (= call!347689 (head!10692 lt!2058833))))

(declare-fun d!1604888 () Bool)

(assert (=> d!1604888 e!3114599))

(declare-fun res!2127304 () Bool)

(assert (=> d!1604888 (=> (not res!2127304) (not e!3114599))))

(assert (=> d!1604888 (= res!2127304 (= (++!12555 (_1!34575 lt!2059061) (_2!34575 lt!2059061)) lt!2058833))))

(assert (=> d!1604888 (= lt!2059061 e!3114600)))

(declare-fun c!850409 () Bool)

(declare-fun lostCause!1152 (Regex!13691) Bool)

(assert (=> d!1604888 (= c!850409 (lostCause!1152 (regex!8458 rule!200)))))

(declare-fun lt!2059062 () Unit!148672)

(declare-fun Unit!148678 () Unit!148672)

(assert (=> d!1604888 (= lt!2059062 Unit!148678)))

(assert (=> d!1604888 (= (getSuffix!3108 lt!2058833 Nil!57588) lt!2058833)))

(declare-fun lt!2059065 () Unit!148672)

(declare-fun lt!2059068 () Unit!148672)

(assert (=> d!1604888 (= lt!2059065 lt!2059068)))

(declare-fun lt!2059048 () List!57712)

(assert (=> d!1604888 (= lt!2058833 lt!2059048)))

(declare-fun lemmaSamePrefixThenSameSuffix!2520 (List!57712 List!57712 List!57712 List!57712 List!57712) Unit!148672)

(assert (=> d!1604888 (= lt!2059068 (lemmaSamePrefixThenSameSuffix!2520 Nil!57588 lt!2058833 Nil!57588 lt!2059048 lt!2058833))))

(assert (=> d!1604888 (= lt!2059048 (getSuffix!3108 lt!2058833 Nil!57588))))

(declare-fun lt!2059052 () Unit!148672)

(declare-fun lt!2059072 () Unit!148672)

(assert (=> d!1604888 (= lt!2059052 lt!2059072)))

(assert (=> d!1604888 (isPrefix!5268 Nil!57588 (++!12555 Nil!57588 lt!2058833))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3366 (List!57712 List!57712) Unit!148672)

(assert (=> d!1604888 (= lt!2059072 (lemmaConcatTwoListThenFirstIsPrefix!3366 Nil!57588 lt!2058833))))

(assert (=> d!1604888 (validRegex!5992 (regex!8458 rule!200))))

(assert (=> d!1604888 (= (findLongestMatchInner!1902 (regex!8458 rule!200) Nil!57588 (size!38221 Nil!57588) lt!2058833 lt!2058833 (size!38221 lt!2058833)) lt!2059061)))

(declare-fun b!4983403 () Bool)

(declare-fun Unit!148679 () Unit!148672)

(assert (=> b!4983403 (= e!3114596 Unit!148679)))

(declare-fun lt!2059073 () Unit!148672)

(declare-fun call!347692 () Unit!148672)

(assert (=> b!4983403 (= lt!2059073 call!347692)))

(declare-fun call!347685 () Bool)

(assert (=> b!4983403 call!347685))

(declare-fun lt!2059064 () Unit!148672)

(assert (=> b!4983403 (= lt!2059064 lt!2059073)))

(declare-fun lt!2059070 () Unit!148672)

(assert (=> b!4983403 (= lt!2059070 call!347691)))

(assert (=> b!4983403 (= lt!2058833 Nil!57588)))

(declare-fun lt!2059069 () Unit!148672)

(assert (=> b!4983403 (= lt!2059069 lt!2059070)))

(assert (=> b!4983403 false))

(declare-fun bm!347683 () Bool)

(declare-fun call!347688 () Regex!13691)

(declare-fun derivativeStep!3943 (Regex!13691 C!27632) Regex!13691)

(assert (=> bm!347683 (= call!347688 (derivativeStep!3943 (regex!8458 rule!200) call!347689))))

(declare-fun bm!347684 () Bool)

(declare-fun call!347686 () List!57712)

(assert (=> bm!347684 (= call!347686 (tail!9825 lt!2058833))))

(declare-fun b!4983404 () Bool)

(declare-fun c!850408 () Bool)

(assert (=> b!4983404 (= c!850408 call!347687)))

(declare-fun lt!2059071 () Unit!148672)

(declare-fun lt!2059067 () Unit!148672)

(assert (=> b!4983404 (= lt!2059071 lt!2059067)))

(assert (=> b!4983404 (= lt!2058833 Nil!57588)))

(assert (=> b!4983404 (= lt!2059067 call!347691)))

(declare-fun lt!2059051 () Unit!148672)

(declare-fun lt!2059056 () Unit!148672)

(assert (=> b!4983404 (= lt!2059051 lt!2059056)))

(assert (=> b!4983404 call!347685))

(assert (=> b!4983404 (= lt!2059056 call!347692)))

(assert (=> b!4983404 (= e!3114602 e!3114603)))

(declare-fun bm!347685 () Bool)

(assert (=> bm!347685 (= call!347685 (isPrefix!5268 lt!2058833 lt!2058833))))

(declare-fun b!4983405 () Bool)

(assert (=> b!4983405 (= e!3114597 (>= (size!38221 (_1!34575 lt!2059061)) (size!38221 Nil!57588)))))

(declare-fun b!4983406 () Bool)

(declare-fun Unit!148680 () Unit!148672)

(assert (=> b!4983406 (= e!3114596 Unit!148680)))

(declare-fun b!4983407 () Bool)

(assert (=> b!4983407 (= e!3114600 e!3114602)))

(declare-fun c!850407 () Bool)

(assert (=> b!4983407 (= c!850407 (= (size!38221 Nil!57588) (size!38221 lt!2058833)))))

(declare-fun bm!347686 () Bool)

(declare-fun lemmaIsPrefixRefl!3592 (List!57712 List!57712) Unit!148672)

(assert (=> bm!347686 (= call!347692 (lemmaIsPrefixRefl!3592 lt!2058833 lt!2058833))))

(declare-fun b!4983408 () Bool)

(assert (=> b!4983408 (= e!3114603 (tuple2!62545 Nil!57588 Nil!57588))))

(declare-fun b!4983409 () Bool)

(assert (=> b!4983409 (= e!3114598 lt!2059066)))

(declare-fun bm!347687 () Bool)

(assert (=> bm!347687 (= call!347690 (findLongestMatchInner!1902 call!347688 lt!2059063 (+ (size!38221 Nil!57588) 1) call!347686 lt!2058833 (size!38221 lt!2058833)))))

(declare-fun b!4983410 () Bool)

(assert (=> b!4983410 (= e!3114601 call!347690)))

(assert (= (and d!1604888 c!850409) b!4983400))

(assert (= (and d!1604888 (not c!850409)) b!4983407))

(assert (= (and b!4983407 c!850407) b!4983404))

(assert (= (and b!4983407 (not c!850407)) b!4983397))

(assert (= (and b!4983404 c!850408) b!4983408))

(assert (= (and b!4983404 (not c!850408)) b!4983398))

(assert (= (and b!4983397 c!850411) b!4983403))

(assert (= (and b!4983397 (not c!850411)) b!4983406))

(assert (= (and b!4983397 c!850406) b!4983402))

(assert (= (and b!4983397 (not c!850406)) b!4983410))

(assert (= (and b!4983402 c!850410) b!4983399))

(assert (= (and b!4983402 (not c!850410)) b!4983409))

(assert (= (or b!4983402 b!4983410) bm!347682))

(assert (= (or b!4983402 b!4983410) bm!347684))

(assert (= (or b!4983402 b!4983410) bm!347683))

(assert (= (or b!4983402 b!4983410) bm!347687))

(assert (= (or b!4983404 b!4983403) bm!347685))

(assert (= (or b!4983404 b!4983403) bm!347681))

(assert (= (or b!4983404 b!4983403) bm!347686))

(assert (= (or b!4983404 b!4983397) bm!347680))

(assert (= (and d!1604888 res!2127304) b!4983401))

(assert (= (and b!4983401 (not res!2127305)) b!4983405))

(assert (=> bm!347687 m!6014544))

(declare-fun m!6014904 () Bool)

(assert (=> bm!347687 m!6014904))

(declare-fun m!6014906 () Bool)

(assert (=> d!1604888 m!6014906))

(declare-fun m!6014908 () Bool)

(assert (=> d!1604888 m!6014908))

(declare-fun m!6014910 () Bool)

(assert (=> d!1604888 m!6014910))

(declare-fun m!6014912 () Bool)

(assert (=> d!1604888 m!6014912))

(assert (=> d!1604888 m!6014668))

(declare-fun m!6014914 () Bool)

(assert (=> d!1604888 m!6014914))

(declare-fun m!6014916 () Bool)

(assert (=> d!1604888 m!6014916))

(assert (=> d!1604888 m!6014906))

(declare-fun m!6014918 () Bool)

(assert (=> d!1604888 m!6014918))

(declare-fun m!6014920 () Bool)

(assert (=> b!4983397 m!6014920))

(declare-fun m!6014922 () Bool)

(assert (=> b!4983397 m!6014922))

(declare-fun m!6014924 () Bool)

(assert (=> b!4983397 m!6014924))

(declare-fun m!6014926 () Bool)

(assert (=> b!4983397 m!6014926))

(declare-fun m!6014928 () Bool)

(assert (=> b!4983397 m!6014928))

(declare-fun m!6014930 () Bool)

(assert (=> b!4983397 m!6014930))

(declare-fun m!6014932 () Bool)

(assert (=> b!4983397 m!6014932))

(assert (=> b!4983397 m!6014912))

(declare-fun m!6014934 () Bool)

(assert (=> b!4983397 m!6014934))

(assert (=> b!4983397 m!6014928))

(declare-fun m!6014936 () Bool)

(assert (=> b!4983397 m!6014936))

(assert (=> b!4983397 m!6014542))

(assert (=> b!4983397 m!6014922))

(assert (=> b!4983397 m!6014544))

(assert (=> b!4983397 m!6014912))

(declare-fun m!6014938 () Bool)

(assert (=> b!4983397 m!6014938))

(declare-fun m!6014940 () Bool)

(assert (=> b!4983397 m!6014940))

(declare-fun m!6014942 () Bool)

(assert (=> bm!347681 m!6014942))

(declare-fun m!6014944 () Bool)

(assert (=> b!4983401 m!6014944))

(assert (=> bm!347682 m!6014938))

(declare-fun m!6014946 () Bool)

(assert (=> bm!347683 m!6014946))

(declare-fun m!6014948 () Bool)

(assert (=> b!4983402 m!6014948))

(assert (=> bm!347680 m!6014670))

(declare-fun m!6014950 () Bool)

(assert (=> b!4983405 m!6014950))

(assert (=> b!4983405 m!6014542))

(assert (=> bm!347684 m!6014932))

(declare-fun m!6014952 () Bool)

(assert (=> bm!347685 m!6014952))

(declare-fun m!6014954 () Bool)

(assert (=> bm!347686 m!6014954))

(assert (=> b!4983093 d!1604888))

(declare-fun d!1604904 () Bool)

(assert (=> d!1604904 (= (isEmpty!31105 (_1!34575 lt!2058830)) ((_ is Nil!57588) (_1!34575 lt!2058830)))))

(assert (=> b!4983093 d!1604904))

(declare-fun d!1604906 () Bool)

(declare-fun lt!2059077 () Int)

(assert (=> d!1604906 (>= lt!2059077 0)))

(declare-fun e!3114606 () Int)

(assert (=> d!1604906 (= lt!2059077 e!3114606)))

(declare-fun c!850414 () Bool)

(assert (=> d!1604906 (= c!850414 ((_ is Nil!57588) Nil!57588))))

(assert (=> d!1604906 (= (size!38221 Nil!57588) lt!2059077)))

(declare-fun b!4983415 () Bool)

(assert (=> b!4983415 (= e!3114606 0)))

(declare-fun b!4983416 () Bool)

(assert (=> b!4983416 (= e!3114606 (+ 1 (size!38221 (t!369860 Nil!57588))))))

(assert (= (and d!1604906 c!850414) b!4983415))

(assert (= (and d!1604906 (not c!850414)) b!4983416))

(declare-fun m!6014956 () Bool)

(assert (=> b!4983416 m!6014956))

(assert (=> b!4983093 d!1604906))

(declare-fun d!1604908 () Bool)

(declare-fun e!3114609 () Bool)

(assert (=> d!1604908 e!3114609))

(declare-fun res!2127308 () Bool)

(assert (=> d!1604908 (=> (not res!2127308) (not e!3114609))))

(assert (=> d!1604908 (= res!2127308 (semiInverseModEq!3751 (toChars!11310 (transformation!8458 rule!200)) (toValue!11451 (transformation!8458 rule!200))))))

(declare-fun Unit!148681 () Unit!148672)

(assert (=> d!1604908 (= (lemmaInv!1381 (transformation!8458 rule!200)) Unit!148681)))

(declare-fun b!4983419 () Bool)

(assert (=> b!4983419 (= e!3114609 (equivClasses!3573 (toChars!11310 (transformation!8458 rule!200)) (toValue!11451 (transformation!8458 rule!200))))))

(assert (= (and d!1604908 res!2127308) b!4983419))

(assert (=> d!1604908 m!6014552))

(assert (=> b!4983419 m!6014672))

(assert (=> b!4983093 d!1604908))

(declare-fun d!1604910 () Bool)

(declare-fun e!3114612 () Bool)

(assert (=> d!1604910 e!3114612))

(declare-fun res!2127311 () Bool)

(assert (=> d!1604910 (=> res!2127311 e!3114612)))

(assert (=> d!1604910 (= res!2127311 (isEmpty!31105 (_1!34575 (findLongestMatchInner!1902 (regex!8458 rule!200) Nil!57588 (size!38221 Nil!57588) lt!2058833 lt!2058833 (size!38221 lt!2058833)))))))

(declare-fun lt!2059080 () Unit!148672)

(declare-fun choose!36823 (Regex!13691 List!57712) Unit!148672)

(assert (=> d!1604910 (= lt!2059080 (choose!36823 (regex!8458 rule!200) lt!2058833))))

(assert (=> d!1604910 (validRegex!5992 (regex!8458 rule!200))))

(assert (=> d!1604910 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1863 (regex!8458 rule!200) lt!2058833) lt!2059080)))

(declare-fun b!4983422 () Bool)

(assert (=> b!4983422 (= e!3114612 (matchR!6685 (regex!8458 rule!200) (_1!34575 (findLongestMatchInner!1902 (regex!8458 rule!200) Nil!57588 (size!38221 Nil!57588) lt!2058833 lt!2058833 (size!38221 lt!2058833)))))))

(assert (= (and d!1604910 (not res!2127311)) b!4983422))

(assert (=> d!1604910 m!6014668))

(declare-fun m!6014958 () Bool)

(assert (=> d!1604910 m!6014958))

(assert (=> d!1604910 m!6014542))

(assert (=> d!1604910 m!6014542))

(assert (=> d!1604910 m!6014544))

(assert (=> d!1604910 m!6014546))

(assert (=> d!1604910 m!6014778))

(assert (=> d!1604910 m!6014544))

(assert (=> b!4983422 m!6014542))

(assert (=> b!4983422 m!6014544))

(assert (=> b!4983422 m!6014542))

(assert (=> b!4983422 m!6014544))

(assert (=> b!4983422 m!6014546))

(assert (=> b!4983422 m!6014748))

(assert (=> b!4983093 d!1604910))

(declare-fun bs!1184437 () Bool)

(declare-fun d!1604912 () Bool)

(assert (= bs!1184437 (and d!1604912 b!4983101)))

(declare-fun lambda!247904 () Int)

(assert (=> bs!1184437 (= lambda!247904 lambda!247892)))

(assert (=> d!1604912 true))

(assert (=> d!1604912 (< (dynLambda!23375 order!26521 (toChars!11310 (transformation!8458 rule!200))) (dynLambda!23374 order!26519 lambda!247904))))

(assert (=> d!1604912 true))

(assert (=> d!1604912 (< (dynLambda!23373 order!26517 (toValue!11451 (transformation!8458 rule!200))) (dynLambda!23374 order!26519 lambda!247904))))

(assert (=> d!1604912 (= (semiInverseModEq!3751 (toChars!11310 (transformation!8458 rule!200)) (toValue!11451 (transformation!8458 rule!200))) (Forall!1808 lambda!247904))))

(declare-fun bs!1184438 () Bool)

(assert (= bs!1184438 d!1604912))

(declare-fun m!6014960 () Bool)

(assert (=> bs!1184438 m!6014960))

(assert (=> b!4983093 d!1604912))

(declare-fun d!1604914 () Bool)

(declare-fun lt!2059081 () Int)

(assert (=> d!1604914 (>= lt!2059081 0)))

(declare-fun e!3114613 () Int)

(assert (=> d!1604914 (= lt!2059081 e!3114613)))

(declare-fun c!850415 () Bool)

(assert (=> d!1604914 (= c!850415 ((_ is Nil!57588) lt!2058833))))

(assert (=> d!1604914 (= (size!38221 lt!2058833) lt!2059081)))

(declare-fun b!4983427 () Bool)

(assert (=> b!4983427 (= e!3114613 0)))

(declare-fun b!4983428 () Bool)

(assert (=> b!4983428 (= e!3114613 (+ 1 (size!38221 (t!369860 lt!2058833))))))

(assert (= (and d!1604914 c!850415) b!4983427))

(assert (= (and d!1604914 (not c!850415)) b!4983428))

(declare-fun m!6014962 () Bool)

(assert (=> b!4983428 m!6014962))

(assert (=> b!4983093 d!1604914))

(declare-fun d!1604916 () Bool)

(declare-fun lt!2059084 () Bool)

(assert (=> d!1604916 (= lt!2059084 (isEmpty!31105 (list!18468 (_1!34576 lt!2058826))))))

(declare-fun isEmpty!31112 (Conc!15210) Bool)

(assert (=> d!1604916 (= lt!2059084 (isEmpty!31112 (c!850348 (_1!34576 lt!2058826))))))

(assert (=> d!1604916 (= (isEmpty!31106 (_1!34576 lt!2058826)) lt!2059084)))

(declare-fun bs!1184439 () Bool)

(assert (= bs!1184439 d!1604916))

(assert (=> bs!1184439 m!6014582))

(assert (=> bs!1184439 m!6014582))

(declare-fun m!6014964 () Bool)

(assert (=> bs!1184439 m!6014964))

(declare-fun m!6014966 () Bool)

(assert (=> bs!1184439 m!6014966))

(assert (=> b!4983094 d!1604916))

(declare-fun d!1604918 () Bool)

(declare-fun lt!2059087 () tuple2!62546)

(assert (=> d!1604918 (= (tuple2!62545 (list!18468 (_1!34576 lt!2059087)) (list!18468 (_2!34576 lt!2059087))) (findLongestMatch!1718 (regex!8458 rule!200) (list!18468 input!1580)))))

(declare-fun choose!36824 (Regex!13691 BalanceConc!29850 BalanceConc!29850) tuple2!62546)

(assert (=> d!1604918 (= lt!2059087 (choose!36824 (regex!8458 rule!200) input!1580 totalInput!520))))

(assert (=> d!1604918 (validRegex!5992 (regex!8458 rule!200))))

(assert (=> d!1604918 (= (findLongestMatchWithZipperSequenceV2!221 (regex!8458 rule!200) input!1580 totalInput!520) lt!2059087)))

(declare-fun bs!1184440 () Bool)

(assert (= bs!1184440 d!1604918))

(assert (=> bs!1184440 m!6014580))

(declare-fun m!6014968 () Bool)

(assert (=> bs!1184440 m!6014968))

(assert (=> bs!1184440 m!6014580))

(declare-fun m!6014970 () Bool)

(assert (=> bs!1184440 m!6014970))

(assert (=> bs!1184440 m!6014668))

(declare-fun m!6014972 () Bool)

(assert (=> bs!1184440 m!6014972))

(declare-fun m!6014974 () Bool)

(assert (=> bs!1184440 m!6014974))

(assert (=> b!4983094 d!1604918))

(declare-fun b!4983457 () Bool)

(declare-fun e!3114630 () Bool)

(declare-fun lt!2059090 () Bool)

(declare-fun call!347695 () Bool)

(assert (=> b!4983457 (= e!3114630 (= lt!2059090 call!347695))))

(declare-fun b!4983458 () Bool)

(declare-fun res!2127331 () Bool)

(declare-fun e!3114628 () Bool)

(assert (=> b!4983458 (=> res!2127331 e!3114628)))

(declare-fun e!3114631 () Bool)

(assert (=> b!4983458 (= res!2127331 e!3114631)))

(declare-fun res!2127332 () Bool)

(assert (=> b!4983458 (=> (not res!2127332) (not e!3114631))))

(assert (=> b!4983458 (= res!2127332 lt!2059090)))

(declare-fun b!4983459 () Bool)

(declare-fun res!2127328 () Bool)

(assert (=> b!4983459 (=> (not res!2127328) (not e!3114631))))

(assert (=> b!4983459 (= res!2127328 (isEmpty!31105 (tail!9825 (_1!34575 lt!2058830))))))

(declare-fun b!4983461 () Bool)

(declare-fun e!3114633 () Bool)

(declare-fun e!3114634 () Bool)

(assert (=> b!4983461 (= e!3114633 e!3114634)))

(declare-fun res!2127329 () Bool)

(assert (=> b!4983461 (=> res!2127329 e!3114634)))

(assert (=> b!4983461 (= res!2127329 call!347695)))

(declare-fun b!4983462 () Bool)

(assert (=> b!4983462 (= e!3114631 (= (head!10692 (_1!34575 lt!2058830)) (c!850347 (regex!8458 rule!200))))))

(declare-fun b!4983463 () Bool)

(assert (=> b!4983463 (= e!3114628 e!3114633)))

(declare-fun res!2127333 () Bool)

(assert (=> b!4983463 (=> (not res!2127333) (not e!3114633))))

(assert (=> b!4983463 (= res!2127333 (not lt!2059090))))

(declare-fun b!4983464 () Bool)

(declare-fun res!2127335 () Bool)

(assert (=> b!4983464 (=> res!2127335 e!3114628)))

(assert (=> b!4983464 (= res!2127335 (not ((_ is ElementMatch!13691) (regex!8458 rule!200))))))

(declare-fun e!3114632 () Bool)

(assert (=> b!4983464 (= e!3114632 e!3114628)))

(declare-fun b!4983465 () Bool)

(assert (=> b!4983465 (= e!3114632 (not lt!2059090))))

(declare-fun b!4983466 () Bool)

(declare-fun e!3114629 () Bool)

(assert (=> b!4983466 (= e!3114629 (matchR!6685 (derivativeStep!3943 (regex!8458 rule!200) (head!10692 (_1!34575 lt!2058830))) (tail!9825 (_1!34575 lt!2058830))))))

(declare-fun d!1604920 () Bool)

(assert (=> d!1604920 e!3114630))

(declare-fun c!850422 () Bool)

(assert (=> d!1604920 (= c!850422 ((_ is EmptyExpr!13691) (regex!8458 rule!200)))))

(assert (=> d!1604920 (= lt!2059090 e!3114629)))

(declare-fun c!850423 () Bool)

(assert (=> d!1604920 (= c!850423 (isEmpty!31105 (_1!34575 lt!2058830)))))

(assert (=> d!1604920 (validRegex!5992 (regex!8458 rule!200))))

(assert (=> d!1604920 (= (matchR!6685 (regex!8458 rule!200) (_1!34575 lt!2058830)) lt!2059090)))

(declare-fun b!4983460 () Bool)

(assert (=> b!4983460 (= e!3114629 (nullable!4643 (regex!8458 rule!200)))))

(declare-fun b!4983467 () Bool)

(declare-fun res!2127330 () Bool)

(assert (=> b!4983467 (=> res!2127330 e!3114634)))

(assert (=> b!4983467 (= res!2127330 (not (isEmpty!31105 (tail!9825 (_1!34575 lt!2058830)))))))

(declare-fun b!4983468 () Bool)

(declare-fun res!2127334 () Bool)

(assert (=> b!4983468 (=> (not res!2127334) (not e!3114631))))

(assert (=> b!4983468 (= res!2127334 (not call!347695))))

(declare-fun b!4983469 () Bool)

(assert (=> b!4983469 (= e!3114634 (not (= (head!10692 (_1!34575 lt!2058830)) (c!850347 (regex!8458 rule!200)))))))

(declare-fun b!4983470 () Bool)

(assert (=> b!4983470 (= e!3114630 e!3114632)))

(declare-fun c!850424 () Bool)

(assert (=> b!4983470 (= c!850424 ((_ is EmptyLang!13691) (regex!8458 rule!200)))))

(declare-fun bm!347690 () Bool)

(assert (=> bm!347690 (= call!347695 (isEmpty!31105 (_1!34575 lt!2058830)))))

(assert (= (and d!1604920 c!850423) b!4983460))

(assert (= (and d!1604920 (not c!850423)) b!4983466))

(assert (= (and d!1604920 c!850422) b!4983457))

(assert (= (and d!1604920 (not c!850422)) b!4983470))

(assert (= (and b!4983470 c!850424) b!4983465))

(assert (= (and b!4983470 (not c!850424)) b!4983464))

(assert (= (and b!4983464 (not res!2127335)) b!4983458))

(assert (= (and b!4983458 res!2127332) b!4983468))

(assert (= (and b!4983468 res!2127334) b!4983459))

(assert (= (and b!4983459 res!2127328) b!4983462))

(assert (= (and b!4983458 (not res!2127331)) b!4983463))

(assert (= (and b!4983463 res!2127333) b!4983461))

(assert (= (and b!4983461 (not res!2127329)) b!4983467))

(assert (= (and b!4983467 (not res!2127330)) b!4983469))

(assert (= (or b!4983457 b!4983461 b!4983468) bm!347690))

(declare-fun m!6014976 () Bool)

(assert (=> b!4983466 m!6014976))

(assert (=> b!4983466 m!6014976))

(declare-fun m!6014978 () Bool)

(assert (=> b!4983466 m!6014978))

(declare-fun m!6014980 () Bool)

(assert (=> b!4983466 m!6014980))

(assert (=> b!4983466 m!6014978))

(assert (=> b!4983466 m!6014980))

(declare-fun m!6014982 () Bool)

(assert (=> b!4983466 m!6014982))

(assert (=> b!4983462 m!6014976))

(assert (=> b!4983460 m!6014670))

(assert (=> b!4983469 m!6014976))

(assert (=> d!1604920 m!6014548))

(assert (=> d!1604920 m!6014668))

(assert (=> bm!347690 m!6014548))

(assert (=> b!4983459 m!6014980))

(assert (=> b!4983459 m!6014980))

(declare-fun m!6014984 () Bool)

(assert (=> b!4983459 m!6014984))

(assert (=> b!4983467 m!6014980))

(assert (=> b!4983467 m!6014980))

(assert (=> b!4983467 m!6014984))

(assert (=> b!4983095 d!1604920))

(declare-fun e!3114639 () Bool)

(declare-fun b!4983479 () Bool)

(declare-fun tp!1396877 () Bool)

(declare-fun tp!1396878 () Bool)

(assert (=> b!4983479 (= e!3114639 (and (inv!75439 (left!42101 (c!850348 totalInput!520))) tp!1396878 (inv!75439 (right!42431 (c!850348 totalInput!520))) tp!1396877))))

(declare-fun b!4983481 () Bool)

(declare-fun e!3114640 () Bool)

(declare-fun tp!1396876 () Bool)

(assert (=> b!4983481 (= e!3114640 tp!1396876)))

(declare-fun b!4983480 () Bool)

(declare-fun inv!75447 (IArray!30481) Bool)

(assert (=> b!4983480 (= e!3114639 (and (inv!75447 (xs!18536 (c!850348 totalInput!520))) e!3114640))))

(assert (=> b!4983091 (= tp!1396835 (and (inv!75439 (c!850348 totalInput!520)) e!3114639))))

(assert (= (and b!4983091 ((_ is Node!15210) (c!850348 totalInput!520))) b!4983479))

(assert (= b!4983480 b!4983481))

(assert (= (and b!4983091 ((_ is Leaf!25264) (c!850348 totalInput!520))) b!4983480))

(declare-fun m!6014986 () Bool)

(assert (=> b!4983479 m!6014986))

(declare-fun m!6014988 () Bool)

(assert (=> b!4983479 m!6014988))

(declare-fun m!6014990 () Bool)

(assert (=> b!4983480 m!6014990))

(assert (=> b!4983091 m!6014534))

(declare-fun b!4983495 () Bool)

(declare-fun e!3114643 () Bool)

(declare-fun tp!1396892 () Bool)

(declare-fun tp!1396889 () Bool)

(assert (=> b!4983495 (= e!3114643 (and tp!1396892 tp!1396889))))

(assert (=> b!4983100 (= tp!1396834 e!3114643)))

(declare-fun b!4983494 () Bool)

(declare-fun tp!1396891 () Bool)

(assert (=> b!4983494 (= e!3114643 tp!1396891)))

(declare-fun b!4983492 () Bool)

(declare-fun tp_is_empty!36387 () Bool)

(assert (=> b!4983492 (= e!3114643 tp_is_empty!36387)))

(declare-fun b!4983493 () Bool)

(declare-fun tp!1396893 () Bool)

(declare-fun tp!1396890 () Bool)

(assert (=> b!4983493 (= e!3114643 (and tp!1396893 tp!1396890))))

(assert (= (and b!4983100 ((_ is ElementMatch!13691) (regex!8458 rule!200))) b!4983492))

(assert (= (and b!4983100 ((_ is Concat!22459) (regex!8458 rule!200))) b!4983493))

(assert (= (and b!4983100 ((_ is Star!13691) (regex!8458 rule!200))) b!4983494))

(assert (= (and b!4983100 ((_ is Union!13691) (regex!8458 rule!200))) b!4983495))

(declare-fun tp!1396895 () Bool)

(declare-fun tp!1396896 () Bool)

(declare-fun e!3114644 () Bool)

(declare-fun b!4983496 () Bool)

(assert (=> b!4983496 (= e!3114644 (and (inv!75439 (left!42101 (c!850348 input!1580))) tp!1396896 (inv!75439 (right!42431 (c!850348 input!1580))) tp!1396895))))

(declare-fun b!4983498 () Bool)

(declare-fun e!3114645 () Bool)

(declare-fun tp!1396894 () Bool)

(assert (=> b!4983498 (= e!3114645 tp!1396894)))

(declare-fun b!4983497 () Bool)

(assert (=> b!4983497 (= e!3114644 (and (inv!75447 (xs!18536 (c!850348 input!1580))) e!3114645))))

(assert (=> b!4983090 (= tp!1396838 (and (inv!75439 (c!850348 input!1580)) e!3114644))))

(assert (= (and b!4983090 ((_ is Node!15210) (c!850348 input!1580))) b!4983496))

(assert (= b!4983497 b!4983498))

(assert (= (and b!4983090 ((_ is Leaf!25264) (c!850348 input!1580))) b!4983497))

(declare-fun m!6014992 () Bool)

(assert (=> b!4983496 m!6014992))

(declare-fun m!6014994 () Bool)

(assert (=> b!4983496 m!6014994))

(declare-fun m!6014996 () Bool)

(assert (=> b!4983497 m!6014996))

(assert (=> b!4983090 m!6014554))

(declare-fun b_lambda!198017 () Bool)

(assert (= b_lambda!197983 (or (and b!4983104 b_free!133131) b_lambda!198017)))

(declare-fun b_lambda!198019 () Bool)

(assert (= b_lambda!197991 (or b!4983101 b_lambda!198019)))

(declare-fun bs!1184441 () Bool)

(declare-fun d!1604922 () Bool)

(assert (= bs!1184441 (and d!1604922 b!4983101)))

(declare-fun dynLambda!23383 (Int TokenValue!8768) BalanceConc!29850)

(assert (=> bs!1184441 (= (dynLambda!23381 lambda!247892 (_1!34576 lt!2058826)) (= (list!18468 (dynLambda!23383 (toChars!11310 (transformation!8458 rule!200)) (dynLambda!23379 (toValue!11451 (transformation!8458 rule!200)) (_1!34576 lt!2058826)))) (list!18468 (_1!34576 lt!2058826))))))

(declare-fun b_lambda!198029 () Bool)

(assert (=> (not b_lambda!198029) (not bs!1184441)))

(declare-fun t!369875 () Bool)

(declare-fun tb!261659 () Bool)

(assert (=> (and b!4983104 (= (toChars!11310 (transformation!8458 rule!200)) (toChars!11310 (transformation!8458 rule!200))) t!369875) tb!261659))

(declare-fun b!4983503 () Bool)

(declare-fun e!3114648 () Bool)

(declare-fun tp!1396899 () Bool)

(assert (=> b!4983503 (= e!3114648 (and (inv!75439 (c!850348 (dynLambda!23383 (toChars!11310 (transformation!8458 rule!200)) (dynLambda!23379 (toValue!11451 (transformation!8458 rule!200)) (_1!34576 lt!2058826))))) tp!1396899))))

(declare-fun result!326996 () Bool)

(assert (=> tb!261659 (= result!326996 (and (inv!75440 (dynLambda!23383 (toChars!11310 (transformation!8458 rule!200)) (dynLambda!23379 (toValue!11451 (transformation!8458 rule!200)) (_1!34576 lt!2058826)))) e!3114648))))

(assert (= tb!261659 b!4983503))

(declare-fun m!6014998 () Bool)

(assert (=> b!4983503 m!6014998))

(declare-fun m!6015000 () Bool)

(assert (=> tb!261659 m!6015000))

(assert (=> bs!1184441 t!369875))

(declare-fun b_and!349723 () Bool)

(assert (= b_and!349697 (and (=> t!369875 result!326996) b_and!349723)))

(declare-fun b_lambda!198031 () Bool)

(assert (=> (not b_lambda!198031) (not bs!1184441)))

(assert (=> bs!1184441 t!369869))

(declare-fun b_and!349725 () Bool)

(assert (= b_and!349713 (and (=> t!369869 result!326980) b_and!349725)))

(assert (=> bs!1184441 m!6014582))

(declare-fun m!6015002 () Bool)

(assert (=> bs!1184441 m!6015002))

(declare-fun m!6015004 () Bool)

(assert (=> bs!1184441 m!6015004))

(assert (=> bs!1184441 m!6014650))

(assert (=> bs!1184441 m!6014650))

(assert (=> bs!1184441 m!6015002))

(assert (=> d!1604876 d!1604922))

(declare-fun b_lambda!198021 () Bool)

(assert (= b_lambda!197987 (or (and b!4983104 b_free!133131) b_lambda!198021)))

(declare-fun b_lambda!198023 () Bool)

(assert (= b_lambda!197993 (or b!4983101 b_lambda!198023)))

(declare-fun bs!1184442 () Bool)

(declare-fun d!1604924 () Bool)

(assert (= bs!1184442 (and d!1604924 b!4983101)))

(assert (=> bs!1184442 (= (dynLambda!23381 lambda!247892 lt!2058821) (= (list!18468 (dynLambda!23383 (toChars!11310 (transformation!8458 rule!200)) (dynLambda!23379 (toValue!11451 (transformation!8458 rule!200)) lt!2058821))) (list!18468 lt!2058821)))))

(declare-fun b_lambda!198033 () Bool)

(assert (=> (not b_lambda!198033) (not bs!1184442)))

(declare-fun t!369877 () Bool)

(declare-fun tb!261661 () Bool)

(assert (=> (and b!4983104 (= (toChars!11310 (transformation!8458 rule!200)) (toChars!11310 (transformation!8458 rule!200))) t!369877) tb!261661))

(declare-fun tp!1396900 () Bool)

(declare-fun b!4983504 () Bool)

(declare-fun e!3114649 () Bool)

(assert (=> b!4983504 (= e!3114649 (and (inv!75439 (c!850348 (dynLambda!23383 (toChars!11310 (transformation!8458 rule!200)) (dynLambda!23379 (toValue!11451 (transformation!8458 rule!200)) lt!2058821)))) tp!1396900))))

(declare-fun result!327000 () Bool)

(assert (=> tb!261661 (= result!327000 (and (inv!75440 (dynLambda!23383 (toChars!11310 (transformation!8458 rule!200)) (dynLambda!23379 (toValue!11451 (transformation!8458 rule!200)) lt!2058821))) e!3114649))))

(assert (= tb!261661 b!4983504))

(declare-fun m!6015006 () Bool)

(assert (=> b!4983504 m!6015006))

(declare-fun m!6015008 () Bool)

(assert (=> tb!261661 m!6015008))

(assert (=> bs!1184442 t!369877))

(declare-fun b_and!349727 () Bool)

(assert (= b_and!349723 (and (=> t!369877 result!327000) b_and!349727)))

(declare-fun b_lambda!198035 () Bool)

(assert (=> (not b_lambda!198035) (not bs!1184442)))

(assert (=> bs!1184442 t!369865))

(declare-fun b_and!349729 () Bool)

(assert (= b_and!349725 (and (=> t!369865 result!326974) b_and!349729)))

(assert (=> bs!1184442 m!6014556))

(declare-fun m!6015010 () Bool)

(assert (=> bs!1184442 m!6015010))

(declare-fun m!6015012 () Bool)

(assert (=> bs!1184442 m!6015012))

(assert (=> bs!1184442 m!6014608))

(assert (=> bs!1184442 m!6014608))

(assert (=> bs!1184442 m!6015010))

(assert (=> d!1604882 d!1604924))

(declare-fun b_lambda!198025 () Bool)

(assert (= b_lambda!197975 (or (and b!4983104 b_free!133131) b_lambda!198025)))

(declare-fun b_lambda!198027 () Bool)

(assert (= b_lambda!197995 (or (and b!4983104 b_free!133131) b_lambda!198027)))

(check-sat (not b!4983159) (not d!1604836) (not b!4983416) (not b!4983401) (not d!1604848) (not b!4983190) (not b!4983419) (not b!4983405) (not b!4983480) (not b!4983466) (not bm!347683) (not b_lambda!198027) (not b!4983460) (not b_lambda!198035) (not b!4983479) (not tb!261659) (not b!4983200) (not b_lambda!198017) (not d!1604882) (not d!1604842) (not b!4983493) (not d!1604910) (not b!4983497) tp_is_empty!36387 (not b_lambda!198025) (not d!1604834) (not b!4983494) (not bs!1184441) (not b_lambda!198019) (not b_next!133923) (not d!1604920) (not d!1604888) (not bm!347687) (not b!4983188) (not d!1604840) (not b_lambda!198031) (not d!1604846) (not d!1604832) b_and!349729 (not bm!347680) (not b!4983283) (not d!1604824) (not d!1604790) (not b_lambda!198033) (not b!4983467) (not bm!347685) (not d!1604908) (not b!4983402) (not b!4983459) (not d!1604878) (not b!4983278) (not bm!347682) (not b!4983279) (not d!1604856) (not b_lambda!198023) (not d!1604918) (not b!4983462) (not b_next!133921) (not b!4983481) (not bm!347690) (not d!1604880) (not b!4983503) (not b!4983280) (not b!4983276) (not b!4983397) (not tb!261653) (not tb!261661) (not d!1604876) (not d!1604874) (not bm!347686) (not b!4983282) (not b!4983275) (not b!4983428) (not b!4983277) (not b!4983202) (not b_lambda!198021) (not b!4983422) (not bs!1184442) (not bm!347681) (not b!4983163) (not d!1604916) (not d!1604872) (not b!4983495) (not b!4983504) (not b!4983469) b_and!349727 (not d!1604854) (not b!4983091) (not d!1604912) (not b_lambda!198029) (not b!4983154) (not tb!261649) (not b!4983496) (not b!4983498) (not b!4983090) (not bm!347684) (not d!1604886))
(check-sat b_and!349727 b_and!349729 (not b_next!133923) (not b_next!133921))
