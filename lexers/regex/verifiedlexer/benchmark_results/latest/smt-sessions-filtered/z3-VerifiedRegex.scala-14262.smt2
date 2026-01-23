; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745496 () Bool)

(assert start!745496)

(declare-fun b!7902352 () Bool)

(declare-fun b_free!134751 () Bool)

(declare-fun b_next!135541 () Bool)

(assert (=> b!7902352 (= b_free!134751 (not b_next!135541))))

(declare-fun tp!2354217 () Bool)

(declare-fun b_and!352779 () Bool)

(assert (=> b!7902352 (= tp!2354217 b_and!352779)))

(declare-fun b_free!134753 () Bool)

(declare-fun b_next!135543 () Bool)

(assert (=> b!7902352 (= b_free!134753 (not b_next!135543))))

(declare-fun tp!2354219 () Bool)

(declare-fun b_and!352781 () Bool)

(assert (=> b!7902352 (= tp!2354219 b_and!352781)))

(declare-fun b!7902348 () Bool)

(declare-fun res!3135365 () Bool)

(declare-fun e!4664487 () Bool)

(assert (=> b!7902348 (=> res!3135365 e!4664487)))

(declare-datatypes ((List!74290 0))(
  ( (Nil!74166) (Cons!74166 (h!80614 (_ BitVec 16)) (t!389295 List!74290)) )
))
(declare-datatypes ((TokenValue!8906 0))(
  ( (FloatLiteralValue!17812 (text!62787 List!74290)) (TokenValueExt!8905 (__x!35099 Int)) (Broken!44530 (value!286770 List!74290)) (Object!9029) (End!8906) (Def!8906) (Underscore!8906) (Match!8906) (Else!8906) (Error!8906) (Case!8906) (If!8906) (Extends!8906) (Abstract!8906) (Class!8906) (Val!8906) (DelimiterValue!17812 (del!8966 List!74290)) (KeywordValue!8912 (value!286771 List!74290)) (CommentValue!17812 (value!286772 List!74290)) (WhitespaceValue!17812 (value!286773 List!74290)) (IndentationValue!8906 (value!286774 List!74290)) (String!82951) (Int32!8906) (Broken!44531 (value!286775 List!74290)) (Boolean!8907) (Unit!169196) (OperatorValue!8909 (op!8966 List!74290)) (IdentifierValue!17812 (value!286776 List!74290)) (IdentifierValue!17813 (value!286777 List!74290)) (WhitespaceValue!17813 (value!286778 List!74290)) (True!17812) (False!17812) (Broken!44532 (value!286779 List!74290)) (Broken!44533 (value!286780 List!74290)) (True!17813) (RightBrace!8906) (RightBracket!8906) (Colon!8906) (Null!8906) (Comma!8906) (LeftBracket!8906) (False!17813) (LeftBrace!8906) (ImaginaryLiteralValue!8906 (text!62788 List!74290)) (StringLiteralValue!26718 (value!286781 List!74290)) (EOFValue!8906 (value!286782 List!74290)) (IdentValue!8906 (value!286783 List!74290)) (DelimiterValue!17813 (value!286784 List!74290)) (DedentValue!8906 (value!286785 List!74290)) (NewLineValue!8906 (value!286786 List!74290)) (IntegerValue!26718 (value!286787 (_ BitVec 32)) (text!62789 List!74290)) (IntegerValue!26719 (value!286788 Int) (text!62790 List!74290)) (Times!8906) (Or!8906) (Equal!8906) (Minus!8906) (Broken!44534 (value!286789 List!74290)) (And!8906) (Div!8906) (LessEqual!8906) (Mod!8906) (Concat!30199) (Not!8906) (Plus!8906) (SpaceValue!8906 (value!286790 List!74290)) (IntegerValue!26720 (value!286791 Int) (text!62791 List!74290)) (StringLiteralValue!26719 (text!62792 List!74290)) (FloatLiteralValue!17813 (text!62793 List!74290)) (BytesLiteralValue!8906 (value!286792 List!74290)) (CommentValue!17813 (value!286793 List!74290)) (StringLiteralValue!26720 (value!286794 List!74290)) (ErrorTokenValue!8906 (msg!8967 List!74290)) )
))
(declare-datatypes ((C!42916 0))(
  ( (C!42917 (val!31922 Int)) )
))
(declare-datatypes ((List!74291 0))(
  ( (Nil!74167) (Cons!74167 (h!80615 C!42916) (t!389296 List!74291)) )
))
(declare-datatypes ((IArray!31589 0))(
  ( (IArray!31590 (innerList!15852 List!74291)) )
))
(declare-datatypes ((Conc!15764 0))(
  ( (Node!15764 (left!56582 Conc!15764) (right!56912 Conc!15764) (csize!31758 Int) (cheight!15975 Int)) (Leaf!30027 (xs!19146 IArray!31589) (csize!31759 Int)) (Empty!15764) )
))
(declare-datatypes ((BalanceConc!30646 0))(
  ( (BalanceConc!30647 (c!1450211 Conc!15764)) )
))
(declare-datatypes ((Regex!21293 0))(
  ( (ElementMatch!21293 (c!1450212 C!42916)) (Concat!30200 (regOne!43098 Regex!21293) (regTwo!43098 Regex!21293)) (EmptyExpr!21293) (Star!21293 (reg!21622 Regex!21293)) (EmptyLang!21293) (Union!21293 (regOne!43099 Regex!21293) (regTwo!43099 Regex!21293)) )
))
(declare-datatypes ((String!82952 0))(
  ( (String!82953 (value!286795 String)) )
))
(declare-datatypes ((TokenValueInjection!17120 0))(
  ( (TokenValueInjection!17121 (toValue!11639 Int) (toChars!11498 Int)) )
))
(declare-datatypes ((Rule!16980 0))(
  ( (Rule!16981 (regex!8590 Regex!21293) (tag!9454 String!82952) (isSeparator!8590 Bool) (transformation!8590 TokenValueInjection!17120)) )
))
(declare-datatypes ((Token!15600 0))(
  ( (Token!15601 (value!286796 TokenValue!8906) (rule!11878 Rule!16980) (size!42975 Int) (originalCharacters!8831 List!74291)) )
))
(declare-datatypes ((tuple2!70206 0))(
  ( (tuple2!70207 (_1!38406 Token!15600) (_2!38406 List!74291)) )
))
(declare-datatypes ((Option!17872 0))(
  ( (None!17871) (Some!17871 (v!55012 tuple2!70206)) )
))
(declare-fun lt!2683788 () Option!17872)

(declare-fun isDefined!14448 (Option!17872) Bool)

(assert (=> b!7902348 (= res!3135365 (not (isDefined!14448 lt!2683788)))))

(declare-fun b!7902349 () Bool)

(declare-fun res!3135363 () Bool)

(declare-fun e!4664488 () Bool)

(assert (=> b!7902349 (=> (not res!3135363) (not e!4664488))))

(declare-datatypes ((LexerInterface!8182 0))(
  ( (LexerInterfaceExt!8179 (__x!35100 Int)) (Lexer!8180) )
))
(declare-fun thiss!14377 () LexerInterface!8182)

(declare-datatypes ((List!74292 0))(
  ( (Nil!74168) (Cons!74168 (h!80616 Rule!16980) (t!389297 List!74292)) )
))
(declare-fun rulesArg!141 () List!74292)

(declare-fun rulesValidInductive!3401 (LexerInterface!8182 List!74292) Bool)

(assert (=> b!7902349 (= res!3135363 (rulesValidInductive!3401 thiss!14377 rulesArg!141))))

(declare-fun e!4664490 () Bool)

(declare-fun e!4664489 () Bool)

(declare-fun tp!2354216 () Bool)

(declare-fun b!7902350 () Bool)

(declare-fun inv!95157 (String!82952) Bool)

(declare-fun inv!95159 (TokenValueInjection!17120) Bool)

(assert (=> b!7902350 (= e!4664489 (and tp!2354216 (inv!95157 (tag!9454 (h!80616 rulesArg!141))) (inv!95159 (transformation!8590 (h!80616 rulesArg!141))) e!4664490))))

(declare-fun b!7902351 () Bool)

(declare-fun e!4664492 () Bool)

(declare-fun tp_is_empty!52961 () Bool)

(declare-fun tp!2354220 () Bool)

(assert (=> b!7902351 (= e!4664492 (and tp_is_empty!52961 tp!2354220))))

(assert (=> b!7902352 (= e!4664490 (and tp!2354217 tp!2354219))))

(declare-fun b!7902353 () Bool)

(declare-fun e!4664491 () Bool)

(assert (=> b!7902353 (= e!4664488 (not e!4664491))))

(declare-fun res!3135364 () Bool)

(assert (=> b!7902353 (=> res!3135364 e!4664491)))

(get-info :version)

(assert (=> b!7902353 (= res!3135364 (or (and ((_ is Cons!74168) rulesArg!141) ((_ is Nil!74168) (t!389297 rulesArg!141))) (not ((_ is Cons!74168) rulesArg!141))))))

(declare-fun input!1184 () List!74291)

(declare-fun isPrefix!6423 (List!74291 List!74291) Bool)

(assert (=> b!7902353 (isPrefix!6423 input!1184 input!1184)))

(declare-datatypes ((Unit!169197 0))(
  ( (Unit!169198) )
))
(declare-fun lt!2683786 () Unit!169197)

(declare-fun lemmaIsPrefixRefl!3934 (List!74291 List!74291) Unit!169197)

(assert (=> b!7902353 (= lt!2683786 (lemmaIsPrefixRefl!3934 input!1184 input!1184))))

(declare-fun res!3135359 () Bool)

(assert (=> start!745496 (=> (not res!3135359) (not e!4664488))))

(assert (=> start!745496 (= res!3135359 ((_ is Lexer!8180) thiss!14377))))

(assert (=> start!745496 e!4664488))

(assert (=> start!745496 true))

(declare-fun e!4664493 () Bool)

(assert (=> start!745496 e!4664493))

(assert (=> start!745496 e!4664492))

(declare-fun b!7902354 () Bool)

(assert (=> b!7902354 (= e!4664487 true)))

(declare-fun lt!2683785 () List!74291)

(declare-fun list!19217 (BalanceConc!30646) List!74291)

(declare-fun charsOf!5534 (Token!15600) BalanceConc!30646)

(declare-fun get!26639 (Option!17872) tuple2!70206)

(assert (=> b!7902354 (= lt!2683785 (list!19217 (charsOf!5534 (_1!38406 (get!26639 lt!2683788)))))))

(declare-fun b!7902355 () Bool)

(declare-fun res!3135361 () Bool)

(assert (=> b!7902355 (=> (not res!3135361) (not e!4664488))))

(declare-fun isEmpty!42548 (List!74292) Bool)

(assert (=> b!7902355 (= res!3135361 (not (isEmpty!42548 rulesArg!141)))))

(declare-fun b!7902356 () Bool)

(assert (=> b!7902356 (= e!4664491 e!4664487)))

(declare-fun res!3135362 () Bool)

(assert (=> b!7902356 (=> res!3135362 e!4664487)))

(declare-fun lt!2683787 () Option!17872)

(assert (=> b!7902356 (= res!3135362 (or (and ((_ is None!17871) lt!2683788) ((_ is None!17871) lt!2683787)) ((_ is None!17871) lt!2683787) ((_ is None!17871) lt!2683788) (< (size!42975 (_1!38406 (v!55012 lt!2683788))) (size!42975 (_1!38406 (v!55012 lt!2683787))))))))

(declare-fun maxPrefix!4723 (LexerInterface!8182 List!74292 List!74291) Option!17872)

(assert (=> b!7902356 (= lt!2683787 (maxPrefix!4723 thiss!14377 (t!389297 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3770 (LexerInterface!8182 Rule!16980 List!74291) Option!17872)

(assert (=> b!7902356 (= lt!2683788 (maxPrefixOneRule!3770 thiss!14377 (h!80616 rulesArg!141) input!1184))))

(declare-fun b!7902357 () Bool)

(declare-fun res!3135360 () Bool)

(assert (=> b!7902357 (=> res!3135360 e!4664487)))

(declare-fun isEmpty!42549 (Option!17872) Bool)

(assert (=> b!7902357 (= res!3135360 (isEmpty!42549 lt!2683788))))

(declare-fun b!7902358 () Bool)

(declare-fun tp!2354218 () Bool)

(assert (=> b!7902358 (= e!4664493 (and e!4664489 tp!2354218))))

(assert (= (and start!745496 res!3135359) b!7902349))

(assert (= (and b!7902349 res!3135363) b!7902355))

(assert (= (and b!7902355 res!3135361) b!7902353))

(assert (= (and b!7902353 (not res!3135364)) b!7902356))

(assert (= (and b!7902356 (not res!3135362)) b!7902357))

(assert (= (and b!7902357 (not res!3135360)) b!7902348))

(assert (= (and b!7902348 (not res!3135365)) b!7902354))

(assert (= b!7902350 b!7902352))

(assert (= b!7902358 b!7902350))

(assert (= (and start!745496 ((_ is Cons!74168) rulesArg!141)) b!7902358))

(assert (= (and start!745496 ((_ is Cons!74167) input!1184)) b!7902351))

(declare-fun m!8277062 () Bool)

(assert (=> b!7902353 m!8277062))

(declare-fun m!8277064 () Bool)

(assert (=> b!7902353 m!8277064))

(declare-fun m!8277066 () Bool)

(assert (=> b!7902350 m!8277066))

(declare-fun m!8277068 () Bool)

(assert (=> b!7902350 m!8277068))

(declare-fun m!8277070 () Bool)

(assert (=> b!7902349 m!8277070))

(declare-fun m!8277072 () Bool)

(assert (=> b!7902355 m!8277072))

(declare-fun m!8277074 () Bool)

(assert (=> b!7902348 m!8277074))

(declare-fun m!8277076 () Bool)

(assert (=> b!7902357 m!8277076))

(declare-fun m!8277078 () Bool)

(assert (=> b!7902354 m!8277078))

(declare-fun m!8277080 () Bool)

(assert (=> b!7902354 m!8277080))

(assert (=> b!7902354 m!8277080))

(declare-fun m!8277082 () Bool)

(assert (=> b!7902354 m!8277082))

(declare-fun m!8277084 () Bool)

(assert (=> b!7902356 m!8277084))

(declare-fun m!8277086 () Bool)

(assert (=> b!7902356 m!8277086))

(check-sat (not b!7902355) (not b!7902353) tp_is_empty!52961 (not b!7902356) b_and!352779 b_and!352781 (not b!7902349) (not b!7902354) (not b_next!135543) (not b!7902348) (not b!7902351) (not b_next!135541) (not b!7902358) (not b!7902357) (not b!7902350))
(check-sat b_and!352781 b_and!352779 (not b_next!135543) (not b_next!135541))
