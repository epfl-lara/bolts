; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353224 () Bool)

(assert start!353224)

(declare-fun b!3761398 () Bool)

(declare-fun e!2326404 () Bool)

(assert (=> b!3761398 (= e!2326404 (not true))))

(declare-datatypes ((C!22296 0))(
  ( (C!22297 (val!13224 Int)) )
))
(declare-datatypes ((List!40245 0))(
  ( (Nil!40121) (Cons!40121 (h!45541 C!22296) (t!303894 List!40245)) )
))
(declare-datatypes ((IArray!24577 0))(
  ( (IArray!24578 (innerList!12346 List!40245)) )
))
(declare-datatypes ((Conc!12286 0))(
  ( (Node!12286 (left!31058 Conc!12286) (right!31388 Conc!12286) (csize!24802 Int) (cheight!12497 Int)) (Leaf!19059 (xs!15492 IArray!24577) (csize!24803 Int)) (Empty!12286) )
))
(declare-datatypes ((BalanceConc!24166 0))(
  ( (BalanceConc!24167 (c!651295 Conc!12286)) )
))
(declare-fun acc!400 () BalanceConc!24166)

(declare-fun from!841 () Int)

(declare-fun lt!1301947 () BalanceConc!24166)

(declare-datatypes ((List!40246 0))(
  ( (Nil!40122) (Cons!40122 (h!45542 (_ BitVec 16)) (t!303895 List!40246)) )
))
(declare-datatypes ((TokenValue!6380 0))(
  ( (FloatLiteralValue!12760 (text!45105 List!40246)) (TokenValueExt!6379 (__x!24977 Int)) (Broken!31900 (value!195856 List!40246)) (Object!6503) (End!6380) (Def!6380) (Underscore!6380) (Match!6380) (Else!6380) (Error!6380) (Case!6380) (If!6380) (Extends!6380) (Abstract!6380) (Class!6380) (Val!6380) (DelimiterValue!12760 (del!6440 List!40246)) (KeywordValue!6386 (value!195857 List!40246)) (CommentValue!12760 (value!195858 List!40246)) (WhitespaceValue!12760 (value!195859 List!40246)) (IndentationValue!6380 (value!195860 List!40246)) (String!45581) (Int32!6380) (Broken!31901 (value!195861 List!40246)) (Boolean!6381) (Unit!57845) (OperatorValue!6383 (op!6440 List!40246)) (IdentifierValue!12760 (value!195862 List!40246)) (IdentifierValue!12761 (value!195863 List!40246)) (WhitespaceValue!12761 (value!195864 List!40246)) (True!12760) (False!12760) (Broken!31902 (value!195865 List!40246)) (Broken!31903 (value!195866 List!40246)) (True!12761) (RightBrace!6380) (RightBracket!6380) (Colon!6380) (Null!6380) (Comma!6380) (LeftBracket!6380) (False!12761) (LeftBrace!6380) (ImaginaryLiteralValue!6380 (text!45106 List!40246)) (StringLiteralValue!19140 (value!195867 List!40246)) (EOFValue!6380 (value!195868 List!40246)) (IdentValue!6380 (value!195869 List!40246)) (DelimiterValue!12761 (value!195870 List!40246)) (DedentValue!6380 (value!195871 List!40246)) (NewLineValue!6380 (value!195872 List!40246)) (IntegerValue!19140 (value!195873 (_ BitVec 32)) (text!45107 List!40246)) (IntegerValue!19141 (value!195874 Int) (text!45108 List!40246)) (Times!6380) (Or!6380) (Equal!6380) (Minus!6380) (Broken!31904 (value!195875 List!40246)) (And!6380) (Div!6380) (LessEqual!6380) (Mod!6380) (Concat!17435) (Not!6380) (Plus!6380) (SpaceValue!6380 (value!195876 List!40246)) (IntegerValue!19142 (value!195877 Int) (text!45109 List!40246)) (StringLiteralValue!19141 (text!45110 List!40246)) (FloatLiteralValue!12761 (text!45111 List!40246)) (BytesLiteralValue!6380 (value!195878 List!40246)) (CommentValue!12761 (value!195879 List!40246)) (StringLiteralValue!19142 (value!195880 List!40246)) (ErrorTokenValue!6380 (msg!6441 List!40246)) )
))
(declare-datatypes ((Regex!11055 0))(
  ( (ElementMatch!11055 (c!651296 C!22296)) (Concat!17436 (regOne!22622 Regex!11055) (regTwo!22622 Regex!11055)) (EmptyExpr!11055) (Star!11055 (reg!11384 Regex!11055)) (EmptyLang!11055) (Union!11055 (regOne!22623 Regex!11055) (regTwo!22623 Regex!11055)) )
))
(declare-datatypes ((String!45582 0))(
  ( (String!45583 (value!195881 String)) )
))
(declare-datatypes ((TokenValueInjection!12188 0))(
  ( (TokenValueInjection!12189 (toValue!8506 Int) (toChars!8365 Int)) )
))
(declare-datatypes ((Rule!12100 0))(
  ( (Rule!12101 (regex!6150 Regex!11055) (tag!7010 String!45582) (isSeparator!6150 Bool) (transformation!6150 TokenValueInjection!12188)) )
))
(declare-datatypes ((Token!11438 0))(
  ( (Token!11439 (value!195882 TokenValue!6380) (rule!8914 Rule!12100) (size!30194 Int) (originalCharacters!6750 List!40245)) )
))
(declare-datatypes ((List!40247 0))(
  ( (Nil!40123) (Cons!40123 (h!45543 Token!11438) (t!303896 List!40247)) )
))
(declare-datatypes ((IArray!24579 0))(
  ( (IArray!24580 (innerList!12347 List!40247)) )
))
(declare-datatypes ((Conc!12287 0))(
  ( (Node!12287 (left!31059 Conc!12287) (right!31389 Conc!12287) (csize!24804 Int) (cheight!12498 Int)) (Leaf!19060 (xs!15493 IArray!24579) (csize!24805 Int)) (Empty!12287) )
))
(declare-datatypes ((BalanceConc!24168 0))(
  ( (BalanceConc!24169 (c!651297 Conc!12287)) )
))
(declare-fun v!6347 () BalanceConc!24168)

(declare-fun ++!9948 (BalanceConc!24166 BalanceConc!24166) BalanceConc!24166)

(declare-fun charsOf!4000 (Token!11438) BalanceConc!24166)

(declare-fun apply!9440 (BalanceConc!24168 Int) Token!11438)

(assert (=> b!3761398 (= lt!1301947 (++!9948 acc!400 (charsOf!4000 (apply!9440 v!6347 from!841))))))

(declare-fun lt!1301948 () List!40247)

(declare-fun lt!1301949 () List!40247)

(declare-fun tail!5769 (List!40247) List!40247)

(declare-fun drop!2095 (List!40247 Int) List!40247)

(assert (=> b!3761398 (= (tail!5769 lt!1301948) (drop!2095 lt!1301949 (+ 1 from!841)))))

(declare-datatypes ((Unit!57846 0))(
  ( (Unit!57847) )
))
(declare-fun lt!1301951 () Unit!57846)

(declare-fun lemmaDropTail!1115 (List!40247 Int) Unit!57846)

(assert (=> b!3761398 (= lt!1301951 (lemmaDropTail!1115 lt!1301949 from!841))))

(declare-fun head!8042 (List!40247) Token!11438)

(declare-fun apply!9441 (List!40247 Int) Token!11438)

(assert (=> b!3761398 (= (head!8042 lt!1301948) (apply!9441 lt!1301949 from!841))))

(assert (=> b!3761398 (= lt!1301948 (drop!2095 lt!1301949 from!841))))

(declare-fun lt!1301946 () Unit!57846)

(declare-fun lemmaDropApply!1231 (List!40247 Int) Unit!57846)

(assert (=> b!3761398 (= lt!1301946 (lemmaDropApply!1231 lt!1301949 from!841))))

(declare-fun list!14808 (BalanceConc!24168) List!40247)

(assert (=> b!3761398 (= lt!1301949 (list!14808 v!6347))))

(declare-fun b!3761400 () Bool)

(declare-fun e!2326402 () Bool)

(declare-fun tp!1149431 () Bool)

(declare-fun inv!53818 (Conc!12286) Bool)

(assert (=> b!3761400 (= e!2326402 (and (inv!53818 (c!651295 acc!400)) tp!1149431))))

(declare-fun res!1523122 () Bool)

(declare-fun e!2326403 () Bool)

(assert (=> start!353224 (=> (not res!1523122) (not e!2326403))))

(declare-datatypes ((LexerInterface!5739 0))(
  ( (LexerInterfaceExt!5736 (__x!24978 Int)) (Lexer!5737) )
))
(declare-fun thiss!13650 () LexerInterface!5739)

(get-info :version)

(assert (=> start!353224 (= res!1523122 (and ((_ is Lexer!5737) thiss!13650) (>= from!841 0)))))

(assert (=> start!353224 e!2326403))

(assert (=> start!353224 true))

(declare-fun e!2326401 () Bool)

(declare-fun inv!53819 (BalanceConc!24168) Bool)

(assert (=> start!353224 (and (inv!53819 v!6347) e!2326401)))

(declare-fun inv!53820 (BalanceConc!24166) Bool)

(assert (=> start!353224 (and (inv!53820 acc!400) e!2326402)))

(declare-fun b!3761399 () Bool)

(declare-fun tp!1149432 () Bool)

(declare-fun inv!53821 (Conc!12287) Bool)

(assert (=> b!3761399 (= e!2326401 (and (inv!53821 (c!651297 v!6347)) tp!1149432))))

(declare-fun b!3761397 () Bool)

(assert (=> b!3761397 (= e!2326403 e!2326404)))

(declare-fun res!1523121 () Bool)

(assert (=> b!3761397 (=> (not res!1523121) (not e!2326404))))

(declare-fun lt!1301950 () Int)

(assert (=> b!3761397 (= res!1523121 (and (<= from!841 lt!1301950) (< from!841 lt!1301950)))))

(declare-fun size!30195 (BalanceConc!24168) Int)

(assert (=> b!3761397 (= lt!1301950 (size!30195 v!6347))))

(assert (= (and start!353224 res!1523122) b!3761397))

(assert (= (and b!3761397 res!1523121) b!3761398))

(assert (= start!353224 b!3761399))

(assert (= start!353224 b!3761400))

(declare-fun m!4255453 () Bool)

(assert (=> b!3761400 m!4255453))

(declare-fun m!4255455 () Bool)

(assert (=> b!3761399 m!4255455))

(declare-fun m!4255457 () Bool)

(assert (=> start!353224 m!4255457))

(declare-fun m!4255459 () Bool)

(assert (=> start!353224 m!4255459))

(declare-fun m!4255461 () Bool)

(assert (=> b!3761397 m!4255461))

(declare-fun m!4255463 () Bool)

(assert (=> b!3761398 m!4255463))

(declare-fun m!4255465 () Bool)

(assert (=> b!3761398 m!4255465))

(declare-fun m!4255467 () Bool)

(assert (=> b!3761398 m!4255467))

(declare-fun m!4255469 () Bool)

(assert (=> b!3761398 m!4255469))

(declare-fun m!4255471 () Bool)

(assert (=> b!3761398 m!4255471))

(assert (=> b!3761398 m!4255463))

(declare-fun m!4255473 () Bool)

(assert (=> b!3761398 m!4255473))

(declare-fun m!4255475 () Bool)

(assert (=> b!3761398 m!4255475))

(declare-fun m!4255477 () Bool)

(assert (=> b!3761398 m!4255477))

(declare-fun m!4255479 () Bool)

(assert (=> b!3761398 m!4255479))

(declare-fun m!4255481 () Bool)

(assert (=> b!3761398 m!4255481))

(assert (=> b!3761398 m!4255471))

(declare-fun m!4255483 () Bool)

(assert (=> b!3761398 m!4255483))

(check-sat (not b!3761399) (not b!3761398) (not start!353224) (not b!3761397) (not b!3761400))
(check-sat)
