; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!409760 () Bool)

(assert start!409760)

(declare-datatypes ((List!47431 0))(
  ( (Nil!47307) (Cons!47307 (h!52727 (_ BitVec 16)) (t!353743 List!47431)) )
))
(declare-datatypes ((IArray!28583 0))(
  ( (IArray!28584 (innerList!14349 List!47431)) )
))
(declare-datatypes ((Conc!14289 0))(
  ( (Node!14289 (left!35156 Conc!14289) (right!35486 Conc!14289) (csize!28808 Int) (cheight!14500 Int)) (Leaf!22089 (xs!17595 IArray!28583) (csize!28809 Int)) (Empty!14289) )
))
(declare-datatypes ((BalanceConc!28088 0))(
  ( (BalanceConc!28089 (c!726726 Conc!14289)) )
))
(declare-fun v!4010 () BalanceConc!28088)

(declare-datatypes ((TokenValue!8262 0))(
  ( (FloatLiteralValue!16524 (text!58279 List!47431)) (TokenValueExt!8261 (__x!28708 Int)) (Broken!41310 (value!249419 List!47431)) (Object!8385) (End!8262) (Def!8262) (Underscore!8262) (Match!8262) (Else!8262) (Error!8262) (Case!8262) (If!8262) (Extends!8262) (Abstract!8262) (Class!8262) (Val!8262) (DelimiterValue!16524 (del!8322 List!47431)) (KeywordValue!8268 (value!249420 List!47431)) (CommentValue!16524 (value!249421 List!47431)) (WhitespaceValue!16524 (value!249422 List!47431)) (IndentationValue!8262 (value!249423 List!47431)) (String!55261) (Int32!8262) (Broken!41311 (value!249424 List!47431)) (Boolean!8263) (Unit!66228) (OperatorValue!8265 (op!8322 List!47431)) (IdentifierValue!16524 (value!249425 List!47431)) (IdentifierValue!16525 (value!249426 List!47431)) (WhitespaceValue!16525 (value!249427 List!47431)) (True!16524) (False!16524) (Broken!41312 (value!249428 List!47431)) (Broken!41313 (value!249429 List!47431)) (True!16525) (RightBrace!8262) (RightBracket!8262) (Colon!8262) (Null!8262) (Comma!8262) (LeftBracket!8262) (False!16525) (LeftBrace!8262) (ImaginaryLiteralValue!8262 (text!58280 List!47431)) (StringLiteralValue!24786 (value!249430 List!47431)) (EOFValue!8262 (value!249431 List!47431)) (IdentValue!8262 (value!249432 List!47431)) (DelimiterValue!16525 (value!249433 List!47431)) (DedentValue!8262 (value!249434 List!47431)) (NewLineValue!8262 (value!249435 List!47431)) (IntegerValue!24786 (value!249436 (_ BitVec 32)) (text!58281 List!47431)) (IntegerValue!24787 (value!249437 Int) (text!58282 List!47431)) (Times!8262) (Or!8262) (Equal!8262) (Minus!8262) (Broken!41314 (value!249438 List!47431)) (And!8262) (Div!8262) (LessEqual!8262) (Mod!8262) (Concat!21160) (Not!8262) (Plus!8262) (SpaceValue!8262 (value!249439 List!47431)) (IntegerValue!24788 (value!249440 Int) (text!58283 List!47431)) (StringLiteralValue!24787 (text!58284 List!47431)) (FloatLiteralValue!16525 (text!58285 List!47431)) (BytesLiteralValue!8262 (value!249441 List!47431)) (CommentValue!16525 (value!249442 List!47431)) (StringLiteralValue!24788 (value!249443 List!47431)) (ErrorTokenValue!8262 (msg!8323 List!47431)) )
))
(declare-fun inv!21 (TokenValue!8262) Bool)

(declare-fun efficientList!504 (BalanceConc!28088) List!47431)

(assert (=> start!409760 (not (inv!21 (WhitespaceValue!16525 (efficientList!504 v!4010))))))

(declare-fun e!2651961 () Bool)

(declare-fun inv!62426 (BalanceConc!28088) Bool)

(assert (=> start!409760 (and (inv!62426 v!4010) e!2651961)))

(declare-fun b!4271317 () Bool)

(declare-fun tp!1308074 () Bool)

(declare-fun inv!62427 (Conc!14289) Bool)

(assert (=> b!4271317 (= e!2651961 (and (inv!62427 (c!726726 v!4010)) tp!1308074))))

(assert (= start!409760 b!4271317))

(declare-fun m!4864849 () Bool)

(assert (=> start!409760 m!4864849))

(declare-fun m!4864851 () Bool)

(assert (=> start!409760 m!4864851))

(declare-fun m!4864853 () Bool)

(assert (=> start!409760 m!4864853))

(declare-fun m!4864855 () Bool)

(assert (=> b!4271317 m!4864855))

(check-sat (not start!409760) (not b!4271317))
(check-sat)
(get-model)

(declare-fun d!1259868 () Bool)

(declare-fun c!726734 () Bool)

(get-info :version)

(assert (=> d!1259868 (= c!726734 ((_ is IntegerValue!24786) (WhitespaceValue!16525 (efficientList!504 v!4010))))))

(declare-fun e!2651974 () Bool)

(assert (=> d!1259868 (= (inv!21 (WhitespaceValue!16525 (efficientList!504 v!4010))) e!2651974)))

(declare-fun b!4271337 () Bool)

(declare-fun res!1754556 () Bool)

(declare-fun e!2651976 () Bool)

(assert (=> b!4271337 (=> res!1754556 e!2651976)))

(assert (=> b!4271337 (= res!1754556 (not ((_ is IntegerValue!24788) (WhitespaceValue!16525 (efficientList!504 v!4010)))))))

(declare-fun e!2651975 () Bool)

(assert (=> b!4271337 (= e!2651975 e!2651976)))

(declare-fun b!4271338 () Bool)

(declare-fun inv!15 (TokenValue!8262) Bool)

(assert (=> b!4271338 (= e!2651976 (inv!15 (WhitespaceValue!16525 (efficientList!504 v!4010))))))

(declare-fun b!4271339 () Bool)

(declare-fun inv!16 (TokenValue!8262) Bool)

(assert (=> b!4271339 (= e!2651974 (inv!16 (WhitespaceValue!16525 (efficientList!504 v!4010))))))

(declare-fun b!4271340 () Bool)

(assert (=> b!4271340 (= e!2651974 e!2651975)))

(declare-fun c!726735 () Bool)

(assert (=> b!4271340 (= c!726735 ((_ is IntegerValue!24787) (WhitespaceValue!16525 (efficientList!504 v!4010))))))

(declare-fun b!4271341 () Bool)

(declare-fun inv!17 (TokenValue!8262) Bool)

(assert (=> b!4271341 (= e!2651975 (inv!17 (WhitespaceValue!16525 (efficientList!504 v!4010))))))

(assert (= (and d!1259868 c!726734) b!4271339))

(assert (= (and d!1259868 (not c!726734)) b!4271340))

(assert (= (and b!4271340 c!726735) b!4271341))

(assert (= (and b!4271340 (not c!726735)) b!4271337))

(assert (= (and b!4271337 (not res!1754556)) b!4271338))

(declare-fun m!4864861 () Bool)

(assert (=> b!4271338 m!4864861))

(declare-fun m!4864863 () Bool)

(assert (=> b!4271339 m!4864863))

(declare-fun m!4864865 () Bool)

(assert (=> b!4271341 m!4864865))

(assert (=> start!409760 d!1259868))

(declare-fun d!1259872 () Bool)

(declare-fun lt!1512811 () List!47431)

(declare-fun list!17161 (BalanceConc!28088) List!47431)

(assert (=> d!1259872 (= lt!1512811 (list!17161 v!4010))))

(declare-fun efficientList!505 (Conc!14289 List!47431) List!47431)

(declare-fun efficientList$default$2!174 (Conc!14289) List!47431)

(assert (=> d!1259872 (= lt!1512811 (efficientList!505 (c!726726 v!4010) (efficientList$default$2!174 (c!726726 v!4010))))))

(assert (=> d!1259872 (= (efficientList!504 v!4010) lt!1512811)))

(declare-fun bs!600910 () Bool)

(assert (= bs!600910 d!1259872))

(declare-fun m!4864873 () Bool)

(assert (=> bs!600910 m!4864873))

(declare-fun m!4864875 () Bool)

(assert (=> bs!600910 m!4864875))

(assert (=> bs!600910 m!4864875))

(declare-fun m!4864877 () Bool)

(assert (=> bs!600910 m!4864877))

(assert (=> start!409760 d!1259872))

(declare-fun d!1259876 () Bool)

(declare-fun isBalanced!3840 (Conc!14289) Bool)

(assert (=> d!1259876 (= (inv!62426 v!4010) (isBalanced!3840 (c!726726 v!4010)))))

(declare-fun bs!600911 () Bool)

(assert (= bs!600911 d!1259876))

(declare-fun m!4864879 () Bool)

(assert (=> bs!600911 m!4864879))

(assert (=> start!409760 d!1259876))

(declare-fun d!1259878 () Bool)

(declare-fun c!726744 () Bool)

(assert (=> d!1259878 (= c!726744 ((_ is Node!14289) (c!726726 v!4010)))))

(declare-fun e!2651996 () Bool)

(assert (=> d!1259878 (= (inv!62427 (c!726726 v!4010)) e!2651996)))

(declare-fun b!4271371 () Bool)

(declare-fun inv!62430 (Conc!14289) Bool)

(assert (=> b!4271371 (= e!2651996 (inv!62430 (c!726726 v!4010)))))

(declare-fun b!4271372 () Bool)

(declare-fun e!2651997 () Bool)

(assert (=> b!4271372 (= e!2651996 e!2651997)))

(declare-fun res!1754562 () Bool)

(assert (=> b!4271372 (= res!1754562 (not ((_ is Leaf!22089) (c!726726 v!4010))))))

(assert (=> b!4271372 (=> res!1754562 e!2651997)))

(declare-fun b!4271373 () Bool)

(declare-fun inv!62432 (Conc!14289) Bool)

(assert (=> b!4271373 (= e!2651997 (inv!62432 (c!726726 v!4010)))))

(assert (= (and d!1259878 c!726744) b!4271371))

(assert (= (and d!1259878 (not c!726744)) b!4271372))

(assert (= (and b!4271372 (not res!1754562)) b!4271373))

(declare-fun m!4864895 () Bool)

(assert (=> b!4271371 m!4864895))

(declare-fun m!4864897 () Bool)

(assert (=> b!4271373 m!4864897))

(assert (=> b!4271317 d!1259878))

(declare-fun e!2652002 () Bool)

(declare-fun b!4271380 () Bool)

(declare-fun tp!1308086 () Bool)

(declare-fun tp!1308085 () Bool)

(assert (=> b!4271380 (= e!2652002 (and (inv!62427 (left!35156 (c!726726 v!4010))) tp!1308085 (inv!62427 (right!35486 (c!726726 v!4010))) tp!1308086))))

(declare-fun b!4271381 () Bool)

(declare-fun inv!62433 (IArray!28583) Bool)

(assert (=> b!4271381 (= e!2652002 (inv!62433 (xs!17595 (c!726726 v!4010))))))

(assert (=> b!4271317 (= tp!1308074 (and (inv!62427 (c!726726 v!4010)) e!2652002))))

(assert (= (and b!4271317 ((_ is Node!14289) (c!726726 v!4010))) b!4271380))

(assert (= (and b!4271317 ((_ is Leaf!22089) (c!726726 v!4010))) b!4271381))

(declare-fun m!4864899 () Bool)

(assert (=> b!4271380 m!4864899))

(declare-fun m!4864901 () Bool)

(assert (=> b!4271380 m!4864901))

(declare-fun m!4864903 () Bool)

(assert (=> b!4271381 m!4864903))

(assert (=> b!4271317 m!4864855))

(check-sat (not b!4271341) (not d!1259872) (not b!4271373) (not b!4271338) (not d!1259876) (not b!4271381) (not b!4271380) (not b!4271371) (not b!4271339) (not b!4271317))
(check-sat)
