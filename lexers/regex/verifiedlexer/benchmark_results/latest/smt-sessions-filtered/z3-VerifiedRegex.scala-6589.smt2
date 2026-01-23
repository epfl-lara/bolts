; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!348198 () Bool)

(assert start!348198)

(declare-fun b!3697329 () Bool)

(declare-fun b_free!98417 () Bool)

(declare-fun b_next!99121 () Bool)

(assert (=> b!3697329 (= b_free!98417 (not b_next!99121))))

(declare-fun tp!1123873 () Bool)

(declare-fun b_and!276379 () Bool)

(assert (=> b!3697329 (= tp!1123873 b_and!276379)))

(declare-fun b_free!98419 () Bool)

(declare-fun b_next!99123 () Bool)

(assert (=> b!3697329 (= b_free!98419 (not b_next!99123))))

(declare-fun tp!1123874 () Bool)

(declare-fun b_and!276381 () Bool)

(assert (=> b!3697329 (= tp!1123874 b_and!276381)))

(declare-fun b!3697342 () Bool)

(declare-fun b_free!98421 () Bool)

(declare-fun b_next!99125 () Bool)

(assert (=> b!3697342 (= b_free!98421 (not b_next!99125))))

(declare-fun tp!1123877 () Bool)

(declare-fun b_and!276383 () Bool)

(assert (=> b!3697342 (= tp!1123877 b_and!276383)))

(declare-fun b_free!98423 () Bool)

(declare-fun b_next!99127 () Bool)

(assert (=> b!3697342 (= b_free!98423 (not b_next!99127))))

(declare-fun tp!1123872 () Bool)

(declare-fun b_and!276385 () Bool)

(assert (=> b!3697342 (= tp!1123872 b_and!276385)))

(declare-fun b!3697327 () Bool)

(declare-fun res!1503632 () Bool)

(declare-fun e!2289759 () Bool)

(assert (=> b!3697327 (=> (not res!1503632) (not e!2289759))))

(declare-datatypes ((List!39384 0))(
  ( (Nil!39260) (Cons!39260 (h!44680 (_ BitVec 16)) (t!301755 List!39384)) )
))
(declare-datatypes ((TokenValue!6188 0))(
  ( (FloatLiteralValue!12376 (text!43761 List!39384)) (TokenValueExt!6187 (__x!24593 Int)) (Broken!30940 (value!190231 List!39384)) (Object!6311) (End!6188) (Def!6188) (Underscore!6188) (Match!6188) (Else!6188) (Error!6188) (Case!6188) (If!6188) (Extends!6188) (Abstract!6188) (Class!6188) (Val!6188) (DelimiterValue!12376 (del!6248 List!39384)) (KeywordValue!6194 (value!190232 List!39384)) (CommentValue!12376 (value!190233 List!39384)) (WhitespaceValue!12376 (value!190234 List!39384)) (IndentationValue!6188 (value!190235 List!39384)) (String!44273) (Int32!6188) (Broken!30941 (value!190236 List!39384)) (Boolean!6189) (Unit!57235) (OperatorValue!6191 (op!6248 List!39384)) (IdentifierValue!12376 (value!190237 List!39384)) (IdentifierValue!12377 (value!190238 List!39384)) (WhitespaceValue!12377 (value!190239 List!39384)) (True!12376) (False!12376) (Broken!30942 (value!190240 List!39384)) (Broken!30943 (value!190241 List!39384)) (True!12377) (RightBrace!6188) (RightBracket!6188) (Colon!6188) (Null!6188) (Comma!6188) (LeftBracket!6188) (False!12377) (LeftBrace!6188) (ImaginaryLiteralValue!6188 (text!43762 List!39384)) (StringLiteralValue!18564 (value!190242 List!39384)) (EOFValue!6188 (value!190243 List!39384)) (IdentValue!6188 (value!190244 List!39384)) (DelimiterValue!12377 (value!190245 List!39384)) (DedentValue!6188 (value!190246 List!39384)) (NewLineValue!6188 (value!190247 List!39384)) (IntegerValue!18564 (value!190248 (_ BitVec 32)) (text!43763 List!39384)) (IntegerValue!18565 (value!190249 Int) (text!43764 List!39384)) (Times!6188) (Or!6188) (Equal!6188) (Minus!6188) (Broken!30944 (value!190250 List!39384)) (And!6188) (Div!6188) (LessEqual!6188) (Mod!6188) (Concat!16905) (Not!6188) (Plus!6188) (SpaceValue!6188 (value!190251 List!39384)) (IntegerValue!18566 (value!190252 Int) (text!43765 List!39384)) (StringLiteralValue!18565 (text!43766 List!39384)) (FloatLiteralValue!12377 (text!43767 List!39384)) (BytesLiteralValue!6188 (value!190253 List!39384)) (CommentValue!12377 (value!190254 List!39384)) (StringLiteralValue!18566 (value!190255 List!39384)) (ErrorTokenValue!6188 (msg!6249 List!39384)) )
))
(declare-datatypes ((C!21620 0))(
  ( (C!21621 (val!12858 Int)) )
))
(declare-datatypes ((Regex!10717 0))(
  ( (ElementMatch!10717 (c!639022 C!21620)) (Concat!16906 (regOne!21946 Regex!10717) (regTwo!21946 Regex!10717)) (EmptyExpr!10717) (Star!10717 (reg!11046 Regex!10717)) (EmptyLang!10717) (Union!10717 (regOne!21947 Regex!10717) (regTwo!21947 Regex!10717)) )
))
(declare-datatypes ((String!44274 0))(
  ( (String!44275 (value!190256 String)) )
))
(declare-datatypes ((List!39385 0))(
  ( (Nil!39261) (Cons!39261 (h!44681 C!21620) (t!301756 List!39385)) )
))
(declare-datatypes ((IArray!24115 0))(
  ( (IArray!24116 (innerList!12115 List!39385)) )
))
(declare-datatypes ((Conc!12055 0))(
  ( (Node!12055 (left!30580 Conc!12055) (right!30910 Conc!12055) (csize!24340 Int) (cheight!12266 Int)) (Leaf!18645 (xs!15257 IArray!24115) (csize!24341 Int)) (Empty!12055) )
))
(declare-datatypes ((BalanceConc!23724 0))(
  ( (BalanceConc!23725 (c!639023 Conc!12055)) )
))
(declare-datatypes ((TokenValueInjection!11804 0))(
  ( (TokenValueInjection!11805 (toValue!8290 Int) (toChars!8149 Int)) )
))
(declare-datatypes ((Rule!11716 0))(
  ( (Rule!11717 (regex!5958 Regex!10717) (tag!6788 String!44274) (isSeparator!5958 Bool) (transformation!5958 TokenValueInjection!11804)) )
))
(declare-datatypes ((List!39386 0))(
  ( (Nil!39262) (Cons!39262 (h!44682 Rule!11716) (t!301757 List!39386)) )
))
(declare-fun rules!3598 () List!39386)

(get-info :version)

(assert (=> b!3697327 (= res!1503632 ((_ is Cons!39262) rules!3598))))

(declare-fun b!3697328 () Bool)

(declare-fun e!2289758 () Bool)

(declare-fun e!2289763 () Bool)

(declare-fun tp!1123878 () Bool)

(assert (=> b!3697328 (= e!2289758 (and e!2289763 tp!1123878))))

(declare-fun e!2289762 () Bool)

(assert (=> b!3697329 (= e!2289762 (and tp!1123873 tp!1123874))))

(declare-fun b!3697330 () Bool)

(declare-fun res!1503634 () Bool)

(assert (=> b!3697330 (=> (not res!1503634) (not e!2289759))))

(declare-datatypes ((Token!11270 0))(
  ( (Token!11271 (value!190257 TokenValue!6188) (rule!8816 Rule!11716) (size!29946 Int) (originalCharacters!6666 List!39385)) )
))
(declare-datatypes ((tuple2!39132 0))(
  ( (tuple2!39133 (_1!22700 Token!11270) (_2!22700 List!39385)) )
))
(declare-datatypes ((Option!8492 0))(
  ( (None!8491) (Some!8491 (v!38449 tuple2!39132)) )
))
(declare-fun lt!1294051 () Option!8492)

(declare-fun token!544 () Token!11270)

(declare-fun get!13058 (Option!8492) tuple2!39132)

(assert (=> b!3697330 (= res!1503634 (= (_1!22700 (get!13058 lt!1294051)) token!544))))

(declare-fun b!3697331 () Bool)

(declare-fun e!2289752 () Bool)

(assert (=> b!3697331 (= e!2289752 e!2289759)))

(declare-fun res!1503628 () Bool)

(assert (=> b!3697331 (=> (not res!1503628) (not e!2289759))))

(declare-fun isDefined!6681 (Option!8492) Bool)

(assert (=> b!3697331 (= res!1503628 (isDefined!6681 lt!1294051))))

(declare-fun input!3172 () List!39385)

(declare-datatypes ((LexerInterface!5547 0))(
  ( (LexerInterfaceExt!5544 (__x!24594 Int)) (Lexer!5545) )
))
(declare-fun thiss!25322 () LexerInterface!5547)

(declare-fun maxPrefix!3069 (LexerInterface!5547 List!39386 List!39385) Option!8492)

(assert (=> b!3697331 (= lt!1294051 (maxPrefix!3069 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3697332 () Bool)

(declare-fun res!1503631 () Bool)

(declare-fun e!2289757 () Bool)

(assert (=> b!3697332 (=> (not res!1503631) (not e!2289757))))

(assert (=> b!3697332 (= res!1503631 (= (h!44682 rules!3598) (rule!8816 token!544)))))

(declare-fun b!3697333 () Bool)

(declare-fun tp!1123876 () Bool)

(declare-fun e!2289754 () Bool)

(declare-fun e!2289756 () Bool)

(declare-fun inv!52758 (String!44274) Bool)

(declare-fun inv!52761 (TokenValueInjection!11804) Bool)

(assert (=> b!3697333 (= e!2289756 (and tp!1123876 (inv!52758 (tag!6788 (rule!8816 token!544))) (inv!52761 (transformation!5958 (rule!8816 token!544))) e!2289754))))

(declare-fun b!3697334 () Bool)

(declare-fun e!2289764 () Bool)

(declare-fun tp_is_empty!18509 () Bool)

(declare-fun tp!1123875 () Bool)

(assert (=> b!3697334 (= e!2289764 (and tp_is_empty!18509 tp!1123875))))

(declare-fun tp!1123880 () Bool)

(declare-fun e!2289761 () Bool)

(declare-fun b!3697335 () Bool)

(declare-fun inv!21 (TokenValue!6188) Bool)

(assert (=> b!3697335 (= e!2289761 (and (inv!21 (value!190257 token!544)) e!2289756 tp!1123880))))

(declare-fun b!3697336 () Bool)

(declare-fun res!1503630 () Bool)

(assert (=> b!3697336 (=> (not res!1503630) (not e!2289752))))

(declare-fun rulesInvariant!4944 (LexerInterface!5547 List!39386) Bool)

(assert (=> b!3697336 (= res!1503630 (rulesInvariant!4944 thiss!25322 rules!3598))))

(declare-fun b!3697337 () Bool)

(declare-fun res!1503627 () Bool)

(assert (=> b!3697337 (=> (not res!1503627) (not e!2289757))))

(declare-fun lt!1294052 () Option!8492)

(assert (=> b!3697337 (= res!1503627 (= (_1!22700 (get!13058 lt!1294052)) token!544))))

(declare-fun b!3697338 () Bool)

(declare-fun res!1503633 () Bool)

(assert (=> b!3697338 (=> (not res!1503633) (not e!2289752))))

(declare-fun isEmpty!23394 (List!39386) Bool)

(assert (=> b!3697338 (= res!1503633 (not (isEmpty!23394 rules!3598)))))

(declare-fun b!3697339 () Bool)

(assert (=> b!3697339 (= e!2289759 e!2289757)))

(declare-fun res!1503629 () Bool)

(assert (=> b!3697339 (=> (not res!1503629) (not e!2289757))))

(assert (=> b!3697339 (= res!1503629 (isDefined!6681 lt!1294052))))

(declare-fun maxPrefixOneRule!2179 (LexerInterface!5547 Rule!11716 List!39385) Option!8492)

(assert (=> b!3697339 (= lt!1294052 (maxPrefixOneRule!2179 thiss!25322 (h!44682 rules!3598) input!3172))))

(declare-fun b!3697340 () Bool)

(declare-fun tp!1123879 () Bool)

(assert (=> b!3697340 (= e!2289763 (and tp!1123879 (inv!52758 (tag!6788 (h!44682 rules!3598))) (inv!52761 (transformation!5958 (h!44682 rules!3598))) e!2289762))))

(declare-fun res!1503635 () Bool)

(assert (=> start!348198 (=> (not res!1503635) (not e!2289752))))

(assert (=> start!348198 (= res!1503635 ((_ is Lexer!5545) thiss!25322))))

(assert (=> start!348198 e!2289752))

(assert (=> start!348198 true))

(assert (=> start!348198 e!2289758))

(declare-fun inv!52762 (Token!11270) Bool)

(assert (=> start!348198 (and (inv!52762 token!544) e!2289761)))

(assert (=> start!348198 e!2289764))

(declare-fun b!3697341 () Bool)

(declare-fun matchR!5254 (Regex!10717 List!39385) Bool)

(declare-fun list!14667 (BalanceConc!23724) List!39385)

(declare-fun charsOf!3951 (Token!11270) BalanceConc!23724)

(assert (=> b!3697341 (= e!2289757 (not (matchR!5254 (regex!5958 (h!44682 rules!3598)) (list!14667 (charsOf!3951 token!544)))))))

(assert (=> b!3697342 (= e!2289754 (and tp!1123877 tp!1123872))))

(assert (= (and start!348198 res!1503635) b!3697336))

(assert (= (and b!3697336 res!1503630) b!3697338))

(assert (= (and b!3697338 res!1503633) b!3697331))

(assert (= (and b!3697331 res!1503628) b!3697330))

(assert (= (and b!3697330 res!1503634) b!3697327))

(assert (= (and b!3697327 res!1503632) b!3697339))

(assert (= (and b!3697339 res!1503629) b!3697337))

(assert (= (and b!3697337 res!1503627) b!3697332))

(assert (= (and b!3697332 res!1503631) b!3697341))

(assert (= b!3697340 b!3697329))

(assert (= b!3697328 b!3697340))

(assert (= (and start!348198 ((_ is Cons!39262) rules!3598)) b!3697328))

(assert (= b!3697333 b!3697342))

(assert (= b!3697335 b!3697333))

(assert (= start!348198 b!3697335))

(assert (= (and start!348198 ((_ is Cons!39261) input!3172)) b!3697334))

(declare-fun m!4208815 () Bool)

(assert (=> b!3697340 m!4208815))

(declare-fun m!4208817 () Bool)

(assert (=> b!3697340 m!4208817))

(declare-fun m!4208819 () Bool)

(assert (=> b!3697333 m!4208819))

(declare-fun m!4208821 () Bool)

(assert (=> b!3697333 m!4208821))

(declare-fun m!4208823 () Bool)

(assert (=> b!3697339 m!4208823))

(declare-fun m!4208825 () Bool)

(assert (=> b!3697339 m!4208825))

(declare-fun m!4208827 () Bool)

(assert (=> b!3697341 m!4208827))

(assert (=> b!3697341 m!4208827))

(declare-fun m!4208829 () Bool)

(assert (=> b!3697341 m!4208829))

(assert (=> b!3697341 m!4208829))

(declare-fun m!4208831 () Bool)

(assert (=> b!3697341 m!4208831))

(declare-fun m!4208833 () Bool)

(assert (=> b!3697331 m!4208833))

(declare-fun m!4208835 () Bool)

(assert (=> b!3697331 m!4208835))

(declare-fun m!4208837 () Bool)

(assert (=> b!3697330 m!4208837))

(declare-fun m!4208839 () Bool)

(assert (=> b!3697335 m!4208839))

(declare-fun m!4208841 () Bool)

(assert (=> start!348198 m!4208841))

(declare-fun m!4208843 () Bool)

(assert (=> b!3697337 m!4208843))

(declare-fun m!4208845 () Bool)

(assert (=> b!3697338 m!4208845))

(declare-fun m!4208847 () Bool)

(assert (=> b!3697336 m!4208847))

(check-sat (not b_next!99123) (not b!3697340) (not b!3697336) (not b_next!99125) (not b!3697335) (not b!3697341) b_and!276385 (not b!3697334) (not b_next!99127) (not b!3697333) (not b!3697331) b_and!276381 (not start!348198) tp_is_empty!18509 b_and!276379 (not b!3697339) (not b_next!99121) (not b!3697328) (not b!3697330) (not b!3697338) b_and!276383 (not b!3697337))
(check-sat (not b_next!99123) (not b_next!99125) b_and!276379 b_and!276385 (not b_next!99121) (not b_next!99127) b_and!276381 b_and!276383)
(get-model)

(declare-fun d!1084378 () Bool)

(assert (=> d!1084378 (= (isEmpty!23394 rules!3598) ((_ is Nil!39262) rules!3598))))

(assert (=> b!3697338 d!1084378))

(declare-fun d!1084380 () Bool)

(assert (=> d!1084380 (= (inv!52758 (tag!6788 (rule!8816 token!544))) (= (mod (str.len (value!190256 (tag!6788 (rule!8816 token!544)))) 2) 0))))

(assert (=> b!3697333 d!1084380))

(declare-fun d!1084382 () Bool)

(declare-fun res!1503659 () Bool)

(declare-fun e!2289781 () Bool)

(assert (=> d!1084382 (=> (not res!1503659) (not e!2289781))))

(declare-fun semiInverseModEq!2542 (Int Int) Bool)

(assert (=> d!1084382 (= res!1503659 (semiInverseModEq!2542 (toChars!8149 (transformation!5958 (rule!8816 token!544))) (toValue!8290 (transformation!5958 (rule!8816 token!544)))))))

(assert (=> d!1084382 (= (inv!52761 (transformation!5958 (rule!8816 token!544))) e!2289781)))

(declare-fun b!3697373 () Bool)

(declare-fun equivClasses!2441 (Int Int) Bool)

(assert (=> b!3697373 (= e!2289781 (equivClasses!2441 (toChars!8149 (transformation!5958 (rule!8816 token!544))) (toValue!8290 (transformation!5958 (rule!8816 token!544)))))))

(assert (= (and d!1084382 res!1503659) b!3697373))

(declare-fun m!4208849 () Bool)

(assert (=> d!1084382 m!4208849))

(declare-fun m!4208851 () Bool)

(assert (=> b!3697373 m!4208851))

(assert (=> b!3697333 d!1084382))

(declare-fun d!1084384 () Bool)

(declare-fun isEmpty!23397 (Option!8492) Bool)

(assert (=> d!1084384 (= (isDefined!6681 lt!1294051) (not (isEmpty!23397 lt!1294051)))))

(declare-fun bs!574312 () Bool)

(assert (= bs!574312 d!1084384))

(declare-fun m!4208853 () Bool)

(assert (=> bs!574312 m!4208853))

(assert (=> b!3697331 d!1084384))

(declare-fun b!3697466 () Bool)

(declare-fun res!1503721 () Bool)

(declare-fun e!2289826 () Bool)

(assert (=> b!3697466 (=> (not res!1503721) (not e!2289826))))

(declare-fun lt!1294087 () Option!8492)

(declare-fun ++!9754 (List!39385 List!39385) List!39385)

(assert (=> b!3697466 (= res!1503721 (= (++!9754 (list!14667 (charsOf!3951 (_1!22700 (get!13058 lt!1294087)))) (_2!22700 (get!13058 lt!1294087))) input!3172))))

(declare-fun b!3697467 () Bool)

(declare-fun res!1503723 () Bool)

(assert (=> b!3697467 (=> (not res!1503723) (not e!2289826))))

(declare-fun apply!9394 (TokenValueInjection!11804 BalanceConc!23724) TokenValue!6188)

(declare-fun seqFromList!4473 (List!39385) BalanceConc!23724)

(assert (=> b!3697467 (= res!1503723 (= (value!190257 (_1!22700 (get!13058 lt!1294087))) (apply!9394 (transformation!5958 (rule!8816 (_1!22700 (get!13058 lt!1294087)))) (seqFromList!4473 (originalCharacters!6666 (_1!22700 (get!13058 lt!1294087)))))))))

(declare-fun bm!267198 () Bool)

(declare-fun call!267203 () Option!8492)

(assert (=> bm!267198 (= call!267203 (maxPrefixOneRule!2179 thiss!25322 (h!44682 rules!3598) input!3172))))

(declare-fun b!3697468 () Bool)

(declare-fun e!2289828 () Option!8492)

(declare-fun lt!1294084 () Option!8492)

(declare-fun lt!1294088 () Option!8492)

(assert (=> b!3697468 (= e!2289828 (ite (and ((_ is None!8491) lt!1294084) ((_ is None!8491) lt!1294088)) None!8491 (ite ((_ is None!8491) lt!1294088) lt!1294084 (ite ((_ is None!8491) lt!1294084) lt!1294088 (ite (>= (size!29946 (_1!22700 (v!38449 lt!1294084))) (size!29946 (_1!22700 (v!38449 lt!1294088)))) lt!1294084 lt!1294088)))))))

(assert (=> b!3697468 (= lt!1294084 call!267203)))

(assert (=> b!3697468 (= lt!1294088 (maxPrefix!3069 thiss!25322 (t!301757 rules!3598) input!3172))))

(declare-fun d!1084386 () Bool)

(declare-fun e!2289827 () Bool)

(assert (=> d!1084386 e!2289827))

(declare-fun res!1503720 () Bool)

(assert (=> d!1084386 (=> res!1503720 e!2289827)))

(assert (=> d!1084386 (= res!1503720 (isEmpty!23397 lt!1294087))))

(assert (=> d!1084386 (= lt!1294087 e!2289828)))

(declare-fun c!639044 () Bool)

(assert (=> d!1084386 (= c!639044 (and ((_ is Cons!39262) rules!3598) ((_ is Nil!39262) (t!301757 rules!3598))))))

(declare-datatypes ((Unit!57238 0))(
  ( (Unit!57239) )
))
(declare-fun lt!1294086 () Unit!57238)

(declare-fun lt!1294085 () Unit!57238)

(assert (=> d!1084386 (= lt!1294086 lt!1294085)))

(declare-fun isPrefix!3275 (List!39385 List!39385) Bool)

(assert (=> d!1084386 (isPrefix!3275 input!3172 input!3172)))

(declare-fun lemmaIsPrefixRefl!2060 (List!39385 List!39385) Unit!57238)

(assert (=> d!1084386 (= lt!1294085 (lemmaIsPrefixRefl!2060 input!3172 input!3172))))

(declare-fun rulesValidInductive!2141 (LexerInterface!5547 List!39386) Bool)

(assert (=> d!1084386 (rulesValidInductive!2141 thiss!25322 rules!3598)))

(assert (=> d!1084386 (= (maxPrefix!3069 thiss!25322 rules!3598 input!3172) lt!1294087)))

(declare-fun b!3697469 () Bool)

(declare-fun contains!7827 (List!39386 Rule!11716) Bool)

(assert (=> b!3697469 (= e!2289826 (contains!7827 rules!3598 (rule!8816 (_1!22700 (get!13058 lt!1294087)))))))

(declare-fun b!3697470 () Bool)

(declare-fun res!1503725 () Bool)

(assert (=> b!3697470 (=> (not res!1503725) (not e!2289826))))

(assert (=> b!3697470 (= res!1503725 (= (list!14667 (charsOf!3951 (_1!22700 (get!13058 lt!1294087)))) (originalCharacters!6666 (_1!22700 (get!13058 lt!1294087)))))))

(declare-fun b!3697471 () Bool)

(assert (=> b!3697471 (= e!2289828 call!267203)))

(declare-fun b!3697472 () Bool)

(assert (=> b!3697472 (= e!2289827 e!2289826)))

(declare-fun res!1503722 () Bool)

(assert (=> b!3697472 (=> (not res!1503722) (not e!2289826))))

(assert (=> b!3697472 (= res!1503722 (isDefined!6681 lt!1294087))))

(declare-fun b!3697473 () Bool)

(declare-fun res!1503719 () Bool)

(assert (=> b!3697473 (=> (not res!1503719) (not e!2289826))))

(assert (=> b!3697473 (= res!1503719 (matchR!5254 (regex!5958 (rule!8816 (_1!22700 (get!13058 lt!1294087)))) (list!14667 (charsOf!3951 (_1!22700 (get!13058 lt!1294087))))))))

(declare-fun b!3697474 () Bool)

(declare-fun res!1503724 () Bool)

(assert (=> b!3697474 (=> (not res!1503724) (not e!2289826))))

(declare-fun size!29949 (List!39385) Int)

(assert (=> b!3697474 (= res!1503724 (< (size!29949 (_2!22700 (get!13058 lt!1294087))) (size!29949 input!3172)))))

(assert (= (and d!1084386 c!639044) b!3697471))

(assert (= (and d!1084386 (not c!639044)) b!3697468))

(assert (= (or b!3697471 b!3697468) bm!267198))

(assert (= (and d!1084386 (not res!1503720)) b!3697472))

(assert (= (and b!3697472 res!1503722) b!3697470))

(assert (= (and b!3697470 res!1503725) b!3697474))

(assert (= (and b!3697474 res!1503724) b!3697466))

(assert (= (and b!3697466 res!1503721) b!3697467))

(assert (= (and b!3697467 res!1503723) b!3697473))

(assert (= (and b!3697473 res!1503719) b!3697469))

(declare-fun m!4208941 () Bool)

(assert (=> b!3697472 m!4208941))

(declare-fun m!4208943 () Bool)

(assert (=> b!3697470 m!4208943))

(declare-fun m!4208945 () Bool)

(assert (=> b!3697470 m!4208945))

(assert (=> b!3697470 m!4208945))

(declare-fun m!4208947 () Bool)

(assert (=> b!3697470 m!4208947))

(assert (=> b!3697466 m!4208943))

(assert (=> b!3697466 m!4208945))

(assert (=> b!3697466 m!4208945))

(assert (=> b!3697466 m!4208947))

(assert (=> b!3697466 m!4208947))

(declare-fun m!4208949 () Bool)

(assert (=> b!3697466 m!4208949))

(assert (=> b!3697473 m!4208943))

(assert (=> b!3697473 m!4208945))

(assert (=> b!3697473 m!4208945))

(assert (=> b!3697473 m!4208947))

(assert (=> b!3697473 m!4208947))

(declare-fun m!4208951 () Bool)

(assert (=> b!3697473 m!4208951))

(assert (=> b!3697469 m!4208943))

(declare-fun m!4208953 () Bool)

(assert (=> b!3697469 m!4208953))

(assert (=> b!3697474 m!4208943))

(declare-fun m!4208955 () Bool)

(assert (=> b!3697474 m!4208955))

(declare-fun m!4208957 () Bool)

(assert (=> b!3697474 m!4208957))

(declare-fun m!4208959 () Bool)

(assert (=> d!1084386 m!4208959))

(declare-fun m!4208961 () Bool)

(assert (=> d!1084386 m!4208961))

(declare-fun m!4208963 () Bool)

(assert (=> d!1084386 m!4208963))

(declare-fun m!4208965 () Bool)

(assert (=> d!1084386 m!4208965))

(assert (=> b!3697467 m!4208943))

(declare-fun m!4208967 () Bool)

(assert (=> b!3697467 m!4208967))

(assert (=> b!3697467 m!4208967))

(declare-fun m!4208969 () Bool)

(assert (=> b!3697467 m!4208969))

(declare-fun m!4208971 () Bool)

(assert (=> b!3697468 m!4208971))

(assert (=> bm!267198 m!4208825))

(assert (=> b!3697331 d!1084386))

(declare-fun d!1084418 () Bool)

(assert (=> d!1084418 (= (get!13058 lt!1294052) (v!38449 lt!1294052))))

(assert (=> b!3697337 d!1084418))

(declare-fun d!1084420 () Bool)

(declare-fun c!639049 () Bool)

(assert (=> d!1084420 (= c!639049 ((_ is IntegerValue!18564) (value!190257 token!544)))))

(declare-fun e!2289836 () Bool)

(assert (=> d!1084420 (= (inv!21 (value!190257 token!544)) e!2289836)))

(declare-fun b!3697485 () Bool)

(declare-fun inv!16 (TokenValue!6188) Bool)

(assert (=> b!3697485 (= e!2289836 (inv!16 (value!190257 token!544)))))

(declare-fun b!3697486 () Bool)

(declare-fun res!1503728 () Bool)

(declare-fun e!2289835 () Bool)

(assert (=> b!3697486 (=> res!1503728 e!2289835)))

(assert (=> b!3697486 (= res!1503728 (not ((_ is IntegerValue!18566) (value!190257 token!544))))))

(declare-fun e!2289837 () Bool)

(assert (=> b!3697486 (= e!2289837 e!2289835)))

(declare-fun b!3697487 () Bool)

(assert (=> b!3697487 (= e!2289836 e!2289837)))

(declare-fun c!639050 () Bool)

(assert (=> b!3697487 (= c!639050 ((_ is IntegerValue!18565) (value!190257 token!544)))))

(declare-fun b!3697488 () Bool)

(declare-fun inv!15 (TokenValue!6188) Bool)

(assert (=> b!3697488 (= e!2289835 (inv!15 (value!190257 token!544)))))

(declare-fun b!3697489 () Bool)

(declare-fun inv!17 (TokenValue!6188) Bool)

(assert (=> b!3697489 (= e!2289837 (inv!17 (value!190257 token!544)))))

(assert (= (and d!1084420 c!639049) b!3697485))

(assert (= (and d!1084420 (not c!639049)) b!3697487))

(assert (= (and b!3697487 c!639050) b!3697489))

(assert (= (and b!3697487 (not c!639050)) b!3697486))

(assert (= (and b!3697486 (not res!1503728)) b!3697488))

(declare-fun m!4208973 () Bool)

(assert (=> b!3697485 m!4208973))

(declare-fun m!4208975 () Bool)

(assert (=> b!3697488 m!4208975))

(declare-fun m!4208977 () Bool)

(assert (=> b!3697489 m!4208977))

(assert (=> b!3697335 d!1084420))

(declare-fun d!1084422 () Bool)

(assert (=> d!1084422 (= (get!13058 lt!1294051) (v!38449 lt!1294051))))

(assert (=> b!3697330 d!1084422))

(declare-fun b!3697518 () Bool)

(declare-fun res!1503748 () Bool)

(declare-fun e!2289858 () Bool)

(assert (=> b!3697518 (=> res!1503748 e!2289858)))

(declare-fun isEmpty!23398 (List!39385) Bool)

(declare-fun tail!5728 (List!39385) List!39385)

(assert (=> b!3697518 (= res!1503748 (not (isEmpty!23398 (tail!5728 (list!14667 (charsOf!3951 token!544))))))))

(declare-fun b!3697519 () Bool)

(declare-fun res!1503749 () Bool)

(declare-fun e!2289855 () Bool)

(assert (=> b!3697519 (=> res!1503749 e!2289855)))

(declare-fun e!2289854 () Bool)

(assert (=> b!3697519 (= res!1503749 e!2289854)))

(declare-fun res!1503750 () Bool)

(assert (=> b!3697519 (=> (not res!1503750) (not e!2289854))))

(declare-fun lt!1294091 () Bool)

(assert (=> b!3697519 (= res!1503750 lt!1294091)))

(declare-fun b!3697520 () Bool)

(declare-fun e!2289852 () Bool)

(assert (=> b!3697520 (= e!2289852 (not lt!1294091))))

(declare-fun b!3697521 () Bool)

(declare-fun res!1503751 () Bool)

(assert (=> b!3697521 (=> (not res!1503751) (not e!2289854))))

(assert (=> b!3697521 (= res!1503751 (isEmpty!23398 (tail!5728 (list!14667 (charsOf!3951 token!544)))))))

(declare-fun b!3697522 () Bool)

(declare-fun head!7991 (List!39385) C!21620)

(assert (=> b!3697522 (= e!2289858 (not (= (head!7991 (list!14667 (charsOf!3951 token!544))) (c!639022 (regex!5958 (h!44682 rules!3598))))))))

(declare-fun b!3697523 () Bool)

(declare-fun e!2289853 () Bool)

(assert (=> b!3697523 (= e!2289855 e!2289853)))

(declare-fun res!1503752 () Bool)

(assert (=> b!3697523 (=> (not res!1503752) (not e!2289853))))

(assert (=> b!3697523 (= res!1503752 (not lt!1294091))))

(declare-fun bm!267201 () Bool)

(declare-fun call!267206 () Bool)

(assert (=> bm!267201 (= call!267206 (isEmpty!23398 (list!14667 (charsOf!3951 token!544))))))

(declare-fun b!3697524 () Bool)

(assert (=> b!3697524 (= e!2289853 e!2289858)))

(declare-fun res!1503746 () Bool)

(assert (=> b!3697524 (=> res!1503746 e!2289858)))

(assert (=> b!3697524 (= res!1503746 call!267206)))

(declare-fun b!3697525 () Bool)

(declare-fun e!2289856 () Bool)

(assert (=> b!3697525 (= e!2289856 (= lt!1294091 call!267206))))

(declare-fun b!3697526 () Bool)

(declare-fun e!2289857 () Bool)

(declare-fun nullable!3736 (Regex!10717) Bool)

(assert (=> b!3697526 (= e!2289857 (nullable!3736 (regex!5958 (h!44682 rules!3598))))))

(declare-fun b!3697527 () Bool)

(assert (=> b!3697527 (= e!2289854 (= (head!7991 (list!14667 (charsOf!3951 token!544))) (c!639022 (regex!5958 (h!44682 rules!3598)))))))

(declare-fun d!1084424 () Bool)

(assert (=> d!1084424 e!2289856))

(declare-fun c!639059 () Bool)

(assert (=> d!1084424 (= c!639059 ((_ is EmptyExpr!10717) (regex!5958 (h!44682 rules!3598))))))

(assert (=> d!1084424 (= lt!1294091 e!2289857)))

(declare-fun c!639057 () Bool)

(assert (=> d!1084424 (= c!639057 (isEmpty!23398 (list!14667 (charsOf!3951 token!544))))))

(declare-fun validRegex!4900 (Regex!10717) Bool)

(assert (=> d!1084424 (validRegex!4900 (regex!5958 (h!44682 rules!3598)))))

(assert (=> d!1084424 (= (matchR!5254 (regex!5958 (h!44682 rules!3598)) (list!14667 (charsOf!3951 token!544))) lt!1294091)))

(declare-fun b!3697528 () Bool)

(declare-fun res!1503745 () Bool)

(assert (=> b!3697528 (=> (not res!1503745) (not e!2289854))))

(assert (=> b!3697528 (= res!1503745 (not call!267206))))

(declare-fun b!3697529 () Bool)

(declare-fun res!1503747 () Bool)

(assert (=> b!3697529 (=> res!1503747 e!2289855)))

(assert (=> b!3697529 (= res!1503747 (not ((_ is ElementMatch!10717) (regex!5958 (h!44682 rules!3598)))))))

(assert (=> b!3697529 (= e!2289852 e!2289855)))

(declare-fun b!3697530 () Bool)

(assert (=> b!3697530 (= e!2289856 e!2289852)))

(declare-fun c!639058 () Bool)

(assert (=> b!3697530 (= c!639058 ((_ is EmptyLang!10717) (regex!5958 (h!44682 rules!3598))))))

(declare-fun b!3697531 () Bool)

(declare-fun derivativeStep!3278 (Regex!10717 C!21620) Regex!10717)

(assert (=> b!3697531 (= e!2289857 (matchR!5254 (derivativeStep!3278 (regex!5958 (h!44682 rules!3598)) (head!7991 (list!14667 (charsOf!3951 token!544)))) (tail!5728 (list!14667 (charsOf!3951 token!544)))))))

(assert (= (and d!1084424 c!639057) b!3697526))

(assert (= (and d!1084424 (not c!639057)) b!3697531))

(assert (= (and d!1084424 c!639059) b!3697525))

(assert (= (and d!1084424 (not c!639059)) b!3697530))

(assert (= (and b!3697530 c!639058) b!3697520))

(assert (= (and b!3697530 (not c!639058)) b!3697529))

(assert (= (and b!3697529 (not res!1503747)) b!3697519))

(assert (= (and b!3697519 res!1503750) b!3697528))

(assert (= (and b!3697528 res!1503745) b!3697521))

(assert (= (and b!3697521 res!1503751) b!3697527))

(assert (= (and b!3697519 (not res!1503749)) b!3697523))

(assert (= (and b!3697523 res!1503752) b!3697524))

(assert (= (and b!3697524 (not res!1503746)) b!3697518))

(assert (= (and b!3697518 (not res!1503748)) b!3697522))

(assert (= (or b!3697525 b!3697524 b!3697528) bm!267201))

(assert (=> b!3697527 m!4208829))

(declare-fun m!4208979 () Bool)

(assert (=> b!3697527 m!4208979))

(assert (=> b!3697531 m!4208829))

(assert (=> b!3697531 m!4208979))

(assert (=> b!3697531 m!4208979))

(declare-fun m!4208981 () Bool)

(assert (=> b!3697531 m!4208981))

(assert (=> b!3697531 m!4208829))

(declare-fun m!4208983 () Bool)

(assert (=> b!3697531 m!4208983))

(assert (=> b!3697531 m!4208981))

(assert (=> b!3697531 m!4208983))

(declare-fun m!4208985 () Bool)

(assert (=> b!3697531 m!4208985))

(assert (=> d!1084424 m!4208829))

(declare-fun m!4208987 () Bool)

(assert (=> d!1084424 m!4208987))

(declare-fun m!4208989 () Bool)

(assert (=> d!1084424 m!4208989))

(assert (=> b!3697521 m!4208829))

(assert (=> b!3697521 m!4208983))

(assert (=> b!3697521 m!4208983))

(declare-fun m!4208991 () Bool)

(assert (=> b!3697521 m!4208991))

(assert (=> b!3697522 m!4208829))

(assert (=> b!3697522 m!4208979))

(declare-fun m!4208993 () Bool)

(assert (=> b!3697526 m!4208993))

(assert (=> b!3697518 m!4208829))

(assert (=> b!3697518 m!4208983))

(assert (=> b!3697518 m!4208983))

(assert (=> b!3697518 m!4208991))

(assert (=> bm!267201 m!4208829))

(assert (=> bm!267201 m!4208987))

(assert (=> b!3697341 d!1084424))

(declare-fun d!1084426 () Bool)

(declare-fun list!14669 (Conc!12055) List!39385)

(assert (=> d!1084426 (= (list!14667 (charsOf!3951 token!544)) (list!14669 (c!639023 (charsOf!3951 token!544))))))

(declare-fun bs!574316 () Bool)

(assert (= bs!574316 d!1084426))

(declare-fun m!4208995 () Bool)

(assert (=> bs!574316 m!4208995))

(assert (=> b!3697341 d!1084426))

(declare-fun d!1084428 () Bool)

(declare-fun lt!1294094 () BalanceConc!23724)

(assert (=> d!1084428 (= (list!14667 lt!1294094) (originalCharacters!6666 token!544))))

(declare-fun dynLambda!17162 (Int TokenValue!6188) BalanceConc!23724)

(assert (=> d!1084428 (= lt!1294094 (dynLambda!17162 (toChars!8149 (transformation!5958 (rule!8816 token!544))) (value!190257 token!544)))))

(assert (=> d!1084428 (= (charsOf!3951 token!544) lt!1294094)))

(declare-fun b_lambda!109663 () Bool)

(assert (=> (not b_lambda!109663) (not d!1084428)))

(declare-fun t!301763 () Bool)

(declare-fun tb!214093 () Bool)

(assert (=> (and b!3697329 (= (toChars!8149 (transformation!5958 (h!44682 rules!3598))) (toChars!8149 (transformation!5958 (rule!8816 token!544)))) t!301763) tb!214093))

(declare-fun b!3697536 () Bool)

(declare-fun e!2289861 () Bool)

(declare-fun tp!1123886 () Bool)

(declare-fun inv!52765 (Conc!12055) Bool)

(assert (=> b!3697536 (= e!2289861 (and (inv!52765 (c!639023 (dynLambda!17162 (toChars!8149 (transformation!5958 (rule!8816 token!544))) (value!190257 token!544)))) tp!1123886))))

(declare-fun result!260784 () Bool)

(declare-fun inv!52766 (BalanceConc!23724) Bool)

(assert (=> tb!214093 (= result!260784 (and (inv!52766 (dynLambda!17162 (toChars!8149 (transformation!5958 (rule!8816 token!544))) (value!190257 token!544))) e!2289861))))

(assert (= tb!214093 b!3697536))

(declare-fun m!4208997 () Bool)

(assert (=> b!3697536 m!4208997))

(declare-fun m!4208999 () Bool)

(assert (=> tb!214093 m!4208999))

(assert (=> d!1084428 t!301763))

(declare-fun b_and!276395 () Bool)

(assert (= b_and!276381 (and (=> t!301763 result!260784) b_and!276395)))

(declare-fun t!301765 () Bool)

(declare-fun tb!214095 () Bool)

(assert (=> (and b!3697342 (= (toChars!8149 (transformation!5958 (rule!8816 token!544))) (toChars!8149 (transformation!5958 (rule!8816 token!544)))) t!301765) tb!214095))

(declare-fun result!260788 () Bool)

(assert (= result!260788 result!260784))

(assert (=> d!1084428 t!301765))

(declare-fun b_and!276397 () Bool)

(assert (= b_and!276385 (and (=> t!301765 result!260788) b_and!276397)))

(declare-fun m!4209001 () Bool)

(assert (=> d!1084428 m!4209001))

(declare-fun m!4209003 () Bool)

(assert (=> d!1084428 m!4209003))

(assert (=> b!3697341 d!1084428))

(declare-fun d!1084430 () Bool)

(declare-fun res!1503769 () Bool)

(declare-fun e!2289872 () Bool)

(assert (=> d!1084430 (=> (not res!1503769) (not e!2289872))))

(declare-fun rulesValid!2299 (LexerInterface!5547 List!39386) Bool)

(assert (=> d!1084430 (= res!1503769 (rulesValid!2299 thiss!25322 rules!3598))))

(assert (=> d!1084430 (= (rulesInvariant!4944 thiss!25322 rules!3598) e!2289872)))

(declare-fun b!3697557 () Bool)

(declare-datatypes ((List!39388 0))(
  ( (Nil!39264) (Cons!39264 (h!44684 String!44274) (t!301771 List!39388)) )
))
(declare-fun noDuplicateTag!2295 (LexerInterface!5547 List!39386 List!39388) Bool)

(assert (=> b!3697557 (= e!2289872 (noDuplicateTag!2295 thiss!25322 rules!3598 Nil!39264))))

(assert (= (and d!1084430 res!1503769) b!3697557))

(declare-fun m!4209005 () Bool)

(assert (=> d!1084430 m!4209005))

(declare-fun m!4209007 () Bool)

(assert (=> b!3697557 m!4209007))

(assert (=> b!3697336 d!1084430))

(declare-fun d!1084432 () Bool)

(declare-fun res!1503774 () Bool)

(declare-fun e!2289875 () Bool)

(assert (=> d!1084432 (=> (not res!1503774) (not e!2289875))))

(assert (=> d!1084432 (= res!1503774 (not (isEmpty!23398 (originalCharacters!6666 token!544))))))

(assert (=> d!1084432 (= (inv!52762 token!544) e!2289875)))

(declare-fun b!3697562 () Bool)

(declare-fun res!1503775 () Bool)

(assert (=> b!3697562 (=> (not res!1503775) (not e!2289875))))

(assert (=> b!3697562 (= res!1503775 (= (originalCharacters!6666 token!544) (list!14667 (dynLambda!17162 (toChars!8149 (transformation!5958 (rule!8816 token!544))) (value!190257 token!544)))))))

(declare-fun b!3697563 () Bool)

(assert (=> b!3697563 (= e!2289875 (= (size!29946 token!544) (size!29949 (originalCharacters!6666 token!544))))))

(assert (= (and d!1084432 res!1503774) b!3697562))

(assert (= (and b!3697562 res!1503775) b!3697563))

(declare-fun b_lambda!109665 () Bool)

(assert (=> (not b_lambda!109665) (not b!3697562)))

(assert (=> b!3697562 t!301763))

(declare-fun b_and!276399 () Bool)

(assert (= b_and!276395 (and (=> t!301763 result!260784) b_and!276399)))

(assert (=> b!3697562 t!301765))

(declare-fun b_and!276401 () Bool)

(assert (= b_and!276397 (and (=> t!301765 result!260788) b_and!276401)))

(declare-fun m!4209009 () Bool)

(assert (=> d!1084432 m!4209009))

(assert (=> b!3697562 m!4209003))

(assert (=> b!3697562 m!4209003))

(declare-fun m!4209011 () Bool)

(assert (=> b!3697562 m!4209011))

(declare-fun m!4209013 () Bool)

(assert (=> b!3697563 m!4209013))

(assert (=> start!348198 d!1084432))

(declare-fun d!1084434 () Bool)

(assert (=> d!1084434 (= (isDefined!6681 lt!1294052) (not (isEmpty!23397 lt!1294052)))))

(declare-fun bs!574317 () Bool)

(assert (= bs!574317 d!1084434))

(declare-fun m!4209015 () Bool)

(assert (=> bs!574317 m!4209015))

(assert (=> b!3697339 d!1084434))

(declare-fun d!1084436 () Bool)

(declare-fun e!2289909 () Bool)

(assert (=> d!1084436 e!2289909))

(declare-fun res!1503799 () Bool)

(assert (=> d!1084436 (=> res!1503799 e!2289909)))

(declare-fun lt!1294124 () Option!8492)

(assert (=> d!1084436 (= res!1503799 (isEmpty!23397 lt!1294124))))

(declare-fun e!2289911 () Option!8492)

(assert (=> d!1084436 (= lt!1294124 e!2289911)))

(declare-fun c!639065 () Bool)

(declare-datatypes ((tuple2!39136 0))(
  ( (tuple2!39137 (_1!22702 List!39385) (_2!22702 List!39385)) )
))
(declare-fun lt!1294122 () tuple2!39136)

(assert (=> d!1084436 (= c!639065 (isEmpty!23398 (_1!22702 lt!1294122)))))

(declare-fun findLongestMatch!1031 (Regex!10717 List!39385) tuple2!39136)

(assert (=> d!1084436 (= lt!1294122 (findLongestMatch!1031 (regex!5958 (h!44682 rules!3598)) input!3172))))

(declare-fun ruleValid!2154 (LexerInterface!5547 Rule!11716) Bool)

(assert (=> d!1084436 (ruleValid!2154 thiss!25322 (h!44682 rules!3598))))

(assert (=> d!1084436 (= (maxPrefixOneRule!2179 thiss!25322 (h!44682 rules!3598) input!3172) lt!1294124)))

(declare-fun b!3697626 () Bool)

(declare-fun res!1503797 () Bool)

(declare-fun e!2289908 () Bool)

(assert (=> b!3697626 (=> (not res!1503797) (not e!2289908))))

(assert (=> b!3697626 (= res!1503797 (= (++!9754 (list!14667 (charsOf!3951 (_1!22700 (get!13058 lt!1294124)))) (_2!22700 (get!13058 lt!1294124))) input!3172))))

(declare-fun b!3697627 () Bool)

(declare-fun res!1503801 () Bool)

(assert (=> b!3697627 (=> (not res!1503801) (not e!2289908))))

(assert (=> b!3697627 (= res!1503801 (= (value!190257 (_1!22700 (get!13058 lt!1294124))) (apply!9394 (transformation!5958 (rule!8816 (_1!22700 (get!13058 lt!1294124)))) (seqFromList!4473 (originalCharacters!6666 (_1!22700 (get!13058 lt!1294124)))))))))

(declare-fun b!3697628 () Bool)

(declare-fun e!2289910 () Bool)

(declare-fun findLongestMatchInner!1116 (Regex!10717 List!39385 Int List!39385 List!39385 Int) tuple2!39136)

(assert (=> b!3697628 (= e!2289910 (matchR!5254 (regex!5958 (h!44682 rules!3598)) (_1!22702 (findLongestMatchInner!1116 (regex!5958 (h!44682 rules!3598)) Nil!39261 (size!29949 Nil!39261) input!3172 input!3172 (size!29949 input!3172)))))))

(declare-fun b!3697629 () Bool)

(declare-fun res!1503802 () Bool)

(assert (=> b!3697629 (=> (not res!1503802) (not e!2289908))))

(assert (=> b!3697629 (= res!1503802 (< (size!29949 (_2!22700 (get!13058 lt!1294124))) (size!29949 input!3172)))))

(declare-fun b!3697630 () Bool)

(assert (=> b!3697630 (= e!2289911 None!8491)))

(declare-fun b!3697631 () Bool)

(declare-fun res!1503798 () Bool)

(assert (=> b!3697631 (=> (not res!1503798) (not e!2289908))))

(assert (=> b!3697631 (= res!1503798 (= (rule!8816 (_1!22700 (get!13058 lt!1294124))) (h!44682 rules!3598)))))

(declare-fun b!3697632 () Bool)

(declare-fun size!29950 (BalanceConc!23724) Int)

(assert (=> b!3697632 (= e!2289911 (Some!8491 (tuple2!39133 (Token!11271 (apply!9394 (transformation!5958 (h!44682 rules!3598)) (seqFromList!4473 (_1!22702 lt!1294122))) (h!44682 rules!3598) (size!29950 (seqFromList!4473 (_1!22702 lt!1294122))) (_1!22702 lt!1294122)) (_2!22702 lt!1294122))))))

(declare-fun lt!1294121 () Unit!57238)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1089 (Regex!10717 List!39385) Unit!57238)

(assert (=> b!3697632 (= lt!1294121 (longestMatchIsAcceptedByMatchOrIsEmpty!1089 (regex!5958 (h!44682 rules!3598)) input!3172))))

(declare-fun res!1503800 () Bool)

(assert (=> b!3697632 (= res!1503800 (isEmpty!23398 (_1!22702 (findLongestMatchInner!1116 (regex!5958 (h!44682 rules!3598)) Nil!39261 (size!29949 Nil!39261) input!3172 input!3172 (size!29949 input!3172)))))))

(assert (=> b!3697632 (=> res!1503800 e!2289910)))

(assert (=> b!3697632 e!2289910))

(declare-fun lt!1294120 () Unit!57238)

(assert (=> b!3697632 (= lt!1294120 lt!1294121)))

(declare-fun lt!1294123 () Unit!57238)

(declare-fun lemmaSemiInverse!1622 (TokenValueInjection!11804 BalanceConc!23724) Unit!57238)

(assert (=> b!3697632 (= lt!1294123 (lemmaSemiInverse!1622 (transformation!5958 (h!44682 rules!3598)) (seqFromList!4473 (_1!22702 lt!1294122))))))

(declare-fun b!3697633 () Bool)

(assert (=> b!3697633 (= e!2289909 e!2289908)))

(declare-fun res!1503803 () Bool)

(assert (=> b!3697633 (=> (not res!1503803) (not e!2289908))))

(assert (=> b!3697633 (= res!1503803 (matchR!5254 (regex!5958 (h!44682 rules!3598)) (list!14667 (charsOf!3951 (_1!22700 (get!13058 lt!1294124))))))))

(declare-fun b!3697634 () Bool)

(assert (=> b!3697634 (= e!2289908 (= (size!29946 (_1!22700 (get!13058 lt!1294124))) (size!29949 (originalCharacters!6666 (_1!22700 (get!13058 lt!1294124))))))))

(assert (= (and d!1084436 c!639065) b!3697630))

(assert (= (and d!1084436 (not c!639065)) b!3697632))

(assert (= (and b!3697632 (not res!1503800)) b!3697628))

(assert (= (and d!1084436 (not res!1503799)) b!3697633))

(assert (= (and b!3697633 res!1503803) b!3697626))

(assert (= (and b!3697626 res!1503797) b!3697629))

(assert (= (and b!3697629 res!1503802) b!3697631))

(assert (= (and b!3697631 res!1503798) b!3697627))

(assert (= (and b!3697627 res!1503801) b!3697634))

(declare-fun m!4209065 () Bool)

(assert (=> d!1084436 m!4209065))

(declare-fun m!4209067 () Bool)

(assert (=> d!1084436 m!4209067))

(declare-fun m!4209069 () Bool)

(assert (=> d!1084436 m!4209069))

(declare-fun m!4209071 () Bool)

(assert (=> d!1084436 m!4209071))

(declare-fun m!4209073 () Bool)

(assert (=> b!3697629 m!4209073))

(declare-fun m!4209075 () Bool)

(assert (=> b!3697629 m!4209075))

(assert (=> b!3697629 m!4208957))

(assert (=> b!3697633 m!4209073))

(declare-fun m!4209077 () Bool)

(assert (=> b!3697633 m!4209077))

(assert (=> b!3697633 m!4209077))

(declare-fun m!4209079 () Bool)

(assert (=> b!3697633 m!4209079))

(assert (=> b!3697633 m!4209079))

(declare-fun m!4209081 () Bool)

(assert (=> b!3697633 m!4209081))

(assert (=> b!3697631 m!4209073))

(assert (=> b!3697634 m!4209073))

(declare-fun m!4209083 () Bool)

(assert (=> b!3697634 m!4209083))

(declare-fun m!4209085 () Bool)

(assert (=> b!3697628 m!4209085))

(assert (=> b!3697628 m!4208957))

(assert (=> b!3697628 m!4209085))

(assert (=> b!3697628 m!4208957))

(declare-fun m!4209087 () Bool)

(assert (=> b!3697628 m!4209087))

(declare-fun m!4209089 () Bool)

(assert (=> b!3697628 m!4209089))

(assert (=> b!3697627 m!4209073))

(declare-fun m!4209091 () Bool)

(assert (=> b!3697627 m!4209091))

(assert (=> b!3697627 m!4209091))

(declare-fun m!4209093 () Bool)

(assert (=> b!3697627 m!4209093))

(assert (=> b!3697632 m!4208957))

(declare-fun m!4209095 () Bool)

(assert (=> b!3697632 m!4209095))

(declare-fun m!4209097 () Bool)

(assert (=> b!3697632 m!4209097))

(assert (=> b!3697632 m!4209095))

(assert (=> b!3697632 m!4209085))

(assert (=> b!3697632 m!4208957))

(assert (=> b!3697632 m!4209087))

(declare-fun m!4209099 () Bool)

(assert (=> b!3697632 m!4209099))

(assert (=> b!3697632 m!4209095))

(declare-fun m!4209101 () Bool)

(assert (=> b!3697632 m!4209101))

(declare-fun m!4209103 () Bool)

(assert (=> b!3697632 m!4209103))

(assert (=> b!3697632 m!4209095))

(declare-fun m!4209105 () Bool)

(assert (=> b!3697632 m!4209105))

(assert (=> b!3697632 m!4209085))

(assert (=> b!3697626 m!4209073))

(assert (=> b!3697626 m!4209077))

(assert (=> b!3697626 m!4209077))

(assert (=> b!3697626 m!4209079))

(assert (=> b!3697626 m!4209079))

(declare-fun m!4209107 () Bool)

(assert (=> b!3697626 m!4209107))

(assert (=> b!3697339 d!1084436))

(declare-fun d!1084440 () Bool)

(assert (=> d!1084440 (= (inv!52758 (tag!6788 (h!44682 rules!3598))) (= (mod (str.len (value!190256 (tag!6788 (h!44682 rules!3598)))) 2) 0))))

(assert (=> b!3697340 d!1084440))

(declare-fun d!1084442 () Bool)

(declare-fun res!1503804 () Bool)

(declare-fun e!2289912 () Bool)

(assert (=> d!1084442 (=> (not res!1503804) (not e!2289912))))

(assert (=> d!1084442 (= res!1503804 (semiInverseModEq!2542 (toChars!8149 (transformation!5958 (h!44682 rules!3598))) (toValue!8290 (transformation!5958 (h!44682 rules!3598)))))))

(assert (=> d!1084442 (= (inv!52761 (transformation!5958 (h!44682 rules!3598))) e!2289912)))

(declare-fun b!3697635 () Bool)

(assert (=> b!3697635 (= e!2289912 (equivClasses!2441 (toChars!8149 (transformation!5958 (h!44682 rules!3598))) (toValue!8290 (transformation!5958 (h!44682 rules!3598)))))))

(assert (= (and d!1084442 res!1503804) b!3697635))

(declare-fun m!4209109 () Bool)

(assert (=> d!1084442 m!4209109))

(declare-fun m!4209111 () Bool)

(assert (=> b!3697635 m!4209111))

(assert (=> b!3697340 d!1084442))

(declare-fun b!3697648 () Bool)

(declare-fun e!2289915 () Bool)

(declare-fun tp!1123933 () Bool)

(assert (=> b!3697648 (= e!2289915 tp!1123933)))

(assert (=> b!3697333 (= tp!1123876 e!2289915)))

(declare-fun b!3697649 () Bool)

(declare-fun tp!1123934 () Bool)

(declare-fun tp!1123936 () Bool)

(assert (=> b!3697649 (= e!2289915 (and tp!1123934 tp!1123936))))

(declare-fun b!3697646 () Bool)

(assert (=> b!3697646 (= e!2289915 tp_is_empty!18509)))

(declare-fun b!3697647 () Bool)

(declare-fun tp!1123935 () Bool)

(declare-fun tp!1123937 () Bool)

(assert (=> b!3697647 (= e!2289915 (and tp!1123935 tp!1123937))))

(assert (= (and b!3697333 ((_ is ElementMatch!10717) (regex!5958 (rule!8816 token!544)))) b!3697646))

(assert (= (and b!3697333 ((_ is Concat!16906) (regex!5958 (rule!8816 token!544)))) b!3697647))

(assert (= (and b!3697333 ((_ is Star!10717) (regex!5958 (rule!8816 token!544)))) b!3697648))

(assert (= (and b!3697333 ((_ is Union!10717) (regex!5958 (rule!8816 token!544)))) b!3697649))

(declare-fun b!3697660 () Bool)

(declare-fun b_free!98429 () Bool)

(declare-fun b_next!99133 () Bool)

(assert (=> b!3697660 (= b_free!98429 (not b_next!99133))))

(declare-fun tp!1123947 () Bool)

(declare-fun b_and!276407 () Bool)

(assert (=> b!3697660 (= tp!1123947 b_and!276407)))

(declare-fun b_free!98431 () Bool)

(declare-fun b_next!99135 () Bool)

(assert (=> b!3697660 (= b_free!98431 (not b_next!99135))))

(declare-fun t!301770 () Bool)

(declare-fun tb!214099 () Bool)

(assert (=> (and b!3697660 (= (toChars!8149 (transformation!5958 (h!44682 (t!301757 rules!3598)))) (toChars!8149 (transformation!5958 (rule!8816 token!544)))) t!301770) tb!214099))

(declare-fun result!260802 () Bool)

(assert (= result!260802 result!260784))

(assert (=> d!1084428 t!301770))

(assert (=> b!3697562 t!301770))

(declare-fun b_and!276409 () Bool)

(declare-fun tp!1123949 () Bool)

(assert (=> b!3697660 (= tp!1123949 (and (=> t!301770 result!260802) b_and!276409))))

(declare-fun e!2289926 () Bool)

(assert (=> b!3697660 (= e!2289926 (and tp!1123947 tp!1123949))))

(declare-fun b!3697659 () Bool)

(declare-fun e!2289924 () Bool)

(declare-fun tp!1123946 () Bool)

(assert (=> b!3697659 (= e!2289924 (and tp!1123946 (inv!52758 (tag!6788 (h!44682 (t!301757 rules!3598)))) (inv!52761 (transformation!5958 (h!44682 (t!301757 rules!3598)))) e!2289926))))

(declare-fun b!3697658 () Bool)

(declare-fun e!2289927 () Bool)

(declare-fun tp!1123948 () Bool)

(assert (=> b!3697658 (= e!2289927 (and e!2289924 tp!1123948))))

(assert (=> b!3697328 (= tp!1123878 e!2289927)))

(assert (= b!3697659 b!3697660))

(assert (= b!3697658 b!3697659))

(assert (= (and b!3697328 ((_ is Cons!39262) (t!301757 rules!3598))) b!3697658))

(declare-fun m!4209113 () Bool)

(assert (=> b!3697659 m!4209113))

(declare-fun m!4209115 () Bool)

(assert (=> b!3697659 m!4209115))

(declare-fun b!3697665 () Bool)

(declare-fun e!2289930 () Bool)

(declare-fun tp!1123952 () Bool)

(assert (=> b!3697665 (= e!2289930 (and tp_is_empty!18509 tp!1123952))))

(assert (=> b!3697335 (= tp!1123880 e!2289930)))

(assert (= (and b!3697335 ((_ is Cons!39261) (originalCharacters!6666 token!544))) b!3697665))

(declare-fun b!3697666 () Bool)

(declare-fun e!2289931 () Bool)

(declare-fun tp!1123953 () Bool)

(assert (=> b!3697666 (= e!2289931 (and tp_is_empty!18509 tp!1123953))))

(assert (=> b!3697334 (= tp!1123875 e!2289931)))

(assert (= (and b!3697334 ((_ is Cons!39261) (t!301756 input!3172))) b!3697666))

(declare-fun b!3697669 () Bool)

(declare-fun e!2289932 () Bool)

(declare-fun tp!1123954 () Bool)

(assert (=> b!3697669 (= e!2289932 tp!1123954)))

(assert (=> b!3697340 (= tp!1123879 e!2289932)))

(declare-fun b!3697670 () Bool)

(declare-fun tp!1123955 () Bool)

(declare-fun tp!1123957 () Bool)

(assert (=> b!3697670 (= e!2289932 (and tp!1123955 tp!1123957))))

(declare-fun b!3697667 () Bool)

(assert (=> b!3697667 (= e!2289932 tp_is_empty!18509)))

(declare-fun b!3697668 () Bool)

(declare-fun tp!1123956 () Bool)

(declare-fun tp!1123958 () Bool)

(assert (=> b!3697668 (= e!2289932 (and tp!1123956 tp!1123958))))

(assert (= (and b!3697340 ((_ is ElementMatch!10717) (regex!5958 (h!44682 rules!3598)))) b!3697667))

(assert (= (and b!3697340 ((_ is Concat!16906) (regex!5958 (h!44682 rules!3598)))) b!3697668))

(assert (= (and b!3697340 ((_ is Star!10717) (regex!5958 (h!44682 rules!3598)))) b!3697669))

(assert (= (and b!3697340 ((_ is Union!10717) (regex!5958 (h!44682 rules!3598)))) b!3697670))

(declare-fun b_lambda!109671 () Bool)

(assert (= b_lambda!109665 (or (and b!3697329 b_free!98419 (= (toChars!8149 (transformation!5958 (h!44682 rules!3598))) (toChars!8149 (transformation!5958 (rule!8816 token!544))))) (and b!3697342 b_free!98423) (and b!3697660 b_free!98431 (= (toChars!8149 (transformation!5958 (h!44682 (t!301757 rules!3598)))) (toChars!8149 (transformation!5958 (rule!8816 token!544))))) b_lambda!109671)))

(declare-fun b_lambda!109673 () Bool)

(assert (= b_lambda!109663 (or (and b!3697329 b_free!98419 (= (toChars!8149 (transformation!5958 (h!44682 rules!3598))) (toChars!8149 (transformation!5958 (rule!8816 token!544))))) (and b!3697342 b_free!98423) (and b!3697660 b_free!98431 (= (toChars!8149 (transformation!5958 (h!44682 (t!301757 rules!3598)))) (toChars!8149 (transformation!5958 (rule!8816 token!544))))) b_lambda!109673)))

(check-sat (not b_next!99123) (not b!3697373) (not b!3697536) (not b!3697647) (not b!3697473) (not b!3697633) (not b!3697627) (not b!3697488) b_and!276383 b_and!276409 (not d!1084386) (not b_next!99125) (not b!3697557) (not d!1084426) (not b!3697562) (not b!3697467) (not b!3697658) b_and!276379 (not b_lambda!109671) (not b!3697629) (not d!1084442) (not b!3697468) (not d!1084436) (not b!3697631) (not d!1084428) (not b!3697485) (not d!1084384) (not b!3697472) (not d!1084432) (not b!3697635) (not b_next!99121) (not b!3697628) (not b!3697668) (not b!3697470) (not b!3697626) (not b!3697666) (not bm!267198) (not b_next!99133) b_and!276407 (not b!3697531) (not d!1084434) (not b!3697518) (not b!3697469) (not tb!214093) (not bm!267201) (not b_next!99127) (not d!1084430) (not b!3697522) (not b!3697521) (not b!3697669) (not b!3697634) (not b!3697665) (not b!3697648) (not b_lambda!109673) (not b!3697632) b_and!276399 (not b!3697670) b_and!276401 (not b!3697563) (not b!3697659) (not b!3697466) (not b!3697527) (not d!1084424) (not b!3697526) (not d!1084382) tp_is_empty!18509 (not b!3697474) (not b!3697649) (not b!3697489) (not b_next!99135))
(check-sat (not b_next!99123) b_and!276379 (not b_next!99121) (not b_next!99127) b_and!276383 (not b_next!99135) b_and!276409 (not b_next!99125) (not b_next!99133) b_and!276407 b_and!276399 b_and!276401)
