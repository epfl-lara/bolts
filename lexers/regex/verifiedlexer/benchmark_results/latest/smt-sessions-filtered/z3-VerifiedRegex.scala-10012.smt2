; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!523110 () Bool)

(assert start!523110)

(declare-fun b!4961384 () Bool)

(declare-fun b_free!132595 () Bool)

(declare-fun b_next!133385 () Bool)

(assert (=> b!4961384 (= b_free!132595 (not b_next!133385))))

(declare-fun tp!1391673 () Bool)

(declare-fun b_and!347447 () Bool)

(assert (=> b!4961384 (= tp!1391673 b_and!347447)))

(declare-fun b_free!132597 () Bool)

(declare-fun b_next!133387 () Bool)

(assert (=> b!4961384 (= b_free!132597 (not b_next!133387))))

(declare-fun tp!1391670 () Bool)

(declare-fun b_and!347449 () Bool)

(assert (=> b!4961384 (= tp!1391670 b_and!347449)))

(declare-fun b!4961379 () Bool)

(declare-fun b_free!132599 () Bool)

(declare-fun b_next!133389 () Bool)

(assert (=> b!4961379 (= b_free!132599 (not b_next!133389))))

(declare-fun tp!1391675 () Bool)

(declare-fun b_and!347451 () Bool)

(assert (=> b!4961379 (= tp!1391675 b_and!347451)))

(declare-fun b_free!132601 () Bool)

(declare-fun b_next!133391 () Bool)

(assert (=> b!4961379 (= b_free!132601 (not b_next!133391))))

(declare-fun tp!1391671 () Bool)

(declare-fun b_and!347453 () Bool)

(assert (=> b!4961379 (= tp!1391671 b_and!347453)))

(declare-fun b!4961374 () Bool)

(declare-fun e!3101078 () Bool)

(declare-fun e!3101074 () Bool)

(assert (=> b!4961374 (= e!3101078 (not e!3101074))))

(declare-fun res!2117654 () Bool)

(assert (=> b!4961374 (=> res!2117654 e!3101074)))

(declare-datatypes ((List!57514 0))(
  ( (Nil!57390) (Cons!57390 (h!63838 (_ BitVec 16)) (t!368080 List!57514)) )
))
(declare-datatypes ((TokenValue!8686 0))(
  ( (FloatLiteralValue!17372 (text!61247 List!57514)) (TokenValueExt!8685 (__x!34665 Int)) (Broken!43430 (value!268132 List!57514)) (Object!8809) (End!8686) (Def!8686) (Underscore!8686) (Match!8686) (Else!8686) (Error!8686) (Case!8686) (If!8686) (Extends!8686) (Abstract!8686) (Class!8686) (Val!8686) (DelimiterValue!17372 (del!8746 List!57514)) (KeywordValue!8692 (value!268133 List!57514)) (CommentValue!17372 (value!268134 List!57514)) (WhitespaceValue!17372 (value!268135 List!57514)) (IndentationValue!8686 (value!268136 List!57514)) (String!65303) (Int32!8686) (Broken!43431 (value!268137 List!57514)) (Boolean!8687) (Unit!148284) (OperatorValue!8689 (op!8746 List!57514)) (IdentifierValue!17372 (value!268138 List!57514)) (IdentifierValue!17373 (value!268139 List!57514)) (WhitespaceValue!17373 (value!268140 List!57514)) (True!17372) (False!17372) (Broken!43432 (value!268141 List!57514)) (Broken!43433 (value!268142 List!57514)) (True!17373) (RightBrace!8686) (RightBracket!8686) (Colon!8686) (Null!8686) (Comma!8686) (LeftBracket!8686) (False!17373) (LeftBrace!8686) (ImaginaryLiteralValue!8686 (text!61248 List!57514)) (StringLiteralValue!26058 (value!268143 List!57514)) (EOFValue!8686 (value!268144 List!57514)) (IdentValue!8686 (value!268145 List!57514)) (DelimiterValue!17373 (value!268146 List!57514)) (DedentValue!8686 (value!268147 List!57514)) (NewLineValue!8686 (value!268148 List!57514)) (IntegerValue!26058 (value!268149 (_ BitVec 32)) (text!61249 List!57514)) (IntegerValue!26059 (value!268150 Int) (text!61250 List!57514)) (Times!8686) (Or!8686) (Equal!8686) (Minus!8686) (Broken!43434 (value!268151 List!57514)) (And!8686) (Div!8686) (LessEqual!8686) (Mod!8686) (Concat!22295) (Not!8686) (Plus!8686) (SpaceValue!8686 (value!268152 List!57514)) (IntegerValue!26060 (value!268153 Int) (text!61251 List!57514)) (StringLiteralValue!26059 (text!61252 List!57514)) (FloatLiteralValue!17373 (text!61253 List!57514)) (BytesLiteralValue!8686 (value!268154 List!57514)) (CommentValue!17373 (value!268155 List!57514)) (StringLiteralValue!26060 (value!268156 List!57514)) (ErrorTokenValue!8686 (msg!8747 List!57514)) )
))
(declare-datatypes ((C!27468 0))(
  ( (C!27469 (val!23100 Int)) )
))
(declare-datatypes ((List!57515 0))(
  ( (Nil!57391) (Cons!57391 (h!63839 C!27468) (t!368081 List!57515)) )
))
(declare-datatypes ((IArray!30317 0))(
  ( (IArray!30318 (innerList!15216 List!57515)) )
))
(declare-datatypes ((Regex!13609 0))(
  ( (ElementMatch!13609 (c!846591 C!27468)) (Concat!22296 (regOne!27730 Regex!13609) (regTwo!27730 Regex!13609)) (EmptyExpr!13609) (Star!13609 (reg!13938 Regex!13609)) (EmptyLang!13609) (Union!13609 (regOne!27731 Regex!13609) (regTwo!27731 Regex!13609)) )
))
(declare-datatypes ((String!65304 0))(
  ( (String!65305 (value!268157 String)) )
))
(declare-datatypes ((Conc!15128 0))(
  ( (Node!15128 (left!41850 Conc!15128) (right!42180 Conc!15128) (csize!30486 Int) (cheight!15339 Int)) (Leaf!25141 (xs!18454 IArray!30317) (csize!30487 Int)) (Empty!15128) )
))
(declare-datatypes ((BalanceConc!29686 0))(
  ( (BalanceConc!29687 (c!846592 Conc!15128)) )
))
(declare-datatypes ((TokenValueInjection!16680 0))(
  ( (TokenValueInjection!16681 (toValue!11327 Int) (toChars!11186 Int)) )
))
(declare-datatypes ((Rule!16552 0))(
  ( (Rule!16553 (regex!8376 Regex!13609) (tag!9240 String!65304) (isSeparator!8376 Bool) (transformation!8376 TokenValueInjection!16680)) )
))
(declare-datatypes ((List!57516 0))(
  ( (Nil!57392) (Cons!57392 (h!63840 Rule!16552) (t!368082 List!57516)) )
))
(declare-fun rulesArg!259 () List!57516)

(get-info :version)

(assert (=> b!4961374 (= res!2117654 (or (and ((_ is Cons!57392) rulesArg!259) ((_ is Nil!57392) (t!368082 rulesArg!259))) ((_ is Cons!57392) rulesArg!259)))))

(declare-fun lt!2048487 () List!57515)

(declare-fun isPrefix!5229 (List!57515 List!57515) Bool)

(assert (=> b!4961374 (isPrefix!5229 lt!2048487 lt!2048487)))

(declare-datatypes ((Unit!148285 0))(
  ( (Unit!148286) )
))
(declare-fun lt!2048490 () Unit!148285)

(declare-fun lemmaIsPrefixRefl!3553 (List!57515 List!57515) Unit!148285)

(assert (=> b!4961374 (= lt!2048490 (lemmaIsPrefixRefl!3553 lt!2048487 lt!2048487))))

(declare-fun res!2117655 () Bool)

(declare-fun e!3101082 () Bool)

(assert (=> start!523110 (=> (not res!2117655) (not e!3101082))))

(declare-datatypes ((LexerInterface!7968 0))(
  ( (LexerInterfaceExt!7965 (__x!34666 Int)) (Lexer!7966) )
))
(declare-fun thiss!15247 () LexerInterface!7968)

(assert (=> start!523110 (= res!2117655 ((_ is Lexer!7966) thiss!15247))))

(assert (=> start!523110 e!3101082))

(assert (=> start!523110 true))

(declare-fun e!3101088 () Bool)

(assert (=> start!523110 e!3101088))

(declare-fun input!1342 () BalanceConc!29686)

(declare-fun e!3101087 () Bool)

(declare-fun inv!74954 (BalanceConc!29686) Bool)

(assert (=> start!523110 (and (inv!74954 input!1342) e!3101087)))

(declare-fun totalInput!464 () BalanceConc!29686)

(declare-fun e!3101079 () Bool)

(assert (=> start!523110 (and (inv!74954 totalInput!464) e!3101079)))

(declare-fun b!4961375 () Bool)

(declare-fun tp!1391676 () Bool)

(declare-fun inv!74955 (Conc!15128) Bool)

(assert (=> b!4961375 (= e!3101087 (and (inv!74955 (c!846592 input!1342)) tp!1391676))))

(declare-fun b!4961376 () Bool)

(declare-fun e!3101089 () Bool)

(assert (=> b!4961376 (= e!3101074 e!3101089)))

(declare-fun res!2117650 () Bool)

(assert (=> b!4961376 (=> res!2117650 e!3101089)))

(declare-fun lt!2048488 () Bool)

(declare-fun lt!2048489 () Bool)

(assert (=> b!4961376 (= res!2117650 (or (not (= lt!2048488 lt!2048489)) (not lt!2048488)))))

(declare-datatypes ((Token!15252 0))(
  ( (Token!15253 (value!268158 TokenValue!8686) (rule!11608 Rule!16552) (size!38030 Int) (originalCharacters!8657 List!57515)) )
))
(declare-datatypes ((tuple2!62080 0))(
  ( (tuple2!62081 (_1!34343 Token!15252) (_2!34343 List!57515)) )
))
(declare-datatypes ((Option!14419 0))(
  ( (None!14418) (Some!14418 (v!50403 tuple2!62080)) )
))
(declare-fun lt!2048486 () Option!14419)

(declare-fun isDefined!11332 (Option!14419) Bool)

(assert (=> b!4961376 (= lt!2048489 (isDefined!11332 lt!2048486))))

(declare-datatypes ((tuple2!62082 0))(
  ( (tuple2!62083 (_1!34344 Token!15252) (_2!34344 BalanceConc!29686)) )
))
(declare-datatypes ((Option!14420 0))(
  ( (None!14419) (Some!14419 (v!50404 tuple2!62082)) )
))
(declare-fun lt!2048485 () Option!14420)

(declare-fun isDefined!11333 (Option!14420) Bool)

(assert (=> b!4961376 (= lt!2048488 (isDefined!11333 lt!2048485))))

(declare-fun maxPrefixZipper!773 (LexerInterface!7968 List!57516 List!57515) Option!14419)

(assert (=> b!4961376 (= lt!2048486 (maxPrefixZipper!773 thiss!15247 rulesArg!259 lt!2048487))))

(declare-fun err!4553 () Option!14420)

(assert (=> b!4961376 (= lt!2048485 err!4553)))

(assert (=> b!4961376 true))

(declare-fun e!3101086 () Bool)

(assert (=> b!4961376 e!3101086))

(declare-fun b!4961377 () Bool)

(declare-fun e!3101084 () Bool)

(declare-fun tp!1391672 () Bool)

(assert (=> b!4961377 (= e!3101088 (and e!3101084 tp!1391672))))

(declare-fun b!4961378 () Bool)

(declare-fun e!3101076 () Bool)

(declare-fun e!3101081 () Bool)

(declare-fun tp!1391667 () Bool)

(declare-fun inv!21 (TokenValue!8686) Bool)

(assert (=> b!4961378 (= e!3101081 (and (inv!21 (value!268158 (_1!34344 (v!50404 err!4553)))) e!3101076 tp!1391667))))

(declare-fun e!3101077 () Bool)

(assert (=> b!4961379 (= e!3101077 (and tp!1391675 tp!1391671))))

(declare-fun b!4961380 () Bool)

(declare-fun res!2117653 () Bool)

(assert (=> b!4961380 (=> res!2117653 e!3101089)))

(declare-fun get!19901 (Option!14420) tuple2!62082)

(declare-fun get!19902 (Option!14419) tuple2!62080)

(assert (=> b!4961380 (= res!2117653 (not (= (_1!34344 (get!19901 lt!2048485)) (_1!34343 (get!19902 lt!2048486)))))))

(declare-fun b!4961381 () Bool)

(declare-fun res!2117652 () Bool)

(assert (=> b!4961381 (=> (not res!2117652) (not e!3101082))))

(declare-fun rulesValidInductive!3279 (LexerInterface!7968 List!57516) Bool)

(assert (=> b!4961381 (= res!2117652 (rulesValidInductive!3279 thiss!15247 rulesArg!259))))

(declare-fun e!3101075 () Bool)

(declare-fun b!4961382 () Bool)

(declare-fun inv!74956 (Token!15252) Bool)

(assert (=> b!4961382 (= e!3101086 (and (inv!74956 (_1!34344 (v!50404 err!4553))) e!3101081 (inv!74954 (_2!34344 (v!50404 err!4553))) e!3101075))))

(declare-fun b!4961383 () Bool)

(declare-fun res!2117656 () Bool)

(assert (=> b!4961383 (=> (not res!2117656) (not e!3101082))))

(declare-fun isEmpty!30880 (List!57516) Bool)

(assert (=> b!4961383 (= res!2117656 (not (isEmpty!30880 rulesArg!259)))))

(declare-fun e!3101073 () Bool)

(assert (=> b!4961384 (= e!3101073 (and tp!1391673 tp!1391670))))

(declare-fun b!4961385 () Bool)

(declare-fun tp!1391669 () Bool)

(assert (=> b!4961385 (= e!3101079 (and (inv!74955 (c!846592 totalInput!464)) tp!1391669))))

(declare-fun b!4961386 () Bool)

(assert (=> b!4961386 (= e!3101082 e!3101078)))

(declare-fun res!2117651 () Bool)

(assert (=> b!4961386 (=> (not res!2117651) (not e!3101078))))

(declare-fun isSuffix!1175 (List!57515 List!57515) Bool)

(declare-fun list!18333 (BalanceConc!29686) List!57515)

(assert (=> b!4961386 (= res!2117651 (isSuffix!1175 lt!2048487 (list!18333 totalInput!464)))))

(assert (=> b!4961386 (= lt!2048487 (list!18333 input!1342))))

(declare-fun b!4961387 () Bool)

(assert (=> b!4961387 (= e!3101089 lt!2048489)))

(declare-fun b!4961388 () Bool)

(declare-fun tp!1391668 () Bool)

(declare-fun inv!74949 (String!65304) Bool)

(declare-fun inv!74957 (TokenValueInjection!16680) Bool)

(assert (=> b!4961388 (= e!3101076 (and tp!1391668 (inv!74949 (tag!9240 (rule!11608 (_1!34344 (v!50404 err!4553))))) (inv!74957 (transformation!8376 (rule!11608 (_1!34344 (v!50404 err!4553))))) e!3101077))))

(declare-fun b!4961389 () Bool)

(declare-fun tp!1391674 () Bool)

(assert (=> b!4961389 (= e!3101075 (and (inv!74955 (c!846592 (_2!34344 (v!50404 err!4553)))) tp!1391674))))

(declare-fun b!4961390 () Bool)

(declare-fun tp!1391666 () Bool)

(assert (=> b!4961390 (= e!3101084 (and tp!1391666 (inv!74949 (tag!9240 (h!63840 rulesArg!259))) (inv!74957 (transformation!8376 (h!63840 rulesArg!259))) e!3101073))))

(assert (= (and start!523110 res!2117655) b!4961381))

(assert (= (and b!4961381 res!2117652) b!4961383))

(assert (= (and b!4961383 res!2117656) b!4961386))

(assert (= (and b!4961386 res!2117651) b!4961374))

(assert (= (and b!4961374 (not res!2117654)) b!4961376))

(assert (= b!4961388 b!4961379))

(assert (= b!4961378 b!4961388))

(assert (= b!4961382 b!4961378))

(assert (= b!4961382 b!4961389))

(assert (= (and b!4961376 ((_ is Some!14419) err!4553)) b!4961382))

(assert (= (and b!4961376 (not res!2117650)) b!4961380))

(assert (= (and b!4961380 (not res!2117653)) b!4961387))

(assert (= b!4961390 b!4961384))

(assert (= b!4961377 b!4961390))

(assert (= (and start!523110 ((_ is Cons!57392) rulesArg!259)) b!4961377))

(assert (= start!523110 b!4961375))

(assert (= start!523110 b!4961385))

(declare-fun m!5985916 () Bool)

(assert (=> b!4961381 m!5985916))

(declare-fun m!5985918 () Bool)

(assert (=> b!4961375 m!5985918))

(declare-fun m!5985920 () Bool)

(assert (=> b!4961383 m!5985920))

(declare-fun m!5985922 () Bool)

(assert (=> b!4961390 m!5985922))

(declare-fun m!5985924 () Bool)

(assert (=> b!4961390 m!5985924))

(declare-fun m!5985926 () Bool)

(assert (=> b!4961376 m!5985926))

(declare-fun m!5985928 () Bool)

(assert (=> b!4961376 m!5985928))

(declare-fun m!5985930 () Bool)

(assert (=> b!4961376 m!5985930))

(declare-fun m!5985932 () Bool)

(assert (=> b!4961378 m!5985932))

(declare-fun m!5985934 () Bool)

(assert (=> b!4961382 m!5985934))

(declare-fun m!5985936 () Bool)

(assert (=> b!4961382 m!5985936))

(declare-fun m!5985938 () Bool)

(assert (=> b!4961389 m!5985938))

(declare-fun m!5985940 () Bool)

(assert (=> b!4961380 m!5985940))

(declare-fun m!5985942 () Bool)

(assert (=> b!4961380 m!5985942))

(declare-fun m!5985944 () Bool)

(assert (=> start!523110 m!5985944))

(declare-fun m!5985946 () Bool)

(assert (=> start!523110 m!5985946))

(declare-fun m!5985948 () Bool)

(assert (=> b!4961386 m!5985948))

(assert (=> b!4961386 m!5985948))

(declare-fun m!5985950 () Bool)

(assert (=> b!4961386 m!5985950))

(declare-fun m!5985952 () Bool)

(assert (=> b!4961386 m!5985952))

(declare-fun m!5985954 () Bool)

(assert (=> b!4961374 m!5985954))

(declare-fun m!5985956 () Bool)

(assert (=> b!4961374 m!5985956))

(declare-fun m!5985958 () Bool)

(assert (=> b!4961388 m!5985958))

(declare-fun m!5985960 () Bool)

(assert (=> b!4961388 m!5985960))

(declare-fun m!5985962 () Bool)

(assert (=> b!4961385 m!5985962))

(check-sat (not b!4961388) (not b_next!133391) (not b!4961374) (not b_next!133387) (not b_next!133385) (not b!4961376) (not b!4961382) (not b!4961385) (not b!4961381) (not b!4961378) (not b!4961383) (not b!4961389) (not b!4961375) b_and!347449 (not start!523110) b_and!347453 (not b!4961386) b_and!347451 b_and!347447 (not b!4961377) (not b_next!133389) (not b!4961380) (not b!4961390))
(check-sat (not b_next!133391) (not b_next!133387) b_and!347449 b_and!347453 (not b_next!133385) (not b_next!133389) b_and!347451 b_and!347447)
