; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!514594 () Bool)

(assert start!514594)

(declare-fun b!4907457 () Bool)

(declare-fun b_free!131919 () Bool)

(declare-fun b_next!132709 () Bool)

(assert (=> b!4907457 (= b_free!131919 (not b_next!132709))))

(declare-fun tp!1380298 () Bool)

(declare-fun b_and!346463 () Bool)

(assert (=> b!4907457 (= tp!1380298 b_and!346463)))

(declare-fun b_free!131921 () Bool)

(declare-fun b_next!132711 () Bool)

(assert (=> b!4907457 (= b_free!131921 (not b_next!132711))))

(declare-fun tp!1380296 () Bool)

(declare-fun b_and!346465 () Bool)

(assert (=> b!4907457 (= tp!1380296 b_and!346465)))

(declare-fun b!4907468 () Bool)

(declare-fun e!3067556 () Bool)

(assert (=> b!4907468 (= e!3067556 true)))

(declare-fun b!4907467 () Bool)

(declare-fun e!3067555 () Bool)

(assert (=> b!4907467 (= e!3067555 e!3067556)))

(declare-fun b!4907458 () Bool)

(assert (=> b!4907458 e!3067555))

(assert (= b!4907467 b!4907468))

(assert (= b!4907458 b!4907467))

(declare-fun order!25789 () Int)

(declare-fun order!25787 () Int)

(declare-datatypes ((C!26822 0))(
  ( (C!26823 (val!22745 Int)) )
))
(declare-datatypes ((Regex!13312 0))(
  ( (ElementMatch!13312 (c!834174 C!26822)) (Concat!21859 (regOne!27136 Regex!13312) (regTwo!27136 Regex!13312)) (EmptyExpr!13312) (Star!13312 (reg!13641 Regex!13312)) (EmptyLang!13312) (Union!13312 (regOne!27137 Regex!13312) (regTwo!27137 Regex!13312)) )
))
(declare-datatypes ((String!64178 0))(
  ( (String!64179 (value!263862 String)) )
))
(declare-datatypes ((List!56672 0))(
  ( (Nil!56548) (Cons!56548 (h!62996 (_ BitVec 16)) (t!366900 List!56672)) )
))
(declare-datatypes ((TokenValue!8547 0))(
  ( (FloatLiteralValue!17094 (text!60274 List!56672)) (TokenValueExt!8546 (__x!34387 Int)) (Broken!42735 (value!263863 List!56672)) (Object!8670) (End!8547) (Def!8547) (Underscore!8547) (Match!8547) (Else!8547) (Error!8547) (Case!8547) (If!8547) (Extends!8547) (Abstract!8547) (Class!8547) (Val!8547) (DelimiterValue!17094 (del!8607 List!56672)) (KeywordValue!8553 (value!263864 List!56672)) (CommentValue!17094 (value!263865 List!56672)) (WhitespaceValue!17094 (value!263866 List!56672)) (IndentationValue!8547 (value!263867 List!56672)) (String!64180) (Int32!8547) (Broken!42736 (value!263868 List!56672)) (Boolean!8548) (Unit!146745) (OperatorValue!8550 (op!8607 List!56672)) (IdentifierValue!17094 (value!263869 List!56672)) (IdentifierValue!17095 (value!263870 List!56672)) (WhitespaceValue!17095 (value!263871 List!56672)) (True!17094) (False!17094) (Broken!42737 (value!263872 List!56672)) (Broken!42738 (value!263873 List!56672)) (True!17095) (RightBrace!8547) (RightBracket!8547) (Colon!8547) (Null!8547) (Comma!8547) (LeftBracket!8547) (False!17095) (LeftBrace!8547) (ImaginaryLiteralValue!8547 (text!60275 List!56672)) (StringLiteralValue!25641 (value!263874 List!56672)) (EOFValue!8547 (value!263875 List!56672)) (IdentValue!8547 (value!263876 List!56672)) (DelimiterValue!17095 (value!263877 List!56672)) (DedentValue!8547 (value!263878 List!56672)) (NewLineValue!8547 (value!263879 List!56672)) (IntegerValue!25641 (value!263880 (_ BitVec 32)) (text!60276 List!56672)) (IntegerValue!25642 (value!263881 Int) (text!60277 List!56672)) (Times!8547) (Or!8547) (Equal!8547) (Minus!8547) (Broken!42739 (value!263882 List!56672)) (And!8547) (Div!8547) (LessEqual!8547) (Mod!8547) (Concat!21860) (Not!8547) (Plus!8547) (SpaceValue!8547 (value!263883 List!56672)) (IntegerValue!25643 (value!263884 Int) (text!60278 List!56672)) (StringLiteralValue!25642 (text!60279 List!56672)) (FloatLiteralValue!17095 (text!60280 List!56672)) (BytesLiteralValue!8547 (value!263885 List!56672)) (CommentValue!17095 (value!263886 List!56672)) (StringLiteralValue!25643 (value!263887 List!56672)) (ErrorTokenValue!8547 (msg!8608 List!56672)) )
))
(declare-datatypes ((List!56673 0))(
  ( (Nil!56549) (Cons!56549 (h!62997 C!26822) (t!366901 List!56673)) )
))
(declare-datatypes ((IArray!29671 0))(
  ( (IArray!29672 (innerList!14893 List!56673)) )
))
(declare-datatypes ((Conc!14805 0))(
  ( (Node!14805 (left!41176 Conc!14805) (right!41506 Conc!14805) (csize!29840 Int) (cheight!15016 Int)) (Leaf!24641 (xs!18121 IArray!29671) (csize!29841 Int)) (Empty!14805) )
))
(declare-datatypes ((BalanceConc!29040 0))(
  ( (BalanceConc!29041 (c!834175 Conc!14805)) )
))
(declare-datatypes ((TokenValueInjection!16402 0))(
  ( (TokenValueInjection!16403 (toValue!11166 Int) (toChars!11025 Int)) )
))
(declare-datatypes ((Rule!16274 0))(
  ( (Rule!16275 (regex!8237 Regex!13312) (tag!9101 String!64178) (isSeparator!8237 Bool) (transformation!8237 TokenValueInjection!16402)) )
))
(declare-fun rule!164 () Rule!16274)

(declare-fun lambda!244549 () Int)

(declare-fun dynLambda!22850 (Int Int) Int)

(declare-fun dynLambda!22851 (Int Int) Int)

(assert (=> b!4907468 (< (dynLambda!22850 order!25787 (toValue!11166 (transformation!8237 rule!164))) (dynLambda!22851 order!25789 lambda!244549))))

(declare-fun order!25791 () Int)

(declare-fun dynLambda!22852 (Int Int) Int)

(assert (=> b!4907468 (< (dynLambda!22852 order!25791 (toChars!11025 (transformation!8237 rule!164))) (dynLambda!22851 order!25789 lambda!244549))))

(declare-fun e!3067542 () Bool)

(declare-fun tp!1380299 () Bool)

(declare-fun e!3067543 () Bool)

(declare-fun b!4907448 () Bool)

(declare-fun inv!73032 (String!64178) Bool)

(declare-fun inv!73035 (TokenValueInjection!16402) Bool)

(assert (=> b!4907448 (= e!3067543 (and tp!1380299 (inv!73032 (tag!9101 rule!164)) (inv!73035 (transformation!8237 rule!164)) e!3067542))))

(declare-fun b!4907449 () Bool)

(declare-fun res!2096234 () Bool)

(declare-fun e!3067550 () Bool)

(assert (=> b!4907449 (=> (not res!2096234) (not e!3067550))))

(declare-datatypes ((LexerInterface!7829 0))(
  ( (LexerInterfaceExt!7826 (__x!34388 Int)) (Lexer!7827) )
))
(declare-fun thiss!15943 () LexerInterface!7829)

(declare-fun ruleValid!3734 (LexerInterface!7829 Rule!16274) Bool)

(assert (=> b!4907449 (= res!2096234 (ruleValid!3734 thiss!15943 rule!164))))

(declare-fun b!4907450 () Bool)

(declare-fun e!3067546 () Bool)

(assert (=> b!4907450 (= e!3067550 e!3067546)))

(declare-fun res!2096236 () Bool)

(assert (=> b!4907450 (=> (not res!2096236) (not e!3067546))))

(declare-datatypes ((tuple2!60828 0))(
  ( (tuple2!60829 (_1!33717 BalanceConc!29040) (_2!33717 BalanceConc!29040)) )
))
(declare-fun lt!2013487 () tuple2!60828)

(declare-fun isEmpty!30437 (BalanceConc!29040) Bool)

(assert (=> b!4907450 (= res!2096236 (not (isEmpty!30437 (_1!33717 lt!2013487))))))

(declare-fun input!1509 () BalanceConc!29040)

(declare-fun findLongestMatchWithZipperSequence!325 (Regex!13312 BalanceConc!29040) tuple2!60828)

(assert (=> b!4907450 (= lt!2013487 (findLongestMatchWithZipperSequence!325 (regex!8237 rule!164) input!1509))))

(declare-fun b!4907451 () Bool)

(declare-fun e!3067545 () Bool)

(declare-datatypes ((Token!15002 0))(
  ( (Token!15003 (value!263888 TokenValue!8547) (rule!11441 Rule!16274) (size!37291 Int) (originalCharacters!8532 List!56673)) )
))
(declare-datatypes ((tuple2!60830 0))(
  ( (tuple2!60831 (_1!33718 Token!15002) (_2!33718 List!56673)) )
))
(declare-datatypes ((Option!14111 0))(
  ( (None!14110) (Some!14110 (v!50072 tuple2!60830)) )
))
(declare-fun lt!2013496 () Option!14111)

(declare-fun lt!2013497 () TokenValue!8547)

(declare-fun get!19562 (Option!14111) tuple2!60830)

(assert (=> b!4907451 (= e!3067545 (= (value!263888 (_1!33718 (get!19562 lt!2013496))) lt!2013497))))

(declare-fun b!4907452 () Bool)

(declare-fun res!2096232 () Bool)

(declare-fun e!3067544 () Bool)

(assert (=> b!4907452 (=> res!2096232 e!3067544)))

(declare-fun lt!2013489 () BalanceConc!29040)

(declare-fun lt!2013493 () List!56673)

(declare-fun list!17825 (BalanceConc!29040) List!56673)

(assert (=> b!4907452 (= res!2096232 (not (= (list!17825 lt!2013489) lt!2013493)))))

(declare-fun b!4907453 () Bool)

(assert (=> b!4907453 (= e!3067544 e!3067545)))

(declare-fun res!2096227 () Bool)

(assert (=> b!4907453 (=> res!2096227 e!3067545)))

(declare-fun apply!13581 (TokenValueInjection!16402 BalanceConc!29040) TokenValue!8547)

(assert (=> b!4907453 (= res!2096227 (not (= (apply!13581 (transformation!8237 rule!164) lt!2013489) lt!2013497)))))

(declare-datatypes ((Unit!146746 0))(
  ( (Unit!146747) )
))
(declare-fun lt!2013498 () Unit!146746)

(declare-fun lemmaEqSameImage!1119 (TokenValueInjection!16402 BalanceConc!29040 BalanceConc!29040) Unit!146746)

(assert (=> b!4907453 (= lt!2013498 (lemmaEqSameImage!1119 (transformation!8237 rule!164) (_1!33717 lt!2013487) lt!2013489))))

(declare-fun res!2096233 () Bool)

(assert (=> start!514594 (=> (not res!2096233) (not e!3067550))))

(assert (=> start!514594 (= res!2096233 (is-Lexer!7827 thiss!15943))))

(assert (=> start!514594 e!3067550))

(assert (=> start!514594 true))

(assert (=> start!514594 e!3067543))

(declare-fun e!3067541 () Bool)

(declare-fun inv!73036 (BalanceConc!29040) Bool)

(assert (=> start!514594 (and (inv!73036 input!1509) e!3067541)))

(declare-fun b!4907454 () Bool)

(declare-fun tp!1380297 () Bool)

(declare-fun inv!73037 (Conc!14805) Bool)

(assert (=> b!4907454 (= e!3067541 (and (inv!73037 (c!834175 input!1509)) tp!1380297))))

(declare-fun b!4907455 () Bool)

(declare-fun e!3067548 () Bool)

(assert (=> b!4907455 (= e!3067546 (not e!3067548))))

(declare-fun res!2096231 () Bool)

(assert (=> b!4907455 (=> res!2096231 e!3067548)))

(declare-fun semiInverseModEq!3638 (Int Int) Bool)

(assert (=> b!4907455 (= res!2096231 (not (semiInverseModEq!3638 (toChars!11025 (transformation!8237 rule!164)) (toValue!11166 (transformation!8237 rule!164)))))))

(declare-fun lt!2013494 () Unit!146746)

(declare-fun lemmaInv!1283 (TokenValueInjection!16402) Unit!146746)

(assert (=> b!4907455 (= lt!2013494 (lemmaInv!1283 (transformation!8237 rule!164)))))

(declare-fun e!3067547 () Bool)

(assert (=> b!4907455 e!3067547))

(declare-fun res!2096228 () Bool)

(assert (=> b!4907455 (=> res!2096228 e!3067547)))

(declare-datatypes ((tuple2!60832 0))(
  ( (tuple2!60833 (_1!33719 List!56673) (_2!33719 List!56673)) )
))
(declare-fun lt!2013495 () tuple2!60832)

(declare-fun isEmpty!30438 (List!56673) Bool)

(assert (=> b!4907455 (= res!2096228 (isEmpty!30438 (_1!33719 lt!2013495)))))

(declare-fun lt!2013490 () List!56673)

(declare-fun findLongestMatchInner!1800 (Regex!13312 List!56673 Int List!56673 List!56673 Int) tuple2!60832)

(declare-fun size!37292 (List!56673) Int)

(assert (=> b!4907455 (= lt!2013495 (findLongestMatchInner!1800 (regex!8237 rule!164) Nil!56549 (size!37292 Nil!56549) lt!2013490 lt!2013490 (size!37292 lt!2013490)))))

(declare-fun lt!2013491 () Unit!146746)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1763 (Regex!13312 List!56673) Unit!146746)

(assert (=> b!4907455 (= lt!2013491 (longestMatchIsAcceptedByMatchOrIsEmpty!1763 (regex!8237 rule!164) lt!2013490))))

(assert (=> b!4907455 (= lt!2013490 (list!17825 input!1509))))

(declare-fun b!4907456 () Bool)

(declare-fun res!2096229 () Bool)

(assert (=> b!4907456 (=> res!2096229 e!3067544)))

(declare-fun lt!2013486 () Bool)

(assert (=> b!4907456 (= res!2096229 (not lt!2013486))))

(assert (=> b!4907457 (= e!3067542 (and tp!1380298 tp!1380296))))

(declare-fun res!2096230 () Bool)

(assert (=> b!4907458 (=> res!2096230 e!3067548)))

(declare-fun Forall!1734 (Int) Bool)

(assert (=> b!4907458 (= res!2096230 (not (Forall!1734 lambda!244549)))))

(declare-fun b!4907459 () Bool)

(declare-fun matchR!6579 (Regex!13312 List!56673) Bool)

(assert (=> b!4907459 (= e!3067547 (matchR!6579 (regex!8237 rule!164) (_1!33719 lt!2013495)))))

(declare-fun b!4907460 () Bool)

(assert (=> b!4907460 (= e!3067548 e!3067544)))

(declare-fun res!2096235 () Bool)

(assert (=> b!4907460 (=> res!2096235 e!3067544)))

(declare-fun isDefined!11120 (Option!14111) Bool)

(assert (=> b!4907460 (= res!2096235 (not (= lt!2013486 (isDefined!11120 lt!2013496))))))

(declare-fun lt!2013499 () Int)

(declare-datatypes ((tuple2!60834 0))(
  ( (tuple2!60835 (_1!33720 Token!15002) (_2!33720 BalanceConc!29040)) )
))
(declare-datatypes ((Option!14112 0))(
  ( (None!14111) (Some!14111 (v!50073 tuple2!60834)) )
))
(declare-fun isDefined!11121 (Option!14112) Bool)

(assert (=> b!4907460 (= lt!2013486 (isDefined!11121 (Some!14111 (tuple2!60835 (Token!15003 lt!2013497 rule!164 lt!2013499 lt!2013493) (_2!33717 lt!2013487)))))))

(declare-fun maxPrefixOneRule!3574 (LexerInterface!7829 Rule!16274 List!56673) Option!14111)

(assert (=> b!4907460 (= lt!2013496 (maxPrefixOneRule!3574 thiss!15943 rule!164 lt!2013490))))

(declare-fun size!37293 (BalanceConc!29040) Int)

(assert (=> b!4907460 (= lt!2013499 (size!37293 (_1!33717 lt!2013487)))))

(assert (=> b!4907460 (= lt!2013497 (apply!13581 (transformation!8237 rule!164) (_1!33717 lt!2013487)))))

(declare-fun lt!2013492 () Unit!146746)

(declare-fun ForallOf!1174 (Int BalanceConc!29040) Unit!146746)

(assert (=> b!4907460 (= lt!2013492 (ForallOf!1174 lambda!244549 lt!2013489))))

(declare-fun seqFromList!5979 (List!56673) BalanceConc!29040)

(assert (=> b!4907460 (= lt!2013489 (seqFromList!5979 lt!2013493))))

(assert (=> b!4907460 (= lt!2013493 (list!17825 (_1!33717 lt!2013487)))))

(declare-fun lt!2013488 () Unit!146746)

(assert (=> b!4907460 (= lt!2013488 (ForallOf!1174 lambda!244549 (_1!33717 lt!2013487)))))

(assert (= (and start!514594 res!2096233) b!4907449))

(assert (= (and b!4907449 res!2096234) b!4907450))

(assert (= (and b!4907450 res!2096236) b!4907455))

(assert (= (and b!4907455 (not res!2096228)) b!4907459))

(assert (= (and b!4907455 (not res!2096231)) b!4907458))

(assert (= (and b!4907458 (not res!2096230)) b!4907460))

(assert (= (and b!4907460 (not res!2096235)) b!4907456))

(assert (= (and b!4907456 (not res!2096229)) b!4907452))

(assert (= (and b!4907452 (not res!2096232)) b!4907453))

(assert (= (and b!4907453 (not res!2096227)) b!4907451))

(assert (= b!4907448 b!4907457))

(assert (= start!514594 b!4907448))

(assert (= start!514594 b!4907454))

(declare-fun m!5917098 () Bool)

(assert (=> b!4907460 m!5917098))

(declare-fun m!5917100 () Bool)

(assert (=> b!4907460 m!5917100))

(declare-fun m!5917102 () Bool)

(assert (=> b!4907460 m!5917102))

(declare-fun m!5917104 () Bool)

(assert (=> b!4907460 m!5917104))

(declare-fun m!5917106 () Bool)

(assert (=> b!4907460 m!5917106))

(declare-fun m!5917108 () Bool)

(assert (=> b!4907460 m!5917108))

(declare-fun m!5917110 () Bool)

(assert (=> b!4907460 m!5917110))

(declare-fun m!5917112 () Bool)

(assert (=> b!4907460 m!5917112))

(declare-fun m!5917114 () Bool)

(assert (=> b!4907460 m!5917114))

(declare-fun m!5917116 () Bool)

(assert (=> b!4907455 m!5917116))

(declare-fun m!5917118 () Bool)

(assert (=> b!4907455 m!5917118))

(assert (=> b!4907455 m!5917116))

(declare-fun m!5917120 () Bool)

(assert (=> b!4907455 m!5917120))

(declare-fun m!5917122 () Bool)

(assert (=> b!4907455 m!5917122))

(declare-fun m!5917124 () Bool)

(assert (=> b!4907455 m!5917124))

(declare-fun m!5917126 () Bool)

(assert (=> b!4907455 m!5917126))

(assert (=> b!4907455 m!5917118))

(declare-fun m!5917128 () Bool)

(assert (=> b!4907455 m!5917128))

(declare-fun m!5917130 () Bool)

(assert (=> b!4907455 m!5917130))

(declare-fun m!5917132 () Bool)

(assert (=> b!4907448 m!5917132))

(declare-fun m!5917134 () Bool)

(assert (=> b!4907448 m!5917134))

(declare-fun m!5917136 () Bool)

(assert (=> b!4907453 m!5917136))

(declare-fun m!5917138 () Bool)

(assert (=> b!4907453 m!5917138))

(declare-fun m!5917140 () Bool)

(assert (=> b!4907452 m!5917140))

(declare-fun m!5917142 () Bool)

(assert (=> b!4907450 m!5917142))

(declare-fun m!5917144 () Bool)

(assert (=> b!4907450 m!5917144))

(declare-fun m!5917146 () Bool)

(assert (=> b!4907451 m!5917146))

(declare-fun m!5917148 () Bool)

(assert (=> b!4907458 m!5917148))

(declare-fun m!5917150 () Bool)

(assert (=> b!4907454 m!5917150))

(declare-fun m!5917152 () Bool)

(assert (=> start!514594 m!5917152))

(declare-fun m!5917154 () Bool)

(assert (=> b!4907449 m!5917154))

(declare-fun m!5917156 () Bool)

(assert (=> b!4907459 m!5917156))

(push 1)

(assert b_and!346463)

(assert (not b!4907450))

(assert (not b!4907458))

(assert (not b_next!132711))

(assert (not b!4907459))

(assert (not b!4907453))

(assert (not b!4907460))

(assert b_and!346465)

(assert (not b!4907452))

(assert (not b_next!132709))

(assert (not b!4907451))

(assert (not b!4907449))

(assert (not start!514594))

(assert (not b!4907448))

(assert (not b!4907455))

(assert (not b!4907454))

(check-sat)

(pop 1)

(push 1)

(assert b_and!346465)

(assert b_and!346463)

(assert (not b_next!132711))

(assert (not b_next!132709))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1577232 () Bool)

(assert (=> d!1577232 (= (get!19562 lt!2013496) (v!50072 lt!2013496))))

(assert (=> b!4907451 d!1577232))

(declare-fun d!1577234 () Bool)

(declare-fun lt!2013544 () Bool)

(assert (=> d!1577234 (= lt!2013544 (isEmpty!30438 (list!17825 (_1!33717 lt!2013487))))))

(declare-fun isEmpty!30441 (Conc!14805) Bool)

(assert (=> d!1577234 (= lt!2013544 (isEmpty!30441 (c!834175 (_1!33717 lt!2013487))))))

(assert (=> d!1577234 (= (isEmpty!30437 (_1!33717 lt!2013487)) lt!2013544)))

(declare-fun bs!1177209 () Bool)

(assert (= bs!1177209 d!1577234))

(assert (=> bs!1177209 m!5917098))

(assert (=> bs!1177209 m!5917098))

(declare-fun m!5917218 () Bool)

(assert (=> bs!1177209 m!5917218))

(declare-fun m!5917220 () Bool)

(assert (=> bs!1177209 m!5917220))

(assert (=> b!4907450 d!1577234))

(declare-fun d!1577236 () Bool)

(declare-fun lt!2013547 () tuple2!60828)

(declare-fun findLongestMatch!1668 (Regex!13312 List!56673) tuple2!60832)

(assert (=> d!1577236 (= (tuple2!60833 (list!17825 (_1!33717 lt!2013547)) (list!17825 (_2!33717 lt!2013547))) (findLongestMatch!1668 (regex!8237 rule!164) (list!17825 input!1509)))))

(declare-fun choose!35876 (Regex!13312 BalanceConc!29040) tuple2!60828)

(assert (=> d!1577236 (= lt!2013547 (choose!35876 (regex!8237 rule!164) input!1509))))

(declare-fun validRegex!5905 (Regex!13312) Bool)

(assert (=> d!1577236 (validRegex!5905 (regex!8237 rule!164))))

(assert (=> d!1577236 (= (findLongestMatchWithZipperSequence!325 (regex!8237 rule!164) input!1509) lt!2013547)))

(declare-fun bs!1177210 () Bool)

(assert (= bs!1177210 d!1577236))

(declare-fun m!5917222 () Bool)

(assert (=> bs!1177210 m!5917222))

(assert (=> bs!1177210 m!5917128))

(declare-fun m!5917224 () Bool)

(assert (=> bs!1177210 m!5917224))

(assert (=> bs!1177210 m!5917128))

(declare-fun m!5917226 () Bool)

(assert (=> bs!1177210 m!5917226))

(declare-fun m!5917228 () Bool)

(assert (=> bs!1177210 m!5917228))

(declare-fun m!5917230 () Bool)

(assert (=> bs!1177210 m!5917230))

(assert (=> b!4907450 d!1577236))

(declare-fun d!1577238 () Bool)

(declare-fun dynLambda!22856 (Int BalanceConc!29040) TokenValue!8547)

(assert (=> d!1577238 (= (apply!13581 (transformation!8237 rule!164) (_1!33717 lt!2013487)) (dynLambda!22856 (toValue!11166 (transformation!8237 rule!164)) (_1!33717 lt!2013487)))))

(declare-fun b_lambda!195553 () Bool)

(assert (=> (not b_lambda!195553) (not d!1577238)))

(declare-fun t!366905 () Bool)

(declare-fun tb!259959 () Bool)

(assert (=> (and b!4907457 (= (toValue!11166 (transformation!8237 rule!164)) (toValue!11166 (transformation!8237 rule!164))) t!366905) tb!259959))

(declare-fun result!323746 () Bool)

(declare-fun inv!21 (TokenValue!8547) Bool)

(assert (=> tb!259959 (= result!323746 (inv!21 (dynLambda!22856 (toValue!11166 (transformation!8237 rule!164)) (_1!33717 lt!2013487))))))

(declare-fun m!5917232 () Bool)

(assert (=> tb!259959 m!5917232))

(assert (=> d!1577238 t!366905))

(declare-fun b_and!346471 () Bool)

(assert (= b_and!346463 (and (=> t!366905 result!323746) b_and!346471)))

(declare-fun m!5917234 () Bool)

(assert (=> d!1577238 m!5917234))

(assert (=> b!4907460 d!1577238))

(declare-fun d!1577240 () Bool)

(declare-fun isEmpty!30442 (Option!14112) Bool)

(assert (=> d!1577240 (= (isDefined!11121 (Some!14111 (tuple2!60835 (Token!15003 lt!2013497 rule!164 lt!2013499 lt!2013493) (_2!33717 lt!2013487)))) (not (isEmpty!30442 (Some!14111 (tuple2!60835 (Token!15003 lt!2013497 rule!164 lt!2013499 lt!2013493) (_2!33717 lt!2013487))))))))

(declare-fun bs!1177211 () Bool)

(assert (= bs!1177211 d!1577240))

(declare-fun m!5917236 () Bool)

(assert (=> bs!1177211 m!5917236))

(assert (=> b!4907460 d!1577240))

(declare-fun d!1577242 () Bool)

(declare-fun dynLambda!22857 (Int BalanceConc!29040) Bool)

(assert (=> d!1577242 (dynLambda!22857 lambda!244549 lt!2013489)))

(declare-fun lt!2013550 () Unit!146746)

(declare-fun choose!35877 (Int BalanceConc!29040) Unit!146746)

(assert (=> d!1577242 (= lt!2013550 (choose!35877 lambda!244549 lt!2013489))))

(assert (=> d!1577242 (Forall!1734 lambda!244549)))

(assert (=> d!1577242 (= (ForallOf!1174 lambda!244549 lt!2013489) lt!2013550)))

(declare-fun b_lambda!195555 () Bool)

(assert (=> (not b_lambda!195555) (not d!1577242)))

(declare-fun bs!1177212 () Bool)

(assert (= bs!1177212 d!1577242))

(declare-fun m!5917238 () Bool)

(assert (=> bs!1177212 m!5917238))

(declare-fun m!5917240 () Bool)

(assert (=> bs!1177212 m!5917240))

(assert (=> bs!1177212 m!5917148))

(assert (=> b!4907460 d!1577242))

(declare-fun d!1577244 () Bool)

(assert (=> d!1577244 (dynLambda!22857 lambda!244549 (_1!33717 lt!2013487))))

(declare-fun lt!2013551 () Unit!146746)

(assert (=> d!1577244 (= lt!2013551 (choose!35877 lambda!244549 (_1!33717 lt!2013487)))))

(assert (=> d!1577244 (Forall!1734 lambda!244549)))

(assert (=> d!1577244 (= (ForallOf!1174 lambda!244549 (_1!33717 lt!2013487)) lt!2013551)))

(declare-fun b_lambda!195557 () Bool)

(assert (=> (not b_lambda!195557) (not d!1577244)))

(declare-fun bs!1177213 () Bool)

(assert (= bs!1177213 d!1577244))

(declare-fun m!5917242 () Bool)

(assert (=> bs!1177213 m!5917242))

(declare-fun m!5917244 () Bool)

(assert (=> bs!1177213 m!5917244))

(assert (=> bs!1177213 m!5917148))

(assert (=> b!4907460 d!1577244))

(declare-fun d!1577246 () Bool)

(declare-fun isEmpty!30443 (Option!14111) Bool)

(assert (=> d!1577246 (= (isDefined!11120 lt!2013496) (not (isEmpty!30443 lt!2013496)))))

(declare-fun bs!1177214 () Bool)

(assert (= bs!1177214 d!1577246))

(declare-fun m!5917246 () Bool)

(assert (=> bs!1177214 m!5917246))

(assert (=> b!4907460 d!1577246))

(declare-fun d!1577248 () Bool)

(declare-fun lt!2013554 () Int)

(assert (=> d!1577248 (= lt!2013554 (size!37292 (list!17825 (_1!33717 lt!2013487))))))

(declare-fun size!37297 (Conc!14805) Int)

(assert (=> d!1577248 (= lt!2013554 (size!37297 (c!834175 (_1!33717 lt!2013487))))))

(assert (=> d!1577248 (= (size!37293 (_1!33717 lt!2013487)) lt!2013554)))

(declare-fun bs!1177215 () Bool)

(assert (= bs!1177215 d!1577248))

(assert (=> bs!1177215 m!5917098))

(assert (=> bs!1177215 m!5917098))

(declare-fun m!5917248 () Bool)

(assert (=> bs!1177215 m!5917248))

(declare-fun m!5917250 () Bool)

(assert (=> bs!1177215 m!5917250))

(assert (=> b!4907460 d!1577248))

(declare-fun d!1577250 () Bool)

(declare-fun fromListB!2708 (List!56673) BalanceConc!29040)

(assert (=> d!1577250 (= (seqFromList!5979 lt!2013493) (fromListB!2708 lt!2013493))))

(declare-fun bs!1177216 () Bool)

(assert (= bs!1177216 d!1577250))

(declare-fun m!5917252 () Bool)

(assert (=> bs!1177216 m!5917252))

(assert (=> b!4907460 d!1577250))

(declare-fun d!1577252 () Bool)

(declare-fun list!17827 (Conc!14805) List!56673)

(assert (=> d!1577252 (= (list!17825 (_1!33717 lt!2013487)) (list!17827 (c!834175 (_1!33717 lt!2013487))))))

(declare-fun bs!1177217 () Bool)

(assert (= bs!1177217 d!1577252))

(declare-fun m!5917254 () Bool)

(assert (=> bs!1177217 m!5917254))

(assert (=> b!4907460 d!1577252))

(declare-fun d!1577254 () Bool)

(declare-fun e!3067610 () Bool)

(assert (=> d!1577254 e!3067610))

(declare-fun res!2096291 () Bool)

(assert (=> d!1577254 (=> res!2096291 e!3067610)))

(declare-fun lt!2013568 () Option!14111)

(assert (=> d!1577254 (= res!2096291 (isEmpty!30443 lt!2013568))))

(declare-fun e!3067607 () Option!14111)

(assert (=> d!1577254 (= lt!2013568 e!3067607)))

(declare-fun c!834181 () Bool)

(declare-fun lt!2013570 () tuple2!60832)

(assert (=> d!1577254 (= c!834181 (isEmpty!30438 (_1!33719 lt!2013570)))))

(assert (=> d!1577254 (= lt!2013570 (findLongestMatch!1668 (regex!8237 rule!164) lt!2013490))))

(assert (=> d!1577254 (ruleValid!3734 thiss!15943 rule!164)))

(assert (=> d!1577254 (= (maxPrefixOneRule!3574 thiss!15943 rule!164 lt!2013490) lt!2013568)))

(declare-fun b!4907538 () Bool)

(declare-fun res!2096290 () Bool)

(declare-fun e!3067609 () Bool)

(assert (=> b!4907538 (=> (not res!2096290) (not e!3067609))))

(assert (=> b!4907538 (= res!2096290 (= (value!263888 (_1!33718 (get!19562 lt!2013568))) (apply!13581 (transformation!8237 (rule!11441 (_1!33718 (get!19562 lt!2013568)))) (seqFromList!5979 (originalCharacters!8532 (_1!33718 (get!19562 lt!2013568)))))))))

(declare-fun b!4907539 () Bool)

(declare-fun e!3067608 () Bool)

(assert (=> b!4907539 (= e!3067608 (matchR!6579 (regex!8237 rule!164) (_1!33719 (findLongestMatchInner!1800 (regex!8237 rule!164) Nil!56549 (size!37292 Nil!56549) lt!2013490 lt!2013490 (size!37292 lt!2013490)))))))

(declare-fun b!4907540 () Bool)

(assert (=> b!4907540 (= e!3067607 (Some!14110 (tuple2!60831 (Token!15003 (apply!13581 (transformation!8237 rule!164) (seqFromList!5979 (_1!33719 lt!2013570))) rule!164 (size!37293 (seqFromList!5979 (_1!33719 lt!2013570))) (_1!33719 lt!2013570)) (_2!33719 lt!2013570))))))

(declare-fun lt!2013571 () Unit!146746)

(assert (=> b!4907540 (= lt!2013571 (longestMatchIsAcceptedByMatchOrIsEmpty!1763 (regex!8237 rule!164) lt!2013490))))

(declare-fun res!2096285 () Bool)

(assert (=> b!4907540 (= res!2096285 (isEmpty!30438 (_1!33719 (findLongestMatchInner!1800 (regex!8237 rule!164) Nil!56549 (size!37292 Nil!56549) lt!2013490 lt!2013490 (size!37292 lt!2013490)))))))

(assert (=> b!4907540 (=> res!2096285 e!3067608)))

(assert (=> b!4907540 e!3067608))

(declare-fun lt!2013569 () Unit!146746)

(assert (=> b!4907540 (= lt!2013569 lt!2013571)))

(declare-fun lt!2013567 () Unit!146746)

(declare-fun lemmaSemiInverse!2581 (TokenValueInjection!16402 BalanceConc!29040) Unit!146746)

(assert (=> b!4907540 (= lt!2013567 (lemmaSemiInverse!2581 (transformation!8237 rule!164) (seqFromList!5979 (_1!33719 lt!2013570))))))

(declare-fun b!4907541 () Bool)

(declare-fun res!2096289 () Bool)

(assert (=> b!4907541 (=> (not res!2096289) (not e!3067609))))

(assert (=> b!4907541 (= res!2096289 (= (rule!11441 (_1!33718 (get!19562 lt!2013568))) rule!164))))

(declare-fun b!4907542 () Bool)

(assert (=> b!4907542 (= e!3067607 None!14110)))

(declare-fun b!4907543 () Bool)

(assert (=> b!4907543 (= e!3067610 e!3067609)))

(declare-fun res!2096287 () Bool)

(assert (=> b!4907543 (=> (not res!2096287) (not e!3067609))))

(declare-fun charsOf!5393 (Token!15002) BalanceConc!29040)

(assert (=> b!4907543 (= res!2096287 (matchR!6579 (regex!8237 rule!164) (list!17825 (charsOf!5393 (_1!33718 (get!19562 lt!2013568))))))))

(declare-fun b!4907544 () Bool)

(declare-fun res!2096288 () Bool)

(assert (=> b!4907544 (=> (not res!2096288) (not e!3067609))))

(declare-fun ++!12266 (List!56673 List!56673) List!56673)

(assert (=> b!4907544 (= res!2096288 (= (++!12266 (list!17825 (charsOf!5393 (_1!33718 (get!19562 lt!2013568)))) (_2!33718 (get!19562 lt!2013568))) lt!2013490))))

(declare-fun b!4907545 () Bool)

(assert (=> b!4907545 (= e!3067609 (= (size!37291 (_1!33718 (get!19562 lt!2013568))) (size!37292 (originalCharacters!8532 (_1!33718 (get!19562 lt!2013568))))))))

(declare-fun b!4907546 () Bool)

(declare-fun res!2096286 () Bool)

(assert (=> b!4907546 (=> (not res!2096286) (not e!3067609))))

(assert (=> b!4907546 (= res!2096286 (< (size!37292 (_2!33718 (get!19562 lt!2013568))) (size!37292 lt!2013490)))))

(assert (= (and d!1577254 c!834181) b!4907542))

(assert (= (and d!1577254 (not c!834181)) b!4907540))

(assert (= (and b!4907540 (not res!2096285)) b!4907539))

(assert (= (and d!1577254 (not res!2096291)) b!4907543))

(assert (= (and b!4907543 res!2096287) b!4907544))

(assert (= (and b!4907544 res!2096288) b!4907546))

(assert (= (and b!4907546 res!2096286) b!4907541))

(assert (= (and b!4907541 res!2096289) b!4907538))

(assert (= (and b!4907538 res!2096290) b!4907545))

(declare-fun m!5917260 () Bool)

(assert (=> b!4907538 m!5917260))

(declare-fun m!5917262 () Bool)

(assert (=> b!4907538 m!5917262))

(assert (=> b!4907538 m!5917262))

(declare-fun m!5917264 () Bool)

(assert (=> b!4907538 m!5917264))

(assert (=> b!4907545 m!5917260))

(declare-fun m!5917266 () Bool)

(assert (=> b!4907545 m!5917266))

(assert (=> b!4907544 m!5917260))

(declare-fun m!5917268 () Bool)

(assert (=> b!4907544 m!5917268))

(assert (=> b!4907544 m!5917268))

(declare-fun m!5917270 () Bool)

(assert (=> b!4907544 m!5917270))

(assert (=> b!4907544 m!5917270))

(declare-fun m!5917272 () Bool)

(assert (=> b!4907544 m!5917272))

(declare-fun m!5917274 () Bool)

(assert (=> d!1577254 m!5917274))

(declare-fun m!5917276 () Bool)

(assert (=> d!1577254 m!5917276))

(declare-fun m!5917278 () Bool)

(assert (=> d!1577254 m!5917278))

(assert (=> d!1577254 m!5917154))

(assert (=> b!4907539 m!5917118))

(assert (=> b!4907539 m!5917116))

(assert (=> b!4907539 m!5917118))

(assert (=> b!4907539 m!5917116))

(assert (=> b!4907539 m!5917120))

(declare-fun m!5917280 () Bool)

(assert (=> b!4907539 m!5917280))

(assert (=> b!4907546 m!5917260))

(declare-fun m!5917282 () Bool)

(assert (=> b!4907546 m!5917282))

(assert (=> b!4907546 m!5917116))

(assert (=> b!4907541 m!5917260))

(assert (=> b!4907543 m!5917260))

(assert (=> b!4907543 m!5917268))

(assert (=> b!4907543 m!5917268))

(assert (=> b!4907543 m!5917270))

(assert (=> b!4907543 m!5917270))

(declare-fun m!5917284 () Bool)

(assert (=> b!4907543 m!5917284))

(assert (=> b!4907540 m!5917118))

(assert (=> b!4907540 m!5917126))

(assert (=> b!4907540 m!5917116))

(declare-fun m!5917286 () Bool)

(assert (=> b!4907540 m!5917286))

(declare-fun m!5917288 () Bool)

(assert (=> b!4907540 m!5917288))

(assert (=> b!4907540 m!5917286))

(declare-fun m!5917290 () Bool)

(assert (=> b!4907540 m!5917290))

(declare-fun m!5917292 () Bool)

(assert (=> b!4907540 m!5917292))

(assert (=> b!4907540 m!5917118))

(assert (=> b!4907540 m!5917116))

(assert (=> b!4907540 m!5917120))

(assert (=> b!4907540 m!5917286))

(assert (=> b!4907540 m!5917286))

(declare-fun m!5917294 () Bool)

(assert (=> b!4907540 m!5917294))

(assert (=> b!4907460 d!1577254))

(declare-fun d!1577260 () Bool)

(declare-fun res!2096298 () Bool)

(declare-fun e!3067615 () Bool)

(assert (=> d!1577260 (=> (not res!2096298) (not e!3067615))))

(assert (=> d!1577260 (= res!2096298 (validRegex!5905 (regex!8237 rule!164)))))

(assert (=> d!1577260 (= (ruleValid!3734 thiss!15943 rule!164) e!3067615)))

(declare-fun b!4907553 () Bool)

(declare-fun res!2096299 () Bool)

(assert (=> b!4907553 (=> (not res!2096299) (not e!3067615))))

(declare-fun nullable!4578 (Regex!13312) Bool)

(assert (=> b!4907553 (= res!2096299 (not (nullable!4578 (regex!8237 rule!164))))))

(declare-fun b!4907554 () Bool)

(assert (=> b!4907554 (= e!3067615 (not (= (tag!9101 rule!164) (String!64179 ""))))))

(assert (= (and d!1577260 res!2096298) b!4907553))

(assert (= (and b!4907553 res!2096299) b!4907554))

(assert (=> d!1577260 m!5917228))

(declare-fun m!5917296 () Bool)

(assert (=> b!4907553 m!5917296))

(assert (=> b!4907449 d!1577260))

(declare-fun d!1577262 () Bool)

(assert (=> d!1577262 (= (inv!73032 (tag!9101 rule!164)) (= (mod (str.len (value!263862 (tag!9101 rule!164))) 2) 0))))

(assert (=> b!4907448 d!1577262))

(declare-fun d!1577264 () Bool)

(declare-fun res!2096302 () Bool)

(declare-fun e!3067618 () Bool)

(assert (=> d!1577264 (=> (not res!2096302) (not e!3067618))))

(assert (=> d!1577264 (= res!2096302 (semiInverseModEq!3638 (toChars!11025 (transformation!8237 rule!164)) (toValue!11166 (transformation!8237 rule!164))))))

(assert (=> d!1577264 (= (inv!73035 (transformation!8237 rule!164)) e!3067618)))

(declare-fun b!4907557 () Bool)

(declare-fun equivClasses!3491 (Int Int) Bool)

(assert (=> b!4907557 (= e!3067618 (equivClasses!3491 (toChars!11025 (transformation!8237 rule!164)) (toValue!11166 (transformation!8237 rule!164))))))

(assert (= (and d!1577264 res!2096302) b!4907557))

(assert (=> d!1577264 m!5917124))

(declare-fun m!5917298 () Bool)

(assert (=> b!4907557 m!5917298))

(assert (=> b!4907448 d!1577264))

(declare-fun b!4907591 () Bool)

(declare-fun res!2096324 () Bool)

(declare-fun e!3067642 () Bool)

(assert (=> b!4907591 (=> (not res!2096324) (not e!3067642))))

(declare-fun tail!9626 (List!56673) List!56673)

(assert (=> b!4907591 (= res!2096324 (isEmpty!30438 (tail!9626 (_1!33719 lt!2013495))))))

(declare-fun d!1577266 () Bool)

(declare-fun e!3067638 () Bool)

(assert (=> d!1577266 e!3067638))

(declare-fun c!834188 () Bool)

(assert (=> d!1577266 (= c!834188 (is-EmptyExpr!13312 (regex!8237 rule!164)))))

(declare-fun lt!2013577 () Bool)

(declare-fun e!3067641 () Bool)

(assert (=> d!1577266 (= lt!2013577 e!3067641)))

(declare-fun c!834189 () Bool)

(assert (=> d!1577266 (= c!834189 (isEmpty!30438 (_1!33719 lt!2013495)))))

(assert (=> d!1577266 (validRegex!5905 (regex!8237 rule!164))))

(assert (=> d!1577266 (= (matchR!6579 (regex!8237 rule!164) (_1!33719 lt!2013495)) lt!2013577)))

(declare-fun b!4907592 () Bool)

(declare-fun e!3067640 () Bool)

(declare-fun head!10479 (List!56673) C!26822)

(assert (=> b!4907592 (= e!3067640 (not (= (head!10479 (_1!33719 lt!2013495)) (c!834174 (regex!8237 rule!164)))))))

(declare-fun b!4907593 () Bool)

(declare-fun res!2096326 () Bool)

(assert (=> b!4907593 (=> (not res!2096326) (not e!3067642))))

(declare-fun call!340619 () Bool)

(assert (=> b!4907593 (= res!2096326 (not call!340619))))

(declare-fun b!4907594 () Bool)

(declare-fun e!3067637 () Bool)

(assert (=> b!4907594 (= e!3067638 e!3067637)))

(declare-fun c!834190 () Bool)

(assert (=> b!4907594 (= c!834190 (is-EmptyLang!13312 (regex!8237 rule!164)))))

(declare-fun b!4907595 () Bool)

(assert (=> b!4907595 (= e!3067641 (nullable!4578 (regex!8237 rule!164)))))

(declare-fun b!4907596 () Bool)

(declare-fun derivativeStep!3898 (Regex!13312 C!26822) Regex!13312)

(assert (=> b!4907596 (= e!3067641 (matchR!6579 (derivativeStep!3898 (regex!8237 rule!164) (head!10479 (_1!33719 lt!2013495))) (tail!9626 (_1!33719 lt!2013495))))))

(declare-fun b!4907597 () Bool)

(declare-fun res!2096325 () Bool)

(declare-fun e!3067643 () Bool)

(assert (=> b!4907597 (=> res!2096325 e!3067643)))

(assert (=> b!4907597 (= res!2096325 (not (is-ElementMatch!13312 (regex!8237 rule!164))))))

(assert (=> b!4907597 (= e!3067637 e!3067643)))

(declare-fun b!4907598 () Bool)

(assert (=> b!4907598 (= e!3067638 (= lt!2013577 call!340619))))

(declare-fun b!4907599 () Bool)

(assert (=> b!4907599 (= e!3067637 (not lt!2013577))))

(declare-fun b!4907600 () Bool)

(declare-fun e!3067639 () Bool)

(assert (=> b!4907600 (= e!3067639 e!3067640)))

(declare-fun res!2096320 () Bool)

(assert (=> b!4907600 (=> res!2096320 e!3067640)))

(assert (=> b!4907600 (= res!2096320 call!340619)))

(declare-fun bm!340614 () Bool)

(assert (=> bm!340614 (= call!340619 (isEmpty!30438 (_1!33719 lt!2013495)))))

(declare-fun b!4907601 () Bool)

(assert (=> b!4907601 (= e!3067643 e!3067639)))

(declare-fun res!2096321 () Bool)

(assert (=> b!4907601 (=> (not res!2096321) (not e!3067639))))

(assert (=> b!4907601 (= res!2096321 (not lt!2013577))))

(declare-fun b!4907602 () Bool)

(assert (=> b!4907602 (= e!3067642 (= (head!10479 (_1!33719 lt!2013495)) (c!834174 (regex!8237 rule!164))))))

(declare-fun b!4907603 () Bool)

(declare-fun res!2096319 () Bool)

(assert (=> b!4907603 (=> res!2096319 e!3067643)))

(assert (=> b!4907603 (= res!2096319 e!3067642)))

(declare-fun res!2096322 () Bool)

(assert (=> b!4907603 (=> (not res!2096322) (not e!3067642))))

(assert (=> b!4907603 (= res!2096322 lt!2013577)))

(declare-fun b!4907604 () Bool)

(declare-fun res!2096323 () Bool)

(assert (=> b!4907604 (=> res!2096323 e!3067640)))

(assert (=> b!4907604 (= res!2096323 (not (isEmpty!30438 (tail!9626 (_1!33719 lt!2013495)))))))

(assert (= (and d!1577266 c!834189) b!4907595))

(assert (= (and d!1577266 (not c!834189)) b!4907596))

(assert (= (and d!1577266 c!834188) b!4907598))

(assert (= (and d!1577266 (not c!834188)) b!4907594))

(assert (= (and b!4907594 c!834190) b!4907599))

(assert (= (and b!4907594 (not c!834190)) b!4907597))

(assert (= (and b!4907597 (not res!2096325)) b!4907603))

(assert (= (and b!4907603 res!2096322) b!4907593))

(assert (= (and b!4907593 res!2096326) b!4907591))

(assert (= (and b!4907591 res!2096324) b!4907602))

(assert (= (and b!4907603 (not res!2096319)) b!4907601))

(assert (= (and b!4907601 res!2096321) b!4907600))

(assert (= (and b!4907600 (not res!2096320)) b!4907604))

(assert (= (and b!4907604 (not res!2096323)) b!4907592))

(assert (= (or b!4907598 b!4907593 b!4907600) bm!340614))

(assert (=> b!4907595 m!5917296))

(assert (=> d!1577266 m!5917122))

(assert (=> d!1577266 m!5917228))

(declare-fun m!5917312 () Bool)

(assert (=> b!4907592 m!5917312))

(assert (=> bm!340614 m!5917122))

(assert (=> b!4907602 m!5917312))

(declare-fun m!5917314 () Bool)

(assert (=> b!4907591 m!5917314))

(assert (=> b!4907591 m!5917314))

(declare-fun m!5917316 () Bool)

(assert (=> b!4907591 m!5917316))

(assert (=> b!4907596 m!5917312))

(assert (=> b!4907596 m!5917312))

(declare-fun m!5917318 () Bool)

(assert (=> b!4907596 m!5917318))

(assert (=> b!4907596 m!5917314))

(assert (=> b!4907596 m!5917318))

(assert (=> b!4907596 m!5917314))

(declare-fun m!5917320 () Bool)

(assert (=> b!4907596 m!5917320))

(assert (=> b!4907604 m!5917314))

(assert (=> b!4907604 m!5917314))

(assert (=> b!4907604 m!5917316))

(assert (=> b!4907459 d!1577266))

(declare-fun d!1577274 () Bool)

(declare-fun choose!35878 (Int) Bool)

(assert (=> d!1577274 (= (Forall!1734 lambda!244549) (choose!35878 lambda!244549))))

(declare-fun bs!1177220 () Bool)

(assert (= bs!1177220 d!1577274))

(declare-fun m!5917322 () Bool)

(assert (=> bs!1177220 m!5917322))

(assert (=> b!4907458 d!1577274))

(declare-fun d!1577276 () Bool)

(declare-fun isBalanced!4037 (Conc!14805) Bool)

(assert (=> d!1577276 (= (inv!73036 input!1509) (isBalanced!4037 (c!834175 input!1509)))))

(declare-fun bs!1177221 () Bool)

(assert (= bs!1177221 d!1577276))

(declare-fun m!5917324 () Bool)

(assert (=> bs!1177221 m!5917324))

(assert (=> start!514594 d!1577276))

(declare-fun d!1577278 () Bool)

(assert (=> d!1577278 (= (isEmpty!30438 (_1!33719 lt!2013495)) (is-Nil!56549 (_1!33719 lt!2013495)))))

(assert (=> b!4907455 d!1577278))

(declare-fun d!1577280 () Bool)

(assert (=> d!1577280 (= (list!17825 input!1509) (list!17827 (c!834175 input!1509)))))

(declare-fun bs!1177222 () Bool)

(assert (= bs!1177222 d!1577280))

(declare-fun m!5917326 () Bool)

(assert (=> bs!1177222 m!5917326))

(assert (=> b!4907455 d!1577280))

(declare-fun d!1577282 () Bool)

(declare-fun e!3067646 () Bool)

(assert (=> d!1577282 e!3067646))

(declare-fun res!2096329 () Bool)

(assert (=> d!1577282 (=> res!2096329 e!3067646)))

(assert (=> d!1577282 (= res!2096329 (isEmpty!30438 (_1!33719 (findLongestMatchInner!1800 (regex!8237 rule!164) Nil!56549 (size!37292 Nil!56549) lt!2013490 lt!2013490 (size!37292 lt!2013490)))))))

(declare-fun lt!2013581 () Unit!146746)

(declare-fun choose!35879 (Regex!13312 List!56673) Unit!146746)

(assert (=> d!1577282 (= lt!2013581 (choose!35879 (regex!8237 rule!164) lt!2013490))))

(assert (=> d!1577282 (validRegex!5905 (regex!8237 rule!164))))

(assert (=> d!1577282 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1763 (regex!8237 rule!164) lt!2013490) lt!2013581)))

(declare-fun b!4907607 () Bool)

(assert (=> b!4907607 (= e!3067646 (matchR!6579 (regex!8237 rule!164) (_1!33719 (findLongestMatchInner!1800 (regex!8237 rule!164) Nil!56549 (size!37292 Nil!56549) lt!2013490 lt!2013490 (size!37292 lt!2013490)))))))

(assert (= (and d!1577282 (not res!2096329)) b!4907607))

(assert (=> d!1577282 m!5917118))

(assert (=> d!1577282 m!5917118))

(assert (=> d!1577282 m!5917116))

(assert (=> d!1577282 m!5917120))

(assert (=> d!1577282 m!5917116))

(assert (=> d!1577282 m!5917228))

(declare-fun m!5917328 () Bool)

(assert (=> d!1577282 m!5917328))

(assert (=> d!1577282 m!5917292))

(assert (=> b!4907607 m!5917118))

(assert (=> b!4907607 m!5917116))

(assert (=> b!4907607 m!5917118))

(assert (=> b!4907607 m!5917116))

(assert (=> b!4907607 m!5917120))

(assert (=> b!4907607 m!5917280))

(assert (=> b!4907455 d!1577282))

(declare-fun d!1577284 () Bool)

(declare-fun e!3067649 () Bool)

(assert (=> d!1577284 e!3067649))

(declare-fun res!2096332 () Bool)

(assert (=> d!1577284 (=> (not res!2096332) (not e!3067649))))

(assert (=> d!1577284 (= res!2096332 (semiInverseModEq!3638 (toChars!11025 (transformation!8237 rule!164)) (toValue!11166 (transformation!8237 rule!164))))))

(declare-fun Unit!146751 () Unit!146746)

(assert (=> d!1577284 (= (lemmaInv!1283 (transformation!8237 rule!164)) Unit!146751)))

(declare-fun b!4907610 () Bool)

(assert (=> b!4907610 (= e!3067649 (equivClasses!3491 (toChars!11025 (transformation!8237 rule!164)) (toValue!11166 (transformation!8237 rule!164))))))

(assert (= (and d!1577284 res!2096332) b!4907610))

(assert (=> d!1577284 m!5917124))

(assert (=> b!4907610 m!5917298))

(assert (=> b!4907455 d!1577284))

(declare-fun d!1577286 () Bool)

(declare-fun lt!2013584 () Int)

(assert (=> d!1577286 (>= lt!2013584 0)))

(declare-fun e!3067652 () Int)

(assert (=> d!1577286 (= lt!2013584 e!3067652)))

(declare-fun c!834193 () Bool)

(assert (=> d!1577286 (= c!834193 (is-Nil!56549 Nil!56549))))

(assert (=> d!1577286 (= (size!37292 Nil!56549) lt!2013584)))

(declare-fun b!4907615 () Bool)

(assert (=> b!4907615 (= e!3067652 0)))

(declare-fun b!4907616 () Bool)

(assert (=> b!4907616 (= e!3067652 (+ 1 (size!37292 (t!366901 Nil!56549))))))

(assert (= (and d!1577286 c!834193) b!4907615))

(assert (= (and d!1577286 (not c!834193)) b!4907616))

(declare-fun m!5917330 () Bool)

(assert (=> b!4907616 m!5917330))

(assert (=> b!4907455 d!1577286))

(declare-fun bs!1177223 () Bool)

(declare-fun d!1577288 () Bool)

(assert (= bs!1177223 (and d!1577288 b!4907458)))

(declare-fun lambda!244562 () Int)

(assert (=> bs!1177223 (= lambda!244562 lambda!244549)))

(assert (=> d!1577288 true))

(assert (=> d!1577288 (< (dynLambda!22852 order!25791 (toChars!11025 (transformation!8237 rule!164))) (dynLambda!22851 order!25789 lambda!244562))))

(assert (=> d!1577288 true))

(assert (=> d!1577288 (< (dynLambda!22850 order!25787 (toValue!11166 (transformation!8237 rule!164))) (dynLambda!22851 order!25789 lambda!244562))))

(assert (=> d!1577288 (= (semiInverseModEq!3638 (toChars!11025 (transformation!8237 rule!164)) (toValue!11166 (transformation!8237 rule!164))) (Forall!1734 lambda!244562))))

(declare-fun bs!1177224 () Bool)

(assert (= bs!1177224 d!1577288))

(declare-fun m!5917332 () Bool)

(assert (=> bs!1177224 m!5917332))

(assert (=> b!4907455 d!1577288))

(declare-fun d!1577290 () Bool)

(declare-fun lt!2013585 () Int)

(assert (=> d!1577290 (>= lt!2013585 0)))

(declare-fun e!3067653 () Int)

(assert (=> d!1577290 (= lt!2013585 e!3067653)))

(declare-fun c!834194 () Bool)

(assert (=> d!1577290 (= c!834194 (is-Nil!56549 lt!2013490))))

(assert (=> d!1577290 (= (size!37292 lt!2013490) lt!2013585)))

(declare-fun b!4907621 () Bool)

(assert (=> b!4907621 (= e!3067653 0)))

(declare-fun b!4907622 () Bool)

(assert (=> b!4907622 (= e!3067653 (+ 1 (size!37292 (t!366901 lt!2013490))))))

(assert (= (and d!1577290 c!834194) b!4907621))

(assert (= (and d!1577290 (not c!834194)) b!4907622))

(declare-fun m!5917334 () Bool)

(assert (=> b!4907622 m!5917334))

(assert (=> b!4907455 d!1577290))

(declare-fun b!4907657 () Bool)

(declare-fun e!3067675 () tuple2!60832)

(assert (=> b!4907657 (= e!3067675 (tuple2!60833 Nil!56549 lt!2013490))))

(declare-fun b!4907658 () Bool)

(declare-fun e!3067674 () tuple2!60832)

(assert (=> b!4907658 (= e!3067674 (tuple2!60833 Nil!56549 lt!2013490))))

(declare-fun b!4907659 () Bool)

(declare-fun c!834209 () Bool)

(declare-fun call!340638 () Bool)

(assert (=> b!4907659 (= c!834209 call!340638)))

(declare-fun lt!2013662 () Unit!146746)

(declare-fun lt!2013645 () Unit!146746)

(assert (=> b!4907659 (= lt!2013662 lt!2013645)))

(declare-fun lt!2013669 () C!26822)

(declare-fun lt!2013656 () List!56673)

(assert (=> b!4907659 (= (++!12266 (++!12266 Nil!56549 (Cons!56549 lt!2013669 Nil!56549)) lt!2013656) lt!2013490)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1350 (List!56673 C!26822 List!56673 List!56673) Unit!146746)

(assert (=> b!4907659 (= lt!2013645 (lemmaMoveElementToOtherListKeepsConcatEq!1350 Nil!56549 lt!2013669 lt!2013656 lt!2013490))))

(assert (=> b!4907659 (= lt!2013656 (tail!9626 lt!2013490))))

(assert (=> b!4907659 (= lt!2013669 (head!10479 lt!2013490))))

(declare-fun lt!2013659 () Unit!146746)

(declare-fun lt!2013653 () Unit!146746)

(assert (=> b!4907659 (= lt!2013659 lt!2013653)))

(declare-fun isPrefix!4919 (List!56673 List!56673) Bool)

(declare-fun getSuffix!2907 (List!56673 List!56673) List!56673)

(assert (=> b!4907659 (isPrefix!4919 (++!12266 Nil!56549 (Cons!56549 (head!10479 (getSuffix!2907 lt!2013490 Nil!56549)) Nil!56549)) lt!2013490)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!732 (List!56673 List!56673) Unit!146746)

(assert (=> b!4907659 (= lt!2013653 (lemmaAddHeadSuffixToPrefixStillPrefix!732 Nil!56549 lt!2013490))))

(declare-fun lt!2013672 () Unit!146746)

(declare-fun lt!2013652 () Unit!146746)

(assert (=> b!4907659 (= lt!2013672 lt!2013652)))

(assert (=> b!4907659 (= lt!2013652 (lemmaAddHeadSuffixToPrefixStillPrefix!732 Nil!56549 lt!2013490))))

(declare-fun lt!2013670 () List!56673)

(assert (=> b!4907659 (= lt!2013670 (++!12266 Nil!56549 (Cons!56549 (head!10479 lt!2013490) Nil!56549)))))

(declare-fun lt!2013660 () Unit!146746)

(declare-fun e!3067673 () Unit!146746)

(assert (=> b!4907659 (= lt!2013660 e!3067673)))

(declare-fun c!834208 () Bool)

(assert (=> b!4907659 (= c!834208 (= (size!37292 Nil!56549) (size!37292 lt!2013490)))))

(declare-fun lt!2013647 () Unit!146746)

(declare-fun lt!2013671 () Unit!146746)

(assert (=> b!4907659 (= lt!2013647 lt!2013671)))

(assert (=> b!4907659 (<= (size!37292 Nil!56549) (size!37292 lt!2013490))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!644 (List!56673 List!56673) Unit!146746)

(assert (=> b!4907659 (= lt!2013671 (lemmaIsPrefixThenSmallerEqSize!644 Nil!56549 lt!2013490))))

(declare-fun e!3067677 () tuple2!60832)

(declare-fun e!3067678 () tuple2!60832)

(assert (=> b!4907659 (= e!3067677 e!3067678)))

(declare-fun b!4907660 () Bool)

(declare-fun Unit!146752 () Unit!146746)

(assert (=> b!4907660 (= e!3067673 Unit!146752)))

(declare-fun bm!340631 () Bool)

(declare-fun call!340637 () Unit!146746)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1078 (List!56673 List!56673 List!56673) Unit!146746)

(assert (=> bm!340631 (= call!340637 (lemmaIsPrefixSameLengthThenSameList!1078 lt!2013490 Nil!56549 lt!2013490))))

(declare-fun bm!340632 () Bool)

(declare-fun call!340643 () List!56673)

(assert (=> bm!340632 (= call!340643 (tail!9626 lt!2013490))))

(declare-fun b!4907661 () Bool)

(declare-fun Unit!146753 () Unit!146746)

(assert (=> b!4907661 (= e!3067673 Unit!146753)))

(declare-fun lt!2013654 () Unit!146746)

(declare-fun call!340642 () Unit!146746)

(assert (=> b!4907661 (= lt!2013654 call!340642)))

(declare-fun call!340640 () Bool)

(assert (=> b!4907661 call!340640))

(declare-fun lt!2013649 () Unit!146746)

(assert (=> b!4907661 (= lt!2013649 lt!2013654)))

(declare-fun lt!2013648 () Unit!146746)

(assert (=> b!4907661 (= lt!2013648 call!340637)))

(assert (=> b!4907661 (= lt!2013490 Nil!56549)))

(declare-fun lt!2013646 () Unit!146746)

(assert (=> b!4907661 (= lt!2013646 lt!2013648)))

(assert (=> b!4907661 false))

(declare-fun bm!340633 () Bool)

(assert (=> bm!340633 (= call!340640 (isPrefix!4919 lt!2013490 lt!2013490))))

(declare-fun b!4907662 () Bool)

(declare-fun e!3067680 () tuple2!60832)

(assert (=> b!4907662 (= e!3067680 (tuple2!60833 Nil!56549 lt!2013490))))

(declare-fun bm!340634 () Bool)

(declare-fun call!340636 () C!26822)

(assert (=> bm!340634 (= call!340636 (head!10479 lt!2013490))))

(declare-fun b!4907664 () Bool)

(declare-fun e!3067676 () Bool)

(declare-fun lt!2013664 () tuple2!60832)

(assert (=> b!4907664 (= e!3067676 (>= (size!37292 (_1!33719 lt!2013664)) (size!37292 Nil!56549)))))

(declare-fun bm!340635 () Bool)

(declare-fun call!340639 () Regex!13312)

(assert (=> bm!340635 (= call!340639 (derivativeStep!3898 (regex!8237 rule!164) call!340636))))

(declare-fun bm!340636 () Bool)

(declare-fun lemmaIsPrefixRefl!3316 (List!56673 List!56673) Unit!146746)

(assert (=> bm!340636 (= call!340642 (lemmaIsPrefixRefl!3316 lt!2013490 lt!2013490))))

(declare-fun b!4907665 () Bool)

(declare-fun call!340641 () tuple2!60832)

(assert (=> b!4907665 (= e!3067678 call!340641)))

(declare-fun bm!340637 () Bool)

(assert (=> bm!340637 (= call!340638 (nullable!4578 (regex!8237 rule!164)))))

(declare-fun b!4907666 () Bool)

(assert (=> b!4907666 (= e!3067674 (tuple2!60833 Nil!56549 Nil!56549))))

(declare-fun b!4907667 () Bool)

(declare-fun c!834211 () Bool)

(assert (=> b!4907667 (= c!834211 call!340638)))

(declare-fun lt!2013651 () Unit!146746)

(declare-fun lt!2013657 () Unit!146746)

(assert (=> b!4907667 (= lt!2013651 lt!2013657)))

(assert (=> b!4907667 (= lt!2013490 Nil!56549)))

(assert (=> b!4907667 (= lt!2013657 call!340637)))

(declare-fun lt!2013658 () Unit!146746)

(declare-fun lt!2013663 () Unit!146746)

(assert (=> b!4907667 (= lt!2013658 lt!2013663)))

(assert (=> b!4907667 call!340640))

(assert (=> b!4907667 (= lt!2013663 call!340642)))

(assert (=> b!4907667 (= e!3067677 e!3067674)))

(declare-fun bm!340638 () Bool)

(assert (=> bm!340638 (= call!340641 (findLongestMatchInner!1800 call!340639 lt!2013670 (+ (size!37292 Nil!56549) 1) call!340643 lt!2013490 (size!37292 lt!2013490)))))

(declare-fun b!4907668 () Bool)

(assert (=> b!4907668 (= e!3067678 e!3067680)))

(declare-fun lt!2013655 () tuple2!60832)

(assert (=> b!4907668 (= lt!2013655 call!340641)))

(declare-fun c!834210 () Bool)

(assert (=> b!4907668 (= c!834210 (isEmpty!30438 (_1!33719 lt!2013655)))))

(declare-fun b!4907669 () Bool)

(assert (=> b!4907669 (= e!3067675 e!3067677)))

(declare-fun c!834207 () Bool)

(assert (=> b!4907669 (= c!834207 (= (size!37292 Nil!56549) (size!37292 lt!2013490)))))

(declare-fun b!4907670 () Bool)

(declare-fun e!3067679 () Bool)

(assert (=> b!4907670 (= e!3067679 e!3067676)))

(declare-fun res!2096344 () Bool)

(assert (=> b!4907670 (=> res!2096344 e!3067676)))

(assert (=> b!4907670 (= res!2096344 (isEmpty!30438 (_1!33719 lt!2013664)))))

(declare-fun d!1577292 () Bool)

(assert (=> d!1577292 e!3067679))

(declare-fun res!2096343 () Bool)

(assert (=> d!1577292 (=> (not res!2096343) (not e!3067679))))

(assert (=> d!1577292 (= res!2096343 (= (++!12266 (_1!33719 lt!2013664) (_2!33719 lt!2013664)) lt!2013490))))

(assert (=> d!1577292 (= lt!2013664 e!3067675)))

(declare-fun c!834212 () Bool)

(declare-fun lostCause!1106 (Regex!13312) Bool)

(assert (=> d!1577292 (= c!834212 (lostCause!1106 (regex!8237 rule!164)))))

(declare-fun lt!2013665 () Unit!146746)

(declare-fun Unit!146754 () Unit!146746)

(assert (=> d!1577292 (= lt!2013665 Unit!146754)))

(assert (=> d!1577292 (= (getSuffix!2907 lt!2013490 Nil!56549) lt!2013490)))

(declare-fun lt!2013650 () Unit!146746)

(declare-fun lt!2013666 () Unit!146746)

(assert (=> d!1577292 (= lt!2013650 lt!2013666)))

(declare-fun lt!2013668 () List!56673)

(assert (=> d!1577292 (= lt!2013490 lt!2013668)))

(declare-fun lemmaSamePrefixThenSameSuffix!2323 (List!56673 List!56673 List!56673 List!56673 List!56673) Unit!146746)

(assert (=> d!1577292 (= lt!2013666 (lemmaSamePrefixThenSameSuffix!2323 Nil!56549 lt!2013490 Nil!56549 lt!2013668 lt!2013490))))

(assert (=> d!1577292 (= lt!2013668 (getSuffix!2907 lt!2013490 Nil!56549))))

(declare-fun lt!2013667 () Unit!146746)

(declare-fun lt!2013661 () Unit!146746)

(assert (=> d!1577292 (= lt!2013667 lt!2013661)))

(assert (=> d!1577292 (isPrefix!4919 Nil!56549 (++!12266 Nil!56549 lt!2013490))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3143 (List!56673 List!56673) Unit!146746)

(assert (=> d!1577292 (= lt!2013661 (lemmaConcatTwoListThenFirstIsPrefix!3143 Nil!56549 lt!2013490))))

(assert (=> d!1577292 (validRegex!5905 (regex!8237 rule!164))))

(assert (=> d!1577292 (= (findLongestMatchInner!1800 (regex!8237 rule!164) Nil!56549 (size!37292 Nil!56549) lt!2013490 lt!2013490 (size!37292 lt!2013490)) lt!2013664)))

(declare-fun b!4907663 () Bool)

(assert (=> b!4907663 (= e!3067680 lt!2013655)))

(assert (= (and d!1577292 c!834212) b!4907657))

(assert (= (and d!1577292 (not c!834212)) b!4907669))

(assert (= (and b!4907669 c!834207) b!4907667))

(assert (= (and b!4907669 (not c!834207)) b!4907659))

(assert (= (and b!4907667 c!834211) b!4907666))

(assert (= (and b!4907667 (not c!834211)) b!4907658))

(assert (= (and b!4907659 c!834208) b!4907661))

(assert (= (and b!4907659 (not c!834208)) b!4907660))

(assert (= (and b!4907659 c!834209) b!4907668))

(assert (= (and b!4907659 (not c!834209)) b!4907665))

(assert (= (and b!4907668 c!834210) b!4907662))

(assert (= (and b!4907668 (not c!834210)) b!4907663))

(assert (= (or b!4907668 b!4907665) bm!340634))

(assert (= (or b!4907668 b!4907665) bm!340632))

(assert (= (or b!4907668 b!4907665) bm!340635))

(assert (= (or b!4907668 b!4907665) bm!340638))

(assert (= (or b!4907667 b!4907661) bm!340633))

(assert (= (or b!4907667 b!4907661) bm!340636))

(assert (= (or b!4907667 b!4907661) bm!340631))

(assert (= (or b!4907667 b!4907659) bm!340637))

(assert (= (and d!1577292 res!2096343) b!4907670))

(assert (= (and b!4907670 (not res!2096344)) b!4907664))

(declare-fun m!5917350 () Bool)

(assert (=> d!1577292 m!5917350))

(declare-fun m!5917352 () Bool)

(assert (=> d!1577292 m!5917352))

(declare-fun m!5917354 () Bool)

(assert (=> d!1577292 m!5917354))

(declare-fun m!5917356 () Bool)

(assert (=> d!1577292 m!5917356))

(declare-fun m!5917358 () Bool)

(assert (=> d!1577292 m!5917358))

(declare-fun m!5917360 () Bool)

(assert (=> d!1577292 m!5917360))

(declare-fun m!5917362 () Bool)

(assert (=> d!1577292 m!5917362))

(assert (=> d!1577292 m!5917228))

(assert (=> d!1577292 m!5917350))

(declare-fun m!5917364 () Bool)

(assert (=> b!4907664 m!5917364))

(assert (=> b!4907664 m!5917118))

(assert (=> bm!340638 m!5917116))

(declare-fun m!5917366 () Bool)

(assert (=> bm!340638 m!5917366))

(declare-fun m!5917368 () Bool)

(assert (=> bm!340636 m!5917368))

(declare-fun m!5917370 () Bool)

(assert (=> b!4907668 m!5917370))

(declare-fun m!5917372 () Bool)

(assert (=> bm!340632 m!5917372))

(declare-fun m!5917374 () Bool)

(assert (=> bm!340635 m!5917374))

(declare-fun m!5917376 () Bool)

(assert (=> bm!340633 m!5917376))

(assert (=> b!4907659 m!5917372))

(assert (=> b!4907659 m!5917356))

(declare-fun m!5917378 () Bool)

(assert (=> b!4907659 m!5917378))

(assert (=> b!4907659 m!5917356))

(declare-fun m!5917380 () Bool)

(assert (=> b!4907659 m!5917380))

(assert (=> b!4907659 m!5917118))

(declare-fun m!5917382 () Bool)

(assert (=> b!4907659 m!5917382))

(declare-fun m!5917384 () Bool)

(assert (=> b!4907659 m!5917384))

(assert (=> b!4907659 m!5917382))

(assert (=> b!4907659 m!5917116))

(declare-fun m!5917386 () Bool)

(assert (=> b!4907659 m!5917386))

(declare-fun m!5917388 () Bool)

(assert (=> b!4907659 m!5917388))

(declare-fun m!5917390 () Bool)

(assert (=> b!4907659 m!5917390))

(declare-fun m!5917392 () Bool)

(assert (=> b!4907659 m!5917392))

(declare-fun m!5917394 () Bool)

(assert (=> b!4907659 m!5917394))

(assert (=> b!4907659 m!5917388))

(declare-fun m!5917396 () Bool)

(assert (=> b!4907659 m!5917396))

(declare-fun m!5917398 () Bool)

(assert (=> b!4907670 m!5917398))

(assert (=> bm!340634 m!5917378))

(assert (=> bm!340637 m!5917296))

(declare-fun m!5917400 () Bool)

(assert (=> bm!340631 m!5917400))

(assert (=> b!4907455 d!1577292))

(declare-fun d!1577300 () Bool)

(declare-fun c!834215 () Bool)

(assert (=> d!1577300 (= c!834215 (is-Node!14805 (c!834175 input!1509)))))

(declare-fun e!3067685 () Bool)

(assert (=> d!1577300 (= (inv!73037 (c!834175 input!1509)) e!3067685)))

(declare-fun b!4907677 () Bool)

(declare-fun inv!73041 (Conc!14805) Bool)

(assert (=> b!4907677 (= e!3067685 (inv!73041 (c!834175 input!1509)))))

(declare-fun b!4907678 () Bool)

(declare-fun e!3067686 () Bool)

(assert (=> b!4907678 (= e!3067685 e!3067686)))

(declare-fun res!2096347 () Bool)

(assert (=> b!4907678 (= res!2096347 (not (is-Leaf!24641 (c!834175 input!1509))))))

(assert (=> b!4907678 (=> res!2096347 e!3067686)))

(declare-fun b!4907679 () Bool)

(declare-fun inv!73042 (Conc!14805) Bool)

(assert (=> b!4907679 (= e!3067686 (inv!73042 (c!834175 input!1509)))))

(assert (= (and d!1577300 c!834215) b!4907677))

(assert (= (and d!1577300 (not c!834215)) b!4907678))

(assert (= (and b!4907678 (not res!2096347)) b!4907679))

(declare-fun m!5917402 () Bool)

(assert (=> b!4907677 m!5917402))

(declare-fun m!5917404 () Bool)

(assert (=> b!4907679 m!5917404))

(assert (=> b!4907454 d!1577300))

(declare-fun d!1577302 () Bool)

(assert (=> d!1577302 (= (apply!13581 (transformation!8237 rule!164) lt!2013489) (dynLambda!22856 (toValue!11166 (transformation!8237 rule!164)) lt!2013489))))

(declare-fun b_lambda!195565 () Bool)

(assert (=> (not b_lambda!195565) (not d!1577302)))

(declare-fun t!366911 () Bool)

(declare-fun tb!259965 () Bool)

(assert (=> (and b!4907457 (= (toValue!11166 (transformation!8237 rule!164)) (toValue!11166 (transformation!8237 rule!164))) t!366911) tb!259965))

(declare-fun result!323756 () Bool)

(assert (=> tb!259965 (= result!323756 (inv!21 (dynLambda!22856 (toValue!11166 (transformation!8237 rule!164)) lt!2013489)))))

(declare-fun m!5917406 () Bool)

(assert (=> tb!259965 m!5917406))

(assert (=> d!1577302 t!366911))

(declare-fun b_and!346479 () Bool)

(assert (= b_and!346471 (and (=> t!366911 result!323756) b_and!346479)))

(declare-fun m!5917408 () Bool)

(assert (=> d!1577302 m!5917408))

(assert (=> b!4907453 d!1577302))

(declare-fun b!4907686 () Bool)

(declare-fun e!3067692 () Bool)

(assert (=> b!4907686 (= e!3067692 true)))

(declare-fun d!1577304 () Bool)

(assert (=> d!1577304 e!3067692))

(assert (= d!1577304 b!4907686))

(declare-fun lambda!244565 () Int)

(declare-fun order!25801 () Int)

(declare-fun dynLambda!22858 (Int Int) Int)

(assert (=> b!4907686 (< (dynLambda!22850 order!25787 (toValue!11166 (transformation!8237 rule!164))) (dynLambda!22858 order!25801 lambda!244565))))

(assert (=> b!4907686 (< (dynLambda!22852 order!25791 (toChars!11025 (transformation!8237 rule!164))) (dynLambda!22858 order!25801 lambda!244565))))

(assert (=> d!1577304 (= (dynLambda!22856 (toValue!11166 (transformation!8237 rule!164)) (_1!33717 lt!2013487)) (dynLambda!22856 (toValue!11166 (transformation!8237 rule!164)) lt!2013489))))

(declare-fun lt!2013675 () Unit!146746)

(declare-fun Forall2of!457 (Int BalanceConc!29040 BalanceConc!29040) Unit!146746)

(assert (=> d!1577304 (= lt!2013675 (Forall2of!457 lambda!244565 (_1!33717 lt!2013487) lt!2013489))))

(assert (=> d!1577304 (= (list!17825 (_1!33717 lt!2013487)) (list!17825 lt!2013489))))

(assert (=> d!1577304 (= (lemmaEqSameImage!1119 (transformation!8237 rule!164) (_1!33717 lt!2013487) lt!2013489) lt!2013675)))

(declare-fun b_lambda!195567 () Bool)

(assert (=> (not b_lambda!195567) (not d!1577304)))

(assert (=> d!1577304 t!366905))

(declare-fun b_and!346481 () Bool)

(assert (= b_and!346479 (and (=> t!366905 result!323746) b_and!346481)))

(declare-fun b_lambda!195569 () Bool)

(assert (=> (not b_lambda!195569) (not d!1577304)))

(assert (=> d!1577304 t!366911))

(declare-fun b_and!346483 () Bool)

(assert (= b_and!346481 (and (=> t!366911 result!323756) b_and!346483)))

(assert (=> d!1577304 m!5917140))

(assert (=> d!1577304 m!5917408))

(assert (=> d!1577304 m!5917234))

(assert (=> d!1577304 m!5917098))

(declare-fun m!5917410 () Bool)

(assert (=> d!1577304 m!5917410))

(assert (=> b!4907453 d!1577304))

(declare-fun d!1577306 () Bool)

(assert (=> d!1577306 (= (list!17825 lt!2013489) (list!17827 (c!834175 lt!2013489)))))

(declare-fun bs!1177227 () Bool)

(assert (= bs!1177227 d!1577306))

(declare-fun m!5917412 () Bool)

(assert (=> bs!1177227 m!5917412))

(assert (=> b!4907452 d!1577306))

(declare-fun b!4907695 () Bool)

(declare-fun tp!1380318 () Bool)

(declare-fun tp!1380320 () Bool)

(declare-fun e!3067697 () Bool)

(assert (=> b!4907695 (= e!3067697 (and (inv!73037 (left!41176 (c!834175 input!1509))) tp!1380320 (inv!73037 (right!41506 (c!834175 input!1509))) tp!1380318))))

(declare-fun b!4907697 () Bool)

(declare-fun e!3067698 () Bool)

(declare-fun tp!1380319 () Bool)

(assert (=> b!4907697 (= e!3067698 tp!1380319)))

(declare-fun b!4907696 () Bool)

(declare-fun inv!73043 (IArray!29671) Bool)

(assert (=> b!4907696 (= e!3067697 (and (inv!73043 (xs!18121 (c!834175 input!1509))) e!3067698))))

(assert (=> b!4907454 (= tp!1380297 (and (inv!73037 (c!834175 input!1509)) e!3067697))))

(assert (= (and b!4907454 (is-Node!14805 (c!834175 input!1509))) b!4907695))

(assert (= b!4907696 b!4907697))

(assert (= (and b!4907454 (is-Leaf!24641 (c!834175 input!1509))) b!4907696))

(declare-fun m!5917414 () Bool)

(assert (=> b!4907695 m!5917414))

(declare-fun m!5917416 () Bool)

(assert (=> b!4907695 m!5917416))

(declare-fun m!5917418 () Bool)

(assert (=> b!4907696 m!5917418))

(assert (=> b!4907454 m!5917150))

(declare-fun b!4907709 () Bool)

(declare-fun e!3067701 () Bool)

(declare-fun tp!1380331 () Bool)

(declare-fun tp!1380333 () Bool)

(assert (=> b!4907709 (= e!3067701 (and tp!1380331 tp!1380333))))

(declare-fun b!4907708 () Bool)

(declare-fun tp_is_empty!35833 () Bool)

(assert (=> b!4907708 (= e!3067701 tp_is_empty!35833)))

(declare-fun b!4907711 () Bool)

(declare-fun tp!1380335 () Bool)

(declare-fun tp!1380332 () Bool)

(assert (=> b!4907711 (= e!3067701 (and tp!1380335 tp!1380332))))

(declare-fun b!4907710 () Bool)

(declare-fun tp!1380334 () Bool)

(assert (=> b!4907710 (= e!3067701 tp!1380334)))

(assert (=> b!4907448 (= tp!1380299 e!3067701)))

(assert (= (and b!4907448 (is-ElementMatch!13312 (regex!8237 rule!164))) b!4907708))

(assert (= (and b!4907448 (is-Concat!21859 (regex!8237 rule!164))) b!4907709))

(assert (= (and b!4907448 (is-Star!13312 (regex!8237 rule!164))) b!4907710))

(assert (= (and b!4907448 (is-Union!13312 (regex!8237 rule!164))) b!4907711))

(declare-fun b_lambda!195571 () Bool)

(assert (= b_lambda!195569 (or (and b!4907457 b_free!131919) b_lambda!195571)))

(declare-fun b_lambda!195573 () Bool)

(assert (= b_lambda!195567 (or (and b!4907457 b_free!131919) b_lambda!195573)))

(declare-fun b_lambda!195575 () Bool)

(assert (= b_lambda!195555 (or b!4907458 b_lambda!195575)))

(declare-fun bs!1177228 () Bool)

(declare-fun d!1577308 () Bool)

(assert (= bs!1177228 (and d!1577308 b!4907458)))

(declare-fun dynLambda!22859 (Int TokenValue!8547) BalanceConc!29040)

(assert (=> bs!1177228 (= (dynLambda!22857 lambda!244549 lt!2013489) (= (list!17825 (dynLambda!22859 (toChars!11025 (transformation!8237 rule!164)) (dynLambda!22856 (toValue!11166 (transformation!8237 rule!164)) lt!2013489))) (list!17825 lt!2013489)))))

(declare-fun b_lambda!195583 () Bool)

(assert (=> (not b_lambda!195583) (not bs!1177228)))

(declare-fun t!366913 () Bool)

(declare-fun tb!259967 () Bool)

(assert (=> (and b!4907457 (= (toChars!11025 (transformation!8237 rule!164)) (toChars!11025 (transformation!8237 rule!164))) t!366913) tb!259967))

(declare-fun b!4907716 () Bool)

(declare-fun tp!1380338 () Bool)

(declare-fun e!3067704 () Bool)

(assert (=> b!4907716 (= e!3067704 (and (inv!73037 (c!834175 (dynLambda!22859 (toChars!11025 (transformation!8237 rule!164)) (dynLambda!22856 (toValue!11166 (transformation!8237 rule!164)) lt!2013489)))) tp!1380338))))

(declare-fun result!323762 () Bool)

(assert (=> tb!259967 (= result!323762 (and (inv!73036 (dynLambda!22859 (toChars!11025 (transformation!8237 rule!164)) (dynLambda!22856 (toValue!11166 (transformation!8237 rule!164)) lt!2013489))) e!3067704))))

(assert (= tb!259967 b!4907716))

(declare-fun m!5917420 () Bool)

(assert (=> b!4907716 m!5917420))

(declare-fun m!5917422 () Bool)

(assert (=> tb!259967 m!5917422))

(assert (=> bs!1177228 t!366913))

(declare-fun b_and!346485 () Bool)

(assert (= b_and!346465 (and (=> t!366913 result!323762) b_and!346485)))

(declare-fun b_lambda!195585 () Bool)

(assert (=> (not b_lambda!195585) (not bs!1177228)))

(assert (=> bs!1177228 t!366911))

(declare-fun b_and!346487 () Bool)

(assert (= b_and!346483 (and (=> t!366911 result!323756) b_and!346487)))

(assert (=> bs!1177228 m!5917140))

(assert (=> bs!1177228 m!5917408))

(declare-fun m!5917424 () Bool)

(assert (=> bs!1177228 m!5917424))

(assert (=> bs!1177228 m!5917408))

(assert (=> bs!1177228 m!5917424))

(declare-fun m!5917426 () Bool)

(assert (=> bs!1177228 m!5917426))

(assert (=> d!1577242 d!1577308))

(declare-fun b_lambda!195577 () Bool)

(assert (= b_lambda!195553 (or (and b!4907457 b_free!131919) b_lambda!195577)))

(declare-fun b_lambda!195579 () Bool)

(assert (= b_lambda!195565 (or (and b!4907457 b_free!131919) b_lambda!195579)))

(declare-fun b_lambda!195581 () Bool)

(assert (= b_lambda!195557 (or b!4907458 b_lambda!195581)))

(declare-fun bs!1177229 () Bool)

(declare-fun d!1577310 () Bool)

(assert (= bs!1177229 (and d!1577310 b!4907458)))

(assert (=> bs!1177229 (= (dynLambda!22857 lambda!244549 (_1!33717 lt!2013487)) (= (list!17825 (dynLambda!22859 (toChars!11025 (transformation!8237 rule!164)) (dynLambda!22856 (toValue!11166 (transformation!8237 rule!164)) (_1!33717 lt!2013487)))) (list!17825 (_1!33717 lt!2013487))))))

(declare-fun b_lambda!195587 () Bool)

(assert (=> (not b_lambda!195587) (not bs!1177229)))

(declare-fun t!366915 () Bool)

(declare-fun tb!259969 () Bool)

(assert (=> (and b!4907457 (= (toChars!11025 (transformation!8237 rule!164)) (toChars!11025 (transformation!8237 rule!164))) t!366915) tb!259969))

(declare-fun tp!1380339 () Bool)

(declare-fun e!3067705 () Bool)

(declare-fun b!4907717 () Bool)

(assert (=> b!4907717 (= e!3067705 (and (inv!73037 (c!834175 (dynLambda!22859 (toChars!11025 (transformation!8237 rule!164)) (dynLambda!22856 (toValue!11166 (transformation!8237 rule!164)) (_1!33717 lt!2013487))))) tp!1380339))))

(declare-fun result!323766 () Bool)

(assert (=> tb!259969 (= result!323766 (and (inv!73036 (dynLambda!22859 (toChars!11025 (transformation!8237 rule!164)) (dynLambda!22856 (toValue!11166 (transformation!8237 rule!164)) (_1!33717 lt!2013487)))) e!3067705))))

(assert (= tb!259969 b!4907717))

(declare-fun m!5917428 () Bool)

(assert (=> b!4907717 m!5917428))

(declare-fun m!5917430 () Bool)

(assert (=> tb!259969 m!5917430))

(assert (=> bs!1177229 t!366915))

(declare-fun b_and!346489 () Bool)

(assert (= b_and!346485 (and (=> t!366915 result!323766) b_and!346489)))

(declare-fun b_lambda!195589 () Bool)

(assert (=> (not b_lambda!195589) (not bs!1177229)))

(assert (=> bs!1177229 t!366905))

(declare-fun b_and!346491 () Bool)

(assert (= b_and!346487 (and (=> t!366905 result!323746) b_and!346491)))

(assert (=> bs!1177229 m!5917098))

(assert (=> bs!1177229 m!5917234))

(declare-fun m!5917432 () Bool)

(assert (=> bs!1177229 m!5917432))

(assert (=> bs!1177229 m!5917234))

(assert (=> bs!1177229 m!5917432))

(declare-fun m!5917434 () Bool)

(assert (=> bs!1177229 m!5917434))

(assert (=> d!1577244 d!1577310))

(push 1)

(assert (not d!1577254))

(assert (not b!4907710))

(assert (not bm!340637))

(assert (not d!1577288))

(assert (not d!1577280))

(assert (not b_lambda!195571))

(assert (not d!1577260))

(assert (not bm!340636))

(assert (not d!1577236))

(assert (not b!4907616))

(assert (not b_lambda!195579))

(assert (not b!4907602))

(assert (not b!4907716))

(assert (not b_lambda!195577))

(assert (not b!4907538))

(assert (not b!4907595))

(assert (not bm!340638))

(assert (not bm!340635))

(assert b_and!346489)

(assert (not b!4907607))

(assert (not b!4907604))

(assert (not d!1577242))

(assert (not b!4907546))

(assert (not d!1577248))

(assert (not b!4907711))

(assert (not d!1577252))

(assert (not b!4907544))

(assert (not b!4907557))

(assert (not bm!340633))

(assert (not b!4907695))

(assert (not bs!1177229))

(assert (not d!1577306))

(assert (not b!4907553))

(assert (not b!4907696))

(assert (not d!1577246))

(assert (not b!4907591))

(assert (not d!1577292))

(assert (not d!1577240))

(assert (not b_lambda!195589))

(assert (not b!4907539))

(assert (not d!1577282))

(assert (not b_lambda!195585))

(assert (not d!1577234))

(assert (not b!4907697))

(assert (not d!1577266))

(assert (not b_next!132711))

(assert (not b!4907664))

(assert (not tb!259959))

(assert (not b_lambda!195575))

(assert (not bm!340632))

(assert (not b!4907659))

(assert (not bm!340614))

(assert (not b!4907679))

(assert (not bm!340631))

(assert (not b!4907541))

(assert (not b!4907668))

(assert (not b_lambda!195573))

(assert (not b!4907540))

(assert (not tb!259965))

(assert (not d!1577304))

(assert (not b!4907596))

(assert (not b!4907545))

(assert (not tb!259969))

(assert (not d!1577274))

(assert (not b_lambda!195581))

(assert (not b!4907670))

(assert (not d!1577244))

(assert (not b!4907454))

(assert (not d!1577250))

(assert (not bm!340634))

(assert (not b!4907592))

(assert (not b_next!132709))

(assert (not tb!259967))

(assert b_and!346491)

(assert (not d!1577276))

(assert (not b!4907677))

(assert tp_is_empty!35833)

(assert (not b!4907717))

(assert (not b!4907543))

(assert (not b_lambda!195583))

(assert (not b!4907610))

(assert (not d!1577264))

(assert (not b!4907709))

(assert (not bs!1177228))

(assert (not b_lambda!195587))

(assert (not d!1577284))

(assert (not b!4907622))

(check-sat)

(pop 1)

(push 1)

(assert b_and!346489)

(assert b_and!346491)

(assert (not b_next!132711))

(assert (not b_next!132709))

(check-sat)

(pop 1)

