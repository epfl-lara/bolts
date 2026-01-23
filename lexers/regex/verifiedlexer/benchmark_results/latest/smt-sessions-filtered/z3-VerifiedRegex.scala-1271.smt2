; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66148 () Bool)

(assert start!66148)

(declare-fun b!691654 () Bool)

(declare-fun b_free!19601 () Bool)

(declare-fun b_next!19665 () Bool)

(assert (=> b!691654 (= b_free!19601 (not b_next!19665))))

(declare-fun tp!208374 () Bool)

(declare-fun b_and!63395 () Bool)

(assert (=> b!691654 (= tp!208374 b_and!63395)))

(declare-fun b_free!19603 () Bool)

(declare-fun b_next!19667 () Bool)

(assert (=> b!691654 (= b_free!19603 (not b_next!19667))))

(declare-fun tp!208373 () Bool)

(declare-fun b_and!63397 () Bool)

(assert (=> b!691654 (= tp!208373 b_and!63397)))

(declare-fun b!691648 () Bool)

(declare-fun e!435089 () Bool)

(declare-datatypes ((C!4276 0))(
  ( (C!4277 (val!2368 Int)) )
))
(declare-datatypes ((List!7487 0))(
  ( (Nil!7473) (Cons!7473 (h!12874 C!4276) (t!87305 List!7487)) )
))
(declare-datatypes ((IArray!5275 0))(
  ( (IArray!5276 (innerList!2695 List!7487)) )
))
(declare-datatypes ((Conc!2637 0))(
  ( (Node!2637 (left!5988 Conc!2637) (right!6318 Conc!2637) (csize!5504 Int) (cheight!2848 Int)) (Leaf!3909 (xs!5288 IArray!5275) (csize!5505 Int)) (Empty!2637) )
))
(declare-datatypes ((BalanceConc!5286 0))(
  ( (BalanceConc!5287 (c!121591 Conc!2637)) )
))
(declare-fun treated!50 () BalanceConc!5286)

(declare-fun tp!208375 () Bool)

(declare-fun inv!9580 (Conc!2637) Bool)

(assert (=> b!691648 (= e!435089 (and (inv!9580 (c!121591 treated!50)) tp!208375))))

(declare-fun b!691649 () Bool)

(declare-fun res!313606 () Bool)

(declare-fun e!435095 () Bool)

(assert (=> b!691649 (=> (not res!313606) (not e!435095))))

(declare-fun totalInput!378 () BalanceConc!5286)

(declare-fun input!870 () BalanceConc!5286)

(declare-fun list!3137 (BalanceConc!5286) List!7487)

(declare-fun ++!1949 (List!7487 List!7487) List!7487)

(assert (=> b!691649 (= res!313606 (= (list!3137 totalInput!378) (++!1949 (list!3137 treated!50) (list!3137 input!870))))))

(declare-fun b!691650 () Bool)

(declare-fun e!435091 () Bool)

(declare-fun tp!208368 () Bool)

(assert (=> b!691650 (= e!435091 (and (inv!9580 (c!121591 input!870)) tp!208368))))

(declare-fun b!691651 () Bool)

(declare-fun res!313608 () Bool)

(assert (=> b!691651 (=> (not res!313608) (not e!435095))))

(declare-datatypes ((LexerInterface!1313 0))(
  ( (LexerInterfaceExt!1310 (__x!5393 Int)) (Lexer!1311) )
))
(declare-fun thiss!12529 () LexerInterface!1313)

(declare-datatypes ((List!7488 0))(
  ( (Nil!7474) (Cons!7474 (h!12875 (_ BitVec 16)) (t!87306 List!7488)) )
))
(declare-datatypes ((TokenValue!1543 0))(
  ( (FloatLiteralValue!3086 (text!11246 List!7488)) (TokenValueExt!1542 (__x!5394 Int)) (Broken!7715 (value!48359 List!7488)) (Object!1556) (End!1543) (Def!1543) (Underscore!1543) (Match!1543) (Else!1543) (Error!1543) (Case!1543) (If!1543) (Extends!1543) (Abstract!1543) (Class!1543) (Val!1543) (DelimiterValue!3086 (del!1603 List!7488)) (KeywordValue!1549 (value!48360 List!7488)) (CommentValue!3086 (value!48361 List!7488)) (WhitespaceValue!3086 (value!48362 List!7488)) (IndentationValue!1543 (value!48363 List!7488)) (String!9438) (Int32!1543) (Broken!7716 (value!48364 List!7488)) (Boolean!1544) (Unit!12644) (OperatorValue!1546 (op!1603 List!7488)) (IdentifierValue!3086 (value!48365 List!7488)) (IdentifierValue!3087 (value!48366 List!7488)) (WhitespaceValue!3087 (value!48367 List!7488)) (True!3086) (False!3086) (Broken!7717 (value!48368 List!7488)) (Broken!7718 (value!48369 List!7488)) (True!3087) (RightBrace!1543) (RightBracket!1543) (Colon!1543) (Null!1543) (Comma!1543) (LeftBracket!1543) (False!3087) (LeftBrace!1543) (ImaginaryLiteralValue!1543 (text!11247 List!7488)) (StringLiteralValue!4629 (value!48370 List!7488)) (EOFValue!1543 (value!48371 List!7488)) (IdentValue!1543 (value!48372 List!7488)) (DelimiterValue!3087 (value!48373 List!7488)) (DedentValue!1543 (value!48374 List!7488)) (NewLineValue!1543 (value!48375 List!7488)) (IntegerValue!4629 (value!48376 (_ BitVec 32)) (text!11248 List!7488)) (IntegerValue!4630 (value!48377 Int) (text!11249 List!7488)) (Times!1543) (Or!1543) (Equal!1543) (Minus!1543) (Broken!7719 (value!48378 List!7488)) (And!1543) (Div!1543) (LessEqual!1543) (Mod!1543) (Concat!3380) (Not!1543) (Plus!1543) (SpaceValue!1543 (value!48379 List!7488)) (IntegerValue!4631 (value!48380 Int) (text!11250 List!7488)) (StringLiteralValue!4630 (text!11251 List!7488)) (FloatLiteralValue!3087 (text!11252 List!7488)) (BytesLiteralValue!1543 (value!48381 List!7488)) (CommentValue!3087 (value!48382 List!7488)) (StringLiteralValue!4631 (value!48383 List!7488)) (ErrorTokenValue!1543 (msg!1604 List!7488)) )
))
(declare-datatypes ((Regex!1837 0))(
  ( (ElementMatch!1837 (c!121592 C!4276)) (Concat!3381 (regOne!4186 Regex!1837) (regTwo!4186 Regex!1837)) (EmptyExpr!1837) (Star!1837 (reg!2166 Regex!1837)) (EmptyLang!1837) (Union!1837 (regOne!4187 Regex!1837) (regTwo!4187 Regex!1837)) )
))
(declare-datatypes ((String!9439 0))(
  ( (String!9440 (value!48384 String)) )
))
(declare-datatypes ((TokenValueInjection!2822 0))(
  ( (TokenValueInjection!2823 (toValue!2461 Int) (toChars!2320 Int)) )
))
(declare-datatypes ((Rule!2798 0))(
  ( (Rule!2799 (regex!1499 Regex!1837) (tag!1761 String!9439) (isSeparator!1499 Bool) (transformation!1499 TokenValueInjection!2822)) )
))
(declare-datatypes ((List!7489 0))(
  ( (Nil!7475) (Cons!7475 (h!12876 Rule!2798) (t!87307 List!7489)) )
))
(declare-fun rules!1486 () List!7489)

(declare-fun rulesInvariant!1246 (LexerInterface!1313 List!7489) Bool)

(assert (=> b!691651 (= res!313608 (rulesInvariant!1246 thiss!12529 rules!1486))))

(declare-fun b!691653 () Bool)

(declare-fun e!435092 () Bool)

(declare-datatypes ((Token!2698 0))(
  ( (Token!2699 (value!48385 TokenValue!1543) (rule!2538 Rule!2798) (size!6122 Int) (originalCharacters!1774 List!7487)) )
))
(declare-datatypes ((List!7490 0))(
  ( (Nil!7476) (Cons!7476 (h!12877 Token!2698) (t!87308 List!7490)) )
))
(declare-datatypes ((IArray!5277 0))(
  ( (IArray!5278 (innerList!2696 List!7490)) )
))
(declare-datatypes ((Conc!2638 0))(
  ( (Node!2638 (left!5989 Conc!2638) (right!6319 Conc!2638) (csize!5506 Int) (cheight!2849 Int)) (Leaf!3910 (xs!5289 IArray!5277) (csize!5507 Int)) (Empty!2638) )
))
(declare-datatypes ((BalanceConc!5288 0))(
  ( (BalanceConc!5289 (c!121593 Conc!2638)) )
))
(declare-fun acc!372 () BalanceConc!5288)

(declare-fun tp!208369 () Bool)

(declare-fun inv!9581 (Conc!2638) Bool)

(assert (=> b!691653 (= e!435092 (and (inv!9581 (c!121593 acc!372)) tp!208369))))

(declare-fun b!691652 () Bool)

(declare-fun e!435090 () Bool)

(declare-fun e!435094 () Bool)

(declare-fun tp!208372 () Bool)

(assert (=> b!691652 (= e!435090 (and e!435094 tp!208372))))

(declare-fun res!313605 () Bool)

(assert (=> start!66148 (=> (not res!313605) (not e!435095))))

(get-info :version)

(assert (=> start!66148 (= res!313605 ((_ is Lexer!1311) thiss!12529))))

(assert (=> start!66148 e!435095))

(declare-fun inv!9582 (BalanceConc!5288) Bool)

(assert (=> start!66148 (and (inv!9582 acc!372) e!435092)))

(declare-fun inv!9583 (BalanceConc!5286) Bool)

(assert (=> start!66148 (and (inv!9583 treated!50) e!435089)))

(declare-fun e!435088 () Bool)

(assert (=> start!66148 (and (inv!9583 totalInput!378) e!435088)))

(assert (=> start!66148 (and (inv!9583 input!870) e!435091)))

(assert (=> start!66148 e!435090))

(assert (=> start!66148 true))

(declare-fun e!435096 () Bool)

(assert (=> b!691654 (= e!435096 (and tp!208374 tp!208373))))

(declare-fun tp!208371 () Bool)

(declare-fun b!691655 () Bool)

(declare-fun inv!9574 (String!9439) Bool)

(declare-fun inv!9584 (TokenValueInjection!2822) Bool)

(assert (=> b!691655 (= e!435094 (and tp!208371 (inv!9574 (tag!1761 (h!12876 rules!1486))) (inv!9584 (transformation!1499 (h!12876 rules!1486))) e!435096))))

(declare-fun b!691656 () Bool)

(declare-fun tp!208370 () Bool)

(assert (=> b!691656 (= e!435088 (and (inv!9580 (c!121591 totalInput!378)) tp!208370))))

(declare-fun b!691657 () Bool)

(declare-fun res!313607 () Bool)

(assert (=> b!691657 (=> (not res!313607) (not e!435095))))

(declare-fun isEmpty!4869 (List!7489) Bool)

(assert (=> b!691657 (= res!313607 (not (isEmpty!4869 rules!1486)))))

(declare-fun b!691658 () Bool)

(assert (=> b!691658 (= e!435095 false)))

(declare-fun lt!284758 () List!7490)

(declare-fun list!3138 (BalanceConc!5288) List!7490)

(assert (=> b!691658 (= lt!284758 (list!3138 acc!372))))

(declare-fun lt!284757 () List!7490)

(declare-datatypes ((tuple2!7876 0))(
  ( (tuple2!7877 (_1!4353 BalanceConc!5288) (_2!4353 BalanceConc!5286)) )
))
(declare-fun lexRec!156 (LexerInterface!1313 List!7489 BalanceConc!5286) tuple2!7876)

(assert (=> b!691658 (= lt!284757 (list!3138 (_1!4353 (lexRec!156 thiss!12529 rules!1486 treated!50))))))

(assert (= (and start!66148 res!313605) b!691657))

(assert (= (and b!691657 res!313607) b!691651))

(assert (= (and b!691651 res!313608) b!691649))

(assert (= (and b!691649 res!313606) b!691658))

(assert (= start!66148 b!691653))

(assert (= start!66148 b!691648))

(assert (= start!66148 b!691656))

(assert (= start!66148 b!691650))

(assert (= b!691655 b!691654))

(assert (= b!691652 b!691655))

(assert (= (and start!66148 ((_ is Cons!7475) rules!1486)) b!691652))

(declare-fun m!947768 () Bool)

(assert (=> b!691651 m!947768))

(declare-fun m!947770 () Bool)

(assert (=> b!691649 m!947770))

(declare-fun m!947772 () Bool)

(assert (=> b!691649 m!947772))

(declare-fun m!947774 () Bool)

(assert (=> b!691649 m!947774))

(assert (=> b!691649 m!947772))

(assert (=> b!691649 m!947774))

(declare-fun m!947776 () Bool)

(assert (=> b!691649 m!947776))

(declare-fun m!947778 () Bool)

(assert (=> b!691655 m!947778))

(declare-fun m!947780 () Bool)

(assert (=> b!691655 m!947780))

(declare-fun m!947782 () Bool)

(assert (=> b!691653 m!947782))

(declare-fun m!947784 () Bool)

(assert (=> b!691648 m!947784))

(declare-fun m!947786 () Bool)

(assert (=> b!691656 m!947786))

(declare-fun m!947788 () Bool)

(assert (=> b!691657 m!947788))

(declare-fun m!947790 () Bool)

(assert (=> start!66148 m!947790))

(declare-fun m!947792 () Bool)

(assert (=> start!66148 m!947792))

(declare-fun m!947794 () Bool)

(assert (=> start!66148 m!947794))

(declare-fun m!947796 () Bool)

(assert (=> start!66148 m!947796))

(declare-fun m!947798 () Bool)

(assert (=> b!691650 m!947798))

(declare-fun m!947800 () Bool)

(assert (=> b!691658 m!947800))

(declare-fun m!947802 () Bool)

(assert (=> b!691658 m!947802))

(declare-fun m!947804 () Bool)

(assert (=> b!691658 m!947804))

(check-sat (not b!691650) b_and!63397 (not start!66148) (not b!691652) b_and!63395 (not b!691658) (not b!691648) (not b!691656) (not b!691653) (not b!691649) (not b_next!19667) (not b!691651) (not b!691655) (not b!691657) (not b_next!19665))
(check-sat b_and!63397 b_and!63395 (not b_next!19667) (not b_next!19665))
