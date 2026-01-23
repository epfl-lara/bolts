; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744872 () Bool)

(assert start!744872)

(declare-fun b!7897574 () Bool)

(declare-fun b_free!134495 () Bool)

(declare-fun b_next!135285 () Bool)

(assert (=> b!7897574 (= b_free!134495 (not b_next!135285))))

(declare-fun tp!2352899 () Bool)

(declare-fun b_and!352347 () Bool)

(assert (=> b!7897574 (= tp!2352899 b_and!352347)))

(declare-fun b_free!134497 () Bool)

(declare-fun b_next!135287 () Bool)

(assert (=> b!7897574 (= b_free!134497 (not b_next!135287))))

(declare-fun tp!2352902 () Bool)

(declare-fun b_and!352349 () Bool)

(assert (=> b!7897574 (= tp!2352902 b_and!352349)))

(declare-fun b!7897571 () Bool)

(declare-fun res!3132854 () Bool)

(declare-fun e!4661510 () Bool)

(assert (=> b!7897571 (=> (not res!3132854) (not e!4661510))))

(declare-datatypes ((LexerInterface!8134 0))(
  ( (LexerInterfaceExt!8131 (__x!35003 Int)) (Lexer!8132) )
))
(declare-fun thiss!14377 () LexerInterface!8134)

(declare-datatypes ((List!74146 0))(
  ( (Nil!74022) (Cons!74022 (h!80470 (_ BitVec 16)) (t!388881 List!74146)) )
))
(declare-datatypes ((TokenValue!8858 0))(
  ( (FloatLiteralValue!17716 (text!62451 List!74146)) (TokenValueExt!8857 (__x!35004 Int)) (Broken!44290 (value!285402 List!74146)) (Object!8981) (End!8858) (Def!8858) (Underscore!8858) (Match!8858) (Else!8858) (Error!8858) (Case!8858) (If!8858) (Extends!8858) (Abstract!8858) (Class!8858) (Val!8858) (DelimiterValue!17716 (del!8918 List!74146)) (KeywordValue!8864 (value!285403 List!74146)) (CommentValue!17716 (value!285404 List!74146)) (WhitespaceValue!17716 (value!285405 List!74146)) (IndentationValue!8858 (value!285406 List!74146)) (String!82711) (Int32!8858) (Broken!44291 (value!285407 List!74146)) (Boolean!8859) (Unit!169037) (OperatorValue!8861 (op!8918 List!74146)) (IdentifierValue!17716 (value!285408 List!74146)) (IdentifierValue!17717 (value!285409 List!74146)) (WhitespaceValue!17717 (value!285410 List!74146)) (True!17716) (False!17716) (Broken!44292 (value!285411 List!74146)) (Broken!44293 (value!285412 List!74146)) (True!17717) (RightBrace!8858) (RightBracket!8858) (Colon!8858) (Null!8858) (Comma!8858) (LeftBracket!8858) (False!17717) (LeftBrace!8858) (ImaginaryLiteralValue!8858 (text!62452 List!74146)) (StringLiteralValue!26574 (value!285413 List!74146)) (EOFValue!8858 (value!285414 List!74146)) (IdentValue!8858 (value!285415 List!74146)) (DelimiterValue!17717 (value!285416 List!74146)) (DedentValue!8858 (value!285417 List!74146)) (NewLineValue!8858 (value!285418 List!74146)) (IntegerValue!26574 (value!285419 (_ BitVec 32)) (text!62453 List!74146)) (IntegerValue!26575 (value!285420 Int) (text!62454 List!74146)) (Times!8858) (Or!8858) (Equal!8858) (Minus!8858) (Broken!44294 (value!285421 List!74146)) (And!8858) (Div!8858) (LessEqual!8858) (Mod!8858) (Concat!30103) (Not!8858) (Plus!8858) (SpaceValue!8858 (value!285422 List!74146)) (IntegerValue!26576 (value!285423 Int) (text!62455 List!74146)) (StringLiteralValue!26575 (text!62456 List!74146)) (FloatLiteralValue!17717 (text!62457 List!74146)) (BytesLiteralValue!8858 (value!285424 List!74146)) (CommentValue!17717 (value!285425 List!74146)) (StringLiteralValue!26576 (value!285426 List!74146)) (ErrorTokenValue!8858 (msg!8919 List!74146)) )
))
(declare-datatypes ((C!42820 0))(
  ( (C!42821 (val!31874 Int)) )
))
(declare-datatypes ((List!74147 0))(
  ( (Nil!74023) (Cons!74023 (h!80471 C!42820) (t!388882 List!74147)) )
))
(declare-datatypes ((IArray!31493 0))(
  ( (IArray!31494 (innerList!15804 List!74147)) )
))
(declare-datatypes ((Conc!15716 0))(
  ( (Node!15716 (left!56490 Conc!15716) (right!56820 Conc!15716) (csize!31662 Int) (cheight!15927 Int)) (Leaf!29955 (xs!19098 IArray!31493) (csize!31663 Int)) (Empty!15716) )
))
(declare-datatypes ((BalanceConc!30550 0))(
  ( (BalanceConc!30551 (c!1449531 Conc!15716)) )
))
(declare-datatypes ((String!82712 0))(
  ( (String!82713 (value!285427 String)) )
))
(declare-datatypes ((Regex!21245 0))(
  ( (ElementMatch!21245 (c!1449532 C!42820)) (Concat!30104 (regOne!43002 Regex!21245) (regTwo!43002 Regex!21245)) (EmptyExpr!21245) (Star!21245 (reg!21574 Regex!21245)) (EmptyLang!21245) (Union!21245 (regOne!43003 Regex!21245) (regTwo!43003 Regex!21245)) )
))
(declare-datatypes ((TokenValueInjection!17024 0))(
  ( (TokenValueInjection!17025 (toValue!11579 Int) (toChars!11438 Int)) )
))
(declare-datatypes ((Rule!16884 0))(
  ( (Rule!16885 (regex!8542 Regex!21245) (tag!9406 String!82712) (isSeparator!8542 Bool) (transformation!8542 TokenValueInjection!17024)) )
))
(declare-datatypes ((List!74148 0))(
  ( (Nil!74024) (Cons!74024 (h!80472 Rule!16884) (t!388883 List!74148)) )
))
(declare-fun rulesArg!141 () List!74148)

(declare-fun rulesValidInductive!3353 (LexerInterface!8134 List!74148) Bool)

(assert (=> b!7897571 (= res!3132854 (rulesValidInductive!3353 thiss!14377 rulesArg!141))))

(declare-fun b!7897572 () Bool)

(declare-fun e!4661518 () Bool)

(declare-fun e!4661516 () Bool)

(assert (=> b!7897572 (= e!4661518 e!4661516)))

(declare-fun res!3132851 () Bool)

(assert (=> b!7897572 (=> res!3132851 e!4661516)))

(declare-fun lt!2681898 () List!74147)

(declare-datatypes ((Token!15504 0))(
  ( (Token!15505 (value!285428 TokenValue!8858) (rule!11820 Rule!16884) (size!42877 Int) (originalCharacters!8783 List!74147)) )
))
(declare-datatypes ((tuple2!70092 0))(
  ( (tuple2!70093 (_1!38349 Token!15504) (_2!38349 List!74147)) )
))
(declare-fun lt!2681896 () tuple2!70092)

(assert (=> b!7897572 (= res!3132851 (not (= lt!2681898 (originalCharacters!8783 (_1!38349 lt!2681896)))))))

(declare-fun list!19163 (BalanceConc!30550) List!74147)

(declare-fun charsOf!5491 (Token!15504) BalanceConc!30550)

(assert (=> b!7897572 (= lt!2681898 (list!19163 (charsOf!5491 (_1!38349 lt!2681896))))))

(declare-datatypes ((Option!17824 0))(
  ( (None!17823) (Some!17823 (v!54960 tuple2!70092)) )
))
(declare-fun lt!2681895 () Option!17824)

(declare-fun get!26572 (Option!17824) tuple2!70092)

(assert (=> b!7897572 (= lt!2681896 (get!26572 lt!2681895))))

(declare-fun b!7897573 () Bool)

(declare-fun res!3132847 () Bool)

(assert (=> b!7897573 (=> res!3132847 e!4661518)))

(declare-fun isDefined!14420 (Option!17824) Bool)

(assert (=> b!7897573 (= res!3132847 (not (isDefined!14420 lt!2681895)))))

(declare-fun e!4661511 () Bool)

(assert (=> b!7897574 (= e!4661511 (and tp!2352899 tp!2352902))))

(declare-fun b!7897575 () Bool)

(declare-fun res!3132855 () Bool)

(assert (=> b!7897575 (=> res!3132855 e!4661516)))

(declare-fun input!1184 () List!74147)

(declare-fun size!42878 (List!74147) Int)

(assert (=> b!7897575 (= res!3132855 (>= (size!42878 (_2!38349 lt!2681896)) (size!42878 input!1184)))))

(declare-fun tp!2352898 () Bool)

(declare-fun e!4661517 () Bool)

(declare-fun b!7897576 () Bool)

(declare-fun inv!95008 (String!82712) Bool)

(declare-fun inv!95010 (TokenValueInjection!17024) Bool)

(assert (=> b!7897576 (= e!4661517 (and tp!2352898 (inv!95008 (tag!9406 (h!80472 rulesArg!141))) (inv!95010 (transformation!8542 (h!80472 rulesArg!141))) e!4661511))))

(declare-fun b!7897577 () Bool)

(declare-fun res!3132848 () Bool)

(assert (=> b!7897577 (=> (not res!3132848) (not e!4661510))))

(declare-fun isEmpty!42460 (List!74148) Bool)

(assert (=> b!7897577 (= res!3132848 (not (isEmpty!42460 rulesArg!141)))))

(declare-fun b!7897578 () Bool)

(declare-fun res!3132850 () Bool)

(assert (=> b!7897578 (=> res!3132850 e!4661516)))

(declare-fun ++!18125 (List!74147 List!74147) List!74147)

(assert (=> b!7897578 (= res!3132850 (not (= (++!18125 lt!2681898 (_2!38349 lt!2681896)) input!1184)))))

(declare-fun b!7897579 () Bool)

(declare-fun e!4661514 () Bool)

(assert (=> b!7897579 (= e!4661514 e!4661518)))

(declare-fun res!3132852 () Bool)

(assert (=> b!7897579 (=> res!3132852 e!4661518)))

(declare-fun isEmpty!42461 (Option!17824) Bool)

(assert (=> b!7897579 (= res!3132852 (isEmpty!42461 lt!2681895))))

(declare-fun maxPrefixOneRule!3722 (LexerInterface!8134 Rule!16884 List!74147) Option!17824)

(assert (=> b!7897579 (= lt!2681895 (maxPrefixOneRule!3722 thiss!14377 (h!80472 rulesArg!141) input!1184))))

(declare-fun res!3132849 () Bool)

(assert (=> start!744872 (=> (not res!3132849) (not e!4661510))))

(get-info :version)

(assert (=> start!744872 (= res!3132849 ((_ is Lexer!8132) thiss!14377))))

(assert (=> start!744872 e!4661510))

(assert (=> start!744872 true))

(declare-fun e!4661515 () Bool)

(assert (=> start!744872 e!4661515))

(declare-fun e!4661513 () Bool)

(assert (=> start!744872 e!4661513))

(declare-fun b!7897580 () Bool)

(declare-fun validRegex!11639 (Regex!21245) Bool)

(assert (=> b!7897580 (= e!4661516 (validRegex!11639 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))))))

(declare-fun b!7897581 () Bool)

(declare-fun res!3132853 () Bool)

(assert (=> b!7897581 (=> res!3132853 e!4661516)))

(declare-fun apply!14306 (TokenValueInjection!17024 BalanceConc!30550) TokenValue!8858)

(declare-fun seqFromList!6124 (List!74147) BalanceConc!30550)

(assert (=> b!7897581 (= res!3132853 (not (= (value!285428 (_1!38349 lt!2681896)) (apply!14306 (transformation!8542 (rule!11820 (_1!38349 lt!2681896))) (seqFromList!6124 (originalCharacters!8783 (_1!38349 lt!2681896)))))))))

(declare-fun b!7897582 () Bool)

(assert (=> b!7897582 (= e!4661510 (not e!4661514))))

(declare-fun res!3132856 () Bool)

(assert (=> b!7897582 (=> res!3132856 e!4661514)))

(assert (=> b!7897582 (= res!3132856 (or (not ((_ is Cons!74024) rulesArg!141)) (not ((_ is Nil!74024) (t!388883 rulesArg!141)))))))

(declare-fun isPrefix!6375 (List!74147 List!74147) Bool)

(assert (=> b!7897582 (isPrefix!6375 input!1184 input!1184)))

(declare-datatypes ((Unit!169038 0))(
  ( (Unit!169039) )
))
(declare-fun lt!2681897 () Unit!169038)

(declare-fun lemmaIsPrefixRefl!3886 (List!74147 List!74147) Unit!169038)

(assert (=> b!7897582 (= lt!2681897 (lemmaIsPrefixRefl!3886 input!1184 input!1184))))

(declare-fun b!7897583 () Bool)

(declare-fun tp_is_empty!52865 () Bool)

(declare-fun tp!2352901 () Bool)

(assert (=> b!7897583 (= e!4661513 (and tp_is_empty!52865 tp!2352901))))

(declare-fun b!7897584 () Bool)

(declare-fun tp!2352900 () Bool)

(assert (=> b!7897584 (= e!4661515 (and e!4661517 tp!2352900))))

(assert (= (and start!744872 res!3132849) b!7897571))

(assert (= (and b!7897571 res!3132854) b!7897577))

(assert (= (and b!7897577 res!3132848) b!7897582))

(assert (= (and b!7897582 (not res!3132856)) b!7897579))

(assert (= (and b!7897579 (not res!3132852)) b!7897573))

(assert (= (and b!7897573 (not res!3132847)) b!7897572))

(assert (= (and b!7897572 (not res!3132851)) b!7897575))

(assert (= (and b!7897575 (not res!3132855)) b!7897578))

(assert (= (and b!7897578 (not res!3132850)) b!7897581))

(assert (= (and b!7897581 (not res!3132853)) b!7897580))

(assert (= b!7897576 b!7897574))

(assert (= b!7897584 b!7897576))

(assert (= (and start!744872 ((_ is Cons!74024) rulesArg!141)) b!7897584))

(assert (= (and start!744872 ((_ is Cons!74023) input!1184)) b!7897583))

(declare-fun m!8272692 () Bool)

(assert (=> b!7897577 m!8272692))

(declare-fun m!8272694 () Bool)

(assert (=> b!7897575 m!8272694))

(declare-fun m!8272696 () Bool)

(assert (=> b!7897575 m!8272696))

(declare-fun m!8272698 () Bool)

(assert (=> b!7897581 m!8272698))

(assert (=> b!7897581 m!8272698))

(declare-fun m!8272700 () Bool)

(assert (=> b!7897581 m!8272700))

(declare-fun m!8272702 () Bool)

(assert (=> b!7897578 m!8272702))

(declare-fun m!8272704 () Bool)

(assert (=> b!7897576 m!8272704))

(declare-fun m!8272706 () Bool)

(assert (=> b!7897576 m!8272706))

(declare-fun m!8272708 () Bool)

(assert (=> b!7897573 m!8272708))

(declare-fun m!8272710 () Bool)

(assert (=> b!7897580 m!8272710))

(declare-fun m!8272712 () Bool)

(assert (=> b!7897571 m!8272712))

(declare-fun m!8272714 () Bool)

(assert (=> b!7897582 m!8272714))

(declare-fun m!8272716 () Bool)

(assert (=> b!7897582 m!8272716))

(declare-fun m!8272718 () Bool)

(assert (=> b!7897572 m!8272718))

(assert (=> b!7897572 m!8272718))

(declare-fun m!8272720 () Bool)

(assert (=> b!7897572 m!8272720))

(declare-fun m!8272722 () Bool)

(assert (=> b!7897572 m!8272722))

(declare-fun m!8272724 () Bool)

(assert (=> b!7897579 m!8272724))

(declare-fun m!8272726 () Bool)

(assert (=> b!7897579 m!8272726))

(check-sat b_and!352347 (not b!7897572) (not b!7897575) (not b!7897579) (not b!7897582) tp_is_empty!52865 (not b!7897583) (not b!7897580) (not b!7897576) (not b!7897581) (not b_next!135285) b_and!352349 (not b!7897573) (not b!7897571) (not b!7897578) (not b_next!135287) (not b!7897577) (not b!7897584))
(check-sat b_and!352349 b_and!352347 (not b_next!135287) (not b_next!135285))
(get-model)

(declare-fun b!7897595 () Bool)

(declare-fun res!3132868 () Bool)

(declare-fun e!4661524 () Bool)

(assert (=> b!7897595 (=> (not res!3132868) (not e!4661524))))

(declare-fun lt!2681901 () List!74147)

(assert (=> b!7897595 (= res!3132868 (= (size!42878 lt!2681901) (+ (size!42878 lt!2681898) (size!42878 (_2!38349 lt!2681896)))))))

(declare-fun b!7897593 () Bool)

(declare-fun e!4661523 () List!74147)

(assert (=> b!7897593 (= e!4661523 (_2!38349 lt!2681896))))

(declare-fun b!7897596 () Bool)

(assert (=> b!7897596 (= e!4661524 (or (not (= (_2!38349 lt!2681896) Nil!74023)) (= lt!2681901 lt!2681898)))))

(declare-fun b!7897594 () Bool)

(assert (=> b!7897594 (= e!4661523 (Cons!74023 (h!80471 lt!2681898) (++!18125 (t!388882 lt!2681898) (_2!38349 lt!2681896))))))

(declare-fun d!2357563 () Bool)

(assert (=> d!2357563 e!4661524))

(declare-fun res!3132869 () Bool)

(assert (=> d!2357563 (=> (not res!3132869) (not e!4661524))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15705 (List!74147) (InoxSet C!42820))

(assert (=> d!2357563 (= res!3132869 (= (content!15705 lt!2681901) ((_ map or) (content!15705 lt!2681898) (content!15705 (_2!38349 lt!2681896)))))))

(assert (=> d!2357563 (= lt!2681901 e!4661523)))

(declare-fun c!1449535 () Bool)

(assert (=> d!2357563 (= c!1449535 ((_ is Nil!74023) lt!2681898))))

(assert (=> d!2357563 (= (++!18125 lt!2681898 (_2!38349 lt!2681896)) lt!2681901)))

(assert (= (and d!2357563 c!1449535) b!7897593))

(assert (= (and d!2357563 (not c!1449535)) b!7897594))

(assert (= (and d!2357563 res!3132869) b!7897595))

(assert (= (and b!7897595 res!3132868) b!7897596))

(declare-fun m!8272728 () Bool)

(assert (=> b!7897595 m!8272728))

(declare-fun m!8272730 () Bool)

(assert (=> b!7897595 m!8272730))

(assert (=> b!7897595 m!8272694))

(declare-fun m!8272732 () Bool)

(assert (=> b!7897594 m!8272732))

(declare-fun m!8272734 () Bool)

(assert (=> d!2357563 m!8272734))

(declare-fun m!8272736 () Bool)

(assert (=> d!2357563 m!8272736))

(declare-fun m!8272738 () Bool)

(assert (=> d!2357563 m!8272738))

(assert (=> b!7897578 d!2357563))

(declare-fun d!2357565 () Bool)

(assert (=> d!2357565 (= (isEmpty!42460 rulesArg!141) ((_ is Nil!74024) rulesArg!141))))

(assert (=> b!7897577 d!2357565))

(declare-fun d!2357567 () Bool)

(assert (=> d!2357567 (= (inv!95008 (tag!9406 (h!80472 rulesArg!141))) (= (mod (str.len (value!285427 (tag!9406 (h!80472 rulesArg!141)))) 2) 0))))

(assert (=> b!7897576 d!2357567))

(declare-fun d!2357569 () Bool)

(declare-fun res!3132872 () Bool)

(declare-fun e!4661527 () Bool)

(assert (=> d!2357569 (=> (not res!3132872) (not e!4661527))))

(declare-fun semiInverseModEq!3803 (Int Int) Bool)

(assert (=> d!2357569 (= res!3132872 (semiInverseModEq!3803 (toChars!11438 (transformation!8542 (h!80472 rulesArg!141))) (toValue!11579 (transformation!8542 (h!80472 rulesArg!141)))))))

(assert (=> d!2357569 (= (inv!95010 (transformation!8542 (h!80472 rulesArg!141))) e!4661527)))

(declare-fun b!7897599 () Bool)

(declare-fun equivClasses!3618 (Int Int) Bool)

(assert (=> b!7897599 (= e!4661527 (equivClasses!3618 (toChars!11438 (transformation!8542 (h!80472 rulesArg!141))) (toValue!11579 (transformation!8542 (h!80472 rulesArg!141)))))))

(assert (= (and d!2357569 res!3132872) b!7897599))

(declare-fun m!8272742 () Bool)

(assert (=> d!2357569 m!8272742))

(declare-fun m!8272744 () Bool)

(assert (=> b!7897599 m!8272744))

(assert (=> b!7897576 d!2357569))

(declare-fun d!2357575 () Bool)

(declare-fun lt!2681907 () Int)

(assert (=> d!2357575 (>= lt!2681907 0)))

(declare-fun e!4661532 () Int)

(assert (=> d!2357575 (= lt!2681907 e!4661532)))

(declare-fun c!1449538 () Bool)

(assert (=> d!2357575 (= c!1449538 ((_ is Nil!74023) (_2!38349 lt!2681896)))))

(assert (=> d!2357575 (= (size!42878 (_2!38349 lt!2681896)) lt!2681907)))

(declare-fun b!7897608 () Bool)

(assert (=> b!7897608 (= e!4661532 0)))

(declare-fun b!7897609 () Bool)

(assert (=> b!7897609 (= e!4661532 (+ 1 (size!42878 (t!388882 (_2!38349 lt!2681896)))))))

(assert (= (and d!2357575 c!1449538) b!7897608))

(assert (= (and d!2357575 (not c!1449538)) b!7897609))

(declare-fun m!8272746 () Bool)

(assert (=> b!7897609 m!8272746))

(assert (=> b!7897575 d!2357575))

(declare-fun d!2357577 () Bool)

(declare-fun lt!2681908 () Int)

(assert (=> d!2357577 (>= lt!2681908 0)))

(declare-fun e!4661534 () Int)

(assert (=> d!2357577 (= lt!2681908 e!4661534)))

(declare-fun c!1449539 () Bool)

(assert (=> d!2357577 (= c!1449539 ((_ is Nil!74023) input!1184))))

(assert (=> d!2357577 (= (size!42878 input!1184) lt!2681908)))

(declare-fun b!7897611 () Bool)

(assert (=> b!7897611 (= e!4661534 0)))

(declare-fun b!7897612 () Bool)

(assert (=> b!7897612 (= e!4661534 (+ 1 (size!42878 (t!388882 input!1184))))))

(assert (= (and d!2357577 c!1449539) b!7897611))

(assert (= (and d!2357577 (not c!1449539)) b!7897612))

(declare-fun m!8272748 () Bool)

(assert (=> b!7897612 m!8272748))

(assert (=> b!7897575 d!2357577))

(declare-fun d!2357579 () Bool)

(assert (=> d!2357579 (= (isDefined!14420 lt!2681895) (not (isEmpty!42461 lt!2681895)))))

(declare-fun bs!1967823 () Bool)

(assert (= bs!1967823 d!2357579))

(assert (=> bs!1967823 m!8272724))

(assert (=> b!7897573 d!2357579))

(declare-fun d!2357583 () Bool)

(declare-fun list!19165 (Conc!15716) List!74147)

(assert (=> d!2357583 (= (list!19163 (charsOf!5491 (_1!38349 lt!2681896))) (list!19165 (c!1449531 (charsOf!5491 (_1!38349 lt!2681896)))))))

(declare-fun bs!1967824 () Bool)

(assert (= bs!1967824 d!2357583))

(declare-fun m!8272758 () Bool)

(assert (=> bs!1967824 m!8272758))

(assert (=> b!7897572 d!2357583))

(declare-fun d!2357587 () Bool)

(declare-fun lt!2681913 () BalanceConc!30550)

(assert (=> d!2357587 (= (list!19163 lt!2681913) (originalCharacters!8783 (_1!38349 lt!2681896)))))

(declare-fun dynLambda!30018 (Int TokenValue!8858) BalanceConc!30550)

(assert (=> d!2357587 (= lt!2681913 (dynLambda!30018 (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (value!285428 (_1!38349 lt!2681896))))))

(assert (=> d!2357587 (= (charsOf!5491 (_1!38349 lt!2681896)) lt!2681913)))

(declare-fun b_lambda!289549 () Bool)

(assert (=> (not b_lambda!289549) (not d!2357587)))

(declare-fun t!388887 () Bool)

(declare-fun tb!262585 () Bool)

(assert (=> (and b!7897574 (= (toChars!11438 (transformation!8542 (h!80472 rulesArg!141))) (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896))))) t!388887) tb!262585))

(declare-fun b!7897625 () Bool)

(declare-fun e!4661541 () Bool)

(declare-fun tp!2352908 () Bool)

(declare-fun inv!95013 (Conc!15716) Bool)

(assert (=> b!7897625 (= e!4661541 (and (inv!95013 (c!1449531 (dynLambda!30018 (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (value!285428 (_1!38349 lt!2681896))))) tp!2352908))))

(declare-fun result!359554 () Bool)

(declare-fun inv!95014 (BalanceConc!30550) Bool)

(assert (=> tb!262585 (= result!359554 (and (inv!95014 (dynLambda!30018 (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (value!285428 (_1!38349 lt!2681896)))) e!4661541))))

(assert (= tb!262585 b!7897625))

(declare-fun m!8272760 () Bool)

(assert (=> b!7897625 m!8272760))

(declare-fun m!8272762 () Bool)

(assert (=> tb!262585 m!8272762))

(assert (=> d!2357587 t!388887))

(declare-fun b_and!352353 () Bool)

(assert (= b_and!352349 (and (=> t!388887 result!359554) b_and!352353)))

(declare-fun m!8272764 () Bool)

(assert (=> d!2357587 m!8272764))

(declare-fun m!8272766 () Bool)

(assert (=> d!2357587 m!8272766))

(assert (=> b!7897572 d!2357587))

(declare-fun d!2357589 () Bool)

(assert (=> d!2357589 (= (get!26572 lt!2681895) (v!54960 lt!2681895))))

(assert (=> b!7897572 d!2357589))

(declare-fun b!7897647 () Bool)

(declare-fun res!3132898 () Bool)

(declare-fun e!4661556 () Bool)

(assert (=> b!7897647 (=> (not res!3132898) (not e!4661556))))

(declare-fun head!16136 (List!74147) C!42820)

(assert (=> b!7897647 (= res!3132898 (= (head!16136 input!1184) (head!16136 input!1184)))))

(declare-fun b!7897648 () Bool)

(declare-fun tail!15679 (List!74147) List!74147)

(assert (=> b!7897648 (= e!4661556 (isPrefix!6375 (tail!15679 input!1184) (tail!15679 input!1184)))))

(declare-fun b!7897646 () Bool)

(declare-fun e!4661557 () Bool)

(assert (=> b!7897646 (= e!4661557 e!4661556)))

(declare-fun res!3132896 () Bool)

(assert (=> b!7897646 (=> (not res!3132896) (not e!4661556))))

(assert (=> b!7897646 (= res!3132896 (not ((_ is Nil!74023) input!1184)))))

(declare-fun d!2357591 () Bool)

(declare-fun e!4661558 () Bool)

(assert (=> d!2357591 e!4661558))

(declare-fun res!3132897 () Bool)

(assert (=> d!2357591 (=> res!3132897 e!4661558)))

(declare-fun lt!2681919 () Bool)

(assert (=> d!2357591 (= res!3132897 (not lt!2681919))))

(assert (=> d!2357591 (= lt!2681919 e!4661557)))

(declare-fun res!3132895 () Bool)

(assert (=> d!2357591 (=> res!3132895 e!4661557)))

(assert (=> d!2357591 (= res!3132895 ((_ is Nil!74023) input!1184))))

(assert (=> d!2357591 (= (isPrefix!6375 input!1184 input!1184) lt!2681919)))

(declare-fun b!7897649 () Bool)

(assert (=> b!7897649 (= e!4661558 (>= (size!42878 input!1184) (size!42878 input!1184)))))

(assert (= (and d!2357591 (not res!3132895)) b!7897646))

(assert (= (and b!7897646 res!3132896) b!7897647))

(assert (= (and b!7897647 res!3132898) b!7897648))

(assert (= (and d!2357591 (not res!3132897)) b!7897649))

(declare-fun m!8272780 () Bool)

(assert (=> b!7897647 m!8272780))

(assert (=> b!7897647 m!8272780))

(declare-fun m!8272782 () Bool)

(assert (=> b!7897648 m!8272782))

(assert (=> b!7897648 m!8272782))

(assert (=> b!7897648 m!8272782))

(assert (=> b!7897648 m!8272782))

(declare-fun m!8272784 () Bool)

(assert (=> b!7897648 m!8272784))

(assert (=> b!7897649 m!8272696))

(assert (=> b!7897649 m!8272696))

(assert (=> b!7897582 d!2357591))

(declare-fun d!2357595 () Bool)

(assert (=> d!2357595 (isPrefix!6375 input!1184 input!1184)))

(declare-fun lt!2681923 () Unit!169038)

(declare-fun choose!59703 (List!74147 List!74147) Unit!169038)

(assert (=> d!2357595 (= lt!2681923 (choose!59703 input!1184 input!1184))))

(assert (=> d!2357595 (= (lemmaIsPrefixRefl!3886 input!1184 input!1184) lt!2681923)))

(declare-fun bs!1967825 () Bool)

(assert (= bs!1967825 d!2357595))

(assert (=> bs!1967825 m!8272714))

(declare-fun m!8272792 () Bool)

(assert (=> bs!1967825 m!8272792))

(assert (=> b!7897582 d!2357595))

(declare-fun d!2357599 () Bool)

(assert (=> d!2357599 true))

(declare-fun lt!2681950 () Bool)

(declare-fun lambda!472348 () Int)

(declare-fun forall!18432 (List!74148 Int) Bool)

(assert (=> d!2357599 (= lt!2681950 (forall!18432 rulesArg!141 lambda!472348))))

(declare-fun e!4661614 () Bool)

(assert (=> d!2357599 (= lt!2681950 e!4661614)))

(declare-fun res!3132950 () Bool)

(assert (=> d!2357599 (=> res!3132950 e!4661614)))

(assert (=> d!2357599 (= res!3132950 (not ((_ is Cons!74024) rulesArg!141)))))

(assert (=> d!2357599 (= (rulesValidInductive!3353 thiss!14377 rulesArg!141) lt!2681950)))

(declare-fun b!7897729 () Bool)

(declare-fun e!4661613 () Bool)

(assert (=> b!7897729 (= e!4661614 e!4661613)))

(declare-fun res!3132951 () Bool)

(assert (=> b!7897729 (=> (not res!3132951) (not e!4661613))))

(declare-fun ruleValid!3923 (LexerInterface!8134 Rule!16884) Bool)

(assert (=> b!7897729 (= res!3132951 (ruleValid!3923 thiss!14377 (h!80472 rulesArg!141)))))

(declare-fun b!7897730 () Bool)

(assert (=> b!7897730 (= e!4661613 (rulesValidInductive!3353 thiss!14377 (t!388883 rulesArg!141)))))

(assert (= (and d!2357599 (not res!3132950)) b!7897729))

(assert (= (and b!7897729 res!3132951) b!7897730))

(declare-fun m!8272860 () Bool)

(assert (=> d!2357599 m!8272860))

(declare-fun m!8272862 () Bool)

(assert (=> b!7897729 m!8272862))

(declare-fun m!8272864 () Bool)

(assert (=> b!7897730 m!8272864))

(assert (=> b!7897571 d!2357599))

(declare-fun d!2357625 () Bool)

(declare-fun dynLambda!30019 (Int BalanceConc!30550) TokenValue!8858)

(assert (=> d!2357625 (= (apply!14306 (transformation!8542 (rule!11820 (_1!38349 lt!2681896))) (seqFromList!6124 (originalCharacters!8783 (_1!38349 lt!2681896)))) (dynLambda!30019 (toValue!11579 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (seqFromList!6124 (originalCharacters!8783 (_1!38349 lt!2681896)))))))

(declare-fun b_lambda!289553 () Bool)

(assert (=> (not b_lambda!289553) (not d!2357625)))

(declare-fun tb!262589 () Bool)

(declare-fun t!388891 () Bool)

(assert (=> (and b!7897574 (= (toValue!11579 (transformation!8542 (h!80472 rulesArg!141))) (toValue!11579 (transformation!8542 (rule!11820 (_1!38349 lt!2681896))))) t!388891) tb!262589))

(declare-fun result!359562 () Bool)

(declare-fun inv!21 (TokenValue!8858) Bool)

(assert (=> tb!262589 (= result!359562 (inv!21 (dynLambda!30019 (toValue!11579 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (seqFromList!6124 (originalCharacters!8783 (_1!38349 lt!2681896))))))))

(declare-fun m!8272866 () Bool)

(assert (=> tb!262589 m!8272866))

(assert (=> d!2357625 t!388891))

(declare-fun b_and!352357 () Bool)

(assert (= b_and!352347 (and (=> t!388891 result!359562) b_and!352357)))

(assert (=> d!2357625 m!8272698))

(declare-fun m!8272868 () Bool)

(assert (=> d!2357625 m!8272868))

(assert (=> b!7897581 d!2357625))

(declare-fun d!2357627 () Bool)

(declare-fun fromListB!2770 (List!74147) BalanceConc!30550)

(assert (=> d!2357627 (= (seqFromList!6124 (originalCharacters!8783 (_1!38349 lt!2681896))) (fromListB!2770 (originalCharacters!8783 (_1!38349 lt!2681896))))))

(declare-fun bs!1967829 () Bool)

(assert (= bs!1967829 d!2357627))

(declare-fun m!8272870 () Bool)

(assert (=> bs!1967829 m!8272870))

(assert (=> b!7897581 d!2357627))

(declare-fun b!7897753 () Bool)

(declare-fun e!4661633 () Bool)

(declare-fun call!732974 () Bool)

(assert (=> b!7897753 (= e!4661633 call!732974)))

(declare-fun b!7897754 () Bool)

(declare-fun e!4661638 () Bool)

(declare-fun call!732973 () Bool)

(assert (=> b!7897754 (= e!4661638 call!732973)))

(declare-fun d!2357629 () Bool)

(declare-fun res!3132962 () Bool)

(declare-fun e!4661634 () Bool)

(assert (=> d!2357629 (=> res!3132962 e!4661634)))

(assert (=> d!2357629 (= res!3132962 ((_ is ElementMatch!21245) (regex!8542 (rule!11820 (_1!38349 lt!2681896)))))))

(assert (=> d!2357629 (= (validRegex!11639 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) e!4661634)))

(declare-fun bm!732967 () Bool)

(declare-fun call!732972 () Bool)

(assert (=> bm!732967 (= call!732972 call!732974)))

(declare-fun b!7897755 () Bool)

(declare-fun e!4661637 () Bool)

(declare-fun e!4661636 () Bool)

(assert (=> b!7897755 (= e!4661637 e!4661636)))

(declare-fun c!1449560 () Bool)

(assert (=> b!7897755 (= c!1449560 ((_ is Union!21245) (regex!8542 (rule!11820 (_1!38349 lt!2681896)))))))

(declare-fun bm!732968 () Bool)

(declare-fun c!1449561 () Bool)

(assert (=> bm!732968 (= call!732974 (validRegex!11639 (ite c!1449561 (reg!21574 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (ite c!1449560 (regOne!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regTwo!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896))))))))))

(declare-fun b!7897756 () Bool)

(declare-fun e!4661635 () Bool)

(assert (=> b!7897756 (= e!4661635 call!732972)))

(declare-fun b!7897757 () Bool)

(assert (=> b!7897757 (= e!4661634 e!4661637)))

(assert (=> b!7897757 (= c!1449561 ((_ is Star!21245) (regex!8542 (rule!11820 (_1!38349 lt!2681896)))))))

(declare-fun b!7897758 () Bool)

(declare-fun res!3132964 () Bool)

(declare-fun e!4661632 () Bool)

(assert (=> b!7897758 (=> res!3132964 e!4661632)))

(assert (=> b!7897758 (= res!3132964 (not ((_ is Concat!30104) (regex!8542 (rule!11820 (_1!38349 lt!2681896))))))))

(assert (=> b!7897758 (= e!4661636 e!4661632)))

(declare-fun b!7897759 () Bool)

(assert (=> b!7897759 (= e!4661637 e!4661633)))

(declare-fun res!3132963 () Bool)

(declare-fun nullable!9478 (Regex!21245) Bool)

(assert (=> b!7897759 (= res!3132963 (not (nullable!9478 (reg!21574 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))))))))

(assert (=> b!7897759 (=> (not res!3132963) (not e!4661633))))

(declare-fun b!7897760 () Bool)

(assert (=> b!7897760 (= e!4661632 e!4661635)))

(declare-fun res!3132966 () Bool)

(assert (=> b!7897760 (=> (not res!3132966) (not e!4661635))))

(assert (=> b!7897760 (= res!3132966 call!732973)))

(declare-fun bm!732969 () Bool)

(assert (=> bm!732969 (= call!732973 (validRegex!11639 (ite c!1449560 (regTwo!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regOne!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))))))))

(declare-fun b!7897761 () Bool)

(declare-fun res!3132965 () Bool)

(assert (=> b!7897761 (=> (not res!3132965) (not e!4661638))))

(assert (=> b!7897761 (= res!3132965 call!732972)))

(assert (=> b!7897761 (= e!4661636 e!4661638)))

(assert (= (and d!2357629 (not res!3132962)) b!7897757))

(assert (= (and b!7897757 c!1449561) b!7897759))

(assert (= (and b!7897757 (not c!1449561)) b!7897755))

(assert (= (and b!7897759 res!3132963) b!7897753))

(assert (= (and b!7897755 c!1449560) b!7897761))

(assert (= (and b!7897755 (not c!1449560)) b!7897758))

(assert (= (and b!7897761 res!3132965) b!7897754))

(assert (= (and b!7897758 (not res!3132964)) b!7897760))

(assert (= (and b!7897760 res!3132966) b!7897756))

(assert (= (or b!7897761 b!7897756) bm!732967))

(assert (= (or b!7897754 b!7897760) bm!732969))

(assert (= (or b!7897753 bm!732967) bm!732968))

(declare-fun m!8272872 () Bool)

(assert (=> bm!732968 m!8272872))

(declare-fun m!8272874 () Bool)

(assert (=> b!7897759 m!8272874))

(declare-fun m!8272876 () Bool)

(assert (=> bm!732969 m!8272876))

(assert (=> b!7897580 d!2357629))

(declare-fun d!2357631 () Bool)

(assert (=> d!2357631 (= (isEmpty!42461 lt!2681895) (not ((_ is Some!17823) lt!2681895)))))

(assert (=> b!7897579 d!2357631))

(declare-fun b!7897814 () Bool)

(declare-fun res!3132983 () Bool)

(declare-fun e!4661667 () Bool)

(assert (=> b!7897814 (=> (not res!3132983) (not e!4661667))))

(declare-fun lt!2681963 () Option!17824)

(assert (=> b!7897814 (= res!3132983 (= (value!285428 (_1!38349 (get!26572 lt!2681963))) (apply!14306 (transformation!8542 (rule!11820 (_1!38349 (get!26572 lt!2681963)))) (seqFromList!6124 (originalCharacters!8783 (_1!38349 (get!26572 lt!2681963)))))))))

(declare-fun b!7897815 () Bool)

(declare-fun e!4661669 () Option!17824)

(assert (=> b!7897815 (= e!4661669 None!17823)))

(declare-fun d!2357633 () Bool)

(declare-fun e!4661670 () Bool)

(assert (=> d!2357633 e!4661670))

(declare-fun res!3132986 () Bool)

(assert (=> d!2357633 (=> res!3132986 e!4661670)))

(assert (=> d!2357633 (= res!3132986 (isEmpty!42461 lt!2681963))))

(assert (=> d!2357633 (= lt!2681963 e!4661669)))

(declare-fun c!1449564 () Bool)

(declare-datatypes ((tuple2!70096 0))(
  ( (tuple2!70097 (_1!38351 List!74147) (_2!38351 List!74147)) )
))
(declare-fun lt!2681965 () tuple2!70096)

(declare-fun isEmpty!42463 (List!74147) Bool)

(assert (=> d!2357633 (= c!1449564 (isEmpty!42463 (_1!38351 lt!2681965)))))

(declare-fun findLongestMatch!1911 (Regex!21245 List!74147) tuple2!70096)

(assert (=> d!2357633 (= lt!2681965 (findLongestMatch!1911 (regex!8542 (h!80472 rulesArg!141)) input!1184))))

(assert (=> d!2357633 (ruleValid!3923 thiss!14377 (h!80472 rulesArg!141))))

(assert (=> d!2357633 (= (maxPrefixOneRule!3722 thiss!14377 (h!80472 rulesArg!141) input!1184) lt!2681963)))

(declare-fun b!7897816 () Bool)

(declare-fun size!42880 (BalanceConc!30550) Int)

(assert (=> b!7897816 (= e!4661669 (Some!17823 (tuple2!70093 (Token!15505 (apply!14306 (transformation!8542 (h!80472 rulesArg!141)) (seqFromList!6124 (_1!38351 lt!2681965))) (h!80472 rulesArg!141) (size!42880 (seqFromList!6124 (_1!38351 lt!2681965))) (_1!38351 lt!2681965)) (_2!38351 lt!2681965))))))

(declare-fun lt!2681966 () Unit!169038)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2107 (Regex!21245 List!74147) Unit!169038)

(assert (=> b!7897816 (= lt!2681966 (longestMatchIsAcceptedByMatchOrIsEmpty!2107 (regex!8542 (h!80472 rulesArg!141)) input!1184))))

(declare-fun res!3132987 () Bool)

(declare-fun findLongestMatchInner!2144 (Regex!21245 List!74147 Int List!74147 List!74147 Int) tuple2!70096)

(assert (=> b!7897816 (= res!3132987 (isEmpty!42463 (_1!38351 (findLongestMatchInner!2144 (regex!8542 (h!80472 rulesArg!141)) Nil!74023 (size!42878 Nil!74023) input!1184 input!1184 (size!42878 input!1184)))))))

(declare-fun e!4661668 () Bool)

(assert (=> b!7897816 (=> res!3132987 e!4661668)))

(assert (=> b!7897816 e!4661668))

(declare-fun lt!2681962 () Unit!169038)

(assert (=> b!7897816 (= lt!2681962 lt!2681966)))

(declare-fun lt!2681964 () Unit!169038)

(declare-fun lemmaSemiInverse!2654 (TokenValueInjection!17024 BalanceConc!30550) Unit!169038)

(assert (=> b!7897816 (= lt!2681964 (lemmaSemiInverse!2654 (transformation!8542 (h!80472 rulesArg!141)) (seqFromList!6124 (_1!38351 lt!2681965))))))

(declare-fun b!7897817 () Bool)

(declare-fun res!3132985 () Bool)

(assert (=> b!7897817 (=> (not res!3132985) (not e!4661667))))

(assert (=> b!7897817 (= res!3132985 (= (rule!11820 (_1!38349 (get!26572 lt!2681963))) (h!80472 rulesArg!141)))))

(declare-fun b!7897818 () Bool)

(assert (=> b!7897818 (= e!4661667 (= (size!42877 (_1!38349 (get!26572 lt!2681963))) (size!42878 (originalCharacters!8783 (_1!38349 (get!26572 lt!2681963))))))))

(declare-fun b!7897819 () Bool)

(declare-fun res!3132984 () Bool)

(assert (=> b!7897819 (=> (not res!3132984) (not e!4661667))))

(assert (=> b!7897819 (= res!3132984 (< (size!42878 (_2!38349 (get!26572 lt!2681963))) (size!42878 input!1184)))))

(declare-fun b!7897820 () Bool)

(declare-fun matchR!10629 (Regex!21245 List!74147) Bool)

(assert (=> b!7897820 (= e!4661668 (matchR!10629 (regex!8542 (h!80472 rulesArg!141)) (_1!38351 (findLongestMatchInner!2144 (regex!8542 (h!80472 rulesArg!141)) Nil!74023 (size!42878 Nil!74023) input!1184 input!1184 (size!42878 input!1184)))))))

(declare-fun b!7897821 () Bool)

(assert (=> b!7897821 (= e!4661670 e!4661667)))

(declare-fun res!3132988 () Bool)

(assert (=> b!7897821 (=> (not res!3132988) (not e!4661667))))

(assert (=> b!7897821 (= res!3132988 (matchR!10629 (regex!8542 (h!80472 rulesArg!141)) (list!19163 (charsOf!5491 (_1!38349 (get!26572 lt!2681963))))))))

(declare-fun b!7897822 () Bool)

(declare-fun res!3132989 () Bool)

(assert (=> b!7897822 (=> (not res!3132989) (not e!4661667))))

(assert (=> b!7897822 (= res!3132989 (= (++!18125 (list!19163 (charsOf!5491 (_1!38349 (get!26572 lt!2681963)))) (_2!38349 (get!26572 lt!2681963))) input!1184))))

(assert (= (and d!2357633 c!1449564) b!7897815))

(assert (= (and d!2357633 (not c!1449564)) b!7897816))

(assert (= (and b!7897816 (not res!3132987)) b!7897820))

(assert (= (and d!2357633 (not res!3132986)) b!7897821))

(assert (= (and b!7897821 res!3132988) b!7897822))

(assert (= (and b!7897822 res!3132989) b!7897819))

(assert (= (and b!7897819 res!3132984) b!7897817))

(assert (= (and b!7897817 res!3132985) b!7897814))

(assert (= (and b!7897814 res!3132983) b!7897818))

(declare-fun m!8272886 () Bool)

(assert (=> b!7897820 m!8272886))

(assert (=> b!7897820 m!8272696))

(assert (=> b!7897820 m!8272886))

(assert (=> b!7897820 m!8272696))

(declare-fun m!8272888 () Bool)

(assert (=> b!7897820 m!8272888))

(declare-fun m!8272890 () Bool)

(assert (=> b!7897820 m!8272890))

(declare-fun m!8272892 () Bool)

(assert (=> b!7897821 m!8272892))

(declare-fun m!8272894 () Bool)

(assert (=> b!7897821 m!8272894))

(assert (=> b!7897821 m!8272894))

(declare-fun m!8272896 () Bool)

(assert (=> b!7897821 m!8272896))

(assert (=> b!7897821 m!8272896))

(declare-fun m!8272898 () Bool)

(assert (=> b!7897821 m!8272898))

(assert (=> b!7897818 m!8272892))

(declare-fun m!8272900 () Bool)

(assert (=> b!7897818 m!8272900))

(assert (=> b!7897819 m!8272892))

(declare-fun m!8272902 () Bool)

(assert (=> b!7897819 m!8272902))

(assert (=> b!7897819 m!8272696))

(assert (=> b!7897817 m!8272892))

(assert (=> b!7897822 m!8272892))

(assert (=> b!7897822 m!8272894))

(assert (=> b!7897822 m!8272894))

(assert (=> b!7897822 m!8272896))

(assert (=> b!7897822 m!8272896))

(declare-fun m!8272904 () Bool)

(assert (=> b!7897822 m!8272904))

(assert (=> b!7897816 m!8272696))

(assert (=> b!7897816 m!8272886))

(declare-fun m!8272906 () Bool)

(assert (=> b!7897816 m!8272906))

(assert (=> b!7897816 m!8272906))

(declare-fun m!8272908 () Bool)

(assert (=> b!7897816 m!8272908))

(assert (=> b!7897816 m!8272886))

(assert (=> b!7897816 m!8272696))

(assert (=> b!7897816 m!8272888))

(declare-fun m!8272910 () Bool)

(assert (=> b!7897816 m!8272910))

(assert (=> b!7897816 m!8272906))

(declare-fun m!8272912 () Bool)

(assert (=> b!7897816 m!8272912))

(declare-fun m!8272914 () Bool)

(assert (=> b!7897816 m!8272914))

(assert (=> b!7897816 m!8272906))

(declare-fun m!8272916 () Bool)

(assert (=> b!7897816 m!8272916))

(declare-fun m!8272918 () Bool)

(assert (=> d!2357633 m!8272918))

(declare-fun m!8272920 () Bool)

(assert (=> d!2357633 m!8272920))

(declare-fun m!8272922 () Bool)

(assert (=> d!2357633 m!8272922))

(assert (=> d!2357633 m!8272862))

(assert (=> b!7897814 m!8272892))

(declare-fun m!8272924 () Bool)

(assert (=> b!7897814 m!8272924))

(assert (=> b!7897814 m!8272924))

(declare-fun m!8272926 () Bool)

(assert (=> b!7897814 m!8272926))

(assert (=> b!7897579 d!2357633))

(declare-fun b!7897833 () Bool)

(declare-fun b_free!134503 () Bool)

(declare-fun b_next!135293 () Bool)

(assert (=> b!7897833 (= b_free!134503 (not b_next!135293))))

(declare-fun t!388897 () Bool)

(declare-fun tb!262595 () Bool)

(assert (=> (and b!7897833 (= (toValue!11579 (transformation!8542 (h!80472 (t!388883 rulesArg!141)))) (toValue!11579 (transformation!8542 (rule!11820 (_1!38349 lt!2681896))))) t!388897) tb!262595))

(declare-fun result!359578 () Bool)

(assert (= result!359578 result!359562))

(assert (=> d!2357625 t!388897))

(declare-fun b_and!352363 () Bool)

(declare-fun tp!2352950 () Bool)

(assert (=> b!7897833 (= tp!2352950 (and (=> t!388897 result!359578) b_and!352363))))

(declare-fun b_free!134505 () Bool)

(declare-fun b_next!135295 () Bool)

(assert (=> b!7897833 (= b_free!134505 (not b_next!135295))))

(declare-fun t!388899 () Bool)

(declare-fun tb!262597 () Bool)

(assert (=> (and b!7897833 (= (toChars!11438 (transformation!8542 (h!80472 (t!388883 rulesArg!141)))) (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896))))) t!388899) tb!262597))

(declare-fun result!359580 () Bool)

(assert (= result!359580 result!359554))

(assert (=> d!2357587 t!388899))

(declare-fun b_and!352365 () Bool)

(declare-fun tp!2352948 () Bool)

(assert (=> b!7897833 (= tp!2352948 (and (=> t!388899 result!359580) b_and!352365))))

(declare-fun e!4661681 () Bool)

(assert (=> b!7897833 (= e!4661681 (and tp!2352950 tp!2352948))))

(declare-fun tp!2352949 () Bool)

(declare-fun b!7897832 () Bool)

(declare-fun e!4661680 () Bool)

(assert (=> b!7897832 (= e!4661680 (and tp!2352949 (inv!95008 (tag!9406 (h!80472 (t!388883 rulesArg!141)))) (inv!95010 (transformation!8542 (h!80472 (t!388883 rulesArg!141)))) e!4661681))))

(declare-fun b!7897831 () Bool)

(declare-fun e!4661679 () Bool)

(declare-fun tp!2352947 () Bool)

(assert (=> b!7897831 (= e!4661679 (and e!4661680 tp!2352947))))

(assert (=> b!7897584 (= tp!2352900 e!4661679)))

(assert (= b!7897832 b!7897833))

(assert (= b!7897831 b!7897832))

(assert (= (and b!7897584 ((_ is Cons!74024) (t!388883 rulesArg!141))) b!7897831))

(declare-fun m!8272928 () Bool)

(assert (=> b!7897832 m!8272928))

(declare-fun m!8272930 () Bool)

(assert (=> b!7897832 m!8272930))

(declare-fun b!7897838 () Bool)

(declare-fun e!4661685 () Bool)

(declare-fun tp!2352953 () Bool)

(assert (=> b!7897838 (= e!4661685 (and tp_is_empty!52865 tp!2352953))))

(assert (=> b!7897583 (= tp!2352901 e!4661685)))

(assert (= (and b!7897583 ((_ is Cons!74023) (t!388882 input!1184))) b!7897838))

(declare-fun b!7897849 () Bool)

(declare-fun e!4661688 () Bool)

(assert (=> b!7897849 (= e!4661688 tp_is_empty!52865)))

(declare-fun b!7897851 () Bool)

(declare-fun tp!2352966 () Bool)

(assert (=> b!7897851 (= e!4661688 tp!2352966)))

(assert (=> b!7897576 (= tp!2352898 e!4661688)))

(declare-fun b!7897850 () Bool)

(declare-fun tp!2352964 () Bool)

(declare-fun tp!2352965 () Bool)

(assert (=> b!7897850 (= e!4661688 (and tp!2352964 tp!2352965))))

(declare-fun b!7897852 () Bool)

(declare-fun tp!2352968 () Bool)

(declare-fun tp!2352967 () Bool)

(assert (=> b!7897852 (= e!4661688 (and tp!2352968 tp!2352967))))

(assert (= (and b!7897576 ((_ is ElementMatch!21245) (regex!8542 (h!80472 rulesArg!141)))) b!7897849))

(assert (= (and b!7897576 ((_ is Concat!30104) (regex!8542 (h!80472 rulesArg!141)))) b!7897850))

(assert (= (and b!7897576 ((_ is Star!21245) (regex!8542 (h!80472 rulesArg!141)))) b!7897851))

(assert (= (and b!7897576 ((_ is Union!21245) (regex!8542 (h!80472 rulesArg!141)))) b!7897852))

(check-sat (not b!7897850) (not b!7897609) (not b!7897625) (not b!7897831) (not b!7897819) (not b!7897820) (not b!7897814) (not bm!732968) (not d!2357627) (not d!2357587) (not d!2357563) (not d!2357569) (not b!7897816) (not b!7897818) (not b!7897595) b_and!352357 (not b!7897594) (not b!7897649) (not b!7897648) (not d!2357599) (not b!7897838) (not b!7897821) (not b!7897599) (not b!7897730) tp_is_empty!52865 (not b_lambda!289553) (not d!2357583) (not bm!732969) (not b!7897822) (not d!2357579) (not b!7897817) (not tb!262585) b_and!352363 (not d!2357633) (not d!2357595) (not b!7897759) (not b_next!135293) b_and!352353 (not b!7897851) (not b_next!135285) (not b_lambda!289549) (not tb!262589) (not b_next!135287) b_and!352365 (not b!7897832) (not b!7897647) (not b!7897852) (not b!7897729) (not b!7897612) (not b_next!135295))
(check-sat b_and!352357 b_and!352363 (not b_next!135285) (not b_next!135287) b_and!352365 (not b_next!135295) (not b_next!135293) b_and!352353)
(get-model)

(declare-fun b!7897853 () Bool)

(declare-fun e!4661690 () Bool)

(declare-fun call!732977 () Bool)

(assert (=> b!7897853 (= e!4661690 call!732977)))

(declare-fun b!7897854 () Bool)

(declare-fun e!4661695 () Bool)

(declare-fun call!732976 () Bool)

(assert (=> b!7897854 (= e!4661695 call!732976)))

(declare-fun d!2357635 () Bool)

(declare-fun res!3132990 () Bool)

(declare-fun e!4661691 () Bool)

(assert (=> d!2357635 (=> res!3132990 e!4661691)))

(assert (=> d!2357635 (= res!3132990 ((_ is ElementMatch!21245) (ite c!1449561 (reg!21574 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (ite c!1449560 (regOne!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regTwo!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896))))))))))

(assert (=> d!2357635 (= (validRegex!11639 (ite c!1449561 (reg!21574 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (ite c!1449560 (regOne!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regTwo!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896))))))) e!4661691)))

(declare-fun bm!732970 () Bool)

(declare-fun call!732975 () Bool)

(assert (=> bm!732970 (= call!732975 call!732977)))

(declare-fun b!7897855 () Bool)

(declare-fun e!4661694 () Bool)

(declare-fun e!4661693 () Bool)

(assert (=> b!7897855 (= e!4661694 e!4661693)))

(declare-fun c!1449565 () Bool)

(assert (=> b!7897855 (= c!1449565 ((_ is Union!21245) (ite c!1449561 (reg!21574 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (ite c!1449560 (regOne!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regTwo!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896))))))))))

(declare-fun bm!732971 () Bool)

(declare-fun c!1449566 () Bool)

(assert (=> bm!732971 (= call!732977 (validRegex!11639 (ite c!1449566 (reg!21574 (ite c!1449561 (reg!21574 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (ite c!1449560 (regOne!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regTwo!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896))))))) (ite c!1449565 (regOne!43003 (ite c!1449561 (reg!21574 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (ite c!1449560 (regOne!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regTwo!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896))))))) (regTwo!43002 (ite c!1449561 (reg!21574 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (ite c!1449560 (regOne!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regTwo!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))))))))))))

(declare-fun b!7897856 () Bool)

(declare-fun e!4661692 () Bool)

(assert (=> b!7897856 (= e!4661692 call!732975)))

(declare-fun b!7897857 () Bool)

(assert (=> b!7897857 (= e!4661691 e!4661694)))

(assert (=> b!7897857 (= c!1449566 ((_ is Star!21245) (ite c!1449561 (reg!21574 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (ite c!1449560 (regOne!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regTwo!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896))))))))))

(declare-fun b!7897858 () Bool)

(declare-fun res!3132992 () Bool)

(declare-fun e!4661689 () Bool)

(assert (=> b!7897858 (=> res!3132992 e!4661689)))

(assert (=> b!7897858 (= res!3132992 (not ((_ is Concat!30104) (ite c!1449561 (reg!21574 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (ite c!1449560 (regOne!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regTwo!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))))))))))

(assert (=> b!7897858 (= e!4661693 e!4661689)))

(declare-fun b!7897859 () Bool)

(assert (=> b!7897859 (= e!4661694 e!4661690)))

(declare-fun res!3132991 () Bool)

(assert (=> b!7897859 (= res!3132991 (not (nullable!9478 (reg!21574 (ite c!1449561 (reg!21574 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (ite c!1449560 (regOne!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regTwo!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896))))))))))))

(assert (=> b!7897859 (=> (not res!3132991) (not e!4661690))))

(declare-fun b!7897860 () Bool)

(assert (=> b!7897860 (= e!4661689 e!4661692)))

(declare-fun res!3132994 () Bool)

(assert (=> b!7897860 (=> (not res!3132994) (not e!4661692))))

(assert (=> b!7897860 (= res!3132994 call!732976)))

(declare-fun bm!732972 () Bool)

(assert (=> bm!732972 (= call!732976 (validRegex!11639 (ite c!1449565 (regTwo!43003 (ite c!1449561 (reg!21574 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (ite c!1449560 (regOne!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regTwo!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896))))))) (regOne!43002 (ite c!1449561 (reg!21574 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (ite c!1449560 (regOne!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regTwo!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896))))))))))))

(declare-fun b!7897861 () Bool)

(declare-fun res!3132993 () Bool)

(assert (=> b!7897861 (=> (not res!3132993) (not e!4661695))))

(assert (=> b!7897861 (= res!3132993 call!732975)))

(assert (=> b!7897861 (= e!4661693 e!4661695)))

(assert (= (and d!2357635 (not res!3132990)) b!7897857))

(assert (= (and b!7897857 c!1449566) b!7897859))

(assert (= (and b!7897857 (not c!1449566)) b!7897855))

(assert (= (and b!7897859 res!3132991) b!7897853))

(assert (= (and b!7897855 c!1449565) b!7897861))

(assert (= (and b!7897855 (not c!1449565)) b!7897858))

(assert (= (and b!7897861 res!3132993) b!7897854))

(assert (= (and b!7897858 (not res!3132992)) b!7897860))

(assert (= (and b!7897860 res!3132994) b!7897856))

(assert (= (or b!7897861 b!7897856) bm!732970))

(assert (= (or b!7897854 b!7897860) bm!732972))

(assert (= (or b!7897853 bm!732970) bm!732971))

(declare-fun m!8272932 () Bool)

(assert (=> bm!732971 m!8272932))

(declare-fun m!8272934 () Bool)

(assert (=> b!7897859 m!8272934))

(declare-fun m!8272936 () Bool)

(assert (=> bm!732972 m!8272936))

(assert (=> bm!732968 d!2357635))

(declare-fun d!2357637 () Bool)

(declare-fun res!3132999 () Bool)

(declare-fun e!4661700 () Bool)

(assert (=> d!2357637 (=> res!3132999 e!4661700)))

(assert (=> d!2357637 (= res!3132999 ((_ is Nil!74024) rulesArg!141))))

(assert (=> d!2357637 (= (forall!18432 rulesArg!141 lambda!472348) e!4661700)))

(declare-fun b!7897866 () Bool)

(declare-fun e!4661701 () Bool)

(assert (=> b!7897866 (= e!4661700 e!4661701)))

(declare-fun res!3133000 () Bool)

(assert (=> b!7897866 (=> (not res!3133000) (not e!4661701))))

(declare-fun dynLambda!30020 (Int Rule!16884) Bool)

(assert (=> b!7897866 (= res!3133000 (dynLambda!30020 lambda!472348 (h!80472 rulesArg!141)))))

(declare-fun b!7897867 () Bool)

(assert (=> b!7897867 (= e!4661701 (forall!18432 (t!388883 rulesArg!141) lambda!472348))))

(assert (= (and d!2357637 (not res!3132999)) b!7897866))

(assert (= (and b!7897866 res!3133000) b!7897867))

(declare-fun b_lambda!289555 () Bool)

(assert (=> (not b_lambda!289555) (not b!7897866)))

(declare-fun m!8272938 () Bool)

(assert (=> b!7897866 m!8272938))

(declare-fun m!8272940 () Bool)

(assert (=> b!7897867 m!8272940))

(assert (=> d!2357599 d!2357637))

(declare-fun b!7897870 () Bool)

(declare-fun res!3133001 () Bool)

(declare-fun e!4661703 () Bool)

(assert (=> b!7897870 (=> (not res!3133001) (not e!4661703))))

(declare-fun lt!2681967 () List!74147)

(assert (=> b!7897870 (= res!3133001 (= (size!42878 lt!2681967) (+ (size!42878 (list!19163 (charsOf!5491 (_1!38349 (get!26572 lt!2681963))))) (size!42878 (_2!38349 (get!26572 lt!2681963))))))))

(declare-fun b!7897868 () Bool)

(declare-fun e!4661702 () List!74147)

(assert (=> b!7897868 (= e!4661702 (_2!38349 (get!26572 lt!2681963)))))

(declare-fun b!7897871 () Bool)

(assert (=> b!7897871 (= e!4661703 (or (not (= (_2!38349 (get!26572 lt!2681963)) Nil!74023)) (= lt!2681967 (list!19163 (charsOf!5491 (_1!38349 (get!26572 lt!2681963)))))))))

(declare-fun b!7897869 () Bool)

(assert (=> b!7897869 (= e!4661702 (Cons!74023 (h!80471 (list!19163 (charsOf!5491 (_1!38349 (get!26572 lt!2681963))))) (++!18125 (t!388882 (list!19163 (charsOf!5491 (_1!38349 (get!26572 lt!2681963))))) (_2!38349 (get!26572 lt!2681963)))))))

(declare-fun d!2357639 () Bool)

(assert (=> d!2357639 e!4661703))

(declare-fun res!3133002 () Bool)

(assert (=> d!2357639 (=> (not res!3133002) (not e!4661703))))

(assert (=> d!2357639 (= res!3133002 (= (content!15705 lt!2681967) ((_ map or) (content!15705 (list!19163 (charsOf!5491 (_1!38349 (get!26572 lt!2681963))))) (content!15705 (_2!38349 (get!26572 lt!2681963))))))))

(assert (=> d!2357639 (= lt!2681967 e!4661702)))

(declare-fun c!1449567 () Bool)

(assert (=> d!2357639 (= c!1449567 ((_ is Nil!74023) (list!19163 (charsOf!5491 (_1!38349 (get!26572 lt!2681963))))))))

(assert (=> d!2357639 (= (++!18125 (list!19163 (charsOf!5491 (_1!38349 (get!26572 lt!2681963)))) (_2!38349 (get!26572 lt!2681963))) lt!2681967)))

(assert (= (and d!2357639 c!1449567) b!7897868))

(assert (= (and d!2357639 (not c!1449567)) b!7897869))

(assert (= (and d!2357639 res!3133002) b!7897870))

(assert (= (and b!7897870 res!3133001) b!7897871))

(declare-fun m!8272942 () Bool)

(assert (=> b!7897870 m!8272942))

(assert (=> b!7897870 m!8272896))

(declare-fun m!8272944 () Bool)

(assert (=> b!7897870 m!8272944))

(assert (=> b!7897870 m!8272902))

(declare-fun m!8272946 () Bool)

(assert (=> b!7897869 m!8272946))

(declare-fun m!8272948 () Bool)

(assert (=> d!2357639 m!8272948))

(assert (=> d!2357639 m!8272896))

(declare-fun m!8272950 () Bool)

(assert (=> d!2357639 m!8272950))

(declare-fun m!8272952 () Bool)

(assert (=> d!2357639 m!8272952))

(assert (=> b!7897822 d!2357639))

(declare-fun d!2357641 () Bool)

(assert (=> d!2357641 (= (list!19163 (charsOf!5491 (_1!38349 (get!26572 lt!2681963)))) (list!19165 (c!1449531 (charsOf!5491 (_1!38349 (get!26572 lt!2681963))))))))

(declare-fun bs!1967830 () Bool)

(assert (= bs!1967830 d!2357641))

(declare-fun m!8272954 () Bool)

(assert (=> bs!1967830 m!8272954))

(assert (=> b!7897822 d!2357641))

(declare-fun d!2357643 () Bool)

(declare-fun lt!2681968 () BalanceConc!30550)

(assert (=> d!2357643 (= (list!19163 lt!2681968) (originalCharacters!8783 (_1!38349 (get!26572 lt!2681963))))))

(assert (=> d!2357643 (= lt!2681968 (dynLambda!30018 (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 (get!26572 lt!2681963))))) (value!285428 (_1!38349 (get!26572 lt!2681963)))))))

(assert (=> d!2357643 (= (charsOf!5491 (_1!38349 (get!26572 lt!2681963))) lt!2681968)))

(declare-fun b_lambda!289557 () Bool)

(assert (=> (not b_lambda!289557) (not d!2357643)))

(declare-fun tb!262599 () Bool)

(declare-fun t!388901 () Bool)

(assert (=> (and b!7897574 (= (toChars!11438 (transformation!8542 (h!80472 rulesArg!141))) (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 (get!26572 lt!2681963)))))) t!388901) tb!262599))

(declare-fun b!7897872 () Bool)

(declare-fun e!4661704 () Bool)

(declare-fun tp!2352969 () Bool)

(assert (=> b!7897872 (= e!4661704 (and (inv!95013 (c!1449531 (dynLambda!30018 (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 (get!26572 lt!2681963))))) (value!285428 (_1!38349 (get!26572 lt!2681963)))))) tp!2352969))))

(declare-fun result!359586 () Bool)

(assert (=> tb!262599 (= result!359586 (and (inv!95014 (dynLambda!30018 (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 (get!26572 lt!2681963))))) (value!285428 (_1!38349 (get!26572 lt!2681963))))) e!4661704))))

(assert (= tb!262599 b!7897872))

(declare-fun m!8272956 () Bool)

(assert (=> b!7897872 m!8272956))

(declare-fun m!8272958 () Bool)

(assert (=> tb!262599 m!8272958))

(assert (=> d!2357643 t!388901))

(declare-fun b_and!352367 () Bool)

(assert (= b_and!352353 (and (=> t!388901 result!359586) b_and!352367)))

(declare-fun t!388903 () Bool)

(declare-fun tb!262601 () Bool)

(assert (=> (and b!7897833 (= (toChars!11438 (transformation!8542 (h!80472 (t!388883 rulesArg!141)))) (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 (get!26572 lt!2681963)))))) t!388903) tb!262601))

(declare-fun result!359588 () Bool)

(assert (= result!359588 result!359586))

(assert (=> d!2357643 t!388903))

(declare-fun b_and!352369 () Bool)

(assert (= b_and!352365 (and (=> t!388903 result!359588) b_and!352369)))

(declare-fun m!8272960 () Bool)

(assert (=> d!2357643 m!8272960))

(declare-fun m!8272962 () Bool)

(assert (=> d!2357643 m!8272962))

(assert (=> b!7897822 d!2357643))

(declare-fun d!2357645 () Bool)

(assert (=> d!2357645 (= (get!26572 lt!2681963) (v!54960 lt!2681963))))

(assert (=> b!7897822 d!2357645))

(declare-fun d!2357647 () Bool)

(assert (=> d!2357647 (= (isEmpty!42461 lt!2681963) (not ((_ is Some!17823) lt!2681963)))))

(assert (=> d!2357633 d!2357647))

(declare-fun d!2357649 () Bool)

(assert (=> d!2357649 (= (isEmpty!42463 (_1!38351 lt!2681965)) ((_ is Nil!74023) (_1!38351 lt!2681965)))))

(assert (=> d!2357633 d!2357649))

(declare-fun d!2357651 () Bool)

(declare-fun lt!2681989 () tuple2!70096)

(assert (=> d!2357651 (= (++!18125 (_1!38351 lt!2681989) (_2!38351 lt!2681989)) input!1184)))

(declare-fun sizeTr!444 (List!74147 Int) Int)

(assert (=> d!2357651 (= lt!2681989 (findLongestMatchInner!2144 (regex!8542 (h!80472 rulesArg!141)) Nil!74023 0 input!1184 input!1184 (sizeTr!444 input!1184 0)))))

(declare-fun lt!2681986 () Unit!169038)

(declare-fun lt!2681988 () Unit!169038)

(assert (=> d!2357651 (= lt!2681986 lt!2681988)))

(declare-fun lt!2681985 () List!74147)

(declare-fun lt!2681992 () Int)

(assert (=> d!2357651 (= (sizeTr!444 lt!2681985 lt!2681992) (+ (size!42878 lt!2681985) lt!2681992))))

(declare-fun lemmaSizeTrEqualsSize!443 (List!74147 Int) Unit!169038)

(assert (=> d!2357651 (= lt!2681988 (lemmaSizeTrEqualsSize!443 lt!2681985 lt!2681992))))

(assert (=> d!2357651 (= lt!2681992 0)))

(assert (=> d!2357651 (= lt!2681985 Nil!74023)))

(declare-fun lt!2681990 () Unit!169038)

(declare-fun lt!2681991 () Unit!169038)

(assert (=> d!2357651 (= lt!2681990 lt!2681991)))

(declare-fun lt!2681987 () Int)

(assert (=> d!2357651 (= (sizeTr!444 input!1184 lt!2681987) (+ (size!42878 input!1184) lt!2681987))))

(assert (=> d!2357651 (= lt!2681991 (lemmaSizeTrEqualsSize!443 input!1184 lt!2681987))))

(assert (=> d!2357651 (= lt!2681987 0)))

(assert (=> d!2357651 (validRegex!11639 (regex!8542 (h!80472 rulesArg!141)))))

(assert (=> d!2357651 (= (findLongestMatch!1911 (regex!8542 (h!80472 rulesArg!141)) input!1184) lt!2681989)))

(declare-fun bs!1967831 () Bool)

(assert (= bs!1967831 d!2357651))

(declare-fun m!8272964 () Bool)

(assert (=> bs!1967831 m!8272964))

(assert (=> bs!1967831 m!8272696))

(declare-fun m!8272966 () Bool)

(assert (=> bs!1967831 m!8272966))

(declare-fun m!8272968 () Bool)

(assert (=> bs!1967831 m!8272968))

(declare-fun m!8272970 () Bool)

(assert (=> bs!1967831 m!8272970))

(declare-fun m!8272972 () Bool)

(assert (=> bs!1967831 m!8272972))

(declare-fun m!8272974 () Bool)

(assert (=> bs!1967831 m!8272974))

(declare-fun m!8272976 () Bool)

(assert (=> bs!1967831 m!8272976))

(declare-fun m!8272978 () Bool)

(assert (=> bs!1967831 m!8272978))

(declare-fun m!8272980 () Bool)

(assert (=> bs!1967831 m!8272980))

(assert (=> bs!1967831 m!8272976))

(assert (=> d!2357633 d!2357651))

(declare-fun d!2357653 () Bool)

(declare-fun res!3133007 () Bool)

(declare-fun e!4661707 () Bool)

(assert (=> d!2357653 (=> (not res!3133007) (not e!4661707))))

(assert (=> d!2357653 (= res!3133007 (validRegex!11639 (regex!8542 (h!80472 rulesArg!141))))))

(assert (=> d!2357653 (= (ruleValid!3923 thiss!14377 (h!80472 rulesArg!141)) e!4661707)))

(declare-fun b!7897877 () Bool)

(declare-fun res!3133008 () Bool)

(assert (=> b!7897877 (=> (not res!3133008) (not e!4661707))))

(assert (=> b!7897877 (= res!3133008 (not (nullable!9478 (regex!8542 (h!80472 rulesArg!141)))))))

(declare-fun b!7897878 () Bool)

(assert (=> b!7897878 (= e!4661707 (not (= (tag!9406 (h!80472 rulesArg!141)) (String!82713 ""))))))

(assert (= (and d!2357653 res!3133007) b!7897877))

(assert (= (and b!7897877 res!3133008) b!7897878))

(assert (=> d!2357653 m!8272968))

(declare-fun m!8272982 () Bool)

(assert (=> b!7897877 m!8272982))

(assert (=> d!2357633 d!2357653))

(assert (=> d!2357579 d!2357631))

(declare-fun b!7897907 () Bool)

(declare-fun e!4661726 () Bool)

(assert (=> b!7897907 (= e!4661726 (= (head!16136 (list!19163 (charsOf!5491 (_1!38349 (get!26572 lt!2681963))))) (c!1449532 (regex!8542 (h!80472 rulesArg!141)))))))

(declare-fun b!7897908 () Bool)

(declare-fun res!3133031 () Bool)

(declare-fun e!4661724 () Bool)

(assert (=> b!7897908 (=> res!3133031 e!4661724)))

(assert (=> b!7897908 (= res!3133031 (not ((_ is ElementMatch!21245) (regex!8542 (h!80472 rulesArg!141)))))))

(declare-fun e!4661723 () Bool)

(assert (=> b!7897908 (= e!4661723 e!4661724)))

(declare-fun b!7897909 () Bool)

(declare-fun e!4661725 () Bool)

(assert (=> b!7897909 (= e!4661725 (not (= (head!16136 (list!19163 (charsOf!5491 (_1!38349 (get!26572 lt!2681963))))) (c!1449532 (regex!8542 (h!80472 rulesArg!141))))))))

(declare-fun d!2357655 () Bool)

(declare-fun e!4661722 () Bool)

(assert (=> d!2357655 e!4661722))

(declare-fun c!1449575 () Bool)

(assert (=> d!2357655 (= c!1449575 ((_ is EmptyExpr!21245) (regex!8542 (h!80472 rulesArg!141))))))

(declare-fun lt!2681995 () Bool)

(declare-fun e!4661727 () Bool)

(assert (=> d!2357655 (= lt!2681995 e!4661727)))

(declare-fun c!1449574 () Bool)

(assert (=> d!2357655 (= c!1449574 (isEmpty!42463 (list!19163 (charsOf!5491 (_1!38349 (get!26572 lt!2681963))))))))

(assert (=> d!2357655 (validRegex!11639 (regex!8542 (h!80472 rulesArg!141)))))

(assert (=> d!2357655 (= (matchR!10629 (regex!8542 (h!80472 rulesArg!141)) (list!19163 (charsOf!5491 (_1!38349 (get!26572 lt!2681963))))) lt!2681995)))

(declare-fun b!7897910 () Bool)

(assert (=> b!7897910 (= e!4661722 e!4661723)))

(declare-fun c!1449576 () Bool)

(assert (=> b!7897910 (= c!1449576 ((_ is EmptyLang!21245) (regex!8542 (h!80472 rulesArg!141))))))

(declare-fun b!7897911 () Bool)

(declare-fun res!3133029 () Bool)

(assert (=> b!7897911 (=> res!3133029 e!4661724)))

(assert (=> b!7897911 (= res!3133029 e!4661726)))

(declare-fun res!3133028 () Bool)

(assert (=> b!7897911 (=> (not res!3133028) (not e!4661726))))

(assert (=> b!7897911 (= res!3133028 lt!2681995)))

(declare-fun b!7897912 () Bool)

(declare-fun res!3133032 () Bool)

(assert (=> b!7897912 (=> (not res!3133032) (not e!4661726))))

(assert (=> b!7897912 (= res!3133032 (isEmpty!42463 (tail!15679 (list!19163 (charsOf!5491 (_1!38349 (get!26572 lt!2681963)))))))))

(declare-fun b!7897913 () Bool)

(declare-fun e!4661728 () Bool)

(assert (=> b!7897913 (= e!4661724 e!4661728)))

(declare-fun res!3133026 () Bool)

(assert (=> b!7897913 (=> (not res!3133026) (not e!4661728))))

(assert (=> b!7897913 (= res!3133026 (not lt!2681995))))

(declare-fun b!7897914 () Bool)

(declare-fun call!732980 () Bool)

(assert (=> b!7897914 (= e!4661722 (= lt!2681995 call!732980))))

(declare-fun bm!732975 () Bool)

(assert (=> bm!732975 (= call!732980 (isEmpty!42463 (list!19163 (charsOf!5491 (_1!38349 (get!26572 lt!2681963))))))))

(declare-fun b!7897915 () Bool)

(declare-fun res!3133027 () Bool)

(assert (=> b!7897915 (=> res!3133027 e!4661725)))

(assert (=> b!7897915 (= res!3133027 (not (isEmpty!42463 (tail!15679 (list!19163 (charsOf!5491 (_1!38349 (get!26572 lt!2681963))))))))))

(declare-fun b!7897916 () Bool)

(assert (=> b!7897916 (= e!4661723 (not lt!2681995))))

(declare-fun b!7897917 () Bool)

(declare-fun res!3133025 () Bool)

(assert (=> b!7897917 (=> (not res!3133025) (not e!4661726))))

(assert (=> b!7897917 (= res!3133025 (not call!732980))))

(declare-fun b!7897918 () Bool)

(declare-fun derivativeStep!6421 (Regex!21245 C!42820) Regex!21245)

(assert (=> b!7897918 (= e!4661727 (matchR!10629 (derivativeStep!6421 (regex!8542 (h!80472 rulesArg!141)) (head!16136 (list!19163 (charsOf!5491 (_1!38349 (get!26572 lt!2681963)))))) (tail!15679 (list!19163 (charsOf!5491 (_1!38349 (get!26572 lt!2681963)))))))))

(declare-fun b!7897919 () Bool)

(assert (=> b!7897919 (= e!4661728 e!4661725)))

(declare-fun res!3133030 () Bool)

(assert (=> b!7897919 (=> res!3133030 e!4661725)))

(assert (=> b!7897919 (= res!3133030 call!732980)))

(declare-fun b!7897920 () Bool)

(assert (=> b!7897920 (= e!4661727 (nullable!9478 (regex!8542 (h!80472 rulesArg!141))))))

(assert (= (and d!2357655 c!1449574) b!7897920))

(assert (= (and d!2357655 (not c!1449574)) b!7897918))

(assert (= (and d!2357655 c!1449575) b!7897914))

(assert (= (and d!2357655 (not c!1449575)) b!7897910))

(assert (= (and b!7897910 c!1449576) b!7897916))

(assert (= (and b!7897910 (not c!1449576)) b!7897908))

(assert (= (and b!7897908 (not res!3133031)) b!7897911))

(assert (= (and b!7897911 res!3133028) b!7897917))

(assert (= (and b!7897917 res!3133025) b!7897912))

(assert (= (and b!7897912 res!3133032) b!7897907))

(assert (= (and b!7897911 (not res!3133029)) b!7897913))

(assert (= (and b!7897913 res!3133026) b!7897919))

(assert (= (and b!7897919 (not res!3133030)) b!7897915))

(assert (= (and b!7897915 (not res!3133027)) b!7897909))

(assert (= (or b!7897914 b!7897919 b!7897917) bm!732975))

(assert (=> b!7897909 m!8272896))

(declare-fun m!8272984 () Bool)

(assert (=> b!7897909 m!8272984))

(assert (=> b!7897918 m!8272896))

(assert (=> b!7897918 m!8272984))

(assert (=> b!7897918 m!8272984))

(declare-fun m!8272986 () Bool)

(assert (=> b!7897918 m!8272986))

(assert (=> b!7897918 m!8272896))

(declare-fun m!8272988 () Bool)

(assert (=> b!7897918 m!8272988))

(assert (=> b!7897918 m!8272986))

(assert (=> b!7897918 m!8272988))

(declare-fun m!8272990 () Bool)

(assert (=> b!7897918 m!8272990))

(assert (=> d!2357655 m!8272896))

(declare-fun m!8272992 () Bool)

(assert (=> d!2357655 m!8272992))

(assert (=> d!2357655 m!8272968))

(assert (=> b!7897915 m!8272896))

(assert (=> b!7897915 m!8272988))

(assert (=> b!7897915 m!8272988))

(declare-fun m!8272994 () Bool)

(assert (=> b!7897915 m!8272994))

(assert (=> b!7897912 m!8272896))

(assert (=> b!7897912 m!8272988))

(assert (=> b!7897912 m!8272988))

(assert (=> b!7897912 m!8272994))

(assert (=> bm!732975 m!8272896))

(assert (=> bm!732975 m!8272992))

(assert (=> b!7897920 m!8272982))

(assert (=> b!7897907 m!8272896))

(assert (=> b!7897907 m!8272984))

(assert (=> b!7897821 d!2357655))

(assert (=> b!7897821 d!2357641))

(assert (=> b!7897821 d!2357643))

(assert (=> b!7897821 d!2357645))

(declare-fun b!7897931 () Bool)

(declare-fun e!4661737 () Bool)

(declare-fun inv!16 (TokenValue!8858) Bool)

(assert (=> b!7897931 (= e!4661737 (inv!16 (dynLambda!30019 (toValue!11579 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (seqFromList!6124 (originalCharacters!8783 (_1!38349 lt!2681896))))))))

(declare-fun b!7897932 () Bool)

(declare-fun e!4661736 () Bool)

(declare-fun inv!15 (TokenValue!8858) Bool)

(assert (=> b!7897932 (= e!4661736 (inv!15 (dynLambda!30019 (toValue!11579 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (seqFromList!6124 (originalCharacters!8783 (_1!38349 lt!2681896))))))))

(declare-fun b!7897933 () Bool)

(declare-fun e!4661735 () Bool)

(declare-fun inv!17 (TokenValue!8858) Bool)

(assert (=> b!7897933 (= e!4661735 (inv!17 (dynLambda!30019 (toValue!11579 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (seqFromList!6124 (originalCharacters!8783 (_1!38349 lt!2681896))))))))

(declare-fun b!7897934 () Bool)

(declare-fun res!3133035 () Bool)

(assert (=> b!7897934 (=> res!3133035 e!4661736)))

(assert (=> b!7897934 (= res!3133035 (not ((_ is IntegerValue!26576) (dynLambda!30019 (toValue!11579 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (seqFromList!6124 (originalCharacters!8783 (_1!38349 lt!2681896)))))))))

(assert (=> b!7897934 (= e!4661735 e!4661736)))

(declare-fun d!2357657 () Bool)

(declare-fun c!1449582 () Bool)

(assert (=> d!2357657 (= c!1449582 ((_ is IntegerValue!26574) (dynLambda!30019 (toValue!11579 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (seqFromList!6124 (originalCharacters!8783 (_1!38349 lt!2681896))))))))

(assert (=> d!2357657 (= (inv!21 (dynLambda!30019 (toValue!11579 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (seqFromList!6124 (originalCharacters!8783 (_1!38349 lt!2681896))))) e!4661737)))

(declare-fun b!7897935 () Bool)

(assert (=> b!7897935 (= e!4661737 e!4661735)))

(declare-fun c!1449581 () Bool)

(assert (=> b!7897935 (= c!1449581 ((_ is IntegerValue!26575) (dynLambda!30019 (toValue!11579 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (seqFromList!6124 (originalCharacters!8783 (_1!38349 lt!2681896))))))))

(assert (= (and d!2357657 c!1449582) b!7897931))

(assert (= (and d!2357657 (not c!1449582)) b!7897935))

(assert (= (and b!7897935 c!1449581) b!7897933))

(assert (= (and b!7897935 (not c!1449581)) b!7897934))

(assert (= (and b!7897934 (not res!3133035)) b!7897932))

(declare-fun m!8272996 () Bool)

(assert (=> b!7897931 m!8272996))

(declare-fun m!8272998 () Bool)

(assert (=> b!7897932 m!8272998))

(declare-fun m!8273000 () Bool)

(assert (=> b!7897933 m!8273000))

(assert (=> tb!262589 d!2357657))

(assert (=> b!7897649 d!2357577))

(declare-fun d!2357659 () Bool)

(declare-fun isBalanced!4468 (Conc!15716) Bool)

(assert (=> d!2357659 (= (inv!95014 (dynLambda!30018 (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (value!285428 (_1!38349 lt!2681896)))) (isBalanced!4468 (c!1449531 (dynLambda!30018 (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (value!285428 (_1!38349 lt!2681896))))))))

(declare-fun bs!1967832 () Bool)

(assert (= bs!1967832 d!2357659))

(declare-fun m!8273002 () Bool)

(assert (=> bs!1967832 m!8273002))

(assert (=> tb!262585 d!2357659))

(declare-fun d!2357661 () Bool)

(declare-fun lt!2681996 () Int)

(assert (=> d!2357661 (>= lt!2681996 0)))

(declare-fun e!4661738 () Int)

(assert (=> d!2357661 (= lt!2681996 e!4661738)))

(declare-fun c!1449583 () Bool)

(assert (=> d!2357661 (= c!1449583 ((_ is Nil!74023) (_2!38349 (get!26572 lt!2681963))))))

(assert (=> d!2357661 (= (size!42878 (_2!38349 (get!26572 lt!2681963))) lt!2681996)))

(declare-fun b!7897936 () Bool)

(assert (=> b!7897936 (= e!4661738 0)))

(declare-fun b!7897937 () Bool)

(assert (=> b!7897937 (= e!4661738 (+ 1 (size!42878 (t!388882 (_2!38349 (get!26572 lt!2681963))))))))

(assert (= (and d!2357661 c!1449583) b!7897936))

(assert (= (and d!2357661 (not c!1449583)) b!7897937))

(declare-fun m!8273004 () Bool)

(assert (=> b!7897937 m!8273004))

(assert (=> b!7897819 d!2357661))

(assert (=> b!7897819 d!2357645))

(assert (=> b!7897819 d!2357577))

(declare-fun b!7897939 () Bool)

(declare-fun res!3133039 () Bool)

(declare-fun e!4661739 () Bool)

(assert (=> b!7897939 (=> (not res!3133039) (not e!4661739))))

(assert (=> b!7897939 (= res!3133039 (= (head!16136 (tail!15679 input!1184)) (head!16136 (tail!15679 input!1184))))))

(declare-fun b!7897940 () Bool)

(assert (=> b!7897940 (= e!4661739 (isPrefix!6375 (tail!15679 (tail!15679 input!1184)) (tail!15679 (tail!15679 input!1184))))))

(declare-fun b!7897938 () Bool)

(declare-fun e!4661740 () Bool)

(assert (=> b!7897938 (= e!4661740 e!4661739)))

(declare-fun res!3133037 () Bool)

(assert (=> b!7897938 (=> (not res!3133037) (not e!4661739))))

(assert (=> b!7897938 (= res!3133037 (not ((_ is Nil!74023) (tail!15679 input!1184))))))

(declare-fun d!2357663 () Bool)

(declare-fun e!4661741 () Bool)

(assert (=> d!2357663 e!4661741))

(declare-fun res!3133038 () Bool)

(assert (=> d!2357663 (=> res!3133038 e!4661741)))

(declare-fun lt!2681997 () Bool)

(assert (=> d!2357663 (= res!3133038 (not lt!2681997))))

(assert (=> d!2357663 (= lt!2681997 e!4661740)))

(declare-fun res!3133036 () Bool)

(assert (=> d!2357663 (=> res!3133036 e!4661740)))

(assert (=> d!2357663 (= res!3133036 ((_ is Nil!74023) (tail!15679 input!1184)))))

(assert (=> d!2357663 (= (isPrefix!6375 (tail!15679 input!1184) (tail!15679 input!1184)) lt!2681997)))

(declare-fun b!7897941 () Bool)

(assert (=> b!7897941 (= e!4661741 (>= (size!42878 (tail!15679 input!1184)) (size!42878 (tail!15679 input!1184))))))

(assert (= (and d!2357663 (not res!3133036)) b!7897938))

(assert (= (and b!7897938 res!3133037) b!7897939))

(assert (= (and b!7897939 res!3133039) b!7897940))

(assert (= (and d!2357663 (not res!3133038)) b!7897941))

(assert (=> b!7897939 m!8272782))

(declare-fun m!8273006 () Bool)

(assert (=> b!7897939 m!8273006))

(assert (=> b!7897939 m!8272782))

(assert (=> b!7897939 m!8273006))

(assert (=> b!7897940 m!8272782))

(declare-fun m!8273008 () Bool)

(assert (=> b!7897940 m!8273008))

(assert (=> b!7897940 m!8272782))

(assert (=> b!7897940 m!8273008))

(assert (=> b!7897940 m!8273008))

(assert (=> b!7897940 m!8273008))

(declare-fun m!8273010 () Bool)

(assert (=> b!7897940 m!8273010))

(assert (=> b!7897941 m!8272782))

(declare-fun m!8273012 () Bool)

(assert (=> b!7897941 m!8273012))

(assert (=> b!7897941 m!8272782))

(assert (=> b!7897941 m!8273012))

(assert (=> b!7897648 d!2357663))

(declare-fun d!2357665 () Bool)

(assert (=> d!2357665 (= (tail!15679 input!1184) (t!388882 input!1184))))

(assert (=> b!7897648 d!2357665))

(declare-fun b!7897942 () Bool)

(declare-fun e!4661746 () Bool)

(assert (=> b!7897942 (= e!4661746 (= (head!16136 (_1!38351 (findLongestMatchInner!2144 (regex!8542 (h!80472 rulesArg!141)) Nil!74023 (size!42878 Nil!74023) input!1184 input!1184 (size!42878 input!1184)))) (c!1449532 (regex!8542 (h!80472 rulesArg!141)))))))

(declare-fun b!7897943 () Bool)

(declare-fun res!3133046 () Bool)

(declare-fun e!4661744 () Bool)

(assert (=> b!7897943 (=> res!3133046 e!4661744)))

(assert (=> b!7897943 (= res!3133046 (not ((_ is ElementMatch!21245) (regex!8542 (h!80472 rulesArg!141)))))))

(declare-fun e!4661743 () Bool)

(assert (=> b!7897943 (= e!4661743 e!4661744)))

(declare-fun b!7897944 () Bool)

(declare-fun e!4661745 () Bool)

(assert (=> b!7897944 (= e!4661745 (not (= (head!16136 (_1!38351 (findLongestMatchInner!2144 (regex!8542 (h!80472 rulesArg!141)) Nil!74023 (size!42878 Nil!74023) input!1184 input!1184 (size!42878 input!1184)))) (c!1449532 (regex!8542 (h!80472 rulesArg!141))))))))

(declare-fun d!2357667 () Bool)

(declare-fun e!4661742 () Bool)

(assert (=> d!2357667 e!4661742))

(declare-fun c!1449585 () Bool)

(assert (=> d!2357667 (= c!1449585 ((_ is EmptyExpr!21245) (regex!8542 (h!80472 rulesArg!141))))))

(declare-fun lt!2681998 () Bool)

(declare-fun e!4661747 () Bool)

(assert (=> d!2357667 (= lt!2681998 e!4661747)))

(declare-fun c!1449584 () Bool)

(assert (=> d!2357667 (= c!1449584 (isEmpty!42463 (_1!38351 (findLongestMatchInner!2144 (regex!8542 (h!80472 rulesArg!141)) Nil!74023 (size!42878 Nil!74023) input!1184 input!1184 (size!42878 input!1184)))))))

(assert (=> d!2357667 (validRegex!11639 (regex!8542 (h!80472 rulesArg!141)))))

(assert (=> d!2357667 (= (matchR!10629 (regex!8542 (h!80472 rulesArg!141)) (_1!38351 (findLongestMatchInner!2144 (regex!8542 (h!80472 rulesArg!141)) Nil!74023 (size!42878 Nil!74023) input!1184 input!1184 (size!42878 input!1184)))) lt!2681998)))

(declare-fun b!7897945 () Bool)

(assert (=> b!7897945 (= e!4661742 e!4661743)))

(declare-fun c!1449586 () Bool)

(assert (=> b!7897945 (= c!1449586 ((_ is EmptyLang!21245) (regex!8542 (h!80472 rulesArg!141))))))

(declare-fun b!7897946 () Bool)

(declare-fun res!3133044 () Bool)

(assert (=> b!7897946 (=> res!3133044 e!4661744)))

(assert (=> b!7897946 (= res!3133044 e!4661746)))

(declare-fun res!3133043 () Bool)

(assert (=> b!7897946 (=> (not res!3133043) (not e!4661746))))

(assert (=> b!7897946 (= res!3133043 lt!2681998)))

(declare-fun b!7897947 () Bool)

(declare-fun res!3133047 () Bool)

(assert (=> b!7897947 (=> (not res!3133047) (not e!4661746))))

(assert (=> b!7897947 (= res!3133047 (isEmpty!42463 (tail!15679 (_1!38351 (findLongestMatchInner!2144 (regex!8542 (h!80472 rulesArg!141)) Nil!74023 (size!42878 Nil!74023) input!1184 input!1184 (size!42878 input!1184))))))))

(declare-fun b!7897948 () Bool)

(declare-fun e!4661748 () Bool)

(assert (=> b!7897948 (= e!4661744 e!4661748)))

(declare-fun res!3133041 () Bool)

(assert (=> b!7897948 (=> (not res!3133041) (not e!4661748))))

(assert (=> b!7897948 (= res!3133041 (not lt!2681998))))

(declare-fun b!7897949 () Bool)

(declare-fun call!732981 () Bool)

(assert (=> b!7897949 (= e!4661742 (= lt!2681998 call!732981))))

(declare-fun bm!732976 () Bool)

(assert (=> bm!732976 (= call!732981 (isEmpty!42463 (_1!38351 (findLongestMatchInner!2144 (regex!8542 (h!80472 rulesArg!141)) Nil!74023 (size!42878 Nil!74023) input!1184 input!1184 (size!42878 input!1184)))))))

(declare-fun b!7897950 () Bool)

(declare-fun res!3133042 () Bool)

(assert (=> b!7897950 (=> res!3133042 e!4661745)))

(assert (=> b!7897950 (= res!3133042 (not (isEmpty!42463 (tail!15679 (_1!38351 (findLongestMatchInner!2144 (regex!8542 (h!80472 rulesArg!141)) Nil!74023 (size!42878 Nil!74023) input!1184 input!1184 (size!42878 input!1184)))))))))

(declare-fun b!7897951 () Bool)

(assert (=> b!7897951 (= e!4661743 (not lt!2681998))))

(declare-fun b!7897952 () Bool)

(declare-fun res!3133040 () Bool)

(assert (=> b!7897952 (=> (not res!3133040) (not e!4661746))))

(assert (=> b!7897952 (= res!3133040 (not call!732981))))

(declare-fun b!7897953 () Bool)

(assert (=> b!7897953 (= e!4661747 (matchR!10629 (derivativeStep!6421 (regex!8542 (h!80472 rulesArg!141)) (head!16136 (_1!38351 (findLongestMatchInner!2144 (regex!8542 (h!80472 rulesArg!141)) Nil!74023 (size!42878 Nil!74023) input!1184 input!1184 (size!42878 input!1184))))) (tail!15679 (_1!38351 (findLongestMatchInner!2144 (regex!8542 (h!80472 rulesArg!141)) Nil!74023 (size!42878 Nil!74023) input!1184 input!1184 (size!42878 input!1184))))))))

(declare-fun b!7897954 () Bool)

(assert (=> b!7897954 (= e!4661748 e!4661745)))

(declare-fun res!3133045 () Bool)

(assert (=> b!7897954 (=> res!3133045 e!4661745)))

(assert (=> b!7897954 (= res!3133045 call!732981)))

(declare-fun b!7897955 () Bool)

(assert (=> b!7897955 (= e!4661747 (nullable!9478 (regex!8542 (h!80472 rulesArg!141))))))

(assert (= (and d!2357667 c!1449584) b!7897955))

(assert (= (and d!2357667 (not c!1449584)) b!7897953))

(assert (= (and d!2357667 c!1449585) b!7897949))

(assert (= (and d!2357667 (not c!1449585)) b!7897945))

(assert (= (and b!7897945 c!1449586) b!7897951))

(assert (= (and b!7897945 (not c!1449586)) b!7897943))

(assert (= (and b!7897943 (not res!3133046)) b!7897946))

(assert (= (and b!7897946 res!3133043) b!7897952))

(assert (= (and b!7897952 res!3133040) b!7897947))

(assert (= (and b!7897947 res!3133047) b!7897942))

(assert (= (and b!7897946 (not res!3133044)) b!7897948))

(assert (= (and b!7897948 res!3133041) b!7897954))

(assert (= (and b!7897954 (not res!3133045)) b!7897950))

(assert (= (and b!7897950 (not res!3133042)) b!7897944))

(assert (= (or b!7897949 b!7897954 b!7897952) bm!732976))

(declare-fun m!8273014 () Bool)

(assert (=> b!7897944 m!8273014))

(assert (=> b!7897953 m!8273014))

(assert (=> b!7897953 m!8273014))

(declare-fun m!8273016 () Bool)

(assert (=> b!7897953 m!8273016))

(declare-fun m!8273018 () Bool)

(assert (=> b!7897953 m!8273018))

(assert (=> b!7897953 m!8273016))

(assert (=> b!7897953 m!8273018))

(declare-fun m!8273020 () Bool)

(assert (=> b!7897953 m!8273020))

(assert (=> d!2357667 m!8272914))

(assert (=> d!2357667 m!8272968))

(assert (=> b!7897950 m!8273018))

(assert (=> b!7897950 m!8273018))

(declare-fun m!8273022 () Bool)

(assert (=> b!7897950 m!8273022))

(assert (=> b!7897947 m!8273018))

(assert (=> b!7897947 m!8273018))

(assert (=> b!7897947 m!8273022))

(assert (=> bm!732976 m!8272914))

(assert (=> b!7897955 m!8272982))

(assert (=> b!7897942 m!8273014))

(assert (=> b!7897820 d!2357667))

(declare-fun b!7897998 () Bool)

(declare-fun e!4661776 () tuple2!70096)

(assert (=> b!7897998 (= e!4661776 (tuple2!70097 Nil!74023 input!1184))))

(declare-fun bm!732996 () Bool)

(declare-fun call!733007 () Bool)

(assert (=> bm!732996 (= call!733007 (isPrefix!6375 input!1184 input!1184))))

(declare-fun b!7898000 () Bool)

(declare-fun e!4661780 () tuple2!70096)

(assert (=> b!7898000 (= e!4661780 e!4661776)))

(declare-fun lt!2682075 () tuple2!70096)

(declare-fun call!733003 () tuple2!70096)

(assert (=> b!7898000 (= lt!2682075 call!733003)))

(declare-fun c!1449607 () Bool)

(assert (=> b!7898000 (= c!1449607 (isEmpty!42463 (_1!38351 lt!2682075)))))

(declare-fun b!7898001 () Bool)

(declare-fun e!4661778 () Unit!169038)

(declare-fun Unit!169040 () Unit!169038)

(assert (=> b!7898001 (= e!4661778 Unit!169040)))

(declare-fun lt!2682068 () Unit!169038)

(declare-fun call!733006 () Unit!169038)

(assert (=> b!7898001 (= lt!2682068 call!733006)))

(assert (=> b!7898001 call!733007))

(declare-fun lt!2682059 () Unit!169038)

(assert (=> b!7898001 (= lt!2682059 lt!2682068)))

(declare-fun lt!2682065 () Unit!169038)

(declare-fun call!733008 () Unit!169038)

(assert (=> b!7898001 (= lt!2682065 call!733008)))

(assert (=> b!7898001 (= input!1184 Nil!74023)))

(declare-fun lt!2682074 () Unit!169038)

(assert (=> b!7898001 (= lt!2682074 lt!2682065)))

(assert (=> b!7898001 false))

(declare-fun b!7898002 () Bool)

(declare-fun Unit!169041 () Unit!169038)

(assert (=> b!7898002 (= e!4661778 Unit!169041)))

(declare-fun b!7898003 () Bool)

(assert (=> b!7898003 (= e!4661776 lt!2682075)))

(declare-fun bm!732997 () Bool)

(declare-fun call!733004 () Bool)

(assert (=> bm!732997 (= call!733004 (nullable!9478 (regex!8542 (h!80472 rulesArg!141))))))

(declare-fun bm!732998 () Bool)

(assert (=> bm!732998 (= call!733006 (lemmaIsPrefixRefl!3886 input!1184 input!1184))))

(declare-fun b!7898004 () Bool)

(declare-fun e!4661775 () tuple2!70096)

(declare-fun e!4661782 () tuple2!70096)

(assert (=> b!7898004 (= e!4661775 e!4661782)))

(declare-fun c!1449603 () Bool)

(assert (=> b!7898004 (= c!1449603 (= (size!42878 Nil!74023) (size!42878 input!1184)))))

(declare-fun bm!732999 () Bool)

(declare-fun call!733001 () Regex!21245)

(declare-fun call!733005 () C!42820)

(assert (=> bm!732999 (= call!733001 (derivativeStep!6421 (regex!8542 (h!80472 rulesArg!141)) call!733005))))

(declare-fun b!7898005 () Bool)

(declare-fun e!4661781 () Bool)

(declare-fun lt!2682062 () tuple2!70096)

(assert (=> b!7898005 (= e!4661781 (>= (size!42878 (_1!38351 lt!2682062)) (size!42878 Nil!74023)))))

(declare-fun b!7897999 () Bool)

(declare-fun e!4661777 () tuple2!70096)

(assert (=> b!7897999 (= e!4661777 (tuple2!70097 Nil!74023 Nil!74023))))

(declare-fun d!2357669 () Bool)

(declare-fun e!4661779 () Bool)

(assert (=> d!2357669 e!4661779))

(declare-fun res!3133060 () Bool)

(assert (=> d!2357669 (=> (not res!3133060) (not e!4661779))))

(assert (=> d!2357669 (= res!3133060 (= (++!18125 (_1!38351 lt!2682062) (_2!38351 lt!2682062)) input!1184))))

(assert (=> d!2357669 (= lt!2682062 e!4661775)))

(declare-fun c!1449602 () Bool)

(declare-fun lostCause!1910 (Regex!21245) Bool)

(assert (=> d!2357669 (= c!1449602 (lostCause!1910 (regex!8542 (h!80472 rulesArg!141))))))

(declare-fun lt!2682060 () Unit!169038)

(declare-fun Unit!169042 () Unit!169038)

(assert (=> d!2357669 (= lt!2682060 Unit!169042)))

(declare-fun getSuffix!3678 (List!74147 List!74147) List!74147)

(assert (=> d!2357669 (= (getSuffix!3678 input!1184 Nil!74023) input!1184)))

(declare-fun lt!2682058 () Unit!169038)

(declare-fun lt!2682069 () Unit!169038)

(assert (=> d!2357669 (= lt!2682058 lt!2682069)))

(declare-fun lt!2682073 () List!74147)

(assert (=> d!2357669 (= input!1184 lt!2682073)))

(declare-fun lemmaSamePrefixThenSameSuffix!2926 (List!74147 List!74147 List!74147 List!74147 List!74147) Unit!169038)

(assert (=> d!2357669 (= lt!2682069 (lemmaSamePrefixThenSameSuffix!2926 Nil!74023 input!1184 Nil!74023 lt!2682073 input!1184))))

(assert (=> d!2357669 (= lt!2682073 (getSuffix!3678 input!1184 Nil!74023))))

(declare-fun lt!2682063 () Unit!169038)

(declare-fun lt!2682084 () Unit!169038)

(assert (=> d!2357669 (= lt!2682063 lt!2682084)))

(assert (=> d!2357669 (isPrefix!6375 Nil!74023 (++!18125 Nil!74023 input!1184))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3788 (List!74147 List!74147) Unit!169038)

(assert (=> d!2357669 (= lt!2682084 (lemmaConcatTwoListThenFirstIsPrefix!3788 Nil!74023 input!1184))))

(assert (=> d!2357669 (validRegex!11639 (regex!8542 (h!80472 rulesArg!141)))))

(assert (=> d!2357669 (= (findLongestMatchInner!2144 (regex!8542 (h!80472 rulesArg!141)) Nil!74023 (size!42878 Nil!74023) input!1184 input!1184 (size!42878 input!1184)) lt!2682062)))

(declare-fun call!733002 () List!74147)

(declare-fun lt!2682082 () List!74147)

(declare-fun bm!733000 () Bool)

(assert (=> bm!733000 (= call!733003 (findLongestMatchInner!2144 call!733001 lt!2682082 (+ (size!42878 Nil!74023) 1) call!733002 input!1184 (size!42878 input!1184)))))

(declare-fun b!7898006 () Bool)

(declare-fun c!1449605 () Bool)

(assert (=> b!7898006 (= c!1449605 call!733004)))

(declare-fun lt!2682057 () Unit!169038)

(declare-fun lt!2682064 () Unit!169038)

(assert (=> b!7898006 (= lt!2682057 lt!2682064)))

(assert (=> b!7898006 (= input!1184 Nil!74023)))

(assert (=> b!7898006 (= lt!2682064 call!733008)))

(declare-fun lt!2682066 () Unit!169038)

(declare-fun lt!2682076 () Unit!169038)

(assert (=> b!7898006 (= lt!2682066 lt!2682076)))

(assert (=> b!7898006 call!733007))

(assert (=> b!7898006 (= lt!2682076 call!733006)))

(assert (=> b!7898006 (= e!4661782 e!4661777)))

(declare-fun b!7898007 () Bool)

(assert (=> b!7898007 (= e!4661777 (tuple2!70097 Nil!74023 input!1184))))

(declare-fun bm!733001 () Bool)

(assert (=> bm!733001 (= call!733005 (head!16136 input!1184))))

(declare-fun b!7898008 () Bool)

(declare-fun c!1449604 () Bool)

(assert (=> b!7898008 (= c!1449604 call!733004)))

(declare-fun lt!2682077 () Unit!169038)

(declare-fun lt!2682081 () Unit!169038)

(assert (=> b!7898008 (= lt!2682077 lt!2682081)))

(declare-fun lt!2682079 () C!42820)

(declare-fun lt!2682080 () List!74147)

(assert (=> b!7898008 (= (++!18125 (++!18125 Nil!74023 (Cons!74023 lt!2682079 Nil!74023)) lt!2682080) input!1184)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3465 (List!74147 C!42820 List!74147 List!74147) Unit!169038)

(assert (=> b!7898008 (= lt!2682081 (lemmaMoveElementToOtherListKeepsConcatEq!3465 Nil!74023 lt!2682079 lt!2682080 input!1184))))

(assert (=> b!7898008 (= lt!2682080 (tail!15679 input!1184))))

(assert (=> b!7898008 (= lt!2682079 (head!16136 input!1184))))

(declare-fun lt!2682083 () Unit!169038)

(declare-fun lt!2682070 () Unit!169038)

(assert (=> b!7898008 (= lt!2682083 lt!2682070)))

(assert (=> b!7898008 (isPrefix!6375 (++!18125 Nil!74023 (Cons!74023 (head!16136 (getSuffix!3678 input!1184 Nil!74023)) Nil!74023)) input!1184)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1243 (List!74147 List!74147) Unit!169038)

(assert (=> b!7898008 (= lt!2682070 (lemmaAddHeadSuffixToPrefixStillPrefix!1243 Nil!74023 input!1184))))

(declare-fun lt!2682078 () Unit!169038)

(declare-fun lt!2682061 () Unit!169038)

(assert (=> b!7898008 (= lt!2682078 lt!2682061)))

(assert (=> b!7898008 (= lt!2682061 (lemmaAddHeadSuffixToPrefixStillPrefix!1243 Nil!74023 input!1184))))

(assert (=> b!7898008 (= lt!2682082 (++!18125 Nil!74023 (Cons!74023 (head!16136 input!1184) Nil!74023)))))

(declare-fun lt!2682067 () Unit!169038)

(assert (=> b!7898008 (= lt!2682067 e!4661778)))

(declare-fun c!1449606 () Bool)

(assert (=> b!7898008 (= c!1449606 (= (size!42878 Nil!74023) (size!42878 input!1184)))))

(declare-fun lt!2682072 () Unit!169038)

(declare-fun lt!2682071 () Unit!169038)

(assert (=> b!7898008 (= lt!2682072 lt!2682071)))

(assert (=> b!7898008 (<= (size!42878 Nil!74023) (size!42878 input!1184))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1023 (List!74147 List!74147) Unit!169038)

(assert (=> b!7898008 (= lt!2682071 (lemmaIsPrefixThenSmallerEqSize!1023 Nil!74023 input!1184))))

(assert (=> b!7898008 (= e!4661782 e!4661780)))

(declare-fun bm!733002 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1558 (List!74147 List!74147 List!74147) Unit!169038)

(assert (=> bm!733002 (= call!733008 (lemmaIsPrefixSameLengthThenSameList!1558 input!1184 Nil!74023 input!1184))))

(declare-fun b!7898009 () Bool)

(assert (=> b!7898009 (= e!4661775 (tuple2!70097 Nil!74023 input!1184))))

(declare-fun b!7898010 () Bool)

(assert (=> b!7898010 (= e!4661780 call!733003)))

(declare-fun bm!733003 () Bool)

(assert (=> bm!733003 (= call!733002 (tail!15679 input!1184))))

(declare-fun b!7898011 () Bool)

(assert (=> b!7898011 (= e!4661779 e!4661781)))

(declare-fun res!3133059 () Bool)

(assert (=> b!7898011 (=> res!3133059 e!4661781)))

(assert (=> b!7898011 (= res!3133059 (isEmpty!42463 (_1!38351 lt!2682062)))))

(assert (= (and d!2357669 c!1449602) b!7898009))

(assert (= (and d!2357669 (not c!1449602)) b!7898004))

(assert (= (and b!7898004 c!1449603) b!7898006))

(assert (= (and b!7898004 (not c!1449603)) b!7898008))

(assert (= (and b!7898006 c!1449605) b!7897999))

(assert (= (and b!7898006 (not c!1449605)) b!7898007))

(assert (= (and b!7898008 c!1449606) b!7898001))

(assert (= (and b!7898008 (not c!1449606)) b!7898002))

(assert (= (and b!7898008 c!1449604) b!7898000))

(assert (= (and b!7898008 (not c!1449604)) b!7898010))

(assert (= (and b!7898000 c!1449607) b!7897998))

(assert (= (and b!7898000 (not c!1449607)) b!7898003))

(assert (= (or b!7898000 b!7898010) bm!733003))

(assert (= (or b!7898000 b!7898010) bm!733001))

(assert (= (or b!7898000 b!7898010) bm!732999))

(assert (= (or b!7898000 b!7898010) bm!733000))

(assert (= (or b!7898006 b!7898001) bm!732996))

(assert (= (or b!7898006 b!7898008) bm!732997))

(assert (= (or b!7898006 b!7898001) bm!732998))

(assert (= (or b!7898006 b!7898001) bm!733002))

(assert (= (and d!2357669 res!3133060) b!7898011))

(assert (= (and b!7898011 (not res!3133059)) b!7898005))

(declare-fun m!8273052 () Bool)

(assert (=> bm!732999 m!8273052))

(declare-fun m!8273054 () Bool)

(assert (=> b!7898011 m!8273054))

(declare-fun m!8273056 () Bool)

(assert (=> b!7898005 m!8273056))

(assert (=> b!7898005 m!8272886))

(assert (=> bm!732997 m!8272982))

(assert (=> bm!733000 m!8272696))

(declare-fun m!8273058 () Bool)

(assert (=> bm!733000 m!8273058))

(declare-fun m!8273060 () Bool)

(assert (=> d!2357669 m!8273060))

(declare-fun m!8273062 () Bool)

(assert (=> d!2357669 m!8273062))

(declare-fun m!8273064 () Bool)

(assert (=> d!2357669 m!8273064))

(declare-fun m!8273066 () Bool)

(assert (=> d!2357669 m!8273066))

(assert (=> d!2357669 m!8272968))

(assert (=> d!2357669 m!8273060))

(declare-fun m!8273068 () Bool)

(assert (=> d!2357669 m!8273068))

(declare-fun m!8273070 () Bool)

(assert (=> d!2357669 m!8273070))

(declare-fun m!8273072 () Bool)

(assert (=> d!2357669 m!8273072))

(assert (=> bm!733001 m!8272780))

(declare-fun m!8273074 () Bool)

(assert (=> b!7898008 m!8273074))

(declare-fun m!8273076 () Bool)

(assert (=> b!7898008 m!8273076))

(assert (=> b!7898008 m!8272696))

(declare-fun m!8273078 () Bool)

(assert (=> b!7898008 m!8273078))

(assert (=> b!7898008 m!8272780))

(declare-fun m!8273080 () Bool)

(assert (=> b!7898008 m!8273080))

(declare-fun m!8273082 () Bool)

(assert (=> b!7898008 m!8273082))

(declare-fun m!8273084 () Bool)

(assert (=> b!7898008 m!8273084))

(assert (=> b!7898008 m!8272782))

(assert (=> b!7898008 m!8272886))

(assert (=> b!7898008 m!8273072))

(assert (=> b!7898008 m!8273080))

(declare-fun m!8273086 () Bool)

(assert (=> b!7898008 m!8273086))

(assert (=> b!7898008 m!8273072))

(declare-fun m!8273088 () Bool)

(assert (=> b!7898008 m!8273088))

(assert (=> b!7898008 m!8273084))

(declare-fun m!8273090 () Bool)

(assert (=> b!7898008 m!8273090))

(assert (=> bm!732996 m!8272714))

(assert (=> bm!732998 m!8272716))

(declare-fun m!8273092 () Bool)

(assert (=> bm!733002 m!8273092))

(declare-fun m!8273094 () Bool)

(assert (=> b!7898000 m!8273094))

(assert (=> bm!733003 m!8272782))

(assert (=> b!7897820 d!2357669))

(declare-fun d!2357683 () Bool)

(declare-fun lt!2682087 () Int)

(assert (=> d!2357683 (>= lt!2682087 0)))

(declare-fun e!4661797 () Int)

(assert (=> d!2357683 (= lt!2682087 e!4661797)))

(declare-fun c!1449614 () Bool)

(assert (=> d!2357683 (= c!1449614 ((_ is Nil!74023) Nil!74023))))

(assert (=> d!2357683 (= (size!42878 Nil!74023) lt!2682087)))

(declare-fun b!7898040 () Bool)

(assert (=> b!7898040 (= e!4661797 0)))

(declare-fun b!7898041 () Bool)

(assert (=> b!7898041 (= e!4661797 (+ 1 (size!42878 (t!388882 Nil!74023))))))

(assert (= (and d!2357683 c!1449614) b!7898040))

(assert (= (and d!2357683 (not c!1449614)) b!7898041))

(declare-fun m!8273096 () Bool)

(assert (=> b!7898041 m!8273096))

(assert (=> b!7897820 d!2357683))

(assert (=> b!7897820 d!2357577))

(declare-fun d!2357685 () Bool)

(assert (=> d!2357685 (= (list!19163 lt!2681913) (list!19165 (c!1449531 lt!2681913)))))

(declare-fun bs!1967834 () Bool)

(assert (= bs!1967834 d!2357685))

(declare-fun m!8273098 () Bool)

(assert (=> bs!1967834 m!8273098))

(assert (=> d!2357587 d!2357685))

(declare-fun b!7898042 () Bool)

(declare-fun e!4661799 () Bool)

(declare-fun call!733013 () Bool)

(assert (=> b!7898042 (= e!4661799 call!733013)))

(declare-fun b!7898043 () Bool)

(declare-fun e!4661804 () Bool)

(declare-fun call!733012 () Bool)

(assert (=> b!7898043 (= e!4661804 call!733012)))

(declare-fun d!2357687 () Bool)

(declare-fun res!3133077 () Bool)

(declare-fun e!4661800 () Bool)

(assert (=> d!2357687 (=> res!3133077 e!4661800)))

(assert (=> d!2357687 (= res!3133077 ((_ is ElementMatch!21245) (ite c!1449560 (regTwo!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regOne!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))))))))

(assert (=> d!2357687 (= (validRegex!11639 (ite c!1449560 (regTwo!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regOne!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))))) e!4661800)))

(declare-fun bm!733006 () Bool)

(declare-fun call!733011 () Bool)

(assert (=> bm!733006 (= call!733011 call!733013)))

(declare-fun b!7898044 () Bool)

(declare-fun e!4661803 () Bool)

(declare-fun e!4661802 () Bool)

(assert (=> b!7898044 (= e!4661803 e!4661802)))

(declare-fun c!1449615 () Bool)

(assert (=> b!7898044 (= c!1449615 ((_ is Union!21245) (ite c!1449560 (regTwo!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regOne!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))))))))

(declare-fun c!1449616 () Bool)

(declare-fun bm!733007 () Bool)

(assert (=> bm!733007 (= call!733013 (validRegex!11639 (ite c!1449616 (reg!21574 (ite c!1449560 (regTwo!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regOne!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))))) (ite c!1449615 (regOne!43003 (ite c!1449560 (regTwo!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regOne!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))))) (regTwo!43002 (ite c!1449560 (regTwo!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regOne!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896))))))))))))

(declare-fun b!7898045 () Bool)

(declare-fun e!4661801 () Bool)

(assert (=> b!7898045 (= e!4661801 call!733011)))

(declare-fun b!7898046 () Bool)

(assert (=> b!7898046 (= e!4661800 e!4661803)))

(assert (=> b!7898046 (= c!1449616 ((_ is Star!21245) (ite c!1449560 (regTwo!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regOne!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))))))))

(declare-fun b!7898047 () Bool)

(declare-fun res!3133079 () Bool)

(declare-fun e!4661798 () Bool)

(assert (=> b!7898047 (=> res!3133079 e!4661798)))

(assert (=> b!7898047 (= res!3133079 (not ((_ is Concat!30104) (ite c!1449560 (regTwo!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regOne!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896))))))))))

(assert (=> b!7898047 (= e!4661802 e!4661798)))

(declare-fun b!7898048 () Bool)

(assert (=> b!7898048 (= e!4661803 e!4661799)))

(declare-fun res!3133078 () Bool)

(assert (=> b!7898048 (= res!3133078 (not (nullable!9478 (reg!21574 (ite c!1449560 (regTwo!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regOne!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))))))))))

(assert (=> b!7898048 (=> (not res!3133078) (not e!4661799))))

(declare-fun b!7898049 () Bool)

(assert (=> b!7898049 (= e!4661798 e!4661801)))

(declare-fun res!3133081 () Bool)

(assert (=> b!7898049 (=> (not res!3133081) (not e!4661801))))

(assert (=> b!7898049 (= res!3133081 call!733012)))

(declare-fun bm!733008 () Bool)

(assert (=> bm!733008 (= call!733012 (validRegex!11639 (ite c!1449615 (regTwo!43003 (ite c!1449560 (regTwo!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regOne!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))))) (regOne!43002 (ite c!1449560 (regTwo!43003 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))) (regOne!43002 (regex!8542 (rule!11820 (_1!38349 lt!2681896)))))))))))

(declare-fun b!7898050 () Bool)

(declare-fun res!3133080 () Bool)

(assert (=> b!7898050 (=> (not res!3133080) (not e!4661804))))

(assert (=> b!7898050 (= res!3133080 call!733011)))

(assert (=> b!7898050 (= e!4661802 e!4661804)))

(assert (= (and d!2357687 (not res!3133077)) b!7898046))

(assert (= (and b!7898046 c!1449616) b!7898048))

(assert (= (and b!7898046 (not c!1449616)) b!7898044))

(assert (= (and b!7898048 res!3133078) b!7898042))

(assert (= (and b!7898044 c!1449615) b!7898050))

(assert (= (and b!7898044 (not c!1449615)) b!7898047))

(assert (= (and b!7898050 res!3133080) b!7898043))

(assert (= (and b!7898047 (not res!3133079)) b!7898049))

(assert (= (and b!7898049 res!3133081) b!7898045))

(assert (= (or b!7898050 b!7898045) bm!733006))

(assert (= (or b!7898043 b!7898049) bm!733008))

(assert (= (or b!7898042 bm!733006) bm!733007))

(declare-fun m!8273100 () Bool)

(assert (=> bm!733007 m!8273100))

(declare-fun m!8273102 () Bool)

(assert (=> b!7898048 m!8273102))

(declare-fun m!8273104 () Bool)

(assert (=> bm!733008 m!8273104))

(assert (=> bm!732969 d!2357687))

(declare-fun d!2357689 () Bool)

(declare-fun nullableFct!3745 (Regex!21245) Bool)

(assert (=> d!2357689 (= (nullable!9478 (reg!21574 (regex!8542 (rule!11820 (_1!38349 lt!2681896))))) (nullableFct!3745 (reg!21574 (regex!8542 (rule!11820 (_1!38349 lt!2681896))))))))

(declare-fun bs!1967835 () Bool)

(assert (= bs!1967835 d!2357689))

(declare-fun m!8273106 () Bool)

(assert (=> bs!1967835 m!8273106))

(assert (=> b!7897759 d!2357689))

(declare-fun d!2357691 () Bool)

(declare-fun c!1449619 () Bool)

(assert (=> d!2357691 (= c!1449619 ((_ is Nil!74023) lt!2681901))))

(declare-fun e!4661807 () (InoxSet C!42820))

(assert (=> d!2357691 (= (content!15705 lt!2681901) e!4661807)))

(declare-fun b!7898055 () Bool)

(assert (=> b!7898055 (= e!4661807 ((as const (Array C!42820 Bool)) false))))

(declare-fun b!7898056 () Bool)

(assert (=> b!7898056 (= e!4661807 ((_ map or) (store ((as const (Array C!42820 Bool)) false) (h!80471 lt!2681901) true) (content!15705 (t!388882 lt!2681901))))))

(assert (= (and d!2357691 c!1449619) b!7898055))

(assert (= (and d!2357691 (not c!1449619)) b!7898056))

(declare-fun m!8273108 () Bool)

(assert (=> b!7898056 m!8273108))

(declare-fun m!8273110 () Bool)

(assert (=> b!7898056 m!8273110))

(assert (=> d!2357563 d!2357691))

(declare-fun d!2357693 () Bool)

(declare-fun c!1449621 () Bool)

(assert (=> d!2357693 (= c!1449621 ((_ is Nil!74023) lt!2681898))))

(declare-fun e!4661811 () (InoxSet C!42820))

(assert (=> d!2357693 (= (content!15705 lt!2681898) e!4661811)))

(declare-fun b!7898057 () Bool)

(assert (=> b!7898057 (= e!4661811 ((as const (Array C!42820 Bool)) false))))

(declare-fun b!7898058 () Bool)

(assert (=> b!7898058 (= e!4661811 ((_ map or) (store ((as const (Array C!42820 Bool)) false) (h!80471 lt!2681898) true) (content!15705 (t!388882 lt!2681898))))))

(assert (= (and d!2357693 c!1449621) b!7898057))

(assert (= (and d!2357693 (not c!1449621)) b!7898058))

(declare-fun m!8273112 () Bool)

(assert (=> b!7898058 m!8273112))

(declare-fun m!8273114 () Bool)

(assert (=> b!7898058 m!8273114))

(assert (=> d!2357563 d!2357693))

(declare-fun d!2357695 () Bool)

(declare-fun c!1449624 () Bool)

(assert (=> d!2357695 (= c!1449624 ((_ is Nil!74023) (_2!38349 lt!2681896)))))

(declare-fun e!4661816 () (InoxSet C!42820))

(assert (=> d!2357695 (= (content!15705 (_2!38349 lt!2681896)) e!4661816)))

(declare-fun b!7898073 () Bool)

(assert (=> b!7898073 (= e!4661816 ((as const (Array C!42820 Bool)) false))))

(declare-fun b!7898074 () Bool)

(assert (=> b!7898074 (= e!4661816 ((_ map or) (store ((as const (Array C!42820 Bool)) false) (h!80471 (_2!38349 lt!2681896)) true) (content!15705 (t!388882 (_2!38349 lt!2681896)))))))

(assert (= (and d!2357695 c!1449624) b!7898073))

(assert (= (and d!2357695 (not c!1449624)) b!7898074))

(declare-fun m!8273116 () Bool)

(assert (=> b!7898074 m!8273116))

(declare-fun m!8273118 () Bool)

(assert (=> b!7898074 m!8273118))

(assert (=> d!2357563 d!2357695))

(declare-fun d!2357697 () Bool)

(declare-fun lt!2682089 () Int)

(assert (=> d!2357697 (>= lt!2682089 0)))

(declare-fun e!4661817 () Int)

(assert (=> d!2357697 (= lt!2682089 e!4661817)))

(declare-fun c!1449625 () Bool)

(assert (=> d!2357697 (= c!1449625 ((_ is Nil!74023) (t!388882 (_2!38349 lt!2681896))))))

(assert (=> d!2357697 (= (size!42878 (t!388882 (_2!38349 lt!2681896))) lt!2682089)))

(declare-fun b!7898075 () Bool)

(assert (=> b!7898075 (= e!4661817 0)))

(declare-fun b!7898076 () Bool)

(assert (=> b!7898076 (= e!4661817 (+ 1 (size!42878 (t!388882 (t!388882 (_2!38349 lt!2681896))))))))

(assert (= (and d!2357697 c!1449625) b!7898075))

(assert (= (and d!2357697 (not c!1449625)) b!7898076))

(declare-fun m!8273120 () Bool)

(assert (=> b!7898076 m!8273120))

(assert (=> b!7897609 d!2357697))

(declare-fun d!2357699 () Bool)

(declare-fun lt!2682090 () Int)

(assert (=> d!2357699 (>= lt!2682090 0)))

(declare-fun e!4661818 () Int)

(assert (=> d!2357699 (= lt!2682090 e!4661818)))

(declare-fun c!1449626 () Bool)

(assert (=> d!2357699 (= c!1449626 ((_ is Nil!74023) lt!2681901))))

(assert (=> d!2357699 (= (size!42878 lt!2681901) lt!2682090)))

(declare-fun b!7898077 () Bool)

(assert (=> b!7898077 (= e!4661818 0)))

(declare-fun b!7898078 () Bool)

(assert (=> b!7898078 (= e!4661818 (+ 1 (size!42878 (t!388882 lt!2681901))))))

(assert (= (and d!2357699 c!1449626) b!7898077))

(assert (= (and d!2357699 (not c!1449626)) b!7898078))

(declare-fun m!8273122 () Bool)

(assert (=> b!7898078 m!8273122))

(assert (=> b!7897595 d!2357699))

(declare-fun d!2357701 () Bool)

(declare-fun lt!2682091 () Int)

(assert (=> d!2357701 (>= lt!2682091 0)))

(declare-fun e!4661819 () Int)

(assert (=> d!2357701 (= lt!2682091 e!4661819)))

(declare-fun c!1449627 () Bool)

(assert (=> d!2357701 (= c!1449627 ((_ is Nil!74023) lt!2681898))))

(assert (=> d!2357701 (= (size!42878 lt!2681898) lt!2682091)))

(declare-fun b!7898079 () Bool)

(assert (=> b!7898079 (= e!4661819 0)))

(declare-fun b!7898080 () Bool)

(assert (=> b!7898080 (= e!4661819 (+ 1 (size!42878 (t!388882 lt!2681898))))))

(assert (= (and d!2357701 c!1449627) b!7898079))

(assert (= (and d!2357701 (not c!1449627)) b!7898080))

(declare-fun m!8273124 () Bool)

(assert (=> b!7898080 m!8273124))

(assert (=> b!7897595 d!2357701))

(assert (=> b!7897595 d!2357575))

(declare-fun b!7898083 () Bool)

(declare-fun res!3133090 () Bool)

(declare-fun e!4661821 () Bool)

(assert (=> b!7898083 (=> (not res!3133090) (not e!4661821))))

(declare-fun lt!2682092 () List!74147)

(assert (=> b!7898083 (= res!3133090 (= (size!42878 lt!2682092) (+ (size!42878 (t!388882 lt!2681898)) (size!42878 (_2!38349 lt!2681896)))))))

(declare-fun b!7898081 () Bool)

(declare-fun e!4661820 () List!74147)

(assert (=> b!7898081 (= e!4661820 (_2!38349 lt!2681896))))

(declare-fun b!7898084 () Bool)

(assert (=> b!7898084 (= e!4661821 (or (not (= (_2!38349 lt!2681896) Nil!74023)) (= lt!2682092 (t!388882 lt!2681898))))))

(declare-fun b!7898082 () Bool)

(assert (=> b!7898082 (= e!4661820 (Cons!74023 (h!80471 (t!388882 lt!2681898)) (++!18125 (t!388882 (t!388882 lt!2681898)) (_2!38349 lt!2681896))))))

(declare-fun d!2357703 () Bool)

(assert (=> d!2357703 e!4661821))

(declare-fun res!3133091 () Bool)

(assert (=> d!2357703 (=> (not res!3133091) (not e!4661821))))

(assert (=> d!2357703 (= res!3133091 (= (content!15705 lt!2682092) ((_ map or) (content!15705 (t!388882 lt!2681898)) (content!15705 (_2!38349 lt!2681896)))))))

(assert (=> d!2357703 (= lt!2682092 e!4661820)))

(declare-fun c!1449628 () Bool)

(assert (=> d!2357703 (= c!1449628 ((_ is Nil!74023) (t!388882 lt!2681898)))))

(assert (=> d!2357703 (= (++!18125 (t!388882 lt!2681898) (_2!38349 lt!2681896)) lt!2682092)))

(assert (= (and d!2357703 c!1449628) b!7898081))

(assert (= (and d!2357703 (not c!1449628)) b!7898082))

(assert (= (and d!2357703 res!3133091) b!7898083))

(assert (= (and b!7898083 res!3133090) b!7898084))

(declare-fun m!8273134 () Bool)

(assert (=> b!7898083 m!8273134))

(assert (=> b!7898083 m!8273124))

(assert (=> b!7898083 m!8272694))

(declare-fun m!8273138 () Bool)

(assert (=> b!7898082 m!8273138))

(declare-fun m!8273142 () Bool)

(assert (=> d!2357703 m!8273142))

(assert (=> d!2357703 m!8273114))

(assert (=> d!2357703 m!8272738))

(assert (=> b!7897594 d!2357703))

(declare-fun bs!1967836 () Bool)

(declare-fun d!2357705 () Bool)

(assert (= bs!1967836 (and d!2357705 d!2357599)))

(declare-fun lambda!472352 () Int)

(assert (=> bs!1967836 (= lambda!472352 lambda!472348)))

(assert (=> d!2357705 true))

(declare-fun lt!2682093 () Bool)

(assert (=> d!2357705 (= lt!2682093 (forall!18432 (t!388883 rulesArg!141) lambda!472352))))

(declare-fun e!4661823 () Bool)

(assert (=> d!2357705 (= lt!2682093 e!4661823)))

(declare-fun res!3133092 () Bool)

(assert (=> d!2357705 (=> res!3133092 e!4661823)))

(assert (=> d!2357705 (= res!3133092 (not ((_ is Cons!74024) (t!388883 rulesArg!141))))))

(assert (=> d!2357705 (= (rulesValidInductive!3353 thiss!14377 (t!388883 rulesArg!141)) lt!2682093)))

(declare-fun b!7898085 () Bool)

(declare-fun e!4661822 () Bool)

(assert (=> b!7898085 (= e!4661823 e!4661822)))

(declare-fun res!3133093 () Bool)

(assert (=> b!7898085 (=> (not res!3133093) (not e!4661822))))

(assert (=> b!7898085 (= res!3133093 (ruleValid!3923 thiss!14377 (h!80472 (t!388883 rulesArg!141))))))

(declare-fun b!7898086 () Bool)

(assert (=> b!7898086 (= e!4661822 (rulesValidInductive!3353 thiss!14377 (t!388883 (t!388883 rulesArg!141))))))

(assert (= (and d!2357705 (not res!3133092)) b!7898085))

(assert (= (and b!7898085 res!3133093) b!7898086))

(declare-fun m!8273148 () Bool)

(assert (=> d!2357705 m!8273148))

(declare-fun m!8273150 () Bool)

(assert (=> b!7898085 m!8273150))

(declare-fun m!8273154 () Bool)

(assert (=> b!7898086 m!8273154))

(assert (=> b!7897730 d!2357705))

(assert (=> b!7897729 d!2357653))

(assert (=> b!7897818 d!2357645))

(declare-fun d!2357711 () Bool)

(declare-fun lt!2682096 () Int)

(assert (=> d!2357711 (>= lt!2682096 0)))

(declare-fun e!4661826 () Int)

(assert (=> d!2357711 (= lt!2682096 e!4661826)))

(declare-fun c!1449631 () Bool)

(assert (=> d!2357711 (= c!1449631 ((_ is Nil!74023) (originalCharacters!8783 (_1!38349 (get!26572 lt!2681963)))))))

(assert (=> d!2357711 (= (size!42878 (originalCharacters!8783 (_1!38349 (get!26572 lt!2681963)))) lt!2682096)))

(declare-fun b!7898091 () Bool)

(assert (=> b!7898091 (= e!4661826 0)))

(declare-fun b!7898092 () Bool)

(assert (=> b!7898092 (= e!4661826 (+ 1 (size!42878 (t!388882 (originalCharacters!8783 (_1!38349 (get!26572 lt!2681963)))))))))

(assert (= (and d!2357711 c!1449631) b!7898091))

(assert (= (and d!2357711 (not c!1449631)) b!7898092))

(declare-fun m!8273158 () Bool)

(assert (=> b!7898092 m!8273158))

(assert (=> b!7897818 d!2357711))

(assert (=> d!2357595 d!2357591))

(declare-fun d!2357715 () Bool)

(assert (=> d!2357715 (isPrefix!6375 input!1184 input!1184)))

(assert (=> d!2357715 true))

(declare-fun _$45!2416 () Unit!169038)

(assert (=> d!2357715 (= (choose!59703 input!1184 input!1184) _$45!2416)))

(declare-fun bs!1967837 () Bool)

(assert (= bs!1967837 d!2357715))

(assert (=> bs!1967837 m!8272714))

(assert (=> d!2357595 d!2357715))

(declare-fun b!7898116 () Bool)

(declare-fun e!4661841 () List!74147)

(assert (=> b!7898116 (= e!4661841 (++!18125 (list!19165 (left!56490 (c!1449531 (charsOf!5491 (_1!38349 lt!2681896))))) (list!19165 (right!56820 (c!1449531 (charsOf!5491 (_1!38349 lt!2681896)))))))))

(declare-fun b!7898115 () Bool)

(declare-fun list!19166 (IArray!31493) List!74147)

(assert (=> b!7898115 (= e!4661841 (list!19166 (xs!19098 (c!1449531 (charsOf!5491 (_1!38349 lt!2681896))))))))

(declare-fun b!7898113 () Bool)

(declare-fun e!4661840 () List!74147)

(assert (=> b!7898113 (= e!4661840 Nil!74023)))

(declare-fun d!2357719 () Bool)

(declare-fun c!1449639 () Bool)

(assert (=> d!2357719 (= c!1449639 ((_ is Empty!15716) (c!1449531 (charsOf!5491 (_1!38349 lt!2681896)))))))

(assert (=> d!2357719 (= (list!19165 (c!1449531 (charsOf!5491 (_1!38349 lt!2681896)))) e!4661840)))

(declare-fun b!7898114 () Bool)

(assert (=> b!7898114 (= e!4661840 e!4661841)))

(declare-fun c!1449640 () Bool)

(assert (=> b!7898114 (= c!1449640 ((_ is Leaf!29955) (c!1449531 (charsOf!5491 (_1!38349 lt!2681896)))))))

(assert (= (and d!2357719 c!1449639) b!7898113))

(assert (= (and d!2357719 (not c!1449639)) b!7898114))

(assert (= (and b!7898114 c!1449640) b!7898115))

(assert (= (and b!7898114 (not c!1449640)) b!7898116))

(declare-fun m!8273166 () Bool)

(assert (=> b!7898116 m!8273166))

(declare-fun m!8273168 () Bool)

(assert (=> b!7898116 m!8273168))

(assert (=> b!7898116 m!8273166))

(assert (=> b!7898116 m!8273168))

(declare-fun m!8273172 () Bool)

(assert (=> b!7898116 m!8273172))

(declare-fun m!8273176 () Bool)

(assert (=> b!7898115 m!8273176))

(assert (=> d!2357583 d!2357719))

(declare-fun d!2357725 () Bool)

(declare-fun c!1449649 () Bool)

(assert (=> d!2357725 (= c!1449649 ((_ is Node!15716) (c!1449531 (dynLambda!30018 (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (value!285428 (_1!38349 lt!2681896))))))))

(declare-fun e!4661853 () Bool)

(assert (=> d!2357725 (= (inv!95013 (c!1449531 (dynLambda!30018 (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (value!285428 (_1!38349 lt!2681896))))) e!4661853)))

(declare-fun b!7898137 () Bool)

(declare-fun inv!95015 (Conc!15716) Bool)

(assert (=> b!7898137 (= e!4661853 (inv!95015 (c!1449531 (dynLambda!30018 (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (value!285428 (_1!38349 lt!2681896))))))))

(declare-fun b!7898138 () Bool)

(declare-fun e!4661854 () Bool)

(assert (=> b!7898138 (= e!4661853 e!4661854)))

(declare-fun res!3133104 () Bool)

(assert (=> b!7898138 (= res!3133104 (not ((_ is Leaf!29955) (c!1449531 (dynLambda!30018 (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (value!285428 (_1!38349 lt!2681896)))))))))

(assert (=> b!7898138 (=> res!3133104 e!4661854)))

(declare-fun b!7898139 () Bool)

(declare-fun inv!95016 (Conc!15716) Bool)

(assert (=> b!7898139 (= e!4661854 (inv!95016 (c!1449531 (dynLambda!30018 (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (value!285428 (_1!38349 lt!2681896))))))))

(assert (= (and d!2357725 c!1449649) b!7898137))

(assert (= (and d!2357725 (not c!1449649)) b!7898138))

(assert (= (and b!7898138 (not res!3133104)) b!7898139))

(declare-fun m!8273196 () Bool)

(assert (=> b!7898137 m!8273196))

(declare-fun m!8273198 () Bool)

(assert (=> b!7898139 m!8273198))

(assert (=> b!7897625 d!2357725))

(declare-fun d!2357737 () Bool)

(assert (=> d!2357737 (= (inv!95008 (tag!9406 (h!80472 (t!388883 rulesArg!141)))) (= (mod (str.len (value!285427 (tag!9406 (h!80472 (t!388883 rulesArg!141))))) 2) 0))))

(assert (=> b!7897832 d!2357737))

(declare-fun d!2357739 () Bool)

(declare-fun res!3133105 () Bool)

(declare-fun e!4661855 () Bool)

(assert (=> d!2357739 (=> (not res!3133105) (not e!4661855))))

(assert (=> d!2357739 (= res!3133105 (semiInverseModEq!3803 (toChars!11438 (transformation!8542 (h!80472 (t!388883 rulesArg!141)))) (toValue!11579 (transformation!8542 (h!80472 (t!388883 rulesArg!141))))))))

(assert (=> d!2357739 (= (inv!95010 (transformation!8542 (h!80472 (t!388883 rulesArg!141)))) e!4661855)))

(declare-fun b!7898142 () Bool)

(assert (=> b!7898142 (= e!4661855 (equivClasses!3618 (toChars!11438 (transformation!8542 (h!80472 (t!388883 rulesArg!141)))) (toValue!11579 (transformation!8542 (h!80472 (t!388883 rulesArg!141))))))))

(assert (= (and d!2357739 res!3133105) b!7898142))

(declare-fun m!8273200 () Bool)

(assert (=> d!2357739 m!8273200))

(declare-fun m!8273202 () Bool)

(assert (=> b!7898142 m!8273202))

(assert (=> b!7897832 d!2357739))

(declare-fun d!2357741 () Bool)

(assert (=> d!2357741 (= (head!16136 input!1184) (h!80471 input!1184))))

(assert (=> b!7897647 d!2357741))

(declare-fun d!2357743 () Bool)

(assert (=> d!2357743 true))

(declare-fun lambda!472355 () Int)

(declare-fun order!29779 () Int)

(declare-fun order!29777 () Int)

(declare-fun dynLambda!30021 (Int Int) Int)

(declare-fun dynLambda!30022 (Int Int) Int)

(assert (=> d!2357743 (< (dynLambda!30021 order!29777 (toValue!11579 (transformation!8542 (h!80472 rulesArg!141)))) (dynLambda!30022 order!29779 lambda!472355))))

(declare-fun Forall2!1309 (Int) Bool)

(assert (=> d!2357743 (= (equivClasses!3618 (toChars!11438 (transformation!8542 (h!80472 rulesArg!141))) (toValue!11579 (transformation!8542 (h!80472 rulesArg!141)))) (Forall2!1309 lambda!472355))))

(declare-fun bs!1967839 () Bool)

(assert (= bs!1967839 d!2357743))

(declare-fun m!8273210 () Bool)

(assert (=> bs!1967839 m!8273210))

(assert (=> b!7897599 d!2357743))

(declare-fun d!2357753 () Bool)

(assert (=> d!2357753 true))

(declare-fun lambda!472358 () Int)

(declare-fun order!29781 () Int)

(declare-fun order!29783 () Int)

(declare-fun dynLambda!30023 (Int Int) Int)

(declare-fun dynLambda!30024 (Int Int) Int)

(assert (=> d!2357753 (< (dynLambda!30023 order!29781 (toChars!11438 (transformation!8542 (h!80472 rulesArg!141)))) (dynLambda!30024 order!29783 lambda!472358))))

(assert (=> d!2357753 true))

(assert (=> d!2357753 (< (dynLambda!30021 order!29777 (toValue!11579 (transformation!8542 (h!80472 rulesArg!141)))) (dynLambda!30024 order!29783 lambda!472358))))

(declare-fun Forall!1838 (Int) Bool)

(assert (=> d!2357753 (= (semiInverseModEq!3803 (toChars!11438 (transformation!8542 (h!80472 rulesArg!141))) (toValue!11579 (transformation!8542 (h!80472 rulesArg!141)))) (Forall!1838 lambda!472358))))

(declare-fun bs!1967840 () Bool)

(assert (= bs!1967840 d!2357753))

(declare-fun m!8273212 () Bool)

(assert (=> bs!1967840 m!8273212))

(assert (=> d!2357569 d!2357753))

(declare-fun d!2357755 () Bool)

(declare-fun e!4661866 () Bool)

(assert (=> d!2357755 e!4661866))

(declare-fun res!3133113 () Bool)

(assert (=> d!2357755 (=> (not res!3133113) (not e!4661866))))

(declare-fun lt!2682119 () BalanceConc!30550)

(assert (=> d!2357755 (= res!3133113 (= (list!19163 lt!2682119) (originalCharacters!8783 (_1!38349 lt!2681896))))))

(declare-fun fromList!956 (List!74147) Conc!15716)

(assert (=> d!2357755 (= lt!2682119 (BalanceConc!30551 (fromList!956 (originalCharacters!8783 (_1!38349 lt!2681896)))))))

(assert (=> d!2357755 (= (fromListB!2770 (originalCharacters!8783 (_1!38349 lt!2681896))) lt!2682119)))

(declare-fun b!7898160 () Bool)

(assert (=> b!7898160 (= e!4661866 (isBalanced!4468 (fromList!956 (originalCharacters!8783 (_1!38349 lt!2681896)))))))

(assert (= (and d!2357755 res!3133113) b!7898160))

(declare-fun m!8273214 () Bool)

(assert (=> d!2357755 m!8273214))

(declare-fun m!8273216 () Bool)

(assert (=> d!2357755 m!8273216))

(assert (=> b!7898160 m!8273216))

(assert (=> b!7898160 m!8273216))

(declare-fun m!8273218 () Bool)

(assert (=> b!7898160 m!8273218))

(assert (=> d!2357627 d!2357755))

(assert (=> b!7897817 d!2357645))

(declare-fun d!2357757 () Bool)

(declare-fun lt!2682120 () Int)

(assert (=> d!2357757 (>= lt!2682120 0)))

(declare-fun e!4661867 () Int)

(assert (=> d!2357757 (= lt!2682120 e!4661867)))

(declare-fun c!1449654 () Bool)

(assert (=> d!2357757 (= c!1449654 ((_ is Nil!74023) (t!388882 input!1184)))))

(assert (=> d!2357757 (= (size!42878 (t!388882 input!1184)) lt!2682120)))

(declare-fun b!7898161 () Bool)

(assert (=> b!7898161 (= e!4661867 0)))

(declare-fun b!7898162 () Bool)

(assert (=> b!7898162 (= e!4661867 (+ 1 (size!42878 (t!388882 (t!388882 input!1184)))))))

(assert (= (and d!2357757 c!1449654) b!7898161))

(assert (= (and d!2357757 (not c!1449654)) b!7898162))

(declare-fun m!8273220 () Bool)

(assert (=> b!7898162 m!8273220))

(assert (=> b!7897612 d!2357757))

(declare-fun d!2357759 () Bool)

(declare-fun e!4661874 () Bool)

(assert (=> d!2357759 e!4661874))

(declare-fun res!3133123 () Bool)

(assert (=> d!2357759 (=> res!3133123 e!4661874)))

(assert (=> d!2357759 (= res!3133123 (isEmpty!42463 (_1!38351 (findLongestMatchInner!2144 (regex!8542 (h!80472 rulesArg!141)) Nil!74023 (size!42878 Nil!74023) input!1184 input!1184 (size!42878 input!1184)))))))

(declare-fun lt!2682131 () Unit!169038)

(declare-fun choose!59704 (Regex!21245 List!74147) Unit!169038)

(assert (=> d!2357759 (= lt!2682131 (choose!59704 (regex!8542 (h!80472 rulesArg!141)) input!1184))))

(assert (=> d!2357759 (validRegex!11639 (regex!8542 (h!80472 rulesArg!141)))))

(assert (=> d!2357759 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2107 (regex!8542 (h!80472 rulesArg!141)) input!1184) lt!2682131)))

(declare-fun b!7898172 () Bool)

(assert (=> b!7898172 (= e!4661874 (matchR!10629 (regex!8542 (h!80472 rulesArg!141)) (_1!38351 (findLongestMatchInner!2144 (regex!8542 (h!80472 rulesArg!141)) Nil!74023 (size!42878 Nil!74023) input!1184 input!1184 (size!42878 input!1184)))))))

(assert (= (and d!2357759 (not res!3133123)) b!7898172))

(assert (=> d!2357759 m!8272914))

(assert (=> d!2357759 m!8272886))

(assert (=> d!2357759 m!8272696))

(assert (=> d!2357759 m!8272888))

(assert (=> d!2357759 m!8272886))

(assert (=> d!2357759 m!8272968))

(declare-fun m!8273246 () Bool)

(assert (=> d!2357759 m!8273246))

(assert (=> d!2357759 m!8272696))

(assert (=> b!7898172 m!8272886))

(assert (=> b!7898172 m!8272696))

(assert (=> b!7898172 m!8272886))

(assert (=> b!7898172 m!8272696))

(assert (=> b!7898172 m!8272888))

(assert (=> b!7898172 m!8272890))

(assert (=> b!7897816 d!2357759))

(declare-fun bs!1967846 () Bool)

(declare-fun d!2357775 () Bool)

(assert (= bs!1967846 (and d!2357775 d!2357753)))

(declare-fun lambda!472364 () Int)

(assert (=> bs!1967846 (= lambda!472364 lambda!472358)))

(declare-fun b!7898198 () Bool)

(declare-fun e!4661888 () Bool)

(assert (=> b!7898198 (= e!4661888 true)))

(assert (=> d!2357775 e!4661888))

(assert (= d!2357775 b!7898198))

(assert (=> b!7898198 (< (dynLambda!30021 order!29777 (toValue!11579 (transformation!8542 (h!80472 rulesArg!141)))) (dynLambda!30024 order!29783 lambda!472364))))

(assert (=> b!7898198 (< (dynLambda!30023 order!29781 (toChars!11438 (transformation!8542 (h!80472 rulesArg!141)))) (dynLambda!30024 order!29783 lambda!472364))))

(assert (=> d!2357775 (= (list!19163 (dynLambda!30018 (toChars!11438 (transformation!8542 (h!80472 rulesArg!141))) (dynLambda!30019 (toValue!11579 (transformation!8542 (h!80472 rulesArg!141))) (seqFromList!6124 (_1!38351 lt!2681965))))) (list!19163 (seqFromList!6124 (_1!38351 lt!2681965))))))

(declare-fun lt!2682134 () Unit!169038)

(declare-fun ForallOf!1294 (Int BalanceConc!30550) Unit!169038)

(assert (=> d!2357775 (= lt!2682134 (ForallOf!1294 lambda!472364 (seqFromList!6124 (_1!38351 lt!2681965))))))

(assert (=> d!2357775 (= (lemmaSemiInverse!2654 (transformation!8542 (h!80472 rulesArg!141)) (seqFromList!6124 (_1!38351 lt!2681965))) lt!2682134)))

(declare-fun b_lambda!289563 () Bool)

(assert (=> (not b_lambda!289563) (not d!2357775)))

(declare-fun t!388911 () Bool)

(declare-fun tb!262607 () Bool)

(assert (=> (and b!7897574 (= (toChars!11438 (transformation!8542 (h!80472 rulesArg!141))) (toChars!11438 (transformation!8542 (h!80472 rulesArg!141)))) t!388911) tb!262607))

(declare-fun b!7898203 () Bool)

(declare-fun tp!2352971 () Bool)

(declare-fun e!4661891 () Bool)

(assert (=> b!7898203 (= e!4661891 (and (inv!95013 (c!1449531 (dynLambda!30018 (toChars!11438 (transformation!8542 (h!80472 rulesArg!141))) (dynLambda!30019 (toValue!11579 (transformation!8542 (h!80472 rulesArg!141))) (seqFromList!6124 (_1!38351 lt!2681965)))))) tp!2352971))))

(declare-fun result!359594 () Bool)

(assert (=> tb!262607 (= result!359594 (and (inv!95014 (dynLambda!30018 (toChars!11438 (transformation!8542 (h!80472 rulesArg!141))) (dynLambda!30019 (toValue!11579 (transformation!8542 (h!80472 rulesArg!141))) (seqFromList!6124 (_1!38351 lt!2681965))))) e!4661891))))

(assert (= tb!262607 b!7898203))

(declare-fun m!8273264 () Bool)

(assert (=> b!7898203 m!8273264))

(declare-fun m!8273266 () Bool)

(assert (=> tb!262607 m!8273266))

(assert (=> d!2357775 t!388911))

(declare-fun b_and!352375 () Bool)

(assert (= b_and!352367 (and (=> t!388911 result!359594) b_and!352375)))

(declare-fun t!388913 () Bool)

(declare-fun tb!262609 () Bool)

(assert (=> (and b!7897833 (= (toChars!11438 (transformation!8542 (h!80472 (t!388883 rulesArg!141)))) (toChars!11438 (transformation!8542 (h!80472 rulesArg!141)))) t!388913) tb!262609))

(declare-fun result!359596 () Bool)

(assert (= result!359596 result!359594))

(assert (=> d!2357775 t!388913))

(declare-fun b_and!352377 () Bool)

(assert (= b_and!352369 (and (=> t!388913 result!359596) b_and!352377)))

(declare-fun b_lambda!289565 () Bool)

(assert (=> (not b_lambda!289565) (not d!2357775)))

(declare-fun t!388915 () Bool)

(declare-fun tb!262611 () Bool)

(assert (=> (and b!7897574 (= (toValue!11579 (transformation!8542 (h!80472 rulesArg!141))) (toValue!11579 (transformation!8542 (h!80472 rulesArg!141)))) t!388915) tb!262611))

(declare-fun result!359598 () Bool)

(assert (=> tb!262611 (= result!359598 (inv!21 (dynLambda!30019 (toValue!11579 (transformation!8542 (h!80472 rulesArg!141))) (seqFromList!6124 (_1!38351 lt!2681965)))))))

(declare-fun m!8273268 () Bool)

(assert (=> tb!262611 m!8273268))

(assert (=> d!2357775 t!388915))

(declare-fun b_and!352379 () Bool)

(assert (= b_and!352357 (and (=> t!388915 result!359598) b_and!352379)))

(declare-fun t!388917 () Bool)

(declare-fun tb!262613 () Bool)

(assert (=> (and b!7897833 (= (toValue!11579 (transformation!8542 (h!80472 (t!388883 rulesArg!141)))) (toValue!11579 (transformation!8542 (h!80472 rulesArg!141)))) t!388917) tb!262613))

(declare-fun result!359600 () Bool)

(assert (= result!359600 result!359598))

(assert (=> d!2357775 t!388917))

(declare-fun b_and!352381 () Bool)

(assert (= b_and!352363 (and (=> t!388917 result!359600) b_and!352381)))

(declare-fun m!8273270 () Bool)

(assert (=> d!2357775 m!8273270))

(declare-fun m!8273272 () Bool)

(assert (=> d!2357775 m!8273272))

(assert (=> d!2357775 m!8272906))

(declare-fun m!8273274 () Bool)

(assert (=> d!2357775 m!8273274))

(assert (=> d!2357775 m!8273272))

(declare-fun m!8273276 () Bool)

(assert (=> d!2357775 m!8273276))

(assert (=> d!2357775 m!8272906))

(assert (=> d!2357775 m!8273270))

(assert (=> d!2357775 m!8272906))

(declare-fun m!8273278 () Bool)

(assert (=> d!2357775 m!8273278))

(assert (=> b!7897816 d!2357775))

(assert (=> b!7897816 d!2357683))

(declare-fun d!2357785 () Bool)

(assert (=> d!2357785 (= (seqFromList!6124 (_1!38351 lt!2681965)) (fromListB!2770 (_1!38351 lt!2681965)))))

(declare-fun bs!1967847 () Bool)

(assert (= bs!1967847 d!2357785))

(declare-fun m!8273280 () Bool)

(assert (=> bs!1967847 m!8273280))

(assert (=> b!7897816 d!2357785))

(declare-fun d!2357787 () Bool)

(assert (=> d!2357787 (= (apply!14306 (transformation!8542 (h!80472 rulesArg!141)) (seqFromList!6124 (_1!38351 lt!2681965))) (dynLambda!30019 (toValue!11579 (transformation!8542 (h!80472 rulesArg!141))) (seqFromList!6124 (_1!38351 lt!2681965))))))

(declare-fun b_lambda!289567 () Bool)

(assert (=> (not b_lambda!289567) (not d!2357787)))

(assert (=> d!2357787 t!388915))

(declare-fun b_and!352383 () Bool)

(assert (= b_and!352379 (and (=> t!388915 result!359598) b_and!352383)))

(assert (=> d!2357787 t!388917))

(declare-fun b_and!352385 () Bool)

(assert (= b_and!352381 (and (=> t!388917 result!359600) b_and!352385)))

(assert (=> d!2357787 m!8272906))

(assert (=> d!2357787 m!8273270))

(assert (=> b!7897816 d!2357787))

(declare-fun d!2357789 () Bool)

(assert (=> d!2357789 (= (isEmpty!42463 (_1!38351 (findLongestMatchInner!2144 (regex!8542 (h!80472 rulesArg!141)) Nil!74023 (size!42878 Nil!74023) input!1184 input!1184 (size!42878 input!1184)))) ((_ is Nil!74023) (_1!38351 (findLongestMatchInner!2144 (regex!8542 (h!80472 rulesArg!141)) Nil!74023 (size!42878 Nil!74023) input!1184 input!1184 (size!42878 input!1184)))))))

(assert (=> b!7897816 d!2357789))

(assert (=> b!7897816 d!2357669))

(declare-fun d!2357791 () Bool)

(declare-fun lt!2682137 () Int)

(assert (=> d!2357791 (= lt!2682137 (size!42878 (list!19163 (seqFromList!6124 (_1!38351 lt!2681965)))))))

(declare-fun size!42881 (Conc!15716) Int)

(assert (=> d!2357791 (= lt!2682137 (size!42881 (c!1449531 (seqFromList!6124 (_1!38351 lt!2681965)))))))

(assert (=> d!2357791 (= (size!42880 (seqFromList!6124 (_1!38351 lt!2681965))) lt!2682137)))

(declare-fun bs!1967848 () Bool)

(assert (= bs!1967848 d!2357791))

(assert (=> bs!1967848 m!8272906))

(assert (=> bs!1967848 m!8273274))

(assert (=> bs!1967848 m!8273274))

(declare-fun m!8273282 () Bool)

(assert (=> bs!1967848 m!8273282))

(declare-fun m!8273286 () Bool)

(assert (=> bs!1967848 m!8273286))

(assert (=> b!7897816 d!2357791))

(assert (=> b!7897816 d!2357577))

(assert (=> b!7897814 d!2357645))

(declare-fun d!2357793 () Bool)

(assert (=> d!2357793 (= (apply!14306 (transformation!8542 (rule!11820 (_1!38349 (get!26572 lt!2681963)))) (seqFromList!6124 (originalCharacters!8783 (_1!38349 (get!26572 lt!2681963))))) (dynLambda!30019 (toValue!11579 (transformation!8542 (rule!11820 (_1!38349 (get!26572 lt!2681963))))) (seqFromList!6124 (originalCharacters!8783 (_1!38349 (get!26572 lt!2681963))))))))

(declare-fun b_lambda!289569 () Bool)

(assert (=> (not b_lambda!289569) (not d!2357793)))

(declare-fun tb!262617 () Bool)

(declare-fun t!388921 () Bool)

(assert (=> (and b!7897574 (= (toValue!11579 (transformation!8542 (h!80472 rulesArg!141))) (toValue!11579 (transformation!8542 (rule!11820 (_1!38349 (get!26572 lt!2681963)))))) t!388921) tb!262617))

(declare-fun result!359603 () Bool)

(assert (=> tb!262617 (= result!359603 (inv!21 (dynLambda!30019 (toValue!11579 (transformation!8542 (rule!11820 (_1!38349 (get!26572 lt!2681963))))) (seqFromList!6124 (originalCharacters!8783 (_1!38349 (get!26572 lt!2681963)))))))))

(declare-fun m!8273292 () Bool)

(assert (=> tb!262617 m!8273292))

(assert (=> d!2357793 t!388921))

(declare-fun b_and!352387 () Bool)

(assert (= b_and!352383 (and (=> t!388921 result!359603) b_and!352387)))

(declare-fun tb!262619 () Bool)

(declare-fun t!388923 () Bool)

(assert (=> (and b!7897833 (= (toValue!11579 (transformation!8542 (h!80472 (t!388883 rulesArg!141)))) (toValue!11579 (transformation!8542 (rule!11820 (_1!38349 (get!26572 lt!2681963)))))) t!388923) tb!262619))

(declare-fun result!359606 () Bool)

(assert (= result!359606 result!359603))

(assert (=> d!2357793 t!388923))

(declare-fun b_and!352391 () Bool)

(assert (= b_and!352385 (and (=> t!388923 result!359606) b_and!352391)))

(assert (=> d!2357793 m!8272924))

(declare-fun m!8273296 () Bool)

(assert (=> d!2357793 m!8273296))

(assert (=> b!7897814 d!2357793))

(declare-fun d!2357797 () Bool)

(assert (=> d!2357797 (= (seqFromList!6124 (originalCharacters!8783 (_1!38349 (get!26572 lt!2681963)))) (fromListB!2770 (originalCharacters!8783 (_1!38349 (get!26572 lt!2681963)))))))

(declare-fun bs!1967849 () Bool)

(assert (= bs!1967849 d!2357797))

(declare-fun m!8273300 () Bool)

(assert (=> bs!1967849 m!8273300))

(assert (=> b!7897814 d!2357797))

(declare-fun b!7898219 () Bool)

(declare-fun e!4661904 () Bool)

(assert (=> b!7898219 (= e!4661904 tp_is_empty!52865)))

(declare-fun b!7898221 () Bool)

(declare-fun tp!2352974 () Bool)

(assert (=> b!7898221 (= e!4661904 tp!2352974)))

(assert (=> b!7897851 (= tp!2352966 e!4661904)))

(declare-fun b!7898220 () Bool)

(declare-fun tp!2352972 () Bool)

(declare-fun tp!2352973 () Bool)

(assert (=> b!7898220 (= e!4661904 (and tp!2352972 tp!2352973))))

(declare-fun b!7898222 () Bool)

(declare-fun tp!2352976 () Bool)

(declare-fun tp!2352975 () Bool)

(assert (=> b!7898222 (= e!4661904 (and tp!2352976 tp!2352975))))

(assert (= (and b!7897851 ((_ is ElementMatch!21245) (reg!21574 (regex!8542 (h!80472 rulesArg!141))))) b!7898219))

(assert (= (and b!7897851 ((_ is Concat!30104) (reg!21574 (regex!8542 (h!80472 rulesArg!141))))) b!7898220))

(assert (= (and b!7897851 ((_ is Star!21245) (reg!21574 (regex!8542 (h!80472 rulesArg!141))))) b!7898221))

(assert (= (and b!7897851 ((_ is Union!21245) (reg!21574 (regex!8542 (h!80472 rulesArg!141))))) b!7898222))

(declare-fun b!7898225 () Bool)

(declare-fun b_free!134507 () Bool)

(declare-fun b_next!135297 () Bool)

(assert (=> b!7898225 (= b_free!134507 (not b_next!135297))))

(declare-fun tb!262623 () Bool)

(declare-fun t!388927 () Bool)

(assert (=> (and b!7898225 (= (toValue!11579 (transformation!8542 (h!80472 (t!388883 (t!388883 rulesArg!141))))) (toValue!11579 (transformation!8542 (rule!11820 (_1!38349 lt!2681896))))) t!388927) tb!262623))

(declare-fun result!359610 () Bool)

(assert (= result!359610 result!359562))

(assert (=> d!2357625 t!388927))

(declare-fun t!388929 () Bool)

(declare-fun tb!262625 () Bool)

(assert (=> (and b!7898225 (= (toValue!11579 (transformation!8542 (h!80472 (t!388883 (t!388883 rulesArg!141))))) (toValue!11579 (transformation!8542 (h!80472 rulesArg!141)))) t!388929) tb!262625))

(declare-fun result!359612 () Bool)

(assert (= result!359612 result!359598))

(assert (=> d!2357775 t!388929))

(assert (=> d!2357787 t!388929))

(declare-fun tb!262627 () Bool)

(declare-fun t!388931 () Bool)

(assert (=> (and b!7898225 (= (toValue!11579 (transformation!8542 (h!80472 (t!388883 (t!388883 rulesArg!141))))) (toValue!11579 (transformation!8542 (rule!11820 (_1!38349 (get!26572 lt!2681963)))))) t!388931) tb!262627))

(declare-fun result!359614 () Bool)

(assert (= result!359614 result!359603))

(assert (=> d!2357793 t!388931))

(declare-fun b_and!352395 () Bool)

(declare-fun tp!2352980 () Bool)

(assert (=> b!7898225 (= tp!2352980 (and (=> t!388927 result!359610) (=> t!388929 result!359612) (=> t!388931 result!359614) b_and!352395))))

(declare-fun b_free!134509 () Bool)

(declare-fun b_next!135299 () Bool)

(assert (=> b!7898225 (= b_free!134509 (not b_next!135299))))

(declare-fun t!388933 () Bool)

(declare-fun tb!262629 () Bool)

(assert (=> (and b!7898225 (= (toChars!11438 (transformation!8542 (h!80472 (t!388883 (t!388883 rulesArg!141))))) (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896))))) t!388933) tb!262629))

(declare-fun result!359616 () Bool)

(assert (= result!359616 result!359554))

(assert (=> d!2357587 t!388933))

(declare-fun t!388935 () Bool)

(declare-fun tb!262631 () Bool)

(assert (=> (and b!7898225 (= (toChars!11438 (transformation!8542 (h!80472 (t!388883 (t!388883 rulesArg!141))))) (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 (get!26572 lt!2681963)))))) t!388935) tb!262631))

(declare-fun result!359618 () Bool)

(assert (= result!359618 result!359586))

(assert (=> d!2357643 t!388935))

(declare-fun t!388937 () Bool)

(declare-fun tb!262633 () Bool)

(assert (=> (and b!7898225 (= (toChars!11438 (transformation!8542 (h!80472 (t!388883 (t!388883 rulesArg!141))))) (toChars!11438 (transformation!8542 (h!80472 rulesArg!141)))) t!388937) tb!262633))

(declare-fun result!359620 () Bool)

(assert (= result!359620 result!359594))

(assert (=> d!2357775 t!388937))

(declare-fun b_and!352397 () Bool)

(declare-fun tp!2352978 () Bool)

(assert (=> b!7898225 (= tp!2352978 (and (=> t!388933 result!359616) (=> t!388935 result!359618) (=> t!388937 result!359620) b_and!352397))))

(declare-fun e!4661907 () Bool)

(assert (=> b!7898225 (= e!4661907 (and tp!2352980 tp!2352978))))

(declare-fun tp!2352979 () Bool)

(declare-fun e!4661906 () Bool)

(declare-fun b!7898224 () Bool)

(assert (=> b!7898224 (= e!4661906 (and tp!2352979 (inv!95008 (tag!9406 (h!80472 (t!388883 (t!388883 rulesArg!141))))) (inv!95010 (transformation!8542 (h!80472 (t!388883 (t!388883 rulesArg!141))))) e!4661907))))

(declare-fun b!7898223 () Bool)

(declare-fun e!4661905 () Bool)

(declare-fun tp!2352977 () Bool)

(assert (=> b!7898223 (= e!4661905 (and e!4661906 tp!2352977))))

(assert (=> b!7897831 (= tp!2352947 e!4661905)))

(assert (= b!7898224 b!7898225))

(assert (= b!7898223 b!7898224))

(assert (= (and b!7897831 ((_ is Cons!74024) (t!388883 (t!388883 rulesArg!141)))) b!7898223))

(declare-fun m!8273302 () Bool)

(assert (=> b!7898224 m!8273302))

(declare-fun m!8273304 () Bool)

(assert (=> b!7898224 m!8273304))

(declare-fun tp!2352989 () Bool)

(declare-fun b!7898234 () Bool)

(declare-fun tp!2352987 () Bool)

(declare-fun e!4661913 () Bool)

(assert (=> b!7898234 (= e!4661913 (and (inv!95013 (left!56490 (c!1449531 (dynLambda!30018 (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (value!285428 (_1!38349 lt!2681896)))))) tp!2352989 (inv!95013 (right!56820 (c!1449531 (dynLambda!30018 (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (value!285428 (_1!38349 lt!2681896)))))) tp!2352987))))

(declare-fun b!7898236 () Bool)

(declare-fun e!4661914 () Bool)

(declare-fun tp!2352988 () Bool)

(assert (=> b!7898236 (= e!4661914 tp!2352988)))

(declare-fun b!7898235 () Bool)

(declare-fun inv!95017 (IArray!31493) Bool)

(assert (=> b!7898235 (= e!4661913 (and (inv!95017 (xs!19098 (c!1449531 (dynLambda!30018 (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (value!285428 (_1!38349 lt!2681896)))))) e!4661914))))

(assert (=> b!7897625 (= tp!2352908 (and (inv!95013 (c!1449531 (dynLambda!30018 (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (value!285428 (_1!38349 lt!2681896))))) e!4661913))))

(assert (= (and b!7897625 ((_ is Node!15716) (c!1449531 (dynLambda!30018 (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (value!285428 (_1!38349 lt!2681896)))))) b!7898234))

(assert (= b!7898235 b!7898236))

(assert (= (and b!7897625 ((_ is Leaf!29955) (c!1449531 (dynLambda!30018 (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))) (value!285428 (_1!38349 lt!2681896)))))) b!7898235))

(declare-fun m!8273306 () Bool)

(assert (=> b!7898234 m!8273306))

(declare-fun m!8273308 () Bool)

(assert (=> b!7898234 m!8273308))

(declare-fun m!8273310 () Bool)

(assert (=> b!7898235 m!8273310))

(assert (=> b!7897625 m!8272760))

(declare-fun b!7898237 () Bool)

(declare-fun e!4661915 () Bool)

(assert (=> b!7898237 (= e!4661915 tp_is_empty!52865)))

(declare-fun b!7898239 () Bool)

(declare-fun tp!2352992 () Bool)

(assert (=> b!7898239 (= e!4661915 tp!2352992)))

(assert (=> b!7897852 (= tp!2352968 e!4661915)))

(declare-fun b!7898238 () Bool)

(declare-fun tp!2352990 () Bool)

(declare-fun tp!2352991 () Bool)

(assert (=> b!7898238 (= e!4661915 (and tp!2352990 tp!2352991))))

(declare-fun b!7898240 () Bool)

(declare-fun tp!2352994 () Bool)

(declare-fun tp!2352993 () Bool)

(assert (=> b!7898240 (= e!4661915 (and tp!2352994 tp!2352993))))

(assert (= (and b!7897852 ((_ is ElementMatch!21245) (regOne!43003 (regex!8542 (h!80472 rulesArg!141))))) b!7898237))

(assert (= (and b!7897852 ((_ is Concat!30104) (regOne!43003 (regex!8542 (h!80472 rulesArg!141))))) b!7898238))

(assert (= (and b!7897852 ((_ is Star!21245) (regOne!43003 (regex!8542 (h!80472 rulesArg!141))))) b!7898239))

(assert (= (and b!7897852 ((_ is Union!21245) (regOne!43003 (regex!8542 (h!80472 rulesArg!141))))) b!7898240))

(declare-fun b!7898241 () Bool)

(declare-fun e!4661916 () Bool)

(assert (=> b!7898241 (= e!4661916 tp_is_empty!52865)))

(declare-fun b!7898243 () Bool)

(declare-fun tp!2352997 () Bool)

(assert (=> b!7898243 (= e!4661916 tp!2352997)))

(assert (=> b!7897852 (= tp!2352967 e!4661916)))

(declare-fun b!7898242 () Bool)

(declare-fun tp!2352995 () Bool)

(declare-fun tp!2352996 () Bool)

(assert (=> b!7898242 (= e!4661916 (and tp!2352995 tp!2352996))))

(declare-fun b!7898244 () Bool)

(declare-fun tp!2352999 () Bool)

(declare-fun tp!2352998 () Bool)

(assert (=> b!7898244 (= e!4661916 (and tp!2352999 tp!2352998))))

(assert (= (and b!7897852 ((_ is ElementMatch!21245) (regTwo!43003 (regex!8542 (h!80472 rulesArg!141))))) b!7898241))

(assert (= (and b!7897852 ((_ is Concat!30104) (regTwo!43003 (regex!8542 (h!80472 rulesArg!141))))) b!7898242))

(assert (= (and b!7897852 ((_ is Star!21245) (regTwo!43003 (regex!8542 (h!80472 rulesArg!141))))) b!7898243))

(assert (= (and b!7897852 ((_ is Union!21245) (regTwo!43003 (regex!8542 (h!80472 rulesArg!141))))) b!7898244))

(declare-fun b!7898245 () Bool)

(declare-fun e!4661917 () Bool)

(assert (=> b!7898245 (= e!4661917 tp_is_empty!52865)))

(declare-fun b!7898247 () Bool)

(declare-fun tp!2353002 () Bool)

(assert (=> b!7898247 (= e!4661917 tp!2353002)))

(assert (=> b!7897832 (= tp!2352949 e!4661917)))

(declare-fun b!7898246 () Bool)

(declare-fun tp!2353000 () Bool)

(declare-fun tp!2353001 () Bool)

(assert (=> b!7898246 (= e!4661917 (and tp!2353000 tp!2353001))))

(declare-fun b!7898248 () Bool)

(declare-fun tp!2353004 () Bool)

(declare-fun tp!2353003 () Bool)

(assert (=> b!7898248 (= e!4661917 (and tp!2353004 tp!2353003))))

(assert (= (and b!7897832 ((_ is ElementMatch!21245) (regex!8542 (h!80472 (t!388883 rulesArg!141))))) b!7898245))

(assert (= (and b!7897832 ((_ is Concat!30104) (regex!8542 (h!80472 (t!388883 rulesArg!141))))) b!7898246))

(assert (= (and b!7897832 ((_ is Star!21245) (regex!8542 (h!80472 (t!388883 rulesArg!141))))) b!7898247))

(assert (= (and b!7897832 ((_ is Union!21245) (regex!8542 (h!80472 (t!388883 rulesArg!141))))) b!7898248))

(declare-fun b!7898249 () Bool)

(declare-fun e!4661918 () Bool)

(assert (=> b!7898249 (= e!4661918 tp_is_empty!52865)))

(declare-fun b!7898251 () Bool)

(declare-fun tp!2353007 () Bool)

(assert (=> b!7898251 (= e!4661918 tp!2353007)))

(assert (=> b!7897850 (= tp!2352964 e!4661918)))

(declare-fun b!7898250 () Bool)

(declare-fun tp!2353005 () Bool)

(declare-fun tp!2353006 () Bool)

(assert (=> b!7898250 (= e!4661918 (and tp!2353005 tp!2353006))))

(declare-fun b!7898252 () Bool)

(declare-fun tp!2353009 () Bool)

(declare-fun tp!2353008 () Bool)

(assert (=> b!7898252 (= e!4661918 (and tp!2353009 tp!2353008))))

(assert (= (and b!7897850 ((_ is ElementMatch!21245) (regOne!43002 (regex!8542 (h!80472 rulesArg!141))))) b!7898249))

(assert (= (and b!7897850 ((_ is Concat!30104) (regOne!43002 (regex!8542 (h!80472 rulesArg!141))))) b!7898250))

(assert (= (and b!7897850 ((_ is Star!21245) (regOne!43002 (regex!8542 (h!80472 rulesArg!141))))) b!7898251))

(assert (= (and b!7897850 ((_ is Union!21245) (regOne!43002 (regex!8542 (h!80472 rulesArg!141))))) b!7898252))

(declare-fun b!7898253 () Bool)

(declare-fun e!4661919 () Bool)

(assert (=> b!7898253 (= e!4661919 tp_is_empty!52865)))

(declare-fun b!7898255 () Bool)

(declare-fun tp!2353012 () Bool)

(assert (=> b!7898255 (= e!4661919 tp!2353012)))

(assert (=> b!7897850 (= tp!2352965 e!4661919)))

(declare-fun b!7898254 () Bool)

(declare-fun tp!2353010 () Bool)

(declare-fun tp!2353011 () Bool)

(assert (=> b!7898254 (= e!4661919 (and tp!2353010 tp!2353011))))

(declare-fun b!7898256 () Bool)

(declare-fun tp!2353014 () Bool)

(declare-fun tp!2353013 () Bool)

(assert (=> b!7898256 (= e!4661919 (and tp!2353014 tp!2353013))))

(assert (= (and b!7897850 ((_ is ElementMatch!21245) (regTwo!43002 (regex!8542 (h!80472 rulesArg!141))))) b!7898253))

(assert (= (and b!7897850 ((_ is Concat!30104) (regTwo!43002 (regex!8542 (h!80472 rulesArg!141))))) b!7898254))

(assert (= (and b!7897850 ((_ is Star!21245) (regTwo!43002 (regex!8542 (h!80472 rulesArg!141))))) b!7898255))

(assert (= (and b!7897850 ((_ is Union!21245) (regTwo!43002 (regex!8542 (h!80472 rulesArg!141))))) b!7898256))

(declare-fun b!7898257 () Bool)

(declare-fun e!4661920 () Bool)

(declare-fun tp!2353015 () Bool)

(assert (=> b!7898257 (= e!4661920 (and tp_is_empty!52865 tp!2353015))))

(assert (=> b!7897838 (= tp!2352953 e!4661920)))

(assert (= (and b!7897838 ((_ is Cons!74023) (t!388882 (t!388882 input!1184)))) b!7898257))

(declare-fun b_lambda!289573 () Bool)

(assert (= b_lambda!289565 (or (and b!7897574 b_free!134495) (and b!7897833 b_free!134503 (= (toValue!11579 (transformation!8542 (h!80472 (t!388883 rulesArg!141)))) (toValue!11579 (transformation!8542 (h!80472 rulesArg!141))))) (and b!7898225 b_free!134507 (= (toValue!11579 (transformation!8542 (h!80472 (t!388883 (t!388883 rulesArg!141))))) (toValue!11579 (transformation!8542 (h!80472 rulesArg!141))))) b_lambda!289573)))

(declare-fun b_lambda!289575 () Bool)

(assert (= b_lambda!289563 (or (and b!7897574 b_free!134497) (and b!7897833 b_free!134505 (= (toChars!11438 (transformation!8542 (h!80472 (t!388883 rulesArg!141)))) (toChars!11438 (transformation!8542 (h!80472 rulesArg!141))))) (and b!7898225 b_free!134509 (= (toChars!11438 (transformation!8542 (h!80472 (t!388883 (t!388883 rulesArg!141))))) (toChars!11438 (transformation!8542 (h!80472 rulesArg!141))))) b_lambda!289575)))

(declare-fun b_lambda!289577 () Bool)

(assert (= b_lambda!289549 (or (and b!7897574 b_free!134497 (= (toChars!11438 (transformation!8542 (h!80472 rulesArg!141))) (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))))) (and b!7897833 b_free!134505 (= (toChars!11438 (transformation!8542 (h!80472 (t!388883 rulesArg!141)))) (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))))) (and b!7898225 b_free!134509 (= (toChars!11438 (transformation!8542 (h!80472 (t!388883 (t!388883 rulesArg!141))))) (toChars!11438 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))))) b_lambda!289577)))

(declare-fun b_lambda!289579 () Bool)

(assert (= b_lambda!289553 (or (and b!7897574 b_free!134495 (= (toValue!11579 (transformation!8542 (h!80472 rulesArg!141))) (toValue!11579 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))))) (and b!7897833 b_free!134503 (= (toValue!11579 (transformation!8542 (h!80472 (t!388883 rulesArg!141)))) (toValue!11579 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))))) (and b!7898225 b_free!134507 (= (toValue!11579 (transformation!8542 (h!80472 (t!388883 (t!388883 rulesArg!141))))) (toValue!11579 (transformation!8542 (rule!11820 (_1!38349 lt!2681896)))))) b_lambda!289579)))

(declare-fun b_lambda!289581 () Bool)

(assert (= b_lambda!289567 (or (and b!7897574 b_free!134495) (and b!7897833 b_free!134503 (= (toValue!11579 (transformation!8542 (h!80472 (t!388883 rulesArg!141)))) (toValue!11579 (transformation!8542 (h!80472 rulesArg!141))))) (and b!7898225 b_free!134507 (= (toValue!11579 (transformation!8542 (h!80472 (t!388883 (t!388883 rulesArg!141))))) (toValue!11579 (transformation!8542 (h!80472 rulesArg!141))))) b_lambda!289581)))

(declare-fun b_lambda!289583 () Bool)

(assert (= b_lambda!289555 (or d!2357599 b_lambda!289583)))

(declare-fun bs!1967850 () Bool)

(declare-fun d!2357801 () Bool)

(assert (= bs!1967850 (and d!2357801 d!2357599)))

(assert (=> bs!1967850 (= (dynLambda!30020 lambda!472348 (h!80472 rulesArg!141)) (ruleValid!3923 thiss!14377 (h!80472 rulesArg!141)))))

(assert (=> bs!1967850 m!8272862))

(assert (=> b!7897866 d!2357801))

(check-sat (not b!7897625) (not bm!732996) (not d!2357755) (not b_lambda!289573) (not d!2357639) b_and!352387 (not b!7898242) (not b!7898172) (not b!7898203) (not b!7898257) (not b!7897944) (not b!7898085) (not b!7898005) (not b!7897870) (not b!7897920) (not b!7898160) (not b!7898244) (not b!7897907) (not bm!733001) (not d!2357775) (not b!7898220) (not b!7897932) (not b!7898092) (not b_next!135299) (not b_next!135297) (not b!7898234) (not b!7898115) b_and!352377 (not b!7897937) (not d!2357689) b_and!352395 (not b!7898076) (not b!7897918) (not b!7897950) (not d!2357651) (not bm!732997) (not d!2357669) (not b!7898243) (not d!2357641) (not b!7898162) (not b!7898252) (not b!7898116) (not b!7898239) (not d!2357785) (not d!2357791) (not b!7898238) (not bm!733008) (not bm!733002) (not b!7897942) (not b!7898083) (not d!2357715) (not b!7898247) (not b!7898000) (not d!2357659) (not bm!732971) (not d!2357703) (not bm!733003) (not b!7897933) (not d!2357705) (not b_lambda!289575) (not b!7898224) (not b!7897912) (not b!7898221) (not b!7897869) (not b!7898142) (not b!7898222) (not b_lambda!289569) tp_is_empty!52865 b_and!352397 (not b!7898139) (not b!7897872) b_and!352375 (not b_lambda!289577) (not b!7898080) (not bm!732972) (not bm!732998) (not d!2357655) (not bm!732976) (not b!7898078) (not tb!262617) (not b!7898056) (not b!7897931) (not b!7898248) (not b_lambda!289581) (not b!7898250) (not b!7897909) (not tb!262599) (not b!7898048) (not b!7898223) (not b!7898236) (not b!7898137) (not b!7898086) (not d!2357653) (not b!7898074) b_and!352391 (not b!7898254) (not b_next!135293) (not b!7897877) (not b!7897941) (not b!7898058) (not b!7897939) (not bm!732999) (not bm!732975) (not b_lambda!289557) (not b!7897953) (not d!2357759) (not b_next!135285) (not b_lambda!289579) (not b!7898240) (not b!7898041) (not d!2357643) (not b_next!135287) (not b!7898235) (not b!7897940) (not b!7898082) (not d!2357739) (not b!7898011) (not b!7898255) (not bs!1967850) (not b!7897955) (not bm!733000) (not tb!262611) (not b!7897867) (not b!7898256) (not b!7897947) (not b!7898251) (not d!2357743) (not d!2357685) (not bm!733007) (not b!7898008) (not d!2357753) (not d!2357667) (not b!7897859) (not b_lambda!289583) (not tb!262607) (not d!2357797) (not b_next!135295) (not b!7898246) (not b!7897915))
(check-sat b_and!352387 b_and!352395 b_and!352397 b_and!352375 (not b_next!135285) (not b_next!135287) (not b_next!135295) (not b_next!135299) (not b_next!135297) b_and!352377 b_and!352391 (not b_next!135293))
