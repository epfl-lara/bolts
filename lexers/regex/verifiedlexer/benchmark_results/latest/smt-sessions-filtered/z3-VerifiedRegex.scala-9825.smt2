; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!513628 () Bool)

(assert start!513628)

(declare-fun b!4902637 () Bool)

(declare-fun b_free!131843 () Bool)

(declare-fun b_next!132633 () Bool)

(assert (=> b!4902637 (= b_free!131843 (not b_next!132633))))

(declare-fun tp!1379460 () Bool)

(declare-fun b_and!346235 () Bool)

(assert (=> b!4902637 (= tp!1379460 b_and!346235)))

(declare-fun b_free!131845 () Bool)

(declare-fun b_next!132635 () Bool)

(assert (=> b!4902637 (= b_free!131845 (not b_next!132635))))

(declare-fun tp!1379462 () Bool)

(declare-fun b_and!346237 () Bool)

(assert (=> b!4902637 (= tp!1379462 b_and!346237)))

(declare-fun b!4902647 () Bool)

(declare-fun e!3064724 () Bool)

(assert (=> b!4902647 (= e!3064724 true)))

(declare-fun b!4902646 () Bool)

(declare-fun e!3064723 () Bool)

(assert (=> b!4902646 (= e!3064723 e!3064724)))

(declare-fun b!4902636 () Bool)

(assert (=> b!4902636 e!3064723))

(assert (= b!4902646 b!4902647))

(assert (= b!4902636 b!4902646))

(declare-fun lambda!244360 () Int)

(declare-fun order!25657 () Int)

(declare-datatypes ((C!26784 0))(
  ( (C!26785 (val!22726 Int)) )
))
(declare-datatypes ((Regex!13293 0))(
  ( (ElementMatch!13293 (c!833205 C!26784)) (Concat!21821 (regOne!27098 Regex!13293) (regTwo!27098 Regex!13293)) (EmptyExpr!13293) (Star!13293 (reg!13622 Regex!13293)) (EmptyLang!13293) (Union!13293 (regOne!27099 Regex!13293) (regTwo!27099 Regex!13293)) )
))
(declare-datatypes ((String!64081 0))(
  ( (String!64082 (value!263323 String)) )
))
(declare-datatypes ((List!56634 0))(
  ( (Nil!56510) (Cons!56510 (h!62958 (_ BitVec 16)) (t!366726 List!56634)) )
))
(declare-datatypes ((TokenValue!8528 0))(
  ( (FloatLiteralValue!17056 (text!60141 List!56634)) (TokenValueExt!8527 (__x!34349 Int)) (Broken!42640 (value!263324 List!56634)) (Object!8651) (End!8528) (Def!8528) (Underscore!8528) (Match!8528) (Else!8528) (Error!8528) (Case!8528) (If!8528) (Extends!8528) (Abstract!8528) (Class!8528) (Val!8528) (DelimiterValue!17056 (del!8588 List!56634)) (KeywordValue!8534 (value!263325 List!56634)) (CommentValue!17056 (value!263326 List!56634)) (WhitespaceValue!17056 (value!263327 List!56634)) (IndentationValue!8528 (value!263328 List!56634)) (String!64083) (Int32!8528) (Broken!42641 (value!263329 List!56634)) (Boolean!8529) (Unit!146622) (OperatorValue!8531 (op!8588 List!56634)) (IdentifierValue!17056 (value!263330 List!56634)) (IdentifierValue!17057 (value!263331 List!56634)) (WhitespaceValue!17057 (value!263332 List!56634)) (True!17056) (False!17056) (Broken!42642 (value!263333 List!56634)) (Broken!42643 (value!263334 List!56634)) (True!17057) (RightBrace!8528) (RightBracket!8528) (Colon!8528) (Null!8528) (Comma!8528) (LeftBracket!8528) (False!17057) (LeftBrace!8528) (ImaginaryLiteralValue!8528 (text!60142 List!56634)) (StringLiteralValue!25584 (value!263335 List!56634)) (EOFValue!8528 (value!263336 List!56634)) (IdentValue!8528 (value!263337 List!56634)) (DelimiterValue!17057 (value!263338 List!56634)) (DedentValue!8528 (value!263339 List!56634)) (NewLineValue!8528 (value!263340 List!56634)) (IntegerValue!25584 (value!263341 (_ BitVec 32)) (text!60143 List!56634)) (IntegerValue!25585 (value!263342 Int) (text!60144 List!56634)) (Times!8528) (Or!8528) (Equal!8528) (Minus!8528) (Broken!42644 (value!263343 List!56634)) (And!8528) (Div!8528) (LessEqual!8528) (Mod!8528) (Concat!21822) (Not!8528) (Plus!8528) (SpaceValue!8528 (value!263344 List!56634)) (IntegerValue!25586 (value!263345 Int) (text!60145 List!56634)) (StringLiteralValue!25585 (text!60146 List!56634)) (FloatLiteralValue!17057 (text!60147 List!56634)) (BytesLiteralValue!8528 (value!263346 List!56634)) (CommentValue!17057 (value!263347 List!56634)) (StringLiteralValue!25586 (value!263348 List!56634)) (ErrorTokenValue!8528 (msg!8589 List!56634)) )
))
(declare-datatypes ((List!56635 0))(
  ( (Nil!56511) (Cons!56511 (h!62959 C!26784) (t!366727 List!56635)) )
))
(declare-datatypes ((IArray!29633 0))(
  ( (IArray!29634 (innerList!14874 List!56635)) )
))
(declare-datatypes ((Conc!14786 0))(
  ( (Node!14786 (left!41109 Conc!14786) (right!41439 Conc!14786) (csize!29802 Int) (cheight!14997 Int)) (Leaf!24612 (xs!18102 IArray!29633) (csize!29803 Int)) (Empty!14786) )
))
(declare-datatypes ((BalanceConc!29002 0))(
  ( (BalanceConc!29003 (c!833206 Conc!14786)) )
))
(declare-datatypes ((TokenValueInjection!16364 0))(
  ( (TokenValueInjection!16365 (toValue!11129 Int) (toChars!10988 Int)) )
))
(declare-datatypes ((Rule!16236 0))(
  ( (Rule!16237 (regex!8218 Regex!13293) (tag!9082 String!64081) (isSeparator!8218 Bool) (transformation!8218 TokenValueInjection!16364)) )
))
(declare-fun rule!164 () Rule!16236)

(declare-fun order!25659 () Int)

(declare-fun dynLambda!22762 (Int Int) Int)

(declare-fun dynLambda!22763 (Int Int) Int)

(assert (=> b!4902647 (< (dynLambda!22762 order!25657 (toValue!11129 (transformation!8218 rule!164))) (dynLambda!22763 order!25659 lambda!244360))))

(declare-fun order!25661 () Int)

(declare-fun dynLambda!22764 (Int Int) Int)

(assert (=> b!4902647 (< (dynLambda!22764 order!25661 (toChars!10988 (transformation!8218 rule!164))) (dynLambda!22763 order!25659 lambda!244360))))

(declare-fun b!4902628 () Bool)

(declare-fun e!3064710 () Bool)

(declare-fun e!3064712 () Bool)

(assert (=> b!4902628 (= e!3064710 e!3064712)))

(declare-fun res!2094196 () Bool)

(assert (=> b!4902628 (=> res!2094196 e!3064712)))

(declare-fun lt!2010699 () Bool)

(declare-fun lt!2010700 () Bool)

(assert (=> b!4902628 (= res!2094196 (or (not (= lt!2010699 lt!2010700)) (not lt!2010699)))))

(declare-datatypes ((Token!14972 0))(
  ( (Token!14973 (value!263349 TokenValue!8528) (rule!11418 Rule!16236) (size!37234 Int) (originalCharacters!8517 List!56635)) )
))
(declare-datatypes ((tuple2!60692 0))(
  ( (tuple2!60693 (_1!33649 Token!14972) (_2!33649 List!56635)) )
))
(declare-datatypes ((Option!14081 0))(
  ( (None!14080) (Some!14080 (v!50042 tuple2!60692)) )
))
(declare-fun lt!2010704 () Option!14081)

(declare-fun isDefined!11090 (Option!14081) Bool)

(assert (=> b!4902628 (= lt!2010700 (isDefined!11090 lt!2010704))))

(declare-fun lt!2010711 () List!56635)

(declare-datatypes ((tuple2!60694 0))(
  ( (tuple2!60695 (_1!33650 BalanceConc!29002) (_2!33650 BalanceConc!29002)) )
))
(declare-fun lt!2010706 () tuple2!60694)

(declare-fun lt!2010698 () Int)

(declare-fun lt!2010708 () TokenValue!8528)

(declare-datatypes ((tuple2!60696 0))(
  ( (tuple2!60697 (_1!33651 Token!14972) (_2!33651 BalanceConc!29002)) )
))
(declare-datatypes ((Option!14082 0))(
  ( (None!14081) (Some!14081 (v!50043 tuple2!60696)) )
))
(declare-fun isDefined!11091 (Option!14082) Bool)

(assert (=> b!4902628 (= lt!2010699 (isDefined!11091 (Some!14081 (tuple2!60697 (Token!14973 lt!2010708 rule!164 lt!2010698 lt!2010711) (_2!33650 lt!2010706)))))))

(declare-datatypes ((LexerInterface!7810 0))(
  ( (LexerInterfaceExt!7807 (__x!34350 Int)) (Lexer!7808) )
))
(declare-fun thiss!15943 () LexerInterface!7810)

(declare-fun lt!2010702 () List!56635)

(declare-fun maxPrefixOneRule!3559 (LexerInterface!7810 Rule!16236 List!56635) Option!14081)

(assert (=> b!4902628 (= lt!2010704 (maxPrefixOneRule!3559 thiss!15943 rule!164 lt!2010702))))

(declare-fun size!37235 (BalanceConc!29002) Int)

(assert (=> b!4902628 (= lt!2010698 (size!37235 (_1!33650 lt!2010706)))))

(declare-fun apply!13566 (TokenValueInjection!16364 BalanceConc!29002) TokenValue!8528)

(assert (=> b!4902628 (= lt!2010708 (apply!13566 (transformation!8218 rule!164) (_1!33650 lt!2010706)))))

(declare-datatypes ((Unit!146623 0))(
  ( (Unit!146624) )
))
(declare-fun lt!2010703 () Unit!146623)

(declare-fun lt!2010705 () BalanceConc!29002)

(declare-fun ForallOf!1159 (Int BalanceConc!29002) Unit!146623)

(assert (=> b!4902628 (= lt!2010703 (ForallOf!1159 lambda!244360 lt!2010705))))

(declare-fun seqFromList!5964 (List!56635) BalanceConc!29002)

(assert (=> b!4902628 (= lt!2010705 (seqFromList!5964 lt!2010711))))

(declare-fun list!17788 (BalanceConc!29002) List!56635)

(assert (=> b!4902628 (= lt!2010711 (list!17788 (_1!33650 lt!2010706)))))

(declare-fun lt!2010707 () Unit!146623)

(assert (=> b!4902628 (= lt!2010707 (ForallOf!1159 lambda!244360 (_1!33650 lt!2010706)))))

(declare-fun b!4902629 () Bool)

(declare-fun res!2094201 () Bool)

(declare-fun e!3064711 () Bool)

(assert (=> b!4902629 (=> (not res!2094201) (not e!3064711))))

(declare-fun ruleValid!3715 (LexerInterface!7810 Rule!16236) Bool)

(assert (=> b!4902629 (= res!2094201 (ruleValid!3715 thiss!15943 rule!164))))

(declare-fun b!4902630 () Bool)

(declare-fun lt!2010710 () tuple2!60692)

(declare-fun e!3064713 () Bool)

(assert (=> b!4902630 (= e!3064713 (or (not (= (value!263349 (_1!33649 lt!2010710)) lt!2010708)) (not (= (rule!11418 (_1!33649 lt!2010710)) rule!164)) (not (= (size!37234 (_1!33649 lt!2010710)) lt!2010698)) (not (= (originalCharacters!8517 (_1!33649 lt!2010710)) lt!2010711)) lt!2010700))))

(declare-fun get!19533 (Option!14081) tuple2!60692)

(assert (=> b!4902630 (= lt!2010710 (get!19533 lt!2010704))))

(declare-fun b!4902631 () Bool)

(declare-fun e!3064715 () Bool)

(assert (=> b!4902631 (= e!3064711 e!3064715)))

(declare-fun res!2094203 () Bool)

(assert (=> b!4902631 (=> (not res!2094203) (not e!3064715))))

(declare-fun isEmpty!30371 (BalanceConc!29002) Bool)

(assert (=> b!4902631 (= res!2094203 (not (isEmpty!30371 (_1!33650 lt!2010706))))))

(declare-fun input!1509 () BalanceConc!29002)

(declare-fun findLongestMatchWithZipperSequence!306 (Regex!13293 BalanceConc!29002) tuple2!60694)

(assert (=> b!4902631 (= lt!2010706 (findLongestMatchWithZipperSequence!306 (regex!8218 rule!164) input!1509))))

(declare-fun b!4902632 () Bool)

(assert (=> b!4902632 (= e!3064715 (not e!3064710))))

(declare-fun res!2094197 () Bool)

(assert (=> b!4902632 (=> res!2094197 e!3064710)))

(declare-fun semiInverseModEq!3619 (Int Int) Bool)

(assert (=> b!4902632 (= res!2094197 (not (semiInverseModEq!3619 (toChars!10988 (transformation!8218 rule!164)) (toValue!11129 (transformation!8218 rule!164)))))))

(declare-fun lt!2010713 () Unit!146623)

(declare-fun lemmaInv!1264 (TokenValueInjection!16364) Unit!146623)

(assert (=> b!4902632 (= lt!2010713 (lemmaInv!1264 (transformation!8218 rule!164)))))

(declare-fun e!3064714 () Bool)

(assert (=> b!4902632 e!3064714))

(declare-fun res!2094199 () Bool)

(assert (=> b!4902632 (=> res!2094199 e!3064714)))

(declare-datatypes ((tuple2!60698 0))(
  ( (tuple2!60699 (_1!33652 List!56635) (_2!33652 List!56635)) )
))
(declare-fun lt!2010701 () tuple2!60698)

(declare-fun isEmpty!30372 (List!56635) Bool)

(assert (=> b!4902632 (= res!2094199 (isEmpty!30372 (_1!33652 lt!2010701)))))

(declare-fun findLongestMatchInner!1781 (Regex!13293 List!56635 Int List!56635 List!56635 Int) tuple2!60698)

(declare-fun size!37236 (List!56635) Int)

(assert (=> b!4902632 (= lt!2010701 (findLongestMatchInner!1781 (regex!8218 rule!164) Nil!56511 (size!37236 Nil!56511) lt!2010702 lt!2010702 (size!37236 lt!2010702)))))

(declare-fun lt!2010709 () Unit!146623)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1744 (Regex!13293 List!56635) Unit!146623)

(assert (=> b!4902632 (= lt!2010709 (longestMatchIsAcceptedByMatchOrIsEmpty!1744 (regex!8218 rule!164) lt!2010702))))

(assert (=> b!4902632 (= lt!2010702 (list!17788 input!1509))))

(declare-fun tp!1379463 () Bool)

(declare-fun b!4902633 () Bool)

(declare-fun e!3064716 () Bool)

(declare-fun e!3064709 () Bool)

(declare-fun inv!72908 (String!64081) Bool)

(declare-fun inv!72912 (TokenValueInjection!16364) Bool)

(assert (=> b!4902633 (= e!3064709 (and tp!1379463 (inv!72908 (tag!9082 rule!164)) (inv!72912 (transformation!8218 rule!164)) e!3064716))))

(declare-fun res!2094204 () Bool)

(assert (=> start!513628 (=> (not res!2094204) (not e!3064711))))

(get-info :version)

(assert (=> start!513628 (= res!2094204 ((_ is Lexer!7808) thiss!15943))))

(assert (=> start!513628 e!3064711))

(assert (=> start!513628 true))

(assert (=> start!513628 e!3064709))

(declare-fun e!3064718 () Bool)

(declare-fun inv!72913 (BalanceConc!29002) Bool)

(assert (=> start!513628 (and (inv!72913 input!1509) e!3064718)))

(declare-fun b!4902634 () Bool)

(declare-fun matchR!6560 (Regex!13293 List!56635) Bool)

(assert (=> b!4902634 (= e!3064714 (matchR!6560 (regex!8218 rule!164) (_1!33652 lt!2010701)))))

(declare-fun b!4902635 () Bool)

(assert (=> b!4902635 (= e!3064712 e!3064713)))

(declare-fun res!2094198 () Bool)

(assert (=> b!4902635 (=> res!2094198 e!3064713)))

(assert (=> b!4902635 (= res!2094198 (not (= (apply!13566 (transformation!8218 rule!164) lt!2010705) lt!2010708)))))

(declare-fun lt!2010712 () Unit!146623)

(declare-fun lemmaEqSameImage!1110 (TokenValueInjection!16364 BalanceConc!29002 BalanceConc!29002) Unit!146623)

(assert (=> b!4902635 (= lt!2010712 (lemmaEqSameImage!1110 (transformation!8218 rule!164) (_1!33650 lt!2010706) lt!2010705))))

(declare-fun res!2094202 () Bool)

(assert (=> b!4902636 (=> res!2094202 e!3064710)))

(declare-fun Forall!1715 (Int) Bool)

(assert (=> b!4902636 (= res!2094202 (not (Forall!1715 lambda!244360)))))

(assert (=> b!4902637 (= e!3064716 (and tp!1379460 tp!1379462))))

(declare-fun b!4902638 () Bool)

(declare-fun res!2094200 () Bool)

(assert (=> b!4902638 (=> res!2094200 e!3064712)))

(assert (=> b!4902638 (= res!2094200 (not (= (list!17788 lt!2010705) lt!2010711)))))

(declare-fun b!4902639 () Bool)

(declare-fun tp!1379461 () Bool)

(declare-fun inv!72914 (Conc!14786) Bool)

(assert (=> b!4902639 (= e!3064718 (and (inv!72914 (c!833206 input!1509)) tp!1379461))))

(assert (= (and start!513628 res!2094204) b!4902629))

(assert (= (and b!4902629 res!2094201) b!4902631))

(assert (= (and b!4902631 res!2094203) b!4902632))

(assert (= (and b!4902632 (not res!2094199)) b!4902634))

(assert (= (and b!4902632 (not res!2094197)) b!4902636))

(assert (= (and b!4902636 (not res!2094202)) b!4902628))

(assert (= (and b!4902628 (not res!2094196)) b!4902638))

(assert (= (and b!4902638 (not res!2094200)) b!4902635))

(assert (= (and b!4902635 (not res!2094198)) b!4902630))

(assert (= b!4902633 b!4902637))

(assert (= start!513628 b!4902633))

(assert (= start!513628 b!4902639))

(declare-fun m!5911474 () Bool)

(assert (=> b!4902633 m!5911474))

(declare-fun m!5911476 () Bool)

(assert (=> b!4902633 m!5911476))

(declare-fun m!5911478 () Bool)

(assert (=> b!4902632 m!5911478))

(declare-fun m!5911480 () Bool)

(assert (=> b!4902632 m!5911480))

(declare-fun m!5911482 () Bool)

(assert (=> b!4902632 m!5911482))

(declare-fun m!5911484 () Bool)

(assert (=> b!4902632 m!5911484))

(declare-fun m!5911486 () Bool)

(assert (=> b!4902632 m!5911486))

(assert (=> b!4902632 m!5911480))

(declare-fun m!5911488 () Bool)

(assert (=> b!4902632 m!5911488))

(assert (=> b!4902632 m!5911486))

(declare-fun m!5911490 () Bool)

(assert (=> b!4902632 m!5911490))

(declare-fun m!5911492 () Bool)

(assert (=> b!4902632 m!5911492))

(declare-fun m!5911494 () Bool)

(assert (=> b!4902628 m!5911494))

(declare-fun m!5911496 () Bool)

(assert (=> b!4902628 m!5911496))

(declare-fun m!5911498 () Bool)

(assert (=> b!4902628 m!5911498))

(declare-fun m!5911500 () Bool)

(assert (=> b!4902628 m!5911500))

(declare-fun m!5911502 () Bool)

(assert (=> b!4902628 m!5911502))

(declare-fun m!5911504 () Bool)

(assert (=> b!4902628 m!5911504))

(declare-fun m!5911506 () Bool)

(assert (=> b!4902628 m!5911506))

(declare-fun m!5911508 () Bool)

(assert (=> b!4902628 m!5911508))

(declare-fun m!5911510 () Bool)

(assert (=> b!4902628 m!5911510))

(declare-fun m!5911512 () Bool)

(assert (=> b!4902634 m!5911512))

(declare-fun m!5911514 () Bool)

(assert (=> b!4902631 m!5911514))

(declare-fun m!5911516 () Bool)

(assert (=> b!4902631 m!5911516))

(declare-fun m!5911518 () Bool)

(assert (=> b!4902638 m!5911518))

(declare-fun m!5911520 () Bool)

(assert (=> start!513628 m!5911520))

(declare-fun m!5911522 () Bool)

(assert (=> b!4902629 m!5911522))

(declare-fun m!5911524 () Bool)

(assert (=> b!4902639 m!5911524))

(declare-fun m!5911526 () Bool)

(assert (=> b!4902630 m!5911526))

(declare-fun m!5911528 () Bool)

(assert (=> b!4902635 m!5911528))

(declare-fun m!5911530 () Bool)

(assert (=> b!4902635 m!5911530))

(declare-fun m!5911532 () Bool)

(assert (=> b!4902636 m!5911532))

(check-sat (not b!4902638) (not b!4902631) (not b_next!132633) (not b!4902634) (not b!4902636) (not b!4902633) (not b!4902635) (not start!513628) b_and!346235 (not b!4902632) (not b!4902630) (not b!4902628) (not b!4902639) (not b!4902629) (not b_next!132635) b_and!346237)
(check-sat b_and!346237 b_and!346235 (not b_next!132635) (not b_next!132633))
