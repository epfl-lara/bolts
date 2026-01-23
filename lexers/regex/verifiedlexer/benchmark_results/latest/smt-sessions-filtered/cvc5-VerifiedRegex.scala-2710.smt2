; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!145550 () Bool)

(assert start!145550)

(declare-fun e!1005077 () Bool)

(declare-fun tp!460905 () Bool)

(declare-datatypes ((List!17084 0))(
  ( (Nil!17014) (Cons!17014 (h!22415 (_ BitVec 16)) (t!141711 List!17084)) )
))
(declare-datatypes ((TokenValue!3070 0))(
  ( (FloatLiteralValue!6140 (text!21935 List!17084)) (TokenValueExt!3069 (__x!11442 Int)) (Broken!15350 (value!94578 List!17084)) (Object!3139) (End!3070) (Def!3070) (Underscore!3070) (Match!3070) (Else!3070) (Error!3070) (Case!3070) (If!3070) (Extends!3070) (Abstract!3070) (Class!3070) (Val!3070) (DelimiterValue!6140 (del!3130 List!17084)) (KeywordValue!3076 (value!94579 List!17084)) (CommentValue!6140 (value!94580 List!17084)) (WhitespaceValue!6140 (value!94581 List!17084)) (IndentationValue!3070 (value!94582 List!17084)) (String!19683) (Int32!3070) (Broken!15351 (value!94583 List!17084)) (Boolean!3071) (Unit!26189) (OperatorValue!3073 (op!3130 List!17084)) (IdentifierValue!6140 (value!94584 List!17084)) (IdentifierValue!6141 (value!94585 List!17084)) (WhitespaceValue!6141 (value!94586 List!17084)) (True!6140) (False!6140) (Broken!15352 (value!94587 List!17084)) (Broken!15353 (value!94588 List!17084)) (True!6141) (RightBrace!3070) (RightBracket!3070) (Colon!3070) (Null!3070) (Comma!3070) (LeftBracket!3070) (False!6141) (LeftBrace!3070) (ImaginaryLiteralValue!3070 (text!21936 List!17084)) (StringLiteralValue!9210 (value!94589 List!17084)) (EOFValue!3070 (value!94590 List!17084)) (IdentValue!3070 (value!94591 List!17084)) (DelimiterValue!6141 (value!94592 List!17084)) (DedentValue!3070 (value!94593 List!17084)) (NewLineValue!3070 (value!94594 List!17084)) (IntegerValue!9210 (value!94595 (_ BitVec 32)) (text!21937 List!17084)) (IntegerValue!9211 (value!94596 Int) (text!21938 List!17084)) (Times!3070) (Or!3070) (Equal!3070) (Minus!3070) (Broken!15354 (value!94597 List!17084)) (And!3070) (Div!3070) (LessEqual!3070) (Mod!3070) (Concat!7378) (Not!3070) (Plus!3070) (SpaceValue!3070 (value!94598 List!17084)) (IntegerValue!9212 (value!94599 Int) (text!21939 List!17084)) (StringLiteralValue!9211 (text!21940 List!17084)) (FloatLiteralValue!6141 (text!21941 List!17084)) (BytesLiteralValue!3070 (value!94600 List!17084)) (CommentValue!6141 (value!94601 List!17084)) (StringLiteralValue!9212 (value!94602 List!17084)) (ErrorTokenValue!3070 (msg!3131 List!17084)) )
))
(declare-datatypes ((C!8790 0))(
  ( (C!8791 (val!4991 Int)) )
))
(declare-datatypes ((List!17085 0))(
  ( (Nil!17015) (Cons!17015 (h!22416 C!8790) (t!141712 List!17085)) )
))
(declare-datatypes ((IArray!11221 0))(
  ( (IArray!11222 (innerList!5668 List!17085)) )
))
(declare-datatypes ((Conc!5608 0))(
  ( (Node!5608 (left!13792 Conc!5608) (right!14122 Conc!5608) (csize!11446 Int) (cheight!5819 Int)) (Leaf!8319 (xs!8408 IArray!11221) (csize!11447 Int)) (Empty!5608) )
))
(declare-datatypes ((BalanceConc!11160 0))(
  ( (BalanceConc!11161 (c!253595 Conc!5608)) )
))
(declare-datatypes ((String!19684 0))(
  ( (String!19685 (value!94603 String)) )
))
(declare-datatypes ((Regex!4308 0))(
  ( (ElementMatch!4308 (c!253596 C!8790)) (Concat!7379 (regOne!9128 Regex!4308) (regTwo!9128 Regex!4308)) (EmptyExpr!4308) (Star!4308 (reg!4637 Regex!4308)) (EmptyLang!4308) (Union!4308 (regOne!9129 Regex!4308) (regTwo!9129 Regex!4308)) )
))
(declare-datatypes ((TokenValueInjection!5800 0))(
  ( (TokenValueInjection!5801 (toValue!4367 Int) (toChars!4226 Int)) )
))
(declare-datatypes ((Rule!5760 0))(
  ( (Rule!5761 (regex!2980 Regex!4308) (tag!3244 String!19684) (isSeparator!2980 Bool) (transformation!2980 TokenValueInjection!5800)) )
))
(declare-datatypes ((Token!5526 0))(
  ( (Token!5527 (value!94604 TokenValue!3070) (rule!4766 Rule!5760) (size!13793 Int) (originalCharacters!3794 List!17085)) )
))
(declare-datatypes ((List!17086 0))(
  ( (Nil!17016) (Cons!17016 (h!22417 Token!5526) (t!141713 List!17086)) )
))
(declare-datatypes ((IArray!11223 0))(
  ( (IArray!11224 (innerList!5669 List!17086)) )
))
(declare-datatypes ((Conc!5609 0))(
  ( (Node!5609 (left!13793 Conc!5609) (right!14123 Conc!5609) (csize!11448 Int) (cheight!5820 Int)) (Leaf!8320 (xs!8409 IArray!11223) (csize!11449 Int)) (Empty!5609) )
))
(declare-datatypes ((BalanceConc!11162 0))(
  ( (BalanceConc!11163 (c!253597 Conc!5609)) )
))
(declare-datatypes ((List!17087 0))(
  ( (Nil!17017) (Cons!17017 (h!22418 Rule!5760) (t!141714 List!17087)) )
))
(declare-datatypes ((PrintableTokens!1178 0))(
  ( (PrintableTokens!1179 (rules!12075 List!17087) (tokens!2193 BalanceConc!11162)) )
))
(declare-fun thiss!10002 () PrintableTokens!1178)

(declare-fun e!1005076 () Bool)

(declare-fun b!1564920 () Bool)

(declare-fun inv!22373 (BalanceConc!11162) Bool)

(assert (=> b!1564920 (= e!1005076 (and tp!460905 (inv!22373 (tokens!2193 thiss!10002)) e!1005077))))

(declare-fun b!1564921 () Bool)

(declare-fun tp!460906 () Bool)

(declare-fun inv!22374 (Conc!5609) Bool)

(assert (=> b!1564921 (= e!1005077 (and (inv!22374 (c!253597 (tokens!2193 thiss!10002))) tp!460906))))

(declare-fun b!1564918 () Bool)

(declare-fun res!697599 () Bool)

(declare-fun e!1005075 () Bool)

(assert (=> b!1564918 (=> (not res!697599) (not e!1005075))))

(declare-datatypes ((LexerInterface!2609 0))(
  ( (LexerInterfaceExt!2606 (__x!11443 Int)) (Lexer!2607) )
))
(declare-fun rulesInvariant!2286 (LexerInterface!2609 List!17087) Bool)

(assert (=> b!1564918 (= res!697599 (rulesInvariant!2286 Lexer!2607 (rules!12075 thiss!10002)))))

(declare-fun res!697598 () Bool)

(assert (=> start!145550 (=> (not res!697598) (not e!1005075))))

(declare-fun isEmpty!10189 (List!17087) Bool)

(assert (=> start!145550 (= res!697598 (not (isEmpty!10189 (rules!12075 thiss!10002))))))

(declare-fun lt!541809 () List!17086)

(declare-fun list!6542 (BalanceConc!11162) List!17086)

(assert (=> start!145550 (= lt!541809 (list!6542 (tokens!2193 thiss!10002)))))

(assert (=> start!145550 e!1005075))

(declare-fun inv!22375 (PrintableTokens!1178) Bool)

(assert (=> start!145550 (and (inv!22375 thiss!10002) e!1005076)))

(declare-fun b!1564919 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!825 (LexerInterface!2609 List!17087 List!17086) Bool)

(assert (=> b!1564919 (= e!1005075 (not (rulesProduceEachTokenIndividuallyList!825 Lexer!2607 (rules!12075 thiss!10002) lt!541809)))))

(assert (= (and start!145550 res!697598) b!1564918))

(assert (= (and b!1564918 res!697599) b!1564919))

(assert (= b!1564920 b!1564921))

(assert (= start!145550 b!1564920))

(declare-fun m!1836471 () Bool)

(assert (=> b!1564920 m!1836471))

(declare-fun m!1836473 () Bool)

(assert (=> b!1564921 m!1836473))

(declare-fun m!1836475 () Bool)

(assert (=> b!1564919 m!1836475))

(declare-fun m!1836477 () Bool)

(assert (=> b!1564918 m!1836477))

(declare-fun m!1836479 () Bool)

(assert (=> start!145550 m!1836479))

(declare-fun m!1836481 () Bool)

(assert (=> start!145550 m!1836481))

(declare-fun m!1836483 () Bool)

(assert (=> start!145550 m!1836483))

(push 1)

(assert (not start!145550))

(assert (not b!1564921))

(assert (not b!1564920))

(assert (not b!1564918))

(assert (not b!1564919))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!463575 () Bool)

(assert (=> d!463575 (= (isEmpty!10189 (rules!12075 thiss!10002)) (is-Nil!17017 (rules!12075 thiss!10002)))))

(assert (=> start!145550 d!463575))

(declare-fun d!463577 () Bool)

(declare-fun list!6544 (Conc!5609) List!17086)

(assert (=> d!463577 (= (list!6542 (tokens!2193 thiss!10002)) (list!6544 (c!253597 (tokens!2193 thiss!10002))))))

(declare-fun bs!389559 () Bool)

(assert (= bs!389559 d!463577))

(declare-fun m!1836499 () Bool)

(assert (=> bs!389559 m!1836499))

(assert (=> start!145550 d!463577))

(declare-fun d!463581 () Bool)

(declare-fun res!697615 () Bool)

(declare-fun e!1005095 () Bool)

(assert (=> d!463581 (=> (not res!697615) (not e!1005095))))

(assert (=> d!463581 (= res!697615 (not (isEmpty!10189 (rules!12075 thiss!10002))))))

(assert (=> d!463581 (= (inv!22375 thiss!10002) e!1005095)))

(declare-fun b!1564949 () Bool)

(declare-fun res!697616 () Bool)

(assert (=> b!1564949 (=> (not res!697616) (not e!1005095))))

(assert (=> b!1564949 (= res!697616 (rulesInvariant!2286 Lexer!2607 (rules!12075 thiss!10002)))))

(declare-fun b!1564950 () Bool)

(declare-fun res!697617 () Bool)

(assert (=> b!1564950 (=> (not res!697617) (not e!1005095))))

(declare-fun rulesProduceEachTokenIndividually!906 (LexerInterface!2609 List!17087 BalanceConc!11162) Bool)

(assert (=> b!1564950 (= res!697617 (rulesProduceEachTokenIndividually!906 Lexer!2607 (rules!12075 thiss!10002) (tokens!2193 thiss!10002)))))

(declare-fun b!1564951 () Bool)

(declare-fun separableTokens!277 (LexerInterface!2609 BalanceConc!11162 List!17087) Bool)

(assert (=> b!1564951 (= e!1005095 (separableTokens!277 Lexer!2607 (tokens!2193 thiss!10002) (rules!12075 thiss!10002)))))

(assert (= (and d!463581 res!697615) b!1564949))

(assert (= (and b!1564949 res!697616) b!1564950))

(assert (= (and b!1564950 res!697617) b!1564951))

(assert (=> d!463581 m!1836479))

(assert (=> b!1564949 m!1836477))

(declare-fun m!1836507 () Bool)

(assert (=> b!1564950 m!1836507))

(declare-fun m!1836509 () Bool)

(assert (=> b!1564951 m!1836509))

(assert (=> start!145550 d!463581))

(declare-fun d!463589 () Bool)

(declare-fun res!697620 () Bool)

(declare-fun e!1005098 () Bool)

(assert (=> d!463589 (=> (not res!697620) (not e!1005098))))

(declare-fun rulesValid!1054 (LexerInterface!2609 List!17087) Bool)

(assert (=> d!463589 (= res!697620 (rulesValid!1054 Lexer!2607 (rules!12075 thiss!10002)))))

(assert (=> d!463589 (= (rulesInvariant!2286 Lexer!2607 (rules!12075 thiss!10002)) e!1005098)))

(declare-fun b!1564954 () Bool)

(declare-datatypes ((List!17092 0))(
  ( (Nil!17022) (Cons!17022 (h!22423 String!19684) (t!141723 List!17092)) )
))
(declare-fun noDuplicateTag!1054 (LexerInterface!2609 List!17087 List!17092) Bool)

(assert (=> b!1564954 (= e!1005098 (noDuplicateTag!1054 Lexer!2607 (rules!12075 thiss!10002) Nil!17022))))

(assert (= (and d!463589 res!697620) b!1564954))

(declare-fun m!1836511 () Bool)

(assert (=> d!463589 m!1836511))

(declare-fun m!1836513 () Bool)

(assert (=> b!1564954 m!1836513))

(assert (=> b!1564918 d!463589))

(declare-fun b!1564987 () Bool)

(declare-fun e!1005123 () Bool)

(assert (=> b!1564987 (= e!1005123 true)))

(declare-fun b!1564986 () Bool)

(declare-fun e!1005122 () Bool)

(assert (=> b!1564986 (= e!1005122 e!1005123)))

(declare-fun b!1564985 () Bool)

(declare-fun e!1005121 () Bool)

(assert (=> b!1564985 (= e!1005121 e!1005122)))

(declare-fun d!463591 () Bool)

(assert (=> d!463591 e!1005121))

(assert (= b!1564986 b!1564987))

(assert (= b!1564985 b!1564986))

(assert (= (and d!463591 (is-Cons!17017 (rules!12075 thiss!10002))) b!1564985))

(declare-fun lambda!66173 () Int)

(declare-fun order!10073 () Int)

(declare-fun order!10075 () Int)

(declare-fun dynLambda!7578 (Int Int) Int)

(declare-fun dynLambda!7579 (Int Int) Int)

(assert (=> b!1564987 (< (dynLambda!7578 order!10073 (toValue!4367 (transformation!2980 (h!22418 (rules!12075 thiss!10002))))) (dynLambda!7579 order!10075 lambda!66173))))

(declare-fun order!10077 () Int)

(declare-fun dynLambda!7580 (Int Int) Int)

(assert (=> b!1564987 (< (dynLambda!7580 order!10077 (toChars!4226 (transformation!2980 (h!22418 (rules!12075 thiss!10002))))) (dynLambda!7579 order!10075 lambda!66173))))

(assert (=> d!463591 true))

(declare-fun lt!541817 () Bool)

(declare-fun forall!3945 (List!17086 Int) Bool)

(assert (=> d!463591 (= lt!541817 (forall!3945 lt!541809 lambda!66173))))

(declare-fun e!1005114 () Bool)

(assert (=> d!463591 (= lt!541817 e!1005114)))

(declare-fun res!697642 () Bool)

(assert (=> d!463591 (=> res!697642 e!1005114)))

(assert (=> d!463591 (= res!697642 (not (is-Cons!17016 lt!541809)))))

(assert (=> d!463591 (not (isEmpty!10189 (rules!12075 thiss!10002)))))

(assert (=> d!463591 (= (rulesProduceEachTokenIndividuallyList!825 Lexer!2607 (rules!12075 thiss!10002) lt!541809) lt!541817)))

(declare-fun b!1564975 () Bool)

(declare-fun e!1005113 () Bool)

(assert (=> b!1564975 (= e!1005114 e!1005113)))

(declare-fun res!697641 () Bool)

(assert (=> b!1564975 (=> (not res!697641) (not e!1005113))))

(declare-fun rulesProduceIndividualToken!1315 (LexerInterface!2609 List!17087 Token!5526) Bool)

(assert (=> b!1564975 (= res!697641 (rulesProduceIndividualToken!1315 Lexer!2607 (rules!12075 thiss!10002) (h!22417 lt!541809)))))

(declare-fun b!1564976 () Bool)

(assert (=> b!1564976 (= e!1005113 (rulesProduceEachTokenIndividuallyList!825 Lexer!2607 (rules!12075 thiss!10002) (t!141713 lt!541809)))))

(assert (= (and d!463591 (not res!697642)) b!1564975))

(assert (= (and b!1564975 res!697641) b!1564976))

(declare-fun m!1836523 () Bool)

(assert (=> d!463591 m!1836523))

(assert (=> d!463591 m!1836479))

(declare-fun m!1836525 () Bool)

(assert (=> b!1564975 m!1836525))

(declare-fun m!1836527 () Bool)

(assert (=> b!1564976 m!1836527))

(assert (=> b!1564919 d!463591))

(declare-fun d!463597 () Bool)

(declare-fun isBalanced!1661 (Conc!5609) Bool)

(assert (=> d!463597 (= (inv!22373 (tokens!2193 thiss!10002)) (isBalanced!1661 (c!253597 (tokens!2193 thiss!10002))))))

(declare-fun bs!389561 () Bool)

(assert (= bs!389561 d!463597))

(declare-fun m!1836529 () Bool)

(assert (=> bs!389561 m!1836529))

(assert (=> b!1564920 d!463597))

(declare-fun d!463599 () Bool)

(declare-fun c!253606 () Bool)

(assert (=> d!463599 (= c!253606 (is-Node!5609 (c!253597 (tokens!2193 thiss!10002))))))

(declare-fun e!1005128 () Bool)

(assert (=> d!463599 (= (inv!22374 (c!253597 (tokens!2193 thiss!10002))) e!1005128)))

(declare-fun b!1564996 () Bool)

(declare-fun inv!22379 (Conc!5609) Bool)

(assert (=> b!1564996 (= e!1005128 (inv!22379 (c!253597 (tokens!2193 thiss!10002))))))

(declare-fun b!1564997 () Bool)

(declare-fun e!1005129 () Bool)

(assert (=> b!1564997 (= e!1005128 e!1005129)))

(declare-fun res!697645 () Bool)

(assert (=> b!1564997 (= res!697645 (not (is-Leaf!8320 (c!253597 (tokens!2193 thiss!10002)))))))

(assert (=> b!1564997 (=> res!697645 e!1005129)))

(declare-fun b!1564998 () Bool)

(declare-fun inv!22380 (Conc!5609) Bool)

(assert (=> b!1564998 (= e!1005129 (inv!22380 (c!253597 (tokens!2193 thiss!10002))))))

(assert (= (and d!463599 c!253606) b!1564996))

(assert (= (and d!463599 (not c!253606)) b!1564997))

(assert (= (and b!1564997 (not res!697645)) b!1564998))

(declare-fun m!1836531 () Bool)

(assert (=> b!1564996 m!1836531))

(declare-fun m!1836533 () Bool)

(assert (=> b!1564998 m!1836533))

(assert (=> b!1564921 d!463599))

(declare-fun b!1565009 () Bool)

(declare-fun b_free!41839 () Bool)

(declare-fun b_next!42543 () Bool)

(assert (=> b!1565009 (= b_free!41839 (not b_next!42543))))

(declare-fun tp!460921 () Bool)

(declare-fun b_and!109201 () Bool)

(assert (=> b!1565009 (= tp!460921 b_and!109201)))

(declare-fun b_free!41841 () Bool)

(declare-fun b_next!42545 () Bool)

(assert (=> b!1565009 (= b_free!41841 (not b_next!42545))))

(declare-fun tp!460924 () Bool)

(declare-fun b_and!109203 () Bool)

(assert (=> b!1565009 (= tp!460924 b_and!109203)))

(declare-fun e!1005140 () Bool)

(assert (=> b!1565009 (= e!1005140 (and tp!460921 tp!460924))))

(declare-fun b!1565008 () Bool)

(declare-fun e!1005141 () Bool)

(declare-fun tp!460923 () Bool)

(declare-fun inv!22370 (String!19684) Bool)

(declare-fun inv!22381 (TokenValueInjection!5800) Bool)

(assert (=> b!1565008 (= e!1005141 (and tp!460923 (inv!22370 (tag!3244 (h!22418 (rules!12075 thiss!10002)))) (inv!22381 (transformation!2980 (h!22418 (rules!12075 thiss!10002)))) e!1005140))))

(declare-fun b!1565007 () Bool)

(declare-fun e!1005139 () Bool)

(declare-fun tp!460922 () Bool)

(assert (=> b!1565007 (= e!1005139 (and e!1005141 tp!460922))))

(assert (=> b!1564920 (= tp!460905 e!1005139)))

(assert (= b!1565008 b!1565009))

(assert (= b!1565007 b!1565008))

(assert (= (and b!1564920 (is-Cons!17017 (rules!12075 thiss!10002))) b!1565007))

(declare-fun m!1836535 () Bool)

(assert (=> b!1565008 m!1836535))

(declare-fun m!1836537 () Bool)

(assert (=> b!1565008 m!1836537))

(declare-fun e!1005146 () Bool)

(declare-fun tp!460932 () Bool)

(declare-fun b!1565018 () Bool)

(declare-fun tp!460931 () Bool)

(assert (=> b!1565018 (= e!1005146 (and (inv!22374 (left!13793 (c!253597 (tokens!2193 thiss!10002)))) tp!460932 (inv!22374 (right!14123 (c!253597 (tokens!2193 thiss!10002)))) tp!460931))))

(declare-fun b!1565020 () Bool)

(declare-fun e!1005147 () Bool)

(declare-fun tp!460933 () Bool)

(assert (=> b!1565020 (= e!1005147 tp!460933)))

(declare-fun b!1565019 () Bool)

(declare-fun inv!22382 (IArray!11223) Bool)

(assert (=> b!1565019 (= e!1005146 (and (inv!22382 (xs!8409 (c!253597 (tokens!2193 thiss!10002)))) e!1005147))))

(assert (=> b!1564921 (= tp!460906 (and (inv!22374 (c!253597 (tokens!2193 thiss!10002))) e!1005146))))

(assert (= (and b!1564921 (is-Node!5609 (c!253597 (tokens!2193 thiss!10002)))) b!1565018))

(assert (= b!1565019 b!1565020))

(assert (= (and b!1564921 (is-Leaf!8320 (c!253597 (tokens!2193 thiss!10002)))) b!1565019))

(declare-fun m!1836539 () Bool)

(assert (=> b!1565018 m!1836539))

(declare-fun m!1836541 () Bool)

(assert (=> b!1565018 m!1836541))

(declare-fun m!1836543 () Bool)

(assert (=> b!1565019 m!1836543))

(assert (=> b!1564921 m!1836473))

(push 1)

(assert (not b!1564985))

(assert (not d!463581))

(assert (not b!1564950))

(assert (not b!1564921))

(assert b_and!109201)

(assert (not b!1564949))

(assert (not b!1565008))

(assert (not b!1564976))

(assert (not b!1564998))

(assert (not b!1565018))

(assert (not d!463591))

(assert (not b!1565007))

(assert (not b!1564951))

(assert (not b!1564996))

(assert (not b_next!42543))

(assert b_and!109203)

(assert (not d!463597))

(assert (not b!1565019))

(assert (not b!1564954))

(assert (not b!1564975))

(assert (not b_next!42545))

(assert (not b!1565020))

(assert (not d!463589))

(assert (not d!463577))

(check-sat)

(pop 1)

(push 1)

(assert b_and!109201)

(assert b_and!109203)

(assert (not b_next!42543))

(assert (not b_next!42545))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!463601 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!144 (LexerInterface!2609 BalanceConc!11162 Int List!17087) Bool)

(assert (=> d!463601 (= (separableTokens!277 Lexer!2607 (tokens!2193 thiss!10002) (rules!12075 thiss!10002)) (tokensListTwoByTwoPredicateSeparable!144 Lexer!2607 (tokens!2193 thiss!10002) 0 (rules!12075 thiss!10002)))))

(declare-fun bs!389563 () Bool)

(assert (= bs!389563 d!463601))

(declare-fun m!1836563 () Bool)

(assert (=> bs!389563 m!1836563))

(assert (=> b!1564951 d!463601))

(declare-fun d!463605 () Bool)

(declare-fun lt!541826 () Bool)

(declare-fun e!1005210 () Bool)

(assert (=> d!463605 (= lt!541826 e!1005210)))

(declare-fun res!697703 () Bool)

(assert (=> d!463605 (=> (not res!697703) (not e!1005210))))

(declare-datatypes ((tuple2!16592 0))(
  ( (tuple2!16593 (_1!9698 BalanceConc!11162) (_2!9698 BalanceConc!11160)) )
))
(declare-fun lex!1113 (LexerInterface!2609 List!17087 BalanceConc!11160) tuple2!16592)

(declare-fun print!1148 (LexerInterface!2609 BalanceConc!11162) BalanceConc!11160)

(declare-fun singletonSeq!1346 (Token!5526) BalanceConc!11162)

(assert (=> d!463605 (= res!697703 (= (list!6542 (_1!9698 (lex!1113 Lexer!2607 (rules!12075 thiss!10002) (print!1148 Lexer!2607 (singletonSeq!1346 (h!22417 lt!541809)))))) (list!6542 (singletonSeq!1346 (h!22417 lt!541809)))))))

(declare-fun e!1005209 () Bool)

(assert (=> d!463605 (= lt!541826 e!1005209)))

(declare-fun res!697702 () Bool)

(assert (=> d!463605 (=> (not res!697702) (not e!1005209))))

(declare-fun lt!541827 () tuple2!16592)

(declare-fun size!13795 (BalanceConc!11162) Int)

(assert (=> d!463605 (= res!697702 (= (size!13795 (_1!9698 lt!541827)) 1))))

(assert (=> d!463605 (= lt!541827 (lex!1113 Lexer!2607 (rules!12075 thiss!10002) (print!1148 Lexer!2607 (singletonSeq!1346 (h!22417 lt!541809)))))))

(assert (=> d!463605 (not (isEmpty!10189 (rules!12075 thiss!10002)))))

(assert (=> d!463605 (= (rulesProduceIndividualToken!1315 Lexer!2607 (rules!12075 thiss!10002) (h!22417 lt!541809)) lt!541826)))

(declare-fun b!1565123 () Bool)

(declare-fun res!697701 () Bool)

(assert (=> b!1565123 (=> (not res!697701) (not e!1005209))))

(declare-fun apply!4128 (BalanceConc!11162 Int) Token!5526)

(assert (=> b!1565123 (= res!697701 (= (apply!4128 (_1!9698 lt!541827) 0) (h!22417 lt!541809)))))

(declare-fun b!1565124 () Bool)

(declare-fun isEmpty!10191 (BalanceConc!11160) Bool)

(assert (=> b!1565124 (= e!1005209 (isEmpty!10191 (_2!9698 lt!541827)))))

(declare-fun b!1565125 () Bool)

(assert (=> b!1565125 (= e!1005210 (isEmpty!10191 (_2!9698 (lex!1113 Lexer!2607 (rules!12075 thiss!10002) (print!1148 Lexer!2607 (singletonSeq!1346 (h!22417 lt!541809)))))))))

(assert (= (and d!463605 res!697702) b!1565123))

(assert (= (and b!1565123 res!697701) b!1565124))

(assert (= (and d!463605 res!697703) b!1565125))

(assert (=> d!463605 m!1836479))

(declare-fun m!1836611 () Bool)

(assert (=> d!463605 m!1836611))

(declare-fun m!1836613 () Bool)

(assert (=> d!463605 m!1836613))

(assert (=> d!463605 m!1836611))

(declare-fun m!1836615 () Bool)

(assert (=> d!463605 m!1836615))

(assert (=> d!463605 m!1836613))

(declare-fun m!1836617 () Bool)

(assert (=> d!463605 m!1836617))

(declare-fun m!1836619 () Bool)

(assert (=> d!463605 m!1836619))

(assert (=> d!463605 m!1836611))

(declare-fun m!1836621 () Bool)

(assert (=> d!463605 m!1836621))

(declare-fun m!1836623 () Bool)

(assert (=> b!1565123 m!1836623))

(declare-fun m!1836625 () Bool)

(assert (=> b!1565124 m!1836625))

(assert (=> b!1565125 m!1836611))

(assert (=> b!1565125 m!1836611))

(assert (=> b!1565125 m!1836613))

(assert (=> b!1565125 m!1836613))

(assert (=> b!1565125 m!1836617))

(declare-fun m!1836627 () Bool)

(assert (=> b!1565125 m!1836627))

(assert (=> b!1564975 d!463605))

(declare-fun b!1565137 () Bool)

(declare-fun e!1005216 () List!17086)

(declare-fun ++!4429 (List!17086 List!17086) List!17086)

(assert (=> b!1565137 (= e!1005216 (++!4429 (list!6544 (left!13793 (c!253597 (tokens!2193 thiss!10002)))) (list!6544 (right!14123 (c!253597 (tokens!2193 thiss!10002))))))))

(declare-fun d!463627 () Bool)

(declare-fun c!253619 () Bool)

(assert (=> d!463627 (= c!253619 (is-Empty!5609 (c!253597 (tokens!2193 thiss!10002))))))

(declare-fun e!1005215 () List!17086)

(assert (=> d!463627 (= (list!6544 (c!253597 (tokens!2193 thiss!10002))) e!1005215)))

(declare-fun b!1565136 () Bool)

(declare-fun list!6546 (IArray!11223) List!17086)

(assert (=> b!1565136 (= e!1005216 (list!6546 (xs!8409 (c!253597 (tokens!2193 thiss!10002)))))))

(declare-fun b!1565134 () Bool)

(assert (=> b!1565134 (= e!1005215 Nil!17016)))

(declare-fun b!1565135 () Bool)

(assert (=> b!1565135 (= e!1005215 e!1005216)))

(declare-fun c!253620 () Bool)

(assert (=> b!1565135 (= c!253620 (is-Leaf!8320 (c!253597 (tokens!2193 thiss!10002))))))

(assert (= (and d!463627 c!253619) b!1565134))

(assert (= (and d!463627 (not c!253619)) b!1565135))

(assert (= (and b!1565135 c!253620) b!1565136))

(assert (= (and b!1565135 (not c!253620)) b!1565137))

(declare-fun m!1836629 () Bool)

(assert (=> b!1565137 m!1836629))

(declare-fun m!1836631 () Bool)

(assert (=> b!1565137 m!1836631))

(assert (=> b!1565137 m!1836629))

(assert (=> b!1565137 m!1836631))

(declare-fun m!1836633 () Bool)

(assert (=> b!1565137 m!1836633))

(declare-fun m!1836635 () Bool)

(assert (=> b!1565136 m!1836635))

(assert (=> d!463577 d!463627))

(declare-fun d!463629 () Bool)

(declare-fun res!697708 () Bool)

(declare-fun e!1005221 () Bool)

(assert (=> d!463629 (=> res!697708 e!1005221)))

(assert (=> d!463629 (= res!697708 (is-Nil!17017 (rules!12075 thiss!10002)))))

(assert (=> d!463629 (= (noDuplicateTag!1054 Lexer!2607 (rules!12075 thiss!10002) Nil!17022) e!1005221)))

(declare-fun b!1565142 () Bool)

(declare-fun e!1005222 () Bool)

(assert (=> b!1565142 (= e!1005221 e!1005222)))

(declare-fun res!697709 () Bool)

(assert (=> b!1565142 (=> (not res!697709) (not e!1005222))))

(declare-fun contains!3000 (List!17092 String!19684) Bool)

(assert (=> b!1565142 (= res!697709 (not (contains!3000 Nil!17022 (tag!3244 (h!22418 (rules!12075 thiss!10002))))))))

(declare-fun b!1565143 () Bool)

(assert (=> b!1565143 (= e!1005222 (noDuplicateTag!1054 Lexer!2607 (t!141714 (rules!12075 thiss!10002)) (Cons!17022 (tag!3244 (h!22418 (rules!12075 thiss!10002))) Nil!17022)))))

(assert (= (and d!463629 (not res!697708)) b!1565142))

(assert (= (and b!1565142 res!697709) b!1565143))

(declare-fun m!1836637 () Bool)

(assert (=> b!1565142 m!1836637))

(declare-fun m!1836639 () Bool)

(assert (=> b!1565143 m!1836639))

(assert (=> b!1564954 d!463629))

(assert (=> b!1564949 d!463589))

(declare-fun bs!389567 () Bool)

(declare-fun d!463631 () Bool)

(assert (= bs!389567 (and d!463631 d!463591)))

(declare-fun lambda!66184 () Int)

(assert (=> bs!389567 (= lambda!66184 lambda!66173)))

(declare-fun b!1565149 () Bool)

(declare-fun e!1005228 () Bool)

(assert (=> b!1565149 (= e!1005228 true)))

(declare-fun b!1565148 () Bool)

(declare-fun e!1005227 () Bool)

(assert (=> b!1565148 (= e!1005227 e!1005228)))

(declare-fun b!1565147 () Bool)

(declare-fun e!1005226 () Bool)

(assert (=> b!1565147 (= e!1005226 e!1005227)))

(assert (=> d!463631 e!1005226))

(assert (= b!1565148 b!1565149))

(assert (= b!1565147 b!1565148))

(assert (= (and d!463631 (is-Cons!17017 (rules!12075 thiss!10002))) b!1565147))

(assert (=> b!1565149 (< (dynLambda!7578 order!10073 (toValue!4367 (transformation!2980 (h!22418 (rules!12075 thiss!10002))))) (dynLambda!7579 order!10075 lambda!66184))))

(assert (=> b!1565149 (< (dynLambda!7580 order!10077 (toChars!4226 (transformation!2980 (h!22418 (rules!12075 thiss!10002))))) (dynLambda!7579 order!10075 lambda!66184))))

(assert (=> d!463631 true))

(declare-fun e!1005225 () Bool)

(assert (=> d!463631 e!1005225))

(declare-fun res!697712 () Bool)

(assert (=> d!463631 (=> (not res!697712) (not e!1005225))))

(declare-fun lt!541830 () Bool)

(assert (=> d!463631 (= res!697712 (= lt!541830 (forall!3945 (list!6542 (tokens!2193 thiss!10002)) lambda!66184)))))

(declare-fun forall!3947 (BalanceConc!11162 Int) Bool)

(assert (=> d!463631 (= lt!541830 (forall!3947 (tokens!2193 thiss!10002) lambda!66184))))

(assert (=> d!463631 (not (isEmpty!10189 (rules!12075 thiss!10002)))))

(assert (=> d!463631 (= (rulesProduceEachTokenIndividually!906 Lexer!2607 (rules!12075 thiss!10002) (tokens!2193 thiss!10002)) lt!541830)))

(declare-fun b!1565146 () Bool)

(assert (=> b!1565146 (= e!1005225 (= lt!541830 (rulesProduceEachTokenIndividuallyList!825 Lexer!2607 (rules!12075 thiss!10002) (list!6542 (tokens!2193 thiss!10002)))))))

(assert (= (and d!463631 res!697712) b!1565146))

(assert (=> d!463631 m!1836481))

(assert (=> d!463631 m!1836481))

(declare-fun m!1836643 () Bool)

(assert (=> d!463631 m!1836643))

(declare-fun m!1836645 () Bool)

(assert (=> d!463631 m!1836645))

(assert (=> d!463631 m!1836479))

(assert (=> b!1565146 m!1836481))

(assert (=> b!1565146 m!1836481))

(declare-fun m!1836647 () Bool)

(assert (=> b!1565146 m!1836647))

(assert (=> b!1564950 d!463631))

(declare-fun d!463635 () Bool)

(assert (=> d!463635 true))

(declare-fun lt!541833 () Bool)

(declare-fun rulesValidInductive!897 (LexerInterface!2609 List!17087) Bool)

(assert (=> d!463635 (= lt!541833 (rulesValidInductive!897 Lexer!2607 (rules!12075 thiss!10002)))))

(declare-fun lambda!66187 () Int)

(declare-fun forall!3948 (List!17087 Int) Bool)

(assert (=> d!463635 (= lt!541833 (forall!3948 (rules!12075 thiss!10002) lambda!66187))))

(assert (=> d!463635 (= (rulesValid!1054 Lexer!2607 (rules!12075 thiss!10002)) lt!541833)))

(declare-fun bs!389568 () Bool)

(assert (= bs!389568 d!463635))

(declare-fun m!1836649 () Bool)

(assert (=> bs!389568 m!1836649))

(declare-fun m!1836651 () Bool)

(assert (=> bs!389568 m!1836651))

(assert (=> d!463589 d!463635))

(declare-fun d!463637 () Bool)

(declare-fun c!253621 () Bool)

(assert (=> d!463637 (= c!253621 (is-Node!5609 (left!13793 (c!253597 (tokens!2193 thiss!10002)))))))

(declare-fun e!1005229 () Bool)

(assert (=> d!463637 (= (inv!22374 (left!13793 (c!253597 (tokens!2193 thiss!10002)))) e!1005229)))

(declare-fun b!1565152 () Bool)

(assert (=> b!1565152 (= e!1005229 (inv!22379 (left!13793 (c!253597 (tokens!2193 thiss!10002)))))))

(declare-fun b!1565153 () Bool)

(declare-fun e!1005230 () Bool)

(assert (=> b!1565153 (= e!1005229 e!1005230)))

(declare-fun res!697713 () Bool)

(assert (=> b!1565153 (= res!697713 (not (is-Leaf!8320 (left!13793 (c!253597 (tokens!2193 thiss!10002))))))))

(assert (=> b!1565153 (=> res!697713 e!1005230)))

(declare-fun b!1565154 () Bool)

(assert (=> b!1565154 (= e!1005230 (inv!22380 (left!13793 (c!253597 (tokens!2193 thiss!10002)))))))

(assert (= (and d!463637 c!253621) b!1565152))

(assert (= (and d!463637 (not c!253621)) b!1565153))

(assert (= (and b!1565153 (not res!697713)) b!1565154))

(declare-fun m!1836653 () Bool)

(assert (=> b!1565152 m!1836653))

(declare-fun m!1836655 () Bool)

(assert (=> b!1565154 m!1836655))

(assert (=> b!1565018 d!463637))

(declare-fun d!463639 () Bool)

(declare-fun c!253622 () Bool)

(assert (=> d!463639 (= c!253622 (is-Node!5609 (right!14123 (c!253597 (tokens!2193 thiss!10002)))))))

(declare-fun e!1005231 () Bool)

(assert (=> d!463639 (= (inv!22374 (right!14123 (c!253597 (tokens!2193 thiss!10002)))) e!1005231)))

(declare-fun b!1565155 () Bool)

(assert (=> b!1565155 (= e!1005231 (inv!22379 (right!14123 (c!253597 (tokens!2193 thiss!10002)))))))

(declare-fun b!1565156 () Bool)

(declare-fun e!1005232 () Bool)

(assert (=> b!1565156 (= e!1005231 e!1005232)))

(declare-fun res!697714 () Bool)

(assert (=> b!1565156 (= res!697714 (not (is-Leaf!8320 (right!14123 (c!253597 (tokens!2193 thiss!10002))))))))

(assert (=> b!1565156 (=> res!697714 e!1005232)))

(declare-fun b!1565157 () Bool)

(assert (=> b!1565157 (= e!1005232 (inv!22380 (right!14123 (c!253597 (tokens!2193 thiss!10002)))))))

(assert (= (and d!463639 c!253622) b!1565155))

(assert (= (and d!463639 (not c!253622)) b!1565156))

(assert (= (and b!1565156 (not res!697714)) b!1565157))

(declare-fun m!1836657 () Bool)

(assert (=> b!1565155 m!1836657))

(declare-fun m!1836659 () Bool)

(assert (=> b!1565157 m!1836659))

(assert (=> b!1565018 d!463639))

(declare-fun d!463641 () Bool)

(declare-fun size!13796 (List!17086) Int)

(assert (=> d!463641 (= (inv!22382 (xs!8409 (c!253597 (tokens!2193 thiss!10002)))) (<= (size!13796 (innerList!5669 (xs!8409 (c!253597 (tokens!2193 thiss!10002))))) 2147483647))))

(declare-fun bs!389569 () Bool)

(assert (= bs!389569 d!463641))

(declare-fun m!1836661 () Bool)

(assert (=> bs!389569 m!1836661))

(assert (=> b!1565019 d!463641))

(assert (=> d!463581 d!463575))

(declare-fun d!463643 () Bool)

(declare-fun res!697721 () Bool)

(declare-fun e!1005235 () Bool)

(assert (=> d!463643 (=> (not res!697721) (not e!1005235))))

(declare-fun size!13797 (Conc!5609) Int)

(assert (=> d!463643 (= res!697721 (= (csize!11448 (c!253597 (tokens!2193 thiss!10002))) (+ (size!13797 (left!13793 (c!253597 (tokens!2193 thiss!10002)))) (size!13797 (right!14123 (c!253597 (tokens!2193 thiss!10002)))))))))

(assert (=> d!463643 (= (inv!22379 (c!253597 (tokens!2193 thiss!10002))) e!1005235)))

(declare-fun b!1565164 () Bool)

(declare-fun res!697722 () Bool)

(assert (=> b!1565164 (=> (not res!697722) (not e!1005235))))

(assert (=> b!1565164 (= res!697722 (and (not (= (left!13793 (c!253597 (tokens!2193 thiss!10002))) Empty!5609)) (not (= (right!14123 (c!253597 (tokens!2193 thiss!10002))) Empty!5609))))))

(declare-fun b!1565165 () Bool)

(declare-fun res!697723 () Bool)

(assert (=> b!1565165 (=> (not res!697723) (not e!1005235))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!833 (Conc!5609) Int)

(assert (=> b!1565165 (= res!697723 (= (cheight!5820 (c!253597 (tokens!2193 thiss!10002))) (+ (max!0 (height!833 (left!13793 (c!253597 (tokens!2193 thiss!10002)))) (height!833 (right!14123 (c!253597 (tokens!2193 thiss!10002))))) 1)))))

(declare-fun b!1565166 () Bool)

(assert (=> b!1565166 (= e!1005235 (<= 0 (cheight!5820 (c!253597 (tokens!2193 thiss!10002)))))))

(assert (= (and d!463643 res!697721) b!1565164))

(assert (= (and b!1565164 res!697722) b!1565165))

(assert (= (and b!1565165 res!697723) b!1565166))

(declare-fun m!1836663 () Bool)

(assert (=> d!463643 m!1836663))

(declare-fun m!1836665 () Bool)

(assert (=> d!463643 m!1836665))

(declare-fun m!1836667 () Bool)

(assert (=> b!1565165 m!1836667))

(declare-fun m!1836669 () Bool)

(assert (=> b!1565165 m!1836669))

(assert (=> b!1565165 m!1836667))

(assert (=> b!1565165 m!1836669))

(declare-fun m!1836671 () Bool)

(assert (=> b!1565165 m!1836671))

(assert (=> b!1564996 d!463643))

(declare-fun bs!389570 () Bool)

(declare-fun d!463645 () Bool)

(assert (= bs!389570 (and d!463645 d!463591)))

(declare-fun lambda!66188 () Int)

(assert (=> bs!389570 (= lambda!66188 lambda!66173)))

(declare-fun bs!389571 () Bool)

(assert (= bs!389571 (and d!463645 d!463631)))

(assert (=> bs!389571 (= lambda!66188 lambda!66184)))

(declare-fun b!1565171 () Bool)

(declare-fun e!1005240 () Bool)

(assert (=> b!1565171 (= e!1005240 true)))

(declare-fun b!1565170 () Bool)

(declare-fun e!1005239 () Bool)

(assert (=> b!1565170 (= e!1005239 e!1005240)))

(declare-fun b!1565169 () Bool)

(declare-fun e!1005238 () Bool)

(assert (=> b!1565169 (= e!1005238 e!1005239)))

(assert (=> d!463645 e!1005238))

(assert (= b!1565170 b!1565171))

(assert (= b!1565169 b!1565170))

(assert (= (and d!463645 (is-Cons!17017 (rules!12075 thiss!10002))) b!1565169))

(assert (=> b!1565171 (< (dynLambda!7578 order!10073 (toValue!4367 (transformation!2980 (h!22418 (rules!12075 thiss!10002))))) (dynLambda!7579 order!10075 lambda!66188))))

(assert (=> b!1565171 (< (dynLambda!7580 order!10077 (toChars!4226 (transformation!2980 (h!22418 (rules!12075 thiss!10002))))) (dynLambda!7579 order!10075 lambda!66188))))

(assert (=> d!463645 true))

(declare-fun lt!541834 () Bool)

(assert (=> d!463645 (= lt!541834 (forall!3945 (t!141713 lt!541809) lambda!66188))))

(declare-fun e!1005237 () Bool)

(assert (=> d!463645 (= lt!541834 e!1005237)))

(declare-fun res!697725 () Bool)

(assert (=> d!463645 (=> res!697725 e!1005237)))

(assert (=> d!463645 (= res!697725 (not (is-Cons!17016 (t!141713 lt!541809))))))

(assert (=> d!463645 (not (isEmpty!10189 (rules!12075 thiss!10002)))))

(assert (=> d!463645 (= (rulesProduceEachTokenIndividuallyList!825 Lexer!2607 (rules!12075 thiss!10002) (t!141713 lt!541809)) lt!541834)))

(declare-fun b!1565167 () Bool)

(declare-fun e!1005236 () Bool)

(assert (=> b!1565167 (= e!1005237 e!1005236)))

(declare-fun res!697724 () Bool)

(assert (=> b!1565167 (=> (not res!697724) (not e!1005236))))

(assert (=> b!1565167 (= res!697724 (rulesProduceIndividualToken!1315 Lexer!2607 (rules!12075 thiss!10002) (h!22417 (t!141713 lt!541809))))))

(declare-fun b!1565168 () Bool)

(assert (=> b!1565168 (= e!1005236 (rulesProduceEachTokenIndividuallyList!825 Lexer!2607 (rules!12075 thiss!10002) (t!141713 (t!141713 lt!541809))))))

(assert (= (and d!463645 (not res!697725)) b!1565167))

(assert (= (and b!1565167 res!697724) b!1565168))

(declare-fun m!1836673 () Bool)

(assert (=> d!463645 m!1836673))

(assert (=> d!463645 m!1836479))

(declare-fun m!1836675 () Bool)

(assert (=> b!1565167 m!1836675))

(declare-fun m!1836677 () Bool)

(assert (=> b!1565168 m!1836677))

(assert (=> b!1564976 d!463645))

(declare-fun d!463647 () Bool)

(declare-fun res!697730 () Bool)

(declare-fun e!1005245 () Bool)

(assert (=> d!463647 (=> res!697730 e!1005245)))

(assert (=> d!463647 (= res!697730 (is-Nil!17016 lt!541809))))

(assert (=> d!463647 (= (forall!3945 lt!541809 lambda!66173) e!1005245)))

(declare-fun b!1565176 () Bool)

(declare-fun e!1005246 () Bool)

(assert (=> b!1565176 (= e!1005245 e!1005246)))

(declare-fun res!697731 () Bool)

(assert (=> b!1565176 (=> (not res!697731) (not e!1005246))))

(declare-fun dynLambda!7584 (Int Token!5526) Bool)

(assert (=> b!1565176 (= res!697731 (dynLambda!7584 lambda!66173 (h!22417 lt!541809)))))

(declare-fun b!1565177 () Bool)

(assert (=> b!1565177 (= e!1005246 (forall!3945 (t!141713 lt!541809) lambda!66173))))

(assert (= (and d!463647 (not res!697730)) b!1565176))

(assert (= (and b!1565176 res!697731) b!1565177))

(declare-fun b_lambda!49247 () Bool)

(assert (=> (not b_lambda!49247) (not b!1565176)))

(declare-fun m!1836679 () Bool)

(assert (=> b!1565176 m!1836679))

(declare-fun m!1836681 () Bool)

(assert (=> b!1565177 m!1836681))

(assert (=> d!463591 d!463647))

(assert (=> d!463591 d!463575))

(declare-fun d!463649 () Bool)

(assert (=> d!463649 (= (inv!22370 (tag!3244 (h!22418 (rules!12075 thiss!10002)))) (= (mod (str.len (value!94603 (tag!3244 (h!22418 (rules!12075 thiss!10002))))) 2) 0))))

(assert (=> b!1565008 d!463649))

(declare-fun d!463651 () Bool)

(declare-fun res!697734 () Bool)

(declare-fun e!1005249 () Bool)

(assert (=> d!463651 (=> (not res!697734) (not e!1005249))))

(declare-fun semiInverseModEq!1129 (Int Int) Bool)

(assert (=> d!463651 (= res!697734 (semiInverseModEq!1129 (toChars!4226 (transformation!2980 (h!22418 (rules!12075 thiss!10002)))) (toValue!4367 (transformation!2980 (h!22418 (rules!12075 thiss!10002))))))))

(assert (=> d!463651 (= (inv!22381 (transformation!2980 (h!22418 (rules!12075 thiss!10002)))) e!1005249)))

(declare-fun b!1565180 () Bool)

(declare-fun equivClasses!1070 (Int Int) Bool)

(assert (=> b!1565180 (= e!1005249 (equivClasses!1070 (toChars!4226 (transformation!2980 (h!22418 (rules!12075 thiss!10002)))) (toValue!4367 (transformation!2980 (h!22418 (rules!12075 thiss!10002))))))))

(assert (= (and d!463651 res!697734) b!1565180))

(declare-fun m!1836683 () Bool)

(assert (=> d!463651 m!1836683))

(declare-fun m!1836685 () Bool)

(assert (=> b!1565180 m!1836685))

(assert (=> b!1565008 d!463651))

(assert (=> b!1564921 d!463599))

(declare-fun b!1565193 () Bool)

(declare-fun e!1005254 () Bool)

(declare-fun e!1005255 () Bool)

(assert (=> b!1565193 (= e!1005254 e!1005255)))

(declare-fun res!697750 () Bool)

(assert (=> b!1565193 (=> (not res!697750) (not e!1005255))))

(assert (=> b!1565193 (= res!697750 (<= (- 1) (- (height!833 (left!13793 (c!253597 (tokens!2193 thiss!10002)))) (height!833 (right!14123 (c!253597 (tokens!2193 thiss!10002)))))))))

(declare-fun d!463653 () Bool)

(declare-fun res!697747 () Bool)

(assert (=> d!463653 (=> res!697747 e!1005254)))

(assert (=> d!463653 (= res!697747 (not (is-Node!5609 (c!253597 (tokens!2193 thiss!10002)))))))

(assert (=> d!463653 (= (isBalanced!1661 (c!253597 (tokens!2193 thiss!10002))) e!1005254)))

(declare-fun b!1565194 () Bool)

(declare-fun res!697752 () Bool)

(assert (=> b!1565194 (=> (not res!697752) (not e!1005255))))

(assert (=> b!1565194 (= res!697752 (isBalanced!1661 (right!14123 (c!253597 (tokens!2193 thiss!10002)))))))

(declare-fun b!1565195 () Bool)

(declare-fun isEmpty!10192 (Conc!5609) Bool)

(assert (=> b!1565195 (= e!1005255 (not (isEmpty!10192 (right!14123 (c!253597 (tokens!2193 thiss!10002))))))))

(declare-fun b!1565196 () Bool)

(declare-fun res!697749 () Bool)

(assert (=> b!1565196 (=> (not res!697749) (not e!1005255))))

(assert (=> b!1565196 (= res!697749 (not (isEmpty!10192 (left!13793 (c!253597 (tokens!2193 thiss!10002))))))))

(declare-fun b!1565197 () Bool)

(declare-fun res!697748 () Bool)

(assert (=> b!1565197 (=> (not res!697748) (not e!1005255))))

(assert (=> b!1565197 (= res!697748 (isBalanced!1661 (left!13793 (c!253597 (tokens!2193 thiss!10002)))))))

(declare-fun b!1565198 () Bool)

(declare-fun res!697751 () Bool)

(assert (=> b!1565198 (=> (not res!697751) (not e!1005255))))

(assert (=> b!1565198 (= res!697751 (<= (- (height!833 (left!13793 (c!253597 (tokens!2193 thiss!10002)))) (height!833 (right!14123 (c!253597 (tokens!2193 thiss!10002))))) 1))))

(assert (= (and d!463653 (not res!697747)) b!1565193))

(assert (= (and b!1565193 res!697750) b!1565198))

(assert (= (and b!1565198 res!697751) b!1565197))

(assert (= (and b!1565197 res!697748) b!1565194))

(assert (= (and b!1565194 res!697752) b!1565196))

(assert (= (and b!1565196 res!697749) b!1565195))

(declare-fun m!1836687 () Bool)

(assert (=> b!1565197 m!1836687))

(declare-fun m!1836689 () Bool)

(assert (=> b!1565195 m!1836689))

(declare-fun m!1836691 () Bool)

(assert (=> b!1565194 m!1836691))

(assert (=> b!1565193 m!1836667))

(assert (=> b!1565193 m!1836669))

(declare-fun m!1836693 () Bool)

(assert (=> b!1565196 m!1836693))

(assert (=> b!1565198 m!1836667))

(assert (=> b!1565198 m!1836669))

(assert (=> d!463597 d!463653))

(declare-fun d!463655 () Bool)

(declare-fun res!697757 () Bool)

(declare-fun e!1005258 () Bool)

(assert (=> d!463655 (=> (not res!697757) (not e!1005258))))

(assert (=> d!463655 (= res!697757 (<= (size!13796 (list!6546 (xs!8409 (c!253597 (tokens!2193 thiss!10002))))) 512))))

(assert (=> d!463655 (= (inv!22380 (c!253597 (tokens!2193 thiss!10002))) e!1005258)))

(declare-fun b!1565203 () Bool)

(declare-fun res!697758 () Bool)

(assert (=> b!1565203 (=> (not res!697758) (not e!1005258))))

(assert (=> b!1565203 (= res!697758 (= (csize!11449 (c!253597 (tokens!2193 thiss!10002))) (size!13796 (list!6546 (xs!8409 (c!253597 (tokens!2193 thiss!10002)))))))))

(declare-fun b!1565204 () Bool)

(assert (=> b!1565204 (= e!1005258 (and (> (csize!11449 (c!253597 (tokens!2193 thiss!10002))) 0) (<= (csize!11449 (c!253597 (tokens!2193 thiss!10002))) 512)))))

(assert (= (and d!463655 res!697757) b!1565203))

(assert (= (and b!1565203 res!697758) b!1565204))

(assert (=> d!463655 m!1836635))

(assert (=> d!463655 m!1836635))

(declare-fun m!1836695 () Bool)

(assert (=> d!463655 m!1836695))

(assert (=> b!1565203 m!1836635))

(assert (=> b!1565203 m!1836635))

(assert (=> b!1565203 m!1836695))

(assert (=> b!1564998 d!463655))

(declare-fun tp!460956 () Bool)

(declare-fun e!1005259 () Bool)

(declare-fun b!1565205 () Bool)

(declare-fun tp!460955 () Bool)

(assert (=> b!1565205 (= e!1005259 (and (inv!22374 (left!13793 (left!13793 (c!253597 (tokens!2193 thiss!10002))))) tp!460956 (inv!22374 (right!14123 (left!13793 (c!253597 (tokens!2193 thiss!10002))))) tp!460955))))

(declare-fun b!1565207 () Bool)

(declare-fun e!1005260 () Bool)

(declare-fun tp!460957 () Bool)

(assert (=> b!1565207 (= e!1005260 tp!460957)))

(declare-fun b!1565206 () Bool)

(assert (=> b!1565206 (= e!1005259 (and (inv!22382 (xs!8409 (left!13793 (c!253597 (tokens!2193 thiss!10002))))) e!1005260))))

(assert (=> b!1565018 (= tp!460932 (and (inv!22374 (left!13793 (c!253597 (tokens!2193 thiss!10002)))) e!1005259))))

(assert (= (and b!1565018 (is-Node!5609 (left!13793 (c!253597 (tokens!2193 thiss!10002))))) b!1565205))

(assert (= b!1565206 b!1565207))

(assert (= (and b!1565018 (is-Leaf!8320 (left!13793 (c!253597 (tokens!2193 thiss!10002))))) b!1565206))

(declare-fun m!1836697 () Bool)

(assert (=> b!1565205 m!1836697))

(declare-fun m!1836699 () Bool)

(assert (=> b!1565205 m!1836699))

(declare-fun m!1836701 () Bool)

(assert (=> b!1565206 m!1836701))

(assert (=> b!1565018 m!1836539))

(declare-fun b!1565208 () Bool)

(declare-fun e!1005261 () Bool)

(declare-fun tp!460958 () Bool)

(declare-fun tp!460959 () Bool)

(assert (=> b!1565208 (= e!1005261 (and (inv!22374 (left!13793 (right!14123 (c!253597 (tokens!2193 thiss!10002))))) tp!460959 (inv!22374 (right!14123 (right!14123 (c!253597 (tokens!2193 thiss!10002))))) tp!460958))))

(declare-fun b!1565210 () Bool)

(declare-fun e!1005262 () Bool)

(declare-fun tp!460960 () Bool)

(assert (=> b!1565210 (= e!1005262 tp!460960)))

(declare-fun b!1565209 () Bool)

(assert (=> b!1565209 (= e!1005261 (and (inv!22382 (xs!8409 (right!14123 (c!253597 (tokens!2193 thiss!10002))))) e!1005262))))

(assert (=> b!1565018 (= tp!460931 (and (inv!22374 (right!14123 (c!253597 (tokens!2193 thiss!10002)))) e!1005261))))

(assert (= (and b!1565018 (is-Node!5609 (right!14123 (c!253597 (tokens!2193 thiss!10002))))) b!1565208))

(assert (= b!1565209 b!1565210))

(assert (= (and b!1565018 (is-Leaf!8320 (right!14123 (c!253597 (tokens!2193 thiss!10002))))) b!1565209))

(declare-fun m!1836703 () Bool)

(assert (=> b!1565208 m!1836703))

(declare-fun m!1836705 () Bool)

(assert (=> b!1565208 m!1836705))

(declare-fun m!1836707 () Bool)

(assert (=> b!1565209 m!1836707))

(assert (=> b!1565018 m!1836541))

(declare-fun b!1565224 () Bool)

(declare-fun b_free!41847 () Bool)

(declare-fun b_next!42551 () Bool)

(assert (=> b!1565224 (= b_free!41847 (not b_next!42551))))

(declare-fun tp!460973 () Bool)

(declare-fun b_and!109209 () Bool)

(assert (=> b!1565224 (= tp!460973 b_and!109209)))

(declare-fun b_free!41849 () Bool)

(declare-fun b_next!42553 () Bool)

(assert (=> b!1565224 (= b_free!41849 (not b_next!42553))))

(declare-fun tp!460972 () Bool)

(declare-fun b_and!109211 () Bool)

(assert (=> b!1565224 (= tp!460972 b_and!109211)))

(declare-fun e!1005277 () Bool)

(declare-fun tp!460975 () Bool)

(declare-fun e!1005278 () Bool)

(declare-fun b!1565221 () Bool)

(declare-fun inv!22387 (Token!5526) Bool)

(assert (=> b!1565221 (= e!1005278 (and (inv!22387 (h!22417 (innerList!5669 (xs!8409 (c!253597 (tokens!2193 thiss!10002)))))) e!1005277 tp!460975))))

(assert (=> b!1565020 (= tp!460933 e!1005278)))

(declare-fun e!1005275 () Bool)

(declare-fun tp!460974 () Bool)

(declare-fun b!1565222 () Bool)

(declare-fun inv!21 (TokenValue!3070) Bool)

(assert (=> b!1565222 (= e!1005277 (and (inv!21 (value!94604 (h!22417 (innerList!5669 (xs!8409 (c!253597 (tokens!2193 thiss!10002))))))) e!1005275 tp!460974))))

(declare-fun e!1005276 () Bool)

(declare-fun b!1565223 () Bool)

(declare-fun tp!460971 () Bool)

(assert (=> b!1565223 (= e!1005275 (and tp!460971 (inv!22370 (tag!3244 (rule!4766 (h!22417 (innerList!5669 (xs!8409 (c!253597 (tokens!2193 thiss!10002)))))))) (inv!22381 (transformation!2980 (rule!4766 (h!22417 (innerList!5669 (xs!8409 (c!253597 (tokens!2193 thiss!10002)))))))) e!1005276))))

(assert (=> b!1565224 (= e!1005276 (and tp!460973 tp!460972))))

(assert (= b!1565223 b!1565224))

(assert (= b!1565222 b!1565223))

(assert (= b!1565221 b!1565222))

(assert (= (and b!1565020 (is-Cons!17016 (innerList!5669 (xs!8409 (c!253597 (tokens!2193 thiss!10002)))))) b!1565221))

(declare-fun m!1836709 () Bool)

(assert (=> b!1565221 m!1836709))

(declare-fun m!1836711 () Bool)

(assert (=> b!1565222 m!1836711))

(declare-fun m!1836713 () Bool)

(assert (=> b!1565223 m!1836713))

(declare-fun m!1836715 () Bool)

(assert (=> b!1565223 m!1836715))

(declare-fun b!1565227 () Bool)

(declare-fun b_free!41851 () Bool)

(declare-fun b_next!42555 () Bool)

(assert (=> b!1565227 (= b_free!41851 (not b_next!42555))))

(declare-fun tp!460976 () Bool)

(declare-fun b_and!109213 () Bool)

(assert (=> b!1565227 (= tp!460976 b_and!109213)))

(declare-fun b_free!41853 () Bool)

(declare-fun b_next!42557 () Bool)

(assert (=> b!1565227 (= b_free!41853 (not b_next!42557))))

(declare-fun tp!460979 () Bool)

(declare-fun b_and!109215 () Bool)

(assert (=> b!1565227 (= tp!460979 b_and!109215)))

(declare-fun e!1005283 () Bool)

(assert (=> b!1565227 (= e!1005283 (and tp!460976 tp!460979))))

(declare-fun tp!460978 () Bool)

(declare-fun b!1565226 () Bool)

(declare-fun e!1005284 () Bool)

(assert (=> b!1565226 (= e!1005284 (and tp!460978 (inv!22370 (tag!3244 (h!22418 (t!141714 (rules!12075 thiss!10002))))) (inv!22381 (transformation!2980 (h!22418 (t!141714 (rules!12075 thiss!10002))))) e!1005283))))

(declare-fun b!1565225 () Bool)

(declare-fun e!1005282 () Bool)

(declare-fun tp!460977 () Bool)

(assert (=> b!1565225 (= e!1005282 (and e!1005284 tp!460977))))

(assert (=> b!1565007 (= tp!460922 e!1005282)))

(assert (= b!1565226 b!1565227))

(assert (= b!1565225 b!1565226))

(assert (= (and b!1565007 (is-Cons!17017 (t!141714 (rules!12075 thiss!10002)))) b!1565225))

(declare-fun m!1836717 () Bool)

(assert (=> b!1565226 m!1836717))

(declare-fun m!1836719 () Bool)

(assert (=> b!1565226 m!1836719))

(declare-fun b!1565240 () Bool)

(declare-fun e!1005287 () Bool)

(declare-fun tp!460994 () Bool)

(assert (=> b!1565240 (= e!1005287 tp!460994)))

(declare-fun b!1565239 () Bool)

(declare-fun tp!460992 () Bool)

(declare-fun tp!460990 () Bool)

(assert (=> b!1565239 (= e!1005287 (and tp!460992 tp!460990))))

(assert (=> b!1565008 (= tp!460923 e!1005287)))

(declare-fun b!1565241 () Bool)

(declare-fun tp!460991 () Bool)

(declare-fun tp!460993 () Bool)

(assert (=> b!1565241 (= e!1005287 (and tp!460991 tp!460993))))

(declare-fun b!1565238 () Bool)

(declare-fun tp_is_empty!7139 () Bool)

(assert (=> b!1565238 (= e!1005287 tp_is_empty!7139)))

(assert (= (and b!1565008 (is-ElementMatch!4308 (regex!2980 (h!22418 (rules!12075 thiss!10002))))) b!1565238))

(assert (= (and b!1565008 (is-Concat!7379 (regex!2980 (h!22418 (rules!12075 thiss!10002))))) b!1565239))

(assert (= (and b!1565008 (is-Star!4308 (regex!2980 (h!22418 (rules!12075 thiss!10002))))) b!1565240))

(assert (= (and b!1565008 (is-Union!4308 (regex!2980 (h!22418 (rules!12075 thiss!10002))))) b!1565241))

(declare-fun b!1565244 () Bool)

(declare-fun e!1005290 () Bool)

(assert (=> b!1565244 (= e!1005290 true)))

(declare-fun b!1565243 () Bool)

(declare-fun e!1005289 () Bool)

(assert (=> b!1565243 (= e!1005289 e!1005290)))

(declare-fun b!1565242 () Bool)

(declare-fun e!1005288 () Bool)

(assert (=> b!1565242 (= e!1005288 e!1005289)))

(assert (=> b!1564985 e!1005288))

(assert (= b!1565243 b!1565244))

(assert (= b!1565242 b!1565243))

(assert (= (and b!1564985 (is-Cons!17017 (t!141714 (rules!12075 thiss!10002)))) b!1565242))

(assert (=> b!1565244 (< (dynLambda!7578 order!10073 (toValue!4367 (transformation!2980 (h!22418 (t!141714 (rules!12075 thiss!10002)))))) (dynLambda!7579 order!10075 lambda!66173))))

(assert (=> b!1565244 (< (dynLambda!7580 order!10077 (toChars!4226 (transformation!2980 (h!22418 (t!141714 (rules!12075 thiss!10002)))))) (dynLambda!7579 order!10075 lambda!66173))))

(declare-fun b_lambda!49249 () Bool)

(assert (= b_lambda!49247 (or d!463591 b_lambda!49249)))

(declare-fun bs!389572 () Bool)

(declare-fun d!463657 () Bool)

(assert (= bs!389572 (and d!463657 d!463591)))

(assert (=> bs!389572 (= (dynLambda!7584 lambda!66173 (h!22417 lt!541809)) (rulesProduceIndividualToken!1315 Lexer!2607 (rules!12075 thiss!10002) (h!22417 lt!541809)))))

(assert (=> bs!389572 m!1836525))

(assert (=> b!1565176 d!463657))

(push 1)

(assert (not b!1565125))

(assert (not b!1565209))

(assert b_and!109203)

(assert (not b!1565242))

(assert (not d!463641))

(assert (not b!1565168))

(assert (not b!1565222))

(assert (not b!1565137))

(assert (not b!1565143))

(assert (not d!463655))

(assert (not d!463643))

(assert (not b!1565198))

(assert (not b_next!42557))

(assert b_and!109215)

(assert (not b!1565147))

(assert (not b_next!42555))

(assert (not b!1565165))

(assert (not b!1565241))

(assert (not b!1565124))

(assert b_and!109213)

(assert (not b!1565157))

(assert (not b_next!42543))

(assert (not b!1565123))

(assert (not b!1565167))

(assert (not b!1565146))

(assert (not b!1565194))

(assert (not b!1565195))

(assert (not b!1565177))

(assert (not b!1565207))

(assert b_and!109201)

(assert (not d!463631))

(assert (not b!1565225))

(assert (not b!1565203))

(assert (not b!1565208))

(assert (not b!1565205))

(assert (not d!463651))

(assert (not d!463645))

(assert (not b!1565206))

(assert (not b!1565226))

(assert (not b!1565136))

(assert (not b!1565154))

(assert (not b_lambda!49249))

(assert (not b!1565210))

(assert tp_is_empty!7139)

(assert (not d!463635))

(assert (not b!1565180))

(assert (not b!1565152))

(assert (not b!1565142))

(assert (not b!1565155))

(assert (not b_next!42545))

(assert (not b!1565196))

(assert (not b_next!42551))

(assert (not b!1565169))

(assert (not b!1565239))

(assert (not d!463605))

(assert b_and!109209)

(assert (not b!1565240))

(assert (not bs!389572))

(assert (not b_next!42553))

(assert (not b!1565221))

(assert (not b!1565197))

(assert (not d!463601))

(assert (not b!1565193))

(assert (not b!1565018))

(assert b_and!109211)

(assert (not b!1565223))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!42557))

(assert b_and!109213)

(assert (not b_next!42543))

(assert b_and!109201)

(assert b_and!109203)

(assert (not b_next!42545))

(assert (not b_next!42551))

(assert b_and!109209)

(assert (not b_next!42553))

(assert b_and!109211)

(assert b_and!109215)

(assert (not b_next!42555))

(check-sat)

(pop 1)

