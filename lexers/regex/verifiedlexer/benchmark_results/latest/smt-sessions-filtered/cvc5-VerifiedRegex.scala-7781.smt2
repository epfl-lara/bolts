; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!408852 () Bool)

(assert start!408852)

(assert (=> start!408852 true))

(declare-fun b!4266506 () Bool)

(assert (=> b!4266506 true))

(assert (=> b!4266506 true))

(assert (=> b!4266506 true))

(declare-fun b!4266515 () Bool)

(declare-fun e!2649024 () Bool)

(declare-datatypes ((List!47394 0))(
  ( (Nil!47270) (Cons!47270 (h!52690 (_ BitVec 16)) (t!353485 List!47394)) )
))
(declare-datatypes ((IArray!28509 0))(
  ( (IArray!28510 (innerList!14312 List!47394)) )
))
(declare-datatypes ((Conc!14252 0))(
  ( (Node!14252 (left!35047 Conc!14252) (right!35377 Conc!14252) (csize!28734 Int) (cheight!14463 Int)) (Leaf!22034 (xs!17558 IArray!28509) (csize!28735 Int)) (Empty!14252) )
))
(declare-datatypes ((BalanceConc!28014 0))(
  ( (BalanceConc!28015 (c!725312 Conc!14252)) )
))
(declare-fun x!738191 () BalanceConc!28014)

(declare-fun tp!1307519 () Bool)

(declare-fun inv!62203 (Conc!14252) Bool)

(assert (=> b!4266515 (= e!2649024 (and (inv!62203 (c!725312 x!738191)) tp!1307519))))

(declare-datatypes ((OperatorValueInjection!32 0))(
  ( (OperatorValueInjection!33) )
))
(declare-fun thiss!2520 () OperatorValueInjection!32)

(declare-fun inst!1564 () Bool)

(declare-fun inv!62204 (BalanceConc!28014) Bool)

(declare-fun list!17079 (BalanceConc!28014) List!47394)

(declare-datatypes ((TokenValue!8225 0))(
  ( (FloatLiteralValue!16450 (text!58020 List!47394)) (TokenValueExt!8224 (__x!28671 Int)) (Broken!41125 (value!248440 List!47394)) (Object!8348) (End!8225) (Def!8225) (Underscore!8225) (Match!8225) (Else!8225) (Error!8225) (Case!8225) (If!8225) (Extends!8225) (Abstract!8225) (Class!8225) (Val!8225) (DelimiterValue!16450 (del!8285 List!47394)) (KeywordValue!8231 (value!248441 List!47394)) (CommentValue!16450 (value!248442 List!47394)) (WhitespaceValue!16450 (value!248443 List!47394)) (IndentationValue!8225 (value!248444 List!47394)) (String!55152) (Int32!8225) (Broken!41126 (value!248445 List!47394)) (Boolean!8226) (Unit!66155) (OperatorValue!8228 (op!8285 List!47394)) (IdentifierValue!16450 (value!248446 List!47394)) (IdentifierValue!16451 (value!248447 List!47394)) (WhitespaceValue!16451 (value!248448 List!47394)) (True!16450) (False!16450) (Broken!41127 (value!248449 List!47394)) (Broken!41128 (value!248450 List!47394)) (True!16451) (RightBrace!8225) (RightBracket!8225) (Colon!8225) (Null!8225) (Comma!8225) (LeftBracket!8225) (False!16451) (LeftBrace!8225) (ImaginaryLiteralValue!8225 (text!58021 List!47394)) (StringLiteralValue!24675 (value!248451 List!47394)) (EOFValue!8225 (value!248452 List!47394)) (IdentValue!8225 (value!248453 List!47394)) (DelimiterValue!16451 (value!248454 List!47394)) (DedentValue!8225 (value!248455 List!47394)) (NewLineValue!8225 (value!248456 List!47394)) (IntegerValue!24675 (value!248457 (_ BitVec 32)) (text!58022 List!47394)) (IntegerValue!24676 (value!248458 Int) (text!58023 List!47394)) (Times!8225) (Or!8225) (Equal!8225) (Minus!8225) (Broken!41129 (value!248459 List!47394)) (And!8225) (Div!8225) (LessEqual!8225) (Mod!8225) (Concat!21123) (Not!8225) (Plus!8225) (SpaceValue!8225 (value!248460 List!47394)) (IntegerValue!24677 (value!248461 Int) (text!58024 List!47394)) (StringLiteralValue!24676 (text!58025 List!47394)) (FloatLiteralValue!16451 (text!58026 List!47394)) (BytesLiteralValue!8225 (value!248462 List!47394)) (CommentValue!16451 (value!248463 List!47394)) (StringLiteralValue!24677 (value!248464 List!47394)) (ErrorTokenValue!8225 (msg!8286 List!47394)) )
))
(declare-fun toCharacters!10 (OperatorValueInjection!32 TokenValue!8225) BalanceConc!28014)

(declare-fun toValue!17 (OperatorValueInjection!32 BalanceConc!28014) TokenValue!8225)

(assert (=> start!408852 (= inst!1564 (=> (and (inv!62204 x!738191) e!2649024) (= (list!17079 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))) (list!17079 x!738191))))))

(assert (= start!408852 b!4266515))

(declare-fun m!4858329 () Bool)

(assert (=> b!4266515 m!4858329))

(declare-fun m!4858331 () Bool)

(assert (=> start!408852 m!4858331))

(declare-fun m!4858333 () Bool)

(assert (=> start!408852 m!4858333))

(assert (=> start!408852 m!4858331))

(declare-fun m!4858335 () Bool)

(assert (=> start!408852 m!4858335))

(declare-fun m!4858337 () Bool)

(assert (=> start!408852 m!4858337))

(assert (=> start!408852 m!4858333))

(declare-fun m!4858339 () Bool)

(assert (=> start!408852 m!4858339))

(declare-fun res!1753210 () Bool)

(declare-fun e!2649025 () Bool)

(assert (=> b!4266506 (=> res!1753210 e!2649025)))

(declare-fun x!738192 () BalanceConc!28014)

(declare-fun x!738193 () BalanceConc!28014)

(assert (=> b!4266506 (= res!1753210 (not (= (list!17079 x!738192) (list!17079 x!738193))))))

(declare-fun e!2649027 () Bool)

(declare-fun inst!1565 () Bool)

(declare-fun e!2649026 () Bool)

(assert (=> b!4266506 (= inst!1565 (=> (and (inv!62204 x!738192) e!2649026 (inv!62204 x!738193) e!2649027) e!2649025))))

(declare-fun b!4266516 () Bool)

(assert (=> b!4266516 (= e!2649025 (= (toValue!17 thiss!2520 x!738192) (toValue!17 thiss!2520 x!738193)))))

(declare-fun b!4266517 () Bool)

(declare-fun tp!1307521 () Bool)

(assert (=> b!4266517 (= e!2649026 (and (inv!62203 (c!725312 x!738192)) tp!1307521))))

(declare-fun b!4266518 () Bool)

(declare-fun tp!1307520 () Bool)

(assert (=> b!4266518 (= e!2649027 (and (inv!62203 (c!725312 x!738193)) tp!1307520))))

(assert (= (and b!4266506 (not res!1753210)) b!4266516))

(assert (= b!4266506 b!4266517))

(assert (= b!4266506 b!4266518))

(declare-fun m!4858341 () Bool)

(assert (=> b!4266506 m!4858341))

(declare-fun m!4858343 () Bool)

(assert (=> b!4266506 m!4858343))

(declare-fun m!4858345 () Bool)

(assert (=> b!4266506 m!4858345))

(declare-fun m!4858347 () Bool)

(assert (=> b!4266506 m!4858347))

(declare-fun m!4858349 () Bool)

(assert (=> b!4266516 m!4858349))

(declare-fun m!4858351 () Bool)

(assert (=> b!4266516 m!4858351))

(declare-fun m!4858353 () Bool)

(assert (=> b!4266517 m!4858353))

(declare-fun m!4858355 () Bool)

(assert (=> b!4266518 m!4858355))

(declare-fun bs!599340 () Bool)

(declare-fun neg-inst!1564 () Bool)

(declare-fun s!239102 () Bool)

(assert (= bs!599340 (and neg-inst!1564 s!239102)))

(assert (=> bs!599340 (=> true (= (list!17079 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))) (list!17079 x!738191)))))

(assert (=> m!4858337 m!4858331))

(assert (=> m!4858337 m!4858333))

(assert (=> m!4858337 m!4858339))

(assert (=> m!4858337 s!239102))

(assert (=> m!4858331 s!239102))

(declare-fun bs!599341 () Bool)

(assert (= bs!599341 (and neg-inst!1564 start!408852)))

(assert (=> bs!599341 (= true inst!1564)))

(declare-fun bs!599342 () Bool)

(declare-fun neg-inst!1565 () Bool)

(declare-fun s!239104 () Bool)

(assert (= bs!599342 (and neg-inst!1565 s!239104)))

(declare-fun res!1753211 () Bool)

(declare-fun e!2649028 () Bool)

(assert (=> bs!599342 (=> res!1753211 e!2649028)))

(assert (=> bs!599342 (= res!1753211 (not (= (list!17079 x!738192) (list!17079 x!738192))))))

(assert (=> bs!599342 (=> true e!2649028)))

(declare-fun b!4266519 () Bool)

(assert (=> b!4266519 (= e!2649028 (= (toValue!17 thiss!2520 x!738192) (toValue!17 thiss!2520 x!738192)))))

(assert (= (and bs!599342 (not res!1753211)) b!4266519))

(assert (=> m!4858341 s!239104))

(assert (=> m!4858341 s!239104))

(declare-fun bs!599343 () Bool)

(declare-fun s!239106 () Bool)

(assert (= bs!599343 (and neg-inst!1565 s!239106)))

(declare-fun res!1753212 () Bool)

(declare-fun e!2649029 () Bool)

(assert (=> bs!599343 (=> res!1753212 e!2649029)))

(assert (=> bs!599343 (= res!1753212 (not (= (list!17079 x!738192) (list!17079 x!738191))))))

(assert (=> bs!599343 (=> true e!2649029)))

(declare-fun b!4266520 () Bool)

(assert (=> b!4266520 (= e!2649029 (= (toValue!17 thiss!2520 x!738192) (toValue!17 thiss!2520 x!738191)))))

(assert (= (and bs!599343 (not res!1753212)) b!4266520))

(declare-fun bs!599344 () Bool)

(assert (= bs!599344 (and m!4858337 m!4858341)))

(assert (=> bs!599344 m!4858341))

(assert (=> bs!599344 m!4858337))

(assert (=> bs!599344 s!239106))

(declare-fun bs!599345 () Bool)

(declare-fun s!239108 () Bool)

(assert (= bs!599345 (and neg-inst!1565 s!239108)))

(declare-fun res!1753213 () Bool)

(declare-fun e!2649030 () Bool)

(assert (=> bs!599345 (=> res!1753213 e!2649030)))

(assert (=> bs!599345 (= res!1753213 (not (= (list!17079 x!738191) (list!17079 x!738191))))))

(assert (=> bs!599345 (=> true e!2649030)))

(declare-fun b!4266521 () Bool)

(assert (=> b!4266521 (= e!2649030 (= (toValue!17 thiss!2520 x!738191) (toValue!17 thiss!2520 x!738191)))))

(assert (= (and bs!599345 (not res!1753213)) b!4266521))

(assert (=> m!4858337 s!239108))

(declare-fun bs!599346 () Bool)

(declare-fun s!239110 () Bool)

(assert (= bs!599346 (and neg-inst!1565 s!239110)))

(declare-fun res!1753214 () Bool)

(declare-fun e!2649031 () Bool)

(assert (=> bs!599346 (=> res!1753214 e!2649031)))

(assert (=> bs!599346 (= res!1753214 (not (= (list!17079 x!738191) (list!17079 x!738192))))))

(assert (=> bs!599346 (=> true e!2649031)))

(declare-fun b!4266522 () Bool)

(assert (=> b!4266522 (= e!2649031 (= (toValue!17 thiss!2520 x!738191) (toValue!17 thiss!2520 x!738192)))))

(assert (= (and bs!599346 (not res!1753214)) b!4266522))

(assert (=> bs!599344 m!4858337))

(assert (=> bs!599344 m!4858341))

(assert (=> bs!599344 s!239110))

(assert (=> m!4858337 s!239108))

(declare-fun bs!599347 () Bool)

(assert (= bs!599347 (and m!4858349 m!4858341)))

(assert (=> bs!599347 s!239104))

(declare-fun bs!599348 () Bool)

(assert (= bs!599348 (and m!4858349 m!4858337)))

(assert (=> bs!599348 s!239110))

(assert (=> m!4858349 s!239104))

(assert (=> bs!599347 s!239104))

(assert (=> bs!599348 s!239106))

(assert (=> m!4858349 s!239104))

(declare-fun bs!599349 () Bool)

(assert (= bs!599349 (and m!4858331 m!4858341 m!4858349)))

(assert (=> bs!599349 s!239106))

(declare-fun bs!599350 () Bool)

(assert (= bs!599350 (and m!4858331 m!4858337)))

(assert (=> bs!599350 s!239108))

(assert (=> m!4858331 s!239108))

(assert (=> bs!599349 s!239110))

(assert (=> bs!599350 s!239108))

(assert (=> m!4858331 s!239108))

(declare-fun bs!599351 () Bool)

(declare-fun s!239112 () Bool)

(assert (= bs!599351 (and neg-inst!1565 s!239112)))

(declare-fun res!1753215 () Bool)

(declare-fun e!2649032 () Bool)

(assert (=> bs!599351 (=> res!1753215 e!2649032)))

(assert (=> bs!599351 (= res!1753215 (not (= (list!17079 x!738192) (list!17079 x!738193))))))

(assert (=> bs!599351 (=> true e!2649032)))

(declare-fun b!4266523 () Bool)

(assert (=> b!4266523 (= e!2649032 (= (toValue!17 thiss!2520 x!738192) (toValue!17 thiss!2520 x!738193)))))

(assert (= (and bs!599351 (not res!1753215)) b!4266523))

(declare-fun bs!599352 () Bool)

(assert (= bs!599352 (and m!4858343 m!4858341 m!4858349)))

(assert (=> bs!599352 m!4858341))

(assert (=> bs!599352 m!4858343))

(assert (=> bs!599352 s!239112))

(declare-fun bs!599353 () Bool)

(declare-fun s!239114 () Bool)

(assert (= bs!599353 (and neg-inst!1565 s!239114)))

(declare-fun res!1753216 () Bool)

(declare-fun e!2649033 () Bool)

(assert (=> bs!599353 (=> res!1753216 e!2649033)))

(assert (=> bs!599353 (= res!1753216 (not (= (list!17079 x!738191) (list!17079 x!738193))))))

(assert (=> bs!599353 (=> true e!2649033)))

(declare-fun b!4266524 () Bool)

(assert (=> b!4266524 (= e!2649033 (= (toValue!17 thiss!2520 x!738191) (toValue!17 thiss!2520 x!738193)))))

(assert (= (and bs!599353 (not res!1753216)) b!4266524))

(declare-fun bs!599354 () Bool)

(assert (= bs!599354 (and m!4858343 m!4858337 m!4858331)))

(assert (=> bs!599354 m!4858337))

(assert (=> bs!599354 m!4858343))

(assert (=> bs!599354 s!239114))

(declare-fun bs!599355 () Bool)

(declare-fun s!239116 () Bool)

(assert (= bs!599355 (and neg-inst!1565 s!239116)))

(declare-fun res!1753217 () Bool)

(declare-fun e!2649034 () Bool)

(assert (=> bs!599355 (=> res!1753217 e!2649034)))

(assert (=> bs!599355 (= res!1753217 (not (= (list!17079 x!738193) (list!17079 x!738193))))))

(assert (=> bs!599355 (=> true e!2649034)))

(declare-fun b!4266525 () Bool)

(assert (=> b!4266525 (= e!2649034 (= (toValue!17 thiss!2520 x!738193) (toValue!17 thiss!2520 x!738193)))))

(assert (= (and bs!599355 (not res!1753217)) b!4266525))

(assert (=> m!4858343 s!239116))

(declare-fun bs!599356 () Bool)

(declare-fun s!239118 () Bool)

(assert (= bs!599356 (and neg-inst!1565 s!239118)))

(declare-fun res!1753218 () Bool)

(declare-fun e!2649035 () Bool)

(assert (=> bs!599356 (=> res!1753218 e!2649035)))

(assert (=> bs!599356 (= res!1753218 (not (= (list!17079 x!738193) (list!17079 x!738192))))))

(assert (=> bs!599356 (=> true e!2649035)))

(declare-fun b!4266526 () Bool)

(assert (=> b!4266526 (= e!2649035 (= (toValue!17 thiss!2520 x!738193) (toValue!17 thiss!2520 x!738192)))))

(assert (= (and bs!599356 (not res!1753218)) b!4266526))

(assert (=> bs!599352 m!4858343))

(assert (=> bs!599352 m!4858341))

(assert (=> bs!599352 s!239118))

(declare-fun bs!599357 () Bool)

(declare-fun s!239120 () Bool)

(assert (= bs!599357 (and neg-inst!1565 s!239120)))

(declare-fun res!1753219 () Bool)

(declare-fun e!2649036 () Bool)

(assert (=> bs!599357 (=> res!1753219 e!2649036)))

(assert (=> bs!599357 (= res!1753219 (not (= (list!17079 x!738193) (list!17079 x!738191))))))

(assert (=> bs!599357 (=> true e!2649036)))

(declare-fun b!4266527 () Bool)

(assert (=> b!4266527 (= e!2649036 (= (toValue!17 thiss!2520 x!738193) (toValue!17 thiss!2520 x!738191)))))

(assert (= (and bs!599357 (not res!1753219)) b!4266527))

(assert (=> bs!599354 m!4858343))

(assert (=> bs!599354 m!4858337))

(assert (=> bs!599354 s!239120))

(assert (=> m!4858343 s!239116))

(declare-fun bs!599358 () Bool)

(assert (= bs!599358 (and m!4858351 m!4858341 m!4858349)))

(assert (=> bs!599358 s!239112))

(declare-fun bs!599359 () Bool)

(assert (= bs!599359 (and m!4858351 m!4858343)))

(assert (=> bs!599359 s!239116))

(declare-fun bs!599360 () Bool)

(assert (= bs!599360 (and m!4858351 m!4858337 m!4858331)))

(assert (=> bs!599360 s!239114))

(assert (=> m!4858351 s!239116))

(assert (=> bs!599358 s!239118))

(assert (=> bs!599359 s!239116))

(assert (=> bs!599360 s!239120))

(assert (=> m!4858351 s!239116))

(declare-fun bs!599361 () Bool)

(declare-fun s!239122 () Bool)

(assert (= bs!599361 (and neg-inst!1565 s!239122)))

(declare-fun res!1753220 () Bool)

(declare-fun e!2649037 () Bool)

(assert (=> bs!599361 (=> res!1753220 e!2649037)))

(assert (=> bs!599361 (= res!1753220 (not (= (list!17079 x!738192) (list!17079 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))))))))

(assert (=> bs!599361 (=> true e!2649037)))

(declare-fun b!4266528 () Bool)

(assert (=> b!4266528 (= e!2649037 (= (toValue!17 thiss!2520 x!738192) (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191)))))))

(assert (= (and bs!599361 (not res!1753220)) b!4266528))

(declare-fun bs!599362 () Bool)

(assert (= bs!599362 (and m!4858339 m!4858341 m!4858349)))

(assert (=> bs!599362 m!4858341))

(assert (=> bs!599362 m!4858339))

(assert (=> bs!599362 s!239122))

(declare-fun bs!599363 () Bool)

(declare-fun s!239124 () Bool)

(assert (= bs!599363 (and neg-inst!1565 s!239124)))

(declare-fun res!1753221 () Bool)

(declare-fun e!2649038 () Bool)

(assert (=> bs!599363 (=> res!1753221 e!2649038)))

(assert (=> bs!599363 (= res!1753221 (not (= (list!17079 x!738193) (list!17079 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))))))))

(assert (=> bs!599363 (=> true e!2649038)))

(declare-fun b!4266529 () Bool)

(assert (=> b!4266529 (= e!2649038 (= (toValue!17 thiss!2520 x!738193) (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191)))))))

(assert (= (and bs!599363 (not res!1753221)) b!4266529))

(declare-fun bs!599364 () Bool)

(assert (= bs!599364 (and m!4858339 m!4858343 m!4858351)))

(assert (=> bs!599364 m!4858343))

(assert (=> bs!599364 m!4858339))

(assert (=> bs!599364 s!239124))

(declare-fun bs!599365 () Bool)

(declare-fun s!239126 () Bool)

(assert (= bs!599365 (and neg-inst!1565 s!239126)))

(declare-fun res!1753222 () Bool)

(declare-fun e!2649039 () Bool)

(assert (=> bs!599365 (=> res!1753222 e!2649039)))

(assert (=> bs!599365 (= res!1753222 (not (= (list!17079 x!738191) (list!17079 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))))))))

(assert (=> bs!599365 (=> true e!2649039)))

(declare-fun b!4266530 () Bool)

(assert (=> b!4266530 (= e!2649039 (= (toValue!17 thiss!2520 x!738191) (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191)))))))

(assert (= (and bs!599365 (not res!1753222)) b!4266530))

(declare-fun bs!599366 () Bool)

(assert (= bs!599366 (and m!4858339 m!4858337 m!4858331)))

(assert (=> bs!599366 m!4858337))

(assert (=> bs!599366 m!4858339))

(assert (=> bs!599366 s!239126))

(declare-fun bs!599367 () Bool)

(declare-fun s!239128 () Bool)

(assert (= bs!599367 (and neg-inst!1565 s!239128)))

(declare-fun res!1753223 () Bool)

(declare-fun e!2649040 () Bool)

(assert (=> bs!599367 (=> res!1753223 e!2649040)))

(assert (=> bs!599367 (= res!1753223 (not (= (list!17079 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))) (list!17079 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))))))))

(assert (=> bs!599367 (=> true e!2649040)))

(declare-fun b!4266531 () Bool)

(assert (=> b!4266531 (= e!2649040 (= (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))) (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191)))))))

(assert (= (and bs!599367 (not res!1753223)) b!4266531))

(assert (=> m!4858339 s!239128))

(declare-fun bs!599368 () Bool)

(declare-fun s!239130 () Bool)

(assert (= bs!599368 (and neg-inst!1565 s!239130)))

(declare-fun res!1753224 () Bool)

(declare-fun e!2649041 () Bool)

(assert (=> bs!599368 (=> res!1753224 e!2649041)))

(assert (=> bs!599368 (= res!1753224 (not (= (list!17079 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))) (list!17079 x!738192))))))

(assert (=> bs!599368 (=> true e!2649041)))

(declare-fun b!4266532 () Bool)

(assert (=> b!4266532 (= e!2649041 (= (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))) (toValue!17 thiss!2520 x!738192)))))

(assert (= (and bs!599368 (not res!1753224)) b!4266532))

(assert (=> bs!599362 m!4858339))

(assert (=> bs!599362 m!4858341))

(assert (=> bs!599362 s!239130))

(declare-fun bs!599369 () Bool)

(declare-fun s!239132 () Bool)

(assert (= bs!599369 (and neg-inst!1565 s!239132)))

(declare-fun res!1753225 () Bool)

(declare-fun e!2649042 () Bool)

(assert (=> bs!599369 (=> res!1753225 e!2649042)))

(assert (=> bs!599369 (= res!1753225 (not (= (list!17079 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))) (list!17079 x!738193))))))

(assert (=> bs!599369 (=> true e!2649042)))

(declare-fun b!4266533 () Bool)

(assert (=> b!4266533 (= e!2649042 (= (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))) (toValue!17 thiss!2520 x!738193)))))

(assert (= (and bs!599369 (not res!1753225)) b!4266533))

(assert (=> bs!599364 m!4858339))

(assert (=> bs!599364 m!4858343))

(assert (=> bs!599364 s!239132))

(declare-fun bs!599370 () Bool)

(declare-fun s!239134 () Bool)

(assert (= bs!599370 (and neg-inst!1565 s!239134)))

(declare-fun res!1753226 () Bool)

(declare-fun e!2649043 () Bool)

(assert (=> bs!599370 (=> res!1753226 e!2649043)))

(assert (=> bs!599370 (= res!1753226 (not (= (list!17079 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))) (list!17079 x!738191))))))

(assert (=> bs!599370 (=> true e!2649043)))

(declare-fun b!4266534 () Bool)

(assert (=> b!4266534 (= e!2649043 (= (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))) (toValue!17 thiss!2520 x!738191)))))

(assert (= (and bs!599370 (not res!1753226)) b!4266534))

(assert (=> bs!599366 m!4858339))

(assert (=> bs!599366 m!4858337))

(assert (=> bs!599366 s!239134))

(assert (=> m!4858339 s!239128))

(declare-fun bs!599371 () Bool)

(assert (= bs!599371 (and neg-inst!1565 b!4266506)))

(assert (=> bs!599371 (= true inst!1565)))

(declare-fun res!1753209 () Bool)

(declare-fun e!2649023 () Bool)

(assert (=> start!408852 (=> res!1753209 e!2649023)))

(declare-fun lambda!130314 () Int)

(declare-fun Forall!1609 (Int) Bool)

(assert (=> start!408852 (= res!1753209 (not (Forall!1609 lambda!130314)))))

(assert (=> start!408852 (= (Forall!1609 lambda!130314) inst!1564)))

(assert (=> start!408852 (not e!2649023)))

(assert (=> start!408852 true))

(declare-fun lambda!130317 () Int)

(declare-fun Forall2!1206 (Int) Bool)

(assert (=> b!4266506 (= e!2649023 (Forall2!1206 lambda!130317))))

(assert (=> b!4266506 (= (Forall2!1206 lambda!130317) inst!1565)))

(declare-fun lambda!130315 () Int)

(declare-fun lambda!130316 () Int)

(declare-fun semiInverseModEq!3491 (Int Int) Bool)

(assert (=> b!4266506 (= (semiInverseModEq!3491 lambda!130315 lambda!130316) (Forall!1609 lambda!130314))))

(assert (= neg-inst!1564 inst!1564))

(assert (= (and start!408852 (not res!1753209)) b!4266506))

(assert (= neg-inst!1565 inst!1565))

(declare-fun m!4858357 () Bool)

(assert (=> start!408852 m!4858357))

(assert (=> start!408852 m!4858357))

(declare-fun m!4858359 () Bool)

(assert (=> b!4266506 m!4858359))

(assert (=> b!4266506 m!4858359))

(declare-fun m!4858361 () Bool)

(assert (=> b!4266506 m!4858361))

(assert (=> b!4266506 m!4858357))

(push 1)

(assert (not b!4266524))

(assert (not b!4266519))

(assert (not b!4266516))

(assert (not b!4266506))

(assert (not bs!599367))

(assert (not bs!599361))

(assert (not b!4266534))

(assert (not b!4266528))

(assert (not bs!599351))

(assert (not b!4266525))

(assert (not b!4266526))

(assert (not bs!599343))

(assert (not b!4266518))

(assert (not bs!599357))

(assert (not bs!599340))

(assert (not bs!599353))

(assert (not b!4266527))

(assert (not b!4266532))

(assert (not b!4266515))

(assert (not b!4266521))

(assert (not b!4266533))

(assert (not b!4266522))

(assert (not b!4266529))

(assert (not bs!599355))

(assert (not bs!599345))

(assert (not b!4266531))

(assert (not start!408852))

(assert (not bs!599370))

(assert (not b!4266530))

(assert (not b!4266517))

(assert (not bs!599363))

(assert (not bs!599368))

(assert (not bs!599346))

(assert (not bs!599369))

(assert (not bs!599342))

(assert (not bs!599356))

(assert (not bs!599365))

(assert (not b!4266520))

(assert (not b!4266523))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1257694 () Bool)

(declare-fun lt!1511898 () List!47394)

(declare-fun efficientList!424 (BalanceConc!28014) List!47394)

(assert (=> d!1257694 (= lt!1511898 (efficientList!424 x!738191))))

(assert (=> d!1257694 (= (toValue!17 thiss!2520 x!738191) (ite (= lt!1511898 (Cons!47270 #x002B Nil!47270)) Plus!8225 (ite (= lt!1511898 (Cons!47270 #x002D Nil!47270)) Minus!8225 (ite (= lt!1511898 (Cons!47270 #x002A Nil!47270)) Times!8225 (ite (= lt!1511898 (Cons!47270 #x002F Nil!47270)) Div!8225 (ite (= lt!1511898 (Cons!47270 #x0025 Nil!47270)) Mod!8225 (ite (= lt!1511898 (Cons!47270 #x0021 Nil!47270)) Not!8225 (ite (= lt!1511898 (Cons!47270 #x003D Nil!47270)) Equal!8225 (ite (= lt!1511898 (Cons!47270 #x003C (Cons!47270 #x003D Nil!47270))) LessEqual!8225 (ite (= lt!1511898 (Cons!47270 #x0026 (Cons!47270 #x0026 Nil!47270))) And!8225 (ite (= lt!1511898 (Cons!47270 #x007C (Cons!47270 #x007C Nil!47270))) Or!8225 (ite (= lt!1511898 (Cons!47270 #x002B (Cons!47270 #x002B Nil!47270))) Concat!21123 (Broken!41129 lt!1511898)))))))))))))))

(declare-fun bs!599406 () Bool)

(assert (= bs!599406 d!1257694))

(declare-fun m!4858397 () Bool)

(assert (=> bs!599406 m!4858397))

(assert (=> b!4266524 d!1257694))

(declare-fun d!1257698 () Bool)

(declare-fun lt!1511899 () List!47394)

(assert (=> d!1257698 (= lt!1511899 (efficientList!424 x!738193))))

(assert (=> d!1257698 (= (toValue!17 thiss!2520 x!738193) (ite (= lt!1511899 (Cons!47270 #x002B Nil!47270)) Plus!8225 (ite (= lt!1511899 (Cons!47270 #x002D Nil!47270)) Minus!8225 (ite (= lt!1511899 (Cons!47270 #x002A Nil!47270)) Times!8225 (ite (= lt!1511899 (Cons!47270 #x002F Nil!47270)) Div!8225 (ite (= lt!1511899 (Cons!47270 #x0025 Nil!47270)) Mod!8225 (ite (= lt!1511899 (Cons!47270 #x0021 Nil!47270)) Not!8225 (ite (= lt!1511899 (Cons!47270 #x003D Nil!47270)) Equal!8225 (ite (= lt!1511899 (Cons!47270 #x003C (Cons!47270 #x003D Nil!47270))) LessEqual!8225 (ite (= lt!1511899 (Cons!47270 #x0026 (Cons!47270 #x0026 Nil!47270))) And!8225 (ite (= lt!1511899 (Cons!47270 #x007C (Cons!47270 #x007C Nil!47270))) Or!8225 (ite (= lt!1511899 (Cons!47270 #x002B (Cons!47270 #x002B Nil!47270))) Concat!21123 (Broken!41129 lt!1511899)))))))))))))))

(declare-fun bs!599407 () Bool)

(assert (= bs!599407 d!1257698))

(declare-fun m!4858399 () Bool)

(assert (=> bs!599407 m!4858399))

(assert (=> b!4266524 d!1257698))

(declare-fun d!1257700 () Bool)

(declare-fun list!17081 (Conc!14252) List!47394)

(assert (=> d!1257700 (= (list!17079 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))) (list!17081 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191)))))))

(declare-fun bs!599408 () Bool)

(assert (= bs!599408 d!1257700))

(declare-fun m!4858401 () Bool)

(assert (=> bs!599408 m!4858401))

(assert (=> bs!599370 d!1257700))

(declare-fun d!1257702 () Bool)

(assert (=> d!1257702 (= (list!17079 x!738191) (list!17081 (c!725312 x!738191)))))

(declare-fun bs!599409 () Bool)

(assert (= bs!599409 d!1257702))

(declare-fun m!4858403 () Bool)

(assert (=> bs!599409 m!4858403))

(assert (=> bs!599370 d!1257702))

(assert (=> b!4266530 d!1257694))

(declare-fun d!1257704 () Bool)

(declare-fun lt!1511900 () List!47394)

(assert (=> d!1257704 (= lt!1511900 (efficientList!424 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))))))

(assert (=> d!1257704 (= (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))) (ite (= lt!1511900 (Cons!47270 #x002B Nil!47270)) Plus!8225 (ite (= lt!1511900 (Cons!47270 #x002D Nil!47270)) Minus!8225 (ite (= lt!1511900 (Cons!47270 #x002A Nil!47270)) Times!8225 (ite (= lt!1511900 (Cons!47270 #x002F Nil!47270)) Div!8225 (ite (= lt!1511900 (Cons!47270 #x0025 Nil!47270)) Mod!8225 (ite (= lt!1511900 (Cons!47270 #x0021 Nil!47270)) Not!8225 (ite (= lt!1511900 (Cons!47270 #x003D Nil!47270)) Equal!8225 (ite (= lt!1511900 (Cons!47270 #x003C (Cons!47270 #x003D Nil!47270))) LessEqual!8225 (ite (= lt!1511900 (Cons!47270 #x0026 (Cons!47270 #x0026 Nil!47270))) And!8225 (ite (= lt!1511900 (Cons!47270 #x007C (Cons!47270 #x007C Nil!47270))) Or!8225 (ite (= lt!1511900 (Cons!47270 #x002B (Cons!47270 #x002B Nil!47270))) Concat!21123 (Broken!41129 lt!1511900)))))))))))))))

(declare-fun bs!599410 () Bool)

(assert (= bs!599410 d!1257704))

(assert (=> bs!599410 m!4858333))

(declare-fun m!4858405 () Bool)

(assert (=> bs!599410 m!4858405))

(assert (=> b!4266530 d!1257704))

(assert (=> bs!599346 d!1257702))

(declare-fun d!1257706 () Bool)

(assert (=> d!1257706 (= (list!17079 x!738192) (list!17081 (c!725312 x!738192)))))

(declare-fun bs!599411 () Bool)

(assert (= bs!599411 d!1257706))

(declare-fun m!4858407 () Bool)

(assert (=> bs!599411 m!4858407))

(assert (=> bs!599346 d!1257706))

(assert (=> bs!599353 d!1257702))

(declare-fun d!1257708 () Bool)

(assert (=> d!1257708 (= (list!17079 x!738193) (list!17081 (c!725312 x!738193)))))

(declare-fun bs!599412 () Bool)

(assert (= bs!599412 d!1257708))

(declare-fun m!4858409 () Bool)

(assert (=> bs!599412 m!4858409))

(assert (=> bs!599353 d!1257708))

(assert (=> b!4266533 d!1257704))

(assert (=> b!4266533 d!1257698))

(assert (=> bs!599365 d!1257702))

(assert (=> bs!599365 d!1257700))

(assert (=> b!4266521 d!1257694))

(assert (=> b!4266527 d!1257698))

(assert (=> b!4266527 d!1257694))

(assert (=> bs!599357 d!1257708))

(assert (=> bs!599357 d!1257702))

(assert (=> bs!599369 d!1257700))

(assert (=> bs!599369 d!1257708))

(assert (=> bs!599345 d!1257702))

(assert (=> b!4266526 d!1257698))

(declare-fun d!1257710 () Bool)

(declare-fun lt!1511901 () List!47394)

(assert (=> d!1257710 (= lt!1511901 (efficientList!424 x!738192))))

(assert (=> d!1257710 (= (toValue!17 thiss!2520 x!738192) (ite (= lt!1511901 (Cons!47270 #x002B Nil!47270)) Plus!8225 (ite (= lt!1511901 (Cons!47270 #x002D Nil!47270)) Minus!8225 (ite (= lt!1511901 (Cons!47270 #x002A Nil!47270)) Times!8225 (ite (= lt!1511901 (Cons!47270 #x002F Nil!47270)) Div!8225 (ite (= lt!1511901 (Cons!47270 #x0025 Nil!47270)) Mod!8225 (ite (= lt!1511901 (Cons!47270 #x0021 Nil!47270)) Not!8225 (ite (= lt!1511901 (Cons!47270 #x003D Nil!47270)) Equal!8225 (ite (= lt!1511901 (Cons!47270 #x003C (Cons!47270 #x003D Nil!47270))) LessEqual!8225 (ite (= lt!1511901 (Cons!47270 #x0026 (Cons!47270 #x0026 Nil!47270))) And!8225 (ite (= lt!1511901 (Cons!47270 #x007C (Cons!47270 #x007C Nil!47270))) Or!8225 (ite (= lt!1511901 (Cons!47270 #x002B (Cons!47270 #x002B Nil!47270))) Concat!21123 (Broken!41129 lt!1511901)))))))))))))))

(declare-fun bs!599413 () Bool)

(assert (= bs!599413 d!1257710))

(declare-fun m!4858411 () Bool)

(assert (=> bs!599413 m!4858411))

(assert (=> b!4266526 d!1257710))

(assert (=> b!4266532 d!1257704))

(assert (=> b!4266532 d!1257710))

(assert (=> b!4266520 d!1257710))

(assert (=> b!4266520 d!1257694))

(assert (=> b!4266523 d!1257710))

(assert (=> b!4266523 d!1257698))

(assert (=> b!4266529 d!1257698))

(assert (=> b!4266529 d!1257704))

(assert (=> bs!599363 d!1257708))

(assert (=> bs!599363 d!1257700))

(assert (=> bs!599343 d!1257706))

(assert (=> bs!599343 d!1257702))

(assert (=> bs!599356 d!1257708))

(assert (=> bs!599356 d!1257706))

(assert (=> bs!599351 d!1257706))

(assert (=> bs!599351 d!1257708))

(assert (=> b!4266525 d!1257698))

(assert (=> bs!599368 d!1257700))

(assert (=> bs!599368 d!1257706))

(assert (=> b!4266522 d!1257694))

(assert (=> b!4266522 d!1257710))

(assert (=> b!4266531 d!1257704))

(assert (=> b!4266519 d!1257710))

(assert (=> b!4266528 d!1257710))

(assert (=> b!4266528 d!1257704))

(assert (=> bs!599342 d!1257706))

(assert (=> bs!599361 d!1257706))

(assert (=> bs!599361 d!1257700))

(assert (=> bs!599355 d!1257708))

(assert (=> b!4266534 d!1257704))

(assert (=> b!4266534 d!1257694))

(assert (=> bs!599367 d!1257700))

(declare-fun bs!599414 () Bool)

(assert (= bs!599414 (and m!4858341 b!4266519)))

(assert (=> bs!599414 m!4858349))

(assert (=> bs!599414 m!4858349))

(declare-fun bs!599415 () Bool)

(assert (= bs!599415 (and m!4858337 m!4858341 b!4266520)))

(assert (=> bs!599415 m!4858349))

(assert (=> bs!599415 m!4858331))

(declare-fun bs!599416 () Bool)

(assert (= bs!599416 (and m!4858337 b!4266521)))

(assert (=> bs!599416 m!4858331))

(assert (=> bs!599416 m!4858331))

(declare-fun bs!599417 () Bool)

(assert (= bs!599417 (and m!4858337 m!4858341 b!4266522)))

(assert (=> bs!599417 m!4858331))

(assert (=> bs!599417 m!4858349))

(declare-fun bs!599418 () Bool)

(assert (= bs!599418 (and m!4858343 m!4858341 m!4858349 b!4266523)))

(assert (=> bs!599418 m!4858349))

(assert (=> bs!599418 m!4858351))

(declare-fun bs!599419 () Bool)

(assert (= bs!599419 (and m!4858343 m!4858337 m!4858331 b!4266524)))

(assert (=> bs!599419 m!4858331))

(assert (=> bs!599419 m!4858351))

(declare-fun bs!599420 () Bool)

(assert (= bs!599420 (and m!4858343 b!4266525)))

(assert (=> bs!599420 m!4858351))

(assert (=> bs!599420 m!4858351))

(declare-fun bs!599421 () Bool)

(assert (= bs!599421 (and m!4858343 m!4858341 m!4858349 b!4266526)))

(assert (=> bs!599421 m!4858351))

(assert (=> bs!599421 m!4858349))

(declare-fun bs!599422 () Bool)

(assert (= bs!599422 (and m!4858343 m!4858337 m!4858331 b!4266527)))

(assert (=> bs!599422 m!4858351))

(assert (=> bs!599422 m!4858331))

(declare-fun bs!599423 () Bool)

(assert (= bs!599423 (and m!4858339 m!4858341 m!4858349 b!4266528)))

(assert (=> bs!599423 m!4858349))

(declare-fun m!4858413 () Bool)

(assert (=> bs!599423 m!4858413))

(declare-fun bs!599424 () Bool)

(assert (= bs!599424 (and m!4858339 m!4858343 m!4858351 b!4266529)))

(assert (=> bs!599424 m!4858351))

(assert (=> bs!599424 m!4858413))

(declare-fun bs!599425 () Bool)

(assert (= bs!599425 (and m!4858339 m!4858337 m!4858331 b!4266530)))

(assert (=> bs!599425 m!4858331))

(assert (=> bs!599425 m!4858413))

(declare-fun bs!599426 () Bool)

(assert (= bs!599426 (and m!4858339 b!4266531)))

(assert (=> bs!599426 m!4858413))

(assert (=> bs!599426 m!4858413))

(declare-fun bs!599427 () Bool)

(assert (= bs!599427 (and m!4858339 m!4858341 m!4858349 b!4266532)))

(assert (=> bs!599427 m!4858413))

(assert (=> bs!599427 m!4858349))

(declare-fun bs!599428 () Bool)

(assert (= bs!599428 (and m!4858339 m!4858343 m!4858351 b!4266533)))

(assert (=> bs!599428 m!4858413))

(assert (=> bs!599428 m!4858351))

(declare-fun bs!599429 () Bool)

(assert (= bs!599429 (and m!4858339 m!4858337 m!4858331 b!4266534)))

(assert (=> bs!599429 m!4858413))

(assert (=> bs!599429 m!4858331))

(push 1)

(assert (not d!1257710))

(assert (not b!4266506))

(assert (not b!4266515))

(assert (not d!1257702))

(assert (not d!1257694))

(assert (not d!1257698))

(assert (not start!408852))

(assert (not b!4266517))

(assert (not d!1257704))

(assert (not d!1257700))

(assert (not d!1257708))

(assert (not bs!599340))

(assert (not b!4266518))

(assert (not b!4266516))

(assert (not d!1257706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1257726 () Bool)

(declare-fun c!725318 () Bool)

(assert (=> d!1257726 (= c!725318 (is-Empty!14252 (c!725312 x!738192)))))

(declare-fun e!2649085 () List!47394)

(assert (=> d!1257726 (= (list!17081 (c!725312 x!738192)) e!2649085)))

(declare-fun b!4266591 () Bool)

(declare-fun e!2649086 () List!47394)

(declare-fun ++!12051 (List!47394 List!47394) List!47394)

(assert (=> b!4266591 (= e!2649086 (++!12051 (list!17081 (left!35047 (c!725312 x!738192))) (list!17081 (right!35377 (c!725312 x!738192)))))))

(declare-fun b!4266589 () Bool)

(assert (=> b!4266589 (= e!2649085 e!2649086)))

(declare-fun c!725319 () Bool)

(assert (=> b!4266589 (= c!725319 (is-Leaf!22034 (c!725312 x!738192)))))

(declare-fun b!4266588 () Bool)

(assert (=> b!4266588 (= e!2649085 Nil!47270)))

(declare-fun b!4266590 () Bool)

(declare-fun list!17083 (IArray!28509) List!47394)

(assert (=> b!4266590 (= e!2649086 (list!17083 (xs!17558 (c!725312 x!738192))))))

(assert (= (and d!1257726 c!725318) b!4266588))

(assert (= (and d!1257726 (not c!725318)) b!4266589))

(assert (= (and b!4266589 c!725319) b!4266590))

(assert (= (and b!4266589 (not c!725319)) b!4266591))

(declare-fun m!4858433 () Bool)

(assert (=> b!4266591 m!4858433))

(declare-fun m!4858435 () Bool)

(assert (=> b!4266591 m!4858435))

(assert (=> b!4266591 m!4858433))

(assert (=> b!4266591 m!4858435))

(declare-fun m!4858437 () Bool)

(assert (=> b!4266591 m!4858437))

(declare-fun m!4858439 () Bool)

(assert (=> b!4266590 m!4858439))

(assert (=> d!1257706 d!1257726))

(declare-fun d!1257728 () Bool)

(declare-fun lt!1511910 () List!47394)

(assert (=> d!1257728 (= lt!1511910 (list!17079 x!738193))))

(declare-fun efficientList!426 (Conc!14252 List!47394) List!47394)

(declare-fun efficientList$default$2!148 (Conc!14252) List!47394)

(assert (=> d!1257728 (= lt!1511910 (efficientList!426 (c!725312 x!738193) (efficientList$default$2!148 (c!725312 x!738193))))))

(assert (=> d!1257728 (= (efficientList!424 x!738193) lt!1511910)))

(declare-fun bs!599454 () Bool)

(assert (= bs!599454 d!1257728))

(assert (=> bs!599454 m!4858343))

(declare-fun m!4858441 () Bool)

(assert (=> bs!599454 m!4858441))

(assert (=> bs!599454 m!4858441))

(declare-fun m!4858443 () Bool)

(assert (=> bs!599454 m!4858443))

(assert (=> d!1257698 d!1257728))

(declare-fun d!1257730 () Bool)

(declare-fun lt!1511911 () List!47394)

(assert (=> d!1257730 (= lt!1511911 (list!17079 x!738191))))

(assert (=> d!1257730 (= lt!1511911 (efficientList!426 (c!725312 x!738191) (efficientList$default$2!148 (c!725312 x!738191))))))

(assert (=> d!1257730 (= (efficientList!424 x!738191) lt!1511911)))

(declare-fun bs!599455 () Bool)

(assert (= bs!599455 d!1257730))

(assert (=> bs!599455 m!4858337))

(declare-fun m!4858445 () Bool)

(assert (=> bs!599455 m!4858445))

(assert (=> bs!599455 m!4858445))

(declare-fun m!4858447 () Bool)

(assert (=> bs!599455 m!4858447))

(assert (=> d!1257694 d!1257730))

(declare-fun d!1257732 () Bool)

(declare-fun lt!1511912 () List!47394)

(assert (=> d!1257732 (= lt!1511912 (list!17079 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))))))

(assert (=> d!1257732 (= lt!1511912 (efficientList!426 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))) (efficientList$default$2!148 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))))))))

(assert (=> d!1257732 (= (efficientList!424 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))) lt!1511912)))

(declare-fun bs!599456 () Bool)

(assert (= bs!599456 d!1257732))

(assert (=> bs!599456 m!4858333))

(assert (=> bs!599456 m!4858339))

(declare-fun m!4858449 () Bool)

(assert (=> bs!599456 m!4858449))

(assert (=> bs!599456 m!4858449))

(declare-fun m!4858451 () Bool)

(assert (=> bs!599456 m!4858451))

(assert (=> d!1257704 d!1257732))

(declare-fun d!1257734 () Bool)

(declare-fun lt!1511913 () List!47394)

(assert (=> d!1257734 (= lt!1511913 (list!17079 x!738192))))

(assert (=> d!1257734 (= lt!1511913 (efficientList!426 (c!725312 x!738192) (efficientList$default$2!148 (c!725312 x!738192))))))

(assert (=> d!1257734 (= (efficientList!424 x!738192) lt!1511913)))

(declare-fun bs!599457 () Bool)

(assert (= bs!599457 d!1257734))

(assert (=> bs!599457 m!4858341))

(declare-fun m!4858453 () Bool)

(assert (=> bs!599457 m!4858453))

(assert (=> bs!599457 m!4858453))

(declare-fun m!4858455 () Bool)

(assert (=> bs!599457 m!4858455))

(assert (=> d!1257710 d!1257734))

(declare-fun d!1257736 () Bool)

(declare-fun c!725320 () Bool)

(assert (=> d!1257736 (= c!725320 (is-Empty!14252 (c!725312 x!738191)))))

(declare-fun e!2649087 () List!47394)

(assert (=> d!1257736 (= (list!17081 (c!725312 x!738191)) e!2649087)))

(declare-fun b!4266595 () Bool)

(declare-fun e!2649088 () List!47394)

(assert (=> b!4266595 (= e!2649088 (++!12051 (list!17081 (left!35047 (c!725312 x!738191))) (list!17081 (right!35377 (c!725312 x!738191)))))))

(declare-fun b!4266593 () Bool)

(assert (=> b!4266593 (= e!2649087 e!2649088)))

(declare-fun c!725321 () Bool)

(assert (=> b!4266593 (= c!725321 (is-Leaf!22034 (c!725312 x!738191)))))

(declare-fun b!4266592 () Bool)

(assert (=> b!4266592 (= e!2649087 Nil!47270)))

(declare-fun b!4266594 () Bool)

(assert (=> b!4266594 (= e!2649088 (list!17083 (xs!17558 (c!725312 x!738191))))))

(assert (= (and d!1257736 c!725320) b!4266592))

(assert (= (and d!1257736 (not c!725320)) b!4266593))

(assert (= (and b!4266593 c!725321) b!4266594))

(assert (= (and b!4266593 (not c!725321)) b!4266595))

(declare-fun m!4858457 () Bool)

(assert (=> b!4266595 m!4858457))

(declare-fun m!4858459 () Bool)

(assert (=> b!4266595 m!4858459))

(assert (=> b!4266595 m!4858457))

(assert (=> b!4266595 m!4858459))

(declare-fun m!4858461 () Bool)

(assert (=> b!4266595 m!4858461))

(declare-fun m!4858463 () Bool)

(assert (=> b!4266594 m!4858463))

(assert (=> d!1257702 d!1257736))

(declare-fun d!1257738 () Bool)

(declare-fun c!725322 () Bool)

(assert (=> d!1257738 (= c!725322 (is-Empty!14252 (c!725312 x!738193)))))

(declare-fun e!2649089 () List!47394)

(assert (=> d!1257738 (= (list!17081 (c!725312 x!738193)) e!2649089)))

(declare-fun b!4266599 () Bool)

(declare-fun e!2649090 () List!47394)

(assert (=> b!4266599 (= e!2649090 (++!12051 (list!17081 (left!35047 (c!725312 x!738193))) (list!17081 (right!35377 (c!725312 x!738193)))))))

(declare-fun b!4266597 () Bool)

(assert (=> b!4266597 (= e!2649089 e!2649090)))

(declare-fun c!725323 () Bool)

(assert (=> b!4266597 (= c!725323 (is-Leaf!22034 (c!725312 x!738193)))))

(declare-fun b!4266596 () Bool)

(assert (=> b!4266596 (= e!2649089 Nil!47270)))

(declare-fun b!4266598 () Bool)

(assert (=> b!4266598 (= e!2649090 (list!17083 (xs!17558 (c!725312 x!738193))))))

(assert (= (and d!1257738 c!725322) b!4266596))

(assert (= (and d!1257738 (not c!725322)) b!4266597))

(assert (= (and b!4266597 c!725323) b!4266598))

(assert (= (and b!4266597 (not c!725323)) b!4266599))

(declare-fun m!4858465 () Bool)

(assert (=> b!4266599 m!4858465))

(declare-fun m!4858467 () Bool)

(assert (=> b!4266599 m!4858467))

(assert (=> b!4266599 m!4858465))

(assert (=> b!4266599 m!4858467))

(declare-fun m!4858469 () Bool)

(assert (=> b!4266599 m!4858469))

(declare-fun m!4858471 () Bool)

(assert (=> b!4266598 m!4858471))

(assert (=> d!1257708 d!1257738))

(declare-fun d!1257740 () Bool)

(declare-fun c!725324 () Bool)

(assert (=> d!1257740 (= c!725324 (is-Empty!14252 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191)))))))

(declare-fun e!2649091 () List!47394)

(assert (=> d!1257740 (= (list!17081 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191)))) e!2649091)))

(declare-fun b!4266603 () Bool)

(declare-fun e!2649092 () List!47394)

(assert (=> b!4266603 (= e!2649092 (++!12051 (list!17081 (left!35047 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))))) (list!17081 (right!35377 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191)))))))))

(declare-fun b!4266601 () Bool)

(assert (=> b!4266601 (= e!2649091 e!2649092)))

(declare-fun c!725325 () Bool)

(assert (=> b!4266601 (= c!725325 (is-Leaf!22034 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191)))))))

(declare-fun b!4266600 () Bool)

(assert (=> b!4266600 (= e!2649091 Nil!47270)))

(declare-fun b!4266602 () Bool)

(assert (=> b!4266602 (= e!2649092 (list!17083 (xs!17558 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))))))))

(assert (= (and d!1257740 c!725324) b!4266600))

(assert (= (and d!1257740 (not c!725324)) b!4266601))

(assert (= (and b!4266601 c!725325) b!4266602))

(assert (= (and b!4266601 (not c!725325)) b!4266603))

(declare-fun m!4858473 () Bool)

(assert (=> b!4266603 m!4858473))

(declare-fun m!4858475 () Bool)

(assert (=> b!4266603 m!4858475))

(assert (=> b!4266603 m!4858473))

(assert (=> b!4266603 m!4858475))

(declare-fun m!4858477 () Bool)

(assert (=> b!4266603 m!4858477))

(declare-fun m!4858479 () Bool)

(assert (=> b!4266602 m!4858479))

(assert (=> d!1257700 d!1257740))

(push 1)

(assert (not b!4266516))

(assert (not b!4266506))

(assert (not b!4266515))

(assert (not b!4266599))

(assert (not b!4266590))

(assert (not b!4266591))

(assert (not start!408852))

(assert (not b!4266517))

(assert (not b!4266594))

(assert (not b!4266603))

(assert (not bs!599340))

(assert (not b!4266518))

(assert (not b!4266595))

(assert (not d!1257734))

(assert (not d!1257732))

(assert (not d!1257730))

(assert (not b!4266602))

(assert (not d!1257728))

(assert (not b!4266598))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> bs!599340 d!1257700))

(declare-fun b!4266676 () Bool)

(declare-fun e!2649130 () BalanceConc!28014)

(declare-fun stringLessEqualConc!0 () BalanceConc!28014)

(assert (=> b!4266676 (= e!2649130 stringLessEqualConc!0)))

(declare-fun b!4266677 () Bool)

(declare-fun e!2649136 () BalanceConc!28014)

(declare-fun stringDivConc!0 () BalanceConc!28014)

(assert (=> b!4266677 (= e!2649136 stringDivConc!0)))

(declare-fun b!4266679 () Bool)

(declare-fun e!2649129 () BalanceConc!28014)

(declare-fun stringConcatConc!0 () BalanceConc!28014)

(assert (=> b!4266679 (= e!2649129 stringConcatConc!0)))

(declare-fun b!4266680 () Bool)

(declare-fun e!2649137 () BalanceConc!28014)

(declare-fun e!2649134 () BalanceConc!28014)

(assert (=> b!4266680 (= e!2649137 e!2649134)))

(declare-fun c!725367 () Bool)

(assert (=> b!4266680 (= c!725367 (is-Or!8225 (toValue!17 thiss!2520 x!738191)))))

(declare-fun b!4266681 () Bool)

(declare-fun c!725365 () Bool)

(assert (=> b!4266681 (= c!725365 (is-Mod!8225 (toValue!17 thiss!2520 x!738191)))))

(declare-fun e!2649133 () BalanceConc!28014)

(assert (=> b!4266681 (= e!2649136 e!2649133)))

(declare-fun b!4266682 () Bool)

(declare-fun e!2649131 () BalanceConc!28014)

(declare-fun stringEqualConc!0 () BalanceConc!28014)

(assert (=> b!4266682 (= e!2649131 stringEqualConc!0)))

(declare-fun b!4266683 () Bool)

(declare-fun stringOrConc!0 () BalanceConc!28014)

(assert (=> b!4266683 (= e!2649134 stringOrConc!0)))

(declare-fun b!4266684 () Bool)

(declare-fun stringModConc!0 () BalanceConc!28014)

(assert (=> b!4266684 (= e!2649133 stringModConc!0)))

(declare-fun b!4266685 () Bool)

(declare-fun e!2649132 () BalanceConc!28014)

(assert (=> b!4266685 (= e!2649129 e!2649132)))

(declare-fun c!725369 () Bool)

(assert (=> b!4266685 (= c!725369 (is-Broken!41129 (toValue!17 thiss!2520 x!738191)))))

(declare-fun b!4266678 () Bool)

(assert (=> b!4266678 (= e!2649131 e!2649130)))

(declare-fun c!725371 () Bool)

(assert (=> b!4266678 (= c!725371 (is-LessEqual!8225 (toValue!17 thiss!2520 x!738191)))))

(declare-fun d!1257758 () Bool)

(declare-fun c!725374 () Bool)

(assert (=> d!1257758 (= c!725374 (is-Plus!8225 (toValue!17 thiss!2520 x!738191)))))

(declare-fun e!2649139 () BalanceConc!28014)

(assert (=> d!1257758 (= (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191)) e!2649139)))

(declare-fun b!4266686 () Bool)

(declare-fun e!2649140 () BalanceConc!28014)

(declare-fun stringTimesConc!0 () BalanceConc!28014)

(assert (=> b!4266686 (= e!2649140 stringTimesConc!0)))

(declare-fun b!4266687 () Bool)

(declare-fun e!2649135 () BalanceConc!28014)

(assert (=> b!4266687 (= e!2649133 e!2649135)))

(declare-fun c!725373 () Bool)

(assert (=> b!4266687 (= c!725373 (is-Not!8225 (toValue!17 thiss!2520 x!738191)))))

(declare-fun b!4266688 () Bool)

(declare-fun e!2649138 () BalanceConc!28014)

(assert (=> b!4266688 (= e!2649139 e!2649138)))

(declare-fun c!725364 () Bool)

(assert (=> b!4266688 (= c!725364 (is-Minus!8225 (toValue!17 thiss!2520 x!738191)))))

(declare-fun b!4266689 () Bool)

(declare-fun c!725372 () Bool)

(assert (=> b!4266689 (= c!725372 (is-And!8225 (toValue!17 thiss!2520 x!738191)))))

(assert (=> b!4266689 (= e!2649130 e!2649137)))

(declare-fun b!4266690 () Bool)

(assert (=> b!4266690 (= e!2649132 (BalanceConc!28015 Empty!14252))))

(declare-fun b!4266691 () Bool)

(declare-fun c!725368 () Bool)

(assert (=> b!4266691 (= c!725368 (is-Times!8225 (toValue!17 thiss!2520 x!738191)))))

(assert (=> b!4266691 (= e!2649138 e!2649140)))

(declare-fun b!4266692 () Bool)

(declare-fun stringPlusConc!0 () BalanceConc!28014)

(assert (=> b!4266692 (= e!2649139 stringPlusConc!0)))

(declare-fun b!4266693 () Bool)

(assert (=> b!4266693 (= e!2649140 e!2649136)))

(declare-fun c!725363 () Bool)

(assert (=> b!4266693 (= c!725363 (is-Div!8225 (toValue!17 thiss!2520 x!738191)))))

(declare-fun b!4266694 () Bool)

(declare-fun stringNotConc!0 () BalanceConc!28014)

(assert (=> b!4266694 (= e!2649135 stringNotConc!0)))

(declare-fun b!4266695 () Bool)

(declare-fun seqFromList!5848 (List!47394) BalanceConc!28014)

(assert (=> b!4266695 (= e!2649132 (seqFromList!5848 (value!248459 (toValue!17 thiss!2520 x!738191))))))

(declare-fun b!4266696 () Bool)

(declare-fun stringAndConc!0 () BalanceConc!28014)

(assert (=> b!4266696 (= e!2649137 stringAndConc!0)))

(declare-fun b!4266697 () Bool)

(declare-fun c!725366 () Bool)

(assert (=> b!4266697 (= c!725366 (is-Equal!8225 (toValue!17 thiss!2520 x!738191)))))

(assert (=> b!4266697 (= e!2649135 e!2649131)))

(declare-fun b!4266698 () Bool)

(declare-fun stringMinusConc!0 () BalanceConc!28014)

(assert (=> b!4266698 (= e!2649138 stringMinusConc!0)))

(declare-fun b!4266699 () Bool)

(declare-fun c!725370 () Bool)

(assert (=> b!4266699 (= c!725370 (is-Concat!21123 (toValue!17 thiss!2520 x!738191)))))

(assert (=> b!4266699 (= e!2649134 e!2649129)))

(assert (= (and d!1257758 c!725374) b!4266692))

(assert (= (and d!1257758 (not c!725374)) b!4266688))

(assert (= (and b!4266688 c!725364) b!4266698))

(assert (= (and b!4266688 (not c!725364)) b!4266691))

(assert (= (and b!4266691 c!725368) b!4266686))

(assert (= (and b!4266691 (not c!725368)) b!4266693))

(assert (= (and b!4266693 c!725363) b!4266677))

(assert (= (and b!4266693 (not c!725363)) b!4266681))

(assert (= (and b!4266681 c!725365) b!4266684))

(assert (= (and b!4266681 (not c!725365)) b!4266687))

(assert (= (and b!4266687 c!725373) b!4266694))

(assert (= (and b!4266687 (not c!725373)) b!4266697))

(assert (= (and b!4266697 c!725366) b!4266682))

(assert (= (and b!4266697 (not c!725366)) b!4266678))

(assert (= (and b!4266678 c!725371) b!4266676))

(assert (= (and b!4266678 (not c!725371)) b!4266689))

(assert (= (and b!4266689 c!725372) b!4266696))

(assert (= (and b!4266689 (not c!725372)) b!4266680))

(assert (= (and b!4266680 c!725367) b!4266683))

(assert (= (and b!4266680 (not c!725367)) b!4266699))

(assert (= (and b!4266699 c!725370) b!4266679))

(assert (= (and b!4266699 (not c!725370)) b!4266685))

(assert (= (and b!4266685 c!725369) b!4266695))

(assert (= (and b!4266685 (not c!725369)) b!4266690))

(declare-fun m!4858529 () Bool)

(assert (=> b!4266692 m!4858529))

(declare-fun m!4858531 () Bool)

(assert (=> b!4266676 m!4858531))

(declare-fun m!4858533 () Bool)

(assert (=> b!4266682 m!4858533))

(declare-fun m!4858535 () Bool)

(assert (=> b!4266686 m!4858535))

(declare-fun m!4858537 () Bool)

(assert (=> b!4266679 m!4858537))

(declare-fun m!4858539 () Bool)

(assert (=> b!4266695 m!4858539))

(declare-fun m!4858541 () Bool)

(assert (=> b!4266683 m!4858541))

(declare-fun m!4858543 () Bool)

(assert (=> b!4266677 m!4858543))

(declare-fun m!4858545 () Bool)

(assert (=> b!4266684 m!4858545))

(declare-fun m!4858547 () Bool)

(assert (=> b!4266694 m!4858547))

(declare-fun m!4858549 () Bool)

(assert (=> b!4266696 m!4858549))

(declare-fun m!4858551 () Bool)

(assert (=> b!4266698 m!4858551))

(assert (=> bs!599340 d!1257758))

(assert (=> bs!599340 d!1257694))

(assert (=> bs!599340 d!1257702))

(assert (=> d!1257730 d!1257702))

(declare-fun d!1257760 () Bool)

(declare-fun lt!1511933 () List!47394)

(assert (=> d!1257760 (= lt!1511933 (++!12051 (list!17081 (c!725312 x!738191)) (efficientList$default$2!148 (c!725312 x!738191))))))

(declare-fun e!2649147 () List!47394)

(assert (=> d!1257760 (= lt!1511933 e!2649147)))

(declare-fun c!725381 () Bool)

(assert (=> d!1257760 (= c!725381 (is-Empty!14252 (c!725312 x!738191)))))

(assert (=> d!1257760 (= (efficientList!426 (c!725312 x!738191) (efficientList$default$2!148 (c!725312 x!738191))) lt!1511933)))

(declare-fun b!4266712 () Bool)

(declare-datatypes ((Unit!66157 0))(
  ( (Unit!66158) )
))
(declare-fun lt!1511934 () Unit!66157)

(declare-fun lt!1511930 () Unit!66157)

(assert (=> b!4266712 (= lt!1511934 lt!1511930)))

(declare-fun lt!1511932 () List!47394)

(declare-fun call!294061 () List!47394)

(declare-fun lt!1511931 () List!47394)

(assert (=> b!4266712 (= (++!12051 (++!12051 lt!1511931 lt!1511932) (efficientList$default$2!148 (c!725312 x!738191))) (++!12051 lt!1511931 call!294061))))

(declare-fun lemmaConcatAssociativity!2695 (List!47394 List!47394 List!47394) Unit!66157)

(assert (=> b!4266712 (= lt!1511930 (lemmaConcatAssociativity!2695 lt!1511931 lt!1511932 (efficientList$default$2!148 (c!725312 x!738191))))))

(assert (=> b!4266712 (= lt!1511932 (list!17081 (right!35377 (c!725312 x!738191))))))

(assert (=> b!4266712 (= lt!1511931 (list!17081 (left!35047 (c!725312 x!738191))))))

(declare-fun e!2649149 () List!47394)

(assert (=> b!4266712 (= e!2649149 (efficientList!426 (left!35047 (c!725312 x!738191)) (efficientList!426 (right!35377 (c!725312 x!738191)) (efficientList$default$2!148 (c!725312 x!738191)))))))

(declare-fun bm!294056 () Bool)

(declare-fun c!725383 () Bool)

(declare-fun c!725382 () Bool)

(assert (=> bm!294056 (= c!725383 c!725382)))

(declare-fun e!2649148 () List!47394)

(assert (=> bm!294056 (= call!294061 (++!12051 e!2649148 (efficientList$default$2!148 (c!725312 x!738191))))))

(declare-fun b!4266713 () Bool)

(assert (=> b!4266713 (= e!2649147 (efficientList$default$2!148 (c!725312 x!738191)))))

(declare-fun b!4266714 () Bool)

(assert (=> b!4266714 (= e!2649148 lt!1511932)))

(declare-fun b!4266715 () Bool)

(assert (=> b!4266715 (= e!2649149 call!294061)))

(declare-fun b!4266716 () Bool)

(declare-fun efficientList!428 (IArray!28509) List!47394)

(assert (=> b!4266716 (= e!2649148 (efficientList!428 (xs!17558 (c!725312 x!738191))))))

(declare-fun b!4266717 () Bool)

(assert (=> b!4266717 (= e!2649147 e!2649149)))

(assert (=> b!4266717 (= c!725382 (is-Leaf!22034 (c!725312 x!738191)))))

(assert (= (and d!1257760 c!725381) b!4266713))

(assert (= (and d!1257760 (not c!725381)) b!4266717))

(assert (= (and b!4266717 c!725382) b!4266715))

(assert (= (and b!4266717 (not c!725382)) b!4266712))

(assert (= (or b!4266715 b!4266712) bm!294056))

(assert (= (and bm!294056 c!725383) b!4266716))

(assert (= (and bm!294056 (not c!725383)) b!4266714))

(assert (=> d!1257760 m!4858403))

(assert (=> d!1257760 m!4858403))

(assert (=> d!1257760 m!4858445))

(declare-fun m!4858553 () Bool)

(assert (=> d!1257760 m!4858553))

(declare-fun m!4858555 () Bool)

(assert (=> b!4266712 m!4858555))

(declare-fun m!4858557 () Bool)

(assert (=> b!4266712 m!4858557))

(assert (=> b!4266712 m!4858445))

(declare-fun m!4858559 () Bool)

(assert (=> b!4266712 m!4858559))

(assert (=> b!4266712 m!4858557))

(declare-fun m!4858561 () Bool)

(assert (=> b!4266712 m!4858561))

(declare-fun m!4858563 () Bool)

(assert (=> b!4266712 m!4858563))

(assert (=> b!4266712 m!4858459))

(assert (=> b!4266712 m!4858457))

(assert (=> b!4266712 m!4858445))

(declare-fun m!4858565 () Bool)

(assert (=> b!4266712 m!4858565))

(assert (=> b!4266712 m!4858445))

(assert (=> b!4266712 m!4858561))

(assert (=> bm!294056 m!4858445))

(declare-fun m!4858567 () Bool)

(assert (=> bm!294056 m!4858567))

(declare-fun m!4858569 () Bool)

(assert (=> b!4266716 m!4858569))

(assert (=> d!1257730 d!1257760))

(declare-fun d!1257762 () Bool)

(assert (=> d!1257762 (= (efficientList$default$2!148 (c!725312 x!738191)) Nil!47270)))

(assert (=> d!1257730 d!1257762))

(assert (=> b!4266516 d!1257710))

(assert (=> b!4266516 d!1257698))

(declare-fun d!1257764 () Bool)

(declare-fun c!725386 () Bool)

(assert (=> d!1257764 (= c!725386 (is-Node!14252 (c!725312 x!738191)))))

(declare-fun e!2649154 () Bool)

(assert (=> d!1257764 (= (inv!62203 (c!725312 x!738191)) e!2649154)))

(declare-fun b!4266724 () Bool)

(declare-fun inv!62207 (Conc!14252) Bool)

(assert (=> b!4266724 (= e!2649154 (inv!62207 (c!725312 x!738191)))))

(declare-fun b!4266725 () Bool)

(declare-fun e!2649155 () Bool)

(assert (=> b!4266725 (= e!2649154 e!2649155)))

(declare-fun res!1753267 () Bool)

(assert (=> b!4266725 (= res!1753267 (not (is-Leaf!22034 (c!725312 x!738191))))))

(assert (=> b!4266725 (=> res!1753267 e!2649155)))

(declare-fun b!4266726 () Bool)

(declare-fun inv!62208 (Conc!14252) Bool)

(assert (=> b!4266726 (= e!2649155 (inv!62208 (c!725312 x!738191)))))

(assert (= (and d!1257764 c!725386) b!4266724))

(assert (= (and d!1257764 (not c!725386)) b!4266725))

(assert (= (and b!4266725 (not res!1753267)) b!4266726))

(declare-fun m!4858571 () Bool)

(assert (=> b!4266724 m!4858571))

(declare-fun m!4858573 () Bool)

(assert (=> b!4266726 m!4858573))

(assert (=> b!4266515 d!1257764))

(declare-fun d!1257766 () Bool)

(declare-fun c!725387 () Bool)

(assert (=> d!1257766 (= c!725387 (is-Node!14252 (c!725312 x!738192)))))

(declare-fun e!2649156 () Bool)

(assert (=> d!1257766 (= (inv!62203 (c!725312 x!738192)) e!2649156)))

(declare-fun b!4266727 () Bool)

(assert (=> b!4266727 (= e!2649156 (inv!62207 (c!725312 x!738192)))))

(declare-fun b!4266728 () Bool)

(declare-fun e!2649157 () Bool)

(assert (=> b!4266728 (= e!2649156 e!2649157)))

(declare-fun res!1753268 () Bool)

(assert (=> b!4266728 (= res!1753268 (not (is-Leaf!22034 (c!725312 x!738192))))))

(assert (=> b!4266728 (=> res!1753268 e!2649157)))

(declare-fun b!4266729 () Bool)

(assert (=> b!4266729 (= e!2649157 (inv!62208 (c!725312 x!738192)))))

(assert (= (and d!1257766 c!725387) b!4266727))

(assert (= (and d!1257766 (not c!725387)) b!4266728))

(assert (= (and b!4266728 (not res!1753268)) b!4266729))

(declare-fun m!4858575 () Bool)

(assert (=> b!4266727 m!4858575))

(declare-fun m!4858577 () Bool)

(assert (=> b!4266729 m!4858577))

(assert (=> b!4266517 d!1257766))

(assert (=> d!1257734 d!1257706))

(declare-fun d!1257768 () Bool)

(declare-fun lt!1511938 () List!47394)

(assert (=> d!1257768 (= lt!1511938 (++!12051 (list!17081 (c!725312 x!738192)) (efficientList$default$2!148 (c!725312 x!738192))))))

(declare-fun e!2649158 () List!47394)

(assert (=> d!1257768 (= lt!1511938 e!2649158)))

(declare-fun c!725388 () Bool)

(assert (=> d!1257768 (= c!725388 (is-Empty!14252 (c!725312 x!738192)))))

(assert (=> d!1257768 (= (efficientList!426 (c!725312 x!738192) (efficientList$default$2!148 (c!725312 x!738192))) lt!1511938)))

(declare-fun b!4266730 () Bool)

(declare-fun lt!1511939 () Unit!66157)

(declare-fun lt!1511935 () Unit!66157)

(assert (=> b!4266730 (= lt!1511939 lt!1511935)))

(declare-fun lt!1511937 () List!47394)

(declare-fun lt!1511936 () List!47394)

(declare-fun call!294062 () List!47394)

(assert (=> b!4266730 (= (++!12051 (++!12051 lt!1511936 lt!1511937) (efficientList$default$2!148 (c!725312 x!738192))) (++!12051 lt!1511936 call!294062))))

(assert (=> b!4266730 (= lt!1511935 (lemmaConcatAssociativity!2695 lt!1511936 lt!1511937 (efficientList$default$2!148 (c!725312 x!738192))))))

(assert (=> b!4266730 (= lt!1511937 (list!17081 (right!35377 (c!725312 x!738192))))))

(assert (=> b!4266730 (= lt!1511936 (list!17081 (left!35047 (c!725312 x!738192))))))

(declare-fun e!2649160 () List!47394)

(assert (=> b!4266730 (= e!2649160 (efficientList!426 (left!35047 (c!725312 x!738192)) (efficientList!426 (right!35377 (c!725312 x!738192)) (efficientList$default$2!148 (c!725312 x!738192)))))))

(declare-fun bm!294057 () Bool)

(declare-fun c!725390 () Bool)

(declare-fun c!725389 () Bool)

(assert (=> bm!294057 (= c!725390 c!725389)))

(declare-fun e!2649159 () List!47394)

(assert (=> bm!294057 (= call!294062 (++!12051 e!2649159 (efficientList$default$2!148 (c!725312 x!738192))))))

(declare-fun b!4266731 () Bool)

(assert (=> b!4266731 (= e!2649158 (efficientList$default$2!148 (c!725312 x!738192)))))

(declare-fun b!4266732 () Bool)

(assert (=> b!4266732 (= e!2649159 lt!1511937)))

(declare-fun b!4266733 () Bool)

(assert (=> b!4266733 (= e!2649160 call!294062)))

(declare-fun b!4266734 () Bool)

(assert (=> b!4266734 (= e!2649159 (efficientList!428 (xs!17558 (c!725312 x!738192))))))

(declare-fun b!4266735 () Bool)

(assert (=> b!4266735 (= e!2649158 e!2649160)))

(assert (=> b!4266735 (= c!725389 (is-Leaf!22034 (c!725312 x!738192)))))

(assert (= (and d!1257768 c!725388) b!4266731))

(assert (= (and d!1257768 (not c!725388)) b!4266735))

(assert (= (and b!4266735 c!725389) b!4266733))

(assert (= (and b!4266735 (not c!725389)) b!4266730))

(assert (= (or b!4266733 b!4266730) bm!294057))

(assert (= (and bm!294057 c!725390) b!4266734))

(assert (= (and bm!294057 (not c!725390)) b!4266732))

(assert (=> d!1257768 m!4858407))

(assert (=> d!1257768 m!4858407))

(assert (=> d!1257768 m!4858453))

(declare-fun m!4858579 () Bool)

(assert (=> d!1257768 m!4858579))

(declare-fun m!4858581 () Bool)

(assert (=> b!4266730 m!4858581))

(declare-fun m!4858583 () Bool)

(assert (=> b!4266730 m!4858583))

(assert (=> b!4266730 m!4858453))

(declare-fun m!4858585 () Bool)

(assert (=> b!4266730 m!4858585))

(assert (=> b!4266730 m!4858583))

(declare-fun m!4858587 () Bool)

(assert (=> b!4266730 m!4858587))

(declare-fun m!4858589 () Bool)

(assert (=> b!4266730 m!4858589))

(assert (=> b!4266730 m!4858435))

(assert (=> b!4266730 m!4858433))

(assert (=> b!4266730 m!4858453))

(declare-fun m!4858591 () Bool)

(assert (=> b!4266730 m!4858591))

(assert (=> b!4266730 m!4858453))

(assert (=> b!4266730 m!4858587))

(assert (=> bm!294057 m!4858453))

(declare-fun m!4858593 () Bool)

(assert (=> bm!294057 m!4858593))

(declare-fun m!4858595 () Bool)

(assert (=> b!4266734 m!4858595))

(assert (=> d!1257734 d!1257768))

(declare-fun d!1257770 () Bool)

(assert (=> d!1257770 (= (efficientList$default$2!148 (c!725312 x!738192)) Nil!47270)))

(assert (=> d!1257734 d!1257770))

(assert (=> d!1257732 d!1257700))

(declare-fun d!1257772 () Bool)

(declare-fun lt!1511943 () List!47394)

(assert (=> d!1257772 (= lt!1511943 (++!12051 (list!17081 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191)))) (efficientList$default$2!148 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))))))))

(declare-fun e!2649161 () List!47394)

(assert (=> d!1257772 (= lt!1511943 e!2649161)))

(declare-fun c!725391 () Bool)

(assert (=> d!1257772 (= c!725391 (is-Empty!14252 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191)))))))

(assert (=> d!1257772 (= (efficientList!426 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))) (efficientList$default$2!148 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))))) lt!1511943)))

(declare-fun b!4266736 () Bool)

(declare-fun lt!1511944 () Unit!66157)

(declare-fun lt!1511940 () Unit!66157)

(assert (=> b!4266736 (= lt!1511944 lt!1511940)))

(declare-fun lt!1511942 () List!47394)

(declare-fun lt!1511941 () List!47394)

(declare-fun call!294063 () List!47394)

(assert (=> b!4266736 (= (++!12051 (++!12051 lt!1511941 lt!1511942) (efficientList$default$2!148 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))))) (++!12051 lt!1511941 call!294063))))

(assert (=> b!4266736 (= lt!1511940 (lemmaConcatAssociativity!2695 lt!1511941 lt!1511942 (efficientList$default$2!148 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))))))))

(assert (=> b!4266736 (= lt!1511942 (list!17081 (right!35377 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))))))))

(assert (=> b!4266736 (= lt!1511941 (list!17081 (left!35047 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))))))))

(declare-fun e!2649163 () List!47394)

(assert (=> b!4266736 (= e!2649163 (efficientList!426 (left!35047 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191)))) (efficientList!426 (right!35377 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191)))) (efficientList$default$2!148 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191)))))))))

(declare-fun bm!294058 () Bool)

(declare-fun c!725393 () Bool)

(declare-fun c!725392 () Bool)

(assert (=> bm!294058 (= c!725393 c!725392)))

(declare-fun e!2649162 () List!47394)

(assert (=> bm!294058 (= call!294063 (++!12051 e!2649162 (efficientList$default$2!148 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))))))))

(declare-fun b!4266737 () Bool)

(assert (=> b!4266737 (= e!2649161 (efficientList$default$2!148 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191)))))))

(declare-fun b!4266738 () Bool)

(assert (=> b!4266738 (= e!2649162 lt!1511942)))

(declare-fun b!4266739 () Bool)

(assert (=> b!4266739 (= e!2649163 call!294063)))

(declare-fun b!4266740 () Bool)

(assert (=> b!4266740 (= e!2649162 (efficientList!428 (xs!17558 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191))))))))

(declare-fun b!4266741 () Bool)

(assert (=> b!4266741 (= e!2649161 e!2649163)))

(assert (=> b!4266741 (= c!725392 (is-Leaf!22034 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191)))))))

(assert (= (and d!1257772 c!725391) b!4266737))

(assert (= (and d!1257772 (not c!725391)) b!4266741))

(assert (= (and b!4266741 c!725392) b!4266739))

(assert (= (and b!4266741 (not c!725392)) b!4266736))

(assert (= (or b!4266739 b!4266736) bm!294058))

(assert (= (and bm!294058 c!725393) b!4266740))

(assert (= (and bm!294058 (not c!725393)) b!4266738))

(assert (=> d!1257772 m!4858401))

(assert (=> d!1257772 m!4858401))

(assert (=> d!1257772 m!4858449))

(declare-fun m!4858597 () Bool)

(assert (=> d!1257772 m!4858597))

(declare-fun m!4858599 () Bool)

(assert (=> b!4266736 m!4858599))

(declare-fun m!4858601 () Bool)

(assert (=> b!4266736 m!4858601))

(assert (=> b!4266736 m!4858449))

(declare-fun m!4858603 () Bool)

(assert (=> b!4266736 m!4858603))

(assert (=> b!4266736 m!4858601))

(declare-fun m!4858605 () Bool)

(assert (=> b!4266736 m!4858605))

(declare-fun m!4858607 () Bool)

(assert (=> b!4266736 m!4858607))

(assert (=> b!4266736 m!4858475))

(assert (=> b!4266736 m!4858473))

(assert (=> b!4266736 m!4858449))

(declare-fun m!4858609 () Bool)

(assert (=> b!4266736 m!4858609))

(assert (=> b!4266736 m!4858449))

(assert (=> b!4266736 m!4858605))

(assert (=> bm!294058 m!4858449))

(declare-fun m!4858611 () Bool)

(assert (=> bm!294058 m!4858611))

(declare-fun m!4858613 () Bool)

(assert (=> b!4266740 m!4858613))

(assert (=> d!1257732 d!1257772))

(declare-fun d!1257774 () Bool)

(assert (=> d!1257774 (= (efficientList$default$2!148 (c!725312 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738191)))) Nil!47270)))

(assert (=> d!1257732 d!1257774))

(assert (=> start!408852 d!1257758))

(declare-fun d!1257776 () Bool)

(declare-fun isBalanced!3811 (Conc!14252) Bool)

(assert (=> d!1257776 (= (inv!62204 x!738191) (isBalanced!3811 (c!725312 x!738191)))))

(declare-fun bs!599462 () Bool)

(assert (= bs!599462 d!1257776))

(declare-fun m!4858615 () Bool)

(assert (=> bs!599462 m!4858615))

(assert (=> start!408852 d!1257776))

(assert (=> start!408852 d!1257702))

(assert (=> start!408852 d!1257694))

(assert (=> start!408852 d!1257700))

(declare-fun d!1257778 () Bool)

(declare-fun choose!26002 (Int) Bool)

(assert (=> d!1257778 (= (Forall!1609 lambda!130314) (choose!26002 lambda!130314))))

(declare-fun bs!599463 () Bool)

(assert (= bs!599463 d!1257778))

(declare-fun m!4858617 () Bool)

(assert (=> bs!599463 m!4858617))

(assert (=> start!408852 d!1257778))

(assert (=> d!1257728 d!1257708))

(declare-fun d!1257780 () Bool)

(declare-fun lt!1511948 () List!47394)

(assert (=> d!1257780 (= lt!1511948 (++!12051 (list!17081 (c!725312 x!738193)) (efficientList$default$2!148 (c!725312 x!738193))))))

(declare-fun e!2649164 () List!47394)

(assert (=> d!1257780 (= lt!1511948 e!2649164)))

(declare-fun c!725394 () Bool)

(assert (=> d!1257780 (= c!725394 (is-Empty!14252 (c!725312 x!738193)))))

(assert (=> d!1257780 (= (efficientList!426 (c!725312 x!738193) (efficientList$default$2!148 (c!725312 x!738193))) lt!1511948)))

(declare-fun b!4266742 () Bool)

(declare-fun lt!1511949 () Unit!66157)

(declare-fun lt!1511945 () Unit!66157)

(assert (=> b!4266742 (= lt!1511949 lt!1511945)))

(declare-fun lt!1511946 () List!47394)

(declare-fun lt!1511947 () List!47394)

(declare-fun call!294064 () List!47394)

(assert (=> b!4266742 (= (++!12051 (++!12051 lt!1511946 lt!1511947) (efficientList$default$2!148 (c!725312 x!738193))) (++!12051 lt!1511946 call!294064))))

(assert (=> b!4266742 (= lt!1511945 (lemmaConcatAssociativity!2695 lt!1511946 lt!1511947 (efficientList$default$2!148 (c!725312 x!738193))))))

(assert (=> b!4266742 (= lt!1511947 (list!17081 (right!35377 (c!725312 x!738193))))))

(assert (=> b!4266742 (= lt!1511946 (list!17081 (left!35047 (c!725312 x!738193))))))

(declare-fun e!2649166 () List!47394)

(assert (=> b!4266742 (= e!2649166 (efficientList!426 (left!35047 (c!725312 x!738193)) (efficientList!426 (right!35377 (c!725312 x!738193)) (efficientList$default$2!148 (c!725312 x!738193)))))))

(declare-fun bm!294059 () Bool)

(declare-fun c!725396 () Bool)

(declare-fun c!725395 () Bool)

(assert (=> bm!294059 (= c!725396 c!725395)))

(declare-fun e!2649165 () List!47394)

(assert (=> bm!294059 (= call!294064 (++!12051 e!2649165 (efficientList$default$2!148 (c!725312 x!738193))))))

(declare-fun b!4266743 () Bool)

(assert (=> b!4266743 (= e!2649164 (efficientList$default$2!148 (c!725312 x!738193)))))

(declare-fun b!4266744 () Bool)

(assert (=> b!4266744 (= e!2649165 lt!1511947)))

(declare-fun b!4266745 () Bool)

(assert (=> b!4266745 (= e!2649166 call!294064)))

(declare-fun b!4266746 () Bool)

(assert (=> b!4266746 (= e!2649165 (efficientList!428 (xs!17558 (c!725312 x!738193))))))

(declare-fun b!4266747 () Bool)

(assert (=> b!4266747 (= e!2649164 e!2649166)))

(assert (=> b!4266747 (= c!725395 (is-Leaf!22034 (c!725312 x!738193)))))

(assert (= (and d!1257780 c!725394) b!4266743))

(assert (= (and d!1257780 (not c!725394)) b!4266747))

(assert (= (and b!4266747 c!725395) b!4266745))

(assert (= (and b!4266747 (not c!725395)) b!4266742))

(assert (= (or b!4266745 b!4266742) bm!294059))

(assert (= (and bm!294059 c!725396) b!4266746))

(assert (= (and bm!294059 (not c!725396)) b!4266744))

(assert (=> d!1257780 m!4858409))

(assert (=> d!1257780 m!4858409))

(assert (=> d!1257780 m!4858441))

(declare-fun m!4858619 () Bool)

(assert (=> d!1257780 m!4858619))

(declare-fun m!4858621 () Bool)

(assert (=> b!4266742 m!4858621))

(declare-fun m!4858623 () Bool)

(assert (=> b!4266742 m!4858623))

(assert (=> b!4266742 m!4858441))

(declare-fun m!4858625 () Bool)

(assert (=> b!4266742 m!4858625))

(assert (=> b!4266742 m!4858623))

(declare-fun m!4858627 () Bool)

(assert (=> b!4266742 m!4858627))

(declare-fun m!4858629 () Bool)

(assert (=> b!4266742 m!4858629))

(assert (=> b!4266742 m!4858467))

(assert (=> b!4266742 m!4858465))

(assert (=> b!4266742 m!4858441))

(declare-fun m!4858631 () Bool)

(assert (=> b!4266742 m!4858631))

(assert (=> b!4266742 m!4858441))

(assert (=> b!4266742 m!4858627))

(assert (=> bm!294059 m!4858441))

(declare-fun m!4858633 () Bool)

(assert (=> bm!294059 m!4858633))

(declare-fun m!4858635 () Bool)

(assert (=> b!4266746 m!4858635))

(assert (=> d!1257728 d!1257780))

(declare-fun d!1257782 () Bool)

(assert (=> d!1257782 (= (efficientList$default$2!148 (c!725312 x!738193)) Nil!47270)))

(assert (=> d!1257728 d!1257782))

(declare-fun d!1257784 () Bool)

(declare-fun choose!26003 (Int) Bool)

(assert (=> d!1257784 (= (Forall2!1206 lambda!130317) (choose!26003 lambda!130317))))

(declare-fun bs!599464 () Bool)

(assert (= bs!599464 d!1257784))

(declare-fun m!4858637 () Bool)

(assert (=> bs!599464 m!4858637))

(assert (=> b!4266506 d!1257784))

(assert (=> b!4266506 d!1257778))

(declare-fun bs!599465 () Bool)

(declare-fun d!1257786 () Bool)

(assert (= bs!599465 (and d!1257786 start!408852)))

(declare-fun lambda!130338 () Int)

(assert (=> bs!599465 (not (= lambda!130338 lambda!130314))))

(assert (=> d!1257786 true))

(declare-fun order!24771 () Int)

(declare-fun order!24773 () Int)

(declare-fun dynLambda!20226 (Int Int) Int)

(declare-fun dynLambda!20227 (Int Int) Int)

(assert (=> d!1257786 (< (dynLambda!20226 order!24771 lambda!130315) (dynLambda!20227 order!24773 lambda!130338))))

(assert (=> d!1257786 true))

(declare-fun order!24775 () Int)

(declare-fun dynLambda!20228 (Int Int) Int)

(assert (=> d!1257786 (< (dynLambda!20228 order!24775 lambda!130316) (dynLambda!20227 order!24773 lambda!130338))))

(assert (=> d!1257786 (= (semiInverseModEq!3491 lambda!130315 lambda!130316) (Forall!1609 lambda!130338))))

(declare-fun bs!599466 () Bool)

(assert (= bs!599466 d!1257786))

(declare-fun m!4858639 () Bool)

(assert (=> bs!599466 m!4858639))

(assert (=> b!4266506 d!1257786))

(declare-fun d!1257788 () Bool)

(assert (=> d!1257788 (= (inv!62204 x!738193) (isBalanced!3811 (c!725312 x!738193)))))

(declare-fun bs!599467 () Bool)

(assert (= bs!599467 d!1257788))

(declare-fun m!4858641 () Bool)

(assert (=> bs!599467 m!4858641))

(assert (=> b!4266506 d!1257788))

(declare-fun d!1257790 () Bool)

(assert (=> d!1257790 (= (inv!62204 x!738192) (isBalanced!3811 (c!725312 x!738192)))))

(declare-fun bs!599468 () Bool)

(assert (= bs!599468 d!1257790))

(declare-fun m!4858643 () Bool)

(assert (=> bs!599468 m!4858643))

(assert (=> b!4266506 d!1257790))

(assert (=> b!4266506 d!1257708))

(assert (=> b!4266506 d!1257706))

(declare-fun d!1257792 () Bool)

(declare-fun c!725397 () Bool)

(assert (=> d!1257792 (= c!725397 (is-Node!14252 (c!725312 x!738193)))))

(declare-fun e!2649167 () Bool)

(assert (=> d!1257792 (= (inv!62203 (c!725312 x!738193)) e!2649167)))

(declare-fun b!4266752 () Bool)

(assert (=> b!4266752 (= e!2649167 (inv!62207 (c!725312 x!738193)))))

(declare-fun b!4266753 () Bool)

(declare-fun e!2649168 () Bool)

(assert (=> b!4266753 (= e!2649167 e!2649168)))

(declare-fun res!1753269 () Bool)

(assert (=> b!4266753 (= res!1753269 (not (is-Leaf!22034 (c!725312 x!738193))))))

(assert (=> b!4266753 (=> res!1753269 e!2649168)))

(declare-fun b!4266754 () Bool)

(assert (=> b!4266754 (= e!2649168 (inv!62208 (c!725312 x!738193)))))

(assert (= (and d!1257792 c!725397) b!4266752))

(assert (= (and d!1257792 (not c!725397)) b!4266753))

(assert (= (and b!4266753 (not res!1753269)) b!4266754))

(declare-fun m!4858645 () Bool)

(assert (=> b!4266752 m!4858645))

(declare-fun m!4858647 () Bool)

(assert (=> b!4266754 m!4858647))

(assert (=> b!4266518 d!1257792))

(declare-fun tp!1307536 () Bool)

(declare-fun b!4266761 () Bool)

(declare-fun e!2649173 () Bool)

(declare-fun tp!1307535 () Bool)

(assert (=> b!4266761 (= e!2649173 (and (inv!62203 (left!35047 (c!725312 x!738191))) tp!1307535 (inv!62203 (right!35377 (c!725312 x!738191))) tp!1307536))))

(declare-fun b!4266762 () Bool)

(declare-fun inv!62209 (IArray!28509) Bool)

(assert (=> b!4266762 (= e!2649173 (inv!62209 (xs!17558 (c!725312 x!738191))))))

(assert (=> b!4266515 (= tp!1307519 (and (inv!62203 (c!725312 x!738191)) e!2649173))))

(assert (= (and b!4266515 (is-Node!14252 (c!725312 x!738191))) b!4266761))

(assert (= (and b!4266515 (is-Leaf!22034 (c!725312 x!738191))) b!4266762))

(declare-fun m!4858649 () Bool)

(assert (=> b!4266761 m!4858649))

(declare-fun m!4858651 () Bool)

(assert (=> b!4266761 m!4858651))

(declare-fun m!4858653 () Bool)

(assert (=> b!4266762 m!4858653))

(assert (=> b!4266515 m!4858329))

(declare-fun e!2649175 () Bool)

(declare-fun tp!1307538 () Bool)

(declare-fun tp!1307537 () Bool)

(declare-fun b!4266763 () Bool)

(assert (=> b!4266763 (= e!2649175 (and (inv!62203 (left!35047 (c!725312 x!738192))) tp!1307537 (inv!62203 (right!35377 (c!725312 x!738192))) tp!1307538))))

(declare-fun b!4266764 () Bool)

(assert (=> b!4266764 (= e!2649175 (inv!62209 (xs!17558 (c!725312 x!738192))))))

(assert (=> b!4266517 (= tp!1307521 (and (inv!62203 (c!725312 x!738192)) e!2649175))))

(assert (= (and b!4266517 (is-Node!14252 (c!725312 x!738192))) b!4266763))

(assert (= (and b!4266517 (is-Leaf!22034 (c!725312 x!738192))) b!4266764))

(declare-fun m!4858655 () Bool)

(assert (=> b!4266763 m!4858655))

(declare-fun m!4858657 () Bool)

(assert (=> b!4266763 m!4858657))

(declare-fun m!4858659 () Bool)

(assert (=> b!4266764 m!4858659))

(assert (=> b!4266517 m!4858353))

(declare-fun tp!1307540 () Bool)

(declare-fun tp!1307539 () Bool)

(declare-fun b!4266765 () Bool)

(declare-fun e!2649177 () Bool)

(assert (=> b!4266765 (= e!2649177 (and (inv!62203 (left!35047 (c!725312 x!738193))) tp!1307539 (inv!62203 (right!35377 (c!725312 x!738193))) tp!1307540))))

(declare-fun b!4266766 () Bool)

(assert (=> b!4266766 (= e!2649177 (inv!62209 (xs!17558 (c!725312 x!738193))))))

(assert (=> b!4266518 (= tp!1307520 (and (inv!62203 (c!725312 x!738193)) e!2649177))))

(assert (= (and b!4266518 (is-Node!14252 (c!725312 x!738193))) b!4266765))

(assert (= (and b!4266518 (is-Leaf!22034 (c!725312 x!738193))) b!4266766))

(declare-fun m!4858661 () Bool)

(assert (=> b!4266765 m!4858661))

(declare-fun m!4858663 () Bool)

(assert (=> b!4266765 m!4858663))

(declare-fun m!4858665 () Bool)

(assert (=> b!4266766 m!4858665))

(assert (=> b!4266518 m!4858355))

(push 1)

(assert (not b!4266740))

(assert (not b!4266762))

(assert (not b!4266694))

(assert (not b!4266599))

(assert (not d!1257788))

(assert (not b!4266517))

(assert (not b!4266763))

(assert (not b!4266730))

(assert (not bm!294056))

(assert (not b!4266594))

(assert (not b!4266603))

(assert (not b!4266677))

(assert (not b!4266518))

(assert (not b!4266698))

(assert (not d!1257760))

(assert (not bm!294059))

(assert (not b!4266515))

(assert (not d!1257768))

(assert (not b!4266676))

(assert (not b!4266736))

(assert (not b!4266752))

(assert (not b!4266692))

(assert (not d!1257772))

(assert (not b!4266746))

(assert (not b!4266682))

(assert (not b!4266590))

(assert (not d!1257786))

(assert (not bm!294058))

(assert (not b!4266766))

(assert (not b!4266595))

(assert (not b!4266591))

(assert (not b!4266712))

(assert (not b!4266686))

(assert (not b!4266684))

(assert (not bm!294057))

(assert (not b!4266727))

(assert (not b!4266734))

(assert (not b!4266602))

(assert (not b!4266696))

(assert (not b!4266598))

(assert (not b!4266754))

(assert (not b!4266726))

(assert (not b!4266765))

(assert (not d!1257780))

(assert (not d!1257790))

(assert (not b!4266683))

(assert (not b!4266716))

(assert (not b!4266679))

(assert (not b!4266724))

(assert (not d!1257784))

(assert (not d!1257778))

(assert (not b!4266695))

(assert (not b!4266761))

(assert (not d!1257776))

(assert (not b!4266729))

(assert (not b!4266764))

(assert (not b!4266742))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

