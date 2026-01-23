; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239974 () Bool)

(assert start!239974)

(declare-fun b!2461547 () Bool)

(declare-fun b_free!70677 () Bool)

(declare-fun b_next!71381 () Bool)

(assert (=> b!2461547 (= b_free!70677 (not b_next!71381))))

(declare-fun tp!783808 () Bool)

(declare-fun b_and!185749 () Bool)

(assert (=> b!2461547 (= tp!783808 b_and!185749)))

(declare-fun b_free!70679 () Bool)

(declare-fun b_next!71383 () Bool)

(assert (=> b!2461547 (= b_free!70679 (not b_next!71383))))

(declare-fun tp!783815 () Bool)

(declare-fun b_and!185751 () Bool)

(assert (=> b!2461547 (= tp!783815 b_and!185751)))

(declare-fun b!2461543 () Bool)

(declare-fun b_free!70681 () Bool)

(declare-fun b_next!71385 () Bool)

(assert (=> b!2461543 (= b_free!70681 (not b_next!71385))))

(declare-fun tp!783820 () Bool)

(declare-fun b_and!185753 () Bool)

(assert (=> b!2461543 (= tp!783820 b_and!185753)))

(declare-fun b_free!70683 () Bool)

(declare-fun b_next!71387 () Bool)

(assert (=> b!2461543 (= b_free!70683 (not b_next!71387))))

(declare-fun tp!783816 () Bool)

(declare-fun b_and!185755 () Bool)

(assert (=> b!2461543 (= tp!783816 b_and!185755)))

(declare-fun b!2461548 () Bool)

(declare-fun b_free!70685 () Bool)

(declare-fun b_next!71389 () Bool)

(assert (=> b!2461548 (= b_free!70685 (not b_next!71389))))

(declare-fun tp!783819 () Bool)

(declare-fun b_and!185757 () Bool)

(assert (=> b!2461548 (= tp!783819 b_and!185757)))

(declare-fun b_free!70687 () Bool)

(declare-fun b_next!71391 () Bool)

(assert (=> b!2461548 (= b_free!70687 (not b_next!71391))))

(declare-fun tp!783812 () Bool)

(declare-fun b_and!185759 () Bool)

(assert (=> b!2461548 (= tp!783812 b_and!185759)))

(declare-fun b!2461536 () Bool)

(declare-fun b_free!70689 () Bool)

(declare-fun b_next!71393 () Bool)

(assert (=> b!2461536 (= b_free!70689 (not b_next!71393))))

(declare-fun tp!783807 () Bool)

(declare-fun b_and!185761 () Bool)

(assert (=> b!2461536 (= tp!783807 b_and!185761)))

(declare-fun b_free!70691 () Bool)

(declare-fun b_next!71395 () Bool)

(assert (=> b!2461536 (= b_free!70691 (not b_next!71395))))

(declare-fun tp!783810 () Bool)

(declare-fun b_and!185763 () Bool)

(assert (=> b!2461536 (= tp!783810 b_and!185763)))

(declare-fun b!2461527 () Bool)

(declare-fun res!1043144 () Bool)

(declare-fun e!1561264 () Bool)

(assert (=> b!2461527 (=> (not res!1043144) (not e!1561264))))

(declare-datatypes ((LexerInterface!4054 0))(
  ( (LexerInterfaceExt!4051 (__x!18541 Int)) (Lexer!4052) )
))
(declare-fun thiss!27932 () LexerInterface!4054)

(declare-datatypes ((List!28762 0))(
  ( (Nil!28662) (Cons!28662 (h!34063 (_ BitVec 16)) (t!208781 List!28762)) )
))
(declare-datatypes ((TokenValue!4643 0))(
  ( (FloatLiteralValue!9286 (text!32946 List!28762)) (TokenValueExt!4642 (__x!18542 Int)) (Broken!23215 (value!142404 List!28762)) (Object!4742) (End!4643) (Def!4643) (Underscore!4643) (Match!4643) (Else!4643) (Error!4643) (Case!4643) (If!4643) (Extends!4643) (Abstract!4643) (Class!4643) (Val!4643) (DelimiterValue!9286 (del!4703 List!28762)) (KeywordValue!4649 (value!142405 List!28762)) (CommentValue!9286 (value!142406 List!28762)) (WhitespaceValue!9286 (value!142407 List!28762)) (IndentationValue!4643 (value!142408 List!28762)) (String!31510) (Int32!4643) (Broken!23216 (value!142409 List!28762)) (Boolean!4644) (Unit!41982) (OperatorValue!4646 (op!4703 List!28762)) (IdentifierValue!9286 (value!142410 List!28762)) (IdentifierValue!9287 (value!142411 List!28762)) (WhitespaceValue!9287 (value!142412 List!28762)) (True!9286) (False!9286) (Broken!23217 (value!142413 List!28762)) (Broken!23218 (value!142414 List!28762)) (True!9287) (RightBrace!4643) (RightBracket!4643) (Colon!4643) (Null!4643) (Comma!4643) (LeftBracket!4643) (False!9287) (LeftBrace!4643) (ImaginaryLiteralValue!4643 (text!32947 List!28762)) (StringLiteralValue!13929 (value!142415 List!28762)) (EOFValue!4643 (value!142416 List!28762)) (IdentValue!4643 (value!142417 List!28762)) (DelimiterValue!9287 (value!142418 List!28762)) (DedentValue!4643 (value!142419 List!28762)) (NewLineValue!4643 (value!142420 List!28762)) (IntegerValue!13929 (value!142421 (_ BitVec 32)) (text!32948 List!28762)) (IntegerValue!13930 (value!142422 Int) (text!32949 List!28762)) (Times!4643) (Or!4643) (Equal!4643) (Minus!4643) (Broken!23219 (value!142423 List!28762)) (And!4643) (Div!4643) (LessEqual!4643) (Mod!4643) (Concat!11888) (Not!4643) (Plus!4643) (SpaceValue!4643 (value!142424 List!28762)) (IntegerValue!13931 (value!142425 Int) (text!32950 List!28762)) (StringLiteralValue!13930 (text!32951 List!28762)) (FloatLiteralValue!9287 (text!32952 List!28762)) (BytesLiteralValue!4643 (value!142426 List!28762)) (CommentValue!9287 (value!142427 List!28762)) (StringLiteralValue!13931 (value!142428 List!28762)) (ErrorTokenValue!4643 (msg!4704 List!28762)) )
))
(declare-datatypes ((C!14648 0))(
  ( (C!14649 (val!8584 Int)) )
))
(declare-datatypes ((List!28763 0))(
  ( (Nil!28663) (Cons!28663 (h!34064 C!14648) (t!208782 List!28763)) )
))
(declare-datatypes ((IArray!18327 0))(
  ( (IArray!18328 (innerList!9221 List!28763)) )
))
(declare-datatypes ((Conc!9161 0))(
  ( (Node!9161 (left!22012 Conc!9161) (right!22342 Conc!9161) (csize!18552 Int) (cheight!9372 Int)) (Leaf!13697 (xs!12141 IArray!18327) (csize!18553 Int)) (Empty!9161) )
))
(declare-datatypes ((BalanceConc!17936 0))(
  ( (BalanceConc!17937 (c!392836 Conc!9161)) )
))
(declare-datatypes ((Regex!7245 0))(
  ( (ElementMatch!7245 (c!392837 C!14648)) (Concat!11889 (regOne!15002 Regex!7245) (regTwo!15002 Regex!7245)) (EmptyExpr!7245) (Star!7245 (reg!7574 Regex!7245)) (EmptyLang!7245) (Union!7245 (regOne!15003 Regex!7245) (regTwo!15003 Regex!7245)) )
))
(declare-datatypes ((String!31511 0))(
  ( (String!31512 (value!142429 String)) )
))
(declare-datatypes ((TokenValueInjection!8786 0))(
  ( (TokenValueInjection!8787 (toValue!6309 Int) (toChars!6168 Int)) )
))
(declare-datatypes ((Rule!8714 0))(
  ( (Rule!8715 (regex!4457 Regex!7245) (tag!4947 String!31511) (isSeparator!4457 Bool) (transformation!4457 TokenValueInjection!8786)) )
))
(declare-datatypes ((List!28764 0))(
  ( (Nil!28664) (Cons!28664 (h!34065 Rule!8714) (t!208783 List!28764)) )
))
(declare-fun rules!4472 () List!28764)

(declare-datatypes ((Token!8384 0))(
  ( (Token!8385 (value!142430 TokenValue!4643) (rule!6815 Rule!8714) (size!22301 Int) (originalCharacters!5223 List!28763)) )
))
(declare-datatypes ((List!28765 0))(
  ( (Nil!28665) (Cons!28665 (h!34066 Token!8384) (t!208784 List!28765)) )
))
(declare-fun l!6611 () List!28765)

(declare-fun rulesProduceEachTokenIndividuallyList!1370 (LexerInterface!4054 List!28764 List!28765) Bool)

(assert (=> b!2461527 (= res!1043144 (rulesProduceEachTokenIndividuallyList!1370 thiss!27932 rules!4472 l!6611))))

(declare-fun b!2461528 () Bool)

(declare-fun t2!67 () Token!8384)

(declare-fun e!1561271 () Bool)

(declare-fun e!1561275 () Bool)

(declare-fun tp!783809 () Bool)

(declare-fun inv!38739 (String!31511) Bool)

(declare-fun inv!38742 (TokenValueInjection!8786) Bool)

(assert (=> b!2461528 (= e!1561271 (and tp!783809 (inv!38739 (tag!4947 (rule!6815 t2!67))) (inv!38742 (transformation!4457 (rule!6815 t2!67))) e!1561275))))

(declare-fun b!2461529 () Bool)

(declare-fun res!1043146 () Bool)

(assert (=> b!2461529 (=> (not res!1043146) (not e!1561264))))

(declare-fun i!1803 () Int)

(declare-fun t1!67 () Token!8384)

(declare-fun apply!6722 (List!28765 Int) Token!8384)

(assert (=> b!2461529 (= res!1043146 (= (apply!6722 l!6611 i!1803) t1!67))))

(declare-fun b!2461530 () Bool)

(declare-fun e!1561278 () Bool)

(declare-fun e!1561268 () Bool)

(declare-fun tp!783818 () Bool)

(assert (=> b!2461530 (= e!1561268 (and tp!783818 (inv!38739 (tag!4947 (rule!6815 (h!34066 l!6611)))) (inv!38742 (transformation!4457 (rule!6815 (h!34066 l!6611)))) e!1561278))))

(declare-fun b!2461531 () Bool)

(declare-fun res!1043141 () Bool)

(assert (=> b!2461531 (=> (not res!1043141) (not e!1561264))))

(assert (=> b!2461531 (= res!1043141 (= (apply!6722 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun e!1561272 () Bool)

(declare-fun tp!783817 () Bool)

(declare-fun b!2461532 () Bool)

(declare-fun inv!21 (TokenValue!4643) Bool)

(assert (=> b!2461532 (= e!1561272 (and (inv!21 (value!142430 t2!67)) e!1561271 tp!783817))))

(declare-fun e!1561258 () Bool)

(declare-fun b!2461533 () Bool)

(declare-fun tp!783805 () Bool)

(declare-fun e!1561259 () Bool)

(assert (=> b!2461533 (= e!1561258 (and tp!783805 (inv!38739 (tag!4947 (rule!6815 t1!67))) (inv!38742 (transformation!4457 (rule!6815 t1!67))) e!1561259))))

(declare-fun b!2461534 () Bool)

(declare-fun res!1043147 () Bool)

(assert (=> b!2461534 (=> (not res!1043147) (not e!1561264))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!593 (LexerInterface!4054 List!28765 List!28764) Bool)

(assert (=> b!2461534 (= res!1043147 (tokensListTwoByTwoPredicateSeparableList!593 thiss!27932 l!6611 rules!4472))))

(declare-fun b!2461535 () Bool)

(declare-fun tp!783806 () Bool)

(declare-fun e!1561265 () Bool)

(assert (=> b!2461535 (= e!1561265 (and (inv!21 (value!142430 (h!34066 l!6611))) e!1561268 tp!783806))))

(assert (=> b!2461536 (= e!1561259 (and tp!783807 tp!783810))))

(declare-fun b!2461537 () Bool)

(declare-fun rulesProduceIndividualToken!1791 (LexerInterface!4054 List!28764 Token!8384) Bool)

(assert (=> b!2461537 (= e!1561264 (not (rulesProduceIndividualToken!1791 thiss!27932 rules!4472 t1!67)))))

(declare-fun b!2461538 () Bool)

(declare-fun res!1043142 () Bool)

(assert (=> b!2461538 (=> (not res!1043142) (not e!1561264))))

(declare-fun size!22302 (List!28765) Int)

(assert (=> b!2461538 (= res!1043142 (< (+ 1 i!1803) (size!22302 l!6611)))))

(declare-fun res!1043145 () Bool)

(assert (=> start!239974 (=> (not res!1043145) (not e!1561264))))

(get-info :version)

(assert (=> start!239974 (= res!1043145 ((_ is Lexer!4052) thiss!27932))))

(assert (=> start!239974 e!1561264))

(assert (=> start!239974 true))

(declare-fun e!1561266 () Bool)

(assert (=> start!239974 e!1561266))

(declare-fun inv!38743 (Token!8384) Bool)

(assert (=> start!239974 (and (inv!38743 t2!67) e!1561272)))

(declare-fun e!1561261 () Bool)

(assert (=> start!239974 e!1561261))

(declare-fun e!1561270 () Bool)

(assert (=> start!239974 (and (inv!38743 t1!67) e!1561270)))

(declare-fun b!2461526 () Bool)

(declare-fun res!1043139 () Bool)

(assert (=> b!2461526 (=> (not res!1043139) (not e!1561264))))

(assert (=> b!2461526 (= res!1043139 (= i!1803 0))))

(declare-fun b!2461539 () Bool)

(declare-fun res!1043140 () Bool)

(assert (=> b!2461539 (=> (not res!1043140) (not e!1561264))))

(declare-fun rulesInvariant!3554 (LexerInterface!4054 List!28764) Bool)

(assert (=> b!2461539 (= res!1043140 (rulesInvariant!3554 thiss!27932 rules!4472))))

(declare-fun b!2461540 () Bool)

(declare-fun res!1043148 () Bool)

(assert (=> b!2461540 (=> (not res!1043148) (not e!1561264))))

(assert (=> b!2461540 (= res!1043148 (>= i!1803 0))))

(declare-fun tp!783821 () Bool)

(declare-fun b!2461541 () Bool)

(assert (=> b!2461541 (= e!1561270 (and (inv!21 (value!142430 t1!67)) e!1561258 tp!783821))))

(declare-fun b!2461542 () Bool)

(declare-fun tp!783811 () Bool)

(assert (=> b!2461542 (= e!1561261 (and (inv!38743 (h!34066 l!6611)) e!1561265 tp!783811))))

(declare-fun e!1561277 () Bool)

(assert (=> b!2461543 (= e!1561277 (and tp!783820 tp!783816))))

(declare-fun b!2461544 () Bool)

(declare-fun e!1561263 () Bool)

(declare-fun tp!783813 () Bool)

(assert (=> b!2461544 (= e!1561266 (and e!1561263 tp!783813))))

(declare-fun tp!783814 () Bool)

(declare-fun b!2461545 () Bool)

(assert (=> b!2461545 (= e!1561263 (and tp!783814 (inv!38739 (tag!4947 (h!34065 rules!4472))) (inv!38742 (transformation!4457 (h!34065 rules!4472))) e!1561277))))

(declare-fun b!2461546 () Bool)

(declare-fun res!1043143 () Bool)

(assert (=> b!2461546 (=> (not res!1043143) (not e!1561264))))

(declare-fun isEmpty!16653 (List!28764) Bool)

(assert (=> b!2461546 (= res!1043143 (not (isEmpty!16653 rules!4472)))))

(assert (=> b!2461547 (= e!1561275 (and tp!783808 tp!783815))))

(assert (=> b!2461548 (= e!1561278 (and tp!783819 tp!783812))))

(assert (= (and start!239974 res!1043145) b!2461546))

(assert (= (and b!2461546 res!1043143) b!2461539))

(assert (= (and b!2461539 res!1043140) b!2461527))

(assert (= (and b!2461527 res!1043144) b!2461534))

(assert (= (and b!2461534 res!1043147) b!2461540))

(assert (= (and b!2461540 res!1043148) b!2461538))

(assert (= (and b!2461538 res!1043142) b!2461529))

(assert (= (and b!2461529 res!1043146) b!2461531))

(assert (= (and b!2461531 res!1043141) b!2461526))

(assert (= (and b!2461526 res!1043139) b!2461537))

(assert (= b!2461545 b!2461543))

(assert (= b!2461544 b!2461545))

(assert (= (and start!239974 ((_ is Cons!28664) rules!4472)) b!2461544))

(assert (= b!2461528 b!2461547))

(assert (= b!2461532 b!2461528))

(assert (= start!239974 b!2461532))

(assert (= b!2461530 b!2461548))

(assert (= b!2461535 b!2461530))

(assert (= b!2461542 b!2461535))

(assert (= (and start!239974 ((_ is Cons!28665) l!6611)) b!2461542))

(assert (= b!2461533 b!2461536))

(assert (= b!2461541 b!2461533))

(assert (= start!239974 b!2461541))

(declare-fun m!2830499 () Bool)

(assert (=> b!2461529 m!2830499))

(declare-fun m!2830501 () Bool)

(assert (=> b!2461527 m!2830501))

(declare-fun m!2830503 () Bool)

(assert (=> b!2461533 m!2830503))

(declare-fun m!2830505 () Bool)

(assert (=> b!2461533 m!2830505))

(declare-fun m!2830507 () Bool)

(assert (=> b!2461537 m!2830507))

(declare-fun m!2830509 () Bool)

(assert (=> b!2461546 m!2830509))

(declare-fun m!2830511 () Bool)

(assert (=> b!2461532 m!2830511))

(declare-fun m!2830513 () Bool)

(assert (=> b!2461531 m!2830513))

(declare-fun m!2830515 () Bool)

(assert (=> b!2461542 m!2830515))

(declare-fun m!2830517 () Bool)

(assert (=> b!2461538 m!2830517))

(declare-fun m!2830519 () Bool)

(assert (=> b!2461535 m!2830519))

(declare-fun m!2830521 () Bool)

(assert (=> start!239974 m!2830521))

(declare-fun m!2830523 () Bool)

(assert (=> start!239974 m!2830523))

(declare-fun m!2830525 () Bool)

(assert (=> b!2461534 m!2830525))

(declare-fun m!2830527 () Bool)

(assert (=> b!2461528 m!2830527))

(declare-fun m!2830529 () Bool)

(assert (=> b!2461528 m!2830529))

(declare-fun m!2830531 () Bool)

(assert (=> b!2461530 m!2830531))

(declare-fun m!2830533 () Bool)

(assert (=> b!2461530 m!2830533))

(declare-fun m!2830535 () Bool)

(assert (=> b!2461539 m!2830535))

(declare-fun m!2830537 () Bool)

(assert (=> b!2461541 m!2830537))

(declare-fun m!2830539 () Bool)

(assert (=> b!2461545 m!2830539))

(declare-fun m!2830541 () Bool)

(assert (=> b!2461545 m!2830541))

(check-sat (not b_next!71387) (not b!2461545) b_and!185751 (not b!2461537) (not b_next!71383) (not b!2461533) (not b!2461528) (not b_next!71391) b_and!185753 (not b_next!71385) (not b_next!71381) (not b!2461530) b_and!185757 (not b!2461529) (not b!2461544) b_and!185749 (not b!2461542) (not b!2461539) (not b!2461546) (not b!2461541) (not b_next!71395) (not b_next!71393) (not b!2461534) (not b!2461535) (not b!2461527) (not b!2461538) b_and!185759 (not b_next!71389) b_and!185763 b_and!185755 (not b!2461532) (not b!2461531) b_and!185761 (not start!239974))
(check-sat b_and!185757 b_and!185749 (not b_next!71387) b_and!185751 (not b_next!71383) (not b_next!71391) b_and!185759 b_and!185753 b_and!185755 b_and!185761 (not b_next!71385) (not b_next!71381) (not b_next!71395) (not b_next!71393) (not b_next!71389) b_and!185763)
(get-model)

(declare-fun d!708466 () Bool)

(declare-fun lt!881088 () Bool)

(declare-fun e!1561300 () Bool)

(assert (=> d!708466 (= lt!881088 e!1561300)))

(declare-fun res!1043178 () Bool)

(assert (=> d!708466 (=> (not res!1043178) (not e!1561300))))

(declare-datatypes ((IArray!18331 0))(
  ( (IArray!18332 (innerList!9223 List!28765)) )
))
(declare-datatypes ((Conc!9163 0))(
  ( (Node!9163 (left!22018 Conc!9163) (right!22348 Conc!9163) (csize!18556 Int) (cheight!9374 Int)) (Leaf!13699 (xs!12143 IArray!18331) (csize!18557 Int)) (Empty!9163) )
))
(declare-datatypes ((BalanceConc!17940 0))(
  ( (BalanceConc!17941 (c!392873 Conc!9163)) )
))
(declare-fun list!11098 (BalanceConc!17940) List!28765)

(declare-datatypes ((tuple2!28206 0))(
  ( (tuple2!28207 (_1!16644 BalanceConc!17940) (_2!16644 BalanceConc!17936)) )
))
(declare-fun lex!1851 (LexerInterface!4054 List!28764 BalanceConc!17936) tuple2!28206)

(declare-fun print!1573 (LexerInterface!4054 BalanceConc!17940) BalanceConc!17936)

(declare-fun singletonSeq!1974 (Token!8384) BalanceConc!17940)

(assert (=> d!708466 (= res!1043178 (= (list!11098 (_1!16644 (lex!1851 thiss!27932 rules!4472 (print!1573 thiss!27932 (singletonSeq!1974 t1!67))))) (list!11098 (singletonSeq!1974 t1!67))))))

(declare-fun e!1561299 () Bool)

(assert (=> d!708466 (= lt!881088 e!1561299)))

(declare-fun res!1043177 () Bool)

(assert (=> d!708466 (=> (not res!1043177) (not e!1561299))))

(declare-fun lt!881089 () tuple2!28206)

(declare-fun size!22306 (BalanceConc!17940) Int)

(assert (=> d!708466 (= res!1043177 (= (size!22306 (_1!16644 lt!881089)) 1))))

(assert (=> d!708466 (= lt!881089 (lex!1851 thiss!27932 rules!4472 (print!1573 thiss!27932 (singletonSeq!1974 t1!67))))))

(assert (=> d!708466 (not (isEmpty!16653 rules!4472))))

(assert (=> d!708466 (= (rulesProduceIndividualToken!1791 thiss!27932 rules!4472 t1!67) lt!881088)))

(declare-fun b!2461579 () Bool)

(declare-fun res!1043176 () Bool)

(assert (=> b!2461579 (=> (not res!1043176) (not e!1561299))))

(declare-fun apply!6724 (BalanceConc!17940 Int) Token!8384)

(assert (=> b!2461579 (= res!1043176 (= (apply!6724 (_1!16644 lt!881089) 0) t1!67))))

(declare-fun b!2461580 () Bool)

(declare-fun isEmpty!16656 (BalanceConc!17936) Bool)

(assert (=> b!2461580 (= e!1561299 (isEmpty!16656 (_2!16644 lt!881089)))))

(declare-fun b!2461581 () Bool)

(assert (=> b!2461581 (= e!1561300 (isEmpty!16656 (_2!16644 (lex!1851 thiss!27932 rules!4472 (print!1573 thiss!27932 (singletonSeq!1974 t1!67))))))))

(assert (= (and d!708466 res!1043177) b!2461579))

(assert (= (and b!2461579 res!1043176) b!2461580))

(assert (= (and d!708466 res!1043178) b!2461581))

(declare-fun m!2830563 () Bool)

(assert (=> d!708466 m!2830563))

(declare-fun m!2830565 () Bool)

(assert (=> d!708466 m!2830565))

(declare-fun m!2830567 () Bool)

(assert (=> d!708466 m!2830567))

(declare-fun m!2830569 () Bool)

(assert (=> d!708466 m!2830569))

(declare-fun m!2830571 () Bool)

(assert (=> d!708466 m!2830571))

(assert (=> d!708466 m!2830563))

(declare-fun m!2830573 () Bool)

(assert (=> d!708466 m!2830573))

(assert (=> d!708466 m!2830563))

(assert (=> d!708466 m!2830567))

(assert (=> d!708466 m!2830509))

(declare-fun m!2830575 () Bool)

(assert (=> b!2461579 m!2830575))

(declare-fun m!2830577 () Bool)

(assert (=> b!2461580 m!2830577))

(assert (=> b!2461581 m!2830563))

(assert (=> b!2461581 m!2830563))

(assert (=> b!2461581 m!2830567))

(assert (=> b!2461581 m!2830567))

(assert (=> b!2461581 m!2830569))

(declare-fun m!2830579 () Bool)

(assert (=> b!2461581 m!2830579))

(assert (=> b!2461537 d!708466))

(declare-fun d!708470 () Bool)

(declare-fun res!1043183 () Bool)

(declare-fun e!1561303 () Bool)

(assert (=> d!708470 (=> (not res!1043183) (not e!1561303))))

(declare-fun isEmpty!16657 (List!28763) Bool)

(assert (=> d!708470 (= res!1043183 (not (isEmpty!16657 (originalCharacters!5223 t2!67))))))

(assert (=> d!708470 (= (inv!38743 t2!67) e!1561303)))

(declare-fun b!2461586 () Bool)

(declare-fun res!1043184 () Bool)

(assert (=> b!2461586 (=> (not res!1043184) (not e!1561303))))

(declare-fun list!11099 (BalanceConc!17936) List!28763)

(declare-fun dynLambda!12293 (Int TokenValue!4643) BalanceConc!17936)

(assert (=> b!2461586 (= res!1043184 (= (originalCharacters!5223 t2!67) (list!11099 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (value!142430 t2!67)))))))

(declare-fun b!2461587 () Bool)

(declare-fun size!22307 (List!28763) Int)

(assert (=> b!2461587 (= e!1561303 (= (size!22301 t2!67) (size!22307 (originalCharacters!5223 t2!67))))))

(assert (= (and d!708470 res!1043183) b!2461586))

(assert (= (and b!2461586 res!1043184) b!2461587))

(declare-fun b_lambda!75393 () Bool)

(assert (=> (not b_lambda!75393) (not b!2461586)))

(declare-fun t!208797 () Bool)

(declare-fun tb!138889 () Bool)

(assert (=> (and b!2461547 (= (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (toChars!6168 (transformation!4457 (rule!6815 t2!67)))) t!208797) tb!138889))

(declare-fun b!2461592 () Bool)

(declare-fun e!1561306 () Bool)

(declare-fun tp!783827 () Bool)

(declare-fun inv!38746 (Conc!9161) Bool)

(assert (=> b!2461592 (= e!1561306 (and (inv!38746 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (value!142430 t2!67)))) tp!783827))))

(declare-fun result!171450 () Bool)

(declare-fun inv!38747 (BalanceConc!17936) Bool)

(assert (=> tb!138889 (= result!171450 (and (inv!38747 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (value!142430 t2!67))) e!1561306))))

(assert (= tb!138889 b!2461592))

(declare-fun m!2830581 () Bool)

(assert (=> b!2461592 m!2830581))

(declare-fun m!2830583 () Bool)

(assert (=> tb!138889 m!2830583))

(assert (=> b!2461586 t!208797))

(declare-fun b_and!185773 () Bool)

(assert (= b_and!185751 (and (=> t!208797 result!171450) b_and!185773)))

(declare-fun tb!138891 () Bool)

(declare-fun t!208799 () Bool)

(assert (=> (and b!2461543 (= (toChars!6168 (transformation!4457 (h!34065 rules!4472))) (toChars!6168 (transformation!4457 (rule!6815 t2!67)))) t!208799) tb!138891))

(declare-fun result!171454 () Bool)

(assert (= result!171454 result!171450))

(assert (=> b!2461586 t!208799))

(declare-fun b_and!185775 () Bool)

(assert (= b_and!185755 (and (=> t!208799 result!171454) b_and!185775)))

(declare-fun tb!138893 () Bool)

(declare-fun t!208801 () Bool)

(assert (=> (and b!2461548 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (toChars!6168 (transformation!4457 (rule!6815 t2!67)))) t!208801) tb!138893))

(declare-fun result!171456 () Bool)

(assert (= result!171456 result!171450))

(assert (=> b!2461586 t!208801))

(declare-fun b_and!185777 () Bool)

(assert (= b_and!185759 (and (=> t!208801 result!171456) b_and!185777)))

(declare-fun tb!138895 () Bool)

(declare-fun t!208803 () Bool)

(assert (=> (and b!2461536 (= (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (toChars!6168 (transformation!4457 (rule!6815 t2!67)))) t!208803) tb!138895))

(declare-fun result!171458 () Bool)

(assert (= result!171458 result!171450))

(assert (=> b!2461586 t!208803))

(declare-fun b_and!185779 () Bool)

(assert (= b_and!185763 (and (=> t!208803 result!171458) b_and!185779)))

(declare-fun m!2830585 () Bool)

(assert (=> d!708470 m!2830585))

(declare-fun m!2830587 () Bool)

(assert (=> b!2461586 m!2830587))

(assert (=> b!2461586 m!2830587))

(declare-fun m!2830589 () Bool)

(assert (=> b!2461586 m!2830589))

(declare-fun m!2830591 () Bool)

(assert (=> b!2461587 m!2830591))

(assert (=> start!239974 d!708470))

(declare-fun d!708472 () Bool)

(declare-fun res!1043185 () Bool)

(declare-fun e!1561307 () Bool)

(assert (=> d!708472 (=> (not res!1043185) (not e!1561307))))

(assert (=> d!708472 (= res!1043185 (not (isEmpty!16657 (originalCharacters!5223 t1!67))))))

(assert (=> d!708472 (= (inv!38743 t1!67) e!1561307)))

(declare-fun b!2461593 () Bool)

(declare-fun res!1043186 () Bool)

(assert (=> b!2461593 (=> (not res!1043186) (not e!1561307))))

(assert (=> b!2461593 (= res!1043186 (= (originalCharacters!5223 t1!67) (list!11099 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (value!142430 t1!67)))))))

(declare-fun b!2461594 () Bool)

(assert (=> b!2461594 (= e!1561307 (= (size!22301 t1!67) (size!22307 (originalCharacters!5223 t1!67))))))

(assert (= (and d!708472 res!1043185) b!2461593))

(assert (= (and b!2461593 res!1043186) b!2461594))

(declare-fun b_lambda!75395 () Bool)

(assert (=> (not b_lambda!75395) (not b!2461593)))

(declare-fun tb!138897 () Bool)

(declare-fun t!208805 () Bool)

(assert (=> (and b!2461547 (= (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (toChars!6168 (transformation!4457 (rule!6815 t1!67)))) t!208805) tb!138897))

(declare-fun b!2461595 () Bool)

(declare-fun e!1561308 () Bool)

(declare-fun tp!783828 () Bool)

(assert (=> b!2461595 (= e!1561308 (and (inv!38746 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (value!142430 t1!67)))) tp!783828))))

(declare-fun result!171460 () Bool)

(assert (=> tb!138897 (= result!171460 (and (inv!38747 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (value!142430 t1!67))) e!1561308))))

(assert (= tb!138897 b!2461595))

(declare-fun m!2830593 () Bool)

(assert (=> b!2461595 m!2830593))

(declare-fun m!2830595 () Bool)

(assert (=> tb!138897 m!2830595))

(assert (=> b!2461593 t!208805))

(declare-fun b_and!185781 () Bool)

(assert (= b_and!185773 (and (=> t!208805 result!171460) b_and!185781)))

(declare-fun tb!138899 () Bool)

(declare-fun t!208807 () Bool)

(assert (=> (and b!2461543 (= (toChars!6168 (transformation!4457 (h!34065 rules!4472))) (toChars!6168 (transformation!4457 (rule!6815 t1!67)))) t!208807) tb!138899))

(declare-fun result!171462 () Bool)

(assert (= result!171462 result!171460))

(assert (=> b!2461593 t!208807))

(declare-fun b_and!185783 () Bool)

(assert (= b_and!185775 (and (=> t!208807 result!171462) b_and!185783)))

(declare-fun t!208809 () Bool)

(declare-fun tb!138901 () Bool)

(assert (=> (and b!2461548 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (toChars!6168 (transformation!4457 (rule!6815 t1!67)))) t!208809) tb!138901))

(declare-fun result!171464 () Bool)

(assert (= result!171464 result!171460))

(assert (=> b!2461593 t!208809))

(declare-fun b_and!185785 () Bool)

(assert (= b_and!185777 (and (=> t!208809 result!171464) b_and!185785)))

(declare-fun t!208811 () Bool)

(declare-fun tb!138903 () Bool)

(assert (=> (and b!2461536 (= (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (toChars!6168 (transformation!4457 (rule!6815 t1!67)))) t!208811) tb!138903))

(declare-fun result!171466 () Bool)

(assert (= result!171466 result!171460))

(assert (=> b!2461593 t!208811))

(declare-fun b_and!185787 () Bool)

(assert (= b_and!185779 (and (=> t!208811 result!171466) b_and!185787)))

(declare-fun m!2830597 () Bool)

(assert (=> d!708472 m!2830597))

(declare-fun m!2830599 () Bool)

(assert (=> b!2461593 m!2830599))

(assert (=> b!2461593 m!2830599))

(declare-fun m!2830601 () Bool)

(assert (=> b!2461593 m!2830601))

(declare-fun m!2830603 () Bool)

(assert (=> b!2461594 m!2830603))

(assert (=> start!239974 d!708472))

(declare-fun b!2461697 () Bool)

(declare-fun e!1561385 () Bool)

(assert (=> b!2461697 (= e!1561385 true)))

(declare-fun b!2461696 () Bool)

(declare-fun e!1561384 () Bool)

(assert (=> b!2461696 (= e!1561384 e!1561385)))

(declare-fun b!2461695 () Bool)

(declare-fun e!1561383 () Bool)

(assert (=> b!2461695 (= e!1561383 e!1561384)))

(declare-fun d!708474 () Bool)

(assert (=> d!708474 e!1561383))

(assert (= b!2461696 b!2461697))

(assert (= b!2461695 b!2461696))

(assert (= (and d!708474 ((_ is Cons!28664) rules!4472)) b!2461695))

(declare-fun lambda!93131 () Int)

(declare-fun order!15503 () Int)

(declare-fun order!15505 () Int)

(declare-fun dynLambda!12294 (Int Int) Int)

(declare-fun dynLambda!12295 (Int Int) Int)

(assert (=> b!2461697 (< (dynLambda!12294 order!15503 (toValue!6309 (transformation!4457 (h!34065 rules!4472)))) (dynLambda!12295 order!15505 lambda!93131))))

(declare-fun order!15507 () Int)

(declare-fun dynLambda!12296 (Int Int) Int)

(assert (=> b!2461697 (< (dynLambda!12296 order!15507 (toChars!6168 (transformation!4457 (h!34065 rules!4472)))) (dynLambda!12295 order!15505 lambda!93131))))

(assert (=> d!708474 true))

(declare-fun lt!881124 () Bool)

(declare-fun forall!5885 (List!28765 Int) Bool)

(assert (=> d!708474 (= lt!881124 (forall!5885 l!6611 lambda!93131))))

(declare-fun e!1561369 () Bool)

(assert (=> d!708474 (= lt!881124 e!1561369)))

(declare-fun res!1043227 () Bool)

(assert (=> d!708474 (=> res!1043227 e!1561369)))

(assert (=> d!708474 (= res!1043227 (not ((_ is Cons!28665) l!6611)))))

(assert (=> d!708474 (not (isEmpty!16653 rules!4472))))

(assert (=> d!708474 (= (rulesProduceEachTokenIndividuallyList!1370 thiss!27932 rules!4472 l!6611) lt!881124)))

(declare-fun b!2461679 () Bool)

(declare-fun e!1561370 () Bool)

(assert (=> b!2461679 (= e!1561369 e!1561370)))

(declare-fun res!1043228 () Bool)

(assert (=> b!2461679 (=> (not res!1043228) (not e!1561370))))

(assert (=> b!2461679 (= res!1043228 (rulesProduceIndividualToken!1791 thiss!27932 rules!4472 (h!34066 l!6611)))))

(declare-fun b!2461680 () Bool)

(assert (=> b!2461680 (= e!1561370 (rulesProduceEachTokenIndividuallyList!1370 thiss!27932 rules!4472 (t!208784 l!6611)))))

(assert (= (and d!708474 (not res!1043227)) b!2461679))

(assert (= (and b!2461679 res!1043228) b!2461680))

(declare-fun m!2830711 () Bool)

(assert (=> d!708474 m!2830711))

(assert (=> d!708474 m!2830509))

(declare-fun m!2830713 () Bool)

(assert (=> b!2461679 m!2830713))

(declare-fun m!2830715 () Bool)

(assert (=> b!2461680 m!2830715))

(assert (=> b!2461527 d!708474))

(declare-fun d!708514 () Bool)

(declare-fun lt!881127 () Int)

(assert (=> d!708514 (>= lt!881127 0)))

(declare-fun e!1561403 () Int)

(assert (=> d!708514 (= lt!881127 e!1561403)))

(declare-fun c!392857 () Bool)

(assert (=> d!708514 (= c!392857 ((_ is Nil!28665) l!6611))))

(assert (=> d!708514 (= (size!22302 l!6611) lt!881127)))

(declare-fun b!2461717 () Bool)

(assert (=> b!2461717 (= e!1561403 0)))

(declare-fun b!2461718 () Bool)

(assert (=> b!2461718 (= e!1561403 (+ 1 (size!22302 (t!208784 l!6611))))))

(assert (= (and d!708514 c!392857) b!2461717))

(assert (= (and d!708514 (not c!392857)) b!2461718))

(declare-fun m!2830725 () Bool)

(assert (=> b!2461718 m!2830725))

(assert (=> b!2461538 d!708514))

(declare-fun d!708516 () Bool)

(declare-fun lt!881130 () Token!8384)

(declare-fun contains!4890 (List!28765 Token!8384) Bool)

(assert (=> d!708516 (contains!4890 l!6611 lt!881130)))

(declare-fun e!1561428 () Token!8384)

(assert (=> d!708516 (= lt!881130 e!1561428)))

(declare-fun c!392860 () Bool)

(assert (=> d!708516 (= c!392860 (= i!1803 0))))

(declare-fun e!1561429 () Bool)

(assert (=> d!708516 e!1561429))

(declare-fun res!1043231 () Bool)

(assert (=> d!708516 (=> (not res!1043231) (not e!1561429))))

(assert (=> d!708516 (= res!1043231 (<= 0 i!1803))))

(assert (=> d!708516 (= (apply!6722 l!6611 i!1803) lt!881130)))

(declare-fun b!2461764 () Bool)

(assert (=> b!2461764 (= e!1561429 (< i!1803 (size!22302 l!6611)))))

(declare-fun b!2461765 () Bool)

(declare-fun head!5623 (List!28765) Token!8384)

(assert (=> b!2461765 (= e!1561428 (head!5623 l!6611))))

(declare-fun b!2461766 () Bool)

(declare-fun tail!3896 (List!28765) List!28765)

(assert (=> b!2461766 (= e!1561428 (apply!6722 (tail!3896 l!6611) (- i!1803 1)))))

(assert (= (and d!708516 res!1043231) b!2461764))

(assert (= (and d!708516 c!392860) b!2461765))

(assert (= (and d!708516 (not c!392860)) b!2461766))

(declare-fun m!2830731 () Bool)

(assert (=> d!708516 m!2830731))

(assert (=> b!2461764 m!2830517))

(declare-fun m!2830733 () Bool)

(assert (=> b!2461765 m!2830733))

(declare-fun m!2830735 () Bool)

(assert (=> b!2461766 m!2830735))

(assert (=> b!2461766 m!2830735))

(declare-fun m!2830737 () Bool)

(assert (=> b!2461766 m!2830737))

(assert (=> b!2461529 d!708516))

(declare-fun d!708518 () Bool)

(assert (=> d!708518 (= (inv!38739 (tag!4947 (rule!6815 (h!34066 l!6611)))) (= (mod (str.len (value!142429 (tag!4947 (rule!6815 (h!34066 l!6611))))) 2) 0))))

(assert (=> b!2461530 d!708518))

(declare-fun d!708520 () Bool)

(declare-fun res!1043234 () Bool)

(declare-fun e!1561432 () Bool)

(assert (=> d!708520 (=> (not res!1043234) (not e!1561432))))

(declare-fun semiInverseModEq!1832 (Int Int) Bool)

(assert (=> d!708520 (= res!1043234 (semiInverseModEq!1832 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (toValue!6309 (transformation!4457 (rule!6815 (h!34066 l!6611))))))))

(assert (=> d!708520 (= (inv!38742 (transformation!4457 (rule!6815 (h!34066 l!6611)))) e!1561432)))

(declare-fun b!2461769 () Bool)

(declare-fun equivClasses!1743 (Int Int) Bool)

(assert (=> b!2461769 (= e!1561432 (equivClasses!1743 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (toValue!6309 (transformation!4457 (rule!6815 (h!34066 l!6611))))))))

(assert (= (and d!708520 res!1043234) b!2461769))

(declare-fun m!2830739 () Bool)

(assert (=> d!708520 m!2830739))

(declare-fun m!2830741 () Bool)

(assert (=> b!2461769 m!2830741))

(assert (=> b!2461530 d!708520))

(declare-fun d!708522 () Bool)

(assert (=> d!708522 (= (inv!38739 (tag!4947 (rule!6815 t2!67))) (= (mod (str.len (value!142429 (tag!4947 (rule!6815 t2!67)))) 2) 0))))

(assert (=> b!2461528 d!708522))

(declare-fun d!708524 () Bool)

(declare-fun res!1043235 () Bool)

(declare-fun e!1561433 () Bool)

(assert (=> d!708524 (=> (not res!1043235) (not e!1561433))))

(assert (=> d!708524 (= res!1043235 (semiInverseModEq!1832 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (toValue!6309 (transformation!4457 (rule!6815 t2!67)))))))

(assert (=> d!708524 (= (inv!38742 (transformation!4457 (rule!6815 t2!67))) e!1561433)))

(declare-fun b!2461770 () Bool)

(assert (=> b!2461770 (= e!1561433 (equivClasses!1743 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (toValue!6309 (transformation!4457 (rule!6815 t2!67)))))))

(assert (= (and d!708524 res!1043235) b!2461770))

(declare-fun m!2830743 () Bool)

(assert (=> d!708524 m!2830743))

(declare-fun m!2830745 () Bool)

(assert (=> b!2461770 m!2830745))

(assert (=> b!2461528 d!708524))

(declare-fun d!708526 () Bool)

(declare-fun res!1043238 () Bool)

(declare-fun e!1561436 () Bool)

(assert (=> d!708526 (=> (not res!1043238) (not e!1561436))))

(declare-fun rulesValid!1657 (LexerInterface!4054 List!28764) Bool)

(assert (=> d!708526 (= res!1043238 (rulesValid!1657 thiss!27932 rules!4472))))

(assert (=> d!708526 (= (rulesInvariant!3554 thiss!27932 rules!4472) e!1561436)))

(declare-fun b!2461773 () Bool)

(declare-datatypes ((List!28767 0))(
  ( (Nil!28667) (Cons!28667 (h!34068 String!31511) (t!208864 List!28767)) )
))
(declare-fun noDuplicateTag!1655 (LexerInterface!4054 List!28764 List!28767) Bool)

(assert (=> b!2461773 (= e!1561436 (noDuplicateTag!1655 thiss!27932 rules!4472 Nil!28667))))

(assert (= (and d!708526 res!1043238) b!2461773))

(declare-fun m!2830747 () Bool)

(assert (=> d!708526 m!2830747))

(declare-fun m!2830749 () Bool)

(assert (=> b!2461773 m!2830749))

(assert (=> b!2461539 d!708526))

(declare-fun b!2461784 () Bool)

(declare-fun e!1561444 () Bool)

(declare-fun inv!16 (TokenValue!4643) Bool)

(assert (=> b!2461784 (= e!1561444 (inv!16 (value!142430 t2!67)))))

(declare-fun d!708528 () Bool)

(declare-fun c!392866 () Bool)

(assert (=> d!708528 (= c!392866 ((_ is IntegerValue!13929) (value!142430 t2!67)))))

(assert (=> d!708528 (= (inv!21 (value!142430 t2!67)) e!1561444)))

(declare-fun b!2461785 () Bool)

(declare-fun e!1561445 () Bool)

(assert (=> b!2461785 (= e!1561444 e!1561445)))

(declare-fun c!392865 () Bool)

(assert (=> b!2461785 (= c!392865 ((_ is IntegerValue!13930) (value!142430 t2!67)))))

(declare-fun b!2461786 () Bool)

(declare-fun e!1561443 () Bool)

(declare-fun inv!15 (TokenValue!4643) Bool)

(assert (=> b!2461786 (= e!1561443 (inv!15 (value!142430 t2!67)))))

(declare-fun b!2461787 () Bool)

(declare-fun inv!17 (TokenValue!4643) Bool)

(assert (=> b!2461787 (= e!1561445 (inv!17 (value!142430 t2!67)))))

(declare-fun b!2461788 () Bool)

(declare-fun res!1043241 () Bool)

(assert (=> b!2461788 (=> res!1043241 e!1561443)))

(assert (=> b!2461788 (= res!1043241 (not ((_ is IntegerValue!13931) (value!142430 t2!67))))))

(assert (=> b!2461788 (= e!1561445 e!1561443)))

(assert (= (and d!708528 c!392866) b!2461784))

(assert (= (and d!708528 (not c!392866)) b!2461785))

(assert (= (and b!2461785 c!392865) b!2461787))

(assert (= (and b!2461785 (not c!392865)) b!2461788))

(assert (= (and b!2461788 (not res!1043241)) b!2461786))

(declare-fun m!2830751 () Bool)

(assert (=> b!2461784 m!2830751))

(declare-fun m!2830753 () Bool)

(assert (=> b!2461786 m!2830753))

(declare-fun m!2830755 () Bool)

(assert (=> b!2461787 m!2830755))

(assert (=> b!2461532 d!708528))

(declare-fun b!2461789 () Bool)

(declare-fun e!1561447 () Bool)

(assert (=> b!2461789 (= e!1561447 (inv!16 (value!142430 t1!67)))))

(declare-fun d!708530 () Bool)

(declare-fun c!392868 () Bool)

(assert (=> d!708530 (= c!392868 ((_ is IntegerValue!13929) (value!142430 t1!67)))))

(assert (=> d!708530 (= (inv!21 (value!142430 t1!67)) e!1561447)))

(declare-fun b!2461790 () Bool)

(declare-fun e!1561448 () Bool)

(assert (=> b!2461790 (= e!1561447 e!1561448)))

(declare-fun c!392867 () Bool)

(assert (=> b!2461790 (= c!392867 ((_ is IntegerValue!13930) (value!142430 t1!67)))))

(declare-fun b!2461791 () Bool)

(declare-fun e!1561446 () Bool)

(assert (=> b!2461791 (= e!1561446 (inv!15 (value!142430 t1!67)))))

(declare-fun b!2461792 () Bool)

(assert (=> b!2461792 (= e!1561448 (inv!17 (value!142430 t1!67)))))

(declare-fun b!2461793 () Bool)

(declare-fun res!1043242 () Bool)

(assert (=> b!2461793 (=> res!1043242 e!1561446)))

(assert (=> b!2461793 (= res!1043242 (not ((_ is IntegerValue!13931) (value!142430 t1!67))))))

(assert (=> b!2461793 (= e!1561448 e!1561446)))

(assert (= (and d!708530 c!392868) b!2461789))

(assert (= (and d!708530 (not c!392868)) b!2461790))

(assert (= (and b!2461790 c!392867) b!2461792))

(assert (= (and b!2461790 (not c!392867)) b!2461793))

(assert (= (and b!2461793 (not res!1043242)) b!2461791))

(declare-fun m!2830757 () Bool)

(assert (=> b!2461789 m!2830757))

(declare-fun m!2830759 () Bool)

(assert (=> b!2461791 m!2830759))

(declare-fun m!2830761 () Bool)

(assert (=> b!2461792 m!2830761))

(assert (=> b!2461541 d!708530))

(declare-fun d!708532 () Bool)

(declare-fun lt!881131 () Token!8384)

(assert (=> d!708532 (contains!4890 l!6611 lt!881131)))

(declare-fun e!1561449 () Token!8384)

(assert (=> d!708532 (= lt!881131 e!1561449)))

(declare-fun c!392869 () Bool)

(assert (=> d!708532 (= c!392869 (= (+ 1 i!1803) 0))))

(declare-fun e!1561450 () Bool)

(assert (=> d!708532 e!1561450))

(declare-fun res!1043243 () Bool)

(assert (=> d!708532 (=> (not res!1043243) (not e!1561450))))

(assert (=> d!708532 (= res!1043243 (<= 0 (+ 1 i!1803)))))

(assert (=> d!708532 (= (apply!6722 l!6611 (+ 1 i!1803)) lt!881131)))

(declare-fun b!2461794 () Bool)

(assert (=> b!2461794 (= e!1561450 (< (+ 1 i!1803) (size!22302 l!6611)))))

(declare-fun b!2461795 () Bool)

(assert (=> b!2461795 (= e!1561449 (head!5623 l!6611))))

(declare-fun b!2461796 () Bool)

(assert (=> b!2461796 (= e!1561449 (apply!6722 (tail!3896 l!6611) (- (+ 1 i!1803) 1)))))

(assert (= (and d!708532 res!1043243) b!2461794))

(assert (= (and d!708532 c!392869) b!2461795))

(assert (= (and d!708532 (not c!392869)) b!2461796))

(declare-fun m!2830763 () Bool)

(assert (=> d!708532 m!2830763))

(assert (=> b!2461794 m!2830517))

(assert (=> b!2461795 m!2830733))

(assert (=> b!2461796 m!2830735))

(assert (=> b!2461796 m!2830735))

(declare-fun m!2830765 () Bool)

(assert (=> b!2461796 m!2830765))

(assert (=> b!2461531 d!708532))

(declare-fun d!708534 () Bool)

(declare-fun res!1043244 () Bool)

(declare-fun e!1561451 () Bool)

(assert (=> d!708534 (=> (not res!1043244) (not e!1561451))))

(assert (=> d!708534 (= res!1043244 (not (isEmpty!16657 (originalCharacters!5223 (h!34066 l!6611)))))))

(assert (=> d!708534 (= (inv!38743 (h!34066 l!6611)) e!1561451)))

(declare-fun b!2461797 () Bool)

(declare-fun res!1043245 () Bool)

(assert (=> b!2461797 (=> (not res!1043245) (not e!1561451))))

(assert (=> b!2461797 (= res!1043245 (= (originalCharacters!5223 (h!34066 l!6611)) (list!11099 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (value!142430 (h!34066 l!6611))))))))

(declare-fun b!2461798 () Bool)

(assert (=> b!2461798 (= e!1561451 (= (size!22301 (h!34066 l!6611)) (size!22307 (originalCharacters!5223 (h!34066 l!6611)))))))

(assert (= (and d!708534 res!1043244) b!2461797))

(assert (= (and b!2461797 res!1043245) b!2461798))

(declare-fun b_lambda!75407 () Bool)

(assert (=> (not b_lambda!75407) (not b!2461797)))

(declare-fun t!208844 () Bool)

(declare-fun tb!138933 () Bool)

(assert (=> (and b!2461547 (= (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611))))) t!208844) tb!138933))

(declare-fun b!2461799 () Bool)

(declare-fun e!1561452 () Bool)

(declare-fun tp!783893 () Bool)

(assert (=> b!2461799 (= e!1561452 (and (inv!38746 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (value!142430 (h!34066 l!6611))))) tp!783893))))

(declare-fun result!171504 () Bool)

(assert (=> tb!138933 (= result!171504 (and (inv!38747 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (value!142430 (h!34066 l!6611)))) e!1561452))))

(assert (= tb!138933 b!2461799))

(declare-fun m!2830767 () Bool)

(assert (=> b!2461799 m!2830767))

(declare-fun m!2830769 () Bool)

(assert (=> tb!138933 m!2830769))

(assert (=> b!2461797 t!208844))

(declare-fun b_and!185813 () Bool)

(assert (= b_and!185781 (and (=> t!208844 result!171504) b_and!185813)))

(declare-fun tb!138935 () Bool)

(declare-fun t!208846 () Bool)

(assert (=> (and b!2461543 (= (toChars!6168 (transformation!4457 (h!34065 rules!4472))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611))))) t!208846) tb!138935))

(declare-fun result!171506 () Bool)

(assert (= result!171506 result!171504))

(assert (=> b!2461797 t!208846))

(declare-fun b_and!185815 () Bool)

(assert (= b_and!185783 (and (=> t!208846 result!171506) b_and!185815)))

(declare-fun t!208848 () Bool)

(declare-fun tb!138937 () Bool)

(assert (=> (and b!2461548 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611))))) t!208848) tb!138937))

(declare-fun result!171508 () Bool)

(assert (= result!171508 result!171504))

(assert (=> b!2461797 t!208848))

(declare-fun b_and!185817 () Bool)

(assert (= b_and!185785 (and (=> t!208848 result!171508) b_and!185817)))

(declare-fun t!208850 () Bool)

(declare-fun tb!138939 () Bool)

(assert (=> (and b!2461536 (= (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611))))) t!208850) tb!138939))

(declare-fun result!171510 () Bool)

(assert (= result!171510 result!171504))

(assert (=> b!2461797 t!208850))

(declare-fun b_and!185819 () Bool)

(assert (= b_and!185787 (and (=> t!208850 result!171510) b_and!185819)))

(declare-fun m!2830771 () Bool)

(assert (=> d!708534 m!2830771))

(declare-fun m!2830773 () Bool)

(assert (=> b!2461797 m!2830773))

(assert (=> b!2461797 m!2830773))

(declare-fun m!2830775 () Bool)

(assert (=> b!2461797 m!2830775))

(declare-fun m!2830777 () Bool)

(assert (=> b!2461798 m!2830777))

(assert (=> b!2461542 d!708534))

(declare-fun d!708536 () Bool)

(assert (=> d!708536 (= (inv!38739 (tag!4947 (h!34065 rules!4472))) (= (mod (str.len (value!142429 (tag!4947 (h!34065 rules!4472)))) 2) 0))))

(assert (=> b!2461545 d!708536))

(declare-fun d!708538 () Bool)

(declare-fun res!1043246 () Bool)

(declare-fun e!1561453 () Bool)

(assert (=> d!708538 (=> (not res!1043246) (not e!1561453))))

(assert (=> d!708538 (= res!1043246 (semiInverseModEq!1832 (toChars!6168 (transformation!4457 (h!34065 rules!4472))) (toValue!6309 (transformation!4457 (h!34065 rules!4472)))))))

(assert (=> d!708538 (= (inv!38742 (transformation!4457 (h!34065 rules!4472))) e!1561453)))

(declare-fun b!2461800 () Bool)

(assert (=> b!2461800 (= e!1561453 (equivClasses!1743 (toChars!6168 (transformation!4457 (h!34065 rules!4472))) (toValue!6309 (transformation!4457 (h!34065 rules!4472)))))))

(assert (= (and d!708538 res!1043246) b!2461800))

(declare-fun m!2830779 () Bool)

(assert (=> d!708538 m!2830779))

(declare-fun m!2830781 () Bool)

(assert (=> b!2461800 m!2830781))

(assert (=> b!2461545 d!708538))

(declare-fun b!2461801 () Bool)

(declare-fun e!1561455 () Bool)

(assert (=> b!2461801 (= e!1561455 (inv!16 (value!142430 (h!34066 l!6611))))))

(declare-fun d!708540 () Bool)

(declare-fun c!392871 () Bool)

(assert (=> d!708540 (= c!392871 ((_ is IntegerValue!13929) (value!142430 (h!34066 l!6611))))))

(assert (=> d!708540 (= (inv!21 (value!142430 (h!34066 l!6611))) e!1561455)))

(declare-fun b!2461802 () Bool)

(declare-fun e!1561456 () Bool)

(assert (=> b!2461802 (= e!1561455 e!1561456)))

(declare-fun c!392870 () Bool)

(assert (=> b!2461802 (= c!392870 ((_ is IntegerValue!13930) (value!142430 (h!34066 l!6611))))))

(declare-fun b!2461803 () Bool)

(declare-fun e!1561454 () Bool)

(assert (=> b!2461803 (= e!1561454 (inv!15 (value!142430 (h!34066 l!6611))))))

(declare-fun b!2461804 () Bool)

(assert (=> b!2461804 (= e!1561456 (inv!17 (value!142430 (h!34066 l!6611))))))

(declare-fun b!2461805 () Bool)

(declare-fun res!1043247 () Bool)

(assert (=> b!2461805 (=> res!1043247 e!1561454)))

(assert (=> b!2461805 (= res!1043247 (not ((_ is IntegerValue!13931) (value!142430 (h!34066 l!6611)))))))

(assert (=> b!2461805 (= e!1561456 e!1561454)))

(assert (= (and d!708540 c!392871) b!2461801))

(assert (= (and d!708540 (not c!392871)) b!2461802))

(assert (= (and b!2461802 c!392870) b!2461804))

(assert (= (and b!2461802 (not c!392870)) b!2461805))

(assert (= (and b!2461805 (not res!1043247)) b!2461803))

(declare-fun m!2830783 () Bool)

(assert (=> b!2461801 m!2830783))

(declare-fun m!2830785 () Bool)

(assert (=> b!2461803 m!2830785))

(declare-fun m!2830787 () Bool)

(assert (=> b!2461804 m!2830787))

(assert (=> b!2461535 d!708540))

(declare-fun d!708542 () Bool)

(assert (=> d!708542 (= (isEmpty!16653 rules!4472) ((_ is Nil!28664) rules!4472))))

(assert (=> b!2461546 d!708542))

(declare-fun d!708544 () Bool)

(assert (=> d!708544 (= (inv!38739 (tag!4947 (rule!6815 t1!67))) (= (mod (str.len (value!142429 (tag!4947 (rule!6815 t1!67)))) 2) 0))))

(assert (=> b!2461533 d!708544))

(declare-fun d!708546 () Bool)

(declare-fun res!1043248 () Bool)

(declare-fun e!1561457 () Bool)

(assert (=> d!708546 (=> (not res!1043248) (not e!1561457))))

(assert (=> d!708546 (= res!1043248 (semiInverseModEq!1832 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (toValue!6309 (transformation!4457 (rule!6815 t1!67)))))))

(assert (=> d!708546 (= (inv!38742 (transformation!4457 (rule!6815 t1!67))) e!1561457)))

(declare-fun b!2461806 () Bool)

(assert (=> b!2461806 (= e!1561457 (equivClasses!1743 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (toValue!6309 (transformation!4457 (rule!6815 t1!67)))))))

(assert (= (and d!708546 res!1043248) b!2461806))

(declare-fun m!2830789 () Bool)

(assert (=> d!708546 m!2830789))

(declare-fun m!2830791 () Bool)

(assert (=> b!2461806 m!2830791))

(assert (=> b!2461533 d!708546))

(declare-fun d!708548 () Bool)

(declare-fun res!1043254 () Bool)

(declare-fun e!1561462 () Bool)

(assert (=> d!708548 (=> res!1043254 e!1561462)))

(assert (=> d!708548 (= res!1043254 (or (not ((_ is Cons!28665) l!6611)) (not ((_ is Cons!28665) (t!208784 l!6611)))))))

(assert (=> d!708548 (= (tokensListTwoByTwoPredicateSeparableList!593 thiss!27932 l!6611 rules!4472) e!1561462)))

(declare-fun b!2461811 () Bool)

(declare-fun e!1561463 () Bool)

(assert (=> b!2461811 (= e!1561462 e!1561463)))

(declare-fun res!1043253 () Bool)

(assert (=> b!2461811 (=> (not res!1043253) (not e!1561463))))

(declare-fun separableTokensPredicate!834 (LexerInterface!4054 Token!8384 Token!8384 List!28764) Bool)

(assert (=> b!2461811 (= res!1043253 (separableTokensPredicate!834 thiss!27932 (h!34066 l!6611) (h!34066 (t!208784 l!6611)) rules!4472))))

(declare-datatypes ((Unit!41988 0))(
  ( (Unit!41989) )
))
(declare-fun lt!881147 () Unit!41988)

(declare-fun Unit!41990 () Unit!41988)

(assert (=> b!2461811 (= lt!881147 Unit!41990)))

(declare-fun size!22308 (BalanceConc!17936) Int)

(declare-fun charsOf!2811 (Token!8384) BalanceConc!17936)

(assert (=> b!2461811 (> (size!22308 (charsOf!2811 (h!34066 (t!208784 l!6611)))) 0)))

(declare-fun lt!881151 () Unit!41988)

(declare-fun Unit!41991 () Unit!41988)

(assert (=> b!2461811 (= lt!881151 Unit!41991)))

(assert (=> b!2461811 (rulesProduceIndividualToken!1791 thiss!27932 rules!4472 (h!34066 (t!208784 l!6611)))))

(declare-fun lt!881146 () Unit!41988)

(declare-fun Unit!41992 () Unit!41988)

(assert (=> b!2461811 (= lt!881146 Unit!41992)))

(assert (=> b!2461811 (rulesProduceIndividualToken!1791 thiss!27932 rules!4472 (h!34066 l!6611))))

(declare-fun lt!881148 () Unit!41988)

(declare-fun lt!881150 () Unit!41988)

(assert (=> b!2461811 (= lt!881148 lt!881150)))

(assert (=> b!2461811 (rulesProduceIndividualToken!1791 thiss!27932 rules!4472 (h!34066 (t!208784 l!6611)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!652 (LexerInterface!4054 List!28764 List!28765 Token!8384) Unit!41988)

(assert (=> b!2461811 (= lt!881150 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!652 thiss!27932 rules!4472 l!6611 (h!34066 (t!208784 l!6611))))))

(declare-fun lt!881149 () Unit!41988)

(declare-fun lt!881152 () Unit!41988)

(assert (=> b!2461811 (= lt!881149 lt!881152)))

(assert (=> b!2461811 (rulesProduceIndividualToken!1791 thiss!27932 rules!4472 (h!34066 l!6611))))

(assert (=> b!2461811 (= lt!881152 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!652 thiss!27932 rules!4472 l!6611 (h!34066 l!6611)))))

(declare-fun b!2461812 () Bool)

(assert (=> b!2461812 (= e!1561463 (tokensListTwoByTwoPredicateSeparableList!593 thiss!27932 (Cons!28665 (h!34066 (t!208784 l!6611)) (t!208784 (t!208784 l!6611))) rules!4472))))

(assert (= (and d!708548 (not res!1043254)) b!2461811))

(assert (= (and b!2461811 res!1043253) b!2461812))

(declare-fun m!2830793 () Bool)

(assert (=> b!2461811 m!2830793))

(assert (=> b!2461811 m!2830713))

(declare-fun m!2830795 () Bool)

(assert (=> b!2461811 m!2830795))

(declare-fun m!2830797 () Bool)

(assert (=> b!2461811 m!2830797))

(declare-fun m!2830799 () Bool)

(assert (=> b!2461811 m!2830799))

(declare-fun m!2830801 () Bool)

(assert (=> b!2461811 m!2830801))

(declare-fun m!2830803 () Bool)

(assert (=> b!2461811 m!2830803))

(assert (=> b!2461811 m!2830797))

(declare-fun m!2830805 () Bool)

(assert (=> b!2461812 m!2830805))

(assert (=> b!2461534 d!708548))

(declare-fun e!1561466 () Bool)

(assert (=> b!2461530 (= tp!783818 e!1561466)))

(declare-fun b!2461824 () Bool)

(declare-fun tp!783907 () Bool)

(declare-fun tp!783908 () Bool)

(assert (=> b!2461824 (= e!1561466 (and tp!783907 tp!783908))))

(declare-fun b!2461825 () Bool)

(declare-fun tp!783906 () Bool)

(assert (=> b!2461825 (= e!1561466 tp!783906)))

(declare-fun b!2461826 () Bool)

(declare-fun tp!783904 () Bool)

(declare-fun tp!783905 () Bool)

(assert (=> b!2461826 (= e!1561466 (and tp!783904 tp!783905))))

(declare-fun b!2461823 () Bool)

(declare-fun tp_is_empty!11927 () Bool)

(assert (=> b!2461823 (= e!1561466 tp_is_empty!11927)))

(assert (= (and b!2461530 ((_ is ElementMatch!7245) (regex!4457 (rule!6815 (h!34066 l!6611))))) b!2461823))

(assert (= (and b!2461530 ((_ is Concat!11889) (regex!4457 (rule!6815 (h!34066 l!6611))))) b!2461824))

(assert (= (and b!2461530 ((_ is Star!7245) (regex!4457 (rule!6815 (h!34066 l!6611))))) b!2461825))

(assert (= (and b!2461530 ((_ is Union!7245) (regex!4457 (rule!6815 (h!34066 l!6611))))) b!2461826))

(declare-fun e!1561467 () Bool)

(assert (=> b!2461528 (= tp!783809 e!1561467)))

(declare-fun b!2461828 () Bool)

(declare-fun tp!783912 () Bool)

(declare-fun tp!783913 () Bool)

(assert (=> b!2461828 (= e!1561467 (and tp!783912 tp!783913))))

(declare-fun b!2461829 () Bool)

(declare-fun tp!783911 () Bool)

(assert (=> b!2461829 (= e!1561467 tp!783911)))

(declare-fun b!2461830 () Bool)

(declare-fun tp!783909 () Bool)

(declare-fun tp!783910 () Bool)

(assert (=> b!2461830 (= e!1561467 (and tp!783909 tp!783910))))

(declare-fun b!2461827 () Bool)

(assert (=> b!2461827 (= e!1561467 tp_is_empty!11927)))

(assert (= (and b!2461528 ((_ is ElementMatch!7245) (regex!4457 (rule!6815 t2!67)))) b!2461827))

(assert (= (and b!2461528 ((_ is Concat!11889) (regex!4457 (rule!6815 t2!67)))) b!2461828))

(assert (= (and b!2461528 ((_ is Star!7245) (regex!4457 (rule!6815 t2!67)))) b!2461829))

(assert (= (and b!2461528 ((_ is Union!7245) (regex!4457 (rule!6815 t2!67)))) b!2461830))

(declare-fun b!2461835 () Bool)

(declare-fun e!1561470 () Bool)

(declare-fun tp!783916 () Bool)

(assert (=> b!2461835 (= e!1561470 (and tp_is_empty!11927 tp!783916))))

(assert (=> b!2461532 (= tp!783817 e!1561470)))

(assert (= (and b!2461532 ((_ is Cons!28663) (originalCharacters!5223 t2!67))) b!2461835))

(declare-fun b!2461836 () Bool)

(declare-fun e!1561471 () Bool)

(declare-fun tp!783917 () Bool)

(assert (=> b!2461836 (= e!1561471 (and tp_is_empty!11927 tp!783917))))

(assert (=> b!2461541 (= tp!783821 e!1561471)))

(assert (= (and b!2461541 ((_ is Cons!28663) (originalCharacters!5223 t1!67))) b!2461836))

(declare-fun b!2461850 () Bool)

(declare-fun b_free!70701 () Bool)

(declare-fun b_next!71405 () Bool)

(assert (=> b!2461850 (= b_free!70701 (not b_next!71405))))

(declare-fun tp!783929 () Bool)

(declare-fun b_and!185821 () Bool)

(assert (=> b!2461850 (= tp!783929 b_and!185821)))

(declare-fun b_free!70703 () Bool)

(declare-fun b_next!71407 () Bool)

(assert (=> b!2461850 (= b_free!70703 (not b_next!71407))))

(declare-fun tb!138941 () Bool)

(declare-fun t!208853 () Bool)

(assert (=> (and b!2461850 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))) (toChars!6168 (transformation!4457 (rule!6815 t2!67)))) t!208853) tb!138941))

(declare-fun result!171518 () Bool)

(assert (= result!171518 result!171450))

(assert (=> b!2461586 t!208853))

(declare-fun t!208855 () Bool)

(declare-fun tb!138943 () Bool)

(assert (=> (and b!2461850 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))) (toChars!6168 (transformation!4457 (rule!6815 t1!67)))) t!208855) tb!138943))

(declare-fun result!171520 () Bool)

(assert (= result!171520 result!171460))

(assert (=> b!2461593 t!208855))

(declare-fun t!208857 () Bool)

(declare-fun tb!138945 () Bool)

(assert (=> (and b!2461850 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611))))) t!208857) tb!138945))

(declare-fun result!171522 () Bool)

(assert (= result!171522 result!171504))

(assert (=> b!2461797 t!208857))

(declare-fun b_and!185823 () Bool)

(declare-fun tp!783932 () Bool)

(assert (=> b!2461850 (= tp!783932 (and (=> t!208853 result!171518) (=> t!208855 result!171520) (=> t!208857 result!171522) b_and!185823))))

(declare-fun e!1561486 () Bool)

(assert (=> b!2461850 (= e!1561486 (and tp!783929 tp!783932))))

(declare-fun e!1561485 () Bool)

(assert (=> b!2461542 (= tp!783811 e!1561485)))

(declare-fun e!1561488 () Bool)

(declare-fun tp!783928 () Bool)

(declare-fun b!2461849 () Bool)

(assert (=> b!2461849 (= e!1561488 (and tp!783928 (inv!38739 (tag!4947 (rule!6815 (h!34066 (t!208784 l!6611))))) (inv!38742 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))) e!1561486))))

(declare-fun tp!783931 () Bool)

(declare-fun e!1561484 () Bool)

(declare-fun b!2461847 () Bool)

(assert (=> b!2461847 (= e!1561485 (and (inv!38743 (h!34066 (t!208784 l!6611))) e!1561484 tp!783931))))

(declare-fun b!2461848 () Bool)

(declare-fun tp!783930 () Bool)

(assert (=> b!2461848 (= e!1561484 (and (inv!21 (value!142430 (h!34066 (t!208784 l!6611)))) e!1561488 tp!783930))))

(assert (= b!2461849 b!2461850))

(assert (= b!2461848 b!2461849))

(assert (= b!2461847 b!2461848))

(assert (= (and b!2461542 ((_ is Cons!28665) (t!208784 l!6611))) b!2461847))

(declare-fun m!2830807 () Bool)

(assert (=> b!2461849 m!2830807))

(declare-fun m!2830809 () Bool)

(assert (=> b!2461849 m!2830809))

(declare-fun m!2830811 () Bool)

(assert (=> b!2461847 m!2830811))

(declare-fun m!2830813 () Bool)

(assert (=> b!2461848 m!2830813))

(declare-fun e!1561490 () Bool)

(assert (=> b!2461545 (= tp!783814 e!1561490)))

(declare-fun b!2461852 () Bool)

(declare-fun tp!783936 () Bool)

(declare-fun tp!783937 () Bool)

(assert (=> b!2461852 (= e!1561490 (and tp!783936 tp!783937))))

(declare-fun b!2461853 () Bool)

(declare-fun tp!783935 () Bool)

(assert (=> b!2461853 (= e!1561490 tp!783935)))

(declare-fun b!2461854 () Bool)

(declare-fun tp!783933 () Bool)

(declare-fun tp!783934 () Bool)

(assert (=> b!2461854 (= e!1561490 (and tp!783933 tp!783934))))

(declare-fun b!2461851 () Bool)

(assert (=> b!2461851 (= e!1561490 tp_is_empty!11927)))

(assert (= (and b!2461545 ((_ is ElementMatch!7245) (regex!4457 (h!34065 rules!4472)))) b!2461851))

(assert (= (and b!2461545 ((_ is Concat!11889) (regex!4457 (h!34065 rules!4472)))) b!2461852))

(assert (= (and b!2461545 ((_ is Star!7245) (regex!4457 (h!34065 rules!4472)))) b!2461853))

(assert (= (and b!2461545 ((_ is Union!7245) (regex!4457 (h!34065 rules!4472)))) b!2461854))

(declare-fun b!2461855 () Bool)

(declare-fun e!1561491 () Bool)

(declare-fun tp!783938 () Bool)

(assert (=> b!2461855 (= e!1561491 (and tp_is_empty!11927 tp!783938))))

(assert (=> b!2461535 (= tp!783806 e!1561491)))

(assert (= (and b!2461535 ((_ is Cons!28663) (originalCharacters!5223 (h!34066 l!6611)))) b!2461855))

(declare-fun e!1561492 () Bool)

(assert (=> b!2461533 (= tp!783805 e!1561492)))

(declare-fun b!2461857 () Bool)

(declare-fun tp!783942 () Bool)

(declare-fun tp!783943 () Bool)

(assert (=> b!2461857 (= e!1561492 (and tp!783942 tp!783943))))

(declare-fun b!2461858 () Bool)

(declare-fun tp!783941 () Bool)

(assert (=> b!2461858 (= e!1561492 tp!783941)))

(declare-fun b!2461859 () Bool)

(declare-fun tp!783939 () Bool)

(declare-fun tp!783940 () Bool)

(assert (=> b!2461859 (= e!1561492 (and tp!783939 tp!783940))))

(declare-fun b!2461856 () Bool)

(assert (=> b!2461856 (= e!1561492 tp_is_empty!11927)))

(assert (= (and b!2461533 ((_ is ElementMatch!7245) (regex!4457 (rule!6815 t1!67)))) b!2461856))

(assert (= (and b!2461533 ((_ is Concat!11889) (regex!4457 (rule!6815 t1!67)))) b!2461857))

(assert (= (and b!2461533 ((_ is Star!7245) (regex!4457 (rule!6815 t1!67)))) b!2461858))

(assert (= (and b!2461533 ((_ is Union!7245) (regex!4457 (rule!6815 t1!67)))) b!2461859))

(declare-fun b!2461870 () Bool)

(declare-fun b_free!70705 () Bool)

(declare-fun b_next!71409 () Bool)

(assert (=> b!2461870 (= b_free!70705 (not b_next!71409))))

(declare-fun tp!783952 () Bool)

(declare-fun b_and!185825 () Bool)

(assert (=> b!2461870 (= tp!783952 b_and!185825)))

(declare-fun b_free!70707 () Bool)

(declare-fun b_next!71411 () Bool)

(assert (=> b!2461870 (= b_free!70707 (not b_next!71411))))

(declare-fun t!208859 () Bool)

(declare-fun tb!138947 () Bool)

(assert (=> (and b!2461870 (= (toChars!6168 (transformation!4457 (h!34065 (t!208783 rules!4472)))) (toChars!6168 (transformation!4457 (rule!6815 t2!67)))) t!208859) tb!138947))

(declare-fun result!171526 () Bool)

(assert (= result!171526 result!171450))

(assert (=> b!2461586 t!208859))

(declare-fun tb!138949 () Bool)

(declare-fun t!208861 () Bool)

(assert (=> (and b!2461870 (= (toChars!6168 (transformation!4457 (h!34065 (t!208783 rules!4472)))) (toChars!6168 (transformation!4457 (rule!6815 t1!67)))) t!208861) tb!138949))

(declare-fun result!171528 () Bool)

(assert (= result!171528 result!171460))

(assert (=> b!2461593 t!208861))

(declare-fun t!208863 () Bool)

(declare-fun tb!138951 () Bool)

(assert (=> (and b!2461870 (= (toChars!6168 (transformation!4457 (h!34065 (t!208783 rules!4472)))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611))))) t!208863) tb!138951))

(declare-fun result!171530 () Bool)

(assert (= result!171530 result!171504))

(assert (=> b!2461797 t!208863))

(declare-fun b_and!185827 () Bool)

(declare-fun tp!783955 () Bool)

(assert (=> b!2461870 (= tp!783955 (and (=> t!208859 result!171526) (=> t!208861 result!171528) (=> t!208863 result!171530) b_and!185827))))

(declare-fun e!1561502 () Bool)

(assert (=> b!2461870 (= e!1561502 (and tp!783952 tp!783955))))

(declare-fun e!1561503 () Bool)

(declare-fun b!2461869 () Bool)

(declare-fun tp!783954 () Bool)

(assert (=> b!2461869 (= e!1561503 (and tp!783954 (inv!38739 (tag!4947 (h!34065 (t!208783 rules!4472)))) (inv!38742 (transformation!4457 (h!34065 (t!208783 rules!4472)))) e!1561502))))

(declare-fun b!2461868 () Bool)

(declare-fun e!1561501 () Bool)

(declare-fun tp!783953 () Bool)

(assert (=> b!2461868 (= e!1561501 (and e!1561503 tp!783953))))

(assert (=> b!2461544 (= tp!783813 e!1561501)))

(assert (= b!2461869 b!2461870))

(assert (= b!2461868 b!2461869))

(assert (= (and b!2461544 ((_ is Cons!28664) (t!208783 rules!4472))) b!2461868))

(declare-fun m!2830815 () Bool)

(assert (=> b!2461869 m!2830815))

(declare-fun m!2830817 () Bool)

(assert (=> b!2461869 m!2830817))

(declare-fun b_lambda!75409 () Bool)

(assert (= b_lambda!75407 (or (and b!2461543 b_free!70683 (= (toChars!6168 (transformation!4457 (h!34065 rules!4472))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))))) (and b!2461548 b_free!70687) (and b!2461536 b_free!70691 (= (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))))) (and b!2461547 b_free!70679 (= (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))))) (and b!2461870 b_free!70707 (= (toChars!6168 (transformation!4457 (h!34065 (t!208783 rules!4472)))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))))) (and b!2461850 b_free!70703 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))))) b_lambda!75409)))

(declare-fun b_lambda!75411 () Bool)

(assert (= b_lambda!75393 (or (and b!2461536 b_free!70691 (= (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (toChars!6168 (transformation!4457 (rule!6815 t2!67))))) (and b!2461870 b_free!70707 (= (toChars!6168 (transformation!4457 (h!34065 (t!208783 rules!4472)))) (toChars!6168 (transformation!4457 (rule!6815 t2!67))))) (and b!2461548 b_free!70687 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (toChars!6168 (transformation!4457 (rule!6815 t2!67))))) (and b!2461543 b_free!70683 (= (toChars!6168 (transformation!4457 (h!34065 rules!4472))) (toChars!6168 (transformation!4457 (rule!6815 t2!67))))) (and b!2461850 b_free!70703 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))) (toChars!6168 (transformation!4457 (rule!6815 t2!67))))) (and b!2461547 b_free!70679) b_lambda!75411)))

(declare-fun b_lambda!75413 () Bool)

(assert (= b_lambda!75395 (or (and b!2461870 b_free!70707 (= (toChars!6168 (transformation!4457 (h!34065 (t!208783 rules!4472)))) (toChars!6168 (transformation!4457 (rule!6815 t1!67))))) (and b!2461543 b_free!70683 (= (toChars!6168 (transformation!4457 (h!34065 rules!4472))) (toChars!6168 (transformation!4457 (rule!6815 t1!67))))) (and b!2461850 b_free!70703 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))) (toChars!6168 (transformation!4457 (rule!6815 t1!67))))) (and b!2461548 b_free!70687 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (toChars!6168 (transformation!4457 (rule!6815 t1!67))))) (and b!2461547 b_free!70679 (= (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (toChars!6168 (transformation!4457 (rule!6815 t1!67))))) (and b!2461536 b_free!70691) b_lambda!75413)))

(check-sat (not b!2461796) b_and!185823 (not b!2461579) tp_is_empty!11927 (not b!2461855) (not b!2461825) (not b!2461849) (not b!2461770) (not b!2461787) (not b!2461789) b_and!185757 (not b!2461594) (not b!2461791) b_and!185749 (not b!2461769) (not b!2461799) (not d!708516) (not b!2461804) (not b_next!71387) (not b_lambda!75411) (not b!2461587) (not b!2461836) (not b!2461784) (not b_lambda!75413) (not b!2461826) (not d!708472) (not b_next!71395) (not b_next!71393) (not b!2461766) (not b_lambda!75409) (not b!2461806) (not b!2461595) (not tb!138933) (not d!708470) (not b!2461858) b_and!185825 (not b!2461718) (not tb!138897) (not d!708534) (not b!2461764) (not b_next!71383) (not b!2461830) (not b!2461811) (not b!2461786) (not d!708526) b_and!185827 (not d!708520) (not b_next!71391) (not b_next!71405) (not b!2461852) (not b_next!71409) (not b!2461580) (not b!2461581) (not b!2461812) (not b!2461798) (not b_next!71389) (not d!708524) (not b!2461803) (not b!2461869) (not b!2461592) b_and!185753 (not b_next!71407) b_and!185819 (not b!2461868) (not b!2461828) b_and!185817 (not b!2461801) (not b!2461680) (not tb!138889) (not d!708474) (not d!708532) (not b!2461695) (not b!2461848) (not b!2461794) (not b_next!71411) (not b!2461857) (not d!708466) (not b!2461854) b_and!185761 (not b!2461859) (not b!2461824) (not b!2461835) (not b_next!71385) (not b!2461792) (not b!2461586) (not b!2461679) (not b!2461829) (not b!2461800) (not b!2461765) (not d!708538) b_and!185813 (not b!2461797) (not b!2461773) (not b!2461795) (not b!2461853) (not b!2461847) b_and!185815 (not d!708546) (not b_next!71381) b_and!185821 (not b!2461593))
(check-sat b_and!185757 b_and!185749 (not b_next!71387) b_and!185825 b_and!185823 (not b_next!71383) b_and!185827 (not b_next!71409) (not b_next!71389) b_and!185817 (not b_next!71385) b_and!185813 (not b_next!71395) (not b_next!71393) (not b_next!71391) (not b_next!71405) b_and!185753 (not b_next!71407) b_and!185819 b_and!185761 (not b_next!71411) b_and!185815 b_and!185821 (not b_next!71381))
(get-model)

(declare-fun d!708550 () Bool)

(declare-fun e!1561513 () Bool)

(assert (=> d!708550 e!1561513))

(declare-fun res!1043269 () Bool)

(assert (=> d!708550 (=> (not res!1043269) (not e!1561513))))

(declare-fun e!1561511 () Bool)

(assert (=> d!708550 (= res!1043269 e!1561511)))

(declare-fun c!392877 () Bool)

(declare-fun lt!881155 () tuple2!28206)

(assert (=> d!708550 (= c!392877 (> (size!22306 (_1!16644 lt!881155)) 0))))

(declare-fun lexTailRecV2!818 (LexerInterface!4054 List!28764 BalanceConc!17936 BalanceConc!17936 BalanceConc!17936 BalanceConc!17940) tuple2!28206)

(assert (=> d!708550 (= lt!881155 (lexTailRecV2!818 thiss!27932 rules!4472 (print!1573 thiss!27932 (singletonSeq!1974 t1!67)) (BalanceConc!17937 Empty!9161) (print!1573 thiss!27932 (singletonSeq!1974 t1!67)) (BalanceConc!17941 Empty!9163)))))

(assert (=> d!708550 (= (lex!1851 thiss!27932 rules!4472 (print!1573 thiss!27932 (singletonSeq!1974 t1!67))) lt!881155)))

(declare-fun b!2461881 () Bool)

(assert (=> b!2461881 (= e!1561511 (= (_2!16644 lt!881155) (print!1573 thiss!27932 (singletonSeq!1974 t1!67))))))

(declare-fun b!2461882 () Bool)

(declare-fun e!1561512 () Bool)

(assert (=> b!2461882 (= e!1561511 e!1561512)))

(declare-fun res!1043267 () Bool)

(assert (=> b!2461882 (= res!1043267 (< (size!22308 (_2!16644 lt!881155)) (size!22308 (print!1573 thiss!27932 (singletonSeq!1974 t1!67)))))))

(assert (=> b!2461882 (=> (not res!1043267) (not e!1561512))))

(declare-fun b!2461883 () Bool)

(declare-fun isEmpty!16658 (BalanceConc!17940) Bool)

(assert (=> b!2461883 (= e!1561512 (not (isEmpty!16658 (_1!16644 lt!881155))))))

(declare-fun b!2461884 () Bool)

(declare-fun res!1043268 () Bool)

(assert (=> b!2461884 (=> (not res!1043268) (not e!1561513))))

(declare-datatypes ((tuple2!28208 0))(
  ( (tuple2!28209 (_1!16645 List!28765) (_2!16645 List!28763)) )
))
(declare-fun lexList!1143 (LexerInterface!4054 List!28764 List!28763) tuple2!28208)

(assert (=> b!2461884 (= res!1043268 (= (list!11098 (_1!16644 lt!881155)) (_1!16645 (lexList!1143 thiss!27932 rules!4472 (list!11099 (print!1573 thiss!27932 (singletonSeq!1974 t1!67)))))))))

(declare-fun b!2461885 () Bool)

(assert (=> b!2461885 (= e!1561513 (= (list!11099 (_2!16644 lt!881155)) (_2!16645 (lexList!1143 thiss!27932 rules!4472 (list!11099 (print!1573 thiss!27932 (singletonSeq!1974 t1!67)))))))))

(assert (= (and d!708550 c!392877) b!2461882))

(assert (= (and d!708550 (not c!392877)) b!2461881))

(assert (= (and b!2461882 res!1043267) b!2461883))

(assert (= (and d!708550 res!1043269) b!2461884))

(assert (= (and b!2461884 res!1043268) b!2461885))

(declare-fun m!2830819 () Bool)

(assert (=> b!2461883 m!2830819))

(declare-fun m!2830821 () Bool)

(assert (=> b!2461882 m!2830821))

(assert (=> b!2461882 m!2830567))

(declare-fun m!2830823 () Bool)

(assert (=> b!2461882 m!2830823))

(declare-fun m!2830825 () Bool)

(assert (=> b!2461885 m!2830825))

(assert (=> b!2461885 m!2830567))

(declare-fun m!2830827 () Bool)

(assert (=> b!2461885 m!2830827))

(assert (=> b!2461885 m!2830827))

(declare-fun m!2830829 () Bool)

(assert (=> b!2461885 m!2830829))

(declare-fun m!2830831 () Bool)

(assert (=> d!708550 m!2830831))

(assert (=> d!708550 m!2830567))

(assert (=> d!708550 m!2830567))

(declare-fun m!2830833 () Bool)

(assert (=> d!708550 m!2830833))

(declare-fun m!2830835 () Bool)

(assert (=> b!2461884 m!2830835))

(assert (=> b!2461884 m!2830567))

(assert (=> b!2461884 m!2830827))

(assert (=> b!2461884 m!2830827))

(assert (=> b!2461884 m!2830829))

(assert (=> d!708466 d!708550))

(declare-fun d!708552 () Bool)

(declare-fun lt!881158 () BalanceConc!17936)

(declare-fun printList!1127 (LexerInterface!4054 List!28765) List!28763)

(assert (=> d!708552 (= (list!11099 lt!881158) (printList!1127 thiss!27932 (list!11098 (singletonSeq!1974 t1!67))))))

(declare-fun printTailRec!1078 (LexerInterface!4054 BalanceConc!17940 Int BalanceConc!17936) BalanceConc!17936)

(assert (=> d!708552 (= lt!881158 (printTailRec!1078 thiss!27932 (singletonSeq!1974 t1!67) 0 (BalanceConc!17937 Empty!9161)))))

(assert (=> d!708552 (= (print!1573 thiss!27932 (singletonSeq!1974 t1!67)) lt!881158)))

(declare-fun bs!466228 () Bool)

(assert (= bs!466228 d!708552))

(declare-fun m!2830837 () Bool)

(assert (=> bs!466228 m!2830837))

(assert (=> bs!466228 m!2830563))

(assert (=> bs!466228 m!2830565))

(assert (=> bs!466228 m!2830565))

(declare-fun m!2830839 () Bool)

(assert (=> bs!466228 m!2830839))

(assert (=> bs!466228 m!2830563))

(declare-fun m!2830841 () Bool)

(assert (=> bs!466228 m!2830841))

(assert (=> d!708466 d!708552))

(declare-fun d!708554 () Bool)

(declare-fun list!11100 (Conc!9163) List!28765)

(assert (=> d!708554 (= (list!11098 (_1!16644 (lex!1851 thiss!27932 rules!4472 (print!1573 thiss!27932 (singletonSeq!1974 t1!67))))) (list!11100 (c!392873 (_1!16644 (lex!1851 thiss!27932 rules!4472 (print!1573 thiss!27932 (singletonSeq!1974 t1!67)))))))))

(declare-fun bs!466229 () Bool)

(assert (= bs!466229 d!708554))

(declare-fun m!2830843 () Bool)

(assert (=> bs!466229 m!2830843))

(assert (=> d!708466 d!708554))

(declare-fun d!708556 () Bool)

(declare-fun lt!881161 () Int)

(assert (=> d!708556 (= lt!881161 (size!22302 (list!11098 (_1!16644 lt!881089))))))

(declare-fun size!22309 (Conc!9163) Int)

(assert (=> d!708556 (= lt!881161 (size!22309 (c!392873 (_1!16644 lt!881089))))))

(assert (=> d!708556 (= (size!22306 (_1!16644 lt!881089)) lt!881161)))

(declare-fun bs!466230 () Bool)

(assert (= bs!466230 d!708556))

(declare-fun m!2830845 () Bool)

(assert (=> bs!466230 m!2830845))

(assert (=> bs!466230 m!2830845))

(declare-fun m!2830847 () Bool)

(assert (=> bs!466230 m!2830847))

(declare-fun m!2830849 () Bool)

(assert (=> bs!466230 m!2830849))

(assert (=> d!708466 d!708556))

(assert (=> d!708466 d!708542))

(declare-fun d!708558 () Bool)

(assert (=> d!708558 (= (list!11098 (singletonSeq!1974 t1!67)) (list!11100 (c!392873 (singletonSeq!1974 t1!67))))))

(declare-fun bs!466231 () Bool)

(assert (= bs!466231 d!708558))

(declare-fun m!2830851 () Bool)

(assert (=> bs!466231 m!2830851))

(assert (=> d!708466 d!708558))

(declare-fun d!708560 () Bool)

(declare-fun e!1561516 () Bool)

(assert (=> d!708560 e!1561516))

(declare-fun res!1043272 () Bool)

(assert (=> d!708560 (=> (not res!1043272) (not e!1561516))))

(declare-fun lt!881164 () BalanceConc!17940)

(assert (=> d!708560 (= res!1043272 (= (list!11098 lt!881164) (Cons!28665 t1!67 Nil!28665)))))

(declare-fun singleton!887 (Token!8384) BalanceConc!17940)

(assert (=> d!708560 (= lt!881164 (singleton!887 t1!67))))

(assert (=> d!708560 (= (singletonSeq!1974 t1!67) lt!881164)))

(declare-fun b!2461888 () Bool)

(declare-fun isBalanced!2793 (Conc!9163) Bool)

(assert (=> b!2461888 (= e!1561516 (isBalanced!2793 (c!392873 lt!881164)))))

(assert (= (and d!708560 res!1043272) b!2461888))

(declare-fun m!2830853 () Bool)

(assert (=> d!708560 m!2830853))

(declare-fun m!2830855 () Bool)

(assert (=> d!708560 m!2830855))

(declare-fun m!2830857 () Bool)

(assert (=> b!2461888 m!2830857))

(assert (=> d!708466 d!708560))

(declare-fun d!708562 () Bool)

(declare-fun list!11101 (Conc!9161) List!28763)

(assert (=> d!708562 (= (list!11099 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (value!142430 (h!34066 l!6611)))) (list!11101 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (value!142430 (h!34066 l!6611))))))))

(declare-fun bs!466232 () Bool)

(assert (= bs!466232 d!708562))

(declare-fun m!2830859 () Bool)

(assert (=> bs!466232 m!2830859))

(assert (=> b!2461797 d!708562))

(declare-fun d!708564 () Bool)

(assert (=> d!708564 true))

(declare-fun lt!881167 () Bool)

(declare-fun rulesValidInductive!1580 (LexerInterface!4054 List!28764) Bool)

(assert (=> d!708564 (= lt!881167 (rulesValidInductive!1580 thiss!27932 rules!4472))))

(declare-fun lambda!93134 () Int)

(declare-fun forall!5886 (List!28764 Int) Bool)

(assert (=> d!708564 (= lt!881167 (forall!5886 rules!4472 lambda!93134))))

(assert (=> d!708564 (= (rulesValid!1657 thiss!27932 rules!4472) lt!881167)))

(declare-fun bs!466233 () Bool)

(assert (= bs!466233 d!708564))

(declare-fun m!2830861 () Bool)

(assert (=> bs!466233 m!2830861))

(declare-fun m!2830863 () Bool)

(assert (=> bs!466233 m!2830863))

(assert (=> d!708526 d!708564))

(declare-fun d!708566 () Bool)

(declare-fun res!1043278 () Bool)

(declare-fun e!1561521 () Bool)

(assert (=> d!708566 (=> res!1043278 e!1561521)))

(assert (=> d!708566 (= res!1043278 ((_ is Nil!28665) l!6611))))

(assert (=> d!708566 (= (forall!5885 l!6611 lambda!93131) e!1561521)))

(declare-fun b!2461895 () Bool)

(declare-fun e!1561522 () Bool)

(assert (=> b!2461895 (= e!1561521 e!1561522)))

(declare-fun res!1043279 () Bool)

(assert (=> b!2461895 (=> (not res!1043279) (not e!1561522))))

(declare-fun dynLambda!12297 (Int Token!8384) Bool)

(assert (=> b!2461895 (= res!1043279 (dynLambda!12297 lambda!93131 (h!34066 l!6611)))))

(declare-fun b!2461896 () Bool)

(assert (=> b!2461896 (= e!1561522 (forall!5885 (t!208784 l!6611) lambda!93131))))

(assert (= (and d!708566 (not res!1043278)) b!2461895))

(assert (= (and b!2461895 res!1043279) b!2461896))

(declare-fun b_lambda!75415 () Bool)

(assert (=> (not b_lambda!75415) (not b!2461895)))

(declare-fun m!2830865 () Bool)

(assert (=> b!2461895 m!2830865))

(declare-fun m!2830867 () Bool)

(assert (=> b!2461896 m!2830867))

(assert (=> d!708474 d!708566))

(assert (=> d!708474 d!708542))

(declare-fun d!708568 () Bool)

(assert (=> d!708568 (= (inv!38739 (tag!4947 (rule!6815 (h!34066 (t!208784 l!6611))))) (= (mod (str.len (value!142429 (tag!4947 (rule!6815 (h!34066 (t!208784 l!6611)))))) 2) 0))))

(assert (=> b!2461849 d!708568))

(declare-fun d!708570 () Bool)

(declare-fun res!1043280 () Bool)

(declare-fun e!1561523 () Bool)

(assert (=> d!708570 (=> (not res!1043280) (not e!1561523))))

(assert (=> d!708570 (= res!1043280 (semiInverseModEq!1832 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))) (toValue!6309 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611)))))))))

(assert (=> d!708570 (= (inv!38742 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))) e!1561523)))

(declare-fun b!2461897 () Bool)

(assert (=> b!2461897 (= e!1561523 (equivClasses!1743 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))) (toValue!6309 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611)))))))))

(assert (= (and d!708570 res!1043280) b!2461897))

(declare-fun m!2830869 () Bool)

(assert (=> d!708570 m!2830869))

(declare-fun m!2830871 () Bool)

(assert (=> b!2461897 m!2830871))

(assert (=> b!2461849 d!708570))

(declare-fun d!708572 () Bool)

(assert (=> d!708572 (= (list!11099 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (value!142430 t1!67))) (list!11101 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (value!142430 t1!67)))))))

(declare-fun bs!466234 () Bool)

(assert (= bs!466234 d!708572))

(declare-fun m!2830873 () Bool)

(assert (=> bs!466234 m!2830873))

(assert (=> b!2461593 d!708572))

(declare-fun d!708574 () Bool)

(assert (=> d!708574 (= (inv!38739 (tag!4947 (h!34065 (t!208783 rules!4472)))) (= (mod (str.len (value!142429 (tag!4947 (h!34065 (t!208783 rules!4472))))) 2) 0))))

(assert (=> b!2461869 d!708574))

(declare-fun d!708576 () Bool)

(declare-fun res!1043281 () Bool)

(declare-fun e!1561524 () Bool)

(assert (=> d!708576 (=> (not res!1043281) (not e!1561524))))

(assert (=> d!708576 (= res!1043281 (semiInverseModEq!1832 (toChars!6168 (transformation!4457 (h!34065 (t!208783 rules!4472)))) (toValue!6309 (transformation!4457 (h!34065 (t!208783 rules!4472))))))))

(assert (=> d!708576 (= (inv!38742 (transformation!4457 (h!34065 (t!208783 rules!4472)))) e!1561524)))

(declare-fun b!2461898 () Bool)

(assert (=> b!2461898 (= e!1561524 (equivClasses!1743 (toChars!6168 (transformation!4457 (h!34065 (t!208783 rules!4472)))) (toValue!6309 (transformation!4457 (h!34065 (t!208783 rules!4472))))))))

(assert (= (and d!708576 res!1043281) b!2461898))

(declare-fun m!2830875 () Bool)

(assert (=> d!708576 m!2830875))

(declare-fun m!2830877 () Bool)

(assert (=> b!2461898 m!2830877))

(assert (=> b!2461869 d!708576))

(declare-fun d!708578 () Bool)

(declare-fun lt!881170 () Bool)

(assert (=> d!708578 (= lt!881170 (isEmpty!16657 (list!11099 (_2!16644 (lex!1851 thiss!27932 rules!4472 (print!1573 thiss!27932 (singletonSeq!1974 t1!67)))))))))

(declare-fun isEmpty!16659 (Conc!9161) Bool)

(assert (=> d!708578 (= lt!881170 (isEmpty!16659 (c!392836 (_2!16644 (lex!1851 thiss!27932 rules!4472 (print!1573 thiss!27932 (singletonSeq!1974 t1!67)))))))))

(assert (=> d!708578 (= (isEmpty!16656 (_2!16644 (lex!1851 thiss!27932 rules!4472 (print!1573 thiss!27932 (singletonSeq!1974 t1!67))))) lt!881170)))

(declare-fun bs!466235 () Bool)

(assert (= bs!466235 d!708578))

(declare-fun m!2830879 () Bool)

(assert (=> bs!466235 m!2830879))

(assert (=> bs!466235 m!2830879))

(declare-fun m!2830881 () Bool)

(assert (=> bs!466235 m!2830881))

(declare-fun m!2830883 () Bool)

(assert (=> bs!466235 m!2830883))

(assert (=> b!2461581 d!708578))

(assert (=> b!2461581 d!708550))

(assert (=> b!2461581 d!708552))

(assert (=> b!2461581 d!708560))

(declare-fun d!708580 () Bool)

(declare-fun charsToBigInt!0 (List!28762 Int) Int)

(assert (=> d!708580 (= (inv!15 (value!142430 t2!67)) (= (charsToBigInt!0 (text!32950 (value!142430 t2!67)) 0) (value!142425 (value!142430 t2!67))))))

(declare-fun bs!466236 () Bool)

(assert (= bs!466236 d!708580))

(declare-fun m!2830885 () Bool)

(assert (=> bs!466236 m!2830885))

(assert (=> b!2461786 d!708580))

(declare-fun d!708582 () Bool)

(assert (=> d!708582 (= (head!5623 l!6611) (h!34066 l!6611))))

(assert (=> b!2461765 d!708582))

(declare-fun d!708584 () Bool)

(declare-fun isBalanced!2794 (Conc!9161) Bool)

(assert (=> d!708584 (= (inv!38747 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (value!142430 t2!67))) (isBalanced!2794 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (value!142430 t2!67)))))))

(declare-fun bs!466237 () Bool)

(assert (= bs!466237 d!708584))

(declare-fun m!2830887 () Bool)

(assert (=> bs!466237 m!2830887))

(assert (=> tb!138889 d!708584))

(declare-fun d!708586 () Bool)

(assert (=> d!708586 true))

(declare-fun lambda!93137 () Int)

(declare-fun order!15509 () Int)

(declare-fun dynLambda!12298 (Int Int) Int)

(assert (=> d!708586 (< (dynLambda!12294 order!15503 (toValue!6309 (transformation!4457 (rule!6815 t2!67)))) (dynLambda!12298 order!15509 lambda!93137))))

(declare-fun Forall2!742 (Int) Bool)

(assert (=> d!708586 (= (equivClasses!1743 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (toValue!6309 (transformation!4457 (rule!6815 t2!67)))) (Forall2!742 lambda!93137))))

(declare-fun bs!466238 () Bool)

(assert (= bs!466238 d!708586))

(declare-fun m!2830889 () Bool)

(assert (=> bs!466238 m!2830889))

(assert (=> b!2461770 d!708586))

(declare-fun d!708588 () Bool)

(assert (=> d!708588 (= (isEmpty!16657 (originalCharacters!5223 (h!34066 l!6611))) ((_ is Nil!28663) (originalCharacters!5223 (h!34066 l!6611))))))

(assert (=> d!708534 d!708588))

(declare-fun d!708590 () Bool)

(declare-fun charsToBigInt!1 (List!28762) Int)

(assert (=> d!708590 (= (inv!17 (value!142430 (h!34066 l!6611))) (= (charsToBigInt!1 (text!32949 (value!142430 (h!34066 l!6611)))) (value!142422 (value!142430 (h!34066 l!6611)))))))

(declare-fun bs!466239 () Bool)

(assert (= bs!466239 d!708590))

(declare-fun m!2830891 () Bool)

(assert (=> bs!466239 m!2830891))

(assert (=> b!2461804 d!708590))

(assert (=> b!2461794 d!708514))

(declare-fun d!708592 () Bool)

(declare-fun lt!881180 () Int)

(assert (=> d!708592 (>= lt!881180 0)))

(declare-fun e!1561531 () Int)

(assert (=> d!708592 (= lt!881180 e!1561531)))

(declare-fun c!392880 () Bool)

(assert (=> d!708592 (= c!392880 ((_ is Nil!28663) (originalCharacters!5223 t2!67)))))

(assert (=> d!708592 (= (size!22307 (originalCharacters!5223 t2!67)) lt!881180)))

(declare-fun b!2461909 () Bool)

(assert (=> b!2461909 (= e!1561531 0)))

(declare-fun b!2461910 () Bool)

(assert (=> b!2461910 (= e!1561531 (+ 1 (size!22307 (t!208782 (originalCharacters!5223 t2!67)))))))

(assert (= (and d!708592 c!392880) b!2461909))

(assert (= (and d!708592 (not c!392880)) b!2461910))

(declare-fun m!2830903 () Bool)

(assert (=> b!2461910 m!2830903))

(assert (=> b!2461587 d!708592))

(declare-fun d!708596 () Bool)

(declare-fun lt!881181 () Token!8384)

(assert (=> d!708596 (contains!4890 (tail!3896 l!6611) lt!881181)))

(declare-fun e!1561532 () Token!8384)

(assert (=> d!708596 (= lt!881181 e!1561532)))

(declare-fun c!392881 () Bool)

(assert (=> d!708596 (= c!392881 (= (- (+ 1 i!1803) 1) 0))))

(declare-fun e!1561533 () Bool)

(assert (=> d!708596 e!1561533))

(declare-fun res!1043286 () Bool)

(assert (=> d!708596 (=> (not res!1043286) (not e!1561533))))

(assert (=> d!708596 (= res!1043286 (<= 0 (- (+ 1 i!1803) 1)))))

(assert (=> d!708596 (= (apply!6722 (tail!3896 l!6611) (- (+ 1 i!1803) 1)) lt!881181)))

(declare-fun b!2461911 () Bool)

(assert (=> b!2461911 (= e!1561533 (< (- (+ 1 i!1803) 1) (size!22302 (tail!3896 l!6611))))))

(declare-fun b!2461912 () Bool)

(assert (=> b!2461912 (= e!1561532 (head!5623 (tail!3896 l!6611)))))

(declare-fun b!2461913 () Bool)

(assert (=> b!2461913 (= e!1561532 (apply!6722 (tail!3896 (tail!3896 l!6611)) (- (- (+ 1 i!1803) 1) 1)))))

(assert (= (and d!708596 res!1043286) b!2461911))

(assert (= (and d!708596 c!392881) b!2461912))

(assert (= (and d!708596 (not c!392881)) b!2461913))

(assert (=> d!708596 m!2830735))

(declare-fun m!2830911 () Bool)

(assert (=> d!708596 m!2830911))

(assert (=> b!2461911 m!2830735))

(declare-fun m!2830913 () Bool)

(assert (=> b!2461911 m!2830913))

(assert (=> b!2461912 m!2830735))

(declare-fun m!2830915 () Bool)

(assert (=> b!2461912 m!2830915))

(assert (=> b!2461913 m!2830735))

(declare-fun m!2830917 () Bool)

(assert (=> b!2461913 m!2830917))

(assert (=> b!2461913 m!2830917))

(declare-fun m!2830919 () Bool)

(assert (=> b!2461913 m!2830919))

(assert (=> b!2461796 d!708596))

(declare-fun d!708600 () Bool)

(assert (=> d!708600 (= (tail!3896 l!6611) (t!208784 l!6611))))

(assert (=> b!2461796 d!708600))

(declare-fun d!708602 () Bool)

(assert (=> d!708602 (= (isEmpty!16657 (originalCharacters!5223 t1!67)) ((_ is Nil!28663) (originalCharacters!5223 t1!67)))))

(assert (=> d!708472 d!708602))

(declare-fun d!708604 () Bool)

(assert (=> d!708604 true))

(declare-fun order!15511 () Int)

(declare-fun lambda!93140 () Int)

(declare-fun dynLambda!12299 (Int Int) Int)

(assert (=> d!708604 (< (dynLambda!12296 order!15507 (toChars!6168 (transformation!4457 (h!34065 rules!4472)))) (dynLambda!12299 order!15511 lambda!93140))))

(assert (=> d!708604 true))

(assert (=> d!708604 (< (dynLambda!12294 order!15503 (toValue!6309 (transformation!4457 (h!34065 rules!4472)))) (dynLambda!12299 order!15511 lambda!93140))))

(declare-fun Forall!1133 (Int) Bool)

(assert (=> d!708604 (= (semiInverseModEq!1832 (toChars!6168 (transformation!4457 (h!34065 rules!4472))) (toValue!6309 (transformation!4457 (h!34065 rules!4472)))) (Forall!1133 lambda!93140))))

(declare-fun bs!466243 () Bool)

(assert (= bs!466243 d!708604))

(declare-fun m!2830927 () Bool)

(assert (=> bs!466243 m!2830927))

(assert (=> d!708538 d!708604))

(declare-fun d!708614 () Bool)

(declare-fun res!1043287 () Bool)

(declare-fun e!1561534 () Bool)

(assert (=> d!708614 (=> (not res!1043287) (not e!1561534))))

(assert (=> d!708614 (= res!1043287 (not (isEmpty!16657 (originalCharacters!5223 (h!34066 (t!208784 l!6611))))))))

(assert (=> d!708614 (= (inv!38743 (h!34066 (t!208784 l!6611))) e!1561534)))

(declare-fun b!2461918 () Bool)

(declare-fun res!1043288 () Bool)

(assert (=> b!2461918 (=> (not res!1043288) (not e!1561534))))

(assert (=> b!2461918 (= res!1043288 (= (originalCharacters!5223 (h!34066 (t!208784 l!6611))) (list!11099 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))) (value!142430 (h!34066 (t!208784 l!6611)))))))))

(declare-fun b!2461919 () Bool)

(assert (=> b!2461919 (= e!1561534 (= (size!22301 (h!34066 (t!208784 l!6611))) (size!22307 (originalCharacters!5223 (h!34066 (t!208784 l!6611))))))))

(assert (= (and d!708614 res!1043287) b!2461918))

(assert (= (and b!2461918 res!1043288) b!2461919))

(declare-fun b_lambda!75417 () Bool)

(assert (=> (not b_lambda!75417) (not b!2461918)))

(declare-fun tb!138953 () Bool)

(declare-fun t!208867 () Bool)

(assert (=> (and b!2461543 (= (toChars!6168 (transformation!4457 (h!34065 rules!4472))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611)))))) t!208867) tb!138953))

(declare-fun b!2461924 () Bool)

(declare-fun e!1561537 () Bool)

(declare-fun tp!783956 () Bool)

(assert (=> b!2461924 (= e!1561537 (and (inv!38746 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))) (value!142430 (h!34066 (t!208784 l!6611)))))) tp!783956))))

(declare-fun result!171532 () Bool)

(assert (=> tb!138953 (= result!171532 (and (inv!38747 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))) (value!142430 (h!34066 (t!208784 l!6611))))) e!1561537))))

(assert (= tb!138953 b!2461924))

(declare-fun m!2830929 () Bool)

(assert (=> b!2461924 m!2830929))

(declare-fun m!2830931 () Bool)

(assert (=> tb!138953 m!2830931))

(assert (=> b!2461918 t!208867))

(declare-fun b_and!185829 () Bool)

(assert (= b_and!185815 (and (=> t!208867 result!171532) b_and!185829)))

(declare-fun t!208869 () Bool)

(declare-fun tb!138955 () Bool)

(assert (=> (and b!2461548 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611)))))) t!208869) tb!138955))

(declare-fun result!171534 () Bool)

(assert (= result!171534 result!171532))

(assert (=> b!2461918 t!208869))

(declare-fun b_and!185831 () Bool)

(assert (= b_and!185817 (and (=> t!208869 result!171534) b_and!185831)))

(declare-fun tb!138957 () Bool)

(declare-fun t!208871 () Bool)

(assert (=> (and b!2461870 (= (toChars!6168 (transformation!4457 (h!34065 (t!208783 rules!4472)))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611)))))) t!208871) tb!138957))

(declare-fun result!171536 () Bool)

(assert (= result!171536 result!171532))

(assert (=> b!2461918 t!208871))

(declare-fun b_and!185833 () Bool)

(assert (= b_and!185827 (and (=> t!208871 result!171536) b_and!185833)))

(declare-fun t!208873 () Bool)

(declare-fun tb!138959 () Bool)

(assert (=> (and b!2461850 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611)))))) t!208873) tb!138959))

(declare-fun result!171538 () Bool)

(assert (= result!171538 result!171532))

(assert (=> b!2461918 t!208873))

(declare-fun b_and!185835 () Bool)

(assert (= b_and!185823 (and (=> t!208873 result!171538) b_and!185835)))

(declare-fun t!208875 () Bool)

(declare-fun tb!138961 () Bool)

(assert (=> (and b!2461536 (= (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611)))))) t!208875) tb!138961))

(declare-fun result!171540 () Bool)

(assert (= result!171540 result!171532))

(assert (=> b!2461918 t!208875))

(declare-fun b_and!185837 () Bool)

(assert (= b_and!185819 (and (=> t!208875 result!171540) b_and!185837)))

(declare-fun tb!138963 () Bool)

(declare-fun t!208877 () Bool)

(assert (=> (and b!2461547 (= (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611)))))) t!208877) tb!138963))

(declare-fun result!171542 () Bool)

(assert (= result!171542 result!171532))

(assert (=> b!2461918 t!208877))

(declare-fun b_and!185839 () Bool)

(assert (= b_and!185813 (and (=> t!208877 result!171542) b_and!185839)))

(declare-fun m!2830933 () Bool)

(assert (=> d!708614 m!2830933))

(declare-fun m!2830935 () Bool)

(assert (=> b!2461918 m!2830935))

(assert (=> b!2461918 m!2830935))

(declare-fun m!2830937 () Bool)

(assert (=> b!2461918 m!2830937))

(declare-fun m!2830939 () Bool)

(assert (=> b!2461919 m!2830939))

(assert (=> b!2461847 d!708614))

(declare-fun d!708616 () Bool)

(declare-fun res!1043290 () Bool)

(declare-fun e!1561539 () Bool)

(assert (=> d!708616 (=> res!1043290 e!1561539)))

(assert (=> d!708616 (= res!1043290 (or (not ((_ is Cons!28665) (Cons!28665 (h!34066 (t!208784 l!6611)) (t!208784 (t!208784 l!6611))))) (not ((_ is Cons!28665) (t!208784 (Cons!28665 (h!34066 (t!208784 l!6611)) (t!208784 (t!208784 l!6611))))))))))

(assert (=> d!708616 (= (tokensListTwoByTwoPredicateSeparableList!593 thiss!27932 (Cons!28665 (h!34066 (t!208784 l!6611)) (t!208784 (t!208784 l!6611))) rules!4472) e!1561539)))

(declare-fun b!2461927 () Bool)

(declare-fun e!1561540 () Bool)

(assert (=> b!2461927 (= e!1561539 e!1561540)))

(declare-fun res!1043289 () Bool)

(assert (=> b!2461927 (=> (not res!1043289) (not e!1561540))))

(assert (=> b!2461927 (= res!1043289 (separableTokensPredicate!834 thiss!27932 (h!34066 (Cons!28665 (h!34066 (t!208784 l!6611)) (t!208784 (t!208784 l!6611)))) (h!34066 (t!208784 (Cons!28665 (h!34066 (t!208784 l!6611)) (t!208784 (t!208784 l!6611))))) rules!4472))))

(declare-fun lt!881186 () Unit!41988)

(declare-fun Unit!41993 () Unit!41988)

(assert (=> b!2461927 (= lt!881186 Unit!41993)))

(assert (=> b!2461927 (> (size!22308 (charsOf!2811 (h!34066 (t!208784 (Cons!28665 (h!34066 (t!208784 l!6611)) (t!208784 (t!208784 l!6611))))))) 0)))

(declare-fun lt!881190 () Unit!41988)

(declare-fun Unit!41994 () Unit!41988)

(assert (=> b!2461927 (= lt!881190 Unit!41994)))

(assert (=> b!2461927 (rulesProduceIndividualToken!1791 thiss!27932 rules!4472 (h!34066 (t!208784 (Cons!28665 (h!34066 (t!208784 l!6611)) (t!208784 (t!208784 l!6611))))))))

(declare-fun lt!881185 () Unit!41988)

(declare-fun Unit!41995 () Unit!41988)

(assert (=> b!2461927 (= lt!881185 Unit!41995)))

(assert (=> b!2461927 (rulesProduceIndividualToken!1791 thiss!27932 rules!4472 (h!34066 (Cons!28665 (h!34066 (t!208784 l!6611)) (t!208784 (t!208784 l!6611)))))))

(declare-fun lt!881187 () Unit!41988)

(declare-fun lt!881189 () Unit!41988)

(assert (=> b!2461927 (= lt!881187 lt!881189)))

(assert (=> b!2461927 (rulesProduceIndividualToken!1791 thiss!27932 rules!4472 (h!34066 (t!208784 (Cons!28665 (h!34066 (t!208784 l!6611)) (t!208784 (t!208784 l!6611))))))))

(assert (=> b!2461927 (= lt!881189 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!652 thiss!27932 rules!4472 (Cons!28665 (h!34066 (t!208784 l!6611)) (t!208784 (t!208784 l!6611))) (h!34066 (t!208784 (Cons!28665 (h!34066 (t!208784 l!6611)) (t!208784 (t!208784 l!6611)))))))))

(declare-fun lt!881188 () Unit!41988)

(declare-fun lt!881191 () Unit!41988)

(assert (=> b!2461927 (= lt!881188 lt!881191)))

(assert (=> b!2461927 (rulesProduceIndividualToken!1791 thiss!27932 rules!4472 (h!34066 (Cons!28665 (h!34066 (t!208784 l!6611)) (t!208784 (t!208784 l!6611)))))))

(assert (=> b!2461927 (= lt!881191 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!652 thiss!27932 rules!4472 (Cons!28665 (h!34066 (t!208784 l!6611)) (t!208784 (t!208784 l!6611))) (h!34066 (Cons!28665 (h!34066 (t!208784 l!6611)) (t!208784 (t!208784 l!6611))))))))

(declare-fun b!2461928 () Bool)

(assert (=> b!2461928 (= e!1561540 (tokensListTwoByTwoPredicateSeparableList!593 thiss!27932 (Cons!28665 (h!34066 (t!208784 (Cons!28665 (h!34066 (t!208784 l!6611)) (t!208784 (t!208784 l!6611))))) (t!208784 (t!208784 (Cons!28665 (h!34066 (t!208784 l!6611)) (t!208784 (t!208784 l!6611)))))) rules!4472))))

(assert (= (and d!708616 (not res!1043290)) b!2461927))

(assert (= (and b!2461927 res!1043289) b!2461928))

(declare-fun m!2830943 () Bool)

(assert (=> b!2461927 m!2830943))

(declare-fun m!2830945 () Bool)

(assert (=> b!2461927 m!2830945))

(declare-fun m!2830947 () Bool)

(assert (=> b!2461927 m!2830947))

(declare-fun m!2830949 () Bool)

(assert (=> b!2461927 m!2830949))

(declare-fun m!2830951 () Bool)

(assert (=> b!2461927 m!2830951))

(declare-fun m!2830953 () Bool)

(assert (=> b!2461927 m!2830953))

(declare-fun m!2830955 () Bool)

(assert (=> b!2461927 m!2830955))

(assert (=> b!2461927 m!2830949))

(declare-fun m!2830957 () Bool)

(assert (=> b!2461928 m!2830957))

(assert (=> b!2461812 d!708616))

(declare-fun d!708620 () Bool)

(declare-fun charsToInt!0 (List!28762) (_ BitVec 32))

(assert (=> d!708620 (= (inv!16 (value!142430 t1!67)) (= (charsToInt!0 (text!32948 (value!142430 t1!67))) (value!142421 (value!142430 t1!67))))))

(declare-fun bs!466244 () Bool)

(assert (= bs!466244 d!708620))

(declare-fun m!2830959 () Bool)

(assert (=> bs!466244 m!2830959))

(assert (=> b!2461789 d!708620))

(declare-fun d!708622 () Bool)

(declare-fun lt!881194 () Token!8384)

(assert (=> d!708622 (= lt!881194 (apply!6722 (list!11098 (_1!16644 lt!881089)) 0))))

(declare-fun apply!6725 (Conc!9163 Int) Token!8384)

(assert (=> d!708622 (= lt!881194 (apply!6725 (c!392873 (_1!16644 lt!881089)) 0))))

(declare-fun e!1561548 () Bool)

(assert (=> d!708622 e!1561548))

(declare-fun res!1043298 () Bool)

(assert (=> d!708622 (=> (not res!1043298) (not e!1561548))))

(assert (=> d!708622 (= res!1043298 (<= 0 0))))

(assert (=> d!708622 (= (apply!6724 (_1!16644 lt!881089) 0) lt!881194)))

(declare-fun b!2461939 () Bool)

(assert (=> b!2461939 (= e!1561548 (< 0 (size!22306 (_1!16644 lt!881089))))))

(assert (= (and d!708622 res!1043298) b!2461939))

(assert (=> d!708622 m!2830845))

(assert (=> d!708622 m!2830845))

(declare-fun m!2830979 () Bool)

(assert (=> d!708622 m!2830979))

(declare-fun m!2830981 () Bool)

(assert (=> d!708622 m!2830981))

(assert (=> b!2461939 m!2830573))

(assert (=> b!2461579 d!708622))

(declare-fun d!708632 () Bool)

(assert (=> d!708632 (= (inv!15 (value!142430 t1!67)) (= (charsToBigInt!0 (text!32950 (value!142430 t1!67)) 0) (value!142425 (value!142430 t1!67))))))

(declare-fun bs!466246 () Bool)

(assert (= bs!466246 d!708632))

(declare-fun m!2830983 () Bool)

(assert (=> bs!466246 m!2830983))

(assert (=> b!2461791 d!708632))

(declare-fun d!708634 () Bool)

(assert (=> d!708634 (= (inv!16 (value!142430 t2!67)) (= (charsToInt!0 (text!32948 (value!142430 t2!67))) (value!142421 (value!142430 t2!67))))))

(declare-fun bs!466247 () Bool)

(assert (= bs!466247 d!708634))

(declare-fun m!2830985 () Bool)

(assert (=> bs!466247 m!2830985))

(assert (=> b!2461784 d!708634))

(declare-fun d!708636 () Bool)

(declare-fun c!392887 () Bool)

(assert (=> d!708636 (= c!392887 ((_ is Node!9161) (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (value!142430 (h!34066 l!6611))))))))

(declare-fun e!1561564 () Bool)

(assert (=> d!708636 (= (inv!38746 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (value!142430 (h!34066 l!6611))))) e!1561564)))

(declare-fun b!2461957 () Bool)

(declare-fun inv!38748 (Conc!9161) Bool)

(assert (=> b!2461957 (= e!1561564 (inv!38748 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (value!142430 (h!34066 l!6611))))))))

(declare-fun b!2461958 () Bool)

(declare-fun e!1561565 () Bool)

(assert (=> b!2461958 (= e!1561564 e!1561565)))

(declare-fun res!1043309 () Bool)

(assert (=> b!2461958 (= res!1043309 (not ((_ is Leaf!13697) (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (value!142430 (h!34066 l!6611)))))))))

(assert (=> b!2461958 (=> res!1043309 e!1561565)))

(declare-fun b!2461959 () Bool)

(declare-fun inv!38749 (Conc!9161) Bool)

(assert (=> b!2461959 (= e!1561565 (inv!38749 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (value!142430 (h!34066 l!6611))))))))

(assert (= (and d!708636 c!392887) b!2461957))

(assert (= (and d!708636 (not c!392887)) b!2461958))

(assert (= (and b!2461958 (not res!1043309)) b!2461959))

(declare-fun m!2830993 () Bool)

(assert (=> b!2461957 m!2830993))

(declare-fun m!2830995 () Bool)

(assert (=> b!2461959 m!2830995))

(assert (=> b!2461799 d!708636))

(declare-fun d!708640 () Bool)

(declare-fun c!392888 () Bool)

(assert (=> d!708640 (= c!392888 ((_ is Node!9161) (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (value!142430 t2!67)))))))

(declare-fun e!1561566 () Bool)

(assert (=> d!708640 (= (inv!38746 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (value!142430 t2!67)))) e!1561566)))

(declare-fun b!2461960 () Bool)

(assert (=> b!2461960 (= e!1561566 (inv!38748 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (value!142430 t2!67)))))))

(declare-fun b!2461961 () Bool)

(declare-fun e!1561567 () Bool)

(assert (=> b!2461961 (= e!1561566 e!1561567)))

(declare-fun res!1043310 () Bool)

(assert (=> b!2461961 (= res!1043310 (not ((_ is Leaf!13697) (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (value!142430 t2!67))))))))

(assert (=> b!2461961 (=> res!1043310 e!1561567)))

(declare-fun b!2461962 () Bool)

(assert (=> b!2461962 (= e!1561567 (inv!38749 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (value!142430 t2!67)))))))

(assert (= (and d!708640 c!392888) b!2461960))

(assert (= (and d!708640 (not c!392888)) b!2461961))

(assert (= (and b!2461961 (not res!1043310)) b!2461962))

(declare-fun m!2831001 () Bool)

(assert (=> b!2461960 m!2831001))

(declare-fun m!2831003 () Bool)

(assert (=> b!2461962 m!2831003))

(assert (=> b!2461592 d!708640))

(declare-fun bs!466249 () Bool)

(declare-fun d!708644 () Bool)

(assert (= bs!466249 (and d!708644 d!708474)))

(declare-fun lambda!93145 () Int)

(assert (=> bs!466249 (= lambda!93145 lambda!93131)))

(declare-fun b!2461969 () Bool)

(declare-fun e!1561574 () Bool)

(assert (=> b!2461969 (= e!1561574 true)))

(declare-fun b!2461968 () Bool)

(declare-fun e!1561573 () Bool)

(assert (=> b!2461968 (= e!1561573 e!1561574)))

(declare-fun b!2461967 () Bool)

(declare-fun e!1561572 () Bool)

(assert (=> b!2461967 (= e!1561572 e!1561573)))

(assert (=> d!708644 e!1561572))

(assert (= b!2461968 b!2461969))

(assert (= b!2461967 b!2461968))

(assert (= (and d!708644 ((_ is Cons!28664) rules!4472)) b!2461967))

(assert (=> b!2461969 (< (dynLambda!12294 order!15503 (toValue!6309 (transformation!4457 (h!34065 rules!4472)))) (dynLambda!12295 order!15505 lambda!93145))))

(assert (=> b!2461969 (< (dynLambda!12296 order!15507 (toChars!6168 (transformation!4457 (h!34065 rules!4472)))) (dynLambda!12295 order!15505 lambda!93145))))

(assert (=> d!708644 true))

(declare-fun lt!881200 () Bool)

(assert (=> d!708644 (= lt!881200 (forall!5885 (t!208784 l!6611) lambda!93145))))

(declare-fun e!1561570 () Bool)

(assert (=> d!708644 (= lt!881200 e!1561570)))

(declare-fun res!1043313 () Bool)

(assert (=> d!708644 (=> res!1043313 e!1561570)))

(assert (=> d!708644 (= res!1043313 (not ((_ is Cons!28665) (t!208784 l!6611))))))

(assert (=> d!708644 (not (isEmpty!16653 rules!4472))))

(assert (=> d!708644 (= (rulesProduceEachTokenIndividuallyList!1370 thiss!27932 rules!4472 (t!208784 l!6611)) lt!881200)))

(declare-fun b!2461965 () Bool)

(declare-fun e!1561571 () Bool)

(assert (=> b!2461965 (= e!1561570 e!1561571)))

(declare-fun res!1043314 () Bool)

(assert (=> b!2461965 (=> (not res!1043314) (not e!1561571))))

(assert (=> b!2461965 (= res!1043314 (rulesProduceIndividualToken!1791 thiss!27932 rules!4472 (h!34066 (t!208784 l!6611))))))

(declare-fun b!2461966 () Bool)

(assert (=> b!2461966 (= e!1561571 (rulesProduceEachTokenIndividuallyList!1370 thiss!27932 rules!4472 (t!208784 (t!208784 l!6611))))))

(assert (= (and d!708644 (not res!1043313)) b!2461965))

(assert (= (and b!2461965 res!1043314) b!2461966))

(declare-fun m!2831009 () Bool)

(assert (=> d!708644 m!2831009))

(assert (=> d!708644 m!2830509))

(assert (=> b!2461965 m!2830795))

(declare-fun m!2831011 () Bool)

(assert (=> b!2461966 m!2831011))

(assert (=> b!2461680 d!708644))

(declare-fun d!708650 () Bool)

(declare-fun lt!881201 () Int)

(assert (=> d!708650 (>= lt!881201 0)))

(declare-fun e!1561575 () Int)

(assert (=> d!708650 (= lt!881201 e!1561575)))

(declare-fun c!392889 () Bool)

(assert (=> d!708650 (= c!392889 ((_ is Nil!28665) (t!208784 l!6611)))))

(assert (=> d!708650 (= (size!22302 (t!208784 l!6611)) lt!881201)))

(declare-fun b!2461970 () Bool)

(assert (=> b!2461970 (= e!1561575 0)))

(declare-fun b!2461971 () Bool)

(assert (=> b!2461971 (= e!1561575 (+ 1 (size!22302 (t!208784 (t!208784 l!6611)))))))

(assert (= (and d!708650 c!392889) b!2461970))

(assert (= (and d!708650 (not c!392889)) b!2461971))

(declare-fun m!2831013 () Bool)

(assert (=> b!2461971 m!2831013))

(assert (=> b!2461718 d!708650))

(declare-fun bs!466250 () Bool)

(declare-fun d!708652 () Bool)

(assert (= bs!466250 (and d!708652 d!708586)))

(declare-fun lambda!93146 () Int)

(assert (=> bs!466250 (= (= (toValue!6309 (transformation!4457 (rule!6815 t1!67))) (toValue!6309 (transformation!4457 (rule!6815 t2!67)))) (= lambda!93146 lambda!93137))))

(assert (=> d!708652 true))

(assert (=> d!708652 (< (dynLambda!12294 order!15503 (toValue!6309 (transformation!4457 (rule!6815 t1!67)))) (dynLambda!12298 order!15509 lambda!93146))))

(assert (=> d!708652 (= (equivClasses!1743 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (toValue!6309 (transformation!4457 (rule!6815 t1!67)))) (Forall2!742 lambda!93146))))

(declare-fun bs!466251 () Bool)

(assert (= bs!466251 d!708652))

(declare-fun m!2831015 () Bool)

(assert (=> bs!466251 m!2831015))

(assert (=> b!2461806 d!708652))

(declare-fun d!708654 () Bool)

(assert (=> d!708654 (= (inv!38747 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (value!142430 t1!67))) (isBalanced!2794 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (value!142430 t1!67)))))))

(declare-fun bs!466252 () Bool)

(assert (= bs!466252 d!708654))

(declare-fun m!2831017 () Bool)

(assert (=> bs!466252 m!2831017))

(assert (=> tb!138897 d!708654))

(declare-fun d!708656 () Bool)

(declare-fun lt!881202 () Int)

(assert (=> d!708656 (>= lt!881202 0)))

(declare-fun e!1561576 () Int)

(assert (=> d!708656 (= lt!881202 e!1561576)))

(declare-fun c!392890 () Bool)

(assert (=> d!708656 (= c!392890 ((_ is Nil!28663) (originalCharacters!5223 (h!34066 l!6611))))))

(assert (=> d!708656 (= (size!22307 (originalCharacters!5223 (h!34066 l!6611))) lt!881202)))

(declare-fun b!2461972 () Bool)

(assert (=> b!2461972 (= e!1561576 0)))

(declare-fun b!2461973 () Bool)

(assert (=> b!2461973 (= e!1561576 (+ 1 (size!22307 (t!208782 (originalCharacters!5223 (h!34066 l!6611))))))))

(assert (= (and d!708656 c!392890) b!2461972))

(assert (= (and d!708656 (not c!392890)) b!2461973))

(declare-fun m!2831019 () Bool)

(assert (=> b!2461973 m!2831019))

(assert (=> b!2461798 d!708656))

(declare-fun d!708658 () Bool)

(declare-fun lt!881207 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3947 (List!28765) (InoxSet Token!8384))

(assert (=> d!708658 (= lt!881207 (select (content!3947 l!6611) lt!881131))))

(declare-fun e!1561583 () Bool)

(assert (=> d!708658 (= lt!881207 e!1561583)))

(declare-fun res!1043322 () Bool)

(assert (=> d!708658 (=> (not res!1043322) (not e!1561583))))

(assert (=> d!708658 (= res!1043322 ((_ is Cons!28665) l!6611))))

(assert (=> d!708658 (= (contains!4890 l!6611 lt!881131) lt!881207)))

(declare-fun b!2461980 () Bool)

(declare-fun e!1561584 () Bool)

(assert (=> b!2461980 (= e!1561583 e!1561584)))

(declare-fun res!1043321 () Bool)

(assert (=> b!2461980 (=> res!1043321 e!1561584)))

(assert (=> b!2461980 (= res!1043321 (= (h!34066 l!6611) lt!881131))))

(declare-fun b!2461981 () Bool)

(assert (=> b!2461981 (= e!1561584 (contains!4890 (t!208784 l!6611) lt!881131))))

(assert (= (and d!708658 res!1043322) b!2461980))

(assert (= (and b!2461980 (not res!1043321)) b!2461981))

(declare-fun m!2831021 () Bool)

(assert (=> d!708658 m!2831021))

(declare-fun m!2831025 () Bool)

(assert (=> d!708658 m!2831025))

(declare-fun m!2831029 () Bool)

(assert (=> b!2461981 m!2831029))

(assert (=> d!708532 d!708658))

(declare-fun d!708660 () Bool)

(declare-fun lt!881209 () Int)

(assert (=> d!708660 (>= lt!881209 0)))

(declare-fun e!1561586 () Int)

(assert (=> d!708660 (= lt!881209 e!1561586)))

(declare-fun c!392891 () Bool)

(assert (=> d!708660 (= c!392891 ((_ is Nil!28663) (originalCharacters!5223 t1!67)))))

(assert (=> d!708660 (= (size!22307 (originalCharacters!5223 t1!67)) lt!881209)))

(declare-fun b!2461983 () Bool)

(assert (=> b!2461983 (= e!1561586 0)))

(declare-fun b!2461984 () Bool)

(assert (=> b!2461984 (= e!1561586 (+ 1 (size!22307 (t!208782 (originalCharacters!5223 t1!67)))))))

(assert (= (and d!708660 c!392891) b!2461983))

(assert (= (and d!708660 (not c!392891)) b!2461984))

(declare-fun m!2831033 () Bool)

(assert (=> b!2461984 m!2831033))

(assert (=> b!2461594 d!708660))

(declare-fun d!708664 () Bool)

(declare-fun lt!881210 () Bool)

(assert (=> d!708664 (= lt!881210 (isEmpty!16657 (list!11099 (_2!16644 lt!881089))))))

(assert (=> d!708664 (= lt!881210 (isEmpty!16659 (c!392836 (_2!16644 lt!881089))))))

(assert (=> d!708664 (= (isEmpty!16656 (_2!16644 lt!881089)) lt!881210)))

(declare-fun bs!466253 () Bool)

(assert (= bs!466253 d!708664))

(declare-fun m!2831035 () Bool)

(assert (=> bs!466253 m!2831035))

(assert (=> bs!466253 m!2831035))

(declare-fun m!2831037 () Bool)

(assert (=> bs!466253 m!2831037))

(declare-fun m!2831039 () Bool)

(assert (=> bs!466253 m!2831039))

(assert (=> b!2461580 d!708664))

(declare-fun bs!466254 () Bool)

(declare-fun d!708666 () Bool)

(assert (= bs!466254 (and d!708666 d!708586)))

(declare-fun lambda!93147 () Int)

(assert (=> bs!466254 (= (= (toValue!6309 (transformation!4457 (h!34065 rules!4472))) (toValue!6309 (transformation!4457 (rule!6815 t2!67)))) (= lambda!93147 lambda!93137))))

(declare-fun bs!466255 () Bool)

(assert (= bs!466255 (and d!708666 d!708652)))

(assert (=> bs!466255 (= (= (toValue!6309 (transformation!4457 (h!34065 rules!4472))) (toValue!6309 (transformation!4457 (rule!6815 t1!67)))) (= lambda!93147 lambda!93146))))

(assert (=> d!708666 true))

(assert (=> d!708666 (< (dynLambda!12294 order!15503 (toValue!6309 (transformation!4457 (h!34065 rules!4472)))) (dynLambda!12298 order!15509 lambda!93147))))

(assert (=> d!708666 (= (equivClasses!1743 (toChars!6168 (transformation!4457 (h!34065 rules!4472))) (toValue!6309 (transformation!4457 (h!34065 rules!4472)))) (Forall2!742 lambda!93147))))

(declare-fun bs!466256 () Bool)

(assert (= bs!466256 d!708666))

(declare-fun m!2831041 () Bool)

(assert (=> bs!466256 m!2831041))

(assert (=> b!2461800 d!708666))

(declare-fun d!708668 () Bool)

(assert (=> d!708668 (= (isEmpty!16657 (originalCharacters!5223 t2!67)) ((_ is Nil!28663) (originalCharacters!5223 t2!67)))))

(assert (=> d!708470 d!708668))

(declare-fun d!708670 () Bool)

(assert (=> d!708670 (= (inv!17 (value!142430 t1!67)) (= (charsToBigInt!1 (text!32949 (value!142430 t1!67))) (value!142422 (value!142430 t1!67))))))

(declare-fun bs!466257 () Bool)

(assert (= bs!466257 d!708670))

(declare-fun m!2831043 () Bool)

(assert (=> bs!466257 m!2831043))

(assert (=> b!2461792 d!708670))

(assert (=> b!2461764 d!708514))

(declare-fun d!708672 () Bool)

(declare-fun res!1043328 () Bool)

(declare-fun e!1561591 () Bool)

(assert (=> d!708672 (=> res!1043328 e!1561591)))

(assert (=> d!708672 (= res!1043328 ((_ is Nil!28664) rules!4472))))

(assert (=> d!708672 (= (noDuplicateTag!1655 thiss!27932 rules!4472 Nil!28667) e!1561591)))

(declare-fun b!2461989 () Bool)

(declare-fun e!1561592 () Bool)

(assert (=> b!2461989 (= e!1561591 e!1561592)))

(declare-fun res!1043329 () Bool)

(assert (=> b!2461989 (=> (not res!1043329) (not e!1561592))))

(declare-fun contains!4891 (List!28767 String!31511) Bool)

(assert (=> b!2461989 (= res!1043329 (not (contains!4891 Nil!28667 (tag!4947 (h!34065 rules!4472)))))))

(declare-fun b!2461990 () Bool)

(assert (=> b!2461990 (= e!1561592 (noDuplicateTag!1655 thiss!27932 (t!208783 rules!4472) (Cons!28667 (tag!4947 (h!34065 rules!4472)) Nil!28667)))))

(assert (= (and d!708672 (not res!1043328)) b!2461989))

(assert (= (and b!2461989 res!1043329) b!2461990))

(declare-fun m!2831053 () Bool)

(assert (=> b!2461989 m!2831053))

(declare-fun m!2831055 () Bool)

(assert (=> b!2461990 m!2831055))

(assert (=> b!2461773 d!708672))

(declare-fun d!708682 () Bool)

(assert (=> d!708682 (= (inv!17 (value!142430 t2!67)) (= (charsToBigInt!1 (text!32949 (value!142430 t2!67))) (value!142422 (value!142430 t2!67))))))

(declare-fun bs!466262 () Bool)

(assert (= bs!466262 d!708682))

(declare-fun m!2831057 () Bool)

(assert (=> bs!466262 m!2831057))

(assert (=> b!2461787 d!708682))

(declare-fun d!708684 () Bool)

(declare-fun lt!881211 () Token!8384)

(assert (=> d!708684 (contains!4890 (tail!3896 l!6611) lt!881211)))

(declare-fun e!1561593 () Token!8384)

(assert (=> d!708684 (= lt!881211 e!1561593)))

(declare-fun c!392892 () Bool)

(assert (=> d!708684 (= c!392892 (= (- i!1803 1) 0))))

(declare-fun e!1561594 () Bool)

(assert (=> d!708684 e!1561594))

(declare-fun res!1043330 () Bool)

(assert (=> d!708684 (=> (not res!1043330) (not e!1561594))))

(assert (=> d!708684 (= res!1043330 (<= 0 (- i!1803 1)))))

(assert (=> d!708684 (= (apply!6722 (tail!3896 l!6611) (- i!1803 1)) lt!881211)))

(declare-fun b!2461991 () Bool)

(assert (=> b!2461991 (= e!1561594 (< (- i!1803 1) (size!22302 (tail!3896 l!6611))))))

(declare-fun b!2461992 () Bool)

(assert (=> b!2461992 (= e!1561593 (head!5623 (tail!3896 l!6611)))))

(declare-fun b!2461993 () Bool)

(assert (=> b!2461993 (= e!1561593 (apply!6722 (tail!3896 (tail!3896 l!6611)) (- (- i!1803 1) 1)))))

(assert (= (and d!708684 res!1043330) b!2461991))

(assert (= (and d!708684 c!392892) b!2461992))

(assert (= (and d!708684 (not c!392892)) b!2461993))

(assert (=> d!708684 m!2830735))

(declare-fun m!2831059 () Bool)

(assert (=> d!708684 m!2831059))

(assert (=> b!2461991 m!2830735))

(assert (=> b!2461991 m!2830913))

(assert (=> b!2461992 m!2830735))

(assert (=> b!2461992 m!2830915))

(assert (=> b!2461993 m!2830735))

(assert (=> b!2461993 m!2830917))

(assert (=> b!2461993 m!2830917))

(declare-fun m!2831061 () Bool)

(assert (=> b!2461993 m!2831061))

(assert (=> b!2461766 d!708684))

(assert (=> b!2461766 d!708600))

(declare-fun d!708686 () Bool)

(assert (=> d!708686 (= (inv!15 (value!142430 (h!34066 l!6611))) (= (charsToBigInt!0 (text!32950 (value!142430 (h!34066 l!6611))) 0) (value!142425 (value!142430 (h!34066 l!6611)))))))

(declare-fun bs!466263 () Bool)

(assert (= bs!466263 d!708686))

(declare-fun m!2831063 () Bool)

(assert (=> bs!466263 m!2831063))

(assert (=> b!2461803 d!708686))

(declare-fun d!708688 () Bool)

(declare-fun lt!881217 () Int)

(assert (=> d!708688 (= lt!881217 (size!22307 (list!11099 (charsOf!2811 (h!34066 (t!208784 l!6611))))))))

(declare-fun size!22310 (Conc!9161) Int)

(assert (=> d!708688 (= lt!881217 (size!22310 (c!392836 (charsOf!2811 (h!34066 (t!208784 l!6611))))))))

(assert (=> d!708688 (= (size!22308 (charsOf!2811 (h!34066 (t!208784 l!6611)))) lt!881217)))

(declare-fun bs!466266 () Bool)

(assert (= bs!466266 d!708688))

(assert (=> bs!466266 m!2830797))

(declare-fun m!2831071 () Bool)

(assert (=> bs!466266 m!2831071))

(assert (=> bs!466266 m!2831071))

(declare-fun m!2831073 () Bool)

(assert (=> bs!466266 m!2831073))

(declare-fun m!2831075 () Bool)

(assert (=> bs!466266 m!2831075))

(assert (=> b!2461811 d!708688))

(declare-fun d!708694 () Bool)

(declare-fun prefixMatchZipperSequence!712 (Regex!7245 BalanceConc!17936) Bool)

(declare-fun rulesRegex!972 (LexerInterface!4054 List!28764) Regex!7245)

(declare-fun ++!7126 (BalanceConc!17936 BalanceConc!17936) BalanceConc!17936)

(declare-fun singletonSeq!1975 (C!14648) BalanceConc!17936)

(declare-fun apply!6726 (BalanceConc!17936 Int) C!14648)

(assert (=> d!708694 (= (separableTokensPredicate!834 thiss!27932 (h!34066 l!6611) (h!34066 (t!208784 l!6611)) rules!4472) (not (prefixMatchZipperSequence!712 (rulesRegex!972 thiss!27932 rules!4472) (++!7126 (charsOf!2811 (h!34066 l!6611)) (singletonSeq!1975 (apply!6726 (charsOf!2811 (h!34066 (t!208784 l!6611))) 0))))))))

(declare-fun bs!466269 () Bool)

(assert (= bs!466269 d!708694))

(declare-fun m!2831089 () Bool)

(assert (=> bs!466269 m!2831089))

(declare-fun m!2831091 () Bool)

(assert (=> bs!466269 m!2831091))

(declare-fun m!2831093 () Bool)

(assert (=> bs!466269 m!2831093))

(assert (=> bs!466269 m!2831089))

(declare-fun m!2831095 () Bool)

(assert (=> bs!466269 m!2831095))

(assert (=> bs!466269 m!2831093))

(declare-fun m!2831097 () Bool)

(assert (=> bs!466269 m!2831097))

(declare-fun m!2831099 () Bool)

(assert (=> bs!466269 m!2831099))

(assert (=> bs!466269 m!2831091))

(assert (=> bs!466269 m!2830797))

(assert (=> bs!466269 m!2831095))

(assert (=> bs!466269 m!2830797))

(assert (=> bs!466269 m!2831099))

(assert (=> b!2461811 d!708694))

(declare-fun d!708704 () Bool)

(declare-fun lt!881223 () BalanceConc!17936)

(assert (=> d!708704 (= (list!11099 lt!881223) (originalCharacters!5223 (h!34066 (t!208784 l!6611))))))

(assert (=> d!708704 (= lt!881223 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))) (value!142430 (h!34066 (t!208784 l!6611)))))))

(assert (=> d!708704 (= (charsOf!2811 (h!34066 (t!208784 l!6611))) lt!881223)))

(declare-fun b_lambda!75421 () Bool)

(assert (=> (not b_lambda!75421) (not d!708704)))

(assert (=> d!708704 t!208869))

(declare-fun b_and!185853 () Bool)

(assert (= b_and!185831 (and (=> t!208869 result!171534) b_and!185853)))

(assert (=> d!708704 t!208867))

(declare-fun b_and!185855 () Bool)

(assert (= b_and!185829 (and (=> t!208867 result!171532) b_and!185855)))

(assert (=> d!708704 t!208877))

(declare-fun b_and!185857 () Bool)

(assert (= b_and!185839 (and (=> t!208877 result!171542) b_and!185857)))

(assert (=> d!708704 t!208871))

(declare-fun b_and!185859 () Bool)

(assert (= b_and!185833 (and (=> t!208871 result!171536) b_and!185859)))

(assert (=> d!708704 t!208873))

(declare-fun b_and!185861 () Bool)

(assert (= b_and!185835 (and (=> t!208873 result!171538) b_and!185861)))

(assert (=> d!708704 t!208875))

(declare-fun b_and!185863 () Bool)

(assert (= b_and!185837 (and (=> t!208875 result!171540) b_and!185863)))

(declare-fun m!2831101 () Bool)

(assert (=> d!708704 m!2831101))

(assert (=> d!708704 m!2830935))

(assert (=> b!2461811 d!708704))

(declare-fun d!708706 () Bool)

(declare-fun lt!881224 () Bool)

(declare-fun e!1561597 () Bool)

(assert (=> d!708706 (= lt!881224 e!1561597)))

(declare-fun res!1043334 () Bool)

(assert (=> d!708706 (=> (not res!1043334) (not e!1561597))))

(assert (=> d!708706 (= res!1043334 (= (list!11098 (_1!16644 (lex!1851 thiss!27932 rules!4472 (print!1573 thiss!27932 (singletonSeq!1974 (h!34066 (t!208784 l!6611))))))) (list!11098 (singletonSeq!1974 (h!34066 (t!208784 l!6611))))))))

(declare-fun e!1561596 () Bool)

(assert (=> d!708706 (= lt!881224 e!1561596)))

(declare-fun res!1043333 () Bool)

(assert (=> d!708706 (=> (not res!1043333) (not e!1561596))))

(declare-fun lt!881225 () tuple2!28206)

(assert (=> d!708706 (= res!1043333 (= (size!22306 (_1!16644 lt!881225)) 1))))

(assert (=> d!708706 (= lt!881225 (lex!1851 thiss!27932 rules!4472 (print!1573 thiss!27932 (singletonSeq!1974 (h!34066 (t!208784 l!6611))))))))

(assert (=> d!708706 (not (isEmpty!16653 rules!4472))))

(assert (=> d!708706 (= (rulesProduceIndividualToken!1791 thiss!27932 rules!4472 (h!34066 (t!208784 l!6611))) lt!881224)))

(declare-fun b!2462001 () Bool)

(declare-fun res!1043332 () Bool)

(assert (=> b!2462001 (=> (not res!1043332) (not e!1561596))))

(assert (=> b!2462001 (= res!1043332 (= (apply!6724 (_1!16644 lt!881225) 0) (h!34066 (t!208784 l!6611))))))

(declare-fun b!2462002 () Bool)

(assert (=> b!2462002 (= e!1561596 (isEmpty!16656 (_2!16644 lt!881225)))))

(declare-fun b!2462003 () Bool)

(assert (=> b!2462003 (= e!1561597 (isEmpty!16656 (_2!16644 (lex!1851 thiss!27932 rules!4472 (print!1573 thiss!27932 (singletonSeq!1974 (h!34066 (t!208784 l!6611))))))))))

(assert (= (and d!708706 res!1043333) b!2462001))

(assert (= (and b!2462001 res!1043332) b!2462002))

(assert (= (and d!708706 res!1043334) b!2462003))

(declare-fun m!2831103 () Bool)

(assert (=> d!708706 m!2831103))

(declare-fun m!2831105 () Bool)

(assert (=> d!708706 m!2831105))

(declare-fun m!2831107 () Bool)

(assert (=> d!708706 m!2831107))

(declare-fun m!2831109 () Bool)

(assert (=> d!708706 m!2831109))

(declare-fun m!2831111 () Bool)

(assert (=> d!708706 m!2831111))

(assert (=> d!708706 m!2831103))

(declare-fun m!2831113 () Bool)

(assert (=> d!708706 m!2831113))

(assert (=> d!708706 m!2831103))

(assert (=> d!708706 m!2831107))

(assert (=> d!708706 m!2830509))

(declare-fun m!2831115 () Bool)

(assert (=> b!2462001 m!2831115))

(declare-fun m!2831117 () Bool)

(assert (=> b!2462002 m!2831117))

(assert (=> b!2462003 m!2831103))

(assert (=> b!2462003 m!2831103))

(assert (=> b!2462003 m!2831107))

(assert (=> b!2462003 m!2831107))

(assert (=> b!2462003 m!2831109))

(declare-fun m!2831119 () Bool)

(assert (=> b!2462003 m!2831119))

(assert (=> b!2461811 d!708706))

(declare-fun d!708708 () Bool)

(assert (=> d!708708 (rulesProduceIndividualToken!1791 thiss!27932 rules!4472 (h!34066 l!6611))))

(declare-fun lt!881233 () Unit!41988)

(declare-fun choose!14565 (LexerInterface!4054 List!28764 List!28765 Token!8384) Unit!41988)

(assert (=> d!708708 (= lt!881233 (choose!14565 thiss!27932 rules!4472 l!6611 (h!34066 l!6611)))))

(assert (=> d!708708 (not (isEmpty!16653 rules!4472))))

(assert (=> d!708708 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!652 thiss!27932 rules!4472 l!6611 (h!34066 l!6611)) lt!881233)))

(declare-fun bs!466270 () Bool)

(assert (= bs!466270 d!708708))

(assert (=> bs!466270 m!2830713))

(declare-fun m!2831139 () Bool)

(assert (=> bs!466270 m!2831139))

(assert (=> bs!466270 m!2830509))

(assert (=> b!2461811 d!708708))

(declare-fun d!708712 () Bool)

(assert (=> d!708712 (rulesProduceIndividualToken!1791 thiss!27932 rules!4472 (h!34066 (t!208784 l!6611)))))

(declare-fun lt!881234 () Unit!41988)

(assert (=> d!708712 (= lt!881234 (choose!14565 thiss!27932 rules!4472 l!6611 (h!34066 (t!208784 l!6611))))))

(assert (=> d!708712 (not (isEmpty!16653 rules!4472))))

(assert (=> d!708712 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!652 thiss!27932 rules!4472 l!6611 (h!34066 (t!208784 l!6611))) lt!881234)))

(declare-fun bs!466271 () Bool)

(assert (= bs!466271 d!708712))

(assert (=> bs!466271 m!2830795))

(declare-fun m!2831141 () Bool)

(assert (=> bs!466271 m!2831141))

(assert (=> bs!466271 m!2830509))

(assert (=> b!2461811 d!708712))

(declare-fun d!708714 () Bool)

(declare-fun lt!881236 () Bool)

(declare-fun e!1561608 () Bool)

(assert (=> d!708714 (= lt!881236 e!1561608)))

(declare-fun res!1043346 () Bool)

(assert (=> d!708714 (=> (not res!1043346) (not e!1561608))))

(assert (=> d!708714 (= res!1043346 (= (list!11098 (_1!16644 (lex!1851 thiss!27932 rules!4472 (print!1573 thiss!27932 (singletonSeq!1974 (h!34066 l!6611)))))) (list!11098 (singletonSeq!1974 (h!34066 l!6611)))))))

(declare-fun e!1561607 () Bool)

(assert (=> d!708714 (= lt!881236 e!1561607)))

(declare-fun res!1043345 () Bool)

(assert (=> d!708714 (=> (not res!1043345) (not e!1561607))))

(declare-fun lt!881237 () tuple2!28206)

(assert (=> d!708714 (= res!1043345 (= (size!22306 (_1!16644 lt!881237)) 1))))

(assert (=> d!708714 (= lt!881237 (lex!1851 thiss!27932 rules!4472 (print!1573 thiss!27932 (singletonSeq!1974 (h!34066 l!6611)))))))

(assert (=> d!708714 (not (isEmpty!16653 rules!4472))))

(assert (=> d!708714 (= (rulesProduceIndividualToken!1791 thiss!27932 rules!4472 (h!34066 l!6611)) lt!881236)))

(declare-fun b!2462019 () Bool)

(declare-fun res!1043344 () Bool)

(assert (=> b!2462019 (=> (not res!1043344) (not e!1561607))))

(assert (=> b!2462019 (= res!1043344 (= (apply!6724 (_1!16644 lt!881237) 0) (h!34066 l!6611)))))

(declare-fun b!2462020 () Bool)

(assert (=> b!2462020 (= e!1561607 (isEmpty!16656 (_2!16644 lt!881237)))))

(declare-fun b!2462021 () Bool)

(assert (=> b!2462021 (= e!1561608 (isEmpty!16656 (_2!16644 (lex!1851 thiss!27932 rules!4472 (print!1573 thiss!27932 (singletonSeq!1974 (h!34066 l!6611)))))))))

(assert (= (and d!708714 res!1043345) b!2462019))

(assert (= (and b!2462019 res!1043344) b!2462020))

(assert (= (and d!708714 res!1043346) b!2462021))

(declare-fun m!2831149 () Bool)

(assert (=> d!708714 m!2831149))

(declare-fun m!2831151 () Bool)

(assert (=> d!708714 m!2831151))

(declare-fun m!2831153 () Bool)

(assert (=> d!708714 m!2831153))

(declare-fun m!2831155 () Bool)

(assert (=> d!708714 m!2831155))

(declare-fun m!2831157 () Bool)

(assert (=> d!708714 m!2831157))

(assert (=> d!708714 m!2831149))

(declare-fun m!2831159 () Bool)

(assert (=> d!708714 m!2831159))

(assert (=> d!708714 m!2831149))

(assert (=> d!708714 m!2831153))

(assert (=> d!708714 m!2830509))

(declare-fun m!2831161 () Bool)

(assert (=> b!2462019 m!2831161))

(declare-fun m!2831163 () Bool)

(assert (=> b!2462020 m!2831163))

(assert (=> b!2462021 m!2831149))

(assert (=> b!2462021 m!2831149))

(assert (=> b!2462021 m!2831153))

(assert (=> b!2462021 m!2831153))

(assert (=> b!2462021 m!2831155))

(declare-fun m!2831165 () Bool)

(assert (=> b!2462021 m!2831165))

(assert (=> b!2461811 d!708714))

(assert (=> b!2461795 d!708582))

(declare-fun d!708718 () Bool)

(assert (=> d!708718 (= (list!11099 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (value!142430 t2!67))) (list!11101 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (value!142430 t2!67)))))))

(declare-fun bs!466273 () Bool)

(assert (= bs!466273 d!708718))

(declare-fun m!2831167 () Bool)

(assert (=> bs!466273 m!2831167))

(assert (=> b!2461586 d!708718))

(declare-fun bs!466274 () Bool)

(declare-fun d!708720 () Bool)

(assert (= bs!466274 (and d!708720 d!708604)))

(declare-fun lambda!93154 () Int)

(assert (=> bs!466274 (= (and (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (toChars!6168 (transformation!4457 (h!34065 rules!4472)))) (= (toValue!6309 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (toValue!6309 (transformation!4457 (h!34065 rules!4472))))) (= lambda!93154 lambda!93140))))

(assert (=> d!708720 true))

(assert (=> d!708720 (< (dynLambda!12296 order!15507 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611))))) (dynLambda!12299 order!15511 lambda!93154))))

(assert (=> d!708720 true))

(assert (=> d!708720 (< (dynLambda!12294 order!15503 (toValue!6309 (transformation!4457 (rule!6815 (h!34066 l!6611))))) (dynLambda!12299 order!15511 lambda!93154))))

(assert (=> d!708720 (= (semiInverseModEq!1832 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (toValue!6309 (transformation!4457 (rule!6815 (h!34066 l!6611))))) (Forall!1133 lambda!93154))))

(declare-fun bs!466275 () Bool)

(assert (= bs!466275 d!708720))

(declare-fun m!2831169 () Bool)

(assert (=> bs!466275 m!2831169))

(assert (=> d!708520 d!708720))

(declare-fun bs!466276 () Bool)

(declare-fun d!708722 () Bool)

(assert (= bs!466276 (and d!708722 d!708604)))

(declare-fun lambda!93155 () Int)

(assert (=> bs!466276 (= (and (= (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (toChars!6168 (transformation!4457 (h!34065 rules!4472)))) (= (toValue!6309 (transformation!4457 (rule!6815 t2!67))) (toValue!6309 (transformation!4457 (h!34065 rules!4472))))) (= lambda!93155 lambda!93140))))

(declare-fun bs!466277 () Bool)

(assert (= bs!466277 (and d!708722 d!708720)))

(assert (=> bs!466277 (= (and (= (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611))))) (= (toValue!6309 (transformation!4457 (rule!6815 t2!67))) (toValue!6309 (transformation!4457 (rule!6815 (h!34066 l!6611)))))) (= lambda!93155 lambda!93154))))

(assert (=> d!708722 true))

(assert (=> d!708722 (< (dynLambda!12296 order!15507 (toChars!6168 (transformation!4457 (rule!6815 t2!67)))) (dynLambda!12299 order!15511 lambda!93155))))

(assert (=> d!708722 true))

(assert (=> d!708722 (< (dynLambda!12294 order!15503 (toValue!6309 (transformation!4457 (rule!6815 t2!67)))) (dynLambda!12299 order!15511 lambda!93155))))

(assert (=> d!708722 (= (semiInverseModEq!1832 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (toValue!6309 (transformation!4457 (rule!6815 t2!67)))) (Forall!1133 lambda!93155))))

(declare-fun bs!466278 () Bool)

(assert (= bs!466278 d!708722))

(declare-fun m!2831171 () Bool)

(assert (=> bs!466278 m!2831171))

(assert (=> d!708524 d!708722))

(declare-fun b!2462024 () Bool)

(declare-fun e!1561612 () Bool)

(assert (=> b!2462024 (= e!1561612 (inv!16 (value!142430 (h!34066 (t!208784 l!6611)))))))

(declare-fun d!708724 () Bool)

(declare-fun c!392898 () Bool)

(assert (=> d!708724 (= c!392898 ((_ is IntegerValue!13929) (value!142430 (h!34066 (t!208784 l!6611)))))))

(assert (=> d!708724 (= (inv!21 (value!142430 (h!34066 (t!208784 l!6611)))) e!1561612)))

(declare-fun b!2462025 () Bool)

(declare-fun e!1561613 () Bool)

(assert (=> b!2462025 (= e!1561612 e!1561613)))

(declare-fun c!392897 () Bool)

(assert (=> b!2462025 (= c!392897 ((_ is IntegerValue!13930) (value!142430 (h!34066 (t!208784 l!6611)))))))

(declare-fun b!2462026 () Bool)

(declare-fun e!1561611 () Bool)

(assert (=> b!2462026 (= e!1561611 (inv!15 (value!142430 (h!34066 (t!208784 l!6611)))))))

(declare-fun b!2462027 () Bool)

(assert (=> b!2462027 (= e!1561613 (inv!17 (value!142430 (h!34066 (t!208784 l!6611)))))))

(declare-fun b!2462028 () Bool)

(declare-fun res!1043349 () Bool)

(assert (=> b!2462028 (=> res!1043349 e!1561611)))

(assert (=> b!2462028 (= res!1043349 (not ((_ is IntegerValue!13931) (value!142430 (h!34066 (t!208784 l!6611))))))))

(assert (=> b!2462028 (= e!1561613 e!1561611)))

(assert (= (and d!708724 c!392898) b!2462024))

(assert (= (and d!708724 (not c!392898)) b!2462025))

(assert (= (and b!2462025 c!392897) b!2462027))

(assert (= (and b!2462025 (not c!392897)) b!2462028))

(assert (= (and b!2462028 (not res!1043349)) b!2462026))

(declare-fun m!2831173 () Bool)

(assert (=> b!2462024 m!2831173))

(declare-fun m!2831175 () Bool)

(assert (=> b!2462026 m!2831175))

(declare-fun m!2831177 () Bool)

(assert (=> b!2462027 m!2831177))

(assert (=> b!2461848 d!708724))

(assert (=> b!2461679 d!708714))

(declare-fun bs!466279 () Bool)

(declare-fun d!708726 () Bool)

(assert (= bs!466279 (and d!708726 d!708604)))

(declare-fun lambda!93156 () Int)

(assert (=> bs!466279 (= (and (= (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (toChars!6168 (transformation!4457 (h!34065 rules!4472)))) (= (toValue!6309 (transformation!4457 (rule!6815 t1!67))) (toValue!6309 (transformation!4457 (h!34065 rules!4472))))) (= lambda!93156 lambda!93140))))

(declare-fun bs!466280 () Bool)

(assert (= bs!466280 (and d!708726 d!708720)))

(assert (=> bs!466280 (= (and (= (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611))))) (= (toValue!6309 (transformation!4457 (rule!6815 t1!67))) (toValue!6309 (transformation!4457 (rule!6815 (h!34066 l!6611)))))) (= lambda!93156 lambda!93154))))

(declare-fun bs!466281 () Bool)

(assert (= bs!466281 (and d!708726 d!708722)))

(assert (=> bs!466281 (= (and (= (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (toChars!6168 (transformation!4457 (rule!6815 t2!67)))) (= (toValue!6309 (transformation!4457 (rule!6815 t1!67))) (toValue!6309 (transformation!4457 (rule!6815 t2!67))))) (= lambda!93156 lambda!93155))))

(assert (=> d!708726 true))

(assert (=> d!708726 (< (dynLambda!12296 order!15507 (toChars!6168 (transformation!4457 (rule!6815 t1!67)))) (dynLambda!12299 order!15511 lambda!93156))))

(assert (=> d!708726 true))

(assert (=> d!708726 (< (dynLambda!12294 order!15503 (toValue!6309 (transformation!4457 (rule!6815 t1!67)))) (dynLambda!12299 order!15511 lambda!93156))))

(assert (=> d!708726 (= (semiInverseModEq!1832 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (toValue!6309 (transformation!4457 (rule!6815 t1!67)))) (Forall!1133 lambda!93156))))

(declare-fun bs!466282 () Bool)

(assert (= bs!466282 d!708726))

(declare-fun m!2831195 () Bool)

(assert (=> bs!466282 m!2831195))

(assert (=> d!708546 d!708726))

(declare-fun bs!466283 () Bool)

(declare-fun d!708732 () Bool)

(assert (= bs!466283 (and d!708732 d!708586)))

(declare-fun lambda!93157 () Int)

(assert (=> bs!466283 (= (= (toValue!6309 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (toValue!6309 (transformation!4457 (rule!6815 t2!67)))) (= lambda!93157 lambda!93137))))

(declare-fun bs!466284 () Bool)

(assert (= bs!466284 (and d!708732 d!708652)))

(assert (=> bs!466284 (= (= (toValue!6309 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (toValue!6309 (transformation!4457 (rule!6815 t1!67)))) (= lambda!93157 lambda!93146))))

(declare-fun bs!466285 () Bool)

(assert (= bs!466285 (and d!708732 d!708666)))

(assert (=> bs!466285 (= (= (toValue!6309 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (toValue!6309 (transformation!4457 (h!34065 rules!4472)))) (= lambda!93157 lambda!93147))))

(assert (=> d!708732 true))

(assert (=> d!708732 (< (dynLambda!12294 order!15503 (toValue!6309 (transformation!4457 (rule!6815 (h!34066 l!6611))))) (dynLambda!12298 order!15509 lambda!93157))))

(assert (=> d!708732 (= (equivClasses!1743 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (toValue!6309 (transformation!4457 (rule!6815 (h!34066 l!6611))))) (Forall2!742 lambda!93157))))

(declare-fun bs!466286 () Bool)

(assert (= bs!466286 d!708732))

(declare-fun m!2831197 () Bool)

(assert (=> bs!466286 m!2831197))

(assert (=> b!2461769 d!708732))

(declare-fun d!708736 () Bool)

(declare-fun c!392900 () Bool)

(assert (=> d!708736 (= c!392900 ((_ is Node!9161) (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (value!142430 t1!67)))))))

(declare-fun e!1561617 () Bool)

(assert (=> d!708736 (= (inv!38746 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (value!142430 t1!67)))) e!1561617)))

(declare-fun b!2462033 () Bool)

(assert (=> b!2462033 (= e!1561617 (inv!38748 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (value!142430 t1!67)))))))

(declare-fun b!2462034 () Bool)

(declare-fun e!1561618 () Bool)

(assert (=> b!2462034 (= e!1561617 e!1561618)))

(declare-fun res!1043352 () Bool)

(assert (=> b!2462034 (= res!1043352 (not ((_ is Leaf!13697) (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (value!142430 t1!67))))))))

(assert (=> b!2462034 (=> res!1043352 e!1561618)))

(declare-fun b!2462035 () Bool)

(assert (=> b!2462035 (= e!1561618 (inv!38749 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (value!142430 t1!67)))))))

(assert (= (and d!708736 c!392900) b!2462033))

(assert (= (and d!708736 (not c!392900)) b!2462034))

(assert (= (and b!2462034 (not res!1043352)) b!2462035))

(declare-fun m!2831201 () Bool)

(assert (=> b!2462033 m!2831201))

(declare-fun m!2831203 () Bool)

(assert (=> b!2462035 m!2831203))

(assert (=> b!2461595 d!708736))

(declare-fun d!708740 () Bool)

(declare-fun lt!881242 () Bool)

(assert (=> d!708740 (= lt!881242 (select (content!3947 l!6611) lt!881130))))

(declare-fun e!1561619 () Bool)

(assert (=> d!708740 (= lt!881242 e!1561619)))

(declare-fun res!1043354 () Bool)

(assert (=> d!708740 (=> (not res!1043354) (not e!1561619))))

(assert (=> d!708740 (= res!1043354 ((_ is Cons!28665) l!6611))))

(assert (=> d!708740 (= (contains!4890 l!6611 lt!881130) lt!881242)))

(declare-fun b!2462036 () Bool)

(declare-fun e!1561620 () Bool)

(assert (=> b!2462036 (= e!1561619 e!1561620)))

(declare-fun res!1043353 () Bool)

(assert (=> b!2462036 (=> res!1043353 e!1561620)))

(assert (=> b!2462036 (= res!1043353 (= (h!34066 l!6611) lt!881130))))

(declare-fun b!2462037 () Bool)

(assert (=> b!2462037 (= e!1561620 (contains!4890 (t!208784 l!6611) lt!881130))))

(assert (= (and d!708740 res!1043354) b!2462036))

(assert (= (and b!2462036 (not res!1043353)) b!2462037))

(assert (=> d!708740 m!2831021))

(declare-fun m!2831205 () Bool)

(assert (=> d!708740 m!2831205))

(declare-fun m!2831207 () Bool)

(assert (=> b!2462037 m!2831207))

(assert (=> d!708516 d!708740))

(declare-fun d!708742 () Bool)

(assert (=> d!708742 (= (inv!16 (value!142430 (h!34066 l!6611))) (= (charsToInt!0 (text!32948 (value!142430 (h!34066 l!6611)))) (value!142421 (value!142430 (h!34066 l!6611)))))))

(declare-fun bs!466289 () Bool)

(assert (= bs!466289 d!708742))

(declare-fun m!2831209 () Bool)

(assert (=> bs!466289 m!2831209))

(assert (=> b!2461801 d!708742))

(declare-fun d!708744 () Bool)

(assert (=> d!708744 (= (inv!38747 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (value!142430 (h!34066 l!6611)))) (isBalanced!2794 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (value!142430 (h!34066 l!6611))))))))

(declare-fun bs!466290 () Bool)

(assert (= bs!466290 d!708744))

(declare-fun m!2831211 () Bool)

(assert (=> bs!466290 m!2831211))

(assert (=> tb!138933 d!708744))

(declare-fun e!1561621 () Bool)

(assert (=> b!2461853 (= tp!783935 e!1561621)))

(declare-fun b!2462039 () Bool)

(declare-fun tp!783961 () Bool)

(declare-fun tp!783962 () Bool)

(assert (=> b!2462039 (= e!1561621 (and tp!783961 tp!783962))))

(declare-fun b!2462040 () Bool)

(declare-fun tp!783960 () Bool)

(assert (=> b!2462040 (= e!1561621 tp!783960)))

(declare-fun b!2462041 () Bool)

(declare-fun tp!783958 () Bool)

(declare-fun tp!783959 () Bool)

(assert (=> b!2462041 (= e!1561621 (and tp!783958 tp!783959))))

(declare-fun b!2462038 () Bool)

(assert (=> b!2462038 (= e!1561621 tp_is_empty!11927)))

(assert (= (and b!2461853 ((_ is ElementMatch!7245) (reg!7574 (regex!4457 (h!34065 rules!4472))))) b!2462038))

(assert (= (and b!2461853 ((_ is Concat!11889) (reg!7574 (regex!4457 (h!34065 rules!4472))))) b!2462039))

(assert (= (and b!2461853 ((_ is Star!7245) (reg!7574 (regex!4457 (h!34065 rules!4472))))) b!2462040))

(assert (= (and b!2461853 ((_ is Union!7245) (reg!7574 (regex!4457 (h!34065 rules!4472))))) b!2462041))

(declare-fun e!1561622 () Bool)

(assert (=> b!2461825 (= tp!783906 e!1561622)))

(declare-fun b!2462043 () Bool)

(declare-fun tp!783966 () Bool)

(declare-fun tp!783967 () Bool)

(assert (=> b!2462043 (= e!1561622 (and tp!783966 tp!783967))))

(declare-fun b!2462044 () Bool)

(declare-fun tp!783965 () Bool)

(assert (=> b!2462044 (= e!1561622 tp!783965)))

(declare-fun b!2462045 () Bool)

(declare-fun tp!783963 () Bool)

(declare-fun tp!783964 () Bool)

(assert (=> b!2462045 (= e!1561622 (and tp!783963 tp!783964))))

(declare-fun b!2462042 () Bool)

(assert (=> b!2462042 (= e!1561622 tp_is_empty!11927)))

(assert (= (and b!2461825 ((_ is ElementMatch!7245) (reg!7574 (regex!4457 (rule!6815 (h!34066 l!6611)))))) b!2462042))

(assert (= (and b!2461825 ((_ is Concat!11889) (reg!7574 (regex!4457 (rule!6815 (h!34066 l!6611)))))) b!2462043))

(assert (= (and b!2461825 ((_ is Star!7245) (reg!7574 (regex!4457 (rule!6815 (h!34066 l!6611)))))) b!2462044))

(assert (= (and b!2461825 ((_ is Union!7245) (reg!7574 (regex!4457 (rule!6815 (h!34066 l!6611)))))) b!2462045))

(declare-fun e!1561623 () Bool)

(assert (=> b!2461852 (= tp!783936 e!1561623)))

(declare-fun b!2462047 () Bool)

(declare-fun tp!783971 () Bool)

(declare-fun tp!783972 () Bool)

(assert (=> b!2462047 (= e!1561623 (and tp!783971 tp!783972))))

(declare-fun b!2462048 () Bool)

(declare-fun tp!783970 () Bool)

(assert (=> b!2462048 (= e!1561623 tp!783970)))

(declare-fun b!2462049 () Bool)

(declare-fun tp!783968 () Bool)

(declare-fun tp!783969 () Bool)

(assert (=> b!2462049 (= e!1561623 (and tp!783968 tp!783969))))

(declare-fun b!2462046 () Bool)

(assert (=> b!2462046 (= e!1561623 tp_is_empty!11927)))

(assert (= (and b!2461852 ((_ is ElementMatch!7245) (regOne!15002 (regex!4457 (h!34065 rules!4472))))) b!2462046))

(assert (= (and b!2461852 ((_ is Concat!11889) (regOne!15002 (regex!4457 (h!34065 rules!4472))))) b!2462047))

(assert (= (and b!2461852 ((_ is Star!7245) (regOne!15002 (regex!4457 (h!34065 rules!4472))))) b!2462048))

(assert (= (and b!2461852 ((_ is Union!7245) (regOne!15002 (regex!4457 (h!34065 rules!4472))))) b!2462049))

(declare-fun e!1561624 () Bool)

(assert (=> b!2461852 (= tp!783937 e!1561624)))

(declare-fun b!2462051 () Bool)

(declare-fun tp!783976 () Bool)

(declare-fun tp!783977 () Bool)

(assert (=> b!2462051 (= e!1561624 (and tp!783976 tp!783977))))

(declare-fun b!2462052 () Bool)

(declare-fun tp!783975 () Bool)

(assert (=> b!2462052 (= e!1561624 tp!783975)))

(declare-fun b!2462053 () Bool)

(declare-fun tp!783973 () Bool)

(declare-fun tp!783974 () Bool)

(assert (=> b!2462053 (= e!1561624 (and tp!783973 tp!783974))))

(declare-fun b!2462050 () Bool)

(assert (=> b!2462050 (= e!1561624 tp_is_empty!11927)))

(assert (= (and b!2461852 ((_ is ElementMatch!7245) (regTwo!15002 (regex!4457 (h!34065 rules!4472))))) b!2462050))

(assert (= (and b!2461852 ((_ is Concat!11889) (regTwo!15002 (regex!4457 (h!34065 rules!4472))))) b!2462051))

(assert (= (and b!2461852 ((_ is Star!7245) (regTwo!15002 (regex!4457 (h!34065 rules!4472))))) b!2462052))

(assert (= (and b!2461852 ((_ is Union!7245) (regTwo!15002 (regex!4457 (h!34065 rules!4472))))) b!2462053))

(declare-fun e!1561625 () Bool)

(assert (=> b!2461824 (= tp!783907 e!1561625)))

(declare-fun b!2462055 () Bool)

(declare-fun tp!783981 () Bool)

(declare-fun tp!783982 () Bool)

(assert (=> b!2462055 (= e!1561625 (and tp!783981 tp!783982))))

(declare-fun b!2462056 () Bool)

(declare-fun tp!783980 () Bool)

(assert (=> b!2462056 (= e!1561625 tp!783980)))

(declare-fun b!2462057 () Bool)

(declare-fun tp!783978 () Bool)

(declare-fun tp!783979 () Bool)

(assert (=> b!2462057 (= e!1561625 (and tp!783978 tp!783979))))

(declare-fun b!2462054 () Bool)

(assert (=> b!2462054 (= e!1561625 tp_is_empty!11927)))

(assert (= (and b!2461824 ((_ is ElementMatch!7245) (regOne!15002 (regex!4457 (rule!6815 (h!34066 l!6611)))))) b!2462054))

(assert (= (and b!2461824 ((_ is Concat!11889) (regOne!15002 (regex!4457 (rule!6815 (h!34066 l!6611)))))) b!2462055))

(assert (= (and b!2461824 ((_ is Star!7245) (regOne!15002 (regex!4457 (rule!6815 (h!34066 l!6611)))))) b!2462056))

(assert (= (and b!2461824 ((_ is Union!7245) (regOne!15002 (regex!4457 (rule!6815 (h!34066 l!6611)))))) b!2462057))

(declare-fun e!1561626 () Bool)

(assert (=> b!2461824 (= tp!783908 e!1561626)))

(declare-fun b!2462059 () Bool)

(declare-fun tp!783986 () Bool)

(declare-fun tp!783987 () Bool)

(assert (=> b!2462059 (= e!1561626 (and tp!783986 tp!783987))))

(declare-fun b!2462060 () Bool)

(declare-fun tp!783985 () Bool)

(assert (=> b!2462060 (= e!1561626 tp!783985)))

(declare-fun b!2462061 () Bool)

(declare-fun tp!783983 () Bool)

(declare-fun tp!783984 () Bool)

(assert (=> b!2462061 (= e!1561626 (and tp!783983 tp!783984))))

(declare-fun b!2462058 () Bool)

(assert (=> b!2462058 (= e!1561626 tp_is_empty!11927)))

(assert (= (and b!2461824 ((_ is ElementMatch!7245) (regTwo!15002 (regex!4457 (rule!6815 (h!34066 l!6611)))))) b!2462058))

(assert (= (and b!2461824 ((_ is Concat!11889) (regTwo!15002 (regex!4457 (rule!6815 (h!34066 l!6611)))))) b!2462059))

(assert (= (and b!2461824 ((_ is Star!7245) (regTwo!15002 (regex!4457 (rule!6815 (h!34066 l!6611)))))) b!2462060))

(assert (= (and b!2461824 ((_ is Union!7245) (regTwo!15002 (regex!4457 (rule!6815 (h!34066 l!6611)))))) b!2462061))

(declare-fun e!1561627 () Bool)

(assert (=> b!2461854 (= tp!783933 e!1561627)))

(declare-fun b!2462065 () Bool)

(declare-fun tp!783991 () Bool)

(declare-fun tp!783992 () Bool)

(assert (=> b!2462065 (= e!1561627 (and tp!783991 tp!783992))))

(declare-fun b!2462066 () Bool)

(declare-fun tp!783990 () Bool)

(assert (=> b!2462066 (= e!1561627 tp!783990)))

(declare-fun b!2462067 () Bool)

(declare-fun tp!783988 () Bool)

(declare-fun tp!783989 () Bool)

(assert (=> b!2462067 (= e!1561627 (and tp!783988 tp!783989))))

(declare-fun b!2462064 () Bool)

(assert (=> b!2462064 (= e!1561627 tp_is_empty!11927)))

(assert (= (and b!2461854 ((_ is ElementMatch!7245) (regOne!15003 (regex!4457 (h!34065 rules!4472))))) b!2462064))

(assert (= (and b!2461854 ((_ is Concat!11889) (regOne!15003 (regex!4457 (h!34065 rules!4472))))) b!2462065))

(assert (= (and b!2461854 ((_ is Star!7245) (regOne!15003 (regex!4457 (h!34065 rules!4472))))) b!2462066))

(assert (= (and b!2461854 ((_ is Union!7245) (regOne!15003 (regex!4457 (h!34065 rules!4472))))) b!2462067))

(declare-fun e!1561632 () Bool)

(assert (=> b!2461854 (= tp!783934 e!1561632)))

(declare-fun b!2462073 () Bool)

(declare-fun tp!783996 () Bool)

(declare-fun tp!783997 () Bool)

(assert (=> b!2462073 (= e!1561632 (and tp!783996 tp!783997))))

(declare-fun b!2462074 () Bool)

(declare-fun tp!783995 () Bool)

(assert (=> b!2462074 (= e!1561632 tp!783995)))

(declare-fun b!2462075 () Bool)

(declare-fun tp!783993 () Bool)

(declare-fun tp!783994 () Bool)

(assert (=> b!2462075 (= e!1561632 (and tp!783993 tp!783994))))

(declare-fun b!2462072 () Bool)

(assert (=> b!2462072 (= e!1561632 tp_is_empty!11927)))

(assert (= (and b!2461854 ((_ is ElementMatch!7245) (regTwo!15003 (regex!4457 (h!34065 rules!4472))))) b!2462072))

(assert (= (and b!2461854 ((_ is Concat!11889) (regTwo!15003 (regex!4457 (h!34065 rules!4472))))) b!2462073))

(assert (= (and b!2461854 ((_ is Star!7245) (regTwo!15003 (regex!4457 (h!34065 rules!4472))))) b!2462074))

(assert (= (and b!2461854 ((_ is Union!7245) (regTwo!15003 (regex!4457 (h!34065 rules!4472))))) b!2462075))

(declare-fun e!1561633 () Bool)

(assert (=> b!2461826 (= tp!783904 e!1561633)))

(declare-fun b!2462077 () Bool)

(declare-fun tp!784001 () Bool)

(declare-fun tp!784002 () Bool)

(assert (=> b!2462077 (= e!1561633 (and tp!784001 tp!784002))))

(declare-fun b!2462078 () Bool)

(declare-fun tp!784000 () Bool)

(assert (=> b!2462078 (= e!1561633 tp!784000)))

(declare-fun b!2462079 () Bool)

(declare-fun tp!783998 () Bool)

(declare-fun tp!783999 () Bool)

(assert (=> b!2462079 (= e!1561633 (and tp!783998 tp!783999))))

(declare-fun b!2462076 () Bool)

(assert (=> b!2462076 (= e!1561633 tp_is_empty!11927)))

(assert (= (and b!2461826 ((_ is ElementMatch!7245) (regOne!15003 (regex!4457 (rule!6815 (h!34066 l!6611)))))) b!2462076))

(assert (= (and b!2461826 ((_ is Concat!11889) (regOne!15003 (regex!4457 (rule!6815 (h!34066 l!6611)))))) b!2462077))

(assert (= (and b!2461826 ((_ is Star!7245) (regOne!15003 (regex!4457 (rule!6815 (h!34066 l!6611)))))) b!2462078))

(assert (= (and b!2461826 ((_ is Union!7245) (regOne!15003 (regex!4457 (rule!6815 (h!34066 l!6611)))))) b!2462079))

(declare-fun e!1561634 () Bool)

(assert (=> b!2461826 (= tp!783905 e!1561634)))

(declare-fun b!2462081 () Bool)

(declare-fun tp!784006 () Bool)

(declare-fun tp!784007 () Bool)

(assert (=> b!2462081 (= e!1561634 (and tp!784006 tp!784007))))

(declare-fun b!2462082 () Bool)

(declare-fun tp!784005 () Bool)

(assert (=> b!2462082 (= e!1561634 tp!784005)))

(declare-fun b!2462083 () Bool)

(declare-fun tp!784003 () Bool)

(declare-fun tp!784004 () Bool)

(assert (=> b!2462083 (= e!1561634 (and tp!784003 tp!784004))))

(declare-fun b!2462080 () Bool)

(assert (=> b!2462080 (= e!1561634 tp_is_empty!11927)))

(assert (= (and b!2461826 ((_ is ElementMatch!7245) (regTwo!15003 (regex!4457 (rule!6815 (h!34066 l!6611)))))) b!2462080))

(assert (= (and b!2461826 ((_ is Concat!11889) (regTwo!15003 (regex!4457 (rule!6815 (h!34066 l!6611)))))) b!2462081))

(assert (= (and b!2461826 ((_ is Star!7245) (regTwo!15003 (regex!4457 (rule!6815 (h!34066 l!6611)))))) b!2462082))

(assert (= (and b!2461826 ((_ is Union!7245) (regTwo!15003 (regex!4457 (rule!6815 (h!34066 l!6611)))))) b!2462083))

(declare-fun e!1561635 () Bool)

(assert (=> b!2461859 (= tp!783939 e!1561635)))

(declare-fun b!2462085 () Bool)

(declare-fun tp!784011 () Bool)

(declare-fun tp!784012 () Bool)

(assert (=> b!2462085 (= e!1561635 (and tp!784011 tp!784012))))

(declare-fun b!2462086 () Bool)

(declare-fun tp!784010 () Bool)

(assert (=> b!2462086 (= e!1561635 tp!784010)))

(declare-fun b!2462087 () Bool)

(declare-fun tp!784008 () Bool)

(declare-fun tp!784009 () Bool)

(assert (=> b!2462087 (= e!1561635 (and tp!784008 tp!784009))))

(declare-fun b!2462084 () Bool)

(assert (=> b!2462084 (= e!1561635 tp_is_empty!11927)))

(assert (= (and b!2461859 ((_ is ElementMatch!7245) (regOne!15003 (regex!4457 (rule!6815 t1!67))))) b!2462084))

(assert (= (and b!2461859 ((_ is Concat!11889) (regOne!15003 (regex!4457 (rule!6815 t1!67))))) b!2462085))

(assert (= (and b!2461859 ((_ is Star!7245) (regOne!15003 (regex!4457 (rule!6815 t1!67))))) b!2462086))

(assert (= (and b!2461859 ((_ is Union!7245) (regOne!15003 (regex!4457 (rule!6815 t1!67))))) b!2462087))

(declare-fun e!1561636 () Bool)

(assert (=> b!2461859 (= tp!783940 e!1561636)))

(declare-fun b!2462089 () Bool)

(declare-fun tp!784016 () Bool)

(declare-fun tp!784017 () Bool)

(assert (=> b!2462089 (= e!1561636 (and tp!784016 tp!784017))))

(declare-fun b!2462090 () Bool)

(declare-fun tp!784015 () Bool)

(assert (=> b!2462090 (= e!1561636 tp!784015)))

(declare-fun b!2462091 () Bool)

(declare-fun tp!784013 () Bool)

(declare-fun tp!784014 () Bool)

(assert (=> b!2462091 (= e!1561636 (and tp!784013 tp!784014))))

(declare-fun b!2462088 () Bool)

(assert (=> b!2462088 (= e!1561636 tp_is_empty!11927)))

(assert (= (and b!2461859 ((_ is ElementMatch!7245) (regTwo!15003 (regex!4457 (rule!6815 t1!67))))) b!2462088))

(assert (= (and b!2461859 ((_ is Concat!11889) (regTwo!15003 (regex!4457 (rule!6815 t1!67))))) b!2462089))

(assert (= (and b!2461859 ((_ is Star!7245) (regTwo!15003 (regex!4457 (rule!6815 t1!67))))) b!2462090))

(assert (= (and b!2461859 ((_ is Union!7245) (regTwo!15003 (regex!4457 (rule!6815 t1!67))))) b!2462091))

(declare-fun e!1561639 () Bool)

(assert (=> b!2461849 (= tp!783928 e!1561639)))

(declare-fun b!2462096 () Bool)

(declare-fun tp!784021 () Bool)

(declare-fun tp!784022 () Bool)

(assert (=> b!2462096 (= e!1561639 (and tp!784021 tp!784022))))

(declare-fun b!2462097 () Bool)

(declare-fun tp!784020 () Bool)

(assert (=> b!2462097 (= e!1561639 tp!784020)))

(declare-fun b!2462098 () Bool)

(declare-fun tp!784018 () Bool)

(declare-fun tp!784019 () Bool)

(assert (=> b!2462098 (= e!1561639 (and tp!784018 tp!784019))))

(declare-fun b!2462095 () Bool)

(assert (=> b!2462095 (= e!1561639 tp_is_empty!11927)))

(assert (= (and b!2461849 ((_ is ElementMatch!7245) (regex!4457 (rule!6815 (h!34066 (t!208784 l!6611)))))) b!2462095))

(assert (= (and b!2461849 ((_ is Concat!11889) (regex!4457 (rule!6815 (h!34066 (t!208784 l!6611)))))) b!2462096))

(assert (= (and b!2461849 ((_ is Star!7245) (regex!4457 (rule!6815 (h!34066 (t!208784 l!6611)))))) b!2462097))

(assert (= (and b!2461849 ((_ is Union!7245) (regex!4457 (rule!6815 (h!34066 (t!208784 l!6611)))))) b!2462098))

(declare-fun e!1561640 () Bool)

(assert (=> b!2461858 (= tp!783941 e!1561640)))

(declare-fun b!2462100 () Bool)

(declare-fun tp!784026 () Bool)

(declare-fun tp!784027 () Bool)

(assert (=> b!2462100 (= e!1561640 (and tp!784026 tp!784027))))

(declare-fun b!2462101 () Bool)

(declare-fun tp!784025 () Bool)

(assert (=> b!2462101 (= e!1561640 tp!784025)))

(declare-fun b!2462102 () Bool)

(declare-fun tp!784023 () Bool)

(declare-fun tp!784024 () Bool)

(assert (=> b!2462102 (= e!1561640 (and tp!784023 tp!784024))))

(declare-fun b!2462099 () Bool)

(assert (=> b!2462099 (= e!1561640 tp_is_empty!11927)))

(assert (= (and b!2461858 ((_ is ElementMatch!7245) (reg!7574 (regex!4457 (rule!6815 t1!67))))) b!2462099))

(assert (= (and b!2461858 ((_ is Concat!11889) (reg!7574 (regex!4457 (rule!6815 t1!67))))) b!2462100))

(assert (= (and b!2461858 ((_ is Star!7245) (reg!7574 (regex!4457 (rule!6815 t1!67))))) b!2462101))

(assert (= (and b!2461858 ((_ is Union!7245) (reg!7574 (regex!4457 (rule!6815 t1!67))))) b!2462102))

(declare-fun e!1561642 () Bool)

(assert (=> b!2461869 (= tp!783954 e!1561642)))

(declare-fun b!2462106 () Bool)

(declare-fun tp!784031 () Bool)

(declare-fun tp!784032 () Bool)

(assert (=> b!2462106 (= e!1561642 (and tp!784031 tp!784032))))

(declare-fun b!2462107 () Bool)

(declare-fun tp!784030 () Bool)

(assert (=> b!2462107 (= e!1561642 tp!784030)))

(declare-fun b!2462108 () Bool)

(declare-fun tp!784028 () Bool)

(declare-fun tp!784029 () Bool)

(assert (=> b!2462108 (= e!1561642 (and tp!784028 tp!784029))))

(declare-fun b!2462105 () Bool)

(assert (=> b!2462105 (= e!1561642 tp_is_empty!11927)))

(assert (= (and b!2461869 ((_ is ElementMatch!7245) (regex!4457 (h!34065 (t!208783 rules!4472))))) b!2462105))

(assert (= (and b!2461869 ((_ is Concat!11889) (regex!4457 (h!34065 (t!208783 rules!4472))))) b!2462106))

(assert (= (and b!2461869 ((_ is Star!7245) (regex!4457 (h!34065 (t!208783 rules!4472))))) b!2462107))

(assert (= (and b!2461869 ((_ is Union!7245) (regex!4457 (h!34065 (t!208783 rules!4472))))) b!2462108))

(declare-fun e!1561645 () Bool)

(assert (=> b!2461829 (= tp!783911 e!1561645)))

(declare-fun b!2462113 () Bool)

(declare-fun tp!784036 () Bool)

(declare-fun tp!784037 () Bool)

(assert (=> b!2462113 (= e!1561645 (and tp!784036 tp!784037))))

(declare-fun b!2462114 () Bool)

(declare-fun tp!784035 () Bool)

(assert (=> b!2462114 (= e!1561645 tp!784035)))

(declare-fun b!2462115 () Bool)

(declare-fun tp!784033 () Bool)

(declare-fun tp!784034 () Bool)

(assert (=> b!2462115 (= e!1561645 (and tp!784033 tp!784034))))

(declare-fun b!2462112 () Bool)

(assert (=> b!2462112 (= e!1561645 tp_is_empty!11927)))

(assert (= (and b!2461829 ((_ is ElementMatch!7245) (reg!7574 (regex!4457 (rule!6815 t2!67))))) b!2462112))

(assert (= (and b!2461829 ((_ is Concat!11889) (reg!7574 (regex!4457 (rule!6815 t2!67))))) b!2462113))

(assert (= (and b!2461829 ((_ is Star!7245) (reg!7574 (regex!4457 (rule!6815 t2!67))))) b!2462114))

(assert (= (and b!2461829 ((_ is Union!7245) (reg!7574 (regex!4457 (rule!6815 t2!67))))) b!2462115))

(declare-fun e!1561646 () Bool)

(assert (=> b!2461830 (= tp!783909 e!1561646)))

(declare-fun b!2462117 () Bool)

(declare-fun tp!784041 () Bool)

(declare-fun tp!784042 () Bool)

(assert (=> b!2462117 (= e!1561646 (and tp!784041 tp!784042))))

(declare-fun b!2462118 () Bool)

(declare-fun tp!784040 () Bool)

(assert (=> b!2462118 (= e!1561646 tp!784040)))

(declare-fun b!2462119 () Bool)

(declare-fun tp!784038 () Bool)

(declare-fun tp!784039 () Bool)

(assert (=> b!2462119 (= e!1561646 (and tp!784038 tp!784039))))

(declare-fun b!2462116 () Bool)

(assert (=> b!2462116 (= e!1561646 tp_is_empty!11927)))

(assert (= (and b!2461830 ((_ is ElementMatch!7245) (regOne!15003 (regex!4457 (rule!6815 t2!67))))) b!2462116))

(assert (= (and b!2461830 ((_ is Concat!11889) (regOne!15003 (regex!4457 (rule!6815 t2!67))))) b!2462117))

(assert (= (and b!2461830 ((_ is Star!7245) (regOne!15003 (regex!4457 (rule!6815 t2!67))))) b!2462118))

(assert (= (and b!2461830 ((_ is Union!7245) (regOne!15003 (regex!4457 (rule!6815 t2!67))))) b!2462119))

(declare-fun e!1561647 () Bool)

(assert (=> b!2461830 (= tp!783910 e!1561647)))

(declare-fun b!2462121 () Bool)

(declare-fun tp!784046 () Bool)

(declare-fun tp!784047 () Bool)

(assert (=> b!2462121 (= e!1561647 (and tp!784046 tp!784047))))

(declare-fun b!2462122 () Bool)

(declare-fun tp!784045 () Bool)

(assert (=> b!2462122 (= e!1561647 tp!784045)))

(declare-fun b!2462123 () Bool)

(declare-fun tp!784043 () Bool)

(declare-fun tp!784044 () Bool)

(assert (=> b!2462123 (= e!1561647 (and tp!784043 tp!784044))))

(declare-fun b!2462120 () Bool)

(assert (=> b!2462120 (= e!1561647 tp_is_empty!11927)))

(assert (= (and b!2461830 ((_ is ElementMatch!7245) (regTwo!15003 (regex!4457 (rule!6815 t2!67))))) b!2462120))

(assert (= (and b!2461830 ((_ is Concat!11889) (regTwo!15003 (regex!4457 (rule!6815 t2!67))))) b!2462121))

(assert (= (and b!2461830 ((_ is Star!7245) (regTwo!15003 (regex!4457 (rule!6815 t2!67))))) b!2462122))

(assert (= (and b!2461830 ((_ is Union!7245) (regTwo!15003 (regex!4457 (rule!6815 t2!67))))) b!2462123))

(declare-fun b!2462126 () Bool)

(declare-fun e!1561650 () Bool)

(assert (=> b!2462126 (= e!1561650 true)))

(declare-fun b!2462125 () Bool)

(declare-fun e!1561649 () Bool)

(assert (=> b!2462125 (= e!1561649 e!1561650)))

(declare-fun b!2462124 () Bool)

(declare-fun e!1561648 () Bool)

(assert (=> b!2462124 (= e!1561648 e!1561649)))

(assert (=> b!2461695 e!1561648))

(assert (= b!2462125 b!2462126))

(assert (= b!2462124 b!2462125))

(assert (= (and b!2461695 ((_ is Cons!28664) (t!208783 rules!4472))) b!2462124))

(assert (=> b!2462126 (< (dynLambda!12294 order!15503 (toValue!6309 (transformation!4457 (h!34065 (t!208783 rules!4472))))) (dynLambda!12295 order!15505 lambda!93131))))

(assert (=> b!2462126 (< (dynLambda!12296 order!15507 (toChars!6168 (transformation!4457 (h!34065 (t!208783 rules!4472))))) (dynLambda!12295 order!15505 lambda!93131))))

(declare-fun b!2462130 () Bool)

(declare-fun b_free!70709 () Bool)

(declare-fun b_next!71413 () Bool)

(assert (=> b!2462130 (= b_free!70709 (not b_next!71413))))

(declare-fun tp!784049 () Bool)

(declare-fun b_and!185865 () Bool)

(assert (=> b!2462130 (= tp!784049 b_and!185865)))

(declare-fun b_free!70711 () Bool)

(declare-fun b_next!71415 () Bool)

(assert (=> b!2462130 (= b_free!70711 (not b_next!71415))))

(declare-fun t!208893 () Bool)

(declare-fun tb!138977 () Bool)

(assert (=> (and b!2462130 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 (t!208784 l!6611)))))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611)))))) t!208893) tb!138977))

(declare-fun result!171556 () Bool)

(assert (= result!171556 result!171532))

(assert (=> d!708704 t!208893))

(declare-fun t!208895 () Bool)

(declare-fun tb!138979 () Bool)

(assert (=> (and b!2462130 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 (t!208784 l!6611)))))) (toChars!6168 (transformation!4457 (rule!6815 t1!67)))) t!208895) tb!138979))

(declare-fun result!171558 () Bool)

(assert (= result!171558 result!171460))

(assert (=> b!2461593 t!208895))

(assert (=> b!2461918 t!208893))

(declare-fun t!208897 () Bool)

(declare-fun tb!138981 () Bool)

(assert (=> (and b!2462130 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 (t!208784 l!6611)))))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611))))) t!208897) tb!138981))

(declare-fun result!171560 () Bool)

(assert (= result!171560 result!171504))

(assert (=> b!2461797 t!208897))

(declare-fun t!208899 () Bool)

(declare-fun tb!138983 () Bool)

(assert (=> (and b!2462130 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 (t!208784 l!6611)))))) (toChars!6168 (transformation!4457 (rule!6815 t2!67)))) t!208899) tb!138983))

(declare-fun result!171562 () Bool)

(assert (= result!171562 result!171450))

(assert (=> b!2461586 t!208899))

(declare-fun tp!784052 () Bool)

(declare-fun b_and!185867 () Bool)

(assert (=> b!2462130 (= tp!784052 (and (=> t!208895 result!171558) (=> t!208899 result!171562) (=> t!208893 result!171556) (=> t!208897 result!171560) b_and!185867))))

(declare-fun e!1561653 () Bool)

(assert (=> b!2462130 (= e!1561653 (and tp!784049 tp!784052))))

(declare-fun e!1561652 () Bool)

(assert (=> b!2461847 (= tp!783931 e!1561652)))

(declare-fun b!2462129 () Bool)

(declare-fun e!1561655 () Bool)

(declare-fun tp!784048 () Bool)

(assert (=> b!2462129 (= e!1561655 (and tp!784048 (inv!38739 (tag!4947 (rule!6815 (h!34066 (t!208784 (t!208784 l!6611)))))) (inv!38742 (transformation!4457 (rule!6815 (h!34066 (t!208784 (t!208784 l!6611)))))) e!1561653))))

(declare-fun e!1561651 () Bool)

(declare-fun tp!784051 () Bool)

(declare-fun b!2462127 () Bool)

(assert (=> b!2462127 (= e!1561652 (and (inv!38743 (h!34066 (t!208784 (t!208784 l!6611)))) e!1561651 tp!784051))))

(declare-fun tp!784050 () Bool)

(declare-fun b!2462128 () Bool)

(assert (=> b!2462128 (= e!1561651 (and (inv!21 (value!142430 (h!34066 (t!208784 (t!208784 l!6611))))) e!1561655 tp!784050))))

(assert (= b!2462129 b!2462130))

(assert (= b!2462128 b!2462129))

(assert (= b!2462127 b!2462128))

(assert (= (and b!2461847 ((_ is Cons!28665) (t!208784 (t!208784 l!6611)))) b!2462127))

(declare-fun m!2831225 () Bool)

(assert (=> b!2462129 m!2831225))

(declare-fun m!2831227 () Bool)

(assert (=> b!2462129 m!2831227))

(declare-fun m!2831229 () Bool)

(assert (=> b!2462127 m!2831229))

(declare-fun m!2831231 () Bool)

(assert (=> b!2462128 m!2831231))

(declare-fun b!2462133 () Bool)

(declare-fun b_free!70713 () Bool)

(declare-fun b_next!71417 () Bool)

(assert (=> b!2462133 (= b_free!70713 (not b_next!71417))))

(declare-fun tp!784053 () Bool)

(declare-fun b_and!185869 () Bool)

(assert (=> b!2462133 (= tp!784053 b_and!185869)))

(declare-fun b_free!70715 () Bool)

(declare-fun b_next!71419 () Bool)

(assert (=> b!2462133 (= b_free!70715 (not b_next!71419))))

(declare-fun tb!138985 () Bool)

(declare-fun t!208901 () Bool)

(assert (=> (and b!2462133 (= (toChars!6168 (transformation!4457 (h!34065 (t!208783 (t!208783 rules!4472))))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611)))))) t!208901) tb!138985))

(declare-fun result!171564 () Bool)

(assert (= result!171564 result!171532))

(assert (=> d!708704 t!208901))

(declare-fun tb!138987 () Bool)

(declare-fun t!208903 () Bool)

(assert (=> (and b!2462133 (= (toChars!6168 (transformation!4457 (h!34065 (t!208783 (t!208783 rules!4472))))) (toChars!6168 (transformation!4457 (rule!6815 t1!67)))) t!208903) tb!138987))

(declare-fun result!171566 () Bool)

(assert (= result!171566 result!171460))

(assert (=> b!2461593 t!208903))

(assert (=> b!2461918 t!208901))

(declare-fun tb!138989 () Bool)

(declare-fun t!208905 () Bool)

(assert (=> (and b!2462133 (= (toChars!6168 (transformation!4457 (h!34065 (t!208783 (t!208783 rules!4472))))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611))))) t!208905) tb!138989))

(declare-fun result!171568 () Bool)

(assert (= result!171568 result!171504))

(assert (=> b!2461797 t!208905))

(declare-fun t!208907 () Bool)

(declare-fun tb!138991 () Bool)

(assert (=> (and b!2462133 (= (toChars!6168 (transformation!4457 (h!34065 (t!208783 (t!208783 rules!4472))))) (toChars!6168 (transformation!4457 (rule!6815 t2!67)))) t!208907) tb!138991))

(declare-fun result!171570 () Bool)

(assert (= result!171570 result!171450))

(assert (=> b!2461586 t!208907))

(declare-fun b_and!185871 () Bool)

(declare-fun tp!784056 () Bool)

(assert (=> b!2462133 (= tp!784056 (and (=> t!208903 result!171566) (=> t!208905 result!171568) (=> t!208907 result!171570) (=> t!208901 result!171564) b_and!185871))))

(declare-fun e!1561658 () Bool)

(assert (=> b!2462133 (= e!1561658 (and tp!784053 tp!784056))))

(declare-fun b!2462132 () Bool)

(declare-fun tp!784055 () Bool)

(declare-fun e!1561659 () Bool)

(assert (=> b!2462132 (= e!1561659 (and tp!784055 (inv!38739 (tag!4947 (h!34065 (t!208783 (t!208783 rules!4472))))) (inv!38742 (transformation!4457 (h!34065 (t!208783 (t!208783 rules!4472))))) e!1561658))))

(declare-fun b!2462131 () Bool)

(declare-fun e!1561657 () Bool)

(declare-fun tp!784054 () Bool)

(assert (=> b!2462131 (= e!1561657 (and e!1561659 tp!784054))))

(assert (=> b!2461868 (= tp!783953 e!1561657)))

(assert (= b!2462132 b!2462133))

(assert (= b!2462131 b!2462132))

(assert (= (and b!2461868 ((_ is Cons!28664) (t!208783 (t!208783 rules!4472)))) b!2462131))

(declare-fun m!2831243 () Bool)

(assert (=> b!2462132 m!2831243))

(declare-fun m!2831245 () Bool)

(assert (=> b!2462132 m!2831245))

(declare-fun tp!784063 () Bool)

(declare-fun tp!784064 () Bool)

(declare-fun e!1561666 () Bool)

(declare-fun b!2462144 () Bool)

(assert (=> b!2462144 (= e!1561666 (and (inv!38746 (left!22012 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (value!142430 (h!34066 l!6611)))))) tp!784064 (inv!38746 (right!22342 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (value!142430 (h!34066 l!6611)))))) tp!784063))))

(declare-fun b!2462146 () Bool)

(declare-fun e!1561667 () Bool)

(declare-fun tp!784065 () Bool)

(assert (=> b!2462146 (= e!1561667 tp!784065)))

(declare-fun b!2462145 () Bool)

(declare-fun inv!38750 (IArray!18327) Bool)

(assert (=> b!2462145 (= e!1561666 (and (inv!38750 (xs!12141 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (value!142430 (h!34066 l!6611)))))) e!1561667))))

(assert (=> b!2461799 (= tp!783893 (and (inv!38746 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (value!142430 (h!34066 l!6611))))) e!1561666))))

(assert (= (and b!2461799 ((_ is Node!9161) (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (value!142430 (h!34066 l!6611)))))) b!2462144))

(assert (= b!2462145 b!2462146))

(assert (= (and b!2461799 ((_ is Leaf!13697) (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (value!142430 (h!34066 l!6611)))))) b!2462145))

(declare-fun m!2831247 () Bool)

(assert (=> b!2462144 m!2831247))

(declare-fun m!2831249 () Bool)

(assert (=> b!2462144 m!2831249))

(declare-fun m!2831251 () Bool)

(assert (=> b!2462145 m!2831251))

(assert (=> b!2461799 m!2830767))

(declare-fun tp!784067 () Bool)

(declare-fun tp!784066 () Bool)

(declare-fun e!1561668 () Bool)

(declare-fun b!2462147 () Bool)

(assert (=> b!2462147 (= e!1561668 (and (inv!38746 (left!22012 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (value!142430 t2!67))))) tp!784067 (inv!38746 (right!22342 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (value!142430 t2!67))))) tp!784066))))

(declare-fun b!2462149 () Bool)

(declare-fun e!1561669 () Bool)

(declare-fun tp!784068 () Bool)

(assert (=> b!2462149 (= e!1561669 tp!784068)))

(declare-fun b!2462148 () Bool)

(assert (=> b!2462148 (= e!1561668 (and (inv!38750 (xs!12141 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (value!142430 t2!67))))) e!1561669))))

(assert (=> b!2461592 (= tp!783827 (and (inv!38746 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (value!142430 t2!67)))) e!1561668))))

(assert (= (and b!2461592 ((_ is Node!9161) (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (value!142430 t2!67))))) b!2462147))

(assert (= b!2462148 b!2462149))

(assert (= (and b!2461592 ((_ is Leaf!13697) (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (value!142430 t2!67))))) b!2462148))

(declare-fun m!2831257 () Bool)

(assert (=> b!2462147 m!2831257))

(declare-fun m!2831259 () Bool)

(assert (=> b!2462147 m!2831259))

(declare-fun m!2831261 () Bool)

(assert (=> b!2462148 m!2831261))

(assert (=> b!2461592 m!2830581))

(declare-fun b!2462150 () Bool)

(declare-fun e!1561670 () Bool)

(declare-fun tp!784069 () Bool)

(assert (=> b!2462150 (= e!1561670 (and tp_is_empty!11927 tp!784069))))

(assert (=> b!2461848 (= tp!783930 e!1561670)))

(assert (= (and b!2461848 ((_ is Cons!28663) (originalCharacters!5223 (h!34066 (t!208784 l!6611))))) b!2462150))

(declare-fun e!1561671 () Bool)

(assert (=> b!2461857 (= tp!783942 e!1561671)))

(declare-fun b!2462152 () Bool)

(declare-fun tp!784073 () Bool)

(declare-fun tp!784074 () Bool)

(assert (=> b!2462152 (= e!1561671 (and tp!784073 tp!784074))))

(declare-fun b!2462153 () Bool)

(declare-fun tp!784072 () Bool)

(assert (=> b!2462153 (= e!1561671 tp!784072)))

(declare-fun b!2462154 () Bool)

(declare-fun tp!784070 () Bool)

(declare-fun tp!784071 () Bool)

(assert (=> b!2462154 (= e!1561671 (and tp!784070 tp!784071))))

(declare-fun b!2462151 () Bool)

(assert (=> b!2462151 (= e!1561671 tp_is_empty!11927)))

(assert (= (and b!2461857 ((_ is ElementMatch!7245) (regOne!15002 (regex!4457 (rule!6815 t1!67))))) b!2462151))

(assert (= (and b!2461857 ((_ is Concat!11889) (regOne!15002 (regex!4457 (rule!6815 t1!67))))) b!2462152))

(assert (= (and b!2461857 ((_ is Star!7245) (regOne!15002 (regex!4457 (rule!6815 t1!67))))) b!2462153))

(assert (= (and b!2461857 ((_ is Union!7245) (regOne!15002 (regex!4457 (rule!6815 t1!67))))) b!2462154))

(declare-fun e!1561672 () Bool)

(assert (=> b!2461857 (= tp!783943 e!1561672)))

(declare-fun b!2462156 () Bool)

(declare-fun tp!784078 () Bool)

(declare-fun tp!784079 () Bool)

(assert (=> b!2462156 (= e!1561672 (and tp!784078 tp!784079))))

(declare-fun b!2462157 () Bool)

(declare-fun tp!784077 () Bool)

(assert (=> b!2462157 (= e!1561672 tp!784077)))

(declare-fun b!2462158 () Bool)

(declare-fun tp!784075 () Bool)

(declare-fun tp!784076 () Bool)

(assert (=> b!2462158 (= e!1561672 (and tp!784075 tp!784076))))

(declare-fun b!2462155 () Bool)

(assert (=> b!2462155 (= e!1561672 tp_is_empty!11927)))

(assert (= (and b!2461857 ((_ is ElementMatch!7245) (regTwo!15002 (regex!4457 (rule!6815 t1!67))))) b!2462155))

(assert (= (and b!2461857 ((_ is Concat!11889) (regTwo!15002 (regex!4457 (rule!6815 t1!67))))) b!2462156))

(assert (= (and b!2461857 ((_ is Star!7245) (regTwo!15002 (regex!4457 (rule!6815 t1!67))))) b!2462157))

(assert (= (and b!2461857 ((_ is Union!7245) (regTwo!15002 (regex!4457 (rule!6815 t1!67))))) b!2462158))

(declare-fun b!2462159 () Bool)

(declare-fun e!1561673 () Bool)

(declare-fun tp!784080 () Bool)

(assert (=> b!2462159 (= e!1561673 (and tp_is_empty!11927 tp!784080))))

(assert (=> b!2461835 (= tp!783916 e!1561673)))

(assert (= (and b!2461835 ((_ is Cons!28663) (t!208782 (originalCharacters!5223 t2!67)))) b!2462159))

(declare-fun tp!784081 () Bool)

(declare-fun b!2462160 () Bool)

(declare-fun e!1561674 () Bool)

(declare-fun tp!784082 () Bool)

(assert (=> b!2462160 (= e!1561674 (and (inv!38746 (left!22012 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (value!142430 t1!67))))) tp!784082 (inv!38746 (right!22342 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (value!142430 t1!67))))) tp!784081))))

(declare-fun b!2462162 () Bool)

(declare-fun e!1561675 () Bool)

(declare-fun tp!784083 () Bool)

(assert (=> b!2462162 (= e!1561675 tp!784083)))

(declare-fun b!2462161 () Bool)

(assert (=> b!2462161 (= e!1561674 (and (inv!38750 (xs!12141 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (value!142430 t1!67))))) e!1561675))))

(assert (=> b!2461595 (= tp!783828 (and (inv!38746 (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (value!142430 t1!67)))) e!1561674))))

(assert (= (and b!2461595 ((_ is Node!9161) (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (value!142430 t1!67))))) b!2462160))

(assert (= b!2462161 b!2462162))

(assert (= (and b!2461595 ((_ is Leaf!13697) (c!392836 (dynLambda!12293 (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (value!142430 t1!67))))) b!2462161))

(declare-fun m!2831263 () Bool)

(assert (=> b!2462160 m!2831263))

(declare-fun m!2831265 () Bool)

(assert (=> b!2462160 m!2831265))

(declare-fun m!2831267 () Bool)

(assert (=> b!2462161 m!2831267))

(assert (=> b!2461595 m!2830593))

(declare-fun b!2462163 () Bool)

(declare-fun e!1561676 () Bool)

(declare-fun tp!784084 () Bool)

(assert (=> b!2462163 (= e!1561676 (and tp_is_empty!11927 tp!784084))))

(assert (=> b!2461855 (= tp!783938 e!1561676)))

(assert (= (and b!2461855 ((_ is Cons!28663) (t!208782 (originalCharacters!5223 (h!34066 l!6611))))) b!2462163))

(declare-fun b!2462164 () Bool)

(declare-fun e!1561677 () Bool)

(declare-fun tp!784085 () Bool)

(assert (=> b!2462164 (= e!1561677 (and tp_is_empty!11927 tp!784085))))

(assert (=> b!2461836 (= tp!783917 e!1561677)))

(assert (= (and b!2461836 ((_ is Cons!28663) (t!208782 (originalCharacters!5223 t1!67)))) b!2462164))

(declare-fun e!1561678 () Bool)

(assert (=> b!2461828 (= tp!783912 e!1561678)))

(declare-fun b!2462166 () Bool)

(declare-fun tp!784089 () Bool)

(declare-fun tp!784090 () Bool)

(assert (=> b!2462166 (= e!1561678 (and tp!784089 tp!784090))))

(declare-fun b!2462167 () Bool)

(declare-fun tp!784088 () Bool)

(assert (=> b!2462167 (= e!1561678 tp!784088)))

(declare-fun b!2462168 () Bool)

(declare-fun tp!784086 () Bool)

(declare-fun tp!784087 () Bool)

(assert (=> b!2462168 (= e!1561678 (and tp!784086 tp!784087))))

(declare-fun b!2462165 () Bool)

(assert (=> b!2462165 (= e!1561678 tp_is_empty!11927)))

(assert (= (and b!2461828 ((_ is ElementMatch!7245) (regOne!15002 (regex!4457 (rule!6815 t2!67))))) b!2462165))

(assert (= (and b!2461828 ((_ is Concat!11889) (regOne!15002 (regex!4457 (rule!6815 t2!67))))) b!2462166))

(assert (= (and b!2461828 ((_ is Star!7245) (regOne!15002 (regex!4457 (rule!6815 t2!67))))) b!2462167))

(assert (= (and b!2461828 ((_ is Union!7245) (regOne!15002 (regex!4457 (rule!6815 t2!67))))) b!2462168))

(declare-fun e!1561679 () Bool)

(assert (=> b!2461828 (= tp!783913 e!1561679)))

(declare-fun b!2462170 () Bool)

(declare-fun tp!784094 () Bool)

(declare-fun tp!784095 () Bool)

(assert (=> b!2462170 (= e!1561679 (and tp!784094 tp!784095))))

(declare-fun b!2462171 () Bool)

(declare-fun tp!784093 () Bool)

(assert (=> b!2462171 (= e!1561679 tp!784093)))

(declare-fun b!2462172 () Bool)

(declare-fun tp!784091 () Bool)

(declare-fun tp!784092 () Bool)

(assert (=> b!2462172 (= e!1561679 (and tp!784091 tp!784092))))

(declare-fun b!2462169 () Bool)

(assert (=> b!2462169 (= e!1561679 tp_is_empty!11927)))

(assert (= (and b!2461828 ((_ is ElementMatch!7245) (regTwo!15002 (regex!4457 (rule!6815 t2!67))))) b!2462169))

(assert (= (and b!2461828 ((_ is Concat!11889) (regTwo!15002 (regex!4457 (rule!6815 t2!67))))) b!2462170))

(assert (= (and b!2461828 ((_ is Star!7245) (regTwo!15002 (regex!4457 (rule!6815 t2!67))))) b!2462171))

(assert (= (and b!2461828 ((_ is Union!7245) (regTwo!15002 (regex!4457 (rule!6815 t2!67))))) b!2462172))

(declare-fun b_lambda!75423 () Bool)

(assert (= b_lambda!75421 (or (and b!2461850 b_free!70703) (and b!2461536 b_free!70691 (= (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))))) (and b!2461547 b_free!70679 (= (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))))) (and b!2461548 b_free!70687 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))))) (and b!2461543 b_free!70683 (= (toChars!6168 (transformation!4457 (h!34065 rules!4472))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))))) (and b!2461870 b_free!70707 (= (toChars!6168 (transformation!4457 (h!34065 (t!208783 rules!4472)))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))))) (and b!2462133 b_free!70715 (= (toChars!6168 (transformation!4457 (h!34065 (t!208783 (t!208783 rules!4472))))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))))) (and b!2462130 b_free!70711 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 (t!208784 l!6611)))))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))))) b_lambda!75423)))

(declare-fun b_lambda!75425 () Bool)

(assert (= b_lambda!75415 (or d!708474 b_lambda!75425)))

(declare-fun bs!466301 () Bool)

(declare-fun d!708770 () Bool)

(assert (= bs!466301 (and d!708770 d!708474)))

(assert (=> bs!466301 (= (dynLambda!12297 lambda!93131 (h!34066 l!6611)) (rulesProduceIndividualToken!1791 thiss!27932 rules!4472 (h!34066 l!6611)))))

(assert (=> bs!466301 m!2830713))

(assert (=> b!2461895 d!708770))

(declare-fun b_lambda!75427 () Bool)

(assert (= b_lambda!75417 (or (and b!2461850 b_free!70703) (and b!2461536 b_free!70691 (= (toChars!6168 (transformation!4457 (rule!6815 t1!67))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))))) (and b!2461547 b_free!70679 (= (toChars!6168 (transformation!4457 (rule!6815 t2!67))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))))) (and b!2461548 b_free!70687 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 l!6611)))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))))) (and b!2461543 b_free!70683 (= (toChars!6168 (transformation!4457 (h!34065 rules!4472))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))))) (and b!2461870 b_free!70707 (= (toChars!6168 (transformation!4457 (h!34065 (t!208783 rules!4472)))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))))) (and b!2462133 b_free!70715 (= (toChars!6168 (transformation!4457 (h!34065 (t!208783 (t!208783 rules!4472))))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))))) (and b!2462130 b_free!70711 (= (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 (t!208784 l!6611)))))) (toChars!6168 (transformation!4457 (rule!6815 (h!34066 (t!208784 l!6611))))))) b_lambda!75427)))

(check-sat (not b!2462107) (not b!2462043) (not d!708682) (not b!2462152) (not b!2462060) (not b!2462055) (not b!2462078) (not b!2462019) (not b!2461884) b_and!185757 (not b!2461989) (not b!2461896) (not b!2462161) (not b_lambda!75427) (not b!2461962) b_and!185749 (not b!2461885) (not d!708562) (not d!708614) b_and!185853 (not d!708564) (not d!708664) b_and!185857 (not b!2462047) (not b!2461799) (not b!2462087) (not b!2462056) (not b!2462146) (not b!2462159) (not d!708722) (not b!2462160) (not b_next!71387) (not b!2461965) (not b!2461967) (not b!2462085) (not d!708556) (not b!2462108) (not d!708688) (not b!2462065) (not b!2462077) (not b!2461911) (not b!2462106) (not b!2462024) (not b!2462113) (not b!2462086) (not d!708726) (not d!708596) (not b_lambda!75411) (not d!708658) (not b_lambda!75413) (not d!708718) (not b!2461981) (not b!2462079) (not d!708622) (not bs!466301) (not b!2461888) (not b_lambda!75423) (not d!708694) (not b_next!71395) (not b_next!71393) (not b!2462002) (not b!2462090) (not b_lambda!75409) (not d!708634) (not b!2462059) (not b!2461973) (not b!2462027) (not b!2461957) (not b_lambda!75425) (not b!2461595) (not d!708684) (not d!708554) (not b!2462158) (not b!2462052) (not b!2462166) (not b!2461928) (not d!708740) (not d!708620) (not d!708644) (not b!2462157) (not b_next!71415) (not b!2462021) b_and!185825 (not d!708704) (not d!708744) b_and!185865 (not d!708670) b_and!185863 (not b!2461897) (not b!2462003) (not b!2462127) (not b!2461910) (not tb!138953) (not b!2462053) (not d!708550) (not b!2462147) (not b!2461990) (not b!2462149) b_and!185871 (not b_next!71417) (not b!2462132) (not b!2462164) (not b!2462041) (not d!708580) (not d!708732) (not b!2461927) (not b!2462091) (not b!2462074) b_and!185861 (not b!2462066) (not b_next!71383) (not b!2462153) (not b!2461898) (not d!708666) (not b!2462001) (not b_next!71413) b_and!185855 (not b!2461966) (not b!2462035) (not b!2461960) (not b!2461882) (not d!708576) (not b!2462037) (not b!2462101) (not b!2462049) (not b!2461992) (not d!708552) (not b!2462073) (not b!2462033) (not d!708706) (not b_next!71391) (not b!2461959) (not b!2462039) (not b_next!71405) (not d!708686) (not b!2462044) (not b!2462075) (not b!2462162) (not d!708708) (not b!2462172) (not b!2462045) (not b!2462119) (not b!2462102) (not d!708712) (not d!708654) (not b!2462097) (not b!2462067) (not b!2462051) (not b_next!71409) (not b!2462057) (not b!2462061) (not b!2461913) (not b_next!71389) (not b_next!71419) (not b!2461919) (not b!2462144) b_and!185753 (not b!2462128) (not b_next!71407) (not b!2461592) (not b!2462114) (not d!708560) (not d!708604) (not b!2461883) (not b!2462048) (not b!2462100) (not d!708720) (not d!708586) (not b!2462098) (not b!2462170) (not b!2462156) (not b!2461984) (not b!2462121) b_and!185859 tp_is_empty!11927 (not b!2461993) (not b!2462081) (not d!708590) (not b!2462122) b_and!185867 (not b!2462123) (not b!2461912) (not b!2462117) (not b!2462124) (not b!2462171) b_and!185761 (not b_next!71411) (not b!2462083) (not d!708652) (not d!708558) (not d!708714) (not b!2462020) (not d!708572) (not b!2462168) (not b!2461991) (not b!2462163) (not b!2462154) (not b!2462167) (not b_next!71385) (not b!2462026) (not b!2462148) (not b!2462129) (not d!708742) (not b!2462089) (not b!2462040) (not b!2461971) (not d!708578) (not b!2462096) (not b!2462145) (not b!2461924) (not b!2461918) (not d!708632) b_and!185869 (not b!2462150) (not b!2462118) (not d!708570) (not b!2462115) (not b!2462082) (not b!2462131) (not b!2461939) b_and!185821 (not d!708584) (not b_next!71381))
(check-sat b_and!185757 b_and!185857 (not b_next!71387) b_and!185863 b_and!185855 (not b_next!71409) b_and!185859 b_and!185867 (not b_next!71385) b_and!185869 b_and!185749 b_and!185853 (not b_next!71395) (not b_next!71393) (not b_next!71415) b_and!185865 b_and!185825 b_and!185871 (not b_next!71417) b_and!185861 (not b_next!71383) (not b_next!71413) (not b_next!71391) (not b_next!71405) (not b_next!71389) (not b_next!71419) b_and!185753 (not b_next!71407) b_and!185761 (not b_next!71411) b_and!185821 (not b_next!71381))
