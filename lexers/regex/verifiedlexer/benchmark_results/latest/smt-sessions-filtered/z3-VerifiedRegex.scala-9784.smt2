; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511436 () Bool)

(assert start!511436)

(declare-fun b!4886562 () Bool)

(declare-fun b_free!131275 () Bool)

(declare-fun b_next!132065 () Bool)

(assert (=> b!4886562 (= b_free!131275 (not b_next!132065))))

(declare-fun tp!1375188 () Bool)

(declare-fun b_and!344107 () Bool)

(assert (=> b!4886562 (= tp!1375188 b_and!344107)))

(declare-fun b_free!131277 () Bool)

(declare-fun b_next!132067 () Bool)

(assert (=> b!4886562 (= b_free!131277 (not b_next!132067))))

(declare-fun tp!1375191 () Bool)

(declare-fun b_and!344109 () Bool)

(assert (=> b!4886562 (= tp!1375191 b_and!344109)))

(declare-fun b!4886555 () Bool)

(declare-fun e!3054587 () Bool)

(declare-datatypes ((C!26620 0))(
  ( (C!26621 (val!22644 Int)) )
))
(declare-datatypes ((List!56413 0))(
  ( (Nil!56289) (Cons!56289 (h!62737 C!26620) (t!365059 List!56413)) )
))
(declare-datatypes ((IArray!29469 0))(
  ( (IArray!29470 (innerList!14792 List!56413)) )
))
(declare-datatypes ((Conc!14704 0))(
  ( (Node!14704 (left!40886 Conc!14704) (right!41216 Conc!14704) (csize!29638 Int) (cheight!14915 Int)) (Leaf!24489 (xs!18020 IArray!29469) (csize!29639 Int)) (Empty!14704) )
))
(declare-datatypes ((BalanceConc!28838 0))(
  ( (BalanceConc!28839 (c!830739 Conc!14704)) )
))
(declare-datatypes ((List!56414 0))(
  ( (Nil!56290) (Cons!56290 (h!62738 (_ BitVec 16)) (t!365060 List!56414)) )
))
(declare-datatypes ((TokenValue!8446 0))(
  ( (FloatLiteralValue!16892 (text!59567 List!56414)) (TokenValueExt!8445 (__x!34185 Int)) (Broken!42230 (value!261002 List!56414)) (Object!8569) (End!8446) (Def!8446) (Underscore!8446) (Match!8446) (Else!8446) (Error!8446) (Case!8446) (If!8446) (Extends!8446) (Abstract!8446) (Class!8446) (Val!8446) (DelimiterValue!16892 (del!8506 List!56414)) (KeywordValue!8452 (value!261003 List!56414)) (CommentValue!16892 (value!261004 List!56414)) (WhitespaceValue!16892 (value!261005 List!56414)) (IndentationValue!8446 (value!261006 List!56414)) (String!63671) (Int32!8446) (Broken!42231 (value!261007 List!56414)) (Boolean!8447) (Unit!146279) (OperatorValue!8449 (op!8506 List!56414)) (IdentifierValue!16892 (value!261008 List!56414)) (IdentifierValue!16893 (value!261009 List!56414)) (WhitespaceValue!16893 (value!261010 List!56414)) (True!16892) (False!16892) (Broken!42232 (value!261011 List!56414)) (Broken!42233 (value!261012 List!56414)) (True!16893) (RightBrace!8446) (RightBracket!8446) (Colon!8446) (Null!8446) (Comma!8446) (LeftBracket!8446) (False!16893) (LeftBrace!8446) (ImaginaryLiteralValue!8446 (text!59568 List!56414)) (StringLiteralValue!25338 (value!261013 List!56414)) (EOFValue!8446 (value!261014 List!56414)) (IdentValue!8446 (value!261015 List!56414)) (DelimiterValue!16893 (value!261016 List!56414)) (DedentValue!8446 (value!261017 List!56414)) (NewLineValue!8446 (value!261018 List!56414)) (IntegerValue!25338 (value!261019 (_ BitVec 32)) (text!59569 List!56414)) (IntegerValue!25339 (value!261020 Int) (text!59570 List!56414)) (Times!8446) (Or!8446) (Equal!8446) (Minus!8446) (Broken!42234 (value!261021 List!56414)) (And!8446) (Div!8446) (LessEqual!8446) (Mod!8446) (Concat!21657) (Not!8446) (Plus!8446) (SpaceValue!8446 (value!261022 List!56414)) (IntegerValue!25340 (value!261023 Int) (text!59571 List!56414)) (StringLiteralValue!25339 (text!59572 List!56414)) (FloatLiteralValue!16893 (text!59573 List!56414)) (BytesLiteralValue!8446 (value!261024 List!56414)) (CommentValue!16893 (value!261025 List!56414)) (StringLiteralValue!25340 (value!261026 List!56414)) (ErrorTokenValue!8446 (msg!8507 List!56414)) )
))
(declare-datatypes ((Regex!13211 0))(
  ( (ElementMatch!13211 (c!830740 C!26620)) (Concat!21658 (regOne!26934 Regex!13211) (regTwo!26934 Regex!13211)) (EmptyExpr!13211) (Star!13211 (reg!13540 Regex!13211)) (EmptyLang!13211) (Union!13211 (regOne!26935 Regex!13211) (regTwo!26935 Regex!13211)) )
))
(declare-datatypes ((String!63672 0))(
  ( (String!63673 (value!261027 String)) )
))
(declare-datatypes ((TokenValueInjection!16200 0))(
  ( (TokenValueInjection!16201 (toValue!11023 Int) (toChars!10882 Int)) )
))
(declare-datatypes ((Rule!16072 0))(
  ( (Rule!16073 (regex!8136 Regex!13211) (tag!9000 String!63672) (isSeparator!8136 Bool) (transformation!8136 TokenValueInjection!16200)) )
))
(declare-datatypes ((Token!14840 0))(
  ( (Token!14841 (value!261028 TokenValue!8446) (rule!11308 Rule!16072) (size!37072 Int) (originalCharacters!8451 List!56413)) )
))
(declare-datatypes ((tuple2!60268 0))(
  ( (tuple2!60269 (_1!33437 Token!14840) (_2!33437 BalanceConc!28838)) )
))
(declare-fun lt!2002450 () tuple2!60268)

(declare-datatypes ((tuple2!60270 0))(
  ( (tuple2!60271 (_1!33438 Token!14840) (_2!33438 List!56413)) )
))
(declare-fun lt!2002442 () tuple2!60270)

(declare-fun list!17671 (BalanceConc!28838) List!56413)

(assert (=> b!4886555 (= e!3054587 (not (= (list!17671 (_2!33437 lt!2002450)) (_2!33438 lt!2002442))))))

(declare-fun b!4886556 () Bool)

(declare-fun e!3054595 () Bool)

(assert (=> b!4886556 (= e!3054595 e!3054587)))

(declare-fun res!2086651 () Bool)

(assert (=> b!4886556 (=> res!2086651 e!3054587)))

(assert (=> b!4886556 (= res!2086651 (not (= (_1!33437 lt!2002450) (_1!33438 lt!2002442))))))

(declare-datatypes ((Option!13955 0))(
  ( (None!13954) (Some!13954 (v!49904 tuple2!60270)) )
))
(declare-fun lt!2002446 () Option!13955)

(declare-fun get!19403 (Option!13955) tuple2!60270)

(assert (=> b!4886556 (= lt!2002442 (get!19403 lt!2002446))))

(declare-datatypes ((Option!13956 0))(
  ( (None!13955) (Some!13955 (v!49905 tuple2!60268)) )
))
(declare-fun lt!2002448 () Option!13956)

(declare-fun get!19404 (Option!13956) tuple2!60268)

(assert (=> b!4886556 (= lt!2002450 (get!19404 lt!2002448))))

(declare-fun b!4886557 () Bool)

(declare-fun e!3054594 () Bool)

(declare-fun e!3054593 () Bool)

(assert (=> b!4886557 (= e!3054594 e!3054593)))

(declare-fun res!2086650 () Bool)

(assert (=> b!4886557 (=> res!2086650 e!3054593)))

(assert (=> b!4886557 (= res!2086650 e!3054595)))

(declare-fun res!2086656 () Bool)

(assert (=> b!4886557 (=> (not res!2086656) (not e!3054595))))

(declare-fun lt!2002444 () Bool)

(assert (=> b!4886557 (= res!2086656 (not lt!2002444))))

(declare-fun lt!2002441 () Bool)

(assert (=> b!4886557 (= lt!2002444 (not lt!2002441))))

(declare-fun res!2086654 () Bool)

(declare-fun e!3054597 () Bool)

(assert (=> start!511436 (=> (not res!2086654) (not e!3054597))))

(declare-datatypes ((LexerInterface!7728 0))(
  ( (LexerInterfaceExt!7725 (__x!34186 Int)) (Lexer!7726) )
))
(declare-fun thiss!14805 () LexerInterface!7728)

(get-info :version)

(assert (=> start!511436 (= res!2086654 ((_ is Lexer!7726) thiss!14805))))

(assert (=> start!511436 e!3054597))

(assert (=> start!511436 true))

(declare-fun e!3054588 () Bool)

(assert (=> start!511436 e!3054588))

(declare-fun input!1236 () BalanceConc!28838)

(declare-fun e!3054591 () Bool)

(declare-fun inv!72460 (BalanceConc!28838) Bool)

(assert (=> start!511436 (and (inv!72460 input!1236) e!3054591)))

(declare-fun b!4886558 () Bool)

(declare-fun e!3054589 () Bool)

(declare-fun e!3054592 () Bool)

(assert (=> b!4886558 (= e!3054589 e!3054592)))

(declare-fun res!2086655 () Bool)

(assert (=> b!4886558 (=> res!2086655 e!3054592)))

(declare-fun lt!2002445 () Option!13956)

(assert (=> b!4886558 (= res!2086655 (or (and ((_ is None!13955) lt!2002448) ((_ is None!13955) lt!2002445)) ((_ is None!13955) lt!2002445) ((_ is None!13955) lt!2002448) (< (size!37072 (_1!33437 (v!49905 lt!2002448))) (size!37072 (_1!33437 (v!49905 lt!2002445))))))))

(declare-datatypes ((List!56415 0))(
  ( (Nil!56291) (Cons!56291 (h!62739 Rule!16072) (t!365061 List!56415)) )
))
(declare-fun rulesArg!165 () List!56415)

(declare-fun maxPrefixZipperSequence!1297 (LexerInterface!7728 List!56415 BalanceConc!28838) Option!13956)

(assert (=> b!4886558 (= lt!2002445 (maxPrefixZipperSequence!1297 thiss!14805 (t!365061 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!662 (LexerInterface!7728 Rule!16072 BalanceConc!28838) Option!13956)

(assert (=> b!4886558 (= lt!2002448 (maxPrefixOneRuleZipperSequence!662 thiss!14805 (h!62739 rulesArg!165) input!1236))))

(declare-fun b!4886559 () Bool)

(assert (=> b!4886559 (= e!3054597 (not e!3054589))))

(declare-fun res!2086649 () Bool)

(assert (=> b!4886559 (=> res!2086649 e!3054589)))

(assert (=> b!4886559 (= res!2086649 (or (and ((_ is Cons!56291) rulesArg!165) ((_ is Nil!56291) (t!365061 rulesArg!165))) (not ((_ is Cons!56291) rulesArg!165))))))

(declare-fun lt!2002449 () List!56413)

(declare-fun isPrefix!4858 (List!56413 List!56413) Bool)

(assert (=> b!4886559 (isPrefix!4858 lt!2002449 lt!2002449)))

(declare-datatypes ((Unit!146280 0))(
  ( (Unit!146281) )
))
(declare-fun lt!2002447 () Unit!146280)

(declare-fun lemmaIsPrefixRefl!3255 (List!56413 List!56413) Unit!146280)

(assert (=> b!4886559 (= lt!2002447 (lemmaIsPrefixRefl!3255 lt!2002449 lt!2002449))))

(assert (=> b!4886559 (= lt!2002449 (list!17671 input!1236))))

(declare-fun b!4886560 () Bool)

(declare-fun e!3054596 () Bool)

(declare-fun tp!1375190 () Bool)

(assert (=> b!4886560 (= e!3054588 (and e!3054596 tp!1375190))))

(declare-fun b!4886561 () Bool)

(declare-fun tp!1375189 () Bool)

(declare-fun inv!72461 (Conc!14704) Bool)

(assert (=> b!4886561 (= e!3054591 (and (inv!72461 (c!830739 input!1236)) tp!1375189))))

(declare-fun e!3054598 () Bool)

(assert (=> b!4886562 (= e!3054598 (and tp!1375188 tp!1375191))))

(declare-fun b!4886563 () Bool)

(declare-fun res!2086652 () Bool)

(assert (=> b!4886563 (=> (not res!2086652) (not e!3054597))))

(declare-fun rulesValidInductive!3115 (LexerInterface!7728 List!56415) Bool)

(assert (=> b!4886563 (= res!2086652 (rulesValidInductive!3115 thiss!14805 rulesArg!165))))

(declare-fun b!4886564 () Bool)

(assert (=> b!4886564 (= e!3054593 true)))

(declare-fun lt!2002443 () Option!13955)

(declare-fun maxPrefix!4585 (LexerInterface!7728 List!56415 List!56413) Option!13955)

(assert (=> b!4886564 (= lt!2002443 (maxPrefix!4585 thiss!14805 rulesArg!165 lt!2002449))))

(declare-fun b!4886565 () Bool)

(declare-fun tp!1375187 () Bool)

(declare-fun inv!72456 (String!63672) Bool)

(declare-fun inv!72462 (TokenValueInjection!16200) Bool)

(assert (=> b!4886565 (= e!3054596 (and tp!1375187 (inv!72456 (tag!9000 (h!62739 rulesArg!165))) (inv!72462 (transformation!8136 (h!62739 rulesArg!165))) e!3054598))))

(declare-fun b!4886566 () Bool)

(declare-fun res!2086658 () Bool)

(assert (=> b!4886566 (=> (not res!2086658) (not e!3054597))))

(declare-fun isEmpty!30170 (List!56415) Bool)

(assert (=> b!4886566 (= res!2086658 (not (isEmpty!30170 rulesArg!165)))))

(declare-fun b!4886567 () Bool)

(assert (=> b!4886567 (= e!3054592 e!3054594)))

(declare-fun res!2086653 () Bool)

(assert (=> b!4886567 (=> res!2086653 e!3054594)))

(declare-fun isDefined!10974 (Option!13955) Bool)

(assert (=> b!4886567 (= res!2086653 (not (= lt!2002441 (isDefined!10974 lt!2002446))))))

(declare-fun isDefined!10975 (Option!13956) Bool)

(assert (=> b!4886567 (= lt!2002441 (isDefined!10975 lt!2002448))))

(declare-fun maxPrefixZipper!639 (LexerInterface!7728 List!56415 List!56413) Option!13955)

(assert (=> b!4886567 (= lt!2002446 (maxPrefixZipper!639 thiss!14805 rulesArg!165 lt!2002449))))

(declare-fun b!4886568 () Bool)

(declare-fun res!2086657 () Bool)

(assert (=> b!4886568 (=> res!2086657 e!3054593)))

(assert (=> b!4886568 (= res!2086657 lt!2002444)))

(assert (= (and start!511436 res!2086654) b!4886563))

(assert (= (and b!4886563 res!2086652) b!4886566))

(assert (= (and b!4886566 res!2086658) b!4886559))

(assert (= (and b!4886559 (not res!2086649)) b!4886558))

(assert (= (and b!4886558 (not res!2086655)) b!4886567))

(assert (= (and b!4886567 (not res!2086653)) b!4886557))

(assert (= (and b!4886557 res!2086656) b!4886556))

(assert (= (and b!4886556 (not res!2086651)) b!4886555))

(assert (= (and b!4886557 (not res!2086650)) b!4886568))

(assert (= (and b!4886568 (not res!2086657)) b!4886564))

(assert (= b!4886565 b!4886562))

(assert (= b!4886560 b!4886565))

(assert (= (and start!511436 ((_ is Cons!56291) rulesArg!165)) b!4886560))

(assert (= start!511436 b!4886561))

(declare-fun m!5890336 () Bool)

(assert (=> start!511436 m!5890336))

(declare-fun m!5890338 () Bool)

(assert (=> b!4886566 m!5890338))

(declare-fun m!5890340 () Bool)

(assert (=> b!4886559 m!5890340))

(declare-fun m!5890342 () Bool)

(assert (=> b!4886559 m!5890342))

(declare-fun m!5890344 () Bool)

(assert (=> b!4886559 m!5890344))

(declare-fun m!5890346 () Bool)

(assert (=> b!4886564 m!5890346))

(declare-fun m!5890348 () Bool)

(assert (=> b!4886556 m!5890348))

(declare-fun m!5890350 () Bool)

(assert (=> b!4886556 m!5890350))

(declare-fun m!5890352 () Bool)

(assert (=> b!4886561 m!5890352))

(declare-fun m!5890354 () Bool)

(assert (=> b!4886555 m!5890354))

(declare-fun m!5890356 () Bool)

(assert (=> b!4886558 m!5890356))

(declare-fun m!5890358 () Bool)

(assert (=> b!4886558 m!5890358))

(declare-fun m!5890360 () Bool)

(assert (=> b!4886567 m!5890360))

(declare-fun m!5890362 () Bool)

(assert (=> b!4886567 m!5890362))

(declare-fun m!5890364 () Bool)

(assert (=> b!4886567 m!5890364))

(declare-fun m!5890366 () Bool)

(assert (=> b!4886563 m!5890366))

(declare-fun m!5890368 () Bool)

(assert (=> b!4886565 m!5890368))

(declare-fun m!5890370 () Bool)

(assert (=> b!4886565 m!5890370))

(check-sat (not b!4886556) (not b!4886567) b_and!344109 (not b!4886555) (not b!4886563) b_and!344107 (not b_next!132065) (not b!4886566) (not b!4886558) (not b!4886564) (not b!4886560) (not b!4886565) (not b!4886561) (not b!4886559) (not start!511436) (not b_next!132067))
(check-sat b_and!344109 b_and!344107 (not b_next!132065) (not b_next!132067))
