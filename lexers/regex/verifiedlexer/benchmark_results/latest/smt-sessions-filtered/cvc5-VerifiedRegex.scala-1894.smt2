; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!93232 () Bool)

(assert start!93232)

(declare-fun bs!257879 () Bool)

(declare-fun b!1090394 () Bool)

(assert (= bs!257879 (and b!1090394 start!93232)))

(declare-fun lambda!41014 () Int)

(declare-fun lambda!41013 () Int)

(assert (=> bs!257879 (not (= lambda!41014 lambda!41013))))

(declare-fun b!1090415 () Bool)

(declare-fun e!689918 () Bool)

(assert (=> b!1090415 (= e!689918 true)))

(declare-fun b!1090414 () Bool)

(declare-fun e!689917 () Bool)

(assert (=> b!1090414 (= e!689917 e!689918)))

(assert (=> b!1090394 e!689917))

(assert (= b!1090414 b!1090415))

(assert (= b!1090394 b!1090414))

(declare-fun lambda!41015 () Int)

(assert (=> bs!257879 (not (= lambda!41015 lambda!41013))))

(assert (=> b!1090394 (not (= lambda!41015 lambda!41014))))

(declare-fun b!1090417 () Bool)

(declare-fun e!689920 () Bool)

(assert (=> b!1090417 (= e!689920 true)))

(declare-fun b!1090416 () Bool)

(declare-fun e!689919 () Bool)

(assert (=> b!1090416 (= e!689919 e!689920)))

(assert (=> b!1090394 e!689919))

(assert (= b!1090416 b!1090417))

(assert (= b!1090394 b!1090416))

(declare-fun lambda!41016 () Int)

(assert (=> bs!257879 (not (= lambda!41016 lambda!41013))))

(assert (=> b!1090394 (not (= lambda!41016 lambda!41014))))

(assert (=> b!1090394 (not (= lambda!41016 lambda!41015))))

(declare-fun b!1090419 () Bool)

(declare-fun e!689922 () Bool)

(assert (=> b!1090419 (= e!689922 true)))

(declare-fun b!1090418 () Bool)

(declare-fun e!689921 () Bool)

(assert (=> b!1090418 (= e!689921 e!689922)))

(assert (=> b!1090394 e!689921))

(assert (= b!1090418 b!1090419))

(assert (= b!1090394 b!1090418))

(declare-fun b!1090392 () Bool)

(declare-fun e!689908 () Bool)

(declare-fun e!689909 () Bool)

(assert (=> b!1090392 (= e!689908 e!689909)))

(declare-fun res!484603 () Bool)

(assert (=> b!1090392 (=> (not res!484603) (not e!689909))))

(declare-datatypes ((List!10451 0))(
  ( (Nil!10435) (Cons!10435 (h!15836 (_ BitVec 16)) (t!101667 List!10451)) )
))
(declare-datatypes ((TokenValue!1843 0))(
  ( (FloatLiteralValue!3686 (text!13346 List!10451)) (TokenValueExt!1842 (__x!7425 Int)) (Broken!9215 (value!58573 List!10451)) (Object!1858) (End!1843) (Def!1843) (Underscore!1843) (Match!1843) (Else!1843) (Error!1843) (Case!1843) (If!1843) (Extends!1843) (Abstract!1843) (Class!1843) (Val!1843) (DelimiterValue!3686 (del!1903 List!10451)) (KeywordValue!1849 (value!58574 List!10451)) (CommentValue!3686 (value!58575 List!10451)) (WhitespaceValue!3686 (value!58576 List!10451)) (IndentationValue!1843 (value!58577 List!10451)) (String!12786) (Int32!1843) (Broken!9216 (value!58578 List!10451)) (Boolean!1844) (Unit!15819) (OperatorValue!1846 (op!1903 List!10451)) (IdentifierValue!3686 (value!58579 List!10451)) (IdentifierValue!3687 (value!58580 List!10451)) (WhitespaceValue!3687 (value!58581 List!10451)) (True!3686) (False!3686) (Broken!9217 (value!58582 List!10451)) (Broken!9218 (value!58583 List!10451)) (True!3687) (RightBrace!1843) (RightBracket!1843) (Colon!1843) (Null!1843) (Comma!1843) (LeftBracket!1843) (False!3687) (LeftBrace!1843) (ImaginaryLiteralValue!1843 (text!13347 List!10451)) (StringLiteralValue!5529 (value!58584 List!10451)) (EOFValue!1843 (value!58585 List!10451)) (IdentValue!1843 (value!58586 List!10451)) (DelimiterValue!3687 (value!58587 List!10451)) (DedentValue!1843 (value!58588 List!10451)) (NewLineValue!1843 (value!58589 List!10451)) (IntegerValue!5529 (value!58590 (_ BitVec 32)) (text!13348 List!10451)) (IntegerValue!5530 (value!58591 Int) (text!13349 List!10451)) (Times!1843) (Or!1843) (Equal!1843) (Minus!1843) (Broken!9219 (value!58592 List!10451)) (And!1843) (Div!1843) (LessEqual!1843) (Mod!1843) (Concat!4889) (Not!1843) (Plus!1843) (SpaceValue!1843 (value!58593 List!10451)) (IntegerValue!5531 (value!58594 Int) (text!13350 List!10451)) (StringLiteralValue!5530 (text!13351 List!10451)) (FloatLiteralValue!3687 (text!13352 List!10451)) (BytesLiteralValue!1843 (value!58595 List!10451)) (CommentValue!3687 (value!58596 List!10451)) (StringLiteralValue!5531 (value!58597 List!10451)) (ErrorTokenValue!1843 (msg!1904 List!10451)) )
))
(declare-datatypes ((Regex!3046 0))(
  ( (ElementMatch!3046 (c!184757 (_ BitVec 16))) (Concat!4890 (regOne!6604 Regex!3046) (regTwo!6604 Regex!3046)) (EmptyExpr!3046) (Star!3046 (reg!3375 Regex!3046)) (EmptyLang!3046) (Union!3046 (regOne!6605 Regex!3046) (regTwo!6605 Regex!3046)) )
))
(declare-datatypes ((String!12787 0))(
  ( (String!12788 (value!58598 String)) )
))
(declare-datatypes ((IArray!6321 0))(
  ( (IArray!6322 (innerList!3218 List!10451)) )
))
(declare-datatypes ((Conc!3158 0))(
  ( (Node!3158 (left!8932 Conc!3158) (right!9262 Conc!3158) (csize!6546 Int) (cheight!3369 Int)) (Leaf!5053 (xs!5851 IArray!6321) (csize!6547 Int)) (Empty!3158) )
))
(declare-datatypes ((BalanceConc!6330 0))(
  ( (BalanceConc!6331 (c!184758 Conc!3158)) )
))
(declare-datatypes ((TokenValueInjection!3386 0))(
  ( (TokenValueInjection!3387 (toValue!2854 Int) (toChars!2713 Int)) )
))
(declare-datatypes ((Rule!3354 0))(
  ( (Rule!3355 (regex!1777 Regex!3046) (tag!2039 String!12787) (isSeparator!1777 Bool) (transformation!1777 TokenValueInjection!3386)) )
))
(declare-datatypes ((Token!3220 0))(
  ( (Token!3221 (value!58599 TokenValue!1843) (rule!3200 Rule!3354) (size!8065 Int) (originalCharacters!2333 List!10451)) )
))
(declare-datatypes ((List!10452 0))(
  ( (Nil!10436) (Cons!10436 (h!15837 Token!3220) (t!101668 List!10452)) )
))
(declare-datatypes ((IArray!6323 0))(
  ( (IArray!6324 (innerList!3219 List!10452)) )
))
(declare-datatypes ((Conc!3159 0))(
  ( (Node!3159 (left!8933 Conc!3159) (right!9263 Conc!3159) (csize!6548 Int) (cheight!3370 Int)) (Leaf!5054 (xs!5852 IArray!6323) (csize!6549 Int)) (Empty!3159) )
))
(declare-datatypes ((List!10453 0))(
  ( (Nil!10437) (Cons!10437 (h!15838 Rule!3354) (t!101669 List!10453)) )
))
(declare-datatypes ((BalanceConc!6332 0))(
  ( (BalanceConc!6333 (c!184759 Conc!3159)) )
))
(declare-datatypes ((PrintableTokens!270 0))(
  ( (PrintableTokens!271 (rules!9064 List!10453) (tokens!1336 BalanceConc!6332)) )
))
(declare-datatypes ((tuple2!11680 0))(
  ( (tuple2!11681 (_1!6666 Int) (_2!6666 PrintableTokens!270)) )
))
(declare-datatypes ((List!10454 0))(
  ( (Nil!10438) (Cons!10438 (h!15839 tuple2!11680) (t!101670 List!10454)) )
))
(declare-fun lt!364805 () List!10454)

(declare-fun forall!2318 (List!10454 Int) Bool)

(assert (=> b!1090392 (= res!484603 (forall!2318 lt!364805 lambda!41016))))

(declare-fun b!1090393 () Bool)

(declare-datatypes ((Unit!15820 0))(
  ( (Unit!15821) )
))
(declare-fun e!689911 () Unit!15820)

(declare-fun Unit!15822 () Unit!15820)

(assert (=> b!1090393 (= e!689911 Unit!15822)))

(declare-fun e!689907 () Bool)

(declare-fun e!689901 () Bool)

(assert (=> b!1090394 (= e!689907 e!689901)))

(declare-fun res!484606 () Bool)

(assert (=> b!1090394 (=> (not res!484606) (not e!689901))))

(declare-datatypes ((IArray!6325 0))(
  ( (IArray!6326 (innerList!3220 List!10454)) )
))
(declare-datatypes ((Conc!3160 0))(
  ( (Node!3160 (left!8934 Conc!3160) (right!9264 Conc!3160) (csize!6550 Int) (cheight!3371 Int)) (Leaf!5055 (xs!5853 IArray!6325) (csize!6551 Int)) (Empty!3160) )
))
(declare-datatypes ((BalanceConc!6334 0))(
  ( (BalanceConc!6335 (c!184760 Conc!3160)) )
))
(declare-fun objs!8 () BalanceConc!6334)

(declare-fun lt!364804 () tuple2!11680)

(declare-fun contains!1749 (BalanceConc!6334 tuple2!11680) Bool)

(assert (=> b!1090394 (= res!484606 (contains!1749 objs!8 lt!364804))))

(declare-fun lt!364817 () BalanceConc!6334)

(declare-fun filter!216 (BalanceConc!6334 Int) BalanceConc!6334)

(assert (=> b!1090394 (= lt!364817 (filter!216 objs!8 lambda!41016))))

(declare-fun lt!364818 () BalanceConc!6334)

(assert (=> b!1090394 (= lt!364818 (filter!216 objs!8 lambda!41015))))

(declare-fun lt!364806 () BalanceConc!6334)

(assert (=> b!1090394 (= lt!364806 (filter!216 objs!8 lambda!41014))))

(declare-fun lt!364812 () Int)

(declare-fun apply!2028 (BalanceConc!6334 Int) tuple2!11680)

(assert (=> b!1090394 (= lt!364804 (apply!2028 objs!8 (ite (>= lt!364812 0) (div lt!364812 2) (- (div (- lt!364812) 2)))))))

(declare-fun b!1090395 () Bool)

(declare-fun res!484607 () Bool)

(assert (=> b!1090395 (=> res!484607 e!689908)))

(declare-fun forall!2319 (BalanceConc!6334 Int) Bool)

(assert (=> b!1090395 (= res!484607 (not (forall!2319 objs!8 lambda!41016)))))

(declare-fun b!1090396 () Bool)

(declare-fun e!689905 () Unit!15820)

(declare-fun Unit!15823 () Unit!15820)

(assert (=> b!1090396 (= e!689905 Unit!15823)))

(declare-fun b!1090397 () Bool)

(declare-fun e!689910 () Unit!15820)

(declare-fun err!1837 () Unit!15820)

(assert (=> b!1090397 (= e!689910 err!1837)))

(declare-fun lt!364809 () Unit!15820)

(declare-fun forallContained!479 (List!10454 Int tuple2!11680) Unit!15820)

(declare-fun list!3741 (BalanceConc!6334) List!10454)

(assert (=> b!1090397 (= lt!364809 (forallContained!479 (list!3741 lt!364817) lambda!41016 lt!364804))))

(assert (=> b!1090397 true))

(declare-fun b!1090398 () Bool)

(declare-fun contains!1750 (List!10454 tuple2!11680) Bool)

(assert (=> b!1090398 (= e!689909 (contains!1750 lt!364805 lt!364804))))

(declare-fun b!1090399 () Bool)

(declare-fun err!1835 () Unit!15820)

(assert (=> b!1090399 (= e!689911 err!1835)))

(declare-fun lt!364814 () Unit!15820)

(assert (=> b!1090399 (= lt!364814 (forallContained!479 (list!3741 lt!364806) lambda!41014 lt!364804))))

(assert (=> b!1090399 true))

(declare-fun b!1090400 () Bool)

(declare-fun e!689902 () Bool)

(assert (=> b!1090400 (= e!689901 e!689902)))

(declare-fun res!484605 () Bool)

(assert (=> b!1090400 (=> (not res!484605) (not e!689902))))

(declare-fun lt!364815 () Bool)

(assert (=> b!1090400 (= res!484605 (not lt!364815))))

(declare-fun lt!364816 () Unit!15820)

(assert (=> b!1090400 (= lt!364816 e!689911)))

(declare-fun c!184755 () Bool)

(assert (=> b!1090400 (= c!184755 lt!364815)))

(assert (=> b!1090400 (= lt!364815 (contains!1749 lt!364806 lt!364804))))

(declare-fun res!484601 () Bool)

(declare-fun e!689903 () Bool)

(assert (=> start!93232 (=> (not res!484601) (not e!689903))))

(assert (=> start!93232 (= res!484601 (forall!2319 objs!8 lambda!41013))))

(assert (=> start!93232 e!689903))

(declare-fun e!689912 () Bool)

(declare-fun inv!13369 (BalanceConc!6334) Bool)

(assert (=> start!93232 (and (inv!13369 objs!8) e!689912)))

(declare-fun b!1090401 () Bool)

(declare-fun e!689906 () Bool)

(assert (=> b!1090401 (= e!689902 (not e!689906))))

(declare-fun res!484600 () Bool)

(assert (=> b!1090401 (=> res!484600 e!689906)))

(declare-fun size!8066 (BalanceConc!6334) Int)

(assert (=> b!1090401 (= res!484600 (>= (size!8066 lt!364806) lt!364812))))

(declare-fun e!689904 () Bool)

(assert (=> b!1090401 e!689904))

(declare-fun res!484608 () Bool)

(assert (=> b!1090401 (=> res!484608 e!689904)))

(declare-fun isEmpty!6647 (List!10454) Bool)

(assert (=> b!1090401 (= res!484608 (isEmpty!6647 lt!364805))))

(declare-fun lt!364811 () Unit!15820)

(declare-fun lemmaNotForallFilterShorter!20 (List!10454 Int) Unit!15820)

(assert (=> b!1090401 (= lt!364811 (lemmaNotForallFilterShorter!20 lt!364805 lambda!41014))))

(assert (=> b!1090401 (= lt!364805 (list!3741 objs!8))))

(declare-fun lt!364808 () Unit!15820)

(assert (=> b!1090401 (= lt!364808 e!689905)))

(declare-fun c!184754 () Bool)

(assert (=> b!1090401 (= c!184754 (forall!2319 objs!8 lambda!41014))))

(declare-fun b!1090402 () Bool)

(declare-fun tp!326411 () Bool)

(declare-fun inv!13370 (Conc!3160) Bool)

(assert (=> b!1090402 (= e!689912 (and (inv!13370 (c!184760 objs!8)) tp!326411))))

(declare-fun b!1090403 () Bool)

(assert (=> b!1090403 (= e!689906 e!689908)))

(declare-fun res!484604 () Bool)

(assert (=> b!1090403 (=> res!484604 e!689908)))

(declare-fun lt!364807 () Bool)

(assert (=> b!1090403 (= res!484604 lt!364807)))

(declare-fun lt!364810 () Unit!15820)

(assert (=> b!1090403 (= lt!364810 e!689910)))

(declare-fun c!184756 () Bool)

(assert (=> b!1090403 (= c!184756 lt!364807)))

(assert (=> b!1090403 (= lt!364807 (contains!1749 lt!364817 lt!364804))))

(declare-fun b!1090404 () Bool)

(declare-fun Unit!15824 () Unit!15820)

(assert (=> b!1090404 (= e!689910 Unit!15824)))

(declare-fun b!1090405 () Bool)

(declare-fun size!8067 (List!10454) Int)

(declare-fun filter!217 (List!10454 Int) List!10454)

(assert (=> b!1090405 (= e!689904 (< (size!8067 (filter!217 lt!364805 lambda!41014)) (size!8067 lt!364805)))))

(declare-fun b!1090406 () Bool)

(declare-fun err!1836 () Unit!15820)

(assert (=> b!1090406 (= e!689905 err!1836)))

(declare-fun lt!364813 () Unit!15820)

(assert (=> b!1090406 (= lt!364813 (forallContained!479 (list!3741 objs!8) lambda!41014 lt!364804))))

(assert (=> b!1090406 true))

(declare-fun b!1090407 () Bool)

(assert (=> b!1090407 (= e!689903 e!689907)))

(declare-fun res!484602 () Bool)

(assert (=> b!1090407 (=> (not res!484602) (not e!689907))))

(assert (=> b!1090407 (= res!484602 (> lt!364812 1))))

(assert (=> b!1090407 (= lt!364812 (size!8066 objs!8))))

(assert (= (and start!93232 res!484601) b!1090407))

(assert (= (and b!1090407 res!484602) b!1090394))

(assert (= (and b!1090394 res!484606) b!1090400))

(assert (= (and b!1090400 c!184755) b!1090399))

(assert (= (and b!1090400 (not c!184755)) b!1090393))

(assert (= (and b!1090400 res!484605) b!1090401))

(assert (= (and b!1090401 c!184754) b!1090406))

(assert (= (and b!1090401 (not c!184754)) b!1090396))

(assert (= (and b!1090401 (not res!484608)) b!1090405))

(assert (= (and b!1090401 (not res!484600)) b!1090403))

(assert (= (and b!1090403 c!184756) b!1090397))

(assert (= (and b!1090403 (not c!184756)) b!1090404))

(assert (= (and b!1090403 (not res!484604)) b!1090395))

(assert (= (and b!1090395 (not res!484607)) b!1090392))

(assert (= (and b!1090392 res!484603) b!1090398))

(assert (= start!93232 b!1090402))

(declare-fun m!1240807 () Bool)

(assert (=> b!1090403 m!1240807))

(declare-fun m!1240809 () Bool)

(assert (=> b!1090407 m!1240809))

(declare-fun m!1240811 () Bool)

(assert (=> b!1090395 m!1240811))

(declare-fun m!1240813 () Bool)

(assert (=> b!1090400 m!1240813))

(declare-fun m!1240815 () Bool)

(assert (=> b!1090405 m!1240815))

(assert (=> b!1090405 m!1240815))

(declare-fun m!1240817 () Bool)

(assert (=> b!1090405 m!1240817))

(declare-fun m!1240819 () Bool)

(assert (=> b!1090405 m!1240819))

(declare-fun m!1240821 () Bool)

(assert (=> b!1090399 m!1240821))

(assert (=> b!1090399 m!1240821))

(declare-fun m!1240823 () Bool)

(assert (=> b!1090399 m!1240823))

(declare-fun m!1240825 () Bool)

(assert (=> b!1090392 m!1240825))

(declare-fun m!1240827 () Bool)

(assert (=> b!1090398 m!1240827))

(declare-fun m!1240829 () Bool)

(assert (=> start!93232 m!1240829))

(declare-fun m!1240831 () Bool)

(assert (=> start!93232 m!1240831))

(declare-fun m!1240833 () Bool)

(assert (=> b!1090406 m!1240833))

(assert (=> b!1090406 m!1240833))

(declare-fun m!1240835 () Bool)

(assert (=> b!1090406 m!1240835))

(assert (=> b!1090401 m!1240833))

(declare-fun m!1240837 () Bool)

(assert (=> b!1090401 m!1240837))

(declare-fun m!1240839 () Bool)

(assert (=> b!1090401 m!1240839))

(declare-fun m!1240841 () Bool)

(assert (=> b!1090401 m!1240841))

(declare-fun m!1240843 () Bool)

(assert (=> b!1090401 m!1240843))

(declare-fun m!1240845 () Bool)

(assert (=> b!1090394 m!1240845))

(declare-fun m!1240847 () Bool)

(assert (=> b!1090394 m!1240847))

(declare-fun m!1240849 () Bool)

(assert (=> b!1090394 m!1240849))

(declare-fun m!1240851 () Bool)

(assert (=> b!1090394 m!1240851))

(declare-fun m!1240853 () Bool)

(assert (=> b!1090394 m!1240853))

(declare-fun m!1240855 () Bool)

(assert (=> b!1090402 m!1240855))

(declare-fun m!1240857 () Bool)

(assert (=> b!1090397 m!1240857))

(assert (=> b!1090397 m!1240857))

(declare-fun m!1240859 () Bool)

(assert (=> b!1090397 m!1240859))

(push 1)

(assert (not b!1090416))

(assert (not b!1090392))

(assert (not b!1090401))

(assert (not b!1090399))

(assert (not b!1090418))

(assert (not b!1090406))

(assert (not b!1090402))

(assert (not b!1090397))

(assert (not b!1090394))

(assert (not b!1090403))

(assert (not b!1090398))

(assert (not b!1090415))

(assert (not start!93232))

(assert (not b!1090400))

(assert (not b!1090407))

(assert (not b!1090414))

(assert (not b!1090417))

(assert (not b!1090405))

(assert (not b!1090395))

(assert (not b!1090419))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!306681 () Bool)

(declare-fun res!484640 () Bool)

(declare-fun e!689973 () Bool)

(assert (=> d!306681 (=> res!484640 e!689973)))

(assert (=> d!306681 (= res!484640 (is-Nil!10438 lt!364805))))

(assert (=> d!306681 (= (forall!2318 lt!364805 lambda!41016) e!689973)))

(declare-fun b!1090484 () Bool)

(declare-fun e!689974 () Bool)

(assert (=> b!1090484 (= e!689973 e!689974)))

(declare-fun res!484641 () Bool)

(assert (=> b!1090484 (=> (not res!484641) (not e!689974))))

(declare-fun dynLambda!4566 (Int tuple2!11680) Bool)

(assert (=> b!1090484 (= res!484641 (dynLambda!4566 lambda!41016 (h!15839 lt!364805)))))

(declare-fun b!1090485 () Bool)

(assert (=> b!1090485 (= e!689974 (forall!2318 (t!101670 lt!364805) lambda!41016))))

(assert (= (and d!306681 (not res!484640)) b!1090484))

(assert (= (and b!1090484 res!484641) b!1090485))

(declare-fun b_lambda!30499 () Bool)

(assert (=> (not b_lambda!30499) (not b!1090484)))

(declare-fun m!1240915 () Bool)

(assert (=> b!1090484 m!1240915))

(declare-fun m!1240917 () Bool)

(assert (=> b!1090485 m!1240917))

(assert (=> b!1090392 d!306681))

(declare-fun d!306683 () Bool)

(declare-fun lt!364866 () Bool)

(assert (=> d!306683 (= lt!364866 (contains!1750 (list!3741 lt!364817) lt!364804))))

(declare-fun contains!1753 (Conc!3160 tuple2!11680) Bool)

(assert (=> d!306683 (= lt!364866 (contains!1753 (c!184760 lt!364817) lt!364804))))

(assert (=> d!306683 (= (contains!1749 lt!364817 lt!364804) lt!364866)))

(declare-fun bs!257881 () Bool)

(assert (= bs!257881 d!306683))

(assert (=> bs!257881 m!1240857))

(assert (=> bs!257881 m!1240857))

(declare-fun m!1240919 () Bool)

(assert (=> bs!257881 m!1240919))

(declare-fun m!1240921 () Bool)

(assert (=> bs!257881 m!1240921))

(assert (=> b!1090403 d!306683))

(declare-fun d!306687 () Bool)

(declare-fun e!689977 () Bool)

(assert (=> d!306687 e!689977))

(declare-fun res!484644 () Bool)

(assert (=> d!306687 (=> (not res!484644) (not e!689977))))

(declare-fun isBalanced!879 (Conc!3160) Bool)

(declare-fun filter!220 (Conc!3160 Int) Conc!3160)

(assert (=> d!306687 (= res!484644 (isBalanced!879 (filter!220 (c!184760 objs!8) lambda!41016)))))

(declare-fun lt!364872 () BalanceConc!6334)

(assert (=> d!306687 (= lt!364872 (BalanceConc!6335 (filter!220 (c!184760 objs!8) lambda!41016)))))

(assert (=> d!306687 (= (filter!216 objs!8 lambda!41016) lt!364872)))

(declare-fun b!1090488 () Bool)

(assert (=> b!1090488 (= e!689977 (= (list!3741 lt!364872) (filter!217 (list!3741 objs!8) lambda!41016)))))

(assert (= (and d!306687 res!484644) b!1090488))

(declare-fun m!1240927 () Bool)

(assert (=> d!306687 m!1240927))

(assert (=> d!306687 m!1240927))

(declare-fun m!1240929 () Bool)

(assert (=> d!306687 m!1240929))

(declare-fun m!1240931 () Bool)

(assert (=> b!1090488 m!1240931))

(assert (=> b!1090488 m!1240833))

(assert (=> b!1090488 m!1240833))

(declare-fun m!1240933 () Bool)

(assert (=> b!1090488 m!1240933))

(assert (=> b!1090394 d!306687))

(declare-fun d!306691 () Bool)

(declare-fun lt!364878 () tuple2!11680)

(declare-fun apply!2030 (List!10454 Int) tuple2!11680)

(assert (=> d!306691 (= lt!364878 (apply!2030 (list!3741 objs!8) (ite (>= lt!364812 0) (div lt!364812 2) (- (div (- lt!364812) 2)))))))

(declare-fun apply!2031 (Conc!3160 Int) tuple2!11680)

(assert (=> d!306691 (= lt!364878 (apply!2031 (c!184760 objs!8) (ite (>= lt!364812 0) (div lt!364812 2) (- (div (- lt!364812) 2)))))))

(declare-fun e!689986 () Bool)

(assert (=> d!306691 e!689986))

(declare-fun res!484653 () Bool)

(assert (=> d!306691 (=> (not res!484653) (not e!689986))))

(assert (=> d!306691 (= res!484653 (<= 0 (ite (>= lt!364812 0) (div lt!364812 2) (- (div (- lt!364812) 2)))))))

(assert (=> d!306691 (= (apply!2028 objs!8 (ite (>= lt!364812 0) (div lt!364812 2) (- (div (- lt!364812) 2)))) lt!364878)))

(declare-fun b!1090497 () Bool)

(assert (=> b!1090497 (= e!689986 (< (ite (>= lt!364812 0) (div lt!364812 2) (- (div (- lt!364812) 2))) (size!8066 objs!8)))))

(assert (= (and d!306691 res!484653) b!1090497))

(assert (=> d!306691 m!1240833))

(assert (=> d!306691 m!1240833))

(declare-fun m!1240935 () Bool)

(assert (=> d!306691 m!1240935))

(declare-fun m!1240937 () Bool)

(assert (=> d!306691 m!1240937))

(assert (=> b!1090497 m!1240809))

(assert (=> b!1090394 d!306691))

(declare-fun d!306693 () Bool)

(declare-fun lt!364879 () Bool)

(assert (=> d!306693 (= lt!364879 (contains!1750 (list!3741 objs!8) lt!364804))))

(assert (=> d!306693 (= lt!364879 (contains!1753 (c!184760 objs!8) lt!364804))))

(assert (=> d!306693 (= (contains!1749 objs!8 lt!364804) lt!364879)))

(declare-fun bs!257883 () Bool)

(assert (= bs!257883 d!306693))

(assert (=> bs!257883 m!1240833))

(assert (=> bs!257883 m!1240833))

(declare-fun m!1240943 () Bool)

(assert (=> bs!257883 m!1240943))

(declare-fun m!1240945 () Bool)

(assert (=> bs!257883 m!1240945))

(assert (=> b!1090394 d!306693))

(declare-fun d!306695 () Bool)

(declare-fun e!689987 () Bool)

(assert (=> d!306695 e!689987))

(declare-fun res!484654 () Bool)

(assert (=> d!306695 (=> (not res!484654) (not e!689987))))

(assert (=> d!306695 (= res!484654 (isBalanced!879 (filter!220 (c!184760 objs!8) lambda!41015)))))

(declare-fun lt!364880 () BalanceConc!6334)

(assert (=> d!306695 (= lt!364880 (BalanceConc!6335 (filter!220 (c!184760 objs!8) lambda!41015)))))

(assert (=> d!306695 (= (filter!216 objs!8 lambda!41015) lt!364880)))

(declare-fun b!1090498 () Bool)

(assert (=> b!1090498 (= e!689987 (= (list!3741 lt!364880) (filter!217 (list!3741 objs!8) lambda!41015)))))

(assert (= (and d!306695 res!484654) b!1090498))

(declare-fun m!1240949 () Bool)

(assert (=> d!306695 m!1240949))

(assert (=> d!306695 m!1240949))

(declare-fun m!1240951 () Bool)

(assert (=> d!306695 m!1240951))

(declare-fun m!1240953 () Bool)

(assert (=> b!1090498 m!1240953))

(assert (=> b!1090498 m!1240833))

(assert (=> b!1090498 m!1240833))

(declare-fun m!1240955 () Bool)

(assert (=> b!1090498 m!1240955))

(assert (=> b!1090394 d!306695))

(declare-fun d!306699 () Bool)

(declare-fun e!689988 () Bool)

(assert (=> d!306699 e!689988))

(declare-fun res!484655 () Bool)

(assert (=> d!306699 (=> (not res!484655) (not e!689988))))

(assert (=> d!306699 (= res!484655 (isBalanced!879 (filter!220 (c!184760 objs!8) lambda!41014)))))

(declare-fun lt!364881 () BalanceConc!6334)

(assert (=> d!306699 (= lt!364881 (BalanceConc!6335 (filter!220 (c!184760 objs!8) lambda!41014)))))

(assert (=> d!306699 (= (filter!216 objs!8 lambda!41014) lt!364881)))

(declare-fun b!1090499 () Bool)

(assert (=> b!1090499 (= e!689988 (= (list!3741 lt!364881) (filter!217 (list!3741 objs!8) lambda!41014)))))

(assert (= (and d!306699 res!484655) b!1090499))

(declare-fun m!1240957 () Bool)

(assert (=> d!306699 m!1240957))

(assert (=> d!306699 m!1240957))

(declare-fun m!1240959 () Bool)

(assert (=> d!306699 m!1240959))

(declare-fun m!1240961 () Bool)

(assert (=> b!1090499 m!1240961))

(assert (=> b!1090499 m!1240833))

(assert (=> b!1090499 m!1240833))

(declare-fun m!1240963 () Bool)

(assert (=> b!1090499 m!1240963))

(assert (=> b!1090394 d!306699))

(declare-fun d!306701 () Bool)

(declare-fun lt!364882 () Bool)

(assert (=> d!306701 (= lt!364882 (contains!1750 (list!3741 lt!364806) lt!364804))))

(assert (=> d!306701 (= lt!364882 (contains!1753 (c!184760 lt!364806) lt!364804))))

(assert (=> d!306701 (= (contains!1749 lt!364806 lt!364804) lt!364882)))

(declare-fun bs!257884 () Bool)

(assert (= bs!257884 d!306701))

(assert (=> bs!257884 m!1240821))

(assert (=> bs!257884 m!1240821))

(declare-fun m!1240965 () Bool)

(assert (=> bs!257884 m!1240965))

(declare-fun m!1240967 () Bool)

(assert (=> bs!257884 m!1240967))

(assert (=> b!1090400 d!306701))

(declare-fun d!306703 () Bool)

(declare-fun list!3743 (Conc!3160) List!10454)

(assert (=> d!306703 (= (list!3741 objs!8) (list!3743 (c!184760 objs!8)))))

(declare-fun bs!257885 () Bool)

(assert (= bs!257885 d!306703))

(declare-fun m!1240969 () Bool)

(assert (=> bs!257885 m!1240969))

(assert (=> b!1090401 d!306703))

(declare-fun d!306705 () Bool)

(declare-fun lt!364887 () Bool)

(assert (=> d!306705 (= lt!364887 (forall!2318 (list!3741 objs!8) lambda!41014))))

(declare-fun forall!2322 (Conc!3160 Int) Bool)

(assert (=> d!306705 (= lt!364887 (forall!2322 (c!184760 objs!8) lambda!41014))))

(assert (=> d!306705 (= (forall!2319 objs!8 lambda!41014) lt!364887)))

(declare-fun bs!257886 () Bool)

(assert (= bs!257886 d!306705))

(assert (=> bs!257886 m!1240833))

(assert (=> bs!257886 m!1240833))

(declare-fun m!1240971 () Bool)

(assert (=> bs!257886 m!1240971))

(declare-fun m!1240973 () Bool)

(assert (=> bs!257886 m!1240973))

(assert (=> b!1090401 d!306705))

(declare-fun d!306707 () Bool)

(declare-fun e!689994 () Bool)

(assert (=> d!306707 e!689994))

(declare-fun res!484661 () Bool)

(assert (=> d!306707 (=> res!484661 e!689994)))

(assert (=> d!306707 (= res!484661 (isEmpty!6647 lt!364805))))

(declare-fun lt!364891 () Unit!15820)

(declare-fun choose!6999 (List!10454 Int) Unit!15820)

(assert (=> d!306707 (= lt!364891 (choose!6999 lt!364805 lambda!41014))))

(assert (=> d!306707 (not (forall!2318 lt!364805 lambda!41014))))

(assert (=> d!306707 (= (lemmaNotForallFilterShorter!20 lt!364805 lambda!41014) lt!364891)))

(declare-fun b!1090505 () Bool)

(assert (=> b!1090505 (= e!689994 (< (size!8067 (filter!217 lt!364805 lambda!41014)) (size!8067 lt!364805)))))

(assert (= (and d!306707 (not res!484661)) b!1090505))

(assert (=> d!306707 m!1240841))

(declare-fun m!1240983 () Bool)

(assert (=> d!306707 m!1240983))

(declare-fun m!1240985 () Bool)

(assert (=> d!306707 m!1240985))

(assert (=> b!1090505 m!1240815))

(assert (=> b!1090505 m!1240815))

(assert (=> b!1090505 m!1240817))

(assert (=> b!1090505 m!1240819))

(assert (=> b!1090401 d!306707))

(declare-fun d!306711 () Bool)

(assert (=> d!306711 (= (isEmpty!6647 lt!364805) (is-Nil!10438 lt!364805))))

(assert (=> b!1090401 d!306711))

(declare-fun d!306713 () Bool)

(declare-fun lt!364894 () Int)

(assert (=> d!306713 (= lt!364894 (size!8067 (list!3741 lt!364806)))))

(declare-fun size!8071 (Conc!3160) Int)

(assert (=> d!306713 (= lt!364894 (size!8071 (c!184760 lt!364806)))))

(assert (=> d!306713 (= (size!8066 lt!364806) lt!364894)))

(declare-fun bs!257887 () Bool)

(assert (= bs!257887 d!306713))

(assert (=> bs!257887 m!1240821))

(assert (=> bs!257887 m!1240821))

(declare-fun m!1240987 () Bool)

(assert (=> bs!257887 m!1240987))

(declare-fun m!1240989 () Bool)

(assert (=> bs!257887 m!1240989))

(assert (=> b!1090401 d!306713))

(declare-fun d!306715 () Bool)

(declare-fun c!184777 () Bool)

(assert (=> d!306715 (= c!184777 (is-Node!3160 (c!184760 objs!8)))))

(declare-fun e!689999 () Bool)

(assert (=> d!306715 (= (inv!13370 (c!184760 objs!8)) e!689999)))

(declare-fun b!1090512 () Bool)

(declare-fun inv!13373 (Conc!3160) Bool)

(assert (=> b!1090512 (= e!689999 (inv!13373 (c!184760 objs!8)))))

(declare-fun b!1090513 () Bool)

(declare-fun e!690000 () Bool)

(assert (=> b!1090513 (= e!689999 e!690000)))

(declare-fun res!484664 () Bool)

(assert (=> b!1090513 (= res!484664 (not (is-Leaf!5055 (c!184760 objs!8))))))

(assert (=> b!1090513 (=> res!484664 e!690000)))

(declare-fun b!1090514 () Bool)

(declare-fun inv!13374 (Conc!3160) Bool)

(assert (=> b!1090514 (= e!690000 (inv!13374 (c!184760 objs!8)))))

(assert (= (and d!306715 c!184777) b!1090512))

(assert (= (and d!306715 (not c!184777)) b!1090513))

(assert (= (and b!1090513 (not res!484664)) b!1090514))

(declare-fun m!1240993 () Bool)

(assert (=> b!1090512 m!1240993))

(declare-fun m!1240995 () Bool)

(assert (=> b!1090514 m!1240995))

(assert (=> b!1090402 d!306715))

(declare-fun d!306719 () Bool)

(assert (=> d!306719 (dynLambda!4566 lambda!41016 lt!364804)))

(declare-fun lt!364897 () Unit!15820)

(declare-fun choose!7000 (List!10454 Int tuple2!11680) Unit!15820)

(assert (=> d!306719 (= lt!364897 (choose!7000 (list!3741 lt!364817) lambda!41016 lt!364804))))

(declare-fun e!690003 () Bool)

(assert (=> d!306719 e!690003))

(declare-fun res!484667 () Bool)

(assert (=> d!306719 (=> (not res!484667) (not e!690003))))

(assert (=> d!306719 (= res!484667 (forall!2318 (list!3741 lt!364817) lambda!41016))))

(assert (=> d!306719 (= (forallContained!479 (list!3741 lt!364817) lambda!41016 lt!364804) lt!364897)))

(declare-fun b!1090517 () Bool)

(assert (=> b!1090517 (= e!690003 (contains!1750 (list!3741 lt!364817) lt!364804))))

(assert (= (and d!306719 res!484667) b!1090517))

(declare-fun b_lambda!30503 () Bool)

(assert (=> (not b_lambda!30503) (not d!306719)))

(declare-fun m!1240997 () Bool)

(assert (=> d!306719 m!1240997))

(assert (=> d!306719 m!1240857))

(declare-fun m!1240999 () Bool)

(assert (=> d!306719 m!1240999))

(assert (=> d!306719 m!1240857))

(declare-fun m!1241001 () Bool)

(assert (=> d!306719 m!1241001))

(assert (=> b!1090517 m!1240857))

(assert (=> b!1090517 m!1240919))

(assert (=> b!1090397 d!306719))

(declare-fun d!306721 () Bool)

(assert (=> d!306721 (= (list!3741 lt!364817) (list!3743 (c!184760 lt!364817)))))

(declare-fun bs!257889 () Bool)

(assert (= bs!257889 d!306721))

(declare-fun m!1241003 () Bool)

(assert (=> bs!257889 m!1241003))

(assert (=> b!1090397 d!306721))

(declare-fun d!306723 () Bool)

(declare-fun lt!364900 () Bool)

(declare-fun content!1507 (List!10454) (Set tuple2!11680))

(assert (=> d!306723 (= lt!364900 (set.member lt!364804 (content!1507 lt!364805)))))

(declare-fun e!690008 () Bool)

(assert (=> d!306723 (= lt!364900 e!690008)))

(declare-fun res!484672 () Bool)

(assert (=> d!306723 (=> (not res!484672) (not e!690008))))

(assert (=> d!306723 (= res!484672 (is-Cons!10438 lt!364805))))

(assert (=> d!306723 (= (contains!1750 lt!364805 lt!364804) lt!364900)))

(declare-fun b!1090522 () Bool)

(declare-fun e!690009 () Bool)

(assert (=> b!1090522 (= e!690008 e!690009)))

(declare-fun res!484673 () Bool)

(assert (=> b!1090522 (=> res!484673 e!690009)))

(assert (=> b!1090522 (= res!484673 (= (h!15839 lt!364805) lt!364804))))

(declare-fun b!1090523 () Bool)

(assert (=> b!1090523 (= e!690009 (contains!1750 (t!101670 lt!364805) lt!364804))))

(assert (= (and d!306723 res!484672) b!1090522))

(assert (= (and b!1090522 (not res!484673)) b!1090523))

(declare-fun m!1241005 () Bool)

(assert (=> d!306723 m!1241005))

(declare-fun m!1241007 () Bool)

(assert (=> d!306723 m!1241007))

(declare-fun m!1241009 () Bool)

(assert (=> b!1090523 m!1241009))

(assert (=> b!1090398 d!306723))

(declare-fun d!306725 () Bool)

(assert (=> d!306725 (dynLambda!4566 lambda!41014 lt!364804)))

(declare-fun lt!364901 () Unit!15820)

(assert (=> d!306725 (= lt!364901 (choose!7000 (list!3741 lt!364806) lambda!41014 lt!364804))))

(declare-fun e!690010 () Bool)

(assert (=> d!306725 e!690010))

(declare-fun res!484674 () Bool)

(assert (=> d!306725 (=> (not res!484674) (not e!690010))))

(assert (=> d!306725 (= res!484674 (forall!2318 (list!3741 lt!364806) lambda!41014))))

(assert (=> d!306725 (= (forallContained!479 (list!3741 lt!364806) lambda!41014 lt!364804) lt!364901)))

(declare-fun b!1090524 () Bool)

(assert (=> b!1090524 (= e!690010 (contains!1750 (list!3741 lt!364806) lt!364804))))

(assert (= (and d!306725 res!484674) b!1090524))

(declare-fun b_lambda!30505 () Bool)

(assert (=> (not b_lambda!30505) (not d!306725)))

(declare-fun m!1241011 () Bool)

(assert (=> d!306725 m!1241011))

(assert (=> d!306725 m!1240821))

(declare-fun m!1241013 () Bool)

(assert (=> d!306725 m!1241013))

(assert (=> d!306725 m!1240821))

(declare-fun m!1241015 () Bool)

(assert (=> d!306725 m!1241015))

(assert (=> b!1090524 m!1240821))

(assert (=> b!1090524 m!1240965))

(assert (=> b!1090399 d!306725))

(declare-fun d!306727 () Bool)

(assert (=> d!306727 (= (list!3741 lt!364806) (list!3743 (c!184760 lt!364806)))))

(declare-fun bs!257890 () Bool)

(assert (= bs!257890 d!306727))

(declare-fun m!1241017 () Bool)

(assert (=> bs!257890 m!1241017))

(assert (=> b!1090399 d!306727))

(declare-fun d!306729 () Bool)

(declare-fun lt!364904 () Int)

(assert (=> d!306729 (>= lt!364904 0)))

(declare-fun e!690013 () Int)

(assert (=> d!306729 (= lt!364904 e!690013)))

(declare-fun c!184781 () Bool)

(assert (=> d!306729 (= c!184781 (is-Nil!10438 (filter!217 lt!364805 lambda!41014)))))

(assert (=> d!306729 (= (size!8067 (filter!217 lt!364805 lambda!41014)) lt!364904)))

(declare-fun b!1090529 () Bool)

(assert (=> b!1090529 (= e!690013 0)))

(declare-fun b!1090530 () Bool)

(assert (=> b!1090530 (= e!690013 (+ 1 (size!8067 (t!101670 (filter!217 lt!364805 lambda!41014)))))))

(assert (= (and d!306729 c!184781) b!1090529))

(assert (= (and d!306729 (not c!184781)) b!1090530))

(declare-fun m!1241019 () Bool)

(assert (=> b!1090530 m!1241019))

(assert (=> b!1090405 d!306729))

(declare-fun b!1090546 () Bool)

(declare-fun e!690025 () List!10454)

(assert (=> b!1090546 (= e!690025 Nil!10438)))

(declare-fun bm!80242 () Bool)

(declare-fun call!80247 () List!10454)

(assert (=> bm!80242 (= call!80247 (filter!217 (t!101670 lt!364805) lambda!41014))))

(declare-fun b!1090547 () Bool)

(declare-fun res!484682 () Bool)

(declare-fun e!690023 () Bool)

(assert (=> b!1090547 (=> (not res!484682) (not e!690023))))

(declare-fun lt!364910 () List!10454)

(assert (=> b!1090547 (= res!484682 (set.subset (content!1507 lt!364910) (content!1507 lt!364805)))))

(declare-fun b!1090548 () Bool)

(declare-fun e!690024 () List!10454)

(assert (=> b!1090548 (= e!690024 call!80247)))

(declare-fun b!1090549 () Bool)

(assert (=> b!1090549 (= e!690025 e!690024)))

(declare-fun c!184787 () Bool)

(assert (=> b!1090549 (= c!184787 (dynLambda!4566 lambda!41014 (h!15839 lt!364805)))))

(declare-fun d!306731 () Bool)

(assert (=> d!306731 e!690023))

(declare-fun res!484683 () Bool)

(assert (=> d!306731 (=> (not res!484683) (not e!690023))))

(assert (=> d!306731 (= res!484683 (<= (size!8067 lt!364910) (size!8067 lt!364805)))))

(assert (=> d!306731 (= lt!364910 e!690025)))

(declare-fun c!184786 () Bool)

(assert (=> d!306731 (= c!184786 (is-Nil!10438 lt!364805))))

(assert (=> d!306731 (= (filter!217 lt!364805 lambda!41014) lt!364910)))

(declare-fun b!1090550 () Bool)

(assert (=> b!1090550 (= e!690024 (Cons!10438 (h!15839 lt!364805) call!80247))))

(declare-fun b!1090551 () Bool)

(assert (=> b!1090551 (= e!690023 (forall!2318 lt!364910 lambda!41014))))

(assert (= (and d!306731 c!184786) b!1090546))

(assert (= (and d!306731 (not c!184786)) b!1090549))

(assert (= (and b!1090549 c!184787) b!1090550))

(assert (= (and b!1090549 (not c!184787)) b!1090548))

(assert (= (or b!1090550 b!1090548) bm!80242))

(assert (= (and d!306731 res!484683) b!1090547))

(assert (= (and b!1090547 res!484682) b!1090551))

(declare-fun b_lambda!30507 () Bool)

(assert (=> (not b_lambda!30507) (not b!1090549)))

(declare-fun m!1241029 () Bool)

(assert (=> b!1090549 m!1241029))

(declare-fun m!1241031 () Bool)

(assert (=> d!306731 m!1241031))

(assert (=> d!306731 m!1240819))

(declare-fun m!1241035 () Bool)

(assert (=> b!1090551 m!1241035))

(declare-fun m!1241037 () Bool)

(assert (=> bm!80242 m!1241037))

(declare-fun m!1241039 () Bool)

(assert (=> b!1090547 m!1241039))

(assert (=> b!1090547 m!1241005))

(assert (=> b!1090405 d!306731))

(declare-fun d!306735 () Bool)

(declare-fun lt!364912 () Int)

(assert (=> d!306735 (>= lt!364912 0)))

(declare-fun e!690027 () Int)

(assert (=> d!306735 (= lt!364912 e!690027)))

(declare-fun c!184788 () Bool)

(assert (=> d!306735 (= c!184788 (is-Nil!10438 lt!364805))))

(assert (=> d!306735 (= (size!8067 lt!364805) lt!364912)))

(declare-fun b!1090553 () Bool)

(assert (=> b!1090553 (= e!690027 0)))

(declare-fun b!1090554 () Bool)

(assert (=> b!1090554 (= e!690027 (+ 1 (size!8067 (t!101670 lt!364805))))))

(assert (= (and d!306735 c!184788) b!1090553))

(assert (= (and d!306735 (not c!184788)) b!1090554))

(declare-fun m!1241045 () Bool)

(assert (=> b!1090554 m!1241045))

(assert (=> b!1090405 d!306735))

(declare-fun d!306737 () Bool)

(assert (=> d!306737 (dynLambda!4566 lambda!41014 lt!364804)))

(declare-fun lt!364913 () Unit!15820)

(assert (=> d!306737 (= lt!364913 (choose!7000 (list!3741 objs!8) lambda!41014 lt!364804))))

(declare-fun e!690028 () Bool)

(assert (=> d!306737 e!690028))

(declare-fun res!484685 () Bool)

(assert (=> d!306737 (=> (not res!484685) (not e!690028))))

(assert (=> d!306737 (= res!484685 (forall!2318 (list!3741 objs!8) lambda!41014))))

(assert (=> d!306737 (= (forallContained!479 (list!3741 objs!8) lambda!41014 lt!364804) lt!364913)))

(declare-fun b!1090555 () Bool)

(assert (=> b!1090555 (= e!690028 (contains!1750 (list!3741 objs!8) lt!364804))))

(assert (= (and d!306737 res!484685) b!1090555))

(declare-fun b_lambda!30509 () Bool)

(assert (=> (not b_lambda!30509) (not d!306737)))

(assert (=> d!306737 m!1241011))

(assert (=> d!306737 m!1240833))

(declare-fun m!1241049 () Bool)

(assert (=> d!306737 m!1241049))

(assert (=> d!306737 m!1240833))

(assert (=> d!306737 m!1240971))

(assert (=> b!1090555 m!1240833))

(assert (=> b!1090555 m!1240943))

(assert (=> b!1090406 d!306737))

(assert (=> b!1090406 d!306703))

(declare-fun d!306741 () Bool)

(declare-fun lt!364915 () Bool)

(assert (=> d!306741 (= lt!364915 (forall!2318 (list!3741 objs!8) lambda!41016))))

(assert (=> d!306741 (= lt!364915 (forall!2322 (c!184760 objs!8) lambda!41016))))

(assert (=> d!306741 (= (forall!2319 objs!8 lambda!41016) lt!364915)))

(declare-fun bs!257891 () Bool)

(assert (= bs!257891 d!306741))

(assert (=> bs!257891 m!1240833))

(assert (=> bs!257891 m!1240833))

(declare-fun m!1241053 () Bool)

(assert (=> bs!257891 m!1241053))

(declare-fun m!1241055 () Bool)

(assert (=> bs!257891 m!1241055))

(assert (=> b!1090395 d!306741))

(declare-fun d!306743 () Bool)

(declare-fun lt!364916 () Bool)

(assert (=> d!306743 (= lt!364916 (forall!2318 (list!3741 objs!8) lambda!41013))))

(assert (=> d!306743 (= lt!364916 (forall!2322 (c!184760 objs!8) lambda!41013))))

(assert (=> d!306743 (= (forall!2319 objs!8 lambda!41013) lt!364916)))

(declare-fun bs!257892 () Bool)

(assert (= bs!257892 d!306743))

(assert (=> bs!257892 m!1240833))

(assert (=> bs!257892 m!1240833))

(declare-fun m!1241061 () Bool)

(assert (=> bs!257892 m!1241061))

(declare-fun m!1241063 () Bool)

(assert (=> bs!257892 m!1241063))

(assert (=> start!93232 d!306743))

(declare-fun d!306745 () Bool)

(assert (=> d!306745 (= (inv!13369 objs!8) (isBalanced!879 (c!184760 objs!8)))))

(declare-fun bs!257893 () Bool)

(assert (= bs!257893 d!306745))

(declare-fun m!1241067 () Bool)

(assert (=> bs!257893 m!1241067))

(assert (=> start!93232 d!306745))

(declare-fun d!306749 () Bool)

(declare-fun lt!364917 () Int)

(assert (=> d!306749 (= lt!364917 (size!8067 (list!3741 objs!8)))))

(assert (=> d!306749 (= lt!364917 (size!8071 (c!184760 objs!8)))))

(assert (=> d!306749 (= (size!8066 objs!8) lt!364917)))

(declare-fun bs!257894 () Bool)

(assert (= bs!257894 d!306749))

(assert (=> bs!257894 m!1240833))

(assert (=> bs!257894 m!1240833))

(declare-fun m!1241069 () Bool)

(assert (=> bs!257894 m!1241069))

(declare-fun m!1241071 () Bool)

(assert (=> bs!257894 m!1241071))

(assert (=> b!1090407 d!306749))

(declare-fun b!1090567 () Bool)

(declare-fun e!690038 () Bool)

(assert (=> b!1090567 (= e!690038 true)))

(declare-fun b!1090566 () Bool)

(declare-fun e!690037 () Bool)

(assert (=> b!1090566 (= e!690037 e!690038)))

(declare-fun b!1090565 () Bool)

(declare-fun e!690036 () Bool)

(assert (=> b!1090565 (= e!690036 e!690037)))

(assert (=> b!1090414 e!690036))

(assert (= b!1090566 b!1090567))

(assert (= b!1090565 b!1090566))

(assert (= (and b!1090414 (is-Cons!10437 (rules!9064 (_2!6666 lt!364804)))) b!1090565))

(declare-fun order!6273 () Int)

(declare-fun order!6275 () Int)

(declare-fun dynLambda!4567 (Int Int) Int)

(declare-fun dynLambda!4568 (Int Int) Int)

(assert (=> b!1090567 (< (dynLambda!4567 order!6273 (toValue!2854 (transformation!1777 (h!15838 (rules!9064 (_2!6666 lt!364804)))))) (dynLambda!4568 order!6275 lambda!41014))))

(declare-fun order!6277 () Int)

(declare-fun dynLambda!4569 (Int Int) Int)

(assert (=> b!1090567 (< (dynLambda!4569 order!6277 (toChars!2713 (transformation!1777 (h!15838 (rules!9064 (_2!6666 lt!364804)))))) (dynLambda!4568 order!6275 lambda!41014))))

(declare-fun b!1090570 () Bool)

(declare-fun e!690041 () Bool)

(assert (=> b!1090570 (= e!690041 true)))

(declare-fun b!1090569 () Bool)

(declare-fun e!690040 () Bool)

(assert (=> b!1090569 (= e!690040 e!690041)))

(declare-fun b!1090568 () Bool)

(declare-fun e!690039 () Bool)

(assert (=> b!1090568 (= e!690039 e!690040)))

(assert (=> b!1090416 e!690039))

(assert (= b!1090569 b!1090570))

(assert (= b!1090568 b!1090569))

(assert (= (and b!1090416 (is-Cons!10437 (rules!9064 (_2!6666 lt!364804)))) b!1090568))

(assert (=> b!1090570 (< (dynLambda!4567 order!6273 (toValue!2854 (transformation!1777 (h!15838 (rules!9064 (_2!6666 lt!364804)))))) (dynLambda!4568 order!6275 lambda!41015))))

(assert (=> b!1090570 (< (dynLambda!4569 order!6277 (toChars!2713 (transformation!1777 (h!15838 (rules!9064 (_2!6666 lt!364804)))))) (dynLambda!4568 order!6275 lambda!41015))))

(declare-fun b!1090573 () Bool)

(declare-fun e!690044 () Bool)

(assert (=> b!1090573 (= e!690044 true)))

(declare-fun b!1090572 () Bool)

(declare-fun e!690043 () Bool)

(assert (=> b!1090572 (= e!690043 e!690044)))

(declare-fun b!1090571 () Bool)

(declare-fun e!690042 () Bool)

(assert (=> b!1090571 (= e!690042 e!690043)))

(assert (=> b!1090418 e!690042))

(assert (= b!1090572 b!1090573))

(assert (= b!1090571 b!1090572))

(assert (= (and b!1090418 (is-Cons!10437 (rules!9064 (_2!6666 lt!364804)))) b!1090571))

(assert (=> b!1090573 (< (dynLambda!4567 order!6273 (toValue!2854 (transformation!1777 (h!15838 (rules!9064 (_2!6666 lt!364804)))))) (dynLambda!4568 order!6275 lambda!41016))))

(assert (=> b!1090573 (< (dynLambda!4569 order!6277 (toChars!2713 (transformation!1777 (h!15838 (rules!9064 (_2!6666 lt!364804)))))) (dynLambda!4568 order!6275 lambda!41016))))

(declare-fun b!1090582 () Bool)

(declare-fun e!690049 () Bool)

(assert (=> b!1090582 (= e!690049 true)))

(declare-fun b!1090584 () Bool)

(declare-fun e!690050 () Bool)

(assert (=> b!1090584 (= e!690050 true)))

(declare-fun b!1090583 () Bool)

(assert (=> b!1090583 (= e!690049 e!690050)))

(assert (=> b!1090419 e!690049))

(assert (= (and b!1090419 (is-Node!3159 (c!184759 (tokens!1336 (_2!6666 lt!364804))))) b!1090582))

(assert (= b!1090583 b!1090584))

(assert (= (and b!1090419 (is-Leaf!5054 (c!184759 (tokens!1336 (_2!6666 lt!364804))))) b!1090583))

(declare-fun b!1090585 () Bool)

(declare-fun e!690051 () Bool)

(assert (=> b!1090585 (= e!690051 true)))

(declare-fun b!1090587 () Bool)

(declare-fun e!690052 () Bool)

(assert (=> b!1090587 (= e!690052 true)))

(declare-fun b!1090586 () Bool)

(assert (=> b!1090586 (= e!690051 e!690052)))

(assert (=> b!1090415 e!690051))

(assert (= (and b!1090415 (is-Node!3159 (c!184759 (tokens!1336 (_2!6666 lt!364804))))) b!1090585))

(assert (= b!1090586 b!1090587))

(assert (= (and b!1090415 (is-Leaf!5054 (c!184759 (tokens!1336 (_2!6666 lt!364804))))) b!1090586))

(declare-fun b!1090588 () Bool)

(declare-fun e!690053 () Bool)

(assert (=> b!1090588 (= e!690053 true)))

(declare-fun b!1090590 () Bool)

(declare-fun e!690054 () Bool)

(assert (=> b!1090590 (= e!690054 true)))

(declare-fun b!1090589 () Bool)

(assert (=> b!1090589 (= e!690053 e!690054)))

(assert (=> b!1090417 e!690053))

(assert (= (and b!1090417 (is-Node!3159 (c!184759 (tokens!1336 (_2!6666 lt!364804))))) b!1090588))

(assert (= b!1090589 b!1090590))

(assert (= (and b!1090417 (is-Leaf!5054 (c!184759 (tokens!1336 (_2!6666 lt!364804))))) b!1090589))

(declare-fun b!1090599 () Bool)

(declare-fun tp!326422 () Bool)

(declare-fun tp!326421 () Bool)

(declare-fun e!690059 () Bool)

(assert (=> b!1090599 (= e!690059 (and (inv!13370 (left!8934 (c!184760 objs!8))) tp!326421 (inv!13370 (right!9264 (c!184760 objs!8))) tp!326422))))

(declare-fun b!1090601 () Bool)

(declare-fun e!690060 () Bool)

(declare-fun tp!326423 () Bool)

(assert (=> b!1090601 (= e!690060 tp!326423)))

(declare-fun b!1090600 () Bool)

(declare-fun inv!13375 (IArray!6325) Bool)

(assert (=> b!1090600 (= e!690059 (and (inv!13375 (xs!5853 (c!184760 objs!8))) e!690060))))

(assert (=> b!1090402 (= tp!326411 (and (inv!13370 (c!184760 objs!8)) e!690059))))

(assert (= (and b!1090402 (is-Node!3160 (c!184760 objs!8))) b!1090599))

(assert (= b!1090600 b!1090601))

(assert (= (and b!1090402 (is-Leaf!5055 (c!184760 objs!8))) b!1090600))

(declare-fun m!1241077 () Bool)

(assert (=> b!1090599 m!1241077))

(declare-fun m!1241079 () Bool)

(assert (=> b!1090599 m!1241079))

(declare-fun m!1241081 () Bool)

(assert (=> b!1090600 m!1241081))

(assert (=> b!1090402 m!1240855))

(declare-fun b_lambda!30511 () Bool)

(assert (= b_lambda!30505 (or b!1090394 b_lambda!30511)))

(declare-fun bs!257896 () Bool)

(declare-fun d!306753 () Bool)

(assert (= bs!257896 (and d!306753 b!1090394)))

(assert (=> bs!257896 (= (dynLambda!4566 lambda!41014 lt!364804) (< (_1!6666 lt!364804) (_1!6666 lt!364804)))))

(assert (=> d!306725 d!306753))

(declare-fun b_lambda!30513 () Bool)

(assert (= b_lambda!30499 (or b!1090394 b_lambda!30513)))

(declare-fun bs!257897 () Bool)

(declare-fun d!306755 () Bool)

(assert (= bs!257897 (and d!306755 b!1090394)))

(assert (=> bs!257897 (= (dynLambda!4566 lambda!41016 (h!15839 lt!364805)) (> (_1!6666 (h!15839 lt!364805)) (_1!6666 lt!364804)))))

(assert (=> b!1090484 d!306755))

(declare-fun b_lambda!30515 () Bool)

(assert (= b_lambda!30503 (or b!1090394 b_lambda!30515)))

(declare-fun bs!257898 () Bool)

(declare-fun d!306757 () Bool)

(assert (= bs!257898 (and d!306757 b!1090394)))

(assert (=> bs!257898 (= (dynLambda!4566 lambda!41016 lt!364804) (> (_1!6666 lt!364804) (_1!6666 lt!364804)))))

(assert (=> d!306719 d!306757))

(declare-fun b_lambda!30517 () Bool)

(assert (= b_lambda!30507 (or b!1090394 b_lambda!30517)))

(declare-fun bs!257899 () Bool)

(declare-fun d!306759 () Bool)

(assert (= bs!257899 (and d!306759 b!1090394)))

(assert (=> bs!257899 (= (dynLambda!4566 lambda!41014 (h!15839 lt!364805)) (< (_1!6666 (h!15839 lt!364805)) (_1!6666 lt!364804)))))

(assert (=> b!1090549 d!306759))

(declare-fun b_lambda!30519 () Bool)

(assert (= b_lambda!30509 (or b!1090394 b_lambda!30519)))

(assert (=> d!306737 d!306753))

(push 1)

(assert (not b!1090499))

(assert (not b!1090600))

(assert (not b!1090485))

(assert (not d!306719))

(assert (not d!306713))

(assert (not b!1090565))

(assert (not b!1090505))

(assert (not d!306693))

(assert (not d!306695))

(assert (not b!1090555))

(assert (not b_lambda!30511))

(assert (not b!1090587))

(assert (not d!306721))

(assert (not b!1090547))

(assert (not b_lambda!30515))

(assert (not d!306705))

(assert (not d!306683))

(assert (not b!1090582))

(assert (not b!1090514))

(assert (not b!1090523))

(assert (not b!1090530))

(assert (not b!1090571))

(assert (not b!1090554))

(assert (not b!1090568))

(assert (not b!1090585))

(assert (not d!306727))

(assert (not b!1090524))

(assert (not d!306687))

(assert (not d!306701))

(assert (not b!1090517))

(assert (not d!306737))

(assert (not d!306743))

(assert (not d!306699))

(assert (not b!1090584))

(assert (not d!306725))

(assert (not d!306745))

(assert (not bm!80242))

(assert (not d!306749))

(assert (not d!306703))

(assert (not d!306731))

(assert (not b!1090601))

(assert (not b!1090488))

(assert (not b!1090551))

(assert (not b!1090402))

(assert (not b!1090498))

(assert (not b!1090590))

(assert (not d!306723))

(assert (not b_lambda!30513))

(assert (not d!306741))

(assert (not b_lambda!30517))

(assert (not b!1090599))

(assert (not d!306707))

(assert (not d!306691))

(assert (not b!1090512))

(assert (not b!1090588))

(assert (not b_lambda!30519))

(assert (not b!1090497))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

