; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!145498 () Bool)

(assert start!145498)

(declare-datatypes ((List!17066 0))(
  ( (Nil!16996) (Cons!16996 (h!22397 (_ BitVec 16)) (t!141693 List!17066)) )
))
(declare-datatypes ((TokenValue!3066 0))(
  ( (FloatLiteralValue!6132 (text!21907 List!17066)) (TokenValueExt!3065 (__x!11434 Int)) (Broken!15330 (value!94464 List!17066)) (Object!3135) (End!3066) (Def!3066) (Underscore!3066) (Match!3066) (Else!3066) (Error!3066) (Case!3066) (If!3066) (Extends!3066) (Abstract!3066) (Class!3066) (Val!3066) (DelimiterValue!6132 (del!3126 List!17066)) (KeywordValue!3072 (value!94465 List!17066)) (CommentValue!6132 (value!94466 List!17066)) (WhitespaceValue!6132 (value!94467 List!17066)) (IndentationValue!3066 (value!94468 List!17066)) (String!19663) (Int32!3066) (Broken!15331 (value!94469 List!17066)) (Boolean!3067) (Unit!26185) (OperatorValue!3069 (op!3126 List!17066)) (IdentifierValue!6132 (value!94470 List!17066)) (IdentifierValue!6133 (value!94471 List!17066)) (WhitespaceValue!6133 (value!94472 List!17066)) (True!6132) (False!6132) (Broken!15332 (value!94473 List!17066)) (Broken!15333 (value!94474 List!17066)) (True!6133) (RightBrace!3066) (RightBracket!3066) (Colon!3066) (Null!3066) (Comma!3066) (LeftBracket!3066) (False!6133) (LeftBrace!3066) (ImaginaryLiteralValue!3066 (text!21908 List!17066)) (StringLiteralValue!9198 (value!94475 List!17066)) (EOFValue!3066 (value!94476 List!17066)) (IdentValue!3066 (value!94477 List!17066)) (DelimiterValue!6133 (value!94478 List!17066)) (DedentValue!3066 (value!94479 List!17066)) (NewLineValue!3066 (value!94480 List!17066)) (IntegerValue!9198 (value!94481 (_ BitVec 32)) (text!21909 List!17066)) (IntegerValue!9199 (value!94482 Int) (text!21910 List!17066)) (Times!3066) (Or!3066) (Equal!3066) (Minus!3066) (Broken!15334 (value!94483 List!17066)) (And!3066) (Div!3066) (LessEqual!3066) (Mod!3066) (Concat!7370) (Not!3066) (Plus!3066) (SpaceValue!3066 (value!94484 List!17066)) (IntegerValue!9200 (value!94485 Int) (text!21911 List!17066)) (StringLiteralValue!9199 (text!21912 List!17066)) (FloatLiteralValue!6133 (text!21913 List!17066)) (BytesLiteralValue!3066 (value!94486 List!17066)) (CommentValue!6133 (value!94487 List!17066)) (StringLiteralValue!9200 (value!94488 List!17066)) (ErrorTokenValue!3066 (msg!3127 List!17066)) )
))
(declare-datatypes ((C!8782 0))(
  ( (C!8783 (val!4987 Int)) )
))
(declare-datatypes ((List!17067 0))(
  ( (Nil!16997) (Cons!16997 (h!22398 C!8782) (t!141694 List!17067)) )
))
(declare-datatypes ((IArray!11205 0))(
  ( (IArray!11206 (innerList!5660 List!17067)) )
))
(declare-datatypes ((Conc!5600 0))(
  ( (Node!5600 (left!13782 Conc!5600) (right!14112 Conc!5600) (csize!11430 Int) (cheight!5811 Int)) (Leaf!8309 (xs!8400 IArray!11205) (csize!11431 Int)) (Empty!5600) )
))
(declare-datatypes ((BalanceConc!11144 0))(
  ( (BalanceConc!11145 (c!253571 Conc!5600)) )
))
(declare-datatypes ((Regex!4304 0))(
  ( (ElementMatch!4304 (c!253572 C!8782)) (Concat!7371 (regOne!9120 Regex!4304) (regTwo!9120 Regex!4304)) (EmptyExpr!4304) (Star!4304 (reg!4633 Regex!4304)) (EmptyLang!4304) (Union!4304 (regOne!9121 Regex!4304) (regTwo!9121 Regex!4304)) )
))
(declare-datatypes ((String!19664 0))(
  ( (String!19665 (value!94489 String)) )
))
(declare-datatypes ((TokenValueInjection!5792 0))(
  ( (TokenValueInjection!5793 (toValue!4363 Int) (toChars!4222 Int)) )
))
(declare-datatypes ((Rule!5752 0))(
  ( (Rule!5753 (regex!2976 Regex!4304) (tag!3240 String!19664) (isSeparator!2976 Bool) (transformation!2976 TokenValueInjection!5792)) )
))
(declare-datatypes ((Token!5518 0))(
  ( (Token!5519 (value!94490 TokenValue!3066) (rule!4762 Rule!5752) (size!13789 Int) (originalCharacters!3790 List!17067)) )
))
(declare-datatypes ((List!17068 0))(
  ( (Nil!16998) (Cons!16998 (h!22399 Token!5518) (t!141695 List!17068)) )
))
(declare-fun lt!541797 () List!17068)

(declare-datatypes ((IArray!11207 0))(
  ( (IArray!11208 (innerList!5661 List!17068)) )
))
(declare-datatypes ((Conc!5601 0))(
  ( (Node!5601 (left!13783 Conc!5601) (right!14113 Conc!5601) (csize!11432 Int) (cheight!5812 Int)) (Leaf!8310 (xs!8401 IArray!11207) (csize!11433 Int)) (Empty!5601) )
))
(declare-datatypes ((BalanceConc!11146 0))(
  ( (BalanceConc!11147 (c!253573 Conc!5601)) )
))
(declare-datatypes ((List!17069 0))(
  ( (Nil!16999) (Cons!16999 (h!22400 Rule!5752) (t!141696 List!17069)) )
))
(declare-datatypes ((PrintableTokens!1170 0))(
  ( (PrintableTokens!1171 (rules!12069 List!17069) (tokens!2189 BalanceConc!11146)) )
))
(declare-fun thiss!10002 () PrintableTokens!1170)

(declare-fun list!6535 (BalanceConc!11146) List!17068)

(assert (=> start!145498 (= lt!541797 (list!6535 (tokens!2189 thiss!10002)))))

(declare-fun isEmpty!10185 (List!17069) Bool)

(assert (=> start!145498 (isEmpty!10185 (rules!12069 thiss!10002))))

(declare-fun e!1004929 () Bool)

(declare-fun inv!22347 (PrintableTokens!1170) Bool)

(assert (=> start!145498 (and (inv!22347 thiss!10002) e!1004929)))

(declare-fun b!1564719 () Bool)

(declare-fun e!1004930 () Bool)

(declare-fun tp!460797 () Bool)

(declare-fun inv!22348 (Conc!5601) Bool)

(assert (=> b!1564719 (= e!1004930 (and (inv!22348 (c!253573 (tokens!2189 thiss!10002))) tp!460797))))

(declare-fun b!1564718 () Bool)

(declare-fun tp!460798 () Bool)

(declare-fun inv!22349 (BalanceConc!11146) Bool)

(assert (=> b!1564718 (= e!1004929 (and tp!460798 (inv!22349 (tokens!2189 thiss!10002)) e!1004930))))

(assert (= b!1564718 b!1564719))

(assert (= start!145498 b!1564718))

(declare-fun m!1836327 () Bool)

(assert (=> start!145498 m!1836327))

(declare-fun m!1836329 () Bool)

(assert (=> start!145498 m!1836329))

(declare-fun m!1836331 () Bool)

(assert (=> start!145498 m!1836331))

(declare-fun m!1836333 () Bool)

(assert (=> b!1564719 m!1836333))

(declare-fun m!1836335 () Bool)

(assert (=> b!1564718 m!1836335))

(push 1)

(assert (not start!145498))

(assert (not b!1564719))

(assert (not b!1564718))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!463529 () Bool)

(declare-fun list!6537 (Conc!5601) List!17068)

(assert (=> d!463529 (= (list!6535 (tokens!2189 thiss!10002)) (list!6537 (c!253573 (tokens!2189 thiss!10002))))))

(declare-fun bs!389547 () Bool)

(assert (= bs!389547 d!463529))

(declare-fun m!1836347 () Bool)

(assert (=> bs!389547 m!1836347))

(assert (=> start!145498 d!463529))

(declare-fun d!463533 () Bool)

(assert (=> d!463533 (= (isEmpty!10185 (rules!12069 thiss!10002)) (is-Nil!16999 (rules!12069 thiss!10002)))))

(assert (=> start!145498 d!463533))

(declare-fun d!463535 () Bool)

(declare-fun res!697540 () Bool)

(declare-fun e!1004939 () Bool)

(assert (=> d!463535 (=> (not res!697540) (not e!1004939))))

(assert (=> d!463535 (= res!697540 (not (isEmpty!10185 (rules!12069 thiss!10002))))))

(assert (=> d!463535 (= (inv!22347 thiss!10002) e!1004939)))

(declare-fun b!1564732 () Bool)

(declare-fun res!697541 () Bool)

(assert (=> b!1564732 (=> (not res!697541) (not e!1004939))))

(declare-datatypes ((LexerInterface!2605 0))(
  ( (LexerInterfaceExt!2602 (__x!11436 Int)) (Lexer!2603) )
))
(declare-fun rulesInvariant!2282 (LexerInterface!2605 List!17069) Bool)

(assert (=> b!1564732 (= res!697541 (rulesInvariant!2282 Lexer!2603 (rules!12069 thiss!10002)))))

(declare-fun b!1564733 () Bool)

(declare-fun res!697542 () Bool)

(assert (=> b!1564733 (=> (not res!697542) (not e!1004939))))

(declare-fun rulesProduceEachTokenIndividually!903 (LexerInterface!2605 List!17069 BalanceConc!11146) Bool)

(assert (=> b!1564733 (= res!697542 (rulesProduceEachTokenIndividually!903 Lexer!2603 (rules!12069 thiss!10002) (tokens!2189 thiss!10002)))))

(declare-fun b!1564734 () Bool)

(declare-fun separableTokens!274 (LexerInterface!2605 BalanceConc!11146 List!17069) Bool)

(assert (=> b!1564734 (= e!1004939 (separableTokens!274 Lexer!2603 (tokens!2189 thiss!10002) (rules!12069 thiss!10002)))))

(assert (= (and d!463535 res!697540) b!1564732))

(assert (= (and b!1564732 res!697541) b!1564733))

(assert (= (and b!1564733 res!697542) b!1564734))

(assert (=> d!463535 m!1836329))

(declare-fun m!1836353 () Bool)

(assert (=> b!1564732 m!1836353))

(declare-fun m!1836355 () Bool)

(assert (=> b!1564733 m!1836355))

(declare-fun m!1836357 () Bool)

(assert (=> b!1564734 m!1836357))

(assert (=> start!145498 d!463535))

(declare-fun d!463543 () Bool)

(declare-fun c!253579 () Bool)

(assert (=> d!463543 (= c!253579 (is-Node!5601 (c!253573 (tokens!2189 thiss!10002))))))

(declare-fun e!1004944 () Bool)

(assert (=> d!463543 (= (inv!22348 (c!253573 (tokens!2189 thiss!10002))) e!1004944)))

(declare-fun b!1564741 () Bool)

(declare-fun inv!22353 (Conc!5601) Bool)

(assert (=> b!1564741 (= e!1004944 (inv!22353 (c!253573 (tokens!2189 thiss!10002))))))

(declare-fun b!1564742 () Bool)

(declare-fun e!1004945 () Bool)

(assert (=> b!1564742 (= e!1004944 e!1004945)))

(declare-fun res!697545 () Bool)

(assert (=> b!1564742 (= res!697545 (not (is-Leaf!8310 (c!253573 (tokens!2189 thiss!10002)))))))

(assert (=> b!1564742 (=> res!697545 e!1004945)))

(declare-fun b!1564743 () Bool)

(declare-fun inv!22354 (Conc!5601) Bool)

(assert (=> b!1564743 (= e!1004945 (inv!22354 (c!253573 (tokens!2189 thiss!10002))))))

(assert (= (and d!463543 c!253579) b!1564741))

(assert (= (and d!463543 (not c!253579)) b!1564742))

(assert (= (and b!1564742 (not res!697545)) b!1564743))

(declare-fun m!1836359 () Bool)

(assert (=> b!1564741 m!1836359))

(declare-fun m!1836361 () Bool)

(assert (=> b!1564743 m!1836361))

(assert (=> b!1564719 d!463543))

(declare-fun d!463545 () Bool)

(declare-fun isBalanced!1658 (Conc!5601) Bool)

(assert (=> d!463545 (= (inv!22349 (tokens!2189 thiss!10002)) (isBalanced!1658 (c!253573 (tokens!2189 thiss!10002))))))

(declare-fun bs!389550 () Bool)

(assert (= bs!389550 d!463545))

(declare-fun m!1836363 () Bool)

(assert (=> bs!389550 m!1836363))

(assert (=> b!1564718 d!463545))

(declare-fun b!1564752 () Bool)

(declare-fun e!1004950 () Bool)

(declare-fun tp!460811 () Bool)

(declare-fun tp!460812 () Bool)

(assert (=> b!1564752 (= e!1004950 (and (inv!22348 (left!13783 (c!253573 (tokens!2189 thiss!10002)))) tp!460811 (inv!22348 (right!14113 (c!253573 (tokens!2189 thiss!10002)))) tp!460812))))

(declare-fun b!1564754 () Bool)

(declare-fun e!1004951 () Bool)

(declare-fun tp!460813 () Bool)

(assert (=> b!1564754 (= e!1004951 tp!460813)))

(declare-fun b!1564753 () Bool)

(declare-fun inv!22355 (IArray!11207) Bool)

(assert (=> b!1564753 (= e!1004950 (and (inv!22355 (xs!8401 (c!253573 (tokens!2189 thiss!10002)))) e!1004951))))

(assert (=> b!1564719 (= tp!460797 (and (inv!22348 (c!253573 (tokens!2189 thiss!10002))) e!1004950))))

(assert (= (and b!1564719 (is-Node!5601 (c!253573 (tokens!2189 thiss!10002)))) b!1564752))

(assert (= b!1564753 b!1564754))

(assert (= (and b!1564719 (is-Leaf!8310 (c!253573 (tokens!2189 thiss!10002)))) b!1564753))

(declare-fun m!1836365 () Bool)

(assert (=> b!1564752 m!1836365))

(declare-fun m!1836367 () Bool)

(assert (=> b!1564752 m!1836367))

(declare-fun m!1836369 () Bool)

(assert (=> b!1564753 m!1836369))

(assert (=> b!1564719 m!1836333))

(declare-fun b!1564765 () Bool)

(declare-fun b_free!41823 () Bool)

(declare-fun b_next!42527 () Bool)

(assert (=> b!1564765 (= b_free!41823 (not b_next!42527))))

(declare-fun tp!460823 () Bool)

(declare-fun b_and!109185 () Bool)

(assert (=> b!1564765 (= tp!460823 b_and!109185)))

(declare-fun b_free!41825 () Bool)

(declare-fun b_next!42529 () Bool)

(assert (=> b!1564765 (= b_free!41825 (not b_next!42529))))

(declare-fun tp!460824 () Bool)

(declare-fun b_and!109187 () Bool)

(assert (=> b!1564765 (= tp!460824 b_and!109187)))

(declare-fun e!1004962 () Bool)

(assert (=> b!1564765 (= e!1004962 (and tp!460823 tp!460824))))

(declare-fun b!1564764 () Bool)

(declare-fun tp!460822 () Bool)

(declare-fun e!1004961 () Bool)

(declare-fun inv!22344 (String!19664) Bool)

(declare-fun inv!22356 (TokenValueInjection!5792) Bool)

(assert (=> b!1564764 (= e!1004961 (and tp!460822 (inv!22344 (tag!3240 (h!22400 (rules!12069 thiss!10002)))) (inv!22356 (transformation!2976 (h!22400 (rules!12069 thiss!10002)))) e!1004962))))

(declare-fun b!1564763 () Bool)

(declare-fun e!1004963 () Bool)

(declare-fun tp!460825 () Bool)

(assert (=> b!1564763 (= e!1004963 (and e!1004961 tp!460825))))

(assert (=> b!1564718 (= tp!460798 e!1004963)))

(assert (= b!1564764 b!1564765))

(assert (= b!1564763 b!1564764))

(assert (= (and b!1564718 (is-Cons!16999 (rules!12069 thiss!10002))) b!1564763))

(declare-fun m!1836371 () Bool)

(assert (=> b!1564764 m!1836371))

(declare-fun m!1836373 () Bool)

(assert (=> b!1564764 m!1836373))

(push 1)

(assert (not d!463545))

(assert (not b_next!42529))

(assert (not b!1564743))

(assert (not b_next!42527))

(assert (not b!1564752))

(assert (not b!1564764))

(assert (not b!1564741))

(assert (not b!1564732))

(assert (not b!1564719))

(assert b_and!109185)

(assert (not b!1564733))

(assert (not d!463535))

(assert (not b!1564734))

(assert (not d!463529))

(assert (not b!1564754))

(assert b_and!109187)

(assert (not b!1564763))

(assert (not b!1564753))

(check-sat)

(pop 1)

(push 1)

(assert b_and!109185)

(assert b_and!109187)

(assert (not b_next!42527))

(assert (not b_next!42529))

(check-sat)

(pop 1)

