; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!537524 () Bool)

(assert start!537524)

(declare-fun b!5097463 () Bool)

(declare-fun b_free!133511 () Bool)

(declare-fun b_next!134301 () Bool)

(assert (=> b!5097463 (= b_free!133511 (not b_next!134301))))

(declare-fun tp!1421482 () Bool)

(declare-fun b_and!350427 () Bool)

(assert (=> b!5097463 (= tp!1421482 b_and!350427)))

(declare-fun b_free!133513 () Bool)

(declare-fun b_next!134303 () Bool)

(assert (=> b!5097463 (= b_free!133513 (not b_next!134303))))

(declare-fun tp!1421481 () Bool)

(declare-fun b_and!350429 () Bool)

(assert (=> b!5097463 (= tp!1421481 b_and!350429)))

(declare-fun b!5097457 () Bool)

(declare-fun res!2169440 () Bool)

(declare-fun e!3179121 () Bool)

(assert (=> b!5097457 (=> (not res!2169440) (not e!3179121))))

(declare-datatypes ((LexerInterface!8122 0))(
  ( (LexerInterfaceExt!8119 (__x!34977 Int)) (Lexer!8120) )
))
(declare-fun thiss!15916 () LexerInterface!8122)

(declare-datatypes ((C!28268 0))(
  ( (C!28269 (val!23786 Int)) )
))
(declare-datatypes ((List!58803 0))(
  ( (Nil!58679) (Cons!58679 (h!65127 C!28268) (t!371780 List!58803)) )
))
(declare-datatypes ((IArray!31465 0))(
  ( (IArray!31466 (innerList!15790 List!58803)) )
))
(declare-datatypes ((Conc!15702 0))(
  ( (Node!15702 (left!43089 Conc!15702) (right!43419 Conc!15702) (csize!31634 Int) (cheight!15913 Int)) (Leaf!26058 (xs!19084 IArray!31465) (csize!31635 Int)) (Empty!15702) )
))
(declare-datatypes ((Regex!14005 0))(
  ( (ElementMatch!14005 (c!875884 C!28268)) (Concat!22849 (regOne!28522 Regex!14005) (regTwo!28522 Regex!14005)) (EmptyExpr!14005) (Star!14005 (reg!14334 Regex!14005)) (EmptyLang!14005) (Union!14005 (regOne!28523 Regex!14005) (regTwo!28523 Regex!14005)) )
))
(declare-datatypes ((String!67141 0))(
  ( (String!67142 (value!273379 String)) )
))
(declare-datatypes ((List!58804 0))(
  ( (Nil!58680) (Cons!58680 (h!65128 (_ BitVec 16)) (t!371781 List!58804)) )
))
(declare-datatypes ((TokenValue!8844 0))(
  ( (FloatLiteralValue!17688 (text!62353 List!58804)) (TokenValueExt!8843 (__x!34978 Int)) (Broken!44220 (value!273380 List!58804)) (Object!8967) (End!8844) (Def!8844) (Underscore!8844) (Match!8844) (Else!8844) (Error!8844) (Case!8844) (If!8844) (Extends!8844) (Abstract!8844) (Class!8844) (Val!8844) (DelimiterValue!17688 (del!8904 List!58804)) (KeywordValue!8850 (value!273381 List!58804)) (CommentValue!17688 (value!273382 List!58804)) (WhitespaceValue!17688 (value!273383 List!58804)) (IndentationValue!8844 (value!273384 List!58804)) (String!67143) (Int32!8844) (Broken!44221 (value!273385 List!58804)) (Boolean!8845) (Unit!149730) (OperatorValue!8847 (op!8904 List!58804)) (IdentifierValue!17688 (value!273386 List!58804)) (IdentifierValue!17689 (value!273387 List!58804)) (WhitespaceValue!17689 (value!273388 List!58804)) (True!17688) (False!17688) (Broken!44222 (value!273389 List!58804)) (Broken!44223 (value!273390 List!58804)) (True!17689) (RightBrace!8844) (RightBracket!8844) (Colon!8844) (Null!8844) (Comma!8844) (LeftBracket!8844) (False!17689) (LeftBrace!8844) (ImaginaryLiteralValue!8844 (text!62354 List!58804)) (StringLiteralValue!26532 (value!273391 List!58804)) (EOFValue!8844 (value!273392 List!58804)) (IdentValue!8844 (value!273393 List!58804)) (DelimiterValue!17689 (value!273394 List!58804)) (DedentValue!8844 (value!273395 List!58804)) (NewLineValue!8844 (value!273396 List!58804)) (IntegerValue!26532 (value!273397 (_ BitVec 32)) (text!62355 List!58804)) (IntegerValue!26533 (value!273398 Int) (text!62356 List!58804)) (Times!8844) (Or!8844) (Equal!8844) (Minus!8844) (Broken!44224 (value!273399 List!58804)) (And!8844) (Div!8844) (LessEqual!8844) (Mod!8844) (Concat!22850) (Not!8844) (Plus!8844) (SpaceValue!8844 (value!273400 List!58804)) (IntegerValue!26534 (value!273401 Int) (text!62357 List!58804)) (StringLiteralValue!26533 (text!62358 List!58804)) (FloatLiteralValue!17689 (text!62359 List!58804)) (BytesLiteralValue!8844 (value!273402 List!58804)) (CommentValue!17689 (value!273403 List!58804)) (StringLiteralValue!26534 (value!273404 List!58804)) (ErrorTokenValue!8844 (msg!8905 List!58804)) )
))
(declare-datatypes ((BalanceConc!30522 0))(
  ( (BalanceConc!30523 (c!875885 Conc!15702)) )
))
(declare-datatypes ((TokenValueInjection!16996 0))(
  ( (TokenValueInjection!16997 (toValue!11557 Int) (toChars!11416 Int)) )
))
(declare-datatypes ((Rule!16860 0))(
  ( (Rule!16861 (regex!8530 Regex!14005) (tag!9394 String!67141) (isSeparator!8530 Bool) (transformation!8530 TokenValueInjection!16996)) )
))
(declare-fun rule!158 () Rule!16860)

(declare-fun ruleValid!3922 (LexerInterface!8122 Rule!16860) Bool)

(assert (=> b!5097457 (= res!2169440 (ruleValid!3922 thiss!15916 rule!158))))

(declare-fun e!3179124 () Bool)

(declare-fun e!3179125 () Bool)

(declare-fun tp!1421483 () Bool)

(declare-fun b!5097458 () Bool)

(declare-fun inv!78182 (String!67141) Bool)

(declare-fun inv!78184 (TokenValueInjection!16996) Bool)

(assert (=> b!5097458 (= e!3179124 (and tp!1421483 (inv!78182 (tag!9394 rule!158)) (inv!78184 (transformation!8530 rule!158)) e!3179125))))

(declare-fun b!5097460 () Bool)

(declare-fun e!3179119 () Bool)

(declare-datatypes ((tuple2!63398 0))(
  ( (tuple2!63399 (_1!35002 List!58803) (_2!35002 List!58803)) )
))
(declare-fun lt!2094566 () tuple2!63398)

(declare-fun matchR!6802 (Regex!14005 List!58803) Bool)

(assert (=> b!5097460 (= e!3179119 (matchR!6802 (regex!8530 rule!158) (_1!35002 lt!2094566)))))

(declare-fun b!5097461 () Bool)

(declare-fun e!3179120 () Bool)

(declare-fun tp_is_empty!37275 () Bool)

(declare-fun tp!1421480 () Bool)

(assert (=> b!5097461 (= e!3179120 (and tp_is_empty!37275 tp!1421480))))

(declare-fun b!5097462 () Bool)

(declare-fun e!3179123 () Bool)

(assert (=> b!5097462 (= e!3179121 e!3179123)))

(declare-fun res!2169439 () Bool)

(assert (=> b!5097462 (=> (not res!2169439) (not e!3179123))))

(declare-fun lt!2094567 () tuple2!63398)

(declare-fun isEmpty!31758 (List!58803) Bool)

(assert (=> b!5097462 (= res!2169439 (not (isEmpty!31758 (_1!35002 lt!2094567))))))

(declare-fun input!1493 () List!58803)

(declare-fun findLongestMatchWithZipper!125 (Regex!14005 List!58803) tuple2!63398)

(assert (=> b!5097462 (= lt!2094567 (findLongestMatchWithZipper!125 (regex!8530 rule!158) input!1493))))

(assert (=> b!5097463 (= e!3179125 (and tp!1421482 tp!1421481))))

(declare-fun res!2169437 () Bool)

(assert (=> start!537524 (=> (not res!2169437) (not e!3179121))))

(get-info :version)

(assert (=> start!537524 (= res!2169437 ((_ is Lexer!8120) thiss!15916))))

(assert (=> start!537524 e!3179121))

(assert (=> start!537524 true))

(assert (=> start!537524 e!3179124))

(assert (=> start!537524 e!3179120))

(declare-fun b!5097459 () Bool)

(declare-fun lt!2094565 () BalanceConc!30522)

(declare-datatypes ((Token!15480 0))(
  ( (Token!15481 (value!273405 TokenValue!8844) (rule!11806 Rule!16860) (size!39306 Int) (originalCharacters!8771 List!58803)) )
))
(declare-datatypes ((tuple2!63400 0))(
  ( (tuple2!63401 (_1!35003 Token!15480) (_2!35003 List!58803)) )
))
(declare-datatypes ((Option!14647 0))(
  ( (None!14646) (Some!14646 (v!50659 tuple2!63400)) )
))
(declare-fun apply!14302 (TokenValueInjection!16996 BalanceConc!30522) TokenValue!8844)

(declare-fun size!39307 (List!58803) Int)

(declare-fun maxPrefixOneRule!3710 (LexerInterface!8122 Rule!16860 List!58803) Option!14647)

(assert (=> b!5097459 (= e!3179123 (not (= (Some!14646 (tuple2!63401 (Token!15481 (apply!14302 (transformation!8530 rule!158) lt!2094565) rule!158 (size!39307 (_1!35002 lt!2094567)) (_1!35002 lt!2094567)) (_2!35002 lt!2094567))) (maxPrefixOneRule!3710 thiss!15916 rule!158 input!1493))))))

(declare-datatypes ((Unit!149731 0))(
  ( (Unit!149732) )
))
(declare-fun lt!2094564 () Unit!149731)

(declare-fun lemmaSemiInverse!2652 (TokenValueInjection!16996 BalanceConc!30522) Unit!149731)

(assert (=> b!5097459 (= lt!2094564 (lemmaSemiInverse!2652 (transformation!8530 rule!158) lt!2094565))))

(declare-fun seqFromList!6120 (List!58803) BalanceConc!30522)

(assert (=> b!5097459 (= lt!2094565 (seqFromList!6120 (_1!35002 lt!2094567)))))

(declare-fun lt!2094568 () Unit!149731)

(declare-fun lemmaInv!1418 (TokenValueInjection!16996) Unit!149731)

(assert (=> b!5097459 (= lt!2094568 (lemmaInv!1418 (transformation!8530 rule!158)))))

(assert (=> b!5097459 e!3179119))

(declare-fun res!2169438 () Bool)

(assert (=> b!5097459 (=> res!2169438 e!3179119)))

(assert (=> b!5097459 (= res!2169438 (isEmpty!31758 (_1!35002 lt!2094566)))))

(declare-fun findLongestMatchInner!2026 (Regex!14005 List!58803 Int List!58803 List!58803 Int) tuple2!63398)

(assert (=> b!5097459 (= lt!2094566 (findLongestMatchInner!2026 (regex!8530 rule!158) Nil!58679 (size!39307 Nil!58679) input!1493 input!1493 (size!39307 input!1493)))))

(declare-fun lt!2094563 () Unit!149731)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1979 (Regex!14005 List!58803) Unit!149731)

(assert (=> b!5097459 (= lt!2094563 (longestMatchIsAcceptedByMatchOrIsEmpty!1979 (regex!8530 rule!158) input!1493))))

(assert (= (and start!537524 res!2169437) b!5097457))

(assert (= (and b!5097457 res!2169440) b!5097462))

(assert (= (and b!5097462 res!2169439) b!5097459))

(assert (= (and b!5097459 (not res!2169438)) b!5097460))

(assert (= b!5097458 b!5097463))

(assert (= start!537524 b!5097458))

(assert (= (and start!537524 ((_ is Cons!58679) input!1493)) b!5097461))

(declare-fun m!6154700 () Bool)

(assert (=> b!5097460 m!6154700))

(declare-fun m!6154702 () Bool)

(assert (=> b!5097457 m!6154702))

(declare-fun m!6154704 () Bool)

(assert (=> b!5097458 m!6154704))

(declare-fun m!6154706 () Bool)

(assert (=> b!5097458 m!6154706))

(declare-fun m!6154708 () Bool)

(assert (=> b!5097459 m!6154708))

(declare-fun m!6154710 () Bool)

(assert (=> b!5097459 m!6154710))

(declare-fun m!6154712 () Bool)

(assert (=> b!5097459 m!6154712))

(declare-fun m!6154714 () Bool)

(assert (=> b!5097459 m!6154714))

(declare-fun m!6154716 () Bool)

(assert (=> b!5097459 m!6154716))

(declare-fun m!6154718 () Bool)

(assert (=> b!5097459 m!6154718))

(declare-fun m!6154720 () Bool)

(assert (=> b!5097459 m!6154720))

(declare-fun m!6154722 () Bool)

(assert (=> b!5097459 m!6154722))

(declare-fun m!6154724 () Bool)

(assert (=> b!5097459 m!6154724))

(declare-fun m!6154726 () Bool)

(assert (=> b!5097459 m!6154726))

(assert (=> b!5097459 m!6154718))

(declare-fun m!6154728 () Bool)

(assert (=> b!5097459 m!6154728))

(assert (=> b!5097459 m!6154716))

(declare-fun m!6154730 () Bool)

(assert (=> b!5097462 m!6154730))

(declare-fun m!6154732 () Bool)

(assert (=> b!5097462 m!6154732))

(check-sat (not b!5097460) (not b!5097458) (not b!5097457) (not b!5097459) tp_is_empty!37275 (not b!5097462) (not b!5097461) (not b_next!134301) b_and!350429 b_and!350427 (not b_next!134303))
(check-sat b_and!350429 b_and!350427 (not b_next!134301) (not b_next!134303))
(get-model)

(declare-fun d!1649456 () Bool)

(declare-fun res!2169447 () Bool)

(declare-fun e!3179128 () Bool)

(assert (=> d!1649456 (=> (not res!2169447) (not e!3179128))))

(declare-fun validRegex!6131 (Regex!14005) Bool)

(assert (=> d!1649456 (= res!2169447 (validRegex!6131 (regex!8530 rule!158)))))

(assert (=> d!1649456 (= (ruleValid!3922 thiss!15916 rule!158) e!3179128)))

(declare-fun b!5097468 () Bool)

(declare-fun res!2169448 () Bool)

(assert (=> b!5097468 (=> (not res!2169448) (not e!3179128))))

(declare-fun nullable!4706 (Regex!14005) Bool)

(assert (=> b!5097468 (= res!2169448 (not (nullable!4706 (regex!8530 rule!158))))))

(declare-fun b!5097469 () Bool)

(assert (=> b!5097469 (= e!3179128 (not (= (tag!9394 rule!158) (String!67142 ""))))))

(assert (= (and d!1649456 res!2169447) b!5097468))

(assert (= (and b!5097468 res!2169448) b!5097469))

(declare-fun m!6154734 () Bool)

(assert (=> d!1649456 m!6154734))

(declare-fun m!6154736 () Bool)

(assert (=> b!5097468 m!6154736))

(assert (=> b!5097457 d!1649456))

(declare-fun d!1649458 () Bool)

(assert (=> d!1649458 (= (isEmpty!31758 (_1!35002 lt!2094567)) ((_ is Nil!58679) (_1!35002 lt!2094567)))))

(assert (=> b!5097462 d!1649458))

(declare-fun d!1649460 () Bool)

(declare-fun lt!2094586 () tuple2!63398)

(declare-fun findLongestMatch!1838 (Regex!14005 List!58803) tuple2!63398)

(assert (=> d!1649460 (= lt!2094586 (findLongestMatch!1838 (regex!8530 rule!158) input!1493))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!58805 0))(
  ( (Nil!58681) (Cons!58681 (h!65129 Regex!14005) (t!371790 List!58805)) )
))
(declare-datatypes ((Context!6776 0))(
  ( (Context!6777 (exprs!3888 List!58805)) )
))
(declare-fun lt!2094588 () (InoxSet Context!6776))

(declare-fun findLongestMatchZipper!30 ((InoxSet Context!6776) List!58803) tuple2!63398)

(assert (=> d!1649460 (= lt!2094586 (findLongestMatchZipper!30 lt!2094588 input!1493))))

(declare-fun lt!2094587 () Unit!149731)

(declare-fun lt!2094584 () Unit!149731)

(assert (=> d!1649460 (= lt!2094587 lt!2094584)))

(declare-fun lt!2094583 () Int)

(declare-fun sizeTr!416 (List!58803 Int) Int)

(assert (=> d!1649460 (= (sizeTr!416 input!1493 lt!2094583) (+ (size!39307 input!1493) lt!2094583))))

(declare-fun lemmaSizeTrEqualsSize!415 (List!58803 Int) Unit!149731)

(assert (=> d!1649460 (= lt!2094584 (lemmaSizeTrEqualsSize!415 input!1493 lt!2094583))))

(assert (=> d!1649460 (= lt!2094583 0)))

(declare-fun lt!2094585 () Unit!149731)

(declare-fun lt!2094589 () Unit!149731)

(assert (=> d!1649460 (= lt!2094585 lt!2094589)))

(assert (=> d!1649460 (= (findLongestMatchZipper!30 lt!2094588 input!1493) (findLongestMatch!1838 (regex!8530 rule!158) input!1493))))

(declare-fun longestMatchSameAsRegex!26 (Regex!14005 (InoxSet Context!6776) List!58803) Unit!149731)

(assert (=> d!1649460 (= lt!2094589 (longestMatchSameAsRegex!26 (regex!8530 rule!158) lt!2094588 input!1493))))

(declare-fun focus!365 (Regex!14005) (InoxSet Context!6776))

(assert (=> d!1649460 (= lt!2094588 (focus!365 (regex!8530 rule!158)))))

(assert (=> d!1649460 (validRegex!6131 (regex!8530 rule!158))))

(assert (=> d!1649460 (= (findLongestMatchWithZipper!125 (regex!8530 rule!158) input!1493) lt!2094586)))

(declare-fun bs!1191394 () Bool)

(assert (= bs!1191394 d!1649460))

(declare-fun m!6154742 () Bool)

(assert (=> bs!1191394 m!6154742))

(declare-fun m!6154744 () Bool)

(assert (=> bs!1191394 m!6154744))

(declare-fun m!6154746 () Bool)

(assert (=> bs!1191394 m!6154746))

(declare-fun m!6154748 () Bool)

(assert (=> bs!1191394 m!6154748))

(assert (=> bs!1191394 m!6154734))

(assert (=> bs!1191394 m!6154718))

(declare-fun m!6154750 () Bool)

(assert (=> bs!1191394 m!6154750))

(declare-fun m!6154752 () Bool)

(assert (=> bs!1191394 m!6154752))

(assert (=> b!5097462 d!1649460))

(declare-fun b!5097502 () Bool)

(declare-fun e!3179151 () Bool)

(declare-fun lt!2094592 () Bool)

(assert (=> b!5097502 (= e!3179151 (not lt!2094592))))

(declare-fun b!5097503 () Bool)

(declare-fun e!3179149 () Bool)

(declare-fun call!354942 () Bool)

(assert (=> b!5097503 (= e!3179149 (= lt!2094592 call!354942))))

(declare-fun bm!354937 () Bool)

(assert (=> bm!354937 (= call!354942 (isEmpty!31758 (_1!35002 lt!2094566)))))

(declare-fun b!5097504 () Bool)

(declare-fun res!2169473 () Bool)

(declare-fun e!3179150 () Bool)

(assert (=> b!5097504 (=> (not res!2169473) (not e!3179150))))

(assert (=> b!5097504 (= res!2169473 (not call!354942))))

(declare-fun b!5097505 () Bool)

(declare-fun res!2169470 () Bool)

(assert (=> b!5097505 (=> (not res!2169470) (not e!3179150))))

(declare-fun tail!9983 (List!58803) List!58803)

(assert (=> b!5097505 (= res!2169470 (isEmpty!31758 (tail!9983 (_1!35002 lt!2094566))))))

(declare-fun b!5097506 () Bool)

(assert (=> b!5097506 (= e!3179149 e!3179151)))

(declare-fun c!875892 () Bool)

(assert (=> b!5097506 (= c!875892 ((_ is EmptyLang!14005) (regex!8530 rule!158)))))

(declare-fun b!5097507 () Bool)

(declare-fun e!3179146 () Bool)

(declare-fun e!3179148 () Bool)

(assert (=> b!5097507 (= e!3179146 e!3179148)))

(declare-fun res!2169475 () Bool)

(assert (=> b!5097507 (=> res!2169475 e!3179148)))

(assert (=> b!5097507 (= res!2169475 call!354942)))

(declare-fun b!5097508 () Bool)

(declare-fun res!2169477 () Bool)

(assert (=> b!5097508 (=> res!2169477 e!3179148)))

(assert (=> b!5097508 (= res!2169477 (not (isEmpty!31758 (tail!9983 (_1!35002 lt!2094566)))))))

(declare-fun b!5097509 () Bool)

(declare-fun e!3179152 () Bool)

(assert (=> b!5097509 (= e!3179152 e!3179146)))

(declare-fun res!2169474 () Bool)

(assert (=> b!5097509 (=> (not res!2169474) (not e!3179146))))

(assert (=> b!5097509 (= res!2169474 (not lt!2094592))))

(declare-fun b!5097510 () Bool)

(declare-fun res!2169476 () Bool)

(assert (=> b!5097510 (=> res!2169476 e!3179152)))

(assert (=> b!5097510 (= res!2169476 (not ((_ is ElementMatch!14005) (regex!8530 rule!158))))))

(assert (=> b!5097510 (= e!3179151 e!3179152)))

(declare-fun b!5097501 () Bool)

(declare-fun e!3179147 () Bool)

(assert (=> b!5097501 (= e!3179147 (nullable!4706 (regex!8530 rule!158)))))

(declare-fun d!1649468 () Bool)

(assert (=> d!1649468 e!3179149))

(declare-fun c!875893 () Bool)

(assert (=> d!1649468 (= c!875893 ((_ is EmptyExpr!14005) (regex!8530 rule!158)))))

(assert (=> d!1649468 (= lt!2094592 e!3179147)))

(declare-fun c!875894 () Bool)

(assert (=> d!1649468 (= c!875894 (isEmpty!31758 (_1!35002 lt!2094566)))))

(assert (=> d!1649468 (validRegex!6131 (regex!8530 rule!158))))

(assert (=> d!1649468 (= (matchR!6802 (regex!8530 rule!158) (_1!35002 lt!2094566)) lt!2094592)))

(declare-fun b!5097511 () Bool)

(declare-fun derivativeStep!3992 (Regex!14005 C!28268) Regex!14005)

(declare-fun head!10828 (List!58803) C!28268)

(assert (=> b!5097511 (= e!3179147 (matchR!6802 (derivativeStep!3992 (regex!8530 rule!158) (head!10828 (_1!35002 lt!2094566))) (tail!9983 (_1!35002 lt!2094566))))))

(declare-fun b!5097512 () Bool)

(declare-fun res!2169472 () Bool)

(assert (=> b!5097512 (=> res!2169472 e!3179152)))

(assert (=> b!5097512 (= res!2169472 e!3179150)))

(declare-fun res!2169471 () Bool)

(assert (=> b!5097512 (=> (not res!2169471) (not e!3179150))))

(assert (=> b!5097512 (= res!2169471 lt!2094592)))

(declare-fun b!5097513 () Bool)

(assert (=> b!5097513 (= e!3179148 (not (= (head!10828 (_1!35002 lt!2094566)) (c!875884 (regex!8530 rule!158)))))))

(declare-fun b!5097514 () Bool)

(assert (=> b!5097514 (= e!3179150 (= (head!10828 (_1!35002 lt!2094566)) (c!875884 (regex!8530 rule!158))))))

(assert (= (and d!1649468 c!875894) b!5097501))

(assert (= (and d!1649468 (not c!875894)) b!5097511))

(assert (= (and d!1649468 c!875893) b!5097503))

(assert (= (and d!1649468 (not c!875893)) b!5097506))

(assert (= (and b!5097506 c!875892) b!5097502))

(assert (= (and b!5097506 (not c!875892)) b!5097510))

(assert (= (and b!5097510 (not res!2169476)) b!5097512))

(assert (= (and b!5097512 res!2169471) b!5097504))

(assert (= (and b!5097504 res!2169473) b!5097505))

(assert (= (and b!5097505 res!2169470) b!5097514))

(assert (= (and b!5097512 (not res!2169472)) b!5097509))

(assert (= (and b!5097509 res!2169474) b!5097507))

(assert (= (and b!5097507 (not res!2169475)) b!5097508))

(assert (= (and b!5097508 (not res!2169477)) b!5097513))

(assert (= (or b!5097503 b!5097504 b!5097507) bm!354937))

(assert (=> b!5097501 m!6154736))

(declare-fun m!6154754 () Bool)

(assert (=> b!5097514 m!6154754))

(assert (=> b!5097511 m!6154754))

(assert (=> b!5097511 m!6154754))

(declare-fun m!6154756 () Bool)

(assert (=> b!5097511 m!6154756))

(declare-fun m!6154758 () Bool)

(assert (=> b!5097511 m!6154758))

(assert (=> b!5097511 m!6154756))

(assert (=> b!5097511 m!6154758))

(declare-fun m!6154760 () Bool)

(assert (=> b!5097511 m!6154760))

(assert (=> d!1649468 m!6154712))

(assert (=> d!1649468 m!6154734))

(assert (=> b!5097508 m!6154758))

(assert (=> b!5097508 m!6154758))

(declare-fun m!6154762 () Bool)

(assert (=> b!5097508 m!6154762))

(assert (=> b!5097505 m!6154758))

(assert (=> b!5097505 m!6154758))

(assert (=> b!5097505 m!6154762))

(assert (=> b!5097513 m!6154754))

(assert (=> bm!354937 m!6154712))

(assert (=> b!5097460 d!1649468))

(declare-fun d!1649472 () Bool)

(assert (=> d!1649472 (= (inv!78182 (tag!9394 rule!158)) (= (mod (str.len (value!273379 (tag!9394 rule!158))) 2) 0))))

(assert (=> b!5097458 d!1649472))

(declare-fun d!1649474 () Bool)

(declare-fun res!2169480 () Bool)

(declare-fun e!3179155 () Bool)

(assert (=> d!1649474 (=> (not res!2169480) (not e!3179155))))

(declare-fun semiInverseModEq!3799 (Int Int) Bool)

(assert (=> d!1649474 (= res!2169480 (semiInverseModEq!3799 (toChars!11416 (transformation!8530 rule!158)) (toValue!11557 (transformation!8530 rule!158))))))

(assert (=> d!1649474 (= (inv!78184 (transformation!8530 rule!158)) e!3179155)))

(declare-fun b!5097517 () Bool)

(declare-fun equivClasses!3614 (Int Int) Bool)

(assert (=> b!5097517 (= e!3179155 (equivClasses!3614 (toChars!11416 (transformation!8530 rule!158)) (toValue!11557 (transformation!8530 rule!158))))))

(assert (= (and d!1649474 res!2169480) b!5097517))

(declare-fun m!6154764 () Bool)

(assert (=> d!1649474 m!6154764))

(declare-fun m!6154766 () Bool)

(assert (=> b!5097517 m!6154766))

(assert (=> b!5097458 d!1649474))

(declare-fun d!1649476 () Bool)

(declare-fun fromListB!2767 (List!58803) BalanceConc!30522)

(assert (=> d!1649476 (= (seqFromList!6120 (_1!35002 lt!2094567)) (fromListB!2767 (_1!35002 lt!2094567)))))

(declare-fun bs!1191395 () Bool)

(assert (= bs!1191395 d!1649476))

(declare-fun m!6154768 () Bool)

(assert (=> bs!1191395 m!6154768))

(assert (=> b!5097459 d!1649476))

(declare-fun d!1649478 () Bool)

(declare-fun dynLambda!23576 (Int BalanceConc!30522) TokenValue!8844)

(assert (=> d!1649478 (= (apply!14302 (transformation!8530 rule!158) lt!2094565) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565))))

(declare-fun b_lambda!198805 () Bool)

(assert (=> (not b_lambda!198805) (not d!1649478)))

(declare-fun t!371783 () Bool)

(declare-fun tb!261849 () Bool)

(assert (=> (and b!5097463 (= (toValue!11557 (transformation!8530 rule!158)) (toValue!11557 (transformation!8530 rule!158))) t!371783) tb!261849))

(declare-fun result!328932 () Bool)

(declare-fun inv!21 (TokenValue!8844) Bool)

(assert (=> tb!261849 (= result!328932 (inv!21 (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565)))))

(declare-fun m!6154770 () Bool)

(assert (=> tb!261849 m!6154770))

(assert (=> d!1649478 t!371783))

(declare-fun b_and!350431 () Bool)

(assert (= b_and!350427 (and (=> t!371783 result!328932) b_and!350431)))

(declare-fun m!6154772 () Bool)

(assert (=> d!1649478 m!6154772))

(assert (=> b!5097459 d!1649478))

(declare-fun bm!354957 () Bool)

(declare-fun call!354966 () Unit!149731)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1292 (List!58803 List!58803 List!58803) Unit!149731)

(assert (=> bm!354957 (= call!354966 (lemmaIsPrefixSameLengthThenSameList!1292 input!1493 Nil!58679 input!1493))))

(declare-fun bm!354958 () Bool)

(declare-fun call!354963 () Unit!149731)

(declare-fun lemmaIsPrefixRefl!3674 (List!58803 List!58803) Unit!149731)

(assert (=> bm!354958 (= call!354963 (lemmaIsPrefixRefl!3674 input!1493 input!1493))))

(declare-fun bm!354959 () Bool)

(declare-fun call!354965 () List!58803)

(assert (=> bm!354959 (= call!354965 (tail!9983 input!1493))))

(declare-fun b!5097592 () Bool)

(declare-fun e!3179201 () tuple2!63398)

(declare-fun e!3179202 () tuple2!63398)

(assert (=> b!5097592 (= e!3179201 e!3179202)))

(declare-fun c!875918 () Bool)

(assert (=> b!5097592 (= c!875918 (= (size!39307 Nil!58679) (size!39307 input!1493)))))

(declare-fun call!354962 () tuple2!63398)

(declare-fun bm!354960 () Bool)

(declare-fun lt!2094683 () List!58803)

(declare-fun call!354967 () Regex!14005)

(assert (=> bm!354960 (= call!354962 (findLongestMatchInner!2026 call!354967 lt!2094683 (+ (size!39307 Nil!58679) 1) call!354965 input!1493 (size!39307 input!1493)))))

(declare-fun d!1649480 () Bool)

(declare-fun e!3179206 () Bool)

(assert (=> d!1649480 e!3179206))

(declare-fun res!2169510 () Bool)

(assert (=> d!1649480 (=> (not res!2169510) (not e!3179206))))

(declare-fun lt!2094686 () tuple2!63398)

(declare-fun ++!12859 (List!58803 List!58803) List!58803)

(assert (=> d!1649480 (= res!2169510 (= (++!12859 (_1!35002 lt!2094686) (_2!35002 lt!2094686)) input!1493))))

(assert (=> d!1649480 (= lt!2094686 e!3179201)))

(declare-fun c!875921 () Bool)

(declare-fun lostCause!1201 (Regex!14005) Bool)

(assert (=> d!1649480 (= c!875921 (lostCause!1201 (regex!8530 rule!158)))))

(declare-fun lt!2094680 () Unit!149731)

(declare-fun Unit!149733 () Unit!149731)

(assert (=> d!1649480 (= lt!2094680 Unit!149733)))

(declare-fun getSuffix!3157 (List!58803 List!58803) List!58803)

(assert (=> d!1649480 (= (getSuffix!3157 input!1493 Nil!58679) input!1493)))

(declare-fun lt!2094681 () Unit!149731)

(declare-fun lt!2094697 () Unit!149731)

(assert (=> d!1649480 (= lt!2094681 lt!2094697)))

(declare-fun lt!2094688 () List!58803)

(assert (=> d!1649480 (= input!1493 lt!2094688)))

(declare-fun lemmaSamePrefixThenSameSuffix!2571 (List!58803 List!58803 List!58803 List!58803 List!58803) Unit!149731)

(assert (=> d!1649480 (= lt!2094697 (lemmaSamePrefixThenSameSuffix!2571 Nil!58679 input!1493 Nil!58679 lt!2094688 input!1493))))

(assert (=> d!1649480 (= lt!2094688 (getSuffix!3157 input!1493 Nil!58679))))

(declare-fun lt!2094676 () Unit!149731)

(declare-fun lt!2094692 () Unit!149731)

(assert (=> d!1649480 (= lt!2094676 lt!2094692)))

(declare-fun isPrefix!5415 (List!58803 List!58803) Bool)

(assert (=> d!1649480 (isPrefix!5415 Nil!58679 (++!12859 Nil!58679 input!1493))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3473 (List!58803 List!58803) Unit!149731)

(assert (=> d!1649480 (= lt!2094692 (lemmaConcatTwoListThenFirstIsPrefix!3473 Nil!58679 input!1493))))

(assert (=> d!1649480 (validRegex!6131 (regex!8530 rule!158))))

(assert (=> d!1649480 (= (findLongestMatchInner!2026 (regex!8530 rule!158) Nil!58679 (size!39307 Nil!58679) input!1493 input!1493 (size!39307 input!1493)) lt!2094686)))

(declare-fun b!5097593 () Bool)

(declare-fun e!3179200 () tuple2!63398)

(declare-fun e!3179199 () tuple2!63398)

(assert (=> b!5097593 (= e!3179200 e!3179199)))

(declare-fun lt!2094699 () tuple2!63398)

(assert (=> b!5097593 (= lt!2094699 call!354962)))

(declare-fun c!875919 () Bool)

(assert (=> b!5097593 (= c!875919 (isEmpty!31758 (_1!35002 lt!2094699)))))

(declare-fun b!5097594 () Bool)

(declare-fun c!875916 () Bool)

(declare-fun call!354969 () Bool)

(assert (=> b!5097594 (= c!875916 call!354969)))

(declare-fun lt!2094693 () Unit!149731)

(declare-fun lt!2094687 () Unit!149731)

(assert (=> b!5097594 (= lt!2094693 lt!2094687)))

(assert (=> b!5097594 (= input!1493 Nil!58679)))

(assert (=> b!5097594 (= lt!2094687 call!354966)))

(declare-fun lt!2094677 () Unit!149731)

(declare-fun lt!2094695 () Unit!149731)

(assert (=> b!5097594 (= lt!2094677 lt!2094695)))

(declare-fun call!354964 () Bool)

(assert (=> b!5097594 call!354964))

(assert (=> b!5097594 (= lt!2094695 call!354963)))

(declare-fun e!3179204 () tuple2!63398)

(assert (=> b!5097594 (= e!3179202 e!3179204)))

(declare-fun bm!354961 () Bool)

(assert (=> bm!354961 (= call!354969 (nullable!4706 (regex!8530 rule!158)))))

(declare-fun b!5097595 () Bool)

(declare-fun e!3179203 () Unit!149731)

(declare-fun Unit!149734 () Unit!149731)

(assert (=> b!5097595 (= e!3179203 Unit!149734)))

(declare-fun b!5097596 () Bool)

(declare-fun Unit!149735 () Unit!149731)

(assert (=> b!5097596 (= e!3179203 Unit!149735)))

(declare-fun lt!2094678 () Unit!149731)

(assert (=> b!5097596 (= lt!2094678 call!354963)))

(assert (=> b!5097596 call!354964))

(declare-fun lt!2094673 () Unit!149731)

(assert (=> b!5097596 (= lt!2094673 lt!2094678)))

(declare-fun lt!2094690 () Unit!149731)

(assert (=> b!5097596 (= lt!2094690 call!354966)))

(assert (=> b!5097596 (= input!1493 Nil!58679)))

(declare-fun lt!2094691 () Unit!149731)

(assert (=> b!5097596 (= lt!2094691 lt!2094690)))

(assert (=> b!5097596 false))

(declare-fun b!5097597 () Bool)

(declare-fun e!3179205 () Bool)

(assert (=> b!5097597 (= e!3179205 (>= (size!39307 (_1!35002 lt!2094686)) (size!39307 Nil!58679)))))

(declare-fun bm!354962 () Bool)

(declare-fun call!354968 () C!28268)

(assert (=> bm!354962 (= call!354968 (head!10828 input!1493))))

(declare-fun b!5097598 () Bool)

(assert (=> b!5097598 (= e!3179199 (tuple2!63399 Nil!58679 input!1493))))

(declare-fun b!5097599 () Bool)

(declare-fun c!875920 () Bool)

(assert (=> b!5097599 (= c!875920 call!354969)))

(declare-fun lt!2094679 () Unit!149731)

(declare-fun lt!2094684 () Unit!149731)

(assert (=> b!5097599 (= lt!2094679 lt!2094684)))

(declare-fun lt!2094698 () C!28268)

(declare-fun lt!2094674 () List!58803)

(assert (=> b!5097599 (= (++!12859 (++!12859 Nil!58679 (Cons!58679 lt!2094698 Nil!58679)) lt!2094674) input!1493)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1513 (List!58803 C!28268 List!58803 List!58803) Unit!149731)

(assert (=> b!5097599 (= lt!2094684 (lemmaMoveElementToOtherListKeepsConcatEq!1513 Nil!58679 lt!2094698 lt!2094674 input!1493))))

(assert (=> b!5097599 (= lt!2094674 (tail!9983 input!1493))))

(assert (=> b!5097599 (= lt!2094698 (head!10828 input!1493))))

(declare-fun lt!2094700 () Unit!149731)

(declare-fun lt!2094696 () Unit!149731)

(assert (=> b!5097599 (= lt!2094700 lt!2094696)))

(assert (=> b!5097599 (isPrefix!5415 (++!12859 Nil!58679 (Cons!58679 (head!10828 (getSuffix!3157 input!1493 Nil!58679)) Nil!58679)) input!1493)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!902 (List!58803 List!58803) Unit!149731)

(assert (=> b!5097599 (= lt!2094696 (lemmaAddHeadSuffixToPrefixStillPrefix!902 Nil!58679 input!1493))))

(declare-fun lt!2094694 () Unit!149731)

(declare-fun lt!2094675 () Unit!149731)

(assert (=> b!5097599 (= lt!2094694 lt!2094675)))

(assert (=> b!5097599 (= lt!2094675 (lemmaAddHeadSuffixToPrefixStillPrefix!902 Nil!58679 input!1493))))

(assert (=> b!5097599 (= lt!2094683 (++!12859 Nil!58679 (Cons!58679 (head!10828 input!1493) Nil!58679)))))

(declare-fun lt!2094689 () Unit!149731)

(assert (=> b!5097599 (= lt!2094689 e!3179203)))

(declare-fun c!875917 () Bool)

(assert (=> b!5097599 (= c!875917 (= (size!39307 Nil!58679) (size!39307 input!1493)))))

(declare-fun lt!2094685 () Unit!149731)

(declare-fun lt!2094682 () Unit!149731)

(assert (=> b!5097599 (= lt!2094685 lt!2094682)))

(assert (=> b!5097599 (<= (size!39307 Nil!58679) (size!39307 input!1493))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!828 (List!58803 List!58803) Unit!149731)

(assert (=> b!5097599 (= lt!2094682 (lemmaIsPrefixThenSmallerEqSize!828 Nil!58679 input!1493))))

(assert (=> b!5097599 (= e!3179202 e!3179200)))

(declare-fun b!5097600 () Bool)

(assert (=> b!5097600 (= e!3179204 (tuple2!63399 Nil!58679 Nil!58679))))

(declare-fun b!5097601 () Bool)

(assert (=> b!5097601 (= e!3179204 (tuple2!63399 Nil!58679 input!1493))))

(declare-fun bm!354963 () Bool)

(assert (=> bm!354963 (= call!354964 (isPrefix!5415 input!1493 input!1493))))

(declare-fun b!5097602 () Bool)

(assert (=> b!5097602 (= e!3179199 lt!2094699)))

(declare-fun b!5097603 () Bool)

(assert (=> b!5097603 (= e!3179200 call!354962)))

(declare-fun b!5097604 () Bool)

(assert (=> b!5097604 (= e!3179201 (tuple2!63399 Nil!58679 input!1493))))

(declare-fun b!5097605 () Bool)

(assert (=> b!5097605 (= e!3179206 e!3179205)))

(declare-fun res!2169509 () Bool)

(assert (=> b!5097605 (=> res!2169509 e!3179205)))

(assert (=> b!5097605 (= res!2169509 (isEmpty!31758 (_1!35002 lt!2094686)))))

(declare-fun bm!354964 () Bool)

(assert (=> bm!354964 (= call!354967 (derivativeStep!3992 (regex!8530 rule!158) call!354968))))

(assert (= (and d!1649480 c!875921) b!5097604))

(assert (= (and d!1649480 (not c!875921)) b!5097592))

(assert (= (and b!5097592 c!875918) b!5097594))

(assert (= (and b!5097592 (not c!875918)) b!5097599))

(assert (= (and b!5097594 c!875916) b!5097600))

(assert (= (and b!5097594 (not c!875916)) b!5097601))

(assert (= (and b!5097599 c!875917) b!5097596))

(assert (= (and b!5097599 (not c!875917)) b!5097595))

(assert (= (and b!5097599 c!875920) b!5097593))

(assert (= (and b!5097599 (not c!875920)) b!5097603))

(assert (= (and b!5097593 c!875919) b!5097598))

(assert (= (and b!5097593 (not c!875919)) b!5097602))

(assert (= (or b!5097593 b!5097603) bm!354962))

(assert (= (or b!5097593 b!5097603) bm!354959))

(assert (= (or b!5097593 b!5097603) bm!354964))

(assert (= (or b!5097593 b!5097603) bm!354960))

(assert (= (or b!5097594 b!5097596) bm!354958))

(assert (= (or b!5097594 b!5097596) bm!354963))

(assert (= (or b!5097594 b!5097599) bm!354961))

(assert (= (or b!5097594 b!5097596) bm!354957))

(assert (= (and d!1649480 res!2169510) b!5097605))

(assert (= (and b!5097605 (not res!2169509)) b!5097597))

(declare-fun m!6154804 () Bool)

(assert (=> bm!354958 m!6154804))

(assert (=> bm!354960 m!6154718))

(declare-fun m!6154806 () Bool)

(assert (=> bm!354960 m!6154806))

(declare-fun m!6154808 () Bool)

(assert (=> bm!354962 m!6154808))

(assert (=> b!5097599 m!6154716))

(declare-fun m!6154810 () Bool)

(assert (=> b!5097599 m!6154810))

(declare-fun m!6154812 () Bool)

(assert (=> b!5097599 m!6154812))

(declare-fun m!6154814 () Bool)

(assert (=> b!5097599 m!6154814))

(declare-fun m!6154816 () Bool)

(assert (=> b!5097599 m!6154816))

(declare-fun m!6154818 () Bool)

(assert (=> b!5097599 m!6154818))

(assert (=> b!5097599 m!6154816))

(declare-fun m!6154820 () Bool)

(assert (=> b!5097599 m!6154820))

(declare-fun m!6154822 () Bool)

(assert (=> b!5097599 m!6154822))

(declare-fun m!6154824 () Bool)

(assert (=> b!5097599 m!6154824))

(declare-fun m!6154826 () Bool)

(assert (=> b!5097599 m!6154826))

(assert (=> b!5097599 m!6154808))

(assert (=> b!5097599 m!6154812))

(assert (=> b!5097599 m!6154718))

(assert (=> b!5097599 m!6154824))

(declare-fun m!6154828 () Bool)

(assert (=> b!5097599 m!6154828))

(declare-fun m!6154830 () Bool)

(assert (=> b!5097599 m!6154830))

(declare-fun m!6154832 () Bool)

(assert (=> bm!354963 m!6154832))

(declare-fun m!6154834 () Bool)

(assert (=> b!5097593 m!6154834))

(assert (=> bm!354959 m!6154810))

(assert (=> bm!354961 m!6154736))

(declare-fun m!6154836 () Bool)

(assert (=> bm!354964 m!6154836))

(declare-fun m!6154838 () Bool)

(assert (=> b!5097597 m!6154838))

(assert (=> b!5097597 m!6154716))

(declare-fun m!6154840 () Bool)

(assert (=> bm!354957 m!6154840))

(declare-fun m!6154842 () Bool)

(assert (=> b!5097605 m!6154842))

(declare-fun m!6154844 () Bool)

(assert (=> d!1649480 m!6154844))

(declare-fun m!6154846 () Bool)

(assert (=> d!1649480 m!6154846))

(declare-fun m!6154848 () Bool)

(assert (=> d!1649480 m!6154848))

(declare-fun m!6154850 () Bool)

(assert (=> d!1649480 m!6154850))

(assert (=> d!1649480 m!6154824))

(assert (=> d!1649480 m!6154846))

(declare-fun m!6154852 () Bool)

(assert (=> d!1649480 m!6154852))

(declare-fun m!6154854 () Bool)

(assert (=> d!1649480 m!6154854))

(assert (=> d!1649480 m!6154734))

(assert (=> b!5097459 d!1649480))

(declare-fun d!1649488 () Bool)

(declare-fun e!3179241 () Bool)

(assert (=> d!1649488 e!3179241))

(declare-fun res!2169536 () Bool)

(assert (=> d!1649488 (=> res!2169536 e!3179241)))

(declare-fun lt!2094798 () Option!14647)

(declare-fun isEmpty!31759 (Option!14647) Bool)

(assert (=> d!1649488 (= res!2169536 (isEmpty!31759 lt!2094798))))

(declare-fun e!3179239 () Option!14647)

(assert (=> d!1649488 (= lt!2094798 e!3179239)))

(declare-fun c!875942 () Bool)

(declare-fun lt!2094797 () tuple2!63398)

(assert (=> d!1649488 (= c!875942 (isEmpty!31758 (_1!35002 lt!2094797)))))

(assert (=> d!1649488 (= lt!2094797 (findLongestMatch!1838 (regex!8530 rule!158) input!1493))))

(assert (=> d!1649488 (ruleValid!3922 thiss!15916 rule!158)))

(assert (=> d!1649488 (= (maxPrefixOneRule!3710 thiss!15916 rule!158 input!1493) lt!2094798)))

(declare-fun b!5097666 () Bool)

(declare-fun size!39308 (BalanceConc!30522) Int)

(assert (=> b!5097666 (= e!3179239 (Some!14646 (tuple2!63401 (Token!15481 (apply!14302 (transformation!8530 rule!158) (seqFromList!6120 (_1!35002 lt!2094797))) rule!158 (size!39308 (seqFromList!6120 (_1!35002 lt!2094797))) (_1!35002 lt!2094797)) (_2!35002 lt!2094797))))))

(declare-fun lt!2094795 () Unit!149731)

(assert (=> b!5097666 (= lt!2094795 (longestMatchIsAcceptedByMatchOrIsEmpty!1979 (regex!8530 rule!158) input!1493))))

(declare-fun res!2169537 () Bool)

(assert (=> b!5097666 (= res!2169537 (isEmpty!31758 (_1!35002 (findLongestMatchInner!2026 (regex!8530 rule!158) Nil!58679 (size!39307 Nil!58679) input!1493 input!1493 (size!39307 input!1493)))))))

(declare-fun e!3179240 () Bool)

(assert (=> b!5097666 (=> res!2169537 e!3179240)))

(assert (=> b!5097666 e!3179240))

(declare-fun lt!2094799 () Unit!149731)

(assert (=> b!5097666 (= lt!2094799 lt!2094795)))

(declare-fun lt!2094796 () Unit!149731)

(assert (=> b!5097666 (= lt!2094796 (lemmaSemiInverse!2652 (transformation!8530 rule!158) (seqFromList!6120 (_1!35002 lt!2094797))))))

(declare-fun b!5097667 () Bool)

(declare-fun e!3179242 () Bool)

(assert (=> b!5097667 (= e!3179241 e!3179242)))

(declare-fun res!2169532 () Bool)

(assert (=> b!5097667 (=> (not res!2169532) (not e!3179242))))

(declare-fun list!19150 (BalanceConc!30522) List!58803)

(declare-fun charsOf!5480 (Token!15480) BalanceConc!30522)

(declare-fun get!20364 (Option!14647) tuple2!63400)

(assert (=> b!5097667 (= res!2169532 (matchR!6802 (regex!8530 rule!158) (list!19150 (charsOf!5480 (_1!35003 (get!20364 lt!2094798))))))))

(declare-fun b!5097668 () Bool)

(declare-fun res!2169533 () Bool)

(assert (=> b!5097668 (=> (not res!2169533) (not e!3179242))))

(assert (=> b!5097668 (= res!2169533 (= (value!273405 (_1!35003 (get!20364 lt!2094798))) (apply!14302 (transformation!8530 (rule!11806 (_1!35003 (get!20364 lt!2094798)))) (seqFromList!6120 (originalCharacters!8771 (_1!35003 (get!20364 lt!2094798)))))))))

(declare-fun b!5097669 () Bool)

(declare-fun res!2169534 () Bool)

(assert (=> b!5097669 (=> (not res!2169534) (not e!3179242))))

(assert (=> b!5097669 (= res!2169534 (= (++!12859 (list!19150 (charsOf!5480 (_1!35003 (get!20364 lt!2094798)))) (_2!35003 (get!20364 lt!2094798))) input!1493))))

(declare-fun b!5097670 () Bool)

(assert (=> b!5097670 (= e!3179240 (matchR!6802 (regex!8530 rule!158) (_1!35002 (findLongestMatchInner!2026 (regex!8530 rule!158) Nil!58679 (size!39307 Nil!58679) input!1493 input!1493 (size!39307 input!1493)))))))

(declare-fun b!5097671 () Bool)

(assert (=> b!5097671 (= e!3179239 None!14646)))

(declare-fun b!5097672 () Bool)

(declare-fun res!2169531 () Bool)

(assert (=> b!5097672 (=> (not res!2169531) (not e!3179242))))

(assert (=> b!5097672 (= res!2169531 (< (size!39307 (_2!35003 (get!20364 lt!2094798))) (size!39307 input!1493)))))

(declare-fun b!5097673 () Bool)

(declare-fun res!2169535 () Bool)

(assert (=> b!5097673 (=> (not res!2169535) (not e!3179242))))

(assert (=> b!5097673 (= res!2169535 (= (rule!11806 (_1!35003 (get!20364 lt!2094798))) rule!158))))

(declare-fun b!5097674 () Bool)

(assert (=> b!5097674 (= e!3179242 (= (size!39306 (_1!35003 (get!20364 lt!2094798))) (size!39307 (originalCharacters!8771 (_1!35003 (get!20364 lt!2094798))))))))

(assert (= (and d!1649488 c!875942) b!5097671))

(assert (= (and d!1649488 (not c!875942)) b!5097666))

(assert (= (and b!5097666 (not res!2169537)) b!5097670))

(assert (= (and d!1649488 (not res!2169536)) b!5097667))

(assert (= (and b!5097667 res!2169532) b!5097669))

(assert (= (and b!5097669 res!2169534) b!5097672))

(assert (= (and b!5097672 res!2169531) b!5097673))

(assert (= (and b!5097673 res!2169535) b!5097668))

(assert (= (and b!5097668 res!2169533) b!5097674))

(declare-fun m!6154910 () Bool)

(assert (=> b!5097673 m!6154910))

(assert (=> b!5097670 m!6154716))

(assert (=> b!5097670 m!6154718))

(assert (=> b!5097670 m!6154716))

(assert (=> b!5097670 m!6154718))

(assert (=> b!5097670 m!6154720))

(declare-fun m!6154912 () Bool)

(assert (=> b!5097670 m!6154912))

(assert (=> b!5097669 m!6154910))

(declare-fun m!6154914 () Bool)

(assert (=> b!5097669 m!6154914))

(assert (=> b!5097669 m!6154914))

(declare-fun m!6154916 () Bool)

(assert (=> b!5097669 m!6154916))

(assert (=> b!5097669 m!6154916))

(declare-fun m!6154918 () Bool)

(assert (=> b!5097669 m!6154918))

(assert (=> b!5097667 m!6154910))

(assert (=> b!5097667 m!6154914))

(assert (=> b!5097667 m!6154914))

(assert (=> b!5097667 m!6154916))

(assert (=> b!5097667 m!6154916))

(declare-fun m!6154920 () Bool)

(assert (=> b!5097667 m!6154920))

(assert (=> b!5097666 m!6154718))

(declare-fun m!6154922 () Bool)

(assert (=> b!5097666 m!6154922))

(declare-fun m!6154924 () Bool)

(assert (=> b!5097666 m!6154924))

(assert (=> b!5097666 m!6154922))

(declare-fun m!6154926 () Bool)

(assert (=> b!5097666 m!6154926))

(assert (=> b!5097666 m!6154922))

(declare-fun m!6154928 () Bool)

(assert (=> b!5097666 m!6154928))

(assert (=> b!5097666 m!6154726))

(assert (=> b!5097666 m!6154716))

(declare-fun m!6154930 () Bool)

(assert (=> b!5097666 m!6154930))

(assert (=> b!5097666 m!6154716))

(assert (=> b!5097666 m!6154718))

(assert (=> b!5097666 m!6154720))

(assert (=> b!5097666 m!6154922))

(assert (=> b!5097672 m!6154910))

(declare-fun m!6154932 () Bool)

(assert (=> b!5097672 m!6154932))

(assert (=> b!5097672 m!6154718))

(assert (=> b!5097674 m!6154910))

(declare-fun m!6154934 () Bool)

(assert (=> b!5097674 m!6154934))

(assert (=> b!5097668 m!6154910))

(declare-fun m!6154936 () Bool)

(assert (=> b!5097668 m!6154936))

(assert (=> b!5097668 m!6154936))

(declare-fun m!6154938 () Bool)

(assert (=> b!5097668 m!6154938))

(declare-fun m!6154940 () Bool)

(assert (=> d!1649488 m!6154940))

(declare-fun m!6154942 () Bool)

(assert (=> d!1649488 m!6154942))

(assert (=> d!1649488 m!6154750))

(assert (=> d!1649488 m!6154702))

(assert (=> b!5097459 d!1649488))

(declare-fun b!5097689 () Bool)

(declare-fun e!3179251 () Bool)

(assert (=> b!5097689 (= e!3179251 true)))

(declare-fun d!1649496 () Bool)

(assert (=> d!1649496 e!3179251))

(assert (= d!1649496 b!5097689))

(declare-fun lambda!249922 () Int)

(declare-fun order!26771 () Int)

(declare-fun order!26769 () Int)

(declare-fun dynLambda!23578 (Int Int) Int)

(declare-fun dynLambda!23579 (Int Int) Int)

(assert (=> b!5097689 (< (dynLambda!23578 order!26769 (toValue!11557 (transformation!8530 rule!158))) (dynLambda!23579 order!26771 lambda!249922))))

(declare-fun order!26773 () Int)

(declare-fun dynLambda!23580 (Int Int) Int)

(assert (=> b!5097689 (< (dynLambda!23580 order!26773 (toChars!11416 (transformation!8530 rule!158))) (dynLambda!23579 order!26771 lambda!249922))))

(declare-fun dynLambda!23581 (Int TokenValue!8844) BalanceConc!30522)

(assert (=> d!1649496 (= (list!19150 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565))) (list!19150 lt!2094565))))

(declare-fun lt!2094805 () Unit!149731)

(declare-fun ForallOf!1292 (Int BalanceConc!30522) Unit!149731)

(assert (=> d!1649496 (= lt!2094805 (ForallOf!1292 lambda!249922 lt!2094565))))

(assert (=> d!1649496 (= (lemmaSemiInverse!2652 (transformation!8530 rule!158) lt!2094565) lt!2094805)))

(declare-fun b_lambda!198813 () Bool)

(assert (=> (not b_lambda!198813) (not d!1649496)))

(declare-fun t!371789 () Bool)

(declare-fun tb!261855 () Bool)

(assert (=> (and b!5097463 (= (toChars!11416 (transformation!8530 rule!158)) (toChars!11416 (transformation!8530 rule!158))) t!371789) tb!261855))

(declare-fun b!5097694 () Bool)

(declare-fun tp!1421489 () Bool)

(declare-fun e!3179254 () Bool)

(declare-fun inv!78185 (Conc!15702) Bool)

(assert (=> b!5097694 (= e!3179254 (and (inv!78185 (c!875885 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565)))) tp!1421489))))

(declare-fun result!328944 () Bool)

(declare-fun inv!78186 (BalanceConc!30522) Bool)

(assert (=> tb!261855 (= result!328944 (and (inv!78186 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565))) e!3179254))))

(assert (= tb!261855 b!5097694))

(declare-fun m!6154956 () Bool)

(assert (=> b!5097694 m!6154956))

(declare-fun m!6154958 () Bool)

(assert (=> tb!261855 m!6154958))

(assert (=> d!1649496 t!371789))

(declare-fun b_and!350439 () Bool)

(assert (= b_and!350429 (and (=> t!371789 result!328944) b_and!350439)))

(declare-fun b_lambda!198815 () Bool)

(assert (=> (not b_lambda!198815) (not d!1649496)))

(assert (=> d!1649496 t!371783))

(declare-fun b_and!350441 () Bool)

(assert (= b_and!350431 (and (=> t!371783 result!328932) b_and!350441)))

(declare-fun m!6154960 () Bool)

(assert (=> d!1649496 m!6154960))

(declare-fun m!6154962 () Bool)

(assert (=> d!1649496 m!6154962))

(assert (=> d!1649496 m!6154772))

(declare-fun m!6154964 () Bool)

(assert (=> d!1649496 m!6154964))

(assert (=> d!1649496 m!6154772))

(assert (=> d!1649496 m!6154960))

(declare-fun m!6154966 () Bool)

(assert (=> d!1649496 m!6154966))

(assert (=> b!5097459 d!1649496))

(declare-fun d!1649500 () Bool)

(declare-fun lt!2094808 () Int)

(assert (=> d!1649500 (>= lt!2094808 0)))

(declare-fun e!3179257 () Int)

(assert (=> d!1649500 (= lt!2094808 e!3179257)))

(declare-fun c!875947 () Bool)

(assert (=> d!1649500 (= c!875947 ((_ is Nil!58679) (_1!35002 lt!2094567)))))

(assert (=> d!1649500 (= (size!39307 (_1!35002 lt!2094567)) lt!2094808)))

(declare-fun b!5097699 () Bool)

(assert (=> b!5097699 (= e!3179257 0)))

(declare-fun b!5097700 () Bool)

(assert (=> b!5097700 (= e!3179257 (+ 1 (size!39307 (t!371780 (_1!35002 lt!2094567)))))))

(assert (= (and d!1649500 c!875947) b!5097699))

(assert (= (and d!1649500 (not c!875947)) b!5097700))

(declare-fun m!6154968 () Bool)

(assert (=> b!5097700 m!6154968))

(assert (=> b!5097459 d!1649500))

(declare-fun d!1649502 () Bool)

(declare-fun e!3179260 () Bool)

(assert (=> d!1649502 e!3179260))

(declare-fun res!2169540 () Bool)

(assert (=> d!1649502 (=> res!2169540 e!3179260)))

(assert (=> d!1649502 (= res!2169540 (isEmpty!31758 (_1!35002 (findLongestMatchInner!2026 (regex!8530 rule!158) Nil!58679 (size!39307 Nil!58679) input!1493 input!1493 (size!39307 input!1493)))))))

(declare-fun lt!2094811 () Unit!149731)

(declare-fun choose!37335 (Regex!14005 List!58803) Unit!149731)

(assert (=> d!1649502 (= lt!2094811 (choose!37335 (regex!8530 rule!158) input!1493))))

(assert (=> d!1649502 (validRegex!6131 (regex!8530 rule!158))))

(assert (=> d!1649502 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1979 (regex!8530 rule!158) input!1493) lt!2094811)))

(declare-fun b!5097703 () Bool)

(assert (=> b!5097703 (= e!3179260 (matchR!6802 (regex!8530 rule!158) (_1!35002 (findLongestMatchInner!2026 (regex!8530 rule!158) Nil!58679 (size!39307 Nil!58679) input!1493 input!1493 (size!39307 input!1493)))))))

(assert (= (and d!1649502 (not res!2169540)) b!5097703))

(assert (=> d!1649502 m!6154716))

(assert (=> d!1649502 m!6154718))

(assert (=> d!1649502 m!6154720))

(assert (=> d!1649502 m!6154930))

(assert (=> d!1649502 m!6154734))

(assert (=> d!1649502 m!6154716))

(declare-fun m!6154970 () Bool)

(assert (=> d!1649502 m!6154970))

(assert (=> d!1649502 m!6154718))

(assert (=> b!5097703 m!6154716))

(assert (=> b!5097703 m!6154718))

(assert (=> b!5097703 m!6154716))

(assert (=> b!5097703 m!6154718))

(assert (=> b!5097703 m!6154720))

(assert (=> b!5097703 m!6154912))

(assert (=> b!5097459 d!1649502))

(declare-fun d!1649504 () Bool)

(assert (=> d!1649504 (= (isEmpty!31758 (_1!35002 lt!2094566)) ((_ is Nil!58679) (_1!35002 lt!2094566)))))

(assert (=> b!5097459 d!1649504))

(declare-fun d!1649506 () Bool)

(declare-fun e!3179271 () Bool)

(assert (=> d!1649506 e!3179271))

(declare-fun res!2169557 () Bool)

(assert (=> d!1649506 (=> (not res!2169557) (not e!3179271))))

(assert (=> d!1649506 (= res!2169557 (semiInverseModEq!3799 (toChars!11416 (transformation!8530 rule!158)) (toValue!11557 (transformation!8530 rule!158))))))

(declare-fun Unit!149737 () Unit!149731)

(assert (=> d!1649506 (= (lemmaInv!1418 (transformation!8530 rule!158)) Unit!149737)))

(declare-fun b!5097724 () Bool)

(assert (=> b!5097724 (= e!3179271 (equivClasses!3614 (toChars!11416 (transformation!8530 rule!158)) (toValue!11557 (transformation!8530 rule!158))))))

(assert (= (and d!1649506 res!2169557) b!5097724))

(assert (=> d!1649506 m!6154764))

(assert (=> b!5097724 m!6154766))

(assert (=> b!5097459 d!1649506))

(declare-fun d!1649508 () Bool)

(declare-fun lt!2094822 () Int)

(assert (=> d!1649508 (>= lt!2094822 0)))

(declare-fun e!3179272 () Int)

(assert (=> d!1649508 (= lt!2094822 e!3179272)))

(declare-fun c!875950 () Bool)

(assert (=> d!1649508 (= c!875950 ((_ is Nil!58679) input!1493))))

(assert (=> d!1649508 (= (size!39307 input!1493) lt!2094822)))

(declare-fun b!5097725 () Bool)

(assert (=> b!5097725 (= e!3179272 0)))

(declare-fun b!5097726 () Bool)

(assert (=> b!5097726 (= e!3179272 (+ 1 (size!39307 (t!371780 input!1493))))))

(assert (= (and d!1649508 c!875950) b!5097725))

(assert (= (and d!1649508 (not c!875950)) b!5097726))

(declare-fun m!6154972 () Bool)

(assert (=> b!5097726 m!6154972))

(assert (=> b!5097459 d!1649508))

(declare-fun d!1649510 () Bool)

(declare-fun lt!2094823 () Int)

(assert (=> d!1649510 (>= lt!2094823 0)))

(declare-fun e!3179273 () Int)

(assert (=> d!1649510 (= lt!2094823 e!3179273)))

(declare-fun c!875951 () Bool)

(assert (=> d!1649510 (= c!875951 ((_ is Nil!58679) Nil!58679))))

(assert (=> d!1649510 (= (size!39307 Nil!58679) lt!2094823)))

(declare-fun b!5097727 () Bool)

(assert (=> b!5097727 (= e!3179273 0)))

(declare-fun b!5097728 () Bool)

(assert (=> b!5097728 (= e!3179273 (+ 1 (size!39307 (t!371780 Nil!58679))))))

(assert (= (and d!1649510 c!875951) b!5097727))

(assert (= (and d!1649510 (not c!875951)) b!5097728))

(declare-fun m!6154974 () Bool)

(assert (=> b!5097728 m!6154974))

(assert (=> b!5097459 d!1649510))

(declare-fun b!5097733 () Bool)

(declare-fun e!3179276 () Bool)

(declare-fun tp!1421492 () Bool)

(assert (=> b!5097733 (= e!3179276 (and tp_is_empty!37275 tp!1421492))))

(assert (=> b!5097461 (= tp!1421480 e!3179276)))

(assert (= (and b!5097461 ((_ is Cons!58679) (t!371780 input!1493))) b!5097733))

(declare-fun b!5097744 () Bool)

(declare-fun e!3179279 () Bool)

(assert (=> b!5097744 (= e!3179279 tp_is_empty!37275)))

(declare-fun b!5097746 () Bool)

(declare-fun tp!1421505 () Bool)

(assert (=> b!5097746 (= e!3179279 tp!1421505)))

(declare-fun b!5097745 () Bool)

(declare-fun tp!1421506 () Bool)

(declare-fun tp!1421504 () Bool)

(assert (=> b!5097745 (= e!3179279 (and tp!1421506 tp!1421504))))

(declare-fun b!5097747 () Bool)

(declare-fun tp!1421503 () Bool)

(declare-fun tp!1421507 () Bool)

(assert (=> b!5097747 (= e!3179279 (and tp!1421503 tp!1421507))))

(assert (=> b!5097458 (= tp!1421483 e!3179279)))

(assert (= (and b!5097458 ((_ is ElementMatch!14005) (regex!8530 rule!158))) b!5097744))

(assert (= (and b!5097458 ((_ is Concat!22849) (regex!8530 rule!158))) b!5097745))

(assert (= (and b!5097458 ((_ is Star!14005) (regex!8530 rule!158))) b!5097746))

(assert (= (and b!5097458 ((_ is Union!14005) (regex!8530 rule!158))) b!5097747))

(declare-fun b_lambda!198817 () Bool)

(assert (= b_lambda!198805 (or (and b!5097463 b_free!133511) b_lambda!198817)))

(declare-fun b_lambda!198819 () Bool)

(assert (= b_lambda!198813 (or (and b!5097463 b_free!133513) b_lambda!198819)))

(declare-fun b_lambda!198821 () Bool)

(assert (= b_lambda!198815 (or (and b!5097463 b_free!133511) b_lambda!198821)))

(check-sat b_and!350441 (not b_next!134301) (not d!1649480) (not b!5097674) (not d!1649502) (not b!5097745) (not bm!354964) (not d!1649468) (not d!1649460) (not b!5097505) (not b!5097746) (not bm!354959) (not b!5097513) (not b!5097700) (not b!5097666) (not b!5097728) (not d!1649506) (not bm!354962) (not bm!354957) (not b!5097694) (not b!5097514) (not b!5097747) (not tb!261855) (not b_lambda!198821) (not b!5097667) (not b_lambda!198817) (not b!5097597) (not bm!354963) (not b!5097668) (not b!5097673) (not b_next!134303) (not b!5097605) (not bm!354961) (not b!5097517) (not b!5097670) b_and!350439 (not d!1649488) (not b!5097593) (not b_lambda!198819) (not b!5097501) (not b!5097508) tp_is_empty!37275 (not tb!261849) (not b!5097672) (not bm!354960) (not bm!354937) (not b!5097733) (not bm!354958) (not b!5097703) (not b!5097468) (not d!1649474) (not d!1649496) (not b!5097599) (not d!1649476) (not b!5097724) (not b!5097726) (not b!5097511) (not d!1649456) (not b!5097669))
(check-sat b_and!350439 b_and!350441 (not b_next!134301) (not b_next!134303))
(get-model)

(declare-fun d!1649524 () Bool)

(assert (=> d!1649524 (= (isEmpty!31758 (_1!35002 lt!2094699)) ((_ is Nil!58679) (_1!35002 lt!2094699)))))

(assert (=> b!5097593 d!1649524))

(assert (=> bm!354937 d!1649504))

(declare-fun d!1649526 () Bool)

(declare-fun nullableFct!1276 (Regex!14005) Bool)

(assert (=> d!1649526 (= (nullable!4706 (regex!8530 rule!158)) (nullableFct!1276 (regex!8530 rule!158)))))

(declare-fun bs!1191398 () Bool)

(assert (= bs!1191398 d!1649526))

(declare-fun m!6155018 () Bool)

(assert (=> bs!1191398 m!6155018))

(assert (=> b!5097468 d!1649526))

(declare-fun b!5097808 () Bool)

(declare-fun e!3179312 () Bool)

(declare-fun inv!15 (TokenValue!8844) Bool)

(assert (=> b!5097808 (= e!3179312 (inv!15 (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565)))))

(declare-fun b!5097809 () Bool)

(declare-fun res!2169579 () Bool)

(assert (=> b!5097809 (=> res!2169579 e!3179312)))

(assert (=> b!5097809 (= res!2169579 (not ((_ is IntegerValue!26534) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565))))))

(declare-fun e!3179310 () Bool)

(assert (=> b!5097809 (= e!3179310 e!3179312)))

(declare-fun b!5097810 () Bool)

(declare-fun e!3179311 () Bool)

(assert (=> b!5097810 (= e!3179311 e!3179310)))

(declare-fun c!875962 () Bool)

(assert (=> b!5097810 (= c!875962 ((_ is IntegerValue!26533) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565)))))

(declare-fun b!5097812 () Bool)

(declare-fun inv!17 (TokenValue!8844) Bool)

(assert (=> b!5097812 (= e!3179310 (inv!17 (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565)))))

(declare-fun b!5097811 () Bool)

(declare-fun inv!16 (TokenValue!8844) Bool)

(assert (=> b!5097811 (= e!3179311 (inv!16 (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565)))))

(declare-fun d!1649528 () Bool)

(declare-fun c!875963 () Bool)

(assert (=> d!1649528 (= c!875963 ((_ is IntegerValue!26532) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565)))))

(assert (=> d!1649528 (= (inv!21 (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565)) e!3179311)))

(assert (= (and d!1649528 c!875963) b!5097811))

(assert (= (and d!1649528 (not c!875963)) b!5097810))

(assert (= (and b!5097810 c!875962) b!5097812))

(assert (= (and b!5097810 (not c!875962)) b!5097809))

(assert (= (and b!5097809 (not res!2169579)) b!5097808))

(declare-fun m!6155020 () Bool)

(assert (=> b!5097808 m!6155020))

(declare-fun m!6155022 () Bool)

(assert (=> b!5097812 m!6155022))

(declare-fun m!6155024 () Bool)

(assert (=> b!5097811 m!6155024))

(assert (=> tb!261849 d!1649528))

(declare-fun d!1649530 () Bool)

(declare-fun list!19152 (Conc!15702) List!58803)

(assert (=> d!1649530 (= (list!19150 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565))) (list!19152 (c!875885 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565)))))))

(declare-fun bs!1191399 () Bool)

(assert (= bs!1191399 d!1649530))

(declare-fun m!6155026 () Bool)

(assert (=> bs!1191399 m!6155026))

(assert (=> d!1649496 d!1649530))

(declare-fun d!1649532 () Bool)

(assert (=> d!1649532 (= (list!19150 lt!2094565) (list!19152 (c!875885 lt!2094565)))))

(declare-fun bs!1191400 () Bool)

(assert (= bs!1191400 d!1649532))

(declare-fun m!6155028 () Bool)

(assert (=> bs!1191400 m!6155028))

(assert (=> d!1649496 d!1649532))

(declare-fun d!1649534 () Bool)

(declare-fun dynLambda!23586 (Int BalanceConc!30522) Bool)

(assert (=> d!1649534 (dynLambda!23586 lambda!249922 lt!2094565)))

(declare-fun lt!2094839 () Unit!149731)

(declare-fun choose!37337 (Int BalanceConc!30522) Unit!149731)

(assert (=> d!1649534 (= lt!2094839 (choose!37337 lambda!249922 lt!2094565))))

(declare-fun Forall!1835 (Int) Bool)

(assert (=> d!1649534 (Forall!1835 lambda!249922)))

(assert (=> d!1649534 (= (ForallOf!1292 lambda!249922 lt!2094565) lt!2094839)))

(declare-fun b_lambda!198829 () Bool)

(assert (=> (not b_lambda!198829) (not d!1649534)))

(declare-fun bs!1191401 () Bool)

(assert (= bs!1191401 d!1649534))

(declare-fun m!6155030 () Bool)

(assert (=> bs!1191401 m!6155030))

(declare-fun m!6155032 () Bool)

(assert (=> bs!1191401 m!6155032))

(declare-fun m!6155034 () Bool)

(assert (=> bs!1191401 m!6155034))

(assert (=> d!1649496 d!1649534))

(declare-fun b!5097831 () Bool)

(declare-fun e!3179329 () Bool)

(declare-fun e!3179333 () Bool)

(assert (=> b!5097831 (= e!3179329 e!3179333)))

(declare-fun res!2169593 () Bool)

(assert (=> b!5097831 (= res!2169593 (not (nullable!4706 (reg!14334 (regex!8530 rule!158)))))))

(assert (=> b!5097831 (=> (not res!2169593) (not e!3179333))))

(declare-fun b!5097832 () Bool)

(declare-fun res!2169590 () Bool)

(declare-fun e!3179327 () Bool)

(assert (=> b!5097832 (=> res!2169590 e!3179327)))

(assert (=> b!5097832 (= res!2169590 (not ((_ is Concat!22849) (regex!8530 rule!158))))))

(declare-fun e!3179330 () Bool)

(assert (=> b!5097832 (= e!3179330 e!3179327)))

(declare-fun b!5097833 () Bool)

(declare-fun e!3179332 () Bool)

(declare-fun call!355002 () Bool)

(assert (=> b!5097833 (= e!3179332 call!355002)))

(declare-fun b!5097834 () Bool)

(declare-fun call!355001 () Bool)

(assert (=> b!5097834 (= e!3179333 call!355001)))

(declare-fun bm!354995 () Bool)

(declare-fun c!875968 () Bool)

(assert (=> bm!354995 (= call!355002 (validRegex!6131 (ite c!875968 (regTwo!28523 (regex!8530 rule!158)) (regOne!28522 (regex!8530 rule!158)))))))

(declare-fun b!5097836 () Bool)

(declare-fun res!2169592 () Bool)

(assert (=> b!5097836 (=> (not res!2169592) (not e!3179332))))

(declare-fun call!355000 () Bool)

(assert (=> b!5097836 (= res!2169592 call!355000)))

(assert (=> b!5097836 (= e!3179330 e!3179332)))

(declare-fun bm!354996 () Bool)

(declare-fun c!875969 () Bool)

(assert (=> bm!354996 (= call!355001 (validRegex!6131 (ite c!875969 (reg!14334 (regex!8530 rule!158)) (ite c!875968 (regOne!28523 (regex!8530 rule!158)) (regTwo!28522 (regex!8530 rule!158))))))))

(declare-fun b!5097837 () Bool)

(declare-fun e!3179331 () Bool)

(assert (=> b!5097837 (= e!3179331 call!355000)))

(declare-fun b!5097838 () Bool)

(assert (=> b!5097838 (= e!3179329 e!3179330)))

(assert (=> b!5097838 (= c!875968 ((_ is Union!14005) (regex!8530 rule!158)))))

(declare-fun bm!354997 () Bool)

(assert (=> bm!354997 (= call!355000 call!355001)))

(declare-fun b!5097839 () Bool)

(declare-fun e!3179328 () Bool)

(assert (=> b!5097839 (= e!3179328 e!3179329)))

(assert (=> b!5097839 (= c!875969 ((_ is Star!14005) (regex!8530 rule!158)))))

(declare-fun b!5097835 () Bool)

(assert (=> b!5097835 (= e!3179327 e!3179331)))

(declare-fun res!2169594 () Bool)

(assert (=> b!5097835 (=> (not res!2169594) (not e!3179331))))

(assert (=> b!5097835 (= res!2169594 call!355002)))

(declare-fun d!1649536 () Bool)

(declare-fun res!2169591 () Bool)

(assert (=> d!1649536 (=> res!2169591 e!3179328)))

(assert (=> d!1649536 (= res!2169591 ((_ is ElementMatch!14005) (regex!8530 rule!158)))))

(assert (=> d!1649536 (= (validRegex!6131 (regex!8530 rule!158)) e!3179328)))

(assert (= (and d!1649536 (not res!2169591)) b!5097839))

(assert (= (and b!5097839 c!875969) b!5097831))

(assert (= (and b!5097839 (not c!875969)) b!5097838))

(assert (= (and b!5097831 res!2169593) b!5097834))

(assert (= (and b!5097838 c!875968) b!5097836))

(assert (= (and b!5097838 (not c!875968)) b!5097832))

(assert (= (and b!5097836 res!2169592) b!5097833))

(assert (= (and b!5097832 (not res!2169590)) b!5097835))

(assert (= (and b!5097835 res!2169594) b!5097837))

(assert (= (or b!5097836 b!5097837) bm!354997))

(assert (= (or b!5097833 b!5097835) bm!354995))

(assert (= (or b!5097834 bm!354997) bm!354996))

(declare-fun m!6155036 () Bool)

(assert (=> b!5097831 m!6155036))

(declare-fun m!6155038 () Bool)

(assert (=> bm!354995 m!6155038))

(declare-fun m!6155040 () Bool)

(assert (=> bm!354996 m!6155040))

(assert (=> d!1649502 d!1649536))

(assert (=> d!1649502 d!1649480))

(declare-fun d!1649538 () Bool)

(declare-fun e!3179336 () Bool)

(assert (=> d!1649538 e!3179336))

(declare-fun res!2169597 () Bool)

(assert (=> d!1649538 (=> res!2169597 e!3179336)))

(assert (=> d!1649538 (= res!2169597 (isEmpty!31758 (_1!35002 (findLongestMatchInner!2026 (regex!8530 rule!158) Nil!58679 (size!39307 Nil!58679) input!1493 input!1493 (size!39307 input!1493)))))))

(assert (=> d!1649538 true))

(declare-fun _$92!584 () Unit!149731)

(assert (=> d!1649538 (= (choose!37335 (regex!8530 rule!158) input!1493) _$92!584)))

(declare-fun b!5097842 () Bool)

(assert (=> b!5097842 (= e!3179336 (matchR!6802 (regex!8530 rule!158) (_1!35002 (findLongestMatchInner!2026 (regex!8530 rule!158) Nil!58679 (size!39307 Nil!58679) input!1493 input!1493 (size!39307 input!1493)))))))

(assert (= (and d!1649538 (not res!2169597)) b!5097842))

(assert (=> d!1649538 m!6154716))

(assert (=> d!1649538 m!6154718))

(assert (=> d!1649538 m!6154716))

(assert (=> d!1649538 m!6154718))

(assert (=> d!1649538 m!6154720))

(assert (=> d!1649538 m!6154930))

(assert (=> b!5097842 m!6154716))

(assert (=> b!5097842 m!6154718))

(assert (=> b!5097842 m!6154716))

(assert (=> b!5097842 m!6154718))

(assert (=> b!5097842 m!6154720))

(assert (=> b!5097842 m!6154912))

(assert (=> d!1649502 d!1649538))

(declare-fun d!1649540 () Bool)

(assert (=> d!1649540 (= (isEmpty!31758 (_1!35002 (findLongestMatchInner!2026 (regex!8530 rule!158) Nil!58679 (size!39307 Nil!58679) input!1493 input!1493 (size!39307 input!1493)))) ((_ is Nil!58679) (_1!35002 (findLongestMatchInner!2026 (regex!8530 rule!158) Nil!58679 (size!39307 Nil!58679) input!1493 input!1493 (size!39307 input!1493)))))))

(assert (=> d!1649502 d!1649540))

(assert (=> d!1649502 d!1649508))

(assert (=> d!1649502 d!1649510))

(declare-fun d!1649542 () Bool)

(assert (not d!1649542))

(assert (=> b!5097728 d!1649542))

(declare-fun d!1649544 () Bool)

(assert (=> d!1649544 (= (get!20364 lt!2094798) (v!50659 lt!2094798))))

(assert (=> b!5097674 d!1649544))

(declare-fun d!1649546 () Bool)

(declare-fun lt!2094840 () Int)

(assert (=> d!1649546 (>= lt!2094840 0)))

(declare-fun e!3179337 () Int)

(assert (=> d!1649546 (= lt!2094840 e!3179337)))

(declare-fun c!875970 () Bool)

(assert (=> d!1649546 (= c!875970 ((_ is Nil!58679) (originalCharacters!8771 (_1!35003 (get!20364 lt!2094798)))))))

(assert (=> d!1649546 (= (size!39307 (originalCharacters!8771 (_1!35003 (get!20364 lt!2094798)))) lt!2094840)))

(declare-fun b!5097843 () Bool)

(assert (=> b!5097843 (= e!3179337 0)))

(declare-fun b!5097844 () Bool)

(assert (=> b!5097844 (= e!3179337 (+ 1 (size!39307 (t!371780 (originalCharacters!8771 (_1!35003 (get!20364 lt!2094798)))))))))

(assert (= (and d!1649546 c!875970) b!5097843))

(assert (= (and d!1649546 (not c!875970)) b!5097844))

(declare-fun m!6155042 () Bool)

(assert (=> b!5097844 m!6155042))

(assert (=> b!5097674 d!1649546))

(declare-fun bm!354998 () Bool)

(declare-fun call!355007 () Unit!149731)

(assert (=> bm!354998 (= call!355007 (lemmaIsPrefixSameLengthThenSameList!1292 input!1493 lt!2094683 input!1493))))

(declare-fun bm!354999 () Bool)

(declare-fun call!355004 () Unit!149731)

(assert (=> bm!354999 (= call!355004 (lemmaIsPrefixRefl!3674 input!1493 input!1493))))

(declare-fun bm!355000 () Bool)

(declare-fun call!355006 () List!58803)

(assert (=> bm!355000 (= call!355006 (tail!9983 call!354965))))

(declare-fun b!5097845 () Bool)

(declare-fun e!3179340 () tuple2!63398)

(declare-fun e!3179341 () tuple2!63398)

(assert (=> b!5097845 (= e!3179340 e!3179341)))

(declare-fun c!875973 () Bool)

(assert (=> b!5097845 (= c!875973 (= (+ (size!39307 Nil!58679) 1) (size!39307 input!1493)))))

(declare-fun call!355003 () tuple2!63398)

(declare-fun bm!355001 () Bool)

(declare-fun call!355008 () Regex!14005)

(declare-fun lt!2094851 () List!58803)

(assert (=> bm!355001 (= call!355003 (findLongestMatchInner!2026 call!355008 lt!2094851 (+ (size!39307 Nil!58679) 1 1) call!355006 input!1493 (size!39307 input!1493)))))

(declare-fun d!1649548 () Bool)

(declare-fun e!3179345 () Bool)

(assert (=> d!1649548 e!3179345))

(declare-fun res!2169599 () Bool)

(assert (=> d!1649548 (=> (not res!2169599) (not e!3179345))))

(declare-fun lt!2094854 () tuple2!63398)

(assert (=> d!1649548 (= res!2169599 (= (++!12859 (_1!35002 lt!2094854) (_2!35002 lt!2094854)) input!1493))))

(assert (=> d!1649548 (= lt!2094854 e!3179340)))

(declare-fun c!875976 () Bool)

(assert (=> d!1649548 (= c!875976 (lostCause!1201 call!354967))))

(declare-fun lt!2094848 () Unit!149731)

(declare-fun Unit!149741 () Unit!149731)

(assert (=> d!1649548 (= lt!2094848 Unit!149741)))

(assert (=> d!1649548 (= (getSuffix!3157 input!1493 lt!2094683) call!354965)))

(declare-fun lt!2094849 () Unit!149731)

(declare-fun lt!2094865 () Unit!149731)

(assert (=> d!1649548 (= lt!2094849 lt!2094865)))

(declare-fun lt!2094856 () List!58803)

(assert (=> d!1649548 (= call!354965 lt!2094856)))

(assert (=> d!1649548 (= lt!2094865 (lemmaSamePrefixThenSameSuffix!2571 lt!2094683 call!354965 lt!2094683 lt!2094856 input!1493))))

(assert (=> d!1649548 (= lt!2094856 (getSuffix!3157 input!1493 lt!2094683))))

(declare-fun lt!2094844 () Unit!149731)

(declare-fun lt!2094860 () Unit!149731)

(assert (=> d!1649548 (= lt!2094844 lt!2094860)))

(assert (=> d!1649548 (isPrefix!5415 lt!2094683 (++!12859 lt!2094683 call!354965))))

(assert (=> d!1649548 (= lt!2094860 (lemmaConcatTwoListThenFirstIsPrefix!3473 lt!2094683 call!354965))))

(assert (=> d!1649548 (validRegex!6131 call!354967)))

(assert (=> d!1649548 (= (findLongestMatchInner!2026 call!354967 lt!2094683 (+ (size!39307 Nil!58679) 1) call!354965 input!1493 (size!39307 input!1493)) lt!2094854)))

(declare-fun b!5097846 () Bool)

(declare-fun e!3179339 () tuple2!63398)

(declare-fun e!3179338 () tuple2!63398)

(assert (=> b!5097846 (= e!3179339 e!3179338)))

(declare-fun lt!2094867 () tuple2!63398)

(assert (=> b!5097846 (= lt!2094867 call!355003)))

(declare-fun c!875974 () Bool)

(assert (=> b!5097846 (= c!875974 (isEmpty!31758 (_1!35002 lt!2094867)))))

(declare-fun b!5097847 () Bool)

(declare-fun c!875971 () Bool)

(declare-fun call!355010 () Bool)

(assert (=> b!5097847 (= c!875971 call!355010)))

(declare-fun lt!2094861 () Unit!149731)

(declare-fun lt!2094855 () Unit!149731)

(assert (=> b!5097847 (= lt!2094861 lt!2094855)))

(assert (=> b!5097847 (= input!1493 lt!2094683)))

(assert (=> b!5097847 (= lt!2094855 call!355007)))

(declare-fun lt!2094845 () Unit!149731)

(declare-fun lt!2094863 () Unit!149731)

(assert (=> b!5097847 (= lt!2094845 lt!2094863)))

(declare-fun call!355005 () Bool)

(assert (=> b!5097847 call!355005))

(assert (=> b!5097847 (= lt!2094863 call!355004)))

(declare-fun e!3179343 () tuple2!63398)

(assert (=> b!5097847 (= e!3179341 e!3179343)))

(declare-fun bm!355002 () Bool)

(assert (=> bm!355002 (= call!355010 (nullable!4706 call!354967))))

(declare-fun b!5097848 () Bool)

(declare-fun e!3179342 () Unit!149731)

(declare-fun Unit!149742 () Unit!149731)

(assert (=> b!5097848 (= e!3179342 Unit!149742)))

(declare-fun b!5097849 () Bool)

(declare-fun Unit!149743 () Unit!149731)

(assert (=> b!5097849 (= e!3179342 Unit!149743)))

(declare-fun lt!2094846 () Unit!149731)

(assert (=> b!5097849 (= lt!2094846 call!355004)))

(assert (=> b!5097849 call!355005))

(declare-fun lt!2094841 () Unit!149731)

(assert (=> b!5097849 (= lt!2094841 lt!2094846)))

(declare-fun lt!2094858 () Unit!149731)

(assert (=> b!5097849 (= lt!2094858 call!355007)))

(assert (=> b!5097849 (= input!1493 lt!2094683)))

(declare-fun lt!2094859 () Unit!149731)

(assert (=> b!5097849 (= lt!2094859 lt!2094858)))

(assert (=> b!5097849 false))

(declare-fun b!5097850 () Bool)

(declare-fun e!3179344 () Bool)

(assert (=> b!5097850 (= e!3179344 (>= (size!39307 (_1!35002 lt!2094854)) (size!39307 lt!2094683)))))

(declare-fun bm!355003 () Bool)

(declare-fun call!355009 () C!28268)

(assert (=> bm!355003 (= call!355009 (head!10828 call!354965))))

(declare-fun b!5097851 () Bool)

(assert (=> b!5097851 (= e!3179338 (tuple2!63399 lt!2094683 call!354965))))

(declare-fun b!5097852 () Bool)

(declare-fun c!875975 () Bool)

(assert (=> b!5097852 (= c!875975 call!355010)))

(declare-fun lt!2094847 () Unit!149731)

(declare-fun lt!2094852 () Unit!149731)

(assert (=> b!5097852 (= lt!2094847 lt!2094852)))

(declare-fun lt!2094842 () List!58803)

(declare-fun lt!2094866 () C!28268)

(assert (=> b!5097852 (= (++!12859 (++!12859 lt!2094683 (Cons!58679 lt!2094866 Nil!58679)) lt!2094842) input!1493)))

(assert (=> b!5097852 (= lt!2094852 (lemmaMoveElementToOtherListKeepsConcatEq!1513 lt!2094683 lt!2094866 lt!2094842 input!1493))))

(assert (=> b!5097852 (= lt!2094842 (tail!9983 call!354965))))

(assert (=> b!5097852 (= lt!2094866 (head!10828 call!354965))))

(declare-fun lt!2094868 () Unit!149731)

(declare-fun lt!2094864 () Unit!149731)

(assert (=> b!5097852 (= lt!2094868 lt!2094864)))

(assert (=> b!5097852 (isPrefix!5415 (++!12859 lt!2094683 (Cons!58679 (head!10828 (getSuffix!3157 input!1493 lt!2094683)) Nil!58679)) input!1493)))

(assert (=> b!5097852 (= lt!2094864 (lemmaAddHeadSuffixToPrefixStillPrefix!902 lt!2094683 input!1493))))

(declare-fun lt!2094862 () Unit!149731)

(declare-fun lt!2094843 () Unit!149731)

(assert (=> b!5097852 (= lt!2094862 lt!2094843)))

(assert (=> b!5097852 (= lt!2094843 (lemmaAddHeadSuffixToPrefixStillPrefix!902 lt!2094683 input!1493))))

(assert (=> b!5097852 (= lt!2094851 (++!12859 lt!2094683 (Cons!58679 (head!10828 call!354965) Nil!58679)))))

(declare-fun lt!2094857 () Unit!149731)

(assert (=> b!5097852 (= lt!2094857 e!3179342)))

(declare-fun c!875972 () Bool)

(assert (=> b!5097852 (= c!875972 (= (size!39307 lt!2094683) (size!39307 input!1493)))))

(declare-fun lt!2094853 () Unit!149731)

(declare-fun lt!2094850 () Unit!149731)

(assert (=> b!5097852 (= lt!2094853 lt!2094850)))

(assert (=> b!5097852 (<= (size!39307 lt!2094683) (size!39307 input!1493))))

(assert (=> b!5097852 (= lt!2094850 (lemmaIsPrefixThenSmallerEqSize!828 lt!2094683 input!1493))))

(assert (=> b!5097852 (= e!3179341 e!3179339)))

(declare-fun b!5097853 () Bool)

(assert (=> b!5097853 (= e!3179343 (tuple2!63399 lt!2094683 Nil!58679))))

(declare-fun b!5097854 () Bool)

(assert (=> b!5097854 (= e!3179343 (tuple2!63399 Nil!58679 input!1493))))

(declare-fun bm!355004 () Bool)

(assert (=> bm!355004 (= call!355005 (isPrefix!5415 input!1493 input!1493))))

(declare-fun b!5097855 () Bool)

(assert (=> b!5097855 (= e!3179338 lt!2094867)))

(declare-fun b!5097856 () Bool)

(assert (=> b!5097856 (= e!3179339 call!355003)))

(declare-fun b!5097857 () Bool)

(assert (=> b!5097857 (= e!3179340 (tuple2!63399 Nil!58679 input!1493))))

(declare-fun b!5097858 () Bool)

(assert (=> b!5097858 (= e!3179345 e!3179344)))

(declare-fun res!2169598 () Bool)

(assert (=> b!5097858 (=> res!2169598 e!3179344)))

(assert (=> b!5097858 (= res!2169598 (isEmpty!31758 (_1!35002 lt!2094854)))))

(declare-fun bm!355005 () Bool)

(assert (=> bm!355005 (= call!355008 (derivativeStep!3992 call!354967 call!355009))))

(assert (= (and d!1649548 c!875976) b!5097857))

(assert (= (and d!1649548 (not c!875976)) b!5097845))

(assert (= (and b!5097845 c!875973) b!5097847))

(assert (= (and b!5097845 (not c!875973)) b!5097852))

(assert (= (and b!5097847 c!875971) b!5097853))

(assert (= (and b!5097847 (not c!875971)) b!5097854))

(assert (= (and b!5097852 c!875972) b!5097849))

(assert (= (and b!5097852 (not c!875972)) b!5097848))

(assert (= (and b!5097852 c!875975) b!5097846))

(assert (= (and b!5097852 (not c!875975)) b!5097856))

(assert (= (and b!5097846 c!875974) b!5097851))

(assert (= (and b!5097846 (not c!875974)) b!5097855))

(assert (= (or b!5097846 b!5097856) bm!355003))

(assert (= (or b!5097846 b!5097856) bm!355000))

(assert (= (or b!5097846 b!5097856) bm!355005))

(assert (= (or b!5097846 b!5097856) bm!355001))

(assert (= (or b!5097847 b!5097849) bm!354999))

(assert (= (or b!5097847 b!5097849) bm!355004))

(assert (= (or b!5097847 b!5097852) bm!355002))

(assert (= (or b!5097847 b!5097849) bm!354998))

(assert (= (and d!1649548 res!2169599) b!5097858))

(assert (= (and b!5097858 (not res!2169598)) b!5097850))

(assert (=> bm!354999 m!6154804))

(assert (=> bm!355001 m!6154718))

(declare-fun m!6155044 () Bool)

(assert (=> bm!355001 m!6155044))

(declare-fun m!6155046 () Bool)

(assert (=> bm!355003 m!6155046))

(declare-fun m!6155048 () Bool)

(assert (=> b!5097852 m!6155048))

(declare-fun m!6155050 () Bool)

(assert (=> b!5097852 m!6155050))

(declare-fun m!6155052 () Bool)

(assert (=> b!5097852 m!6155052))

(declare-fun m!6155054 () Bool)

(assert (=> b!5097852 m!6155054))

(declare-fun m!6155056 () Bool)

(assert (=> b!5097852 m!6155056))

(declare-fun m!6155058 () Bool)

(assert (=> b!5097852 m!6155058))

(assert (=> b!5097852 m!6155056))

(declare-fun m!6155060 () Bool)

(assert (=> b!5097852 m!6155060))

(declare-fun m!6155062 () Bool)

(assert (=> b!5097852 m!6155062))

(declare-fun m!6155064 () Bool)

(assert (=> b!5097852 m!6155064))

(declare-fun m!6155066 () Bool)

(assert (=> b!5097852 m!6155066))

(assert (=> b!5097852 m!6155046))

(assert (=> b!5097852 m!6155052))

(assert (=> b!5097852 m!6154718))

(assert (=> b!5097852 m!6155064))

(declare-fun m!6155068 () Bool)

(assert (=> b!5097852 m!6155068))

(declare-fun m!6155070 () Bool)

(assert (=> b!5097852 m!6155070))

(assert (=> bm!355004 m!6154832))

(declare-fun m!6155072 () Bool)

(assert (=> b!5097846 m!6155072))

(assert (=> bm!355000 m!6155050))

(declare-fun m!6155074 () Bool)

(assert (=> bm!355002 m!6155074))

(declare-fun m!6155076 () Bool)

(assert (=> bm!355005 m!6155076))

(declare-fun m!6155078 () Bool)

(assert (=> b!5097850 m!6155078))

(assert (=> b!5097850 m!6155048))

(declare-fun m!6155080 () Bool)

(assert (=> bm!354998 m!6155080))

(declare-fun m!6155082 () Bool)

(assert (=> b!5097858 m!6155082))

(declare-fun m!6155084 () Bool)

(assert (=> d!1649548 m!6155084))

(declare-fun m!6155086 () Bool)

(assert (=> d!1649548 m!6155086))

(declare-fun m!6155088 () Bool)

(assert (=> d!1649548 m!6155088))

(declare-fun m!6155090 () Bool)

(assert (=> d!1649548 m!6155090))

(assert (=> d!1649548 m!6155064))

(assert (=> d!1649548 m!6155086))

(declare-fun m!6155092 () Bool)

(assert (=> d!1649548 m!6155092))

(declare-fun m!6155094 () Bool)

(assert (=> d!1649548 m!6155094))

(declare-fun m!6155096 () Bool)

(assert (=> d!1649548 m!6155096))

(assert (=> bm!354960 d!1649548))

(declare-fun b!5097869 () Bool)

(declare-fun res!2169605 () Bool)

(declare-fun e!3179350 () Bool)

(assert (=> b!5097869 (=> (not res!2169605) (not e!3179350))))

(declare-fun lt!2094871 () List!58803)

(assert (=> b!5097869 (= res!2169605 (= (size!39307 lt!2094871) (+ (size!39307 (_1!35002 lt!2094686)) (size!39307 (_2!35002 lt!2094686)))))))

(declare-fun d!1649550 () Bool)

(assert (=> d!1649550 e!3179350))

(declare-fun res!2169604 () Bool)

(assert (=> d!1649550 (=> (not res!2169604) (not e!3179350))))

(declare-fun content!10443 (List!58803) (InoxSet C!28268))

(assert (=> d!1649550 (= res!2169604 (= (content!10443 lt!2094871) ((_ map or) (content!10443 (_1!35002 lt!2094686)) (content!10443 (_2!35002 lt!2094686)))))))

(declare-fun e!3179351 () List!58803)

(assert (=> d!1649550 (= lt!2094871 e!3179351)))

(declare-fun c!875979 () Bool)

(assert (=> d!1649550 (= c!875979 ((_ is Nil!58679) (_1!35002 lt!2094686)))))

(assert (=> d!1649550 (= (++!12859 (_1!35002 lt!2094686) (_2!35002 lt!2094686)) lt!2094871)))

(declare-fun b!5097870 () Bool)

(assert (=> b!5097870 (= e!3179350 (or (not (= (_2!35002 lt!2094686) Nil!58679)) (= lt!2094871 (_1!35002 lt!2094686))))))

(declare-fun b!5097867 () Bool)

(assert (=> b!5097867 (= e!3179351 (_2!35002 lt!2094686))))

(declare-fun b!5097868 () Bool)

(assert (=> b!5097868 (= e!3179351 (Cons!58679 (h!65127 (_1!35002 lt!2094686)) (++!12859 (t!371780 (_1!35002 lt!2094686)) (_2!35002 lt!2094686))))))

(assert (= (and d!1649550 c!875979) b!5097867))

(assert (= (and d!1649550 (not c!875979)) b!5097868))

(assert (= (and d!1649550 res!2169604) b!5097869))

(assert (= (and b!5097869 res!2169605) b!5097870))

(declare-fun m!6155098 () Bool)

(assert (=> b!5097869 m!6155098))

(assert (=> b!5097869 m!6154838))

(declare-fun m!6155100 () Bool)

(assert (=> b!5097869 m!6155100))

(declare-fun m!6155102 () Bool)

(assert (=> d!1649550 m!6155102))

(declare-fun m!6155104 () Bool)

(assert (=> d!1649550 m!6155104))

(declare-fun m!6155106 () Bool)

(assert (=> d!1649550 m!6155106))

(declare-fun m!6155108 () Bool)

(assert (=> b!5097868 m!6155108))

(assert (=> d!1649480 d!1649550))

(declare-fun d!1649552 () Bool)

(declare-fun e!3179360 () Bool)

(assert (=> d!1649552 e!3179360))

(declare-fun res!2169614 () Bool)

(assert (=> d!1649552 (=> res!2169614 e!3179360)))

(declare-fun lt!2094874 () Bool)

(assert (=> d!1649552 (= res!2169614 (not lt!2094874))))

(declare-fun e!3179358 () Bool)

(assert (=> d!1649552 (= lt!2094874 e!3179358)))

(declare-fun res!2169617 () Bool)

(assert (=> d!1649552 (=> res!2169617 e!3179358)))

(assert (=> d!1649552 (= res!2169617 ((_ is Nil!58679) Nil!58679))))

(assert (=> d!1649552 (= (isPrefix!5415 Nil!58679 (++!12859 Nil!58679 input!1493)) lt!2094874)))

(declare-fun b!5097882 () Bool)

(assert (=> b!5097882 (= e!3179360 (>= (size!39307 (++!12859 Nil!58679 input!1493)) (size!39307 Nil!58679)))))

(declare-fun b!5097880 () Bool)

(declare-fun res!2169616 () Bool)

(declare-fun e!3179359 () Bool)

(assert (=> b!5097880 (=> (not res!2169616) (not e!3179359))))

(assert (=> b!5097880 (= res!2169616 (= (head!10828 Nil!58679) (head!10828 (++!12859 Nil!58679 input!1493))))))

(declare-fun b!5097881 () Bool)

(assert (=> b!5097881 (= e!3179359 (isPrefix!5415 (tail!9983 Nil!58679) (tail!9983 (++!12859 Nil!58679 input!1493))))))

(declare-fun b!5097879 () Bool)

(assert (=> b!5097879 (= e!3179358 e!3179359)))

(declare-fun res!2169615 () Bool)

(assert (=> b!5097879 (=> (not res!2169615) (not e!3179359))))

(assert (=> b!5097879 (= res!2169615 (not ((_ is Nil!58679) (++!12859 Nil!58679 input!1493))))))

(assert (= (and d!1649552 (not res!2169617)) b!5097879))

(assert (= (and b!5097879 res!2169615) b!5097880))

(assert (= (and b!5097880 res!2169616) b!5097881))

(assert (= (and d!1649552 (not res!2169614)) b!5097882))

(assert (=> b!5097882 m!6154846))

(declare-fun m!6155110 () Bool)

(assert (=> b!5097882 m!6155110))

(assert (=> b!5097882 m!6154716))

(declare-fun m!6155112 () Bool)

(assert (=> b!5097880 m!6155112))

(assert (=> b!5097880 m!6154846))

(declare-fun m!6155114 () Bool)

(assert (=> b!5097880 m!6155114))

(declare-fun m!6155116 () Bool)

(assert (=> b!5097881 m!6155116))

(assert (=> b!5097881 m!6154846))

(declare-fun m!6155118 () Bool)

(assert (=> b!5097881 m!6155118))

(assert (=> b!5097881 m!6155116))

(assert (=> b!5097881 m!6155118))

(declare-fun m!6155120 () Bool)

(assert (=> b!5097881 m!6155120))

(assert (=> d!1649480 d!1649552))

(assert (=> d!1649480 d!1649536))

(declare-fun d!1649554 () Bool)

(declare-fun lostCauseFct!303 (Regex!14005) Bool)

(assert (=> d!1649554 (= (lostCause!1201 (regex!8530 rule!158)) (lostCauseFct!303 (regex!8530 rule!158)))))

(declare-fun bs!1191402 () Bool)

(assert (= bs!1191402 d!1649554))

(declare-fun m!6155122 () Bool)

(assert (=> bs!1191402 m!6155122))

(assert (=> d!1649480 d!1649554))

(declare-fun d!1649556 () Bool)

(declare-fun lt!2094877 () List!58803)

(assert (=> d!1649556 (= (++!12859 Nil!58679 lt!2094877) input!1493)))

(declare-fun e!3179363 () List!58803)

(assert (=> d!1649556 (= lt!2094877 e!3179363)))

(declare-fun c!875982 () Bool)

(assert (=> d!1649556 (= c!875982 ((_ is Cons!58679) Nil!58679))))

(assert (=> d!1649556 (>= (size!39307 input!1493) (size!39307 Nil!58679))))

(assert (=> d!1649556 (= (getSuffix!3157 input!1493 Nil!58679) lt!2094877)))

(declare-fun b!5097887 () Bool)

(assert (=> b!5097887 (= e!3179363 (getSuffix!3157 (tail!9983 input!1493) (t!371780 Nil!58679)))))

(declare-fun b!5097888 () Bool)

(assert (=> b!5097888 (= e!3179363 input!1493)))

(assert (= (and d!1649556 c!875982) b!5097887))

(assert (= (and d!1649556 (not c!875982)) b!5097888))

(declare-fun m!6155124 () Bool)

(assert (=> d!1649556 m!6155124))

(assert (=> d!1649556 m!6154718))

(assert (=> d!1649556 m!6154716))

(assert (=> b!5097887 m!6154810))

(assert (=> b!5097887 m!6154810))

(declare-fun m!6155126 () Bool)

(assert (=> b!5097887 m!6155126))

(assert (=> d!1649480 d!1649556))

(declare-fun b!5097891 () Bool)

(declare-fun res!2169619 () Bool)

(declare-fun e!3179364 () Bool)

(assert (=> b!5097891 (=> (not res!2169619) (not e!3179364))))

(declare-fun lt!2094878 () List!58803)

(assert (=> b!5097891 (= res!2169619 (= (size!39307 lt!2094878) (+ (size!39307 Nil!58679) (size!39307 input!1493))))))

(declare-fun d!1649558 () Bool)

(assert (=> d!1649558 e!3179364))

(declare-fun res!2169618 () Bool)

(assert (=> d!1649558 (=> (not res!2169618) (not e!3179364))))

(assert (=> d!1649558 (= res!2169618 (= (content!10443 lt!2094878) ((_ map or) (content!10443 Nil!58679) (content!10443 input!1493))))))

(declare-fun e!3179365 () List!58803)

(assert (=> d!1649558 (= lt!2094878 e!3179365)))

(declare-fun c!875983 () Bool)

(assert (=> d!1649558 (= c!875983 ((_ is Nil!58679) Nil!58679))))

(assert (=> d!1649558 (= (++!12859 Nil!58679 input!1493) lt!2094878)))

(declare-fun b!5097892 () Bool)

(assert (=> b!5097892 (= e!3179364 (or (not (= input!1493 Nil!58679)) (= lt!2094878 Nil!58679)))))

(declare-fun b!5097889 () Bool)

(assert (=> b!5097889 (= e!3179365 input!1493)))

(declare-fun b!5097890 () Bool)

(assert (=> b!5097890 (= e!3179365 (Cons!58679 (h!65127 Nil!58679) (++!12859 (t!371780 Nil!58679) input!1493)))))

(assert (= (and d!1649558 c!875983) b!5097889))

(assert (= (and d!1649558 (not c!875983)) b!5097890))

(assert (= (and d!1649558 res!2169618) b!5097891))

(assert (= (and b!5097891 res!2169619) b!5097892))

(declare-fun m!6155128 () Bool)

(assert (=> b!5097891 m!6155128))

(assert (=> b!5097891 m!6154716))

(assert (=> b!5097891 m!6154718))

(declare-fun m!6155130 () Bool)

(assert (=> d!1649558 m!6155130))

(declare-fun m!6155132 () Bool)

(assert (=> d!1649558 m!6155132))

(declare-fun m!6155134 () Bool)

(assert (=> d!1649558 m!6155134))

(declare-fun m!6155136 () Bool)

(assert (=> b!5097890 m!6155136))

(assert (=> d!1649480 d!1649558))

(declare-fun d!1649560 () Bool)

(assert (=> d!1649560 (= input!1493 lt!2094688)))

(declare-fun lt!2094881 () Unit!149731)

(declare-fun choose!37338 (List!58803 List!58803 List!58803 List!58803 List!58803) Unit!149731)

(assert (=> d!1649560 (= lt!2094881 (choose!37338 Nil!58679 input!1493 Nil!58679 lt!2094688 input!1493))))

(assert (=> d!1649560 (isPrefix!5415 Nil!58679 input!1493)))

(assert (=> d!1649560 (= (lemmaSamePrefixThenSameSuffix!2571 Nil!58679 input!1493 Nil!58679 lt!2094688 input!1493) lt!2094881)))

(declare-fun bs!1191403 () Bool)

(assert (= bs!1191403 d!1649560))

(declare-fun m!6155138 () Bool)

(assert (=> bs!1191403 m!6155138))

(declare-fun m!6155140 () Bool)

(assert (=> bs!1191403 m!6155140))

(assert (=> d!1649480 d!1649560))

(declare-fun d!1649562 () Bool)

(assert (=> d!1649562 (isPrefix!5415 Nil!58679 (++!12859 Nil!58679 input!1493))))

(declare-fun lt!2094884 () Unit!149731)

(declare-fun choose!37339 (List!58803 List!58803) Unit!149731)

(assert (=> d!1649562 (= lt!2094884 (choose!37339 Nil!58679 input!1493))))

(assert (=> d!1649562 (= (lemmaConcatTwoListThenFirstIsPrefix!3473 Nil!58679 input!1493) lt!2094884)))

(declare-fun bs!1191404 () Bool)

(assert (= bs!1191404 d!1649562))

(assert (=> bs!1191404 m!6154846))

(assert (=> bs!1191404 m!6154846))

(assert (=> bs!1191404 m!6154852))

(declare-fun m!6155142 () Bool)

(assert (=> bs!1191404 m!6155142))

(assert (=> d!1649480 d!1649562))

(declare-fun d!1649564 () Bool)

(declare-fun lt!2094885 () Int)

(assert (=> d!1649564 (>= lt!2094885 0)))

(declare-fun e!3179366 () Int)

(assert (=> d!1649564 (= lt!2094885 e!3179366)))

(declare-fun c!875984 () Bool)

(assert (=> d!1649564 (= c!875984 ((_ is Nil!58679) (_2!35003 (get!20364 lt!2094798))))))

(assert (=> d!1649564 (= (size!39307 (_2!35003 (get!20364 lt!2094798))) lt!2094885)))

(declare-fun b!5097893 () Bool)

(assert (=> b!5097893 (= e!3179366 0)))

(declare-fun b!5097894 () Bool)

(assert (=> b!5097894 (= e!3179366 (+ 1 (size!39307 (t!371780 (_2!35003 (get!20364 lt!2094798))))))))

(assert (= (and d!1649564 c!875984) b!5097893))

(assert (= (and d!1649564 (not c!875984)) b!5097894))

(declare-fun m!6155144 () Bool)

(assert (=> b!5097894 m!6155144))

(assert (=> b!5097672 d!1649564))

(assert (=> b!5097672 d!1649544))

(assert (=> b!5097672 d!1649508))

(declare-fun d!1649566 () Bool)

(assert (=> d!1649566 (= (tail!9983 input!1493) (t!371780 input!1493))))

(assert (=> bm!354959 d!1649566))

(declare-fun d!1649568 () Bool)

(assert (=> d!1649568 true))

(declare-fun lambda!249925 () Int)

(declare-fun order!26775 () Int)

(declare-fun dynLambda!23587 (Int Int) Int)

(assert (=> d!1649568 (< (dynLambda!23578 order!26769 (toValue!11557 (transformation!8530 rule!158))) (dynLambda!23587 order!26775 lambda!249925))))

(declare-fun Forall2!1307 (Int) Bool)

(assert (=> d!1649568 (= (equivClasses!3614 (toChars!11416 (transformation!8530 rule!158)) (toValue!11557 (transformation!8530 rule!158))) (Forall2!1307 lambda!249925))))

(declare-fun bs!1191405 () Bool)

(assert (= bs!1191405 d!1649568))

(declare-fun m!6155146 () Bool)

(assert (=> bs!1191405 m!6155146))

(assert (=> b!5097517 d!1649568))

(assert (=> b!5097673 d!1649544))

(declare-fun d!1649570 () Bool)

(assert (=> d!1649570 (isPrefix!5415 input!1493 input!1493)))

(declare-fun lt!2094888 () Unit!149731)

(declare-fun choose!37340 (List!58803 List!58803) Unit!149731)

(assert (=> d!1649570 (= lt!2094888 (choose!37340 input!1493 input!1493))))

(assert (=> d!1649570 (= (lemmaIsPrefixRefl!3674 input!1493 input!1493) lt!2094888)))

(declare-fun bs!1191406 () Bool)

(assert (= bs!1191406 d!1649570))

(assert (=> bs!1191406 m!6154832))

(declare-fun m!6155148 () Bool)

(assert (=> bs!1191406 m!6155148))

(assert (=> bm!354958 d!1649570))

(assert (=> b!5097501 d!1649526))

(declare-fun d!1649572 () Bool)

(declare-fun lt!2094889 () Int)

(assert (=> d!1649572 (>= lt!2094889 0)))

(declare-fun e!3179369 () Int)

(assert (=> d!1649572 (= lt!2094889 e!3179369)))

(declare-fun c!875985 () Bool)

(assert (=> d!1649572 (= c!875985 ((_ is Nil!58679) (t!371780 (_1!35002 lt!2094567))))))

(assert (=> d!1649572 (= (size!39307 (t!371780 (_1!35002 lt!2094567))) lt!2094889)))

(declare-fun b!5097899 () Bool)

(assert (=> b!5097899 (= e!3179369 0)))

(declare-fun b!5097900 () Bool)

(assert (=> b!5097900 (= e!3179369 (+ 1 (size!39307 (t!371780 (t!371780 (_1!35002 lt!2094567))))))))

(assert (= (and d!1649572 c!875985) b!5097899))

(assert (= (and d!1649572 (not c!875985)) b!5097900))

(declare-fun m!6155150 () Bool)

(assert (=> b!5097900 m!6155150))

(assert (=> b!5097700 d!1649572))

(declare-fun c!875998 () Bool)

(declare-fun c!876000 () Bool)

(declare-fun call!355022 () Regex!14005)

(declare-fun bm!355014 () Bool)

(declare-fun c!875997 () Bool)

(assert (=> bm!355014 (= call!355022 (derivativeStep!3992 (ite c!876000 (regTwo!28523 (regex!8530 rule!158)) (ite c!875998 (reg!14334 (regex!8530 rule!158)) (ite c!875997 (regTwo!28522 (regex!8530 rule!158)) (regOne!28522 (regex!8530 rule!158))))) call!354968))))

(declare-fun b!5097921 () Bool)

(declare-fun e!3179382 () Regex!14005)

(assert (=> b!5097921 (= e!3179382 (ite (= call!354968 (c!875884 (regex!8530 rule!158))) EmptyExpr!14005 EmptyLang!14005))))

(declare-fun b!5097922 () Bool)

(declare-fun e!3179383 () Regex!14005)

(assert (=> b!5097922 (= e!3179383 e!3179382)))

(declare-fun c!875999 () Bool)

(assert (=> b!5097922 (= c!875999 ((_ is ElementMatch!14005) (regex!8530 rule!158)))))

(declare-fun b!5097923 () Bool)

(declare-fun e!3179380 () Regex!14005)

(declare-fun call!355021 () Regex!14005)

(assert (=> b!5097923 (= e!3179380 (Union!14005 (Concat!22849 call!355021 (regTwo!28522 (regex!8530 rule!158))) EmptyLang!14005))))

(declare-fun b!5097924 () Bool)

(declare-fun e!3179381 () Regex!14005)

(declare-fun call!355019 () Regex!14005)

(assert (=> b!5097924 (= e!3179381 (Union!14005 call!355019 call!355022))))

(declare-fun b!5097925 () Bool)

(assert (=> b!5097925 (= c!875997 (nullable!4706 (regOne!28522 (regex!8530 rule!158))))))

(declare-fun e!3179384 () Regex!14005)

(assert (=> b!5097925 (= e!3179384 e!3179380)))

(declare-fun b!5097926 () Bool)

(assert (=> b!5097926 (= e!3179381 e!3179384)))

(assert (=> b!5097926 (= c!875998 ((_ is Star!14005) (regex!8530 rule!158)))))

(declare-fun bm!355015 () Bool)

(declare-fun call!355020 () Regex!14005)

(assert (=> bm!355015 (= call!355020 call!355022)))

(declare-fun bm!355017 () Bool)

(assert (=> bm!355017 (= call!355019 (derivativeStep!3992 (ite c!876000 (regOne!28523 (regex!8530 rule!158)) (regOne!28522 (regex!8530 rule!158))) call!354968))))

(declare-fun b!5097927 () Bool)

(assert (=> b!5097927 (= e!3179384 (Concat!22849 call!355020 (regex!8530 rule!158)))))

(declare-fun b!5097928 () Bool)

(assert (=> b!5097928 (= c!876000 ((_ is Union!14005) (regex!8530 rule!158)))))

(assert (=> b!5097928 (= e!3179382 e!3179381)))

(declare-fun d!1649574 () Bool)

(declare-fun lt!2094892 () Regex!14005)

(assert (=> d!1649574 (validRegex!6131 lt!2094892)))

(assert (=> d!1649574 (= lt!2094892 e!3179383)))

(declare-fun c!875996 () Bool)

(assert (=> d!1649574 (= c!875996 (or ((_ is EmptyExpr!14005) (regex!8530 rule!158)) ((_ is EmptyLang!14005) (regex!8530 rule!158))))))

(assert (=> d!1649574 (validRegex!6131 (regex!8530 rule!158))))

(assert (=> d!1649574 (= (derivativeStep!3992 (regex!8530 rule!158) call!354968) lt!2094892)))

(declare-fun bm!355016 () Bool)

(assert (=> bm!355016 (= call!355021 call!355020)))

(declare-fun b!5097929 () Bool)

(assert (=> b!5097929 (= e!3179383 EmptyLang!14005)))

(declare-fun b!5097930 () Bool)

(assert (=> b!5097930 (= e!3179380 (Union!14005 (Concat!22849 call!355019 (regTwo!28522 (regex!8530 rule!158))) call!355021))))

(assert (= (and d!1649574 c!875996) b!5097929))

(assert (= (and d!1649574 (not c!875996)) b!5097922))

(assert (= (and b!5097922 c!875999) b!5097921))

(assert (= (and b!5097922 (not c!875999)) b!5097928))

(assert (= (and b!5097928 c!876000) b!5097924))

(assert (= (and b!5097928 (not c!876000)) b!5097926))

(assert (= (and b!5097926 c!875998) b!5097927))

(assert (= (and b!5097926 (not c!875998)) b!5097925))

(assert (= (and b!5097925 c!875997) b!5097930))

(assert (= (and b!5097925 (not c!875997)) b!5097923))

(assert (= (or b!5097930 b!5097923) bm!355016))

(assert (= (or b!5097927 bm!355016) bm!355015))

(assert (= (or b!5097924 bm!355015) bm!355014))

(assert (= (or b!5097924 b!5097930) bm!355017))

(declare-fun m!6155152 () Bool)

(assert (=> bm!355014 m!6155152))

(declare-fun m!6155154 () Bool)

(assert (=> b!5097925 m!6155154))

(declare-fun m!6155156 () Bool)

(assert (=> bm!355017 m!6155156))

(declare-fun m!6155158 () Bool)

(assert (=> d!1649574 m!6155158))

(assert (=> d!1649574 m!6154734))

(assert (=> bm!354964 d!1649574))

(declare-fun b!5097932 () Bool)

(declare-fun e!3179390 () Bool)

(declare-fun lt!2094893 () Bool)

(assert (=> b!5097932 (= e!3179390 (not lt!2094893))))

(declare-fun b!5097933 () Bool)

(declare-fun e!3179388 () Bool)

(declare-fun call!355023 () Bool)

(assert (=> b!5097933 (= e!3179388 (= lt!2094893 call!355023))))

(declare-fun bm!355018 () Bool)

(assert (=> bm!355018 (= call!355023 (isEmpty!31758 (_1!35002 (findLongestMatchInner!2026 (regex!8530 rule!158) Nil!58679 (size!39307 Nil!58679) input!1493 input!1493 (size!39307 input!1493)))))))

(declare-fun b!5097934 () Bool)

(declare-fun res!2169625 () Bool)

(declare-fun e!3179389 () Bool)

(assert (=> b!5097934 (=> (not res!2169625) (not e!3179389))))

(assert (=> b!5097934 (= res!2169625 (not call!355023))))

(declare-fun b!5097935 () Bool)

(declare-fun res!2169622 () Bool)

(assert (=> b!5097935 (=> (not res!2169622) (not e!3179389))))

(assert (=> b!5097935 (= res!2169622 (isEmpty!31758 (tail!9983 (_1!35002 (findLongestMatchInner!2026 (regex!8530 rule!158) Nil!58679 (size!39307 Nil!58679) input!1493 input!1493 (size!39307 input!1493))))))))

(declare-fun b!5097936 () Bool)

(assert (=> b!5097936 (= e!3179388 e!3179390)))

(declare-fun c!876001 () Bool)

(assert (=> b!5097936 (= c!876001 ((_ is EmptyLang!14005) (regex!8530 rule!158)))))

(declare-fun b!5097937 () Bool)

(declare-fun e!3179385 () Bool)

(declare-fun e!3179387 () Bool)

(assert (=> b!5097937 (= e!3179385 e!3179387)))

(declare-fun res!2169627 () Bool)

(assert (=> b!5097937 (=> res!2169627 e!3179387)))

(assert (=> b!5097937 (= res!2169627 call!355023)))

(declare-fun b!5097938 () Bool)

(declare-fun res!2169629 () Bool)

(assert (=> b!5097938 (=> res!2169629 e!3179387)))

(assert (=> b!5097938 (= res!2169629 (not (isEmpty!31758 (tail!9983 (_1!35002 (findLongestMatchInner!2026 (regex!8530 rule!158) Nil!58679 (size!39307 Nil!58679) input!1493 input!1493 (size!39307 input!1493)))))))))

(declare-fun b!5097939 () Bool)

(declare-fun e!3179391 () Bool)

(assert (=> b!5097939 (= e!3179391 e!3179385)))

(declare-fun res!2169626 () Bool)

(assert (=> b!5097939 (=> (not res!2169626) (not e!3179385))))

(assert (=> b!5097939 (= res!2169626 (not lt!2094893))))

(declare-fun b!5097940 () Bool)

(declare-fun res!2169628 () Bool)

(assert (=> b!5097940 (=> res!2169628 e!3179391)))

(assert (=> b!5097940 (= res!2169628 (not ((_ is ElementMatch!14005) (regex!8530 rule!158))))))

(assert (=> b!5097940 (= e!3179390 e!3179391)))

(declare-fun b!5097931 () Bool)

(declare-fun e!3179386 () Bool)

(assert (=> b!5097931 (= e!3179386 (nullable!4706 (regex!8530 rule!158)))))

(declare-fun d!1649576 () Bool)

(assert (=> d!1649576 e!3179388))

(declare-fun c!876002 () Bool)

(assert (=> d!1649576 (= c!876002 ((_ is EmptyExpr!14005) (regex!8530 rule!158)))))

(assert (=> d!1649576 (= lt!2094893 e!3179386)))

(declare-fun c!876003 () Bool)

(assert (=> d!1649576 (= c!876003 (isEmpty!31758 (_1!35002 (findLongestMatchInner!2026 (regex!8530 rule!158) Nil!58679 (size!39307 Nil!58679) input!1493 input!1493 (size!39307 input!1493)))))))

(assert (=> d!1649576 (validRegex!6131 (regex!8530 rule!158))))

(assert (=> d!1649576 (= (matchR!6802 (regex!8530 rule!158) (_1!35002 (findLongestMatchInner!2026 (regex!8530 rule!158) Nil!58679 (size!39307 Nil!58679) input!1493 input!1493 (size!39307 input!1493)))) lt!2094893)))

(declare-fun b!5097941 () Bool)

(assert (=> b!5097941 (= e!3179386 (matchR!6802 (derivativeStep!3992 (regex!8530 rule!158) (head!10828 (_1!35002 (findLongestMatchInner!2026 (regex!8530 rule!158) Nil!58679 (size!39307 Nil!58679) input!1493 input!1493 (size!39307 input!1493))))) (tail!9983 (_1!35002 (findLongestMatchInner!2026 (regex!8530 rule!158) Nil!58679 (size!39307 Nil!58679) input!1493 input!1493 (size!39307 input!1493))))))))

(declare-fun b!5097942 () Bool)

(declare-fun res!2169624 () Bool)

(assert (=> b!5097942 (=> res!2169624 e!3179391)))

(assert (=> b!5097942 (= res!2169624 e!3179389)))

(declare-fun res!2169623 () Bool)

(assert (=> b!5097942 (=> (not res!2169623) (not e!3179389))))

(assert (=> b!5097942 (= res!2169623 lt!2094893)))

(declare-fun b!5097943 () Bool)

(assert (=> b!5097943 (= e!3179387 (not (= (head!10828 (_1!35002 (findLongestMatchInner!2026 (regex!8530 rule!158) Nil!58679 (size!39307 Nil!58679) input!1493 input!1493 (size!39307 input!1493)))) (c!875884 (regex!8530 rule!158)))))))

(declare-fun b!5097944 () Bool)

(assert (=> b!5097944 (= e!3179389 (= (head!10828 (_1!35002 (findLongestMatchInner!2026 (regex!8530 rule!158) Nil!58679 (size!39307 Nil!58679) input!1493 input!1493 (size!39307 input!1493)))) (c!875884 (regex!8530 rule!158))))))

(assert (= (and d!1649576 c!876003) b!5097931))

(assert (= (and d!1649576 (not c!876003)) b!5097941))

(assert (= (and d!1649576 c!876002) b!5097933))

(assert (= (and d!1649576 (not c!876002)) b!5097936))

(assert (= (and b!5097936 c!876001) b!5097932))

(assert (= (and b!5097936 (not c!876001)) b!5097940))

(assert (= (and b!5097940 (not res!2169628)) b!5097942))

(assert (= (and b!5097942 res!2169623) b!5097934))

(assert (= (and b!5097934 res!2169625) b!5097935))

(assert (= (and b!5097935 res!2169622) b!5097944))

(assert (= (and b!5097942 (not res!2169624)) b!5097939))

(assert (= (and b!5097939 res!2169626) b!5097937))

(assert (= (and b!5097937 (not res!2169627)) b!5097938))

(assert (= (and b!5097938 (not res!2169629)) b!5097943))

(assert (= (or b!5097933 b!5097934 b!5097937) bm!355018))

(assert (=> b!5097931 m!6154736))

(declare-fun m!6155160 () Bool)

(assert (=> b!5097944 m!6155160))

(assert (=> b!5097941 m!6155160))

(assert (=> b!5097941 m!6155160))

(declare-fun m!6155162 () Bool)

(assert (=> b!5097941 m!6155162))

(declare-fun m!6155164 () Bool)

(assert (=> b!5097941 m!6155164))

(assert (=> b!5097941 m!6155162))

(assert (=> b!5097941 m!6155164))

(declare-fun m!6155166 () Bool)

(assert (=> b!5097941 m!6155166))

(assert (=> d!1649576 m!6154930))

(assert (=> d!1649576 m!6154734))

(assert (=> b!5097938 m!6155164))

(assert (=> b!5097938 m!6155164))

(declare-fun m!6155168 () Bool)

(assert (=> b!5097938 m!6155168))

(assert (=> b!5097935 m!6155164))

(assert (=> b!5097935 m!6155164))

(assert (=> b!5097935 m!6155168))

(assert (=> b!5097943 m!6155160))

(assert (=> bm!355018 m!6154930))

(assert (=> b!5097670 d!1649576))

(assert (=> b!5097670 d!1649480))

(assert (=> b!5097670 d!1649510))

(assert (=> b!5097670 d!1649508))

(assert (=> b!5097703 d!1649576))

(assert (=> b!5097703 d!1649480))

(assert (=> b!5097703 d!1649510))

(assert (=> b!5097703 d!1649508))

(declare-fun d!1649578 () Bool)

(assert (=> d!1649578 (= input!1493 Nil!58679)))

(declare-fun lt!2094896 () Unit!149731)

(declare-fun choose!37341 (List!58803 List!58803 List!58803) Unit!149731)

(assert (=> d!1649578 (= lt!2094896 (choose!37341 input!1493 Nil!58679 input!1493))))

(assert (=> d!1649578 (isPrefix!5415 input!1493 input!1493)))

(assert (=> d!1649578 (= (lemmaIsPrefixSameLengthThenSameList!1292 input!1493 Nil!58679 input!1493) lt!2094896)))

(declare-fun bs!1191407 () Bool)

(assert (= bs!1191407 d!1649578))

(declare-fun m!6155170 () Bool)

(assert (=> bs!1191407 m!6155170))

(assert (=> bs!1191407 m!6154832))

(assert (=> bm!354957 d!1649578))

(assert (=> b!5097668 d!1649544))

(declare-fun d!1649580 () Bool)

(assert (=> d!1649580 (= (apply!14302 (transformation!8530 (rule!11806 (_1!35003 (get!20364 lt!2094798)))) (seqFromList!6120 (originalCharacters!8771 (_1!35003 (get!20364 lt!2094798))))) (dynLambda!23576 (toValue!11557 (transformation!8530 (rule!11806 (_1!35003 (get!20364 lt!2094798))))) (seqFromList!6120 (originalCharacters!8771 (_1!35003 (get!20364 lt!2094798))))))))

(declare-fun b_lambda!198831 () Bool)

(assert (=> (not b_lambda!198831) (not d!1649580)))

(declare-fun tb!261857 () Bool)

(declare-fun t!371793 () Bool)

(assert (=> (and b!5097463 (= (toValue!11557 (transformation!8530 rule!158)) (toValue!11557 (transformation!8530 (rule!11806 (_1!35003 (get!20364 lt!2094798)))))) t!371793) tb!261857))

(declare-fun result!328956 () Bool)

(assert (=> tb!261857 (= result!328956 (inv!21 (dynLambda!23576 (toValue!11557 (transformation!8530 (rule!11806 (_1!35003 (get!20364 lt!2094798))))) (seqFromList!6120 (originalCharacters!8771 (_1!35003 (get!20364 lt!2094798)))))))))

(declare-fun m!6155172 () Bool)

(assert (=> tb!261857 m!6155172))

(assert (=> d!1649580 t!371793))

(declare-fun b_and!350443 () Bool)

(assert (= b_and!350441 (and (=> t!371793 result!328956) b_and!350443)))

(assert (=> d!1649580 m!6154936))

(declare-fun m!6155174 () Bool)

(assert (=> d!1649580 m!6155174))

(assert (=> b!5097668 d!1649580))

(declare-fun d!1649582 () Bool)

(assert (=> d!1649582 (= (seqFromList!6120 (originalCharacters!8771 (_1!35003 (get!20364 lt!2094798)))) (fromListB!2767 (originalCharacters!8771 (_1!35003 (get!20364 lt!2094798)))))))

(declare-fun bs!1191408 () Bool)

(assert (= bs!1191408 d!1649582))

(declare-fun m!6155176 () Bool)

(assert (=> bs!1191408 m!6155176))

(assert (=> b!5097668 d!1649582))

(declare-fun d!1649584 () Bool)

(assert (=> d!1649584 (= (isEmpty!31758 (_1!35002 lt!2094686)) ((_ is Nil!58679) (_1!35002 lt!2094686)))))

(assert (=> b!5097605 d!1649584))

(declare-fun b!5097947 () Bool)

(declare-fun res!2169631 () Bool)

(declare-fun e!3179393 () Bool)

(assert (=> b!5097947 (=> (not res!2169631) (not e!3179393))))

(declare-fun lt!2094897 () List!58803)

(assert (=> b!5097947 (= res!2169631 (= (size!39307 lt!2094897) (+ (size!39307 (list!19150 (charsOf!5480 (_1!35003 (get!20364 lt!2094798))))) (size!39307 (_2!35003 (get!20364 lt!2094798))))))))

(declare-fun d!1649586 () Bool)

(assert (=> d!1649586 e!3179393))

(declare-fun res!2169630 () Bool)

(assert (=> d!1649586 (=> (not res!2169630) (not e!3179393))))

(assert (=> d!1649586 (= res!2169630 (= (content!10443 lt!2094897) ((_ map or) (content!10443 (list!19150 (charsOf!5480 (_1!35003 (get!20364 lt!2094798))))) (content!10443 (_2!35003 (get!20364 lt!2094798))))))))

(declare-fun e!3179394 () List!58803)

(assert (=> d!1649586 (= lt!2094897 e!3179394)))

(declare-fun c!876004 () Bool)

(assert (=> d!1649586 (= c!876004 ((_ is Nil!58679) (list!19150 (charsOf!5480 (_1!35003 (get!20364 lt!2094798))))))))

(assert (=> d!1649586 (= (++!12859 (list!19150 (charsOf!5480 (_1!35003 (get!20364 lt!2094798)))) (_2!35003 (get!20364 lt!2094798))) lt!2094897)))

(declare-fun b!5097948 () Bool)

(assert (=> b!5097948 (= e!3179393 (or (not (= (_2!35003 (get!20364 lt!2094798)) Nil!58679)) (= lt!2094897 (list!19150 (charsOf!5480 (_1!35003 (get!20364 lt!2094798)))))))))

(declare-fun b!5097945 () Bool)

(assert (=> b!5097945 (= e!3179394 (_2!35003 (get!20364 lt!2094798)))))

(declare-fun b!5097946 () Bool)

(assert (=> b!5097946 (= e!3179394 (Cons!58679 (h!65127 (list!19150 (charsOf!5480 (_1!35003 (get!20364 lt!2094798))))) (++!12859 (t!371780 (list!19150 (charsOf!5480 (_1!35003 (get!20364 lt!2094798))))) (_2!35003 (get!20364 lt!2094798)))))))

(assert (= (and d!1649586 c!876004) b!5097945))

(assert (= (and d!1649586 (not c!876004)) b!5097946))

(assert (= (and d!1649586 res!2169630) b!5097947))

(assert (= (and b!5097947 res!2169631) b!5097948))

(declare-fun m!6155178 () Bool)

(assert (=> b!5097947 m!6155178))

(assert (=> b!5097947 m!6154916))

(declare-fun m!6155180 () Bool)

(assert (=> b!5097947 m!6155180))

(assert (=> b!5097947 m!6154932))

(declare-fun m!6155182 () Bool)

(assert (=> d!1649586 m!6155182))

(assert (=> d!1649586 m!6154916))

(declare-fun m!6155184 () Bool)

(assert (=> d!1649586 m!6155184))

(declare-fun m!6155186 () Bool)

(assert (=> d!1649586 m!6155186))

(declare-fun m!6155188 () Bool)

(assert (=> b!5097946 m!6155188))

(assert (=> b!5097669 d!1649586))

(declare-fun d!1649588 () Bool)

(assert (=> d!1649588 (= (list!19150 (charsOf!5480 (_1!35003 (get!20364 lt!2094798)))) (list!19152 (c!875885 (charsOf!5480 (_1!35003 (get!20364 lt!2094798))))))))

(declare-fun bs!1191409 () Bool)

(assert (= bs!1191409 d!1649588))

(declare-fun m!6155190 () Bool)

(assert (=> bs!1191409 m!6155190))

(assert (=> b!5097669 d!1649588))

(declare-fun d!1649590 () Bool)

(declare-fun lt!2094900 () BalanceConc!30522)

(assert (=> d!1649590 (= (list!19150 lt!2094900) (originalCharacters!8771 (_1!35003 (get!20364 lt!2094798))))))

(assert (=> d!1649590 (= lt!2094900 (dynLambda!23581 (toChars!11416 (transformation!8530 (rule!11806 (_1!35003 (get!20364 lt!2094798))))) (value!273405 (_1!35003 (get!20364 lt!2094798)))))))

(assert (=> d!1649590 (= (charsOf!5480 (_1!35003 (get!20364 lt!2094798))) lt!2094900)))

(declare-fun b_lambda!198833 () Bool)

(assert (=> (not b_lambda!198833) (not d!1649590)))

(declare-fun tb!261859 () Bool)

(declare-fun t!371795 () Bool)

(assert (=> (and b!5097463 (= (toChars!11416 (transformation!8530 rule!158)) (toChars!11416 (transformation!8530 (rule!11806 (_1!35003 (get!20364 lt!2094798)))))) t!371795) tb!261859))

(declare-fun b!5097949 () Bool)

(declare-fun e!3179395 () Bool)

(declare-fun tp!1421526 () Bool)

(assert (=> b!5097949 (= e!3179395 (and (inv!78185 (c!875885 (dynLambda!23581 (toChars!11416 (transformation!8530 (rule!11806 (_1!35003 (get!20364 lt!2094798))))) (value!273405 (_1!35003 (get!20364 lt!2094798)))))) tp!1421526))))

(declare-fun result!328958 () Bool)

(assert (=> tb!261859 (= result!328958 (and (inv!78186 (dynLambda!23581 (toChars!11416 (transformation!8530 (rule!11806 (_1!35003 (get!20364 lt!2094798))))) (value!273405 (_1!35003 (get!20364 lt!2094798))))) e!3179395))))

(assert (= tb!261859 b!5097949))

(declare-fun m!6155192 () Bool)

(assert (=> b!5097949 m!6155192))

(declare-fun m!6155194 () Bool)

(assert (=> tb!261859 m!6155194))

(assert (=> d!1649590 t!371795))

(declare-fun b_and!350445 () Bool)

(assert (= b_and!350439 (and (=> t!371795 result!328958) b_and!350445)))

(declare-fun m!6155196 () Bool)

(assert (=> d!1649590 m!6155196))

(declare-fun m!6155198 () Bool)

(assert (=> d!1649590 m!6155198))

(assert (=> b!5097669 d!1649590))

(assert (=> b!5097669 d!1649544))

(declare-fun d!1649592 () Bool)

(declare-fun lt!2094901 () Int)

(assert (=> d!1649592 (>= lt!2094901 0)))

(declare-fun e!3179396 () Int)

(assert (=> d!1649592 (= lt!2094901 e!3179396)))

(declare-fun c!876005 () Bool)

(assert (=> d!1649592 (= c!876005 ((_ is Nil!58679) (t!371780 input!1493)))))

(assert (=> d!1649592 (= (size!39307 (t!371780 input!1493)) lt!2094901)))

(declare-fun b!5097950 () Bool)

(assert (=> b!5097950 (= e!3179396 0)))

(declare-fun b!5097951 () Bool)

(assert (=> b!5097951 (= e!3179396 (+ 1 (size!39307 (t!371780 (t!371780 input!1493)))))))

(assert (= (and d!1649592 c!876005) b!5097950))

(assert (= (and d!1649592 (not c!876005)) b!5097951))

(declare-fun m!6155200 () Bool)

(assert (=> b!5097951 m!6155200))

(assert (=> b!5097726 d!1649592))

(declare-fun b!5097953 () Bool)

(declare-fun e!3179402 () Bool)

(declare-fun lt!2094902 () Bool)

(assert (=> b!5097953 (= e!3179402 (not lt!2094902))))

(declare-fun b!5097954 () Bool)

(declare-fun e!3179400 () Bool)

(declare-fun call!355024 () Bool)

(assert (=> b!5097954 (= e!3179400 (= lt!2094902 call!355024))))

(declare-fun bm!355019 () Bool)

(assert (=> bm!355019 (= call!355024 (isEmpty!31758 (list!19150 (charsOf!5480 (_1!35003 (get!20364 lt!2094798))))))))

(declare-fun b!5097955 () Bool)

(declare-fun res!2169635 () Bool)

(declare-fun e!3179401 () Bool)

(assert (=> b!5097955 (=> (not res!2169635) (not e!3179401))))

(assert (=> b!5097955 (= res!2169635 (not call!355024))))

(declare-fun b!5097956 () Bool)

(declare-fun res!2169632 () Bool)

(assert (=> b!5097956 (=> (not res!2169632) (not e!3179401))))

(assert (=> b!5097956 (= res!2169632 (isEmpty!31758 (tail!9983 (list!19150 (charsOf!5480 (_1!35003 (get!20364 lt!2094798)))))))))

(declare-fun b!5097957 () Bool)

(assert (=> b!5097957 (= e!3179400 e!3179402)))

(declare-fun c!876006 () Bool)

(assert (=> b!5097957 (= c!876006 ((_ is EmptyLang!14005) (regex!8530 rule!158)))))

(declare-fun b!5097958 () Bool)

(declare-fun e!3179397 () Bool)

(declare-fun e!3179399 () Bool)

(assert (=> b!5097958 (= e!3179397 e!3179399)))

(declare-fun res!2169637 () Bool)

(assert (=> b!5097958 (=> res!2169637 e!3179399)))

(assert (=> b!5097958 (= res!2169637 call!355024)))

(declare-fun b!5097959 () Bool)

(declare-fun res!2169639 () Bool)

(assert (=> b!5097959 (=> res!2169639 e!3179399)))

(assert (=> b!5097959 (= res!2169639 (not (isEmpty!31758 (tail!9983 (list!19150 (charsOf!5480 (_1!35003 (get!20364 lt!2094798))))))))))

(declare-fun b!5097960 () Bool)

(declare-fun e!3179403 () Bool)

(assert (=> b!5097960 (= e!3179403 e!3179397)))

(declare-fun res!2169636 () Bool)

(assert (=> b!5097960 (=> (not res!2169636) (not e!3179397))))

(assert (=> b!5097960 (= res!2169636 (not lt!2094902))))

(declare-fun b!5097961 () Bool)

(declare-fun res!2169638 () Bool)

(assert (=> b!5097961 (=> res!2169638 e!3179403)))

(assert (=> b!5097961 (= res!2169638 (not ((_ is ElementMatch!14005) (regex!8530 rule!158))))))

(assert (=> b!5097961 (= e!3179402 e!3179403)))

(declare-fun b!5097952 () Bool)

(declare-fun e!3179398 () Bool)

(assert (=> b!5097952 (= e!3179398 (nullable!4706 (regex!8530 rule!158)))))

(declare-fun d!1649594 () Bool)

(assert (=> d!1649594 e!3179400))

(declare-fun c!876007 () Bool)

(assert (=> d!1649594 (= c!876007 ((_ is EmptyExpr!14005) (regex!8530 rule!158)))))

(assert (=> d!1649594 (= lt!2094902 e!3179398)))

(declare-fun c!876008 () Bool)

(assert (=> d!1649594 (= c!876008 (isEmpty!31758 (list!19150 (charsOf!5480 (_1!35003 (get!20364 lt!2094798))))))))

(assert (=> d!1649594 (validRegex!6131 (regex!8530 rule!158))))

(assert (=> d!1649594 (= (matchR!6802 (regex!8530 rule!158) (list!19150 (charsOf!5480 (_1!35003 (get!20364 lt!2094798))))) lt!2094902)))

(declare-fun b!5097962 () Bool)

(assert (=> b!5097962 (= e!3179398 (matchR!6802 (derivativeStep!3992 (regex!8530 rule!158) (head!10828 (list!19150 (charsOf!5480 (_1!35003 (get!20364 lt!2094798)))))) (tail!9983 (list!19150 (charsOf!5480 (_1!35003 (get!20364 lt!2094798)))))))))

(declare-fun b!5097963 () Bool)

(declare-fun res!2169634 () Bool)

(assert (=> b!5097963 (=> res!2169634 e!3179403)))

(assert (=> b!5097963 (= res!2169634 e!3179401)))

(declare-fun res!2169633 () Bool)

(assert (=> b!5097963 (=> (not res!2169633) (not e!3179401))))

(assert (=> b!5097963 (= res!2169633 lt!2094902)))

(declare-fun b!5097964 () Bool)

(assert (=> b!5097964 (= e!3179399 (not (= (head!10828 (list!19150 (charsOf!5480 (_1!35003 (get!20364 lt!2094798))))) (c!875884 (regex!8530 rule!158)))))))

(declare-fun b!5097965 () Bool)

(assert (=> b!5097965 (= e!3179401 (= (head!10828 (list!19150 (charsOf!5480 (_1!35003 (get!20364 lt!2094798))))) (c!875884 (regex!8530 rule!158))))))

(assert (= (and d!1649594 c!876008) b!5097952))

(assert (= (and d!1649594 (not c!876008)) b!5097962))

(assert (= (and d!1649594 c!876007) b!5097954))

(assert (= (and d!1649594 (not c!876007)) b!5097957))

(assert (= (and b!5097957 c!876006) b!5097953))

(assert (= (and b!5097957 (not c!876006)) b!5097961))

(assert (= (and b!5097961 (not res!2169638)) b!5097963))

(assert (= (and b!5097963 res!2169633) b!5097955))

(assert (= (and b!5097955 res!2169635) b!5097956))

(assert (= (and b!5097956 res!2169632) b!5097965))

(assert (= (and b!5097963 (not res!2169634)) b!5097960))

(assert (= (and b!5097960 res!2169636) b!5097958))

(assert (= (and b!5097958 (not res!2169637)) b!5097959))

(assert (= (and b!5097959 (not res!2169639)) b!5097964))

(assert (= (or b!5097954 b!5097955 b!5097958) bm!355019))

(assert (=> b!5097952 m!6154736))

(assert (=> b!5097965 m!6154916))

(declare-fun m!6155202 () Bool)

(assert (=> b!5097965 m!6155202))

(assert (=> b!5097962 m!6154916))

(assert (=> b!5097962 m!6155202))

(assert (=> b!5097962 m!6155202))

(declare-fun m!6155204 () Bool)

(assert (=> b!5097962 m!6155204))

(assert (=> b!5097962 m!6154916))

(declare-fun m!6155206 () Bool)

(assert (=> b!5097962 m!6155206))

(assert (=> b!5097962 m!6155204))

(assert (=> b!5097962 m!6155206))

(declare-fun m!6155208 () Bool)

(assert (=> b!5097962 m!6155208))

(assert (=> d!1649594 m!6154916))

(declare-fun m!6155210 () Bool)

(assert (=> d!1649594 m!6155210))

(assert (=> d!1649594 m!6154734))

(assert (=> b!5097959 m!6154916))

(assert (=> b!5097959 m!6155206))

(assert (=> b!5097959 m!6155206))

(declare-fun m!6155212 () Bool)

(assert (=> b!5097959 m!6155212))

(assert (=> b!5097956 m!6154916))

(assert (=> b!5097956 m!6155206))

(assert (=> b!5097956 m!6155206))

(assert (=> b!5097956 m!6155212))

(assert (=> b!5097964 m!6154916))

(assert (=> b!5097964 m!6155202))

(assert (=> bm!355019 m!6154916))

(assert (=> bm!355019 m!6155210))

(assert (=> b!5097667 d!1649594))

(assert (=> b!5097667 d!1649588))

(assert (=> b!5097667 d!1649590))

(assert (=> b!5097667 d!1649544))

(declare-fun d!1649596 () Bool)

(declare-fun e!3179406 () Bool)

(assert (=> d!1649596 e!3179406))

(declare-fun res!2169643 () Bool)

(assert (=> d!1649596 (=> (not res!2169643) (not e!3179406))))

(assert (=> d!1649596 (= res!2169643 (validRegex!6131 (regex!8530 rule!158)))))

(assert (=> d!1649596 (= (focus!365 (regex!8530 rule!158)) (store ((as const (Array Context!6776 Bool)) false) (Context!6777 (Cons!58681 (regex!8530 rule!158) Nil!58681)) true))))

(declare-fun b!5097968 () Bool)

(declare-datatypes ((List!58807 0))(
  ( (Nil!58683) (Cons!58683 (h!65131 Context!6776) (t!371808 List!58807)) )
))
(declare-fun unfocusZipper!349 (List!58807) Regex!14005)

(declare-fun toList!8141 ((InoxSet Context!6776)) List!58807)

(assert (=> b!5097968 (= e!3179406 (= (unfocusZipper!349 (toList!8141 (store ((as const (Array Context!6776 Bool)) false) (Context!6777 (Cons!58681 (regex!8530 rule!158) Nil!58681)) true))) (regex!8530 rule!158)))))

(assert (= (and d!1649596 res!2169643) b!5097968))

(assert (=> d!1649596 m!6154734))

(declare-fun m!6155214 () Bool)

(assert (=> d!1649596 m!6155214))

(assert (=> b!5097968 m!6155214))

(assert (=> b!5097968 m!6155214))

(declare-fun m!6155216 () Bool)

(assert (=> b!5097968 m!6155216))

(assert (=> b!5097968 m!6155216))

(declare-fun m!6155218 () Bool)

(assert (=> b!5097968 m!6155218))

(assert (=> d!1649460 d!1649596))

(declare-fun d!1649598 () Bool)

(assert (=> d!1649598 (= (findLongestMatchZipper!30 lt!2094588 input!1493) (findLongestMatch!1838 (regex!8530 rule!158) input!1493))))

(declare-fun lt!2094905 () Unit!149731)

(declare-fun choose!37342 (Regex!14005 (InoxSet Context!6776) List!58803) Unit!149731)

(assert (=> d!1649598 (= lt!2094905 (choose!37342 (regex!8530 rule!158) lt!2094588 input!1493))))

(assert (=> d!1649598 (validRegex!6131 (regex!8530 rule!158))))

(assert (=> d!1649598 (= (longestMatchSameAsRegex!26 (regex!8530 rule!158) lt!2094588 input!1493) lt!2094905)))

(declare-fun bs!1191410 () Bool)

(assert (= bs!1191410 d!1649598))

(assert (=> bs!1191410 m!6154746))

(assert (=> bs!1191410 m!6154750))

(declare-fun m!6155220 () Bool)

(assert (=> bs!1191410 m!6155220))

(assert (=> bs!1191410 m!6154734))

(assert (=> d!1649460 d!1649598))

(assert (=> d!1649460 d!1649536))

(declare-fun d!1649600 () Bool)

(declare-fun lt!2094914 () tuple2!63398)

(assert (=> d!1649600 (= (++!12859 (_1!35002 lt!2094914) (_2!35002 lt!2094914)) input!1493)))

(declare-fun findLongestMatchInnerZipper!85 ((InoxSet Context!6776) List!58803 Int List!58803 List!58803 Int) tuple2!63398)

(assert (=> d!1649600 (= lt!2094914 (findLongestMatchInnerZipper!85 lt!2094588 Nil!58679 0 input!1493 input!1493 (sizeTr!416 input!1493 0)))))

(declare-fun lt!2094915 () Unit!149731)

(declare-fun lt!2094917 () Unit!149731)

(assert (=> d!1649600 (= lt!2094915 lt!2094917)))

(declare-fun lt!2094916 () Int)

(assert (=> d!1649600 (= (sizeTr!416 input!1493 lt!2094916) (+ (size!39307 input!1493) lt!2094916))))

(assert (=> d!1649600 (= lt!2094917 (lemmaSizeTrEqualsSize!415 input!1493 lt!2094916))))

(assert (=> d!1649600 (= lt!2094916 0)))

(assert (=> d!1649600 (= (findLongestMatchZipper!30 lt!2094588 input!1493) lt!2094914)))

(declare-fun bs!1191411 () Bool)

(assert (= bs!1191411 d!1649600))

(declare-fun m!6155222 () Bool)

(assert (=> bs!1191411 m!6155222))

(declare-fun m!6155224 () Bool)

(assert (=> bs!1191411 m!6155224))

(declare-fun m!6155226 () Bool)

(assert (=> bs!1191411 m!6155226))

(assert (=> bs!1191411 m!6155222))

(declare-fun m!6155228 () Bool)

(assert (=> bs!1191411 m!6155228))

(assert (=> bs!1191411 m!6154718))

(declare-fun m!6155230 () Bool)

(assert (=> bs!1191411 m!6155230))

(assert (=> d!1649460 d!1649600))

(declare-fun d!1649602 () Bool)

(assert (=> d!1649602 (= (sizeTr!416 input!1493 lt!2094583) (+ (size!39307 input!1493) lt!2094583))))

(declare-fun lt!2094920 () Unit!149731)

(declare-fun choose!37343 (List!58803 Int) Unit!149731)

(assert (=> d!1649602 (= lt!2094920 (choose!37343 input!1493 lt!2094583))))

(assert (=> d!1649602 (= (lemmaSizeTrEqualsSize!415 input!1493 lt!2094583) lt!2094920)))

(declare-fun bs!1191412 () Bool)

(assert (= bs!1191412 d!1649602))

(assert (=> bs!1191412 m!6154752))

(assert (=> bs!1191412 m!6154718))

(declare-fun m!6155232 () Bool)

(assert (=> bs!1191412 m!6155232))

(assert (=> d!1649460 d!1649602))

(declare-fun d!1649604 () Bool)

(declare-fun lt!2094941 () tuple2!63398)

(assert (=> d!1649604 (= (++!12859 (_1!35002 lt!2094941) (_2!35002 lt!2094941)) input!1493)))

(assert (=> d!1649604 (= lt!2094941 (findLongestMatchInner!2026 (regex!8530 rule!158) Nil!58679 0 input!1493 input!1493 (sizeTr!416 input!1493 0)))))

(declare-fun lt!2094944 () Unit!149731)

(declare-fun lt!2094943 () Unit!149731)

(assert (=> d!1649604 (= lt!2094944 lt!2094943)))

(declare-fun lt!2094940 () List!58803)

(declare-fun lt!2094938 () Int)

(assert (=> d!1649604 (= (sizeTr!416 lt!2094940 lt!2094938) (+ (size!39307 lt!2094940) lt!2094938))))

(assert (=> d!1649604 (= lt!2094943 (lemmaSizeTrEqualsSize!415 lt!2094940 lt!2094938))))

(assert (=> d!1649604 (= lt!2094938 0)))

(assert (=> d!1649604 (= lt!2094940 Nil!58679)))

(declare-fun lt!2094942 () Unit!149731)

(declare-fun lt!2094937 () Unit!149731)

(assert (=> d!1649604 (= lt!2094942 lt!2094937)))

(declare-fun lt!2094939 () Int)

(assert (=> d!1649604 (= (sizeTr!416 input!1493 lt!2094939) (+ (size!39307 input!1493) lt!2094939))))

(assert (=> d!1649604 (= lt!2094937 (lemmaSizeTrEqualsSize!415 input!1493 lt!2094939))))

(assert (=> d!1649604 (= lt!2094939 0)))

(assert (=> d!1649604 (validRegex!6131 (regex!8530 rule!158))))

(assert (=> d!1649604 (= (findLongestMatch!1838 (regex!8530 rule!158) input!1493) lt!2094941)))

(declare-fun bs!1191413 () Bool)

(assert (= bs!1191413 d!1649604))

(assert (=> bs!1191413 m!6155222))

(declare-fun m!6155234 () Bool)

(assert (=> bs!1191413 m!6155234))

(assert (=> bs!1191413 m!6155222))

(declare-fun m!6155236 () Bool)

(assert (=> bs!1191413 m!6155236))

(declare-fun m!6155238 () Bool)

(assert (=> bs!1191413 m!6155238))

(assert (=> bs!1191413 m!6154718))

(assert (=> bs!1191413 m!6154734))

(declare-fun m!6155240 () Bool)

(assert (=> bs!1191413 m!6155240))

(declare-fun m!6155242 () Bool)

(assert (=> bs!1191413 m!6155242))

(declare-fun m!6155244 () Bool)

(assert (=> bs!1191413 m!6155244))

(declare-fun m!6155246 () Bool)

(assert (=> bs!1191413 m!6155246))

(assert (=> d!1649460 d!1649604))

(declare-fun d!1649606 () Bool)

(declare-fun c!876011 () Bool)

(assert (=> d!1649606 (= c!876011 ((_ is Nil!58679) input!1493))))

(declare-fun e!3179409 () Int)

(assert (=> d!1649606 (= (sizeTr!416 input!1493 lt!2094583) e!3179409)))

(declare-fun b!5097973 () Bool)

(assert (=> b!5097973 (= e!3179409 lt!2094583)))

(declare-fun b!5097974 () Bool)

(assert (=> b!5097974 (= e!3179409 (sizeTr!416 (t!371780 input!1493) (+ lt!2094583 1)))))

(assert (= (and d!1649606 c!876011) b!5097973))

(assert (= (and d!1649606 (not c!876011)) b!5097974))

(declare-fun m!6155248 () Bool)

(assert (=> b!5097974 m!6155248))

(assert (=> d!1649460 d!1649606))

(assert (=> d!1649460 d!1649508))

(declare-fun d!1649608 () Bool)

(assert (=> d!1649608 (= (seqFromList!6120 (_1!35002 lt!2094797)) (fromListB!2767 (_1!35002 lt!2094797)))))

(declare-fun bs!1191414 () Bool)

(assert (= bs!1191414 d!1649608))

(declare-fun m!6155250 () Bool)

(assert (=> bs!1191414 m!6155250))

(assert (=> b!5097666 d!1649608))

(assert (=> b!5097666 d!1649480))

(assert (=> b!5097666 d!1649540))

(declare-fun bs!1191415 () Bool)

(declare-fun d!1649610 () Bool)

(assert (= bs!1191415 (and d!1649610 d!1649496)))

(declare-fun lambda!249926 () Int)

(assert (=> bs!1191415 (= lambda!249926 lambda!249922)))

(declare-fun b!5097975 () Bool)

(declare-fun e!3179410 () Bool)

(assert (=> b!5097975 (= e!3179410 true)))

(assert (=> d!1649610 e!3179410))

(assert (= d!1649610 b!5097975))

(assert (=> b!5097975 (< (dynLambda!23578 order!26769 (toValue!11557 (transformation!8530 rule!158))) (dynLambda!23579 order!26771 lambda!249926))))

(assert (=> b!5097975 (< (dynLambda!23580 order!26773 (toChars!11416 (transformation!8530 rule!158))) (dynLambda!23579 order!26771 lambda!249926))))

(assert (=> d!1649610 (= (list!19150 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) (seqFromList!6120 (_1!35002 lt!2094797))))) (list!19150 (seqFromList!6120 (_1!35002 lt!2094797))))))

(declare-fun lt!2094945 () Unit!149731)

(assert (=> d!1649610 (= lt!2094945 (ForallOf!1292 lambda!249926 (seqFromList!6120 (_1!35002 lt!2094797))))))

(assert (=> d!1649610 (= (lemmaSemiInverse!2652 (transformation!8530 rule!158) (seqFromList!6120 (_1!35002 lt!2094797))) lt!2094945)))

(declare-fun b_lambda!198835 () Bool)

(assert (=> (not b_lambda!198835) (not d!1649610)))

(declare-fun t!371797 () Bool)

(declare-fun tb!261861 () Bool)

(assert (=> (and b!5097463 (= (toChars!11416 (transformation!8530 rule!158)) (toChars!11416 (transformation!8530 rule!158))) t!371797) tb!261861))

(declare-fun tp!1421527 () Bool)

(declare-fun e!3179411 () Bool)

(declare-fun b!5097976 () Bool)

(assert (=> b!5097976 (= e!3179411 (and (inv!78185 (c!875885 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) (seqFromList!6120 (_1!35002 lt!2094797)))))) tp!1421527))))

(declare-fun result!328960 () Bool)

(assert (=> tb!261861 (= result!328960 (and (inv!78186 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) (seqFromList!6120 (_1!35002 lt!2094797))))) e!3179411))))

(assert (= tb!261861 b!5097976))

(declare-fun m!6155252 () Bool)

(assert (=> b!5097976 m!6155252))

(declare-fun m!6155254 () Bool)

(assert (=> tb!261861 m!6155254))

(assert (=> d!1649610 t!371797))

(declare-fun b_and!350447 () Bool)

(assert (= b_and!350445 (and (=> t!371797 result!328960) b_and!350447)))

(declare-fun b_lambda!198837 () Bool)

(assert (=> (not b_lambda!198837) (not d!1649610)))

(declare-fun t!371799 () Bool)

(declare-fun tb!261863 () Bool)

(assert (=> (and b!5097463 (= (toValue!11557 (transformation!8530 rule!158)) (toValue!11557 (transformation!8530 rule!158))) t!371799) tb!261863))

(declare-fun result!328962 () Bool)

(assert (=> tb!261863 (= result!328962 (inv!21 (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) (seqFromList!6120 (_1!35002 lt!2094797)))))))

(declare-fun m!6155256 () Bool)

(assert (=> tb!261863 m!6155256))

(assert (=> d!1649610 t!371799))

(declare-fun b_and!350449 () Bool)

(assert (= b_and!350443 (and (=> t!371799 result!328962) b_and!350449)))

(declare-fun m!6155258 () Bool)

(assert (=> d!1649610 m!6155258))

(declare-fun m!6155260 () Bool)

(assert (=> d!1649610 m!6155260))

(assert (=> d!1649610 m!6154922))

(declare-fun m!6155262 () Bool)

(assert (=> d!1649610 m!6155262))

(assert (=> d!1649610 m!6154922))

(declare-fun m!6155264 () Bool)

(assert (=> d!1649610 m!6155264))

(assert (=> d!1649610 m!6155262))

(assert (=> d!1649610 m!6155258))

(assert (=> d!1649610 m!6154922))

(declare-fun m!6155266 () Bool)

(assert (=> d!1649610 m!6155266))

(assert (=> b!5097666 d!1649610))

(declare-fun d!1649612 () Bool)

(assert (=> d!1649612 (= (apply!14302 (transformation!8530 rule!158) (seqFromList!6120 (_1!35002 lt!2094797))) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) (seqFromList!6120 (_1!35002 lt!2094797))))))

(declare-fun b_lambda!198839 () Bool)

(assert (=> (not b_lambda!198839) (not d!1649612)))

(assert (=> d!1649612 t!371799))

(declare-fun b_and!350451 () Bool)

(assert (= b_and!350449 (and (=> t!371799 result!328962) b_and!350451)))

(assert (=> d!1649612 m!6154922))

(assert (=> d!1649612 m!6155262))

(assert (=> b!5097666 d!1649612))

(assert (=> b!5097666 d!1649502))

(declare-fun d!1649614 () Bool)

(declare-fun lt!2094948 () Int)

(assert (=> d!1649614 (= lt!2094948 (size!39307 (list!19150 (seqFromList!6120 (_1!35002 lt!2094797)))))))

(declare-fun size!39310 (Conc!15702) Int)

(assert (=> d!1649614 (= lt!2094948 (size!39310 (c!875885 (seqFromList!6120 (_1!35002 lt!2094797)))))))

(assert (=> d!1649614 (= (size!39308 (seqFromList!6120 (_1!35002 lt!2094797))) lt!2094948)))

(declare-fun bs!1191416 () Bool)

(assert (= bs!1191416 d!1649614))

(assert (=> bs!1191416 m!6154922))

(assert (=> bs!1191416 m!6155266))

(assert (=> bs!1191416 m!6155266))

(declare-fun m!6155268 () Bool)

(assert (=> bs!1191416 m!6155268))

(declare-fun m!6155270 () Bool)

(assert (=> bs!1191416 m!6155270))

(assert (=> b!5097666 d!1649614))

(assert (=> b!5097666 d!1649508))

(assert (=> b!5097666 d!1649510))

(declare-fun d!1649616 () Bool)

(assert (=> d!1649616 (= (head!10828 (_1!35002 lt!2094566)) (h!65127 (_1!35002 lt!2094566)))))

(assert (=> b!5097514 d!1649616))

(declare-fun d!1649618 () Bool)

(declare-fun e!3179415 () Bool)

(assert (=> d!1649618 e!3179415))

(declare-fun res!2169644 () Bool)

(assert (=> d!1649618 (=> res!2169644 e!3179415)))

(declare-fun lt!2094949 () Bool)

(assert (=> d!1649618 (= res!2169644 (not lt!2094949))))

(declare-fun e!3179413 () Bool)

(assert (=> d!1649618 (= lt!2094949 e!3179413)))

(declare-fun res!2169647 () Bool)

(assert (=> d!1649618 (=> res!2169647 e!3179413)))

(assert (=> d!1649618 (= res!2169647 ((_ is Nil!58679) input!1493))))

(assert (=> d!1649618 (= (isPrefix!5415 input!1493 input!1493) lt!2094949)))

(declare-fun b!5097980 () Bool)

(assert (=> b!5097980 (= e!3179415 (>= (size!39307 input!1493) (size!39307 input!1493)))))

(declare-fun b!5097978 () Bool)

(declare-fun res!2169646 () Bool)

(declare-fun e!3179414 () Bool)

(assert (=> b!5097978 (=> (not res!2169646) (not e!3179414))))

(assert (=> b!5097978 (= res!2169646 (= (head!10828 input!1493) (head!10828 input!1493)))))

(declare-fun b!5097979 () Bool)

(assert (=> b!5097979 (= e!3179414 (isPrefix!5415 (tail!9983 input!1493) (tail!9983 input!1493)))))

(declare-fun b!5097977 () Bool)

(assert (=> b!5097977 (= e!3179413 e!3179414)))

(declare-fun res!2169645 () Bool)

(assert (=> b!5097977 (=> (not res!2169645) (not e!3179414))))

(assert (=> b!5097977 (= res!2169645 (not ((_ is Nil!58679) input!1493)))))

(assert (= (and d!1649618 (not res!2169647)) b!5097977))

(assert (= (and b!5097977 res!2169645) b!5097978))

(assert (= (and b!5097978 res!2169646) b!5097979))

(assert (= (and d!1649618 (not res!2169644)) b!5097980))

(assert (=> b!5097980 m!6154718))

(assert (=> b!5097980 m!6154718))

(assert (=> b!5097978 m!6154808))

(assert (=> b!5097978 m!6154808))

(assert (=> b!5097979 m!6154810))

(assert (=> b!5097979 m!6154810))

(assert (=> b!5097979 m!6154810))

(assert (=> b!5097979 m!6154810))

(declare-fun m!6155272 () Bool)

(assert (=> b!5097979 m!6155272))

(assert (=> bm!354963 d!1649618))

(assert (=> b!5097513 d!1649616))

(declare-fun b!5097983 () Bool)

(declare-fun res!2169649 () Bool)

(declare-fun e!3179416 () Bool)

(assert (=> b!5097983 (=> (not res!2169649) (not e!3179416))))

(declare-fun lt!2094950 () List!58803)

(assert (=> b!5097983 (= res!2169649 (= (size!39307 lt!2094950) (+ (size!39307 Nil!58679) (size!39307 (Cons!58679 (head!10828 (getSuffix!3157 input!1493 Nil!58679)) Nil!58679)))))))

(declare-fun d!1649620 () Bool)

(assert (=> d!1649620 e!3179416))

(declare-fun res!2169648 () Bool)

(assert (=> d!1649620 (=> (not res!2169648) (not e!3179416))))

(assert (=> d!1649620 (= res!2169648 (= (content!10443 lt!2094950) ((_ map or) (content!10443 Nil!58679) (content!10443 (Cons!58679 (head!10828 (getSuffix!3157 input!1493 Nil!58679)) Nil!58679)))))))

(declare-fun e!3179417 () List!58803)

(assert (=> d!1649620 (= lt!2094950 e!3179417)))

(declare-fun c!876012 () Bool)

(assert (=> d!1649620 (= c!876012 ((_ is Nil!58679) Nil!58679))))

(assert (=> d!1649620 (= (++!12859 Nil!58679 (Cons!58679 (head!10828 (getSuffix!3157 input!1493 Nil!58679)) Nil!58679)) lt!2094950)))

(declare-fun b!5097984 () Bool)

(assert (=> b!5097984 (= e!3179416 (or (not (= (Cons!58679 (head!10828 (getSuffix!3157 input!1493 Nil!58679)) Nil!58679) Nil!58679)) (= lt!2094950 Nil!58679)))))

(declare-fun b!5097981 () Bool)

(assert (=> b!5097981 (= e!3179417 (Cons!58679 (head!10828 (getSuffix!3157 input!1493 Nil!58679)) Nil!58679))))

(declare-fun b!5097982 () Bool)

(assert (=> b!5097982 (= e!3179417 (Cons!58679 (h!65127 Nil!58679) (++!12859 (t!371780 Nil!58679) (Cons!58679 (head!10828 (getSuffix!3157 input!1493 Nil!58679)) Nil!58679))))))

(assert (= (and d!1649620 c!876012) b!5097981))

(assert (= (and d!1649620 (not c!876012)) b!5097982))

(assert (= (and d!1649620 res!2169648) b!5097983))

(assert (= (and b!5097983 res!2169649) b!5097984))

(declare-fun m!6155274 () Bool)

(assert (=> b!5097983 m!6155274))

(assert (=> b!5097983 m!6154716))

(declare-fun m!6155276 () Bool)

(assert (=> b!5097983 m!6155276))

(declare-fun m!6155278 () Bool)

(assert (=> d!1649620 m!6155278))

(assert (=> d!1649620 m!6155132))

(declare-fun m!6155280 () Bool)

(assert (=> d!1649620 m!6155280))

(declare-fun m!6155282 () Bool)

(assert (=> b!5097982 m!6155282))

(assert (=> b!5097599 d!1649620))

(declare-fun d!1649622 () Bool)

(assert (=> d!1649622 (= (head!10828 input!1493) (h!65127 input!1493))))

(assert (=> b!5097599 d!1649622))

(declare-fun b!5097987 () Bool)

(declare-fun res!2169651 () Bool)

(declare-fun e!3179418 () Bool)

(assert (=> b!5097987 (=> (not res!2169651) (not e!3179418))))

(declare-fun lt!2094951 () List!58803)

(assert (=> b!5097987 (= res!2169651 (= (size!39307 lt!2094951) (+ (size!39307 (++!12859 Nil!58679 (Cons!58679 lt!2094698 Nil!58679))) (size!39307 lt!2094674))))))

(declare-fun d!1649624 () Bool)

(assert (=> d!1649624 e!3179418))

(declare-fun res!2169650 () Bool)

(assert (=> d!1649624 (=> (not res!2169650) (not e!3179418))))

(assert (=> d!1649624 (= res!2169650 (= (content!10443 lt!2094951) ((_ map or) (content!10443 (++!12859 Nil!58679 (Cons!58679 lt!2094698 Nil!58679))) (content!10443 lt!2094674))))))

(declare-fun e!3179419 () List!58803)

(assert (=> d!1649624 (= lt!2094951 e!3179419)))

(declare-fun c!876013 () Bool)

(assert (=> d!1649624 (= c!876013 ((_ is Nil!58679) (++!12859 Nil!58679 (Cons!58679 lt!2094698 Nil!58679))))))

(assert (=> d!1649624 (= (++!12859 (++!12859 Nil!58679 (Cons!58679 lt!2094698 Nil!58679)) lt!2094674) lt!2094951)))

(declare-fun b!5097988 () Bool)

(assert (=> b!5097988 (= e!3179418 (or (not (= lt!2094674 Nil!58679)) (= lt!2094951 (++!12859 Nil!58679 (Cons!58679 lt!2094698 Nil!58679)))))))

(declare-fun b!5097985 () Bool)

(assert (=> b!5097985 (= e!3179419 lt!2094674)))

(declare-fun b!5097986 () Bool)

(assert (=> b!5097986 (= e!3179419 (Cons!58679 (h!65127 (++!12859 Nil!58679 (Cons!58679 lt!2094698 Nil!58679))) (++!12859 (t!371780 (++!12859 Nil!58679 (Cons!58679 lt!2094698 Nil!58679))) lt!2094674)))))

(assert (= (and d!1649624 c!876013) b!5097985))

(assert (= (and d!1649624 (not c!876013)) b!5097986))

(assert (= (and d!1649624 res!2169650) b!5097987))

(assert (= (and b!5097987 res!2169651) b!5097988))

(declare-fun m!6155284 () Bool)

(assert (=> b!5097987 m!6155284))

(assert (=> b!5097987 m!6154812))

(declare-fun m!6155286 () Bool)

(assert (=> b!5097987 m!6155286))

(declare-fun m!6155288 () Bool)

(assert (=> b!5097987 m!6155288))

(declare-fun m!6155290 () Bool)

(assert (=> d!1649624 m!6155290))

(assert (=> d!1649624 m!6154812))

(declare-fun m!6155292 () Bool)

(assert (=> d!1649624 m!6155292))

(declare-fun m!6155294 () Bool)

(assert (=> d!1649624 m!6155294))

(declare-fun m!6155296 () Bool)

(assert (=> b!5097986 m!6155296))

(assert (=> b!5097599 d!1649624))

(declare-fun b!5097991 () Bool)

(declare-fun res!2169653 () Bool)

(declare-fun e!3179420 () Bool)

(assert (=> b!5097991 (=> (not res!2169653) (not e!3179420))))

(declare-fun lt!2094952 () List!58803)

(assert (=> b!5097991 (= res!2169653 (= (size!39307 lt!2094952) (+ (size!39307 Nil!58679) (size!39307 (Cons!58679 lt!2094698 Nil!58679)))))))

(declare-fun d!1649626 () Bool)

(assert (=> d!1649626 e!3179420))

(declare-fun res!2169652 () Bool)

(assert (=> d!1649626 (=> (not res!2169652) (not e!3179420))))

(assert (=> d!1649626 (= res!2169652 (= (content!10443 lt!2094952) ((_ map or) (content!10443 Nil!58679) (content!10443 (Cons!58679 lt!2094698 Nil!58679)))))))

(declare-fun e!3179421 () List!58803)

(assert (=> d!1649626 (= lt!2094952 e!3179421)))

(declare-fun c!876014 () Bool)

(assert (=> d!1649626 (= c!876014 ((_ is Nil!58679) Nil!58679))))

(assert (=> d!1649626 (= (++!12859 Nil!58679 (Cons!58679 lt!2094698 Nil!58679)) lt!2094952)))

(declare-fun b!5097992 () Bool)

(assert (=> b!5097992 (= e!3179420 (or (not (= (Cons!58679 lt!2094698 Nil!58679) Nil!58679)) (= lt!2094952 Nil!58679)))))

(declare-fun b!5097989 () Bool)

(assert (=> b!5097989 (= e!3179421 (Cons!58679 lt!2094698 Nil!58679))))

(declare-fun b!5097990 () Bool)

(assert (=> b!5097990 (= e!3179421 (Cons!58679 (h!65127 Nil!58679) (++!12859 (t!371780 Nil!58679) (Cons!58679 lt!2094698 Nil!58679))))))

(assert (= (and d!1649626 c!876014) b!5097989))

(assert (= (and d!1649626 (not c!876014)) b!5097990))

(assert (= (and d!1649626 res!2169652) b!5097991))

(assert (= (and b!5097991 res!2169653) b!5097992))

(declare-fun m!6155298 () Bool)

(assert (=> b!5097991 m!6155298))

(assert (=> b!5097991 m!6154716))

(declare-fun m!6155300 () Bool)

(assert (=> b!5097991 m!6155300))

(declare-fun m!6155302 () Bool)

(assert (=> d!1649626 m!6155302))

(assert (=> d!1649626 m!6155132))

(declare-fun m!6155304 () Bool)

(assert (=> d!1649626 m!6155304))

(declare-fun m!6155306 () Bool)

(assert (=> b!5097990 m!6155306))

(assert (=> b!5097599 d!1649626))

(assert (=> b!5097599 d!1649566))

(declare-fun d!1649628 () Bool)

(declare-fun e!3179424 () Bool)

(assert (=> d!1649628 e!3179424))

(declare-fun res!2169654 () Bool)

(assert (=> d!1649628 (=> res!2169654 e!3179424)))

(declare-fun lt!2094953 () Bool)

(assert (=> d!1649628 (= res!2169654 (not lt!2094953))))

(declare-fun e!3179422 () Bool)

(assert (=> d!1649628 (= lt!2094953 e!3179422)))

(declare-fun res!2169657 () Bool)

(assert (=> d!1649628 (=> res!2169657 e!3179422)))

(assert (=> d!1649628 (= res!2169657 ((_ is Nil!58679) (++!12859 Nil!58679 (Cons!58679 (head!10828 (getSuffix!3157 input!1493 Nil!58679)) Nil!58679))))))

(assert (=> d!1649628 (= (isPrefix!5415 (++!12859 Nil!58679 (Cons!58679 (head!10828 (getSuffix!3157 input!1493 Nil!58679)) Nil!58679)) input!1493) lt!2094953)))

(declare-fun b!5097996 () Bool)

(assert (=> b!5097996 (= e!3179424 (>= (size!39307 input!1493) (size!39307 (++!12859 Nil!58679 (Cons!58679 (head!10828 (getSuffix!3157 input!1493 Nil!58679)) Nil!58679)))))))

(declare-fun b!5097994 () Bool)

(declare-fun res!2169656 () Bool)

(declare-fun e!3179423 () Bool)

(assert (=> b!5097994 (=> (not res!2169656) (not e!3179423))))

(assert (=> b!5097994 (= res!2169656 (= (head!10828 (++!12859 Nil!58679 (Cons!58679 (head!10828 (getSuffix!3157 input!1493 Nil!58679)) Nil!58679))) (head!10828 input!1493)))))

(declare-fun b!5097995 () Bool)

(assert (=> b!5097995 (= e!3179423 (isPrefix!5415 (tail!9983 (++!12859 Nil!58679 (Cons!58679 (head!10828 (getSuffix!3157 input!1493 Nil!58679)) Nil!58679))) (tail!9983 input!1493)))))

(declare-fun b!5097993 () Bool)

(assert (=> b!5097993 (= e!3179422 e!3179423)))

(declare-fun res!2169655 () Bool)

(assert (=> b!5097993 (=> (not res!2169655) (not e!3179423))))

(assert (=> b!5097993 (= res!2169655 (not ((_ is Nil!58679) input!1493)))))

(assert (= (and d!1649628 (not res!2169657)) b!5097993))

(assert (= (and b!5097993 res!2169655) b!5097994))

(assert (= (and b!5097994 res!2169656) b!5097995))

(assert (= (and d!1649628 (not res!2169654)) b!5097996))

(assert (=> b!5097996 m!6154718))

(assert (=> b!5097996 m!6154816))

(declare-fun m!6155308 () Bool)

(assert (=> b!5097996 m!6155308))

(assert (=> b!5097994 m!6154816))

(declare-fun m!6155310 () Bool)

(assert (=> b!5097994 m!6155310))

(assert (=> b!5097994 m!6154808))

(assert (=> b!5097995 m!6154816))

(declare-fun m!6155312 () Bool)

(assert (=> b!5097995 m!6155312))

(assert (=> b!5097995 m!6154810))

(assert (=> b!5097995 m!6155312))

(assert (=> b!5097995 m!6154810))

(declare-fun m!6155314 () Bool)

(assert (=> b!5097995 m!6155314))

(assert (=> b!5097599 d!1649628))

(declare-fun d!1649630 () Bool)

(assert (=> d!1649630 (= (++!12859 (++!12859 Nil!58679 (Cons!58679 lt!2094698 Nil!58679)) lt!2094674) input!1493)))

(declare-fun lt!2094956 () Unit!149731)

(declare-fun choose!37344 (List!58803 C!28268 List!58803 List!58803) Unit!149731)

(assert (=> d!1649630 (= lt!2094956 (choose!37344 Nil!58679 lt!2094698 lt!2094674 input!1493))))

(assert (=> d!1649630 (= (++!12859 Nil!58679 (Cons!58679 lt!2094698 lt!2094674)) input!1493)))

(assert (=> d!1649630 (= (lemmaMoveElementToOtherListKeepsConcatEq!1513 Nil!58679 lt!2094698 lt!2094674 input!1493) lt!2094956)))

(declare-fun bs!1191417 () Bool)

(assert (= bs!1191417 d!1649630))

(assert (=> bs!1191417 m!6154812))

(assert (=> bs!1191417 m!6154812))

(assert (=> bs!1191417 m!6154814))

(declare-fun m!6155316 () Bool)

(assert (=> bs!1191417 m!6155316))

(declare-fun m!6155318 () Bool)

(assert (=> bs!1191417 m!6155318))

(assert (=> b!5097599 d!1649630))

(assert (=> b!5097599 d!1649556))

(declare-fun d!1649632 () Bool)

(assert (=> d!1649632 (= (head!10828 (getSuffix!3157 input!1493 Nil!58679)) (h!65127 (getSuffix!3157 input!1493 Nil!58679)))))

(assert (=> b!5097599 d!1649632))

(declare-fun d!1649634 () Bool)

(assert (=> d!1649634 (<= (size!39307 Nil!58679) (size!39307 input!1493))))

(declare-fun lt!2094959 () Unit!149731)

(declare-fun choose!37345 (List!58803 List!58803) Unit!149731)

(assert (=> d!1649634 (= lt!2094959 (choose!37345 Nil!58679 input!1493))))

(assert (=> d!1649634 (isPrefix!5415 Nil!58679 input!1493)))

(assert (=> d!1649634 (= (lemmaIsPrefixThenSmallerEqSize!828 Nil!58679 input!1493) lt!2094959)))

(declare-fun bs!1191418 () Bool)

(assert (= bs!1191418 d!1649634))

(assert (=> bs!1191418 m!6154716))

(assert (=> bs!1191418 m!6154718))

(declare-fun m!6155320 () Bool)

(assert (=> bs!1191418 m!6155320))

(assert (=> bs!1191418 m!6155140))

(assert (=> b!5097599 d!1649634))

(declare-fun d!1649636 () Bool)

(assert (=> d!1649636 (isPrefix!5415 (++!12859 Nil!58679 (Cons!58679 (head!10828 (getSuffix!3157 input!1493 Nil!58679)) Nil!58679)) input!1493)))

(declare-fun lt!2094962 () Unit!149731)

(declare-fun choose!37346 (List!58803 List!58803) Unit!149731)

(assert (=> d!1649636 (= lt!2094962 (choose!37346 Nil!58679 input!1493))))

(assert (=> d!1649636 (isPrefix!5415 Nil!58679 input!1493)))

(assert (=> d!1649636 (= (lemmaAddHeadSuffixToPrefixStillPrefix!902 Nil!58679 input!1493) lt!2094962)))

(declare-fun bs!1191419 () Bool)

(assert (= bs!1191419 d!1649636))

(assert (=> bs!1191419 m!6154816))

(declare-fun m!6155322 () Bool)

(assert (=> bs!1191419 m!6155322))

(assert (=> bs!1191419 m!6154824))

(assert (=> bs!1191419 m!6155140))

(assert (=> bs!1191419 m!6154824))

(assert (=> bs!1191419 m!6154828))

(assert (=> bs!1191419 m!6154816))

(assert (=> bs!1191419 m!6154820))

(assert (=> b!5097599 d!1649636))

(declare-fun b!5097999 () Bool)

(declare-fun res!2169659 () Bool)

(declare-fun e!3179425 () Bool)

(assert (=> b!5097999 (=> (not res!2169659) (not e!3179425))))

(declare-fun lt!2094963 () List!58803)

(assert (=> b!5097999 (= res!2169659 (= (size!39307 lt!2094963) (+ (size!39307 Nil!58679) (size!39307 (Cons!58679 (head!10828 input!1493) Nil!58679)))))))

(declare-fun d!1649638 () Bool)

(assert (=> d!1649638 e!3179425))

(declare-fun res!2169658 () Bool)

(assert (=> d!1649638 (=> (not res!2169658) (not e!3179425))))

(assert (=> d!1649638 (= res!2169658 (= (content!10443 lt!2094963) ((_ map or) (content!10443 Nil!58679) (content!10443 (Cons!58679 (head!10828 input!1493) Nil!58679)))))))

(declare-fun e!3179426 () List!58803)

(assert (=> d!1649638 (= lt!2094963 e!3179426)))

(declare-fun c!876015 () Bool)

(assert (=> d!1649638 (= c!876015 ((_ is Nil!58679) Nil!58679))))

(assert (=> d!1649638 (= (++!12859 Nil!58679 (Cons!58679 (head!10828 input!1493) Nil!58679)) lt!2094963)))

(declare-fun b!5098000 () Bool)

(assert (=> b!5098000 (= e!3179425 (or (not (= (Cons!58679 (head!10828 input!1493) Nil!58679) Nil!58679)) (= lt!2094963 Nil!58679)))))

(declare-fun b!5097997 () Bool)

(assert (=> b!5097997 (= e!3179426 (Cons!58679 (head!10828 input!1493) Nil!58679))))

(declare-fun b!5097998 () Bool)

(assert (=> b!5097998 (= e!3179426 (Cons!58679 (h!65127 Nil!58679) (++!12859 (t!371780 Nil!58679) (Cons!58679 (head!10828 input!1493) Nil!58679))))))

(assert (= (and d!1649638 c!876015) b!5097997))

(assert (= (and d!1649638 (not c!876015)) b!5097998))

(assert (= (and d!1649638 res!2169658) b!5097999))

(assert (= (and b!5097999 res!2169659) b!5098000))

(declare-fun m!6155324 () Bool)

(assert (=> b!5097999 m!6155324))

(assert (=> b!5097999 m!6154716))

(declare-fun m!6155326 () Bool)

(assert (=> b!5097999 m!6155326))

(declare-fun m!6155328 () Bool)

(assert (=> d!1649638 m!6155328))

(assert (=> d!1649638 m!6155132))

(declare-fun m!6155330 () Bool)

(assert (=> d!1649638 m!6155330))

(declare-fun m!6155332 () Bool)

(assert (=> b!5097998 m!6155332))

(assert (=> b!5097599 d!1649638))

(assert (=> b!5097599 d!1649508))

(assert (=> b!5097599 d!1649510))

(declare-fun b!5098002 () Bool)

(declare-fun e!3179432 () Bool)

(declare-fun lt!2094964 () Bool)

(assert (=> b!5098002 (= e!3179432 (not lt!2094964))))

(declare-fun b!5098003 () Bool)

(declare-fun e!3179430 () Bool)

(declare-fun call!355025 () Bool)

(assert (=> b!5098003 (= e!3179430 (= lt!2094964 call!355025))))

(declare-fun bm!355020 () Bool)

(assert (=> bm!355020 (= call!355025 (isEmpty!31758 (tail!9983 (_1!35002 lt!2094566))))))

(declare-fun b!5098004 () Bool)

(declare-fun res!2169663 () Bool)

(declare-fun e!3179431 () Bool)

(assert (=> b!5098004 (=> (not res!2169663) (not e!3179431))))

(assert (=> b!5098004 (= res!2169663 (not call!355025))))

(declare-fun b!5098005 () Bool)

(declare-fun res!2169660 () Bool)

(assert (=> b!5098005 (=> (not res!2169660) (not e!3179431))))

(assert (=> b!5098005 (= res!2169660 (isEmpty!31758 (tail!9983 (tail!9983 (_1!35002 lt!2094566)))))))

(declare-fun b!5098006 () Bool)

(assert (=> b!5098006 (= e!3179430 e!3179432)))

(declare-fun c!876016 () Bool)

(assert (=> b!5098006 (= c!876016 ((_ is EmptyLang!14005) (derivativeStep!3992 (regex!8530 rule!158) (head!10828 (_1!35002 lt!2094566)))))))

(declare-fun b!5098007 () Bool)

(declare-fun e!3179427 () Bool)

(declare-fun e!3179429 () Bool)

(assert (=> b!5098007 (= e!3179427 e!3179429)))

(declare-fun res!2169665 () Bool)

(assert (=> b!5098007 (=> res!2169665 e!3179429)))

(assert (=> b!5098007 (= res!2169665 call!355025)))

(declare-fun b!5098008 () Bool)

(declare-fun res!2169667 () Bool)

(assert (=> b!5098008 (=> res!2169667 e!3179429)))

(assert (=> b!5098008 (= res!2169667 (not (isEmpty!31758 (tail!9983 (tail!9983 (_1!35002 lt!2094566))))))))

(declare-fun b!5098009 () Bool)

(declare-fun e!3179433 () Bool)

(assert (=> b!5098009 (= e!3179433 e!3179427)))

(declare-fun res!2169664 () Bool)

(assert (=> b!5098009 (=> (not res!2169664) (not e!3179427))))

(assert (=> b!5098009 (= res!2169664 (not lt!2094964))))

(declare-fun b!5098010 () Bool)

(declare-fun res!2169666 () Bool)

(assert (=> b!5098010 (=> res!2169666 e!3179433)))

(assert (=> b!5098010 (= res!2169666 (not ((_ is ElementMatch!14005) (derivativeStep!3992 (regex!8530 rule!158) (head!10828 (_1!35002 lt!2094566))))))))

(assert (=> b!5098010 (= e!3179432 e!3179433)))

(declare-fun b!5098001 () Bool)

(declare-fun e!3179428 () Bool)

(assert (=> b!5098001 (= e!3179428 (nullable!4706 (derivativeStep!3992 (regex!8530 rule!158) (head!10828 (_1!35002 lt!2094566)))))))

(declare-fun d!1649640 () Bool)

(assert (=> d!1649640 e!3179430))

(declare-fun c!876017 () Bool)

(assert (=> d!1649640 (= c!876017 ((_ is EmptyExpr!14005) (derivativeStep!3992 (regex!8530 rule!158) (head!10828 (_1!35002 lt!2094566)))))))

(assert (=> d!1649640 (= lt!2094964 e!3179428)))

(declare-fun c!876018 () Bool)

(assert (=> d!1649640 (= c!876018 (isEmpty!31758 (tail!9983 (_1!35002 lt!2094566))))))

(assert (=> d!1649640 (validRegex!6131 (derivativeStep!3992 (regex!8530 rule!158) (head!10828 (_1!35002 lt!2094566))))))

(assert (=> d!1649640 (= (matchR!6802 (derivativeStep!3992 (regex!8530 rule!158) (head!10828 (_1!35002 lt!2094566))) (tail!9983 (_1!35002 lt!2094566))) lt!2094964)))

(declare-fun b!5098011 () Bool)

(assert (=> b!5098011 (= e!3179428 (matchR!6802 (derivativeStep!3992 (derivativeStep!3992 (regex!8530 rule!158) (head!10828 (_1!35002 lt!2094566))) (head!10828 (tail!9983 (_1!35002 lt!2094566)))) (tail!9983 (tail!9983 (_1!35002 lt!2094566)))))))

(declare-fun b!5098012 () Bool)

(declare-fun res!2169662 () Bool)

(assert (=> b!5098012 (=> res!2169662 e!3179433)))

(assert (=> b!5098012 (= res!2169662 e!3179431)))

(declare-fun res!2169661 () Bool)

(assert (=> b!5098012 (=> (not res!2169661) (not e!3179431))))

(assert (=> b!5098012 (= res!2169661 lt!2094964)))

(declare-fun b!5098013 () Bool)

(assert (=> b!5098013 (= e!3179429 (not (= (head!10828 (tail!9983 (_1!35002 lt!2094566))) (c!875884 (derivativeStep!3992 (regex!8530 rule!158) (head!10828 (_1!35002 lt!2094566)))))))))

(declare-fun b!5098014 () Bool)

(assert (=> b!5098014 (= e!3179431 (= (head!10828 (tail!9983 (_1!35002 lt!2094566))) (c!875884 (derivativeStep!3992 (regex!8530 rule!158) (head!10828 (_1!35002 lt!2094566))))))))

(assert (= (and d!1649640 c!876018) b!5098001))

(assert (= (and d!1649640 (not c!876018)) b!5098011))

(assert (= (and d!1649640 c!876017) b!5098003))

(assert (= (and d!1649640 (not c!876017)) b!5098006))

(assert (= (and b!5098006 c!876016) b!5098002))

(assert (= (and b!5098006 (not c!876016)) b!5098010))

(assert (= (and b!5098010 (not res!2169666)) b!5098012))

(assert (= (and b!5098012 res!2169661) b!5098004))

(assert (= (and b!5098004 res!2169663) b!5098005))

(assert (= (and b!5098005 res!2169660) b!5098014))

(assert (= (and b!5098012 (not res!2169662)) b!5098009))

(assert (= (and b!5098009 res!2169664) b!5098007))

(assert (= (and b!5098007 (not res!2169665)) b!5098008))

(assert (= (and b!5098008 (not res!2169667)) b!5098013))

(assert (= (or b!5098003 b!5098004 b!5098007) bm!355020))

(assert (=> b!5098001 m!6154756))

(declare-fun m!6155334 () Bool)

(assert (=> b!5098001 m!6155334))

(assert (=> b!5098014 m!6154758))

(declare-fun m!6155336 () Bool)

(assert (=> b!5098014 m!6155336))

(assert (=> b!5098011 m!6154758))

(assert (=> b!5098011 m!6155336))

(assert (=> b!5098011 m!6154756))

(assert (=> b!5098011 m!6155336))

(declare-fun m!6155338 () Bool)

(assert (=> b!5098011 m!6155338))

(assert (=> b!5098011 m!6154758))

(declare-fun m!6155340 () Bool)

(assert (=> b!5098011 m!6155340))

(assert (=> b!5098011 m!6155338))

(assert (=> b!5098011 m!6155340))

(declare-fun m!6155342 () Bool)

(assert (=> b!5098011 m!6155342))

(assert (=> d!1649640 m!6154758))

(assert (=> d!1649640 m!6154762))

(assert (=> d!1649640 m!6154756))

(declare-fun m!6155344 () Bool)

(assert (=> d!1649640 m!6155344))

(assert (=> b!5098008 m!6154758))

(assert (=> b!5098008 m!6155340))

(assert (=> b!5098008 m!6155340))

(declare-fun m!6155346 () Bool)

(assert (=> b!5098008 m!6155346))

(assert (=> b!5098005 m!6154758))

(assert (=> b!5098005 m!6155340))

(assert (=> b!5098005 m!6155340))

(assert (=> b!5098005 m!6155346))

(assert (=> b!5098013 m!6154758))

(assert (=> b!5098013 m!6155336))

(assert (=> bm!355020 m!6154758))

(assert (=> bm!355020 m!6154762))

(assert (=> b!5097511 d!1649640))

(declare-fun c!876023 () Bool)

(declare-fun call!355029 () Regex!14005)

(declare-fun c!876021 () Bool)

(declare-fun bm!355021 () Bool)

(declare-fun c!876020 () Bool)

(assert (=> bm!355021 (= call!355029 (derivativeStep!3992 (ite c!876023 (regTwo!28523 (regex!8530 rule!158)) (ite c!876021 (reg!14334 (regex!8530 rule!158)) (ite c!876020 (regTwo!28522 (regex!8530 rule!158)) (regOne!28522 (regex!8530 rule!158))))) (head!10828 (_1!35002 lt!2094566))))))

(declare-fun b!5098015 () Bool)

(declare-fun e!3179436 () Regex!14005)

(assert (=> b!5098015 (= e!3179436 (ite (= (head!10828 (_1!35002 lt!2094566)) (c!875884 (regex!8530 rule!158))) EmptyExpr!14005 EmptyLang!14005))))

(declare-fun b!5098016 () Bool)

(declare-fun e!3179437 () Regex!14005)

(assert (=> b!5098016 (= e!3179437 e!3179436)))

(declare-fun c!876022 () Bool)

(assert (=> b!5098016 (= c!876022 ((_ is ElementMatch!14005) (regex!8530 rule!158)))))

(declare-fun b!5098017 () Bool)

(declare-fun e!3179434 () Regex!14005)

(declare-fun call!355028 () Regex!14005)

(assert (=> b!5098017 (= e!3179434 (Union!14005 (Concat!22849 call!355028 (regTwo!28522 (regex!8530 rule!158))) EmptyLang!14005))))

(declare-fun b!5098018 () Bool)

(declare-fun e!3179435 () Regex!14005)

(declare-fun call!355026 () Regex!14005)

(assert (=> b!5098018 (= e!3179435 (Union!14005 call!355026 call!355029))))

(declare-fun b!5098019 () Bool)

(assert (=> b!5098019 (= c!876020 (nullable!4706 (regOne!28522 (regex!8530 rule!158))))))

(declare-fun e!3179438 () Regex!14005)

(assert (=> b!5098019 (= e!3179438 e!3179434)))

(declare-fun b!5098020 () Bool)

(assert (=> b!5098020 (= e!3179435 e!3179438)))

(assert (=> b!5098020 (= c!876021 ((_ is Star!14005) (regex!8530 rule!158)))))

(declare-fun bm!355022 () Bool)

(declare-fun call!355027 () Regex!14005)

(assert (=> bm!355022 (= call!355027 call!355029)))

(declare-fun bm!355024 () Bool)

(assert (=> bm!355024 (= call!355026 (derivativeStep!3992 (ite c!876023 (regOne!28523 (regex!8530 rule!158)) (regOne!28522 (regex!8530 rule!158))) (head!10828 (_1!35002 lt!2094566))))))

(declare-fun b!5098021 () Bool)

(assert (=> b!5098021 (= e!3179438 (Concat!22849 call!355027 (regex!8530 rule!158)))))

(declare-fun b!5098022 () Bool)

(assert (=> b!5098022 (= c!876023 ((_ is Union!14005) (regex!8530 rule!158)))))

(assert (=> b!5098022 (= e!3179436 e!3179435)))

(declare-fun d!1649642 () Bool)

(declare-fun lt!2094965 () Regex!14005)

(assert (=> d!1649642 (validRegex!6131 lt!2094965)))

(assert (=> d!1649642 (= lt!2094965 e!3179437)))

(declare-fun c!876019 () Bool)

(assert (=> d!1649642 (= c!876019 (or ((_ is EmptyExpr!14005) (regex!8530 rule!158)) ((_ is EmptyLang!14005) (regex!8530 rule!158))))))

(assert (=> d!1649642 (validRegex!6131 (regex!8530 rule!158))))

(assert (=> d!1649642 (= (derivativeStep!3992 (regex!8530 rule!158) (head!10828 (_1!35002 lt!2094566))) lt!2094965)))

(declare-fun bm!355023 () Bool)

(assert (=> bm!355023 (= call!355028 call!355027)))

(declare-fun b!5098023 () Bool)

(assert (=> b!5098023 (= e!3179437 EmptyLang!14005)))

(declare-fun b!5098024 () Bool)

(assert (=> b!5098024 (= e!3179434 (Union!14005 (Concat!22849 call!355026 (regTwo!28522 (regex!8530 rule!158))) call!355028))))

(assert (= (and d!1649642 c!876019) b!5098023))

(assert (= (and d!1649642 (not c!876019)) b!5098016))

(assert (= (and b!5098016 c!876022) b!5098015))

(assert (= (and b!5098016 (not c!876022)) b!5098022))

(assert (= (and b!5098022 c!876023) b!5098018))

(assert (= (and b!5098022 (not c!876023)) b!5098020))

(assert (= (and b!5098020 c!876021) b!5098021))

(assert (= (and b!5098020 (not c!876021)) b!5098019))

(assert (= (and b!5098019 c!876020) b!5098024))

(assert (= (and b!5098019 (not c!876020)) b!5098017))

(assert (= (or b!5098024 b!5098017) bm!355023))

(assert (= (or b!5098021 bm!355023) bm!355022))

(assert (= (or b!5098018 bm!355022) bm!355021))

(assert (= (or b!5098018 b!5098024) bm!355024))

(assert (=> bm!355021 m!6154754))

(declare-fun m!6155348 () Bool)

(assert (=> bm!355021 m!6155348))

(assert (=> b!5098019 m!6155154))

(assert (=> bm!355024 m!6154754))

(declare-fun m!6155350 () Bool)

(assert (=> bm!355024 m!6155350))

(declare-fun m!6155352 () Bool)

(assert (=> d!1649642 m!6155352))

(assert (=> d!1649642 m!6154734))

(assert (=> b!5097511 d!1649642))

(assert (=> b!5097511 d!1649616))

(declare-fun d!1649644 () Bool)

(assert (=> d!1649644 (= (tail!9983 (_1!35002 lt!2094566)) (t!371780 (_1!35002 lt!2094566)))))

(assert (=> b!5097511 d!1649644))

(declare-fun bs!1191420 () Bool)

(declare-fun d!1649646 () Bool)

(assert (= bs!1191420 (and d!1649646 d!1649496)))

(declare-fun lambda!249929 () Int)

(assert (=> bs!1191420 (= lambda!249929 lambda!249922)))

(declare-fun bs!1191421 () Bool)

(assert (= bs!1191421 (and d!1649646 d!1649610)))

(assert (=> bs!1191421 (= lambda!249929 lambda!249926)))

(assert (=> d!1649646 true))

(assert (=> d!1649646 (< (dynLambda!23580 order!26773 (toChars!11416 (transformation!8530 rule!158))) (dynLambda!23579 order!26771 lambda!249929))))

(assert (=> d!1649646 true))

(assert (=> d!1649646 (< (dynLambda!23578 order!26769 (toValue!11557 (transformation!8530 rule!158))) (dynLambda!23579 order!26771 lambda!249929))))

(assert (=> d!1649646 (= (semiInverseModEq!3799 (toChars!11416 (transformation!8530 rule!158)) (toValue!11557 (transformation!8530 rule!158))) (Forall!1835 lambda!249929))))

(declare-fun bs!1191422 () Bool)

(assert (= bs!1191422 d!1649646))

(declare-fun m!6155354 () Bool)

(assert (=> bs!1191422 m!6155354))

(assert (=> d!1649506 d!1649646))

(assert (=> d!1649474 d!1649646))

(declare-fun d!1649648 () Bool)

(declare-fun lt!2094966 () Int)

(assert (=> d!1649648 (>= lt!2094966 0)))

(declare-fun e!3179439 () Int)

(assert (=> d!1649648 (= lt!2094966 e!3179439)))

(declare-fun c!876024 () Bool)

(assert (=> d!1649648 (= c!876024 ((_ is Nil!58679) (_1!35002 lt!2094686)))))

(assert (=> d!1649648 (= (size!39307 (_1!35002 lt!2094686)) lt!2094966)))

(declare-fun b!5098029 () Bool)

(assert (=> b!5098029 (= e!3179439 0)))

(declare-fun b!5098030 () Bool)

(assert (=> b!5098030 (= e!3179439 (+ 1 (size!39307 (t!371780 (_1!35002 lt!2094686)))))))

(assert (= (and d!1649648 c!876024) b!5098029))

(assert (= (and d!1649648 (not c!876024)) b!5098030))

(declare-fun m!6155356 () Bool)

(assert (=> b!5098030 m!6155356))

(assert (=> b!5097597 d!1649648))

(assert (=> b!5097597 d!1649510))

(declare-fun d!1649650 () Bool)

(declare-fun isBalanced!4467 (Conc!15702) Bool)

(assert (=> d!1649650 (= (inv!78186 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565))) (isBalanced!4467 (c!875885 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565)))))))

(declare-fun bs!1191423 () Bool)

(assert (= bs!1191423 d!1649650))

(declare-fun m!6155358 () Bool)

(assert (=> bs!1191423 m!6155358))

(assert (=> tb!261855 d!1649650))

(assert (=> bm!354962 d!1649622))

(declare-fun d!1649652 () Bool)

(assert (=> d!1649652 (= (isEmpty!31759 lt!2094798) (not ((_ is Some!14646) lt!2094798)))))

(assert (=> d!1649488 d!1649652))

(declare-fun d!1649654 () Bool)

(assert (=> d!1649654 (= (isEmpty!31758 (_1!35002 lt!2094797)) ((_ is Nil!58679) (_1!35002 lt!2094797)))))

(assert (=> d!1649488 d!1649654))

(assert (=> d!1649488 d!1649604))

(assert (=> d!1649488 d!1649456))

(assert (=> b!5097724 d!1649568))

(declare-fun d!1649656 () Bool)

(assert (=> d!1649656 (= (isEmpty!31758 (tail!9983 (_1!35002 lt!2094566))) ((_ is Nil!58679) (tail!9983 (_1!35002 lt!2094566))))))

(assert (=> b!5097508 d!1649656))

(assert (=> b!5097508 d!1649644))

(assert (=> d!1649468 d!1649504))

(assert (=> d!1649468 d!1649536))

(assert (=> d!1649456 d!1649536))

(declare-fun d!1649658 () Bool)

(declare-fun e!3179442 () Bool)

(assert (=> d!1649658 e!3179442))

(declare-fun res!2169670 () Bool)

(assert (=> d!1649658 (=> (not res!2169670) (not e!3179442))))

(declare-fun lt!2094969 () BalanceConc!30522)

(assert (=> d!1649658 (= res!2169670 (= (list!19150 lt!2094969) (_1!35002 lt!2094567)))))

(declare-fun fromList!955 (List!58803) Conc!15702)

(assert (=> d!1649658 (= lt!2094969 (BalanceConc!30523 (fromList!955 (_1!35002 lt!2094567))))))

(assert (=> d!1649658 (= (fromListB!2767 (_1!35002 lt!2094567)) lt!2094969)))

(declare-fun b!5098033 () Bool)

(assert (=> b!5098033 (= e!3179442 (isBalanced!4467 (fromList!955 (_1!35002 lt!2094567))))))

(assert (= (and d!1649658 res!2169670) b!5098033))

(declare-fun m!6155360 () Bool)

(assert (=> d!1649658 m!6155360))

(declare-fun m!6155362 () Bool)

(assert (=> d!1649658 m!6155362))

(assert (=> b!5098033 m!6155362))

(assert (=> b!5098033 m!6155362))

(declare-fun m!6155364 () Bool)

(assert (=> b!5098033 m!6155364))

(assert (=> d!1649476 d!1649658))

(declare-fun d!1649660 () Bool)

(declare-fun c!876028 () Bool)

(assert (=> d!1649660 (= c!876028 ((_ is Node!15702) (c!875885 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565)))))))

(declare-fun e!3179447 () Bool)

(assert (=> d!1649660 (= (inv!78185 (c!875885 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565)))) e!3179447)))

(declare-fun b!5098040 () Bool)

(declare-fun inv!78189 (Conc!15702) Bool)

(assert (=> b!5098040 (= e!3179447 (inv!78189 (c!875885 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565)))))))

(declare-fun b!5098041 () Bool)

(declare-fun e!3179448 () Bool)

(assert (=> b!5098041 (= e!3179447 e!3179448)))

(declare-fun res!2169673 () Bool)

(assert (=> b!5098041 (= res!2169673 (not ((_ is Leaf!26058) (c!875885 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565))))))))

(assert (=> b!5098041 (=> res!2169673 e!3179448)))

(declare-fun b!5098042 () Bool)

(declare-fun inv!78190 (Conc!15702) Bool)

(assert (=> b!5098042 (= e!3179448 (inv!78190 (c!875885 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565)))))))

(assert (= (and d!1649660 c!876028) b!5098040))

(assert (= (and d!1649660 (not c!876028)) b!5098041))

(assert (= (and b!5098041 (not res!2169673)) b!5098042))

(declare-fun m!6155366 () Bool)

(assert (=> b!5098040 m!6155366))

(declare-fun m!6155368 () Bool)

(assert (=> b!5098042 m!6155368))

(assert (=> b!5097694 d!1649660))

(assert (=> bm!354961 d!1649526))

(assert (=> b!5097505 d!1649656))

(assert (=> b!5097505 d!1649644))

(declare-fun b!5098043 () Bool)

(declare-fun e!3179449 () Bool)

(assert (=> b!5098043 (= e!3179449 tp_is_empty!37275)))

(declare-fun b!5098045 () Bool)

(declare-fun tp!1421530 () Bool)

(assert (=> b!5098045 (= e!3179449 tp!1421530)))

(declare-fun b!5098044 () Bool)

(declare-fun tp!1421531 () Bool)

(declare-fun tp!1421529 () Bool)

(assert (=> b!5098044 (= e!3179449 (and tp!1421531 tp!1421529))))

(declare-fun b!5098046 () Bool)

(declare-fun tp!1421528 () Bool)

(declare-fun tp!1421532 () Bool)

(assert (=> b!5098046 (= e!3179449 (and tp!1421528 tp!1421532))))

(assert (=> b!5097747 (= tp!1421503 e!3179449)))

(assert (= (and b!5097747 ((_ is ElementMatch!14005) (regOne!28523 (regex!8530 rule!158)))) b!5098043))

(assert (= (and b!5097747 ((_ is Concat!22849) (regOne!28523 (regex!8530 rule!158)))) b!5098044))

(assert (= (and b!5097747 ((_ is Star!14005) (regOne!28523 (regex!8530 rule!158)))) b!5098045))

(assert (= (and b!5097747 ((_ is Union!14005) (regOne!28523 (regex!8530 rule!158)))) b!5098046))

(declare-fun b!5098047 () Bool)

(declare-fun e!3179450 () Bool)

(assert (=> b!5098047 (= e!3179450 tp_is_empty!37275)))

(declare-fun b!5098049 () Bool)

(declare-fun tp!1421535 () Bool)

(assert (=> b!5098049 (= e!3179450 tp!1421535)))

(declare-fun b!5098048 () Bool)

(declare-fun tp!1421536 () Bool)

(declare-fun tp!1421534 () Bool)

(assert (=> b!5098048 (= e!3179450 (and tp!1421536 tp!1421534))))

(declare-fun b!5098050 () Bool)

(declare-fun tp!1421533 () Bool)

(declare-fun tp!1421537 () Bool)

(assert (=> b!5098050 (= e!3179450 (and tp!1421533 tp!1421537))))

(assert (=> b!5097747 (= tp!1421507 e!3179450)))

(assert (= (and b!5097747 ((_ is ElementMatch!14005) (regTwo!28523 (regex!8530 rule!158)))) b!5098047))

(assert (= (and b!5097747 ((_ is Concat!22849) (regTwo!28523 (regex!8530 rule!158)))) b!5098048))

(assert (= (and b!5097747 ((_ is Star!14005) (regTwo!28523 (regex!8530 rule!158)))) b!5098049))

(assert (= (and b!5097747 ((_ is Union!14005) (regTwo!28523 (regex!8530 rule!158)))) b!5098050))

(declare-fun b!5098051 () Bool)

(declare-fun e!3179451 () Bool)

(assert (=> b!5098051 (= e!3179451 tp_is_empty!37275)))

(declare-fun b!5098053 () Bool)

(declare-fun tp!1421540 () Bool)

(assert (=> b!5098053 (= e!3179451 tp!1421540)))

(declare-fun b!5098052 () Bool)

(declare-fun tp!1421541 () Bool)

(declare-fun tp!1421539 () Bool)

(assert (=> b!5098052 (= e!3179451 (and tp!1421541 tp!1421539))))

(declare-fun b!5098054 () Bool)

(declare-fun tp!1421538 () Bool)

(declare-fun tp!1421542 () Bool)

(assert (=> b!5098054 (= e!3179451 (and tp!1421538 tp!1421542))))

(assert (=> b!5097745 (= tp!1421506 e!3179451)))

(assert (= (and b!5097745 ((_ is ElementMatch!14005) (regOne!28522 (regex!8530 rule!158)))) b!5098051))

(assert (= (and b!5097745 ((_ is Concat!22849) (regOne!28522 (regex!8530 rule!158)))) b!5098052))

(assert (= (and b!5097745 ((_ is Star!14005) (regOne!28522 (regex!8530 rule!158)))) b!5098053))

(assert (= (and b!5097745 ((_ is Union!14005) (regOne!28522 (regex!8530 rule!158)))) b!5098054))

(declare-fun b!5098055 () Bool)

(declare-fun e!3179452 () Bool)

(assert (=> b!5098055 (= e!3179452 tp_is_empty!37275)))

(declare-fun b!5098057 () Bool)

(declare-fun tp!1421545 () Bool)

(assert (=> b!5098057 (= e!3179452 tp!1421545)))

(declare-fun b!5098056 () Bool)

(declare-fun tp!1421546 () Bool)

(declare-fun tp!1421544 () Bool)

(assert (=> b!5098056 (= e!3179452 (and tp!1421546 tp!1421544))))

(declare-fun b!5098058 () Bool)

(declare-fun tp!1421543 () Bool)

(declare-fun tp!1421547 () Bool)

(assert (=> b!5098058 (= e!3179452 (and tp!1421543 tp!1421547))))

(assert (=> b!5097745 (= tp!1421504 e!3179452)))

(assert (= (and b!5097745 ((_ is ElementMatch!14005) (regTwo!28522 (regex!8530 rule!158)))) b!5098055))

(assert (= (and b!5097745 ((_ is Concat!22849) (regTwo!28522 (regex!8530 rule!158)))) b!5098056))

(assert (= (and b!5097745 ((_ is Star!14005) (regTwo!28522 (regex!8530 rule!158)))) b!5098057))

(assert (= (and b!5097745 ((_ is Union!14005) (regTwo!28522 (regex!8530 rule!158)))) b!5098058))

(declare-fun b!5098059 () Bool)

(declare-fun e!3179453 () Bool)

(assert (=> b!5098059 (= e!3179453 tp_is_empty!37275)))

(declare-fun b!5098061 () Bool)

(declare-fun tp!1421550 () Bool)

(assert (=> b!5098061 (= e!3179453 tp!1421550)))

(declare-fun b!5098060 () Bool)

(declare-fun tp!1421551 () Bool)

(declare-fun tp!1421549 () Bool)

(assert (=> b!5098060 (= e!3179453 (and tp!1421551 tp!1421549))))

(declare-fun b!5098062 () Bool)

(declare-fun tp!1421548 () Bool)

(declare-fun tp!1421552 () Bool)

(assert (=> b!5098062 (= e!3179453 (and tp!1421548 tp!1421552))))

(assert (=> b!5097746 (= tp!1421505 e!3179453)))

(assert (= (and b!5097746 ((_ is ElementMatch!14005) (reg!14334 (regex!8530 rule!158)))) b!5098059))

(assert (= (and b!5097746 ((_ is Concat!22849) (reg!14334 (regex!8530 rule!158)))) b!5098060))

(assert (= (and b!5097746 ((_ is Star!14005) (reg!14334 (regex!8530 rule!158)))) b!5098061))

(assert (= (and b!5097746 ((_ is Union!14005) (reg!14334 (regex!8530 rule!158)))) b!5098062))

(declare-fun e!3179458 () Bool)

(declare-fun tp!1421561 () Bool)

(declare-fun b!5098071 () Bool)

(declare-fun tp!1421560 () Bool)

(assert (=> b!5098071 (= e!3179458 (and (inv!78185 (left!43089 (c!875885 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565))))) tp!1421560 (inv!78185 (right!43419 (c!875885 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565))))) tp!1421561))))

(declare-fun b!5098073 () Bool)

(declare-fun e!3179459 () Bool)

(declare-fun tp!1421559 () Bool)

(assert (=> b!5098073 (= e!3179459 tp!1421559)))

(declare-fun b!5098072 () Bool)

(declare-fun inv!78191 (IArray!31465) Bool)

(assert (=> b!5098072 (= e!3179458 (and (inv!78191 (xs!19084 (c!875885 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565))))) e!3179459))))

(assert (=> b!5097694 (= tp!1421489 (and (inv!78185 (c!875885 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565)))) e!3179458))))

(assert (= (and b!5097694 ((_ is Node!15702) (c!875885 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565))))) b!5098071))

(assert (= b!5098072 b!5098073))

(assert (= (and b!5097694 ((_ is Leaf!26058) (c!875885 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565))))) b!5098072))

(declare-fun m!6155370 () Bool)

(assert (=> b!5098071 m!6155370))

(declare-fun m!6155372 () Bool)

(assert (=> b!5098071 m!6155372))

(declare-fun m!6155374 () Bool)

(assert (=> b!5098072 m!6155374))

(assert (=> b!5097694 m!6154956))

(declare-fun b!5098074 () Bool)

(declare-fun e!3179460 () Bool)

(declare-fun tp!1421562 () Bool)

(assert (=> b!5098074 (= e!3179460 (and tp_is_empty!37275 tp!1421562))))

(assert (=> b!5097733 (= tp!1421492 e!3179460)))

(assert (= (and b!5097733 ((_ is Cons!58679) (t!371780 (t!371780 input!1493)))) b!5098074))

(declare-fun b_lambda!198841 () Bool)

(assert (= b_lambda!198835 (or (and b!5097463 b_free!133513) b_lambda!198841)))

(declare-fun b_lambda!198843 () Bool)

(assert (= b_lambda!198839 (or (and b!5097463 b_free!133511) b_lambda!198843)))

(declare-fun b_lambda!198845 () Bool)

(assert (= b_lambda!198829 (or d!1649496 b_lambda!198845)))

(declare-fun bs!1191424 () Bool)

(declare-fun d!1649662 () Bool)

(assert (= bs!1191424 (and d!1649662 d!1649496)))

(assert (=> bs!1191424 (= (dynLambda!23586 lambda!249922 lt!2094565) (= (list!19150 (dynLambda!23581 (toChars!11416 (transformation!8530 rule!158)) (dynLambda!23576 (toValue!11557 (transformation!8530 rule!158)) lt!2094565))) (list!19150 lt!2094565)))))

(declare-fun b_lambda!198849 () Bool)

(assert (=> (not b_lambda!198849) (not bs!1191424)))

(assert (=> bs!1191424 t!371789))

(declare-fun b_and!350453 () Bool)

(assert (= b_and!350447 (and (=> t!371789 result!328944) b_and!350453)))

(declare-fun b_lambda!198851 () Bool)

(assert (=> (not b_lambda!198851) (not bs!1191424)))

(assert (=> bs!1191424 t!371783))

(declare-fun b_and!350455 () Bool)

(assert (= b_and!350451 (and (=> t!371783 result!328932) b_and!350455)))

(assert (=> bs!1191424 m!6154772))

(assert (=> bs!1191424 m!6154772))

(assert (=> bs!1191424 m!6154960))

(assert (=> bs!1191424 m!6154966))

(assert (=> bs!1191424 m!6154960))

(assert (=> bs!1191424 m!6154962))

(assert (=> d!1649534 d!1649662))

(declare-fun b_lambda!198847 () Bool)

(assert (= b_lambda!198837 (or (and b!5097463 b_free!133511) b_lambda!198847)))

(check-sat (not b!5097694) (not b!5097941) (not tb!261863) (not b!5098054) (not b!5097944) (not d!1649588) (not b!5097990) (not b_lambda!198831) (not b!5098005) (not bm!354996) (not b!5098044) (not d!1649578) (not d!1649634) (not d!1649570) (not d!1649530) (not b!5097935) (not bm!354999) (not d!1649558) (not d!1649532) (not d!1649594) (not b!5098060) (not b!5098050) (not tb!261859) (not b!5097869) (not tb!261861) (not b!5098071) (not b!5097994) b_and!350453 (not b!5097999) (not b!5097980) (not b_next!134301) (not b!5097998) (not b!5098058) (not bm!355004) (not d!1649638) (not b!5097976) (not bm!355003) (not b!5097995) (not b!5097831) (not d!1649560) (not d!1649640) (not bm!355014) (not b!5097808) (not d!1649590) (not d!1649646) (not b!5098056) (not b!5097894) (not b!5097991) (not bs!1191424) (not b!5097982) (not b!5097858) (not b!5097881) (not b!5098001) (not b!5098019) (not b!5097943) (not d!1649630) (not b!5097846) (not d!1649602) (not b!5097987) (not b!5097842) (not b_lambda!198821) (not b!5097890) (not b!5097949) (not b_lambda!198817) (not d!1649610) (not b_lambda!198833) (not b!5097968) (not d!1649642) (not d!1649624) (not b!5097882) (not d!1649562) (not b_next!134303) b_and!350455 (not b_lambda!198847) (not bm!355021) (not b!5097952) (not b!5098014) (not d!1649636) (not d!1649534) (not b!5098074) (not d!1649538) (not d!1649554) (not b!5097938) (not d!1649600) (not b!5098062) (not bm!354998) (not b!5097887) (not d!1649550) (not b!5098048) (not b!5097959) (not b!5097891) (not bm!355002) (not d!1649608) (not b!5097868) (not b!5098049) (not b!5097852) (not b_lambda!198849) (not b!5098030) (not b!5097880) (not d!1649596) (not d!1649526) (not b!5098045) (not b!5097947) (not d!1649598) (not b!5097900) (not bm!355017) (not b_lambda!198819) (not bm!355024) (not b!5098061) (not bm!355018) (not b!5098073) (not b!5098013) (not b!5098057) (not b!5097964) (not b!5097983) (not b_lambda!198841) (not b!5097951) (not bm!355019) (not bm!355001) (not b!5097956) (not b!5098072) tp_is_empty!37275 (not b!5098008) (not b!5098011) (not tb!261857) (not b!5098053) (not b!5098042) (not d!1649626) (not b!5097844) (not b!5097978) (not b!5097946) (not b!5097811) (not b!5097979) (not b!5098040) (not bm!355005) (not bm!355000) (not d!1649556) (not b!5097931) (not b!5097974) (not d!1649658) (not d!1649604) (not b!5097850) (not d!1649650) (not b_lambda!198851) (not d!1649548) (not d!1649582) (not b!5097996) (not d!1649576) (not d!1649614) (not b!5098052) (not b!5097986) (not b_lambda!198843) (not b!5097925) (not b!5097962) (not bm!354995) (not b_lambda!198845) (not b!5098046) (not d!1649574) (not b!5097965) (not d!1649586) (not b!5097812) (not d!1649568) (not d!1649620) (not bm!355020) (not b!5098033))
(check-sat b_and!350453 b_and!350455 (not b_next!134301) (not b_next!134303))
