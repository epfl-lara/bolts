; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!409364 () Bool)

(assert start!409364)

(declare-datatypes ((List!47415 0))(
  ( (Nil!47291) (Cons!47291 (h!52711 (_ BitVec 16)) (t!353632 List!47415)) )
))
(declare-datatypes ((IArray!28551 0))(
  ( (IArray!28552 (innerList!14333 List!47415)) )
))
(declare-datatypes ((Conc!14273 0))(
  ( (Node!14273 (left!35108 Conc!14273) (right!35438 Conc!14273) (csize!28776 Int) (cheight!14484 Int)) (Leaf!22065 (xs!17579 IArray!28551) (csize!28777 Int)) (Empty!14273) )
))
(declare-datatypes ((BalanceConc!28056 0))(
  ( (BalanceConc!28057 (c!726246 Conc!14273)) )
))
(declare-fun v!3866 () BalanceConc!28056)

(declare-datatypes ((TokenValue!8246 0))(
  ( (FloatLiteralValue!16492 (text!58167 List!47415)) (TokenValueExt!8245 (__x!28692 Int)) (Broken!41230 (value!248995 List!47415)) (Object!8369) (End!8246) (Def!8246) (Underscore!8246) (Match!8246) (Else!8246) (Error!8246) (Case!8246) (If!8246) (Extends!8246) (Abstract!8246) (Class!8246) (Val!8246) (DelimiterValue!16492 (del!8306 List!47415)) (KeywordValue!8252 (value!248996 List!47415)) (CommentValue!16492 (value!248997 List!47415)) (WhitespaceValue!16492 (value!248998 List!47415)) (IndentationValue!8246 (value!248999 List!47415)) (String!55213) (Int32!8246) (Broken!41231 (value!249000 List!47415)) (Boolean!8247) (Unit!66196) (OperatorValue!8249 (op!8306 List!47415)) (IdentifierValue!16492 (value!249001 List!47415)) (IdentifierValue!16493 (value!249002 List!47415)) (WhitespaceValue!16493 (value!249003 List!47415)) (True!16492) (False!16492) (Broken!41232 (value!249004 List!47415)) (Broken!41233 (value!249005 List!47415)) (True!16493) (RightBrace!8246) (RightBracket!8246) (Colon!8246) (Null!8246) (Comma!8246) (LeftBracket!8246) (False!16493) (LeftBrace!8246) (ImaginaryLiteralValue!8246 (text!58168 List!47415)) (StringLiteralValue!24738 (value!249006 List!47415)) (EOFValue!8246 (value!249007 List!47415)) (IdentValue!8246 (value!249008 List!47415)) (DelimiterValue!16493 (value!249009 List!47415)) (DedentValue!8246 (value!249010 List!47415)) (NewLineValue!8246 (value!249011 List!47415)) (IntegerValue!24738 (value!249012 (_ BitVec 32)) (text!58169 List!47415)) (IntegerValue!24739 (value!249013 Int) (text!58170 List!47415)) (Times!8246) (Or!8246) (Equal!8246) (Minus!8246) (Broken!41234 (value!249014 List!47415)) (And!8246) (Div!8246) (LessEqual!8246) (Mod!8246) (Concat!21144) (Not!8246) (Plus!8246) (SpaceValue!8246 (value!249015 List!47415)) (IntegerValue!24740 (value!249016 Int) (text!58171 List!47415)) (StringLiteralValue!24739 (text!58172 List!47415)) (FloatLiteralValue!16493 (text!58173 List!47415)) (BytesLiteralValue!8246 (value!249017 List!47415)) (CommentValue!16493 (value!249018 List!47415)) (StringLiteralValue!24740 (value!249019 List!47415)) (ErrorTokenValue!8246 (msg!8307 List!47415)) )
))
(declare-fun inv!21 (TokenValue!8246) Bool)

(declare-fun efficientList!468 (BalanceConc!28056) List!47415)

(assert (=> start!409364 (not (inv!21 (IdentifierValue!16493 (efficientList!468 v!3866))))))

(declare-fun e!2650864 () Bool)

(declare-fun inv!62325 (BalanceConc!28056) Bool)

(assert (=> start!409364 (and (inv!62325 v!3866) e!2650864)))

(declare-fun b!4269562 () Bool)

(declare-fun tp!1307842 () Bool)

(declare-fun inv!62326 (Conc!14273) Bool)

(assert (=> b!4269562 (= e!2650864 (and (inv!62326 (c!726246 v!3866)) tp!1307842))))

(assert (= start!409364 b!4269562))

(declare-fun m!4862461 () Bool)

(assert (=> start!409364 m!4862461))

(declare-fun m!4862463 () Bool)

(assert (=> start!409364 m!4862463))

(declare-fun m!4862465 () Bool)

(assert (=> start!409364 m!4862465))

(declare-fun m!4862467 () Bool)

(assert (=> b!4269562 m!4862467))

(check-sat (not b!4269562) (not start!409364))
(check-sat)
(get-model)

(declare-fun d!1259084 () Bool)

(declare-fun c!726255 () Bool)

(get-info :version)

(assert (=> d!1259084 (= c!726255 ((_ is Node!14273) (c!726246 v!3866)))))

(declare-fun e!2650878 () Bool)

(assert (=> d!1259084 (= (inv!62326 (c!726246 v!3866)) e!2650878)))

(declare-fun b!4269584 () Bool)

(declare-fun inv!62327 (Conc!14273) Bool)

(assert (=> b!4269584 (= e!2650878 (inv!62327 (c!726246 v!3866)))))

(declare-fun b!4269585 () Bool)

(declare-fun e!2650879 () Bool)

(assert (=> b!4269585 (= e!2650878 e!2650879)))

(declare-fun res!1754029 () Bool)

(assert (=> b!4269585 (= res!1754029 (not ((_ is Leaf!22065) (c!726246 v!3866))))))

(assert (=> b!4269585 (=> res!1754029 e!2650879)))

(declare-fun b!4269586 () Bool)

(declare-fun inv!62328 (Conc!14273) Bool)

(assert (=> b!4269586 (= e!2650879 (inv!62328 (c!726246 v!3866)))))

(assert (= (and d!1259084 c!726255) b!4269584))

(assert (= (and d!1259084 (not c!726255)) b!4269585))

(assert (= (and b!4269585 (not res!1754029)) b!4269586))

(declare-fun m!4862475 () Bool)

(assert (=> b!4269584 m!4862475))

(declare-fun m!4862477 () Bool)

(assert (=> b!4269586 m!4862477))

(assert (=> b!4269562 d!1259084))

(declare-fun b!4269597 () Bool)

(declare-fun e!2650886 () Bool)

(declare-fun e!2650888 () Bool)

(assert (=> b!4269597 (= e!2650886 e!2650888)))

(declare-fun c!726260 () Bool)

(assert (=> b!4269597 (= c!726260 ((_ is IntegerValue!24739) (IdentifierValue!16493 (efficientList!468 v!3866))))))

(declare-fun b!4269598 () Bool)

(declare-fun res!1754032 () Bool)

(declare-fun e!2650887 () Bool)

(assert (=> b!4269598 (=> res!1754032 e!2650887)))

(assert (=> b!4269598 (= res!1754032 (not ((_ is IntegerValue!24740) (IdentifierValue!16493 (efficientList!468 v!3866)))))))

(assert (=> b!4269598 (= e!2650888 e!2650887)))

(declare-fun b!4269599 () Bool)

(declare-fun inv!16 (TokenValue!8246) Bool)

(assert (=> b!4269599 (= e!2650886 (inv!16 (IdentifierValue!16493 (efficientList!468 v!3866))))))

(declare-fun d!1259088 () Bool)

(declare-fun c!726261 () Bool)

(assert (=> d!1259088 (= c!726261 ((_ is IntegerValue!24738) (IdentifierValue!16493 (efficientList!468 v!3866))))))

(assert (=> d!1259088 (= (inv!21 (IdentifierValue!16493 (efficientList!468 v!3866))) e!2650886)))

(declare-fun b!4269600 () Bool)

(declare-fun inv!15 (TokenValue!8246) Bool)

(assert (=> b!4269600 (= e!2650887 (inv!15 (IdentifierValue!16493 (efficientList!468 v!3866))))))

(declare-fun b!4269601 () Bool)

(declare-fun inv!17 (TokenValue!8246) Bool)

(assert (=> b!4269601 (= e!2650888 (inv!17 (IdentifierValue!16493 (efficientList!468 v!3866))))))

(assert (= (and d!1259088 c!726261) b!4269599))

(assert (= (and d!1259088 (not c!726261)) b!4269597))

(assert (= (and b!4269597 c!726260) b!4269601))

(assert (= (and b!4269597 (not c!726260)) b!4269598))

(assert (= (and b!4269598 (not res!1754032)) b!4269600))

(declare-fun m!4862479 () Bool)

(assert (=> b!4269599 m!4862479))

(declare-fun m!4862481 () Bool)

(assert (=> b!4269600 m!4862481))

(declare-fun m!4862483 () Bool)

(assert (=> b!4269601 m!4862483))

(assert (=> start!409364 d!1259088))

(declare-fun d!1259090 () Bool)

(declare-fun lt!1512454 () List!47415)

(declare-fun list!17125 (BalanceConc!28056) List!47415)

(assert (=> d!1259090 (= lt!1512454 (list!17125 v!3866))))

(declare-fun efficientList!470 (Conc!14273 List!47415) List!47415)

(declare-fun efficientList$default$2!162 (Conc!14273) List!47415)

(assert (=> d!1259090 (= lt!1512454 (efficientList!470 (c!726246 v!3866) (efficientList$default$2!162 (c!726246 v!3866))))))

(assert (=> d!1259090 (= (efficientList!468 v!3866) lt!1512454)))

(declare-fun bs!600273 () Bool)

(assert (= bs!600273 d!1259090))

(declare-fun m!4862493 () Bool)

(assert (=> bs!600273 m!4862493))

(declare-fun m!4862495 () Bool)

(assert (=> bs!600273 m!4862495))

(assert (=> bs!600273 m!4862495))

(declare-fun m!4862497 () Bool)

(assert (=> bs!600273 m!4862497))

(assert (=> start!409364 d!1259090))

(declare-fun d!1259096 () Bool)

(declare-fun isBalanced!3828 (Conc!14273) Bool)

(assert (=> d!1259096 (= (inv!62325 v!3866) (isBalanced!3828 (c!726246 v!3866)))))

(declare-fun bs!600274 () Bool)

(assert (= bs!600274 d!1259096))

(declare-fun m!4862503 () Bool)

(assert (=> bs!600274 m!4862503))

(assert (=> start!409364 d!1259096))

(declare-fun tp!1307853 () Bool)

(declare-fun tp!1307854 () Bool)

(declare-fun e!2650905 () Bool)

(declare-fun b!4269625 () Bool)

(assert (=> b!4269625 (= e!2650905 (and (inv!62326 (left!35108 (c!726246 v!3866))) tp!1307853 (inv!62326 (right!35438 (c!726246 v!3866))) tp!1307854))))

(declare-fun b!4269626 () Bool)

(declare-fun inv!62331 (IArray!28551) Bool)

(assert (=> b!4269626 (= e!2650905 (inv!62331 (xs!17579 (c!726246 v!3866))))))

(assert (=> b!4269562 (= tp!1307842 (and (inv!62326 (c!726246 v!3866)) e!2650905))))

(assert (= (and b!4269562 ((_ is Node!14273) (c!726246 v!3866))) b!4269625))

(assert (= (and b!4269562 ((_ is Leaf!22065) (c!726246 v!3866))) b!4269626))

(declare-fun m!4862511 () Bool)

(assert (=> b!4269625 m!4862511))

(declare-fun m!4862513 () Bool)

(assert (=> b!4269625 m!4862513))

(declare-fun m!4862515 () Bool)

(assert (=> b!4269626 m!4862515))

(assert (=> b!4269562 m!4862467))

(check-sat (not d!1259090) (not b!4269584) (not b!4269586) (not b!4269625) (not b!4269601) (not d!1259096) (not b!4269562) (not b!4269626) (not b!4269600) (not b!4269599))
(check-sat)
