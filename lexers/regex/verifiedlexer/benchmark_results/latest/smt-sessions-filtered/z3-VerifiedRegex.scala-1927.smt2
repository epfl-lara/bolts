; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95238 () Bool)

(assert start!95238)

(declare-fun bs!259834 () Bool)

(declare-fun b!1104270 () Bool)

(assert (= bs!259834 (and b!1104270 start!95238)))

(declare-fun lambda!44016 () Int)

(declare-fun lambda!44015 () Int)

(assert (=> bs!259834 (not (= lambda!44016 lambda!44015))))

(declare-fun b!1104283 () Bool)

(declare-fun e!699702 () Bool)

(assert (=> b!1104283 (= e!699702 true)))

(declare-fun b!1104282 () Bool)

(declare-fun e!699701 () Bool)

(assert (=> b!1104282 (= e!699701 e!699702)))

(assert (=> b!1104270 e!699701))

(assert (= b!1104282 b!1104283))

(assert (= b!1104270 b!1104282))

(declare-fun lambda!44017 () Int)

(assert (=> bs!259834 (not (= lambda!44017 lambda!44015))))

(assert (=> b!1104270 (not (= lambda!44017 lambda!44016))))

(declare-fun b!1104285 () Bool)

(declare-fun e!699704 () Bool)

(assert (=> b!1104285 (= e!699704 true)))

(declare-fun b!1104284 () Bool)

(declare-fun e!699703 () Bool)

(assert (=> b!1104284 (= e!699703 e!699704)))

(assert (=> b!1104270 e!699703))

(assert (= b!1104284 b!1104285))

(assert (= b!1104270 b!1104284))

(declare-fun lambda!44018 () Int)

(assert (=> bs!259834 (not (= lambda!44018 lambda!44015))))

(assert (=> b!1104270 (not (= lambda!44018 lambda!44016))))

(assert (=> b!1104270 (not (= lambda!44018 lambda!44017))))

(declare-fun b!1104287 () Bool)

(declare-fun e!699706 () Bool)

(assert (=> b!1104287 (= e!699706 true)))

(declare-fun b!1104286 () Bool)

(declare-fun e!699705 () Bool)

(assert (=> b!1104286 (= e!699705 e!699706)))

(assert (=> b!1104270 e!699705))

(assert (= b!1104286 b!1104287))

(assert (= b!1104270 b!1104286))

(declare-fun b!1104257 () Bool)

(declare-fun e!699695 () Bool)

(declare-datatypes ((List!10719 0))(
  ( (Nil!10703) (Cons!10703 (h!16104 (_ BitVec 16)) (t!104651 List!10719)) )
))
(declare-datatypes ((TokenValue!1910 0))(
  ( (FloatLiteralValue!3820 (text!13815 List!10719)) (TokenValueExt!1909 (__x!7492 Int)) (Broken!9550 (value!60481 List!10719)) (Object!1925) (End!1910) (Def!1910) (Underscore!1910) (Match!1910) (Else!1910) (Error!1910) (Case!1910) (If!1910) (Extends!1910) (Abstract!1910) (Class!1910) (Val!1910) (DelimiterValue!3820 (del!1970 List!10719)) (KeywordValue!1916 (value!60482 List!10719)) (CommentValue!3820 (value!60483 List!10719)) (WhitespaceValue!3820 (value!60484 List!10719)) (IndentationValue!1910 (value!60485 List!10719)) (String!13119) (Int32!1910) (Broken!9551 (value!60486 List!10719)) (Boolean!1911) (Unit!16344) (OperatorValue!1913 (op!1970 List!10719)) (IdentifierValue!3820 (value!60487 List!10719)) (IdentifierValue!3821 (value!60488 List!10719)) (WhitespaceValue!3821 (value!60489 List!10719)) (True!3820) (False!3820) (Broken!9552 (value!60490 List!10719)) (Broken!9553 (value!60491 List!10719)) (True!3821) (RightBrace!1910) (RightBracket!1910) (Colon!1910) (Null!1910) (Comma!1910) (LeftBracket!1910) (False!3821) (LeftBrace!1910) (ImaginaryLiteralValue!1910 (text!13816 List!10719)) (StringLiteralValue!5730 (value!60492 List!10719)) (EOFValue!1910 (value!60493 List!10719)) (IdentValue!1910 (value!60494 List!10719)) (DelimiterValue!3821 (value!60495 List!10719)) (DedentValue!1910 (value!60496 List!10719)) (NewLineValue!1910 (value!60497 List!10719)) (IntegerValue!5730 (value!60498 (_ BitVec 32)) (text!13817 List!10719)) (IntegerValue!5731 (value!60499 Int) (text!13818 List!10719)) (Times!1910) (Or!1910) (Equal!1910) (Minus!1910) (Broken!9554 (value!60500 List!10719)) (And!1910) (Div!1910) (LessEqual!1910) (Mod!1910) (Concat!5023) (Not!1910) (Plus!1910) (SpaceValue!1910 (value!60501 List!10719)) (IntegerValue!5732 (value!60502 Int) (text!13819 List!10719)) (StringLiteralValue!5731 (text!13820 List!10719)) (FloatLiteralValue!3821 (text!13821 List!10719)) (BytesLiteralValue!1910 (value!60503 List!10719)) (CommentValue!3821 (value!60504 List!10719)) (StringLiteralValue!5732 (value!60505 List!10719)) (ErrorTokenValue!1910 (msg!1971 List!10719)) )
))
(declare-datatypes ((Regex!3113 0))(
  ( (ElementMatch!3113 (c!187462 (_ BitVec 16))) (Concat!5024 (regOne!6738 Regex!3113) (regTwo!6738 Regex!3113)) (EmptyExpr!3113) (Star!3113 (reg!3442 Regex!3113)) (EmptyLang!3113) (Union!3113 (regOne!6739 Regex!3113) (regTwo!6739 Regex!3113)) )
))
(declare-datatypes ((String!13120 0))(
  ( (String!13121 (value!60506 String)) )
))
(declare-datatypes ((IArray!6723 0))(
  ( (IArray!6724 (innerList!3419 List!10719)) )
))
(declare-datatypes ((Conc!3359 0))(
  ( (Node!3359 (left!9288 Conc!3359) (right!9618 Conc!3359) (csize!6948 Int) (cheight!3570 Int)) (Leaf!5287 (xs!6052 IArray!6723) (csize!6949 Int)) (Empty!3359) )
))
(declare-datatypes ((BalanceConc!6732 0))(
  ( (BalanceConc!6733 (c!187463 Conc!3359)) )
))
(declare-datatypes ((TokenValueInjection!3520 0))(
  ( (TokenValueInjection!3521 (toValue!2921 Int) (toChars!2780 Int)) )
))
(declare-datatypes ((Rule!3488 0))(
  ( (Rule!3489 (regex!1844 Regex!3113) (tag!2106 String!13120) (isSeparator!1844 Bool) (transformation!1844 TokenValueInjection!3520)) )
))
(declare-datatypes ((Token!3354 0))(
  ( (Token!3355 (value!60507 TokenValue!1910) (rule!3267 Rule!3488) (size!8322 Int) (originalCharacters!2400 List!10719)) )
))
(declare-datatypes ((List!10720 0))(
  ( (Nil!10704) (Cons!10704 (h!16105 Token!3354) (t!104652 List!10720)) )
))
(declare-datatypes ((IArray!6725 0))(
  ( (IArray!6726 (innerList!3420 List!10720)) )
))
(declare-datatypes ((Conc!3360 0))(
  ( (Node!3360 (left!9289 Conc!3360) (right!9619 Conc!3360) (csize!6950 Int) (cheight!3571 Int)) (Leaf!5288 (xs!6053 IArray!6725) (csize!6951 Int)) (Empty!3360) )
))
(declare-datatypes ((List!10721 0))(
  ( (Nil!10705) (Cons!10705 (h!16106 Rule!3488) (t!104653 List!10721)) )
))
(declare-datatypes ((BalanceConc!6734 0))(
  ( (BalanceConc!6735 (c!187464 Conc!3360)) )
))
(declare-datatypes ((PrintableTokens!404 0))(
  ( (PrintableTokens!405 (rules!9131 List!10721) (tokens!1403 BalanceConc!6734)) )
))
(declare-datatypes ((tuple2!11814 0))(
  ( (tuple2!11815 (_1!6733 Int) (_2!6733 PrintableTokens!404)) )
))
(declare-datatypes ((List!10722 0))(
  ( (Nil!10706) (Cons!10706 (h!16107 tuple2!11814) (t!104654 List!10722)) )
))
(declare-datatypes ((IArray!6727 0))(
  ( (IArray!6728 (innerList!3421 List!10722)) )
))
(declare-datatypes ((Conc!3361 0))(
  ( (Node!3361 (left!9290 Conc!3361) (right!9620 Conc!3361) (csize!6952 Int) (cheight!3572 Int)) (Leaf!5289 (xs!6054 IArray!6727) (csize!6953 Int)) (Empty!3361) )
))
(declare-datatypes ((BalanceConc!6736 0))(
  ( (BalanceConc!6737 (c!187465 Conc!3361)) )
))
(declare-fun objs!8 () BalanceConc!6736)

(declare-fun tp!327260 () Bool)

(declare-fun inv!13767 (Conc!3361) Bool)

(assert (=> b!1104257 (= e!699695 (and (inv!13767 (c!187465 objs!8)) tp!327260))))

(declare-fun b!1104258 () Bool)

(declare-datatypes ((Unit!16345 0))(
  ( (Unit!16346) )
))
(declare-fun e!699684 () Unit!16345)

(declare-fun err!2881 () Unit!16345)

(assert (=> b!1104258 (= e!699684 err!2881)))

(declare-fun lt!373993 () Unit!16345)

(declare-fun lt!373990 () BalanceConc!6736)

(declare-fun lt!373995 () tuple2!11814)

(declare-fun forallContained!538 (List!10722 Int tuple2!11814) Unit!16345)

(declare-fun list!3866 (BalanceConc!6736) List!10722)

(assert (=> b!1104258 (= lt!373993 (forallContained!538 (list!3866 lt!373990) lambda!44016 lt!373995))))

(assert (=> b!1104258 true))

(declare-fun b!1104259 () Bool)

(declare-fun e!699685 () Unit!16345)

(declare-fun Unit!16347 () Unit!16345)

(assert (=> b!1104259 (= e!699685 Unit!16347)))

(declare-fun res!489536 () Bool)

(declare-fun e!699692 () Bool)

(assert (=> start!95238 (=> (not res!489536) (not e!699692))))

(declare-fun forall!2507 (BalanceConc!6736 Int) Bool)

(assert (=> start!95238 (= res!489536 (forall!2507 objs!8 lambda!44015))))

(assert (=> start!95238 e!699692))

(declare-fun inv!13768 (BalanceConc!6736) Bool)

(assert (=> start!95238 (and (inv!13768 objs!8) e!699695)))

(declare-fun b!1104260 () Bool)

(declare-fun e!699682 () Bool)

(declare-fun lt!373986 () List!10722)

(declare-fun size!8323 (List!10722) Int)

(declare-fun filter!395 (List!10722 Int) List!10722)

(assert (=> b!1104260 (= e!699682 (< (size!8323 (filter!395 lt!373986 lambda!44016)) (size!8323 lt!373986)))))

(declare-fun b!1104261 () Bool)

(declare-fun e!699686 () Bool)

(declare-fun e!699694 () Bool)

(assert (=> b!1104261 (= e!699686 e!699694)))

(declare-fun res!489537 () Bool)

(assert (=> b!1104261 (=> (not res!489537) (not e!699694))))

(declare-fun lt!373999 () Bool)

(assert (=> b!1104261 (= res!489537 (not lt!373999))))

(declare-fun lt!373980 () Unit!16345)

(assert (=> b!1104261 (= lt!373980 e!699684)))

(declare-fun c!187461 () Bool)

(assert (=> b!1104261 (= c!187461 lt!373999)))

(declare-fun contains!1919 (BalanceConc!6736 tuple2!11814) Bool)

(assert (=> b!1104261 (= lt!373999 (contains!1919 lt!373990 lt!373995))))

(declare-fun b!1104262 () Bool)

(declare-fun e!699687 () Bool)

(declare-fun e!699696 () Bool)

(assert (=> b!1104262 (= e!699687 e!699696)))

(declare-fun res!489532 () Bool)

(assert (=> b!1104262 (=> res!489532 e!699696)))

(declare-fun lt!373991 () BalanceConc!6736)

(declare-fun lt!373994 () Int)

(declare-fun size!8324 (BalanceConc!6736) Int)

(assert (=> b!1104262 (= res!489532 (>= (size!8324 lt!373991) lt!373994))))

(declare-fun e!699683 () Bool)

(assert (=> b!1104262 e!699683))

(declare-fun res!489540 () Bool)

(assert (=> b!1104262 (=> res!489540 e!699683)))

(declare-fun lt!373973 () Bool)

(assert (=> b!1104262 (= res!489540 lt!373973)))

(declare-fun lt!373989 () Unit!16345)

(declare-fun lemmaNotForallFilterShorter!71 (List!10722 Int) Unit!16345)

(assert (=> b!1104262 (= lt!373989 (lemmaNotForallFilterShorter!71 lt!373986 lambda!44018))))

(declare-fun lt!373982 () Unit!16345)

(declare-fun e!699689 () Unit!16345)

(assert (=> b!1104262 (= lt!373982 e!699689)))

(declare-fun c!187458 () Bool)

(assert (=> b!1104262 (= c!187458 (forall!2507 objs!8 lambda!44018))))

(declare-fun b!1104263 () Bool)

(declare-fun Unit!16348 () Unit!16345)

(assert (=> b!1104263 (= e!699684 Unit!16348)))

(declare-fun b!1104264 () Bool)

(declare-fun e!699691 () Unit!16345)

(declare-fun err!2878 () Unit!16345)

(assert (=> b!1104264 (= e!699691 err!2878)))

(declare-fun lt!373976 () Unit!16345)

(assert (=> b!1104264 (= lt!373976 (forallContained!538 (list!3866 lt!373991) lambda!44018 lt!373995))))

(assert (=> b!1104264 true))

(declare-fun b!1104265 () Bool)

(declare-fun e!699688 () Bool)

(assert (=> b!1104265 (= e!699692 e!699688)))

(declare-fun res!489533 () Bool)

(assert (=> b!1104265 (=> (not res!489533) (not e!699688))))

(assert (=> b!1104265 (= res!489533 (> lt!373994 1))))

(assert (=> b!1104265 (= lt!373994 (size!8324 objs!8))))

(declare-fun b!1104266 () Bool)

(assert (=> b!1104266 (= e!699683 (< (size!8323 (filter!395 lt!373986 lambda!44018)) (size!8323 lt!373986)))))

(declare-fun b!1104267 () Bool)

(declare-fun Unit!16349 () Unit!16345)

(assert (=> b!1104267 (= e!699691 Unit!16349)))

(declare-fun b!1104268 () Bool)

(declare-fun err!2880 () Unit!16345)

(assert (=> b!1104268 (= e!699685 err!2880)))

(declare-fun lt!373974 () Unit!16345)

(assert (=> b!1104268 (= lt!373974 (forallContained!538 (list!3866 objs!8) lambda!44016 lt!373995))))

(assert (=> b!1104268 true))

(declare-fun b!1104269 () Bool)

(declare-fun e!699693 () Bool)

(assert (=> b!1104269 (= e!699694 (not e!699693))))

(declare-fun res!489534 () Bool)

(assert (=> b!1104269 (=> res!489534 e!699693)))

(assert (=> b!1104269 (= res!489534 (>= (size!8324 lt!373990) lt!373994))))

(assert (=> b!1104269 e!699682))

(declare-fun res!489535 () Bool)

(assert (=> b!1104269 (=> res!489535 e!699682)))

(assert (=> b!1104269 (= res!489535 lt!373973)))

(declare-fun isEmpty!6709 (List!10722) Bool)

(assert (=> b!1104269 (= lt!373973 (isEmpty!6709 lt!373986))))

(declare-fun lt!373985 () Unit!16345)

(assert (=> b!1104269 (= lt!373985 (lemmaNotForallFilterShorter!71 lt!373986 lambda!44016))))

(assert (=> b!1104269 (= lt!373986 (list!3866 objs!8))))

(declare-fun lt!373979 () Unit!16345)

(assert (=> b!1104269 (= lt!373979 e!699685)))

(declare-fun c!187459 () Bool)

(assert (=> b!1104269 (= c!187459 (forall!2507 objs!8 lambda!44016))))

(assert (=> b!1104270 (= e!699688 e!699686)))

(declare-fun res!489538 () Bool)

(assert (=> b!1104270 (=> (not res!489538) (not e!699686))))

(assert (=> b!1104270 (= res!489538 (contains!1919 objs!8 lt!373995))))

(declare-fun filter!396 (BalanceConc!6736 Int) BalanceConc!6736)

(assert (=> b!1104270 (= lt!373991 (filter!396 objs!8 lambda!44018))))

(declare-fun lt!373984 () BalanceConc!6736)

(assert (=> b!1104270 (= lt!373984 (filter!396 objs!8 lambda!44017))))

(assert (=> b!1104270 (= lt!373990 (filter!396 objs!8 lambda!44016))))

(declare-fun apply!2191 (BalanceConc!6736 Int) tuple2!11814)

(assert (=> b!1104270 (= lt!373995 (apply!2191 objs!8 (ite (>= lt!373994 0) (div lt!373994 2) (- (div (- lt!373994) 2)))))))

(declare-fun b!1104271 () Bool)

(declare-fun err!2879 () Unit!16345)

(assert (=> b!1104271 (= e!699689 err!2879)))

(declare-fun lt!373992 () Unit!16345)

(assert (=> b!1104271 (= lt!373992 (forallContained!538 lt!373986 lambda!44018 lt!373995))))

(assert (=> b!1104271 true))

(declare-fun b!1104272 () Bool)

(declare-fun e!699690 () Bool)

(declare-fun lt!373981 () List!10722)

(declare-fun subseq!163 (List!10722 List!10722) Bool)

(assert (=> b!1104272 (= e!699690 (subseq!163 lt!373981 lt!373986))))

(declare-fun b!1104273 () Bool)

(declare-fun Unit!16350 () Unit!16345)

(assert (=> b!1104273 (= e!699689 Unit!16350)))

(declare-fun b!1104274 () Bool)

(assert (=> b!1104274 (= e!699693 e!699687)))

(declare-fun res!489541 () Bool)

(assert (=> b!1104274 (=> res!489541 e!699687)))

(declare-fun lt!373975 () Bool)

(assert (=> b!1104274 (= res!489541 lt!373975)))

(declare-fun lt!373977 () Unit!16345)

(assert (=> b!1104274 (= lt!373977 e!699691)))

(declare-fun c!187460 () Bool)

(assert (=> b!1104274 (= c!187460 lt!373975)))

(assert (=> b!1104274 (= lt!373975 (contains!1919 lt!373991 lt!373995))))

(declare-fun b!1104275 () Bool)

(assert (=> b!1104275 (= e!699696 e!699690)))

(declare-fun res!489539 () Bool)

(assert (=> b!1104275 (=> res!489539 e!699690)))

(declare-fun forall!2508 (List!10722 Int) Bool)

(assert (=> b!1104275 (= res!489539 (not (forall!2508 lt!373986 lambda!44015)))))

(assert (=> b!1104275 (= lt!373981 (list!3866 (filter!396 objs!8 lambda!44018)))))

(declare-fun lt!373983 () List!10722)

(assert (=> b!1104275 (forall!2508 lt!373983 lambda!44015)))

(declare-fun lt!373997 () Unit!16345)

(declare-fun lemmaForallSubseq!57 (List!10722 List!10722 Int) Unit!16345)

(assert (=> b!1104275 (= lt!373997 (lemmaForallSubseq!57 lt!373983 lt!373986 lambda!44015))))

(assert (=> b!1104275 (= lt!373983 (list!3866 (filter!396 objs!8 lambda!44017)))))

(declare-fun lt!373988 () List!10722)

(assert (=> b!1104275 (forall!2508 lt!373988 lambda!44015)))

(declare-fun lt!373978 () Unit!16345)

(assert (=> b!1104275 (= lt!373978 (lemmaForallSubseq!57 lt!373988 lt!373986 lambda!44015))))

(assert (=> b!1104275 (= lt!373988 (list!3866 (filter!396 objs!8 lambda!44016)))))

(declare-fun lt!373998 () Unit!16345)

(declare-fun filterSubseq!53 (List!10722 Int) Unit!16345)

(assert (=> b!1104275 (= lt!373998 (filterSubseq!53 lt!373986 lambda!44018))))

(declare-fun lt!373996 () Unit!16345)

(assert (=> b!1104275 (= lt!373996 (filterSubseq!53 lt!373986 lambda!44017))))

(declare-fun lt!373987 () Unit!16345)

(assert (=> b!1104275 (= lt!373987 (filterSubseq!53 lt!373986 lambda!44016))))

(assert (= (and start!95238 res!489536) b!1104265))

(assert (= (and b!1104265 res!489533) b!1104270))

(assert (= (and b!1104270 res!489538) b!1104261))

(assert (= (and b!1104261 c!187461) b!1104258))

(assert (= (and b!1104261 (not c!187461)) b!1104263))

(assert (= (and b!1104261 res!489537) b!1104269))

(assert (= (and b!1104269 c!187459) b!1104268))

(assert (= (and b!1104269 (not c!187459)) b!1104259))

(assert (= (and b!1104269 (not res!489535)) b!1104260))

(assert (= (and b!1104269 (not res!489534)) b!1104274))

(assert (= (and b!1104274 c!187460) b!1104264))

(assert (= (and b!1104274 (not c!187460)) b!1104267))

(assert (= (and b!1104274 (not res!489541)) b!1104262))

(assert (= (and b!1104262 c!187458) b!1104271))

(assert (= (and b!1104262 (not c!187458)) b!1104273))

(assert (= (and b!1104262 (not res!489540)) b!1104266))

(assert (= (and b!1104262 (not res!489532)) b!1104275))

(assert (= (and b!1104275 (not res!489539)) b!1104272))

(assert (= start!95238 b!1104257))

(declare-fun m!1260831 () Bool)

(assert (=> b!1104261 m!1260831))

(declare-fun m!1260833 () Bool)

(assert (=> b!1104262 m!1260833))

(declare-fun m!1260835 () Bool)

(assert (=> b!1104262 m!1260835))

(declare-fun m!1260837 () Bool)

(assert (=> b!1104262 m!1260837))

(declare-fun m!1260839 () Bool)

(assert (=> b!1104264 m!1260839))

(assert (=> b!1104264 m!1260839))

(declare-fun m!1260841 () Bool)

(assert (=> b!1104264 m!1260841))

(declare-fun m!1260843 () Bool)

(assert (=> b!1104258 m!1260843))

(assert (=> b!1104258 m!1260843))

(declare-fun m!1260845 () Bool)

(assert (=> b!1104258 m!1260845))

(declare-fun m!1260847 () Bool)

(assert (=> b!1104257 m!1260847))

(declare-fun m!1260849 () Bool)

(assert (=> b!1104271 m!1260849))

(declare-fun m!1260851 () Bool)

(assert (=> b!1104272 m!1260851))

(declare-fun m!1260853 () Bool)

(assert (=> b!1104270 m!1260853))

(declare-fun m!1260855 () Bool)

(assert (=> b!1104270 m!1260855))

(declare-fun m!1260857 () Bool)

(assert (=> b!1104270 m!1260857))

(declare-fun m!1260859 () Bool)

(assert (=> b!1104270 m!1260859))

(declare-fun m!1260861 () Bool)

(assert (=> b!1104270 m!1260861))

(declare-fun m!1260863 () Bool)

(assert (=> b!1104274 m!1260863))

(declare-fun m!1260865 () Bool)

(assert (=> b!1104269 m!1260865))

(declare-fun m!1260867 () Bool)

(assert (=> b!1104269 m!1260867))

(declare-fun m!1260869 () Bool)

(assert (=> b!1104269 m!1260869))

(declare-fun m!1260871 () Bool)

(assert (=> b!1104269 m!1260871))

(declare-fun m!1260873 () Bool)

(assert (=> b!1104269 m!1260873))

(assert (=> b!1104268 m!1260865))

(assert (=> b!1104268 m!1260865))

(declare-fun m!1260875 () Bool)

(assert (=> b!1104268 m!1260875))

(declare-fun m!1260877 () Bool)

(assert (=> start!95238 m!1260877))

(declare-fun m!1260879 () Bool)

(assert (=> start!95238 m!1260879))

(assert (=> b!1104275 m!1260861))

(declare-fun m!1260881 () Bool)

(assert (=> b!1104275 m!1260881))

(assert (=> b!1104275 m!1260859))

(declare-fun m!1260883 () Bool)

(assert (=> b!1104275 m!1260883))

(declare-fun m!1260885 () Bool)

(assert (=> b!1104275 m!1260885))

(declare-fun m!1260887 () Bool)

(assert (=> b!1104275 m!1260887))

(assert (=> b!1104275 m!1260857))

(assert (=> b!1104275 m!1260861))

(declare-fun m!1260889 () Bool)

(assert (=> b!1104275 m!1260889))

(declare-fun m!1260891 () Bool)

(assert (=> b!1104275 m!1260891))

(assert (=> b!1104275 m!1260857))

(declare-fun m!1260893 () Bool)

(assert (=> b!1104275 m!1260893))

(declare-fun m!1260895 () Bool)

(assert (=> b!1104275 m!1260895))

(assert (=> b!1104275 m!1260859))

(declare-fun m!1260897 () Bool)

(assert (=> b!1104275 m!1260897))

(declare-fun m!1260899 () Bool)

(assert (=> b!1104275 m!1260899))

(declare-fun m!1260901 () Bool)

(assert (=> b!1104275 m!1260901))

(declare-fun m!1260903 () Bool)

(assert (=> b!1104265 m!1260903))

(declare-fun m!1260905 () Bool)

(assert (=> b!1104266 m!1260905))

(assert (=> b!1104266 m!1260905))

(declare-fun m!1260907 () Bool)

(assert (=> b!1104266 m!1260907))

(declare-fun m!1260909 () Bool)

(assert (=> b!1104266 m!1260909))

(declare-fun m!1260911 () Bool)

(assert (=> b!1104260 m!1260911))

(assert (=> b!1104260 m!1260911))

(declare-fun m!1260913 () Bool)

(assert (=> b!1104260 m!1260913))

(assert (=> b!1104260 m!1260909))

(check-sat (not b!1104270) (not b!1104286) (not b!1104266) (not b!1104264) (not b!1104260) (not b!1104258) (not b!1104287) (not b!1104274) (not b!1104272) (not b!1104282) (not b!1104269) (not b!1104262) (not b!1104271) (not b!1104265) (not b!1104257) (not start!95238) (not b!1104275) (not b!1104285) (not b!1104283) (not b!1104284) (not b!1104261) (not b!1104268))
(check-sat)
(get-model)

(declare-fun d!312702 () Bool)

(declare-fun lt!374002 () Bool)

(assert (=> d!312702 (= lt!374002 (forall!2508 (list!3866 objs!8) lambda!44015))))

(declare-fun forall!2510 (Conc!3361 Int) Bool)

(assert (=> d!312702 (= lt!374002 (forall!2510 (c!187465 objs!8) lambda!44015))))

(assert (=> d!312702 (= (forall!2507 objs!8 lambda!44015) lt!374002)))

(declare-fun bs!259835 () Bool)

(assert (= bs!259835 d!312702))

(assert (=> bs!259835 m!1260865))

(assert (=> bs!259835 m!1260865))

(declare-fun m!1260915 () Bool)

(assert (=> bs!259835 m!1260915))

(declare-fun m!1260917 () Bool)

(assert (=> bs!259835 m!1260917))

(assert (=> start!95238 d!312702))

(declare-fun d!312704 () Bool)

(declare-fun isBalanced!931 (Conc!3361) Bool)

(assert (=> d!312704 (= (inv!13768 objs!8) (isBalanced!931 (c!187465 objs!8)))))

(declare-fun bs!259836 () Bool)

(assert (= bs!259836 d!312704))

(declare-fun m!1260919 () Bool)

(assert (=> bs!259836 m!1260919))

(assert (=> start!95238 d!312704))

(declare-fun d!312706 () Bool)

(declare-fun dynLambda!4734 (Int tuple2!11814) Bool)

(assert (=> d!312706 (dynLambda!4734 lambda!44018 lt!373995)))

(declare-fun lt!374005 () Unit!16345)

(declare-fun choose!7147 (List!10722 Int tuple2!11814) Unit!16345)

(assert (=> d!312706 (= lt!374005 (choose!7147 lt!373986 lambda!44018 lt!373995))))

(declare-fun e!699709 () Bool)

(assert (=> d!312706 e!699709))

(declare-fun res!489544 () Bool)

(assert (=> d!312706 (=> (not res!489544) (not e!699709))))

(assert (=> d!312706 (= res!489544 (forall!2508 lt!373986 lambda!44018))))

(assert (=> d!312706 (= (forallContained!538 lt!373986 lambda!44018 lt!373995) lt!374005)))

(declare-fun b!1104290 () Bool)

(declare-fun contains!1922 (List!10722 tuple2!11814) Bool)

(assert (=> b!1104290 (= e!699709 (contains!1922 lt!373986 lt!373995))))

(assert (= (and d!312706 res!489544) b!1104290))

(declare-fun b_lambda!32635 () Bool)

(assert (=> (not b_lambda!32635) (not d!312706)))

(declare-fun m!1260921 () Bool)

(assert (=> d!312706 m!1260921))

(declare-fun m!1260923 () Bool)

(assert (=> d!312706 m!1260923))

(declare-fun m!1260925 () Bool)

(assert (=> d!312706 m!1260925))

(declare-fun m!1260927 () Bool)

(assert (=> b!1104290 m!1260927))

(assert (=> b!1104271 d!312706))

(declare-fun d!312708 () Bool)

(declare-fun res!489555 () Bool)

(declare-fun e!699724 () Bool)

(assert (=> d!312708 (=> res!489555 e!699724)))

(get-info :version)

(assert (=> d!312708 (= res!489555 ((_ is Nil!10706) lt!373981))))

(assert (=> d!312708 (= (subseq!163 lt!373981 lt!373986) e!699724)))

(declare-fun b!1104308 () Bool)

(declare-fun e!699723 () Bool)

(assert (=> b!1104308 (= e!699723 (subseq!163 lt!373981 (t!104654 lt!373986)))))

(declare-fun b!1104306 () Bool)

(declare-fun e!699722 () Bool)

(assert (=> b!1104306 (= e!699722 e!699723)))

(declare-fun res!489553 () Bool)

(assert (=> b!1104306 (=> res!489553 e!699723)))

(declare-fun e!699721 () Bool)

(assert (=> b!1104306 (= res!489553 e!699721)))

(declare-fun res!489554 () Bool)

(assert (=> b!1104306 (=> (not res!489554) (not e!699721))))

(assert (=> b!1104306 (= res!489554 (= (h!16107 lt!373981) (h!16107 lt!373986)))))

(declare-fun b!1104305 () Bool)

(assert (=> b!1104305 (= e!699724 e!699722)))

(declare-fun res!489556 () Bool)

(assert (=> b!1104305 (=> (not res!489556) (not e!699722))))

(assert (=> b!1104305 (= res!489556 ((_ is Cons!10706) lt!373986))))

(declare-fun b!1104307 () Bool)

(assert (=> b!1104307 (= e!699721 (subseq!163 (t!104654 lt!373981) (t!104654 lt!373986)))))

(assert (= (and d!312708 (not res!489555)) b!1104305))

(assert (= (and b!1104305 res!489556) b!1104306))

(assert (= (and b!1104306 res!489554) b!1104307))

(assert (= (and b!1104306 (not res!489553)) b!1104308))

(declare-fun m!1260931 () Bool)

(assert (=> b!1104308 m!1260931))

(declare-fun m!1260933 () Bool)

(assert (=> b!1104307 m!1260933))

(assert (=> b!1104272 d!312708))

(declare-fun d!312714 () Bool)

(declare-fun lt!374014 () Bool)

(assert (=> d!312714 (= lt!374014 (contains!1922 (list!3866 lt!373990) lt!373995))))

(declare-fun contains!1923 (Conc!3361 tuple2!11814) Bool)

(assert (=> d!312714 (= lt!374014 (contains!1923 (c!187465 lt!373990) lt!373995))))

(assert (=> d!312714 (= (contains!1919 lt!373990 lt!373995) lt!374014)))

(declare-fun bs!259837 () Bool)

(assert (= bs!259837 d!312714))

(assert (=> bs!259837 m!1260843))

(assert (=> bs!259837 m!1260843))

(declare-fun m!1260947 () Bool)

(assert (=> bs!259837 m!1260947))

(declare-fun m!1260951 () Bool)

(assert (=> bs!259837 m!1260951))

(assert (=> b!1104261 d!312714))

(declare-fun d!312720 () Bool)

(declare-fun e!699753 () Bool)

(assert (=> d!312720 e!699753))

(declare-fun res!489581 () Bool)

(assert (=> d!312720 (=> (not res!489581) (not e!699753))))

(declare-fun filter!398 (Conc!3361 Int) Conc!3361)

(assert (=> d!312720 (= res!489581 (isBalanced!931 (filter!398 (c!187465 objs!8) lambda!44017)))))

(declare-fun lt!374029 () BalanceConc!6736)

(assert (=> d!312720 (= lt!374029 (BalanceConc!6737 (filter!398 (c!187465 objs!8) lambda!44017)))))

(assert (=> d!312720 (= (filter!396 objs!8 lambda!44017) lt!374029)))

(declare-fun b!1104347 () Bool)

(assert (=> b!1104347 (= e!699753 (= (list!3866 lt!374029) (filter!395 (list!3866 objs!8) lambda!44017)))))

(assert (= (and d!312720 res!489581) b!1104347))

(declare-fun m!1260987 () Bool)

(assert (=> d!312720 m!1260987))

(assert (=> d!312720 m!1260987))

(declare-fun m!1260989 () Bool)

(assert (=> d!312720 m!1260989))

(declare-fun m!1260991 () Bool)

(assert (=> b!1104347 m!1260991))

(assert (=> b!1104347 m!1260865))

(assert (=> b!1104347 m!1260865))

(declare-fun m!1260993 () Bool)

(assert (=> b!1104347 m!1260993))

(assert (=> b!1104270 d!312720))

(declare-fun d!312738 () Bool)

(declare-fun lt!374030 () Bool)

(assert (=> d!312738 (= lt!374030 (contains!1922 (list!3866 objs!8) lt!373995))))

(assert (=> d!312738 (= lt!374030 (contains!1923 (c!187465 objs!8) lt!373995))))

(assert (=> d!312738 (= (contains!1919 objs!8 lt!373995) lt!374030)))

(declare-fun bs!259843 () Bool)

(assert (= bs!259843 d!312738))

(assert (=> bs!259843 m!1260865))

(assert (=> bs!259843 m!1260865))

(declare-fun m!1260995 () Bool)

(assert (=> bs!259843 m!1260995))

(declare-fun m!1260997 () Bool)

(assert (=> bs!259843 m!1260997))

(assert (=> b!1104270 d!312738))

(declare-fun d!312740 () Bool)

(declare-fun lt!374043 () tuple2!11814)

(declare-fun apply!2194 (List!10722 Int) tuple2!11814)

(assert (=> d!312740 (= lt!374043 (apply!2194 (list!3866 objs!8) (ite (>= lt!373994 0) (div lt!373994 2) (- (div (- lt!373994) 2)))))))

(declare-fun apply!2195 (Conc!3361 Int) tuple2!11814)

(assert (=> d!312740 (= lt!374043 (apply!2195 (c!187465 objs!8) (ite (>= lt!373994 0) (div lt!373994 2) (- (div (- lt!373994) 2)))))))

(declare-fun e!699764 () Bool)

(assert (=> d!312740 e!699764))

(declare-fun res!489592 () Bool)

(assert (=> d!312740 (=> (not res!489592) (not e!699764))))

(assert (=> d!312740 (= res!489592 (<= 0 (ite (>= lt!373994 0) (div lt!373994 2) (- (div (- lt!373994) 2)))))))

(assert (=> d!312740 (= (apply!2191 objs!8 (ite (>= lt!373994 0) (div lt!373994 2) (- (div (- lt!373994) 2)))) lt!374043)))

(declare-fun b!1104358 () Bool)

(assert (=> b!1104358 (= e!699764 (< (ite (>= lt!373994 0) (div lt!373994 2) (- (div (- lt!373994) 2))) (size!8324 objs!8)))))

(assert (= (and d!312740 res!489592) b!1104358))

(assert (=> d!312740 m!1260865))

(assert (=> d!312740 m!1260865))

(declare-fun m!1261033 () Bool)

(assert (=> d!312740 m!1261033))

(declare-fun m!1261035 () Bool)

(assert (=> d!312740 m!1261035))

(assert (=> b!1104358 m!1260903))

(assert (=> b!1104270 d!312740))

(declare-fun d!312754 () Bool)

(declare-fun e!699767 () Bool)

(assert (=> d!312754 e!699767))

(declare-fun res!489595 () Bool)

(assert (=> d!312754 (=> (not res!489595) (not e!699767))))

(assert (=> d!312754 (= res!489595 (isBalanced!931 (filter!398 (c!187465 objs!8) lambda!44016)))))

(declare-fun lt!374046 () BalanceConc!6736)

(assert (=> d!312754 (= lt!374046 (BalanceConc!6737 (filter!398 (c!187465 objs!8) lambda!44016)))))

(assert (=> d!312754 (= (filter!396 objs!8 lambda!44016) lt!374046)))

(declare-fun b!1104361 () Bool)

(assert (=> b!1104361 (= e!699767 (= (list!3866 lt!374046) (filter!395 (list!3866 objs!8) lambda!44016)))))

(assert (= (and d!312754 res!489595) b!1104361))

(declare-fun m!1261037 () Bool)

(assert (=> d!312754 m!1261037))

(assert (=> d!312754 m!1261037))

(declare-fun m!1261041 () Bool)

(assert (=> d!312754 m!1261041))

(declare-fun m!1261045 () Bool)

(assert (=> b!1104361 m!1261045))

(assert (=> b!1104361 m!1260865))

(assert (=> b!1104361 m!1260865))

(declare-fun m!1261047 () Bool)

(assert (=> b!1104361 m!1261047))

(assert (=> b!1104270 d!312754))

(declare-fun d!312758 () Bool)

(declare-fun e!699769 () Bool)

(assert (=> d!312758 e!699769))

(declare-fun res!489597 () Bool)

(assert (=> d!312758 (=> (not res!489597) (not e!699769))))

(assert (=> d!312758 (= res!489597 (isBalanced!931 (filter!398 (c!187465 objs!8) lambda!44018)))))

(declare-fun lt!374048 () BalanceConc!6736)

(assert (=> d!312758 (= lt!374048 (BalanceConc!6737 (filter!398 (c!187465 objs!8) lambda!44018)))))

(assert (=> d!312758 (= (filter!396 objs!8 lambda!44018) lt!374048)))

(declare-fun b!1104363 () Bool)

(assert (=> b!1104363 (= e!699769 (= (list!3866 lt!374048) (filter!395 (list!3866 objs!8) lambda!44018)))))

(assert (= (and d!312758 res!489597) b!1104363))

(declare-fun m!1261049 () Bool)

(assert (=> d!312758 m!1261049))

(assert (=> d!312758 m!1261049))

(declare-fun m!1261051 () Bool)

(assert (=> d!312758 m!1261051))

(declare-fun m!1261053 () Bool)

(assert (=> b!1104363 m!1261053))

(assert (=> b!1104363 m!1260865))

(assert (=> b!1104363 m!1260865))

(declare-fun m!1261055 () Bool)

(assert (=> b!1104363 m!1261055))

(assert (=> b!1104270 d!312758))

(declare-fun d!312760 () Bool)

(declare-fun lt!374055 () Int)

(assert (=> d!312760 (>= lt!374055 0)))

(declare-fun e!699772 () Int)

(assert (=> d!312760 (= lt!374055 e!699772)))

(declare-fun c!187480 () Bool)

(assert (=> d!312760 (= c!187480 ((_ is Nil!10706) (filter!395 lt!373986 lambda!44016)))))

(assert (=> d!312760 (= (size!8323 (filter!395 lt!373986 lambda!44016)) lt!374055)))

(declare-fun b!1104368 () Bool)

(assert (=> b!1104368 (= e!699772 0)))

(declare-fun b!1104369 () Bool)

(assert (=> b!1104369 (= e!699772 (+ 1 (size!8323 (t!104654 (filter!395 lt!373986 lambda!44016)))))))

(assert (= (and d!312760 c!187480) b!1104368))

(assert (= (and d!312760 (not c!187480)) b!1104369))

(declare-fun m!1261067 () Bool)

(assert (=> b!1104369 m!1261067))

(assert (=> b!1104260 d!312760))

(declare-fun b!1104412 () Bool)

(declare-fun e!699802 () List!10722)

(declare-fun call!80493 () List!10722)

(assert (=> b!1104412 (= e!699802 call!80493)))

(declare-fun d!312768 () Bool)

(declare-fun e!699803 () Bool)

(assert (=> d!312768 e!699803))

(declare-fun res!489620 () Bool)

(assert (=> d!312768 (=> (not res!489620) (not e!699803))))

(declare-fun lt!374074 () List!10722)

(assert (=> d!312768 (= res!489620 (<= (size!8323 lt!374074) (size!8323 lt!373986)))))

(declare-fun e!699804 () List!10722)

(assert (=> d!312768 (= lt!374074 e!699804)))

(declare-fun c!187491 () Bool)

(assert (=> d!312768 (= c!187491 ((_ is Nil!10706) lt!373986))))

(assert (=> d!312768 (= (filter!395 lt!373986 lambda!44016) lt!374074)))

(declare-fun b!1104413 () Bool)

(declare-fun res!489621 () Bool)

(assert (=> b!1104413 (=> (not res!489621) (not e!699803))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1550 (List!10722) (InoxSet tuple2!11814))

(assert (=> b!1104413 (= res!489621 (= ((_ map implies) (content!1550 lt!374074) (content!1550 lt!373986)) ((as const (InoxSet tuple2!11814)) true)))))

(declare-fun b!1104414 () Bool)

(assert (=> b!1104414 (= e!699804 e!699802)))

(declare-fun c!187492 () Bool)

(assert (=> b!1104414 (= c!187492 (dynLambda!4734 lambda!44016 (h!16107 lt!373986)))))

(declare-fun bm!80488 () Bool)

(assert (=> bm!80488 (= call!80493 (filter!395 (t!104654 lt!373986) lambda!44016))))

(declare-fun b!1104415 () Bool)

(assert (=> b!1104415 (= e!699804 Nil!10706)))

(declare-fun b!1104416 () Bool)

(assert (=> b!1104416 (= e!699803 (forall!2508 lt!374074 lambda!44016))))

(declare-fun b!1104417 () Bool)

(assert (=> b!1104417 (= e!699802 (Cons!10706 (h!16107 lt!373986) call!80493))))

(assert (= (and d!312768 c!187491) b!1104415))

(assert (= (and d!312768 (not c!187491)) b!1104414))

(assert (= (and b!1104414 c!187492) b!1104417))

(assert (= (and b!1104414 (not c!187492)) b!1104412))

(assert (= (or b!1104417 b!1104412) bm!80488))

(assert (= (and d!312768 res!489620) b!1104413))

(assert (= (and b!1104413 res!489621) b!1104416))

(declare-fun b_lambda!32655 () Bool)

(assert (=> (not b_lambda!32655) (not b!1104414)))

(declare-fun m!1261141 () Bool)

(assert (=> b!1104416 m!1261141))

(declare-fun m!1261143 () Bool)

(assert (=> d!312768 m!1261143))

(assert (=> d!312768 m!1260909))

(declare-fun m!1261145 () Bool)

(assert (=> bm!80488 m!1261145))

(declare-fun m!1261147 () Bool)

(assert (=> b!1104413 m!1261147))

(declare-fun m!1261149 () Bool)

(assert (=> b!1104413 m!1261149))

(declare-fun m!1261151 () Bool)

(assert (=> b!1104414 m!1261151))

(assert (=> b!1104260 d!312768))

(declare-fun d!312810 () Bool)

(declare-fun lt!374075 () Int)

(assert (=> d!312810 (>= lt!374075 0)))

(declare-fun e!699815 () Int)

(assert (=> d!312810 (= lt!374075 e!699815)))

(declare-fun c!187493 () Bool)

(assert (=> d!312810 (= c!187493 ((_ is Nil!10706) lt!373986))))

(assert (=> d!312810 (= (size!8323 lt!373986) lt!374075)))

(declare-fun b!1104436 () Bool)

(assert (=> b!1104436 (= e!699815 0)))

(declare-fun b!1104437 () Bool)

(assert (=> b!1104437 (= e!699815 (+ 1 (size!8323 (t!104654 lt!373986))))))

(assert (= (and d!312810 c!187493) b!1104436))

(assert (= (and d!312810 (not c!187493)) b!1104437))

(declare-fun m!1261153 () Bool)

(assert (=> b!1104437 m!1261153))

(assert (=> b!1104260 d!312810))

(declare-fun d!312812 () Bool)

(declare-fun lt!374076 () Bool)

(assert (=> d!312812 (= lt!374076 (contains!1922 (list!3866 lt!373991) lt!373995))))

(assert (=> d!312812 (= lt!374076 (contains!1923 (c!187465 lt!373991) lt!373995))))

(assert (=> d!312812 (= (contains!1919 lt!373991 lt!373995) lt!374076)))

(declare-fun bs!259860 () Bool)

(assert (= bs!259860 d!312812))

(assert (=> bs!259860 m!1260839))

(assert (=> bs!259860 m!1260839))

(declare-fun m!1261155 () Bool)

(assert (=> bs!259860 m!1261155))

(declare-fun m!1261157 () Bool)

(assert (=> bs!259860 m!1261157))

(assert (=> b!1104274 d!312812))

(declare-fun d!312814 () Bool)

(assert (=> d!312814 (dynLambda!4734 lambda!44018 lt!373995)))

(declare-fun lt!374077 () Unit!16345)

(assert (=> d!312814 (= lt!374077 (choose!7147 (list!3866 lt!373991) lambda!44018 lt!373995))))

(declare-fun e!699818 () Bool)

(assert (=> d!312814 e!699818))

(declare-fun res!489622 () Bool)

(assert (=> d!312814 (=> (not res!489622) (not e!699818))))

(assert (=> d!312814 (= res!489622 (forall!2508 (list!3866 lt!373991) lambda!44018))))

(assert (=> d!312814 (= (forallContained!538 (list!3866 lt!373991) lambda!44018 lt!373995) lt!374077)))

(declare-fun b!1104440 () Bool)

(assert (=> b!1104440 (= e!699818 (contains!1922 (list!3866 lt!373991) lt!373995))))

(assert (= (and d!312814 res!489622) b!1104440))

(declare-fun b_lambda!32657 () Bool)

(assert (=> (not b_lambda!32657) (not d!312814)))

(assert (=> d!312814 m!1260921))

(assert (=> d!312814 m!1260839))

(declare-fun m!1261159 () Bool)

(assert (=> d!312814 m!1261159))

(assert (=> d!312814 m!1260839))

(declare-fun m!1261161 () Bool)

(assert (=> d!312814 m!1261161))

(assert (=> b!1104440 m!1260839))

(assert (=> b!1104440 m!1261155))

(assert (=> b!1104264 d!312814))

(declare-fun d!312816 () Bool)

(declare-fun list!3868 (Conc!3361) List!10722)

(assert (=> d!312816 (= (list!3866 lt!373991) (list!3868 (c!187465 lt!373991)))))

(declare-fun bs!259861 () Bool)

(assert (= bs!259861 d!312816))

(declare-fun m!1261169 () Bool)

(assert (=> bs!259861 m!1261169))

(assert (=> b!1104264 d!312816))

(declare-fun d!312818 () Bool)

(declare-fun lt!374080 () Int)

(assert (=> d!312818 (= lt!374080 (size!8323 (list!3866 lt!373991)))))

(declare-fun size!8326 (Conc!3361) Int)

(assert (=> d!312818 (= lt!374080 (size!8326 (c!187465 lt!373991)))))

(assert (=> d!312818 (= (size!8324 lt!373991) lt!374080)))

(declare-fun bs!259869 () Bool)

(assert (= bs!259869 d!312818))

(assert (=> bs!259869 m!1260839))

(assert (=> bs!259869 m!1260839))

(declare-fun m!1261177 () Bool)

(assert (=> bs!259869 m!1261177))

(declare-fun m!1261179 () Bool)

(assert (=> bs!259869 m!1261179))

(assert (=> b!1104262 d!312818))

(declare-fun d!312834 () Bool)

(declare-fun e!699840 () Bool)

(assert (=> d!312834 e!699840))

(declare-fun res!489625 () Bool)

(assert (=> d!312834 (=> res!489625 e!699840)))

(assert (=> d!312834 (= res!489625 (isEmpty!6709 lt!373986))))

(declare-fun lt!374083 () Unit!16345)

(declare-fun choose!7150 (List!10722 Int) Unit!16345)

(assert (=> d!312834 (= lt!374083 (choose!7150 lt!373986 lambda!44018))))

(assert (=> d!312834 (not (forall!2508 lt!373986 lambda!44018))))

(assert (=> d!312834 (= (lemmaNotForallFilterShorter!71 lt!373986 lambda!44018) lt!374083)))

(declare-fun b!1104468 () Bool)

(assert (=> b!1104468 (= e!699840 (< (size!8323 (filter!395 lt!373986 lambda!44018)) (size!8323 lt!373986)))))

(assert (= (and d!312834 (not res!489625)) b!1104468))

(assert (=> d!312834 m!1260867))

(declare-fun m!1261181 () Bool)

(assert (=> d!312834 m!1261181))

(assert (=> d!312834 m!1260925))

(assert (=> b!1104468 m!1260905))

(assert (=> b!1104468 m!1260905))

(assert (=> b!1104468 m!1260907))

(assert (=> b!1104468 m!1260909))

(assert (=> b!1104262 d!312834))

(declare-fun d!312836 () Bool)

(declare-fun lt!374084 () Bool)

(assert (=> d!312836 (= lt!374084 (forall!2508 (list!3866 objs!8) lambda!44018))))

(assert (=> d!312836 (= lt!374084 (forall!2510 (c!187465 objs!8) lambda!44018))))

(assert (=> d!312836 (= (forall!2507 objs!8 lambda!44018) lt!374084)))

(declare-fun bs!259870 () Bool)

(assert (= bs!259870 d!312836))

(assert (=> bs!259870 m!1260865))

(assert (=> bs!259870 m!1260865))

(declare-fun m!1261183 () Bool)

(assert (=> bs!259870 m!1261183))

(declare-fun m!1261185 () Bool)

(assert (=> bs!259870 m!1261185))

(assert (=> b!1104262 d!312836))

(declare-fun d!312838 () Bool)

(declare-fun lt!374085 () Int)

(assert (=> d!312838 (>= lt!374085 0)))

(declare-fun e!699841 () Int)

(assert (=> d!312838 (= lt!374085 e!699841)))

(declare-fun c!187494 () Bool)

(assert (=> d!312838 (= c!187494 ((_ is Nil!10706) (filter!395 lt!373986 lambda!44018)))))

(assert (=> d!312838 (= (size!8323 (filter!395 lt!373986 lambda!44018)) lt!374085)))

(declare-fun b!1104469 () Bool)

(assert (=> b!1104469 (= e!699841 0)))

(declare-fun b!1104470 () Bool)

(assert (=> b!1104470 (= e!699841 (+ 1 (size!8323 (t!104654 (filter!395 lt!373986 lambda!44018)))))))

(assert (= (and d!312838 c!187494) b!1104469))

(assert (= (and d!312838 (not c!187494)) b!1104470))

(declare-fun m!1261187 () Bool)

(assert (=> b!1104470 m!1261187))

(assert (=> b!1104266 d!312838))

(declare-fun b!1104471 () Bool)

(declare-fun e!699842 () List!10722)

(declare-fun call!80494 () List!10722)

(assert (=> b!1104471 (= e!699842 call!80494)))

(declare-fun d!312840 () Bool)

(declare-fun e!699843 () Bool)

(assert (=> d!312840 e!699843))

(declare-fun res!489626 () Bool)

(assert (=> d!312840 (=> (not res!489626) (not e!699843))))

(declare-fun lt!374086 () List!10722)

(assert (=> d!312840 (= res!489626 (<= (size!8323 lt!374086) (size!8323 lt!373986)))))

(declare-fun e!699844 () List!10722)

(assert (=> d!312840 (= lt!374086 e!699844)))

(declare-fun c!187495 () Bool)

(assert (=> d!312840 (= c!187495 ((_ is Nil!10706) lt!373986))))

(assert (=> d!312840 (= (filter!395 lt!373986 lambda!44018) lt!374086)))

(declare-fun b!1104472 () Bool)

(declare-fun res!489627 () Bool)

(assert (=> b!1104472 (=> (not res!489627) (not e!699843))))

(assert (=> b!1104472 (= res!489627 (= ((_ map implies) (content!1550 lt!374086) (content!1550 lt!373986)) ((as const (InoxSet tuple2!11814)) true)))))

(declare-fun b!1104473 () Bool)

(assert (=> b!1104473 (= e!699844 e!699842)))

(declare-fun c!187496 () Bool)

(assert (=> b!1104473 (= c!187496 (dynLambda!4734 lambda!44018 (h!16107 lt!373986)))))

(declare-fun bm!80489 () Bool)

(assert (=> bm!80489 (= call!80494 (filter!395 (t!104654 lt!373986) lambda!44018))))

(declare-fun b!1104474 () Bool)

(assert (=> b!1104474 (= e!699844 Nil!10706)))

(declare-fun b!1104475 () Bool)

(assert (=> b!1104475 (= e!699843 (forall!2508 lt!374086 lambda!44018))))

(declare-fun b!1104476 () Bool)

(assert (=> b!1104476 (= e!699842 (Cons!10706 (h!16107 lt!373986) call!80494))))

(assert (= (and d!312840 c!187495) b!1104474))

(assert (= (and d!312840 (not c!187495)) b!1104473))

(assert (= (and b!1104473 c!187496) b!1104476))

(assert (= (and b!1104473 (not c!187496)) b!1104471))

(assert (= (or b!1104476 b!1104471) bm!80489))

(assert (= (and d!312840 res!489626) b!1104472))

(assert (= (and b!1104472 res!489627) b!1104475))

(declare-fun b_lambda!32677 () Bool)

(assert (=> (not b_lambda!32677) (not b!1104473)))

(declare-fun m!1261189 () Bool)

(assert (=> b!1104475 m!1261189))

(declare-fun m!1261191 () Bool)

(assert (=> d!312840 m!1261191))

(assert (=> d!312840 m!1260909))

(declare-fun m!1261193 () Bool)

(assert (=> bm!80489 m!1261193))

(declare-fun m!1261195 () Bool)

(assert (=> b!1104472 m!1261195))

(assert (=> b!1104472 m!1261149))

(declare-fun m!1261197 () Bool)

(assert (=> b!1104473 m!1261197))

(assert (=> b!1104266 d!312840))

(assert (=> b!1104266 d!312810))

(assert (=> b!1104275 d!312720))

(declare-fun d!312842 () Bool)

(assert (=> d!312842 (subseq!163 (filter!395 lt!373986 lambda!44018) lt!373986)))

(declare-fun lt!374089 () Unit!16345)

(declare-fun choose!7151 (List!10722 Int) Unit!16345)

(assert (=> d!312842 (= lt!374089 (choose!7151 lt!373986 lambda!44018))))

(assert (=> d!312842 (= (filterSubseq!53 lt!373986 lambda!44018) lt!374089)))

(declare-fun bs!259871 () Bool)

(assert (= bs!259871 d!312842))

(assert (=> bs!259871 m!1260905))

(assert (=> bs!259871 m!1260905))

(declare-fun m!1261199 () Bool)

(assert (=> bs!259871 m!1261199))

(declare-fun m!1261201 () Bool)

(assert (=> bs!259871 m!1261201))

(assert (=> b!1104275 d!312842))

(declare-fun d!312844 () Bool)

(assert (=> d!312844 (subseq!163 (filter!395 lt!373986 lambda!44016) lt!373986)))

(declare-fun lt!374090 () Unit!16345)

(assert (=> d!312844 (= lt!374090 (choose!7151 lt!373986 lambda!44016))))

(assert (=> d!312844 (= (filterSubseq!53 lt!373986 lambda!44016) lt!374090)))

(declare-fun bs!259872 () Bool)

(assert (= bs!259872 d!312844))

(assert (=> bs!259872 m!1260911))

(assert (=> bs!259872 m!1260911))

(declare-fun m!1261203 () Bool)

(assert (=> bs!259872 m!1261203))

(declare-fun m!1261205 () Bool)

(assert (=> bs!259872 m!1261205))

(assert (=> b!1104275 d!312844))

(declare-fun d!312846 () Bool)

(assert (=> d!312846 (forall!2508 lt!373983 lambda!44015)))

(declare-fun lt!374093 () Unit!16345)

(declare-fun choose!7152 (List!10722 List!10722 Int) Unit!16345)

(assert (=> d!312846 (= lt!374093 (choose!7152 lt!373983 lt!373986 lambda!44015))))

(assert (=> d!312846 (forall!2508 lt!373986 lambda!44015)))

(assert (=> d!312846 (= (lemmaForallSubseq!57 lt!373983 lt!373986 lambda!44015) lt!374093)))

(declare-fun bs!259873 () Bool)

(assert (= bs!259873 d!312846))

(assert (=> bs!259873 m!1260891))

(declare-fun m!1261207 () Bool)

(assert (=> bs!259873 m!1261207))

(assert (=> bs!259873 m!1260897))

(assert (=> b!1104275 d!312846))

(declare-fun d!312848 () Bool)

(declare-fun res!489632 () Bool)

(declare-fun e!699849 () Bool)

(assert (=> d!312848 (=> res!489632 e!699849)))

(assert (=> d!312848 (= res!489632 ((_ is Nil!10706) lt!373983))))

(assert (=> d!312848 (= (forall!2508 lt!373983 lambda!44015) e!699849)))

(declare-fun b!1104481 () Bool)

(declare-fun e!699850 () Bool)

(assert (=> b!1104481 (= e!699849 e!699850)))

(declare-fun res!489633 () Bool)

(assert (=> b!1104481 (=> (not res!489633) (not e!699850))))

(assert (=> b!1104481 (= res!489633 (dynLambda!4734 lambda!44015 (h!16107 lt!373983)))))

(declare-fun b!1104482 () Bool)

(assert (=> b!1104482 (= e!699850 (forall!2508 (t!104654 lt!373983) lambda!44015))))

(assert (= (and d!312848 (not res!489632)) b!1104481))

(assert (= (and b!1104481 res!489633) b!1104482))

(declare-fun b_lambda!32679 () Bool)

(assert (=> (not b_lambda!32679) (not b!1104481)))

(declare-fun m!1261209 () Bool)

(assert (=> b!1104481 m!1261209))

(declare-fun m!1261211 () Bool)

(assert (=> b!1104482 m!1261211))

(assert (=> b!1104275 d!312848))

(assert (=> b!1104275 d!312758))

(declare-fun d!312850 () Bool)

(assert (=> d!312850 (forall!2508 lt!373988 lambda!44015)))

(declare-fun lt!374094 () Unit!16345)

(assert (=> d!312850 (= lt!374094 (choose!7152 lt!373988 lt!373986 lambda!44015))))

(assert (=> d!312850 (forall!2508 lt!373986 lambda!44015)))

(assert (=> d!312850 (= (lemmaForallSubseq!57 lt!373988 lt!373986 lambda!44015) lt!374094)))

(declare-fun bs!259874 () Bool)

(assert (= bs!259874 d!312850))

(assert (=> bs!259874 m!1260889))

(declare-fun m!1261213 () Bool)

(assert (=> bs!259874 m!1261213))

(assert (=> bs!259874 m!1260897))

(assert (=> b!1104275 d!312850))

(declare-fun d!312852 () Bool)

(assert (=> d!312852 (= (list!3866 (filter!396 objs!8 lambda!44018)) (list!3868 (c!187465 (filter!396 objs!8 lambda!44018))))))

(declare-fun bs!259875 () Bool)

(assert (= bs!259875 d!312852))

(declare-fun m!1261215 () Bool)

(assert (=> bs!259875 m!1261215))

(assert (=> b!1104275 d!312852))

(declare-fun d!312854 () Bool)

(assert (=> d!312854 (= (list!3866 (filter!396 objs!8 lambda!44017)) (list!3868 (c!187465 (filter!396 objs!8 lambda!44017))))))

(declare-fun bs!259876 () Bool)

(assert (= bs!259876 d!312854))

(declare-fun m!1261217 () Bool)

(assert (=> bs!259876 m!1261217))

(assert (=> b!1104275 d!312854))

(declare-fun d!312856 () Bool)

(declare-fun res!489634 () Bool)

(declare-fun e!699851 () Bool)

(assert (=> d!312856 (=> res!489634 e!699851)))

(assert (=> d!312856 (= res!489634 ((_ is Nil!10706) lt!373988))))

(assert (=> d!312856 (= (forall!2508 lt!373988 lambda!44015) e!699851)))

(declare-fun b!1104483 () Bool)

(declare-fun e!699852 () Bool)

(assert (=> b!1104483 (= e!699851 e!699852)))

(declare-fun res!489635 () Bool)

(assert (=> b!1104483 (=> (not res!489635) (not e!699852))))

(assert (=> b!1104483 (= res!489635 (dynLambda!4734 lambda!44015 (h!16107 lt!373988)))))

(declare-fun b!1104484 () Bool)

(assert (=> b!1104484 (= e!699852 (forall!2508 (t!104654 lt!373988) lambda!44015))))

(assert (= (and d!312856 (not res!489634)) b!1104483))

(assert (= (and b!1104483 res!489635) b!1104484))

(declare-fun b_lambda!32681 () Bool)

(assert (=> (not b_lambda!32681) (not b!1104483)))

(declare-fun m!1261219 () Bool)

(assert (=> b!1104483 m!1261219))

(declare-fun m!1261221 () Bool)

(assert (=> b!1104484 m!1261221))

(assert (=> b!1104275 d!312856))

(declare-fun d!312858 () Bool)

(assert (=> d!312858 (subseq!163 (filter!395 lt!373986 lambda!44017) lt!373986)))

(declare-fun lt!374095 () Unit!16345)

(assert (=> d!312858 (= lt!374095 (choose!7151 lt!373986 lambda!44017))))

(assert (=> d!312858 (= (filterSubseq!53 lt!373986 lambda!44017) lt!374095)))

(declare-fun bs!259877 () Bool)

(assert (= bs!259877 d!312858))

(declare-fun m!1261223 () Bool)

(assert (=> bs!259877 m!1261223))

(assert (=> bs!259877 m!1261223))

(declare-fun m!1261225 () Bool)

(assert (=> bs!259877 m!1261225))

(declare-fun m!1261227 () Bool)

(assert (=> bs!259877 m!1261227))

(assert (=> b!1104275 d!312858))

(declare-fun d!312860 () Bool)

(declare-fun res!489636 () Bool)

(declare-fun e!699853 () Bool)

(assert (=> d!312860 (=> res!489636 e!699853)))

(assert (=> d!312860 (= res!489636 ((_ is Nil!10706) lt!373986))))

(assert (=> d!312860 (= (forall!2508 lt!373986 lambda!44015) e!699853)))

(declare-fun b!1104485 () Bool)

(declare-fun e!699854 () Bool)

(assert (=> b!1104485 (= e!699853 e!699854)))

(declare-fun res!489637 () Bool)

(assert (=> b!1104485 (=> (not res!489637) (not e!699854))))

(assert (=> b!1104485 (= res!489637 (dynLambda!4734 lambda!44015 (h!16107 lt!373986)))))

(declare-fun b!1104486 () Bool)

(assert (=> b!1104486 (= e!699854 (forall!2508 (t!104654 lt!373986) lambda!44015))))

(assert (= (and d!312860 (not res!489636)) b!1104485))

(assert (= (and b!1104485 res!489637) b!1104486))

(declare-fun b_lambda!32683 () Bool)

(assert (=> (not b_lambda!32683) (not b!1104485)))

(declare-fun m!1261229 () Bool)

(assert (=> b!1104485 m!1261229))

(declare-fun m!1261231 () Bool)

(assert (=> b!1104486 m!1261231))

(assert (=> b!1104275 d!312860))

(declare-fun d!312862 () Bool)

(assert (=> d!312862 (= (list!3866 (filter!396 objs!8 lambda!44016)) (list!3868 (c!187465 (filter!396 objs!8 lambda!44016))))))

(declare-fun bs!259878 () Bool)

(assert (= bs!259878 d!312862))

(declare-fun m!1261233 () Bool)

(assert (=> bs!259878 m!1261233))

(assert (=> b!1104275 d!312862))

(assert (=> b!1104275 d!312754))

(declare-fun d!312864 () Bool)

(declare-fun lt!374096 () Int)

(assert (=> d!312864 (= lt!374096 (size!8323 (list!3866 objs!8)))))

(assert (=> d!312864 (= lt!374096 (size!8326 (c!187465 objs!8)))))

(assert (=> d!312864 (= (size!8324 objs!8) lt!374096)))

(declare-fun bs!259879 () Bool)

(assert (= bs!259879 d!312864))

(assert (=> bs!259879 m!1260865))

(assert (=> bs!259879 m!1260865))

(declare-fun m!1261235 () Bool)

(assert (=> bs!259879 m!1261235))

(declare-fun m!1261237 () Bool)

(assert (=> bs!259879 m!1261237))

(assert (=> b!1104265 d!312864))

(declare-fun d!312866 () Bool)

(assert (=> d!312866 (dynLambda!4734 lambda!44016 lt!373995)))

(declare-fun lt!374097 () Unit!16345)

(assert (=> d!312866 (= lt!374097 (choose!7147 (list!3866 lt!373990) lambda!44016 lt!373995))))

(declare-fun e!699855 () Bool)

(assert (=> d!312866 e!699855))

(declare-fun res!489638 () Bool)

(assert (=> d!312866 (=> (not res!489638) (not e!699855))))

(assert (=> d!312866 (= res!489638 (forall!2508 (list!3866 lt!373990) lambda!44016))))

(assert (=> d!312866 (= (forallContained!538 (list!3866 lt!373990) lambda!44016 lt!373995) lt!374097)))

(declare-fun b!1104487 () Bool)

(assert (=> b!1104487 (= e!699855 (contains!1922 (list!3866 lt!373990) lt!373995))))

(assert (= (and d!312866 res!489638) b!1104487))

(declare-fun b_lambda!32685 () Bool)

(assert (=> (not b_lambda!32685) (not d!312866)))

(declare-fun m!1261239 () Bool)

(assert (=> d!312866 m!1261239))

(assert (=> d!312866 m!1260843))

(declare-fun m!1261241 () Bool)

(assert (=> d!312866 m!1261241))

(assert (=> d!312866 m!1260843))

(declare-fun m!1261243 () Bool)

(assert (=> d!312866 m!1261243))

(assert (=> b!1104487 m!1260843))

(assert (=> b!1104487 m!1260947))

(assert (=> b!1104258 d!312866))

(declare-fun d!312868 () Bool)

(assert (=> d!312868 (= (list!3866 lt!373990) (list!3868 (c!187465 lt!373990)))))

(declare-fun bs!259880 () Bool)

(assert (= bs!259880 d!312868))

(declare-fun m!1261245 () Bool)

(assert (=> bs!259880 m!1261245))

(assert (=> b!1104258 d!312868))

(declare-fun d!312870 () Bool)

(assert (=> d!312870 (= (list!3866 objs!8) (list!3868 (c!187465 objs!8)))))

(declare-fun bs!259881 () Bool)

(assert (= bs!259881 d!312870))

(declare-fun m!1261247 () Bool)

(assert (=> bs!259881 m!1261247))

(assert (=> b!1104269 d!312870))

(declare-fun d!312872 () Bool)

(declare-fun lt!374098 () Int)

(assert (=> d!312872 (= lt!374098 (size!8323 (list!3866 lt!373990)))))

(assert (=> d!312872 (= lt!374098 (size!8326 (c!187465 lt!373990)))))

(assert (=> d!312872 (= (size!8324 lt!373990) lt!374098)))

(declare-fun bs!259882 () Bool)

(assert (= bs!259882 d!312872))

(assert (=> bs!259882 m!1260843))

(assert (=> bs!259882 m!1260843))

(declare-fun m!1261249 () Bool)

(assert (=> bs!259882 m!1261249))

(declare-fun m!1261251 () Bool)

(assert (=> bs!259882 m!1261251))

(assert (=> b!1104269 d!312872))

(declare-fun d!312874 () Bool)

(declare-fun lt!374099 () Bool)

(assert (=> d!312874 (= lt!374099 (forall!2508 (list!3866 objs!8) lambda!44016))))

(assert (=> d!312874 (= lt!374099 (forall!2510 (c!187465 objs!8) lambda!44016))))

(assert (=> d!312874 (= (forall!2507 objs!8 lambda!44016) lt!374099)))

(declare-fun bs!259883 () Bool)

(assert (= bs!259883 d!312874))

(assert (=> bs!259883 m!1260865))

(assert (=> bs!259883 m!1260865))

(declare-fun m!1261253 () Bool)

(assert (=> bs!259883 m!1261253))

(declare-fun m!1261255 () Bool)

(assert (=> bs!259883 m!1261255))

(assert (=> b!1104269 d!312874))

(declare-fun d!312876 () Bool)

(declare-fun e!699856 () Bool)

(assert (=> d!312876 e!699856))

(declare-fun res!489639 () Bool)

(assert (=> d!312876 (=> res!489639 e!699856)))

(assert (=> d!312876 (= res!489639 (isEmpty!6709 lt!373986))))

(declare-fun lt!374100 () Unit!16345)

(assert (=> d!312876 (= lt!374100 (choose!7150 lt!373986 lambda!44016))))

(assert (=> d!312876 (not (forall!2508 lt!373986 lambda!44016))))

(assert (=> d!312876 (= (lemmaNotForallFilterShorter!71 lt!373986 lambda!44016) lt!374100)))

(declare-fun b!1104488 () Bool)

(assert (=> b!1104488 (= e!699856 (< (size!8323 (filter!395 lt!373986 lambda!44016)) (size!8323 lt!373986)))))

(assert (= (and d!312876 (not res!489639)) b!1104488))

(assert (=> d!312876 m!1260867))

(declare-fun m!1261257 () Bool)

(assert (=> d!312876 m!1261257))

(declare-fun m!1261259 () Bool)

(assert (=> d!312876 m!1261259))

(assert (=> b!1104488 m!1260911))

(assert (=> b!1104488 m!1260911))

(assert (=> b!1104488 m!1260913))

(assert (=> b!1104488 m!1260909))

(assert (=> b!1104269 d!312876))

(declare-fun d!312878 () Bool)

(assert (=> d!312878 (= (isEmpty!6709 lt!373986) ((_ is Nil!10706) lt!373986))))

(assert (=> b!1104269 d!312878))

(declare-fun d!312880 () Bool)

(assert (=> d!312880 (dynLambda!4734 lambda!44016 lt!373995)))

(declare-fun lt!374101 () Unit!16345)

(assert (=> d!312880 (= lt!374101 (choose!7147 (list!3866 objs!8) lambda!44016 lt!373995))))

(declare-fun e!699857 () Bool)

(assert (=> d!312880 e!699857))

(declare-fun res!489640 () Bool)

(assert (=> d!312880 (=> (not res!489640) (not e!699857))))

(assert (=> d!312880 (= res!489640 (forall!2508 (list!3866 objs!8) lambda!44016))))

(assert (=> d!312880 (= (forallContained!538 (list!3866 objs!8) lambda!44016 lt!373995) lt!374101)))

(declare-fun b!1104489 () Bool)

(assert (=> b!1104489 (= e!699857 (contains!1922 (list!3866 objs!8) lt!373995))))

(assert (= (and d!312880 res!489640) b!1104489))

(declare-fun b_lambda!32687 () Bool)

(assert (=> (not b_lambda!32687) (not d!312880)))

(assert (=> d!312880 m!1261239))

(assert (=> d!312880 m!1260865))

(declare-fun m!1261261 () Bool)

(assert (=> d!312880 m!1261261))

(assert (=> d!312880 m!1260865))

(assert (=> d!312880 m!1261253))

(assert (=> b!1104489 m!1260865))

(assert (=> b!1104489 m!1260995))

(assert (=> b!1104268 d!312880))

(assert (=> b!1104268 d!312870))

(declare-fun d!312882 () Bool)

(declare-fun c!187499 () Bool)

(assert (=> d!312882 (= c!187499 ((_ is Node!3361) (c!187465 objs!8)))))

(declare-fun e!699862 () Bool)

(assert (=> d!312882 (= (inv!13767 (c!187465 objs!8)) e!699862)))

(declare-fun b!1104496 () Bool)

(declare-fun inv!13772 (Conc!3361) Bool)

(assert (=> b!1104496 (= e!699862 (inv!13772 (c!187465 objs!8)))))

(declare-fun b!1104497 () Bool)

(declare-fun e!699863 () Bool)

(assert (=> b!1104497 (= e!699862 e!699863)))

(declare-fun res!489643 () Bool)

(assert (=> b!1104497 (= res!489643 (not ((_ is Leaf!5289) (c!187465 objs!8))))))

(assert (=> b!1104497 (=> res!489643 e!699863)))

(declare-fun b!1104498 () Bool)

(declare-fun inv!13773 (Conc!3361) Bool)

(assert (=> b!1104498 (= e!699863 (inv!13773 (c!187465 objs!8)))))

(assert (= (and d!312882 c!187499) b!1104496))

(assert (= (and d!312882 (not c!187499)) b!1104497))

(assert (= (and b!1104497 (not res!489643)) b!1104498))

(declare-fun m!1261263 () Bool)

(assert (=> b!1104496 m!1261263))

(declare-fun m!1261265 () Bool)

(assert (=> b!1104498 m!1261265))

(assert (=> b!1104257 d!312882))

(declare-fun b!1104509 () Bool)

(declare-fun e!699872 () Bool)

(assert (=> b!1104509 (= e!699872 true)))

(declare-fun b!1104508 () Bool)

(declare-fun e!699871 () Bool)

(assert (=> b!1104508 (= e!699871 e!699872)))

(declare-fun b!1104507 () Bool)

(declare-fun e!699870 () Bool)

(assert (=> b!1104507 (= e!699870 e!699871)))

(assert (=> b!1104282 e!699870))

(assert (= b!1104508 b!1104509))

(assert (= b!1104507 b!1104508))

(assert (= (and b!1104282 ((_ is Cons!10705) (rules!9131 (_2!6733 lt!373995)))) b!1104507))

(declare-fun order!6581 () Int)

(declare-fun order!6579 () Int)

(declare-fun dynLambda!4738 (Int Int) Int)

(declare-fun dynLambda!4739 (Int Int) Int)

(assert (=> b!1104509 (< (dynLambda!4738 order!6579 (toValue!2921 (transformation!1844 (h!16106 (rules!9131 (_2!6733 lt!373995)))))) (dynLambda!4739 order!6581 lambda!44016))))

(declare-fun order!6583 () Int)

(declare-fun dynLambda!4740 (Int Int) Int)

(assert (=> b!1104509 (< (dynLambda!4740 order!6583 (toChars!2780 (transformation!1844 (h!16106 (rules!9131 (_2!6733 lt!373995)))))) (dynLambda!4739 order!6581 lambda!44016))))

(declare-fun b!1104512 () Bool)

(declare-fun e!699875 () Bool)

(assert (=> b!1104512 (= e!699875 true)))

(declare-fun b!1104511 () Bool)

(declare-fun e!699874 () Bool)

(assert (=> b!1104511 (= e!699874 e!699875)))

(declare-fun b!1104510 () Bool)

(declare-fun e!699873 () Bool)

(assert (=> b!1104510 (= e!699873 e!699874)))

(assert (=> b!1104284 e!699873))

(assert (= b!1104511 b!1104512))

(assert (= b!1104510 b!1104511))

(assert (= (and b!1104284 ((_ is Cons!10705) (rules!9131 (_2!6733 lt!373995)))) b!1104510))

(assert (=> b!1104512 (< (dynLambda!4738 order!6579 (toValue!2921 (transformation!1844 (h!16106 (rules!9131 (_2!6733 lt!373995)))))) (dynLambda!4739 order!6581 lambda!44017))))

(assert (=> b!1104512 (< (dynLambda!4740 order!6583 (toChars!2780 (transformation!1844 (h!16106 (rules!9131 (_2!6733 lt!373995)))))) (dynLambda!4739 order!6581 lambda!44017))))

(declare-fun b!1104515 () Bool)

(declare-fun e!699878 () Bool)

(assert (=> b!1104515 (= e!699878 true)))

(declare-fun b!1104514 () Bool)

(declare-fun e!699877 () Bool)

(assert (=> b!1104514 (= e!699877 e!699878)))

(declare-fun b!1104513 () Bool)

(declare-fun e!699876 () Bool)

(assert (=> b!1104513 (= e!699876 e!699877)))

(assert (=> b!1104286 e!699876))

(assert (= b!1104514 b!1104515))

(assert (= b!1104513 b!1104514))

(assert (= (and b!1104286 ((_ is Cons!10705) (rules!9131 (_2!6733 lt!373995)))) b!1104513))

(assert (=> b!1104515 (< (dynLambda!4738 order!6579 (toValue!2921 (transformation!1844 (h!16106 (rules!9131 (_2!6733 lt!373995)))))) (dynLambda!4739 order!6581 lambda!44018))))

(assert (=> b!1104515 (< (dynLambda!4740 order!6583 (toChars!2780 (transformation!1844 (h!16106 (rules!9131 (_2!6733 lt!373995)))))) (dynLambda!4739 order!6581 lambda!44018))))

(declare-fun b!1104524 () Bool)

(declare-fun e!699883 () Bool)

(assert (=> b!1104524 (= e!699883 true)))

(declare-fun b!1104526 () Bool)

(declare-fun e!699884 () Bool)

(assert (=> b!1104526 (= e!699884 true)))

(declare-fun b!1104525 () Bool)

(assert (=> b!1104525 (= e!699883 e!699884)))

(assert (=> b!1104287 e!699883))

(assert (= (and b!1104287 ((_ is Node!3360) (c!187464 (tokens!1403 (_2!6733 lt!373995))))) b!1104524))

(assert (= b!1104525 b!1104526))

(assert (= (and b!1104287 ((_ is Leaf!5288) (c!187464 (tokens!1403 (_2!6733 lt!373995))))) b!1104525))

(declare-fun b!1104527 () Bool)

(declare-fun e!699885 () Bool)

(assert (=> b!1104527 (= e!699885 true)))

(declare-fun b!1104529 () Bool)

(declare-fun e!699886 () Bool)

(assert (=> b!1104529 (= e!699886 true)))

(declare-fun b!1104528 () Bool)

(assert (=> b!1104528 (= e!699885 e!699886)))

(assert (=> b!1104283 e!699885))

(assert (= (and b!1104283 ((_ is Node!3360) (c!187464 (tokens!1403 (_2!6733 lt!373995))))) b!1104527))

(assert (= b!1104528 b!1104529))

(assert (= (and b!1104283 ((_ is Leaf!5288) (c!187464 (tokens!1403 (_2!6733 lt!373995))))) b!1104528))

(declare-fun tp!327277 () Bool)

(declare-fun tp!327278 () Bool)

(declare-fun e!699892 () Bool)

(declare-fun b!1104538 () Bool)

(assert (=> b!1104538 (= e!699892 (and (inv!13767 (left!9290 (c!187465 objs!8))) tp!327277 (inv!13767 (right!9620 (c!187465 objs!8))) tp!327278))))

(declare-fun b!1104540 () Bool)

(declare-fun e!699891 () Bool)

(declare-fun tp!327276 () Bool)

(assert (=> b!1104540 (= e!699891 tp!327276)))

(declare-fun b!1104539 () Bool)

(declare-fun inv!13774 (IArray!6727) Bool)

(assert (=> b!1104539 (= e!699892 (and (inv!13774 (xs!6054 (c!187465 objs!8))) e!699891))))

(assert (=> b!1104257 (= tp!327260 (and (inv!13767 (c!187465 objs!8)) e!699892))))

(assert (= (and b!1104257 ((_ is Node!3361) (c!187465 objs!8))) b!1104538))

(assert (= b!1104539 b!1104540))

(assert (= (and b!1104257 ((_ is Leaf!5289) (c!187465 objs!8))) b!1104539))

(declare-fun m!1261267 () Bool)

(assert (=> b!1104538 m!1261267))

(declare-fun m!1261269 () Bool)

(assert (=> b!1104538 m!1261269))

(declare-fun m!1261271 () Bool)

(assert (=> b!1104539 m!1261271))

(assert (=> b!1104257 m!1260847))

(declare-fun b!1104541 () Bool)

(declare-fun e!699893 () Bool)

(assert (=> b!1104541 (= e!699893 true)))

(declare-fun b!1104543 () Bool)

(declare-fun e!699894 () Bool)

(assert (=> b!1104543 (= e!699894 true)))

(declare-fun b!1104542 () Bool)

(assert (=> b!1104542 (= e!699893 e!699894)))

(assert (=> b!1104285 e!699893))

(assert (= (and b!1104285 ((_ is Node!3360) (c!187464 (tokens!1403 (_2!6733 lt!373995))))) b!1104541))

(assert (= b!1104542 b!1104543))

(assert (= (and b!1104285 ((_ is Leaf!5288) (c!187464 (tokens!1403 (_2!6733 lt!373995))))) b!1104542))

(declare-fun b_lambda!32689 () Bool)

(assert (= b_lambda!32657 (or b!1104270 b_lambda!32689)))

(declare-fun bs!259884 () Bool)

(declare-fun d!312884 () Bool)

(assert (= bs!259884 (and d!312884 b!1104270)))

(assert (=> bs!259884 (= (dynLambda!4734 lambda!44018 lt!373995) (> (_1!6733 lt!373995) (_1!6733 lt!373995)))))

(assert (=> d!312814 d!312884))

(declare-fun b_lambda!32691 () Bool)

(assert (= b_lambda!32635 (or b!1104270 b_lambda!32691)))

(assert (=> d!312706 d!312884))

(declare-fun b_lambda!32693 () Bool)

(assert (= b_lambda!32655 (or b!1104270 b_lambda!32693)))

(declare-fun bs!259885 () Bool)

(declare-fun d!312886 () Bool)

(assert (= bs!259885 (and d!312886 b!1104270)))

(assert (=> bs!259885 (= (dynLambda!4734 lambda!44016 (h!16107 lt!373986)) (< (_1!6733 (h!16107 lt!373986)) (_1!6733 lt!373995)))))

(assert (=> b!1104414 d!312886))

(declare-fun b_lambda!32695 () Bool)

(assert (= b_lambda!32679 (or start!95238 b_lambda!32695)))

(declare-fun bs!259886 () Bool)

(declare-fun d!312888 () Bool)

(assert (= bs!259886 (and d!312888 start!95238)))

(declare-fun usesJsonRules!0 (PrintableTokens!404) Bool)

(assert (=> bs!259886 (= (dynLambda!4734 lambda!44015 (h!16107 lt!373983)) (usesJsonRules!0 (_2!6733 (h!16107 lt!373983))))))

(declare-fun m!1261273 () Bool)

(assert (=> bs!259886 m!1261273))

(assert (=> b!1104481 d!312888))

(declare-fun b_lambda!32697 () Bool)

(assert (= b_lambda!32683 (or start!95238 b_lambda!32697)))

(declare-fun bs!259887 () Bool)

(declare-fun d!312890 () Bool)

(assert (= bs!259887 (and d!312890 start!95238)))

(assert (=> bs!259887 (= (dynLambda!4734 lambda!44015 (h!16107 lt!373986)) (usesJsonRules!0 (_2!6733 (h!16107 lt!373986))))))

(declare-fun m!1261275 () Bool)

(assert (=> bs!259887 m!1261275))

(assert (=> b!1104485 d!312890))

(declare-fun b_lambda!32699 () Bool)

(assert (= b_lambda!32677 (or b!1104270 b_lambda!32699)))

(declare-fun bs!259888 () Bool)

(declare-fun d!312892 () Bool)

(assert (= bs!259888 (and d!312892 b!1104270)))

(assert (=> bs!259888 (= (dynLambda!4734 lambda!44018 (h!16107 lt!373986)) (> (_1!6733 (h!16107 lt!373986)) (_1!6733 lt!373995)))))

(assert (=> b!1104473 d!312892))

(declare-fun b_lambda!32701 () Bool)

(assert (= b_lambda!32685 (or b!1104270 b_lambda!32701)))

(declare-fun bs!259889 () Bool)

(declare-fun d!312894 () Bool)

(assert (= bs!259889 (and d!312894 b!1104270)))

(assert (=> bs!259889 (= (dynLambda!4734 lambda!44016 lt!373995) (< (_1!6733 lt!373995) (_1!6733 lt!373995)))))

(assert (=> d!312866 d!312894))

(declare-fun b_lambda!32703 () Bool)

(assert (= b_lambda!32681 (or start!95238 b_lambda!32703)))

(declare-fun bs!259890 () Bool)

(declare-fun d!312896 () Bool)

(assert (= bs!259890 (and d!312896 start!95238)))

(assert (=> bs!259890 (= (dynLambda!4734 lambda!44015 (h!16107 lt!373988)) (usesJsonRules!0 (_2!6733 (h!16107 lt!373988))))))

(declare-fun m!1261277 () Bool)

(assert (=> bs!259890 m!1261277))

(assert (=> b!1104483 d!312896))

(declare-fun b_lambda!32705 () Bool)

(assert (= b_lambda!32687 (or b!1104270 b_lambda!32705)))

(assert (=> d!312880 d!312894))

(check-sat (not b_lambda!32701) (not d!312876) (not d!312858) (not b!1104539) (not d!312862) (not d!312704) (not b!1104527) (not b!1104308) (not d!312846) (not b!1104488) (not b_lambda!32693) (not d!312768) (not d!312872) (not b_lambda!32689) (not d!312842) (not b!1104507) (not d!312864) (not b!1104543) (not b!1104358) (not b!1104496) (not d!312850) (not b!1104524) (not b!1104257) (not d!312866) (not d!312880) (not b!1104416) (not b!1104470) (not d!312868) (not b!1104498) (not b_lambda!32705) (not d!312870) (not d!312814) (not b!1104363) (not b!1104468) (not d!312740) (not b!1104538) (not b!1104440) (not b!1104472) (not d!312852) (not d!312854) (not b!1104347) (not b!1104540) (not bm!80489) (not b!1104482) (not d!312836) (not d!312874) (not b!1104475) (not b_lambda!32691) (not b!1104526) (not b!1104486) (not b!1104307) (not d!312738) (not d!312714) (not b_lambda!32695) (not b!1104290) (not d!312706) (not bs!259887) (not b!1104487) (not d!312758) (not b!1104413) (not bs!259886) (not d!312702) (not d!312816) (not d!312754) (not b!1104437) (not b_lambda!32697) (not b_lambda!32703) (not b!1104361) (not b!1104369) (not b!1104510) (not d!312834) (not bm!80488) (not b!1104489) (not d!312818) (not d!312844) (not d!312840) (not b!1104529) (not b_lambda!32699) (not d!312812) (not bs!259890) (not b!1104541) (not b!1104484) (not b!1104513) (not d!312720))
(check-sat)
