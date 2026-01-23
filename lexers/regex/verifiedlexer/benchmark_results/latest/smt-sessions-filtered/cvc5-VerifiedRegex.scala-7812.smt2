; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!410464 () Bool)

(assert start!410464)

(assert (=> start!410464 true))

(declare-fun b!4275515 () Bool)

(declare-fun e!2654432 () Bool)

(declare-datatypes ((List!47456 0))(
  ( (Nil!47332) (Cons!47332 (h!52752 (_ BitVec 16)) (t!353921 List!47456)) )
))
(declare-datatypes ((IArray!28633 0))(
  ( (IArray!28634 (innerList!14374 List!47456)) )
))
(declare-datatypes ((Conc!14314 0))(
  ( (Node!14314 (left!35232 Conc!14314) (right!35562 Conc!14314) (csize!28858 Int) (cheight!14525 Int)) (Leaf!22127 (xs!17620 IArray!28633) (csize!28859 Int)) (Empty!14314) )
))
(declare-datatypes ((BalanceConc!28138 0))(
  ( (BalanceConc!28139 (c!728031 Conc!14314)) )
))
(declare-fun x!742909 () BalanceConc!28138)

(declare-fun tp!1308485 () Bool)

(declare-fun inv!62580 (Conc!14314) Bool)

(assert (=> b!4275515 (= e!2654432 (and (inv!62580 (c!728031 x!742909)) tp!1308485))))

(declare-datatypes ((DelimiterValueInjection!28 0))(
  ( (DelimiterValueInjection!29) )
))
(declare-fun thiss!2654 () DelimiterValueInjection!28)

(declare-fun inst!1796 () Bool)

(declare-fun inv!62581 (BalanceConc!28138) Bool)

(declare-fun list!17220 (BalanceConc!28138) List!47456)

(declare-datatypes ((TokenValue!8287 0))(
  ( (FloatLiteralValue!16574 (text!58454 List!47456)) (TokenValueExt!8286 (__x!28733 Int)) (Broken!41435 (value!250083 List!47456)) (Object!8410) (End!8287) (Def!8287) (Underscore!8287) (Match!8287) (Else!8287) (Error!8287) (Case!8287) (If!8287) (Extends!8287) (Abstract!8287) (Class!8287) (Val!8287) (DelimiterValue!16574 (del!8347 List!47456)) (KeywordValue!8293 (value!250084 List!47456)) (CommentValue!16574 (value!250085 List!47456)) (WhitespaceValue!16574 (value!250086 List!47456)) (IndentationValue!8287 (value!250087 List!47456)) (String!55338) (Int32!8287) (Broken!41436 (value!250088 List!47456)) (Boolean!8288) (Unit!66273) (OperatorValue!8290 (op!8347 List!47456)) (IdentifierValue!16574 (value!250089 List!47456)) (IdentifierValue!16575 (value!250090 List!47456)) (WhitespaceValue!16575 (value!250091 List!47456)) (True!16574) (False!16574) (Broken!41437 (value!250092 List!47456)) (Broken!41438 (value!250093 List!47456)) (True!16575) (RightBrace!8287) (RightBracket!8287) (Colon!8287) (Null!8287) (Comma!8287) (LeftBracket!8287) (False!16575) (LeftBrace!8287) (ImaginaryLiteralValue!8287 (text!58455 List!47456)) (StringLiteralValue!24861 (value!250094 List!47456)) (EOFValue!8287 (value!250095 List!47456)) (IdentValue!8287 (value!250096 List!47456)) (DelimiterValue!16575 (value!250097 List!47456)) (DedentValue!8287 (value!250098 List!47456)) (NewLineValue!8287 (value!250099 List!47456)) (IntegerValue!24861 (value!250100 (_ BitVec 32)) (text!58456 List!47456)) (IntegerValue!24862 (value!250101 Int) (text!58457 List!47456)) (Times!8287) (Or!8287) (Equal!8287) (Minus!8287) (Broken!41439 (value!250102 List!47456)) (And!8287) (Div!8287) (LessEqual!8287) (Mod!8287) (Concat!21185) (Not!8287) (Plus!8287) (SpaceValue!8287 (value!250103 List!47456)) (IntegerValue!24863 (value!250104 Int) (text!58458 List!47456)) (StringLiteralValue!24862 (text!58459 List!47456)) (FloatLiteralValue!16575 (text!58460 List!47456)) (BytesLiteralValue!8287 (value!250105 List!47456)) (CommentValue!16575 (value!250106 List!47456)) (StringLiteralValue!24863 (value!250107 List!47456)) (ErrorTokenValue!8287 (msg!8348 List!47456)) )
))
(declare-fun toCharacters!12 (DelimiterValueInjection!28 TokenValue!8287) BalanceConc!28138)

(declare-fun toValue!19 (DelimiterValueInjection!28 BalanceConc!28138) TokenValue!8287)

(assert (=> start!410464 (= inst!1796 (=> (and (inv!62581 x!742909) e!2654432) (= (list!17220 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!742909))) (list!17220 x!742909))))))

(assert (= start!410464 b!4275515))

(declare-fun m!4871057 () Bool)

(assert (=> b!4275515 m!4871057))

(declare-fun m!4871059 () Bool)

(assert (=> start!410464 m!4871059))

(declare-fun m!4871061 () Bool)

(assert (=> start!410464 m!4871061))

(assert (=> start!410464 m!4871061))

(declare-fun m!4871063 () Bool)

(assert (=> start!410464 m!4871063))

(declare-fun m!4871065 () Bool)

(assert (=> start!410464 m!4871065))

(assert (=> start!410464 m!4871063))

(declare-fun m!4871067 () Bool)

(assert (=> start!410464 m!4871067))

(declare-fun bs!601965 () Bool)

(declare-fun neg-inst!1796 () Bool)

(declare-fun s!240296 () Bool)

(assert (= bs!601965 (and neg-inst!1796 s!240296)))

(assert (=> bs!601965 (=> true (= (list!17220 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!742909))) (list!17220 x!742909)))))

(assert (=> m!4871065 m!4871061))

(assert (=> m!4871065 m!4871063))

(assert (=> m!4871065 m!4871067))

(assert (=> m!4871065 s!240296))

(assert (=> m!4871061 s!240296))

(declare-fun bs!601966 () Bool)

(assert (= bs!601966 (and neg-inst!1796 start!410464)))

(assert (=> bs!601966 (= true inst!1796)))

(declare-fun lambda!131248 () Int)

(declare-fun Forall!1655 (Int) Bool)

(assert (=> start!410464 (= (Forall!1655 lambda!131248) inst!1796)))

(assert (=> start!410464 (not (Forall!1655 lambda!131248))))

(assert (=> start!410464 true))

(assert (= neg-inst!1796 inst!1796))

(declare-fun m!4871069 () Bool)

(assert (=> start!410464 m!4871069))

(assert (=> start!410464 m!4871069))

(push 1)

(assert (not b!4275515))

(assert (not start!410464))

(assert (not bs!601965))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1262013 () Bool)

(declare-fun list!17222 (Conc!14314) List!47456)

(assert (=> d!1262013 (= (list!17220 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!742909))) (list!17222 (c!728031 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!742909)))))))

(declare-fun bs!601969 () Bool)

(assert (= bs!601969 d!1262013))

(declare-fun m!4871085 () Bool)

(assert (=> bs!601969 m!4871085))

(assert (=> bs!601965 d!1262013))

(declare-fun d!1262015 () Bool)

(declare-fun c!728036 () Bool)

(assert (=> d!1262015 (= c!728036 (is-DelimiterValue!16575 (toValue!19 thiss!2654 x!742909)))))

(declare-fun e!2654438 () BalanceConc!28138)

(assert (=> d!1262015 (= (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!742909)) e!2654438)))

(declare-fun b!4275525 () Bool)

(declare-fun seqFromList!5884 (List!47456) BalanceConc!28138)

(assert (=> b!4275525 (= e!2654438 (seqFromList!5884 (value!250097 (toValue!19 thiss!2654 x!742909))))))

(declare-fun b!4275526 () Bool)

(assert (=> b!4275526 (= e!2654438 (BalanceConc!28139 Empty!14314))))

(assert (= (and d!1262015 c!728036) b!4275525))

(assert (= (and d!1262015 (not c!728036)) b!4275526))

(declare-fun m!4871087 () Bool)

(assert (=> b!4275525 m!4871087))

(assert (=> bs!601965 d!1262015))

(declare-fun d!1262017 () Bool)

(declare-fun efficientList!558 (BalanceConc!28138) List!47456)

(assert (=> d!1262017 (= (toValue!19 thiss!2654 x!742909) (DelimiterValue!16575 (efficientList!558 x!742909)))))

(declare-fun bs!601970 () Bool)

(assert (= bs!601970 d!1262017))

(declare-fun m!4871089 () Bool)

(assert (=> bs!601970 m!4871089))

(assert (=> bs!601965 d!1262017))

(declare-fun d!1262021 () Bool)

(assert (=> d!1262021 (= (list!17220 x!742909) (list!17222 (c!728031 x!742909)))))

(declare-fun bs!601971 () Bool)

(assert (= bs!601971 d!1262021))

(declare-fun m!4871091 () Bool)

(assert (=> bs!601971 m!4871091))

(assert (=> bs!601965 d!1262021))

(push 1)

(assert (not d!1262021))

(assert (not d!1262013))

(assert (not start!410464))

(assert (not b!4275515))

(assert (not d!1262017))

(assert (not b!4275525))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4275542 () Bool)

(declare-fun e!2654446 () List!47456)

(declare-fun e!2654447 () List!47456)

(assert (=> b!4275542 (= e!2654446 e!2654447)))

(declare-fun c!728046 () Bool)

(assert (=> b!4275542 (= c!728046 (is-Leaf!22127 (c!728031 x!742909)))))

(declare-fun d!1262027 () Bool)

(declare-fun c!728045 () Bool)

(assert (=> d!1262027 (= c!728045 (is-Empty!14314 (c!728031 x!742909)))))

(assert (=> d!1262027 (= (list!17222 (c!728031 x!742909)) e!2654446)))

(declare-fun b!4275543 () Bool)

(declare-fun list!17224 (IArray!28633) List!47456)

(assert (=> b!4275543 (= e!2654447 (list!17224 (xs!17620 (c!728031 x!742909))))))

(declare-fun b!4275544 () Bool)

(declare-fun ++!12085 (List!47456 List!47456) List!47456)

(assert (=> b!4275544 (= e!2654447 (++!12085 (list!17222 (left!35232 (c!728031 x!742909))) (list!17222 (right!35562 (c!728031 x!742909)))))))

(declare-fun b!4275541 () Bool)

(assert (=> b!4275541 (= e!2654446 Nil!47332)))

(assert (= (and d!1262027 c!728045) b!4275541))

(assert (= (and d!1262027 (not c!728045)) b!4275542))

(assert (= (and b!4275542 c!728046) b!4275543))

(assert (= (and b!4275542 (not c!728046)) b!4275544))

(declare-fun m!4871097 () Bool)

(assert (=> b!4275543 m!4871097))

(declare-fun m!4871099 () Bool)

(assert (=> b!4275544 m!4871099))

(declare-fun m!4871101 () Bool)

(assert (=> b!4275544 m!4871101))

(assert (=> b!4275544 m!4871099))

(assert (=> b!4275544 m!4871101))

(declare-fun m!4871103 () Bool)

(assert (=> b!4275544 m!4871103))

(assert (=> d!1262021 d!1262027))

(declare-fun d!1262029 () Bool)

(declare-fun lt!1513672 () List!47456)

(assert (=> d!1262029 (= lt!1513672 (list!17220 x!742909))))

(declare-fun efficientList!559 (Conc!14314 List!47456) List!47456)

(declare-fun efficientList$default$2!194 (Conc!14314) List!47456)

(assert (=> d!1262029 (= lt!1513672 (efficientList!559 (c!728031 x!742909) (efficientList$default$2!194 (c!728031 x!742909))))))

(assert (=> d!1262029 (= (efficientList!558 x!742909) lt!1513672)))

(declare-fun bs!601975 () Bool)

(assert (= bs!601975 d!1262029))

(assert (=> bs!601975 m!4871065))

(declare-fun m!4871109 () Bool)

(assert (=> bs!601975 m!4871109))

(assert (=> bs!601975 m!4871109))

(declare-fun m!4871111 () Bool)

(assert (=> bs!601975 m!4871111))

(assert (=> d!1262017 d!1262029))

(declare-fun b!4275546 () Bool)

(declare-fun e!2654448 () List!47456)

(declare-fun e!2654449 () List!47456)

(assert (=> b!4275546 (= e!2654448 e!2654449)))

(declare-fun c!728048 () Bool)

(assert (=> b!4275546 (= c!728048 (is-Leaf!22127 (c!728031 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!742909)))))))

(declare-fun d!1262033 () Bool)

(declare-fun c!728047 () Bool)

(assert (=> d!1262033 (= c!728047 (is-Empty!14314 (c!728031 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!742909)))))))

(assert (=> d!1262033 (= (list!17222 (c!728031 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!742909)))) e!2654448)))

(declare-fun b!4275547 () Bool)

(assert (=> b!4275547 (= e!2654449 (list!17224 (xs!17620 (c!728031 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!742909))))))))

(declare-fun b!4275548 () Bool)

(assert (=> b!4275548 (= e!2654449 (++!12085 (list!17222 (left!35232 (c!728031 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!742909))))) (list!17222 (right!35562 (c!728031 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!742909)))))))))

(declare-fun b!4275545 () Bool)

(assert (=> b!4275545 (= e!2654448 Nil!47332)))

(assert (= (and d!1262033 c!728047) b!4275545))

(assert (= (and d!1262033 (not c!728047)) b!4275546))

(assert (= (and b!4275546 c!728048) b!4275547))

(assert (= (and b!4275546 (not c!728048)) b!4275548))

(declare-fun m!4871113 () Bool)

(assert (=> b!4275547 m!4871113))

(declare-fun m!4871115 () Bool)

(assert (=> b!4275548 m!4871115))

(declare-fun m!4871117 () Bool)

(assert (=> b!4275548 m!4871117))

(assert (=> b!4275548 m!4871115))

(assert (=> b!4275548 m!4871117))

(declare-fun m!4871119 () Bool)

(assert (=> b!4275548 m!4871119))

(assert (=> d!1262013 d!1262033))

(push 1)

(assert (not b!4275548))

(assert (not b!4275544))

(assert (not start!410464))

(assert (not b!4275525))

(assert (not b!4275547))

(assert (not b!4275515))

(assert (not b!4275543))

(assert (not d!1262029))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!1262029 d!1262021))

(declare-fun d!1262039 () Bool)

(declare-fun lt!1513687 () List!47456)

(assert (=> d!1262039 (= lt!1513687 (++!12085 (list!17222 (c!728031 x!742909)) (efficientList$default$2!194 (c!728031 x!742909))))))

(declare-fun e!2654464 () List!47456)

(assert (=> d!1262039 (= lt!1513687 e!2654464)))

(declare-fun c!728063 () Bool)

(assert (=> d!1262039 (= c!728063 (is-Empty!14314 (c!728031 x!742909)))))

(assert (=> d!1262039 (= (efficientList!559 (c!728031 x!742909) (efficientList$default$2!194 (c!728031 x!742909))) lt!1513687)))

(declare-fun b!4275577 () Bool)

(declare-fun e!2654465 () List!47456)

(assert (=> b!4275577 (= e!2654464 e!2654465)))

(declare-fun c!728064 () Bool)

(assert (=> b!4275577 (= c!728064 (is-Leaf!22127 (c!728031 x!742909)))))

(declare-fun b!4275578 () Bool)

(declare-fun call!294226 () List!47456)

(assert (=> b!4275578 (= e!2654465 call!294226)))

(declare-fun b!4275579 () Bool)

(declare-fun e!2654466 () List!47456)

(declare-fun efficientList!562 (IArray!28633) List!47456)

(assert (=> b!4275579 (= e!2654466 (efficientList!562 (xs!17620 (c!728031 x!742909))))))

(declare-fun b!4275580 () Bool)

(declare-fun lt!1513688 () List!47456)

(assert (=> b!4275580 (= e!2654466 lt!1513688)))

(declare-fun bm!294221 () Bool)

(declare-fun c!728065 () Bool)

(assert (=> bm!294221 (= c!728065 c!728064)))

(declare-fun lt!1513689 () List!47456)

(assert (=> bm!294221 (= call!294226 (++!12085 e!2654466 (ite c!728064 (efficientList$default$2!194 (c!728031 x!742909)) lt!1513689)))))

(declare-fun b!4275581 () Bool)

(declare-datatypes ((Unit!66275 0))(
  ( (Unit!66276) )
))
(declare-fun lt!1513686 () Unit!66275)

(declare-fun lt!1513690 () Unit!66275)

(assert (=> b!4275581 (= lt!1513686 lt!1513690)))

(assert (=> b!4275581 (= (++!12085 call!294226 (efficientList$default$2!194 (c!728031 x!742909))) (++!12085 lt!1513688 (++!12085 lt!1513689 (efficientList$default$2!194 (c!728031 x!742909)))))))

(declare-fun lemmaConcatAssociativity!2722 (List!47456 List!47456 List!47456) Unit!66275)

(assert (=> b!4275581 (= lt!1513690 (lemmaConcatAssociativity!2722 lt!1513688 lt!1513689 (efficientList$default$2!194 (c!728031 x!742909))))))

(assert (=> b!4275581 (= lt!1513689 (list!17222 (right!35562 (c!728031 x!742909))))))

(assert (=> b!4275581 (= lt!1513688 (list!17222 (left!35232 (c!728031 x!742909))))))

(assert (=> b!4275581 (= e!2654465 (efficientList!559 (left!35232 (c!728031 x!742909)) (efficientList!559 (right!35562 (c!728031 x!742909)) (efficientList$default$2!194 (c!728031 x!742909)))))))

(declare-fun b!4275582 () Bool)

(assert (=> b!4275582 (= e!2654464 (efficientList$default$2!194 (c!728031 x!742909)))))

(assert (= (and d!1262039 c!728063) b!4275582))

(assert (= (and d!1262039 (not c!728063)) b!4275577))

(assert (= (and b!4275577 c!728064) b!4275578))

(assert (= (and b!4275577 (not c!728064)) b!4275581))

(assert (= (or b!4275578 b!4275581) bm!294221))

(assert (= (and bm!294221 c!728065) b!4275579))

(assert (= (and bm!294221 (not c!728065)) b!4275580))

(assert (=> d!1262039 m!4871091))

(assert (=> d!1262039 m!4871091))

(assert (=> d!1262039 m!4871109))

(declare-fun m!4871141 () Bool)

(assert (=> d!1262039 m!4871141))

(declare-fun m!4871143 () Bool)

(assert (=> b!4275579 m!4871143))

(declare-fun m!4871145 () Bool)

(assert (=> bm!294221 m!4871145))

(assert (=> b!4275581 m!4871099))

(declare-fun m!4871147 () Bool)

(assert (=> b!4275581 m!4871147))

(declare-fun m!4871149 () Bool)

(assert (=> b!4275581 m!4871149))

(declare-fun m!4871151 () Bool)

(assert (=> b!4275581 m!4871151))

(declare-fun m!4871153 () Bool)

(assert (=> b!4275581 m!4871153))

(assert (=> b!4275581 m!4871109))

(declare-fun m!4871155 () Bool)

(assert (=> b!4275581 m!4871155))

(assert (=> b!4275581 m!4871101))

(assert (=> b!4275581 m!4871109))

(declare-fun m!4871157 () Bool)

(assert (=> b!4275581 m!4871157))

(assert (=> b!4275581 m!4871109))

(assert (=> b!4275581 m!4871151))

(assert (=> b!4275581 m!4871109))

(assert (=> b!4275581 m!4871147))

(assert (=> d!1262029 d!1262039))

(declare-fun d!1262043 () Bool)

(assert (=> d!1262043 (= (efficientList$default$2!194 (c!728031 x!742909)) Nil!47332)))

(assert (=> d!1262029 d!1262043))

(declare-fun d!1262045 () Bool)

(declare-fun c!728068 () Bool)

(assert (=> d!1262045 (= c!728068 (is-Node!14314 (c!728031 x!742909)))))

(declare-fun e!2654471 () Bool)

(assert (=> d!1262045 (= (inv!62580 (c!728031 x!742909)) e!2654471)))

(declare-fun b!4275589 () Bool)

(declare-fun inv!62584 (Conc!14314) Bool)

(assert (=> b!4275589 (= e!2654471 (inv!62584 (c!728031 x!742909)))))

(declare-fun b!4275590 () Bool)

(declare-fun e!2654472 () Bool)

(assert (=> b!4275590 (= e!2654471 e!2654472)))

(declare-fun res!1755749 () Bool)

(assert (=> b!4275590 (= res!1755749 (not (is-Leaf!22127 (c!728031 x!742909))))))

(assert (=> b!4275590 (=> res!1755749 e!2654472)))

(declare-fun b!4275591 () Bool)

(declare-fun inv!62585 (Conc!14314) Bool)

(assert (=> b!4275591 (= e!2654472 (inv!62585 (c!728031 x!742909)))))

(assert (= (and d!1262045 c!728068) b!4275589))

(assert (= (and d!1262045 (not c!728068)) b!4275590))

(assert (= (and b!4275590 (not res!1755749)) b!4275591))

(declare-fun m!4871159 () Bool)

(assert (=> b!4275589 m!4871159))

(declare-fun m!4871161 () Bool)

(assert (=> b!4275591 m!4871161))

(assert (=> b!4275515 d!1262045))

(assert (=> start!410464 d!1262013))

(declare-fun d!1262047 () Bool)

(declare-fun isBalanced!3859 (Conc!14314) Bool)

(assert (=> d!1262047 (= (inv!62581 x!742909) (isBalanced!3859 (c!728031 x!742909)))))

(declare-fun bs!601977 () Bool)

(assert (= bs!601977 d!1262047))

(declare-fun m!4871163 () Bool)

(assert (=> bs!601977 m!4871163))

(assert (=> start!410464 d!1262047))

(declare-fun d!1262049 () Bool)

(declare-fun choose!26070 (Int) Bool)

(assert (=> d!1262049 (= (Forall!1655 lambda!131248) (choose!26070 lambda!131248))))

(declare-fun bs!601978 () Bool)

(assert (= bs!601978 d!1262049))

(declare-fun m!4871165 () Bool)

(assert (=> bs!601978 m!4871165))

(assert (=> start!410464 d!1262049))

(assert (=> start!410464 d!1262015))

(assert (=> start!410464 d!1262021))

(assert (=> start!410464 d!1262017))

(declare-fun d!1262051 () Bool)

(declare-fun fromListB!2671 (List!47456) BalanceConc!28138)

(assert (=> d!1262051 (= (seqFromList!5884 (value!250097 (toValue!19 thiss!2654 x!742909))) (fromListB!2671 (value!250097 (toValue!19 thiss!2654 x!742909))))))

(declare-fun bs!601979 () Bool)

(assert (= bs!601979 d!1262051))

(declare-fun m!4871167 () Bool)

(assert (=> bs!601979 m!4871167))

(assert (=> b!4275525 d!1262051))

(declare-fun tp!1308493 () Bool)

(declare-fun b!4275598 () Bool)

(declare-fun tp!1308494 () Bool)

(declare-fun e!2654477 () Bool)

(assert (=> b!4275598 (= e!2654477 (and (inv!62580 (left!35232 (c!728031 x!742909))) tp!1308493 (inv!62580 (right!35562 (c!728031 x!742909))) tp!1308494))))

(declare-fun b!4275599 () Bool)

(declare-fun inv!62586 (IArray!28633) Bool)

(assert (=> b!4275599 (= e!2654477 (inv!62586 (xs!17620 (c!728031 x!742909))))))

(assert (=> b!4275515 (= tp!1308485 (and (inv!62580 (c!728031 x!742909)) e!2654477))))

(assert (= (and b!4275515 (is-Node!14314 (c!728031 x!742909))) b!4275598))

(assert (= (and b!4275515 (is-Leaf!22127 (c!728031 x!742909))) b!4275599))

(declare-fun m!4871169 () Bool)

(assert (=> b!4275598 m!4871169))

(declare-fun m!4871171 () Bool)

(assert (=> b!4275598 m!4871171))

(declare-fun m!4871173 () Bool)

(assert (=> b!4275599 m!4871173))

(assert (=> b!4275515 m!4871057))

(push 1)

(assert (not bm!294221))

(assert (not b!4275598))

(assert (not b!4275544))

(assert (not d!1262049))

(assert (not b!4275591))

(assert (not b!4275548))

(assert (not d!1262039))

(assert (not d!1262051))

(assert (not b!4275599))

(assert (not d!1262047))

(assert (not b!4275581))

(assert (not b!4275547))

(assert (not b!4275515))

(assert (not b!4275579))

(assert (not b!4275543))

(assert (not b!4275589))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4275629 () Bool)

(declare-fun e!2654492 () Bool)

(declare-fun lt!1513708 () List!47456)

(assert (=> b!4275629 (= e!2654492 (or (not (= (efficientList$default$2!194 (c!728031 x!742909)) Nil!47332)) (= lt!1513708 (list!17222 (c!728031 x!742909)))))))

(declare-fun d!1262059 () Bool)

(assert (=> d!1262059 e!2654492))

(declare-fun res!1755754 () Bool)

(assert (=> d!1262059 (=> (not res!1755754) (not e!2654492))))

(declare-fun content!7481 (List!47456) (Set (_ BitVec 16)))

(assert (=> d!1262059 (= res!1755754 (= (content!7481 lt!1513708) (set.union (content!7481 (list!17222 (c!728031 x!742909))) (content!7481 (efficientList$default$2!194 (c!728031 x!742909))))))))

(declare-fun e!2654493 () List!47456)

(assert (=> d!1262059 (= lt!1513708 e!2654493)))

(declare-fun c!728080 () Bool)

(assert (=> d!1262059 (= c!728080 (is-Nil!47332 (list!17222 (c!728031 x!742909))))))

(assert (=> d!1262059 (= (++!12085 (list!17222 (c!728031 x!742909)) (efficientList$default$2!194 (c!728031 x!742909))) lt!1513708)))

(declare-fun b!4275628 () Bool)

(declare-fun res!1755755 () Bool)

(assert (=> b!4275628 (=> (not res!1755755) (not e!2654492))))

(declare-fun size!34654 (List!47456) Int)

(assert (=> b!4275628 (= res!1755755 (= (size!34654 lt!1513708) (+ (size!34654 (list!17222 (c!728031 x!742909))) (size!34654 (efficientList$default$2!194 (c!728031 x!742909))))))))

(declare-fun b!4275627 () Bool)

(assert (=> b!4275627 (= e!2654493 (Cons!47332 (h!52752 (list!17222 (c!728031 x!742909))) (++!12085 (t!353921 (list!17222 (c!728031 x!742909))) (efficientList$default$2!194 (c!728031 x!742909)))))))

(declare-fun b!4275626 () Bool)

(assert (=> b!4275626 (= e!2654493 (efficientList$default$2!194 (c!728031 x!742909)))))

(assert (= (and d!1262059 c!728080) b!4275626))

(assert (= (and d!1262059 (not c!728080)) b!4275627))

(assert (= (and d!1262059 res!1755754) b!4275628))

(assert (= (and b!4275628 res!1755755) b!4275629))

(declare-fun m!4871199 () Bool)

(assert (=> d!1262059 m!4871199))

(assert (=> d!1262059 m!4871091))

(declare-fun m!4871201 () Bool)

(assert (=> d!1262059 m!4871201))

(assert (=> d!1262059 m!4871109))

(declare-fun m!4871203 () Bool)

(assert (=> d!1262059 m!4871203))

(declare-fun m!4871205 () Bool)

(assert (=> b!4275628 m!4871205))

(assert (=> b!4275628 m!4871091))

(declare-fun m!4871207 () Bool)

(assert (=> b!4275628 m!4871207))

(assert (=> b!4275628 m!4871109))

(declare-fun m!4871209 () Bool)

(assert (=> b!4275628 m!4871209))

(assert (=> b!4275627 m!4871109))

(declare-fun m!4871211 () Bool)

(assert (=> b!4275627 m!4871211))

(assert (=> d!1262039 d!1262059))

(assert (=> d!1262039 d!1262027))

(declare-fun d!1262067 () Bool)

(declare-fun e!2654496 () Bool)

(assert (=> d!1262067 e!2654496))

(declare-fun res!1755758 () Bool)

(assert (=> d!1262067 (=> (not res!1755758) (not e!2654496))))

(declare-fun lt!1513711 () BalanceConc!28138)

(assert (=> d!1262067 (= res!1755758 (= (list!17220 lt!1513711) (value!250097 (toValue!19 thiss!2654 x!742909))))))

(declare-fun fromList!929 (List!47456) Conc!14314)

(assert (=> d!1262067 (= lt!1513711 (BalanceConc!28139 (fromList!929 (value!250097 (toValue!19 thiss!2654 x!742909)))))))

(assert (=> d!1262067 (= (fromListB!2671 (value!250097 (toValue!19 thiss!2654 x!742909))) lt!1513711)))

(declare-fun b!4275632 () Bool)

(assert (=> b!4275632 (= e!2654496 (isBalanced!3859 (fromList!929 (value!250097 (toValue!19 thiss!2654 x!742909)))))))

(assert (= (and d!1262067 res!1755758) b!4275632))

(declare-fun m!4871213 () Bool)

(assert (=> d!1262067 m!4871213))

(declare-fun m!4871215 () Bool)

(assert (=> d!1262067 m!4871215))

(assert (=> b!4275632 m!4871215))

(assert (=> b!4275632 m!4871215))

(declare-fun m!4871217 () Bool)

(assert (=> b!4275632 m!4871217))

(assert (=> d!1262051 d!1262067))

(push 1)

(assert (not bm!294221))

(assert (not b!4275548))

(assert (not b!4275628))

(assert (not b!4275599))

(assert (not b!4275544))

(assert (not b!4275632))

(assert (not b!4275591))

(assert (not b!4275598))

(assert (not b!4275627))

(assert (not d!1262047))

(assert (not b!4275581))

(assert (not d!1262059))

(assert (not d!1262049))

(assert (not b!4275547))

(assert (not b!4275515))

(assert (not b!4275579))

(assert (not b!4275543))

(assert (not b!4275589))

(assert (not d!1262067))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

