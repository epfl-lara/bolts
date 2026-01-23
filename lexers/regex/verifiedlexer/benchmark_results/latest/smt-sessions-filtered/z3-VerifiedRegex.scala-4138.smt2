; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!222120 () Bool)

(assert start!222120)

(declare-fun b!2271454 () Bool)

(declare-fun b_free!67549 () Bool)

(declare-fun b_next!68253 () Bool)

(assert (=> b!2271454 (= b_free!67549 (not b_next!68253))))

(declare-fun tp!719305 () Bool)

(declare-fun b_and!178993 () Bool)

(assert (=> b!2271454 (= tp!719305 b_and!178993)))

(declare-fun b_free!67551 () Bool)

(declare-fun b_next!68255 () Bool)

(assert (=> b!2271454 (= b_free!67551 (not b_next!68255))))

(declare-fun tp!719293 () Bool)

(declare-fun b_and!178995 () Bool)

(assert (=> b!2271454 (= tp!719293 b_and!178995)))

(declare-fun b!2271441 () Bool)

(declare-fun b_free!67553 () Bool)

(declare-fun b_next!68257 () Bool)

(assert (=> b!2271441 (= b_free!67553 (not b_next!68257))))

(declare-fun tp!719304 () Bool)

(declare-fun b_and!178997 () Bool)

(assert (=> b!2271441 (= tp!719304 b_and!178997)))

(declare-fun b_free!67555 () Bool)

(declare-fun b_next!68259 () Bool)

(assert (=> b!2271441 (= b_free!67555 (not b_next!68259))))

(declare-fun tp!719295 () Bool)

(declare-fun b_and!178999 () Bool)

(assert (=> b!2271441 (= tp!719295 b_and!178999)))

(declare-fun b!2271451 () Bool)

(declare-fun b_free!67557 () Bool)

(declare-fun b_next!68261 () Bool)

(assert (=> b!2271451 (= b_free!67557 (not b_next!68261))))

(declare-fun tp!719301 () Bool)

(declare-fun b_and!179001 () Bool)

(assert (=> b!2271451 (= tp!719301 b_and!179001)))

(declare-fun b_free!67559 () Bool)

(declare-fun b_next!68263 () Bool)

(assert (=> b!2271451 (= b_free!67559 (not b_next!68263))))

(declare-fun tp!719291 () Bool)

(declare-fun b_and!179003 () Bool)

(assert (=> b!2271451 (= tp!719291 b_and!179003)))

(declare-fun b!2271438 () Bool)

(declare-fun b_free!67561 () Bool)

(declare-fun b_next!68265 () Bool)

(assert (=> b!2271438 (= b_free!67561 (not b_next!68265))))

(declare-fun tp!719306 () Bool)

(declare-fun b_and!179005 () Bool)

(assert (=> b!2271438 (= tp!719306 b_and!179005)))

(declare-fun b_free!67563 () Bool)

(declare-fun b_next!68267 () Bool)

(assert (=> b!2271438 (= b_free!67563 (not b_next!68267))))

(declare-fun tp!719299 () Bool)

(declare-fun b_and!179007 () Bool)

(assert (=> b!2271438 (= tp!719299 b_and!179007)))

(declare-fun b!2271425 () Bool)

(declare-fun res!970944 () Bool)

(declare-fun e!1454871 () Bool)

(assert (=> b!2271425 (=> (not res!970944) (not e!1454871))))

(declare-datatypes ((List!27105 0))(
  ( (Nil!27011) (Cons!27011 (h!32412 (_ BitVec 16)) (t!202617 List!27105)) )
))
(declare-datatypes ((TokenValue!4469 0))(
  ( (FloatLiteralValue!8938 (text!31728 List!27105)) (TokenValueExt!4468 (__x!17998 Int)) (Broken!22345 (value!136543 List!27105)) (Object!4562) (End!4469) (Def!4469) (Underscore!4469) (Match!4469) (Else!4469) (Error!4469) (Case!4469) (If!4469) (Extends!4469) (Abstract!4469) (Class!4469) (Val!4469) (DelimiterValue!8938 (del!4529 List!27105)) (KeywordValue!4475 (value!136544 List!27105)) (CommentValue!8938 (value!136545 List!27105)) (WhitespaceValue!8938 (value!136546 List!27105)) (IndentationValue!4469 (value!136547 List!27105)) (String!29448) (Int32!4469) (Broken!22346 (value!136548 List!27105)) (Boolean!4470) (Unit!39959) (OperatorValue!4472 (op!4529 List!27105)) (IdentifierValue!8938 (value!136549 List!27105)) (IdentifierValue!8939 (value!136550 List!27105)) (WhitespaceValue!8939 (value!136551 List!27105)) (True!8938) (False!8938) (Broken!22347 (value!136552 List!27105)) (Broken!22348 (value!136553 List!27105)) (True!8939) (RightBrace!4469) (RightBracket!4469) (Colon!4469) (Null!4469) (Comma!4469) (LeftBracket!4469) (False!8939) (LeftBrace!4469) (ImaginaryLiteralValue!4469 (text!31729 List!27105)) (StringLiteralValue!13407 (value!136554 List!27105)) (EOFValue!4469 (value!136555 List!27105)) (IdentValue!4469 (value!136556 List!27105)) (DelimiterValue!8939 (value!136557 List!27105)) (DedentValue!4469 (value!136558 List!27105)) (NewLineValue!4469 (value!136559 List!27105)) (IntegerValue!13407 (value!136560 (_ BitVec 32)) (text!31730 List!27105)) (IntegerValue!13408 (value!136561 Int) (text!31731 List!27105)) (Times!4469) (Or!4469) (Equal!4469) (Minus!4469) (Broken!22349 (value!136562 List!27105)) (And!4469) (Div!4469) (LessEqual!4469) (Mod!4469) (Concat!11124) (Not!4469) (Plus!4469) (SpaceValue!4469 (value!136563 List!27105)) (IntegerValue!13409 (value!136564 Int) (text!31732 List!27105)) (StringLiteralValue!13408 (text!31733 List!27105)) (FloatLiteralValue!8939 (text!31734 List!27105)) (BytesLiteralValue!4469 (value!136565 List!27105)) (CommentValue!8939 (value!136566 List!27105)) (StringLiteralValue!13409 (value!136567 List!27105)) (ErrorTokenValue!4469 (msg!4530 List!27105)) )
))
(declare-datatypes ((C!13456 0))(
  ( (C!13457 (val!7776 Int)) )
))
(declare-datatypes ((List!27106 0))(
  ( (Nil!27012) (Cons!27012 (h!32413 C!13456) (t!202618 List!27106)) )
))
(declare-datatypes ((IArray!17529 0))(
  ( (IArray!17530 (innerList!8822 List!27106)) )
))
(declare-datatypes ((Conc!8762 0))(
  ( (Node!8762 (left!20496 Conc!8762) (right!20826 Conc!8762) (csize!17754 Int) (cheight!8973 Int)) (Leaf!12901 (xs!11704 IArray!17529) (csize!17755 Int)) (Empty!8762) )
))
(declare-datatypes ((BalanceConc!17252 0))(
  ( (BalanceConc!17253 (c!360602 Conc!8762)) )
))
(declare-datatypes ((Regex!6655 0))(
  ( (ElementMatch!6655 (c!360603 C!13456)) (Concat!11125 (regOne!13822 Regex!6655) (regTwo!13822 Regex!6655)) (EmptyExpr!6655) (Star!6655 (reg!6984 Regex!6655)) (EmptyLang!6655) (Union!6655 (regOne!13823 Regex!6655) (regTwo!13823 Regex!6655)) )
))
(declare-datatypes ((String!29449 0))(
  ( (String!29450 (value!136568 String)) )
))
(declare-datatypes ((TokenValueInjection!8478 0))(
  ( (TokenValueInjection!8479 (toValue!6073 Int) (toChars!5932 Int)) )
))
(declare-datatypes ((Rule!8414 0))(
  ( (Rule!8415 (regex!4307 Regex!6655) (tag!4797 String!29449) (isSeparator!4307 Bool) (transformation!4307 TokenValueInjection!8478)) )
))
(declare-datatypes ((List!27107 0))(
  ( (Nil!27013) (Cons!27013 (h!32414 Rule!8414) (t!202619 List!27107)) )
))
(declare-fun rules!1750 () List!27107)

(declare-fun r!2363 () Rule!8414)

(declare-fun contains!4671 (List!27107 Rule!8414) Bool)

(assert (=> b!2271425 (= res!970944 (contains!4671 rules!1750 r!2363))))

(declare-datatypes ((Token!8092 0))(
  ( (Token!8093 (value!136569 TokenValue!4469) (rule!6625 Rule!8414) (size!21206 Int) (originalCharacters!5077 List!27106)) )
))
(declare-datatypes ((List!27108 0))(
  ( (Nil!27014) (Cons!27014 (h!32415 Token!8092) (t!202620 List!27108)) )
))
(declare-fun tokens!456 () List!27108)

(declare-fun e!1454857 () Bool)

(declare-fun tp!719302 () Bool)

(declare-fun b!2271426 () Bool)

(declare-fun e!1454872 () Bool)

(declare-fun inv!36571 (String!29449) Bool)

(declare-fun inv!36574 (TokenValueInjection!8478) Bool)

(assert (=> b!2271426 (= e!1454872 (and tp!719302 (inv!36571 (tag!4797 (rule!6625 (h!32415 tokens!456)))) (inv!36574 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) e!1454857))))

(declare-fun b!2271427 () Bool)

(declare-fun e!1454847 () Bool)

(declare-fun e!1454855 () Bool)

(assert (=> b!2271427 (= e!1454847 (not e!1454855))))

(declare-fun res!970948 () Bool)

(assert (=> b!2271427 (=> res!970948 e!1454855)))

(declare-fun e!1454868 () Bool)

(assert (=> b!2271427 (= res!970948 e!1454868)))

(declare-fun res!970940 () Bool)

(assert (=> b!2271427 (=> (not res!970940) (not e!1454868))))

(declare-fun lt!843763 () Bool)

(assert (=> b!2271427 (= res!970940 (not lt!843763))))

(declare-datatypes ((LexerInterface!3904 0))(
  ( (LexerInterfaceExt!3901 (__x!17999 Int)) (Lexer!3902) )
))
(declare-fun thiss!16613 () LexerInterface!3904)

(declare-fun ruleValid!1397 (LexerInterface!3904 Rule!8414) Bool)

(assert (=> b!2271427 (ruleValid!1397 thiss!16613 r!2363)))

(declare-datatypes ((Unit!39960 0))(
  ( (Unit!39961) )
))
(declare-fun lt!843761 () Unit!39960)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!802 (LexerInterface!3904 Rule!8414 List!27107) Unit!39960)

(assert (=> b!2271427 (= lt!843761 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!802 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2271428 () Bool)

(declare-fun e!1454854 () Bool)

(declare-fun tp_is_empty!10531 () Bool)

(declare-fun tp!719297 () Bool)

(assert (=> b!2271428 (= e!1454854 (and tp_is_empty!10531 tp!719297))))

(declare-fun tp!719294 () Bool)

(declare-fun e!1454850 () Bool)

(declare-fun b!2271429 () Bool)

(declare-fun inv!21 (TokenValue!4469) Bool)

(assert (=> b!2271429 (= e!1454850 (and (inv!21 (value!136569 (h!32415 tokens!456))) e!1454872 tp!719294))))

(declare-fun b!2271430 () Bool)

(declare-fun res!970941 () Bool)

(declare-fun e!1454870 () Bool)

(assert (=> b!2271430 (=> res!970941 e!1454870)))

(get-info :version)

(assert (=> b!2271430 (= res!970941 (not ((_ is Nil!27014) tokens!456)))))

(declare-fun b!2271431 () Bool)

(assert (=> b!2271431 (= e!1454855 e!1454870)))

(declare-fun res!970936 () Bool)

(assert (=> b!2271431 (=> res!970936 e!1454870)))

(declare-fun otherR!12 () Rule!8414)

(declare-fun getIndex!320 (List!27107 Rule!8414) Int)

(assert (=> b!2271431 (= res!970936 (<= (getIndex!320 rules!1750 r!2363) (getIndex!320 rules!1750 otherR!12)))))

(assert (=> b!2271431 (ruleValid!1397 thiss!16613 otherR!12)))

(declare-fun lt!843762 () Unit!39960)

(assert (=> b!2271431 (= lt!843762 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!802 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2271432 () Bool)

(declare-fun e!1454853 () Bool)

(declare-fun head!4902 (List!27108) Token!8092)

(assert (=> b!2271432 (= e!1454853 (= (rule!6625 (head!4902 tokens!456)) r!2363))))

(declare-fun b!2271433 () Bool)

(declare-fun rulesValidInductive!1505 (LexerInterface!3904 List!27107) Bool)

(assert (=> b!2271433 (= e!1454870 (rulesValidInductive!1505 thiss!16613 rules!1750))))

(declare-fun b!2271434 () Bool)

(declare-fun matchR!2912 (Regex!6655 List!27106) Bool)

(declare-fun list!10477 (BalanceConc!17252) List!27106)

(declare-fun charsOf!2695 (Token!8092) BalanceConc!17252)

(assert (=> b!2271434 (= e!1454868 (not (matchR!2912 (regex!4307 r!2363) (list!10477 (charsOf!2695 (head!4902 tokens!456))))))))

(declare-fun b!2271435 () Bool)

(declare-fun res!970934 () Bool)

(assert (=> b!2271435 (=> (not res!970934) (not e!1454871))))

(declare-fun isEmpty!15301 (List!27107) Bool)

(assert (=> b!2271435 (= res!970934 (not (isEmpty!15301 rules!1750)))))

(declare-fun b!2271436 () Bool)

(declare-fun res!970938 () Bool)

(assert (=> b!2271436 (=> (not res!970938) (not e!1454847))))

(assert (=> b!2271436 (= res!970938 e!1454853)))

(declare-fun res!970935 () Bool)

(assert (=> b!2271436 (=> res!970935 e!1454853)))

(assert (=> b!2271436 (= res!970935 lt!843763)))

(declare-fun res!970947 () Bool)

(assert (=> start!222120 (=> (not res!970947) (not e!1454871))))

(assert (=> start!222120 (= res!970947 ((_ is Lexer!3902) thiss!16613))))

(assert (=> start!222120 e!1454871))

(assert (=> start!222120 true))

(declare-fun e!1454858 () Bool)

(assert (=> start!222120 e!1454858))

(declare-fun e!1454864 () Bool)

(assert (=> start!222120 e!1454864))

(assert (=> start!222120 e!1454854))

(declare-fun e!1454869 () Bool)

(assert (=> start!222120 e!1454869))

(declare-fun e!1454866 () Bool)

(assert (=> start!222120 e!1454866))

(declare-fun e!1454849 () Bool)

(assert (=> start!222120 e!1454849))

(declare-fun e!1454859 () Bool)

(assert (=> start!222120 e!1454859))

(declare-fun b!2271437 () Bool)

(declare-fun e!1454861 () Bool)

(declare-fun otherP!12 () List!27106)

(declare-fun size!21207 (BalanceConc!17252) Int)

(declare-fun size!21208 (List!27106) Int)

(assert (=> b!2271437 (= e!1454861 (<= (size!21207 (charsOf!2695 (head!4902 tokens!456))) (size!21208 otherP!12)))))

(declare-fun e!1454856 () Bool)

(assert (=> b!2271438 (= e!1454856 (and tp!719306 tp!719299))))

(declare-fun e!1454860 () Bool)

(declare-fun b!2271439 () Bool)

(declare-fun tp!719300 () Bool)

(assert (=> b!2271439 (= e!1454849 (and tp!719300 (inv!36571 (tag!4797 r!2363)) (inv!36574 (transformation!4307 r!2363)) e!1454860))))

(declare-fun b!2271440 () Bool)

(declare-fun tp!719303 () Bool)

(assert (=> b!2271440 (= e!1454869 (and tp_is_empty!10531 tp!719303))))

(assert (=> b!2271441 (= e!1454857 (and tp!719304 tp!719295))))

(declare-fun b!2271442 () Bool)

(declare-fun res!970939 () Bool)

(assert (=> b!2271442 (=> (not res!970939) (not e!1454847))))

(declare-fun input!1722 () List!27106)

(declare-fun isPrefix!2297 (List!27106 List!27106) Bool)

(assert (=> b!2271442 (= res!970939 (isPrefix!2297 otherP!12 input!1722))))

(declare-fun tp!719307 () Bool)

(declare-fun b!2271443 () Bool)

(declare-fun inv!36575 (Token!8092) Bool)

(assert (=> b!2271443 (= e!1454859 (and (inv!36575 (h!32415 tokens!456)) e!1454850 tp!719307))))

(declare-fun b!2271444 () Bool)

(declare-fun e!1454873 () Bool)

(assert (=> b!2271444 (= e!1454871 e!1454873)))

(declare-fun res!970943 () Bool)

(assert (=> b!2271444 (=> (not res!970943) (not e!1454873))))

(declare-datatypes ((IArray!17531 0))(
  ( (IArray!17532 (innerList!8823 List!27108)) )
))
(declare-datatypes ((Conc!8763 0))(
  ( (Node!8763 (left!20497 Conc!8763) (right!20827 Conc!8763) (csize!17756 Int) (cheight!8974 Int)) (Leaf!12902 (xs!11705 IArray!17531) (csize!17757 Int)) (Empty!8763) )
))
(declare-datatypes ((BalanceConc!17254 0))(
  ( (BalanceConc!17255 (c!360604 Conc!8763)) )
))
(declare-datatypes ((tuple2!26684 0))(
  ( (tuple2!26685 (_1!15852 BalanceConc!17254) (_2!15852 BalanceConc!17252)) )
))
(declare-fun lt!843764 () tuple2!26684)

(declare-fun suffix!886 () List!27106)

(declare-datatypes ((tuple2!26686 0))(
  ( (tuple2!26687 (_1!15853 List!27108) (_2!15853 List!27106)) )
))
(declare-fun list!10478 (BalanceConc!17254) List!27108)

(assert (=> b!2271444 (= res!970943 (= (tuple2!26687 (list!10478 (_1!15852 lt!843764)) (list!10477 (_2!15852 lt!843764))) (tuple2!26687 tokens!456 suffix!886)))))

(declare-fun lex!1743 (LexerInterface!3904 List!27107 BalanceConc!17252) tuple2!26684)

(declare-fun seqFromList!3011 (List!27106) BalanceConc!17252)

(assert (=> b!2271444 (= lt!843764 (lex!1743 thiss!16613 rules!1750 (seqFromList!3011 input!1722)))))

(declare-fun b!2271445 () Bool)

(declare-fun tp!719298 () Bool)

(assert (=> b!2271445 (= e!1454858 (and tp_is_empty!10531 tp!719298))))

(declare-fun b!2271446 () Bool)

(declare-fun res!970937 () Bool)

(assert (=> b!2271446 (=> (not res!970937) (not e!1454847))))

(assert (=> b!2271446 (= res!970937 (not (= r!2363 otherR!12)))))

(declare-fun tp!719292 () Bool)

(declare-fun e!1454851 () Bool)

(declare-fun b!2271447 () Bool)

(assert (=> b!2271447 (= e!1454864 (and tp!719292 (inv!36571 (tag!4797 otherR!12)) (inv!36574 (transformation!4307 otherR!12)) e!1454851))))

(declare-fun b!2271448 () Bool)

(declare-fun res!970945 () Bool)

(assert (=> b!2271448 (=> (not res!970945) (not e!1454871))))

(assert (=> b!2271448 (= res!970945 (contains!4671 rules!1750 otherR!12))))

(declare-fun b!2271449 () Bool)

(assert (=> b!2271449 (= e!1454873 e!1454847)))

(declare-fun res!970942 () Bool)

(assert (=> b!2271449 (=> (not res!970942) (not e!1454847))))

(assert (=> b!2271449 (= res!970942 e!1454861)))

(declare-fun res!970949 () Bool)

(assert (=> b!2271449 (=> res!970949 e!1454861)))

(assert (=> b!2271449 (= res!970949 lt!843763)))

(declare-fun isEmpty!15302 (List!27108) Bool)

(assert (=> b!2271449 (= lt!843763 (isEmpty!15302 tokens!456))))

(declare-fun b!2271450 () Bool)

(declare-fun tp!719290 () Bool)

(declare-fun e!1454862 () Bool)

(assert (=> b!2271450 (= e!1454862 (and tp!719290 (inv!36571 (tag!4797 (h!32414 rules!1750))) (inv!36574 (transformation!4307 (h!32414 rules!1750))) e!1454856))))

(assert (=> b!2271451 (= e!1454851 (and tp!719301 tp!719291))))

(declare-fun b!2271452 () Bool)

(declare-fun tp!719296 () Bool)

(assert (=> b!2271452 (= e!1454866 (and e!1454862 tp!719296))))

(declare-fun b!2271453 () Bool)

(declare-fun res!970946 () Bool)

(assert (=> b!2271453 (=> (not res!970946) (not e!1454871))))

(declare-fun rulesInvariant!3406 (LexerInterface!3904 List!27107) Bool)

(assert (=> b!2271453 (= res!970946 (rulesInvariant!3406 thiss!16613 rules!1750))))

(assert (=> b!2271454 (= e!1454860 (and tp!719305 tp!719293))))

(assert (= (and start!222120 res!970947) b!2271435))

(assert (= (and b!2271435 res!970934) b!2271453))

(assert (= (and b!2271453 res!970946) b!2271425))

(assert (= (and b!2271425 res!970944) b!2271448))

(assert (= (and b!2271448 res!970945) b!2271444))

(assert (= (and b!2271444 res!970943) b!2271449))

(assert (= (and b!2271449 (not res!970949)) b!2271437))

(assert (= (and b!2271449 res!970942) b!2271436))

(assert (= (and b!2271436 (not res!970935)) b!2271432))

(assert (= (and b!2271436 res!970938) b!2271442))

(assert (= (and b!2271442 res!970939) b!2271446))

(assert (= (and b!2271446 res!970937) b!2271427))

(assert (= (and b!2271427 res!970940) b!2271434))

(assert (= (and b!2271427 (not res!970948)) b!2271431))

(assert (= (and b!2271431 (not res!970936)) b!2271430))

(assert (= (and b!2271430 (not res!970941)) b!2271433))

(assert (= (and start!222120 ((_ is Cons!27012) input!1722)) b!2271445))

(assert (= b!2271447 b!2271451))

(assert (= start!222120 b!2271447))

(assert (= (and start!222120 ((_ is Cons!27012) suffix!886)) b!2271428))

(assert (= (and start!222120 ((_ is Cons!27012) otherP!12)) b!2271440))

(assert (= b!2271450 b!2271438))

(assert (= b!2271452 b!2271450))

(assert (= (and start!222120 ((_ is Cons!27013) rules!1750)) b!2271452))

(assert (= b!2271439 b!2271454))

(assert (= start!222120 b!2271439))

(assert (= b!2271426 b!2271441))

(assert (= b!2271429 b!2271426))

(assert (= b!2271443 b!2271429))

(assert (= (and start!222120 ((_ is Cons!27014) tokens!456)) b!2271443))

(declare-fun m!2700101 () Bool)

(assert (=> b!2271435 m!2700101))

(declare-fun m!2700103 () Bool)

(assert (=> b!2271432 m!2700103))

(declare-fun m!2700105 () Bool)

(assert (=> b!2271427 m!2700105))

(declare-fun m!2700107 () Bool)

(assert (=> b!2271427 m!2700107))

(declare-fun m!2700109 () Bool)

(assert (=> b!2271448 m!2700109))

(declare-fun m!2700111 () Bool)

(assert (=> b!2271453 m!2700111))

(declare-fun m!2700113 () Bool)

(assert (=> b!2271444 m!2700113))

(declare-fun m!2700115 () Bool)

(assert (=> b!2271444 m!2700115))

(declare-fun m!2700117 () Bool)

(assert (=> b!2271444 m!2700117))

(assert (=> b!2271444 m!2700117))

(declare-fun m!2700119 () Bool)

(assert (=> b!2271444 m!2700119))

(declare-fun m!2700121 () Bool)

(assert (=> b!2271443 m!2700121))

(declare-fun m!2700123 () Bool)

(assert (=> b!2271439 m!2700123))

(declare-fun m!2700125 () Bool)

(assert (=> b!2271439 m!2700125))

(declare-fun m!2700127 () Bool)

(assert (=> b!2271425 m!2700127))

(declare-fun m!2700129 () Bool)

(assert (=> b!2271433 m!2700129))

(assert (=> b!2271434 m!2700103))

(assert (=> b!2271434 m!2700103))

(declare-fun m!2700131 () Bool)

(assert (=> b!2271434 m!2700131))

(assert (=> b!2271434 m!2700131))

(declare-fun m!2700133 () Bool)

(assert (=> b!2271434 m!2700133))

(assert (=> b!2271434 m!2700133))

(declare-fun m!2700135 () Bool)

(assert (=> b!2271434 m!2700135))

(declare-fun m!2700137 () Bool)

(assert (=> b!2271447 m!2700137))

(declare-fun m!2700139 () Bool)

(assert (=> b!2271447 m!2700139))

(declare-fun m!2700141 () Bool)

(assert (=> b!2271426 m!2700141))

(declare-fun m!2700143 () Bool)

(assert (=> b!2271426 m!2700143))

(assert (=> b!2271437 m!2700103))

(assert (=> b!2271437 m!2700103))

(assert (=> b!2271437 m!2700131))

(assert (=> b!2271437 m!2700131))

(declare-fun m!2700145 () Bool)

(assert (=> b!2271437 m!2700145))

(declare-fun m!2700147 () Bool)

(assert (=> b!2271437 m!2700147))

(declare-fun m!2700149 () Bool)

(assert (=> b!2271449 m!2700149))

(declare-fun m!2700151 () Bool)

(assert (=> b!2271431 m!2700151))

(declare-fun m!2700153 () Bool)

(assert (=> b!2271431 m!2700153))

(declare-fun m!2700155 () Bool)

(assert (=> b!2271431 m!2700155))

(declare-fun m!2700157 () Bool)

(assert (=> b!2271431 m!2700157))

(declare-fun m!2700159 () Bool)

(assert (=> b!2271429 m!2700159))

(declare-fun m!2700161 () Bool)

(assert (=> b!2271450 m!2700161))

(declare-fun m!2700163 () Bool)

(assert (=> b!2271450 m!2700163))

(declare-fun m!2700165 () Bool)

(assert (=> b!2271442 m!2700165))

(check-sat (not b!2271453) (not b!2271452) (not b!2271431) b_and!178997 (not b_next!68253) (not b_next!68265) (not b_next!68259) (not b!2271442) (not b_next!68255) (not b_next!68257) (not b!2271428) (not b!2271443) (not b_next!68267) (not b!2271432) b_and!179005 b_and!179003 tp_is_empty!10531 b_and!178993 (not b!2271447) (not b!2271426) (not b_next!68263) (not b!2271440) (not b!2271445) (not b!2271448) b_and!179001 (not b!2271449) b_and!178995 (not b!2271444) (not b!2271427) (not b!2271429) (not b!2271450) (not b!2271433) b_and!178999 (not b!2271435) (not b!2271437) (not b!2271425) b_and!179007 (not b!2271434) (not b!2271439) (not b_next!68261))
(check-sat (not b_next!68267) b_and!178993 (not b_next!68263) b_and!179001 b_and!178995 b_and!178997 (not b_next!68253) (not b_next!68265) (not b_next!68259) b_and!178999 b_and!179007 (not b_next!68255) (not b_next!68257) (not b_next!68261) b_and!179005 b_and!179003)
(get-model)

(declare-fun d!672363 () Bool)

(assert (=> d!672363 (= (inv!36571 (tag!4797 otherR!12)) (= (mod (str.len (value!136568 (tag!4797 otherR!12))) 2) 0))))

(assert (=> b!2271447 d!672363))

(declare-fun d!672365 () Bool)

(declare-fun res!970956 () Bool)

(declare-fun e!1454876 () Bool)

(assert (=> d!672365 (=> (not res!970956) (not e!1454876))))

(declare-fun semiInverseModEq!1736 (Int Int) Bool)

(assert (=> d!672365 (= res!970956 (semiInverseModEq!1736 (toChars!5932 (transformation!4307 otherR!12)) (toValue!6073 (transformation!4307 otherR!12))))))

(assert (=> d!672365 (= (inv!36574 (transformation!4307 otherR!12)) e!1454876)))

(declare-fun b!2271457 () Bool)

(declare-fun equivClasses!1655 (Int Int) Bool)

(assert (=> b!2271457 (= e!1454876 (equivClasses!1655 (toChars!5932 (transformation!4307 otherR!12)) (toValue!6073 (transformation!4307 otherR!12))))))

(assert (= (and d!672365 res!970956) b!2271457))

(declare-fun m!2700167 () Bool)

(assert (=> d!672365 m!2700167))

(declare-fun m!2700169 () Bool)

(assert (=> b!2271457 m!2700169))

(assert (=> b!2271447 d!672365))

(declare-fun d!672367 () Bool)

(declare-fun lt!843767 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3601 (List!27107) (InoxSet Rule!8414))

(assert (=> d!672367 (= lt!843767 (select (content!3601 rules!1750) r!2363))))

(declare-fun e!1454882 () Bool)

(assert (=> d!672367 (= lt!843767 e!1454882)))

(declare-fun res!970965 () Bool)

(assert (=> d!672367 (=> (not res!970965) (not e!1454882))))

(assert (=> d!672367 (= res!970965 ((_ is Cons!27013) rules!1750))))

(assert (=> d!672367 (= (contains!4671 rules!1750 r!2363) lt!843767)))

(declare-fun b!2271462 () Bool)

(declare-fun e!1454881 () Bool)

(assert (=> b!2271462 (= e!1454882 e!1454881)))

(declare-fun res!970966 () Bool)

(assert (=> b!2271462 (=> res!970966 e!1454881)))

(assert (=> b!2271462 (= res!970966 (= (h!32414 rules!1750) r!2363))))

(declare-fun b!2271463 () Bool)

(assert (=> b!2271463 (= e!1454881 (contains!4671 (t!202619 rules!1750) r!2363))))

(assert (= (and d!672367 res!970965) b!2271462))

(assert (= (and b!2271462 (not res!970966)) b!2271463))

(declare-fun m!2700171 () Bool)

(assert (=> d!672367 m!2700171))

(declare-fun m!2700173 () Bool)

(assert (=> d!672367 m!2700173))

(declare-fun m!2700175 () Bool)

(assert (=> b!2271463 m!2700175))

(assert (=> b!2271425 d!672367))

(declare-fun d!672369 () Bool)

(declare-fun lt!843768 () Bool)

(assert (=> d!672369 (= lt!843768 (select (content!3601 rules!1750) otherR!12))))

(declare-fun e!1454884 () Bool)

(assert (=> d!672369 (= lt!843768 e!1454884)))

(declare-fun res!970967 () Bool)

(assert (=> d!672369 (=> (not res!970967) (not e!1454884))))

(assert (=> d!672369 (= res!970967 ((_ is Cons!27013) rules!1750))))

(assert (=> d!672369 (= (contains!4671 rules!1750 otherR!12) lt!843768)))

(declare-fun b!2271464 () Bool)

(declare-fun e!1454883 () Bool)

(assert (=> b!2271464 (= e!1454884 e!1454883)))

(declare-fun res!970968 () Bool)

(assert (=> b!2271464 (=> res!970968 e!1454883)))

(assert (=> b!2271464 (= res!970968 (= (h!32414 rules!1750) otherR!12))))

(declare-fun b!2271465 () Bool)

(assert (=> b!2271465 (= e!1454883 (contains!4671 (t!202619 rules!1750) otherR!12))))

(assert (= (and d!672369 res!970967) b!2271464))

(assert (= (and b!2271464 (not res!970968)) b!2271465))

(assert (=> d!672369 m!2700171))

(declare-fun m!2700177 () Bool)

(assert (=> d!672369 m!2700177))

(declare-fun m!2700179 () Bool)

(assert (=> b!2271465 m!2700179))

(assert (=> b!2271448 d!672369))

(declare-fun d!672371 () Bool)

(declare-fun res!970973 () Bool)

(declare-fun e!1454887 () Bool)

(assert (=> d!672371 (=> (not res!970973) (not e!1454887))))

(declare-fun validRegex!2496 (Regex!6655) Bool)

(assert (=> d!672371 (= res!970973 (validRegex!2496 (regex!4307 r!2363)))))

(assert (=> d!672371 (= (ruleValid!1397 thiss!16613 r!2363) e!1454887)))

(declare-fun b!2271470 () Bool)

(declare-fun res!970974 () Bool)

(assert (=> b!2271470 (=> (not res!970974) (not e!1454887))))

(declare-fun nullable!1834 (Regex!6655) Bool)

(assert (=> b!2271470 (= res!970974 (not (nullable!1834 (regex!4307 r!2363))))))

(declare-fun b!2271471 () Bool)

(assert (=> b!2271471 (= e!1454887 (not (= (tag!4797 r!2363) (String!29450 ""))))))

(assert (= (and d!672371 res!970973) b!2271470))

(assert (= (and b!2271470 res!970974) b!2271471))

(declare-fun m!2700181 () Bool)

(assert (=> d!672371 m!2700181))

(declare-fun m!2700183 () Bool)

(assert (=> b!2271470 m!2700183))

(assert (=> b!2271427 d!672371))

(declare-fun d!672375 () Bool)

(assert (=> d!672375 (ruleValid!1397 thiss!16613 r!2363)))

(declare-fun lt!843771 () Unit!39960)

(declare-fun choose!13268 (LexerInterface!3904 Rule!8414 List!27107) Unit!39960)

(assert (=> d!672375 (= lt!843771 (choose!13268 thiss!16613 r!2363 rules!1750))))

(assert (=> d!672375 (contains!4671 rules!1750 r!2363)))

(assert (=> d!672375 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!802 thiss!16613 r!2363 rules!1750) lt!843771)))

(declare-fun bs!456040 () Bool)

(assert (= bs!456040 d!672375))

(assert (=> bs!456040 m!2700105))

(declare-fun m!2700189 () Bool)

(assert (=> bs!456040 m!2700189))

(assert (=> bs!456040 m!2700127))

(assert (=> b!2271427 d!672375))

(declare-fun d!672379 () Bool)

(assert (=> d!672379 (= (inv!36571 (tag!4797 (rule!6625 (h!32415 tokens!456)))) (= (mod (str.len (value!136568 (tag!4797 (rule!6625 (h!32415 tokens!456))))) 2) 0))))

(assert (=> b!2271426 d!672379))

(declare-fun d!672381 () Bool)

(declare-fun res!970981 () Bool)

(declare-fun e!1454891 () Bool)

(assert (=> d!672381 (=> (not res!970981) (not e!1454891))))

(assert (=> d!672381 (= res!970981 (semiInverseModEq!1736 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (toValue!6073 (transformation!4307 (rule!6625 (h!32415 tokens!456))))))))

(assert (=> d!672381 (= (inv!36574 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) e!1454891)))

(declare-fun b!2271478 () Bool)

(assert (=> b!2271478 (= e!1454891 (equivClasses!1655 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (toValue!6073 (transformation!4307 (rule!6625 (h!32415 tokens!456))))))))

(assert (= (and d!672381 res!970981) b!2271478))

(declare-fun m!2700191 () Bool)

(assert (=> d!672381 m!2700191))

(declare-fun m!2700193 () Bool)

(assert (=> b!2271478 m!2700193))

(assert (=> b!2271426 d!672381))

(declare-fun d!672383 () Bool)

(declare-fun lt!843777 () Int)

(assert (=> d!672383 (= lt!843777 (size!21208 (list!10477 (charsOf!2695 (head!4902 tokens!456)))))))

(declare-fun size!21210 (Conc!8762) Int)

(assert (=> d!672383 (= lt!843777 (size!21210 (c!360602 (charsOf!2695 (head!4902 tokens!456)))))))

(assert (=> d!672383 (= (size!21207 (charsOf!2695 (head!4902 tokens!456))) lt!843777)))

(declare-fun bs!456042 () Bool)

(assert (= bs!456042 d!672383))

(assert (=> bs!456042 m!2700131))

(assert (=> bs!456042 m!2700133))

(assert (=> bs!456042 m!2700133))

(declare-fun m!2700197 () Bool)

(assert (=> bs!456042 m!2700197))

(declare-fun m!2700199 () Bool)

(assert (=> bs!456042 m!2700199))

(assert (=> b!2271437 d!672383))

(declare-fun d!672389 () Bool)

(declare-fun lt!843780 () BalanceConc!17252)

(assert (=> d!672389 (= (list!10477 lt!843780) (originalCharacters!5077 (head!4902 tokens!456)))))

(declare-fun dynLambda!11715 (Int TokenValue!4469) BalanceConc!17252)

(assert (=> d!672389 (= lt!843780 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))) (value!136569 (head!4902 tokens!456))))))

(assert (=> d!672389 (= (charsOf!2695 (head!4902 tokens!456)) lt!843780)))

(declare-fun b_lambda!72377 () Bool)

(assert (=> (not b_lambda!72377) (not d!672389)))

(declare-fun tb!134799 () Bool)

(declare-fun t!202622 () Bool)

(assert (=> (and b!2271454 (= (toChars!5932 (transformation!4307 r!2363)) (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456))))) t!202622) tb!134799))

(declare-fun b!2271486 () Bool)

(declare-fun e!1454897 () Bool)

(declare-fun tp!719310 () Bool)

(declare-fun inv!36578 (Conc!8762) Bool)

(assert (=> b!2271486 (= e!1454897 (and (inv!36578 (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))) (value!136569 (head!4902 tokens!456))))) tp!719310))))

(declare-fun result!164354 () Bool)

(declare-fun inv!36579 (BalanceConc!17252) Bool)

(assert (=> tb!134799 (= result!164354 (and (inv!36579 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))) (value!136569 (head!4902 tokens!456)))) e!1454897))))

(assert (= tb!134799 b!2271486))

(declare-fun m!2700205 () Bool)

(assert (=> b!2271486 m!2700205))

(declare-fun m!2700207 () Bool)

(assert (=> tb!134799 m!2700207))

(assert (=> d!672389 t!202622))

(declare-fun b_and!179009 () Bool)

(assert (= b_and!178995 (and (=> t!202622 result!164354) b_and!179009)))

(declare-fun t!202624 () Bool)

(declare-fun tb!134801 () Bool)

(assert (=> (and b!2271441 (= (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456))))) t!202624) tb!134801))

(declare-fun result!164358 () Bool)

(assert (= result!164358 result!164354))

(assert (=> d!672389 t!202624))

(declare-fun b_and!179011 () Bool)

(assert (= b_and!178999 (and (=> t!202624 result!164358) b_and!179011)))

(declare-fun t!202626 () Bool)

(declare-fun tb!134803 () Bool)

(assert (=> (and b!2271451 (= (toChars!5932 (transformation!4307 otherR!12)) (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456))))) t!202626) tb!134803))

(declare-fun result!164360 () Bool)

(assert (= result!164360 result!164354))

(assert (=> d!672389 t!202626))

(declare-fun b_and!179013 () Bool)

(assert (= b_and!179003 (and (=> t!202626 result!164360) b_and!179013)))

(declare-fun tb!134805 () Bool)

(declare-fun t!202628 () Bool)

(assert (=> (and b!2271438 (= (toChars!5932 (transformation!4307 (h!32414 rules!1750))) (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456))))) t!202628) tb!134805))

(declare-fun result!164362 () Bool)

(assert (= result!164362 result!164354))

(assert (=> d!672389 t!202628))

(declare-fun b_and!179015 () Bool)

(assert (= b_and!179007 (and (=> t!202628 result!164362) b_and!179015)))

(declare-fun m!2700209 () Bool)

(assert (=> d!672389 m!2700209))

(declare-fun m!2700211 () Bool)

(assert (=> d!672389 m!2700211))

(assert (=> b!2271437 d!672389))

(declare-fun d!672393 () Bool)

(assert (=> d!672393 (= (head!4902 tokens!456) (h!32415 tokens!456))))

(assert (=> b!2271437 d!672393))

(declare-fun d!672395 () Bool)

(declare-fun lt!843785 () Int)

(assert (=> d!672395 (>= lt!843785 0)))

(declare-fun e!1454902 () Int)

(assert (=> d!672395 (= lt!843785 e!1454902)))

(declare-fun c!360609 () Bool)

(assert (=> d!672395 (= c!360609 ((_ is Nil!27012) otherP!12))))

(assert (=> d!672395 (= (size!21208 otherP!12) lt!843785)))

(declare-fun b!2271495 () Bool)

(assert (=> b!2271495 (= e!1454902 0)))

(declare-fun b!2271496 () Bool)

(assert (=> b!2271496 (= e!1454902 (+ 1 (size!21208 (t!202618 otherP!12))))))

(assert (= (and d!672395 c!360609) b!2271495))

(assert (= (and d!672395 (not c!360609)) b!2271496))

(declare-fun m!2700213 () Bool)

(assert (=> b!2271496 m!2700213))

(assert (=> b!2271437 d!672395))

(declare-fun d!672397 () Bool)

(assert (=> d!672397 (= (inv!36571 (tag!4797 r!2363)) (= (mod (str.len (value!136568 (tag!4797 r!2363))) 2) 0))))

(assert (=> b!2271439 d!672397))

(declare-fun d!672399 () Bool)

(declare-fun res!970985 () Bool)

(declare-fun e!1454907 () Bool)

(assert (=> d!672399 (=> (not res!970985) (not e!1454907))))

(assert (=> d!672399 (= res!970985 (semiInverseModEq!1736 (toChars!5932 (transformation!4307 r!2363)) (toValue!6073 (transformation!4307 r!2363))))))

(assert (=> d!672399 (= (inv!36574 (transformation!4307 r!2363)) e!1454907)))

(declare-fun b!2271505 () Bool)

(assert (=> b!2271505 (= e!1454907 (equivClasses!1655 (toChars!5932 (transformation!4307 r!2363)) (toValue!6073 (transformation!4307 r!2363))))))

(assert (= (and d!672399 res!970985) b!2271505))

(declare-fun m!2700215 () Bool)

(assert (=> d!672399 m!2700215))

(declare-fun m!2700217 () Bool)

(assert (=> b!2271505 m!2700217))

(assert (=> b!2271439 d!672399))

(declare-fun d!672401 () Bool)

(assert (=> d!672401 (= (isEmpty!15302 tokens!456) ((_ is Nil!27014) tokens!456))))

(assert (=> b!2271449 d!672401))

(declare-fun d!672403 () Bool)

(assert (=> d!672403 (= (inv!36571 (tag!4797 (h!32414 rules!1750))) (= (mod (str.len (value!136568 (tag!4797 (h!32414 rules!1750)))) 2) 0))))

(assert (=> b!2271450 d!672403))

(declare-fun d!672405 () Bool)

(declare-fun res!971002 () Bool)

(declare-fun e!1454916 () Bool)

(assert (=> d!672405 (=> (not res!971002) (not e!1454916))))

(assert (=> d!672405 (= res!971002 (semiInverseModEq!1736 (toChars!5932 (transformation!4307 (h!32414 rules!1750))) (toValue!6073 (transformation!4307 (h!32414 rules!1750)))))))

(assert (=> d!672405 (= (inv!36574 (transformation!4307 (h!32414 rules!1750))) e!1454916)))

(declare-fun b!2271522 () Bool)

(assert (=> b!2271522 (= e!1454916 (equivClasses!1655 (toChars!5932 (transformation!4307 (h!32414 rules!1750))) (toValue!6073 (transformation!4307 (h!32414 rules!1750)))))))

(assert (= (and d!672405 res!971002) b!2271522))

(declare-fun m!2700219 () Bool)

(assert (=> d!672405 m!2700219))

(declare-fun m!2700221 () Bool)

(assert (=> b!2271522 m!2700221))

(assert (=> b!2271450 d!672405))

(declare-fun d!672407 () Bool)

(declare-fun c!360622 () Bool)

(assert (=> d!672407 (= c!360622 ((_ is IntegerValue!13407) (value!136569 (h!32415 tokens!456))))))

(declare-fun e!1454930 () Bool)

(assert (=> d!672407 (= (inv!21 (value!136569 (h!32415 tokens!456))) e!1454930)))

(declare-fun b!2271547 () Bool)

(declare-fun e!1454932 () Bool)

(declare-fun inv!15 (TokenValue!4469) Bool)

(assert (=> b!2271547 (= e!1454932 (inv!15 (value!136569 (h!32415 tokens!456))))))

(declare-fun b!2271548 () Bool)

(declare-fun inv!16 (TokenValue!4469) Bool)

(assert (=> b!2271548 (= e!1454930 (inv!16 (value!136569 (h!32415 tokens!456))))))

(declare-fun b!2271549 () Bool)

(declare-fun e!1454931 () Bool)

(declare-fun inv!17 (TokenValue!4469) Bool)

(assert (=> b!2271549 (= e!1454931 (inv!17 (value!136569 (h!32415 tokens!456))))))

(declare-fun b!2271550 () Bool)

(assert (=> b!2271550 (= e!1454930 e!1454931)))

(declare-fun c!360621 () Bool)

(assert (=> b!2271550 (= c!360621 ((_ is IntegerValue!13408) (value!136569 (h!32415 tokens!456))))))

(declare-fun b!2271551 () Bool)

(declare-fun res!971013 () Bool)

(assert (=> b!2271551 (=> res!971013 e!1454932)))

(assert (=> b!2271551 (= res!971013 (not ((_ is IntegerValue!13409) (value!136569 (h!32415 tokens!456)))))))

(assert (=> b!2271551 (= e!1454931 e!1454932)))

(assert (= (and d!672407 c!360622) b!2271548))

(assert (= (and d!672407 (not c!360622)) b!2271550))

(assert (= (and b!2271550 c!360621) b!2271549))

(assert (= (and b!2271550 (not c!360621)) b!2271551))

(assert (= (and b!2271551 (not res!971013)) b!2271547))

(declare-fun m!2700223 () Bool)

(assert (=> b!2271547 m!2700223))

(declare-fun m!2700225 () Bool)

(assert (=> b!2271548 m!2700225))

(declare-fun m!2700227 () Bool)

(assert (=> b!2271549 m!2700227))

(assert (=> b!2271429 d!672407))

(declare-fun d!672409 () Bool)

(declare-fun lt!843792 () Int)

(assert (=> d!672409 (>= lt!843792 0)))

(declare-fun e!1454941 () Int)

(assert (=> d!672409 (= lt!843792 e!1454941)))

(declare-fun c!360627 () Bool)

(assert (=> d!672409 (= c!360627 (and ((_ is Cons!27013) rules!1750) (= (h!32414 rules!1750) r!2363)))))

(assert (=> d!672409 (contains!4671 rules!1750 r!2363)))

(assert (=> d!672409 (= (getIndex!320 rules!1750 r!2363) lt!843792)))

(declare-fun b!2271566 () Bool)

(declare-fun e!1454942 () Int)

(assert (=> b!2271566 (= e!1454941 e!1454942)))

(declare-fun c!360628 () Bool)

(assert (=> b!2271566 (= c!360628 (and ((_ is Cons!27013) rules!1750) (not (= (h!32414 rules!1750) r!2363))))))

(declare-fun b!2271567 () Bool)

(assert (=> b!2271567 (= e!1454942 (+ 1 (getIndex!320 (t!202619 rules!1750) r!2363)))))

(declare-fun b!2271565 () Bool)

(assert (=> b!2271565 (= e!1454941 0)))

(declare-fun b!2271568 () Bool)

(assert (=> b!2271568 (= e!1454942 (- 1))))

(assert (= (and d!672409 c!360627) b!2271565))

(assert (= (and d!672409 (not c!360627)) b!2271566))

(assert (= (and b!2271566 c!360628) b!2271567))

(assert (= (and b!2271566 (not c!360628)) b!2271568))

(assert (=> d!672409 m!2700127))

(declare-fun m!2700251 () Bool)

(assert (=> b!2271567 m!2700251))

(assert (=> b!2271431 d!672409))

(declare-fun d!672421 () Bool)

(declare-fun lt!843793 () Int)

(assert (=> d!672421 (>= lt!843793 0)))

(declare-fun e!1454944 () Int)

(assert (=> d!672421 (= lt!843793 e!1454944)))

(declare-fun c!360629 () Bool)

(assert (=> d!672421 (= c!360629 (and ((_ is Cons!27013) rules!1750) (= (h!32414 rules!1750) otherR!12)))))

(assert (=> d!672421 (contains!4671 rules!1750 otherR!12)))

(assert (=> d!672421 (= (getIndex!320 rules!1750 otherR!12) lt!843793)))

(declare-fun b!2271571 () Bool)

(declare-fun e!1454945 () Int)

(assert (=> b!2271571 (= e!1454944 e!1454945)))

(declare-fun c!360630 () Bool)

(assert (=> b!2271571 (= c!360630 (and ((_ is Cons!27013) rules!1750) (not (= (h!32414 rules!1750) otherR!12))))))

(declare-fun b!2271572 () Bool)

(assert (=> b!2271572 (= e!1454945 (+ 1 (getIndex!320 (t!202619 rules!1750) otherR!12)))))

(declare-fun b!2271570 () Bool)

(assert (=> b!2271570 (= e!1454944 0)))

(declare-fun b!2271573 () Bool)

(assert (=> b!2271573 (= e!1454945 (- 1))))

(assert (= (and d!672421 c!360629) b!2271570))

(assert (= (and d!672421 (not c!360629)) b!2271571))

(assert (= (and b!2271571 c!360630) b!2271572))

(assert (= (and b!2271571 (not c!360630)) b!2271573))

(assert (=> d!672421 m!2700109))

(declare-fun m!2700261 () Bool)

(assert (=> b!2271572 m!2700261))

(assert (=> b!2271431 d!672421))

(declare-fun d!672429 () Bool)

(declare-fun res!971016 () Bool)

(declare-fun e!1454947 () Bool)

(assert (=> d!672429 (=> (not res!971016) (not e!1454947))))

(assert (=> d!672429 (= res!971016 (validRegex!2496 (regex!4307 otherR!12)))))

(assert (=> d!672429 (= (ruleValid!1397 thiss!16613 otherR!12) e!1454947)))

(declare-fun b!2271575 () Bool)

(declare-fun res!971017 () Bool)

(assert (=> b!2271575 (=> (not res!971017) (not e!1454947))))

(assert (=> b!2271575 (= res!971017 (not (nullable!1834 (regex!4307 otherR!12))))))

(declare-fun b!2271576 () Bool)

(assert (=> b!2271576 (= e!1454947 (not (= (tag!4797 otherR!12) (String!29450 ""))))))

(assert (= (and d!672429 res!971016) b!2271575))

(assert (= (and b!2271575 res!971017) b!2271576))

(declare-fun m!2700263 () Bool)

(assert (=> d!672429 m!2700263))

(declare-fun m!2700265 () Bool)

(assert (=> b!2271575 m!2700265))

(assert (=> b!2271431 d!672429))

(declare-fun d!672431 () Bool)

(assert (=> d!672431 (ruleValid!1397 thiss!16613 otherR!12)))

(declare-fun lt!843794 () Unit!39960)

(assert (=> d!672431 (= lt!843794 (choose!13268 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!672431 (contains!4671 rules!1750 otherR!12)))

(assert (=> d!672431 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!802 thiss!16613 otherR!12 rules!1750) lt!843794)))

(declare-fun bs!456044 () Bool)

(assert (= bs!456044 d!672431))

(assert (=> bs!456044 m!2700155))

(declare-fun m!2700267 () Bool)

(assert (=> bs!456044 m!2700267))

(assert (=> bs!456044 m!2700109))

(assert (=> b!2271431 d!672431))

(assert (=> b!2271432 d!672393))

(declare-fun d!672433 () Bool)

(declare-fun res!971026 () Bool)

(declare-fun e!1454954 () Bool)

(assert (=> d!672433 (=> (not res!971026) (not e!1454954))))

(declare-fun isEmpty!15305 (List!27106) Bool)

(assert (=> d!672433 (= res!971026 (not (isEmpty!15305 (originalCharacters!5077 (h!32415 tokens!456)))))))

(assert (=> d!672433 (= (inv!36575 (h!32415 tokens!456)) e!1454954)))

(declare-fun b!2271585 () Bool)

(declare-fun res!971027 () Bool)

(assert (=> b!2271585 (=> (not res!971027) (not e!1454954))))

(assert (=> b!2271585 (= res!971027 (= (originalCharacters!5077 (h!32415 tokens!456)) (list!10477 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (value!136569 (h!32415 tokens!456))))))))

(declare-fun b!2271586 () Bool)

(assert (=> b!2271586 (= e!1454954 (= (size!21206 (h!32415 tokens!456)) (size!21208 (originalCharacters!5077 (h!32415 tokens!456)))))))

(assert (= (and d!672433 res!971026) b!2271585))

(assert (= (and b!2271585 res!971027) b!2271586))

(declare-fun b_lambda!72381 () Bool)

(assert (=> (not b_lambda!72381) (not b!2271585)))

(declare-fun t!202638 () Bool)

(declare-fun tb!134815 () Bool)

(assert (=> (and b!2271454 (= (toChars!5932 (transformation!4307 r!2363)) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456))))) t!202638) tb!134815))

(declare-fun b!2271587 () Bool)

(declare-fun e!1454955 () Bool)

(declare-fun tp!719314 () Bool)

(assert (=> b!2271587 (= e!1454955 (and (inv!36578 (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (value!136569 (h!32415 tokens!456))))) tp!719314))))

(declare-fun result!164374 () Bool)

(assert (=> tb!134815 (= result!164374 (and (inv!36579 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (value!136569 (h!32415 tokens!456)))) e!1454955))))

(assert (= tb!134815 b!2271587))

(declare-fun m!2700269 () Bool)

(assert (=> b!2271587 m!2700269))

(declare-fun m!2700271 () Bool)

(assert (=> tb!134815 m!2700271))

(assert (=> b!2271585 t!202638))

(declare-fun b_and!179025 () Bool)

(assert (= b_and!179009 (and (=> t!202638 result!164374) b_and!179025)))

(declare-fun t!202640 () Bool)

(declare-fun tb!134817 () Bool)

(assert (=> (and b!2271441 (= (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456))))) t!202640) tb!134817))

(declare-fun result!164376 () Bool)

(assert (= result!164376 result!164374))

(assert (=> b!2271585 t!202640))

(declare-fun b_and!179027 () Bool)

(assert (= b_and!179011 (and (=> t!202640 result!164376) b_and!179027)))

(declare-fun tb!134819 () Bool)

(declare-fun t!202642 () Bool)

(assert (=> (and b!2271451 (= (toChars!5932 (transformation!4307 otherR!12)) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456))))) t!202642) tb!134819))

(declare-fun result!164378 () Bool)

(assert (= result!164378 result!164374))

(assert (=> b!2271585 t!202642))

(declare-fun b_and!179029 () Bool)

(assert (= b_and!179013 (and (=> t!202642 result!164378) b_and!179029)))

(declare-fun tb!134821 () Bool)

(declare-fun t!202644 () Bool)

(assert (=> (and b!2271438 (= (toChars!5932 (transformation!4307 (h!32414 rules!1750))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456))))) t!202644) tb!134821))

(declare-fun result!164380 () Bool)

(assert (= result!164380 result!164374))

(assert (=> b!2271585 t!202644))

(declare-fun b_and!179031 () Bool)

(assert (= b_and!179015 (and (=> t!202644 result!164380) b_and!179031)))

(declare-fun m!2700273 () Bool)

(assert (=> d!672433 m!2700273))

(declare-fun m!2700275 () Bool)

(assert (=> b!2271585 m!2700275))

(assert (=> b!2271585 m!2700275))

(declare-fun m!2700277 () Bool)

(assert (=> b!2271585 m!2700277))

(declare-fun m!2700279 () Bool)

(assert (=> b!2271586 m!2700279))

(assert (=> b!2271443 d!672433))

(declare-fun b!2271596 () Bool)

(declare-fun e!1454963 () Bool)

(declare-fun e!1454964 () Bool)

(assert (=> b!2271596 (= e!1454963 e!1454964)))

(declare-fun res!971039 () Bool)

(assert (=> b!2271596 (=> (not res!971039) (not e!1454964))))

(assert (=> b!2271596 (= res!971039 (not ((_ is Nil!27012) input!1722)))))

(declare-fun b!2271597 () Bool)

(declare-fun res!971036 () Bool)

(assert (=> b!2271597 (=> (not res!971036) (not e!1454964))))

(declare-fun head!4904 (List!27106) C!13456)

(assert (=> b!2271597 (= res!971036 (= (head!4904 otherP!12) (head!4904 input!1722)))))

(declare-fun d!672435 () Bool)

(declare-fun e!1454962 () Bool)

(assert (=> d!672435 e!1454962))

(declare-fun res!971037 () Bool)

(assert (=> d!672435 (=> res!971037 e!1454962)))

(declare-fun lt!843799 () Bool)

(assert (=> d!672435 (= res!971037 (not lt!843799))))

(assert (=> d!672435 (= lt!843799 e!1454963)))

(declare-fun res!971038 () Bool)

(assert (=> d!672435 (=> res!971038 e!1454963)))

(assert (=> d!672435 (= res!971038 ((_ is Nil!27012) otherP!12))))

(assert (=> d!672435 (= (isPrefix!2297 otherP!12 input!1722) lt!843799)))

(declare-fun b!2271598 () Bool)

(declare-fun tail!3277 (List!27106) List!27106)

(assert (=> b!2271598 (= e!1454964 (isPrefix!2297 (tail!3277 otherP!12) (tail!3277 input!1722)))))

(declare-fun b!2271599 () Bool)

(assert (=> b!2271599 (= e!1454962 (>= (size!21208 input!1722) (size!21208 otherP!12)))))

(assert (= (and d!672435 (not res!971038)) b!2271596))

(assert (= (and b!2271596 res!971039) b!2271597))

(assert (= (and b!2271597 res!971036) b!2271598))

(assert (= (and d!672435 (not res!971037)) b!2271599))

(declare-fun m!2700281 () Bool)

(assert (=> b!2271597 m!2700281))

(declare-fun m!2700283 () Bool)

(assert (=> b!2271597 m!2700283))

(declare-fun m!2700285 () Bool)

(assert (=> b!2271598 m!2700285))

(declare-fun m!2700287 () Bool)

(assert (=> b!2271598 m!2700287))

(assert (=> b!2271598 m!2700285))

(assert (=> b!2271598 m!2700287))

(declare-fun m!2700289 () Bool)

(assert (=> b!2271598 m!2700289))

(declare-fun m!2700291 () Bool)

(assert (=> b!2271599 m!2700291))

(assert (=> b!2271599 m!2700147))

(assert (=> b!2271442 d!672435))

(declare-fun d!672437 () Bool)

(declare-fun res!971042 () Bool)

(declare-fun e!1454967 () Bool)

(assert (=> d!672437 (=> (not res!971042) (not e!1454967))))

(declare-fun rulesValid!1580 (LexerInterface!3904 List!27107) Bool)

(assert (=> d!672437 (= res!971042 (rulesValid!1580 thiss!16613 rules!1750))))

(assert (=> d!672437 (= (rulesInvariant!3406 thiss!16613 rules!1750) e!1454967)))

(declare-fun b!2271602 () Bool)

(declare-datatypes ((List!27110 0))(
  ( (Nil!27016) (Cons!27016 (h!32417 String!29449) (t!202670 List!27110)) )
))
(declare-fun noDuplicateTag!1578 (LexerInterface!3904 List!27107 List!27110) Bool)

(assert (=> b!2271602 (= e!1454967 (noDuplicateTag!1578 thiss!16613 rules!1750 Nil!27016))))

(assert (= (and d!672437 res!971042) b!2271602))

(declare-fun m!2700293 () Bool)

(assert (=> d!672437 m!2700293))

(declare-fun m!2700295 () Bool)

(assert (=> b!2271602 m!2700295))

(assert (=> b!2271453 d!672437))

(declare-fun d!672439 () Bool)

(declare-fun list!10481 (Conc!8763) List!27108)

(assert (=> d!672439 (= (list!10478 (_1!15852 lt!843764)) (list!10481 (c!360604 (_1!15852 lt!843764))))))

(declare-fun bs!456045 () Bool)

(assert (= bs!456045 d!672439))

(declare-fun m!2700297 () Bool)

(assert (=> bs!456045 m!2700297))

(assert (=> b!2271444 d!672439))

(declare-fun d!672441 () Bool)

(declare-fun list!10482 (Conc!8762) List!27106)

(assert (=> d!672441 (= (list!10477 (_2!15852 lt!843764)) (list!10482 (c!360602 (_2!15852 lt!843764))))))

(declare-fun bs!456046 () Bool)

(assert (= bs!456046 d!672441))

(declare-fun m!2700299 () Bool)

(assert (=> bs!456046 m!2700299))

(assert (=> b!2271444 d!672441))

(declare-fun d!672443 () Bool)

(declare-fun e!1454976 () Bool)

(assert (=> d!672443 e!1454976))

(declare-fun res!971049 () Bool)

(assert (=> d!672443 (=> (not res!971049) (not e!1454976))))

(declare-fun e!1454975 () Bool)

(assert (=> d!672443 (= res!971049 e!1454975)))

(declare-fun c!360633 () Bool)

(declare-fun lt!843802 () tuple2!26684)

(declare-fun size!21212 (BalanceConc!17254) Int)

(assert (=> d!672443 (= c!360633 (> (size!21212 (_1!15852 lt!843802)) 0))))

(declare-fun lexTailRecV2!755 (LexerInterface!3904 List!27107 BalanceConc!17252 BalanceConc!17252 BalanceConc!17252 BalanceConc!17254) tuple2!26684)

(assert (=> d!672443 (= lt!843802 (lexTailRecV2!755 thiss!16613 rules!1750 (seqFromList!3011 input!1722) (BalanceConc!17253 Empty!8762) (seqFromList!3011 input!1722) (BalanceConc!17255 Empty!8763)))))

(assert (=> d!672443 (= (lex!1743 thiss!16613 rules!1750 (seqFromList!3011 input!1722)) lt!843802)))

(declare-fun b!2271613 () Bool)

(assert (=> b!2271613 (= e!1454975 (= (_2!15852 lt!843802) (seqFromList!3011 input!1722)))))

(declare-fun b!2271614 () Bool)

(declare-fun e!1454974 () Bool)

(declare-fun isEmpty!15306 (BalanceConc!17254) Bool)

(assert (=> b!2271614 (= e!1454974 (not (isEmpty!15306 (_1!15852 lt!843802))))))

(declare-fun b!2271615 () Bool)

(assert (=> b!2271615 (= e!1454975 e!1454974)))

(declare-fun res!971051 () Bool)

(assert (=> b!2271615 (= res!971051 (< (size!21207 (_2!15852 lt!843802)) (size!21207 (seqFromList!3011 input!1722))))))

(assert (=> b!2271615 (=> (not res!971051) (not e!1454974))))

(declare-fun b!2271616 () Bool)

(declare-fun lexList!1080 (LexerInterface!3904 List!27107 List!27106) tuple2!26686)

(assert (=> b!2271616 (= e!1454976 (= (list!10477 (_2!15852 lt!843802)) (_2!15853 (lexList!1080 thiss!16613 rules!1750 (list!10477 (seqFromList!3011 input!1722))))))))

(declare-fun b!2271617 () Bool)

(declare-fun res!971050 () Bool)

(assert (=> b!2271617 (=> (not res!971050) (not e!1454976))))

(assert (=> b!2271617 (= res!971050 (= (list!10478 (_1!15852 lt!843802)) (_1!15853 (lexList!1080 thiss!16613 rules!1750 (list!10477 (seqFromList!3011 input!1722))))))))

(assert (= (and d!672443 c!360633) b!2271615))

(assert (= (and d!672443 (not c!360633)) b!2271613))

(assert (= (and b!2271615 res!971051) b!2271614))

(assert (= (and d!672443 res!971049) b!2271617))

(assert (= (and b!2271617 res!971050) b!2271616))

(declare-fun m!2700301 () Bool)

(assert (=> b!2271614 m!2700301))

(declare-fun m!2700303 () Bool)

(assert (=> b!2271616 m!2700303))

(assert (=> b!2271616 m!2700117))

(declare-fun m!2700305 () Bool)

(assert (=> b!2271616 m!2700305))

(assert (=> b!2271616 m!2700305))

(declare-fun m!2700307 () Bool)

(assert (=> b!2271616 m!2700307))

(declare-fun m!2700309 () Bool)

(assert (=> b!2271615 m!2700309))

(assert (=> b!2271615 m!2700117))

(declare-fun m!2700311 () Bool)

(assert (=> b!2271615 m!2700311))

(declare-fun m!2700313 () Bool)

(assert (=> d!672443 m!2700313))

(assert (=> d!672443 m!2700117))

(assert (=> d!672443 m!2700117))

(declare-fun m!2700315 () Bool)

(assert (=> d!672443 m!2700315))

(declare-fun m!2700317 () Bool)

(assert (=> b!2271617 m!2700317))

(assert (=> b!2271617 m!2700117))

(assert (=> b!2271617 m!2700305))

(assert (=> b!2271617 m!2700305))

(assert (=> b!2271617 m!2700307))

(assert (=> b!2271444 d!672443))

(declare-fun d!672445 () Bool)

(declare-fun fromListB!1346 (List!27106) BalanceConc!17252)

(assert (=> d!672445 (= (seqFromList!3011 input!1722) (fromListB!1346 input!1722))))

(declare-fun bs!456047 () Bool)

(assert (= bs!456047 d!672445))

(declare-fun m!2700319 () Bool)

(assert (=> bs!456047 m!2700319))

(assert (=> b!2271444 d!672445))

(declare-fun d!672447 () Bool)

(assert (=> d!672447 true))

(declare-fun lt!843827 () Bool)

(declare-fun lambda!85507 () Int)

(declare-fun forall!5482 (List!27107 Int) Bool)

(assert (=> d!672447 (= lt!843827 (forall!5482 rules!1750 lambda!85507))))

(declare-fun e!1455081 () Bool)

(assert (=> d!672447 (= lt!843827 e!1455081)))

(declare-fun res!971103 () Bool)

(assert (=> d!672447 (=> res!971103 e!1455081)))

(assert (=> d!672447 (= res!971103 (not ((_ is Cons!27013) rules!1750)))))

(assert (=> d!672447 (= (rulesValidInductive!1505 thiss!16613 rules!1750) lt!843827)))

(declare-fun b!2271770 () Bool)

(declare-fun e!1455082 () Bool)

(assert (=> b!2271770 (= e!1455081 e!1455082)))

(declare-fun res!971102 () Bool)

(assert (=> b!2271770 (=> (not res!971102) (not e!1455082))))

(assert (=> b!2271770 (= res!971102 (ruleValid!1397 thiss!16613 (h!32414 rules!1750)))))

(declare-fun b!2271771 () Bool)

(assert (=> b!2271771 (= e!1455082 (rulesValidInductive!1505 thiss!16613 (t!202619 rules!1750)))))

(assert (= (and d!672447 (not res!971103)) b!2271770))

(assert (= (and b!2271770 res!971102) b!2271771))

(declare-fun m!2700427 () Bool)

(assert (=> d!672447 m!2700427))

(declare-fun m!2700429 () Bool)

(assert (=> b!2271770 m!2700429))

(declare-fun m!2700431 () Bool)

(assert (=> b!2271771 m!2700431))

(assert (=> b!2271433 d!672447))

(declare-fun d!672489 () Bool)

(assert (=> d!672489 (= (isEmpty!15301 rules!1750) ((_ is Nil!27013) rules!1750))))

(assert (=> b!2271435 d!672489))

(declare-fun b!2271802 () Bool)

(declare-fun e!1455100 () Bool)

(declare-fun lt!843830 () Bool)

(assert (=> b!2271802 (= e!1455100 (not lt!843830))))

(declare-fun d!672491 () Bool)

(declare-fun e!1455101 () Bool)

(assert (=> d!672491 e!1455101))

(declare-fun c!360662 () Bool)

(assert (=> d!672491 (= c!360662 ((_ is EmptyExpr!6655) (regex!4307 r!2363)))))

(declare-fun e!1455103 () Bool)

(assert (=> d!672491 (= lt!843830 e!1455103)))

(declare-fun c!360661 () Bool)

(assert (=> d!672491 (= c!360661 (isEmpty!15305 (list!10477 (charsOf!2695 (head!4902 tokens!456)))))))

(assert (=> d!672491 (validRegex!2496 (regex!4307 r!2363))))

(assert (=> d!672491 (= (matchR!2912 (regex!4307 r!2363) (list!10477 (charsOf!2695 (head!4902 tokens!456)))) lt!843830)))

(declare-fun b!2271803 () Bool)

(declare-fun e!1455097 () Bool)

(assert (=> b!2271803 (= e!1455097 (= (head!4904 (list!10477 (charsOf!2695 (head!4902 tokens!456)))) (c!360603 (regex!4307 r!2363))))))

(declare-fun b!2271804 () Bool)

(declare-fun e!1455098 () Bool)

(declare-fun e!1455099 () Bool)

(assert (=> b!2271804 (= e!1455098 e!1455099)))

(declare-fun res!971122 () Bool)

(assert (=> b!2271804 (=> res!971122 e!1455099)))

(declare-fun call!136134 () Bool)

(assert (=> b!2271804 (= res!971122 call!136134)))

(declare-fun b!2271805 () Bool)

(assert (=> b!2271805 (= e!1455101 e!1455100)))

(declare-fun c!360660 () Bool)

(assert (=> b!2271805 (= c!360660 ((_ is EmptyLang!6655) (regex!4307 r!2363)))))

(declare-fun b!2271806 () Bool)

(assert (=> b!2271806 (= e!1455099 (not (= (head!4904 (list!10477 (charsOf!2695 (head!4902 tokens!456)))) (c!360603 (regex!4307 r!2363)))))))

(declare-fun b!2271807 () Bool)

(declare-fun res!971124 () Bool)

(assert (=> b!2271807 (=> (not res!971124) (not e!1455097))))

(assert (=> b!2271807 (= res!971124 (isEmpty!15305 (tail!3277 (list!10477 (charsOf!2695 (head!4902 tokens!456))))))))

(declare-fun b!2271808 () Bool)

(assert (=> b!2271808 (= e!1455103 (nullable!1834 (regex!4307 r!2363)))))

(declare-fun b!2271809 () Bool)

(declare-fun e!1455102 () Bool)

(assert (=> b!2271809 (= e!1455102 e!1455098)))

(declare-fun res!971125 () Bool)

(assert (=> b!2271809 (=> (not res!971125) (not e!1455098))))

(assert (=> b!2271809 (= res!971125 (not lt!843830))))

(declare-fun b!2271810 () Bool)

(declare-fun res!971121 () Bool)

(assert (=> b!2271810 (=> (not res!971121) (not e!1455097))))

(assert (=> b!2271810 (= res!971121 (not call!136134))))

(declare-fun bm!136129 () Bool)

(assert (=> bm!136129 (= call!136134 (isEmpty!15305 (list!10477 (charsOf!2695 (head!4902 tokens!456)))))))

(declare-fun b!2271811 () Bool)

(declare-fun derivativeStep!1494 (Regex!6655 C!13456) Regex!6655)

(assert (=> b!2271811 (= e!1455103 (matchR!2912 (derivativeStep!1494 (regex!4307 r!2363) (head!4904 (list!10477 (charsOf!2695 (head!4902 tokens!456))))) (tail!3277 (list!10477 (charsOf!2695 (head!4902 tokens!456))))))))

(declare-fun b!2271812 () Bool)

(declare-fun res!971123 () Bool)

(assert (=> b!2271812 (=> res!971123 e!1455102)))

(assert (=> b!2271812 (= res!971123 e!1455097)))

(declare-fun res!971126 () Bool)

(assert (=> b!2271812 (=> (not res!971126) (not e!1455097))))

(assert (=> b!2271812 (= res!971126 lt!843830)))

(declare-fun b!2271813 () Bool)

(declare-fun res!971120 () Bool)

(assert (=> b!2271813 (=> res!971120 e!1455099)))

(assert (=> b!2271813 (= res!971120 (not (isEmpty!15305 (tail!3277 (list!10477 (charsOf!2695 (head!4902 tokens!456)))))))))

(declare-fun b!2271814 () Bool)

(assert (=> b!2271814 (= e!1455101 (= lt!843830 call!136134))))

(declare-fun b!2271815 () Bool)

(declare-fun res!971127 () Bool)

(assert (=> b!2271815 (=> res!971127 e!1455102)))

(assert (=> b!2271815 (= res!971127 (not ((_ is ElementMatch!6655) (regex!4307 r!2363))))))

(assert (=> b!2271815 (= e!1455100 e!1455102)))

(assert (= (and d!672491 c!360661) b!2271808))

(assert (= (and d!672491 (not c!360661)) b!2271811))

(assert (= (and d!672491 c!360662) b!2271814))

(assert (= (and d!672491 (not c!360662)) b!2271805))

(assert (= (and b!2271805 c!360660) b!2271802))

(assert (= (and b!2271805 (not c!360660)) b!2271815))

(assert (= (and b!2271815 (not res!971127)) b!2271812))

(assert (= (and b!2271812 res!971126) b!2271810))

(assert (= (and b!2271810 res!971121) b!2271807))

(assert (= (and b!2271807 res!971124) b!2271803))

(assert (= (and b!2271812 (not res!971123)) b!2271809))

(assert (= (and b!2271809 res!971125) b!2271804))

(assert (= (and b!2271804 (not res!971122)) b!2271813))

(assert (= (and b!2271813 (not res!971120)) b!2271806))

(assert (= (or b!2271814 b!2271810 b!2271804) bm!136129))

(assert (=> b!2271811 m!2700133))

(declare-fun m!2700433 () Bool)

(assert (=> b!2271811 m!2700433))

(assert (=> b!2271811 m!2700433))

(declare-fun m!2700435 () Bool)

(assert (=> b!2271811 m!2700435))

(assert (=> b!2271811 m!2700133))

(declare-fun m!2700437 () Bool)

(assert (=> b!2271811 m!2700437))

(assert (=> b!2271811 m!2700435))

(assert (=> b!2271811 m!2700437))

(declare-fun m!2700439 () Bool)

(assert (=> b!2271811 m!2700439))

(assert (=> b!2271803 m!2700133))

(assert (=> b!2271803 m!2700433))

(assert (=> bm!136129 m!2700133))

(declare-fun m!2700441 () Bool)

(assert (=> bm!136129 m!2700441))

(assert (=> b!2271807 m!2700133))

(assert (=> b!2271807 m!2700437))

(assert (=> b!2271807 m!2700437))

(declare-fun m!2700443 () Bool)

(assert (=> b!2271807 m!2700443))

(assert (=> d!672491 m!2700133))

(assert (=> d!672491 m!2700441))

(assert (=> d!672491 m!2700181))

(assert (=> b!2271806 m!2700133))

(assert (=> b!2271806 m!2700433))

(assert (=> b!2271808 m!2700183))

(assert (=> b!2271813 m!2700133))

(assert (=> b!2271813 m!2700437))

(assert (=> b!2271813 m!2700437))

(assert (=> b!2271813 m!2700443))

(assert (=> b!2271434 d!672491))

(declare-fun d!672493 () Bool)

(assert (=> d!672493 (= (list!10477 (charsOf!2695 (head!4902 tokens!456))) (list!10482 (c!360602 (charsOf!2695 (head!4902 tokens!456)))))))

(declare-fun bs!456053 () Bool)

(assert (= bs!456053 d!672493))

(declare-fun m!2700445 () Bool)

(assert (=> bs!456053 m!2700445))

(assert (=> b!2271434 d!672493))

(assert (=> b!2271434 d!672389))

(assert (=> b!2271434 d!672393))

(declare-fun b!2271826 () Bool)

(declare-fun e!1455106 () Bool)

(assert (=> b!2271826 (= e!1455106 tp_is_empty!10531)))

(declare-fun b!2271829 () Bool)

(declare-fun tp!719389 () Bool)

(declare-fun tp!719390 () Bool)

(assert (=> b!2271829 (= e!1455106 (and tp!719389 tp!719390))))

(declare-fun b!2271828 () Bool)

(declare-fun tp!719392 () Bool)

(assert (=> b!2271828 (= e!1455106 tp!719392)))

(declare-fun b!2271827 () Bool)

(declare-fun tp!719393 () Bool)

(declare-fun tp!719391 () Bool)

(assert (=> b!2271827 (= e!1455106 (and tp!719393 tp!719391))))

(assert (=> b!2271447 (= tp!719292 e!1455106)))

(assert (= (and b!2271447 ((_ is ElementMatch!6655) (regex!4307 otherR!12))) b!2271826))

(assert (= (and b!2271447 ((_ is Concat!11125) (regex!4307 otherR!12))) b!2271827))

(assert (= (and b!2271447 ((_ is Star!6655) (regex!4307 otherR!12))) b!2271828))

(assert (= (and b!2271447 ((_ is Union!6655) (regex!4307 otherR!12))) b!2271829))

(declare-fun b!2271830 () Bool)

(declare-fun e!1455107 () Bool)

(assert (=> b!2271830 (= e!1455107 tp_is_empty!10531)))

(declare-fun b!2271833 () Bool)

(declare-fun tp!719394 () Bool)

(declare-fun tp!719395 () Bool)

(assert (=> b!2271833 (= e!1455107 (and tp!719394 tp!719395))))

(declare-fun b!2271832 () Bool)

(declare-fun tp!719397 () Bool)

(assert (=> b!2271832 (= e!1455107 tp!719397)))

(declare-fun b!2271831 () Bool)

(declare-fun tp!719398 () Bool)

(declare-fun tp!719396 () Bool)

(assert (=> b!2271831 (= e!1455107 (and tp!719398 tp!719396))))

(assert (=> b!2271426 (= tp!719302 e!1455107)))

(assert (= (and b!2271426 ((_ is ElementMatch!6655) (regex!4307 (rule!6625 (h!32415 tokens!456))))) b!2271830))

(assert (= (and b!2271426 ((_ is Concat!11125) (regex!4307 (rule!6625 (h!32415 tokens!456))))) b!2271831))

(assert (= (and b!2271426 ((_ is Star!6655) (regex!4307 (rule!6625 (h!32415 tokens!456))))) b!2271832))

(assert (= (and b!2271426 ((_ is Union!6655) (regex!4307 (rule!6625 (h!32415 tokens!456))))) b!2271833))

(declare-fun b!2271838 () Bool)

(declare-fun e!1455110 () Bool)

(declare-fun tp!719401 () Bool)

(assert (=> b!2271838 (= e!1455110 (and tp_is_empty!10531 tp!719401))))

(assert (=> b!2271428 (= tp!719297 e!1455110)))

(assert (= (and b!2271428 ((_ is Cons!27012) (t!202618 suffix!886))) b!2271838))

(declare-fun b!2271839 () Bool)

(declare-fun e!1455111 () Bool)

(assert (=> b!2271839 (= e!1455111 tp_is_empty!10531)))

(declare-fun b!2271842 () Bool)

(declare-fun tp!719402 () Bool)

(declare-fun tp!719403 () Bool)

(assert (=> b!2271842 (= e!1455111 (and tp!719402 tp!719403))))

(declare-fun b!2271841 () Bool)

(declare-fun tp!719405 () Bool)

(assert (=> b!2271841 (= e!1455111 tp!719405)))

(declare-fun b!2271840 () Bool)

(declare-fun tp!719406 () Bool)

(declare-fun tp!719404 () Bool)

(assert (=> b!2271840 (= e!1455111 (and tp!719406 tp!719404))))

(assert (=> b!2271439 (= tp!719300 e!1455111)))

(assert (= (and b!2271439 ((_ is ElementMatch!6655) (regex!4307 r!2363))) b!2271839))

(assert (= (and b!2271439 ((_ is Concat!11125) (regex!4307 r!2363))) b!2271840))

(assert (= (and b!2271439 ((_ is Star!6655) (regex!4307 r!2363))) b!2271841))

(assert (= (and b!2271439 ((_ is Union!6655) (regex!4307 r!2363))) b!2271842))

(declare-fun b!2271843 () Bool)

(declare-fun e!1455112 () Bool)

(declare-fun tp!719407 () Bool)

(assert (=> b!2271843 (= e!1455112 (and tp_is_empty!10531 tp!719407))))

(assert (=> b!2271440 (= tp!719303 e!1455112)))

(assert (= (and b!2271440 ((_ is Cons!27012) (t!202618 otherP!12))) b!2271843))

(declare-fun b!2271844 () Bool)

(declare-fun e!1455113 () Bool)

(assert (=> b!2271844 (= e!1455113 tp_is_empty!10531)))

(declare-fun b!2271847 () Bool)

(declare-fun tp!719408 () Bool)

(declare-fun tp!719409 () Bool)

(assert (=> b!2271847 (= e!1455113 (and tp!719408 tp!719409))))

(declare-fun b!2271846 () Bool)

(declare-fun tp!719411 () Bool)

(assert (=> b!2271846 (= e!1455113 tp!719411)))

(declare-fun b!2271845 () Bool)

(declare-fun tp!719412 () Bool)

(declare-fun tp!719410 () Bool)

(assert (=> b!2271845 (= e!1455113 (and tp!719412 tp!719410))))

(assert (=> b!2271450 (= tp!719290 e!1455113)))

(assert (= (and b!2271450 ((_ is ElementMatch!6655) (regex!4307 (h!32414 rules!1750)))) b!2271844))

(assert (= (and b!2271450 ((_ is Concat!11125) (regex!4307 (h!32414 rules!1750)))) b!2271845))

(assert (= (and b!2271450 ((_ is Star!6655) (regex!4307 (h!32414 rules!1750)))) b!2271846))

(assert (= (and b!2271450 ((_ is Union!6655) (regex!4307 (h!32414 rules!1750)))) b!2271847))

(declare-fun b!2271848 () Bool)

(declare-fun e!1455114 () Bool)

(declare-fun tp!719413 () Bool)

(assert (=> b!2271848 (= e!1455114 (and tp_is_empty!10531 tp!719413))))

(assert (=> b!2271429 (= tp!719294 e!1455114)))

(assert (= (and b!2271429 ((_ is Cons!27012) (originalCharacters!5077 (h!32415 tokens!456)))) b!2271848))

(declare-fun b!2271859 () Bool)

(declare-fun b_free!67573 () Bool)

(declare-fun b_next!68277 () Bool)

(assert (=> b!2271859 (= b_free!67573 (not b_next!68277))))

(declare-fun tp!719424 () Bool)

(declare-fun b_and!179049 () Bool)

(assert (=> b!2271859 (= tp!719424 b_and!179049)))

(declare-fun b_free!67575 () Bool)

(declare-fun b_next!68279 () Bool)

(assert (=> b!2271859 (= b_free!67575 (not b_next!68279))))

(declare-fun tb!134839 () Bool)

(declare-fun t!202662 () Bool)

(assert (=> (and b!2271859 (= (toChars!5932 (transformation!4307 (h!32414 (t!202619 rules!1750)))) (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456))))) t!202662) tb!134839))

(declare-fun result!164412 () Bool)

(assert (= result!164412 result!164354))

(assert (=> d!672389 t!202662))

(declare-fun tb!134841 () Bool)

(declare-fun t!202664 () Bool)

(assert (=> (and b!2271859 (= (toChars!5932 (transformation!4307 (h!32414 (t!202619 rules!1750)))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456))))) t!202664) tb!134841))

(declare-fun result!164414 () Bool)

(assert (= result!164414 result!164374))

(assert (=> b!2271585 t!202664))

(declare-fun b_and!179051 () Bool)

(declare-fun tp!719425 () Bool)

(assert (=> b!2271859 (= tp!719425 (and (=> t!202662 result!164412) (=> t!202664 result!164414) b_and!179051))))

(declare-fun e!1455124 () Bool)

(assert (=> b!2271859 (= e!1455124 (and tp!719424 tp!719425))))

(declare-fun tp!719423 () Bool)

(declare-fun b!2271858 () Bool)

(declare-fun e!1455125 () Bool)

(assert (=> b!2271858 (= e!1455125 (and tp!719423 (inv!36571 (tag!4797 (h!32414 (t!202619 rules!1750)))) (inv!36574 (transformation!4307 (h!32414 (t!202619 rules!1750)))) e!1455124))))

(declare-fun b!2271857 () Bool)

(declare-fun e!1455126 () Bool)

(declare-fun tp!719422 () Bool)

(assert (=> b!2271857 (= e!1455126 (and e!1455125 tp!719422))))

(assert (=> b!2271452 (= tp!719296 e!1455126)))

(assert (= b!2271858 b!2271859))

(assert (= b!2271857 b!2271858))

(assert (= (and b!2271452 ((_ is Cons!27013) (t!202619 rules!1750))) b!2271857))

(declare-fun m!2700447 () Bool)

(assert (=> b!2271858 m!2700447))

(declare-fun m!2700449 () Bool)

(assert (=> b!2271858 m!2700449))

(declare-fun b!2271873 () Bool)

(declare-fun b_free!67577 () Bool)

(declare-fun b_next!68281 () Bool)

(assert (=> b!2271873 (= b_free!67577 (not b_next!68281))))

(declare-fun tp!719436 () Bool)

(declare-fun b_and!179053 () Bool)

(assert (=> b!2271873 (= tp!719436 b_and!179053)))

(declare-fun b_free!67579 () Bool)

(declare-fun b_next!68283 () Bool)

(assert (=> b!2271873 (= b_free!67579 (not b_next!68283))))

(declare-fun t!202666 () Bool)

(declare-fun tb!134843 () Bool)

(assert (=> (and b!2271873 (= (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456))))) (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456))))) t!202666) tb!134843))

(declare-fun result!164418 () Bool)

(assert (= result!164418 result!164354))

(assert (=> d!672389 t!202666))

(declare-fun t!202668 () Bool)

(declare-fun tb!134845 () Bool)

(assert (=> (and b!2271873 (= (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456))))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456))))) t!202668) tb!134845))

(declare-fun result!164420 () Bool)

(assert (= result!164420 result!164374))

(assert (=> b!2271585 t!202668))

(declare-fun b_and!179055 () Bool)

(declare-fun tp!719440 () Bool)

(assert (=> b!2271873 (= tp!719440 (and (=> t!202666 result!164418) (=> t!202668 result!164420) b_and!179055))))

(declare-fun e!1455140 () Bool)

(assert (=> b!2271443 (= tp!719307 e!1455140)))

(declare-fun e!1455142 () Bool)

(declare-fun b!2271871 () Bool)

(declare-fun e!1455139 () Bool)

(declare-fun tp!719439 () Bool)

(assert (=> b!2271871 (= e!1455139 (and (inv!21 (value!136569 (h!32415 (t!202620 tokens!456)))) e!1455142 tp!719439))))

(declare-fun b!2271872 () Bool)

(declare-fun tp!719437 () Bool)

(declare-fun e!1455144 () Bool)

(assert (=> b!2271872 (= e!1455142 (and tp!719437 (inv!36571 (tag!4797 (rule!6625 (h!32415 (t!202620 tokens!456))))) (inv!36574 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456))))) e!1455144))))

(declare-fun b!2271870 () Bool)

(declare-fun tp!719438 () Bool)

(assert (=> b!2271870 (= e!1455140 (and (inv!36575 (h!32415 (t!202620 tokens!456))) e!1455139 tp!719438))))

(assert (=> b!2271873 (= e!1455144 (and tp!719436 tp!719440))))

(assert (= b!2271872 b!2271873))

(assert (= b!2271871 b!2271872))

(assert (= b!2271870 b!2271871))

(assert (= (and b!2271443 ((_ is Cons!27014) (t!202620 tokens!456))) b!2271870))

(declare-fun m!2700451 () Bool)

(assert (=> b!2271871 m!2700451))

(declare-fun m!2700453 () Bool)

(assert (=> b!2271872 m!2700453))

(declare-fun m!2700455 () Bool)

(assert (=> b!2271872 m!2700455))

(declare-fun m!2700457 () Bool)

(assert (=> b!2271870 m!2700457))

(declare-fun b!2271874 () Bool)

(declare-fun e!1455145 () Bool)

(declare-fun tp!719441 () Bool)

(assert (=> b!2271874 (= e!1455145 (and tp_is_empty!10531 tp!719441))))

(assert (=> b!2271445 (= tp!719298 e!1455145)))

(assert (= (and b!2271445 ((_ is Cons!27012) (t!202618 input!1722))) b!2271874))

(declare-fun b_lambda!72387 () Bool)

(assert (= b_lambda!72381 (or (and b!2271859 b_free!67575 (= (toChars!5932 (transformation!4307 (h!32414 (t!202619 rules!1750)))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))))) (and b!2271441 b_free!67555) (and b!2271873 b_free!67579 (= (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456))))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))))) (and b!2271451 b_free!67559 (= (toChars!5932 (transformation!4307 otherR!12)) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))))) (and b!2271438 b_free!67563 (= (toChars!5932 (transformation!4307 (h!32414 rules!1750))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))))) (and b!2271454 b_free!67551 (= (toChars!5932 (transformation!4307 r!2363)) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))))) b_lambda!72387)))

(check-sat (not b!2271845) (not b!2271827) (not b!2271615) b_and!179031 (not b!2271587) (not b_next!68267) (not b!2271478) (not b!2271857) (not d!672365) (not b!2271841) (not b!2271486) b_and!179005 (not b!2271567) (not b!2271771) b_and!179051 b_and!179055 (not b!2271840) (not b!2271808) (not b!2271599) (not d!672389) (not b!2271614) (not b_next!68277) (not b_next!68281) (not b!2271598) (not tb!134815) (not b_lambda!72377) tp_is_empty!10531 b_and!179025 (not b!2271496) b_and!178993 (not b_next!68263) (not b_next!68283) b_and!179053 (not b!2271617) b_and!179001 b_and!179029 (not b!2271843) (not b!2271829) (not d!672405) (not b!2271813) (not b!2271846) (not d!672375) (not b!2271549) b_and!178997 (not b!2271847) (not d!672409) (not b!2271806) (not b_next!68253) (not d!672383) b_and!179027 (not b_next!68279) (not d!672447) (not d!672431) (not b!2271832) (not b!2271457) (not b!2271870) (not b!2271803) (not d!672367) (not d!672439) (not d!672399) (not b!2271828) (not b!2271848) (not b_next!68265) b_and!179049 (not d!672421) (not b!2271770) (not b_next!68259) (not b!2271858) (not b!2271575) (not b!2271602) (not bm!136129) (not b!2271505) (not b!2271548) (not b_lambda!72387) (not d!672491) (not b!2271572) (not d!672441) (not d!672381) (not b!2271465) (not b!2271522) (not b!2271585) (not b!2271838) (not d!672437) (not b!2271871) (not b!2271833) (not b!2271872) (not b!2271463) (not b_next!68255) (not b!2271811) (not d!672433) (not d!672371) (not b!2271586) (not d!672443) (not d!672369) (not b_next!68257) (not d!672493) (not b!2271597) (not b!2271831) (not b!2271616) (not d!672429) (not b_next!68261) (not b!2271547) (not b!2271807) (not b!2271874) (not tb!134799) (not b!2271842) (not d!672445) (not b!2271470))
(check-sat (not b_next!68267) b_and!179005 b_and!179051 b_and!179055 b_and!179001 b_and!179029 b_and!178997 (not b_next!68265) (not b_next!68255) (not b_next!68257) b_and!179031 (not b_next!68261) (not b_next!68277) (not b_next!68281) b_and!178993 b_and!179025 (not b_next!68263) (not b_next!68283) b_and!179053 (not b_next!68253) b_and!179027 (not b_next!68279) b_and!179049 (not b_next!68259))
(get-model)

(declare-fun d!672503 () Bool)

(assert (=> d!672503 (= (isEmpty!15305 (list!10477 (charsOf!2695 (head!4902 tokens!456)))) ((_ is Nil!27012) (list!10477 (charsOf!2695 (head!4902 tokens!456)))))))

(assert (=> bm!136129 d!672503))

(declare-fun d!672505 () Bool)

(declare-fun lt!843831 () Bool)

(assert (=> d!672505 (= lt!843831 (select (content!3601 (t!202619 rules!1750)) otherR!12))))

(declare-fun e!1455152 () Bool)

(assert (=> d!672505 (= lt!843831 e!1455152)))

(declare-fun res!971135 () Bool)

(assert (=> d!672505 (=> (not res!971135) (not e!1455152))))

(assert (=> d!672505 (= res!971135 ((_ is Cons!27013) (t!202619 rules!1750)))))

(assert (=> d!672505 (= (contains!4671 (t!202619 rules!1750) otherR!12) lt!843831)))

(declare-fun b!2271886 () Bool)

(declare-fun e!1455151 () Bool)

(assert (=> b!2271886 (= e!1455152 e!1455151)))

(declare-fun res!971136 () Bool)

(assert (=> b!2271886 (=> res!971136 e!1455151)))

(assert (=> b!2271886 (= res!971136 (= (h!32414 (t!202619 rules!1750)) otherR!12))))

(declare-fun b!2271887 () Bool)

(assert (=> b!2271887 (= e!1455151 (contains!4671 (t!202619 (t!202619 rules!1750)) otherR!12))))

(assert (= (and d!672505 res!971135) b!2271886))

(assert (= (and b!2271886 (not res!971136)) b!2271887))

(declare-fun m!2700465 () Bool)

(assert (=> d!672505 m!2700465))

(declare-fun m!2700467 () Bool)

(assert (=> d!672505 m!2700467))

(declare-fun m!2700469 () Bool)

(assert (=> b!2271887 m!2700469))

(assert (=> b!2271465 d!672505))

(declare-fun d!672507 () Bool)

(assert (=> d!672507 (= (list!10477 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (value!136569 (h!32415 tokens!456)))) (list!10482 (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (value!136569 (h!32415 tokens!456))))))))

(declare-fun bs!456055 () Bool)

(assert (= bs!456055 d!672507))

(declare-fun m!2700471 () Bool)

(assert (=> bs!456055 m!2700471))

(assert (=> b!2271585 d!672507))

(assert (=> d!672491 d!672503))

(declare-fun b!2271915 () Bool)

(declare-fun res!971154 () Bool)

(declare-fun e!1455173 () Bool)

(assert (=> b!2271915 (=> res!971154 e!1455173)))

(assert (=> b!2271915 (= res!971154 (not ((_ is Concat!11125) (regex!4307 r!2363))))))

(declare-fun e!1455176 () Bool)

(assert (=> b!2271915 (= e!1455176 e!1455173)))

(declare-fun b!2271916 () Bool)

(declare-fun e!1455174 () Bool)

(declare-fun e!1455177 () Bool)

(assert (=> b!2271916 (= e!1455174 e!1455177)))

(declare-fun c!360673 () Bool)

(assert (=> b!2271916 (= c!360673 ((_ is Star!6655) (regex!4307 r!2363)))))

(declare-fun call!136141 () Bool)

(declare-fun c!360672 () Bool)

(declare-fun bm!136136 () Bool)

(assert (=> bm!136136 (= call!136141 (validRegex!2496 (ite c!360673 (reg!6984 (regex!4307 r!2363)) (ite c!360672 (regOne!13823 (regex!4307 r!2363)) (regTwo!13822 (regex!4307 r!2363))))))))

(declare-fun b!2271917 () Bool)

(declare-fun res!971153 () Bool)

(declare-fun e!1455172 () Bool)

(assert (=> b!2271917 (=> (not res!971153) (not e!1455172))))

(declare-fun call!136143 () Bool)

(assert (=> b!2271917 (= res!971153 call!136143)))

(assert (=> b!2271917 (= e!1455176 e!1455172)))

(declare-fun b!2271918 () Bool)

(declare-fun call!136142 () Bool)

(assert (=> b!2271918 (= e!1455172 call!136142)))

(declare-fun b!2271919 () Bool)

(declare-fun e!1455175 () Bool)

(assert (=> b!2271919 (= e!1455177 e!1455175)))

(declare-fun res!971152 () Bool)

(assert (=> b!2271919 (= res!971152 (not (nullable!1834 (reg!6984 (regex!4307 r!2363)))))))

(assert (=> b!2271919 (=> (not res!971152) (not e!1455175))))

(declare-fun b!2271920 () Bool)

(declare-fun e!1455178 () Bool)

(assert (=> b!2271920 (= e!1455178 call!136143)))

(declare-fun b!2271921 () Bool)

(assert (=> b!2271921 (= e!1455175 call!136141)))

(declare-fun b!2271922 () Bool)

(assert (=> b!2271922 (= e!1455177 e!1455176)))

(assert (=> b!2271922 (= c!360672 ((_ is Union!6655) (regex!4307 r!2363)))))

(declare-fun b!2271923 () Bool)

(assert (=> b!2271923 (= e!1455173 e!1455178)))

(declare-fun res!971150 () Bool)

(assert (=> b!2271923 (=> (not res!971150) (not e!1455178))))

(assert (=> b!2271923 (= res!971150 call!136142)))

(declare-fun bm!136138 () Bool)

(assert (=> bm!136138 (= call!136143 call!136141)))

(declare-fun bm!136137 () Bool)

(assert (=> bm!136137 (= call!136142 (validRegex!2496 (ite c!360672 (regTwo!13823 (regex!4307 r!2363)) (regOne!13822 (regex!4307 r!2363)))))))

(declare-fun d!672509 () Bool)

(declare-fun res!971151 () Bool)

(assert (=> d!672509 (=> res!971151 e!1455174)))

(assert (=> d!672509 (= res!971151 ((_ is ElementMatch!6655) (regex!4307 r!2363)))))

(assert (=> d!672509 (= (validRegex!2496 (regex!4307 r!2363)) e!1455174)))

(assert (= (and d!672509 (not res!971151)) b!2271916))

(assert (= (and b!2271916 c!360673) b!2271919))

(assert (= (and b!2271916 (not c!360673)) b!2271922))

(assert (= (and b!2271919 res!971152) b!2271921))

(assert (= (and b!2271922 c!360672) b!2271917))

(assert (= (and b!2271922 (not c!360672)) b!2271915))

(assert (= (and b!2271917 res!971153) b!2271918))

(assert (= (and b!2271915 (not res!971154)) b!2271923))

(assert (= (and b!2271923 res!971150) b!2271920))

(assert (= (or b!2271917 b!2271920) bm!136138))

(assert (= (or b!2271918 b!2271923) bm!136137))

(assert (= (or b!2271921 bm!136138) bm!136136))

(declare-fun m!2700485 () Bool)

(assert (=> bm!136136 m!2700485))

(declare-fun m!2700487 () Bool)

(assert (=> b!2271919 m!2700487))

(declare-fun m!2700489 () Bool)

(assert (=> bm!136137 m!2700489))

(assert (=> d!672491 d!672509))

(declare-fun d!672521 () Bool)

(assert (=> d!672521 true))

(declare-fun lambda!85513 () Int)

(declare-fun order!15073 () Int)

(declare-fun order!15071 () Int)

(declare-fun dynLambda!11719 (Int Int) Int)

(declare-fun dynLambda!11720 (Int Int) Int)

(assert (=> d!672521 (< (dynLambda!11719 order!15071 (toValue!6073 (transformation!4307 r!2363))) (dynLambda!11720 order!15073 lambda!85513))))

(declare-fun Forall2!695 (Int) Bool)

(assert (=> d!672521 (= (equivClasses!1655 (toChars!5932 (transformation!4307 r!2363)) (toValue!6073 (transformation!4307 r!2363))) (Forall2!695 lambda!85513))))

(declare-fun bs!456057 () Bool)

(assert (= bs!456057 d!672521))

(declare-fun m!2700491 () Bool)

(assert (=> bs!456057 m!2700491))

(assert (=> b!2271505 d!672521))

(declare-fun d!672523 () Bool)

(assert (=> d!672523 true))

(declare-fun lambda!85516 () Int)

(declare-fun order!15077 () Int)

(declare-fun order!15075 () Int)

(declare-fun dynLambda!11721 (Int Int) Int)

(declare-fun dynLambda!11722 (Int Int) Int)

(assert (=> d!672523 (< (dynLambda!11721 order!15075 (toChars!5932 (transformation!4307 otherR!12))) (dynLambda!11722 order!15077 lambda!85516))))

(assert (=> d!672523 true))

(assert (=> d!672523 (< (dynLambda!11719 order!15071 (toValue!6073 (transformation!4307 otherR!12))) (dynLambda!11722 order!15077 lambda!85516))))

(declare-fun Forall!1079 (Int) Bool)

(assert (=> d!672523 (= (semiInverseModEq!1736 (toChars!5932 (transformation!4307 otherR!12)) (toValue!6073 (transformation!4307 otherR!12))) (Forall!1079 lambda!85516))))

(declare-fun bs!456058 () Bool)

(assert (= bs!456058 d!672523))

(declare-fun m!2700493 () Bool)

(assert (=> bs!456058 m!2700493))

(assert (=> d!672365 d!672523))

(declare-fun d!672525 () Bool)

(declare-fun isBalanced!2668 (Conc!8762) Bool)

(assert (=> d!672525 (= (inv!36579 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))) (value!136569 (head!4902 tokens!456)))) (isBalanced!2668 (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))) (value!136569 (head!4902 tokens!456))))))))

(declare-fun bs!456059 () Bool)

(assert (= bs!456059 d!672525))

(declare-fun m!2700495 () Bool)

(assert (=> bs!456059 m!2700495))

(assert (=> tb!134799 d!672525))

(declare-fun d!672527 () Bool)

(declare-fun lt!843833 () Int)

(assert (=> d!672527 (= lt!843833 (size!21208 (list!10477 (_2!15852 lt!843802))))))

(assert (=> d!672527 (= lt!843833 (size!21210 (c!360602 (_2!15852 lt!843802))))))

(assert (=> d!672527 (= (size!21207 (_2!15852 lt!843802)) lt!843833)))

(declare-fun bs!456060 () Bool)

(assert (= bs!456060 d!672527))

(assert (=> bs!456060 m!2700303))

(assert (=> bs!456060 m!2700303))

(declare-fun m!2700497 () Bool)

(assert (=> bs!456060 m!2700497))

(declare-fun m!2700499 () Bool)

(assert (=> bs!456060 m!2700499))

(assert (=> b!2271615 d!672527))

(declare-fun d!672529 () Bool)

(declare-fun lt!843838 () Int)

(assert (=> d!672529 (= lt!843838 (size!21208 (list!10477 (seqFromList!3011 input!1722))))))

(assert (=> d!672529 (= lt!843838 (size!21210 (c!360602 (seqFromList!3011 input!1722))))))

(assert (=> d!672529 (= (size!21207 (seqFromList!3011 input!1722)) lt!843838)))

(declare-fun bs!456061 () Bool)

(assert (= bs!456061 d!672529))

(assert (=> bs!456061 m!2700117))

(assert (=> bs!456061 m!2700305))

(assert (=> bs!456061 m!2700305))

(declare-fun m!2700501 () Bool)

(assert (=> bs!456061 m!2700501))

(declare-fun m!2700503 () Bool)

(assert (=> bs!456061 m!2700503))

(assert (=> b!2271615 d!672529))

(declare-fun d!672531 () Bool)

(assert (=> d!672531 (= (isEmpty!15305 (tail!3277 (list!10477 (charsOf!2695 (head!4902 tokens!456))))) ((_ is Nil!27012) (tail!3277 (list!10477 (charsOf!2695 (head!4902 tokens!456))))))))

(assert (=> b!2271807 d!672531))

(declare-fun d!672533 () Bool)

(assert (=> d!672533 (= (tail!3277 (list!10477 (charsOf!2695 (head!4902 tokens!456)))) (t!202618 (list!10477 (charsOf!2695 (head!4902 tokens!456)))))))

(assert (=> b!2271807 d!672533))

(declare-fun d!672535 () Bool)

(assert (=> d!672535 (= (inv!36571 (tag!4797 (h!32414 (t!202619 rules!1750)))) (= (mod (str.len (value!136568 (tag!4797 (h!32414 (t!202619 rules!1750))))) 2) 0))))

(assert (=> b!2271858 d!672535))

(declare-fun d!672537 () Bool)

(declare-fun res!971157 () Bool)

(declare-fun e!1455183 () Bool)

(assert (=> d!672537 (=> (not res!971157) (not e!1455183))))

(assert (=> d!672537 (= res!971157 (semiInverseModEq!1736 (toChars!5932 (transformation!4307 (h!32414 (t!202619 rules!1750)))) (toValue!6073 (transformation!4307 (h!32414 (t!202619 rules!1750))))))))

(assert (=> d!672537 (= (inv!36574 (transformation!4307 (h!32414 (t!202619 rules!1750)))) e!1455183)))

(declare-fun b!2271936 () Bool)

(assert (=> b!2271936 (= e!1455183 (equivClasses!1655 (toChars!5932 (transformation!4307 (h!32414 (t!202619 rules!1750)))) (toValue!6073 (transformation!4307 (h!32414 (t!202619 rules!1750))))))))

(assert (= (and d!672537 res!971157) b!2271936))

(declare-fun m!2700505 () Bool)

(assert (=> d!672537 m!2700505))

(declare-fun m!2700507 () Bool)

(assert (=> b!2271936 m!2700507))

(assert (=> b!2271858 d!672537))

(declare-fun d!672539 () Bool)

(declare-fun c!360682 () Bool)

(assert (=> d!672539 (= c!360682 ((_ is Empty!8762) (c!360602 (charsOf!2695 (head!4902 tokens!456)))))))

(declare-fun e!1455192 () List!27106)

(assert (=> d!672539 (= (list!10482 (c!360602 (charsOf!2695 (head!4902 tokens!456)))) e!1455192)))

(declare-fun b!2271952 () Bool)

(declare-fun e!1455193 () List!27106)

(assert (=> b!2271952 (= e!1455192 e!1455193)))

(declare-fun c!360683 () Bool)

(assert (=> b!2271952 (= c!360683 ((_ is Leaf!12901) (c!360602 (charsOf!2695 (head!4902 tokens!456)))))))

(declare-fun b!2271951 () Bool)

(assert (=> b!2271951 (= e!1455192 Nil!27012)))

(declare-fun b!2271953 () Bool)

(declare-fun list!10483 (IArray!17529) List!27106)

(assert (=> b!2271953 (= e!1455193 (list!10483 (xs!11704 (c!360602 (charsOf!2695 (head!4902 tokens!456))))))))

(declare-fun b!2271954 () Bool)

(declare-fun ++!6586 (List!27106 List!27106) List!27106)

(assert (=> b!2271954 (= e!1455193 (++!6586 (list!10482 (left!20496 (c!360602 (charsOf!2695 (head!4902 tokens!456))))) (list!10482 (right!20826 (c!360602 (charsOf!2695 (head!4902 tokens!456)))))))))

(assert (= (and d!672539 c!360682) b!2271951))

(assert (= (and d!672539 (not c!360682)) b!2271952))

(assert (= (and b!2271952 c!360683) b!2271953))

(assert (= (and b!2271952 (not c!360683)) b!2271954))

(declare-fun m!2700509 () Bool)

(assert (=> b!2271953 m!2700509))

(declare-fun m!2700511 () Bool)

(assert (=> b!2271954 m!2700511))

(declare-fun m!2700513 () Bool)

(assert (=> b!2271954 m!2700513))

(assert (=> b!2271954 m!2700511))

(assert (=> b!2271954 m!2700513))

(declare-fun m!2700515 () Bool)

(assert (=> b!2271954 m!2700515))

(assert (=> d!672493 d!672539))

(declare-fun d!672541 () Bool)

(assert (=> d!672541 (= (list!10478 (_1!15852 lt!843802)) (list!10481 (c!360604 (_1!15852 lt!843802))))))

(declare-fun bs!456062 () Bool)

(assert (= bs!456062 d!672541))

(declare-fun m!2700517 () Bool)

(assert (=> bs!456062 m!2700517))

(assert (=> b!2271617 d!672541))

(declare-fun b!2271979 () Bool)

(declare-fun e!1455211 () Bool)

(declare-fun lt!843857 () tuple2!26686)

(assert (=> b!2271979 (= e!1455211 (not (isEmpty!15302 (_1!15853 lt!843857))))))

(declare-fun b!2271980 () Bool)

(declare-fun e!1455212 () Bool)

(assert (=> b!2271980 (= e!1455212 (= (_2!15853 lt!843857) (list!10477 (seqFromList!3011 input!1722))))))

(declare-fun b!2271981 () Bool)

(declare-fun e!1455210 () tuple2!26686)

(assert (=> b!2271981 (= e!1455210 (tuple2!26687 Nil!27014 (list!10477 (seqFromList!3011 input!1722))))))

(declare-fun d!672543 () Bool)

(assert (=> d!672543 e!1455212))

(declare-fun c!360691 () Bool)

(declare-fun size!21214 (List!27108) Int)

(assert (=> d!672543 (= c!360691 (> (size!21214 (_1!15853 lt!843857)) 0))))

(assert (=> d!672543 (= lt!843857 e!1455210)))

(declare-fun c!360692 () Bool)

(declare-datatypes ((tuple2!26690 0))(
  ( (tuple2!26691 (_1!15855 Token!8092) (_2!15855 List!27106)) )
))
(declare-datatypes ((Option!5287 0))(
  ( (None!5286) (Some!5286 (v!30336 tuple2!26690)) )
))
(declare-fun lt!843856 () Option!5287)

(assert (=> d!672543 (= c!360692 ((_ is Some!5286) lt!843856))))

(declare-fun maxPrefix!2174 (LexerInterface!3904 List!27107 List!27106) Option!5287)

(assert (=> d!672543 (= lt!843856 (maxPrefix!2174 thiss!16613 rules!1750 (list!10477 (seqFromList!3011 input!1722))))))

(assert (=> d!672543 (= (lexList!1080 thiss!16613 rules!1750 (list!10477 (seqFromList!3011 input!1722))) lt!843857)))

(declare-fun b!2271982 () Bool)

(declare-fun lt!843855 () tuple2!26686)

(assert (=> b!2271982 (= e!1455210 (tuple2!26687 (Cons!27014 (_1!15855 (v!30336 lt!843856)) (_1!15853 lt!843855)) (_2!15853 lt!843855)))))

(assert (=> b!2271982 (= lt!843855 (lexList!1080 thiss!16613 rules!1750 (_2!15855 (v!30336 lt!843856))))))

(declare-fun b!2271983 () Bool)

(assert (=> b!2271983 (= e!1455212 e!1455211)))

(declare-fun res!971169 () Bool)

(assert (=> b!2271983 (= res!971169 (< (size!21208 (_2!15853 lt!843857)) (size!21208 (list!10477 (seqFromList!3011 input!1722)))))))

(assert (=> b!2271983 (=> (not res!971169) (not e!1455211))))

(assert (= (and d!672543 c!360692) b!2271982))

(assert (= (and d!672543 (not c!360692)) b!2271981))

(assert (= (and d!672543 c!360691) b!2271983))

(assert (= (and d!672543 (not c!360691)) b!2271980))

(assert (= (and b!2271983 res!971169) b!2271979))

(declare-fun m!2700557 () Bool)

(assert (=> b!2271979 m!2700557))

(declare-fun m!2700559 () Bool)

(assert (=> d!672543 m!2700559))

(assert (=> d!672543 m!2700305))

(declare-fun m!2700561 () Bool)

(assert (=> d!672543 m!2700561))

(declare-fun m!2700563 () Bool)

(assert (=> b!2271982 m!2700563))

(declare-fun m!2700565 () Bool)

(assert (=> b!2271983 m!2700565))

(assert (=> b!2271983 m!2700305))

(assert (=> b!2271983 m!2700501))

(assert (=> b!2271617 d!672543))

(declare-fun d!672559 () Bool)

(assert (=> d!672559 (= (list!10477 (seqFromList!3011 input!1722)) (list!10482 (c!360602 (seqFromList!3011 input!1722))))))

(declare-fun bs!456067 () Bool)

(assert (= bs!456067 d!672559))

(declare-fun m!2700567 () Bool)

(assert (=> bs!456067 m!2700567))

(assert (=> b!2271617 d!672559))

(declare-fun d!672561 () Bool)

(declare-fun res!971170 () Bool)

(declare-fun e!1455213 () Bool)

(assert (=> d!672561 (=> (not res!971170) (not e!1455213))))

(assert (=> d!672561 (= res!971170 (validRegex!2496 (regex!4307 (h!32414 rules!1750))))))

(assert (=> d!672561 (= (ruleValid!1397 thiss!16613 (h!32414 rules!1750)) e!1455213)))

(declare-fun b!2271984 () Bool)

(declare-fun res!971171 () Bool)

(assert (=> b!2271984 (=> (not res!971171) (not e!1455213))))

(assert (=> b!2271984 (= res!971171 (not (nullable!1834 (regex!4307 (h!32414 rules!1750)))))))

(declare-fun b!2271985 () Bool)

(assert (=> b!2271985 (= e!1455213 (not (= (tag!4797 (h!32414 rules!1750)) (String!29450 ""))))))

(assert (= (and d!672561 res!971170) b!2271984))

(assert (= (and b!2271984 res!971171) b!2271985))

(declare-fun m!2700569 () Bool)

(assert (=> d!672561 m!2700569))

(declare-fun m!2700571 () Bool)

(assert (=> b!2271984 m!2700571))

(assert (=> b!2271770 d!672561))

(assert (=> d!672409 d!672367))

(declare-fun d!672563 () Bool)

(declare-fun lt!843858 () Int)

(assert (=> d!672563 (>= lt!843858 0)))

(declare-fun e!1455214 () Int)

(assert (=> d!672563 (= lt!843858 e!1455214)))

(declare-fun c!360693 () Bool)

(assert (=> d!672563 (= c!360693 ((_ is Nil!27012) (t!202618 otherP!12)))))

(assert (=> d!672563 (= (size!21208 (t!202618 otherP!12)) lt!843858)))

(declare-fun b!2271986 () Bool)

(assert (=> b!2271986 (= e!1455214 0)))

(declare-fun b!2271987 () Bool)

(assert (=> b!2271987 (= e!1455214 (+ 1 (size!21208 (t!202618 (t!202618 otherP!12)))))))

(assert (= (and d!672563 c!360693) b!2271986))

(assert (= (and d!672563 (not c!360693)) b!2271987))

(declare-fun m!2700573 () Bool)

(assert (=> b!2271987 m!2700573))

(assert (=> b!2271496 d!672563))

(declare-fun d!672565 () Bool)

(declare-fun res!971172 () Bool)

(declare-fun e!1455215 () Bool)

(assert (=> d!672565 (=> (not res!971172) (not e!1455215))))

(assert (=> d!672565 (= res!971172 (not (isEmpty!15305 (originalCharacters!5077 (h!32415 (t!202620 tokens!456))))))))

(assert (=> d!672565 (= (inv!36575 (h!32415 (t!202620 tokens!456))) e!1455215)))

(declare-fun b!2271988 () Bool)

(declare-fun res!971173 () Bool)

(assert (=> b!2271988 (=> (not res!971173) (not e!1455215))))

(assert (=> b!2271988 (= res!971173 (= (originalCharacters!5077 (h!32415 (t!202620 tokens!456))) (list!10477 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456))))) (value!136569 (h!32415 (t!202620 tokens!456)))))))))

(declare-fun b!2271989 () Bool)

(assert (=> b!2271989 (= e!1455215 (= (size!21206 (h!32415 (t!202620 tokens!456))) (size!21208 (originalCharacters!5077 (h!32415 (t!202620 tokens!456))))))))

(assert (= (and d!672565 res!971172) b!2271988))

(assert (= (and b!2271988 res!971173) b!2271989))

(declare-fun b_lambda!72391 () Bool)

(assert (=> (not b_lambda!72391) (not b!2271988)))

(declare-fun t!202685 () Bool)

(declare-fun tb!134859 () Bool)

(assert (=> (and b!2271441 (= (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456)))))) t!202685) tb!134859))

(declare-fun b!2271992 () Bool)

(declare-fun e!1455216 () Bool)

(declare-fun tp!719443 () Bool)

(assert (=> b!2271992 (= e!1455216 (and (inv!36578 (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456))))) (value!136569 (h!32415 (t!202620 tokens!456)))))) tp!719443))))

(declare-fun result!164434 () Bool)

(assert (=> tb!134859 (= result!164434 (and (inv!36579 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456))))) (value!136569 (h!32415 (t!202620 tokens!456))))) e!1455216))))

(assert (= tb!134859 b!2271992))

(declare-fun m!2700577 () Bool)

(assert (=> b!2271992 m!2700577))

(declare-fun m!2700579 () Bool)

(assert (=> tb!134859 m!2700579))

(assert (=> b!2271988 t!202685))

(declare-fun b_and!179069 () Bool)

(assert (= b_and!179027 (and (=> t!202685 result!164434) b_and!179069)))

(declare-fun tb!134861 () Bool)

(declare-fun t!202687 () Bool)

(assert (=> (and b!2271438 (= (toChars!5932 (transformation!4307 (h!32414 rules!1750))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456)))))) t!202687) tb!134861))

(declare-fun result!164436 () Bool)

(assert (= result!164436 result!164434))

(assert (=> b!2271988 t!202687))

(declare-fun b_and!179071 () Bool)

(assert (= b_and!179031 (and (=> t!202687 result!164436) b_and!179071)))

(declare-fun tb!134863 () Bool)

(declare-fun t!202689 () Bool)

(assert (=> (and b!2271454 (= (toChars!5932 (transformation!4307 r!2363)) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456)))))) t!202689) tb!134863))

(declare-fun result!164438 () Bool)

(assert (= result!164438 result!164434))

(assert (=> b!2271988 t!202689))

(declare-fun b_and!179073 () Bool)

(assert (= b_and!179025 (and (=> t!202689 result!164438) b_and!179073)))

(declare-fun tb!134865 () Bool)

(declare-fun t!202691 () Bool)

(assert (=> (and b!2271451 (= (toChars!5932 (transformation!4307 otherR!12)) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456)))))) t!202691) tb!134865))

(declare-fun result!164440 () Bool)

(assert (= result!164440 result!164434))

(assert (=> b!2271988 t!202691))

(declare-fun b_and!179075 () Bool)

(assert (= b_and!179029 (and (=> t!202691 result!164440) b_and!179075)))

(declare-fun t!202693 () Bool)

(declare-fun tb!134867 () Bool)

(assert (=> (and b!2271873 (= (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456))))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456)))))) t!202693) tb!134867))

(declare-fun result!164442 () Bool)

(assert (= result!164442 result!164434))

(assert (=> b!2271988 t!202693))

(declare-fun b_and!179077 () Bool)

(assert (= b_and!179055 (and (=> t!202693 result!164442) b_and!179077)))

(declare-fun t!202695 () Bool)

(declare-fun tb!134869 () Bool)

(assert (=> (and b!2271859 (= (toChars!5932 (transformation!4307 (h!32414 (t!202619 rules!1750)))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456)))))) t!202695) tb!134869))

(declare-fun result!164444 () Bool)

(assert (= result!164444 result!164434))

(assert (=> b!2271988 t!202695))

(declare-fun b_and!179079 () Bool)

(assert (= b_and!179051 (and (=> t!202695 result!164444) b_and!179079)))

(declare-fun m!2700581 () Bool)

(assert (=> d!672565 m!2700581))

(declare-fun m!2700583 () Bool)

(assert (=> b!2271988 m!2700583))

(assert (=> b!2271988 m!2700583))

(declare-fun m!2700585 () Bool)

(assert (=> b!2271988 m!2700585))

(declare-fun m!2700587 () Bool)

(assert (=> b!2271989 m!2700587))

(assert (=> b!2271870 d!672565))

(declare-fun d!672569 () Bool)

(assert (=> d!672569 (= (inv!36571 (tag!4797 (rule!6625 (h!32415 (t!202620 tokens!456))))) (= (mod (str.len (value!136568 (tag!4797 (rule!6625 (h!32415 (t!202620 tokens!456)))))) 2) 0))))

(assert (=> b!2271872 d!672569))

(declare-fun d!672571 () Bool)

(declare-fun res!971174 () Bool)

(declare-fun e!1455217 () Bool)

(assert (=> d!672571 (=> (not res!971174) (not e!1455217))))

(assert (=> d!672571 (= res!971174 (semiInverseModEq!1736 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456))))) (toValue!6073 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456)))))))))

(assert (=> d!672571 (= (inv!36574 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456))))) e!1455217)))

(declare-fun b!2271993 () Bool)

(assert (=> b!2271993 (= e!1455217 (equivClasses!1655 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456))))) (toValue!6073 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456)))))))))

(assert (= (and d!672571 res!971174) b!2271993))

(declare-fun m!2700589 () Bool)

(assert (=> d!672571 m!2700589))

(declare-fun m!2700591 () Bool)

(assert (=> b!2271993 m!2700591))

(assert (=> b!2271872 d!672571))

(assert (=> d!672375 d!672371))

(declare-fun d!672573 () Bool)

(assert (=> d!672573 (ruleValid!1397 thiss!16613 r!2363)))

(assert (=> d!672573 true))

(declare-fun _$65!1090 () Unit!39960)

(assert (=> d!672573 (= (choose!13268 thiss!16613 r!2363 rules!1750) _$65!1090)))

(declare-fun bs!456069 () Bool)

(assert (= bs!456069 d!672573))

(assert (=> bs!456069 m!2700105))

(assert (=> d!672375 d!672573))

(assert (=> d!672375 d!672367))

(declare-fun d!672575 () Bool)

(declare-fun res!971179 () Bool)

(declare-fun e!1455226 () Bool)

(assert (=> d!672575 (=> res!971179 e!1455226)))

(assert (=> d!672575 (= res!971179 ((_ is Nil!27013) rules!1750))))

(assert (=> d!672575 (= (noDuplicateTag!1578 thiss!16613 rules!1750 Nil!27016) e!1455226)))

(declare-fun b!2272006 () Bool)

(declare-fun e!1455227 () Bool)

(assert (=> b!2272006 (= e!1455226 e!1455227)))

(declare-fun res!971180 () Bool)

(assert (=> b!2272006 (=> (not res!971180) (not e!1455227))))

(declare-fun contains!4672 (List!27110 String!29449) Bool)

(assert (=> b!2272006 (= res!971180 (not (contains!4672 Nil!27016 (tag!4797 (h!32414 rules!1750)))))))

(declare-fun b!2272007 () Bool)

(assert (=> b!2272007 (= e!1455227 (noDuplicateTag!1578 thiss!16613 (t!202619 rules!1750) (Cons!27016 (tag!4797 (h!32414 rules!1750)) Nil!27016)))))

(assert (= (and d!672575 (not res!971179)) b!2272006))

(assert (= (and b!2272006 res!971180) b!2272007))

(declare-fun m!2700593 () Bool)

(assert (=> b!2272006 m!2700593))

(declare-fun m!2700595 () Bool)

(assert (=> b!2272007 m!2700595))

(assert (=> b!2271602 d!672575))

(declare-fun d!672577 () Bool)

(declare-fun c!360704 () Bool)

(assert (=> d!672577 (= c!360704 ((_ is Node!8762) (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (value!136569 (h!32415 tokens!456))))))))

(declare-fun e!1455236 () Bool)

(assert (=> d!672577 (= (inv!36578 (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (value!136569 (h!32415 tokens!456))))) e!1455236)))

(declare-fun b!2272022 () Bool)

(declare-fun inv!36582 (Conc!8762) Bool)

(assert (=> b!2272022 (= e!1455236 (inv!36582 (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (value!136569 (h!32415 tokens!456))))))))

(declare-fun b!2272023 () Bool)

(declare-fun e!1455237 () Bool)

(assert (=> b!2272023 (= e!1455236 e!1455237)))

(declare-fun res!971183 () Bool)

(assert (=> b!2272023 (= res!971183 (not ((_ is Leaf!12901) (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (value!136569 (h!32415 tokens!456)))))))))

(assert (=> b!2272023 (=> res!971183 e!1455237)))

(declare-fun b!2272024 () Bool)

(declare-fun inv!36583 (Conc!8762) Bool)

(assert (=> b!2272024 (= e!1455237 (inv!36583 (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (value!136569 (h!32415 tokens!456))))))))

(assert (= (and d!672577 c!360704) b!2272022))

(assert (= (and d!672577 (not c!360704)) b!2272023))

(assert (= (and b!2272023 (not res!971183)) b!2272024))

(declare-fun m!2700607 () Bool)

(assert (=> b!2272022 m!2700607))

(declare-fun m!2700611 () Bool)

(assert (=> b!2272024 m!2700611))

(assert (=> b!2271587 d!672577))

(declare-fun d!672583 () Bool)

(declare-fun c!360708 () Bool)

(assert (=> d!672583 (= c!360708 ((_ is Nil!27013) rules!1750))))

(declare-fun e!1455241 () (InoxSet Rule!8414))

(assert (=> d!672583 (= (content!3601 rules!1750) e!1455241)))

(declare-fun b!2272031 () Bool)

(assert (=> b!2272031 (= e!1455241 ((as const (Array Rule!8414 Bool)) false))))

(declare-fun b!2272032 () Bool)

(assert (=> b!2272032 (= e!1455241 ((_ map or) (store ((as const (Array Rule!8414 Bool)) false) (h!32414 rules!1750) true) (content!3601 (t!202619 rules!1750))))))

(assert (= (and d!672583 c!360708) b!2272031))

(assert (= (and d!672583 (not c!360708)) b!2272032))

(declare-fun m!2700615 () Bool)

(assert (=> b!2272032 m!2700615))

(assert (=> b!2272032 m!2700465))

(assert (=> d!672369 d!672583))

(declare-fun d!672591 () Bool)

(assert (=> d!672591 (= (head!4904 otherP!12) (h!32413 otherP!12))))

(assert (=> b!2271597 d!672591))

(declare-fun d!672593 () Bool)

(assert (=> d!672593 (= (head!4904 input!1722) (h!32413 input!1722))))

(assert (=> b!2271597 d!672593))

(assert (=> d!672371 d!672509))

(assert (=> d!672421 d!672369))

(declare-fun d!672597 () Bool)

(declare-fun lt!843861 () Bool)

(assert (=> d!672597 (= lt!843861 (select (content!3601 (t!202619 rules!1750)) r!2363))))

(declare-fun e!1455243 () Bool)

(assert (=> d!672597 (= lt!843861 e!1455243)))

(declare-fun res!971184 () Bool)

(assert (=> d!672597 (=> (not res!971184) (not e!1455243))))

(assert (=> d!672597 (= res!971184 ((_ is Cons!27013) (t!202619 rules!1750)))))

(assert (=> d!672597 (= (contains!4671 (t!202619 rules!1750) r!2363) lt!843861)))

(declare-fun b!2272033 () Bool)

(declare-fun e!1455242 () Bool)

(assert (=> b!2272033 (= e!1455243 e!1455242)))

(declare-fun res!971185 () Bool)

(assert (=> b!2272033 (=> res!971185 e!1455242)))

(assert (=> b!2272033 (= res!971185 (= (h!32414 (t!202619 rules!1750)) r!2363))))

(declare-fun b!2272034 () Bool)

(assert (=> b!2272034 (= e!1455242 (contains!4671 (t!202619 (t!202619 rules!1750)) r!2363))))

(assert (= (and d!672597 res!971184) b!2272033))

(assert (= (and b!2272033 (not res!971185)) b!2272034))

(assert (=> d!672597 m!2700465))

(declare-fun m!2700619 () Bool)

(assert (=> d!672597 m!2700619))

(declare-fun m!2700621 () Bool)

(assert (=> b!2272034 m!2700621))

(assert (=> b!2271463 d!672597))

(declare-fun d!672599 () Bool)

(assert (=> d!672599 (= (list!10477 lt!843780) (list!10482 (c!360602 lt!843780)))))

(declare-fun bs!456072 () Bool)

(assert (= bs!456072 d!672599))

(declare-fun m!2700623 () Bool)

(assert (=> bs!456072 m!2700623))

(assert (=> d!672389 d!672599))

(declare-fun d!672601 () Bool)

(declare-fun lt!843862 () Int)

(assert (=> d!672601 (>= lt!843862 0)))

(declare-fun e!1455244 () Int)

(assert (=> d!672601 (= lt!843862 e!1455244)))

(declare-fun c!360709 () Bool)

(assert (=> d!672601 (= c!360709 ((_ is Nil!27012) input!1722))))

(assert (=> d!672601 (= (size!21208 input!1722) lt!843862)))

(declare-fun b!2272035 () Bool)

(assert (=> b!2272035 (= e!1455244 0)))

(declare-fun b!2272036 () Bool)

(assert (=> b!2272036 (= e!1455244 (+ 1 (size!21208 (t!202618 input!1722))))))

(assert (= (and d!672601 c!360709) b!2272035))

(assert (= (and d!672601 (not c!360709)) b!2272036))

(declare-fun m!2700625 () Bool)

(assert (=> b!2272036 m!2700625))

(assert (=> b!2271599 d!672601))

(assert (=> b!2271599 d!672395))

(declare-fun d!672603 () Bool)

(declare-fun lt!843863 () Int)

(assert (=> d!672603 (>= lt!843863 0)))

(declare-fun e!1455245 () Int)

(assert (=> d!672603 (= lt!843863 e!1455245)))

(declare-fun c!360710 () Bool)

(assert (=> d!672603 (= c!360710 (and ((_ is Cons!27013) (t!202619 rules!1750)) (= (h!32414 (t!202619 rules!1750)) r!2363)))))

(assert (=> d!672603 (contains!4671 (t!202619 rules!1750) r!2363)))

(assert (=> d!672603 (= (getIndex!320 (t!202619 rules!1750) r!2363) lt!843863)))

(declare-fun b!2272038 () Bool)

(declare-fun e!1455246 () Int)

(assert (=> b!2272038 (= e!1455245 e!1455246)))

(declare-fun c!360711 () Bool)

(assert (=> b!2272038 (= c!360711 (and ((_ is Cons!27013) (t!202619 rules!1750)) (not (= (h!32414 (t!202619 rules!1750)) r!2363))))))

(declare-fun b!2272039 () Bool)

(assert (=> b!2272039 (= e!1455246 (+ 1 (getIndex!320 (t!202619 (t!202619 rules!1750)) r!2363)))))

(declare-fun b!2272037 () Bool)

(assert (=> b!2272037 (= e!1455245 0)))

(declare-fun b!2272040 () Bool)

(assert (=> b!2272040 (= e!1455246 (- 1))))

(assert (= (and d!672603 c!360710) b!2272037))

(assert (= (and d!672603 (not c!360710)) b!2272038))

(assert (= (and b!2272038 c!360711) b!2272039))

(assert (= (and b!2272038 (not c!360711)) b!2272040))

(assert (=> d!672603 m!2700175))

(declare-fun m!2700627 () Bool)

(assert (=> b!2272039 m!2700627))

(assert (=> b!2271567 d!672603))

(declare-fun d!672605 () Bool)

(declare-fun charsToInt!0 (List!27105) (_ BitVec 32))

(assert (=> d!672605 (= (inv!16 (value!136569 (h!32415 tokens!456))) (= (charsToInt!0 (text!31730 (value!136569 (h!32415 tokens!456)))) (value!136560 (value!136569 (h!32415 tokens!456)))))))

(declare-fun bs!456073 () Bool)

(assert (= bs!456073 d!672605))

(declare-fun m!2700629 () Bool)

(assert (=> bs!456073 m!2700629))

(assert (=> b!2271548 d!672605))

(declare-fun bs!456074 () Bool)

(declare-fun d!672607 () Bool)

(assert (= bs!456074 (and d!672607 d!672523)))

(declare-fun lambda!85523 () Int)

(assert (=> bs!456074 (= (and (= (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (toChars!5932 (transformation!4307 otherR!12))) (= (toValue!6073 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (toValue!6073 (transformation!4307 otherR!12)))) (= lambda!85523 lambda!85516))))

(assert (=> d!672607 true))

(assert (=> d!672607 (< (dynLambda!11721 order!15075 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456))))) (dynLambda!11722 order!15077 lambda!85523))))

(assert (=> d!672607 true))

(assert (=> d!672607 (< (dynLambda!11719 order!15071 (toValue!6073 (transformation!4307 (rule!6625 (h!32415 tokens!456))))) (dynLambda!11722 order!15077 lambda!85523))))

(assert (=> d!672607 (= (semiInverseModEq!1736 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (toValue!6073 (transformation!4307 (rule!6625 (h!32415 tokens!456))))) (Forall!1079 lambda!85523))))

(declare-fun bs!456075 () Bool)

(assert (= bs!456075 d!672607))

(declare-fun m!2700631 () Bool)

(assert (=> bs!456075 m!2700631))

(assert (=> d!672381 d!672607))

(declare-fun bs!456077 () Bool)

(declare-fun d!672609 () Bool)

(assert (= bs!456077 (and d!672609 d!672523)))

(declare-fun lambda!85524 () Int)

(assert (=> bs!456077 (= (and (= (toChars!5932 (transformation!4307 r!2363)) (toChars!5932 (transformation!4307 otherR!12))) (= (toValue!6073 (transformation!4307 r!2363)) (toValue!6073 (transformation!4307 otherR!12)))) (= lambda!85524 lambda!85516))))

(declare-fun bs!456078 () Bool)

(assert (= bs!456078 (and d!672609 d!672607)))

(assert (=> bs!456078 (= (and (= (toChars!5932 (transformation!4307 r!2363)) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456))))) (= (toValue!6073 (transformation!4307 r!2363)) (toValue!6073 (transformation!4307 (rule!6625 (h!32415 tokens!456)))))) (= lambda!85524 lambda!85523))))

(assert (=> d!672609 true))

(assert (=> d!672609 (< (dynLambda!11721 order!15075 (toChars!5932 (transformation!4307 r!2363))) (dynLambda!11722 order!15077 lambda!85524))))

(assert (=> d!672609 true))

(assert (=> d!672609 (< (dynLambda!11719 order!15071 (toValue!6073 (transformation!4307 r!2363))) (dynLambda!11722 order!15077 lambda!85524))))

(assert (=> d!672609 (= (semiInverseModEq!1736 (toChars!5932 (transformation!4307 r!2363)) (toValue!6073 (transformation!4307 r!2363))) (Forall!1079 lambda!85524))))

(declare-fun bs!456079 () Bool)

(assert (= bs!456079 d!672609))

(declare-fun m!2700643 () Bool)

(assert (=> bs!456079 m!2700643))

(assert (=> d!672399 d!672609))

(assert (=> d!672367 d!672583))

(assert (=> d!672431 d!672429))

(declare-fun d!672615 () Bool)

(assert (=> d!672615 (ruleValid!1397 thiss!16613 otherR!12)))

(assert (=> d!672615 true))

(declare-fun _$65!1091 () Unit!39960)

(assert (=> d!672615 (= (choose!13268 thiss!16613 otherR!12 rules!1750) _$65!1091)))

(declare-fun bs!456081 () Bool)

(assert (= bs!456081 d!672615))

(assert (=> bs!456081 m!2700155))

(assert (=> d!672431 d!672615))

(assert (=> d!672431 d!672369))

(declare-fun bs!456086 () Bool)

(declare-fun d!672617 () Bool)

(assert (= bs!456086 (and d!672617 d!672447)))

(declare-fun lambda!85529 () Int)

(assert (=> bs!456086 (= lambda!85529 lambda!85507)))

(assert (=> d!672617 true))

(declare-fun lt!843866 () Bool)

(assert (=> d!672617 (= lt!843866 (rulesValidInductive!1505 thiss!16613 rules!1750))))

(assert (=> d!672617 (= lt!843866 (forall!5482 rules!1750 lambda!85529))))

(assert (=> d!672617 (= (rulesValid!1580 thiss!16613 rules!1750) lt!843866)))

(declare-fun bs!456087 () Bool)

(assert (= bs!456087 d!672617))

(assert (=> bs!456087 m!2700129))

(declare-fun m!2700649 () Bool)

(assert (=> bs!456087 m!2700649))

(assert (=> d!672437 d!672617))

(declare-fun b!2272063 () Bool)

(declare-fun e!1455261 () Bool)

(declare-fun lt!843867 () Bool)

(assert (=> b!2272063 (= e!1455261 (not lt!843867))))

(declare-fun d!672625 () Bool)

(declare-fun e!1455262 () Bool)

(assert (=> d!672625 e!1455262))

(declare-fun c!360725 () Bool)

(assert (=> d!672625 (= c!360725 ((_ is EmptyExpr!6655) (derivativeStep!1494 (regex!4307 r!2363) (head!4904 (list!10477 (charsOf!2695 (head!4902 tokens!456)))))))))

(declare-fun e!1455264 () Bool)

(assert (=> d!672625 (= lt!843867 e!1455264)))

(declare-fun c!360724 () Bool)

(assert (=> d!672625 (= c!360724 (isEmpty!15305 (tail!3277 (list!10477 (charsOf!2695 (head!4902 tokens!456))))))))

(assert (=> d!672625 (validRegex!2496 (derivativeStep!1494 (regex!4307 r!2363) (head!4904 (list!10477 (charsOf!2695 (head!4902 tokens!456))))))))

(assert (=> d!672625 (= (matchR!2912 (derivativeStep!1494 (regex!4307 r!2363) (head!4904 (list!10477 (charsOf!2695 (head!4902 tokens!456))))) (tail!3277 (list!10477 (charsOf!2695 (head!4902 tokens!456))))) lt!843867)))

(declare-fun b!2272064 () Bool)

(declare-fun e!1455258 () Bool)

(assert (=> b!2272064 (= e!1455258 (= (head!4904 (tail!3277 (list!10477 (charsOf!2695 (head!4902 tokens!456))))) (c!360603 (derivativeStep!1494 (regex!4307 r!2363) (head!4904 (list!10477 (charsOf!2695 (head!4902 tokens!456))))))))))

(declare-fun b!2272065 () Bool)

(declare-fun e!1455259 () Bool)

(declare-fun e!1455260 () Bool)

(assert (=> b!2272065 (= e!1455259 e!1455260)))

(declare-fun res!971188 () Bool)

(assert (=> b!2272065 (=> res!971188 e!1455260)))

(declare-fun call!136144 () Bool)

(assert (=> b!2272065 (= res!971188 call!136144)))

(declare-fun b!2272066 () Bool)

(assert (=> b!2272066 (= e!1455262 e!1455261)))

(declare-fun c!360723 () Bool)

(assert (=> b!2272066 (= c!360723 ((_ is EmptyLang!6655) (derivativeStep!1494 (regex!4307 r!2363) (head!4904 (list!10477 (charsOf!2695 (head!4902 tokens!456)))))))))

(declare-fun b!2272067 () Bool)

(assert (=> b!2272067 (= e!1455260 (not (= (head!4904 (tail!3277 (list!10477 (charsOf!2695 (head!4902 tokens!456))))) (c!360603 (derivativeStep!1494 (regex!4307 r!2363) (head!4904 (list!10477 (charsOf!2695 (head!4902 tokens!456)))))))))))

(declare-fun b!2272068 () Bool)

(declare-fun res!971190 () Bool)

(assert (=> b!2272068 (=> (not res!971190) (not e!1455258))))

(assert (=> b!2272068 (= res!971190 (isEmpty!15305 (tail!3277 (tail!3277 (list!10477 (charsOf!2695 (head!4902 tokens!456)))))))))

(declare-fun b!2272069 () Bool)

(assert (=> b!2272069 (= e!1455264 (nullable!1834 (derivativeStep!1494 (regex!4307 r!2363) (head!4904 (list!10477 (charsOf!2695 (head!4902 tokens!456)))))))))

(declare-fun b!2272070 () Bool)

(declare-fun e!1455263 () Bool)

(assert (=> b!2272070 (= e!1455263 e!1455259)))

(declare-fun res!971191 () Bool)

(assert (=> b!2272070 (=> (not res!971191) (not e!1455259))))

(assert (=> b!2272070 (= res!971191 (not lt!843867))))

(declare-fun b!2272071 () Bool)

(declare-fun res!971187 () Bool)

(assert (=> b!2272071 (=> (not res!971187) (not e!1455258))))

(assert (=> b!2272071 (= res!971187 (not call!136144))))

(declare-fun bm!136139 () Bool)

(assert (=> bm!136139 (= call!136144 (isEmpty!15305 (tail!3277 (list!10477 (charsOf!2695 (head!4902 tokens!456))))))))

(declare-fun b!2272072 () Bool)

(assert (=> b!2272072 (= e!1455264 (matchR!2912 (derivativeStep!1494 (derivativeStep!1494 (regex!4307 r!2363) (head!4904 (list!10477 (charsOf!2695 (head!4902 tokens!456))))) (head!4904 (tail!3277 (list!10477 (charsOf!2695 (head!4902 tokens!456)))))) (tail!3277 (tail!3277 (list!10477 (charsOf!2695 (head!4902 tokens!456)))))))))

(declare-fun b!2272073 () Bool)

(declare-fun res!971189 () Bool)

(assert (=> b!2272073 (=> res!971189 e!1455263)))

(assert (=> b!2272073 (= res!971189 e!1455258)))

(declare-fun res!971192 () Bool)

(assert (=> b!2272073 (=> (not res!971192) (not e!1455258))))

(assert (=> b!2272073 (= res!971192 lt!843867)))

(declare-fun b!2272074 () Bool)

(declare-fun res!971186 () Bool)

(assert (=> b!2272074 (=> res!971186 e!1455260)))

(assert (=> b!2272074 (= res!971186 (not (isEmpty!15305 (tail!3277 (tail!3277 (list!10477 (charsOf!2695 (head!4902 tokens!456))))))))))

(declare-fun b!2272075 () Bool)

(assert (=> b!2272075 (= e!1455262 (= lt!843867 call!136144))))

(declare-fun b!2272076 () Bool)

(declare-fun res!971193 () Bool)

(assert (=> b!2272076 (=> res!971193 e!1455263)))

(assert (=> b!2272076 (= res!971193 (not ((_ is ElementMatch!6655) (derivativeStep!1494 (regex!4307 r!2363) (head!4904 (list!10477 (charsOf!2695 (head!4902 tokens!456))))))))))

(assert (=> b!2272076 (= e!1455261 e!1455263)))

(assert (= (and d!672625 c!360724) b!2272069))

(assert (= (and d!672625 (not c!360724)) b!2272072))

(assert (= (and d!672625 c!360725) b!2272075))

(assert (= (and d!672625 (not c!360725)) b!2272066))

(assert (= (and b!2272066 c!360723) b!2272063))

(assert (= (and b!2272066 (not c!360723)) b!2272076))

(assert (= (and b!2272076 (not res!971193)) b!2272073))

(assert (= (and b!2272073 res!971192) b!2272071))

(assert (= (and b!2272071 res!971187) b!2272068))

(assert (= (and b!2272068 res!971190) b!2272064))

(assert (= (and b!2272073 (not res!971189)) b!2272070))

(assert (= (and b!2272070 res!971191) b!2272065))

(assert (= (and b!2272065 (not res!971188)) b!2272074))

(assert (= (and b!2272074 (not res!971186)) b!2272067))

(assert (= (or b!2272075 b!2272071 b!2272065) bm!136139))

(assert (=> b!2272072 m!2700437))

(declare-fun m!2700669 () Bool)

(assert (=> b!2272072 m!2700669))

(assert (=> b!2272072 m!2700435))

(assert (=> b!2272072 m!2700669))

(declare-fun m!2700671 () Bool)

(assert (=> b!2272072 m!2700671))

(assert (=> b!2272072 m!2700437))

(declare-fun m!2700673 () Bool)

(assert (=> b!2272072 m!2700673))

(assert (=> b!2272072 m!2700671))

(assert (=> b!2272072 m!2700673))

(declare-fun m!2700675 () Bool)

(assert (=> b!2272072 m!2700675))

(assert (=> b!2272064 m!2700437))

(assert (=> b!2272064 m!2700669))

(assert (=> bm!136139 m!2700437))

(assert (=> bm!136139 m!2700443))

(assert (=> b!2272068 m!2700437))

(assert (=> b!2272068 m!2700673))

(assert (=> b!2272068 m!2700673))

(declare-fun m!2700677 () Bool)

(assert (=> b!2272068 m!2700677))

(assert (=> d!672625 m!2700437))

(assert (=> d!672625 m!2700443))

(assert (=> d!672625 m!2700435))

(declare-fun m!2700679 () Bool)

(assert (=> d!672625 m!2700679))

(assert (=> b!2272067 m!2700437))

(assert (=> b!2272067 m!2700669))

(assert (=> b!2272069 m!2700435))

(declare-fun m!2700681 () Bool)

(assert (=> b!2272069 m!2700681))

(assert (=> b!2272074 m!2700437))

(assert (=> b!2272074 m!2700673))

(assert (=> b!2272074 m!2700673))

(assert (=> b!2272074 m!2700677))

(assert (=> b!2271811 d!672625))

(declare-fun b!2272130 () Bool)

(declare-fun e!1455301 () Regex!6655)

(declare-fun call!136162 () Regex!6655)

(declare-fun call!136165 () Regex!6655)

(assert (=> b!2272130 (= e!1455301 (Union!6655 call!136162 call!136165))))

(declare-fun b!2272131 () Bool)

(declare-fun e!1455304 () Regex!6655)

(declare-fun call!136164 () Regex!6655)

(assert (=> b!2272131 (= e!1455304 (Union!6655 (Concat!11125 call!136164 (regTwo!13822 (regex!4307 r!2363))) EmptyLang!6655))))

(declare-fun b!2272132 () Bool)

(declare-fun c!360744 () Bool)

(assert (=> b!2272132 (= c!360744 (nullable!1834 (regOne!13822 (regex!4307 r!2363))))))

(declare-fun e!1455300 () Regex!6655)

(assert (=> b!2272132 (= e!1455300 e!1455304)))

(declare-fun b!2272133 () Bool)

(declare-fun e!1455303 () Regex!6655)

(assert (=> b!2272133 (= e!1455303 EmptyLang!6655)))

(declare-fun d!672635 () Bool)

(declare-fun lt!843874 () Regex!6655)

(assert (=> d!672635 (validRegex!2496 lt!843874)))

(assert (=> d!672635 (= lt!843874 e!1455303)))

(declare-fun c!360745 () Bool)

(assert (=> d!672635 (= c!360745 (or ((_ is EmptyExpr!6655) (regex!4307 r!2363)) ((_ is EmptyLang!6655) (regex!4307 r!2363))))))

(assert (=> d!672635 (validRegex!2496 (regex!4307 r!2363))))

(assert (=> d!672635 (= (derivativeStep!1494 (regex!4307 r!2363) (head!4904 (list!10477 (charsOf!2695 (head!4902 tokens!456))))) lt!843874)))

(declare-fun b!2272134 () Bool)

(declare-fun c!360748 () Bool)

(assert (=> b!2272134 (= c!360748 ((_ is Union!6655) (regex!4307 r!2363)))))

(declare-fun e!1455302 () Regex!6655)

(assert (=> b!2272134 (= e!1455302 e!1455301)))

(declare-fun b!2272135 () Bool)

(assert (=> b!2272135 (= e!1455302 (ite (= (head!4904 (list!10477 (charsOf!2695 (head!4902 tokens!456)))) (c!360603 (regex!4307 r!2363))) EmptyExpr!6655 EmptyLang!6655))))

(declare-fun b!2272136 () Bool)

(declare-fun call!136163 () Regex!6655)

(assert (=> b!2272136 (= e!1455300 (Concat!11125 call!136163 (regex!4307 r!2363)))))

(declare-fun bm!136157 () Bool)

(assert (=> bm!136157 (= call!136163 call!136162)))

(declare-fun b!2272137 () Bool)

(assert (=> b!2272137 (= e!1455301 e!1455300)))

(declare-fun c!360747 () Bool)

(assert (=> b!2272137 (= c!360747 ((_ is Star!6655) (regex!4307 r!2363)))))

(declare-fun b!2272138 () Bool)

(assert (=> b!2272138 (= e!1455304 (Union!6655 (Concat!11125 call!136164 (regTwo!13822 (regex!4307 r!2363))) call!136165))))

(declare-fun bm!136158 () Bool)

(assert (=> bm!136158 (= call!136162 (derivativeStep!1494 (ite c!360748 (regOne!13823 (regex!4307 r!2363)) (ite c!360747 (reg!6984 (regex!4307 r!2363)) (regOne!13822 (regex!4307 r!2363)))) (head!4904 (list!10477 (charsOf!2695 (head!4902 tokens!456))))))))

(declare-fun bm!136159 () Bool)

(assert (=> bm!136159 (= call!136164 call!136163)))

(declare-fun bm!136160 () Bool)

(assert (=> bm!136160 (= call!136165 (derivativeStep!1494 (ite c!360748 (regTwo!13823 (regex!4307 r!2363)) (regTwo!13822 (regex!4307 r!2363))) (head!4904 (list!10477 (charsOf!2695 (head!4902 tokens!456))))))))

(declare-fun b!2272139 () Bool)

(assert (=> b!2272139 (= e!1455303 e!1455302)))

(declare-fun c!360746 () Bool)

(assert (=> b!2272139 (= c!360746 ((_ is ElementMatch!6655) (regex!4307 r!2363)))))

(assert (= (and d!672635 c!360745) b!2272133))

(assert (= (and d!672635 (not c!360745)) b!2272139))

(assert (= (and b!2272139 c!360746) b!2272135))

(assert (= (and b!2272139 (not c!360746)) b!2272134))

(assert (= (and b!2272134 c!360748) b!2272130))

(assert (= (and b!2272134 (not c!360748)) b!2272137))

(assert (= (and b!2272137 c!360747) b!2272136))

(assert (= (and b!2272137 (not c!360747)) b!2272132))

(assert (= (and b!2272132 c!360744) b!2272138))

(assert (= (and b!2272132 (not c!360744)) b!2272131))

(assert (= (or b!2272138 b!2272131) bm!136159))

(assert (= (or b!2272136 bm!136159) bm!136157))

(assert (= (or b!2272130 bm!136157) bm!136158))

(assert (= (or b!2272130 b!2272138) bm!136160))

(declare-fun m!2700697 () Bool)

(assert (=> b!2272132 m!2700697))

(declare-fun m!2700699 () Bool)

(assert (=> d!672635 m!2700699))

(assert (=> d!672635 m!2700181))

(assert (=> bm!136158 m!2700433))

(declare-fun m!2700701 () Bool)

(assert (=> bm!136158 m!2700701))

(assert (=> bm!136160 m!2700433))

(declare-fun m!2700703 () Bool)

(assert (=> bm!136160 m!2700703))

(assert (=> b!2271811 d!672635))

(declare-fun d!672649 () Bool)

(assert (=> d!672649 (= (head!4904 (list!10477 (charsOf!2695 (head!4902 tokens!456)))) (h!32413 (list!10477 (charsOf!2695 (head!4902 tokens!456)))))))

(assert (=> b!2271811 d!672649))

(assert (=> b!2271811 d!672533))

(declare-fun d!672651 () Bool)

(declare-fun lt!843875 () Int)

(assert (=> d!672651 (>= lt!843875 0)))

(declare-fun e!1455305 () Int)

(assert (=> d!672651 (= lt!843875 e!1455305)))

(declare-fun c!360749 () Bool)

(assert (=> d!672651 (= c!360749 ((_ is Nil!27012) (originalCharacters!5077 (h!32415 tokens!456))))))

(assert (=> d!672651 (= (size!21208 (originalCharacters!5077 (h!32415 tokens!456))) lt!843875)))

(declare-fun b!2272140 () Bool)

(assert (=> b!2272140 (= e!1455305 0)))

(declare-fun b!2272141 () Bool)

(assert (=> b!2272141 (= e!1455305 (+ 1 (size!21208 (t!202618 (originalCharacters!5077 (h!32415 tokens!456))))))))

(assert (= (and d!672651 c!360749) b!2272140))

(assert (= (and d!672651 (not c!360749)) b!2272141))

(declare-fun m!2700705 () Bool)

(assert (=> b!2272141 m!2700705))

(assert (=> b!2271586 d!672651))

(assert (=> b!2271813 d!672531))

(assert (=> b!2271813 d!672533))

(declare-fun d!672653 () Bool)

(declare-fun res!971218 () Bool)

(declare-fun e!1455313 () Bool)

(assert (=> d!672653 (=> res!971218 e!1455313)))

(assert (=> d!672653 (= res!971218 ((_ is Nil!27013) rules!1750))))

(assert (=> d!672653 (= (forall!5482 rules!1750 lambda!85507) e!1455313)))

(declare-fun b!2272149 () Bool)

(declare-fun e!1455314 () Bool)

(assert (=> b!2272149 (= e!1455313 e!1455314)))

(declare-fun res!971219 () Bool)

(assert (=> b!2272149 (=> (not res!971219) (not e!1455314))))

(declare-fun dynLambda!11724 (Int Rule!8414) Bool)

(assert (=> b!2272149 (= res!971219 (dynLambda!11724 lambda!85507 (h!32414 rules!1750)))))

(declare-fun b!2272150 () Bool)

(assert (=> b!2272150 (= e!1455314 (forall!5482 (t!202619 rules!1750) lambda!85507))))

(assert (= (and d!672653 (not res!971218)) b!2272149))

(assert (= (and b!2272149 res!971219) b!2272150))

(declare-fun b_lambda!72393 () Bool)

(assert (=> (not b_lambda!72393) (not b!2272149)))

(declare-fun m!2700713 () Bool)

(assert (=> b!2272149 m!2700713))

(declare-fun m!2700715 () Bool)

(assert (=> b!2272150 m!2700715))

(assert (=> d!672447 d!672653))

(declare-fun d!672657 () Bool)

(declare-fun lt!843879 () Int)

(assert (=> d!672657 (>= lt!843879 0)))

(declare-fun e!1455315 () Int)

(assert (=> d!672657 (= lt!843879 e!1455315)))

(declare-fun c!360751 () Bool)

(assert (=> d!672657 (= c!360751 ((_ is Nil!27012) (list!10477 (charsOf!2695 (head!4902 tokens!456)))))))

(assert (=> d!672657 (= (size!21208 (list!10477 (charsOf!2695 (head!4902 tokens!456)))) lt!843879)))

(declare-fun b!2272151 () Bool)

(assert (=> b!2272151 (= e!1455315 0)))

(declare-fun b!2272152 () Bool)

(assert (=> b!2272152 (= e!1455315 (+ 1 (size!21208 (t!202618 (list!10477 (charsOf!2695 (head!4902 tokens!456)))))))))

(assert (= (and d!672657 c!360751) b!2272151))

(assert (= (and d!672657 (not c!360751)) b!2272152))

(declare-fun m!2700717 () Bool)

(assert (=> b!2272152 m!2700717))

(assert (=> d!672383 d!672657))

(assert (=> d!672383 d!672493))

(declare-fun d!672659 () Bool)

(declare-fun lt!843885 () Int)

(assert (=> d!672659 (= lt!843885 (size!21208 (list!10482 (c!360602 (charsOf!2695 (head!4902 tokens!456))))))))

(assert (=> d!672659 (= lt!843885 (ite ((_ is Empty!8762) (c!360602 (charsOf!2695 (head!4902 tokens!456)))) 0 (ite ((_ is Leaf!12901) (c!360602 (charsOf!2695 (head!4902 tokens!456)))) (csize!17755 (c!360602 (charsOf!2695 (head!4902 tokens!456)))) (csize!17754 (c!360602 (charsOf!2695 (head!4902 tokens!456)))))))))

(assert (=> d!672659 (= (size!21210 (c!360602 (charsOf!2695 (head!4902 tokens!456)))) lt!843885)))

(declare-fun bs!456097 () Bool)

(assert (= bs!456097 d!672659))

(assert (=> bs!456097 m!2700445))

(assert (=> bs!456097 m!2700445))

(declare-fun m!2700723 () Bool)

(assert (=> bs!456097 m!2700723))

(assert (=> d!672383 d!672659))

(declare-fun bs!456101 () Bool)

(declare-fun d!672663 () Bool)

(assert (= bs!456101 (and d!672663 d!672521)))

(declare-fun lambda!85533 () Int)

(assert (=> bs!456101 (= (= (toValue!6073 (transformation!4307 otherR!12)) (toValue!6073 (transformation!4307 r!2363))) (= lambda!85533 lambda!85513))))

(assert (=> d!672663 true))

(assert (=> d!672663 (< (dynLambda!11719 order!15071 (toValue!6073 (transformation!4307 otherR!12))) (dynLambda!11720 order!15073 lambda!85533))))

(assert (=> d!672663 (= (equivClasses!1655 (toChars!5932 (transformation!4307 otherR!12)) (toValue!6073 (transformation!4307 otherR!12))) (Forall2!695 lambda!85533))))

(declare-fun bs!456102 () Bool)

(assert (= bs!456102 d!672663))

(declare-fun m!2700727 () Bool)

(assert (=> bs!456102 m!2700727))

(assert (=> b!2271457 d!672663))

(declare-fun bs!456103 () Bool)

(declare-fun d!672667 () Bool)

(assert (= bs!456103 (and d!672667 d!672521)))

(declare-fun lambda!85534 () Int)

(assert (=> bs!456103 (= (= (toValue!6073 (transformation!4307 (h!32414 rules!1750))) (toValue!6073 (transformation!4307 r!2363))) (= lambda!85534 lambda!85513))))

(declare-fun bs!456104 () Bool)

(assert (= bs!456104 (and d!672667 d!672663)))

(assert (=> bs!456104 (= (= (toValue!6073 (transformation!4307 (h!32414 rules!1750))) (toValue!6073 (transformation!4307 otherR!12))) (= lambda!85534 lambda!85533))))

(assert (=> d!672667 true))

(assert (=> d!672667 (< (dynLambda!11719 order!15071 (toValue!6073 (transformation!4307 (h!32414 rules!1750)))) (dynLambda!11720 order!15073 lambda!85534))))

(assert (=> d!672667 (= (equivClasses!1655 (toChars!5932 (transformation!4307 (h!32414 rules!1750))) (toValue!6073 (transformation!4307 (h!32414 rules!1750)))) (Forall2!695 lambda!85534))))

(declare-fun bs!456105 () Bool)

(assert (= bs!456105 d!672667))

(declare-fun m!2700743 () Bool)

(assert (=> bs!456105 m!2700743))

(assert (=> b!2271522 d!672667))

(assert (=> b!2271806 d!672649))

(declare-fun d!672675 () Bool)

(declare-fun lt!843890 () Bool)

(assert (=> d!672675 (= lt!843890 (isEmpty!15302 (list!10478 (_1!15852 lt!843802))))))

(declare-fun isEmpty!15308 (Conc!8763) Bool)

(assert (=> d!672675 (= lt!843890 (isEmpty!15308 (c!360604 (_1!15852 lt!843802))))))

(assert (=> d!672675 (= (isEmpty!15306 (_1!15852 lt!843802)) lt!843890)))

(declare-fun bs!456114 () Bool)

(assert (= bs!456114 d!672675))

(assert (=> bs!456114 m!2700317))

(assert (=> bs!456114 m!2700317))

(declare-fun m!2700755 () Bool)

(assert (=> bs!456114 m!2700755))

(declare-fun m!2700757 () Bool)

(assert (=> bs!456114 m!2700757))

(assert (=> b!2271614 d!672675))

(declare-fun d!672685 () Bool)

(declare-fun e!1455326 () Bool)

(assert (=> d!672685 e!1455326))

(declare-fun res!971229 () Bool)

(assert (=> d!672685 (=> (not res!971229) (not e!1455326))))

(declare-fun lt!843893 () BalanceConc!17252)

(assert (=> d!672685 (= res!971229 (= (list!10477 lt!843893) input!1722))))

(declare-fun fromList!526 (List!27106) Conc!8762)

(assert (=> d!672685 (= lt!843893 (BalanceConc!17253 (fromList!526 input!1722)))))

(assert (=> d!672685 (= (fromListB!1346 input!1722) lt!843893)))

(declare-fun b!2272166 () Bool)

(assert (=> b!2272166 (= e!1455326 (isBalanced!2668 (fromList!526 input!1722)))))

(assert (= (and d!672685 res!971229) b!2272166))

(declare-fun m!2700773 () Bool)

(assert (=> d!672685 m!2700773))

(declare-fun m!2700775 () Bool)

(assert (=> d!672685 m!2700775))

(assert (=> b!2272166 m!2700775))

(assert (=> b!2272166 m!2700775))

(declare-fun m!2700777 () Bool)

(assert (=> b!2272166 m!2700777))

(assert (=> d!672445 d!672685))

(declare-fun d!672697 () Bool)

(declare-fun nullableFct!439 (Regex!6655) Bool)

(assert (=> d!672697 (= (nullable!1834 (regex!4307 r!2363)) (nullableFct!439 (regex!4307 r!2363)))))

(declare-fun bs!456120 () Bool)

(assert (= bs!456120 d!672697))

(declare-fun m!2700783 () Bool)

(assert (=> bs!456120 m!2700783))

(assert (=> b!2271808 d!672697))

(declare-fun d!672701 () Bool)

(declare-fun lt!843897 () Int)

(assert (=> d!672701 (>= lt!843897 0)))

(declare-fun e!1455327 () Int)

(assert (=> d!672701 (= lt!843897 e!1455327)))

(declare-fun c!360755 () Bool)

(assert (=> d!672701 (= c!360755 (and ((_ is Cons!27013) (t!202619 rules!1750)) (= (h!32414 (t!202619 rules!1750)) otherR!12)))))

(assert (=> d!672701 (contains!4671 (t!202619 rules!1750) otherR!12)))

(assert (=> d!672701 (= (getIndex!320 (t!202619 rules!1750) otherR!12) lt!843897)))

(declare-fun b!2272168 () Bool)

(declare-fun e!1455328 () Int)

(assert (=> b!2272168 (= e!1455327 e!1455328)))

(declare-fun c!360756 () Bool)

(assert (=> b!2272168 (= c!360756 (and ((_ is Cons!27013) (t!202619 rules!1750)) (not (= (h!32414 (t!202619 rules!1750)) otherR!12))))))

(declare-fun b!2272169 () Bool)

(assert (=> b!2272169 (= e!1455328 (+ 1 (getIndex!320 (t!202619 (t!202619 rules!1750)) otherR!12)))))

(declare-fun b!2272167 () Bool)

(assert (=> b!2272167 (= e!1455327 0)))

(declare-fun b!2272170 () Bool)

(assert (=> b!2272170 (= e!1455328 (- 1))))

(assert (= (and d!672701 c!360755) b!2272167))

(assert (= (and d!672701 (not c!360755)) b!2272168))

(assert (= (and b!2272168 c!360756) b!2272169))

(assert (= (and b!2272168 (not c!360756)) b!2272170))

(assert (=> d!672701 m!2700179))

(declare-fun m!2700785 () Bool)

(assert (=> b!2272169 m!2700785))

(assert (=> b!2271572 d!672701))

(declare-fun d!672703 () Bool)

(assert (=> d!672703 (= (list!10477 (_2!15852 lt!843802)) (list!10482 (c!360602 (_2!15852 lt!843802))))))

(declare-fun bs!456121 () Bool)

(assert (= bs!456121 d!672703))

(declare-fun m!2700787 () Bool)

(assert (=> bs!456121 m!2700787))

(assert (=> b!2271616 d!672703))

(assert (=> b!2271616 d!672543))

(assert (=> b!2271616 d!672559))

(declare-fun d!672705 () Bool)

(declare-fun c!360761 () Bool)

(assert (=> d!672705 (= c!360761 ((_ is Empty!8763) (c!360604 (_1!15852 lt!843764))))))

(declare-fun e!1455333 () List!27108)

(assert (=> d!672705 (= (list!10481 (c!360604 (_1!15852 lt!843764))) e!1455333)))

(declare-fun b!2272181 () Bool)

(declare-fun e!1455334 () List!27108)

(declare-fun list!10486 (IArray!17531) List!27108)

(assert (=> b!2272181 (= e!1455334 (list!10486 (xs!11705 (c!360604 (_1!15852 lt!843764)))))))

(declare-fun b!2272179 () Bool)

(assert (=> b!2272179 (= e!1455333 Nil!27014)))

(declare-fun b!2272180 () Bool)

(assert (=> b!2272180 (= e!1455333 e!1455334)))

(declare-fun c!360762 () Bool)

(assert (=> b!2272180 (= c!360762 ((_ is Leaf!12902) (c!360604 (_1!15852 lt!843764))))))

(declare-fun b!2272182 () Bool)

(declare-fun ++!6589 (List!27108 List!27108) List!27108)

(assert (=> b!2272182 (= e!1455334 (++!6589 (list!10481 (left!20497 (c!360604 (_1!15852 lt!843764)))) (list!10481 (right!20827 (c!360604 (_1!15852 lt!843764))))))))

(assert (= (and d!672705 c!360761) b!2272179))

(assert (= (and d!672705 (not c!360761)) b!2272180))

(assert (= (and b!2272180 c!360762) b!2272181))

(assert (= (and b!2272180 (not c!360762)) b!2272182))

(declare-fun m!2700789 () Bool)

(assert (=> b!2272181 m!2700789))

(declare-fun m!2700791 () Bool)

(assert (=> b!2272182 m!2700791))

(declare-fun m!2700793 () Bool)

(assert (=> b!2272182 m!2700793))

(assert (=> b!2272182 m!2700791))

(assert (=> b!2272182 m!2700793))

(declare-fun m!2700795 () Bool)

(assert (=> b!2272182 m!2700795))

(assert (=> d!672439 d!672705))

(declare-fun bs!456122 () Bool)

(declare-fun d!672707 () Bool)

(assert (= bs!456122 (and d!672707 d!672447)))

(declare-fun lambda!85537 () Int)

(assert (=> bs!456122 (= lambda!85537 lambda!85507)))

(declare-fun bs!456123 () Bool)

(assert (= bs!456123 (and d!672707 d!672617)))

(assert (=> bs!456123 (= lambda!85537 lambda!85529)))

(assert (=> d!672707 true))

(declare-fun lt!843898 () Bool)

(assert (=> d!672707 (= lt!843898 (forall!5482 (t!202619 rules!1750) lambda!85537))))

(declare-fun e!1455335 () Bool)

(assert (=> d!672707 (= lt!843898 e!1455335)))

(declare-fun res!971231 () Bool)

(assert (=> d!672707 (=> res!971231 e!1455335)))

(assert (=> d!672707 (= res!971231 (not ((_ is Cons!27013) (t!202619 rules!1750))))))

(assert (=> d!672707 (= (rulesValidInductive!1505 thiss!16613 (t!202619 rules!1750)) lt!843898)))

(declare-fun b!2272183 () Bool)

(declare-fun e!1455336 () Bool)

(assert (=> b!2272183 (= e!1455335 e!1455336)))

(declare-fun res!971230 () Bool)

(assert (=> b!2272183 (=> (not res!971230) (not e!1455336))))

(assert (=> b!2272183 (= res!971230 (ruleValid!1397 thiss!16613 (h!32414 (t!202619 rules!1750))))))

(declare-fun b!2272184 () Bool)

(assert (=> b!2272184 (= e!1455336 (rulesValidInductive!1505 thiss!16613 (t!202619 (t!202619 rules!1750))))))

(assert (= (and d!672707 (not res!971231)) b!2272183))

(assert (= (and b!2272183 res!971230) b!2272184))

(declare-fun m!2700797 () Bool)

(assert (=> d!672707 m!2700797))

(declare-fun m!2700799 () Bool)

(assert (=> b!2272183 m!2700799))

(declare-fun m!2700801 () Bool)

(assert (=> b!2272184 m!2700801))

(assert (=> b!2271771 d!672707))

(declare-fun d!672709 () Bool)

(declare-fun c!360763 () Bool)

(assert (=> d!672709 (= c!360763 ((_ is Node!8762) (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))) (value!136569 (head!4902 tokens!456))))))))

(declare-fun e!1455337 () Bool)

(assert (=> d!672709 (= (inv!36578 (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))) (value!136569 (head!4902 tokens!456))))) e!1455337)))

(declare-fun b!2272185 () Bool)

(assert (=> b!2272185 (= e!1455337 (inv!36582 (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))) (value!136569 (head!4902 tokens!456))))))))

(declare-fun b!2272186 () Bool)

(declare-fun e!1455338 () Bool)

(assert (=> b!2272186 (= e!1455337 e!1455338)))

(declare-fun res!971232 () Bool)

(assert (=> b!2272186 (= res!971232 (not ((_ is Leaf!12901) (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))) (value!136569 (head!4902 tokens!456)))))))))

(assert (=> b!2272186 (=> res!971232 e!1455338)))

(declare-fun b!2272187 () Bool)

(assert (=> b!2272187 (= e!1455338 (inv!36583 (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))) (value!136569 (head!4902 tokens!456))))))))

(assert (= (and d!672709 c!360763) b!2272185))

(assert (= (and d!672709 (not c!360763)) b!2272186))

(assert (= (and b!2272186 (not res!971232)) b!2272187))

(declare-fun m!2700803 () Bool)

(assert (=> b!2272185 m!2700803))

(declare-fun m!2700805 () Bool)

(assert (=> b!2272187 m!2700805))

(assert (=> b!2271486 d!672709))

(declare-fun b!2272188 () Bool)

(declare-fun res!971237 () Bool)

(declare-fun e!1455340 () Bool)

(assert (=> b!2272188 (=> res!971237 e!1455340)))

(assert (=> b!2272188 (= res!971237 (not ((_ is Concat!11125) (regex!4307 otherR!12))))))

(declare-fun e!1455343 () Bool)

(assert (=> b!2272188 (= e!1455343 e!1455340)))

(declare-fun b!2272189 () Bool)

(declare-fun e!1455341 () Bool)

(declare-fun e!1455344 () Bool)

(assert (=> b!2272189 (= e!1455341 e!1455344)))

(declare-fun c!360765 () Bool)

(assert (=> b!2272189 (= c!360765 ((_ is Star!6655) (regex!4307 otherR!12)))))

(declare-fun call!136166 () Bool)

(declare-fun bm!136161 () Bool)

(declare-fun c!360764 () Bool)

(assert (=> bm!136161 (= call!136166 (validRegex!2496 (ite c!360765 (reg!6984 (regex!4307 otherR!12)) (ite c!360764 (regOne!13823 (regex!4307 otherR!12)) (regTwo!13822 (regex!4307 otherR!12))))))))

(declare-fun b!2272190 () Bool)

(declare-fun res!971236 () Bool)

(declare-fun e!1455339 () Bool)

(assert (=> b!2272190 (=> (not res!971236) (not e!1455339))))

(declare-fun call!136168 () Bool)

(assert (=> b!2272190 (= res!971236 call!136168)))

(assert (=> b!2272190 (= e!1455343 e!1455339)))

(declare-fun b!2272191 () Bool)

(declare-fun call!136167 () Bool)

(assert (=> b!2272191 (= e!1455339 call!136167)))

(declare-fun b!2272192 () Bool)

(declare-fun e!1455342 () Bool)

(assert (=> b!2272192 (= e!1455344 e!1455342)))

(declare-fun res!971235 () Bool)

(assert (=> b!2272192 (= res!971235 (not (nullable!1834 (reg!6984 (regex!4307 otherR!12)))))))

(assert (=> b!2272192 (=> (not res!971235) (not e!1455342))))

(declare-fun b!2272193 () Bool)

(declare-fun e!1455345 () Bool)

(assert (=> b!2272193 (= e!1455345 call!136168)))

(declare-fun b!2272194 () Bool)

(assert (=> b!2272194 (= e!1455342 call!136166)))

(declare-fun b!2272195 () Bool)

(assert (=> b!2272195 (= e!1455344 e!1455343)))

(assert (=> b!2272195 (= c!360764 ((_ is Union!6655) (regex!4307 otherR!12)))))

(declare-fun b!2272196 () Bool)

(assert (=> b!2272196 (= e!1455340 e!1455345)))

(declare-fun res!971233 () Bool)

(assert (=> b!2272196 (=> (not res!971233) (not e!1455345))))

(assert (=> b!2272196 (= res!971233 call!136167)))

(declare-fun bm!136163 () Bool)

(assert (=> bm!136163 (= call!136168 call!136166)))

(declare-fun bm!136162 () Bool)

(assert (=> bm!136162 (= call!136167 (validRegex!2496 (ite c!360764 (regTwo!13823 (regex!4307 otherR!12)) (regOne!13822 (regex!4307 otherR!12)))))))

(declare-fun d!672711 () Bool)

(declare-fun res!971234 () Bool)

(assert (=> d!672711 (=> res!971234 e!1455341)))

(assert (=> d!672711 (= res!971234 ((_ is ElementMatch!6655) (regex!4307 otherR!12)))))

(assert (=> d!672711 (= (validRegex!2496 (regex!4307 otherR!12)) e!1455341)))

(assert (= (and d!672711 (not res!971234)) b!2272189))

(assert (= (and b!2272189 c!360765) b!2272192))

(assert (= (and b!2272189 (not c!360765)) b!2272195))

(assert (= (and b!2272192 res!971235) b!2272194))

(assert (= (and b!2272195 c!360764) b!2272190))

(assert (= (and b!2272195 (not c!360764)) b!2272188))

(assert (= (and b!2272190 res!971236) b!2272191))

(assert (= (and b!2272188 (not res!971237)) b!2272196))

(assert (= (and b!2272196 res!971233) b!2272193))

(assert (= (or b!2272190 b!2272193) bm!136163))

(assert (= (or b!2272191 b!2272196) bm!136162))

(assert (= (or b!2272194 bm!136163) bm!136161))

(declare-fun m!2700807 () Bool)

(assert (=> bm!136161 m!2700807))

(declare-fun m!2700809 () Bool)

(assert (=> b!2272192 m!2700809))

(declare-fun m!2700811 () Bool)

(assert (=> bm!136162 m!2700811))

(assert (=> d!672429 d!672711))

(declare-fun d!672713 () Bool)

(declare-fun c!360767 () Bool)

(assert (=> d!672713 (= c!360767 ((_ is IntegerValue!13407) (value!136569 (h!32415 (t!202620 tokens!456)))))))

(declare-fun e!1455346 () Bool)

(assert (=> d!672713 (= (inv!21 (value!136569 (h!32415 (t!202620 tokens!456)))) e!1455346)))

(declare-fun b!2272197 () Bool)

(declare-fun e!1455348 () Bool)

(assert (=> b!2272197 (= e!1455348 (inv!15 (value!136569 (h!32415 (t!202620 tokens!456)))))))

(declare-fun b!2272198 () Bool)

(assert (=> b!2272198 (= e!1455346 (inv!16 (value!136569 (h!32415 (t!202620 tokens!456)))))))

(declare-fun b!2272199 () Bool)

(declare-fun e!1455347 () Bool)

(assert (=> b!2272199 (= e!1455347 (inv!17 (value!136569 (h!32415 (t!202620 tokens!456)))))))

(declare-fun b!2272200 () Bool)

(assert (=> b!2272200 (= e!1455346 e!1455347)))

(declare-fun c!360766 () Bool)

(assert (=> b!2272200 (= c!360766 ((_ is IntegerValue!13408) (value!136569 (h!32415 (t!202620 tokens!456)))))))

(declare-fun b!2272201 () Bool)

(declare-fun res!971238 () Bool)

(assert (=> b!2272201 (=> res!971238 e!1455348)))

(assert (=> b!2272201 (= res!971238 (not ((_ is IntegerValue!13409) (value!136569 (h!32415 (t!202620 tokens!456))))))))

(assert (=> b!2272201 (= e!1455347 e!1455348)))

(assert (= (and d!672713 c!360767) b!2272198))

(assert (= (and d!672713 (not c!360767)) b!2272200))

(assert (= (and b!2272200 c!360766) b!2272199))

(assert (= (and b!2272200 (not c!360766)) b!2272201))

(assert (= (and b!2272201 (not res!971238)) b!2272197))

(declare-fun m!2700813 () Bool)

(assert (=> b!2272197 m!2700813))

(declare-fun m!2700815 () Bool)

(assert (=> b!2272198 m!2700815))

(declare-fun m!2700817 () Bool)

(assert (=> b!2272199 m!2700817))

(assert (=> b!2271871 d!672713))

(declare-fun bs!456124 () Bool)

(declare-fun d!672715 () Bool)

(assert (= bs!456124 (and d!672715 d!672521)))

(declare-fun lambda!85538 () Int)

(assert (=> bs!456124 (= (= (toValue!6073 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (toValue!6073 (transformation!4307 r!2363))) (= lambda!85538 lambda!85513))))

(declare-fun bs!456125 () Bool)

(assert (= bs!456125 (and d!672715 d!672663)))

(assert (=> bs!456125 (= (= (toValue!6073 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (toValue!6073 (transformation!4307 otherR!12))) (= lambda!85538 lambda!85533))))

(declare-fun bs!456126 () Bool)

(assert (= bs!456126 (and d!672715 d!672667)))

(assert (=> bs!456126 (= (= (toValue!6073 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (toValue!6073 (transformation!4307 (h!32414 rules!1750)))) (= lambda!85538 lambda!85534))))

(assert (=> d!672715 true))

(assert (=> d!672715 (< (dynLambda!11719 order!15071 (toValue!6073 (transformation!4307 (rule!6625 (h!32415 tokens!456))))) (dynLambda!11720 order!15073 lambda!85538))))

(assert (=> d!672715 (= (equivClasses!1655 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (toValue!6073 (transformation!4307 (rule!6625 (h!32415 tokens!456))))) (Forall2!695 lambda!85538))))

(declare-fun bs!456127 () Bool)

(assert (= bs!456127 d!672715))

(declare-fun m!2700819 () Bool)

(assert (=> bs!456127 m!2700819))

(assert (=> b!2271478 d!672715))

(assert (=> b!2271803 d!672649))

(declare-fun bs!456128 () Bool)

(declare-fun d!672717 () Bool)

(assert (= bs!456128 (and d!672717 d!672523)))

(declare-fun lambda!85539 () Int)

(assert (=> bs!456128 (= (and (= (toChars!5932 (transformation!4307 (h!32414 rules!1750))) (toChars!5932 (transformation!4307 otherR!12))) (= (toValue!6073 (transformation!4307 (h!32414 rules!1750))) (toValue!6073 (transformation!4307 otherR!12)))) (= lambda!85539 lambda!85516))))

(declare-fun bs!456129 () Bool)

(assert (= bs!456129 (and d!672717 d!672607)))

(assert (=> bs!456129 (= (and (= (toChars!5932 (transformation!4307 (h!32414 rules!1750))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456))))) (= (toValue!6073 (transformation!4307 (h!32414 rules!1750))) (toValue!6073 (transformation!4307 (rule!6625 (h!32415 tokens!456)))))) (= lambda!85539 lambda!85523))))

(declare-fun bs!456130 () Bool)

(assert (= bs!456130 (and d!672717 d!672609)))

(assert (=> bs!456130 (= (and (= (toChars!5932 (transformation!4307 (h!32414 rules!1750))) (toChars!5932 (transformation!4307 r!2363))) (= (toValue!6073 (transformation!4307 (h!32414 rules!1750))) (toValue!6073 (transformation!4307 r!2363)))) (= lambda!85539 lambda!85524))))

(assert (=> d!672717 true))

(assert (=> d!672717 (< (dynLambda!11721 order!15075 (toChars!5932 (transformation!4307 (h!32414 rules!1750)))) (dynLambda!11722 order!15077 lambda!85539))))

(assert (=> d!672717 true))

(assert (=> d!672717 (< (dynLambda!11719 order!15071 (toValue!6073 (transformation!4307 (h!32414 rules!1750)))) (dynLambda!11722 order!15077 lambda!85539))))

(assert (=> d!672717 (= (semiInverseModEq!1736 (toChars!5932 (transformation!4307 (h!32414 rules!1750))) (toValue!6073 (transformation!4307 (h!32414 rules!1750)))) (Forall!1079 lambda!85539))))

(declare-fun bs!456131 () Bool)

(assert (= bs!456131 d!672717))

(declare-fun m!2700821 () Bool)

(assert (=> bs!456131 m!2700821))

(assert (=> d!672405 d!672717))

(declare-fun d!672719 () Bool)

(declare-fun lt!843901 () Int)

(assert (=> d!672719 (= lt!843901 (size!21214 (list!10478 (_1!15852 lt!843802))))))

(declare-fun size!21216 (Conc!8763) Int)

(assert (=> d!672719 (= lt!843901 (size!21216 (c!360604 (_1!15852 lt!843802))))))

(assert (=> d!672719 (= (size!21212 (_1!15852 lt!843802)) lt!843901)))

(declare-fun bs!456132 () Bool)

(assert (= bs!456132 d!672719))

(assert (=> bs!456132 m!2700317))

(assert (=> bs!456132 m!2700317))

(declare-fun m!2700823 () Bool)

(assert (=> bs!456132 m!2700823))

(declare-fun m!2700825 () Bool)

(assert (=> bs!456132 m!2700825))

(assert (=> d!672443 d!672719))

(declare-fun b!2272262 () Bool)

(declare-fun e!1455394 () tuple2!26684)

(assert (=> b!2272262 (= e!1455394 (tuple2!26685 (BalanceConc!17255 Empty!8763) (seqFromList!3011 input!1722)))))

(declare-datatypes ((tuple2!26694 0))(
  ( (tuple2!26695 (_1!15857 Token!8092) (_2!15857 BalanceConc!17252)) )
))
(declare-datatypes ((Option!5289 0))(
  ( (None!5288) (Some!5288 (v!30338 tuple2!26694)) )
))
(declare-fun lt!844103 () Option!5289)

(declare-fun b!2272263 () Bool)

(declare-fun lt!844077 () tuple2!26684)

(declare-fun lexRec!529 (LexerInterface!3904 List!27107 BalanceConc!17252) tuple2!26684)

(assert (=> b!2272263 (= lt!844077 (lexRec!529 thiss!16613 rules!1750 (_2!15857 (v!30338 lt!844103))))))

(declare-fun prepend!999 (BalanceConc!17254 Token!8092) BalanceConc!17254)

(assert (=> b!2272263 (= e!1455394 (tuple2!26685 (prepend!999 (_1!15852 lt!844077) (_1!15857 (v!30338 lt!844103))) (_2!15852 lt!844077)))))

(declare-fun b!2272264 () Bool)

(declare-fun lt!844093 () Option!5289)

(declare-fun lt!844099 () tuple2!26684)

(assert (=> b!2272264 (= lt!844099 (lexRec!529 thiss!16613 rules!1750 (_2!15857 (v!30338 lt!844093))))))

(declare-fun e!1455392 () tuple2!26684)

(assert (=> b!2272264 (= e!1455392 (tuple2!26685 (prepend!999 (_1!15852 lt!844099) (_1!15857 (v!30338 lt!844093))) (_2!15852 lt!844099)))))

(declare-fun b!2272265 () Bool)

(declare-fun e!1455393 () tuple2!26684)

(assert (=> b!2272265 (= e!1455393 (tuple2!26685 (BalanceConc!17255 Empty!8763) (seqFromList!3011 input!1722)))))

(declare-fun d!672721 () Bool)

(declare-fun e!1455391 () Bool)

(assert (=> d!672721 e!1455391))

(declare-fun res!971263 () Bool)

(assert (=> d!672721 (=> (not res!971263) (not e!1455391))))

(declare-fun lt!844083 () tuple2!26684)

(assert (=> d!672721 (= res!971263 (= (list!10478 (_1!15852 lt!844083)) (list!10478 (_1!15852 (lexRec!529 thiss!16613 rules!1750 (seqFromList!3011 input!1722))))))))

(assert (=> d!672721 (= lt!844083 e!1455393)))

(declare-fun c!360788 () Bool)

(declare-fun lt!844104 () Option!5289)

(assert (=> d!672721 (= c!360788 ((_ is Some!5288) lt!844104))))

(declare-fun maxPrefixZipperSequenceV2!399 (LexerInterface!3904 List!27107 BalanceConc!17252 BalanceConc!17252) Option!5289)

(assert (=> d!672721 (= lt!844104 (maxPrefixZipperSequenceV2!399 thiss!16613 rules!1750 (seqFromList!3011 input!1722) (seqFromList!3011 input!1722)))))

(declare-fun lt!844084 () Unit!39960)

(declare-fun lt!844081 () Unit!39960)

(assert (=> d!672721 (= lt!844084 lt!844081)))

(declare-fun lt!844101 () List!27106)

(declare-fun lt!844078 () List!27106)

(declare-fun isSuffix!765 (List!27106 List!27106) Bool)

(assert (=> d!672721 (isSuffix!765 lt!844101 (++!6586 lt!844078 lt!844101))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!459 (List!27106 List!27106) Unit!39960)

(assert (=> d!672721 (= lt!844081 (lemmaConcatTwoListThenFSndIsSuffix!459 lt!844078 lt!844101))))

(assert (=> d!672721 (= lt!844101 (list!10477 (seqFromList!3011 input!1722)))))

(assert (=> d!672721 (= lt!844078 (list!10477 (BalanceConc!17253 Empty!8762)))))

(assert (=> d!672721 (= (lexTailRecV2!755 thiss!16613 rules!1750 (seqFromList!3011 input!1722) (BalanceConc!17253 Empty!8762) (seqFromList!3011 input!1722) (BalanceConc!17255 Empty!8763)) lt!844083)))

(declare-fun lt!844089 () BalanceConc!17252)

(declare-fun b!2272266 () Bool)

(declare-fun append!692 (BalanceConc!17254 Token!8092) BalanceConc!17254)

(assert (=> b!2272266 (= e!1455393 (lexTailRecV2!755 thiss!16613 rules!1750 (seqFromList!3011 input!1722) lt!844089 (_2!15857 (v!30338 lt!844104)) (append!692 (BalanceConc!17255 Empty!8763) (_1!15857 (v!30338 lt!844104)))))))

(declare-fun lt!844090 () tuple2!26684)

(assert (=> b!2272266 (= lt!844090 (lexRec!529 thiss!16613 rules!1750 (_2!15857 (v!30338 lt!844104))))))

(declare-fun lt!844095 () List!27106)

(assert (=> b!2272266 (= lt!844095 (list!10477 (BalanceConc!17253 Empty!8762)))))

(declare-fun lt!844076 () List!27106)

(assert (=> b!2272266 (= lt!844076 (list!10477 (charsOf!2695 (_1!15857 (v!30338 lt!844104)))))))

(declare-fun lt!844102 () List!27106)

(assert (=> b!2272266 (= lt!844102 (list!10477 (_2!15857 (v!30338 lt!844104))))))

(declare-fun lt!844109 () Unit!39960)

(declare-fun lemmaConcatAssociativity!1370 (List!27106 List!27106 List!27106) Unit!39960)

(assert (=> b!2272266 (= lt!844109 (lemmaConcatAssociativity!1370 lt!844095 lt!844076 lt!844102))))

(assert (=> b!2272266 (= (++!6586 (++!6586 lt!844095 lt!844076) lt!844102) (++!6586 lt!844095 (++!6586 lt!844076 lt!844102)))))

(declare-fun lt!844080 () Unit!39960)

(assert (=> b!2272266 (= lt!844080 lt!844109)))

(declare-fun maxPrefixZipperSequence!864 (LexerInterface!3904 List!27107 BalanceConc!17252) Option!5289)

(assert (=> b!2272266 (= lt!844103 (maxPrefixZipperSequence!864 thiss!16613 rules!1750 (seqFromList!3011 input!1722)))))

(declare-fun c!360786 () Bool)

(assert (=> b!2272266 (= c!360786 ((_ is Some!5288) lt!844103))))

(assert (=> b!2272266 (= (lexRec!529 thiss!16613 rules!1750 (seqFromList!3011 input!1722)) e!1455394)))

(declare-fun lt!844098 () Unit!39960)

(declare-fun Unit!39964 () Unit!39960)

(assert (=> b!2272266 (= lt!844098 Unit!39964)))

(declare-fun lt!844096 () List!27108)

(assert (=> b!2272266 (= lt!844096 (list!10478 (BalanceConc!17255 Empty!8763)))))

(declare-fun lt!844091 () List!27108)

(assert (=> b!2272266 (= lt!844091 (Cons!27014 (_1!15857 (v!30338 lt!844104)) Nil!27014))))

(declare-fun lt!844108 () List!27108)

(assert (=> b!2272266 (= lt!844108 (list!10478 (_1!15852 lt!844090)))))

(declare-fun lt!844087 () Unit!39960)

(declare-fun lemmaConcatAssociativity!1371 (List!27108 List!27108 List!27108) Unit!39960)

(assert (=> b!2272266 (= lt!844087 (lemmaConcatAssociativity!1371 lt!844096 lt!844091 lt!844108))))

(assert (=> b!2272266 (= (++!6589 (++!6589 lt!844096 lt!844091) lt!844108) (++!6589 lt!844096 (++!6589 lt!844091 lt!844108)))))

(declare-fun lt!844094 () Unit!39960)

(assert (=> b!2272266 (= lt!844094 lt!844087)))

(declare-fun lt!844085 () List!27106)

(assert (=> b!2272266 (= lt!844085 (++!6586 (list!10477 (BalanceConc!17253 Empty!8762)) (list!10477 (charsOf!2695 (_1!15857 (v!30338 lt!844104))))))))

(declare-fun lt!844082 () List!27106)

(assert (=> b!2272266 (= lt!844082 (list!10477 (_2!15857 (v!30338 lt!844104))))))

(declare-fun lt!844086 () List!27108)

(assert (=> b!2272266 (= lt!844086 (list!10478 (append!692 (BalanceConc!17255 Empty!8763) (_1!15857 (v!30338 lt!844104)))))))

(declare-fun lt!844100 () Unit!39960)

(declare-fun lemmaLexThenLexPrefix!343 (LexerInterface!3904 List!27107 List!27106 List!27106 List!27108 List!27108 List!27106) Unit!39960)

(assert (=> b!2272266 (= lt!844100 (lemmaLexThenLexPrefix!343 thiss!16613 rules!1750 lt!844085 lt!844082 lt!844086 (list!10478 (_1!15852 lt!844090)) (list!10477 (_2!15852 lt!844090))))))

(assert (=> b!2272266 (= (lexList!1080 thiss!16613 rules!1750 lt!844085) (tuple2!26687 lt!844086 Nil!27012))))

(declare-fun lt!844107 () Unit!39960)

(assert (=> b!2272266 (= lt!844107 lt!844100)))

(declare-fun lt!844092 () BalanceConc!17252)

(declare-fun ++!6591 (BalanceConc!17252 BalanceConc!17252) BalanceConc!17252)

(assert (=> b!2272266 (= lt!844092 (++!6591 (BalanceConc!17253 Empty!8762) (charsOf!2695 (_1!15857 (v!30338 lt!844104)))))))

(assert (=> b!2272266 (= lt!844093 (maxPrefixZipperSequence!864 thiss!16613 rules!1750 lt!844092))))

(declare-fun c!360787 () Bool)

(assert (=> b!2272266 (= c!360787 ((_ is Some!5288) lt!844093))))

(assert (=> b!2272266 (= (lexRec!529 thiss!16613 rules!1750 (++!6591 (BalanceConc!17253 Empty!8762) (charsOf!2695 (_1!15857 (v!30338 lt!844104))))) e!1455392)))

(declare-fun lt!844079 () Unit!39960)

(declare-fun Unit!39965 () Unit!39960)

(assert (=> b!2272266 (= lt!844079 Unit!39965)))

(assert (=> b!2272266 (= lt!844089 (++!6591 (BalanceConc!17253 Empty!8762) (charsOf!2695 (_1!15857 (v!30338 lt!844104)))))))

(declare-fun lt!844088 () List!27106)

(assert (=> b!2272266 (= lt!844088 (list!10477 lt!844089))))

(declare-fun lt!844097 () List!27106)

(assert (=> b!2272266 (= lt!844097 (list!10477 (_2!15857 (v!30338 lt!844104))))))

(declare-fun lt!844106 () Unit!39960)

(assert (=> b!2272266 (= lt!844106 (lemmaConcatTwoListThenFSndIsSuffix!459 lt!844088 lt!844097))))

(assert (=> b!2272266 (isSuffix!765 lt!844097 (++!6586 lt!844088 lt!844097))))

(declare-fun lt!844105 () Unit!39960)

(assert (=> b!2272266 (= lt!844105 lt!844106)))

(declare-fun b!2272267 () Bool)

(assert (=> b!2272267 (= e!1455391 (= (list!10477 (_2!15852 lt!844083)) (list!10477 (_2!15852 (lexRec!529 thiss!16613 rules!1750 (seqFromList!3011 input!1722))))))))

(declare-fun b!2272268 () Bool)

(assert (=> b!2272268 (= e!1455392 (tuple2!26685 (BalanceConc!17255 Empty!8763) lt!844092))))

(assert (= (and d!672721 c!360788) b!2272266))

(assert (= (and d!672721 (not c!360788)) b!2272265))

(assert (= (and b!2272266 c!360786) b!2272263))

(assert (= (and b!2272266 (not c!360786)) b!2272262))

(assert (= (and b!2272266 c!360787) b!2272264))

(assert (= (and b!2272266 (not c!360787)) b!2272268))

(assert (= (and d!672721 res!971263) b!2272267))

(declare-fun m!2700949 () Bool)

(assert (=> b!2272263 m!2700949))

(declare-fun m!2700953 () Bool)

(assert (=> b!2272263 m!2700953))

(declare-fun m!2700955 () Bool)

(assert (=> b!2272267 m!2700955))

(assert (=> b!2272267 m!2700117))

(declare-fun m!2700957 () Bool)

(assert (=> b!2272267 m!2700957))

(declare-fun m!2700959 () Bool)

(assert (=> b!2272267 m!2700959))

(declare-fun m!2700961 () Bool)

(assert (=> b!2272266 m!2700961))

(declare-fun m!2700965 () Bool)

(assert (=> b!2272266 m!2700965))

(declare-fun m!2700967 () Bool)

(assert (=> b!2272266 m!2700967))

(declare-fun m!2700971 () Bool)

(assert (=> b!2272266 m!2700971))

(assert (=> b!2272266 m!2700965))

(declare-fun m!2700973 () Bool)

(assert (=> b!2272266 m!2700973))

(declare-fun m!2700975 () Bool)

(assert (=> b!2272266 m!2700975))

(assert (=> b!2272266 m!2700971))

(declare-fun m!2700979 () Bool)

(assert (=> b!2272266 m!2700979))

(declare-fun m!2700981 () Bool)

(assert (=> b!2272266 m!2700981))

(declare-fun m!2700983 () Bool)

(assert (=> b!2272266 m!2700983))

(declare-fun m!2700985 () Bool)

(assert (=> b!2272266 m!2700985))

(declare-fun m!2700987 () Bool)

(assert (=> b!2272266 m!2700987))

(declare-fun m!2700989 () Bool)

(assert (=> b!2272266 m!2700989))

(declare-fun m!2700991 () Bool)

(assert (=> b!2272266 m!2700991))

(declare-fun m!2700995 () Bool)

(assert (=> b!2272266 m!2700995))

(declare-fun m!2700997 () Bool)

(assert (=> b!2272266 m!2700997))

(declare-fun m!2700999 () Bool)

(assert (=> b!2272266 m!2700999))

(assert (=> b!2272266 m!2700997))

(declare-fun m!2701001 () Bool)

(assert (=> b!2272266 m!2701001))

(assert (=> b!2272266 m!2700995))

(declare-fun m!2701003 () Bool)

(assert (=> b!2272266 m!2701003))

(assert (=> b!2272266 m!2700117))

(assert (=> b!2272266 m!2700957))

(declare-fun m!2701005 () Bool)

(assert (=> b!2272266 m!2701005))

(assert (=> b!2272266 m!2700117))

(assert (=> b!2272266 m!2700985))

(declare-fun m!2701007 () Bool)

(assert (=> b!2272266 m!2701007))

(declare-fun m!2701009 () Bool)

(assert (=> b!2272266 m!2701009))

(assert (=> b!2272266 m!2700117))

(declare-fun m!2701011 () Bool)

(assert (=> b!2272266 m!2701011))

(declare-fun m!2701013 () Bool)

(assert (=> b!2272266 m!2701013))

(declare-fun m!2701015 () Bool)

(assert (=> b!2272266 m!2701015))

(declare-fun m!2701017 () Bool)

(assert (=> b!2272266 m!2701017))

(declare-fun m!2701019 () Bool)

(assert (=> b!2272266 m!2701019))

(declare-fun m!2701021 () Bool)

(assert (=> b!2272266 m!2701021))

(assert (=> b!2272266 m!2701019))

(assert (=> b!2272266 m!2700971))

(declare-fun m!2701023 () Bool)

(assert (=> b!2272266 m!2701023))

(assert (=> b!2272266 m!2701017))

(assert (=> b!2272266 m!2700979))

(declare-fun m!2701025 () Bool)

(assert (=> b!2272266 m!2701025))

(assert (=> b!2272266 m!2700981))

(declare-fun m!2701027 () Bool)

(assert (=> b!2272266 m!2701027))

(assert (=> b!2272266 m!2700985))

(assert (=> b!2272266 m!2701013))

(declare-fun m!2701029 () Bool)

(assert (=> b!2272266 m!2701029))

(assert (=> b!2272266 m!2700975))

(assert (=> b!2272266 m!2701009))

(declare-fun m!2701031 () Bool)

(assert (=> b!2272266 m!2701031))

(assert (=> d!672721 m!2700117))

(assert (=> d!672721 m!2700957))

(declare-fun m!2701033 () Bool)

(assert (=> d!672721 m!2701033))

(assert (=> d!672721 m!2701017))

(assert (=> d!672721 m!2700117))

(assert (=> d!672721 m!2700305))

(declare-fun m!2701035 () Bool)

(assert (=> d!672721 m!2701035))

(declare-fun m!2701037 () Bool)

(assert (=> d!672721 m!2701037))

(assert (=> d!672721 m!2701035))

(declare-fun m!2701039 () Bool)

(assert (=> d!672721 m!2701039))

(assert (=> d!672721 m!2700117))

(assert (=> d!672721 m!2700117))

(declare-fun m!2701041 () Bool)

(assert (=> d!672721 m!2701041))

(declare-fun m!2701043 () Bool)

(assert (=> d!672721 m!2701043))

(declare-fun m!2701045 () Bool)

(assert (=> b!2272264 m!2701045))

(declare-fun m!2701047 () Bool)

(assert (=> b!2272264 m!2701047))

(assert (=> d!672443 d!672721))

(declare-fun d!672753 () Bool)

(assert (=> d!672753 (= (nullable!1834 (regex!4307 otherR!12)) (nullableFct!439 (regex!4307 otherR!12)))))

(declare-fun bs!456136 () Bool)

(assert (= bs!456136 d!672753))

(declare-fun m!2701049 () Bool)

(assert (=> bs!456136 m!2701049))

(assert (=> b!2271575 d!672753))

(assert (=> b!2271470 d!672697))

(declare-fun d!672755 () Bool)

(declare-fun c!360792 () Bool)

(assert (=> d!672755 (= c!360792 ((_ is Empty!8762) (c!360602 (_2!15852 lt!843764))))))

(declare-fun e!1455402 () List!27106)

(assert (=> d!672755 (= (list!10482 (c!360602 (_2!15852 lt!843764))) e!1455402)))

(declare-fun b!2272284 () Bool)

(declare-fun e!1455403 () List!27106)

(assert (=> b!2272284 (= e!1455402 e!1455403)))

(declare-fun c!360793 () Bool)

(assert (=> b!2272284 (= c!360793 ((_ is Leaf!12901) (c!360602 (_2!15852 lt!843764))))))

(declare-fun b!2272283 () Bool)

(assert (=> b!2272283 (= e!1455402 Nil!27012)))

(declare-fun b!2272285 () Bool)

(assert (=> b!2272285 (= e!1455403 (list!10483 (xs!11704 (c!360602 (_2!15852 lt!843764)))))))

(declare-fun b!2272286 () Bool)

(assert (=> b!2272286 (= e!1455403 (++!6586 (list!10482 (left!20496 (c!360602 (_2!15852 lt!843764)))) (list!10482 (right!20826 (c!360602 (_2!15852 lt!843764))))))))

(assert (= (and d!672755 c!360792) b!2272283))

(assert (= (and d!672755 (not c!360792)) b!2272284))

(assert (= (and b!2272284 c!360793) b!2272285))

(assert (= (and b!2272284 (not c!360793)) b!2272286))

(declare-fun m!2701051 () Bool)

(assert (=> b!2272285 m!2701051))

(declare-fun m!2701053 () Bool)

(assert (=> b!2272286 m!2701053))

(declare-fun m!2701055 () Bool)

(assert (=> b!2272286 m!2701055))

(assert (=> b!2272286 m!2701053))

(assert (=> b!2272286 m!2701055))

(declare-fun m!2701057 () Bool)

(assert (=> b!2272286 m!2701057))

(assert (=> d!672441 d!672755))

(declare-fun d!672757 () Bool)

(assert (=> d!672757 (= (isEmpty!15305 (originalCharacters!5077 (h!32415 tokens!456))) ((_ is Nil!27012) (originalCharacters!5077 (h!32415 tokens!456))))))

(assert (=> d!672433 d!672757))

(declare-fun b!2272287 () Bool)

(declare-fun e!1455405 () Bool)

(declare-fun e!1455406 () Bool)

(assert (=> b!2272287 (= e!1455405 e!1455406)))

(declare-fun res!971275 () Bool)

(assert (=> b!2272287 (=> (not res!971275) (not e!1455406))))

(assert (=> b!2272287 (= res!971275 (not ((_ is Nil!27012) (tail!3277 input!1722))))))

(declare-fun b!2272288 () Bool)

(declare-fun res!971272 () Bool)

(assert (=> b!2272288 (=> (not res!971272) (not e!1455406))))

(assert (=> b!2272288 (= res!971272 (= (head!4904 (tail!3277 otherP!12)) (head!4904 (tail!3277 input!1722))))))

(declare-fun d!672759 () Bool)

(declare-fun e!1455404 () Bool)

(assert (=> d!672759 e!1455404))

(declare-fun res!971273 () Bool)

(assert (=> d!672759 (=> res!971273 e!1455404)))

(declare-fun lt!844111 () Bool)

(assert (=> d!672759 (= res!971273 (not lt!844111))))

(assert (=> d!672759 (= lt!844111 e!1455405)))

(declare-fun res!971274 () Bool)

(assert (=> d!672759 (=> res!971274 e!1455405)))

(assert (=> d!672759 (= res!971274 ((_ is Nil!27012) (tail!3277 otherP!12)))))

(assert (=> d!672759 (= (isPrefix!2297 (tail!3277 otherP!12) (tail!3277 input!1722)) lt!844111)))

(declare-fun b!2272289 () Bool)

(assert (=> b!2272289 (= e!1455406 (isPrefix!2297 (tail!3277 (tail!3277 otherP!12)) (tail!3277 (tail!3277 input!1722))))))

(declare-fun b!2272290 () Bool)

(assert (=> b!2272290 (= e!1455404 (>= (size!21208 (tail!3277 input!1722)) (size!21208 (tail!3277 otherP!12))))))

(assert (= (and d!672759 (not res!971274)) b!2272287))

(assert (= (and b!2272287 res!971275) b!2272288))

(assert (= (and b!2272288 res!971272) b!2272289))

(assert (= (and d!672759 (not res!971273)) b!2272290))

(assert (=> b!2272288 m!2700285))

(declare-fun m!2701059 () Bool)

(assert (=> b!2272288 m!2701059))

(assert (=> b!2272288 m!2700287))

(declare-fun m!2701061 () Bool)

(assert (=> b!2272288 m!2701061))

(assert (=> b!2272289 m!2700285))

(declare-fun m!2701063 () Bool)

(assert (=> b!2272289 m!2701063))

(assert (=> b!2272289 m!2700287))

(declare-fun m!2701065 () Bool)

(assert (=> b!2272289 m!2701065))

(assert (=> b!2272289 m!2701063))

(assert (=> b!2272289 m!2701065))

(declare-fun m!2701067 () Bool)

(assert (=> b!2272289 m!2701067))

(assert (=> b!2272290 m!2700287))

(declare-fun m!2701069 () Bool)

(assert (=> b!2272290 m!2701069))

(assert (=> b!2272290 m!2700285))

(declare-fun m!2701071 () Bool)

(assert (=> b!2272290 m!2701071))

(assert (=> b!2271598 d!672759))

(declare-fun d!672761 () Bool)

(assert (=> d!672761 (= (tail!3277 otherP!12) (t!202618 otherP!12))))

(assert (=> b!2271598 d!672761))

(declare-fun d!672763 () Bool)

(assert (=> d!672763 (= (tail!3277 input!1722) (t!202618 input!1722))))

(assert (=> b!2271598 d!672763))

(declare-fun d!672765 () Bool)

(assert (=> d!672765 (= (inv!36579 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (value!136569 (h!32415 tokens!456)))) (isBalanced!2668 (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (value!136569 (h!32415 tokens!456))))))))

(declare-fun bs!456137 () Bool)

(assert (= bs!456137 d!672765))

(declare-fun m!2701073 () Bool)

(assert (=> bs!456137 m!2701073))

(assert (=> tb!134815 d!672765))

(declare-fun d!672767 () Bool)

(declare-fun charsToBigInt!0 (List!27105 Int) Int)

(assert (=> d!672767 (= (inv!15 (value!136569 (h!32415 tokens!456))) (= (charsToBigInt!0 (text!31732 (value!136569 (h!32415 tokens!456))) 0) (value!136564 (value!136569 (h!32415 tokens!456)))))))

(declare-fun bs!456138 () Bool)

(assert (= bs!456138 d!672767))

(declare-fun m!2701075 () Bool)

(assert (=> bs!456138 m!2701075))

(assert (=> b!2271547 d!672767))

(declare-fun d!672769 () Bool)

(declare-fun charsToBigInt!1 (List!27105) Int)

(assert (=> d!672769 (= (inv!17 (value!136569 (h!32415 tokens!456))) (= (charsToBigInt!1 (text!31731 (value!136569 (h!32415 tokens!456)))) (value!136561 (value!136569 (h!32415 tokens!456)))))))

(declare-fun bs!456139 () Bool)

(assert (= bs!456139 d!672769))

(declare-fun m!2701077 () Bool)

(assert (=> bs!456139 m!2701077))

(assert (=> b!2271549 d!672769))

(declare-fun b!2272311 () Bool)

(declare-fun e!1455417 () Bool)

(assert (=> b!2272311 (= e!1455417 tp_is_empty!10531)))

(declare-fun b!2272314 () Bool)

(declare-fun tp!719444 () Bool)

(declare-fun tp!719445 () Bool)

(assert (=> b!2272314 (= e!1455417 (and tp!719444 tp!719445))))

(declare-fun b!2272313 () Bool)

(declare-fun tp!719447 () Bool)

(assert (=> b!2272313 (= e!1455417 tp!719447)))

(declare-fun b!2272312 () Bool)

(declare-fun tp!719448 () Bool)

(declare-fun tp!719446 () Bool)

(assert (=> b!2272312 (= e!1455417 (and tp!719448 tp!719446))))

(assert (=> b!2271831 (= tp!719398 e!1455417)))

(assert (= (and b!2271831 ((_ is ElementMatch!6655) (regOne!13822 (regex!4307 (rule!6625 (h!32415 tokens!456)))))) b!2272311))

(assert (= (and b!2271831 ((_ is Concat!11125) (regOne!13822 (regex!4307 (rule!6625 (h!32415 tokens!456)))))) b!2272312))

(assert (= (and b!2271831 ((_ is Star!6655) (regOne!13822 (regex!4307 (rule!6625 (h!32415 tokens!456)))))) b!2272313))

(assert (= (and b!2271831 ((_ is Union!6655) (regOne!13822 (regex!4307 (rule!6625 (h!32415 tokens!456)))))) b!2272314))

(declare-fun b!2272315 () Bool)

(declare-fun e!1455418 () Bool)

(assert (=> b!2272315 (= e!1455418 tp_is_empty!10531)))

(declare-fun b!2272318 () Bool)

(declare-fun tp!719449 () Bool)

(declare-fun tp!719450 () Bool)

(assert (=> b!2272318 (= e!1455418 (and tp!719449 tp!719450))))

(declare-fun b!2272317 () Bool)

(declare-fun tp!719452 () Bool)

(assert (=> b!2272317 (= e!1455418 tp!719452)))

(declare-fun b!2272316 () Bool)

(declare-fun tp!719453 () Bool)

(declare-fun tp!719451 () Bool)

(assert (=> b!2272316 (= e!1455418 (and tp!719453 tp!719451))))

(assert (=> b!2271831 (= tp!719396 e!1455418)))

(assert (= (and b!2271831 ((_ is ElementMatch!6655) (regTwo!13822 (regex!4307 (rule!6625 (h!32415 tokens!456)))))) b!2272315))

(assert (= (and b!2271831 ((_ is Concat!11125) (regTwo!13822 (regex!4307 (rule!6625 (h!32415 tokens!456)))))) b!2272316))

(assert (= (and b!2271831 ((_ is Star!6655) (regTwo!13822 (regex!4307 (rule!6625 (h!32415 tokens!456)))))) b!2272317))

(assert (= (and b!2271831 ((_ is Union!6655) (regTwo!13822 (regex!4307 (rule!6625 (h!32415 tokens!456)))))) b!2272318))

(declare-fun b!2272319 () Bool)

(declare-fun e!1455419 () Bool)

(declare-fun tp!719454 () Bool)

(assert (=> b!2272319 (= e!1455419 (and tp_is_empty!10531 tp!719454))))

(assert (=> b!2271848 (= tp!719413 e!1455419)))

(assert (= (and b!2271848 ((_ is Cons!27012) (t!202618 (originalCharacters!5077 (h!32415 tokens!456))))) b!2272319))

(declare-fun b!2272320 () Bool)

(declare-fun e!1455420 () Bool)

(assert (=> b!2272320 (= e!1455420 tp_is_empty!10531)))

(declare-fun b!2272323 () Bool)

(declare-fun tp!719455 () Bool)

(declare-fun tp!719456 () Bool)

(assert (=> b!2272323 (= e!1455420 (and tp!719455 tp!719456))))

(declare-fun b!2272322 () Bool)

(declare-fun tp!719458 () Bool)

(assert (=> b!2272322 (= e!1455420 tp!719458)))

(declare-fun b!2272321 () Bool)

(declare-fun tp!719459 () Bool)

(declare-fun tp!719457 () Bool)

(assert (=> b!2272321 (= e!1455420 (and tp!719459 tp!719457))))

(assert (=> b!2271832 (= tp!719397 e!1455420)))

(assert (= (and b!2271832 ((_ is ElementMatch!6655) (reg!6984 (regex!4307 (rule!6625 (h!32415 tokens!456)))))) b!2272320))

(assert (= (and b!2271832 ((_ is Concat!11125) (reg!6984 (regex!4307 (rule!6625 (h!32415 tokens!456)))))) b!2272321))

(assert (= (and b!2271832 ((_ is Star!6655) (reg!6984 (regex!4307 (rule!6625 (h!32415 tokens!456)))))) b!2272322))

(assert (= (and b!2271832 ((_ is Union!6655) (reg!6984 (regex!4307 (rule!6625 (h!32415 tokens!456)))))) b!2272323))

(declare-fun b!2272324 () Bool)

(declare-fun e!1455421 () Bool)

(assert (=> b!2272324 (= e!1455421 tp_is_empty!10531)))

(declare-fun b!2272327 () Bool)

(declare-fun tp!719460 () Bool)

(declare-fun tp!719461 () Bool)

(assert (=> b!2272327 (= e!1455421 (and tp!719460 tp!719461))))

(declare-fun b!2272326 () Bool)

(declare-fun tp!719463 () Bool)

(assert (=> b!2272326 (= e!1455421 tp!719463)))

(declare-fun b!2272325 () Bool)

(declare-fun tp!719464 () Bool)

(declare-fun tp!719462 () Bool)

(assert (=> b!2272325 (= e!1455421 (and tp!719464 tp!719462))))

(assert (=> b!2271833 (= tp!719394 e!1455421)))

(assert (= (and b!2271833 ((_ is ElementMatch!6655) (regOne!13823 (regex!4307 (rule!6625 (h!32415 tokens!456)))))) b!2272324))

(assert (= (and b!2271833 ((_ is Concat!11125) (regOne!13823 (regex!4307 (rule!6625 (h!32415 tokens!456)))))) b!2272325))

(assert (= (and b!2271833 ((_ is Star!6655) (regOne!13823 (regex!4307 (rule!6625 (h!32415 tokens!456)))))) b!2272326))

(assert (= (and b!2271833 ((_ is Union!6655) (regOne!13823 (regex!4307 (rule!6625 (h!32415 tokens!456)))))) b!2272327))

(declare-fun b!2272328 () Bool)

(declare-fun e!1455422 () Bool)

(assert (=> b!2272328 (= e!1455422 tp_is_empty!10531)))

(declare-fun b!2272331 () Bool)

(declare-fun tp!719465 () Bool)

(declare-fun tp!719466 () Bool)

(assert (=> b!2272331 (= e!1455422 (and tp!719465 tp!719466))))

(declare-fun b!2272330 () Bool)

(declare-fun tp!719468 () Bool)

(assert (=> b!2272330 (= e!1455422 tp!719468)))

(declare-fun b!2272329 () Bool)

(declare-fun tp!719469 () Bool)

(declare-fun tp!719467 () Bool)

(assert (=> b!2272329 (= e!1455422 (and tp!719469 tp!719467))))

(assert (=> b!2271833 (= tp!719395 e!1455422)))

(assert (= (and b!2271833 ((_ is ElementMatch!6655) (regTwo!13823 (regex!4307 (rule!6625 (h!32415 tokens!456)))))) b!2272328))

(assert (= (and b!2271833 ((_ is Concat!11125) (regTwo!13823 (regex!4307 (rule!6625 (h!32415 tokens!456)))))) b!2272329))

(assert (= (and b!2271833 ((_ is Star!6655) (regTwo!13823 (regex!4307 (rule!6625 (h!32415 tokens!456)))))) b!2272330))

(assert (= (and b!2271833 ((_ is Union!6655) (regTwo!13823 (regex!4307 (rule!6625 (h!32415 tokens!456)))))) b!2272331))

(declare-fun b!2272334 () Bool)

(declare-fun b_free!67581 () Bool)

(declare-fun b_next!68285 () Bool)

(assert (=> b!2272334 (= b_free!67581 (not b_next!68285))))

(declare-fun tp!719472 () Bool)

(declare-fun b_and!179081 () Bool)

(assert (=> b!2272334 (= tp!719472 b_and!179081)))

(declare-fun b_free!67583 () Bool)

(declare-fun b_next!68287 () Bool)

(assert (=> b!2272334 (= b_free!67583 (not b_next!68287))))

(declare-fun tb!134871 () Bool)

(declare-fun t!202702 () Bool)

(assert (=> (and b!2272334 (= (toChars!5932 (transformation!4307 (h!32414 (t!202619 (t!202619 rules!1750))))) (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456))))) t!202702) tb!134871))

(declare-fun result!164446 () Bool)

(assert (= result!164446 result!164354))

(assert (=> d!672389 t!202702))

(declare-fun tb!134873 () Bool)

(declare-fun t!202704 () Bool)

(assert (=> (and b!2272334 (= (toChars!5932 (transformation!4307 (h!32414 (t!202619 (t!202619 rules!1750))))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456))))) t!202704) tb!134873))

(declare-fun result!164448 () Bool)

(assert (= result!164448 result!164374))

(assert (=> b!2271585 t!202704))

(declare-fun tb!134875 () Bool)

(declare-fun t!202706 () Bool)

(assert (=> (and b!2272334 (= (toChars!5932 (transformation!4307 (h!32414 (t!202619 (t!202619 rules!1750))))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456)))))) t!202706) tb!134875))

(declare-fun result!164450 () Bool)

(assert (= result!164450 result!164434))

(assert (=> b!2271988 t!202706))

(declare-fun b_and!179083 () Bool)

(declare-fun tp!719473 () Bool)

(assert (=> b!2272334 (= tp!719473 (and (=> t!202702 result!164446) (=> t!202704 result!164448) (=> t!202706 result!164450) b_and!179083))))

(declare-fun e!1455424 () Bool)

(assert (=> b!2272334 (= e!1455424 (and tp!719472 tp!719473))))

(declare-fun e!1455425 () Bool)

(declare-fun b!2272333 () Bool)

(declare-fun tp!719471 () Bool)

(assert (=> b!2272333 (= e!1455425 (and tp!719471 (inv!36571 (tag!4797 (h!32414 (t!202619 (t!202619 rules!1750))))) (inv!36574 (transformation!4307 (h!32414 (t!202619 (t!202619 rules!1750))))) e!1455424))))

(declare-fun b!2272332 () Bool)

(declare-fun e!1455426 () Bool)

(declare-fun tp!719470 () Bool)

(assert (=> b!2272332 (= e!1455426 (and e!1455425 tp!719470))))

(assert (=> b!2271857 (= tp!719422 e!1455426)))

(assert (= b!2272333 b!2272334))

(assert (= b!2272332 b!2272333))

(assert (= (and b!2271857 ((_ is Cons!27013) (t!202619 (t!202619 rules!1750)))) b!2272332))

(declare-fun m!2701079 () Bool)

(assert (=> b!2272333 m!2701079))

(declare-fun m!2701081 () Bool)

(assert (=> b!2272333 m!2701081))

(declare-fun b!2272335 () Bool)

(declare-fun e!1455427 () Bool)

(assert (=> b!2272335 (= e!1455427 tp_is_empty!10531)))

(declare-fun b!2272338 () Bool)

(declare-fun tp!719474 () Bool)

(declare-fun tp!719475 () Bool)

(assert (=> b!2272338 (= e!1455427 (and tp!719474 tp!719475))))

(declare-fun b!2272337 () Bool)

(declare-fun tp!719477 () Bool)

(assert (=> b!2272337 (= e!1455427 tp!719477)))

(declare-fun b!2272336 () Bool)

(declare-fun tp!719478 () Bool)

(declare-fun tp!719476 () Bool)

(assert (=> b!2272336 (= e!1455427 (and tp!719478 tp!719476))))

(assert (=> b!2271845 (= tp!719412 e!1455427)))

(assert (= (and b!2271845 ((_ is ElementMatch!6655) (regOne!13822 (regex!4307 (h!32414 rules!1750))))) b!2272335))

(assert (= (and b!2271845 ((_ is Concat!11125) (regOne!13822 (regex!4307 (h!32414 rules!1750))))) b!2272336))

(assert (= (and b!2271845 ((_ is Star!6655) (regOne!13822 (regex!4307 (h!32414 rules!1750))))) b!2272337))

(assert (= (and b!2271845 ((_ is Union!6655) (regOne!13822 (regex!4307 (h!32414 rules!1750))))) b!2272338))

(declare-fun b!2272339 () Bool)

(declare-fun e!1455428 () Bool)

(assert (=> b!2272339 (= e!1455428 tp_is_empty!10531)))

(declare-fun b!2272342 () Bool)

(declare-fun tp!719479 () Bool)

(declare-fun tp!719480 () Bool)

(assert (=> b!2272342 (= e!1455428 (and tp!719479 tp!719480))))

(declare-fun b!2272341 () Bool)

(declare-fun tp!719482 () Bool)

(assert (=> b!2272341 (= e!1455428 tp!719482)))

(declare-fun b!2272340 () Bool)

(declare-fun tp!719483 () Bool)

(declare-fun tp!719481 () Bool)

(assert (=> b!2272340 (= e!1455428 (and tp!719483 tp!719481))))

(assert (=> b!2271845 (= tp!719410 e!1455428)))

(assert (= (and b!2271845 ((_ is ElementMatch!6655) (regTwo!13822 (regex!4307 (h!32414 rules!1750))))) b!2272339))

(assert (= (and b!2271845 ((_ is Concat!11125) (regTwo!13822 (regex!4307 (h!32414 rules!1750))))) b!2272340))

(assert (= (and b!2271845 ((_ is Star!6655) (regTwo!13822 (regex!4307 (h!32414 rules!1750))))) b!2272341))

(assert (= (and b!2271845 ((_ is Union!6655) (regTwo!13822 (regex!4307 (h!32414 rules!1750))))) b!2272342))

(declare-fun b!2272343 () Bool)

(declare-fun e!1455429 () Bool)

(assert (=> b!2272343 (= e!1455429 tp_is_empty!10531)))

(declare-fun b!2272346 () Bool)

(declare-fun tp!719484 () Bool)

(declare-fun tp!719485 () Bool)

(assert (=> b!2272346 (= e!1455429 (and tp!719484 tp!719485))))

(declare-fun b!2272345 () Bool)

(declare-fun tp!719487 () Bool)

(assert (=> b!2272345 (= e!1455429 tp!719487)))

(declare-fun b!2272344 () Bool)

(declare-fun tp!719488 () Bool)

(declare-fun tp!719486 () Bool)

(assert (=> b!2272344 (= e!1455429 (and tp!719488 tp!719486))))

(assert (=> b!2271858 (= tp!719423 e!1455429)))

(assert (= (and b!2271858 ((_ is ElementMatch!6655) (regex!4307 (h!32414 (t!202619 rules!1750))))) b!2272343))

(assert (= (and b!2271858 ((_ is Concat!11125) (regex!4307 (h!32414 (t!202619 rules!1750))))) b!2272344))

(assert (= (and b!2271858 ((_ is Star!6655) (regex!4307 (h!32414 (t!202619 rules!1750))))) b!2272345))

(assert (= (and b!2271858 ((_ is Union!6655) (regex!4307 (h!32414 (t!202619 rules!1750))))) b!2272346))

(declare-fun b!2272347 () Bool)

(declare-fun e!1455430 () Bool)

(declare-fun tp!719489 () Bool)

(assert (=> b!2272347 (= e!1455430 (and tp_is_empty!10531 tp!719489))))

(assert (=> b!2271838 (= tp!719401 e!1455430)))

(assert (= (and b!2271838 ((_ is Cons!27012) (t!202618 (t!202618 suffix!886)))) b!2272347))

(declare-fun b!2272348 () Bool)

(declare-fun e!1455431 () Bool)

(assert (=> b!2272348 (= e!1455431 tp_is_empty!10531)))

(declare-fun b!2272351 () Bool)

(declare-fun tp!719490 () Bool)

(declare-fun tp!719491 () Bool)

(assert (=> b!2272351 (= e!1455431 (and tp!719490 tp!719491))))

(declare-fun b!2272350 () Bool)

(declare-fun tp!719493 () Bool)

(assert (=> b!2272350 (= e!1455431 tp!719493)))

(declare-fun b!2272349 () Bool)

(declare-fun tp!719494 () Bool)

(declare-fun tp!719492 () Bool)

(assert (=> b!2272349 (= e!1455431 (and tp!719494 tp!719492))))

(assert (=> b!2271846 (= tp!719411 e!1455431)))

(assert (= (and b!2271846 ((_ is ElementMatch!6655) (reg!6984 (regex!4307 (h!32414 rules!1750))))) b!2272348))

(assert (= (and b!2271846 ((_ is Concat!11125) (reg!6984 (regex!4307 (h!32414 rules!1750))))) b!2272349))

(assert (= (and b!2271846 ((_ is Star!6655) (reg!6984 (regex!4307 (h!32414 rules!1750))))) b!2272350))

(assert (= (and b!2271846 ((_ is Union!6655) (reg!6984 (regex!4307 (h!32414 rules!1750))))) b!2272351))

(declare-fun b!2272352 () Bool)

(declare-fun e!1455432 () Bool)

(assert (=> b!2272352 (= e!1455432 tp_is_empty!10531)))

(declare-fun b!2272355 () Bool)

(declare-fun tp!719495 () Bool)

(declare-fun tp!719496 () Bool)

(assert (=> b!2272355 (= e!1455432 (and tp!719495 tp!719496))))

(declare-fun b!2272354 () Bool)

(declare-fun tp!719498 () Bool)

(assert (=> b!2272354 (= e!1455432 tp!719498)))

(declare-fun b!2272353 () Bool)

(declare-fun tp!719499 () Bool)

(declare-fun tp!719497 () Bool)

(assert (=> b!2272353 (= e!1455432 (and tp!719499 tp!719497))))

(assert (=> b!2271847 (= tp!719408 e!1455432)))

(assert (= (and b!2271847 ((_ is ElementMatch!6655) (regOne!13823 (regex!4307 (h!32414 rules!1750))))) b!2272352))

(assert (= (and b!2271847 ((_ is Concat!11125) (regOne!13823 (regex!4307 (h!32414 rules!1750))))) b!2272353))

(assert (= (and b!2271847 ((_ is Star!6655) (regOne!13823 (regex!4307 (h!32414 rules!1750))))) b!2272354))

(assert (= (and b!2271847 ((_ is Union!6655) (regOne!13823 (regex!4307 (h!32414 rules!1750))))) b!2272355))

(declare-fun b!2272356 () Bool)

(declare-fun e!1455433 () Bool)

(assert (=> b!2272356 (= e!1455433 tp_is_empty!10531)))

(declare-fun b!2272359 () Bool)

(declare-fun tp!719500 () Bool)

(declare-fun tp!719501 () Bool)

(assert (=> b!2272359 (= e!1455433 (and tp!719500 tp!719501))))

(declare-fun b!2272358 () Bool)

(declare-fun tp!719503 () Bool)

(assert (=> b!2272358 (= e!1455433 tp!719503)))

(declare-fun b!2272357 () Bool)

(declare-fun tp!719504 () Bool)

(declare-fun tp!719502 () Bool)

(assert (=> b!2272357 (= e!1455433 (and tp!719504 tp!719502))))

(assert (=> b!2271847 (= tp!719409 e!1455433)))

(assert (= (and b!2271847 ((_ is ElementMatch!6655) (regTwo!13823 (regex!4307 (h!32414 rules!1750))))) b!2272356))

(assert (= (and b!2271847 ((_ is Concat!11125) (regTwo!13823 (regex!4307 (h!32414 rules!1750))))) b!2272357))

(assert (= (and b!2271847 ((_ is Star!6655) (regTwo!13823 (regex!4307 (h!32414 rules!1750))))) b!2272358))

(assert (= (and b!2271847 ((_ is Union!6655) (regTwo!13823 (regex!4307 (h!32414 rules!1750))))) b!2272359))

(declare-fun b!2272363 () Bool)

(declare-fun b_free!67585 () Bool)

(declare-fun b_next!68289 () Bool)

(assert (=> b!2272363 (= b_free!67585 (not b_next!68289))))

(declare-fun tp!719505 () Bool)

(declare-fun b_and!179085 () Bool)

(assert (=> b!2272363 (= tp!719505 b_and!179085)))

(declare-fun b_free!67587 () Bool)

(declare-fun b_next!68291 () Bool)

(assert (=> b!2272363 (= b_free!67587 (not b_next!68291))))

(declare-fun t!202708 () Bool)

(declare-fun tb!134877 () Bool)

(assert (=> (and b!2272363 (= (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 (t!202620 tokens!456)))))) (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456))))) t!202708) tb!134877))

(declare-fun result!164452 () Bool)

(assert (= result!164452 result!164354))

(assert (=> d!672389 t!202708))

(declare-fun t!202710 () Bool)

(declare-fun tb!134879 () Bool)

(assert (=> (and b!2272363 (= (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 (t!202620 tokens!456)))))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456))))) t!202710) tb!134879))

(declare-fun result!164454 () Bool)

(assert (= result!164454 result!164374))

(assert (=> b!2271585 t!202710))

(declare-fun t!202712 () Bool)

(declare-fun tb!134881 () Bool)

(assert (=> (and b!2272363 (= (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 (t!202620 tokens!456)))))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456)))))) t!202712) tb!134881))

(declare-fun result!164456 () Bool)

(assert (= result!164456 result!164434))

(assert (=> b!2271988 t!202712))

(declare-fun b_and!179087 () Bool)

(declare-fun tp!719509 () Bool)

(assert (=> b!2272363 (= tp!719509 (and (=> t!202708 result!164452) (=> t!202710 result!164454) (=> t!202712 result!164456) b_and!179087))))

(declare-fun e!1455435 () Bool)

(assert (=> b!2271870 (= tp!719438 e!1455435)))

(declare-fun e!1455437 () Bool)

(declare-fun b!2272361 () Bool)

(declare-fun e!1455434 () Bool)

(declare-fun tp!719508 () Bool)

(assert (=> b!2272361 (= e!1455434 (and (inv!21 (value!136569 (h!32415 (t!202620 (t!202620 tokens!456))))) e!1455437 tp!719508))))

(declare-fun b!2272362 () Bool)

(declare-fun tp!719506 () Bool)

(declare-fun e!1455439 () Bool)

(assert (=> b!2272362 (= e!1455437 (and tp!719506 (inv!36571 (tag!4797 (rule!6625 (h!32415 (t!202620 (t!202620 tokens!456)))))) (inv!36574 (transformation!4307 (rule!6625 (h!32415 (t!202620 (t!202620 tokens!456)))))) e!1455439))))

(declare-fun b!2272360 () Bool)

(declare-fun tp!719507 () Bool)

(assert (=> b!2272360 (= e!1455435 (and (inv!36575 (h!32415 (t!202620 (t!202620 tokens!456)))) e!1455434 tp!719507))))

(assert (=> b!2272363 (= e!1455439 (and tp!719505 tp!719509))))

(assert (= b!2272362 b!2272363))

(assert (= b!2272361 b!2272362))

(assert (= b!2272360 b!2272361))

(assert (= (and b!2271870 ((_ is Cons!27014) (t!202620 (t!202620 tokens!456)))) b!2272360))

(declare-fun m!2701083 () Bool)

(assert (=> b!2272361 m!2701083))

(declare-fun m!2701085 () Bool)

(assert (=> b!2272362 m!2701085))

(declare-fun m!2701087 () Bool)

(assert (=> b!2272362 m!2701087))

(declare-fun m!2701089 () Bool)

(assert (=> b!2272360 m!2701089))

(declare-fun b!2272374 () Bool)

(declare-fun e!1455445 () Bool)

(declare-fun tp!719510 () Bool)

(assert (=> b!2272374 (= e!1455445 (and tp_is_empty!10531 tp!719510))))

(assert (=> b!2271843 (= tp!719407 e!1455445)))

(assert (= (and b!2271843 ((_ is Cons!27012) (t!202618 (t!202618 otherP!12)))) b!2272374))

(declare-fun tp!719534 () Bool)

(declare-fun e!1455454 () Bool)

(declare-fun b!2272395 () Bool)

(declare-fun tp!719532 () Bool)

(assert (=> b!2272395 (= e!1455454 (and (inv!36578 (left!20496 (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))) (value!136569 (head!4902 tokens!456)))))) tp!719532 (inv!36578 (right!20826 (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))) (value!136569 (head!4902 tokens!456)))))) tp!719534))))

(declare-fun b!2272397 () Bool)

(declare-fun e!1455453 () Bool)

(declare-fun tp!719533 () Bool)

(assert (=> b!2272397 (= e!1455453 tp!719533)))

(declare-fun b!2272396 () Bool)

(declare-fun inv!36585 (IArray!17529) Bool)

(assert (=> b!2272396 (= e!1455454 (and (inv!36585 (xs!11704 (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))) (value!136569 (head!4902 tokens!456)))))) e!1455453))))

(assert (=> b!2271486 (= tp!719310 (and (inv!36578 (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))) (value!136569 (head!4902 tokens!456))))) e!1455454))))

(assert (= (and b!2271486 ((_ is Node!8762) (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))) (value!136569 (head!4902 tokens!456)))))) b!2272395))

(assert (= b!2272396 b!2272397))

(assert (= (and b!2271486 ((_ is Leaf!12901) (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))) (value!136569 (head!4902 tokens!456)))))) b!2272396))

(declare-fun m!2701099 () Bool)

(assert (=> b!2272395 m!2701099))

(declare-fun m!2701101 () Bool)

(assert (=> b!2272395 m!2701101))

(declare-fun m!2701103 () Bool)

(assert (=> b!2272396 m!2701103))

(assert (=> b!2271486 m!2700205))

(declare-fun b!2272406 () Bool)

(declare-fun e!1455459 () Bool)

(declare-fun tp!719541 () Bool)

(assert (=> b!2272406 (= e!1455459 (and tp_is_empty!10531 tp!719541))))

(assert (=> b!2271871 (= tp!719439 e!1455459)))

(assert (= (and b!2271871 ((_ is Cons!27012) (originalCharacters!5077 (h!32415 (t!202620 tokens!456))))) b!2272406))

(declare-fun b!2272407 () Bool)

(declare-fun e!1455460 () Bool)

(assert (=> b!2272407 (= e!1455460 tp_is_empty!10531)))

(declare-fun b!2272410 () Bool)

(declare-fun tp!719542 () Bool)

(declare-fun tp!719543 () Bool)

(assert (=> b!2272410 (= e!1455460 (and tp!719542 tp!719543))))

(declare-fun b!2272409 () Bool)

(declare-fun tp!719545 () Bool)

(assert (=> b!2272409 (= e!1455460 tp!719545)))

(declare-fun b!2272408 () Bool)

(declare-fun tp!719546 () Bool)

(declare-fun tp!719544 () Bool)

(assert (=> b!2272408 (= e!1455460 (and tp!719546 tp!719544))))

(assert (=> b!2271872 (= tp!719437 e!1455460)))

(assert (= (and b!2271872 ((_ is ElementMatch!6655) (regex!4307 (rule!6625 (h!32415 (t!202620 tokens!456)))))) b!2272407))

(assert (= (and b!2271872 ((_ is Concat!11125) (regex!4307 (rule!6625 (h!32415 (t!202620 tokens!456)))))) b!2272408))

(assert (= (and b!2271872 ((_ is Star!6655) (regex!4307 (rule!6625 (h!32415 (t!202620 tokens!456)))))) b!2272409))

(assert (= (and b!2271872 ((_ is Union!6655) (regex!4307 (rule!6625 (h!32415 (t!202620 tokens!456)))))) b!2272410))

(declare-fun b!2272411 () Bool)

(declare-fun e!1455461 () Bool)

(assert (=> b!2272411 (= e!1455461 tp_is_empty!10531)))

(declare-fun b!2272414 () Bool)

(declare-fun tp!719547 () Bool)

(declare-fun tp!719548 () Bool)

(assert (=> b!2272414 (= e!1455461 (and tp!719547 tp!719548))))

(declare-fun b!2272413 () Bool)

(declare-fun tp!719550 () Bool)

(assert (=> b!2272413 (= e!1455461 tp!719550)))

(declare-fun b!2272412 () Bool)

(declare-fun tp!719551 () Bool)

(declare-fun tp!719549 () Bool)

(assert (=> b!2272412 (= e!1455461 (and tp!719551 tp!719549))))

(assert (=> b!2271827 (= tp!719393 e!1455461)))

(assert (= (and b!2271827 ((_ is ElementMatch!6655) (regOne!13822 (regex!4307 otherR!12)))) b!2272411))

(assert (= (and b!2271827 ((_ is Concat!11125) (regOne!13822 (regex!4307 otherR!12)))) b!2272412))

(assert (= (and b!2271827 ((_ is Star!6655) (regOne!13822 (regex!4307 otherR!12)))) b!2272413))

(assert (= (and b!2271827 ((_ is Union!6655) (regOne!13822 (regex!4307 otherR!12)))) b!2272414))

(declare-fun b!2272415 () Bool)

(declare-fun e!1455462 () Bool)

(assert (=> b!2272415 (= e!1455462 tp_is_empty!10531)))

(declare-fun b!2272418 () Bool)

(declare-fun tp!719552 () Bool)

(declare-fun tp!719553 () Bool)

(assert (=> b!2272418 (= e!1455462 (and tp!719552 tp!719553))))

(declare-fun b!2272417 () Bool)

(declare-fun tp!719555 () Bool)

(assert (=> b!2272417 (= e!1455462 tp!719555)))

(declare-fun b!2272416 () Bool)

(declare-fun tp!719556 () Bool)

(declare-fun tp!719554 () Bool)

(assert (=> b!2272416 (= e!1455462 (and tp!719556 tp!719554))))

(assert (=> b!2271827 (= tp!719391 e!1455462)))

(assert (= (and b!2271827 ((_ is ElementMatch!6655) (regTwo!13822 (regex!4307 otherR!12)))) b!2272415))

(assert (= (and b!2271827 ((_ is Concat!11125) (regTwo!13822 (regex!4307 otherR!12)))) b!2272416))

(assert (= (and b!2271827 ((_ is Star!6655) (regTwo!13822 (regex!4307 otherR!12)))) b!2272417))

(assert (= (and b!2271827 ((_ is Union!6655) (regTwo!13822 (regex!4307 otherR!12)))) b!2272418))

(declare-fun b!2272419 () Bool)

(declare-fun e!1455464 () Bool)

(declare-fun tp!719559 () Bool)

(declare-fun tp!719557 () Bool)

(assert (=> b!2272419 (= e!1455464 (and (inv!36578 (left!20496 (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (value!136569 (h!32415 tokens!456)))))) tp!719557 (inv!36578 (right!20826 (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (value!136569 (h!32415 tokens!456)))))) tp!719559))))

(declare-fun b!2272421 () Bool)

(declare-fun e!1455463 () Bool)

(declare-fun tp!719558 () Bool)

(assert (=> b!2272421 (= e!1455463 tp!719558)))

(declare-fun b!2272420 () Bool)

(assert (=> b!2272420 (= e!1455464 (and (inv!36585 (xs!11704 (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (value!136569 (h!32415 tokens!456)))))) e!1455463))))

(assert (=> b!2271587 (= tp!719314 (and (inv!36578 (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (value!136569 (h!32415 tokens!456))))) e!1455464))))

(assert (= (and b!2271587 ((_ is Node!8762) (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (value!136569 (h!32415 tokens!456)))))) b!2272419))

(assert (= b!2272420 b!2272421))

(assert (= (and b!2271587 ((_ is Leaf!12901) (c!360602 (dynLambda!11715 (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (value!136569 (h!32415 tokens!456)))))) b!2272420))

(declare-fun m!2701105 () Bool)

(assert (=> b!2272419 m!2701105))

(declare-fun m!2701107 () Bool)

(assert (=> b!2272419 m!2701107))

(declare-fun m!2701109 () Bool)

(assert (=> b!2272420 m!2701109))

(assert (=> b!2271587 m!2700269))

(declare-fun b!2272425 () Bool)

(declare-fun e!1455467 () Bool)

(assert (=> b!2272425 (= e!1455467 tp_is_empty!10531)))

(declare-fun b!2272428 () Bool)

(declare-fun tp!719563 () Bool)

(declare-fun tp!719564 () Bool)

(assert (=> b!2272428 (= e!1455467 (and tp!719563 tp!719564))))

(declare-fun b!2272427 () Bool)

(declare-fun tp!719566 () Bool)

(assert (=> b!2272427 (= e!1455467 tp!719566)))

(declare-fun b!2272426 () Bool)

(declare-fun tp!719567 () Bool)

(declare-fun tp!719565 () Bool)

(assert (=> b!2272426 (= e!1455467 (and tp!719567 tp!719565))))

(assert (=> b!2271828 (= tp!719392 e!1455467)))

(assert (= (and b!2271828 ((_ is ElementMatch!6655) (reg!6984 (regex!4307 otherR!12)))) b!2272425))

(assert (= (and b!2271828 ((_ is Concat!11125) (reg!6984 (regex!4307 otherR!12)))) b!2272426))

(assert (= (and b!2271828 ((_ is Star!6655) (reg!6984 (regex!4307 otherR!12)))) b!2272427))

(assert (= (and b!2271828 ((_ is Union!6655) (reg!6984 (regex!4307 otherR!12)))) b!2272428))

(declare-fun b!2272429 () Bool)

(declare-fun e!1455468 () Bool)

(declare-fun tp!719568 () Bool)

(assert (=> b!2272429 (= e!1455468 (and tp_is_empty!10531 tp!719568))))

(assert (=> b!2271874 (= tp!719441 e!1455468)))

(assert (= (and b!2271874 ((_ is Cons!27012) (t!202618 (t!202618 input!1722)))) b!2272429))

(declare-fun b!2272430 () Bool)

(declare-fun e!1455469 () Bool)

(assert (=> b!2272430 (= e!1455469 tp_is_empty!10531)))

(declare-fun b!2272433 () Bool)

(declare-fun tp!719569 () Bool)

(declare-fun tp!719570 () Bool)

(assert (=> b!2272433 (= e!1455469 (and tp!719569 tp!719570))))

(declare-fun b!2272432 () Bool)

(declare-fun tp!719572 () Bool)

(assert (=> b!2272432 (= e!1455469 tp!719572)))

(declare-fun b!2272431 () Bool)

(declare-fun tp!719573 () Bool)

(declare-fun tp!719571 () Bool)

(assert (=> b!2272431 (= e!1455469 (and tp!719573 tp!719571))))

(assert (=> b!2271829 (= tp!719389 e!1455469)))

(assert (= (and b!2271829 ((_ is ElementMatch!6655) (regOne!13823 (regex!4307 otherR!12)))) b!2272430))

(assert (= (and b!2271829 ((_ is Concat!11125) (regOne!13823 (regex!4307 otherR!12)))) b!2272431))

(assert (= (and b!2271829 ((_ is Star!6655) (regOne!13823 (regex!4307 otherR!12)))) b!2272432))

(assert (= (and b!2271829 ((_ is Union!6655) (regOne!13823 (regex!4307 otherR!12)))) b!2272433))

(declare-fun b!2272436 () Bool)

(declare-fun e!1455472 () Bool)

(assert (=> b!2272436 (= e!1455472 tp_is_empty!10531)))

(declare-fun b!2272439 () Bool)

(declare-fun tp!719576 () Bool)

(declare-fun tp!719577 () Bool)

(assert (=> b!2272439 (= e!1455472 (and tp!719576 tp!719577))))

(declare-fun b!2272438 () Bool)

(declare-fun tp!719579 () Bool)

(assert (=> b!2272438 (= e!1455472 tp!719579)))

(declare-fun b!2272437 () Bool)

(declare-fun tp!719580 () Bool)

(declare-fun tp!719578 () Bool)

(assert (=> b!2272437 (= e!1455472 (and tp!719580 tp!719578))))

(assert (=> b!2271829 (= tp!719390 e!1455472)))

(assert (= (and b!2271829 ((_ is ElementMatch!6655) (regTwo!13823 (regex!4307 otherR!12)))) b!2272436))

(assert (= (and b!2271829 ((_ is Concat!11125) (regTwo!13823 (regex!4307 otherR!12)))) b!2272437))

(assert (= (and b!2271829 ((_ is Star!6655) (regTwo!13823 (regex!4307 otherR!12)))) b!2272438))

(assert (= (and b!2271829 ((_ is Union!6655) (regTwo!13823 (regex!4307 otherR!12)))) b!2272439))

(declare-fun b!2272444 () Bool)

(declare-fun e!1455474 () Bool)

(assert (=> b!2272444 (= e!1455474 tp_is_empty!10531)))

(declare-fun b!2272447 () Bool)

(declare-fun tp!719586 () Bool)

(declare-fun tp!719587 () Bool)

(assert (=> b!2272447 (= e!1455474 (and tp!719586 tp!719587))))

(declare-fun b!2272446 () Bool)

(declare-fun tp!719589 () Bool)

(assert (=> b!2272446 (= e!1455474 tp!719589)))

(declare-fun b!2272445 () Bool)

(declare-fun tp!719590 () Bool)

(declare-fun tp!719588 () Bool)

(assert (=> b!2272445 (= e!1455474 (and tp!719590 tp!719588))))

(assert (=> b!2271840 (= tp!719406 e!1455474)))

(assert (= (and b!2271840 ((_ is ElementMatch!6655) (regOne!13822 (regex!4307 r!2363)))) b!2272444))

(assert (= (and b!2271840 ((_ is Concat!11125) (regOne!13822 (regex!4307 r!2363)))) b!2272445))

(assert (= (and b!2271840 ((_ is Star!6655) (regOne!13822 (regex!4307 r!2363)))) b!2272446))

(assert (= (and b!2271840 ((_ is Union!6655) (regOne!13822 (regex!4307 r!2363)))) b!2272447))

(declare-fun b!2272452 () Bool)

(declare-fun e!1455476 () Bool)

(assert (=> b!2272452 (= e!1455476 tp_is_empty!10531)))

(declare-fun b!2272455 () Bool)

(declare-fun tp!719596 () Bool)

(declare-fun tp!719597 () Bool)

(assert (=> b!2272455 (= e!1455476 (and tp!719596 tp!719597))))

(declare-fun b!2272454 () Bool)

(declare-fun tp!719599 () Bool)

(assert (=> b!2272454 (= e!1455476 tp!719599)))

(declare-fun b!2272453 () Bool)

(declare-fun tp!719600 () Bool)

(declare-fun tp!719598 () Bool)

(assert (=> b!2272453 (= e!1455476 (and tp!719600 tp!719598))))

(assert (=> b!2271840 (= tp!719404 e!1455476)))

(assert (= (and b!2271840 ((_ is ElementMatch!6655) (regTwo!13822 (regex!4307 r!2363)))) b!2272452))

(assert (= (and b!2271840 ((_ is Concat!11125) (regTwo!13822 (regex!4307 r!2363)))) b!2272453))

(assert (= (and b!2271840 ((_ is Star!6655) (regTwo!13822 (regex!4307 r!2363)))) b!2272454))

(assert (= (and b!2271840 ((_ is Union!6655) (regTwo!13822 (regex!4307 r!2363)))) b!2272455))

(declare-fun b!2272460 () Bool)

(declare-fun e!1455478 () Bool)

(assert (=> b!2272460 (= e!1455478 tp_is_empty!10531)))

(declare-fun b!2272463 () Bool)

(declare-fun tp!719606 () Bool)

(declare-fun tp!719607 () Bool)

(assert (=> b!2272463 (= e!1455478 (and tp!719606 tp!719607))))

(declare-fun b!2272462 () Bool)

(declare-fun tp!719609 () Bool)

(assert (=> b!2272462 (= e!1455478 tp!719609)))

(declare-fun b!2272461 () Bool)

(declare-fun tp!719610 () Bool)

(declare-fun tp!719608 () Bool)

(assert (=> b!2272461 (= e!1455478 (and tp!719610 tp!719608))))

(assert (=> b!2271841 (= tp!719405 e!1455478)))

(assert (= (and b!2271841 ((_ is ElementMatch!6655) (reg!6984 (regex!4307 r!2363)))) b!2272460))

(assert (= (and b!2271841 ((_ is Concat!11125) (reg!6984 (regex!4307 r!2363)))) b!2272461))

(assert (= (and b!2271841 ((_ is Star!6655) (reg!6984 (regex!4307 r!2363)))) b!2272462))

(assert (= (and b!2271841 ((_ is Union!6655) (reg!6984 (regex!4307 r!2363)))) b!2272463))

(declare-fun b!2272468 () Bool)

(declare-fun e!1455485 () Bool)

(assert (=> b!2272468 (= e!1455485 tp_is_empty!10531)))

(declare-fun b!2272471 () Bool)

(declare-fun tp!719616 () Bool)

(declare-fun tp!719617 () Bool)

(assert (=> b!2272471 (= e!1455485 (and tp!719616 tp!719617))))

(declare-fun b!2272470 () Bool)

(declare-fun tp!719619 () Bool)

(assert (=> b!2272470 (= e!1455485 tp!719619)))

(declare-fun b!2272469 () Bool)

(declare-fun tp!719620 () Bool)

(declare-fun tp!719618 () Bool)

(assert (=> b!2272469 (= e!1455485 (and tp!719620 tp!719618))))

(assert (=> b!2271842 (= tp!719402 e!1455485)))

(assert (= (and b!2271842 ((_ is ElementMatch!6655) (regOne!13823 (regex!4307 r!2363)))) b!2272468))

(assert (= (and b!2271842 ((_ is Concat!11125) (regOne!13823 (regex!4307 r!2363)))) b!2272469))

(assert (= (and b!2271842 ((_ is Star!6655) (regOne!13823 (regex!4307 r!2363)))) b!2272470))

(assert (= (and b!2271842 ((_ is Union!6655) (regOne!13823 (regex!4307 r!2363)))) b!2272471))

(declare-fun b!2272472 () Bool)

(declare-fun e!1455486 () Bool)

(assert (=> b!2272472 (= e!1455486 tp_is_empty!10531)))

(declare-fun b!2272475 () Bool)

(declare-fun tp!719621 () Bool)

(declare-fun tp!719622 () Bool)

(assert (=> b!2272475 (= e!1455486 (and tp!719621 tp!719622))))

(declare-fun b!2272474 () Bool)

(declare-fun tp!719624 () Bool)

(assert (=> b!2272474 (= e!1455486 tp!719624)))

(declare-fun b!2272473 () Bool)

(declare-fun tp!719625 () Bool)

(declare-fun tp!719623 () Bool)

(assert (=> b!2272473 (= e!1455486 (and tp!719625 tp!719623))))

(assert (=> b!2271842 (= tp!719403 e!1455486)))

(assert (= (and b!2271842 ((_ is ElementMatch!6655) (regTwo!13823 (regex!4307 r!2363)))) b!2272472))

(assert (= (and b!2271842 ((_ is Concat!11125) (regTwo!13823 (regex!4307 r!2363)))) b!2272473))

(assert (= (and b!2271842 ((_ is Star!6655) (regTwo!13823 (regex!4307 r!2363)))) b!2272474))

(assert (= (and b!2271842 ((_ is Union!6655) (regTwo!13823 (regex!4307 r!2363)))) b!2272475))

(declare-fun b_lambda!72397 () Bool)

(assert (= b_lambda!72393 (or d!672447 b_lambda!72397)))

(declare-fun bs!456140 () Bool)

(declare-fun d!672771 () Bool)

(assert (= bs!456140 (and d!672771 d!672447)))

(assert (=> bs!456140 (= (dynLambda!11724 lambda!85507 (h!32414 rules!1750)) (ruleValid!1397 thiss!16613 (h!32414 rules!1750)))))

(assert (=> bs!456140 m!2700429))

(assert (=> b!2272149 d!672771))

(declare-fun b_lambda!72399 () Bool)

(assert (= b_lambda!72377 (or (and b!2271873 b_free!67579 (= (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456))))) (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))))) (and b!2272363 b_free!67587 (= (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 (t!202620 tokens!456)))))) (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))))) (and b!2271859 b_free!67575 (= (toChars!5932 (transformation!4307 (h!32414 (t!202619 rules!1750)))) (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))))) (and b!2271438 b_free!67563 (= (toChars!5932 (transformation!4307 (h!32414 rules!1750))) (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))))) (and b!2271454 b_free!67551 (= (toChars!5932 (transformation!4307 r!2363)) (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))))) (and b!2272334 b_free!67583 (= (toChars!5932 (transformation!4307 (h!32414 (t!202619 (t!202619 rules!1750))))) (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))))) (and b!2271451 b_free!67559 (= (toChars!5932 (transformation!4307 otherR!12)) (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))))) (and b!2271441 b_free!67555 (= (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (toChars!5932 (transformation!4307 (rule!6625 (head!4902 tokens!456)))))) b_lambda!72399)))

(declare-fun b_lambda!72401 () Bool)

(assert (= b_lambda!72391 (or (and b!2271438 b_free!67563 (= (toChars!5932 (transformation!4307 (h!32414 rules!1750))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456))))))) (and b!2271451 b_free!67559 (= (toChars!5932 (transformation!4307 otherR!12)) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456))))))) (and b!2271859 b_free!67575 (= (toChars!5932 (transformation!4307 (h!32414 (t!202619 rules!1750)))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456))))))) (and b!2271441 b_free!67555 (= (toChars!5932 (transformation!4307 (rule!6625 (h!32415 tokens!456)))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456))))))) (and b!2271454 b_free!67551 (= (toChars!5932 (transformation!4307 r!2363)) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456))))))) (and b!2272363 b_free!67587 (= (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 (t!202620 tokens!456)))))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456))))))) (and b!2272334 b_free!67583 (= (toChars!5932 (transformation!4307 (h!32414 (t!202619 (t!202619 rules!1750))))) (toChars!5932 (transformation!4307 (rule!6625 (h!32415 (t!202620 tokens!456))))))) (and b!2271873 b_free!67579) b_lambda!72401)))

(check-sat (not bm!136139) (not d!672715) (not b_next!68267) b_and!179071 (not b!2272336) (not b!2272331) (not d!672565) (not b!2272327) (not b_lambda!72401) (not b_lambda!72399) (not b!2271979) (not b!2271486) (not b!2272474) (not b!2272166) (not d!672559) (not b!2272290) (not b!2272286) (not b!2272333) (not d!672507) (not b!2272264) b_and!179005 (not b!2272182) (not b!2271982) (not b!2271993) b_and!179073 (not b!2272318) (not d!672599) (not b!2272198) (not b!2272340) (not b!2272184) (not b_next!68277) (not b_next!68281) (not b!2272453) (not b!2272330) (not b!2272349) (not b!2272439) (not d!672615) (not b!2272408) (not d!672697) tp_is_empty!10531 (not b_next!68287) b_and!178993 (not b!2272414) (not d!672561) (not b!2272072) (not b_next!68263) (not b_next!68283) (not d!672769) (not b!2272316) (not b!2272428) (not b!2272412) (not b!2271987) b_and!179085 b_and!179053 (not b!2272471) b_and!179083 (not b!2272150) b_and!179079 (not b!2272469) (not d!672717) (not b!2272462) (not b!2272431) (not b!2272289) b_and!179001 (not b!2272152) (not b!2272069) (not b!2272263) (not b!2272344) (not b!2271954) (not b!2272185) (not b!2272420) (not b!2271953) (not bm!136158) (not b!2272068) (not b!2272322) (not b!2272437) (not d!672541) (not d!672603) (not b!2272461) (not d!672571) (not b!2272470) (not b!2272323) (not b!2272132) b_and!178997 (not b!2272039) (not b!2271984) (not d!672617) (not b!2272360) (not b!2271988) (not bm!136136) (not b_next!68253) (not b!2272141) (not b_next!68279) (not b!2272347) (not b!2272024) (not b!2272359) (not d!672753) (not d!672609) (not b!2272438) (not bm!136162) (not d!672767) (not b!2272317) (not bm!136160) (not b!2272183) (not b!2272169) (not b!2272396) (not b!2272266) (not b!2272397) (not b!2272325) (not b!2271989) (not b!2271919) (not b!2271992) (not b!2272463) (not b!2272346) (not d!672525) (not b_lambda!72397) (not b_next!68289) (not b_next!68265) (not d!672707) (not d!672529) (not b!2272429) (not b!2272345) (not b!2272413) b_and!179049 (not d!672597) (not b!2271936) (not d!672625) (not b_next!68259) b_and!179069 (not d!672701) (not b!2272362) (not b!2272432) (not b!2272006) (not b!2272409) (not d!672685) (not b!2272326) (not b!2271983) (not b!2272416) (not d!672605) (not b!2272007) (not b!2272022) (not b!2272034) (not b!2272192) (not d!672663) (not d!672675) (not b_lambda!72387) (not b!2272319) (not b!2272354) (not b!2272445) (not b!2271887) (not b!2272350) (not b!2272421) b_and!179077 (not d!672635) (not b!2272418) (not b!2272288) (not b!2272358) (not d!672703) (not d!672721) (not b_next!68291) (not b!2272475) (not b!2272064) (not bs!456140) (not b!2272312) (not b!2272337) (not tb!134859) (not b!2272329) (not b!2272406) (not d!672719) (not b!2272338) (not b!2272032) (not b!2272314) (not b!2272036) (not b!2272074) (not b!2272332) (not b!2272067) (not b!2272433) (not b!2272321) (not b_next!68255) (not b!2272446) b_and!179087 (not b_next!68285) (not b!2272361) (not b!2272419) (not d!672659) (not b!2272351) (not b!2272473) (not b!2272455) (not b!2272395) (not b!2272374) (not b!2272341) (not b_next!68257) (not d!672765) (not b!2272454) (not b!2272417) (not d!672521) (not d!672505) (not d!672607) (not b!2272285) (not b!2272353) (not b!2272181) (not d!672573) (not b!2272267) b_and!179081 (not b!2272197) (not b_next!68261) (not bm!136137) (not d!672527) (not b!2272313) (not d!672667) b_and!179075 (not b!2272199) (not b!2271587) (not b!2272427) (not b!2272447) (not b!2272410) (not bm!136161) (not d!672543) (not b!2272426) (not b!2272357) (not b!2272355) (not b!2272342) (not d!672537) (not b!2272187) (not d!672523))
(check-sat b_and!179005 b_and!179073 b_and!178997 b_and!179077 (not b_next!68291) (not b_next!68257) b_and!179075 (not b_next!68267) b_and!179071 (not b_next!68277) (not b_next!68281) (not b_next!68287) b_and!178993 (not b_next!68263) (not b_next!68283) b_and!179083 b_and!179085 b_and!179053 b_and!179001 b_and!179079 (not b_next!68253) (not b_next!68279) (not b_next!68289) (not b_next!68265) b_and!179049 (not b_next!68259) b_and!179069 (not b_next!68255) b_and!179087 (not b_next!68285) (not b_next!68261) b_and!179081)
