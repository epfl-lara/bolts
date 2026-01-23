; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!94108 () Bool)

(assert start!94108)

(declare-fun bs!259165 () Bool)

(declare-fun b!1097455 () Bool)

(assert (= bs!259165 (and b!1097455 start!94108)))

(declare-fun lambda!43054 () Int)

(declare-fun lambda!43053 () Int)

(assert (=> bs!259165 (not (= lambda!43054 lambda!43053))))

(declare-fun b!1097464 () Bool)

(declare-fun e!694877 () Bool)

(assert (=> b!1097464 (= e!694877 true)))

(declare-fun b!1097463 () Bool)

(declare-fun e!694876 () Bool)

(assert (=> b!1097463 (= e!694876 e!694877)))

(assert (=> b!1097455 e!694876))

(assert (= b!1097463 b!1097464))

(assert (= b!1097455 b!1097463))

(declare-fun lambda!43055 () Int)

(assert (=> bs!259165 (not (= lambda!43055 lambda!43053))))

(assert (=> b!1097455 (not (= lambda!43055 lambda!43054))))

(declare-fun b!1097466 () Bool)

(declare-fun e!694879 () Bool)

(assert (=> b!1097466 (= e!694879 true)))

(declare-fun b!1097465 () Bool)

(declare-fun e!694878 () Bool)

(assert (=> b!1097465 (= e!694878 e!694879)))

(assert (=> b!1097455 e!694878))

(assert (= b!1097465 b!1097466))

(assert (= b!1097455 b!1097465))

(declare-fun lambda!43056 () Int)

(assert (=> bs!259165 (not (= lambda!43056 lambda!43053))))

(assert (=> b!1097455 (not (= lambda!43056 lambda!43054))))

(assert (=> b!1097455 (not (= lambda!43056 lambda!43055))))

(declare-fun b!1097468 () Bool)

(declare-fun e!694881 () Bool)

(assert (=> b!1097468 (= e!694881 true)))

(declare-fun b!1097467 () Bool)

(declare-fun e!694880 () Bool)

(assert (=> b!1097467 (= e!694880 e!694881)))

(assert (=> b!1097455 e!694880))

(assert (= b!1097467 b!1097468))

(assert (= b!1097455 b!1097467))

(declare-fun res!487155 () Bool)

(declare-fun e!694869 () Bool)

(assert (=> start!94108 (=> (not res!487155) (not e!694869))))

(declare-datatypes ((List!10563 0))(
  ( (Nil!10547) (Cons!10547 (h!15948 (_ BitVec 16)) (t!103625 List!10563)) )
))
(declare-datatypes ((TokenValue!1871 0))(
  ( (FloatLiteralValue!3742 (text!13542 List!10563)) (TokenValueExt!1870 (__x!7453 Int)) (Broken!9355 (value!59371 List!10563)) (Object!1886) (End!1871) (Def!1871) (Underscore!1871) (Match!1871) (Else!1871) (Error!1871) (Case!1871) (If!1871) (Extends!1871) (Abstract!1871) (Class!1871) (Val!1871) (DelimiterValue!3742 (del!1931 List!10563)) (KeywordValue!1877 (value!59372 List!10563)) (CommentValue!3742 (value!59373 List!10563)) (WhitespaceValue!3742 (value!59374 List!10563)) (IndentationValue!1871 (value!59375 List!10563)) (String!12926) (Int32!1871) (Broken!9356 (value!59376 List!10563)) (Boolean!1872) (Unit!16149) (OperatorValue!1874 (op!1931 List!10563)) (IdentifierValue!3742 (value!59377 List!10563)) (IdentifierValue!3743 (value!59378 List!10563)) (WhitespaceValue!3743 (value!59379 List!10563)) (True!3742) (False!3742) (Broken!9357 (value!59380 List!10563)) (Broken!9358 (value!59381 List!10563)) (True!3743) (RightBrace!1871) (RightBracket!1871) (Colon!1871) (Null!1871) (Comma!1871) (LeftBracket!1871) (False!3743) (LeftBrace!1871) (ImaginaryLiteralValue!1871 (text!13543 List!10563)) (StringLiteralValue!5613 (value!59382 List!10563)) (EOFValue!1871 (value!59383 List!10563)) (IdentValue!1871 (value!59384 List!10563)) (DelimiterValue!3743 (value!59385 List!10563)) (DedentValue!1871 (value!59386 List!10563)) (NewLineValue!1871 (value!59387 List!10563)) (IntegerValue!5613 (value!59388 (_ BitVec 32)) (text!13544 List!10563)) (IntegerValue!5614 (value!59389 Int) (text!13545 List!10563)) (Times!1871) (Or!1871) (Equal!1871) (Minus!1871) (Broken!9359 (value!59390 List!10563)) (And!1871) (Div!1871) (LessEqual!1871) (Mod!1871) (Concat!4945) (Not!1871) (Plus!1871) (SpaceValue!1871 (value!59391 List!10563)) (IntegerValue!5615 (value!59392 Int) (text!13546 List!10563)) (StringLiteralValue!5614 (text!13547 List!10563)) (FloatLiteralValue!3743 (text!13548 List!10563)) (BytesLiteralValue!1871 (value!59393 List!10563)) (CommentValue!3743 (value!59394 List!10563)) (StringLiteralValue!5615 (value!59395 List!10563)) (ErrorTokenValue!1871 (msg!1932 List!10563)) )
))
(declare-datatypes ((Regex!3074 0))(
  ( (ElementMatch!3074 (c!186260 (_ BitVec 16))) (Concat!4946 (regOne!6660 Regex!3074) (regTwo!6660 Regex!3074)) (EmptyExpr!3074) (Star!3074 (reg!3403 Regex!3074)) (EmptyLang!3074) (Union!3074 (regOne!6661 Regex!3074) (regTwo!6661 Regex!3074)) )
))
(declare-datatypes ((String!12927 0))(
  ( (String!12928 (value!59396 String)) )
))
(declare-datatypes ((IArray!6489 0))(
  ( (IArray!6490 (innerList!3302 List!10563)) )
))
(declare-datatypes ((Conc!3242 0))(
  ( (Node!3242 (left!9086 Conc!3242) (right!9416 Conc!3242) (csize!6714 Int) (cheight!3453 Int)) (Leaf!5151 (xs!5935 IArray!6489) (csize!6715 Int)) (Empty!3242) )
))
(declare-datatypes ((BalanceConc!6498 0))(
  ( (BalanceConc!6499 (c!186261 Conc!3242)) )
))
(declare-datatypes ((TokenValueInjection!3442 0))(
  ( (TokenValueInjection!3443 (toValue!2882 Int) (toChars!2741 Int)) )
))
(declare-datatypes ((Rule!3410 0))(
  ( (Rule!3411 (regex!1805 Regex!3074) (tag!2067 String!12927) (isSeparator!1805 Bool) (transformation!1805 TokenValueInjection!3442)) )
))
(declare-datatypes ((Token!3276 0))(
  ( (Token!3277 (value!59397 TokenValue!1871) (rule!3228 Rule!3410) (size!8171 Int) (originalCharacters!2361 List!10563)) )
))
(declare-datatypes ((List!10564 0))(
  ( (Nil!10548) (Cons!10548 (h!15949 Token!3276) (t!103626 List!10564)) )
))
(declare-datatypes ((IArray!6491 0))(
  ( (IArray!6492 (innerList!3303 List!10564)) )
))
(declare-datatypes ((Conc!3243 0))(
  ( (Node!3243 (left!9087 Conc!3243) (right!9417 Conc!3243) (csize!6716 Int) (cheight!3454 Int)) (Leaf!5152 (xs!5936 IArray!6491) (csize!6717 Int)) (Empty!3243) )
))
(declare-datatypes ((List!10565 0))(
  ( (Nil!10549) (Cons!10549 (h!15950 Rule!3410) (t!103627 List!10565)) )
))
(declare-datatypes ((BalanceConc!6500 0))(
  ( (BalanceConc!6501 (c!186262 Conc!3243)) )
))
(declare-datatypes ((PrintableTokens!326 0))(
  ( (PrintableTokens!327 (rules!9092 List!10565) (tokens!1364 BalanceConc!6500)) )
))
(declare-datatypes ((tuple2!11736 0))(
  ( (tuple2!11737 (_1!6694 Int) (_2!6694 PrintableTokens!326)) )
))
(declare-datatypes ((List!10566 0))(
  ( (Nil!10550) (Cons!10550 (h!15951 tuple2!11736) (t!103628 List!10566)) )
))
(declare-datatypes ((IArray!6493 0))(
  ( (IArray!6494 (innerList!3304 List!10566)) )
))
(declare-datatypes ((Conc!3244 0))(
  ( (Node!3244 (left!9088 Conc!3244) (right!9418 Conc!3244) (csize!6718 Int) (cheight!3455 Int)) (Leaf!5153 (xs!5937 IArray!6493) (csize!6719 Int)) (Empty!3244) )
))
(declare-datatypes ((BalanceConc!6502 0))(
  ( (BalanceConc!6503 (c!186263 Conc!3244)) )
))
(declare-fun objs!8 () BalanceConc!6502)

(declare-fun forall!2392 (BalanceConc!6502 Int) Bool)

(assert (=> start!94108 (= res!487155 (forall!2392 objs!8 lambda!43053))))

(assert (=> start!94108 e!694869))

(declare-fun e!694870 () Bool)

(declare-fun inv!13530 (BalanceConc!6502) Bool)

(assert (=> start!94108 (and (inv!13530 objs!8) e!694870)))

(declare-fun b!1097454 () Bool)

(declare-fun e!694871 () Bool)

(assert (=> b!1097454 (= e!694869 e!694871)))

(declare-fun res!487154 () Bool)

(assert (=> b!1097454 (=> (not res!487154) (not e!694871))))

(declare-fun lt!370816 () Int)

(assert (=> b!1097454 (= res!487154 (> lt!370816 1))))

(declare-fun size!8172 (BalanceConc!6502) Int)

(assert (=> b!1097454 (= lt!370816 (size!8172 objs!8))))

(declare-fun lt!370817 () tuple2!11736)

(declare-fun contains!1817 (BalanceConc!6502 tuple2!11736) Bool)

(assert (=> b!1097455 (= e!694871 (not (contains!1817 objs!8 lt!370817)))))

(declare-fun lt!370814 () BalanceConc!6502)

(declare-fun filter!294 (BalanceConc!6502 Int) BalanceConc!6502)

(assert (=> b!1097455 (= lt!370814 (filter!294 objs!8 lambda!43056))))

(declare-fun lt!370815 () BalanceConc!6502)

(assert (=> b!1097455 (= lt!370815 (filter!294 objs!8 lambda!43055))))

(declare-fun lt!370818 () BalanceConc!6502)

(assert (=> b!1097455 (= lt!370818 (filter!294 objs!8 lambda!43054))))

(declare-fun apply!2094 (BalanceConc!6502 Int) tuple2!11736)

(assert (=> b!1097455 (= lt!370817 (apply!2094 objs!8 (ite (>= lt!370816 0) (div lt!370816 2) (- (div (- lt!370816) 2)))))))

(declare-fun b!1097456 () Bool)

(declare-fun tp!326717 () Bool)

(declare-fun inv!13531 (Conc!3244) Bool)

(assert (=> b!1097456 (= e!694870 (and (inv!13531 (c!186263 objs!8)) tp!326717))))

(assert (= (and start!94108 res!487155) b!1097454))

(assert (= (and b!1097454 res!487154) b!1097455))

(assert (= start!94108 b!1097456))

(declare-fun m!1253351 () Bool)

(assert (=> start!94108 m!1253351))

(declare-fun m!1253353 () Bool)

(assert (=> start!94108 m!1253353))

(declare-fun m!1253355 () Bool)

(assert (=> b!1097454 m!1253355))

(declare-fun m!1253357 () Bool)

(assert (=> b!1097455 m!1253357))

(declare-fun m!1253359 () Bool)

(assert (=> b!1097455 m!1253359))

(declare-fun m!1253361 () Bool)

(assert (=> b!1097455 m!1253361))

(declare-fun m!1253363 () Bool)

(assert (=> b!1097455 m!1253363))

(declare-fun m!1253365 () Bool)

(assert (=> b!1097455 m!1253365))

(declare-fun m!1253367 () Bool)

(assert (=> b!1097456 m!1253367))

(push 1)

(assert (not b!1097456))

(assert (not b!1097468))

(assert (not b!1097455))

(assert (not b!1097454))

(assert (not b!1097466))

(assert (not b!1097467))

(assert (not start!94108))

(assert (not b!1097464))

(assert (not b!1097463))

(assert (not b!1097465))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!310155 () Bool)

(declare-fun lt!370836 () Bool)

(declare-fun forall!2394 (List!10566 Int) Bool)

(declare-fun list!3791 (BalanceConc!6502) List!10566)

(assert (=> d!310155 (= lt!370836 (forall!2394 (list!3791 objs!8) lambda!43053))))

(declare-fun forall!2395 (Conc!3244 Int) Bool)

(assert (=> d!310155 (= lt!370836 (forall!2395 (c!186263 objs!8) lambda!43053))))

(assert (=> d!310155 (= (forall!2392 objs!8 lambda!43053) lt!370836)))

(declare-fun bs!259167 () Bool)

(assert (= bs!259167 d!310155))

(declare-fun m!1253387 () Bool)

(assert (=> bs!259167 m!1253387))

(assert (=> bs!259167 m!1253387))

(declare-fun m!1253389 () Bool)

(assert (=> bs!259167 m!1253389))

(declare-fun m!1253391 () Bool)

(assert (=> bs!259167 m!1253391))

(assert (=> start!94108 d!310155))

(declare-fun d!310157 () Bool)

(declare-fun isBalanced!897 (Conc!3244) Bool)

(assert (=> d!310157 (= (inv!13530 objs!8) (isBalanced!897 (c!186263 objs!8)))))

(declare-fun bs!259168 () Bool)

(assert (= bs!259168 d!310157))

(declare-fun m!1253393 () Bool)

(assert (=> bs!259168 m!1253393))

(assert (=> start!94108 d!310157))

(declare-fun d!310159 () Bool)

(declare-fun lt!370839 () Bool)

(declare-fun contains!1819 (List!10566 tuple2!11736) Bool)

(assert (=> d!310159 (= lt!370839 (contains!1819 (list!3791 objs!8) lt!370817))))

(declare-fun contains!1820 (Conc!3244 tuple2!11736) Bool)

(assert (=> d!310159 (= lt!370839 (contains!1820 (c!186263 objs!8) lt!370817))))

(assert (=> d!310159 (= (contains!1817 objs!8 lt!370817) lt!370839)))

(declare-fun bs!259169 () Bool)

(assert (= bs!259169 d!310159))

(assert (=> bs!259169 m!1253387))

(assert (=> bs!259169 m!1253387))

(declare-fun m!1253395 () Bool)

(assert (=> bs!259169 m!1253395))

(declare-fun m!1253397 () Bool)

(assert (=> bs!259169 m!1253397))

(assert (=> b!1097455 d!310159))

(declare-fun d!310161 () Bool)

(declare-fun lt!370842 () tuple2!11736)

(declare-fun apply!2096 (List!10566 Int) tuple2!11736)

(assert (=> d!310161 (= lt!370842 (apply!2096 (list!3791 objs!8) (ite (>= lt!370816 0) (div lt!370816 2) (- (div (- lt!370816) 2)))))))

(declare-fun apply!2097 (Conc!3244 Int) tuple2!11736)

(assert (=> d!310161 (= lt!370842 (apply!2097 (c!186263 objs!8) (ite (>= lt!370816 0) (div lt!370816 2) (- (div (- lt!370816) 2)))))))

(declare-fun e!694903 () Bool)

(assert (=> d!310161 e!694903))

(declare-fun res!487164 () Bool)

(assert (=> d!310161 (=> (not res!487164) (not e!694903))))

(assert (=> d!310161 (= res!487164 (<= 0 (ite (>= lt!370816 0) (div lt!370816 2) (- (div (- lt!370816) 2)))))))

(assert (=> d!310161 (= (apply!2094 objs!8 (ite (>= lt!370816 0) (div lt!370816 2) (- (div (- lt!370816) 2)))) lt!370842)))

(declare-fun b!1097492 () Bool)

(assert (=> b!1097492 (= e!694903 (< (ite (>= lt!370816 0) (div lt!370816 2) (- (div (- lt!370816) 2))) (size!8172 objs!8)))))

(assert (= (and d!310161 res!487164) b!1097492))

(assert (=> d!310161 m!1253387))

(assert (=> d!310161 m!1253387))

(declare-fun m!1253399 () Bool)

(assert (=> d!310161 m!1253399))

(declare-fun m!1253401 () Bool)

(assert (=> d!310161 m!1253401))

(assert (=> b!1097492 m!1253355))

(assert (=> b!1097455 d!310161))

(declare-fun d!310165 () Bool)

(declare-fun e!694906 () Bool)

(assert (=> d!310165 e!694906))

(declare-fun res!487167 () Bool)

(assert (=> d!310165 (=> (not res!487167) (not e!694906))))

(declare-fun filter!296 (Conc!3244 Int) Conc!3244)

(assert (=> d!310165 (= res!487167 (isBalanced!897 (filter!296 (c!186263 objs!8) lambda!43054)))))

(declare-fun lt!370848 () BalanceConc!6502)

(assert (=> d!310165 (= lt!370848 (BalanceConc!6503 (filter!296 (c!186263 objs!8) lambda!43054)))))

(assert (=> d!310165 (= (filter!294 objs!8 lambda!43054) lt!370848)))

(declare-fun b!1097495 () Bool)

(declare-fun filter!297 (List!10566 Int) List!10566)

(assert (=> b!1097495 (= e!694906 (= (list!3791 lt!370848) (filter!297 (list!3791 objs!8) lambda!43054)))))

(assert (= (and d!310165 res!487167) b!1097495))

(declare-fun m!1253411 () Bool)

(assert (=> d!310165 m!1253411))

(assert (=> d!310165 m!1253411))

(declare-fun m!1253413 () Bool)

(assert (=> d!310165 m!1253413))

(declare-fun m!1253415 () Bool)

(assert (=> b!1097495 m!1253415))

(assert (=> b!1097495 m!1253387))

(assert (=> b!1097495 m!1253387))

(declare-fun m!1253417 () Bool)

(assert (=> b!1097495 m!1253417))

(assert (=> b!1097455 d!310165))

(declare-fun d!310171 () Bool)

(declare-fun e!694907 () Bool)

(assert (=> d!310171 e!694907))

(declare-fun res!487168 () Bool)

(assert (=> d!310171 (=> (not res!487168) (not e!694907))))

(assert (=> d!310171 (= res!487168 (isBalanced!897 (filter!296 (c!186263 objs!8) lambda!43055)))))

(declare-fun lt!370849 () BalanceConc!6502)

(assert (=> d!310171 (= lt!370849 (BalanceConc!6503 (filter!296 (c!186263 objs!8) lambda!43055)))))

(assert (=> d!310171 (= (filter!294 objs!8 lambda!43055) lt!370849)))

(declare-fun b!1097496 () Bool)

(assert (=> b!1097496 (= e!694907 (= (list!3791 lt!370849) (filter!297 (list!3791 objs!8) lambda!43055)))))

(assert (= (and d!310171 res!487168) b!1097496))

(declare-fun m!1253419 () Bool)

(assert (=> d!310171 m!1253419))

(assert (=> d!310171 m!1253419))

(declare-fun m!1253421 () Bool)

(assert (=> d!310171 m!1253421))

(declare-fun m!1253423 () Bool)

(assert (=> b!1097496 m!1253423))

(assert (=> b!1097496 m!1253387))

(assert (=> b!1097496 m!1253387))

(declare-fun m!1253425 () Bool)

(assert (=> b!1097496 m!1253425))

(assert (=> b!1097455 d!310171))

(declare-fun d!310173 () Bool)

(declare-fun e!694908 () Bool)

(assert (=> d!310173 e!694908))

(declare-fun res!487169 () Bool)

(assert (=> d!310173 (=> (not res!487169) (not e!694908))))

(assert (=> d!310173 (= res!487169 (isBalanced!897 (filter!296 (c!186263 objs!8) lambda!43056)))))

(declare-fun lt!370850 () BalanceConc!6502)

(assert (=> d!310173 (= lt!370850 (BalanceConc!6503 (filter!296 (c!186263 objs!8) lambda!43056)))))

(assert (=> d!310173 (= (filter!294 objs!8 lambda!43056) lt!370850)))

(declare-fun b!1097497 () Bool)

(assert (=> b!1097497 (= e!694908 (= (list!3791 lt!370850) (filter!297 (list!3791 objs!8) lambda!43056)))))

(assert (= (and d!310173 res!487169) b!1097497))

(declare-fun m!1253427 () Bool)

(assert (=> d!310173 m!1253427))

(assert (=> d!310173 m!1253427))

(declare-fun m!1253429 () Bool)

(assert (=> d!310173 m!1253429))

(declare-fun m!1253431 () Bool)

(assert (=> b!1097497 m!1253431))

(assert (=> b!1097497 m!1253387))

(assert (=> b!1097497 m!1253387))

(declare-fun m!1253433 () Bool)

(assert (=> b!1097497 m!1253433))

(assert (=> b!1097455 d!310173))

(declare-fun d!310175 () Bool)

(declare-fun lt!370853 () Int)

(declare-fun size!8175 (List!10566) Int)

(assert (=> d!310175 (= lt!370853 (size!8175 (list!3791 objs!8)))))

(declare-fun size!8176 (Conc!3244) Int)

(assert (=> d!310175 (= lt!370853 (size!8176 (c!186263 objs!8)))))

(assert (=> d!310175 (= (size!8172 objs!8) lt!370853)))

(declare-fun bs!259172 () Bool)

(assert (= bs!259172 d!310175))

(assert (=> bs!259172 m!1253387))

(assert (=> bs!259172 m!1253387))

(declare-fun m!1253435 () Bool)

(assert (=> bs!259172 m!1253435))

(declare-fun m!1253437 () Bool)

(assert (=> bs!259172 m!1253437))

(assert (=> b!1097454 d!310175))

(declare-fun d!310177 () Bool)

(declare-fun c!186271 () Bool)

(assert (=> d!310177 (= c!186271 (is-Node!3244 (c!186263 objs!8)))))

(declare-fun e!694913 () Bool)

(assert (=> d!310177 (= (inv!13531 (c!186263 objs!8)) e!694913)))

(declare-fun b!1097504 () Bool)

(declare-fun inv!13534 (Conc!3244) Bool)

(assert (=> b!1097504 (= e!694913 (inv!13534 (c!186263 objs!8)))))

(declare-fun b!1097505 () Bool)

(declare-fun e!694914 () Bool)

(assert (=> b!1097505 (= e!694913 e!694914)))

(declare-fun res!487172 () Bool)

(assert (=> b!1097505 (= res!487172 (not (is-Leaf!5153 (c!186263 objs!8))))))

(assert (=> b!1097505 (=> res!487172 e!694914)))

(declare-fun b!1097506 () Bool)

(declare-fun inv!13535 (Conc!3244) Bool)

(assert (=> b!1097506 (= e!694914 (inv!13535 (c!186263 objs!8)))))

(assert (= (and d!310177 c!186271) b!1097504))

(assert (= (and d!310177 (not c!186271)) b!1097505))

(assert (= (and b!1097505 (not res!487172)) b!1097506))

(declare-fun m!1253443 () Bool)

(assert (=> b!1097504 m!1253443))

(declare-fun m!1253445 () Bool)

(assert (=> b!1097506 m!1253445))

(assert (=> b!1097456 d!310177))

(declare-fun b!1097515 () Bool)

(declare-fun e!694919 () Bool)

(assert (=> b!1097515 (= e!694919 true)))

(declare-fun b!1097517 () Bool)

(declare-fun e!694920 () Bool)

(assert (=> b!1097517 (= e!694920 true)))

(declare-fun b!1097516 () Bool)

(assert (=> b!1097516 (= e!694919 e!694920)))

(assert (=> b!1097466 e!694919))

(assert (= (and b!1097466 (is-Node!3243 (c!186262 (tokens!1364 (_2!6694 lt!370817))))) b!1097515))

(assert (= b!1097516 b!1097517))

(assert (= (and b!1097466 (is-Leaf!5152 (c!186262 (tokens!1364 (_2!6694 lt!370817))))) b!1097516))

(declare-fun tp!326727 () Bool)

(declare-fun b!1097526 () Bool)

(declare-fun e!694926 () Bool)

(declare-fun tp!326728 () Bool)

(assert (=> b!1097526 (= e!694926 (and (inv!13531 (left!9088 (c!186263 objs!8))) tp!326727 (inv!13531 (right!9418 (c!186263 objs!8))) tp!326728))))

(declare-fun b!1097528 () Bool)

(declare-fun e!694925 () Bool)

(declare-fun tp!326729 () Bool)

(assert (=> b!1097528 (= e!694925 tp!326729)))

(declare-fun b!1097527 () Bool)

(declare-fun inv!13536 (IArray!6493) Bool)

(assert (=> b!1097527 (= e!694926 (and (inv!13536 (xs!5937 (c!186263 objs!8))) e!694925))))

(assert (=> b!1097456 (= tp!326717 (and (inv!13531 (c!186263 objs!8)) e!694926))))

(assert (= (and b!1097456 (is-Node!3244 (c!186263 objs!8))) b!1097526))

(assert (= b!1097527 b!1097528))

(assert (= (and b!1097456 (is-Leaf!5153 (c!186263 objs!8))) b!1097527))

(declare-fun m!1253447 () Bool)

(assert (=> b!1097526 m!1253447))

(declare-fun m!1253449 () Bool)

(assert (=> b!1097526 m!1253449))

(declare-fun m!1253451 () Bool)

(assert (=> b!1097527 m!1253451))

(assert (=> b!1097456 m!1253367))

(declare-fun b!1097539 () Bool)

(declare-fun e!694935 () Bool)

(assert (=> b!1097539 (= e!694935 true)))

(declare-fun b!1097538 () Bool)

(declare-fun e!694934 () Bool)

(assert (=> b!1097538 (= e!694934 e!694935)))

(declare-fun b!1097537 () Bool)

(declare-fun e!694933 () Bool)

(assert (=> b!1097537 (= e!694933 e!694934)))

(assert (=> b!1097463 e!694933))

(assert (= b!1097538 b!1097539))

(assert (= b!1097537 b!1097538))

(assert (= (and b!1097463 (is-Cons!10549 (rules!9092 (_2!6694 lt!370817)))) b!1097537))

(declare-fun order!6381 () Int)

(declare-fun order!6383 () Int)

(declare-fun dynLambda!4629 (Int Int) Int)

(declare-fun dynLambda!4630 (Int Int) Int)

(assert (=> b!1097539 (< (dynLambda!4629 order!6381 (toValue!2882 (transformation!1805 (h!15950 (rules!9092 (_2!6694 lt!370817)))))) (dynLambda!4630 order!6383 lambda!43054))))

(declare-fun order!6385 () Int)

(declare-fun dynLambda!4631 (Int Int) Int)

(assert (=> b!1097539 (< (dynLambda!4631 order!6385 (toChars!2741 (transformation!1805 (h!15950 (rules!9092 (_2!6694 lt!370817)))))) (dynLambda!4630 order!6383 lambda!43054))))

(declare-fun b!1097540 () Bool)

(declare-fun e!694936 () Bool)

(assert (=> b!1097540 (= e!694936 true)))

(declare-fun b!1097542 () Bool)

(declare-fun e!694937 () Bool)

(assert (=> b!1097542 (= e!694937 true)))

(declare-fun b!1097541 () Bool)

(assert (=> b!1097541 (= e!694936 e!694937)))

(assert (=> b!1097468 e!694936))

(assert (= (and b!1097468 (is-Node!3243 (c!186262 (tokens!1364 (_2!6694 lt!370817))))) b!1097540))

(assert (= b!1097541 b!1097542))

(assert (= (and b!1097468 (is-Leaf!5152 (c!186262 (tokens!1364 (_2!6694 lt!370817))))) b!1097541))

(declare-fun b!1097543 () Bool)

(declare-fun e!694938 () Bool)

(assert (=> b!1097543 (= e!694938 true)))

(declare-fun b!1097545 () Bool)

(declare-fun e!694939 () Bool)

(assert (=> b!1097545 (= e!694939 true)))

(declare-fun b!1097544 () Bool)

(assert (=> b!1097544 (= e!694938 e!694939)))

(assert (=> b!1097464 e!694938))

(assert (= (and b!1097464 (is-Node!3243 (c!186262 (tokens!1364 (_2!6694 lt!370817))))) b!1097543))

(assert (= b!1097544 b!1097545))

(assert (= (and b!1097464 (is-Leaf!5152 (c!186262 (tokens!1364 (_2!6694 lt!370817))))) b!1097544))

(declare-fun b!1097548 () Bool)

(declare-fun e!694942 () Bool)

(assert (=> b!1097548 (= e!694942 true)))

(declare-fun b!1097547 () Bool)

(declare-fun e!694941 () Bool)

(assert (=> b!1097547 (= e!694941 e!694942)))

(declare-fun b!1097546 () Bool)

(declare-fun e!694940 () Bool)

(assert (=> b!1097546 (= e!694940 e!694941)))

(assert (=> b!1097465 e!694940))

(assert (= b!1097547 b!1097548))

(assert (= b!1097546 b!1097547))

(assert (= (and b!1097465 (is-Cons!10549 (rules!9092 (_2!6694 lt!370817)))) b!1097546))

(assert (=> b!1097548 (< (dynLambda!4629 order!6381 (toValue!2882 (transformation!1805 (h!15950 (rules!9092 (_2!6694 lt!370817)))))) (dynLambda!4630 order!6383 lambda!43055))))

(assert (=> b!1097548 (< (dynLambda!4631 order!6385 (toChars!2741 (transformation!1805 (h!15950 (rules!9092 (_2!6694 lt!370817)))))) (dynLambda!4630 order!6383 lambda!43055))))

(declare-fun b!1097551 () Bool)

(declare-fun e!694945 () Bool)

(assert (=> b!1097551 (= e!694945 true)))

(declare-fun b!1097550 () Bool)

(declare-fun e!694944 () Bool)

(assert (=> b!1097550 (= e!694944 e!694945)))

(declare-fun b!1097549 () Bool)

(declare-fun e!694943 () Bool)

(assert (=> b!1097549 (= e!694943 e!694944)))

(assert (=> b!1097467 e!694943))

(assert (= b!1097550 b!1097551))

(assert (= b!1097549 b!1097550))

(assert (= (and b!1097467 (is-Cons!10549 (rules!9092 (_2!6694 lt!370817)))) b!1097549))

(assert (=> b!1097551 (< (dynLambda!4629 order!6381 (toValue!2882 (transformation!1805 (h!15950 (rules!9092 (_2!6694 lt!370817)))))) (dynLambda!4630 order!6383 lambda!43056))))

(assert (=> b!1097551 (< (dynLambda!4631 order!6385 (toChars!2741 (transformation!1805 (h!15950 (rules!9092 (_2!6694 lt!370817)))))) (dynLambda!4630 order!6383 lambda!43056))))

(push 1)

(assert (not d!310155))

(assert (not b!1097526))

(assert (not b!1097537))

(assert (not b!1097517))

(assert (not d!310171))

(assert (not b!1097492))

(assert (not d!310157))

(assert (not b!1097497))

(assert (not b!1097542))

(assert (not d!310159))

(assert (not b!1097549))

(assert (not b!1097543))

(assert (not b!1097504))

(assert (not b!1097456))

(assert (not b!1097496))

(assert (not b!1097495))

(assert (not b!1097528))

(assert (not d!310175))

(assert (not b!1097527))

(assert (not d!310173))

(assert (not b!1097515))

(assert (not d!310165))

(assert (not d!310161))

(assert (not b!1097546))

(assert (not b!1097545))

(assert (not b!1097506))

(assert (not b!1097540))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!310191 () Bool)

(declare-fun list!3793 (Conc!3244) List!10566)

(assert (=> d!310191 (= (list!3791 lt!370849) (list!3793 (c!186263 lt!370849)))))

(declare-fun bs!259175 () Bool)

(assert (= bs!259175 d!310191))

(declare-fun m!1253495 () Bool)

(assert (=> bs!259175 m!1253495))

(assert (=> b!1097496 d!310191))

(declare-fun b!1097626 () Bool)

(declare-fun e!694999 () Bool)

(declare-fun lt!370870 () List!10566)

(assert (=> b!1097626 (= e!694999 (forall!2394 lt!370870 lambda!43055))))

(declare-fun b!1097627 () Bool)

(declare-fun res!487189 () Bool)

(assert (=> b!1097627 (=> (not res!487189) (not e!694999))))

(declare-fun content!1525 (List!10566) (Set tuple2!11736))

(assert (=> b!1097627 (= res!487189 (set.subset (content!1525 lt!370870) (content!1525 (list!3791 objs!8))))))

(declare-fun bm!80360 () Bool)

(declare-fun call!80365 () List!10566)

(assert (=> bm!80360 (= call!80365 (filter!297 (t!103628 (list!3791 objs!8)) lambda!43055))))

(declare-fun b!1097628 () Bool)

(declare-fun e!694997 () List!10566)

(declare-fun e!694998 () List!10566)

(assert (=> b!1097628 (= e!694997 e!694998)))

(declare-fun c!186281 () Bool)

(declare-fun dynLambda!4635 (Int tuple2!11736) Bool)

(assert (=> b!1097628 (= c!186281 (dynLambda!4635 lambda!43055 (h!15951 (list!3791 objs!8))))))

(declare-fun b!1097629 () Bool)

(assert (=> b!1097629 (= e!694997 Nil!10550)))

(declare-fun d!310193 () Bool)

(assert (=> d!310193 e!694999))

(declare-fun res!487188 () Bool)

(assert (=> d!310193 (=> (not res!487188) (not e!694999))))

(assert (=> d!310193 (= res!487188 (<= (size!8175 lt!370870) (size!8175 (list!3791 objs!8))))))

(assert (=> d!310193 (= lt!370870 e!694997)))

(declare-fun c!186280 () Bool)

(assert (=> d!310193 (= c!186280 (is-Nil!10550 (list!3791 objs!8)))))

(assert (=> d!310193 (= (filter!297 (list!3791 objs!8) lambda!43055) lt!370870)))

(declare-fun b!1097630 () Bool)

(assert (=> b!1097630 (= e!694998 (Cons!10550 (h!15951 (list!3791 objs!8)) call!80365))))

(declare-fun b!1097631 () Bool)

(assert (=> b!1097631 (= e!694998 call!80365)))

(assert (= (and d!310193 c!186280) b!1097629))

(assert (= (and d!310193 (not c!186280)) b!1097628))

(assert (= (and b!1097628 c!186281) b!1097630))

(assert (= (and b!1097628 (not c!186281)) b!1097631))

(assert (= (or b!1097630 b!1097631) bm!80360))

(assert (= (and d!310193 res!487188) b!1097627))

(assert (= (and b!1097627 res!487189) b!1097626))

(declare-fun b_lambda!31771 () Bool)

(assert (=> (not b_lambda!31771) (not b!1097628)))

(declare-fun m!1253497 () Bool)

(assert (=> b!1097626 m!1253497))

(declare-fun m!1253499 () Bool)

(assert (=> b!1097627 m!1253499))

(assert (=> b!1097627 m!1253387))

(declare-fun m!1253501 () Bool)

(assert (=> b!1097627 m!1253501))

(declare-fun m!1253503 () Bool)

(assert (=> b!1097628 m!1253503))

(declare-fun m!1253505 () Bool)

(assert (=> d!310193 m!1253505))

(assert (=> d!310193 m!1253387))

(assert (=> d!310193 m!1253435))

(declare-fun m!1253507 () Bool)

(assert (=> bm!80360 m!1253507))

(assert (=> b!1097496 d!310193))

(declare-fun d!310195 () Bool)

(assert (=> d!310195 (= (list!3791 objs!8) (list!3793 (c!186263 objs!8)))))

(declare-fun bs!259176 () Bool)

(assert (= bs!259176 d!310195))

(declare-fun m!1253509 () Bool)

(assert (=> bs!259176 m!1253509))

(assert (=> b!1097496 d!310195))

(declare-fun d!310197 () Bool)

(declare-fun c!186282 () Bool)

(assert (=> d!310197 (= c!186282 (is-Node!3244 (left!9088 (c!186263 objs!8))))))

(declare-fun e!695000 () Bool)

(assert (=> d!310197 (= (inv!13531 (left!9088 (c!186263 objs!8))) e!695000)))

(declare-fun b!1097632 () Bool)

(assert (=> b!1097632 (= e!695000 (inv!13534 (left!9088 (c!186263 objs!8))))))

(declare-fun b!1097633 () Bool)

(declare-fun e!695001 () Bool)

(assert (=> b!1097633 (= e!695000 e!695001)))

(declare-fun res!487190 () Bool)

(assert (=> b!1097633 (= res!487190 (not (is-Leaf!5153 (left!9088 (c!186263 objs!8)))))))

(assert (=> b!1097633 (=> res!487190 e!695001)))

(declare-fun b!1097634 () Bool)

(assert (=> b!1097634 (= e!695001 (inv!13535 (left!9088 (c!186263 objs!8))))))

(assert (= (and d!310197 c!186282) b!1097632))

(assert (= (and d!310197 (not c!186282)) b!1097633))

(assert (= (and b!1097633 (not res!487190)) b!1097634))

(declare-fun m!1253511 () Bool)

(assert (=> b!1097632 m!1253511))

(declare-fun m!1253513 () Bool)

(assert (=> b!1097634 m!1253513))

(assert (=> b!1097526 d!310197))

(declare-fun d!310199 () Bool)

(declare-fun c!186283 () Bool)

(assert (=> d!310199 (= c!186283 (is-Node!3244 (right!9418 (c!186263 objs!8))))))

(declare-fun e!695002 () Bool)

(assert (=> d!310199 (= (inv!13531 (right!9418 (c!186263 objs!8))) e!695002)))

(declare-fun b!1097635 () Bool)

(assert (=> b!1097635 (= e!695002 (inv!13534 (right!9418 (c!186263 objs!8))))))

(declare-fun b!1097636 () Bool)

(declare-fun e!695003 () Bool)

(assert (=> b!1097636 (= e!695002 e!695003)))

(declare-fun res!487191 () Bool)

(assert (=> b!1097636 (= res!487191 (not (is-Leaf!5153 (right!9418 (c!186263 objs!8)))))))

(assert (=> b!1097636 (=> res!487191 e!695003)))

(declare-fun b!1097637 () Bool)

(assert (=> b!1097637 (= e!695003 (inv!13535 (right!9418 (c!186263 objs!8))))))

(assert (= (and d!310199 c!186283) b!1097635))

(assert (= (and d!310199 (not c!186283)) b!1097636))

(assert (= (and b!1097636 (not res!487191)) b!1097637))

(declare-fun m!1253515 () Bool)

(assert (=> b!1097635 m!1253515))

(declare-fun m!1253517 () Bool)

(assert (=> b!1097637 m!1253517))

(assert (=> b!1097526 d!310199))

(declare-fun d!310201 () Bool)

(declare-fun res!487196 () Bool)

(declare-fun e!695006 () Bool)

(assert (=> d!310201 (=> (not res!487196) (not e!695006))))

(declare-fun list!3794 (IArray!6493) List!10566)

(assert (=> d!310201 (= res!487196 (<= (size!8175 (list!3794 (xs!5937 (c!186263 objs!8)))) 512))))

(assert (=> d!310201 (= (inv!13535 (c!186263 objs!8)) e!695006)))

(declare-fun b!1097642 () Bool)

(declare-fun res!487197 () Bool)

(assert (=> b!1097642 (=> (not res!487197) (not e!695006))))

(assert (=> b!1097642 (= res!487197 (= (csize!6719 (c!186263 objs!8)) (size!8175 (list!3794 (xs!5937 (c!186263 objs!8))))))))

(declare-fun b!1097643 () Bool)

(assert (=> b!1097643 (= e!695006 (and (> (csize!6719 (c!186263 objs!8)) 0) (<= (csize!6719 (c!186263 objs!8)) 512)))))

(assert (= (and d!310201 res!487196) b!1097642))

(assert (= (and b!1097642 res!487197) b!1097643))

(declare-fun m!1253519 () Bool)

(assert (=> d!310201 m!1253519))

(assert (=> d!310201 m!1253519))

(declare-fun m!1253521 () Bool)

(assert (=> d!310201 m!1253521))

(assert (=> b!1097642 m!1253519))

(assert (=> b!1097642 m!1253519))

(assert (=> b!1097642 m!1253521))

(assert (=> b!1097506 d!310201))

(declare-fun b!1097656 () Bool)

(declare-fun res!487210 () Bool)

(declare-fun e!695012 () Bool)

(assert (=> b!1097656 (=> (not res!487210) (not e!695012))))

(declare-fun isEmpty!6679 (Conc!3244) Bool)

(assert (=> b!1097656 (= res!487210 (not (isEmpty!6679 (left!9088 (filter!296 (c!186263 objs!8) lambda!43056)))))))

(declare-fun b!1097657 () Bool)

(declare-fun e!695011 () Bool)

(assert (=> b!1097657 (= e!695011 e!695012)))

(declare-fun res!487211 () Bool)

(assert (=> b!1097657 (=> (not res!487211) (not e!695012))))

(declare-fun height!425 (Conc!3244) Int)

(assert (=> b!1097657 (= res!487211 (<= (- 1) (- (height!425 (left!9088 (filter!296 (c!186263 objs!8) lambda!43056))) (height!425 (right!9418 (filter!296 (c!186263 objs!8) lambda!43056))))))))

(declare-fun b!1097658 () Bool)

(declare-fun res!487213 () Bool)

(assert (=> b!1097658 (=> (not res!487213) (not e!695012))))

(assert (=> b!1097658 (= res!487213 (isBalanced!897 (right!9418 (filter!296 (c!186263 objs!8) lambda!43056))))))

(declare-fun b!1097659 () Bool)

(declare-fun res!487212 () Bool)

(assert (=> b!1097659 (=> (not res!487212) (not e!695012))))

(assert (=> b!1097659 (= res!487212 (<= (- (height!425 (left!9088 (filter!296 (c!186263 objs!8) lambda!43056))) (height!425 (right!9418 (filter!296 (c!186263 objs!8) lambda!43056)))) 1))))

(declare-fun d!310203 () Bool)

(declare-fun res!487214 () Bool)

(assert (=> d!310203 (=> res!487214 e!695011)))

(assert (=> d!310203 (= res!487214 (not (is-Node!3244 (filter!296 (c!186263 objs!8) lambda!43056))))))

(assert (=> d!310203 (= (isBalanced!897 (filter!296 (c!186263 objs!8) lambda!43056)) e!695011)))

(declare-fun b!1097660 () Bool)

(assert (=> b!1097660 (= e!695012 (not (isEmpty!6679 (right!9418 (filter!296 (c!186263 objs!8) lambda!43056)))))))

(declare-fun b!1097661 () Bool)

(declare-fun res!487215 () Bool)

(assert (=> b!1097661 (=> (not res!487215) (not e!695012))))

(assert (=> b!1097661 (= res!487215 (isBalanced!897 (left!9088 (filter!296 (c!186263 objs!8) lambda!43056))))))

(assert (= (and d!310203 (not res!487214)) b!1097657))

(assert (= (and b!1097657 res!487211) b!1097659))

(assert (= (and b!1097659 res!487212) b!1097661))

(assert (= (and b!1097661 res!487215) b!1097658))

(assert (= (and b!1097658 res!487213) b!1097656))

(assert (= (and b!1097656 res!487210) b!1097660))

(declare-fun m!1253523 () Bool)

(assert (=> b!1097658 m!1253523))

(declare-fun m!1253525 () Bool)

(assert (=> b!1097661 m!1253525))

(declare-fun m!1253527 () Bool)

(assert (=> b!1097657 m!1253527))

(declare-fun m!1253529 () Bool)

(assert (=> b!1097657 m!1253529))

(declare-fun m!1253531 () Bool)

(assert (=> b!1097656 m!1253531))

(assert (=> b!1097659 m!1253527))

(assert (=> b!1097659 m!1253529))

(declare-fun m!1253533 () Bool)

(assert (=> b!1097660 m!1253533))

(assert (=> d!310173 d!310203))

(declare-fun b!1097676 () Bool)

(declare-fun e!695022 () Bool)

(declare-fun lt!370879 () Conc!3244)

(assert (=> b!1097676 (= e!695022 (= (list!3793 lt!370879) (filter!297 (list!3793 (c!186263 objs!8)) lambda!43056)))))

(declare-fun b!1097677 () Bool)

(declare-fun e!695021 () Conc!3244)

(assert (=> b!1097677 (= e!695021 Empty!3244)))

(declare-fun b!1097678 () Bool)

(declare-fun e!695023 () Conc!3244)

(assert (=> b!1097678 (= e!695023 (c!186263 objs!8))))

(declare-fun b!1097679 () Bool)

(declare-fun lt!370877 () IArray!6493)

(declare-fun size!8179 (IArray!6493) Int)

(assert (=> b!1097679 (= e!695021 (Leaf!5153 lt!370877 (size!8179 lt!370877)))))

(declare-fun b!1097680 () Bool)

(declare-datatypes ((Unit!16151 0))(
  ( (Unit!16152) )
))
(declare-fun lt!370878 () Unit!16151)

(declare-fun lemmaFilterConcat!9 (List!10566 List!10566 Int) Unit!16151)

(assert (=> b!1097680 (= lt!370878 (lemmaFilterConcat!9 (list!3793 (left!9088 (c!186263 objs!8))) (list!3793 (right!9418 (c!186263 objs!8))) lambda!43056))))

(declare-fun e!695024 () Conc!3244)

(declare-fun ++!2870 (Conc!3244 Conc!3244) Conc!3244)

(assert (=> b!1097680 (= e!695024 (++!2870 (filter!296 (left!9088 (c!186263 objs!8)) lambda!43056) (filter!296 (right!9418 (c!186263 objs!8)) lambda!43056)))))

(declare-fun b!1097681 () Bool)

(declare-fun c!186292 () Bool)

(assert (=> b!1097681 (= c!186292 (= (size!8179 lt!370877) 0))))

(declare-fun filter!300 (IArray!6493 Int) IArray!6493)

(assert (=> b!1097681 (= lt!370877 (filter!300 (xs!5937 (c!186263 objs!8)) lambda!43056))))

(assert (=> b!1097681 (= e!695024 e!695021)))

(declare-fun b!1097682 () Bool)

(assert (=> b!1097682 (= e!695023 e!695024)))

(declare-fun c!186290 () Bool)

(assert (=> b!1097682 (= c!186290 (is-Leaf!5153 (c!186263 objs!8)))))

(declare-fun d!310205 () Bool)

(assert (=> d!310205 e!695022))

(declare-fun res!487218 () Bool)

(assert (=> d!310205 (=> (not res!487218) (not e!695022))))

(assert (=> d!310205 (= res!487218 (isBalanced!897 lt!370879))))

(assert (=> d!310205 (= lt!370879 e!695023)))

(declare-fun c!186291 () Bool)

(assert (=> d!310205 (= c!186291 (is-Empty!3244 (c!186263 objs!8)))))

(assert (=> d!310205 (isBalanced!897 (c!186263 objs!8))))

(assert (=> d!310205 (= (filter!296 (c!186263 objs!8) lambda!43056) lt!370879)))

(assert (= (and d!310205 c!186291) b!1097678))

(assert (= (and d!310205 (not c!186291)) b!1097682))

(assert (= (and b!1097682 c!186290) b!1097681))

(assert (= (and b!1097682 (not c!186290)) b!1097680))

(assert (= (and b!1097681 c!186292) b!1097677))

(assert (= (and b!1097681 (not c!186292)) b!1097679))

(assert (= (and d!310205 res!487218) b!1097676))

(declare-fun m!1253535 () Bool)

(assert (=> b!1097681 m!1253535))

(declare-fun m!1253537 () Bool)

(assert (=> b!1097681 m!1253537))

(assert (=> b!1097679 m!1253535))

(declare-fun m!1253539 () Bool)

(assert (=> b!1097676 m!1253539))

(assert (=> b!1097676 m!1253509))

(assert (=> b!1097676 m!1253509))

(declare-fun m!1253541 () Bool)

(assert (=> b!1097676 m!1253541))

(declare-fun m!1253543 () Bool)

(assert (=> d!310205 m!1253543))

(assert (=> d!310205 m!1253393))

(declare-fun m!1253545 () Bool)

(assert (=> b!1097680 m!1253545))

(declare-fun m!1253547 () Bool)

(assert (=> b!1097680 m!1253547))

(assert (=> b!1097680 m!1253547))

(declare-fun m!1253549 () Bool)

(assert (=> b!1097680 m!1253549))

(declare-fun m!1253551 () Bool)

(assert (=> b!1097680 m!1253551))

(assert (=> b!1097680 m!1253549))

(assert (=> b!1097680 m!1253545))

(declare-fun m!1253553 () Bool)

(assert (=> b!1097680 m!1253553))

(declare-fun m!1253555 () Bool)

(assert (=> b!1097680 m!1253555))

(assert (=> b!1097680 m!1253553))

(assert (=> d!310173 d!310205))

(declare-fun b!1097683 () Bool)

(declare-fun res!487219 () Bool)

(declare-fun e!695026 () Bool)

(assert (=> b!1097683 (=> (not res!487219) (not e!695026))))

(assert (=> b!1097683 (= res!487219 (not (isEmpty!6679 (left!9088 (c!186263 objs!8)))))))

(declare-fun b!1097684 () Bool)

(declare-fun e!695025 () Bool)

(assert (=> b!1097684 (= e!695025 e!695026)))

(declare-fun res!487220 () Bool)

(assert (=> b!1097684 (=> (not res!487220) (not e!695026))))

(assert (=> b!1097684 (= res!487220 (<= (- 1) (- (height!425 (left!9088 (c!186263 objs!8))) (height!425 (right!9418 (c!186263 objs!8))))))))

(declare-fun b!1097685 () Bool)

(declare-fun res!487222 () Bool)

(assert (=> b!1097685 (=> (not res!487222) (not e!695026))))

(assert (=> b!1097685 (= res!487222 (isBalanced!897 (right!9418 (c!186263 objs!8))))))

(declare-fun b!1097686 () Bool)

(declare-fun res!487221 () Bool)

(assert (=> b!1097686 (=> (not res!487221) (not e!695026))))

(assert (=> b!1097686 (= res!487221 (<= (- (height!425 (left!9088 (c!186263 objs!8))) (height!425 (right!9418 (c!186263 objs!8)))) 1))))

(declare-fun d!310207 () Bool)

(declare-fun res!487223 () Bool)

(assert (=> d!310207 (=> res!487223 e!695025)))

(assert (=> d!310207 (= res!487223 (not (is-Node!3244 (c!186263 objs!8))))))

(assert (=> d!310207 (= (isBalanced!897 (c!186263 objs!8)) e!695025)))

(declare-fun b!1097687 () Bool)

(assert (=> b!1097687 (= e!695026 (not (isEmpty!6679 (right!9418 (c!186263 objs!8)))))))

(declare-fun b!1097688 () Bool)

(declare-fun res!487224 () Bool)

(assert (=> b!1097688 (=> (not res!487224) (not e!695026))))

(assert (=> b!1097688 (= res!487224 (isBalanced!897 (left!9088 (c!186263 objs!8))))))

(assert (= (and d!310207 (not res!487223)) b!1097684))

(assert (= (and b!1097684 res!487220) b!1097686))

(assert (= (and b!1097686 res!487221) b!1097688))

(assert (= (and b!1097688 res!487224) b!1097685))

(assert (= (and b!1097685 res!487222) b!1097683))

(assert (= (and b!1097683 res!487219) b!1097687))

(declare-fun m!1253557 () Bool)

(assert (=> b!1097685 m!1253557))

(declare-fun m!1253559 () Bool)

(assert (=> b!1097688 m!1253559))

(declare-fun m!1253561 () Bool)

(assert (=> b!1097684 m!1253561))

(declare-fun m!1253563 () Bool)

(assert (=> b!1097684 m!1253563))

(declare-fun m!1253565 () Bool)

(assert (=> b!1097683 m!1253565))

(assert (=> b!1097686 m!1253561))

(assert (=> b!1097686 m!1253563))

(declare-fun m!1253567 () Bool)

(assert (=> b!1097687 m!1253567))

(assert (=> d!310157 d!310207))

(assert (=> b!1097456 d!310177))

(declare-fun d!310209 () Bool)

(assert (=> d!310209 (= (inv!13536 (xs!5937 (c!186263 objs!8))) (<= (size!8175 (innerList!3304 (xs!5937 (c!186263 objs!8)))) 2147483647))))

(declare-fun bs!259177 () Bool)

(assert (= bs!259177 d!310209))

(declare-fun m!1253569 () Bool)

(assert (=> bs!259177 m!1253569))

(assert (=> b!1097527 d!310209))

(declare-fun d!310211 () Bool)

(declare-fun lt!370882 () Int)

(assert (=> d!310211 (>= lt!370882 0)))

(declare-fun e!695029 () Int)

(assert (=> d!310211 (= lt!370882 e!695029)))

(declare-fun c!186295 () Bool)

(assert (=> d!310211 (= c!186295 (is-Nil!10550 (list!3791 objs!8)))))

(assert (=> d!310211 (= (size!8175 (list!3791 objs!8)) lt!370882)))

(declare-fun b!1097693 () Bool)

(assert (=> b!1097693 (= e!695029 0)))

(declare-fun b!1097694 () Bool)

(assert (=> b!1097694 (= e!695029 (+ 1 (size!8175 (t!103628 (list!3791 objs!8)))))))

(assert (= (and d!310211 c!186295) b!1097693))

(assert (= (and d!310211 (not c!186295)) b!1097694))

(declare-fun m!1253571 () Bool)

(assert (=> b!1097694 m!1253571))

(assert (=> d!310175 d!310211))

(assert (=> d!310175 d!310195))

(declare-fun d!310213 () Bool)

(declare-fun lt!370885 () Int)

(assert (=> d!310213 (= lt!370885 (size!8175 (list!3793 (c!186263 objs!8))))))

(assert (=> d!310213 (= lt!370885 (ite (is-Empty!3244 (c!186263 objs!8)) 0 (ite (is-Leaf!5153 (c!186263 objs!8)) (csize!6719 (c!186263 objs!8)) (csize!6718 (c!186263 objs!8)))))))

(assert (=> d!310213 (= (size!8176 (c!186263 objs!8)) lt!370885)))

(declare-fun bs!259178 () Bool)

(assert (= bs!259178 d!310213))

(assert (=> bs!259178 m!1253509))

(assert (=> bs!259178 m!1253509))

(declare-fun m!1253573 () Bool)

(assert (=> bs!259178 m!1253573))

(assert (=> d!310175 d!310213))

(assert (=> b!1097492 d!310175))

(declare-fun d!310215 () Bool)

(assert (=> d!310215 (= (list!3791 lt!370848) (list!3793 (c!186263 lt!370848)))))

(declare-fun bs!259179 () Bool)

(assert (= bs!259179 d!310215))

(declare-fun m!1253575 () Bool)

(assert (=> bs!259179 m!1253575))

(assert (=> b!1097495 d!310215))

(declare-fun b!1097695 () Bool)

(declare-fun e!695032 () Bool)

(declare-fun lt!370886 () List!10566)

(assert (=> b!1097695 (= e!695032 (forall!2394 lt!370886 lambda!43054))))

(declare-fun b!1097696 () Bool)

(declare-fun res!487226 () Bool)

(assert (=> b!1097696 (=> (not res!487226) (not e!695032))))

(assert (=> b!1097696 (= res!487226 (set.subset (content!1525 lt!370886) (content!1525 (list!3791 objs!8))))))

(declare-fun bm!80361 () Bool)

(declare-fun call!80366 () List!10566)

(assert (=> bm!80361 (= call!80366 (filter!297 (t!103628 (list!3791 objs!8)) lambda!43054))))

(declare-fun b!1097697 () Bool)

(declare-fun e!695030 () List!10566)

(declare-fun e!695031 () List!10566)

(assert (=> b!1097697 (= e!695030 e!695031)))

(declare-fun c!186297 () Bool)

(assert (=> b!1097697 (= c!186297 (dynLambda!4635 lambda!43054 (h!15951 (list!3791 objs!8))))))

(declare-fun b!1097698 () Bool)

(assert (=> b!1097698 (= e!695030 Nil!10550)))

(declare-fun d!310217 () Bool)

(assert (=> d!310217 e!695032))

(declare-fun res!487225 () Bool)

(assert (=> d!310217 (=> (not res!487225) (not e!695032))))

(assert (=> d!310217 (= res!487225 (<= (size!8175 lt!370886) (size!8175 (list!3791 objs!8))))))

(assert (=> d!310217 (= lt!370886 e!695030)))

(declare-fun c!186296 () Bool)

(assert (=> d!310217 (= c!186296 (is-Nil!10550 (list!3791 objs!8)))))

(assert (=> d!310217 (= (filter!297 (list!3791 objs!8) lambda!43054) lt!370886)))

(declare-fun b!1097699 () Bool)

(assert (=> b!1097699 (= e!695031 (Cons!10550 (h!15951 (list!3791 objs!8)) call!80366))))

(declare-fun b!1097700 () Bool)

(assert (=> b!1097700 (= e!695031 call!80366)))

(assert (= (and d!310217 c!186296) b!1097698))

(assert (= (and d!310217 (not c!186296)) b!1097697))

(assert (= (and b!1097697 c!186297) b!1097699))

(assert (= (and b!1097697 (not c!186297)) b!1097700))

(assert (= (or b!1097699 b!1097700) bm!80361))

(assert (= (and d!310217 res!487225) b!1097696))

(assert (= (and b!1097696 res!487226) b!1097695))

(declare-fun b_lambda!31773 () Bool)

(assert (=> (not b_lambda!31773) (not b!1097697)))

(declare-fun m!1253577 () Bool)

(assert (=> b!1097695 m!1253577))

(declare-fun m!1253579 () Bool)

(assert (=> b!1097696 m!1253579))

(assert (=> b!1097696 m!1253387))

(assert (=> b!1097696 m!1253501))

(declare-fun m!1253581 () Bool)

(assert (=> b!1097697 m!1253581))

(declare-fun m!1253583 () Bool)

(assert (=> d!310217 m!1253583))

(assert (=> d!310217 m!1253387))

(assert (=> d!310217 m!1253435))

(declare-fun m!1253585 () Bool)

(assert (=> bm!80361 m!1253585))

(assert (=> b!1097495 d!310217))

(assert (=> b!1097495 d!310195))

(declare-fun d!310219 () Bool)

(assert (=> d!310219 (= (list!3791 lt!370850) (list!3793 (c!186263 lt!370850)))))

(declare-fun bs!259180 () Bool)

(assert (= bs!259180 d!310219))

(declare-fun m!1253587 () Bool)

(assert (=> bs!259180 m!1253587))

(assert (=> b!1097497 d!310219))

(declare-fun b!1097701 () Bool)

(declare-fun e!695035 () Bool)

(declare-fun lt!370887 () List!10566)

(assert (=> b!1097701 (= e!695035 (forall!2394 lt!370887 lambda!43056))))

(declare-fun b!1097702 () Bool)

(declare-fun res!487228 () Bool)

(assert (=> b!1097702 (=> (not res!487228) (not e!695035))))

(assert (=> b!1097702 (= res!487228 (set.subset (content!1525 lt!370887) (content!1525 (list!3791 objs!8))))))

(declare-fun bm!80362 () Bool)

(declare-fun call!80367 () List!10566)

(assert (=> bm!80362 (= call!80367 (filter!297 (t!103628 (list!3791 objs!8)) lambda!43056))))

(declare-fun b!1097703 () Bool)

(declare-fun e!695033 () List!10566)

(declare-fun e!695034 () List!10566)

(assert (=> b!1097703 (= e!695033 e!695034)))

(declare-fun c!186299 () Bool)

(assert (=> b!1097703 (= c!186299 (dynLambda!4635 lambda!43056 (h!15951 (list!3791 objs!8))))))

(declare-fun b!1097704 () Bool)

(assert (=> b!1097704 (= e!695033 Nil!10550)))

(declare-fun d!310221 () Bool)

(assert (=> d!310221 e!695035))

(declare-fun res!487227 () Bool)

(assert (=> d!310221 (=> (not res!487227) (not e!695035))))

(assert (=> d!310221 (= res!487227 (<= (size!8175 lt!370887) (size!8175 (list!3791 objs!8))))))

(assert (=> d!310221 (= lt!370887 e!695033)))

(declare-fun c!186298 () Bool)

(assert (=> d!310221 (= c!186298 (is-Nil!10550 (list!3791 objs!8)))))

(assert (=> d!310221 (= (filter!297 (list!3791 objs!8) lambda!43056) lt!370887)))

(declare-fun b!1097705 () Bool)

(assert (=> b!1097705 (= e!695034 (Cons!10550 (h!15951 (list!3791 objs!8)) call!80367))))

(declare-fun b!1097706 () Bool)

(assert (=> b!1097706 (= e!695034 call!80367)))

(assert (= (and d!310221 c!186298) b!1097704))

(assert (= (and d!310221 (not c!186298)) b!1097703))

(assert (= (and b!1097703 c!186299) b!1097705))

(assert (= (and b!1097703 (not c!186299)) b!1097706))

(assert (= (or b!1097705 b!1097706) bm!80362))

(assert (= (and d!310221 res!487227) b!1097702))

(assert (= (and b!1097702 res!487228) b!1097701))

(declare-fun b_lambda!31775 () Bool)

(assert (=> (not b_lambda!31775) (not b!1097703)))

(declare-fun m!1253589 () Bool)

(assert (=> b!1097701 m!1253589))

(declare-fun m!1253591 () Bool)

(assert (=> b!1097702 m!1253591))

(assert (=> b!1097702 m!1253387))

(assert (=> b!1097702 m!1253501))

(declare-fun m!1253593 () Bool)

(assert (=> b!1097703 m!1253593))

(declare-fun m!1253595 () Bool)

(assert (=> d!310221 m!1253595))

(assert (=> d!310221 m!1253387))

(assert (=> d!310221 m!1253435))

(declare-fun m!1253597 () Bool)

(assert (=> bm!80362 m!1253597))

(assert (=> b!1097497 d!310221))

(assert (=> b!1097497 d!310195))

(declare-fun b!1097707 () Bool)

(declare-fun res!487229 () Bool)

(declare-fun e!695037 () Bool)

(assert (=> b!1097707 (=> (not res!487229) (not e!695037))))

(assert (=> b!1097707 (= res!487229 (not (isEmpty!6679 (left!9088 (filter!296 (c!186263 objs!8) lambda!43055)))))))

(declare-fun b!1097708 () Bool)

(declare-fun e!695036 () Bool)

(assert (=> b!1097708 (= e!695036 e!695037)))

(declare-fun res!487230 () Bool)

(assert (=> b!1097708 (=> (not res!487230) (not e!695037))))

(assert (=> b!1097708 (= res!487230 (<= (- 1) (- (height!425 (left!9088 (filter!296 (c!186263 objs!8) lambda!43055))) (height!425 (right!9418 (filter!296 (c!186263 objs!8) lambda!43055))))))))

(declare-fun b!1097709 () Bool)

(declare-fun res!487232 () Bool)

(assert (=> b!1097709 (=> (not res!487232) (not e!695037))))

(assert (=> b!1097709 (= res!487232 (isBalanced!897 (right!9418 (filter!296 (c!186263 objs!8) lambda!43055))))))

(declare-fun b!1097710 () Bool)

(declare-fun res!487231 () Bool)

(assert (=> b!1097710 (=> (not res!487231) (not e!695037))))

(assert (=> b!1097710 (= res!487231 (<= (- (height!425 (left!9088 (filter!296 (c!186263 objs!8) lambda!43055))) (height!425 (right!9418 (filter!296 (c!186263 objs!8) lambda!43055)))) 1))))

(declare-fun d!310223 () Bool)

(declare-fun res!487233 () Bool)

(assert (=> d!310223 (=> res!487233 e!695036)))

(assert (=> d!310223 (= res!487233 (not (is-Node!3244 (filter!296 (c!186263 objs!8) lambda!43055))))))

(assert (=> d!310223 (= (isBalanced!897 (filter!296 (c!186263 objs!8) lambda!43055)) e!695036)))

(declare-fun b!1097711 () Bool)

(assert (=> b!1097711 (= e!695037 (not (isEmpty!6679 (right!9418 (filter!296 (c!186263 objs!8) lambda!43055)))))))

(declare-fun b!1097712 () Bool)

(declare-fun res!487234 () Bool)

(assert (=> b!1097712 (=> (not res!487234) (not e!695037))))

(assert (=> b!1097712 (= res!487234 (isBalanced!897 (left!9088 (filter!296 (c!186263 objs!8) lambda!43055))))))

(assert (= (and d!310223 (not res!487233)) b!1097708))

(assert (= (and b!1097708 res!487230) b!1097710))

(assert (= (and b!1097710 res!487231) b!1097712))

(assert (= (and b!1097712 res!487234) b!1097709))

(assert (= (and b!1097709 res!487232) b!1097707))

(assert (= (and b!1097707 res!487229) b!1097711))

(declare-fun m!1253599 () Bool)

(assert (=> b!1097709 m!1253599))

(declare-fun m!1253601 () Bool)

(assert (=> b!1097712 m!1253601))

(declare-fun m!1253603 () Bool)

(assert (=> b!1097708 m!1253603))

(declare-fun m!1253605 () Bool)

(assert (=> b!1097708 m!1253605))

(declare-fun m!1253607 () Bool)

(assert (=> b!1097707 m!1253607))

(assert (=> b!1097710 m!1253603))

(assert (=> b!1097710 m!1253605))

(declare-fun m!1253609 () Bool)

(assert (=> b!1097711 m!1253609))

(assert (=> d!310171 d!310223))

(declare-fun b!1097713 () Bool)

(declare-fun lt!370890 () Conc!3244)

(declare-fun e!695039 () Bool)

(assert (=> b!1097713 (= e!695039 (= (list!3793 lt!370890) (filter!297 (list!3793 (c!186263 objs!8)) lambda!43055)))))

(declare-fun b!1097714 () Bool)

(declare-fun e!695038 () Conc!3244)

(assert (=> b!1097714 (= e!695038 Empty!3244)))

(declare-fun b!1097715 () Bool)

(declare-fun e!695040 () Conc!3244)

(assert (=> b!1097715 (= e!695040 (c!186263 objs!8))))

(declare-fun b!1097716 () Bool)

(declare-fun lt!370888 () IArray!6493)

(assert (=> b!1097716 (= e!695038 (Leaf!5153 lt!370888 (size!8179 lt!370888)))))

(declare-fun b!1097717 () Bool)

(declare-fun lt!370889 () Unit!16151)

(assert (=> b!1097717 (= lt!370889 (lemmaFilterConcat!9 (list!3793 (left!9088 (c!186263 objs!8))) (list!3793 (right!9418 (c!186263 objs!8))) lambda!43055))))

(declare-fun e!695041 () Conc!3244)

(assert (=> b!1097717 (= e!695041 (++!2870 (filter!296 (left!9088 (c!186263 objs!8)) lambda!43055) (filter!296 (right!9418 (c!186263 objs!8)) lambda!43055)))))

(declare-fun b!1097718 () Bool)

(declare-fun c!186302 () Bool)

(assert (=> b!1097718 (= c!186302 (= (size!8179 lt!370888) 0))))

(assert (=> b!1097718 (= lt!370888 (filter!300 (xs!5937 (c!186263 objs!8)) lambda!43055))))

(assert (=> b!1097718 (= e!695041 e!695038)))

(declare-fun b!1097719 () Bool)

(assert (=> b!1097719 (= e!695040 e!695041)))

(declare-fun c!186300 () Bool)

(assert (=> b!1097719 (= c!186300 (is-Leaf!5153 (c!186263 objs!8)))))

(declare-fun d!310225 () Bool)

(assert (=> d!310225 e!695039))

(declare-fun res!487235 () Bool)

(assert (=> d!310225 (=> (not res!487235) (not e!695039))))

(assert (=> d!310225 (= res!487235 (isBalanced!897 lt!370890))))

(assert (=> d!310225 (= lt!370890 e!695040)))

(declare-fun c!186301 () Bool)

(assert (=> d!310225 (= c!186301 (is-Empty!3244 (c!186263 objs!8)))))

(assert (=> d!310225 (isBalanced!897 (c!186263 objs!8))))

(assert (=> d!310225 (= (filter!296 (c!186263 objs!8) lambda!43055) lt!370890)))

(assert (= (and d!310225 c!186301) b!1097715))

(assert (= (and d!310225 (not c!186301)) b!1097719))

(assert (= (and b!1097719 c!186300) b!1097718))

(assert (= (and b!1097719 (not c!186300)) b!1097717))

(assert (= (and b!1097718 c!186302) b!1097714))

(assert (= (and b!1097718 (not c!186302)) b!1097716))

(assert (= (and d!310225 res!487235) b!1097713))

(declare-fun m!1253611 () Bool)

(assert (=> b!1097718 m!1253611))

(declare-fun m!1253613 () Bool)

(assert (=> b!1097718 m!1253613))

(assert (=> b!1097716 m!1253611))

(declare-fun m!1253615 () Bool)

(assert (=> b!1097713 m!1253615))

(assert (=> b!1097713 m!1253509))

(assert (=> b!1097713 m!1253509))

(declare-fun m!1253617 () Bool)

(assert (=> b!1097713 m!1253617))

(declare-fun m!1253619 () Bool)

(assert (=> d!310225 m!1253619))

(assert (=> d!310225 m!1253393))

(assert (=> b!1097717 m!1253545))

(declare-fun m!1253621 () Bool)

(assert (=> b!1097717 m!1253621))

(assert (=> b!1097717 m!1253621))

(declare-fun m!1253623 () Bool)

(assert (=> b!1097717 m!1253623))

(declare-fun m!1253625 () Bool)

(assert (=> b!1097717 m!1253625))

(assert (=> b!1097717 m!1253623))

(assert (=> b!1097717 m!1253545))

(assert (=> b!1097717 m!1253553))

(declare-fun m!1253627 () Bool)

(assert (=> b!1097717 m!1253627))

(assert (=> b!1097717 m!1253553))

(assert (=> d!310171 d!310225))

(declare-fun d!310227 () Bool)

(declare-fun lt!370893 () tuple2!11736)

(assert (=> d!310227 (contains!1819 (list!3791 objs!8) lt!370893)))

(declare-fun e!695046 () tuple2!11736)

(assert (=> d!310227 (= lt!370893 e!695046)))

(declare-fun c!186305 () Bool)

(assert (=> d!310227 (= c!186305 (= (ite (>= lt!370816 0) (div lt!370816 2) (- (div (- lt!370816) 2))) 0))))

(declare-fun e!695047 () Bool)

(assert (=> d!310227 e!695047))

(declare-fun res!487238 () Bool)

(assert (=> d!310227 (=> (not res!487238) (not e!695047))))

(assert (=> d!310227 (= res!487238 (<= 0 (ite (>= lt!370816 0) (div lt!370816 2) (- (div (- lt!370816) 2)))))))

(assert (=> d!310227 (= (apply!2096 (list!3791 objs!8) (ite (>= lt!370816 0) (div lt!370816 2) (- (div (- lt!370816) 2)))) lt!370893)))

(declare-fun b!1097726 () Bool)

(assert (=> b!1097726 (= e!695047 (< (ite (>= lt!370816 0) (div lt!370816 2) (- (div (- lt!370816) 2))) (size!8175 (list!3791 objs!8))))))

(declare-fun b!1097727 () Bool)

(declare-fun head!2034 (List!10566) tuple2!11736)

(assert (=> b!1097727 (= e!695046 (head!2034 (list!3791 objs!8)))))

(declare-fun b!1097728 () Bool)

(declare-fun tail!1594 (List!10566) List!10566)

(assert (=> b!1097728 (= e!695046 (apply!2096 (tail!1594 (list!3791 objs!8)) (- (ite (>= lt!370816 0) (div lt!370816 2) (- (div (- lt!370816) 2))) 1)))))

(assert (= (and d!310227 res!487238) b!1097726))

(assert (= (and d!310227 c!186305) b!1097727))

(assert (= (and d!310227 (not c!186305)) b!1097728))

(assert (=> d!310227 m!1253387))

(declare-fun m!1253629 () Bool)

(assert (=> d!310227 m!1253629))

(assert (=> b!1097726 m!1253387))

(assert (=> b!1097726 m!1253435))

(assert (=> b!1097727 m!1253387))

(declare-fun m!1253631 () Bool)

(assert (=> b!1097727 m!1253631))

(assert (=> b!1097728 m!1253387))

(declare-fun m!1253633 () Bool)

(assert (=> b!1097728 m!1253633))

(assert (=> b!1097728 m!1253633))

(declare-fun m!1253635 () Bool)

(assert (=> b!1097728 m!1253635))

(assert (=> d!310161 d!310227))

(assert (=> d!310161 d!310195))

(declare-fun b!1097743 () Bool)

(declare-fun e!695056 () Int)

(assert (=> b!1097743 (= e!695056 (- (ite (>= lt!370816 0) (div lt!370816 2) (- (div (- lt!370816) 2))) (size!8176 (left!9088 (c!186263 objs!8)))))))

(declare-fun b!1097744 () Bool)

(assert (=> b!1097744 (= e!695056 (ite (>= lt!370816 0) (div lt!370816 2) (- (div (- lt!370816) 2))))))

(declare-fun b!1097745 () Bool)

(declare-fun e!695059 () Bool)

(assert (=> b!1097745 (= e!695059 (< (ite (>= lt!370816 0) (div lt!370816 2) (- (div (- lt!370816) 2))) (size!8176 (c!186263 objs!8))))))

(declare-fun b!1097746 () Bool)

(declare-fun e!695058 () tuple2!11736)

(declare-fun call!80370 () tuple2!11736)

(assert (=> b!1097746 (= e!695058 call!80370)))

(declare-fun d!310229 () Bool)

(declare-fun lt!370898 () tuple2!11736)

(assert (=> d!310229 (= lt!370898 (apply!2096 (list!3793 (c!186263 objs!8)) (ite (>= lt!370816 0) (div lt!370816 2) (- (div (- lt!370816) 2)))))))

(declare-fun e!695057 () tuple2!11736)

(assert (=> d!310229 (= lt!370898 e!695057)))

(declare-fun c!186313 () Bool)

(assert (=> d!310229 (= c!186313 (is-Leaf!5153 (c!186263 objs!8)))))

(assert (=> d!310229 e!695059))

(declare-fun res!487241 () Bool)

(assert (=> d!310229 (=> (not res!487241) (not e!695059))))

(assert (=> d!310229 (= res!487241 (<= 0 (ite (>= lt!370816 0) (div lt!370816 2) (- (div (- lt!370816) 2)))))))

(assert (=> d!310229 (= (apply!2097 (c!186263 objs!8) (ite (>= lt!370816 0) (div lt!370816 2) (- (div (- lt!370816) 2)))) lt!370898)))

(declare-fun b!1097747 () Bool)

(declare-fun apply!2100 (IArray!6493 Int) tuple2!11736)

(assert (=> b!1097747 (= e!695057 (apply!2100 (xs!5937 (c!186263 objs!8)) (ite (>= lt!370816 0) (div lt!370816 2) (- (div (- lt!370816) 2)))))))

(declare-fun b!1097748 () Bool)

(assert (=> b!1097748 (= e!695058 call!80370)))

(declare-fun bm!80365 () Bool)

(declare-fun c!186314 () Bool)

(declare-fun c!186312 () Bool)

(assert (=> bm!80365 (= c!186314 c!186312)))

(assert (=> bm!80365 (= call!80370 (apply!2097 (ite c!186312 (left!9088 (c!186263 objs!8)) (right!9418 (c!186263 objs!8))) e!695056))))

(declare-fun b!1097749 () Bool)

(assert (=> b!1097749 (= e!695057 e!695058)))

(declare-fun lt!370899 () Bool)

(declare-fun appendIndex!83 (List!10566 List!10566 Int) Bool)

(assert (=> b!1097749 (= lt!370899 (appendIndex!83 (list!3793 (left!9088 (c!186263 objs!8))) (list!3793 (right!9418 (c!186263 objs!8))) (ite (>= lt!370816 0) (div lt!370816 2) (- (div (- lt!370816) 2)))))))

(assert (=> b!1097749 (= c!186312 (< (ite (>= lt!370816 0) (div lt!370816 2) (- (div (- lt!370816) 2))) (size!8176 (left!9088 (c!186263 objs!8)))))))

(assert (= (and d!310229 res!487241) b!1097745))

(assert (= (and d!310229 c!186313) b!1097747))

(assert (= (and d!310229 (not c!186313)) b!1097749))

(assert (= (and b!1097749 c!186312) b!1097748))

(assert (= (and b!1097749 (not c!186312)) b!1097746))

(assert (= (or b!1097748 b!1097746) bm!80365))

(assert (= (and bm!80365 c!186314) b!1097744))

(assert (= (and bm!80365 (not c!186314)) b!1097743))

(assert (=> b!1097749 m!1253545))

(assert (=> b!1097749 m!1253553))

(assert (=> b!1097749 m!1253545))

(assert (=> b!1097749 m!1253553))

(declare-fun m!1253637 () Bool)

(assert (=> b!1097749 m!1253637))

(declare-fun m!1253639 () Bool)

(assert (=> b!1097749 m!1253639))

(declare-fun m!1253641 () Bool)

(assert (=> b!1097747 m!1253641))

(assert (=> d!310229 m!1253509))

(assert (=> d!310229 m!1253509))

(declare-fun m!1253643 () Bool)

(assert (=> d!310229 m!1253643))

(assert (=> b!1097745 m!1253437))

(declare-fun m!1253645 () Bool)

(assert (=> bm!80365 m!1253645))

(assert (=> b!1097743 m!1253639))

(assert (=> d!310161 d!310229))

(declare-fun d!310231 () Bool)

(declare-fun res!487246 () Bool)

(declare-fun e!695064 () Bool)

(assert (=> d!310231 (=> res!487246 e!695064)))

(assert (=> d!310231 (= res!487246 (is-Nil!10550 (list!3791 objs!8)))))

(assert (=> d!310231 (= (forall!2394 (list!3791 objs!8) lambda!43053) e!695064)))

(declare-fun b!1097754 () Bool)

(declare-fun e!695065 () Bool)

(assert (=> b!1097754 (= e!695064 e!695065)))

(declare-fun res!487247 () Bool)

(assert (=> b!1097754 (=> (not res!487247) (not e!695065))))

(assert (=> b!1097754 (= res!487247 (dynLambda!4635 lambda!43053 (h!15951 (list!3791 objs!8))))))

(declare-fun b!1097755 () Bool)

(assert (=> b!1097755 (= e!695065 (forall!2394 (t!103628 (list!3791 objs!8)) lambda!43053))))

(assert (= (and d!310231 (not res!487246)) b!1097754))

(assert (= (and b!1097754 res!487247) b!1097755))

(declare-fun b_lambda!31777 () Bool)

(assert (=> (not b_lambda!31777) (not b!1097754)))

(declare-fun m!1253647 () Bool)

(assert (=> b!1097754 m!1253647))

(declare-fun m!1253649 () Bool)

(assert (=> b!1097755 m!1253649))

(assert (=> d!310155 d!310231))

(assert (=> d!310155 d!310195))

(declare-fun b!1097766 () Bool)

(declare-fun e!695074 () Bool)

(declare-fun e!695073 () Bool)

(assert (=> b!1097766 (= e!695074 e!695073)))

(declare-fun lt!370904 () Unit!16151)

(declare-fun lemmaForallConcat!63 (List!10566 List!10566 Int) Unit!16151)

(assert (=> b!1097766 (= lt!370904 (lemmaForallConcat!63 (list!3793 (left!9088 (c!186263 objs!8))) (list!3793 (right!9418 (c!186263 objs!8))) lambda!43053))))

(declare-fun res!487252 () Bool)

(assert (=> b!1097766 (= res!487252 (forall!2395 (left!9088 (c!186263 objs!8)) lambda!43053))))

(assert (=> b!1097766 (=> (not res!487252) (not e!695073))))

(declare-fun b!1097767 () Bool)

(assert (=> b!1097767 (= e!695073 (forall!2395 (right!9418 (c!186263 objs!8)) lambda!43053))))

(declare-fun b!1097764 () Bool)

(declare-fun e!695072 () Bool)

(assert (=> b!1097764 (= e!695072 e!695074)))

(declare-fun c!186317 () Bool)

(assert (=> b!1097764 (= c!186317 (is-Leaf!5153 (c!186263 objs!8)))))

(declare-fun b!1097765 () Bool)

(declare-fun forall!2398 (IArray!6493 Int) Bool)

(assert (=> b!1097765 (= e!695074 (forall!2398 (xs!5937 (c!186263 objs!8)) lambda!43053))))

(declare-fun d!310233 () Bool)

(declare-fun lt!370905 () Bool)

(assert (=> d!310233 (= lt!370905 (forall!2394 (list!3793 (c!186263 objs!8)) lambda!43053))))

(assert (=> d!310233 (= lt!370905 e!695072)))

(declare-fun res!487253 () Bool)

(assert (=> d!310233 (=> res!487253 e!695072)))

(assert (=> d!310233 (= res!487253 (is-Empty!3244 (c!186263 objs!8)))))

(assert (=> d!310233 (= (forall!2395 (c!186263 objs!8) lambda!43053) lt!370905)))

(assert (= (and d!310233 (not res!487253)) b!1097764))

(assert (= (and b!1097764 c!186317) b!1097765))

(assert (= (and b!1097764 (not c!186317)) b!1097766))

(assert (= (and b!1097766 res!487252) b!1097767))

(assert (=> b!1097766 m!1253545))

(assert (=> b!1097766 m!1253553))

(assert (=> b!1097766 m!1253545))

(assert (=> b!1097766 m!1253553))

(declare-fun m!1253651 () Bool)

(assert (=> b!1097766 m!1253651))

(declare-fun m!1253653 () Bool)

(assert (=> b!1097766 m!1253653))

(declare-fun m!1253655 () Bool)

(assert (=> b!1097767 m!1253655))

(declare-fun m!1253657 () Bool)

(assert (=> b!1097765 m!1253657))

(assert (=> d!310233 m!1253509))

(assert (=> d!310233 m!1253509))

(declare-fun m!1253659 () Bool)

(assert (=> d!310233 m!1253659))

(assert (=> d!310155 d!310233))

(declare-fun d!310235 () Bool)

(declare-fun lt!370908 () Bool)

(assert (=> d!310235 (= lt!370908 (set.member lt!370817 (content!1525 (list!3791 objs!8))))))

(declare-fun e!695080 () Bool)

(assert (=> d!310235 (= lt!370908 e!695080)))

(declare-fun res!487258 () Bool)

(assert (=> d!310235 (=> (not res!487258) (not e!695080))))

(assert (=> d!310235 (= res!487258 (is-Cons!10550 (list!3791 objs!8)))))

(assert (=> d!310235 (= (contains!1819 (list!3791 objs!8) lt!370817) lt!370908)))

(declare-fun b!1097772 () Bool)

(declare-fun e!695079 () Bool)

(assert (=> b!1097772 (= e!695080 e!695079)))

(declare-fun res!487259 () Bool)

(assert (=> b!1097772 (=> res!487259 e!695079)))

(assert (=> b!1097772 (= res!487259 (= (h!15951 (list!3791 objs!8)) lt!370817))))

(declare-fun b!1097773 () Bool)

(assert (=> b!1097773 (= e!695079 (contains!1819 (t!103628 (list!3791 objs!8)) lt!370817))))

(assert (= (and d!310235 res!487258) b!1097772))

(assert (= (and b!1097772 (not res!487259)) b!1097773))

(assert (=> d!310235 m!1253387))

(assert (=> d!310235 m!1253501))

(declare-fun m!1253661 () Bool)

(assert (=> d!310235 m!1253661))

(declare-fun m!1253663 () Bool)

(assert (=> b!1097773 m!1253663))

(assert (=> d!310159 d!310235))

(assert (=> d!310159 d!310195))

(declare-fun b!1097784 () Bool)

(declare-fun e!695088 () Bool)

(declare-fun e!695089 () Bool)

(assert (=> b!1097784 (= e!695088 e!695089)))

(declare-fun res!487265 () Bool)

(assert (=> b!1097784 (= res!487265 (contains!1820 (left!9088 (c!186263 objs!8)) lt!370817))))

(assert (=> b!1097784 (=> res!487265 e!695089)))

(declare-fun b!1097783 () Bool)

(declare-fun contains!1823 (IArray!6493 tuple2!11736) Bool)

(assert (=> b!1097783 (= e!695088 (contains!1823 (xs!5937 (c!186263 objs!8)) lt!370817))))

(declare-fun b!1097782 () Bool)

(declare-fun e!695087 () Bool)

(assert (=> b!1097782 (= e!695087 e!695088)))

(declare-fun c!186320 () Bool)

(assert (=> b!1097782 (= c!186320 (is-Leaf!5153 (c!186263 objs!8)))))

(declare-fun b!1097785 () Bool)

(assert (=> b!1097785 (= e!695089 (contains!1820 (right!9418 (c!186263 objs!8)) lt!370817))))

(declare-fun d!310237 () Bool)

(declare-fun lt!370911 () Bool)

(assert (=> d!310237 (= lt!370911 (contains!1819 (list!3793 (c!186263 objs!8)) lt!370817))))

(assert (=> d!310237 (= lt!370911 e!695087)))

(declare-fun res!487264 () Bool)

(assert (=> d!310237 (=> (not res!487264) (not e!695087))))

(assert (=> d!310237 (= res!487264 (not (is-Empty!3244 (c!186263 objs!8))))))

(assert (=> d!310237 (= (contains!1820 (c!186263 objs!8) lt!370817) lt!370911)))

(assert (= (and d!310237 res!487264) b!1097782))

(assert (= (and b!1097782 c!186320) b!1097783))

(assert (= (and b!1097782 (not c!186320)) b!1097784))

(assert (= (and b!1097784 (not res!487265)) b!1097785))

(declare-fun m!1253665 () Bool)

(assert (=> b!1097784 m!1253665))

(declare-fun m!1253667 () Bool)

(assert (=> b!1097783 m!1253667))

(declare-fun m!1253669 () Bool)

(assert (=> b!1097785 m!1253669))

(assert (=> d!310237 m!1253509))

(assert (=> d!310237 m!1253509))

(declare-fun m!1253671 () Bool)

(assert (=> d!310237 m!1253671))

(assert (=> d!310159 d!310237))

(declare-fun b!1097786 () Bool)

(declare-fun res!487266 () Bool)

(declare-fun e!695091 () Bool)

(assert (=> b!1097786 (=> (not res!487266) (not e!695091))))

(assert (=> b!1097786 (= res!487266 (not (isEmpty!6679 (left!9088 (filter!296 (c!186263 objs!8) lambda!43054)))))))

(declare-fun b!1097787 () Bool)

(declare-fun e!695090 () Bool)

(assert (=> b!1097787 (= e!695090 e!695091)))

(declare-fun res!487267 () Bool)

(assert (=> b!1097787 (=> (not res!487267) (not e!695091))))

(assert (=> b!1097787 (= res!487267 (<= (- 1) (- (height!425 (left!9088 (filter!296 (c!186263 objs!8) lambda!43054))) (height!425 (right!9418 (filter!296 (c!186263 objs!8) lambda!43054))))))))

(declare-fun b!1097788 () Bool)

(declare-fun res!487269 () Bool)

(assert (=> b!1097788 (=> (not res!487269) (not e!695091))))

(assert (=> b!1097788 (= res!487269 (isBalanced!897 (right!9418 (filter!296 (c!186263 objs!8) lambda!43054))))))

(declare-fun b!1097789 () Bool)

(declare-fun res!487268 () Bool)

(assert (=> b!1097789 (=> (not res!487268) (not e!695091))))

(assert (=> b!1097789 (= res!487268 (<= (- (height!425 (left!9088 (filter!296 (c!186263 objs!8) lambda!43054))) (height!425 (right!9418 (filter!296 (c!186263 objs!8) lambda!43054)))) 1))))

(declare-fun d!310239 () Bool)

(declare-fun res!487270 () Bool)

(assert (=> d!310239 (=> res!487270 e!695090)))

(assert (=> d!310239 (= res!487270 (not (is-Node!3244 (filter!296 (c!186263 objs!8) lambda!43054))))))

(assert (=> d!310239 (= (isBalanced!897 (filter!296 (c!186263 objs!8) lambda!43054)) e!695090)))

(declare-fun b!1097790 () Bool)

(assert (=> b!1097790 (= e!695091 (not (isEmpty!6679 (right!9418 (filter!296 (c!186263 objs!8) lambda!43054)))))))

(declare-fun b!1097791 () Bool)

(declare-fun res!487271 () Bool)

(assert (=> b!1097791 (=> (not res!487271) (not e!695091))))

(assert (=> b!1097791 (= res!487271 (isBalanced!897 (left!9088 (filter!296 (c!186263 objs!8) lambda!43054))))))

(assert (= (and d!310239 (not res!487270)) b!1097787))

(assert (= (and b!1097787 res!487267) b!1097789))

(assert (= (and b!1097789 res!487268) b!1097791))

(assert (= (and b!1097791 res!487271) b!1097788))

(assert (= (and b!1097788 res!487269) b!1097786))

(assert (= (and b!1097786 res!487266) b!1097790))

(declare-fun m!1253673 () Bool)

(assert (=> b!1097788 m!1253673))

(declare-fun m!1253675 () Bool)

(assert (=> b!1097791 m!1253675))

(declare-fun m!1253677 () Bool)

(assert (=> b!1097787 m!1253677))

(declare-fun m!1253679 () Bool)

(assert (=> b!1097787 m!1253679))

(declare-fun m!1253681 () Bool)

(assert (=> b!1097786 m!1253681))

(assert (=> b!1097789 m!1253677))

(assert (=> b!1097789 m!1253679))

(declare-fun m!1253683 () Bool)

(assert (=> b!1097790 m!1253683))

(assert (=> d!310165 d!310239))

(declare-fun b!1097792 () Bool)

(declare-fun e!695093 () Bool)

(declare-fun lt!370914 () Conc!3244)

(assert (=> b!1097792 (= e!695093 (= (list!3793 lt!370914) (filter!297 (list!3793 (c!186263 objs!8)) lambda!43054)))))

(declare-fun b!1097793 () Bool)

(declare-fun e!695092 () Conc!3244)

(assert (=> b!1097793 (= e!695092 Empty!3244)))

(declare-fun b!1097794 () Bool)

(declare-fun e!695094 () Conc!3244)

(assert (=> b!1097794 (= e!695094 (c!186263 objs!8))))

(declare-fun b!1097795 () Bool)

(declare-fun lt!370912 () IArray!6493)

(assert (=> b!1097795 (= e!695092 (Leaf!5153 lt!370912 (size!8179 lt!370912)))))

(declare-fun b!1097796 () Bool)

(declare-fun lt!370913 () Unit!16151)

(assert (=> b!1097796 (= lt!370913 (lemmaFilterConcat!9 (list!3793 (left!9088 (c!186263 objs!8))) (list!3793 (right!9418 (c!186263 objs!8))) lambda!43054))))

(declare-fun e!695095 () Conc!3244)

(assert (=> b!1097796 (= e!695095 (++!2870 (filter!296 (left!9088 (c!186263 objs!8)) lambda!43054) (filter!296 (right!9418 (c!186263 objs!8)) lambda!43054)))))

(declare-fun b!1097797 () Bool)

(declare-fun c!186323 () Bool)

(assert (=> b!1097797 (= c!186323 (= (size!8179 lt!370912) 0))))

(assert (=> b!1097797 (= lt!370912 (filter!300 (xs!5937 (c!186263 objs!8)) lambda!43054))))

(assert (=> b!1097797 (= e!695095 e!695092)))

(declare-fun b!1097798 () Bool)

(assert (=> b!1097798 (= e!695094 e!695095)))

(declare-fun c!186321 () Bool)

(assert (=> b!1097798 (= c!186321 (is-Leaf!5153 (c!186263 objs!8)))))

(declare-fun d!310241 () Bool)

(assert (=> d!310241 e!695093))

(declare-fun res!487272 () Bool)

(assert (=> d!310241 (=> (not res!487272) (not e!695093))))

(assert (=> d!310241 (= res!487272 (isBalanced!897 lt!370914))))

(assert (=> d!310241 (= lt!370914 e!695094)))

(declare-fun c!186322 () Bool)

(assert (=> d!310241 (= c!186322 (is-Empty!3244 (c!186263 objs!8)))))

(assert (=> d!310241 (isBalanced!897 (c!186263 objs!8))))

(assert (=> d!310241 (= (filter!296 (c!186263 objs!8) lambda!43054) lt!370914)))

(assert (= (and d!310241 c!186322) b!1097794))

(assert (= (and d!310241 (not c!186322)) b!1097798))

(assert (= (and b!1097798 c!186321) b!1097797))

(assert (= (and b!1097798 (not c!186321)) b!1097796))

(assert (= (and b!1097797 c!186323) b!1097793))

(assert (= (and b!1097797 (not c!186323)) b!1097795))

(assert (= (and d!310241 res!487272) b!1097792))

(declare-fun m!1253685 () Bool)

(assert (=> b!1097797 m!1253685))

(declare-fun m!1253687 () Bool)

(assert (=> b!1097797 m!1253687))

(assert (=> b!1097795 m!1253685))

(declare-fun m!1253689 () Bool)

(assert (=> b!1097792 m!1253689))

(assert (=> b!1097792 m!1253509))

(assert (=> b!1097792 m!1253509))

(declare-fun m!1253691 () Bool)

(assert (=> b!1097792 m!1253691))

(declare-fun m!1253693 () Bool)

(assert (=> d!310241 m!1253693))

(assert (=> d!310241 m!1253393))

(assert (=> b!1097796 m!1253545))

(declare-fun m!1253695 () Bool)

(assert (=> b!1097796 m!1253695))

(assert (=> b!1097796 m!1253695))

(declare-fun m!1253697 () Bool)

(assert (=> b!1097796 m!1253697))

(declare-fun m!1253699 () Bool)

(assert (=> b!1097796 m!1253699))

(assert (=> b!1097796 m!1253697))

(assert (=> b!1097796 m!1253545))

(assert (=> b!1097796 m!1253553))

(declare-fun m!1253701 () Bool)

(assert (=> b!1097796 m!1253701))

(assert (=> b!1097796 m!1253553))

(assert (=> d!310165 d!310241))

(declare-fun d!310243 () Bool)

(declare-fun res!487279 () Bool)

(declare-fun e!695098 () Bool)

(assert (=> d!310243 (=> (not res!487279) (not e!695098))))

(assert (=> d!310243 (= res!487279 (= (csize!6718 (c!186263 objs!8)) (+ (size!8176 (left!9088 (c!186263 objs!8))) (size!8176 (right!9418 (c!186263 objs!8))))))))

(assert (=> d!310243 (= (inv!13534 (c!186263 objs!8)) e!695098)))

(declare-fun b!1097805 () Bool)

(declare-fun res!487280 () Bool)

(assert (=> b!1097805 (=> (not res!487280) (not e!695098))))

(assert (=> b!1097805 (= res!487280 (and (not (= (left!9088 (c!186263 objs!8)) Empty!3244)) (not (= (right!9418 (c!186263 objs!8)) Empty!3244))))))

(declare-fun b!1097806 () Bool)

(declare-fun res!487281 () Bool)

(assert (=> b!1097806 (=> (not res!487281) (not e!695098))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1097806 (= res!487281 (= (cheight!3455 (c!186263 objs!8)) (+ (max!0 (height!425 (left!9088 (c!186263 objs!8))) (height!425 (right!9418 (c!186263 objs!8)))) 1)))))

(declare-fun b!1097807 () Bool)

(assert (=> b!1097807 (= e!695098 (<= 0 (cheight!3455 (c!186263 objs!8))))))

(assert (= (and d!310243 res!487279) b!1097805))

(assert (= (and b!1097805 res!487280) b!1097806))

(assert (= (and b!1097806 res!487281) b!1097807))

(assert (=> d!310243 m!1253639))

(declare-fun m!1253703 () Bool)

(assert (=> d!310243 m!1253703))

(assert (=> b!1097806 m!1253561))

(assert (=> b!1097806 m!1253563))

(assert (=> b!1097806 m!1253561))

(assert (=> b!1097806 m!1253563))

(declare-fun m!1253705 () Bool)

(assert (=> b!1097806 m!1253705))

(assert (=> b!1097504 d!310243))

(declare-fun tp!326740 () Bool)

(declare-fun e!695100 () Bool)

(declare-fun b!1097808 () Bool)

(declare-fun tp!326739 () Bool)

(assert (=> b!1097808 (= e!695100 (and (inv!13531 (left!9088 (left!9088 (c!186263 objs!8)))) tp!326739 (inv!13531 (right!9418 (left!9088 (c!186263 objs!8)))) tp!326740))))

(declare-fun b!1097810 () Bool)

(declare-fun e!695099 () Bool)

(declare-fun tp!326741 () Bool)

(assert (=> b!1097810 (= e!695099 tp!326741)))

(declare-fun b!1097809 () Bool)

(assert (=> b!1097809 (= e!695100 (and (inv!13536 (xs!5937 (left!9088 (c!186263 objs!8)))) e!695099))))

(assert (=> b!1097526 (= tp!326727 (and (inv!13531 (left!9088 (c!186263 objs!8))) e!695100))))

(assert (= (and b!1097526 (is-Node!3244 (left!9088 (c!186263 objs!8)))) b!1097808))

(assert (= b!1097809 b!1097810))

(assert (= (and b!1097526 (is-Leaf!5153 (left!9088 (c!186263 objs!8)))) b!1097809))

(declare-fun m!1253707 () Bool)

(assert (=> b!1097808 m!1253707))

(declare-fun m!1253709 () Bool)

(assert (=> b!1097808 m!1253709))

(declare-fun m!1253711 () Bool)

(assert (=> b!1097809 m!1253711))

(assert (=> b!1097526 m!1253447))

(declare-fun b!1097811 () Bool)

(declare-fun tp!326743 () Bool)

(declare-fun e!695102 () Bool)

(declare-fun tp!326742 () Bool)

(assert (=> b!1097811 (= e!695102 (and (inv!13531 (left!9088 (right!9418 (c!186263 objs!8)))) tp!326742 (inv!13531 (right!9418 (right!9418 (c!186263 objs!8)))) tp!326743))))

(declare-fun b!1097813 () Bool)

(declare-fun e!695101 () Bool)

(declare-fun tp!326744 () Bool)

(assert (=> b!1097813 (= e!695101 tp!326744)))

(declare-fun b!1097812 () Bool)

(assert (=> b!1097812 (= e!695102 (and (inv!13536 (xs!5937 (right!9418 (c!186263 objs!8)))) e!695101))))

(assert (=> b!1097526 (= tp!326728 (and (inv!13531 (right!9418 (c!186263 objs!8))) e!695102))))

(assert (= (and b!1097526 (is-Node!3244 (right!9418 (c!186263 objs!8)))) b!1097811))

(assert (= b!1097812 b!1097813))

(assert (= (and b!1097526 (is-Leaf!5153 (right!9418 (c!186263 objs!8)))) b!1097812))

(declare-fun m!1253713 () Bool)

(assert (=> b!1097811 m!1253713))

(declare-fun m!1253715 () Bool)

(assert (=> b!1097811 m!1253715))

(declare-fun m!1253717 () Bool)

(assert (=> b!1097812 m!1253717))

(assert (=> b!1097526 m!1253449))

(declare-fun b!1097816 () Bool)

(declare-fun e!695105 () Bool)

(assert (=> b!1097816 (= e!695105 true)))

(declare-fun b!1097815 () Bool)

(declare-fun e!695104 () Bool)

(assert (=> b!1097815 (= e!695104 e!695105)))

(declare-fun b!1097814 () Bool)

(declare-fun e!695103 () Bool)

(assert (=> b!1097814 (= e!695103 e!695104)))

(assert (=> b!1097549 e!695103))

(assert (= b!1097815 b!1097816))

(assert (= b!1097814 b!1097815))

(assert (= (and b!1097549 (is-Cons!10549 (t!103627 (rules!9092 (_2!6694 lt!370817))))) b!1097814))

(assert (=> b!1097816 (< (dynLambda!4629 order!6381 (toValue!2882 (transformation!1805 (h!15950 (t!103627 (rules!9092 (_2!6694 lt!370817))))))) (dynLambda!4630 order!6383 lambda!43056))))

(assert (=> b!1097816 (< (dynLambda!4631 order!6385 (toChars!2741 (transformation!1805 (h!15950 (t!103627 (rules!9092 (_2!6694 lt!370817))))))) (dynLambda!4630 order!6383 lambda!43056))))

(declare-fun b!1097819 () Bool)

(declare-fun e!695108 () Bool)

(assert (=> b!1097819 (= e!695108 true)))

(declare-fun b!1097818 () Bool)

(declare-fun e!695107 () Bool)

(assert (=> b!1097818 (= e!695107 e!695108)))

(declare-fun b!1097817 () Bool)

(declare-fun e!695106 () Bool)

(assert (=> b!1097817 (= e!695106 e!695107)))

(assert (=> b!1097537 e!695106))

(assert (= b!1097818 b!1097819))

(assert (= b!1097817 b!1097818))

(assert (= (and b!1097537 (is-Cons!10549 (t!103627 (rules!9092 (_2!6694 lt!370817))))) b!1097817))

(assert (=> b!1097819 (< (dynLambda!4629 order!6381 (toValue!2882 (transformation!1805 (h!15950 (t!103627 (rules!9092 (_2!6694 lt!370817))))))) (dynLambda!4630 order!6383 lambda!43054))))

(assert (=> b!1097819 (< (dynLambda!4631 order!6385 (toChars!2741 (transformation!1805 (h!15950 (t!103627 (rules!9092 (_2!6694 lt!370817))))))) (dynLambda!4630 order!6383 lambda!43054))))

(declare-fun b!1097822 () Bool)

(declare-fun e!695111 () Bool)

(assert (=> b!1097822 (= e!695111 true)))

(declare-fun b!1097821 () Bool)

(declare-fun e!695110 () Bool)

(assert (=> b!1097821 (= e!695110 e!695111)))

(declare-fun b!1097820 () Bool)

(declare-fun e!695109 () Bool)

(assert (=> b!1097820 (= e!695109 e!695110)))

(assert (=> b!1097546 e!695109))

(assert (= b!1097821 b!1097822))

(assert (= b!1097820 b!1097821))

(assert (= (and b!1097546 (is-Cons!10549 (t!103627 (rules!9092 (_2!6694 lt!370817))))) b!1097820))

(assert (=> b!1097822 (< (dynLambda!4629 order!6381 (toValue!2882 (transformation!1805 (h!15950 (t!103627 (rules!9092 (_2!6694 lt!370817))))))) (dynLambda!4630 order!6383 lambda!43055))))

(assert (=> b!1097822 (< (dynLambda!4631 order!6385 (toChars!2741 (transformation!1805 (h!15950 (t!103627 (rules!9092 (_2!6694 lt!370817))))))) (dynLambda!4630 order!6383 lambda!43055))))

(declare-fun b!1097835 () Bool)

(declare-fun e!695122 () Bool)

(declare-fun e!695123 () Bool)

(assert (=> b!1097835 (= e!695122 e!695123)))

(declare-fun b!1097834 () Bool)

(declare-fun e!695121 () Bool)

(assert (=> b!1097834 (= e!695121 e!695122)))

(declare-fun e!695120 () Bool)

(assert (=> b!1097545 e!695120))

(declare-fun b!1097836 () Bool)

(assert (=> b!1097836 (= e!695123 true)))

(declare-fun b!1097833 () Bool)

(assert (=> b!1097833 (= e!695120 e!695121)))

(assert (= b!1097835 b!1097836))

(assert (= b!1097834 b!1097835))

(assert (= b!1097833 b!1097834))

(assert (= (and b!1097545 (is-Cons!10548 (innerList!3303 (xs!5936 (c!186262 (tokens!1364 (_2!6694 lt!370817))))))) b!1097833))

(assert (=> b!1097836 (< (dynLambda!4629 order!6381 (toValue!2882 (transformation!1805 (rule!3228 (h!15949 (innerList!3303 (xs!5936 (c!186262 (tokens!1364 (_2!6694 lt!370817)))))))))) (dynLambda!4630 order!6383 lambda!43054))))

(assert (=> b!1097836 (< (dynLambda!4631 order!6385 (toChars!2741 (transformation!1805 (rule!3228 (h!15949 (innerList!3303 (xs!5936 (c!186262 (tokens!1364 (_2!6694 lt!370817)))))))))) (dynLambda!4630 order!6383 lambda!43054))))

(declare-fun b!1097839 () Bool)

(declare-fun e!695126 () Bool)

(declare-fun e!695127 () Bool)

(assert (=> b!1097839 (= e!695126 e!695127)))

(declare-fun b!1097838 () Bool)

(declare-fun e!695125 () Bool)

(assert (=> b!1097838 (= e!695125 e!695126)))

(declare-fun e!695124 () Bool)

(assert (=> b!1097542 e!695124))

(declare-fun b!1097840 () Bool)

(assert (=> b!1097840 (= e!695127 true)))

(declare-fun b!1097837 () Bool)

(assert (=> b!1097837 (= e!695124 e!695125)))

(assert (= b!1097839 b!1097840))

(assert (= b!1097838 b!1097839))

(assert (= b!1097837 b!1097838))

(assert (= (and b!1097542 (is-Cons!10548 (innerList!3303 (xs!5936 (c!186262 (tokens!1364 (_2!6694 lt!370817))))))) b!1097837))

(assert (=> b!1097840 (< (dynLambda!4629 order!6381 (toValue!2882 (transformation!1805 (rule!3228 (h!15949 (innerList!3303 (xs!5936 (c!186262 (tokens!1364 (_2!6694 lt!370817)))))))))) (dynLambda!4630 order!6383 lambda!43056))))

(assert (=> b!1097840 (< (dynLambda!4631 order!6385 (toChars!2741 (transformation!1805 (rule!3228 (h!15949 (innerList!3303 (xs!5936 (c!186262 (tokens!1364 (_2!6694 lt!370817)))))))))) (dynLambda!4630 order!6383 lambda!43056))))

(declare-fun b!1097841 () Bool)

(declare-fun e!695128 () Bool)

(assert (=> b!1097841 (= e!695128 true)))

(declare-fun b!1097843 () Bool)

(declare-fun e!695129 () Bool)

(assert (=> b!1097843 (= e!695129 true)))

(declare-fun b!1097842 () Bool)

(assert (=> b!1097842 (= e!695128 e!695129)))

(assert (=> b!1097515 e!695128))

(assert (= (and b!1097515 (is-Node!3243 (left!9087 (c!186262 (tokens!1364 (_2!6694 lt!370817)))))) b!1097841))

(assert (= b!1097842 b!1097843))

(assert (= (and b!1097515 (is-Leaf!5152 (left!9087 (c!186262 (tokens!1364 (_2!6694 lt!370817)))))) b!1097842))

(declare-fun b!1097844 () Bool)

(declare-fun e!695130 () Bool)

(assert (=> b!1097844 (= e!695130 true)))

(declare-fun b!1097846 () Bool)

(declare-fun e!695131 () Bool)

(assert (=> b!1097846 (= e!695131 true)))

(declare-fun b!1097845 () Bool)

(assert (=> b!1097845 (= e!695130 e!695131)))

(assert (=> b!1097515 e!695130))

(assert (= (and b!1097515 (is-Node!3243 (right!9417 (c!186262 (tokens!1364 (_2!6694 lt!370817)))))) b!1097844))

(assert (= b!1097845 b!1097846))

(assert (= (and b!1097515 (is-Leaf!5152 (right!9417 (c!186262 (tokens!1364 (_2!6694 lt!370817)))))) b!1097845))

(declare-fun b!1097857 () Bool)

(declare-fun e!695140 () Bool)

(declare-fun tp!326753 () Bool)

(declare-fun inv!13540 (Conc!3243) Bool)

(assert (=> b!1097857 (= e!695140 (and (inv!13540 (c!186262 (tokens!1364 (_2!6694 (h!15951 (innerList!3304 (xs!5937 (c!186263 objs!8)))))))) tp!326753))))

(declare-fun e!695138 () Bool)

(declare-fun b!1097856 () Bool)

(declare-fun tp!326751 () Bool)

(declare-fun inv!13541 (BalanceConc!6500) Bool)

(assert (=> b!1097856 (= e!695138 (and tp!326751 (inv!13541 (tokens!1364 (_2!6694 (h!15951 (innerList!3304 (xs!5937 (c!186263 objs!8))))))) e!695140))))

(declare-fun b!1097855 () Bool)

(declare-fun e!695139 () Bool)

(declare-fun tp!326752 () Bool)

(declare-fun inv!13542 (PrintableTokens!326) Bool)

(assert (=> b!1097855 (= e!695139 (and (inv!13542 (_2!6694 (h!15951 (innerList!3304 (xs!5937 (c!186263 objs!8)))))) e!695138 tp!326752))))

(assert (=> b!1097528 (= tp!326729 e!695139)))

(assert (= b!1097856 b!1097857))

(assert (= b!1097855 b!1097856))

(assert (= (and b!1097528 (is-Cons!10550 (innerList!3304 (xs!5937 (c!186263 objs!8))))) b!1097855))

(declare-fun m!1253719 () Bool)

(assert (=> b!1097857 m!1253719))

(declare-fun m!1253721 () Bool)

(assert (=> b!1097856 m!1253721))

(declare-fun m!1253723 () Bool)

(assert (=> b!1097855 m!1253723))

(declare-fun b!1097860 () Bool)

(declare-fun e!695143 () Bool)

(declare-fun e!695144 () Bool)

(assert (=> b!1097860 (= e!695143 e!695144)))

(declare-fun b!1097859 () Bool)

(declare-fun e!695142 () Bool)

(assert (=> b!1097859 (= e!695142 e!695143)))

(declare-fun e!695141 () Bool)

(assert (=> b!1097517 e!695141))

(declare-fun b!1097861 () Bool)

(assert (=> b!1097861 (= e!695144 true)))

(declare-fun b!1097858 () Bool)

(assert (=> b!1097858 (= e!695141 e!695142)))

(assert (= b!1097860 b!1097861))

(assert (= b!1097859 b!1097860))

(assert (= b!1097858 b!1097859))

(assert (= (and b!1097517 (is-Cons!10548 (innerList!3303 (xs!5936 (c!186262 (tokens!1364 (_2!6694 lt!370817))))))) b!1097858))

(assert (=> b!1097861 (< (dynLambda!4629 order!6381 (toValue!2882 (transformation!1805 (rule!3228 (h!15949 (innerList!3303 (xs!5936 (c!186262 (tokens!1364 (_2!6694 lt!370817)))))))))) (dynLambda!4630 order!6383 lambda!43055))))

(assert (=> b!1097861 (< (dynLambda!4631 order!6385 (toChars!2741 (transformation!1805 (rule!3228 (h!15949 (innerList!3303 (xs!5936 (c!186262 (tokens!1364 (_2!6694 lt!370817)))))))))) (dynLambda!4630 order!6383 lambda!43055))))

(declare-fun b!1097865 () Bool)

(declare-fun e!695147 () Bool)

(assert (=> b!1097865 (= e!695147 true)))

(declare-fun b!1097867 () Bool)

(declare-fun e!695148 () Bool)

(assert (=> b!1097867 (= e!695148 true)))

(declare-fun b!1097866 () Bool)

(assert (=> b!1097866 (= e!695147 e!695148)))

(assert (=> b!1097543 e!695147))

(assert (= (and b!1097543 (is-Node!3243 (left!9087 (c!186262 (tokens!1364 (_2!6694 lt!370817)))))) b!1097865))

(assert (= b!1097866 b!1097867))

(assert (= (and b!1097543 (is-Leaf!5152 (left!9087 (c!186262 (tokens!1364 (_2!6694 lt!370817)))))) b!1097866))

(declare-fun b!1097868 () Bool)

(declare-fun e!695149 () Bool)

(assert (=> b!1097868 (= e!695149 true)))

(declare-fun b!1097870 () Bool)

(declare-fun e!695150 () Bool)

(assert (=> b!1097870 (= e!695150 true)))

(declare-fun b!1097869 () Bool)

(assert (=> b!1097869 (= e!695149 e!695150)))

(assert (=> b!1097543 e!695149))

(assert (= (and b!1097543 (is-Node!3243 (right!9417 (c!186262 (tokens!1364 (_2!6694 lt!370817)))))) b!1097868))

(assert (= b!1097869 b!1097870))

(assert (= (and b!1097543 (is-Leaf!5152 (right!9417 (c!186262 (tokens!1364 (_2!6694 lt!370817)))))) b!1097869))

(declare-fun b!1097871 () Bool)

(declare-fun e!695151 () Bool)

(assert (=> b!1097871 (= e!695151 true)))

(declare-fun b!1097873 () Bool)

(declare-fun e!695152 () Bool)

(assert (=> b!1097873 (= e!695152 true)))

(declare-fun b!1097872 () Bool)

(assert (=> b!1097872 (= e!695151 e!695152)))

(assert (=> b!1097540 e!695151))

(assert (= (and b!1097540 (is-Node!3243 (left!9087 (c!186262 (tokens!1364 (_2!6694 lt!370817)))))) b!1097871))

(assert (= b!1097872 b!1097873))

(assert (= (and b!1097540 (is-Leaf!5152 (left!9087 (c!186262 (tokens!1364 (_2!6694 lt!370817)))))) b!1097872))

(declare-fun b!1097874 () Bool)

(declare-fun e!695153 () Bool)

(assert (=> b!1097874 (= e!695153 true)))

(declare-fun b!1097876 () Bool)

(declare-fun e!695154 () Bool)

(assert (=> b!1097876 (= e!695154 true)))

(declare-fun b!1097875 () Bool)

(assert (=> b!1097875 (= e!695153 e!695154)))

(assert (=> b!1097540 e!695153))

(assert (= (and b!1097540 (is-Node!3243 (right!9417 (c!186262 (tokens!1364 (_2!6694 lt!370817)))))) b!1097874))

(assert (= b!1097875 b!1097876))

(assert (= (and b!1097540 (is-Leaf!5152 (right!9417 (c!186262 (tokens!1364 (_2!6694 lt!370817)))))) b!1097875))

(declare-fun b_lambda!31779 () Bool)

(assert (= b_lambda!31775 (or b!1097455 b_lambda!31779)))

(declare-fun bs!259181 () Bool)

(declare-fun d!310249 () Bool)

(assert (= bs!259181 (and d!310249 b!1097455)))

(assert (=> bs!259181 (= (dynLambda!4635 lambda!43056 (h!15951 (list!3791 objs!8))) (> (_1!6694 (h!15951 (list!3791 objs!8))) (_1!6694 lt!370817)))))

(assert (=> b!1097703 d!310249))

(declare-fun b_lambda!31781 () Bool)

(assert (= b_lambda!31773 (or b!1097455 b_lambda!31781)))

(declare-fun bs!259182 () Bool)

(declare-fun d!310251 () Bool)

(assert (= bs!259182 (and d!310251 b!1097455)))

(assert (=> bs!259182 (= (dynLambda!4635 lambda!43054 (h!15951 (list!3791 objs!8))) (< (_1!6694 (h!15951 (list!3791 objs!8))) (_1!6694 lt!370817)))))

(assert (=> b!1097697 d!310251))

(declare-fun b_lambda!31783 () Bool)

(assert (= b_lambda!31777 (or start!94108 b_lambda!31783)))

(declare-fun bs!259183 () Bool)

(declare-fun d!310253 () Bool)

(assert (= bs!259183 (and d!310253 start!94108)))

(declare-fun usesJsonRules!0 (PrintableTokens!326) Bool)

(assert (=> bs!259183 (= (dynLambda!4635 lambda!43053 (h!15951 (list!3791 objs!8))) (usesJsonRules!0 (_2!6694 (h!15951 (list!3791 objs!8)))))))

(declare-fun m!1253733 () Bool)

(assert (=> bs!259183 m!1253733))

(assert (=> b!1097754 d!310253))

(declare-fun b_lambda!31785 () Bool)

(assert (= b_lambda!31771 (or b!1097455 b_lambda!31785)))

(declare-fun bs!259184 () Bool)

(declare-fun d!310255 () Bool)

(assert (= bs!259184 (and d!310255 b!1097455)))

(assert (=> bs!259184 (= (dynLambda!4635 lambda!43055 (h!15951 (list!3791 objs!8))) (= (_1!6694 (h!15951 (list!3791 objs!8))) (_1!6694 lt!370817)))))

(assert (=> b!1097628 d!310255))

(push 1)

(assert (not b!1097718))

(assert (not b!1097659))

(assert (not d!310215))

(assert (not b!1097711))

(assert (not d!310229))

(assert (not b!1097684))

(assert (not b!1097717))

(assert (not b!1097814))

(assert (not bm!80361))

(assert (not b!1097813))

(assert (not b!1097702))

(assert (not b!1097767))

(assert (not b!1097685))

(assert (not b!1097660))

(assert (not b!1097694))

(assert (not b!1097727))

(assert (not b!1097526))

(assert (not b!1097858))

(assert (not d!310213))

(assert (not b!1097696))

(assert (not b!1097790))

(assert (not b!1097701))

(assert (not d!310201))

(assert (not d!310237))

(assert (not b!1097661))

(assert (not b!1097868))

(assert (not b!1097784))

(assert (not b!1097855))

(assert (not b!1097687))

(assert (not b!1097788))

(assert (not b!1097846))

(assert (not bs!259183))

(assert (not b!1097716))

(assert (not b!1097843))

(assert (not b!1097712))

(assert (not b!1097713))

(assert (not b!1097642))

(assert (not b!1097710))

(assert (not b!1097792))

(assert (not b!1097726))

(assert (not b!1097745))

(assert (not b!1097833))

(assert (not b!1097787))

(assert (not d!310217))

(assert (not b!1097870))

(assert (not b!1097789))

(assert (not b!1097695))

(assert (not d!310241))

(assert (not b!1097626))

(assert (not bm!80365))

(assert (not b!1097773))

(assert (not d!310235))

(assert (not b!1097811))

(assert (not b!1097837))

(assert (not b!1097632))

(assert (not b!1097809))

(assert (not b!1097707))

(assert (not d!310233))

(assert (not b!1097873))

(assert (not b!1097755))

(assert (not b!1097808))

(assert (not b!1097857))

(assert (not d!310219))

(assert (not b!1097683))

(assert (not b!1097765))

(assert (not b!1097766))

(assert (not b!1097679))

(assert (not b!1097841))

(assert (not b!1097634))

(assert (not bm!80360))

(assert (not b!1097709))

(assert (not b!1097874))

(assert (not b_lambda!31779))

(assert (not b!1097871))

(assert (not b!1097795))

(assert (not b!1097681))

(assert (not b!1097627))

(assert (not b!1097812))

(assert (not d!310205))

(assert (not b!1097820))

(assert (not b!1097791))

(assert (not b!1097743))

(assert (not b!1097797))

(assert (not b!1097749))

(assert (not b!1097676))

(assert (not b!1097810))

(assert (not b_lambda!31781))

(assert (not bm!80362))

(assert (not b!1097844))

(assert (not d!310195))

(assert (not d!310225))

(assert (not b!1097876))

(assert (not b!1097865))

(assert (not b!1097657))

(assert (not b!1097680))

(assert (not b!1097817))

(assert (not b!1097783))

(assert (not d!310221))

(assert (not b!1097637))

(assert (not b_lambda!31783))

(assert (not d!310227))

(assert (not b_lambda!31785))

(assert (not b!1097686))

(assert (not b!1097635))

(assert (not d!310191))

(assert (not b!1097708))

(assert (not d!310243))

(assert (not d!310209))

(assert (not b!1097785))

(assert (not b!1097728))

(assert (not b!1097656))

(assert (not b!1097856))

(assert (not b!1097688))

(assert (not b!1097867))

(assert (not b!1097658))

(assert (not b!1097747))

(assert (not b!1097806))

(assert (not d!310193))

(assert (not b!1097796))

(assert (not b!1097786))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

