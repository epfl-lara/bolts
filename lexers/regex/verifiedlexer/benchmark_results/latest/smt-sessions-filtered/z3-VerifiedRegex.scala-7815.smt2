; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!410602 () Bool)

(assert start!410602)

(declare-datatypes ((List!47463 0))(
  ( (Nil!47339) (Cons!47339 (h!52759 (_ BitVec 16)) (t!353972 List!47463)) )
))
(declare-datatypes ((IArray!28647 0))(
  ( (IArray!28648 (innerList!14381 List!47463)) )
))
(declare-datatypes ((Conc!14321 0))(
  ( (Node!14321 (left!35252 Conc!14321) (right!35582 Conc!14321) (csize!28872 Int) (cheight!14532 Int)) (Leaf!22137 (xs!17627 IArray!28647) (csize!28873 Int)) (Empty!14321) )
))
(declare-datatypes ((BalanceConc!28152 0))(
  ( (BalanceConc!28153 (c!728187 Conc!14321)) )
))
(declare-fun v!3991 () BalanceConc!28152)

(declare-datatypes ((TokenValue!8294 0))(
  ( (FloatLiteralValue!16588 (text!58503 List!47463)) (TokenValueExt!8293 (__x!28740 Int)) (Broken!41470 (value!250267 List!47463)) (Object!8417) (End!8294) (Def!8294) (Underscore!8294) (Match!8294) (Else!8294) (Error!8294) (Case!8294) (If!8294) (Extends!8294) (Abstract!8294) (Class!8294) (Val!8294) (DelimiterValue!16588 (del!8354 List!47463)) (KeywordValue!8300 (value!250268 List!47463)) (CommentValue!16588 (value!250269 List!47463)) (WhitespaceValue!16588 (value!250270 List!47463)) (IndentationValue!8294 (value!250271 List!47463)) (String!55357) (Int32!8294) (Broken!41471 (value!250272 List!47463)) (Boolean!8295) (Unit!66286) (OperatorValue!8297 (op!8354 List!47463)) (IdentifierValue!16588 (value!250273 List!47463)) (IdentifierValue!16589 (value!250274 List!47463)) (WhitespaceValue!16589 (value!250275 List!47463)) (True!16588) (False!16588) (Broken!41472 (value!250276 List!47463)) (Broken!41473 (value!250277 List!47463)) (True!16589) (RightBrace!8294) (RightBracket!8294) (Colon!8294) (Null!8294) (Comma!8294) (LeftBracket!8294) (False!16589) (LeftBrace!8294) (ImaginaryLiteralValue!8294 (text!58504 List!47463)) (StringLiteralValue!24882 (value!250278 List!47463)) (EOFValue!8294 (value!250279 List!47463)) (IdentValue!8294 (value!250280 List!47463)) (DelimiterValue!16589 (value!250281 List!47463)) (DedentValue!8294 (value!250282 List!47463)) (NewLineValue!8294 (value!250283 List!47463)) (IntegerValue!24882 (value!250284 (_ BitVec 32)) (text!58505 List!47463)) (IntegerValue!24883 (value!250285 Int) (text!58506 List!47463)) (Times!8294) (Or!8294) (Equal!8294) (Minus!8294) (Broken!41474 (value!250286 List!47463)) (And!8294) (Div!8294) (LessEqual!8294) (Mod!8294) (Concat!21192) (Not!8294) (Plus!8294) (SpaceValue!8294 (value!250287 List!47463)) (IntegerValue!24884 (value!250288 Int) (text!58507 List!47463)) (StringLiteralValue!24883 (text!58508 List!47463)) (FloatLiteralValue!16589 (text!58509 List!47463)) (BytesLiteralValue!8294 (value!250289 List!47463)) (CommentValue!16589 (value!250290 List!47463)) (StringLiteralValue!24884 (value!250291 List!47463)) (ErrorTokenValue!8294 (msg!8355 List!47463)) )
))
(declare-fun inv!21 (TokenValue!8294) Bool)

(declare-fun efficientList!574 (BalanceConc!28152) List!47463)

(assert (=> start!410602 (not (inv!21 (DelimiterValue!16589 (efficientList!574 v!3991))))))

(declare-fun e!2654816 () Bool)

(declare-fun inv!62614 (BalanceConc!28152) Bool)

(assert (=> start!410602 (and (inv!62614 v!3991) e!2654816)))

(declare-fun b!4276103 () Bool)

(declare-fun tp!1308572 () Bool)

(declare-fun inv!62615 (Conc!14321) Bool)

(assert (=> b!4276103 (= e!2654816 (and (inv!62615 (c!728187 v!3991)) tp!1308572))))

(assert (= start!410602 b!4276103))

(declare-fun m!4871863 () Bool)

(assert (=> start!410602 m!4871863))

(declare-fun m!4871865 () Bool)

(assert (=> start!410602 m!4871865))

(declare-fun m!4871867 () Bool)

(assert (=> start!410602 m!4871867))

(declare-fun m!4871869 () Bool)

(assert (=> b!4276103 m!4871869))

(check-sat (not start!410602) (not b!4276103))
(check-sat)
(get-model)

(declare-fun b!4276129 () Bool)

(declare-fun e!2654833 () Bool)

(declare-fun e!2654832 () Bool)

(assert (=> b!4276129 (= e!2654833 e!2654832)))

(declare-fun c!728198 () Bool)

(get-info :version)

(assert (=> b!4276129 (= c!728198 ((_ is IntegerValue!24883) (DelimiterValue!16589 (efficientList!574 v!3991))))))

(declare-fun b!4276130 () Bool)

(declare-fun inv!16 (TokenValue!8294) Bool)

(assert (=> b!4276130 (= e!2654833 (inv!16 (DelimiterValue!16589 (efficientList!574 v!3991))))))

(declare-fun b!4276131 () Bool)

(declare-fun e!2654834 () Bool)

(declare-fun inv!15 (TokenValue!8294) Bool)

(assert (=> b!4276131 (= e!2654834 (inv!15 (DelimiterValue!16589 (efficientList!574 v!3991))))))

(declare-fun d!1262274 () Bool)

(declare-fun c!728199 () Bool)

(assert (=> d!1262274 (= c!728199 ((_ is IntegerValue!24882) (DelimiterValue!16589 (efficientList!574 v!3991))))))

(assert (=> d!1262274 (= (inv!21 (DelimiterValue!16589 (efficientList!574 v!3991))) e!2654833)))

(declare-fun b!4276132 () Bool)

(declare-fun res!1755929 () Bool)

(assert (=> b!4276132 (=> res!1755929 e!2654834)))

(assert (=> b!4276132 (= res!1755929 (not ((_ is IntegerValue!24884) (DelimiterValue!16589 (efficientList!574 v!3991)))))))

(assert (=> b!4276132 (= e!2654832 e!2654834)))

(declare-fun b!4276133 () Bool)

(declare-fun inv!17 (TokenValue!8294) Bool)

(assert (=> b!4276133 (= e!2654832 (inv!17 (DelimiterValue!16589 (efficientList!574 v!3991))))))

(assert (= (and d!1262274 c!728199) b!4276130))

(assert (= (and d!1262274 (not c!728199)) b!4276129))

(assert (= (and b!4276129 c!728198) b!4276133))

(assert (= (and b!4276129 (not c!728198)) b!4276132))

(assert (= (and b!4276132 (not res!1755929)) b!4276131))

(declare-fun m!4871877 () Bool)

(assert (=> b!4276130 m!4871877))

(declare-fun m!4871879 () Bool)

(assert (=> b!4276131 m!4871879))

(declare-fun m!4871881 () Bool)

(assert (=> b!4276133 m!4871881))

(assert (=> start!410602 d!1262274))

(declare-fun d!1262278 () Bool)

(declare-fun lt!1513794 () List!47463)

(declare-fun list!17238 (BalanceConc!28152) List!47463)

(assert (=> d!1262278 (= lt!1513794 (list!17238 v!3991))))

(declare-fun efficientList!576 (Conc!14321 List!47463) List!47463)

(declare-fun efficientList$default$2!200 (Conc!14321) List!47463)

(assert (=> d!1262278 (= lt!1513794 (efficientList!576 (c!728187 v!3991) (efficientList$default$2!200 (c!728187 v!3991))))))

(assert (=> d!1262278 (= (efficientList!574 v!3991) lt!1513794)))

(declare-fun bs!602258 () Bool)

(assert (= bs!602258 d!1262278))

(declare-fun m!4871889 () Bool)

(assert (=> bs!602258 m!4871889))

(declare-fun m!4871891 () Bool)

(assert (=> bs!602258 m!4871891))

(assert (=> bs!602258 m!4871891))

(declare-fun m!4871893 () Bool)

(assert (=> bs!602258 m!4871893))

(assert (=> start!410602 d!1262278))

(declare-fun d!1262282 () Bool)

(declare-fun isBalanced!3863 (Conc!14321) Bool)

(assert (=> d!1262282 (= (inv!62614 v!3991) (isBalanced!3863 (c!728187 v!3991)))))

(declare-fun bs!602260 () Bool)

(assert (= bs!602260 d!1262282))

(declare-fun m!4871897 () Bool)

(assert (=> bs!602260 m!4871897))

(assert (=> start!410602 d!1262282))

(declare-fun d!1262286 () Bool)

(declare-fun c!728205 () Bool)

(assert (=> d!1262286 (= c!728205 ((_ is Node!14321) (c!728187 v!3991)))))

(declare-fun e!2654851 () Bool)

(assert (=> d!1262286 (= (inv!62615 (c!728187 v!3991)) e!2654851)))

(declare-fun b!4276157 () Bool)

(declare-fun inv!62617 (Conc!14321) Bool)

(assert (=> b!4276157 (= e!2654851 (inv!62617 (c!728187 v!3991)))))

(declare-fun b!4276158 () Bool)

(declare-fun e!2654852 () Bool)

(assert (=> b!4276158 (= e!2654851 e!2654852)))

(declare-fun res!1755935 () Bool)

(assert (=> b!4276158 (= res!1755935 (not ((_ is Leaf!22137) (c!728187 v!3991))))))

(assert (=> b!4276158 (=> res!1755935 e!2654852)))

(declare-fun b!4276159 () Bool)

(declare-fun inv!62619 (Conc!14321) Bool)

(assert (=> b!4276159 (= e!2654852 (inv!62619 (c!728187 v!3991)))))

(assert (= (and d!1262286 c!728205) b!4276157))

(assert (= (and d!1262286 (not c!728205)) b!4276158))

(assert (= (and b!4276158 (not res!1755935)) b!4276159))

(declare-fun m!4871909 () Bool)

(assert (=> b!4276157 m!4871909))

(declare-fun m!4871911 () Bool)

(assert (=> b!4276159 m!4871911))

(assert (=> b!4276103 d!1262286))

(declare-fun tp!1308583 () Bool)

(declare-fun e!2654857 () Bool)

(declare-fun b!4276166 () Bool)

(declare-fun tp!1308584 () Bool)

(assert (=> b!4276166 (= e!2654857 (and (inv!62615 (left!35252 (c!728187 v!3991))) tp!1308583 (inv!62615 (right!35582 (c!728187 v!3991))) tp!1308584))))

(declare-fun b!4276167 () Bool)

(declare-fun inv!62620 (IArray!28647) Bool)

(assert (=> b!4276167 (= e!2654857 (inv!62620 (xs!17627 (c!728187 v!3991))))))

(assert (=> b!4276103 (= tp!1308572 (and (inv!62615 (c!728187 v!3991)) e!2654857))))

(assert (= (and b!4276103 ((_ is Node!14321) (c!728187 v!3991))) b!4276166))

(assert (= (and b!4276103 ((_ is Leaf!22137) (c!728187 v!3991))) b!4276167))

(declare-fun m!4871913 () Bool)

(assert (=> b!4276166 m!4871913))

(declare-fun m!4871915 () Bool)

(assert (=> b!4276166 m!4871915))

(declare-fun m!4871917 () Bool)

(assert (=> b!4276167 m!4871917))

(assert (=> b!4276103 m!4871869))

(check-sat (not b!4276159) (not d!1262278) (not b!4276166) (not b!4276103) (not b!4276167) (not b!4276157) (not b!4276130) (not b!4276133) (not d!1262282) (not b!4276131))
(check-sat)
