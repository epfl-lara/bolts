; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!110668 () Bool)

(assert start!110668)

(assert (=> start!110668 true))

(declare-fun b!1256039 () Bool)

(assert (=> b!1256039 true))

(assert (=> b!1256039 true))

(declare-fun b!1256040 () Bool)

(assert (=> b!1256040 true))

(declare-fun b!1256051 () Bool)

(declare-fun e!799344 () Bool)

(declare-datatypes ((List!12607 0))(
  ( (Nil!12547) (Cons!12547 (h!17948 (_ BitVec 16)) (t!115727 List!12607)) )
))
(declare-datatypes ((IArray!8237 0))(
  ( (IArray!8238 (innerList!4176 List!12607)) )
))
(declare-datatypes ((Conc!4116 0))(
  ( (Node!4116 (left!10845 Conc!4116) (right!11175 Conc!4116) (csize!8462 Int) (cheight!4327 Int)) (Leaf!6372 (xs!6827 IArray!8237) (csize!8463 Int)) (Empty!4116) )
))
(declare-datatypes ((BalanceConc!8166 0))(
  ( (BalanceConc!8167 (c!208545 Conc!4116)) )
))
(declare-fun x!243834 () BalanceConc!8166)

(declare-fun tp!370398 () Bool)

(declare-fun inv!16876 (Conc!4116) Bool)

(assert (=> b!1256051 (= e!799344 (and (inv!16876 (c!208545 x!243834)) tp!370398))))

(declare-datatypes ((OperatorValueInjection!24 0))(
  ( (OperatorValueInjection!25) )
))
(declare-fun thiss!5119 () OperatorValueInjection!24)

(declare-fun inst!892 () Bool)

(declare-fun inv!16877 (BalanceConc!8166) Bool)

(declare-fun list!4673 (BalanceConc!8166) List!12607)

(declare-datatypes ((TokenValue!2238 0))(
  ( (FloatLiteralValue!4476 (text!16111 List!12607)) (TokenValueExt!2237 (__x!8183 Int)) (Broken!11190 (value!70475 List!12607)) (Object!2297) (End!2238) (Def!2238) (Underscore!2238) (Match!2238) (Else!2238) (Error!2238) (Case!2238) (If!2238) (Extends!2238) (Abstract!2238) (Class!2238) (Val!2238) (DelimiterValue!4476 (del!2298 List!12607)) (KeywordValue!2244 (value!70476 List!12607)) (CommentValue!4476 (value!70477 List!12607)) (WhitespaceValue!4476 (value!70478 List!12607)) (IndentationValue!2238 (value!70479 List!12607)) (String!15395) (Int32!2238) (Broken!11191 (value!70480 List!12607)) (Boolean!2239) (Unit!18832) (OperatorValue!2241 (op!2298 List!12607)) (IdentifierValue!4476 (value!70481 List!12607)) (IdentifierValue!4477 (value!70482 List!12607)) (WhitespaceValue!4477 (value!70483 List!12607)) (True!4476) (False!4476) (Broken!11192 (value!70484 List!12607)) (Broken!11193 (value!70485 List!12607)) (True!4477) (RightBrace!2238) (RightBracket!2238) (Colon!2238) (Null!2238) (Comma!2238) (LeftBracket!2238) (False!4477) (LeftBrace!2238) (ImaginaryLiteralValue!2238 (text!16112 List!12607)) (StringLiteralValue!6714 (value!70486 List!12607)) (EOFValue!2238 (value!70487 List!12607)) (IdentValue!2238 (value!70488 List!12607)) (DelimiterValue!4477 (value!70489 List!12607)) (DedentValue!2238 (value!70490 List!12607)) (NewLineValue!2238 (value!70491 List!12607)) (IntegerValue!6714 (value!70492 (_ BitVec 32)) (text!16113 List!12607)) (IntegerValue!6715 (value!70493 Int) (text!16114 List!12607)) (Times!2238) (Or!2238) (Equal!2238) (Minus!2238) (Broken!11194 (value!70494 List!12607)) (And!2238) (Div!2238) (LessEqual!2238) (Mod!2238) (Concat!5712) (Not!2238) (Plus!2238) (SpaceValue!2238 (value!70495 List!12607)) (IntegerValue!6716 (value!70496 Int) (text!16115 List!12607)) (StringLiteralValue!6715 (text!16116 List!12607)) (FloatLiteralValue!4477 (text!16117 List!12607)) (BytesLiteralValue!2238 (value!70497 List!12607)) (CommentValue!4477 (value!70498 List!12607)) (StringLiteralValue!6716 (value!70499 List!12607)) (ErrorTokenValue!2238 (msg!2299 List!12607)) )
))
(declare-fun toCharacters!27 (OperatorValueInjection!24 TokenValue!2238) BalanceConc!8166)

(declare-fun toValue!34 (OperatorValueInjection!24 BalanceConc!8166) TokenValue!2238)

(assert (=> start!110668 (= inst!892 (=> (and (inv!16877 x!243834) e!799344) (= (list!4673 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834))) (list!4673 x!243834))))))

(assert (= start!110668 b!1256051))

(declare-fun m!1414423 () Bool)

(assert (=> b!1256051 m!1414423))

(declare-fun m!1414425 () Bool)

(assert (=> start!110668 m!1414425))

(declare-fun m!1414427 () Bool)

(assert (=> start!110668 m!1414427))

(declare-fun m!1414429 () Bool)

(assert (=> start!110668 m!1414429))

(declare-fun m!1414431 () Bool)

(assert (=> start!110668 m!1414431))

(assert (=> start!110668 m!1414425))

(assert (=> start!110668 m!1414431))

(declare-fun m!1414433 () Bool)

(assert (=> start!110668 m!1414433))

(declare-fun res!556160 () Bool)

(declare-fun e!799346 () Bool)

(assert (=> b!1256040 (=> res!556160 e!799346)))

(declare-fun x!243835 () BalanceConc!8166)

(declare-fun x!243836 () BalanceConc!8166)

(assert (=> b!1256040 (= res!556160 (not (= (list!4673 x!243835) (list!4673 x!243836))))))

(declare-fun inst!893 () Bool)

(declare-fun e!799345 () Bool)

(declare-fun e!799347 () Bool)

(assert (=> b!1256040 (= inst!893 (=> (and (inv!16877 x!243835) e!799345 (inv!16877 x!243836) e!799347) e!799346))))

(declare-fun b!1256052 () Bool)

(assert (=> b!1256052 (= e!799346 (= (toValue!34 thiss!5119 x!243835) (toValue!34 thiss!5119 x!243836)))))

(declare-fun b!1256053 () Bool)

(declare-fun tp!370399 () Bool)

(assert (=> b!1256053 (= e!799345 (and (inv!16876 (c!208545 x!243835)) tp!370399))))

(declare-fun b!1256054 () Bool)

(declare-fun tp!370400 () Bool)

(assert (=> b!1256054 (= e!799347 (and (inv!16876 (c!208545 x!243836)) tp!370400))))

(assert (= (and b!1256040 (not res!556160)) b!1256052))

(assert (= b!1256040 b!1256053))

(assert (= b!1256040 b!1256054))

(declare-fun m!1414435 () Bool)

(assert (=> b!1256040 m!1414435))

(declare-fun m!1414437 () Bool)

(assert (=> b!1256040 m!1414437))

(declare-fun m!1414439 () Bool)

(assert (=> b!1256040 m!1414439))

(declare-fun m!1414441 () Bool)

(assert (=> b!1256040 m!1414441))

(declare-fun m!1414443 () Bool)

(assert (=> b!1256052 m!1414443))

(declare-fun m!1414445 () Bool)

(assert (=> b!1256052 m!1414445))

(declare-fun m!1414447 () Bool)

(assert (=> b!1256053 m!1414447))

(declare-fun m!1414449 () Bool)

(assert (=> b!1256054 m!1414449))

(declare-fun bs!290198 () Bool)

(declare-fun neg-inst!892 () Bool)

(declare-fun s!183383 () Bool)

(assert (= bs!290198 (and neg-inst!892 s!183383)))

(assert (=> bs!290198 (=> true (= (list!4673 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834))) (list!4673 x!243834)))))

(assert (=> m!1414431 m!1414425))

(assert (=> m!1414431 m!1414427))

(assert (=> m!1414431 m!1414433))

(assert (=> m!1414431 s!183383))

(assert (=> m!1414433 s!183383))

(declare-fun bs!290199 () Bool)

(assert (= bs!290199 (and neg-inst!892 start!110668)))

(assert (=> bs!290199 (= true inst!892)))

(declare-fun bs!290200 () Bool)

(declare-fun neg-inst!893 () Bool)

(declare-fun s!183385 () Bool)

(assert (= bs!290200 (and neg-inst!893 s!183385)))

(declare-fun res!556161 () Bool)

(declare-fun e!799348 () Bool)

(assert (=> bs!290200 (=> res!556161 e!799348)))

(assert (=> bs!290200 (= res!556161 (not (= (list!4673 x!243836) (list!4673 x!243836))))))

(assert (=> bs!290200 (=> true e!799348)))

(declare-fun b!1256055 () Bool)

(assert (=> b!1256055 (= e!799348 (= (toValue!34 thiss!5119 x!243836) (toValue!34 thiss!5119 x!243836)))))

(assert (= (and bs!290200 (not res!556161)) b!1256055))

(assert (=> m!1414445 m!1414437))

(assert (=> m!1414445 m!1414437))

(assert (=> m!1414445 s!183385))

(assert (=> m!1414445 s!183385))

(declare-fun bs!290201 () Bool)

(declare-fun s!183387 () Bool)

(assert (= bs!290201 (and neg-inst!893 s!183387)))

(declare-fun res!556162 () Bool)

(declare-fun e!799349 () Bool)

(assert (=> bs!290201 (=> res!556162 e!799349)))

(assert (=> bs!290201 (= res!556162 (not (= (list!4673 x!243834) (list!4673 x!243836))))))

(assert (=> bs!290201 (=> true e!799349)))

(declare-fun b!1256056 () Bool)

(assert (=> b!1256056 (= e!799349 (= (toValue!34 thiss!5119 x!243834) (toValue!34 thiss!5119 x!243836)))))

(assert (= (and bs!290201 (not res!556162)) b!1256056))

(declare-fun bs!290202 () Bool)

(assert (= bs!290202 (and m!1414431 m!1414445)))

(assert (=> bs!290202 m!1414433))

(assert (=> bs!290202 m!1414437))

(assert (=> bs!290202 s!183387))

(declare-fun bs!290203 () Bool)

(declare-fun s!183389 () Bool)

(assert (= bs!290203 (and neg-inst!893 s!183389)))

(declare-fun res!556163 () Bool)

(declare-fun e!799350 () Bool)

(assert (=> bs!290203 (=> res!556163 e!799350)))

(assert (=> bs!290203 (= res!556163 (not (= (list!4673 x!243834) (list!4673 x!243834))))))

(assert (=> bs!290203 (=> true e!799350)))

(declare-fun b!1256057 () Bool)

(assert (=> b!1256057 (= e!799350 (= (toValue!34 thiss!5119 x!243834) (toValue!34 thiss!5119 x!243834)))))

(assert (= (and bs!290203 (not res!556163)) b!1256057))

(assert (=> m!1414431 m!1414433))

(assert (=> m!1414431 m!1414433))

(assert (=> m!1414431 s!183389))

(declare-fun bs!290204 () Bool)

(declare-fun s!183391 () Bool)

(assert (= bs!290204 (and neg-inst!893 s!183391)))

(declare-fun res!556164 () Bool)

(declare-fun e!799351 () Bool)

(assert (=> bs!290204 (=> res!556164 e!799351)))

(assert (=> bs!290204 (= res!556164 (not (= (list!4673 x!243836) (list!4673 x!243834))))))

(assert (=> bs!290204 (=> true e!799351)))

(declare-fun b!1256058 () Bool)

(assert (=> b!1256058 (= e!799351 (= (toValue!34 thiss!5119 x!243836) (toValue!34 thiss!5119 x!243834)))))

(assert (= (and bs!290204 (not res!556164)) b!1256058))

(assert (=> bs!290202 m!1414437))

(assert (=> bs!290202 m!1414433))

(assert (=> bs!290202 s!183391))

(assert (=> m!1414431 s!183389))

(declare-fun bs!290205 () Bool)

(declare-fun s!183393 () Bool)

(assert (= bs!290205 (and neg-inst!893 s!183393)))

(declare-fun res!556165 () Bool)

(declare-fun e!799352 () Bool)

(assert (=> bs!290205 (=> res!556165 e!799352)))

(assert (=> bs!290205 (= res!556165 (not (= (list!4673 x!243835) (list!4673 x!243836))))))

(assert (=> bs!290205 (=> true e!799352)))

(declare-fun b!1256059 () Bool)

(assert (=> b!1256059 (= e!799352 (= (toValue!34 thiss!5119 x!243835) (toValue!34 thiss!5119 x!243836)))))

(assert (= (and bs!290205 (not res!556165)) b!1256059))

(declare-fun bs!290206 () Bool)

(assert (= bs!290206 (and m!1414443 m!1414445)))

(assert (=> bs!290206 m!1414435))

(assert (=> bs!290206 m!1414437))

(assert (=> bs!290206 s!183393))

(declare-fun bs!290207 () Bool)

(declare-fun s!183395 () Bool)

(assert (= bs!290207 (and neg-inst!893 s!183395)))

(declare-fun res!556166 () Bool)

(declare-fun e!799353 () Bool)

(assert (=> bs!290207 (=> res!556166 e!799353)))

(assert (=> bs!290207 (= res!556166 (not (= (list!4673 x!243835) (list!4673 x!243834))))))

(assert (=> bs!290207 (=> true e!799353)))

(declare-fun b!1256060 () Bool)

(assert (=> b!1256060 (= e!799353 (= (toValue!34 thiss!5119 x!243835) (toValue!34 thiss!5119 x!243834)))))

(assert (= (and bs!290207 (not res!556166)) b!1256060))

(declare-fun bs!290208 () Bool)

(assert (= bs!290208 (and m!1414443 m!1414431)))

(assert (=> bs!290208 m!1414435))

(assert (=> bs!290208 m!1414433))

(assert (=> bs!290208 s!183395))

(declare-fun bs!290209 () Bool)

(declare-fun s!183397 () Bool)

(assert (= bs!290209 (and neg-inst!893 s!183397)))

(declare-fun res!556167 () Bool)

(declare-fun e!799354 () Bool)

(assert (=> bs!290209 (=> res!556167 e!799354)))

(assert (=> bs!290209 (= res!556167 (not (= (list!4673 x!243835) (list!4673 x!243835))))))

(assert (=> bs!290209 (=> true e!799354)))

(declare-fun b!1256061 () Bool)

(assert (=> b!1256061 (= e!799354 (= (toValue!34 thiss!5119 x!243835) (toValue!34 thiss!5119 x!243835)))))

(assert (= (and bs!290209 (not res!556167)) b!1256061))

(assert (=> m!1414443 m!1414435))

(assert (=> m!1414443 m!1414435))

(assert (=> m!1414443 s!183397))

(declare-fun bs!290210 () Bool)

(declare-fun s!183399 () Bool)

(assert (= bs!290210 (and neg-inst!893 s!183399)))

(declare-fun res!556168 () Bool)

(declare-fun e!799355 () Bool)

(assert (=> bs!290210 (=> res!556168 e!799355)))

(assert (=> bs!290210 (= res!556168 (not (= (list!4673 x!243836) (list!4673 x!243835))))))

(assert (=> bs!290210 (=> true e!799355)))

(declare-fun b!1256062 () Bool)

(assert (=> b!1256062 (= e!799355 (= (toValue!34 thiss!5119 x!243836) (toValue!34 thiss!5119 x!243835)))))

(assert (= (and bs!290210 (not res!556168)) b!1256062))

(assert (=> bs!290206 m!1414437))

(assert (=> bs!290206 m!1414435))

(assert (=> bs!290206 s!183399))

(declare-fun bs!290211 () Bool)

(declare-fun s!183401 () Bool)

(assert (= bs!290211 (and neg-inst!893 s!183401)))

(declare-fun res!556169 () Bool)

(declare-fun e!799356 () Bool)

(assert (=> bs!290211 (=> res!556169 e!799356)))

(assert (=> bs!290211 (= res!556169 (not (= (list!4673 x!243834) (list!4673 x!243835))))))

(assert (=> bs!290211 (=> true e!799356)))

(declare-fun b!1256063 () Bool)

(assert (=> b!1256063 (= e!799356 (= (toValue!34 thiss!5119 x!243834) (toValue!34 thiss!5119 x!243835)))))

(assert (= (and bs!290211 (not res!556169)) b!1256063))

(assert (=> bs!290208 m!1414433))

(assert (=> bs!290208 m!1414435))

(assert (=> bs!290208 s!183401))

(assert (=> m!1414443 s!183397))

(declare-fun bs!290212 () Bool)

(declare-fun s!183403 () Bool)

(assert (= bs!290212 (and neg-inst!893 s!183403)))

(declare-fun res!556170 () Bool)

(declare-fun e!799357 () Bool)

(assert (=> bs!290212 (=> res!556170 e!799357)))

(assert (=> bs!290212 (= res!556170 (not (= (list!4673 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834))) (list!4673 x!243836))))))

(assert (=> bs!290212 (=> true e!799357)))

(declare-fun b!1256064 () Bool)

(assert (=> b!1256064 (= e!799357 (= (toValue!34 thiss!5119 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834))) (toValue!34 thiss!5119 x!243836)))))

(assert (= (and bs!290212 (not res!556170)) b!1256064))

(declare-fun bs!290213 () Bool)

(assert (= bs!290213 (and m!1414427 m!1414445)))

(assert (=> bs!290213 m!1414427))

(assert (=> bs!290213 m!1414437))

(assert (=> bs!290213 s!183403))

(declare-fun bs!290214 () Bool)

(declare-fun s!183405 () Bool)

(assert (= bs!290214 (and neg-inst!893 s!183405)))

(declare-fun res!556171 () Bool)

(declare-fun e!799358 () Bool)

(assert (=> bs!290214 (=> res!556171 e!799358)))

(assert (=> bs!290214 (= res!556171 (not (= (list!4673 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834))) (list!4673 x!243834))))))

(assert (=> bs!290214 (=> true e!799358)))

(declare-fun b!1256065 () Bool)

(assert (=> b!1256065 (= e!799358 (= (toValue!34 thiss!5119 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834))) (toValue!34 thiss!5119 x!243834)))))

(assert (= (and bs!290214 (not res!556171)) b!1256065))

(declare-fun bs!290215 () Bool)

(assert (= bs!290215 (and m!1414427 m!1414431)))

(assert (=> bs!290215 m!1414427))

(assert (=> bs!290215 m!1414433))

(assert (=> bs!290215 s!183405))

(declare-fun bs!290216 () Bool)

(declare-fun s!183407 () Bool)

(assert (= bs!290216 (and neg-inst!893 s!183407)))

(declare-fun res!556172 () Bool)

(declare-fun e!799359 () Bool)

(assert (=> bs!290216 (=> res!556172 e!799359)))

(assert (=> bs!290216 (= res!556172 (not (= (list!4673 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834))) (list!4673 x!243835))))))

(assert (=> bs!290216 (=> true e!799359)))

(declare-fun b!1256066 () Bool)

(assert (=> b!1256066 (= e!799359 (= (toValue!34 thiss!5119 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834))) (toValue!34 thiss!5119 x!243835)))))

(assert (= (and bs!290216 (not res!556172)) b!1256066))

(declare-fun bs!290217 () Bool)

(assert (= bs!290217 (and m!1414427 m!1414443)))

(assert (=> bs!290217 m!1414427))

(assert (=> bs!290217 m!1414435))

(assert (=> bs!290217 s!183407))

(declare-fun bs!290218 () Bool)

(declare-fun s!183409 () Bool)

(assert (= bs!290218 (and neg-inst!893 s!183409)))

(declare-fun res!556173 () Bool)

(declare-fun e!799360 () Bool)

(assert (=> bs!290218 (=> res!556173 e!799360)))

(assert (=> bs!290218 (= res!556173 (not (= (list!4673 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834))) (list!4673 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834))))))))

(assert (=> bs!290218 (=> true e!799360)))

(declare-fun b!1256067 () Bool)

(assert (=> b!1256067 (= e!799360 (= (toValue!34 thiss!5119 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834))) (toValue!34 thiss!5119 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834)))))))

(assert (= (and bs!290218 (not res!556173)) b!1256067))

(assert (=> m!1414427 s!183409))

(declare-fun bs!290219 () Bool)

(declare-fun s!183411 () Bool)

(assert (= bs!290219 (and neg-inst!893 s!183411)))

(declare-fun res!556174 () Bool)

(declare-fun e!799361 () Bool)

(assert (=> bs!290219 (=> res!556174 e!799361)))

(assert (=> bs!290219 (= res!556174 (not (= (list!4673 x!243836) (list!4673 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834))))))))

(assert (=> bs!290219 (=> true e!799361)))

(declare-fun b!1256068 () Bool)

(assert (=> b!1256068 (= e!799361 (= (toValue!34 thiss!5119 x!243836) (toValue!34 thiss!5119 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834)))))))

(assert (= (and bs!290219 (not res!556174)) b!1256068))

(assert (=> bs!290213 m!1414437))

(assert (=> bs!290213 m!1414427))

(assert (=> bs!290213 s!183411))

(declare-fun bs!290220 () Bool)

(declare-fun s!183413 () Bool)

(assert (= bs!290220 (and neg-inst!893 s!183413)))

(declare-fun res!556175 () Bool)

(declare-fun e!799362 () Bool)

(assert (=> bs!290220 (=> res!556175 e!799362)))

(assert (=> bs!290220 (= res!556175 (not (= (list!4673 x!243834) (list!4673 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834))))))))

(assert (=> bs!290220 (=> true e!799362)))

(declare-fun b!1256069 () Bool)

(assert (=> b!1256069 (= e!799362 (= (toValue!34 thiss!5119 x!243834) (toValue!34 thiss!5119 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834)))))))

(assert (= (and bs!290220 (not res!556175)) b!1256069))

(assert (=> bs!290215 m!1414433))

(assert (=> bs!290215 m!1414427))

(assert (=> bs!290215 s!183413))

(declare-fun bs!290221 () Bool)

(declare-fun s!183415 () Bool)

(assert (= bs!290221 (and neg-inst!893 s!183415)))

(declare-fun res!556176 () Bool)

(declare-fun e!799363 () Bool)

(assert (=> bs!290221 (=> res!556176 e!799363)))

(assert (=> bs!290221 (= res!556176 (not (= (list!4673 x!243835) (list!4673 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834))))))))

(assert (=> bs!290221 (=> true e!799363)))

(declare-fun b!1256070 () Bool)

(assert (=> b!1256070 (= e!799363 (= (toValue!34 thiss!5119 x!243835) (toValue!34 thiss!5119 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834)))))))

(assert (= (and bs!290221 (not res!556176)) b!1256070))

(assert (=> bs!290217 m!1414435))

(assert (=> bs!290217 m!1414427))

(assert (=> bs!290217 s!183415))

(assert (=> m!1414427 s!183409))

(declare-fun bs!290222 () Bool)

(assert (= bs!290222 (and m!1414435 m!1414445)))

(assert (=> bs!290222 s!183393))

(declare-fun bs!290223 () Bool)

(assert (= bs!290223 (and m!1414435 m!1414427)))

(assert (=> bs!290223 s!183415))

(assert (=> m!1414435 s!183397))

(declare-fun bs!290224 () Bool)

(assert (= bs!290224 (and m!1414435 m!1414443)))

(assert (=> bs!290224 s!183397))

(declare-fun bs!290225 () Bool)

(assert (= bs!290225 (and m!1414435 m!1414431)))

(assert (=> bs!290225 s!183395))

(assert (=> bs!290222 s!183399))

(assert (=> bs!290225 s!183401))

(assert (=> bs!290224 s!183397))

(assert (=> m!1414435 s!183397))

(assert (=> bs!290223 s!183407))

(declare-fun bs!290226 () Bool)

(assert (= bs!290226 (and m!1414437 m!1414445)))

(assert (=> bs!290226 s!183385))

(declare-fun bs!290227 () Bool)

(assert (= bs!290227 (and m!1414437 m!1414431)))

(assert (=> bs!290227 s!183391))

(declare-fun bs!290228 () Bool)

(assert (= bs!290228 (and m!1414437 m!1414427)))

(assert (=> bs!290228 s!183411))

(assert (=> m!1414437 s!183385))

(declare-fun bs!290229 () Bool)

(assert (= bs!290229 (and m!1414437 m!1414443 m!1414435)))

(assert (=> bs!290229 s!183399))

(assert (=> bs!290226 s!183385))

(assert (=> bs!290227 s!183387))

(assert (=> bs!290228 s!183403))

(assert (=> bs!290229 s!183393))

(assert (=> m!1414437 s!183385))

(declare-fun bs!290230 () Bool)

(assert (= bs!290230 (and m!1414433 m!1414443 m!1414435)))

(assert (=> bs!290230 s!183401))

(declare-fun bs!290231 () Bool)

(assert (= bs!290231 (and m!1414433 m!1414445 m!1414437)))

(assert (=> bs!290231 s!183387))

(declare-fun bs!290232 () Bool)

(assert (= bs!290232 (and m!1414433 m!1414431)))

(assert (=> bs!290232 s!183389))

(assert (=> m!1414433 s!183389))

(declare-fun bs!290233 () Bool)

(assert (= bs!290233 (and m!1414433 m!1414427)))

(assert (=> bs!290233 s!183413))

(assert (=> bs!290233 s!183405))

(assert (=> bs!290232 s!183389))

(assert (=> m!1414433 s!183389))

(assert (=> bs!290231 s!183391))

(assert (=> bs!290230 s!183395))

(declare-fun bs!290234 () Bool)

(assert (= bs!290234 (and neg-inst!893 b!1256040)))

(assert (=> bs!290234 (= true inst!893)))

(declare-fun e!799343 () Bool)

(declare-fun e!799341 () Bool)

(assert (=> b!1256039 (= e!799343 e!799341)))

(declare-fun res!556156 () Bool)

(assert (=> b!1256039 (=> res!556156 e!799341)))

(declare-fun lambda!49502 () Int)

(declare-fun lambda!49503 () Int)

(declare-fun semiInverseModEq!805 (Int Int) Bool)

(assert (=> b!1256039 (= res!556156 (not (semiInverseModEq!805 lambda!49502 lambda!49503)))))

(declare-fun lambda!49501 () Int)

(declare-fun Forall!471 (Int) Bool)

(assert (=> b!1256039 (= (semiInverseModEq!805 lambda!49502 lambda!49503) (Forall!471 lambda!49501))))

(declare-fun b!1256042 () Bool)

(declare-fun e!799342 () Bool)

(declare-datatypes ((TokenValueInjection!4156 0))(
  ( (TokenValueInjection!4157 (toValue!3309 Int) (toChars!3168 Int)) )
))
(declare-fun inv!16878 (TokenValueInjection!4156) Bool)

(assert (=> b!1256042 (= e!799342 (inv!16878 (TokenValueInjection!4157 lambda!49503 lambda!49502)))))

(declare-fun e!799340 () Bool)

(assert (=> b!1256040 (= e!799341 e!799340)))

(declare-fun res!556157 () Bool)

(assert (=> b!1256040 (=> res!556157 e!799340)))

(declare-fun lambda!49504 () Int)

(declare-fun Forall2!377 (Int) Bool)

(assert (=> b!1256040 (= res!556157 (not (Forall2!377 lambda!49504)))))

(assert (=> b!1256040 (= (Forall2!377 lambda!49504) inst!893)))

(declare-fun res!556158 () Bool)

(assert (=> start!110668 (=> res!556158 e!799343)))

(assert (=> start!110668 (= res!556158 (not (Forall!471 lambda!49501)))))

(assert (=> start!110668 (= (Forall!471 lambda!49501) inst!892)))

(assert (=> start!110668 (not e!799343)))

(assert (=> start!110668 true))

(declare-fun b!1256041 () Bool)

(assert (=> b!1256041 (= e!799340 e!799342)))

(declare-fun res!556159 () Bool)

(assert (=> b!1256041 (=> res!556159 e!799342)))

(declare-fun equivClasses!768 (Int Int) Bool)

(assert (=> b!1256041 (= res!556159 (not (equivClasses!768 lambda!49502 lambda!49503)))))

(assert (=> b!1256041 (= (equivClasses!768 lambda!49502 lambda!49503) (Forall2!377 lambda!49504))))

(assert (= neg-inst!892 inst!892))

(assert (= (and start!110668 (not res!556158)) b!1256039))

(assert (= (and b!1256039 (not res!556156)) b!1256040))

(assert (= neg-inst!893 inst!893))

(assert (= (and b!1256040 (not res!556157)) b!1256041))

(assert (= (and b!1256041 (not res!556159)) b!1256042))

(declare-fun m!1414451 () Bool)

(assert (=> start!110668 m!1414451))

(assert (=> start!110668 m!1414451))

(declare-fun m!1414453 () Bool)

(assert (=> b!1256040 m!1414453))

(assert (=> b!1256040 m!1414453))

(declare-fun m!1414455 () Bool)

(assert (=> b!1256041 m!1414455))

(assert (=> b!1256041 m!1414455))

(assert (=> b!1256041 m!1414453))

(declare-fun m!1414457 () Bool)

(assert (=> b!1256042 m!1414457))

(declare-fun m!1414459 () Bool)

(assert (=> b!1256039 m!1414459))

(assert (=> b!1256039 m!1414459))

(assert (=> b!1256039 m!1414451))

(push 1)

(assert (not b!1256061))

(assert (not bs!290221))

(assert (not b!1256052))

(assert (not b!1256058))

(assert (not b!1256040))

(assert (not b!1256054))

(assert (not b!1256053))

(assert (not bs!290212))

(assert (not b!1256066))

(assert (not bs!290210))

(assert (not bs!290219))

(assert (not b!1256064))

(assert (not b!1256039))

(assert (not b!1256069))

(assert (not bs!290214))

(assert (not b!1256056))

(assert (not bs!290216))

(assert (not bs!290207))

(assert (not bs!290209))

(assert (not bs!290218))

(assert (not b!1256057))

(assert (not b!1256062))

(assert (not b!1256059))

(assert (not b!1256041))

(assert (not bs!290201))

(assert (not bs!290204))

(assert (not b!1256068))

(assert (not b!1256067))

(assert (not bs!290203))

(assert (not bs!290220))

(assert (not bs!290200))

(assert (not b!1256065))

(assert (not bs!290198))

(assert (not b!1256063))

(assert (not bs!290205))

(assert (not b!1256051))

(assert (not bs!290211))

(assert (not start!110668))

(assert (not b!1256042))

(assert (not b!1256070))

(assert (not b!1256060))

(assert (not b!1256055))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!290269 () Bool)

(assert (= bs!290269 (and m!1414445 b!1256055)))

(assert (=> bs!290269 m!1414445))

(assert (=> bs!290269 m!1414445))

(declare-fun bs!290270 () Bool)

(assert (= bs!290270 (and m!1414431 m!1414445 b!1256056)))

(assert (=> bs!290270 m!1414431))

(assert (=> bs!290270 m!1414445))

(declare-fun bs!290271 () Bool)

(assert (= bs!290271 (and m!1414431 b!1256057)))

(assert (=> bs!290271 m!1414431))

(assert (=> bs!290271 m!1414431))

(declare-fun bs!290272 () Bool)

(assert (= bs!290272 (and m!1414431 m!1414445 b!1256058)))

(assert (=> bs!290272 m!1414445))

(assert (=> bs!290272 m!1414431))

(declare-fun bs!290273 () Bool)

(assert (= bs!290273 (and m!1414443 m!1414445 b!1256059)))

(assert (=> bs!290273 m!1414443))

(assert (=> bs!290273 m!1414445))

(declare-fun bs!290274 () Bool)

(assert (= bs!290274 (and m!1414443 m!1414431 b!1256060)))

(assert (=> bs!290274 m!1414443))

(assert (=> bs!290274 m!1414431))

(declare-fun bs!290275 () Bool)

(assert (= bs!290275 (and m!1414443 b!1256061)))

(assert (=> bs!290275 m!1414443))

(assert (=> bs!290275 m!1414443))

(declare-fun bs!290276 () Bool)

(assert (= bs!290276 (and m!1414443 m!1414445 b!1256062)))

(assert (=> bs!290276 m!1414445))

(assert (=> bs!290276 m!1414443))

(declare-fun bs!290277 () Bool)

(assert (= bs!290277 (and m!1414443 m!1414431 b!1256063)))

(assert (=> bs!290277 m!1414431))

(assert (=> bs!290277 m!1414443))

(declare-fun bs!290278 () Bool)

(assert (= bs!290278 (and m!1414427 m!1414445 b!1256064)))

(declare-fun m!1414499 () Bool)

(assert (=> bs!290278 m!1414499))

(assert (=> bs!290278 m!1414445))

(declare-fun bs!290279 () Bool)

(assert (= bs!290279 (and m!1414427 m!1414431 b!1256065)))

(assert (=> bs!290279 m!1414499))

(assert (=> bs!290279 m!1414431))

(declare-fun bs!290280 () Bool)

(assert (= bs!290280 (and m!1414427 m!1414443 b!1256066)))

(assert (=> bs!290280 m!1414499))

(assert (=> bs!290280 m!1414443))

(declare-fun bs!290281 () Bool)

(assert (= bs!290281 (and m!1414427 b!1256067)))

(assert (=> bs!290281 m!1414499))

(assert (=> bs!290281 m!1414499))

(declare-fun bs!290282 () Bool)

(assert (= bs!290282 (and m!1414427 m!1414445 b!1256068)))

(assert (=> bs!290282 m!1414445))

(assert (=> bs!290282 m!1414499))

(declare-fun bs!290283 () Bool)

(assert (= bs!290283 (and m!1414427 m!1414431 b!1256069)))

(assert (=> bs!290283 m!1414431))

(assert (=> bs!290283 m!1414499))

(declare-fun bs!290284 () Bool)

(assert (= bs!290284 (and m!1414427 m!1414443 b!1256070)))

(assert (=> bs!290284 m!1414443))

(assert (=> bs!290284 m!1414499))

(push 1)

(assert (not b!1256061))

(assert (not bs!290221))

(assert (not b!1256052))

(assert (not b!1256058))

(assert (not b!1256040))

(assert (not b!1256054))

(assert (not b!1256053))

(assert (not bs!290212))

(assert (not b!1256066))

(assert (not bs!290210))

(assert (not bs!290219))

(assert (not b!1256064))

(assert (not b!1256039))

(assert (not b!1256069))

(assert (not bs!290214))

(assert (not b!1256056))

(assert (not bs!290216))

(assert (not bs!290207))

(assert (not bs!290209))

(assert (not bs!290218))

(assert (not b!1256057))

(assert (not b!1256062))

(assert (not b!1256059))

(assert (not b!1256041))

(assert (not bs!290201))

(assert (not bs!290204))

(assert (not b!1256068))

(assert (not b!1256067))

(assert (not bs!290203))

(assert (not bs!290220))

(assert (not bs!290200))

(assert (not b!1256065))

(assert (not bs!290198))

(assert (not b!1256063))

(assert (not bs!290205))

(assert (not b!1256051))

(assert (not bs!290211))

(assert (not start!110668))

(assert (not b!1256042))

(assert (not b!1256070))

(assert (not b!1256060))

(assert (not b!1256055))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!355022 () Bool)

(declare-fun list!4675 (Conc!4116) List!12607)

(assert (=> d!355022 (= (list!4673 x!243834) (list!4675 (c!208545 x!243834)))))

(declare-fun bs!290301 () Bool)

(assert (= bs!290301 d!355022))

(declare-fun m!1414503 () Bool)

(assert (=> bs!290301 m!1414503))

(assert (=> bs!290211 d!355022))

(declare-fun d!355024 () Bool)

(assert (=> d!355024 (= (list!4673 x!243835) (list!4675 (c!208545 x!243835)))))

(declare-fun bs!290302 () Bool)

(assert (= bs!290302 d!355024))

(declare-fun m!1414505 () Bool)

(assert (=> bs!290302 m!1414505))

(assert (=> bs!290211 d!355024))

(declare-fun d!355026 () Bool)

(declare-fun efficientList!167 (BalanceConc!8166) List!12607)

(assert (=> d!355026 (= (toValue!34 thiss!5119 x!243834) (OperatorValue!2241 (efficientList!167 x!243834)))))

(declare-fun bs!290303 () Bool)

(assert (= bs!290303 d!355026))

(declare-fun m!1414507 () Bool)

(assert (=> bs!290303 m!1414507))

(assert (=> b!1256056 d!355026))

(declare-fun d!355028 () Bool)

(assert (=> d!355028 (= (toValue!34 thiss!5119 x!243836) (OperatorValue!2241 (efficientList!167 x!243836)))))

(declare-fun bs!290304 () Bool)

(assert (= bs!290304 d!355028))

(declare-fun m!1414509 () Bool)

(assert (=> bs!290304 m!1414509))

(assert (=> b!1256056 d!355028))

(declare-fun d!355030 () Bool)

(assert (=> d!355030 (= (toValue!34 thiss!5119 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834))) (OperatorValue!2241 (efficientList!167 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834)))))))

(declare-fun bs!290305 () Bool)

(assert (= bs!290305 d!355030))

(assert (=> bs!290305 m!1414425))

(declare-fun m!1414511 () Bool)

(assert (=> bs!290305 m!1414511))

(assert (=> b!1256066 d!355030))

(declare-fun d!355032 () Bool)

(assert (=> d!355032 (= (toValue!34 thiss!5119 x!243835) (OperatorValue!2241 (efficientList!167 x!243835)))))

(declare-fun bs!290306 () Bool)

(assert (= bs!290306 d!355032))

(declare-fun m!1414513 () Bool)

(assert (=> bs!290306 m!1414513))

(assert (=> b!1256066 d!355032))

(assert (=> bs!290207 d!355024))

(assert (=> bs!290207 d!355022))

(assert (=> bs!290221 d!355024))

(declare-fun d!355034 () Bool)

(assert (=> d!355034 (= (list!4673 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834))) (list!4675 (c!208545 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834)))))))

(declare-fun bs!290307 () Bool)

(assert (= bs!290307 d!355034))

(declare-fun m!1414515 () Bool)

(assert (=> bs!290307 m!1414515))

(assert (=> bs!290221 d!355034))

(assert (=> bs!290201 d!355022))

(declare-fun d!355036 () Bool)

(assert (=> d!355036 (= (list!4673 x!243836) (list!4675 (c!208545 x!243836)))))

(declare-fun bs!290308 () Bool)

(assert (= bs!290308 d!355036))

(declare-fun m!1414517 () Bool)

(assert (=> bs!290308 m!1414517))

(assert (=> bs!290201 d!355036))

(assert (=> b!1256059 d!355032))

(assert (=> b!1256059 d!355028))

(assert (=> bs!290216 d!355034))

(assert (=> bs!290216 d!355024))

(assert (=> b!1256069 d!355026))

(assert (=> b!1256069 d!355030))

(declare-fun d!355038 () Bool)

(declare-fun isBalanced!1202 (Conc!4116) Bool)

(assert (=> d!355038 (= (inv!16877 x!243834) (isBalanced!1202 (c!208545 x!243834)))))

(declare-fun bs!290309 () Bool)

(assert (= bs!290309 d!355038))

(declare-fun m!1414519 () Bool)

(assert (=> bs!290309 m!1414519))

(assert (=> start!110668 d!355038))

(assert (=> start!110668 d!355034))

(assert (=> start!110668 d!355026))

(declare-fun d!355040 () Bool)

(declare-fun choose!7851 (Int) Bool)

(assert (=> d!355040 (= (Forall!471 lambda!49501) (choose!7851 lambda!49501))))

(declare-fun bs!290310 () Bool)

(assert (= bs!290310 d!355040))

(declare-fun m!1414521 () Bool)

(assert (=> bs!290310 m!1414521))

(assert (=> start!110668 d!355040))

(assert (=> start!110668 d!355022))

(declare-fun d!355042 () Bool)

(declare-fun c!208550 () Bool)

(assert (=> d!355042 (= c!208550 (is-OperatorValue!2241 (toValue!34 thiss!5119 x!243834)))))

(declare-fun e!799414 () BalanceConc!8166)

(assert (=> d!355042 (= (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243834)) e!799414)))

(declare-fun b!1256131 () Bool)

(declare-fun seqFromList!1577 (List!12607) BalanceConc!8166)

(assert (=> b!1256131 (= e!799414 (seqFromList!1577 (op!2298 (toValue!34 thiss!5119 x!243834))))))

(declare-fun b!1256132 () Bool)

(assert (=> b!1256132 (= e!799414 (BalanceConc!8167 Empty!4116))))

(assert (= (and d!355042 c!208550) b!1256131))

(assert (= (and d!355042 (not c!208550)) b!1256132))

(declare-fun m!1414523 () Bool)

(assert (=> b!1256131 m!1414523))

(assert (=> start!110668 d!355042))

(assert (=> b!1256060 d!355032))

(assert (=> b!1256060 d!355026))

(assert (=> b!1256070 d!355032))

(assert (=> b!1256070 d!355030))

(assert (=> bs!290218 d!355034))

(assert (=> bs!290212 d!355034))

(assert (=> bs!290212 d!355036))

(assert (=> b!1256057 d!355026))

(assert (=> b!1256063 d!355026))

(assert (=> b!1256063 d!355032))

(assert (=> bs!290203 d!355022))

(assert (=> bs!290204 d!355036))

(assert (=> bs!290204 d!355022))

(declare-fun bs!290311 () Bool)

(declare-fun d!355044 () Bool)

(assert (= bs!290311 (and d!355044 start!110668)))

(declare-fun lambda!49543 () Int)

(assert (=> bs!290311 (not (= lambda!49543 lambda!49501))))

(assert (=> d!355044 true))

(declare-fun order!7631 () Int)

(declare-fun order!7633 () Int)

(declare-fun dynLambda!5492 (Int Int) Int)

(declare-fun dynLambda!5493 (Int Int) Int)

(assert (=> d!355044 (< (dynLambda!5492 order!7631 lambda!49502) (dynLambda!5493 order!7633 lambda!49543))))

(assert (=> d!355044 true))

(declare-fun order!7635 () Int)

(declare-fun dynLambda!5494 (Int Int) Int)

(assert (=> d!355044 (< (dynLambda!5494 order!7635 lambda!49503) (dynLambda!5493 order!7633 lambda!49543))))

(assert (=> d!355044 (= (semiInverseModEq!805 lambda!49502 lambda!49503) (Forall!471 lambda!49543))))

(declare-fun bs!290312 () Bool)

(assert (= bs!290312 d!355044))

(declare-fun m!1414525 () Bool)

(assert (=> bs!290312 m!1414525))

(assert (=> b!1256039 d!355044))

(assert (=> b!1256039 d!355040))

(declare-fun d!355046 () Bool)

(declare-fun c!208553 () Bool)

(assert (=> d!355046 (= c!208553 (is-Node!4116 (c!208545 x!243836)))))

(declare-fun e!799419 () Bool)

(assert (=> d!355046 (= (inv!16876 (c!208545 x!243836)) e!799419)))

(declare-fun b!1256143 () Bool)

(declare-fun inv!16882 (Conc!4116) Bool)

(assert (=> b!1256143 (= e!799419 (inv!16882 (c!208545 x!243836)))))

(declare-fun b!1256144 () Bool)

(declare-fun e!799420 () Bool)

(assert (=> b!1256144 (= e!799419 e!799420)))

(declare-fun res!556224 () Bool)

(assert (=> b!1256144 (= res!556224 (not (is-Leaf!6372 (c!208545 x!243836))))))

(assert (=> b!1256144 (=> res!556224 e!799420)))

(declare-fun b!1256145 () Bool)

(declare-fun inv!16883 (Conc!4116) Bool)

(assert (=> b!1256145 (= e!799420 (inv!16883 (c!208545 x!243836)))))

(assert (= (and d!355046 c!208553) b!1256143))

(assert (= (and d!355046 (not c!208553)) b!1256144))

(assert (= (and b!1256144 (not res!556224)) b!1256145))

(declare-fun m!1414527 () Bool)

(assert (=> b!1256143 m!1414527))

(declare-fun m!1414529 () Bool)

(assert (=> b!1256145 m!1414529))

(assert (=> b!1256054 d!355046))

(assert (=> bs!290219 d!355036))

(assert (=> bs!290219 d!355034))

(declare-fun d!355048 () Bool)

(assert (=> d!355048 (= (inv!16877 x!243836) (isBalanced!1202 (c!208545 x!243836)))))

(declare-fun bs!290313 () Bool)

(assert (= bs!290313 d!355048))

(declare-fun m!1414531 () Bool)

(assert (=> bs!290313 m!1414531))

(assert (=> b!1256040 d!355048))

(assert (=> b!1256040 d!355036))

(declare-fun d!355050 () Bool)

(assert (=> d!355050 (= (inv!16877 x!243835) (isBalanced!1202 (c!208545 x!243835)))))

(declare-fun bs!290314 () Bool)

(assert (= bs!290314 d!355050))

(declare-fun m!1414533 () Bool)

(assert (=> bs!290314 m!1414533))

(assert (=> b!1256040 d!355050))

(declare-fun d!355052 () Bool)

(declare-fun choose!7852 (Int) Bool)

(assert (=> d!355052 (= (Forall2!377 lambda!49504) (choose!7852 lambda!49504))))

(declare-fun bs!290315 () Bool)

(assert (= bs!290315 d!355052))

(declare-fun m!1414535 () Bool)

(assert (=> bs!290315 m!1414535))

(assert (=> b!1256040 d!355052))

(assert (=> b!1256040 d!355024))

(assert (=> b!1256061 d!355032))

(assert (=> bs!290214 d!355034))

(assert (=> bs!290214 d!355022))

(assert (=> bs!290200 d!355036))

(declare-fun d!355054 () Bool)

(declare-fun c!208554 () Bool)

(assert (=> d!355054 (= c!208554 (is-Node!4116 (c!208545 x!243834)))))

(declare-fun e!799421 () Bool)

(assert (=> d!355054 (= (inv!16876 (c!208545 x!243834)) e!799421)))

(declare-fun b!1256146 () Bool)

(assert (=> b!1256146 (= e!799421 (inv!16882 (c!208545 x!243834)))))

(declare-fun b!1256147 () Bool)

(declare-fun e!799422 () Bool)

(assert (=> b!1256147 (= e!799421 e!799422)))

(declare-fun res!556225 () Bool)

(assert (=> b!1256147 (= res!556225 (not (is-Leaf!6372 (c!208545 x!243834))))))

(assert (=> b!1256147 (=> res!556225 e!799422)))

(declare-fun b!1256148 () Bool)

(assert (=> b!1256148 (= e!799422 (inv!16883 (c!208545 x!243834)))))

(assert (= (and d!355054 c!208554) b!1256146))

(assert (= (and d!355054 (not c!208554)) b!1256147))

(assert (= (and b!1256147 (not res!556225)) b!1256148))

(declare-fun m!1414537 () Bool)

(assert (=> b!1256146 m!1414537))

(declare-fun m!1414539 () Bool)

(assert (=> b!1256148 m!1414539))

(assert (=> b!1256051 d!355054))

(assert (=> b!1256067 d!355030))

(assert (=> bs!290198 d!355034))

(assert (=> bs!290198 d!355042))

(assert (=> bs!290198 d!355026))

(assert (=> bs!290198 d!355022))

(assert (=> b!1256064 d!355030))

(assert (=> b!1256064 d!355028))

(assert (=> b!1256052 d!355032))

(assert (=> b!1256052 d!355028))

(assert (=> bs!290209 d!355024))

(declare-fun d!355056 () Bool)

(declare-fun c!208555 () Bool)

(assert (=> d!355056 (= c!208555 (is-Node!4116 (c!208545 x!243835)))))

(declare-fun e!799423 () Bool)

(assert (=> d!355056 (= (inv!16876 (c!208545 x!243835)) e!799423)))

(declare-fun b!1256149 () Bool)

(assert (=> b!1256149 (= e!799423 (inv!16882 (c!208545 x!243835)))))

(declare-fun b!1256150 () Bool)

(declare-fun e!799424 () Bool)

(assert (=> b!1256150 (= e!799423 e!799424)))

(declare-fun res!556226 () Bool)

(assert (=> b!1256150 (= res!556226 (not (is-Leaf!6372 (c!208545 x!243835))))))

(assert (=> b!1256150 (=> res!556226 e!799424)))

(declare-fun b!1256151 () Bool)

(assert (=> b!1256151 (= e!799424 (inv!16883 (c!208545 x!243835)))))

(assert (= (and d!355056 c!208555) b!1256149))

(assert (= (and d!355056 (not c!208555)) b!1256150))

(assert (= (and b!1256150 (not res!556226)) b!1256151))

(declare-fun m!1414541 () Bool)

(assert (=> b!1256149 m!1414541))

(declare-fun m!1414543 () Bool)

(assert (=> b!1256151 m!1414543))

(assert (=> b!1256053 d!355056))

(assert (=> b!1256055 d!355028))

(assert (=> b!1256065 d!355030))

(assert (=> b!1256065 d!355026))

(assert (=> bs!290205 d!355024))

(assert (=> bs!290205 d!355036))

(assert (=> bs!290220 d!355022))

(assert (=> bs!290220 d!355034))

(assert (=> b!1256062 d!355028))

(assert (=> b!1256062 d!355032))

(declare-fun bs!290316 () Bool)

(declare-fun d!355058 () Bool)

(assert (= bs!290316 (and d!355058 b!1256040)))

(declare-fun lambda!49546 () Int)

(assert (=> bs!290316 (not (= lambda!49546 lambda!49504))))

(assert (=> d!355058 true))

(declare-fun order!7637 () Int)

(declare-fun dynLambda!5495 (Int Int) Int)

(assert (=> d!355058 (< (dynLambda!5494 order!7635 lambda!49503) (dynLambda!5495 order!7637 lambda!49546))))

(assert (=> d!355058 (= (equivClasses!768 lambda!49502 lambda!49503) (Forall2!377 lambda!49546))))

(declare-fun bs!290317 () Bool)

(assert (= bs!290317 d!355058))

(declare-fun m!1414545 () Bool)

(assert (=> bs!290317 m!1414545))

(assert (=> b!1256041 d!355058))

(assert (=> b!1256041 d!355052))

(assert (=> b!1256058 d!355028))

(assert (=> b!1256058 d!355026))

(declare-fun d!355060 () Bool)

(declare-fun res!556233 () Bool)

(declare-fun e!799429 () Bool)

(assert (=> d!355060 (=> (not res!556233) (not e!799429))))

(assert (=> d!355060 (= res!556233 (semiInverseModEq!805 (toChars!3168 (TokenValueInjection!4157 lambda!49503 lambda!49502)) (toValue!3309 (TokenValueInjection!4157 lambda!49503 lambda!49502))))))

(assert (=> d!355060 (= (inv!16878 (TokenValueInjection!4157 lambda!49503 lambda!49502)) e!799429)))

(declare-fun b!1256158 () Bool)

(assert (=> b!1256158 (= e!799429 (equivClasses!768 (toChars!3168 (TokenValueInjection!4157 lambda!49503 lambda!49502)) (toValue!3309 (TokenValueInjection!4157 lambda!49503 lambda!49502))))))

(assert (= (and d!355060 res!556233) b!1256158))

(declare-fun m!1414547 () Bool)

(assert (=> d!355060 m!1414547))

(declare-fun m!1414549 () Bool)

(assert (=> b!1256158 m!1414549))

(assert (=> b!1256042 d!355060))

(assert (=> b!1256068 d!355028))

(assert (=> b!1256068 d!355030))

(assert (=> bs!290210 d!355036))

(assert (=> bs!290210 d!355024))

(declare-fun tp!370414 () Bool)

(declare-fun tp!370415 () Bool)

(declare-fun b!1256165 () Bool)

(declare-fun e!799434 () Bool)

(assert (=> b!1256165 (= e!799434 (and (inv!16876 (left!10845 (c!208545 x!243836))) tp!370414 (inv!16876 (right!11175 (c!208545 x!243836))) tp!370415))))

(declare-fun b!1256166 () Bool)

(declare-fun inv!16884 (IArray!8237) Bool)

(assert (=> b!1256166 (= e!799434 (inv!16884 (xs!6827 (c!208545 x!243836))))))

(assert (=> b!1256054 (= tp!370400 (and (inv!16876 (c!208545 x!243836)) e!799434))))

(assert (= (and b!1256054 (is-Node!4116 (c!208545 x!243836))) b!1256165))

(assert (= (and b!1256054 (is-Leaf!6372 (c!208545 x!243836))) b!1256166))

(declare-fun m!1414551 () Bool)

(assert (=> b!1256165 m!1414551))

(declare-fun m!1414553 () Bool)

(assert (=> b!1256165 m!1414553))

(declare-fun m!1414555 () Bool)

(assert (=> b!1256166 m!1414555))

(assert (=> b!1256054 m!1414449))

(declare-fun e!799436 () Bool)

(declare-fun tp!370416 () Bool)

(declare-fun tp!370417 () Bool)

(declare-fun b!1256167 () Bool)

(assert (=> b!1256167 (= e!799436 (and (inv!16876 (left!10845 (c!208545 x!243834))) tp!370416 (inv!16876 (right!11175 (c!208545 x!243834))) tp!370417))))

(declare-fun b!1256168 () Bool)

(assert (=> b!1256168 (= e!799436 (inv!16884 (xs!6827 (c!208545 x!243834))))))

(assert (=> b!1256051 (= tp!370398 (and (inv!16876 (c!208545 x!243834)) e!799436))))

(assert (= (and b!1256051 (is-Node!4116 (c!208545 x!243834))) b!1256167))

(assert (= (and b!1256051 (is-Leaf!6372 (c!208545 x!243834))) b!1256168))

(declare-fun m!1414557 () Bool)

(assert (=> b!1256167 m!1414557))

(declare-fun m!1414559 () Bool)

(assert (=> b!1256167 m!1414559))

(declare-fun m!1414561 () Bool)

(assert (=> b!1256168 m!1414561))

(assert (=> b!1256051 m!1414423))

(declare-fun e!799438 () Bool)

(declare-fun tp!370419 () Bool)

(declare-fun b!1256169 () Bool)

(declare-fun tp!370418 () Bool)

(assert (=> b!1256169 (= e!799438 (and (inv!16876 (left!10845 (c!208545 x!243835))) tp!370418 (inv!16876 (right!11175 (c!208545 x!243835))) tp!370419))))

(declare-fun b!1256170 () Bool)

(assert (=> b!1256170 (= e!799438 (inv!16884 (xs!6827 (c!208545 x!243835))))))

(assert (=> b!1256053 (= tp!370399 (and (inv!16876 (c!208545 x!243835)) e!799438))))

(assert (= (and b!1256053 (is-Node!4116 (c!208545 x!243835))) b!1256169))

(assert (= (and b!1256053 (is-Leaf!6372 (c!208545 x!243835))) b!1256170))

(declare-fun m!1414563 () Bool)

(assert (=> b!1256169 m!1414563))

(declare-fun m!1414565 () Bool)

(assert (=> b!1256169 m!1414565))

(declare-fun m!1414567 () Bool)

(assert (=> b!1256170 m!1414567))

(assert (=> b!1256053 m!1414447))

(push 1)

(assert (not d!355026))

(assert (not d!355052))

(assert (not b!1256148))

(assert (not b!1256054))

(assert (not b!1256053))

(assert (not b!1256051))

(assert (not b!1256165))

(assert (not b!1256166))

(assert (not d!355050))

(assert (not b!1256146))

(assert (not d!355058))

(assert (not d!355048))

(assert (not d!355036))

(assert (not d!355030))

(assert (not b!1256170))

(assert (not b!1256168))

(assert (not d!355028))

(assert (not b!1256145))

(assert (not b!1256149))

(assert (not d!355040))

(assert (not b!1256131))

(assert (not d!355044))

(assert (not b!1256169))

(assert (not b!1256158))

(assert (not d!355032))

(assert (not d!355024))

(assert (not d!355034))

(assert (not d!355022))

(assert (not b!1256167))

(assert (not b!1256143))

(assert (not d!355038))

(assert (not d!355060))

(assert (not b!1256151))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

