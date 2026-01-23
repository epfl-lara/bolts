; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!145522 () Bool)

(assert start!145522)

(declare-fun res!697560 () Bool)

(declare-fun e!1004999 () Bool)

(assert (=> start!145522 (=> (not res!697560) (not e!1004999))))

(declare-datatypes ((List!17074 0))(
  ( (Nil!17004) (Cons!17004 (h!22405 (_ BitVec 16)) (t!141701 List!17074)) )
))
(declare-datatypes ((TokenValue!3068 0))(
  ( (FloatLiteralValue!6136 (text!21921 List!17074)) (TokenValueExt!3067 (__x!11438 Int)) (Broken!15340 (value!94521 List!17074)) (Object!3137) (End!3068) (Def!3068) (Underscore!3068) (Match!3068) (Else!3068) (Error!3068) (Case!3068) (If!3068) (Extends!3068) (Abstract!3068) (Class!3068) (Val!3068) (DelimiterValue!6136 (del!3128 List!17074)) (KeywordValue!3074 (value!94522 List!17074)) (CommentValue!6136 (value!94523 List!17074)) (WhitespaceValue!6136 (value!94524 List!17074)) (IndentationValue!3068 (value!94525 List!17074)) (String!19673) (Int32!3068) (Broken!15341 (value!94526 List!17074)) (Boolean!3069) (Unit!26187) (OperatorValue!3071 (op!3128 List!17074)) (IdentifierValue!6136 (value!94527 List!17074)) (IdentifierValue!6137 (value!94528 List!17074)) (WhitespaceValue!6137 (value!94529 List!17074)) (True!6136) (False!6136) (Broken!15342 (value!94530 List!17074)) (Broken!15343 (value!94531 List!17074)) (True!6137) (RightBrace!3068) (RightBracket!3068) (Colon!3068) (Null!3068) (Comma!3068) (LeftBracket!3068) (False!6137) (LeftBrace!3068) (ImaginaryLiteralValue!3068 (text!21922 List!17074)) (StringLiteralValue!9204 (value!94532 List!17074)) (EOFValue!3068 (value!94533 List!17074)) (IdentValue!3068 (value!94534 List!17074)) (DelimiterValue!6137 (value!94535 List!17074)) (DedentValue!3068 (value!94536 List!17074)) (NewLineValue!3068 (value!94537 List!17074)) (IntegerValue!9204 (value!94538 (_ BitVec 32)) (text!21923 List!17074)) (IntegerValue!9205 (value!94539 Int) (text!21924 List!17074)) (Times!3068) (Or!3068) (Equal!3068) (Minus!3068) (Broken!15344 (value!94540 List!17074)) (And!3068) (Div!3068) (LessEqual!3068) (Mod!3068) (Concat!7374) (Not!3068) (Plus!3068) (SpaceValue!3068 (value!94541 List!17074)) (IntegerValue!9206 (value!94542 Int) (text!21925 List!17074)) (StringLiteralValue!9205 (text!21926 List!17074)) (FloatLiteralValue!6137 (text!21927 List!17074)) (BytesLiteralValue!3068 (value!94543 List!17074)) (CommentValue!6137 (value!94544 List!17074)) (StringLiteralValue!9206 (value!94545 List!17074)) (ErrorTokenValue!3068 (msg!3129 List!17074)) )
))
(declare-datatypes ((C!8786 0))(
  ( (C!8787 (val!4989 Int)) )
))
(declare-datatypes ((List!17075 0))(
  ( (Nil!17005) (Cons!17005 (h!22406 C!8786) (t!141702 List!17075)) )
))
(declare-datatypes ((IArray!11213 0))(
  ( (IArray!11214 (innerList!5664 List!17075)) )
))
(declare-datatypes ((Conc!5604 0))(
  ( (Node!5604 (left!13787 Conc!5604) (right!14117 Conc!5604) (csize!11438 Int) (cheight!5815 Int)) (Leaf!8314 (xs!8404 IArray!11213) (csize!11439 Int)) (Empty!5604) )
))
(declare-datatypes ((BalanceConc!11152 0))(
  ( (BalanceConc!11153 (c!253583 Conc!5604)) )
))
(declare-datatypes ((Regex!4306 0))(
  ( (ElementMatch!4306 (c!253584 C!8786)) (Concat!7375 (regOne!9124 Regex!4306) (regTwo!9124 Regex!4306)) (EmptyExpr!4306) (Star!4306 (reg!4635 Regex!4306)) (EmptyLang!4306) (Union!4306 (regOne!9125 Regex!4306) (regTwo!9125 Regex!4306)) )
))
(declare-datatypes ((String!19674 0))(
  ( (String!19675 (value!94546 String)) )
))
(declare-datatypes ((TokenValueInjection!5796 0))(
  ( (TokenValueInjection!5797 (toValue!4365 Int) (toChars!4224 Int)) )
))
(declare-datatypes ((Rule!5756 0))(
  ( (Rule!5757 (regex!2978 Regex!4306) (tag!3242 String!19674) (isSeparator!2978 Bool) (transformation!2978 TokenValueInjection!5796)) )
))
(declare-datatypes ((Token!5522 0))(
  ( (Token!5523 (value!94547 TokenValue!3068) (rule!4764 Rule!5756) (size!13791 Int) (originalCharacters!3792 List!17075)) )
))
(declare-datatypes ((List!17076 0))(
  ( (Nil!17006) (Cons!17006 (h!22407 Token!5522) (t!141703 List!17076)) )
))
(declare-datatypes ((IArray!11215 0))(
  ( (IArray!11216 (innerList!5665 List!17076)) )
))
(declare-datatypes ((Conc!5605 0))(
  ( (Node!5605 (left!13788 Conc!5605) (right!14118 Conc!5605) (csize!11440 Int) (cheight!5816 Int)) (Leaf!8315 (xs!8405 IArray!11215) (csize!11441 Int)) (Empty!5605) )
))
(declare-datatypes ((BalanceConc!11154 0))(
  ( (BalanceConc!11155 (c!253585 Conc!5605)) )
))
(declare-datatypes ((List!17077 0))(
  ( (Nil!17007) (Cons!17007 (h!22408 Rule!5756) (t!141704 List!17077)) )
))
(declare-datatypes ((PrintableTokens!1174 0))(
  ( (PrintableTokens!1175 (rules!12071 List!17077) (tokens!2191 BalanceConc!11154)) )
))
(declare-fun thiss!10002 () PrintableTokens!1174)

(declare-fun isEmpty!10187 (List!17077) Bool)

(assert (=> start!145522 (= res!697560 (not (isEmpty!10187 (rules!12071 thiss!10002))))))

(declare-fun lt!541803 () List!17076)

(declare-fun list!6539 (BalanceConc!11154) List!17076)

(assert (=> start!145522 (= lt!541803 (list!6539 (tokens!2191 thiss!10002)))))

(assert (=> start!145522 e!1004999))

(declare-fun e!1004998 () Bool)

(declare-fun inv!22360 (PrintableTokens!1174) Bool)

(assert (=> start!145522 (and (inv!22360 thiss!10002) e!1004998)))

(declare-fun b!1564812 () Bool)

(declare-datatypes ((LexerInterface!2607 0))(
  ( (LexerInterfaceExt!2604 (__x!11439 Int)) (Lexer!2605) )
))
(declare-fun rulesInvariant!2284 (LexerInterface!2607 List!17077) Bool)

(assert (=> b!1564812 (= e!1004999 (not (rulesInvariant!2284 Lexer!2605 (rules!12071 thiss!10002))))))

(declare-fun b!1564814 () Bool)

(declare-fun e!1004997 () Bool)

(declare-fun tp!460852 () Bool)

(declare-fun inv!22361 (Conc!5605) Bool)

(assert (=> b!1564814 (= e!1004997 (and (inv!22361 (c!253585 (tokens!2191 thiss!10002))) tp!460852))))

(declare-fun tp!460851 () Bool)

(declare-fun b!1564813 () Bool)

(declare-fun inv!22362 (BalanceConc!11154) Bool)

(assert (=> b!1564813 (= e!1004998 (and tp!460851 (inv!22362 (tokens!2191 thiss!10002)) e!1004997))))

(assert (= (and start!145522 res!697560) b!1564812))

(assert (= b!1564813 b!1564814))

(assert (= start!145522 b!1564813))

(declare-fun m!1836395 () Bool)

(assert (=> start!145522 m!1836395))

(declare-fun m!1836397 () Bool)

(assert (=> start!145522 m!1836397))

(declare-fun m!1836399 () Bool)

(assert (=> start!145522 m!1836399))

(declare-fun m!1836401 () Bool)

(assert (=> b!1564812 m!1836401))

(declare-fun m!1836403 () Bool)

(assert (=> b!1564814 m!1836403))

(declare-fun m!1836405 () Bool)

(assert (=> b!1564813 m!1836405))

(push 1)

(assert (not start!145522))

(assert (not b!1564812))

(assert (not b!1564814))

(assert (not b!1564813))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!463550 () Bool)

(assert (=> d!463550 (= (isEmpty!10187 (rules!12071 thiss!10002)) (is-Nil!17007 (rules!12071 thiss!10002)))))

(assert (=> start!145522 d!463550))

(declare-fun d!463554 () Bool)

(declare-fun list!6541 (Conc!5605) List!17076)

(assert (=> d!463554 (= (list!6539 (tokens!2191 thiss!10002)) (list!6541 (c!253585 (tokens!2191 thiss!10002))))))

(declare-fun bs!389553 () Bool)

(assert (= bs!389553 d!463554))

(declare-fun m!1836419 () Bool)

(assert (=> bs!389553 m!1836419))

(assert (=> start!145522 d!463554))

(declare-fun d!463556 () Bool)

(declare-fun res!697576 () Bool)

(declare-fun e!1005020 () Bool)

(assert (=> d!463556 (=> (not res!697576) (not e!1005020))))

(assert (=> d!463556 (= res!697576 (not (isEmpty!10187 (rules!12071 thiss!10002))))))

(assert (=> d!463556 (= (inv!22360 thiss!10002) e!1005020)))

(declare-fun b!1564842 () Bool)

(declare-fun res!697577 () Bool)

(assert (=> b!1564842 (=> (not res!697577) (not e!1005020))))

(assert (=> b!1564842 (= res!697577 (rulesInvariant!2284 Lexer!2605 (rules!12071 thiss!10002)))))

(declare-fun b!1564843 () Bool)

(declare-fun res!697578 () Bool)

(assert (=> b!1564843 (=> (not res!697578) (not e!1005020))))

(declare-fun rulesProduceEachTokenIndividually!905 (LexerInterface!2607 List!17077 BalanceConc!11154) Bool)

(assert (=> b!1564843 (= res!697578 (rulesProduceEachTokenIndividually!905 Lexer!2605 (rules!12071 thiss!10002) (tokens!2191 thiss!10002)))))

(declare-fun b!1564844 () Bool)

(declare-fun separableTokens!276 (LexerInterface!2607 BalanceConc!11154 List!17077) Bool)

(assert (=> b!1564844 (= e!1005020 (separableTokens!276 Lexer!2605 (tokens!2191 thiss!10002) (rules!12071 thiss!10002)))))

(assert (= (and d!463556 res!697576) b!1564842))

(assert (= (and b!1564842 res!697577) b!1564843))

(assert (= (and b!1564843 res!697578) b!1564844))

(assert (=> d!463556 m!1836395))

(assert (=> b!1564842 m!1836401))

(declare-fun m!1836433 () Bool)

(assert (=> b!1564843 m!1836433))

(declare-fun m!1836435 () Bool)

(assert (=> b!1564844 m!1836435))

(assert (=> start!145522 d!463556))

(declare-fun d!463568 () Bool)

(declare-fun res!697581 () Bool)

(declare-fun e!1005023 () Bool)

(assert (=> d!463568 (=> (not res!697581) (not e!1005023))))

(declare-fun rulesValid!1052 (LexerInterface!2607 List!17077) Bool)

(assert (=> d!463568 (= res!697581 (rulesValid!1052 Lexer!2605 (rules!12071 thiss!10002)))))

(assert (=> d!463568 (= (rulesInvariant!2284 Lexer!2605 (rules!12071 thiss!10002)) e!1005023)))

(declare-fun b!1564847 () Bool)

(declare-datatypes ((List!17082 0))(
  ( (Nil!17012) (Cons!17012 (h!22413 String!19674) (t!141709 List!17082)) )
))
(declare-fun noDuplicateTag!1052 (LexerInterface!2607 List!17077 List!17082) Bool)

(assert (=> b!1564847 (= e!1005023 (noDuplicateTag!1052 Lexer!2605 (rules!12071 thiss!10002) Nil!17012))))

(assert (= (and d!463568 res!697581) b!1564847))

(declare-fun m!1836437 () Bool)

(assert (=> d!463568 m!1836437))

(declare-fun m!1836439 () Bool)

(assert (=> b!1564847 m!1836439))

(assert (=> b!1564812 d!463568))

(declare-fun d!463570 () Bool)

(declare-fun c!253594 () Bool)

(assert (=> d!463570 (= c!253594 (is-Node!5605 (c!253585 (tokens!2191 thiss!10002))))))

(declare-fun e!1005028 () Bool)

(assert (=> d!463570 (= (inv!22361 (c!253585 (tokens!2191 thiss!10002))) e!1005028)))

(declare-fun b!1564854 () Bool)

(declare-fun inv!22366 (Conc!5605) Bool)

(assert (=> b!1564854 (= e!1005028 (inv!22366 (c!253585 (tokens!2191 thiss!10002))))))

(declare-fun b!1564855 () Bool)

(declare-fun e!1005029 () Bool)

(assert (=> b!1564855 (= e!1005028 e!1005029)))

(declare-fun res!697584 () Bool)

(assert (=> b!1564855 (= res!697584 (not (is-Leaf!8315 (c!253585 (tokens!2191 thiss!10002)))))))

(assert (=> b!1564855 (=> res!697584 e!1005029)))

(declare-fun b!1564856 () Bool)

(declare-fun inv!22367 (Conc!5605) Bool)

(assert (=> b!1564856 (= e!1005029 (inv!22367 (c!253585 (tokens!2191 thiss!10002))))))

(assert (= (and d!463570 c!253594) b!1564854))

(assert (= (and d!463570 (not c!253594)) b!1564855))

(assert (= (and b!1564855 (not res!697584)) b!1564856))

(declare-fun m!1836441 () Bool)

(assert (=> b!1564854 m!1836441))

(declare-fun m!1836443 () Bool)

(assert (=> b!1564856 m!1836443))

(assert (=> b!1564814 d!463570))

(declare-fun d!463572 () Bool)

(declare-fun isBalanced!1660 (Conc!5605) Bool)

(assert (=> d!463572 (= (inv!22362 (tokens!2191 thiss!10002)) (isBalanced!1660 (c!253585 (tokens!2191 thiss!10002))))))

(declare-fun bs!389556 () Bool)

(assert (= bs!389556 d!463572))

(declare-fun m!1836445 () Bool)

(assert (=> bs!389556 m!1836445))

(assert (=> b!1564813 d!463572))

(declare-fun tp!460865 () Bool)

(declare-fun e!1005034 () Bool)

(declare-fun tp!460867 () Bool)

(declare-fun b!1564865 () Bool)

(assert (=> b!1564865 (= e!1005034 (and (inv!22361 (left!13788 (c!253585 (tokens!2191 thiss!10002)))) tp!460867 (inv!22361 (right!14118 (c!253585 (tokens!2191 thiss!10002)))) tp!460865))))

(declare-fun b!1564867 () Bool)

(declare-fun e!1005035 () Bool)

(declare-fun tp!460866 () Bool)

(assert (=> b!1564867 (= e!1005035 tp!460866)))

(declare-fun b!1564866 () Bool)

(declare-fun inv!22368 (IArray!11215) Bool)

(assert (=> b!1564866 (= e!1005034 (and (inv!22368 (xs!8405 (c!253585 (tokens!2191 thiss!10002)))) e!1005035))))

(assert (=> b!1564814 (= tp!460852 (and (inv!22361 (c!253585 (tokens!2191 thiss!10002))) e!1005034))))

(assert (= (and b!1564814 (is-Node!5605 (c!253585 (tokens!2191 thiss!10002)))) b!1564865))

(assert (= b!1564866 b!1564867))

(assert (= (and b!1564814 (is-Leaf!8315 (c!253585 (tokens!2191 thiss!10002)))) b!1564866))

(declare-fun m!1836447 () Bool)

(assert (=> b!1564865 m!1836447))

(declare-fun m!1836449 () Bool)

(assert (=> b!1564865 m!1836449))

(declare-fun m!1836451 () Bool)

(assert (=> b!1564866 m!1836451))

(assert (=> b!1564814 m!1836403))

(declare-fun b!1564878 () Bool)

(declare-fun b_free!41831 () Bool)

(declare-fun b_next!42535 () Bool)

(assert (=> b!1564878 (= b_free!41831 (not b_next!42535))))

(declare-fun tp!460876 () Bool)

(declare-fun b_and!109193 () Bool)

(assert (=> b!1564878 (= tp!460876 b_and!109193)))

(declare-fun b_free!41833 () Bool)

(declare-fun b_next!42537 () Bool)

(assert (=> b!1564878 (= b_free!41833 (not b_next!42537))))

(declare-fun tp!460879 () Bool)

(declare-fun b_and!109195 () Bool)

(assert (=> b!1564878 (= tp!460879 b_and!109195)))

(declare-fun e!1005045 () Bool)

(assert (=> b!1564878 (= e!1005045 (and tp!460876 tp!460879))))

(declare-fun e!1005047 () Bool)

(declare-fun tp!460878 () Bool)

(declare-fun b!1564877 () Bool)

(declare-fun inv!22357 (String!19674) Bool)

(declare-fun inv!22369 (TokenValueInjection!5796) Bool)

(assert (=> b!1564877 (= e!1005047 (and tp!460878 (inv!22357 (tag!3242 (h!22408 (rules!12071 thiss!10002)))) (inv!22369 (transformation!2978 (h!22408 (rules!12071 thiss!10002)))) e!1005045))))

(declare-fun b!1564876 () Bool)

(declare-fun e!1005046 () Bool)

(declare-fun tp!460877 () Bool)

(assert (=> b!1564876 (= e!1005046 (and e!1005047 tp!460877))))

(assert (=> b!1564813 (= tp!460851 e!1005046)))

(assert (= b!1564877 b!1564878))

(assert (= b!1564876 b!1564877))

(assert (= (and b!1564813 (is-Cons!17007 (rules!12071 thiss!10002))) b!1564876))

(declare-fun m!1836453 () Bool)

(assert (=> b!1564877 m!1836453))

(declare-fun m!1836455 () Bool)

(assert (=> b!1564877 m!1836455))

(push 1)

(assert b_and!109195)

(assert (not b!1564877))

(assert (not b!1564865))

(assert (not b!1564814))

(assert (not b!1564856))

(assert (not d!463554))

(assert (not d!463568))

(assert (not d!463572))

(assert (not b!1564844))

(assert (not b!1564847))

(assert (not b!1564854))

(assert (not d!463556))

(assert (not b!1564866))

(assert b_and!109193)

(assert (not b_next!42537))

(assert (not b_next!42535))

(assert (not b!1564876))

(assert (not b!1564867))

(assert (not b!1564842))

(assert (not b!1564843))

(check-sat)

(pop 1)

(push 1)

(assert b_and!109193)

(assert b_and!109195)

(assert (not b_next!42535))

(assert (not b_next!42537))

(check-sat)

(pop 1)

