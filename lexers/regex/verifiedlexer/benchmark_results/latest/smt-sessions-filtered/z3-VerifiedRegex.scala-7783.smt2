; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!408954 () Bool)

(assert start!408954)

(declare-fun res!1753382 () Bool)

(declare-fun e!2649484 () Bool)

(assert (=> start!408954 (=> (not res!1753382) (not e!2649484))))

(declare-datatypes ((List!47399 0))(
  ( (Nil!47275) (Cons!47275 (h!52695 (_ BitVec 16)) (t!353521 List!47399)) )
))
(declare-fun lt!1512013 () List!47399)

(declare-fun lt!1512012 () List!47399)

(assert (=> start!408954 (= res!1753382 (and (not (= lt!1512013 lt!1512012)) (not (= lt!1512013 (Cons!47275 #x002D Nil!47275))) (not (= lt!1512013 (Cons!47275 #x002A Nil!47275))) (not (= lt!1512013 (Cons!47275 #x002F Nil!47275))) (not (= lt!1512013 (Cons!47275 #x0025 Nil!47275))) (not (= lt!1512013 (Cons!47275 #x0021 Nil!47275)))))))

(assert (=> start!408954 (= lt!1512012 (Cons!47275 #x002B Nil!47275))))

(declare-datatypes ((IArray!28519 0))(
  ( (IArray!28520 (innerList!14317 List!47399)) )
))
(declare-datatypes ((Conc!14257 0))(
  ( (Node!14257 (left!35060 Conc!14257) (right!35390 Conc!14257) (csize!28744 Int) (cheight!14468 Int)) (Leaf!22041 (xs!17563 IArray!28519) (csize!28745 Int)) (Empty!14257) )
))
(declare-datatypes ((BalanceConc!28024 0))(
  ( (BalanceConc!28025 (c!725553 Conc!14257)) )
))
(declare-fun v!3942 () BalanceConc!28024)

(declare-fun efficientList!433 (BalanceConc!28024) List!47399)

(assert (=> start!408954 (= lt!1512013 (efficientList!433 v!3942))))

(assert (=> start!408954 e!2649484))

(declare-fun e!2649482 () Bool)

(declare-fun inv!62229 (BalanceConc!28024) Bool)

(assert (=> start!408954 (and (inv!62229 v!3942) e!2649482)))

(declare-fun b!4267257 () Bool)

(declare-fun e!2649483 () Bool)

(assert (=> b!4267257 (= e!2649484 e!2649483)))

(declare-fun res!1753381 () Bool)

(assert (=> b!4267257 (=> (not res!1753381) (not e!2649483))))

(declare-fun lt!1512011 () List!47399)

(assert (=> b!4267257 (= res!1753381 (and (not (= lt!1512013 lt!1512011)) (not (= lt!1512013 (Cons!47275 #x003C lt!1512011))) (not (= lt!1512013 (Cons!47275 #x0026 (Cons!47275 #x0026 Nil!47275)))) (not (= lt!1512013 (Cons!47275 #x007C (Cons!47275 #x007C Nil!47275)))) (not (= lt!1512013 (Cons!47275 #x002B lt!1512012)))))))

(assert (=> b!4267257 (= lt!1512011 (Cons!47275 #x003D Nil!47275))))

(declare-fun b!4267258 () Bool)

(declare-datatypes ((TokenValue!8230 0))(
  ( (FloatLiteralValue!16460 (text!58055 List!47399)) (TokenValueExt!8229 (__x!28676 Int)) (Broken!41150 (value!248571 List!47399)) (Object!8353) (End!8230) (Def!8230) (Underscore!8230) (Match!8230) (Else!8230) (Error!8230) (Case!8230) (If!8230) (Extends!8230) (Abstract!8230) (Class!8230) (Val!8230) (DelimiterValue!16460 (del!8290 List!47399)) (KeywordValue!8236 (value!248572 List!47399)) (CommentValue!16460 (value!248573 List!47399)) (WhitespaceValue!16460 (value!248574 List!47399)) (IndentationValue!8230 (value!248575 List!47399)) (String!55165) (Int32!8230) (Broken!41151 (value!248576 List!47399)) (Boolean!8231) (Unit!66164) (OperatorValue!8233 (op!8290 List!47399)) (IdentifierValue!16460 (value!248577 List!47399)) (IdentifierValue!16461 (value!248578 List!47399)) (WhitespaceValue!16461 (value!248579 List!47399)) (True!16460) (False!16460) (Broken!41152 (value!248580 List!47399)) (Broken!41153 (value!248581 List!47399)) (True!16461) (RightBrace!8230) (RightBracket!8230) (Colon!8230) (Null!8230) (Comma!8230) (LeftBracket!8230) (False!16461) (LeftBrace!8230) (ImaginaryLiteralValue!8230 (text!58056 List!47399)) (StringLiteralValue!24690 (value!248582 List!47399)) (EOFValue!8230 (value!248583 List!47399)) (IdentValue!8230 (value!248584 List!47399)) (DelimiterValue!16461 (value!248585 List!47399)) (DedentValue!8230 (value!248586 List!47399)) (NewLineValue!8230 (value!248587 List!47399)) (IntegerValue!24690 (value!248588 (_ BitVec 32)) (text!58057 List!47399)) (IntegerValue!24691 (value!248589 Int) (text!58058 List!47399)) (Times!8230) (Or!8230) (Equal!8230) (Minus!8230) (Broken!41154 (value!248590 List!47399)) (And!8230) (Div!8230) (LessEqual!8230) (Mod!8230) (Concat!21128) (Not!8230) (Plus!8230) (SpaceValue!8230 (value!248591 List!47399)) (IntegerValue!24692 (value!248592 Int) (text!58059 List!47399)) (StringLiteralValue!24691 (text!58060 List!47399)) (FloatLiteralValue!16461 (text!58061 List!47399)) (BytesLiteralValue!8230 (value!248593 List!47399)) (CommentValue!16461 (value!248594 List!47399)) (StringLiteralValue!24692 (value!248595 List!47399)) (ErrorTokenValue!8230 (msg!8291 List!47399)) )
))
(declare-fun inv!21 (TokenValue!8230) Bool)

(assert (=> b!4267258 (= e!2649483 (not (inv!21 (Broken!41154 lt!1512013))))))

(declare-fun b!4267259 () Bool)

(declare-fun tp!1307594 () Bool)

(declare-fun inv!62230 (Conc!14257) Bool)

(assert (=> b!4267259 (= e!2649482 (and (inv!62230 (c!725553 v!3942)) tp!1307594))))

(assert (= (and start!408954 res!1753382) b!4267257))

(assert (= (and b!4267257 res!1753381) b!4267258))

(assert (= start!408954 b!4267259))

(declare-fun m!4859093 () Bool)

(assert (=> start!408954 m!4859093))

(declare-fun m!4859095 () Bool)

(assert (=> start!408954 m!4859095))

(declare-fun m!4859097 () Bool)

(assert (=> b!4267258 m!4859097))

(declare-fun m!4859099 () Bool)

(assert (=> b!4267259 m!4859099))

(check-sat (not b!4267259) (not b!4267258) (not start!408954))
(check-sat)
(get-model)

(declare-fun d!1257920 () Bool)

(declare-fun c!725556 () Bool)

(get-info :version)

(assert (=> d!1257920 (= c!725556 ((_ is Node!14257) (c!725553 v!3942)))))

(declare-fun e!2649489 () Bool)

(assert (=> d!1257920 (= (inv!62230 (c!725553 v!3942)) e!2649489)))

(declare-fun b!4267266 () Bool)

(declare-fun inv!62231 (Conc!14257) Bool)

(assert (=> b!4267266 (= e!2649489 (inv!62231 (c!725553 v!3942)))))

(declare-fun b!4267267 () Bool)

(declare-fun e!2649490 () Bool)

(assert (=> b!4267267 (= e!2649489 e!2649490)))

(declare-fun res!1753385 () Bool)

(assert (=> b!4267267 (= res!1753385 (not ((_ is Leaf!22041) (c!725553 v!3942))))))

(assert (=> b!4267267 (=> res!1753385 e!2649490)))

(declare-fun b!4267268 () Bool)

(declare-fun inv!62232 (Conc!14257) Bool)

(assert (=> b!4267268 (= e!2649490 (inv!62232 (c!725553 v!3942)))))

(assert (= (and d!1257920 c!725556) b!4267266))

(assert (= (and d!1257920 (not c!725556)) b!4267267))

(assert (= (and b!4267267 (not res!1753385)) b!4267268))

(declare-fun m!4859101 () Bool)

(assert (=> b!4267266 m!4859101))

(declare-fun m!4859103 () Bool)

(assert (=> b!4267268 m!4859103))

(assert (=> b!4267259 d!1257920))

(declare-fun b!4267279 () Bool)

(declare-fun e!2649499 () Bool)

(declare-fun inv!17 (TokenValue!8230) Bool)

(assert (=> b!4267279 (= e!2649499 (inv!17 (Broken!41154 lt!1512013)))))

(declare-fun b!4267280 () Bool)

(declare-fun e!2649497 () Bool)

(declare-fun inv!15 (TokenValue!8230) Bool)

(assert (=> b!4267280 (= e!2649497 (inv!15 (Broken!41154 lt!1512013)))))

(declare-fun b!4267281 () Bool)

(declare-fun e!2649498 () Bool)

(assert (=> b!4267281 (= e!2649498 e!2649499)))

(declare-fun c!725561 () Bool)

(assert (=> b!4267281 (= c!725561 ((_ is IntegerValue!24691) (Broken!41154 lt!1512013)))))

(declare-fun d!1257922 () Bool)

(declare-fun c!725562 () Bool)

(assert (=> d!1257922 (= c!725562 ((_ is IntegerValue!24690) (Broken!41154 lt!1512013)))))

(assert (=> d!1257922 (= (inv!21 (Broken!41154 lt!1512013)) e!2649498)))

(declare-fun b!4267282 () Bool)

(declare-fun res!1753388 () Bool)

(assert (=> b!4267282 (=> res!1753388 e!2649497)))

(assert (=> b!4267282 (= res!1753388 (not ((_ is IntegerValue!24692) (Broken!41154 lt!1512013))))))

(assert (=> b!4267282 (= e!2649499 e!2649497)))

(declare-fun b!4267283 () Bool)

(declare-fun inv!16 (TokenValue!8230) Bool)

(assert (=> b!4267283 (= e!2649498 (inv!16 (Broken!41154 lt!1512013)))))

(assert (= (and d!1257922 c!725562) b!4267283))

(assert (= (and d!1257922 (not c!725562)) b!4267281))

(assert (= (and b!4267281 c!725561) b!4267279))

(assert (= (and b!4267281 (not c!725561)) b!4267282))

(assert (= (and b!4267282 (not res!1753388)) b!4267280))

(declare-fun m!4859105 () Bool)

(assert (=> b!4267279 m!4859105))

(declare-fun m!4859107 () Bool)

(assert (=> b!4267280 m!4859107))

(declare-fun m!4859109 () Bool)

(assert (=> b!4267283 m!4859109))

(assert (=> b!4267258 d!1257922))

(declare-fun d!1257924 () Bool)

(declare-fun lt!1512016 () List!47399)

(declare-fun list!17090 (BalanceConc!28024) List!47399)

(assert (=> d!1257924 (= lt!1512016 (list!17090 v!3942))))

(declare-fun efficientList!434 (Conc!14257 List!47399) List!47399)

(declare-fun efficientList$default$2!150 (Conc!14257) List!47399)

(assert (=> d!1257924 (= lt!1512016 (efficientList!434 (c!725553 v!3942) (efficientList$default$2!150 (c!725553 v!3942))))))

(assert (=> d!1257924 (= (efficientList!433 v!3942) lt!1512016)))

(declare-fun bs!599618 () Bool)

(assert (= bs!599618 d!1257924))

(declare-fun m!4859111 () Bool)

(assert (=> bs!599618 m!4859111))

(declare-fun m!4859113 () Bool)

(assert (=> bs!599618 m!4859113))

(assert (=> bs!599618 m!4859113))

(declare-fun m!4859115 () Bool)

(assert (=> bs!599618 m!4859115))

(assert (=> start!408954 d!1257924))

(declare-fun d!1257928 () Bool)

(declare-fun isBalanced!3814 (Conc!14257) Bool)

(assert (=> d!1257928 (= (inv!62229 v!3942) (isBalanced!3814 (c!725553 v!3942)))))

(declare-fun bs!599619 () Bool)

(assert (= bs!599619 d!1257928))

(declare-fun m!4859117 () Bool)

(assert (=> bs!599619 m!4859117))

(assert (=> start!408954 d!1257928))

(declare-fun tp!1307600 () Bool)

(declare-fun e!2649504 () Bool)

(declare-fun tp!1307599 () Bool)

(declare-fun b!4267290 () Bool)

(assert (=> b!4267290 (= e!2649504 (and (inv!62230 (left!35060 (c!725553 v!3942))) tp!1307599 (inv!62230 (right!35390 (c!725553 v!3942))) tp!1307600))))

(declare-fun b!4267291 () Bool)

(declare-fun inv!62233 (IArray!28519) Bool)

(assert (=> b!4267291 (= e!2649504 (inv!62233 (xs!17563 (c!725553 v!3942))))))

(assert (=> b!4267259 (= tp!1307594 (and (inv!62230 (c!725553 v!3942)) e!2649504))))

(assert (= (and b!4267259 ((_ is Node!14257) (c!725553 v!3942))) b!4267290))

(assert (= (and b!4267259 ((_ is Leaf!22041) (c!725553 v!3942))) b!4267291))

(declare-fun m!4859119 () Bool)

(assert (=> b!4267290 m!4859119))

(declare-fun m!4859121 () Bool)

(assert (=> b!4267290 m!4859121))

(declare-fun m!4859123 () Bool)

(assert (=> b!4267291 m!4859123))

(assert (=> b!4267259 m!4859099))

(check-sat (not b!4267290) (not b!4267280) (not d!1257924) (not b!4267283) (not b!4267268) (not d!1257928) (not b!4267259) (not b!4267291) (not b!4267279) (not b!4267266))
(check-sat)
