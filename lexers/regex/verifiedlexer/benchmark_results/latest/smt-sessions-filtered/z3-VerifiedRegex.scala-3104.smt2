; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!183998 () Bool)

(assert start!183998)

(declare-datatypes ((List!20424 0))(
  ( (Nil!20352) (Cons!20352 (h!25753 (_ BitVec 16)) (t!172049 List!20424)) )
))
(declare-datatypes ((IArray!13503 0))(
  ( (IArray!13504 (innerList!6809 List!20424)) )
))
(declare-datatypes ((Conc!6749 0))(
  ( (Node!6749 (left!16307 Conc!6749) (right!16637 Conc!6749) (csize!13728 Int) (cheight!6960 Int)) (Leaf!9854 (xs!9625 IArray!13503) (csize!13729 Int)) (Empty!6749) )
))
(declare-datatypes ((BalanceConc!13420 0))(
  ( (BalanceConc!13421 (c!301290 Conc!6749)) )
))
(declare-fun v!4991 () BalanceConc!13420)

(declare-datatypes ((TokenValue!3765 0))(
  ( (FloatLiteralValue!7530 (text!26800 List!20424)) (TokenValueExt!3764 (__x!12813 Int)) (Broken!18825 (value!114501 List!20424)) (Object!3836) (End!3765) (Def!3765) (Underscore!3765) (Match!3765) (Else!3765) (Error!3765) (Case!3765) (If!3765) (Extends!3765) (Abstract!3765) (Class!3765) (Val!3765) (DelimiterValue!7530 (del!3825 List!20424)) (KeywordValue!3771 (value!114502 List!20424)) (CommentValue!7530 (value!114503 List!20424)) (WhitespaceValue!7530 (value!114504 List!20424)) (IndentationValue!3765 (value!114505 List!20424)) (String!23318) (Int32!3765) (Broken!18826 (value!114506 List!20424)) (Boolean!3766) (Unit!35044) (OperatorValue!3768 (op!3825 List!20424)) (IdentifierValue!7530 (value!114507 List!20424)) (IdentifierValue!7531 (value!114508 List!20424)) (WhitespaceValue!7531 (value!114509 List!20424)) (True!7530) (False!7530) (Broken!18827 (value!114510 List!20424)) (Broken!18828 (value!114511 List!20424)) (True!7531) (RightBrace!3765) (RightBracket!3765) (Colon!3765) (Null!3765) (Comma!3765) (LeftBracket!3765) (False!7531) (LeftBrace!3765) (ImaginaryLiteralValue!3765 (text!26801 List!20424)) (StringLiteralValue!11295 (value!114512 List!20424)) (EOFValue!3765 (value!114513 List!20424)) (IdentValue!3765 (value!114514 List!20424)) (DelimiterValue!7531 (value!114515 List!20424)) (DedentValue!3765 (value!114516 List!20424)) (NewLineValue!3765 (value!114517 List!20424)) (IntegerValue!11295 (value!114518 (_ BitVec 32)) (text!26802 List!20424)) (IntegerValue!11296 (value!114519 Int) (text!26803 List!20424)) (Times!3765) (Or!3765) (Equal!3765) (Minus!3765) (Broken!18829 (value!114520 List!20424)) (And!3765) (Div!3765) (LessEqual!3765) (Mod!3765) (Concat!8755) (Not!3765) (Plus!3765) (SpaceValue!3765 (value!114521 List!20424)) (IntegerValue!11297 (value!114522 Int) (text!26804 List!20424)) (StringLiteralValue!11296 (text!26805 List!20424)) (FloatLiteralValue!7531 (text!26806 List!20424)) (BytesLiteralValue!3765 (value!114523 List!20424)) (CommentValue!7531 (value!114524 List!20424)) (StringLiteralValue!11297 (value!114525 List!20424)) (ErrorTokenValue!3765 (msg!3826 List!20424)) )
))
(declare-fun inv!21 (TokenValue!3765) Bool)

(declare-fun efficientList!213 (BalanceConc!13420) List!20424)

(assert (=> start!183998 (not (inv!21 (IdentifierValue!7530 (efficientList!213 v!4991))))))

(declare-fun e!1179343 () Bool)

(declare-fun inv!26681 (BalanceConc!13420) Bool)

(assert (=> start!183998 (and (inv!26681 v!4991) e!1179343)))

(declare-fun b!1845390 () Bool)

(declare-fun tp!521792 () Bool)

(declare-fun inv!26682 (Conc!6749) Bool)

(assert (=> b!1845390 (= e!1179343 (and (inv!26682 (c!301290 v!4991)) tp!521792))))

(assert (= start!183998 b!1845390))

(declare-fun m!2273819 () Bool)

(assert (=> start!183998 m!2273819))

(declare-fun m!2273821 () Bool)

(assert (=> start!183998 m!2273821))

(declare-fun m!2273823 () Bool)

(assert (=> start!183998 m!2273823))

(declare-fun m!2273825 () Bool)

(assert (=> b!1845390 m!2273825))

(check-sat (not start!183998) (not b!1845390))
(check-sat)
(get-model)

(declare-fun b!1845410 () Bool)

(declare-fun e!1179357 () Bool)

(declare-fun e!1179356 () Bool)

(assert (=> b!1845410 (= e!1179357 e!1179356)))

(declare-fun c!301298 () Bool)

(get-info :version)

(assert (=> b!1845410 (= c!301298 ((_ is IntegerValue!11296) (IdentifierValue!7530 (efficientList!213 v!4991))))))

(declare-fun b!1845411 () Bool)

(declare-fun res!828768 () Bool)

(declare-fun e!1179358 () Bool)

(assert (=> b!1845411 (=> res!828768 e!1179358)))

(assert (=> b!1845411 (= res!828768 (not ((_ is IntegerValue!11297) (IdentifierValue!7530 (efficientList!213 v!4991)))))))

(assert (=> b!1845411 (= e!1179356 e!1179358)))

(declare-fun b!1845412 () Bool)

(declare-fun inv!17 (TokenValue!3765) Bool)

(assert (=> b!1845412 (= e!1179356 (inv!17 (IdentifierValue!7530 (efficientList!213 v!4991))))))

(declare-fun d!564863 () Bool)

(declare-fun c!301299 () Bool)

(assert (=> d!564863 (= c!301299 ((_ is IntegerValue!11295) (IdentifierValue!7530 (efficientList!213 v!4991))))))

(assert (=> d!564863 (= (inv!21 (IdentifierValue!7530 (efficientList!213 v!4991))) e!1179357)))

(declare-fun b!1845413 () Bool)

(declare-fun inv!15 (TokenValue!3765) Bool)

(assert (=> b!1845413 (= e!1179358 (inv!15 (IdentifierValue!7530 (efficientList!213 v!4991))))))

(declare-fun b!1845414 () Bool)

(declare-fun inv!16 (TokenValue!3765) Bool)

(assert (=> b!1845414 (= e!1179357 (inv!16 (IdentifierValue!7530 (efficientList!213 v!4991))))))

(assert (= (and d!564863 c!301299) b!1845414))

(assert (= (and d!564863 (not c!301299)) b!1845410))

(assert (= (and b!1845410 c!301298) b!1845412))

(assert (= (and b!1845410 (not c!301298)) b!1845411))

(assert (= (and b!1845411 (not res!828768)) b!1845413))

(declare-fun m!2273831 () Bool)

(assert (=> b!1845412 m!2273831))

(declare-fun m!2273833 () Bool)

(assert (=> b!1845413 m!2273833))

(declare-fun m!2273835 () Bool)

(assert (=> b!1845414 m!2273835))

(assert (=> start!183998 d!564863))

(declare-fun d!564867 () Bool)

(declare-fun lt!714753 () List!20424)

(declare-fun list!8285 (BalanceConc!13420) List!20424)

(assert (=> d!564867 (= lt!714753 (list!8285 v!4991))))

(declare-fun efficientList!214 (Conc!6749 List!20424) List!20424)

(declare-fun efficientList$default$2!71 (Conc!6749) List!20424)

(assert (=> d!564867 (= lt!714753 (efficientList!214 (c!301290 v!4991) (efficientList$default$2!71 (c!301290 v!4991))))))

(assert (=> d!564867 (= (efficientList!213 v!4991) lt!714753)))

(declare-fun bs!409245 () Bool)

(assert (= bs!409245 d!564867))

(declare-fun m!2273843 () Bool)

(assert (=> bs!409245 m!2273843))

(declare-fun m!2273845 () Bool)

(assert (=> bs!409245 m!2273845))

(assert (=> bs!409245 m!2273845))

(declare-fun m!2273847 () Bool)

(assert (=> bs!409245 m!2273847))

(assert (=> start!183998 d!564867))

(declare-fun d!564871 () Bool)

(declare-fun isBalanced!2104 (Conc!6749) Bool)

(assert (=> d!564871 (= (inv!26681 v!4991) (isBalanced!2104 (c!301290 v!4991)))))

(declare-fun bs!409246 () Bool)

(assert (= bs!409246 d!564871))

(declare-fun m!2273849 () Bool)

(assert (=> bs!409246 m!2273849))

(assert (=> start!183998 d!564871))

(declare-fun d!564873 () Bool)

(declare-fun c!301308 () Bool)

(assert (=> d!564873 (= c!301308 ((_ is Node!6749) (c!301290 v!4991)))))

(declare-fun e!1179376 () Bool)

(assert (=> d!564873 (= (inv!26682 (c!301290 v!4991)) e!1179376)))

(declare-fun b!1845442 () Bool)

(declare-fun inv!26685 (Conc!6749) Bool)

(assert (=> b!1845442 (= e!1179376 (inv!26685 (c!301290 v!4991)))))

(declare-fun b!1845443 () Bool)

(declare-fun e!1179377 () Bool)

(assert (=> b!1845443 (= e!1179376 e!1179377)))

(declare-fun res!828774 () Bool)

(assert (=> b!1845443 (= res!828774 (not ((_ is Leaf!9854) (c!301290 v!4991))))))

(assert (=> b!1845443 (=> res!828774 e!1179377)))

(declare-fun b!1845444 () Bool)

(declare-fun inv!26686 (Conc!6749) Bool)

(assert (=> b!1845444 (= e!1179377 (inv!26686 (c!301290 v!4991)))))

(assert (= (and d!564873 c!301308) b!1845442))

(assert (= (and d!564873 (not c!301308)) b!1845443))

(assert (= (and b!1845443 (not res!828774)) b!1845444))

(declare-fun m!2273859 () Bool)

(assert (=> b!1845442 m!2273859))

(declare-fun m!2273861 () Bool)

(assert (=> b!1845444 m!2273861))

(assert (=> b!1845390 d!564873))

(declare-fun b!1845453 () Bool)

(declare-fun e!1179384 () Bool)

(declare-fun tp!521803 () Bool)

(declare-fun tp!521804 () Bool)

(assert (=> b!1845453 (= e!1179384 (and (inv!26682 (left!16307 (c!301290 v!4991))) tp!521803 (inv!26682 (right!16637 (c!301290 v!4991))) tp!521804))))

(declare-fun b!1845454 () Bool)

(declare-fun inv!26687 (IArray!13503) Bool)

(assert (=> b!1845454 (= e!1179384 (inv!26687 (xs!9625 (c!301290 v!4991))))))

(assert (=> b!1845390 (= tp!521792 (and (inv!26682 (c!301290 v!4991)) e!1179384))))

(assert (= (and b!1845390 ((_ is Node!6749) (c!301290 v!4991))) b!1845453))

(assert (= (and b!1845390 ((_ is Leaf!9854) (c!301290 v!4991))) b!1845454))

(declare-fun m!2273869 () Bool)

(assert (=> b!1845453 m!2273869))

(declare-fun m!2273871 () Bool)

(assert (=> b!1845453 m!2273871))

(declare-fun m!2273873 () Bool)

(assert (=> b!1845454 m!2273873))

(assert (=> b!1845390 m!2273825))

(check-sat (not d!564867) (not b!1845412) (not b!1845453) (not b!1845444) (not b!1845414) (not b!1845442) (not b!1845413) (not b!1845454) (not b!1845390) (not d!564871))
(check-sat)
