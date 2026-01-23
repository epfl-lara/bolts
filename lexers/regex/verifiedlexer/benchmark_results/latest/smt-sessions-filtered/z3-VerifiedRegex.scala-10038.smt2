; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525154 () Bool)

(assert start!525154)

(declare-fun b!4977159 () Bool)

(declare-fun b_free!133011 () Bool)

(declare-fun b_next!133801 () Bool)

(assert (=> b!4977159 (= b_free!133011 (not b_next!133801))))

(declare-fun tp!1395700 () Bool)

(declare-fun b_and!349423 () Bool)

(assert (=> b!4977159 (= tp!1395700 b_and!349423)))

(declare-fun b_free!133013 () Bool)

(declare-fun b_next!133803 () Bool)

(assert (=> b!4977159 (= b_free!133013 (not b_next!133803))))

(declare-fun tp!1395698 () Bool)

(declare-fun b_and!349425 () Bool)

(assert (=> b!4977159 (= tp!1395698 b_and!349425)))

(declare-fun b!4977168 () Bool)

(declare-fun e!3110755 () Bool)

(assert (=> b!4977168 (= e!3110755 true)))

(declare-fun b!4977167 () Bool)

(declare-fun e!3110754 () Bool)

(assert (=> b!4977167 (= e!3110754 e!3110755)))

(declare-fun b!4977155 () Bool)

(assert (=> b!4977155 e!3110754))

(assert (= b!4977167 b!4977168))

(assert (= b!4977155 b!4977167))

(declare-fun order!26321 () Int)

(declare-fun order!26323 () Int)

(declare-fun lambda!247626 () Int)

(declare-datatypes ((C!27572 0))(
  ( (C!27573 (val!23152 Int)) )
))
(declare-datatypes ((List!57652 0))(
  ( (Nil!57528) (Cons!57528 (h!63976 C!27572) (t!369664 List!57652)) )
))
(declare-datatypes ((IArray!30421 0))(
  ( (IArray!30422 (innerList!15268 List!57652)) )
))
(declare-datatypes ((List!57653 0))(
  ( (Nil!57529) (Cons!57529 (h!63977 (_ BitVec 16)) (t!369665 List!57653)) )
))
(declare-datatypes ((Conc!15180 0))(
  ( (Node!15180 (left!41996 Conc!15180) (right!42326 Conc!15180) (csize!30590 Int) (cheight!15391 Int)) (Leaf!25219 (xs!18506 IArray!30421) (csize!30591 Int)) (Empty!15180) )
))
(declare-datatypes ((BalanceConc!29790 0))(
  ( (BalanceConc!29791 (c!849231 Conc!15180)) )
))
(declare-datatypes ((TokenValue!8738 0))(
  ( (FloatLiteralValue!17476 (text!61611 List!57653)) (TokenValueExt!8737 (__x!34769 Int)) (Broken!43690 (value!269596 List!57653)) (Object!8861) (End!8738) (Def!8738) (Underscore!8738) (Match!8738) (Else!8738) (Error!8738) (Case!8738) (If!8738) (Extends!8738) (Abstract!8738) (Class!8738) (Val!8738) (DelimiterValue!17476 (del!8798 List!57653)) (KeywordValue!8744 (value!269597 List!57653)) (CommentValue!17476 (value!269598 List!57653)) (WhitespaceValue!17476 (value!269599 List!57653)) (IndentationValue!8738 (value!269600 List!57653)) (String!65563) (Int32!8738) (Broken!43691 (value!269601 List!57653)) (Boolean!8739) (Unit!148519) (OperatorValue!8741 (op!8798 List!57653)) (IdentifierValue!17476 (value!269602 List!57653)) (IdentifierValue!17477 (value!269603 List!57653)) (WhitespaceValue!17477 (value!269604 List!57653)) (True!17476) (False!17476) (Broken!43692 (value!269605 List!57653)) (Broken!43693 (value!269606 List!57653)) (True!17477) (RightBrace!8738) (RightBracket!8738) (Colon!8738) (Null!8738) (Comma!8738) (LeftBracket!8738) (False!17477) (LeftBrace!8738) (ImaginaryLiteralValue!8738 (text!61612 List!57653)) (StringLiteralValue!26214 (value!269607 List!57653)) (EOFValue!8738 (value!269608 List!57653)) (IdentValue!8738 (value!269609 List!57653)) (DelimiterValue!17477 (value!269610 List!57653)) (DedentValue!8738 (value!269611 List!57653)) (NewLineValue!8738 (value!269612 List!57653)) (IntegerValue!26214 (value!269613 (_ BitVec 32)) (text!61613 List!57653)) (IntegerValue!26215 (value!269614 Int) (text!61614 List!57653)) (Times!8738) (Or!8738) (Equal!8738) (Minus!8738) (Broken!43694 (value!269615 List!57653)) (And!8738) (Div!8738) (LessEqual!8738) (Mod!8738) (Concat!22399) (Not!8738) (Plus!8738) (SpaceValue!8738 (value!269616 List!57653)) (IntegerValue!26216 (value!269617 Int) (text!61615 List!57653)) (StringLiteralValue!26215 (text!61616 List!57653)) (FloatLiteralValue!17477 (text!61617 List!57653)) (BytesLiteralValue!8738 (value!269618 List!57653)) (CommentValue!17477 (value!269619 List!57653)) (StringLiteralValue!26216 (value!269620 List!57653)) (ErrorTokenValue!8738 (msg!8799 List!57653)) )
))
(declare-datatypes ((TokenValueInjection!16784 0))(
  ( (TokenValueInjection!16785 (toValue!11403 Int) (toChars!11262 Int)) )
))
(declare-datatypes ((Regex!13661 0))(
  ( (ElementMatch!13661 (c!849232 C!27572)) (Concat!22400 (regOne!27834 Regex!13661) (regTwo!27834 Regex!13661)) (EmptyExpr!13661) (Star!13661 (reg!13990 Regex!13661)) (EmptyLang!13661) (Union!13661 (regOne!27835 Regex!13661) (regTwo!27835 Regex!13661)) )
))
(declare-datatypes ((String!65564 0))(
  ( (String!65565 (value!269621 String)) )
))
(declare-datatypes ((Rule!16656 0))(
  ( (Rule!16657 (regex!8428 Regex!13661) (tag!9292 String!65564) (isSeparator!8428 Bool) (transformation!8428 TokenValueInjection!16784)) )
))
(declare-fun rule!200 () Rule!16656)

(declare-fun dynLambda!23252 (Int Int) Int)

(declare-fun dynLambda!23253 (Int Int) Int)

(assert (=> b!4977168 (< (dynLambda!23252 order!26321 (toValue!11403 (transformation!8428 rule!200))) (dynLambda!23253 order!26323 lambda!247626))))

(declare-fun order!26325 () Int)

(declare-fun dynLambda!23254 (Int Int) Int)

(assert (=> b!4977168 (< (dynLambda!23254 order!26325 (toChars!11262 (transformation!8428 rule!200))) (dynLambda!23253 order!26323 lambda!247626))))

(declare-fun b!4977147 () Bool)

(declare-fun e!3110741 () Bool)

(declare-datatypes ((tuple2!62320 0))(
  ( (tuple2!62321 (_1!34463 List!57652) (_2!34463 List!57652)) )
))
(declare-fun lt!2055479 () tuple2!62320)

(declare-fun matchR!6655 (Regex!13661 List!57652) Bool)

(assert (=> b!4977147 (= e!3110741 (matchR!6655 (regex!8428 rule!200) (_1!34463 lt!2055479)))))

(declare-fun b!4977148 () Bool)

(declare-fun e!3110744 () Bool)

(declare-fun e!3110749 () Bool)

(assert (=> b!4977148 (= e!3110744 (not e!3110749))))

(declare-fun res!2124601 () Bool)

(assert (=> b!4977148 (=> res!2124601 e!3110749)))

(declare-fun semiInverseModEq!3721 (Int Int) Bool)

(assert (=> b!4977148 (= res!2124601 (not (semiInverseModEq!3721 (toChars!11262 (transformation!8428 rule!200)) (toValue!11403 (transformation!8428 rule!200)))))))

(declare-datatypes ((Unit!148520 0))(
  ( (Unit!148521) )
))
(declare-fun lt!2055486 () Unit!148520)

(declare-fun lemmaInv!1351 (TokenValueInjection!16784) Unit!148520)

(assert (=> b!4977148 (= lt!2055486 (lemmaInv!1351 (transformation!8428 rule!200)))))

(assert (=> b!4977148 e!3110741))

(declare-fun res!2124609 () Bool)

(assert (=> b!4977148 (=> res!2124609 e!3110741)))

(declare-fun isEmpty!31017 (List!57652) Bool)

(assert (=> b!4977148 (= res!2124609 (isEmpty!31017 (_1!34463 lt!2055479)))))

(declare-fun lt!2055483 () List!57652)

(declare-fun findLongestMatchInner!1872 (Regex!13661 List!57652 Int List!57652 List!57652 Int) tuple2!62320)

(declare-fun size!38131 (List!57652) Int)

(assert (=> b!4977148 (= lt!2055479 (findLongestMatchInner!1872 (regex!8428 rule!200) Nil!57528 (size!38131 Nil!57528) lt!2055483 lt!2055483 (size!38131 lt!2055483)))))

(declare-fun lt!2055485 () Unit!148520)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1833 (Regex!13661 List!57652) Unit!148520)

(assert (=> b!4977148 (= lt!2055485 (longestMatchIsAcceptedByMatchOrIsEmpty!1833 (regex!8428 rule!200) lt!2055483))))

(declare-fun b!4977149 () Bool)

(declare-fun e!3110747 () Bool)

(declare-fun totalInput!520 () BalanceConc!29790)

(declare-fun tp!1395702 () Bool)

(declare-fun inv!75270 (Conc!15180) Bool)

(assert (=> b!4977149 (= e!3110747 (and (inv!75270 (c!849231 totalInput!520)) tp!1395702))))

(declare-fun b!4977150 () Bool)

(declare-fun e!3110739 () Bool)

(declare-fun input!1580 () BalanceConc!29790)

(declare-fun tp!1395701 () Bool)

(assert (=> b!4977150 (= e!3110739 (and (inv!75270 (c!849231 input!1580)) tp!1395701))))

(declare-fun b!4977151 () Bool)

(declare-fun e!3110743 () Bool)

(declare-fun e!3110742 () Bool)

(assert (=> b!4977151 (= e!3110743 e!3110742)))

(declare-fun res!2124604 () Bool)

(assert (=> b!4977151 (=> (not res!2124604) (not e!3110742))))

(declare-fun isSuffix!1227 (List!57652 List!57652) Bool)

(declare-fun list!18420 (BalanceConc!29790) List!57652)

(assert (=> b!4977151 (= res!2124604 (isSuffix!1227 lt!2055483 (list!18420 totalInput!520)))))

(assert (=> b!4977151 (= lt!2055483 (list!18420 input!1580))))

(declare-fun res!2124602 () Bool)

(assert (=> start!525154 (=> (not res!2124602) (not e!3110743))))

(declare-datatypes ((LexerInterface!8020 0))(
  ( (LexerInterfaceExt!8017 (__x!34770 Int)) (Lexer!8018) )
))
(declare-fun thiss!16165 () LexerInterface!8020)

(get-info :version)

(assert (=> start!525154 (= res!2124602 ((_ is Lexer!8018) thiss!16165))))

(assert (=> start!525154 e!3110743))

(assert (=> start!525154 true))

(declare-fun e!3110748 () Bool)

(assert (=> start!525154 e!3110748))

(declare-fun inv!75271 (BalanceConc!29790) Bool)

(assert (=> start!525154 (and (inv!75271 totalInput!520) e!3110747)))

(assert (=> start!525154 (and (inv!75271 input!1580) e!3110739)))

(declare-fun b!4977152 () Bool)

(declare-fun res!2124607 () Bool)

(declare-fun e!3110746 () Bool)

(assert (=> b!4977152 (=> res!2124607 e!3110746)))

(declare-fun lt!2055489 () Bool)

(assert (=> b!4977152 (= res!2124607 (not lt!2055489))))

(declare-fun tp!1395699 () Bool)

(declare-fun b!4977153 () Bool)

(declare-fun e!3110740 () Bool)

(declare-fun inv!75266 (String!65564) Bool)

(declare-fun inv!75272 (TokenValueInjection!16784) Bool)

(assert (=> b!4977153 (= e!3110748 (and tp!1395699 (inv!75266 (tag!9292 rule!200)) (inv!75272 (transformation!8428 rule!200)) e!3110740))))

(declare-fun b!4977154 () Bool)

(declare-fun res!2124606 () Bool)

(assert (=> b!4977154 (=> (not res!2124606) (not e!3110743))))

(declare-fun ruleValid!3836 (LexerInterface!8020 Rule!16656) Bool)

(assert (=> b!4977154 (= res!2124606 (ruleValid!3836 thiss!16165 rule!200))))

(declare-fun res!2124603 () Bool)

(assert (=> b!4977155 (=> res!2124603 e!3110749)))

(declare-fun Forall!1778 (Int) Bool)

(assert (=> b!4977155 (= res!2124603 (not (Forall!1778 lambda!247626)))))

(declare-fun b!4977156 () Bool)

(assert (=> b!4977156 (= e!3110749 e!3110746)))

(declare-fun res!2124605 () Bool)

(assert (=> b!4977156 (=> res!2124605 e!3110746)))

(declare-datatypes ((Token!15320 0))(
  ( (Token!15321 (value!269622 TokenValue!8738) (rule!11680 Rule!16656) (size!38132 Int) (originalCharacters!8691 List!57652)) )
))
(declare-datatypes ((tuple2!62322 0))(
  ( (tuple2!62323 (_1!34464 Token!15320) (_2!34464 List!57652)) )
))
(declare-datatypes ((Option!14483 0))(
  ( (None!14482) (Some!14482 (v!50479 tuple2!62322)) )
))
(declare-fun isDefined!11392 (Option!14483) Bool)

(declare-fun maxPrefixOneRule!3648 (LexerInterface!8020 Rule!16656 List!57652) Option!14483)

(assert (=> b!4977156 (= res!2124605 (not (= lt!2055489 (isDefined!11392 (maxPrefixOneRule!3648 thiss!16165 rule!200 lt!2055483)))))))

(declare-fun lt!2055482 () List!57652)

(declare-datatypes ((tuple2!62324 0))(
  ( (tuple2!62325 (_1!34465 BalanceConc!29790) (_2!34465 BalanceConc!29790)) )
))
(declare-fun lt!2055487 () tuple2!62324)

(declare-datatypes ((tuple2!62326 0))(
  ( (tuple2!62327 (_1!34466 Token!15320) (_2!34466 BalanceConc!29790)) )
))
(declare-datatypes ((Option!14484 0))(
  ( (None!14483) (Some!14483 (v!50480 tuple2!62326)) )
))
(declare-fun isDefined!11393 (Option!14484) Bool)

(declare-fun apply!13919 (TokenValueInjection!16784 BalanceConc!29790) TokenValue!8738)

(declare-fun size!38133 (BalanceConc!29790) Int)

(assert (=> b!4977156 (= lt!2055489 (isDefined!11393 (Some!14483 (tuple2!62327 (Token!15321 (apply!13919 (transformation!8428 rule!200) (_1!34465 lt!2055487)) rule!200 (size!38133 (_1!34465 lt!2055487)) lt!2055482) (_2!34465 lt!2055487)))))))

(declare-fun lt!2055480 () Unit!148520)

(declare-fun lt!2055488 () BalanceConc!29790)

(declare-fun ForallOf!1242 (Int BalanceConc!29790) Unit!148520)

(assert (=> b!4977156 (= lt!2055480 (ForallOf!1242 lambda!247626 lt!2055488))))

(declare-fun seqFromList!6053 (List!57652) BalanceConc!29790)

(assert (=> b!4977156 (= lt!2055488 (seqFromList!6053 lt!2055482))))

(assert (=> b!4977156 (= lt!2055482 (list!18420 (_1!34465 lt!2055487)))))

(declare-fun lt!2055490 () Unit!148520)

(assert (=> b!4977156 (= lt!2055490 (ForallOf!1242 lambda!247626 (_1!34465 lt!2055487)))))

(declare-fun b!4977157 () Bool)

(declare-fun res!2124608 () Bool)

(assert (=> b!4977157 (=> res!2124608 e!3110746)))

(assert (=> b!4977157 (= res!2124608 (not (= (list!18420 lt!2055488) lt!2055482)))))

(declare-fun b!4977158 () Bool)

(assert (=> b!4977158 (= e!3110742 e!3110744)))

(declare-fun res!2124600 () Bool)

(assert (=> b!4977158 (=> (not res!2124600) (not e!3110744))))

(declare-fun isEmpty!31018 (BalanceConc!29790) Bool)

(assert (=> b!4977158 (= res!2124600 (not (isEmpty!31018 (_1!34465 lt!2055487))))))

(declare-fun findLongestMatchWithZipperSequenceV2!191 (Regex!13661 BalanceConc!29790 BalanceConc!29790) tuple2!62324)

(assert (=> b!4977158 (= lt!2055487 (findLongestMatchWithZipperSequenceV2!191 (regex!8428 rule!200) input!1580 totalInput!520))))

(assert (=> b!4977159 (= e!3110740 (and tp!1395700 tp!1395698))))

(declare-fun b!4977160 () Bool)

(assert (=> b!4977160 (= e!3110746 true)))

(declare-fun lt!2055484 () TokenValue!8738)

(assert (=> b!4977160 (= lt!2055484 (apply!13919 (transformation!8428 rule!200) lt!2055488))))

(declare-fun lt!2055481 () Unit!148520)

(declare-fun lemmaEqSameImage!1177 (TokenValueInjection!16784 BalanceConc!29790 BalanceConc!29790) Unit!148520)

(assert (=> b!4977160 (= lt!2055481 (lemmaEqSameImage!1177 (transformation!8428 rule!200) (_1!34465 lt!2055487) lt!2055488))))

(assert (= (and start!525154 res!2124602) b!4977154))

(assert (= (and b!4977154 res!2124606) b!4977151))

(assert (= (and b!4977151 res!2124604) b!4977158))

(assert (= (and b!4977158 res!2124600) b!4977148))

(assert (= (and b!4977148 (not res!2124609)) b!4977147))

(assert (= (and b!4977148 (not res!2124601)) b!4977155))

(assert (= (and b!4977155 (not res!2124603)) b!4977156))

(assert (= (and b!4977156 (not res!2124605)) b!4977152))

(assert (= (and b!4977152 (not res!2124607)) b!4977157))

(assert (= (and b!4977157 (not res!2124608)) b!4977160))

(assert (= b!4977153 b!4977159))

(assert (= start!525154 b!4977153))

(assert (= start!525154 b!4977149))

(assert (= start!525154 b!4977150))

(declare-fun m!6007440 () Bool)

(assert (=> b!4977155 m!6007440))

(declare-fun m!6007442 () Bool)

(assert (=> b!4977147 m!6007442))

(declare-fun m!6007444 () Bool)

(assert (=> b!4977160 m!6007444))

(declare-fun m!6007446 () Bool)

(assert (=> b!4977160 m!6007446))

(declare-fun m!6007448 () Bool)

(assert (=> b!4977150 m!6007448))

(declare-fun m!6007450 () Bool)

(assert (=> b!4977157 m!6007450))

(declare-fun m!6007452 () Bool)

(assert (=> start!525154 m!6007452))

(declare-fun m!6007454 () Bool)

(assert (=> start!525154 m!6007454))

(declare-fun m!6007456 () Bool)

(assert (=> b!4977158 m!6007456))

(declare-fun m!6007458 () Bool)

(assert (=> b!4977158 m!6007458))

(declare-fun m!6007460 () Bool)

(assert (=> b!4977148 m!6007460))

(declare-fun m!6007462 () Bool)

(assert (=> b!4977148 m!6007462))

(declare-fun m!6007464 () Bool)

(assert (=> b!4977148 m!6007464))

(declare-fun m!6007466 () Bool)

(assert (=> b!4977148 m!6007466))

(assert (=> b!4977148 m!6007464))

(declare-fun m!6007468 () Bool)

(assert (=> b!4977148 m!6007468))

(assert (=> b!4977148 m!6007466))

(declare-fun m!6007470 () Bool)

(assert (=> b!4977148 m!6007470))

(declare-fun m!6007472 () Bool)

(assert (=> b!4977148 m!6007472))

(declare-fun m!6007474 () Bool)

(assert (=> b!4977151 m!6007474))

(assert (=> b!4977151 m!6007474))

(declare-fun m!6007476 () Bool)

(assert (=> b!4977151 m!6007476))

(declare-fun m!6007478 () Bool)

(assert (=> b!4977151 m!6007478))

(declare-fun m!6007480 () Bool)

(assert (=> b!4977153 m!6007480))

(declare-fun m!6007482 () Bool)

(assert (=> b!4977153 m!6007482))

(declare-fun m!6007484 () Bool)

(assert (=> b!4977156 m!6007484))

(declare-fun m!6007486 () Bool)

(assert (=> b!4977156 m!6007486))

(declare-fun m!6007488 () Bool)

(assert (=> b!4977156 m!6007488))

(declare-fun m!6007490 () Bool)

(assert (=> b!4977156 m!6007490))

(declare-fun m!6007492 () Bool)

(assert (=> b!4977156 m!6007492))

(declare-fun m!6007494 () Bool)

(assert (=> b!4977156 m!6007494))

(declare-fun m!6007496 () Bool)

(assert (=> b!4977156 m!6007496))

(assert (=> b!4977156 m!6007488))

(declare-fun m!6007498 () Bool)

(assert (=> b!4977156 m!6007498))

(declare-fun m!6007500 () Bool)

(assert (=> b!4977156 m!6007500))

(declare-fun m!6007502 () Bool)

(assert (=> b!4977154 m!6007502))

(declare-fun m!6007504 () Bool)

(assert (=> b!4977149 m!6007504))

(check-sat (not b!4977156) (not b_next!133803) (not b!4977155) (not b!4977147) (not b!4977160) (not b!4977149) (not start!525154) (not b_next!133801) (not b!4977150) (not b!4977154) b_and!349423 (not b!4977158) b_and!349425 (not b!4977157) (not b!4977148) (not b!4977151) (not b!4977153))
(check-sat b_and!349425 b_and!349423 (not b_next!133803) (not b_next!133801))
