; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522586 () Bool)

(assert start!522586)

(declare-fun b!4957519 () Bool)

(declare-fun b_free!132351 () Bool)

(declare-fun b_next!133141 () Bool)

(assert (=> b!4957519 (= b_free!132351 (not b_next!133141))))

(declare-fun tp!1390317 () Bool)

(declare-fun b_and!347203 () Bool)

(assert (=> b!4957519 (= tp!1390317 b_and!347203)))

(declare-fun b_free!132353 () Bool)

(declare-fun b_next!133143 () Bool)

(assert (=> b!4957519 (= b_free!132353 (not b_next!133143))))

(declare-fun tp!1390320 () Bool)

(declare-fun b_and!347205 () Bool)

(assert (=> b!4957519 (= tp!1390320 b_and!347205)))

(declare-fun b!4957510 () Bool)

(declare-fun res!2115423 () Bool)

(declare-fun e!3098092 () Bool)

(assert (=> b!4957510 (=> (not res!2115423) (not e!3098092))))

(declare-datatypes ((List!57376 0))(
  ( (Nil!57252) (Cons!57252 (h!63700 (_ BitVec 16)) (t!367942 List!57376)) )
))
(declare-datatypes ((TokenValue!8640 0))(
  ( (FloatLiteralValue!17280 (text!60925 List!57376)) (TokenValueExt!8639 (__x!34573 Int)) (Broken!43200 (value!266821 List!57376)) (Object!8763) (End!8640) (Def!8640) (Underscore!8640) (Match!8640) (Else!8640) (Error!8640) (Case!8640) (If!8640) (Extends!8640) (Abstract!8640) (Class!8640) (Val!8640) (DelimiterValue!17280 (del!8700 List!57376)) (KeywordValue!8646 (value!266822 List!57376)) (CommentValue!17280 (value!266823 List!57376)) (WhitespaceValue!17280 (value!266824 List!57376)) (IndentationValue!8640 (value!266825 List!57376)) (String!65073) (Int32!8640) (Broken!43201 (value!266826 List!57376)) (Boolean!8641) (Unit!148146) (OperatorValue!8643 (op!8700 List!57376)) (IdentifierValue!17280 (value!266827 List!57376)) (IdentifierValue!17281 (value!266828 List!57376)) (WhitespaceValue!17281 (value!266829 List!57376)) (True!17280) (False!17280) (Broken!43202 (value!266830 List!57376)) (Broken!43203 (value!266831 List!57376)) (True!17281) (RightBrace!8640) (RightBracket!8640) (Colon!8640) (Null!8640) (Comma!8640) (LeftBracket!8640) (False!17281) (LeftBrace!8640) (ImaginaryLiteralValue!8640 (text!60926 List!57376)) (StringLiteralValue!25920 (value!266832 List!57376)) (EOFValue!8640 (value!266833 List!57376)) (IdentValue!8640 (value!266834 List!57376)) (DelimiterValue!17281 (value!266835 List!57376)) (DedentValue!8640 (value!266836 List!57376)) (NewLineValue!8640 (value!266837 List!57376)) (IntegerValue!25920 (value!266838 (_ BitVec 32)) (text!60927 List!57376)) (IntegerValue!25921 (value!266839 Int) (text!60928 List!57376)) (Times!8640) (Or!8640) (Equal!8640) (Minus!8640) (Broken!43204 (value!266840 List!57376)) (And!8640) (Div!8640) (LessEqual!8640) (Mod!8640) (Concat!22203) (Not!8640) (Plus!8640) (SpaceValue!8640 (value!266841 List!57376)) (IntegerValue!25922 (value!266842 Int) (text!60929 List!57376)) (StringLiteralValue!25921 (text!60930 List!57376)) (FloatLiteralValue!17281 (text!60931 List!57376)) (BytesLiteralValue!8640 (value!266843 List!57376)) (CommentValue!17281 (value!266844 List!57376)) (StringLiteralValue!25922 (value!266845 List!57376)) (ErrorTokenValue!8640 (msg!8701 List!57376)) )
))
(declare-datatypes ((C!27376 0))(
  ( (C!27377 (val!23054 Int)) )
))
(declare-datatypes ((List!57377 0))(
  ( (Nil!57253) (Cons!57253 (h!63701 C!27376) (t!367943 List!57377)) )
))
(declare-datatypes ((IArray!30225 0))(
  ( (IArray!30226 (innerList!15170 List!57377)) )
))
(declare-datatypes ((Regex!13563 0))(
  ( (ElementMatch!13563 (c!846261 C!27376)) (Concat!22204 (regOne!27638 Regex!13563) (regTwo!27638 Regex!13563)) (EmptyExpr!13563) (Star!13563 (reg!13892 Regex!13563)) (EmptyLang!13563) (Union!13563 (regOne!27639 Regex!13563) (regTwo!27639 Regex!13563)) )
))
(declare-datatypes ((String!65074 0))(
  ( (String!65075 (value!266846 String)) )
))
(declare-datatypes ((Conc!15082 0))(
  ( (Node!15082 (left!41757 Conc!15082) (right!42087 Conc!15082) (csize!30394 Int) (cheight!15293 Int)) (Leaf!25072 (xs!18408 IArray!30225) (csize!30395 Int)) (Empty!15082) )
))
(declare-datatypes ((BalanceConc!29594 0))(
  ( (BalanceConc!29595 (c!846262 Conc!15082)) )
))
(declare-datatypes ((TokenValueInjection!16588 0))(
  ( (TokenValueInjection!16589 (toValue!11281 Int) (toChars!11140 Int)) )
))
(declare-datatypes ((Rule!16460 0))(
  ( (Rule!16461 (regex!8330 Regex!13563) (tag!9194 String!65074) (isSeparator!8330 Bool) (transformation!8330 TokenValueInjection!16588)) )
))
(declare-datatypes ((List!57378 0))(
  ( (Nil!57254) (Cons!57254 (h!63702 Rule!16460) (t!367944 List!57378)) )
))
(declare-fun rulesArg!259 () List!57378)

(declare-fun isEmpty!30786 (List!57378) Bool)

(assert (=> b!4957510 (= res!2115423 (not (isEmpty!30786 rulesArg!259)))))

(declare-fun b!4957511 () Bool)

(declare-fun e!3098094 () Bool)

(declare-fun e!3098088 () Bool)

(assert (=> b!4957511 (= e!3098094 (not e!3098088))))

(declare-fun res!2115424 () Bool)

(assert (=> b!4957511 (=> res!2115424 e!3098088)))

(get-info :version)

(assert (=> b!4957511 (= res!2115424 (or (and ((_ is Cons!57254) rulesArg!259) ((_ is Nil!57254) (t!367944 rulesArg!259))) (not ((_ is Cons!57254) rulesArg!259))))))

(declare-fun lt!2046316 () List!57377)

(declare-fun isPrefix!5183 (List!57377 List!57377) Bool)

(assert (=> b!4957511 (isPrefix!5183 lt!2046316 lt!2046316)))

(declare-datatypes ((Unit!148147 0))(
  ( (Unit!148148) )
))
(declare-fun lt!2046317 () Unit!148147)

(declare-fun lemmaIsPrefixRefl!3507 (List!57377 List!57377) Unit!148147)

(assert (=> b!4957511 (= lt!2046317 (lemmaIsPrefixRefl!3507 lt!2046316 lt!2046316))))

(declare-fun b!4957512 () Bool)

(declare-fun res!2115427 () Bool)

(assert (=> b!4957512 (=> (not res!2115427) (not e!3098092))))

(declare-datatypes ((LexerInterface!7922 0))(
  ( (LexerInterfaceExt!7919 (__x!34574 Int)) (Lexer!7920) )
))
(declare-fun thiss!15247 () LexerInterface!7922)

(declare-fun rulesValidInductive!3233 (LexerInterface!7922 List!57378) Bool)

(assert (=> b!4957512 (= res!2115427 (rulesValidInductive!3233 thiss!15247 rulesArg!259))))

(declare-fun b!4957514 () Bool)

(declare-fun e!3098091 () Bool)

(declare-fun input!1342 () BalanceConc!29594)

(declare-fun tp!1390315 () Bool)

(declare-fun inv!74709 (Conc!15082) Bool)

(assert (=> b!4957514 (= e!3098091 (and (inv!74709 (c!846262 input!1342)) tp!1390315))))

(declare-fun b!4957515 () Bool)

(declare-fun e!3098095 () Bool)

(assert (=> b!4957515 (= e!3098095 true)))

(declare-datatypes ((Token!15160 0))(
  ( (Token!15161 (value!266847 TokenValue!8640) (rule!11550 Rule!16460) (size!37960 Int) (originalCharacters!8611 List!57377)) )
))
(declare-datatypes ((tuple2!61852 0))(
  ( (tuple2!61853 (_1!34229 Token!15160) (_2!34229 List!57377)) )
))
(declare-datatypes ((Option!14329 0))(
  ( (None!14328) (Some!14328 (v!50313 tuple2!61852)) )
))
(declare-fun lt!2046318 () Option!14329)

(declare-fun maxPrefixZipper!727 (LexerInterface!7922 List!57378 List!57377) Option!14329)

(assert (=> b!4957515 (= lt!2046318 (maxPrefixZipper!727 thiss!15247 rulesArg!259 lt!2046316))))

(declare-fun b!4957516 () Bool)

(declare-fun e!3098093 () Bool)

(declare-fun tp!1390319 () Bool)

(declare-fun e!3098089 () Bool)

(declare-fun inv!74705 (String!65074) Bool)

(declare-fun inv!74710 (TokenValueInjection!16588) Bool)

(assert (=> b!4957516 (= e!3098093 (and tp!1390319 (inv!74705 (tag!9194 (h!63702 rulesArg!259))) (inv!74710 (transformation!8330 (h!63702 rulesArg!259))) e!3098089))))

(declare-fun b!4957517 () Bool)

(declare-fun e!3098090 () Bool)

(declare-fun tp!1390316 () Bool)

(assert (=> b!4957517 (= e!3098090 (and e!3098093 tp!1390316))))

(declare-fun b!4957518 () Bool)

(declare-fun e!3098087 () Bool)

(declare-fun totalInput!464 () BalanceConc!29594)

(declare-fun tp!1390318 () Bool)

(assert (=> b!4957518 (= e!3098087 (and (inv!74709 (c!846262 totalInput!464)) tp!1390318))))

(declare-fun res!2115426 () Bool)

(assert (=> start!522586 (=> (not res!2115426) (not e!3098092))))

(assert (=> start!522586 (= res!2115426 ((_ is Lexer!7920) thiss!15247))))

(assert (=> start!522586 e!3098092))

(assert (=> start!522586 true))

(assert (=> start!522586 e!3098090))

(declare-fun inv!74711 (BalanceConc!29594) Bool)

(assert (=> start!522586 (and (inv!74711 input!1342) e!3098091)))

(assert (=> start!522586 (and (inv!74711 totalInput!464) e!3098087)))

(declare-fun b!4957513 () Bool)

(assert (=> b!4957513 (= e!3098092 e!3098094)))

(declare-fun res!2115425 () Bool)

(assert (=> b!4957513 (=> (not res!2115425) (not e!3098094))))

(declare-fun isSuffix!1129 (List!57377 List!57377) Bool)

(declare-fun list!18275 (BalanceConc!29594) List!57377)

(assert (=> b!4957513 (= res!2115425 (isSuffix!1129 lt!2046316 (list!18275 totalInput!464)))))

(assert (=> b!4957513 (= lt!2046316 (list!18275 input!1342))))

(assert (=> b!4957519 (= e!3098089 (and tp!1390317 tp!1390320))))

(declare-fun b!4957520 () Bool)

(assert (=> b!4957520 (= e!3098088 e!3098095)))

(declare-fun res!2115422 () Bool)

(assert (=> b!4957520 (=> res!2115422 e!3098095)))

(declare-datatypes ((tuple2!61854 0))(
  ( (tuple2!61855 (_1!34230 Token!15160) (_2!34230 BalanceConc!29594)) )
))
(declare-datatypes ((Option!14330 0))(
  ( (None!14329) (Some!14329 (v!50314 tuple2!61854)) )
))
(declare-fun lt!2046315 () Option!14330)

(declare-fun lt!2046314 () Option!14330)

(assert (=> b!4957520 (= res!2115422 (or (and ((_ is None!14329) lt!2046315) ((_ is None!14329) lt!2046314)) ((_ is None!14329) lt!2046314) (not ((_ is None!14329) lt!2046315))))))

(declare-fun maxPrefixZipperSequenceV2!661 (LexerInterface!7922 List!57378 BalanceConc!29594 BalanceConc!29594) Option!14330)

(assert (=> b!4957520 (= lt!2046314 (maxPrefixZipperSequenceV2!661 thiss!15247 (t!367944 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!314 (LexerInterface!7922 Rule!16460 BalanceConc!29594 BalanceConc!29594) Option!14330)

(assert (=> b!4957520 (= lt!2046315 (maxPrefixOneRuleZipperSequenceV2!314 thiss!15247 (h!63702 rulesArg!259) input!1342 totalInput!464))))

(assert (= (and start!522586 res!2115426) b!4957512))

(assert (= (and b!4957512 res!2115427) b!4957510))

(assert (= (and b!4957510 res!2115423) b!4957513))

(assert (= (and b!4957513 res!2115425) b!4957511))

(assert (= (and b!4957511 (not res!2115424)) b!4957520))

(assert (= (and b!4957520 (not res!2115422)) b!4957515))

(assert (= b!4957516 b!4957519))

(assert (= b!4957517 b!4957516))

(assert (= (and start!522586 ((_ is Cons!57254) rulesArg!259)) b!4957517))

(assert (= start!522586 b!4957514))

(assert (= start!522586 b!4957518))

(declare-fun m!5982084 () Bool)

(assert (=> b!4957516 m!5982084))

(declare-fun m!5982086 () Bool)

(assert (=> b!4957516 m!5982086))

(declare-fun m!5982088 () Bool)

(assert (=> start!522586 m!5982088))

(declare-fun m!5982090 () Bool)

(assert (=> start!522586 m!5982090))

(declare-fun m!5982092 () Bool)

(assert (=> b!4957513 m!5982092))

(assert (=> b!4957513 m!5982092))

(declare-fun m!5982094 () Bool)

(assert (=> b!4957513 m!5982094))

(declare-fun m!5982096 () Bool)

(assert (=> b!4957513 m!5982096))

(declare-fun m!5982098 () Bool)

(assert (=> b!4957520 m!5982098))

(declare-fun m!5982100 () Bool)

(assert (=> b!4957520 m!5982100))

(declare-fun m!5982102 () Bool)

(assert (=> b!4957515 m!5982102))

(declare-fun m!5982104 () Bool)

(assert (=> b!4957518 m!5982104))

(declare-fun m!5982106 () Bool)

(assert (=> b!4957510 m!5982106))

(declare-fun m!5982108 () Bool)

(assert (=> b!4957511 m!5982108))

(declare-fun m!5982110 () Bool)

(assert (=> b!4957511 m!5982110))

(declare-fun m!5982112 () Bool)

(assert (=> b!4957514 m!5982112))

(declare-fun m!5982114 () Bool)

(assert (=> b!4957512 m!5982114))

(check-sat (not b!4957513) (not b!4957520) (not b_next!133141) (not b!4957510) (not b!4957511) (not b!4957514) (not b!4957517) (not b!4957518) (not start!522586) (not b!4957515) (not b_next!133143) b_and!347205 (not b!4957516) (not b!4957512) b_and!347203)
(check-sat b_and!347203 b_and!347205 (not b_next!133141) (not b_next!133143))
