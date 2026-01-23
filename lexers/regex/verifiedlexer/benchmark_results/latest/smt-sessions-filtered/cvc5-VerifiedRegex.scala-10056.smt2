; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!526500 () Bool)

(assert start!526500)

(declare-fun b!4984545 () Bool)

(declare-fun b_free!133151 () Bool)

(declare-fun b_next!133941 () Bool)

(assert (=> b!4984545 (= b_free!133151 (not b_next!133941))))

(declare-fun tp!1397096 () Bool)

(declare-fun b_and!349811 () Bool)

(assert (=> b!4984545 (= tp!1397096 b_and!349811)))

(declare-fun b_free!133153 () Bool)

(declare-fun b_next!133943 () Bool)

(assert (=> b!4984545 (= b_free!133153 (not b_next!133943))))

(declare-fun tp!1397097 () Bool)

(declare-fun b_and!349813 () Bool)

(assert (=> b!4984545 (= tp!1397097 b_and!349813)))

(declare-fun b!4984553 () Bool)

(declare-fun e!3115291 () Bool)

(assert (=> b!4984553 (= e!3115291 true)))

(declare-fun b!4984552 () Bool)

(declare-fun e!3115290 () Bool)

(assert (=> b!4984552 (= e!3115290 e!3115291)))

(declare-fun b!4984541 () Bool)

(assert (=> b!4984541 e!3115290))

(assert (= b!4984552 b!4984553))

(assert (= b!4984541 b!4984552))

(declare-fun order!26559 () Int)

(declare-fun order!26561 () Int)

(declare-fun lambda!247963 () Int)

(declare-datatypes ((C!27642 0))(
  ( (C!27643 (val!23187 Int)) )
))
(declare-datatypes ((List!57722 0))(
  ( (Nil!57598) (Cons!57598 (h!64046 C!27642) (t!369918 List!57722)) )
))
(declare-datatypes ((IArray!30491 0))(
  ( (IArray!30492 (innerList!15303 List!57722)) )
))
(declare-datatypes ((List!57723 0))(
  ( (Nil!57599) (Cons!57599 (h!64047 (_ BitVec 16)) (t!369919 List!57723)) )
))
(declare-datatypes ((Regex!13696 0))(
  ( (ElementMatch!13696 (c!850590 C!27642)) (Concat!22469 (regOne!27904 Regex!13696) (regTwo!27904 Regex!13696)) (EmptyExpr!13696) (Star!13696 (reg!14025 Regex!13696)) (EmptyLang!13696) (Union!13696 (regOne!27905 Regex!13696) (regTwo!27905 Regex!13696)) )
))
(declare-datatypes ((Conc!15215 0))(
  ( (Node!15215 (left!42119 Conc!15215) (right!42449 Conc!15215) (csize!30660 Int) (cheight!15426 Int)) (Leaf!25272 (xs!18541 IArray!30491) (csize!30661 Int)) (Empty!15215) )
))
(declare-datatypes ((BalanceConc!29860 0))(
  ( (BalanceConc!29861 (c!850591 Conc!15215)) )
))
(declare-datatypes ((TokenValue!8773 0))(
  ( (FloatLiteralValue!17546 (text!61856 List!57723)) (TokenValueExt!8772 (__x!34839 Int)) (Broken!43865 (value!270591 List!57723)) (Object!8896) (End!8773) (Def!8773) (Underscore!8773) (Match!8773) (Else!8773) (Error!8773) (Case!8773) (If!8773) (Extends!8773) (Abstract!8773) (Class!8773) (Val!8773) (DelimiterValue!17546 (del!8833 List!57723)) (KeywordValue!8779 (value!270592 List!57723)) (CommentValue!17546 (value!270593 List!57723)) (WhitespaceValue!17546 (value!270594 List!57723)) (IndentationValue!8773 (value!270595 List!57723)) (String!65740) (Int32!8773) (Broken!43866 (value!270596 List!57723)) (Boolean!8774) (Unit!148710) (OperatorValue!8776 (op!8833 List!57723)) (IdentifierValue!17546 (value!270597 List!57723)) (IdentifierValue!17547 (value!270598 List!57723)) (WhitespaceValue!17547 (value!270599 List!57723)) (True!17546) (False!17546) (Broken!43867 (value!270600 List!57723)) (Broken!43868 (value!270601 List!57723)) (True!17547) (RightBrace!8773) (RightBracket!8773) (Colon!8773) (Null!8773) (Comma!8773) (LeftBracket!8773) (False!17547) (LeftBrace!8773) (ImaginaryLiteralValue!8773 (text!61857 List!57723)) (StringLiteralValue!26319 (value!270602 List!57723)) (EOFValue!8773 (value!270603 List!57723)) (IdentValue!8773 (value!270604 List!57723)) (DelimiterValue!17547 (value!270605 List!57723)) (DedentValue!8773 (value!270606 List!57723)) (NewLineValue!8773 (value!270607 List!57723)) (IntegerValue!26319 (value!270608 (_ BitVec 32)) (text!61858 List!57723)) (IntegerValue!26320 (value!270609 Int) (text!61859 List!57723)) (Times!8773) (Or!8773) (Equal!8773) (Minus!8773) (Broken!43869 (value!270610 List!57723)) (And!8773) (Div!8773) (LessEqual!8773) (Mod!8773) (Concat!22470) (Not!8773) (Plus!8773) (SpaceValue!8773 (value!270611 List!57723)) (IntegerValue!26321 (value!270612 Int) (text!61860 List!57723)) (StringLiteralValue!26320 (text!61861 List!57723)) (FloatLiteralValue!17547 (text!61862 List!57723)) (BytesLiteralValue!8773 (value!270613 List!57723)) (CommentValue!17547 (value!270614 List!57723)) (StringLiteralValue!26321 (value!270615 List!57723)) (ErrorTokenValue!8773 (msg!8834 List!57723)) )
))
(declare-datatypes ((TokenValueInjection!16854 0))(
  ( (TokenValueInjection!16855 (toValue!11462 Int) (toChars!11321 Int)) )
))
(declare-datatypes ((String!65741 0))(
  ( (String!65742 (value!270616 String)) )
))
(declare-datatypes ((Rule!16726 0))(
  ( (Rule!16727 (regex!8463 Regex!13696) (tag!9327 String!65741) (isSeparator!8463 Bool) (transformation!8463 TokenValueInjection!16854)) )
))
(declare-fun rule!200 () Rule!16726)

(declare-fun dynLambda!23410 (Int Int) Int)

(declare-fun dynLambda!23411 (Int Int) Int)

(assert (=> b!4984553 (< (dynLambda!23410 order!26559 (toValue!11462 (transformation!8463 rule!200))) (dynLambda!23411 order!26561 lambda!247963))))

(declare-fun order!26563 () Int)

(declare-fun dynLambda!23412 (Int Int) Int)

(assert (=> b!4984553 (< (dynLambda!23412 order!26563 (toChars!11321 (transformation!8463 rule!200))) (dynLambda!23411 order!26561 lambda!247963))))

(declare-fun b!4984531 () Bool)

(declare-fun e!3115278 () Bool)

(declare-fun e!3115282 () Bool)

(assert (=> b!4984531 (= e!3115278 e!3115282)))

(declare-fun res!2127807 () Bool)

(assert (=> b!4984531 (=> (not res!2127807) (not e!3115282))))

(declare-fun lt!2059819 () List!57722)

(declare-fun totalInput!520 () BalanceConc!29860)

(declare-fun isSuffix!1262 (List!57722 List!57722) Bool)

(declare-fun list!18479 (BalanceConc!29860) List!57722)

(assert (=> b!4984531 (= res!2127807 (isSuffix!1262 lt!2059819 (list!18479 totalInput!520)))))

(declare-fun input!1580 () BalanceConc!29860)

(assert (=> b!4984531 (= lt!2059819 (list!18479 input!1580))))

(declare-fun res!2127808 () Bool)

(assert (=> start!526500 (=> (not res!2127808) (not e!3115278))))

(declare-datatypes ((LexerInterface!8055 0))(
  ( (LexerInterfaceExt!8052 (__x!34840 Int)) (Lexer!8053) )
))
(declare-fun thiss!16165 () LexerInterface!8055)

(assert (=> start!526500 (= res!2127808 (is-Lexer!8053 thiss!16165))))

(assert (=> start!526500 e!3115278))

(assert (=> start!526500 true))

(declare-fun e!3115277 () Bool)

(assert (=> start!526500 e!3115277))

(declare-fun e!3115280 () Bool)

(declare-fun inv!75479 (BalanceConc!29860) Bool)

(assert (=> start!526500 (and (inv!75479 totalInput!520) e!3115280)))

(declare-fun e!3115275 () Bool)

(assert (=> start!526500 (and (inv!75479 input!1580) e!3115275)))

(declare-fun b!4984532 () Bool)

(declare-fun tp!1397098 () Bool)

(declare-fun inv!75480 (Conc!15215) Bool)

(assert (=> b!4984532 (= e!3115275 (and (inv!75480 (c!850591 input!1580)) tp!1397098))))

(declare-fun b!4984533 () Bool)

(declare-fun res!2127802 () Bool)

(assert (=> b!4984533 (=> (not res!2127802) (not e!3115278))))

(declare-fun ruleValid!3871 (LexerInterface!8055 Rule!16726) Bool)

(assert (=> b!4984533 (= res!2127802 (ruleValid!3871 thiss!16165 rule!200))))

(declare-fun b!4984534 () Bool)

(declare-fun e!3115276 () Bool)

(declare-fun e!3115285 () Bool)

(assert (=> b!4984534 (= e!3115276 (not e!3115285))))

(declare-fun res!2127810 () Bool)

(assert (=> b!4984534 (=> res!2127810 e!3115285)))

(declare-fun semiInverseModEq!3756 (Int Int) Bool)

(assert (=> b!4984534 (= res!2127810 (not (semiInverseModEq!3756 (toChars!11321 (transformation!8463 rule!200)) (toValue!11462 (transformation!8463 rule!200)))))))

(declare-datatypes ((Unit!148711 0))(
  ( (Unit!148712) )
))
(declare-fun lt!2059814 () Unit!148711)

(declare-fun lemmaInv!1386 (TokenValueInjection!16854) Unit!148711)

(assert (=> b!4984534 (= lt!2059814 (lemmaInv!1386 (transformation!8463 rule!200)))))

(declare-fun e!3115274 () Bool)

(assert (=> b!4984534 e!3115274))

(declare-fun res!2127804 () Bool)

(assert (=> b!4984534 (=> res!2127804 e!3115274)))

(declare-datatypes ((tuple2!62584 0))(
  ( (tuple2!62585 (_1!34595 List!57722) (_2!34595 List!57722)) )
))
(declare-fun lt!2059821 () tuple2!62584)

(declare-fun isEmpty!31133 (List!57722) Bool)

(assert (=> b!4984534 (= res!2127804 (isEmpty!31133 (_1!34595 lt!2059821)))))

(declare-fun findLongestMatchInner!1907 (Regex!13696 List!57722 Int List!57722 List!57722 Int) tuple2!62584)

(declare-fun size!38241 (List!57722) Int)

(assert (=> b!4984534 (= lt!2059821 (findLongestMatchInner!1907 (regex!8463 rule!200) Nil!57598 (size!38241 Nil!57598) lt!2059819 lt!2059819 (size!38241 lt!2059819)))))

(declare-fun lt!2059817 () Unit!148711)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1868 (Regex!13696 List!57722) Unit!148711)

(assert (=> b!4984534 (= lt!2059817 (longestMatchIsAcceptedByMatchOrIsEmpty!1868 (regex!8463 rule!200) lt!2059819))))

(declare-fun b!4984535 () Bool)

(declare-fun res!2127801 () Bool)

(declare-fun e!3115283 () Bool)

(assert (=> b!4984535 (=> res!2127801 e!3115283)))

(declare-fun lt!2059825 () BalanceConc!29860)

(declare-fun lt!2059823 () List!57722)

(assert (=> b!4984535 (= res!2127801 (not (= (list!18479 lt!2059825) lt!2059823)))))

(declare-fun b!4984536 () Bool)

(declare-fun tp!1397095 () Bool)

(assert (=> b!4984536 (= e!3115280 (and (inv!75480 (c!850591 totalInput!520)) tp!1397095))))

(declare-fun b!4984537 () Bool)

(declare-fun matchR!6690 (Regex!13696 List!57722) Bool)

(assert (=> b!4984537 (= e!3115274 (matchR!6690 (regex!8463 rule!200) (_1!34595 lt!2059821)))))

(declare-fun b!4984538 () Bool)

(declare-fun e!3115284 () Bool)

(assert (=> b!4984538 (= e!3115283 e!3115284)))

(declare-fun res!2127809 () Bool)

(assert (=> b!4984538 (=> res!2127809 e!3115284)))

(declare-fun lt!2059820 () TokenValue!8773)

(declare-fun apply!13950 (TokenValueInjection!16854 BalanceConc!29860) TokenValue!8773)

(assert (=> b!4984538 (= res!2127809 (not (= (apply!13950 (transformation!8463 rule!200) lt!2059825) lt!2059820)))))

(declare-datatypes ((tuple2!62586 0))(
  ( (tuple2!62587 (_1!34596 BalanceConc!29860) (_2!34596 BalanceConc!29860)) )
))
(declare-fun lt!2059826 () tuple2!62586)

(declare-fun lt!2059822 () Unit!148711)

(declare-fun lemmaEqSameImage!1202 (TokenValueInjection!16854 BalanceConc!29860 BalanceConc!29860) Unit!148711)

(assert (=> b!4984538 (= lt!2059822 (lemmaEqSameImage!1202 (transformation!8463 rule!200) (_1!34596 lt!2059826) lt!2059825))))

(declare-fun e!3115281 () Bool)

(declare-fun b!4984539 () Bool)

(declare-fun tp!1397099 () Bool)

(declare-fun inv!75476 (String!65741) Bool)

(declare-fun inv!75481 (TokenValueInjection!16854) Bool)

(assert (=> b!4984539 (= e!3115277 (and tp!1397099 (inv!75476 (tag!9327 rule!200)) (inv!75481 (transformation!8463 rule!200)) e!3115281))))

(declare-fun b!4984540 () Bool)

(assert (=> b!4984540 (= e!3115285 e!3115283)))

(declare-fun res!2127803 () Bool)

(assert (=> b!4984540 (=> res!2127803 e!3115283)))

(declare-fun lt!2059818 () Bool)

(declare-datatypes ((Token!15382 0))(
  ( (Token!15383 (value!270617 TokenValue!8773) (rule!11725 Rule!16726) (size!38242 Int) (originalCharacters!8722 List!57722)) )
))
(declare-datatypes ((tuple2!62588 0))(
  ( (tuple2!62589 (_1!34597 Token!15382) (_2!34597 List!57722)) )
))
(declare-datatypes ((Option!14545 0))(
  ( (None!14544) (Some!14544 (v!50541 tuple2!62588)) )
))
(declare-fun lt!2059815 () Option!14545)

(declare-fun isDefined!11454 (Option!14545) Bool)

(assert (=> b!4984540 (= res!2127803 (not (= lt!2059818 (isDefined!11454 lt!2059815))))))

(declare-fun lt!2059816 () Int)

(declare-datatypes ((tuple2!62590 0))(
  ( (tuple2!62591 (_1!34598 Token!15382) (_2!34598 BalanceConc!29860)) )
))
(declare-datatypes ((Option!14546 0))(
  ( (None!14545) (Some!14545 (v!50542 tuple2!62590)) )
))
(declare-fun isDefined!11455 (Option!14546) Bool)

(assert (=> b!4984540 (= lt!2059818 (isDefined!11455 (Some!14545 (tuple2!62591 (Token!15383 lt!2059820 rule!200 lt!2059816 lt!2059823) (_2!34596 lt!2059826)))))))

(declare-fun maxPrefixOneRule!3679 (LexerInterface!8055 Rule!16726 List!57722) Option!14545)

(assert (=> b!4984540 (= lt!2059815 (maxPrefixOneRule!3679 thiss!16165 rule!200 lt!2059819))))

(declare-fun size!38243 (BalanceConc!29860) Int)

(assert (=> b!4984540 (= lt!2059816 (size!38243 (_1!34596 lt!2059826)))))

(assert (=> b!4984540 (= lt!2059820 (apply!13950 (transformation!8463 rule!200) (_1!34596 lt!2059826)))))

(declare-fun lt!2059824 () Unit!148711)

(declare-fun ForallOf!1273 (Int BalanceConc!29860) Unit!148711)

(assert (=> b!4984540 (= lt!2059824 (ForallOf!1273 lambda!247963 lt!2059825))))

(declare-fun seqFromList!6084 (List!57722) BalanceConc!29860)

(assert (=> b!4984540 (= lt!2059825 (seqFromList!6084 lt!2059823))))

(assert (=> b!4984540 (= lt!2059823 (list!18479 (_1!34596 lt!2059826)))))

(declare-fun lt!2059813 () Unit!148711)

(assert (=> b!4984540 (= lt!2059813 (ForallOf!1273 lambda!247963 (_1!34596 lt!2059826)))))

(declare-fun res!2127800 () Bool)

(assert (=> b!4984541 (=> res!2127800 e!3115285)))

(declare-fun Forall!1813 (Int) Bool)

(assert (=> b!4984541 (= res!2127800 (not (Forall!1813 lambda!247963)))))

(declare-fun b!4984542 () Bool)

(assert (=> b!4984542 (= e!3115282 e!3115276)))

(declare-fun res!2127805 () Bool)

(assert (=> b!4984542 (=> (not res!2127805) (not e!3115276))))

(declare-fun isEmpty!31134 (BalanceConc!29860) Bool)

(assert (=> b!4984542 (= res!2127805 (not (isEmpty!31134 (_1!34596 lt!2059826))))))

(declare-fun findLongestMatchWithZipperSequenceV2!226 (Regex!13696 BalanceConc!29860 BalanceConc!29860) tuple2!62586)

(assert (=> b!4984542 (= lt!2059826 (findLongestMatchWithZipperSequenceV2!226 (regex!8463 rule!200) input!1580 totalInput!520))))

(declare-fun b!4984543 () Bool)

(declare-fun res!2127806 () Bool)

(assert (=> b!4984543 (=> res!2127806 e!3115283)))

(assert (=> b!4984543 (= res!2127806 (not lt!2059818))))

(declare-fun b!4984544 () Bool)

(declare-fun lt!2059827 () tuple2!62588)

(assert (=> b!4984544 (= e!3115284 (or (not (= (value!270617 (_1!34597 lt!2059827)) lt!2059820)) (not (= (rule!11725 (_1!34597 lt!2059827)) rule!200)) (not (= (size!38242 (_1!34597 lt!2059827)) lt!2059816)) (= (originalCharacters!8722 (_1!34597 lt!2059827)) lt!2059823)))))

(declare-fun get!20031 (Option!14545) tuple2!62588)

(assert (=> b!4984544 (= lt!2059827 (get!20031 lt!2059815))))

(assert (=> b!4984545 (= e!3115281 (and tp!1397096 tp!1397097))))

(assert (= (and start!526500 res!2127808) b!4984533))

(assert (= (and b!4984533 res!2127802) b!4984531))

(assert (= (and b!4984531 res!2127807) b!4984542))

(assert (= (and b!4984542 res!2127805) b!4984534))

(assert (= (and b!4984534 (not res!2127804)) b!4984537))

(assert (= (and b!4984534 (not res!2127810)) b!4984541))

(assert (= (and b!4984541 (not res!2127800)) b!4984540))

(assert (= (and b!4984540 (not res!2127803)) b!4984543))

(assert (= (and b!4984543 (not res!2127806)) b!4984535))

(assert (= (and b!4984535 (not res!2127801)) b!4984538))

(assert (= (and b!4984538 (not res!2127809)) b!4984544))

(assert (= b!4984539 b!4984545))

(assert (= start!526500 b!4984539))

(assert (= start!526500 b!4984536))

(assert (= start!526500 b!4984532))

(declare-fun m!6016110 () Bool)

(assert (=> start!526500 m!6016110))

(declare-fun m!6016112 () Bool)

(assert (=> start!526500 m!6016112))

(declare-fun m!6016114 () Bool)

(assert (=> b!4984537 m!6016114))

(declare-fun m!6016116 () Bool)

(assert (=> b!4984533 m!6016116))

(declare-fun m!6016118 () Bool)

(assert (=> b!4984536 m!6016118))

(declare-fun m!6016120 () Bool)

(assert (=> b!4984531 m!6016120))

(assert (=> b!4984531 m!6016120))

(declare-fun m!6016122 () Bool)

(assert (=> b!4984531 m!6016122))

(declare-fun m!6016124 () Bool)

(assert (=> b!4984531 m!6016124))

(declare-fun m!6016126 () Bool)

(assert (=> b!4984535 m!6016126))

(declare-fun m!6016128 () Bool)

(assert (=> b!4984534 m!6016128))

(declare-fun m!6016130 () Bool)

(assert (=> b!4984534 m!6016130))

(declare-fun m!6016132 () Bool)

(assert (=> b!4984534 m!6016132))

(declare-fun m!6016134 () Bool)

(assert (=> b!4984534 m!6016134))

(declare-fun m!6016136 () Bool)

(assert (=> b!4984534 m!6016136))

(declare-fun m!6016138 () Bool)

(assert (=> b!4984534 m!6016138))

(assert (=> b!4984534 m!6016132))

(declare-fun m!6016140 () Bool)

(assert (=> b!4984534 m!6016140))

(assert (=> b!4984534 m!6016134))

(declare-fun m!6016142 () Bool)

(assert (=> b!4984544 m!6016142))

(declare-fun m!6016144 () Bool)

(assert (=> b!4984542 m!6016144))

(declare-fun m!6016146 () Bool)

(assert (=> b!4984542 m!6016146))

(declare-fun m!6016148 () Bool)

(assert (=> b!4984541 m!6016148))

(declare-fun m!6016150 () Bool)

(assert (=> b!4984540 m!6016150))

(declare-fun m!6016152 () Bool)

(assert (=> b!4984540 m!6016152))

(declare-fun m!6016154 () Bool)

(assert (=> b!4984540 m!6016154))

(declare-fun m!6016156 () Bool)

(assert (=> b!4984540 m!6016156))

(declare-fun m!6016158 () Bool)

(assert (=> b!4984540 m!6016158))

(declare-fun m!6016160 () Bool)

(assert (=> b!4984540 m!6016160))

(declare-fun m!6016162 () Bool)

(assert (=> b!4984540 m!6016162))

(declare-fun m!6016164 () Bool)

(assert (=> b!4984540 m!6016164))

(declare-fun m!6016166 () Bool)

(assert (=> b!4984540 m!6016166))

(declare-fun m!6016168 () Bool)

(assert (=> b!4984539 m!6016168))

(declare-fun m!6016170 () Bool)

(assert (=> b!4984539 m!6016170))

(declare-fun m!6016172 () Bool)

(assert (=> b!4984532 m!6016172))

(declare-fun m!6016174 () Bool)

(assert (=> b!4984538 m!6016174))

(declare-fun m!6016176 () Bool)

(assert (=> b!4984538 m!6016176))

(push 1)

(assert (not b_next!133941))

(assert (not b!4984541))

(assert (not b_next!133943))

(assert (not b!4984537))

(assert (not b!4984539))

(assert (not b!4984533))

(assert (not start!526500))

(assert (not b!4984535))

(assert (not b!4984542))

(assert (not b!4984532))

(assert (not b!4984534))

(assert (not b!4984536))

(assert b_and!349813)

(assert (not b!4984544))

(assert (not b!4984540))

(assert b_and!349811)

(assert (not b!4984531))

(assert (not b!4984538))

(check-sat)

(pop 1)

(push 1)

(assert b_and!349813)

(assert b_and!349811)

(assert (not b_next!133943))

(assert (not b_next!133941))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1605217 () Bool)

(declare-fun list!18481 (Conc!15215) List!57722)

(assert (=> d!1605217 (= (list!18479 lt!2059825) (list!18481 (c!850591 lt!2059825)))))

(declare-fun bs!1184525 () Bool)

(assert (= bs!1184525 d!1605217))

(declare-fun m!6016246 () Bool)

(assert (=> bs!1184525 m!6016246))

(assert (=> b!4984535 d!1605217))

(declare-fun d!1605219 () Bool)

(declare-fun c!850597 () Bool)

(assert (=> d!1605219 (= c!850597 (is-Node!15215 (c!850591 totalInput!520)))))

(declare-fun e!3115338 () Bool)

(assert (=> d!1605219 (= (inv!75480 (c!850591 totalInput!520)) e!3115338)))

(declare-fun b!4984613 () Bool)

(declare-fun inv!75485 (Conc!15215) Bool)

(assert (=> b!4984613 (= e!3115338 (inv!75485 (c!850591 totalInput!520)))))

(declare-fun b!4984614 () Bool)

(declare-fun e!3115339 () Bool)

(assert (=> b!4984614 (= e!3115338 e!3115339)))

(declare-fun res!2127850 () Bool)

(assert (=> b!4984614 (= res!2127850 (not (is-Leaf!25272 (c!850591 totalInput!520))))))

(assert (=> b!4984614 (=> res!2127850 e!3115339)))

(declare-fun b!4984615 () Bool)

(declare-fun inv!75486 (Conc!15215) Bool)

(assert (=> b!4984615 (= e!3115339 (inv!75486 (c!850591 totalInput!520)))))

(assert (= (and d!1605219 c!850597) b!4984613))

(assert (= (and d!1605219 (not c!850597)) b!4984614))

(assert (= (and b!4984614 (not res!2127850)) b!4984615))

(declare-fun m!6016248 () Bool)

(assert (=> b!4984613 m!6016248))

(declare-fun m!6016250 () Bool)

(assert (=> b!4984615 m!6016250))

(assert (=> b!4984536 d!1605219))

(declare-fun d!1605221 () Bool)

(declare-fun c!850598 () Bool)

(assert (=> d!1605221 (= c!850598 (is-Node!15215 (c!850591 input!1580)))))

(declare-fun e!3115340 () Bool)

(assert (=> d!1605221 (= (inv!75480 (c!850591 input!1580)) e!3115340)))

(declare-fun b!4984616 () Bool)

(assert (=> b!4984616 (= e!3115340 (inv!75485 (c!850591 input!1580)))))

(declare-fun b!4984617 () Bool)

(declare-fun e!3115341 () Bool)

(assert (=> b!4984617 (= e!3115340 e!3115341)))

(declare-fun res!2127851 () Bool)

(assert (=> b!4984617 (= res!2127851 (not (is-Leaf!25272 (c!850591 input!1580))))))

(assert (=> b!4984617 (=> res!2127851 e!3115341)))

(declare-fun b!4984618 () Bool)

(assert (=> b!4984618 (= e!3115341 (inv!75486 (c!850591 input!1580)))))

(assert (= (and d!1605221 c!850598) b!4984616))

(assert (= (and d!1605221 (not c!850598)) b!4984617))

(assert (= (and b!4984617 (not res!2127851)) b!4984618))

(declare-fun m!6016252 () Bool)

(assert (=> b!4984616 m!6016252))

(declare-fun m!6016254 () Bool)

(assert (=> b!4984618 m!6016254))

(assert (=> b!4984532 d!1605221))

(declare-fun d!1605223 () Bool)

(declare-fun res!2127856 () Bool)

(declare-fun e!3115344 () Bool)

(assert (=> d!1605223 (=> (not res!2127856) (not e!3115344))))

(declare-fun validRegex!5997 (Regex!13696) Bool)

(assert (=> d!1605223 (= res!2127856 (validRegex!5997 (regex!8463 rule!200)))))

(assert (=> d!1605223 (= (ruleValid!3871 thiss!16165 rule!200) e!3115344)))

(declare-fun b!4984623 () Bool)

(declare-fun res!2127857 () Bool)

(assert (=> b!4984623 (=> (not res!2127857) (not e!3115344))))

(declare-fun nullable!4648 (Regex!13696) Bool)

(assert (=> b!4984623 (= res!2127857 (not (nullable!4648 (regex!8463 rule!200))))))

(declare-fun b!4984624 () Bool)

(assert (=> b!4984624 (= e!3115344 (not (= (tag!9327 rule!200) (String!65742 ""))))))

(assert (= (and d!1605223 res!2127856) b!4984623))

(assert (= (and b!4984623 res!2127857) b!4984624))

(declare-fun m!6016256 () Bool)

(assert (=> d!1605223 m!6016256))

(declare-fun m!6016258 () Bool)

(assert (=> b!4984623 m!6016258))

(assert (=> b!4984533 d!1605223))

(declare-fun d!1605225 () Bool)

(assert (=> d!1605225 (= (get!20031 lt!2059815) (v!50541 lt!2059815))))

(assert (=> b!4984544 d!1605225))

(declare-fun b!4984671 () Bool)

(declare-fun e!3115374 () tuple2!62584)

(assert (=> b!4984671 (= e!3115374 (tuple2!62585 Nil!57598 Nil!57598))))

(declare-fun b!4984672 () Bool)

(assert (=> b!4984672 (= e!3115374 (tuple2!62585 Nil!57598 lt!2059819))))

(declare-fun bm!347815 () Bool)

(declare-fun call!347822 () Unit!148711)

(declare-fun lemmaIsPrefixRefl!3597 (List!57722 List!57722) Unit!148711)

(assert (=> bm!347815 (= call!347822 (lemmaIsPrefixRefl!3597 lt!2059819 lt!2059819))))

(declare-fun b!4984673 () Bool)

(declare-fun e!3115372 () Bool)

(declare-fun e!3115373 () Bool)

(assert (=> b!4984673 (= e!3115372 e!3115373)))

(declare-fun res!2127877 () Bool)

(assert (=> b!4984673 (=> res!2127877 e!3115373)))

(declare-fun lt!2059962 () tuple2!62584)

(assert (=> b!4984673 (= res!2127877 (isEmpty!31133 (_1!34595 lt!2059962)))))

(declare-fun bm!347816 () Bool)

(declare-fun call!347827 () List!57722)

(declare-fun tail!9830 (List!57722) List!57722)

(assert (=> bm!347816 (= call!347827 (tail!9830 lt!2059819))))

(declare-fun b!4984674 () Bool)

(declare-fun e!3115376 () tuple2!62584)

(declare-fun e!3115369 () tuple2!62584)

(assert (=> b!4984674 (= e!3115376 e!3115369)))

(declare-fun lt!2059961 () tuple2!62584)

(declare-fun call!347823 () tuple2!62584)

(assert (=> b!4984674 (= lt!2059961 call!347823)))

(declare-fun c!850618 () Bool)

(assert (=> b!4984674 (= c!850618 (isEmpty!31133 (_1!34595 lt!2059961)))))

(declare-fun d!1605227 () Bool)

(assert (=> d!1605227 e!3115372))

(declare-fun res!2127876 () Bool)

(assert (=> d!1605227 (=> (not res!2127876) (not e!3115372))))

(declare-fun ++!12560 (List!57722 List!57722) List!57722)

(assert (=> d!1605227 (= res!2127876 (= (++!12560 (_1!34595 lt!2059962) (_2!34595 lt!2059962)) lt!2059819))))

(declare-fun e!3115375 () tuple2!62584)

(assert (=> d!1605227 (= lt!2059962 e!3115375)))

(declare-fun c!850616 () Bool)

(declare-fun lostCause!1157 (Regex!13696) Bool)

(assert (=> d!1605227 (= c!850616 (lostCause!1157 (regex!8463 rule!200)))))

(declare-fun lt!2059952 () Unit!148711)

(declare-fun Unit!148716 () Unit!148711)

(assert (=> d!1605227 (= lt!2059952 Unit!148716)))

(declare-fun getSuffix!3113 (List!57722 List!57722) List!57722)

(assert (=> d!1605227 (= (getSuffix!3113 lt!2059819 Nil!57598) lt!2059819)))

(declare-fun lt!2059939 () Unit!148711)

(declare-fun lt!2059956 () Unit!148711)

(assert (=> d!1605227 (= lt!2059939 lt!2059956)))

(declare-fun lt!2059955 () List!57722)

(assert (=> d!1605227 (= lt!2059819 lt!2059955)))

(declare-fun lemmaSamePrefixThenSameSuffix!2525 (List!57722 List!57722 List!57722 List!57722 List!57722) Unit!148711)

(assert (=> d!1605227 (= lt!2059956 (lemmaSamePrefixThenSameSuffix!2525 Nil!57598 lt!2059819 Nil!57598 lt!2059955 lt!2059819))))

(assert (=> d!1605227 (= lt!2059955 (getSuffix!3113 lt!2059819 Nil!57598))))

(declare-fun lt!2059957 () Unit!148711)

(declare-fun lt!2059965 () Unit!148711)

(assert (=> d!1605227 (= lt!2059957 lt!2059965)))

(declare-fun isPrefix!5273 (List!57722 List!57722) Bool)

(assert (=> d!1605227 (isPrefix!5273 Nil!57598 (++!12560 Nil!57598 lt!2059819))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3371 (List!57722 List!57722) Unit!148711)

(assert (=> d!1605227 (= lt!2059965 (lemmaConcatTwoListThenFirstIsPrefix!3371 Nil!57598 lt!2059819))))

(assert (=> d!1605227 (validRegex!5997 (regex!8463 rule!200))))

(assert (=> d!1605227 (= (findLongestMatchInner!1907 (regex!8463 rule!200) Nil!57598 (size!38241 Nil!57598) lt!2059819 lt!2059819 (size!38241 lt!2059819)) lt!2059962)))

(declare-fun b!4984675 () Bool)

(declare-fun e!3115371 () Unit!148711)

(declare-fun Unit!148717 () Unit!148711)

(assert (=> b!4984675 (= e!3115371 Unit!148717)))

(declare-fun b!4984676 () Bool)

(assert (=> b!4984676 (= e!3115373 (>= (size!38241 (_1!34595 lt!2059962)) (size!38241 Nil!57598)))))

(declare-fun lt!2059944 () List!57722)

(declare-fun call!347825 () Regex!13696)

(declare-fun bm!347817 () Bool)

(assert (=> bm!347817 (= call!347823 (findLongestMatchInner!1907 call!347825 lt!2059944 (+ (size!38241 Nil!57598) 1) call!347827 lt!2059819 (size!38241 lt!2059819)))))

(declare-fun b!4984677 () Bool)

(declare-fun c!850615 () Bool)

(declare-fun call!347821 () Bool)

(assert (=> b!4984677 (= c!850615 call!347821)))

(declare-fun lt!2059953 () Unit!148711)

(declare-fun lt!2059945 () Unit!148711)

(assert (=> b!4984677 (= lt!2059953 lt!2059945)))

(assert (=> b!4984677 (= lt!2059819 Nil!57598)))

(declare-fun call!347824 () Unit!148711)

(assert (=> b!4984677 (= lt!2059945 call!347824)))

(declare-fun lt!2059942 () Unit!148711)

(declare-fun lt!2059941 () Unit!148711)

(assert (=> b!4984677 (= lt!2059942 lt!2059941)))

(declare-fun call!347820 () Bool)

(assert (=> b!4984677 call!347820))

(assert (=> b!4984677 (= lt!2059941 call!347822)))

(declare-fun e!3115370 () tuple2!62584)

(assert (=> b!4984677 (= e!3115370 e!3115374)))

(declare-fun b!4984678 () Bool)

(assert (=> b!4984678 (= e!3115376 call!347823)))

(declare-fun bm!347818 () Bool)

(declare-fun call!347826 () C!27642)

(declare-fun derivativeStep!3948 (Regex!13696 C!27642) Regex!13696)

(assert (=> bm!347818 (= call!347825 (derivativeStep!3948 (regex!8463 rule!200) call!347826))))

(declare-fun b!4984679 () Bool)

(declare-fun Unit!148718 () Unit!148711)

(assert (=> b!4984679 (= e!3115371 Unit!148718)))

(declare-fun lt!2059951 () Unit!148711)

(assert (=> b!4984679 (= lt!2059951 call!347822)))

(assert (=> b!4984679 call!347820))

(declare-fun lt!2059948 () Unit!148711)

(assert (=> b!4984679 (= lt!2059948 lt!2059951)))

(declare-fun lt!2059966 () Unit!148711)

(assert (=> b!4984679 (= lt!2059966 call!347824)))

(assert (=> b!4984679 (= lt!2059819 Nil!57598)))

(declare-fun lt!2059963 () Unit!148711)

(assert (=> b!4984679 (= lt!2059963 lt!2059966)))

(assert (=> b!4984679 false))

(declare-fun b!4984680 () Bool)

(assert (=> b!4984680 (= e!3115375 e!3115370)))

(declare-fun c!850613 () Bool)

(assert (=> b!4984680 (= c!850613 (= (size!38241 Nil!57598) (size!38241 lt!2059819)))))

(declare-fun bm!347819 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1233 (List!57722 List!57722 List!57722) Unit!148711)

(assert (=> bm!347819 (= call!347824 (lemmaIsPrefixSameLengthThenSameList!1233 lt!2059819 Nil!57598 lt!2059819))))

(declare-fun b!4984681 () Bool)

(assert (=> b!4984681 (= e!3115369 lt!2059961)))

(declare-fun b!4984682 () Bool)

(assert (=> b!4984682 (= e!3115375 (tuple2!62585 Nil!57598 lt!2059819))))

(declare-fun bm!347820 () Bool)

(declare-fun head!10697 (List!57722) C!27642)

(assert (=> bm!347820 (= call!347826 (head!10697 lt!2059819))))

(declare-fun bm!347821 () Bool)

(assert (=> bm!347821 (= call!347821 (nullable!4648 (regex!8463 rule!200)))))

(declare-fun bm!347822 () Bool)

(assert (=> bm!347822 (= call!347820 (isPrefix!5273 lt!2059819 lt!2059819))))

(declare-fun b!4984683 () Bool)

(assert (=> b!4984683 (= e!3115369 (tuple2!62585 Nil!57598 lt!2059819))))

(declare-fun b!4984684 () Bool)

(declare-fun c!850617 () Bool)

(assert (=> b!4984684 (= c!850617 call!347821)))

(declare-fun lt!2059954 () Unit!148711)

(declare-fun lt!2059940 () Unit!148711)

(assert (=> b!4984684 (= lt!2059954 lt!2059940)))

(declare-fun lt!2059959 () C!27642)

(declare-fun lt!2059943 () List!57722)

(assert (=> b!4984684 (= (++!12560 (++!12560 Nil!57598 (Cons!57598 lt!2059959 Nil!57598)) lt!2059943) lt!2059819)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1470 (List!57722 C!27642 List!57722 List!57722) Unit!148711)

(assert (=> b!4984684 (= lt!2059940 (lemmaMoveElementToOtherListKeepsConcatEq!1470 Nil!57598 lt!2059959 lt!2059943 lt!2059819))))

(assert (=> b!4984684 (= lt!2059943 (tail!9830 lt!2059819))))

(assert (=> b!4984684 (= lt!2059959 (head!10697 lt!2059819))))

(declare-fun lt!2059950 () Unit!148711)

(declare-fun lt!2059947 () Unit!148711)

(assert (=> b!4984684 (= lt!2059950 lt!2059947)))

(assert (=> b!4984684 (isPrefix!5273 (++!12560 Nil!57598 (Cons!57598 (head!10697 (getSuffix!3113 lt!2059819 Nil!57598)) Nil!57598)) lt!2059819)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!860 (List!57722 List!57722) Unit!148711)

(assert (=> b!4984684 (= lt!2059947 (lemmaAddHeadSuffixToPrefixStillPrefix!860 Nil!57598 lt!2059819))))

(declare-fun lt!2059958 () Unit!148711)

(declare-fun lt!2059964 () Unit!148711)

(assert (=> b!4984684 (= lt!2059958 lt!2059964)))

(assert (=> b!4984684 (= lt!2059964 (lemmaAddHeadSuffixToPrefixStillPrefix!860 Nil!57598 lt!2059819))))

(assert (=> b!4984684 (= lt!2059944 (++!12560 Nil!57598 (Cons!57598 (head!10697 lt!2059819) Nil!57598)))))

(declare-fun lt!2059960 () Unit!148711)

(assert (=> b!4984684 (= lt!2059960 e!3115371)))

(declare-fun c!850614 () Bool)

(assert (=> b!4984684 (= c!850614 (= (size!38241 Nil!57598) (size!38241 lt!2059819)))))

(declare-fun lt!2059949 () Unit!148711)

(declare-fun lt!2059946 () Unit!148711)

(assert (=> b!4984684 (= lt!2059949 lt!2059946)))

(assert (=> b!4984684 (<= (size!38241 Nil!57598) (size!38241 lt!2059819))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!786 (List!57722 List!57722) Unit!148711)

(assert (=> b!4984684 (= lt!2059946 (lemmaIsPrefixThenSmallerEqSize!786 Nil!57598 lt!2059819))))

(assert (=> b!4984684 (= e!3115370 e!3115376)))

(assert (= (and d!1605227 c!850616) b!4984682))

(assert (= (and d!1605227 (not c!850616)) b!4984680))

(assert (= (and b!4984680 c!850613) b!4984677))

(assert (= (and b!4984680 (not c!850613)) b!4984684))

(assert (= (and b!4984677 c!850615) b!4984671))

(assert (= (and b!4984677 (not c!850615)) b!4984672))

(assert (= (and b!4984684 c!850614) b!4984679))

(assert (= (and b!4984684 (not c!850614)) b!4984675))

(assert (= (and b!4984684 c!850617) b!4984674))

(assert (= (and b!4984684 (not c!850617)) b!4984678))

(assert (= (and b!4984674 c!850618) b!4984683))

(assert (= (and b!4984674 (not c!850618)) b!4984681))

(assert (= (or b!4984674 b!4984678) bm!347820))

(assert (= (or b!4984674 b!4984678) bm!347816))

(assert (= (or b!4984674 b!4984678) bm!347818))

(assert (= (or b!4984674 b!4984678) bm!347817))

(assert (= (or b!4984677 b!4984679) bm!347822))

(assert (= (or b!4984677 b!4984679) bm!347819))

(assert (= (or b!4984677 b!4984679) bm!347815))

(assert (= (or b!4984677 b!4984684) bm!347821))

(assert (= (and d!1605227 res!2127876) b!4984673))

(assert (= (and b!4984673 (not res!2127877)) b!4984676))

(declare-fun m!6016260 () Bool)

(assert (=> b!4984684 m!6016260))

(declare-fun m!6016262 () Bool)

(assert (=> b!4984684 m!6016262))

(declare-fun m!6016264 () Bool)

(assert (=> b!4984684 m!6016264))

(declare-fun m!6016266 () Bool)

(assert (=> b!4984684 m!6016266))

(declare-fun m!6016268 () Bool)

(assert (=> b!4984684 m!6016268))

(declare-fun m!6016270 () Bool)

(assert (=> b!4984684 m!6016270))

(assert (=> b!4984684 m!6016264))

(declare-fun m!6016272 () Bool)

(assert (=> b!4984684 m!6016272))

(declare-fun m!6016274 () Bool)

(assert (=> b!4984684 m!6016274))

(declare-fun m!6016276 () Bool)

(assert (=> b!4984684 m!6016276))

(assert (=> b!4984684 m!6016132))

(declare-fun m!6016278 () Bool)

(assert (=> b!4984684 m!6016278))

(declare-fun m!6016280 () Bool)

(assert (=> b!4984684 m!6016280))

(assert (=> b!4984684 m!6016272))

(declare-fun m!6016282 () Bool)

(assert (=> b!4984684 m!6016282))

(assert (=> b!4984684 m!6016134))

(assert (=> b!4984684 m!6016278))

(declare-fun m!6016284 () Bool)

(assert (=> bm!347819 m!6016284))

(declare-fun m!6016286 () Bool)

(assert (=> bm!347818 m!6016286))

(assert (=> bm!347820 m!6016270))

(declare-fun m!6016288 () Bool)

(assert (=> bm!347815 m!6016288))

(declare-fun m!6016290 () Bool)

(assert (=> b!4984676 m!6016290))

(assert (=> b!4984676 m!6016132))

(declare-fun m!6016292 () Bool)

(assert (=> d!1605227 m!6016292))

(declare-fun m!6016294 () Bool)

(assert (=> d!1605227 m!6016294))

(declare-fun m!6016296 () Bool)

(assert (=> d!1605227 m!6016296))

(declare-fun m!6016298 () Bool)

(assert (=> d!1605227 m!6016298))

(assert (=> d!1605227 m!6016292))

(declare-fun m!6016300 () Bool)

(assert (=> d!1605227 m!6016300))

(assert (=> d!1605227 m!6016264))

(declare-fun m!6016302 () Bool)

(assert (=> d!1605227 m!6016302))

(assert (=> d!1605227 m!6016256))

(assert (=> bm!347821 m!6016258))

(declare-fun m!6016304 () Bool)

(assert (=> b!4984673 m!6016304))

(declare-fun m!6016306 () Bool)

(assert (=> bm!347822 m!6016306))

(declare-fun m!6016308 () Bool)

(assert (=> b!4984674 m!6016308))

(assert (=> bm!347817 m!6016134))

(declare-fun m!6016310 () Bool)

(assert (=> bm!347817 m!6016310))

(assert (=> bm!347816 m!6016268))

(assert (=> b!4984534 d!1605227))

(declare-fun d!1605231 () Bool)

(assert (=> d!1605231 (= (isEmpty!31133 (_1!34595 lt!2059821)) (is-Nil!57598 (_1!34595 lt!2059821)))))

(assert (=> b!4984534 d!1605231))

(declare-fun d!1605233 () Bool)

(declare-fun e!3115383 () Bool)

(assert (=> d!1605233 e!3115383))

(declare-fun res!2127887 () Bool)

(assert (=> d!1605233 (=> res!2127887 e!3115383)))

(assert (=> d!1605233 (= res!2127887 (isEmpty!31133 (_1!34595 (findLongestMatchInner!1907 (regex!8463 rule!200) Nil!57598 (size!38241 Nil!57598) lt!2059819 lt!2059819 (size!38241 lt!2059819)))))))

(declare-fun lt!2059974 () Unit!148711)

(declare-fun choose!36840 (Regex!13696 List!57722) Unit!148711)

(assert (=> d!1605233 (= lt!2059974 (choose!36840 (regex!8463 rule!200) lt!2059819))))

(assert (=> d!1605233 (validRegex!5997 (regex!8463 rule!200))))

(assert (=> d!1605233 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1868 (regex!8463 rule!200) lt!2059819) lt!2059974)))

(declare-fun b!4984696 () Bool)

(assert (=> b!4984696 (= e!3115383 (matchR!6690 (regex!8463 rule!200) (_1!34595 (findLongestMatchInner!1907 (regex!8463 rule!200) Nil!57598 (size!38241 Nil!57598) lt!2059819 lt!2059819 (size!38241 lt!2059819)))))))

(assert (= (and d!1605233 (not res!2127887)) b!4984696))

(declare-fun m!6016336 () Bool)

(assert (=> d!1605233 m!6016336))

(assert (=> d!1605233 m!6016132))

(assert (=> d!1605233 m!6016134))

(assert (=> d!1605233 m!6016136))

(assert (=> d!1605233 m!6016256))

(assert (=> d!1605233 m!6016134))

(assert (=> d!1605233 m!6016132))

(declare-fun m!6016342 () Bool)

(assert (=> d!1605233 m!6016342))

(assert (=> b!4984696 m!6016132))

(assert (=> b!4984696 m!6016134))

(assert (=> b!4984696 m!6016132))

(assert (=> b!4984696 m!6016134))

(assert (=> b!4984696 m!6016136))

(declare-fun m!6016346 () Bool)

(assert (=> b!4984696 m!6016346))

(assert (=> b!4984534 d!1605233))

(declare-fun d!1605235 () Bool)

(declare-fun lt!2059977 () Int)

(assert (=> d!1605235 (>= lt!2059977 0)))

(declare-fun e!3115386 () Int)

(assert (=> d!1605235 (= lt!2059977 e!3115386)))

(declare-fun c!850622 () Bool)

(assert (=> d!1605235 (= c!850622 (is-Nil!57598 Nil!57598))))

(assert (=> d!1605235 (= (size!38241 Nil!57598) lt!2059977)))

(declare-fun b!4984701 () Bool)

(assert (=> b!4984701 (= e!3115386 0)))

(declare-fun b!4984702 () Bool)

(assert (=> b!4984702 (= e!3115386 (+ 1 (size!38241 (t!369918 Nil!57598))))))

(assert (= (and d!1605235 c!850622) b!4984701))

(assert (= (and d!1605235 (not c!850622)) b!4984702))

(declare-fun m!6016356 () Bool)

(assert (=> b!4984702 m!6016356))

(assert (=> b!4984534 d!1605235))

(declare-fun d!1605241 () Bool)

(declare-fun e!3115389 () Bool)

(assert (=> d!1605241 e!3115389))

(declare-fun res!2127890 () Bool)

(assert (=> d!1605241 (=> (not res!2127890) (not e!3115389))))

(assert (=> d!1605241 (= res!2127890 (semiInverseModEq!3756 (toChars!11321 (transformation!8463 rule!200)) (toValue!11462 (transformation!8463 rule!200))))))

(declare-fun Unit!148719 () Unit!148711)

(assert (=> d!1605241 (= (lemmaInv!1386 (transformation!8463 rule!200)) Unit!148719)))

(declare-fun b!4984705 () Bool)

(declare-fun equivClasses!3578 (Int Int) Bool)

(assert (=> b!4984705 (= e!3115389 (equivClasses!3578 (toChars!11321 (transformation!8463 rule!200)) (toValue!11462 (transformation!8463 rule!200))))))

(assert (= (and d!1605241 res!2127890) b!4984705))

(assert (=> d!1605241 m!6016140))

(declare-fun m!6016358 () Bool)

(assert (=> b!4984705 m!6016358))

(assert (=> b!4984534 d!1605241))

(declare-fun d!1605243 () Bool)

(declare-fun lt!2059980 () Int)

(assert (=> d!1605243 (>= lt!2059980 0)))

(declare-fun e!3115390 () Int)

(assert (=> d!1605243 (= lt!2059980 e!3115390)))

(declare-fun c!850623 () Bool)

(assert (=> d!1605243 (= c!850623 (is-Nil!57598 lt!2059819))))

(assert (=> d!1605243 (= (size!38241 lt!2059819) lt!2059980)))

(declare-fun b!4984706 () Bool)

(assert (=> b!4984706 (= e!3115390 0)))

(declare-fun b!4984707 () Bool)

(assert (=> b!4984707 (= e!3115390 (+ 1 (size!38241 (t!369918 lt!2059819))))))

(assert (= (and d!1605243 c!850623) b!4984706))

(assert (= (and d!1605243 (not c!850623)) b!4984707))

(declare-fun m!6016360 () Bool)

(assert (=> b!4984707 m!6016360))

(assert (=> b!4984534 d!1605243))

(declare-fun bs!1184528 () Bool)

(declare-fun d!1605245 () Bool)

(assert (= bs!1184528 (and d!1605245 b!4984541)))

(declare-fun lambda!247973 () Int)

(assert (=> bs!1184528 (= lambda!247973 lambda!247963)))

(assert (=> d!1605245 true))

(assert (=> d!1605245 (< (dynLambda!23412 order!26563 (toChars!11321 (transformation!8463 rule!200))) (dynLambda!23411 order!26561 lambda!247973))))

(assert (=> d!1605245 true))

(assert (=> d!1605245 (< (dynLambda!23410 order!26559 (toValue!11462 (transformation!8463 rule!200))) (dynLambda!23411 order!26561 lambda!247973))))

(assert (=> d!1605245 (= (semiInverseModEq!3756 (toChars!11321 (transformation!8463 rule!200)) (toValue!11462 (transformation!8463 rule!200))) (Forall!1813 lambda!247973))))

(declare-fun bs!1184529 () Bool)

(assert (= bs!1184529 d!1605245))

(declare-fun m!6016366 () Bool)

(assert (=> bs!1184529 m!6016366))

(assert (=> b!4984534 d!1605245))

(declare-fun d!1605249 () Bool)

(declare-fun fromListB!2752 (List!57722) BalanceConc!29860)

(assert (=> d!1605249 (= (seqFromList!6084 lt!2059823) (fromListB!2752 lt!2059823))))

(declare-fun bs!1184531 () Bool)

(assert (= bs!1184531 d!1605249))

(declare-fun m!6016372 () Bool)

(assert (=> bs!1184531 m!6016372))

(assert (=> b!4984540 d!1605249))

(declare-fun d!1605253 () Bool)

(declare-fun lt!2059987 () Int)

(assert (=> d!1605253 (= lt!2059987 (size!38241 (list!18479 (_1!34596 lt!2059826))))))

(declare-fun size!38247 (Conc!15215) Int)

(assert (=> d!1605253 (= lt!2059987 (size!38247 (c!850591 (_1!34596 lt!2059826))))))

(assert (=> d!1605253 (= (size!38243 (_1!34596 lt!2059826)) lt!2059987)))

(declare-fun bs!1184533 () Bool)

(assert (= bs!1184533 d!1605253))

(assert (=> bs!1184533 m!6016160))

(assert (=> bs!1184533 m!6016160))

(declare-fun m!6016376 () Bool)

(assert (=> bs!1184533 m!6016376))

(declare-fun m!6016378 () Bool)

(assert (=> bs!1184533 m!6016378))

(assert (=> b!4984540 d!1605253))

(declare-fun d!1605257 () Bool)

(declare-fun dynLambda!23416 (Int BalanceConc!29860) TokenValue!8773)

(assert (=> d!1605257 (= (apply!13950 (transformation!8463 rule!200) (_1!34596 lt!2059826)) (dynLambda!23416 (toValue!11462 (transformation!8463 rule!200)) (_1!34596 lt!2059826)))))

(declare-fun b_lambda!198169 () Bool)

(assert (=> (not b_lambda!198169) (not d!1605257)))

(declare-fun t!369925 () Bool)

(declare-fun tb!261697 () Bool)

(assert (=> (and b!4984545 (= (toValue!11462 (transformation!8463 rule!200)) (toValue!11462 (transformation!8463 rule!200))) t!369925) tb!261697))

(declare-fun result!327070 () Bool)

(declare-fun inv!21 (TokenValue!8773) Bool)

(assert (=> tb!261697 (= result!327070 (inv!21 (dynLambda!23416 (toValue!11462 (transformation!8463 rule!200)) (_1!34596 lt!2059826))))))

(declare-fun m!6016384 () Bool)

(assert (=> tb!261697 m!6016384))

(assert (=> d!1605257 t!369925))

(declare-fun b_and!349821 () Bool)

(assert (= b_and!349811 (and (=> t!369925 result!327070) b_and!349821)))

(declare-fun m!6016386 () Bool)

(assert (=> d!1605257 m!6016386))

(assert (=> b!4984540 d!1605257))

(declare-fun d!1605261 () Bool)

(declare-fun isEmpty!31137 (Option!14546) Bool)

(assert (=> d!1605261 (= (isDefined!11455 (Some!14545 (tuple2!62591 (Token!15383 lt!2059820 rule!200 lt!2059816 lt!2059823) (_2!34596 lt!2059826)))) (not (isEmpty!31137 (Some!14545 (tuple2!62591 (Token!15383 lt!2059820 rule!200 lt!2059816 lt!2059823) (_2!34596 lt!2059826))))))))

(declare-fun bs!1184534 () Bool)

(assert (= bs!1184534 d!1605261))

(declare-fun m!6016388 () Bool)

(assert (=> bs!1184534 m!6016388))

(assert (=> b!4984540 d!1605261))

(declare-fun d!1605263 () Bool)

(declare-fun isEmpty!31138 (Option!14545) Bool)

(assert (=> d!1605263 (= (isDefined!11454 lt!2059815) (not (isEmpty!31138 lt!2059815)))))

(declare-fun bs!1184535 () Bool)

(assert (= bs!1184535 d!1605263))

(declare-fun m!6016390 () Bool)

(assert (=> bs!1184535 m!6016390))

(assert (=> b!4984540 d!1605263))

(declare-fun d!1605265 () Bool)

(declare-fun dynLambda!23417 (Int BalanceConc!29860) Bool)

(assert (=> d!1605265 (dynLambda!23417 lambda!247963 (_1!34596 lt!2059826))))

(declare-fun lt!2059990 () Unit!148711)

(declare-fun choose!36841 (Int BalanceConc!29860) Unit!148711)

(assert (=> d!1605265 (= lt!2059990 (choose!36841 lambda!247963 (_1!34596 lt!2059826)))))

(assert (=> d!1605265 (Forall!1813 lambda!247963)))

(assert (=> d!1605265 (= (ForallOf!1273 lambda!247963 (_1!34596 lt!2059826)) lt!2059990)))

(declare-fun b_lambda!198171 () Bool)

(assert (=> (not b_lambda!198171) (not d!1605265)))

(declare-fun bs!1184537 () Bool)

(assert (= bs!1184537 d!1605265))

(declare-fun m!6016394 () Bool)

(assert (=> bs!1184537 m!6016394))

(declare-fun m!6016396 () Bool)

(assert (=> bs!1184537 m!6016396))

(assert (=> bs!1184537 m!6016148))

(assert (=> b!4984540 d!1605265))

(declare-fun d!1605269 () Bool)

(assert (=> d!1605269 (= (list!18479 (_1!34596 lt!2059826)) (list!18481 (c!850591 (_1!34596 lt!2059826))))))

(declare-fun bs!1184538 () Bool)

(assert (= bs!1184538 d!1605269))

(declare-fun m!6016398 () Bool)

(assert (=> bs!1184538 m!6016398))

(assert (=> b!4984540 d!1605269))

(declare-fun b!4984750 () Bool)

(declare-fun e!3115418 () Option!14545)

(declare-fun lt!2060013 () tuple2!62584)

(assert (=> b!4984750 (= e!3115418 (Some!14544 (tuple2!62589 (Token!15383 (apply!13950 (transformation!8463 rule!200) (seqFromList!6084 (_1!34595 lt!2060013))) rule!200 (size!38243 (seqFromList!6084 (_1!34595 lt!2060013))) (_1!34595 lt!2060013)) (_2!34595 lt!2060013))))))

(declare-fun lt!2060011 () Unit!148711)

(assert (=> b!4984750 (= lt!2060011 (longestMatchIsAcceptedByMatchOrIsEmpty!1868 (regex!8463 rule!200) lt!2059819))))

(declare-fun res!2127913 () Bool)

(assert (=> b!4984750 (= res!2127913 (isEmpty!31133 (_1!34595 (findLongestMatchInner!1907 (regex!8463 rule!200) Nil!57598 (size!38241 Nil!57598) lt!2059819 lt!2059819 (size!38241 lt!2059819)))))))

(declare-fun e!3115420 () Bool)

(assert (=> b!4984750 (=> res!2127913 e!3115420)))

(assert (=> b!4984750 e!3115420))

(declare-fun lt!2060014 () Unit!148711)

(assert (=> b!4984750 (= lt!2060014 lt!2060011)))

(declare-fun lt!2060012 () Unit!148711)

(declare-fun lemmaSemiInverse!2624 (TokenValueInjection!16854 BalanceConc!29860) Unit!148711)

(assert (=> b!4984750 (= lt!2060012 (lemmaSemiInverse!2624 (transformation!8463 rule!200) (seqFromList!6084 (_1!34595 lt!2060013))))))

(declare-fun b!4984751 () Bool)

(assert (=> b!4984751 (= e!3115420 (matchR!6690 (regex!8463 rule!200) (_1!34595 (findLongestMatchInner!1907 (regex!8463 rule!200) Nil!57598 (size!38241 Nil!57598) lt!2059819 lt!2059819 (size!38241 lt!2059819)))))))

(declare-fun b!4984752 () Bool)

(declare-fun e!3115417 () Bool)

(declare-fun e!3115419 () Bool)

(assert (=> b!4984752 (= e!3115417 e!3115419)))

(declare-fun res!2127911 () Bool)

(assert (=> b!4984752 (=> (not res!2127911) (not e!3115419))))

(declare-fun lt!2060015 () Option!14545)

(declare-fun charsOf!5461 (Token!15382) BalanceConc!29860)

(assert (=> b!4984752 (= res!2127911 (matchR!6690 (regex!8463 rule!200) (list!18479 (charsOf!5461 (_1!34597 (get!20031 lt!2060015))))))))

(declare-fun d!1605271 () Bool)

(assert (=> d!1605271 e!3115417))

(declare-fun res!2127915 () Bool)

(assert (=> d!1605271 (=> res!2127915 e!3115417)))

(assert (=> d!1605271 (= res!2127915 (isEmpty!31138 lt!2060015))))

(assert (=> d!1605271 (= lt!2060015 e!3115418)))

(declare-fun c!850629 () Bool)

(assert (=> d!1605271 (= c!850629 (isEmpty!31133 (_1!34595 lt!2060013)))))

(declare-fun findLongestMatch!1723 (Regex!13696 List!57722) tuple2!62584)

(assert (=> d!1605271 (= lt!2060013 (findLongestMatch!1723 (regex!8463 rule!200) lt!2059819))))

(assert (=> d!1605271 (ruleValid!3871 thiss!16165 rule!200)))

(assert (=> d!1605271 (= (maxPrefixOneRule!3679 thiss!16165 rule!200 lt!2059819) lt!2060015)))

(declare-fun b!4984753 () Bool)

(declare-fun res!2127914 () Bool)

(assert (=> b!4984753 (=> (not res!2127914) (not e!3115419))))

(assert (=> b!4984753 (= res!2127914 (< (size!38241 (_2!34597 (get!20031 lt!2060015))) (size!38241 lt!2059819)))))

(declare-fun b!4984754 () Bool)

(declare-fun res!2127910 () Bool)

(assert (=> b!4984754 (=> (not res!2127910) (not e!3115419))))

(assert (=> b!4984754 (= res!2127910 (= (++!12560 (list!18479 (charsOf!5461 (_1!34597 (get!20031 lt!2060015)))) (_2!34597 (get!20031 lt!2060015))) lt!2059819))))

(declare-fun b!4984755 () Bool)

(assert (=> b!4984755 (= e!3115419 (= (size!38242 (_1!34597 (get!20031 lt!2060015))) (size!38241 (originalCharacters!8722 (_1!34597 (get!20031 lt!2060015))))))))

(declare-fun b!4984756 () Bool)

(assert (=> b!4984756 (= e!3115418 None!14544)))

(declare-fun b!4984757 () Bool)

(declare-fun res!2127916 () Bool)

(assert (=> b!4984757 (=> (not res!2127916) (not e!3115419))))

(assert (=> b!4984757 (= res!2127916 (= (value!270617 (_1!34597 (get!20031 lt!2060015))) (apply!13950 (transformation!8463 (rule!11725 (_1!34597 (get!20031 lt!2060015)))) (seqFromList!6084 (originalCharacters!8722 (_1!34597 (get!20031 lt!2060015)))))))))

(declare-fun b!4984758 () Bool)

(declare-fun res!2127912 () Bool)

(assert (=> b!4984758 (=> (not res!2127912) (not e!3115419))))

(assert (=> b!4984758 (= res!2127912 (= (rule!11725 (_1!34597 (get!20031 lt!2060015))) rule!200))))

(assert (= (and d!1605271 c!850629) b!4984756))

(assert (= (and d!1605271 (not c!850629)) b!4984750))

(assert (= (and b!4984750 (not res!2127913)) b!4984751))

(assert (= (and d!1605271 (not res!2127915)) b!4984752))

(assert (= (and b!4984752 res!2127911) b!4984754))

(assert (= (and b!4984754 res!2127910) b!4984753))

(assert (= (and b!4984753 res!2127914) b!4984758))

(assert (= (and b!4984758 res!2127912) b!4984757))

(assert (= (and b!4984757 res!2127916) b!4984755))

(assert (=> b!4984750 m!6016132))

(assert (=> b!4984750 m!6016134))

(assert (=> b!4984750 m!6016136))

(declare-fun m!6016422 () Bool)

(assert (=> b!4984750 m!6016422))

(declare-fun m!6016424 () Bool)

(assert (=> b!4984750 m!6016424))

(assert (=> b!4984750 m!6016128))

(assert (=> b!4984750 m!6016132))

(assert (=> b!4984750 m!6016422))

(declare-fun m!6016426 () Bool)

(assert (=> b!4984750 m!6016426))

(assert (=> b!4984750 m!6016422))

(declare-fun m!6016428 () Bool)

(assert (=> b!4984750 m!6016428))

(assert (=> b!4984750 m!6016342))

(assert (=> b!4984750 m!6016134))

(assert (=> b!4984750 m!6016422))

(declare-fun m!6016430 () Bool)

(assert (=> b!4984752 m!6016430))

(declare-fun m!6016432 () Bool)

(assert (=> b!4984752 m!6016432))

(assert (=> b!4984752 m!6016432))

(declare-fun m!6016434 () Bool)

(assert (=> b!4984752 m!6016434))

(assert (=> b!4984752 m!6016434))

(declare-fun m!6016436 () Bool)

(assert (=> b!4984752 m!6016436))

(assert (=> b!4984755 m!6016430))

(declare-fun m!6016438 () Bool)

(assert (=> b!4984755 m!6016438))

(assert (=> b!4984751 m!6016132))

(assert (=> b!4984751 m!6016134))

(assert (=> b!4984751 m!6016132))

(assert (=> b!4984751 m!6016134))

(assert (=> b!4984751 m!6016136))

(assert (=> b!4984751 m!6016346))

(declare-fun m!6016440 () Bool)

(assert (=> d!1605271 m!6016440))

(declare-fun m!6016442 () Bool)

(assert (=> d!1605271 m!6016442))

(declare-fun m!6016444 () Bool)

(assert (=> d!1605271 m!6016444))

(assert (=> d!1605271 m!6016116))

(assert (=> b!4984757 m!6016430))

(declare-fun m!6016446 () Bool)

(assert (=> b!4984757 m!6016446))

(assert (=> b!4984757 m!6016446))

(declare-fun m!6016448 () Bool)

(assert (=> b!4984757 m!6016448))

(assert (=> b!4984758 m!6016430))

(assert (=> b!4984753 m!6016430))

(declare-fun m!6016450 () Bool)

(assert (=> b!4984753 m!6016450))

(assert (=> b!4984753 m!6016134))

(assert (=> b!4984754 m!6016430))

(assert (=> b!4984754 m!6016432))

(assert (=> b!4984754 m!6016432))

(assert (=> b!4984754 m!6016434))

(assert (=> b!4984754 m!6016434))

(declare-fun m!6016452 () Bool)

(assert (=> b!4984754 m!6016452))

(assert (=> b!4984540 d!1605271))

(declare-fun d!1605289 () Bool)

(assert (=> d!1605289 (dynLambda!23417 lambda!247963 lt!2059825)))

(declare-fun lt!2060016 () Unit!148711)

(assert (=> d!1605289 (= lt!2060016 (choose!36841 lambda!247963 lt!2059825))))

(assert (=> d!1605289 (Forall!1813 lambda!247963)))

(assert (=> d!1605289 (= (ForallOf!1273 lambda!247963 lt!2059825) lt!2060016)))

(declare-fun b_lambda!198181 () Bool)

(assert (=> (not b_lambda!198181) (not d!1605289)))

(declare-fun bs!1184543 () Bool)

(assert (= bs!1184543 d!1605289))

(declare-fun m!6016454 () Bool)

(assert (=> bs!1184543 m!6016454))

(declare-fun m!6016456 () Bool)

(assert (=> bs!1184543 m!6016456))

(assert (=> bs!1184543 m!6016148))

(assert (=> b!4984540 d!1605289))

(declare-fun d!1605291 () Bool)

(declare-fun isBalanced!4233 (Conc!15215) Bool)

(assert (=> d!1605291 (= (inv!75479 totalInput!520) (isBalanced!4233 (c!850591 totalInput!520)))))

(declare-fun bs!1184544 () Bool)

(assert (= bs!1184544 d!1605291))

(declare-fun m!6016458 () Bool)

(assert (=> bs!1184544 m!6016458))

(assert (=> start!526500 d!1605291))

(declare-fun d!1605293 () Bool)

(assert (=> d!1605293 (= (inv!75479 input!1580) (isBalanced!4233 (c!850591 input!1580)))))

(declare-fun bs!1184545 () Bool)

(assert (= bs!1184545 d!1605293))

(declare-fun m!6016460 () Bool)

(assert (=> bs!1184545 m!6016460))

(assert (=> start!526500 d!1605293))

(declare-fun d!1605295 () Bool)

(declare-fun choose!36842 (Int) Bool)

(assert (=> d!1605295 (= (Forall!1813 lambda!247963) (choose!36842 lambda!247963))))

(declare-fun bs!1184546 () Bool)

(assert (= bs!1184546 d!1605295))

(declare-fun m!6016462 () Bool)

(assert (=> bs!1184546 m!6016462))

(assert (=> b!4984541 d!1605295))

(declare-fun d!1605297 () Bool)

(declare-fun e!3115423 () Bool)

(assert (=> d!1605297 e!3115423))

(declare-fun res!2127919 () Bool)

(assert (=> d!1605297 (=> res!2127919 e!3115423)))

(declare-fun lt!2060019 () Bool)

(assert (=> d!1605297 (= res!2127919 (not lt!2060019))))

(declare-fun drop!2379 (List!57722 Int) List!57722)

(assert (=> d!1605297 (= lt!2060019 (= lt!2059819 (drop!2379 (list!18479 totalInput!520) (- (size!38241 (list!18479 totalInput!520)) (size!38241 lt!2059819)))))))

(assert (=> d!1605297 (= (isSuffix!1262 lt!2059819 (list!18479 totalInput!520)) lt!2060019)))

(declare-fun b!4984761 () Bool)

(assert (=> b!4984761 (= e!3115423 (>= (size!38241 (list!18479 totalInput!520)) (size!38241 lt!2059819)))))

(assert (= (and d!1605297 (not res!2127919)) b!4984761))

(assert (=> d!1605297 m!6016120))

(declare-fun m!6016464 () Bool)

(assert (=> d!1605297 m!6016464))

(assert (=> d!1605297 m!6016134))

(assert (=> d!1605297 m!6016120))

(declare-fun m!6016466 () Bool)

(assert (=> d!1605297 m!6016466))

(assert (=> b!4984761 m!6016120))

(assert (=> b!4984761 m!6016464))

(assert (=> b!4984761 m!6016134))

(assert (=> b!4984531 d!1605297))

(declare-fun d!1605299 () Bool)

(assert (=> d!1605299 (= (list!18479 totalInput!520) (list!18481 (c!850591 totalInput!520)))))

(declare-fun bs!1184547 () Bool)

(assert (= bs!1184547 d!1605299))

(declare-fun m!6016468 () Bool)

(assert (=> bs!1184547 m!6016468))

(assert (=> b!4984531 d!1605299))

(declare-fun d!1605301 () Bool)

(assert (=> d!1605301 (= (list!18479 input!1580) (list!18481 (c!850591 input!1580)))))

(declare-fun bs!1184548 () Bool)

(assert (= bs!1184548 d!1605301))

(declare-fun m!6016470 () Bool)

(assert (=> bs!1184548 m!6016470))

(assert (=> b!4984531 d!1605301))

(declare-fun d!1605303 () Bool)

(declare-fun lt!2060022 () Bool)

(assert (=> d!1605303 (= lt!2060022 (isEmpty!31133 (list!18479 (_1!34596 lt!2059826))))))

(declare-fun isEmpty!31139 (Conc!15215) Bool)

(assert (=> d!1605303 (= lt!2060022 (isEmpty!31139 (c!850591 (_1!34596 lt!2059826))))))

(assert (=> d!1605303 (= (isEmpty!31134 (_1!34596 lt!2059826)) lt!2060022)))

(declare-fun bs!1184549 () Bool)

(assert (= bs!1184549 d!1605303))

(assert (=> bs!1184549 m!6016160))

(assert (=> bs!1184549 m!6016160))

(declare-fun m!6016472 () Bool)

(assert (=> bs!1184549 m!6016472))

(declare-fun m!6016474 () Bool)

(assert (=> bs!1184549 m!6016474))

(assert (=> b!4984542 d!1605303))

(declare-fun d!1605305 () Bool)

(declare-fun lt!2060025 () tuple2!62586)

(assert (=> d!1605305 (= (tuple2!62585 (list!18479 (_1!34596 lt!2060025)) (list!18479 (_2!34596 lt!2060025))) (findLongestMatch!1723 (regex!8463 rule!200) (list!18479 input!1580)))))

(declare-fun choose!36843 (Regex!13696 BalanceConc!29860 BalanceConc!29860) tuple2!62586)

(assert (=> d!1605305 (= lt!2060025 (choose!36843 (regex!8463 rule!200) input!1580 totalInput!520))))

(assert (=> d!1605305 (validRegex!5997 (regex!8463 rule!200))))

(assert (=> d!1605305 (= (findLongestMatchWithZipperSequenceV2!226 (regex!8463 rule!200) input!1580 totalInput!520) lt!2060025)))

(declare-fun bs!1184550 () Bool)

(assert (= bs!1184550 d!1605305))

(assert (=> bs!1184550 m!6016124))

(declare-fun m!6016476 () Bool)

(assert (=> bs!1184550 m!6016476))

(declare-fun m!6016478 () Bool)

(assert (=> bs!1184550 m!6016478))

(declare-fun m!6016480 () Bool)

(assert (=> bs!1184550 m!6016480))

(declare-fun m!6016482 () Bool)

(assert (=> bs!1184550 m!6016482))

(assert (=> bs!1184550 m!6016256))

(assert (=> bs!1184550 m!6016124))

(assert (=> b!4984542 d!1605305))

(declare-fun b!4984790 () Bool)

(declare-fun e!3115440 () Bool)

(assert (=> b!4984790 (= e!3115440 (nullable!4648 (regex!8463 rule!200)))))

(declare-fun b!4984791 () Bool)

(declare-fun res!2127939 () Bool)

(declare-fun e!3115443 () Bool)

(assert (=> b!4984791 (=> res!2127939 e!3115443)))

(assert (=> b!4984791 (= res!2127939 (not (is-ElementMatch!13696 (regex!8463 rule!200))))))

(declare-fun e!3115441 () Bool)

(assert (=> b!4984791 (= e!3115441 e!3115443)))

(declare-fun b!4984792 () Bool)

(declare-fun e!3115442 () Bool)

(declare-fun lt!2060028 () Bool)

(declare-fun call!347830 () Bool)

(assert (=> b!4984792 (= e!3115442 (= lt!2060028 call!347830))))

(declare-fun b!4984793 () Bool)

(declare-fun res!2127936 () Bool)

(declare-fun e!3115439 () Bool)

(assert (=> b!4984793 (=> (not res!2127936) (not e!3115439))))

(assert (=> b!4984793 (= res!2127936 (not call!347830))))

(declare-fun b!4984794 () Bool)

(declare-fun e!3115444 () Bool)

(assert (=> b!4984794 (= e!3115443 e!3115444)))

(declare-fun res!2127942 () Bool)

(assert (=> b!4984794 (=> (not res!2127942) (not e!3115444))))

(assert (=> b!4984794 (= res!2127942 (not lt!2060028))))

(declare-fun b!4984795 () Bool)

(declare-fun e!3115438 () Bool)

(assert (=> b!4984795 (= e!3115444 e!3115438)))

(declare-fun res!2127941 () Bool)

(assert (=> b!4984795 (=> res!2127941 e!3115438)))

(assert (=> b!4984795 (= res!2127941 call!347830)))

(declare-fun b!4984796 () Bool)

(assert (=> b!4984796 (= e!3115441 (not lt!2060028))))

(declare-fun b!4984797 () Bool)

(assert (=> b!4984797 (= e!3115439 (= (head!10697 (_1!34595 lt!2059821)) (c!850590 (regex!8463 rule!200))))))

(declare-fun b!4984798 () Bool)

(assert (=> b!4984798 (= e!3115442 e!3115441)))

(declare-fun c!850638 () Bool)

(assert (=> b!4984798 (= c!850638 (is-EmptyLang!13696 (regex!8463 rule!200)))))

(declare-fun b!4984799 () Bool)

(assert (=> b!4984799 (= e!3115438 (not (= (head!10697 (_1!34595 lt!2059821)) (c!850590 (regex!8463 rule!200)))))))

(declare-fun bm!347825 () Bool)

(assert (=> bm!347825 (= call!347830 (isEmpty!31133 (_1!34595 lt!2059821)))))

(declare-fun b!4984800 () Bool)

(declare-fun res!2127937 () Bool)

(assert (=> b!4984800 (=> res!2127937 e!3115443)))

(assert (=> b!4984800 (= res!2127937 e!3115439)))

(declare-fun res!2127940 () Bool)

(assert (=> b!4984800 (=> (not res!2127940) (not e!3115439))))

(assert (=> b!4984800 (= res!2127940 lt!2060028)))

(declare-fun b!4984801 () Bool)

(declare-fun res!2127943 () Bool)

(assert (=> b!4984801 (=> res!2127943 e!3115438)))

(assert (=> b!4984801 (= res!2127943 (not (isEmpty!31133 (tail!9830 (_1!34595 lt!2059821)))))))

(declare-fun b!4984802 () Bool)

(assert (=> b!4984802 (= e!3115440 (matchR!6690 (derivativeStep!3948 (regex!8463 rule!200) (head!10697 (_1!34595 lt!2059821))) (tail!9830 (_1!34595 lt!2059821))))))

(declare-fun b!4984803 () Bool)

(declare-fun res!2127938 () Bool)

(assert (=> b!4984803 (=> (not res!2127938) (not e!3115439))))

(assert (=> b!4984803 (= res!2127938 (isEmpty!31133 (tail!9830 (_1!34595 lt!2059821))))))

(declare-fun d!1605307 () Bool)

(assert (=> d!1605307 e!3115442))

(declare-fun c!850637 () Bool)

(assert (=> d!1605307 (= c!850637 (is-EmptyExpr!13696 (regex!8463 rule!200)))))

(assert (=> d!1605307 (= lt!2060028 e!3115440)))

(declare-fun c!850636 () Bool)

(assert (=> d!1605307 (= c!850636 (isEmpty!31133 (_1!34595 lt!2059821)))))

(assert (=> d!1605307 (validRegex!5997 (regex!8463 rule!200))))

(assert (=> d!1605307 (= (matchR!6690 (regex!8463 rule!200) (_1!34595 lt!2059821)) lt!2060028)))

(assert (= (and d!1605307 c!850636) b!4984790))

(assert (= (and d!1605307 (not c!850636)) b!4984802))

(assert (= (and d!1605307 c!850637) b!4984792))

(assert (= (and d!1605307 (not c!850637)) b!4984798))

(assert (= (and b!4984798 c!850638) b!4984796))

(assert (= (and b!4984798 (not c!850638)) b!4984791))

(assert (= (and b!4984791 (not res!2127939)) b!4984800))

(assert (= (and b!4984800 res!2127940) b!4984793))

(assert (= (and b!4984793 res!2127936) b!4984803))

(assert (= (and b!4984803 res!2127938) b!4984797))

(assert (= (and b!4984800 (not res!2127937)) b!4984794))

(assert (= (and b!4984794 res!2127942) b!4984795))

(assert (= (and b!4984795 (not res!2127941)) b!4984801))

(assert (= (and b!4984801 (not res!2127943)) b!4984799))

(assert (= (or b!4984792 b!4984793 b!4984795) bm!347825))

(declare-fun m!6016484 () Bool)

(assert (=> b!4984797 m!6016484))

(declare-fun m!6016486 () Bool)

(assert (=> b!4984803 m!6016486))

(assert (=> b!4984803 m!6016486))

(declare-fun m!6016488 () Bool)

(assert (=> b!4984803 m!6016488))

(assert (=> d!1605307 m!6016138))

(assert (=> d!1605307 m!6016256))

(assert (=> b!4984801 m!6016486))

(assert (=> b!4984801 m!6016486))

(assert (=> b!4984801 m!6016488))

(assert (=> b!4984790 m!6016258))

(assert (=> b!4984802 m!6016484))

(assert (=> b!4984802 m!6016484))

(declare-fun m!6016490 () Bool)

(assert (=> b!4984802 m!6016490))

(assert (=> b!4984802 m!6016486))

(assert (=> b!4984802 m!6016490))

(assert (=> b!4984802 m!6016486))

(declare-fun m!6016492 () Bool)

(assert (=> b!4984802 m!6016492))

(assert (=> b!4984799 m!6016484))

(assert (=> bm!347825 m!6016138))

(assert (=> b!4984537 d!1605307))

(declare-fun d!1605309 () Bool)

(assert (=> d!1605309 (= (apply!13950 (transformation!8463 rule!200) lt!2059825) (dynLambda!23416 (toValue!11462 (transformation!8463 rule!200)) lt!2059825))))

(declare-fun b_lambda!198183 () Bool)

(assert (=> (not b_lambda!198183) (not d!1605309)))

(declare-fun t!369929 () Bool)

(declare-fun tb!261701 () Bool)

(assert (=> (and b!4984545 (= (toValue!11462 (transformation!8463 rule!200)) (toValue!11462 (transformation!8463 rule!200))) t!369929) tb!261701))

(declare-fun result!327076 () Bool)

(assert (=> tb!261701 (= result!327076 (inv!21 (dynLambda!23416 (toValue!11462 (transformation!8463 rule!200)) lt!2059825)))))

(declare-fun m!6016494 () Bool)

(assert (=> tb!261701 m!6016494))

(assert (=> d!1605309 t!369929))

(declare-fun b_and!349829 () Bool)

(assert (= b_and!349821 (and (=> t!369929 result!327076) b_and!349829)))

(declare-fun m!6016496 () Bool)

(assert (=> d!1605309 m!6016496))

(assert (=> b!4984538 d!1605309))

(declare-fun b!4984810 () Bool)

(declare-fun e!3115450 () Bool)

(assert (=> b!4984810 (= e!3115450 true)))

(declare-fun d!1605311 () Bool)

(assert (=> d!1605311 e!3115450))

(assert (= d!1605311 b!4984810))

(declare-fun order!26573 () Int)

(declare-fun lambda!247979 () Int)

(declare-fun dynLambda!23418 (Int Int) Int)

(assert (=> b!4984810 (< (dynLambda!23410 order!26559 (toValue!11462 (transformation!8463 rule!200))) (dynLambda!23418 order!26573 lambda!247979))))

(assert (=> b!4984810 (< (dynLambda!23412 order!26563 (toChars!11321 (transformation!8463 rule!200))) (dynLambda!23418 order!26573 lambda!247979))))

(assert (=> d!1605311 (= (dynLambda!23416 (toValue!11462 (transformation!8463 rule!200)) (_1!34596 lt!2059826)) (dynLambda!23416 (toValue!11462 (transformation!8463 rule!200)) lt!2059825))))

(declare-fun lt!2060031 () Unit!148711)

(declare-fun Forall2of!492 (Int BalanceConc!29860 BalanceConc!29860) Unit!148711)

(assert (=> d!1605311 (= lt!2060031 (Forall2of!492 lambda!247979 (_1!34596 lt!2059826) lt!2059825))))

(assert (=> d!1605311 (= (list!18479 (_1!34596 lt!2059826)) (list!18479 lt!2059825))))

(assert (=> d!1605311 (= (lemmaEqSameImage!1202 (transformation!8463 rule!200) (_1!34596 lt!2059826) lt!2059825) lt!2060031)))

(declare-fun b_lambda!198185 () Bool)

(assert (=> (not b_lambda!198185) (not d!1605311)))

(assert (=> d!1605311 t!369925))

(declare-fun b_and!349831 () Bool)

(assert (= b_and!349829 (and (=> t!369925 result!327070) b_and!349831)))

(declare-fun b_lambda!198187 () Bool)

(assert (=> (not b_lambda!198187) (not d!1605311)))

(assert (=> d!1605311 t!369929))

(declare-fun b_and!349833 () Bool)

(assert (= b_and!349831 (and (=> t!369929 result!327076) b_and!349833)))

(assert (=> d!1605311 m!6016126))

(assert (=> d!1605311 m!6016160))

(assert (=> d!1605311 m!6016496))

(assert (=> d!1605311 m!6016386))

(declare-fun m!6016498 () Bool)

(assert (=> d!1605311 m!6016498))

(assert (=> b!4984538 d!1605311))

(declare-fun d!1605313 () Bool)

(assert (=> d!1605313 (= (inv!75476 (tag!9327 rule!200)) (= (mod (str.len (value!270616 (tag!9327 rule!200))) 2) 0))))

(assert (=> b!4984539 d!1605313))

(declare-fun d!1605315 () Bool)

(declare-fun res!2127948 () Bool)

(declare-fun e!3115453 () Bool)

(assert (=> d!1605315 (=> (not res!2127948) (not e!3115453))))

(assert (=> d!1605315 (= res!2127948 (semiInverseModEq!3756 (toChars!11321 (transformation!8463 rule!200)) (toValue!11462 (transformation!8463 rule!200))))))

(assert (=> d!1605315 (= (inv!75481 (transformation!8463 rule!200)) e!3115453)))

(declare-fun b!4984813 () Bool)

(assert (=> b!4984813 (= e!3115453 (equivClasses!3578 (toChars!11321 (transformation!8463 rule!200)) (toValue!11462 (transformation!8463 rule!200))))))

(assert (= (and d!1605315 res!2127948) b!4984813))

(assert (=> d!1605315 m!6016140))

(assert (=> b!4984813 m!6016358))

(assert (=> b!4984539 d!1605315))

(declare-fun tp!1397121 () Bool)

(declare-fun tp!1397122 () Bool)

(declare-fun b!4984822 () Bool)

(declare-fun e!3115459 () Bool)

(assert (=> b!4984822 (= e!3115459 (and (inv!75480 (left!42119 (c!850591 totalInput!520))) tp!1397122 (inv!75480 (right!42449 (c!850591 totalInput!520))) tp!1397121))))

(declare-fun b!4984824 () Bool)

(declare-fun e!3115458 () Bool)

(declare-fun tp!1397123 () Bool)

(assert (=> b!4984824 (= e!3115458 tp!1397123)))

(declare-fun b!4984823 () Bool)

(declare-fun inv!75487 (IArray!30491) Bool)

(assert (=> b!4984823 (= e!3115459 (and (inv!75487 (xs!18541 (c!850591 totalInput!520))) e!3115458))))

(assert (=> b!4984536 (= tp!1397095 (and (inv!75480 (c!850591 totalInput!520)) e!3115459))))

(assert (= (and b!4984536 (is-Node!15215 (c!850591 totalInput!520))) b!4984822))

(assert (= b!4984823 b!4984824))

(assert (= (and b!4984536 (is-Leaf!25272 (c!850591 totalInput!520))) b!4984823))

(declare-fun m!6016500 () Bool)

(assert (=> b!4984822 m!6016500))

(declare-fun m!6016502 () Bool)

(assert (=> b!4984822 m!6016502))

(declare-fun m!6016504 () Bool)

(assert (=> b!4984823 m!6016504))

(assert (=> b!4984536 m!6016118))

(declare-fun tp!1397124 () Bool)

(declare-fun tp!1397125 () Bool)

(declare-fun b!4984825 () Bool)

(declare-fun e!3115461 () Bool)

(assert (=> b!4984825 (= e!3115461 (and (inv!75480 (left!42119 (c!850591 input!1580))) tp!1397125 (inv!75480 (right!42449 (c!850591 input!1580))) tp!1397124))))

(declare-fun b!4984827 () Bool)

(declare-fun e!3115460 () Bool)

(declare-fun tp!1397126 () Bool)

(assert (=> b!4984827 (= e!3115460 tp!1397126)))

(declare-fun b!4984826 () Bool)

(assert (=> b!4984826 (= e!3115461 (and (inv!75487 (xs!18541 (c!850591 input!1580))) e!3115460))))

(assert (=> b!4984532 (= tp!1397098 (and (inv!75480 (c!850591 input!1580)) e!3115461))))

(assert (= (and b!4984532 (is-Node!15215 (c!850591 input!1580))) b!4984825))

(assert (= b!4984826 b!4984827))

(assert (= (and b!4984532 (is-Leaf!25272 (c!850591 input!1580))) b!4984826))

(declare-fun m!6016506 () Bool)

(assert (=> b!4984825 m!6016506))

(declare-fun m!6016508 () Bool)

(assert (=> b!4984825 m!6016508))

(declare-fun m!6016510 () Bool)

(assert (=> b!4984826 m!6016510))

(assert (=> b!4984532 m!6016172))

(declare-fun b!4984841 () Bool)

(declare-fun e!3115464 () Bool)

(declare-fun tp!1397141 () Bool)

(declare-fun tp!1397137 () Bool)

(assert (=> b!4984841 (= e!3115464 (and tp!1397141 tp!1397137))))

(assert (=> b!4984539 (= tp!1397099 e!3115464)))

(declare-fun b!4984840 () Bool)

(declare-fun tp!1397139 () Bool)

(assert (=> b!4984840 (= e!3115464 tp!1397139)))

(declare-fun b!4984838 () Bool)

(declare-fun tp_is_empty!36397 () Bool)

(assert (=> b!4984838 (= e!3115464 tp_is_empty!36397)))

(declare-fun b!4984839 () Bool)

(declare-fun tp!1397140 () Bool)

(declare-fun tp!1397138 () Bool)

(assert (=> b!4984839 (= e!3115464 (and tp!1397140 tp!1397138))))

(assert (= (and b!4984539 (is-ElementMatch!13696 (regex!8463 rule!200))) b!4984838))

(assert (= (and b!4984539 (is-Concat!22469 (regex!8463 rule!200))) b!4984839))

(assert (= (and b!4984539 (is-Star!13696 (regex!8463 rule!200))) b!4984840))

(assert (= (and b!4984539 (is-Union!13696 (regex!8463 rule!200))) b!4984841))

(declare-fun b_lambda!198189 () Bool)

(assert (= b_lambda!198169 (or (and b!4984545 b_free!133151) b_lambda!198189)))

(declare-fun b_lambda!198191 () Bool)

(assert (= b_lambda!198181 (or b!4984541 b_lambda!198191)))

(declare-fun bs!1184551 () Bool)

(declare-fun d!1605317 () Bool)

(assert (= bs!1184551 (and d!1605317 b!4984541)))

(declare-fun dynLambda!23419 (Int TokenValue!8773) BalanceConc!29860)

(assert (=> bs!1184551 (= (dynLambda!23417 lambda!247963 lt!2059825) (= (list!18479 (dynLambda!23419 (toChars!11321 (transformation!8463 rule!200)) (dynLambda!23416 (toValue!11462 (transformation!8463 rule!200)) lt!2059825))) (list!18479 lt!2059825)))))

(declare-fun b_lambda!198201 () Bool)

(assert (=> (not b_lambda!198201) (not bs!1184551)))

(declare-fun t!369931 () Bool)

(declare-fun tb!261703 () Bool)

(assert (=> (and b!4984545 (= (toChars!11321 (transformation!8463 rule!200)) (toChars!11321 (transformation!8463 rule!200))) t!369931) tb!261703))

(declare-fun tp!1397144 () Bool)

(declare-fun e!3115467 () Bool)

(declare-fun b!4984846 () Bool)

(assert (=> b!4984846 (= e!3115467 (and (inv!75480 (c!850591 (dynLambda!23419 (toChars!11321 (transformation!8463 rule!200)) (dynLambda!23416 (toValue!11462 (transformation!8463 rule!200)) lt!2059825)))) tp!1397144))))

(declare-fun result!327082 () Bool)

(assert (=> tb!261703 (= result!327082 (and (inv!75479 (dynLambda!23419 (toChars!11321 (transformation!8463 rule!200)) (dynLambda!23416 (toValue!11462 (transformation!8463 rule!200)) lt!2059825))) e!3115467))))

(assert (= tb!261703 b!4984846))

(declare-fun m!6016512 () Bool)

(assert (=> b!4984846 m!6016512))

(declare-fun m!6016514 () Bool)

(assert (=> tb!261703 m!6016514))

(assert (=> bs!1184551 t!369931))

(declare-fun b_and!349835 () Bool)

(assert (= b_and!349813 (and (=> t!369931 result!327082) b_and!349835)))

(declare-fun b_lambda!198203 () Bool)

(assert (=> (not b_lambda!198203) (not bs!1184551)))

(assert (=> bs!1184551 t!369929))

(declare-fun b_and!349837 () Bool)

(assert (= b_and!349833 (and (=> t!369929 result!327076) b_and!349837)))

(assert (=> bs!1184551 m!6016126))

(assert (=> bs!1184551 m!6016496))

(declare-fun m!6016516 () Bool)

(assert (=> bs!1184551 m!6016516))

(declare-fun m!6016518 () Bool)

(assert (=> bs!1184551 m!6016518))

(assert (=> bs!1184551 m!6016496))

(assert (=> bs!1184551 m!6016516))

(assert (=> d!1605289 d!1605317))

(declare-fun b_lambda!198193 () Bool)

(assert (= b_lambda!198187 (or (and b!4984545 b_free!133151) b_lambda!198193)))

(declare-fun b_lambda!198195 () Bool)

(assert (= b_lambda!198185 (or (and b!4984545 b_free!133151) b_lambda!198195)))

(declare-fun b_lambda!198197 () Bool)

(assert (= b_lambda!198183 (or (and b!4984545 b_free!133151) b_lambda!198197)))

(declare-fun b_lambda!198199 () Bool)

(assert (= b_lambda!198171 (or b!4984541 b_lambda!198199)))

(declare-fun bs!1184552 () Bool)

(declare-fun d!1605319 () Bool)

(assert (= bs!1184552 (and d!1605319 b!4984541)))

(assert (=> bs!1184552 (= (dynLambda!23417 lambda!247963 (_1!34596 lt!2059826)) (= (list!18479 (dynLambda!23419 (toChars!11321 (transformation!8463 rule!200)) (dynLambda!23416 (toValue!11462 (transformation!8463 rule!200)) (_1!34596 lt!2059826)))) (list!18479 (_1!34596 lt!2059826))))))

(declare-fun b_lambda!198205 () Bool)

(assert (=> (not b_lambda!198205) (not bs!1184552)))

(declare-fun t!369933 () Bool)

(declare-fun tb!261705 () Bool)

(assert (=> (and b!4984545 (= (toChars!11321 (transformation!8463 rule!200)) (toChars!11321 (transformation!8463 rule!200))) t!369933) tb!261705))

(declare-fun tp!1397145 () Bool)

(declare-fun b!4984847 () Bool)

(declare-fun e!3115468 () Bool)

(assert (=> b!4984847 (= e!3115468 (and (inv!75480 (c!850591 (dynLambda!23419 (toChars!11321 (transformation!8463 rule!200)) (dynLambda!23416 (toValue!11462 (transformation!8463 rule!200)) (_1!34596 lt!2059826))))) tp!1397145))))

(declare-fun result!327086 () Bool)

(assert (=> tb!261705 (= result!327086 (and (inv!75479 (dynLambda!23419 (toChars!11321 (transformation!8463 rule!200)) (dynLambda!23416 (toValue!11462 (transformation!8463 rule!200)) (_1!34596 lt!2059826)))) e!3115468))))

(assert (= tb!261705 b!4984847))

(declare-fun m!6016520 () Bool)

(assert (=> b!4984847 m!6016520))

(declare-fun m!6016522 () Bool)

(assert (=> tb!261705 m!6016522))

(assert (=> bs!1184552 t!369933))

(declare-fun b_and!349839 () Bool)

(assert (= b_and!349835 (and (=> t!369933 result!327086) b_and!349839)))

(declare-fun b_lambda!198207 () Bool)

(assert (=> (not b_lambda!198207) (not bs!1184552)))

(assert (=> bs!1184552 t!369925))

(declare-fun b_and!349841 () Bool)

(assert (= b_and!349837 (and (=> t!369925 result!327070) b_and!349841)))

(assert (=> bs!1184552 m!6016160))

(assert (=> bs!1184552 m!6016386))

(declare-fun m!6016524 () Bool)

(assert (=> bs!1184552 m!6016524))

(declare-fun m!6016526 () Bool)

(assert (=> bs!1184552 m!6016526))

(assert (=> bs!1184552 m!6016386))

(assert (=> bs!1184552 m!6016524))

(assert (=> d!1605265 d!1605319))

(push 1)

(assert (not b!4984684))

(assert (not b!4984839))

(assert (not b_next!133941))

(assert (not bm!347817))

(assert (not b!4984750))

(assert (not bm!347818))

(assert (not d!1605263))

(assert (not b!4984822))

(assert (not b!4984674))

(assert (not b!4984753))

(assert (not b!4984615))

(assert (not b_lambda!198191))

(assert (not b!4984823))

(assert (not b!4984676))

(assert (not b!4984618))

(assert (not d!1605301))

(assert (not b!4984754))

(assert (not b!4984623))

(assert (not bm!347820))

(assert (not b_lambda!198203))

(assert (not b!4984790))

(assert (not d!1605249))

(assert (not d!1605315))

(assert (not d!1605261))

(assert (not b!4984824))

(assert (not d!1605307))

(assert (not bm!347819))

(assert (not d!1605253))

(assert (not d!1605265))

(assert (not b!4984801))

(assert (not b_next!133943))

(assert (not b_lambda!198199))

(assert (not bm!347816))

(assert (not bs!1184552))

(assert (not b!4984696))

(assert (not b!4984797))

(assert (not bm!347822))

(assert (not tb!261703))

(assert (not b!4984803))

(assert (not b_lambda!198197))

(assert (not tb!261705))

(assert (not b!4984840))

(assert (not b!4984705))

(assert (not b!4984752))

(assert (not d!1605241))

(assert b_and!349839)

(assert (not b_lambda!198195))

(assert (not b!4984758))

(assert (not b!4984757))

(assert (not b_lambda!198205))

(assert (not bm!347815))

(assert (not d!1605269))

(assert (not d!1605245))

(assert (not d!1605291))

(assert (not b!4984616))

(assert (not b!4984751))

(assert (not bm!347825))

(assert (not b!4984613))

(assert (not bs!1184551))

(assert (not tb!261701))

(assert (not d!1605311))

(assert (not d!1605217))

(assert tp_is_empty!36397)

(assert (not d!1605297))

(assert (not d!1605293))

(assert (not b_lambda!198193))

(assert (not b_lambda!198201))

(assert (not d!1605303))

(assert (not d!1605305))

(assert (not b!4984532))

(assert (not d!1605289))

(assert (not b!4984761))

(assert (not d!1605295))

(assert (not d!1605271))

(assert (not b!4984846))

(assert (not b_lambda!198207))

(assert (not b!4984827))

(assert (not b!4984813))

(assert (not b!4984536))

(assert (not b!4984841))

(assert (not b_lambda!198189))

(assert (not b!4984707))

(assert (not b!4984799))

(assert (not b!4984802))

(assert (not b!4984755))

(assert b_and!349841)

(assert (not tb!261697))

(assert (not d!1605233))

(assert (not d!1605227))

(assert (not b!4984847))

(assert (not bm!347821))

(assert (not d!1605223))

(assert (not d!1605299))

(assert (not b!4984826))

(assert (not b!4984702))

(assert (not b!4984825))

(assert (not b!4984673))

(check-sat)

(pop 1)

(push 1)

(assert b_and!349839)

(assert b_and!349841)

(assert (not b_next!133943))

(assert (not b_next!133941))

(check-sat)

(pop 1)

