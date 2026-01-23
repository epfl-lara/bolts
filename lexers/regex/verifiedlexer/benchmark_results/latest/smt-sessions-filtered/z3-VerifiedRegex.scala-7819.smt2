; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!410768 () Bool)

(assert start!410768)

(declare-datatypes ((List!47471 0))(
  ( (Nil!47347) (Cons!47347 (h!52767 (_ BitVec 16)) (t!354026 List!47471)) )
))
(declare-datatypes ((IArray!28663 0))(
  ( (IArray!28664 (innerList!14389 List!47471)) )
))
(declare-datatypes ((Conc!14329 0))(
  ( (Node!14329 (left!35276 Conc!14329) (right!35606 Conc!14329) (csize!28888 Int) (cheight!14540 Int)) (Leaf!22149 (xs!17635 IArray!28663) (csize!28889 Int)) (Empty!14329) )
))
(declare-datatypes ((BalanceConc!28168 0))(
  ( (BalanceConc!28169 (c!728356 Conc!14329)) )
))
(declare-fun v!4029 () BalanceConc!28168)

(declare-datatypes ((TokenValue!8302 0))(
  ( (FloatLiteralValue!16604 (text!58559 List!47471)) (TokenValueExt!8301 (__x!28748 Int)) (Broken!41510 (value!250479 List!47471)) (Object!8425) (End!8302) (Def!8302) (Underscore!8302) (Match!8302) (Else!8302) (Error!8302) (Case!8302) (If!8302) (Extends!8302) (Abstract!8302) (Class!8302) (Val!8302) (DelimiterValue!16604 (del!8362 List!47471)) (KeywordValue!8308 (value!250480 List!47471)) (CommentValue!16604 (value!250481 List!47471)) (WhitespaceValue!16604 (value!250482 List!47471)) (IndentationValue!8302 (value!250483 List!47471)) (String!55381) (Int32!8302) (Broken!41511 (value!250484 List!47471)) (Boolean!8303) (Unit!66302) (OperatorValue!8305 (op!8362 List!47471)) (IdentifierValue!16604 (value!250485 List!47471)) (IdentifierValue!16605 (value!250486 List!47471)) (WhitespaceValue!16605 (value!250487 List!47471)) (True!16604) (False!16604) (Broken!41512 (value!250488 List!47471)) (Broken!41513 (value!250489 List!47471)) (True!16605) (RightBrace!8302) (RightBracket!8302) (Colon!8302) (Null!8302) (Comma!8302) (LeftBracket!8302) (False!16605) (LeftBrace!8302) (ImaginaryLiteralValue!8302 (text!58560 List!47471)) (StringLiteralValue!24906 (value!250490 List!47471)) (EOFValue!8302 (value!250491 List!47471)) (IdentValue!8302 (value!250492 List!47471)) (DelimiterValue!16605 (value!250493 List!47471)) (DedentValue!8302 (value!250494 List!47471)) (NewLineValue!8302 (value!250495 List!47471)) (IntegerValue!24906 (value!250496 (_ BitVec 32)) (text!58561 List!47471)) (IntegerValue!24907 (value!250497 Int) (text!58562 List!47471)) (Times!8302) (Or!8302) (Equal!8302) (Minus!8302) (Broken!41514 (value!250498 List!47471)) (And!8302) (Div!8302) (LessEqual!8302) (Mod!8302) (Concat!21200) (Not!8302) (Plus!8302) (SpaceValue!8302 (value!250499 List!47471)) (IntegerValue!24908 (value!250500 Int) (text!58563 List!47471)) (StringLiteralValue!24907 (text!58564 List!47471)) (FloatLiteralValue!16605 (text!58565 List!47471)) (BytesLiteralValue!8302 (value!250501 List!47471)) (CommentValue!16605 (value!250502 List!47471)) (StringLiteralValue!24908 (value!250503 List!47471)) (ErrorTokenValue!8302 (msg!8363 List!47471)) )
))
(declare-fun inv!21 (TokenValue!8302) Bool)

(declare-fun efficientList!592 (BalanceConc!28168) List!47471)

(assert (=> start!410768 (not (inv!21 (CommentValue!16604 (efficientList!592 v!4029))))))

(declare-fun e!2655253 () Bool)

(declare-fun inv!62662 (BalanceConc!28168) Bool)

(assert (=> start!410768 (and (inv!62662 v!4029) e!2655253)))

(declare-fun b!4276765 () Bool)

(declare-fun tp!1308684 () Bool)

(declare-fun inv!62663 (Conc!14329) Bool)

(assert (=> b!4276765 (= e!2655253 (and (inv!62663 (c!728356 v!4029)) tp!1308684))))

(assert (= start!410768 b!4276765))

(declare-fun m!4872713 () Bool)

(assert (=> start!410768 m!4872713))

(declare-fun m!4872715 () Bool)

(assert (=> start!410768 m!4872715))

(declare-fun m!4872717 () Bool)

(assert (=> start!410768 m!4872717))

(declare-fun m!4872719 () Bool)

(assert (=> b!4276765 m!4872719))

(check-sat (not b!4276765) (not start!410768))
(check-sat)
(get-model)

(declare-fun d!1262558 () Bool)

(declare-fun c!728366 () Bool)

(get-info :version)

(assert (=> d!1262558 (= c!728366 ((_ is Node!14329) (c!728356 v!4029)))))

(declare-fun e!2655270 () Bool)

(assert (=> d!1262558 (= (inv!62663 (c!728356 v!4029)) e!2655270)))

(declare-fun b!4276791 () Bool)

(declare-fun inv!62666 (Conc!14329) Bool)

(assert (=> b!4276791 (= e!2655270 (inv!62666 (c!728356 v!4029)))))

(declare-fun b!4276792 () Bool)

(declare-fun e!2655271 () Bool)

(assert (=> b!4276792 (= e!2655270 e!2655271)))

(declare-fun res!1756125 () Bool)

(assert (=> b!4276792 (= res!1756125 (not ((_ is Leaf!22149) (c!728356 v!4029))))))

(assert (=> b!4276792 (=> res!1756125 e!2655271)))

(declare-fun b!4276793 () Bool)

(declare-fun inv!62667 (Conc!14329) Bool)

(assert (=> b!4276793 (= e!2655271 (inv!62667 (c!728356 v!4029)))))

(assert (= (and d!1262558 c!728366) b!4276791))

(assert (= (and d!1262558 (not c!728366)) b!4276792))

(assert (= (and b!4276792 (not res!1756125)) b!4276793))

(declare-fun m!4872725 () Bool)

(assert (=> b!4276791 m!4872725))

(declare-fun m!4872727 () Bool)

(assert (=> b!4276793 m!4872727))

(assert (=> b!4276765 d!1262558))

(declare-fun b!4276809 () Bool)

(declare-fun e!2655281 () Bool)

(declare-fun inv!16 (TokenValue!8302) Bool)

(assert (=> b!4276809 (= e!2655281 (inv!16 (CommentValue!16604 (efficientList!592 v!4029))))))

(declare-fun b!4276811 () Bool)

(declare-fun res!1756129 () Bool)

(declare-fun e!2655282 () Bool)

(assert (=> b!4276811 (=> res!1756129 e!2655282)))

(assert (=> b!4276811 (= res!1756129 (not ((_ is IntegerValue!24908) (CommentValue!16604 (efficientList!592 v!4029)))))))

(declare-fun e!2655283 () Bool)

(assert (=> b!4276811 (= e!2655283 e!2655282)))

(declare-fun b!4276812 () Bool)

(assert (=> b!4276812 (= e!2655281 e!2655283)))

(declare-fun c!728374 () Bool)

(assert (=> b!4276812 (= c!728374 ((_ is IntegerValue!24907) (CommentValue!16604 (efficientList!592 v!4029))))))

(declare-fun b!4276813 () Bool)

(declare-fun inv!15 (TokenValue!8302) Bool)

(assert (=> b!4276813 (= e!2655282 (inv!15 (CommentValue!16604 (efficientList!592 v!4029))))))

(declare-fun d!1262562 () Bool)

(declare-fun c!728373 () Bool)

(assert (=> d!1262562 (= c!728373 ((_ is IntegerValue!24906) (CommentValue!16604 (efficientList!592 v!4029))))))

(assert (=> d!1262562 (= (inv!21 (CommentValue!16604 (efficientList!592 v!4029))) e!2655281)))

(declare-fun b!4276810 () Bool)

(declare-fun inv!17 (TokenValue!8302) Bool)

(assert (=> b!4276810 (= e!2655283 (inv!17 (CommentValue!16604 (efficientList!592 v!4029))))))

(assert (= (and d!1262562 c!728373) b!4276809))

(assert (= (and d!1262562 (not c!728373)) b!4276812))

(assert (= (and b!4276812 c!728374) b!4276810))

(assert (= (and b!4276812 (not c!728374)) b!4276811))

(assert (= (and b!4276811 (not res!1756129)) b!4276813))

(declare-fun m!4872735 () Bool)

(assert (=> b!4276809 m!4872735))

(declare-fun m!4872737 () Bool)

(assert (=> b!4276813 m!4872737))

(declare-fun m!4872739 () Bool)

(assert (=> b!4276810 m!4872739))

(assert (=> start!410768 d!1262562))

(declare-fun d!1262566 () Bool)

(declare-fun lt!1513918 () List!47471)

(declare-fun list!17256 (BalanceConc!28168) List!47471)

(assert (=> d!1262566 (= lt!1513918 (list!17256 v!4029))))

(declare-fun efficientList!594 (Conc!14329 List!47471) List!47471)

(declare-fun efficientList$default$2!206 (Conc!14329) List!47471)

(assert (=> d!1262566 (= lt!1513918 (efficientList!594 (c!728356 v!4029) (efficientList$default$2!206 (c!728356 v!4029))))))

(assert (=> d!1262566 (= (efficientList!592 v!4029) lt!1513918)))

(declare-fun bs!602561 () Bool)

(assert (= bs!602561 d!1262566))

(declare-fun m!4872749 () Bool)

(assert (=> bs!602561 m!4872749))

(declare-fun m!4872751 () Bool)

(assert (=> bs!602561 m!4872751))

(assert (=> bs!602561 m!4872751))

(declare-fun m!4872753 () Bool)

(assert (=> bs!602561 m!4872753))

(assert (=> start!410768 d!1262566))

(declare-fun d!1262570 () Bool)

(declare-fun isBalanced!3870 (Conc!14329) Bool)

(assert (=> d!1262570 (= (inv!62662 v!4029) (isBalanced!3870 (c!728356 v!4029)))))

(declare-fun bs!602562 () Bool)

(assert (= bs!602562 d!1262570))

(declare-fun m!4872761 () Bool)

(assert (=> bs!602562 m!4872761))

(assert (=> start!410768 d!1262570))

(declare-fun e!2655294 () Bool)

(declare-fun tp!1308696 () Bool)

(declare-fun b!4276828 () Bool)

(declare-fun tp!1308695 () Bool)

(assert (=> b!4276828 (= e!2655294 (and (inv!62663 (left!35276 (c!728356 v!4029))) tp!1308695 (inv!62663 (right!35606 (c!728356 v!4029))) tp!1308696))))

(declare-fun b!4276829 () Bool)

(declare-fun inv!62669 (IArray!28663) Bool)

(assert (=> b!4276829 (= e!2655294 (inv!62669 (xs!17635 (c!728356 v!4029))))))

(assert (=> b!4276765 (= tp!1308684 (and (inv!62663 (c!728356 v!4029)) e!2655294))))

(assert (= (and b!4276765 ((_ is Node!14329) (c!728356 v!4029))) b!4276828))

(assert (= (and b!4276765 ((_ is Leaf!22149) (c!728356 v!4029))) b!4276829))

(declare-fun m!4872763 () Bool)

(assert (=> b!4276828 m!4872763))

(declare-fun m!4872765 () Bool)

(assert (=> b!4276828 m!4872765))

(declare-fun m!4872767 () Bool)

(assert (=> b!4276829 m!4872767))

(assert (=> b!4276765 m!4872719))

(check-sat (not b!4276828) (not d!1262566) (not b!4276810) (not b!4276809) (not b!4276813) (not b!4276829) (not b!4276793) (not d!1262570) (not b!4276791) (not b!4276765))
(check-sat)
