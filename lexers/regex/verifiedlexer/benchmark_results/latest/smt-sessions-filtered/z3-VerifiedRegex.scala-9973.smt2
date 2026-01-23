; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522378 () Bool)

(assert start!522378)

(declare-fun b!4955569 () Bool)

(declare-fun b_free!132207 () Bool)

(declare-fun b_next!132997 () Bool)

(assert (=> b!4955569 (= b_free!132207 (not b_next!132997))))

(declare-fun tp!1389583 () Bool)

(declare-fun b_and!347059 () Bool)

(assert (=> b!4955569 (= tp!1389583 b_and!347059)))

(declare-fun b_free!132209 () Bool)

(declare-fun b_next!132999 () Bool)

(assert (=> b!4955569 (= b_free!132209 (not b_next!132999))))

(declare-fun tp!1389585 () Bool)

(declare-fun b_and!347061 () Bool)

(assert (=> b!4955569 (= tp!1389585 b_and!347061)))

(declare-fun e!3096522 () Bool)

(assert (=> b!4955569 (= e!3096522 (and tp!1389583 tp!1389585))))

(declare-fun b!4955570 () Bool)

(declare-fun e!3096525 () Bool)

(declare-datatypes ((C!27312 0))(
  ( (C!27313 (val!23022 Int)) )
))
(declare-datatypes ((List!57280 0))(
  ( (Nil!57156) (Cons!57156 (h!63604 C!27312) (t!367846 List!57280)) )
))
(declare-datatypes ((IArray!30161 0))(
  ( (IArray!30162 (innerList!15138 List!57280)) )
))
(declare-datatypes ((Conc!15050 0))(
  ( (Node!15050 (left!41701 Conc!15050) (right!42031 Conc!15050) (csize!30330 Int) (cheight!15261 Int)) (Leaf!25024 (xs!18376 IArray!30161) (csize!30331 Int)) (Empty!15050) )
))
(declare-datatypes ((BalanceConc!29530 0))(
  ( (BalanceConc!29531 (c!846103 Conc!15050)) )
))
(declare-fun totalInput!464 () BalanceConc!29530)

(declare-fun tp!1389586 () Bool)

(declare-fun inv!74554 (Conc!15050) Bool)

(assert (=> b!4955570 (= e!3096525 (and (inv!74554 (c!846103 totalInput!464)) tp!1389586))))

(declare-fun tp!1389584 () Bool)

(declare-fun e!3096520 () Bool)

(declare-fun b!4955571 () Bool)

(declare-datatypes ((List!57281 0))(
  ( (Nil!57157) (Cons!57157 (h!63605 (_ BitVec 16)) (t!367847 List!57281)) )
))
(declare-datatypes ((TokenValue!8608 0))(
  ( (FloatLiteralValue!17216 (text!60701 List!57281)) (TokenValueExt!8607 (__x!34509 Int)) (Broken!43040 (value!265909 List!57281)) (Object!8731) (End!8608) (Def!8608) (Underscore!8608) (Match!8608) (Else!8608) (Error!8608) (Case!8608) (If!8608) (Extends!8608) (Abstract!8608) (Class!8608) (Val!8608) (DelimiterValue!17216 (del!8668 List!57281)) (KeywordValue!8614 (value!265910 List!57281)) (CommentValue!17216 (value!265911 List!57281)) (WhitespaceValue!17216 (value!265912 List!57281)) (IndentationValue!8608 (value!265913 List!57281)) (String!64913) (Int32!8608) (Broken!43041 (value!265914 List!57281)) (Boolean!8609) (Unit!148050) (OperatorValue!8611 (op!8668 List!57281)) (IdentifierValue!17216 (value!265915 List!57281)) (IdentifierValue!17217 (value!265916 List!57281)) (WhitespaceValue!17217 (value!265917 List!57281)) (True!17216) (False!17216) (Broken!43042 (value!265918 List!57281)) (Broken!43043 (value!265919 List!57281)) (True!17217) (RightBrace!8608) (RightBracket!8608) (Colon!8608) (Null!8608) (Comma!8608) (LeftBracket!8608) (False!17217) (LeftBrace!8608) (ImaginaryLiteralValue!8608 (text!60702 List!57281)) (StringLiteralValue!25824 (value!265920 List!57281)) (EOFValue!8608 (value!265921 List!57281)) (IdentValue!8608 (value!265922 List!57281)) (DelimiterValue!17217 (value!265923 List!57281)) (DedentValue!8608 (value!265924 List!57281)) (NewLineValue!8608 (value!265925 List!57281)) (IntegerValue!25824 (value!265926 (_ BitVec 32)) (text!60703 List!57281)) (IntegerValue!25825 (value!265927 Int) (text!60704 List!57281)) (Times!8608) (Or!8608) (Equal!8608) (Minus!8608) (Broken!43044 (value!265928 List!57281)) (And!8608) (Div!8608) (LessEqual!8608) (Mod!8608) (Concat!22139) (Not!8608) (Plus!8608) (SpaceValue!8608 (value!265929 List!57281)) (IntegerValue!25826 (value!265930 Int) (text!60705 List!57281)) (StringLiteralValue!25825 (text!60706 List!57281)) (FloatLiteralValue!17217 (text!60707 List!57281)) (BytesLiteralValue!8608 (value!265931 List!57281)) (CommentValue!17217 (value!265932 List!57281)) (StringLiteralValue!25826 (value!265933 List!57281)) (ErrorTokenValue!8608 (msg!8669 List!57281)) )
))
(declare-datatypes ((Regex!13531 0))(
  ( (ElementMatch!13531 (c!846104 C!27312)) (Concat!22140 (regOne!27574 Regex!13531) (regTwo!27574 Regex!13531)) (EmptyExpr!13531) (Star!13531 (reg!13860 Regex!13531)) (EmptyLang!13531) (Union!13531 (regOne!27575 Regex!13531) (regTwo!27575 Regex!13531)) )
))
(declare-datatypes ((String!64914 0))(
  ( (String!64915 (value!265934 String)) )
))
(declare-datatypes ((TokenValueInjection!16524 0))(
  ( (TokenValueInjection!16525 (toValue!11249 Int) (toChars!11108 Int)) )
))
(declare-datatypes ((Rule!16396 0))(
  ( (Rule!16397 (regex!8298 Regex!13531) (tag!9162 String!64914) (isSeparator!8298 Bool) (transformation!8298 TokenValueInjection!16524)) )
))
(declare-datatypes ((List!57282 0))(
  ( (Nil!57158) (Cons!57158 (h!63606 Rule!16396) (t!367848 List!57282)) )
))
(declare-fun rulesArg!259 () List!57282)

(declare-fun inv!74550 (String!64914) Bool)

(declare-fun inv!74555 (TokenValueInjection!16524) Bool)

(assert (=> b!4955571 (= e!3096520 (and tp!1389584 (inv!74550 (tag!9162 (h!63606 rulesArg!259))) (inv!74555 (transformation!8298 (h!63606 rulesArg!259))) e!3096522))))

(declare-fun b!4955572 () Bool)

(declare-fun e!3096524 () Bool)

(assert (=> b!4955572 (= e!3096524 true)))

(declare-fun lt!2045218 () Bool)

(declare-datatypes ((LexerInterface!7890 0))(
  ( (LexerInterfaceExt!7887 (__x!34510 Int)) (Lexer!7888) )
))
(declare-fun thiss!15247 () LexerInterface!7890)

(declare-fun rulesValidInductive!3201 (LexerInterface!7890 List!57282) Bool)

(assert (=> b!4955572 (= lt!2045218 (rulesValidInductive!3201 thiss!15247 (t!367848 rulesArg!259)))))

(declare-fun input!1342 () BalanceConc!29530)

(declare-datatypes ((Token!15096 0))(
  ( (Token!15097 (value!265935 TokenValue!8608) (rule!11514 Rule!16396) (size!37920 Int) (originalCharacters!8579 List!57280)) )
))
(declare-datatypes ((tuple2!61714 0))(
  ( (tuple2!61715 (_1!34160 Token!15096) (_2!34160 BalanceConc!29530)) )
))
(declare-datatypes ((Option!14268 0))(
  ( (None!14267) (Some!14267 (v!50252 tuple2!61714)) )
))
(declare-fun lt!2045217 () Option!14268)

(declare-fun maxPrefixOneRuleZipperSequenceV2!282 (LexerInterface!7890 Rule!16396 BalanceConc!29530 BalanceConc!29530) Option!14268)

(assert (=> b!4955572 (= lt!2045217 (maxPrefixOneRuleZipperSequenceV2!282 thiss!15247 (h!63606 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4955573 () Bool)

(declare-fun e!3096521 () Bool)

(declare-fun tp!1389587 () Bool)

(assert (=> b!4955573 (= e!3096521 (and (inv!74554 (c!846103 input!1342)) tp!1389587))))

(declare-fun b!4955575 () Bool)

(declare-fun e!3096523 () Bool)

(declare-fun tp!1389588 () Bool)

(assert (=> b!4955575 (= e!3096523 (and e!3096520 tp!1389588))))

(declare-fun b!4955576 () Bool)

(declare-fun res!2114262 () Bool)

(declare-fun e!3096517 () Bool)

(assert (=> b!4955576 (=> (not res!2114262) (not e!3096517))))

(declare-fun isEmpty!30738 (List!57282) Bool)

(assert (=> b!4955576 (= res!2114262 (not (isEmpty!30738 rulesArg!259)))))

(declare-fun b!4955577 () Bool)

(declare-fun res!2114263 () Bool)

(assert (=> b!4955577 (=> (not res!2114263) (not e!3096517))))

(assert (=> b!4955577 (= res!2114263 (rulesValidInductive!3201 thiss!15247 rulesArg!259))))

(declare-fun b!4955578 () Bool)

(declare-fun e!3096518 () Bool)

(assert (=> b!4955578 (= e!3096518 (not e!3096524))))

(declare-fun res!2114261 () Bool)

(assert (=> b!4955578 (=> res!2114261 e!3096524)))

(get-info :version)

(assert (=> b!4955578 (= res!2114261 (or (and ((_ is Cons!57158) rulesArg!259) ((_ is Nil!57158) (t!367848 rulesArg!259))) (not ((_ is Cons!57158) rulesArg!259))))))

(declare-fun lt!2045219 () List!57280)

(declare-fun isPrefix!5151 (List!57280 List!57280) Bool)

(assert (=> b!4955578 (isPrefix!5151 lt!2045219 lt!2045219)))

(declare-datatypes ((Unit!148051 0))(
  ( (Unit!148052) )
))
(declare-fun lt!2045220 () Unit!148051)

(declare-fun lemmaIsPrefixRefl!3475 (List!57280 List!57280) Unit!148051)

(assert (=> b!4955578 (= lt!2045220 (lemmaIsPrefixRefl!3475 lt!2045219 lt!2045219))))

(declare-fun res!2114265 () Bool)

(assert (=> start!522378 (=> (not res!2114265) (not e!3096517))))

(assert (=> start!522378 (= res!2114265 ((_ is Lexer!7888) thiss!15247))))

(assert (=> start!522378 e!3096517))

(assert (=> start!522378 true))

(assert (=> start!522378 e!3096523))

(declare-fun inv!74556 (BalanceConc!29530) Bool)

(assert (=> start!522378 (and (inv!74556 input!1342) e!3096521)))

(assert (=> start!522378 (and (inv!74556 totalInput!464) e!3096525)))

(declare-fun b!4955574 () Bool)

(assert (=> b!4955574 (= e!3096517 e!3096518)))

(declare-fun res!2114264 () Bool)

(assert (=> b!4955574 (=> (not res!2114264) (not e!3096518))))

(declare-fun isSuffix!1097 (List!57280 List!57280) Bool)

(declare-fun list!18239 (BalanceConc!29530) List!57280)

(assert (=> b!4955574 (= res!2114264 (isSuffix!1097 lt!2045219 (list!18239 totalInput!464)))))

(assert (=> b!4955574 (= lt!2045219 (list!18239 input!1342))))

(assert (= (and start!522378 res!2114265) b!4955577))

(assert (= (and b!4955577 res!2114263) b!4955576))

(assert (= (and b!4955576 res!2114262) b!4955574))

(assert (= (and b!4955574 res!2114264) b!4955578))

(assert (= (and b!4955578 (not res!2114261)) b!4955572))

(assert (= b!4955571 b!4955569))

(assert (= b!4955575 b!4955571))

(assert (= (and start!522378 ((_ is Cons!57158) rulesArg!259)) b!4955575))

(assert (= start!522378 b!4955573))

(assert (= start!522378 b!4955570))

(declare-fun m!5980186 () Bool)

(assert (=> b!4955578 m!5980186))

(declare-fun m!5980188 () Bool)

(assert (=> b!4955578 m!5980188))

(declare-fun m!5980190 () Bool)

(assert (=> b!4955577 m!5980190))

(declare-fun m!5980192 () Bool)

(assert (=> b!4955571 m!5980192))

(declare-fun m!5980194 () Bool)

(assert (=> b!4955571 m!5980194))

(declare-fun m!5980196 () Bool)

(assert (=> b!4955574 m!5980196))

(assert (=> b!4955574 m!5980196))

(declare-fun m!5980198 () Bool)

(assert (=> b!4955574 m!5980198))

(declare-fun m!5980200 () Bool)

(assert (=> b!4955574 m!5980200))

(declare-fun m!5980202 () Bool)

(assert (=> b!4955572 m!5980202))

(declare-fun m!5980204 () Bool)

(assert (=> b!4955572 m!5980204))

(declare-fun m!5980206 () Bool)

(assert (=> start!522378 m!5980206))

(declare-fun m!5980208 () Bool)

(assert (=> start!522378 m!5980208))

(declare-fun m!5980210 () Bool)

(assert (=> b!4955576 m!5980210))

(declare-fun m!5980212 () Bool)

(assert (=> b!4955573 m!5980212))

(declare-fun m!5980214 () Bool)

(assert (=> b!4955570 m!5980214))

(check-sat (not b!4955574) (not b!4955573) (not b!4955570) (not b_next!132997) (not b!4955572) b_and!347059 (not b!4955575) (not start!522378) (not b_next!132999) (not b!4955576) (not b!4955577) (not b!4955571) b_and!347061 (not b!4955578))
(check-sat b_and!347059 b_and!347061 (not b_next!132997) (not b_next!132999))
