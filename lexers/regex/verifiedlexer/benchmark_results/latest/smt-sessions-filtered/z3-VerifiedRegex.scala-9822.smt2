; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!513616 () Bool)

(assert start!513616)

(declare-fun b!4902370 () Bool)

(declare-fun b_free!131819 () Bool)

(declare-fun b_next!132609 () Bool)

(assert (=> b!4902370 (= b_free!131819 (not b_next!132609))))

(declare-fun tp!1379391 () Bool)

(declare-fun b_and!346211 () Bool)

(assert (=> b!4902370 (= tp!1379391 b_and!346211)))

(declare-fun b_free!131821 () Bool)

(declare-fun b_next!132611 () Bool)

(assert (=> b!4902370 (= b_free!131821 (not b_next!132611))))

(declare-fun tp!1379388 () Bool)

(declare-fun b_and!346213 () Bool)

(assert (=> b!4902370 (= tp!1379388 b_and!346213)))

(declare-fun b!4902383 () Bool)

(declare-fun e!3064508 () Bool)

(assert (=> b!4902383 (= e!3064508 true)))

(declare-fun b!4902382 () Bool)

(declare-fun e!3064507 () Bool)

(assert (=> b!4902382 (= e!3064507 e!3064508)))

(declare-fun b!4902364 () Bool)

(assert (=> b!4902364 e!3064507))

(assert (= b!4902382 b!4902383))

(assert (= b!4902364 b!4902382))

(declare-fun order!25621 () Int)

(declare-fun order!25623 () Int)

(declare-fun lambda!244318 () Int)

(declare-datatypes ((C!26772 0))(
  ( (C!26773 (val!22720 Int)) )
))
(declare-datatypes ((Regex!13287 0))(
  ( (ElementMatch!13287 (c!833187 C!26772)) (Concat!21809 (regOne!27086 Regex!13287) (regTwo!27086 Regex!13287)) (EmptyExpr!13287) (Star!13287 (reg!13616 Regex!13287)) (EmptyLang!13287) (Union!13287 (regOne!27087 Regex!13287) (regTwo!27087 Regex!13287)) )
))
(declare-datatypes ((String!64051 0))(
  ( (String!64052 (value!263152 String)) )
))
(declare-datatypes ((List!56622 0))(
  ( (Nil!56498) (Cons!56498 (h!62946 (_ BitVec 16)) (t!366714 List!56622)) )
))
(declare-datatypes ((TokenValue!8522 0))(
  ( (FloatLiteralValue!17044 (text!60099 List!56622)) (TokenValueExt!8521 (__x!34337 Int)) (Broken!42610 (value!263153 List!56622)) (Object!8645) (End!8522) (Def!8522) (Underscore!8522) (Match!8522) (Else!8522) (Error!8522) (Case!8522) (If!8522) (Extends!8522) (Abstract!8522) (Class!8522) (Val!8522) (DelimiterValue!17044 (del!8582 List!56622)) (KeywordValue!8528 (value!263154 List!56622)) (CommentValue!17044 (value!263155 List!56622)) (WhitespaceValue!17044 (value!263156 List!56622)) (IndentationValue!8522 (value!263157 List!56622)) (String!64053) (Int32!8522) (Broken!42611 (value!263158 List!56622)) (Boolean!8523) (Unit!146604) (OperatorValue!8525 (op!8582 List!56622)) (IdentifierValue!17044 (value!263159 List!56622)) (IdentifierValue!17045 (value!263160 List!56622)) (WhitespaceValue!17045 (value!263161 List!56622)) (True!17044) (False!17044) (Broken!42612 (value!263162 List!56622)) (Broken!42613 (value!263163 List!56622)) (True!17045) (RightBrace!8522) (RightBracket!8522) (Colon!8522) (Null!8522) (Comma!8522) (LeftBracket!8522) (False!17045) (LeftBrace!8522) (ImaginaryLiteralValue!8522 (text!60100 List!56622)) (StringLiteralValue!25566 (value!263164 List!56622)) (EOFValue!8522 (value!263165 List!56622)) (IdentValue!8522 (value!263166 List!56622)) (DelimiterValue!17045 (value!263167 List!56622)) (DedentValue!8522 (value!263168 List!56622)) (NewLineValue!8522 (value!263169 List!56622)) (IntegerValue!25566 (value!263170 (_ BitVec 32)) (text!60101 List!56622)) (IntegerValue!25567 (value!263171 Int) (text!60102 List!56622)) (Times!8522) (Or!8522) (Equal!8522) (Minus!8522) (Broken!42614 (value!263172 List!56622)) (And!8522) (Div!8522) (LessEqual!8522) (Mod!8522) (Concat!21810) (Not!8522) (Plus!8522) (SpaceValue!8522 (value!263173 List!56622)) (IntegerValue!25568 (value!263174 Int) (text!60103 List!56622)) (StringLiteralValue!25567 (text!60104 List!56622)) (FloatLiteralValue!17045 (text!60105 List!56622)) (BytesLiteralValue!8522 (value!263175 List!56622)) (CommentValue!17045 (value!263176 List!56622)) (StringLiteralValue!25568 (value!263177 List!56622)) (ErrorTokenValue!8522 (msg!8583 List!56622)) )
))
(declare-datatypes ((List!56623 0))(
  ( (Nil!56499) (Cons!56499 (h!62947 C!26772) (t!366715 List!56623)) )
))
(declare-datatypes ((IArray!29621 0))(
  ( (IArray!29622 (innerList!14868 List!56623)) )
))
(declare-datatypes ((Conc!14780 0))(
  ( (Node!14780 (left!41088 Conc!14780) (right!41418 Conc!14780) (csize!29790 Int) (cheight!14991 Int)) (Leaf!24603 (xs!18096 IArray!29621) (csize!29791 Int)) (Empty!14780) )
))
(declare-datatypes ((BalanceConc!28990 0))(
  ( (BalanceConc!28991 (c!833188 Conc!14780)) )
))
(declare-datatypes ((TokenValueInjection!16352 0))(
  ( (TokenValueInjection!16353 (toValue!11123 Int) (toChars!10982 Int)) )
))
(declare-datatypes ((Rule!16224 0))(
  ( (Rule!16225 (regex!8212 Regex!13287) (tag!9076 String!64051) (isSeparator!8212 Bool) (transformation!8212 TokenValueInjection!16352)) )
))
(declare-fun rule!164 () Rule!16224)

(declare-fun dynLambda!22744 (Int Int) Int)

(declare-fun dynLambda!22745 (Int Int) Int)

(assert (=> b!4902383 (< (dynLambda!22744 order!25621 (toValue!11123 (transformation!8212 rule!164))) (dynLambda!22745 order!25623 lambda!244318))))

(declare-fun order!25625 () Int)

(declare-fun dynLambda!22746 (Int Int) Int)

(assert (=> b!4902383 (< (dynLambda!22746 order!25625 (toChars!10982 (transformation!8212 rule!164))) (dynLambda!22745 order!25623 lambda!244318))))

(declare-fun b!4902363 () Bool)

(declare-fun e!3064495 () Bool)

(declare-fun lt!2010425 () Bool)

(assert (=> b!4902363 (= e!3064495 lt!2010425)))

(declare-fun res!2094035 () Bool)

(declare-fun e!3064501 () Bool)

(assert (=> b!4902364 (=> res!2094035 e!3064501)))

(declare-fun Forall!1709 (Int) Bool)

(assert (=> b!4902364 (= res!2094035 (not (Forall!1709 lambda!244318)))))

(declare-fun b!4902365 () Bool)

(declare-fun res!2094039 () Bool)

(declare-fun e!3064502 () Bool)

(assert (=> b!4902365 (=> (not res!2094039) (not e!3064502))))

(declare-datatypes ((LexerInterface!7804 0))(
  ( (LexerInterfaceExt!7801 (__x!34338 Int)) (Lexer!7802) )
))
(declare-fun thiss!15943 () LexerInterface!7804)

(declare-fun ruleValid!3709 (LexerInterface!7804 Rule!16224) Bool)

(assert (=> b!4902365 (= res!2094039 (ruleValid!3709 thiss!15943 rule!164))))

(declare-fun b!4902366 () Bool)

(declare-fun e!3064497 () Bool)

(assert (=> b!4902366 (= e!3064497 e!3064495)))

(declare-fun res!2094040 () Bool)

(assert (=> b!4902366 (=> res!2094040 e!3064495)))

(declare-fun lt!2010416 () BalanceConc!28990)

(declare-fun lt!2010419 () TokenValue!8522)

(declare-fun apply!13560 (TokenValueInjection!16352 BalanceConc!28990) TokenValue!8522)

(assert (=> b!4902366 (= res!2094040 (not (= (apply!13560 (transformation!8212 rule!164) lt!2010416) lt!2010419)))))

(declare-datatypes ((Unit!146605 0))(
  ( (Unit!146606) )
))
(declare-fun lt!2010414 () Unit!146605)

(declare-datatypes ((tuple2!60644 0))(
  ( (tuple2!60645 (_1!33625 BalanceConc!28990) (_2!33625 BalanceConc!28990)) )
))
(declare-fun lt!2010421 () tuple2!60644)

(declare-fun lemmaEqSameImage!1104 (TokenValueInjection!16352 BalanceConc!28990 BalanceConc!28990) Unit!146605)

(assert (=> b!4902366 (= lt!2010414 (lemmaEqSameImage!1104 (transformation!8212 rule!164) (_1!33625 lt!2010421) lt!2010416))))

(declare-fun res!2094042 () Bool)

(assert (=> start!513616 (=> (not res!2094042) (not e!3064502))))

(get-info :version)

(assert (=> start!513616 (= res!2094042 ((_ is Lexer!7802) thiss!15943))))

(assert (=> start!513616 e!3064502))

(assert (=> start!513616 true))

(declare-fun e!3064498 () Bool)

(assert (=> start!513616 e!3064498))

(declare-fun input!1509 () BalanceConc!28990)

(declare-fun e!3064494 () Bool)

(declare-fun inv!72885 (BalanceConc!28990) Bool)

(assert (=> start!513616 (and (inv!72885 input!1509) e!3064494)))

(declare-fun b!4902367 () Bool)

(declare-fun res!2094037 () Bool)

(assert (=> b!4902367 (=> res!2094037 e!3064497)))

(declare-fun lt!2010413 () List!56623)

(declare-fun list!17782 (BalanceConc!28990) List!56623)

(assert (=> b!4902367 (= res!2094037 (not (= (list!17782 lt!2010416) lt!2010413)))))

(declare-fun b!4902368 () Bool)

(assert (=> b!4902368 (= e!3064501 e!3064497)))

(declare-fun res!2094041 () Bool)

(assert (=> b!4902368 (=> res!2094041 e!3064497)))

(declare-fun lt!2010422 () Bool)

(assert (=> b!4902368 (= res!2094041 (or (not (= lt!2010422 lt!2010425)) (not lt!2010422)))))

(declare-datatypes ((Token!14960 0))(
  ( (Token!14961 (value!263178 TokenValue!8522) (rule!11412 Rule!16224) (size!37216 Int) (originalCharacters!8511 List!56623)) )
))
(declare-datatypes ((tuple2!60646 0))(
  ( (tuple2!60647 (_1!33626 Token!14960) (_2!33626 List!56623)) )
))
(declare-datatypes ((Option!14069 0))(
  ( (None!14068) (Some!14068 (v!50030 tuple2!60646)) )
))
(declare-fun lt!2010411 () Option!14069)

(declare-fun isDefined!11078 (Option!14069) Bool)

(assert (=> b!4902368 (= lt!2010425 (isDefined!11078 lt!2010411))))

(declare-fun lt!2010420 () Int)

(declare-datatypes ((tuple2!60648 0))(
  ( (tuple2!60649 (_1!33627 Token!14960) (_2!33627 BalanceConc!28990)) )
))
(declare-datatypes ((Option!14070 0))(
  ( (None!14069) (Some!14069 (v!50031 tuple2!60648)) )
))
(declare-fun isDefined!11079 (Option!14070) Bool)

(assert (=> b!4902368 (= lt!2010422 (isDefined!11079 (Some!14069 (tuple2!60649 (Token!14961 lt!2010419 rule!164 lt!2010420 lt!2010413) (_2!33625 lt!2010421)))))))

(declare-fun lt!2010417 () List!56623)

(declare-fun maxPrefixOneRule!3553 (LexerInterface!7804 Rule!16224 List!56623) Option!14069)

(assert (=> b!4902368 (= lt!2010411 (maxPrefixOneRule!3553 thiss!15943 rule!164 lt!2010417))))

(declare-fun size!37217 (BalanceConc!28990) Int)

(assert (=> b!4902368 (= lt!2010420 (size!37217 (_1!33625 lt!2010421)))))

(assert (=> b!4902368 (= lt!2010419 (apply!13560 (transformation!8212 rule!164) (_1!33625 lt!2010421)))))

(declare-fun lt!2010415 () Unit!146605)

(declare-fun ForallOf!1153 (Int BalanceConc!28990) Unit!146605)

(assert (=> b!4902368 (= lt!2010415 (ForallOf!1153 lambda!244318 lt!2010416))))

(declare-fun seqFromList!5958 (List!56623) BalanceConc!28990)

(assert (=> b!4902368 (= lt!2010416 (seqFromList!5958 lt!2010413))))

(assert (=> b!4902368 (= lt!2010413 (list!17782 (_1!33625 lt!2010421)))))

(declare-fun lt!2010423 () Unit!146605)

(assert (=> b!4902368 (= lt!2010423 (ForallOf!1153 lambda!244318 (_1!33625 lt!2010421)))))

(declare-fun b!4902369 () Bool)

(declare-fun e!3064496 () Bool)

(assert (=> b!4902369 (= e!3064496 (not e!3064501))))

(declare-fun res!2094038 () Bool)

(assert (=> b!4902369 (=> res!2094038 e!3064501)))

(declare-fun semiInverseModEq!3613 (Int Int) Bool)

(assert (=> b!4902369 (= res!2094038 (not (semiInverseModEq!3613 (toChars!10982 (transformation!8212 rule!164)) (toValue!11123 (transformation!8212 rule!164)))))))

(declare-fun lt!2010412 () Unit!146605)

(declare-fun lemmaInv!1258 (TokenValueInjection!16352) Unit!146605)

(assert (=> b!4902369 (= lt!2010412 (lemmaInv!1258 (transformation!8212 rule!164)))))

(declare-fun e!3064493 () Bool)

(assert (=> b!4902369 e!3064493))

(declare-fun res!2094036 () Bool)

(assert (=> b!4902369 (=> res!2094036 e!3064493)))

(declare-datatypes ((tuple2!60650 0))(
  ( (tuple2!60651 (_1!33628 List!56623) (_2!33628 List!56623)) )
))
(declare-fun lt!2010418 () tuple2!60650)

(declare-fun isEmpty!30359 (List!56623) Bool)

(assert (=> b!4902369 (= res!2094036 (isEmpty!30359 (_1!33628 lt!2010418)))))

(declare-fun findLongestMatchInner!1775 (Regex!13287 List!56623 Int List!56623 List!56623 Int) tuple2!60650)

(declare-fun size!37218 (List!56623) Int)

(assert (=> b!4902369 (= lt!2010418 (findLongestMatchInner!1775 (regex!8212 rule!164) Nil!56499 (size!37218 Nil!56499) lt!2010417 lt!2010417 (size!37218 lt!2010417)))))

(declare-fun lt!2010424 () Unit!146605)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1738 (Regex!13287 List!56623) Unit!146605)

(assert (=> b!4902369 (= lt!2010424 (longestMatchIsAcceptedByMatchOrIsEmpty!1738 (regex!8212 rule!164) lt!2010417))))

(assert (=> b!4902369 (= lt!2010417 (list!17782 input!1509))))

(declare-fun e!3064499 () Bool)

(assert (=> b!4902370 (= e!3064499 (and tp!1379391 tp!1379388))))

(declare-fun b!4902371 () Bool)

(assert (=> b!4902371 (= e!3064502 e!3064496)))

(declare-fun res!2094033 () Bool)

(assert (=> b!4902371 (=> (not res!2094033) (not e!3064496))))

(declare-fun isEmpty!30360 (BalanceConc!28990) Bool)

(assert (=> b!4902371 (= res!2094033 (not (isEmpty!30360 (_1!33625 lt!2010421))))))

(declare-fun findLongestMatchWithZipperSequence!300 (Regex!13287 BalanceConc!28990) tuple2!60644)

(assert (=> b!4902371 (= lt!2010421 (findLongestMatchWithZipperSequence!300 (regex!8212 rule!164) input!1509))))

(declare-fun tp!1379390 () Bool)

(declare-fun b!4902372 () Bool)

(declare-fun inv!72881 (String!64051) Bool)

(declare-fun inv!72886 (TokenValueInjection!16352) Bool)

(assert (=> b!4902372 (= e!3064498 (and tp!1379390 (inv!72881 (tag!9076 rule!164)) (inv!72886 (transformation!8212 rule!164)) e!3064499))))

(declare-fun b!4902373 () Bool)

(declare-fun tp!1379389 () Bool)

(declare-fun inv!72887 (Conc!14780) Bool)

(assert (=> b!4902373 (= e!3064494 (and (inv!72887 (c!833188 input!1509)) tp!1379389))))

(declare-fun b!4902374 () Bool)

(declare-fun matchR!6554 (Regex!13287 List!56623) Bool)

(assert (=> b!4902374 (= e!3064493 (matchR!6554 (regex!8212 rule!164) (_1!33628 lt!2010418)))))

(declare-fun b!4902375 () Bool)

(declare-fun res!2094034 () Bool)

(assert (=> b!4902375 (=> res!2094034 e!3064495)))

(declare-fun get!19524 (Option!14069) tuple2!60646)

(assert (=> b!4902375 (= res!2094034 (not (= (value!263178 (_1!33626 (get!19524 lt!2010411))) lt!2010419)))))

(assert (= (and start!513616 res!2094042) b!4902365))

(assert (= (and b!4902365 res!2094039) b!4902371))

(assert (= (and b!4902371 res!2094033) b!4902369))

(assert (= (and b!4902369 (not res!2094036)) b!4902374))

(assert (= (and b!4902369 (not res!2094038)) b!4902364))

(assert (= (and b!4902364 (not res!2094035)) b!4902368))

(assert (= (and b!4902368 (not res!2094041)) b!4902367))

(assert (= (and b!4902367 (not res!2094037)) b!4902366))

(assert (= (and b!4902366 (not res!2094040)) b!4902375))

(assert (= (and b!4902375 (not res!2094034)) b!4902363))

(assert (= b!4902372 b!4902370))

(assert (= start!513616 b!4902372))

(assert (= start!513616 b!4902373))

(declare-fun m!5911114 () Bool)

(assert (=> b!4902364 m!5911114))

(declare-fun m!5911116 () Bool)

(assert (=> b!4902373 m!5911116))

(declare-fun m!5911118 () Bool)

(assert (=> start!513616 m!5911118))

(declare-fun m!5911120 () Bool)

(assert (=> b!4902366 m!5911120))

(declare-fun m!5911122 () Bool)

(assert (=> b!4902366 m!5911122))

(declare-fun m!5911124 () Bool)

(assert (=> b!4902369 m!5911124))

(declare-fun m!5911126 () Bool)

(assert (=> b!4902369 m!5911126))

(assert (=> b!4902369 m!5911126))

(declare-fun m!5911128 () Bool)

(assert (=> b!4902369 m!5911128))

(declare-fun m!5911130 () Bool)

(assert (=> b!4902369 m!5911130))

(declare-fun m!5911132 () Bool)

(assert (=> b!4902369 m!5911132))

(declare-fun m!5911134 () Bool)

(assert (=> b!4902369 m!5911134))

(declare-fun m!5911136 () Bool)

(assert (=> b!4902369 m!5911136))

(declare-fun m!5911138 () Bool)

(assert (=> b!4902369 m!5911138))

(assert (=> b!4902369 m!5911128))

(declare-fun m!5911140 () Bool)

(assert (=> b!4902365 m!5911140))

(declare-fun m!5911142 () Bool)

(assert (=> b!4902368 m!5911142))

(declare-fun m!5911144 () Bool)

(assert (=> b!4902368 m!5911144))

(declare-fun m!5911146 () Bool)

(assert (=> b!4902368 m!5911146))

(declare-fun m!5911148 () Bool)

(assert (=> b!4902368 m!5911148))

(declare-fun m!5911150 () Bool)

(assert (=> b!4902368 m!5911150))

(declare-fun m!5911152 () Bool)

(assert (=> b!4902368 m!5911152))

(declare-fun m!5911154 () Bool)

(assert (=> b!4902368 m!5911154))

(declare-fun m!5911156 () Bool)

(assert (=> b!4902368 m!5911156))

(declare-fun m!5911158 () Bool)

(assert (=> b!4902368 m!5911158))

(declare-fun m!5911160 () Bool)

(assert (=> b!4902367 m!5911160))

(declare-fun m!5911162 () Bool)

(assert (=> b!4902374 m!5911162))

(declare-fun m!5911164 () Bool)

(assert (=> b!4902372 m!5911164))

(declare-fun m!5911166 () Bool)

(assert (=> b!4902372 m!5911166))

(declare-fun m!5911168 () Bool)

(assert (=> b!4902375 m!5911168))

(declare-fun m!5911170 () Bool)

(assert (=> b!4902371 m!5911170))

(declare-fun m!5911172 () Bool)

(assert (=> b!4902371 m!5911172))

(check-sat b_and!346213 (not b!4902369) (not start!513616) (not b!4902375) (not b!4902373) (not b!4902365) (not b_next!132611) (not b!4902366) (not b_next!132609) (not b!4902371) (not b!4902367) (not b!4902374) (not b!4902368) (not b!4902364) (not b!4902372) b_and!346211)
(check-sat b_and!346213 b_and!346211 (not b_next!132611) (not b_next!132609))
