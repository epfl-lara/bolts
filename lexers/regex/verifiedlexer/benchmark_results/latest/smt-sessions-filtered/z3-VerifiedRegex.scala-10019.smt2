; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!523518 () Bool)

(assert start!523518)

(declare-fun b!4963866 () Bool)

(declare-fun b_free!132723 () Bool)

(declare-fun b_next!133513 () Bool)

(assert (=> b!4963866 (= b_free!132723 (not b_next!133513))))

(declare-fun tp!1392525 () Bool)

(declare-fun b_and!347679 () Bool)

(assert (=> b!4963866 (= tp!1392525 b_and!347679)))

(declare-fun b_free!132725 () Bool)

(declare-fun b_next!133515 () Bool)

(assert (=> b!4963866 (= b_free!132725 (not b_next!133515))))

(declare-fun tp!1392522 () Bool)

(declare-fun b_and!347681 () Bool)

(assert (=> b!4963866 (= tp!1392522 b_and!347681)))

(declare-fun res!2118781 () Bool)

(declare-fun e!3102785 () Bool)

(assert (=> start!523518 (=> (not res!2118781) (not e!3102785))))

(declare-datatypes ((LexerInterface!7982 0))(
  ( (LexerInterfaceExt!7979 (__x!34693 Int)) (Lexer!7980) )
))
(declare-fun thiss!15247 () LexerInterface!7982)

(get-info :version)

(assert (=> start!523518 (= res!2118781 ((_ is Lexer!7980) thiss!15247))))

(assert (=> start!523518 e!3102785))

(assert (=> start!523518 true))

(declare-fun e!3102783 () Bool)

(assert (=> start!523518 e!3102783))

(declare-datatypes ((C!27496 0))(
  ( (C!27497 (val!23114 Int)) )
))
(declare-datatypes ((List!57556 0))(
  ( (Nil!57432) (Cons!57432 (h!63880 C!27496) (t!368222 List!57556)) )
))
(declare-datatypes ((IArray!30345 0))(
  ( (IArray!30346 (innerList!15230 List!57556)) )
))
(declare-datatypes ((Conc!15142 0))(
  ( (Node!15142 (left!41887 Conc!15142) (right!42217 Conc!15142) (csize!30514 Int) (cheight!15353 Int)) (Leaf!25162 (xs!18468 IArray!30345) (csize!30515 Int)) (Empty!15142) )
))
(declare-datatypes ((BalanceConc!29714 0))(
  ( (BalanceConc!29715 (c!846891 Conc!15142)) )
))
(declare-fun input!1342 () BalanceConc!29714)

(declare-fun e!3102778 () Bool)

(declare-fun inv!75047 (BalanceConc!29714) Bool)

(assert (=> start!523518 (and (inv!75047 input!1342) e!3102778)))

(declare-fun totalInput!464 () BalanceConc!29714)

(declare-fun e!3102782 () Bool)

(assert (=> start!523518 (and (inv!75047 totalInput!464) e!3102782)))

(declare-fun b!4963861 () Bool)

(declare-fun e!3102777 () Bool)

(declare-fun e!3102784 () Bool)

(assert (=> b!4963861 (= e!3102777 (not e!3102784))))

(declare-fun res!2118780 () Bool)

(assert (=> b!4963861 (=> res!2118780 e!3102784)))

(declare-datatypes ((List!57557 0))(
  ( (Nil!57433) (Cons!57433 (h!63881 (_ BitVec 16)) (t!368223 List!57557)) )
))
(declare-datatypes ((TokenValue!8700 0))(
  ( (FloatLiteralValue!17400 (text!61345 List!57557)) (TokenValueExt!8699 (__x!34694 Int)) (Broken!43500 (value!268529 List!57557)) (Object!8823) (End!8700) (Def!8700) (Underscore!8700) (Match!8700) (Else!8700) (Error!8700) (Case!8700) (If!8700) (Extends!8700) (Abstract!8700) (Class!8700) (Val!8700) (DelimiterValue!17400 (del!8760 List!57557)) (KeywordValue!8706 (value!268530 List!57557)) (CommentValue!17400 (value!268531 List!57557)) (WhitespaceValue!17400 (value!268532 List!57557)) (IndentationValue!8700 (value!268533 List!57557)) (String!65373) (Int32!8700) (Broken!43501 (value!268534 List!57557)) (Boolean!8701) (Unit!148330) (OperatorValue!8703 (op!8760 List!57557)) (IdentifierValue!17400 (value!268535 List!57557)) (IdentifierValue!17401 (value!268536 List!57557)) (WhitespaceValue!17401 (value!268537 List!57557)) (True!17400) (False!17400) (Broken!43502 (value!268538 List!57557)) (Broken!43503 (value!268539 List!57557)) (True!17401) (RightBrace!8700) (RightBracket!8700) (Colon!8700) (Null!8700) (Comma!8700) (LeftBracket!8700) (False!17401) (LeftBrace!8700) (ImaginaryLiteralValue!8700 (text!61346 List!57557)) (StringLiteralValue!26100 (value!268540 List!57557)) (EOFValue!8700 (value!268541 List!57557)) (IdentValue!8700 (value!268542 List!57557)) (DelimiterValue!17401 (value!268543 List!57557)) (DedentValue!8700 (value!268544 List!57557)) (NewLineValue!8700 (value!268545 List!57557)) (IntegerValue!26100 (value!268546 (_ BitVec 32)) (text!61347 List!57557)) (IntegerValue!26101 (value!268547 Int) (text!61348 List!57557)) (Times!8700) (Or!8700) (Equal!8700) (Minus!8700) (Broken!43504 (value!268548 List!57557)) (And!8700) (Div!8700) (LessEqual!8700) (Mod!8700) (Concat!22323) (Not!8700) (Plus!8700) (SpaceValue!8700 (value!268549 List!57557)) (IntegerValue!26102 (value!268550 Int) (text!61349 List!57557)) (StringLiteralValue!26101 (text!61350 List!57557)) (FloatLiteralValue!17401 (text!61351 List!57557)) (BytesLiteralValue!8700 (value!268551 List!57557)) (CommentValue!17401 (value!268552 List!57557)) (StringLiteralValue!26102 (value!268553 List!57557)) (ErrorTokenValue!8700 (msg!8761 List!57557)) )
))
(declare-datatypes ((Regex!13623 0))(
  ( (ElementMatch!13623 (c!846892 C!27496)) (Concat!22324 (regOne!27758 Regex!13623) (regTwo!27758 Regex!13623)) (EmptyExpr!13623) (Star!13623 (reg!13952 Regex!13623)) (EmptyLang!13623) (Union!13623 (regOne!27759 Regex!13623) (regTwo!27759 Regex!13623)) )
))
(declare-datatypes ((String!65374 0))(
  ( (String!65375 (value!268554 String)) )
))
(declare-datatypes ((TokenValueInjection!16708 0))(
  ( (TokenValueInjection!16709 (toValue!11345 Int) (toChars!11204 Int)) )
))
(declare-datatypes ((Rule!16580 0))(
  ( (Rule!16581 (regex!8390 Regex!13623) (tag!9254 String!65374) (isSeparator!8390 Bool) (transformation!8390 TokenValueInjection!16708)) )
))
(declare-datatypes ((List!57558 0))(
  ( (Nil!57434) (Cons!57434 (h!63882 Rule!16580) (t!368224 List!57558)) )
))
(declare-fun rulesArg!259 () List!57558)

(assert (=> b!4963861 (= res!2118780 (or (and ((_ is Cons!57434) rulesArg!259) ((_ is Nil!57434) (t!368224 rulesArg!259))) (not ((_ is Cons!57434) rulesArg!259))))))

(declare-fun lt!2049454 () List!57556)

(declare-fun isPrefix!5241 (List!57556 List!57556) Bool)

(assert (=> b!4963861 (isPrefix!5241 lt!2049454 lt!2049454)))

(declare-datatypes ((Unit!148331 0))(
  ( (Unit!148332) )
))
(declare-fun lt!2049452 () Unit!148331)

(declare-fun lemmaIsPrefixRefl!3565 (List!57556 List!57556) Unit!148331)

(assert (=> b!4963861 (= lt!2049452 (lemmaIsPrefixRefl!3565 lt!2049454 lt!2049454))))

(declare-fun b!4963862 () Bool)

(declare-fun tp!1392526 () Bool)

(declare-fun inv!75048 (Conc!15142) Bool)

(assert (=> b!4963862 (= e!3102778 (and (inv!75048 (c!846891 input!1342)) tp!1392526))))

(declare-fun b!4963863 () Bool)

(declare-fun res!2118783 () Bool)

(assert (=> b!4963863 (=> (not res!2118783) (not e!3102785))))

(declare-fun isEmpty!30916 (List!57558) Bool)

(assert (=> b!4963863 (= res!2118783 (not (isEmpty!30916 rulesArg!259)))))

(declare-fun b!4963864 () Bool)

(declare-fun res!2118779 () Bool)

(assert (=> b!4963864 (=> (not res!2118779) (not e!3102785))))

(declare-fun rulesValidInductive!3293 (LexerInterface!7982 List!57558) Bool)

(assert (=> b!4963864 (= res!2118779 (rulesValidInductive!3293 thiss!15247 rulesArg!259))))

(declare-fun b!4963865 () Bool)

(assert (=> b!4963865 (= e!3102785 e!3102777)))

(declare-fun res!2118782 () Bool)

(assert (=> b!4963865 (=> (not res!2118782) (not e!3102777))))

(declare-fun isSuffix!1189 (List!57556 List!57556) Bool)

(declare-fun list!18356 (BalanceConc!29714) List!57556)

(assert (=> b!4963865 (= res!2118782 (isSuffix!1189 lt!2049454 (list!18356 totalInput!464)))))

(assert (=> b!4963865 (= lt!2049454 (list!18356 input!1342))))

(declare-fun e!3102779 () Bool)

(assert (=> b!4963866 (= e!3102779 (and tp!1392525 tp!1392522))))

(declare-fun b!4963867 () Bool)

(declare-fun e!3102781 () Bool)

(declare-fun tp!1392521 () Bool)

(assert (=> b!4963867 (= e!3102783 (and e!3102781 tp!1392521))))

(declare-fun b!4963868 () Bool)

(declare-fun tp!1392523 () Bool)

(declare-fun inv!75043 (String!65374) Bool)

(declare-fun inv!75049 (TokenValueInjection!16708) Bool)

(assert (=> b!4963868 (= e!3102781 (and tp!1392523 (inv!75043 (tag!9254 (h!63882 rulesArg!259))) (inv!75049 (transformation!8390 (h!63882 rulesArg!259))) e!3102779))))

(declare-fun b!4963869 () Bool)

(declare-fun tp!1392524 () Bool)

(assert (=> b!4963869 (= e!3102782 (and (inv!75048 (c!846891 totalInput!464)) tp!1392524))))

(declare-fun b!4963870 () Bool)

(declare-fun size!38056 (List!57558) Int)

(assert (=> b!4963870 (= e!3102784 (< (size!38056 (t!368224 rulesArg!259)) (size!38056 rulesArg!259)))))

(declare-datatypes ((Token!15276 0))(
  ( (Token!15277 (value!268555 TokenValue!8700) (rule!11626 Rule!16580) (size!38057 Int) (originalCharacters!8669 List!57556)) )
))
(declare-datatypes ((tuple2!62134 0))(
  ( (tuple2!62135 (_1!34370 Token!15276) (_2!34370 BalanceConc!29714)) )
))
(declare-datatypes ((Option!14442 0))(
  ( (None!14441) (Some!14441 (v!50428 tuple2!62134)) )
))
(declare-fun lt!2049453 () Option!14442)

(declare-fun maxPrefixOneRuleZipperSequenceV2!358 (LexerInterface!7982 Rule!16580 BalanceConc!29714 BalanceConc!29714) Option!14442)

(assert (=> b!4963870 (= lt!2049453 (maxPrefixOneRuleZipperSequenceV2!358 thiss!15247 (h!63882 rulesArg!259) input!1342 totalInput!464))))

(assert (= (and start!523518 res!2118781) b!4963864))

(assert (= (and b!4963864 res!2118779) b!4963863))

(assert (= (and b!4963863 res!2118783) b!4963865))

(assert (= (and b!4963865 res!2118782) b!4963861))

(assert (= (and b!4963861 (not res!2118780)) b!4963870))

(assert (= b!4963868 b!4963866))

(assert (= b!4963867 b!4963868))

(assert (= (and start!523518 ((_ is Cons!57434) rulesArg!259)) b!4963867))

(assert (= start!523518 b!4963862))

(assert (= start!523518 b!4963869))

(declare-fun m!5988362 () Bool)

(assert (=> b!4963861 m!5988362))

(declare-fun m!5988364 () Bool)

(assert (=> b!4963861 m!5988364))

(declare-fun m!5988366 () Bool)

(assert (=> b!4963864 m!5988366))

(declare-fun m!5988368 () Bool)

(assert (=> b!4963863 m!5988368))

(declare-fun m!5988370 () Bool)

(assert (=> b!4963862 m!5988370))

(declare-fun m!5988372 () Bool)

(assert (=> b!4963868 m!5988372))

(declare-fun m!5988374 () Bool)

(assert (=> b!4963868 m!5988374))

(declare-fun m!5988376 () Bool)

(assert (=> b!4963870 m!5988376))

(declare-fun m!5988378 () Bool)

(assert (=> b!4963870 m!5988378))

(declare-fun m!5988380 () Bool)

(assert (=> b!4963870 m!5988380))

(declare-fun m!5988382 () Bool)

(assert (=> start!523518 m!5988382))

(declare-fun m!5988384 () Bool)

(assert (=> start!523518 m!5988384))

(declare-fun m!5988386 () Bool)

(assert (=> b!4963865 m!5988386))

(assert (=> b!4963865 m!5988386))

(declare-fun m!5988388 () Bool)

(assert (=> b!4963865 m!5988388))

(declare-fun m!5988390 () Bool)

(assert (=> b!4963865 m!5988390))

(declare-fun m!5988392 () Bool)

(assert (=> b!4963869 m!5988392))

(check-sat (not b!4963869) (not b!4963870) (not b_next!133515) (not b!4963862) b_and!347681 (not b!4963863) (not b!4963867) (not b!4963868) (not b!4963864) (not start!523518) b_and!347679 (not b!4963865) (not b!4963861) (not b_next!133513))
(check-sat b_and!347679 b_and!347681 (not b_next!133513) (not b_next!133515))
(get-model)

(declare-fun d!1597046 () Bool)

(declare-fun e!3102795 () Bool)

(assert (=> d!1597046 e!3102795))

(declare-fun res!2118795 () Bool)

(assert (=> d!1597046 (=> res!2118795 e!3102795)))

(declare-fun lt!2049461 () Bool)

(assert (=> d!1597046 (= res!2118795 (not lt!2049461))))

(declare-fun drop!2346 (List!57556 Int) List!57556)

(declare-fun size!38060 (List!57556) Int)

(assert (=> d!1597046 (= lt!2049461 (= lt!2049454 (drop!2346 (list!18356 totalInput!464) (- (size!38060 (list!18356 totalInput!464)) (size!38060 lt!2049454)))))))

(assert (=> d!1597046 (= (isSuffix!1189 lt!2049454 (list!18356 totalInput!464)) lt!2049461)))

(declare-fun b!4963884 () Bool)

(assert (=> b!4963884 (= e!3102795 (>= (size!38060 (list!18356 totalInput!464)) (size!38060 lt!2049454)))))

(assert (= (and d!1597046 (not res!2118795)) b!4963884))

(assert (=> d!1597046 m!5988386))

(declare-fun m!5988400 () Bool)

(assert (=> d!1597046 m!5988400))

(declare-fun m!5988402 () Bool)

(assert (=> d!1597046 m!5988402))

(assert (=> d!1597046 m!5988386))

(declare-fun m!5988404 () Bool)

(assert (=> d!1597046 m!5988404))

(assert (=> b!4963884 m!5988386))

(assert (=> b!4963884 m!5988400))

(assert (=> b!4963884 m!5988402))

(assert (=> b!4963865 d!1597046))

(declare-fun d!1597048 () Bool)

(declare-fun list!18358 (Conc!15142) List!57556)

(assert (=> d!1597048 (= (list!18356 totalInput!464) (list!18358 (c!846891 totalInput!464)))))

(declare-fun bs!1182859 () Bool)

(assert (= bs!1182859 d!1597048))

(declare-fun m!5988406 () Bool)

(assert (=> bs!1182859 m!5988406))

(assert (=> b!4963865 d!1597048))

(declare-fun d!1597050 () Bool)

(assert (=> d!1597050 (= (list!18356 input!1342) (list!18358 (c!846891 input!1342)))))

(declare-fun bs!1182860 () Bool)

(assert (= bs!1182860 d!1597050))

(declare-fun m!5988408 () Bool)

(assert (=> bs!1182860 m!5988408))

(assert (=> b!4963865 d!1597050))

(declare-fun d!1597052 () Bool)

(declare-fun lt!2049464 () Int)

(assert (=> d!1597052 (>= lt!2049464 0)))

(declare-fun e!3102798 () Int)

(assert (=> d!1597052 (= lt!2049464 e!3102798)))

(declare-fun c!846899 () Bool)

(assert (=> d!1597052 (= c!846899 ((_ is Nil!57434) (t!368224 rulesArg!259)))))

(assert (=> d!1597052 (= (size!38056 (t!368224 rulesArg!259)) lt!2049464)))

(declare-fun b!4963889 () Bool)

(assert (=> b!4963889 (= e!3102798 0)))

(declare-fun b!4963890 () Bool)

(assert (=> b!4963890 (= e!3102798 (+ 1 (size!38056 (t!368224 (t!368224 rulesArg!259)))))))

(assert (= (and d!1597052 c!846899) b!4963889))

(assert (= (and d!1597052 (not c!846899)) b!4963890))

(declare-fun m!5988410 () Bool)

(assert (=> b!4963890 m!5988410))

(assert (=> b!4963870 d!1597052))

(declare-fun d!1597054 () Bool)

(declare-fun lt!2049465 () Int)

(assert (=> d!1597054 (>= lt!2049465 0)))

(declare-fun e!3102799 () Int)

(assert (=> d!1597054 (= lt!2049465 e!3102799)))

(declare-fun c!846900 () Bool)

(assert (=> d!1597054 (= c!846900 ((_ is Nil!57434) rulesArg!259))))

(assert (=> d!1597054 (= (size!38056 rulesArg!259) lt!2049465)))

(declare-fun b!4963891 () Bool)

(assert (=> b!4963891 (= e!3102799 0)))

(declare-fun b!4963892 () Bool)

(assert (=> b!4963892 (= e!3102799 (+ 1 (size!38056 (t!368224 rulesArg!259))))))

(assert (= (and d!1597054 c!846900) b!4963891))

(assert (= (and d!1597054 (not c!846900)) b!4963892))

(assert (=> b!4963892 m!5988376))

(assert (=> b!4963870 d!1597054))

(declare-fun b!4964018 () Bool)

(declare-fun e!3102890 () Bool)

(assert (=> b!4964018 (= e!3102890 true)))

(declare-fun b!4964017 () Bool)

(declare-fun e!3102889 () Bool)

(assert (=> b!4964017 (= e!3102889 e!3102890)))

(declare-fun b!4964005 () Bool)

(assert (=> b!4964005 e!3102889))

(assert (= b!4964017 b!4964018))

(assert (= b!4964005 b!4964017))

(declare-fun order!26183 () Int)

(declare-fun lambda!247295 () Int)

(declare-fun order!26181 () Int)

(declare-fun dynLambda!23139 (Int Int) Int)

(declare-fun dynLambda!23140 (Int Int) Int)

(assert (=> b!4964018 (< (dynLambda!23139 order!26181 (toValue!11345 (transformation!8390 (h!63882 rulesArg!259)))) (dynLambda!23140 order!26183 lambda!247295))))

(declare-fun order!26185 () Int)

(declare-fun dynLambda!23141 (Int Int) Int)

(assert (=> b!4964018 (< (dynLambda!23141 order!26185 (toChars!11204 (transformation!8390 (h!63882 rulesArg!259)))) (dynLambda!23140 order!26183 lambda!247295))))

(declare-fun e!3102883 () Option!14442)

(declare-datatypes ((tuple2!62142 0))(
  ( (tuple2!62143 (_1!34374 BalanceConc!29714) (_2!34374 BalanceConc!29714)) )
))
(declare-fun lt!2049535 () tuple2!62142)

(declare-fun apply!13901 (TokenValueInjection!16708 BalanceConc!29714) TokenValue!8700)

(declare-fun size!38061 (BalanceConc!29714) Int)

(assert (=> b!4964005 (= e!3102883 (Some!14441 (tuple2!62135 (Token!15277 (apply!13901 (transformation!8390 (h!63882 rulesArg!259)) (_1!34374 lt!2049535)) (h!63882 rulesArg!259) (size!38061 (_1!34374 lt!2049535)) (list!18356 (_1!34374 lt!2049535))) (_2!34374 lt!2049535))))))

(declare-fun lt!2049532 () List!57556)

(assert (=> b!4964005 (= lt!2049532 (list!18356 input!1342))))

(declare-fun lt!2049536 () Unit!148331)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1813 (Regex!13623 List!57556) Unit!148331)

(assert (=> b!4964005 (= lt!2049536 (longestMatchIsAcceptedByMatchOrIsEmpty!1813 (regex!8390 (h!63882 rulesArg!259)) lt!2049532))))

(declare-fun res!2118843 () Bool)

(declare-fun isEmpty!30919 (List!57556) Bool)

(declare-datatypes ((tuple2!62144 0))(
  ( (tuple2!62145 (_1!34375 List!57556) (_2!34375 List!57556)) )
))
(declare-fun findLongestMatchInner!1852 (Regex!13623 List!57556 Int List!57556 List!57556 Int) tuple2!62144)

(assert (=> b!4964005 (= res!2118843 (isEmpty!30919 (_1!34375 (findLongestMatchInner!1852 (regex!8390 (h!63882 rulesArg!259)) Nil!57432 (size!38060 Nil!57432) lt!2049532 lt!2049532 (size!38060 lt!2049532)))))))

(declare-fun e!3102880 () Bool)

(assert (=> b!4964005 (=> res!2118843 e!3102880)))

(assert (=> b!4964005 e!3102880))

(declare-fun lt!2049534 () Unit!148331)

(assert (=> b!4964005 (= lt!2049534 lt!2049536)))

(declare-fun lt!2049529 () Unit!148331)

(declare-fun lemmaInv!1331 (TokenValueInjection!16708) Unit!148331)

(assert (=> b!4964005 (= lt!2049529 (lemmaInv!1331 (transformation!8390 (h!63882 rulesArg!259))))))

(declare-fun lt!2049537 () Unit!148331)

(declare-fun ForallOf!1224 (Int BalanceConc!29714) Unit!148331)

(assert (=> b!4964005 (= lt!2049537 (ForallOf!1224 lambda!247295 (_1!34374 lt!2049535)))))

(declare-fun lt!2049528 () Unit!148331)

(declare-fun seqFromList!6033 (List!57556) BalanceConc!29714)

(assert (=> b!4964005 (= lt!2049528 (ForallOf!1224 lambda!247295 (seqFromList!6033 (list!18356 (_1!34374 lt!2049535)))))))

(declare-fun lt!2049530 () Option!14442)

(assert (=> b!4964005 (= lt!2049530 (Some!14441 (tuple2!62135 (Token!15277 (apply!13901 (transformation!8390 (h!63882 rulesArg!259)) (_1!34374 lt!2049535)) (h!63882 rulesArg!259) (size!38061 (_1!34374 lt!2049535)) (list!18356 (_1!34374 lt!2049535))) (_2!34374 lt!2049535))))))

(declare-fun lt!2049533 () Unit!148331)

(declare-fun lemmaEqSameImage!1165 (TokenValueInjection!16708 BalanceConc!29714 BalanceConc!29714) Unit!148331)

(assert (=> b!4964005 (= lt!2049533 (lemmaEqSameImage!1165 (transformation!8390 (h!63882 rulesArg!259)) (_1!34374 lt!2049535) (seqFromList!6033 (list!18356 (_1!34374 lt!2049535)))))))

(declare-fun b!4964006 () Bool)

(declare-fun e!3102881 () Bool)

(declare-fun e!3102882 () Bool)

(assert (=> b!4964006 (= e!3102881 e!3102882)))

(declare-fun res!2118842 () Bool)

(assert (=> b!4964006 (=> (not res!2118842) (not e!3102882))))

(declare-fun lt!2049531 () Option!14442)

(declare-fun get!19932 (Option!14442) tuple2!62134)

(declare-datatypes ((tuple2!62146 0))(
  ( (tuple2!62147 (_1!34376 Token!15276) (_2!34376 List!57556)) )
))
(declare-datatypes ((Option!14444 0))(
  ( (None!14443) (Some!14443 (v!50430 tuple2!62146)) )
))
(declare-fun get!19933 (Option!14444) tuple2!62146)

(declare-fun maxPrefixOneRule!3626 (LexerInterface!7982 Rule!16580 List!57556) Option!14444)

(assert (=> b!4964006 (= res!2118842 (= (_1!34370 (get!19932 lt!2049531)) (_1!34376 (get!19933 (maxPrefixOneRule!3626 thiss!15247 (h!63882 rulesArg!259) (list!18356 input!1342))))))))

(declare-fun b!4964007 () Bool)

(assert (=> b!4964007 (= e!3102883 None!14441)))

(declare-fun d!1597056 () Bool)

(declare-fun e!3102884 () Bool)

(assert (=> d!1597056 e!3102884))

(declare-fun res!2118841 () Bool)

(assert (=> d!1597056 (=> (not res!2118841) (not e!3102884))))

(declare-fun isDefined!11356 (Option!14442) Bool)

(declare-fun isDefined!11357 (Option!14444) Bool)

(assert (=> d!1597056 (= res!2118841 (= (isDefined!11356 lt!2049531) (isDefined!11357 (maxPrefixOneRule!3626 thiss!15247 (h!63882 rulesArg!259) (list!18356 input!1342)))))))

(assert (=> d!1597056 (= lt!2049531 e!3102883)))

(declare-fun c!846912 () Bool)

(declare-fun isEmpty!30920 (BalanceConc!29714) Bool)

(assert (=> d!1597056 (= c!846912 (isEmpty!30920 (_1!34374 lt!2049535)))))

(declare-fun findLongestMatchWithZipperSequenceV2!161 (Regex!13623 BalanceConc!29714 BalanceConc!29714) tuple2!62142)

(assert (=> d!1597056 (= lt!2049535 (findLongestMatchWithZipperSequenceV2!161 (regex!8390 (h!63882 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun ruleValid!3799 (LexerInterface!7982 Rule!16580) Bool)

(assert (=> d!1597056 (ruleValid!3799 thiss!15247 (h!63882 rulesArg!259))))

(assert (=> d!1597056 (= (maxPrefixOneRuleZipperSequenceV2!358 thiss!15247 (h!63882 rulesArg!259) input!1342 totalInput!464) lt!2049531)))

(declare-fun b!4964008 () Bool)

(assert (=> b!4964008 (= e!3102884 e!3102881)))

(declare-fun res!2118844 () Bool)

(assert (=> b!4964008 (=> res!2118844 e!3102881)))

(assert (=> b!4964008 (= res!2118844 (not (isDefined!11356 lt!2049531)))))

(declare-fun b!4964009 () Bool)

(declare-fun matchR!6633 (Regex!13623 List!57556) Bool)

(assert (=> b!4964009 (= e!3102880 (matchR!6633 (regex!8390 (h!63882 rulesArg!259)) (_1!34375 (findLongestMatchInner!1852 (regex!8390 (h!63882 rulesArg!259)) Nil!57432 (size!38060 Nil!57432) lt!2049532 lt!2049532 (size!38060 lt!2049532)))))))

(declare-fun b!4964010 () Bool)

(assert (=> b!4964010 (= e!3102882 (= (list!18356 (_2!34370 (get!19932 lt!2049531))) (_2!34376 (get!19933 (maxPrefixOneRule!3626 thiss!15247 (h!63882 rulesArg!259) (list!18356 input!1342))))))))

(assert (= (and d!1597056 c!846912) b!4964007))

(assert (= (and d!1597056 (not c!846912)) b!4964005))

(assert (= (and b!4964005 (not res!2118843)) b!4964009))

(assert (= (and d!1597056 res!2118841) b!4964008))

(assert (= (and b!4964008 (not res!2118844)) b!4964006))

(assert (= (and b!4964006 res!2118842) b!4964010))

(declare-fun m!5988508 () Bool)

(assert (=> b!4964008 m!5988508))

(declare-fun m!5988510 () Bool)

(assert (=> d!1597056 m!5988510))

(declare-fun m!5988512 () Bool)

(assert (=> d!1597056 m!5988512))

(assert (=> d!1597056 m!5988390))

(declare-fun m!5988514 () Bool)

(assert (=> d!1597056 m!5988514))

(declare-fun m!5988516 () Bool)

(assert (=> d!1597056 m!5988516))

(assert (=> d!1597056 m!5988390))

(assert (=> d!1597056 m!5988510))

(declare-fun m!5988518 () Bool)

(assert (=> d!1597056 m!5988518))

(assert (=> d!1597056 m!5988508))

(declare-fun m!5988520 () Bool)

(assert (=> b!4964005 m!5988520))

(declare-fun m!5988522 () Bool)

(assert (=> b!4964005 m!5988522))

(declare-fun m!5988524 () Bool)

(assert (=> b!4964005 m!5988524))

(declare-fun m!5988526 () Bool)

(assert (=> b!4964005 m!5988526))

(declare-fun m!5988528 () Bool)

(assert (=> b!4964005 m!5988528))

(declare-fun m!5988530 () Bool)

(assert (=> b!4964005 m!5988530))

(assert (=> b!4964005 m!5988528))

(declare-fun m!5988532 () Bool)

(assert (=> b!4964005 m!5988532))

(declare-fun m!5988534 () Bool)

(assert (=> b!4964005 m!5988534))

(declare-fun m!5988536 () Bool)

(assert (=> b!4964005 m!5988536))

(assert (=> b!4964005 m!5988522))

(assert (=> b!4964005 m!5988390))

(assert (=> b!4964005 m!5988520))

(assert (=> b!4964005 m!5988528))

(declare-fun m!5988538 () Bool)

(assert (=> b!4964005 m!5988538))

(declare-fun m!5988540 () Bool)

(assert (=> b!4964005 m!5988540))

(assert (=> b!4964005 m!5988524))

(declare-fun m!5988542 () Bool)

(assert (=> b!4964005 m!5988542))

(declare-fun m!5988544 () Bool)

(assert (=> b!4964005 m!5988544))

(assert (=> b!4964009 m!5988522))

(assert (=> b!4964009 m!5988524))

(assert (=> b!4964009 m!5988522))

(assert (=> b!4964009 m!5988524))

(assert (=> b!4964009 m!5988526))

(declare-fun m!5988546 () Bool)

(assert (=> b!4964009 m!5988546))

(declare-fun m!5988548 () Bool)

(assert (=> b!4964006 m!5988548))

(assert (=> b!4964006 m!5988390))

(assert (=> b!4964006 m!5988390))

(assert (=> b!4964006 m!5988510))

(assert (=> b!4964006 m!5988510))

(declare-fun m!5988550 () Bool)

(assert (=> b!4964006 m!5988550))

(assert (=> b!4964010 m!5988510))

(assert (=> b!4964010 m!5988550))

(declare-fun m!5988552 () Bool)

(assert (=> b!4964010 m!5988552))

(assert (=> b!4964010 m!5988390))

(assert (=> b!4964010 m!5988548))

(assert (=> b!4964010 m!5988390))

(assert (=> b!4964010 m!5988510))

(assert (=> b!4963870 d!1597056))

(declare-fun d!1597080 () Bool)

(declare-fun isBalanced!4199 (Conc!15142) Bool)

(assert (=> d!1597080 (= (inv!75047 input!1342) (isBalanced!4199 (c!846891 input!1342)))))

(declare-fun bs!1182866 () Bool)

(assert (= bs!1182866 d!1597080))

(declare-fun m!5988554 () Bool)

(assert (=> bs!1182866 m!5988554))

(assert (=> start!523518 d!1597080))

(declare-fun d!1597082 () Bool)

(assert (=> d!1597082 (= (inv!75047 totalInput!464) (isBalanced!4199 (c!846891 totalInput!464)))))

(declare-fun bs!1182867 () Bool)

(assert (= bs!1182867 d!1597082))

(declare-fun m!5988556 () Bool)

(assert (=> bs!1182867 m!5988556))

(assert (=> start!523518 d!1597082))

(declare-fun b!4964029 () Bool)

(declare-fun e!3102897 () Bool)

(declare-fun tail!9798 (List!57556) List!57556)

(assert (=> b!4964029 (= e!3102897 (isPrefix!5241 (tail!9798 lt!2049454) (tail!9798 lt!2049454)))))

(declare-fun b!4964030 () Bool)

(declare-fun e!3102899 () Bool)

(assert (=> b!4964030 (= e!3102899 (>= (size!38060 lt!2049454) (size!38060 lt!2049454)))))

(declare-fun d!1597084 () Bool)

(assert (=> d!1597084 e!3102899))

(declare-fun res!2118853 () Bool)

(assert (=> d!1597084 (=> res!2118853 e!3102899)))

(declare-fun lt!2049540 () Bool)

(assert (=> d!1597084 (= res!2118853 (not lt!2049540))))

(declare-fun e!3102898 () Bool)

(assert (=> d!1597084 (= lt!2049540 e!3102898)))

(declare-fun res!2118855 () Bool)

(assert (=> d!1597084 (=> res!2118855 e!3102898)))

(assert (=> d!1597084 (= res!2118855 ((_ is Nil!57432) lt!2049454))))

(assert (=> d!1597084 (= (isPrefix!5241 lt!2049454 lt!2049454) lt!2049540)))

(declare-fun b!4964027 () Bool)

(assert (=> b!4964027 (= e!3102898 e!3102897)))

(declare-fun res!2118854 () Bool)

(assert (=> b!4964027 (=> (not res!2118854) (not e!3102897))))

(assert (=> b!4964027 (= res!2118854 (not ((_ is Nil!57432) lt!2049454)))))

(declare-fun b!4964028 () Bool)

(declare-fun res!2118856 () Bool)

(assert (=> b!4964028 (=> (not res!2118856) (not e!3102897))))

(declare-fun head!10665 (List!57556) C!27496)

(assert (=> b!4964028 (= res!2118856 (= (head!10665 lt!2049454) (head!10665 lt!2049454)))))

(assert (= (and d!1597084 (not res!2118855)) b!4964027))

(assert (= (and b!4964027 res!2118854) b!4964028))

(assert (= (and b!4964028 res!2118856) b!4964029))

(assert (= (and d!1597084 (not res!2118853)) b!4964030))

(declare-fun m!5988558 () Bool)

(assert (=> b!4964029 m!5988558))

(assert (=> b!4964029 m!5988558))

(assert (=> b!4964029 m!5988558))

(assert (=> b!4964029 m!5988558))

(declare-fun m!5988560 () Bool)

(assert (=> b!4964029 m!5988560))

(assert (=> b!4964030 m!5988402))

(assert (=> b!4964030 m!5988402))

(declare-fun m!5988562 () Bool)

(assert (=> b!4964028 m!5988562))

(assert (=> b!4964028 m!5988562))

(assert (=> b!4963861 d!1597084))

(declare-fun d!1597086 () Bool)

(assert (=> d!1597086 (isPrefix!5241 lt!2049454 lt!2049454)))

(declare-fun lt!2049543 () Unit!148331)

(declare-fun choose!36650 (List!57556 List!57556) Unit!148331)

(assert (=> d!1597086 (= lt!2049543 (choose!36650 lt!2049454 lt!2049454))))

(assert (=> d!1597086 (= (lemmaIsPrefixRefl!3565 lt!2049454 lt!2049454) lt!2049543)))

(declare-fun bs!1182868 () Bool)

(assert (= bs!1182868 d!1597086))

(assert (=> bs!1182868 m!5988362))

(declare-fun m!5988564 () Bool)

(assert (=> bs!1182868 m!5988564))

(assert (=> b!4963861 d!1597086))

(declare-fun d!1597088 () Bool)

(assert (=> d!1597088 (= (isEmpty!30916 rulesArg!259) ((_ is Nil!57434) rulesArg!259))))

(assert (=> b!4963863 d!1597088))

(declare-fun d!1597090 () Bool)

(assert (=> d!1597090 (= (inv!75043 (tag!9254 (h!63882 rulesArg!259))) (= (mod (str.len (value!268554 (tag!9254 (h!63882 rulesArg!259)))) 2) 0))))

(assert (=> b!4963868 d!1597090))

(declare-fun d!1597092 () Bool)

(declare-fun res!2118859 () Bool)

(declare-fun e!3102902 () Bool)

(assert (=> d!1597092 (=> (not res!2118859) (not e!3102902))))

(declare-fun semiInverseModEq!3697 (Int Int) Bool)

(assert (=> d!1597092 (= res!2118859 (semiInverseModEq!3697 (toChars!11204 (transformation!8390 (h!63882 rulesArg!259))) (toValue!11345 (transformation!8390 (h!63882 rulesArg!259)))))))

(assert (=> d!1597092 (= (inv!75049 (transformation!8390 (h!63882 rulesArg!259))) e!3102902)))

(declare-fun b!4964033 () Bool)

(declare-fun equivClasses!3545 (Int Int) Bool)

(assert (=> b!4964033 (= e!3102902 (equivClasses!3545 (toChars!11204 (transformation!8390 (h!63882 rulesArg!259))) (toValue!11345 (transformation!8390 (h!63882 rulesArg!259)))))))

(assert (= (and d!1597092 res!2118859) b!4964033))

(declare-fun m!5988566 () Bool)

(assert (=> d!1597092 m!5988566))

(declare-fun m!5988568 () Bool)

(assert (=> b!4964033 m!5988568))

(assert (=> b!4963868 d!1597092))

(declare-fun d!1597094 () Bool)

(declare-fun c!846915 () Bool)

(assert (=> d!1597094 (= c!846915 ((_ is Node!15142) (c!846891 input!1342)))))

(declare-fun e!3102907 () Bool)

(assert (=> d!1597094 (= (inv!75048 (c!846891 input!1342)) e!3102907)))

(declare-fun b!4964040 () Bool)

(declare-fun inv!75053 (Conc!15142) Bool)

(assert (=> b!4964040 (= e!3102907 (inv!75053 (c!846891 input!1342)))))

(declare-fun b!4964041 () Bool)

(declare-fun e!3102908 () Bool)

(assert (=> b!4964041 (= e!3102907 e!3102908)))

(declare-fun res!2118862 () Bool)

(assert (=> b!4964041 (= res!2118862 (not ((_ is Leaf!25162) (c!846891 input!1342))))))

(assert (=> b!4964041 (=> res!2118862 e!3102908)))

(declare-fun b!4964042 () Bool)

(declare-fun inv!75054 (Conc!15142) Bool)

(assert (=> b!4964042 (= e!3102908 (inv!75054 (c!846891 input!1342)))))

(assert (= (and d!1597094 c!846915) b!4964040))

(assert (= (and d!1597094 (not c!846915)) b!4964041))

(assert (= (and b!4964041 (not res!2118862)) b!4964042))

(declare-fun m!5988570 () Bool)

(assert (=> b!4964040 m!5988570))

(declare-fun m!5988572 () Bool)

(assert (=> b!4964042 m!5988572))

(assert (=> b!4963862 d!1597094))

(declare-fun d!1597096 () Bool)

(assert (=> d!1597096 true))

(declare-fun lt!2049546 () Bool)

(declare-fun lambda!247298 () Int)

(declare-fun forall!13325 (List!57558 Int) Bool)

(assert (=> d!1597096 (= lt!2049546 (forall!13325 rulesArg!259 lambda!247298))))

(declare-fun e!3102913 () Bool)

(assert (=> d!1597096 (= lt!2049546 e!3102913)))

(declare-fun res!2118868 () Bool)

(assert (=> d!1597096 (=> res!2118868 e!3102913)))

(assert (=> d!1597096 (= res!2118868 (not ((_ is Cons!57434) rulesArg!259)))))

(assert (=> d!1597096 (= (rulesValidInductive!3293 thiss!15247 rulesArg!259) lt!2049546)))

(declare-fun b!4964047 () Bool)

(declare-fun e!3102914 () Bool)

(assert (=> b!4964047 (= e!3102913 e!3102914)))

(declare-fun res!2118867 () Bool)

(assert (=> b!4964047 (=> (not res!2118867) (not e!3102914))))

(assert (=> b!4964047 (= res!2118867 (ruleValid!3799 thiss!15247 (h!63882 rulesArg!259)))))

(declare-fun b!4964048 () Bool)

(assert (=> b!4964048 (= e!3102914 (rulesValidInductive!3293 thiss!15247 (t!368224 rulesArg!259)))))

(assert (= (and d!1597096 (not res!2118868)) b!4964047))

(assert (= (and b!4964047 res!2118867) b!4964048))

(declare-fun m!5988574 () Bool)

(assert (=> d!1597096 m!5988574))

(assert (=> b!4964047 m!5988518))

(declare-fun m!5988576 () Bool)

(assert (=> b!4964048 m!5988576))

(assert (=> b!4963864 d!1597096))

(declare-fun d!1597098 () Bool)

(declare-fun c!846916 () Bool)

(assert (=> d!1597098 (= c!846916 ((_ is Node!15142) (c!846891 totalInput!464)))))

(declare-fun e!3102915 () Bool)

(assert (=> d!1597098 (= (inv!75048 (c!846891 totalInput!464)) e!3102915)))

(declare-fun b!4964051 () Bool)

(assert (=> b!4964051 (= e!3102915 (inv!75053 (c!846891 totalInput!464)))))

(declare-fun b!4964052 () Bool)

(declare-fun e!3102916 () Bool)

(assert (=> b!4964052 (= e!3102915 e!3102916)))

(declare-fun res!2118869 () Bool)

(assert (=> b!4964052 (= res!2118869 (not ((_ is Leaf!25162) (c!846891 totalInput!464))))))

(assert (=> b!4964052 (=> res!2118869 e!3102916)))

(declare-fun b!4964053 () Bool)

(assert (=> b!4964053 (= e!3102916 (inv!75054 (c!846891 totalInput!464)))))

(assert (= (and d!1597098 c!846916) b!4964051))

(assert (= (and d!1597098 (not c!846916)) b!4964052))

(assert (= (and b!4964052 (not res!2118869)) b!4964053))

(declare-fun m!5988578 () Bool)

(assert (=> b!4964051 m!5988578))

(declare-fun m!5988580 () Bool)

(assert (=> b!4964053 m!5988580))

(assert (=> b!4963869 d!1597098))

(declare-fun b!4964064 () Bool)

(declare-fun b_free!132731 () Bool)

(declare-fun b_next!133521 () Bool)

(assert (=> b!4964064 (= b_free!132731 (not b_next!133521))))

(declare-fun tp!1392574 () Bool)

(declare-fun b_and!347687 () Bool)

(assert (=> b!4964064 (= tp!1392574 b_and!347687)))

(declare-fun b_free!132733 () Bool)

(declare-fun b_next!133523 () Bool)

(assert (=> b!4964064 (= b_free!132733 (not b_next!133523))))

(declare-fun tp!1392576 () Bool)

(declare-fun b_and!347689 () Bool)

(assert (=> b!4964064 (= tp!1392576 b_and!347689)))

(declare-fun e!3102927 () Bool)

(assert (=> b!4964064 (= e!3102927 (and tp!1392574 tp!1392576))))

(declare-fun b!4964063 () Bool)

(declare-fun tp!1392577 () Bool)

(declare-fun e!3102925 () Bool)

(assert (=> b!4964063 (= e!3102925 (and tp!1392577 (inv!75043 (tag!9254 (h!63882 (t!368224 rulesArg!259)))) (inv!75049 (transformation!8390 (h!63882 (t!368224 rulesArg!259)))) e!3102927))))

(declare-fun b!4964062 () Bool)

(declare-fun e!3102926 () Bool)

(declare-fun tp!1392575 () Bool)

(assert (=> b!4964062 (= e!3102926 (and e!3102925 tp!1392575))))

(assert (=> b!4963867 (= tp!1392521 e!3102926)))

(assert (= b!4964063 b!4964064))

(assert (= b!4964062 b!4964063))

(assert (= (and b!4963867 ((_ is Cons!57434) (t!368224 rulesArg!259))) b!4964062))

(declare-fun m!5988582 () Bool)

(assert (=> b!4964063 m!5988582))

(declare-fun m!5988584 () Bool)

(assert (=> b!4964063 m!5988584))

(declare-fun b!4964078 () Bool)

(declare-fun e!3102931 () Bool)

(declare-fun tp!1392591 () Bool)

(declare-fun tp!1392592 () Bool)

(assert (=> b!4964078 (= e!3102931 (and tp!1392591 tp!1392592))))

(declare-fun b!4964075 () Bool)

(declare-fun tp_is_empty!36327 () Bool)

(assert (=> b!4964075 (= e!3102931 tp_is_empty!36327)))

(assert (=> b!4963868 (= tp!1392523 e!3102931)))

(declare-fun b!4964076 () Bool)

(declare-fun tp!1392588 () Bool)

(declare-fun tp!1392589 () Bool)

(assert (=> b!4964076 (= e!3102931 (and tp!1392588 tp!1392589))))

(declare-fun b!4964077 () Bool)

(declare-fun tp!1392590 () Bool)

(assert (=> b!4964077 (= e!3102931 tp!1392590)))

(assert (= (and b!4963868 ((_ is ElementMatch!13623) (regex!8390 (h!63882 rulesArg!259)))) b!4964075))

(assert (= (and b!4963868 ((_ is Concat!22324) (regex!8390 (h!63882 rulesArg!259)))) b!4964076))

(assert (= (and b!4963868 ((_ is Star!13623) (regex!8390 (h!63882 rulesArg!259)))) b!4964077))

(assert (= (and b!4963868 ((_ is Union!13623) (regex!8390 (h!63882 rulesArg!259)))) b!4964078))

(declare-fun b!4964087 () Bool)

(declare-fun e!3102937 () Bool)

(declare-fun tp!1392600 () Bool)

(declare-fun tp!1392601 () Bool)

(assert (=> b!4964087 (= e!3102937 (and (inv!75048 (left!41887 (c!846891 input!1342))) tp!1392600 (inv!75048 (right!42217 (c!846891 input!1342))) tp!1392601))))

(declare-fun b!4964089 () Bool)

(declare-fun e!3102936 () Bool)

(declare-fun tp!1392599 () Bool)

(assert (=> b!4964089 (= e!3102936 tp!1392599)))

(declare-fun b!4964088 () Bool)

(declare-fun inv!75055 (IArray!30345) Bool)

(assert (=> b!4964088 (= e!3102937 (and (inv!75055 (xs!18468 (c!846891 input!1342))) e!3102936))))

(assert (=> b!4963862 (= tp!1392526 (and (inv!75048 (c!846891 input!1342)) e!3102937))))

(assert (= (and b!4963862 ((_ is Node!15142) (c!846891 input!1342))) b!4964087))

(assert (= b!4964088 b!4964089))

(assert (= (and b!4963862 ((_ is Leaf!25162) (c!846891 input!1342))) b!4964088))

(declare-fun m!5988586 () Bool)

(assert (=> b!4964087 m!5988586))

(declare-fun m!5988588 () Bool)

(assert (=> b!4964087 m!5988588))

(declare-fun m!5988590 () Bool)

(assert (=> b!4964088 m!5988590))

(assert (=> b!4963862 m!5988370))

(declare-fun b!4964090 () Bool)

(declare-fun e!3102939 () Bool)

(declare-fun tp!1392604 () Bool)

(declare-fun tp!1392603 () Bool)

(assert (=> b!4964090 (= e!3102939 (and (inv!75048 (left!41887 (c!846891 totalInput!464))) tp!1392603 (inv!75048 (right!42217 (c!846891 totalInput!464))) tp!1392604))))

(declare-fun b!4964092 () Bool)

(declare-fun e!3102938 () Bool)

(declare-fun tp!1392602 () Bool)

(assert (=> b!4964092 (= e!3102938 tp!1392602)))

(declare-fun b!4964091 () Bool)

(assert (=> b!4964091 (= e!3102939 (and (inv!75055 (xs!18468 (c!846891 totalInput!464))) e!3102938))))

(assert (=> b!4963869 (= tp!1392524 (and (inv!75048 (c!846891 totalInput!464)) e!3102939))))

(assert (= (and b!4963869 ((_ is Node!15142) (c!846891 totalInput!464))) b!4964090))

(assert (= b!4964091 b!4964092))

(assert (= (and b!4963869 ((_ is Leaf!25162) (c!846891 totalInput!464))) b!4964091))

(declare-fun m!5988592 () Bool)

(assert (=> b!4964090 m!5988592))

(declare-fun m!5988594 () Bool)

(assert (=> b!4964090 m!5988594))

(declare-fun m!5988596 () Bool)

(assert (=> b!4964091 m!5988596))

(assert (=> b!4963869 m!5988392))

(check-sat (not d!1597082) (not b!4963869) (not b!4964076) (not b_next!133515) (not b_next!133523) (not b!4964089) (not b!4963884) (not b!4964063) (not b!4964078) (not d!1597056) (not b!4964030) (not d!1597046) (not b!4963862) (not d!1597096) (not b!4964028) (not b!4963890) (not b!4964051) (not b!4964040) tp_is_empty!36327 b_and!347689 b_and!347681 (not d!1597048) (not b!4964091) (not b!4964087) (not b!4963892) (not b!4964010) (not b!4964033) (not b!4964047) (not b!4964029) (not b!4964088) (not d!1597092) b_and!347687 (not b!4964048) (not b!4964077) (not b!4964062) b_and!347679 (not b!4964092) (not b!4964053) (not b_next!133521) (not b!4964090) (not d!1597080) (not b!4964008) (not b!4964042) (not b!4964006) (not b!4964005) (not d!1597086) (not d!1597050) (not b_next!133513) (not b!4964009))
(check-sat (not b_next!133515) (not b_next!133523) b_and!347687 b_and!347679 (not b_next!133521) (not b_next!133513) b_and!347689 b_and!347681)
